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
Wire Wire Line
	4050 2250 4050 2200
Text GLabel 4050 2100 1    50   Output ~ 0
3V3
$Comp
L Device:C C?
U 1 1 618E8CC6
P 4350 2200
F 0 "C?" V 4098 2200 50  0000 C CNN
F 1 "47uF" V 4189 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 4388 2050 50  0001 C CNN
F 3 "~" H 4350 2200 50  0001 C CNN
F 4 "GRM32ER70J476ME20L" V 4350 2200 50  0001 C CNN "Part Number"
	1    4350 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 2200 4200 2200
Connection ~ 4050 2200
Wire Wire Line
	4050 2200 4050 2100
$Comp
L power:GND #PWR?
U 1 1 618EB86C
P 4600 2300
F 0 "#PWR?" H 4600 2050 50  0001 C CNN
F 1 "GND" H 4605 2127 50  0000 C CNN
F 2 "" H 4600 2300 50  0001 C CNN
F 3 "" H 4600 2300 50  0001 C CNN
	1    4600 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2200 4600 2200
Wire Wire Line
	4600 2200 4600 2300
$Comp
L FPGA_Xilinx_Artix7:XC7A100T-CSG324 U?
U 4 1 618D3242
P 2950 3850
F 0 "U?" H 1671 3903 50  0000 R CNN
F 1 "XC7A100T-CSG324" H 1671 3812 50  0000 R CNN
F 2 "" H 2950 3850 50  0001 C CNN
F 3 "" H 2950 3850 50  0000 C CNN
	4    2950 3850
	1    0    0    -1  
$EndComp
Text GLabel 5000 4450 2    50   Output ~ 0
3V3
Wire Wire Line
	4450 4450 4600 4450
$Comp
L Device:R R?
U 1 1 614D70D1
P 4750 4450
F 0 "R?" V 4650 4450 50  0000 C CNN
F 1 "4.7K" V 4750 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4680 4450 50  0001 C CNN
F 3 "~" H 4750 4450 50  0001 C CNN
F 4 "0402" V 4750 4450 50  0001 C CNN "Phsyical Size"
	1    4750 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 4450 5000 4450
Text Label 4450 4250 0    50   ~ 0
PROGRAM_B
Text Label 4450 4150 0    50   ~ 0
INIT_B
Text Label 4450 4050 0    50   ~ 0
DONE
$Comp
L power:GND #PWR?
U 1 1 6159DBD9
P 4600 5450
F 0 "#PWR?" H 4600 5200 50  0001 C CNN
F 1 "GND" H 4605 5277 50  0000 C CNN
F 2 "" H 4600 5450 50  0001 C CNN
F 3 "" H 4600 5450 50  0001 C CNN
	1    4600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3550 4550 3550
Wire Wire Line
	4450 3850 4550 3850
Text HLabel 4800 3050 2    50   Output ~ 0
TDI
Wire Wire Line
	4800 3050 4450 3050
Text HLabel 4800 3150 2    50   Output ~ 0
TDO
Text HLabel 4800 3250 2    50   Output ~ 0
TMS
Text HLabel 4800 3350 2    50   Output ~ 0
TCK
Wire Wire Line
	4450 3150 4800 3150
Wire Wire Line
	4450 3250 4800 3250
Wire Wire Line
	4450 3350 4800 3350
Wire Wire Line
	4450 5350 4600 5350
Wire Wire Line
	4600 5350 4600 5450
Wire Wire Line
	4600 5250 4600 5350
Connection ~ 4600 5350
Wire Wire Line
	4450 5250 4600 5250
Wire Wire Line
	4450 5050 4600 5050
Wire Wire Line
	4600 5050 4600 5250
Connection ~ 4600 5250
Wire Wire Line
	4450 4950 4600 4950
Wire Wire Line
	4600 4950 4600 5050
Connection ~ 4600 5050
Wire Wire Line
	4450 4750 4600 4750
Wire Wire Line
	4600 4750 4600 4950
