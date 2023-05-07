################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/Source/FastMathFunctions/FastMathFunctions.c \
../Drivers/CMSIS/Source/FastMathFunctions/arm_cos_f32.c \
../Drivers/CMSIS/Source/FastMathFunctions/arm_cos_q15.c \
../Drivers/CMSIS/Source/FastMathFunctions/arm_cos_q31.c \
../Drivers/CMSIS/Source/FastMathFunctions/arm_sin_f32.c \
../Drivers/CMSIS/Source/FastMathFunctions/arm_sin_q15.c \
../Drivers/CMSIS/Source/FastMathFunctions/arm_sin_q31.c \
../Drivers/CMSIS/Source/FastMathFunctions/arm_sqrt_q15.c \
../Drivers/CMSIS/Source/FastMathFunctions/arm_sqrt_q31.c 

OBJS += \
./Drivers/CMSIS/Source/FastMathFunctions/FastMathFunctions.o \
./Drivers/CMSIS/Source/FastMathFunctions/arm_cos_f32.o \
./Drivers/CMSIS/Source/FastMathFunctions/arm_cos_q15.o \
./Drivers/CMSIS/Source/FastMathFunctions/arm_cos_q31.o \
./Drivers/CMSIS/Source/FastMathFunctions/arm_sin_f32.o \
./Drivers/CMSIS/Source/FastMathFunctions/arm_sin_q15.o \
./Drivers/CMSIS/Source/FastMathFunctions/arm_sin_q31.o \
./Drivers/CMSIS/Source/FastMathFunctions/arm_sqrt_q15.o \
./Drivers/CMSIS/Source/FastMathFunctions/arm_sqrt_q31.o 

C_DEPS += \
./Drivers/CMSIS/Source/FastMathFunctions/FastMathFunctions.d \
./Drivers/CMSIS/Source/FastMathFunctions/arm_cos_f32.d \
./Drivers/CMSIS/Source/FastMathFunctions/arm_cos_q15.d \
./Drivers/CMSIS/Source/FastMathFunctions/arm_cos_q31.d \
./Drivers/CMSIS/Source/FastMathFunctions/arm_sin_f32.d \
./Drivers/CMSIS/Source/FastMathFunctions/arm_sin_q15.d \
./Drivers/CMSIS/Source/FastMathFunctions/arm_sin_q31.d \
./Drivers/CMSIS/Source/FastMathFunctions/arm_sqrt_q15.d \
./Drivers/CMSIS/Source/FastMathFunctions/arm_sqrt_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Source/FastMathFunctions/%.o: ../Drivers/CMSIS/Source/FastMathFunctions/%.c Drivers/CMSIS/Source/FastMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DARM_MATH_CM4 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I"/Users/eduardomunoz/Library/CloudStorage/OneDrive-CalPoly/college/Spring 2023/RTOS/5_FFT_DMA/Drivers/CMSIS/DSP/Source" -I../Core/Inc -I"/Users/eduardomunoz/Library/CloudStorage/OneDrive-CalPoly/college/Spring 2023/RTOS/5_FFT_DMA/Drivers/CMSIS/Lib" -I"/Users/eduardomunoz/Library/CloudStorage/OneDrive-CalPoly/college/Spring 2023/RTOS/5_FFT_DMA/Drivers/CMSIS/DSP/Lib" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"/Users/eduardomunoz/Library/CloudStorage/OneDrive-CalPoly/college/Spring 2023/RTOS/5_FFT_DMA/Drivers/CMSIS/DSP/PrivateInclude" -I"/Users/eduardomunoz/Library/CloudStorage/OneDrive-CalPoly/college/Spring 2023/RTOS/5_FFT_DMA/Drivers/CMSIS/DSP/Include" -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-Source-2f-FastMathFunctions

clean-Drivers-2f-CMSIS-2f-Source-2f-FastMathFunctions:
	-$(RM) ./Drivers/CMSIS/Source/FastMathFunctions/FastMathFunctions.d ./Drivers/CMSIS/Source/FastMathFunctions/FastMathFunctions.o ./Drivers/CMSIS/Source/FastMathFunctions/arm_cos_f32.d ./Drivers/CMSIS/Source/FastMathFunctions/arm_cos_f32.o ./Drivers/CMSIS/Source/FastMathFunctions/arm_cos_q15.d ./Drivers/CMSIS/Source/FastMathFunctions/arm_cos_q15.o ./Drivers/CMSIS/Source/FastMathFunctions/arm_cos_q31.d ./Drivers/CMSIS/Source/FastMathFunctions/arm_cos_q31.o ./Drivers/CMSIS/Source/FastMathFunctions/arm_sin_f32.d ./Drivers/CMSIS/Source/FastMathFunctions/arm_sin_f32.o ./Drivers/CMSIS/Source/FastMathFunctions/arm_sin_q15.d ./Drivers/CMSIS/Source/FastMathFunctions/arm_sin_q15.o ./Drivers/CMSIS/Source/FastMathFunctions/arm_sin_q31.d ./Drivers/CMSIS/Source/FastMathFunctions/arm_sin_q31.o ./Drivers/CMSIS/Source/FastMathFunctions/arm_sqrt_q15.d ./Drivers/CMSIS/Source/FastMathFunctions/arm_sqrt_q15.o ./Drivers/CMSIS/Source/FastMathFunctions/arm_sqrt_q31.d ./Drivers/CMSIS/Source/FastMathFunctions/arm_sqrt_q31.o

.PHONY: clean-Drivers-2f-CMSIS-2f-Source-2f-FastMathFunctions

