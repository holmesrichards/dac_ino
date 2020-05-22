/*
dac/ino
by Rich Holmes
based on Synapse:
=====
        ##########    Copyright (C) 2016 Vincenzo Pacella
        ##      ##    Distributed under MIT license, see file LICENSE-SW
        ##      ##    or <http://opensource.org/licenses/MIT>
        ##      ##
##########      ############################################################# shaduzlabs.com #####
=====
Changes mainly to do with increased number of inputs and outputs
and removal of code to control offset
*/


#include <Arduino.h>
#include "dac_ino.h"

//--------------------------------------------------------------------------------------------------

namespace
{
  static constexpr uint8_t k_writeChannelA = 0b01110000;
  static constexpr uint8_t k_writeChannelB = 0b11110000;
  
  static constexpr uint8_t k_pinCVInA = A0;
  static constexpr uint8_t k_pinCVInB = A1;
  static constexpr uint8_t k_pinCVInC = A2;
  static constexpr uint8_t k_pinCVInD = A3;
  static constexpr uint8_t k_pinCVInE = A4;
  static constexpr uint8_t k_pinCVInF = A5;
  static constexpr uint8_t k_pinCVInG = A6;
  static constexpr uint8_t k_pinCVInH = A7;
}

//--------------------------------------------------------------------------------------------------

