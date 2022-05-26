EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title "LoRa Dongle"
Date ""
Rev ""
Comp "Mark Njoroge"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 2250 3100 2    50   ~ 0
DIO3
Wire Wire Line
	2450 3100 2250 3100
Wire Wire Line
	5950 4900 5950 5600
NoConn ~ 5000 3300
Wire Wire Line
	5100 3300 5000 3300
Text Label 6450 2700 0    50   ~ 0
DIO3
Text Label 6450 2600 0    50   ~ 0
DIO2
Wire Wire Line
	6300 2700 6450 2700
Wire Wire Line
	6300 2600 6450 2600
Wire Wire Line
	6300 2500 6450 2500
Wire Wire Line
	6100 5900 6100 5950
$Comp
L power:GND #PWR?
U 1 1 6152F4F5
P 6100 5950
AR Path="/6152F4F5" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F4F5" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 6100 5700 50  0001 C CNN
F 1 "GND" H 6105 5777 50  0000 C CNN
F 2 "" H 6100 5950 50  0001 C CNN
F 3 "" H 6100 5950 50  0001 C CNN
	1    6100 5950
	1    0    0    -1  
$EndComp
Text Label 6800 5600 0    50   ~ 0
DIO2
Wire Wire Line
	6600 5600 6800 5600
Wire Wire Line
	5850 4900 5950 4900
Wire Wire Line
	6100 5600 6300 5600
Wire Wire Line
	5950 5600 6100 5600
Connection ~ 6100 5600
$Comp
L Device:C C?
U 1 1 6152F507
P 6100 5750
AR Path="/6152F507" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F507" Ref="C?"  Part="1" 
F 0 "C?" H 6150 5850 50  0000 L CNN
F 1 "1nF" H 5950 5650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6138 5600 50  0001 C CNN
F 3 "~" H 6100 5750 50  0001 C CNN
F 4 "GRM155R72A102KA01D" H 6100 5750 50  0001 C CNN "Part Number"
	1    6100 5750
	1    0    0    -1  
$EndComp
Text Label 3850 4900 2    50   ~ 0
RFI_N
Text Label 3850 5350 2    50   ~ 0
RFI_P
Wire Wire Line
	4000 5350 4000 5300
Wire Wire Line
	4000 5350 3850 5350
Wire Wire Line
	4750 5350 4750 5450
$Comp
L power:GND #PWR?
U 1 1 6152F512
P 4750 5450
AR Path="/6152F512" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F512" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 4750 5200 50  0001 C CNN
F 1 "GND" H 4755 5277 50  0000 C CNN
F 2 "" H 4750 5450 50  0001 C CNN
F 3 "" H 4750 5450 50  0001 C CNN
	1    4750 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4900 5050 4900
Wire Wire Line
	4750 5050 4750 4900
Connection ~ 4750 4900
Wire Wire Line
	4550 4900 4750 4900
Wire Wire Line
	4000 4900 3850 4900
Wire Wire Line
	4000 4900 4250 4900
Connection ~ 4000 4900
Wire Wire Line
	4000 5000 4000 4900
Connection ~ 4000 5350
Wire Wire Line
	4000 5400 4000 5350
Wire Wire Line
	4000 5800 4000 5700
$Comp
L power:GND #PWR?
U 1 1 6152F523
P 4000 5800
AR Path="/6152F523" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F523" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 4000 5550 50  0001 C CNN
F 1 "GND" H 4005 5627 50  0000 C CNN
F 2 "" H 4000 5800 50  0001 C CNN
F 3 "" H 4000 5800 50  0001 C CNN
	1    4000 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6152F529
P 4000 5550
AR Path="/6152F529" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F529" Ref="C?"  Part="1" 
F 0 "C?" H 4050 5650 50  0000 L CNN
F 1 "1.8F" H 4050 5450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4038 5400 50  0001 C CNN
F 3 "~" H 4000 5550 50  0001 C CNN
F 4 "GRM1555C1H1R8BA01D" H 4000 5550 50  0001 C CNN "part Number"
	1    4000 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 6152F52F
P 4000 5150
AR Path="/6152F52F" Ref="L?"  Part="1" 
AR Path="/614F0720/6152F52F" Ref="L?"  Part="1" 
F 0 "L?" H 4100 5150 50  0000 C CNN
F 1 "15nH" H 3900 5150 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 4000 5150 50  0001 C CNN
F 3 "~" H 4000 5150 50  0001 C CNN
F 4 "LQW15AN15NH00D" H 4000 5150 50  0001 C CNN "part Number"
	1    4000 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6152F535
P 4400 4900
AR Path="/6152F535" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F535" Ref="C?"  Part="1" 
F 0 "C?" V 4350 4800 50  0000 C CNN
F 1 "2.4pF" V 4550 4900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4438 4750 50  0001 C CNN
F 3 "~" H 4400 4900 50  0001 C CNN
F 4 "GRM1555C1H2R4WA01D" V 4400 4900 50  0001 C CNN "Part Number"
	1    4400 4900
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 6152F53B
P 4750 5200
AR Path="/6152F53B" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F53B" Ref="C?"  Part="1" 
F 0 "C?" H 4800 5300 50  0000 L CNN
F 1 "C" H 4600 5300 50  0000 L CNN
F 2 "" H 4788 5050 50  0001 C CNN
F 3 "~" H 4750 5200 50  0001 C CNN
	1    4750 5200
	1    0    0    -1  
