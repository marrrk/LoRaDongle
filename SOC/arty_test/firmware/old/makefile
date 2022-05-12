.DEFAULT_GOAL := all


CC_prefix := riscv64-unknown-elf-
COMPILE := $(CC_prefix)gcc
OBJCOPY := $(CC_prefix)objcopy
LINK	:= $(CC_prefix)ld 		#usin this command in the linker stage is the source of unrecognised emulation mode

BASE_DIR := .
BUILD_DIR=$(BASE_DIR)/../build
include $(BUILD_DIR)/software/include/generated/variables.mak 			#CPU flags comes from variables.mak
#include $(SOC_DIRECTORY)/software/common.mak


CFLAG_INCLUDES := -I$(BUILD_DIR)/software/include
LOCAL_INCLUDE := -I$(BASE_DIR)/include
C_INCLUDES:= $(CFLAG_INCLUDES) $(LOCAL_INCLUDE)
ADD_CPUFLAGS := -march=rv32im     -mabi=ilp32 -D__vexriscv__  #set the cpu variant, automatically generated in variables.mak as CPU_FLAGS
CFLAGS     := $(ADD_CPUFLAGS) \
			  -Wall -Wextra \
			  -ffunction-sections -fdata-sections -fno-common \
			  -fomit-frame-pointer \
			  -std=gnu11


LD_DIR := $(BUILD_DIR)/software/include
LD_SCRIPT := $(BASE_DIR)/linker.ld
LD_SCRIPTS := $(LD_SCRIPT) $(BUILD_DIR)/software/include/generated/output_format.ld $(BUILD_DIR)/software/include/generated/regions.ld 
LFLAGS     := $(CFLAGS)  -L$(LD_DIR)\
			  -nostartfiles \
			  -Wl,--gc-sections \
			  -Wl,--no-warn-mismatch \
			  -Wl,--script=$(LD_SCRIPT) \
			  -Wl,--build-id=none

			  #Debug options: inlcude -L$(LD_DIR) for the linker flags

#objcopy syntax:
	#riscv64-unknown-elf-objcopy [option(s)] in-file [out-file]

# Compile process: CC .c Files -> AS .S files - LD .elf/o files -> Objcopy from .o/elf to .bin

all: firmware.bin 


test:
	$(COMPILE) $(C_INCLUDES) $(CFLAGS) main.c -o test


firmware.bin: firmware.elf
	@echo "OBJCOPY		$^ -> $@"
	@$(OBJCOPY) -O binary $^ $@
	@chmod -x $@


firmware.elf: main.o crt0.o
	@echo "LD		$@"
	@$(COMPILE) $(C_INCLUDES) $^ $(LFLAGS) -o $@
	@chmod -x $@


main.o: main.c 
	@echo "CC 		$< -> $@"
	@$(COMPILE) -c $(C_INCLUDES) $(CFLAGS) $^ -o $@


crt0.o: $(CPU_DIRECTORY)/crt0.S
	@echo "AS 		crt0.S -> $@"
	@$(COMPILE) -c $(CFLAGS) -o $@ $<



run_serial:
	litex_term /dev/ttyUSB1 --kernel=firmware.bin

clean: 
	@rm  -f *.bin  && rm -f *.elf
	@rm  -f *.o && rm -f *.d

clean_test:
	@rm -f test

.PHONY: all run_serial clean clean_test