################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbed-os/features/frameworks/TARGET_PSA/pal/pal_attestation_intf.c \
../mbed-os/features/frameworks/TARGET_PSA/pal/pal_client_api_empty_intf.c \
../mbed-os/features/frameworks/TARGET_PSA/pal/pal_client_api_intf.c \
../mbed-os/features/frameworks/TARGET_PSA/pal/pal_internal_trusted_storage_intf.c \
../mbed-os/features/frameworks/TARGET_PSA/pal/pal_protected_storage_intf.c 

CPP_SRCS += \
../mbed-os/features/frameworks/TARGET_PSA/pal/pal_mbed_os_intf.cpp 

C_DEPS += \
./mbed-os/features/frameworks/TARGET_PSA/pal/pal_attestation_intf.d \
./mbed-os/features/frameworks/TARGET_PSA/pal/pal_client_api_empty_intf.d \
./mbed-os/features/frameworks/TARGET_PSA/pal/pal_client_api_intf.d \
./mbed-os/features/frameworks/TARGET_PSA/pal/pal_internal_trusted_storage_intf.d \
./mbed-os/features/frameworks/TARGET_PSA/pal/pal_protected_storage_intf.d 

OBJS += \
./mbed-os/features/frameworks/TARGET_PSA/pal/pal_attestation_intf.o \
./mbed-os/features/frameworks/TARGET_PSA/pal/pal_client_api_empty_intf.o \
./mbed-os/features/frameworks/TARGET_PSA/pal/pal_client_api_intf.o \
./mbed-os/features/frameworks/TARGET_PSA/pal/pal_internal_trusted_storage_intf.o \
./mbed-os/features/frameworks/TARGET_PSA/pal/pal_mbed_os_intf.o \
./mbed-os/features/frameworks/TARGET_PSA/pal/pal_protected_storage_intf.o 

CPP_DEPS += \
./mbed-os/features/frameworks/TARGET_PSA/pal/pal_mbed_os_intf.d 


