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
Sheet 1 6
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
S 5900 2550 1100 600 
U 57A33FAE
F0 "sheet57A33FA6" 60
F1 "mosfet_level_shifter.sch" 60
F2 "TTL_IN" I L 5900 3050 60 
F3 "CMOS_OUT" O R 7000 3050 60 
F4 "3V3" I L 5900 2800 60 
F5 "5V" I L 5900 2650 60 
$EndSheet
$Sheet
S 5900 1650 1100 600 
U 57A33FC0
F0 "sheet57A33FA7" 60
F1 "mosfet_level_shifter.sch" 60
F2 "TTL_IN" I L 5900 2150 60 
F3 "CMOS_OUT" O R 7000 2150 60 
F4 "3V3" I L 5900 1900 60 
F5 "5V" I L 5900 1750 60 
$EndSheet
$Sheet
S 5900 750  1100 600 
U 57A33FD2
F0 "sheet57A33FA8" 60
F1 "mosfet_level_shifter.sch" 60
F2 "TTL_IN" I L 5900 1250 60 
F3 "CMOS_OUT" O R 7000 1250 60 
F4 "3V3" I L 5900 1000 60 
F5 "5V" I L 5900 850 60 
$EndSheet
$Sheet
S 8150 1150 1100 2350
U 57A5CF2B
F0 "sheet57A5CF13" 60
F1 "ledcontroller.sch" 60
F2 "DIN_5V" I L 8150 1550 60 
F3 "DOUT_5V" O L 8150 2000 60 
F4 "VCC" I L 8150 1250 60 
F5 "CLK_5V" I L 8150 1700 60 
F6 "CS_5V" I L 8150 1850 60 
F7 "GND" I L 8150 1400 60 
F8 "DIG0" O R 9250 1250 60 
F9 "DIG4" O R 9250 1650 60 
F10 "DIG6" O R 9250 1850 60 
F11 "DIG2" O R 9250 1450 60 
F12 "DIG3" O R 9250 1550 60 
F13 "DIG7" O R 9250 1950 60 
F14 "DIG5" O R 9250 1750 60 
F15 "DIG1" O R 9250 1350 60 
F16 "SEGD" O R 9250 2800 60 
F17 "SEGDP" O R 9250 2400 60 
F18 "SEGE" O R 9250 2900 60 
F19 "SEGC" O R 9250 2700 60 
F20 "SEGG" O R 9250 3100 60 
F21 "SEGB" O R 9250 2600 60 
F22 "SEGF" O R 9250 3000 60 
F23 "SEGA" O R 9250 2500 60 
$EndSheet
$Sheet
S 8150 4050 1100 2350
U 57A5D8B0
F0 "sheet57A5D898" 60
F1 "ledcontroller.sch" 60
F2 "DIN_5V" I L 8150 4450 60 
F3 "DOUT_5V" O L 8150 4900 60 
F4 "VCC" I L 8150 4150 60 
F5 "CLK_5V" I L 8150 4600 60 
F6 "CS_5V" I L 8150 4750 60 
F7 "GND" I L 8150 4300 60 
F8 "DIG0" O R 9250 4150 60 
F9 "DIG4" O R 9250 4550 60 
F10 "DIG6" O R 9250 4750 60 
F11 "DIG2" O R 9250 4350 60 
F12 "DIG3" O R 9250 4450 60 
F13 "DIG7" O R 9250 4850 60 
F14 "DIG5" O R 9250 4650 60 
F15 "DIG1" O R 9250 4250 60 
F16 "SEGD" O R 9250 5700 60 
F17 "SEGDP" O R 9250 5300 60 
F18 "SEGE" O R 9250 5800 60 
F19 "SEGC" O R 9250 5600 60 
F20 "SEGG" O R 9250 6000 60 
F21 "SEGB" O R 9250 5500 60 
F22 "SEGF" O R 9250 5900 60 
F23 "SEGA" O R 9250 5400 60 
$EndSheet
Wire Wire Line
	8150 2000 7700 2000
Wire Wire Line
	7700 2000 7700 4450
Wire Wire Line
	7700 4450 8150 4450
Wire Wire Line
	7600 1700 7600 4600
Wire Wire Line
	7600 4600 8150 4600
Connection ~ 7600 1700
Wire Wire Line
	8150 4750 7500 4750
Wire Wire Line
	7500 4750 7500 1850
