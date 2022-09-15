//==========================================================================
// File Name   : GPCE1_CE3.inc
// Description : GPCE1, GPCE3 registers and constants definition
// Written by  : Ryan Shih
// Last modified date: 2019/10/08
//==========================================================================
.ifndef __GPCE1_CE3_INC__
.define __GPCE1_CE3_INC__




.include GPCE1_CE3_BODY.inc

.ifndef GPCE100A
.define GPCE100A		0
.endif
.ifndef GPCE3400A
.define GPCE3400A		0
.endif
.ifndef GPCE3100A
.define GPCE3100A		0
.endif

//--------------------------------------------------------------------------------------------------------------------------------------------
//	GPIO Configration
//	Dir		Att		Dat		Function Description								Wakeup
//	0		0		0		Input Pull Low										Yes
//	0		0		1		Input Pull High for IOB[9:0]						Yes
//							Input Floating with schmitt trigger for others		Yes
//	0		1		0		Input Floating										Yes
//	0		1		1		Input Floating										Yes
//	1		0		0		Output High (Inverted)								No
//	1		0		1		Output Low (Inverted)								No
//	1		1		0		Output Low											No
//	1		1		1		Output High											No
//--------------------------------------------------------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------------------------------------------------------
//	Special IO Function
//	IOA_Func	Bit15	Bit14	Bit13	Bit12	Bit11	Bit10	Bit9	Bit8	Bit7	Bit6	Bit5	Bit4	Bit3	Bit2	Bit1	Bit0
//	IOPWM		IOPWM7	IOPWM6	IOPWM5	IOPWM4	IOPWM3	IOPWM2	IOPWM1	IOPWM0	-		-		-		-		-		-		-		-
//	HighSink	Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		-		-		-		-		-		-		-		-
//	SPI2		-		-		-		-		-		-		-		-		-		-		-		-		SPI2TX	SPI2RX	SPI2CK	SPI2CS
//	UART		-		-		-		-		-		-		-		-		-		-		-		-		TX		RX		-		-
//	IR			-		-		-		-		-		-		-		-		-		-		-		IROUT	-		-		-		-
//	Reset		-		-		-		-		-		-		-		-		Yes		-		-		-		-		-		-		-
//	Touch		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes
//--------------------------------------------------------------------------------------------------------------------------------------------
//	IOB_Func	Bit15	Bit14	Bit13	Bit12	Bit11	Bit10	Bit9	Bit8	Bit7	Bit6	Bit5	Bit4	Bit3	Bit2	Bit1	Bit0
//	SPI2		SPI2TX	SPI2RX	SPI2CK	SPI2CS	-		-		-		-		-		-		-		-		-		-		-		-
//	UART		TX		RX		-		-		-		-		-		-		-		-		-		-		-		-		-		-
//	ADC_CH		-		-		-		-		-		-		AN9		AN8		AN7		AN6		AN5		AN4		AN3		AN2		AN1		AN0
//	CCP			-		-		-		-		-		-		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes
//	Ext_Int		-		-		-		-		Ext1	Ext2	-		-		-		-		-		-		-		-		-		-
//	FB/OSC		-		-		-		-		FI1		FI2		FO1		FO2		-		-		-		-		-		-		-		-
//	PL1M		-		-		-		-		-		-		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes
//	PH_R		-		-		-		-		-		-		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes
//	Reset		-		-		-		-		-		-		-		-		Yes		-		-		-		-		-		-		-
//	Touch		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes		Yes
//--------------------------------------------------------------------------------------------------------------------------------------------
//	IOC_Func	Bit15	Bit14	Bit13	Bit12	Bit11	Bit10	Bit9	Bit8	Bit7	Bit6	Bit5	Bit4	Bit3	Bit2	Bit1	Bit0
//	SPI1		-		-		-		-		-		-		-		-		SIO2	SIO1	CS		SIO0	SCK		SIO3	-		-
//	ICE_I/F		-		-		-		-		-		-		-		-		-		-		-		-		-		-		SCK		SDA
//--------------------------------------------------------------------------------------------------------------------------------------------


//////////////////////////////////////////////////////////////////////////////////////
//====================================================================================
//	Port Definition
//====================================================================================
//////////////////////////////////////////////////////////////////////////////////////
.define	P_IOA_Data				0x3000		// Read Only
.define P_IOA_Buffer			0x3001
.define	P_IOA_Dir				0x3002
.define	P_IOA_Attrib			0x3003
.define	P_IOB_Data				0x3004		// Read Only
.define P_IOB_Buffer			0x3005
.define	P_IOB_Dir				0x3006
.define	P_IOB_Attrib			0x3007
.define	P_IOC_Data				0x3008		// Read Only
.define P_IOC_Buffer			0x3009
.define	P_IOC_Dir				0x300A
.define	P_IOC_Attrib			0x300B
.define P_IOA_WakeUp_Mask		0x300C
.define P_IOB_WakeUp_Mask		0x300D
.define P_IOC_WakeUp_Mask		0x300E
.define P_IO_Ctrl				0x300F
.define	P_IOB_PL1M				0x3029

//---------------------------------------------------
.define P_TimerA_Data			0x3010
.define P_TimerA_CNTR			0x3011
.define P_TimerB_Data			0x3012
.define P_TimerB_CNTR			0x3013
.define P_TimerC_Data			0x3014
.define P_TimerC_CNTR			0x3015
.define P_Timer_Ctrl			0x3016
.define P_CCP_Ctrl				0x3017
.define P_CCP_CNTR				0x3018

//---------------------------------------------------
.define P_PWM0_Ctrl				0x3020
.define P_PWM1_Ctrl				0x3021
.define P_PWM2_Ctrl				0x3022
.define P_PWM3_Ctrl				0x3023
.define P_PWM4_Ctrl				0x3024
.define P_PWM5_Ctrl				0x3025
.define P_PWM6_Ctrl				0x3026
.define P_PWM7_Ctrl				0x3027

//---------------------------------------------------
.define P_System_Clock			0x3030
.define P_System_Reset			0x3031
.define P_Reset_LVD_Ctrl		0x3032
.define P_TimeBase_Clear		0x3033
.define P_Watchdog_Clear		0x3034
.define P_Wait_Ctrl				0x3035
.define P_System_Sleep			0x3036
.define P_IOSC32K_Cal_LB		0x3037
.define P_IOSC32K_Cal_HB		0x3038
.define P_Cache_Ctrl			0x3039
.define P_Cache_Hit_Rate		0x303A
.define P_Stack_INT_Level		0x303B

//---------------------------------------------------
.define P_AUDIO_Ctrl2			0x3040
.define P_AUDIO_CH1_Data		0x3041
.define P_AUDIO_CH2_Data		0x3042
.define P_AUDIO_Ctrl1			0x3043

//---------------------------------------------------
.define P_INT_Ctrl				0x3050
.define P_INT_Status			0x3051
.define P_FIQ_Sel				0x3052
.define P_INT2_Ctrl				0x3053
.define P_INT2_Status			0x3054
.define P_FIQ2_Sel				0x3055

//---------------------------------------------------
.define P_ADC_Ctrl				0x3070
.define P_ADC_Data				0x3071
.define P_ADC_LineIn_BitCtrl	0x3072

//---------------------------------------------------
.define P_SPI_Ctrl				0x30E0
.define P_SPI_TX_Status			0x30E1
.define P_SPI_TX_Data			0x30E2
.define P_SPI_RX_Status			0x30E3
.define P_SPI_RX_Data			0x30E4
.define P_SPI_Misc				0x30E5
.define P_SPI_Man_Ctrl			0x30E6
.define P_SPI_Auto_Ctrl			0x30E7
.define P_SPI_PRGM_BC			0x30E8
.define P_SPI_Bank				0x30E9
.define P_SPI_Auto_Setting		0x30EA
.define P_SPI_RX_ICE			0x30EF

//---------------------------------------------------
.define P_SPI2_Ctrl				0x3090
.define P_SPI2_TX_Status		0x3091
.define P_SPI2_TX_Data			0x3092
.define P_SPI2_RX_Status		0x3093
.define P_SPI2_RX_Data			0x3094
.define P_SPI2_Misc				0x3095

//---------------------------------------------------
.define P_UART_Data				0x30C0
.define P_UART_RX_Err_Status	0x30C1
.define P_UART_Ctrl				0x30C2
.define P_UART_BaudRate			0x30C3
.define P_UART_Status			0x30C4

