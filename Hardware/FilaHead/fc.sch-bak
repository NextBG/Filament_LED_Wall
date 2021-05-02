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
Text GLabel 4100 2100 1    50   Input ~ 0
CLK
Text GLabel 4000 2100 1    50   Input ~ 0
LE
Text GLabel 3900 2100 1    50   Input ~ 0
OE
Text Label 7100 2450 0    50   ~ 0
5v_PWR
Text Label 5500 2350 2    50   ~ 0
5v_CON2
Wire Wire Line
	6700 2450 7100 2450
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
P 3250 4100
F 0 "J3" H 3350 3750 50  0000 C CNN
F 1 "PWR_IN" H 3350 3850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 3250 4100 50  0001 C CNN
F 3 "~" H 3250 4100 50  0001 C CNN
	1    3250 4100
	-1   0    0    1   
$EndComp
Text Label 2550 4000 0    50   ~ 0
5v_PWR
Wire Wire Line
	2550 4000 3050 4000
$Comp
L power:GND #PWR0106
U 1 1 60679E8F
P 2950 4200
F 0 "#PWR0106" H 2950 3950 50  0001 C CNN
F 1 "GND" H 2955 4027 50  0000 C CNN
F 2 "" H 2950 4200 50  0001 C CNN
F 3 "" H 2950 4200 50  0001 C CNN
	1    2950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4200 2950 4100
Wire Wire Line
	2950 4100 3050 4100
Wire Notes Line
	2000 3600 3800 3600
Wire Notes Line
	3800 3600 3800 4600
Wire Notes Line
	3800 4600 2000 4600
Wire Notes Line
	2000 4600 2000 3600
Text Notes 2000 3600 0    118  ~ 0
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
Text GLabel 4100 2600 3    50   Input ~ 0
SD_INIT
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 608EC3D4
P 9000 3950
F 0 "A1" H 9000 3900 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" H 9000 2700 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 9000 3950 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 9000 3950 50  0001 C CNN
	1    9000 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Female J1
U 1 1 608EF214
P 6250 4350
F 0 "J1" H 6200 5300 50  0000 L CNN
F 1 "Conn_01x15_Female" H 5550 5200 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 6250 4350 50  0001 C CNN
F 3 "~" H 6250 4350 50  0001 C CNN
	1    6250 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Female J4
U 1 1 608EFF91
P 6450 4350
F 0 "J4" H 6450 3400 50  0000 C CNN
F 1 "Conn_01x15_Female" H 6150 3500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 6450 4350 50  0001 C CNN
F 3 "~" H 6450 4350 50  0001 C CNN
	1    6450 4350
	-1   0    0    1   
$EndComp
Text GLabel 6050 3650 0    50   UnSpc ~ 0
D13
Text GLabel 6050 3750 0    50   UnSpc ~ 0
A_3V3
Text GLabel 6050 3850 0    50   UnSpc ~ 0
A_REF
Text GLabel 6050 3950 0    50   UnSpc ~ 0
A0
Text GLabel 6050 4050 0    50   UnSpc ~ 0
A1
Text GLabel 6050 4150 0    50   UnSpc ~ 0
A2
Text GLabel 6050 4250 0    50   UnSpc ~ 0
A3
Text GLabel 6050 4350 0    50   UnSpc ~ 0
A4
Text GLabel 6050 4450 0    50   UnSpc ~ 0
A5
Text GLabel 6050 4550 0    50   UnSpc ~ 0
A6
Text GLabel 6050 4650 0    50   UnSpc ~ 0
A7
Text GLabel 6050 4750 0    50   UnSpc ~ 0
A_5V
Text GLabel 6050 5050 0    50   UnSpc ~ 0
A_VIN
Text GLabel 6050 4850 0    50   UnSpc ~ 0
A_RST
$Comp
L power:GND #PWR0102
U 1 1 6090D0C4
P 6050 4950
F 0 "#PWR0102" H 6050 4700 50  0001 C CNN
F 1 "GND" H 6055 4777 50  0000 C CNN
F 2 "" H 6050 4950 50  0001 C CNN
F 3 "" H 6050 4950 50  0001 C CNN
	1    6050 4950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6090EA24
P 9000 4950
F 0 "#PWR0103" H 9000 4700 50  0001 C CNN
F 1 "GND" H 9005 4777 50  0000 C CNN
F 2 "" H 9000 4950 50  0001 C CNN
F 3 "" H 9000 4950 50  0001 C CNN
	1    9000 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6090F687
P 9100 4950
F 0 "#PWR0105" H 9100 4700 50  0001 C CNN
F 1 "GND" H 9105 4777 50  0000 C CNN
F 2 "" H 9100 4950 50  0001 C CNN
F 3 "" H 9100 4950 50  0001 C CNN
	1    9100 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 6090DF0E