$Comp
L VCC #PWR01
U 1 1 57A60478
P 5750 800
F 0 "#PWR01" H 5750 650 50  0001 C CNN
F 1 "VCC" H 5750 950 50  0000 C CNN
F 2 "" H 5750 800 50  0000 C CNN
F 3 "" H 5750 800 50  0000 C CNN
	1    5750 800 
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR02
U 1 1 57A60684
P 5550 800
F 0 "#PWR02" H 5550 650 50  0001 C CNN
F 1 "VDD" H 5550 950 50  0000 C CNN
F 2 "" H 5550 800 50  0000 C CNN
F 3 "" H 5550 800 50  0000 C CNN
	1    5550 800 
	1    0    0    -1  
$EndComp
NoConn ~ 8150 4900
$Comp
L VCC #PWR03
U 1 1 57A68689
P 8000 1150
F 0 "#PWR03" H 8000 1000 50  0001 C CNN
F 1 "VCC" H 8000 1300 50  0000 C CNN
F 2 "" H 8000 1150 50  0000 C CNN
F 3 "" H 8000 1150 50  0000 C CNN
	1    8000 1150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 57A687E4
P 8000 4000
F 0 "#PWR04" H 8000 3850 50  0001 C CNN
F 1 "VCC" H 8000 4150 50  0000 C CNN
F 2 "" H 8000 4000 50  0000 C CNN
F 3 "" H 8000 4000 50  0000 C CNN
	1    8000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4000 8000 4150
Wire Wire Line
	8000 4150 8150 4150
Wire Wire Line
	8150 1250 8000 1250
Wire Wire Line
	8000 1250 8000 1150
$Comp
L GND #PWR05
U 1 1 57A68AD3
P 8000 1400
F 0 "#PWR05" H 8000 1150 50  0001 C CNN
F 1 "GND" H 8000 1250 50  0000 C CNN
F 2 "" H 8000 1400 50  0000 C CNN
F 3 "" H 8000 1400 50  0000 C CNN
	1    8000 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 1400 8000 1400
$Comp
L GND #PWR06
U 1 1 57A691A3
P 8050 4300
F 0 "#PWR06" H 8050 4050 50  0001 C CNN
F 1 "GND" H 8050 4150 50  0000 C CNN
F 2 "" H 8050 4300 50  0000 C CNN
F 3 "" H 8050 4300 50  0000 C CNN
	1    8050 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 4300 8050 4300
NoConn ~ 9250 4850
NoConn ~ 9250 4750
NoConn ~ 9250 4650
NoConn ~ 9250 4550
NoConn ~ 9250 4450
Text Label 9350 2400 0    60   ~ 0
A_SEGDP
Text Label 9350 2500 0    60   ~ 0
A_SEGA
Text Label 9350 2600 0    60   ~ 0
A_SEGB
Text Label 9350 2700 0    60   ~ 0
A_SEGC
Text Label 9350 2800 0    60   ~ 0
A_SEGD
Text Label 9350 2900 0    60   ~ 0
A_SEGE
Text Label 9350 3000 0    60   ~ 0
A_SEGF
Text Label 9350 3100 0    60   ~ 0
A_SEGG
Wire Wire Line
	9350 2400 9250 2400
Wire Wire Line
	9250 2500 9350 2500
Wire Wire Line
	9350 2600 9250 2600
Wire Wire Line
	9250 2700 9350 2700
Wire Wire Line
	9350 2800 9250 2800
Wire Wire Line
	9250 2900 9350 2900
Wire Wire Line
	9350 3000 9250 3000
Wire Wire Line
	9250 3100 9350 3100
Text Label 9350 1450 0    60   ~ 0
A_DIG2
Text Label 9350 1550 0    60   ~ 0
A_DIG3
Wire Wire Line
	9350 1450 9250 1450
Wire Wire Line
	9250 1550 9350 1550
Text Label 9350 1250 0    60   ~ 0
A_DIG0
Text Label 9350 1350 0    60   ~ 0
A_DIG1
Wire Wire Line
	9350 1250 9250 1250
Wire Wire Line
	9250 1350 9350 1350
Text Label 9350 1850 0    60   ~ 0
A_DIG6
Text Label 9350 1950 0    60   ~ 0
A_DIG7
Wire Wire Line
	9350 1850 9250 1850
Wire Wire Line
	9250 1950 9350 1950
