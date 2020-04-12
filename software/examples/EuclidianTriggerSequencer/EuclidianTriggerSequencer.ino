//  ============================================================
//
//  Program: Synapse Dual Euclidian Trigger Sequencer
//
//  Based on https://github.com/darwingrosse/ArdCore-Code/blob/master/20%20Objects/AC30_DualEuclidean/AC30_DualEuclidean.ino
//
//  Description: An implementation of a dual trigger sequencer
//               using Euclidian Rhythm concepts
//
//               Thanks to Robin Price (http://crx091081gb.net/)
//               for the use of his algorithm for Euclidean
//               Rhythm Generation.
//
//  I/O Usage:
//    A2: Steps for rhythm A
//    A3: Steps for rhythm B
//    A4: Pulses for rhythm A
//    A5: Pulses for rhythm B
//    CVIn A: rotate rhythm A
//    CVIn B: rotate rhythm B
//    GateOut A: Rhythm A output
//    GateOut B: Rhythm B output
//    GateIn: External clock input
//
//  ============================================================
//
//  License:
//
//  This software is licensed under the Creative Commons
//  "Attribution-NonCommercial license. This license allows you
//  to tweak and build upon the code for non-commercial purposes,
//  without the requirement to license derivative works on the
//  same terms. If you wish to use this (or derived) work for
//  commercial work, please contact 20 Objects LLC at our website
//  (www.20objects.com).
//
//  For more information on the Creative Commons CC BY-NC license,
//  visit http://creativecommons.org/licenses/
//
//  ============================================================
#include <Synapse.h>
using namespace sl;

#define CHANNELS 2

//  constants related to the trigger out
const int trigTime = 25;       // 25 ms trigger timing

//  variables for interrupt handling of the clock input
volatile int clkState = LOW;
volatile int rstState = LOW;

//  variables used to control the gate output states
int digState[2] = {LOW, LOW};        // start with both set low
unsigned long digMilli[2] = {0, 0};  // a place to store millis()
Synapse::GateChannel channel[2] = {Synapse::GateChannel::A, Synapse::GateChannel::B};

// the euclidian rhythm settings
int inSteps[2];
int inPulses[2];
int inRotate[2];

int euArray[2][32];

unsigned long currPulse = 0;
int doCalc = 0;

void onGateARisingEdge();
void onGateBRisingEdge();

//  ==================== start of setup() ======================
void setup()
{
  SynapseShield.begin();

  // get the analog reading to set up the system
  inSteps[0] = (analogRead(2) >> 5) + 1;
  inSteps[1] = (analogRead(3) >> 5) + 1;
  inPulses[0] = (analogRead(4) >> 5) + 1;
  inPulses[1] = (analogRead(5) >> 5) + 1;

  inRotate[0] = map(SynapseShield.readCV(Synapse::CVChannel::A), 0, 4095, 0, inSteps[0]);
  inRotate[1] = map(SynapseShield.readCV(Synapse::CVChannel::B), 0, 4095, 0, inSteps[1]);

  euCalc(0);
  euCalc(1);

  // Note: Interrupt 0 is for Gate A (clkIn)
  SynapseShield.gateInputInterrupt(
    Synapse::GateChannel::A,
    onGateARisingEdge,
    Synapse::GateInterrupt::RisingEdge
  );

  // Note: Interrupt 0 is for Gate A (clkIn)
  SynapseShield.gateInputInterrupt(
    Synapse::GateChannel::B,
    onGateBRisingEdge,
    Synapse::GateInterrupt::RisingEdge
  );

}

