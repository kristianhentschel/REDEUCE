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
Sheet 1 26
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
S 3900 1150 550  1200
U 57A6A693
F0 "sheet57A6A687" 60
F1 "ledrow.sch" 60
F2 "DIGIT" I L 3900 1250 60 
F3 "LED0" I L 3900 1500 60 
F4 "LED1" I L 3900 1600 60 
F5 "LED2" I L 3900 1700 60 
F6 "LED3" I L 3900 1800 60 
F7 "LED4" I L 3900 1900 60 
F8 "LED5" I L 3900 2000 60 
F9 "LED6" I L 3900 2100 60 
F10 "LED7" I L 3900 2200 60 
$EndSheet
$Comp
L CONN_02X05 P1
U 1 1 57A6A6DA
P 2000 1450
F 0 "P1" H 2000 1750 50  0000 C CNN
F 1 "CONN_02X05" H 2000 1150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05" H 2000 250 50  0001 C CNN
F 3 "" H 2000 250 50  0000 C CNN
	1    2000 1450
	1    0    0    -1  
$EndComp
Text Label 3900 1500 2    60   ~ 0
SEG0
Text Label 3900 1600 2    60   ~ 0
SEG1
Text Label 3900 1700 2    60   ~ 0
SEG2
Text Label 3900 1800 2    60   ~ 0
SEG3
Text Label 3900 1900 2    60   ~ 0
SEG4
Text Label 3900 2000 2    60   ~ 0
SEG5
Text Label 3900 2100 2    60   ~ 0
SEG6
Text Label 3900 2200 2    60   ~ 0
SEG7
Text Label 4150 2950 2    60   ~ 0
SEG0
Text Label 4150 3350 2    60   ~ 0
SEG1
Text Label 4150 3750 2    60   ~ 0
SEG2
Text Label 4150 4150 2    60   ~ 0
SEG3
Text Label 4150 4450 2    60   ~ 0
SEG4
Text Label 2900 4300 2    60   ~ 0
SEG5
Text Label 2900 4400 2    60   ~ 0
SEG6
Text Label 2900 4500 2    60   ~ 0
SEG7
Text Label 2250 1250 0    60   ~ 0
SEG0
Text Label 1750 1250 2    60   ~ 0
SEG1
Text Label 1750 1350 2    60   ~ 0
SEG2
Text Label 1750 1450 2    60   ~ 0
SEG3
Text Label 1750 1550 2    60   ~ 0
SEG4
Text Label 1750 1650 2    60   ~ 0
SEG5
Text Label 2250 1650 0    60   ~ 0
SEG6
Text Label 2250 1550 0    60   ~ 0
SEG7
Text Label 1800 2550 2    60   ~ 0
SEG0
Text Label 1800 2650 2    60   ~ 0
SEG1
Text Label 1800 2750 2    60   ~ 0
SEG2
Text Label 1800 2850 2    60   ~ 0
SEG3
Text Label 1800 2950 2    60   ~ 0
SEG4
Text Label 1800 3050 2    60   ~ 0
SEG5
Text Label 1800 3150 2    60   ~ 0
SEG6
Text Label 1800 3250 2    60   ~ 0
SEG7
Text Label 3900 1250 2    60   ~ 0
DIGITA
Text Label 3800 2500 2    60   ~ 0
DIGITB
Text Label 1800 3500 2    60   ~ 0
DIGITA
Text Label 1800 3650 2    60   ~ 0
DIGITB
Text HLabel 1950 2500 2    60   Input ~ 0
SEG0
Text HLabel 1950 2600 2    60   Input ~ 0
SEG1
Text HLabel 1950 2700 2    60   Input ~ 0
SEG2
Text HLabel 1950 2800 2    60   Input ~ 0
SEG3
Text HLabel 1950 2900 2    60   Input ~ 0
SEG4
Text HLabel 1950 3000 2    60   Input ~ 0
SEG5
Text HLabel 1950 3100 2    60   Input ~ 0
SEG6
Text HLabel 1950 3200 2    60   Input ~ 0
SEG7
Text HLabel 1950 3450 2    60   Input ~ 0
DIGITA
Text HLabel 1950 3600 2    60   Input ~ 0
DIGITB
Wire Wire Line
	1800 2550 1900 2550
