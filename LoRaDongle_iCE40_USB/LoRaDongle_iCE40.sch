EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "LoRa Dongle"
Date ""
Rev ""
Comp "Mark Njoroge"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2650 5100 1350 750 
U 6141DFDA
F0 "Power Management" 50
F1 "power_management.sch" 50
$EndSheet
$Comp
L power:GND #PWR0102
U 1 1 613473D1
P 1200 4450
F 0 "#PWR0102" H 1200 4200 50  0001 C CNN
F 1 "GND" H 1205 4277 50  0000 C CNN
F 2 "" H 1200 4450 50  0001 C CNN
F 3 "" H 1200 4450 50  0001 C CNN
	1    1200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2000 2250 2100
$Comp
L power:GND #PWR01
U 1 1 61702A0E
P 2250 2100
F 0 "#PWR01" H 2250 1850 50  0001 C CNN
F 1 "GND" H 2255 1927 50  0000 C CNN
F 2 "" H 2250 2100 50  0001 C CNN
F 3 "" H 2250 2100 50  0001 C CNN
	1    2250 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Dual J4
U 1 1 616C0AFF
P 3950 1800
F 0 "J4" H 3950 1947 50  0000 C CNN
F 1 "Jumper" H 3950 2038 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3950 1800 50  0001 C CNN
F 3 "~" H 3950 1800 50  0001 C CNN
	1    3950 1800
	-1   0    0    1   
$EndComp
Text Label 4350 1800 0    50   ~ 0
V_USB
Wire Wire Line
	4350 1800 4200 1800
$Comp
L power:+5V #PWR03
U 1 1 616C435A
P 3950 1500
F 0 "#PWR03" H 3950 1350 50  0001 C CNN
F 1 "+5V" H 3965 1673 50  0000 C CNN
F 2 "" H 3950 1500 50  0001 C CNN
F 3 "" H 3950 1500 50  0001 C CNN
	1    3950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1700 3950 1550
Text Label 2250 1400 0    50   ~ 0
V_USB
Connection ~ 2250 1650
Wire Wire Line
	2250 1650 2250 1400
Wire Wire Line
	2250 1650 2250 1700
$Comp
L Device:C C1
U 1 1 61593DC4
P 2250 1850
F 0 "C1" H 2150 1750 50  0000 C CNN
F 1 "0.1uF" H 2100 2000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 2288 1700 50  0001 C CNN
F 3 "~" H 2250 1850 50  0001 C CNN
F 4 "GCM155R71C104KA55J" V 2250 1850 50  0001 C CNN "Part Number"
	1    2250 1850
	-1   0    0    1   
$EndComp
$Comp
L dk_Ferrite-Beads-and-Chips:BLM18AG601SN1D FB1
U 1 1 615E0B04
P 1800 1650
F 0 "FB1" H 1800 1950 60  0000 C CNN
F 1 "600R/0.5A" H 1800 1850 60  0000 C CNN
F 2 "digikey-footprints:0603" H 2000 1850 60  0001 L CNN
F 3 "https://www.murata.com/en-us/products/productdata/8796738650142/ENFA0003.pdf" H 2000 1950 60  0001 L CNN
F 4 "490-1014-1-ND" H 2000 2050 60  0001 L CNN "Digi-Key_PN"
F 5 "BLM18AG601SN1D" H 2000 2150 60  0001 L CNN "MPN"
F 6 "Filters" H 2000 2250 60  0001 L CNN "Category"
F 7 "Ferrite Beads and Chips" H 2000 2350 60  0001 L CNN "Family"
F 8 "https://www.murata.com/en-us/products/productdata/8796738650142/ENFA0003.pdf" H 2000 2450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/murata-electronics-north-america/BLM18AG601SN1D/490-1014-1-ND/584462" H 2000 2550 60  0001 L CNN "DK_Detail_Page"
F 10 "FERRITE BEAD 600 OHM 0603 1LN" H 2000 2650 60  0001 L CNN "Description"
F 11 "Murata Electronics North America" H 2000 2750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2000 2850 60  0001 L CNN "Status"
	1    1800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1650 1600 1650
Wire Wire Line
	2000 1650 2250 1650
Wire Wire Line
	2150 3950 2300 3950
Wire Wire Line
	2150 3850 2300 3850
