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
U 1 1 63411CFA
P 4350 1050
F 0 "X1" H 4650 750 60  0000 C CNN
F 1 "1_bit_SRAM_isd" H 4400 1350 60  0000 C CNN
F 2 "" H 4350 1050 60  0001 C CNN
F 3 "" H 4350 1050 60  0001 C CNN
	1    4350 1050
	1    0    0    -1  
$EndComp
$Comp
L 1_bit_SRAM_isd X2
U 1 1 63411D71
P 4350 1800
F 0 "X2" H 4650 1500 60  0000 C CNN
F 1 "1_bit_SRAM_isd" H 4400 2100 60  0000 C CNN
F 2 "" H 4350 1800 60  0001 C CNN
F 3 "" H 4350 1800 60  0001 C CNN
	1    4350 1800
	1    0    0    -1  
$EndComp
$Comp
L 1_bit_SRAM_isd X3
U 1 1 63411DEC
P 4350 2500
F 0 "X3" H 4650 2200 60  0000 C CNN
F 1 "1_bit_SRAM_isd" H 4400 2800 60  0000 C CNN
F 2 "" H 4350 2500 60  0001 C CNN
F 3 "" H 4350 2500 60  0001 C CNN
	1    4350 2500
	1    0    0    -1  
$EndComp
$Comp
L 1_bit_SRAM_isd X4
U 1 1 63411E6F
P 4350 3250
F 0 "X4" H 4650 2950 60  0000 C CNN
F 1 "1_bit_SRAM_isd" H 4400 3550 60  0000 C CNN
F 2 "" H 4350 3250 60  0001 C CNN
F 3 "" H 4350 3250 60  0001 C CNN
	1    4350 3250
	1    0    0    -1  
$EndComp
$Comp
L 1_bit_SRAM_isd X5
U 1 1 63411EEA
P 4350 3950
F 0 "X5" H 4650 3650 60  0000 C CNN
F 1 "1_bit_SRAM_isd" H 4400 4250 60  0000 C CNN
F 2 "" H 4350 3950 60  0001 C CNN
F 3 "" H 4350 3950 60  0001 C CNN
	1    4350 3950
	1    0    0    -1  
$EndComp
$Comp
L 1_bit_SRAM_isd X6
U 1 1 63411F53
P 4350 4700
F 0 "X6" H 4650 4400 60  0000 C CNN
F 1 "1_bit_SRAM_isd" H 4400 5000 60  0000 C CNN
F 2 "" H 4350 4700 60  0001 C CNN
F 3 "" H 4350 4700 60  0001 C CNN
	1    4350 4700
	1    0    0    -1  
$EndComp
$Comp
L 1_bit_SRAM_isd X7
U 1 1 63411FCA
P 4350 5450
F 0 "X7" H 4650 5150 60  0000 C CNN
F 1 "1_bit_SRAM_isd" H 4400 5750 60  0000 C CNN
F 2 "" H 4350 5450 60  0001 C CNN
F 3 "" H 4350 5450 60  0001 C CNN
	1    4350 5450
	1    0    0    -1  
$EndComp
$Comp
L 1_bit_SRAM_isd X8
U 1 1 63412045
P 4350 6200
F 0 "X8" H 4650 5900 60  0000 C CNN
F 1 "1_bit_SRAM_isd" H 4400 6500 60  0000 C CNN
F 2 "" H 4350 6200 60  0001 C CNN
F 3 "" H 4350 6200 60  0001 C CNN
	1    4350 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1050 2900 1050
Wire Wire Line
	2900 1050 2900 6200
Wire Wire Line
	2900 1800 3700 1800
Wire Wire Line
	2900 2500 3700 2500
Connection ~ 2900 1800
Wire Wire Line
	2900 3250 3700 3250
Connection ~ 2900 2500
Wire Wire Line
	2900 3950 3700 3950
Connection ~ 2900 3250
Wire Wire Line
	2900 4700 3700 4700
Connection ~ 2900 3950
Wire Wire Line
	2900 5450 3700 5450
Connection ~ 2900 4700
Wire Wire Line
	2900 6200 3700 6200
