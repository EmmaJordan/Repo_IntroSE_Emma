################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../mbed-os/features/netsocket/DTLSSocket.cpp \
../mbed-os/features/netsocket/DTLSSocketWrapper.cpp \
../mbed-os/features/netsocket/EMACInterface.cpp \
../mbed-os/features/netsocket/EthernetInterface.cpp \
../mbed-os/features/netsocket/InternetSocket.cpp \
../mbed-os/features/netsocket/L3IPInterface.cpp \
../mbed-os/features/netsocket/NetStackMemoryManager.cpp \
../mbed-os/features/netsocket/NetworkInterface.cpp \
../mbed-os/features/netsocket/NetworkInterfaceDefaults.cpp \
../mbed-os/features/netsocket/NetworkStack.cpp \
../mbed-os/features/netsocket/PPPInterface.cpp \
../mbed-os/features/netsocket/SocketAddress.cpp \
../mbed-os/features/netsocket/SocketStats.cpp \
../mbed-os/features/netsocket/TCPServer.cpp \
../mbed-os/features/netsocket/TCPSocket.cpp \
../mbed-os/features/netsocket/TLSSocket.cpp \
../mbed-os/features/netsocket/TLSSocketWrapper.cpp \
../mbed-os/features/netsocket/UDPSocket.cpp \
../mbed-os/features/netsocket/WiFiAccessPoint.cpp \
../mbed-os/features/netsocket/nsapi_dns.cpp 

OBJS += \
./mbed-os/features/netsocket/DTLSSocket.o \
./mbed-os/features/netsocket/DTLSSocketWrapper.o \
./mbed-os/features/netsocket/EMACInterface.o \
./mbed-os/features/netsocket/EthernetInterface.o \
./mbed-os/features/netsocket/InternetSocket.o \
./mbed-os/features/netsocket/L3IPInterface.o \
./mbed-os/features/netsocket/NetStackMemoryManager.o \
./mbed-os/features/netsocket/NetworkInterface.o \
./mbed-os/features/netsocket/NetworkInterfaceDefaults.o \
./mbed-os/features/netsocket/NetworkStack.o \
./mbed-os/features/netsocket/PPPInterface.o \
./mbed-os/features/netsocket/SocketAddress.o \
./mbed-os/features/netsocket/SocketStats.o \
./mbed-os/features/netsocket/TCPServer.o \
./mbed-os/features/netsocket/TCPSocket.o \
./mbed-os/features/netsocket/TLSSocket.o \
./mbed-os/features/netsocket/TLSSocketWrapper.o \
./mbed-os/features/netsocket/UDPSocket.o \
./mbed-os/features/netsocket/WiFiAccessPoint.o \
./mbed-os/features/netsocket/nsapi_dns.o 

CPP_DEPS += \
./mbed-os/features/netsocket/DTLSSocket.d \
./mbed-os/features/netsocket/DTLSSocketWrapper.d \
./mbed-os/features/netsocket/EMACInterface.d \
./mbed-os/features/netsocket/EthernetInterface.d \
./mbed-os/features/netsocket/InternetSocket.d \
./mbed-os/features/netsocket/L3IPInterface.d \
./mbed-os/features/netsocket/NetStackMemoryManager.d \
./mbed-os/features/netsocket/NetworkInterface.d \
./mbed-os/features/netsocket/NetworkInterfaceDefaults.d \
./mbed-os/features/netsocket/NetworkStack.d \
./mbed-os/features/netsocket/PPPInterface.d \
./mbed-os/features/netsocket/SocketAddress.d \
./mbed-os/features/netsocket/SocketStats.d \
./mbed-os/features/netsocket/TCPServer.d \
./mbed-os/features/netsocket/TCPSocket.d \
./mbed-os/features/netsocket/TLSSocket.d \
./mbed-os/features/netsocket/TLSSocketWrapper.d \
./mbed-os/features/netsocket/UDPSocket.d \
./mbed-os/features/netsocket/WiFiAccessPoint.d \
./mbed-os/features/netsocket/nsapi_dns.d 


