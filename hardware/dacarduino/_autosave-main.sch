EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2250 2550 0    50   Input ~ 0
D_IN_A
Text Notes 7100 6700 0    100  ~ 0
cc-by-sa
Text Notes 7100 6900 0    100  ~ 0
Vincenzo Pacella
Text Notes 7100 7100 0    100  ~ 0
shaduz@shaduzlabs.com
Text Notes 9150 7050 0    100  ~ 0
dacarduino version by \nRich Holmes\nrs.holmes@gmail.com
Wire Wire Line
	2350 3350 1450 3350
$Comp
L Device:R R?
U 1 1 5E7BC654
P 1450 3000
AR Path="/5E7BC654" Ref="R?"  Part="1" 
AR Path="/5E7977E1/5E7BC654" Ref="R?"  Part="1" 
AR Path="/5E7957F4/5E7BC654" Ref="R1"  Part="1" 
F 0 "R1" H 1550 3050 59  0000 L BNN
F 1 "10K" H 1550 2950 59  0000 L BNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1450 3000 50  0001 C CNN
F 3 "" H 1450 3000 50  0001 C CNN
	1    1450 3000
	-1   0    0    -1  
$EndComp
Text GLabel 1450 2800 1    50   Input ~ 0
VCC
Wire Wire Line
	2250 2550 2350 2550
Text GLabel 2250 2650 0    50   Input ~ 0
D_IN_B
Wire Wire Line
	2250 2650 2350 2650
Text GLabel 2250 2750 0    50   Input ~ 0
D_IN_C
Wire Wire Line
	2250 2750 2350 2750
Text GLabel 2250 2850 0    50   Input ~ 0
D_IN_D
Wire Wire Line
	2250 2850 2350 2850
Text GLabel 2250 2950 0    50   Output ~ 0
D_OUT_A
Wire Wire Line
	2250 2950 2350 2950
Text GLabel 2250 3050 0    50   Output ~ 0
D_OUT_B
Wire Wire Line
	2250 3050 2350 3050
Text GLabel 3450 2950 2    50   Input ~ 0
A_IN_A
Text GLabel 3450 3050 2    50   Input ~ 0
A_IN_B
Wire Wire Line
	3350 3050 3450 3050
Wire Wire Line
	3350 2950 3450 2950
Text GLabel 3450 3150 2    50   Input ~ 0
A_IN_C
Text GLabel 3450 3250 2    50   Input ~ 0
A_IN_D
Wire Wire Line
	3350 3250 3450 3250
Wire Wire Line
	3350 3150 3450 3150
Text GLabel 3450 3350 2    50   Input ~ 0
A_IN_E
Text GLabel 3450 3450 2    50   Input ~ 0
A_IN_F
Wire Wire Line
	3350 3450 3450 3450
Wire Wire Line
	3350 3350 3450 3350
Text GLabel 3050 1850 1    50   Output ~ 0
VCC
Text GLabel 2750 1850 1    50   Input ~ 0
+12V
Wire Wire Line
	2750 1850 2750 1950
Wire Wire Line
	3050 1850 3050 1950
$Comp
L power:GND #PWR04
U 1 1 5E8C2D75
P 2950 3950
F 0 "#PWR04" H 2950 3700 50  0001 C CNN
F 1 "GND" H 2955 3777 50  0000 C CNN
F 2 "" H 2950 3950 50  0001 C CNN
F 3 "" H 2950 3950 50  0001 C CNN
	1    2950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2800 1450 2850
Wire Wire Line
	1450 3150 1450 3350
$Comp
L EurorackRSH:EURO_PWR_2x5 J3
U 1 1 5E980A82
P 2700 5700
F 0 "J3" H 2700 6147 60  0000 C CNN
F 1 "EURO_PWR_2x5" H 2700 6041 60  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 2700 5700 60  0001 C CNN
F 3 "" H 2700 5700 60  0000 C CNN
	1    2700 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5E980A94
P 5350 5550
F 0 "C3" H 5468 5596 50  0000 L CNN
F 1 "10uF" H 5468 5505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5388 5400 50  0001 C CNN
F 3 "~" H 5350 5550 50  0001 C CNN
	1    5350 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5E980A9A
