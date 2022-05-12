EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L N25Q032A13ESC40F:N25Q032A13ESC40F IC?
U 1 1 619D2169
P 8800 1950
F 0 "IC?" H 8750 2365 50  0000 C CNN
F 1 "N25Q032A13ESC40F" H 8750 2274 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 10350 2050 50  0001 L CNN
F 3 "https://media-www.micron.com/-/media/client/global/documents/products/data-sheet/nor-flash/serial-nor/n25q/n25q_32mb_3v_65nm.pdf?rev=27fc6016fc5249adb4bb8f221e72b395" H 10350 1950 50  0001 L CNN
F 4 "FLASH - NOR Memory IC 32Mb (8M x 4) SPI 108MHz  8-SO" H 10350 1850 50  0001 L CNN "Description"
F 5 "1.75" H 10350 1750 50  0001 L CNN "Height"
F 6 "Alliance Memory" H 10350 1650 50  0001 L CNN "Manufacturer_Name"
F 7 "N25Q032A13ESC40F" H 10350 1550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "913-N25Q032A13ESC40F" H 10350 1450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Alliance-Memory/N25Q032A13ESC40F?qs=W%2FMpXkg%252BdQ70%2FmLJsMq3Ww%3D%3D" H 10350 1350 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 10350 1250 50  0001 L CNN "Arrow Part Number"
F 11 "" H 10350 1150 50  0001 L CNN "Arrow Price/Stock"
	1    8800 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 619E1A4D
P 4800 4800
F 0 "R?" H 4650 4650 50  0000 C CNN
F 1 "10K" H 4650 4900 50  0000 C CNN
F 2 "" V 4730 4800 50  0001 C CNN
F 3 "~" H 4800 4800 50  0001 C CNN
	1    4800 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 619F47BF
P 4300 4800
F 0 "R?" H 4150 4900 50  0000 C CNN
F 1 "R" H 4200 4650 50  0000 C CNN
F 2 "" V 4230 4800 50  0001 C CNN
F 3 "~" H 4300 4800 50  0001 C CNN
	1    4300 4800
	-1   0    0    1   
$EndComp
Text GLabel 4300 4500 1    50   Output ~ 0
3V3
Text GLabel 4800 4500 1    50   Output ~ 0
3V3
$Comp
L ICE40UP5K-UWG30ITR1K:ICE40UP5K-UWG30ITR1K IC?
U 1 1 61AF95E0
P 3100 2100
F 0 "IC?" H 4200 2365 50  0000 C CNN
F 1 "ICE40UP5K-UWG30ITR1K" H 4200 2274 50  0000 C CNN
F 2 "BGA30C40P5X6_211X254X60" H 5150 2200 50  0001 L CNN
F 3 "http://www.latticesemi.com/-/media/LatticeSemi/Documents/DataSheets/iCE/FPGA-DS-02008-1-6-iCE40-UltraPlus-Family-Data-Sheet.ashx?document_id=51968" H 5150 2100 50  0001 L CNN
F 4 "FPGA - Field Programmable Gate Array iCE40-UltraPlus, 5280 LUTs, 1.2V" H 5150 2000 50  0001 L CNN "Description"
F 5 "0.6" H 5150 1900 50  0001 L CNN "Height"
F 6 "Lattice Semiconductor" H 5150 1800 50  0001 L CNN "Manufacturer_Name"
F 7 "ICE40UP5K-UWG30ITR1K" H 5150 1700 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "842-40UP5KUWG30ITR1K" H 5150 1600 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Lattice/ICE40UP5K-UWG30ITR1K?qs=Rp3RbKSfAt0rwndd2oX17g%3D%3D" H 5150 1500 50  0001 L CNN "Mouser Price/Stock"
F 10 "ICE40UP5K-UWG30ITR1K" H 5150 1400 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ice40up5k-uwg30itr1k/lattice-semiconductor?region=nac" H 5150 1300 50  0001 L CNN "Arrow Price/Stock"
	1    3100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2300 5500 2300
