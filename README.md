# dacarduino

This is a pair of boards and corresponding library which provides CV and Gate I/O for an Arduino Nano. It is derived from ![shaduzlabs/synapse](https://github.com/shaduzlabs/synapse).

There are two boards, dacarduino and dacarduino lite.

Differences between these and Synapse are:

- Board design with space for Arduino Nano, instead of as Uno style shield
- Simplification by eliminating software-controlled range selection, and using Arduino Vcc instead of voltage reference
- Number of inputs and outputs is different
- dacarduino lite is battery powered and has 0–5V output range

## Features
### dacarduino has
- 6 x control voltage inputs, 0 to 5V
- 2 x control voltage outputs, individually configurable as 0 to 10V or -5 to 5V via jumpers, with 12 bits of resolution
- 4 x gate inputs (with interrupt)
- 2 x gate outputs
- 1 x eurorack power connector (10 pin)

### dacarduino lite has
- 3 x control voltage inputs, 0 to 5V
- 2 x control voltage outputs, 0 to 5V, with 12 bits of resolution
- 1 x gate inputs (with interrupt)
- 1 x gate outputs
- 1 x Molex connector for 6–12V battery or unipolar power supply

## Compatible Arduinos
The circuit should work fine with **any Arduino with onboard 5V regulator** which can tolerate up to 12V on the **VIN** pin (e.g. it will **NOT** work with an Arduino Yùn or Tian and will most likely damage the board).

The PCB layout is for an Arduino Nano (5V).

## Dependencies
- [DirectIO](https://github.com/mmarchetti/DirectIO), for fast digital pin access
