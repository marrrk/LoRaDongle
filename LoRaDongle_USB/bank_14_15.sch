EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
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
L FPGA_Xilinx_Artix7:XC7A100T-CSG324 U?
U 1 1 616127C4
P 5200 3700
F 0 "U?" H 5200 725 50  0000 C CNN
F 1 "XC7A100T-CSG324" H 5200 634 50  0000 C CNN
F 2 "" H 5200 3700 50  0001 C CNN
F 3 "" H 5200 3700 50  0000 C CNN
	1    5200 3700
	1    0    0    -1  
$EndComp
Text GLabel 5150 700  1    50   Output ~ 0
3V3
Wire Wire Line
	4100 800  4100 750 
Wire Wire Line
	4100 750  5150 750 
Wire Wire Line
	5150 750  5150 700 
Wire Wire Line
	3600 800  3600 750 
Wire Wire Line
	3600 750  3700 750 
Connection ~ 4100 750 
Wire Wire Line
	3700 800  3700 750 
Connection ~ 3700 750 
Wire Wire Line
	3700 750  3800 750 
Wire Wire Line
	3800 800  3800 750 
Connection ~ 3800 750 
Wire Wire Line
	3800 750  3900 750 
Wire Wire Line
	3900 800  3900 750 
Connection ~ 3900 750 
Wire Wire Line
	3900 750  4000 750 
Wire Wire Line
	4000 800  4000 750 
Connection ~ 4000 750 
Wire Wire Line
	4000 750  4100 750 
Wire Wire Line
	3600 750  2650 750 
Connection ~ 3600 750 
$Comp
L Device:C C?
U 1 1 616A34E2
P 1000 900
F 0 "C?" H 850 1000 50  0000 L CNN
F 1 "47uF" H 800 800 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 1038 750 50  0001 C CNN
F 3 "GRM32ER70J476ME20L" H 1000 900 50  0001 C CNN
	1    1000 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 616A9107
P 1000 1200
F 0 "#PWR?" H 1000 950 50  0001 C CNN
F 1 "GND" H 1005 1027 50  0000 C CNN
F 2 "" H 1000 1200 50  0001 C CNN
F 3 "" H 1000 1200 50  0001 C CNN
	1    1000 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1050 1000 1150
Connection ~ 1250 750 
Wire Wire Line
	1250 750  1000 750 
$Comp
L Device:C C?
U 1 1 616AAAB1
P 1250 900
F 0 "C?" H 1100 1000 50  0000 L CNN
F 1 "4.7uF" H 1050 800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1288 750 50  0001 C CNN
F 3 "C2012X7R1C475K125AB" H 1250 900 50  0001 C CNN
	1    1250 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 616B0D55
P 1500 900
F 0 "C?" H 1350 1000 50  0000 L CNN
F 1 "4.7uF" H 1300 800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1538 750 50  0001 C CNN
F 3 "C2012X7R1C475K125AB" H 1500 900 50  0001 C CNN
	1    1500 900 
	1    0    0    -1  
$EndComp
Connection ~ 1500 750 
Wire Wire Line
	1500 750  1250 750 
$Comp
L Device:C C?
U 1 1 616B251A
P 1750 900
F 0 "C?" H 1600 1000 50  0000 L CNN
F 1 "0.47uF" H 1550 800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1788 750 50  0001 C CNN
F 3 "GRM188R71E474KA12D" H 1750 900 50  0001 C CNN
	1    1750 900 
	1    0    0    -1  
$EndComp
Connection ~ 1750 750 
Wire Wire Line
	1750 750  1500 750 
$Comp
L Device:C C?
U 1 1 616B79A0
P 2050 900
F 0 "C?" H 1900 1000 50  0000 L CNN
F 1 "0.47uF" H 1850 800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2088 750 50  0001 C CNN
F 3 "GRM188R71E474KA12D" H 2050 900 50  0001 C CNN
	1    2050 900 
	1    0    0    -1  
$EndComp
Connection ~ 2050 750 
Wire Wire Line
	2050 750  1750 750 
$Comp
L Device:C C?
U 1 1 616B835B
P 2350 900
F 0 "C?" H 2200 1000 50  0000 L CNN
F 1 "0.47uF" H 2150 800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2388 750 50  0001 C CNN
F 3 "GRM188R71E474KA12D" H 2350 900 50  0001 C CNN
	1    2350 900 
	1    0    0    -1  
$EndComp
Connection ~ 2350 750 
Wire Wire Line
	2350 750  2050 750 
$Comp
L Device:C C?
U 1 1 616B8C40
P 2650 900
F 0 "C?" H 2500 1000 50  0000 L CNN
F 1 "0.47uF" H 2450 800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2688 750 50  0001 C CNN
F 3 "GRM188R71E474KA12D" H 2650 900 50  0001 C CNN
	1    2650 900 
	1    0    0    -1  
$EndComp
Connection ~ 2650 750 
Wire Wire Line
	2650 750  2350 750 
Wire Wire Line
	1000 1150 1500 1150
Wire Wire Line
	2650 1150 2650 1050
Connection ~ 1000 1150
Wire Wire Line
	1000 1150 1000 1200
Wire Wire Line
	2350 1050 2350 1150
Connection ~ 2350 1150
Wire Wire Line
	2350 1150 2650 1150
Wire Wire Line
	2050 1050 2050 1150
Connection ~ 2050 1150
Wire Wire Line
	2050 1150 2350 1150
Wire Wire Line
	1750 1050 1750 1150
Connection ~ 1750 1150
Wire Wire Line
	1750 1150 2050 1150
Wire Wire Line
	1500 1050 1500 1150
Connection ~ 1500 1150
Wire Wire Line
	1500 1150 1750 1150
Wire Wire Line
	3200 1700 2700 1700
Text HLabel 2700 1700 0    50   Input ~ 0
DO0_MOSI
Wire Wire Line
	3200 2200 2700 2200
Text HLabel 2700 2200 0    50   Input ~ 0
Clock
$Comp
L Device:R R?
U 1 1 6181A6CA
P 2950 2100
F 0 "R?" V 2900 2250 50  0000 C CNN
F 1 "1K" V 2950 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2880 2100 50  0001 C CNN
F 3 "~" H 2950 2100 50  0001 C CNN
F 4 "0402" V 2950 2100 50  0001 C CNN "Physical Size"
	1    2950 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2100 3200 2100
Wire Wire Line
	2800 2100 2700 2100
Text GLabel 2700 2100 0    50   Output ~ 0
3V3
Wire Wire Line
	2000 2350 2000 2250
Text GLabel 2000 2250 1    50   Output ~ 0
3V3
$Comp
L Device:R R?
U 1 1 6184BE91
P 2000 2500
F 0 "R?" H 2100 2500 50  0000 C CNN
F 1 "1K" H 1900 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1930 2500 50  0001 C CNN
F 3 "~" H 2000 2500 50  0001 C CNN
F 4 "0402" V 2000 2500 50  0001 C CNN "Physical Size"
	1    2000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2700 2000 2650
Wire Wire Line
	2000 2700 1900 2700
Text HLabel 1900 2700 0    50   Input ~ 0
~CE
Connection ~ 2000 2700
Wire Wire Line
	3200 1800 2700 1800
Text HLabel 2700 1800 0    50   Input ~ 0
DO1_DIN
Wire Wire Line
	3200 1900 2700 1900
Wire Wire Line
	3200 2000 2700 2000
Text HLabel 2700 1900 0    50   Input ~ 0
DO2
Text HLabel 2700 2000 0    50   Input ~ 0
DO3
Wire Wire Line
	2000 2700 3200 2700
$EndSCHEMATC
