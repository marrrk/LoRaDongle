from migen import *

from migen.genlib.io import CRG

from platform import Platform


from litex.soc.integration.soc_core import *
from litex.soc.integration.builder import *
from litex.soc.cores.ram import Up5kSPRAM
from litex.soc.integration.soc import SoCRegion
from litex.soc.interconnect.csr import *
from litex.soc.cores import gpio


from litex.soc.doc import generate_docs



kB = 1024
mB = 1024*kB

platform = Platform()


# Create our soc (fpga description)
class BaseSoC(SoCCore):
    def __init__(self, platform):
        sys_clk_freq = int(50e6)

        # SoC with CPU
        SoCCore.__init__(self, platform,
            cpu_type                 = "serv",
            clk_freq                 = 50e6,
            ident                    = "LiteX CPU Test SoC on LoRaDongle", ident_version=True,
            integrated_rom_size      = 0,
            integrated_sram_size = 0)		#Disable Integrated ROM/SRAM since too large for iCE40 and UP5k has specific SPRAM



        # 128KB SPRAM (used as 64kB SRAM / 64kB RAM) -----------------------------------------------
        # Soruced from litex_boards/icebreaker.py
        #self.submodules.spram = Up5kSPRAM(size=128*kB)
        #self.bus.add_slave("psram", self.spram.bus, SoCRegion(size=128*kB))
        #self.bus.add_region("sram", SoCRegion(
        #        origin = self.bus.regions["psram"].origin + 0*kB,
        #        size   = 64*kB,
        #        linker = True)
        #)
        #if not self.integrated_main_ram_size:
        #    self.bus.add_region("main_ram", SoCRegion(
        #        origin = self.bus.regions["psram"].origin + 64*kB,
        #        size   = 64*kB,
        #        linker = True)
        #    )


        # Sourced from icebreaker example
        # Use this as CPU RAM.
        spram_size = 128 * 1024
        self.submodules.spram = Up5kSPRAM(size=spram_size)
        self.register_mem("sram", self.mem_map["sram"], self.spram.bus, spram_size)

        self.cpu.set_reset_address(self.bus.regions["sram"].origin)


        # Clock Reset Generation
        self.submodules.crg = CRG(platform.request("clk50"))

        # FPGA identification, Only necessary for Xilinx FPGAs
        #self.submodules.dna = dna.DNA()
        #self.add_csr("dna")

        # Led
        user_leds = Cat(*[platform.request("user_led", i) for i in range(2)])
        self.submodules.leds = gpio.GPIOOut(user_leds)
        self.add_csr("leds")



soc = BaseSoC(platform)

# Build --------------------------------------------------------------------------------------------

builder = Builder(soc, output_dir="build", csr_csv="csr.csv")
vns = builder.build(build_name="top")
soc.do_exit(vns)
generate_docs(soc, "build/documentation")