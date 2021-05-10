EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "dac/ino lite"
Date ""
Rev ""
Comp "Rich Holmes / Analog Output"
Comment1 "based on Synapse by Vincenzo Pacella shadux@shaduzlabs.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 5E8D2F88
P 950 6850
F 0 "H1" H 1050 6896 50  0000 L CNN
F 1 "MountingHole" H 1050 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 950 6850 50  0001 C CNN
F 3 "~" H 950 6850 50  0001 C CNN
	1    950  6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E8D422B
P 950 7050
F 0 "H2" H 1050 7096 50  0000 L CNN
F 1 "MountingHole" H 1050 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 950 7050 50  0001 C CNN
F 3 "~" H 950 7050 50  0001 C CNN
	1    950  7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5E8D4380
P 950 7250
F 0 "H3" H 1050 7296 50  0000 L CNN
F 1 "MountingHole" H 1050 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 950 7250 50  0001 C CNN
F 3 "~" H 950 7250 50  0001 C CNN
	1    950  7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5E8D4646
P 950 7450
F 0 "H4" H 1050 7496 50  0000 L CNN
F 1 "MountingHole" H 1050 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 950 7450 50  0001 C CNN
F 3 "~" H 950 7450 50  0001 C CNN
	1    950  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2375 1700 2375
Wire Wire Line
	1550 2475 1700 2475
Wire Wire Line
	1525 3550 1725 3550
Wire Wire Line
	1525 3850 1725 3850
Wire Wire Line
	1525 3650 1725 3650
Wire Wire Line
	1525 3750 1725 3750
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6099A776
P 1350 2475
AR Path="/5E86BFC7/6099A776" Ref="J?"  Part="1" 
AR Path="/6099A776" Ref="J7"  Part="1" 
F 0 "J7" H 1268 2792 50  0000 C CNN
F 1 "Conn_01x04" H 1268 2701 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x04_P3.81mm_Drill1.2mm" H 1350 2475 50  0001 C CNN
F 3 "~" H 1350 2475 50  0001 C CNN
	1    1350 2475
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 2575 1700 2575
Wire Wire Line
	1550 2675 1700 2675
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6099A77E
P 1325 3650
AR Path="/5E86BFC7/6099A77E" Ref="J?"  Part="1" 
AR Path="/6099A77E" Ref="J6"  Part="1" 
F 0 "J6" H 1243 3967 50  0000 C CNN
F 1 "Conn_01x04" H 1243 3876 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x04_P3.81mm_Drill1.2mm" H 1325 3650 50  0001 C CNN
F 3 "~" H 1325 3650 50  0001 C CNN
	1    1325 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 3700 2700 3700
$Comp
L Device:R R8
U 1 1 6099C5EC
P 2700 3350
AR Path="/6099C5EC" Ref="R8"  Part="1" 
AR Path="/5E7977E1/6099C5EC" Ref="R?"  Part="1" 
AR Path="/5E7957F4/6099C5EC" Ref="R?"  Part="1" 
AR Path="/5E8923A6/6099C5EC" Ref="R?"  Part="1" 
F 0 "R8" H 2800 3400 59  0000 L BNN
F 1 "10k" H 2800 3300 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2700 3350 50  0001 C CNN
F 3 "" H 2700 3350 50  0001 C CNN
	1    2700 3350
	-1   0    0    -1  
$EndComp
Text GLabel 2700 3150 1    50   Input ~ 0
VCC
Wire Wire Line
	3500 2900 3600 2900
Wire Wire Line
	3500 3000 3600 3000
Wire Wire Line
	3500 3100 3600 3100
Wire Wire Line
	3500 3200 3600 3200
Wire Wire Line
	3500 3300 3600 3300
Wire Wire Line
	4600 3400 4700 3400
Wire Wire Line
	4600 3300 4700 3300
Wire Wire Line
	4600 3600 4700 3600
Wire Wire Line
	4600 3500 4700 3500
Text GLabel 4300 2200 1    50   Output ~ 0
VCC
Wire Wire Line
	4000 2200 4000 2300
Wire Wire Line
	4300 2200 4300 2300