void loop()
{
  int doClock = 0;

  // check to see if the clock as been set
  if (clkState == HIGH) {
    clkState = LOW;
    currPulse++;
    doClock = 1;
  }

  if (rstState == HIGH) {
    rstState = LOW;
    currPulse = 0;
  }

  if (doClock) {
    int outPulse[2] = {0, 0};

    for (int i=0; i < CHANNELS; i++) {
      int myPulse = (currPulse + inRotate[i]) % inSteps[i];
      if (euArray[i][myPulse] > 0) {
        digState[i] = HIGH;
        digMilli[i] = millis();
        SynapseShield.writeGate(channel[i], true);
      }
    }
  }

  // do we have to turn off any of the Gate outs?
  for (int i=0; i<CHANNELS; i++) {
    if ((digState[i] == HIGH) && (millis() - digMilli[i] > trigTime)) {
      digState[i] = LOW;
      SynapseShield.writeGate(channel[i], false);
    }
  }

  // reread the inputs in case we need to change
  doCalc = 0;
  int tmp = (analogRead(2) >> 5) + 1;
  if (tmp != inSteps[0]) {
    inSteps[0] = tmp;
    doCalc = 1;
  }

  tmp = (analogRead(4) >> 5) + 1;
  if (tmp != inPulses[0]) {
    inPulses[0] = tmp;
    doCalc = 1;
  }

  if (doCalc) {
    euCalc(0);
  }

  doCalc = 0;
  tmp = (analogRead(3) >> 5) + 1;
  if (tmp != inSteps[1]) {
    inSteps[1] = tmp;
    doCalc = 1;
  }

  tmp = (analogRead(5) >> 5) + 1;
  if (tmp != inPulses[1]) {
    inPulses[1] = tmp;
    doCalc = 1;
  }

  if (doCalc) {
    euCalc(1);
  }

  inRotate[0] = map(SynapseShield.readCV(Synapse::CVChannel::A), 0, 4095, 0, inSteps[0]);
  inRotate[1] = map(SynapseShield.readCV(Synapse::CVChannel::B), 0, 4095, 0, inSteps[1]);
}

//  onGateARisingEdge() - quickly handle interrupts from the clock input
//  ------------------------------------------------------
void onGateARisingEdge()
{
  clkState = HIGH;
}

//  onGateBRisingEdge() - quickly handle interrupts from the rst input
//  ------------------------------------------------------
void onGateBRisingEdge()
{
  rstState = HIGH;
}

//  euCalc(int) - create a Euclidean Rhythm array.
//
//  NOTE: Thanks to Robin Price for his excellent implementation, and for
//        making the source code available on the Interwebs.
//        For more info, check out: http://crx091081gb.net/
//  ----------------------------------------------------------------------
void euCalc(int ar) {
  int loc = 0;

  // clear the array to start
  for (int i=0; i<32; i++) {
    euArray[ar][i] = 0;
  }

  if ((inPulses[ar] >= inSteps[ar]) || (inSteps[ar] == 1)) {
        if (inPulses[ar] >= inSteps[ar]) {
            for (int i = 0; i < inSteps[ar]; i++) {
              euArray[ar][loc] = 1;
              loc++;
            }
        }
      } else {
        int offs = inSteps[ar] - inPulses[ar];
        if (offs >= inPulses[ar]) {
            int ppc = offs / inPulses[ar];
            int rmd = offs % inPulses[ar];

            for (int i = 0; i < inPulses[ar]; i++) {
              euArray[ar][loc] = 1;
              loc++;
              for (int j = 0; j < ppc; j++) {
                euArray[ar][loc] = 0;
                loc++;
              }
              if (i < rmd) {
                euArray[ar][loc] = 0;
                loc++;
              }
            }
        } else {
          int ppu = (inPulses[ar] - offs) / offs;
          int rmd = (inPulses[ar] - offs) % offs;

          for (int i = 0; i < offs; i++) {
            euArray[ar][loc] = 1;
            loc++;
            euArray[ar][loc] = 0;
            loc++;
            for (int j = 0; j < ppu; j++) {
              euArray[ar][loc] = 1;
              loc++;
            }
            if (i < rmd) {
              euArray[ar][loc] = 1;
              loc++;
            }
          }
        }
    }
}
