EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L IS25LP032D-JBLE:IS25LP032D-JBLE IC?
U 1 1 615B2EF2
P 8300 2450
F 0 "IC?" H 8300 2750 50  0000 C CNN
F 1 "IS25LP032D-JBLE" H 8300 2050 50  0000 C CNN
F 2 "SOIC127P790X216-8N" H 10350 2550 50  0001 L CNN
F 3 "http://www.issi.com/WW/pdf/25LP-WP032D.pdf" H 10350 2450 50  0001 L CNN
F 4 "INTEGRATED SILICON SOLUTION (ISSI) - IS25LP032D-JBLE - NOR FLASH MEMORY 32MBIT, 133MHZ, SOIC-8" H 10350 2350 50  0001 L CNN "Description"
F 5 "2.16" H 10350 2250 50  0001 L CNN "Height"
F 6 "Integrated Silicon Solution Inc." H 10350 2150 50  0001 L CNN "Manufacturer_Name"
F 7 "IS25LP032D-JBLE" H 10350 2050 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "870-IS25LP032D-JBLE" H 10350 1950 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/ISSI/IS25LP032D-JBLE?qs=DXv0QSHKF4z3SdPPZ2kyPw%3D%3D" H 10350 1850 50  0001 L CNN "Mouser Price/Stock"
F 10 "IS25LP032D-JBLE" H 10350 1750 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/is25lp032d-jble/integrated-silicon-solution-inc" H 10350 1650 50  0001 L CNN "Arrow Price/Stock"
	1    8300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2300 9050 2150
Text GLabel 9050 2150 1    50   Output ~ 0
3V3
$Comp
L power:GND #PWR?
U 1 1 615C3499
P 9150 2800
F 0 "#PWR?" H 9150 2550 50  0001 C CNN
F 1 "GND" H 9155 2627 50  0000 C CNN
F 2 "" H 9150 2800 50  0001 C CNN
F 3 "" H 9150 2800 50  0001 C CNN
	1    9150 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9150 2800 9150 2700
Wire Wire Line
	9150 2700 9050 2700
Wire Wire Line
	7550 2300 7500 2300
$Comp
L Device:R R?
U 1 1 616C0B7A
P 7350 2300
F 0 "R?" V 7300 2450 50  0000 C CNN
F 1 "100" V 7350 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7280 2300 50  0001 C CNN
F 3 "~" H 7350 2300 50  0001 C CNN
F 4 "0402" V 7350 2300 50  0001 C CNN "Physical Size"
	1    7350 2300
	0    -1   1    0   
$EndComp
Wire Wire Line
	7200 2300 7050 2300
Text HLabel 7050 2300 0    50   Input ~ 0
DO0_MOSI
$Comp
L Device:R R?
U 1 1 616D11C7
P 7350 2600
F 0 "R?" V 7300 2750 50  0000 C CNN
F 1 "100" V 7350 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7280 2600 50  0001 C CNN
F 3 "~" H 7350 2600 50  0001 C CNN
F 4 "0402" V 7350 2600 50  0001 C CNN "Physical Size"
	1    7350 2600
	0    -1   1    0   
$EndComp
Wire Wire Line
	7550 2600 7500 2600
Wire Wire Line
	7200 2600 7050 2600
$Comp
L Device:R R?
U 1 1 616D4B7D
P 7350 2500
F 0 "R?" V 7300 2350 50  0000 C CNN
F 1 "100" V 7350 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7280 2500 50  0001 C CNN
F 3 "~" H 7350 2500 50  0001 C CNN
F 4 "0402" V 7350 2500 50  0001 C CNN "Physical Size"
	1    7350 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 616D5380
P 7350 2400
F 0 "R?" V 7300 2250 50  0000 C CNN
F 1 "100" V 7350 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7280 2400 50  0001 C CNN
F 3 "~" H 7350 2400 50  0001 C CNN
F 4 "0402" V 7350 2400 50  0001 C CNN "Physical Size"
	1    7350 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 2400 7550 2400
Wire Wire Line
	7500 2500 7550 2500
Wire Wire Line
	7200 2400 7050 2400
Wire Wire Line
	7200 2500 7050 2500
Text HLabel 7050 2400 0    50   Input ~ 0
DO1_MISO
Text HLabel 7050 2500 0    50   Input ~ 0
DO2
Text HLabel 7050 2600 0    50   Input ~ 0
DO3
Text HLabel 9400 2400 2    50   Input ~ 0
~CE
Wire Wire Line
	9050 2400 9400 2400
Text Label 9100 2500 0    50   ~ 0
Clock
Text HLabel 9400 2500 2    50   Input ~ 0
Clock
Wire Wire Line
	9050 2500 9400 2500
$EndSCHEMATC
