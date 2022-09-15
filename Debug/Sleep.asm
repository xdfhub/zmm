	//  C:\PROGRA~2\GENERA~1\UNSPID~1.1\TOOLCH~2\be::1.1.3

	//-----------------------------------------------------------
	// Compiling D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Sleep.c (C:\Users\xdf\AppData\Local\Temp\ccB.3)
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
.stabs "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Sleep.c",100,0,3,Ltext0

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
	     .stabs "Delay_Xms_PowerOn:F18",36,0,0,_Delay_Xms_PowerOn

	// Program Unit: Delay_Xms_PowerOn
.public	_Delay_Xms_PowerOn
_Delay_Xms_PowerOn: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//  21  
//  22  /**********************************************************
//  23  ***********************************************************/
//  24  void Delay_Xms_PowerOn(unsigned Xms)
//  25  {

LM1:
	     .stabn 68,0,25,LM1-_Delay_Xms_PowerOn
BB1_PU0:	// 0x0
// BB:1 cycle count: 5
	     push BP to [SP]          	// [0:25]  
	     SP = SP - 1              	// [2:25]  
	     BP = SP + 1              	// [3:25]  
L_0_7:	// 0x4
// BB:2 cycle count: 7
LBB2:
//  26  	unsigned i;
//  27  	while(Xms)

LM2:
	     .stabn 68,0,27,LM2-_Delay_Xms_PowerOn
	     R4 = [BP + 4]            	// [0:27]  Xms
	     cmp R4, 0                	// [2:27]  
	     je L_0_8                 	// [3:27]  
BB3_PU0:	// 0x7
// BB:3 cycle count: 2
//  28  	{
//  29  		i = 10;			//600= 1ms, 100 for debug

LM3:
	     .stabn 68,0,29,LM3-_Delay_Xms_PowerOn
	     R4 = 10                  	// [0:29]  
	     [BP + 0] = R4            	// [1:29]  i
Lt_0_3:	// 0x9
// BB:4 cycle count: 12
//  30  		while(i--) WatchdogClear();

LM4:
	     .stabn 68,0,30,LM4-_Delay_Xms_PowerOn
	     R4 = [BP + 0]            	// [0:30]  i
	     R4 = R4 - 1              	// [2:30]  
	     [BP + 0] = R4            	// [3:30]  i
	     R4 = [BP + 0]            	// [4:30]  i
	     cmp R4, 65535            	// [6:30]  
	     je Lt_0_4                	// [8:30]  
BB5_PU0:	// 0x10
// BB:5 cycle count: 3
	     call _WatchdogClear      	// [0:30]  WatchdogClear
BB6_PU0:	// 0x12
// BB:6 cycle count: 4
	     jmp Lt_0_3               	// [0:30]  
Lt_0_4:	// 0x13
// BB:7 cycle count: 8
//  31  		Xms--;		

LM5:
	     .stabn 68,0,31,LM5-_Delay_Xms_PowerOn
	     R4 = [BP + 4]            	// [0:31]  Xms
	     R4 = R4 - 1              	// [2:31]  
	     [BP + 4] = R4            	// [3:31]  Xms
	     jmp L_0_7                	// [4:31]  
L_0_8:	// 0x17
// BB:8 cycle count: 6
	     SP = SP + 1              	// [0:31]  
	     pop BP, PC from [SP]     	// [1:31]  
LBE2:
	.endp	
	     .stabs "Xms:p4",160,0,0,4
	     .stabn 192,0,0,LBB2-_Delay_Xms_PowerOn
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE2-_Delay_Xms_PowerOn
LME1:
	     .stabf LME1-_Delay_Xms_PowerOn
.code
	     .stabs "GetMode:F18",36,0,0,_GetMode

	// Program Unit: GetMode
.public	_GetMode
_GetMode: .proc	
	     .stabn 0xa6,0,0,2
	// Io_temp = 0
	// cnt = 1
	// old_frame_pointer = 2
	// return_address = 3
//  36  
//  37  //******************************************************
//  38  //*******************************************************
//  39  void GetMode()
//  40  {

LM6:
	     .stabn 68,0,40,LM6-_GetMode
BB1_PU1:	// 0x19
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:40]  
	     SP = SP - 2              	// [2:40]  
	     BP = SP + 1              	// [3:40]  
LBB3:
//  41  	 unsigned int Io_temp=0,cnt =0;

