/*
dacarduino
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
#include "dacarduino.h"

//--------------------------------------------------------------------------------------------------

namespace
{
static constexpr uint8_t k_writeChannelA = 0b01110000;
static constexpr uint8_t k_writeChannelB = 0b11110000;

static constexpr uint8_t k_pinCVInA = A0;
static constexpr uint8_t k_pinCVInB = A1;
}

//--------------------------------------------------------------------------------------------------

namespace dcrd
{

//--------------------------------------------------------------------------------------------------

dacarduino dacarduinoBoard;

//--------------------------------------------------------------------------------------------------

void dacarduino::begin(unsigned spiDivider_)
{
  pinMode(k_pinCVInA, INPUT);
  pinMode(k_pinCVInB, INPUT);
  pinMode(k_pinGateInA, INPUT);
  pinMode(k_pinGateInB, INPUT);
  pinMode(k_pinGateInC, INPUT);
  pinMode(k_pinGateInD, INPUT);

  pinMode(k_pinChipSelectDAC, OUTPUT);
  pinMode(k_pinGateOutA, OUTPUT);
  pinMode(k_pinGateOutB, OUTPUT);

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

unsigned dacarduino::readCV(CVChannel channel_)
{
  switch (channel_)
  {
    case CVChannel::A:
    {
      return analogRead(k_pinCVInA);
    }
    case CVChannel::B:
    {
      return analogRead(k_pinCVInB);
    }
    default:
    {
      return 0U;
    }
  }
}

//--------------------------------------------------------------------------------------------------

void dacarduino::writeCV(CVChannel channel_, uint16_t value_)
{
  uint8_t msg1 = (uint8_t)((value_ >> 8) & 0x0F);
  uint8_t msg2 = (uint8_t)(value_ & 0xFF);

  switch (channel_)
  {
    case CVChannel::A:
    {
      msg1 |= k_writeChannelA;
      break;
    }
    case CVChannel::B:
    {
      msg1 |= k_writeChannelB;
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

bool dacarduino::readGate(GateChannel channel_)
{
  switch (channel_)
  {
    case GateChannel::A:
    {
#if defined __AVR__
      return m_inputGateA;
#else
      return digitalRead(k_pinGateInA);
#endif
    }
    case GateChannel::B:
    {
#if defined __AVR__
      return m_inputGateB;
#else
      return digitalRead(k_pinGateInB);
#endif
    }
    case GateChannel::C:
    {
#if defined __AVR__
      return m_inputGateC;
#else
      return digitalRead(k_pinGateInC);
#endif
    }
    case GateChannel::D:
    {
#if defined __AVR__
      return m_inputGateD;
#else
      return digitalRead(k_pinGateInD);
#endif
    }
    default:
    {
      return false;
    }
  }
}

//--------------------------------------------------------------------------------------------------

void dacarduino::writeGate(GateChannel channel_, bool state_)
{
  switch (channel_)
  {
    case GateChannel::A:
    {
#if defined __AVR__
      m_outputGateA = state_ ? LOW : HIGH;
#else
      digitalWrite(k_pinGateOutA, (state_ ? LOW : HIGH));
#endif

      break;
    }
    case GateChannel::B:
    {
#if defined __AVR__
      m_outputGateB = state_ ? LOW : HIGH;
#else
      digitalWrite(k_pinGateOutB, (state_ ? LOW : HIGH));
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

void dacarduino::gateInputInterrupt(GateChannel channel_, void (*callback_)(void), GateInterrupt mode_)
{
  switch (channel_)
  {
    case GateChannel::A:
    {
      attachInterrupt(digitalPinToInterrupt(k_pinGateInA), callback_, static_cast<uint32_t>(mode_));
      break;
    }
    case GateChannel::B:
    {
      attachInterrupt(digitalPinToInterrupt(k_pinGateInB), callback_, static_cast<uint32_t>(mode_));
      break;
    }
    case GateChannel::C:
    {
      attachInterrupt(digitalPinToInterrupt(k_pinGateInC), callback_, static_cast<uint32_t>(mode_));
      break;
    }
    case GateChannel::D:
    {
      attachInterrupt(digitalPinToInterrupt(k_pinGateInD), callback_, static_cast<uint32_t>(mode_));
      break;
    }
    default:
    {
      return;
    }
  }
}

//--------------------------------------------------------------------------------------------------

void dacarduino::setSPIDivider(unsigned spiDivider_)
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
