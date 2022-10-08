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
LIBS:1bit_sram_sym-cache
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
L adc_bridge_2 U3
U 1 1 6340856E
P 1800 3500
F 0 "U3" H 1800 3500 60  0000 C CNN
F 1 "adc_bridge_2" H 1800 3650 60  0000 C CNN
F 2 "" H 1800 3500 60  0000 C CNN
F 3 "" H 1800 3500 60  0000 C CNN
	1    1800 3500
	1    0    0    -1  
$EndComp
$Comp
L idata_writer_cktsd U1
U 1 1 6340862C
P 200 5350
F 0 "U1" H 3050 7150 60  0000 C CNN
F 1 "idata_writer_cktsd" H 3050 7350 60  0000 C CNN
F 2 "" H 3050 7300 60  0000 C CNN
F 3 "" H 3050 7300 60  0000 C CNN
	1    200  5350
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_2 U4
U 1 1 634086DD
P 4200 3500
F 0 "U4" H 4200 3500 60  0000 C CNN
F 1 "dac_bridge_2" H 4250 3650 60  0000 C CNN
F 2 "" H 4200 3500 60  0000 C CNN
F 3 "" H 4200 3500 60  0000 C CNN
	1    4200 3500
	1    0    0    -1  
$EndComp
$Comp
L 6t_isramsd X1
U 1 1 634087D4
P 5600 3550
F 0 "X1" H 5750 3250 60  0000 C CNN
F 1 "6t_isramsd" H 5700 3850 60  0000 C CNN
F 2 "" H 5600 3550 60  0001 C CNN
F 3 "" H 5600 3550 60  0001 C CNN
	1    5600 3550
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8 SC2
U 1 1 63408A64
P 7300 3950
F 0 "SC2" H 7350 4250 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 7600 4037 50  0000 R CNN
F 2 "" H 7300 2450 50  0001 C CNN
F 3 "" H 7300 3950 50  0001 C CNN
	1    7300 3950
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8 SC3
U 1 1 63408ACB
P 7700 4900
F 0 "SC3" H 7750 5200 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 8000 4987 50  0000 R CNN
F 2 "" H 7700 3400 50  0001 C CNN
F 3 "" H 7700 4900 50  0001 C CNN
	1    7700 4900
	-1   0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__pfet_01v8 SC1
U 1 1 63408B5E
P 7000 2850
F 0 "SC1" H 7050 3150 50  0000 C CNN
F 1 "sky130_fd_pr__pfet_01v8" H 7300 2937 50  0000 R CNN
F 2 "" H 7000 1350 50  0001 C CNN
F 3 "" H 7000 2850 50  0001 C CNN
	1    7000 2850
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__pfet_01v8 SC4
U 1 1 63408BE5
P 7950 2850
F 0 "SC4" H 8000 3150 50  0000 C CNN
F 1 "sky130_fd_pr__pfet_01v8" H 8250 2937 50  0000 R CNN
F 2 "" H 7950 1350 50  0001 C CNN
F 3 "" H 7950 2850 50  0001 C CNN
	1    7950 2850
	-1   0    0    -1  
$EndComp
$Comp
L DC v1
U 1 1 63408EF7
P 6150 2450
F 0 "v1" H 5950 2550 60  0000 C CNN
F 1 "DC" H 5950 2400 60  0000 C CNN
F 2 "R1" H 5850 2450 60  0000 C CNN
F 3 "" H 6150 2450 60  0000 C CNN
	1    6150 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 63408F97
P 6150 3050
F 0 "#PWR1" H 6150 2800 50  0001 C CNN
F 1 "GND" H 6150 2900 50  0000 C CNN
F 2 "" H 6150 3050 50  0001 C CNN
F 3 "" H 6150 3050 50  0001 C CNN
	1    6150 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 63409357
P 7500 5350
F 0 "#PWR2" H 7500 5100 50  0001 C CNN
F 1 "GND" H 7500 5200 50  0000 C CNN
F 2 "" H 7500 5350 50  0001 C CNN
F 3 "" H 7500 5350 50  0001 C CNN
	1    7500 5350
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8 SC6
U 1 1 634097D4
P 9650 4250
F 0 "SC6" H 9700 4550 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 9950 4337 50  0000 R CNN
F 2 "" H 9650 2750 50  0001 C CNN
F 3 "" H 9650 4250 50  0001 C CNN
	1    9650 4250
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__pfet_01v8 SC5
U 1 1 6340986B
P 9650 3200
F 0 "SC5" H 9700 3500 50  0000 C CNN
F 1 "sky130_fd_pr__pfet_01v8" H 9950 3287 50  0000 R CNN
F 2 "" H 9650 1700 50  0001 C CNN
F 3 "" H 9650 3200 50  0001 C CNN
	1    9650 3200
	1    0    0    -1  