Wire Wire Line
	5300 3300 5500 3300
Text Notes 1450 4550 0    50   ~ 0
Need an Oscillator?
Text HLabel 5500 2300 2    50   Input ~ 0
iCE_CDONE
Text HLabel 4200 5100 0    50   Input ~ 0
iCE_CDONE
Wire Wire Line
	4200 5100 4300 5100
Wire Wire Line
	4300 5100 4300 4950
Wire Wire Line
	4300 4650 4300 4500
Connection ~ 4300 5100
$Comp
L power:GND #PWR?
U 1 1 61B4CBD5
P 4300 5750
F 0 "#PWR?" H 4300 5500 50  0001 C CNN
F 1 "GND" H 4305 5577 50  0000 C CNN
F 2 "" H 4300 5750 50  0001 C CNN
F 3 "" H 4300 5750 50  0001 C CNN
	1    4300 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 61B4F285
P 4300 5450
F 0 "D?" V 4339 5332 50  0000 R CNN
F 1 "LED" V 4248 5332 50  0000 R CNN
F 2 "" H 4300 5450 50  0001 C CNN
F 3 "~" H 4300 5450 50  0001 C CNN
	1    4300 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 5100 4300 5300
Wire Wire Line
	4300 5600 4300 5750
Text HLabel 5500 3300 2    50   Input ~ 0
iCE_CRESET_B
Text HLabel 4950 5100 2    50   Input ~ 0
iCE_CRESET_B
$Comp
L power:GND #PWR?
U 1 1 61B5794F
P 4800 5750
F 0 "#PWR?" H 4800 5500 50  0001 C CNN
F 1 "GND" H 4805 5577 50  0000 C CNN
F 2 "" H 4800 5750 50  0001 C CNN
F 3 "" H 4800 5750 50  0001 C CNN
	1    4800 5750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 61B58ACB
P 4800 5400
F 0 "SW?" V 4754 5548 50  0000 L CNN
F 1 "SW_Push" V 4845 5548 50  0001 L CNN
F 2 "" H 4800 5600 50  0001 C CNN
F 3 "~" H 4800 5600 50  0001 C CNN
	1    4800 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 4950 4800 5100
Wire Wire Line
	4800 5600 4800 5750
Wire Wire Line
	4800 5100 4950 5100
Connection ~ 4800 5100
Wire Wire Line
	4800 5100 4800 5200
Wire Wire Line
	4800 4650 4800 4500
Wire Wire Line
	3100 3100 2900 3100
Wire Wire Line
	5300 3100 5500 3100
Wire Wire Line
	5500 2600 5300 2600
Wire Wire Line
	5300 2100 5500 2100
Wire Wire Line
	9550 1800 9650 1800
Text GLabel 9650 1100 1    50   Output ~ 0
3V3
Wire Wire Line
	7950 2100 7650 2100
Wire Wire Line
	7650 2100 7650 2300
$Comp
L power:GND #PWR?
U 1 1 61B70AB8
P 7650 2300
F 0 "#PWR?" H 7650 2050 50  0001 C CNN
F 1 "GND" H 7655 2127 50  0000 C CNN
F 2 "" H 7650 2300 50  0001 C CNN
F 3 "" H 7650 2300 50  0001 C CNN
	1    7650 2300
	1    0    0    -1  
$EndComp
Text HLabel 5500 2100 2    50   Input ~ 0
iCE_SCK
Text HLabel 7200 1800 0    50   Input ~ 0
iCE_SS_B
Text Notes 3900 4850 0    50   ~ 0
Calculate resistance
Text GLabel 5500 2200 2    50   Output ~ 0
3V3
Wire Wire Line
	5300 2200 5500 2200
Wire Wire Line
	7950 2000 7700 2000
