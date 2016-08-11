EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:MAX7221
LIBS:MCP23S17
LIBS:MCP23017
LIBS:Pi2_Connector
LIBS:v1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 25 36
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 5050 4200
NoConn ~ 5050 4500
$Comp
L VDD #PWR23
U 1 1 57A50722
P 4700 4050
F 0 "#PWR23" H 4700 3900 50  0001 C CNN
F 1 "VDD" H 4700 4200 50  0000 C CNN
F 2 "" H 4700 4050 50  0000 C CNN
F 3 "" H 4700 4050 50  0000 C CNN
	1    4700 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR24
U 1 1 57A5073A
P 4700 4250
F 0 "#PWR24" H 4700 4000 50  0001 C CNN
F 1 "GND" H 4700 4100 50  0000 C CNN
F 2 "" H 4700 4250 50  0000 C CNN
F 3 "" H 4700 4250 50  0000 C CNN
	1    4700 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR28
U 1 1 57A5092D
P 7850 4550
F 0 "#PWR28" H 7850 4300 50  0001 C CNN
F 1 "GND" H 7850 4400 50  0000 C CNN
F 2 "" H 7850 4550 50  0000 C CNN
F 3 "" H 7850 4550 50  0000 C CNN
	1    7850 4550
	1    0    0    -1  
$EndComp
NoConn ~ 6550 4100
NoConn ~ 6550 4000
$Comp
L SWITCH_INV SW1
U 1 1 57A509FB
P 1500 1500
F 0 "SW1" H 1300 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 1350 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 1500 1500 50  0001 C CNN
F 3 "" H 1500 1500 50  0000 C CNN
	1    1500 1500
	0    1    1    0   
$EndComp
NoConn ~ 1600 2000
$Comp
L SWITCH_INV SW2
U 1 1 57A50B56
P 2000 1500
F 0 "SW2" H 1800 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 1850 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 2000 1500 50  0001 C CNN
F 3 "" H 2000 1500 50  0000 C CNN
	1    2000 1500
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW3
U 1 1 57A50B78
P 2450 1500
F 0 "SW3" H 2250 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 2300 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 2450 1500 50  0001 C CNN
F 3 "" H 2450 1500 50  0000 C CNN
	1    2450 1500
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW4
U 1 1 57A50B9D
P 2900 1500
F 0 "SW4" H 2700 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 2750 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 2900 1500 50  0001 C CNN
F 3 "" H 2900 1500 50  0000 C CNN
	1    2900 1500
	0    1    1    0   
$EndComp
NoConn ~ 3000 2000
NoConn ~ 2550 2000
NoConn ~ 2100 2000
$Comp
L SWITCH_INV SW5
U 1 1 57A50EC9
P 3400 1500
F 0 "SW5" H 3200 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 3250 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 3400 1500 50  0001 C CNN
F 3 "" H 3400 1500 50  0000 C CNN
	1    3400 1500
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW6
U 1 1 57A50ECF
P 3900 1500
F 0 "SW6" H 3700 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 3750 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 3900 1500 50  0001 C CNN
F 3 "" H 3900 1500 50  0000 C CNN
	1    3900 1500
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW7
U 1 1 57A50ED5
P 4350 1500
F 0 "SW7" H 4150 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 4200 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 4350 1500 50  0001 C CNN
F 3 "" H 4350 1500 50  0000 C CNN
	1    4350 1500
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW8
U 1 1 57A50EDB
P 4800 1500
F 0 "SW8" H 4600 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 4650 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 4800 1500 50  0001 C CNN
F 3 "" H 4800 1500 50  0000 C CNN
	1    4800 1500
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW9
U 1 1 57A5119F
P 6950 1500
F 0 "SW9" H 6750 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 6800 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 6950 1500 50  0001 C CNN
F 3 "" H 6950 1500 50  0000 C CNN
	1    6950 1500
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW10
U 1 1 57A511A5
P 7450 1500
F 0 "SW10" H 7250 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 7300 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 7450 1500 50  0001 C CNN
F 3 "" H 7450 1500 50  0000 C CNN
	1    7450 1500
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW11
U 1 1 57A511AB
P 7900 1500
F 0 "SW11" H 7700 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 7750 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 7900 1500 50  0001 C CNN
F 3 "" H 7900 1500 50  0000 C CNN
	1    7900 1500
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW12
U 1 1 57A511B1
P 8350 1500
F 0 "SW12" H 8150 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 8200 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 8350 1500 50  0001 C CNN
F 3 "" H 8350 1500 50  0000 C CNN
	1    8350 1500
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW13
U 1 1 57A511B7
P 8850 1500
F 0 "SW13" H 8650 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 8700 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 8850 1500 50  0001 C CNN
F 3 "" H 8850 1500 50  0000 C CNN
	1    8850 1500
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW14
U 1 1 57A511BD
P 9350 1500
F 0 "SW14" H 9150 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 9200 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 9350 1500 50  0001 C CNN
F 3 "" H 9350 1500 50  0000 C CNN
	1    9350 1500
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW15
U 1 1 57A511C3
P 9800 1500
F 0 "SW15" H 9600 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 9650 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 9800 1500 50  0001 C CNN
F 3 "" H 9800 1500 50  0000 C CNN
	1    9800 1500
	0    1    1    0   
