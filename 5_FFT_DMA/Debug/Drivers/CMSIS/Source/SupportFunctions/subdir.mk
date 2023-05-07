################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/Source/SupportFunctions/SupportFunctions.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_copy_f32.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_copy_q15.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_copy_q31.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_copy_q7.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_fill_f32.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_fill_q15.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_fill_q31.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_fill_q7.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q15.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q31.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q7.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_float.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_q31.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_q7.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_float.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_q15.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_q7.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_float.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_q15.c \
../Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_q31.c 

OBJS += \
./Drivers/CMSIS/Source/SupportFunctions/SupportFunctions.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_copy_f32.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_copy_q15.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_copy_q31.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_copy_q7.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_fill_f32.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_fill_q15.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_fill_q31.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_fill_q7.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q15.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q31.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q7.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_float.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_q31.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_q7.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_float.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_q15.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_q7.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_float.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_q15.o \
./Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_q31.o 

C_DEPS += \
./Drivers/CMSIS/Source/SupportFunctions/SupportFunctions.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_copy_f32.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_copy_q15.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_copy_q31.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_copy_q7.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_fill_f32.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_fill_q15.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_fill_q31.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_fill_q7.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q15.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q31.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q7.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_float.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_q31.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_q7.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_float.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_q15.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_q7.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_float.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_q15.d \
./Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Source/SupportFunctions/%.o: ../Drivers/CMSIS/Source/SupportFunctions/%.c Drivers/CMSIS/Source/SupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DARM_MATH_CM4 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I"/Users/eduardomunoz/Library/CloudStorage/OneDrive-CalPoly/college/Spring 2023/RTOS/5_FFT_DMA/Drivers/CMSIS/DSP/Source" -I../Core/Inc -I"/Users/eduardomunoz/Library/CloudStorage/OneDrive-CalPoly/college/Spring 2023/RTOS/5_FFT_DMA/Drivers/CMSIS/Lib" -I"/Users/eduardomunoz/Library/CloudStorage/OneDrive-CalPoly/college/Spring 2023/RTOS/5_FFT_DMA/Drivers/CMSIS/DSP/Lib" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"/Users/eduardomunoz/Library/CloudStorage/OneDrive-CalPoly/college/Spring 2023/RTOS/5_FFT_DMA/Drivers/CMSIS/DSP/PrivateInclude" -I"/Users/eduardomunoz/Library/CloudStorage/OneDrive-CalPoly/college/Spring 2023/RTOS/5_FFT_DMA/Drivers/CMSIS/DSP/Include" -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-Source-2f-SupportFunctions

clean-Drivers-2f-CMSIS-2f-Source-2f-SupportFunctions:
	-$(RM) ./Drivers/CMSIS/Source/SupportFunctions/SupportFunctions.d ./Drivers/CMSIS/Source/SupportFunctions/SupportFunctions.o ./Drivers/CMSIS/Source/SupportFunctions/arm_copy_f32.d ./Drivers/CMSIS/Source/SupportFunctions/arm_copy_f32.o ./Drivers/CMSIS/Source/SupportFunctions/arm_copy_q15.d ./Drivers/CMSIS/Source/SupportFunctions/arm_copy_q15.o ./Drivers/CMSIS/Source/SupportFunctions/arm_copy_q31.d ./Drivers/CMSIS/Source/SupportFunctions/arm_copy_q31.o ./Drivers/CMSIS/Source/SupportFunctions/arm_copy_q7.d ./Drivers/CMSIS/Source/SupportFunctions/arm_copy_q7.o ./Drivers/CMSIS/Source/SupportFunctions/arm_fill_f32.d ./Drivers/CMSIS/Source/SupportFunctions/arm_fill_f32.o ./Drivers/CMSIS/Source/SupportFunctions/arm_fill_q15.d ./Drivers/CMSIS/Source/SupportFunctions/arm_fill_q15.o ./Drivers/CMSIS/Source/SupportFunctions/arm_fill_q31.d ./Drivers/CMSIS/Source/SupportFunctions/arm_fill_q31.o ./Drivers/CMSIS/Source/SupportFunctions/arm_fill_q7.d ./Drivers/CMSIS/Source/SupportFunctions/arm_fill_q7.o ./Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q15.d ./Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q15.o ./Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q31.d ./Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q31.o ./Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q7.d ./Drivers/CMSIS/Source/SupportFunctions/arm_float_to_q7.o ./Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_float.d ./Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_float.o ./Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_q31.d ./Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_q31.o ./Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_q7.d ./Drivers/CMSIS/Source/SupportFunctions/arm_q15_to_q7.o ./Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_float.d ./Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_float.o ./Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_q15.d ./Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_q15.o ./Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_q7.d ./Drivers/CMSIS/Source/SupportFunctions/arm_q31_to_q7.o ./Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_float.d ./Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_float.o ./Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_q15.d ./Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_q15.o ./Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_q31.d ./Drivers/CMSIS/Source/SupportFunctions/arm_q7_to_q31.o

.PHONY: clean-Drivers-2f-CMSIS-2f-Source-2f-SupportFunctions