$EndComp
$Comp
L dk_RF-Switches:4259-63 U?
U 1 1 6152F54A
P 5450 4800
AR Path="/6152F54A" Ref="U?"  Part="1" 
AR Path="/614F0720/6152F54A" Ref="U?"  Part="1" 
F 0 "U?" H 5700 4950 60  0000 C CNN
F 1 "4259-63" H 5250 4250 60  0000 C CNN
F 2 "digikey-footprints:SOT-363" H 5650 5000 60  0001 L CNN
F 3 "http://www.psemi.com/pdf/datasheets/pe4259ds.pdf" H 5650 5100 60  0001 L CNN
F 4 "1046-1011-1-ND" H 5650 5200 60  0001 L CNN "Digi-Key_PN"
F 5 "4259-63" H 5650 5300 60  0001 L CNN "MPN"
F 6 "RF/IF and RFID" H 5650 5400 60  0001 L CNN "Category"
F 7 "RF Switches" H 5650 5500 60  0001 L CNN "Family"
F 8 "http://www.psemi.com/pdf/datasheets/pe4259ds.pdf" H 5650 5600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/psemi/4259-63/1046-1011-1-ND/2614515" H 5650 5700 60  0001 L CNN "DK_Detail_Page"
F 10 "IC RF SWITCH SPDT 3GHZ SC70-6" H 5650 5800 60  0001 L CNN "Description"
F 11 "pSemi" H 5650 5900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5650 6000 60  0001 L CNN "Status"
	1    5450 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 4800 4950 4800
Text Label 4950 4800 2    50   ~ 0
RF1
$Comp
L power:GND #PWR?
U 1 1 6152F552
P 5350 5300
AR Path="/6152F552" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F552" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 5350 5050 50  0001 C CNN
F 1 "GND" H 5355 5127 50  0000 C CNN
F 2 "" H 5350 5300 50  0001 C CNN
F 3 "" H 5350 5300 50  0001 C CNN
	1    5350 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 6152F56A
P 6850 4800
AR Path="/6152F56A" Ref="L?"  Part="1" 
AR Path="/614F0720/6152F56A" Ref="L?"  Part="1" 
F 0 "L?" V 6950 4800 50  0000 C CNN
F 1 "9.1nH" V 6800 4800 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 6850 4800 50  0001 C CNN
F 3 "~" H 6850 4800 50  0001 C CNN
F 4 "LQW15AN9N1H00D" V 6850 4800 50  0001 C CNN "Part Number"
	1    6850 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 4800 6150 4800
Wire Wire Line
	6450 4800 6600 4800
Wire Wire Line
	7100 4900 7100 4800
Wire Wire Line
	6600 4800 6600 4900
Connection ~ 6600 4800
Wire Wire Line
	6600 4800 6700 4800
$Comp
L power:GND #PWR?
U 1 1 6152F576
P 6600 5200
AR Path="/6152F576" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F576" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 6600 4950 50  0001 C CNN
F 1 "GND" H 6605 5027 50  0000 C CNN
F 2 "" H 6600 5200 50  0001 C CNN
F 3 "" H 6600 5200 50  0001 C CNN
	1    6600 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6152F57C
P 7100 5200
AR Path="/6152F57C" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F57C" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 7100 4950 50  0001 C CNN
F 1 "GND" H 7105 5027 50  0000 C CNN
F 2 "" H 7100 5200 50  0001 C CNN
F 3 "" H 7100 5200 50  0001 C CNN
	1    7100 5200
	1    0    0    -1  
$EndComp
$Comp
L dk_Coaxial-Connectors-RF:142-0701-801 J?
U 1 1 6152F58B
P 7500 4800
AR Path="/6152F58B" Ref="J?"  Part="1" 
AR Path="/614F0720/6152F58B" Ref="J?"  Part="1" 
F 0 "J?" H 7578 5025 50  0000 C CNN
F 1 "142-0701-801" H 7578 4934 50  0000 C CNN
F 2 "digikey-footprints:RF_SMA_BoardEdge_142-0701-801" H 7700 5000 60  0001 L CNN
F 3 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701801.pdf" H 7700 5100 60  0001 L CNN
F 4 "J502-ND" H 7700 5200 60  0001 L CNN "Digi-Key_PN"
F 5 "142-0701-801" H 7700 5300 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 7700 5400 60  0001 L CNN "Category"
F 7 "Coaxial Connectors (RF)" H 7700 5500 60  0001 L CNN "Family"
F 8 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701801.pdf" H 7700 5600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cinch-connectivity-solutions-johnson/142-0701-801/J502-ND/35280" H 7700 5700 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN SMA JACK STR 50OHM EDGE MNT" H 7700 5800 60  0001 L CNN "Description"
F 11 "Cinch Connectivity Solutions Johnson" H 7700 5900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7700 6000 60  0001 L CNN "Status"
	1    7500 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7100 4800 7000 4800
