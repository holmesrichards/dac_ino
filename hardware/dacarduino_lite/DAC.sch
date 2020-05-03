EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L Analog_DAC:MCP4922 U1
U 1 1 5E7DAE1D
P 4975 3800
F 0 "U1" H 4975 4381 50  0000 C CNN
F 1 "MCP4922" H 4975 4290 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5775 3500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22250A.pdf" H 5775 3500 50  0001 C CNN
	1    4975 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 4100 4475 4100
Wire Wire Line
	4325 4000 4475 4000
Wire Wire Line
	4325 3800 4475 3800
Wire Wire Line
	4475 3900 3925 3900
$Comp
L power:GND #PWR02
U 1 1 5E7DAE2A
P 4975 4300
F 0 "#PWR02" H 4975 4050 50  0001 C CNN
F 1 "GND" H 4980 4127 50  0000 C CNN
F 2 "" H 4975 4300 50  0001 C CNN
F 3 "" H 4975 4300 50  0001 C CNN
	1    4975 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5E7DAE30
P 3175 4200
F 0 "C1" H 3293 4246 50  0000 L CNN
F 1 "10uF" H 3293 4155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 3213 4050 50  0001 C CNN
F 3 "~" H 3175 4200 50  0001 C CNN
	1    3175 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E7DAE36
P 3575 4200
F 0 "C2" H 3690 4246 50  0000 L CNN
F 1 "0.1uF" H 3690 4155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3613 4050 50  0001 C CNN
F 3 "~" H 3575 4200 50  0001 C CNN
	1    3575 4200
	1    0    0    -1  
$EndComp
Connection ~ 3175 4050
$Comp
L power:GND #PWR01
U 1 1 5E7DAE3D
P 3175 4350
F 0 "#PWR01" H 3175 4100 50  0001 C CNN
F 1 "GND" H 3180 4177 50  0000 C CNN
F 2 "" H 3175 4350 50  0001 C CNN
F 3 "" H 3175 4350 50  0001 C CNN
	1    3175 4350
	1    0    0    -1  
$EndComp
Connection ~ 3175 4350
Wire Wire Line
	3175 3100 3175 3250
Wire Wire Line
	4975 3400 4075 3400
Wire Wire Line
	4075 3400 4075 3250
Connection ~ 3175 3250
Wire Wire Line
	3175 3250 3175 3600
Wire Wire Line
	3175 3600 3275 3600
Connection ~ 3175 3600
Wire Wire Line
	3175 3600 3175 4050
$Comp
L Device:R R?
U 1 1 5E7DAE4C
P 3425 3600
AR Path="/5E7DAE4C" Ref="R?"  Part="1" 
AR Path="/5E7977E1/5E7DAE4C" Ref="R?"  Part="1" 
AR Path="/5E7957F4/5E7DAE4C" Ref="R?"  Part="1" 
AR Path="/5E7D877F/5E7DAE4C" Ref="R1"  Part="1" 
F 0 "R1" V 3675 3550 59  0000 L BNN
F 1 "10K" V 3575 3500 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3425 3600 50  0001 C CNN
F 3 "" H 3425 3600 50  0001 C CNN
	1    3425 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3175 3250 4075 3250
Wire Wire Line
	3575 3600 4475 3600
Wire Wire Line
	3925 3900 3925 4350
Wire Wire Line
	3925 4350 3575 4350
Wire Wire Line
	5575 3400 5575 3600
Wire Wire Line
	5575 3600 5475 3600
Wire Wire Line
	5575 3600 5575 4100
Wire Wire Line
	5575 4100 5475 4100
Connection ~ 5575 3600
Text GLabel 3175 3100 1    50   Input ~ 0
VCC
Connection ~ 3575 4350
Wire Wire Line
	3175 4050 3575 4050
Wire Wire Line
	3175 4350 3575 4350
