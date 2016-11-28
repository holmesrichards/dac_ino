/*
        ##########    Copyright (C) 2016 Vincenzo Pacella
        ##      ##    Distributed under MIT license, see file LICENSE-SW
        ##      ##    or <http://opensource.org/licenses/MIT>
        ##      ##
##########      ############################################################# shaduzlabs.com #####*/

#pragma once

#include <CurieBLE.h>
#include <functional>

//--------------------------------------------------------------------------------------------------

namespace sl
{

//--------------------------------------------------------------------------------------------------

class CurieMIDI
{
public:
  using tConnectionStatusCallback = std::function<void(bool)>;
  using tNoteCallback = std::function<void(bool, uint8_t, uint8_t, uint8_t)>;
  using tControlChangeCallback = std::function<void(uint8_t, uint8_t, uint8_t)>;

  CurieMIDI();
  virtual ~CurieMIDI() = default;

  void begin(const char*);

  void setCallbackConnectionStatus(tConnectionStatusCallback);
  void setCallbackNote(tNoteCallback);
  void setCallbackControlChange(tControlChangeCallback);

  bool sendNoteOn(uint8_t note_, uint8_t velocity_ = 127, uint8_t channel_ = 0);
  bool sendNoteOff(uint8_t note_, uint8_t velocity_ = 0, uint8_t channel_ = 0);
  bool sendControlChange(uint8_t cc_, uint8_t value_, uint8_t channel_ = 0);

private:

  static void onConnect(BLECentral&);
  static void onDisconnect(BLECentral&);
  static void onMidiReceived(BLECentral&, BLECharacteristic&);

  void notifyConnectionStatus(bool /*connected_*/);
  void notifyNoteOff(uint8_t /*note_*/, uint8_t /*velocity_*/, uint8_t /*channel_*/);
  void notifyNoteOn(uint8_t /*note_*/, uint8_t /*velocity_*/, uint8_t /*channel_*/);
  void notifyControlChange(uint8_t /*cc_*/, uint8_t /*value_*/, uint8_t /*channel_*/);

  static constexpr unsigned k_maxDataLength{128};

  bool send(unsigned);

  uint8_t m_outputBuffer[k_maxDataLength];

  BLEPeripheral m_peripheral;
  BLEService m_service;
  BLECharacteristic m_characteristic;

  tConnectionStatusCallback m_callbackConnectionStatus;
  tNoteCallback m_callbackNote;
  tControlChangeCallback m_callbackControlChange;
};

//--------------------------------------------------------------------------------------------------

} // namespace sl