Wire Wire Line
	7100 4800 7300 4800
Connection ~ 7100 4800
Wire Wire Line
	7500 5000 7500 5100
$Comp
L power:GND #PWR?
U 1 1 6152F595
P 7500 5100
AR Path="/6152F595" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F595" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 7500 4850 50  0001 C CNN
F 1 "GND" H 7505 4927 50  0000 C CNN
F 2 "" H 7500 5100 50  0001 C CNN
F 3 "" H 7500 5100 50  0001 C CNN
	1    7500 5100
	1    0    0    -1  
$EndComp
Text Label 9700 2300 2    50   ~ 0
RF1
Wire Wire Line
	7800 2300 7900 2300
Wire Wire Line
	7800 2000 7900 2000
Wire Wire Line
	8450 2300 8300 2300
Wire Wire Line
	8300 2300 8300 2400
Connection ~ 8300 2300
Wire Wire Line
	8200 2300 8300 2300
Wire Wire Line
	8200 2000 8300 2000
$Comp
L power:GND #PWR?
U 1 1 6152F5A4
P 7200 1900
AR Path="/6152F5A4" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F5A4" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 7200 1650 50  0001 C CNN
F 1 "GND" H 7205 1727 50  0000 C CNN
F 2 "" H 7200 1900 50  0001 C CNN
F 3 "" H 7200 1900 50  0001 C CNN
	1    7200 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6152F5AA
P 6900 1900
AR Path="/6152F5AA" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F5AA" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 6900 1650 50  0001 C CNN
F 1 "GND" H 6905 1727 50  0000 C CNN
F 2 "" H 6900 1900 50  0001 C CNN
F 3 "" H 6900 1900 50  0001 C CNN
	1    6900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2000 8300 2300
$Comp
L Device:L L?
U 1 1 6152F5B1
P 9200 2300
AR Path="/6152F5B1" Ref="L?"  Part="1" 
AR Path="/614F0720/6152F5B1" Ref="L?"  Part="1" 
F 0 "L?" V 9300 2300 50  0000 C CNN
F 1 "4.7nH" V 9150 2300 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 9200 2300 50  0001 C CNN
F 3 "~" H 9200 2300 50  0001 C CNN
F 4 "LQW15AN4N7C00D" V 9200 2300 50  0001 C CNN "Part Number"
	1    9200 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 2300 9700 2300
Wire Wire Line
	9350 2300 9450 2300
Connection ~ 9450 2300
Wire Wire Line
	9450 2300 9450 2400
$Comp
L power:GND #PWR?
U 1 1 6152F5C1
P 9450 2700
AR Path="/6152F5C1" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F5C1" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 9450 2450 50  0001 C CNN
F 1 "GND" H 9455 2527 50  0000 C CNN
F 2 "" H 9450 2700 50  0001 C CNN
F 3 "" H 9450 2700 50  0001 C CNN
	1    9450 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6152F5C7
P 8600 2300
AR Path="/6152F5C7" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F5C7" Ref="C?"  Part="1" 
F 0 "C?" V 8550 2200 50  0000 C CNN
F 1 "39pF" V 8650 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8638 2150 50  0001 C CNN
F 3 "~" H 8600 2300 50  0001 C CNN
F 4 "GRM1555C1H390JA01D" V 8600 2300 50  0001 C CNN "Part Number"
	1    8600 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6152F5CD
P 8300 2700
AR Path="/6152F5CD" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F5CD" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 8300 2450 50  0001 C CNN
F 1 "GND" H 8305 2527 50  0000 C CNN
F 2 "" H 8300 2700 50  0001 C CNN
F 3 "" H 8300 2700 50  0001 C CNN
	1    8300 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6152F5D3
P 7800 2700
AR Path="/6152F5D3" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F5D3" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 7800 2450 50  0001 C CNN
F 1 "GND" H 7805 2527 50  0000 C CNN
F 2 "" H 7800 2700 50  0001 C CNN
F 3 "" H 7800 2700 50  0001 C CNN
	1    7800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2300 7800 2000
Connection ~ 7800 2300
Wire Wire Line
	7800 2400 7800 2300
Wire Wire Line
	7600 2300 7800 2300
$Comp
L Device:L L?
U 1 1 6152F5DD
P 8050 2300
AR Path="/6152F5DD" Ref="L?"  Part="1" 
AR Path="/614F0720/6152F5DD" Ref="L?"  Part="1" 
F 0 "L?" V 8150 2300 50  0000 C CNN
F 1 "2.5nH" V 8000 2300 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 8050 2300 50  0001 C CNN
F 3 "~" H 8050 2300 50  0001 C CNN
F 4 "LQW15AN2N5B00D" V 8050 2300 50  0001 C CNN "Part Number"
	1    8050 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 6152F5E3
