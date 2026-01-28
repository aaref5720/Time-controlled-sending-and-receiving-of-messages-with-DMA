################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux/Ifx_InternalMux.c" 

COMPILED_SRCS += \
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux/Ifx_InternalMux.src" 

C_DEPS += \
"./Level_Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux/Ifx_InternalMux.d" 

OBJS += \
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux/Ifx_InternalMux.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux/Ifx_InternalMux.src":"../Level_Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux/Ifx_InternalMux.c" "Level_Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux/Ifx_InternalMux.o":"Level_Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux/Ifx_InternalMux.src" "Level_Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-_Lib-2f-InternalMux

clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-_Lib-2f-InternalMux:
	-$(RM) ./Level_Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux/Ifx_InternalMux.d ./Level_Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux/Ifx_InternalMux.o ./Level_Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux/Ifx_InternalMux.src

.PHONY: clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-_Lib-2f-InternalMux

