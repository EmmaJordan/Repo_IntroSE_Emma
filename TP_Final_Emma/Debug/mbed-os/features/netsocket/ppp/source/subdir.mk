################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbed-os/features/netsocket/ppp/source/auth.c \
../mbed-os/features/netsocket/ppp/source/ccp.c \
../mbed-os/features/netsocket/ppp/source/chap-md5.c \
../mbed-os/features/netsocket/ppp/source/chap-new.c \
../mbed-os/features/netsocket/ppp/source/chap_ms.c \
../mbed-os/features/netsocket/ppp/source/demand.c \
../mbed-os/features/netsocket/ppp/source/eap.c \
../mbed-os/features/netsocket/ppp/source/eui64.c \
../mbed-os/features/netsocket/ppp/source/fsm.c \
../mbed-os/features/netsocket/ppp/source/ipcp.c \
../mbed-os/features/netsocket/ppp/source/ipv6cp.c \
../mbed-os/features/netsocket/ppp/source/lcp.c \
../mbed-os/features/netsocket/ppp/source/magic.c \
../mbed-os/features/netsocket/ppp/source/mppe.c \
../mbed-os/features/netsocket/ppp/source/multilink.c \
../mbed-os/features/netsocket/ppp/source/ppp.c \
../mbed-os/features/netsocket/ppp/source/ppp_ecp.c \
../mbed-os/features/netsocket/ppp/source/pppapi.c \
../mbed-os/features/netsocket/ppp/source/pppcrypt.c \
../mbed-os/features/netsocket/ppp/source/pppoe.c \
../mbed-os/features/netsocket/ppp/source/pppol2tp.c \
../mbed-os/features/netsocket/ppp/source/upap.c \
../mbed-os/features/netsocket/ppp/source/utils.c \
../mbed-os/features/netsocket/ppp/source/vj.c 

CPP_SRCS += \
../mbed-os/features/netsocket/ppp/source/pppos.cpp 

C_DEPS += \
./mbed-os/features/netsocket/ppp/source/auth.d \
./mbed-os/features/netsocket/ppp/source/ccp.d \
./mbed-os/features/netsocket/ppp/source/chap-md5.d \
./mbed-os/features/netsocket/ppp/source/chap-new.d \
./mbed-os/features/netsocket/ppp/source/chap_ms.d \
./mbed-os/features/netsocket/ppp/source/demand.d \
./mbed-os/features/netsocket/ppp/source/eap.d \
./mbed-os/features/netsocket/ppp/source/eui64.d \
./mbed-os/features/netsocket/ppp/source/fsm.d \
./mbed-os/features/netsocket/ppp/source/ipcp.d \
./mbed-os/features/netsocket/ppp/source/ipv6cp.d \
./mbed-os/features/netsocket/ppp/source/lcp.d \
./mbed-os/features/netsocket/ppp/source/magic.d \
./mbed-os/features/netsocket/ppp/source/mppe.d \
./mbed-os/features/netsocket/ppp/source/multilink.d \
./mbed-os/features/netsocket/ppp/source/ppp.d \
./mbed-os/features/netsocket/ppp/source/ppp_ecp.d \
./mbed-os/features/netsocket/ppp/source/pppapi.d \
./mbed-os/features/netsocket/ppp/source/pppcrypt.d \
./mbed-os/features/netsocket/ppp/source/pppoe.d \
./mbed-os/features/netsocket/ppp/source/pppol2tp.d \
./mbed-os/features/netsocket/ppp/source/upap.d \
./mbed-os/features/netsocket/ppp/source/utils.d \
./mbed-os/features/netsocket/ppp/source/vj.d 

