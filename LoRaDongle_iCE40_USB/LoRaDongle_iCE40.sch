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
S 3150 5100 1350 750 
U 6141DFDA
F0 "Power Management" 50
F1 "power_management.sch" 50
$EndSheet
$Comp
L power:GND #PWR0102
U 1 1 613473D1
P 1700 4450
F 0 "#PWR0102" H 1700 4200 50  0001 C CNN
F 1 "GND" H 1705 4277 50  0000 C CNN
F 2 "" H 1700 4450 50  0001 C CNN
F 3 "" H 1700 4450 50  0001 C CNN
	1    1700 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1700 3900 1800
$Comp
L power:GND #PWR?
U 1 1 61702A0E
P 3900 1800
F 0 "#PWR?" H 3900 1550 50  0001 C CNN
F 1 "GND" H 3905 1627 50  0000 C CNN
F 2 "" H 3900 1800 50  0001 C CNN
F 3 "" H 3900 1800 50  0001 C CNN
	1    3900 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Dual JP?
U 1 1 616C0AFF
P 6600 1550
F 0 "JP?" H 6600 1697 50  0000 C CNN
F 1 "Jumper" H 6600 1788 50  0000 C CNN
F 2 "" H 6600 1550 50  0001 C CNN
F 3 "~" H 6600 1550 50  0001 C CNN
	1    6600 1550
	-1   0    0    1   
$EndComp
Text Label 7050 1550 0    50   ~ 0
V_conn
Text Label 6200 1550 2    50   ~ 0
V_USB
Wire Wire Line
	6200 1550 6350 1550
Wire Wire Line
	6850 1550 7050 1550
$Comp
L power:+5V #PWR?
U 1 1 616C435A
P 6600 1250
F 0 "#PWR?" H 6600 1100 50  0001 C CNN
F 1 "+5V" H 6615 1423 50  0000 C CNN
F 2 "" H 6600 1250 50  0001 C CNN
F 3 "" H 6600 1250 50  0001 C CNN
	1    6600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1450 6600 1250
Text Label 3900 1100 0    50   ~ 0
V_USB
Connection ~ 3900 1350
Wire Wire Line
	3900 1350 3900 1100
Text Label 3000 1350 2    50   ~ 0
VBUS
Wire Wire Line
	3900 1350 3900 1400
$Comp
L Device:C C?
U 1 1 61593DC4
P 3900 1550
F 0 "C?" H 3800 1450 50  0000 C CNN
F 1 "0.1uF" H 3750 1700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3938 1400 50  0001 C CNN
F 3 "~" H 3900 1550 50  0001 C CNN
F 4 "GCM155R71C104KA55J" V 3900 1550 50  0001 C CNN "Part Number"
	1    3900 1550
	-1   0    0    1   
$EndComp
$Comp
L dk_Ferrite-Beads-and-Chips:BLM18AG601SN1D FB?
U 1 1 615E0B04
P 3450 1350
F 0 "FB?" H 3450 1650 60  0000 C CNN
F 1 "600R/0.5A" H 3450 1550 60  0000 C CNN
F 2 "digikey-footprints:0603" H 3650 1550 60  0001 L CNN
F 3 "https://www.murata.com/en-us/products/productdata/8796738650142/ENFA0003.pdf" H 3650 1650 60  0001 L CNN
F 4 "490-1014-1-ND" H 3650 1750 60  0001 L CNN "Digi-Key_PN"
F 5 "BLM18AG601SN1D" H 3650 1850 60  0001 L CNN "MPN"
F 6 "Filters" H 3650 1950 60  0001 L CNN "Category"
F 7 "Ferrite Beads and Chips" H 3650 2050 60  0001 L CNN "Family"
F 8 "https://www.murata.com/en-us/products/productdata/8796738650142/ENFA0003.pdf" H 3650 2150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/murata-electronics-north-america/BLM18AG601SN1D/490-1014-1-ND/584462" H 3650 2250 60  0001 L CNN "DK_Detail_Page"
F 10 "FERRITE BEAD 600 OHM 0603 1LN" H 3650 2350 60  0001 L CNN "Description"
F 11 "Murata Electronics North America" H 3650 2450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3650 2550 60  0001 L CNN "Status"
	1    3450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1350 3250 1350
