EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:copterlost-cache
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
L ATTINY13-20SSU U1
U 1 1 5B4E48A4
P 5100 3800
F 0 "U1" H 4300 4200 50  0000 C CNN
F 1 "ATTINY13-20SSU" H 5750 3400 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5700 3800 50  0001 C CIN
F 3 "" H 4300 4150 50  0001 C CNN
	1    5100 3800
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT1
U 1 1 5B4E4967
P 7100 3850
F 0 "BT1" H 7200 3950 50  0000 L CNN
F 1 "Battery_Cell" H 7200 3850 50  0000 L CNN
F 2 "Battery_Holders:Keystone_104_1x23mm-CoinCell" V 7100 3910 50  0001 C CNN
F 3 "" V 7100 3910 50  0001 C CNN
	1    7100 3850
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J2
U 1 1 5B4E4AE2
P 3200 3050
F 0 "J2" H 3200 3150 50  0000 C CNN
F 1 "5V_Copter" H 3200 2950 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-2mmDrill" H 3200 3050 50  0001 C CNN
F 3 "" H 3200 3050 50  0001 C CNN
	1    3200 3050
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x01 J1
U 1 1 5B4E4B3B
P 2450 4450
F 0 "J1" H 2450 4550 50  0000 C CNN
F 1 "gnd" H 2450 4350 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-2mmDrill" H 2450 4450 50  0001 C CNN
F 3 "" H 2450 4450 50  0001 C CNN
	1    2450 4450
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 5B4E4CE2
P 6650 3800
F 0 "C4" H 6675 3900 50  0000 L CNN
F 1 "0.1uF" H 6675 3700 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6688 3650 50  0001 C CNN
F 3 "" H 6650 3800 50  0001 C CNN
	1    6650 3800
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5B4E4DBA
P 6350 3800
F 0 "C3" H 6375 3900 50  0000 L CNN
F 1 "0.1uF" H 6375 3700 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6388 3650 50  0001 C CNN
F 3 "" H 6350 3800 50  0001 C CNN
	1    6350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3550 6100 3650
Wire Wire Line
	6100 3650 7700 3650
Connection ~ 6350 3650
Wire Wire Line
	6100 4050 6100 3950
Wire Wire Line
	6100 3950 7100 3950
Connection ~ 6350 3950
Connection ~ 6650 3650
Connection ~ 6650 3950
$Comp
L GND #PWR01
U 1 1 5B4E57ED
P 7100 3950
F 0 "#PWR01" H 7100 3700 50  0001 C CNN
F 1 "GND" H 7100 3800 50  0000 C CNN
F 2 "" H 7100 3950 50  0001 C CNN
F 3 "" H 7100 3950 50  0001 C CNN
	1    7100 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B4E5C6E
P 2650 4450
F 0 "#PWR02" H 2650 4200 50  0001 C CNN
F 1 "GND" H 2650 4300 50  0000 C CNN
F 2 "" H 2650 4450 50  0001 C CNN
F 3 "" H 2650 4450 50  0001 C CNN
	1    2650 4450
	0    -1   -1   0   
$EndComp
$Comp
L MMBT3904 Q1
U 1 1 5B4E64B4
P 4500 2750
F 0 "Q1" H 4700 2825 50  0000 L CNN
F 1 "MMBT3904" H 4700 2750 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4700 2675 50  0001 L CIN
F 3 "" H 4500 2750 50  0001 L CNN
	1    4500 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5B4E707A
P 4600 2950
F 0 "#PWR03" H 4600 2700 50  0001 C CNN
F 1 "GND" H 4600 2800 50  0000 C CNN
F 2 "" H 4600 2950 50  0001 C CNN
F 3 "" H 4600 2950 50  0001 C CNN
	1    4600 2950
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5B4E70A9
P 4150 2750
F 0 "R1" V 4230 2750 50  0000 C CNN
F 1 "560" V 4150 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4080 2750 50  0001 C CNN
F 3 "" H 4150 2750 50  0001 C CNN
	1    4150 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 2750 4000 3550
Wire Wire Line
	4000 3550 4100 3550
