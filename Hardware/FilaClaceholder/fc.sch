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
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 60670B57
P 4000 2400
F 0 "J2" V 4150 2700 50  0000 C CNN
F 1 "Conn_2" V 4000 2750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 4000 2400 50  0001 C CNN
F 3 "~" H 4000 2400 50  0001 C CNN
	1    4000 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6069982E
P 3900 2100
F 0 "#PWR0101" H 3900 1850 50  0001 C CNN
F 1 "GND" V 3900 1900 50  0000 C CNN
F 2 "" H 3900 2100 50  0001 C CNN
F 3 "" H 3900 2100 50  0001 C CNN
	1    3900 2100
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6067B802
P 2450 2600
F 0 "#PWR0102" H 2450 2350 50  0001 C CNN
F 1 "GND" V 2450 2400 50  0000 C CNN
F 2 "" H 2450 2600 50  0001 C CNN
F 3 "" H 2450 2600 50  0001 C CNN
	1    2450 2600
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6068ACBF
P 2950 2300
F 0 "#PWR0103" H 2950 2050 50  0001 C CNN
F 1 "GND" V 2950 2100 50  0000 C CNN
F 2 "" H 2950 2300 50  0001 C CNN
F 3 "" H 2950 2300 50  0001 C CNN
	1    2950 2300
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6067A66E
P 4200 2600
F 0 "#PWR0104" H 4200 2350 50  0001 C CNN
F 1 "GND" V 4200 2400 50  0000 C CNN
F 2 "" H 4200 2600 50  0001 C CNN
F 3 "" H 4200 2600 50  0001 C CNN
	1    4200 2600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 606704CD
P 2650 2400
F 0 "J1" H 2700 2750 50  0000 C CNN
F 1 "Conn_1" H 2700 2650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 2650 2400 50  0001 C CNN
F 3 "~" H 2650 2400 50  0001 C CNN
	1    2650 2400
	1    0    0    -1  
$EndComp
Wire Notes Line
	2000 1650 4700 1650
Text Notes 2000 1650 0    118  ~ 0
Connector
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 606C30C3
P 8650 2150
F 0 "H1" V 8604 2300 50  0000 L CNN
F 1 "MountingHole_Pad" V 8695 2300 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad" H 8650 2150 50  0001 C CNN
F 3 "~" H 8650 2150 50  0001 C CNN
	1    8650 2150
	0    1    1    0   
$EndComp
Wire Notes Line
	7900 1650 9700 1650
Wire Notes Line
	9700 1650 9700 2750
Wire Notes Line
	9700 2750 7900 2750
Wire Notes Line
	7900 2750 7900 1650
$Comp
L power:GND #PWR0105
U 1 1 606C3F9B
P 8450 2250
F 0 "#PWR0105" H 8450 2000 50  0001 C CNN
F 1 "GND" H 8455 2077 50  0000 C CNN
F 2 "" H 8450 2250 50  0001 C CNN
F 3 "" H 8450 2250 50  0001 C CNN
	1    8450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2150 8450 2150
Wire Wire Line
	8450 2150 8450 2250
Text Notes 7900 1650 0    118  ~ 0
Mounting Hole
Wire Notes Line
	4700 1650 4700 3150
Wire Notes Line
	4700 3150 2000 3150
Wire Notes Line
	2000 3150 2000 1650
NoConn ~ 2450 2300
NoConn ~ 2450 2400
NoConn ~ 2450 2500
NoConn ~ 2950 2400
NoConn ~ 2950 2500
NoConn ~ 2950 2600
NoConn ~ 3900 2600
NoConn ~ 4000 2600
NoConn ~ 4100 2600
NoConn ~ 4000 2100
NoConn ~ 4100 2100
NoConn ~ 4200 2100
$EndSCHEMATC
