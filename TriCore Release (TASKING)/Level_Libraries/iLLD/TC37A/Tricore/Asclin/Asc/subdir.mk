################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_Libraries/iLLD/TC37A/Tricore/Asclin/Asc/IfxAsclin_Asc.c" 

COMPILED_SRCS += \
"Level_Libraries/iLLD/TC37A/Tricore/Asclin/Asc/IfxAsclin_Asc.src" 

C_DEPS += \
"./Level_Libraries/iLLD/TC37A/Tricore/Asclin/Asc/IfxAsclin_Asc.d" 

OBJS += \
"Level_Libraries/iLLD/TC37A/Tricore/Asclin/Asc/IfxAsclin_Asc.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_Libraries/iLLD/TC37A/Tricore/Asclin/Asc/IfxAsclin_Asc.src":"../Level_Libraries/iLLD/TC37A/Tricore/Asclin/Asc/IfxAsclin_Asc.c" "Level_Libraries/iLLD/TC37A/Tricore/Asclin/Asc/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/iLLD/TC37A/Tricore/Asclin/Asc/IfxAsclin_Asc.o":"Level_Libraries/iLLD/TC37A/Tricore/Asclin/Asc/IfxAsclin_Asc.src" "Level_Libraries/iLLD/TC37A/Tricore/Asclin/Asc/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Asclin-2f-Asc

clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Asclin-2f-Asc:
	-$(RM) ./Level_Libraries/iLLD/TC37A/Tricore/Asclin/Asc/IfxAsclin_Asc.d ./Level_Libraries/iLLD/TC37A/Tricore/Asclin/Asc/IfxAsclin_Asc.o ./Level_Libraries/iLLD/TC37A/Tricore/Asclin/Asc/IfxAsclin_Asc.src

.PHONY: clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Asclin-2f-Asc

