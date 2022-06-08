---
layout: default
title: Installing Prerequisites
parent: Getting Started
nav_order: 2
---

# Installing prerequisites

## 1 Installing LiteX and Toolchain
A more comprehensive steps for installing litex can be found on the [github page](https://github.com/enjoy-digital/litex). THis will focus on the core configuration needed to build the SoC.

### 1.1 Make an empy directory and install the Litex files
The following commands install litex in a directory of your choice:
```bash
$ mkdir litex && cd litex
$ wget https://raw.githubusercontent.com/enjoy-digital/litex/master/litex_setup.py
$ chmod +x litex_setup.py
$ ./litex_setup.py --init --install
```
If you wish to install to your user directory, you can call `$ ./litex_setup.py --init --install --user` instead.

Installing to a virtual environment is also possible:
```bash
$ mkdir litex && cd litex
$ virtualenv -p python3 venv_litex
$ source venv_litex/bin/activate 
$ wget https://raw.githubusercontent.com/enjoy-digital/litex/master/litex_setup.py
$ chmod +x litex_setup.py
$ ./litex_setup.py --init --install
```

### 1.2 Installing Toolchain
The Risc-V toolchain can also be installed with Litex. To do that simply call:
```bash
$ pip3 install meson ninja
$ ./litex_setup.py --gcc=riscv
```
The toolchain will be installed to a subdirectory in the litex directory and will be titled `riscv64-unknown-elf-gcc-8.3.0-2019.08.0-x86_64-linux-ubuntu14`

To enable the toolchain, add it to your path: 
```bash
$ export PATH="/PATH_TO_INSTALLATION/riscv64-unknown-elf-gcc-8.3.0-2019.08.0-x86_64-linux-ubuntu14/bin/:$PATH"
$ source .bashrc
```
Note the command above only adds the toolchain to the path for the current terminal session. In order add the toolcahin to the path permanently, append the same line to `.bashrc`.

## 2. Installing Synthesis Tools

### 2.1 Installing Vivado (Xilinx FPGA)
Vivado is a large download and may take hours on slow/unreliable internet connections. The download process can be found [here](https://digilent.com/reference/vivado/installing-vivado/v2019.2). The latest version can be installed, however _**please note this project has only been tested with version 2021.2**_. 

### 2.2 Installing project Icestorm (Lattice FPGA)
Lattice Semiconductors have their own propiertary software for synthesising and configuring their FPGAS, however there are also open source tools that can be used. [Project Icestorm](https://clifford.at/icestorm) is a mature and well doucumented open source tool that is used. Installiation steps can be found on the website linked, and a summary of the necessary steps is given here. The tools needed are Yosys, Arachne-PNR and Icestorm. Once installed, you can look at a nice and concise guide on using the tools, found [here](https://hedmen.org/icestorm-doc/icestorm.html).

### 2.2.1 Intalling Icestorm
The repository needs to be cloned and installed: 

```bash
$ git clone https://github.com/YosysHQ/icestorm.git icestorm
$ cd icestorm
$ make -j$(nproc)
$ sudo make install
```
### 2.2.2 Installing Arachne-PNR

```bash
$ git clone https://github.com/cseed/arachne-pnr.git arachne-pnr
$ cd arachne-pnr
$ make -j$(nproc)
$ sudo make install
```

### 2.2.3 Installing Yosys
```bash
$ git clone https://github.com/YosysHQ/yosys.git yosys
$ cd yosys
$ make -j$(nproc)
$ sudo make install
```

### 2.2.4 Creating UDEV Rules
On Linux machines, if you have an error configureing the fpga, you'd need to create the udev rules to allow your user account to connect to the development board using `iceprog`. In order to do that, 
run the following commands:
```bash
$ touch /etc/udev/rules.d/53-lattice-ftdi.rules
$ sudo nano /etc/udev/rules.d/53-lattice-ftdi.rules
```
When inside the file, add the following text:
```
ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6010", MODE="0660", GROUP="plugdev", TAG+="uaccess"
```

