//==================================================================
//文件名称：	checksum.asm		
//功能：	    检查IC，FLASH 里的数据是否正确。
//当前版本：			
//更新日期：			2015-12-26

//Body:					ce3400
//Written by:			Jamis

//修改记录：
//　2015-12-26
//  用常量 定义ROM的开始地址， 结束地址。
//==================================================================
.include GPCE1_CE3.inc

.external _Beep_Along
.external _BeepBeep_Along
.external F_WatchdogClear
.external F_AutoModeReadAWords
//**************************************************************************
// Contant Defintion Area
//**************************************************************************
.define C_Checksum_SPI_StartAddr   0x3000//开始地址 0x3000以前的数据是不加密的，加密ic和不加密ic读出来的会不一样，所以不方便校验。 byte
.define C_Checksum_SPI_EndAddr     0x582d6A //Memory Map  word

.define C_Checksum_SPI_StartAddrH   0x20+((C_Checksum_SPI_StartAddr/2)>>16)//开始地址高位
.define C_Checksum_SPI_StartAddrL   (C_Checksum_SPI_StartAddr/2)&0xffff//开始地址低位
.define C_Checksum_SPI_EndAddrH	    (C_Checksum_SPI_EndAddr>>16)//0x20+((C_Checksum_SPI_EndAddr/2)>>16)  //结束地址高位
.define C_Checksum_SPI_EndAddrL	    (C_Checksum_SPI_EndAddr&0xffff) //(C_Checksum_SPI_EndAddr/2)&0xffff //结束地址低位(此地址指向大小以word为单位，不是byte)


.external F_SACM_A1800_StartPlay
.code
.public _CheckSum_SPIFlash

T_MCU_Sum:
.dw 0xb845,0x359b		//R3-Low word, R4-Highword

//****************************************************************
// Function    : _CheckSum_SPI
// Description : 检查flash的校验和。
// Destory     : R1
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
_CheckSum_SPIFlash: .proc
	r3 = 0
	r4 = 0
	r1 = C_Checksum_SPI_StartAddrL
	r2 =C_Checksum_SPI_StartAddrH	
	ds=r2;
		r4= D:[r1]
		r3=r4 lsr 4
		r3=r3 lsr 4
		r4=r4&0xff
		r3+=r4
		r4=0
?L_ChecksumLoop:
	R1+=1;
	R2+=0,carry
	ds=r2;
	push r1,r2 to [sp]
	call F_AutoModeReadAWords//r2=D:[r1]
//	r1=r2 lsr 4
//	r1=r1 lsr 4
//	r2=r2&0xff
	r2=r1 lsr 4
	r2=r2 lsr 4
	r1=r1&0xff
	r1+=r2
	
	r3+=r1
	r4+=0,carry
	pop r1,r2 from [sp]

	cmp r1,C_Checksum_SPI_EndAddrL
//	jb ?L_ChecksumLoop
//	jbe ?L_ChecksumLoop
	jne ?L_ChecksumLoop
		push r1 to [SP];
		r1 = C_Watchdog_Clear
		[P_Watchdog_Clear] = r1
		pop r1 from [SP];
	cmp r2,C_Checksum_SPI_EndAddrH
	jne ?L_ChecksumLoop
	r2=seg16 T_MCU_Sum
	r1=offset T_MCU_Sum
	ds=r2
	r2=D:[r1++]
	
	push r2 to [SP];
	r2=D:[r1];	
	r1=r2 lsr 4
	r1=r1 lsr 4
	r2=r2&0xff
	r1+=r2
	pop r2 from [sp]
	
	push r2 to [SP];
	r2=r2&0xff
	r1+=r2
	pop r2 from [sp]
	r2=r2 lsr 4
	r2=r2 lsr 4
	r1+=r2
	
	r3 - = r1//rom sum - T_MCU_Sum,  R3--low word , R4--high word.
	r4-=0,carry         
	
	r1=seg16 T_MCU_Sum
	r2=offset T_MCU_Sum
	ds=r1
	r1=D:[r2++]
	push r1 to [sp]
	r1=D:[r2]
	pop r2 from [sp]
	cmp r3,r2				//set a break point here to copy the check sum volume
	jne ?L_ChecksumError
	cmp r4,r1
	jne ?L_ChecksumError
	jmp ?L_ChecksumOK
?L_ChecksumError:
	R1 = C_Watchdog_Clear
	[P_Watchdog_Clear] = R1
	
		//	call _MicBeep
		call F_SACM_A1800_StartPlay
		call _BeepBeep_Along;
		
	jmp ?L_ChecksumError
?L_ChecksumOK:	
retf
.endp

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
		R1 += 1 	
		
		push R1 to [sp]			// 
		call F_WatchdogClear
		pop R1 from [SP];
		cmp	r1,0xffff
		jnz  loop0 
		r2-=1
		jnz  loop0	
			
		pop R1, R5 from [SP];		
		retf
.endp		