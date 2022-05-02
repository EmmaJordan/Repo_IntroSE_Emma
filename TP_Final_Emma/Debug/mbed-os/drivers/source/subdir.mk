################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../mbed-os/drivers/source/AnalogIn.cpp \
../mbed-os/drivers/source/AnalogOut.cpp \
../mbed-os/drivers/source/BusIn.cpp \
../mbed-os/drivers/source/BusInOut.cpp \
../mbed-os/drivers/source/BusOut.cpp \
../mbed-os/drivers/source/CAN.cpp \
../mbed-os/drivers/source/DigitalIn.cpp \
../mbed-os/drivers/source/DigitalInOut.cpp \
../mbed-os/drivers/source/DigitalOut.cpp \
../mbed-os/drivers/source/Ethernet.cpp \
../mbed-os/drivers/source/FlashIAP.cpp \
../mbed-os/drivers/source/I2C.cpp \
../mbed-os/drivers/source/I2CSlave.cpp \
../mbed-os/drivers/source/InterruptIn.cpp \
../mbed-os/drivers/source/InterruptManager.cpp \
../mbed-os/drivers/source/MbedCRC.cpp \
../mbed-os/drivers/source/PortIn.cpp \
../mbed-os/drivers/source/PortInOut.cpp \
../mbed-os/drivers/source/PortOut.cpp \
../mbed-os/drivers/source/PwmOut.cpp \
../mbed-os/drivers/source/QSPI.cpp \
../mbed-os/drivers/source/RawSerial.cpp \
../mbed-os/drivers/source/ResetReason.cpp \
../mbed-os/drivers/source/SPI.cpp \
../mbed-os/drivers/source/SPISlave.cpp \
../mbed-os/drivers/source/Serial.cpp \
../mbed-os/drivers/source/SerialBase.cpp \
../mbed-os/drivers/source/SerialWireOutput.cpp \
../mbed-os/drivers/source/TableCRC.cpp \
../mbed-os/drivers/source/Ticker.cpp \
../mbed-os/drivers/source/Timeout.cpp \
../mbed-os/drivers/source/Timer.cpp \
../mbed-os/drivers/source/TimerEvent.cpp \
../mbed-os/drivers/source/UARTSerial.cpp \
../mbed-os/drivers/source/Watchdog.cpp 

OBJS += \
./mbed-os/drivers/source/AnalogIn.o \
./mbed-os/drivers/source/AnalogOut.o \
./mbed-os/drivers/source/BusIn.o \
./mbed-os/drivers/source/BusInOut.o \
./mbed-os/drivers/source/BusOut.o \
./mbed-os/drivers/source/CAN.o \
./mbed-os/drivers/source/DigitalIn.o \
./mbed-os/drivers/source/DigitalInOut.o \
./mbed-os/drivers/source/DigitalOut.o \
./mbed-os/drivers/source/Ethernet.o \
./mbed-os/drivers/source/FlashIAP.o \
./mbed-os/drivers/source/I2C.o \
./mbed-os/drivers/source/I2CSlave.o \
./mbed-os/drivers/source/InterruptIn.o \
./mbed-os/drivers/source/InterruptManager.o \
./mbed-os/drivers/source/MbedCRC.o \
./mbed-os/drivers/source/PortIn.o \
./mbed-os/drivers/source/PortInOut.o \
./mbed-os/drivers/source/PortOut.o \
./mbed-os/drivers/source/PwmOut.o \
./mbed-os/drivers/source/QSPI.o \
./mbed-os/drivers/source/RawSerial.o \
./mbed-os/drivers/source/ResetReason.o \
./mbed-os/drivers/source/SPI.o \
./mbed-os/drivers/source/SPISlave.o \
./mbed-os/drivers/source/Serial.o \
./mbed-os/drivers/source/SerialBase.o \
./mbed-os/drivers/source/SerialWireOutput.o \
./mbed-os/drivers/source/TableCRC.o \
./mbed-os/drivers/source/Ticker.o \
./mbed-os/drivers/source/Timeout.o \
./mbed-os/drivers/source/Timer.o \
./mbed-os/drivers/source/TimerEvent.o \
./mbed-os/drivers/source/UARTSerial.o \
./mbed-os/drivers/source/Watchdog.o 

