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
Sheet 1 36
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
L SWITCH_INV SW4_PROGDISP1
U 1 1 57ABB255
P 8950 3400
F 0 "SW4_PROGDISP1" H 8750 3550 50  0000 C CNN
F 1 "SWITCH_INV" H 8800 3250 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 8950 3400 50  0001 C CNN
F 3 "" H 8950 3400 50  0000 C CNN
	1    8950 3400
	-1   0    0    1   
$EndComp
$Comp
L SWITCH_INV SW5_TIL1
U 1 1 57ABB25C
P 8950 3900
F 0 "SW5_TIL1" H 8750 4050 50  0000 C CNN
F 1 "SWITCH_INV" H 8800 3750 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 8950 3900 50  0001 C CNN
F 3 "" H 8950 3900 50  0000 C CNN
	1    8950 3900
	-1   0    0    1   
$EndComp
$Comp
L SWITCH_INV SW6_INIT1
U 1 1 57ABB263
P 8950 4400
F 0 "SW6_INIT1" H 8750 4550 50  0000 C CNN
F 1 "SWITCH_INV" H 8800 4250 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 8950 4400 50  0001 C CNN
F 3 "" H 8950 4400 50  0000 C CNN
	1    8950 4400
	-1   0    0    1   
$EndComp
Connection ~ 9450 3400
$Comp
L GND #PWR61
U 1 1 57ABB26D
P 3100 2850
F 0 "#PWR61" H 3100 2600 50  0001 C CNN
F 1 "GND" H 3100 2700 50  0000 C CNN
F 2 "" H 3100 2850 50  0000 C CNN
F 3 "" H 3100 2850 50  0000 C CNN
	1    3100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2800 3100 2800
Wire Wire Line
	3100 2800 3100 2850
NoConn ~ 4400 2900
NoConn ~ 5900 2700
NoConn ~ 5900 2800
NoConn ~ 4400 3200
$Comp
L VDD #PWR60
U 1 1 57ABB279
P 3100 2650
F 0 "#PWR60" H 3100 2500 50  0001 C CNN
F 1 "VDD" H 3100 2800 50  0000 C CNN
F 2 "" H 3100 2650 50  0000 C CNN
F 3 "" H 3100 2650 50  0000 C CNN
	1    3100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2700 3100 2700
Wire Wire Line
	3100 2700 3100 2650
$Comp
L VDD #PWR59
U 1 1 57ABB283
P 1250 2150
F 0 "#PWR59" H 1250 2000 50  0001 C CNN
F 1 "VDD" H 1250 2300 50  0000 C CNN
F 2 "" H 1250 2150 50  0000 C CNN
F 3 "" H 1250 2150 50  0000 C CNN
	1    1250 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR58
U 1 1 57ABB289
P 1250 1750
F 0 "#PWR58" H 1250 1500 50  0001 C CNN
F 1 "GND" H 1250 1600 50  0000 C CNN
F 2 "" H 1250 1750 50  0000 C CNN
F 3 "" H 1250 1750 50  0000 C CNN
	1    1250 1750
	1    0    0    -1  
$EndComp
Text Label 1450 2250 2    60   ~ 0
SDA
Text Label 1450 2350 2    60   ~ 0
SCK
$Comp
L CONN_01X04 P39
U 1 1 57ABB291
P 1650 2200
F 0 "P39" H 1650 2450 50  0000 C CNN
F 1 "CONN_01X04" V 1750 2200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04" H 1650 1900 50  0000 C CNN
F 3 "" H 1650 2200 50  0000 C CNN
	1    1650 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2150 1450 2150
Wire Wire Line
	1250 1750 1450 1750
Wire Wire Line
	1450 1750 1450 2050
Text Label 4400 3100 2    60   ~ 0
SDA
Text Label 4400 3000 2    60   ~ 0
SCK
$Comp
L VDD #PWR63
U 1 1 57ABB29D
P 6300 2850
F 0 "#PWR63" H 6300 2700 50  0001 C CNN
F 1 "VDD" H 6300 3000 50  0000 C CNN
F 2 "" H 6300 2850 50  0000 C CNN
F 3 "" H 6300 2850 50  0000 C CNN
	1    6300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2850 6300 3200
Wire Wire Line
	6300 2900 5900 2900
$Comp
L GND #PWR62
U 1 1 57ABB2A5
P 6100 3350
F 0 "#PWR62" H 6100 3100 50  0001 C CNN
F 1 "GND" H 6100 3200 50  0000 C CNN
F 2 "" H 6100 3350 50  0000 C CNN
F 3 "" H 6100 3350 50  0000 C CNN
	1    6100 3350
	1    0    0    -1  
$EndComp
Text Notes 5850 3800 0    60   ~ 0
ADDR 010\nI2C 2
Wire Wire Line
	9450 1850 9450 6100
Connection ~ 9450 3900
$Comp
L SWITCH_INV SW1_READ1
U 1 1 57ABB2AE
P 8950 1850
F 0 "SW1_READ1" H 8750 2000 50  0000 C CNN
F 1 "SWITCH_INV" H 8800 1700 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 8950 1850 50  0001 C CNN
F 3 "" H 8950 1850 50  0000 C CNN
	1    8950 1850
	-1   0    0    1   
$EndComp
$Comp
L SWITCH_INV SW2_SINGLE_READ1
U 1 1 57ABB2B5
P 8950 2350
F 0 "SW2_SINGLE_READ1" H 8750 2500 50  0000 C CNN
F 1 "SWITCH_INV" H 8800 2200 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 8950 2350 50  0001 C CNN
F 3 "" H 8950 2350 50  0000 C CNN
	1    8950 2350
	-1   0    0    1   
