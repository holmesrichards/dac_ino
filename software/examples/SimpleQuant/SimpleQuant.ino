/*
  Quantizing CV Input 1 to equal temperament
  Use 0–10V CV output setting, we will send only 0 to 2047 so output is 0–5V matching input
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
  // Add 1 bit (5V input is 1023, 5V output is 2048)
  cvOutput = cvInput << 1;
  // Quantize
  cvOutput = constrain (int (int(cvOutput / NOTE + 0.5) * NOTE + 0.5), 0, 4095); // hardware requirement but should be 0 to 2048
  // Play quantized note on CV Output 1
  dac_inoBoard.writeCV(dac_ino::CVOutChannel::A, cvOutput);
  
  delayMicroseconds(100);
}
