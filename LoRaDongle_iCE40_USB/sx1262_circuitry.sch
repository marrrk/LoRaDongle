EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "LoRa Dongle"
Date ""
Rev ""
Comp "Mark Njoroge"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1000 4650 2    50   ~ 0
DIO3
Wire Wire Line
	1200 4650 1000 4650
Wire Wire Line
	6800 4950 6800 5650
Wire Wire Line
	6950 5950 6950 6000
$Comp
L power:GND #PWR?
U 1 1 6152F4F5
P 6950 6000
AR Path="/6152F4F5" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F4F5" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 6950 5750 50  0001 C CNN
F 1 "GND" H 6955 5827 50  0000 C CNN
F 2 "" H 6950 6000 50  0001 C CNN
F 3 "" H 6950 6000 50  0001 C CNN
	1    6950 6000
	1    0    0    -1  
$EndComp
Text Label 7650 5650 0    50   ~ 0
DIO2
Wire Wire Line
	7450 5650 7650 5650
Wire Wire Line
	6700 4950 6800 4950
Wire Wire Line
	6950 5650 7150 5650
Wire Wire Line
	6800 5650 6950 5650
Connection ~ 6950 5650
$Comp
L Device:C C?
U 1 1 6152F507
P 6950 5800
AR Path="/6152F507" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F507" Ref="C?"  Part="1" 
F 0 "C?" H 7000 5900 50  0000 L CNN
F 1 "1nF" H 6800 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6988 5650 50  0001 C CNN
F 3 "~" H 6950 5800 50  0001 C CNN
F 4 "GRM155R72A102KA01D" H 6950 5800 50  0001 C CNN "Part Number"
	1    6950 5800
	1    0    0    -1  
$EndComp
Text Label 4700 4950 2    50   ~ 0
RFI_N
Text Label 4700 5400 2    50   ~ 0
RFI_P
Wire Wire Line
	4850 5400 4850 5350
Wire Wire Line
	4850 5400 4700 5400
Wire Wire Line
	5600 5400 5600 5500
$Comp
L power:GND #PWR?
U 1 1 6152F512
P 5600 5500
AR Path="/6152F512" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F512" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 5600 5250 50  0001 C CNN
F 1 "GND" H 5605 5327 50  0000 C CNN
F 2 "" H 5600 5500 50  0001 C CNN
F 3 "" H 5600 5500 50  0001 C CNN
	1    5600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4950 5900 4950
Wire Wire Line
	5600 5100 5600 4950
Connection ~ 5600 4950
Wire Wire Line
	5400 4950 5600 4950
Wire Wire Line
	4850 4950 4700 4950
Wire Wire Line
	4850 4950 5100 4950
Connection ~ 4850 4950
Wire Wire Line
	4850 5050 4850 4950
Connection ~ 4850 5400
Wire Wire Line
	4850 5450 4850 5400
Wire Wire Line
	4850 5850 4850 5750
$Comp
L power:GND #PWR?
U 1 1 6152F523
P 4850 5850
AR Path="/6152F523" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F523" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 4850 5600 50  0001 C CNN
F 1 "GND" H 4855 5677 50  0000 C CNN
F 2 "" H 4850 5850 50  0001 C CNN
F 3 "" H 4850 5850 50  0001 C CNN
	1    4850 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6152F529
P 4850 5600
AR Path="/6152F529" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F529" Ref="C?"  Part="1" 
F 0 "C?" H 4900 5700 50  0000 L CNN
F 1 "1.8pF" H 4900 5500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4888 5450 50  0001 C CNN
F 3 "~" H 4850 5600 50  0001 C CNN
F 4 "GRM1555C1H1R8BA01D" H 4850 5600 50  0001 C CNN "part Number"
	1    4850 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 6152F52F
P 4850 5200
AR Path="/6152F52F" Ref="L?"  Part="1" 
AR Path="/614F0720/6152F52F" Ref="L?"  Part="1" 
F 0 "L?" H 4950 5200 50  0000 C CNN
F 1 "15nH" H 4750 5200 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 4850 5200 50  0001 C CNN
F 3 "~" H 4850 5200 50  0001 C CNN
F 4 "LQW15AN18NH00D" H 4850 5200 50  0001 C CNN "part Number"
	1    4850 5200
	1    0    0    -1  
