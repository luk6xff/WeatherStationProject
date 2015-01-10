################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
TCPclient.o: C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/WiFi/TCPclient.cpp $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Compiler'
	"C:/TI/Energia/energia-0101E0014/hardware/tools/lm4f/bin/arm-none-eabi-gcc.exe" -c -mcpu=cortex-m4 -march=armv7e-m -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fno-rtti -fno-exceptions -DF_CPU=80000000L -DARDUINO=101 -DENERGIA=12 -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/cores/lm4f" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/variants/stellarpad" -I"C:/TI/Energia/energia-0101E0014/hardware/tools/lm4f/arm-none-eabi/include" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/SPI" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/WiFi" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/WiFi/utility" -Os -ffunction-sections -fdata-sections -fsingle-precision-constant -g -gstrict-dwarf -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

TCPserver.o: C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/WiFi/TCPserver.cpp $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Compiler'
	"C:/TI/Energia/energia-0101E0014/hardware/tools/lm4f/bin/arm-none-eabi-gcc.exe" -c -mcpu=cortex-m4 -march=armv7e-m -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fno-rtti -fno-exceptions -DF_CPU=80000000L -DARDUINO=101 -DENERGIA=12 -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/cores/lm4f" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/variants/stellarpad" -I"C:/TI/Energia/energia-0101E0014/hardware/tools/lm4f/arm-none-eabi/include" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/SPI" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/WiFi" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/WiFi/utility" -Os -ffunction-sections -fdata-sections -fsingle-precision-constant -g -gstrict-dwarf -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

WiFi.o: C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/WiFi/WiFi.cpp $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Compiler'
	"C:/TI/Energia/energia-0101E0014/hardware/tools/lm4f/bin/arm-none-eabi-gcc.exe" -c -mcpu=cortex-m4 -march=armv7e-m -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fno-rtti -fno-exceptions -DF_CPU=80000000L -DARDUINO=101 -DENERGIA=12 -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/cores/lm4f" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/variants/stellarpad" -I"C:/TI/Energia/energia-0101E0014/hardware/tools/lm4f/arm-none-eabi/include" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/SPI" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/WiFi" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/WiFi/utility" -Os -ffunction-sections -fdata-sections -fsingle-precision-constant -g -gstrict-dwarf -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

WiFiUdp.o: C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/WiFi/WiFiUdp.cpp $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Compiler'
	"C:/TI/Energia/energia-0101E0014/hardware/tools/lm4f/bin/arm-none-eabi-gcc.exe" -c -mcpu=cortex-m4 -march=armv7e-m -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fno-rtti -fno-exceptions -DF_CPU=80000000L -DARDUINO=101 -DENERGIA=12 -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/cores/lm4f" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/variants/stellarpad" -I"C:/TI/Energia/energia-0101E0014/hardware/tools/lm4f/arm-none-eabi/include" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/SPI" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/WiFi" -I"C:/TI/Energia/energia-0101E0014/hardware/lm4f/libraries/WiFi/utility" -Os -ffunction-sections -fdata-sections -fsingle-precision-constant -g -gstrict-dwarf -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


