################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../system/src/SecureAttrib.c \
../system/src/main.c \
../system/src/retarget.c \
../system/src/system_TC8234.c 

S_UPPER_SRCS += \
../system/src/startup.S 

OBJS += \
./system/src/SecureAttrib.o \
./system/src/main.o \
./system/src/retarget.o \
./system/src/startup.o \
./system/src/system_TC8234.o 

S_UPPER_DEPS += \
./system/src/startup.d 

C_DEPS += \
./system/src/SecureAttrib.d \
./system/src/main.d \
./system/src/retarget.d \
./system/src/system_TC8234.d 


# Each subdirectory must supply rules for building sources it contributes
system/src/%.o: ../system/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m23 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -gdwarf-2 -DDEBUG -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/DEVICE" -Wa,-adhlns="$@.lst" -mcmse --specs=nano.specs  --specs=nosys.specs  -DDEBUG_PORT=UART0_NS -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

system/src/%.o: ../system/src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m23 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g3 -gdwarf-2 -x assembler-with-cpp -DDEBUG -I"../system/include" -I"../system/include/cmsis" -I"../system/include/DEVICE" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