$EndComp
$Comp
L dk_RF-Switches:4259-63 U?
U 1 1 6152F54A
P 6300 4850
AR Path="/6152F54A" Ref="U?"  Part="1" 
AR Path="/614F0720/6152F54A" Ref="U?"  Part="1" 
F 0 "U?" H 6550 5000 60  0000 C CNN
F 1 "4259-63" H 6100 4300 60  0000 C CNN
F 2 "digikey-footprints:SOT-363" H 6500 5050 60  0001 L CNN
F 3 "http://www.psemi.com/pdf/datasheets/pe4259ds.pdf" H 6500 5150 60  0001 L CNN
F 4 "1046-1011-1-ND" H 6500 5250 60  0001 L CNN "Digi-Key_PN"
F 5 "4259-63" H 6500 5350 60  0001 L CNN "MPN"
F 6 "RF/IF and RFID" H 6500 5450 60  0001 L CNN "Category"
F 7 "RF Switches" H 6500 5550 60  0001 L CNN "Family"
F 8 "http://www.psemi.com/pdf/datasheets/pe4259ds.pdf" H 6500 5650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/psemi/4259-63/1046-1011-1-ND/2614515" H 6500 5750 60  0001 L CNN "DK_Detail_Page"
F 10 "IC RF SWITCH SPDT 3GHZ SC70-6" H 6500 5850 60  0001 L CNN "Description"
F 11 "pSemi" H 6500 5950 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6500 6050 60  0001 L CNN "Status"
	1    6300 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 4850 5800 4850
Text Label 5800 4850 2    50   ~ 0
RFO
$Comp
L power:GND #PWR?
U 1 1 6152F552
P 6200 5350
AR Path="/6152F552" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F552" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 6200 5100 50  0001 C CNN
F 1 "GND" H 6205 5177 50  0000 C CNN
F 2 "" H 6200 5350 50  0001 C CNN
F 3 "" H 6200 5350 50  0001 C CNN
	1    6200 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 6152F56A
P 7700 4850
AR Path="/6152F56A" Ref="L?"  Part="1" 
AR Path="/614F0720/6152F56A" Ref="L?"  Part="1" 
F 0 "L?" V 7800 4850 50  0000 C CNN
F 1 "9.1nH" V 7650 4850 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 7700 4850 50  0001 C CNN
F 3 "~" H 7700 4850 50  0001 C CNN
F 4 "LQW15AN9N1H00D" V 7700 4850 50  0001 C CNN "Part Number"
	1    7700 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 4850 7000 4850
Wire Wire Line
	7300 4850 7450 4850
Wire Wire Line
	7950 4950 7950 4850
Wire Wire Line
	7450 4850 7450 4950
Connection ~ 7450 4850
Wire Wire Line
	7450 4850 7550 4850
$Comp
L power:GND #PWR?
U 1 1 6152F576
P 7450 5250
AR Path="/6152F576" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F576" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 7450 5000 50  0001 C CNN
F 1 "GND" H 7455 5077 50  0000 C CNN
F 2 "" H 7450 5250 50  0001 C CNN
F 3 "" H 7450 5250 50  0001 C CNN
	1    7450 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6152F57C
P 7950 5250
AR Path="/6152F57C" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F57C" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 7950 5000 50  0001 C CNN
F 1 "GND" H 7955 5077 50  0000 C CNN
F 2 "" H 7950 5250 50  0001 C CNN
F 3 "" H 7950 5250 50  0001 C CNN
	1    7950 5250
	1    0    0    -1  
$EndComp
$Comp
L dk_Coaxial-Connectors-RF:142-0701-801 J?
U 1 1 6152F58B
P 8350 4850
AR Path="/6152F58B" Ref="J?"  Part="1" 
AR Path="/614F0720/6152F58B" Ref="J?"  Part="1" 
F 0 "J?" H 8428 5075 50  0000 C CNN
F 1 "142-0701-801" H 8428 4984 50  0000 C CNN
F 2 "digikey-footprints:RF_SMA_BoardEdge_142-0701-801" H 8550 5050 60  0001 L CNN
F 3 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701801.pdf" H 8550 5150 60  0001 L CNN
F 4 "J502-ND" H 8550 5250 60  0001 L CNN "Digi-Key_PN"
F 5 "142-0701-801" H 8550 5350 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 8550 5450 60  0001 L CNN "Category"
F 7 "Coaxial Connectors (RF)" H 8550 5550 60  0001 L CNN "Family"
F 8 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701801.pdf" H 8550 5650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cinch-connectivity-solutions-johnson/142-0701-801/J502-ND/35280" H 8550 5750 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN SMA JACK STR 50OHM EDGE MNT" H 8550 5850 60  0001 L CNN "Description"
F 11 "Cinch Connectivity Solutions Johnson" H 8550 5950 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8550 6050 60  0001 L CNN "Status"
	1    8350 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7950 4850 7850 4850
Wire Wire Line
	7950 4850 8150 4850
Connection ~ 7950 4850
Wire Wire Line
	8350 5050 8350 5150
$Comp
L power:GND #PWR?
U 1 1 6152F595
P 8350 5150
AR Path="/6152F595" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F595" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 8350 4900 50  0001 C CNN
F 1 "GND" H 8355 4977 50  0000 C CNN
F 2 "" H 8350 5150 50  0001 C CNN
F 3 "" H 8350 5150 50  0001 C CNN
	1    8350 5150
	1    0    0    -1  
$EndComp
Text Label 9500 1900 2    50   ~ 0
RFO
Wire Wire Line
	7600 1900 7700 1900
Wire Wire Line
	7600 1600 7700 1600
Wire Wire Line
	8250 1900 8100 1900
Wire Wire Line
	8100 1900 8100 2000
