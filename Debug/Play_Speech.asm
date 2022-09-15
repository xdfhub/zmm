	//  C:\PROGRA~2\GENERA~1\UNSPID~1.1\TOOLCH~2\be::1.1.3

	//-----------------------------------------------------------
	// Compiling D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Play_Speech.c (C:\Users\xdf\AppData\Local\Temp\ccB.3)
	//-----------------------------------------------------------

	//-----------------------------------------------------------
	// Options:
	//-----------------------------------------------------------
	//  Target:unSP, ISA:ISA_2.0, Pointer Size:32
	//  -O0	(Optimization level)
	//  -g2	(Debug level)
	//  -m1	(Report warnings)
	//  -mglobal-var-iram (Put global-var with no initval in .iram)
	//  -mpack-string-bigendian (Pack String with Big Endian)
	//-----------------------------------------------------------

.stabs "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34",100,0,3,Ltext0
.stabs "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Play_Speech.c",100,0,3,Ltext0

.code
Ltext0:
.stabs "int:t1=r1;-32768;32767;",128,0,0,0
.stabs "char:t2=r2;-32768;32767;",128,0,0,0
.stabs "long int:t3=r3;-2147483648;2147483647;",128,0,0,0
.stabs "unsigned int:t4=r4;0;65535;",128,0,0,0
.stabs "long unsigned int:t5=r5;0;4294967295;",128,0,0,0
.stabs "long long int:t6=r1;4;0;",128,0,0,0
.stabs "long long unsigned int:t7=r1;4;0;",128,0,0,0
.stabs "short int:t8=r8;-32768;32767;",128,0,0,0
.stabs "short unsigned int:t9=r9;0;65535;",128,0,0,0
.stabs "signed char:t10=r10;-32768;32767;",128,0,0,0
.stabs "unsigned char:t11=r11;0;65535;",128,0,0,0
.stabs "float:t12=r1;2;0;",128,0,0,0
.stabs "double:t13=r1;4;0;",128,0,0,0
.stabs "long double:t14=r1;4;0;",128,0,0,0
.stabs "complex float:t15=r1;4;0;",128,0,0,0
.stabs "complex double:t16=r1;8;0;",128,0,0,0
.stabs "complex long double:t17=r1;8;0;",128,0,0,0
.stabs "void:t18=18",128,0,0,0
.code
	     .stabs "Set_RandomVL_Index:F4",36,0,0,_Set_RandomVL_Index

	// Program Unit: Set_RandomVL_Index
.public	_Set_RandomVL_Index
_Set_RandomVL_Index: .proc	
	     .stabn 0xa6,0,0,6
	// temp1 = 3
	// temp2 = 2
	// Addr = 0
	// old_frame_pointer = 6
	// return_address = 7
	// lra_spill_temp_0 = 4
	// lra_spill_temp_1 = 5
// 128  //
// 129  //==================================================
// 130  
// 131  unsigned Set_RandomVL_Index(unsigned SphIndex)
// 132  {

LM1:
	     .stabn 68,0,132,LM1-_Set_RandomVL_Index
BB1_PU0:	// 0x0
// BB:1 cycle count: 12
	     push BP to [SP]          	// [0:132]  
	     SP = SP - 6              	// [2:132]  
	     BP = SP + 1              	// [3:132]  
LBB2:
// 133  	unsigned temp1,temp2;
// 134  	unsigned long Addr;
// 135  	if ((SphIndex>=0)&&(SphIndex<5))

LM2:
	     .stabn 68,0,135,LM2-_Set_RandomVL_Index
	     R4 = [BP + 9]            	// [5:135]  SphIndex
	     cmp R4, 4                	// [7:135]  
	     jbe BB2_PU0              	// [8:135]  
BB15_PU0:	// 0x7
// BB:15 cycle count: 3
	     goto L_0_8               	// [0:0]  
BB2_PU0:	// 0x9
// BB:2 cycle count: 22
// 136  	{
// 137  	    Addr = SphIndex * 4 + C_TableOtherSpeechAddr;

LM3:
	     .stabn 68,0,137,LM3-_Set_RandomVL_Index
	     R4 = [BP + 9]            	// [0:137]  SphIndex
	     R4 = R4 lsl 2            	// [2:137]  
	     R4 = R4 + 11500          	// [3:137]  
	     R3 = 0                   	// [5:137]  
	     [BP + 0] = R4            	// [6:137]  Addr
	     [BP + 1] = R3            	// [7:137]  Addr+1
// 138  	  //  temp1 = SPI_ReadAByte(Addr);
// 139  	  //  temp2 = SPI_ReadAByte(Addr+1);
// 140  	   // temp2+= (temp1<<8);				//how many speech
// 141  	   temp2 = SPI_ReadAWord_Big(Addr);

LM4:
	     .stabn 68,0,141,LM4-_Set_RandomVL_Index
	     SP = SP - 2              	// [8:141]  
	     R2 = [BP + 0]            	// [9:141]  Addr
	     R3 = [BP + 1]            	// [11:141]  Addr+1
	     R4 = SP + 1              	// [13:141]  
	     [R4++] = R2              	// [15:141]  
	     [R4] = R3                	// [17:141]  
	     call _SPI_ReadAWord_Big  	// [19:141]  SPI_ReadAWord_Big
BB3_PU0:	// 0x19
// BB:3 cycle count: 21
	     SP = SP + 2              	// [0:141]  
	     [BP + 2] = R1            	// [1:141]  temp2
// 142  	   
// 143  		temp2 = OtherSph_Random_Value[SphIndex]%temp2;

LM5:
	     .stabn 68,0,143,LM5-_Set_RandomVL_Index
	     R4 = [BP + 9]            	// [2:143]  SphIndex
	     R3 = 0                   	// [4:143]  
	     R1 = (_OtherSph_Random_Value)	// [5:143]  OtherSph_Random_Value
	     R2 = seg(_OtherSph_Random_Value)	// [7:143]  OtherSph_Random_Value
	     R4 = R4 + R1             	// [8:143]  
	     R3 = R3 + R2, Carry      	// [9:143]  
	     DS = R3                  	// [10:143]  
	     R3 = DS:[R4]             	// [11:143]  
	     R4 = [BP + 2]            	// [13:143]  temp2
	     push R4, R3 to [SP]      	// [15:143]  
	     call __modu1             	// [18:143]  _modu1
BB4_PU0:	// 0x28
// BB:4 cycle count: 9
	     SP = SP + 2              	// [0:0]  
	     [BP + 2] = R1            	// [1:0]  temp2
// 144  		
// 145  	    if(SphIndex ==Serie_Player)

LM6:
	     .stabn 68,0,145,LM6-_Set_RandomVL_Index
	     R4 = [BP + 9]            	// [2:145]  SphIndex
	     cmp R4, 3                	// [4:145]  
	     je BB5_PU0               	// [5:145]  
BB16_PU0:	// 0x2d
// BB:16 cycle count: 3
	     goto L_0_10              	// [0:0]  
BB5_PU0:	// 0x2f
// BB:5 cycle count: 19
// 146  	    {
// 147  	    	  
// 148  	    	  temp1 =Get_Registered_Player_Num(OtherSph_Random_Value[SphIndex]); 

LM7:
	     .stabn 68,0,148,LM7-_Set_RandomVL_Index
	     SP = SP - 1              	// [0:148]  
	     R4 = [BP + 9]            	// [1:148]  SphIndex
	     R3 = 0                   	// [3:148]  
	     R1 = (_OtherSph_Random_Value)	// [4:148]  OtherSph_Random_Value
	     R2 = seg(_OtherSph_Random_Value)	// [6:148]  OtherSph_Random_Value
	     R4 = R4 + R1             	// [7:148]  
	     R3 = R3 + R2, Carry      	// [8:148]  
	     DS = R3                  	// [9:148]  
	     R3 = DS:[R4]             	// [10:148]  
	     R4 = SP + 1              	// [12:148]  
	     [R4] = R3                	// [14:148]  
	     call _Get_Registered_Player_Num	// [16:148]  Get_Registered_Player_Num
BB6_PU0:	// 0x3e
// BB:6 cycle count: 9
	     SP = SP + 1              	// [0:148]  
	     [BP + 3] = R1            	// [1:148]  temp1
// 149  	    	  if(temp1 ==0)

LM8:
	     .stabn 68,0,149,LM8-_Set_RandomVL_Index
	     R4 = [BP + 3]            	// [2:149]  temp1
	     cmp R4, 0                	// [4:149]  
	     jne L_0_11               	// [5:149]  
BB7_PU0:	// 0x43
// BB:7 cycle count: 14
// 150  	    	  {
// 151  	    	  	OtherSph_Random_Value[SphIndex]=0x0f;

LM9:
	     .stabn 68,0,151,LM9-_Set_RandomVL_Index
	     R4 = [BP + 9]            	// [0:151]  SphIndex
	     R3 = 0                   	// [2:151]  
	     R1 = (_OtherSph_Random_Value)	// [3:151]  OtherSph_Random_Value
	     R2 = seg(_OtherSph_Random_Value)	// [5:151]  OtherSph_Random_Value
	     R4 = R4 + R1             	// [6:151]  
	     R3 = R3 + R2, Carry      	// [7:151]  
	     DS = R3                  	// [8:151]  
	     R3 = 15                  	// [9:151]  
	     DS:[R4] = R3             	// [10:151]  
// 152  	    	  	temp1 =4;//

LM10:
	     .stabn 68,0,152,LM10-_Set_RandomVL_Index
	     R4 = 4                   	// [12:152]  
	     [BP + 3] = R4            	// [13:152]  temp1
L_0_11:	// 0x4f
// BB:8 cycle count: 14
// 153  	    	  }
// 154  	    	  
// 155  	    	  temp1 =*P_TimerB_CNTR%temp1;//

LM11:
	     .stabn 68,0,155,LM11-_Set_RandomVL_Index
	     R3 = 12307               	// [0:155]  
	     R4 = 0                   	// [2:155]  
	     DS = R4                  	// [3:155]  
	     R3 = DS:[R3]             	// [4:155]  
	     R4 = [BP + 3]            	// [6:155]  temp1
	     push R4, R3 to [SP]      	// [8:155]  
	     call __modu1             	// [11:155]  _modu1
BB9_PU0:	// 0x58
// BB:9 cycle count: 25
	     [BP + 3] = R1            	// [0:0]  temp1
// 156  	    	  temp2=Select_Registered_Player_Random(temp1,OtherSph_Random_Value[SphIndex]);

LM12:
	     .stabn 68,0,156,LM12-_Set_RandomVL_Index
	     R3 = [BP + 3]            	// [1:156]  temp1
	     R4 = SP + 1              	// [3:156]  
	     [R4] = R3                	// [5:156]  
	     R4 = [BP + 9]            	// [7:156]  SphIndex
	     R3 = 0                   	// [9:156]  
	     R1 = (_OtherSph_Random_Value)	// [10:156]  OtherSph_Random_Value
	     R2 = seg(_OtherSph_Random_Value)	// [12:156]  OtherSph_Random_Value
	     R4 = R4 + R1             	// [13:156]  
	     R3 = R3 + R2, Carry      	// [14:156]  
	     DS = R3                  	// [15:156]  
	     R3 = DS:[R4]             	// [16:156]  
	     R4 = SP + 2              	// [18:156]  
	     [R4] = R3                	// [20:156]  
	     call _Select_Registered_Player_Random	// [22:156]  Select_Registered_Player_Random
BB10_PU0:	// 0x6b
// BB:10 cycle count: 42
	     SP = SP + 2              	// [0:156]  
	     [BP + 2] = R1            	// [1:156]  temp2
// 157  	    	  
// 158  	    	  OtherSph_Random_Value[SphIndex] &=~(1<<temp2);//~*P_TimerB_CNTR;

LM13:
	     .stabn 68,0,158,LM13-_Set_RandomVL_Index
	     R4 = 1                   	// [2:158]  
	     R3 = [BP + 2]            	// [3:158]  temp2
	     R3 = R3 & 15             	// [5:158]  
	     R4 = R4 lsl R3           	// [6:158]  
	     R4 = R4 ^ 65535          	// [7:158]  
	     [BP + 4] = R4            	// [9:158]  lra_spill_temp_0
	     R4 = [BP + 9]            	// [10:158]  SphIndex
	     R3 = 0                   	// [12:158]  
	     R1 = (_OtherSph_Random_Value)	// [13:158]  OtherSph_Random_Value
	     R2 = seg(_OtherSph_Random_Value)	// [15:158]  OtherSph_Random_Value
	     R4 = R4 + R1             	// [16:158]  
	     R3 = R3 + R2, Carry      	// [17:158]  
	     DS = R3                  	// [18:158]  
	     R3 = DS:[R4]             	// [19:158]  
	     R4 = [BP + 4]            	// [21:158]  lra_spill_temp_0
	     R4 = R4 & R3             	// [23:158]  
	     [BP + 5] = R4            	// [24:158]  lra_spill_temp_1
	     R4 = [BP + 9]            	// [25:158]  SphIndex
	     R3 = 0                   	// [27:158]  
	     R1 = (_OtherSph_Random_Value)	// [28:158]  OtherSph_Random_Value
	     R2 = seg(_OtherSph_Random_Value)	// [30:158]  OtherSph_Random_Value
	     R4 = R4 + R1             	// [31:158]  
	     R3 = R3 + R2, Carry      	// [32:158]  
	     DS = R3                  	// [33:158]  
	     R3 = [BP + 5]            	// [34:158]  lra_spill_temp_1
	     DS:[R4] = R3             	// [36:158]  
	     jmp L_0_9                	// [38:158]  
