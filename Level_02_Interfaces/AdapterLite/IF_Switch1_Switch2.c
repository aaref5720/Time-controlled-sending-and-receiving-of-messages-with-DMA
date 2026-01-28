#include <Level_04_HAL/HAL_Libraries/HAL_Return_Types.h>
#include <Level_02_Interfaces/Interface_Libraries/L02_Return_Types.h>
#include <Level_Libraries/iLLD/TC37A/Tricore/Cpu/Std/Platform_Types.h>
#include <Level_02_Interfaces/AdapterLite/IF_Switch1_Switch2.h>

extern HAL_Return_Type Func_read_Port_02_Pin_1 (uint32* status);
extern HAL_Return_Type Func_Port_02_Pin_1_init (void);

extern HAL_Return_Type Func_read_Port_10_Pin_7 (uint32* status);
extern HAL_Return_Type Func_Port_10_Pin_7_init (void);

L02_Return_Type Func_Adapter_S1_status_read(boolean* status)
{
    HAL_Return_Type tmp;
    uint32 s;
    tmp = Func_read_Port_02_Pin_1(&s);
    s = s & 0x00000002;
    *status = (s == 0) ? TRUE : FALSE;
    return (tmp == HAL_E_OK) ? L02_E_OK : L02_E_NOT_OK;
}

L02_Return_Type Func_Adapter_S1_init(void)
{
    HAL_Return_Type t = Func_Port_02_Pin_1_init();
    return (t == HAL_E_OK) ? L02_E_OK : L02_E_NOT_OK;
}

L02_Return_Type Func_Adapter_S2_status_read(boolean* status)
{
    HAL_Return_Type tmp;
    uint32 s;
    tmp = Func_read_Port_10_Pin_7(&s);
    s = s & 0x00000080;
    *status = (s == 0) ? TRUE : FALSE;
    return (tmp == HAL_E_OK) ? L02_E_OK : L02_E_NOT_OK;
}

L02_Return_Type Func_Adapter_S2_init(void)
{
    HAL_Return_Type t = Func_Port_10_Pin_7_init();
    return (t == HAL_E_OK) ? L02_E_OK : L02_E_NOT_OK;
}
