# Distance controller

Uses dacarduino lite.

Has 2 CV inputs:

- Min distance pot, 10k
- Distance range pot, 10k

Both can go directly to analog input pins without conditioning.

Has 2 digital ("gate") inputs:

- HC-SP04 echo
- Push button with pulldown resistor (10k)

Can go directly to digital input pin without conditioning.

Has 1 CV output:

- CV output jack

2 gate outputs:

- Gate output jack
- HC-SP04 trig

Powered by e.g. 6 AA cells. Everything housed in a handheld controller with TRS cable carrying CV, gate, ground to y adapter at synth.

Code polls the HC-SP04, setting lower and upper distance bounds based on the input pots, sends output to CV. Also polls the push button and when closed turns on output gate.
