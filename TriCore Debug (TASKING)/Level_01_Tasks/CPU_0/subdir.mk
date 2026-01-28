################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_01_Tasks/CPU_0/Task_Display.c" \
"../Level_01_Tasks/CPU_0/Task_HeartBeat_LED1.c" \
"../Level_01_Tasks/CPU_0/Task_Objects.c" \
"../Level_01_Tasks/CPU_0/Task_Switches.c" 

COMPILED_SRCS += \
"Level_01_Tasks/CPU_0/Task_Display.src" \
"Level_01_Tasks/CPU_0/Task_HeartBeat_LED1.src" \
"Level_01_Tasks/CPU_0/Task_Objects.src" \
"Level_01_Tasks/CPU_0/Task_Switches.src" 

C_DEPS += \
"./Level_01_Tasks/CPU_0/Task_Display.d" \
"./Level_01_Tasks/CPU_0/Task_HeartBeat_LED1.d" \
"./Level_01_Tasks/CPU_0/Task_Objects.d" \
"./Level_01_Tasks/CPU_0/Task_Switches.d" 

OBJS += \
"Level_01_Tasks/CPU_0/Task_Display.o" \
"Level_01_Tasks/CPU_0/Task_HeartBeat_LED1.o" \
"Level_01_Tasks/CPU_0/Task_Objects.o" \
"Level_01_Tasks/CPU_0/Task_Switches.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_01_Tasks/CPU_0/Task_Display.src":"../Level_01_Tasks/CPU_0/Task_Display.c" "Level_01_Tasks/CPU_0/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_01_Tasks/CPU_0/Task_Display.o":"Level_01_Tasks/CPU_0/Task_Display.src" "Level_01_Tasks/CPU_0/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_01_Tasks/CPU_0/Task_HeartBeat_LED1.src":"../Level_01_Tasks/CPU_0/Task_HeartBeat_LED1.c" "Level_01_Tasks/CPU_0/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_01_Tasks/CPU_0/Task_HeartBeat_LED1.o":"Level_01_Tasks/CPU_0/Task_HeartBeat_LED1.src" "Level_01_Tasks/CPU_0/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_01_Tasks/CPU_0/Task_Objects.src":"../Level_01_Tasks/CPU_0/Task_Objects.c" "Level_01_Tasks/CPU_0/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_01_Tasks/CPU_0/Task_Objects.o":"Level_01_Tasks/CPU_0/Task_Objects.src" "Level_01_Tasks/CPU_0/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_01_Tasks/CPU_0/Task_Switches.src":"../Level_01_Tasks/CPU_0/Task_Switches.c" "Level_01_Tasks/CPU_0/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_01_Tasks/CPU_0/Task_Switches.o":"Level_01_Tasks/CPU_0/Task_Switches.src" "Level_01_Tasks/CPU_0/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_01_Tasks-2f-CPU_0

clean-Level_01_Tasks-2f-CPU_0:
	-$(RM) ./Level_01_Tasks/CPU_0/Task_Display.d ./Level_01_Tasks/CPU_0/Task_Display.o ./Level_01_Tasks/CPU_0/Task_Display.src ./Level_01_Tasks/CPU_0/Task_HeartBeat_LED1.d ./Level_01_Tasks/CPU_0/Task_HeartBeat_LED1.o ./Level_01_Tasks/CPU_0/Task_HeartBeat_LED1.src ./Level_01_Tasks/CPU_0/Task_Objects.d ./Level_01_Tasks/CPU_0/Task_Objects.o ./Level_01_Tasks/CPU_0/Task_Objects.src ./Level_01_Tasks/CPU_0/Task_Switches.d ./Level_01_Tasks/CPU_0/Task_Switches.o ./Level_01_Tasks/CPU_0/Task_Switches.src

.PHONY: clean-Level_01_Tasks-2f-CPU_0

