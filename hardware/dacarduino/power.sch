EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 16
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
L EurorackRSH:EURO_PWR_2x5 J?
U 1 1 5E8A5A56
P 4000 3850
AR Path="/5E7957F4/5E8A5A56" Ref="J?"  Part="1" 
AR Path="/5E8A5A56" Ref="J?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5A56" Ref="J8"  Part="1" 
F 0 "J8" H 4000 4297 60  0000 C CNN
F 1 "EURO_PWR_2x5" H 4000 4191 60  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 4000 3850 60  0001 C CNN
F 3 "" H 4000 3850 60  0000 C CNN
	1    4000 3850
	1    0    0    -1  
$EndComp
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
L Device:CP C?
U 1 1 5E8A5A62
P 6650 4000
AR Path="/5E7957F4/5E8A5A62" Ref="C?"  Part="1" 
AR Path="/5E8A5A62" Ref="C?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5A62" Ref="C8"  Part="1" 
F 0 "C8" H 6768 4046 50  0000 L CNN
F 1 "10uF" H 6768 3955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6688 3850 50  0001 C CNN
F 3 "~" H 6650 4000 50  0001 C CNN
	1    6650 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8A5A68
P 6350 3850
AR Path="/5E7957F4/5E8A5A68" Ref="#PWR?"  Part="1" 
AR Path="/5E8A5A68" Ref="#PWR?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5A68" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 6350 3600 50  0001 C CNN
F 1 "GND" H 6355 3677 50  0000 C CNN
F 2 "" H 6350 3850 50  0001 C CNN
F 3 "" H 6350 3850 50  0001 C CNN
	1    6350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3850 6650 3850
Connection ~ 6650 3850
Text Label 5300 3650 0    50   ~ 0
+12V
Text Label 5300 4050 0    50   ~ 0
-12V
Wire Wire Line
	5300 4050 5600 4050
Text GLabel 5700 3650 2    50   Input ~ 0
+VIN
Text GLabel 5700 4050 2    50   Input ~ 0
-VIN
Text GLabel 6650 3450 1    50   Input ~ 0
+VIN
Text GLabel 6650 4250 3    50   Input ~ 0
-VIN
Wire Wire Line
	3550 3750 3550 3850
Connection ~ 3550 3850
Wire Wire Line
	3550 3850 3550 3950
Wire Wire Line
	4450 3750 4450 3850
Connection ~ 4450 3850
Wire Wire Line
	4450 3850 4450 3950
Wire Wire Line
	3550 3650 3550 3300
Wire Wire Line
	3550 3300 4450 3300
Wire Wire Line
	4450 3300 4450 3650
Connection ~ 4450 3650
Wire Wire Line
	3550 4050 3550 4200
Wire Wire Line
	3550 4200 4450 4200
Wire Wire Line
	4450 4200 4450 4050
Connection ~ 4450 4050
$Comp
L power:GND #PWR?
U 1 1 5E8A5A94
P 3550 3850
AR Path="/5E7957F4/5E8A5A94" Ref="#PWR?"  Part="1" 
AR Path="/5E8A5A94" Ref="#PWR?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5A94" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 3550 3600 50  0001 C CNN
F 1 "GND" V 3555 3722 50  0000 R CNN
F 2 "" H 3550 3850 50  0001 C CNN
F 3 "" H 3550 3850 50  0001 C CNN
	1    3550 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8A5A9A
P 4450 3850
AR Path="/5E7957F4/5E8A5A9A" Ref="#PWR?"  Part="1" 
AR Path="/5E8A5A9A" Ref="#PWR?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5A9A" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 4450 3600 50  0001 C CNN
F 1 "GND" V 4455 3722 50  0000 R CNN
F 2 "" H 4450 3850 50  0001 C CNN
F 3 "" H 4450 3850 50  0001 C CNN
	1    4450 3850
	0    -1   1    0   
$EndComp
Wire Wire Line
	6650 4150 6650 4250
Wire Wire Line
	6650 3550 6650 3450
$Comp
L Diode:1N5817 D?
U 1 1 5E8A5AB1
P 5150 3650
AR Path="/5E7957F4/5E8A5AB1" Ref="D?"  Part="1" 
AR Path="/5E8A5AB1" Ref="D?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5AB1" Ref="D1"  Part="1" 
F 0 "D1" H 5150 3434 50  0000 C CNN
F 1 "1N5817" H 5150 3525 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 5150 3475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 5150 3650 50  0001 C CNN
	1    5150 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3650 5600 3650
$Comp
L Diode:1N5817 D?
U 1 1 5E8A5AB8
P 5150 4050
AR Path="/5E7957F4/5E8A5AB8" Ref="D?"  Part="1" 
AR Path="/5E8A5AB8" Ref="D?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5AB8" Ref="D2"  Part="1" 
F 0 "D2" H 5150 4266 50  0000 C CNN
F 1 "1N5817" H 5150 4175 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 5150 3875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 5150 4050 50  0001 C CNN
	1    5150 4050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E8A5ABE
P 5600 3650
AR Path="/5E7957F4/5E8A5ABE" Ref="#FLG?"  Part="1" 
AR Path="/5E8A5ABE" Ref="#FLG?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5ABE" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 5600 3725 50  0001 C CNN
F 1 "PWR_FLAG" H 5600 3823 50  0000 C CNN
F 2 "" H 5600 3650 50  0001 C CNN
F 3 "~" H 5600 3650 50  0001 C CNN
	1    5600 3650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E8A5AC6
P 5600 4050
AR Path="/5E7957F4/5E8A5AC6" Ref="#FLG?"  Part="1" 
AR Path="/5E8A5AC6" Ref="#FLG?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5AC6" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 5600 4125 50  0001 C CNN
F 1 "PWR_FLAG" H 5600 4223 50  0000 C CNN
F 2 "" H 5600 4050 50  0001 C CNN
F 3 "~" H 5600 4050 50  0001 C CNN
	1    5600 4050
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E8A5ACE
P 6350 3850
AR Path="/5E7957F4/5E8A5ACE" Ref="#FLG?"  Part="1" 
AR Path="/5E8A5ACE" Ref="#FLG?"  Part="1" 
AR Path="/5E8A3CCB/5E8A5ACE" Ref="#FLG03"  Part="1" 
F 0 "#FLG03" H 6350 3925 50  0001 C CNN
F 1 "PWR_FLAG" H 6350 4023 50  0000 C CNN
F 2 "" H 6350 3850 50  0001 C CNN
F 3 "~" H 6350 3850 50  0001 C CNN
	1    6350 3850
	1    0    0    -1  
$EndComp
Connection ~ 6350 3850
Connection ~ 5600 3650
Wire Wire Line
	5600 3650 5700 3650
Connection ~ 5600 4050
Wire Wire Line
	5600 4050 5700 4050
Wire Wire Line
	4450 4050 5000 4050
Wire Wire Line
	4450 3650 5000 3650
Text Notes 7100 7050 0    100  ~ 0
cc-ba-sa\nVincezno Pacella shadux@shaduzlabs.com\nRich Holmes rs.holmes@gmail.com
$EndSCHEMATC
