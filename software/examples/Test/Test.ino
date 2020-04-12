/*
dacarduino
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

#include <dacarduino.h>

using namespace dcrd;

bool gate{false};
unsigned val{0};

void setup()
{
  Serial.begin (9600);
  dacarduinoBoard.begin();
}

void loop()
{
  Serial.print ("CV ");
  Serial.print (dacarduinoBoard.readCV(dacarduino::CVChannel::A));
  Serial.print (" ");
  Serial.print (dacarduinoBoard.readCV(dacarduino::CVChannel::B));
  Serial.print (" ");
  Serial.print (dacarduinoBoard.readCV(dacarduino::CVChannel::C));
  Serial.print (" ");
  Serial.print (dacarduinoBoard.readCV(dacarduino::CVChannel::D));
  Serial.print (" ");
  Serial.print (dacarduinoBoard.readCV(dacarduino::CVChannel::E));
  Serial.print (" ");
  Serial.print (dacarduinoBoard.readCV(dacarduino::CVChannel::F));
  Serial.println ();
  Serial.print ("Gate ");
  Serial.print (dacarduinoBoard.readCV(dacarduino::CVChannel::A) ? "T": "F");
  Serial.print (" ");
  Serial.print (dacarduinoBoard.readCV(dacarduino::CVChannel::B) ? "T": "F");
  Serial.print (" ");
  Serial.print (dacarduinoBoard.readCV(dacarduino::CVChannel::C) ? "T": "F");
  Serial.print (" ");
  Serial.print (dacarduinoBoard.readCV(dacarduino::CVChannel::D) ? "T": "F");
  Serial.println ();
  Serial.print ("CV out ");
  Serial.println (val);
  dacarduinoBoard.writeCV(dacarduino::CVChannel::A, val);
  dacarduinoBoard.writeCV(dacarduino::CVChannel::B, val++);
  if (val > 8)
  {
    val = 0;
    gate = !gate;
    Serial.print ("Gate out ");
    Serial.println (gate ? "T" : "F");
    dacarduinoBoard.writeGate(dacarduino::GateChannel::A, gate);
    dacarduinoBoard.writeGate(dacarduino::GateChannel::B, gate);
  }
  delay(3000);
}
