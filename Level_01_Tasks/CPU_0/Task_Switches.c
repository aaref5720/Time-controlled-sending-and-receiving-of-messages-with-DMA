#include "FreeRTOS.h"
#include "task.h"
#include <Level_02_Interfaces/AdapterLite/IF_Switch1_Switch2.h>
#include <Level_02_Interfaces/Interface_Libraries/L02_Return_Types.h>
#include <Level_04_HAL/TC375_GPT12/TC375_GPT12_functions.h>
#include <Level_Libraries/iLLD/TC37A/Tricore/Cpu/Std/Platform_Types.h>

void task_Switches(void *arg) {
  boolean s1 = FALSE;
  boolean s2 = FALSE;
  boolean s1_prev = FALSE;
  boolean s2_prev = FALSE;

  Func_Adapter_S1_init();
  Func_Adapter_S2_init();

  while (TRUE) {
    Func_Adapter_S1_status_read(&s1);
    Func_Adapter_S2_status_read(&s2);

    /* Control Timer 6 period based on switch presses */
    /* Logic moved to Task_Display.c
    if (s1 == TRUE && s1_prev == FALSE)
    {
        // S1 pressed: Set Timer 6 to 1 second period
        // Func_GPT12_T6_set_period_1s();
    }
    else if (s2 == TRUE && s2_prev == FALSE)
    {
        // S2 pressed: Set Timer 6 to 2 second period
        // Func_GPT12_T6_set_period_2s();
    }
    */

    s1_prev = s1;
    s2_prev = s2;

    vTaskDelay(pdMS_TO_TICKS(10));
  }
  vTaskDelete(NULL);
}
