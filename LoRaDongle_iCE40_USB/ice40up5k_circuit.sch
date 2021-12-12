EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
P 8800 3250
F 0 "IC?" H 8750 3665 50  0000 C CNN
F 1 "N25Q032A13ESC40F" H 8750 3574 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 10350 3350 50  0001 L CNN
F 3 "https://media-www.micron.com/-/media/client/global/documents/products/data-sheet/nor-flash/serial-nor/n25q/n25q_32mb_3v_65nm.pdf?rev=27fc6016fc5249adb4bb8f221e72b395" H 10350 3250 50  0001 L CNN
F 4 "FLASH - NOR Memory IC 32Mb (8M x 4) SPI 108MHz  8-SO" H 10350 3150 50  0001 L CNN "Description"
F 5 "1.75" H 10350 3050 50  0001 L CNN "Height"
F 6 "Alliance Memory" H 10350 2950 50  0001 L CNN "Manufacturer_Name"
F 7 "N25Q032A13ESC40F" H 10350 2850 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "913-N25Q032A13ESC40F" H 10350 2750 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Alliance-Memory/N25Q032A13ESC40F?qs=W%2FMpXkg%252BdQ70%2FmLJsMq3Ww%3D%3D" H 10350 2650 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 10350 2550 50  0001 L CNN "Arrow Part Number"
F 11 "" H 10350 2450 50  0001 L CNN "Arrow Price/Stock"
	1    8800 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 619E1A4D
P 5350 5900
F 0 "R?" H 5200 5750 50  0000 C CNN
F 1 "10K" H 5200 6000 50  0000 C CNN
F 2 "" V 5280 5900 50  0001 C CNN
F 3 "~" H 5350 5900 50  0001 C CNN
	1    5350 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 619F47BF
P 4850 5900
F 0 "R?" H 4700 6000 50  0000 C CNN
F 1 "R" H 4750 5750 50  0000 C CNN
F 2 "" V 4780 5900 50  0001 C CNN
F 3 "~" H 4850 5900 50  0001 C CNN
	1    4850 5900
	-1   0    0    1   
$EndComp
Text GLabel 4850 5600 1    50   Output ~ 0
3V3
Text GLabel 5350 5600 1    50   Output ~ 0
3V3
Wire Wire Line
	4850 3150 5300 3150
Wire Wire Line
	4850 4150 5300 4150
Text HLabel 5300 3150 2    50   Input ~ 0
iCE_CDONE
Text HLabel 4750 6200 0    50   Input ~ 0
iCE_CDONE
Wire Wire Line
	4750 6200 4850 6200
Wire Wire Line
	4850 6200 4850 6050
Wire Wire Line
	4850 5750 4850 5600
Connection ~ 4850 6200
$Comp
L power:GND #PWR?
U 1 1 61B4CBD5
P 4850 6850
F 0 "#PWR?" H 4850 6600 50  0001 C CNN
F 1 "GND" H 4855 6677 50  0000 C CNN
F 2 "" H 4850 6850 50  0001 C CNN
F 3 "" H 4850 6850 50  0001 C CNN
	1    4850 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 61B4F285
P 4850 6550
F 0 "D?" V 4889 6432 50  0000 R CNN
F 1 "LED" V 4798 6432 50  0000 R CNN
F 2 "" H 4850 6550 50  0001 C CNN
F 3 "~" H 4850 6550 50  0001 C CNN
	1    4850 6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 6200 4850 6400
Wire Wire Line
	4850 6700 4850 6850
Text HLabel 5300 4150 2    50   Input ~ 0
iCE_CRESET_B
Text HLabel 5500 6200 2    50   Input ~ 0
iCE_CRESET_B
$Comp
L power:GND #PWR?
U 1 1 61B5794F
P 5350 6850
F 0 "#PWR?" H 5350 6600 50  0001 C CNN
F 1 "GND" H 5355 6677 50  0000 C CNN
F 2 "" H 5350 6850 50  0001 C CNN
F 3 "" H 5350 6850 50  0001 C CNN
	1    5350 6850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 61B58ACB
