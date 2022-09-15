	//  C:\PROGRA~2\GENERA~1\UNSPID~1.1\TOOLCH~2\be::1.1.3

	//-----------------------------------------------------------
	// Compiling D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Calc\Calc.c (C:\Users\xdf\AppData\Local\Temp\ccB.3)
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
.stabs "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Calc\Calc.c",100,0,3,Ltext0

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
	     .stabs "mul2:F22",36,0,0,_mul2

	// Program Unit: mul2
.public	_mul2
_mul2: .proc	
	     .stabn 0xa6,0,0,2
	// ptemp = 0
	// old_frame_pointer = 2
	// return_address = 3
//  25  function
//  26  ----------------------------------------------------------*/
//  27  //返回值：data*2
//  28  u32 mul2(u32 data)
//  29  {

LM1:
	     .stabn 68,0,29,LM1-_mul2
BB1_PU0:	// 0x0
// BB:1 cycle count: 20
	     push BP to [SP]          	// [0:29]  
	     SP = SP - 2              	// [2:29]  
	     BP = SP + 1              	// [3:29]  
LBB2:
//  30  	pntaddr32 ptemp;
//  31  	
//  32  	ptemp.whole=data;

LM2:
	     .stabn 68,0,32,LM2-_mul2
	     R3 = [BP + 5]            	// [5:32]  data
	     R4 = [BP + 6]            	// [7:32]  data+1
	     [BP + 0] = R3            	// [9:32]  ptemp
	     [BP + 1] = R4            	// [10:32]  ptemp+1
//  33  	if(ptemp.prt.low&0x8000)//*2

LM3:
	     .stabn 68,0,33,LM3-_mul2
	     R4 = [BP + 0]            	// [11:33]  ptemp
	     R4 = R4 & 32768          	// [13:33]  
	     cmp R4, 0                	// [15:33]  
	     je L_0_2                 	// [16:33]  
BB2_PU0:	// 0xd
// BB:2 cycle count: 13
//  34  	{
//  35  		ptemp.prt.low=ptemp.prt.low<<1;

LM4:
	     .stabn 68,0,35,LM4-_mul2
	     R4 = [BP + 0]            	// [0:35]  ptemp
	     R4 = R4 lsl 1            	// [2:35]  
	     [BP + 0] = R4            	// [3:35]  ptemp
//  36  		ptemp.prt.high=(ptemp.prt.high<<1)+1;

LM5:
	     .stabn 68,0,36,LM5-_mul2
	     R4 = [BP + 1]            	// [4:36]  ptemp+1
	     R4 = R4 lsl 1            	// [6:36]  
	     R4 = R4 + 1              	// [7:36]  
	     [BP + 1] = R4            	// [8:36]  ptemp+1
	     jmp L_0_1                	// [9:36]  
L_0_2:	// 0x15
// BB:3 cycle count: 8
//  37  	}
//  38  	else
//  39  	{
//  40  		ptemp.prt.low=ptemp.prt.low<<1;

LM6:
	     .stabn 68,0,40,LM6-_mul2
	     R4 = [BP + 0]            	// [0:40]  ptemp
	     R4 = R4 lsl 1            	// [2:40]  
	     [BP + 0] = R4            	// [3:40]  ptemp
//  41  		ptemp.prt.high=ptemp.prt.high<<1;

LM7:
	     .stabn 68,0,41,LM7-_mul2
	     R4 = [BP + 1]            	// [4:41]  ptemp+1
	     R4 = R4 lsl 1            	// [6:41]  
	     [BP + 1] = R4            	// [7:41]  ptemp+1
L_0_1:	// 0x1b
// BB:4 cycle count: 10
//  42  	}
//  43  	return ptemp.whole;

LM8:
	     .stabn 68,0,43,LM8-_mul2
	     R1 = [BP + 0]            	// [0:43]  ptemp
	     R2 = [BP + 1]            	// [2:43]  ptemp+1
	     SP = SP + 2              	// [4:43]  
	     pop BP, PC from [SP]     	// [5:43]  