$EndComp
$Comp
L SWITCH_INV SW16
U 1 1 57A511C9
P 10250 1500
F 0 "SW16" H 10050 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 10100 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 10250 1500 50  0001 C CNN
F 3 "" H 10250 1500 50  0000 C CNN
	1    10250 1500
	0    1    1    0   
$EndComp
NoConn ~ 3500 2000
NoConn ~ 4000 2000
NoConn ~ 4450 2000
NoConn ~ 4900 2000
NoConn ~ 7050 2000
NoConn ~ 7550 2000
NoConn ~ 8000 2000
NoConn ~ 8450 2000
NoConn ~ 8950 2000
NoConn ~ 9900 2000
NoConn ~ 10350 2000
NoConn ~ 9450 2000
Wire Wire Line
	6550 4200 6650 4200
Wire Wire Line
	6850 2000 6850 3200
Wire Wire Line
	6850 3200 6550 3200
Wire Wire Line
	7350 2000 7350 3300
Wire Wire Line
	7350 3300 6550 3300
Wire Wire Line
	7800 2000 7800 3400
Wire Wire Line
	7800 3400 6550 3400
Wire Wire Line
	8250 2000 8250 3500
Wire Wire Line
	8250 3500 6550 3500
Wire Wire Line
	8750 2000 8750 3600
Wire Wire Line
	8750 3600 6550 3600
Wire Wire Line
	6550 3700 9250 3700
Wire Wire Line
	9250 3700 9250 2000
Wire Wire Line
	9700 2000 9700 3800
Wire Wire Line
	9700 3800 6550 3800
Wire Wire Line
	6550 3900 10150 3900
Wire Wire Line
	10150 3900 10150 2000
Wire Wire Line
	4800 4000 5050 4000
Wire Wire Line
	4850 4100 5050 4100
Wire Wire Line
	4800 4100 4800 4000
Wire Wire Line
	4850 4150 4850 4100
$Comp
L GND #PWR20
U 1 1 57A5373D
P 850 1050
F 0 "#PWR20" H 850 800 50  0001 C CNN
F 1 "GND" H 850 900 50  0000 C CNN
F 2 "" H 850 1050 50  0000 C CNN
F 3 "" H 850 1050 50  0000 C CNN
	1    850  1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1050 850  1000
Wire Wire Line
	850  1000 4800 1000
Connection ~ 1500 1000
Connection ~ 2000 1000
Connection ~ 2450 1000
Connection ~ 2900 1000
Connection ~ 3400 1000
Connection ~ 3900 1000
Connection ~ 4350 1000
Wire Wire Line
	6150 1000 10250 1000
Connection ~ 9800 1000
Connection ~ 9350 1000
Connection ~ 8850 1000
Connection ~ 8350 1000
Connection ~ 7900 1000
Connection ~ 7450 1000
Wire Wire Line
	6150 1100 6150 1000
Connection ~ 6950 1000
$Comp
L GND #PWR25
U 1 1 57A54116
P 6150 1100
F 0 "#PWR25" H 6150 850 50  0001 C CNN
F 1 "GND" H 6150 950 50  0000 C CNN
F 2 "" H 6150 1100 50  0000 C CNN
F 3 "" H 6150 1100 50  0000 C CNN
	1    6150 1100
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR22
U 1 1 57A547CB
P 1850 4200
F 0 "#PWR22" H 1850 4050 50  0001 C CNN
F 1 "VDD" H 1850 4350 50  0000 C CNN
F 2 "" H 1850 4200 50  0000 C CNN
F 3 "" H 1850 4200 50  0000 C CNN
	1    1850 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR21
