# Introduction
This directory houses the SOC files. There exist the platform `Platform/LoRaDongle.py` and the target `LoRaDongle.py`. The platform describes the boards physical constraints while the target creates the SoC.

# Pre-requisites
The following tools need to be installed in order to succesfully generate and flash the SoC:
- LiteX
- Project IceStorm

# Building the SoC
Simply run the target script to generate the SoC.
```
$ python LoRaDongle.py --build
```

The script uses a vexriscv-lite as the default risc-v core. To change to the required core (Serv is the main core used in the project) run the following command:
```
$ python LoRaDongle.py --cpu-type serv --build
```

# Flashing the SoC
The same command can be run with the argument `--flash` to load the SoC onto the board.
```
$ python LoRaDongle.py --cpu-type serv --build --flash
```