//---------------------------------------------------
.define	P_CTS_Ctrl0				0x30D0
.define	P_CTS_Ctrl1				0x30D1
.define	P_CTS_TMADATA		 	0x30D2
.define	P_CTS_TMACNT		 	0x30D3
.define	P_CTS_TMBDATA		 	0x30D4
.define	P_CTS_TMBCNT		 	0x30D5
.define	P_CTS_CAPTMB		 	0x30D6
.define	P_CTS_HighTime			0x30D7
.define	P_CTS_DebTime			0x30D8

//---------------------------------------------------
.define	P_INST_CYC_L			0x37FE		// Get Instruction Cycle between FreeRun to breakpoint
.define	P_INST_CYC_H			0x37FF
//---------------------------------------------------

// efuse and body option -- not release to customer
.define P_SCRAMBLE_Ctrl			0x30F0
.define P_BDOPT_WPE				0x30F8
.define P_BDOPT_Ctrl			0x30F9
.define P_EFUSE1_Status			0x30FA
.define P_EFUSE2_Status			0x30FB
.define P_SPIFC_Key				0x30FC

//////////////////////////////////////////////////////////////////////////////////////
//====================================================================================
// Constant Definition
//====================================================================================
//////////////////////////////////////////////////////////////////////////////////////

//====================================================================================
// P_IO_Ctrl (0x300F)
//====================================================================================
// Bit[15:12] : Reserved
// Bit[11] : EXT2 Schmitt trigger enable
.define C_EXT2_Schmitt_Disable	0x0000
.define C_EXT2_Schmitt_Enable	0x0800
// Bit[10] : EXT1 Schmitt trigger enable
.define C_EXT1_Schmitt_Disable	0x0000
.define C_EXT1_Schmitt_Enable	0x0400
// Bit[9:8] : IR_Duty === IRout:IOA1
.define	C_IR_Duty				0x0300
.define	C_IR_Duty_DIV_2			0x0000		// 1/2 Duty
.define	C_IR_Duty_DIV_3			0x0100		// 1/3 Duty
.define	C_IR_Duty_DIV_4			0x0200		// 1/4 Duty
.define	C_IR_Duty_DIV_5			0x0300		// 1/5 Duty
// Bit[7:6] : IR_Ctrl
.define	C_IR_Ctrl				0x00C0
.define	C_IR_Disable			0x0000		// IR Disable ; IOA1 as Normal IO
.define	C_IR_With_TimerA		0x0040		// IR Function Enable with Timer A as Source
.define	C_IR_With_TimerB		0x0080		// IR Function Enable with Timer B as Source
.define	C_IR_With_TimerC		0x00C0		// IR Function Enable with Timer C as Source
// Bit[5:4] : EXT2_Ctrl === FI2:IOA6 FO2:IOA7
.define	C_EXT2_Ctrl				0x0030
.define	C_EXT2_Normal_Rising	0x0000		// Normal IO With Rising Edge Trigger
.define	C_EXT2_Normal_Falling	0x0010		// Normal IO With Falling Edge Trigger
.define	C_EXT2_Feedback_Rising	0x0020		// Feedback Oscillator With Rising Edge Trigger
.define	C_EXT2_Feedback_Falling	0x0030		// Feedback Oscillator With Falling Edge Trigger
// Bit[3:2] : EXT1_Ctrl === FI1:IOA8  FO1:IOA9
.define	C_EXT1_Ctrl				0x000C
.define	C_EXT1_Normal_Rising	0x0000		// Normal IO With Rising Edge Trigger
.define	C_EXT1_Normal_Falling	0x0004		// Normal IO With Falling Edge Trigger
.define	C_EXT1_Feedback_Rising	0x0008		// Feedback Oscillator With Rising Edge Trigger
.define	C_EXT1_Feedback_Falling	0x000C		// Feedback Oscillator With Falling Edge Trigger
// Bit[1] : UART IO
.define C_UART_IOA				0x0000
.define C_UART_IOB				0x0002
// Bit[0] : SPI2 IO
.define C_SPI2_IOA				0x0000
.define C_SPI2_IOB				0x0001

//====================================================================================
// P_IOA_WakeUp_Mask (0x300C)
//====================================================================================
// Bit[15:0] : Wakeup Mask Control (Bit Control)
.define C_IOA_WakeUp_UnMask		0x0000
.define C_IOA_WakeUp_Mask		0xFFFF

//====================================================================================
// P_IOB_WakeUp_Mask (0x300D)
//====================================================================================
// Bit[15:0] : Wakeup Mask Control (Bit Control)
.define C_IOB_WakeUp_UnMask		0x0000
.define C_IOB_WakeUp_Mask		0xFFFF

//====================================================================================
// P_IOC_WakeUp_Mask (0x300E)
//====================================================================================
// Bit[15:0] : Wakeup Mask Control (Bit Control)
.define C_IOC_WakeUp_UnMask		0x0000
.define C_IOC_WakeUp_Mask		0xFFFF

//====================================================================================
// P_Timer_Ctrl (0x3016)  Timer Setting
//====================================================================================
// Bit[15:12] : Reserved
// Bit[11:8] : TMCSEL
.define C_TimerC_Sel			0x0F00
.define C_TimerC_Disable		0x0000
.define C_TimerC_Software_Count	0x0100
.define C_TimerC_EXT2			0x0200
.define C_TimerC_IOSC32K		0x0300
.define C_TimerC_SYSCLK_EXT2	0x0400
.define C_TimerC_AUDCLK			0x0600
.define C_TimerC_AUDCLK_Div8	0x0700
.define C_TimerC_SYSCLK			0x0800
.define C_TimerC_SYSCLK_Div2	0x0900
.define C_TimerC_SYSCLK_Div4	0x0A00
.define C_TimerC_SYSCLK_Div8	0x0B00
.define C_TimerC_SYSCLK_Div16	0x0C00
.define C_TimerC_SYSCLK_Div32	0x0D00
.define C_TimerC_SYSCLK_Div64	0x0E00
.define C_TimerC_SYSCLK_Div128	0x0F00
// Bit[7:4] : TMBSEL
.define C_TimerB_Sel			0x00F0
.define C_TimerB_Disable		0x0000
.define C_TimerB_Software_Count	0x0010
.define C_TimerB_EXT2			0x0020
.define C_TimerB_IOSC32K		0x0030
.define C_TimerB_SYSCLK_EXT2	0x0040
.define C_TimerB_AUDCLK			0x0060
.define C_TimerB_AUDCLK_Div8	0x0070
.define C_TimerB_SYSCLK			0x0080
.define C_TimerB_SYSCLK_Div2	0x0090
.define C_TimerB_SYSCLK_Div4	0x00A0
.define C_TimerB_SYSCLK_Div8	0x00B0
.define C_TimerB_SYSCLK_Div16	0x00C0
.define C_TimerB_SYSCLK_Div32	0x00D0
.define C_TimerB_SYSCLK_Div64	0x00E0
.define C_TimerB_SYSCLK_Div128	0x00F0
// Bit[3:0] : TMASEL
.define C_TimerA_Sel			0x000F
.define C_TimerA_Disable		0x0000
.define C_TimerA_Software_Count	0x0001
.define C_TimerA_EXT2			0x0002
.define C_TimerA_IOSC32K		0x0003
.define C_TimerA_SYSCLK_EXT2	0x0004
.define C_TimerA_AUDCLK			0x0006
.define C_TimerA_AUDCLK_Div8	0x0007
.define C_TimerA_SYSCLK			0x0008
.define C_TimerA_SYSCLK_Div2	0x0009
.define C_TimerA_SYSCLK_Div4	0x000A
.define C_TimerA_SYSCLK_Div8	0x000B
.define C_TimerA_SYSCLK_Div16	0x000C
.define C_TimerA_SYSCLK_Div32	0x000D
.define C_TimerA_SYSCLK_Div64	0x000E
.define C_TimerA_SYSCLK_Div128	0x000F

//====================================================================================
// Timer Data and System Clock Definition
// P_TimerA_Data (0x3010)  Timer Data 
// P_TimerB_Data (0x3012)  Timer Data 
// P_TimerC_Data (0x3014)  Timer Data 
//====================================================================================
.define SystemClock				81920000
//.define SystemClock				64000000

