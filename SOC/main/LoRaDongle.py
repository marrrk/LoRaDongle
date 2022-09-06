#!/usr/bin/env python3

# This file is Copyright (c) 2019 Sean Cross <sean@xobs.io>
# This file is Copyright (c) 2018 David Shah <dave@ds0.me>
# This file is Copyright (c) 2020 Piotr Esden-Tempski <piotr@esden.net>
# License: BSD

# This target was originally based on the Fomu target.

# This variable defines all the external programs that this module
# relies on.  lxbuildenv reads this variable in order to ensure
# the build will finish without exiting due to missing third-party
# programs.

import argparse
from os import path

from migen import *
from migen.genlib.resetsync import AsyncResetSynchronizer
from migen.genlib.io import CRG

from litex.soc.cores.ram import Up5kSPRAM
#from litex.soc.cores.spi_flash import SpiFlash
from litex.soc.cores.clock import iCE40PLL
from litex.soc.integration.soc_core import SoCCore
from litex.soc.integration.builder import Builder, builder_argdict, builder_args
from litex.build.lattice.programmer import IceStormProgrammer
from litex.soc.integration.soc_core import soc_core_argdict, soc_core_args
from litex.soc.integration.doc import AutoDoc
from litex.soc.integration.soc import SoCRegion


#from Platform.LoRaDongleV1 import Platform
from Platform.LoRaDongleV2 import Platform

from litex.soc.cores.uart import UARTWishboneBridge
from litex.soc.cores import gpio
from litex.soc.cores.spi import SPIMaster
from litex.soc.cores.bitbang import I2CMaster

import litex.soc.doc as lxsocdoc


# CRG ----------------------------------------------------------------------------------------------


class _CRG(Module, AutoDoc):
    """LoRaDongle Clock Resource Generator, pulled from Icebreaker

    The system is clocked by the external 50MHz clock. But if a sys_clk_freq is set to a value
    that is different from the default 50MHz we will feed it through the PLL block and try to
    generate a clock as close as possible to the selected frequency.
    """
    def __init__(self, platform, sys_clk_freq):
        self.clock_domains.cd_sys = ClockDomain()
        self.clock_domains.cd_por = ClockDomain()

        # # #

        # Clocks
        clk = platform.request("clk")
        if sys_clk_freq == 50e6:
            self.comb += self.cd_sys.clk.eq(clk)
        else:
            self.submodules.pll = pll = iCE40PLL(primitive="SB_PLL40_CORE")
            pll.register_clkin(clk, 50e6)
            pll.create_clkout(self.cd_sys, sys_clk_freq, with_reset=False)
        platform.add_period_constraint(self.cd_sys.clk, 1e9 / sys_clk_freq)

        # Power On Reset
        self.reset = Signal()
        por_cycles = 4096
        por_counter = Signal(log2_int(por_cycles), reset=por_cycles - 1)
        self.comb += self.cd_por.clk.eq(self.cd_sys.clk)
        platform.add_period_constraint(self.cd_por.clk, 1e9 / sys_clk_freq)
        self.sync.por += If(por_counter != 0, por_counter.eq(por_counter - 1))
        self.comb += self.cd_sys.rst.eq(por_counter != 0)
        self.specials += AsyncResetSynchronizer(self.cd_por, self.reset)


# BaseSoC ------------------------------------------------------------------------------------------