Text HLabel 4325 3800 0    50   BiDi ~ 0
SCK
Text HLabel 4325 4000 0    50   BiDi ~ 0
MOSI
Text HLabel 4325 4100 0    50   BiDi ~ 0
DAC_CS
Text Notes 7150 7050 0    100  ~ 0
cc-ba-sa\nVincezno Pacella shadux@shaduzlabs.com\nRich Holmes rs.holmes@gmail.com
Text HLabel 5575 3400 1    50   Input ~ 0
VREFDAC
$Comp
L Device:R R?
U 1 1 5EA8949A
P 6175 3700
AR Path="/5EA8949A" Ref="R?"  Part="1" 
AR Path="/5E7977E1/5EA8949A" Ref="R?"  Part="1" 
AR Path="/5E7957F4/5EA8949A" Ref="R?"  Part="1" 
AR Path="/5E7E1DC7/5EA8949A" Ref="R?"  Part="1" 
AR Path="/5E7D877F/5EA8949A" Ref="R2"  Part="1" 
F 0 "R2" V 6425 3650 59  0000 L BNN
F 1 "1K" V 6325 3600 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6175 3700 50  0001 C CNN
F 3 "" H 6175 3700 50  0001 C CNN
	1    6175 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA894AC
P 6175 4000
AR Path="/5EA894AC" Ref="R?"  Part="1" 
AR Path="/5E7977E1/5EA894AC" Ref="R?"  Part="1" 
AR Path="/5E7957F4/5EA894AC" Ref="R?"  Part="1" 
AR Path="/5E7E1DC7/5EA894AC" Ref="R?"  Part="1" 
AR Path="/5E7D877F/5EA894AC" Ref="R3"  Part="1" 
F 0 "R3" V 6425 3950 59  0000 L BNN
F 1 "1K" V 6325 3900 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6175 4000 50  0001 C CNN
F 3 "" H 6175 4000 50  0001 C CNN
	1    6175 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 3650 8500 3650
Wire Wire Line
	8400 4100 8500 4100
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5EA894B4
P 8700 4100
AR Path="/5E795811/5EA894B4" Ref="J?"  Part="1" 
AR Path="/5E7E1DC7/5EA894B4" Ref="J?"  Part="1" 
AR Path="/5E7D877F/5EA894B4" Ref="J2"  Part="1" 
F 0 "J2" H 8780 4092 50  0000 L CNN
F 1 "CV OUT B" H 8780 4001 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 8700 4100 50  0001 C CNN
F 3 "~" H 8700 4100 50  0001 C CNN
	1    8700 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5EA894BA
P 8700 3650
AR Path="/5E795811/5EA894BA" Ref="J?"  Part="1" 
AR Path="/5E7E1DC7/5EA894BA" Ref="J?"  Part="1" 
AR Path="/5E7D877F/5EA894BA" Ref="J1"  Part="1" 
F 0 "J1" H 8780 3642 50  0000 L CNN
F 1 "CV OUT A" H 8780 3551 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 8700 3650 50  0001 C CNN
F 3 "~" H 8700 3650 50  0001 C CNN
	1    8700 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA894C0
P 8500 3750
AR Path="/5E795811/5EA894C0" Ref="#PWR?"  Part="1" 
AR Path="/5E7E1DC7/5EA894C0" Ref="#PWR?"  Part="1" 
AR Path="/5E7D877F/5EA894C0" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 8500 3500 50  0001 C CNN
F 1 "GND" H 8505 3577 50  0000 C CNN
F 2 "" H 8500 3750 50  0001 C CNN
F 3 "" H 8500 3750 50  0001 C CNN
	1    8500 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA894C6
P 8500 4200
AR Path="/5E795811/5EA894C6" Ref="#PWR?"  Part="1" 
AR Path="/5E7E1DC7/5EA894C6" Ref="#PWR?"  Part="1" 
AR Path="/5E7D877F/5EA894C6" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 8500 3950 50  0001 C CNN
F 1 "GND" H 8505 4027 50  0000 C CNN
F 2 "" H 8500 4200 50  0001 C CNN
F 3 "" H 8500 4200 50  0001 C CNN
	1    8500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6325 3700 6575 3700
Wire Wire Line
	6325 4000 6575 4000
Text Label 6425 3700 0    50   ~ 0
CV_OUT_A
Text Label 8500 3650 2    50   ~ 0
CV_OUT_A
Text Label 6425 4000 0    50   ~ 0
CV_OUT_B
Text Label 8500 4100 2    50   ~ 0
CV_OUT_B
Text Notes 5675 4350 0    50   ~ 0
Omit 1k resistors if 1V/oct output critical
Wire Wire Line
	5475 3700 6025 3700
Wire Wire Line
	5475 4000 6025 4000
$EndSCHEMATC
