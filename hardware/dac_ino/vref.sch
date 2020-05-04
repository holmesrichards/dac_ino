EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 16
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L dac_ino:REF02CP+ U3
U 1 1 5E7D472A
P 5450 3650
F 0 "U3" H 5500 4050 50  0000 L CNN
F 1 "REF02CP+" H 5500 3950 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 5400 3700 50  0001 C CIN
F 3 "https://datasheets.maximintegrated.com/en/ds/REF01-REF02.pdf" H 5400 3700 50  0001 C CIN
	1    5450 3650
	1    0    0    -1  
$EndComp
Text GLabel 5450 3050 1    50   Input ~ 0
+VIN
Wire Wire Line
	5450 3050 5450 3350
$Comp
L power:GND #PWR017
U 1 1 5E7D4E95
P 5450 4050
F 0 "#PWR017" H 5450 3800 50  0001 C CNN
F 1 "GND" H 5455 3877 50  0000 C CNN
F 2 "" H 5450 4050 50  0001 C CNN
F 3 "" H 5450 4050 50  0001 C CNN
	1    5450 4050
	1    0    0    -1  
$EndComp
Text HLabel 6200 3650 2    50   Output ~ 0
VREF
Wire Wire Line
	5850 3650 6200 3650
NoConn ~ 5050 3650
NoConn ~ 5050 3750
$EndSCHEMATC
