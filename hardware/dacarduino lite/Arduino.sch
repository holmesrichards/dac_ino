EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 16 17
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5350 4050 4450 4050
$Comp
L Device:R R?
U 1 1 5E89358E
P 4450 3700
AR Path="/5E89358E" Ref="R?"  Part="1" 
AR Path="/5E7977E1/5E89358E" Ref="R?"  Part="1" 
AR Path="/5E7957F4/5E89358E" Ref="R?"  Part="1" 
AR Path="/5E8923A6/5E89358E" Ref="R30"  Part="1" 
F 0 "R30" H 4550 3750 59  0000 L BNN
F 1 "10K" H 4550 3650 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4450 3700 50  0001 C CNN
F 3 "" H 4450 3700 50  0001 C CNN
	1    4450 3700
	-1   0    0    -1  
$EndComp
Text GLabel 4450 3500 1    50   Input ~ 0
VCC
Wire Wire Line
	5250 3250 5350 3250
Wire Wire Line
	5250 3350 5350 3350
Wire Wire Line
	5250 3450 5350 3450
Wire Wire Line
	5250 3550 5350 3550
Wire Wire Line
	5250 3650 5350 3650
Wire Wire Line
	5250 3750 5350 3750
Wire Wire Line
	6350 3750 6450 3750
Wire Wire Line
	6350 3650 6450 3650
Wire Wire Line
	6350 3950 6450 3950
Wire Wire Line
	6350 3850 6450 3850
Wire Wire Line
	6350 4150 6450 4150
Wire Wire Line
	6350 4050 6450 4050
Text GLabel 6050 2550 1    50   Output ~ 0
VCC
Text GLabel 5750 2550 1    50   Input ~ 0
+12V
Wire Wire Line
	5750 2550 5750 2650
Wire Wire Line
	6050 2550 6050 2650
$Comp
L power:GND #PWR?
U 1 1 5E8935B0
P 5950 4650
AR Path="/5E7957F4/5E8935B0" Ref="#PWR?"  Part="1" 
AR Path="/5E8935B0" Ref="#PWR?"  Part="1" 
AR Path="/5E8923A6/5E8935B0" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 5950 4400 50  0001 C CNN
F 1 "GND" H 5955 4477 50  0000 C CNN
F 2 "" H 5950 4650 50  0001 C CNN
F 3 "" H 5950 4650 50  0001 C CNN
	1    5950 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3500 4450 3550
Wire Wire Line
	4450 3850 4450 4050
Wire Wire Line
	5350 4350 5250 4350
Wire Wire Line
	5350 4150 5250 4150
Wire Wire Line
	4450 4050 4350 4050
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 5E8935BE
P 5850 3650
AR Path="/5E7957F4/5E8935BE" Ref="A?"  Part="1" 
AR Path="/5E8935BE" Ref="A?"  Part="1" 
AR Path="/5E8923A6/5E8935BE" Ref="A1"  Part="1" 
F 0 "A1" H 5750 2500 50  0000 C CNN
F 1 "Arduino_Nano_v3.x 5V" H 5850 2400 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5850 3650 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5850 3650 50  0001 C CNN
	1    5850 3650
	1    0    0    -1  
$EndComp
Connection ~ 4450 4050
NoConn ~ 5350 3150
NoConn ~ 5350 3050
NoConn ~ 6350 3150
NoConn ~ 6350 3050
NoConn ~ 5350 3850
NoConn ~ 5350 3950
NoConn ~ 6350 4250
NoConn ~ 6350 4350
NoConn ~ 5350 4250
NoConn ~ 5950 2650
Wire Wire Line
	5850 4650 5950 4650
Connection ~ 5950 4650
Text GLabel 4650 2800 2    50   Input ~ 0
VCC
$Comp
L power:GND #PWR?
U 1 1 5E8935D2
P 4650 2900
AR Path="/5E7957F4/5E8935D2" Ref="#PWR?"  Part="1" 
AR Path="/5E8935D2" Ref="#PWR?"  Part="1" 
AR Path="/5E8923A6/5E8935D2" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 4650 2650 50  0001 C CNN
F 1 "GND" H 4655 2727 50  0000 C CNN
F 2 "" H 4650 2900 50  0001 C CNN
F 3 "" H 4650 2900 50  0001 C CNN
	1    4650 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5E8935D8
P 4450 2800
AR Path="/5E7957F4/5E8935D8" Ref="J?"  Part="1" 
AR Path="/5E8935D8" Ref="J?"  Part="1" 
AR Path="/5E8923A6/5E8935D8" Ref="J17"  Part="1" 
F 0 "J17" H 4368 3017 50  0000 C CNN
F 1 "VCC" H 4368 2926 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 4450 2800 50  0001 C CNN
F 3 "~" H 4450 2800 50  0001 C CNN
	1    4450 2800
	-1   0    0    -1  
$EndComp
Text HLabel 5250 3250 0    50   Input ~ 0
D_IN_A
Text HLabel 5250 3350 0    50   Input ~ 0
D_IN_B
Text HLabel 5250 3450 0    50   Input ~ 0
D_IN_C
Text HLabel 5250 3550 0    50   Input ~ 0
D_IN_D
Text HLabel 5250 3650 0    50   Output ~ 0
D_OUT_A
Text HLabel 5250 3750 0    50   Output ~ 0
D_OUT_B
Text HLabel 5250 4150 0    50   BiDi ~ 0
MOSI
Text HLabel 5250 4350 0    50   BiDi ~ 0
SCK
Text HLabel 4350 4050 0    50   BiDi ~ 0
DAC_CS
Text HLabel 6450 3650 2    50   Input ~ 0
A_IN_A
Text HLabel 6450 3750 2    50   Input ~ 0
A_IN_B
Text HLabel 6450 3850 2    50   Input ~ 0
A_IN_C
Text HLabel 6450 3950 2    50   Input ~ 0
A_IN_D
Text HLabel 6450 4050 2    50   Input ~ 0
A_IN_E
Text HLabel 6450 4150 2    50   Input ~ 0
A_IN_F
NoConn ~ 6350 3450
Text Notes 7100 7050 0    100  ~ 0
cc-ba-sa\nVincezno Pacella shadux@shaduzlabs.com\nRich Holmes rs.holmes@gmail.com
$EndSCHEMATC
