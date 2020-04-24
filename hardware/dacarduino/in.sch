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
Text HLabel 5750 5850 2    50   Output ~ 0
D9
Text HLabel 4900 2750 2    50   Output ~ 0
D2
Text HLabel 6050 2750 2    50   Output ~ 0
D3
$Sheet
S 4150 2600 550  350 
U 5E8150C7
F0 "Gate in A" 50
F1 "Gate_in.sch" 50
F2 "D_IN" O R 4700 2750 50 
$EndSheet
Text HLabel 5750 5750 2    50   Output ~ 0
D8
$Sheet
S 5300 2600 550  350 
U 5E845115
F0 "Gate in B" 50
F1 "Gate_in.sch" 50
F2 "D_IN" O R 5850 2750 50 
$EndSheet
$Sheet
S 4150 3250 550  350 
U 5E8670B9
F0 "Gate in C" 50
F1 "Gate_in.sch" 50
F2 "D_IN" O R 4700 3400 50 
$EndSheet
$Sheet
S 5300 3250 550  350 
U 5E867AC0
F0 "Gate in D" 50
F1 "Gate_in.sch" 50
F2 "D_IN" O R 5850 3400 50 
$EndSheet
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
Text Notes 3375 6425 0    100  ~ 0
* Same for dacarduino and dacarduino lite
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
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 5E8E7EE3
P 4250 5850
F 0 "J9" H 4168 6167 50  0000 C CNN
F 1 "Conn_01x04" H 4168 6076 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x04_P3.81mm_Drill1.2mm" H 4250 5850 50  0001 C CNN
F 3 "~" H 4250 5850 50  0001 C CNN
	1    4250 5850
	-1   0    0    -1  
$EndComp
Text HLabel 4650 6050 2    50   Output ~ 0
A7
Text HLabel 4650 5950 2    50   Output ~ 0
A6
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 5E968D29
P 5350 5750
F 0 "J10" H 5268 5967 50  0000 C CNN
F 1 "Conn_01x02" H 5268 5876 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P3.81mm_Drill1.2mm" H 5350 5750 50  0001 C CNN
F 3 "~" H 5350 5750 50  0001 C CNN
	1    5350 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 5850 5700 5850
Wire Wire Line
	5550 5750 5700 5750
Text HLabel 7575 2900 3    50   Output ~ 0
D5
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
Text Notes 4100 3200 0    500  ~ 0
*
Text Notes 4100 4525 0    500  ~ 0
*
Text HLabel 4650 5750 2    50   Output ~ 0
A4
Text HLabel 4650 5850 2    50   Output ~ 0
A5
$Comp
L EurorackRSH:SN74LS154N U4
U 1 1 5EA387BA
P 7750 3900
F 0 "U4" H 7750 4717 50  0000 C CNN
F 1 "SN74LS154N" H 7750 4626 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_Socket_LongPads" H 7500 3550 500 0001 C CNN
F 3 "" H 7500 3550 500 0001 C CNN
	1    7750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2750 4900 2750
Wire Wire Line
	5850 2750 6050 2750
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5EA3BA9C
P 7575 2125
F 0 "JP1" H 7575 2330 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7575 2239 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 7575 2125 50  0001 C CNN
F 3 "~" H 7575 2125 50  0001 C CNN
	1    7575 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3400 6425 3400
Wire Wire Line
	5000 3400 5000 3075
Wire Wire Line
	5000 3075 6375 3075
Wire Wire Line
	4700 3400 5000 3400
Wire Wire Line
	6375 2125 7375 2125
Wire Wire Line
	6375 2125 6375 3075
Wire Wire Line
	6425 2750 7375 2750
Wire Wire Line
	6425 2750 6425 3400
Wire Wire Line
	7775 2750 8625 2750
Wire Wire Line
	8625 2750 8625 3550
Wire Wire Line
	8625 3550 8200 3550
Wire Wire Line
	7775 2125 8675 2125
Wire Wire Line
	8675 2125 8675 3450
Wire Wire Line
	8675 3450 8200 3450
