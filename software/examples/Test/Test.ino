/*
dac_ino
by Rich Holmes

Program to test dac/ino functionality

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

#include <dac_ino.h>

using namespace di;

bool gate{false};
unsigned val{0};
unsigned dv = 4095;

unsigned reads[12];  // 8 CV, 4 gates
unsigned oldreads[12];

int margin = 5;  // allowed ADC fluctuation
int nloop = 10000; // loops between CV out changes
int iloop = 0;

bool changed = false;

void setup()
{
  Serial.begin (9600);
  dac_inoBoard.begin();
}

void loop()
{
  changed = false;
  
  // Get data
  reads[0] = dac_inoBoard.readCV(dac_ino::CVInChannel::A);
  reads[1] = dac_inoBoard.readCV(dac_ino::CVInChannel::B);
  reads[2] = dac_inoBoard.readCV(dac_ino::CVInChannel::C);
  reads[3] = dac_inoBoard.readCV(dac_ino::CVInChannel::D);
  reads[4] = dac_inoBoard.readCV(dac_ino::CVInChannel::E);
  reads[5] = dac_inoBoard.readCV(dac_ino::CVInChannel::F);
  reads[6] = dac_inoBoard.readCV(dac_ino::CVInChannel::G);
  reads[7] = dac_inoBoard.readCV(dac_ino::CVInChannel::H);
  reads[8] = dac_inoBoard.readGate(dac_ino::GateInChannel::A);
  reads[9] = dac_inoBoard.readGate(dac_ino::GateInChannel::B);
  reads[10] = dac_inoBoard.readGate(dac_ino::GateInChannel::C);
  reads[11] = dac_inoBoard.readGate(dac_ino::GateInChannel::D);

  // Look for ADC change larger than margin or any digital change 
  for (unsigned i = 0; i < 12; ++i)
  {
    if (abs(int(reads[i])-int(oldreads[i])) > (i < 8 ? margin : 0))
    {
      changed = true;
    }
  }
  
  // See if it's time to write
  iloop += 1;
  if (iloop >= nloop)
  {
    iloop = 0;
    gate = !gate;
    changed = true;
    val += dv;
    if (val >= 4096)
      val = 0;
    dac_inoBoard.writeCV(dac_ino::CVOutChannel::A, val);
    dac_inoBoard.writeCV(dac_ino::CVOutChannel::B, val);
    dac_inoBoard.writeGate(dac_ino::GateOutChannel::A, gate);
    dac_inoBoard.writeGate(dac_ino::GateOutChannel::B, gate);
  }

  if (changed)
  {
    // Change seen, print to monitor
    
    Serial.print ("CV in ");
    for (unsigned i = 0; i < 8; ++i)
    {
      Serial.print (reads[i]);
      Serial.print (" ");
    }
    Serial.print ("CV out ");
    Serial.print (val);
    Serial.print (" Gate in ");
    for (unsigned i = 8; i < 12; ++i)
    {
      Serial.print (reads[i]);
      Serial.print (" ");
    }
    Serial.print ("Gate out ");
    Serial.println (gate ? "T" : "F");

    for (unsigned i = 0; i < 12; ++i)
      oldreads[i] = reads[i];    
  }

}