$Comp
L Device:R R?
U 1 1 61BA4355
P 7550 2000
F 0 "R?" V 7600 1800 50  0000 C CNN
F 1 "10K" V 7550 2000 50  0000 C CNN
F 2 "" V 7480 2000 50  0001 C CNN
F 3 "~" H 7550 2000 50  0001 C CNN
	1    7550 2000
	0    -1   -1   0   
$EndComp
Text HLabel 10150 2000 2    50   Input ~ 0
iCE_SCK
Wire Wire Line
	9850 1900 9850 1800
$Comp
L Device:R R?
U 1 1 61B89E4A
P 9850 1650
F 0 "R?" H 9950 1500 50  0000 C CNN
F 1 "10K" H 9950 1850 50  0000 C CNN
F 2 "" V 9780 1650 50  0001 C CNN
F 3 "~" H 9850 1650 50  0001 C CNN
	1    9850 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 2100 10150 2100
Connection ~ 9650 1350
Wire Wire Line
	9650 1350 9650 1800
Wire Wire Line
	9650 1100 9650 1200
Wire Wire Line
	10050 2000 10050 1800
$Comp
L Device:R R?
U 1 1 61B83CF5
P 10050 1650
F 0 "R?" H 9950 1500 50  0000 C CNN
F 1 "10K" H 9950 1850 50  0000 C CNN
F 2 "" V 9980 1650 50  0001 C CNN
F 3 "~" H 10050 1650 50  0001 C CNN
	1    10050 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	9850 1500 9850 1350
Wire Wire Line
	10050 1500 10050 1350
Connection ~ 10050 2000
Wire Wire Line
	10050 2000 10150 2000
Wire Wire Line
	9550 2000 10050 2000
Connection ~ 9850 1350
Wire Wire Line
	9650 1350 9850 1350
Wire Wire Line
	9850 1350 10050 1350
Wire Wire Line
	9550 1900 9850 1900
Text GLabel 7200 2000 0    50   Output ~ 0
3V3
Text HLabel 10150 2100 2    50   Input ~ 0
FLASH_MOSI
Text HLabel 7200 1900 0    50   Input ~ 0
FLASH_MISO
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 61BEFB73
P 7550 1800
F 0 "JP?" H 7550 1921 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7550 1921 50  0001 C CNN
F 2 "" H 7550 1800 50  0001 C CNN
F 3 "~" H 7550 1800 50  0001 C CNN
	1    7550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1800 7800 1800
Wire Wire Line
	7450 1800 7200 1800
$Comp
L Device:R R?
U 1 1 61BF5F19
P 7800 1450
F 0 "R?" H 7700 1300 50  0000 C CNN
F 1 "10K" H 7700 1650 50  0000 C CNN
F 2 "" V 7730 1450 50  0001 C CNN
F 3 "~" H 7800 1450 50  0001 C CNN
	1    7800 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 1800 7800 1600
Connection ~ 7800 1800
Wire Wire Line
	7800 1800 7950 1800
Text GLabel 7800 1100 1    50   Output ~ 0
3V3
Text Label 9450 3050 0    50   ~ 0
iCE_SO
Text HLabel 9450 3150 2    50   Input ~ 0
FLASH_MISO
Text HLabel 8200 3050 0    50   Input ~ 0
FLASH_MOSI
Text Label 5500 3100 0    50   ~ 0
iCE_SO
Text Label 8200 3150 2    50   ~ 0
iCE_SI
Text Label 5500 2600 0    50   ~ 0
iCE_SI
Wire Wire Line
	7200 1900 7950 1900
Wire Wire Line
	7200 2000 7400 2000
Text Notes 8200 3500 0    47   ~ 0
For Flash Programming (Master Configuration)
Text Notes 8200 3750 0    50   ~ 0
For iCE Programming (Slave Configuration)
Text Notes 7900 3750 0    118  ~ 0
||
Text Notes 7850 3600 0    276  ~ 0
=
Text Notes 8050 2450 0    50   ~ 0
Note: Connect JP to program Flash
$Comp
L Device:C C?
U 1 1 61C4DDF1
P 10050 1200
F 0 "C?" V 9798 1200 50  0000 C CNN
F 1 "100nF" V 9889 1200 50  0000 C CNN
F 2 "" H 10088 1050 50  0001 C CNN
F 3 "~" H 10050 1200 50  0001 C CNN
	1    10050 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 1200 9900 1200
