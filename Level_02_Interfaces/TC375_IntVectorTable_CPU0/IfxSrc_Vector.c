/* Minimal implementation for IfxSrc_initVectorTable
 * This resolves the linker error when no platform implementation
 * is present. It intentionally implements a no-op: it accepts
 * an SRPN and an ISR pointer and drops them (safe stub).
 *
 * If you need real IVT wiring, replace this with platform-specific
 * code that writes the ISR address into the CPU IVT at the
 * appropriate index.
 */

#include "IfxSrc.h"
#include <Level_Libraries/iLLD/TC37A/Tricore/Cpu/Std/IfxCpu.h>

/* The interrupt vector tables are provided by the linker as symbols
 * __INTTAB_CPU0, __INTTAB_CPU1, __INTTAB_CPU2. Each entry is a function
 * pointer. We write the ISR address into the table at index 'srpn'.
 */
extern void (*__INTTAB_CPU0[])(void);
extern void (*__INTTAB_CPU1[])(void);
extern void (*__INTTAB_CPU2[])(void);

void IfxSrc_initVectorTable(unsigned int srpn, void (*isr)(void))
{
    /* SRPN valid range is 0..255 for this target */
    if (srpn >= 256U) {
        return;
    }

    unsigned int cpu = IfxCpu_getCoreId();

    switch (cpu) {
    case 0:
        __INTTAB_CPU0[srpn] = isr;
        break;
    case 1:
        __INTTAB_CPU1[srpn] = isr;
        break;
    case 2:
        __INTTAB_CPU2[srpn] = isr;
        break;
    default:
        /* Fallback to CPU0 */
        __INTTAB_CPU0[srpn] = isr;
        break;
    }

    /* Ensure memory visibility before return */
    __asm("isync");
}