class BaseSoC(SoCCore):
    """A SoC on LoRaDongle, optionally with a softcore CPU"""

    # Statically-define the memory map, to prevent it from shifting across various litex versions.
    SoCCore.mem_map = {
        "sram":             0x10000000,
        "spiflash":         0x20000000,
        "csr":              0xf0000000,
    }

    def __init__(self, cpu, debug, flash_offset, sys_clk_freq, **kwargs):
        """Create a basic SoC for LoRaDongle.

        Create a basic SoC for LoRaDongle.  The `sys` frequency will run at 21 MHz.

        Returns:
            Newly-constructed SoC
        """
        platform = Platform()

        if cpu == "serv":
            kwargs["cpu_type"] = "serv"
        elif cpu == "picorv32":
            kwargs["cpu_type"] = "picorv32"
            #variant defaults when none are provided
            if "cpu_variant" not in kwargs:
                kwargs["cpu_variant"] = "minimal"

        # Force the SRAM size to 0, because we add our own SRAM with SPRAM
        kwargs["integrated_sram_size"] = 0
        kwargs["integrated_rom_size"]  = 0

        kwargs["csr_data_width"] = 32

        # Set CPU reset address
        kwargs["cpu_reset_address"] = self.mem_map["spiflash"] + flash_offset

        # Select "crossover" as soc uart instead of "serial"
        # We have to make that selection before calling the parent initializer
        if debug:
            kwargs["uart_name"]   = "crossover"

        # SoCCore
        SoCCore.__init__(self, platform, sys_clk_freq, **kwargs)

        self.submodules.crg = _CRG(platform, sys_clk_freq)
        #self.submodules.crg = CRG(platform.request("clk"), ~platform.request("cpu_reset"))


        # UP5K has single port RAM, which is a dedicated 128 kilobyte block.
        # Use this as CPU RAM.
        spram_size = 128 * 1024
        self.submodules.spram = Up5kSPRAM(size=spram_size)
        self.register_mem("sram", self.mem_map["sram"], self.spram.bus, spram_size)


        #spi_clk = platform.request("spi_clk")       # CLock for SPI SIgnals


        # SPI Flash --------------------------------------------------------------------------------
        from litespi.modules import W25Q128JV
        from litespi.opcodes import SpiNorFlashOpCodes as Codes
        self.add_spi_flash(mode="1x", module=W25Q128JV(Codes.READ_1_1_1), with_master=False)


        #from litespi.modules import N25Q032A
        #from litespi.phy.generic import LiteSPIPHY
        
        #spi_flash_pads = platform.request("spiflash")
        #spi_flash_pads.clk = Signal()
        #spiflash_phy = LiteSPIPHY(spi_flash_pads, N25Q032A(Codes.READ_1_1_1), device=self.platform.device, default_divisor=1)
        #setattr(self.submodules, name + "_phy",  spiflash_phy)
        
        #self.add_spi_flash(phy=spiflash_phy,mode="1x", module=N25Q032A(Codes.READ_1_1_1), with_master=False)
        
        #self.add_spi_flash(mode="1x", module=N25Q032A(Codes.READ_1_1_1), with_master=False)



        # Add ROM linker region --------------------------------------------------------------------
        self.bus.add_region("rom", SoCRegion(
            origin = self.mem_map["spiflash"] + flash_offset,
            size   = 8*1024*1024, 
            linker = True)
        )

        # In debug mode, add a UART bridge.  This takes over from the normal UART bridge,
        # however you can use the "crossover" UART to communicate with this over the bridge.
        if debug:
            self.submodules.uart_bridge = UARTWishboneBridge(
                platform.request("serial"), 
                sys_clk_freq, 
                baudrate=115200)
            self.add_wb_master(self.uart_bridge.wishbone)


        # Leds
        user_leds = Cat(*[platform.request("user_led", i) for i in range(2)])
        self.submodules.leds = gpio.GPIOOut(user_leds)
        self.add_csr("leds")

         
        #####LoRa Pins#####
        #Busy Input Pin
        self.submodules.lora_busy = gpio.GPIOIn(platform.request("lora_busy"))
        self.add_csr("lora_busy")

        #Output Pins
        #Combined Register names - differentiation of pins in software
        lora_config = Cat(*[platform.request("lora_config", i) for i in range(3)])
        self.submodules.lora_config = gpio.GPIOOut(lora_config)
        self.add_csr("lora_config")

        # SPI
        self.submodules.SPI = SPIMaster(platform.request("spi_bus", 0),
            data_width = 8,
            sys_clk_freq = sys_clk_freq,
            spi_clk_freq = 8e6)
        self.add_csr("spi_bus")


        ######### Gas Sensor ##############
        #I2CMaster
        self.submodules.i2c = I2CMaster(platform.request("i2c_bus"))
        self.add_csr("i2c")

        #spi_pads = platform.lookup_request("clk")
        #spi_pads = platform.request("spi_bus", 0)
        #spi_bus_pads = platform.request("spi_bus")
        #spi_bus_pads.clk = Signal()
        #self.submodules.SPI = SPIMaster(spi_bus_pads,
            #data_width = 8,
            #sys_clk_freq = sys_clk_freq,
            #spi_clk_freq = 8e6)
        #self.add_csr("spi_bus")

        #self.comb += spi_clk.eq(spi_flash_pads.clk | spi_bus_pads.clk) #Connecting SPI Clock to both SPIMaster and SPIFlash
        #self.comb += spi_clk.eq(spi_flash_pads.clk)
        #self.comb += spi_clk.eq(spi_bus_pads.clk)


    def set_yosys_nextpnr_settings(self, nextpnr_seed=0, nextpnr_placer="heap"):
        """Set Yosys/Nextpnr settings by overriding default LiteX's settings.
        Args:
            nextpnr_seed   (int): Seed to use in Nextpnr
            nextpnr_placer (str): Placer to use in Nextpnr
        """
        assert hasattr(self.platform.toolchain, "yosys_template")
        assert hasattr(self.platform.toolchain, "build_template")
        self.platform.toolchain.yosys_template = [
            "{read_files}",
            "attrmap -tocase keep -imap keep=\"true\" keep=1 -imap keep=\"false\" keep=0 -remove keep=0",
            # Use "-relut -dffe_min_ce_use 4" to the synth_ice40 command. The "-reult" adds an additional
            # LUT pass to pack more stuff in, and the "-dffe_min_ce_use 4" flag prevents Yosys from
            # generating a Clock Enable signal for a LUT that has fewer than 4 flip-flops. This increases
            # density, and lets us use the FPGA more efficiently.
            "synth_ice40 -json {build_name}.json -top {build_name} -relut -abc2 -dffe_min_ce_use 4 -relut",
        ]
        self.platform.toolchain.build_template = [
            "yosys -q -l {build_name}.rpt {build_name}.ys",
            "nextpnr-ice40 --json {build_name}.json --pcf {build_name}.pcf --asc {build_name}.txt" +
            " --pre-pack {build_name}_pre_pack.py --{architecture} --package {package}" +
            " --seed {}".format(nextpnr_seed) +
            " --placer {}".format(nextpnr_placer),
            # Disable final deep-sleep power down so firmware words are loaded onto softcore's address bus.
            "icepack -s {build_name}.txt {build_name}.bin"
        ]


