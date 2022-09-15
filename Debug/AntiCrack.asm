	//  C:\PROGRA~2\GENERA~1\UNSPID~1.1\TOOLCH~2\be::1.1.3

	//-----------------------------------------------------------
	// Compiling D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\AntiCrack\AntiCrack.c (C:\Users\xdf\AppData\Local\Temp\ccB.3)
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
.stabs "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\AntiCrack\AntiCrack.c",100,0,3,Ltext0

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
.stabs "uint16:t19=4",128,0,0,0
.stabs "u16:t20=19",128,0,0,0
.stabs "uint32:t21=5",128,0,0,0
.stabs "u32:t22=21",128,0,0,0
.code
	     .stabs "AntiCrackFun:F18",36,0,0,_AntiCrackFun

	// Program Unit: AntiCrackFun
.public	_AntiCrackFun
_AntiCrackFun: .proc	
	     .stabn 0xa6,0,0,3
	// temp1 = 2
	// paddr32 = 0
	// old_frame_pointer = 3
	// return_address = 4
//  58  // Return      : None
//  59  // Note        : None
//  60  //****************************************************************
//  61  void AntiCrackFun()
//  62  {

LM1:
	     .stabn 68,0,62,LM1-_AntiCrackFun
BB1_PU0:	// 0x0
// BB:1 cycle count: 10
	     push BP to [SP]          	// [0:62]  
	     SP = SP - 3              	// [2:62]  
	     BP = SP + 1              	// [3:62]  
	//;;
	INT OFF
	//;;
LBB2:
//  69  		}prt; 
//  70  	}paddr32;//指针的地址高低位格式
//  71  //加载flash读写程序到ram，用普通读flash的方式读出T_Scr地址的数据
//  72  	__asm("INT OFF");
//  73  	MoveSPIDriverToRAM();

LM2:
	     .stabn 68,0,73,LM2-_AntiCrackFun
	     call _MoveSPIDriverToRAM 	// [7:73]  MoveSPIDriverToRAM
BB2_PU0:	// 0x9
// BB:2 cycle count: 18
//  74  	paddr32.whole=T_Scr;

LM3:
	     .stabn 68,0,74,LM3-_AntiCrackFun
	     R3 = (_T_Scr)            	// [0:74]  T_Scr
	     R4 = seg(_T_Scr)         	// [2:74]  T_Scr
	     [BP + 0] = R3            	// [3:74]  paddr32
	     [BP + 1] = R4            	// [4:74]  paddr32+1
//  75  	paddr32.prt.high-=0x20;

LM4:
	     .stabn 68,0,75,LM4-_AntiCrackFun
	     R4 = [BP + 1]            	// [5:75]  paddr32+1
	     R4 = R4 - 32             	// [7:75]  
	     [BP + 1] = R4            	// [8:75]  paddr32+1
//  76  	if(paddr32.prt.low&0x8000)

LM5:
	     .stabn 68,0,76,LM5-_AntiCrackFun
	     R4 = [BP + 0]            	// [9:76]  paddr32
	     R4 = R4 & 32768          	// [11:76]  
	     cmp R4, 0                	// [13:76]  
	     je L_0_9                 	// [14:76]  
BB3_PU0:	// 0x16
// BB:3 cycle count: 4
//  77  	{
//  78  		paddr32.prt.high+=1;

LM6:
	     .stabn 68,0,78,LM6-_AntiCrackFun
	     R4 = [BP + 1]            	// [0:78]  paddr32+1
	     R4 = R4 + 1              	// [2:78]  
	     [BP + 1] = R4            	// [3:78]  paddr32+1
L_0_9:	// 0x19
// BB:4 cycle count: 20
//  79  	}
//  80  	paddr32.prt.low*=2;

LM7:
	     .stabn 68,0,80,LM7-_AntiCrackFun
	     R4 = [BP + 0]            	// [0:80]  paddr32
	     R4 = R4 lsl 1            	// [2:80]  
	     [BP + 0] = R4            	// [3:80]  paddr32
//  81  	temp1 = SPI_Flash_ReadAWord(paddr32.prt.low,paddr32.prt.high);	

LM8:
	     .stabn 68,0,81,LM8-_AntiCrackFun
	     SP = SP - 2              	// [4:81]  
	     R3 = [BP + 0]            	// [5:81]  paddr32
	     R4 = SP + 1              	// [7:81]  
	     [R4] = R3                	// [9:81]  
	     R3 = [BP + 1]            	// [11:81]  paddr32+1
	     R4 = SP + 2              	// [13:81]  
	     [R4] = R3                	// [15:81]  
	     call _SPI_Flash_ReadAWord	// [17:81]  SPI_Flash_ReadAWord
BB5_PU0:	// 0x27
// BB:5 cycle count: 20
	     SP = SP + 2              	// [0:81]  
	     [BP + 2] = R1            	// [1:81]  temp1
//  82  //	__asm("INT FIQ,IRQ");
//  83  //end 普通读写flash方式。
//  84  	R_WrongICflag=0;	

