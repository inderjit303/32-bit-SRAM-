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
LIBS:6t_isramsd
LIBS:one_bit_sram_isd-cache
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
L adc_bridge_2 U4
U 1 1 634063C8
P 2600 3300
F 0 "U4" H 2600 3300 60  0000 C CNN
F 1 "adc_bridge_2" H 2600 3450 60  0000 C CNN
F 2 "" H 2600 3300 60  0000 C CNN
F 3 "" H 2600 3300 60  0000 C CNN
	1    2600 3300
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_2 U5
U 1 1 634064AF
P 5000 3300
F 0 "U5" H 5000 3300 60  0000 C CNN
F 1 "dac_bridge_2" H 5050 3450 60  0000 C CNN
F 2 "" H 5000 3300 60  0000 C CNN
F 3 "" H 5000 3300 60  0000 C CNN
	1    5000 3300
	1    0    0    -1  
$EndComp
$Comp
L 6t_isramsd X1
U 1 1 634065A3
P 6400 3250
F 0 "X1" H 6550 2950 60  0000 C CNN
F 1 "6t_isramsd" H 6500 3550 60  0000 C CNN
F 2 "" H 6400 3250 60  0001 C CNN
F 3 "" H 6400 3250 60  0001 C CNN
	1    6400 3250
	1    0    0    -1  
$EndComp
Text GLabel 5450 3550 0    60   Input ~ 0
bl
Text GLabel 5700 3750 0    60   Input ~ 0
blbar
$Comp
L pulse v2
U 1 1 634067BB
P 1750 3900
F 0 "v2" H 1550 4000 60  0000 C CNN
F 1 "pulse" H 1550 3850 60  0000 C CNN
F 2 "R1" H 1450 3900 60  0000 C CNN
F 3 "" H 1750 3900 60  0000 C CNN
	1    1750 3900
	1    0    0    -1  
$EndComp
$Comp
L pulse v1
U 1 1 63406840
P 1000 3850
F 0 "v1" H 800 3950 60  0000 C CNN
F 1 "pulse" H 800 3800 60  0000 C CNN
F 2 "R1" H 700 3850 60  0000 C CNN
F 3 "" H 1000 3850 60  0000 C CNN
	1    1000 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 6340692C
P 1300 4550
F 0 "#PWR01" H 1300 4300 50  0001 C CNN
F 1 "GND" H 1300 4400 50  0000 C CNN
F 2 "" H 1300 4550 50  0001 C CNN
F 3 "" H 1300 4550 50  0001 C CNN
	1    1300 4550
	1    0    0    -1  
$EndComp
Text GLabel 750  3250 0    60   Input ~ 0
wl
Text GLabel 1450 3400 0    60   Input ~ 0
win
$Comp
L sky130_fd_pr__nfet_01v8 SC2
U 1 1 63406CD5
P 8050 3600
F 0 "SC2" H 8100 3900 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 8350 3687 50  0000 R CNN
F 2 "" H 8050 2100 50  0001 C CNN
F 3 "" H 8050 3600 50  0001 C CNN
	1    8050 3600
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8 SC3
U 1 1 63406D87
P 8450 4400
F 0 "SC3" H 8500 4700 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 8750 4487 50  0000 R CNN
F 2 "" H 8450 2900 50  0001 C CNN
F 3 "" H 8450 4400 50  0001 C CNN
	1    8450 4400
	-1   0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__pfet_01v8 SC1
U 1 1 63406E32
P 7750 2500
F 0 "SC1" H 7800 2800 50  0000 C CNN
F 1 "sky130_fd_pr__pfet_01v8" H 8050 2587 50  0000 R CNN
F 2 "" H 7750 1000 50  0001 C CNN
F 3 "" H 7750 2500 50  0001 C CNN
	1    7750 2500
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__pfet_01v8 SC4
U 1 1 63406EAD
P 8700 2500
F 0 "SC4" H 8750 2800 50  0000 C CNN
F 1 "sky130_fd_pr__pfet_01v8" H 9000 2587 50  0000 R CNN
F 2 "" H 8700 1000 50  0001 C CNN
F 3 "" H 8700 2500 50  0001 C CNN
	1    8700 2500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 634076AD
