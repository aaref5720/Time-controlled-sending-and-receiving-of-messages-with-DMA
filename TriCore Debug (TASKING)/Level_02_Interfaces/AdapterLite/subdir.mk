################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_02_Interfaces/AdapterLite/IF_Display.c" \
"../Level_02_Interfaces/AdapterLite/IF_Display_UpdateClock.c" \
"../Level_02_Interfaces/AdapterLite/IF_LED1.c" \
"../Level_02_Interfaces/AdapterLite/IF_Switch1_Switch2.c" \
"../Level_02_Interfaces/AdapterLite/ISR_CAN1_RX.c" \
"../Level_02_Interfaces/AdapterLite/ISR_DMA_Ch1.c" \
"../Level_02_Interfaces/AdapterLite/ISR_GPT120_T6.c" 

COMPILED_SRCS += \
"Level_02_Interfaces/AdapterLite/IF_Display.src" \
"Level_02_Interfaces/AdapterLite/IF_Display_UpdateClock.src" \
"Level_02_Interfaces/AdapterLite/IF_LED1.src" \
"Level_02_Interfaces/AdapterLite/IF_Switch1_Switch2.src" \
"Level_02_Interfaces/AdapterLite/ISR_CAN1_RX.src" \
"Level_02_Interfaces/AdapterLite/ISR_DMA_Ch1.src" \
"Level_02_Interfaces/AdapterLite/ISR_GPT120_T6.src" 

C_DEPS += \
"./Level_02_Interfaces/AdapterLite/IF_Display.d" \
"./Level_02_Interfaces/AdapterLite/IF_Display_UpdateClock.d" \
"./Level_02_Interfaces/AdapterLite/IF_LED1.d" \
"./Level_02_Interfaces/AdapterLite/IF_Switch1_Switch2.d" \
"./Level_02_Interfaces/AdapterLite/ISR_CAN1_RX.d" \
"./Level_02_Interfaces/AdapterLite/ISR_DMA_Ch1.d" \
"./Level_02_Interfaces/AdapterLite/ISR_GPT120_T6.d" 

OBJS += \
"Level_02_Interfaces/AdapterLite/IF_Display.o" \
"Level_02_Interfaces/AdapterLite/IF_Display_UpdateClock.o" \
"Level_02_Interfaces/AdapterLite/IF_LED1.o" \
"Level_02_Interfaces/AdapterLite/IF_Switch1_Switch2.o" \
"Level_02_Interfaces/AdapterLite/ISR_CAN1_RX.o" \
"Level_02_Interfaces/AdapterLite/ISR_DMA_Ch1.o" \
"Level_02_Interfaces/AdapterLite/ISR_GPT120_T6.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_02_Interfaces/AdapterLite/IF_Display.src":"../Level_02_Interfaces/AdapterLite/IF_Display.c" "Level_02_Interfaces/AdapterLite/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_02_Interfaces/AdapterLite/IF_Display.o":"Level_02_Interfaces/AdapterLite/IF_Display.src" "Level_02_Interfaces/AdapterLite/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_02_Interfaces/AdapterLite/IF_Display_UpdateClock.src":"../Level_02_Interfaces/AdapterLite/IF_Display_UpdateClock.c" "Level_02_Interfaces/AdapterLite/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_02_Interfaces/AdapterLite/IF_Display_UpdateClock.o":"Level_02_Interfaces/AdapterLite/IF_Display_UpdateClock.src" "Level_02_Interfaces/AdapterLite/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_02_Interfaces/AdapterLite/IF_LED1.src":"../Level_02_Interfaces/AdapterLite/IF_LED1.c" "Level_02_Interfaces/AdapterLite/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_02_Interfaces/AdapterLite/IF_LED1.o":"Level_02_Interfaces/AdapterLite/IF_LED1.src" "Level_02_Interfaces/AdapterLite/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_02_Interfaces/AdapterLite/IF_Switch1_Switch2.src":"../Level_02_Interfaces/AdapterLite/IF_Switch1_Switch2.c" "Level_02_Interfaces/AdapterLite/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_02_Interfaces/AdapterLite/IF_Switch1_Switch2.o":"Level_02_Interfaces/AdapterLite/IF_Switch1_Switch2.src" "Level_02_Interfaces/AdapterLite/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_02_Interfaces/AdapterLite/ISR_CAN1_RX.src":"../Level_02_Interfaces/AdapterLite/ISR_CAN1_RX.c" "Level_02_Interfaces/AdapterLite/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_02_Interfaces/AdapterLite/ISR_CAN1_RX.o":"Level_02_Interfaces/AdapterLite/ISR_CAN1_RX.src" "Level_02_Interfaces/AdapterLite/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_02_Interfaces/AdapterLite/ISR_DMA_Ch1.src":"../Level_02_Interfaces/AdapterLite/ISR_DMA_Ch1.c" "Level_02_Interfaces/AdapterLite/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_02_Interfaces/AdapterLite/ISR_DMA_Ch1.o":"Level_02_Interfaces/AdapterLite/ISR_DMA_Ch1.src" "Level_02_Interfaces/AdapterLite/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_02_Interfaces/AdapterLite/ISR_GPT120_T6.src":"../Level_02_Interfaces/AdapterLite/ISR_GPT120_T6.c" "Level_02_Interfaces/AdapterLite/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_02_Interfaces/AdapterLite/ISR_GPT120_T6.o":"Level_02_Interfaces/AdapterLite/ISR_GPT120_T6.src" "Level_02_Interfaces/AdapterLite/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_02_Interfaces-2f-AdapterLite

clean-Level_02_Interfaces-2f-AdapterLite:
	-$(RM) ./Level_02_Interfaces/AdapterLite/IF_Display.d ./Level_02_Interfaces/AdapterLite/IF_Display.o ./Level_02_Interfaces/AdapterLite/IF_Display.src ./Level_02_Interfaces/AdapterLite/IF_Display_UpdateClock.d ./Level_02_Interfaces/AdapterLite/IF_Display_UpdateClock.o ./Level_02_Interfaces/AdapterLite/IF_Display_UpdateClock.src ./Level_02_Interfaces/AdapterLite/IF_LED1.d ./Level_02_Interfaces/AdapterLite/IF_LED1.o ./Level_02_Interfaces/AdapterLite/IF_LED1.src ./Level_02_Interfaces/AdapterLite/IF_Switch1_Switch2.d ./Level_02_Interfaces/AdapterLite/IF_Switch1_Switch2.o ./Level_02_Interfaces/AdapterLite/IF_Switch1_Switch2.src ./Level_02_Interfaces/AdapterLite/ISR_CAN1_RX.d ./Level_02_Interfaces/AdapterLite/ISR_CAN1_RX.o ./Level_02_Interfaces/AdapterLite/ISR_CAN1_RX.src ./Level_02_Interfaces/AdapterLite/ISR_DMA_Ch1.d ./Level_02_Interfaces/AdapterLite/ISR_DMA_Ch1.o ./Level_02_Interfaces/AdapterLite/ISR_DMA_Ch1.src ./Level_02_Interfaces/AdapterLite/ISR_GPT120_T6.d ./Level_02_Interfaces/AdapterLite/ISR_GPT120_T6.o ./Level_02_Interfaces/AdapterLite/ISR_GPT120_T6.src

.PHONY: clean-Level_02_Interfaces-2f-AdapterLite

