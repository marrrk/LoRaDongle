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
L FPGA_Lattice:ICE40HX4K-TQ144 U?
U 5 1 619BAE82
P 1600 1700
F 0 "U?" H 2344 1746 50  0000 L CNN
F 1 "ICE40HX4K-TQ144" H 2344 1655 50  0000 L CNN
F 2 "Package_QFP:TQFP-144_20x20mm_P0.5mm" H 2600 -200 50  0001 R CNN
F 3 "http://www.latticesemi.com/Products/FPGAandCPLD/iCE40" H 600 4200 50  0001 C CNN
	5    1600 1700
	1    0    0    -1  
$EndComp
$Comp
L N25Q032A13ESC40F:N25Q032A13ESC40F IC?
U 1 1 619D2169
P 9050 1650
F 0 "IC?" H 9000 2065 50  0000 C CNN
F 1 "N25Q032A13ESC40F" H 9000 1974 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 10600 1750 50  0001 L CNN
F 3 "https://media-www.micron.com/-/media/client/global/documents/products/data-sheet/nor-flash/serial-nor/n25q/n25q_32mb_3v_65nm.pdf?rev=27fc6016fc5249adb4bb8f221e72b395" H 10600 1650 50  0001 L CNN
F 4 "FLASH - NOR Memory IC 32Mb (8M x 4) SPI 108MHz  8-SO" H 10600 1550 50  0001 L CNN "Description"
F 5 "1.75" H 10600 1450 50  0001 L CNN "Height"
F 6 "Alliance Memory" H 10600 1350 50  0001 L CNN "Manufacturer_Name"
F 7 "N25Q032A13ESC40F" H 10600 1250 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "913-N25Q032A13ESC40F" H 10600 1150 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Alliance-Memory/N25Q032A13ESC40F?qs=W%2FMpXkg%252BdQ70%2FmLJsMq3Ww%3D%3D" H 10600 1050 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 10600 950 50  0001 L CNN "Arrow Part Number"
F 11 "" H 10600 850 50  0001 L CNN "Arrow Price/Stock"
	1    9050 1650
	1    0    0    -1  
$EndComp
Text Label 9550 5150 2    50   ~ 0
CRESET_B
Text Notes 9250 5300 0    50   ~ 0
Have a push button to ground?
Wire Wire Line
	9750 5150 9550 5150
Wire Wire Line
	10400 5150 10400 5050
Wire Wire Line
	10050 5150 10400 5150
$Comp
L Device:R R?
U 1 1 619E1A4D
P 9900 5150
F 0 "R?" V 9693 5150 50  0000 C CNN
F 1 "10K" V 9784 5150 50  0000 C CNN
F 2 "" V 9830 5150 50  0001 C CNN
F 3 "~" H 9900 5150 50  0001 C CNN
	1    9900 5150
	0    1    1    0   
$EndComp
Text Notes 9000 4700 0    50   ~ 0
Connect to an LED to indicate done configuring?
Text Label 9550 4500 2    50   ~ 0
CDONE
$Comp
L Device:R R?
U 1 1 619F47BF
P 9900 4500
F 0 "R?" V 9693 4500 50  0000 C CNN
F 1 "R" V 9784 4500 50  0000 C CNN
F 2 "" V 9830 4500 50  0001 C CNN
F 3 "~" H 9900 4500 50  0001 C CNN
	1    9900 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 4500 10400 4500
Wire Wire Line
	10400 4500 10400 4400
Text GLabel 10400 4400 1    50   Output ~ 0
3V3
Wire Wire Line
	9750 4500 9550 4500
Text GLabel 10400 5050 1    50   Output ~ 0
3V3
$Comp
L ICE40UP5K-UWG30ITR1K:ICE40UP5K-UWG30ITR1K IC?
U 1 1 61AF95E0
P 4250 2850
F 0 "IC?" H 5350 3115 50  0000 C CNN
F 1 "ICE40UP5K-UWG30ITR1K" H 5350 3024 50  0000 C CNN
F 2 "BGA30C40P5X6_211X254X60" H 6300 2950 50  0001 L CNN
F 3 "http://www.latticesemi.com/-/media/LatticeSemi/Documents/DataSheets/iCE/FPGA-DS-02008-1-6-iCE40-UltraPlus-Family-Data-Sheet.ashx?document_id=51968" H 6300 2850 50  0001 L CNN
F 4 "FPGA - Field Programmable Gate Array iCE40-UltraPlus, 5280 LUTs, 1.2V" H 6300 2750 50  0001 L CNN "Description"
F 5 "0.6" H 6300 2650 50  0001 L CNN "Height"
F 6 "Lattice Semiconductor" H 6300 2550 50  0001 L CNN "Manufacturer_Name"
F 7 "ICE40UP5K-UWG30ITR1K" H 6300 2450 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "842-40UP5KUWG30ITR1K" H 6300 2350 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Lattice/ICE40UP5K-UWG30ITR1K?qs=Rp3RbKSfAt0rwndd2oX17g%3D%3D" H 6300 2250 50  0001 L CNN "Mouser Price/Stock"
F 10 "ICE40UP5K-UWG30ITR1K" H 6300 2150 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ice40up5k-uwg30itr1k/lattice-semiconductor?region=nac" H 6300 2050 50  0001 L CNN "Arrow Price/Stock"
	1    4250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3050 6600 3050
Wire Wire Line
	6450 4050 6700 4050
Text Label 6600 3050 0    50   ~ 0
CDONE
Text Label 6700 4050 0    50   ~ 0
CRESET_B
Text Notes 1450 4550 0    50   ~ 0
Need an Oscillator?
$EndSCHEMATC
