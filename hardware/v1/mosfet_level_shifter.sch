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
Sheet 7 24
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
L R R1
U 1 1 5798C5FD
P 1150 1000
AR Path="/57A2FF40/57A33FAE/5798C5FD" Ref="R1"  Part="1" 
AR Path="/57A2FF40/57A33FC0/5798C5FD" Ref="R3"  Part="1" 
AR Path="/57A2FF40/57A33FD2/5798C5FD" Ref="R5"  Part="1" 
F 0 "R1" V 1230 1000 50  0000 C CNN
F 1 "10K" V 1150 1000 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1080 1000 50  0001 C CNN
F 3 "" H 1150 1000 50  0000 C CNN
	1    1150 1000
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5798C628
P 2000 1000
AR Path="/57A2FF40/57A33FAE/5798C628" Ref="R2"  Part="1" 
AR Path="/57A2FF40/57A33FC0/5798C628" Ref="R4"  Part="1" 
AR Path="/57A2FF40/57A33FD2/5798C628" Ref="R6"  Part="1" 
F 0 "R2" V 2080 1000 50  0000 C CNN
F 1 "10K" V 2000 1000 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1930 1000 50  0001 C CNN
F 3 "" H 2000 1000 50  0000 C CNN
	1    2000 1000
	1    0    0    -1  
$EndComp
Text HLabel 900  1300 0    60   Input ~ 0
TTL_IN
Text HLabel 2200 1300 2    60   Output ~ 0
CMOS_OUT
Text HLabel 900  700  0    60   Input ~ 0
3V3
Text HLabel 1800 700  0    60   Input ~ 0
5V
$Comp
L BS170 Q1
U 1 1 5798C66E
P 1550 1200
AR Path="/57A2FF40/57A33FAE/5798C66E" Ref="Q1"  Part="1" 
AR Path="/57A2FF40/57A33FC0/5798C66E" Ref="Q2"  Part="1" 
AR Path="/57A2FF40/57A33FD2/5798C66E" Ref="Q3"  Part="1" 
F 0 "Q1" H 1750 1275 50  0000 L CNN
F 1 "2N7000" H 1750 1200 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 1750 1125 50  0000 L CIN
F 3 "" H 1550 1200 50  0000 L CNN
	1    1550 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 1000 1500 700 
Wire Wire Line
	1500 700  900  700 
Wire Wire Line
	1150 850  1150 700 
Connection ~ 1150 700 
Wire Wire Line
	1150 1150 1150 1300
Wire Wire Line
	900  1300 1350 1300
Connection ~ 1150 1300
Wire Wire Line
	1800 700  2000 700 
Wire Wire Line
	2000 700  2000 850 
Wire Wire Line
	1750 1300 2200 1300
Wire Wire Line
	2000 1300 2000 1150
Connection ~ 2000 1300
$EndSCHEMATC
