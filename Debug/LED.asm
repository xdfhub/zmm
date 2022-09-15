	//  C:\PROGRA~2\GENERA~1\UNSPID~1.1\TOOLCH~2\be::1.1.3

	//-----------------------------------------------------------
	// Compiling D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\LED.c (C:\Users\xdf\AppData\Local\Temp\ccB.3)
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
.stabs "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\LED.c",100,0,3,Ltext0

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
.code
	     .stabs "Init_LED:F18",36,0,0,_Init_LED

	// Program Unit: Init_LED
.public	_Init_LED
_Init_LED: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//  43  
//  44  volatile unsigned LED_Cnt=0;		//avoid the led flash too fast	
//  45  
//  46  void Init_LED(void)
//  47  {

LM1:
	     .stabn 68,0,47,LM1-_Init_LED
BB1_PU0:	// 0x0
// BB:1 cycle count: 51
	     push BP to [SP]          	// [0:47]  
	     BP = SP + 1              	// [2:47]  
//  48  	*P_LED_ATTRIB |= LED_ALL_BIT;

LM2:
	     .stabn 68,0,48,LM2-_Init_LED
	     R3 = 12291               	// [4:48]  
	     R4 = 0                   	// [6:48]  
	     DS = R4                  	// [7:48]  
	     R4 = DS:[R3]             	// [8:48]  
	     R2 = R4 | 240            	// [10:48]  
	     R3 = 12291               	// [12:48]  
	     R4 = 0                   	// [14:48]  
	     DS = R4                  	// [15:48]  
	     DS:[R3] = R2             	// [16:48]  
//  49  	*P_LED_DIR |= LED_ALL_BIT;

LM3:
	     .stabn 68,0,49,LM3-_Init_LED
	     R3 = 12290               	// [18:49]  
	     R4 = 0                   	// [20:49]  
	     DS = R4                  	// [21:49]  
	     R4 = DS:[R3]             	// [22:49]  
	     R2 = R4 | 240            	// [24:49]  
	     R3 = 12290               	// [26:49]  
	     R4 = 0                   	// [28:49]  
	     DS = R4                  	// [29:49]  
	     DS:[R3] = R2             	// [30:49]  
//  50  	*P_LED_BUFFER |= LED_ALL_BIT;		

LM4:
	     .stabn 68,0,50,LM4-_Init_LED
	     R3 = 12289               	// [32:50]  
	     R4 = 0                   	// [34:50]  
	     DS = R4                  	// [35:50]  
	     R4 = DS:[R3]             	// [36:50]  
	     R2 = R4 | 240            	// [38:50]  
	     R3 = 12289               	// [40:50]  
	     R4 = 0                   	// [42:50]  
	     DS = R4                  	// [43:50]  
	     DS:[R3] = R2             	// [44:50]  
	     pop BP, PC from [SP]     	// [46:50]  
	.endp	
LME1:
	     .stabf LME1-_Init_LED

.iram
	     .stabs "LED_Cnt:G4",32,0,0,_LED_Cnt
.public	_LED_Cnt
_LED_Cnt:	// 0x0
	.dw	0
	// end of initialization for LED_Cnt
.code
	     .stabs "LED_Control:F18",36,0,0,_LED_Control

	// Program Unit: LED_Control
.public	_LED_Control
_LED_Control: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//  51  }
//  52  
//  53  void LED_Control(u16 taskNum)
//  54  {

LM5:
	     .stabn 68,0,54,LM5-_LED_Control
BB1_PU1:	// 0x28
// BB:1 cycle count: 11
	     push BP to [SP]          	// [0:54]  
	     BP = SP + 1              	// [2:54]  
//  55  	switch(taskNum)	

LM6:
	     .stabn 68,0,55,LM6-_LED_Control
	     R4 = [BP + 3]            	// [4:55]  taskNum
	     cmp R4, 0                	// [6:55]  
	     je Lt_1_1                	// [7:55]  