U 1 1 57A54805
P 1850 3800
F 0 "#PWR21" H 1850 3550 50  0001 C CNN
F 1 "GND" H 1850 3650 50  0000 C CNN
F 2 "" H 1850 3800 50  0000 C CNN
F 3 "" H 1850 3800 50  0000 C CNN
	1    1850 3800
	1    0    0    -1  
$EndComp
Text Label 2050 4300 2    60   ~ 0
SDA
Text Label 2050 4400 2    60   ~ 0
SCK
Text Label 5050 4300 2    60   ~ 0
SCK
Text Label 5050 4400 2    60   ~ 0
SDA
Wire Wire Line
	4800 4100 4700 4100
Wire Wire Line
	4700 4100 4700 4050
Wire Wire Line
	4850 4150 4700 4150
Wire Wire Line
	4700 4150 4700 4250
$Comp
L VDD #PWR26
U 1 1 57A54F92
P 6650 4200
F 0 "#PWR26" H 6650 4050 50  0001 C CNN
F 1 "VDD" H 6650 4350 50  0000 C CNN
F 2 "" H 6650 4200 50  0000 C CNN
F 3 "" H 6650 4200 50  0000 C CNN
	1    6650 4200
	1    0    0    -1  
$EndComp
$Comp
L MCP23017 U6
U 1 1 57A494D1
P 5800 3850
F 0 "U6" H 5800 3750 50  0000 C CNN
F 1 "MCP23017" H 5800 3950 50  0000 C CNN
F 2 "DIL28:DIL28" H 5800 3850 50  0001 C CNN
F 3 "DOCUMENTATION" H 5800 3850 50  0001 C CNN
	1    5800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2000 4700 3900
Wire Wire Line
	4700 3900 5050 3900
Wire Wire Line
	5050 3800 4250 3800
Wire Wire Line
	4250 3800 4250 2000
Wire Wire Line
	5050 3700 3800 3700
Wire Wire Line
	3800 3700 3800 2000
Wire Wire Line
	5050 3600 3300 3600
Wire Wire Line
	3300 3600 3300 2000
Wire Wire Line
	5050 3500 2800 3500
Wire Wire Line
	2800 3500 2800 2000
Wire Wire Line
	5050 3400 2350 3400
Wire Wire Line
	2350 3400 2350 2000
Wire Wire Line
	5050 3300 1900 3300
Wire Wire Line
	1900 3300 1900 2000
Wire Wire Line
	5050 3200 1400 3200
Wire Wire Line
	1400 3200 1400 2000
$Comp
L CONN_01X04 P26
U 1 1 57A9BB33
P 2250 4250
F 0 "P26" H 2250 4500 50  0000 C CNN
F 1 "CONN_01X04" V 2350 4250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04" H 2250 3950 50  0000 C CNN
F 3 "" H 2250 4250 50  0000 C CNN
	1    2250 4250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P27
U 1 1 57A9C3B9
P 6750 4400
F 0 "P27" H 6750 4600 50  0000 C CNN
F 1 "CONN_01X03" V 6850 4400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6750 4400 50  0001 C CNN
F 3 "" H 6750 4400 50  0000 C CNN
	1    6750 4400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P29
U 1 1 57A9C500
P 8050 4400
F 0 "P29" H 8050 4600 50  0000 C CNN
F 1 "CONN_01X03" V 8150 4400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 8050 4400 50  0001 C CNN
F 3 "" H 8050 4400 50  0000 C CNN
	1    8050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4550 7850 4300
Wire Wire Line
	7850 4500 7850 4400
Connection ~ 7850 4400
Connection ~ 7850 4500
$Comp
L VDD #PWR27
U 1 1 57A9C86C
P 7200 4150
F 0 "#PWR27" H 7200 4000 50  0001 C CNN
F 1 "VDD" H 7200 4300 50  0000 C CNN
F 2 "" H 7200 4150 50  0000 C CNN
F 3 "" H 7200 4150 50  0000 C CNN
	1    7200 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4150 7200 4300
Wire Wire Line
	7200 4300 7300 4300
$Comp
L CONN_01X03 P28
U 1 1 57A9CB31
P 7500 4400
F 0 "P28" H 7500 4600 50  0000 C CNN
F 1 "CONN_01X03" V 7600 4400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 7500 4400 50  0001 C CNN
F 3 "" H 7500 4400 50  0000 C CNN
	1    7500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4300 7300 4500
Connection ~ 7300 4400
Connection ~ 7300 4300
Wire Wire Line
	1850 4200 2050 4200
Wire Wire Line
	1850 3800 2050 3800
Wire Wire Line
	2050 3800 2050 4100
$EndSCHEMATC
