EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "LoRa Dongle"
Date ""
Rev ""
Comp "Mark Njoroge"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1300 3100 1800 3100
Wire Wire Line
	1300 3200 1800 3200
$Comp
L power:+5V #PWR0101
U 1 1 6133EA17
P 1400 2700
F 0 "#PWR0101" H 1400 2550 50  0001 C CNN
F 1 "+5V" H 1415 2873 50  0000 C CNN
F 2 "" H 1400 2700 50  0001 C CNN
F 3 "" H 1400 2700 50  0001 C CNN
	1    1400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2900 1400 2900
Wire Wire Line
	1400 2900 1400 2700
Wire Wire Line
	1000 3500 1000 3650
$Comp
L power:GND #PWR0102
U 1 1 613473D1
P 1000 3650
F 0 "#PWR0102" H 1000 3400 50  0001 C CNN
F 1 "GND" H 1005 3477 50  0000 C CNN
F 2 "" H 1000 3650 50  0001 C CNN
F 3 "" H 1000 3650 50  0001 C CNN
	1    1000 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_A J?
U 1 1 6134135C
P 1000 3100
F 0 "J?" H 1057 3567 50  0000 C CNN
F 1 "USB_A" H 1057 3476 50  0000 C CNN
F 2 "" H 1150 3050 50  0001 C CNN
F 3 " ~" H 1150 3050 50  0001 C CNN
	1    1000 3100
	1    0    0    -1  
$EndComp
NoConn ~ 900  3500
$Sheet
S 8200 1250 1400 750 
U 614F0720
F0 "RF Circuitry" 50
F1 "sx1262_circuitry.sch" 50
F2 "SCK" O L 8200 1400 50 
F3 "MISO" O L 8200 1500 50 
F4 "MOSI" O L 8200 1600 50 
F5 "!SS" O L 8200 1700 50 
$EndSheet
$Sheet
S 8200 3150 1450 800 
U 6141DFDA
F0 "Power Management" 50
F1 "power_management.sch" 50
$EndSheet
$EndSCHEMATC