OBJS += \
./mbed-os/features/netsocket/ppp/source/auth.o \
./mbed-os/features/netsocket/ppp/source/ccp.o \
./mbed-os/features/netsocket/ppp/source/chap-md5.o \
./mbed-os/features/netsocket/ppp/source/chap-new.o \
./mbed-os/features/netsocket/ppp/source/chap_ms.o \
./mbed-os/features/netsocket/ppp/source/demand.o \
./mbed-os/features/netsocket/ppp/source/eap.o \
./mbed-os/features/netsocket/ppp/source/eui64.o \
./mbed-os/features/netsocket/ppp/source/fsm.o \
./mbed-os/features/netsocket/ppp/source/ipcp.o \
./mbed-os/features/netsocket/ppp/source/ipv6cp.o \
./mbed-os/features/netsocket/ppp/source/lcp.o \
./mbed-os/features/netsocket/ppp/source/magic.o \
./mbed-os/features/netsocket/ppp/source/mppe.o \
./mbed-os/features/netsocket/ppp/source/multilink.o \
./mbed-os/features/netsocket/ppp/source/ppp.o \
./mbed-os/features/netsocket/ppp/source/ppp_ecp.o \
./mbed-os/features/netsocket/ppp/source/pppapi.o \
./mbed-os/features/netsocket/ppp/source/pppcrypt.o \
./mbed-os/features/netsocket/ppp/source/pppoe.o \
./mbed-os/features/netsocket/ppp/source/pppol2tp.o \
./mbed-os/features/netsocket/ppp/source/pppos.o \
./mbed-os/features/netsocket/ppp/source/upap.o \
./mbed-os/features/netsocket/ppp/source/utils.o \
./mbed-os/features/netsocket/ppp/source/vj.o 

CPP_DEPS += \
./mbed-os/features/netsocket/ppp/source/pppos.d 


