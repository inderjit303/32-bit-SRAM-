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
LIBS:8_bit_SRAM_isd
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
L 8_bit_SRAM_isd X1
U 1 1 63414DE3
P 8050 1300
F 0 "X1" H 8450 600 60  0000 C CNN
F 1 "8_bit_SRAM_isd" H 8250 1800 60  0000 C CNN
F 2 "" H 8050 1300 60  0001 C CNN
F 3 "" H 8050 1300 60  0001 C CNN
	1    8050 1300
	1    0    0    -1  
$EndComp
$Comp
L 8_bit_SRAM_isd X2
U 1 1 63414E9C
P 8050 2700
F 0 "X2" H 8450 2000 60  0000 C CNN
F 1 "8_bit_SRAM_isd" H 8250 3200 60  0000 C CNN
F 2 "" H 8050 2700 60  0001 C CNN
F 3 "" H 8050 2700 60  0001 C CNN
	1    8050 2700
	1    0    0    -1  
$EndComp
$Comp
L 8_bit_SRAM_isd X3
U 1 1 63414F0F
P 8050 4100
F 0 "X3" H 8450 3400 60  0000 C CNN
F 1 "8_bit_SRAM_isd" H 8250 4600 60  0000 C CNN
F 2 "" H 8050 4100 60  0001 C CNN
F 3 "" H 8050 4100 60  0001 C CNN
	1    8050 4100
	1    0    0    -1  
$EndComp
$Comp
L 8_bit_SRAM_isd X4
U 1 1 63414F7C
P 8050 5550
F 0 "X4" H 8450 4850 60  0000 C CNN
F 1 "8_bit_SRAM_isd" H 8250 6050 60  0000 C CNN
F 2 "" H 8050 5550 60  0001 C CNN
F 3 "" H 8050 5550 60  0001 C CNN
	1    8050 5550
	1    0    0    -1  
$EndComp
$Comp
L fivetothree_two_decoder_isd U1
U 1 1 63415233
P 600 3850
F 0 "U1" H 3450 5650 60  0000 C CNN
F 1 "fivetothree_two_decoder_isd" H 3450 5850 60  0000 C CNN
F 2 "" H 3450 5800 60  0000 C CNN
F 3 "" H 3450 5800 60  0000 C CNN
	1    600  3850
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_6 U7
U 1 1 634155CB
P 2200 2000
F 0 "U7" H 2200 2000 60  0000 C CNN
F 1 "adc_bridge_6" H 2200 2150 60  0000 C CNN
F 2 "" H 2200 2000 60  0000 C CNN
F 3 "" H 2200 2000 60  0000 C CNN
	1    2200 2000
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_8 U9
U 1 1 634159AC
P 4850 1850
F 0 "U9" H 4850 1850 60  0000 C CNN
F 1 "dac_bridge_8" H 4850 2000 60  0000 C CNN
F 2 "" H 4850 1850 60  0000 C CNN
F 3 "" H 4850 1850 60  0000 C CNN
	1    4850 1850
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_8 U8
U 1 1 6341631A
P 4750 2800
F 0 "U8" H 4750 2800 60  0000 C CNN
F 1 "dac_bridge_8" H 4750 2950 60  0000 C CNN
F 2 "" H 4750 2800 60  0000 C CNN
F 3 "" H 4750 2800 60  0000 C CNN
	1    4750 2800
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_8 U10
U 1 1 634165A9
P 4850 3750
F 0 "U10" H 4850 3750 60  0000 C CNN
F 1 "dac_bridge_8" H 4850 3900 60  0000 C CNN
F 2 "" H 4850 3750 60  0000 C CNN
F 3 "" H 4850 3750 60  0000 C CNN
	1    4850 3750
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_8 U11
U 1 1 6341660E
P 4850 4700
F 0 "U11" H 4850 4700 60  0000 C CNN
F 1 "dac_bridge_8" H 4850 4850 60  0000 C CNN
F 2 "" H 4850 4700 60  0000 C CNN
F 3 "" H 4850 4700 60  0000 C CNN
	1    4850 4700
	1    0    0    -1  
$EndComp
$Comp
L pulse v1
U 1 1 63416C56
P 900 3400
F 0 "v1" H 700 3500 60  0000 C CNN
F 1 "pulse" H 700 3350 60  0000 C CNN
F 2 "R1" H 600 3400 60  0000 C CNN
F 3 "" H 900 3400 60  0000 C CNN
	1    900  3400
	1    0    0    -1  
