[![Build Status](https://travis-ci.org/shaduzlabs/Synapse.svg?branch=master)](https://travis-ci.org/shaduzlabs/Synapse)

# Synapse
![A rendering of the Arduino shield](https://cloud.githubusercontent.com/assets/804931/13776151/e4bdfa4c-eaa8-11e5-8b88-48274cfd1437.png)
Synapse is an Arduino shield (and the corresponding library) which provides CV and Gate I/O for Arduino boards.

## Features
- 2 x control voltage inputs, 0 to 5V
- 2 x control voltage outputs, individually configurable as 0 to 10V or -5 to 5V via software, with 12bit of resolution
- 2 x gate inputs (with interrupt)
- 2 x gate outputs
- 1 x eurorack power connector (10 pin)
- A convenient wrapper library with high-level functions

## Usage
Call SynapseBoard.begin() in the setup() function
```cpp
void setup()
{
  SynapseBoard.begin();
  // ...
}
```

Optionally, you can configure a callback function for each gate input channel which will be called when a specific condition is met.
```cpp

void onGateAChanged();
void onGateBRisingEdge();

void setup()
{
  SynapseBoard.begin();

  SynapseBoard.gateInputInterrupt(
    Synapse::GateChannel::A,
    onGateAChanged,
    Synapse::GateInterrupt::ValueChange
  );

  SynapseBoard.gateInputInterrupt(
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

void setup()
{
  SynapseBoard.begin();

  SynapseBoard.setCVRange(
    Synapse::CVChannel::A,
    Synapse::Range::ZeroToTenVolts
  );

  SynapseBoard.setCVRange(
    Synapse::CVChannel::B,
    Synapse::Range::MinusFiveToFiveVolts
  );
  // ...
}

void loop()
{
  Synapse::Range rangeA = SynapseBoard.getCVRange( Synapse::CVChannel::A );
  if(rangeA == Synapse::Range::MinusFiveToFiveVolts)
  {
    SynapseBoard.setCVRange(
      Synapse::CVChannel::A,
      Synapse::Range::ZeroToTenVolts
    );
  }
  else
  {
    SynapseBoard.setCVRange(
      Synapse::CVChannel::A,
      Synapse::Range::MinusFiveToFiveVolts
    );
  }
  delay(1000);
}
```
## Dependencies
- [DirectIO](https://github.com/mmarchetti/DirectIO), for fast digital pin access