Connection ~ 9650 1200
Wire Wire Line
	9650 1200 9650 1350
Wire Wire Line
	10200 1200 10400 1200
$Comp
L power:GND #PWR?
U 1 1 61C5088D
P 10400 1200
F 0 "#PWR?" H 10400 950 50  0001 C CNN
F 1 "GND" V 10405 1072 50  0000 R CNN
F 2 "" H 10400 1200 50  0001 C CNN
F 3 "" H 10400 1200 50  0001 C CNN
	1    10400 1200
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J?
U 1 1 61B166EB
P 8800 3050
F 0 "J?" H 8850 3175 50  0000 C CNN
F 1 "Conn_02x02_Top_Bottom" H 8850 3176 50  0001 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_2x02_P1.00mm_Vertical" H 8800 3050 50  0001 C CNN
F 3 "~" H 8800 3050 50  0001 C CNN
	1    8800 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3150 8600 3150
Wire Wire Line
	8200 3050 8600 3050
Wire Wire Line
	9100 3050 9450 3050
Wire Wire Line
	9100 3150 9450 3150
$Comp
L power:GND #PWR?
U 1 1 61B19AD7
P 5450 2700
F 0 "#PWR?" H 5450 2450 50  0001 C CNN
F 1 "GND" V 5455 2527 50  0000 C CNN
F 2 "" H 5450 2700 50  0001 C CNN
F 3 "" H 5450 2700 50  0001 C CNN
	1    5450 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61B1A37C
P 2950 2900
F 0 "#PWR?" H 2950 2650 50  0001 C CNN
F 1 "GND" V 2955 2727 50  0000 C CNN
F 2 "" H 2950 2900 50  0001 C CNN
F 3 "" H 2950 2900 50  0001 C CNN
	1    2950 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 2900 3100 2900
Wire Wire Line
	5300 2700 5450 2700
Text GLabel 2900 3200 0    50   Output ~ 0
1V2
Wire Wire Line
	2900 3200 3100 3200
Wire Wire Line
	3100 2300 2900 2300
Text GLabel 2900 2300 0    50   Output ~ 0
3V3
Text GLabel 2900 3400 0    50   Output ~ 0
3V3
Wire Wire Line
	3100 3400 2900 3400
Text GLabel 5500 2400 2    50   Output ~ 0
3V3
Wire Wire Line
	5500 2400 5300 2400
Text GLabel 2900 2700 0    50   Output ~ 0
1V2
Text HLabel 2900 3100 0    50   Input ~ 0
iCE_SS_B
Wire Wire Line
	2900 2700 3100 2700
Text GLabel 2950 900  1    50   Output ~ 0
3V3
$Comp
L Device:C C?
U 1 1 61B976D0
P 3100 1150
F 0 "C?" V 2848 1150 50  0000 C CNN
F 1 "100nF" V 2939 1150 50  0000 C CNN
F 2 "" H 3138 1000 50  0001 C CNN
F 3 "~" H 3100 1150 50  0001 C CNN
	1    3100 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 61B97E4F
P 3500 1150
F 0 "C?" V 3248 1150 50  0000 C CNN
F 1 "100nF" V 3339 1150 50  0000 C CNN
F 2 "" H 3538 1000 50  0001 C CNN
F 3 "~" H 3500 1150 50  0001 C CNN
	1    3500 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 61B981BF
P 3900 1150
F 0 "C?" V 3648 1150 50  0000 C CNN
F 1 "100nF" V 3739 1150 50  0000 C CNN
F 2 "" H 3938 1000 50  0001 C CNN
F 3 "~" H 3900 1150 50  0001 C CNN
	1    3900 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 1100 7800 1300
$EndSCHEMATC
