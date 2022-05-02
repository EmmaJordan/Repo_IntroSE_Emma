################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbed-os/features/lwipstack/lwip/src/core/lwip_altcp.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_altcp_alloc.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_altcp_tcp.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_def.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_dns.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_inet_chksum.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_init.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_ip.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_mem.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_memp.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_netif.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_pbuf.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_raw.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_stats.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_sys.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_tcp.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_tcp_in.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_tcp_out.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_timeouts.c \
../mbed-os/features/lwipstack/lwip/src/core/lwip_udp.c 

C_DEPS += \
./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp_alloc.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp_tcp.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_def.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_dns.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_inet_chksum.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_init.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_ip.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_mem.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_memp.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_netif.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_pbuf.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_raw.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_stats.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_sys.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp_in.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp_out.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_timeouts.d \
./mbed-os/features/lwipstack/lwip/src/core/lwip_udp.d 

OBJS += \
./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp_alloc.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp_tcp.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_def.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_dns.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_inet_chksum.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_init.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_ip.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_mem.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_memp.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_netif.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_pbuf.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_raw.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_stats.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_sys.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp_in.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp_out.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_timeouts.o \
./mbed-os/features/lwipstack/lwip/src/core/lwip_udp.o 


# Each subdirectory must supply rules for building sources it contributes
mbed-os/features/lwipstack/lwip/src/core/%.o mbed-os/features/lwipstack/lwip/src/core/%.su: ../mbed-os/features/lwipstack/lwip/src/core/%.c mbed-os/features/lwipstack/lwip/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=c99 -g3 -DUSB_STM_HAL -DDEVICE_CAN=1 -DDEVICE_SERIAL_FC=1 -DARM_MATH_CM4 -DCOMPONENT_FLASHIAP=1 -DDEVICE_SPI_ASYNCH=1 -DTARGET_STM32F429xI -DTARGET_STM -DCOMPONENT_NSPE=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_EMAC=1 -DDEVICE_SERIAL=1 -DDEVICE_SPISLAVE=1 -D__CMSIS_RTOS -DTARGET_RTOS_M4_M7 -DDEVICE_INTERRUPTIN=1 -DTARGET_FAMILY_STM32 -DUSE_HAL_DRIVER -DDEVICE_USBDEVICE=1 -DDEVICE_I2C=1 -DTOOLCHAIN_GCC -DTARGET_LIKE_MBED '-DMBED_BUILD_TIMESTAMP=1651527933.3610954' -DTARGET_STM32F4 -D__MBED__=1 -DDEVICE_PORTIN=1 -DTARGET_CORTEX -DTARGET_PSA -DTRANSACTION_QUEUE_SIZE_SPI=2 -DDEVICE_SLEEP=1 -DDEVICE_LPTICKER=1 -DDEVICE_ANALOGIN=1 -DDEVICE_STDIO_MESSAGES=1 -DDEVICE_TRNG=1 -DDEVICE_RESET_REASON=1 -DDEVICE_MPU=1 -DDEVICE_SERIAL_ASYNCH=1 -DUSBHOST_OTHER -DTARGET_M4 -DDEVICE_RTC=1 -DDEVICE_ANALOGOUT=1 -DUSE_FULL_LL_DRIVER -D__CORTEX_M4 -DTARGET_NUCLEO_F429ZI -DTARGET_RELEASE -DTARGET_STM32F429xx -D__FPU_PRESENT=1 -DTARGET_CORTEX_M -DDEVICE_FLASH=1 -DDEVICE_USTICKER=1 -DDEVICE_WATCHDOG=1 -DCOMPONENT_PSA_SRV_IMPL=1 -DDEVICE_PWMOUT=1 -DTARGET_NAME=NUCLEO_F429ZI -DCOMPONENT_PSA_SRV_EMUL=1 -DDEVICE_I2C_ASYNCH=1 -DTARGET_LIKE_CORTEX_M4 -DDEVICE_PORTINOUT=1 -DDEVICE_PORTOUT=1 -DDEVICE_SPI=1 -DTARGET_STM32F429 -DTARGET_STM32F429ZI -DTARGET_FF_ARDUINO -DDEVICE_I2CSLAVE=1 -D__MBED_CMSIS_RTOS_CM -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DNDEBUG -DNDEBUG -c -includeC:/Users/Win10/Desktop/Repo_IntroSE_Jordan/TP_Final_Emma/mbed_config.h -O2 -ffunction-sections -fdata-sections -Wall -Wextra -funsigned-char -fomit-frame-pointer -c -g3  -Wno-unused-parameter -Wno-missing-field-initializers -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" @"mbed-os/features/lwipstack/lwip/src/core/lwip_altcp.c_includes.args"

clean: clean-mbed-2d-os-2f-features-2f-lwipstack-2f-lwip-2f-src-2f-core

clean-mbed-2d-os-2f-features-2f-lwipstack-2f-lwip-2f-src-2f-core:
	-$(RM) ./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp_alloc.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp_alloc.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp_alloc.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp_tcp.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp_tcp.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_altcp_tcp.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_def.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_def.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_def.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_dns.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_dns.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_dns.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_inet_chksum.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_inet_chksum.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_inet_chksum.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_init.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_init.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_init.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_ip.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_ip.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_ip.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_mem.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_mem.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_mem.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_memp.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_memp.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_memp.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_netif.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_netif.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_netif.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_pbuf.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_pbuf.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_pbuf.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_raw.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_raw.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_raw.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_stats.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_stats.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_stats.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_sys.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_sys.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_sys.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp_in.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp_in.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp_in.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp_out.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp_out.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_tcp_out.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_timeouts.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_timeouts.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_timeouts.su ./mbed-os/features/lwipstack/lwip/src/core/lwip_udp.d ./mbed-os/features/lwipstack/lwip/src/core/lwip_udp.o ./mbed-os/features/lwipstack/lwip/src/core/lwip_udp.su

.PHONY: clean-mbed-2d-os-2f-features-2f-lwipstack-2f-lwip-2f-src-2f-core

