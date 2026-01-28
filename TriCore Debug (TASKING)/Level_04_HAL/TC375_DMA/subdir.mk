################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_04_HAL/TC375_DMA/TC375_DMA_functions.c" 

COMPILED_SRCS += \
"Level_04_HAL/TC375_DMA/TC375_DMA_functions.src" 

C_DEPS += \
"./Level_04_HAL/TC375_DMA/TC375_DMA_functions.d" 

OBJS += \
"Level_04_HAL/TC375_DMA/TC375_DMA_functions.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_04_HAL/TC375_DMA/TC375_DMA_functions.src":"../Level_04_HAL/TC375_DMA/TC375_DMA_functions.c" "Level_04_HAL/TC375_DMA/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_04_HAL/TC375_DMA/TC375_DMA_functions.o":"Level_04_HAL/TC375_DMA/TC375_DMA_functions.src" "Level_04_HAL/TC375_DMA/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_04_HAL-2f-TC375_DMA

clean-Level_04_HAL-2f-TC375_DMA:
	-$(RM) ./Level_04_HAL/TC375_DMA/TC375_DMA_functions.d ./Level_04_HAL/TC375_DMA/TC375_DMA_functions.o ./Level_04_HAL/TC375_DMA/TC375_DMA_functions.src

.PHONY: clean-Level_04_HAL-2f-TC375_DMA

