EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 16
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6050 2750 2    50   Output ~ 0
D3
Text HLabel 6050 3415 2    50   Output ~ 0
D5
$Sheet
S 4150 3250 550  350 
U 5E8670B9
F0 "Gate in C" 50
F1 "Gate_in.sch" 50
F2 "D_IN" O R 4700 3400 50 
$EndSheet
$Sheet
S 5300 3265 550  350 
U 5E867AC0
F0 "Gate in D" 50
F1 "Gate_in.sch" 50
F2 "D_IN" O R 5850 3415 50 
$EndSheet
Wire Wire Line
	5850 3415 6050 3415
$Sheet
S 5300 3950 550  350 
U 5E8954B7
F0 "CV in B" 50
F1 "CV_in.sch" 50
F2 "A_IN" O R 5850 4100 50 
$EndSheet
Text HLabel 4900 4100 2    50   Output ~ 0
A0
Wire Wire Line
	5850 4100 6050 4100
Text Notes 7100 7050 0    100  ~ 0
cc-ba-sa\nVincezno Pacella shadux@shaduzlabs.com\nRich Holmes rs.holmes@gmail.com
Text HLabel 4900 4800 2    50   Output ~ 0
A2
Text HLabel 6050 4100 2    50   Output ~ 0
A1
Text HLabel 6075 4800 2    50   Output ~ 0
A3
Wire Wire Line
	4450 5750 4650 5750
Wire Wire Line
	4450 5850 4650 5850
Wire Wire Line
	4450 6050 4650 6050
Wire Wire Line
	4450 5950 4650 5950
Text HLabel 4650 5950 2    50   Output ~ 0
A5
Text HLabel 4650 6050 2    50   Output ~ 0
A4
$Comp
L Connector_Generic:Conn_01x04 J10
U 1 1 5E8E7EE3
P 4250 5850
F 0 "J10" H 4168 6167 50  0000 C CNN
F 1 "Conn_01x04" H 4168 6076 50  0000 C CNN
F 2 "ao_tht:PinHeader_1x04_P2.54mm_Vertical" H 4250 5850 50  0001 C CNN
F 3 "~" H 4250 5850 50  0001 C CNN
	1    4250 5850
	-1   0    0    -1  
$EndComp
Text HLabel 4650 5750 2    50   Output ~ 0
A7
Text HLabel 4650 5850 2    50   Output ~ 0
A6
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 5E968D29
P 5350 5750
F 0 "J11" H 5268 5967 50  0000 C CNN
F 1 "Conn_01x02" H 5268 5876 50  0000 C CNN
F 2 "ao_tht:PinHeader_1x02_P2.54mm_Vertical" H 5350 5750 50  0001 C CNN
F 3 "~" H 5350 5750 50  0001 C CNN
	1    5350 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 5850 5750 5850
Wire Wire Line
	5550 5750 5750 5750
Text HLabel 5750 5850 2    50   Output ~ 0
D9
Text HLabel 5750 5750 2    50   Output ~ 0
D8
Wire Wire Line
	4700 4100 4900 4100
$Sheet
S 4150 3950 550  350 
U 5E895183
F0 "CV in A" 50
F1 "CV_in.sch" 50
F2 "A_IN" O R 4700 4100 50 
$EndSheet
$Sheet
S 4150 4650 550  350 
U 5E974F2E
F0 "CV in C" 50
F1 "CV_in.sch" 50
F2 "A_IN" O R 4700 4800 50 
$EndSheet
$Sheet
S 5300 4650 550  350 
U 5E974F9E
F0 "CV IN D" 50
F1 "CV_in.sch" 50
F2 "A_IN" O R 5850 4800 50 
$EndSheet
Wire Wire Line
	4700 4800 4900 4800
Wire Wire Line
	5850 4800 6075 4800
Wire Wire Line
	4700 3400 4900 3400
$Sheet
S 5300 2600 550  350 
U 5E845115
F0 "Gate in B" 50
F1 "Gate_in.sch" 50
F2 "D_IN" O R 5850 2750 50 
$EndSheet
Text HLabel 4900 3400 2    50   Output ~ 0
D4
Wire Wire Line
	5850 2750 6050 2750
$Sheet
S 4150 2595 550  350 
U 5E8150C7
F0 "Gate in A" 50
F1 "Gate_in.sch" 50
F2 "D_IN" O R 4700 2745 50 
$EndSheet
Wire Wire Line
	4700 2745 4900 2745
Text HLabel 4900 2745 2    50   Output ~ 0
D2
$Comp
L Connector_Generic:Conn_01x08 J21
U 1 1 5EE4A407
P 4250 6800
F 0 "J21" H 4168 6175 50  0000 C CNN
F 1 "Conn_01x06" H 4168 6266 50  0000 C CNN
F 2 "ao_tht:Molex_KK-254_AE-6410-08A_1x08_P2.54mm_Vertical" H 4250 6800 50  0001 C CNN
F 3 "~" H 4250 6800 50  0001 C CNN
	1    4250 6800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 7000 4650 7000
Wire Wire Line
	4450 6900 4650 6900
Wire Wire Line
	4450 6700 4650 6700
Wire Wire Line
	4450 6800 4650 6800
Text HLabel 4650 6800 2    50   Output ~ 0
A5
Text HLabel 4650 6700 2    50   Output ~ 0
A4
Text HLabel 4650 7000 2    50   Output ~ 0
A7
Text HLabel 4650 6900 2    50   Output ~ 0
A6
Wire Wire Line
	4450 6500 4650 6500
Wire Wire Line
	4450 6600 4650 6600
Text HLabel 4650 6500 2    50   Output ~ 0
D9
Text HLabel 4650 6600 2    50   Output ~ 0
D8
Text GLabel 4450 7100 2    50   Input ~ 0
VCC
$Comp
L power:GND #PWR0102
U 1 1 5EE4F042
P 5075 6425
F 0 "#PWR0102" H 5075 6175 50  0001 C CNN
F 1 "GND" H 5080 6252 50  0000 C CNN
F 2 "" H 5075 6425 50  0001 C CNN
F 3 "" H 5075 6425 50  0001 C CNN
	1    5075 6425
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6400 5075 6400
Wire Wire Line
	5075 6400 5075 6425
$EndSCHEMATC
