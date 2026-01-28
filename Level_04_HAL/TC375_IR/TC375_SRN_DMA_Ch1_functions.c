#include "IfxSrc_reg.h"
#include "Platform_Types.h"

#include <Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.h>
#include <Level_04_HAL/HAL_Libraries/HAL_Return_Types.h>

HAL_Return_Type Func_TC375_SRN_DMA_Ch1_init(void) {
  HAL_Return_Type tmp;

  SRC_DMACH1.B.SRPN = DMA_CH1_to_ISR_x12;
  SRC_DMACH1.B.SRE = 0x0;
  SRC_DMACH1.B.TOS = TOS_CPU0;
  SRC_DMACH1.B.CLRR = 0x1;
  SRC_DMACH1.B.SETR = 0x0;
  SRC_DMACH1.B.IOVCLR = 0x1;
  SRC_DMACH1.B.SWSCLR = 0x1;

  tmp = HAL_E_OK;
  return tmp;
}

HAL_Return_Type Func_TC375_SRN_DMA_Ch1_enable(void) {
  HAL_Return_Type tmp = HAL_E_NOT_OK;

  SRC_DMACH1.B.SRE = 0x1;

  if (SRC_DMACH1.B.SRE == 0x1) {
    tmp = HAL_E_OK;
  } else {
    tmp = HAL_E_NOT_OK;
  }

  return tmp;
}

HAL_Return_Type Func_TC375_SRN_DMA_Ch1_clear(void) {
  HAL_Return_Type tmp = HAL_E_NOT_OK;

  SRC_DMACH1.B.CLRR = 0x1;

  if (SRC_DMACH1.B.SRR == 0x0) {
    tmp = HAL_E_OK;
  } else {
    tmp = HAL_E_NOT_OK;
  }

  return tmp;
}