Connection ~ 8100 1900
Wire Wire Line
	8000 1900 8100 1900
Wire Wire Line
	8000 1600 8100 1600
$Comp
L power:GND #PWR?
U 1 1 6152F5A4
P 7000 1500
AR Path="/6152F5A4" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F5A4" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 7000 1250 50  0001 C CNN
F 1 "GND" H 7005 1327 50  0000 C CNN
F 2 "" H 7000 1500 50  0001 C CNN
F 3 "" H 7000 1500 50  0001 C CNN
	1    7000 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6152F5AA
P 6700 1500
AR Path="/6152F5AA" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F5AA" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 6700 1250 50  0001 C CNN
F 1 "GND" H 6705 1327 50  0000 C CNN
F 2 "" H 6700 1500 50  0001 C CNN
F 3 "" H 6700 1500 50  0001 C CNN
	1    6700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1600 8100 1900
$Comp
L Device:C C?
U 1 1 6152F5C7
P 8400 1900
AR Path="/6152F5C7" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F5C7" Ref="C?"  Part="1" 
F 0 "C?" V 8350 1800 50  0000 C CNN
F 1 "12pF" V 8450 2050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8438 1750 50  0001 C CNN
F 3 "~" H 8400 1900 50  0001 C CNN
F 4 "GRM1555C1H120JA01J" V 8400 1900 50  0001 C CNN "Part Number"
	1    8400 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6152F5CD
P 8100 2300
AR Path="/6152F5CD" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F5CD" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 8100 2050 50  0001 C CNN
F 1 "GND" H 8105 2127 50  0000 C CNN
F 2 "" H 8100 2300 50  0001 C CNN
F 3 "" H 8100 2300 50  0001 C CNN
	1    8100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1900 7600 1600
Connection ~ 7600 1900
Wire Wire Line
	7400 1900 7600 1900
$Comp
L Device:L L?
U 1 1 6152F5DD
P 7850 1900
AR Path="/6152F5DD" Ref="L?"  Part="1" 
AR Path="/614F0720/6152F5DD" Ref="L?"  Part="1" 
F 0 "L?" V 7950 1900 50  0000 C CNN
F 1 "2.7nH" V 7800 1900 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 7850 1900 50  0001 C CNN
F 3 "~" H 7850 1900 50  0001 C CNN
F 4 "LQW15AN2N7C00D" V 7850 1900 50  0001 C CNN "Part Number"
	1    7850 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 6152F5E3
P 7850 1600
AR Path="/6152F5E3" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F5E3" Ref="C?"  Part="1" 
F 0 "C?" V 7800 1500 50  0000 C CNN
F 1 "3pF" V 7800 1750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7888 1450 50  0001 C CNN
F 3 "~" H 7850 1600 50  0001 C CNN
F 4 "GRM1555C1H3R0BA01D" V 7850 1600 50  0001 C CNN "Part Number"
	1    7850 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 6152F5E9
P 8100 2150
AR Path="/6152F5E9" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F5E9" Ref="C?"  Part="1" 
F 0 "C?" H 8150 2250 50  0000 L CNN
F 1 "6.8pF" H 8150 2050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8138 2000 50  0001 C CNN
F 3 "~" H 8100 2150 50  0001 C CNN
F 4 "GRM1555C1H6R8BA01D" H 8100 2150 50  0001 C CNN "Part Number"
	1    8100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 950  6550 1150
Wire Wire Line
	7400 1150 7400 1450
$Comp
L Device:L L?
U 1 1 6152F600
P 7400 1600
AR Path="/6152F600" Ref="L?"  Part="1" 
AR Path="/614F0720/6152F600" Ref="L?"  Part="1" 
F 0 "L?" H 7500 1600 50  0000 C CNN
F 1 "47nH" H 7300 1600 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 7400 1600 50  0001 C CNN
F 3 "~" H 7400 1600 50  0001 C CNN
F 4 "LQW15AN47NJ00D" H 7400 1600 50  0001 C CNN "Part Number"
	1    7400 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1150 6700 1150
Connection ~ 6700 1150
Wire Wire Line
	6700 1200 6700 1150
Wire Wire Line
	6700 1150 7000 1150
Wire Wire Line
	7000 1150 7400 1150
Connection ~ 7000 1150
Wire Wire Line
	7000 1150 7000 1200
$Comp
L Device:C C?
U 1 1 6152F611
P 7000 1350
AR Path="/6152F611" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F611" Ref="C?"  Part="1" 
F 0 "C?" H 7050 1450 50  0000 L CNN
F 1 "47pF" H 7050 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7038 1200 50  0001 C CNN
F 3 "~" H 7000 1350 50  0001 C CNN
F 4 "GRM1555C1H470JA01D" H 7000 1350 50  0001 C CNN "Part Number"
	1    7000 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6152F617