Text Label 9350 1650 0    60   ~ 0
A_DIG4
Text Label 9350 1750 0    60   ~ 0
A_DIG5
Wire Wire Line
	9350 1650 9250 1650
Wire Wire Line
	9250 1750 9350 1750
Text Label 9350 5300 0    60   ~ 0
B_SEGDP
Text Label 9350 5400 0    60   ~ 0
B_SEGA
Text Label 9350 5500 0    60   ~ 0
B_SEGB
Text Label 9350 5600 0    60   ~ 0
B_SEGC
Text Label 9350 5700 0    60   ~ 0
B_SEGD
Text Label 9350 5800 0    60   ~ 0
B_SEGE
Text Label 9350 5900 0    60   ~ 0
B_SEGF
Text Label 9350 6000 0    60   ~ 0
B_SEGG
Wire Wire Line
	9350 5300 9250 5300
Wire Wire Line
	9250 5400 9350 5400
Wire Wire Line
	9350 5500 9250 5500
Wire Wire Line
	9250 5600 9350 5600
Wire Wire Line
	9350 5700 9250 5700
Wire Wire Line
	9250 5800 9350 5800
Wire Wire Line
	9350 5900 9250 5900
Wire Wire Line
	9250 6000 9350 6000
Text Label 9350 4350 0    60   ~ 0
B_DIG2
Wire Wire Line
	9350 4350 9250 4350
Text Label 9350 4150 0    60   ~ 0
B_DIG0
Text Label 9350 4250 0    60   ~ 0
B_DIG1
Wire Wire Line
	9350 4150 9250 4150
Wire Wire Line
	9250 4250 9350 4250
$Comp
L CONN_02X05 P1
U 1 1 57A6EF47
P 10500 850
F 0 "P1" H 10500 1150 50  0000 C CNN
F 1 "CONN_02X05" H 10500 550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05" H 10500 -350 50  0001 C CNN
F 3 "" H 10500 -350 50  0000 C CNN
	1    10500 850 
	1    0    0    -1  
$EndComp
Text Label 10750 650  0    60   ~ 0
A_SEGDP
Text Label 10250 650  2    60   ~ 0
A_SEGA
Text Label 10250 750  2    60   ~ 0
A_SEGB
Text Label 10250 850  2    60   ~ 0
A_SEGC
Text Label 10250 950  2    60   ~ 0
A_SEGD
Text Label 10250 1050 2    60   ~ 0
A_SEGE
Text Label 10750 950  0    60   ~ 0
A_SEGF
Text Label 10750 1050 0    60   ~ 0
A_SEGG
Text Label 10750 750  0    60   ~ 0
A_DIG0
Text Label 10750 850  0    60   ~ 0
A_DIG1
$Comp
L CONN_02X05 P5
U 1 1 57A4A694
P 10500 1700
F 0 "P5" H 10500 2000 50  0000 C CNN
F 1 "CONN_02X05" H 10500 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05" H 10500 500 50  0001 C CNN
F 3 "" H 10500 500 50  0000 C CNN
	1    10500 1700
	1    0    0    -1  
$EndComp
Text Label 10750 1500 0    60   ~ 0
A_SEGDP
Text Label 10250 1500 2    60   ~ 0
A_SEGA
Text Label 10250 1600 2    60   ~ 0
A_SEGB
Text Label 10250 1700 2    60   ~ 0
A_SEGC
Text Label 10250 1800 2    60   ~ 0
A_SEGD
Text Label 10250 1900 2    60   ~ 0
A_SEGE
Text Label 10750 1800 0    60   ~ 0
A_SEGF
Text Label 10750 1900 0    60   ~ 0
A_SEGG
Text Label 10750 1600 0    60   ~ 0
A_DIG2
Text Label 10750 1700 0    60   ~ 0
A_DIG3
$Comp
L CONN_02X05 P6
U 1 1 57A4AC92
P 10500 2500
F 0 "P6" H 10500 2800 50  0000 C CNN
F 1 "CONN_02X05" H 10500 2200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05" H 10500 1300 50  0001 C CNN
F 3 "" H 10500 1300 50  0000 C CNN
	1    10500 2500
	1    0    0    -1  
