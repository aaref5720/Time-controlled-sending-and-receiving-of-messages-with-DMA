/* Trap hooks for project diagnostics
 * This file is included when IFX_CFG_EXTEND_TRAP_HOOKS is defined in Ifx_Cfg.h
 * The macro below captures trap info into a RAM variable so you can inspect it
 * with a debugger or use it to blink/to display the trap code.
 */

#ifndef IFX_CFG_TRAP_H
#define IFX_CFG_TRAP_H

#include <Level_Libraries/iLLD/TC37A/Tricore/Cpu/Trap/IfxCpu_Trap.h>

/* Expose a small API for trap logging */
extern volatile IfxCpu_Trap g_lastTrapInfo;

/* Inline hook called from trap handlers */
static inline void myTrapExtensionHook(volatile IfxCpu_Trap trapWatch)
{
    /* copy into a RAM location for post-mortem inspection */
    g_lastTrapInfo = trapWatch;
    /* Optional: you could toggle an LED here or write to a diagnostic port */
}

/* Install hook used by the iLLD trap code */
#define IFX_CFG_CPU_TRAP_TSR_HOOK(trapInfo) myTrapExtensionHook(trapInfo)

#endif /* IFX_CFG_TRAP_H */