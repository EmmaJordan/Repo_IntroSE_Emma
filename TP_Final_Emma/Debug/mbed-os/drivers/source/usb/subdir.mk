################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../mbed-os/drivers/source/usb/AsyncOp.cpp \
../mbed-os/drivers/source/usb/ByteBuffer.cpp \
../mbed-os/drivers/source/usb/EndpointResolver.cpp \
../mbed-os/drivers/source/usb/LinkedListBase.cpp \
../mbed-os/drivers/source/usb/OperationListBase.cpp \
../mbed-os/drivers/source/usb/PolledQueue.cpp \
../mbed-os/drivers/source/usb/TaskBase.cpp \
../mbed-os/drivers/source/usb/USBAudio.cpp \
../mbed-os/drivers/source/usb/USBCDC.cpp \
../mbed-os/drivers/source/usb/USBCDC_ECM.cpp \
../mbed-os/drivers/source/usb/USBDevice.cpp \
../mbed-os/drivers/source/usb/USBHID.cpp \
../mbed-os/drivers/source/usb/USBKeyboard.cpp \
../mbed-os/drivers/source/usb/USBMIDI.cpp \
../mbed-os/drivers/source/usb/USBMSD.cpp \
../mbed-os/drivers/source/usb/USBMouse.cpp \
../mbed-os/drivers/source/usb/USBMouseKeyboard.cpp \
../mbed-os/drivers/source/usb/USBSerial.cpp 

OBJS += \
./mbed-os/drivers/source/usb/AsyncOp.o \
./mbed-os/drivers/source/usb/ByteBuffer.o \
./mbed-os/drivers/source/usb/EndpointResolver.o \
./mbed-os/drivers/source/usb/LinkedListBase.o \
./mbed-os/drivers/source/usb/OperationListBase.o \
./mbed-os/drivers/source/usb/PolledQueue.o \
./mbed-os/drivers/source/usb/TaskBase.o \
./mbed-os/drivers/source/usb/USBAudio.o \
./mbed-os/drivers/source/usb/USBCDC.o \
./mbed-os/drivers/source/usb/USBCDC_ECM.o \
./mbed-os/drivers/source/usb/USBDevice.o \
./mbed-os/drivers/source/usb/USBHID.o \
./mbed-os/drivers/source/usb/USBKeyboard.o \
./mbed-os/drivers/source/usb/USBMIDI.o \
./mbed-os/drivers/source/usb/USBMSD.o \
./mbed-os/drivers/source/usb/USBMouse.o \
./mbed-os/drivers/source/usb/USBMouseKeyboard.o \
./mbed-os/drivers/source/usb/USBSerial.o 

CPP_DEPS += \
./mbed-os/drivers/source/usb/AsyncOp.d \
./mbed-os/drivers/source/usb/ByteBuffer.d \
./mbed-os/drivers/source/usb/EndpointResolver.d \
./mbed-os/drivers/source/usb/LinkedListBase.d \
./mbed-os/drivers/source/usb/OperationListBase.d \
./mbed-os/drivers/source/usb/PolledQueue.d \
./mbed-os/drivers/source/usb/TaskBase.d \
./mbed-os/drivers/source/usb/USBAudio.d \
./mbed-os/drivers/source/usb/USBCDC.d \
./mbed-os/drivers/source/usb/USBCDC_ECM.d \
./mbed-os/drivers/source/usb/USBDevice.d \
./mbed-os/drivers/source/usb/USBHID.d \
./mbed-os/drivers/source/usb/USBKeyboard.d \
./mbed-os/drivers/source/usb/USBMIDI.d \
./mbed-os/drivers/source/usb/USBMSD.d \
./mbed-os/drivers/source/usb/USBMouse.d \
./mbed-os/drivers/source/usb/USBMouseKeyboard.d \
./mbed-os/drivers/source/usb/USBSerial.d 