Connection ~ 2900 5450
Wire Wire Line
	3700 1200 3400 1200
Wire Wire Line
	3400 1200 3400 6350
Wire Wire Line
	3400 1950 3700 1950
Wire Wire Line
	3400 2650 3700 2650
Connection ~ 3400 1950
Wire Wire Line
	3400 3400 3700 3400
Connection ~ 3400 2650
Wire Wire Line
	3400 4100 3700 4100
Connection ~ 3400 3400
Wire Wire Line
	3400 4850 3700 4850
Connection ~ 3400 4100
Wire Wire Line
	3400 5600 3700 5600
Connection ~ 3400 4850
Wire Wire Line
	3400 6350 3700 6350
Connection ~ 3400 5600
$Comp
L PORT U1
U 1 1 63412957
P 2200 3400
F 0 "U1" H 2250 3500 30  0000 C CNN
F 1 "PORT" H 2200 3400 30  0000 C CNN
F 2 "" H 2200 3400 60  0000 C CNN
F 3 "" H 2200 3400 60  0000 C CNN
	1    2200 3400
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 2 1 634129BA
P 2200 3650
F 0 "U1" H 2250 3750 30  0000 C CNN
F 1 "PORT" H 2200 3650 30  0000 C CNN
F 2 "" H 2200 3650 60  0000 C CNN
F 3 "" H 2200 3650 60  0000 C CNN
	2    2200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3400 2900 3400
Connection ~ 2900 3400
Wire Wire Line
	2450 3650 3400 3650
Connection ~ 3400 3650
$Comp
L PORT U1
U 10 1 63412E1C
P 3150 900
F 0 "U1" H 3200 1000 30  0000 C CNN
F 1 "PORT" H 3150 900 30  0000 C CNN
F 2 "" H 3150 900 60  0000 C CNN
F 3 "" H 3150 900 60  0000 C CNN
	10   3150 900 
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 3 1 63412E83
P 3100 1650
F 0 "U1" H 3150 1750 30  0000 C CNN
F 1 "PORT" H 3100 1650 30  0000 C CNN
F 2 "" H 3100 1650 60  0000 C CNN
F 3 "" H 3100 1650 60  0000 C CNN
	3    3100 1650
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 4 1 63412F9C
P 3100 2350
F 0 "U1" H 3150 2450 30  0000 C CNN
F 1 "PORT" H 3100 2350 30  0000 C CNN
F 2 "" H 3100 2350 60  0000 C CNN
F 3 "" H 3100 2350 60  0000 C CNN
	4    3100 2350
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 5 1 63412FDD
P 3100 3100
F 0 "U1" H 3150 3200 30  0000 C CNN
F 1 "PORT" H 3100 3100 30  0000 C CNN
F 2 "" H 3100 3100 60  0000 C CNN
F 3 "" H 3100 3100 60  0000 C CNN
	5    3100 3100
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 6 1 63413208
P 3100 3800
F 0 "U1" H 3150 3900 30  0000 C CNN
F 1 "PORT" H 3100 3800 30  0000 C CNN
F 2 "" H 3100 3800 60  0000 C CNN
F 3 "" H 3100 3800 60  0000 C CNN
	6    3100 3800
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 7 1 63413267
P 3100 4550
F 0 "U1" H 3150 4650 30  0000 C CNN
F 1 "PORT" H 3100 4550 30  0000 C CNN
F 2 "" H 3100 4550 60  0000 C CNN
F 3 "" H 3100 4550 60  0000 C CNN
	7    3100 4550
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 8 1 634133B6
P 3100 5300
F 0 "U1" H 3150 5400 30  0000 C CNN
F 1 "PORT" H 3100 5300 30  0000 C CNN
F 2 "" H 3100 5300 60  0000 C CNN
F 3 "" H 3100 5300 60  0000 C CNN
	8    3100 5300
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 9 1 63413419
P 3100 6050
F 0 "U1" H 3150 6150 30  0000 C CNN
F 1 "PORT" H 3100 6050 30  0000 C CNN
F 2 "" H 3100 6050 60  0000 C CNN
F 3 "" H 3100 6050 60  0000 C CNN
	9    3100 6050
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 11 1 63413C13
P 5450 1050
F 0 "U1" H 5500 1150 30  0000 C CNN
F 1 "PORT" H 5450 1050 30  0000 C CNN
F 2 "" H 5450 1050 60  0000 C CNN
F 3 "" H 5450 1050 60  0000 C CNN
	11   5450 1050
	-1   0    0    1   