P 6700 1350
AR Path="/6152F617" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F617" Ref="C?"  Part="1" 
F 0 "C?" H 6750 1450 50  0000 L CNN
F 1 "47nF" H 6750 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6738 1200 50  0001 C CNN
F 3 "~" H 6700 1350 50  0001 C CNN
F 4 "GRM155R71C473KA01J" H 6700 1350 50  0001 C CNN "Part Number"
	1    6700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1550 1600 1500
Wire Wire Line
	1750 1450 1750 1500
Wire Wire Line
	1450 1500 1600 1500
Wire Wire Line
	1450 1450 1450 1500
Wire Wire Line
	1750 1100 1750 1150
Wire Wire Line
	1450 1100 1600 1100
Wire Wire Line
	1450 1150 1450 1100
Wire Wire Line
	1600 1000 1600 1100
$Comp
L power:GND #PWR?
U 1 1 6152F63B
P 1600 1550
AR Path="/6152F63B" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F63B" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 1600 1300 50  0001 C CNN
F 1 "GND" H 1605 1377 50  0000 C CNN
F 2 "" H 1600 1550 50  0001 C CNN
F 3 "" H 1600 1550 50  0001 C CNN
	1    1600 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6152F64D
P 1450 1300
AR Path="/6152F64D" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F64D" Ref="C?"  Part="1" 
F 0 "C?" H 1600 1200 50  0000 C CNN
F 1 "100nF" H 1600 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1488 1150 50  0001 C CNN
F 3 "~" H 1450 1300 50  0001 C CNN
F 4 "GRM155R71C104KA88D" H 1450 1300 50  0001 C CNN "Part Number"
	1    1450 1300
	-1   0    0    1   
$EndComp
Text GLabel 1600 1000 1    50   Input ~ 0
3v3
Text Label 6550 950  2    50   ~ 0
VR_PA
Wire Wire Line
	6300 4650 6300 4450
Wire Wire Line
	6300 4450 6350 4450
Wire Wire Line
	5900 4450 5800 4450
Text HLabel 5800 4450 0    50   Input ~ 0
ANT_SW
$Comp
L Device:R R?
U 1 1 6160F852
P 6050 4450
AR Path="/6160F852" Ref="R?"  Part="1" 
AR Path="/614F0720/6160F852" Ref="R?"  Part="1" 
F 0 "R?" V 6000 4600 50  0000 C CNN
F 1 "100R" V 6050 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5980 4450 50  0001 C CNN
F 3 "~" H 6050 4450 50  0001 C CNN
F 4 "CRCW0402100RFKED" V 6050 4450 50  0001 C CNN "Part Number"
	1    6050 4450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 616125ED
P 6750 4450
AR Path="/616125ED" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/616125ED" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6750 4200 50  0001 C CNN
F 1 "GND" V 6755 4277 50  0000 C CNN
F 2 "" H 6750 4450 50  0001 C CNN
F 3 "" H 6750 4450 50  0001 C CNN
	1    6750 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 4450 6750 4450
Wire Wire Line
	6200 4450 6300 4450
Connection ~ 6300 4450
$Comp
L Device:C C?
U 1 1 615F2583
P 7950 5100
AR Path="/615F2583" Ref="C?"  Part="1" 
AR Path="/614F0720/615F2583" Ref="C?"  Part="1" 
F 0 "C?" H 7900 5000 50  0000 C CNN
F 1 "3.3pF" H 7800 5200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7988 4950 50  0001 C CNN
F 3 "~" H 7950 5100 50  0001 C CNN
F 4 "GJM1555C1H3R3DB01D" V 7950 5100 50  0001 C CNN "Part Number"
	1    7950 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 6160203C
P 7450 5100
AR Path="/6160203C" Ref="C?"  Part="1" 
AR Path="/614F0720/6160203C" Ref="C?"  Part="1" 
F 0 "C?" H 7400 5000 50  0000 C CNN
F 1 "3.3pF" H 7300 5200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7488 4950 50  0001 C CNN
F 3 "~" H 7450 5100 50  0001 C CNN
F 4 "GJM1555C1H3R3DB01D" V 7450 5100 50  0001 C CNN "Part Number"
	1    7450 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 1900 8850 1900
$Comp
L Device:C C?
U 1 1 61614F1B
P 7150 4850
AR Path="/61614F1B" Ref="C?"  Part="1" 
AR Path="/614F0720/61614F1B" Ref="C?"  Part="1" 
F 0 "C?" V 7100 4750 50  0000 C CNN
F 1 "22pF" V 7200 5000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7188 4700 50  0001 C CNN
F 3 "~" H 7150 4850 50  0001 C CNN
F 4 "GRM1555C1H220JA01D" V 7150 4850 50  0001 C CNN "Part Number"
	1    7150 4850
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 616288B3
P 6500 4450
AR Path="/616288B3" Ref="C?"  Part="1" 
AR Path="/614F0720/616288B3" Ref="C?"  Part="1" 
F 0 "C?" V 6450 4500 50  0000 L CNN
F 1 "1nF" V 6550 4500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6538 4300 50  0001 C CNN
F 3 "~" H 6500 4450 50  0001 C CNN
F 4 "GRM155R72A102KA01D" H 6500 4450 50  0001 C CNN "Part Number"
	1    6500 4450
	0    1    1    0   
