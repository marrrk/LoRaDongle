# LoRaDongle
LoRaDongle is a custom PCB that merges Risc-V with LoRa in a USB Dongle form factor. This repository contains all the project files required to build, utilise and modify the project. Documentation can be read from the website: [https://marrrk.github.io/LoRaDongle/](https://marrrk.github.io/LoRaDongle/)

## Cloning the repository
```
git clone --recurse-submodules https://github.com/marrrk/LoRaDongle.git
```


## Directory Structure
- PCB/ -  Contains the Kicad project files, schematics, gerbers, BOM and other PCB related files
- SOC/ - The python scripts that generate, build and load the Risc-V SoC onto the PCB
- firmware/ -  SUpporting firmware that runs on the SoC
- docs/ - Source files for the documentation website

