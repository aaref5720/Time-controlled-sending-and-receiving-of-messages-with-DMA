#include "Ifx_Cfg_Trap.h"

/* Define the storage for last trap info */
volatile IfxCpu_Trap g_lastTrapInfo = { 0 };

/* Optional: helper to read or clear the stored trap info from other code */
void TrapLogger_clear(void)
{
    g_lastTrapInfo.tAddr = 0;
    g_lastTrapInfo.tClass = 0;
    g_lastTrapInfo.tId = 0;
    g_lastTrapInfo.tCpu = 0;
}

/* Keep this file small and portable; you can extend it to blink LEDs or send
 * the info over serial when you have the UART available. */