$EndComp
$Comp
L PORT U2
U 1 1 6340A9A2
P 700 3450
F 0 "U2" H 750 3550 30  0000 C CNN
F 1 "PORT" H 700 3450 30  0000 C CNN
F 2 "" H 700 3450 60  0000 C CNN
F 3 "" H 700 3450 60  0000 C CNN
	1    700  3450
	1    0    0    -1  
$EndComp
$Comp
L PORT U2
U 2 1 6340A9FD
P 700 3700
F 0 "U2" H 750 3800 30  0000 C CNN
F 1 "PORT" H 700 3700 30  0000 C CNN
F 2 "" H 700 3700 60  0000 C CNN
F 3 "" H 700 3700 60  0000 C CNN
	2    700  3700
	1    0    0    -1  
$EndComp
$Comp
L PORT U2
U 3 1 6340AD23
P 8650 4000
F 0 "U2" H 8700 4100 30  0000 C CNN
F 1 "PORT" H 8650 4000 30  0000 C CNN
F 2 "" H 8650 4000 60  0000 C CNN
F 3 "" H 8650 4000 60  0000 C CNN
	3    8650 4000
	-1   0    0    1   
$EndComp
$Comp
L PORT U2
U 4 1 6340AD90
P 10300 3700
F 0 "U2" H 10350 3800 30  0000 C CNN
F 1 "PORT" H 10300 3700 30  0000 C CNN
F 2 "" H 10300 3700 60  0000 C CNN
F 3 "" H 10300 3700 60  0000 C CNN
	4    10300 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 3550 4850 3550
Wire Wire Line
	4850 3550 4850 3700
Wire Wire Line
	4850 3700 5050 3700
Wire Wire Line
	5050 3400 4850 3400
Wire Wire Line
	4850 3400 4850 3450
Wire Wire Line
	4850 3450 4750 3450
Wire Wire Line
	950  3450 1200 3450
Wire Wire Line
	1050 3450 1050 3100
Wire Wire Line
	1050 3100 4950 3100
Wire Wire Line
	4950 3100 4950 3550
Wire Wire Line
	4950 3550 5050 3550
Wire Wire Line
	6700 2850 6600 2850
Wire Wire Line
	6600 2850 6600 3950
Wire Wire Line
	6600 3950 7000 3950
Wire Wire Line
	6150 3550 6600 3550
Connection ~ 6600 3550
Wire Wire Line
	7200 3150 7200 3250
Wire Wire Line
	7200 3250 7750 3250
Wire Wire Line
	7750 3250 7750 3150
Wire Wire Line
	7500 3250 7500 3650
Connection ~ 7500 3250
Wire Wire Line
	7600 2850 7850 2850
Wire Wire Line
	7600 2850 7600 2350
Wire Wire Line
	7200 2350 7750 2350
Wire Wire Line
	7750 2350 7750 2550
Wire Wire Line
	7100 2850 7350 2850
Wire Wire Line
	7350 2850 7350 2350
Wire Wire Line
	7200 2350 7200 2550
Connection ~ 7350 2350
Connection ~ 7600 2350
Wire Wire Line
	7500 2350 7500 2000
Wire Wire Line
	6150 2000 9950 2000
Connection ~ 7500 2350
Wire Wire Line
	6150 2900 6150 3050
Wire Wire Line
	7400 3950 7650 3950
Wire Wire Line
	7650 3950 7650 4350
Wire Wire Line
	7650 4350 7500 4350
Wire Wire Line
	7500 4250 7500 4600
Connection ~ 7500 4350
Wire Wire Line
	7500 5200 7500 5350
Wire Wire Line
	7600 4900 7350 4900
Wire Wire Line
	7350 4900 7350 5300
Wire Wire Line
	7350 5300 9950 5300
Connection ~ 7500 5300
Wire Wire Line
	8250 2850 8250 4900
Wire Wire Line
	8250 4900 8000 4900
Wire Wire Line
	9350 3200 9350 4250
Wire Wire Line
	9350 3500 7500 3500
Connection ~ 7500 3500
Connection ~ 9350 3500
Wire Wire Line
	9850 3500 9850 3950
Wire Wire Line
	9850 2900 9850 2550
Wire Wire Line
	9850 2550 10050 2550
Wire Wire Line
	10050 2550 10050 3200
Wire Wire Line
	10050 3200 9750 3200
Wire Wire Line
	9850 4550 9850 4700
Wire Wire Line
	9850 4700 10050 4700
Wire Wire Line
	10050 4700 10050 4250
Wire Wire Line
	10050 4250 9750 4250
Wire Wire Line
	9950 2000 9950 2550
Connection ~ 9950 2550
Connection ~ 7500 2000
Wire Wire Line
	9950 5300 9950 4700
Connection ~ 9950 4700
Wire Wire Line
	10050 3700 9850 3700
Connection ~ 9850 3700
Wire Wire Line
	8400 4000 8250 4000
Connection ~ 8250 4000
Connection ~ 1050 3450
Wire Wire Line
	1200 3550 1050 3550
Wire Wire Line
	1050 3550 1050 3700
Wire Wire Line
	1050 3700 950  3700
$EndSCHEMATC