P 8050 2000
AR Path="/6152F5E3" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F5E3" Ref="C?"  Part="1" 
F 0 "C?" V 8000 1900 50  0000 C CNN
F 1 "3.3pF" V 8000 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8088 1850 50  0001 C CNN
F 3 "~" H 8050 2000 50  0001 C CNN
F 4 "GJM1555C1H3R3DB01D" V 8050 2000 50  0001 C CNN "Part Number"
	1    8050 2000
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 6152F5E9
P 8300 2550
AR Path="/6152F5E9" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F5E9" Ref="C?"  Part="1" 
F 0 "C?" H 8350 2650 50  0000 L CNN
F 1 "5.6pF" H 8350 2450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8338 2400 50  0001 C CNN
F 3 "~" H 8300 2550 50  0001 C CNN
F 4 "GRM1555C1H5R6CA01J" H 8300 2550 50  0001 C CNN "Part Number"
	1    8300 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6152F5EF
P 7800 2550
AR Path="/6152F5EF" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F5EF" Ref="C?"  Part="1" 
F 0 "C?" H 7850 2650 50  0000 L CNN
F 1 "C" H 7650 2650 50  0000 L CNN
F 2 "" H 7838 2400 50  0001 C CNN
F 3 "~" H 7800 2550 50  0001 C CNN
	1    7800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2900 4750 2900
Wire Wire Line
	4750 2800 5100 2800
Wire Wire Line
	5100 2700 4750 2700
Wire Wire Line
	4750 2600 5100 2600
Wire Wire Line
	6750 1350 6750 1550
Wire Wire Line
	7600 2150 7600 2300
Wire Wire Line
	7600 1550 7600 1850
$Comp
L Device:L L?
U 1 1 6152F600
P 7600 2000
AR Path="/6152F600" Ref="L?"  Part="1" 
AR Path="/614F0720/6152F600" Ref="L?"  Part="1" 
F 0 "L?" H 7700 2000 50  0000 C CNN
F 1 "47nH" H 7500 2000 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 7600 2000 50  0001 C CNN
F 3 "~" H 7600 2000 50  0001 C CNN
F 4 "LQW15AN47NJ00D" H 7600 2000 50  0001 C CNN "Part Number"
	1    7600 2000
	1    0    0    -1  
$EndComp
Connection ~ 7600 2300
Wire Wire Line
	6750 1550 6900 1550
Connection ~ 6900 1550
Wire Wire Line
	6900 1600 6900 1550
Wire Wire Line
	6900 1550 7200 1550
Wire Wire Line
	7200 1550 7600 1550
Connection ~ 7200 1550
Wire Wire Line
	7200 1550 7200 1600
$Comp
L Device:C C?
U 1 1 6152F611
P 7200 1750
AR Path="/6152F611" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F611" Ref="C?"  Part="1" 
F 0 "C?" H 7250 1850 50  0000 L CNN
F 1 "47pF" H 7250 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7238 1600 50  0001 C CNN
F 3 "~" H 7200 1750 50  0001 C CNN
F 4 "GRM1555C1H470JA01D" H 7200 1750 50  0001 C CNN "Part Number"
	1    7200 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6152F617
P 6900 1750
AR Path="/6152F617" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F617" Ref="C?"  Part="1" 
F 0 "C?" H 6950 1850 50  0000 L CNN
F 1 "47nF" H 6950 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6938 1600 50  0001 C CNN
F 3 "~" H 6900 1750 50  0001 C CNN
F 4 "GRM155R71C473KA01J" H 6900 1750 50  0001 C CNN "Part Number"
	1    6900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2300 5100 2300
Wire Wire Line
	4750 2400 5100 2400
Text Label 4750 2300 0    50   ~ 0
RFI_P
Text Label 4750 2400 0    50   ~ 0
RFI_N
Wire Wire Line
	1700 1550 1700 1500
Wire Wire Line
	1700 1500 1950 1500
Connection ~ 1700 1500
Wire Wire Line
	1700 1450 1700 1500
Wire Wire Line
	1950 1500 1950 1450
Wire Wire Line
	1450 1500 1700 1500
Wire Wire Line
	1450 1450 1450 1500
Wire Wire Line
	1950 1100 1700 1100
Wire Wire Line
	1950 1150 1950 1100
Wire Wire Line
	1700 1100 1700 1150
Connection ~ 1700 1100
Wire Wire Line
	1450 1100 1700 1100
Wire Wire Line
	1450 1150 1450 1100
Wire Wire Line
	1700 1000 1700 1100
$Comp
L power:GND #PWR?
U 1 1 6152F63B
P 1700 1550
AR Path="/6152F63B" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F63B" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 1700 1300 50  0001 C CNN
F 1 "GND" H 1705 1377 50  0000 C CNN
F 2 "" H 1700 1550 50  0001 C CNN
F 3 "" H 1700 1550 50  0001 C CNN
	1    1700 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6152F647
P 1700 1300
AR Path="/6152F647" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F647" Ref="C?"  Part="1" 
F 0 "C?" H 1650 1200 50  0000 C CNN
F 1 "1uF" H 1600 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1738 1150 50  0001 C CNN
F 3 "~" H 1700 1300 50  0001 C CNN
F 4 "GRM188R61A105KA61D" H 1700 1300 50  0001 C CNN "part Number"
	1    1700 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 6152F64D
