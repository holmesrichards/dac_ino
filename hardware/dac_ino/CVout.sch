EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 16
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
	5800 3350 5800 2950
Wire Wire Line
	5900 3350 5800 3350
Wire Wire Line
	6100 2950 5800 2950
Connection ~ 5800 3350
Connection ~ 5800 2950
Wire Wire Line
	6500 3450 6600 3450
Wire Wire Line
	6400 2950 6600 2950
Wire Wire Line
	6600 2950 6600 3450
Connection ~ 6600 3450
$Comp
L Device:R R?
U 1 1 5E7E4E98
P 6200 2600
AR Path="/5E7E4E98" Ref="R?"  Part="1" 
AR Path="/5E7977E1/5E7E4E98" Ref="R?"  Part="1" 
AR Path="/5E7957F4/5E7E4E98" Ref="R?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4E98" Ref="R6"  Part="1" 
F 0 "R6" V 6450 2550 59  0000 L BNN
F 1 "100k" V 6350 2500 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6200 2600 50  0001 C CNN
F 3 "" H 6200 2600 50  0001 C CNN
	1    6200 2600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5E7E4E9E
P 4900 2750
AR Path="/5E7957F4/5E7E4E9E" Ref="J?"  Part="1" 
AR Path="/5E7E4E9E" Ref="J?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4E9E" Ref="J1"  Part="1" 
F 0 "J1" V 4962 2894 50  0000 L CNN
F 1 "Conn_01x03_Male" V 5053 2894 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4900 2750 50  0001 C CNN
F 3 "~" H 4900 2750 50  0001 C CNN
	1    4900 2750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7E4EA4
P 5000 2950
AR Path="/5E7957F4/5E7E4EA4" Ref="#PWR?"  Part="1" 
AR Path="/5E7E4EA4" Ref="#PWR?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4EA4" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 5000 2700 50  0001 C CNN
F 1 "GND" H 5005 2777 50  0000 C CNN
F 2 "" H 5000 2950 50  0001 C CNN
F 3 "" H 5000 2950 50  0001 C CNN
	1    5000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2950 4900 3350
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5E7E4EAB
P 4900 4150
AR Path="/5E7957F4/5E7E4EAB" Ref="J?"  Part="1" 
AR Path="/5E7E4EAB" Ref="J?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4EAB" Ref="J2"  Part="1" 
F 0 "J2" V 4962 4294 50  0000 L CNN
F 1 "Conn_01x03_Male" V 5053 4294 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4900 4150 50  0001 C CNN
F 3 "~" H 4900 4150 50  0001 C CNN
	1    4900 4150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7E4EB1
P 5000 4350
AR Path="/5E7957F4/5E7E4EB1" Ref="#PWR?"  Part="1" 
AR Path="/5E7E4EB1" Ref="#PWR?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4EB1" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 5000 4100 50  0001 C CNN
F 1 "GND" H 5005 4177 50  0000 C CNN
F 2 "" H 5000 4350 50  0001 C CNN
F 3 "" H 5000 4350 50  0001 C CNN
	1    5000 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4350 4900 4750
Wire Wire Line
	5800 2600 6050 2600
Wire Wire Line
	6350 2600 7200 2600
$Comp
L Device:R R?
U 1 1 5E7E4EBA
P 5200 3350
AR Path="/5E7E4EBA" Ref="R?"  Part="1" 
AR Path="/5E7977E1/5E7E4EBA" Ref="R?"  Part="1" 
AR Path="/5E7957F4/5E7E4EBA" Ref="R?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4EBA" Ref="R2"  Part="1" 
F 0 "R2" V 5450 3300 59  0000 L BNN
F 1 "91k" V 5350 3250 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5200 3350 50  0001 C CNN
F 3 "" H 5200 3350 50  0001 C CNN
	1    5200 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E7E4EC0
P 5200 4750
AR Path="/5E7E4EC0" Ref="R?"  Part="1" 
AR Path="/5E7977E1/5E7E4EC0" Ref="R?"  Part="1" 
AR Path="/5E7957F4/5E7E4EC0" Ref="R?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4EC0" Ref="R3"  Part="1" 
F 0 "R3" V 5450 4700 59  0000 L BNN
F 1 "91k" V 5350 4650 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5200 4750 50  0001 C CNN
F 3 "" H 5200 4750 50  0001 C CNN
	1    5200 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 3350 5050 3350