$EndComp
Text Notes 1300 1900 0    50   ~ 0
VBAT decoupling Caps
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 6167BC3F
P 1300 4650
F 0 "FB?" V 1063 4650 50  0000 C CNN
F 1 "10R/100MHz" V 1154 4650 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" V 1230 4650 50  0001 C CNN
F 3 "~" H 1300 4650 50  0001 C CNN
F 4 "BLM15PG100SN1D" V 1300 4650 50  0001 C CNN "Part Number"
	1    1300 4650
	0    1    1    0   
$EndComp
$Comp
L TYETBCSANF-32.000000:TYETBCSANF-32.000000 Y?
U 1 1 61698E39
P 2350 4700
F 0 "Y?" H 2350 4900 50  0000 C CNN
F 1 "TYETBCSANF-32.000000" H 2350 4450 50  0000 C CNN
F 2 "TY" H 3500 4800 50  0001 L CNN
F 3 "http://www.taitien.com/wp-content/uploads/2015/12/XO-0081_TY.pdf" H 3500 4700 50  0001 L CNN
F 4 "OSC TCXO 32MHZ 3.3V CLP SW SMD" H 3500 4600 50  0001 L CNN "Description"
F 5 "" H 3500 4500 50  0001 L CNN "Height"
F 6 "TAITIEN" H 3500 4400 50  0001 L CNN "Manufacturer_Name"
F 7 "TYETBCSANF-32.000000" H 3500 4300 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 3500 4200 50  0001 L CNN "Mouser Part Number"
F 9 "" H 3500 4100 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 3500 4000 50  0001 L CNN "Arrow Part Number"
F 11 "" H 3500 3900 50  0001 L CNN "Arrow Price/Stock"
	1    2350 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 616B271E
P 1600 4900
AR Path="/616B271E" Ref="C?"  Part="1" 
AR Path="/614F0720/616B271E" Ref="C?"  Part="1" 
F 0 "C?" H 1550 4800 50  0000 C CNN
F 1 "100nF" H 1800 4900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1638 4750 50  0001 C CNN
F 3 "~" H 1600 4900 50  0001 C CNN
F 4 "GRM155R71C104KA88D" H 1600 4900 50  0001 C CNN "Part Number"
	1    1600 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 4800 1800 4800
Wire Wire Line
	1800 4800 1800 5050
Wire Wire Line
	1800 5050 1600 5050
Wire Wire Line
	1600 5050 1600 5150
$Comp
L power:GND #PWR?
U 1 1 616C24D5
P 1600 5150
AR Path="/616C24D5" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/616C24D5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1600 4900 50  0001 C CNN
F 1 "GND" H 1605 4977 50  0000 C CNN
F 2 "" H 1600 5150 50  0001 C CNN
F 3 "" H 1600 5150 50  0001 C CNN
	1    1600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4800 3000 4800
Wire Wire Line
	3000 4800 3000 5150
$Comp
L power:GND #PWR?
U 1 1 616C69F7
P 3000 5150
AR Path="/616C69F7" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/616C69F7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 4900 50  0001 C CNN
F 1 "GND" H 3005 4977 50  0000 C CNN
F 2 "" H 3000 5150 50  0001 C CNN
F 3 "" H 3000 5150 50  0001 C CNN
	1    3000 5150
	1    0    0    -1  
$EndComp
Connection ~ 1600 5050
Wire Wire Line
	1400 4650 1600 4650
Wire Wire Line
	1600 4750 1600 4650
Connection ~ 1600 4650
Wire Wire Line
	1600 4650 1850 4650
$Comp
L Device:C C?
U 1 1 617146ED
P 3150 4650
F 0 "C?" V 3000 4650 50  0000 C CNN
F 1 "10pF" V 3300 4650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3188 4500 50  0001 C CNN
F 3 "~" H 3150 4650 50  0001 C CNN
F 4 "GRM1555C1H100JA01J" V 3150 4650 50  0001 C CNN "Part Number"
	1    3150 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 617171F3
P 3550 4650
F 0 "R?" V 3450 4650 50  0000 C CNN
F 1 "220R" V 3550 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3480 4650 50  0001 C CNN
F 3 "~" H 3550 4650 50  0001 C CNN
F 4 "CRCW0402220RJNED" V 3550 4650 50  0001 C CNN "Part Number"
	1    3550 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 4650 3000 4650
Wire Wire Line
	3300 4650 3400 4650
$Comp
L Device:R R?
U 1 1 617351DE
P 7300 5650
AR Path="/617351DE" Ref="R?"  Part="1" 
AR Path="/614F0720/617351DE" Ref="R?"  Part="1" 
F 0 "R?" V 7250 5800 50  0000 C CNN
F 1 "100R" V 7300 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7230 5650 50  0001 C CNN
F 3 "~" H 7300 5650 50  0001 C CNN
F 4 "CRCW0402100RFKED" V 7300 5650 50  0001 C CNN "Part Number"
	1    7300 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61687A29
