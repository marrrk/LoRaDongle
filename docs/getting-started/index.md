---
title: Getting Started
layot: page
nav_order: 2
permalink: getting-started/
has_children: true
---
# Getting Started
The goal of this section is to build up to a working program on the SoC. The necessary links and steps to get to that will be shown here.

## Prerequisites

### Hardware
The current supported boards are the LoRaDongle which has the Lattice ICE40UP5k and the Arty A7 development board by Xilinx which has the Artix-7 100T.
The SoC will build on the LoRaDongle, however programming it is still being debugged and therefore this guide will focus on the Arty/Nexys.

### Software
* LiteX (link)
* Risc-v GCC Toolchain - Which can be installed with LiteX
* The necessary synthesis and routing software for the FPGA in use. For the LoRaDongle (and other Lattice FPGAs), this is project icestorm (link). For Digilent boards, this is Vivado. (link)