Wire Wire Line
	5350 3350 5400 3350
Wire Wire Line
	4900 4750 5050 4750
$Comp
L Device:R R?
U 1 1 5E7E4EC9
P 6900 3450
AR Path="/5E7E4EC9" Ref="R?"  Part="1" 
AR Path="/5E7977E1/5E7E4EC9" Ref="R?"  Part="1" 
AR Path="/5E7957F4/5E7E4EC9" Ref="R?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4EC9" Ref="R8"  Part="1" 
F 0 "R8" V 7150 3400 59  0000 L BNN
F 1 "1k" V 7050 3350 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6900 3450 50  0001 C CNN
F 3 "" H 6900 3450 50  0001 C CNN
	1    6900 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 3450 6750 3450
Wire Wire Line
	7050 3450 7200 3450
Wire Wire Line
	7200 3450 7300 3450
Connection ~ 7200 3450
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5E7E4ED3
P 6200 3450
AR Path="/5E7957F4/5E7E4ED3" Ref="U?"  Part="1" 
AR Path="/5E7E4ED3" Ref="U?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4ED3" Ref="U2"  Part="1" 
F 0 "U2" H 6225 3125 50  0000 C CNN
F 1 "TL072" H 6250 3200 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 6200 3450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MCP6001-1R-1U-2-4-1-MHz-Low-Power-Op-Amp-DS20001733L.pdf" H 6200 3450 50  0001 C CNN
	1    6200 3450
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5E7E4ED9
P 6200 4850
AR Path="/5E7957F4/5E7E4ED9" Ref="U?"  Part="2" 
AR Path="/5E7E4ED9" Ref="U?"  Part="2" 
AR Path="/5E7E1DC7/5E7E4ED9" Ref="U2"  Part="2" 
F 0 "U2" H 6225 4575 50  0000 C CNN
F 1 "TL072" H 6225 4650 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 6200 4850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MCP6001-1R-1U-2-4-1-MHz-Low-Power-Op-Amp-DS20001733L.pdf" H 6200 4850 50  0001 C CNN
	2    6200 4850
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5E7E4EDF
P 6250 2950
AR Path="/5E7957F4/5E7E4EDF" Ref="C?"  Part="1" 
AR Path="/5E7E4EDF" Ref="C?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4EDF" Ref="C5"  Part="1" 
F 0 "C5" V 5998 2950 50  0000 C CNN
F 1 "47pF" V 6089 2950 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6288 2800 50  0001 C CNN
F 3 "~" H 6250 2950 50  0001 C CNN
	1    6250 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2600 5800 2950
Wire Wire Line
	7200 2600 7200 3450
Wire Wire Line
	7050 4850 7200 4850
Wire Wire Line
	7300 4850 7200 4850
Connection ~ 7200 4850
Wire Wire Line
	6600 4850 6750 4850
Wire Wire Line
	6500 4850 6600 4850
Connection ~ 6600 4850
Wire Wire Line
	5350 4750 5400 4750
Wire Wire Line
	5900 4750 5800 4750
Connection ~ 5800 4750
Wire Wire Line
	6100 4350 5800 4350
Wire Wire Line
	6400 4350 6600 4350
$Comp
L Device:R R?
U 1 1 5E7E4EF2
P 6200 4000
AR Path="/5E7E4EF2" Ref="R?"  Part="1" 
AR Path="/5E7977E1/5E7E4EF2" Ref="R?"  Part="1" 
AR Path="/5E7957F4/5E7E4EF2" Ref="R?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4EF2" Ref="R7"  Part="1" 
F 0 "R7" V 6450 3950 59  0000 L BNN
F 1 "100k" V 6350 3900 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6200 4000 50  0001 C CNN
F 3 "" H 6200 4000 50  0001 C CNN
	1    6200 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 4000 6050 4000
Wire Wire Line
	6350 4000 7200 4000