.define C_Timer_Setting_2K     	65536 - (SystemClock / 2000)
.define C_Timer_Setting_3K     	65536 - (SystemClock / 3000)
.define C_Timer_Setting_4K     	65536 - (SystemClock / 4000)
.define C_Timer_Setting_5K     	65536 - (SystemClock / 5000)
.define C_Timer_Setting_6K     	65536 - (SystemClock / 6000)
.define C_Timer_Setting_7K     	65536 - (SystemClock / 7000)
.define C_Timer_Setting_8K    	65536 - (SystemClock / 8000)
.define C_Timer_Setting_9K     	65536 - (SystemClock / 9000)
.define C_Timer_Setting_10K    	65536 - (SystemClock / 10000)
.define C_Timer_Setting_11K    	65536 - (SystemClock / 11000)
.define C_Timer_Setting_12K    	65536 - (SystemClock / 12000)
.define C_Timer_Setting_13K    	65536 - (SystemClock / 13000)
.define C_Timer_Setting_14K    	65536 - (SystemClock / 14000)
.define C_Timer_Setting_15K    	65536 - (SystemClock / 15000)
.define C_Timer_Setting_16K    	65536 - (SystemClock / 16000)
.define C_Timer_Setting_20K    	65536 - (SystemClock / 20000)
.define C_Timer_Setting_24K    	65536 - (SystemClock / 24000)
.define C_Timer_Setting_28K    	65536 - (SystemClock / 28000)
.define C_Timer_Setting_32K    	65536 - (SystemClock / 32000)
.define C_Timer_Setting_36K    	65536 - (SystemClock / 36000)
.define C_Timer_Setting_40K    	65536 - (SystemClock / 40000)
.define C_Timer_Setting_48K    	65536 - (SystemClock / 48000)
.define C_Timer_Setting_64K    	65536 - (SystemClock / 64000)
.define C_Timer_Setting_96K    	65536 - (SystemClock / 96000)
.define C_Timer_Setting_500K   	65536 - (SystemClock / 500000)

.define C_Timer_Setting_15555  	65536 - (SystemClock / 15555)	// For FPGA Test
.define C_Timer_Setting_17777  	65536 - (SystemClock / 17777)	// For FPGA Test
.define C_Timer_Setting_38K  	65536 - (SystemClock / 38000)	// For FPGA Test

//====================================================================================
// P_CCP_Ctrl (0x3017)  TimerC CCP Setting
//====================================================================================
// Bit[3]:Camparison mode setting 
.define C_CCP_CmpSel			0x0080
.define C_CCP_CmpOutputNormal	0x0000
.define C_CCP_CmpOutputInverse	0x0080
// Bit[2]:Capture mode setting
.define C_CCP_CapSel			0x0004
.define C_CCP_CapRising			0x0004
.define C_CCP_CapFalling		0x0000
// Bit[1:0]:CCP mode setting
.define C_CCP_ModeSel			0x0003
.define C_CCP_CapEnable			0x0001
.define C_CCP_CmpEnable			0x0002
.define C_CCP_Disable			0x0000
//====================================================================================
// P_CCP_CNTR (0x3018)  TimerC  CCP Counter
//====================================================================================


//====================================================================================
// P_PWM0_Ctrl (0x3020)  IOPWM0
// P_PWM1_Ctrl (0x3021)  IOPWM1
// P_PWM2_Ctrl (0x3022)  IOPWM2
// P_PWM3_Ctrl (0x3023)  IOPWM3
// P_PWM4_Ctrl (0x3024)  IOPWM4
// P_PWM5_Ctrl (0x3025)  IOPWM5
// P_PWM6_Ctrl (0x3026)  IOPWM6
// P_PWM7_Ctrl (0x3027)  IOPWM7
//====================================================================================
// Bit[15] : IOPWM_CNT_Clear
.define	C_IOPWM_CNT_Clear			0x8000
// Bit[14] : IOPWM_Mask
.define C_IOPWM_Enable				0x4000		//default
.define C_IOPWM_Disable				0x0000
// Bit[13] : Reserved
// Bit[12] : IOPWM_Mask
.define	C_IOPWM_Mask				0x1000
.define	C_IOPWM_Mask_Disable		0x0000		//default
.define	C_IOPWM_Mask_Enable			0x1000
// Bit[12] and Bit[9:8] : Clock Source for IOPWM
.define	C_IOPWM_CLK_SRC				0x0E00
.define	C_IOPWM_SRC_IOSC32K_Div2	0x0000
.define	C_IOPWM_SRC_TimerA			0x0200
.define	C_IOPWM_SRC_TimerB			0x0400
.define	C_IOPWM_SRC_TimerC			0x0600
.define	C_IOPWM_SRC_SYSCLK			0x0800
.define	C_IOPWM_SRC_SYSCLK_DIV8		0x0A00
.define	C_IOPWM_SRC_SYSCLK_DIV64	0x0C00
.define	C_IOPWM_SRC_SYSCLK_DIV1024	0x0E00
// Bit[8:0] : PWM_Duty => 000H~100H => 0/256~256/256, 101H = 1/2 duty
.define	C_IOPWM_Duty				0x01FF
.define C_IOPWM_OFF					0x0000
.define C_IOPWM_1_Div_256			0x0001
.define C_IOPWM_128_Div_256			0x0080
.define C_IOPWM_254_Div_256			0x00FE
.define C_IOPWM_255_Div_256			0x00FE
.define C_IOPWM_256_Div_256			0x0100
.define C_IOPWM_1_Div_2				0x01FF

//====================================================================================
// P_System_Clock (0x3030)  
// The System Clock can be configured form 6MHz to 54MHz
//====================================================================================
// Bit[15:8] : Reserved
// Bit[7:5] : System Clock Select, CPU Clock = System Clock
.define C_SYSCLK_Sel				0x00E0
.define C_SYSCLK_81920KHz			0x0000		// Clock Source from IOSC81.92MHz
.define C_SYSCLK_81920KHz_DIV2		0x0020		// IOSC81.92MHz output Div 2
.define C_SYSCLK_81920KHz_DIV3		0x0040		// IOSC81.92MHz output Div 3
.define C_SYSCLK_81920KHz_DIV4		0x0060		// IOSC81.92MHz output Div 4
.define C_SYSCLK_81920KHz_DIV6		0x0080		// IOSC81.92MHz output Div 6
.define C_SYSCLK_81920KHz_DIV8		0x00A0		// IOSC81.92MHz output Div 8
.define C_SYSCLK_81920KHz_DIV12		0x00C0		// IOSC81.92MHz output Div 12
.define C_SYSCLK_81920KHz_DIV16		0x00E0		// IOSC81.92MHz output Div 16 --- Default Value
// Bit[4] : 32KHz Sleep Status
.define	C_Sleep_IOSC32K_Status		0x0010
.define	C_Sleep_IOSC32K_SLP_Off		0x0000
.define	C_Sleep_IOSC32K_SLP_Work	0x0010		// Default
// Bit[3] : Reserved
// Bit[2] : IOSC32K Calibration Enable
.define	C_IOSC32K_Cal_Enable		0x0004
.define	C_IOSC32K_Cal_Disable		0x0000
// Bit[1] : IOSC32K Calibration Ready
.define	C_IOSC32K_Cal_Ready			0x0002
.define	C_IOSC32K_Cal_NotReady		0x0000
// Bit[0] : IOSC32K Calibration Status
.define	C_IOSC32K_Cal_Status		0x0001
.define	C_IOSC32K_Cal_Fail			0x0000
.define	C_IOSC32K_Cal_Pass			0x0001


// P_System_Sleep (0x3036)
.define C_System_Sleep				0x5555
// P_System_Reset (0x3031)
.define C_Software_Reset			0x5555
// P_TimeBase_Clear (0x3033)
.define	C_TimeBase_Clear			0x5555			// Write any value to clear
// P_Watchdog_Clear (0x3034)
.define	C_Watchdog_Clear			0x5555