L_0_10:	// 0x8b
// BB:11 cycle count: 29
// 159  	    }
// 160  	    else
// 161  	    {	
// 162  			temp1 = OtherSph_Random_Value[SphIndex];

LM14:
	     .stabn 68,0,162,LM14-_Set_RandomVL_Index
	     R4 = [BP + 9]            	// [0:162]  SphIndex
	     R3 = 0                   	// [2:162]  
	     R1 = (_OtherSph_Random_Value)	// [3:162]  OtherSph_Random_Value
	     R2 = seg(_OtherSph_Random_Value)	// [5:162]  OtherSph_Random_Value
	     R4 = R4 + R1             	// [6:162]  
	     R3 = R3 + R2, Carry      	// [7:162]  
	     DS = R3                  	// [8:162]  
	     R4 = DS:[R4]             	// [9:162]  
	     [BP + 3] = R4            	// [11:162]  temp1
// 163  			temp1+= 1;

LM15:
	     .stabn 68,0,163,LM15-_Set_RandomVL_Index
	     R4 = [BP + 3]            	// [12:163]  temp1
	     R4 = R4 + 1              	// [14:163]  
	     [BP + 3] = R4            	// [15:163]  temp1
// 164  			OtherSph_Random_Value[SphIndex] = temp1;

LM16:
	     .stabn 68,0,164,LM16-_Set_RandomVL_Index
	     R4 = [BP + 9]            	// [16:164]  SphIndex
	     R3 = 0                   	// [18:164]  
	     R1 = (_OtherSph_Random_Value)	// [19:164]  OtherSph_Random_Value
	     R2 = seg(_OtherSph_Random_Value)	// [21:164]  OtherSph_Random_Value
	     R4 = R4 + R1             	// [22:164]  
	     R3 = R3 + R2, Carry      	// [23:164]  
	     DS = R3                  	// [24:164]  
	     R3 = [BP + 3]            	// [25:164]  temp1
	     DS:[R4] = R3             	// [27:164]  
L_0_9:	// 0xa2
// BB:12 cycle count: 8
// 165  	    }
// 166  		return temp2;

LM17:
	     .stabn 68,0,166,LM17-_Set_RandomVL_Index
	     R1 = [BP + 2]            	// [0:166]  temp2
	     SP = SP + 6              	// [2:166]  
	     pop BP, PC from [SP]     	// [3:166]  
L_0_8:	// 0xa5
// BB:13 cycle count: 7
// 167  	}
// 168  	else
// 169  	{
// 170  		return 0;

LM18:
	     .stabn 68,0,170,LM18-_Set_RandomVL_Index
	     R1 = 0                   	// [0:170]  
	     SP = SP + 6              	// [1:170]  
	     pop BP, PC from [SP]     	// [2:170]  
L_0_7:	// 0xa8
// BB:14 cycle count: 6
	     SP = SP + 6              	// [0:170]  
	     pop BP, PC from [SP]     	// [1:170]  
LBE2:
	.endp	
	     .stabs "SphIndex:p4",160,0,0,9
	     .stabn 192,0,0,LBB2-_Set_RandomVL_Index
	     .stabs "temp1:4",128,0,0,3
	     .stabs "temp2:4",128,0,0,2
	     .stabs "Addr:5",128,0,0,0
	     .stabn 224,0,0,LBE2-_Set_RandomVL_Index
LME1:
	     .stabf LME1-_Set_RandomVL_Index

.iram
	     .stabs "A1800_Flag:G4",32,0,0,_A1800_Flag
.public	_A1800_Flag
_A1800_Flag:	// 0x0
	.dw	0
	// end of initialization for A1800_Flag
	     .stabs "TwoKeyflag:G4",32,0,0,_TwoKeyflag
.public	_TwoKeyflag
_TwoKeyflag:	// 0x1
	.dw	0
	// end of initialization for TwoKeyflag
	     .stabs "PauseFlag:G4",32,0,0,_PauseFlag
.public	_PauseFlag
_PauseFlag:	// 0x2
	.dw	0
	// end of initialization for PauseFlag
	     .stabs "DAC1_Data_Temp:G4",32,0,0,_DAC1_Data_Temp
.public	_DAC1_Data_Temp
_DAC1_Data_Temp:	// 0x3
	.dw	0
	// end of initialization for DAC1_Data_Temp
	     .stabs "PlayQuestionflag:G4",32,0,0,_PlayQuestionflag
.public	_PlayQuestionflag
_PlayQuestionflag:	// 0x4
	.dw	0
	// end of initialization for PlayQuestionflag
	     .stabs "CheaterFlag:G4",32,0,0,_CheaterFlag
.public	_CheaterFlag
_CheaterFlag:	// 0x5
	.dw	0
	// end of initialization for CheaterFlag
	     .stabs "sp_offset:G4",32,0,0,_sp_offset
.public	_sp_offset
_sp_offset:	// 0x6
	.dw	0
	// end of initialization for sp_offset
.code
	     .stabs "PlayA1800_Other:F18",36,0,0,_PlayA1800_Other

	// Program Unit: PlayA1800_Other
.public	_PlayA1800_Other
_PlayA1800_Other: .proc	
	     .stabn 0xa6,0,0,4
	// Addr = 0
	// temp1 = 3
	// temp2 = 2
	// old_frame_pointer = 4
	// return_address = 5
// 176  //***********************************************************************
// 177  //return:KeyOFF
// 178  //***********************************************************************
// 179  void PlayA1800_Other(unsigned SpeechIndex)
// 180  {

LM19:
	     .stabn 68,0,180,LM19-_PlayA1800_Other
BB1_PU1:	// 0xaa
// BB:1 cycle count: 15
	     push BP to [SP]          	// [0:180]  
	     SP = SP - 4              	// [2:180]  
	     BP = SP + 1              	// [3:180]  
LBB3:
// 188  			 if(PassFlag)
// 189  			 	 return;
// 190  	#endif
// 191  		
// 192  		if(Sleepflag) 

LM20:
	     .stabn 68,0,192,LM20-_PlayA1800_Other
	     DS = seg(_Sleepflag)     	// [5:192]  Sleepflag
	     R4 = (_Sleepflag)        	// [6:192]  Sleepflag
	     R4 = DS:[R4]             	// [8:192]  
	     cmp R4, 0                	// [10:192]  
	     je L_1_11                	// [11:192]  
BB2_PU1:	// 0xb4
// BB:2 cycle count: 6
// 193  		      return ;

LM21:
	     .stabn 68,0,193,LM21-_PlayA1800_Other
	     SP = SP + 4              	// [0:193]  
	     pop BP, PC from [SP]     	// [1:193]  
L_1_11:	// 0xb6
// BB:3 cycle count: 10
// 194  		
// 195  		if(PauseFlag)

LM22:
	     .stabn 68,0,195,LM22-_PlayA1800_Other
	     DS = seg(_PauseFlag)     	// [0:195]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:195]  PauseFlag
	     R4 = DS:[R4]             	// [3:195]  
	     cmp R4, 0                	// [5:195]  
	     je L_1_12                	// [6:195]  
BB4_PU1:	// 0xbc
// BB:4 cycle count: 6
// 196  		  	 return;

LM23:
	     .stabn 68,0,196,LM23-_PlayA1800_Other
	     SP = SP + 4              	// [0:196]  
	     pop BP, PC from [SP]     	// [1:196]  
L_1_12:	// 0xbe
// BB:5 cycle count: 10
// 197  		
// 198  		
// 199  	   if(CheaterFlag)

LM24:
	     .stabn 68,0,199,LM24-_PlayA1800_Other
	     DS = seg(_CheaterFlag)   	// [0:199]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [1:199]  CheaterFlag
	     R4 = DS:[R4]             	// [3:199]  
	     cmp R4, 0                	// [5:199]  
	     je L_1_13                	// [6:199]  
BB6_PU1:	// 0xc4
// BB:6 cycle count: 6
// 200  		  	 return;

LM25:
	     .stabn 68,0,200,LM25-_PlayA1800_Other
	     SP = SP + 4              	// [0:200]  
	     pop BP, PC from [SP]     	// [1:200]  
L_1_13:	// 0xc6
// BB:7 cycle count: 10
// 201  
// 202  
// 203     if(Key_Event)

LM26:
	     .stabn 68,0,203,LM26-_PlayA1800_Other
	     DS = seg(_Key_Event)     	// [0:203]  Key_Event
	     R4 = (_Key_Event)        	// [1:203]  Key_Event
	     R4 = DS:[R4]             	// [3:203]  
	     cmp R4, 0                	// [5:203]  
	     je L_1_14                	// [6:203]  
BB8_PU1:	// 0xcc
// BB:8 cycle count: 6
// 204     	   return;      

LM27:
	     .stabn 68,0,204,LM27-_PlayA1800_Other
	     SP = SP + 4              	// [0:204]  
	     pop BP, PC from [SP]     	// [1:204]  
L_1_14:	// 0xce
// BB:9 cycle count: 22
// 205   
// 206     
// 207   	//LED_Ser_Init();
// 208      Addr = SpeechIndex * 4 + C_TableOtherSpeechAddr;

LM28:
	     .stabn 68,0,208,LM28-_PlayA1800_Other
	     R4 = [BP + 7]            	// [0:208]  SpeechIndex
	     R4 = R4 lsl 2            	// [2:208]  
	     R4 = R4 + 11500          	// [3:208]  
	     R3 = 0                   	// [5:208]  
	     [BP + 0] = R4            	// [6:208]  Addr
	     [BP + 1] = R3            	// [7:208]  Addr+1
// 209      
// 210      if(SPI_ReadAWord_Big(Addr) ==0)

LM29:
	     .stabn 68,0,210,LM29-_PlayA1800_Other
	     SP = SP - 2              	// [8:210]  
	     R2 = [BP + 0]            	// [9:210]  Addr
	     R3 = [BP + 1]            	// [11:210]  Addr+1
	     R4 = SP + 1              	// [13:210]  
	     [R4++] = R2              	// [15:210]  
	     [R4] = R3                	// [17:210]  
	     call _SPI_ReadAWord_Big  	// [19:210]  SPI_ReadAWord_Big
BB10_PU1:	// 0xde
// BB:10 cycle count: 6
	     SP = SP + 2              	// [0:210]  
	     cmp R1, 0                	// [1:210]  
	     jne L_1_15               	// [2:210]  
BB11_PU1:	// 0xe1
// BB:11 cycle count: 6
// 211      	return 0;

LM30:
	     .stabn 68,0,211,LM30-_PlayA1800_Other
	     SP = SP + 4              	// [0:211]  
	     pop BP, PC from [SP]     	// [1:211]  
L_1_15:	// 0xe3
// BB:12 cycle count: 10
// 212  //    temp1 = SPI_ReadAByte(Addr);
// 213  //    temp2 = SPI_ReadAByte(Addr+1);
// 214  //    temp2+= (temp1<<8);				//how many speech
// 215  //    temp2 = *P_TimerB_CNTR % temp2;	//get a random speech
// 216  	temp2 = Set_RandomVL_Index(SpeechIndex);

LM31:
	     .stabn 68,0,216,LM31-_PlayA1800_Other
	     SP = SP - 1              	// [0:216]  
	     R3 = [BP + 7]            	// [1:216]  SpeechIndex
	     R4 = SP + 1              	// [3:216]  
	     [R4] = R3                	// [5:216]  
	     call _Set_RandomVL_Index 	// [7:216]  Set_RandomVL_Index
BB13_PU1:	// 0xea
// BB:13 cycle count: 17
	     SP = SP - 1              	// [0:216]  
	     [BP + 2] = R1            	// [1:216]  temp2
// 217  //    RandomValue_Temp = temp2;
// 218  
// 219     temp1 = SPI_ReadAWord_Big(Addr+2);

LM32:
	     .stabn 68,0,219,LM32-_PlayA1800_Other
	     R3 = [BP + 0]            	// [2:219]  Addr
	     R4 = [BP + 1]            	// [4:219]  Addr+1
	     R3 = R3 + 2              	// [6:219]  
	     R4 = R4 + 0, Carry       	// [7:219]  
	     R2 = SP + 1              	// [8:219]  
	     [R2++] = R3              	// [10:219]  
	     [R2] = R4                	// [12:219]  
	     call _SPI_ReadAWord_Big  	// [14:219]  SPI_ReadAWord_Big
BB14_PU1:	// 0xf6
// BB:14 cycle count: 23
	     SP = SP + 1              	// [0:219]  
	     [BP + 3] = R1            	// [1:219]  temp1
// 220     temp1+= temp2;

LM33:
	     .stabn 68,0,220,LM33-_PlayA1800_Other
	     R4 = [BP + 3]            	// [2:220]  temp1
	     R4 = R4 + [BP + 2]       	// [4:220]  temp2
	     [BP + 3] = R4            	// [6:220]  temp1
// 221      
// 222     sp_offset = temp1;//xiang

LM34:
	     .stabn 68,0,222,LM34-_PlayA1800_Other
	     R3 = [BP + 3]            	// [7:222]  temp1
	     DS = seg(_sp_offset)     	// [9:222]  sp_offset
	     R4 = (_sp_offset)        	// [10:222]  sp_offset
	     DS:[R4] = R3             	// [12:222]  
// 223      
// 224     PlayA1800_Elements(temp1);

