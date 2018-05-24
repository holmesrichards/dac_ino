View this project on [CADLAB.io](https://cadlab.io/project/1080). 

[![Build Status](https://travis-ci.org/shaduzlabs/synapse.svg?branch=master)](https://travis-ci.org/shaduzlabs/synapse)

# Synapse
![A rendering of the Arduino shield](https://cloud.githubusercontent.com/assets/804931/13776151/e4bdfa4c-eaa8-11e5-8b88-48274cfd1437.png)
Synapse is an Arduino shield (and the corresponding library) which provides CV and Gate I/O for Arduino boards.

## Features
- 2 x control voltage inputs, 0 to 5V
- 2 x control voltage outputs, individually configurable as 0 to 10V or -5 to 5V via software, with 12bit of resolution
- 2 x gate inputs (with interrupt)
- 2 x gate outputs
- 1 x eurorack power connector (10 pin)
- An easy to use software library

## Compatible Boards
The shield should work fine with **any Arduino with onboard 5V regulator** which can tolerate up to 12V on the **VIN** pin (e.g. it will **NOT** work with an Arduino Yùn or Tian and will most likely damage the board).
### Verified Boards
- Arduino Uno
- Arduino Due
- Arduino 101 (requires a small modification to the shield)

## Hardware
[![Order from OSH Park](https://oshpark.com/assets/badge-5b7ec47045b78aef6eb9d83b3bac6b1920de805e9a0c227658eac6e19a045b9c.png)](https://oshpark.com/shared_projects/3d4FCRE4)

### Passive components
- 2 x ferrite beads (or 10 ohm resistors)
- 8 x 1K 1% resistor
- 4 x 10K 1% resistor
- 6 x 100K 1% resistor
- 2 x 1M 1% resistor
- 2 x 47p capacitor
- 4 x 100n capacitor
- 1 x 10u 25V electrolytic capacitor

### Diodes, transistors ICs
- 4 x BAT85 diode
- 4 x 2N3904 transistor
- 1 x REF02CP voltage reference
- 1 x MCP4922E SPI DAC
- 1 x TL072 dual opamp
- 1 x 4053N

### Mechanical
- 2 x 8 pin dip socket
- 1 x 16 pin dip socket
- 1 x 14 pin dip socket
- 1 x 5x2 male strip connector (2.54mm pitch)
- 1 x 3x2 female strip connector (2.54mm pitch)
- 1 x 10x1 male strip connector (2.54mm pitch)
- 2 x 8x1 male strip connector (2.54mm pitch)
- 1 x 6x1 male strip connector (2.54mm pitch)
- 8 x PJ301BM vertical mount 'Erthenvar' jack

## Software library usage
The library can be installed using Arduino Library Manager (Sketch -> Include Library -> Library Manager), just search for "synapse".

Once the library is installed (please remember to install the dependencies, as well - see the last paragraph below), you can call SynapseShield.begin() in the setup() function to initialize the library and the shield
```cpp
#include <Synapse.h>
using namespace sl;

void setup()
{
  SynapseShield.begin();
  // ...
}
```
when calling the begin() function you can optionally specify the SPI divider (by default it's set to 8)

Optionally, you can configure a callback function for each gate input channel which will be called when a specific condition is met.
```cpp
#include <Synapse.h>
using namespace sl;

void onGateAChanged();
void onGateBRisingEdge();

void setup()
{
  SynapseShield.begin();

  SynapseShield.gateInputInterrupt(
    Synapse::GateChannel::A,
    onGateAChanged,
    Synapse::GateInterrupt::ValueChange
  );

  SynapseShield.gateInputInterrupt(
    Synapse::GateChannel::B,
    onGateBRisingEdge,
    Synapse::GateInterrupt::RisingEdge
  );
  // ...
}
void loop()
{
  // ...
}

void onGateAChanged()
{
  // Do something when the logic value of gate input A changes
  // WARNING: keep this function as unexpensive as possible
}

void onGateBRisingEdge()
{
  // Do something when the logic value of gate input B goes from LOW to HIGH
  // WARNING: keep this function as unexpensive as possible
}
```

The range of each CV output channel can be individually configured (even dinamically)
```cpp
#include <Synapse.h>
using namespace sl;

void setup()
{
  SynapseShield.begin();

  SynapseShield.setCVRange(
    Synapse::CVChannel::A,
    Synapse::Range::ZeroToTenVolts
  );

  SynapseShield.setCVRange(
    Synapse::CVChannel::B,
    Synapse::Range::MinusFiveToFiveVolts
  );
  // ...
}

void loop()
{
  Synapse::Range rangeA = SynapseShield.getCVRange( Synapse::CVChannel::A );

  if(rangeA == Synapse::Range::MinusFiveToFiveVolts)
  {
    SynapseShield.setCVRange(
      Synapse::CVChannel::A,
      Synapse::Range::ZeroToTenVolts
    );
  }
  else
  {
    SynapseShield.setCVRange(
      Synapse::CVChannel::A,
      Synapse::Range::MinusFiveToFiveVolts
    );
  }
  delay(1000);
}
```

CV and Gate I/O operations are also very easy:
```cpp
#include <Synapse.h>
using namespace sl;

bool gateInA{false};
unsigned cvInA{0};

void setup()
{
  SynapseShield.begin();
  // ...
}

void loop()
{
  gateInA = SynapseShield.readGate(Synapse::GateChannel::A);
  cvInA = SynapseShield.readCV(Synapse::CVChannel::A);

  if(gateInA)
  {
    SynapseShield.writeCV(Synapse::CVChannel::A, 4095);
    SynapseShield.writeCV(Synapse::CVChannel::B, 0);
  }
  else
  {
    SynapseShield.writeCV(Synapse::CVChannel::A, 0);
    SynapseShield.writeCV(Synapse::CVChannel::B, 4095);
  }

  if(cvInA > 2047)
  {
    SynapseShield.writeGate(Synapse::GateChannel::A, false);
    SynapseShield.writeGate(Synapse::GateChannel::B, true);
  }
  else
  {
    SynapseShield.writeGate(Synapse::GateChannel::A, true);
    SynapseShield.writeGate(Synapse::GateChannel::B, false);
  }
}
```

## Dependencies
- [DirectIO](https://github.com/mmarchetti/DirectIO), for fast digital pin access
