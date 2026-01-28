#ifndef TC375_CAN_FUNCTIONS_H
#define TC375_CAN_FUNCTIONS_H

#include <Level_Libraries/iLLD/TC37A/Tricore/Cpu/Std/Platform_Types.h>
#include <Level_04_HAL/HAL_Libraries/HAL_Return_Types.h>

HAL_Return_Type Func_CAN_init(void);
HAL_Return_Type Func_CAN_send_counter_via_dma(void);
HAL_Return_Type Func_CAN_receive_counter(uint16* value);

extern volatile uint16 CAN_TxCounterValue;

#endif