LM7:
	     .stabn 68,0,41,LM7-_GetMode
	     R4 = 0                   	// [5:41]  
	     [BP + 0] = R4            	// [6:41]  Io_temp
	     R4 = 0                   	// [7:41]  
	     [BP + 1] = R4            	// [8:41]  cnt
L_1_14:	// 0x21
// BB:2 cycle count: 15
//  42  		while(1) 
//  43  		{
//  44  			
//  45  			
//  46  		     if(Io_temp != (*P_IOB_Data & 0x300))// 0x380

LM8:
	     .stabn 68,0,46,LM8-_GetMode
	     R4 = [BP + 0]            	// [0:46]  Io_temp
	     R2 = 12292               	// [2:46]  
	     R3 = 0                   	// [4:46]  
	     DS = R3                  	// [5:46]  
	     R3 = DS:[R2]             	// [6:46]  
	     R3 = R3 & 768            	// [8:46]  
	     cmp R4, R3               	// [10:46]  
	     je L_1_17                	// [11:46]  
BB3_PU1:	// 0x2b
// BB:3 cycle count: 15
//  47  		     {
//  48  		     	cnt =0;

LM9:
	     .stabn 68,0,48,LM9-_GetMode
	     R4 = 0                   	// [0:48]  
	     [BP + 1] = R4            	// [1:48]  cnt
//  49  		     	Io_temp = (*P_IOB_Data & 0x300);//0x380

LM10:
	     .stabn 68,0,49,LM10-_GetMode
	     R3 = 12292               	// [2:49]  
	     R4 = 0                   	// [4:49]  
	     DS = R4                  	// [5:49]  
	     R4 = DS:[R3]             	// [6:49]  
	     R4 = R4 & 768            	// [8:49]  
	     [BP + 0] = R4            	// [10:49]  Io_temp
	     jmp L_1_16               	// [11:49]  
L_1_17:	// 0x36
// BB:4 cycle count: 12
//  50  		     }
//  51              else
//  52               {
//  53               	if(++cnt>400)//400

LM11:
	     .stabn 68,0,53,LM11-_GetMode
	     R4 = [BP + 1]            	// [0:53]  cnt
	     R4 = R4 + 1              	// [2:53]  
	     [BP + 1] = R4            	// [3:53]  cnt
	     R4 = [BP + 1]            	// [4:53]  cnt
	     cmp R4, 400              	// [6:53]  
	     jbe L_1_18               	// [8:53]  
BB5_PU1:	// 0x3d
// BB:5 cycle count: 4
//  54               	{
//  55               		 break;

LM12:
	     .stabn 68,0,55,LM12-_GetMode
	     jmp Lt_1_1               	// [0:55]  
L_1_18:	// 0x3e
L_1_16:	// 0x3e
// BB:6 cycle count: 9
//  57               	}
//  58               	
//  59               }
//  60               
//  61  	 	     Delay_Xms_PowerOn(10);

LM13:
	     .stabn 68,0,61,LM13-_GetMode
	     SP = SP - 1              	// [0:61]  
	     R3 = 10                  	// [1:61]  
	     R4 = SP + 1              	// [2:61]  
	     [R4] = R3                	// [4:61]  
	     call _Delay_Xms_PowerOn  	// [6:61]  Delay_Xms_PowerOn
BB7_PU1:	// 0x45
// BB:7 cycle count: 5
	     SP = SP + 1              	// [0:61]  
	     jmp L_1_14               	// [1:61]  
L_1_15:	// 0x47
Lt_1_1:	// 0x47
// BB:8 cycle count: 8
//  62  		}
//  63  		
//  64  	 switch(Io_temp)

LM14:
	     .stabn 68,0,64,LM14-_GetMode
	     R4 = [BP + 0]            	// [0:64]  Io_temp
	     cmp R4, 256              	// [2:64]  
	     je Lt_1_2                	// [4:64]  
BB9_PU1:	// 0x4b
// BB:9 cycle count: 8
	     R4 = [BP + 0]            	// [0:64]  Io_temp
	     cmp R4, 512              	// [2:64]  
	     je Lt_1_4                	// [4:64]  
BB10_PU1:	// 0x4f
// BB:10 cycle count: 8
	     R4 = [BP + 0]            	// [0:64]  Io_temp
	     cmp R4, 768              	// [2:64]  
	     je Lt_1_5                	// [4:64]  
BB11_PU1:	// 0x53
// BB:11 cycle count: 4
	     jmp Lt_1_6               	// [0:64]  
