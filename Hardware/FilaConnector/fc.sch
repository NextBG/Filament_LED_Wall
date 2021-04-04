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
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 4000 2400 50  0001 C CNN
F 3 "~" H 4000 2400 50  0001 C CNN
	1    4000 2400
	0    -1   -1   0   
$EndComp
Text GLabel 2950 2500 2    50   Input ~ 0
SD_1TO2
Text GLabel 4100 2600 3    50   Input ~ 0
SD_1TO2
Text GLabel 2450 2500 0    50   Input ~ 0
LE
Text GLabel 2450 2600 0    50   Input ~ 0
OE
Text GLabel 4100 2100 1    50   Input ~ 0
CLK
Text GLabel 4000 2100 1    50   Input ~ 0
LE
Text GLabel 3900 2100 1    50   Input ~ 0
OE
Text GLabel 2450 2400 0    50   Input ~ 0
CLK
Text Label 5500 2350 0    50   ~ 0
5v_PWR
Text Label 7100 2350 2    50   ~ 0
5v_CON1
Text Label 7100 2450 2    50   ~ 0
5v_CON2
Text Label 3350 2300 2    50   ~ 0
5v_CON1
Text Label 4600 2700 2    50   ~ 0
5v_CON2
Wire Wire Line
	2950 2300 3350 2300
Wire Wire Line
	7100 2350 6700 2350
Wire Wire Line
	6700 2450 7100 2450
$Comp
L power:GND #PWR0101
U 1 1 6069982E
P 3900 2600
F 0 "#PWR0101" H 3900 2350 50  0001 C CNN
F 1 "GND" V 3900 2400 50  0000 C CNN
F 2 "" H 3900 2600 50  0001 C CNN
F 3 "" H 3900 2600 50  0001 C CNN
	1    3900 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6067B802
P 2950 2600
F 0 "#PWR0102" H 2950 2350 50  0001 C CNN
F 1 "GND" V 2950 2400 50  0000 C CNN
F 2 "" H 2950 2600 50  0001 C CNN
F 3 "" H 2950 2600 50  0001 C CNN
	1    2950 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6068ACBF
P 2450 2300
F 0 "#PWR0103" H 2450 2050 50  0001 C CNN
F 1 "GND" V 2450 2100 50  0000 C CNN
F 2 "" H 2450 2300 50  0001 C CNN
F 3 "" H 2450 2300 50  0001 C CNN
	1    2450 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6067A66E
P 4200 2100
F 0 "#PWR0104" H 4200 1850 50  0001 C CNN
F 1 "GND" V 4200 1900 50  0000 C CNN
F 2 "" H 4200 2100 50  0001 C CNN
F 3 "" H 4200 2100 50  0001 C CNN
	1    4200 2100
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 606704CD
P 2650 2400
F 0 "J1" H 2700 2750 50  0000 C CNN
F 1 "Conn_1" H 2700 2650 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 2650 2400 50  0001 C CNN
F 3 "~" H 2650 2400 50  0001 C CNN
	1    2650 2400
	1    0    0    -1  
$EndComp
Text GLabel 2950 2400 2    50   Input ~ 0
SD_2TO1
Text GLabel 4000 2600 3    50   Input ~ 0
SD_2TO1
Wire Notes Line
	2000 1650 4700 1650
Text Notes 2000 1650 0    118  ~ 0
Connector
Wire Notes Line
	5150 1650 7450 1650
Wire Notes Line
	7450 1650 7450 3150
Wire Notes Line
	7450 3150 5150 3150
Wire Notes Line
	5150 3150 5150 1650
Text Notes 5150 1650 0    118  ~ 0
Power Selector
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 606C30C3
P 8650 2150
F 0 "H1" V 8604 2300 50  0000 L CNN
F 1 "MountingHole_Pad" V 8695 2300 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 8650 2150 50  0001 C CNN
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
$Comp
L Switch:SW_DIP_x02 SW1
U 1 1 606D1845
P 6400 2450
F 0 "SW1" H 6400 2817 50  0000 C CNN
F 1 "PowerSel" H 6400 2726 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx02_Slide_KingTek_DSHP02TS_W7.62mm_P1.27mm" H 6400 2450 50  0001 C CNN
F 3 "~" H 6400 2450 50  0001 C CNN
	1    6400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2350 6000 2350
Wire Wire Line
	6100 2450 6000 2450
Wire Wire Line
	6000 2450 6000 2350
Connection ~ 6000 2350
Wire Wire Line
	6000 2350 6100 2350
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 60677A8B
P 9150 3550
F 0 "J3" H 9250 3200 50  0000 C CNN
F 1 "PWR_IN" H 9250 3300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 9150 3550 50  0001 C CNN
F 3 "~" H 9150 3550 50  0001 C CNN
	1    9150 3550
	-1   0    0    1   
$EndComp
Text Label 8450 3450 0    50   ~ 0
5v_PWR
Wire Wire Line
	8450 3450 8950 3450
$Comp
L power:GND #PWR0106
U 1 1 60679E8F
P 8850 3650
F 0 "#PWR0106" H 8850 3400 50  0001 C CNN
F 1 "GND" H 8855 3477 50  0000 C CNN
F 2 "" H 8850 3650 50  0001 C CNN
F 3 "" H 8850 3650 50  0001 C CNN
	1    8850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3650 8850 3550
Wire Wire Line
	8850 3550 8950 3550
Wire Wire Line
	4200 2600 4200 2700
Wire Wire Line
	4200 2700 4600 2700
Wire Notes Line
	7900 3050 9700 3050
Wire Notes Line
	9700 3050 9700 4050
Wire Notes Line
	9700 4050 7900 4050
Wire Notes Line
	7900 4050 7900 3050
Text Notes 7900 3050 0    118  ~ 0
Power Input
$EndSCHEMATC