P 8250 4950
F 0 "#PWR02" H 8250 4700 50  0001 C CNN
F 1 "GND" H 8250 4800 50  0000 C CNN
F 2 "" H 8250 4950 50  0001 C CNN
F 3 "" H 8250 4950 50  0001 C CNN
	1    8250 4950
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__pfet_01v8 SC5
U 1 1 63407A5C
P 10000 2700
F 0 "SC5" H 10050 3000 50  0000 C CNN
F 1 "sky130_fd_pr__pfet_01v8" H 10300 2787 50  0000 R CNN
F 2 "" H 10000 1200 50  0001 C CNN
F 3 "" H 10000 2700 50  0001 C CNN
	1    10000 2700
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8 SC6
U 1 1 63407AD9
P 10000 3550
F 0 "SC6" H 10050 3850 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 10300 3637 50  0000 R CNN
F 2 "" H 10000 2050 50  0001 C CNN
F 3 "" H 10000 3550 50  0001 C CNN
	1    10000 3550
	1    0    0    -1  
$EndComp
$Comp
L DC v3
U 1 1 6340801B
P 7000 2100
F 0 "v3" H 6800 2200 60  0000 C CNN
F 1 "DC" H 6800 2050 60  0000 C CNN
F 2 "R1" H 6700 2100 60  0000 C CNN
F 3 "" H 7000 2100 60  0000 C CNN
	1    7000 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 634080E4
P 7000 2700
F 0 "#PWR03" H 7000 2450 50  0001 C CNN
F 1 "GND" H 7000 2550 50  0000 C CNN
F 2 "" H 7000 2700 50  0001 C CNN
F 3 "" H 7000 2700 50  0001 C CNN
	1    7000 2700
	1    0    0    -1  
$EndComp
$Comp
L pulse v4
U 1 1 63408730
P 9600 4250
F 0 "v4" H 9400 4350 60  0000 C CNN
F 1 "pulse" H 9400 4200 60  0000 C CNN
F 2 "R1" H 9300 4250 60  0000 C CNN
F 3 "" H 9600 4250 60  0000 C CNN
	1    9600 4250
	1    0    0    -1  
$EndComp
Text GLabel 9400 3850 0    60   Input ~ 0
r_enbl
Text GLabel 10750 3100 2    60   Output ~ 0
out
$Comp
L plot_v1 U7
U 1 1 63408F48
P 10550 3100
F 0 "U7" H 10550 3600 60  0000 C CNN
F 1 "plot_v1" H 10750 3450 60  0000 C CNN
F 2 "" H 10550 3100 60  0000 C CNN
F 3 "" H 10550 3100 60  0000 C CNN
	1    10550 3100
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U6
U 1 1 63409148
P 9100 3750
F 0 "U6" H 9100 4250 60  0000 C CNN
F 1 "plot_v1" H 9300 4100 60  0000 C CNN
F 2 "" H 9100 3750 60  0000 C CNN
F 3 "" H 9100 3750 60  0000 C CNN
	1    9100 3750
	1    0    0    -1  
$EndComp
Text GLabel 7100 3450 2    60   Output ~ 0
q
$Comp
L plot_v1 U1
U 1 1 6340ABD8
P 1000 3000
F 0 "U1" H 1000 3500 60  0000 C CNN
F 1 "plot_v1" H 1200 3350 60  0000 C CNN
F 2 "" H 1000 3000 60  0000 C CNN
F 3 "" H 1000 3000 60  0000 C CNN
	1    1000 3000
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U3
U 1 1 6340AC3B
P 1550 3000
F 0 "U3" H 1550 3500 60  0000 C CNN
F 1 "plot_v1" H 1750 3350 60  0000 C CNN
F 2 "" H 1550 3000 60  0000 C CNN
F 3 "" H 1550 3000 60  0000 C CNN
	1    1550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3100 5700 3100
Wire Wire Line
	5700 3100 5700 3250
Wire Wire Line
	5700 3250 5550 3250
Wire Wire Line
	5850 3400 5700 3400
Wire Wire Line
	5700 3400 5700 3350
Wire Wire Line
	5700 3350 5550 3350
Wire Wire Line
	5600 3250 5600 3550
Wire Wire Line
	5600 3550 5450 3550
Connection ~ 5600 3250
Wire Wire Line
	5750 3400 5750 3750
Wire Wire Line
	5750 3750 5700 3750
Connection ~ 5750 3400
Wire Wire Line
	750  3250 2000 3250
Wire Wire Line
	1850 2900 1850 3250
Wire Wire Line
	1850 2900 5800 2900
Wire Wire Line
	5800 2900 5800 3250
Wire Wire Line
	5800 3250 5850 3250
Wire Wire Line
	1750 3450 1750 3350
Wire Wire Line
	1750 3350 2000 3350
