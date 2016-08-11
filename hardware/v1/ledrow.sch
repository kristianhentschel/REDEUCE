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
Sheet 34 3
Title ""
Date ""
Rev ""
Comp "University of Glasgow"
Comment1 "Kristian Hentschel"
Comment2 ""
Comment3 ""
Comment4 "REDEUCE Control Panel"
$EndDescr
$Comp
L LED D8
U 1 1 57A35AD5
P 1800 3900
AR Path="/57AC805C/57A35AD5" Ref="D8"  Part="1" 
AR Path="/57AC8082/57A35AD5" Ref="D16"  Part="1" 
F 0 "D8" H 1800 4000 50  0000 C CNN
F 1 "LED" H 1800 3800 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 1800 3900 50  0001 C CNN
F 3 "" H 1800 3900 50  0000 C CNN
	1    1800 3900
	-1   0    0    1   
$EndComp
$Comp
L LED D7
U 1 1 57A35B88
P 1800 3500
AR Path="/57AC805C/57A35B88" Ref="D7"  Part="1" 
AR Path="/57AC8082/57A35B88" Ref="D15"  Part="1" 
F 0 "D7" H 1800 3600 50  0000 C CNN
F 1 "LED" H 1800 3400 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 1800 3500 50  0001 C CNN
F 3 "" H 1800 3500 50  0000 C CNN
	1    1800 3500
	-1   0    0    1   
$EndComp
$Comp
L LED D6
U 1 1 57A35BB5
P 1800 3100
AR Path="/57AC805C/57A35BB5" Ref="D6"  Part="1" 
AR Path="/57AC8082/57A35BB5" Ref="D14"  Part="1" 
F 0 "D6" H 1800 3200 50  0000 C CNN
F 1 "LED" H 1800 3000 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 1800 3100 50  0001 C CNN
F 3 "" H 1800 3100 50  0000 C CNN
	1    1800 3100
	-1   0    0    1   
$EndComp
$Comp
L LED D5
U 1 1 57A35BD9
P 1800 2700
AR Path="/57AC805C/57A35BD9" Ref="D5"  Part="1" 
AR Path="/57AC8082/57A35BD9" Ref="D13"  Part="1" 
F 0 "D5" H 1800 2800 50  0000 C CNN
F 1 "LED" H 1800 2600 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 1800 2700 50  0001 C CNN
F 3 "" H 1800 2700 50  0000 C CNN
	1    1800 2700
	-1   0    0    1   
$EndComp
$Comp
L LED D4
U 1 1 57A35D11
P 1800 2400
AR Path="/57AC805C/57A35D11" Ref="D4"  Part="1" 
AR Path="/57AC8082/57A35D11" Ref="D12"  Part="1" 
F 0 "D4" H 1800 2500 50  0000 C CNN
F 1 "LED" H 1800 2300 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 1800 2400 50  0001 C CNN
F 3 "" H 1800 2400 50  0000 C CNN
	1    1800 2400
	-1   0    0    1   
$EndComp
$Comp
L LED D3
U 1 1 57A35D17
P 1800 2000
AR Path="/57AC805C/57A35D17" Ref="D3"  Part="1" 
AR Path="/57AC8082/57A35D17" Ref="D11"  Part="1" 
F 0 "D3" H 1800 2100 50  0000 C CNN
F 1 "LED" H 1800 1900 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 1800 2000 50  0001 C CNN
F 3 "" H 1800 2000 50  0000 C CNN
	1    1800 2000
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 57A35D1D
P 1800 1600
AR Path="/57AC805C/57A35D1D" Ref="D2"  Part="1" 
AR Path="/57AC8082/57A35D1D" Ref="D10"  Part="1" 
F 0 "D2" H 1800 1700 50  0000 C CNN
F 1 "LED" H 1800 1500 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 1800 1600 50  0001 C CNN
F 3 "" H 1800 1600 50  0000 C CNN
	1    1800 1600
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 57A35D23
P 1800 1200
AR Path="/57AC805C/57A35D23" Ref="D1"  Part="1" 
AR Path="/57AC8082/57A35D23" Ref="D9"  Part="1" 
F 0 "D1" H 1800 1300 50  0000 C CNN
F 1 "LED" H 1800 1100 50  0000 C CNN
F 2 "myparts:LED-5MM-custom" H 1800 1200 50  0001 C CNN
F 3 "" H 1800 1200 50  0000 C CNN
	1    1800 1200
	-1   0    0    1   
$EndComp
Text HLabel 1150 750  0    60   Input ~ 0
DIGIT
Wire Wire Line
	2000 750  2000 3900
Connection ~ 2000 1600
Connection ~ 2000 2000
Connection ~ 2000 2400
Connection ~ 2000 2700
Connection ~ 2000 3100
Connection ~ 2000 3500
Connection ~ 2000 1200
Wire Wire Line
	1150 750  2000 750 
Wire Wire Line
	1600 3900 1500 3900
Wire Wire Line
	1500 3500 1600 3500
Wire Wire Line
	1600 3100 1500 3100
Wire Wire Line
	1600 2700 1500 2700
Wire Wire Line
	1500 2400 1600 2400
Wire Wire Line
	1600 1200 1500 1200
Wire Wire Line
	1500 1600 1600 1600
Wire Wire Line
	1600 2000 1500 2000
Text HLabel 1500 1200 0    60   Input ~ 0
LED0
Text HLabel 1500 1600 0    60   Input ~ 0
LED1
Text HLabel 1500 2000 0    60   Input ~ 0
LED2
Text HLabel 1500 2400 0    60   Input ~ 0
LED3
Text HLabel 1500 2700 0    60   Input ~ 0
LED4
Text HLabel 1500 3100 0    60   Input ~ 0
LED5
Text HLabel 1500 3500 0    60   Input ~ 0
LED6
Text HLabel 1500 3900 0    60   Input ~ 0
LED7
$EndSCHEMATC
