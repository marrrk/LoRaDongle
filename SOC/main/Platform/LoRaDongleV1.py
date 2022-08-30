from litex.build.generic_platform import *
from litex.build.lattice import LatticePlatform
from litex.build.lattice.programmer import IceStormProgrammer

#from litex.soc.cores.spi import SPIMaster #Gonna use this for the LoRA Chip
#from litex.soc.cores.bitbang import I2CMaster

# IOs--------------------------------------------------------------------------------

_io = [
	# Clk
    ("clk", 0, Pins("B3"), IOStandard("LVCMOS33")),
    ("cpu_reset", 0, Pins("C5"), IOStandard("LVCMOS33")),


	# Leds
    ("user_led", 0, Pins("E4"),  IOStandard("LVCMOS33")),           #RX LED
    ("user_led", 1, Pins("F4"),  IOStandard("LVCMOS33")),           #TX LED

    #LoRa Configuration Pins
    ("lora_config", 0, Pins("C3"), IOStandard("LVCMOS33")),           #DIO1 ,  Output
    ("lora_config", 1, Pins("A4"), IOStandard("LVCMOS33")),           #ANT_SW, Output
    ("lora_config", 2, Pins("E5"), IOStandard("LVCMOS33")),           #RESET, Output

    #BusyPin
    ("lora_busy", 0, Pins("D5"), IOStandard("LVCMOS33")),          #Busy, Input
    


    #UART
    ("serial", 0,
        Subsignal("tx", Pins("F2")),
        Subsignal("rx", Pins("F5")),
        IOStandard("LVCMOS33"),
    ),

    #Shared SPI CLK
    #("spi_clk", 0, Pins("D1"), IOStandard("LVCMOS33")),
    #("spi_clk", 0, Pins("A1"), IOStandard("LVCMOS33")),


    #SPIFlash
    ("spiflash", 0,
        Subsignal("cs_n", Pins("C1"), IOStandard("LVCMOS33")),
        Subsignal("clk",  Pins("D1"), IOStandard("LVCMOS33")),
        Subsignal("miso", Pins("E1"), IOStandard("LVCMOS33")),
        Subsignal("mosi", Pins("F1"), IOStandard("LVCMOS33")),
    ),


    #SPI
    #("spi_bus",0,                   
        #Subsignal("clk", Pins("D1")),                  
        #Subsignal("clk", Pins("A1")), #breakout pin
        #Subsignal("cs_n", Pins("E3")),                 
        #Subsignal("mosi", Pins("B1")),                 
        #Subsignal("miso", Pins("A2")),                 
    #IOStandard("LVCMOS33"),
    #),


    #SPI TEST
    ("spi_bus",0,                   
        Subsignal("clk", Pins("A1")),
        Subsignal("cs_n", Pins("A5")),                 
        Subsignal("mosi", Pins("B5")),                 
        Subsignal("miso", Pins("C5")),                 
    IOStandard("LVCMOS33"),
    ),

]



# Platform-----------------------------------------------------------------------------

class Platform(LatticePlatform):
	default_clk_name   = "clk"
	default_clk_period = 1e9/50e6

	def __init__(self, toolchain="icestorm"):
		LatticePlatform.__init__(self, "ice40-up5k-uwg30", _io, toolchain=toolchain)

	def create_programmer(self):
        	return IceStormProgrammer()

	def do_finalize(self, fragment):
		LatticePlatform.do_finalize(self, fragment)
		self.add_period_constraint(self.lookup_request("clk", loose=True), 1e9/50e6)