$EndComp
Text Label 10750 2300 0    60   ~ 0
A_SEGDP
Text Label 10250 2300 2    60   ~ 0
A_SEGA
Text Label 10250 2400 2    60   ~ 0
A_SEGB
Text Label 10250 2500 2    60   ~ 0
A_SEGC
Text Label 10250 2600 2    60   ~ 0
A_SEGD
Text Label 10250 2700 2    60   ~ 0
A_SEGE
Text Label 10750 2600 0    60   ~ 0
A_SEGF
Text Label 10750 2700 0    60   ~ 0
A_SEGG
Text Label 10750 2400 0    60   ~ 0
A_DIG4
Text Label 10750 2500 0    60   ~ 0
A_DIG5
$Comp
L CONN_02X05 P11
U 1 1 57A4ACA2
P 10500 3350
F 0 "P11" H 10500 3650 50  0000 C CNN
F 1 "CONN_02X05" H 10500 3050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05" H 10500 2150 50  0001 C CNN
F 3 "" H 10500 2150 50  0000 C CNN
	1    10500 3350
	1    0    0    -1  
$EndComp
Text Label 10750 3150 0    60   ~ 0
A_SEGDP
Text Label 10250 3150 2    60   ~ 0
A_SEGA
Text Label 10250 3250 2    60   ~ 0
A_SEGB
Text Label 10250 3350 2    60   ~ 0
A_SEGC
Text Label 10250 3450 2    60   ~ 0
A_SEGD
Text Label 10250 3550 2    60   ~ 0
A_SEGE
Text Label 10750 3450 0    60   ~ 0
A_SEGF
Text Label 10750 3550 0    60   ~ 0
A_SEGG
Text Label 10750 3250 0    60   ~ 0
A_DIG6
Text Label 10750 3350 0    60   ~ 0
A_DIG7
$Comp
L CONN_02X05 P12
U 1 1 57A4AE68
P 10500 4250
F 0 "P12" H 10500 4550 50  0000 C CNN
F 1 "CONN_02X05" H 10500 3950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05" H 10500 3050 50  0001 C CNN
F 3 "" H 10500 3050 50  0000 C CNN
	1    10500 4250
	1    0    0    -1  
$EndComp
Text Label 10750 4050 0    60   ~ 0
B_SEGDP
Text Label 10250 4050 2    60   ~ 0
B_SEGA
Text Label 10250 4150 2    60   ~ 0
B_SEGB
Text Label 10250 4250 2    60   ~ 0
B_SEGC
Text Label 10250 4350 2    60   ~ 0
B_SEGD
Text Label 10250 4450 2    60   ~ 0
B_SEGE
Text Label 10750 4350 0    60   ~ 0
B_SEGF
Text Label 10750 4450 0    60   ~ 0
B_SEGG
Text Label 10750 4150 0    60   ~ 0
B_DIG0
Text Label 10750 4250 0    60   ~ 0
B_DIG1
$Comp
L CONN_02X05 P13
U 1 1 57A4AE78
P 10500 5100
F 0 "P13" H 10500 5400 50  0000 C CNN
F 1 "CONN_02X05" H 10500 4800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05" H 10500 3900 50  0001 C CNN
F 3 "" H 10500 3900 50  0000 C CNN
	1    10500 5100
	1    0    0    -1  
$EndComp
Text Label 10750 4900 0    60   ~ 0
B_SEGDP
Text Label 10250 4900 2    60   ~ 0
B_SEGA
Text Label 10250 5000 2    60   ~ 0
B_SEGB
Text Label 10250 5100 2    60   ~ 0
B_SEGC
Text Label 10250 5200 2    60   ~ 0
B_SEGD
Text Label 10250 5300 2    60   ~ 0
B_SEGE
Text Label 10750 5200 0    60   ~ 0
B_SEGF
Text Label 10750 5300 0    60   ~ 0
B_SEGG
Text Label 10750 5000 0    60   ~ 0
B_DIG2
NoConn ~ 10750 5100
Wire Wire Line
	5750 800  5750 850 
Wire Wire Line
	5750 850  5900 850 
Wire Wire Line
	5900 1000 5550 1000
Wire Wire Line
	5550 1000 5550 800 
$Comp
L VCC #PWR07
U 1 1 57A5659F
P 5750 1700
F 0 "#PWR07" H 5750 1550 50  0001 C CNN
F 1 "VCC" H 5750 1850 50  0000 C CNN
F 2 "" H 5750 1700 50  0000 C CNN
F 3 "" H 5750 1700 50  0000 C CNN
	1    5750 1700
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR08
U 1 1 57A565A5
P 5550 1700
F 0 "#PWR08" H 5550 1550 50  0001 C CNN
F 1 "VDD" H 5550 1850 50  0000 C CNN
F 2 "" H 5550 1700 50  0000 C CNN
F 3 "" H 5550 1700 50  0000 C CNN
	1    5550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1700 5750 1750
