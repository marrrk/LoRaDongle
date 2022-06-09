---
title: Building the SOC for test
layout: page
parent: Getting Started
nav_order: 3
---
# Disclaimer
As of now, the complete toolchain from synthesis to programming only works on the Digilent boards, so from hence forth the tutorial focuses on building and testing on a Digilent Development board. This is either the Arty A7 100T or the Nexys A7 100T

# Building the SOC and Loading the SOC
## Cloning the Repository
The first step is to clone the repository found at [https://github.com/marrrk/LoRaDongle](https://github.com/marrrk/LoRaDongle). This can be done as usual, however if you want to view the kicad project for the schematic and PCB layout, it is best to use the command found in the repository's readme. This clones the relevant libraries that some of the symbols and footprints are sourced from.

## Xilinx FPGA
### Generating Bitsream
Building the SOC is as simple as running a single script. It is important to make sure the environment is set up properly for the successful completion of the script. Two Things that may need to be setup prior to running are:
* The Litex Virtual environment is being used.
* The command `vivado` is in the path. You can do this by calling: `$ source /PATH_TO_VIVADO_INSTALL/VERSION_NUMBER/settings64.sh`

If the environment is setup correcly, navigate to `LoRaDongle/arty_test`. The SOC can be built using `python arty.py`. If you are using a Nexys, the command `python nexys.py` should be used. 

This will take a few minutes to run, and if successful, the generated bitstream will be loaded to: `LoRaDongle/SOC/arty_test/build/gateware/top.bit`.

### Loading Bitstream
To load the bitstream, no shortcut way has been implemented as of yet. As such you need to manually run vivado and load the bitsream via the Graphical User Interface is done. The following steps are followed:
1. Open Vivado
2. Open Dummy Project (any project can be used, even an example project)
3. Connect Digilent Board to computer
4. Open Hardware Manager (on the bottom left of the screen)
5. Click Open target and then auto connect. 
6. Click Program Device
7. Look for where `top.bit` was generated for your SOC
8. Click Program

The SOC will then be loaded into the FPGA.

You can test it out by calling:
```bash
$ litex_term /dev/ttyUSB1
```
This will launch the liteX bios on the fpga, and you will be able to see some information about the SoC generated.

## Lattice FPGA
TODO

## Generating Documentation
The python script to build the SoCs also generate html documentation for the various cores, peripherals, memory regions and registers. the [LiteX Wiki]{https://github.com/enjoy-digital/litex/wiki/SoC-Documentation} outlines what python modules need to be installed with `pip` in order to generate the documentation.

To generate the documentation, run the following command:

```bash
sphinx-build -M html build/documentation/ build/documentation/_build
```