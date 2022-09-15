//==========================================================================
// File Name   : ISR.asm
// Description : Interrupt Service Routine
// Written by  : Benjamin Xu
// Last modified date:
//              2019/05/02
// Note: 
// 1. Interrupts must be declared in address 0x203800~0x20ffff.
// 2. For FIQ, IRQ1 ~ IRQ7, user needs to clear P_INT_Clear before 
//    exiting interrupt routine
// 3. 
// 	_FIQ:	FIQ								// Fast interrupt entry
//  _IRQ0:	TimerA							// interrupt entry
//  _IRQ1:	TimerB							// interrupt entry
//  _IRQ2:	TimerC							// interrupt entry
//  _IRQ3:	UART, SPI, SIO					// interrupt entry
//  _IRQ4:	SPU								// interrupt entry
//  _IRQ5:	KEY, EXT1, EXT2					// interrupt entry
//  _IRQ6:	512Hz, 2KHz, 4KHz				// interrupt entry     
//  _IRQ7:	2Hz, 16Hz, 64Hz					// interrupt entry
//  _Break: Software interrupt              // interrupt entry
//==========================================================================
//**************************************************************************
// Header File Included Area
//**************************************************************************
.include GPCE1_CE3.inc
.include A1800.inc
.include A3400Pro.inc
.include MS02.inc


.external _gTemp

.external _SeriesAcnt

.external _Led_Blink

.external _TwokeyCntl
.external _Timeout_cnt
.external _Timeout_cnt_En
.external _PassTimeCnt
.external _TimeCnt_Speed
.external _TimeCnt_Testingmode
.external _TimeCnt_Key
.external _T_Countdowncnt
.external _Key_Scan_ServiceLoop
.external F_Switch_Check
.external _TimeCnt
.external _LED_Cnt
.external _DAC1_RampDnFlag
.external F_SW_MuteControl
.external F_DAC1RampDnISR
.external _A1800_Flag
.external F_ISR_Service_CTS


.define C_Passcheck_En 0

.CODE


.public _BREAK;

.public _FIQ;

.public _IRQ0;

.public _IRQ1;

.public _IRQ2;

.public _IRQ3;

.public _IRQ4;

.public _IRQ5;

.public _IRQ6;

.public _IRQ7;


_BREAK:
	pop R3, R4 from [SP]
	push R1, R5 to [SP]
	
	
	pop R1, R5 from [SP]
	reti;


_FIQ:
	pop R3, R4 from [SP]
	push R1, R5 to [SP]
	
	R1 = [P_INT_Status];
	test R1, C_IRQ0_TMA;
	jnz L_FIQ_TimerA;	
	test R1, C_IRQ1_TMB;
	jnz L_FIQ_TimerB;
	
L_FIQ_TimerA:

	R2 = C_IRQ0_TMA;
	[P_INT_Status] = R2;

    //------------------------------------------------------------------
    // hook Timer A FIQ subroutine here and define it to be external
    // and returns as a flag to tell required process data or not   
 //   call F_ISR_Service_SACM_MS02;
 
 	r1 = [_A1800_Flag]
	jz ?L_BypassRampDn
 
    call F_ISR_Service_SACM_A1800; 
    
	call F_SW_MuteControl; //用于关闭硬件mute后发音过程中，如暂停
////
	tstb [_DAC1_RampDnFlag], 0
 	je ?L_BypassRampDn
	call F_DAC1RampDnISR
	

?L_BypassRampDn:	
	pop R1, R5 from [SP]
	reti;
	
L_FIQ_TimerB:
    //------------------------------------------------------------------
    // hook Timer B FIQ subroutine here and define it to be external
    //------------------------------------------------------------------
    R1 = C_IRQ1_TMB;
    [P_INT_Status] = R1;
    pop R1, R5 from [sp];
    reti;

L_FIQ_TimerC:
    //------------------------------------------------------------------
    // hook Timer C FIQ subroutine here and define it to be external
    //------------------------------------------------------------------
    R1 = C_IRQ2_TMC;
    [P_INT_Status] = R1;
    pop R1, R5 from [sp];
    reti;	
	
	pop R1, R5 from [SP]
	reti;
	


_IRQ0:
	pop R3, R4 from [SP]
	push R1, R5 to [SP]
	
	
	pop R1, R5 from [SP]
	reti;


_IRQ1:
	pop R3, R4 from [SP]
	push R1, R5 to [SP]
	
//	call F_ISR_Service_SACM_A3400Pro;
	
	R1 = C_IRQ1_TMB;
    [P_INT_Status] = R1;
	
	pop R1, R5 from [SP]
	reti;


_IRQ2:
	pop R3, R4 from [SP]
	push R1, R5 to [SP]
	
//	call F_ISR_Event_Service;   
//	call F_A1800_ISR_Event_Service;     
	
	R1 = C_IRQ2_TMC;
    [P_INT_Status] = R1;
	pop R1, R5 from [SP]
	reti;


_IRQ3:
	pop R3, R4 from [SP]
	push R1, R5 to [SP]
	
	