Text Label 1650 3650 0    50   ~ 0
VBUS
Wire Wire Line
	1500 3650 1650 3650
$Comp
L Device:R R2
U 1 1 6163C2A1
P 2000 3950
F 0 "R2" V 2100 3950 50  0000 C CNN
F 1 "10R" V 2000 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 1930 3950 50  0001 C CNN
F 3 "~" H 2000 3950 50  0001 C CNN
	1    2000 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 6163BC45
P 2000 3850
F 0 "R1" V 1900 3850 50  0000 C CNN
F 1 "10R" V 2000 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 1930 3850 50  0001 C CNN
F 3 "~" H 2000 3850 50  0001 C CNN
	1    2000 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 4250 1200 4450
$Comp
L Connector:USB_A J1
U 1 1 6134135C
P 1200 3850
F 0 "J1" H 1257 4317 50  0000 C CNN
F 1 "USB_A" H 1257 4226 50  0000 C CNN
F 2 "Connector_USB:USB_A_CNCTech_1001-011-01101_Horizontal" H 1350 3800 50  0001 C CNN
F 3 " ~" H 1350 3800 50  0001 C CNN
	1    1200 3850
	1    0    0    -1  
$EndComp
NoConn ~ 1100 4250
Wire Wire Line
	1500 3950 1850 3950
Wire Wire Line
	1500 3850 1850 3850
$Sheet
S 2300 3550 1350 750 
U 618AACD4
F0 "USB_Interface" 50
F1 "USB_Interface.sch" 50
F2 "SPI_SCK" O R 3650 3650 50 
F3 "SPI_MOSI" O R 3650 3750 50 
F4 "SPI_MISO" O R 3650 3850 50 
F5 "SPI_SS" O R 3650 3950 50 
F6 "iCE_CDONE" O R 3650 4100 50 
F7 "iCE_CRESET" O R 3650 4200 50 
F8 "USB_D-" I L 2300 3950 50 
F9 "UBS_D+" I L 2300 3850 50 
$EndSheet
Text Notes 5900 1250 0    50   ~ 0
Connector from External FTDI Breakout
Text Notes 3300 2200 0    50   ~ 0
Choose between external connector or USB connector
$Sheet
S 4850 3300 1900 1350
U 618D30E5
F0 "ice40up5k_circuit" 50
F1 "ice40up5k_circuit.sch" 50
F2 "iCE_CDONE" I L 4850 4100 50 
F3 "iCE_CRESET_B" I L 4850 4200 50 
F4 "iCE_SCK" I L 4850 3650 50 
F5 "iCE_SS_B" I L 4850 3950 50 
F6 "FLASH_MOSI" I L 4850 3750 50 
F7 "FLASH_MISO" I L 4850 3850 50 
F8 "Tx_LED" I R 6750 4450 50 
F9 "Rx_LED" I R 6750 4550 50 
F10 "ANTENNA_SW" I R 6750 3400 50 
F11 "LoRa_~RESET" I R 6750 3600 50 
F12 "LoRa_Busy" I R 6750 3700 50 
F13 "LoRa_DIO1" I R 6750 3800 50 
F14 "LoRa_SCK" I R 6750 3950 50 
F15 "LoRa_MOSI" I R 6750 4050 50 
F16 "LoRa_MISO" I R 6750 4150 50 
F17 "LoRa_!SS" I R 6750 4250 50 
$EndSheet
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 61B8EE64
P 6150 1850
F 0 "J2" H 6150 2300 50  0000 C CNN
F 1 "Conn_01x08" H 6068 2276 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 6150 1850 50  0001 C CNN
F 3 "~" H 6150 1850 50  0001 C CNN
	1    6150 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 3400 8750 3400
Wire Wire Line
	6750 3600 6950 3600
Wire Wire Line
	6750 3700 8050 3700
Wire Wire Line
	6750 3800 6950 3800
Wire Wire Line
	6750 3950 8050 3950
Wire Wire Line
	6750 4050 6950 4050
Wire Wire Line
	6750 4150 8050 4150
Wire Wire Line
	6750 4250 6950 4250
Wire Wire Line
	6750 4450 8750 4450
Wire Wire Line
	6750 4550 8750 4550
Wire Wire Line
	6350 2250 6750 2250
Wire Wire Line
	6350 2050 6700 2050
