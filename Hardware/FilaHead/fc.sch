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
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 4000 2400 50  0001 C CNN
F 3 "~" H 4000 2400 50  0001 C CNN
	1    4000 2400
	0    -1   -1   0   
$EndComp
Text GLabel 4100 2100 1    50   Input ~ 0
SD_INIT
Text GLabel 4100 2600 3    50   Input ~ 0
CLK
Text GLabel 4000 2600 3    50   Input ~ 0
LE
Text GLabel 3900 2600 3    50   Input ~ 0
OE
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
Text Notes 1750 1650 0    118  ~ 0
Connectors
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 606C30C3
P 2500 4500
F 0 "H1" V 2454 4650 50  0000 L CNN
F 1 "MountingHole_Pad" V 2545 4650 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 2500 4500 50  0001 C CNN
F 3 "~" H 2500 4500 50  0001 C CNN
	1    2500 4500
	0    1    1    0   
$EndComp
Wire Notes Line
	1750 4000 3550 4000
Wire Notes Line
	3550 4000 3550 5100
Wire Notes Line
	3550 5100 1750 5100
Wire Notes Line
	1750 5100 1750 4000
$Comp
L power:GND #PWR0105
U 1 1 606C3F9B
P 2300 4600
F 0 "#PWR0105" H 2300 4350 50  0001 C CNN
F 1 "GND" H 2305 4427 50  0000 C CNN
F 2 "" H 2300 4600 50  0001 C CNN
F 3 "" H 2300 4600 50  0001 C CNN
	1    2300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4500 2300 4500
Wire Wire Line
	2300 4500 2300 4600
Text Notes 1750 4000 0    118  ~ 0
Mounting Hole
$Comp
L Connector:Conn_01x15_Female J1
U 1 1 606AB55F
P 2450 2550
F 0 "J1" H 2250 3350 50  0000 L CNN
F 1 "Conn_01x15_Female" H 2100 1750 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 2450 2550 50  0001 C CNN
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
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 2600 2550 50  0001 C CNN
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
A_VIN
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
Text Notes 2450 1750 0    50   ~ 0
USB
Text Notes 4800 1600 0    118  ~ 0
Connection
Wire Notes Line
	6600 1650 4800 1650
Wire Wire Line
	5550 2100 5800 2100
Wire Wire Line
	5550 2000 5800 2000
Text GLabel 5800 2000 2    50   Input ~ 0
CLK
Text GLabel 5550 2300 0    50   UnSpc ~ 0
PWM9
Text GLabel 5550 2200 0    50   UnSpc ~ 0
PWM6
Text GLabel 5550 2100 0    50   UnSpc ~ 0
PWM5
Text GLabel 5550 2000 0    50   UnSpc ~ 0
PWM3
Text GLabel 5800 2300 2    50   Input ~ 0
OE
Text GLabel 5800 2200 2    50   Input ~ 0
LE
Text GLabel 5800 2100 2    50   Input ~ 0
SD_INIT
Text GLabel 8250 2050 1    50   UnSpc ~ 0
A_5V
Text GLabel 8150 2050 1    50   UnSpc ~ 0
A_3V3
Text GLabel 8550 2450 2    50   UnSpc ~ 0
A_RST
Text GLabel 7550 2650 0    50   UnSpc ~ 0
D2
Text GLabel 7550 2550 0    50   UnSpc ~ 0
TX1
Text GLabel 7550 2450 0    50   UnSpc ~ 0
RX0
Text GLabel 8550 2550 2    50   UnSpc ~ 0
A_RST
Text Notes 7050 1600 0    118  ~ 0
Arduino Mount
$Comp
L power:GND #PWR0106
U 1 1 606BC8D0
P 8150 4050
F 0 "#PWR0106" H 8150 3800 50  0001 C CNN
F 1 "GND" V 8150 3850 50  0000 C CNN
F 2 "" H 8150 4050 50  0001 C CNN
F 3 "" H 8150 4050 50  0001 C CNN
	1    8150 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 606BBB1C
P 8050 4050
F 0 "#PWR0107" H 8050 3800 50  0001 C CNN
F 1 "GND" V 8050 3850 50  0000 C CNN
F 2 "" H 8050 4050 50  0001 C CNN
F 3 "" H 8050 4050 50  0001 C CNN
	1    8050 4050
	1    0    0    -1  
