EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4550 3025 2    50   Output ~ 0
D_IN_B
Text HLabel 4550 3125 2    50   Output ~ 0
D_IN_C
Text HLabel 4575 4200 2    50   Output ~ 0
A_IN_B
Text HLabel 4575 4300 2    50   Output ~ 0
A_IN_C
Text HLabel 4575 4400 2    50   Output ~ 0
A_IN_D
Text HLabel 6050 4850 2    50   Output ~ 0
A_IN_E
Text HLabel 7200 4850 2    50   Output ~ 0
A_IN_F
Text HLabel 4550 3225 2    50   Output ~ 0
D_IN_D
Text HLabel 4550 2925 2    50   Output ~ 0
D_IN_A
Wire Wire Line
	4400 2925 4550 2925
Wire Wire Line
	4400 3025 4550 3025
Text HLabel 4575 4100 2    50   Output ~ 0
A_IN_A
Wire Wire Line
	4375 4100 4575 4100
Wire Wire Line
	4375 4400 4575 4400
Wire Wire Line
	5850 4850 6050 4850
Wire Wire Line
	4375 4200 4575 4200
Wire Wire Line
	4375 4300 4575 4300
Wire Wire Line
	7000 4850 7200 4850
NoConn ~ 5850 4850
NoConn ~ 7000 4850
$Comp
L Connector_Generic:Conn_01x04 J502
U 1 1 5E8EBB95
P 4200 3025
F 0 "J502" H 4118 3342 50  0000 C CNN
F 1 "Conn_01x04" H 4118 3251 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x04_P3.81mm_Drill1.2mm" H 4200 3025 50  0001 C CNN
F 3 "~" H 4200 3025 50  0001 C CNN
	1    4200 3025
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 3125 4550 3125
Wire Wire Line
	4400 3225 4550 3225
$Comp
L Connector_Generic:Conn_01x04 J501
U 1 1 5E8EF53A
P 4175 4200
F 0 "J501" H 4093 4517 50  0000 C CNN
F 1 "Conn_01x04" H 4093 4426 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x04_P3.81mm_Drill1.2mm" H 4175 4200 50  0001 C CNN
F 3 "~" H 4175 4200 50  0001 C CNN
	1    4175 4200
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