P 1450 1300
AR Path="/6152F64D" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F64D" Ref="C?"  Part="1" 
F 0 "C?" H 1400 1200 50  0000 C CNN
F 1 "100nF" H 1550 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1488 1150 50  0001 C CNN
F 3 "~" H 1450 1300 50  0001 C CNN
F 4 "GRM155R71C104KA88D" H 1450 1300 50  0001 C CNN "Part Number"
	1    1450 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 1900 4950 1900
Wire Wire Line
	4950 1900 4950 1800
Connection ~ 4950 1800
Wire Wire Line
	5100 1800 4950 1800
Wire Wire Line
	4950 1800 4950 1700
Wire Wire Line
	4950 1700 4950 1600
Connection ~ 4950 1700
Wire Wire Line
	5100 1700 4950 1700
Wire Wire Line
	6300 2100 6600 2100
Text Label 4250 2100 1    50   ~ 0
DCC_SW
Wire Wire Line
	4150 2100 4350 2100
Text Label 6600 2100 2    50   ~ 0
DCC_SW
Wire Wire Line
	5050 2000 5100 2000
Wire Wire Line
	6300 3000 6400 3000
Wire Wire Line
	6400 3000 6400 3100
Connection ~ 6400 3100
Wire Wire Line
	6300 3100 6400 3100
Wire Wire Line
	6400 3100 6400 3200
Connection ~ 6400 3200
Wire Wire Line
	6300 3200 6400 3200
Wire Wire Line
	6400 3200 6400 3300
Wire Wire Line
	6400 3300 6400 3400
Connection ~ 6400 3300
Wire Wire Line
	6300 3300 6400 3300
$Comp
L power:GND #PWR?
U 1 1 6152F672
P 6400 3400
AR Path="/6152F672" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F672" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 6400 3150 50  0001 C CNN
F 1 "GND" H 6405 3227 50  0000 C CNN
F 2 "" H 6400 3400 50  0001 C CNN
F 3 "" H 6400 3400 50  0001 C CNN
	1    6400 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6152F678
P 4000 2100
AR Path="/6152F678" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F678" Ref="C?"  Part="1" 
F 0 "C?" V 3850 2100 50  0000 C CNN
F 1 "470nF" V 4150 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4038 1950 50  0001 C CNN
F 3 "~" H 4000 2100 50  0001 C CNN
F 4 "GRM155R61A474KE15D" V 4000 2100 50  0001 C CNN "Part Number"
	1    4000 2100
	0    1    1    0   
$EndComp
Connection ~ 6400 3000
Wire Wire Line
	6400 2900 6400 3000
Wire Wire Line
	6300 2900 6400 2900
Wire Wire Line
	3750 2100 3850 2100
Wire Wire Line
	3750 2150 3750 2100
$Comp
L power:GND #PWR?
U 1 1 6152F689
P 3750 2150
AR Path="/6152F689" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6152F689" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 3750 1900 50  0001 C CNN
F 1 "GND" H 3755 1977 50  0000 C CNN
F 2 "" H 3750 2150 50  0001 C CNN
F 3 "" H 3750 2150 50  0001 C CNN
	1    3750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2100 4650 2100
$Comp
L sx1262:SX1262IMLTRT U?
U 1 1 6152F6A5
P 5000 1700
AR Path="/6152F6A5" Ref="U?"  Part="1" 
AR Path="/614F0720/6152F6A5" Ref="U?"  Part="1" 
F 0 "U?" H 5700 1965 50  0000 C CNN
F 1 "SX1262IMLTRT" H 5700 1874 50  0000 C CNN
F 2 "Semtech-QFN24-0-0-*" H 5000 2100 50  0001 L CNN
F 3 "https://www.semtech.com/uploads/documents/DS_SX1261-2_V1.1.pdf" H 5000 2200 50  0001 L CNN
F 4 "IC" H 5000 2300 50  0001 L CNN "category"
F 5 "Integrated Circuits (ICs)" H 5000 2400 50  0001 L CNN "device class L1"
F 6 "RF Semiconductors and Devices" H 5000 2500 50  0001 L CNN "device class L2"
F 7 "Transceivers" H 5000 2600 50  0001 L CNN "device class L3"
F 8 "TXRX LORA SUB-GHZ 22DBM 24MLPQ" H 5000 2700 50  0001 L CNN "digikey description"
F 9 "SX1262IMLTRTCT-ND" H 5000 2800 50  0001 L CNN "digikey part number"
F 10 "1mm" H 5000 2900 50  0001 L CNN "height"
F 11 "SPI" H 5000 3000 50  0001 L CNN "interface"
F 12 "yes" H 5000 3100 50  0001 L CNN "lead free"
F 13 "82c7b71869c902e0" H 5000 3200 50  0001 L CNN "library id"
F 14 "Semtech" H 5000 3300 50  0001 L CNN "manufacturer"
F 15 "960MHz" H 5000 3400 50  0001 L CNN "max frequency"
F 16 "3.7V" H 5000 3500 50  0001 L CNN "max supply voltage"
F 17 "1.8V" H 5000 3600 50  0001 L CNN "min supply voltage"
F 18 "947-SX1262IMLTRT" H 5000 3700 50  0001 L CNN "mouser part number"
F 19 "3" H 5000 3800 50  0001 L CNN "number of GPIO"
F 20 "VFQFN24" H 5000 3900 50  0001 L CNN "package"
F 21 "yes" H 5000 4000 50  0001 L CNN "rohs"
F 22 "0mm" H 5000 4100 50  0001 L CNN "standoff height"
F 23 "+85°C" H 5000 4200 50  0001 L CNN "temperature range high"
F 24 "-40°C" H 5000 4300 50  0001 L CNN "temperature range low"
	1    5000 1700
	1    0    0    -1  
