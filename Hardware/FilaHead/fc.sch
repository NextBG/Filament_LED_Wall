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
L Connector_Generic:Conn_02x04_Odd_Even J0
U 1 1 60670B57
P 4000 2400
F 0 "J0" V 4150 2700 50  0000 C CNN
F 1 "Conn_2" V 4000 2750 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 4000 2400 50  0001 C CNN
F 3 "~" H 4000 2400 50  0001 C CNN
	1    4000 2400
	0    -1   -1   0   
$EndComp
Text GLabel 4100 2600 3    50   Input ~ 0
SD_INIT
Text GLabel 4100 2100 1    50   Input ~ 0
CLK
Text GLabel 4000 2100 1    50   Input ~ 0
LE
Text GLabel 3900 2100 1    50   Input ~ 0
OE
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
Text Notes 1750 1650 0    118  ~ 0
Connectors
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
NoConn ~ 4000 2600
NoConn ~ 4200 2600
$Comp
L Connector:Conn_01x15_Female J1
U 1 1 606AB55F
P 2450 2550
F 0 "J1" H 2250 3350 50  0000 L CNN
F 1 "Conn_01x15_Female" H 2100 1750 50  0000 L CNN
F 2 "" H 2450 2550 50  0001 C CNN
F 3 "~" H 2450 2550 50  0001 C CNN
	1    2450 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Female J2
U 1 1 606AD4D1
P 2600 2550
F 0 "J2" H 2350 1750 50  0000 L CNN
F 1 "Conn_01x15_Female" H 2300 3450 50  0000 L CNN
F 2 "" H 2600 2550 50  0001 C CNN
F 3 "~" H 2600 2550 50  0001 C CNN
	1    2600 2550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 606B33C3
P 2800 2950
F 0 "#PWR0102" H 2800 2700 50  0001 C CNN
F 1 "GND" V 2800 2750 50  0000 C CNN
F 2 "" H 2800 2950 50  0001 C CNN
F 3 "" H 2800 2950 50  0001 C CNN
	1    2800 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 606B4487
P 2250 3150
F 0 "#PWR0103" H 2250 2900 50  0001 C CNN
F 1 "GND" V 2250 2950 50  0000 C CNN
F 2 "" H 2250 3150 50  0001 C CNN
F 3 "" H 2250 3150 50  0001 C CNN
	1    2250 3150
	0    1    1    0   
$EndComp
Text GLabel 2800 3250 2    50   UnSpc ~ 0
TX1
Text GLabel 2800 3150 2    50   UnSpc ~ 0
RX0
Text GLabel 2800 3050 2    50   UnSpc ~ 0
A_RST
Text GLabel 2800 2850 2    50   UnSpc ~ 0
D2
Text GLabel 2800 2750 2    50   UnSpc ~ 0
PWM3
Text GLabel 2800 2650 2    50   UnSpc ~ 0
D4
Text GLabel 2800 2550 2    50   UnSpc ~ 0
PWM5
Text GLabel 2800 2450 2    50   UnSpc ~ 0
PWM6
Text GLabel 2800 2350 2    50   UnSpc ~ 0
D7
Text GLabel 2800 2250 2    50   UnSpc ~ 0
D8
Text GLabel 2800 2150 2    50   UnSpc ~ 0
PWM9
Text GLabel 2800 2050 2    50   UnSpc ~ 0
PWM10
Text GLabel 2800 1950 2    50   UnSpc ~ 0
PWM11
Text GLabel 2800 1850 2    50   UnSpc ~ 0
D12
Text GLabel 2250 1850 0    50   UnSpc ~ 0
D13
Text GLabel 2250 1950 0    50   UnSpc ~ 0
A_3V3
Text GLabel 2250 2050 0    50   UnSpc ~ 0
A_REF
Text GLabel 2250 2150 0    50   UnSpc ~ 0
A0
Text GLabel 2250 2250 0    50   UnSpc ~ 0
A1
Text GLabel 2250 2350 0    50   UnSpc ~ 0
A2
Text GLabel 2250 2450 0    50   UnSpc ~ 0
A3
Text GLabel 2250 2550 0    50   UnSpc ~ 0
A4
Text GLabel 2250 2650 0    50   UnSpc ~ 0
A5
Text GLabel 2250 2750 0    50   UnSpc ~ 0
A6
Text GLabel 2250 2850 0    50   UnSpc ~ 0
A7
Text GLabel 2250 2950 0    50   UnSpc ~ 0
A_5V
Text GLabel 2250 3050 0    50   UnSpc ~ 0
A_RST
Text GLabel 2250 3250 0    50   UnSpc ~ 0
A_5V
Text Notes 3100 2100 0    50   ~ 0
SS
Text Notes 3100 2000 0    50   ~ 0
MOSI
Text Notes 3000 1900 0    50   ~ 0
MISO
Text Notes 3000 3300 0    50   ~ 0
UART_OUT
Text Notes 3000 3200 0    50   ~ 0
UART_IN
Text Notes 2050 1900 2    50   ~ 0
SCK
Text Notes 2100 2400 2    50   ~ 0
SCL
Text Notes 2100 2500 2    50   ~ 0
SDA
Text Notes 1950 2450 2    50   ~ 0
I2C
Wire Notes Line
	1750 1650 4400 1650