CPP_DEPS += \
./mbed-os/drivers/source/AnalogIn.d \
./mbed-os/drivers/source/AnalogOut.d \
./mbed-os/drivers/source/BusIn.d \
./mbed-os/drivers/source/BusInOut.d \
./mbed-os/drivers/source/BusOut.d \
./mbed-os/drivers/source/CAN.d \
./mbed-os/drivers/source/DigitalIn.d \
./mbed-os/drivers/source/DigitalInOut.d \
./mbed-os/drivers/source/DigitalOut.d \
./mbed-os/drivers/source/Ethernet.d \
./mbed-os/drivers/source/FlashIAP.d \
./mbed-os/drivers/source/I2C.d \
./mbed-os/drivers/source/I2CSlave.d \
./mbed-os/drivers/source/InterruptIn.d \
./mbed-os/drivers/source/InterruptManager.d \
./mbed-os/drivers/source/MbedCRC.d \
./mbed-os/drivers/source/PortIn.d \
./mbed-os/drivers/source/PortInOut.d \
./mbed-os/drivers/source/PortOut.d \
./mbed-os/drivers/source/PwmOut.d \
./mbed-os/drivers/source/QSPI.d \
./mbed-os/drivers/source/RawSerial.d \
./mbed-os/drivers/source/ResetReason.d \
./mbed-os/drivers/source/SPI.d \
./mbed-os/drivers/source/SPISlave.d \
./mbed-os/drivers/source/Serial.d \
./mbed-os/drivers/source/SerialBase.d \
./mbed-os/drivers/source/SerialWireOutput.d \
./mbed-os/drivers/source/TableCRC.d \
./mbed-os/drivers/source/Ticker.d \
./mbed-os/drivers/source/Timeout.d \
./mbed-os/drivers/source/Timer.d \
./mbed-os/drivers/source/TimerEvent.d \
./mbed-os/drivers/source/UARTSerial.d \
./mbed-os/drivers/source/Watchdog.d 


# Each subdirectory must supply rules for building sources it contributes
mbed-os/drivers/source/%.o mbed-os/drivers/source/%.su: ../mbed-os/drivers/source/%.cpp mbed-os/drivers/source/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSB_STM_HAL -DDEVICE_CAN=1 -DDEVICE_SERIAL_FC=1 -DARM_MATH_CM4 -DCOMPONENT_FLASHIAP=1 -DDEVICE_SPI_ASYNCH=1 -DTARGET_STM32F429xI -DTARGET_STM -DCOMPONENT_NSPE=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_EMAC=1 -DDEVICE_SERIAL=1 -DDEVICE_SPISLAVE=1 -D__CMSIS_RTOS -DTARGET_RTOS_M4_M7 -DDEVICE_INTERRUPTIN=1 -DTARGET_FAMILY_STM32 -DUSE_HAL_DRIVER -DDEVICE_USBDEVICE=1 -DDEVICE_I2C=1 -DTOOLCHAIN_GCC -DTARGET_LIKE_MBED '-DMBED_BUILD_TIMESTAMP=1651527933.3610954' -DTARGET_STM32F4 -D__MBED__=1 -DDEVICE_PORTIN=1 -DTARGET_CORTEX -DTARGET_PSA -DTRANSACTION_QUEUE_SIZE_SPI=2 -DDEVICE_SLEEP=1 -DDEVICE_LPTICKER=1 -DDEVICE_ANALOGIN=1 -DDEVICE_STDIO_MESSAGES=1 -DDEVICE_TRNG=1 -DDEVICE_RESET_REASON=1 -DDEVICE_MPU=1 -DDEVICE_SERIAL_ASYNCH=1 -DUSBHOST_OTHER -DTARGET_M4 -DDEVICE_RTC=1 -DDEVICE_ANALOGOUT=1 -DUSE_FULL_LL_DRIVER -D__CORTEX_M4 -DTARGET_NUCLEO_F429ZI -DTARGET_RELEASE -DTARGET_STM32F429xx -D__FPU_PRESENT=1 -DTARGET_CORTEX_M -DDEVICE_FLASH=1 -DDEVICE_USTICKER=1 -DDEVICE_WATCHDOG=1 -DCOMPONENT_PSA_SRV_IMPL=1 -DDEVICE_PWMOUT=1 -DTARGET_NAME=NUCLEO_F429ZI -DCOMPONENT_PSA_SRV_EMUL=1 -DDEVICE_I2C_ASYNCH=1 -DTARGET_LIKE_CORTEX_M4 -DDEVICE_PORTINOUT=1 -DDEVICE_PORTOUT=1 -DDEVICE_SPI=1 -DTARGET_STM32F429 -DTARGET_STM32F429ZI -DTARGET_FF_ARDUINO -DDEVICE_I2CSLAVE=1 -D__MBED_CMSIS_RTOS_CM -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DNDEBUG -DNDEBUG -c -includeC:/Users/Win10/Desktop/Repo_IntroSE_Jordan/TP_Final_Emma/mbed_config.h -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wextra -funsigned-char -fomit-frame-pointer -c -g3 -Wvla -Wno-unused-parameter -Wno-missing-field-initializers -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" @"mbed-os/drivers/source/AnalogIn.cpp_includes.args"

clean: clean-mbed-2d-os-2f-drivers-2f-source