$EndComp
Text HLabel 4750 2600 0    50   Input ~ 0
SCK
Text HLabel 4750 2700 0    50   Input ~ 0
MOSI
Text HLabel 4750 2800 0    50   Input ~ 0
MISO
Text HLabel 4750 2900 0    50   Input ~ 0
!SS
Text GLabel 4950 1600 1    50   Input ~ 0
3v3
Text GLabel 1700 1000 1    50   Input ~ 0
3v3
Text Label 5050 2000 2    50   ~ 0
VR_PA
Text Label 6750 1350 2    50   ~ 0
VR_PA
Wire Wire Line
	5450 4600 5450 4400
Wire Wire Line
	5450 4400 5500 4400
Wire Wire Line
	5050 4400 4950 4400
Text HLabel 4950 4400 0    50   Input ~ 0
ANT_SW
$Comp
L Device:R R?
U 1 1 6160F852
P 5200 4400
AR Path="/6160F852" Ref="R?"  Part="1" 
AR Path="/614F0720/6160F852" Ref="R?"  Part="1" 
F 0 "R?" V 5150 4550 50  0000 C CNN
F 1 "100R" V 5200 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5130 4400 50  0001 C CNN
F 3 "~" H 5200 4400 50  0001 C CNN
F 4 "CRCW0402100RFKED" V 5200 4400 50  0001 C CNN "Part Number"
	1    5200 4400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 616125ED
P 5900 4400
AR Path="/616125ED" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/616125ED" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5900 4150 50  0001 C CNN
F 1 "GND" V 5905 4227 50  0000 C CNN
F 2 "" H 5900 4400 50  0001 C CNN
F 3 "" H 5900 4400 50  0001 C CNN
	1    5900 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 4400 5900 4400
Wire Wire Line
	5350 4400 5450 4400
Connection ~ 5450 4400
Text Notes 7650 2700 0    50   ~ 0
Needed?\n
$Comp
L Device:C C?
U 1 1 615F2583
P 7100 5050
AR Path="/615F2583" Ref="C?"  Part="1" 
AR Path="/614F0720/615F2583" Ref="C?"  Part="1" 
F 0 "C?" H 7050 4950 50  0000 C CNN
F 1 "3.3pF" H 6950 5150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7138 4900 50  0001 C CNN
F 3 "~" H 7100 5050 50  0001 C CNN
F 4 "GJM1555C1H3R3DB01D" V 7100 5050 50  0001 C CNN "Part Number"
	1    7100 5050
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 6152F5B7
P 9450 2550
AR Path="/6152F5B7" Ref="C?"  Part="1" 
AR Path="/614F0720/6152F5B7" Ref="C?"  Part="1" 
F 0 "C?" H 9500 2650 50  0000 L CNN
F 1 "2.2pF" H 9500 2450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9488 2400 50  0001 C CNN
F 3 "~" H 9450 2550 50  0001 C CNN
F 4 "GRM1555C1H2R2BA01D" H 9450 2550 50  0001 C CNN "Part Number"
	1    9450 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6160203C
P 6600 5050
AR Path="/6160203C" Ref="C?"  Part="1" 
AR Path="/614F0720/6160203C" Ref="C?"  Part="1" 
F 0 "C?" H 6550 4950 50  0000 C CNN
F 1 "3.3pF" H 6450 5150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6638 4900 50  0001 C CNN
F 3 "~" H 6600 5050 50  0001 C CNN
F 4 "GJM1555C1H3R3DB01D" V 6600 5050 50  0001 C CNN "Part Number"
	1    6600 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 2300 9050 2300
$Comp
L Device:C C?
U 1 1 61614F1B
P 6300 4800
AR Path="/61614F1B" Ref="C?"  Part="1" 
AR Path="/614F0720/61614F1B" Ref="C?"  Part="1" 
F 0 "C?" V 6250 4700 50  0000 C CNN
F 1 "39pF" V 6350 4950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6338 4650 50  0001 C CNN
F 3 "~" H 6300 4800 50  0001 C CNN
F 4 "GRM1555C1H390JA01D" V 6300 4800 50  0001 C CNN "Part Number"
	1    6300 4800
	0    1    1    0   
$EndComp
Text Notes 4600 5350 0    50   ~ 0
Needed?\n
$Comp
L Device:C C?
U 1 1 616288B3
P 5650 4400
AR Path="/616288B3" Ref="C?"  Part="1" 
AR Path="/614F0720/616288B3" Ref="C?"  Part="1" 
F 0 "C?" V 5600 4450 50  0000 L CNN
F 1 "1nF" V 5700 4450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5688 4250 50  0001 C CNN
F 3 "~" H 5650 4400 50  0001 C CNN
F 4 "GRM155R72A102KA01D" H 5650 4400 50  0001 C CNN "Part Number"
	1    5650 4400
	0    1    1    0   
