from litex.build.generic_platform import *
from litex.build.lattice import LatticePlatform
#from litex.build.lattice.programmer import IceStormProgrammer

#from litex.soc.cores.spi import SPIMaster #Gonna use this for the LoRA Chip
#from litex.soc.cores.bitbang import I2CMaster

# IOs--------------------------------------------------------------------------------

_io = [
	# Clk
    ("clk50", 0, Pins("B3"), IOStandard("LVCMOS33")),

	# Leds
    ("user_led", 0, Pins("E4"),  IOStandard("LVCMOS33")),
    ("user_led", 1, Pins("F4"),  IOStandard("LVCMOS33")),


    #UART
    ("serial", 0,
        Subsignal("tx", Pins("F2")),
        Subsignal("rx", Pins("F5")),
        IOStandard("LVCMOS33"),
    ),

]



# Platform-----------------------------------------------------------------------------

class Platform(LatticePlatform):
	default_clk_name   = "clk50"
	default_clk_period = 1e9/50e6

	def __init__(self, toolchain="icestorm"):
		LatticePlatform.__init__(self, "ice40-up5k-uwg30", _io, toolchain=toolchain)