$Comp
L power:GND #PWR?
U 1 1 6099C603
P 4200 4300
AR Path="/5E7957F4/6099C603" Ref="#PWR?"  Part="1" 
AR Path="/6099C603" Ref="#PWR0101"  Part="1" 
AR Path="/5E8923A6/6099C603" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 4200 4050 50  0001 C CNN
F 1 "GND" H 4205 4127 50  0000 C CNN
F 2 "" H 4200 4300 50  0001 C CNN
F 3 "" H 4200 4300 50  0001 C CNN
	1    4200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3150 2700 3200
Wire Wire Line
	2700 3500 2700 3700
Wire Wire Line
	3600 4000 3500 4000
Wire Wire Line
	3600 3800 3500 3800
Wire Wire Line
	2700 3700 2600 3700
Connection ~ 2700 3700
NoConn ~ 3600 2800
NoConn ~ 3600 2700
NoConn ~ 4600 2800
NoConn ~ 4600 2700
NoConn ~ 3600 3500
NoConn ~ 3600 3600
NoConn ~ 4600 3900
NoConn ~ 4600 4000
NoConn ~ 3600 3900
NoConn ~ 4200 2300
Wire Wire Line
	4100 4300 4200 4300
Connection ~ 4200 4300
Text GLabel 2900 2450 2    50   Input ~ 0
VCC
$Comp
L power:GND #PWR?
U 1 1 6099C622
P 2900 2550
AR Path="/5E7957F4/6099C622" Ref="#PWR?"  Part="1" 
AR Path="/6099C622" Ref="#PWR0102"  Part="1" 
AR Path="/5E8923A6/6099C622" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 2900 2300 50  0001 C CNN
F 1 "GND" H 2905 2377 50  0000 C CNN
F 2 "" H 2900 2550 50  0001 C CNN
F 3 "" H 2900 2550 50  0001 C CNN
	1    2900 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 6099C628
P 2700 2450
AR Path="/5E7957F4/6099C628" Ref="J?"  Part="1" 
AR Path="/6099C628" Ref="J8"  Part="1" 
AR Path="/5E8923A6/6099C628" Ref="J?"  Part="1" 
F 0 "J8" H 2618 2667 50  0000 C CNN
F 1 "VCC" H 2618 2576 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2700 2450 50  0001 C CNN
F 3 "~" H 2700 2450 50  0001 C CNN
	1    2700 2450
	-1   0    0    -1  
$EndComp
NoConn ~ 4600 3100
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 6099C60E
P 4100 3300
AR Path="/5E7957F4/6099C60E" Ref="A?"  Part="1" 
AR Path="/6099C60E" Ref="A1"  Part="1" 
AR Path="/5E8923A6/6099C60E" Ref="A?"  Part="1" 
F 0 "A1" H 4000 2150 50  0000 C CNN
F 1 "Arduino_Nano_v3.x 5V" H 4100 2050 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 4100 3300 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 4100 3300 50  0001 C CNN
	1    4100 3300
	1    0    0    -1  
$EndComp
NoConn ~ 4600 3700
NoConn ~ 4600 3800
$Comp
L Device:R R?
U 1 1 609A6EE6
P 7550 2700
AR Path="/5E84260A/609A6EE6" Ref="R?"  Part="1" 
AR Path="/609A6EE6" Ref="R6"  Part="1" 
F 0 "R6" V 7343 2700 50  0000 C CNN
F 1 "1k" V 7434 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7480 2700 50  0001 C CNN
F 3 "~" H 7550 2700 50  0001 C CNN
	1    7550 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 609A6EEC
P 8200 2150
AR Path="/5E84260A/609A6EEC" Ref="R?"  Part="1" 
AR Path="/609A6EEC" Ref="R7"  Part="1" 
F 0 "R7" H 8130 2104 50  0000 R CNN
F 1 "1k" H 8130 2195 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8130 2150 50  0001 C CNN
F 3 "~" H 8200 2150 50  0001 C CNN
	1    8200 2150
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 609A6EF2
P 8100 2700
AR Path="/5E84260A/609A6EF2" Ref="Q?"  Part="1" 
AR Path="/609A6EF2" Ref="Q1"  Part="1" 
F 0 "Q1" H 8290 2746 50  0000 L CNN
F 1 "2N3904" H 8290 2655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 8300 2625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8100 2700 50  0001 L CNN
	1    8100 2700
	1    0    0    -1  
