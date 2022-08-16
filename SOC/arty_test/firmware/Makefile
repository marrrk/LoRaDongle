BUILD_DIR?=../build/

include $(BUILD_DIR)/software/include/generated/variables.mak
include $(SOC_DIRECTORY)/software/common.mak

BASE_DIR = .
OBJ_DIR = .obj
PERIPHERAL_DIR = $(BASE_DIR)/peripherals
RADIO_DIR := $(BASE_DIR)/Radio
LD_DIR = $(BASE_DIR)/ld

CSOURCES   := $(wildcard *.c) $(wildcard $(PERIPHERAL_DIR)/*.c) $(wildcard $(RADIO_DIR)/*.c)
CPPSOURCES := $(wildcard $(PERIPHERAL_DIR)/*.cpp) $(wildcard $(RADIO_DIR)/*.cpp)
ASOURCES   := $(wildcard $(PERIPHERAL_DIR)/*.S) $(wildcard $(CPU_DIRECTORY)/crt0.S) $(wildcard $(RADIO_DIR)/*.S)
COBJS      := $(addprefix $(OBJ_DIR)/, $(notdir $(CSOURCES:.c=.o)))
CXXOBJS    := $(addprefix $(OBJ_DIR)/, $(notdir $(CPPSOURCES:.cpp=.o)))
AOBJS      := $(addprefix $(OBJ_DIR)/, $(notdir $(ASOURCES:.S=.o)))

LOCAL_INCLUDE = -I$(PERIPHERAL_DIR) -I$(RADIO_DIR)
L_INCLUDE = -L$(PERIPHERAL_DIR) -L$(RADIO_DIR)

c_flags = $(LOCAL_INCLUDE) $(CFLAGS)
l_flags = $(L_INCLUDE) $(LOCAL_INCLUDE) $(LDFLAGS)


define compile
$(CC) -c $(c_flags) $(1) $< -o $@
endef

OBJECTS = $(COBJS) $(CXXOBJS) $(AOBJS)

all: demo.bin

$(OBJECTS): | $(OBJ_DIR)

$(OBJ_DIR):
	@mkdir $(OBJ_DIR)

# pull in dependency info for *existing* .o files
-include $(OBJECTS:.o=.d)

%.bin: %.elf
	$(OBJCOPY) -O binary $< $@
	chmod -x $@

demo.elf: $(OBJECTS)
	$(CC) $(l_flags) \
		-T $(LD_DIR)/linker.ld \
		-N -o $@ \
		$(OBJECTS) \
		$(PACKAGES:%=-L$(BUILD_DIR)/software/%) \
		$(LIBS:lib%=-l%)
	chmod -x $@

$(OBJ_DIR)/main.o: main.c
	$(compile)

$(OBJ_DIR)/crt0.o: $(CPU_DIRECTORY)/crt0.S
	$(assemble)

$(OBJ_DIR)/%.o: $(PERIPHERAL_DIR)/%.c
	$(compile)

$(OBJ_DIR)/%.o: $(RADIO_DIR)/%.c
	$(compile)

%.o: %.cpp
	$(compilexx)

%.o: %.S
	$(assemble)

run: demo.bin
	litex_term /dev/ttyUSB1 --kernel=demo.bin

clean:
	$(RM) $(OBJECTS) $(OBJECTS:.o=.d) demo.elf demo.bin .*~ *~
	$(RM) -r $(OBJ_DIR)

.PHONY: all $(OBJ_DIR)/main.o clean run