Wire Wire Line
	5750 1750 5900 1750
Wire Wire Line
	5900 1900 5550 1900
Wire Wire Line
	5550 1900 5550 1700
$Comp
L VCC #PWR09
U 1 1 57A5671D
P 5750 2600
F 0 "#PWR09" H 5750 2450 50  0001 C CNN
F 1 "VCC" H 5750 2750 50  0000 C CNN
F 2 "" H 5750 2600 50  0000 C CNN
F 3 "" H 5750 2600 50  0000 C CNN
	1    5750 2600
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR010
U 1 1 57A56723
P 5550 2600
F 0 "#PWR010" H 5550 2450 50  0001 C CNN
F 1 "VDD" H 5550 2750 50  0000 C CNN
F 2 "" H 5550 2600 50  0000 C CNN
F 3 "" H 5550 2600 50  0000 C CNN
	1    5550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2600 5750 2650
Wire Wire Line
	5750 2650 5900 2650
Wire Wire Line
	5900 2800 5550 2800
Wire Wire Line
	5550 2800 5550 2600
Wire Wire Line
	7000 1250 7600 1250
Wire Wire Line
	7600 1250 7600 1550
Wire Wire Line
	7600 1550 8150 1550
Wire Wire Line
	7150 1700 8150 1700
Wire Wire Line
	7150 1700 7150 2150
Wire Wire Line
	7150 2150 7000 2150
Wire Wire Line
	7500 1850 8150 1850
Wire Wire Line
	7000 3050 7500 3050
Connection ~ 7500 3050
$Comp
L BARREL_JACK CON1
U 1 1 57A5975A
P 1300 850
F 0 "CON1" H 1300 1100 50  0000 C CNN
F 1 "BARREL_JACK" H 1300 650 50  0000 C CNN
F 2 "" H 1300 850 50  0000 C CNN
F 3 "" H 1300 850 50  0000 C CNN
	1    1300 850 
	1    0    0    -1  
$EndComp
$Comp
L Pi2_Connector U5
U 1 1 57A598EA
P 2450 2600
F 0 "U5" H 2450 2500 50  0000 C CNN
F 1 "Pi2_Connector" H 2450 2700 50  0000 C CNN
F 2 "MODULE" H 2450 2600 50  0001 C CNN
F 3 "DOCUMENTATION" H 2450 2600 50  0001 C CNN
	1    2450 2600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 57A5A394
P 1950 700
F 0 "#PWR011" H 1950 550 50  0001 C CNN
F 1 "VCC" H 1950 850 50  0000 C CNN
F 2 "" H 1950 700 50  0000 C CNN
F 3 "" H 1950 700 50  0000 C CNN
	1    1950 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 750  1950 750 
Wire Wire Line
	1950 750  1950 700 
NoConn ~ 1600 850 
$Comp
L GND #PWR012
U 1 1 57A5A6A5
P 1950 1050
F 0 "#PWR012" H 1950 800 50  0001 C CNN
F 1 "GND" H 1950 900 50  0000 C CNN
F 2 "" H 1950 1050 50  0000 C CNN
F 3 "" H 1950 1050 50  0000 C CNN
	1    1950 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1050 1950 950 
Wire Wire Line
	1600 950  2300 950 
$Comp
L GND #PWR013
U 1 1 57A5ABCB
P 3700 3650
F 0 "#PWR013" H 3700 3400 50  0001 C CNN
F 1 "GND" H 3700 3500 50  0000 C CNN
F 2 "" H 3700 3650 50  0000 C CNN
F 3 "" H 3700 3650 50  0000 C CNN
	1    3700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3250 3700 3250
Wire Wire Line
	3700 1850 3700 3650
Wire Wire Line
	3200 3050 3700 3050
Connection ~ 3700 3250
Wire Wire Line
	3200 2550 3700 2550
Connection ~ 3700 3050
Wire Wire Line
	3200 2250 3700 2250
Connection ~ 3700 2550
Wire Wire Line
	3200 1850 3700 1850