$EndComp
$Comp
L pulse v2
U 1 1 63416CA9
P 1100 4150
F 0 "v2" H 900 4250 60  0000 C CNN
F 1 "pulse" H 900 4100 60  0000 C CNN
F 2 "R1" H 800 4150 60  0000 C CNN
F 3 "" H 1100 4150 60  0000 C CNN
	1    1100 4150
	1    0    0    -1  
$EndComp
$Comp
L pulse v3
U 1 1 63416DB6
P 1300 4900
F 0 "v3" H 1100 5000 60  0000 C CNN
F 1 "pulse" H 1100 4850 60  0000 C CNN
F 2 "R1" H 1000 4900 60  0000 C CNN
F 3 "" H 1300 4900 60  0000 C CNN
	1    1300 4900
	1    0    0    -1  
$EndComp
$Comp
L pulse v4
U 1 1 63416EF4
P 1500 5700
F 0 "v4" H 1300 5800 60  0000 C CNN
F 1 "pulse" H 1300 5650 60  0000 C CNN
F 2 "R1" H 1200 5700 60  0000 C CNN
F 3 "" H 1500 5700 60  0000 C CNN
	1    1500 5700
	1    0    0    -1  
$EndComp
$Comp
L pulse v5
U 1 1 63417069
P 1700 6450
F 0 "v5" H 1500 6550 60  0000 C CNN
F 1 "pulse" H 1500 6400 60  0000 C CNN
F 2 "R1" H 1400 6450 60  0000 C CNN
F 3 "" H 1700 6450 60  0000 C CNN
	1    1700 6450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 63417D94
P 1200 7050
F 0 "#PWR1" H 1200 6800 50  0001 C CNN
F 1 "GND" H 1200 6900 50  0000 C CNN
F 2 "" H 1200 7050 50  0001 C CNN
F 3 "" H 1200 7050 50  0001 C CNN
	1    1200 7050
	1    0    0    -1  
$EndComp
$Comp
L DC v6
U 1 1 6341879F
P 1950 3300
F 0 "v6" H 1750 3400 60  0000 C CNN
F 1 "DC" H 1750 3250 60  0000 C CNN
F 2 "R1" H 1650 3300 60  0000 C CNN
F 3 "" H 1950 3300 60  0000 C CNN
	1    1950 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 63418816
P 1950 4050
F 0 "#PWR2" H 1950 3800 50  0001 C CNN
F 1 "GND" H 1950 3900 50  0000 C CNN
F 2 "" H 1950 4050 50  0001 C CNN
F 3 "" H 1950 4050 50  0001 C CNN
	1    1950 4050
	1    0    0    -1  
$EndComp
Text GLabel 700  1850 0    60   Input ~ 0
a4
Text GLabel 700  2000 0    60   Input ~ 0
a3
Text GLabel 700  2150 0    60   Input ~ 0
a2
Text GLabel 700  2300 0    60   Input ~ 0
a1
Text GLabel 700  2450 0    60   Input ~ 0
a0
$Comp
L plot_v1 U2
U 1 1 63418D6F
P 750 1200
F 0 "U2" H 750 1700 60  0000 C CNN
F 1 "plot_v1" H 950 1550 60  0000 C CNN
F 2 "" H 750 1200 60  0000 C CNN
F 3 "" H 750 1200 60  0000 C CNN
	1    750  1200
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U3
U 1 1 63418E86
P 950 1550
F 0 "U3" H 950 2050 60  0000 C CNN
F 1 "plot_v1" H 1150 1900 60  0000 C CNN
F 2 "" H 950 1550 60  0000 C CNN
F 3 "" H 950 1550 60  0000 C CNN
	1    950  1550
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U4
U 1 1 63418F0B
P 1150 1900
F 0 "U4" H 1150 2400 60  0000 C CNN
F 1 "plot_v1" H 1350 2250 60  0000 C CNN
F 2 "" H 1150 1900 60  0000 C CNN
F 3 "" H 1150 1900 60  0000 C CNN
	1    1150 1900
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U5
U 1 1 63418F88
P 1300 1200
F 0 "U5" H 1300 1700 60  0000 C CNN
F 1 "plot_v1" H 1500 1550 60  0000 C CNN
F 2 "" H 1300 1200 60  0000 C CNN
F 3 "" H 1300 1200 60  0000 C CNN
	1    1300 1200
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U6
U 1 1 6341901D
P 1500 1550
F 0 "U6" H 1500 2050 60  0000 C CNN
F 1 "plot_v1" H 1700 1900 60  0000 C CNN
F 2 "" H 1500 1550 60  0000 C CNN
F 3 "" H 1500 1550 60  0000 C CNN
	1    1500 1550
	1    0    0    -1  
