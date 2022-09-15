	//  C:\PROGRA~2\GENERA~1\UNSPID~1.1\TOOLCH~2\be::1.1.3

	//-----------------------------------------------------------
	// Compiling D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\CTS\CTS_User.c (C:\Users\xdf\AppData\Local\Temp\ccB.3)
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
.stabs "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\CTS\CTS_User.c",100,0,3,Ltext0

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
.stabs " :T21=eMSG_LED0:0,MSG_LED1:1,\\",128,0,0,0
.stabs "MSG_LED2:2,MSG_LED3:3,;",128,0,0,0
.code
	     .stabs "Init_CTS:F18",36,0,0,_Init_CTS

	// Program Unit: Init_CTS
.public	_Init_CTS
_Init_CTS: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//  41  
//  42  
//  43  
//  44  void Init_CTS(void)
//  45  {

LM1:
	     .stabn 68,0,45,LM1-_Init_CTS
BB1_PU0:	// 0x0
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:45]  
	     BP = SP + 1              	// [2:45]  
//  46  	CTS_Initial();	

LM2:
	     .stabn 68,0,46,LM2-_Init_CTS
	     call _CTS_Initial        	// [4:46]  CTS_Initial
BB2_PU0:	// 0x5
// BB:2 cycle count: 9
//  47  	CTS_FilterSetting(1);

LM3:
	     .stabn 68,0,47,LM3-_Init_CTS
	     SP = SP - 1              	// [0:47]  
	     R3 = 1                   	// [1:47]  
	     R4 = SP + 1              	// [2:47]  
	     [R4] = R3                	// [4:47]  
	     call _CTS_FilterSetting  	// [6:47]  CTS_FilterSetting
BB3_PU0:	// 0xc
// BB:3 cycle count: 16
	     SP = SP + 1              	// [0:47]  
//  48  	
//  49  	PreCtsResult[0] = 0;

LM4:
	     .stabn 68,0,49,LM4-_Init_CTS
	     R3 = 0                   	// [1:49]  
	     DS = seg(_PreCtsResult)  	// [2:49]  PreCtsResult
	     R4 = (_PreCtsResult)     	// [3:49]  PreCtsResult
	     DS:[R4] = R3             	// [5:49]  
//  50  //	PreCtsResult[1] = 0;
//  51  //	PreCtsResult[2] = 0;
//  52  	TriggeredPad[0] = 0;

LM5:
	     .stabn 68,0,52,LM5-_Init_CTS
	     R3 = 0                   	// [7:52]  
	     DS = seg(_TriggeredPad)  	// [8:52]  TriggeredPad
	     R4 = (_TriggeredPad)     	// [9:52]  TriggeredPad
	     DS:[R4] = R3             	// [11:52]  
//  53  //	TriggeredPad[1] = 0;
//  54  //	TriggeredPad[2] = 0;	
//  55  	
//  56  	CTS_Scan();

LM6:
	     .stabn 68,0,56,LM6-_Init_CTS
	     call _CTS_Scan           	// [13:56]  CTS_Scan
BB4_PU0:	// 0x19
// BB:4 cycle count: 5
	     pop BP, PC from [SP]     	// [0:56]  
	.endp	
LME1:
	     .stabf LME1-_Init_CTS
.code
	     .stabs "TS_CTS_ServiceLoop:F4",36,0,0,_TS_CTS_ServiceLoop

	// Program Unit: TS_CTS_ServiceLoop
.public	_TS_CTS_ServiceLoop
_TS_CTS_ServiceLoop: .proc	
	     .stabn 0xa6,0,0,3
	// CTS_Result = 1
	// TouchKey1 = 0
	// old_frame_pointer = 3
	// return_address = 4
//  57  }
//  58  
//  59  /*执行周期 <= 10ms*/
//  60  unsigned  TS_CTS_ServiceLoop(void)
//  61  {

LM7:
	     .stabn 68,0,61,LM7-_TS_CTS_ServiceLoop
BB1_PU1:	// 0x1a
// BB:1 cycle count: 10
	     push BP to [SP]          	// [0:61]  
	     SP = SP - 3              	// [2:61]  
	     BP = SP + 1              	// [3:61]  
LBB2:
//  62  	u16* CTS_Result;
//  63      u16 TouchKey1 =0;

LM8:
	     .stabn 68,0,63,LM8-_TS_CTS_ServiceLoop
	     R4 = 0                   	// [5:63]  
	     [BP + 0] = R4            	// [6:63]  TouchKey1
//  64  
//  65  	CTS_ServiceLoop();

LM9:
	     .stabn 68,0,65,LM9-_TS_CTS_ServiceLoop
	     call _CTS_ServiceLoop    	// [7:65]  CTS_ServiceLoop
BB2_PU1:	// 0x22
// BB:2 cycle count: 3
//  66  	CTS_Result = CTS_GetResult();

LM10:
	     .stabn 68,0,66,LM10-_TS_CTS_ServiceLoop
	     call _CTS_GetResult      	// [0:66]  CTS_GetResult
BB3_PU1:	// 0x24
// BB:3 cycle count: 51
	     [BP + 1] = R1            	// [0:66]  CTS_Result
	     [BP + 2] = R2            	// [1:66]  CTS_Result+1
//  67  	
//  68  	// Debounce
//  69  	TriggeredPad[0] = *CTS_Result & ~PreCtsResult[0];