LM35:
	     .stabn 68,0,224,LM35-_PlayA1800_Other
	     R3 = [BP + 3]            	// [14:224]  temp1
	     R4 = SP + 1              	// [16:224]  
	     [R4] = R3                	// [18:224]  
	     call _PlayA1800_Elements 	// [20:224]  PlayA1800_Elements
BB15_PU1:	// 0x106
// BB:15 cycle count: 6
	     SP = SP + 5              	// [0:224]  
	     pop BP, PC from [SP]     	// [1:224]  
LBE3:
	.endp	
	     .stabs "SpeechIndex:p4",160,0,0,7
	     .stabn 192,0,0,LBB3-_PlayA1800_Other
	     .stabs "Addr:5",128,0,0,0
	     .stabs "temp1:4",128,0,0,3
	     .stabs "temp2:4",128,0,0,2
	     .stabn 224,0,0,LBE3-_PlayA1800_Other
LME2:
	     .stabf LME2-_PlayA1800_Other
.code
	     .stabs "Volume:F18",36,0,0,_Volume

	// Program Unit: Volume
.public	_Volume
_Volume: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
// 303  }
// 304  /***********************************************************************
// 305  **************************************************************************/
// 306  void Volume(unsigned int button)
// 307  {

LM36:
	     .stabn 68,0,307,LM36-_Volume
BB1_PU2:	// 0x108
// BB:1 cycle count: 11
	     push BP to [SP]          	// [0:307]  
	     BP = SP + 1              	// [2:307]  
// 308  	if(button ==MB_button)

LM37:
	     .stabn 68,0,308,LM37-_Volume
	     R4 = [BP + 3]            	// [4:308]  button
	     cmp R4, 4                	// [6:308]  
	     jne L_2_2                	// [7:308]  
BB2_PU2:	// 0x10e
// BB:2 cycle count: 10
// 309  	{
// 310  		 
// 311  		 if(gVolume>6)

LM38:
	     .stabn 68,0,311,LM38-_Volume
	     DS = seg(_gVolume)       	// [0:311]  gVolume
	     R4 = (_gVolume)          	// [1:311]  gVolume
	     R4 = DS:[R4]             	// [3:311]  
	     cmp R4, 6                	// [5:311]  
	     jbe L_2_3                	// [6:311]  
BB3_PU2:	// 0x114
// BB:3 cycle count: 11
// 312  		 	 gVolume--;

LM39:
	     .stabn 68,0,312,LM39-_Volume
	     DS = seg(_gVolume)       	// [0:312]  gVolume
	     R4 = (_gVolume)          	// [1:312]  gVolume
	     R4 = DS:[R4]             	// [3:312]  
	     R4 = R4 - 1              	// [5:312]  
	     DS = seg(_gVolume)       	// [6:312]  gVolume
	     R3 = (_gVolume)          	// [7:312]  gVolume
	     DS:[R3] = R4             	// [9:312]  
L_2_3:	// 0x11d
// BB:4 cycle count: 4

LM40:
	     .stabn 68,0,311,LM40-_Volume
	     jmp L_2_1                	// [0:311]  
L_2_2:	// 0x11e
// BB:5 cycle count: 10
// 314  		
// 315  	}
// 316     else
// 317     {
// 318     	    if(gVolume<10)

LM41:
	     .stabn 68,0,318,LM41-_Volume
	     DS = seg(_gVolume)       	// [0:318]  gVolume
	     R4 = (_gVolume)          	// [1:318]  gVolume
	     R4 = DS:[R4]             	// [3:318]  
	     cmp R4, 9                	// [5:318]  
	     ja L_2_4                 	// [6:318]  
BB6_PU2:	// 0x124
// BB:6 cycle count: 11
// 319     	       gVolume++;

LM42:
	     .stabn 68,0,319,LM42-_Volume
	     DS = seg(_gVolume)       	// [0:319]  gVolume
	     R4 = (_gVolume)          	// [1:319]  gVolume
	     R4 = DS:[R4]             	// [3:319]  
	     R4 = R4 + 1              	// [5:319]  
	     DS = seg(_gVolume)       	// [6:319]  gVolume
	     R3 = (_gVolume)          	// [7:319]  gVolume
	     DS:[R3] = R4             	// [9:319]  
L_2_4:	// 0x12d
L_2_1:	// 0x12d
// BB:7 cycle count: 10
// 320     }	
// 321  	  PlayA1800_Elements(SFX_Volume);

LM43:
	     .stabn 68,0,321,LM43-_Volume
	     SP = SP - 1              	// [0:321]  
	     R3 = 130                 	// [1:321]  
	     R4 = SP + 1              	// [3:321]  
	     [R4] = R3                	// [5:321]  
	     call _PlayA1800_Elements 	// [7:321]  PlayA1800_Elements
BB8_PU2:	// 0x135
// BB:8 cycle count: 6
	     SP = SP + 1              	// [0:321]  
	     pop BP, PC from [SP]     	// [1:321]  
	.endp	
	     .stabs "button:p4",160,0,0,3
LME3:
	     .stabf LME3-_Volume
.code
	     .stabs "Pause_Process:F4",36,0,0,_Pause_Process

	// Program Unit: Pause_Process
.public	_Pause_Process
_Pause_Process: .proc	
	     .stabn 0xa6,0,0,8
	// Blink_data_temp = 0
	// temp = 7
	// out_pauseflag = 1
	// time_temp = 2
	// temp_T_Countdowncnt = 3
	// key_active_temp = 4
	// volumeflag = 5
	// al800flag_temp = 6
	// old_frame_pointer = 8
	// return_address = 9
// 325  
// 326  /***********************************************************************
// 327  **************************************************************************/
// 328  unsigned int Pause_Process()
// 329  {

LM44:
	     .stabn 68,0,329,LM44-_Pause_Process
BB1_PU3:	// 0x137
// BB:1 cycle count: 63
	     push BP to [SP]          	// [0:329]  
	     SP = SP - 8              	// [2:329]  
	     BP = SP + 1              	// [3:329]  
LBB4:
// 330  
// 331  				      	//unsigned int Play_Con_temp=0;
// 332  						unsigned int Blink_data_temp=0;

LM45:
	     .stabn 68,0,332,LM45-_Pause_Process
	     R4 = 0                   	// [5:332]  
	     [BP + 0] = R4            	// [6:332]  Blink_data_temp
// 333  						unsigned int temp;
// 334  		                 
// 335  		                //unsigned int  Key_True_False_Temp =0;
// 336  
// 337  						unsigned int out_pauseflag =0;

LM46:
	     .stabn 68,0,337,LM46-_Pause_Process
	     R4 = 0                   	// [7:337]  
	     [BP + 1] = R4            	// [8:337]  out_pauseflag
// 338  		                
// 339  		      			unsigned int time_temp = TimeCnt;						

LM47:
	     .stabn 68,0,339,LM47-_Pause_Process
	     DS = seg(_TimeCnt)       	// [9:339]  TimeCnt
	     R4 = (_TimeCnt)          	// [10:339]  TimeCnt
	     R4 = DS:[R4]             	// [12:339]  
	     [BP + 2] = R4            	// [14:339]  time_temp
// 340  						//unsigned int temp_timeCnt_Speed = TimeCnt_Speed;     
// 341  						unsigned int temp_T_Countdowncnt =T_Countdowncnt;   

LM48:
	     .stabn 68,0,341,LM48-_Pause_Process
	     DS = seg(_T_Countdowncnt)	// [15:341]  T_Countdowncnt
	     R4 = (_T_Countdowncnt)   	// [16:341]  T_Countdowncnt
	     R4 = DS:[R4]             	// [18:341]  
	     [BP + 3] = R4            	// [20:341]  temp_T_Countdowncnt
// 342  						unsigned int key_active_temp =Key_activeflag;

LM49:
	     .stabn 68,0,342,LM49-_Pause_Process
	     DS = seg(_Key_activeflag)	// [21:342]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [22:342]  Key_activeflag
	     R4 = DS:[R4]             	// [24:342]  
	     [BP + 4] = R4            	// [26:342]  key_active_temp
// 343  						unsigned int volumeflag =0;

LM50:
	     .stabn 68,0,343,LM50-_Pause_Process
	     R4 = 0                   	// [27:343]  
	     [BP + 5] = R4            	// [28:343]  volumeflag
// 344  						unsigned int al800flag_temp = A1800_Flag;

LM51:
	     .stabn 68,0,344,LM51-_Pause_Process
	     DS = seg(_A1800_Flag)    	// [29:344]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [30:344]  A1800_Flag
	     R4 = DS:[R4]             	// [32:344]  
	     [BP + 6] = R4            	// [34:344]  al800flag_temp
// 347  						
// 348  						
// 349  //						temp_FiveSec_cnt = FiveSec_cnt;
// 350  
// 351                           Blink_data_temp = BlinkFlag_Data;

LM52:
	     .stabn 68,0,351,LM52-_Pause_Process
	     DS = seg(_BlinkFlag_Data)	// [35:351]  BlinkFlag_Data
	     R4 = (_BlinkFlag_Data)   	// [36:351]  BlinkFlag_Data
	     R4 = DS:[R4]             	// [38:351]  
	     [BP + 0] = R4            	// [40:351]  Blink_data_temp
// 352  						 BlinkFlag_Data =0;

LM53:
	     .stabn 68,0,352,LM53-_Pause_Process
	     R3 = 0                   	// [41:352]  
	     DS = seg(_BlinkFlag_Data)	// [42:352]  BlinkFlag_Data
	     R4 = (_BlinkFlag_Data)   	// [43:352]  BlinkFlag_Data
	     DS:[R4] = R3             	// [45:352]  
// 353                          
// 354  					
// 355                     	    Key_Event =0;

LM54:
	     .stabn 68,0,355,LM54-_Pause_Process
	     R3 = 0                   	// [47:355]  
	     DS = seg(_Key_Event)     	// [48:355]  Key_Event
	     R4 = (_Key_Event)        	// [49:355]  Key_Event
	     DS:[R4] = R3             	// [51:355]  
// 356                     	    
// 357                     	  if(A1800_Flag)

LM55:
	     .stabn 68,0,357,LM55-_Pause_Process
	     DS = seg(_A1800_Flag)    	// [53:357]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [54:357]  A1800_Flag
	     R4 = DS:[R4]             	// [56:357]  
	     cmp R4, 0                	// [58:357]  
	     je L_3_2                 	// [59:357]  
BB2_PU3:	// 0x16a
// BB:2 cycle count: 3
// 358                     	  {  
// 359                          SACM_A1800_Pause();    

LM56:
	     .stabn 68,0,359,LM56-_Pause_Process
	     call _SACM_A1800_Pause   	// [0:359]  SACM_A1800_Pause
BB3_PU3:	// 0x16c
// BB:3 cycle count: 13
// 360  					    DAC1_Data_Temp = (*P_AUDIO_CH1_Data)&0xfffc;

LM57:
	     .stabn 68,0,360,LM57-_Pause_Process
	     R3 = 12353               	// [0:360]  
	     R4 = 0                   	// [2:360]  
	     DS = R4                  	// [3:360]  
	     R4 = DS:[R3]             	// [4:360]  
	     R3 = R4 & 65532          	// [6:360]  
	     DS = seg(_DAC1_Data_Temp)	// [8:360]  DAC1_Data_Temp
	     R4 = (_DAC1_Data_Temp)   	// [9:360]  DAC1_Data_Temp
	     DS:[R4] = R3             	// [11:360]  
L_3_2:	// 0x177
// BB:4 cycle count: 3
// 361                     	  }
// 362  					    
// 363  //					    Play_Con_temp = Play_Con;
// 364  //					    Play_Con =0;
// 365  					    SP_RampDnDAC1();

LM58:
	     .stabn 68,0,365,LM58-_Pause_Process
	     call _SP_RampDnDAC1      	// [0:365]  SP_RampDnDAC1
BB5_PU3:	// 0x179
// BB:5 cycle count: 12
// 366  
// 367                           Key_TrueFlase_Buffer =0;

LM59:
	     .stabn 68,0,367,LM59-_Pause_Process
	     R3 = 0                   	// [0:367]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [1:367]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [2:367]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [4:367]  
// 368  //						 Key_True_False_Temp = Key_True+Key_False;
// 369  						 
// 370  						 TimeCnt=0;

LM60:
	     .stabn 68,0,370,LM60-_Pause_Process
	     R3 = 0                   	// [6:370]  
	     DS = seg(_TimeCnt)       	// [7:370]  TimeCnt
	     R4 = (_TimeCnt)          	// [8:370]  TimeCnt
	     DS:[R4] = R3             	// [10:370]  
L_3_3:	// 0x183
// BB:6 cycle count: 3
// 371  						 while(1)
// 372  						 	{
// 373  			                             WatchdogClear();

LM61:
	     .stabn 68,0,373,LM61-_Pause_Process
	     call _WatchdogClear      	// [0:373]  WatchdogClear
BB7_PU3:	// 0x185
// BB:7 cycle count: 10
// 374  
// 375  			                              if(Sleepflag) 

LM62:
	     .stabn 68,0,375,LM62-_Pause_Process
	     DS = seg(_Sleepflag)     	// [0:375]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:375]  Sleepflag
	     R4 = DS:[R4]             	// [3:375]  
	     cmp R4, 0                	// [5:375]  
	     je L_3_5                 	// [6:375]  
BB8_PU3:	// 0x18b
// BB:8 cycle count: 7
// 376  			                              {                                	 	
// 377  					                           return 1;

LM63:
	     .stabn 68,0,377,LM63-_Pause_Process
	     R1 = 1                   	// [0:377]  
	     SP = SP + 8              	// [1:377]  
	     pop BP, PC from [SP]     	// [2:377]  
