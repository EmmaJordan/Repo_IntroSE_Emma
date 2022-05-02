################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../mbed-os/targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/device/TOOLCHAIN_GCC_ARM/startup_stm32f429xx.S 

OBJS += \
./mbed-os/targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/device/TOOLCHAIN_GCC_ARM/startup_stm32f429xx.o 

S_UPPER_DEPS += \
./mbed-os/targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/device/TOOLCHAIN_GCC_ARM/startup_stm32f429xx.d 


# Each subdirectory must supply rules for building sources it contributes
mbed-os/targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/device/TOOLCHAIN_GCC_ARM/%.o: ../mbed-os/targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/device/TOOLCHAIN_GCC_ARM/%.S mbed-os/targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/device/TOOLCHAIN_GCC_ARM/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -c -g3 --defsym USB_STM_HAL=1 --defsym USBHOST_OTHER=1 --defsym __CMSIS_RTOS=1 --defsym ARM_MATH_CM4=1 --defsym USE_HAL_DRIVER=1 --defsym USE_FULL_LL_DRIVER=1 --defsym __CORTEX_M4=1 --defsym __FPU_PRESENT=1 --defsym TRANSACTION_QUEUE_SIZE_SPI=2 --defsym __MBED_CMSIS_RTOS_CM=1 --defsym MBED_DEBUG=1 --defsym MBED_TRAP_ERRORS_ENABLED=1 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" "$<" @"mbed-os/targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/device/TOOLCHAIN_GCC_ARM/startup_stm32f429xx.S_includes.args"

clean: clean-mbed-2d-os-2f-targets-2f-TARGET_STM-2f-TARGET_STM32F4-2f-TARGET_STM32F429xI-2f-device-2f-TOOLCHAIN_GCC_ARM

clean-mbed-2d-os-2f-targets-2f-TARGET_STM-2f-TARGET_STM32F4-2f-TARGET_STM32F429xI-2f-device-2f-TOOLCHAIN_GCC_ARM:
	-$(RM) ./mbed-os/targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/device/TOOLCHAIN_GCC_ARM/startup_stm32f429xx.d ./mbed-os/targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/device/TOOLCHAIN_GCC_ARM/startup_stm32f429xx.o

.PHONY: clean-mbed-2d-os-2f-targets-2f-TARGET_STM-2f-TARGET_STM32F4-2f-TARGET_STM32F429xI-2f-device-2f-TOOLCHAIN_GCC_ARM