$EndComp
Text GLabel 8200 1800 1    50   Input ~ 0
VCC
$Comp
L power:GND #PWR?
U 1 1 609A6EF9
P 8200 3350
AR Path="/5E84260A/609A6EF9" Ref="#PWR?"  Part="1" 
AR Path="/609A6EF9" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 8200 3100 50  0001 C CNN
F 1 "GND" H 8205 3177 50  0000 C CNN
F 2 "" H 8200 3350 50  0001 C CNN
F 3 "" H 8200 3350 50  0001 C CNN
	1    8200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1800 8200 2000
Wire Wire Line
	8200 2300 8200 2400
Wire Wire Line
	7700 2700 7900 2700
Wire Wire Line
	7400 2700 7200 2700
Connection ~ 8200 2400
Wire Wire Line
	8200 2400 8200 2500
Wire Wire Line
	8200 2900 8200 3350
$Comp
L power:GND #PWR?
U 1 1 609A6F07
P 8650 2500
AR Path="/5E84260A/609A6F07" Ref="#PWR?"  Part="1" 
AR Path="/609A6F07" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 8650 2250 50  0001 C CNN
F 1 "GND" H 8655 2327 50  0000 C CNN
F 2 "" H 8650 2500 50  0001 C CNN
F 3 "" H 8650 2500 50  0001 C CNN
	1    8650 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 609A6F0D
P 8850 2400
AR Path="/5E84260A/609A6F0D" Ref="J?"  Part="1" 
AR Path="/609A6F0D" Ref="J5"  Part="1" 
F 0 "J5" H 8930 2392 50  0000 L CNN
F 1 "GATE OUT A" H 8930 2301 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 8850 2400 50  0001 C CNN
F 3 "~" H 8850 2400 50  0001 C CNN
	1    8850 2400
	1    0    0    -1  
$EndComp
Text Label 8650 2400 2    50   ~ 0
GATE_OUT
Wire Wire Line
	8200 2400 8650 2400
NoConn ~ 3600 3400
$Comp
L Analog_DAC:MCP4922 U?
U 1 1 609AFCEA
P 7400 4550
AR Path="/5E7D877F/609AFCEA" Ref="U?"  Part="1" 
AR Path="/609AFCEA" Ref="U1"  Part="1" 
F 0 "U1" H 7400 5131 50  0000 C CNN
F 1 "MCP4922" H 7400 5040 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8200 4250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22250A.pdf" H 8200 4250 50  0001 C CNN
	1    7400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4850 6900 4850
Wire Wire Line
	6750 4750 6900 4750
Wire Wire Line
	6750 4550 6900 4550
Wire Wire Line
	6900 4650 6350 4650
$Comp
L power:GND #PWR?
U 1 1 609AFCF4
P 7400 5050
AR Path="/5E7D877F/609AFCF4" Ref="#PWR?"  Part="1" 
AR Path="/609AFCF4" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 7400 4800 50  0001 C CNN
F 1 "GND" H 7405 4877 50  0000 C CNN
F 2 "" H 7400 5050 50  0001 C CNN
F 3 "" H 7400 5050 50  0001 C CNN
	1    7400 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 609AFCFA
P 5600 4950
AR Path="/5E7D877F/609AFCFA" Ref="C?"  Part="1" 
AR Path="/609AFCFA" Ref="C1"  Part="1" 
F 0 "C1" H 5718 4996 50  0000 L CNN
F 1 "10uF" H 5718 4905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5638 4800 50  0001 C CNN
F 3 "~" H 5600 4950 50  0001 C CNN
	1    5600 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 609AFD00
P 6000 4950
AR Path="/5E7D877F/609AFD00" Ref="C?"  Part="1" 
AR Path="/609AFD00" Ref="C2"  Part="1" 
F 0 "C2" H 6115 4996 50  0000 L CNN
F 1 "0.1uF" H 6115 4905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6038 4800 50  0001 C CNN
F 3 "~" H 6000 4950 50  0001 C CNN
	1    6000 4950
	1    0    0    -1  
