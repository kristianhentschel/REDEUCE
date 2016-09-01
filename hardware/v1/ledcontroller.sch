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
LIBS:Pi2_Connector
LIBS:MAX7221
LIBS:MCP23S17
LIBS:MCP23017
LIBS:piconnect-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L MAX7221 U2
U 1 1 57A34228
P 5750 3600
AR Path="/57A5CF2B/57A34228" Ref="U2"  Part="1" 
AR Path="/57A5D8B0/57A34228" Ref="U3"  Part="1" 
F 0 "U3" H 5750 3500 50  0000 C CNN
F 1 "MAX7221" H 5750 3700 50  0000 C CNN
F 2 "DIL24:DIL24" H 5750 3600 50  0001 C CNN
F 3 "DOCUMENTATION" H 5750 3600 50  0001 C CNN
	1    5750 3600
	1    0    0    -1  
$EndComp
Text HLabel 5000 3050 0    60   Input ~ 0
DIN_5V
Text HLabel 6500 3050 2    60   Output ~ 0
DOUT_5V
Text HLabel 7250 3550 2    60   Input ~ 0
VCC
Text HLabel 6500 4150 2    60   Input ~ 0
CLK_5V
Text HLabel 5000 4150 0    60   Input ~ 0
CS_5V
Text HLabel 4300 3350 0    60   Input ~ 0
GND
Wire Wire Line
	5000 3350 4300 3350
Wire Wire Line
	4350 3850 5000 3850
Wire Wire Line
	4350 2350 4350 3850
Connection ~ 4350 3350
$Comp
L R R7
U 1 1 57A343D9
P 7000 3650
AR Path="/57A5CF2B/57A343D9" Ref="R7"  Part="1" 
AR Path="/57A5D8B0/57A343D9" Ref="R8"  Part="1" 
F 0 "R8" V 7080 3650 50  0000 C CNN
F 1 "R_SET" V 7000 3650 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 6930 3650 50  0001 C CNN
F 3 "" H 7000 3650 50  0000 C CNN
	1    7000 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 3650 6500 3650
Wire Wire Line
	7250 3550 6500 3550
Wire Wire Line
	7150 2350 7150 3650
Connection ~ 7150 3550
Text HLabel 5000 3150 0    60   Output ~ 0
DIG0
Text HLabel 5000 3250 0    60   Output ~ 0
DIG4
Text HLabel 5000 3450 0    60   Output ~ 0
DIG6
Text HLabel 5000 3550 0    60   Output ~ 0
DIG2
Text HLabel 5000 3650 0    60   Output ~ 0
DIG3
Text HLabel 5000 3750 0    60   Output ~ 0
DIG7
Text HLabel 5000 3950 0    60   Output ~ 0
DIG5
Text HLabel 5000 4050 0    60   Output ~ 0
DIG1
Wire Wire Line
	7150 2350 5800 2350
Wire Wire Line
	4350 2350 5500 2350
$Comp
L C C1
U 1 1 57A3585E
P 5650 2150
AR Path="/57A5CF2B/57A3585E" Ref="C1"  Part="1" 
AR Path="/57A5D8B0/57A3585E" Ref="C3"  Part="1" 
F 0 "C3" H 5675 2250 50  0000 L CNN
F 1 "C" H 5675 2050 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D6_P5" H 5688 2000 50  0001 C CNN
F 3 "" H 5650 2150 50  0000 C CNN
	1    5650 2150
	0    1    1    0   
$EndComp
$Comp
L CP C2
U 1 1 57A358C3
P 5650 2450
AR Path="/57A5CF2B/57A358C3" Ref="C2"  Part="1" 
AR Path="/57A5D8B0/57A358C3" Ref="C4"  Part="1" 
F 0 "C4" H 5675 2550 50  0000 L CNN
F 1 "CP" H 5675 2350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L11_P2" H 5688 2300 50  0001 C CNN
F 3 "" H 5650 2450 50  0000 C CNN
	1    5650 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2150 5800 2450
Connection ~ 5800 2350
Wire Wire Line
	5500 2150 5500 2450
Connection ~ 5500 2350
Text HLabel 6500 3150 2    60   Output ~ 0
SEGD
Text HLabel 6500 3250 2    60   Output ~ 0
SEGDP
Text HLabel 6500 3350 2    60   Output ~ 0
SEGE
Text HLabel 6500 3450 2    60   Output ~ 0
SEGC
Text HLabel 6500 3750 2    60   Output ~ 0
SEGG
Text HLabel 6500 3850 2    60   Output ~ 0
SEGB
Text HLabel 6500 3950 2    60   Output ~ 0
SEGF
Text HLabel 6500 4050 2    60   Output ~ 0
SEGA
$EndSCHEMATC