namespace dcrd
{

//--------------------------------------------------------------------------------------------------

dac_ino dac_inoBoard;

//--------------------------------------------------------------------------------------------------

void dac_ino::begin(unsigned spiDivider_)
{
  pinMode(k_pinCVInA, INPUT);
  pinMode(k_pinCVInB, INPUT);
  pinMode(k_pinGateInA, INPUT);
  pinMode(k_pinGateInB, INPUT);
  pinMode(k_pinGateInC, INPUT);
  pinMode(k_pinGateInD, INPUT);
  pinMode(k_pinGateInE, INPUT);
  pinMode(k_pinGateInF, INPUT);
  
  pinMode(k_pinChipSelectDAC, OUTPUT);
  pinMode(k_pinGateOutA, OUTPUT);
  pinMode(k_pinGateOutB, OUTPUT);

  m_gateInEEnabled = true;
  m_gateInFEnabled = true;
  m_gateOutCEnabled = false;
  m_gateOutDEnabled = false;
  
#if defined __AVR__
  m_outputChipSelectDAC = HIGH;
#else
  digitalWrite(k_pinChipSelectDAC, HIGH);
#endif

  SPI.begin();

  SPI.setBitOrder(MSBFIRST);
  SPI.setDataMode(SPI_MODE0);
  setSPIDivider(spiDivider_);
}

//--------------------------------------------------------------------------------------------------

void dac_ino::setGateToOutput (GateOutChannel channel_);
{
  switch (channel_)
    {
    case GateOutChannel::C:
      pinMode(k_pinGateOutC, OUTPUT);
      m_gateOutCEnabled = true;
      m_gateInEEnabled = false;
      break;
    case GateOutChannel::D:
      pinMode(k_pinGateOutD, OUTPUT);
      m_gateOutDEnabled = true;
      m_gateInFEnabled = false;
      break;
    default:
      return;
    }
}
  
//--------------------------------------------------------------------------------------------------

void dac_ino::setGateToInput (GateInChannel channel_);
{
  switch (channel_)
    {
    case GateInChannel::E:
      pinMode(k_pinGateInE, INPUT);
      m_gateInEEnabled = true;
      m_gateOutCEnabled = false;
      break;
    case GateInChannel::F:
      pinMode(k_pinGateInF, OUTPUT);
      m_gateInFEnabled = true;
      m_gateOutDEnabled = false;
      break;
    default:
      return;
    }
}
  
//--------------------------------------------------------------------------------------------------

unsigned dac_ino::readCV(CVInChannel channel_)
{
  switch (channel_)
  {
    case CVInChannel::A:
      return analogRead(k_pinCVInA);
    case CVInChannel::B:
      return analogRead(k_pinCVInB);
    case CVInChannel::C:
      return analogRead(k_pinCVInC);
    case CVInChannel::D:
      return analogRead(k_pinCVInD);
    case CVInChannel::E:
      return analogRead(k_pinCVInE);
    case CVInChannel::F:
      return analogRead(k_pinCVInF);
    case CVInChannel::G:
      return analogRead(k_pinCVInG);
    case CVInChannel::H:
      return analogRead(k_pinCVInH);
    default:
      return 0U;
  }
}

//--------------------------------------------------------------------------------------------------

void dac_ino::writeCV(CVOutChannel channel_, uint16_t value_)
{
  uint8_t msg1 = (uint8_t)((value_ >> 8) & 0x0F);
  uint8_t msg2 = (uint8_t)(value_ & 0xFF);

  switch (channel_)
  {
    case CVOutChannel::A:
    {
      msg1 |= k_writeOutChannelA;
      break;
    }
    case CVOutChannel::B:
    {
      msg1 |= k_writeOutChannelB;
      break;
    }
    default:
    {
      return;
    }
  }

#if defined __AVR__
  m_outputChipSelectDAC = LOW;
#else
  digitalWrite(k_pinChipSelectDAC, LOW);
#endif

  SPI.transfer(msg1);
  SPI.transfer(msg2);

#if defined __AVR__
  m_outputChipSelectDAC = HIGH;
#else
  digitalWrite(k_pinChipSelectDAC, HIGH);
#endif
}

//--------------------------------------------------------------------------------------------------

bool dac_ino::readGate(GateInChannel channel_)
{
  // Channels A through D have inverting input circuitry!
  // Channels E and F do not.
  
  switch (channel_)
  {
    case GateInChannel::A:
    {
#if defined __AVR__
      return !(m_inputGateA);
#else
      return !(digitalRead(k_pinGateInA));
#endif
    }
    case GateInChannel::B:
    {
#if defined __AVR__
      return !(m_inputGateB);
#else
      return !(digitalRead(k_pinGateInB));
#endif
    }
    case GateInChannel::C:
    {
#if defined __AVR__
      return !(m_inputGateC);
#else
      return !(digitalRead(k_pinGateInC));
#endif
    }
    case GateInChannel::D:
    {
#if defined __AVR__
      return !(m_inputGateD);
#else
      return !(digitalRead(k_pinGateInD));
#endif
    }
    case GateInChannel::E:
    {
      if (!m_gateInEEnabled)
	return false;
#if defined __AVR__
      return m_inputGateE;
#else
      return digitalRead(k_pinGateInE);
#endif
    }
    case GateInChannel::F:
    {
      if (!m_gateInFEnabled)
	return false;
#if defined __AVR__
      return m_inputGateF;
#else
      return digitalRead(k_pinGateInF);
#endif
    }
    default:
    {
      return false;
    }
  }
}

//--------------------------------------------------------------------------------------------------

void dac_ino::writeGate(GateOutChannel channel_, bool state_)
{
  switch (channel_)
  {
    case GateOutChannel::A:
    {
#if defined __AVR__
      m_outputGateA = state_ ? LOW : HIGH;
#else
      digitalWrite(k_pinGateOutA, (state_ ? LOW : HIGH));
#endif

      break;
    }
    case GateOutChannel::B:
    {
#if defined __AVR__
      m_outputGateB = state_ ? LOW : HIGH;
#else
      digitalWrite(k_pinGateOutB, (state_ ? LOW : HIGH));
#endif
      break;
    }
    case GateOutChannel::C:
    {
      if (!m_gateOutCEnabled)
	break;
#if defined __AVR__
      m_outputGateC = state_ ? LOW : HIGH;
#else
      digitalWrite(k_pinGateOutC, (state_ ? LOW : HIGH));
#endif

      break;
    }
    case GateOutChannel::D:
    {
      if (!m_gateOutDEnabled)
	break;
#if defined __AVR__
      m_outputGateD = state_ ? LOW : HIGH;
#else
      digitalWrite(k_pinGateOutD, (state_ ? LOW : HIGH));
#endif
      break;
    }
    default:
    {
      return;
    }
  }
}

//--------------------------------------------------------------------------------------------------

void dac_ino::gateInputInterrupt(GateInChannel channel_, void (*callback_)(void), GateInterrupt mode_)
{
  switch (channel_)
  {
    case GateInChannel::A:
    {
      attachInterrupt(digitalPinToInterrupt(k_pinGateInA), callback_, static_cast<uint32_t>(mode_));
      break;
    }
    case GateInChannel::B:
    {
      attachInterrupt(digitalPinToInterrupt(k_pinGateInB), callback_, static_cast<uint32_t>(mode_));
      break;
    }
    case GateInChannel::C:
    {
      attachInterrupt(digitalPinToInterrupt(k_pinGateInC), callback_, static_cast<uint32_t>(mode_));
      break;
    }
    case GateInChannel::D:
    {
      attachInterrupt(digitalPinToInterrupt(k_pinGateInD), callback_, static_cast<uint32_t>(mode_));
      break;
    }
    case GateInChannel::E:
    {
      attachInterrupt(digitalPinToInterrupt(k_pinGateInE), callback_, static_cast<uint32_t>(mode_));
      break;
    }
    case GateInChannel::F:
    {
      attachInterrupt(digitalPinToInterrupt(k_pinGateInF), callback_, static_cast<uint32_t>(mode_));
      break;
    }
    default:
    {
      return;
    }
  }
}

//--------------------------------------------------------------------------------------------------

void dac_ino::setSPIDivider(unsigned spiDivider_)
{
#ifdef __AVR__
  switch (spiDivider_)
  {
    case SPI_CLOCK_DIV2:
    case SPI_CLOCK_DIV4:
    case SPI_CLOCK_DIV8:
    case SPI_CLOCK_DIV16:
    case SPI_CLOCK_DIV32:
    case SPI_CLOCK_DIV64:
    case SPI_CLOCK_DIV128:
    {
      m_spiDivider = spiDivider_;
      break;
    }
    default:
    {
      m_spiDivider = SPI_CLOCK_DIV2;
    }
  }
#else
  m_spiDivider = SPI_CLOCK_DIV2;
#endif
  SPI.setClockDivider(m_spiDivider);
}

//--------------------------------------------------------------------------------------------------

} // namespace dcrd