L_3_5:	// 0x18e
// BB:9 cycle count: 10
// 378  			                              }
// 379  										 
// 380  										  if(Key)

LM64:
	     .stabn 68,0,380,LM64-_Pause_Process
	     DS = seg(_Key)           	// [0:380]  Key
	     R4 = (_Key)              	// [1:380]  Key
	     R4 = DS:[R4]             	// [3:380]  
	     cmp R4, 0                	// [5:380]  
	     jne BB10_PU3             	// [6:380]  
BB38_PU3:	// 0x194
// BB:38 cycle count: 3
	     goto L_3_6               	// [0:0]  
BB10_PU3:	// 0x196
// BB:10 cycle count: 24
// 381  										  	{
// 382  			                                     temp = Pressflag&Key;

LM65:
	     .stabn 68,0,382,LM65-_Pause_Process
	     DS = seg(_Key)           	// [0:382]  Key
	     R4 = (_Key)              	// [1:382]  Key
	     R4 = DS:[R4]             	// [3:382]  
	     DS = seg(_Pressflag)     	// [5:382]  Pressflag
	     R3 = (_Pressflag)        	// [6:382]  Pressflag
	     R4 = R4 & DS:[R3]        	// [8:382]  
	     [BP + 7] = R4            	// [10:382]  temp
// 383  				  	                             TimeCnt =0;	                             

LM66:
	     .stabn 68,0,383,LM66-_Pause_Process
	     R3 = 0                   	// [11:383]  
	     DS = seg(_TimeCnt)       	// [12:383]  TimeCnt
	     R4 = (_TimeCnt)          	// [13:383]  TimeCnt
	     DS:[R4] = R3             	// [15:383]  
// 384  				  	                             
// 385  											  	   if(temp ==0)//Ì§Æð

LM67:
	     .stabn 68,0,385,LM67-_Pause_Process
	     R4 = [BP + 7]            	// [17:385]  temp
	     cmp R4, 0                	// [19:385]  
	     jne L_3_7                	// [20:385]  
BB11_PU3:	// 0x1a7
// BB:11 cycle count: 31
// 386  										        	{
// 387  										        		    temp =Key;

LM68:
	     .stabn 68,0,387,LM68-_Pause_Process
	     DS = seg(_Key)           	// [0:387]  Key
	     R4 = (_Key)              	// [1:387]  Key
	     R4 = DS:[R4]             	// [3:387]  
	     [BP + 7] = R4            	// [5:387]  temp
// 388  										                    Key =0;	

LM69:
	     .stabn 68,0,388,LM69-_Pause_Process
	     R3 = 0                   	// [6:388]  
	     DS = seg(_Key)           	// [7:388]  Key
	     R4 = (_Key)              	// [8:388]  Key
	     DS:[R4] = R3             	// [10:388]  
// 389  											 	       
// 390  													 	    Key_TrueFlase_Buffer =0;  

LM70:
	     .stabn 68,0,390,LM70-_Pause_Process
	     R3 = 0                   	// [12:390]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [13:390]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [14:390]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [16:390]  
// 391  															TimeCnt_Key =1;

LM71:
	     .stabn 68,0,391,LM71-_Pause_Process
	     R3 = 1                   	// [18:391]  
	     DS = seg(_TimeCnt_Key)   	// [19:391]  TimeCnt_Key
	     R4 = (_TimeCnt_Key)      	// [20:391]  TimeCnt_Key
	     DS:[R4] = R3             	// [22:391]  
// 392  														
// 393  														   if(temp ==Playbutton)

LM72:
	     .stabn 68,0,393,LM72-_Pause_Process
	     R4 = [BP + 7]            	// [24:393]  temp
	     cmp R4, 1                	// [26:393]  
	     jne L_3_9                	// [27:393]  
BB12_PU3:	// 0x1be
// BB:12 cycle count: 6
// 394  														   {	
// 395  															 out_pauseflag =1;

LM73:
	     .stabn 68,0,395,LM73-_Pause_Process
	     R4 = 1                   	// [0:395]  
	     [BP + 1] = R4            	// [1:395]  out_pauseflag
// 396  												             break;	

LM74:
	     .stabn 68,0,396,LM74-_Pause_Process
	     jmp Lt_3_1               	// [2:396]  
L_3_9:	// 0x1c1
// BB:13 cycle count: 7
// 397  												             
// 398  														    }	 								                 
// 399  										                   else if((temp ==PB_button)||((temp ==MB_button)))

LM75:
	     .stabn 68,0,399,LM75-_Pause_Process
	     R4 = [BP + 7]            	// [0:399]  temp
	     cmp R4, 2                	// [2:399]  
	     je L_3_11                	// [3:399]  
BB14_PU3:	// 0x1c4
// BB:14 cycle count: 7
	     R4 = [BP + 7]            	// [0:399]  temp
	     cmp R4, 4                	// [2:399]  
	     jne L_3_10               	// [3:399]  
L_3_11:	// 0x1c7
// BB:15 cycle count: 10
// 400  										                   {
// 401  										                   	
// 402  										                   	   Volume(temp);

LM76:
	     .stabn 68,0,402,LM76-_Pause_Process
	     SP = SP - 1              	// [0:402]  
	     R3 = [BP + 7]            	// [1:402]  temp
	     R4 = SP + 1              	// [3:402]  
	     [R4] = R3                	// [5:402]  
	     call _Volume             	// [7:402]  Volume
BB16_PU3:	// 0x1ce
// BB:16 cycle count: 10
	     SP = SP + 1              	// [0:402]  
// 403  										                   	   volumeflag =1;

LM77:
	     .stabn 68,0,403,LM77-_Pause_Process
	     R4 = 1                   	// [1:403]  
	     [BP + 5] = R4            	// [2:403]  volumeflag
// 404  										                   	   
// 405  										                   	    A1800_Flag = al800flag_temp;

LM78:
	     .stabn 68,0,405,LM78-_Pause_Process
	     R3 = [BP + 6]            	// [3:405]  al800flag_temp
	     DS = seg(_A1800_Flag)    	// [5:405]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [6:405]  A1800_Flag
	     DS:[R4] = R3             	// [8:405]  
L_3_10:	// 0x1d6
L_3_8:	// 0x1d6
L_3_7:	// 0x1d6
// BB:17 cycle count: 6
// 406  										                   }
// 407  										        	}
// 408  				  	                             
// 409  				  	                              Key =0;	 

LM79:
	     .stabn 68,0,409,LM79-_Pause_Process
	     R3 = 0                   	// [0:409]  
	     DS = seg(_Key)           	// [1:409]  Key
	     R4 = (_Key)              	// [2:409]  Key
	     DS:[R4] = R3             	// [4:409]  
L_3_6:	// 0x1db
// BB:18 cycle count: 11
// 474  //										   	}
// 475  
// 476  
// 477  										
// 478  										if(TimeCnt>180*16)

LM80:
	     .stabn 68,0,478,LM80-_Pause_Process
	     DS = seg(_TimeCnt)       	// [0:478]  TimeCnt
	     R4 = (_TimeCnt)          	// [1:478]  TimeCnt
	     R4 = DS:[R4]             	// [3:478]  
	     cmp R4, 2880             	// [5:478]  
	     jbe L_3_12               	// [7:478]  
BB19_PU3:	// 0x1e2
// BB:19 cycle count: 15
// 479  										{
// 480  											Key_TrueFlase_Buffer =0;

LM81:
	     .stabn 68,0,480,LM81-_Pause_Process
	     R3 = 0                   	// [0:480]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [1:480]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [2:480]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [4:480]  
// 481  											TimeCnt =0;

LM82:
	     .stabn 68,0,481,LM82-_Pause_Process
	     R3 = 0                   	// [6:481]  
	     DS = seg(_TimeCnt)       	// [7:481]  TimeCnt
	     R4 = (_TimeCnt)          	// [8:481]  TimeCnt
	     DS:[R4] = R3             	// [10:481]  
// 482                                              GameTimeout();							

LM83:
	     .stabn 68,0,482,LM83-_Pause_Process
	     call _GameTimeout        	// [12:482]  GameTimeout
BB20_PU3:	// 0x1ee
// BB:20 cycle count: 6
// 483  											out_pauseflag = 2;

LM84:
	     .stabn 68,0,483,LM84-_Pause_Process
	     R4 = 2                   	// [0:483]  
	     [BP + 1] = R4            	// [1:483]  out_pauseflag
// 484  											break;

LM85:
	     .stabn 68,0,484,LM85-_Pause_Process
	     jmp Lt_3_1               	// [2:484]  
L_3_12:	// 0x1f1
// BB:21 cycle count: 3

LM86:
	     .stabn 68,0,478,LM86-_Pause_Process
	     goto L_3_3               	// [0:478]  
L_3_4:	// 0x1f3
Lt_3_1:	// 0x1f3
// BB:22 cycle count: 7
// 487  
// 488  						 	}
// 489  
// 490  
// 491                 if(out_pauseflag)

LM87:
	     .stabn 68,0,491,LM87-_Pause_Process
	     R4 = [BP + 1]            	// [0:491]  out_pauseflag
	     cmp R4, 0                	// [2:491]  
	     jne BB23_PU3             	// [3:491]  
BB37_PU3:	// 0x1f6
// BB:37 cycle count: 3
	     goto L_3_13              	// [0:0]  
BB23_PU3:	// 0x1f8
// BB:23 cycle count: 44
// 492                    {
// 493  
// 494  
// 495  					  Key_TrueFlase_Buffer =0;

LM88:
	     .stabn 68,0,495,LM88-_Pause_Process
	     R3 = 0                   	// [0:495]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [1:495]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [2:495]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [4:495]  
// 496  					  
// 497  					  
// 498  					 	 TimeCnt =  time_temp;

LM89:
	     .stabn 68,0,498,LM89-_Pause_Process
	     R3 = [BP + 2]            	// [6:498]  time_temp
	     DS = seg(_TimeCnt)       	// [8:498]  TimeCnt
	     R4 = (_TimeCnt)          	// [9:498]  TimeCnt
	     DS:[R4] = R3             	// [11:498]  
// 499  						// TimeCnt_Speed = temp_timeCnt_Speed;
// 500  						 T_Countdowncnt = temp_T_Countdowncnt;						 

LM90:
	     .stabn 68,0,500,LM90-_Pause_Process
	     R3 = [BP + 3]            	// [13:500]  temp_T_Countdowncnt
	     DS = seg(_T_Countdowncnt)	// [15:500]  T_Countdowncnt
	     R4 = (_T_Countdowncnt)   	// [16:500]  T_Countdowncnt
	     DS:[R4] = R3             	// [18:500]  
// 501  //						 FiveSec_cnt = temp_FiveSec_cnt;						
// 502  //						 Key_buffer_First = Key_buffer_First_temp;
// 503  						 BlinkFlag_Data = Blink_data_temp ;

LM91:
	     .stabn 68,0,503,LM91-_Pause_Process
	     R3 = [BP + 0]            	// [20:503]  Blink_data_temp
	     DS = seg(_BlinkFlag_Data)	// [22:503]  BlinkFlag_Data
	     R4 = (_BlinkFlag_Data)   	// [23:503]  BlinkFlag_Data
	     DS:[R4] = R3             	// [25:503]  
// 504  						 Key_activeflag = key_active_temp; 

LM92:
	     .stabn 68,0,504,LM92-_Pause_Process
	     R3 = [BP + 4]            	// [27:504]  key_active_temp
	     DS = seg(_Key_activeflag)	// [29:504]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [30:504]  Key_activeflag
	     DS:[R4] = R3             	// [32:504]  
// 505  
// 506  					
// 507  			    if(((TwoKeyflag)||(PlayQuestionflag==0x01))&&((!PlayScoresFlag)))//||(TieflagAskQuestion)))//xiang 20150317

LM93:
	     .stabn 68,0,507,LM93-_Pause_Process
	     DS = seg(_TwoKeyflag)    	// [34:507]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [35:507]  TwoKeyflag
	     R4 = DS:[R4]             	// [37:507]  
	     cmp R4, 0                	// [39:507]  
	     jne L_3_17               	// [40:507]  
BB24_PU3:	// 0x217
// BB:24 cycle count: 10
	     DS = seg(_PlayQuestionflag)	// [0:507]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [1:507]  PlayQuestionflag
	     R4 = DS:[R4]             	// [3:507]  
	     cmp R4, 1                	// [5:507]  
	     jne L_3_15               	// [6:507]  
L_3_17:	// 0x21d
// BB:25 cycle count: 10
	     DS = seg(_PlayScoresFlag)	// [0:507]  PlayScoresFlag
	     R4 = (_PlayScoresFlag)   	// [1:507]  PlayScoresFlag
	     R4 = DS:[R4]             	// [3:507]  
	     cmp R4, 0                	// [5:507]  
	     jne L_3_15               	// [6:507]  
L_3_16:	// 0x223
// BB:26 cycle count: 14
// 508  					  {
// 509  						    PauseFlag =1;

LM94:
	     .stabn 68,0,509,LM94-_Pause_Process
	     R3 = 1                   	// [0:509]  
	     DS = seg(_PauseFlag)     	// [1:509]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:509]  PauseFlag
	     DS:[R4] = R3             	// [4:509]  
// 510                              return C_Null;

LM95:
	     .stabn 68,0,510,LM95-_Pause_Process
	     R1 = - 1286              	// [6:510]  
	     SP = SP + 8              	// [8:510]  
	     pop BP, PC from [SP]     	// [9:510]  
