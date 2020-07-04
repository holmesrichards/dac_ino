/*
  Lorentz attractor chaos
*/

#include <dac_ino.h>

using namespace di;

void setup()
{
  dac_inoBoard.begin();
}

int cvOutput1 = 0;
int cvOutput2 = 0;
float x=0.01;
float y, z, xx, yy, zz;

float a = 10.;
float b = 28.;
float c = 2.66;
float dt =0.01;
float dx,dy,dz;

void loop()
{
  dx = (a * (y -x)) * dt;
  x = x + dx;
  
  dy = (x*(b-z)-y)  * dt;
  y = y + dy;
  
  dz = ((x*y)-(c*z))* dt;
  z = z + dz;

  // approximate limits on x, y, z after startup:
  // -19 < x < 19
  // -24 < y < 24
  // 3 < z < 48

  xx = 100 * constrain (x, -19, 19);
  yy = 100 * constrain (y, -24, 24);
  cvOutput1 = map (xx, -1900, 1900, 0, 4095);
  cvOutput2 = map (yy, -1900, 1900, 0, 4095);
  dac_inoBoard.writeCV(dac_ino::CVOutChannel::A, cvOutput1);
  dac_inoBoard.writeCV(dac_ino::CVOutChannel::B, cvOutput2);
  
  delayMicroseconds(100);
}

  