Wire Wire Line
	1900 2550 1900 2500
Wire Wire Line
	1900 2500 1950 2500
Wire Wire Line
	1950 2600 1900 2600
Wire Wire Line
	1900 2600 1900 2650
Wire Wire Line
	1900 2650 1800 2650
Wire Wire Line
	1800 2750 1900 2750
Wire Wire Line
	1900 2750 1900 2700
Wire Wire Line
	1900 2700 1950 2700
Wire Wire Line
	1950 2800 1900 2800
Wire Wire Line
	1900 2800 1900 2850
Wire Wire Line
	1900 2850 1800 2850
Wire Wire Line
	1800 2950 1900 2950
Wire Wire Line
	1900 2950 1900 2900
Wire Wire Line
	1900 2900 1950 2900
Wire Wire Line
	1950 3000 1900 3000
Wire Wire Line
	1900 3000 1900 3050
Wire Wire Line
	1900 3050 1800 3050
Wire Wire Line
	1800 3150 1900 3150
Wire Wire Line
	1900 3150 1900 3100
Wire Wire Line
	1900 3100 1950 3100
Wire Wire Line
	1950 3200 1900 3200
Wire Wire Line
	1900 3200 1900 3250
Wire Wire Line
	1900 3250 1800 3250
Wire Wire Line
	1800 3500 1900 3500
Wire Wire Line
	1900 3500 1900 3450
Wire Wire Line
	1900 3450 1950 3450
Wire Wire Line
	1950 3600 1900 3600
Wire Wire Line
	1900 3600 1900 3650
Wire Wire Line
	1900 3650 1800 3650
Text Label 2250 1350 0    60   ~ 0
DIGITA
Text Label 2250 1450 0    60   ~ 0
DIGITB
$Comp
L LED D16
U 1 1 57A6B27B
P 6700 6250
F 0 "D16" H 6700 6350 50  0000 C CNN
F 1 "LED" H 6700 6150 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 6700 6250 50  0001 C CNN
F 3 "" H 6700 6250 50  0000 C CNN
	1    6700 6250
	-1   0    0    1   
$EndComp
$Comp
L LED D15
U 1 1 57A6B282
P 6700 5850
F 0 "D15" H 6700 5950 50  0000 C CNN
F 1 "LED" H 6700 5750 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 6700 5850 50  0001 C CNN
F 3 "" H 6700 5850 50  0000 C CNN
	1    6700 5850
	-1   0    0    1   
$EndComp
$Comp
L LED D14
U 1 1 57A6B289
P 6700 5450
F 0 "D14" H 6700 5550 50  0000 C CNN
F 1 "LED" H 6700 5350 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 6700 5450 50  0001 C CNN
F 3 "" H 6700 5450 50  0000 C CNN
	1    6700 5450
	-1   0    0    1   
$EndComp
$Comp
L LED D13
U 1 1 57A6B290
P 4450 4450
F 0 "D13" H 4450 4550 50  0000 C CNN
F 1 "LED" H 4450 4350 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 4450 4450 50  0001 C CNN
F 3 "" H 4450 4450 50  0000 C CNN
	1    4450 4450
	-1   0    0    1   
$EndComp
$Comp
L LED D12
U 1 1 57A6B297
P 4450 4150
F 0 "D12" H 4450 4250 50  0000 C CNN
F 1 "LED" H 4450 4050 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 4450 4150 50  0001 C CNN
F 3 "" H 4450 4150 50  0000 C CNN
	1    4450 4150
	-1   0    0    1   
