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
L BARREL_JACK CON?
U 1 1 5798A4FF
P 4550 1900
F 0 "CON?" H 4550 2150 50  0000 C CNN
F 1 "BARREL_JACK" H 4550 1700 50  0000 C CNN
F 2 "" H 4550 1900 50  0000 C CNN
F 3 "" H 4550 1900 50  0000 C CNN
	1    4550 1900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5798A51E
P 6500 2000
F 0 "R?" V 6580 2000 50  0000 C CNN
F 1 "R" V 6500 2000 50  0000 C CNN
F 2 "" V 6430 2000 50  0000 C CNN
F 3 "" H 6500 2000 50  0000 C CNN
	1    6500 2000
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5798A547
P 6500 2550
F 0 "D?" H 6500 2650 50  0000 C CNN
F 1 "LED" H 6500 2450 50  0000 C CNN
F 2 "" H 6500 2550 50  0000 C CNN
F 3 "" H 6500 2550 50  0000 C CNN
	1    6500 2550
	0    -1   -1   0   
$EndComp
$Comp
L SWITCH_INV SW?
U 1 1 5798A57D
P 6600 1200
F 0 "SW?" H 6400 1350 50  0000 C CNN
F 1 "SWITCH_INV" H 6450 1050 50  0000 C CNN
F 2 "" H 6600 1200 50  0000 C CNN
F 3 "" H 6600 1200 50  0000 C CNN
	1    6600 1200
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5798A634
P 6700 2000
F 0 "R?" V 6780 2000 50  0000 C CNN
F 1 "R" V 6700 2000 50  0000 C CNN
F 2 "" V 6630 2000 50  0000 C CNN
F 3 "" H 6700 2000 50  0000 C CNN
	1    6700 2000
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5798A63A
P 6700 2550
F 0 "D?" H 6700 2650 50  0000 C CNN
F 1 "LED" H 6700 2450 50  0000 C CNN
F 2 "" H 6700 2550 50  0000 C CNN
F 3 "" H 6700 2550 50  0000 C CNN
	1    6700 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 1700 6500 1850
Wire Wire Line
	6700 1700 6700 1850
Wire Wire Line
	6700 2150 6700 2350
Wire Wire Line
	6500 2150 6500 2350
Wire Wire Line
	6600 700  4850 700 
Wire Wire Line
	4850 700  4850 1800
Wire Wire Line
	4850 2750 6700 2750
Connection ~ 6500 2750
Wire Wire Line
	4850 2750 4850 2000
NoConn ~ 4850 1900
$EndSCHEMATC
