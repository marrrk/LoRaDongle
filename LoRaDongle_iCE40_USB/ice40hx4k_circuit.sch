EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 6 5
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
L ICE40HX4K-BG121:ICE40HX4K-BG121 IC?
U 1 1 61986C08
P 6700 2750
F 0 "IC?" H 7750 3015 50  0000 C CNN
F 1 "ICE40HX4K-BG121" H 7750 2924 50  0000 C CNN
F 2 "BGA121C80P11X11_900X900X110" H 8650 2850 50  0001 L CNN
F 3 "http://www.latticesemi.com/iCE40" H 8650 2750 50  0001 L CNN
F 4 "IC FPGA 93 I/O 121CABGA" H 8650 2650 50  0001 L CNN "Description"
F 5 "1.1" H 8650 2550 50  0001 L CNN "Height"
F 6 "Lattice Semiconductor" H 8650 2450 50  0001 L CNN "Manufacturer_Name"
F 7 "ICE40HX4K-BG121" H 8650 2350 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "842-ICE40HX4K-BG121" H 8650 2250 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Lattice/ICE40HX4K-BG121?qs=r5DSvlrkXmJ1BLZOg5%2FxBQ%3D%3D" H 8650 2150 50  0001 L CNN "Mouser Price/Stock"
F 10 "ICE40HX4K-BG121" H 8650 2050 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ice40hx4k-bg121/lattice-semiconductor?region=nac" H 8650 1950 50  0001 L CNN "Arrow Price/Stock"
	1    6700 2750
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Lattice:ICE40HX4K-TQ144 U?
U 5 1 619BAE82
P 4950 2950
F 0 "U?" H 5694 2996 50  0000 L CNN
F 1 "ICE40HX4K-TQ144" H 5694 2905 50  0000 L CNN
F 2 "Package_QFP:TQFP-144_20x20mm_P0.5mm" H 5950 1050 50  0001 R CNN
F 3 "http://www.latticesemi.com/Products/FPGAandCPLD/iCE40" H 3950 5450 50  0001 C CNN
	5    4950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 7250 9550 7250
Text Label 9550 7250 0    50   ~ 0
CDONE
$Comp
L N25Q032A13ESC40F:N25Q032A13ESC40F IC?
U 1 1 619D2169
P 13350 2200
F 0 "IC?" H 13300 2615 50  0000 C CNN
F 1 "N25Q032A13ESC40F" H 13300 2524 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 14900 2300 50  0001 L CNN
F 3 "https://media-www.micron.com/-/media/client/global/documents/products/data-sheet/nor-flash/serial-nor/n25q/n25q_32mb_3v_65nm.pdf?rev=27fc6016fc5249adb4bb8f221e72b395" H 14900 2200 50  0001 L CNN
F 4 "FLASH - NOR Memory IC 32Mb (8M x 4) SPI 108MHz  8-SO" H 14900 2100 50  0001 L CNN "Description"
F 5 "1.75" H 14900 2000 50  0001 L CNN "Height"
F 6 "Alliance Memory" H 14900 1900 50  0001 L CNN "Manufacturer_Name"
F 7 "N25Q032A13ESC40F" H 14900 1800 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "913-N25Q032A13ESC40F" H 14900 1700 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Alliance-Memory/N25Q032A13ESC40F?qs=W%2FMpXkg%252BdQ70%2FmLJsMq3Ww%3D%3D" H 14900 1600 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 14900 1500 50  0001 L CNN "Arrow Part Number"
F 11 "" H 14900 1400 50  0001 L CNN "Arrow Price/Stock"
	1    13350 2200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