LM11:
	     .stabn 68,0,69,LM11-_TS_CTS_ServiceLoop
	     R3 = [BP + 1]            	// [2:69]  CTS_Result
	     R4 = [BP + 2]            	// [4:69]  CTS_Result+1
	     DS = R4                  	// [6:69]  
	     R4 = DS:[R3]             	// [7:69]  
	     DS = seg(_PreCtsResult)  	// [9:69]  PreCtsResult
	     R3 = (_PreCtsResult)     	// [10:69]  PreCtsResult
	     R3 = DS:[R3]             	// [12:69]  
	     R3 = R3 ^ 65535          	// [14:69]  
	     R4 = R4 & R3             	// [16:69]  
	     DS = seg(_TriggeredPad)  	// [17:69]  TriggeredPad
	     R3 = (_TriggeredPad)     	// [18:69]  TriggeredPad
	     DS:[R3] = R4             	// [20:69]  
//  70  //	TriggeredPad[1] = CtsResult[1] & ~PreCtsResult[1];
//  71  	PreCtsResult[0] = *CTS_Result;

LM12:
	     .stabn 68,0,71,LM12-_TS_CTS_ServiceLoop
	     R3 = [BP + 1]            	// [22:71]  CTS_Result
	     R4 = [BP + 2]            	// [24:71]  CTS_Result+1
	     DS = R4                  	// [26:71]  
	     R3 = DS:[R3]             	// [27:71]  
	     DS = seg(_PreCtsResult)  	// [29:71]  PreCtsResult
	     R4 = (_PreCtsResult)     	// [30:71]  PreCtsResult
	     DS:[R4] = R3             	// [32:71]  
//  72  //	PreCtsResult[1] = CtsResult[1];
//  73  
//  74  //	ScanPadIdx = TriggeredPad[0];
//  75  
//  76  	TouchKey1 = TriggeredPad[0];	//Pad0~15

LM13:
	     .stabn 68,0,76,LM13-_TS_CTS_ServiceLoop
	     DS = seg(_TriggeredPad)  	// [34:76]  TriggeredPad
	     R4 = (_TriggeredPad)     	// [35:76]  TriggeredPad
	     R4 = DS:[R4]             	// [37:76]  
	     [BP + 0] = R4            	// [39:76]  TouchKey1
//  77  //	TouchKey2 = TriggeredPad[1];    //Pad16~31
//  78  
//  79      TouchKey1&=0x0f;

LM14:
	     .stabn 68,0,79,LM14-_TS_CTS_ServiceLoop
	     R4 = [BP + 0]            	// [40:79]  TouchKey1
	     R4 = R4 & 15             	// [42:79]  
	     [BP + 0] = R4            	// [43:79]  TouchKey1
//  80  
//  81     if(TouchKey1)

LM15:
	     .stabn 68,0,81,LM15-_TS_CTS_ServiceLoop
	     R4 = [BP + 0]            	// [44:81]  TouchKey1
	     cmp R4, 0                	// [46:81]  
	     je L_1_3                 	// [47:81]  
BB4_PU1:	// 0x48
// BB:4 cycle count: 4
//  82     	  TouchKey1=TouchKey1<<4; //与按键值错开

LM16:
	     .stabn 68,0,82,LM16-_TS_CTS_ServiceLoop
	     R4 = [BP + 0]            	// [0:82]  TouchKey1
	     R4 = R4 lsl 4            	// [2:82]  
	     [BP + 0] = R4            	// [3:82]  TouchKey1
L_1_3:	// 0x4b
// BB:5 cycle count: 16
//  83     
//  84       TouchKey1&=Key_activeflag;

LM17:
	     .stabn 68,0,84,LM17-_TS_CTS_ServiceLoop
	     R4 = [BP + 0]            	// [0:84]  TouchKey1
	     DS = seg(_Key_activeflag)	// [2:84]  Key_activeflag
	     R3 = (_Key_activeflag)   	// [3:84]  Key_activeflag
	     R4 = R4 & DS:[R3]        	// [5:84]  
	     [BP + 0] = R4            	// [7:84]  TouchKey1
//  85       
//  86     
//  87     	return  TouchKey1;  

LM18:
	     .stabn 68,0,87,LM18-_TS_CTS_ServiceLoop
	     R1 = [BP + 0]            	// [8:87]  TouchKey1
	     SP = SP + 3              	// [10:87]  
	     pop BP, PC from [SP]     	// [11:87]  
LBE2:
	.endp	
	     .stabn 192,0,0,LBB2-_TS_CTS_ServiceLoop
	     .stabs "CTS_Result:22=*20",128,0,0,1
	     .stabs "TouchKey1:20",128,0,0,0
	     .stabn 224,0,0,LBE2-_TS_CTS_ServiceLoop
LME2:
	     .stabf LME2-_TS_CTS_ServiceLoop

.iram
	     .stabs "TriggeredPad:G23=ar3;0;0;20",32,0,0,_TriggeredPad
.public	_TriggeredPad
_TriggeredPad:	// 0x0
	.dw 1 dup(0)
	     .stabs "PreCtsResult:G23",32,0,0,_PreCtsResult
.public	_PreCtsResult
_PreCtsResult:	// 0x1
	.dw 1 dup(0)
.external _CTS_Initial
.external _CTS_FilterSetting
.external _CTS_Scan
.external _CTS_ServiceLoop
.external _CTS_GetResult
.external _Key_activeflag