//====================================================================================
// P_Reset_LVD_Ctrl (0x3032)
//====================================================================================
// Bit[15]
.define C_Watchdog_Reset_Flag		0x8000		// Flag
// Bit[14]
.define C_Software_Reset_Flag		0x4000		// Flag
// Bit[13]
.define C_Wathcdog_Reset_Err_Flag	0x2000		// Flag
// Bit[12]: Reserve
// Bit[11]
.define C_LVD_Status_Flag			0x0800		// Flag
// Bit[10:2] : Reserved
// Bit[1:0] : LVD_Ctrl
.define	C_LVD_Ctrl					0x0003
.define	C_LVD_Ctrl_2D4V				0x0003
.define	C_LVD_Ctrl_2D6V				0x0002
.define	C_LVD_Ctrl_2D8V				0x0001
.define	C_LVD_Ctrl_3D2V				0x0000			// Default Value
//====================================================================================
// P_Wait_Ctrl (0x3035)
//====================================================================================
// Bit[15:3] : Reserved
// Bit[2:0] : Wait State Value
.define	C_Wait_State_Reg			0x0007
.define C_Wait_State_1Cycles1		0x0000
.define C_Wait_State_1Cycles2		0x0001
.define C_Wait_State_2Cycles		0x0002
.define C_Wait_State_3Cycles		0x0003			// Default Value
.define C_Wait_State_4Cycles		0x0004
.define C_Wait_State_5Cycles		0x0005
.define C_Wait_State_6Cycles		0x0006
.define C_Wait_State_7Cycles		0x0007
//
//====================================================================================
// P_Cache_Ctrl (0x3039)
//====================================================================================
// Bit[15:2] : Reserved
// Bit[1] : Cache Clear
.define C_Cache_Clear			0x0002
// Bit[0] : Cache Enable/Disable
.define C_Cache_Disable			0x0000
.define C_Cache_Enable			0x0001

//====================================================================================
// P_AUDIO_Ctrl2 (0x3040)
//====================================================================================
// Bit[12] : Scaler Enable
.define	C_AUDIO_Scaler_Disable			0x0000
.define	C_AUDIO_Scaler_Enable			0x1000
// Bit[11] : Ch2_Half_Vol
.define	C_AUD_CH2_Half_Vol_Disable		0x0000
.define	C_AUD_CH2_Half_Vol_Enable		0x0800
// Bit[10] : DAC CH2 UpSample Enable
.define	C_AUD_CH2_Up_Sample_Disable		0x0000
.define	C_AUD_CH2_Up_Sample_Enable		0x0400
// Bit[9:8] : DAC CH2 Timer Select
.define C_AUD_CH2_TMR_Sel				0x0300
.define C_AUD_CH2_TMR_Sel_Manual		0x0000
.define C_AUD_CH2_TMR_Sel_TimerA		0x0100
.define C_AUD_CH2_TMR_Sel_TimerB		0x0200
.define C_AUD_CH2_TMR_Sel_TimerC		0x0300
//Bit[5]: AUDIO auto detect AUDN Read flag
.define C_AUD_Detect_PWM				0x0020
.define C_AUD_Detect_DAC				0x0000
//Bit[4]: AUDPWM connectting type detect
.define C_AUD_Detect_Disable			0x0000
.define C_AUD_Detect_Enable 			0x0010
// Bit[3] : Ch1_Half_Vol
.define	C_AUD_CH1_Half_Vol_Disable		0x0000
.define	C_AUD_CH1_Half_Vol_Enable		0x0008
// Bit[2] : DAC CH1 UpSample Enable
.define	C_AUD_CH1_Up_Sample_Disable		0x0000
.define	C_AUD_CH1_Up_Sample_Enable		0x0004
// Bit[1:0] : DAC CH1 Timer Select
.define C_AUD_CH1_TMR_Sel				0x0003
.define C_AUD_CH1_TMR_Sel_Manual		0x0000
.define C_AUD_CH1_TMR_Sel_TimerA		0x0001
.define C_AUD_CH1_TMR_Sel_TimerB		0x0002
.define C_AUD_CH1_TMR_Sel_TimerC		0x0003

//====================================================================================
// P_AUDIO_Ctrl1 (0x3043)
//====================================================================================
//Bit[15]: Input Data inverse
.define	C_AUDIO_uData			0x8000
.define C_AUDIO_sData			0x0000
//Bit[14:11]: Reserve
//Bit[10]: AUDIO IDAC Gain Control Enable/Disable
.define C_AUDIO_DAC_Gain_Disable		0x0000
.define C_AUDIO_DAC_Gain_Enable 		0x0200
//Bit[9]: AUDIO IDAC Enable/Disable
.define C_AUDIO_DAC_Disable		0x0000
.define C_AUDIO_DAC_Enable 		0x0200
//Bit[8]: AUDIO PWM Enable/Disable
.define C_AUDIO_PWM_Disable		0x0000
.define C_AUDIO_PWM_Enable 		0x0100
//Bit[7:6]: Mute_Ctrl
.define C_MuteControl_Sel		0x00C0
.define C_MuteControl_Lv0		0x0000
.define C_MuteControl_Lv1		0x0040
.define C_MuteControl_Lv2		0x0080
.define C_MuteControl_Lv3		0x00C0
// Bit[5:0]:Audio Gain Select
.define C_AUDIO_Gain_Sel		0x003F
.define C_AUDIO_Gain_LV0		0x0000
.define C_AUDIO_Gain_LV1		0x0005
.define C_AUDIO_Gain_LV2		0x0006
.define C_AUDIO_Gain_LV3		0x0007
.define C_AUDIO_Gain_LV4		0x0008
.define C_AUDIO_Gain_LV5		0x0009
.define C_AUDIO_Gain_LV6		0x000A
.define C_AUDIO_Gain_LV7		0x000B
.define C_AUDIO_Gain_LV8		0x000C
.define C_AUDIO_Gain_LV9		0x000D
.define C_AUDIO_Gain_LV10		0x000E
.define C_AUDIO_Gain_LV11		0x000F


//====================================================================================
// P_INT_Ctrl (0x3050)
// P_INT_Status (0x3051)
// P_FIQ_Sel (0x3052)
//====================================================================================
// Bit[15:0] : All Interrupt Vector
.define C_IRQ0_TMA					0x8000
.define C_IRQ1_TMB					0x4000
.define C_IRQ2_TMC					0x2000
.define C_IRQ3_ADC					0x0800
.define C_IRQ3_Illegal				0x0400
.define C_IRQ3_SPI2					0x0100
.define C_IRQ3_SPI  				0x0080
.define C_IRQ4_KEY					0x0010
.define C_IRQ5_EXT1					0x0002
.define C_IRQ5_EXT2					0x0001

.define C_IRQ0_TMA_NUM				15
.define C_IRQ1_TMB_NUM				14
.define C_IRQ2_TMC_NUM				13
.define C_IRQ3_ADC_NUM				11
.define C_IRQ3_Illegal_NUM			10
.define C_IRQ3_SPI2_NUM				8
.define C_IRQ3_SPI_NUM 				7
.define C_IRQ4_KEY_NUM				4
.define C_IRQ5_EXT1_NUM				1
.define C_IRQ5_EXT2_NUM				0

//====================================================================================
// P_INT2_Ctrl (0x3053)
// P_INT2_Status (0x3054)
// P_FIQ2_Sel (0x3055)
//====================================================================================
// Bit[15:0] : All Interrupt Vector
.define C_IRQ6_CTSTMA				0x1000
.define C_IRQ6_CTSTMB				0x0800
.define C_IRQ6_4096Hz				0x0400
.define C_IRQ6_2048Hz				0x0200
.define C_IRQ6_512Hz				0x0100
.define C_IRQ7_STACK                0x0020
.define C_IRQ7_CPURX				0x0010
.define C_IRQ7_UART					0x0008
.define C_IRQ7_64Hz					0x0004
.define C_IRQ7_16Hz					0x0002
.define C_IRQ7_2Hz					0x0001

.define C_IRQ6_CTSTMA_NUM			12
.define C_IRQ6_CTSTMB_NUM			11
.define C_IRQ6_4096Hz_NUM			10
.define C_IRQ6_2048Hz_NUM			9
.define C_IRQ6_512Hz_NUM			8
.define C_IRQ7_STACK_NUM			5
.define C_IRQ7_CPURX_NUM			4
.define C_IRQ7_UART_NUM				3
.define C_IRQ7_64Hz_NUM				2
.define C_IRQ7_16Hz_NUM				1
.define C_IRQ7_2Hz_NUM				0