$EndComp
Connection ~ 5600 4800
$Comp
L power:GND #PWR?
U 1 1 609AFD07
P 5600 5100
AR Path="/5E7D877F/609AFD07" Ref="#PWR?"  Part="1" 
AR Path="/609AFD07" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 5600 4850 50  0001 C CNN
F 1 "GND" H 5605 4927 50  0000 C CNN
F 2 "" H 5600 5100 50  0001 C CNN
F 3 "" H 5600 5100 50  0001 C CNN
	1    5600 5100
	1    0    0    -1  
$EndComp
Connection ~ 5600 5100
Wire Wire Line
	5600 3850 5600 4000
Wire Wire Line
	7400 4150 6500 4150
Wire Wire Line
	6500 4150 6500 4000
Connection ~ 5600 4000
Wire Wire Line
	5600 4000 5600 4350
Wire Wire Line
	5600 4350 5700 4350
Connection ~ 5600 4350
Wire Wire Line
	5600 4350 5600 4800
$Comp
L Device:R R1
U 1 1 609AFD16
P 5850 4350
AR Path="/609AFD16" Ref="R1"  Part="1" 
AR Path="/5E7977E1/609AFD16" Ref="R?"  Part="1" 
AR Path="/5E7957F4/609AFD16" Ref="R?"  Part="1" 
AR Path="/5E7D877F/609AFD16" Ref="R?"  Part="1" 
F 0 "R1" V 6100 4300 59  0000 L BNN
F 1 "10k" V 6000 4250 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5850 4350 50  0001 C CNN
F 3 "" H 5850 4350 50  0001 C CNN
	1    5850 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 4000 6500 4000
Wire Wire Line
	6000 4350 6900 4350
Wire Wire Line
	6350 4650 6350 5100
Wire Wire Line
	6350 5100 6000 5100
Wire Wire Line
	8000 4150 8000 4350
Wire Wire Line
	8000 4350 7900 4350
Wire Wire Line
	8000 4350 8000 4850
Wire Wire Line
	8000 4850 7900 4850
Connection ~ 8000 4350
Text GLabel 5600 3850 1    50   Input ~ 0
VCC
Connection ~ 6000 5100
Wire Wire Line
	5600 4800 6000 4800
Wire Wire Line
	5600 5100 6000 5100
$Comp
L Device:R R2
U 1 1 609AFD2D
P 8600 4450
AR Path="/609AFD2D" Ref="R2"  Part="1" 
AR Path="/5E7977E1/609AFD2D" Ref="R?"  Part="1" 
AR Path="/5E7957F4/609AFD2D" Ref="R?"  Part="1" 
AR Path="/5E7E1DC7/609AFD2D" Ref="R?"  Part="1" 
AR Path="/5E7D877F/609AFD2D" Ref="R?"  Part="1" 
F 0 "R2" V 8850 4400 59  0000 L BNN
F 1 "1k" V 8750 4350 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8600 4450 50  0001 C CNN
F 3 "" H 8600 4450 50  0001 C CNN
	1    8600 4450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 609AFD33
P 8600 4750
AR Path="/609AFD33" Ref="R3"  Part="1" 
AR Path="/5E7977E1/609AFD33" Ref="R?"  Part="1" 
AR Path="/5E7957F4/609AFD33" Ref="R?"  Part="1" 
AR Path="/5E7E1DC7/609AFD33" Ref="R?"  Part="1" 
AR Path="/5E7D877F/609AFD33" Ref="R?"  Part="1" 
F 0 "R3" V 8850 4700 59  0000 L BNN
F 1 "1k" V 8750 4650 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8600 4750 50  0001 C CNN
F 3 "" H 8600 4750 50  0001 C CNN
	1    8600 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 4900 9100 4900
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 609AFD3B
P 9300 4900
AR Path="/5E795811/609AFD3B" Ref="J?"  Part="1" 
AR Path="/5E7E1DC7/609AFD3B" Ref="J?"  Part="1" 
AR Path="/5E7D877F/609AFD3B" Ref="J?"  Part="1" 
AR Path="/609AFD3B" Ref="J2"  Part="1" 
F 0 "J2" H 9380 4892 50  0000 L CNN
F 1 "CV OUT B" H 9380 4801 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 9300 4900 50  0001 C CNN
F 3 "~" H 9300 4900 50  0001 C CNN
	1    9300 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 609AFD41
