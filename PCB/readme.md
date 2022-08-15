# Overview
In order to open the Kicad project, open kicad and open the project file `LoRaDongle_iCE40.kicad_pro`. The schematic has been implemented with hierarchal sheets which allows the different submodules to be their own separate schematic. There are five total schematics for each module;
1. LoRaDongle_ice40.kicad_sch
2. power_management.kicad_sch
3. USB_Interface.kicad_sch
4. ice40up5k_sircuit.kicad_sch
5. sx1261_circuitry.kicad_sch

The other files and directories of relevance are:
- libraries/ - kicad symbols and footprints of specific components used
- manufacturing/  - gerbers, assembly files and images for manufacturing
- pdf_schematic/ - pdfs of the schematics of all versions
- silksceen/ - images that are converted into silkscreen footprints

# Contents of the Schematics
## LoRaDongle_ice40
The root schematic that is at the top of the heirarchy. Contains the connecting signals between various subsystems and other components such as the USB connector.

## power_management.kicad_sch
Contains the board's regulator. Steps down 5V to 3.3V and 1.2V.

## USB_Interface.kicad_sch
Houses the FTDI FT2232HL IC that converts the USB protocol into SPI for the FPGA configuration and UART for communicating with the SoC.

## ice40up5k_circuit.kicad_sch
This schematic holds the FPGA banks and related circuitry. This includes the SPI Flash, the oscillator, gas sensor and a header of all unused pins.

## sx1261_circuitry.kicad_sch
This is the RF section of the schematic. It contains the LoRa chip used (SX1261) and the supporting circuitry. 