P 9750 5000
AR Path="/61687A29" Ref="R?"  Part="1" 
AR Path="/614F0720/61687A29" Ref="R?"  Part="1" 
F 0 "R?" H 9820 5046 50  0000 L CNN
F 1 "R" H 9820 4955 50  0000 L CNN
F 2 "" V 9680 5000 50  0001 C CNN
F 3 "~" H 9750 5000 50  0001 C CNN
	1    9750 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 61687A2F
P 9750 5350
AR Path="/61687A2F" Ref="D?"  Part="1" 
AR Path="/614F0720/61687A2F" Ref="D?"  Part="1" 
F 0 "D?" V 9789 5232 50  0000 R CNN
F 1 "TX_LED" V 9698 5232 50  0000 R CNN
F 2 "" H 9750 5350 50  0001 C CNN
F 3 "~" H 9750 5350 50  0001 C CNN
	1    9750 5350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61687A35
P 9750 5600
AR Path="/61687A35" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/61687A35" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9750 5350 50  0001 C CNN
F 1 "GND" H 9755 5427 50  0000 C CNN
F 2 "" H 9750 5600 50  0001 C CNN
F 3 "" H 9750 5600 50  0001 C CNN
	1    9750 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5600 9750 5500
Wire Wire Line
	9750 5200 9750 5150
Wire Wire Line
	9750 4850 9750 4750
$Comp
L Device:R R?
U 1 1 6168CCFD
P 10300 5000
AR Path="/6168CCFD" Ref="R?"  Part="1" 
AR Path="/614F0720/6168CCFD" Ref="R?"  Part="1" 
F 0 "R?" H 10370 5046 50  0000 L CNN
F 1 "R" H 10370 4955 50  0000 L CNN
F 2 "" V 10230 5000 50  0001 C CNN
F 3 "~" H 10300 5000 50  0001 C CNN
	1    10300 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6168CD03
P 10300 5350
AR Path="/6168CD03" Ref="D?"  Part="1" 
AR Path="/614F0720/6168CD03" Ref="D?"  Part="1" 
F 0 "D?" V 10339 5232 50  0000 R CNN
F 1 "RX_LED" V 10248 5232 50  0000 R CNN
F 2 "" H 10300 5350 50  0001 C CNN
F 3 "~" H 10300 5350 50  0001 C CNN
	1    10300 5350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6168CD09
P 10300 5600
AR Path="/6168CD09" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6168CD09" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10300 5350 50  0001 C CNN
F 1 "GND" H 10305 5427 50  0000 C CNN
F 2 "" H 10300 5600 50  0001 C CNN
F 3 "" H 10300 5600 50  0001 C CNN
	1    10300 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 5600 10300 5500
Wire Wire Line
	10300 5200 10300 5150
Wire Wire Line
	10300 4850 10300 4750
Text HLabel 9750 4750 1    50   Input ~ 0
TX_LED
Text HLabel 10300 4750 1    50   Input ~ 0
RX_LED
Text Label 1750 1100 0    50   ~ 0
VBAT
$Comp
L Device:C C?
U 1 1 6152F647
P 1750 1300
AR Path="/6152F647" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F647" Ref="C?"  Part="1" 
F 0 "C?" H 1650 1200 50  0000 C CNN
F 1 "1uF" H 1650 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1788 1150 50  0001 C CNN
F 3 "~" H 1750 1300 50  0001 C CNN
F 4 "GRM188R61A105KA61D" H 1750 1300 50  0001 C CNN "part Number"
	1    1750 1300
	-1   0    0    1   
$EndComp
Connection ~ 1600 1500
Connection ~ 1600 1100
Wire Wire Line
	1600 1100 1750 1100
Wire Wire Line
	1600 1500 1750 1500
Text Label 4100 2050 2    50   ~ 0
VBAT
NoConn ~ 5550 2500
Text Label 3600 2800 2    50   ~ 0
VREG
Text Label 2750 1400 2    50   ~ 0
VREG
Wire Wire Line
	3750 2800 3600 2800
Wire Wire Line
	4050 2800 4250 2800
Wire Wire Line
	2850 1400 2750 1400
$Comp
L Device:L L?
U 1 1 61E5E81A
P 3000 1400
F 0 "L?" V 3050 1250 50  0000 C CNN
F 1 "47nH" V 3050 1550 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 3000 1400 50  0001 C CNN
F 3 "~" H 3000 1400 50  0001 C CNN
F 4 "LQW15AN47NJ00D" V 3000 1400 50  0001 C CNN "PartNumber"
	1    3000 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 2100 6200 2100
$Comp
L power:GND #PWR?
U 1 1 61E3C83F
P 6300 2100
F 0 "#PWR?" H 6300 1850 50  0001 C CNN
F 1 "GND" V 6305 1972 50  0000 R CNN
F 2 "" H 6300 2100 50  0001 C CNN
F 3 "" H 6300 2100 50  0001 C CNN
	1    6300 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 2100 5900 2100
