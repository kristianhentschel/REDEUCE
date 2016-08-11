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
Sheet 1 3
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
S 3250 900  550  1200
U 57AC805C
F0 "sheet57AC8050" 60
F1 "ledrow.sch" 60
F2 "DIGIT" I L 3250 1000 60 
F3 "LED0" I L 3250 1250 60 
F4 "LED1" I L 3250 1350 60 
F5 "LED2" I L 3250 1450 60 
F6 "LED3" I L 3250 1550 60 
F7 "LED4" I L 3250 1650 60 
F8 "LED5" I L 3250 1750 60 
F9 "LED6" I L 3250 1850 60 
F10 "LED7" I L 3250 1950 60 
$EndSheet
$Sheet
S 3250 2350 550  1200
U 57AC8082
F0 "sheet57AC8051" 60
F1 "ledrow.sch" 60
F2 "DIGIT" I L 3250 2450 60 
F3 "LED0" I L 3250 2700 60 
F4 "LED1" I L 3250 2800 60 
F5 "LED2" I L 3250 2900 60 
F6 "LED3" I L 3250 3000 60 
F7 "LED4" I L 3250 3100 60 
F8 "LED5" I L 3250 3200 60 
F9 "LED6" I L 3250 3300 60 
F10 "LED7" I L 3250 3400 60 
$EndSheet
$Comp
L CONN_02X05 P1
U 1 1 57AC80A3
P 1350 1200
F 0 "P1" H 1350 1500 50  0000 C CNN
F 1 "CONN_02X05" H 1350 900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 1350 0   50  0001 C CNN
F 3 "" H 1350 0   50  0000 C CNN
	1    1350 1200
	1    0    0    -1  
$EndComp
Text Label 3250 1250 2    60   ~ 0
SEG0
Text Label 3250 1350 2    60   ~ 0
SEG1
Text Label 3250 1450 2    60   ~ 0
SEG2
Text Label 3250 1550 2    60   ~ 0
SEG3
Text Label 3250 1650 2    60   ~ 0
SEG4
Text Label 3250 1750 2    60   ~ 0
SEG5
Text Label 3250 1850 2    60   ~ 0
SEG6
Text Label 3250 1950 2    60   ~ 0
SEG7
Text Label 3250 2700 2    60   ~ 0
SEG0
Text Label 3250 2800 2    60   ~ 0
SEG1
Text Label 3250 2900 2    60   ~ 0
SEG2
Text Label 3250 3000 2    60   ~ 0
SEG3
Text Label 3250 3100 2    60   ~ 0
SEG4
Text Label 3250 3200 2    60   ~ 0
SEG5
Text Label 3250 3300 2    60   ~ 0
SEG6
Text Label 3250 3400 2    60   ~ 0
SEG7
Text Label 1600 1000 0    60   ~ 0
SEG0
Text Label 1100 1000 2    60   ~ 0
SEG1
Text Label 1100 1100 2    60   ~ 0
SEG2
Text Label 1100 1200 2    60   ~ 0
SEG3
Text Label 1100 1300 2    60   ~ 0
SEG4
Text Label 1100 1400 2    60   ~ 0
SEG5
Text Label 1600 1400 0    60   ~ 0
SEG6
Text Label 1600 1300 0    60   ~ 0
SEG7
Text Label 1150 2300 2    60   ~ 0
SEG0
Text Label 1150 2400 2    60   ~ 0
SEG1
Text Label 1150 2500 2    60   ~ 0
SEG2
Text Label 1150 2600 2    60   ~ 0
SEG3
Text Label 1150 2700 2    60   ~ 0
SEG4
Text Label 1150 2800 2    60   ~ 0
SEG5
Text Label 1150 2900 2    60   ~ 0
SEG6
Text Label 1150 3000 2    60   ~ 0
SEG7
Text Label 3250 2450 2    60   ~ 0
DIGITA
Text Label 3250 1000 2    60   ~ 0
DIGITB
Text Label 1150 3250 2    60   ~ 0
DIGITA
Text Label 1150 3400 2    60   ~ 0
DIGITB
Text HLabel 1300 2250 2    60   Input ~ 0
SEG0
Text HLabel 1300 2350 2    60   Input ~ 0
SEG1
Text HLabel 1300 2450 2    60   Input ~ 0
SEG2
Text HLabel 1300 2550 2    60   Input ~ 0
SEG3
Text HLabel 1300 2650 2    60   Input ~ 0
SEG4
Text HLabel 1300 2750 2    60   Input ~ 0
SEG5
Text HLabel 1300 2850 2    60   Input ~ 0
SEG6
Text HLabel 1300 2950 2    60   Input ~ 0
SEG7
Text HLabel 1300 3200 2    60   Input ~ 0
DIGITA
Text HLabel 1300 3350 2    60   Input ~ 0
DIGITB
Wire Wire Line
	1150 2300 1250 2300
Wire Wire Line
	1250 2300 1250 2250
Wire Wire Line
	1250 2250 1300 2250
Wire Wire Line
	1300 2350 1250 2350
Wire Wire Line
	1250 2350 1250 2400
Wire Wire Line
	1250 2400 1150 2400
Wire Wire Line
	1150 2500 1250 2500
Wire Wire Line
	1250 2500 1250 2450
Wire Wire Line
	1250 2450 1300 2450
Wire Wire Line
	1300 2550 1250 2550
Wire Wire Line
	1250 2550 1250 2600
Wire Wire Line
	1250 2600 1150 2600
Wire Wire Line
	1150 2700 1250 2700
Wire Wire Line
	1250 2700 1250 2650
Wire Wire Line
	1250 2650 1300 2650
Wire Wire Line
	1300 2750 1250 2750
Wire Wire Line
	1250 2750 1250 2800
Wire Wire Line
	1250 2800 1150 2800
Wire Wire Line
	1150 2900 1250 2900
Wire Wire Line
	1250 2900 1250 2850
Wire Wire Line
	1250 2850 1300 2850
Wire Wire Line
	1300 2950 1250 2950
Wire Wire Line
	1250 2950 1250 3000
Wire Wire Line
	1250 3000 1150 3000
Wire Wire Line
	1150 3250 1250 3250
Wire Wire Line
	1250 3250 1250 3200
Wire Wire Line
	1250 3200 1300 3200
Wire Wire Line
	1300 3350 1250 3350
Wire Wire Line
	1250 3350 1250 3400
Wire Wire Line
	1250 3400 1150 3400
Text Label 1600 1100 0    60   ~ 0
DIGITA
Text Label 1600 1200 0    60   ~ 0
DIGITB
$EndSCHEMATC
