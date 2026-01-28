#include "TC375_CAN_functions.h"

#include <Level_Libraries/iLLD/TC37A/Tricore/Can/Can/IfxCan_Can.h>
#include <Level_Libraries/iLLD/TC37A/Tricore/_PinMap/IfxCan_PinMap.h>
#include <Level_Libraries/Infra/Sfr/TC37A/_Reg/IfxCan_reg.h>
#include <Level_02_Interfaces/TC375_IntVectorTable_CPU0/IntVectorTable_CPU0.h>

static IfxCan_Can can;
IfxCan_Can_Node canNodeRx;  /* Remove static to make globally accessible for ISR */
static IfxCan_Can_Node canNodeTx;
uint32 txData[2];

volatile uint16 CAN_TxCounterValue = 0;

/* Debug counters for CAN TX/RX diagnostics */
volatile uint32 dbg_can_tx_req = 0;
volatile uint32 dbg_can_tx_ok = 0;  /* TX completion counter */
volatile uint32 dbg_can_rx_ok  = 0;
volatile uint32 dbg_can_rx_to  = 0;

/* CAN bus status debug */
volatile uint32 dbg_can0_psr = 0;   /* Node0 Protocol Status Register */
volatile uint32 dbg_can1_psr = 0;   /* Node1 Protocol Status Register */
volatile uint32 dbg_can0_ecr = 0;   /* Node0 Error Counter Register */
volatile uint32 dbg_can1_ecr = 0;   /* Node1 Error Counter Register */
volatile uint32 dbg_can1_ndat1 = 0; /* Node1 New Data register */
volatile uint32 dbg_txbuf0_addr = 0; /* TX buffer 0 base address */
volatile uint32 dbg_txbuf0_db0_addr = 0; /* TX buffer 0 DB0 address */
volatile uint32 dbg_txbuf0_header0 = 0; /* TX buffer header word 0 */
volatile uint32 dbg_txbuf0_header1 = 0; /* TX buffer header word 1 */

#define CAN0_MRAM_BASE_ADDR ((uint32) & MODULE_CAN0.RAM[0])
/* TBSA from iLLD = 0x100 words = 0x400 bytes offset from RAM base */
/* TX Buffer 0 base = 0xF0200000 + 0x400 = 0xF0200400 */
/* TX Buffer 0 data field (DB0) = base + 8 = 0xF0200408 */
#define CAN0_TXBUF0_BASE_ADDR  (CAN0_MRAM_BASE_ADDR + 0x400u)
#define CAN0_TXBUF0_DB0_ADDR   (CAN0_MRAM_BASE_ADDR + 0x408u)