Connection ~ 4600 4950
Wire Wire Line
	4450 4650 4600 4650
Wire Wire Line
	4600 4650 4600 4750
Connection ~ 4600 4750
Text Label 6600 4600 2    50   ~ 0
PROGRAM_B
$Comp
L Device:R R?
U 1 1 61567C3E
P 6700 4300
F 0 "R?" H 6770 4346 50  0000 L CNN
F 1 "4.7K" H 6770 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6630 4300 50  0001 C CNN
F 3 "~" H 6700 4300 50  0001 C CNN
F 4 "0402" H 6700 4300 50  0001 C CNN "Physical Size"
	1    6700 4300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 6156C2BD
P 6700 4900
F 0 "SW?" V 6654 5048 50  0000 L CNN
F 1 "SW_Push" V 6745 5048 50  0000 L CNN
F 2 "" H 6700 5100 50  0001 C CNN
F 3 "~" H 6700 5100 50  0001 C CNN
	1    6700 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61577AAB
P 6700 5200
F 0 "#PWR?" H 6700 4950 50  0001 C CNN
F 1 "GND" H 6705 5027 50  0000 C CNN
F 2 "" H 6700 5200 50  0001 C CNN
F 3 "" H 6700 5200 50  0001 C CNN
	1    6700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4700 6700 4600
Text GLabel 6700 4000 1    50   Output ~ 0
3V3
Wire Wire Line
	6600 4600 6700 4600
Wire Wire Line
	6700 4000 6700 4150
Text Label 7150 4600 2    50   ~ 0
INIT_B
Text GLabel 7200 4000 1    50   Output ~ 0
3V3
Wire Wire Line
	7200 4000 7200 4150
Wire Wire Line
	7200 4450 7200 4600
Wire Wire Line
	7200 4600 7150 4600
Text Label 7600 4600 2    50   ~ 0
DONE
$Comp
L Device:R R?
U 1 1 615CD160
P 7700 4300
F 0 "R?" H 7770 4346 50  0000 L CNN
F 1 "220" H 7770 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7630 4300 50  0001 C CNN
F 3 "~" H 7700 4300 50  0001 C CNN
	1    7700 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 615D0604
P 7700 4850
F 0 "R?" H 7770 4896 50  0000 L CNN
F 1 "100" H 7770 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7630 4850 50  0001 C CNN
F 3 "~" H 7700 4850 50  0001 C CNN
F 4 "0402" H 7700 4850 50  0001 C CNN "Physical Size"
	1    7700 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 615D1C40
P 7700 5250
F 0 "D?" V 7739 5132 50  0000 R CNN
F 1 "LED" V 7648 5132 50  0000 R CNN
F 2 "" H 7700 5250 50  0001 C CNN
F 3 "~" H 7700 5250 50  0001 C CNN
	1    7700 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 615D4F6C
P 7700 5550
F 0 "#PWR?" H 7700 5300 50  0001 C CNN
F 1 "GND" H 7705 5377 50  0000 C CNN
F 2 "" H 7700 5550 50  0001 C CNN
F 3 "" H 7700 5550 50  0001 C CNN
	1    7700 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5550 7700 5400
Wire Wire Line
	7700 5100 7700 5000
Wire Wire Line
	7700 4700 7700 4600
Text GLabel 7700 4000 1    50   Output ~ 0
3V3
Wire Wire Line
	7700 4150 7700 4000
Wire Wire Line
	7600 4600 7700 4600
Connection ~ 7700 4600
Wire Wire Line
	7700 4600 7700 4450
$Comp
L Device:R R?
U 1 1 615E6895
P 7200 4300
F 0 "R?" H 7270 4346 50  0000 L CNN
F 1 "4.7K" H 7270 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7130 4300 50  0001 C CNN
F 3 "~" H 7200 4300 50  0001 C CNN
F 4 "0402" H 7200 4300 50  0001 C CNN "Physical Size"
	1    7200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5100 6700 5200
