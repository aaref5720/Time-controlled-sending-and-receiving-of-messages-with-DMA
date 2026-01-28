################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.c" \
"../Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.c" \
"../Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_Fifo.c" 

COMPILED_SRCS += \
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.src" \
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.src" \
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_Fifo.src" 

C_DEPS += \
"./Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.d" \
"./Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.d" \
"./Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_Fifo.d" 

OBJS += \
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.o" \
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.o" \
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_Fifo.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.src":"../Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.c" "Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.o":"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.src" "Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.src":"../Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.c" "Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.o":"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.src" "Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_Fifo.src":"../Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_Fifo.c" "Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_Fifo.o":"Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_Fifo.src" "Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-_Lib-2f-DataHandling

clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-_Lib-2f-DataHandling:
	-$(RM) ./Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.d ./Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.o ./Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.asm.src ./Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.d ./Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.o ./Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.src ./Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_Fifo.d ./Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_Fifo.o ./Level_Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling/Ifx_Fifo.src

.PHONY: clean-Level_Libraries-2f-iLLD-2f-TC37A-2f-Tricore-2f-_Lib-2f-DataHandling

