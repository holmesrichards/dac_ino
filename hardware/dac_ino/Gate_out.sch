EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 16
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
L Device:R R10
U 1 1 5E84CAC8
P 3300 4100
F 0 "R10" V 3093 4100 50  0000 C CNN
F 1 "1k" V 3184 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3230 4100 50  0001 C CNN
F 3 "~" H 3300 4100 50  0001 C CNN
	1    3300 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5E84CACE
P 3950 3550
F 0 "R11" H 3880 3504 50  0000 R CNN
F 1 "1k" H 3880 3595 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3880 3550 50  0001 C CNN
F 3 "~" H 3950 3550 50  0001 C CNN
	1    3950 3550
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5E84CAD4
P 3850 4100
F 0 "Q1" H 4040 4146 50  0000 L CNN
F 1 "2N3904" H 4040 4055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 4050 4025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3850 4100 50  0001 L CNN
	1    3850 4100
	1    0    0    -1  
$EndComp
Text GLabel 3950 3200 1    50   Input ~ 0
VCC
$Comp
L power:GND #PWR08
U 1 1 5E84CADB
P 3950 4750
F 0 "#PWR08" H 3950 4500 50  0001 C CNN
F 1 "GND" H 3955 4577 50  0000 C CNN
F 2 "" H 3950 4750 50  0001 C CNN
F 3 "" H 3950 4750 50  0001 C CNN
	1    3950 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3200 3950 3400
Wire Wire Line
	3950 3700 3950 3800
Wire Wire Line
	3450 4100 3650 4100
Wire Wire Line
	3150 4100 2950 4100
Wire Wire Line
	3950 3800 4300 3800
Connection ~ 3950 3800
Wire Wire Line
	3950 3800 3950 3900
Wire Wire Line
	3950 4300 3950 4750
$Comp
L Device:R R12
U 1 1 5E84CAEB
P 5300 4100
F 0 "R12" V 5093 4100 50  0000 C CNN
F 1 "1k" V 5184 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5230 4100 50  0001 C CNN
F 3 "~" H 5300 4100 50  0001 C CNN
	1    5300 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5E84CAF1
P 5950 3550
F 0 "R13" H 5880 3504 50  0000 R CNN
F 1 "1k" H 5880 3595 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5880 3550 50  0001 C CNN
F 3 "~" H 5950 3550 50  0001 C CNN
	1    5950 3550
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5E84CAF7
P 5850 4100
F 0 "Q2" H 6040 4146 50  0000 L CNN
F 1 "2N3904" H 6040 4055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 6050 4025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5850 4100 50  0001 L CNN
	1    5850 4100
	1    0    0    -1  
$EndComp
Text GLabel 5950 3200 1    50   Input ~ 0
VCC
$Comp
L power:GND #PWR09
U 1 1 5E84CAFE
P 5950 4750
F 0 "#PWR09" H 5950 4500 50  0001 C CNN
F 1 "GND" H 5955 4577 50  0000 C CNN
F 2 "" H 5950 4750 50  0001 C CNN
F 3 "" H 5950 4750 50  0001 C CNN
	1    5950 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3200 5950 3400
Wire Wire Line
	5950 3700 5950 3800
Wire Wire Line
	5450 4100 5650 4100
Wire Wire Line
	5150 4100 4950 4100
Wire Wire Line
	5950 3800 6300 3800
Connection ~ 5950 3800
Wire Wire Line
	5950 3800 5950 3900
Wire Wire Line
	5950 4300 5950 4750
$Comp
L power:GND #PWR011
U 1 1 5E84CB0E
P 7750 4450
F 0 "#PWR011" H 7750 4200 50  0001 C CNN
F 1 "GND" H 7755 4277 50  0000 C CNN
F 2 "" H 7750 4450 50  0001 C CNN
F 3 "" H 7750 4450 50  0001 C CNN
	1    7750 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E84CB14
P 7750 3950
F 0 "#PWR010" H 7750 3700 50  0001 C CNN
F 1 "GND" H 7750 3800 50  0000 C CNN
F 2 "" H 7750 3950 50  0001 C CNN
F 3 "" H 7750 3950 50  0001 C CNN
	1    7750 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5E84CB1A
P 7950 3850
F 0 "J5" H 8030 3842 50  0000 L CNN
F 1 "Molex 2 pin" H 8030 3751 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 7950 3850 50  0001 C CNN
F 3 "~" H 7950 3850 50  0001 C CNN
	1    7950 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5E84CB20
P 7950 4350
F 0 "J6" H 8030 4342 50  0000 L CNN
F 1 "Molex 2 pin" H 8030 4251 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 7950 4350 50  0001 C CNN
F 3 "~" H 7950 4350 50  0001 C CNN
	1    7950 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4350 7750 4350
Wire Wire Line
	7650 3850 7750 3850
Text HLabel 2950 4100 0    50   Input ~ 0
D6
Text HLabel 4950 4100 0    50   Input ~ 0
D7
Text Label 4200 3800 0    50   ~ 0
GATE_OUT_A
Text Label 7700 3850 2    50   ~ 0
GATE_OUT_A
Text Label 7700 4350 2    50   ~ 0
GATE_OUT_B
Text Label 6200 3800 0    50   ~ 0
GATE_OUT_B
Text Notes 7100 7050 0    100  ~ 0
cc-ba-sa\nVincezno Pacella shadux@shaduzlabs.com\nRich Holmes rs.holmes@gmail.com
$EndSCHEMATC