# Flash --------------------------------------------------------------------------------------------

def flash(build_dir, build_name, bios_flash_offset):
    #from litex.build.lattice.programmer import IceStormProgrammer
    prog = IceStormProgrammer()
    #prog.flash(bios_flash_offset, f"{build_dir}/software/bios/bios.bin")
    prog.flash(0x00000000,        f"{build_dir}/gateware/{build_name}.bin")

# Build --------------------------------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(description="LiteX SoC on LoRaDongle")
    parser.add_argument("--build", action="store_true", help="Build SoC")
    parser.add_argument("--cpu", default="serv", help="Select CPY type")
    parser.add_argument("--flash-offset", default=0x20000, help="Boot offset in SPI Flash")
    parser.add_argument("--sys-clk-freq", type=float, default=21e6, help="Select system clock frequency")
    parser.add_argument("--nextpnr-seed", default=0, help="Select nextpnr pseudo random seed")
    parser.add_argument("--nextpnr-placer", default="heap", choices=["sa", "heap"], help="Select nextpnr placer algorithm")
    parser.add_argument("--debug", action="store_true", help="Enable debug features. (UART has to be used with the wishbone-tool.)")
    parser.add_argument("--document-only", action="store_true", help="Do not build a soc. Only generate documentation.")
    parser.add_argument("--flash", action="store_true", help="Load bitstream")
    builder_args(parser)
    soc_core_args(parser)
    args = parser.parse_args()

    # Create the SOC
    soc = BaseSoC(cpu=args.cpu ,debug=args.debug, flash_offset=args.flash_offset, sys_clk_freq=int(args.sys_clk_freq), **soc_core_argdict(args))
    soc.set_yosys_nextpnr_settings(nextpnr_seed=args.nextpnr_seed, nextpnr_placer=args.nextpnr_placer)

    # Configure command line parameter defaults
    # Don't build software -- we don't include it since we just jump to SPI flash.
    builder_kwargs = builder_argdict(args)
    #builder_kwargs["compile_software"] = False

    if args.document_only:
        builder_kwargs["compile_gateware"] = False
    #if builder_kwargs["csr_svd"] is None:
    #    builder_kwargs["csr_svd"] = "../rust/icebesoc-pac/iCEBESOC.svd"
    #if builder_kwargs["memory_x"] is None:
    #    builder_kwargs["memory_x"] = "../rust/icebesoc-pac/memory.x"

    # Create and run the builder
    builder_kwargs["csr_csv"] = "build/csr.csv"
    builder = Builder(soc, **builder_kwargs)

    if args.build:
        builder.build()
        lxsocdoc.generate_docs(soc, "build/documentation/", project_name="LoRaDongle SOC")

    # If requested load the resulting bitstream onto the LoRaDongle
    if args.flash:
        IceStormProgrammer().flash(0x00000000, path.join(builder.gateware_dir,"{}.bin".format(soc.build_name)))
        #flash(builder.output_dir, soc.build_name, args.flash_offset)

if __name__ == "__main__":
    main()