$EndComp
$Comp
L PORT U1
U 12 1 63413C84
P 5450 1800
F 0 "U1" H 5500 1900 30  0000 C CNN
F 1 "PORT" H 5450 1800 30  0000 C CNN
F 2 "" H 5450 1800 60  0000 C CNN
F 3 "" H 5450 1800 60  0000 C CNN
	12   5450 1800
	-1   0    0    1   
$EndComp
$Comp
L PORT U1
U 13 1 63413E89
P 5450 2500
F 0 "U1" H 5500 2600 30  0000 C CNN
F 1 "PORT" H 5450 2500 30  0000 C CNN
F 2 "" H 5450 2500 60  0000 C CNN
F 3 "" H 5450 2500 60  0000 C CNN
	13   5450 2500
	-1   0    0    1   
$EndComp
$Comp
L PORT U1
U 14 1 63413EFE
P 5450 3250
F 0 "U1" H 5500 3350 30  0000 C CNN
F 1 "PORT" H 5450 3250 30  0000 C CNN
F 2 "" H 5450 3250 60  0000 C CNN
F 3 "" H 5450 3250 60  0000 C CNN
	14   5450 3250
	-1   0    0    1   
$EndComp
$Comp
L PORT U1
U 15 1 6341411D
P 5450 3950
F 0 "U1" H 5500 4050 30  0000 C CNN
F 1 "PORT" H 5450 3950 30  0000 C CNN
F 2 "" H 5450 3950 60  0000 C CNN
F 3 "" H 5450 3950 60  0000 C CNN
	15   5450 3950
	-1   0    0    1   
$EndComp
$Comp
L PORT U1
U 16 1 63414172
P 5450 4700
F 0 "U1" H 5500 4800 30  0000 C CNN
F 1 "PORT" H 5450 4700 30  0000 C CNN
F 2 "" H 5450 4700 60  0000 C CNN
F 3 "" H 5450 4700 60  0000 C CNN
	16   5450 4700
	-1   0    0    1   
$EndComp
$Comp
L PORT U1
U 17 1 634144F4
P 5450 5450
F 0 "U1" H 5500 5550 30  0000 C CNN
F 1 "PORT" H 5450 5450 30  0000 C CNN
F 2 "" H 5450 5450 60  0000 C CNN
F 3 "" H 5450 5450 60  0000 C CNN
	17   5450 5450
	-1   0    0    1   
$EndComp
$Comp
L PORT U1
U 18 1 63414660
P 5450 6200
F 0 "U1" H 5500 6300 30  0000 C CNN
F 1 "PORT" H 5450 6200 30  0000 C CNN
F 2 "" H 5450 6200 60  0000 C CNN
F 3 "" H 5450 6200 60  0000 C CNN
	18   5450 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 6200 5000 6200
Wire Wire Line
	3350 6050 3700 6050
Wire Wire Line
	3350 5300 3700 5300
Wire Wire Line
	5200 5450 5000 5450
Wire Wire Line
	5200 4700 5000 4700
Wire Wire Line
	5200 3950 5000 3950
Wire Wire Line
	5200 3250 5000 3250
Wire Wire Line
	5000 2500 5200 2500
Wire Wire Line
	3350 4550 3700 4550
Wire Wire Line
	3350 3800 3700 3800
Wire Wire Line
	3350 3100 3700 3100
Wire Wire Line
	3350 2350 3700 2350
Wire Wire Line
	3350 1650 3700 1650
Wire Wire Line
	5000 1800 5200 1800
Wire Wire Line
	3400 900  3700 900 
Wire Wire Line
	5000 1050 5200 1050
$EndSCHEMATC
