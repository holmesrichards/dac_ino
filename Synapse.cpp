/*
        ##########    Copyright (C) 2016 Vincenzo Pacella
        ##      ##    Distributed under MIT license, see file LICENSE-SW
        ##      ##    or <http://opensource.org/licenses/MIT>
        ##      ##
##########      ############################################################# shaduzlabs.com #####*/

#include "Synapse.h"

//--------------------------------------------------------------------------------------------------

namespace
{
static constexpr uint8_t k_writeChannelA = 0b01110000;
static constexpr uint8_t k_writeChannelB = 0b11110000;

static constexpr uint8_t k_pinCVInA = A0;
static constexpr uint8_t k_pinCVInB = A1;
}

//--------------------------------------------------------------------------------------------------

namespace sl
{

//--------------------------------------------------------------------------------------------------

Synapse SynapseShield;

//--------------------------------------------------------------------------------------------------

void Synapse::begin(unsigned spiDivider_)
{
  pinMode(k_pinCVInA, INPUT);
  pinMode(k_pinCVInB, INPUT);
  pinMode(k_pinGateInA, INPUT);
  pinMode(k_pinGateInB, INPUT);

  pinMode(k_pinChipSelectDAC, OUTPUT);
  pinMode(k_pinCVOutConfA, OUTPUT);
  pinMode(k_pinCVOutConfB, OUTPUT);
  pinMode(k_pinGateOutA, OUTPUT);
  pinMode(k_pinGateOutB, OUTPUT);

#if defined __AVR__
  m_outputChipSelectDAC = HIGH;
  m_outputCVOutConfA = LOW;
  m_outputCVOutConfB = LOW;
#else
  digitalWrite(k_pinChipSelectDAC, HIGH);
  digitalWrite(k_pinCVOutConfA, LOW);
  digitalWrite(k_pinCVOutConfB, LOW);
#endif

  SPI.begin();

  SPI.setBitOrder(MSBFIRST);
  SPI.setDataMode(SPI_MODE0);
  setSPIDivider(spiDivider_);

  updateCVRanges();
}

//--------------------------------------------------------------------------------------------------

unsigned Synapse::readCV(CVChannel channel_)
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

void Synapse::writeCV(CVChannel channel_, uint16_t value_)
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

Synapse::Range Synapse::getCVRange(CVChannel channel_)
{
  switch (channel_)
  {
    case CVChannel::A:
    {
      return m_channelRange[0];
    }
    case CVChannel::B:
    {
      return m_channelRange[1];
    }
    default:
    {
      return Range::Unknown;
    }
  }
}

//--------------------------------------------------------------------------------------------------

void Synapse::setCVRange(CVChannel channel_, Range range_)
{
  switch (channel_)
  {
    case CVChannel::A:
    {
      m_channelRange[0] = range_;
      break;
    }
    case CVChannel::B:
    {
      m_channelRange[1] = range_;
      break;
    }
    default:
    {
      return;
    }
  }

  updateCVRanges();
}

//--------------------------------------------------------------------------------------------------

bool Synapse::readGate(GateChannel channel_)
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
    default:
    {
      return false;
    }
  }
}

//--------------------------------------------------------------------------------------------------

void Synapse::writeGate(GateChannel channel_, bool state_)
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

void Synapse::gateInputInterrupt(GateChannel channel_, void (*callback_)(void), GateInterrupt mode_)
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
    default:
    {
      return;
    }
  }
}

//--------------------------------------------------------------------------------------------------

void Synapse::setSPIDivider(unsigned spiDivider_)
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

void Synapse::updateCVRanges()
{
  for (unsigned channel = 0; channel < k_numCVOutputs; channel++)
  {
    switch (m_channelRange[channel])
    {
      case Range::ZeroToTenVolts:
      {
        if (channel == 0)
        {
#if defined __AVR__
          m_outputCVOutConfA = LOW;
#else
          digitalWrite(k_pinCVOutConfA, LOW);
#endif
        }
        else
        {
#if defined __AVR__
          m_outputCVOutConfB = LOW;
#else
          digitalWrite(k_pinCVOutConfB, LOW);
#endif
        }
        break;
      }
      case Range::MinusFiveToFiveVolts:
      {
        if (channel == 0)
        {
#if defined __AVR__
          m_outputCVOutConfA = HIGH;
#else
          digitalWrite(k_pinCVOutConfA, HIGH);
#endif
        }
        else
        {
#if defined __AVR__
          m_outputCVOutConfB = HIGH;
#else
          digitalWrite(k_pinCVOutConfB, HIGH);
#endif
        }
        break;
      }
      case Range::Unknown:
      default:
        break;
    }
  }
}

//--------------------------------------------------------------------------------------------------

} // namespace sl
