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
L sky130_fd_pr__nfet_01v8 SC5
U 1 1 633EFF43
P 6000 3700
F 0 "SC5" H 6050 4000 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 6300 3787 50  0000 R CNN
F 2 "" H 6000 2200 50  0001 C CNN
F 3 "" H 6000 3700 50  0001 C CNN
	1    6000 3700
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8 SC3
U 1 1 633EFF8C
P 4350 3700
F 0 "SC3" H 4400 4000 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 4650 3787 50  0000 R CNN
F 2 "" H 4350 2200 50  0001 C CNN
F 3 "" H 4350 3700 50  0001 C CNN
	1    4350 3700
	-1   0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8 SC1
U 1 1 633F004F
P 3100 3000
F 0 "SC1" H 3150 3300 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 3400 3087 50  0000 R CNN
F 2 "" H 3100 1500 50  0001 C CNN
F 3 "" H 3100 3000 50  0001 C CNN
	1    3100 3000
	0    1    1    0   
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8 SC6
U 1 1 633F00CC
P 6900 2750
F 0 "SC6" H 6950 3050 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 7200 2837 50  0000 R CNN
F 2 "" H 6900 1250 50  0001 C CNN
F 3 "" H 6900 2750 50  0001 C CNN
	1    6900 2750
	0    1    1    0   
$EndComp
$Comp
L sky130_fd_pr__pfet_01v8 SC4
U 1 1 633F0133
P 6000 2400
F 0 "SC4" H 6050 2700 50  0000 C CNN
F 1 "sky130_fd_pr__pfet_01v8" H 6300 2487 50  0000 R CNN
F 2 "" H 6000 900 50  0001 C CNN
F 3 "" H 6000 2400 50  0001 C CNN
	1    6000 2400
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__pfet_01v8 SC2
U 1 1 633F01A6
P 4350 2400
F 0 "SC2" H 4400 2700 50  0000 C CNN
F 1 "sky130_fd_pr__pfet_01v8" H 4650 2487 50  0000 R CNN
F 2 "" H 4350 900 50  0001 C CNN
F 3 "" H 4350 2400 50  0001 C CNN
	1    4350 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6200 2700 6200 3400
Wire Wire Line
	4150 2700 4150 3400
Wire Wire Line
	6100 3700 6350 3700
Wire Wire Line
	6350 3700 6350 4100
Wire Wire Line
	2250 4100 6900 4100
Wire Wire Line
	6200 4100 6200 4000
Wire Wire Line
	4000 3700 4250 3700
Wire Wire Line
	4000 4100 4000 3700
Wire Wire Line
	4150 4100 4150 4000
Connection ~ 6200 4100
Connection ~ 4150 4100
$Comp
L GND #PWR1
U 1 1 633F0419
P 5150 4250
F 0 "#PWR1" H 5150 4000 50  0001 C CNN
F 1 "GND" H 5150 4100 50  0000 C CNN
F 2 "" H 5150 4250 50  0001 C CNN
F 3 "" H 5150 4250 50  0001 C CNN
	1    5150 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4100 5150 4250
Connection ~ 5150 4100
Wire Wire Line
	6900 4100 6900 2850
Connection ~ 6350 4100
Wire Wire Line
	3100 3100 3100 4100
Connection ~ 4000 4100
Wire Wire Line
	6100 2400 6350 2400
Wire Wire Line
	6350 2400 6350 1950
Wire Wire Line
	6350 1950 4000 1950
Wire Wire Line
	6200 1950 6200 2100
Wire Wire Line
	4250 2400 4000 2400
Wire Wire Line
	4000 2400 4000 1950
Wire Wire Line
	4150 1950 4150 2100
Connection ~ 6200 1950
Connection ~ 4150 1950
Wire Wire Line
	3400 3200 5350 3200
Connection ~ 4150 3200
Wire Wire Line
	4650 2400 5000 2400
Wire Wire Line
	5000 2400 5000 3700
Wire Wire Line
	5000 3700 4650 3700
Wire Wire Line
	5700 2400 5350 2400
Wire Wire Line
	5350 2400 5350 3700
Wire Wire Line
	5350 3700 5700 3700
Connection ~ 5350 3200
Wire Wire Line
	5000 2950 6600 2950
Connection ~ 6200 2950
Connection ~ 5000 2950
Wire Wire Line
	6900 2450 6900 1800
Wire Wire Line
	6900 1800 3100 1800
Wire Wire Line
	3100 1800 3100 2700
$Comp
L DC v1
U 1 1 633F0A02
P 2250 2450
F 0 "v1" H 2050 2550 60  0000 C CNN
F 1 "DC" H 2050 2400 60  0000 C CNN
F 2 "R1" H 1950 2450 60  0000 C CNN
F 3 "" H 2250 2450 60  0000 C CNN
	1    2250 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1950 5150 1700
Wire Wire Line
	5150 1700 2250 1700
Wire Wire Line
	2250 1700 2250 2000
Connection ~ 5150 1950
Wire Wire Line
	2250 2900 2250 4100
Connection ~ 3100 4100
$Comp
L PORT U1
U 1 1 633F12F7
P 2400 3200
F 0 "U1" H 2450 3300 30  0000 C CNN
F 1 "PORT" H 2400 3200 30  0000 C CNN
F 2 "" H 2400 3200 60  0000 C CNN
F 3 "" H 2400 3200 60  0000 C CNN
	1    2400 3200
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 2 1 633F1372
P 2700 2100
F 0 "U1" H 2750 2200 30  0000 C CNN
F 1 "PORT" H 2700 2100 30  0000 C CNN
F 2 "" H 2700 2100 60  0000 C CNN
F 3 "" H 2700 2100 60  0000 C CNN
	2    2700 2100
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 4 1 633F13EB
P 7600 2950
F 0 "U1" H 7650 3050 30  0000 C CNN
F 1 "PORT" H 7600 2950 30  0000 C CNN
F 2 "" H 7600 2950 60  0000 C CNN
F 3 "" H 7600 2950 60  0000 C CNN
	4    7600 2950
	-1   0    0    1   
$EndComp
$Comp
L PORT U1
U 3 1 633F1466
P 3550 2850
F 0 "U1" H 3600 2950 30  0000 C CNN
F 1 "PORT" H 3550 2850 30  0000 C CNN
F 2 "" H 3550 2850 60  0000 C CNN
F 3 "" H 3550 2850 60  0000 C CNN
	3    3550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2850 3850 2850
Wire Wire Line
	3850 2850 3850 3200
Connection ~ 3850 3200
Wire Wire Line
	2650 3200 2800 3200
Wire Wire Line
	2950 2100 3100 2100
Connection ~ 3100 2100
Wire Wire Line
	7200 2950 7350 2950
$EndSCHEMATC