//	R1 = C_IRQ2_TMC;
//    [P_INT_Status] = R1;
	
	pop R1, R5 from [SP]
	reti;


_IRQ4:
	pop R3, R4 from [SP]
	push R1, R5 to [SP]
	
     r1 = C_IRQ4_KEY

	[P_INT_Status] = R1
	
	pop R1, R5 from [SP]
	reti;


_IRQ5:
	pop R3, R4 from [SP]
	push R1, R5 to [SP]
	
	
	pop R1, R5 from [SP]
	reti;


_IRQ6:
	pop R3, R4 from [SP]	
	push R1, R5 to [SP]
	
	R1 = [P_INT2_Status];
	test R1, C_IRQ6_CTSTMA;
	jnz L_IRQ6_CTSTMA;	
	test R1, C_IRQ6_CTSTMB;
	jnz L_IRQ6_CTSTMB;
	
//	R1 = [P_INT2_Status];
	test R1, C_IRQ6_512Hz//C_IRQ6_2048Hz;
	jnz L_IRQ6_512Hz
	
	test R1, C_IRQ6_2048Hz//C_IRQ6_2048Hz;
	jnz L_IRQ6_2048Hz
	
    r1 = C_IRQ6_4096Hz
	[P_INT2_Status] = r1;
	
//	r1= [_SeriesAcnt]//复用
//	r1^=0x7fff
//	[_SeriesAcnt]  =r1
//	[P_DAC_Data] = R1  
	
	pop R1, R5 from [SP];
	reti;   

L_IRQ6_CTSTMA:
    R1 = C_IRQ6_CTSTMA;
    [P_INT2_Status] = R1;
    
    call F_ISR_Service_CTS;                
       
    pop R1, R5 from [SP];
	reti;

L_IRQ6_CTSTMB:    
	nop;
	nop;	
    R1 = C_IRQ6_CTSTMB;
    [P_INT2_Status] = R1;   
     
	pop R1, R5 from [SP];
	reti; 
	
L_IRQ6_2048Hz:
    r1 = [_TimeCnt_Testingmode]
    r1+= 1
    [_TimeCnt_Testingmode] = r1
	
	
//	call F_SQUWAVE_ISR
	r1 = C_IRQ6_2048Hz//|C_IRQ6_4096Hz
	[P_INT2_Status] = r1;
	pop R1, R5 from [SP];
	reti;         
	
L_IRQ6_512Hz:	 
    r1 = C_IRQ6_512Hz
	[P_INT2_Status] = r1;


   
    
?L_IRQ6_next:    
   call _Key_Scan_ServiceLoop

//	call F_SleepKey_Check			//v16
//	r1 = r1
//	jz ?L_IRQ6_out
//	
//
//	r1 = [_gTemp]
////	cmp r1,C_Instruction_Mode
////	je ?L_IRQ6_out
//
//    cmp r1,C_TryMe_Mode
//	je ?L_IRQ6_out
//
//?L_Check_TXIF:					// Wait untill command and address have been sent out
//	R1 = [P_SPI_Misc];	
//	test R1, C_SPI_Busy_Flag;
//	jnz ?L_Check_TXIF;
//	[P_SPI_Misc] = R1;
//	
//	r2 = 10;
//?L_ClearFIFO:		
//	R1 = [P_SPI_RX_Data];		// Clear dummy data in RX FIFO at Read Command transmitted   
//	r2-= 1
//	jnz ?L_ClearFIFO		
//
//	setb [P_IOA_Buffer], 12;	// disable SPI Flash
//	call _KeyOFF_Sleep
	
	
	pop R1, R5 from [SP]
	reti;


_IRQ7:
	pop R3, R4 from [SP]
	push R1, R5 to [SP]
	
    r1 = C_IRQ7_16Hz
	[P_INT2_Status] = r1;
	
	

   call F_Switch_Check    



?L_IRQ7_next:
	
	r1 = [_T_Countdowncnt]
    r1+= 1
    [_T_Countdowncnt] = r1

    r1 =[_TimeCnt_Key]
    r1+=1
    [_TimeCnt_Key] =r1



 
 
 .if C_Passcheck_En    
   r1 =[_PassTimeCnt]
   r1+=1
   [_PassTimeCnt] = r1
 .endif  
   
//    r1 = [_TimeCnt_Speed]
//    r1+= 1
//    [_TimeCnt_Speed] = r1
	
	
    r1 = [_TimeCnt]
//    jz ?L_Out
    r1+= 1
    [_TimeCnt] = r1
    
    r1=[_Timeout_cnt_En]
    jz  ?L_Out
    
    
    r1 =[_Timeout_cnt]
    r1+=1
    [_Timeout_cnt] =r1


?L_Out: 
	r1 = [_LED_Cnt]
	jz ?L_Blink
	r1-= 1
	[_LED_Cnt] = r1
	pop R1, R5 from [SP];
	reti;
	
?L_Blink:
     call _Led_Blink

?L_Out1:	
	pop R1, R5 from [SP]
	reti;