L_3_15:	// 0x22c
// BB:27 cycle count: 7
// 511  												
// 512  						
// 513  					  }
// 514  				  else if(out_pauseflag==2)

LM96:
	     .stabn 68,0,514,LM96-_Pause_Process
	     R4 = [BP + 1]            	// [0:514]  out_pauseflag
	     cmp R4, 2                	// [2:514]  
	     jne L_3_19               	// [3:514]  
BB28_PU3:	// 0x22f
// BB:28 cycle count: 8
// 515  					 	     return C_Null;  	  

LM97:
	     .stabn 68,0,515,LM97-_Pause_Process
	     R1 = - 1286              	// [0:515]  
	     SP = SP + 8              	// [2:515]  
	     pop BP, PC from [SP]     	// [3:515]  
L_3_19:	// 0x233
// BB:29 cycle count: 7
// 517  						{
// 518  					
// 519  					
// 520  					
// 521  						   if(al800flag_temp)

LM98:
	     .stabn 68,0,521,LM98-_Pause_Process
	     R4 = [BP + 6]            	// [0:521]  al800flag_temp
	     cmp R4, 0                	// [2:521]  
	     je L_3_20                	// [3:521]  
BB30_PU3:	// 0x236
// BB:30 cycle count: 7
// 522  						   {
// 523  							   	
// 524  							   	 if(volumeflag ==0)

LM99:
	     .stabn 68,0,524,LM99-_Pause_Process
	     R4 = [BP + 5]            	// [0:524]  volumeflag
	     cmp R4, 0                	// [2:524]  
	     jne L_3_22               	// [3:524]  
BB31_PU3:	// 0x239
// BB:31 cycle count: 3
// 525  							   	 {
// 526  							 
// 527  								     SP_RampUpDAC1_Other();

LM100:
	     .stabn 68,0,527,LM100-_Pause_Process
	     call _SP_RampUpDAC1_Other	// [0:527]  SP_RampUpDAC1_Other
BB32_PU3:	// 0x23b
// BB:32 cycle count: 3
// 528  								   
// 529  								     SACM_A1800_Resume();

LM101:
	     .stabn 68,0,529,LM101-_Pause_Process
	     call _SACM_A1800_Resume  	// [0:529]  SACM_A1800_Resume
BB33_PU3:	// 0x23d
// BB:33 cycle count: 4
	     jmp L_3_21               	// [0:529]  
L_3_22:	// 0x23e
// BB:34 cycle count: 8
// 530  							   	 }
// 531  							   	else
// 532  							   	 {
// 533  							   	 	   return C_Repeat;//PlayA1800_Elements(Sp_repeat);

LM102:
	     .stabn 68,0,533,LM102-_Pause_Process
	     R1 = - 4074              	// [0:533]  
	     SP = SP + 8              	// [2:533]  
	     pop BP, PC from [SP]     	// [3:533]  
L_3_21:	// 0x242
L_3_20:	// 0x242
L_3_18:	// 0x242
L_3_14:	// 0x242
// BB:35 cycle count: 7
// 543  							
// 544  						}
// 545  					   
// 546  					
// 547  					 return 0;

LM103:
	     .stabn 68,0,547,LM103-_Pause_Process
	     R1 = 0                   	// [0:547]  
	     SP = SP + 8              	// [1:547]  
	     pop BP, PC from [SP]     	// [2:547]  
L_3_13:	// 0x245
// BB:36 cycle count: 6
	     SP = SP + 8              	// [0:547]  
	     pop BP, PC from [SP]     	// [1:547]  
LBE4:
	.endp	
	     .stabn 192,0,0,LBB4-_Pause_Process
	     .stabs "Blink_data_temp:4",128,0,0,0
	     .stabs "temp:4",128,0,0,7
	     .stabs "out_pauseflag:4",128,0,0,1
	     .stabs "time_temp:4",128,0,0,2
	     .stabs "temp_T_Countdowncnt:4",128,0,0,3
	     .stabs "key_active_temp:4",128,0,0,4
	     .stabs "volumeflag:4",128,0,0,5
	     .stabs "al800flag_temp:4",128,0,0,6
	     .stabn 224,0,0,LBE4-_Pause_Process
LME4:
	     .stabf LME4-_Pause_Process
.code
	     .stabs "PlayA1800_ElementsInit:F18",36,0,0,_PlayA1800_ElementsInit

	// Program Unit: PlayA1800_ElementsInit
.public	_PlayA1800_ElementsInit
_PlayA1800_ElementsInit: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
// 720  /***********************************************************************
// 721  return:KeyOFF
// 722  ***********************************************************************/
// 723  void  PlayA1800_ElementsInit(unsigned ElementsIndex)
// 724  {

LM104:
	     .stabn 68,0,724,LM104-_PlayA1800_ElementsInit
BB1_PU4:	// 0x247
// BB:1 cycle count: 14
	     push BP to [SP]          	// [0:724]  
	     BP = SP + 1              	// [2:724]  
// 739  			 if(PassFlag)
// 740  			 	 return;
// 741  		#endif
// 742  		
// 743  		if(Sleepflag) 

LM105:
	     .stabn 68,0,743,LM105-_PlayA1800_ElementsInit
	     DS = seg(_Sleepflag)     	// [4:743]  Sleepflag
	     R4 = (_Sleepflag)        	// [5:743]  Sleepflag
	     R4 = DS:[R4]             	// [7:743]  
	     cmp R4, 0                	// [9:743]  
	     je L_4_1                 	// [10:743]  
BB2_PU4:	// 0x250
// BB:2 cycle count: 5
// 744  		      return ;

LM106:
	     .stabn 68,0,744,LM106-_PlayA1800_ElementsInit
	     pop BP, PC from [SP]     	// [0:744]  
L_4_1:	// 0x251
// BB:3 cycle count: 10
// 745  		
// 746  		if(PauseFlag)

LM107:
	     .stabn 68,0,746,LM107-_PlayA1800_ElementsInit
	     DS = seg(_PauseFlag)     	// [0:746]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:746]  PauseFlag
	     R4 = DS:[R4]             	// [3:746]  
	     cmp R4, 0                	// [5:746]  
	     je L_4_2                 	// [6:746]  
BB4_PU4:	// 0x257
// BB:4 cycle count: 5
// 747  		  	 return;

LM108:
	     .stabn 68,0,747,LM108-_PlayA1800_ElementsInit
	     pop BP, PC from [SP]     	// [0:747]  
L_4_2:	// 0x258
// BB:5 cycle count: 10
// 748  		
// 749  		
// 750  	   if(CheaterFlag)

LM109:
	     .stabn 68,0,750,LM109-_PlayA1800_ElementsInit
	     DS = seg(_CheaterFlag)   	// [0:750]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [1:750]  CheaterFlag
	     R4 = DS:[R4]             	// [3:750]  
	     cmp R4, 0                	// [5:750]  
	     je L_4_3                 	// [6:750]  
BB6_PU4:	// 0x25e
// BB:6 cycle count: 5
// 751  		  	 return;	

LM110:
	     .stabn 68,0,751,LM110-_PlayA1800_ElementsInit
	     pop BP, PC from [SP]     	// [0:751]  
L_4_3:	// 0x25f
// BB:7 cycle count: 10
// 752  
// 753  
// 754         if(Key_Event)

LM111:
	     .stabn 68,0,754,LM111-_PlayA1800_ElementsInit
	     DS = seg(_Key_Event)     	// [0:754]  Key_Event
	     R4 = (_Key_Event)        	// [1:754]  Key_Event
	     R4 = DS:[R4]             	// [3:754]  
	     cmp R4, 0                	// [5:754]  
	     je L_4_4                 	// [6:754]  
BB8_PU4:	// 0x265
// BB:8 cycle count: 5
// 755     	        return;

LM112:
	     .stabn 68,0,755,LM112-_PlayA1800_ElementsInit
	     pop BP, PC from [SP]     	// [0:755]  
L_4_4:	// 0x266
// BB:9 cycle count: 13
// 756       
// 757  //    Keystopflag =0;
// 758  //    Key_TrueFlase_Buffer =0;
// 759  
// 760  	PauseFlag =0;

LM113:
	     .stabn 68,0,760,LM113-_PlayA1800_ElementsInit
	     R3 = 0                   	// [0:760]  
	     DS = seg(_PauseFlag)     	// [1:760]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:760]  PauseFlag
	     DS:[R4] = R3             	// [4:760]  
// 761  	
// 762  	if(ElementsIndex>0)

LM114:
	     .stabn 68,0,762,LM114-_PlayA1800_ElementsInit
	     R4 = [BP + 3]            	// [6:762]  ElementsIndex
	     cmp R4, 0                	// [8:762]  
	     je L_4_5                 	// [9:762]  
BB10_PU4:	// 0x26e
// BB:10 cycle count: 8
// 763  		ElementsIndex-=R_WrongICflag;

LM115:
	     .stabn 68,0,763,LM115-_PlayA1800_ElementsInit
	     R4 = [BP + 3]            	// [0:763]  ElementsIndex
	     DS = seg(_R_WrongICflag) 	// [2:763]  R_WrongICflag
	     R3 = (_R_WrongICflag)    	// [3:763]  R_WrongICflag
	     R4 = R4 - DS:[R3]        	// [5:763]  
	     [BP + 3] = R4            	// [7:763]  ElementsIndex
L_4_5:	// 0x274
// BB:11 cycle count: 3
// 764  
// 765       
// 766  
// 767  	    SACM_A1800_Initial();

LM116:
	     .stabn 68,0,767,LM116-_PlayA1800_ElementsInit
	     call _SACM_A1800_Initial 	// [0:767]  SACM_A1800_Initial
BB12_PU4:	// 0x276
// BB:12 cycle count: 9
// 768  	    A1800_Flag = 2;

LM117:
	     .stabn 68,0,768,LM117-_PlayA1800_ElementsInit
	     R3 = 2                   	// [0:768]  
	     DS = seg(_A1800_Flag)    	// [1:768]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [2:768]  A1800_Flag
	     DS:[R4] = R3             	// [4:768]  
// 769  	 
// 770  	 	 A1800Stop();

LM118:
	     .stabn 68,0,770,LM118-_PlayA1800_ElementsInit
	     call _A1800Stop          	// [6:770]  A1800Stop
L_4_6:	// 0x27d
// BB:13 cycle count: 10
// 771  	     while(DAC1_RampDnFlag)

LM119:
	     .stabn 68,0,771,LM119-_PlayA1800_ElementsInit
	     DS = seg(_DAC1_RampDnFlag)	// [0:771]  DAC1_RampDnFlag
	     R4 = (_DAC1_RampDnFlag)  	// [1:771]  DAC1_RampDnFlag
	     R4 = DS:[R4]             	// [3:771]  
	     cmp R4, 0                	// [5:771]  
	     je L_4_7                 	// [6:771]  
BB14_PU4:	// 0x283
// BB:14 cycle count: 3
// 772  	     	   WatchdogClear();

LM120:
	     .stabn 68,0,772,LM120-_PlayA1800_ElementsInit
	     call _WatchdogClear      	// [0:772]  WatchdogClear
BB15_PU4:	// 0x285
// BB:15 cycle count: 4
	     jmp L_4_6                	// [0:772]  
L_4_7:	// 0x286
// BB:16 cycle count: 13
// 775  	  
// 776  //	  if(VOL1Flag)
// 777  //	  	 USER_A1800_Volume(gVolume1);
// 778  //	  else  
// 779  	    USER_A1800_Volume(gVolume);

LM121:
	     .stabn 68,0,779,LM121-_PlayA1800_ElementsInit
	     SP = SP - 1              	// [0:779]  
	     DS = seg(_gVolume)       	// [1:779]  gVolume
	     R4 = (_gVolume)          	// [2:779]  gVolume
	     R3 = DS:[R4]             	// [4:779]  
	     R4 = SP + 1              	// [6:779]  
	     [R4] = R3                	// [8:779]  
	     call _USER_A1800_Volume  	// [10:779]  USER_A1800_Volume
BB17_PU4:	// 0x290
// BB:17 cycle count: 13
	     SP = SP - 1              	// [0:779]  
// 780  	    
// 781  	    USER_A1800_SetStartAddr(ElementsIndex);	 

LM122:
	     .stabn 68,0,781,LM122-_PlayA1800_ElementsInit
	     R4 = [BP + 3]            	// [1:781]  ElementsIndex
	     R2 = 0                   	// [3:781]  
	     R3 = SP + 1              	// [4:781]  
	     [R3++] = R4              	// [6:781]  
	     [R3] = R2                	// [8:781]  
	     call _USER_A1800_SetStartAddr	// [10:781]  USER_A1800_SetStartAddr
BB18_PU4:	// 0x299
// BB:18 cycle count: 19
	     SP = SP - 1              	// [0:781]  
// 782  
// 783  	    SACM_A1800_Play(-1, DAC1, Ramp_Up + Ramp_Dn);  

LM123:
	     .stabn 68,0,783,LM123-_PlayA1800_ElementsInit
	     R3 = - 1                 	// [1:783]  
	     R4 = SP + 1              	// [2:783]  
	     [R4] = R3                	// [4:783]  
	     R3 = 1                   	// [6:783]  
	     R4 = SP + 2              	// [7:783]  
	     [R4] = R3                	// [9:783]  
	     R3 = 3                   	// [11:783]  
	     R4 = SP + 3              	// [12:783]  
	     [R4] = R3                	// [14:783]  
	     call _SACM_A1800_Play    	// [16:783]  SACM_A1800_Play
