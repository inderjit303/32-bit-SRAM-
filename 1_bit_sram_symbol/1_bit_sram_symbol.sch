EESchema Schematic File Version 2
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
LIBS:1_bit_SRAM_isd
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
L 1_bit_SRAM_isd X1
U 1 1 63408FF6
P 5700 3450
F 0 "X1" H 6000 3150 60  0000 C CNN
F 1 "1_bit_SRAM_isd" H 5750 3750 60  0000 C CNN
F 2 "" H 5700 3450 60  0001 C CNN
F 3 "" H 5700 3450 60  0001 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
$Comp
L pulse v3
U 1 1 63409061
P 4550 4050
F 0 "v3" H 4350 4150 60  0000 C CNN
F 1 "pulse" H 4350 4000 60  0000 C CNN
F 2 "R1" H 4250 4050 60  0000 C CNN
F 3 "" H 4550 4050 60  0000 C CNN
	1    4550 4050
	1    0    0    -1  
$EndComp
$Comp
L pulse v2
U 1 1 634090B2
P 3950 4050
F 0 "v2" H 3750 4150 60  0000 C CNN
F 1 "pulse" H 3750 4000 60  0000 C CNN
F 2 "R1" H 3650 4050 60  0000 C CNN
F 3 "" H 3950 4050 60  0000 C CNN
	1    3950 4050
	1    0    0    -1  
$EndComp
$Comp
L pulse v1
U 1 1 634090F1
P 3400 4050
F 0 "v1" H 3200 4150 60  0000 C CNN
F 1 "pulse" H 3200 4000 60  0000 C CNN
F 2 "R1" H 3100 4050 60  0000 C CNN
F 3 "" H 3400 4050 60  0000 C CNN
	1    3400 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 634091B5
P 3950 4650
F 0 "#PWR1" H 3950 4400 50  0001 C CNN
F 1 "GND" H 3950 4500 50  0000 C CNN
F 2 "" H 3950 4650 50  0001 C CNN
F 3 "" H 3950 4650 50  0001 C CNN
	1    3950 4650
	1    0    0    -1  
$EndComp
Text GLabel 3150 3300 0    60   Input ~ 0
wl
Text GLabel 3750 3450 0    60   Input ~ 0
win
Text GLabel 4400 3600 0    60   Input ~ 0
r_enbl
Text GLabel 6500 3450 2    60   Output ~ 0
out
$Comp
L plot_v1 U1
U 1 1 63409277
P 3600 3200
F 0 "U1" H 3600 3700 60  0000 C CNN
F 1 "plot_v1" H 3800 3550 60  0000 C CNN
F 2 "" H 3600 3200 60  0000 C CNN
F 3 "" H 3600 3200 60  0000 C CNN
	1    3600 3200
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U2
U 1 1 634092CA
P 4100 3250
F 0 "U2" H 4100 3750 60  0000 C CNN
F 1 "plot_v1" H 4300 3600 60  0000 C CNN
F 2 "" H 4100 3250 60  0000 C CNN
F 3 "" H 4100 3250 60  0000 C CNN
	1    4100 3250
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U3
U 1 1 6340933B
P 4600 3300
F 0 "U3" H 4600 3800 60  0000 C CNN
F 1 "plot_v1" H 4800 3650 60  0000 C CNN
F 2 "" H 4600 3300 60  0000 C CNN
F 3 "" H 4600 3300 60  0000 C CNN
	1    4600 3300
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U4
U 1 1 63409398
P 6400 3400
F 0 "U4" H 6400 3900 60  0000 C CNN
F 1 "plot_v1" H 6600 3750 60  0000 C CNN
F 2 "" H 6400 3400 60  0000 C CNN
F 3 "" H 6400 3400 60  0000 C CNN
	1    6400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4500 4550 4500
Connection ~ 3950 4500
Wire Wire Line
	4400 3600 5050 3600
Wire Wire Line
	3950 3600 3950 3450
Wire Wire Line
	3750 3450 5050 3450
Wire Wire Line
	3400 3600 3400 3300
Wire Wire Line
	3150 3300 5050 3300
Wire Wire Line
	3950 4500 3950 4650
Wire Wire Line
	6350 3450 6500 3450
Connection ~ 4550 3600
Connection ~ 3950 3450
Connection ~ 3400 3300
Wire Wire Line
	6400 3200 6400 3450
Connection ~ 6400 3450
Wire Wire Line
	4600 3100 4700 3100
Wire Wire Line
	4700 3100 4700 3600
Connection ~ 4700 3600
Wire Wire Line
	4100 3050 4100 3450
Connection ~ 4100 3450
Wire Wire Line
	3600 3000 3600 3300
Connection ~ 3600 3300
$Comp
L SKY130mode scmode1
U 1 1 63409979
P 5850 4250
F 0 "scmode1" H 5850 4400 98  0000 C CNB
F 1 "SKY130mode" H 5850 4150 118 0000 C CNB
F 2 "" H 5850 4400 60  0001 C CNN
F 3 "" H 5850 4400 60  0001 C CNN
	1    5850 4250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