Connection ~ 3700 2250
NoConn ~ 3200 1650
NoConn ~ 3200 1750
$Comp
L VDD #PWR014
U 1 1 57A5B383
P 900 1600
F 0 "#PWR014" H 900 1450 50  0001 C CNN
F 1 "VDD" H 900 1750 50  0000 C CNN
F 2 "" H 900 1600 50  0000 C CNN
F 3 "" H 900 1600 50  0000 C CNN
	1    900  1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1650 1700 1650
Wire Wire Line
	900  1600 900  2450
Wire Wire Line
	900  2450 1700 2450
Connection ~ 900  1650
Wire Wire Line
	1700 2050 950  2050
Wire Wire Line
	950  2050 950  3600
Wire Wire Line
	950  3550 1700 3550
Wire Wire Line
	1700 2850 950  2850
Connection ~ 950  2850
$Comp
L GND #PWR015
U 1 1 57A5C258
P 950 3600
F 0 "#PWR015" H 950 3350 50  0001 C CNN
F 1 "GND" H 950 3450 50  0000 C CNN
F 2 "" H 950 3600 50  0000 C CNN
F 3 "" H 950 3600 50  0000 C CNN
	1    950  3600
	1    0    0    -1  
$EndComp
Connection ~ 950  3550
Text Label 1700 1750 2    60   ~ 0
I2C1_SDA
Text Label 1700 1850 2    60   ~ 0
I2C1_SCL
Text Label 1700 2950 2    60   ~ 0
I2C2_SDA
Text Label 3200 2950 0    60   ~ 0
I2C2_SCL
Text Label 1700 2550 2    60   ~ 0
SPI0_MOSI
Text Label 1700 2650 2    60   ~ 0
SPI0_MISO
Text Label 1700 2750 2    60   ~ 0
SPI0_SCLK
Text Label 3200 2750 0    60   ~ 0
SPI0_CE0
Text Label 3200 2850 0    60   ~ 0
SPI0_CE1
Text Label 5900 3050 2    60   ~ 0
SPI0_CE0
Text Label 5900 1250 2    60   ~ 0
SPI0_MOSI
Text Label 5900 2150 2    60   ~ 0
SPI0_SCLK
$Comp
L PWR_FLAG #FLG016
U 1 1 57A65695
P 2300 700
F 0 "#FLG016" H 2300 795 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 880 50  0000 C CNN
F 2 "" H 2300 700 50  0000 C CNN
F 3 "" H 2300 700 50  0000 C CNN
	1    2300 700 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG017
U 1 1 57A6581F
P 2300 950
F 0 "#FLG017" H 2300 1045 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 1130 50  0000 C CNN
F 2 "" H 2300 950 50  0000 C CNN
F 3 "" H 2300 950 50  0000 C CNN
	1    2300 950 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG018
U 1 1 57A659A2
P 650 1650
F 0 "#FLG018" H 650 1745 50  0001 C CNN
F 1 "PWR_FLAG" H 650 1830 50  0000 C CNN
F 2 "" H 650 1650 50  0000 C CNN
F 3 "" H 650 1650 50  0000 C CNN
	1    650  1650
	1    0    0    -1  
$EndComp
Connection ~ 1950 950 
Wire Wire Line
	1950 700  2300 700 
Text Label 3200 1950 0    60   ~ 0
TXD
Text Label 3200 2050 0    60   ~ 0
RXD
NoConn ~ 3200 2150
NoConn ~ 3200 2350
NoConn ~ 3200 2450
NoConn ~ 3200 2650
NoConn ~ 3200 3150
NoConn ~ 3200 3350
NoConn ~ 1700 3450
NoConn ~ 1700 3250
NoConn ~ 1700 3150
NoConn ~ 1700 3050
NoConn ~ 1700 2350
NoConn ~ 1700 2250
NoConn ~ 1700 2150
NoConn ~ 1700 1950
Text Label 1650 5850 2    60   ~ 0
I2C2_SDA
Text Label 1650 5950 2    60   ~ 0
I2C2_SCL
Text Label 1650 5250 2    60   ~ 0
I2C1_SDA
Text Label 1650 5350 2    60   ~ 0
I2C1_SCL
$Comp
L VDD #PWR?
U 1 1 57A9D16C
P 850 5000
F 0 "#PWR?" H 850 4850 50  0001 C CNN
F 1 "VDD" H 850 5150 50  0000 C CNN
F 2 "" H 850 5000 50  0000 C CNN
F 3 "" H 850 5000 50  0000 C CNN
	1    850  5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57A9D2DF
