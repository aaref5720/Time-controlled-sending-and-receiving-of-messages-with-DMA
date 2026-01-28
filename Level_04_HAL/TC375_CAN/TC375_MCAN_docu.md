<h1>Initialization of MCAN CAN Controller</h1>

<h2>1. MCAN Module initialization</h2>

<h3>1.1. Functionalities</h3>

Functionalities to be set / reset

+ Module Disable Request
+ Sleep Mode Disable

<h3>1.2. Registers</h3>
Registers to be initialized  

<h4>1.2.1. Clock Control Register for CAN Module 0 / CLC</h4>

Compiler symbol for CLC: CAN0_CLC  

+ <b>bit field DISR</b>  
    DISR -> set to 0x0  
    Disable Request is not activated <BR>   

+ <b>bit field EDIS</b>  
    EDIS -> set to 0x1  
    Sleep Mode Disabled <BR>  

<h4>1.2.2. Module Control Register for CAN Module 0 / MCR</h4>

Compiler symbol for MCR: CAN0_MCR<BR>
<BR>
<b>Note: Setting functionalities using the MCR register requires a special order of instructions</b><BR>

+ <b>bit field CLKSEL0</b>    
    CLKSEL0 -> set to 0x3    
    both clocks (clock for module and for protocol engine) are switched on <BR>     

+ <b>bit field CLKSEL1, CLKSEL2, CLKSEL3</b>    
    CLKSEL1, CLKSEL2, CLKSEL3 -> set to 0x0    
    both clocks for Nodes 1, 2, 3 are switched off <BR>     

+ <b>bit field Node</b>    
    Node -> set to 0x0    
    Node 0 is used for debug over CAN. However this function will not be enabled. <BR>    
    
+ <b>bit field DXCM</b>    
    DXCM -> set to 0x0    
    debug over DAP disabled <BR>    
    
+ <b>bit field RINIT</b>    
    RINIT -> set to 0x0    
    no initialization of RAM <BR>   
    
+ <b>bit field CI</b>    
    CI -> set to 0x1    
    has to be set to change clock settings <BR>    
    
+ <b>bit field CCCE</b>    
    CCCE -> set to 0x1    
    has to be set together with bit field CI to change clock and RAM settings <BR>    

        
<h2>2. MCAN Protocol initialization</h2>

<h3>2.1. Functionalities</h3>

Functionalities to be set / reset

+ CAN Baud Rate
+ CAN Protocol

<h3>2.2. Registers</h3>
Registers to be initialized <BR>    
          

<h4>2.2.1. CC Control Register for CAN Module 0 Node 0 / CCCR0</h4>

Compiler symbol for CCCR0: CAN0_CCCR0<BR>

<b>Note: The bit fields CCCR.CCE and CCCR.INIT require special handling</b><BR>

+ <b>bit field NISO</b>    
    Non ISO Operation -> set to 0x0    
    CAN FD frame format is used according to ISO11898-1 <BR>
          
          
+ <b>bit field TXP</b>    
    Transmit Pause -> set to 0x1    
    the M_CAN pauses for two CAN bit times before starting the next transmission <BR>  
          
<h4>2.2.2. Nominal Bit Timing & Prescaler Register for CAN Module 0 Node 0 / NBTP0</h4>

Compiler symbol for NBTP0: CAN0_NBTP0<BR>

<b>Note: The register is protected by the bit fields CCCR.CCE and CCCR.INIT</b><BR>

+ <b>bit field NBRP</b>    
    Nominal Bit Rate Prescaler -> set to 0x3    
    the input clock for the protocol engine is 80 Mhz; it is reduced to 20 Mhz; divisor is 4 -> bit field NBRP -> 3 <BR>   
    
+ <b>bit field NTSEG1</b>    
    Nominal Bit Time Segment before sample point -> set to 29    
    Phase Segment 1 and Prop Segment are accumulated to one value; NTSEG1 bitfield -> set to 8 + 21 -> 29 <BR>    
    