Connection ~ 6700 4600
Wire Wire Line
	6700 4450 6700 4600
Text GLabel 8950 4050 1    50   Output ~ 0
3V3
$Comp
L power:GND #PWR?
U 1 1 6199E4CE
P 8950 4950
F 0 "#PWR?" H 8950 4700 50  0001 C CNN
F 1 "GND" H 8955 4777 50  0000 C CNN
F 2 "" H 8950 4950 50  0001 C CNN
F 3 "" H 8950 4950 50  0001 C CNN
	1    8950 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4050 8950 4150
Wire Wire Line
	8950 4450 8950 4600
Wire Wire Line
	8950 4900 8950 4950
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
$Comp
L Device:R R?
U 1 1 615D12FD
P 9350 4500
F 0 "R?" H 9500 4450 50  0000 C CNN
F 1 "1K" H 9500 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9280 4500 50  0001 C CNN
F 3 "~" H 9350 4500 50  0001 C CNN
F 4 "0402" V 9350 4500 50  0001 C CNN "Physical Size"
	1    9350 4500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 615D1303
P 9350 4950
F 0 "#PWR?" H 9350 4700 50  0001 C CNN
F 1 "GND" H 9355 4777 50  0000 C CNN
F 2 "" H 9350 4950 50  0001 C CNN
F 3 "" H 9350 4950 50  0001 C CNN
	1    9350 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4050 9350 4350
Text GLabel 9700 4050 1    50   Output ~ 0
3V3
$Comp
L Device:R R?
U 1 1 615D2B91
P 9700 4500
F 0 "R?" H 9850 4450 50  0000 C CNN
F 1 "1K" H 9850 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9630 4500 50  0001 C CNN
F 3 "~" H 9700 4500 50  0001 C CNN
F 4 "0402" V 9700 4500 50  0001 C CNN "Physical Size"
	1    9700 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 4050 9700 4350
Wire Wire Line
	9350 4650 9350 4950
Wire Wire Line
	9700 4650 9700 4950
Text Label 4550 3550 0    50   ~ 0
Clock
Wire Wire Line
	8950 4600 8800 4600
Connection ~ 8950 4600
Wire Wire Line
	8950 4600 8950 4700
Text Label 8800 4600 2    50   ~ 0
M2
Text Label 9250 4050 2    50   ~ 0
M1
Wire Wire Line
	9250 4050 9350 4050
Text Label 9600 4950 2    50   ~ 0
M0
Wire Wire Line
	9600 4950 9700 4950
Wire Wire Line
	4450 3750 4550 3750
Wire Wire Line
	4450 3650 4550 3650
Text Label 4550 3850 0    50   ~ 0
M2
Text Label 4550 3750 0    50   ~ 0
M1
Text Label 4550 3650 0    50   ~ 0
M0
Wire Wire Line
	7550 2300 7500 2300
$Comp
L Device:R R?
U 1 1 61992F4C
P 8950 4300
F 0 "R?" H 9100 4250 50  0000 C CNN
F 1 "1K" H 9100 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8880 4300 50  0001 C CNN
F 3 "~" H 8950 4300 50  0001 C CNN
F 4 "0402" V 8950 4300 50  0001 C CNN "Physical Size"
	1    8950 4300
	-1   0    0    1   
$EndComp
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
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 6176EA99
P 8950 4800
F 0 "JP?" V 8904 4875 50  0000 L CNN
F 1 "Jumper" V 8995 4875 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8950 4800 50  0001 C CNN
F 3 "~" H 8950 4800 50  0001 C CNN
	1    8950 4800
	0    1    1    0   
$EndComp
Text HLabel 9400 2500 2    50   Input ~ 0
Clock
Wire Wire Line
	9050 2500 9400 2500
Text Notes 5450 7400 0    50   ~ 0
LED, Resistors and FPGA
Text Notes 5050 7500 0    50   ~ 0
Switch Button has no footprint, part number
$EndSCHEMATC
