################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_03_OS/FreeRTOS/portable/MemMang/heap_1.c" 

COMPILED_SRCS += \
"Level_03_OS/FreeRTOS/portable/MemMang/heap_1.src" 

C_DEPS += \
"./Level_03_OS/FreeRTOS/portable/MemMang/heap_1.d" 

OBJS += \
"Level_03_OS/FreeRTOS/portable/MemMang/heap_1.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_03_OS/FreeRTOS/portable/MemMang/heap_1.src":"../Level_03_OS/FreeRTOS/portable/MemMang/heap_1.c" "Level_03_OS/FreeRTOS/portable/MemMang/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_03_OS/FreeRTOS/portable/MemMang/heap_1.o":"Level_03_OS/FreeRTOS/portable/MemMang/heap_1.src" "Level_03_OS/FreeRTOS/portable/MemMang/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_03_OS-2f-FreeRTOS-2f-portable-2f-MemMang

clean-Level_03_OS-2f-FreeRTOS-2f-portable-2f-MemMang:
	-$(RM) ./Level_03_OS/FreeRTOS/portable/MemMang/heap_1.d ./Level_03_OS/FreeRTOS/portable/MemMang/heap_1.o ./Level_03_OS/FreeRTOS/portable/MemMang/heap_1.src

.PHONY: clean-Level_03_OS-2f-FreeRTOS-2f-portable-2f-MemMang