+ <b>bit field NTSEG2</b>    
    Nominal Bit Time Segment after sample point -> set to 8        
    Phase Segment 2 is set to 8 <BR>        
    
 + <b>bit field NSJW</b>    
    Nominal Synchronisation Jump Width -> set to 8        
    Nominal Sync Jump Width is set to 8 <BR>   


<h4>2.2.3. Data Bit Timing & Prescaler Register for CAN Module 0 Node 0 / DBTP0</h4>

Compiler symbol for DBTP0: CAN0_DBTP0<BR>

<b>Note: The register is protected by the bit fields CCCR.CCE and CCCR.INIT</b><BR>    

+ <b>bit field DBRP</b>    
    Data Bit Rate Prescaler -> set to 0x3    
    the input clock for the protocol engine is 80 Mhz; it is reduced to 20 Mhz; divisor is 4 -> bit field DBRP -> 3 <BR>   
    
+ <b>bit field DTSEG1</b>    
    Data Bit Time Segment before sample point -> set to 29    
    Phase Segment 1 and Prop Segment are accumulated to one value; DTSEG1 bitfield -> set to 8 + 21 -> 29 <BR>    
    
+ <b>bit field DTSEG2</b>    
    Data Bit Time Segment after sample point -> set to 8        
    Phase Segment 2 is set to 8 <BR>        
    
+ <b>bit field DSJW</b>    
    Data Synchronisation Jump Width -> set to 8        
    Data Sync Jump Width is set to 8 <BR>
          
    
+ <b>bit field TDC</b>    
    Transmitter Delay Compensation -> set to 0x0        
    Transmitter Delay Compensation is disabled <BR> 


<h2>3. MCAN Buffer initialization</h2>

<h3>3.1. Functionalities</h3>

Functionalities to be set / reset

+ Tx Buffer configuration
+ Rx Buffer configuration         


<h3>3.2. Registers</h3>
Registers to be initialized <BR>  

<h4>3.2.3. Tx Buffer Configuration for CAN Module 0 Node 0 / TXBC0</h4>

Compiler symbol for TXBC0: CAN0_TXBC0<BR>

<b>Note: The register is protected by the bit fields CCCR.CCE and CCCR.INIT</b><BR>    

+ <b>bit field TBSA</b>    
    Tx Buffers Start Address -> set to Ptr_TxBuffers    
    the buffers are moved to the beginning of the RAM <BR>      

+ <b>bit field NDTB</b>     
    Number of Dedicated Tx Buffers -> set to Count_TxBuffers <BR>     

+ <b>bit field TFQS</b>     
    Transmit FIFO/Queue Size -> set to 0x0
    no Tx FIFO <BR>     
    
+ <b>bit field TFQM</b>     
    Tx FIFO/Queue Mode -> set to 0x0
    no Tx FIFO operation <BR>   

<h4>3.2.3. Tx Buffer Element Size Configuration for CAN Module 0 Node 0 / TXESC0</h4>

Compiler symbol for TXESC0: CAN0_TXESC0<BR>

<b>Note: The register is protected by the bit fields CCCR.CCE and CCCR.INIT</b><BR>    

+ <b>bit field TBDS</b>    
    Tx Buffer Data Field Size -> set to Size_TxBufferDatafield <BR>      




<h4>3.2.4. Rx Buffer Conﬁguration for CAN Module 0 Node 0 / RXBC0</h4>

Compiler symbol for RXBC0: CAN0_RXBC0<BR>

<b>Note: The register is protected by the bit fields CCCR.CCE and CCCR.INIT</b><BR>    

+ <b>bit field RBSA</b>    
    Rx Buffers Start Address -> set to Ptr_RxBuffers    
    the buffers are second in line from the beginning of the RAM <BR>      



<h4>3.2.5. Rx Buffer / FIFO Element Size Conﬁguration for CAN Module 0 Node 0 / RXESC0</h4>