$EndComp
$Comp
L pulse v7
U 1 1 6341A389
P 3250 1100
F 0 "v7" H 3050 1200 60  0000 C CNN
F 1 "pulse" H 3050 1050 60  0000 C CNN
F 2 "R1" H 2950 1100 60  0000 C CNN
F 3 "" H 3250 1100 60  0000 C CNN
	1    3250 1100
	1    0    0    -1  
$EndComp
$Comp
L pulse v8
U 1 1 6341A404
P 4100 1150
F 0 "v8" H 3900 1250 60  0000 C CNN
F 1 "pulse" H 3900 1100 60  0000 C CNN
F 2 "R1" H 3800 1150 60  0000 C CNN
F 3 "" H 4100 1150 60  0000 C CNN
	1    4100 1150
	1    0    0    -1  
$EndComp
Text GLabel 6200 800  0    60   Input ~ 0
win
Text GLabel 6650 950  0    60   Input ~ 0
r_enbl
$Comp
L GND #PWR3
U 1 1 6341AB96
P 2750 1600
F 0 "#PWR3" H 2750 1350 50  0001 C CNN
F 1 "GND" H 2750 1450 50  0000 C CNN
F 2 "" H 2750 1600 50  0001 C CNN
F 3 "" H 2750 1600 50  0001 C CNN
	1    2750 1600
	1    0    0    -1  
$EndComp
Text GLabel 9000 5950 2    60   Output ~ 0
out0
Text GLabel 9300 5850 2    60   Output ~ 0
out1
Text GLabel 9600 5750 2    60   Output ~ 0
out2
Text GLabel 9900 5650 2    60   Output ~ 0
out3
Text GLabel 10200 5550 2    60   Output ~ 0
out4
Text GLabel 10500 5450 2    60   Output ~ 0
out5
Text GLabel 9250 5350 2    60   Output ~ 0
out6
Text GLabel 9750 5250 2    60   Output ~ 0
out7
Text GLabel 9000 4500 2    60   Output ~ 0
out8
Text GLabel 9300 4400 2    60   Output ~ 0
out9
Text GLabel 9600 4300 2    60   Output ~ 0
out10
Text GLabel 9950 4200 2    60   Output ~ 0
out11
Text GLabel 10300 4100 2    60   Output ~ 0
out12
Text GLabel 10650 4000 2    60   Output ~ 0
out13
Text GLabel 9100 3900 2    60   Output ~ 0
out14
Text GLabel 9600 3800 2    60   Output ~ 0
out15
Text GLabel 9000 3100 2    60   Output ~ 0
out16
Text GLabel 9350 3000 2    60   Output ~ 0
out17
Text GLabel 9700 2900 2    60   Output ~ 0
out18
Text GLabel 10050 2800 2    60   Output ~ 0
out19
Text GLabel 10400 2700 2    60   Output ~ 0
out20
Text GLabel 10800 2600 2    60   Output ~ 0
out21
Text GLabel 9150 2500 2    60   Output ~ 0
out22
Text GLabel 9600 2400 2    60   Output ~ 0
out23
Text GLabel 9000 1700 2    60   Output ~ 0
out24
Text GLabel 9400 1600 2    60   Output ~ 0
out25
Text GLabel 9800 1500 2    60   Output ~ 0
out26
Text GLabel 10200 1400 2    60   Output ~ 0
out27
Text GLabel 10600 1300 2    60   Output ~ 0
out28
Text GLabel 9050 1200 2    60   Output ~ 0
out29
Text GLabel 9450 1100 2    60   Output ~ 0
out30
Text GLabel 9900 1000 2    60   Output ~ 0
out31
Wire Wire Line
	6550 2550 7300 2550
Wire Wire Line
	6550 2850 6550 2550
Wire Wire Line
	5300 2850 6550 2850
Wire Wire Line
	6600 2650 7300 2650
Wire Wire Line
	6600 2950 6600 2650
Wire Wire Line
	5300 2950 6600 2950
Wire Wire Line
	6650 2750 7300 2750
Wire Wire Line
	6650 3050 6650 2750
Wire Wire Line
	5300 3050 6650 3050
