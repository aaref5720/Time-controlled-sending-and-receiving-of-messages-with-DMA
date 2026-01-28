################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Infra.c" \
"../Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc0.c" \
"../Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc1.c" \
"../Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc2.c" 

COMPILED_SRCS += \
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Infra.src" \
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc0.src" \
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc1.src" \
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc2.src" 

C_DEPS += \
"./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Infra.d" \
"./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc0.d" \
"./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc1.d" \
"./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc2.d" 

OBJS += \
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Infra.o" \
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc0.o" \
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc1.o" \
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc2.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Infra.src":"../Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Infra.c" "Level_Libraries/Infra/Ssw/TC37A/Tricore/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Infra.o":"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Infra.src" "Level_Libraries/Infra/Ssw/TC37A/Tricore/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc0.src":"../Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc0.c" "Level_Libraries/Infra/Ssw/TC37A/Tricore/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc0.o":"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc0.src" "Level_Libraries/Infra/Ssw/TC37A/Tricore/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc1.src":"../Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc1.c" "Level_Libraries/Infra/Ssw/TC37A/Tricore/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc1.o":"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc1.src" "Level_Libraries/Infra/Ssw/TC37A/Tricore/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc2.src":"../Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc2.c" "Level_Libraries/Infra/Ssw/TC37A/Tricore/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc2.o":"Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc2.src" "Level_Libraries/Infra/Ssw/TC37A/Tricore/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_Libraries-2f-Infra-2f-Ssw-2f-TC37A-2f-Tricore

clean-Level_Libraries-2f-Infra-2f-Ssw-2f-TC37A-2f-Tricore:
	-$(RM) ./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Infra.d ./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Infra.o ./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Infra.src ./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc0.d ./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc0.o ./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc0.src ./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc1.d ./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc1.o ./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc1.src ./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc2.d ./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc2.o ./Level_Libraries/Infra/Ssw/TC37A/Tricore/Ifx_Ssw_Tc2.src

.PHONY: clean-Level_Libraries-2f-Infra-2f-Ssw-2f-TC37A-2f-Tricore

