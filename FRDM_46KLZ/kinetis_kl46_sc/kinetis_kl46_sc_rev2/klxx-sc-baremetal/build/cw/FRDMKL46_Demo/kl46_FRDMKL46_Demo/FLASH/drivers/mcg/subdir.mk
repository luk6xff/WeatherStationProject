################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"$(MCG)/mcg.c" \

C_SRCS += \
$(MCG)/mcg.c \

OBJS += \
./drivers/mcg/mcg.o \

C_DEPS += \
./drivers/mcg/mcg.d \

OBJS_QUOTED += \
"./drivers/mcg/mcg.o" \

C_DEPS_QUOTED += \
"./drivers/mcg/mcg.d" \

OBJS_OS_FORMAT += \
./drivers/mcg/mcg.o \


# Each subdirectory must supply rules for building sources it contributes
drivers/mcg/mcg.o: $(MCG)/mcg.c
	@echo 'Building file: $<'
	@echo 'Executing target #28 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"drivers/mcg/mcg.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"drivers/mcg/mcg.o"
	@echo 'Finished building: $<'
	@echo ' '