P 5350 6500
F 0 "SW?" V 5304 6648 50  0000 L CNN
F 1 "SW_Push" V 5395 6648 50  0001 L CNN
F 2 "" H 5350 6700 50  0001 C CNN
F 3 "~" H 5350 6700 50  0001 C CNN
	1    5350 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 6050 5350 6200
Wire Wire Line
	5350 6700 5350 6850
Wire Wire Line
	5350 6200 5500 6200
Connection ~ 5350 6200
Wire Wire Line
	5350 6200 5350 6300
Wire Wire Line
	5350 5750 5350 5600
Wire Wire Line
	4850 3950 5050 3950
Wire Wire Line
	5050 3450 4850 3450
Wire Wire Line
	4850 2950 5200 2950
Wire Wire Line
	9550 3100 9650 3100
Text GLabel 9650 2400 1    50   Output ~ 0
3V3
Wire Wire Line
	7950 3400 7650 3400
Wire Wire Line
	7650 3400 7650 3600
$Comp
L power:GND #PWR?
U 1 1 61B70AB8
P 7650 3600
F 0 "#PWR?" H 7650 3350 50  0001 C CNN
F 1 "GND" H 7655 3427 50  0000 C CNN
F 2 "" H 7650 3600 50  0001 C CNN
F 3 "" H 7650 3600 50  0001 C CNN
	1    7650 3600
	1    0    0    -1  
$EndComp
Text HLabel 5300 2950 2    50   Input ~ 0
iCE_SCK
Text HLabel 7200 3100 0    50   Input ~ 0
iCE_SS_B
Text Notes 4450 5950 0    50   ~ 0
Calculate resistance
Text GLabel 5300 3050 2    50   Output ~ 0
3V3
Wire Wire Line
	4850 3050 5300 3050
Wire Wire Line
	7950 3300 7700 3300
$Comp
L Device:R R?
U 1 1 61BA4355
P 7550 3300
F 0 "R?" V 7600 3100 50  0000 C CNN
F 1 "10K" V 7550 3300 50  0000 C CNN
F 2 "" V 7480 3300 50  0001 C CNN
F 3 "~" H 7550 3300 50  0001 C CNN
	1    7550 3300
	0    -1   -1   0   
$EndComp
Text HLabel 10150 3300 2    50   Input ~ 0
iCE_SCK
Wire Wire Line
	9850 3200 9850 3100
$Comp
L Device:R R?
U 1 1 61B89E4A
P 9850 2950
F 0 "R?" H 9950 2800 50  0000 C CNN
F 1 "10K" H 9950 3150 50  0000 C CNN
F 2 "" V 9780 2950 50  0001 C CNN
F 3 "~" H 9850 2950 50  0001 C CNN
	1    9850 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 3400 10150 3400
Connection ~ 9650 2650
Wire Wire Line
	9650 2650 9650 3100
Wire Wire Line
	9650 2400 9650 2500
Wire Wire Line
	10050 3300 10050 3100
$Comp
L Device:R R?
U 1 1 61B83CF5
P 10050 2950
F 0 "R?" H 9950 2800 50  0000 C CNN
F 1 "10K" H 9950 3150 50  0000 C CNN
F 2 "" V 9980 2950 50  0001 C CNN
F 3 "~" H 10050 2950 50  0001 C CNN
	1    10050 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	9850 2800 9850 2650
Wire Wire Line
	10050 2800 10050 2650
Connection ~ 10050 3300
Wire Wire Line
	10050 3300 10150 3300
Wire Wire Line
	9550 3300 10050 3300
Connection ~ 9850 2650
Wire Wire Line
	9650 2650 9850 2650
Wire Wire Line
	9850 2650 10050 2650
Wire Wire Line
	9550 3200 9850 3200
