################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbed-os/features/mbedtls/src/certs.c \
../mbed-os/features/mbedtls/src/debug.c \
../mbed-os/features/mbedtls/src/error.c \
../mbed-os/features/mbedtls/src/net_sockets.c \
../mbed-os/features/mbedtls/src/pkcs11.c \
../mbed-os/features/mbedtls/src/ssl_cache.c \
../mbed-os/features/mbedtls/src/ssl_ciphersuites.c \
../mbed-os/features/mbedtls/src/ssl_cli.c \
../mbed-os/features/mbedtls/src/ssl_cookie.c \
../mbed-os/features/mbedtls/src/ssl_srv.c \
../mbed-os/features/mbedtls/src/ssl_ticket.c \
../mbed-os/features/mbedtls/src/ssl_tls.c \
../mbed-os/features/mbedtls/src/version.c \
../mbed-os/features/mbedtls/src/version_features.c \
../mbed-os/features/mbedtls/src/x509.c \
../mbed-os/features/mbedtls/src/x509_create.c \
../mbed-os/features/mbedtls/src/x509_crl.c \
../mbed-os/features/mbedtls/src/x509_crt.c \
../mbed-os/features/mbedtls/src/x509_csr.c \
../mbed-os/features/mbedtls/src/x509write_crt.c \
../mbed-os/features/mbedtls/src/x509write_csr.c 

C_DEPS += \
./mbed-os/features/mbedtls/src/certs.d \
./mbed-os/features/mbedtls/src/debug.d \
./mbed-os/features/mbedtls/src/error.d \
./mbed-os/features/mbedtls/src/net_sockets.d \
./mbed-os/features/mbedtls/src/pkcs11.d \
./mbed-os/features/mbedtls/src/ssl_cache.d \
./mbed-os/features/mbedtls/src/ssl_ciphersuites.d \
./mbed-os/features/mbedtls/src/ssl_cli.d \
./mbed-os/features/mbedtls/src/ssl_cookie.d \
./mbed-os/features/mbedtls/src/ssl_srv.d \
./mbed-os/features/mbedtls/src/ssl_ticket.d \
./mbed-os/features/mbedtls/src/ssl_tls.d \
./mbed-os/features/mbedtls/src/version.d \
./mbed-os/features/mbedtls/src/version_features.d \
./mbed-os/features/mbedtls/src/x509.d \
./mbed-os/features/mbedtls/src/x509_create.d \
./mbed-os/features/mbedtls/src/x509_crl.d \
./mbed-os/features/mbedtls/src/x509_crt.d \
./mbed-os/features/mbedtls/src/x509_csr.d \
./mbed-os/features/mbedtls/src/x509write_crt.d \
./mbed-os/features/mbedtls/src/x509write_csr.d 

OBJS += \
./mbed-os/features/mbedtls/src/certs.o \
./mbed-os/features/mbedtls/src/debug.o \
./mbed-os/features/mbedtls/src/error.o \
./mbed-os/features/mbedtls/src/net_sockets.o \
./mbed-os/features/mbedtls/src/pkcs11.o \
./mbed-os/features/mbedtls/src/ssl_cache.o \
./mbed-os/features/mbedtls/src/ssl_ciphersuites.o \
./mbed-os/features/mbedtls/src/ssl_cli.o \
./mbed-os/features/mbedtls/src/ssl_cookie.o \
./mbed-os/features/mbedtls/src/ssl_srv.o \
./mbed-os/features/mbedtls/src/ssl_ticket.o \
./mbed-os/features/mbedtls/src/ssl_tls.o \
./mbed-os/features/mbedtls/src/version.o \
./mbed-os/features/mbedtls/src/version_features.o \
./mbed-os/features/mbedtls/src/x509.o \
./mbed-os/features/mbedtls/src/x509_create.o \
./mbed-os/features/mbedtls/src/x509_crl.o \
./mbed-os/features/mbedtls/src/x509_crt.o \
./mbed-os/features/mbedtls/src/x509_csr.o \
./mbed-os/features/mbedtls/src/x509write_crt.o \
./mbed-os/features/mbedtls/src/x509write_csr.o 


