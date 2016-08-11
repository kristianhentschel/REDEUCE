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
$Sheet
S 650  600  1900 3300
U 57A2FF40
F0 "piconnect" 60
F1 "piconnect.sch" 60
$EndSheet
$Sheet
S 400  -1900 1950 600 
U 57A2FF97
F0 "switchrow" 60
F1 "switchrow.sch" 60
$EndSheet
$Sheet
S 2000 -3350 750  1000
U 57A301EB
F0 "switchcontroller" 60
F1 "switchcontroller.sch" 60
$EndSheet
$Sheet
S 3600 -3400 1100 2350
U 57A30207
F0 "ledcontroller" 60
F1 "ledcontroller.sch" 60
F2 "DIN_5V" I L 3600 -3000 60 
F3 "DOUT_5V" O L 3600 -2550 60 
F4 "VCC" I L 3600 -3300 60 
F5 "CLK_5V" I L 3600 -2850 60 
F6 "CS_5V" I L 3600 -2700 60 
F7 "GND" I L 3600 -3150 60 
F8 "DIG0" O R 4700 -3300 60 
F9 "DIG4" O R 4700 -2900 60 
F10 "DIG6" O R 4700 -2700 60 
F11 "DIG2" O R 4700 -3100 60 
F12 "DIG3" O R 4700 -3000 60 
F13 "DIG7" O R 4700 -2600 60 
F14 "DIG5" O R 4700 -2800 60 
F15 "DIG1" O R 4700 -3200 60 
F16 "SEGD" O R 4700 -1750 60 
F17 "SEGDP" O R 4700 -1350 60 
F18 "SEGE" O R 4700 -1650 60 
F19 "SEGC" O R 4700 -1850 60 
F20 "SEGG" O R 4700 -1450 60 
F21 "SEGB" O R 4700 -1950 60 
F22 "SEGF" O R 4700 -1550 60 
F23 "SEGA" O R 4700 -2050 60 
$EndSheet
$Sheet
S 6200 650  600  1300
U 57A49D32
F0 "lamps-16_OS1" 60
F1 "lamps-16.sch" 60
F2 "SEG0" I L 6200 750 60 
F3 "SEG1" I L 6200 850 60 
F4 "SEG2" I L 6200 950 60 
F5 "SEG3" I L 6200 1050 60 
F6 "SEG4" I L 6200 1150 60 
F7 "SEG5" I L 6200 1250 60 
F8 "SEG6" I L 6200 1350 60 
F9 "SEG7" I L 6200 1450 60 
F10 "DIGITA" I L 6200 1750 60 
F11 "DIGITB" I L 6200 1850 60 
$EndSheet
Text Label 6100 750  2    60   ~ 0
A_SEGA
Text Label 6100 850  2    60   ~ 0
A_SEGB
Text Label 6100 950  2    60   ~ 0
A_SEGC
Text Label 6100 1050 2    60   ~ 0
A_SEGD
Text Label 6100 1150 2    60   ~ 0
A_SEGE
Text Label 6100 1250 2    60   ~ 0
A_SEGF
Text Label 6100 1350 2    60   ~ 0
A_SEGG
Text Label 6100 1450 2    60   ~ 0
A_SEGDP
Text Label 6100 1750 2    60   ~ 0
A_DIG0
Text Label 6100 1850 2    60   ~ 0
A_DIG1
Wire Wire Line
	6200 750  6100 750 
Wire Wire Line
	6100 850  6200 850 
Wire Wire Line
	6200 950  6100 950 
Wire Wire Line
	6100 1050 6200 1050
Wire Wire Line
	6200 1150 6100 1150
Wire Wire Line
	6100 1250 6200 1250
Wire Wire Line
	6100 1350 6200 1350
Wire Wire Line
	6200 1450 6100 1450
Wire Wire Line
	6100 1750 6200 1750
Wire Wire Line
	6200 1850 6100 1850
