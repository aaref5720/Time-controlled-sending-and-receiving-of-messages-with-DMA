################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm/IfxCcu6_TPwm.c" 

COMPILED_SRCS += \
"Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm/IfxCcu6_TPwm.src" 

C_DEPS += \
"./Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm/IfxCcu6_TPwm.d" 

OBJS += \
"Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm/IfxCcu6_TPwm.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm/IfxCcu6_TPwm.src":"../Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm/IfxCcu6_TPwm.c" "Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm/IfxCcu6_TPwm.o":"Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm/IfxCcu6_TPwm.src" "Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Ccu6-2f-TPwm

clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Ccu6-2f-TPwm:
	-$(RM) ./Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm/IfxCcu6_TPwm.d ./Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm/IfxCcu6_TPwm.o ./Level_Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm/IfxCcu6_TPwm.src

.PHONY: clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Ccu6-2f-TPwm

