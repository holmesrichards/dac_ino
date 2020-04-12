/*
        ##########    Copyright (C) 2016 Vincenzo Pacella
        ##      ##    Distributed under MIT license, see file LICENSE-SW
        ##      ##    or <http://opensource.org/licenses/MIT>
        ##      ##
##########      ############################################################# shaduzlabs.com #####*/

#include "CurieMIDI.h"

//--------------------------------------------------------------------------------------------------

namespace
{
const char* k_serviceMIDI{"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"};
const char* k_characteristicMIDI{"7772E5DB-3868-4112-A1A9-F2669D106BF3"};
const unsigned k_characteristicEventsMask{BLEWrite | BLEWriteWithoutResponse | BLENotify | BLERead};

sl::CurieMIDI* g_this{nullptr}; // I know, I know. This is horrible. ಠ_ಠ
}

//--------------------------------------------------------------------------------------------------

namespace sl
{

//--------------------------------------------------------------------------------------------------

CurieMIDI::CurieMIDI()
  : m_service(k_serviceMIDI)
  , m_characteristic(k_characteristicMIDI, k_characteristicEventsMask, k_maxDataLength)
{
  g_this = this;
}

//--------------------------------------------------------------------------------------------------

void CurieMIDI::begin(const char* name_)
{
  m_outputBuffer[0] = 0x80; // timestamp HI (0)
  m_outputBuffer[1] = 0x80; // timestamp LO (0)

  m_peripheral.setLocalName(name_);
  m_peripheral.setDeviceName(name_);

  m_peripheral.setAdvertisedServiceUuid(m_service.uuid());

  m_peripheral.addAttribute(m_service);
  m_peripheral.addAttribute(m_characteristic);

  m_peripheral.setEventHandler(BLEConnected, &CurieMIDI::onConnect);
  m_peripheral.setEventHandler(BLEDisconnected, &CurieMIDI::onDisconnect);

  m_characteristic.setEventHandler(BLEWritten, &CurieMIDI::onMidiReceived);

  m_peripheral.begin();
}

//--------------------------------------------------------------------------------------------------

void CurieMIDI::setCallbackConnectionStatus(tConnectionStatusCallback cb_)
{
  m_callbackConnectionStatus = cb_;
}

//--------------------------------------------------------------------------------------------------

void CurieMIDI::setCallbackNote(tNoteCallback cb_)
{
  m_callbackNote = cb_;
}

//--------------------------------------------------------------------------------------------------

void CurieMIDI::setCallbackControlChange(tControlChangeCallback cb_)
{
  m_callbackControlChange = cb_;
}

//--------------------------------------------------------------------------------------------------

bool CurieMIDI::sendNoteOn(uint8_t note_, uint8_t velocity_, uint8_t channel_)
{
  m_outputBuffer[2] = 0x90 | (channel_ & 0x0F);
  m_outputBuffer[3] = note_ & 0x7F;
  m_outputBuffer[4] = velocity_ & 0x7F;
  return send(5);
}

//--------------------------------------------------------------------------------------------------

bool CurieMIDI::sendNoteOff(uint8_t note_, uint8_t velocity_, uint8_t channel_)
{
  m_outputBuffer[2] = 0x80 | (channel_ & 0x0F);
  m_outputBuffer[3] = note_ & 0x7F;
  m_outputBuffer[4] = velocity_ & 0x7F;
  return send(5);
}

//--------------------------------------------------------------------------------------------------

bool CurieMIDI::sendControlChange(uint8_t cc_, uint8_t value_, uint8_t channel_)
{
  m_outputBuffer[2] = 0xB0 | (channel_ & 0x0F);
  m_outputBuffer[3] = cc_ & 0x7F;
  m_outputBuffer[4] = value_ & 0x7F;
  return send(5);
}

//--------------------------------------------------------------------------------------------------

void CurieMIDI::onConnect(BLECentral& central_)
{
  if (g_this == nullptr)
  {
    return;
  }
  g_this->notifyConnectionStatus(true);
}

//--------------------------------------------------------------------------------------------------

void CurieMIDI::onDisconnect(BLECentral& central_)
{
  if (g_this == nullptr)
  {
    return;
  }
  g_this->notifyConnectionStatus(false);
}

//--------------------------------------------------------------------------------------------------

void CurieMIDI::onMidiReceived(BLECentral& central_, BLECharacteristic& characteristic_)
{
  if (g_this == nullptr)
  {
    return;
  }

  unsigned packetSize = characteristic_.valueLength();
  if (packetSize < 3)
  {
    return;
  }

  unsigned i = 0;
  unsigned timestampBase = (characteristic_.value()[i++] & 0x3F) << 7;
  unsigned timestamp = timestampBase;
  uint8_t timestampByte = 0;
  uint8_t statusByte = 0;

  while (i < packetSize)
  {
    if ((characteristic_.value()[i] & 0x80) > 0)
    {
      timestampByte = characteristic_.value()[i++] & 0x7F;
    }
    if ((characteristic_.value()[i] & 0x80) > 0)
    {
      statusByte = characteristic_.value()[i++];
    }
    timestamp = timestampBase | timestampByte;
    uint8_t type = statusByte & 0xF0;
    uint8_t channel = statusByte & 0x0F;

    if (type == 0x80 || type == 0x90 || type == 0xB0)
    {
      if ((i + 1) >= packetSize)
      {
        return;
      }
      uint8_t data1 = characteristic_.value()[i++];
      uint8_t data2 = characteristic_.value()[i++];
      switch (type)
      {
        case 0x80: // Note off
        {
          g_this->notifyNoteOff(data1, data2, channel);
          break;
        }
        case 0x90: // Note on
        {
          if (data2 > 0)
          {
            g_this->notifyNoteOn(data1, data2, channel);
          }
          break;
        }
        case 0xB0: // Control change
        {
          g_this->notifyControlChange(data1, data2, channel);
          break;
        }
      }
    }
  }
}

//--------------------------------------------------------------------------------------------------

void CurieMIDI::notifyConnectionStatus(bool connected_)
{
  if (m_callbackConnectionStatus)
  {
    m_callbackConnectionStatus(connected_);
  }
}

//--------------------------------------------------------------------------------------------------

void CurieMIDI::notifyNoteOff(uint8_t note_, uint8_t velocity_, uint8_t channel_)
{
  if (m_callbackNote)
  {
    m_callbackNote(false, note_, velocity_, channel_);
  }
}

//--------------------------------------------------------------------------------------------------

void CurieMIDI::notifyNoteOn(uint8_t note_, uint8_t velocity_, uint8_t channel_)
{
  if (m_callbackNote)
  {
    m_callbackNote(true, note_, velocity_, channel_);
  }
}

//--------------------------------------------------------------------------------------------------

void CurieMIDI::notifyControlChange(uint8_t cc_, uint8_t value_, uint8_t channel_)
{
  if (m_callbackControlChange)
  {
    m_callbackControlChange(cc_, value_, channel_);
  }
}

//--------------------------------------------------------------------------------------------------

bool CurieMIDI::send(unsigned length_)
{
  if (length_ > k_maxDataLength)
  {
    return false;
  }

  return m_characteristic.setValue(&m_outputBuffer[0], length_);
}

//--------------------------------------------------------------------------------------------------

} // namespace sl
