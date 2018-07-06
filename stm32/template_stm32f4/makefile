################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# PROJECT_PATH := /home/robot/workspace/stm32/template_stm32f4/
# PROJECT_NAME := template_stm32f4
RM := rm -rf build $(PROJECT_NAME).bin $(PROJECT_NAME).elf
DEBUG := 0

ifeq ($(DEBUG), 1)
EXTRA_FLAGS := -O0 -g3
else
EXTRA_FLAGS := -O3
endif

OBJ_SRCS := 
S_SRCS := 
ASM_SRCS := 
C_SRCS := 
S_UPPER_SRCS := 
O_SRCS := 
EXECUTABLES := 
COBJS := 
SOBJS := 
S_UPPER_DEPS := 
C_DEPS := 
USER_OBJS :=
LIBS :=

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
$(shell find src startup CMSIS StdPeriph_Driver -name "*.s")

C_SRCS += \
$(shell find src startup CMSIS StdPeriph_Driver -name "*.c")

TMP := $(C_SRCS:.c=.o)
COBJS += $(addprefix build/, $(notdir $(TMP))) 
TMP := $(S_SRCS:.s=.o)
SOBJS += $(addprefix build/, $(notdir $(TMP))) 

C_DEPS += $(COBJS:.o=.d)
C_DEPS += $(SOBJS:.o=.d)

debug:
	@echo $(SOBJS)
	@echo $(COBJS)

# Each subdirectory must supply rules for building sources it contributes
build/%.o: startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -I"$(PROJECT_PATH)inc" -I"$(PROJECT_PATH)StdPeriph_Driver/inc" -I"$(PROJECT_PATH)CMSIS/device" -I"$(PROJECT_PATH)CMSIS/core" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

build/%.o: src/%.c 
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F429VETx -DDEBUG -DSTM32F429_439xx -DUSE_STDPERIPH_DRIVER -I"$(PROJECT_PATH)StdPeriph_Driver/inc" -I"$(PROJECT_PATH)inc" -I"$(PROJECT_PATH)CMSIS/device" -I"$(PROJECT_PATH)CMSIS/core" $(EXTRA_FLAGS) -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

build/%.o: StdPeriph_Driver/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F429VETx -DDEBUG -DSTM32F429_439xx -DUSE_STDPERIPH_DRIVER -I"$(PROJECT_PATH)StdPeriph_Driver/inc" -I"$(PROJECT_PATH)inc" -I"$(PROJECT_PATH)CMSIS/device" -I"$(PROJECT_PATH)CMSIS/core" $(EXTRA_FLAGS) -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


# All Target
all: mkdirs $(PROJECT_NAME).elf

# Tool invocations
$(PROJECT_NAME).elf: $(COBJS) $(SOBJS) $(PROJECT_PATH)LinkerScript.ld
	@echo 'Building target: $@'
	@echo 'Invoking: MCU GCC Linker'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -T"$(PROJECT_PATH)LinkerScript.ld" -Wl,-Map=output.map -Wl,--gc-sections -o "$(PROJECT_NAME).elf" $(COBJS) $(SOBJS) $(LIBS) -lm
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build


# Other Targets
mkdirs:
	[ -d build ] || mkdir build 

clean:
	-$(RM)
	-@echo ' '

post-build:
	-@echo 'Generating binary and Printing size information:'
	arm-none-eabi-objcopy -O binary "$(PROJECT_NAME).elf" "$(PROJECT_NAME).bin"
	arm-none-eabi-size "$(PROJECT_NAME).elf"
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build