# Each subdirectory must supply rules for building sources it contributes
mbed-os/features/netsocket/ppp/source/%.o mbed-os/features/netsocket/ppp/source/%.su: ../mbed-os/features/netsocket/ppp/source/%.c mbed-os/features/netsocket/ppp/source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=c99 -g3 -DUSB_STM_HAL -DDEVICE_CAN=1 -DDEVICE_SERIAL_FC=1 -DARM_MATH_CM4 -DCOMPONENT_FLASHIAP=1 -DDEVICE_SPI_ASYNCH=1 -DTARGET_STM32F429xI -DTARGET_STM -DCOMPONENT_NSPE=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_EMAC=1 -DDEVICE_SERIAL=1 -DDEVICE_SPISLAVE=1 -D__CMSIS_RTOS -DTARGET_RTOS_M4_M7 -DDEVICE_INTERRUPTIN=1 -DTARGET_FAMILY_STM32 -DUSE_HAL_DRIVER -DDEVICE_USBDEVICE=1 -DDEVICE_I2C=1 -DTOOLCHAIN_GCC -DTARGET_LIKE_MBED '-DMBED_BUILD_TIMESTAMP=1651527933.3610954' -DTARGET_STM32F4 -D__MBED__=1 -DDEVICE_PORTIN=1 -DTARGET_CORTEX -DTARGET_PSA -DTRANSACTION_QUEUE_SIZE_SPI=2 -DDEVICE_SLEEP=1 -DDEVICE_LPTICKER=1 -DDEVICE_ANALOGIN=1 -DDEVICE_STDIO_MESSAGES=1 -DDEVICE_TRNG=1 -DDEVICE_RESET_REASON=1 -DDEVICE_MPU=1 -DDEVICE_SERIAL_ASYNCH=1 -DUSBHOST_OTHER -DTARGET_M4 -DDEVICE_RTC=1 -DDEVICE_ANALOGOUT=1 -DUSE_FULL_LL_DRIVER -D__CORTEX_M4 -DTARGET_NUCLEO_F429ZI -DTARGET_RELEASE -DTARGET_STM32F429xx -D__FPU_PRESENT=1 -DTARGET_CORTEX_M -DDEVICE_FLASH=1 -DDEVICE_USTICKER=1 -DDEVICE_WATCHDOG=1 -DCOMPONENT_PSA_SRV_IMPL=1 -DDEVICE_PWMOUT=1 -DTARGET_NAME=NUCLEO_F429ZI -DCOMPONENT_PSA_SRV_EMUL=1 -DDEVICE_I2C_ASYNCH=1 -DTARGET_LIKE_CORTEX_M4 -DDEVICE_PORTINOUT=1 -DDEVICE_PORTOUT=1 -DDEVICE_SPI=1 -DTARGET_STM32F429 -DTARGET_STM32F429ZI -DTARGET_FF_ARDUINO -DDEVICE_I2CSLAVE=1 -D__MBED_CMSIS_RTOS_CM -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DNDEBUG -DNDEBUG -c -includeC:/Users/Win10/Desktop/Repo_IntroSE_Jordan/TP_Final_Emma/mbed_config.h -O2 -ffunction-sections -fdata-sections -Wall -Wextra -funsigned-char -fomit-frame-pointer -c -g3  -Wno-unused-parameter -Wno-missing-field-initializers -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" @"mbed-os/features/netsocket/ppp/source/auth.c_includes.args"
mbed-os/features/netsocket/ppp/source/%.o mbed-os/features/netsocket/ppp/source/%.su: ../mbed-os/features/netsocket/ppp/source/%.cpp mbed-os/features/netsocket/ppp/source/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSB_STM_HAL -DDEVICE_CAN=1 -DDEVICE_SERIAL_FC=1 -DARM_MATH_CM4 -DCOMPONENT_FLASHIAP=1 -DDEVICE_SPI_ASYNCH=1 -DTARGET_STM32F429xI -DTARGET_STM -DCOMPONENT_NSPE=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_EMAC=1 -DDEVICE_SERIAL=1 -DDEVICE_SPISLAVE=1 -D__CMSIS_RTOS -DTARGET_RTOS_M4_M7 -DDEVICE_INTERRUPTIN=1 -DTARGET_FAMILY_STM32 -DUSE_HAL_DRIVER -DDEVICE_USBDEVICE=1 -DDEVICE_I2C=1 -DTOOLCHAIN_GCC -DTARGET_LIKE_MBED '-DMBED_BUILD_TIMESTAMP=1651527933.3610954' -DTARGET_STM32F4 -D__MBED__=1 -DDEVICE_PORTIN=1 -DTARGET_CORTEX -DTARGET_PSA -DTRANSACTION_QUEUE_SIZE_SPI=2 -DDEVICE_SLEEP=1 -DDEVICE_LPTICKER=1 -DDEVICE_ANALOGIN=1 -DDEVICE_STDIO_MESSAGES=1 -DDEVICE_TRNG=1 -DDEVICE_RESET_REASON=1 -DDEVICE_MPU=1 -DDEVICE_SERIAL_ASYNCH=1 -DUSBHOST_OTHER -DTARGET_M4 -DDEVICE_RTC=1 -DDEVICE_ANALOGOUT=1 -DUSE_FULL_LL_DRIVER -D__CORTEX_M4 -DTARGET_NUCLEO_F429ZI -DTARGET_RELEASE -DTARGET_STM32F429xx -D__FPU_PRESENT=1 -DTARGET_CORTEX_M -DDEVICE_FLASH=1 -DDEVICE_USTICKER=1 -DDEVICE_WATCHDOG=1 -DCOMPONENT_PSA_SRV_IMPL=1 -DDEVICE_PWMOUT=1 -DTARGET_NAME=NUCLEO_F429ZI -DCOMPONENT_PSA_SRV_EMUL=1 -DDEVICE_I2C_ASYNCH=1 -DTARGET_LIKE_CORTEX_M4 -DDEVICE_PORTINOUT=1 -DDEVICE_PORTOUT=1 -DDEVICE_SPI=1 -DTARGET_STM32F429 -DTARGET_STM32F429ZI -DTARGET_FF_ARDUINO -DDEVICE_I2CSLAVE=1 -D__MBED_CMSIS_RTOS_CM -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DNDEBUG -DNDEBUG -c -includeC:/Users/Win10/Desktop/Repo_IntroSE_Jordan/TP_Final_Emma/mbed_config.h -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wextra -funsigned-char -fomit-frame-pointer -c -g3 -Wvla -Wno-unused-parameter -Wno-missing-field-initializers -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" @"mbed-os/features/netsocket/ppp/source/pppos.cpp_includes.args"

clean: clean-mbed-2d-os-2f-features-2f-netsocket-2f-ppp-2f-source