$EndComp
Text Notes 1300 1900 0    50   ~ 0
VDD & Vbat Decoupling Caps
$Comp
L Device:C C?
U 1 1 61632122
P 1950 1300
AR Path="/61632122" Ref="C?"  Part="1" 
AR Path="/614F0720/61632122" Ref="C?"  Part="1" 
F 0 "C?" H 1900 1200 50  0000 C CNN
F 1 "1uF" H 1850 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1988 1150 50  0001 C CNN
F 3 "~" H 1950 1300 50  0001 C CNN
F 4 "GRM188R61A105KA61D" H 1950 1300 50  0001 C CNN "part Number"
	1    1950 1300
	-1   0    0    1   
$EndComp
$Comp
L VLS201610CX-150M-1:VLS201610CX-150M-1 L?
U 1 1 61661D80
P 4500 2100
F 0 "L?" H 4500 2200 50  0000 C CNN
F 1 "15uH" H 4500 2050 50  0000 C CNN
F 2 "VLS2016" H 5150 2150 50  0001 L CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/inductor/inductor/smd/catalog/inductor_commercial_power_vls201610cx-1_en.pdf" H 5150 2050 50  0001 L CNN
F 4 "Inductors for power circuits, Wound ferrite" H 5150 1950 50  0001 L CNN "Description"
F 5 "" H 5150 1850 50  0001 L CNN "Height"
F 6 "TDK" H 5150 1750 50  0001 L CNN "Manufacturer_Name"
F 7 "VLS201610CX-150M-1" H 5150 1650 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "810-VLS201610CX150M1" H 5150 1550 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/TDK/VLS201610CX-150M-1?qs=1mbolxNpo8cDxpAAQe7QDA%3D%3D" H 5150 1450 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 5150 1350 50  0001 L CNN "Arrow Part Number"
F 11 "" H 5150 1250 50  0001 L CNN "Arrow Price/Stock"
	1    4500 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 6167BC3F
P 2550 3100
F 0 "FB?" V 2313 3100 50  0000 C CNN
F 1 "10R/100MHz" V 2404 3100 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" V 2480 3100 50  0001 C CNN
F 3 "~" H 2550 3100 50  0001 C CNN
F 4 "BLM15PG100SN1D" V 2550 3100 50  0001 C CNN "Part Number"
	1    2550 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 1700 6450 1700
Text HLabel 6450 1700 2    50   Input ~ 0
~RESET
Text HLabel 6450 1900 2    50   Input ~ 0
BUSY
Wire Wire Line
	6300 1900 6450 1900
$Comp
L TYETBCSANF-32.000000:TYETBCSANF-32.000000 Y?
U 1 1 61698E39
P 3600 3150
F 0 "Y?" H 3600 3350 50  0000 C CNN
F 1 "TYETBCSANF-32.000000" H 3600 2900 50  0000 C CNN
F 2 "TY" H 4750 3250 50  0001 L CNN
F 3 "http://www.taitien.com/wp-content/uploads/2015/12/XO-0081_TY.pdf" H 4750 3150 50  0001 L CNN
F 4 "OSC TCXO 32MHZ 3.3V CLP SW SMD" H 4750 3050 50  0001 L CNN "Description"
F 5 "" H 4750 2950 50  0001 L CNN "Height"
F 6 "TAITIEN" H 4750 2850 50  0001 L CNN "Manufacturer_Name"
F 7 "TYETBCSANF-32.000000" H 4750 2750 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 4750 2650 50  0001 L CNN "Mouser Part Number"
F 9 "" H 4750 2550 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 4750 2450 50  0001 L CNN "Arrow Part Number"
F 11 "" H 4750 2350 50  0001 L CNN "Arrow Price/Stock"
	1    3600 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 616B271E
P 2850 3350
AR Path="/616B271E" Ref="C?"  Part="1" 
AR Path="/614F0720/616B271E" Ref="C?"  Part="1" 
F 0 "C?" H 2800 3250 50  0000 C CNN
F 1 "100nF" H 3050 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2888 3200 50  0001 C CNN
F 3 "~" H 2850 3350 50  0001 C CNN
F 4 "GRM155R71C104KA88D" H 2850 3350 50  0001 C CNN "Part Number"
	1    2850 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 3250 3050 3250
Wire Wire Line
	3050 3250 3050 3500
Wire Wire Line
	3050 3500 2850 3500
Wire Wire Line
	2850 3500 2850 3600
$Comp
L power:GND #PWR?
U 1 1 616C24D5
P 2850 3600
AR Path="/616C24D5" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/616C24D5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2850 3350 50  0001 C CNN
F 1 "GND" H 2855 3427 50  0000 C CNN
F 2 "" H 2850 3600 50  0001 C CNN
F 3 "" H 2850 3600 50  0001 C CNN
	1    2850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3250 4250 3250
Wire Wire Line
	4250 3250 4250 3600
$Comp
L power:GND #PWR?
U 1 1 616C69F7
P 4250 3600
AR Path="/616C69F7" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/616C69F7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4250 3350 50  0001 C CNN
F 1 "GND" H 4255 3427 50  0000 C CNN
F 2 "" H 4250 3600 50  0001 C CNN
F 3 "" H 4250 3600 50  0001 C CNN
	1    4250 3600
	1    0    0    -1  