P 9300 4450
AR Path="/5E795811/609AFD41" Ref="J?"  Part="1" 
AR Path="/5E7E1DC7/609AFD41" Ref="J?"  Part="1" 
AR Path="/5E7D877F/609AFD41" Ref="J?"  Part="1" 
AR Path="/609AFD41" Ref="J1"  Part="1" 
F 0 "J1" H 9380 4442 50  0000 L CNN
F 1 "CV OUT A" H 9380 4351 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 9300 4450 50  0001 C CNN
F 3 "~" H 9300 4450 50  0001 C CNN
	1    9300 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 609AFD47
P 9100 4550
AR Path="/5E795811/609AFD47" Ref="#PWR?"  Part="1" 
AR Path="/5E7E1DC7/609AFD47" Ref="#PWR?"  Part="1" 
AR Path="/5E7D877F/609AFD47" Ref="#PWR?"  Part="1" 
AR Path="/609AFD47" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 9100 4300 50  0001 C CNN
F 1 "GND" H 9105 4377 50  0000 C CNN
F 2 "" H 9100 4550 50  0001 C CNN
F 3 "" H 9100 4550 50  0001 C CNN
	1    9100 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 609AFD4D
P 9100 5000
AR Path="/5E795811/609AFD4D" Ref="#PWR?"  Part="1" 
AR Path="/5E7E1DC7/609AFD4D" Ref="#PWR?"  Part="1" 
AR Path="/5E7D877F/609AFD4D" Ref="#PWR?"  Part="1" 
AR Path="/609AFD4D" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 9100 4750 50  0001 C CNN
F 1 "GND" H 9105 4827 50  0000 C CNN
F 2 "" H 9100 5000 50  0001 C CNN
F 3 "" H 9100 5000 50  0001 C CNN
	1    9100 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4750 9000 4750
Text Label 9100 4450 2    50   ~ 0
CV_OUT_A
Text Label 9100 4900 2    50   ~ 0
CV_OUT_B
Text Notes 8225 4150 0    50   ~ 0
Omit 1k resistors if 1V/oct output critical
Wire Wire Line
	7900 4450 8450 4450
Wire Wire Line
	7900 4750 8450 4750
Wire Wire Line
	8750 4450 9100 4450
Wire Wire Line
	9000 4750 9000 4900
Text GLabel 8000 4150 1    50   Input ~ 0
VCC
Text GLabel 6750 4550 0    50   BiDi ~ 0
SCK
Text GLabel 6750 4750 0    50   BiDi ~ 0
MOSI
Text GLabel 6750 4850 0    50   BiDi ~ 0
DAC_CS
Text GLabel 3500 3800 0    50   BiDi ~ 0
MOSI
Text GLabel 3500 4000 0    50   BiDi ~ 0
SCK
Text GLabel 3500 2900 0    50   Input ~ 0
D_IN_A
Text GLabel 3500 3000 0    50   Input ~ 0
D_IN_B
Text GLabel 3500 3100 0    50   Input ~ 0
D_IN_C
Text GLabel 3500 3200 0    50   Input ~ 0
D_IN_D
Text GLabel 3500 3300 0    50   Output ~ 0
D_OUT_A
Text GLabel 1700 2375 2    50   Output ~ 0
D_IN_A
Text GLabel 1700 2475 2    50   Output ~ 0
D_IN_B
Text GLabel 1700 2575 2    50   Output ~ 0
D_IN_C
Text GLabel 1700 2675 2    50   Output ~ 0
D_IN_D
Text GLabel 1725 3550 2    50   Output ~ 0
A_IN_A
Text GLabel 1725 3650 2    50   Output ~ 0
A_IN_B
Text GLabel 1725 3750 2    50   Output ~ 0
A_IN_C
Text GLabel 1725 3850 2    50   Output ~ 0
A_IN_D
Text GLabel 2600 3700 0    50   BiDi ~ 0
DAC_CS
Text GLabel 4700 3300 2    50   Input ~ 0
A_IN_A
Text GLabel 4700 3400 2    50   Input ~ 0
A_IN_B
Text GLabel 4700 3500 2    50   Input ~ 0
A_IN_C
Text GLabel 4700 3600 2    50   Input ~ 0
A_IN_D
Text GLabel 7200 2700 0    50   Input ~ 0
D_OUT_A
$Comp
L Device:CP C?
U 1 1 609CDA66
P 4050 5800
AR Path="/5E7957F4/609CDA66" Ref="C?"  Part="1" 
AR Path="/609CDA66" Ref="C4"  Part="1" 
AR Path="/5E8A3CCB/609CDA66" Ref="C?"  Part="1" 
F 0 "C4" H 4168 5846 50  0000 L CNN
F 1 "10uF" H 4168 5755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4088 5650 50  0001 C CNN
F 3 "~" H 4050 5800 50  0001 C CNN
	1    4050 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5950 4050 5950