$EndComp
$Comp
L SWITCH_INV SW3_PUNCH1
U 1 1 57ABB2BC
P 8950 2850
F 0 "SW3_PUNCH1" H 8750 3000 50  0000 C CNN
F 1 "SWITCH_INV" H 8800 2700 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 8950 2850 50  0001 C CNN
F 3 "" H 8950 2850 50  0000 C CNN
	1    8950 2850
	-1   0    0    1   
$EndComp
Connection ~ 9450 1850
Connection ~ 9450 2350
Connection ~ 9450 2850
Connection ~ 9450 4400
Wire Wire Line
	6300 3200 5900 3200
Connection ~ 6300 2900
Wire Wire Line
	5900 3000 5900 3100
Wire Wire Line
	5900 3100 6100 3100
Wire Wire Line
	6100 3100 6100 3350
Connection ~ 5900 3100
Text Label 8450 1750 2    60   ~ 0
READ_B
Text Label 8450 2750 2    60   ~ 0
PUNCH_B
Text Label 8450 2250 2    60   ~ 0
SREAD_DOWN
Text Label 8450 3500 2    60   ~ 0
PROGDISP_B
Text Label 8450 3300 2    60   ~ 0
PROGDISP_A
Text Label 8450 1950 2    60   ~ 0
READ_A
Text Label 8450 2950 2    60   ~ 0
PUNCH_A
Text Label 8450 3800 2    60   ~ 0
TIL_DOWN
Text Label 8450 4300 2    60   ~ 0
INIT_B
Text Label 8450 4500 2    60   ~ 0
INIT_A
$Comp
L SWITCH_INV SW7_CLEAR1
U 1 1 57ABB323
P 8950 4850
F 0 "SW7_CLEAR1" H 8750 5000 50  0000 C CNN
F 1 "SWITCH_INV" H 8800 4700 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 8950 4850 50  0001 C CNN
F 3 "" H 8950 4850 50  0000 C CNN
	1    8950 4850
	-1   0    0    1   
$EndComp
$Comp
L SWITCH_INV SW8_EXTTREE1
U 1 1 57ABB353
P 8950 5300
F 0 "SW8_EXTTREE1" H 8750 5450 50  0000 C CNN
F 1 "SWITCH_INV" H 8800 5150 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 8950 5300 50  0001 C CNN
F 3 "" H 8950 5300 50  0000 C CNN
	1    8950 5300
	-1   0    0    1   
$EndComp
$Comp
L SWITCH_INV SW9_SINGLESHOT1
U 1 1 57ABB386
P 8950 5800
F 0 "SW9_SINGLESHOT1" H 8750 5950 50  0000 C CNN
F 1 "SWITCH_INV" H 8800 5650 50  0000 C CNN
F 2 "myparts:SW_SPDT-custom" H 8950 5800 50  0001 C CNN
F 3 "" H 8950 5800 50  0000 C CNN
	1    8950 5800
	-1   0    0    1   
$EndComp
Connection ~ 9450 4850
Connection ~ 9450 5300
$Comp
L GND #PWR64
U 1 1 57ABB3DD
P 9450 6100
F 0 "#PWR64" H 9450 5850 50  0001 C CNN
F 1 "GND" H 9450 5950 50  0000 C CNN
F 2 "" H 9450 6100 50  0000 C CNN
F 3 "" H 9450 6100 50  0000 C CNN
	1    9450 6100
	1    0    0    -1  
$EndComp
Connection ~ 9450 5800
Text Label 8450 4750 2    60   ~ 0
CLEAR_A
Text Label 8450 4950 2    60   ~ 0
CLEAR_B
Text Label 8450 5200 2    60   ~ 0
EXTREE_B
Text Label 8450 5400 2    60   ~ 0
EXTREE_A
Text Label 8450 5900 2    60   ~ 0
SINGLE_A
Text Label 8450 5700 2    60   ~ 0
SINGLE_B
NoConn ~ 8450 4000
NoConn ~ 8450 2450
Text Label 4400 1900 2    60   ~ 0
READ_B
Text Label 4400 2200 2    60   ~ 0
PUNCH_B
Text Label 4400 2100 2    60   ~ 0
SREAD_DOWN
Text Label 4400 2400 2    60   ~ 0
PROGDISP_B
Text Label 4400 2500 2    60   ~ 0
PROGDISP_A
Text Label 4400 2000 2    60   ~ 0
READ_A
Text Label 4400 2300 2    60   ~ 0
PUNCH_A
Text Label 4400 2600 2    60   ~ 0
TIL_DOWN
Text Label 5900 1900 0    60   ~ 0
INIT_B
Text Label 5900 2000 0    60   ~ 0
INIT_A
Text Label 5900 2100 0    60   ~ 0
CLEAR_A
Text Label 5900 2200 0    60   ~ 0
CLEAR_B
Text Label 5900 2300 0    60   ~ 0
EXTREE_B
Text Label 5900 2400 0    60   ~ 0
EXTREE_A
Text Label 5900 2600 0    60   ~ 0
SINGLE_A
Text Label 5900 2500 0    60   ~ 0
SINGLE_B
$Comp
L MCP23017 U11
U 1 1 57ABB2CD
P 5150 2550
F 0 "U11" H 5150 2450 50  0000 C CNN
F 1 "MCP23017" H 5150 2650 50  0000 C CNN
F 2 "DIL28:DIL28" H 5150 2550 50  0001 C CNN
F 3 "DOCUMENTATION" H 5150 2550 50  0001 C CNN
	1    5150 2550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