$EndComp
Text GLabel 7550 2750 0    50   UnSpc ~ 0
PWM3
Text GLabel 7550 2850 0    50   UnSpc ~ 0
D4
Text GLabel 7550 2950 0    50   UnSpc ~ 0
PWM5
Text GLabel 7550 3050 0    50   UnSpc ~ 0
PWM6
Text GLabel 7550 3150 0    50   UnSpc ~ 0
D7
Text GLabel 7550 3250 0    50   UnSpc ~ 0
D8
Text GLabel 7550 3350 0    50   UnSpc ~ 0
PWM9
Text GLabel 7550 3450 0    50   UnSpc ~ 0
PWM10
Text GLabel 7550 3550 0    50   UnSpc ~ 0
PWM11
Text GLabel 7550 3650 0    50   UnSpc ~ 0
D12
Text GLabel 7550 3750 0    50   UnSpc ~ 0
D13
Text GLabel 8550 2850 2    50   UnSpc ~ 0
A_REF
Text GLabel 8550 3050 2    50   UnSpc ~ 0
A0
Text GLabel 8550 3150 2    50   UnSpc ~ 0
A1
Text GLabel 8550 3250 2    50   UnSpc ~ 0
A2
Text GLabel 8550 3350 2    50   UnSpc ~ 0
A3
Text GLabel 8550 3450 2    50   UnSpc ~ 0
A4
Text GLabel 8550 3550 2    50   UnSpc ~ 0
A5
Text GLabel 8550 3650 2    50   UnSpc ~ 0
A6
Text GLabel 8550 3750 2    50   UnSpc ~ 0
A7
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 606AE12E
P 8050 3050
F 0 "A1" H 7750 1900 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" H 7600 2050 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 8050 3050 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 8050 3050 50  0001 C CNN
	1    8050 3050
	1    0    0    -1  
$EndComp
Wire Notes Line
	7050 1650 9100 1650
Wire Notes Line
	9100 1650 9100 4400
Wire Notes Line
	9100 4400 7050 4400
Wire Notes Line
	7050 4400 7050 1650
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J3
U 1 1 606CCC04
P 3750 3250
F 0 "J3" V 3900 3550 50  0000 C CNN
F 1 "Conn_2" V 3750 3600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 3750 3250 50  0001 C CNN
F 3 "~" H 3750 3250 50  0001 C CNN
	1    3750 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 606CE8DB
P 4050 3150
F 0 "#PWR0108" H 4050 2900 50  0001 C CNN
F 1 "GND" V 4050 2950 50  0000 C CNN
F 2 "" H 4050 3150 50  0001 C CNN
F 3 "" H 4050 3150 50  0001 C CNN
	1    4050 3150
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 606CEFB1
P 3550 3450
F 0 "#PWR0109" H 3550 3200 50  0001 C CNN
F 1 "GND" V 3550 3250 50  0000 C CNN
F 2 "" H 3550 3450 50  0001 C CNN
F 3 "" H 3550 3450 50  0001 C CNN
	1    3550 3450
	0    1    -1   0   
$EndComp
NoConn ~ 3550 3350
NoConn ~ 3550 3250
NoConn ~ 4050 3250
NoConn ~ 4050 3350
Wire Wire Line
	5550 2200 5800 2200
Wire Wire Line
	5550 2300 5800 2300
Text GLabel 7950 2050 1    50   UnSpc ~ 0
A_VIN
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 606E1364
P 2500 4200
F 0 "H2" V 2454 4350 50  0000 L CNN
F 1 "MountingHole_Pad" V 2545 4350 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 2500 4200 50  0001 C CNN
F 3 "~" H 2500 4200 50  0001 C CNN
	1    2500 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 4200 2300 4200
Wire Wire Line
	2300 4200 2300 4500
Connection ~ 2300 4500
Wire Notes Line
	6600 1650 6600 2650
Wire Notes Line
	6600 2650 4800 2650
Wire Notes Line
	4800 2650 4800 1650
NoConn ~ 4050 3450
NoConn ~ 3550 3150
NoConn ~ 4000 2100
NoConn ~ 4200 2100
$EndSCHEMATC