Wire Wire Line
	3650 1350 3900 1350
Wire Wire Line
	2650 3950 3150 3950
Wire Wire Line
	2650 3850 3150 3850
Text Label 2150 3650 0    50   ~ 0
VBUS
Wire Wire Line
	2000 3650 2150 3650
$Comp
L Device:R R?
U 1 1 6163C2A1
P 2500 3950
F 0 "R?" V 2600 3950 50  0000 C CNN
F 1 "10R" V 2500 3950 50  0000 C CNN
F 2 "" V 2430 3950 50  0001 C CNN
F 3 "~" H 2500 3950 50  0001 C CNN
	1    2500 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6163BC45
P 2500 3850
F 0 "R?" V 2400 3850 50  0000 C CNN
F 1 "10R" V 2500 3850 50  0000 C CNN
F 2 "" V 2430 3850 50  0001 C CNN
F 3 "~" H 2500 3850 50  0001 C CNN
	1    2500 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 4250 1700 4450
$Comp
L Connector:USB_A J?
U 1 1 6134135C
P 1700 3850
F 0 "J?" H 1757 4317 50  0000 C CNN
F 1 "USB_A" H 1757 4226 50  0000 C CNN
F 2 "Connector_USB:USB_A_CNCTech_1001-011-01101_Horizontal" H 1850 3800 50  0001 C CNN
F 3 " ~" H 1850 3800 50  0001 C CNN
	1    1700 3850
	1    0    0    -1  
$EndComp
NoConn ~ 1600 4250
Wire Wire Line
	2000 3950 2350 3950
Wire Wire Line
	2000 3850 2350 3850
$Sheet
S 3150 3550 1350 750 
U 618AACD4
F0 "USB_Interface" 50
F1 "USB_Interface.sch" 50
F2 "DP" I L 3150 3850 50 
F3 "DM" I L 3150 3950 50 
F4 "SPI_SCK" O R 4500 3650 50 
F5 "SPI_MOSI" O R 4500 3750 50 
F6 "SPI_MISO" O R 4500 3850 50 
F7 "SPI_SS" O R 4500 3950 50 
F8 "iCE_CDONE" O R 4500 4100 50 
F9 "iCE_CRESET" O R 4500 4200 50 
$EndSheet
Text Notes 4450 900  0    50   ~ 0
Connector from External FTDI Breakout
Text Notes 5950 1950 0    50   ~ 0
Choose between external connector or USB connector
$Sheet
S 5400 3300 1900 1350
U 618D30E5
F0 "ice40up5k_circuit" 50
F1 "ice40up5k_circuit.sch" 50
F2 "iCE_CDONE" I L 5400 4100 50 
F3 "iCE_CRESET_B" I L 5400 4200 50 
F4 "iCE_SCK" I L 5400 3650 50 
F5 "iCE_SS_B" I L 5400 3950 50 
F6 "FLASH_MOSI" I L 5400 3750 50 
F7 "FLASH_MISO" I L 5400 3850 50 
$EndSheet
Text Notes 2800 4550 0    50   ~ 0
Need a Dip Switch to choose between this or the external ting.
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 61B8EE64
P 4700 1500
F 0 "J?" H 4618 2017 50  0000 C CNN
F 1 "Conn_01x08" H 4618 1926 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x08_P1.00mm_Vertical" H 4700 1500 50  0001 C CNN
F 3 "~" H 4700 1500 50  0001 C CNN
	1    4700 1500
	-1   0    0    -1  
$EndComp
$Sheet
S 7900 3300 1900 1350
U 614F0720
F0 "RF Circuitry" 50
F1 "sx1261_circuitry.sch" 50
F2 "ANT_SW" I L 7900 3400 50 
F3 "~RESET" I L 7900 3600 50 
F4 "BUSY" I L 7900 3700 50 
F5 "DIO1" I L 7900 3800 50 
F6 "TX_LED" I L 7900 4450 50 
F7 "RX_LED" I L 7900 4550 50 
F8 "LoRa_!SS" I L 7900 4250 50 
F9 "LoRa_MISO" I L 7900 4150 50 
F10 "LoRa_MOSI" I L 7900 4050 50 
F11 "LoRa_SCK" I L 7900 3950 50 
$EndSheet
$EndSCHEMATC