//====================================================================================
// P_SPI_Ctrl (0x30E0)
// P_SPI2_Ctrl (0x3090)
//====================================================================================
// Bit[15] : SPI Enable
.define C_SPI_Disable				0x0000
.define C_SPI_Enable				0x8000
// Bit[14] : SPI Auto Enable				// ----------- Only For SPI1 -----------
.define	C_SPI_Auto_Disable			0x0000
.define	C_SPI_Auto_Enable			0x4000
// Bit[13] : Loop Back Mode Selection		// ----------- Only For SPI2 -----------
.define	C_SPI_LBM_Normal			0x0000
.define	C_SPI_LBM_Enable			0x2000
// Bit[12] : SPI CS Control by GPIO/SPI Hardware
.define C_SPI_CS					0x1000
.define	C_SPI_CS_GPIO				0x0000	// Set CS_Pin as GPIO, Control by Program (User need to set IO Configuration as Output)
.define	C_SPI_CS_SPI				0x1000	// Set CS_Pin as SPI_CS, Control by Hardware SPI
// Bit[11] : SPI Reset
.define C_SPI_Reset					0x0800
// Bit[10:9] : Multi-IO mode				// ----------- Only For SPI1 -----------
.define C_SPI_MultiIO_Sel			0x0600	// Device Pin Description
.define C_SPI_MultiIO_Sel_1IO		0x0000	// SDI
.define C_SPI_MultiIO_Sel_2IO		0x0200	// SDI, SDO
.define C_SPI_MultiIO_Sel_4IO		0x0400	// SDI, SDO, WP, SIO3
// Bit[8] : SPI Mode
.define	C_SPI_Mode					0x0100
.define C_MasterMode				0x0000
.define C_SlaveMode  				0x0100
// Bit[7] : Reserved
// Bit[6] : Double Transfer Rate mode		// ----------- Only For SPI1 -----------
.define C_SPI_DTR_Disable			0x0000
.define C_SPI_DTR_Enable			0x0040
// Bit[5] : SPI Clock Phase
.define C_SPI_Clock_Phase			0x0020
.define C_SPI_Clock_Phase_Normal	0x0000
.define C_SPI_Clock_Phase_Shift		0x0020
// Bit[4] : SPI Clock Polarity
.define	C_SPI_Clock_Pol				0x0010
.define C_SPI_Clock_Pol_Normal		0x0000
.define C_SPI_Clock_Pol_Inverse		0x0010
// Bit[3] : SPI module busy Flag			// ----------- Only For SPI1 -----------
.define C_SPI_Module_Busy_Flag		0x0008
// Bit[2:0] : Master Mode clock selection :	// ----------- Only For SPI1 -----------
.define C_SPI1_SCK_SEL				0x0007
.define C_SPI1_SCK_SYSCLK			0x0000
.define C_SPI1_SCK_SYSCLK_Div_2		0x0001
.define C_SPI1_SCK_SYSCLK_Div_3		0x0002
.define C_SPI1_SCK_SYSCLK_Div_4		0x0003
.define C_SPI1_SCK_SYSCLK_Div_5		0x0004
.define C_SPI1_SCK_SYSCLK_Div_6		0x0005
.define C_SPI1_SCK_SYSCLK_Div_7		0x0006
.define C_SPI1_SCK_SYSCLK_Div_16	0x0007
// Bit[2:0] : Master Mode clock selection :	// ----------- Only For SPI2 -----------
.define C_SPI_SCK_SEL				0x0007
.define C_SPI_SCK_SYSCLK_Div_2		0x0000
.define C_SPI_SCK_SYSCLK_Div_4		0x0001
.define C_SPI_SCK_SYSCLK_Div_8		0x0002
.define C_SPI_SCK_SYSCLK_Div_16		0x0003
.define C_SPI_SCK_SYSCLK_Div_32		0x0004
.define C_SPI_SCK_SYSCLK_Div_64		0x0005
.define C_SPI_SCK_SYSCLK_Div_128	0x0006

//====================================================================================
// P_SPI_TX_Status (0x30E1)
// P_SPI2_TX_Status (0x3091)
//====================================================================================
// Bit[15] : SPI TX interrupt flag
.define C_SPI_TX_INT_Flag			0x8000
// Bit[14] : SPI TX interrupt enable
.define C_SPI_TX_INT_DIS			0x0000
.define C_SPI_TX_INT_EN				0x4000
// Bit[13:8] : Reserved
// Bit[7:4] : SPI TX level setting
.define C_SPI_TX_FIFO_Level			0x0070		// 0 ~ 7
.define C_SPI_TX_FIFO_Level_0		0x0000
.define C_SPI_TX_FIFO_Level_1		0x0010
.define C_SPI_TX_FIFO_Level_2		0x0020
.define C_SPI_TX_FIFO_Level_3		0x0030
.define C_SPI_TX_FIFO_Level_4		0x0040
.define C_SPI_TX_FIFO_Level_5		0x0050
.define C_SPI_TX_FIFO_Level_6		0x0060
.define C_SPI_TX_FIFO_Level_7		0x0070
// Bit[3:0] : SPI TX Flag (read only) : Only 8 FIFOs  
.define	C_SPI_TX_Flag				0x0007		// 0 ~ 7

//====================================================================================
// P_SPI_RX_Status (0x30E3)
// P_SPI2_RX_Status (0x3093)
//====================================================================================
// Bit[15] : SPI RX interrupt flag
.define C_SPI_RX_INT_Flag			0x8000
// Bit[14] : SPI Rx interrupt enable
.define C_SPI_RX_INT_DIS			0x0000
.define C_SPI_RX_INT_EN				0x4000
// Bit[13:10] : Reserved
// Bit[9] : SPI RX buffer full (read only)
.define C_SPI_RX_BUF_Full			0x0200
// Bit[8] : SPI RX buffer overwrite (read only)
.define C_SPI_RX_BUF_OVER_ERROR		0x0100
// Bit[7:4] : SPI RX full level setting
.define C_SPI_RX_FIFO_Level			0x0070
.define C_SPI_RX_FIFO_Level_1		0x0000
.define C_SPI_RX_FIFO_Level_2		0x0010
.define C_SPI_RX_FIFO_Level_3		0x0020
.define C_SPI_RX_FIFO_Level_4		0x0030
.define C_SPI_RX_FIFO_Level_5		0x0040
.define C_SPI_RX_FIFO_Level_6		0x0050
.define C_SPI_RX_FIFO_Level_7		0x0060
.define C_SPI_RX_FIFO_Level_8		0x0070
// Bit[3:0] : SPI RX Flag (read only)
.define	C_SPI_RX_Flag				0x0007		// 0 ~ 7

//====================================================================================
// P_SPI_Misc (0x30E5)
// P_SPI2_Misc (0x3095)
//====================================================================================
// Bit[15:10] : Reserved
// Bit[9] : SPI FIFO Over Write Mode
.define	C_SPI_FIFO_Full_Mode		0x0200
.define	C_SPI_FIFO_Full_Skipped		0x0000
.define	C_SPI_FIFO_Full_Overwrite	0x0200
// Bit[8] : SPI FIFO Smart Mode Register
.define	C_SPI_FIFO_Normal_Mode		0x0000
.define	C_SPI_FIFO_Smart_Mode		0x0100
// Bit[7:5] : Reserved
// Bit[4] : SPI Controller Busy Flag
.define	C_SPI_Busy_Flag				0x0010
// Bit[3] : Receive FIFO Full Flag
.define	C_SPI_RX_Full_Flag			0x0008
// Bit[2] : Receive FIFO Empty Flag
.define	C_SPI_RX_NonEmpty_Flag		0x0004
// Bit[1] : Transmit FIFO Not Full Flag
.define	C_SPI_TX_NonFull_Flag		0x0002
// Bit[0] : Transmit FIFO Empty Flag
.define	C_SPI_TX_Empty_Flag			0x0001

//====================================================================================
// P_SPI_Man_Ctrl (0x30E6)
//====================================================================================
// Bit[15:2] : Reserved
// Bit[1] : SPI Manual mode CSB ---> for CS_Pin control by SPI_CS (P_SPI_Ctrl[7] = 1)
.define C_SPI_Manual_CS_Low			0x0000
.define C_SPI_Manual_CS_High		0x0002	// DI, DO as Tri-state
// Bit[0] : SPI Manual mode output enable ---> for Multi IO Used
.define C_SPI_Manual_Input			0x0000
.define C_SPI_Manual_Output			0x0001

