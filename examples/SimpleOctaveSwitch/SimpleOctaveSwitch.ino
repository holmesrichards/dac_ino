/*
  Playing CV Input 1 an octave higher on CV Output 1
 */

#include <Synapse.h>

using namespace sl;

//  0 - 4095  = 0 - 5V
//  0 - 819   = 0 - 1V
//  68.25 = 1V / 12

#define OCTAVE (4095 / 5)
#define NOTE (OCTAVE / 12)
#define FIFTH NOTE * 5

void setup() {
  SynapseShield.begin();
}

int cvInput = 0;
int cvOutputAnOctaveHigher = 0;
int cvOutputFiveNotesHigher = 0;

void loop() {
  // Example 2 octave switcher
  // Read CV Input 1
  cvInput = SynapseShield.readCV(Synapse::CVChannel::A);
  // Add an octave
  cvOutputAnOctaveHigher = constrain(cvInput + OCTAVE, 0, 4095);
  // Play CV Input 1 an octave higher on CV Output 1
  SynapseShield.writeCV(Synapse::CVChannel::A, cvOutputAnOctaveHigher);
  // Add five notes
  cvOutputFiveNotesHigher = constrain(cvInput + FIFTH, 0, 4095);
  // Play CV Input 1 five noteshigher on CV Output 2
  SynapseShield.writeCV(Synapse::CVChannel::B, cvOutputFiveNotesHigher);
  
  delayMicroseconds(100);
}
