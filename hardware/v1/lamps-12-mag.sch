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
Sheet 32 36
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4000 1600 550  1200
U 57AC8CAC
F0 "sheet57AC8CA0" 60
F1 "ledrow.sch" 60
F2 "DIGIT" I L 4000 1700 60 
F3 "LED0" I L 4000 1950 60 
F4 "LED1" I L 4000 2050 60 
F5 "LED2" I L 4000 2150 60 
F6 "LED3" I L 4000 2250 60 
F7 "LED4" I L 4000 2350 60 
F8 "LED5" I L 4000 2450 60 
F9 "LED6" I L 4000 2550 60 
F10 "LED7" I L 4000 2650 60 
$EndSheet
$Comp
L CONN_02X05 P43
U 1 1 57AC8CF3
P 2100 1900
F 0 "P43" H 2100 2200 50  0000 C CNN
F 1 "CONN_02X05" H 2100 1600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 2100 700 50  0001 C CNN
F 3 "" H 2100 700 50  0000 C CNN
	1    2100 1900
	1    0    0    -1  
$EndComp
Text Label 4000 1950 2    60   ~ 0
SEG0
Text Label 4000 2050 2    60   ~ 0
SEG1
Text Label 4000 2150 2    60   ~ 0
SEG2
Text Label 4000 2250 2    60   ~ 0
SEG3
Text Label 4000 2350 2    60   ~ 0
SEG4
Text Label 4000 2450 2    60   ~ 0
SEG5
Text Label 4000 2550 2    60   ~ 0
SEG6
Text Label 4000 2650 2    60   ~ 0
SEG7
Text Label 4050 3950 2    60   ~ 0
SEG0
Text Label 4050 4350 2    60   ~ 0
SEG1
Text Label 4050 4750 2    60   ~ 0
SEG2
Text Label 4050 5150 2    60   ~ 0
SEG3
Text Label 2350 1700 0    60   ~ 0
SEG0
Text Label 1850 1700 2    60   ~ 0
SEG1
Text Label 1850 1800 2    60   ~ 0
SEG2
Text Label 1850 1900 2    60   ~ 0
SEG3
Text Label 1850 2000 2    60   ~ 0
SEG4
Text Label 1850 2100 2    60   ~ 0
SEG5
Text Label 2350 2100 0    60   ~ 0
SEG6
Text Label 2350 2000 0    60   ~ 0
SEG7
Text Label 1900 3000 2    60   ~ 0
SEG0
Text Label 1900 3100 2    60   ~ 0
SEG1
Text Label 1900 3200 2    60   ~ 0
SEG2
Text Label 1900 3300 2    60   ~ 0
SEG3
Text Label 1900 3400 2    60   ~ 0
SEG4
Text Label 1900 3500 2    60   ~ 0
SEG5
Text Label 1900 3600 2    60   ~ 0
SEG6
Text Label 1900 3700 2    60   ~ 0
SEG7
Text Label 4000 1700 2    60   ~ 0
DIGITA
Text Label 4550 3500 2    60   ~ 0
DIGITB
Text Label 1900 3950 2    60   ~ 0
DIGITA
Text Label 1900 4100 2    60   ~ 0
DIGITB
Text HLabel 2050 2950 2    60   Input ~ 0
SEG0
Text HLabel 2050 3050 2    60   Input ~ 0
SEG1
Text HLabel 2050 3150 2    60   Input ~ 0
SEG2
Text HLabel 2050 3250 2    60   Input ~ 0
SEG3
Text HLabel 2050 3350 2    60   Input ~ 0
SEG4
Text HLabel 2050 3450 2    60   Input ~ 0
SEG5
Text HLabel 2050 3550 2    60   Input ~ 0
SEG6
Text HLabel 2050 3650 2    60   Input ~ 0
SEG7
Text HLabel 2050 3900 2    60   Input ~ 0
DIGITA
Text HLabel 2050 4050 2    60   Input ~ 0
DIGITB
Wire Wire Line
	1900 3000 2000 3000
Wire Wire Line
	2000 3000 2000 2950
Wire Wire Line
	2000 2950 2050 2950
Wire Wire Line
	2050 3050 2000 3050
Wire Wire Line
	2000 3050 2000 3100
Wire Wire Line
	2000 3100 1900 3100
Wire Wire Line
	1900 3200 2000 3200
Wire Wire Line
	2000 3200 2000 3150
Wire Wire Line
	2000 3150 2050 3150
Wire Wire Line
	2050 3250 2000 3250
Wire Wire Line
	2000 3250 2000 3300
Wire Wire Line
	2000 3300 1900 3300
Wire Wire Line
	1900 3400 2000 3400
Wire Wire Line
	2000 3400 2000 3350
Wire Wire Line
	2000 3350 2050 3350
Wire Wire Line
	2050 3450 2000 3450
Wire Wire Line
	2000 3450 2000 3500
Wire Wire Line
	2000 3500 1900 3500
Wire Wire Line
	1900 3600 2000 3600
Wire Wire Line
	2000 3600 2000 3550
Wire Wire Line
	2000 3550 2050 3550
Wire Wire Line
	2050 3650 2000 3650
Wire Wire Line
	2000 3650 2000 3700
Wire Wire Line
	2000 3700 1900 3700
Wire Wire Line
	1900 3950 2000 3950
Wire Wire Line
	2000 3950 2000 3900
Wire Wire Line
	2000 3900 2050 3900
Wire Wire Line
	2050 4050 2000 4050
Wire Wire Line
	2000 4050 2000 4100
Wire Wire Line
	2000 4100 1900 4100
Text Label 2350 1800 0    60   ~ 0
DIGITA
Text Label 2350 1900 0    60   ~ 0
DIGITB
$Comp
L LED D91
U 1 1 57AC9520
P 4350 5150
F 0 "D91" H 4350 5250 50  0000 C CNN
F 1 "LED" H 4350 5050 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 4350 5150 50  0001 C CNN
F 3 "" H 4350 5150 50  0000 C CNN
	1    4350 5150
	-1   0    0    1   
$EndComp
$Comp
L LED D90
U 1 1 57AC9527
P 4350 4750
F 0 "D90" H 4350 4850 50  0000 C CNN
F 1 "LED" H 4350 4650 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 4350 4750 50  0001 C CNN
F 3 "" H 4350 4750 50  0000 C CNN
	1    4350 4750
	-1   0    0    1   
$EndComp
$Comp
L LED D89
U 1 1 57AC952E
P 4350 4350
F 0 "D89" H 4350 4450 50  0000 C CNN
F 1 "LED" H 4350 4250 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 4350 4350 50  0001 C CNN
F 3 "" H 4350 4350 50  0000 C CNN
	1    4350 4350
	-1   0    0    1   
$EndComp
$Comp
L LED D88
U 1 1 57AC9535
P 4350 3950
F 0 "D88" H 4350 4050 50  0000 C CNN
F 1 "LED" H 4350 3850 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 4350 3950 50  0001 C CNN
F 3 "" H 4350 3950 50  0000 C CNN
	1    4350 3950
	-1   0    0    1   
$EndComp
Connection ~ 4550 4350
Connection ~ 4550 4750
Connection ~ 4550 5150
Connection ~ 4550 3950
Wire Wire Line
	4050 5150 4150 5150
Wire Wire Line
	4150 3950 4050 3950
Wire Wire Line
	4050 4350 4150 4350
Wire Wire Line
	4150 4750 4050 4750
Wire Wire Line
	4550 3500 4550 5150
$EndSCHEMATC
