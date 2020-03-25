EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 17
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
Text HLabel 6050 4100 2    50   Output ~ 0
A_IN_B
Text HLabel 7200 4100 2    50   Output ~ 0
A_IN_C
Text HLabel 4900 4850 2    50   Output ~ 0
A_IN_D
Text HLabel 6050 4850 2    50   Output ~ 0
A_IN_E
Text HLabel 7200 4850 2    50   Output ~ 0
A_IN_F
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
$Sheet
S 6450 3950 550  350 
U 5E895B53
F0 "CV in C" 50
F1 "CV_in.sch" 50
F2 "A_IN" O R 7000 4100 50 
$EndSheet
Text HLabel 4900 4100 2    50   Output ~ 0
A_IN_A
$Sheet
S 4150 4700 550  350 
U 5E8B4F54
F0 "CV in D" 50
F1 "CV_in.sch" 50
F2 "A_IN" O R 4700 4850 50 
$EndSheet
$Sheet
S 5300 4700 550  350 
U 5E8B4FDC
F0 "CV in E" 50
F1 "CV_in.sch" 50
F2 "A_IN" O R 5850 4850 50 
$EndSheet
$Sheet
S 6450 4700 550  350 
U 5E8B51E5
F0 "CV in F" 50
F1 "CV_in.sch" 50
F2 "A_IN" O R 7000 4850 50 
$EndSheet
Wire Wire Line
	4700 4100 4900 4100
Wire Wire Line
	4700 4850 4900 4850
Wire Wire Line
	5850 4850 6050 4850
Wire Wire Line
	5850 4100 6050 4100
Wire Wire Line
	7000 4100 7200 4100
Wire Wire Line
	7000 4850 7200 4850
Text Notes 7100 7050 0    100  ~ 0
cc-ba-sa\nVincezno Pacella shadux@shaduzlabs.com\nRich Holmes rs.holmes@gmail.com
Text Notes 4100 5750 0    100  ~ 0
* Same for dacarduino and dacarduino lite
Text Notes 4100 3150 0    500  ~ 0
*
Text Notes 4100 4500 0    500  ~ 0
*
$EndSCHEMATC
