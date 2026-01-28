#ifndef TC375_DMA_FUNCTIONS_H
#define TC375_DMA_FUNCTIONS_H

#include <Level_Libraries/iLLD/TC37A/Tricore/Cpu/Std/Platform_Types.h>
#include <Level_04_HAL/HAL_Libraries/HAL_Return_Types.h>

HAL_Return_Type Func_DMA_Module_init (void);

HAL_Return_Type Func_DMA_Ch0_init (void);
HAL_Return_Type Func_DMA_Ch0_start (void);
HAL_Return_Type Func_DMA_Ch0_stop (void);

HAL_Return_Type Func_DMA_Ch1_init (void);
HAL_Return_Type Func_DMA_Ch1_start (void);
HAL_Return_Type Func_DMA_Ch1_stop (void);

/* helper for polling-based operation */
HAL_Return_Type Func_DMA_Ch1_is_busy(boolean* busy);

/* DMA address drift debugging variables */
extern volatile uint32 dbg_addr_before;
extern volatile uint32 dbg_addr_after_disable;
extern volatile uint32 dbg_addr_after_config;
extern volatile uint32 dbg_addr_before_enable;
extern volatile uint32 dbg_addr_after_enable;
extern volatile uint32 dbg_addr_final;
extern volatile uint32 dbg_dma_ch1_adicr;
extern volatile uint32 dbg_dma_ch1_chcfgr;
extern volatile uint32 dbg_dma_build_tag;

#endif