Text GLabel 7200 3300 0    50   Output ~ 0
3V3
Text HLabel 10150 3400 2    50   Input ~ 0
FLASH_MOSI
Text HLabel 7200 3200 0    50   Input ~ 0
FLASH_MISO
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 61BEFB73
P 7550 3100
F 0 "JP?" H 7550 3221 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7550 3221 50  0001 C CNN
F 2 "" H 7550 3100 50  0001 C CNN
F 3 "~" H 7550 3100 50  0001 C CNN
	1    7550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3100 7800 3100
Wire Wire Line
	7450 3100 7200 3100
$Comp
L Device:R R?
U 1 1 61BF5F19
P 7800 2750
F 0 "R?" H 7700 2600 50  0000 C CNN
F 1 "10K" H 7700 2950 50  0000 C CNN
F 2 "" V 7730 2750 50  0001 C CNN
F 3 "~" H 7800 2750 50  0001 C CNN
	1    7800 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 3100 7800 2900
Connection ~ 7800 3100
Wire Wire Line
	7800 3100 7950 3100
Text GLabel 7800 2400 1    50   Output ~ 0
3V3
Text Label 9300 4600 0    50   ~ 0
iCE_SO
Text HLabel 9300 4700 2    50   Input ~ 0
FLASH_MISO
Text HLabel 8050 4600 0    50   Input ~ 0
FLASH_MOSI
Text Label 5050 3950 0    50   ~ 0
iCE_SO
Text Label 8050 4700 2    50   ~ 0
iCE_SI
Text Label 5050 3450 0    50   ~ 0
iCE_SI
Wire Wire Line
	7200 3200 7950 3200
Wire Wire Line
	7200 3300 7400 3300
Text Notes 8050 5050 0    47   ~ 0
For Flash Programming (Master Configuration)
Text Notes 8050 5300 0    50   ~ 0
For iCE Programming (Slave Configuration)
Text Notes 7750 5300 0    118  ~ 0
||
Text Notes 7700 5150 0    276  ~ 0
=
Text Notes 8050 3750 0    50   ~ 0
Note: Connect JP to program Flash
$Comp
L Device:C C?
U 1 1 61C4DDF1
P 10050 2500
F 0 "C?" V 9798 2500 50  0000 C CNN
F 1 "100nF" V 9889 2500 50  0000 C CNN
F 2 "" H 10088 2350 50  0001 C CNN
F 3 "~" H 10050 2500 50  0001 C CNN
	1    10050 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 2500 9900 2500
Connection ~ 9650 2500
Wire Wire Line
	9650 2500 9650 2650
Wire Wire Line
	10200 2500 10400 2500
$Comp
L power:GND #PWR?
U 1 1 61C5088D
P 10400 2500
F 0 "#PWR?" H 10400 2250 50  0001 C CNN
F 1 "GND" V 10405 2372 50  0000 R CNN
F 2 "" H 10400 2500 50  0001 C CNN
F 3 "" H 10400 2500 50  0001 C CNN
	1    10400 2500
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J?
U 1 1 61B166EB
P 8650 4600
F 0 "J?" H 8700 4725 50  0000 C CNN
F 1 "Conn_02x02_Top_Bottom" H 8700 4726 50  0001 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_2x02_P1.00mm_Vertical" H 8650 4600 50  0001 C CNN
F 3 "~" H 8650 4600 50  0001 C CNN
	1    8650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4600 8450 4600
Wire Wire Line
	8950 4700 9300 4700
$Comp
L power:GND #PWR?
U 1 1 61B19AD7
P 5250 3550
F 0 "#PWR?" H 5250 3300 50  0001 C CNN
F 1 "GND" V 5255 3377 50  0000 C CNN
F 2 "" H 5250 3550 50  0001 C CNN
F 3 "" H 5250 3550 50  0001 C CNN
	1    5250 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61B1A37C
P 2100 3750
F 0 "#PWR?" H 2100 3500 50  0001 C CNN
F 1 "GND" V 2105 3577 50  0000 C CNN
F 2 "" H 2100 3750 50  0001 C CNN
F 3 "" H 2100 3750 50  0001 C CNN
	1    2100 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 3750 2650 3750
Wire Wire Line
	4850 3550 5250 3550