# Each subdirectory must supply rules for building sources it contributes
mbed-os/features/mbedtls/src/%.o mbed-os/features/mbedtls/src/%.su: ../mbed-os/features/mbedtls/src/%.c mbed-os/features/mbedtls/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=c99 -g3 -DUSB_STM_HAL -DDEVICE_CAN=1 -DDEVICE_SERIAL_FC=1 -DARM_MATH_CM4 -DCOMPONENT_FLASHIAP=1 -DDEVICE_SPI_ASYNCH=1 -DTARGET_STM32F429xI -DTARGET_STM -DCOMPONENT_NSPE=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_EMAC=1 -DDEVICE_SERIAL=1 -DDEVICE_SPISLAVE=1 -D__CMSIS_RTOS -DTARGET_RTOS_M4_M7 -DDEVICE_INTERRUPTIN=1 -DTARGET_FAMILY_STM32 -DUSE_HAL_DRIVER -DDEVICE_USBDEVICE=1 -DDEVICE_I2C=1 -DTOOLCHAIN_GCC -DTARGET_LIKE_MBED '-DMBED_BUILD_TIMESTAMP=1651527933.3610954' -DTARGET_STM32F4 -D__MBED__=1 -DDEVICE_PORTIN=1 -DTARGET_CORTEX -DTARGET_PSA -DTRANSACTION_QUEUE_SIZE_SPI=2 -DDEVICE_SLEEP=1 -DDEVICE_LPTICKER=1 -DDEVICE_ANALOGIN=1 -DDEVICE_STDIO_MESSAGES=1 -DDEVICE_TRNG=1 -DDEVICE_RESET_REASON=1 -DDEVICE_MPU=1 -DDEVICE_SERIAL_ASYNCH=1 -DUSBHOST_OTHER -DTARGET_M4 -DDEVICE_RTC=1 -DDEVICE_ANALOGOUT=1 -DUSE_FULL_LL_DRIVER -D__CORTEX_M4 -DTARGET_NUCLEO_F429ZI -DTARGET_RELEASE -DTARGET_STM32F429xx -D__FPU_PRESENT=1 -DTARGET_CORTEX_M -DDEVICE_FLASH=1 -DDEVICE_USTICKER=1 -DDEVICE_WATCHDOG=1 -DCOMPONENT_PSA_SRV_IMPL=1 -DDEVICE_PWMOUT=1 -DTARGET_NAME=NUCLEO_F429ZI -DCOMPONENT_PSA_SRV_EMUL=1 -DDEVICE_I2C_ASYNCH=1 -DTARGET_LIKE_CORTEX_M4 -DDEVICE_PORTINOUT=1 -DDEVICE_PORTOUT=1 -DDEVICE_SPI=1 -DTARGET_STM32F429 -DTARGET_STM32F429ZI -DTARGET_FF_ARDUINO -DDEVICE_I2CSLAVE=1 -D__MBED_CMSIS_RTOS_CM -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DNDEBUG -DNDEBUG -c -includeC:/Users/Win10/Desktop/Repo_IntroSE_Jordan/TP_Final_Emma/mbed_config.h -O2 -ffunction-sections -fdata-sections -Wall -Wextra -funsigned-char -fomit-frame-pointer -c -g3  -Wno-unused-parameter -Wno-missing-field-initializers -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" @"mbed-os/features/mbedtls/src/certs.c_includes.args"

clean: clean-mbed-2d-os-2f-features-2f-mbedtls-2f-src

