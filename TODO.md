# dac/ino ideas for future improvements

* ±5 V output relies on VCC for bias. Really should rely on voltage reference instead.

* Gate inputs are not protected against negative inputs. (Reverse voltage rating for 2N3904 is 6 V.) Add 1N4148 between base and ground.

* Limitation to 0–5 V inputs is unsatisfactory. A CV input that can optionally divide by 2 and optionally offset by 2.5 V would allow converting 0–10 V or ±5 V to the 0–5 V range. This would add several components including a quad op amp. Perhaps use e.g. MCP6004 powered with VCC and ground, obviating need for Schottkys for Arduino protection.

* Board is inconveniently wide already and we're talking about adding components! Consider: 
    * Converting design to 2-layer sandwich
    * Surface mount design
    * Switching to DAC with internal voltage reference (2.5 V or 5 V would be good but I see none in through hole package, just MCP4822 with 2.048 V)