$EndComp
$Comp
L LED D11
U 1 1 57A6B29E
P 4450 3750
F 0 "D11" H 4450 3850 50  0000 C CNN
F 1 "LED" H 4450 3650 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 4450 3750 50  0001 C CNN
F 3 "" H 4450 3750 50  0000 C CNN
	1    4450 3750
	-1   0    0    1   
$EndComp
$Comp
L LED D10
U 1 1 57A6B2A5
P 4450 3350
F 0 "D10" H 4450 3450 50  0000 C CNN
F 1 "LED" H 4450 3250 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 4450 3350 50  0001 C CNN
F 3 "" H 4450 3350 50  0000 C CNN
	1    4450 3350
	-1   0    0    1   
$EndComp
$Comp
L LED D9
U 1 1 57A6B2AC
P 4450 2950
F 0 "D9" H 4450 3050 50  0000 C CNN
F 1 "LED" H 4450 2850 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 4450 2950 50  0001 C CNN
F 3 "" H 4450 2950 50  0000 C CNN
	1    4450 2950
	-1   0    0    1   
$EndComp
Connection ~ 4650 3350
Connection ~ 4650 3750
Connection ~ 4650 4150
Connection ~ 4650 4450
Connection ~ 4650 2950
Wire Wire Line
	3800 2500 4650 2500
Wire Wire Line
	6300 6250 6500 6250
Wire Wire Line
	6350 5850 6500 5850
Wire Wire Line
	6500 5450 6400 5450
Wire Wire Line
	4250 4450 4150 4450
Wire Wire Line
	4150 4150 4250 4150
Wire Wire Line
	4250 2950 4150 2950
Wire Wire Line
	4150 3350 4250 3350
Wire Wire Line
	4250 3750 4150 3750
Wire Wire Line
	4650 2500 4650 4450
Text Label 2900 4200 2    60   ~ 0
DIGITB
Wire Wire Line
	6900 5050 6900 6250
Wire Wire Line
	6900 5850 6900 5450
Connection ~ 6900 5450
Connection ~ 6900 5850
$Comp
L CONN_01X04 P2
U 1 1 57A6C5AD
P 3100 4350
F 0 "P2" H 3100 4600 50  0000 C CNN
F 1 "CONN_01X04" V 3200 4350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 3100 4350 50  0001 C CNN
F 3 "" H 3100 4350 50  0000 C CNN
	1    3100 4350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P3
U 1 1 57A6C629
P 6100 5200
F 0 "P3" H 6100 5450 50  0000 C CNN
F 1 "CONN_01X04" V 6200 5200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 6100 5200 50  0001 C CNN
F 3 "" H 6100 5200 50  0000 C CNN
	1    6100 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 5050 6900 5050
Wire Wire Line
	6300 5150 6400 5150
Wire Wire Line
	6400 5150 6400 5450
Wire Wire Line
	6300 5250 6350 5250
Wire Wire Line
	6350 5250 6350 5850
Wire Wire Line
	6300 5350 6300 6250
Wire Notes Line
	7000 4750 5050 4750
Wire Notes Line
	5050 4750 5050 6650
Wire Notes Line
	5050 6650 7000 6650
Wire Notes Line
	7000 6650 7000 4750
Wire Notes Line
	1100 800  1100 4700
Wire Notes Line
	1100 4700 5000 4700
Wire Notes Line
	5000 4700 5000 800 
Wire Notes Line
	5000 800  1100 800 
Text Notes 1150 4650 0    60   ~ 0
lamps-13
Text Notes 5100 6600 0    60   ~ 0
lamps-3a
Wire Notes Line
	3150 4350 3350 4350
Wire Notes Line
	5700 5200 6050 5200
Wire Notes Line
	5700 6350 5700 5200
Wire Notes Line
	3350 4350 3350 6350
Wire Notes Line
	3350 6350 5700 6350
$EndSCHEMATC