Wire Wire Line
	6700 2850 7300 2850
Wire Wire Line
	6700 3150 6700 2850
Wire Wire Line
	5300 3150 6700 3150
Wire Wire Line
	6750 2950 7300 2950
Wire Wire Line
	6750 3250 6750 2950
Wire Wire Line
	5300 3250 6750 3250
Wire Wire Line
	6800 3050 7300 3050
Wire Wire Line
	6800 3350 6800 3050
Wire Wire Line
	5300 3350 6800 3350
Wire Wire Line
	6850 3450 5300 3450
Wire Wire Line
	6850 3150 6850 3450
Wire Wire Line
	7300 3150 6850 3150
Wire Wire Line
	5800 4650 7300 4650
Wire Wire Line
	5800 3700 5800 4650
Wire Wire Line
	5400 3700 5800 3700
Wire Wire Line
	5700 3950 7300 3950
Wire Wire Line
	5700 3800 5700 3950
Wire Wire Line
	5400 3800 5700 3800
Wire Wire Line
	5650 4050 7300 4050
Wire Wire Line
	5650 3900 5650 4050
Wire Wire Line
	5400 3900 5650 3900
Wire Wire Line
	5600 4000 5400 4000
Wire Wire Line
	5600 4150 5600 4000
Wire Wire Line
	7300 4150 5600 4150
Wire Wire Line
	5550 4100 5400 4100
Wire Wire Line
	5550 4250 5550 4100
Wire Wire Line
	7300 4250 5550 4250
Wire Wire Line
	5500 4200 5400 4200
Wire Wire Line
	5500 4350 5500 4200
Wire Wire Line
	7300 4350 5500 4350
Wire Wire Line
	5450 4450 7300 4450
Wire Wire Line
	5450 4300 5450 4450
Wire Wire Line
	5400 4300 5450 4300
Wire Wire Line
	5400 4550 5400 4400
Wire Wire Line
	7300 4550 5400 4550
Wire Wire Line
	5750 6100 7300 6100
Wire Wire Line
	5750 4650 5750 6100
Wire Wire Line
	5400 4650 5750 4650
Wire Wire Line
	5700 5400 7300 5400
Wire Wire Line
	5700 4750 5700 5400
Wire Wire Line
	5400 4750 5700 4750
Wire Wire Line
	5650 5500 7300 5500
Wire Wire Line
	5650 4850 5650 5500
Wire Wire Line
	5400 4850 5650 4850
Wire Wire Line
	5600 5600 7300 5600
Wire Wire Line
	5600 4950 5600 5600
Wire Wire Line
	5400 4950 5600 4950
Wire Wire Line
	5550 5050 5400 5050
Wire Wire Line
	5550 5700 5550 5050
Wire Wire Line
	7300 5700 5550 5700
Wire Wire Line
	5500 5800 7300 5800
Wire Wire Line
	5500 5150 5500 5800
Wire Wire Line
	5400 5150 5500 5150
Wire Wire Line
	5450 5900 7300 5900
Wire Wire Line
	5450 5250 5450 5900
Wire Wire Line
	5400 5250 5450 5250
Wire Wire Line
	5400 6000 7300 6000
Wire Wire Line
	5400 5350 5400 6000
Wire Wire Line
	8800 1000 9900 1000
Wire Wire Line
	8800 1100 9450 1100
Wire Wire Line
	8800 1200 9050 1200
Wire Wire Line
	8800 1300 10600 1300
Wire Wire Line
	8800 1400 10200 1400
Wire Wire Line
	8800 1500 9800 1500
Wire Wire Line
	8800 1600 9400 1600
Wire Wire Line
	8800 1700 9000 1700
Wire Wire Line
	8800 2400 9600 2400
Wire Wire Line
	8800 2500 9150 2500
Wire Wire Line
	8800 2600 10800 2600
Wire Wire Line
	8800 2700 10400 2700
Wire Wire Line
	10050 2800 8800 2800
Wire Wire Line
	8800 2900 9700 2900
Wire Wire Line
	8800 3000 9350 3000
Wire Wire Line
	8800 3100 9000 3100
Wire Wire Line
	8800 3800 9600 3800
Wire Wire Line
	8800 3900 9100 3900
Wire Wire Line
	8800 4000 10650 4000
Wire Wire Line
	8800 4100 10300 4100
Wire Wire Line
	8800 4200 9950 4200
Wire Wire Line
	8800 4300 9600 4300
Wire Wire Line
	8800 4400 9300 4400