clean-mbed-2d-os-2f-features-2f-netsocket-2f-ppp-2f-source:
	-$(RM) ./mbed-os/features/netsocket/ppp/source/auth.d ./mbed-os/features/netsocket/ppp/source/auth.o ./mbed-os/features/netsocket/ppp/source/auth.su ./mbed-os/features/netsocket/ppp/source/ccp.d ./mbed-os/features/netsocket/ppp/source/ccp.o ./mbed-os/features/netsocket/ppp/source/ccp.su ./mbed-os/features/netsocket/ppp/source/chap-md5.d ./mbed-os/features/netsocket/ppp/source/chap-md5.o ./mbed-os/features/netsocket/ppp/source/chap-md5.su ./mbed-os/features/netsocket/ppp/source/chap-new.d ./mbed-os/features/netsocket/ppp/source/chap-new.o ./mbed-os/features/netsocket/ppp/source/chap-new.su ./mbed-os/features/netsocket/ppp/source/chap_ms.d ./mbed-os/features/netsocket/ppp/source/chap_ms.o ./mbed-os/features/netsocket/ppp/source/chap_ms.su ./mbed-os/features/netsocket/ppp/source/demand.d ./mbed-os/features/netsocket/ppp/source/demand.o ./mbed-os/features/netsocket/ppp/source/demand.su ./mbed-os/features/netsocket/ppp/source/eap.d ./mbed-os/features/netsocket/ppp/source/eap.o ./mbed-os/features/netsocket/ppp/source/eap.su ./mbed-os/features/netsocket/ppp/source/eui64.d ./mbed-os/features/netsocket/ppp/source/eui64.o ./mbed-os/features/netsocket/ppp/source/eui64.su ./mbed-os/features/netsocket/ppp/source/fsm.d ./mbed-os/features/netsocket/ppp/source/fsm.o ./mbed-os/features/netsocket/ppp/source/fsm.su ./mbed-os/features/netsocket/ppp/source/ipcp.d ./mbed-os/features/netsocket/ppp/source/ipcp.o ./mbed-os/features/netsocket/ppp/source/ipcp.su ./mbed-os/features/netsocket/ppp/source/ipv6cp.d ./mbed-os/features/netsocket/ppp/source/ipv6cp.o ./mbed-os/features/netsocket/ppp/source/ipv6cp.su ./mbed-os/features/netsocket/ppp/source/lcp.d ./mbed-os/features/netsocket/ppp/source/lcp.o ./mbed-os/features/netsocket/ppp/source/lcp.su ./mbed-os/features/netsocket/ppp/source/magic.d ./mbed-os/features/netsocket/ppp/source/magic.o ./mbed-os/features/netsocket/ppp/source/magic.su ./mbed-os/features/netsocket/ppp/source/mppe.d ./mbed-os/features/netsocket/ppp/source/mppe.o ./mbed-os/features/netsocket/ppp/source/mppe.su ./mbed-os/features/netsocket/ppp/source/multilink.d ./mbed-os/features/netsocket/ppp/source/multilink.o ./mbed-os/features/netsocket/ppp/source/multilink.su ./mbed-os/features/netsocket/ppp/source/ppp.d ./mbed-os/features/netsocket/ppp/source/ppp.o ./mbed-os/features/netsocket/ppp/source/ppp.su ./mbed-os/features/netsocket/ppp/source/ppp_ecp.d ./mbed-os/features/netsocket/ppp/source/ppp_ecp.o ./mbed-os/features/netsocket/ppp/source/ppp_ecp.su ./mbed-os/features/netsocket/ppp/source/pppapi.d ./mbed-os/features/netsocket/ppp/source/pppapi.o ./mbed-os/features/netsocket/ppp/source/pppapi.su ./mbed-os/features/netsocket/ppp/source/pppcrypt.d ./mbed-os/features/netsocket/ppp/source/pppcrypt.o ./mbed-os/features/netsocket/ppp/source/pppcrypt.su ./mbed-os/features/netsocket/ppp/source/pppoe.d ./mbed-os/features/netsocket/ppp/source/pppoe.o ./mbed-os/features/netsocket/ppp/source/pppoe.su ./mbed-os/features/netsocket/ppp/source/pppol2tp.d ./mbed-os/features/netsocket/ppp/source/pppol2tp.o ./mbed-os/features/netsocket/ppp/source/pppol2tp.su ./mbed-os/features/netsocket/ppp/source/pppos.d ./mbed-os/features/netsocket/ppp/source/pppos.o ./mbed-os/features/netsocket/ppp/source/pppos.su ./mbed-os/features/netsocket/ppp/source/upap.d ./mbed-os/features/netsocket/ppp/source/upap.o ./mbed-os/features/netsocket/ppp/source/upap.su ./mbed-os/features/netsocket/ppp/source/utils.d ./mbed-os/features/netsocket/ppp/source/utils.o ./mbed-os/features/netsocket/ppp/source/utils.su ./mbed-os/features/netsocket/ppp/source/vj.d ./mbed-os/features/netsocket/ppp/source/vj.o ./mbed-os/features/netsocket/ppp/source/vj.su

.PHONY: clean-mbed-2d-os-2f-features-2f-netsocket-2f-ppp-2f-source