BB19_PU4:	// 0x2a8
// BB:19 cycle count: 6
	     SP = SP + 3              	// [0:783]  
	     pop BP, PC from [SP]     	// [1:783]  
	.endp	
	     .stabs "ElementsIndex:p4",160,0,0,3
LME5:
	     .stabf LME5-_PlayA1800_ElementsInit
.code
	     .stabs "PlayA1800_Elements:F18",36,0,0,_PlayA1800_Elements

	// Program Unit: PlayA1800_Elements
.public	_PlayA1800_Elements
_PlayA1800_Elements: .proc	
	     .stabn 0xa6,0,0,1
	// temp = 0
	// old_frame_pointer = 1
	// return_address = 2
// 787  /***********************************************************************
// 788  return:KeyOFF
// 789  ***********************************************************************/
// 790  void  PlayA1800_Elements(unsigned ElementsIndex)
// 791  {

LM124:
	     .stabn 68,0,791,LM124-_PlayA1800_Elements
BB1_PU5:	// 0x2aa
// BB:1 cycle count: 15
	     push BP to [SP]          	// [0:791]  
	     SP = SP - 1              	// [2:791]  
	     BP = SP + 1              	// [3:791]  
LBB5:
// 806  			 if(PassFlag)
// 807  			 	 return;
// 808  		#endif
// 809  		
// 810  		if(Sleepflag) 

LM125:
	     .stabn 68,0,810,LM125-_PlayA1800_Elements
	     DS = seg(_Sleepflag)     	// [5:810]  Sleepflag
	     R4 = (_Sleepflag)        	// [6:810]  Sleepflag
	     R4 = DS:[R4]             	// [8:810]  
	     cmp R4, 0                	// [10:810]  
	     je L_5_28                	// [11:810]  
BB2_PU5:	// 0x2b4
// BB:2 cycle count: 6
// 811  		      return ;

LM126:
	     .stabn 68,0,811,LM126-_PlayA1800_Elements
	     SP = SP + 1              	// [0:811]  
	     pop BP, PC from [SP]     	// [1:811]  
L_5_28:	// 0x2b6
// BB:3 cycle count: 10
// 812  		
// 813  		if(PauseFlag)

LM127:
	     .stabn 68,0,813,LM127-_PlayA1800_Elements
	     DS = seg(_PauseFlag)     	// [0:813]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:813]  PauseFlag
	     R4 = DS:[R4]             	// [3:813]  
	     cmp R4, 0                	// [5:813]  
	     je L_5_29                	// [6:813]  
BB4_PU5:	// 0x2bc
// BB:4 cycle count: 6
// 814  		  	 return;

LM128:
	     .stabn 68,0,814,LM128-_PlayA1800_Elements
	     SP = SP + 1              	// [0:814]  
	     pop BP, PC from [SP]     	// [1:814]  
L_5_29:	// 0x2be
// BB:5 cycle count: 10
// 815  		
// 816  		
// 817  	   if(CheaterFlag)

LM129:
	     .stabn 68,0,817,LM129-_PlayA1800_Elements
	     DS = seg(_CheaterFlag)   	// [0:817]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [1:817]  CheaterFlag
	     R4 = DS:[R4]             	// [3:817]  
	     cmp R4, 0                	// [5:817]  
	     je L_5_30                	// [6:817]  
BB6_PU5:	// 0x2c4
// BB:6 cycle count: 6
// 818  		  	 return;	

LM130:
	     .stabn 68,0,818,LM130-_PlayA1800_Elements
	     SP = SP + 1              	// [0:818]  
	     pop BP, PC from [SP]     	// [1:818]  
L_5_30:	// 0x2c6
// BB:7 cycle count: 10
// 819  
// 820  
// 821         if(Key_Event)

LM131:
	     .stabn 68,0,821,LM131-_PlayA1800_Elements
	     DS = seg(_Key_Event)     	// [0:821]  Key_Event
	     R4 = (_Key_Event)        	// [1:821]  Key_Event
	     R4 = DS:[R4]             	// [3:821]  
	     cmp R4, 0                	// [5:821]  
	     je L_5_31                	// [6:821]  
BB8_PU5:	// 0x2cc
// BB:8 cycle count: 6
// 822     	        return;

LM132:
	     .stabn 68,0,822,LM132-_PlayA1800_Elements
	     SP = SP + 1              	// [0:822]  
	     pop BP, PC from [SP]     	// [1:822]  
L_5_31:	// 0x2ce
// BB:9 cycle count: 13
// 823       
// 824  //    Keystopflag =0;
// 825  //    Key_TrueFlase_Buffer =0;
// 826  
// 827  	PauseFlag =0;

LM133:
	     .stabn 68,0,827,LM133-_PlayA1800_Elements
	     R3 = 0                   	// [0:827]  
	     DS = seg(_PauseFlag)     	// [1:827]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:827]  PauseFlag
	     DS:[R4] = R3             	// [4:827]  
// 828  	
// 829  	if(ElementsIndex>0)

LM134:
	     .stabn 68,0,829,LM134-_PlayA1800_Elements
	     R4 = [BP + 4]            	// [6:829]  ElementsIndex
	     cmp R4, 0                	// [8:829]  
	     je L_5_32                	// [9:829]  
BB10_PU5:	// 0x2d6
// BB:10 cycle count: 8
// 830  		ElementsIndex-=R_WrongICflag;

LM135:
	     .stabn 68,0,830,LM135-_PlayA1800_Elements
	     R4 = [BP + 4]            	// [0:830]  ElementsIndex
	     DS = seg(_R_WrongICflag) 	// [2:830]  R_WrongICflag
	     R3 = (_R_WrongICflag)    	// [3:830]  R_WrongICflag
	     R4 = R4 - DS:[R3]        	// [5:830]  
	     [BP + 4] = R4            	// [7:830]  ElementsIndex
L_5_32:	// 0x2dc
// BB:11 cycle count: 3
// 837       
// 838  //	BSR_StopRecognizer();
// 839     // if(Play_Con < 2)
// 840      {
// 841  	    SACM_A1800_Initial();

LM136:
	     .stabn 68,0,841,LM136-_PlayA1800_Elements
	     call _SACM_A1800_Initial 	// [0:841]  SACM_A1800_Initial
BB12_PU5:	// 0x2de
// BB:12 cycle count: 9
// 842  	    A1800_Flag = 1;

LM137:
	     .stabn 68,0,842,LM137-_PlayA1800_Elements
	     R3 = 1                   	// [0:842]  
	     DS = seg(_A1800_Flag)    	// [1:842]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [2:842]  A1800_Flag
	     DS:[R4] = R3             	// [4:842]  
// 843  	 
// 844  	 	 A1800Stop();

LM138:
	     .stabn 68,0,844,LM138-_PlayA1800_Elements
	     call _A1800Stop          	// [6:844]  A1800Stop
L_5_33:	// 0x2e5
// BB:13 cycle count: 10
// 845  	     while(DAC1_RampDnFlag)

LM139:
	     .stabn 68,0,845,LM139-_PlayA1800_Elements
	     DS = seg(_DAC1_RampDnFlag)	// [0:845]  DAC1_RampDnFlag
	     R4 = (_DAC1_RampDnFlag)  	// [1:845]  DAC1_RampDnFlag
	     R4 = DS:[R4]             	// [3:845]  
	     cmp R4, 0                	// [5:845]  
	     je L_5_34                	// [6:845]  
BB14_PU5:	// 0x2eb
// BB:14 cycle count: 3
// 846  	     	   WatchdogClear();

LM140:
	     .stabn 68,0,846,LM140-_PlayA1800_Elements
	     call _WatchdogClear      	// [0:846]  WatchdogClear
BB15_PU5:	// 0x2ed
// BB:15 cycle count: 4
	     jmp L_5_33               	// [0:846]  
L_5_34:	// 0x2ee
// BB:16 cycle count: 13
// 849  	  
// 850  //	  if(VOL1Flag)
// 851  //	  	 USER_A1800_Volume(gVolume1);
// 852  //	  else  
// 853  	    USER_A1800_Volume(gVolume);

LM141:
	     .stabn 68,0,853,LM141-_PlayA1800_Elements
	     SP = SP - 1              	// [0:853]  
	     DS = seg(_gVolume)       	// [1:853]  gVolume
	     R4 = (_gVolume)          	// [2:853]  gVolume
	     R3 = DS:[R4]             	// [4:853]  
	     R4 = SP + 1              	// [6:853]  
	     [R4] = R3                	// [8:853]  
	     call _USER_A1800_Volume  	// [10:853]  USER_A1800_Volume
BB17_PU5:	// 0x2f8
// BB:17 cycle count: 13
	     SP = SP - 1              	// [0:853]  
// 854  	    
// 855  	    USER_A1800_SetStartAddr(ElementsIndex);	 

LM142:
	     .stabn 68,0,855,LM142-_PlayA1800_Elements
	     R4 = [BP + 4]            	// [1:855]  ElementsIndex
	     R2 = 0                   	// [3:855]  
	     R3 = SP + 1              	// [4:855]  
	     [R3++] = R4              	// [6:855]  
	     [R3] = R2                	// [8:855]  
	     call _USER_A1800_SetStartAddr	// [10:855]  USER_A1800_SetStartAddr
BB18_PU5:	// 0x301
// BB:18 cycle count: 19
	     SP = SP - 1              	// [0:855]  
// 856  
// 857  	    SACM_A1800_Play(-1, DAC1, Ramp_Up + Ramp_Dn);  

LM143:
	     .stabn 68,0,857,LM143-_PlayA1800_Elements
	     R3 = - 1                 	// [1:857]  
	     R4 = SP + 1              	// [2:857]  
	     [R4] = R3                	// [4:857]  
	     R3 = 1                   	// [6:857]  
	     R4 = SP + 2              	// [7:857]  
	     [R4] = R3                	// [9:857]  
	     R3 = 3                   	// [11:857]  
	     R4 = SP + 3              	// [12:857]  
	     [R4] = R3                	// [14:857]  
	     call _SACM_A1800_Play    	// [16:857]  SACM_A1800_Play
BB19_PU5:	// 0x310
// BB:19 cycle count: 3
	     SP = SP + 3              	// [0:857]  
// 858      }
// 859  
// 860  
// 861  	temp = 0;

LM144:
	     .stabn 68,0,861,LM144-_PlayA1800_Elements
	     R4 = 0                   	// [1:861]  
	     [BP + 0] = R4            	// [2:861]  temp
Lt_5_24:	// 0x313
// BB:20 cycle count: 3
// 862  	while((SACM_A1800_Status() & 0x0001) != 0)

LM145:
	     .stabn 68,0,862,LM145-_PlayA1800_Elements
	     call _SACM_A1800_Status  	// [0:862]  SACM_A1800_Status
BB21_PU5:	// 0x315
// BB:21 cycle count: 7
	     R4 = R1 & 1              	// [0:862]  
	     cmp R4, 0                	// [2:862]  
	     je Lt_5_25               	// [3:862]  
BB22_PU5:	// 0x319
// BB:22 cycle count: 3
// 863  	{
// 864  		WatchdogClear();

LM146:
	     .stabn 68,0,864,LM146-_PlayA1800_Elements
	     call _WatchdogClear      	// [0:864]  WatchdogClear
BB23_PU5:	// 0x31b
// BB:23 cycle count: 10
// 865  		
// 866  		if(Sleepflag) 

LM147:
	     .stabn 68,0,866,LM147-_PlayA1800_Elements
	     DS = seg(_Sleepflag)     	// [0:866]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:866]  Sleepflag
	     R4 = DS:[R4]             	// [3:866]  
	     cmp R4, 0                	// [5:866]  
	     je L_5_35                	// [6:866]  
BB24_PU5:	// 0x321
// BB:24 cycle count: 4
// 867  		      break ;

LM148:
	     .stabn 68,0,867,LM148-_PlayA1800_Elements
	     jmp Lt_5_1               	// [0:867]  
L_5_35:	// 0x322
// BB:25 cycle count: 10
// 871  			 if(PassFlag)
// 872  			 	 break;
// 873  		#endif
// 874  		
// 875  		  if(PauseFlag)

LM149:
	     .stabn 68,0,875,LM149-_PlayA1800_Elements
	     DS = seg(_PauseFlag)     	// [0:875]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:875]  PauseFlag
	     R4 = DS:[R4]             	// [3:875]  
	     cmp R4, 0                	// [5:875]  
	     je L_5_36                	// [6:875]  
BB26_PU5:	// 0x328
// BB:26 cycle count: 4
// 876  		  	 break;

LM150:
	     .stabn 68,0,876,LM150-_PlayA1800_Elements
	     jmp Lt_5_1               	// [0:876]  
L_5_36:	// 0x329
// BB:27 cycle count: 10
// 877  		
// 878  		
// 879  		  if(CheaterFlag)

LM151:
	     .stabn 68,0,879,LM151-_PlayA1800_Elements
	     DS = seg(_CheaterFlag)   	// [0:879]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [1:879]  CheaterFlag
	     R4 = DS:[R4]             	// [3:879]  
	     cmp R4, 0                	// [5:879]  
	     je L_5_37                	// [6:879]  
BB28_PU5:	// 0x32f
// BB:28 cycle count: 4
// 880  		  	 break;	

LM152:
	     .stabn 68,0,880,LM152-_PlayA1800_Elements
	     jmp Lt_5_1               	// [0:880]  
L_5_37:	// 0x330
// BB:29 cycle count: 9
// 893  		
// 894  		
// 895            
// 896  		
// 897  		   if(temp=Get_Key(0))