Text Label 5650 2100 0    50   ~ 0
VREG
Wire Wire Line
	4100 2050 4100 2000
Connection ~ 4100 2050
Wire Wire Line
	4100 2050 3800 2050
Wire Wire Line
	4100 2100 4100 2050
Wire Wire Line
	4250 2100 4100 2100
Wire Wire Line
	4250 2000 4100 2000
Text GLabel 3800 2050 0    50   Output ~ 0
3v3
$Comp
L sx1261:SX1261IMLTRT U?
U 1 1 61CBFD90
P 4150 1400
F 0 "U?" H 4900 1665 50  0000 C CNN
F 1 "SX1261IMLTRT" H 4900 1574 50  0000 C CNN
F 2 "Semtech-QFN24-0-0-*" H 4150 1800 50  0001 L CNN
F 3 "https://www.semtech.com/uploads/documents/DS_SX1261-2_V1.1.pdf" H 4150 1900 50  0001 L CNN
F 4 "IC" H 4150 2000 50  0001 L CNN "category"
F 5 "Integrated Circuits (ICs)" H 4150 2100 50  0001 L CNN "device class L1"
F 6 "RF Semiconductors and Devices" H 4150 2200 50  0001 L CNN "device class L2"
F 7 "Transceivers" H 4150 2300 50  0001 L CNN "device class L3"
F 8 "TXRX LORA SUB-GHZ 15DBM 24MLPQ" H 4150 2400 50  0001 L CNN "digikey description"
F 9 "SX1261IMLTRTCT-ND" H 4150 2500 50  0001 L CNN "digikey part number"
F 10 "1.08mm" H 4150 2600 50  0001 L CNN "height"
F 11 "SPI" H 4150 2700 50  0001 L CNN "interface"
F 12 "yes" H 4150 2800 50  0001 L CNN "lead free"
F 13 "2ed10c4a432ac63b" H 4150 2900 50  0001 L CNN "library id"
F 14 "Semtech" H 4150 3000 50  0001 L CNN "manufacturer"
F 15 "960MHz" H 4150 3100 50  0001 L CNN "max frequency"
F 16 "3.7V" H 4150 3200 50  0001 L CNN "max supply voltage"
F 17 "1.8V" H 4150 3300 50  0001 L CNN "min supply voltage"
F 18 "947-SX1261IMLTRT" H 4150 3400 50  0001 L CNN "mouser part number"
F 19 "3" H 4150 3500 50  0001 L CNN "number of GPIO"
F 20 "QFN24" H 4150 3600 50  0001 L CNN "package"
F 21 "yes" H 4150 3700 50  0001 L CNN "rohs"
F 22 "0mm" H 4150 3800 50  0001 L CNN "standoff height"
F 23 "+85°C" H 4150 3900 50  0001 L CNN "temperature range high"
F 24 "-40°C" H 4150 4000 50  0001 L CNN "temperature range low"
	1    4150 1400
	1    0    0    -1  
$EndComp
Text HLabel 4100 1600 0    50   Input ~ 0
DIO1
Wire Wire Line
	4250 2600 4100 2600
Text HLabel 4100 2600 0    50   Input ~ 0
BUSY
Text HLabel 5700 1400 2    50   Input ~ 0
~RESET
Wire Wire Line
	5550 1400 5700 1400
$Comp
L VLS201610CX-150M-1:VLS201610CX-150M-1 L?
U 1 1 61661D80
P 3900 2800
F 0 "L?" H 3900 2900 50  0000 C CNN
F 1 "15uH" H 3900 2750 50  0000 C CNN
F 2 "VLS2016" H 4550 2850 50  0001 L CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/inductor/inductor/smd/catalog/inductor_commercial_power_vls201610cx-1_en.pdf" H 4550 2750 50  0001 L CNN
F 4 "Inductors for power circuits, Wound ferrite" H 4550 2650 50  0001 L CNN "Description"
F 5 "" H 4550 2550 50  0001 L CNN "Height"
F 6 "TDK" H 4550 2450 50  0001 L CNN "Manufacturer_Name"
F 7 "VLS201610CX-150M-1" H 4550 2350 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "810-VLS201610CX150M1" H 4550 2250 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/TDK/VLS201610CX-150M-1?qs=1mbolxNpo8cDxpAAQe7QDA%3D%3D" H 4550 2150 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 4550 2050 50  0001 L CNN "Arrow Part Number"
F 11 "" H 4550 1950 50  0001 L CNN "Arrow Price/Stock"
	1    3900 2800
	1    0    0    -1  
$EndComp
Text Label 4200 3400 2    50   ~ 0
VR_PA
Text HLabel 3900 3000 0    50   Input ~ 0
LoRa_!SS
Text HLabel 5900 1600 2    50   Input ~ 0
LoRa_MISO
Text HLabel 5900 1700 2    50   Input ~ 0
LoRa_MOSI
Text HLabel 3900 3200 0    50   Input ~ 0
LoRa_SCK
Wire Wire Line
	5550 3200 5650 3200