LBE2:
	.endp	
	     .stabs "data:p22",160,0,0,5
	     .stabn 192,0,0,LBB2-_mul2
	     .stabs "ptemp:23=u2whole:22,0,32;prt:24=s2low:20,0,16;high:20,16,16;;,0,32;;",128,0,0,0
	     .stabn 224,0,0,LBE2-_mul2
LME1:
	     .stabf LME1-_mul2
.code
	     .stabs "Low16:F20",36,0,0,_Low16

	// Program Unit: Low16
.public	_Low16
_Low16: .proc	
	     .stabn 0xa6,0,0,2
	// ptemp = 0
	// old_frame_pointer = 2
	// return_address = 3
//  44  }
//  45  //返回值：低16位数
//  46  u16 Low16(u32 data)
//  47  {

LM9:
	     .stabn 68,0,47,LM9-_Low16
BB1_PU1:	// 0x1f
// BB:1 cycle count: 19
	     push BP to [SP]          	// [0:47]  
	     SP = SP - 2              	// [2:47]  
	     BP = SP + 1              	// [3:47]  
LBB3:
//  48  	pntaddr32 ptemp;
//  49  	ptemp.whole=data;

LM10:
	     .stabn 68,0,49,LM10-_Low16
	     R3 = [BP + 5]            	// [5:49]  data
	     R4 = [BP + 6]            	// [7:49]  data+1
	     [BP + 0] = R3            	// [9:49]  ptemp
	     [BP + 1] = R4            	// [10:49]  ptemp+1
//  50  	
//  51  	return ptemp.prt.low;

LM11:
	     .stabn 68,0,51,LM11-_Low16
	     R1 = [BP + 0]            	// [11:51]  ptemp
	     SP = SP + 2              	// [13:51]  
	     pop BP, PC from [SP]     	// [14:51]  
LBE3:
	.endp	
	     .stabs "data:p22",160,0,0,5
	     .stabn 192,0,0,LBB3-_Low16
	     .stabs "ptemp:23",128,0,0,0
	     .stabn 224,0,0,LBE3-_Low16
LME2:
	     .stabf LME2-_Low16
.code
	     .stabs "High16:F20",36,0,0,_High16

	// Program Unit: High16
.public	_High16
_High16: .proc	
	     .stabn 0xa6,0,0,2
	// ptemp = 0
	// old_frame_pointer = 2
	// return_address = 3
//  52  }
//  53  //返回值：低16位数
//  54  u16 High16(u32 data)
//  55  {

LM12:
	     .stabn 68,0,55,LM12-_High16
BB1_PU2:	// 0x2a
// BB:1 cycle count: 19
	     push BP to [SP]          	// [0:55]  
	     SP = SP - 2              	// [2:55]  
	     BP = SP + 1              	// [3:55]  
LBB4:
//  56  	pntaddr32 ptemp;
//  57  	ptemp.whole=data;

LM13:
	     .stabn 68,0,57,LM13-_High16
	     R3 = [BP + 5]            	// [5:57]  data
	     R4 = [BP + 6]            	// [7:57]  data+1
	     [BP + 0] = R3            	// [9:57]  ptemp
	     [BP + 1] = R4            	// [10:57]  ptemp+1
//  58  	
//  59  	return ptemp.prt.high;

LM14:
	     .stabn 68,0,59,LM14-_High16
	     R1 = [BP + 1]            	// [11:59]  ptemp+1
	     SP = SP + 2              	// [13:59]  
	     pop BP, PC from [SP]     	// [14:59]  
LBE4:
	.endp	
	     .stabs "data:p22",160,0,0,5
	     .stabn 192,0,0,LBB4-_High16
	     .stabs "ptemp:23",128,0,0,0
	     .stabn 224,0,0,LBE4-_High16
LME3:
	     .stabf LME3-_High16
