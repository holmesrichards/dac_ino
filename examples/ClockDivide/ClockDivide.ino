//  ============================================================
//
//  Program: Synapse ClockDivide
//
//  Based on https://github.com/darwingrosse/ArdCore-Code/tree/master/20%20Objects/AC05_ClockDivide
//
//  Description: Given incoming clock pulses, output two
//               triggers with varying delays
//
//    Analog In 2: Division of clock out 1 (1-32)
//    Analog In 3: Division of clock out 2 (1-32)
//    Analog In 4: Additional division offset (1-16)
//    GateOut A: Trigger output 1
//    GateOut B: Trigger output 2
//    GateIn A: External trigger input
//    GateIn B: HIGH to reset clock 1 & 2
//
//  ============================================================

#include <Synapse.h>
using namespace sl;

const int trigTime = 10;       // triggers are 10 ms.

//  variables for interrupt handling of the clock input and reset
volatile int clkState = LOW;
volatile int rstState = LOW;
int clockTick[2] = {1, 1};

//  variables used to control the current gate output states
int digState[2] = {LOW, LOW};  // start with both set low
unsigned long prevMilli[2] = {0, 0};     // the last time of a loop
Synapse::GateChannel channel[2] = {Synapse::GateChannel::A, Synapse::GateChannel::B};

void onGateARisingEdge();
void onGateBRisingEdge();

void setup() {
  SynapseShield.begin();
  Serial.begin(9600);

  // attach clock in interrupt
  SynapseShield.gateInputInterrupt(
    Synapse::GateChannel::A,
    onGateARisingEdge,
    Synapse::GateInterrupt::RisingEdge
  );

  // attach reset interrupt
  SynapseShield.gateInputInterrupt(
    Synapse::GateChannel::B,
    onGateBRisingEdge,
    Synapse::GateInterrupt::RisingEdge
  );
}

void loop()
{
  int i;

  Serial.print(analogRead(2));
  Serial.print('\t');
  Serial.print(analogRead(3));
  Serial.print('\t');
  Serial.println(analogRead(4));

  // deal with possible reset
  if (rstState = HIGH) {
    rstState = LOW;
    for (i=0; i<2; i++) {
      clockTick[i] = (analogRead(i+2) >> 6) + 1;
    }
  }

  // deal with incoming clock ticks
  if (clkState == HIGH) {
    clkState = LOW;  // reset for the next clock

    for (int i=0; i<2; i++) {
      clockTick[i] --;
      if (clockTick[i] < 1) {
        digState[i] = HIGH;
        prevMilli[i] = millis();
        SynapseShield.writeGate(channel[i], true);

        clockTick[i] = (analogRead(i+2) >> 6) + 1 + (analogRead(4) >> 6);
      }
    }
  }

  // deal with trigger turnoff
  for (int i=0; i<2; i++) {
    if ((digState[i] == HIGH) && ((millis() - prevMilli[i]) > trigTime)) {
      digState[i] = LOW;
      SynapseShield.writeGate(channel[i], false);
    }
  }

}

void onGateARisingEdge()
{
  clkState = HIGH;
}

void onGateBRisingEdge()
{
  rstState = HIGH;
}