$Sheet
S 7550 650  600  1300
U 57A54838
F0 "lamps-16_OS2" 60
F1 "lamps-16.sch" 60
F2 "SEG0" I L 7550 750 60 
F3 "SEG1" I L 7550 850 60 
F4 "SEG2" I L 7550 950 60 
F5 "SEG3" I L 7550 1050 60 
F6 "SEG4" I L 7550 1150 60 
F7 "SEG5" I L 7550 1250 60 
F8 "SEG6" I L 7550 1350 60 
F9 "SEG7" I L 7550 1450 60 
F10 "DIGITA" I L 7550 1750 60 
F11 "DIGITB" I L 7550 1850 60 
$EndSheet
Text Label 7450 750  2    60   ~ 0
A_SEGA
Text Label 7450 850  2    60   ~ 0
A_SEGB
Text Label 7450 950  2    60   ~ 0
A_SEGC
Text Label 7450 1050 2    60   ~ 0
A_SEGD
Text Label 7450 1150 2    60   ~ 0
A_SEGE
Text Label 7450 1250 2    60   ~ 0
A_SEGF
Text Label 7450 1350 2    60   ~ 0
A_SEGG
Text Label 7450 1450 2    60   ~ 0
A_SEGDP
Text Label 7450 1750 2    60   ~ 0
A_DIG2
Text Label 7450 1850 2    60   ~ 0
A_DIG3
Wire Wire Line
	7550 750  7450 750 
Wire Wire Line
	7450 850  7550 850 
Wire Wire Line
	7550 950  7450 950 
Wire Wire Line
	7450 1050 7550 1050
Wire Wire Line
	7550 1150 7450 1150
Wire Wire Line
	7450 1250 7550 1250
Wire Wire Line
	7450 1350 7550 1350
Wire Wire Line
	7550 1450 7450 1450
Wire Wire Line
	7450 1750 7550 1750
Wire Wire Line
	7550 1850 7450 1850
$Sheet
S 8900 650  600  1300
U 57A56102
F0 "lamps-16_ID1" 60
F1 "lamps-16.sch" 60
F2 "SEG0" I L 8900 750 60 
F3 "SEG1" I L 8900 850 60 
F4 "SEG2" I L 8900 950 60 
F5 "SEG3" I L 8900 1050 60 
F6 "SEG4" I L 8900 1150 60 
F7 "SEG5" I L 8900 1250 60 
F8 "SEG6" I L 8900 1350 60 
F9 "SEG7" I L 8900 1450 60 
F10 "DIGITA" I L 8900 1750 60 
F11 "DIGITB" I L 8900 1850 60 
$EndSheet
Text Label 8800 750  2    60   ~ 0
A_SEGA
Text Label 8800 850  2    60   ~ 0
A_SEGB
Text Label 8800 950  2    60   ~ 0
A_SEGC
Text Label 8800 1050 2    60   ~ 0
A_SEGD
Text Label 8800 1150 2    60   ~ 0
A_SEGE
Text Label 8800 1250 2    60   ~ 0
A_SEGF
Text Label 8800 1350 2    60   ~ 0
A_SEGG
Text Label 8800 1450 2    60   ~ 0
A_SEGDP
Text Label 8800 1750 2    60   ~ 0
A_DIG4
Text Label 8800 1850 2    60   ~ 0
A_DIG5
Wire Wire Line
	8900 750  8800 750 
Wire Wire Line
	8800 850  8900 850 
Wire Wire Line
	8900 950  8800 950 
Wire Wire Line
	8800 1050 8900 1050
Wire Wire Line
	8900 1150 8800 1150
Wire Wire Line
	8800 1250 8900 1250
Wire Wire Line
	8800 1350 8900 1350
Wire Wire Line
	8900 1450 8800 1450
Wire Wire Line
	8800 1750 8900 1750
Wire Wire Line
	8900 1850 8800 1850
$Sheet
S 10250 650  600  1300
U 57A56122
F0 "lamps-16_ID2" 60
F1 "lamps-16.sch" 60
F2 "SEG0" I L 10250 750 60 
F3 "SEG1" I L 10250 850 60 
F4 "SEG2" I L 10250 950 60 
F5 "SEG3" I L 10250 1050 60 
F6 "SEG4" I L 10250 1150 60 
F7 "SEG5" I L 10250 1250 60 
F8 "SEG6" I L 10250 1350 60 
F9 "SEG7" I L 10250 1450 60 
F10 "DIGITA" I L 10250 1750 60 
F11 "DIGITB" I L 10250 1850 60 
$EndSheet
Text Label 10150 750  2    60   ~ 0
A_SEGA
Text Label 10150 850  2    60   ~ 0
A_SEGB
Text Label 10150 950  2    60   ~ 0
A_SEGC
Text Label 10150 1050 2    60   ~ 0
A_SEGD
Text Label 10150 1150 2    60   ~ 0
A_SEGE
Text Label 10150 1250 2    60   ~ 0
A_SEGF
Text Label 10150 1350 2    60   ~ 0
A_SEGG
Text Label 10150 1450 2    60   ~ 0
A_SEGDP
Text Label 10150 1750 2    60   ~ 0
A_DIG6
Text Label 10150 1850 2    60   ~ 0
A_DIG7
Wire Wire Line
	10250 750  10150 750 