clean-mbed-2d-os-2f-features-2f-mbedtls-2f-src:
	-$(RM) ./mbed-os/features/mbedtls/src/certs.d ./mbed-os/features/mbedtls/src/certs.o ./mbed-os/features/mbedtls/src/certs.su ./mbed-os/features/mbedtls/src/debug.d ./mbed-os/features/mbedtls/src/debug.o ./mbed-os/features/mbedtls/src/debug.su ./mbed-os/features/mbedtls/src/error.d ./mbed-os/features/mbedtls/src/error.o ./mbed-os/features/mbedtls/src/error.su ./mbed-os/features/mbedtls/src/net_sockets.d ./mbed-os/features/mbedtls/src/net_sockets.o ./mbed-os/features/mbedtls/src/net_sockets.su ./mbed-os/features/mbedtls/src/pkcs11.d ./mbed-os/features/mbedtls/src/pkcs11.o ./mbed-os/features/mbedtls/src/pkcs11.su ./mbed-os/features/mbedtls/src/ssl_cache.d ./mbed-os/features/mbedtls/src/ssl_cache.o ./mbed-os/features/mbedtls/src/ssl_cache.su ./mbed-os/features/mbedtls/src/ssl_ciphersuites.d ./mbed-os/features/mbedtls/src/ssl_ciphersuites.o ./mbed-os/features/mbedtls/src/ssl_ciphersuites.su ./mbed-os/features/mbedtls/src/ssl_cli.d ./mbed-os/features/mbedtls/src/ssl_cli.o ./mbed-os/features/mbedtls/src/ssl_cli.su ./mbed-os/features/mbedtls/src/ssl_cookie.d ./mbed-os/features/mbedtls/src/ssl_cookie.o ./mbed-os/features/mbedtls/src/ssl_cookie.su ./mbed-os/features/mbedtls/src/ssl_srv.d ./mbed-os/features/mbedtls/src/ssl_srv.o ./mbed-os/features/mbedtls/src/ssl_srv.su ./mbed-os/features/mbedtls/src/ssl_ticket.d ./mbed-os/features/mbedtls/src/ssl_ticket.o ./mbed-os/features/mbedtls/src/ssl_ticket.su ./mbed-os/features/mbedtls/src/ssl_tls.d ./mbed-os/features/mbedtls/src/ssl_tls.o ./mbed-os/features/mbedtls/src/ssl_tls.su ./mbed-os/features/mbedtls/src/version.d ./mbed-os/features/mbedtls/src/version.o ./mbed-os/features/mbedtls/src/version.su ./mbed-os/features/mbedtls/src/version_features.d ./mbed-os/features/mbedtls/src/version_features.o ./mbed-os/features/mbedtls/src/version_features.su ./mbed-os/features/mbedtls/src/x509.d ./mbed-os/features/mbedtls/src/x509.o ./mbed-os/features/mbedtls/src/x509.su ./mbed-os/features/mbedtls/src/x509_create.d ./mbed-os/features/mbedtls/src/x509_create.o ./mbed-os/features/mbedtls/src/x509_create.su ./mbed-os/features/mbedtls/src/x509_crl.d ./mbed-os/features/mbedtls/src/x509_crl.o ./mbed-os/features/mbedtls/src/x509_crl.su ./mbed-os/features/mbedtls/src/x509_crt.d ./mbed-os/features/mbedtls/src/x509_crt.o ./mbed-os/features/mbedtls/src/x509_crt.su ./mbed-os/features/mbedtls/src/x509_csr.d ./mbed-os/features/mbedtls/src/x509_csr.o ./mbed-os/features/mbedtls/src/x509_csr.su ./mbed-os/features/mbedtls/src/x509write_crt.d ./mbed-os/features/mbedtls/src/x509write_crt.o ./mbed-os/features/mbedtls/src/x509write_crt.su ./mbed-os/features/mbedtls/src/x509write_csr.d ./mbed-os/features/mbedtls/src/x509write_csr.o ./mbed-os/features/mbedtls/src/x509write_csr.su

.PHONY: clean-mbed-2d-os-2f-features-2f-mbedtls-2f-src