clean-mbed-2d-os-2f-drivers-2f-source:
	-$(RM) ./mbed-os/drivers/source/AnalogIn.d ./mbed-os/drivers/source/AnalogIn.o ./mbed-os/drivers/source/AnalogIn.su ./mbed-os/drivers/source/AnalogOut.d ./mbed-os/drivers/source/AnalogOut.o ./mbed-os/drivers/source/AnalogOut.su ./mbed-os/drivers/source/BusIn.d ./mbed-os/drivers/source/BusIn.o ./mbed-os/drivers/source/BusIn.su ./mbed-os/drivers/source/BusInOut.d ./mbed-os/drivers/source/BusInOut.o ./mbed-os/drivers/source/BusInOut.su ./mbed-os/drivers/source/BusOut.d ./mbed-os/drivers/source/BusOut.o ./mbed-os/drivers/source/BusOut.su ./mbed-os/drivers/source/CAN.d ./mbed-os/drivers/source/CAN.o ./mbed-os/drivers/source/CAN.su ./mbed-os/drivers/source/DigitalIn.d ./mbed-os/drivers/source/DigitalIn.o ./mbed-os/drivers/source/DigitalIn.su ./mbed-os/drivers/source/DigitalInOut.d ./mbed-os/drivers/source/DigitalInOut.o ./mbed-os/drivers/source/DigitalInOut.su ./mbed-os/drivers/source/DigitalOut.d ./mbed-os/drivers/source/DigitalOut.o ./mbed-os/drivers/source/DigitalOut.su ./mbed-os/drivers/source/Ethernet.d ./mbed-os/drivers/source/Ethernet.o ./mbed-os/drivers/source/Ethernet.su ./mbed-os/drivers/source/FlashIAP.d ./mbed-os/drivers/source/FlashIAP.o ./mbed-os/drivers/source/FlashIAP.su ./mbed-os/drivers/source/I2C.d ./mbed-os/drivers/source/I2C.o ./mbed-os/drivers/source/I2C.su ./mbed-os/drivers/source/I2CSlave.d ./mbed-os/drivers/source/I2CSlave.o ./mbed-os/drivers/source/I2CSlave.su ./mbed-os/drivers/source/InterruptIn.d ./mbed-os/drivers/source/InterruptIn.o ./mbed-os/drivers/source/InterruptIn.su ./mbed-os/drivers/source/InterruptManager.d ./mbed-os/drivers/source/InterruptManager.o ./mbed-os/drivers/source/InterruptManager.su ./mbed-os/drivers/source/MbedCRC.d ./mbed-os/drivers/source/MbedCRC.o ./mbed-os/drivers/source/MbedCRC.su ./mbed-os/drivers/source/PortIn.d ./mbed-os/drivers/source/PortIn.o ./mbed-os/drivers/source/PortIn.su ./mbed-os/drivers/source/PortInOut.d ./mbed-os/drivers/source/PortInOut.o ./mbed-os/drivers/source/PortInOut.su ./mbed-os/drivers/source/PortOut.d ./mbed-os/drivers/source/PortOut.o ./mbed-os/drivers/source/PortOut.su ./mbed-os/drivers/source/PwmOut.d ./mbed-os/drivers/source/PwmOut.o ./mbed-os/drivers/source/PwmOut.su ./mbed-os/drivers/source/QSPI.d ./mbed-os/drivers/source/QSPI.o ./mbed-os/drivers/source/QSPI.su ./mbed-os/drivers/source/RawSerial.d ./mbed-os/drivers/source/RawSerial.o ./mbed-os/drivers/source/RawSerial.su ./mbed-os/drivers/source/ResetReason.d ./mbed-os/drivers/source/ResetReason.o ./mbed-os/drivers/source/ResetReason.su ./mbed-os/drivers/source/SPI.d ./mbed-os/drivers/source/SPI.o ./mbed-os/drivers/source/SPI.su ./mbed-os/drivers/source/SPISlave.d ./mbed-os/drivers/source/SPISlave.o ./mbed-os/drivers/source/SPISlave.su ./mbed-os/drivers/source/Serial.d ./mbed-os/drivers/source/Serial.o ./mbed-os/drivers/source/Serial.su ./mbed-os/drivers/source/SerialBase.d ./mbed-os/drivers/source/SerialBase.o ./mbed-os/drivers/source/SerialBase.su ./mbed-os/drivers/source/SerialWireOutput.d ./mbed-os/drivers/source/SerialWireOutput.o ./mbed-os/drivers/source/SerialWireOutput.su ./mbed-os/drivers/source/TableCRC.d ./mbed-os/drivers/source/TableCRC.o ./mbed-os/drivers/source/TableCRC.su ./mbed-os/drivers/source/Ticker.d ./mbed-os/drivers/source/Ticker.o ./mbed-os/drivers/source/Ticker.su ./mbed-os/drivers/source/Timeout.d ./mbed-os/drivers/source/Timeout.o ./mbed-os/drivers/source/Timeout.su ./mbed-os/drivers/source/Timer.d ./mbed-os/drivers/source/Timer.o ./mbed-os/drivers/source/Timer.su ./mbed-os/drivers/source/TimerEvent.d ./mbed-os/drivers/source/TimerEvent.o ./mbed-os/drivers/source/TimerEvent.su ./mbed-os/drivers/source/UARTSerial.d ./mbed-os/drivers/source/UARTSerial.o ./mbed-os/drivers/source/UARTSerial.su ./mbed-os/drivers/source/Watchdog.d ./mbed-os/drivers/source/Watchdog.o ./mbed-os/drivers/source/Watchdog.su

.PHONY: clean-mbed-2d-os-2f-drivers-2f-source

