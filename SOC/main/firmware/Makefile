BUILD_DIR?=../build/LoRaDongle

include $(BUILD_DIR)/software/include/generated/variables.mak
include $(SOC_DIRECTORY)/software/common.mak

BASE_DIR = .
OBJ_DIR = .obj
SRC_DIR = $(BASE_DIR)/src
THIRD_PARTY := $(BASE_DIR)/third_party
LD_DIR = $(BASE_DIR)/ld

CSOURCES   := $(wildcard $(SRC_DIR)/*.c) $(wildcard $(THIRD_PARTY)/libbase/*.c) $(wildcard $(THIRD_PARTY)/*.c)
CPPSOURCES := $(wildcard $(SRC_DIR)/*.cpp) $(wildcard $(THIRD_PARTY)/libbase/*.cpp) $(wildcard $(THIRD_PARTY)/*.cpp)
ASOURCES   :=  $(wildcard $(CPU_DIRECTORY)/crt0.S) $(wildcard $(THIRD_PARTY)/libbase/*.S) $(wildcard $(THIRD_PARTY)/*.S)
COBJS      := $(addprefix $(OBJ_DIR)/, $(notdir $(CSOURCES:.c=.o)))
CXXOBJS    := $(addprefix $(OBJ_DIR)/, $(notdir $(CPPSOURCES:.cpp=.o)))
AOBJS      := $(addprefix $(OBJ_DIR)/, $(notdir $(ASOURCES:.S=.o)))

LOCAL_INCLUDE = -I$(BASE_DIR)/include
L_INCLUDE = -L$(BASE_DIR)/include

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

$(OBJ_DIR)/main.o: $(SRC_DIR)/main.c
	$(compile)

$(OBJ_DIR)/crt0.o: $(CPU_DIRECTORY)/crt0.S
	$(assemble)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(compile)

%.o: %.cpp
	$(compilexx)

%.o: %.S
	$(assemble)

run: demo.bin
	litex_term /dev/ttyUSB1 --kernel=demo.bin

prog: demo.bin
	iceprog -o 0x00020000 $<

clean:
	$(RM) $(OBJECTS) $(OBJECTS:.o=.d) demo.elf demo.bin .*~ *~
	$(RM) -r $(OBJ_DIR)

.PHONY: all $(OBJ_DIR)/main.o clean run