P 1050 4900
F 0 "#PWR?" H 1050 4650 50  0001 C CNN
F 1 "GND" H 1050 4750 50  0000 C CNN
F 2 "" H 1050 4900 50  0000 C CNN
F 3 "" H 1050 4900 50  0000 C CNN
	1    1050 4900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 57A9D44C
P 2050 5200
F 0 "P?" H 2050 5450 50  0000 C CNN
F 1 "CONN_01X04" V 2150 5200 50  0000 C CNN
F 2 "" H 2050 5200 50  0000 C CNN
F 3 "" H 2050 5200 50  0000 C CNN
	1    2050 5200
	1    0    0    -1  
$EndComp
Connection ~ 1850 5250
Connection ~ 1850 5350
Wire Wire Line
	1200 5050 1200 4900
Wire Wire Line
	1200 4900 1050 4900
Connection ~ 1850 5050
Wire Wire Line
	850  5000 850  5150
Connection ~ 1850 5150
Wire Wire Line
	1200 5050 5350 5050
Wire Wire Line
	850  5150 5350 5150
Wire Wire Line
	1650 5250 5350 5250
Wire Wire Line
	1650 5350 5350 5350
$Comp
L CONN_01X04 P?
U 1 1 57AA06F6
P 2550 5200
F 0 "P?" H 2550 5450 50  0000 C CNN
F 1 "CONN_01X04" V 2650 5200 50  0000 C CNN
F 2 "" H 2550 5200 50  0000 C CNN
F 3 "" H 2550 5200 50  0000 C CNN
	1    2550 5200
	1    0    0    -1  
$EndComp
Connection ~ 2350 5250
Connection ~ 2350 5350
Connection ~ 2350 5050
Connection ~ 2350 5150
$Comp
L CONN_01X04 P?
U 1 1 57AA0A11
P 3050 5200
F 0 "P?" H 3050 5450 50  0000 C CNN
F 1 "CONN_01X04" V 3150 5200 50  0000 C CNN
F 2 "" H 3050 5200 50  0000 C CNN
F 3 "" H 3050 5200 50  0000 C CNN
	1    3050 5200
	1    0    0    -1  
$EndComp
Connection ~ 2850 5250
Connection ~ 2850 5350
Connection ~ 2850 5050
Connection ~ 2850 5150
$Comp
L CONN_01X04 P?
U 1 1 57AA0A1F
P 3550 5200
F 0 "P?" H 3550 5450 50  0000 C CNN
F 1 "CONN_01X04" V 3650 5200 50  0000 C CNN
F 2 "" H 3550 5200 50  0000 C CNN
F 3 "" H 3550 5200 50  0000 C CNN
	1    3550 5200
	1    0    0    -1  
$EndComp
Connection ~ 3350 5250
Connection ~ 3350 5350
Connection ~ 3350 5050
Connection ~ 3350 5150
$Comp
L CONN_01X04 P?
U 1 1 57AA0C2D
P 4050 5200
F 0 "P?" H 4050 5450 50  0000 C CNN
F 1 "CONN_01X04" V 4150 5200 50  0000 C CNN
F 2 "" H 4050 5200 50  0000 C CNN
F 3 "" H 4050 5200 50  0000 C CNN
	1    4050 5200
	1    0    0    -1  
$EndComp
Connection ~ 3850 5250
Connection ~ 3850 5350
Connection ~ 3850 5050
Connection ~ 3850 5150
$Comp
L CONN_01X04 P?
U 1 1 57AA0C3B
P 4550 5200
F 0 "P?" H 4550 5450 50  0000 C CNN
F 1 "CONN_01X04" V 4650 5200 50  0000 C CNN
F 2 "" H 4550 5200 50  0000 C CNN
F 3 "" H 4550 5200 50  0000 C CNN
	1    4550 5200
	1    0    0    -1  
$EndComp
Connection ~ 4350 5250
Connection ~ 4350 5350
Connection ~ 4350 5050
Connection ~ 4350 5150
$Comp
L CONN_01X04 P?
U 1 1 57AA0C49
P 5050 5200
F 0 "P?" H 5050 5450 50  0000 C CNN
F 1 "CONN_01X04" V 5150 5200 50  0000 C CNN
F 2 "" H 5050 5200 50  0000 C CNN
F 3 "" H 5050 5200 50  0000 C CNN
	1    5050 5200
	1    0    0    -1  