Lt_1_2:	// 0x54
// BB:12 cycle count: 18
//  65  	 {
//  66  	 	case 0x100:   Switch_Mode = Key_Game;   gTemp = C_StartON ;break;//VOL1Flag =1; break;//7+ Start_MAGIC_QUESTIONS_Step2

LM15:
	     .stabn 68,0,66,LM15-_GetMode
	     R3 = 512                 	// [0:66]  
	     DS = seg(_Switch_Mode)   	// [2:66]  Switch_Mode
	     R4 = (_Switch_Mode)      	// [3:66]  Switch_Mode
	     DS:[R4] = R3             	// [5:66]  
	     R3 = - 4087              	// [7:66]  
	     DS = seg(_gTemp)         	// [9:66]  gTemp
	     R4 = (_gTemp)            	// [10:66]  gTemp
	     DS:[R4] = R3             	// [12:66]  
	     jmp Lt_1_3               	// [14:66]  
Lt_1_4:	// 0x61
// BB:13 cycle count: 24
//  67  	 	case 0x200:   Switch_Mode = Key_Instruction;  gTemp = C_Demo_Mode; VOL1Flag =0;break;

LM16:
	     .stabn 68,0,67,LM16-_GetMode
	     R3 = 256                 	// [0:67]  
	     DS = seg(_Switch_Mode)   	// [2:67]  Switch_Mode
	     R4 = (_Switch_Mode)      	// [3:67]  Switch_Mode
	     DS:[R4] = R3             	// [5:67]  
	     R3 = - 4086              	// [7:67]  
	     DS = seg(_gTemp)         	// [9:67]  gTemp
	     R4 = (_gTemp)            	// [10:67]  gTemp
	     DS:[R4] = R3             	// [12:67]  
	     R3 = 0                   	// [14:67]  
	     DS = seg(_VOL1Flag)      	// [15:67]  VOL1Flag
	     R4 = (_VOL1Flag)         	// [16:67]  VOL1Flag
	     DS:[R4] = R3             	// [18:67]  
	     jmp Lt_1_3               	// [20:67]  
Lt_1_5:	// 0x73
// BB:14 cycle count: 23
//  68  	 	case 0x300:   Switch_Mode = Key_TryMe; gTemp = C_Off_Mode; VOL1Flag =0;break;	

LM17:
	     .stabn 68,0,68,LM17-_GetMode
	     R3 = 1                   	// [0:68]  
	     DS = seg(_Switch_Mode)   	// [1:68]  Switch_Mode
	     R4 = (_Switch_Mode)      	// [2:68]  Switch_Mode
	     DS:[R4] = R3             	// [4:68]  
	     R3 = - 4085              	// [6:68]  
	     DS = seg(_gTemp)         	// [8:68]  gTemp
	     R4 = (_gTemp)            	// [9:68]  gTemp
	     DS:[R4] = R3             	// [11:68]  
	     R3 = 0                   	// [13:68]  
	     DS = seg(_VOL1Flag)      	// [14:68]  VOL1Flag
	     R4 = (_VOL1Flag)         	// [15:68]  VOL1Flag
	     DS:[R4] = R3             	// [17:68]  
	     jmp Lt_1_3               	// [19:68]  
Lt_1_6:	// 0x84
// BB:15 cycle count: 18
//  69  	 	//case 0x300:   Switch_Mode = Key_Game_Family;   gTemp = C_StartON ; VOL1Flag =0;break;//VOL2  14+
//  70  	 	default:
//  71  	 	     Switch_Mode = Key_Game;   gTemp = C_StartGame ; break;

LM18:
	     .stabn 68,0,71,LM18-_GetMode
	     R3 = 512                 	// [0:71]  
	     DS = seg(_Switch_Mode)   	// [2:71]  Switch_Mode
	     R4 = (_Switch_Mode)      	// [3:71]  Switch_Mode
	     DS:[R4] = R3             	// [5:71]  
	     R3 = - 4093              	// [7:71]  
	     DS = seg(_gTemp)         	// [9:71]  gTemp
	     R4 = (_gTemp)            	// [10:71]  gTemp
	     DS:[R4] = R3             	// [12:71]  
	     jmp Lt_1_3               	// [14:71]  
Lt_1_3:	// 0x91
Lt_1_7:	// 0x91
// BB:16 cycle count: 16
//  72  	 }	
//  73  		
//  74  	Switch_Mode_Pre = Switch_Mode;