LM153:
	     .stabn 68,0,897,LM153-_PlayA1800_Elements
	     SP = SP - 1              	// [0:897]  
	     R3 = 0                   	// [1:897]  
	     R4 = SP + 1              	// [2:897]  
	     [R4] = R3                	// [4:897]  
	     call _Get_Key            	// [6:897]  Get_Key
BB30_PU5:	// 0x337
// BB:30 cycle count: 9
	     SP = SP + 1              	// [0:897]  
	     [BP + 0] = R1            	// [1:897]  temp
	     R4 = [BP + 0]            	// [2:897]  temp
	     cmp R4, 0                	// [4:897]  
	     je L_5_38                	// [5:897]  
BB31_PU5:	// 0x33c
// BB:31 cycle count: 4
// 898  			 	 break;

LM154:
	     .stabn 68,0,898,LM154-_PlayA1800_Elements
	     jmp Lt_5_1               	// [0:898]  
L_5_38:	// 0x33d
// BB:32 cycle count: 3
// 899  		
// 900  	
// 901  		SACM_A1800_ServiceLoop();

LM155:
	     .stabn 68,0,901,LM155-_PlayA1800_Elements
	     call _SACM_A1800_ServiceLoop	// [0:901]  SACM_A1800_ServiceLoop
BB33_PU5:	// 0x33f
// BB:33 cycle count: 4

LM156:
	     .stabn 68,0,862,LM156-_PlayA1800_Elements
	     jmp Lt_5_24              	// [0:862]  
Lt_5_25:	// 0x340
Lt_5_1:	// 0x340
// BB:34 cycle count: 3
// 917  //	  }
// 918  	
// 919  	}
// 920  
// 921  	SACM_A1800_Stop();

LM157:
	     .stabn 68,0,921,LM157-_PlayA1800_Elements
	     call _SACM_A1800_Stop    	// [0:921]  SACM_A1800_Stop
BB35_PU5:	// 0x342
// BB:35 cycle count: 14
// 922  	A1800_Flag = 0;

LM158:
	     .stabn 68,0,922,LM158-_PlayA1800_Elements
	     R3 = 0                   	// [0:922]  
	     DS = seg(_A1800_Flag)    	// [1:922]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [2:922]  A1800_Flag
	     DS:[R4] = R3             	// [4:922]  
// 923  	
// 924  
// 925  	if(C_Repeat == temp)

LM159:
	     .stabn 68,0,925,LM159-_PlayA1800_Elements
	     R4 = [BP + 0]            	// [6:925]  temp
	     cmp R4, 61462            	// [8:925]  
	     jne L_5_39               	// [10:925]  
BB36_PU5:	// 0x34b
// BB:36 cycle count: 10
// 926  		return PlayA1800_Elements(ElementsIndex);

LM160:
	     .stabn 68,0,926,LM160-_PlayA1800_Elements
	     SP = SP - 1              	// [0:926]  
	     R3 = [BP + 4]            	// [1:926]  ElementsIndex
	     R4 = SP + 1              	// [3:926]  
	     [R4] = R3                	// [5:926]  
	     call _PlayA1800_Elements 	// [7:926]  PlayA1800_Elements
BB37_PU5:	// 0x352
// BB:37 cycle count: 6
	     SP = SP + 2              	// [0:926]  
	     pop BP, PC from [SP]     	// [1:926]  
L_5_39:	// 0x354
// BB:38 cycle count: 12
// 927  
// 928  	TimeCnt = 1;		//start time count

LM161:
	     .stabn 68,0,928,LM161-_PlayA1800_Elements
	     R3 = 1                   	// [0:928]  
	     DS = seg(_TimeCnt)       	// [1:928]  TimeCnt
	     R4 = (_TimeCnt)          	// [2:928]  TimeCnt
	     DS:[R4] = R3             	// [4:928]  
	     SP = SP + 1              	// [6:928]  
	     pop BP, PC from [SP]     	// [7:928]  
LBE5:
	.endp	
	     .stabs "ElementsIndex:p4",160,0,0,4
	     .stabn 192,0,0,LBB5-_PlayA1800_Elements
	     .stabs "temp:4",128,0,0,0
	     .stabn 224,0,0,LBE5-_PlayA1800_Elements
LME6:
	     .stabf LME6-_PlayA1800_Elements
.code
	     .stabs "Play_Seq:F18",36,0,0,_Play_Seq

	// Program Unit: Play_Seq
.public	_Play_Seq
_Play_Seq: .proc	
	     .stabn 0xa6,0,0,4
	// Addr = 2
	// i = 0
	// temp = 1
	// old_frame_pointer = 4
	// return_address = 5
// 931  
// 932  //****************************************************************
// 933  //*******************************************************************
// 934  void Play_Seq(unsigned int Index,unsigned int T_TableH)//unsigned int Table,
// 935  {

LM162:
	     .stabn 68,0,935,LM162-_Play_Seq
BB1_PU6:	// 0x35b
// BB:1 cycle count: 17
	     push BP to [SP]          	// [0:935]  
	     SP = SP - 4              	// [2:935]  
	     BP = SP + 1              	// [3:935]  
LBB6:
// 936  	unsigned long Addr;
// 937  	unsigned int i=0;

LM163:
	     .stabn 68,0,937,LM163-_Play_Seq
	     R4 = 0                   	// [5:937]  
	     [BP + 0] = R4            	// [6:937]  i
// 938  //	unsigned int Num =3;
// 939  	 int temp =0;

LM164:
	     .stabn 68,0,939,LM164-_Play_Seq
	     R4 = 0                   	// [7:939]  
	     [BP + 1] = R4            	// [8:939]  temp
// 942  	
// 943  //	Play_Con =1;
// 944  
// 945  //	
// 946  	if(T_TableH == C_RoundsTable)		

LM165:
	     .stabn 68,0,946,LM165-_Play_Seq
	     R4 = [BP + 8]            	// [9:946]  T_TableH
	     cmp R4, 13050            	// [11:946]  
	     jne L_6_16               	// [13:946]  
BB2_PU6:	// 0x367
// BB:2 cycle count: 7
// 947  	  {
// 948           if(Index>7)

LM166:
	     .stabn 68,0,948,LM166-_Play_Seq
	     R4 = [BP + 7]            	// [0:948]  Index
	     cmp R4, 7                	// [2:948]  
	     jbe L_6_17               	// [3:948]  
BB3_PU6:	// 0x36a
// BB:3 cycle count: 6
// 949           	return;

LM167:
	     .stabn 68,0,949,LM167-_Play_Seq
	     SP = SP + 4              	// [0:949]  
	     pop BP, PC from [SP]     	// [1:949]  
L_6_17:	// 0x36c
L_6_16:	// 0x36c
// BB:4 cycle count: 8
// 963  
// 964  
// 965  
// 966  
// 967  	 Addr = Index * 4 * 2 + T_TableH ;//Table; Num

LM168:
	     .stabn 68,0,967,LM168-_Play_Seq
	     R4 = [BP + 7]            	// [0:967]  Index
	     R4 = R4 lsl 3            	// [2:967]  
	     R4 = R4 + [BP + 8]       	// [3:967]  T_TableH
	     R3 = 0                   	// [5:967]  
	     [BP + 2] = R4            	// [6:967]  Addr
	     [BP + 3] = R3            	// [7:967]  Addr+1
L_6_18:	// 0x372
// BB:5 cycle count: 7
// 968  	 	
// 969      while(i<4 )//Num

LM169:
	     .stabn 68,0,969,LM169-_Play_Seq
	     R4 = [BP + 0]            	// [0:969]  i
	     cmp R4, 3                	// [2:969]  
	     ja L_6_19                	// [3:969]  
BB6_PU6:	// 0x375
// BB:6 cycle count: 18
// 970  	{
// 971  		temp = SPI_ReadAWord_Big(Addr+i*2);

LM170:
	     .stabn 68,0,971,LM170-_Play_Seq
	     SP = SP - 2              	// [0:971]  
	     R4 = [BP + 0]            	// [1:971]  i
	     R3 = R4 lsl 1            	// [3:971]  
	     R4 = 0                   	// [4:971]  
	     R3 = R3 + [BP + 2]       	// [5:971]  Addr
	     R4 = R4 + [BP + 3], Carry	// [7:971]  Addr+1
	     R2 = SP + 1              	// [9:971]  
	     [R2++] = R3              	// [11:971]  
	     [R2] = R4                	// [13:971]  
	     call _SPI_ReadAWord_Big  	// [15:971]  SPI_ReadAWord_Big
BB7_PU6:	// 0x381
// BB:7 cycle count: 10
	     SP = SP + 2              	// [0:971]  
	     [BP + 1] = R1            	// [1:971]  temp
// 972  	
// 973  	 if(temp == 9999)

LM171:
	     .stabn 68,0,973,LM171-_Play_Seq
	     R4 = [BP + 1]            	// [2:973]  temp
	     cmp R4, 9999             	// [4:973]  
	     jne L_6_20               	// [6:973]  
BB8_PU6:	// 0x387
// BB:8 cycle count: 4
// 974  	   {
// 975  	 	   break;

LM172:
	     .stabn 68,0,975,LM172-_Play_Seq
	     jmp Lt_6_1               	// [0:975]  
L_6_20:	// 0x388
// BB:9 cycle count: 7
// 976  	    }
// 977  		
// 978  	
// 979  	   if((i==1)&&((T_TableH == C_NextTable)||(T_TableH == C_TooLateTable)))	

LM173:
	     .stabn 68,0,979,LM173-_Play_Seq
	     R4 = [BP + 0]            	// [0:979]  i
	     cmp R4, 1                	// [2:979]  
	     jne L_6_21               	// [3:979]  
BB10_PU6:	// 0x38b
// BB:10 cycle count: 8
	     R4 = [BP + 8]            	// [0:979]  T_TableH
	     cmp R4, 12000            	// [2:979]  
	     je L_6_22                	// [4:979]  
BB11_PU6:	// 0x38f
// BB:11 cycle count: 8
	     R4 = [BP + 8]            	// [0:979]  T_TableH
	     cmp R4, 12500            	// [2:979]  
	     jne L_6_21               	// [4:979]  
L_6_22:	// 0x393
// BB:12 cycle count: 14
// 980  	   {
// 981  	   	   PlayA1800_Elements(A_VLMMREN_Player_01+Player_Activing_Cnt);

LM174:
	     .stabn 68,0,981,LM174-_Play_Seq
	     SP = SP - 1              	// [0:981]  
	     DS = seg(_Player_Activing_Cnt)	// [1:981]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [2:981]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [4:981]  
	     R4 = R4 + 36             	// [6:981]  
	     R3 = SP + 1              	// [7:981]  
	     [R3] = R4                	// [9:981]  
	     call _PlayA1800_Elements 	// [11:981]  PlayA1800_Elements
BB13_PU6:	// 0x39e
// BB:13 cycle count: 1
	     SP = SP + 1              	// [0:981]  
L_6_21:	// 0x39f
// BB:14 cycle count: 10
// 982  	   }
// 983    	  
// 984  	      PlayA1800_Elements(temp);

LM175:
	     .stabn 68,0,984,LM175-_Play_Seq
	     SP = SP - 1              	// [0:984]  
	     R3 = [BP + 1]            	// [1:984]  temp
	     R4 = SP + 1              	// [3:984]  
	     [R4] = R3                	// [5:984]  
	     call _PlayA1800_Elements 	// [7:984]  PlayA1800_Elements
BB15_PU6:	// 0x3a6
// BB:15 cycle count: 15
	     SP = SP + 1              	// [0:984]  
// 985  	      	 
// 986  	//	Play_Con =2;		
// 987  		i++;

LM176:
	     .stabn 68,0,987,LM176-_Play_Seq
	     R4 = [BP + 0]            	// [1:987]  i
	     R4 = R4 + 1              	// [3:987]  
	     [BP + 0] = R4            	// [4:987]  i
// 988  		
// 989         if(Key_Event)

LM177:
	     .stabn 68,0,989,LM177-_Play_Seq
	     DS = seg(_Key_Event)     	// [5:989]  Key_Event
	     R4 = (_Key_Event)        	// [6:989]  Key_Event
	     R4 = DS:[R4]             	// [8:989]  
	     cmp R4, 0                	// [10:989]  
	     je L_6_23                	// [11:989]  
BB16_PU6:	// 0x3b0
// BB:16 cycle count: 4
// 990         	    break;

LM178:
	     .stabn 68,0,990,LM178-_Play_Seq
	     jmp Lt_6_1               	// [0:990]  
L_6_23:	// 0x3b1
// BB:17 cycle count: 3

LM179:
	     .stabn 68,0,989,LM179-_Play_Seq
	     goto L_6_18              	// [0:989]  
L_6_19:	// 0x3b3
Lt_6_1:	// 0x3b3
// BB:18 cycle count: 6
// 991  		
// 992  	}

LM180:
	     .stabn 68,0,992,LM180-_Play_Seq
	     SP = SP + 4              	// [0:992]  
	     pop BP, PC from [SP]     	// [1:992]  
LBE6:
	.endp	
	     .stabs "Index:p4",160,0,0,7
	     .stabs "T_TableH:p4",160,0,0,8
	     .stabn 192,0,0,LBB6-_Play_Seq
	     .stabs "Addr:5",128,0,0,2
	     .stabs "i:4",128,0,0,0
	     .stabs "temp:1",128,0,0,1
	     .stabn 224,0,0,LBE6-_Play_Seq