Text GLabel 2050 4050 0    50   Output ~ 0
1V2
Wire Wire Line
	2050 4050 2650 4050
Text GLabel 2050 4250 0    50   Output ~ 0
3V3
Wire Wire Line
	2650 4250 2050 4250
Text GLabel 5300 3250 2    50   Output ~ 0
3V3
Wire Wire Line
	5300 3250 4850 3250
Text GLabel 2050 3550 0    50   Output ~ 0
1V2
Text HLabel 2050 3950 0    50   Input ~ 0
iCE_SS_B
Wire Wire Line
	2050 3550 2650 3550
Text GLabel 3350 900  1    50   Output ~ 0
3V3
Wire Wire Line
	7800 2400 7800 2600
$Comp
L Device:C C?
U 1 1 61B976D0
P 3350 1250
F 0 "C?" H 3250 1150 50  0000 C CNN
F 1 "100nF" H 3200 1350 50  0000 C CNN
F 2 "" H 3388 1100 50  0001 C CNN
F 3 "~" H 3350 1250 50  0001 C CNN
	1    3350 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 3150 2050 3150
Text GLabel 2050 3150 0    50   Output ~ 0
3V3
$Comp
L Device:C C?
U 1 1 61B48F94
P 3700 1250
F 0 "C?" H 3600 1150 50  0000 C CNN
F 1 "100nF" H 3550 1350 50  0000 C CNN
F 2 "" H 3738 1100 50  0001 C CNN
F 3 "~" H 3700 1250 50  0001 C CNN
	1    3700 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 61B492A8
P 4050 1250
F 0 "C?" H 3950 1150 50  0000 C CNN
F 1 "100nF" H 3900 1350 50  0000 C CNN
F 2 "" H 4088 1100 50  0001 C CNN
F 3 "~" H 4050 1250 50  0001 C CNN
	1    4050 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 61B49688
P 4400 1250
F 0 "C?" H 4300 1150 50  0000 C CNN
F 1 "100nF" H 4250 1350 50  0000 C CNN
F 2 "" H 4438 1100 50  0001 C CNN
F 3 "~" H 4400 1250 50  0001 C CNN
	1    4400 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 1050 4400 1100
Wire Wire Line
	3350 1500 3350 1400
Wire Wire Line
	3350 1100 3350 1050
Connection ~ 3350 1050
Wire Wire Line
	3350 1050 3700 1050
Wire Wire Line
	3700 1100 3700 1050
Connection ~ 3700 1050
Wire Wire Line
	3700 1050 4050 1050
Wire Wire Line
	3700 1400 3700 1500
Connection ~ 3700 1500
Wire Wire Line
	3700 1500 3350 1500
Wire Wire Line
	4050 1400 4050 1500
Wire Wire Line
	3700 1500 4050 1500
Connection ~ 4050 1500
Wire Wire Line
	4050 1500 4400 1500
Wire Wire Line
	4050 1100 4050 1050
Connection ~ 4050 1050
Wire Wire Line
	4050 1050 4400 1050
Wire Wire Line
	4400 1400 4400 1500
Connection ~ 4400 1500
Wire Wire Line
	4400 1500 4400 1650
Wire Wire Line
	3350 900  3350 1050
Text GLabel 6150 950  1    50   Output ~ 0
1V2
$Comp
L power:GND #PWR?
U 1 1 61B49BA5
P 4400 1650
F 0 "#PWR?" H 4400 1400 50  0001 C CNN
F 1 "GND" H 4405 1477 50  0000 C CNN
F 2 "" H 4400 1650 50  0001 C CNN
F 3 "" H 4400 1650 50  0001 C CNN
	1    4400 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61B673D7
P 7150 1600
F 0 "#PWR?" H 7150 1350 50  0001 C CNN
F 1 "GND" H 7155 1427 50  0000 C CNN
F 2 "" H 7150 1600 50  0001 C CNN
F 3 "" H 7150 1600 50  0001 C CNN
	1    7150 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61B67867