HAL_Return_Type Func_CAN_init(void)
{
    IfxCan_Can_Config canConfig;

    /* Enable CAN Transceiver (P20.6 = LOW) */
    extern HAL_Return_Type Func_Port_20_Pin_6_init(void);
    Func_Port_20_Pin_6_init();

    IfxCan_Can_initModuleConfig(&canConfig, &MODULE_CAN0);
    IfxCan_Can_initModule(&can, &canConfig);

    /* Node 1: RX with dedicated buffers */
    IfxCan_Can_NodeConfig rxCfg;
    IfxCan_Can_initNodeConfig(&rxCfg, &can);

    rxCfg.nodeId      = IfxCan_NodeId_1;
    rxCfg.clockSource = IfxCan_ClockSource_both;
    rxCfg.frame.type  = IfxCan_FrameType_receive;

    /* External CAN bus - no loopback */
    rxCfg.busLoopbackEnabled = FALSE;
    rxCfg.baudRate.baudrate  = 500000;
    rxCfg.baudRate.samplePoint = 8750;

    /* Dedicated RX buffer mode */
    rxCfg.rxConfig.rxMode = IfxCan_RxMode_dedicatedBuffers;
    rxCfg.rxConfig.rxBufferDataFieldSize = IfxCan_DataFieldSize_8;

    /* Message RAM layout for dedicated buffers */
    rxCfg.filterConfig.standardListSize = 1;
    rxCfg.filterConfig.messageIdLength  = IfxCan_MessageIdLength_standard;
    rxCfg.messageRAM.standardFilterListStartAddress = 0x100;
    rxCfg.messageRAM.rxBuffersStartAddress = 0x200;

    /* External pins for Node1 (RX) */
    IfxCan_Can_Pins rxPins;
    rxPins.rxPin     = &IfxCan_RXD01A_P15_3_IN;
    rxPins.rxPinMode = IfxPort_InputMode_pullUp;
    rxPins.txPin     = &IfxCan_TXD01_P15_2_OUT;
    rxPins.txPinMode = IfxPort_OutputMode_pushPull;
    rxPins.padDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
    rxCfg.pins = &rxPins;

    IfxCan_Can_initNode(&canNodeRx, &rxCfg);

    /* Filter: accept ID=0 into RX Buffer 0 */
    IfxCan_Filter filter;
    filter.number = 0;
    filter.elementConfiguration = IfxCan_FilterElementConfiguration_storeInRxBuffer;
    filter.type = IfxCan_FilterType_classic;
    filter.id1 = 0x0;
    filter.id2 = 0x0;
    filter.rxBufferOffset = IfxCan_RxBufferId_0;
    IfxCan_Can_setStandardFilter(&canNodeRx, &filter);

    /* Node 0: TX with dedicated buffers */
    IfxCan_Can_NodeConfig txCfg;
    IfxCan_Can_initNodeConfig(&txCfg, &can);
    txCfg.nodeId      = IfxCan_NodeId_0;
    txCfg.clockSource = IfxCan_ClockSource_both;
    txCfg.frame.type  = IfxCan_FrameType_transmit;

    txCfg.txConfig.txMode = IfxCan_TxMode_dedicatedBuffers;
    txCfg.txConfig.dedicatedTxBuffersNumber = 1;
    txCfg.txConfig.txBufferDataFieldSize = IfxCan_DataFieldSize_8;

    /* External CAN bus - no loopback */
    txCfg.busLoopbackEnabled = FALSE;
    txCfg.baudRate.baudrate  = 500000;
    txCfg.baudRate.samplePoint = 8750;

    /* External pins for Node0 (TX) */
    IfxCan_Can_Pins txPins;
    txPins.rxPin      = &IfxCan_RXD00B_P20_7_IN;
    txPins.rxPinMode  = IfxPort_InputMode_pullUp;
    txPins.txPin      = &IfxCan_TXD00_P20_8_OUT;
    txPins.txPinMode  = IfxPort_OutputMode_pushPull;
    txPins.padDriver  = IfxPort_PadDriver_cmosAutomotiveSpeed1;
    txCfg.pins = &txPins;

    /* TX buffers start */
    txCfg.messageRAM.txBuffersStartAddress = 0x400;

    IfxCan_Can_initNode(&canNodeTx, &txCfg);

    /* Initialize Tx Buffer 0 header: ID=0, DLC=8 */
    volatile uint32 *txBuf0 = (volatile uint32 *)(CAN0_TXBUF0_BASE_ADDR);
    txBuf0[0] = 0x00000000;      /* standard ID = 0 */
    txBuf0[1] = (8u << 16);      /* DLC = 8 */
    txBuf0[2] = 0u;
    txBuf0[3] = 0u;

    /* Debug: capture addresses for verification */
    dbg_txbuf0_addr = CAN0_TXBUF0_BASE_ADDR;
    dbg_txbuf0_db0_addr = CAN0_TXBUF0_DB0_ADDR;
    dbg_txbuf0_header0 = txBuf0[0];
    dbg_txbuf0_header1 = txBuf0[1];

    return HAL_E_OK;
}

HAL_Return_Type Func_CAN_send_counter_via_dma(void) {
  /* Data is already moved to CAN0 Tx Buffer 0 Data Field by DMA Ch1 */

  /* Trigger transmission request for Buffer 0 of Node 0 */
  MODULE_CAN0.N[0].TX.BAR.U = 0x1;

  /* Debug: increment TX request counter */
  dbg_can_tx_req++;

  /* Check if TX actually completed (note: spelling is "Occured" in iLLD) */
  if (IfxCan_Node_isTxBufferTransmissionOccured(IfxCan_getNodePointer(&MODULE_CAN0, IfxCan_NodeId_0), IfxCan_TxBufferId_0))
  {
      dbg_can_tx_ok++;
      /* Note: iLLD may not have clear function - TX completion flag auto-clears */
  }

  return HAL_E_OK;
}

HAL_Return_Type Func_CAN_receive_counter(uint16 *value)
{
    /* Capture CAN bus status for debugging */
    dbg_can0_psr = CAN0_PSR0.U;   /* Node0 Protocol Status */
    dbg_can1_psr = CAN0_PSR1.U;   /* Node1 Protocol Status */
    dbg_can0_ecr = CAN0_ECR0.U;   /* Node0 Error Counters */
    dbg_can1_ecr = CAN0_ECR1.U;   /* Node1 Error Counters */
    dbg_can1_ndat1 = CAN0_NDAT11.U;  /* Node1 New Data flags */

    /* Check if new message in RX Buffer 0 */
    if (!IfxCan_Can_isNewDataReceived(&canNodeRx, IfxCan_RxBufferId_0))
    {
        dbg_can_rx_to++;
        return HAL_E_NOT_OK;     /* -> Task_Display will show 9999 */
    }

    IfxCan_Message msg;
    msg.messageIdLength = IfxCan_MessageIdLength_standard;
    msg.bufferNumber    = 0;                 /* RX Buffer 0 */
    msg.dataLengthCode  = IfxCan_DataLengthCode_8;
    msg.readFromRxFifo0 = FALSE;             /* Read from buffer, not FIFO */
    msg.readFromRxFifo1 = FALSE;

    uint32 data[2] = {0, 0};

    IfxCan_Can_readMessage(&canNodeRx, &msg, data);

    *value = (uint16)(data[0] & 0xFFFFu);

    dbg_can_rx_ok++;
    return HAL_E_OK;
}
