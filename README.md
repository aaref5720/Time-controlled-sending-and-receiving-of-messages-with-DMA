# AURIX TC375 - CAN Communication with DMA Transfer

## Project Overview

This project demonstrates time-controlled CAN message transmission and reception on the Infineon AURIX TC375 microcontroller using the THD Adapter Lite board.

## 📹 Video Demonstration

[Link to video explanation - Add your video URL here]

## Features

- **Time-controlled CAN transmission** via GPT12 Timer 6 interrupt
- **Hardware counter** implemented in GPT12 Timer 3
- **DMA transfer** from Timer 3 to CAN TX buffer (no CPU intervention)
- **Dual CAN nodes**: Node 0 (TX) and Node 1 (RX) via external CAN bus
- **Visual feedback**: LED1 flashes 0.5s on each successful reception
- **7-segment display**: Shows received counter value (or 9999 when disconnected)
- **Configurable timing**: S1 = 1 second, S2 = 2 seconds between transmissions

## Hardware Requirements

- Infineon AURIX TC375 Lite Kit
- THD Adapter Lite Board
- External CAN cable connecting Node 0 (P20.7/P20.8) to Node 1 (P15.3/P15.2)
- CAN transceiver enabled via P20.6

## Pin Configuration

| Function | Port/Pin | Description |
|----------|----------|-------------|
| CAN0 TX | P20.8 | Node 0 Transmit |
| CAN0 RX | P20.7 | Node 0 Receive |
| CAN1 TX | P15.2 | Node 1 Transmit |
| CAN1 RX | P15.3 | Node 1 Receive |
| LED1 | - | Reception indicator |
| S1 | - | 1 second mode |
| S2 | - | 2 second mode |
| Display | - | 4-digit 7-segment |

## Software Architecture

```
Level_01_Tasks/       - FreeRTOS tasks (Task_Display, Task_Switches)
Level_02_Interfaces/  - Hardware abstraction (ISR_GPT120_T6, IF_Display)
Level_03_OS/          - FreeRTOS kernel
Level_04_HAL/         - Low-level drivers (CAN, DMA, GPT12, Ports)
Level_Configurations/ - FreeRTOS and system configuration
Level_Libraries/      - Infineon iLLD library
```

## Data Flow

```
[Timer T3 Counter] --DMA--> [CAN TX Buffer] --CAN Bus--> [CAN RX Buffer] --> [Display]
       ↑                                                                          ↓
   [Timer T6 ISR]                                                            [LED Flash]
       ↑
   [S1/S2 Switch]
```

## Key Implementation Details

### DMA Configuration
- Channel 1 transfers 32-bit value from GPT120.T3 register to CAN Message RAM
- Destination address: 0xF0200408 (TX Buffer 0, Data Field)
- Software-triggered on each Timer T6 interrupt

### CAN Configuration
- Baud rate: 500 kbps
- Standard ID: 0x000
- DLC: 8 bytes
- Dedicated TX/RX buffers (no FIFO)

### Timer Configuration
- T6: Interrupt generation (1s base with S1, 2s with S2)
- T3: Free-running counter (incremented in T6 ISR)

## Building the Project

1. Open in AURIX Development Studio
2. Select "TriCore Debug (TASKING)" configuration
3. Build the project
4. Flash to target

## Requirements Fulfilled

✅ S1 pressed → Counter sent every 1 second  
✅ S2 pressed → Counter sent every 2 seconds  
✅ Counter received on Node 1 and shown on display  
✅ LED1 flashes 0.5 seconds on each reception  
✅ Transmission triggered by Timer T6 interrupt  
✅ Counter implemented in Timer T3  
✅ Transfer from T3 to CAN via DMA  

## Author

Abdelrahman Aref - [@aaref5720](https://github.com/aaref5720)

## License

MIT License
