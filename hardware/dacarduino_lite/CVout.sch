EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 8
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
	5900 3350 5800 3350
$Comp
L Device:R R?
U 1 1 5E7E4EC9
P 6900 3450
AR Path="/5E7E4EC9" Ref="R?"  Part="1" 
AR Path="/5E7977E1/5E7E4EC9" Ref="R?"  Part="1" 
AR Path="/5E7957F4/5E7E4EC9" Ref="R?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4EC9" Ref="R301"  Part="1" 
F 0 "R301" V 7150 3400 59  0000 L BNN
F 1 "1K" V 7050 3350 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6900 3450 50  0001 C CNN
F 3 "" H 6900 3450 50  0001 C CNN
	1    6900 3450
	0    -1   -1   0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5E7E4ED3
P 6200 3450
AR Path="/5E7957F4/5E7E4ED3" Ref="U?"  Part="1" 
AR Path="/5E7E4ED3" Ref="U?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4ED3" Ref="U301"  Part="1" 
F 0 "U301" H 6200 3817 50  0000 C CNN
F 1 "MCP6002" H 6200 3726 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 6200 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl972.pdf" H 6200 3450 50  0001 C CNN
	1    6200 3450
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5E7E4ED9
P 6200 4850
AR Path="/5E7957F4/5E7E4ED9" Ref="U?"  Part="2" 
AR Path="/5E7E4ED9" Ref="U?"  Part="2" 
AR Path="/5E7E1DC7/5E7E4ED9" Ref="U301"  Part="2" 
F 0 "U301" H 6200 5217 50  0000 C CNN
F 1 "MCP6002" H 6200 5126 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 6200 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl972.pdf" H 6200 4850 50  0001 C CNN
	2    6200 4850
	1    0    0    1   
$EndComp
Wire Wire Line
	5900 4750 5800 4750
$Comp
L Device:R R?
U 1 1 5E7E4F06
P 6900 4850
AR Path="/5E7E4F06" Ref="R?"  Part="1" 
AR Path="/5E7977E1/5E7E4F06" Ref="R?"  Part="1" 
AR Path="/5E7957F4/5E7E4F06" Ref="R?"  Part="1" 
AR Path="/5E7E1DC7/5E7E4F06" Ref="R302"  Part="1" 
F 0 "R302" V 7150 4800 59  0000 L BNN
F 1 "1K" V 7050 4750 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6900 4850 50  0001 C CNN
F 3 "" H 6900 4850 50  0001 C CNN
	1    6900 4850
	0    -1   -1   0   
$EndComp
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
AR Path="/5E7E1DC7/5E7F27A0" Ref="J302"  Part="1" 
F 0 "J302" H 9130 4142 50  0000 L CNN
F 1 "CV OUT B" H 9130 4051 50  0000 L CNN
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
AR Path="/5E7E1DC7/5E7F27A6" Ref="J301"  Part="1" 
F 0 "J301" H 9130 3692 50  0000 L CNN
F 1 "CV OUT A" H 9130 3601 50  0000 L CNN
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
AR Path="/5E7E1DC7/5E7F27AC" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 8850 3550 50  0001 C CNN
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
AR Path="/5E7E1DC7/5E7F27B2" Ref="#PWR0303"  Part="1" 
F 0 "#PWR0303" H 8850 4000 50  0001 C CNN
F 1 "GND" H 8855 4077 50  0000 C CNN
F 2 "" H 8850 4250 50  0001 C CNN
F 3 "" H 8850 4250 50  0001 C CNN
	1    8850 4250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5E8AE4DB
P 5300 5950
AR Path="/5E7957F4/5E8AE4DB" Ref="U?"  Part="3" 
AR Path="/5E8AE4DB" Ref="U?"  Part="3" 
AR Path="/5E7E1DC7/5E8AE4DB" Ref="U301"  Part="3" 
F 0 "U301" H 5258 5996 50  0000 L CNN
F 1 "MCP6002" H 5258 5905 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 5300 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl972.pdf" H 5300 5950 50  0001 C CNN
	3    5300 5950
	1    0    0    -1  
$EndComp
Text GLabel 4550 5650 0    50   Input ~ 0
+VIN
$Comp
L power:GND #PWR?
U 1 1 5E8B4179
P 5200 6250
AR Path="/5E795811/5E8B4179" Ref="#PWR?"  Part="1" 
AR Path="/5E7E1DC7/5E8B4179" Ref="#PWR0301"  Part="1" 
F 0 "#PWR0301" H 5200 6000 50  0001 C CNN
F 1 "GND" H 5205 6077 50  0000 C CNN
F 2 "" H 5200 6250 50  0001 C CNN
F 3 "" H 5200 6250 50  0001 C CNN
	1    5200 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3450 6550 3450
Wire Wire Line
	7050 3450 7300 3450
Wire Wire Line
	5800 2950 6550 2950
Wire Wire Line
	6550 2950 6550 3450
Wire Wire Line
	5800 2950 5800 3350
Connection ~ 6550 3450
Wire Wire Line
	6550 3450 6750 3450
Wire Wire Line
	7050 4850 7300 4850
Wire Wire Line
	6500 4850 6550 4850
Wire Wire Line
	6550 4850 6550 4350
Wire Wire Line
	6550 4350 5800 4350
Connection ~ 6550 4850
Wire Wire Line
	6550 4850 6750 4850
Wire Wire Line
	5800 4350 5800 4750
Connection ~ 4750 5650
Wire Wire Line
	4550 5650 4750 5650
Wire Wire Line
	4750 5650 5200 5650
$Comp
L Device:C C?
U 1 1 5E8AE4CE
P 4750 5800
AR Path="/5E7957F4/5E8AE4CE" Ref="C?"  Part="1" 
AR Path="/5E8AE4CE" Ref="C?"  Part="1" 
AR Path="/5E7E1DC7/5E8AE4CE" Ref="C301"  Part="1" 
F 0 "C301" H 4865 5846 50  0000 L CNN
F 1 "0.1uF" H 4865 5755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4788 5650 50  0001 C CNN
F 3 "~" H 4750 5800 50  0001 C CNN
	1    4750 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5950 4750 6250
Wire Wire Line
	4750 6250 5200 6250
Connection ~ 5200 6250
Text Label 7150 3450 0    50   ~ 0
CV_OUT_A
Text Label 8850 3700 2    50   ~ 0
CV_OUT_A
Text Label 7150 4850 0    50   ~ 0
CV_OUT_B
Text Label 8850 4150 2    50   ~ 0
CV_OUT_B
Text Notes 6250 4100 0    50   ~ 0
Omit 1k resistors if 1V/oct output critical
Text Notes 6475 5575 0    50   ~ 0
MCP6002 may be good choice for dacarduino lite,\nit being rail to rail, but limited to 6V power. (Or \nTL972 but that seems harder to find.) 
$EndSCHEMATC