$Comp
L Device:C C?
U 1 1 5E7E4EFA
P 6250 4350
AR Path="/5E7957F4/5E7E4EFA" Ref="C?"  Part="1" 
AR Path="/5E7E4EFA" Ref="C?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4EFA" Ref="C6"  Part="1" 
F 0 "C6" V 5998 4350 50  0000 C CNN
F 1 "47pF" V 6089 4350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6288 4200 50  0001 C CNN
F 3 "~" H 6250 4350 50  0001 C CNN
	1    6250 4350
	0    1    1    0   
$EndComp
Connection ~ 5800 4350
Wire Wire Line
	5800 4350 5800 4750
Wire Wire Line
	5800 4000 5800 4350
Wire Wire Line
	7200 4000 7200 4850
Wire Wire Line
	6600 4350 6600 4850
Text GLabel 4800 4350 3    50   Input ~ 0
VCC
$Comp
L Device:R R?
U 1 1 5E7E4F06
P 6900 4850
AR Path="/5E7E4F06" Ref="R?"  Part="1" 
AR Path="/5E7977E1/5E7E4F06" Ref="R?"  Part="1" 
AR Path="/5E7957F4/5E7E4F06" Ref="R?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4F06" Ref="R9"  Part="1" 
F 0 "R9" V 7150 4800 59  0000 L BNN
F 1 "1k" V 7050 4750 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6900 4850 50  0001 C CNN
F 3 "" H 6900 4850 50  0001 C CNN
	1    6900 4850
	0    -1   -1   0   
$EndComp
Text GLabel 4800 2950 3    50   Input ~ 0
VCC
Wire Wire Line
	5900 3550 4400 3550
Wire Wire Line
	4400 4100 4400 3550
Wire Wire Line
	3500 4100 4400 4100
Wire Wire Line
	3500 4400 4400 4400
Wire Wire Line
	4400 4950 5900 4950
Wire Wire Line
	4400 4400 4400 4950
Text HLabel 3500 4100 0    50   Input ~ 0
DAC_A
Text HLabel 3500 4400 0    50   Input ~ 0
DAC_B
Wire Wire Line
	8750 3700 8850 3700
Wire Wire Line
	8750 4150 8850 4150
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5E7F27A0
P 9050 4150
AR Path="/5E795811/5E7F27A0" Ref="J?"  Part="1" 
AR Path="/5E7E1DC7/5E7F27A0" Ref="J4"  Part="1" 
F 0 "J4" H 9130 4142 50  0000 L CNN
F 1 "Molex 2 pin CV OUT" H 9130 4051 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 9050 4150 50  0001 C CNN
F 3 "~" H 9050 4150 50  0001 C CNN
	1    9050 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5E7F27A6
P 9050 3700
AR Path="/5E795811/5E7F27A6" Ref="J?"  Part="1" 
AR Path="/5E7E1DC7/5E7F27A6" Ref="J3"  Part="1" 
F 0 "J3" H 9130 3692 50  0000 L CNN
F 1 "Molex 2 pin CV OUT" H 9130 3601 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 9050 3700 50  0001 C CNN
F 3 "~" H 9050 3700 50  0001 C CNN
	1    9050 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7F27AC
P 8850 3800
AR Path="/5E795811/5E7F27AC" Ref="#PWR?"  Part="1" 
AR Path="/5E7E1DC7/5E7F27AC" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 8850 3550 50  0001 C CNN
F 1 "GND" H 8855 3627 50  0000 C CNN
F 2 "" H 8850 3800 50  0001 C CNN
F 3 "" H 8850 3800 50  0001 C CNN
	1    8850 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7F27B2
P 8850 4250
AR Path="/5E795811/5E7F27B2" Ref="#PWR?"  Part="1" 
AR Path="/5E7E1DC7/5E7F27B2" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 8850 4000 50  0001 C CNN
F 1 "GND" H 8855 4077 50  0000 C CNN
F 2 "" H 8850 4250 50  0001 C CNN
F 3 "" H 8850 4250 50  0001 C CNN
	1    8850 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8AE4CE