P 6650 4750
F 0 "#PWR0107" H 6650 4500 50  0001 C CNN
F 1 "GND" H 6655 4577 50  0000 C CNN
F 2 "" H 6650 4750 50  0001 C CNN
F 3 "" H 6650 4750 50  0001 C CNN
	1    6650 4750
	0    -1   -1   0   
$EndComp
Text GLabel 6650 5050 2    50   UnSpc ~ 0
TX1
Text GLabel 6650 4950 2    50   UnSpc ~ 0
RX0
Text GLabel 6650 4850 2    50   UnSpc ~ 0
A_RST
Text GLabel 6650 3650 2    50   UnSpc ~ 0
D12
Text GLabel 6650 4650 2    50   UnSpc ~ 0
D2
Text GLabel 6650 4550 2    50   UnSpc ~ 0
PWM3
Text GLabel 6650 4450 2    50   UnSpc ~ 0
D4
Text GLabel 6650 4350 2    50   UnSpc ~ 0
PWM5
Text GLabel 6650 4250 2    50   UnSpc ~ 0
PWM6
Text GLabel 6650 4150 2    50   UnSpc ~ 0
D7
Text GLabel 6650 4050 2    50   UnSpc ~ 0
D8
Text GLabel 6650 3950 2    50   UnSpc ~ 0
PWM9
Text GLabel 6650 3850 2    50   UnSpc ~ 0
PWM10
Text GLabel 6650 3750 2    50   UnSpc ~ 0
PWM11
Text GLabel 8500 3450 0    50   UnSpc ~ 0
TX1
Text GLabel 8500 3350 0    50   UnSpc ~ 0
RX0
Text GLabel 9500 3450 2    50   UnSpc ~ 0
A_RST
Text GLabel 8500 4550 0    50   UnSpc ~ 0
D12
Text GLabel 8500 3550 0    50   UnSpc ~ 0
D2
Text GLabel 8500 3650 0    50   UnSpc ~ 0
PWM3
Text GLabel 8500 3750 0    50   UnSpc ~ 0
D4
Text GLabel 8500 3850 0    50   UnSpc ~ 0
PWM5
Text GLabel 8500 3950 0    50   UnSpc ~ 0
PWM6
Text GLabel 8500 4050 0    50   UnSpc ~ 0
D7
Text GLabel 8500 4150 0    50   UnSpc ~ 0
D8
Text GLabel 8500 4250 0    50   UnSpc ~ 0
PWM9
Text GLabel 8500 4350 0    50   UnSpc ~ 0
PWM10
Text GLabel 8500 4450 0    50   UnSpc ~ 0
PWM11
Text GLabel 8500 4650 0    50   UnSpc ~ 0
D13
Text GLabel 9100 2950 1    50   UnSpc ~ 0
A_3V3
Text GLabel 9500 3750 2    50   UnSpc ~ 0
A_REF
Text GLabel 9500 3950 2    50   UnSpc ~ 0
A0
Text GLabel 9500 4050 2    50   UnSpc ~ 0
A1
Text GLabel 9500 4150 2    50   UnSpc ~ 0
A2
Text GLabel 9500 4250 2    50   UnSpc ~ 0
A3
Text GLabel 9500 4350 2    50   UnSpc ~ 0
A4
Text GLabel 9500 4450 2    50   UnSpc ~ 0
A5
Text GLabel 9500 4550 2    50   UnSpc ~ 0
A6
Text GLabel 9500 4650 2    50   UnSpc ~ 0
A7
Text GLabel 9200 2950 1    50   UnSpc ~ 0
A_5V
Text GLabel 8900 2950 1    50   UnSpc ~ 0
A_VIN
Text GLabel 9500 3350 2    50   UnSpc ~ 0
A_RST
Text GLabel 6700 2350 2    50   UnSpc ~ 0
A_5V
NoConn ~ 4000 2600
Text GLabel 4800 4400 0    50   Input ~ 0
SD_INIT
Text GLabel 4600 4550 0    50   Input ~ 0
LE
Text GLabel 4600 4700 0    50   Input ~ 0
OE
Text GLabel 4900 4250 2    50   UnSpc ~ 0
PWM3
Text GLabel 4900 4400 2    50   UnSpc ~ 0
PWM5
Text GLabel 4900 4550 2    50   UnSpc ~ 0
PWM6
Text GLabel 4900 4700 2    50   UnSpc ~ 0
PWM9
Text GLabel 4650 4250 0    50   Input ~ 0
CLK
Wire Wire Line
	4650 4250 4900 4250
Wire Wire Line
	4800 4400 4900 4400
Wire Wire Line
	4600 4550 4900 4550
Wire Wire Line
	4600 4700 4900 4700
$EndSCHEMATC
