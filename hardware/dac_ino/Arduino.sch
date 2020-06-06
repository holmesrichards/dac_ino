EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 16
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
AR Path="/5E8923A6/5E89358E" Ref="R14"  Part="1" 
F 0 "R14" H 4550 3750 59  0000 L BNN
F 1 "10k" H 4550 3650 59  0000 L BNN
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
+VIN
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
AR Path="/5E8923A6/5E8935B0" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 5950 4400 50  0001 C CNN
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
AR Path="/5E8923A6/5E8935D2" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 4650 2650 50  0001 C CNN
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
AR Path="/5E8923A6/5E8935D8" Ref="J8"  Part="1" 
F 0 "J8" H 4368 3017 50  0000 C CNN
F 1 "Molex 2 pin VCC " H 4368 2926 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 4450 2800 50  0001 C CNN
F 3 "~" H 4450 2800 50  0001 C CNN
	1    4450 2800
	-1   0    0    -1  
$EndComp
Text HLabel 5250 3250 0    50   Input ~ 0
D2
Text HLabel 5250 3350 0    50   Input ~ 0
D3
Text HLabel 5250 3450 0    50   Input ~ 0
D4
Text HLabel 5250 3550 0    50   Input ~ 0
D5
Text HLabel 5250 3650 0    50   Output ~ 0
D6
Text HLabel 5250 3750 0    50   Output ~ 0
D7
Text HLabel 5250 4150 0    50   BiDi ~ 0
MOSI
Text HLabel 5250 4350 0    50   BiDi ~ 0
SCK
Text HLabel 4350 4050 0    50   BiDi ~ 0
DAC_CS
Text HLabel 6450 3650 2    50   Input ~ 0
A0
Text HLabel 6450 3750 2    50   Input ~ 0
A1
Text HLabel 6450 3850 2    50   Input ~ 0
A2
Text HLabel 6450 3950 2    50   Input ~ 0
A3
Text HLabel 6450 4050 2    50   Input ~ 0
A4
Text HLabel 6450 4150 2    50   Input ~ 0
A5
NoConn ~ 6350 3450
Text Notes 7100 7050 0    100  ~ 0
cc-ba-sa\nVincezno Pacella shadux@shaduzlabs.com\nRich Holmes rs.holmes@gmail.com
Wire Wire Line
	5250 3850 5350 3850
Wire Wire Line
	5250 3950 5350 3950
Text HLabel 5250 3850 0    50   Output ~ 0
D8
Text HLabel 5250 3950 0    50   Output ~ 0
D9
Wire Wire Line
	6350 4350 6450 4350
Wire Wire Line
	6350 4250 6450 4250
Text HLabel 6450 4250 2    50   Input ~ 0
A6
Text HLabel 6450 4350 2    50   Input ~ 0
A7
$Comp
L dac_ino:Conn_01x01_Units J?
U 2 1 5EC35EDB
P 3300 2750
AR Path="/5E86BFC7/5E8150C7/5EC35EDB" Ref="J?"  Part="1" 
AR Path="/5E86BFC7/5E8670B9/5EC35EDB" Ref="J?"  Part="3" 
AR Path="/5E86BFC7/5E867AC0/5EC35EDB" Ref="J?"  Part="4" 
AR Path="/5E86BFC7/5E845115/5EC35EDB" Ref="J?"  Part="2" 
AR Path="/5E8923A6/5EC35EDB" Ref="J7"  Part="2" 
F 0 "J7" H 3218 2525 50  0000 C CNN
F 1 "Conn_01x01_Units" H 3218 2616 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3300 2750 50  0001 C CNN
F 3 "~" H 3300 2750 50  0001 C CNN
	2    3300 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 2750 3500 2750
