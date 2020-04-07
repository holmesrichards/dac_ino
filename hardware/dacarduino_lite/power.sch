EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 12
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
P 6650 3700
AR Path="/5E7957F4/5E8A5A5C" Ref="C?"  Part="1" 
AR Path="/5E8A5A5C" Ref="C?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5A5C" Ref="C7"  Part="1" 
F 0 "C7" H 6768 3746 50  0000 L CNN
F 1 "10uF" H 6768 3655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6688 3550 50  0001 C CNN
F 3 "~" H 6650 3700 50  0001 C CNN
	1    6650 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8A5A68
P 6350 3850
AR Path="/5E7957F4/5E8A5A68" Ref="#PWR?"  Part="1" 
AR Path="/5E8A5A68" Ref="#PWR?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5A68" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 6350 3600 50  0001 C CNN
F 1 "GND" H 6355 3677 50  0000 C CNN
F 2 "" H 6350 3850 50  0001 C CNN
F 3 "" H 6350 3850 50  0001 C CNN
	1    6350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3850 6650 3850
Text Label 5300 3650 0    50   ~ 0
+12V
Text GLabel 5700 3650 2    50   Input ~ 0
+VIN
Text GLabel 6650 3450 1    50   Input ~ 0
+VIN
Wire Wire Line
	3550 3750 3550 3850
$Comp
L power:GND #PWR?
U 1 1 5E8A5A94
P 3550 3850
AR Path="/5E7957F4/5E8A5A94" Ref="#PWR?"  Part="1" 
AR Path="/5E8A5A94" Ref="#PWR?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5A94" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 3550 3600 50  0001 C CNN
F 1 "GND" V 3555 3722 50  0000 R CNN
F 2 "" H 3550 3850 50  0001 C CNN
F 3 "" H 3550 3850 50  0001 C CNN
	1    3550 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 3550 6650 3450
$Comp
L Diode:1N5817 D?
U 1 1 5E8A5AB1
P 5150 3650
AR Path="/5E7957F4/5E8A5AB1" Ref="D?"  Part="1" 
AR Path="/5E8A5AB1" Ref="D?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5AB1" Ref="D13"  Part="1" 
F 0 "D13" H 5150 3434 50  0000 C CNN
F 1 "1N5817" H 5150 3525 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 5150 3475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 5150 3650 50  0001 C CNN
	1    5150 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3650 5600 3650
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E8A5ABE
P 5600 3650
AR Path="/5E7957F4/5E8A5ABE" Ref="#FLG?"  Part="1" 
AR Path="/5E8A5ABE" Ref="#FLG?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5ABE" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 5600 3725 50  0001 C CNN
F 1 "PWR_FLAG" H 5600 3823 50  0000 C CNN
F 2 "" H 5600 3650 50  0001 C CNN
F 3 "~" H 5600 3650 50  0001 C CNN
	1    5600 3650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E8A5ACE
P 6350 3850
AR Path="/5E7957F4/5E8A5ACE" Ref="#FLG?"  Part="1" 
AR Path="/5E8A5ACE" Ref="#FLG?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5ACE" Ref="#FLG0103"  Part="1" 
F 0 "#FLG0103" H 6350 3925 50  0001 C CNN
F 1 "PWR_FLAG" H 6350 4023 50  0000 C CNN
F 2 "" H 6350 3850 50  0001 C CNN
F 3 "~" H 6350 3850 50  0001 C CNN
	1    6350 3850
	1    0    0    -1  
$EndComp
Connection ~ 6350 3850
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5E8A5AD5
P 2950 3650
AR Path="/5E7957F4/5E8A5AD5" Ref="J?"  Part="1" 
AR Path="/5E8A5AD5" Ref="J?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5AD5" Ref="J18"  Part="1" 
F 0 "J18" H 2950 3950 50  0000 C CNN
F 1 "Vin" H 2950 3850 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2950 3650 50  0001 C CNN
F 3 "~" H 2950 3650 50  0001 C CNN
	1    2950 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3150 3750 3550 3750
Connection ~ 5600 3650
Wire Wire Line
	5600 3650 5700 3650
Wire Wire Line
	3150 3650 5000 3650
$EndSCHEMATC