Wire Wire Line
	6350 1650 6450 1650
Wire Wire Line
	6350 1850 6450 1850
Wire Wire Line
	6350 2150 6450 2150
Wire Wire Line
	6350 1950 6900 1950
Wire Wire Line
	6350 1750 6900 1750
Text Label 6750 2250 0    50   ~ 0
V_conn
$Comp
L power:GND #PWR02
U 1 1 61B86EAD
P 6700 2050
F 0 "#PWR02" H 6700 1800 50  0001 C CNN
F 1 "GND" V 6705 1877 50  0000 C CNN
F 2 "" H 6700 2050 50  0001 C CNN
F 3 "" H 6700 2050 50  0001 C CNN
	1    6700 2050
	0    -1   -1   0   
$EndComp
Text Label 6900 1550 0    50   ~ 0
SPI_SCK
Text Label 6900 1750 0    50   ~ 0
SPI_MOSI
Text Label 6900 1950 0    50   ~ 0
SPI_MISO
Text Label 6900 2150 0    50   ~ 0
SPI_SS
Text Label 6900 1850 0    50   ~ 0
ICE_CDONE
Wire Wire Line
	3650 3650 4850 3650
Wire Wire Line
	3650 3750 4850 3750
Wire Wire Line
	3650 3850 4850 3850
Wire Wire Line
	3650 3950 4850 3950
Wire Wire Line
	3650 4100 4850 4100
Wire Wire Line
	3650 4200 4850 4200
Text Label 4250 4200 0    50   ~ 0
ICE_CRESET
Text Label 4250 4100 0    50   ~ 0
ICE_CDONE
Text Label 4250 3950 0    50   ~ 0
SPI_SS
Text Label 4250 3850 0    50   ~ 0
SPI_MISO
Text Label 4250 3750 0    50   ~ 0
SPI_MOSI
Text Label 1350 1650 2    50   ~ 0
VBUS
$Sheet
S 8750 3300 1900 1350
U 614F0720
F0 "RF Circuitry" 50
F1 "sx1261_circuitry.sch" 50
F2 "ANT_SW" I L 8750 3400 50 
F3 "~RESET" I L 8750 3600 50 
F4 "BUSY" I L 8750 3700 50 
F5 "DIO1" I L 8750 3800 50 
F6 "TX_LED" I L 8750 4450 50 
F7 "RX_LED" I L 8750 4550 50 
F8 "LoRa_!SS" I L 8750 4250 50 
F9 "LoRa_MISO" I L 8750 4150 50 
F10 "LoRa_MOSI" I L 8750 4050 50 
F11 "LoRa_SCK" I L 8750 3950 50 
$EndSheet
$Comp
L Connector:TestPoint_Small L_SS1
U 1 1 61D568D0
P 6950 4250
F 0 "L_SS1" H 6998 4296 50  0000 L CNN
F 1 "LoRa_!SS" H 6998 4205 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7150 4250 50  0001 C CNN
F 3 "~" H 7150 4250 50  0001 C CNN
	1    6950 4250
	1    0    0    -1  
$EndComp
Connection ~ 6950 4250
Wire Wire Line
	6950 4250 8750 4250
$Comp
L Connector:TestPoint_Small MISO1
U 1 1 61D57118
P 8050 4150
F 0 "MISO1" H 8098 4196 50  0000 L CNN
F 1 "LoRA_MISO" H 8098 4105 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8250 4150 50  0001 C CNN
F 3 "~" H 8250 4150 50  0001 C CNN
	1    8050 4150
	1    0    0    -1  
$EndComp
Connection ~ 8050 4150
Wire Wire Line
	8050 4150 8750 4150
$Comp
L Connector:TestPoint_Small MOSI1
U 1 1 61D572CB
P 6950 4050
F 0 "MOSI1" H 6998 4096 50  0000 L CNN
F 1 "LoRa_MOSI" H 6998 4005 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7150 4050 50  0001 C CNN
F 3 "~" H 7150 4050 50  0001 C CNN
	1    6950 4050
	1    0    0    -1  
$EndComp
Connection ~ 6950 4050
Wire Wire Line
	6950 4050 8750 4050
