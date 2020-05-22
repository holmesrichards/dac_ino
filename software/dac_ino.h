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

/*
The dac/ino board has:
- 4 gate inputs
- 2 gate outputs
- 4 CV inputs
- 2 CV outputs
- 2 additional digital pins
- 4 additional analog pins for input
User can specify whether to configure the additional digital pins for input
or output.

dac/ino lite board has:
- 0 gate inputs
- 1 gate output
- 0 CV inputs
- 2 CV outputs
- 4 additional digital pins
- 4 additional analog pins for input

Herein we use "CV" and "Gate" to refer to analog and digital input/output
even though they may not be actual CVs or gates.

*/
  
class dac_ino
{
public:

  enum class CVInChannel : uint8_t
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

  enum class CVOutChannel : uint8_t
  {
    A, //!< CV channel A
    B, //!< CV channel B
    Unknown, //!< Unknown/unspecified
  };

  enum class GateInChannel : uint8_t
  {
    A, //!< Gate channel A
    B, //!< Gate channel B
    C, //!< Gate channel C
    D, //!< Gate channel D
    E, //!< Gate channel E
    F, //!< Gate channel F
    Unknown, //!< Unknown/unspecified
  };

  enum class GateOutChannel : uint8_t
  {
    A, //!< Gate channel A
    B, //!< Gate channel B
    C, //!< Gate channel C
    D, //!< Gate channel D
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

  //! Set gate channel to output
  /*!
    \param channel_  The selected output channel (C or D)
  */
  void setGateToOutput (GateOutChannel channel_);

    //! Set gate channel to input
  /*!
    \param channel_  The selected input channel (E or F)
  */
  void setGateToInput (GateInChannel channel_);

  //! Read from a CV input channel
  /*!
    \param channel_  The input channel to read from
    \return          The value measured on the selected channel
  */
  unsigned readCV(CVInChannel channel_);

  //! Write to a CV output channel
  /*!
    \param channel_  The output channel to write to
  */
  void writeCV(CVOutChannel channel_, uint16_t value_);

  //! Read from a gate input channel
  /*!
    \param channel_  The selected input channel
    \return          True if the selected gate input channel is HIGH, false otherwise
  */
  bool readGate(GateInChannel channel_);

  //! Write to a gate output channel
  /*!
    \param channel_  The selected output channel
    \param state_    The logical state (true = HIGH, false = LOW)
  */
  void writeGate(GateOutChannel channel_, bool state_);

  //! Attach an interrupt to a gate input channel
  /*!
    \param channel_   The selected channel
    \param callback_  The callback (void function)
    \param mode_      The interrupt condition
  */
  void gateInputInterrupt(GateInChannel channel_,
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
  static constexpr uint8_t  k_pinGateOutC = 8;
  static constexpr uint8_t  k_pinGateOutD = 9;

  static bool m_gateInEEnabled = false;
  static bool m_gateInFEnabled = false;
  static bool m_gateOutCEnabled = false;
  static bool m_gateOutDEnabled = false;
    
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
  Output<k_pinGateOutC>       m_outputGateC;
  Output<k_pinGateOutD>       m_outputGateD;
#endif

  unsigned m_spiDivider;
};

//--------------------------------------------------------------------------------------------------

extern dac_ino dac_inoBoard;

//--------------------------------------------------------------------------------------------------

} // namespace dcrd
