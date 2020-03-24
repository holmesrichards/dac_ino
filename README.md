# dacarduino

This is a board and corresponding library which provides CV and Gate I/O for an Arduino Pro Mini. It is derived from ![shaduzlabs/synapse](https://github.com/shaduzlabs/synapse).

Differences are:
- Board design with socket for Arduino Pro Mini, instead of as Uno style shield
- Increased number of inputs
- Simplification by eliminating software-controlled range selection, and using Arduino Vcc instead of voltage reference

## Features
- 6 x control voltage inputs, 0 to 5V
- 2 x control voltage outputs, individually configurable as 0 to 10V or -5 to 5V via hardware, with 12bit of resolution
- 4 x gate inputs (with interrupt)
- 2 x gate outputs
- 1 x eurorack power connector (10 pin)
- An easy to use software library

## Compatible Arduinos
The circuit should work fine with **any Arduino with onboard 5V regulator** which can tolerate up to 12V on the **VIN** pin (e.g. it will **NOT** work with an Arduino Yùn or Tian and will most likely damage the board).

The PCB layout is for an Arduino Pro Mini (5V).

## Dependencies
- [DirectIO](https://github.com/mmarchetti/DirectIO), for fast digital pin access