Wire Wire Line
	1000 2800 1000 3400
Connection ~ 1850 3250
Wire Wire Line
	1750 4350 1000 4350
Wire Wire Line
	1000 4350 1000 4300
Wire Wire Line
	1300 4350 1300 4550
Connection ~ 1300 4350
Connection ~ 1000 3250
Wire Wire Line
	1450 3400 1750 3400
Connection ~ 1750 3400
Wire Wire Line
	7950 2800 7950 2900
Wire Wire Line
	7950 2900 8500 2900
Wire Wire Line
	8500 2900 8500 2800
Wire Wire Line
	8250 2900 8250 3300
Connection ~ 8250 2900
Wire Wire Line
	7950 2000 7950 2200
Wire Wire Line
	7950 2000 8500 2000
Wire Wire Line
	8500 2000 8500 2200
Wire Wire Line
	7850 2500 8100 2500
Wire Wire Line
	8100 2500 8100 2000
Connection ~ 8100 2000
Wire Wire Line
	8600 2500 8350 2500
Wire Wire Line
	8350 2500 8350 2000
Connection ~ 8350 2000
Wire Wire Line
	7450 2500 7300 2500
Wire Wire Line
	7300 2500 7300 3600
Wire Wire Line
	7300 3600 7750 3600
Wire Wire Line
	6950 3250 7300 3250
Connection ~ 7300 3250
Wire Wire Line
	8250 3900 8250 4100
Wire Wire Line
	8150 3600 8400 3600
Wire Wire Line
	8400 3600 8400 3950
Wire Wire Line
	8400 3950 8250 3950
Connection ~ 8250 3950
Wire Wire Line
	8250 4700 8250 4950
Wire Wire Line
	8100 4400 8350 4400
Wire Wire Line
	8100 4400 8100 4800
Wire Wire Line
	8100 4800 10200 4800
Connection ~ 8250 4800
Wire Wire Line
	9000 2500 9000 4400
Wire Wire Line
	9000 4400 8750 4400
Wire Wire Line
	9700 2700 9700 3550
Wire Wire Line
	10200 3000 10200 3250
Wire Wire Line
	10200 4800 10200 3850
Wire Wire Line
	10100 3550 10350 3550
Wire Wire Line
	10350 3550 10350 3900
Wire Wire Line
	10350 3900 10200 3900
Connection ~ 10200 3900
Wire Wire Line
	10200 1850 10200 2400
Wire Wire Line
	8200 1850 10200 1850
Wire Wire Line
	8200 1650 8200 2000
Connection ~ 8200 2000
Wire Wire Line
	7000 1650 8200 1650
Connection ~ 8200 1850
Wire Wire Line
	7000 2550 7000 2700
Wire Wire Line
	8250 3100 9700 3100
Connection ~ 9700 3100
Connection ~ 8250 3100
Wire Wire Line
	9000 3700 9600 3700
Wire Wire Line
	9600 3700 9600 3800
Connection ~ 9000 3700
Wire Wire Line
	9600 4700 9600 4800
Connection ~ 9600 4800
Wire Wire Line
	9400 3850 9450 3850
Wire Wire Line
	9450 3850 9450 3700
Connection ~ 9450 3700
Wire Wire Line
	10750 3100 10200 3100
Connection ~ 10200 3100
Wire Wire Line
	10550 2900 10550 3100
Connection ~ 10550 3100
Wire Wire Line
	9100 3550 9100 3700
Connection ~ 9100 3700
Wire Wire Line
	7000 3450 7100 3450
Connection ~ 7000 3250
Wire Wire Line
	7000 3250 7000 3450
Wire Wire Line
	1550 2800 1550 3400
Connection ~ 1550 3400
$Comp
L SKY130mode scmode1
U 1 1 6340B4FE
P 3750 4200
F 0 "scmode1" H 3750 4350 98  0000 C CNB
F 1 "SKY130mode" H 3750 4100 118 0000 C CNB
F 2 "" H 3750 4350 60  0001 C CNN
F 3 "" H 3750 4350 60  0001 C CNN
	1    3750 4200
	1    0    0    -1  
$EndComp
$Comp
L idata_writer_cktsd U2
U 1 1 6340839A
P 1000 5150
F 0 "U2" H 3850 6950 60  0000 C CNN
F 1 "idata_writer_cktsd" H 3850 7150 60  0000 C CNN
F 2 "" H 3850 7100 60  0000 C CNN
F 3 "" H 3850 7100 60  0000 C CNN
	1    1000 5150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
