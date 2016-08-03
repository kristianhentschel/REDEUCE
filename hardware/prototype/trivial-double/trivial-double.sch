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
L LED D1
U 1 1 57A1B583
P 1700 1200
F 0 "D1" H 1700 1300 50  0000 C CNN
F 1 "LED" H 1700 1100 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 1700 1200 50  0001 C CNN
F 3 "" H 1700 1200 50  0000 C CNN
	1    1700 1200
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 57A1B5B8
P 1700 1700
F 0 "R1" V 1780 1700 50  0000 C CNN
F 1 "1K" V 1700 1700 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1630 1700 50  0001 C CNN
F 3 "" H 1700 1700 50  0000 C CNN
	1    1700 1700
	1    0    0    -1  
$EndComp
$Comp
L SWITCH_INV SW1
U 1 1 57A1B5F6
P 1100 1500
F 0 "SW1" H 900 1650 50  0000 C CNN
F 1 "SWITCH_INV" H 950 1350 50  0000 C CNN
F 2 "myparts:SW_SPDT" H 1100 1500 50  0001 C CNN
F 3 "" H 1100 1500 50  0000 C CNN
	1    1100 1500
	0    1    1    0   
$EndComp
$Comp
L CONN_02X01 P1
U 1 1 57A1B678
P 1300 2350
F 0 "P1" H 1300 2450 50  0000 C CNN
F 1 "CONN_02X01" H 1300 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x01" H 1300 1150 50  0001 C CNN
F 3 "" H 1300 1150 50  0000 C CNN
	1    1300 2350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 57A1B69F
P 650 2300
F 0 "#FLG01" H 650 2395 50  0001 C CNN
F 1 "PWR_FLAG" H 650 2480 50  0000 C CNN
F 2 "" H 650 2300 50  0000 C CNN
F 3 "" H 650 2300 50  0000 C CNN
	1    650  2300
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 57A1B6BB
P 2000 2250
F 0 "#FLG02" H 2000 2345 50  0001 C CNN
F 1 "PWR_FLAG" H 2000 2430 50  0000 C CNN
F 2 "" H 2000 2250 50  0000 C CNN
F 3 "" H 2000 2250 50  0000 C CNN
	1    2000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2350 650  2350
Wire Wire Line
	650  2350 650  2300
Wire Wire Line
	1550 2350 2000 2350
Wire Wire Line
	2000 2350 2000 2250
Wire Wire Line
	1700 1850 1700 2350
Connection ~ 1700 2350
Wire Wire Line
	1000 2000 1000 2350
Connection ~ 1000 2350
Wire Wire Line
	1100 1000 1700 1000
Wire Wire Line
	1700 1400 1700 1550
Wire Wire Line
	1200 2000 1700 2000
Connection ~ 1700 2000
$EndSCHEMATC
