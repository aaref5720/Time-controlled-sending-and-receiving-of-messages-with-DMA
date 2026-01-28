################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Assert.c" \
"../Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Bsp.c" 

COMPILED_SRCS += \
"Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Assert.src" \
"Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Bsp.src" 

C_DEPS += \
"./Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Assert.d" \
"./Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Bsp.d" 

OBJS += \
"Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Assert.o" \
"Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Bsp.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Assert.src":"../Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Assert.c" "Level_Libraries/Service/CpuGeneric/SysSe/Bsp/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Assert.o":"Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Assert.src" "Level_Libraries/Service/CpuGeneric/SysSe/Bsp/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Bsp.src":"../Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Bsp.c" "Level_Libraries/Service/CpuGeneric/SysSe/Bsp/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Bsp.o":"Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Bsp.src" "Level_Libraries/Service/CpuGeneric/SysSe/Bsp/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_Libraries-2f-Service-2f-CpuGeneric-2f-SysSe-2f-Bsp

clean-Level_Libraries-2f-Service-2f-CpuGeneric-2f-SysSe-2f-Bsp:
	-$(RM) ./Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Assert.d ./Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Assert.o ./Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Assert.src ./Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Bsp.d ./Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Bsp.o ./Level_Libraries/Service/CpuGeneric/SysSe/Bsp/Bsp.src

.PHONY: clean-Level_Libraries-2f-Service-2f-CpuGeneric-2f-SysSe-2f-Bsp