# Each subdirectory must supply rules for building sources it contributes
mbed-os/features/netsocket/%.o mbed-os/features/netsocket/%.su: ../mbed-os/features/netsocket/%.cpp mbed-os/features/netsocket/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSB_STM_HAL -DDEVICE_CAN=1 -DDEVICE_SERIAL_FC=1 -DARM_MATH_CM4 -DCOMPONENT_FLASHIAP=1 -DDEVICE_SPI_ASYNCH=1 -DTARGET_STM32F429xI -DTARGET_STM -DCOMPONENT_NSPE=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_EMAC=1 -DDEVICE_SERIAL=1 -DDEVICE_SPISLAVE=1 -D__CMSIS_RTOS -DTARGET_RTOS_M4_M7 -DDEVICE_INTERRUPTIN=1 -DTARGET_FAMILY_STM32 -DUSE_HAL_DRIVER -DDEVICE_USBDEVICE=1 -DDEVICE_I2C=1 -DTOOLCHAIN_GCC -DTARGET_LIKE_MBED '-DMBED_BUILD_TIMESTAMP=1651527933.3610954' -DTARGET_STM32F4 -D__MBED__=1 -DDEVICE_PORTIN=1 -DTARGET_CORTEX -DTARGET_PSA -DTRANSACTION_QUEUE_SIZE_SPI=2 -DDEVICE_SLEEP=1 -DDEVICE_LPTICKER=1 -DDEVICE_ANALOGIN=1 -DDEVICE_STDIO_MESSAGES=1 -DDEVICE_TRNG=1 -DDEVICE_RESET_REASON=1 -DDEVICE_MPU=1 -DDEVICE_SERIAL_ASYNCH=1 -DUSBHOST_OTHER -DTARGET_M4 -DDEVICE_RTC=1 -DDEVICE_ANALOGOUT=1 -DUSE_FULL_LL_DRIVER -D__CORTEX_M4 -DTARGET_NUCLEO_F429ZI -DTARGET_RELEASE -DTARGET_STM32F429xx -D__FPU_PRESENT=1 -DTARGET_CORTEX_M -DDEVICE_FLASH=1 -DDEVICE_USTICKER=1 -DDEVICE_WATCHDOG=1 -DCOMPONENT_PSA_SRV_IMPL=1 -DDEVICE_PWMOUT=1 -DTARGET_NAME=NUCLEO_F429ZI -DCOMPONENT_PSA_SRV_EMUL=1 -DDEVICE_I2C_ASYNCH=1 -DTARGET_LIKE_CORTEX_M4 -DDEVICE_PORTINOUT=1 -DDEVICE_PORTOUT=1 -DDEVICE_SPI=1 -DTARGET_STM32F429 -DTARGET_STM32F429ZI -DTARGET_FF_ARDUINO -DDEVICE_I2CSLAVE=1 -D__MBED_CMSIS_RTOS_CM -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DNDEBUG -DNDEBUG -c -includeC:/Users/Win10/Desktop/Repo_IntroSE_Jordan/TP_Final_Emma/mbed_config.h -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wextra -funsigned-char -fomit-frame-pointer -c -g3 -Wvla -Wno-unused-parameter -Wno-missing-field-initializers -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" @"mbed-os/features/netsocket/DTLSSocket.cpp_includes.args"

clean: clean-mbed-2d-os-2f-features-2f-netsocket

clean-mbed-2d-os-2f-features-2f-netsocket:
	-$(RM) ./mbed-os/features/netsocket/DTLSSocket.d ./mbed-os/features/netsocket/DTLSSocket.o ./mbed-os/features/netsocket/DTLSSocket.su ./mbed-os/features/netsocket/DTLSSocketWrapper.d ./mbed-os/features/netsocket/DTLSSocketWrapper.o ./mbed-os/features/netsocket/DTLSSocketWrapper.su ./mbed-os/features/netsocket/EMACInterface.d ./mbed-os/features/netsocket/EMACInterface.o ./mbed-os/features/netsocket/EMACInterface.su ./mbed-os/features/netsocket/EthernetInterface.d ./mbed-os/features/netsocket/EthernetInterface.o ./mbed-os/features/netsocket/EthernetInterface.su ./mbed-os/features/netsocket/InternetSocket.d ./mbed-os/features/netsocket/InternetSocket.o ./mbed-os/features/netsocket/InternetSocket.su ./mbed-os/features/netsocket/L3IPInterface.d ./mbed-os/features/netsocket/L3IPInterface.o ./mbed-os/features/netsocket/L3IPInterface.su ./mbed-os/features/netsocket/NetStackMemoryManager.d ./mbed-os/features/netsocket/NetStackMemoryManager.o ./mbed-os/features/netsocket/NetStackMemoryManager.su ./mbed-os/features/netsocket/NetworkInterface.d ./mbed-os/features/netsocket/NetworkInterface.o ./mbed-os/features/netsocket/NetworkInterface.su ./mbed-os/features/netsocket/NetworkInterfaceDefaults.d ./mbed-os/features/netsocket/NetworkInterfaceDefaults.o ./mbed-os/features/netsocket/NetworkInterfaceDefaults.su ./mbed-os/features/netsocket/NetworkStack.d ./mbed-os/features/netsocket/NetworkStack.o ./mbed-os/features/netsocket/NetworkStack.su ./mbed-os/features/netsocket/PPPInterface.d ./mbed-os/features/netsocket/PPPInterface.o ./mbed-os/features/netsocket/PPPInterface.su ./mbed-os/features/netsocket/SocketAddress.d ./mbed-os/features/netsocket/SocketAddress.o ./mbed-os/features/netsocket/SocketAddress.su ./mbed-os/features/netsocket/SocketStats.d ./mbed-os/features/netsocket/SocketStats.o ./mbed-os/features/netsocket/SocketStats.su ./mbed-os/features/netsocket/TCPServer.d ./mbed-os/features/netsocket/TCPServer.o ./mbed-os/features/netsocket/TCPServer.su ./mbed-os/features/netsocket/TCPSocket.d ./mbed-os/features/netsocket/TCPSocket.o ./mbed-os/features/netsocket/TCPSocket.su ./mbed-os/features/netsocket/TLSSocket.d ./mbed-os/features/netsocket/TLSSocket.o ./mbed-os/features/netsocket/TLSSocket.su ./mbed-os/features/netsocket/TLSSocketWrapper.d ./mbed-os/features/netsocket/TLSSocketWrapper.o ./mbed-os/features/netsocket/TLSSocketWrapper.su ./mbed-os/features/netsocket/UDPSocket.d ./mbed-os/features/netsocket/UDPSocket.o ./mbed-os/features/netsocket/UDPSocket.su ./mbed-os/features/netsocket/WiFiAccessPoint.d ./mbed-os/features/netsocket/WiFiAccessPoint.o ./mbed-os/features/netsocket/WiFiAccessPoint.su ./mbed-os/features/netsocket/nsapi_dns.d ./mbed-os/features/netsocket/nsapi_dns.o ./mbed-os/features/netsocket/nsapi_dns.su

.PHONY: clean-mbed-2d-os-2f-features-2f-netsocket