//====================================================================================
// P_SPI_Auto_Ctrl (0x30E7)
//====================================================================================
// Bit[15] : SPI Address Length Mode (3Bytes or 4Bytes)
.define C_SPI_Addr_Len_Mode				0x8000
.define C_SPI_Addr_Len_Mode_3Bytes		0x0000
.define C_SPI_Addr_Len_Mode_4Bytes		0x8000
// Bit[14] : SPI Address Mode 1-IO or Multi-IO ( For SPI Flash Auto Mode )
.define C_SPI_AddrMode_1IO				0x4000
.define C_SPI_AddrMode_MultiIO			0x0000
.define C_SPI_AddrMode					0x4000
// Bit[13] : Auto program mode
.define C_SPI_Auto_Program_Disable		0x0000
.define C_SPI_Auto_Program_Enable		0x2000
// Bit[12] : Auto enhancement mode
.define C_SPI_Auto_Enhancement_Disable	0x0000
.define C_SPI_Auto_Enhancement_Enable	0x1000
// Bit[11:8] : Auto Dummy Cycle
.define C_SPI_Auto_Dummy_Cycle			0x0F00
.define C_SPI_Auto_Dummy_Cycle_0		0x0000
.define C_SPI_Auto_Dummy_Cycle_1		0x0100
.define C_SPI_Auto_Dummy_Cycle_2		0x0200
.define C_SPI_Auto_Dummy_Cycle_3		0x0300
.define C_SPI_Auto_Dummy_Cycle_4		0x0400
.define C_SPI_Auto_Dummy_Cycle_5		0x0500
.define C_SPI_Auto_Dummy_Cycle_6		0x0600
.define C_SPI_Auto_Dummy_Cycle_7		0x0700
.define C_SPI_Auto_Dummy_Cycle_8		0x0800
.define C_SPI_Auto_Dummy_Cycle_9		0x0900
.define C_SPI_Auto_Dummy_Cycle_10		0x0A00
.define C_SPI_Auto_Dummy_Cycle_11		0x0B00
.define C_SPI_Auto_Dummy_Cycle_12		0x0C00
.define C_SPI_Auto_Dummy_Cycle_13		0x0D00
.define C_SPI_Auto_Dummy_Cycle_14		0x0E00
.define C_SPI_Auto_Dummy_Cycle_15		0x0F00
// Bit[7:0] : Auto Command
.define C_SPI_Auto_Command				0x00FF
// --------- For GPR25L162B  ---------
.define C_SPI_Read_CMD_1IO				0x0003
.define C_SPI_Read_CMD_2IO				0x003B
.define C_SPI_Write_CMD_1IO				0x0002
// --------- For GPR25L1284E --------- 
//.define C_SPI_Read_CMD_1IO			0x0003
.define C_SPI_Read_CMD_2IOM				0x00BB
.define C_SPI_Read_CMD_4IOM				0x00EB
.define C_SPI_Read_CMD_DTR_2IOM			0x00BD
.define C_SPI_Read_CMD_DTR_4IOM			0x00ED
//.define C_SPI_Write_CMD_1IO			0x0002
.define C_SPI_Write_CMD_4IOM			0x0038


//====================================================================================
// P_SPI_PRGM_BC (0x30E8)
//====================================================================================
// Bit[15:8] : Reserved
// Bit[7:0] : SPI Program Byte Count
.define C_SPI_Program_Byte_CNT			0x00FF

//====================================================================================
// P_SPI_Bank (0x30E9)
//====================================================================================
// Bit[15:5] : Reserved
// Bit[4:0] : SPI Program Bank
.define C_SPI_Program_Bank				0x001F			// 1M-word/perbank

//====================================================================================
// P_SPI_Auto_Setting (0x30EA)
//====================================================================================
// Bit[15] : SPI High Drving Enable/Disable
.define C_SPI_High_Driving				0x8000
.define C_SPI_High_Driving_Enable		0x8000
.define C_SPI_High_Driving_Disable		0x0000
// Bit[14:13] : Reserved
// Bit[12] : Rx Delay Time
.define C_SPI_RX_Delay_1Clcok			0x1000
// Bit[11:8] : Rx Delay Time
.define C_SPI_RX_Delay_Time				0x0F00
.define C_SPI_RX_Delay_0Unit			0x0000
.define C_SPI_RX_Delay_1Unit			0x0100
.define C_SPI_RX_Delay_2Unit			0x0200
.define C_SPI_RX_Delay_3Unit			0x0300
.define C_SPI_RX_Delay_4Unit			0x0400
.define C_SPI_RX_Delay_5Unit			0x0500
.define C_SPI_RX_Delay_6Unit			0x0600
.define C_SPI_RX_Delay_7Unit			0x0700
.define C_SPI_RX_Delay_8Unit			0x0800
.define C_SPI_RX_Delay_9Unit			0x0900
.define C_SPI_RX_Delay_10Unit			0x0A00
.define C_SPI_RX_Delay_11Unit			0x0B00
.define C_SPI_RX_Delay_12Unit			0x0C00
.define C_SPI_RX_Delay_13Unit			0x0D00
.define C_SPI_RX_Delay_14Unit			0x0E00
.define C_SPI_RX_Delay_15Unit			0x0F00
// Bit[7:6] : Reserved
// Bit[5] : SPI 4IO Auto Enhance Dummy Pattern
.define	C_SPI_Auto_Dummy_Default		0x0000		// Default
.define	C_SPI_Auto_Dummy_A5H			0x0020
// Bit[4] : SPI 4IO Auto SIO2/SIO3 config
.define	C_SPI_Auto_SIO2SIO3_Floating	0x0000		// Default
.define	C_SPI_Auto_SIO2SIO3_OutputHigh	0x0010
// Bit[3:0] : SPI Auto CS Wait
.define C_SPI_CS_DeselectTime_Sel			0x000F
.define C_SPI_CS_DeselectTime_3Cycles		0x0000		// Default
.define C_SPI_CS_DeselectTime_3Cycles1		0x0001
.define C_SPI_CS_DeselectTeim_4Cycles		0x0002
.define C_SPI_CS_DeselectTime_5Cycles		0x0003
.define C_SPI_CS_DeselectTeim_6Cycles		0x0004
.define C_SPI_CS_DeselectTime_7Cycles		0x0005
.define C_SPI_CS_DeselectTeim_8Cycles		0x0006
.define C_SPI_CS_DeselectTime_9Cycles		0x0007
.define C_SPI_CS_DeselectTeim_10Cycles		0x0008
.define C_SPI_CS_DeselectTime_11Cycles		0x0009
.define C_SPI_CS_DeselectTeim_12Cycles		0x000A
.define C_SPI_CS_DeselectTeim_13Cycles		0x000B
.define C_SPI_CS_DeselectTime_14Cycles		0x000C
.define C_SPI_CS_DeselectTeim_15Cycles		0x000D
.define C_SPI_CS_DeselectTeim_16Cycles		0x000E
.define C_SPI_CS_DeselectTime_17Cycles		0x000F

//====================================================================================
// P_SPI_RX_ICE (0x30EF)
//====================================================================================
// Bit[15:1] : Reserved
// Bit[0] : ICE RX FIFO Enable
.define C_ICE_RX_FIFO_Disable			0x0000
.define C_ICE_RX_FIFO_Enable			0x0001

//====================================================================================
// P_ADC_Ctrl (0x3070)
//====================================================================================
// Bit[15] : ADC busy (read only)
.define C_ADC_Busy						0x8000
// Bit[14] : Auto scan busy (read only)
.define C_ADC_Auto_Scan_Busy			0x4000
// Bit[13:12] : Timer select for auto scan mode
.define C_ADC_Manual					0x0000
.define C_ADC_Timer_A					0x1000
.define C_ADC_Timer_B					0x2000
.define C_ADC_Timer_C					0x3000
// Bit[11:8] : ADC manual mode channel setting
.define C_ADC_Manual_Sel				0x0F00
.define C_ADC_Manual_AN0				0x0000
.define C_ADC_Manual_AN1				0x0100
.define C_ADC_Manual_AN2				0x0200
.define C_ADC_Manual_AN3				0x0300
.define C_ADC_Manual_AN4				0x0400
.define C_ADC_Manual_AN5				0x0500
.define C_ADC_Manual_AN6				0x0600
.define C_ADC_Manual_AN7				0x0700
.define C_ADC_Manual_AN8				0x0800
.define C_ADC_Manual_AN9				0x0900
.define C_ADC_Manual_AN10				0x0A00		// V50
.define C_ADC_Manual_AN11				0x0B00		// V15
// Bit[7:6] : Reserve
// Bit[5:4] : ADC clock setting
.define C_ADC_CLK_Sel					0x0030
.define C_ADC_CLK_SYSCLK_Div_16			0x0000
.define C_ADC_CLK_SYSCLK_Div_24			0x0000
.define C_ADC_CLK_SYSCLK_Div_32			0x0010
.define C_ADC_CLK_SYSCLK_Div_64			0x0020
.define C_ADC_CLK_SYSCLK_Div_128		0x0030
// Bit[3] : Reserve
// Bit[2] : ADC Enable 
.define	C_ADC_Disable					0x0000
.define	C_ADC_Enable					0x0004
// Bit[1:0] : Conversion Cycle Select
.define	C_ADC_Conv_Cycle				0x0003
.define	C_ADC_Conv_Cyc_8				0x0000	// Default
.define	C_ADC_Conv_Cyc_16				0x0001
.define	C_ADC_Conv_Cyc_32				0x0002
.define	C_ADC_Conv_Cyc_64				0x0003

