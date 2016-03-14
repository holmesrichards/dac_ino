/*
        ##########    Copyright (C) 2016 Vincenzo Pacella
        ##      ##    Distributed under MIT license, see file LICENSE-SW
        ##      ##    or <http://opensource.org/licenses/MIT>
        ##      ##
##########      ############################################################# shaduzlabs.com #####*/

#pragma once

#include <SPI.h>

//--------------------------------------------------------------------------------------------------

namespace sl
{

//--------------------------------------------------------------------------------------------------

/**
  \class Synapse
  \brief This class is used to configure and handle the Synapse shield for Arduino
*/
class Synapse
{
public:
  enum class Range : uint8_t
  {
    ZeroToTenVolts,       //!< CV output is 0 to 10V
    MinusFiveToFiveVolts, //!< CV output is -5 to 5V
    Unknown,              //!< CV output range is unknown
  };

  enum class CVChannel : uint8_t
  {
    A, //!< CV channel A
    B, //!< CV channel B
  };

  enum class GateChannel : uint8_t
  {
    A, //!< Gate channel A
    B, //!< Gate channel A
  };

  enum class GateInterrupt : uint32_t
  {
    ValueLow = LOW, //!< Interrupt when the value of the digital input is LOW
#ifdef _SAM3XA_
    ValueHigh = HIGH, //!< Interrupt when the value of the digital input is HIGH
#endif
    ValueChange = CHANGE,  //!< Interrupt when the value of the digital input changes
    RisingEdge = RISING,   //!< Interrupt when the value of the digital input goes from LOW to HIGH
    FallingEdge = FALLING, //!< Interrupt when the value of the digital input goes from HIGH to LOW
  };

  //! Constructor
  /*!
    \param spiDivider_  The SPI divider (default = 8)
  */
  Synapse(unsigned spiDivider_ = SPI_CLOCK_DIV8);

  //! Read from a CV input channel
  /*!
    \param channel_  The channel to read from
    \return          The value measured on the selected channel
  */
  unsigned readCV(CVChannel channel_);

  //! Write to a CV output channel
  /*!
    \param channel_  The channel to write to
  */
  void writeCV(CVChannel channel_, unsigned value_);

  //! Get the CV range of the selected channel
  /*!
    \param channel_  The selected channel
    \return          The range currently configured on the selected output channel
   */
  Range getCVRange(CVChannel channel_);

  //! Set the CV range of the selected channel
  /*!
    \param channel_  The selected channel
    \param range_    The desired output range
   */
  void setCVRange(CVChannel channel_, Range range_);

  //! Read from a gate input channel
  /*!
    \param channel_  The selected channel
    \return          True if the selected gate input channel is HIGH, false otherwise
  */
  bool readGate(GateChannel channel_);

  //! Write to a gate output channel
  /*!
    \param channel_  The selected channel
    \param state_    The logical state (true = HIGH, false = LOW)
  */
  void writeGate(GateChannel channel_, bool state_);

  //! Attach an interrupt to a gate input channel
  /*!
    \param channel_   The selected channel
    \param callback_  The callback (void function)
    \param mode_      The interrupt condition
  */
  void gateInputInterrupt(GateChannel channel_,
    void (*callback_)(void),
    GateInterrupt mode_ = GateInterrupt::ValueChange);
 
private:
  static constexpr unsigned k_numCVOutputs = 2;

  void setSPIDivider(unsigned spiDivider_);
  void updateCVRanges();

  Range m_channelRange[k_numCVOutputs]{Range::MinusFiveToFiveVolts, Range::MinusFiveToFiveVolts};
  unsigned m_spiDivider;
};

//--------------------------------------------------------------------------------------------------

} // namespace sl