LM9:
	     .stabn 68,0,84,LM9-_AntiCrackFun
	     R3 = 0                   	// [2:84]  
	     DS = seg(_R_WrongICflag) 	// [3:84]  R_WrongICflag
	     R4 = (_R_WrongICflag)    	// [4:84]  R_WrongICflag
	     DS:[R4] = R3             	// [6:84]  
//  85  	#if normalIC_enable
//  86  	if(temp1==T_Scr[0])

LM10:
	     .stabn 68,0,86,LM10-_AntiCrackFun
	     DS = seg(_T_Scr)         	// [8:86]  T_Scr
	     R4 = (_T_Scr)            	// [9:86]  T_Scr
	     R3 = DS:[R4]             	// [11:86]  
	     R4 = [BP + 2]            	// [13:86]  temp1
	     cmp R3, R4               	// [15:86]  
	     jne L_0_10               	// [16:86]  
BB6_PU0:	// 0x35
// BB:6 cycle count: 6
//  87  	{
//  88  		return;

LM11:
	     .stabn 68,0,88,LM11-_AntiCrackFun
	     SP = SP + 3              	// [0:88]  
	     pop BP, PC from [SP]     	// [1:88]  
L_0_10:	// 0x37
// BB:7 cycle count: 12
//  89  	}
//  90  	#endif
//  91  	#if SzjtIC_enable
//  92  	if(temp1==T_Szjt_enc[0])

LM12:
	     .stabn 68,0,92,LM12-_AntiCrackFun
	     DS = seg(_T_Szjt_enc)    	// [0:92]  T_Szjt_enc
	     R4 = (_T_Szjt_enc)       	// [1:92]  T_Szjt_enc
	     R3 = DS:[R4]             	// [3:92]  
	     R4 = [BP + 2]            	// [5:92]  temp1
	     cmp R3, R4               	// [7:92]  
	     jne L_0_11               	// [8:92]  
BB8_PU0:	// 0x3e
// BB:8 cycle count: 6
//  93  	{
//  94  		return;

LM13:
	     .stabn 68,0,94,LM13-_AntiCrackFun
	     SP = SP + 3              	// [0:94]  
	     pop BP, PC from [SP]     	// [1:94]  
L_0_11:	// 0x40
// BB:9 cycle count: 12
//  95  	}
//  96  	#endif
//  97  	#if YutongIC_enable
//  98  	if(temp1==T_Yutong_enc[0])

LM14:
	     .stabn 68,0,98,LM14-_AntiCrackFun
	     DS = seg(_T_Yutong_enc)  	// [0:98]  T_Yutong_enc
	     R4 = (_T_Yutong_enc)     	// [1:98]  T_Yutong_enc
	     R3 = DS:[R4]             	// [3:98]  
	     R4 = [BP + 2]            	// [5:98]  temp1
	     cmp R3, R4               	// [7:98]  
	     jne L_0_12               	// [8:98]  
BB10_PU0:	// 0x47
// BB:10 cycle count: 6
//  99  	{
// 100  		return;

LM15:
	     .stabn 68,0,100,LM15-_AntiCrackFun
	     SP = SP + 3              	// [0:100]  
	     pop BP, PC from [SP]     	// [1:100]  
L_0_12:	// 0x49
// BB:11 cycle count: 12
// 101  	}
// 102  	#endif
// 103  	R_WrongICflag=1;//芯片错误。

LM16:
	     .stabn 68,0,103,LM16-_AntiCrackFun
	     R3 = 1                   	// [0:103]  
	     DS = seg(_R_WrongICflag) 	// [1:103]  R_WrongICflag
	     R4 = (_R_WrongICflag)    	// [2:103]  R_WrongICflag
	     DS:[R4] = R3             	// [4:103]  
	     SP = SP + 3              	// [6:103]  
	     pop BP, PC from [SP]     	// [7:103]  
LBE2:
	.endp	
	     .stabn 192,0,0,LBB2-_AntiCrackFun
	     .stabs "temp1:4",128,0,0,2
	     .stabs "paddr32:23=u2whole:22,0,32;prt:24=s2low:20,0,16;high:20,16,16;;,0,32;;",128,0,0,0
	     .stabn 224,0,0,LBE2-_AntiCrackFun
LME1:
	     .stabf LME1-_AntiCrackFun

.nb_data
	     .stabs "T_Scr:G25=ar3;0;-1;4",32,0,0,_T_Scr
.public	_T_Scr
_T_Scr:	// 0x0
	.dw	1440
	// end of initialization for T_Scr
	     .stabs "T_Szjt_enc:G26=ar3;0;-1;4",32,0,0,_T_Szjt_enc
.public	_T_Szjt_enc
_T_Szjt_enc:	// 0x1
	.dw	21258
	// end of initialization for T_Szjt_enc
	     .stabs "T_Yutong_enc:G27=ar3;0;-1;4",32,0,0,_T_Yutong_enc
.public	_T_Yutong_enc
_T_Yutong_enc:	// 0x2
	.dw	5711
	// end of initialization for T_Yutong_enc

.iram
	     .stabs "R_WrongICflag:G4",32,0,0,_R_WrongICflag
.public	_R_WrongICflag
_R_WrongICflag:	// 0x0
	.dw	0
	// end of initialization for R_WrongICflag
.external _MoveSPIDriverToRAM
.external _SPI_Flash_ReadAWord
