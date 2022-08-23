# Overview
Firmware written to run on the LoRaDongle. The firmware is written in C and is dependent on the SOC build files having been generated. The compiler used is `riscv64-unknown-elf-gcc (SiFive GCC 8.3.0-2019.08.0) 8.3.0` installed via LiteX

# Compiling the Firmware
Run `make` to compile and `make prog` to load the generated binary into the SPIFlash. 