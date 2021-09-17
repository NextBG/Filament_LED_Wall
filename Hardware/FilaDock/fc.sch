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
Text Label 5750 2350 0    50   ~ 0
5v_PWR
Text Label 6950 2600 2    50   ~ 0
5v_CON1
Text Label 5750 2600 0    50   ~ 0
5v_CON2
Text Label 3350 2300 2    50   ~ 0
5v_CON1
Wire Wire Line
	2950 2300 3350 2300
Wire Wire Line
	6950 2600 6550 2600
Wire Wire Line
	6150 2600 5750 2600
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
Text Notes 5150 1650 0    118  ~ 0
Power Selector
Wire Notes Line
	4700 3150 2000 3150
Wire Notes Line
	2000 3150 2000 1650
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 60677A8B
P 9150 2150
F 0 "J3" H 9250 1800 50  0000 C CNN
F 1 "PWR_IN" H 9250 1900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 9150 2150 50  0001 C CNN
F 3 "~" H 9150 2150 50  0001 C CNN
	1    9150 2150
	-1   0    0    1   
$EndComp
Text Label 8450 2050 0    50   ~ 0
5v_PWR
Wire Wire Line
	8450 2050 8950 2050
$Comp
L power:GND #PWR0106
U 1 1 60679E8F
P 8850 2250
F 0 "#PWR0106" H 8850 2000 50  0001 C CNN
F 1 "GND" H 8855 2077 50  0000 C CNN
F 2 "" H 8850 2250 50  0001 C CNN
F 3 "" H 8850 2250 50  0001 C CNN
	1    8850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2250 8850 2150
Wire Wire Line
	8850 2150 8950 2150
Wire Notes Line
	7900 1650 9700 1650
Wire Notes Line
	9700 1650 9700 2650
Wire Notes Line
	9700 2650 7900 2650
Wire Notes Line
	7900 2650 7900 1650
Text Notes 7900 1650 0    118  ~ 0
Power Input
Wire Wire Line
	4200 2700 4600 2700
Wire Wire Line
	4200 2600 4200 2700
Wire Notes Line
	4700 1650 4700 3150
Wire Notes Line
	5150 3150 5150 1650
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
Text Label 4600 2700 2    50   ~ 0
5v_CON2
NoConn ~ 4000 2100
NoConn ~ 3900 2100
NoConn ~ 4100 2100
NoConn ~ 4000 2600
NoConn ~ 4100 2600
NoConn ~ 2950 2400
NoConn ~ 2950 2500
NoConn ~ 2450 2400
NoConn ~ 2450 2500
NoConn ~ 2450 2600
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 613DBF10
P 6350 2600
F 0 "JP1" H 6350 2713 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 6350 2804 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6350 2600 50  0001 C CNN
F 3 "~" H 6350 2600 50  0001 C CNN
	1    6350 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 2350 6350 2350
Wire Wire Line
	6350 2450 6350 2350
$EndSCHEMATC