$EndComp
Connection ~ 2850 3500
Wire Wire Line
	2650 3100 2850 3100
Wire Wire Line
	2850 3200 2850 3100
Connection ~ 2850 3100
Wire Wire Line
	2850 3100 3100 3100
$Comp
L Device:C C?
U 1 1 617146ED
P 4400 3100
F 0 "C?" V 4250 3100 50  0000 C CNN
F 1 "10pF" V 4550 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4438 2950 50  0001 C CNN
F 3 "~" H 4400 3100 50  0001 C CNN
F 4 "GRM1555C1H100JA01J" V 4400 3100 50  0001 C CNN "Part Number"
	1    4400 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 617171F3
P 4800 3100
F 0 "R?" V 4700 3100 50  0000 C CNN
F 1 "220R" V 4800 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4730 3100 50  0001 C CNN
F 3 "~" H 4800 3100 50  0001 C CNN
F 4 "CRCW0402220RJNED" V 4800 3100 50  0001 C CNN "Part Number"
	1    4800 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3100 4250 3100
Wire Wire Line
	4550 3100 4650 3100
Wire Wire Line
	4950 3100 5100 3100
$Comp
L Device:R R?
U 1 1 617351DE
P 6450 5600
AR Path="/617351DE" Ref="R?"  Part="1" 
AR Path="/614F0720/617351DE" Ref="R?"  Part="1" 
F 0 "R?" V 6400 5750 50  0000 C CNN
F 1 "100R" V 6450 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6380 5600 50  0001 C CNN
F 3 "~" H 6450 5600 50  0001 C CNN
F 4 "CRCW0402100RFKED" V 6450 5600 50  0001 C CNN "Part Number"
	1    6450 5600
	0    1    1    0   
$EndComp
Text HLabel 6450 2500 2    50   Input ~ 0
DIO1
$Comp
L Device:R R?
U 1 1 61687A29
P 8800 4500
AR Path="/61687A29" Ref="R?"  Part="1" 
AR Path="/614F0720/61687A29" Ref="R?"  Part="1" 
F 0 "R?" H 8870 4546 50  0000 L CNN
F 1 "R" H 8870 4455 50  0000 L CNN
F 2 "" V 8730 4500 50  0001 C CNN
F 3 "~" H 8800 4500 50  0001 C CNN
	1    8800 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 61687A2F
P 8800 4850
AR Path="/61687A2F" Ref="D?"  Part="1" 
AR Path="/614F0720/61687A2F" Ref="D?"  Part="1" 
F 0 "D?" V 8839 4732 50  0000 R CNN
F 1 "TX_LED" V 8748 4732 50  0000 R CNN
F 2 "" H 8800 4850 50  0001 C CNN
F 3 "~" H 8800 4850 50  0001 C CNN
	1    8800 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61687A35
P 8800 5100
AR Path="/61687A35" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/61687A35" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8800 4850 50  0001 C CNN
F 1 "GND" H 8805 4927 50  0000 C CNN
F 2 "" H 8800 5100 50  0001 C CNN
F 3 "" H 8800 5100 50  0001 C CNN
	1    8800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5100 8800 5000
Wire Wire Line
	8800 4700 8800 4650
Wire Wire Line
	8800 4350 8800 4250
$Comp
L Device:R R?
U 1 1 6168CCFD
P 9350 4500
AR Path="/6168CCFD" Ref="R?"  Part="1" 
AR Path="/614F0720/6168CCFD" Ref="R?"  Part="1" 
F 0 "R?" H 9420 4546 50  0000 L CNN
F 1 "R" H 9420 4455 50  0000 L CNN
F 2 "" V 9280 4500 50  0001 C CNN
F 3 "~" H 9350 4500 50  0001 C CNN
	1    9350 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6168CD03
P 9350 4850
AR Path="/6168CD03" Ref="D?"  Part="1" 
AR Path="/614F0720/6168CD03" Ref="D?"  Part="1" 
F 0 "D?" V 9389 4732 50  0000 R CNN
F 1 "RX_LED" V 9298 4732 50  0000 R CNN
F 2 "" H 9350 4850 50  0001 C CNN
F 3 "~" H 9350 4850 50  0001 C CNN
	1    9350 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6168CD09
P 9350 5100
AR Path="/6168CD09" Ref="#PWR?"  Part="1" 
AR Path="/614F0720/6168CD09" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9350 4850 50  0001 C CNN
F 1 "GND" H 9355 4927 50  0000 C CNN
F 2 "" H 9350 5100 50  0001 C CNN
F 3 "" H 9350 5100 50  0001 C CNN
	1    9350 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5100 9350 5000
Wire Wire Line
	9350 4700 9350 4650
Wire Wire Line
	9350 4350 9350 4250
Text HLabel 8800 4250 1    50   Input ~ 0
TX_LED
Text HLabel 9350 4250 1    50   Input ~ 0
RX_LED
Wire Wire Line
	6300 2300 7600 2300
$EndSCHEMATC