# Each subdirectory must supply rules for building sources it contributes
mbed-os/drivers/source/usb/%.o mbed-os/drivers/source/usb/%.su: ../mbed-os/drivers/source/usb/%.cpp mbed-os/drivers/source/usb/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSB_STM_HAL -DDEVICE_CAN=1 -DDEVICE_SERIAL_FC=1 -DARM_MATH_CM4 -DCOMPONENT_FLASHIAP=1 -DDEVICE_SPI_ASYNCH=1 -DTARGET_STM32F429xI -DTARGET_STM -DCOMPONENT_NSPE=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_EMAC=1 -DDEVICE_SERIAL=1 -DDEVICE_SPISLAVE=1 -D__CMSIS_RTOS -DTARGET_RTOS_M4_M7 -DDEVICE_INTERRUPTIN=1 -DTARGET_FAMILY_STM32 -DUSE_HAL_DRIVER -DDEVICE_USBDEVICE=1 -DDEVICE_I2C=1 -DTOOLCHAIN_GCC -DTARGET_LIKE_MBED '-DMBED_BUILD_TIMESTAMP=1651527933.3610954' -DTARGET_STM32F4 -D__MBED__=1 -DDEVICE_PORTIN=1 -DTARGET_CORTEX -DTARGET_PSA -DTRANSACTION_QUEUE_SIZE_SPI=2 -DDEVICE_SLEEP=1 -DDEVICE_LPTICKER=1 -DDEVICE_ANALOGIN=1 -DDEVICE_STDIO_MESSAGES=1 -DDEVICE_TRNG=1 -DDEVICE_RESET_REASON=1 -DDEVICE_MPU=1 -DDEVICE_SERIAL_ASYNCH=1 -DUSBHOST_OTHER -DTARGET_M4 -DDEVICE_RTC=1 -DDEVICE_ANALOGOUT=1 -DUSE_FULL_LL_DRIVER -D__CORTEX_M4 -DTARGET_NUCLEO_F429ZI -DTARGET_RELEASE -DTARGET_STM32F429xx -D__FPU_PRESENT=1 -DTARGET_CORTEX_M -DDEVICE_FLASH=1 -DDEVICE_USTICKER=1 -DDEVICE_WATCHDOG=1 -DCOMPONENT_PSA_SRV_IMPL=1 -DDEVICE_PWMOUT=1 -DTARGET_NAME=NUCLEO_F429ZI -DCOMPONENT_PSA_SRV_EMUL=1 -DDEVICE_I2C_ASYNCH=1 -DTARGET_LIKE_CORTEX_M4 -DDEVICE_PORTINOUT=1 -DDEVICE_PORTOUT=1 -DDEVICE_SPI=1 -DTARGET_STM32F429 -DTARGET_STM32F429ZI -DTARGET_FF_ARDUINO -DDEVICE_I2CSLAVE=1 -D__MBED_CMSIS_RTOS_CM -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DMBED_DEBUG -DMBED_TRAP_ERRORS_ENABLED=1 -DNDEBUG -DNDEBUG -c -includeC:/Users/Win10/Desktop/Repo_IntroSE_Jordan/TP_Final_Emma/mbed_config.h -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -Wextra -funsigned-char -fomit-frame-pointer -c -g3 -Wvla -Wno-unused-parameter -Wno-missing-field-initializers -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" @"mbed-os/drivers/source/usb/AsyncOp.cpp_includes.args"

clean: clean-mbed-2d-os-2f-drivers-2f-source-2f-usb

clean-mbed-2d-os-2f-drivers-2f-source-2f-usb:
	-$(RM) ./mbed-os/drivers/source/usb/AsyncOp.d ./mbed-os/drivers/source/usb/AsyncOp.o ./mbed-os/drivers/source/usb/AsyncOp.su ./mbed-os/drivers/source/usb/ByteBuffer.d ./mbed-os/drivers/source/usb/ByteBuffer.o ./mbed-os/drivers/source/usb/ByteBuffer.su ./mbed-os/drivers/source/usb/EndpointResolver.d ./mbed-os/drivers/source/usb/EndpointResolver.o ./mbed-os/drivers/source/usb/EndpointResolver.su ./mbed-os/drivers/source/usb/LinkedListBase.d ./mbed-os/drivers/source/usb/LinkedListBase.o ./mbed-os/drivers/source/usb/LinkedListBase.su ./mbed-os/drivers/source/usb/OperationListBase.d ./mbed-os/drivers/source/usb/OperationListBase.o ./mbed-os/drivers/source/usb/OperationListBase.su ./mbed-os/drivers/source/usb/PolledQueue.d ./mbed-os/drivers/source/usb/PolledQueue.o ./mbed-os/drivers/source/usb/PolledQueue.su ./mbed-os/drivers/source/usb/TaskBase.d ./mbed-os/drivers/source/usb/TaskBase.o ./mbed-os/drivers/source/usb/TaskBase.su ./mbed-os/drivers/source/usb/USBAudio.d ./mbed-os/drivers/source/usb/USBAudio.o ./mbed-os/drivers/source/usb/USBAudio.su ./mbed-os/drivers/source/usb/USBCDC.d ./mbed-os/drivers/source/usb/USBCDC.o ./mbed-os/drivers/source/usb/USBCDC.su ./mbed-os/drivers/source/usb/USBCDC_ECM.d ./mbed-os/drivers/source/usb/USBCDC_ECM.o ./mbed-os/drivers/source/usb/USBCDC_ECM.su ./mbed-os/drivers/source/usb/USBDevice.d ./mbed-os/drivers/source/usb/USBDevice.o ./mbed-os/drivers/source/usb/USBDevice.su ./mbed-os/drivers/source/usb/USBHID.d ./mbed-os/drivers/source/usb/USBHID.o ./mbed-os/drivers/source/usb/USBHID.su ./mbed-os/drivers/source/usb/USBKeyboard.d ./mbed-os/drivers/source/usb/USBKeyboard.o ./mbed-os/drivers/source/usb/USBKeyboard.su ./mbed-os/drivers/source/usb/USBMIDI.d ./mbed-os/drivers/source/usb/USBMIDI.o ./mbed-os/drivers/source/usb/USBMIDI.su ./mbed-os/drivers/source/usb/USBMSD.d ./mbed-os/drivers/source/usb/USBMSD.o ./mbed-os/drivers/source/usb/USBMSD.su ./mbed-os/drivers/source/usb/USBMouse.d ./mbed-os/drivers/source/usb/USBMouse.o ./mbed-os/drivers/source/usb/USBMouse.su ./mbed-os/drivers/source/usb/USBMouseKeyboard.d ./mbed-os/drivers/source/usb/USBMouseKeyboard.o ./mbed-os/drivers/source/usb/USBMouseKeyboard.su ./mbed-os/drivers/source/usb/USBSerial.d ./mbed-os/drivers/source/usb/USBSerial.o ./mbed-os/drivers/source/usb/USBSerial.su

.PHONY: clean-mbed-2d-os-2f-drivers-2f-source-2f-usb