$Comp
L Connector:TestPoint_Small SCK1
U 1 1 61D57576
P 8050 3950
F 0 "SCK1" H 8098 3996 50  0000 L CNN
F 1 "LoRa_SCK" H 8098 3905 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8250 3950 50  0001 C CNN
F 3 "~" H 8250 3950 50  0001 C CNN
	1    8050 3950
	1    0    0    -1  
$EndComp
Connection ~ 8050 3950
Wire Wire Line
	8050 3950 8750 3950
$Comp
L Connector:TestPoint_Small DIO1
U 1 1 61D57700
P 6950 3800
F 0 "DIO1" H 6998 3846 50  0000 L CNN
F 1 "Radio_DIO1" H 6998 3755 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7150 3800 50  0001 C CNN
F 3 "~" H 7150 3800 50  0001 C CNN
	1    6950 3800
	1    0    0    -1  
$EndComp
Connection ~ 6950 3800
Wire Wire Line
	6950 3800 8750 3800
$Comp
L Connector:TestPoint_Small BUSY1
U 1 1 61D57954
P 8050 3700
F 0 "BUSY1" H 8098 3746 50  0000 L CNN
F 1 "Radio_Busy" H 8098 3655 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8250 3700 50  0001 C CNN
F 3 "~" H 8250 3700 50  0001 C CNN
	1    8050 3700
	1    0    0    -1  
$EndComp
Connection ~ 8050 3700
Wire Wire Line
	8050 3700 8750 3700
$Comp
L Connector:TestPoint_Small RESET1
U 1 1 61D57B0F
P 6950 3600
F 0 "RESET1" H 6998 3652 50  0000 L CNN
F 1 "LoRA_~RESET" H 6998 3554 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7150 3600 50  0001 C CNN
F 3 "~" H 7150 3600 50  0001 C CNN
	1    6950 3600
	1    0    0    -1  
$EndComp
Connection ~ 6950 3600
Wire Wire Line
	6950 3600 8750 3600
Text Label 4250 3650 0    50   ~ 0
SPI_SCK
Connection ~ 3950 1550
Wire Wire Line
	3950 1550 3950 1500
$Comp
L Connector:TestPoint_Small SS_B1
U 1 1 61DA4E99
P 6450 2150
F 0 "SS_B1" H 6500 2200 50  0000 L CNN
F 1 "iCE_SS_B" H 6498 2105 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6650 2150 50  0001 C CNN
F 3 "~" H 6650 2150 50  0001 C CNN
	1    6450 2150
	1    0    0    -1  
$EndComp
Connection ~ 6450 2150
Wire Wire Line
	6450 2150 6900 2150
$Comp
L Connector:TestPoint_Small CDNE1
U 1 1 61DB206F
P 6450 1850
F 0 "CDNE1" H 6500 1900 50  0000 L CNN
F 1 "iCE_CDONE" H 6498 1805 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6650 1850 50  0001 C CNN
F 3 "~" H 6650 1850 50  0001 C CNN
	1    6450 1850
	1    0    0    -1  
$EndComp
Connection ~ 6450 1850
Wire Wire Line
	6450 1850 6900 1850
$Comp
L Connector:TestPoint_Small CRST1
U 1 1 61DB235D
P 6450 1650
F 0 "CRST1" H 6500 1700 50  0000 L CNN
F 1 "iCE_CRESET" H 6498 1605 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6650 1650 50  0001 C CNN
F 3 "~" H 6650 1650 50  0001 C CNN
	1    6450 1650
	1    0    0    -1  
$EndComp
Text Label 1650 3850 0    50   ~ 0
D+
Text Label 1650 3950 0    50   ~ 0
D-
Wire Wire Line
	6350 1550 6900 1550
Wire Wire Line
	3700 1800 3500 1800
Text Label 3500 1800 2    50   ~ 0
V_conn
$Comp
L Connector:TestPoint 5V0
U 1 1 61DA3031
P 3950 1550
F 0 "5V0" V 3904 1738 50  0000 L CNN
F 1 "5V" V 3995 1738 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4150 1550 50  0001 C CNN
F 3 "~" H 4150 1550 50  0001 C CNN
	1    3950 1550
	0    1    1    0   
$EndComp
Connection ~ 6450 1650
Wire Wire Line
	6450 1650 6900 1650
Text Label 6900 1650 0    50   ~ 0
ICE_CRESET
$EndSCHEMATC