Wire Wire Line
	5700 5750 5700 5525
Wire Wire Line
	5700 5525 9550 5525
Wire Wire Line
	9550 5525 9550 3650
Wire Wire Line
	9550 3650 8200 3650
Connection ~ 5700 5750
Wire Wire Line
	5700 5750 5750 5750
Wire Wire Line
	5700 5850 5700 6000
Wire Wire Line
	5700 6000 9600 6000
Wire Wire Line
	9600 6000 9600 3750
Wire Wire Line
	9600 3750 8200 3750
Connection ~ 5700 5850
Wire Wire Line
	5700 5850 5750 5850
$Comp
L Connector_Generic:Conn_01x01 J19
U 1 1 5EA4C294
P 7100 3350
F 0 "J19" H 7700 3350 50  0000 C CNN
F 1 "Conn_01x01" H 7400 3350 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7100 3350 50  0001 C CNN
F 3 "~" H 7100 3350 50  0001 C CNN
	1    7100 3350
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J23
U 1 1 5EA4C991
P 7100 3750
F 0 "J23" H 7725 3750 50  0000 C CNN
F 1 "Conn_01x01" H 7400 3750 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7100 3750 50  0001 C CNN
F 3 "~" H 7100 3750 50  0001 C CNN
	1    7100 3750
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J27
U 1 1 5EA4D129
P 7100 4150
F 0 "J27" H 7725 4150 50  0000 C CNN
F 1 "Conn_01x01" H 7400 4150 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7100 4150 50  0001 C CNN
F 3 "~" H 7100 4150 50  0001 C CNN
	1    7100 4150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J20
U 1 1 5EA4D7CB
P 6725 3450
F 0 "J20" H 7325 3475 50  0000 C CNN
F 1 "Conn_01x01" H 7025 3475 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 6725 3450 50  0001 C CNN
F 3 "~" H 6725 3450 50  0001 C CNN
	1    6725 3450
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J22
U 1 1 5EA4E7A0
P 6725 3650
F 0 "J22" H 7325 3650 50  0000 C CNN
F 1 "Conn_01x01" H 7025 3650 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 6725 3650 50  0001 C CNN
F 3 "~" H 6725 3650 50  0001 C CNN
	1    6725 3650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J25
U 1 1 5EA51966
P 7100 3950
F 0 "J25" H 7725 3950 50  0000 C CNN
F 1 "Conn_01x01" H 7400 3950 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7100 3950 50  0001 C CNN
F 3 "~" H 7100 3950 50  0001 C CNN
	1    7100 3950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J29
U 1 1 5EA51C00
P 7100 4350
F 0 "J29" H 7725 4375 50  0000 C CNN
F 1 "Conn_01x01" H 7400 4375 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7100 4350 50  0001 C CNN
F 3 "~" H 7100 4350 50  0001 C CNN
	1    7100 4350
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J24
U 1 1 5EA51F10
P 6725 3850
F 0 "J24" H 7325 3850 50  0000 C CNN
F 1 "Conn_01x01" H 7025 3850 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 6725 3850 50  0001 C CNN
F 3 "~" H 6725 3850 50  0001 C CNN
	1    6725 3850
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J26
U 1 1 5EA52532
P 6725 4050
F 0 "J26" H 7325 4000 50  0000 C CNN
F 1 "Conn_01x01" H 7025 4050 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 6725 4050 50  0001 C CNN
F 3 "~" H 6725 4050 50  0001 C CNN
	1    6725 4050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J28
U 1 1 5EA527C1
P 6725 4250
F 0 "J28" H 7325 4275 50  0000 C CNN
F 1 "Conn_01x01" H 7025 4275 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 6725 4250 50  0001 C CNN
F 3 "~" H 6725 4250 50  0001 C CNN
	1    6725 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6925 3450 7300 3450
Wire Wire Line
	6925 3650 7300 3650
Wire Wire Line
	6925 3850 7300 3850
Wire Wire Line
	6925 4050 7300 4050
Wire Wire Line
	6925 4250 7300 4250
