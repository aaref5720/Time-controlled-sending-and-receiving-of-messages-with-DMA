################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_04_HAL/TC375_Ports/TC375_Port_10_functions.c" 

COMPILED_SRCS += \
"Level_04_HAL/TC375_Ports/TC375_Port_10_functions.src" 

C_DEPS += \
"./Level_04_HAL/TC375_Ports/TC375_Port_10_functions.d" 

OBJS += \
"Level_04_HAL/TC375_Ports/TC375_Port_10_functions.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_04_HAL/TC375_Ports/TC375_Port_10_functions.src":"../Level_04_HAL/TC375_Ports/TC375_Port_10_functions.c" "Level_04_HAL/TC375_Ports/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_04_HAL/TC375_Ports/TC375_Port_10_functions.o":"Level_04_HAL/TC375_Ports/TC375_Port_10_functions.src" "Level_04_HAL/TC375_Ports/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_04_HAL-2f-TC375_Ports

clean-Level_04_HAL-2f-TC375_Ports:
	-$(RM) ./Level_04_HAL/TC375_Ports/TC375_Port_10_functions.d ./Level_04_HAL/TC375_Ports/TC375_Port_10_functions.o ./Level_04_HAL/TC375_Ports/TC375_Port_10_functions.src

.PHONY: clean-Level_04_HAL-2f-TC375_Ports