$EndComp
Connection ~ 4850 5250
Connection ~ 4850 5350
Connection ~ 4850 5050
Connection ~ 4850 5150
$Comp
L CONN_01X04 P?
U 1 1 57AA0C57
P 5550 5200
F 0 "P?" H 5550 5450 50  0000 C CNN
F 1 "CONN_01X04" V 5650 5200 50  0000 C CNN
F 2 "" H 5550 5200 50  0000 C CNN
F 3 "" H 5550 5200 50  0000 C CNN
	1    5550 5200
	1    0    0    -1  
$EndComp
Connection ~ 5350 5250
Connection ~ 5350 5350
Connection ~ 5350 5050
Connection ~ 5350 5150
$Comp
L VDD #PWR?
U 1 1 57AA1B7B
P 850 5600
F 0 "#PWR?" H 850 5450 50  0001 C CNN
F 1 "VDD" H 850 5750 50  0000 C CNN
F 2 "" H 850 5600 50  0000 C CNN
F 3 "" H 850 5600 50  0000 C CNN
	1    850  5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57AA1B81
P 1050 5500
F 0 "#PWR?" H 1050 5250 50  0001 C CNN
F 1 "GND" H 1050 5350 50  0000 C CNN
F 2 "" H 1050 5500 50  0000 C CNN
F 3 "" H 1050 5500 50  0000 C CNN
	1    1050 5500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 57AA1B87
P 2050 5800
F 0 "P?" H 2050 6050 50  0000 C CNN
F 1 "CONN_01X04" V 2150 5800 50  0000 C CNN
F 2 "" H 2050 5800 50  0000 C CNN
F 3 "" H 2050 5800 50  0000 C CNN
	1    2050 5800
	1    0    0    -1  
$EndComp
Connection ~ 1850 5850
Connection ~ 1850 5950
Wire Wire Line
	1200 5650 1200 5500
Wire Wire Line
	1200 5500 1050 5500
Connection ~ 1850 5650
Wire Wire Line
	850  5600 850  5750
Connection ~ 1850 5750
$Comp
L CONN_01X04 P?
U 1 1 57AA1B98
P 2550 5800
F 0 "P?" H 2550 6050 50  0000 C CNN
F 1 "CONN_01X04" V 2650 5800 50  0000 C CNN
F 2 "" H 2550 5800 50  0000 C CNN
F 3 "" H 2550 5800 50  0000 C CNN
	1    2550 5800
	1    0    0    -1  
$EndComp
Connection ~ 2350 5850
Connection ~ 2350 5950
Connection ~ 2350 5650
Connection ~ 2350 5750
$Comp
L CONN_01X04 P?
U 1 1 57AA1BA2
P 3050 5800
F 0 "P?" H 3050 6050 50  0000 C CNN
F 1 "CONN_01X04" V 3150 5800 50  0000 C CNN
F 2 "" H 3050 5800 50  0000 C CNN
F 3 "" H 3050 5800 50  0000 C CNN
	1    3050 5800
	1    0    0    -1  
$EndComp
Connection ~ 2850 5850
Connection ~ 2850 5950
Connection ~ 2850 5650
Connection ~ 2850 5750
$Comp
L CONN_01X04 P?
U 1 1 57AA1BAC
P 3550 5800
F 0 "P?" H 3550 6050 50  0000 C CNN
F 1 "CONN_01X04" V 3650 5800 50  0000 C CNN
F 2 "" H 3550 5800 50  0000 C CNN
F 3 "" H 3550 5800 50  0000 C CNN
	1    3550 5800
	1    0    0    -1  
$EndComp
Connection ~ 3350 5850
Connection ~ 3350 5950
Connection ~ 3350 5650
Connection ~ 3350 5750
Wire Wire Line
	1200 5650 3350 5650
Wire Wire Line
	850  5750 3350 5750
Wire Wire Line
	1650 5850 3350 5850
Wire Wire Line
	3350 5950 1650 5950
NoConn ~ 3200 3450
NoConn ~ 3200 3550
NoConn ~ 1700 3350
Text Notes 2650 850  0    60   ~ 0
5V 1A LED Supply\ncenter positive.
Text Notes 600  4250 0    60   ~ 0
Raspberry Pi must be supplied by 5V 2A micro USB, provides 3v3 power for the switches,\nand enough USB current for the screen and possibly WiFi dongle.\n\nCHECK IO expander power requirements and pullup resistance to ensure the 3v3 supply is not overloaded.\n
$EndSCHEMATC
