################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger/IfxCcu6_TimerWithTrigger.c" 

COMPILED_SRCS += \
"Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger/IfxCcu6_TimerWithTrigger.src" 

C_DEPS += \
"./Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger/IfxCcu6_TimerWithTrigger.d" 

OBJS += \
"Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger/IfxCcu6_TimerWithTrigger.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger/IfxCcu6_TimerWithTrigger.src":"../Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger/IfxCcu6_TimerWithTrigger.c" "Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger/IfxCcu6_TimerWithTrigger.o":"Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger/IfxCcu6_TimerWithTrigger.src" "Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Ccu6-2f-TimerWithTrigger

clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Ccu6-2f-TimerWithTrigger:
	-$(RM) ./Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger/IfxCcu6_TimerWithTrigger.d ./Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger/IfxCcu6_TimerWithTrigger.o ./Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger/IfxCcu6_TimerWithTrigger.src

.PHONY: clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Ccu6-2f-TimerWithTrigger