$Comp
L Connector_Generic:Conn_01x01 J30
U 1 1 5EA57303
P 8400 4450
F 0 "J30" H 8480 4492 50  0000 L CNN
F 1 "Conn_01x01" H 8480 4401 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 8400 4450 50  0001 C CNN
F 3 "~" H 8400 4450 50  0001 C CNN
	1    8400 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J31
U 1 1 5EA57C75
P 9025 4350
F 0 "J31" H 9105 4392 50  0000 L CNN
F 1 "Conn_01x01" H 9105 4301 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 9025 4350 50  0001 C CNN
F 3 "~" H 9025 4350 50  0001 C CNN
	1    9025 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J32
U 1 1 5EA58286
P 8400 4250
F 0 "J32" H 8480 4292 50  0000 L CNN
F 1 "Conn_01x01" H 8480 4201 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 8400 4250 50  0001 C CNN
F 3 "~" H 8400 4250 50  0001 C CNN
	1    8400 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J33
U 1 1 5EA586A4
P 9000 4150
F 0 "J33" H 9080 4192 50  0000 L CNN
F 1 "Conn_01x01" H 9080 4101 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 9000 4150 50  0001 C CNN
F 3 "~" H 9000 4150 50  0001 C CNN
	1    9000 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J34
U 1 1 5EA58A6E
P 8400 4050
F 0 "J34" H 8480 4092 50  0000 L CNN
F 1 "Conn_01x01" H 8480 4001 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 8400 4050 50  0001 C CNN
F 3 "~" H 8400 4050 50  0001 C CNN
	1    8400 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5EA59384
P 7300 4450
F 0 "#PWR0101" H 7300 4200 50  0001 C CNN
F 1 "GND" H 7305 4277 50  0000 C CNN
F 2 "" H 7300 4450 50  0001 C CNN
F 3 "" H 7300 4450 50  0001 C CNN
	1    7300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3850 8200 3950
Wire Wire Line
	8200 3850 8650 3850
Wire Wire Line
	8650 3850 8650 3875
Connection ~ 8200 3850
$Comp
L power:GND #PWR0102
U 1 1 5EA68071
P 8650 3875
F 0 "#PWR0102" H 8650 3625 50  0001 C CNN
F 1 "GND" H 8655 3702 50  0000 C CNN
F 2 "" H 8650 3875 50  0001 C CNN
F 3 "" H 8650 3875 50  0001 C CNN
	1    8650 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4150 8800 4150
Wire Wire Line
	8200 4350 8825 4350
Text GLabel 8125 2925 0    50   Input ~ 0
VCC
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 5EA3DF5E
P 7575 2750
F 0 "JP2" H 7575 2955 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 7575 2864 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 7575 2750 50  0001 C CNN
F 3 "~" H 7575 2750 50  0001 C CNN
	1    7575 2750
	1    0    0    -1  
$EndComp
Text HLabel 7575 2275 3    50   Output ~ 0
D4
$Comp
L Connector_Generic:Conn_01x01 J21
U 1 1 5EA4E001
P 7100 3550
F 0 "J21" H 7725 3550 50  0000 C CNN
F 1 "Conn_01x01" H 7400 3550 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7100 3550 50  0001 C CNN
F 3 "~" H 7100 3550 50  0001 C CNN
	1    7100 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 5EABD81C
P 8425 3075
F 0 "C9" H 8540 3121 50  0000 L CNN
F 1 "0.1uF" H 8540 3030 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 8463 2925 50  0001 C CNN
F 3 "~" H 8425 3075 50  0001 C CNN
	1    8425 3075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5EAC5D40
P 8425 3225
F 0 "#PWR0103" H 8425 2975 50  0001 C CNN
F 1 "GND" H 8430 3052 50  0000 C CNN
F 2 "" H 8425 3225 50  0001 C CNN
F 3 "" H 8425 3225 50  0001 C CNN
	1    8425 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	8125 2925 8200 2925
Wire Wire Line
	8200 2925 8200 3350
Connection ~ 8200 2925
Wire Wire Line
	8200 2925 8425 2925
$EndSCHEMATC
