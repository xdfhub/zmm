	//  C:\PROGRA~2\GENERA~1\UNSPID~1.1\TOOLCH~2\be::1.1.3

	//-----------------------------------------------------------
	// Compiling D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\TestModel\TestBondingC.c (C:\Users\xdf\AppData\Local\Temp\ccB.3)
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
.stabs "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\TestModel\TestBondingC.c",100,0,3,Ltext0

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
	     .stabs "Delay1xms:F18",36,0,0,_Delay1xms

	// Program Unit: Delay1xms
.public	_Delay1xms
_Delay1xms: .proc	
	     .stabn 0xa6,0,0,2
	// k = 0
	// t = 1
	// old_frame_pointer = 2
	// return_address = 3
// 152  //}
// 153  
// 154  
// 155  void Delay1xms(unsigned int i)   /////i = 1时 测试出约1.25MS
// 156  {

LM1:
	     .stabn 68,0,156,LM1-_Delay1xms
BB1_PU0:	// 0x0
// BB:1 cycle count: 10
	     push BP to [SP]          	// [0:156]  
	     SP = SP - 2              	// [2:156]  
	     BP = SP + 1              	// [3:156]  
LBB2:
// 157  	unsigned int k,t;
// 158  	i = i;

LM2:
	     .stabn 68,0,158,LM2-_Delay1xms
	     R4 = [BP + 5]            	// [5:158]  i
	     [BP + 5] = R4            	// [7:158]  i
// 159  	for(k=0; k<i; k++)

LM3:
	     .stabn 68,0,159,LM3-_Delay1xms
	     R4 = 0                   	// [8:159]  
	     [BP + 0] = R4            	// [9:159]  k
L_0_8:	// 0x8
// BB:2 cycle count: 9
	     R3 = [BP + 5]            	// [0:159]  i
	     R4 = [BP + 0]            	// [2:159]  k
	     cmp R3, R4               	// [4:159]  
	     jbe L_0_9                	// [5:159]  
BB3_PU0:	// 0xc
// BB:3 cycle count: 3
// 160  	{
// 161  		t=0x01da*2;				//0x010a*2:delay 1ms	-- 49M,focs

LM4:
	     .stabn 68,0,161,LM4-_Delay1xms
	     R4 = 948                 	// [0:161]  
	     [BP + 1] = R4            	// [2:161]  t
Lt_0_4:	// 0xf
// BB:4 cycle count: 11
// 162  		while(--t)

LM5:
	     .stabn 68,0,162,LM5-_Delay1xms
	     R4 = [BP + 1]            	// [0:162]  t
	     R4 = R4 - 1              	// [2:162]  
	     [BP + 1] = R4            	// [3:162]  t
	     R4 = [BP + 1]            	// [4:162]  t
	     cmp R4, 0                	// [6:162]  
	     je Lt_0_5                	// [7:162]  
BB5_PU0:	// 0x15
// BB:5 cycle count: 3
// 163  			WatchdogClear();

LM6:
	     .stabn 68,0,163,LM6-_Delay1xms
	     call _WatchdogClear      	// [0:163]  WatchdogClear
BB6_PU0:	// 0x17
// BB:6 cycle count: 4

LM7:
	     .stabn 68,0,162,LM7-_Delay1xms
	     jmp Lt_0_4               	// [0:162]  
Lt_0_5:	// 0x18
Lt_0_1:	// 0x18
// BB:7 cycle count: 8

LM8:
	     .stabn 68,0,159,LM8-_Delay1xms
	     R4 = [BP + 0]            	// [0:159]  k
	     R4 = R4 + 1              	// [2:159]  
	     [BP + 0] = R4            	// [3:159]  k
	     jmp L_0_8                	// [4:159]  
L_0_9:	// 0x1c
// BB:8 cycle count: 6
	     SP = SP + 2              	// [0:159]  
	     pop BP, PC from [SP]     	// [1:159]  
LBE2:
	.endp	
	     .stabs "i:p4",160,0,0,5
	     .stabn 192,0,0,LBB2-_Delay1xms
	     .stabs "k:4",128,0,0,0
	     .stabs "t:4",128,0,0,1
	     .stabn 224,0,0,LBE2-_Delay1xms
LME1:
	     .stabf LME1-_Delay1xms
.code
	     .stabs "Beep_Along:F18",36,0,0,_Beep_Along

	// Program Unit: Beep_Along
.public	_Beep_Along
_Beep_Along: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
// 170  /////////////////////
// 171  ////一直响Beep.
// 172  //////////////////////
// 173  void Beep_Along()
// 174  {

LM9:
	     .stabn 68,0,174,LM9-_Beep_Along
BB1_PU1:	// 0x1e
// BB:1 cycle count: 4
	     push BP to [SP]          	// [0:174]  
	     BP = SP + 1              	// [2:174]  
L_1_1:	// 0x21
// BB:2 cycle count: 3
// 175  	while(1)
// 176  	{
// 177  		WatchdogClear();

