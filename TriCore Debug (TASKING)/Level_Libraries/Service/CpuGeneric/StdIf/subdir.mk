################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.c" \
"../Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Pos.c" \
"../Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.c" \
"../Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Timer.c" 

COMPILED_SRCS += \
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.src" \
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Pos.src" \
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.src" \
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Timer.src" 

C_DEPS += \
"./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.d" \
"./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Pos.d" \
"./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.d" \
"./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Timer.d" 

OBJS += \
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.o" \
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Pos.o" \
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.o" \
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Timer.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.src":"../Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.c" "Level_Libraries/Service/CpuGeneric/StdIf/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.o":"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.src" "Level_Libraries/Service/CpuGeneric/StdIf/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Pos.src":"../Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Pos.c" "Level_Libraries/Service/CpuGeneric/StdIf/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Pos.o":"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Pos.src" "Level_Libraries/Service/CpuGeneric/StdIf/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.src":"../Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.c" "Level_Libraries/Service/CpuGeneric/StdIf/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.o":"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.src" "Level_Libraries/Service/CpuGeneric/StdIf/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Timer.src":"../Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Timer.c" "Level_Libraries/Service/CpuGeneric/StdIf/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Timer.o":"Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Timer.src" "Level_Libraries/Service/CpuGeneric/StdIf/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_Libraries-2f-Service-2f-CpuGeneric-2f-StdIf

clean-Level_Libraries-2f-Service-2f-CpuGeneric-2f-StdIf:
	-$(RM) ./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.d ./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.o ./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.src ./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Pos.d ./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Pos.o ./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Pos.src ./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.d ./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.o ./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_PwmHl.src ./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Timer.d ./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Timer.o ./Level_Libraries/Service/CpuGeneric/StdIf/IfxStdIf_Timer.src

.PHONY: clean-Level_Libraries-2f-Service-2f-CpuGeneric-2f-StdIf

