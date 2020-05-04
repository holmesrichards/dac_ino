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

#pragma once

#include <SPI.h>
#if defined __AVR__
#include <DirectIO.h> // --> https://github.com/mmarchetti/DirectIO.git
#endif

//--------------------------------------------------------------------------------------------------

namespace dcrd
{

//--------------------------------------------------------------------------------------------------

/**
  \class dac_inoBoard
  \brief This class is used to configure and handle the dac/ino board for Arduino
*/
class dac_ino
{
public:

  enum class CVChannel : uint8_t
  {
    A, //!< CV channel A
    B, //!< CV channel B
    C, //!< CV channel C
    D, //!< CV channel D
    E, //!< CV channel E
    F, //!< CV channel F
    G, //!< CV channel G
    H, //!< CV channel H
    Unknown, //!< Unknown/unspecified
  };

  enum class GateChannel : uint8_t
  {
    A, //!< Gate channel A
    B, //!< Gate channel B
    C, //!< Gate channel C
    D, //!< Gate channel D
    E, //!< Gate channel E
    F, //!< Gate channel F
    Unknown, //!< Unknown/unspecified
  };

  enum class GateInterrupt : uint32_t
  {
    ValueLow = HIGH, //!< Interrupt when the value of the digital input is LOW
#ifdef _SAM3XA_
    ValueHigh = LOW, //!< Interrupt when the value of the digital input is HIGH
#endif
    ValueChange = CHANGE,  //!< Interrupt when the value of the digital input changes
    RisingEdge = FALLING,   //!< Interrupt when the value of the digital input goes from LOW to HIGH
    FallingEdge = RISING, //!< Interrupt when the value of the digital input goes from HIGH to LOW
  };

  //! Initialize the board
  /*!
    \param spiDivider_  The SPI divider (default = 8)
  */
  void begin(unsigned spiDivider_ = SPI_CLOCK_DIV2);

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
  void writeCV(CVChannel channel_, uint16_t value_);

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

  static constexpr unsigned k_pinChipSelectDAC = 10;

  static constexpr uint8_t  k_pinGateInA = 2;
  static constexpr uint8_t  k_pinGateInB = 3;
  static constexpr uint8_t  k_pinGateInC = 4;
  static constexpr uint8_t  k_pinGateInD = 5;
  static constexpr uint8_t  k_pinGateInE = 8;
  static constexpr uint8_t  k_pinGateInF = 9;
  static constexpr uint8_t  k_pinGateOutA = 6;
  static constexpr uint8_t  k_pinGateOutB = 7;

  void setSPIDivider(unsigned spiDivider_);

#if defined __AVR__
  Input<k_pinGateInA> m_inputGateA;
  Input<k_pinGateInB> m_inputGateB;
  Input<k_pinGateInC> m_inputGateC;
  Input<k_pinGateInD> m_inputGateD;
  Input<k_pinGateInE> m_inputGateE;
  Input<k_pinGateInF> m_inputGateF;

  Output<k_pinChipSelectDAC>  m_outputChipSelectDAC;
  Output<k_pinGateOutA>       m_outputGateA;
  Output<k_pinGateOutB>       m_outputGateB;
#endif

  unsigned m_spiDivider;
};

//--------------------------------------------------------------------------------------------------

extern dac_ino dac_inoBoard;

//--------------------------------------------------------------------------------------------------

} // namespace dcrd
