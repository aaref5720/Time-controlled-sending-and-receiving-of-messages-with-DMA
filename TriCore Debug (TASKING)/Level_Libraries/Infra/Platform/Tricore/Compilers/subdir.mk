################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerDcc.c" \
"../Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGhs.c" \
"../Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGnuc.c" \
"../Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerTasking.c" 

COMPILED_SRCS += \
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerDcc.src" \
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGhs.src" \
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGnuc.src" \
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerTasking.src" 

C_DEPS += \
"./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerDcc.d" \
"./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGhs.d" \
"./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGnuc.d" \
"./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerTasking.d" 

OBJS += \
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerDcc.o" \
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGhs.o" \
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGnuc.o" \
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerTasking.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerDcc.src":"../Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerDcc.c" "Level_Libraries/Infra/Platform/Tricore/Compilers/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerDcc.o":"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerDcc.src" "Level_Libraries/Infra/Platform/Tricore/Compilers/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGhs.src":"../Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGhs.c" "Level_Libraries/Infra/Platform/Tricore/Compilers/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGhs.o":"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGhs.src" "Level_Libraries/Infra/Platform/Tricore/Compilers/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGnuc.src":"../Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGnuc.c" "Level_Libraries/Infra/Platform/Tricore/Compilers/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGnuc.o":"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGnuc.src" "Level_Libraries/Infra/Platform/Tricore/Compilers/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerTasking.src":"../Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerTasking.c" "Level_Libraries/Infra/Platform/Tricore/Compilers/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2012 -D__CPU__=tc37x "-fC:/WS_AURIX_Practice_07_Display-by-DMA_Solution_1/WS_AURIX_Practice_07_Display-by-DMA_Solution/AURIX_Practice_07_Display-by-DMA/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=2 --compact-max-size=200 -Wc-g3 -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerTasking.o":"Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerTasking.src" "Level_Libraries/Infra/Platform/Tricore/Compilers/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_Libraries-2f-Infra-2f-Platform-2f-Tricore-2f-Compilers

clean-Level_Libraries-2f-Infra-2f-Platform-2f-Tricore-2f-Compilers:
	-$(RM) ./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerDcc.d ./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerDcc.o ./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerDcc.src ./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGhs.d ./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGhs.o ./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGhs.src ./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGnuc.d ./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGnuc.o ./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerGnuc.src ./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerTasking.d ./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerTasking.o ./Level_Libraries/Infra/Platform/Tricore/Compilers/CompilerTasking.src

.PHONY: clean-Level_Libraries-2f-Infra-2f-Platform-2f-Tricore-2f-Compilers