LM10:
	     .stabn 68,0,177,LM10-_Beep_Along
	     call _WatchdogClear      	// [0:177]  WatchdogClear
BB3_PU1:	// 0x23
// BB:3 cycle count: 3
// 178  		TestMic0();

LM11:
	     .stabn 68,0,178,LM11-_Beep_Along
	     call _TestMic0           	// [0:178]  TestMic0
BB4_PU1:	// 0x25
// BB:4 cycle count: 3
// 179  		SP_RampDnDAC1();

LM12:
	     .stabn 68,0,179,LM12-_Beep_Along
	     call _SP_RampDnDAC1      	// [0:179]  SP_RampDnDAC1
BB5_PU1:	// 0x27
// BB:5 cycle count: 10
// 180  		Delay1xms(700);

LM13:
	     .stabn 68,0,180,LM13-_Beep_Along
	     SP = SP - 1              	// [0:180]  
	     R3 = 700                 	// [1:180]  
	     R4 = SP + 1              	// [3:180]  
	     [R4] = R3                	// [5:180]  
	     call _Delay1xms          	// [7:180]  Delay1xms
BB6_PU1:	// 0x2f
// BB:6 cycle count: 5
	     SP = SP + 1              	// [0:180]  
	     jmp L_1_1                	// [1:180]  
L_1_2:	// 0x31
// BB:7 cycle count: 5
	     pop BP, PC from [SP]     	// [0:180]  
// BB:8 cycle count: 1
	     nop                      	// [0:0]  
	.endp	
LME2:
	     .stabf LME2-_Beep_Along
.code
	     .stabs "BeepBeep_Along:F18",36,0,0,_BeepBeep_Along

	// Program Unit: BeepBeep_Along
.public	_BeepBeep_Along
_BeepBeep_Along: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
// 183  /////////////////////
// 184  ////一直响BeepBeep.
// 185  //////////////////////
// 186  void BeepBeep_Along()
// 187  {

LM14:
	     .stabn 68,0,187,LM14-_BeepBeep_Along
BB1_PU2:	// 0x33
// BB:1 cycle count: 4
	     push BP to [SP]          	// [0:187]  
	     BP = SP + 1              	// [2:187]  
L_2_1:	// 0x36
// BB:2 cycle count: 3
// 188  	while(1)
// 189  	{
// 190  		WatchdogClear();

LM15:
	     .stabn 68,0,190,LM15-_BeepBeep_Along
	     call _WatchdogClear      	// [0:190]  WatchdogClear
BB3_PU2:	// 0x38
// BB:3 cycle count: 3
// 191  		TestMic0();

LM16:
	     .stabn 68,0,191,LM16-_BeepBeep_Along
	     call _TestMic0           	// [0:191]  TestMic0
BB4_PU2:	// 0x3a
// BB:4 cycle count: 3
// 192  		SP_RampDnDAC1();

LM17:
	     .stabn 68,0,192,LM17-_BeepBeep_Along
	     call _SP_RampDnDAC1      	// [0:192]  SP_RampDnDAC1
BB5_PU2:	// 0x3c
// BB:5 cycle count: 10
// 193  		Delay1xms(70);

LM18:
	     .stabn 68,0,193,LM18-_BeepBeep_Along
	     SP = SP - 1              	// [0:193]  
	     R3 = 70                  	// [1:193]  
	     R4 = SP + 1              	// [3:193]  
	     [R4] = R3                	// [5:193]  
	     call _Delay1xms          	// [7:193]  Delay1xms
BB6_PU2:	// 0x44
// BB:6 cycle count: 4
	     SP = SP + 1              	// [0:193]  
// 194  		TestMic0();

LM19:
	     .stabn 68,0,194,LM19-_BeepBeep_Along
	     call _TestMic0           	// [1:194]  TestMic0
BB7_PU2:	// 0x47
// BB:7 cycle count: 3
// 195  		SP_RampDnDAC1();

LM20:
	     .stabn 68,0,195,LM20-_BeepBeep_Along
	     call _SP_RampDnDAC1      	// [0:195]  SP_RampDnDAC1
BB8_PU2:	// 0x49
// BB:8 cycle count: 10
// 196  		Delay1xms(1000);	

LM21:
	     .stabn 68,0,196,LM21-_BeepBeep_Along
	     SP = SP - 1              	// [0:196]  
	     R3 = 1000                	// [1:196]  
	     R4 = SP + 1              	// [3:196]  
	     [R4] = R3                	// [5:196]  
	     call _Delay1xms          	// [7:196]  Delay1xms
BB9_PU2:	// 0x51
// BB:9 cycle count: 5
	     SP = SP + 1              	// [0:196]  
	     jmp L_2_1                	// [1:196]  
L_2_2:	// 0x53
// BB:10 cycle count: 5
	     pop BP, PC from [SP]     	// [0:196]  
// BB:11 cycle count: 1
	     nop                      	// [0:0]  
	.endp	
LME3:
	     .stabf LME3-_BeepBeep_Along
.external _WatchdogClear
.external _TestMic0
.external _SP_RampDnDAC1
