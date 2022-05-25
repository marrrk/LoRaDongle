BUILD_DIR?=../build/

include $(BUILD_DIR)/software/include/generated/variables.mak
include $(SOC_DIRECTORY)/software/common.mak

BASE_DIR = .
LOCAL_INCLUDE = -I$(BASE_DIR)/include
L_INCLUDE = -L$(BASE_DIR)/include

c_flags = $(LOCAL_INCLUDE) $(CFLAGS)
l_flags = $(L_INCLUDE) $(LOCAL_INCLUDE) $(LDFLAGS)


define comp
$(CC) -c $(c_flags) $(1) $< -o $@
endef

OBJECTS   = main.o crt0.o time.o

all: demo.bin

# pull in dependency info for *existing* .o files
-include $(OBJECTS:.o=.d)

%.bin: %.elf
	$(OBJCOPY) -O binary $< $@
	chmod -x $@

demo.elf: $(OBJECTS)
	$(CC) $(LDFLAGS) \
		-T linker.ld \
		-N -o $@ \
		$(OBJECTS) \
		$(PACKAGES:%=-L$(BUILD_DIR)/software/%) \
		$(LIBS:lib%=-l%)
	chmod -x $@

main.o: main.c
	$(comp)

crt0.o: $(CPU_DIRECTORY)/crt0.S
	$(assemble)


%.o: %.cpp
	$(compilexx)

%.o: %.c
	$(comp)

%.o: %.S
	$(assemble)

run: demo.bin
	litex_term /dev/ttyUSB1 --kernel=demo.bin

clean:
	$(RM) $(OBJECTS) $(OBJECTS:.o=.d) demo.elf demo.bin .*~ *~

.PHONY: all main.o clean run