Wire Wire Line
	5650 3200 5650 3300
Connection ~ 5650 3300
$Comp
L Device:C C?
U 1 1 6152F678
P 6050 2100
AR Path="/6152F678" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F678" Ref="C?"  Part="1" 
F 0 "C?" V 5900 2100 50  0000 C CNN
F 1 "470nF" V 6200 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6088 1950 50  0001 C CNN
F 3 "~" H 6050 2100 50  0001 C CNN
F 4 "GRM155R61A474KE15D" V 6050 2100 50  0001 C CNN "Part Number"
	1    6050 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6152F672
P 5650 3700
AR Path="/6152F672" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F672" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 5650 3450 50  0001 C CNN
F 1 "GND" H 5655 3527 50  0000 C CNN
F 2 "" H 5650 3700 50  0001 C CNN
F 3 "" H 5650 3700 50  0001 C CNN
	1    5650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3600 5650 3600
Connection ~ 5650 3600
Wire Wire Line
	5650 3600 5650 3700
Wire Wire Line
	5650 3500 5650 3600
Wire Wire Line
	5550 3500 5650 3500
Connection ~ 5650 3500
Wire Wire Line
	5650 3400 5650 3500
Wire Wire Line
	5550 3400 5650 3400
Connection ~ 5650 3400
Wire Wire Line
	5650 3300 5650 3400
Wire Wire Line
	5550 3300 5650 3300
Wire Wire Line
	4200 3400 4250 3400
Text Label 3900 2300 0    50   ~ 0
RFI_N
Text Label 3900 2400 0    50   ~ 0
RFI_P
Wire Wire Line
	3900 2300 4250 2300
Wire Wire Line
	3900 2400 4250 2400
Wire Wire Line
	3900 3200 4250 3200
Wire Wire Line
	5550 1700 5900 1700
Wire Wire Line
	5900 1600 5550 1600
Wire Wire Line
	4250 3000 3900 3000
Wire Wire Line
	4250 1600 4100 1600
Wire Wire Line
	4250 1700 4100 1700
Wire Wire Line
	4250 1800 4100 1800
Text Label 4100 1700 2    50   ~ 0
DIO2
Text Label 4100 1800 2    50   ~ 0
DIO3
Wire Wire Line
	7400 1750 7400 1900
Wire Wire Line
	5550 1900 7400 1900
Connection ~ 7400 1900
Wire Wire Line
	9150 1900 9500 1900
$Comp
L Device:C C?
U 1 1 61C6136C
P 5250 4950
AR Path="/61C6136C" Ref="C?"  Part="1" 
AR Path="/614F0720/61C6136C" Ref="C?"  Part="1" 
F 0 "C?" V 5300 5050 50  0000 L CNN
F 1 "1.8pF" V 5150 5050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5288 4800 50  0001 C CNN
F 3 "~" H 5250 4950 50  0001 C CNN
F 4 "GRM1555C1H1R8BA01D" H 5250 4950 50  0001 C CNN "part Number"
	1    5250 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 61C62BF5
P 5600 5250
AR Path="/61C62BF5" Ref="C?"  Part="1" 
AR Path="/614F0720/61C62BF5" Ref="C?"  Part="1" 
F 0 "C?" H 5650 5350 50  0000 L CNN
F 1 "1pF" H 5650 5150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5638 5100 50  0001 C CNN
F 3 "~" H 5600 5250 50  0001 C CNN
F 4 "GRM1555C1H1R0BA01D" H 5600 5250 50  0001 C CNN "part Number"
	1    5600 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C77358
P 3350 1850
AR Path="/61C77358" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/61C77358" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 1600 50  0001 C CNN
F 1 "GND" H 3355 1677 50  0000 C CNN
F 2 "" H 3350 1850 50  0001 C CNN
F 3 "" H 3350 1850 50  0001 C CNN
	1    3350 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61C76B93
P 3350 1600
F 0 "C?" H 3465 1646 50  0000 L CNN
F 1 "10nF" H 3465 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3388 1450 50  0001 C CNN
F 3 "~" H 3350 1600 50  0001 C CNN
F 4 "GRM1555C1H220JA01D" H 3350 1600 50  0001 C CNN "Part Number"
	1    3350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1400 3350 1400
Wire Wire Line
	3350 1850 3350 1750
Wire Wire Line
	3350 1450 3350 1400
Connection ~ 3350 1400
Wire Wire Line
	3350 1400 4250 1400
$Comp
L Device:L L?
U 1 1 61CB36BA
P 9000 1900
AR Path="/61CB36BA" Ref="L?"  Part="1" 
AR Path="/614F0720/61CB36BA" Ref="L?"  Part="1" 
F 0 "L?" V 9100 1900 50  0000 C CNN
F 1 "9.1nH" V 8950 1900 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 9000 1900 50  0001 C CNN
F 3 "~" H 9000 1900 50  0001 C CNN
F 4 "LQW15AN9N1H00D" V 9000 1900 50  0001 C CNN "Part Number"
	1    9000 1900
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
