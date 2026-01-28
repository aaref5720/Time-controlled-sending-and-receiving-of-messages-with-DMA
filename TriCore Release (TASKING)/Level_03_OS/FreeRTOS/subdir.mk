################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
"../Level_03_OS/FreeRTOS/croutine.c" \
"../Level_03_OS/FreeRTOS/event_groups.c" \
"../Level_03_OS/FreeRTOS/list.c" \
"../Level_03_OS/FreeRTOS/queue.c" \
"../Level_03_OS/FreeRTOS/stream_buffer.c" \
"../Level_03_OS/FreeRTOS/tasks.c" \
"../Level_03_OS/FreeRTOS/timers.c" 

COMPILED_SRCS += \
"Level_03_OS/FreeRTOS/croutine.src" \
"Level_03_OS/FreeRTOS/event_groups.src" \
"Level_03_OS/FreeRTOS/list.src" \
"Level_03_OS/FreeRTOS/queue.src" \
"Level_03_OS/FreeRTOS/stream_buffer.src" \
"Level_03_OS/FreeRTOS/tasks.src" \
"Level_03_OS/FreeRTOS/timers.src" 

C_DEPS += \
"./Level_03_OS/FreeRTOS/croutine.d" \
"./Level_03_OS/FreeRTOS/event_groups.d" \
"./Level_03_OS/FreeRTOS/list.d" \
"./Level_03_OS/FreeRTOS/queue.d" \
"./Level_03_OS/FreeRTOS/stream_buffer.d" \
"./Level_03_OS/FreeRTOS/tasks.d" \
"./Level_03_OS/FreeRTOS/timers.d" 

OBJS += \
"Level_03_OS/FreeRTOS/croutine.o" \
"Level_03_OS/FreeRTOS/event_groups.o" \
"Level_03_OS/FreeRTOS/list.o" \
"Level_03_OS/FreeRTOS/queue.o" \
"Level_03_OS/FreeRTOS/stream_buffer.o" \
"Level_03_OS/FreeRTOS/tasks.o" \
"Level_03_OS/FreeRTOS/timers.o" 


# Each subdirectory must supply rules for building sources it contributes
"Level_03_OS/FreeRTOS/croutine.src":"../Level_03_OS/FreeRTOS/croutine.c" "Level_03_OS/FreeRTOS/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_03_OS/FreeRTOS/croutine.o":"Level_03_OS/FreeRTOS/croutine.src" "Level_03_OS/FreeRTOS/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_03_OS/FreeRTOS/event_groups.src":"../Level_03_OS/FreeRTOS/event_groups.c" "Level_03_OS/FreeRTOS/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_03_OS/FreeRTOS/event_groups.o":"Level_03_OS/FreeRTOS/event_groups.src" "Level_03_OS/FreeRTOS/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_03_OS/FreeRTOS/list.src":"../Level_03_OS/FreeRTOS/list.c" "Level_03_OS/FreeRTOS/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_03_OS/FreeRTOS/list.o":"Level_03_OS/FreeRTOS/list.src" "Level_03_OS/FreeRTOS/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_03_OS/FreeRTOS/queue.src":"../Level_03_OS/FreeRTOS/queue.c" "Level_03_OS/FreeRTOS/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_03_OS/FreeRTOS/queue.o":"Level_03_OS/FreeRTOS/queue.src" "Level_03_OS/FreeRTOS/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_03_OS/FreeRTOS/stream_buffer.src":"../Level_03_OS/FreeRTOS/stream_buffer.c" "Level_03_OS/FreeRTOS/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_03_OS/FreeRTOS/stream_buffer.o":"Level_03_OS/FreeRTOS/stream_buffer.src" "Level_03_OS/FreeRTOS/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_03_OS/FreeRTOS/tasks.src":"../Level_03_OS/FreeRTOS/tasks.c" "Level_03_OS/FreeRTOS/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_03_OS/FreeRTOS/tasks.o":"Level_03_OS/FreeRTOS/tasks.src" "Level_03_OS/FreeRTOS/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"
"Level_03_OS/FreeRTOS/timers.src":"../Level_03_OS/FreeRTOS/timers.c" "Level_03_OS/FreeRTOS/subdir.mk"
	cctc -cs --dep-file="$*.d" --misrac-version=2004 -D__CPU__=tc37x "-fC:/Users/Harry/Projekte/Vorlesung WS2025/Practice/Solutions/WS_AURIX_Practice_01_LED1-Blink-Solution/AURIX_Practice_01_LED1-Blink-Solution/TriCore Release (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=3 -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -Y0 -N0 -Z0 -o "$@" "$<"
"Level_03_OS/FreeRTOS/timers.o":"Level_03_OS/FreeRTOS/timers.src" "Level_03_OS/FreeRTOS/subdir.mk"
	astc -Og -Os --no-warnings= --error-limit=42 -o  "$@" "$<"

clean: clean-Level_03_OS-2f-FreeRTOS

clean-Level_03_OS-2f-FreeRTOS:
	-$(RM) ./Level_03_OS/FreeRTOS/croutine.d ./Level_03_OS/FreeRTOS/croutine.o ./Level_03_OS/FreeRTOS/croutine.src ./Level_03_OS/FreeRTOS/event_groups.d ./Level_03_OS/FreeRTOS/event_groups.o ./Level_03_OS/FreeRTOS/event_groups.src ./Level_03_OS/FreeRTOS/list.d ./Level_03_OS/FreeRTOS/list.o ./Level_03_OS/FreeRTOS/list.src ./Level_03_OS/FreeRTOS/queue.d ./Level_03_OS/FreeRTOS/queue.o ./Level_03_OS/FreeRTOS/queue.src ./Level_03_OS/FreeRTOS/stream_buffer.d ./Level_03_OS/FreeRTOS/stream_buffer.o ./Level_03_OS/FreeRTOS/stream_buffer.src ./Level_03_OS/FreeRTOS/tasks.d ./Level_03_OS/FreeRTOS/tasks.o ./Level_03_OS/FreeRTOS/tasks.src ./Level_03_OS/FreeRTOS/timers.d ./Level_03_OS/FreeRTOS/timers.o ./Level_03_OS/FreeRTOS/timers.src

.PHONY: clean-Level_03_OS-2f-FreeRTOS