Text Label 3075 5650 0    50   ~ 0
+12V
$Comp
L power:GND #PWR?
U 1 1 609CDA6F
P 3500 5950
AR Path="/5E7957F4/609CDA6F" Ref="#PWR?"  Part="1" 
AR Path="/609CDA6F" Ref="#PWR0109"  Part="1" 
AR Path="/5E8A3CCB/609CDA6F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0109" H 3500 5700 50  0001 C CNN
F 1 "GND" V 3505 5822 50  0000 R CNN
F 2 "" H 3500 5950 50  0001 C CNN
F 3 "" H 3500 5950 50  0001 C CNN
	1    3500 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3075 5650 3100 5650
$Comp
L power:PWR_FLAG #FLG?
U 1 1 609CDA76
P 3375 5650
AR Path="/5E7957F4/609CDA76" Ref="#FLG?"  Part="1" 
AR Path="/609CDA76" Ref="#FLG0101"  Part="1" 
AR Path="/5E8A3CCB/609CDA76" Ref="#FLG?"  Part="1" 
F 0 "#FLG0101" H 3375 5725 50  0001 C CNN
F 1 "PWR_FLAG" H 3375 5823 50  0000 C CNN
F 2 "" H 3375 5650 50  0001 C CNN
F 3 "~" H 3375 5650 50  0001 C CNN
	1    3375 5650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 609CDA7C
P 3750 5950
AR Path="/5E7957F4/609CDA7C" Ref="#FLG?"  Part="1" 
AR Path="/609CDA7C" Ref="#FLG0102"  Part="1" 
AR Path="/5E8A3CCB/609CDA7C" Ref="#FLG?"  Part="1" 
F 0 "#FLG0102" H 3750 6025 50  0001 C CNN
F 1 "PWR_FLAG" H 3750 6123 50  0000 C CNN
F 2 "" H 3750 5950 50  0001 C CNN
F 3 "~" H 3750 5950 50  0001 C CNN
	1    3750 5950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 609CDA82
P 2900 5650
AR Path="/5E7957F4/609CDA82" Ref="J?"  Part="1" 
AR Path="/609CDA82" Ref="J9"  Part="1" 
AR Path="/5E8A3CCB/609CDA82" Ref="J?"  Part="1" 
F 0 "J9" H 2900 5950 50  0000 C CNN
F 1 "Vin" H 2900 5850 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2900 5650 50  0001 C CNN
F 3 "~" H 2900 5650 50  0001 C CNN
	1    2900 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3100 5750 3500 5750
Connection ~ 3375 5650
Connection ~ 3100 5650
Wire Wire Line
	3100 5650 3375 5650
Wire Wire Line
	3375 5650 4050 5650
Wire Wire Line
	3750 5950 3500 5950
Connection ~ 3750 5950
Wire Wire Line
	3500 5750 3500 5950
Connection ~ 3500 5950
$Comp
L power:+12V #PWR0110
U 1 1 609CF2B2
P 4050 5650
F 0 "#PWR0110" H 4050 5500 50  0001 C CNN
F 1 "+12V" H 4065 5823 50  0000 C CNN
F 2 "" H 4050 5650 50  0001 C CNN
F 3 "" H 4050 5650 50  0001 C CNN
	1    4050 5650
	1    0    0    -1  
$EndComp
Connection ~ 4050 5650
$Comp
L power:+12V #PWR0111
U 1 1 609CF4E2
P 4000 2200
F 0 "#PWR0111" H 4000 2050 50  0001 C CNN
F 1 "+12V" H 4015 2373 50  0000 C CNN
F 2 "" H 4000 2200 50  0001 C CNN
F 3 "" H 4000 2200 50  0001 C CNN
	1    4000 2200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