Wire Wire Line
	10150 850  10250 850 
Wire Wire Line
	10250 950  10150 950 
Wire Wire Line
	10150 1050 10250 1050
Wire Wire Line
	10250 1150 10150 1150
Wire Wire Line
	10150 1250 10250 1250
Wire Wire Line
	10150 1350 10250 1350
Wire Wire Line
	10250 1450 10150 1450
Wire Wire Line
	10150 1750 10250 1750
Wire Wire Line
	10250 1850 10150 1850
Text Label 6100 2400 2    60   ~ 0
B_SEGA
Text Label 6100 2500 2    60   ~ 0
B_SEGB
Text Label 6100 2600 2    60   ~ 0
B_SEGC
Text Label 6100 2700 2    60   ~ 0
B_SEGD
Text Label 6100 2800 2    60   ~ 0
B_SEGE
Text Label 6100 2900 2    60   ~ 0
B_SEGF
Text Label 6100 3000 2    60   ~ 0
B_SEGG
Text Label 6100 3100 2    60   ~ 0
B_SEGDP
Text Label 6100 3400 2    60   ~ 0
B_DIG0
Text Label 6100 3500 2    60   ~ 0
B_DIG1
Wire Wire Line
	6200 2400 6100 2400
Wire Wire Line
	6100 2500 6200 2500
Wire Wire Line
	6200 2600 6100 2600
Wire Wire Line
	6100 2700 6200 2700
Wire Wire Line
	6200 2800 6100 2800
Wire Wire Line
	6100 2900 6200 2900
Wire Wire Line
	6100 3000 6200 3000
Wire Wire Line
	6200 3100 6100 3100
Wire Wire Line
	6100 3400 6200 3400
Wire Wire Line
	6200 3500 6100 3500
$Sheet
S 6200 2250 800  1750
U 57A699EE
F0 "lamps-13_3a" 60
F1 "lamps-13_3a.sch" 60
F2 "SEG0" I L 6200 2400 60 
F3 "SEG1" I L 6200 2500 60 
F4 "SEG2" I L 6200 2600 60 
F5 "SEG3" I L 6200 2700 60 
F6 "SEG4" I L 6200 2800 60 
F7 "SEG5" I L 6200 2900 60 
F8 "SEG6" I L 6200 3000 60 
F9 "SEG7" I L 6200 3100 60 
F10 "DIGITA" I L 6200 3400 60 
F11 "DIGITB" I L 6200 3500 60 
$EndSheet
$Sheet
S 3200 4650 700  750 
U 57A4FF98
F0 "switches-16" 60
F1 "switches-16.sch" 60
$EndSheet
$Sheet
S 3250 5650 650  700 
U 57A4B894
F0 "keys-8" 60
F1 "keys-8.sch" 60
$EndSheet
$Sheet
S 8500 4900 500  150 
U 57A8A6F5
F0 "delaylineselect" 60
F1 "delaylineselect.sch" 60
$EndSheet
$Sheet
S 950  4750 650  450 
U 57AB3EDE
F0 "keys-3-3" 60
F1 "keys-3-3.sch" 60
$EndSheet
$Sheet
S 950  5500 650  450 
U 57AB3FB9
F0 "keys-6" 60
F1 "keys-6.sch" 60
$EndSheet
$Sheet
S 950  6250 750  450 
U 57AB4094
F0 "keys-9" 60
F1 "keys-9.sch" 60
$EndSheet
$Sheet
S 6850 5250 500  150 
U 57AB6737
F0 "lamps-4-3" 60
F1 "lamps-4-3.sch" 60
$EndSheet
$Sheet
S 5500 5700 650  600 
U 57AC6001
F0 "lamps-12-mag" 60
F1 "lamps-12-mag.sch" 60
$EndSheet
$Sheet
S 5500 6550 650  600 
U 57AC60DC
F0 "lamps-16-mag" 60
F1 "lamps-16-mag.sch" 60
$EndSheet
$EndSCHEMATC