//====================================================================================
// P_ADC_LineIn_BitCtrl (0x3072)
//====================================================================================
.define	C_ADC_Linein_Enable				0x03FF
.define	C_ADC_AN0_Enable				0x0001
.define	C_ADC_AN1_Enable				0x0002
.define	C_ADC_AN2_Enable				0x0004
.define	C_ADC_AN3_Enable				0x0008
.define	C_ADC_AN4_Enable				0x0010
.define	C_ADC_AN5_Enable				0x0020
.define	C_ADC_AN6_Enable				0x0040
.define	C_ADC_AN7_Enable				0x0080
.define	C_ADC_AN8_Enable				0x0100
.define	C_ADC_AN9_Enable				0x0200
.define	C_ADC_AN10_Enable				0x0000
.define	C_ADC_AN11_Enable				0x0000

//====================================================================================
// P_UART_Data (0x30C0)
//====================================================================================
// Bit[15:12] : Reserved
// Bit[11] : Overrun Error Flag
.define C_Data_Overrun_Error_Flag		0x0800		// Same as P_UART_RX_Err_Status bit 3
// Bit[10] : Break Error Flag
.define C_Data_Break_Error_Flag			0x0400		// Same as P_UART_RX_Err_Status bit 2
// Bit[9] : Parity Error Flag
.define C_Data_Parity_Error_Flag		0x0200		// Same as P_UART_RX_Err_Status bit 1
// Bit[8] : Frame Error Flag
.define C_Data_Frame_Error_Flag			0x0100		// Same as P_UART_RX_Err_Status bit 0
// Bit[7:0] UART Data (Read/Write)
.define C_UARTIrDA_Data					0x00FF

//====================================================================================
// P_UART_RX_Err_Status (0x30C1)
// --- Write '1' to Clear Flag
//====================================================================================
// Bit[15:4] : Reserved
// Bit[3] : Overrun Error Flag
.define C_Overrun_Error_Flag			0x0008
// Bit[2] : Break Error Flag
.define C_Break_Error_Flag				0x0004
// Bit[1] : Parity Error Flag
.define C_Parity_Error_Flag				0x0002
// Bit[0] : Frame Error Flag
.define C_Frame_Error_Flag				0x0001

//====================================================================================
// P_UARTIrDA_Ctrl (0x30C2)
//====================================================================================
// Bit[15] : Receiving Interrupt Enable
.define C_UART_RX_INT_Disable		0x0000
.define C_UART_RX_INT_Enable		0x8000
// Bit[14] : Transmitting Interrupt Enable
.define C_UART_TX_INT_Disable		0x0000
.define C_UART_TX_INT_Enable		0x4000
// Bit[13] : Receiving Timeout Interrupt Enable
.define C_UART_RX_Tout_INT_Disable	0x0000
.define C_UART_RX_Tout_INT_Enable	0x2000
// Bit[12] : UART Enable
.define C_UART_Disable				0x0000
.define C_UART_Enable				0x1000
// Bit[11] : UART Software Reset
.define C_UART_Reset				0x0800
// Bit[10:7] : Reserved
// Bit[6:5] : Data Length Definition
.define C_UART_Data_Length			0x0060
.define C_UART_Data_Length_5bit		0x0000
.define C_UART_Data_Length_6bit		0x0020
.define C_UART_Data_Length_7bit		0x0040
.define C_UART_Data_Length_8bit		0x0060
// Bit[4] : FIFO Enable
.define C_UART_FIFO_Disable			0x0000
.define C_UART_FIFO_Enable			0x0010
// Bit[3] : Stop Bit Size Selection
.define C_UART_Stop_Bit_Size		0x0008
.define C_UART_Stop_Size_1bit		0x0000
.define C_UART_Stop_Size_2bit		0x0008
// Bit[2] : Parity Selection
.define C_UART_Parity				0x0004
.define C_UART_Parity_Odd			0x0000
.define C_UART_Parity_Even			0x0004
// Bit[1] : Parity Eanble
.define C_UART_Parity_Disable		0x0000
.define C_UART_Parity_Enable		0x0002
// Bit[0] : Send Break Signal Eanble
.define C_UART_Send_Break_Disable	0x0000
.define C_UART_Send_Break_Enable	0x0001

//====================================================================================
// P_UART_BaudRate (0x30C3)
//====================================================================================
// Bit[15:0] : BaudRate Value , System Clock Value Define in Timer
.define C_BaudRate_Setting_460800   	(SystemClock / (16 * 460800))-1
.define C_BaudRate_Setting_230400   	(SystemClock / (16 * 230400))-1
.define C_BaudRate_Setting_115200   	(SystemClock / (16 * 115200))-1
.define C_BaudRate_Setting_76800	   	(SystemClock / (16 * 76800))-1
.define C_BaudRate_Setting_57600	   	(SystemClock / (16 * 57600))-1
.define C_BaudRate_Setting_38400	   	(SystemClock / (16 * 38400))-1
.define C_BaudRate_Setting_28800	   	(SystemClock / 16 / 28800)-1
.define C_BaudRate_Setting_19200	   	(SystemClock / 16 / 19200)-1
.define C_BaudRate_Setting_14400	   	(SystemClock / 16 / 14400)-1
.define C_BaudRate_Setting_9600	   		(SystemClock / 16 / 9600)-1
.define C_BaudRate_Setting_2400		   	(SystemClock / 16 / 2400)-1
.define C_BaudRate_Setting_1200		   	(SystemClock / 16 / 1200)-1

//====================================================================================
// P_UART_Status (0x30C4)
//====================================================================================
// Bit[15] : RX Interrupt Flag
.define C_UART_RX_INT_Flag			0x8000
// Bit[14] : TX Interrupt Flag
.define C_UART_TX_INT_Flag			0x4000
// Bit[13] : RX Timeout Interrupt Flag
.define C_UART_RX_Tout_INT_Flag		0x2000
// Bit[12:8] : Reserved
// Bit[7] : Transmit FIFO Empty Flag
.define C_UART_TX_FIFO_Empty_Flag	0x0080
// Bit[6] : Receive FIFO Full Flag
.define C_UART_RX_FIFO_Full_Flag	0x0040
// Bit[5] : Transmit FIFO Full Flag
.define C_UART_TX_FIFO_Full_Flag	0x0020
// Bit[4] : Receive FIFO Empty Flag
.define C_UART_RX_FIFO_Empty_Flag	0x0010
// Bit[3] : UART/IrDA Busy Flag
.define C_UART_Busy_Flag			0x0008
// Bit[2:0] : Reserved

//====================================================================================
// P_CTS_Ctrl0 (0x30D0)
//====================================================================================
// Bit[15:12] : CTS Reference Clock GPIO Selection
.define C_CTS_RefGPIO_CH_Sel				0xF000
.define C_CTS_RefGPIO_CH_Sel_IOX0			0x0000
.define C_CTS_RefGPIO_CH_Sel_IOX1			0x1000
.define C_CTS_RefGPIO_CH_Sel_IOX2			0x2000
.define C_CTS_RefGPIO_CH_Sel_IOX3			0x3000
.define C_CTS_RefGPIO_CH_Sel_IOX4			0x4000
.define C_CTS_RefGPIO_CH_Sel_IOX5			0x5000
.define C_CTS_RefGPIO_CH_Sel_IOX6			0x6000
.define C_CTS_RefGPIO_CH_Sel_IOX7			0x7000
.define C_CTS_RefGPIO_CH_Sel_IOX8			0x8000
.define C_CTS_RefGPIO_CH_Sel_IOX9			0x9000
.define C_CTS_RefGPIO_CH_Sel_IOX10			0xA000
.define C_CTS_RefGPIO_CH_Sel_IOX11			0xB000
.define C_CTS_RefGPIO_CH_Sel_IOX12			0xC000
.define C_CTS_RefGPIO_CH_Sel_IOX13			0xD000
.define C_CTS_RefGPIO_CH_Sel_IOX14			0xE000
.define C_CTS_RefGPIO_CH_Sel_IOX15			0xF000
// Bit[11] : Reserved
// Bit[10] : GPIO Port Selection for self-capacitance
.define C_CTS_RefGPIO_Port_Sel				0x0400
.define C_CTS_RefGPIO_Port_Sel_IOA			0x0000
.define C_CTS_RefGPIO_Port_Sel_IOB			0x0400
// Bit[9] : Reserved
// Bit[8] : CTS Reference Clock Enable/Disable
.define C_CTS_CTSRef_Enable					0x0100
.define C_CTS_CTSRef_Disable				0x0100
// Bit[2] : Auto/Manual Mode Selection
.define C_CTS_Mode_Sel						0x0004
.define C_CTS_Manual_Mode					0x0000
.define C_CTS_Auto_Mode						0x0004
// Bit[1] : Charge/Discharge current selection
.define C_CTS_Charge_Current_Setting		0x0002
.define C_CTS_Charge_Current_25uA			0x0000
.define C_CTS_Charge_Current_50uA			0x0002
// Bit[0] : Capacitive Touch Sensor Enable
.define C_CTS_Enable						0x0001
.define C_CTS_Disable						0x0000