P 6500 1300
F 0 "C?" H 6400 1200 50  0000 C CNN
F 1 "100nF" H 6350 1400 50  0000 C CNN
F 2 "" H 6538 1150 50  0001 C CNN
F 3 "~" H 6500 1300 50  0001 C CNN
	1    6500 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 61B67CCC
P 6850 1300
F 0 "C?" H 6750 1200 50  0000 C CNN
F 1 "100nF" H 6700 1400 50  0000 C CNN
F 2 "" H 6888 1150 50  0001 C CNN
F 3 "~" H 6850 1300 50  0001 C CNN
	1    6850 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 61B680B9
P 7150 1300
F 0 "C?" H 7050 1200 50  0000 C CNN
F 1 "100nF" H 7000 1400 50  0000 C CNN
F 2 "" H 7188 1150 50  0001 C CNN
F 3 "~" H 7150 1300 50  0001 C CNN
	1    7150 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 61B68545
P 6150 1300
F 0 "C?" H 6050 1200 50  0000 C CNN
F 1 "1uF" H 6000 1400 50  0000 C CNN
F 2 "" H 6188 1150 50  0001 C CNN
F 3 "~" H 6150 1300 50  0001 C CNN
	1    6150 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 950  6150 1050
Wire Wire Line
	7150 1600 7150 1550
Wire Wire Line
	7150 1150 7150 1050
Wire Wire Line
	7150 1050 6850 1050
Connection ~ 6150 1050
Wire Wire Line
	6150 1050 6150 1150
Wire Wire Line
	6500 1150 6500 1050
Connection ~ 6500 1050
Wire Wire Line
	6500 1050 6150 1050
Wire Wire Line
	6850 1150 6850 1050
Connection ~ 6850 1050
Wire Wire Line
	6850 1050 6500 1050
Wire Wire Line
	6850 1450 6850 1550
Wire Wire Line
	6850 1550 7150 1550
Connection ~ 7150 1550
Wire Wire Line
	7150 1550 7150 1450
Wire Wire Line
	6500 1450 6500 1550
Wire Wire Line
	6500 1550 6850 1550
Connection ~ 6850 1550
Wire Wire Line
	6150 1450 6150 1550
Wire Wire Line
	6150 1550 6500 1550
Connection ~ 6500 1550
$Comp
L Oscillator:ECS-2520MV-xxx-xx X?
U 1 1 61BB2826
P 2450 6150
F 0 "X?" H 2650 6400 50  0000 L CNN
F 1 "ECS-2520MV-500-BL-TR" H 2500 5900 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_ECS_2520MV-xxx-xx-4Pin_2.5x2.0mm" H 2900 5800 50  0001 C CNN
F 3 "https://www.ecsxtal.com/store/pdf/ECS-2520MV.pdf" H 2275 6275 50  0001 C CNN
	1    2450 6150
	1    0    0    -1  
$EndComp
Text GLabel 2450 5750 1    50   Output ~ 0
3V3
$Comp
L power:GND #PWR?
U 1 1 61BB6E8B
P 2450 6550
F 0 "#PWR?" H 2450 6300 50  0001 C CNN
F 1 "GND" H 2455 6377 50  0000 C CNN
F 2 "" H 2450 6550 50  0001 C CNN
F 3 "" H 2450 6550 50  0001 C CNN
	1    2450 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5850 2450 5800
Wire Wire Line
	2450 6550 2450 6500
Wire Wire Line
	2850 6150 2950 6150
Text Label 2950 6150 0    50   ~ 0
iCE_CLK
Wire Wire Line
	2650 3650 2450 3650
Text Label 2450 3650 2    50   ~ 0
iCE_CLK
NoConn ~ 2050 6150
$Comp
L Device:C C?
U 1 1 61BF19DB
P 1650 6100
F 0 "C?" H 1550 6000 50  0000 C CNN
F 1 "100nF" H 1500 6200 50  0000 C CNN
F 2 "" H 1688 5950 50  0001 C CNN
F 3 "~" H 1650 6100 50  0001 C CNN
	1    1650 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 5950 1650 5800