P 5350 5850
F 0 "C4" H 5468 5896 50  0000 L CNN
F 1 "10uF" H 5468 5805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5388 5700 50  0001 C CNN
F 3 "~" H 5350 5850 50  0001 C CNN
	1    5350 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5E980AA0
P 5050 5700
F 0 "#PWR07" H 5050 5450 50  0001 C CNN
F 1 "GND" H 5055 5527 50  0000 C CNN
F 2 "" H 5050 5700 50  0001 C CNN
F 3 "" H 5050 5700 50  0001 C CNN
	1    5050 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E980AA6
P 6000 5550
F 0 "C5" H 6115 5596 50  0000 L CNN
F 1 "0.1uF" H 6115 5505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6038 5400 50  0001 C CNN
F 3 "~" H 6000 5550 50  0001 C CNN
	1    6000 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5E980AAC
P 6000 5850
F 0 "C6" H 6115 5896 50  0000 L CNN
F 1 "0.1uF" H 6115 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6038 5700 50  0001 C CNN
F 3 "~" H 6000 5850 50  0001 C CNN
	1    6000 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5700 5350 5700
Connection ~ 5350 5700
Connection ~ 6000 5700
Wire Wire Line
	3150 5500 3400 5500
Wire Wire Line
	3150 5900 3400 5900
Text Label 4000 5500 0    50   ~ 0
+12V
Text Label 4000 5900 0    50   ~ 0
-12V
Wire Wire Line
	4000 5900 4400 5900
Text GLabel 4400 5500 2    50   Input ~ 0
+12V
Text GLabel 4400 5900 2    50   Input ~ 0
-12V
Text GLabel 5350 5300 1    50   Input ~ 0
+12V
Text GLabel 5350 6100 3    50   Input ~ 0
-12V
Wire Wire Line
	2250 5600 2250 5700
Connection ~ 2250 5700
Wire Wire Line
	2250 5700 2250 5800
Wire Wire Line
	3150 5600 3150 5700
Connection ~ 3150 5700
Wire Wire Line
	3150 5700 3150 5800
Wire Wire Line
	2250 5500 2250 5150
Wire Wire Line
	2250 5150 3150 5150
Wire Wire Line
	3150 5150 3150 5500
Connection ~ 3150 5500
Wire Wire Line
	2250 5900 2250 6050
Wire Wire Line
	2250 6050 3150 6050
Wire Wire Line
	3150 6050 3150 5900
Connection ~ 3150 5900
$Comp
L power:GND #PWR03
U 1 1 5E980AD6
P 2250 5700
F 0 "#PWR03" H 2250 5450 50  0001 C CNN
F 1 "GND" V 2255 5572 50  0000 R CNN
F 2 "" H 2250 5700 50  0001 C CNN
F 3 "" H 2250 5700 50  0001 C CNN
	1    2250 5700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E980ADC
P 3150 5700
F 0 "#PWR05" H 3150 5450 50  0001 C CNN
F 1 "GND" V 3155 5572 50  0000 R CNN
F 2 "" H 3150 5700 50  0001 C CNN
F 3 "" H 3150 5700 50  0001 C CNN
	1    3150 5700
	0    -1   1    0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U2
U 3 1 5E9840A6
P 6550 5700
F 0 "U2" H 6508 5746 50  0000 L CNN
F 1 "TL972" H 6508 5655 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 6550 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl972.pdf" H 6550 5700 50  0001 C CNN
	3    6550 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5700 6000 5700
Wire Wire Line
	5350 5400 6000 5400
Connection ~ 6000 5400
Wire Wire Line
	6000 5400 6450 5400
Wire Wire Line
	5350 6000 6000 6000
Connection ~ 6000 6000
Wire Wire Line
	6000 6000 6450 6000
Wire Wire Line
	5350 6000 5350 6100
Connection ~ 5350 6000
Wire Wire Line
	5350 5400 5350 5300
Connection ~ 5350 5400
Text GLabel 2250 3650 0    50   BiDi ~ 0
SCK
Wire Wire Line
	2350 3650 2250 3650
Text GLabel 2250 3450 0    50   BiDi ~ 0
MOSI
Wire Wire Line
	2350 3450 2250 3450
