################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_02_Interfaces/TC375_IntVectorTable_CPU0/IfxSrc_Vector.c" \
"../Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.c" 

COMPILED_SRCS += \
"Level_02_Interfaces/TC375_IntVectorTable_CPU0/IfxSrc_Vector.src" \
"Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.src" 

C_DEPS += \
"./Level_02_Interfaces/TC375_IntVectorTable_CPU0/IfxSrc_Vector.d" \
"./Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.d" 

OBJS += \
"Level_02_Interfaces/TC375_IntVectorTable_CPU0/IfxSrc_Vector.o" \
"Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_02_Interfaces/TC375_IntVectorTable_CPU0/IfxSrc_Vector.src":"../Level_02_Interfaces/TC375_IntVectorTable_CPU0/IfxSrc_Vector.c" "Level_02_Interfaces/TC375_IntVectorTable_CPU0/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_02_Interfaces/TC375_IntVectorTable_CPU0/IfxSrc_Vector.o":"Level_02_Interfaces/TC375_IntVectorTable_CPU0/IfxSrc_Vector.src" "Level_02_Interfaces/TC375_IntVectorTable_CPU0/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.src":"../Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.c" "Level_02_Interfaces/TC375_IntVectorTable_CPU0/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.o":"Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.src" "Level_02_Interfaces/TC375_IntVectorTable_CPU0/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_02_Interfaces-2f-TC375_IntVectorTable_CPU0

clean-Level_02_Interfaces-2f-TC375_IntVectorTable_CPU0:
	-$(RM) ./Level_02_Interfaces/TC375_IntVectorTable_CPU0/IfxSrc_Vector.d ./Level_02_Interfaces/TC375_IntVectorTable_CPU0/IfxSrc_Vector.o ./Level_02_Interfaces/TC375_IntVectorTable_CPU0/IfxSrc_Vector.src ./Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.d ./Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.o ./Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.src

.PHONY: clean-Level_02_Interfaces-2f-TC375_IntVectorTable_CPU0