Compiler symbol for RXESC0: CAN0_RXESC0<BR>

<b>Note: The register is protected by the bit fields CCCR.CCE and CCCR.INIT</b><BR>    

+ <b>bit field RBDS</b>    
    Rx Buffer Data Field Size -> set to Size_RxBufferDatafield <BR>      


       
<h2>4. MCAN Filter initialization</h2>

<h3>4.1. Functionalities</h3>

Functionalities to be set / reset

+ Global Filter setup
+ Rx Standard Filter setup
+ CAN Rx Filter


<h3>4.2. Registers</h3>
Registers to be initialized <BR>    

<h4>4.2.1. Global Filter Configuration for CAN Module 0 Node 0 / GFC0</h4>

Compiler symbol for DBTP0: CAN0_GFC0<BR>     

<b>Note: The register is protected by the bit fields CCCR.CCE and CCCR.INIT</b><BR>     

+ <b>bit field ANFS</b>    
    Accept Non-matching Standard Frames  -> set to 0x3    
    Reject standard frames with non-matching ID <BR>
          

+ <b>bit field ANFE</b>    
    Accept non-matching Extended Frames  -> set to 0x3    
    Reject extended frames with non-matching ID <BR>
         

+ <b>bit field RRFE</b>    
    Reject Remote Frames Extended -> set to 0x1    
    Reject all remote frames with 29-bit extended IDs <BR>
     

+ <b>bit field RRFS</b>    
    Reject Remote Frames Standard -> set to 0x1    
    Reject all remote frames with 11-bit standard IDs <BR>
     

<h4>4.2.2. Standard ID Filter Conﬁguration for CAN Module 0 Node 0 / SIDFC0</h4>

Compiler symbol for SIDFC0: CAN0_SIDFC0<BR>         

+ <b>bit field FLSSA</b>    
    Filter List Standard Start Address    
    Start address of standard Message ID ﬁlter list <BR>     

+ <b>bit field LSS</b>    
    List Size Standard   
    Number of standard Message ID ﬁlter elements <BR>
    

       
<h2>5. MCAN Port Connectivity</h2>

<h3>5.1. Functionalities</h3>

Functionalities to be set / reset

+ Connection of MCAN Module 0 CAN Node 0 to IO Ports P20.8, P20.7, P20.6<BR>     
MCAN0 Module CAN0 interfaces<BR>    
Signal: TxD    - P20.8
        RxDB   - P20.7
        STB    - P20.6  - must be driven low to enable transceiver<BR>         

+ Connection of MCAN Module 0 CAN Node 1 to IO Ports P15.2, P15.3<BR>     
MCAN0 Module CAN1 interfaces<BR>    
Signal: TxD     - P15.2
        RxDA    - P15.3<BR>         

+ Initialization of IO Ports P20 and P15.    <BR>   

<h3>5.2. Registers</h3>
Registers to be initialized <BR>    

<h4>5.2.1. Node Port Control Register initialization for CAN Module 0 Node 0 / NPCR0</h4>

Compiler symbol for NPCR0: CAN0_NPCR0<BR>     

+ <b>bit field RXSEL</b>    
    connect node CAN0 to Ports P20.8 and P20.7  -> set to 0x1<BR>

+ <b>bit field LBM and LOUT</b>    
    no loop back mode  -> set both to 0x0<BR>
        
+ <b>bit field DELE</b>    
    function not enabled  -> set to 0x0<BR>


<h4>5.2.2. Node Port Control Register initialization for CAN Module 0 Node 1 / NPCR1</h4>

Compiler symbol for NPCR1: CAN0_NPCR1<BR>     

+ <b>bit field RXSEL</b>    
    connect node CAN1 to Ports P15.2 and P15.3  -> set to 0x0<BR>

+ <b>bit field LBM and LOUT</b>    
    no loop back mode  -> set both to 0x0<BR>
        
+ <b>bit field DELE</b>    
    function not enabled  -> set to 0x0<BR>

        