Wire Wire Line
	8800 4500 9000 4500
Wire Wire Line
	8800 5250 9750 5250
Wire Wire Line
	8800 5350 9250 5350
Wire Wire Line
	8800 5450 10500 5450
Wire Wire Line
	8800 5550 10200 5550
Wire Wire Line
	8800 5650 9900 5650
Wire Wire Line
	8800 5750 9600 5750
Wire Wire Line
	8800 5850 9300 5850
Wire Wire Line
	8800 5950 9000 5950
Connection ~ 3250 1600
Wire Wire Line
	3250 1600 3250 1550
Wire Wire Line
	2750 1600 4100 1600
Connection ~ 6900 950 
Wire Wire Line
	6650 950  6900 950 
Connection ~ 7000 800 
Wire Wire Line
	6200 800  7000 800 
Connection ~ 7150 1050
Wire Wire Line
	6900 700  4100 700 
Wire Wire Line
	6900 1050 6900 700 
Connection ~ 7000 950 
Wire Wire Line
	3250 600  3250 650 
Wire Wire Line
	7000 600  3250 600 
Connection ~ 7150 3850
Wire Wire Line
	7150 5300 7300 5300
Connection ~ 7150 2450
Wire Wire Line
	7150 3850 7300 3850
Wire Wire Line
	7150 2450 7300 2450
Wire Wire Line
	7150 1050 7150 5300
Wire Wire Line
	6900 1050 7300 1050
Connection ~ 7000 3750
Wire Wire Line
	7000 5200 7300 5200
Connection ~ 7000 2350
Wire Wire Line
	7000 3750 7300 3750
Wire Wire Line
	7000 2350 7300 2350
Wire Wire Line
	7000 600  7000 5200
Wire Wire Line
	7300 950  7000 950 
Connection ~ 1500 2350
Connection ~ 1200 2300
Wire Wire Line
	1200 1850 1200 2300
Wire Wire Line
	1300 1850 1200 1850
Wire Wire Line
	1300 1000 1300 1850
Connection ~ 1150 2150
Wire Wire Line
	1150 1700 1150 2150
Connection ~ 950  2000
Wire Wire Line
	950  1350 950  2000
Connection ~ 750  1850
Wire Wire Line
	750  1000 750  1850
Connection ~ 1500 2450
Wire Wire Line
	700  2450 1500 2450
Connection ~ 1400 2300
Wire Wire Line
	700  2300 1400 2300
Connection ~ 1300 2150
Connection ~ 1100 2050
Wire Wire Line
	700  2000 1100 2000
Connection ~ 900  1950
Wire Wire Line
	700  1850 900  1850
Wire Wire Line
	1950 3750 1950 4050
Wire Wire Line
	1950 2750 1950 2850
Wire Wire Line
	1600 2750 1950 2750
Wire Wire Line
	1600 2450 1600 2750
Wire Wire Line
	1700 4000 1700 6000
Wire Wire Line
	1500 4000 1700 4000
Wire Wire Line
	1500 1350 1500 4000
Wire Wire Line
	1600 2350 1500 2350
Wire Wire Line
	1500 4650 1500 5250
Wire Wire Line
	1400 4650 1500 4650
Wire Wire Line
	1400 2250 1400 4650
Wire Wire Line
	1600 2250 1400 2250
Wire Wire Line
	1300 2150 1300 4450
Wire Wire Line
	700  2150 1600 2150
Wire Wire Line
	1100 2000 1100 3700
Wire Wire Line
	1600 2050 1100 2050
Wire Wire Line
	900  1950 1600 1950
Wire Wire Line
	900  1850 900  2950
Connection ~ 1200 6900
Wire Wire Line
	1200 6900 1200 7050
Connection ~ 600  6150
Wire Wire Line
	600  6900 1700 6900
Connection ~ 600  5350
Wire Wire Line
	600  6150 1500 6150
Connection ~ 600  4600
Wire Wire Line
	600  5350 1300 5350
Wire Wire Line
	600  4600 1100 4600
Wire Wire Line
	600  3850 600  6900
Wire Wire Line
	900  3850 600  3850
Wire Wire Line
	4150 4250 4250 4400
Wire Wire Line
	4150 4150 4250 4300
Wire Wire Line
	4150 4050 4250 4200
Wire Wire Line
	4150 3950 4250 4100
Wire Wire Line
	4250 4000 4150 3850
Wire Wire Line
	4150 3750 4250 3900