$Comp
L Speaker LS1
U 1 1 5B4E769C
P 6100 2150
F 0 "LS1" H 6150 2375 50  0000 R CNN
F 1 "Speaker" H 6150 2300 50  0000 R CNN
F 2 "copterBeeper:beeper" H 6100 1950 50  0001 C CNN
F 3 "" H 6090 2100 50  0001 C CNN
	1    6100 2150
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5B4E7C9C
P 5650 1800
F 0 "D1" H 5650 1900 50  0000 C CNN
F 1 "LED" H 5650 1700 50  0000 C CNN
F 2 "LEDs:LED_0603" H 5650 1800 50  0001 C CNN
F 3 "" H 5650 1800 50  0001 C CNN
	1    5650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3650 7100 1800
Wire Wire Line
	7100 1800 5800 1800
Wire Wire Line
	5800 1800 5800 2150
Wire Wire Line
	5800 2150 5900 2150
Wire Wire Line
	5900 2250 4600 2250
Wire Wire Line
	4600 1800 4600 2550
$Comp
L R R2
U 1 1 5B4E8573
P 5050 1800
F 0 "R2" V 5130 1800 50  0000 C CNN
F 1 "100" V 5050 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4980 1800 50  0001 C CNN
F 3 "" H 5050 1800 50  0001 C CNN
	1    5050 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 1800 5200 1800
Wire Wire Line
	4900 1800 4600 1800
Connection ~ 4600 2250
$Comp
L SW_Push SW1
U 1 1 5B4E9B5A
P 5650 4600
F 0 "SW1" H 5700 4700 50  0000 L CNN
F 1 "SW_Push" H 5650 4540 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3U-1000P" H 5650 4800 50  0001 C CNN
F 3 "" H 5650 4800 50  0001 C CNN
	1    5650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3750 3750 3750
Wire Wire Line
	3750 3750 3750 4600
Wire Wire Line
	3750 4600 5450 4600
Wire Wire Line
	7700 3650 7700 4600
Connection ~ 7100 3650
Wire Wire Line
	4100 4050 4100 4400
Wire Wire Line
	4100 4400 6150 4400
Wire Wire Line
	6150 4400 6150 4600
Connection ~ 6150 4600
$Comp
L GND #PWR04
U 1 1 5B4EAB34
P 4800 4900
F 0 "#PWR04" H 4800 4650 50  0001 C CNN
F 1 "GND" H 4800 4750 50  0000 C CNN
F 2 "" H 4800 4900 50  0001 C CNN
F 3 "" H 4800 4900 50  0001 C CNN
	1    4800 4900
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5B4E6000
P 6750 4600
F 0 "R3" V 6830 4600 50  0000 C CNN
F 1 "1k" V 6750 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6680 4600 50  0001 C CNN
F 3 "" H 6750 4600 50  0001 C CNN
	1    6750 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 4600 6600 4600
Wire Wire Line
	7700 4600 6900 4600
Connection ~ 4800 4600
$Comp
L R R5
U 1 1 5B4EE3F9
P 4800 4750
F 0 "R5" V 4880 4750 50  0000 C CNN
F 1 "10k" V 4800 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4730 4750 50  0001 C CNN
F 3 "" H 4800 4750 50  0001 C CNN
	1    4800 4750
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5B4F14F2
P 3200 3900
F 0 "R4" V 3280 3900 50  0000 C CNN
F 1 "10k" V 3200 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3130 3900 50  0001 C CNN
F 3 "" H 3200 3900 50  0001 C CNN
	1    3200 3900
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5B4F1597
P 3200 3400
F 0 "R6" V 3280 3400 50  0000 C CNN
F 1 "5k" V 3200 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3130 3400 50  0001 C CNN
F 3 "" H 3200 3400 50  0001 C CNN
	1    3200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3550 3200 3750
Wire Wire Line
	3200 3650 4100 3650
Connection ~ 3200 3650
$Comp
L GND #PWR05
U 1 1 5B4F19C6
P 3200 4050
F 0 "#PWR05" H 3200 3800 50  0001 C CNN
F 1 "GND" H 3200 3900 50  0000 C CNN
F 2 "" H 3200 4050 50  0001 C CNN
F 3 "" H 3200 4050 50  0001 C CNN
	1    3200 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC