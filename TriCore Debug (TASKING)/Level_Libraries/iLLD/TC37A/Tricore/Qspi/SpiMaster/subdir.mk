################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.c" 

COMPILED_SRCS += \
"Level_Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.src" 

C_DEPS += \
"./Level_Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.d" 

OBJS += \
"Level_Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.src":"../Level_Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.c" "Level_Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.o":"Level_Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.src" "Level_Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Qspi-2f-SpiMaster

clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Qspi-2f-SpiMaster:
	-$(RM) ./Level_Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.d ./Level_Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.o ./Level_Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.src

.PHONY: clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-Qspi-2f-SpiMaster