# Each subdirectory must supply rules for building sources it contributes
mbed-os/features/frameworks/TARGET_PSA/pal/%.o mbed-os/features/frameworks/TARGET_PSA/pal/%.su: ../mbed-os/features/frameworks/TARGET_PSA/pal/%.c mbed-os/features/frameworks/TARGET_PSA/pal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=c99 -g3 -DUSB_STM_HAL -DDEVICE_CAN=1 -DDEVICE_SERIAL_FC=1 -DARM_MATH_CM4 -DCOMPONENT_FLASHIAP=1 -DDEVICE_SPI_ASYNCH=1 -DTARGET_STM32F429xI -DTARGET_STM -DCOMPONENT_NSPE=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_EMAC=1 -DDEVICE_SERIAL=1 -DDEVICE_SPISLAVE=1 -D__CMSIS_RTOS -DTARGET_RTOS_M4_M7 -DDEVICE_INTERRUPTIN=1 -DTARGET_FAMILY_STM32 -DUSE_HAL_DRIVER -DDEVICE_USBDEVICE=1 -DDEVICE_I2C=1 -DTOOLCHAIN_GCC -DTARGET_LIKE_MBED '-DMBED_BUILD_TIMESTAMP=1651527933.3610954' -DTARGET_STM32F4 -D__MBED__=1 -DDEVICE_PORTIN=1 -DTARGET_CORTEX -DTARGET_PSA -DTRANSACTION_QUEUE_SIZE_SPI=2 -DDEVICE_SLEEP=1 -DDEVICE_LPTICKER=1 -DDEVICE_ANALOGIN=1 -DDEVICE_STDIO_MESSAGES=1 -DDEVICE_TRNG=1 -DDEVICE_RESET_REASON=1 -DDEVICE_MPU=1 -DDEVICE_SERIAL_ASYNCH=1 -DUSBHOST_OTHER -DTARGET_M4 -DDEVICE_RTC=1 -DDEVICE_ANALOGOUT=1 -DUSE_FULL_LL_DRIVER -D__CORTEX_M4 -DTARGET_NUCLEO_F429ZI -DTARGET_RELEASE -DTARGET_STM32F429xx -D__FPU_PRESENT=1 -DTARGET_CORTEX_M -DDEVICE_FLASH=1 -DDEVICE_USTICKER=1 -DDEVICE_WATCHDOG=1 -DCOMPONENT_PSA_SRV_IMPL=1 -DDEVICE_PWMOUT=1 -DTARGET_NAME=NUCLEO_F429ZI -DCOMPONENT_PSA_SRV_EMUL=1 -DDEVICE_I2C_ASYNCH=1 -DTARGET_LIKE_CORTEX_M4 -DDEVICE_PORTINOUT=1 -DDEVICE_PORTOUT=1 -DDEVICE_SPI=1 -DTARGET_STM32F429 -DTARGET_STM32F429ZI -DTARGET_FF_ARDUINO -DDEVICE_I2CSLAVE=1 -D__MBED_CMSIS_RTOS_CM -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DNDEBUG -DNDEBUG -c -includeC:/Users/Win10/Desktop/Repo_IntroSE_Jordan/TP_Final_Emma/mbed_config.h -O2 -ffunction-sections -fdata-sections -Wall -Wextra -funsigned-char -fomit-frame-pointer -c -g3  -Wno-unused-parameter -Wno-missing-field-initializers -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" @"mbed-os/features/frameworks/TARGET_PSA/pal/pal_attestation_intf.c_includes.args"
mbed-os/features/frameworks/TARGET_PSA/pal/%.o mbed-os/features/frameworks/TARGET_PSA/pal/%.su: ../mbed-os/features/frameworks/TARGET_PSA/pal/%.cpp mbed-os/features/frameworks/TARGET_PSA/pal/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSB_STM_HAL -DDEVICE_CAN=1 -DDEVICE_SERIAL_FC=1 -DARM_MATH_CM4 -DCOMPONENT_FLASHIAP=1 -DDEVICE_SPI_ASYNCH=1 -DTARGET_STM32F429xI -DTARGET_STM -DCOMPONENT_NSPE=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_EMAC=1 -DDEVICE_SERIAL=1 -DDEVICE_SPISLAVE=1 -D__CMSIS_RTOS -DTARGET_RTOS_M4_M7 -DDEVICE_INTERRUPTIN=1 -DTARGET_FAMILY_STM32 -DUSE_HAL_DRIVER -DDEVICE_USBDEVICE=1 -DDEVICE_I2C=1 -DTOOLCHAIN_GCC -DTARGET_LIKE_MBED '-DMBED_BUILD_TIMESTAMP=1651527933.3610954' -DTARGET_STM32F4 -D__MBED__=1 -DDEVICE_PORTIN=1 -DTARGET_CORTEX -DTARGET_PSA -DTRANSACTION_QUEUE_SIZE_SPI=2 -DDEVICE_SLEEP=1 -DDEVICE_LPTICKER=1 -DDEVICE_ANALOGIN=1 -DDEVICE_STDIO_MESSAGES=1 -DDEVICE_TRNG=1 -DDEVICE_RESET_REASON=1 -DDEVICE_MPU=1 -DDEVICE_SERIAL_ASYNCH=1 -DUSBHOST_OTHER -DTARGET_M4 -DDEVICE_RTC=1 -DDEVICE_ANALOGOUT=1 -DUSE_FULL_LL_DRIVER -D__CORTEX_M4 -DTARGET_NUCLEO_F429ZI -DTARGET_RELEASE -DTARGET_STM32F429xx -D__FPU_PRESENT=1 -DTARGET_CORTEX_M -DDEVICE_FLASH=1 -DDEVICE_USTICKER=1 -DDEVICE_WATCHDOG=1 -DCOMPONENT_PSA_SRV_IMPL=1 -DDEVICE_PWMOUT=1 -DTARGET_NAME=NUCLEO_F429ZI -DCOMPONENT_PSA_SRV_EMUL=1 -DDEVICE_I2C_ASYNCH=1 -DTARGET_LIKE_CORTEX_M4 -DDEVICE_PORTINOUT=1 -DDEVICE_PORTOUT=1 -DDEVICE_SPI=1 -DTARGET_STM32F429 -DTARGET_STM32F429ZI -DTARGET_FF_ARDUINO -DDEVICE_I2CSLAVE=1 -D__MBED_CMSIS_RTOS_CM -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DNDEBUG -DNDEBUG -c -includeC:/Users/Win10/Desktop/Repo_IntroSE_Jordan/TP_Final_Emma/mbed_config.h -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wextra -funsigned-char -fomit-frame-pointer -c -g3 -Wvla -Wno-unused-parameter -Wno-missing-field-initializers -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" @"mbed-os/features/frameworks/TARGET_PSA/pal/pal_mbed_os_intf.cpp_includes.args"

clean: clean-mbed-2d-os-2f-features-2f-frameworks-2f-TARGET_PSA-2f-pal

clean-mbed-2d-os-2f-features-2f-frameworks-2f-TARGET_PSA-2f-pal:
	-$(RM) ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_attestation_intf.d ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_attestation_intf.o ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_attestation_intf.su ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_client_api_empty_intf.d ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_client_api_empty_intf.o ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_client_api_empty_intf.su ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_client_api_intf.d ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_client_api_intf.o ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_client_api_intf.su ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_internal_trusted_storage_intf.d ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_internal_trusted_storage_intf.o ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_internal_trusted_storage_intf.su ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_mbed_os_intf.d ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_mbed_os_intf.o ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_mbed_os_intf.su ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_protected_storage_intf.d ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_protected_storage_intf.o ./mbed-os/features/frameworks/TARGET_PSA/pal/pal_protected_storage_intf.su

.PHONY: clean-mbed-2d-os-2f-features-2f-frameworks-2f-TARGET_PSA-2f-pal

