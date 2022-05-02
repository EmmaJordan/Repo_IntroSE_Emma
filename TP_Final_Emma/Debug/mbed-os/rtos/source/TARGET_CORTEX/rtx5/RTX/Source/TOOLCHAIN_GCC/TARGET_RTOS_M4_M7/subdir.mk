################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../mbed-os/rtos/source/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC/TARGET_RTOS_M4_M7/irq_cm4f.S 

OBJS += \
./mbed-os/rtos/source/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC/TARGET_RTOS_M4_M7/irq_cm4f.o 

S_UPPER_DEPS += \
./mbed-os/rtos/source/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC/TARGET_RTOS_M4_M7/irq_cm4f.d 


# Each subdirectory must supply rules for building sources it contributes
mbed-os/rtos/source/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC/TARGET_RTOS_M4_M7/%.o: ../mbed-os/rtos/source/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC/TARGET_RTOS_M4_M7/%.S mbed-os/rtos/source/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC/TARGET_RTOS_M4_M7/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -c -g3 --defsym USB_STM_HAL=1 --defsym USBHOST_OTHER=1 --defsym __CMSIS_RTOS=1 --defsym ARM_MATH_CM4=1 --defsym USE_HAL_DRIVER=1 --defsym USE_FULL_LL_DRIVER=1 --defsym __CORTEX_M4=1 --defsym __FPU_PRESENT=1 --defsym TRANSACTION_QUEUE_SIZE_SPI=2 --defsym __MBED_CMSIS_RTOS_CM=1 --defsym MBED_DEBUG=1 --defsym MBED_TRAP_ERRORS_ENABLED=1 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" "$<" @"mbed-os/rtos/source/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC/TARGET_RTOS_M4_M7/irq_cm4f.S_includes.args"

clean: clean-mbed-2d-os-2f-rtos-2f-source-2f-TARGET_CORTEX-2f-rtx5-2f-RTX-2f-Source-2f-TOOLCHAIN_GCC-2f-TARGET_RTOS_M4_M7

clean-mbed-2d-os-2f-rtos-2f-source-2f-TARGET_CORTEX-2f-rtx5-2f-RTX-2f-Source-2f-TOOLCHAIN_GCC-2f-TARGET_RTOS_M4_M7:
	-$(RM) ./mbed-os/rtos/source/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC/TARGET_RTOS_M4_M7/irq_cm4f.d ./mbed-os/rtos/source/TARGET_CORTEX/rtx5/RTX/Source/TOOLCHAIN_GCC/TARGET_RTOS_M4_M7/irq_cm4f.o

.PHONY: clean-mbed-2d-os-2f-rtos-2f-source-2f-TARGET_CORTEX-2f-rtx5-2f-RTX-2f-Source-2f-TOOLCHAIN_GCC-2f-TARGET_RTOS_M4_M7