LME7:
	     .stabf LME7-_Play_Seq
.code
	     .stabs "PlayA1800_Question:F18",36,0,0,_PlayA1800_Question

	// Program Unit: PlayA1800_Question
.public	_PlayA1800_Question
_PlayA1800_Question: .proc	
	     .stabn 0xa6,0,0,5
	// Addr_temp = 1
	// i = 0
	// temp1 = 4
	// temp2 = 3
	// old_frame_pointer = 5
	// return_address = 6
//1070  //***********************************************************************
//1071  //return:KeyOFF
//1072  //***********************************************************************/
//1073  void PlayA1800_Question(unsigned lQuestionIdx)
//1074  {

LM181:
	     .stabn 68,0,1074,LM181-_PlayA1800_Question
BB1_PU7:	// 0x3b5
// BB:1 cycle count: 10
	     push BP to [SP]          	// [0:1074]  
	     SP = SP - 5              	// [2:1074]  
	     BP = SP + 1              	// [3:1074]  
LBB7:
//1075  
//1076  	unsigned long Addr_temp;
//1077  	unsigned i=0;

LM182:
	     .stabn 68,0,1077,LM182-_PlayA1800_Question
	     R4 = 0                   	// [5:1077]  
	     [BP + 0] = R4            	// [6:1077]  i
//1078  	unsigned temp1,temp2;
//1079  //	unsigned Temp_Can,Temp_Does,Temp_Is,Temp_Repeat;
//1080  //	BSR_StopRecognizer();
//1081      SACM_A1800_Initial();

LM183:
	     .stabn 68,0,1081,LM183-_PlayA1800_Question
	     call _SACM_A1800_Initial 	// [7:1081]  SACM_A1800_Initial
BB2_PU7:	// 0x3bd
// BB:2 cycle count: 15
//1082      A1800_Flag = 1;

LM184:
	     .stabn 68,0,1082,LM184-_PlayA1800_Question
	     R3 = 1                   	// [0:1082]  
	     DS = seg(_A1800_Flag)    	// [1:1082]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [2:1082]  A1800_Flag
	     DS:[R4] = R3             	// [4:1082]  
//1084    // Led_SP_On();
//1085  
//1086   //	LED_Ser_Init();
//1087  
//1088     	Addr_temp = lQuestionIdx * 20 + C_TableQuetionAddr;

LM185:
	     .stabn 68,0,1088,LM185-_PlayA1800_Question
	     R4 = [BP + 8]            	// [6:1088]  lQuestionIdx
	     R4 = R4 lsl 2            	// [8:1088]  
	     R4 = R4 + R4 lsl 2       	// [9:1088]  
	     R4 = R4 + 900            	// [10:1088]  
	     R3 = 0                   	// [12:1088]  
	     [BP + 1] = R4            	// [13:1088]  Addr_temp
	     [BP + 2] = R3            	// [14:1088]  Addr_temp+1
L_7_14:	// 0x3ca
// BB:3 cycle count: 7
//1089  	while(i<5)

LM186:
	     .stabn 68,0,1089,LM186-_PlayA1800_Question
	     R4 = [BP + 0]            	// [0:1089]  i
	     cmp R4, 4                	// [2:1089]  
	     jbe BB4_PU7              	// [3:1089]  
BB20_PU7:	// 0x3cd
// BB:20 cycle count: 3
	     goto L_7_15              	// [0:0]  
BB4_PU7:	// 0x3cf
// BB:4 cycle count: 10
//1090  	{
//1091  		
//1092       if(Sleepflag) 

LM187:
	     .stabn 68,0,1092,LM187-_PlayA1800_Question
	     DS = seg(_Sleepflag)     	// [0:1092]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:1092]  Sleepflag
	     R4 = DS:[R4]             	// [3:1092]  
	     cmp R4, 0                	// [5:1092]  
	     je L_7_16                	// [6:1092]  
BB5_PU7:	// 0x3d5
// BB:5 cycle count: 6
//1093          return ;

LM188:
	     .stabn 68,0,1093,LM188-_PlayA1800_Question
	     SP = SP + 5              	// [0:1093]  
	     pop BP, PC from [SP]     	// [1:1093]  
L_7_16:	// 0x3d7
// BB:6 cycle count: 10
//1094  		
//1095  		if(CheaterFlag)

LM189:
	     .stabn 68,0,1095,LM189-_PlayA1800_Question
	     DS = seg(_CheaterFlag)   	// [0:1095]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [1:1095]  CheaterFlag
	     R4 = DS:[R4]             	// [3:1095]  
	     cmp R4, 0                	// [5:1095]  
	     je L_7_17                	// [6:1095]  
BB7_PU7:	// 0x3dd
// BB:7 cycle count: 6
//1096  			return;

LM190:
	     .stabn 68,0,1096,LM190-_PlayA1800_Question
	     SP = SP + 5              	// [0:1096]  
	     pop BP, PC from [SP]     	// [1:1096]  
L_7_17:	// 0x3df
// BB:8 cycle count: 10
//1097  		
//1098  		if(Key_Event)

LM191:
	     .stabn 68,0,1098,LM191-_PlayA1800_Question
	     DS = seg(_Key_Event)     	// [0:1098]  Key_Event
	     R4 = (_Key_Event)        	// [1:1098]  Key_Event
	     R4 = DS:[R4]             	// [3:1098]  
	     cmp R4, 0                	// [5:1098]  
	     je L_7_18                	// [6:1098]  
BB9_PU7:	// 0x3e5
// BB:9 cycle count: 6
//1099        	     return;

LM192:
	     .stabn 68,0,1099,LM192-_PlayA1800_Question
	     SP = SP + 5              	// [0:1099]  
	     pop BP, PC from [SP]     	// [1:1099]  
L_7_18:	// 0x3e7
// BB:10 cycle count: 10
//1100  
//1101  		if(PauseFlag)

LM193:
	     .stabn 68,0,1101,LM193-_PlayA1800_Question
	     DS = seg(_PauseFlag)     	// [0:1101]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:1101]  PauseFlag
	     R4 = DS:[R4]             	// [3:1101]  
	     cmp R4, 0                	// [5:1101]  
	     je L_7_19                	// [6:1101]  
BB11_PU7:	// 0x3ed
// BB:11 cycle count: 6
//1102  			return;

LM194:
	     .stabn 68,0,1102,LM194-_PlayA1800_Question
	     SP = SP + 5              	// [0:1102]  
	     pop BP, PC from [SP]     	// [1:1102]  
L_7_19:	// 0x3ef
// BB:12 cycle count: 14
//1106  			 	 return;
//1107  		#endif
//1108  		
//1109  			
//1110  	   temp2 = SPI_ReadAWord_Big(Addr_temp); //how many speech

LM195:
	     .stabn 68,0,1110,LM195-_PlayA1800_Question
	     SP = SP - 2              	// [0:1110]  
	     R2 = [BP + 1]            	// [1:1110]  Addr_temp
	     R3 = [BP + 2]            	// [3:1110]  Addr_temp+1
	     R4 = SP + 1              	// [5:1110]  
	     [R4++] = R2              	// [7:1110]  
	     [R4] = R3                	// [9:1110]  
	     call _SPI_ReadAWord_Big  	// [11:1110]  SPI_ReadAWord_Big
BB13_PU7:	// 0x3f8
// BB:13 cycle count: 10
	     SP = SP + 2              	// [0:1110]  
	     [BP + 3] = R1            	// [1:1110]  temp2
//1111  	   
//1112  	   if(temp2 ==9999)

LM196:
	     .stabn 68,0,1112,LM196-_PlayA1800_Question
	     R4 = [BP + 3]            	// [2:1112]  temp2
	     cmp R4, 9999             	// [4:1112]  
	     jne L_7_20               	// [6:1112]  
BB14_PU7:	// 0x3fe
// BB:14 cycle count: 4
//1113  	   	    break;

LM197:
	     .stabn 68,0,1113,LM197-_PlayA1800_Question
	     jmp Lt_7_1               	// [0:1113]  
L_7_20:	// 0x3ff
// BB:15 cycle count: 16
//1114  
//1115  		  temp1 = SPI_ReadAWord_Big(Addr_temp+2);  //start index

LM198:
	     .stabn 68,0,1115,LM198-_PlayA1800_Question
	     SP = SP - 2              	// [0:1115]  
	     R3 = [BP + 1]            	// [1:1115]  Addr_temp
	     R4 = [BP + 2]            	// [3:1115]  Addr_temp+1
	     R3 = R3 + 2              	// [5:1115]  
	     R4 = R4 + 0, Carry       	// [6:1115]  
	     R2 = SP + 1              	// [7:1115]  
	     [R2++] = R3              	// [9:1115]  
	     [R2] = R4                	// [11:1115]  
	     call _SPI_ReadAWord_Big  	// [13:1115]  SPI_ReadAWord_Big
BB16_PU7:	// 0x40a
// BB:16 cycle count: 16
	     SP = SP + 2              	// [0:1115]  
	     [BP + 4] = R1            	// [1:1115]  temp1
//1116  
//1117  
//1118  		 temp2 = *P_TimerB_CNTR % temp2;

LM199:
	     .stabn 68,0,1118,LM199-_PlayA1800_Question
	     R3 = 12307               	// [2:1118]  
	     R4 = 0                   	// [4:1118]  
	     DS = R4                  	// [5:1118]  
	     R3 = DS:[R3]             	// [6:1118]  
	     R4 = [BP + 3]            	// [8:1118]  temp2
	     push R4, R3 to [SP]      	// [10:1118]  
	     call __modu1             	// [13:1118]  _modu1
BB17_PU7:	// 0x415
// BB:17 cycle count: 16
	     SP = SP + 1              	// [0:0]  
	     [BP + 3] = R1            	// [1:0]  temp2
//1119  
//1120  
//1121  
//1122  	    temp1+= temp2;

LM200:
	     .stabn 68,0,1122,LM200-_PlayA1800_Question
	     R4 = [BP + 4]            	// [2:1122]  temp1
	     R4 = R4 + [BP + 3]       	// [4:1122]  temp2
	     [BP + 4] = R4            	// [6:1122]  temp1
//1123  	    
//1124  	    PlayA1800_Elements(temp1);

LM201:
	     .stabn 68,0,1124,LM201-_PlayA1800_Question
	     R3 = [BP + 4]            	// [7:1124]  temp1
	     R4 = SP + 1              	// [9:1124]  
	     [R4] = R3                	// [11:1124]  
	     call _PlayA1800_Elements 	// [13:1124]  PlayA1800_Elements
BB18_PU7:	// 0x420
// BB:18 cycle count: 16
	     SP = SP + 1              	// [0:1124]  
//1125  				    
//1126  
//1127  		Addr_temp+=4;

LM202:
	     .stabn 68,0,1127,LM202-_PlayA1800_Question
	     R3 = [BP + 1]            	// [1:1127]  Addr_temp
	     R4 = [BP + 2]            	// [3:1127]  Addr_temp+1
	     R3 = R3 + 4              	// [5:1127]  
	     R4 = R4 + 0, Carry       	// [6:1127]  
	     [BP + 1] = R3            	// [7:1127]  Addr_temp
	     [BP + 2] = R4            	// [8:1127]  Addr_temp+1
//1128  		i++;

LM203:
	     .stabn 68,0,1128,LM203-_PlayA1800_Question
	     R4 = [BP + 0]            	// [9:1128]  i
	     R4 = R4 + 1              	// [11:1128]  
	     [BP + 0] = R4            	// [12:1128]  i
	     goto L_7_14              	// [13:1128]  
L_7_15:	// 0x42c
Lt_7_1:	// 0x42c
// BB:19 cycle count: 6
//1129  	 
//1130  	}	

LM204:
	     .stabn 68,0,1130,LM204-_PlayA1800_Question
	     SP = SP + 5              	// [0:1130]  
	     pop BP, PC from [SP]     	// [1:1130]  
LBE7:
	.endp	
	     .stabs "lQuestionIdx:p4",160,0,0,8
	     .stabn 192,0,0,LBB7-_PlayA1800_Question
	     .stabs "Addr_temp:5",128,0,0,1
	     .stabs "i:4",128,0,0,0
	     .stabs "temp1:4",128,0,0,4
	     .stabs "temp2:4",128,0,0,3
	     .stabn 224,0,0,LBE7-_PlayA1800_Question
LME8:
	     .stabf LME8-_PlayA1800_Question
.external _SPI_ReadAWord_Big
.external _OtherSph_Random_Value
.external _Get_Registered_Player_Num
.external _Select_Registered_Player_Random
.external _Sleepflag
.external _Key_Event
.external _gVolume
.external _TimeCnt
.external _T_Countdowncnt
.external _Key_activeflag
.external _BlinkFlag_Data
.external _SACM_A1800_Pause
.external _SP_RampDnDAC1
.external _Key_TrueFlase_Buffer
.external _WatchdogClear
.external _Key
.external _Pressflag
.external _TimeCnt_Key
.external _GameTimeout
.external _PlayScoresFlag
.external _SP_RampUpDAC1_Other
.external _SACM_A1800_Resume
.external _R_WrongICflag
.external _SACM_A1800_Initial
.external _A1800Stop
.external _DAC1_RampDnFlag
.external _USER_A1800_Volume
.external _USER_A1800_SetStartAddr
.external _SACM_A1800_Play
.external _SACM_A1800_Status
.external _Get_Key
.external _SACM_A1800_ServiceLoop
.external _SACM_A1800_Stop
.external _Player_Activing_Cnt
.external __modu1
