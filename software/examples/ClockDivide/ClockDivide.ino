//  ============================================================
//
//  Program: dac_ino ClockDivide
//
//  Based on https://github.com/darwingrosse/ArdCore-Code/tree/master/20%20Objects/AC05_ClockDivide
//
//  Description: Given incoming clock pulses, output two
//               triggers with varying delays
//
//    CVIn A: Division of clock out 1 (1-32)
//    CVIn B: Division of clock out 2 (1-32)
//    CVIn C: Additional division offset (1-16) (if enabled)
//    GateOut A: Trigger output 1
//    GateOut B: Trigger output 2
//    GateIn A: External trigger input
//    GateIn B: HIGH to reset clock 1 & 2
//
//  ============================================================
//
//  From Synapse project, adapted to dac/ino by Rich Holmes, May 2020
//
//  ============================================================

#define USECVOFFSET 0

#include <dac_ino.h>
using namespace di;

const int trigTime = 10;       // triggers are 10 ms.

//  variables for interrupt handling of the clock input and reset
volatile int clkState = LOW;
volatile int rstState = LOW;
int clockTick[2] = {1, 1};

//  variables used to control the current gate output states
int digState[2] = {LOW, LOW};  // start with both set low
unsigned long prevMilli[2] = {0, 0};     // the last time of a loop
dac_ino::GateOutChannel outChannel[2] = {dac_ino::GateOutChannel::A, dac_ino::GateOutChannel::B};
dac_ino::CVInChannel cvChannel[3] = {dac_ino::CVInChannel::A, dac_ino::CVInChannel::B, dac_ino::CVInChannel::C};

void onGateARisingEdge();
void onGateBRisingEdge();

void setup() {
  dac_inoBoard.begin();
  Serial.begin(9600);

  // attach clock in interrupt
  dac_inoBoard.gateInputInterrupt(
    dac_ino::GateInChannel::A,
    onGateARisingEdge,
    dac_ino::GateInterrupt::RisingEdge
  );

  // attach reset interrupt
  dac_inoBoard.gateInputInterrupt(
    dac_ino::GateInChannel::B,
    onGateBRisingEdge,
    dac_ino::GateInterrupt::RisingEdge
  );
}

int getDivide (int i)
{
  // Get division for channel 0 or 1 or offset
  return 1 << int (dac_inoBoard.readCV(cvChannel[i]) / (1024./6));
}

void loop()
{
  int i;
  
  // deal with possible reset
  if (rstState == HIGH) {
    rstState = LOW;
    for (i=0; i<2; i++) {
      clockTick[i] = getDivide(i);
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
        dac_inoBoard.writeGate(outChannel[i], true);
        clockTick[i] = getDivide(i) + USECVOFFSET ? getDivide(3) : 0;
     }
    }
  }

  // deal with trigger turnoff
  for (int i=0; i<2; i++) {
    if ((digState[i] == HIGH) && ((millis() - prevMilli[i]) > trigTime)) {
      digState[i] = LOW;
      dac_inoBoard.writeGate(outChannel[i], false);
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
