/*
  Simple note select with a potentiometer
  * connect a 10 kilohm potentiometer to A2 to select the note
 */

#include <Synapse.h>

using namespace sl;

//  0 - 4095  = 0 - 5V
//  0 - 819   = 0 - 1V
//  68.25 = 1V / 12

#define OCTAVE (4095 / 5)
#define NOTE (OCTAVE / 12)

void setup() {
  SynapseShield.begin();
}

int pot = 0;
int cvInput = 0;
int cvOutput = 0;
int noteFromPot;
int noteAsDacValue;

void loop() {
  // Read the the potentiometer 
  pot = analogRead(A2);
  // Map the value onto an octave
  noteFromPot = map(pot, 0, 4095, 0, 12);
  noteFromPot = constrain(noteFromPot, 0, 12);
  // Calculate output value for DAC from the note in the second octave
  noteAsDacValue = OCTAVE * 2 + (NOTE * noteFromPot);
  // Write the value to CV Output 1
  SynapseShield.writeCV(Synapse::CVChannel::A, noteAsDacValue);

  delayMicroseconds(100);
}

