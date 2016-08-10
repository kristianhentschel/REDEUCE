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
LIBS:lamps-4-3-cache
EELAYER 25 0
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
L LED D1
U 1 1 57AB5D5D
P 2200 1800
F 0 "D1" H 2200 1900 50  0000 C CNN
F 1 "LED" H 2200 1700 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 2200 1800 50  0001 C CNN
F 3 "" H 2200 1800 50  0000 C CNN
	1    2200 1800
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 57AB5DB1
P 2550 1800
F 0 "D2" H 2550 1900 50  0000 C CNN
F 1 "LED" H 2550 1700 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 2550 1800 50  0001 C CNN
F 3 "" H 2550 1800 50  0000 C CNN
	1    2550 1800
	0    1    1    0   
$EndComp
$Comp
L LED D3
U 1 1 57AB5DCA
P 2900 1800
F 0 "D3" H 2900 1900 50  0000 C CNN
F 1 "LED" H 2900 1700 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 2900 1800 50  0001 C CNN
F 3 "" H 2900 1800 50  0000 C CNN
	1    2900 1800
	0    1    1    0   
$EndComp
$Comp
L LED D4
U 1 1 57AB5DE8
P 3250 1800
F 0 "D4" H 3250 1900 50  0000 C CNN
F 1 "LED" H 3250 1700 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 3250 1800 50  0001 C CNN
F 3 "" H 3250 1800 50  0000 C CNN
	1    3250 1800
	0    1    1    0   
$EndComp
$Comp
L LED D5
U 1 1 57AB5E41
P 4950 1800
F 0 "D5" H 4950 1900 50  0000 C CNN
F 1 "LED" H 4950 1700 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 4950 1800 50  0001 C CNN
F 3 "" H 4950 1800 50  0000 C CNN
	1    4950 1800
	0    1    1    0   
$EndComp
$Comp
L LED D6
U 1 1 57AB5E6E
P 5350 1800
F 0 "D6" H 5350 1900 50  0000 C CNN
F 1 "LED" H 5350 1700 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 5350 1800 50  0001 C CNN
F 3 "" H 5350 1800 50  0000 C CNN
	1    5350 1800
	0    1    1    0   
$EndComp
$Comp
L LED D7
U 1 1 57AB5E94
P 5750 1800
F 0 "D7" H 5750 1900 50  0000 C CNN
F 1 "LED" H 5750 1700 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 5750 1800 50  0001 C CNN
F 3 "" H 5750 1800 50  0000 C CNN
	1    5750 1800
	0    1    1    0   
$EndComp
Connection ~ 2900 2000
Connection ~ 2550 2000
Wire Wire Line
	1950 2000 3600 2000
Wire Wire Line
	1950 2450 1950 2000
Connection ~ 2200 2000
Text Label 1950 2450 0    60   ~ 0
DIGITA
Connection ~ 3250 2000
$Comp
L CONN_01X04 P1
U 1 1 57AB6038
P 3800 1850
F 0 "P1" H 3800 2100 50  0000 C CNN
F 1 "CONN_01X04" V 3900 1850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04" H 3800 1850 50  0001 C CNN
F 3 "" H 3800 1850 50  0000 C CNN
	1    3800 1850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P2
U 1 1 57AB6070
P 4300 1850
F 0 "P2" H 4300 2100 50  0000 C CNN
F 1 "CONN_01X04" V 4400 1850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04" H 4300 1850 50  0001 C CNN
F 3 "" H 4300 1850 50  0000 C CNN
	1    4300 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4500 2000 5750 2000
Connection ~ 4950 2000
Connection ~ 5350 2000
Wire Wire Line
	4500 1900 4750 1900
Wire Wire Line
	4750 1900 4750 1600
Wire Wire Line
	4750 1600 4950 1600
Wire Wire Line
	5350 1550 5350 1600
Wire Wire Line
	4700 1550 5350 1550
Wire Wire Line
	4700 1550 4700 1800
Wire Wire Line
	4700 1800 4500 1800
Wire Wire Line
	4500 1700 4600 1700
Wire Wire Line
	4600 1700 4600 1500
Wire Wire Line
	4600 1500 5750 1500
Wire Wire Line
	5750 1500 5750 1600
Text Label 3600 1900 2    60   ~ 0
SEG7
Text Label 3600 1800 2    60   ~ 0
SEG6
Text Label 3600 1700 2    60   ~ 0
SEG5
Text Label 2200 1600 0    60   ~ 0
SEG0
Text Label 2550 1600 0    60   ~ 0
SEG1
Text Label 2900 1600 0    60   ~ 0
SEG2
Text Label 3250 1600 0    60   ~ 0
SEG3
$Comp
L CONN_02X05 P3
U 1 1 57AB7B49
P 2550 4100
F 0 "P3" H 2550 4400 50  0000 C CNN
F 1 "CONN_02X05" H 2550 3800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 2550 2900 50  0001 C CNN
F 3 "" H 2550 2900 50  0000 C CNN
	1    2550 4100
	1    0    0    -1  
$EndComp
Text Label 2800 3900 0    60   ~ 0
SEG0
Text Label 2300 3900 2    60   ~ 0
SEG1
Text Label 2300 4000 2    60   ~ 0
SEG2
Text Label 2300 4100 2    60   ~ 0
SEG3
Text Label 2300 4300 2    60   ~ 0
SEG5
Text Label 2800 4300 0    60   ~ 0
SEG6
Text Label 2800 4200 0    60   ~ 0
SEG7
Text Label 2800 4000 0    60   ~ 0
DIGITA
NoConn ~ 2300 4200
NoConn ~ 2800 4100
$EndSCHEMATC
