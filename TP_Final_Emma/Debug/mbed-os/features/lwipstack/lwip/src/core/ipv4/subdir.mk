################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_autoip.c \
../mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_dhcp.c \
../mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_etharp.c \
../mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_icmp.c \
../mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_igmp.c \
../mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4.c \
../mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4_addr.c \
../mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4_frag.c 

C_DEPS += \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_autoip.d \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_dhcp.d \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_etharp.d \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_icmp.d \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_igmp.d \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4.d \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4_addr.d \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4_frag.d 

OBJS += \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_autoip.o \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_dhcp.o \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_etharp.o \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_icmp.o \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_igmp.o \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4.o \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4_addr.o \
./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4_frag.o 


# Each subdirectory must supply rules for building sources it contributes
mbed-os/features/lwipstack/lwip/src/core/ipv4/%.o mbed-os/features/lwipstack/lwip/src/core/ipv4/%.su: ../mbed-os/features/lwipstack/lwip/src/core/ipv4/%.c mbed-os/features/lwipstack/lwip/src/core/ipv4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=c99 -g3 -DUSB_STM_HAL -DDEVICE_CAN=1 -DDEVICE_SERIAL_FC=1 -DARM_MATH_CM4 -DCOMPONENT_FLASHIAP=1 -DDEVICE_SPI_ASYNCH=1 -DTARGET_STM32F429xI -DTARGET_STM -DCOMPONENT_NSPE=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_EMAC=1 -DDEVICE_SERIAL=1 -DDEVICE_SPISLAVE=1 -D__CMSIS_RTOS -DTARGET_RTOS_M4_M7 -DDEVICE_INTERRUPTIN=1 -DTARGET_FAMILY_STM32 -DUSE_HAL_DRIVER -DDEVICE_USBDEVICE=1 -DDEVICE_I2C=1 -DTOOLCHAIN_GCC -DTARGET_LIKE_MBED '-DMBED_BUILD_TIMESTAMP=1651527933.3610954' -DTARGET_STM32F4 -D__MBED__=1 -DDEVICE_PORTIN=1 -DTARGET_CORTEX -DTARGET_PSA -DTRANSACTION_QUEUE_SIZE_SPI=2 -DDEVICE_SLEEP=1 -DDEVICE_LPTICKER=1 -DDEVICE_ANALOGIN=1 -DDEVICE_STDIO_MESSAGES=1 -DDEVICE_TRNG=1 -DDEVICE_RESET_REASON=1 -DDEVICE_MPU=1 -DDEVICE_SERIAL_ASYNCH=1 -DUSBHOST_OTHER -DTARGET_M4 -DDEVICE_RTC=1 -DDEVICE_ANALOGOUT=1 -DUSE_FULL_LL_DRIVER -D__CORTEX_M4 -DTARGET_NUCLEO_F429ZI -DTARGET_RELEASE -DTARGET_STM32F429xx -D__FPU_PRESENT=1 -DTARGET_CORTEX_M -DDEVICE_FLASH=1 -DDEVICE_USTICKER=1 -DDEVICE_WATCHDOG=1 -DCOMPONENT_PSA_SRV_IMPL=1 -DDEVICE_PWMOUT=1 -DTARGET_NAME=NUCLEO_F429ZI -DCOMPONENT_PSA_SRV_EMUL=1 -DDEVICE_I2C_ASYNCH=1 -DTARGET_LIKE_CORTEX_M4 -DDEVICE_PORTINOUT=1 -DDEVICE_PORTOUT=1 -DDEVICE_SPI=1 -DTARGET_STM32F429 -DTARGET_STM32F429ZI -DTARGET_FF_ARDUINO -DDEVICE_I2CSLAVE=1 -D__MBED_CMSIS_RTOS_CM -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DNDEBUG -DNDEBUG -c -includeC:/Users/Win10/Desktop/Repo_IntroSE_Jordan/TP_Final_Emma/mbed_config.h -O2 -ffunction-sections -fdata-sections -Wall -Wextra -funsigned-char -fomit-frame-pointer -c -g3  -Wno-unused-parameter -Wno-missing-field-initializers -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" @"mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_autoip.c_includes.args"

clean: clean-mbed-2d-os-2f-features-2f-lwipstack-2f-lwip-2f-src-2f-core-2f-ipv4

clean-mbed-2d-os-2f-features-2f-lwipstack-2f-lwip-2f-src-2f-core-2f-ipv4:
	-$(RM) ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_autoip.d ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_autoip.o ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_autoip.su ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_dhcp.d ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_dhcp.o ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_dhcp.su ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_etharp.d ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_etharp.o ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_etharp.su ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_icmp.d ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_icmp.o ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_icmp.su ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_igmp.d ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_igmp.o ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_igmp.su ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4.d ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4.o ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4.su ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4_addr.d ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4_addr.o ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4_addr.su ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4_frag.d ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4_frag.o ./mbed-os/features/lwipstack/lwip/src/core/ipv4/lwip_ip4_frag.su

.PHONY: clean-mbed-2d-os-2f-features-2f-lwipstack-2f-lwip-2f-src-2f-core-2f-ipv4