P 4750 5800
AR Path="/5E7957F4/5E8AE4CE" Ref="C?"  Part="1" 
AR Path="/5E8AE4CE" Ref="C?"  Part="1" 
AR Path="/5E7E1DC7/5E8AE4CE" Ref="C3"  Part="1" 
F 0 "C3" H 4865 5846 50  0000 L CNN
F 1 "0.1uF" H 4865 5755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4788 5650 50  0001 C CNN
F 3 "~" H 4750 5800 50  0001 C CNN
	1    4750 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E8AE4D4
P 4750 6100
AR Path="/5E7957F4/5E8AE4D4" Ref="C?"  Part="1" 
AR Path="/5E8AE4D4" Ref="C?"  Part="1" 
AR Path="/5E7E1DC7/5E8AE4D4" Ref="C4"  Part="1" 
F 0 "C4" H 4865 6146 50  0000 L CNN
F 1 "0.1uF" H 4865 6055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4788 5950 50  0001 C CNN
F 3 "~" H 4750 6100 50  0001 C CNN
	1    4750 6100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5E8AE4DB
P 5300 5950
AR Path="/5E7957F4/5E8AE4DB" Ref="U?"  Part="3" 
AR Path="/5E8AE4DB" Ref="U?"  Part="3" 
AR Path="/5E7E1DC7/5E8AE4DB" Ref="U2"  Part="3" 
F 0 "U2" H 5258 5996 50  0000 L CNN
F 1 "TL072" H 5258 5905 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 5300 5950 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MCP6001-1R-1U-2-4-1-MHz-Low-Power-Op-Amp-DS20001733L.pdf" H 5300 5950 50  0001 C CNN
	3    5300 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5650 5200 5650
Wire Wire Line
	4750 6250 5200 6250
Text GLabel 4550 5650 0    50   Input ~ 0
+VIN
Text GLabel 4550 6250 0    50   Input ~ 0
-VIN
$Comp
L power:GND #PWR?
U 1 1 5E8B4179
P 4300 5950
AR Path="/5E795811/5E8B4179" Ref="#PWR?"  Part="1" 
AR Path="/5E7E1DC7/5E8B4179" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 4300 5700 50  0001 C CNN
F 1 "GND" H 4305 5777 50  0000 C CNN
F 2 "" H 4300 5950 50  0001 C CNN
F 3 "" H 4300 5950 50  0001 C CNN
	1    4300 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5950 4750 5950
Connection ~ 4750 5950
Wire Wire Line
	4550 5650 4750 5650
Connection ~ 4750 5650
Wire Wire Line
	4550 6250 4750 6250
Connection ~ 4750 6250
Text Label 7250 3450 0    50   ~ 0
CV_OUT_A
Text Label 8800 3700 2    50   ~ 0
CV_OUT_A
Text Label 8800 4150 2    50   ~ 0
CV_OUT_B
Text Label 7250 4850 0    50   ~ 0
CV_OUT_B
Text Notes 7100 7050 0    100  ~ 0
cc-ba-sa\nVincezno Pacella shadux@shaduzlabs.com\nRich Holmes rs.holmes@gmail.com
Text Notes 6450 3800 0    50   ~ 0
Omit 1k resistors if 1V/oct output critical
$Comp
L Device:R_POT_TRIM R4
U 1 1 5EA3D54F
P 5550 3350
F 0 "R4" V 5343 3350 50  0000 C CNN
F 1 "20k" V 5434 3350 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" V 5480 3350 50  0001 C CNN
F 3 "~" H 5550 3350 50  0001 C CNN
	1    5550 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 3350 5800 3350
$Comp
L Device:R_POT_TRIM R5
U 1 1 5EA3F5D2
P 5550 4750
F 0 "R5" V 5343 4750 50  0000 C CNN
F 1 "20k" V 5434 4750 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" V 5480 4750 50  0001 C CNN
F 3 "~" H 5550 4750 50  0001 C CNN
	1    5550 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 4750 5800 4750
Wire Wire Line
	5550 3500 5400 3500
Wire Wire Line
	5400 3500 5400 3350
Connection ~ 5400 3350
Wire Wire Line
	5550 4900 5400 4900
Wire Wire Line
	5400 4900 5400 4750
Connection ~ 5400 4750
$EndSCHEMATC
