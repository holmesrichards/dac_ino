EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 14
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4850 3400 2    50   Output ~ 0
D_IN_B
Text HLabel 6050 2750 2    50   Output ~ 0
D_IN_C
Text HLabel 6050 3400 2    50   Output ~ 0
D_IN_D
$Sheet
S 4150 2600 550  350 
U 5E8150C7
F0 "Gate in A" 50
F1 "Gate_in.sch" 50
F2 "D_IN" O R 4700 2750 50 
$EndSheet
Text HLabel 4850 2750 2    50   Output ~ 0
D_IN_A
Wire Wire Line
	4700 2750 4850 2750
$Sheet
S 4150 3250 550  350 
U 5E845115
F0 "Gate in B" 50
F1 "Gate_in.sch" 50
F2 "D_IN" O R 4700 3400 50 
$EndSheet
Wire Wire Line
	4700 3400 4850 3400
$Sheet
S 5300 2600 550  350 
U 5E8670B9
F0 "Gate in C" 50
F1 "Gate_in.sch" 50
F2 "D_IN" O R 5850 2750 50 
$EndSheet
$Sheet
S 5300 3250 550  350 
U 5E867AC0
F0 "Gate in D" 50
F1 "Gate_in.sch" 50
F2 "D_IN" O R 5850 3400 50 
$EndSheet
Wire Wire Line
	5850 3400 6050 3400
Wire Wire Line
	5850 2750 6050 2750
$Sheet
S 4150 3950 550  350 
U 5E895183
F0 "CV in A" 50
F1 "CV_in.sch" 50
F2 "A_IN" O R 4700 4100 50 
$EndSheet
$Sheet
S 5300 3950 550  350 
U 5E8954B7
F0 "CV in B" 50
F1 "CV_in.sch" 50
F2 "A_IN" O R 5850 4100 50 
$EndSheet
Text HLabel 4900 4100 2    50   Output ~ 0
A_IN_A
Wire Wire Line
	4700 4100 4900 4100
Wire Wire Line
	5850 4100 6050 4100
Text Notes 7100 7050 0    100  ~ 0
cc-ba-sa\nVincezno Pacella shadux@shaduzlabs.com\nRich Holmes rs.holmes@gmail.com
Text Notes 3625 5500 0    100  ~ 0
* Same for dacarduino and dacarduino lite
Text Notes 4100 3150 0    500  ~ 0
*
Wire Wire Line
	4475 4825 4675 4825
Text HLabel 4675 4825 2    50   Output ~ 0
A_IN_C
Text HLabel 6050 4100 2    50   Output ~ 0
A_IN_B
Text Notes 5250 4500 0    500  ~ 0
*
Wire Wire Line
	4475 4925 4675 4925
Wire Wire Line
	4475 5125 4675 5125
Wire Wire Line
	4475 5025 4675 5025
Text HLabel 4675 5125 2    50   Output ~ 0
A_IN_F
Text HLabel 4675 5025 2    50   Output ~ 0
A_IN_E
Text HLabel 4675 4925 2    50   Output ~ 0
A_IN_D
$Comp
L Connector_Generic:Conn_01x04 J501
U 1 1 5E8E7EE3
P 4275 4925
F 0 "J501" H 4193 5242 50  0000 C CNN
F 1 "Conn_01x04" H 4193 5151 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x04_P3.81mm_Drill1.2mm" H 4275 4925 50  0001 C CNN
F 3 "~" H 4275 4925 50  0001 C CNN
	1    4275 4925
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
