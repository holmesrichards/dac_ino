/*
        ##########    Copyright (C) 2016 Vincenzo Pacella
        ##      ##    Distributed under MIT license, see file LICENSE-SW
        ##      ##    or <http://opensource.org/licenses/MIT>
        ##      ##
##########      ############################################################# shaduzlabs.com #####*/

/*

This example is designed for the Arduino 101 board, equippend with the Intel Curie module and will
not work with any other Arduino boards.

The Synapse board rev. 1.0 needs a modification in order to work properly when used with an
Arduino 101: you'll need to cut the 5V pin of the shield and then connect the Arduino 5V pin to the
Synapse 5V pin through diode with low (~200mV) forward voltage drop (e.g. a Schottky like BAT42 or
BAT85).

The BLE MIDI I/O device will be visible with the name "SynaBLE".
The MIDI in port will translate note events on channel 1 and 2 to a pitch CV (on output A and B
respectively).
The MIDI out port will send control change events (CV input A is cc#60 and CV input B is cc#61) when
the input voltage on the respective input channels changes. Please note that Arduino 101 uses a 3.3V
module, this means that anything above 3.3V on the CV inputs will just saturate to the maximum value

*/

#include <Synapse.h>

#include "CurieMIDI.h"

using namespace sl;

//--------------------------------------------------------------------------------------------------

CurieMIDI g_device;

int g_noteOnCountA{0};
int g_noteOnCountB{0};

uint8_t g_lastValueA{0xFF};
uint8_t g_lastValueB{0xFF};

//--------------------------------------------------------------------------------------------------

void connectionStatus(bool /*connected_*/);
void noteEvent(bool /*noteOn_*/, uint8_t /*note_*/, uint8_t /*velocity_*/, uint8_t /*channel_*/);
void ccEvent(uint8_t /*cc_*/, uint8_t /*value_*/, uint8_t /*channel_*/);
uint16_t midiNoteToCV(uint8_t /*note_*/);

//--------------------------------------------------------------------------------------------------

void setup()
{
  SynapseShield.begin();
  SynapseShield.setCVRange(Synapse::CVChannel::A, Synapse::Range::MinusFiveToFiveVolts);
  SynapseShield.setCVRange(Synapse::CVChannel::B, Synapse::Range::MinusFiveToFiveVolts);

  g_device.begin("SynaBLE");
  g_device.setCallbackNote(noteEvent);
  g_device.setCallbackControlChange(ccEvent);
  g_device.setCallbackConnectionStatus(connectionStatus);
}

//--------------------------------------------------------------------------------------------------

void loop()
{
  uint16_t voltageA = SynapseShield.readCV(Synapse::CVChannel::A);
  uint16_t voltageB = SynapseShield.readCV(Synapse::CVChannel::B);
  uint8_t midiValueA = (voltageA >> 3) & 0x7F;
  uint8_t midiValueB = (voltageB >> 3) & 0x7F;

  if (midiValueA != g_lastValueA)
  {
    g_lastValueA = midiValueA;
    g_device.sendControlChange(60, midiValueA);
  }

  if (midiValueB != g_lastValueB)
  {
    g_lastValueB = midiValueB;
    g_device.sendControlChange(61, midiValueB);
  }
}

//--------------------------------------------------------------------------------------------------

void connectionStatus(bool connected_)
{
}

//--------------------------------------------------------------------------------------------------

void noteEvent(bool noteOn_, uint8_t note_, uint8_t velocity_, uint8_t channel_)
{
  if (noteOn_ && velocity_ > 0)
  {
    if (channel_ == 0)
    {
      g_noteOnCountA++;
      SynapseShield.writeGate(Synapse::GateChannel::A, true);
      SynapseShield.writeCV(Synapse::CVChannel::A, midiNoteToCV(note_));
    }
    else if (channel_ == 1)
    {
      g_noteOnCountB++;
      SynapseShield.writeGate(Synapse::GateChannel::B, true);
      SynapseShield.writeCV(Synapse::CVChannel::B, midiNoteToCV(note_));
    }
  }
  else
  {
    if (channel_ == 0)
    {
      g_noteOnCountA--;
      if (g_noteOnCountA <= 0)
      {
        g_noteOnCountA = 0;
        SynapseShield.writeGate(Synapse::GateChannel::A, false);
      }
    }
    else if (channel_ == 1)
    {
      g_noteOnCountB--;
      if (g_noteOnCountB <= 0)
      {
        g_noteOnCountB = 0;
        SynapseShield.writeGate(Synapse::GateChannel::B, false);
      }
    }
  }
}

//--------------------------------------------------------------------------------------------------

void ccEvent(uint8_t cc_, uint8_t value_, uint8_t channel_)
{
}

//--------------------------------------------------------------------------------------------------

uint16_t midiNoteToCV(uint8_t note_)
{
  // Quick & dirty conversion, for more accuracy you should consider a LUT and some calibration...
  constexpr double noteIncrement = (4096 / 10.0f) / 12.0f;
  return static_cast<uint16_t>(noteIncrement * note_);
}