//====================================================================================
// P_CTS_Ctrl1 (0x30D1)
//====================================================================================
// Bit[15:13] : Timer B Clock Select
.define C_CTS_TMB_Clock_Source_Sel		0xE000
.define C_CTS_TMB_Disable				0x0000		// Default
.define C_CTS_TMB_From_CTSRef			0x2000
.define C_CTS_TMB_SYSCLK				0x4000
.define C_CTS_TMB_SYSCLK_DIV2			0x6000
.define C_CTS_TMB_SYSCLK_DIV4			0x8000
.define C_CTS_TMB_SYSCLK_DIV8			0xA000
.define C_CTS_TMB_SYSCLK_DIV16			0xC000
.define C_CTS_TMB_SYSCLK_DIV32			0xE000
// Bit[12:10] : Timer A Clock Select
.define C_CTS_TMA_Clock_Source_Sel		0x1C00
.define C_CTS_TMA_Disable				0x0000
.define C_CTS_TMA_From_CTSModule		0x0400
.define C_CTS_TMA_SYSCLK				0x0800
.define C_CTS_TMA_SYSCLK_DIV2			0x0C00
.define C_CTS_TMA_SYSCLK_DIV4			0x1000
.define C_CTS_TMA_SYSCLK_DIV8			0x1400
.define C_CTS_TMA_SYSCLK_DIV16			0x1800
.define C_CTS_TMA_SYSCLK_DIV32			0x1C00
// Bit[9] : CTS TMA is dedicated for touch sensor
.define C_CTS_TMA_Dedicated				0x0200
.define C_CTS_TMA_Dedicated_for_CTS		0x0000
.define C_CTS_TMA_Dedicated_for_General	0x0200
// Bit[8] : CTS TMB is dedicated for touch sensor
.define C_CTS_TMB_Dedicated				0x0100
.define C_CTS_TMB_Dedicated_for_CTS		0x0000
.define C_CTS_TMB_Dedicated_for_General	0x0100
// Bit[7:4] : GPIO Channel Selection for self-capacitance
.define C_CTS_GPIO_CH_Sel				0x00F0
.define C_CTS_GPIO_CH_Sel_IOX0			0x0000
.define C_CTS_GPIO_CH_Sel_IOX1			0x0010
.define C_CTS_GPIO_CH_Sel_IOX2			0x0020
.define C_CTS_GPIO_CH_Sel_IOX3			0x0030
.define C_CTS_GPIO_CH_Sel_IOX4			0x0040
.define C_CTS_GPIO_CH_Sel_IOX5			0x0050
.define C_CTS_GPIO_CH_Sel_IOX6			0x0060
.define C_CTS_GPIO_CH_Sel_IOX7			0x0070
.define C_CTS_GPIO_CH_Sel_IOX8			0x0080
.define C_CTS_GPIO_CH_Sel_IOX9			0x0090
.define C_CTS_GPIO_CH_Sel_IOX10			0x00A0
.define C_CTS_GPIO_CH_Sel_IOX11			0x00B0
.define C_CTS_GPIO_CH_Sel_IOX12			0x00C0
.define C_CTS_GPIO_CH_Sel_IOX13			0x00D0
.define C_CTS_GPIO_CH_Sel_IOX14			0x00E0
.define C_CTS_GPIO_CH_Sel_IOX15			0x00F0
// Bit[3] : Reserved
// Bit[2] : GPIO Port Selection for self-capacitance
.define C_CTS_GPIO_Port_Sel				0x0004
.define C_CTS_GPIO_Port_Sel_IOA			0x0000
.define C_CTS_GPIO_Port_Sel_IOB			0x0004
// Bit[1] : Reserved
// Bit[0] : CTS Control for manual mode 
.define C_CTS_Start						0x0001		//start CTS_TMA/TMB counter and auto stop counting when CTS_TMA overflow
.define C_CTS_Stop						0x0000		//stop CTS_TMA/TMB counter in manual stop mode($20D0 b3=0)

//====================================================================================
// P_CTS_TMACNT (0x30D3)
// P_CTS_TMBCNT (0x30D5)
//====================================================================================
.define C_CTS_Count_Reload				0x0001		// write any value to reload count value from data

//====================================================================================
// Bits Definition
//====================================================================================
.define	C_Bit15							0x8000
.define	C_Bit14							0x4000
.define	C_Bit13							0x2000
.define	C_Bit12							0x1000
.define	C_Bit11							0x0800
.define	C_Bit10							0x0400
.define	C_Bit9							0x0200
.define	C_Bit8							0x0100
.define	C_Bit7							0x0080
.define	C_Bit6							0x0040
.define	C_Bit5							0x0020
.define	C_Bit4							0x0010
.define	C_Bit3							0x0008
.define	C_Bit2							0x0004
.define	C_Bit1							0x0002
.define	C_Bit0							0x0001

//
// IO Event Pin Definition Section
// - Based on IC I/O Configuration         
// - example ".define C_IOA3            0x30000003"
//   1st word:0x3000 = I/O Configuration Register Base
//   2st word:0x0003 = I/O Pin Number
//
.define C_IOA0            0x30000000
.define C_IOA1            0x30000001  
.define C_IOA2            0x30000002
.define C_IOA3            0x30000003
.define C_IOA4            0x30000004 
.define C_IOA5            0x30000005 
.define C_IOA6            0x30000006 
.define C_IOA7            0x30000007
.define C_IOA8            0x30000008
.define C_IOA9            0x30000009  
.define C_IOA10           0x3000000A
.define C_IOA11           0x3000000B
.define C_IOA12           0x3000000C 
.define C_IOA13           0x3000000D 
.define C_IOA14           0x3000000E 
.define C_IOA15           0x3000000F
.define C_IOB0            0x30040000
.define C_IOB1            0x30040001  
.define C_IOB2            0x30040002
.define C_IOB3            0x30040003
.define C_IOB4            0x30040004 
.define C_IOB5            0x30040005 
.define C_IOB6            0x30040006 
.define C_IOB7            0x30040007 
.define C_IOB8            0x30040008 
.define C_IOB9            0x30040009 
.define C_IOB10           0x3004000A 
.define C_IOB11           0x3004000B 
.define C_IOB12           0x3004000C
.define C_IOB13           0x3004000D 
.define C_IOB14           0x3004000E 
.define C_IOB15           0x3004000F
.define C_IOC0            0x30080000
.define C_IOC1            0x30080001  
.define C_IOC2            0x30080002
.define C_IOC3            0x30080003
.define C_IOC4            0x30080004 
.define C_IOC5            0x30080005 
.define C_IOC6            0x30080006 
.define C_IOC7            0x30080007 


.define C_PORT_DATA_IDX   0 
.define C_PORT_BUF_IDX    1
.define C_PORT_DIR_IDX    2
.define C_PORT_ATT_IDX    3

//====================================================================================
// Section Definition 
//====================================================================================
//**************************************************************************
// Contant Defintion Area (User do not change)
//**************************************************************************
.define C_A3400Pro_ORAM_StrAddr 		0x0010
.define C_A3400Pro_ORAM_Size 			0x001A
.define C_A1800_ORAM_StrAddr			0x002A
.define C_A1800_ORAM_Size				0x056F
.define C_MS02_ORAM_StrAddr				0x0599
.define C_MS02_ORAM_Size				0x0299

.define A3400Pro_LibCallback_Addr 		0x201800
.define A1800_LibCallback_Addr 			0x201880
.define MS02_LibCallback_Addr 			0x201900
.define RampUpDn_LibCallback_Addr 		0x201920

.endif