LM19:
	     .stabn 68,0,74,LM19-_GetMode
	     DS = seg(_Switch_Mode)   	// [0:74]  Switch_Mode
	     R4 = (_Switch_Mode)      	// [1:74]  Switch_Mode
	     R3 = DS:[R4]             	// [3:74]  
	     DS = seg(_Switch_Mode_Pre)	// [5:74]  Switch_Mode_Pre
	     R4 = (_Switch_Mode_Pre)  	// [6:74]  Switch_Mode_Pre
	     DS:[R4] = R3             	// [8:74]  
	     SP = SP + 2              	// [10:74]  
	     pop BP, PC from [SP]     	// [11:74]  
LBE3:
	.endp	
	     .stabn 192,0,0,LBB3-_GetMode
	     .stabs "Io_temp:4",128,0,0,0
	     .stabs "cnt:4",128,0,0,1
	     .stabn 224,0,0,LBE3-_GetMode
LME2:
	     .stabf LME2-_GetMode
.code
	     .stabs "Goto_Sleep:F18",36,0,0,_Goto_Sleep

	// Program Unit: Goto_Sleep
.public	_Goto_Sleep
_Goto_Sleep: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//  77  
//  78  
//  79  
//  80  void Goto_Sleep()
//  81  {

LM20:
	     .stabn 68,0,81,LM20-_Goto_Sleep
BB1_PU2:	// 0x9b
// BB:1 cycle count: 13
	     push BP to [SP]          	// [0:81]  
	     BP = SP + 1              	// [2:81]  
//  82    
//  83  //	  Sleep();	
//  84  	
//  85  //	System_Initial();			// System initial
//  86      Delay_Xms_PowerOn(50);

LM21:
	     .stabn 68,0,86,LM21-_Goto_Sleep
	     SP = SP - 1              	// [4:86]  
	     R3 = 50                  	// [5:86]  
	     R4 = SP + 1              	// [6:86]  
	     [R4] = R3                	// [8:86]  
	     call _Delay_Xms_PowerOn  	// [10:86]  Delay_Xms_PowerOn
BB2_PU2:	// 0xa5
// BB:2 cycle count: 4
	     SP = SP + 1              	// [0:86]  
//  87      Sys_clock_init();

LM22:
	     .stabn 68,0,87,LM22-_Goto_Sleep
	     call _Sys_clock_init     	// [1:87]  Sys_clock_init
BB3_PU2:	// 0xa8
// BB:3 cycle count: 3
//  88      
//  89      AntiCrackFun();

LM23:
	     .stabn 68,0,89,LM23-_Goto_Sleep
	     call _AntiCrackFun       	// [0:89]  AntiCrackFun
BB4_PU2:	// 0xaa
// BB:4 cycle count: 3
//  90      
//  91      
//  92      IO_init();

LM24:
	     .stabn 68,0,92,LM24-_Goto_Sleep
	     call _IO_init            	// [0:92]  IO_init
BB5_PU2:	// 0xac
// BB:5 cycle count: 9
//  93      Delay_Xms_PowerOn(10);

LM25:
	     .stabn 68,0,93,LM25-_Goto_Sleep
	     SP = SP - 1              	// [0:93]  
	     R3 = 10                  	// [1:93]  
	     R4 = SP + 1              	// [2:93]  
	     [R4] = R3                	// [4:93]  
	     call _Delay_Xms_PowerOn  	// [6:93]  Delay_Xms_PowerOn
BB6_PU2:	// 0xb3
// BB:6 cycle count: 4
	     SP = SP + 1              	// [0:93]  
//  94      
//  95      GetMode();

LM26:
	     .stabn 68,0,95,LM26-_Goto_Sleep
	     call _GetMode            	// [1:95]  GetMode
BB7_PU2:	// 0xb6
// BB:7 cycle count: 3
//  96      Time_init();

LM27:
	     .stabn 68,0,96,LM27-_Goto_Sleep
	     call _Time_init          	// [0:96]  Time_init
BB8_PU2:	// 0xb8
// BB:8 cycle count: 5
	     pop BP, PC from [SP]     	// [0:96]  
	.endp	
LME3:
	     .stabf LME3-_Goto_Sleep
.external _WatchdogClear
.external _Switch_Mode
.external _gTemp
.external _VOL1Flag
.external _Switch_Mode_Pre
.external _Sys_clock_init
.external _AntiCrackFun
.external _IO_init
.external _Time_init
