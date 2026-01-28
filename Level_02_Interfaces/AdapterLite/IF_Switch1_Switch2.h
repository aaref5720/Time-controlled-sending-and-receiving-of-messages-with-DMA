#ifndef IF_SWITCH1_SWITCH2_H
#define IF_SWITCH1_SWITCH2_H

#include <Level_02_Interfaces/Interface_Libraries/L02_Return_Types.h>
#include <Level_Libraries/iLLD/TC37A/Tricore/Cpu/Std/Platform_Types.h>

L02_Return_Type Func_Adapter_S1_status_read(boolean* status);
L02_Return_Type Func_Adapter_S1_init(void);

L02_Return_Type Func_Adapter_S2_status_read(boolean* status);
L02_Return_Type Func_Adapter_S2_init(void);

#endif /* IF_SWITCH1_SWITCH2_H */
