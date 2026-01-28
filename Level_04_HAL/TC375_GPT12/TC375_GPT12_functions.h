/*
 * TC375_GPT12_functions.h
 *
 *  Created on: Dec 26, 2025
 *      Author: aaref
 */

#ifndef LEVEL_04_HAL_TC375_GPT12_TC375_GPT12_FUNCTIONS_H_
#define LEVEL_04_HAL_TC375_GPT12_TC375_GPT12_FUNCTIONS_H_

#include <Level_04_HAL/HAL_Libraries/HAL_Return_Types.h>

#include <Platform_Types.h>

HAL_Return_Type Func_GPT12_T2_init(void);
HAL_Return_Type Func_GPT12_T2_start(void);
HAL_Return_Type Func_GPT12_T2_set_value(uint16 timer_value);

HAL_Return_Type Func_GPT12_T3_init_counter(void);
HAL_Return_Type Func_GPT12_T3_get_value(uint16 *value);
HAL_Return_Type Func_GPT12_T3_set_value(uint16 value);
HAL_Return_Type Func_GPT12_CAPREL_set_value(uint16 timer_value);
HAL_Return_Type Func_GPT12_T6_set_period_500ms(void);
HAL_Return_Type Func_GPT12_T6_set_period_1s(void);
HAL_Return_Type Func_GPT12_T6_enable_toggle_output(boolean enable);
HAL_Return_Type Func_GPT12_T3_enable_interrupts(void);
HAL_Return_Type Func_GPT12_T6_enable_interrupts(void);
void GPT12_T6_EnableDmaTrigger(void); // CAN-DMA: Route T6 to DMA Ch1
HAL_Return_Type Func_GPT12_T6_wait_tick(void);
HAL_Return_Type Func_GPT12_T5_init_cascade_from_T6(void);
HAL_Return_Type Func_GPT12_T5_get_value(uint16 *value);
HAL_Return_Type Func_GPT12_T6_init(void);
HAL_Return_Type Func_GPT12_T6_start(void);
HAL_Return_Type Func_GPT12_T6_stop(void);

#endif /* LEVEL_04_HAL_TC375_GPT12_TC375_GPT12_FUNCTIONS_H_ */
