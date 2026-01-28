################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_Configurations/Ifx_Cfg_Ssw.c" \
"../Level_Configurations/Ifx_Cfg_SswBmhd.c" \
"../Level_Configurations/TrapLogger.c" 

COMPILED_SRCS += \
"Level_Configurations/Ifx_Cfg_Ssw.src" \
"Level_Configurations/Ifx_Cfg_SswBmhd.src" \
"Level_Configurations/TrapLogger.src" 

C_DEPS += \
"./Level_Configurations/Ifx_Cfg_Ssw.d" \
"./Level_Configurations/Ifx_Cfg_SswBmhd.d" \
"./Level_Configurations/TrapLogger.d" 

OBJS += \
"Level_Configurations/Ifx_Cfg_Ssw.o" \
"Level_Configurations/Ifx_Cfg_SswBmhd.o" \
"Level_Configurations/TrapLogger.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_Configurations/Ifx_Cfg_Ssw.src":"../Level_Configurations/Ifx_Cfg_Ssw.c" "Level_Configurations/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Configurations/Ifx_Cfg_Ssw.o":"Level_Configurations/Ifx_Cfg_Ssw.src" "Level_Configurations/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Configurations/Ifx_Cfg_SswBmhd.src":"../Level_Configurations/Ifx_Cfg_SswBmhd.c" "Level_Configurations/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Configurations/Ifx_Cfg_SswBmhd.o":"Level_Configurations/Ifx_Cfg_SswBmhd.src" "Level_Configurations/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Configurations/TrapLogger.src":"../Level_Configurations/TrapLogger.c" "Level_Configurations/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Configurations/TrapLogger.o":"Level_Configurations/TrapLogger.src" "Level_Configurations/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_Configurations

clean-Level_Configurations:
	-$(RM) ./Level_Configurations/Ifx_Cfg_Ssw.d ./Level_Configurations/Ifx_Cfg_Ssw.o ./Level_Configurations/Ifx_Cfg_Ssw.src ./Level_Configurations/Ifx_Cfg_SswBmhd.d ./Level_Configurations/Ifx_Cfg_SswBmhd.o ./Level_Configurations/Ifx_Cfg_SswBmhd.src ./Level_Configurations/TrapLogger.d ./Level_Configurations/TrapLogger.o ./Level_Configurations/TrapLogger.src

.PHONY: clean-Level_Configurations