Wire Wire Line
	1650 5800 2450 5800
Connection ~ 2450 5800
Wire Wire Line
	2450 5800 2450 5750
Wire Wire Line
	1650 6250 1650 6500
Wire Wire Line
	1650 6500 2450 6500
Connection ~ 2450 6500
Wire Wire Line
	2450 6500 2450 6450
Text HLabel 5300 3750 2    50   Input ~ 0
Rx_LED
Wire Wire Line
	5300 3750 4850 3750
Wire Wire Line
	2650 3250 2050 3250
Text HLabel 2050 3250 0    50   Input ~ 0
ANTENNA_SW
Text HLabel 5300 3850 2    50   Input ~ 0
LoRa_~RESET
Wire Wire Line
	5300 3850 4850 3850
Text HLabel 5300 3350 2    50   Input ~ 0
LoRa_Busy
Wire Wire Line
	5300 3350 4850 3350
Wire Wire Line
	2650 4150 2050 4150
Text HLabel 2050 4150 0    50   Input ~ 0
LoRa_DIO1
Wire Wire Line
	8050 4700 8450 4700
Wire Wire Line
	8950 4600 9300 4600
Wire Wire Line
	2650 3950 2050 3950
Wire Wire Line
	5200 2950 5200 2850
Wire Wire Line
	5200 2850 5300 2850
Connection ~ 5200 2950
Wire Wire Line
	5200 2950 5300 2950
Text HLabel 5300 2850 2    50   Input ~ 0
LoRa_SCK
Wire Wire Line
	2650 3450 2050 3450
Text HLabel 2050 3450 0    50   Input ~ 0
LoRa_MOSI
Wire Wire Line
	2650 3050 2050 3050
Text HLabel 2050 3050 0    50   Input ~ 0
LoRa_MISO
Wire Wire Line
	4850 3650 5300 3650
Text HLabel 5300 3650 2    50   Input ~ 0
LoRa_!SS
Wire Wire Line
	5300 4250 4850 4250
Text HLabel 5300 4250 2    50   Input ~ 0
Tx_LED
$Comp
L ICE40UP5K-UWG30ITR1K:ICE40UP5K-UWG30ITR1K IC?
U 1 1 61AF95E0
P 2650 2950
F 0 "IC?" H 3750 3215 50  0000 C CNN
F 1 "ICE40UP5K-UWG30ITR1K" H 3750 3124 50  0000 C CNN
F 2 "BGA30C40P5X6_211X254X60" H 4700 3050 50  0001 L CNN
F 3 "http://www.latticesemi.com/-/media/LatticeSemi/Documents/DataSheets/iCE/FPGA-DS-02008-1-6-iCE40-UltraPlus-Family-Data-Sheet.ashx?document_id=51968" H 4700 2950 50  0001 L CNN
F 4 "FPGA - Field Programmable Gate Array iCE40-UltraPlus, 5280 LUTs, 1.2V" H 4700 2850 50  0001 L CNN "Description"
F 5 "0.6" H 4700 2750 50  0001 L CNN "Height"
F 6 "Lattice Semiconductor" H 4700 2650 50  0001 L CNN "Manufacturer_Name"
F 7 "ICE40UP5K-UWG30ITR1K" H 4700 2550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "842-40UP5KUWG30ITR1K" H 4700 2450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Lattice/ICE40UP5K-UWG30ITR1K?qs=Rp3RbKSfAt0rwndd2oX17g%3D%3D" H 4700 2350 50  0001 L CNN "Mouser Price/Stock"
F 10 "ICE40UP5K-UWG30ITR1K" H 4700 2250 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ice40up5k-uwg30itr1k/lattice-semiconductor?region=nac" H 4700 2150 50  0001 L CNN "Arrow Price/Stock"
	1    2650 2950
	1    0    0    -1  
$EndComp
NoConn ~ 2650 2950
NoConn ~ 2650 3350
NoConn ~ 2650 3850
NoConn ~ 2650 4350
NoConn ~ 4850 4050
NoConn ~ 4850 4350
$EndSCHEMATC
