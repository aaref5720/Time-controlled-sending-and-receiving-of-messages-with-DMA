#include "IfxSrc_reg.h"
#include "Platform_Types.h"
#include <Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.h>
#include <Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.h>
#include <Level_04_HAL/HAL_Libraries/HAL_Return_Types.h>
#include <Level_Libraries/Infra/Sfr/TC37A/_Reg/IfxGpt12_reg.h>
#include <stddef.h>

extern HAL_Return_Type Func_GPT12_Module_init(void);

#define GPT12_T6_RELOAD_500MS (0x5F5Du)
#define GPT12_T6_RELOAD_1S (0xBEFBu)

HAL_Return_Type Func_GPT12_CAPREL_set_value(uint16 timer_value) {
  GPT120_CAPREL.U = ((uint32)timer_value & 0x0000FFFFu);
  return HAL_E_OK;
}

HAL_Return_Type Func_GPT12_T6_init(void) {
  HAL_Return_Type tmp = Func_GPT12_Module_init();
  if (tmp != HAL_E_OK) {
    return tmp;
  }

  GPT120_T6CON.B.T6M = 0x0;
  GPT120_T6CON.B.T6I = 0x7;
  GPT120_T6CON.B.BPS2 = 0x2;
  GPT120_T6CON.B.T6UD = 0x1;
  GPT120_T6CON.B.T6UDE = 0x0;
  GPT120_T6CON.B.T6CLR = 0x0;
  GPT120_T6CON.B.T6SR = 0x1;
  GPT120_T6CON.B.T6R = 0x0;
  GPT120_T6CON.B.T6OE = 0x0;

  return HAL_E_OK;
}

HAL_Return_Type Func_GPT12_T6_start(void) {
  GPT120_T6CON.B.T6R = 0x1;
  return (GPT120_T6CON.B.T6R == 0x1) ? HAL_E_OK : HAL_E_NOT_OK;
}

HAL_Return_Type Func_GPT12_T6_stop(void) {
  GPT120_T6CON.B.T6R = 0x0;
  return (GPT120_T6CON.B.T6R == 0x0) ? HAL_E_OK : HAL_E_NOT_OK;
}

HAL_Return_Type Func_GPT12_T6_set_period_500ms(void) {
  (void)Func_GPT12_CAPREL_set_value(GPT12_T6_RELOAD_500MS);
  GPT120_T6.U = ((uint32)GPT12_T6_RELOAD_500MS & 0x0000FFFFu);
  return HAL_E_OK;
}

HAL_Return_Type Func_GPT12_T6_set_period_1s(void) {
  GPT120_CAPREL.U = ((uint32)GPT12_T6_RELOAD_1S & 0x0000FFFFu);
  GPT120_T6.U = ((uint32)GPT12_T6_RELOAD_1S & 0x0000FFFFu);
  return HAL_E_OK;
}

HAL_Return_Type Func_GPT12_T6_enable_toggle_output(boolean enable) {
  GPT120_T6CON.B.T6OE = enable ? 0x1 : 0x0;
  return HAL_E_OK;
}

HAL_Return_Type Func_GPT12_T6_enable_interrupts(void) {
  /* Route GPT12 T6 to CPU0 with configured SRPN and enable the SRC */
  SRC_GPT120T6.B.SRPN = GPT12_T6_SRPN_CPU; /* non-zero priority */
  SRC_GPT120T6.B.TOS = TOS_CPU0;          /* deliver to CPU0 */
  SRC_GPT120T6.B.CLRR = 0x1;
  SRC_GPT120T6.B.IOVCLR = 0x1;
  SRC_GPT120T6.B.SWSCLR = 0x1;
  SRC_GPT120T6.B.SRE = 0x1;               /* enable service request */

  return (SRC_GPT120T6.B.SRE == 0x1) ? HAL_E_OK : HAL_E_NOT_OK;
}

/*********************************************************************************************************************/
/*
 * function:    GPT12_T6_EnableDmaTrigger
 * returns:     void
 * parameters:  void
 * description: Routes GPT12 Timer 6 overflow to DMA Channel 1 instead of CPU
 * interrupt. This is the CRITICAL function for CAN-DMA integration. Without
 * this, DMA will never be triggered by the timer.
 */
void GPT12_T6_EnableDmaTrigger(void) {
  SRC_GPT120T6.B.SRPN = 1; // DMA Channel 1
  SRC_GPT120T6.B.TOS = 1;  // TOS = DMA (NOT CPU)
  SRC_GPT120T6.B.CLRR = 1; // clear pending request
  SRC_GPT120T6.B.SRE = 1;  // enable service request
}

HAL_Return_Type Func_GPT12_T6_wait_tick(void) {
  uint32 prev = GPT120_T6CON.B.T6OTL;
  while (GPT120_T6CON.B.T6OTL == prev) {
  }
  return HAL_E_OK;
}

HAL_Return_Type Func_GPT12_T5_init_cascade_from_T6(void) {
  HAL_Return_Type tmp = Func_GPT12_Module_init();
  if (tmp != HAL_E_OK) {
    return tmp;
  }

  GPT120_T5CON.B.T5M = 0x1;
  GPT120_T5CON.B.T5I = 0x7;
  GPT120_T5CON.B.T5UD = 0x0;
  GPT120_T5CON.B.T5UDE = 0x0;
  GPT120_T5CON.B.T5R = 0x1;
  GPT120_T5.U = 0x0;

  return HAL_E_OK;
}

HAL_Return_Type Func_GPT12_T5_get_value(uint16 *value) {
  if (value == NULL) {
    return HAL_E_NOT_OK;
  }

  *value = (uint16)(GPT120_T5.U & 0x0000FFFFu);
  return HAL_E_OK;
}
