/*
dac_ino
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

// Turn on debug messages
#define DBG   1
// Messages about CV
#define DBGCV 1
// Messages about gate
#define DBGGT 0

#include <dac_ino.h>

using namespace di;

bool gate{false};
unsigned val{0};

void setup()
{
#if DBG
  Serial.begin (9600);
#endif
  dac_inoBoard.begin();
}

void loop()
{
#if DBGCV
  Serial.print ("CV ");
  Serial.print (dac_inoBoard.readCV(dac_ino::CVInChannel::A));
  Serial.print (" ");
  Serial.print (dac_inoBoard.readCV(dac_ino::CVInChannel::B));
  Serial.print (" ");
  Serial.print (dac_inoBoard.readCV(dac_ino::CVInChannel::C));
  Serial.print (" ");
  Serial.print (dac_inoBoard.readCV(dac_ino::CVInChannel::D));
  Serial.print (" ");
  Serial.print (dac_inoBoard.readCV(dac_ino::CVInChannel::E));
  Serial.print (" ");
  Serial.print (dac_inoBoard.readCV(dac_ino::CVInChannel::F));
  Serial.println ();
  Serial.print ("CV out ");
  Serial.println (val);
#endif
  dac_inoBoard.writeCV(dac_ino::CVOutChannel::A, val);
  dac_inoBoard.writeCV(dac_ino::CVOutChannel::B, val);
  val += 1;
  if (val > 1024)
  {
    val = 0;
    gate = !gate;
#if DBGGT
    Serial.print ("Gate ");
    Serial.print (dac_inoBoard.readGate(dac_ino::GateInChannel::A) ? "T": "F");
    Serial.print (" ");
    Serial.print (dac_inoBoard.readGate(dac_ino::GateInChannel::B) ? "T": "F");
    Serial.print (" ");
    Serial.print (dac_inoBoard.readGate(dac_ino::GateInChannel::C) ? "T": "F");
    Serial.print (" ");
    Serial.print (dac_inoBoard.readGate(dac_ino::GateInChannel::D) ? "T": "F");
    Serial.print (" ");
    Serial.print ("Gate out ");
    Serial.println (gate ? "T" : "F");
#endif
    dac_inoBoard.writeGate(dac_ino::GateOutChannel::A, gate);
    dac_inoBoard.writeGate(dac_ino::GateOutChannel::B, gate);
  }
  delay(1);
}
