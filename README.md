# dac/ino

This is a pair of boards and corresponding library which provide CV and gate I/O for an Arduino Nano. It is derived from [shaduzlabs/synapse](https://github.com/shaduzlabs/synapse), and there are obvious similarities to [ArdCore](http://20objects.com/ardcore/), but there are significant differences with both. 

There are two boards, dac/ino and dac/ino lite.

Differences between these and Synapse are:

- Board design with space for Arduino Nano, instead of as Uno style shield
- No on-board jacks — pads for Molex or pin connectors (or direct soldering) instead
- Simplification by eliminating software-controlled range selection
- Number of inputs and outputs is different
- dac/ino lite is battery powered and has 0–5V output range, also uses Arduino Vcc as voltage reference

## Features
### dac/ino has
- 4 x control voltage inputs, 0 to 5V
- 2 x control voltage outputs, individually configurable as 0 to 10V or -5 to 5V via jumpers, with 12 bits of resolution
- 4 x gate inputs (with interrupt)
- 2 x gate outputs
- Additional inputs/outputs (direct connections to Arduino): 4 analog, 2 digital
- All above inputs/outputs connect via Molex connectors or solder pads, or via pin headers for daughterboards
- Voltage reference chip
- 1 x eurorack power connector (10 pin)

### dac/ino lite has
- 2 x control voltage outputs, 0 to 5V, with 12 bits of resolution
- 1 x gate output
- Additional inputs/outputs (direct connections to Arduino): 4 analog, 2 digital
- All above inputs/outputs connect via Molex connectors or solder pads
- 6–12V battery or unipolar power supply

## Compatible Arduinos
The PCB layout is for an Arduino Nano (5V).

## Dependencies
- [DirectIO](https://github.com/mmarchetti/DirectIO), for fast digital pin access

## Respository
- KiCad format schematics and PCB layouts, and Arduino library and example sketches, may be found at https://github.com/holmesrichards/dac_ino .

- [Build notes](docs/Build_notes.md)
- [dac/ino schematic](docs/dac_ino.pdf) (A bit confusing because the repetitive parts of the circuit are handled with KiCad heirarchical pages, so you have lots of pages with only a few components on each.)
- [dac/ino PCB layout](docs/dac_ino_pcb.pdf)