BB2_PU1:	// 0x2e
// BB:2 cycle count: 7
	     R4 = [BP + 3]            	// [0:55]  taskNum
	     cmp R4, 1                	// [2:55]  
	     je Lt_1_3                	// [3:55]  
BB3_PU1:	// 0x31
// BB:3 cycle count: 7
	     R4 = [BP + 3]            	// [0:55]  taskNum
	     cmp R4, 2                	// [2:55]  
	     je Lt_1_4                	// [3:55]  
BB4_PU1:	// 0x34
// BB:4 cycle count: 7
	     R4 = [BP + 3]            	// [0:55]  taskNum
	     cmp R4, 3                	// [2:55]  
	     je Lt_1_5                	// [3:55]  
BB5_PU1:	// 0x37
// BB:5 cycle count: 4
	     jmp Lt_1_2               	// [0:55]  
Lt_1_1:	// 0x38
// BB:6 cycle count: 17
//  56  	{
//  57  		case 0:
//  58  			*P_LED_BUFFER ^= LED0_BIT;

LM7:
	     .stabn 68,0,58,LM7-_LED_Control
	     R3 = 12289               	// [0:58]  
	     R4 = 0                   	// [2:58]  
	     DS = R4                  	// [3:58]  
	     R4 = DS:[R3]             	// [4:58]  
	     R4 = R4 ^ 16             	// [6:58]  
	     R2 = 12289               	// [7:58]  
	     R3 = 0                   	// [9:58]  
	     DS = R3                  	// [10:58]  
	     DS:[R2] = R4             	// [11:58]  
//  59  		break;

LM8:
	     .stabn 68,0,59,LM8-_LED_Control
	     jmp Lt_1_2               	// [13:59]  
Lt_1_3:	// 0x44
// BB:7 cycle count: 17
//  60  		
//  61  		case 1:
//  62  			*P_LED_BUFFER ^= LED1_BIT;

LM9:
	     .stabn 68,0,62,LM9-_LED_Control
	     R3 = 12289               	// [0:62]  
	     R4 = 0                   	// [2:62]  
	     DS = R4                  	// [3:62]  
	     R4 = DS:[R3]             	// [4:62]  
	     R4 = R4 ^ 32             	// [6:62]  
	     R2 = 12289               	// [7:62]  
	     R3 = 0                   	// [9:62]  
	     DS = R3                  	// [10:62]  
	     DS:[R2] = R4             	// [11:62]  
//  63  		break;

LM10:
	     .stabn 68,0,63,LM10-_LED_Control
	     jmp Lt_1_2               	// [13:63]  
Lt_1_4:	// 0x50
// BB:8 cycle count: 18
//  64  
//  65  		case 2:
//  66  			*P_LED_BUFFER ^= LED2_BIT;

LM11:
	     .stabn 68,0,66,LM11-_LED_Control
	     R3 = 12289               	// [0:66]  
	     R4 = 0                   	// [2:66]  
	     DS = R4                  	// [3:66]  
	     R4 = DS:[R3]             	// [4:66]  
	     R2 = R4 ^ 64             	// [6:66]  
	     R3 = 12289               	// [8:66]  
	     R4 = 0                   	// [10:66]  
	     DS = R4                  	// [11:66]  
	     DS:[R3] = R2             	// [12:66]  
//  67  		break;

LM12:
	     .stabn 68,0,67,LM12-_LED_Control
	     jmp Lt_1_2               	// [14:67]  
Lt_1_5:	// 0x5d
// BB:9 cycle count: 18
//  68  		
//  69  		case 3:
//  70  			*P_LED_BUFFER ^= LED3_BIT;

LM13:
	     .stabn 68,0,70,LM13-_LED_Control
	     R3 = 12289               	// [0:70]  
	     R4 = 0                   	// [2:70]  
	     DS = R4                  	// [3:70]  
	     R4 = DS:[R3]             	// [4:70]  
	     R2 = R4 ^ 128            	// [6:70]  
	     R3 = 12289               	// [8:70]  
	     R4 = 0                   	// [10:70]  
	     DS = R4                  	// [11:70]  
	     DS:[R3] = R2             	// [12:70]  