Wire Wire Line
	4150 3650 4250 3800
Wire Wire Line
	4150 3550 4250 3700
Wire Wire Line
	4150 5050 4250 5350
Wire Wire Line
	4150 4950 4250 5250
Wire Wire Line
	4150 4850 4250 5150
Wire Wire Line
	4150 4750 4250 5050
Wire Wire Line
	4150 4650 4250 4950
Wire Wire Line
	4250 4850 4150 4550
Wire Wire Line
	4150 4450 4250 4750
Wire Wire Line
	4250 4650 4150 4350
Wire Wire Line
	4150 2650 4250 2500
Wire Wire Line
	4150 2550 4250 2400
Wire Wire Line
	4150 2450 4250 2300
Wire Wire Line
	4250 2200 4150 2350
Wire Wire Line
	4150 2250 4250 2100
Wire Wire Line
	4250 2000 4150 2150
Wire Wire Line
	4150 2050 4250 1900
Wire Wire Line
	4150 1950 4250 1800
Wire Wire Line
	5400 2500 6500 2500
Wire Wire Line
	6500 2500 6500 1750
Wire Wire Line
	6500 1750 7300 1750
Wire Wire Line
	5400 2400 6450 2400
Wire Wire Line
	6450 2400 6450 1650
Wire Wire Line
	6450 1650 7300 1650
Wire Wire Line
	5400 2300 6400 2300
Wire Wire Line
	6400 2300 6400 1550
Wire Wire Line
	6400 1550 7300 1550
Wire Wire Line
	5400 2200 6350 2200
Wire Wire Line
	6350 2200 6350 1450
Wire Wire Line
	6350 1450 7300 1450
Wire Wire Line
	5400 2100 6300 2100
Wire Wire Line
	6300 2100 6300 1350
Wire Wire Line
	6300 1350 7300 1350
Wire Wire Line
	5400 2000 6250 2000
Wire Wire Line
	6250 2000 6250 1250
Wire Wire Line
	6250 1250 7300 1250
Wire Wire Line
	7300 1150 6150 1150
Wire Wire Line
	6150 1150 6150 1900
Wire Wire Line
	6150 1900 5400 1900
Wire Wire Line
	5400 1800 7300 1800
Wire Wire Line
	7300 1800 7300 1850
$Comp
L SKY130mode scmode1
U 1 1 634235D7
P 3450 6000
F 0 "scmode1" H 3450 6150 98  0000 C CNB
F 1 "SKY130mode" H 3450 5900 118 0000 C CNB
F 2 "" H 3450 6150 60  0001 C CNN
F 3 "" H 3450 6150 60  0001 C CNN
	1    3450 6000
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U12
U 1 1 63423811
P 10150 2500
F 0 "U12" H 10150 3000 60  0000 C CNN
F 1 "plot_v1" H 10350 2850 60  0000 C CNN
F 2 "" H 10150 2500 60  0000 C CNN
F 3 "" H 10150 2500 60  0000 C CNN
	1    10150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2300 10150 2700
Connection ~ 10150 2700
$Comp
L plot_v1 U13
U 1 1 63423BA0
P 10100 3900
F 0 "U13" H 10100 4400 60  0000 C CNN
F 1 "plot_v1" H 10300 4250 60  0000 C CNN
F 2 "" H 10100 3900 60  0000 C CNN
F 3 "" H 10100 3900 60  0000 C CNN
	1    10100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3700 10100 4000
Connection ~ 10100 4000
$Comp
L plot_v1 U?
U 1 1 6342490F
P 4750 1400
F 0 "U?" H 4750 1900 60  0000 C CNN
F 1 "plot_v1" H 4950 1750 60  0000 C CNN
F 2 "" H 4750 1400 60  0000 C CNN
F 3 "" H 4750 1400 60  0000 C CNN
	1    4750 1400
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U?
U 1 1 63424998
P 5400 1400
F 0 "U?" H 5400 1900 60  0000 C CNN
F 1 "plot_v1" H 5600 1750 60  0000 C CNN
F 2 "" H 5400 1400 60  0000 C CNN
F 3 "" H 5400 1400 60  0000 C CNN
	1    5400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 600  4550 1200
Wire Wire Line
	4550 1200 4750 1200
Connection ~ 4550 600 
Wire Wire Line
	5200 1200 5400 1200
Wire Wire Line
	5200 1200 5200 700 
Connection ~ 5200 700 
$EndSCHEMATC
