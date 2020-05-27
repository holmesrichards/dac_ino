/*
  Quantizing CV Input 1 to equal temperament
 */

#include <dac_ino.h>

using namespace di;

//  0 - 4095  = 0 - 10V
//  0 - 409.5   = 0 - 1V
//  34.125 = 1V / 12

#define OCTAVE (4095 / 10.)
#define NOTE (OCTAVE / 12.)

void setup()
{
  dac_inoBoard.begin();
}

int cvInput = 0;
int cvOutput = 0;

void loop() {
  // Read CV Input 1
  cvInput = dac_inoBoard.readCV(dac_ino::CVInChannel::A);
  // Add 2 bits
  cvOutput = cvInput << 2;
  // Quantize
  cvOutput = int(cvOutput / NOTE + 0.5) * NOTE;
  // Play quantized note on CV Output 1
  dac_inoBoard.writeCV(dac_ino::CVOutChannel::A, cvOutput);
  
  delayMicroseconds(100);
}