$Comp
L dac_ino:Conn_01x01_Units J?
U 1 1 5EC3679D
P 3300 3100
AR Path="/5E86BFC7/5E8150C7/5EC3679D" Ref="J?"  Part="1" 
AR Path="/5E86BFC7/5E8670B9/5EC3679D" Ref="J?"  Part="3" 
AR Path="/5E86BFC7/5E867AC0/5EC3679D" Ref="J?"  Part="4" 
AR Path="/5E86BFC7/5E845115/5EC3679D" Ref="J?"  Part="2" 
AR Path="/5E8923A6/5EC3679D" Ref="J7"  Part="1" 
F 0 "J7" H 3218 2875 50  0000 C CNN
F 1 "Conn_01x01_Units" H 3218 2966 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3300 3100 50  0001 C CNN
F 3 "~" H 3300 3100 50  0001 C CNN
	1    3300 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 3100 3500 3100
Text GLabel 3600 2750 2    50   Input ~ 0
VCC
$Comp
L power:GND #PWR?
U 1 1 5EC36D19
P 3600 3100
AR Path="/5E7957F4/5EC36D19" Ref="#PWR?"  Part="1" 
AR Path="/5EC36D19" Ref="#PWR?"  Part="1" 
AR Path="/5E8923A6/5EC36D19" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 3600 2850 50  0001 C CNN
F 1 "GND" H 3605 2927 50  0000 C CNN
F 2 "" H 3600 3100 50  0001 C CNN
F 3 "" H 3600 3100 50  0001 C CNN
	1    3600 3100
	1    0    0    -1  
$EndComp
$Comp
L dac_ino:Conn_01x01_Units J?
U 7 1 5EC4878D
P 3300 3625
AR Path="/5E86BFC7/5E8150C7/5EC4878D" Ref="J?"  Part="1" 
AR Path="/5E86BFC7/5E8670B9/5EC4878D" Ref="J?"  Part="3" 
AR Path="/5E86BFC7/5E867AC0/5EC4878D" Ref="J?"  Part="4" 
AR Path="/5E86BFC7/5E845115/5EC4878D" Ref="J?"  Part="2" 
AR Path="/5E8923A6/5EC4878D" Ref="J14"  Part="7" 
F 0 "J14" H 3218 3400 50  0000 C CNN
F 1 "Conn_01x01_Units" H 3218 3491 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3300 3625 50  0001 C CNN
F 3 "~" H 3300 3625 50  0001 C CNN
	7    3300 3625
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 3625 3500 3625
$Comp
L dac_ino:Conn_01x01_Units J?
U 8 1 5EC48794
P 3300 3975
AR Path="/5E86BFC7/5E8150C7/5EC48794" Ref="J?"  Part="1" 
AR Path="/5E86BFC7/5E8670B9/5EC48794" Ref="J?"  Part="3" 
AR Path="/5E86BFC7/5E867AC0/5EC48794" Ref="J?"  Part="4" 
AR Path="/5E86BFC7/5E845115/5EC48794" Ref="J?"  Part="2" 
AR Path="/5E8923A6/5EC48794" Ref="J14"  Part="8" 
F 0 "J14" H 3218 3750 50  0000 C CNN
F 1 "Conn_01x01_Units" H 3218 3841 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3300 3975 50  0001 C CNN
F 3 "~" H 3300 3975 50  0001 C CNN
	8    3300 3975
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 3975 3500 3975
Text GLabel 3600 3625 2    50   Input ~ 0
VCC
$Comp
L power:GND #PWR?
U 1 1 5EC4879C
P 3600 3975
AR Path="/5E7957F4/5EC4879C" Ref="#PWR?"  Part="1" 
AR Path="/5EC4879C" Ref="#PWR?"  Part="1" 
AR Path="/5E8923A6/5EC4879C" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 3600 3725 50  0001 C CNN
F 1 "GND" H 3605 3802 50  0000 C CNN
F 2 "" H 3600 3975 50  0001 C CNN
F 3 "" H 3600 3975 50  0001 C CNN
	1    3600 3975
	1    0    0    -1  
$EndComp
$EndSCHEMATC
