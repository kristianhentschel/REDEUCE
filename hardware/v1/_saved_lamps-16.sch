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
S 3100 700  550  1200
U 57A3E922
F0 "ledrow1" 60
F1 "ledrow.sch" 60
F2 "DIGIT" I L 3100 800 60 
F3 "LED0" I L 3100 1050 60 
F4 "LED1" I L 3100 1150 60 
F5 "LED2" I L 3100 1250 60 
F6 "LED3" I L 3100 1350 60 
F7 "LED4" I L 3100 1450 60 
F8 "LED5" I L 3100 1550 60 
F9 "LED6" I L 3100 1650 60 
F10 "LED7" I L 3100 1750 60 
$EndSheet
$Sheet
S 3100 2150 550  1200
U 57A3F0CE
F0 "ledrow2" 60
F1 "ledrow.sch" 60
F2 "DIGIT" I L 3100 2250 60 
F3 "LED0" I L 3100 2500 60 
F4 "LED1" I L 3100 2600 60 
F5 "LED2" I L 3100 2700 60 
F6 "LED3" I L 3100 2800 60 
F7 "LED4" I L 3100 2900 60 
F8 "LED5" I L 3100 3000 60 
F9 "LED6" I L 3100 3100 60 
F10 "LED7" I L 3100 3200 60 
$EndSheet
$Comp
L CONN_02X05 P7
U 1 1 57A3FFF5
P 1200 1000
AR Path="/57A49D32/57A3FFF5" Ref="P7"  Part="1" 
AR Path="/57A54838/57A3FFF5" Ref="P8"  Part="1" 
AR Path="/57A56102/57A3FFF5" Ref="P9"  Part="1" 
AR Path="/57A56122/57A3FFF5" Ref="P10"  Part="1" 
AR Path="/57A3FFF5" Ref="P10"  Part="1" 
F 0 "P10" H 1200 1300 50  0000 C CNN
F 1 "CONN_02X05" H 1200 700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05" H 1200 -200 50  0001 C CNN
F 3 "" H 1200 -200 50  0000 C CNN
	1    1200 1000
	1    0    0    -1  
$EndComp
Text Label 3100 1050 2    60   ~ 0
SEG0
Text Label 3100 1150 2    60   ~ 0
SEG1
Text Label 3100 1250 2    60   ~ 0
SEG2
Text Label 3100 1350 2    60   ~ 0
SEG3
Text Label 3100 1450 2    60   ~ 0
SEG4
Text Label 3100 1550 2    60   ~ 0
SEG5
Text Label 3100 1650 2    60   ~ 0
SEG6
Text Label 3100 1750 2    60   ~ 0
SEG7
Text Label 3100 2500 2    60   ~ 0
SEG0
Text Label 3100 2600 2    60   ~ 0
SEG1
Text Label 3100 2700 2    60   ~ 0
SEG2
Text Label 3100 2800 2    60   ~ 0
SEG3
Text Label 3100 2900 2    60   ~ 0
SEG4
Text Label 3100 3000 2    60   ~ 0
SEG5
Text Label 3100 3100 2    60   ~ 0
SEG6
Text Label 3100 3200 2    60   ~ 0
SEG7
Text Label 950  800  2    60   ~ 0
SEG0
Text Label 1450 800  0    60   ~ 0
SEG1
Text Label 950  900  2    60   ~ 0
SEG2
Text Label 1450 900  0    60   ~ 0
SEG3
Text Label 950  1000 2    60   ~ 0
SEG4
Text Label 1450 1000 0    60   ~ 0
SEG5
Text Label 950  1100 2    60   ~ 0
SEG6
Text Label 1450 1100 0    60   ~ 0
SEG7
Wire Wire Line
	3100 800  1850 800 
Wire Wire Line
	600  1200 950  1200
Wire Wire Line
	600  1200 600  600 
Wire Wire Line
	600  600  1850 600 
Wire Wire Line
	1850 600  1850 800 
Wire Wire Line
	1450 1200 1850 1200
Wire Wire Line
	1850 1200 1850 2250
Wire Wire Line
	1850 2250 3100 2250
Text Label 1000 2100 2    60   ~ 0
SEG0
Text Label 1000 2200 2    60   ~ 0
SEG1
Text Label 1000 2300 2    60   ~ 0
SEG2
Text Label 1000 2400 2    60   ~ 0
SEG3
Text Label 1000 2500 2    60   ~ 0
SEG4
Text Label 1000 2600 2    60   ~ 0
SEG5
Text Label 1000 2700 2    60   ~ 0
SEG6
Text Label 1000 2800 2    60   ~ 0
SEG7
Text Label 2800 800  2    60   ~ 0
DIGITA
Text Label 2800 2250 2    60   ~ 0
DIGITB
Text Label 1000 3050 2    60   ~ 0
DIGITA
Text Label 1000 3200 2    60   ~ 0
DIGITB
Text HLabel 1150 2050 2    60   Input ~ 0
SEG0
Text HLabel 1150 2150 2    60   Input ~ 0
SEG1
Text HLabel 1150 2250 2    60   Input ~ 0
SEG2
Text HLabel 1150 2350 2    60   Input ~ 0
SEG3
Text HLabel 1150 2450 2    60   Input ~ 0
SEG4
Text HLabel 1150 2550 2    60   Input ~ 0
SEG5
Text HLabel 1150 2650 2    60   Input ~ 0
SEG6
Text HLabel 1150 2750 2    60   Input ~ 0
SEG7
Text HLabel 1150 3000 2    60   Input ~ 0
DIGITA
Text HLabel 1150 3150 2    60   Input ~ 0
DIGITB
Wire Wire Line
	1000 2100 1100 2100
Wire Wire Line
	1100 2100 1100 2050
Wire Wire Line
	1100 2050 1150 2050
Wire Wire Line
	1150 2150 1100 2150
Wire Wire Line
	1100 2150 1100 2200
Wire Wire Line
	1100 2200 1000 2200
Wire Wire Line
	1000 2300 1100 2300
Wire Wire Line
	1100 2300 1100 2250
Wire Wire Line
	1100 2250 1150 2250
Wire Wire Line
	1150 2350 1100 2350
Wire Wire Line
	1100 2350 1100 2400
Wire Wire Line
	1100 2400 1000 2400
Wire Wire Line
	1000 2500 1100 2500
Wire Wire Line
	1100 2500 1100 2450
Wire Wire Line
	1100 2450 1150 2450
Wire Wire Line
	1150 2550 1100 2550
Wire Wire Line
	1100 2550 1100 2600
Wire Wire Line
	1100 2600 1000 2600
Wire Wire Line
	1000 2700 1100 2700
Wire Wire Line
	1100 2700 1100 2650
Wire Wire Line
	1100 2650 1150 2650
Wire Wire Line
	1150 2750 1100 2750
Wire Wire Line
	1100 2750 1100 2800
Wire Wire Line
	1100 2800 1000 2800
Wire Wire Line
	1000 3050 1100 3050
Wire Wire Line
	1100 3050 1100 3000
Wire Wire Line
	1100 3000 1150 3000
Wire Wire Line
	1150 3150 1100 3150
Wire Wire Line
	1100 3150 1100 3200
Wire Wire Line
	1100 3200 1000 3200
$EndSCHEMATC