Text GLabel 1350 3350 0    50   BiDi ~ 0
DAC_CS
Wire Wire Line
	1450 3350 1350 3350
$Comp
L Diode:1N5817 D1
U 1 1 5E7BEC5F
P 3850 5500
F 0 "D1" H 3850 5284 50  0000 C CNN
F 1 "1N5817" H 3850 5375 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3850 5325 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 3850 5500 50  0001 C CNN
	1    3850 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 5500 4400 5500
$Comp
L Diode:1N5817 D2
U 1 1 5E7C85B9
P 3850 5900
F 0 "D2" H 3850 6116 50  0000 C CNN
F 1 "1N5817" H 3850 6025 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3850 5725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 3850 5900 50  0001 C CNN
	1    3850 5900
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5E80C647
P 3400 5500
F 0 "#FLG01" H 3400 5575 50  0001 C CNN
F 1 "PWR_FLAG" H 3400 5673 50  0000 C CNN
F 2 "" H 3400 5500 50  0001 C CNN
F 3 "~" H 3400 5500 50  0001 C CNN
	1    3400 5500
	1    0    0    -1  
$EndComp
Connection ~ 3400 5500
Wire Wire Line
	3400 5500 3700 5500
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5E80C9E3
P 3400 5900
F 0 "#FLG02" H 3400 5975 50  0001 C CNN
F 1 "PWR_FLAG" H 3400 6073 50  0000 C CNN
F 2 "" H 3400 5900 50  0001 C CNN
F 3 "~" H 3400 5900 50  0001 C CNN
	1    3400 5900
	-1   0    0    1   
$EndComp
Connection ~ 3400 5900
Wire Wire Line
	3400 5900 3700 5900
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5E80D277
P 5050 5700
F 0 "#FLG03" H 5050 5775 50  0001 C CNN
F 1 "PWR_FLAG" H 5050 5873 50  0000 C CNN
F 2 "" H 5050 5700 50  0001 C CNN
F 3 "~" H 5050 5700 50  0001 C CNN
	1    5050 5700
	1    0    0    -1  
$EndComp
Connection ~ 5050 5700
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5E81C777
P 1650 5600
F 0 "J2" H 1650 5900 50  0000 C CNN
F 1 "Vin" H 1650 5800 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 1650 5600 50  0001 C CNN
F 3 "~" H 1650 5600 50  0001 C CNN
	1    1650 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 5500 2250 5500
Connection ~ 2250 5500
Wire Wire Line
	1850 5600 2250 5600
Connection ~ 2250 5600
Text GLabel 1850 4650 2    50   Input ~ 0
VCC
$Comp
L power:GND #PWR02
U 1 1 5E82F975
P 1850 4750
F 0 "#PWR02" H 1850 4500 50  0001 C CNN
F 1 "GND" H 1855 4577 50  0000 C CNN
F 2 "" H 1850 4750 50  0001 C CNN
F 3 "" H 1850 4750 50  0001 C CNN
	1    1850 4750
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5E7A5EF7
P 2850 2950
F 0 "A1" H 2750 1800 50  0000 C CNN
F 1 "Arduino_Nano_v3.x 5V" H 2850 1700 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2850 2950 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2850 2950 50  0001 C CNN
	1    2850 2950
	1    0    0    -1  
$EndComp
Connection ~ 1450 3350
NoConn ~ 2350 2450
NoConn ~ 2350 2350
NoConn ~ 3350 2450
NoConn ~ 3350 2350
NoConn ~ 2350 3150
NoConn ~ 2350 3250
NoConn ~ 3350 3550
NoConn ~ 3350 3650
NoConn ~ 2350 3550
NoConn ~ 2950 1950
Wire Wire Line
	2850 3950 2950 3950
Connection ~ 2950 3950
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5E82EB98
P 1650 4650
F 0 "J1" H 1568 4867 50  0000 C CNN
F 1 "VCC" H 1568 4776 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 1650 4650 50  0001 C CNN
F 3 "~" H 1650 4650 50  0001 C CNN
	1    1650 4650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 5700 1850 5900
Wire Wire Line
	1850 5900 2250 5900
Connection ~ 2250 5900
$EndSCHEMATC
