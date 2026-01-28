#include <Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.h>
#include <Level_Libraries/Infra/Platform/Tricore/Compilers/Compilers.h>
#include "IfxSrc_reg.h"
#include "Platform_Types.h"
#include <Level_Libraries/Infra/Sfr/TC37A/_Reg/IfxDma_reg.h>

#include "FreeRTOS.h"
#include "task.h"

extern TaskHandle_t handle_task_Display;

IFX_INTERRUPT(ISR_DMA_Ch1_Completed, 0, DMA_CH1_to_ISR_x12) {
  DMA_CH1_CHCSR.B.CICH = 0x1;
  SRC_DMACH1.B.CLRR = 0x1;
  SRC_DMACH1.B.SWSCLR = 0x1;
  SRC_DMACH1.B.IOVCLR = 0x1;
}