//  71  		break;						

LM14:
	     .stabn 68,0,71,LM14-_LED_Control
	     jmp Lt_1_2               	// [14:71]  
Lt_1_2:	// 0x6a
Lt_1_6:	// 0x6a
// BB:10 cycle count: 5
//  72  	}

LM15:
	     .stabn 68,0,72,LM15-_LED_Control
	     pop BP, PC from [SP]     	// [0:72]  
// BB:11 cycle count: 1
	     nop                      	// [0:0]  
	.endp	
	     .stabs "taskNum:p20",160,0,0,3
LME2:
	     .stabf LME2-_LED_Control
.code
	     .stabs "Led_ON_Some:F18",36,0,0,_Led_ON_Some

	// Program Unit: Led_ON_Some
.public	_Led_ON_Some
_Led_ON_Some: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//  76  
//  77  /***************************************************************
//  78  *************************************************************/
//  79  void  Led_ON_Some(unsigned int data)
//  80  {

LM16:
	     .stabn 68,0,80,LM16-_Led_ON_Some
BB1_PU2:	// 0x6c
// BB:1 cycle count: 23
	     push BP to [SP]          	// [0:80]  
	     BP = SP + 1              	// [2:80]  
//  84  //         #else
//  85  //         		   *(P_IO_Buffer)|=data;
//  86  //         #endif
//  87  	
//  88  	      *(P_IOA_Buffer)|=data;

LM17:
	     .stabn 68,0,88,LM17-_Led_ON_Some
	     R3 = 12289               	// [4:88]  
	     R4 = 0                   	// [6:88]  
	     DS = R4                  	// [7:88]  
	     R4 = DS:[R3]             	// [8:88]  
	     R4 = R4 | [BP + 3]       	// [10:88]  data
	     R2 = 12289               	// [12:88]  
	     R3 = 0                   	// [14:88]  
	     DS = R3                  	// [15:88]  
	     DS:[R2] = R4             	// [16:88]  
	     pop BP, PC from [SP]     	// [18:88]  
	.endp	
	     .stabs "data:p4",160,0,0,3
LME3:
	     .stabf LME3-_Led_ON_Some
.code
	     .stabs "Led_OFF_Some:F18",36,0,0,_Led_OFF_Some

	// Program Unit: Led_OFF_Some
.public	_Led_OFF_Some
_Led_OFF_Some: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//  93  
//  94  /***************************************************************
//  95  *************************************************************/
//  96  void  Led_OFF_Some(unsigned int data)
//  97  {

LM18:
	     .stabn 68,0,97,LM18-_Led_OFF_Some
BB1_PU3:	// 0x7b
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:97]  
	     BP = SP + 1              	// [2:97]  
// 101  //         #else
// 102  //         		   *(P_IO_Buffer)&=~data;
// 103  //         #endif
// 104  	
// 105  	       *(P_IOA_Buffer)&=~data;

LM19:
	     .stabn 68,0,105,LM19-_Led_OFF_Some
	     R3 = 12289               	// [4:105]  
	     R4 = 0                   	// [6:105]  
	     DS = R4                  	// [7:105]  
	     R4 = DS:[R3]             	// [8:105]  
	     R3 = [BP + 3]            	// [10:105]  data
	     R3 = R3 ^ 65535          	// [12:105]  
	     R4 = R4 & R3             	// [14:105]  
	     R2 = 12289               	// [15:105]  
	     R3 = 0                   	// [17:105]  
	     DS = R3                  	// [18:105]  
	     DS:[R2] = R4             	// [19:105]  
	     pop BP, PC from [SP]     	// [21:105]  
	.endp	
	     .stabs "data:p4",160,0,0,3
LME4:
	     .stabf LME4-_Led_OFF_Some
