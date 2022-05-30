from migen import *

from migen.genlib.io import CRG

from litex.build.generic_platform import *

# don't want to build the platform here, will import the ARTY platform.
from litex.build.xilinx import XilinxPlatform
#from litex_boards.platforms import arty


from litex.soc.integration.soc_core import *
from litex.soc.integration.builder import *
from litex.soc.cores import dna
from litex.soc.cores.spi import SPIMaster #Gonna use this for the LoRA Chip
#from litex.soc.cores.bitbang import I2CMaster


from ios import Led, RGBLed, Button, Switch  #Classes that pull GPIOIn, GPIOOut from litex.soc.cores.gpio
# eg: from litex.soc.cores.gpio import GPIOIn GPIOout GPIOTristate etc etc

from litex.soc.doc import generate_docs

# IOs ----------------------------------------------------------------------------------------------

_io = [

    ("clk100", 0, Pins("E3"), IOStandard("LVCMOS33")),
    ("cpu_reset", 0, Pins("C2"), IOStandard("LVCMOS33")),

	# Leds
    ("user_led", 0, Pins("H5"),  IOStandard("LVCMOS33")),
    ("user_led", 1, Pins("J5"),  IOStandard("LVCMOS33")),
    ("user_led", 2, Pins("T9"),  IOStandard("LVCMOS33")),
    ("user_led", 3, Pins("T10"), IOStandard("LVCMOS33")),

    ("rgb_led", 0,
        Subsignal("r", Pins("G6")),
        Subsignal("g", Pins("F6")),
        Subsignal("b", Pins("E1")),
        IOStandard("LVCMOS33"),
    ),
    ("rgb_led", 1,
        Subsignal("r", Pins("G3")),
        Subsignal("g", Pins("J4")),
        Subsignal("b", Pins("G4")),
        IOStandard("LVCMOS33"),
    ),
    ("rgb_led", 2,
        Subsignal("r", Pins("J3")),
        Subsignal("g", Pins("J2")),
        Subsignal("b", Pins("H4")),
        IOStandard("LVCMOS33"),
    ),
    ("rgb_led", 3,
        Subsignal("r", Pins("K1")),
        Subsignal("g", Pins("H6")),
        Subsignal("b", Pins("K2")),
        IOStandard("LVCMOS33"),
    ),

    # Switches
    ("user_sw", 0, Pins("A8"),  IOStandard("LVCMOS33")),
    ("user_sw", 1, Pins("C11"), IOStandard("LVCMOS33")),
    ("user_sw", 2, Pins("C10"), IOStandard("LVCMOS33")),
    ("user_sw", 3, Pins("A10"), IOStandard("LVCMOS33")),

    # Buttons
    ("user_btn", 0, Pins("D9"), IOStandard("LVCMOS33")),
    ("user_btn", 1, Pins("C9"), IOStandard("LVCMOS33")),
    ("user_btn", 2, Pins("B9"), IOStandard("LVCMOS33")),
    ("user_btn", 3, Pins("B8"), IOStandard("LVCMOS33")),


    #UART
    ("serial", 0,
        Subsignal("tx", Pins("D10")),
        Subsignal("rx", Pins("A9")),
        IOStandard("LVCMOS33"),
    ),


    #SPI
    ("spi_bus",0,                    #Adding SPIMaster Functionality
        Subsignal("clk", Pins("R18")),                  #Silkscreen Pin I039
        Subsignal("cs_n", Pins("T18")),                  #Silkscreen Pin I038
        Subsignal("mosi", Pins("N17")),                 #Silkwcreen Pin IO41
        Subsignal("miso", Pins("P18")),                 #Silkscreen Pin I040
        IOStandard("LVCMOS33"),
        ),

    #I2c
    #("i2c",0,
     #   Subsignal("sda", Pins("R16")),              #Silkscreen Pin IO34
      #  Subsignal("scl", Pins("N16")),                   #Silkscreen Pin IO35
      #  IOStandard("LVCMOS33")
      #  ),
]

# Platform -----------------------------------------------------------------------------------------

class Platform(XilinxPlatform):
    default_clk_name   = "clk100"
    default_clk_period = 1e9/100e6

    def __init__(self):
        XilinxPlatform.__init__(self, "xc7a100t-csg324-1", _io, toolchain="vivado")

# Design -------------------------------------------------------------------------------------------

# Create our platform (fpga interface)
platform = Platform()

# Create our soc (fpga description)
class BaseSoC(SoCCore):
    def __init__(self, platform):
        sys_clk_freq = int(100e6)

        # SoC with CPU
        SoCCore.__init__(self, platform,
            cpu_type                 = "serv",
            clk_freq                 = 100e6,
            ident                    = "LiteX CPU Test SoC", ident_version=True,
            integrated_rom_size      = 0x8000,
            integrated_main_ram_size = 0x4000)

        # Clock Reset Generation
        self.submodules.crg = CRG(platform.request("clk100"), ~platform.request("cpu_reset"))

        # FPGA identification, Only necessary for Xilinx FPGAs
        self.submodules.dna = dna.DNA()
        self.add_csr("dna")

        # Led
        user_leds = Cat(*[platform.request("user_led", i) for i in range(4)])
        self.submodules.leds = Led(user_leds)
        self.add_csr("leds")

        # Switches
        user_switches = Cat(*[platform.request("user_sw", i) for i in range(4)])
        self.submodules.switches = Switch(user_switches)
        self.add_csr("switches")

        # Buttons
        user_buttons = Cat(*[platform.request("user_btn", i) for i in range(4)])
        self.submodules.buttons = Button(user_buttons)
        self.add_csr("buttons")


        # SPI Master
        self.submodules.SPI = SPIMaster(platform.request("spi_bus", 0),
            data_width = 8,
            sys_clk_freq = sys_clk_freq,
            spi_clk_freq = 1e6)
        self.add_csr("spi_bus")


        #I2CMaster  #testing i2c
        #self.submodules.i2c = I2CMaster(platform.request("i2c"))
        #self.add_csr("i2c")

        # RGB Led
        #self.submodules.rgbled  = RGBLed(platform.request("rgb_led",  0))
        #self.add_csr("rgbled")


soc = BaseSoC(platform)

# Build --------------------------------------------------------------------------------------------

builder = Builder(soc, output_dir="build", csr_csv="test/csr.csv")
vns = builder.build(build_name="top")
soc.do_exit(vns)
generate_docs(soc, "build/documentation")