EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L Device:CP C?
U 1 1 5E8A5A5C
P 4100 3800
AR Path="/5E7957F4/5E8A5A5C" Ref="C?"  Part="1" 
AR Path="/5E8A5A5C" Ref="C?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5A5C" Ref="C4"  Part="1" 
F 0 "C4" H 4218 3846 50  0000 L CNN
F 1 "10uF" H 4218 3755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4138 3650 50  0001 C CNN
F 3 "~" H 4100 3800 50  0001 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3950 4100 3950
Text Label 3125 3650 0    50   ~ 0
+12V
Text GLabel 4100 3650 1    50   Input ~ 0
+VIN
$Comp
L power:GND #PWR?
U 1 1 5E8A5A94
P 3550 3950
AR Path="/5E7957F4/5E8A5A94" Ref="#PWR?"  Part="1" 
AR Path="/5E8A5A94" Ref="#PWR?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5A94" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 3550 3700 50  0001 C CNN
F 1 "GND" V 3555 3822 50  0000 R CNN
F 2 "" H 3550 3950 50  0001 C CNN
F 3 "" H 3550 3950 50  0001 C CNN
	1    3550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 3650 3150 3650
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E8A5ABE
P 3425 3650
AR Path="/5E7957F4/5E8A5ABE" Ref="#FLG?"  Part="1" 
AR Path="/5E8A5ABE" Ref="#FLG?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5ABE" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 3425 3725 50  0001 C CNN
F 1 "PWR_FLAG" H 3425 3823 50  0000 C CNN
F 2 "" H 3425 3650 50  0001 C CNN
F 3 "~" H 3425 3650 50  0001 C CNN
	1    3425 3650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E8A5ACE
P 3800 3950
AR Path="/5E7957F4/5E8A5ACE" Ref="#FLG?"  Part="1" 
AR Path="/5E8A5ACE" Ref="#FLG?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5ACE" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 3800 4025 50  0001 C CNN
F 1 "PWR_FLAG" H 3800 4123 50  0000 C CNN
F 2 "" H 3800 3950 50  0001 C CNN
F 3 "~" H 3800 3950 50  0001 C CNN
	1    3800 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5E8A5AD5
P 2950 3650
AR Path="/5E7957F4/5E8A5AD5" Ref="J?"  Part="1" 
AR Path="/5E8A5AD5" Ref="J?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5AD5" Ref="J9"  Part="1" 
F 0 "J9" H 2950 3950 50  0000 C CNN
F 1 "Vin" H 2950 3850 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2950 3650 50  0001 C CNN
F 3 "~" H 2950 3650 50  0001 C CNN
	1    2950 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3150 3750 3550 3750
Connection ~ 3425 3650
Connection ~ 3150 3650
Wire Wire Line
	3150 3650 3425 3650
Wire Wire Line
	3425 3650 4100 3650
Wire Wire Line
	3800 3950 3550 3950
Connection ~ 3800 3950
Wire Wire Line
	3550 3750 3550 3950
Connection ~ 3550 3950
$EndSCHEMATC
