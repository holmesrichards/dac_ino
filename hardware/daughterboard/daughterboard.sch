EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector_Generic:Conn_01x08 J1
U 1 1 5EDCB519
P 2375 2675
F 0 "J1" H 2455 2667 50  0000 L CNN
F 1 "Conn_01x08" H 2455 2576 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 2375 2675 50  0001 C CNN
F 3 "~" H 2375 2675 50  0001 C CNN
	1    2375 2675
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J4
U 1 1 5EDCBA96
P 5500 2675
F 0 "J4" H 5580 2667 50  0000 L CNN
F 1 "Conn_01x08" H 5580 2576 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 5500 2675 50  0001 C CNN
F 3 "~" H 5500 2675 50  0001 C CNN
	1    5500 2675
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5EDCC6F6
P 3000 2450
F 0 "J2" H 3080 2442 50  0000 L CNN
F 1 "Conn_01x02" H 3080 2351 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3000 2450 50  0001 C CNN
F 3 "~" H 3000 2450 50  0001 C CNN
	1    3000 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5EDCCA80
P 4200 2550
F 0 "J3" H 4280 2542 50  0000 L CNN
F 1 "Conn_01x04" H 4280 2451 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4200 2550 50  0001 C CNN
F 3 "~" H 4200 2550 50  0001 C CNN
	1    4200 2550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5EDCD195
P 3050 3700
F 0 "H1" H 3150 3746 50  0000 L CNN
F 1 "MountingHole" H 3150 3655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3050 3700 50  0001 C CNN
F 3 "~" H 3050 3700 50  0001 C CNN
	1    3050 3700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EDCD47F
P 3050 3875
F 0 "H2" H 3150 3921 50  0000 L CNN
F 1 "MountingHole" H 3150 3830 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3050 3875 50  0001 C CNN
F 3 "~" H 3050 3875 50  0001 C CNN
	1    3050 3875
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5EDCDFC1
P 3050 4050
F 0 "H3" H 3150 4096 50  0000 L CNN
F 1 "MountingHole" H 3150 4005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3050 4050 50  0001 C CNN
F 3 "~" H 3050 4050 50  0001 C CNN
	1    3050 4050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5EDCDFC7
P 3050 4225
F 0 "H4" H 3150 4271 50  0000 L CNN
F 1 "MountingHole" H 3150 4180 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3050 4225 50  0001 C CNN
F 3 "~" H 3050 4225 50  0001 C CNN
	1    3050 4225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EDD006C
P 2000 2375
F 0 "#PWR?" H 2000 2125 50  0001 C CNN
F 1 "GND" H 2005 2202 50  0000 C CNN
F 2 "" H 2000 2375 50  0001 C CNN
F 3 "" H 2000 2375 50  0001 C CNN
	1    2000 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2375 2175 2375
$Comp
L power:GND #PWR?
U 1 1 5EDD04FC
P 5150 3075
F 0 "#PWR?" H 5150 2825 50  0001 C CNN
F 1 "GND" H 5155 2902 50  0000 C CNN
F 2 "" H 5150 3075 50  0001 C CNN
F 3 "" H 5150 3075 50  0001 C CNN
	1    5150 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3075 5300 3075
$EndSCHEMATC