Wire Notes Line
	4400 1650 4400 3550
Wire Notes Line
	4400 3550 1750 3550
Wire Notes Line
	1750 3550 1750 1650
Text GLabel 5500 2250 2    50   Input ~ 0
SD_INIT
Text GLabel 5500 2150 2    50   Input ~ 0
LE
Text GLabel 5500 1950 2    50   Input ~ 0
OE
Text GLabel 5250 1750 0    50   UnSpc ~ 0
RX0
Text GLabel 5250 1850 0    50   UnSpc ~ 0
TX1
Text GLabel 5250 1950 0    50   UnSpc ~ 0
D2
Text GLabel 5250 2050 0    50   UnSpc ~ 0
PWM3
Text GLabel 5250 2150 0    50   UnSpc ~ 0
D4
Text GLabel 5250 2250 0    50   UnSpc ~ 0
PWM5
Text GLabel 5250 2350 0    50   UnSpc ~ 0
PWM6
Text GLabel 5250 2450 0    50   UnSpc ~ 0
D7
Text GLabel 5250 2550 0    50   UnSpc ~ 0
D8
Text GLabel 5250 2650 0    50   UnSpc ~ 0
PWM9
Text GLabel 5250 2750 0    50   UnSpc ~ 0
PWM10
Text GLabel 5250 2850 0    50   UnSpc ~ 0
PWM11
Text GLabel 5250 2950 0    50   UnSpc ~ 0
D12
Text GLabel 5250 3050 0    50   UnSpc ~ 0
D13
Text GLabel 6300 1800 0    50   UnSpc ~ 0
A_RST
Text GLabel 6300 1900 0    50   UnSpc ~ 0
A_3V3
Text GLabel 6300 2000 0    50   UnSpc ~ 0
A_5V
Text GLabel 6300 2100 0    50   UnSpc ~ 0
A_REF
Text GLabel 6300 2300 0    50   UnSpc ~ 0
A0
Text GLabel 6300 2400 0    50   UnSpc ~ 0
A1
Text GLabel 6300 2500 0    50   UnSpc ~ 0
A2
Text GLabel 6300 2600 0    50   UnSpc ~ 0
A3
Text GLabel 6300 2700 0    50   UnSpc ~ 0
A4
Text GLabel 6300 2800 0    50   UnSpc ~ 0
A5
Text GLabel 6300 2900 0    50   UnSpc ~ 0
A6
Text GLabel 6300 3000 0    50   UnSpc ~ 0
A7
NoConn ~ 6300 2100
NoConn ~ 6300 2000
NoConn ~ 6300 1900
NoConn ~ 6300 1800
Text Notes 2450 1750 0    50   ~ 0
USB
NoConn ~ 5250 1750
NoConn ~ 5250 1850
NoConn ~ 5250 2350
NoConn ~ 5250 2450
NoConn ~ 5250 2550
NoConn ~ 5250 2650
NoConn ~ 5250 2750
NoConn ~ 5250 2850
NoConn ~ 5250 2950
NoConn ~ 5250 3050
Text GLabel 5500 2050 2    50   Input ~ 0
CLK
Wire Wire Line
	5250 1950 5500 1950
Wire Wire Line
	5250 2050 5500 2050
Wire Wire Line
	5250 2150 5500 2150
Wire Wire Line
	5250 2250 5500 2250
NoConn ~ 6300 2300
NoConn ~ 6300 2400
NoConn ~ 6300 2500
NoConn ~ 6300 2600
NoConn ~ 6300 2700
NoConn ~ 6300 2800
NoConn ~ 6300 2900
NoConn ~ 6300 3000
Text Notes 4800 1600 0    118  ~ 0
Connection
Wire Notes Line
	4800 1650 4800 3250
Wire Notes Line
	4800 3250 6600 3250
Wire Notes Line
	6600 3250 6600 1650
Wire Notes Line
	6600 1650 4800 1650
$EndSCHEMATC
