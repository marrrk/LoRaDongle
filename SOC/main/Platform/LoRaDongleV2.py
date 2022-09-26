from litex.build.generic_platform import *
from litex.build.lattice import LatticePlatform
from litex.build.lattice.programmer import IceStormProgrammer


# IOs--------------------------------------------------------------------------------

_io = [
    # Clk
    ("clk", 0, Pins("46"), IOStandard("LVCMOS33")),
    #("cpu_reset", 0, Pins("21"), IOStandard("LVCMOS33")),

    ("btn", 0, Pins("21"), IOStandard("LVCMOS33")),     #Testing Input Button for interrupt!


    # Leds
    ("user_led", 0, Pins("37"),  IOStandard("LVCMOS33")),           #RX LED
    ("user_led", 1, Pins("36"),  IOStandard("LVCMOS33")),           #TX LED


    #### When changing config pins, make sure to change the firmware as well. sx126x_hal.c and Radio.c uses these pins to set up radio
    #LoRa Configuration Pins
    ("lora_config", 0, Pins("35"), IOStandard("LVCMOS33")),           #ANT_SW, Output
    ("lora_config", 1, Pins("31"), IOStandard("LVCMOS33")),           #RESET, Output

    #Dio Interrupt Pin
    ("dio1", 0, Pins("34"), IOStandard("LVCMOS33")),          #DIO1, Input


    #BusyPin
    ("lora_busy", 0, Pins("32"), IOStandard("LVCMOS33")),          #Busy, Input
    

    #UART
    ("serial", 0,
        Subsignal("tx", Pins("9")),
        Subsignal("rx", Pins("6")),
        IOStandard("LVCMOS33"),
    ),

    #SPIFlash
    ("spiflash", 0,
        Subsignal("cs_n", Pins("16"), IOStandard("LVCMOS33")),
        Subsignal("clk",  Pins("15"), IOStandard("LVCMOS33")),
        Subsignal("miso", Pins("17"), IOStandard("LVCMOS33")),
        Subsignal("mosi", Pins("14"), IOStandard("LVCMOS33")),
    ),


    #SPI
    ("spi_bus",0,                   
        Subsignal("clk", Pins("26")),                  
        Subsignal("cs_n", Pins("25")),                 
        Subsignal("mosi", Pins("27")),                 
        Subsignal("miso", Pins("28")),                 
        IOStandard("LVCMOS33"),
    ),


    #I2C
    ("i2c_bus",0,
        Subsignal("sda", Pins("18")),
        Subsignal("scl", Pins("19")),
        IOStandard("LVCMOS33")
    )

]



# Platform-----------------------------------------------------------------------------

class Platform(LatticePlatform):
	default_clk_name   = "clk"
	default_clk_period = 1e9/50e6

	def __init__(self, toolchain="icestorm"):
		LatticePlatform.__init__(self, "ice40-up5k-sg48", _io, toolchain=toolchain)

	def create_programmer(self):
        	return IceStormProgrammer()

	def do_finalize(self, fragment):
		LatticePlatform.do_finalize(self, fragment)
		self.add_period_constraint(self.lookup_request("clk", loose=True), 1e9/50e6)
