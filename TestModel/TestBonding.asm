//-------------------------------------------
// �������������
//-------------------------------------------

.include doudou.inc
.include TestBondingC.inc

.define  TIMER_DATA_FOR_8KHZ 0xe800

.external F_SACM_Delay
.external F_WatchdogClear
.external _CheckSum_MCU
.external _CheckSum_SPIFlash
.external _Check_Data

.external _SP_RampDnDAC1
.external _Sleep

.external _TestIO_Init
.external _TestIO

.external _Check_SPIFlash
//--------------------------------------------
.CODE
//********************************************
//������void MICTEST()
//������MIC����   
//��������
//���أ���
//********************************************
.PUBLIC _F_BondingTest	
_F_BondingTest: .PROC 		
    	push R1, R5 to [SP];
    		
		INT OFF
	
		call _TestIO_Init
		
		R1 = C_AUD_CH1_Up_Sample_Enable | C_AUD_CH1_TMR_Sel_TimerA// | C_AUD_CH1_Half_Vol_Enable;//���CH1��CH2ͬʱ����ʱ����ҪC_AUD_CH1_Half_Vol_Enable��
		[P_AUDIO_Ctrl2] = R1;
		R1 = C_AUDIO_PWM_Enable | C_AUDIO_Gain_Sel;
		[P_AUDIO_Ctrl1] = R1;

		call _TestMic0
   	 	call _SP_RampDnDAC1
   	 	
		call _TestIO       
       
//      call _CheckSum_MCU      //�������ȷ��һֱbeep��
        
//        r1 = 400
//	   	call	F_BondingTestDelay       
//
//        call F_TestMic0
//        call _SP_RampDnDAC1

        call _CheckSum_SPIFlash	   //�������ȷ��һֱbeepbeep��

//		call _Check_SPIFlash		////���SPI �Ķ�д���Ƿ�������	
		
		call _SP_RampDnDAC1
		
//		call _test_btplay   //�������������Ƿ���������������,������ʱ�����е�����ֱ���������Ų��˳���
			
		R1 = 0x0000
		[P_AUDIO_CH1_Data] = R1 
//		[P_ADC_Ctrl] = R1 
		
		CALL _TestIO_Init		//�صơ�
				
		pop R1, R5 from [SP];		
		retf
.endp

//*************************************
// Test Mic									 
//*************************************
//F_TestMic:
//		r1 = 0x00
//		r2 = 3
//loop:
//		[P_ADC_Data] = r3
//?L_loopmic:
//		r3 = [P_ADC_Ctrl]
//		test r3,0x8000
//		jnz ?L_loopmic
//		r3 = [P_ADC_Data]
//		[P_DAC_CH1_Data] = r3		
//		R1 += 1 				// 
//		call F_WatchdogClear
//		cmp	r1,0xffff
//		jnz  loop 
//		r2-=1
//		jnz  loop
//		retf
//��Beep				
//��Beep				
.public _TestMic0
_TestMic0:.proc
		
F_TestMic0:
        push R1,R5 to [sp]
		r1 = 0x00
		r2 = 10
		r3=0
loop0:
//		[P_ADC_Data] = r3
//?L_loopmic0:
//		r3 = [P_ADC_Ctrl]
//		test r3,0x8000
//		jnz ?L_loopmic0
//		r3 = [P_ADC_Data]
		r3+=0x60
		[P_AUDIO_CH1_Data] = r3		
		R1 += 1 				// 
		call F_WatchdogClear
		cmp	r1,0xffff
		jnz  loop0 
		r2-=1
		jnz  loop0	
			
		pop R1, R5 from [SP];		
		retf
.endp						

		
//*************************************
// Delay
//*************************************
.public F_BondingTestDelay
F_BondingTestDelay: .proc        // 
	L_Delay2:	
		R2 = 0xa00
		call F_WatchdogClear
	L_Delay3:	
		R2 = R2 -1
		jnz	 L_Delay3
		R1 = R1 - 1	
		jnz	 L_Delay2
		retf
.endp

//==========================================
//4IO�¶�Flash ����.
//============================================	
//.if GPCE4
//.PUBLIC	_FLASH_Auto_ReadNWords
//_FLASH_Auto_ReadNWords:	.proc	
//	R4 = SP+3
//	R1 = [R4++]			// addrL
//	R2 = [R4++]			// addrH
//	R3 = [R4++]			// size
//	R4 = [R4]			// tgt
//      
//    DS = R2   	
//L_Loop?:	
//	R2 = D:[R1]
//    [R4++] = R2;
//	R1 += 1  
//L_NoCarry1?:
//	R3 -= 1
//	JNZ	L_Loop?
//	  
//	retf;
//.endp
//
//.endif

//-------------------------------------------------
// End
//-------------------------------------------------
.end