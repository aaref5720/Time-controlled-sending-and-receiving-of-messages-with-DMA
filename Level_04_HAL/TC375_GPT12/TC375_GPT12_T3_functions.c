#include <Level_04_HAL/HAL_Libraries/HAL_Return_Types.h>
#include <Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.h>
#include <Level_Libraries/Infra/Sfr/TC37A/_Reg/IfxGpt12_reg.h>
#include <stddef.h>
#include "IfxSrc_reg.h"
#include "Platform_Types.h"

extern HAL_Return_Type Func_GPT12_Module_init(void);

HAL_Return_Type Func_GPT12_T3_init_counter(void)
{
    HAL_Return_Type tmp = Func_GPT12_Module_init();
    if (tmp != HAL_E_OK)
    {
        return tmp;
    }

    GPT120_T3CON.B.T3M = 0x0;
    GPT120_T3CON.B.T3I = 0x0;
    GPT120_T3CON.B.T3UD = 0x0;
    GPT120_T3CON.B.T3UDE = 0x0;
    GPT120_T3CON.B.T3OE = 0x0;
    GPT120_T3CON.B.T3R = 0x0;

    GPT120_T3.U = 0x0;

    return HAL_E_OK;
}

HAL_Return_Type Func_GPT12_T3_set_value(uint16 value)
{
    GPT120_T3.U = ((uint32)value & 0x0000FFFFu);
    return HAL_E_OK;
}

HAL_Return_Type Func_GPT12_T3_get_value(uint16 *value)
{
    if (value == NULL)
    {
        return HAL_E_NOT_OK;
    }

    *value = (uint16)(GPT120_T3.U & 0x0000FFFFu);
    return HAL_E_OK;
}

HAL_Return_Type Func_GPT12_T3_enable_interrupts(void)
{
    SRC_GPT120T3.B.SRPN = GPT12_T3_SRPN_CPU;
    SRC_GPT120T3.B.TOS = TOS_CPU0;
    SRC_GPT120T3.B.CLRR = 0x1;
    SRC_GPT120T3.B.IOVCLR = 0x1;
    SRC_GPT120T3.B.SWSCLR = 0x1;
    SRC_GPT120T3.B.SRE = 0x1;

    return (SRC_GPT120T3.B.SRE == 0x1) ? HAL_E_OK : HAL_E_NOT_OK;
}
