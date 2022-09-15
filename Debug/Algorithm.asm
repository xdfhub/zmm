	//  C:\PROGRA~2\GENERA~1\UNSPID~1.1\TOOLCH~2\be::1.1.3

	//-----------------------------------------------------------
	// Compiling D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Algorithm.c (C:\Users\xdf\AppData\Local\Temp\ccB.3)
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
.stabs "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Algorithm.c",100,0,3,Ltext0

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
.stabs "Event_P:t19=20=*18",128,0,0,0
.code
	     .stabs "Get_Question_Answer:F4",36,0,0,_Get_Question_Answer

	// Program Unit: Get_Question_Answer
.public	_Get_Question_Answer
_Get_Question_Answer: .proc	
	     .stabn 0xa6,0,0,2
	// Addr = 0
	// old_frame_pointer = 2
	// return_address = 3
// 429  //}
// 430  
// 431  
// 432  unsigned  Get_Question_Answer(unsigned lQuestionIdx)
// 433  {

LM1:
	     .stabn 68,0,433,LM1-_Get_Question_Answer
BB1_PU0:	// 0x0
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:433]  
	     SP = SP - 2              	// [2:433]  
	     BP = SP + 1              	// [3:433]  
LBB2:
// 434  	unsigned long Addr;
// 435  	Addr = lQuestionIdx + C_TableQ_Answer_StartAddr;

LM2:
	     .stabn 68,0,435,LM2-_Get_Question_Answer
	     R4 = [BP + 5]            	// [5:435]  lQuestionIdx
	     R4 = R4 + 24900          	// [7:435]  
	     R3 = 0                   	// [9:435]  
	     [BP + 0] = R4            	// [10:435]  Addr
	     [BP + 1] = R3            	// [11:435]  Addr+1
// 436  	return SPI_ReadAByte(Addr);

LM3:
	     .stabn 68,0,436,LM3-_Get_Question_Answer
	     SP = SP - 2              	// [12:436]  
	     R2 = [BP + 0]            	// [13:436]  Addr
	     R3 = [BP + 1]            	// [15:436]  Addr+1
	     R4 = SP + 1              	// [17:436]  
	     [R4++] = R2              	// [19:436]  
	     [R4] = R3                	// [21:436]  
	     call _SPI_ReadAByte      	// [23:436]  SPI_ReadAByte
BB2_PU0:	// 0x13
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:436]  
	     pop BP, PC from [SP]     	// [1:436]  
LBE2:
	.endp	
	     .stabs "lQuestionIdx:p4",160,0,0,5
	     .stabn 192,0,0,LBB2-_Get_Question_Answer
	     .stabs "Addr:5",128,0,0,0
	     .stabn 224,0,0,LBE2-_Get_Question_Answer
LME1:
	     .stabf LME1-_Get_Question_Answer

.iram
	     .stabs "Sleep_IO_Temp:G4",32,0,0,_Sleep_IO_Temp
.public	_Sleep_IO_Temp
_Sleep_IO_Temp:	// 0x0
	.dw	0
	// end of initialization for Sleep_IO_Temp
	     .stabs "Wakeup_IO_Temp:G4",32,0,0,_Wakeup_IO_Temp
.public	_Wakeup_IO_Temp
_Wakeup_IO_Temp:	// 0x1
	.dw	0
	// end of initialization for Wakeup_IO_Temp
	     .stabs "Wakeup_IO_Temp_debouce:G4",32,0,0,_Wakeup_IO_Temp_debouce
.public	_Wakeup_IO_Temp_debouce
_Wakeup_IO_Temp_debouce:	// 0x2
	.dw	0
	// end of initialization for Wakeup_IO_Temp_debouce
	     .stabs "TimeCnt_Key:G4",32,0,0,_TimeCnt_Key
.public	_TimeCnt_Key
_TimeCnt_Key:	// 0x3
	.dw	0
	// end of initialization for TimeCnt_Key
	     .stabs "T_Countdowncnt:G4",32,0,0,_T_Countdowncnt
.public	_T_Countdowncnt
_T_Countdowncnt:	// 0x4
	.dw	0
	// end of initialization for T_Countdowncnt
	     .stabs "Restart:G4",32,0,0,_Restart
.public	_Restart
_Restart:	// 0x5
	.dw	0
	// end of initialization for Restart
	     .stabs "Cn:G4",32,0,0,_Cn
.public	_Cn
_Cn:	// 0x6
	.dw	0
	// end of initialization for Cn
	     .stabs "Registerd_Num:G4",32,0,0,_Registerd_Num
.public	_Registerd_Num
_Registerd_Num:	// 0x7
	.dw	0
	// end of initialization for Registerd_Num
	     .stabs "T1:G4",32,0,0,_T1
.public	_T1
_T1:	// 0x8
	.dw	0
	// end of initialization for T1
	     .stabs "T2:G4",32,0,0,_T2
.public	_T2
_T2:	// 0x9
	.dw	0
	// end of initialization for T2
	     .stabs "LastCategory_Series:G21=ar3;0;99;4",32,0,0,_LastCategory_Series
.public	_LastCategory_Series
_LastCategory_Series:	// 0xa
	.dw	0
	.dw	0
	.dw	0
	.dw	0
	.dw	0
	.dw	0
	.dw	0
	.dw	0
	.dw	0
	.dw	0
	.dw	0
	.dw	0
	.dw 88 dup(0)
	// end of initialization for LastCategory_Series
	     .stabs "Round:G4",32,0,0,_Round
.public	_Round
_Round:	// 0x6e
	.dw	0
	// end of initialization for Round
	     .stabs "Player_Activing_Bit:G4",32,0,0,_Player_Activing_Bit
.public	_Player_Activing_Bit
_Player_Activing_Bit:	// 0x6f
	.dw	0
	// end of initialization for Player_Activing_Bit
	     .stabs "Player_Activing_Cnt:G4",32,0,0,_Player_Activing_Cnt
.public	_Player_Activing_Cnt
_Player_Activing_Cnt:	// 0x70
	.dw	0
	// end of initialization for Player_Activing_Cnt
	     .stabs "Player_Activing_Bit_sec:G4",32,0,0,_Player_Activing_Bit_sec
.public	_Player_Activing_Bit_sec
_Player_Activing_Bit_sec:	// 0x71
	.dw	0
	// end of initialization for Player_Activing_Bit_sec
	     .stabs "LQA:G4",32,0,0,_LQA
.public	_LQA
_LQA:	// 0x72
	.dw	0
	// end of initialization for LQA
	     .stabs "gQuestionIdx:G4",32,0,0,_gQuestionIdx
.public	_gQuestionIdx
_gQuestionIdx:	// 0x73
	.dw	65535
	// end of initialization for gQuestionIdx
	     .stabs "gQuestionIdx_1:G4",32,0,0,_gQuestionIdx_1
.public	_gQuestionIdx_1
_gQuestionIdx_1:	// 0x74
	.dw	65535
	// end of initialization for gQuestionIdx_1
	     .stabs "Player_Point:G22=ar3;0;9;1",32,0,0,_Player_Point
.public	_Player_Point
_Player_Point:	// 0xb1
	.dw	0
	.dw	0
	.dw	0
	.dw	0
	.dw 6 dup(0)
	// end of initialization for Player_Point
	     .stabs "Rounds:G22",32,0,0,_Rounds
.public	_Rounds
_Rounds:	// 0xbb
	.dw	0
	.dw	0
	.dw	0
	.dw	0
	.dw 6 dup(0)
	// end of initialization for Rounds
	     .stabs "Pingame:G23=ar3;0;1;4",32,0,0,_Pingame
.public	_Pingame
_Pingame:	// 0xc5
	.dw	0
	.dw 1 dup(0)
	// end of initialization for Pingame
	     .stabs "Pselected:G23",32,0,0,_Pselected
.public	_Pselected
_Pselected:	// 0xc7
	.dw	0
	.dw 1 dup(0)
	// end of initialization for Pselected
	     .stabs "R_QuestionNum:G4",32,0,0,_R_QuestionNum
.public	_R_QuestionNum
_R_QuestionNum:	// 0xc9
	.dw	0
	// end of initialization for R_QuestionNum
	     .stabs "Timeout_cnt:G4",32,0,0,_Timeout_cnt
.public	_Timeout_cnt
_Timeout_cnt:	// 0xca
	.dw	0
	// end of initialization for Timeout_cnt
	     .stabs "Key_activeflag:G4",32,0,0,_Key_activeflag
.public	_Key_activeflag
_Key_activeflag:	// 0xcb
	.dw	0
	// end of initialization for Key_activeflag
	     .stabs "TwoKey_temp:G4",32,0,0,_TwoKey_temp
.public	_TwoKey_temp
_TwoKey_temp:	// 0xcc
	.dw	0
	// end of initialization for TwoKey_temp
	     .stabs "Registered_Play_Status:G4",32,0,0,_Registered_Play_Status
.public	_Registered_Play_Status
_Registered_Play_Status:	// 0xcd
	.dw	0
	// end of initialization for Registered_Play_Status
	     .stabs "QuestionCycle:G24=ar3;0;3;4",32,0,0,_QuestionCycle
.public	_QuestionCycle
_QuestionCycle:	// 0xce
	.dw	0
	.dw 3 dup(0)
	// end of initialization for QuestionCycle
	     .stabs "Pre_Active_Player:G4",32,0,0,_Pre_Active_Player
.public	_Pre_Active_Player
_Pre_Active_Player:	// 0xd2
	.dw	0
	// end of initialization for Pre_Active_Player
	     .stabs "Cur_Active_Player:G4",32,0,0,_Cur_Active_Player
.public	_Cur_Active_Player
_Cur_Active_Player:	// 0xd3
	.dw	0
	// end of initialization for Cur_Active_Player
	     .stabs "Key_Event:G4",32,0,0,_Key_Event
.public	_Key_Event
_Key_Event:	// 0xd4
	.dw	0
	// end of initialization for Key_Event
	     .stabs "BlinkFlag_Data:G4",32,0,0,_BlinkFlag_Data
.public	_BlinkFlag_Data
_BlinkFlag_Data:	// 0xd5
	.dw	0
	// end of initialization for BlinkFlag_Data
	     .stabs "Eventflag:G4",32,0,0,_Eventflag
.public	_Eventflag
_Eventflag:	// 0xd6
	.dw	0
	// end of initialization for Eventflag
	     .stabs "Answer_Right_Player:G4",32,0,0,_Answer_Right_Player
.public	_Answer_Right_Player
_Answer_Right_Player:	// 0xd7
	.dw	0
	// end of initialization for Answer_Right_Player
	     .stabs "Answer_Wrong_Player:G4",32,0,0,_Answer_Wrong_Player
.public	_Answer_Wrong_Player
_Answer_Wrong_Player:	// 0xd8
	.dw	0
	// end of initialization for Answer_Wrong_Player
	     .stabs "No_Answer_Player:G4",32,0,0,_No_Answer_Player
.public	_No_Answer_Player
_No_Answer_Player:	// 0xd9
	.dw	0
	// end of initialization for No_Answer_Player
	     .stabs "Question_Answer:G4",32,0,0,_Question_Answer
.public	_Question_Answer
_Question_Answer:	// 0xda
	.dw	0
	// end of initialization for Question_Answer
	     .stabs "SeriesAcnt:G4",32,0,0,_SeriesAcnt
.public	_SeriesAcnt
_SeriesAcnt:	// 0xdb
	.dw	0
	// end of initialization for SeriesAcnt
	     .stabs "SeriesBcnt:G4",32,0,0,_SeriesBcnt
.public	_SeriesBcnt
_SeriesBcnt:	// 0xdc
	.dw	0
	// end of initialization for SeriesBcnt
	     .stabs "Series_eventsolo:G4",32,0,0,_Series_eventsolo
.public	_Series_eventsolo
_Series_eventsolo:	// 0xdd
	.dw	0
	// end of initialization for Series_eventsolo
	     .stabs "Leader_Player:G4",32,0,0,_Leader_Player
.public	_Leader_Player
_Leader_Player:	// 0xde
	.dw	0
	// end of initialization for Leader_Player
	     .stabs "Lowest_Player:G4",32,0,0,_Lowest_Player
.public	_Lowest_Player
_Lowest_Player:	// 0xdf
	.dw	0
	// end of initialization for Lowest_Player
	     .stabs "Leader_Player_pre:G4",32,0,0,_Leader_Player_pre
.public	_Leader_Player_pre
_Leader_Player_pre:	// 0xe0
	.dw	0
	// end of initialization for Leader_Player_pre
	     .stabs "Special_temp:G4",32,0,0,_Special_temp
.public	_Special_temp
_Special_temp:	// 0xe1
	.dw	0
	// end of initialization for Special_temp
	     .stabs "L14flag:G4",32,0,0,_L14flag
.public	_L14flag
_L14flag:	// 0xe2
	.dw	0
	// end of initialization for L14flag
	     .stabs "Higgest_T:G1",32,0,0,_Higgest_T
.public	_Higgest_T
_Higgest_T:	// 0xe3
	.dw	0
	// end of initialization for Higgest_T
	     .stabs "Lowest_T:G1",32,0,0,_Lowest_T
.public	_Lowest_T
_Lowest_T:	// 0xe4
	.dw	0
	// end of initialization for Lowest_T
	     .stabs "Cycle_Timeout_cnt:G4",32,0,0,_Cycle_Timeout_cnt
.public	_Cycle_Timeout_cnt
_Cycle_Timeout_cnt:	// 0xe5
	.dw	0
	// end of initialization for Cycle_Timeout_cnt
	     .stabs "Key_TrueFlase_Buffer:G4",32,0,0,_Key_TrueFlase_Buffer
.public	_Key_TrueFlase_Buffer
_Key_TrueFlase_Buffer:	// 0xe6
	.dw	0
	// end of initialization for Key_TrueFlase_Buffer
	     .stabs "Question_Quality_Last:G25=ar3;0;5;4",32,0,0,_Question_Quality_Last
.public	_Question_Quality_Last
_Question_Quality_Last:	// 0xe7
	.dw	0
	.dw 5 dup(0)
	// end of initialization for Question_Quality_Last
	     .stabs "Last2Cat:G23",32,0,0,_Last2Cat
.public	_Last2Cat
_Last2Cat:	// 0xed
	.dw	0
	.dw 1 dup(0)
	// end of initialization for Last2Cat
	     .stabs "PlayScoresFlag:G4",32,0,0,_PlayScoresFlag
.public	_PlayScoresFlag
_PlayScoresFlag:	// 0xef
	.dw	0
	// end of initialization for PlayScoresFlag
	     .stabs "Sleepflag:G4",32,0,0,_Sleepflag
.public	_Sleepflag
_Sleepflag:	// 0xf0
	.dw	0
	// end of initialization for Sleepflag
	     .stabs "Tieflag:G4",32,0,0,_Tieflag
.public	_Tieflag
_Tieflag:	// 0xf1
	.dw	0
	// end of initialization for Tieflag
	     .stabs "Cheater_SeletQu_Flag:G4",32,0,0,_Cheater_SeletQu_Flag
.public	_Cheater_SeletQu_Flag
_Cheater_SeletQu_Flag:	// 0xf2
	.dw	0
	// end of initialization for Cheater_SeletQu_Flag
	     .stabs "VOL1Flag:G4",32,0,0,_VOL1Flag
.public	_VOL1Flag
_VOL1Flag:	// 0xf3
	.dw	0
	// end of initialization for VOL1Flag
	     .stabs "Speed_BonusFlag:G4",32,0,0,_Speed_BonusFlag
.public	_Speed_BonusFlag
_Speed_BonusFlag:	// 0xf4
	.dw	0
	// end of initialization for Speed_BonusFlag
	     .stabs "Time_Countdown:G4",32,0,0,_Time_Countdown
.public	_Time_Countdown
_Time_Countdown:	// 0xf5
	.dw	0
	// end of initialization for Time_Countdown
	     .stabs "firstFlag_23b:G4",32,0,0,_firstFlag_23b
.public	_firstFlag_23b
_firstFlag_23b:	// 0xf6
	.dw	0
	// end of initialization for firstFlag_23b
	     .stabs "FreeKick_Flag:G4",32,0,0,_FreeKick_Flag
.public	_FreeKick_Flag
_FreeKick_Flag:	// 0xf7
	.dw	0
	// end of initialization for FreeKick_Flag
	     .stabs "Dis_Player:G4",32,0,0,_Dis_Player
.public	_Dis_Player
_Dis_Player:	// 0xf8
	.dw	0
	// end of initialization for Dis_Player
	     .stabs "Countdownflag:G4",32,0,0,_Countdownflag
.public	_Countdownflag
_Countdownflag:	// 0xf9
	.dw	0
	// end of initialization for Countdownflag
	     .stabs "Soloflag:G4",32,0,0,_Soloflag
.public	_Soloflag
_Soloflag:	// 0xfa
	.dw	0
	// end of initialization for Soloflag
	     .stabs "Difficulty:G4",32,0,0,_Difficulty
.public	_Difficulty
_Difficulty:	// 0xfb
	.dw	0
	// end of initialization for Difficulty
	     .stabs "Diff_int:G4",32,0,0,_Diff_int
.public	_Diff_int
_Diff_int:	// 0xfc
	.dw	0
	// end of initialization for Diff_int
	     .stabs "qestion_quality:G4",32,0,0,_qestion_quality
.public	_qestion_quality
_qestion_quality:	// 0xfd
	.dw	0
	// end of initialization for qestion_quality
	     .stabs "Ca:G1",32,0,0,_Ca
.public	_Ca
_Ca:	// 0xfe
	.dw	0
	// end of initialization for Ca
	     .stabs "RecordV:G1",32,0,0,_RecordV
.public	_RecordV
_RecordV:	// 0xff
	.dw	0
	// end of initialization for RecordV
	     .stabs "Temp_Registered_Play_Select:G4",32,0,0,_Temp_Registered_Play_Select
.public	_Temp_Registered_Play_Select
_Temp_Registered_Play_Select:	// 0x100
	.dw	0
	// end of initialization for Temp_Registered_Play_Select
	     .stabs "Key_buffer_First_temp:G4",32,0,0,_Key_buffer_First_temp
.public	_Key_buffer_First_temp
_Key_buffer_First_temp:	// 0x101
	.dw	0
	// end of initialization for Key_buffer_First_temp
	     .stabs "LFXFlag_Data:G4",32,0,0,_LFXFlag_Data
.public	_LFXFlag_Data
_LFXFlag_Data:	// 0x102
	.dw	0
	// end of initialization for LFXFlag_Data
	     .stabs "LFX_Data_Cnt:G4",32,0,0,_LFX_Data_Cnt
.public	_LFX_Data_Cnt
_LFX_Data_Cnt:	// 0x103
	.dw	0
	// end of initialization for LFX_Data_Cnt
	     .stabs "VolumeEnable:G4",32,0,0,_VolumeEnable
.public	_VolumeEnable
_VolumeEnable:	// 0x104
	.dw	0
	// end of initialization for VolumeEnable
	     .stabs "NextCnt:G4",32,0,0,_NextCnt
.public	_NextCnt
_NextCnt:	// 0x105
	.dw	0
	// end of initialization for NextCnt
	     .stabs "TooLate_Cnt:G4",32,0,0,_TooLate_Cnt
.public	_TooLate_Cnt
_TooLate_Cnt:	// 0x106
	.dw	0
	// end of initialization for TooLate_Cnt
	     .stabs "TooLatesolo_Cnt:G4",32,0,0,_TooLatesolo_Cnt
.public	_TooLatesolo_Cnt
_TooLatesolo_Cnt:	// 0x107
	.dw	0
	// end of initialization for TooLatesolo_Cnt
	     .stabs "Record:G4",32,0,0,_Record
.public	_Record
_Record:	// 0x108
	.dw	0
	// end of initialization for Record
	     .stabs "R_E:G4",32,0,0,_R_E
.public	_R_E
_R_E:	// 0x109
	.dw	0
	// end of initialization for R_E
	     .stabs "NumRounds:G4",32,0,0,_NumRounds
.public	_NumRounds
_NumRounds:	// 0x10a
	.dw	0
	// end of initialization for NumRounds
	     .stabs "CurrentRound:G4",32,0,0,_CurrentRound
.public	_CurrentRound
_CurrentRound:	// 0x10b
	.dw	0
	// end of initialization for CurrentRound
	     .stabs "SinceLastE:G4",32,0,0,_SinceLastE
.public	_SinceLastE
_SinceLastE:	// 0x10c
	.dw	0
	// end of initialization for SinceLastE
	     .stabs "R_2SLoop:G4",32,0,0,_R_2SLoop
.public	_R_2SLoop
_R_2SLoop:	// 0x10d
	.dw	0
	// end of initialization for R_2SLoop
	     .stabs "Tie:G4",32,0,0,_Tie
.public	_Tie
_Tie:	// 0x10e
	.dw	0
	// end of initialization for Tie
	     .stabs "End20flag:G4",32,0,0,_End20flag
.public	_End20flag
_End20flag:	// 0x10f
	.dw	0
	// end of initialization for End20flag
	     .stabs "Answerflag:G4",32,0,0,_Answerflag
.public	_Answerflag
_Answerflag:	// 0x110
	.dw	0
	// end of initialization for Answerflag
	     .stabs "Last2Catcnt:G4",32,0,0,_Last2Catcnt
.public	_Last2Catcnt
_Last2Catcnt:	// 0x111
	.dw	0
	// end of initialization for Last2Catcnt
	     .stabs "Timeout_cnt_En:G4",32,0,0,_Timeout_cnt_En
.public	_Timeout_cnt_En
_Timeout_cnt_En:	// 0x112
	.dw	0
	// end of initialization for Timeout_cnt_En
	     .stabs "Event_F:G26=ar3;0;11;19",32,0,0,_Event_F
.public	_Event_F
_Event_F:	// 0x113
	.dw 24 dup(0)
	// end of initialization for Event_F
	     .stabs "LFX_Data:G24",32,0,0,_LFX_Data
.public	_LFX_Data
_LFX_Data:	// 0x12b
	.dw	16
	.dw	32
	.dw	64
	.dw	128
	// end of initialization for LFX_Data

.nb_data
	     .stabs "Led_Data_Play:G27=ar3;0;4;4",32,0,0,_Led_Data_Play
.public	_Led_Data_Play
_Led_Data_Play:	// 0x0
	.dw	16
	.dw	32
	.dw	64
	.dw	128
	.dw	0
	// end of initialization for Led_Data_Play
	     .stabs "BitMap:G28=ar3;0;-1;4",32,0,0,_BitMap
.public	_BitMap
_BitMap:	// 0x5
	.dw	1
	.dw	2
	.dw	4
	.dw	8
	.dw	16
	.dw	32
	.dw	64
	.dw	128
	.dw	256
	.dw	512
	.dw	1024
	.dw	2048
	.dw	4096
	.dw	8192
	.dw	16384
	.dw	32768
	// end of initialization for BitMap
.code
	     .stabs "Get_Question_Category:F4",36,0,0,_Get_Question_Category

	// Program Unit: Get_Question_Category
.public	_Get_Question_Category
_Get_Question_Category: .proc	
	     .stabn 0xa6,0,0,2
	// Addr = 0
	// old_frame_pointer = 2
	// return_address = 3
// 444  //}
// 445  
// 446  
// 447  unsigned  Get_Question_Category(unsigned lQuestionIdx)
// 448  {

LM4:
	     .stabn 68,0,448,LM4-_Get_Question_Category
BB1_PU1:	// 0x15
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:448]  
	     SP = SP - 2              	// [2:448]  
	     BP = SP + 1              	// [3:448]  
LBB3:
// 449  	unsigned long Addr;
// 450  	Addr = lQuestionIdx + C_TableCategory;

LM5:
	     .stabn 68,0,450,LM5-_Get_Question_Category
	     R4 = [BP + 5]            	// [5:450]  lQuestionIdx
	     R4 = R4 + 10500          	// [7:450]  
	     R3 = 0                   	// [9:450]  
	     [BP + 0] = R4            	// [10:450]  Addr
	     [BP + 1] = R3            	// [11:450]  Addr+1
// 451  	return SPI_ReadAByte(Addr);

LM6:
	     .stabn 68,0,451,LM6-_Get_Question_Category
	     SP = SP - 2              	// [12:451]  
	     R2 = [BP + 0]            	// [13:451]  Addr
	     R3 = [BP + 1]            	// [15:451]  Addr+1
	     R4 = SP + 1              	// [17:451]  
	     [R4++] = R2              	// [19:451]  
	     [R4] = R3                	// [21:451]  
	     call _SPI_ReadAByte      	// [23:451]  SPI_ReadAByte
BB2_PU1:	// 0x28
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:451]  
	     pop BP, PC from [SP]     	// [1:451]  
LBE3:
	.endp	
	     .stabs "lQuestionIdx:p4",160,0,0,5
	     .stabn 192,0,0,LBB3-_Get_Question_Category
	     .stabs "Addr:5",128,0,0,0
	     .stabn 224,0,0,LBE3-_Get_Question_Category
LME2:
	     .stabf LME2-_Get_Question_Category
.code
	     .stabs "Get_Question_Sound:F4",36,0,0,_Get_Question_Sound

	// Program Unit: Get_Question_Sound
.public	_Get_Question_Sound
_Get_Question_Sound: .proc	
	     .stabn 0xa6,0,0,2
	// Addr = 0
	// old_frame_pointer = 2
	// return_address = 3
// 452  }
// 453  
// 454  unsigned  Get_Question_Sound(unsigned lQuestionIdx)
// 455  {

LM7:
	     .stabn 68,0,455,LM7-_Get_Question_Sound
BB1_PU2:	// 0x2a
// BB:1 cycle count: 27
	     push BP to [SP]          	// [0:455]  
	     SP = SP - 2              	// [2:455]  
	     BP = SP + 1              	// [3:455]  
LBB4:
// 456  	unsigned long Addr;
// 457  	Addr = lQuestionIdx*2 + C_TableQ_Sound_StartAddr;

LM8:
	     .stabn 68,0,457,LM8-_Get_Question_Sound
	     R4 = [BP + 5]            	// [5:457]  lQuestionIdx
	     R4 = R4 lsl 1            	// [7:457]  
	     R4 = R4 + 5000           	// [8:457]  
	     R3 = 0                   	// [10:457]  
	     [BP + 0] = R4            	// [11:457]  Addr
	     [BP + 1] = R3            	// [12:457]  Addr+1
// 458  	return SPI_ReadAWord_Big(Addr);

LM9:
	     .stabn 68,0,458,LM9-_Get_Question_Sound
	     SP = SP - 2              	// [13:458]  
	     R2 = [BP + 0]            	// [14:458]  Addr
	     R3 = [BP + 1]            	// [16:458]  Addr+1
	     R4 = SP + 1              	// [18:458]  
	     [R4++] = R2              	// [20:458]  
	     [R4] = R3                	// [22:458]  
	     call _SPI_ReadAWord_Big  	// [24:458]  SPI_ReadAWord_Big
BB2_PU2:	// 0x3e
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:458]  
	     pop BP, PC from [SP]     	// [1:458]  
LBE4:
	.endp	
	     .stabs "lQuestionIdx:p4",160,0,0,5
	     .stabn 192,0,0,LBB4-_Get_Question_Sound
	     .stabs "Addr:5",128,0,0,0
	     .stabn 224,0,0,LBE4-_Get_Question_Sound
LME3:
	     .stabf LME3-_Get_Question_Sound
.code
	     .stabs "Get_Question_Mode:F4",36,0,0,_Get_Question_Mode

	// Program Unit: Get_Question_Mode
.public	_Get_Question_Mode
_Get_Question_Mode: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
// 460  
// 461  
// 462  
// 463  unsigned  Get_Question_Mode(unsigned lQuestionIdx)
// 464  {

LM10:
	     .stabn 68,0,464,LM10-_Get_Question_Mode
BB1_PU3:	// 0x40
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:464]  
	     BP = SP + 1              	// [2:464]  
	     pop BP, PC from [SP]     	// [4:464]  
	.endp	
	     .stabs "lQuestionIdx:p4",160,0,0,3
LME4:
	     .stabf LME4-_Get_Question_Mode
.code
	     .stabs "GetQuality:F4",36,0,0,_GetQuality

	// Program Unit: GetQuality
.public	_GetQuality
_GetQuality: .proc	
	     .stabn 0xa6,0,0,2
	// Addr = 0
	// old_frame_pointer = 2
	// return_address = 3
// 474  //	return SPI_ReadAByte(Addr);
// 475  //}
// 476  
// 477  unsigned GetQuality(unsigned lQuestionIdx)
// 478  {

LM11:
	     .stabn 68,0,478,LM11-_GetQuality
BB1_PU4:	// 0x44
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:478]  
	     SP = SP - 2              	// [2:478]  
	     BP = SP + 1              	// [3:478]  
LBB5:
// 479  	unsigned long Addr;
// 480  	Addr = lQuestionIdx + C_TableQualityStartAddr;

LM12:
	     .stabn 68,0,480,LM12-_GetQuality
	     R4 = [BP + 5]            	// [5:480]  lQuestionIdx
	     R4 = R4 + 10000          	// [7:480]  
	     R3 = 0                   	// [9:480]  
	     [BP + 0] = R4            	// [10:480]  Addr
	     [BP + 1] = R3            	// [11:480]  Addr+1
// 481  	return SPI_ReadAByte(Addr);

LM13:
	     .stabn 68,0,481,LM13-_GetQuality
	     SP = SP - 2              	// [12:481]  
	     R2 = [BP + 0]            	// [13:481]  Addr
	     R3 = [BP + 1]            	// [15:481]  Addr+1
	     R4 = SP + 1              	// [17:481]  
	     [R4++] = R2              	// [19:481]  
	     [R4] = R3                	// [21:481]  
	     call _SPI_ReadAByte      	// [23:481]  SPI_ReadAByte
BB2_PU4:	// 0x57
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:481]  
	     pop BP, PC from [SP]     	// [1:481]  
LBE5:
	.endp	
	     .stabs "lQuestionIdx:p4",160,0,0,5
	     .stabn 192,0,0,LBB5-_GetQuality
	     .stabs "Addr:5",128,0,0,0
	     .stabn 224,0,0,LBE5-_GetQuality
LME5:
	     .stabf LME5-_GetQuality
.code
	     .stabs "GetSwitch:F4",36,0,0,_GetSwitch

	// Program Unit: GetSwitch
.public	_GetSwitch
_GetSwitch: .proc	
	     .stabn 0xa6,0,0,2
	// Addr = 0
	// old_frame_pointer = 2
	// return_address = 3
// 483  
// 484  
// 485  
// 486  unsigned GetSwitch(unsigned lQuestionIdx)
// 487  {

LM14:
	     .stabn 68,0,487,LM14-_GetSwitch
BB1_PU5:	// 0x59
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:487]  
	     SP = SP - 2              	// [2:487]  
	     BP = SP + 1              	// [3:487]  
LBB6:
// 488  	unsigned long Addr;
// 489  	Addr = lQuestionIdx + C_TableSwitchStartAddr;

LM15:
	     .stabn 68,0,489,LM15-_GetSwitch
	     R4 = [BP + 5]            	// [5:489]  lQuestionIdx
	     R4 = R4 + 29300          	// [7:489]  
	     R3 = 0                   	// [9:489]  
	     [BP + 0] = R4            	// [10:489]  Addr
	     [BP + 1] = R3            	// [11:489]  Addr+1
// 490  	return SPI_ReadAByte(Addr);

LM16:
	     .stabn 68,0,490,LM16-_GetSwitch
	     SP = SP - 2              	// [12:490]  
	     R2 = [BP + 0]            	// [13:490]  Addr
	     R3 = [BP + 1]            	// [15:490]  Addr+1
	     R4 = SP + 1              	// [17:490]  
	     [R4++] = R2              	// [19:490]  
	     [R4] = R3                	// [21:490]  
	     call _SPI_ReadAByte      	// [23:490]  SPI_ReadAByte
BB2_PU5:	// 0x6c
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:490]  
	     pop BP, PC from [SP]     	// [1:490]  
LBE6:
	.endp	
	     .stabs "lQuestionIdx:p4",160,0,0,5
	     .stabn 192,0,0,LBB6-_GetSwitch
	     .stabs "Addr:5",128,0,0,0
	     .stabn 224,0,0,LBE6-_GetSwitch
LME6:
	     .stabf LME6-_GetSwitch
.code
	     .stabs "GetDifficulty:F4",36,0,0,_GetDifficulty

	// Program Unit: GetDifficulty
.public	_GetDifficulty
_GetDifficulty: .proc	
	     .stabn 0xa6,0,0,2
	// Addr = 0
	// old_frame_pointer = 2
	// return_address = 3
// 491  }
// 492  
// 493  unsigned GetDifficulty(unsigned lQuestionIdx)
// 494  {

LM17:
	     .stabn 68,0,494,LM17-_GetDifficulty
BB1_PU6:	// 0x6e
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:494]  
	     SP = SP - 2              	// [2:494]  
	     BP = SP + 1              	// [3:494]  
LBB7:
// 495  	unsigned long Addr;
// 496  	Addr = lQuestionIdx + C_TableDiffiStartAddr;

LM18:
	     .stabn 68,0,496,LM18-_GetDifficulty
	     R4 = [BP + 5]            	// [5:496]  lQuestionIdx
	     R4 = R4 + 32000          	// [7:496]  
	     R3 = 0                   	// [9:496]  
	     [BP + 0] = R4            	// [10:496]  Addr
	     [BP + 1] = R3            	// [11:496]  Addr+1
// 497  	return SPI_ReadAByte(Addr);

LM19:
	     .stabn 68,0,497,LM19-_GetDifficulty
	     SP = SP - 2              	// [12:497]  
	     R2 = [BP + 0]            	// [13:497]  Addr
	     R3 = [BP + 1]            	// [15:497]  Addr+1
	     R4 = SP + 1              	// [17:497]  
	     [R4++] = R2              	// [19:497]  
	     [R4] = R3                	// [21:497]  
	     call _SPI_ReadAByte      	// [23:497]  SPI_ReadAByte
BB2_PU6:	// 0x81
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:497]  
	     pop BP, PC from [SP]     	// [1:497]  
LBE7:
	.endp	
	     .stabs "lQuestionIdx:p4",160,0,0,5
	     .stabn 192,0,0,LBB7-_GetDifficulty
	     .stabs "Addr:5",128,0,0,0
	     .stabn 224,0,0,LBE7-_GetDifficulty
LME7:
	     .stabf LME7-_GetDifficulty
.code
	     .stabs "GetMovies:F4",36,0,0,_GetMovies

	// Program Unit: GetMovies
.public	_GetMovies
_GetMovies: .proc	
	     .stabn 0xa6,0,0,2
	// Addr = 0
	// old_frame_pointer = 2
	// return_address = 3
// 499  
// 500  
// 501  
// 502  unsigned GetMovies(unsigned lQuestionIdx)
// 503  {

LM20:
	     .stabn 68,0,503,LM20-_GetMovies
BB1_PU7:	// 0x83
// BB:1 cycle count: 27
	     push BP to [SP]          	// [0:503]  
	     SP = SP - 2              	// [2:503]  
	     BP = SP + 1              	// [3:503]  
LBB8:
// 504  	unsigned long Addr;
// 505  	Addr = lQuestionIdx + C_TableMoviesStartAddr;

LM21:
	     .stabn 68,0,505,LM21-_GetMovies
	     R3 = [BP + 5]            	// [5:505]  lQuestionIdx
	     R4 = 0                   	// [7:505]  
	     R3 = R3 + 34000          	// [8:505]  
	     R4 = R4 + 0, Carry       	// [10:505]  
	     [BP + 0] = R3            	// [11:505]  Addr
	     [BP + 1] = R4            	// [12:505]  Addr+1
// 506  	return SPI_ReadAByte(Addr);

LM22:
	     .stabn 68,0,506,LM22-_GetMovies
	     SP = SP - 2              	// [13:506]  
	     R2 = [BP + 0]            	// [14:506]  Addr
	     R3 = [BP + 1]            	// [16:506]  Addr+1
	     R4 = SP + 1              	// [18:506]  
	     [R4++] = R2              	// [20:506]  
	     [R4] = R3                	// [22:506]  
	     call _SPI_ReadAByte      	// [24:506]  SPI_ReadAByte
BB2_PU7:	// 0x97
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:506]  
	     pop BP, PC from [SP]     	// [1:506]  
LBE8:
	.endp	
	     .stabs "lQuestionIdx:p4",160,0,0,5
	     .stabn 192,0,0,LBB8-_GetMovies
	     .stabs "Addr:5",128,0,0,0
	     .stabn 224,0,0,LBE8-_GetMovies
LME8:
	     .stabf LME8-_GetMovies
.code
	     .stabs "delay_time:F4",36,0,0,_delay_time

	// Program Unit: delay_time
.public	_delay_time
_delay_time: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
// 837  
// 838  /*************************************************************
// 839  **************************************************************/
// 840  unsigned  delay_time(unsigned T_cnt)
// 841  {

LM23:
	     .stabn 68,0,841,LM23-_delay_time
BB1_PU8:	// 0x99
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:841]  
	     BP = SP + 1              	// [2:841]  
// 842  
// 843  	TimeCnt =1;

LM24:
	     .stabn 68,0,843,LM24-_delay_time
	     R3 = 1                   	// [4:843]  
	     DS = seg(_TimeCnt)       	// [5:843]  TimeCnt
	     R4 = (_TimeCnt)          	// [6:843]  TimeCnt
	     DS:[R4] = R3             	// [8:843]  
// 844  	Time_Countdown = T_cnt;

LM25:
	     .stabn 68,0,844,LM25-_delay_time
	     R3 = [BP + 3]            	// [10:844]  T_cnt
	     DS = seg(_Time_Countdown)	// [12:844]  Time_Countdown
	     R4 = (_Time_Countdown)   	// [13:844]  Time_Countdown
	     DS:[R4] = R3             	// [15:844]  
// 845  
// 846  	return Get_Key(1);

LM26:
	     .stabn 68,0,846,LM26-_delay_time
	     SP = SP - 1              	// [17:846]  
	     R3 = 1                   	// [18:846]  
	     R4 = SP + 1              	// [19:846]  
	     [R4] = R3                	// [21:846]  
	     call _Get_Key            	// [23:846]  Get_Key
BB2_PU8:	// 0xad
// BB:2 cycle count: 6
	     SP = SP + 1              	// [0:846]  
	     pop BP, PC from [SP]     	// [1:846]  
	.endp	
	     .stabs "T_cnt:p4",160,0,0,3
LME9:
	     .stabf LME9-_delay_time
.code
	     .stabs "Get_LQA:F4",36,0,0,_Get_LQA

	// Program Unit: Get_LQA
.public	_Get_LQA
_Get_LQA: .proc	
	     .stabn 0xa6,0,0,3
	// temp = 0
	// i = 1
	// old_frame_pointer = 3
	// return_address = 4
	// lra_spill_temp_0 = 2
//1018  //==================================================
//1019  /*************************************************************
//1020  *************************************************************/
//1021  unsigned Get_LQA(void)
//1022  {

LM27:
	     .stabn 68,0,1022,LM27-_Get_LQA
BB1_PU9:	// 0xaf
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1022]  
	     SP = SP - 3              	// [2:1022]  
	     BP = SP + 1              	// [3:1022]  
LBB9:
//1023  	unsigned temp = 0;

LM28:
	     .stabn 68,0,1023,LM28-_Get_LQA
	     R4 = 0                   	// [5:1023]  
	     [BP + 0] = R4            	// [6:1023]  temp
//1024  	unsigned i = 0;

LM29:
	     .stabn 68,0,1024,LM29-_Get_LQA
	     R4 = 0                   	// [7:1024]  
	     [BP + 1] = R4            	// [8:1024]  i
L_9_1:	// 0xb7
// BB:2 cycle count: 12
//1025  	while(i<R_QuestionNum)

LM30:
	     .stabn 68,0,1025,LM30-_Get_LQA
	     R3 = [BP + 1]            	// [0:1025]  i
	     DS = seg(_R_QuestionNum) 	// [2:1025]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:1025]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:1025]  
	     cmp R3, R4               	// [7:1025]  
	     jae L_9_2                	// [8:1025]  
BB3_PU9:	// 0xbe
// BB:3 cycle count: 33
//1026  	{
//1027  		 if (BitMap[i%16]&QuestionStatus_LQA[i/16]) temp+=1;

LM31:
	     .stabn 68,0,1027,LM31-_Get_LQA
	     R4 = [BP + 1]            	// [0:1027]  i
	     R4 = R4 & 15             	// [2:1027]  
	     R3 = 0                   	// [3:1027]  
	     R1 = (_BitMap)           	// [4:1027]  BitMap
	     R2 = seg(_BitMap)        	// [6:1027]  BitMap
	     R4 = R4 + R1             	// [7:1027]  
	     R3 = R3 + R2, Carry      	// [8:1027]  
	     DS = R3                  	// [9:1027]  
	     R4 = DS:[R4]             	// [10:1027]  
	     [BP + 2] = R4            	// [12:1027]  lra_spill_temp_0
	     R4 = [BP + 1]            	// [13:1027]  i
	     R4 = R4 lsr 4            	// [15:1027]  
	     R3 = 0                   	// [16:1027]  
	     R1 = (_QuestionStatus_LQA)	// [17:1027]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [19:1027]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [20:1027]  
	     R3 = R3 + R2, Carry      	// [21:1027]  
	     DS = R3                  	// [22:1027]  
	     R3 = DS:[R4]             	// [23:1027]  
	     R4 = [BP + 2]            	// [25:1027]  lra_spill_temp_0
	     R4 = R4 & R3             	// [27:1027]  
	     cmp R4, 0                	// [28:1027]  
	     je L_9_3                 	// [29:1027]  
BB4_PU9:	// 0xd7
// BB:4 cycle count: 4
	     R4 = [BP + 0]            	// [0:1027]  temp
	     R4 = R4 + 1              	// [2:1027]  
	     [BP + 0] = R4            	// [3:1027]  temp
L_9_3:	// 0xda
// BB:5 cycle count: 8
//1028  		 i++;

LM32:
	     .stabn 68,0,1028,LM32-_Get_LQA
	     R4 = [BP + 1]            	// [0:1028]  i
	     R4 = R4 + 1              	// [2:1028]  
	     [BP + 1] = R4            	// [3:1028]  i
	     jmp L_9_1                	// [4:1028]  
L_9_2:	// 0xde
// BB:6 cycle count: 8
//1029  	}
//1030  	return temp;

LM33:
	     .stabn 68,0,1030,LM33-_Get_LQA
	     R1 = [BP + 0]            	// [0:1030]  temp
	     SP = SP + 3              	// [2:1030]  
	     pop BP, PC from [SP]     	// [3:1030]  
LBE9:
	.endp	
	     .stabn 192,0,0,LBB9-_Get_LQA
	     .stabs "temp:4",128,0,0,0
	     .stabs "i:4",128,0,0,1
	     .stabn 224,0,0,LBE9-_Get_LQA
LME10:
	     .stabf LME10-_Get_LQA
.code
	     .stabs "Get_LQ:F4",36,0,0,_Get_LQ

	// Program Unit: Get_LQ
.public	_Get_LQ
_Get_LQ: .proc	
	     .stabn 0xa6,0,0,3
	// temp = 0
	// i = 1
	// old_frame_pointer = 3
	// return_address = 4
	// lra_spill_temp_1 = 2
//1033  //==================================================
//1034  //
//1035  //==================================================
//1036  unsigned Get_LQ(void)
//1037  {

LM34:
	     .stabn 68,0,1037,LM34-_Get_LQ
BB1_PU10:	// 0xe1
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1037]  
	     SP = SP - 3              	// [2:1037]  
	     BP = SP + 1              	// [3:1037]  
LBB10:
//1038  	unsigned temp = 0;

LM35:
	     .stabn 68,0,1038,LM35-_Get_LQ
	     R4 = 0                   	// [5:1038]  
	     [BP + 0] = R4            	// [6:1038]  temp
//1039  	unsigned i = 0;

LM36:
	     .stabn 68,0,1039,LM36-_Get_LQ
	     R4 = 0                   	// [7:1039]  
	     [BP + 1] = R4            	// [8:1039]  i
L_10_1:	// 0xe9
// BB:2 cycle count: 12
//1040  	while(i<R_QuestionNum)

LM37:
	     .stabn 68,0,1040,LM37-_Get_LQ
	     R3 = [BP + 1]            	// [0:1040]  i
	     DS = seg(_R_QuestionNum) 	// [2:1040]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:1040]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:1040]  
	     cmp R3, R4               	// [7:1040]  
	     jae L_10_2               	// [8:1040]  
BB3_PU10:	// 0xf0
// BB:3 cycle count: 33
//1041  	{
//1042  		 if (BitMap[i%16]&QuestionStatus_LQ[i/16]) temp+=1;

LM38:
	     .stabn 68,0,1042,LM38-_Get_LQ
	     R4 = [BP + 1]            	// [0:1042]  i
	     R4 = R4 & 15             	// [2:1042]  
	     R3 = 0                   	// [3:1042]  
	     R1 = (_BitMap)           	// [4:1042]  BitMap
	     R2 = seg(_BitMap)        	// [6:1042]  BitMap
	     R4 = R4 + R1             	// [7:1042]  
	     R3 = R3 + R2, Carry      	// [8:1042]  
	     DS = R3                  	// [9:1042]  
	     R4 = DS:[R4]             	// [10:1042]  
	     [BP + 2] = R4            	// [12:1042]  lra_spill_temp_1
	     R4 = [BP + 1]            	// [13:1042]  i
	     R4 = R4 lsr 4            	// [15:1042]  
	     R3 = 0                   	// [16:1042]  
	     R1 = (_QuestionStatus_LQ)	// [17:1042]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [19:1042]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [20:1042]  
	     R3 = R3 + R2, Carry      	// [21:1042]  
	     DS = R3                  	// [22:1042]  
	     R3 = DS:[R4]             	// [23:1042]  
	     R4 = [BP + 2]            	// [25:1042]  lra_spill_temp_1
	     R4 = R4 & R3             	// [27:1042]  
	     cmp R4, 0                	// [28:1042]  
	     je L_10_3                	// [29:1042]  
BB4_PU10:	// 0x109
// BB:4 cycle count: 4
	     R4 = [BP + 0]            	// [0:1042]  temp
	     R4 = R4 + 1              	// [2:1042]  
	     [BP + 0] = R4            	// [3:1042]  temp
L_10_3:	// 0x10c
// BB:5 cycle count: 8
//1043  		 i++;

LM39:
	     .stabn 68,0,1043,LM39-_Get_LQ
	     R4 = [BP + 1]            	// [0:1043]  i
	     R4 = R4 + 1              	// [2:1043]  
	     [BP + 1] = R4            	// [3:1043]  i
	     jmp L_10_1               	// [4:1043]  
L_10_2:	// 0x110
// BB:6 cycle count: 8
//1044  	}
//1045  	return temp;

LM40:
	     .stabn 68,0,1045,LM40-_Get_LQ
	     R1 = [BP + 0]            	// [0:1045]  temp
	     SP = SP + 3              	// [2:1045]  
	     pop BP, PC from [SP]     	// [3:1045]  
LBE10:
	.endp	
	     .stabn 192,0,0,LBB10-_Get_LQ
	     .stabs "temp:4",128,0,0,0
	     .stabs "i:4",128,0,0,1
	     .stabn 224,0,0,LBE10-_Get_LQ
LME11:
	     .stabf LME11-_Get_LQ
.code
	     .stabs "Get_Length_Pingame:F4",36,0,0,_Get_Length_Pingame

	// Program Unit: Get_Length_Pingame
.public	_Get_Length_Pingame
_Get_Length_Pingame: .proc	
	     .stabn 0xa6,0,0,3
	// temp = 0
	// i = 1
	// old_frame_pointer = 3
	// return_address = 4
	// lra_spill_temp_2 = 2
//1051  
//1052  /*************************************************************
//1053  *************************************************************/
//1054  unsigned int Get_Length_Pingame(void)
//1055  {

LM41:
	     .stabn 68,0,1055,LM41-_Get_Length_Pingame
BB1_PU11:	// 0x113
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1055]  
	     SP = SP - 3              	// [2:1055]  
	     BP = SP + 1              	// [3:1055]  
LBB11:
//1056  	unsigned temp = 0;

LM42:
	     .stabn 68,0,1056,LM42-_Get_Length_Pingame
	     R4 = 0                   	// [5:1056]  
	     [BP + 0] = R4            	// [6:1056]  temp
//1057  	unsigned i = 0;

LM43:
	     .stabn 68,0,1057,LM43-_Get_Length_Pingame
	     R4 = 0                   	// [7:1057]  
	     [BP + 1] = R4            	// [8:1057]  i
L_11_1:	// 0x11b
// BB:2 cycle count: 12
//1058  	while(i<Registerd_Num)

LM44:
	     .stabn 68,0,1058,LM44-_Get_Length_Pingame
	     R3 = [BP + 1]            	// [0:1058]  i
	     DS = seg(_Registerd_Num) 	// [2:1058]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [3:1058]  Registerd_Num
	     R4 = DS:[R4]             	// [5:1058]  
	     cmp R3, R4               	// [7:1058]  
	     jae L_11_2               	// [8:1058]  
BB3_PU11:	// 0x122
// BB:3 cycle count: 33
//1059  	{
//1060  		 if (BitMap[i%16]&Pingame[i/16]) temp+=1;

LM45:
	     .stabn 68,0,1060,LM45-_Get_Length_Pingame
	     R4 = [BP + 1]            	// [0:1060]  i
	     R4 = R4 & 15             	// [2:1060]  
	     R3 = 0                   	// [3:1060]  
	     R1 = (_BitMap)           	// [4:1060]  BitMap
	     R2 = seg(_BitMap)        	// [6:1060]  BitMap
	     R4 = R4 + R1             	// [7:1060]  
	     R3 = R3 + R2, Carry      	// [8:1060]  
	     DS = R3                  	// [9:1060]  
	     R4 = DS:[R4]             	// [10:1060]  
	     [BP + 2] = R4            	// [12:1060]  lra_spill_temp_2
	     R4 = [BP + 1]            	// [13:1060]  i
	     R4 = R4 lsr 4            	// [15:1060]  
	     R3 = 0                   	// [16:1060]  
	     R1 = (_Pingame)          	// [17:1060]  Pingame
	     R2 = seg(_Pingame)       	// [19:1060]  Pingame
	     R4 = R4 + R1             	// [20:1060]  
	     R3 = R3 + R2, Carry      	// [21:1060]  
	     DS = R3                  	// [22:1060]  
	     R3 = DS:[R4]             	// [23:1060]  
	     R4 = [BP + 2]            	// [25:1060]  lra_spill_temp_2
	     R4 = R4 & R3             	// [27:1060]  
	     cmp R4, 0                	// [28:1060]  
	     je L_11_3                	// [29:1060]  
BB4_PU11:	// 0x13b
// BB:4 cycle count: 4
	     R4 = [BP + 0]            	// [0:1060]  temp
	     R4 = R4 + 1              	// [2:1060]  
	     [BP + 0] = R4            	// [3:1060]  temp
L_11_3:	// 0x13e
// BB:5 cycle count: 8
//1061  		 i++;

LM46:
	     .stabn 68,0,1061,LM46-_Get_Length_Pingame
	     R4 = [BP + 1]            	// [0:1061]  i
	     R4 = R4 + 1              	// [2:1061]  
	     [BP + 1] = R4            	// [3:1061]  i
	     jmp L_11_1               	// [4:1061]  
L_11_2:	// 0x142
// BB:6 cycle count: 8
//1062  	}
//1063  	return temp;

LM47:
	     .stabn 68,0,1063,LM47-_Get_Length_Pingame
	     R1 = [BP + 0]            	// [0:1063]  temp
	     SP = SP + 3              	// [2:1063]  
	     pop BP, PC from [SP]     	// [3:1063]  
LBE11:
	.endp	
	     .stabn 192,0,0,LBB11-_Get_Length_Pingame
	     .stabs "temp:4",128,0,0,0
	     .stabs "i:4",128,0,0,1
	     .stabn 224,0,0,LBE11-_Get_Length_Pingame
LME12:
	     .stabf LME12-_Get_Length_Pingame
.code
	     .stabs "Select_Pingamerandom_4:F4",36,0,0,_Select_Pingamerandom_4

	// Program Unit: Select_Pingamerandom_4
.public	_Select_Pingamerandom_4
_Select_Pingamerandom_4: .proc	
	     .stabn 0xa6,0,0,4
	// i = 0
	// j = 1
	// temp = 2
	// old_frame_pointer = 4
	// return_address = 5
	// lra_spill_temp_3 = 3
//1064  }
//1065  
//1066  
//1067  unsigned Select_Pingamerandom_4(unsigned Index)
//1068  {

LM48:
	     .stabn 68,0,1068,LM48-_Select_Pingamerandom_4
BB1_PU12:	// 0x145
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1068]  
	     SP = SP - 4              	// [2:1068]  
	     BP = SP + 1              	// [3:1068]  
LBB12:
//1069  	unsigned i= 0;

LM49:
	     .stabn 68,0,1069,LM49-_Select_Pingamerandom_4
	     R4 = 0                   	// [5:1069]  
	     [BP + 0] = R4            	// [6:1069]  i
//1070  	unsigned j= 0;

LM50:
	     .stabn 68,0,1070,LM50-_Select_Pingamerandom_4
	     R4 = 0                   	// [7:1070]  
	     [BP + 1] = R4            	// [8:1070]  j
L_12_1:	// 0x14d
// BB:2 cycle count: 12
//1071  	unsigned temp;
//1072  
//1073  	while(i<Registerd_Num)

LM51:
	     .stabn 68,0,1073,LM51-_Select_Pingamerandom_4
	     R3 = [BP + 0]            	// [0:1073]  i
	     DS = seg(_Registerd_Num) 	// [2:1073]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [3:1073]  Registerd_Num
	     R4 = DS:[R4]             	// [5:1073]  
	     cmp R3, R4               	// [7:1073]  
	     jae L_12_2               	// [8:1073]  
BB3_PU12:	// 0x154
// BB:3 cycle count: 36
//1074  	{
//1075  		 temp = BitMap[i%16]&Pingame[i/16];

LM52:
	     .stabn 68,0,1075,LM52-_Select_Pingamerandom_4
	     R4 = [BP + 0]            	// [0:1075]  i
	     R4 = R4 & 15             	// [2:1075]  
	     R3 = 0                   	// [3:1075]  
	     R1 = (_BitMap)           	// [4:1075]  BitMap
	     R2 = seg(_BitMap)        	// [6:1075]  BitMap
	     R4 = R4 + R1             	// [7:1075]  
	     R3 = R3 + R2, Carry      	// [8:1075]  
	     DS = R3                  	// [9:1075]  
	     R4 = DS:[R4]             	// [10:1075]  
	     [BP + 3] = R4            	// [12:1075]  lra_spill_temp_3
	     R4 = [BP + 0]            	// [13:1075]  i
	     R4 = R4 lsr 4            	// [15:1075]  
	     R3 = 0                   	// [16:1075]  
	     R1 = (_Pingame)          	// [17:1075]  Pingame
	     R2 = seg(_Pingame)       	// [19:1075]  Pingame
	     R4 = R4 + R1             	// [20:1075]  
	     R3 = R3 + R2, Carry      	// [21:1075]  
	     DS = R3                  	// [22:1075]  
	     R3 = DS:[R4]             	// [23:1075]  
	     R4 = [BP + 3]            	// [25:1075]  lra_spill_temp_3
	     R4 = R4 & R3             	// [27:1075]  
	     [BP + 2] = R4            	// [28:1075]  temp
//1076  		 if (temp)

LM53:
	     .stabn 68,0,1076,LM53-_Select_Pingamerandom_4
	     R4 = [BP + 2]            	// [29:1076]  temp
	     cmp R4, 0                	// [31:1076]  
	     je L_12_3                	// [32:1076]  
BB4_PU12:	// 0x16f
// BB:4 cycle count: 9
//1077  		 {
//1078  		 	if (j == Index) return i;

LM54:
	     .stabn 68,0,1078,LM54-_Select_Pingamerandom_4
	     R3 = [BP + 7]            	// [0:1078]  Index
	     R4 = [BP + 1]            	// [2:1078]  j
	     cmp R3, R4               	// [4:1078]  
	     jne L_12_4               	// [5:1078]  
BB5_PU12:	// 0x173
// BB:5 cycle count: 8
	     R1 = [BP + 0]            	// [0:1078]  i
	     SP = SP + 4              	// [2:1078]  
	     pop BP, PC from [SP]     	// [3:1078]  
L_12_4:	// 0x176
// BB:6 cycle count: 4
//1079  		 	j++;

LM55:
	     .stabn 68,0,1079,LM55-_Select_Pingamerandom_4
	     R4 = [BP + 1]            	// [0:1079]  j
	     R4 = R4 + 1              	// [2:1079]  
	     [BP + 1] = R4            	// [3:1079]  j
L_12_3:	// 0x179
// BB:7 cycle count: 8
//1080  		 }
//1081  		 i++;

LM56:
	     .stabn 68,0,1081,LM56-_Select_Pingamerandom_4
	     R4 = [BP + 0]            	// [0:1081]  i
	     R4 = R4 + 1              	// [2:1081]  
	     [BP + 0] = R4            	// [3:1081]  i
	     jmp L_12_1               	// [4:1081]  
L_12_2:	// 0x17d
// BB:8 cycle count: 8
//1082  	}
//1083  	return i;

LM57:
	     .stabn 68,0,1083,LM57-_Select_Pingamerandom_4
	     R1 = [BP + 0]            	// [0:1083]  i
	     SP = SP + 4              	// [2:1083]  
	     pop BP, PC from [SP]     	// [3:1083]  
LBE12:
	.endp	
	     .stabs "Index:p4",160,0,0,7
	     .stabn 192,0,0,LBB12-_Select_Pingamerandom_4
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabs "temp:4",128,0,0,2
	     .stabn 224,0,0,LBE12-_Select_Pingamerandom_4
LME13:
	     .stabf LME13-_Select_Pingamerandom_4
.code
	     .stabs "SelectNextPingame:F4",36,0,0,_SelectNextPingame

	// Program Unit: SelectNextPingame
.public	_SelectNextPingame
_SelectNextPingame: .proc	
	     .stabn 0xa6,0,0,3
	// temp = 0
	// i = 1
	// old_frame_pointer = 3
	// return_address = 4
	// lra_spill_temp_4 = 2
//1087  
//1088  /*************************************************************
//1089  *************************************************************/
//1090  unsigned int SelectNextPingame(unsigned cnt)
//1091  {

LM58:
	     .stabn 68,0,1091,LM58-_SelectNextPingame
BB1_PU13:	// 0x180
// BB:1 cycle count: 25
	     push BP to [SP]          	// [0:1091]  
	     SP = SP - 3              	// [2:1091]  
	     BP = SP + 1              	// [3:1091]  
LBB13:
//1092  	unsigned temp = 0;

LM59:
	     .stabn 68,0,1092,LM59-_SelectNextPingame
	     R4 = 0                   	// [5:1092]  
	     [BP + 0] = R4            	// [6:1092]  temp
//1093  	unsigned i = 0;

LM60:
	     .stabn 68,0,1093,LM60-_SelectNextPingame
	     R4 = 0                   	// [7:1093]  
	     [BP + 1] = R4            	// [8:1093]  i
//1094  	
//1095  	cnt++;

LM61:
	     .stabn 68,0,1095,LM61-_SelectNextPingame
	     R4 = [BP + 6]            	// [9:1095]  cnt
	     R4 = R4 + 1              	// [11:1095]  
	     [BP + 6] = R4            	// [12:1095]  cnt
//1096  	if(cnt>=Registerd_Num)

LM62:
	     .stabn 68,0,1096,LM62-_SelectNextPingame
	     R3 = [BP + 6]            	// [13:1096]  cnt
	     DS = seg(_Registerd_Num) 	// [15:1096]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [16:1096]  Registerd_Num
	     R4 = DS:[R4]             	// [18:1096]  
	     cmp R3, R4               	// [20:1096]  
	     jb L_13_1                	// [21:1096]  
BB2_PU13:	// 0x192
// BB:2 cycle count: 2
//1097  		 cnt = 0;

LM63:
	     .stabn 68,0,1097,LM63-_SelectNextPingame
	     R4 = 0                   	// [0:1097]  
	     [BP + 6] = R4            	// [1:1097]  cnt
L_13_1:	// 0x194
L_13_2:	// 0x194
// BB:3 cycle count: 12
//1098  	
//1099  	while(cnt<Registerd_Num)

LM64:
	     .stabn 68,0,1099,LM64-_SelectNextPingame
	     R3 = [BP + 6]            	// [0:1099]  cnt
	     DS = seg(_Registerd_Num) 	// [2:1099]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [3:1099]  Registerd_Num
	     R4 = DS:[R4]             	// [5:1099]  
	     cmp R3, R4               	// [7:1099]  
	     jae L_13_3               	// [8:1099]  
BB4_PU13:	// 0x19b
// BB:4 cycle count: 33
//1100  	{
//1101  		 if(BitMap[cnt%16]&Pingame[cnt/16]) 

LM65:
	     .stabn 68,0,1101,LM65-_SelectNextPingame
	     R4 = [BP + 6]            	// [0:1101]  cnt
	     R4 = R4 & 15             	// [2:1101]  
	     R3 = 0                   	// [3:1101]  
	     R1 = (_BitMap)           	// [4:1101]  BitMap
	     R2 = seg(_BitMap)        	// [6:1101]  BitMap
	     R4 = R4 + R1             	// [7:1101]  
	     R3 = R3 + R2, Carry      	// [8:1101]  
	     DS = R3                  	// [9:1101]  
	     R4 = DS:[R4]             	// [10:1101]  
	     [BP + 2] = R4            	// [12:1101]  lra_spill_temp_4
	     R4 = [BP + 6]            	// [13:1101]  cnt
	     R4 = R4 lsr 4            	// [15:1101]  
	     R3 = 0                   	// [16:1101]  
	     R1 = (_Pingame)          	// [17:1101]  Pingame
	     R2 = seg(_Pingame)       	// [19:1101]  Pingame
	     R4 = R4 + R1             	// [20:1101]  
	     R3 = R3 + R2, Carry      	// [21:1101]  
	     DS = R3                  	// [22:1101]  
	     R3 = DS:[R4]             	// [23:1101]  
	     R4 = [BP + 2]            	// [25:1101]  lra_spill_temp_4
	     R4 = R4 & R3             	// [27:1101]  
	     cmp R4, 0                	// [28:1101]  
	     je L_13_4                	// [29:1101]  
BB5_PU13:	// 0x1b4
// BB:5 cycle count: 8
//1102  		 { 		       
//1103  		    //	temp+=1;
//1104  		    	
//1105  		   //if(cnt==temp)	
//1106  		       return cnt;	

LM66:
	     .stabn 68,0,1106,LM66-_SelectNextPingame
	     R1 = [BP + 6]            	// [0:1106]  cnt
	     SP = SP + 3              	// [2:1106]  
	     pop BP, PC from [SP]     	// [3:1106]  
L_13_4:	// 0x1b7
// BB:6 cycle count: 16
//1107  	 	
//1108  		 }
//1109  		 cnt++;

LM67:
	     .stabn 68,0,1109,LM67-_SelectNextPingame
	     R4 = [BP + 6]            	// [0:1109]  cnt
	     R4 = R4 + 1              	// [2:1109]  
	     [BP + 6] = R4            	// [3:1109]  cnt
//1110  		 
//1111  	    if(cnt==Registerd_Num)	 

LM68:
	     .stabn 68,0,1111,LM68-_SelectNextPingame
	     R3 = [BP + 6]            	// [4:1111]  cnt
	     DS = seg(_Registerd_Num) 	// [6:1111]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [7:1111]  Registerd_Num
	     R4 = DS:[R4]             	// [9:1111]  
	     cmp R3, R4               	// [11:1111]  
	     jne L_13_5               	// [12:1111]  
BB7_PU13:	// 0x1c1
// BB:7 cycle count: 2
//1112  		    {
//1113  		       cnt =0;	

LM69:
	     .stabn 68,0,1113,LM69-_SelectNextPingame
	     R4 = 0                   	// [0:1113]  
	     [BP + 6] = R4            	// [1:1113]  cnt
L_13_5:	// 0x1c3
// BB:8 cycle count: 4

LM70:
	     .stabn 68,0,1111,LM70-_SelectNextPingame
	     jmp L_13_2               	// [0:1111]  
L_13_3:	// 0x1c4
// BB:9 cycle count: 8
//1114  		       //temp = 0;	
//1115  		    }
//1116  		 
//1117  	}
//1118  	return temp;

LM71:
	     .stabn 68,0,1118,LM71-_SelectNextPingame
	     R1 = [BP + 0]            	// [0:1118]  temp
	     SP = SP + 3              	// [2:1118]  
	     pop BP, PC from [SP]     	// [3:1118]  
LBE13:
	.endp	
	     .stabs "cnt:p4",160,0,0,6
	     .stabn 192,0,0,LBB13-_SelectNextPingame
	     .stabs "temp:4",128,0,0,0
	     .stabs "i:4",128,0,0,1
	     .stabn 224,0,0,LBE13-_SelectNextPingame
LME14:
	     .stabf LME14-_SelectNextPingame
.code
	     .stabs "Select_Pingamerandom:F4",36,0,0,_Select_Pingamerandom

	// Program Unit: Select_Pingamerandom
.public	_Select_Pingamerandom
_Select_Pingamerandom: .proc	
	     .stabn 0xa6,0,0,10
	// i = 0
	// j = 1
	// temp1 = 2
	// All_enable = 3
	// Index = 4
	// __save_expr_temp_0 = 5
	// __save_expr_temp_1 = 6
	// __save_expr_temp_2 = 7
	// old_frame_pointer = 10
	// return_address = 11
	// lra_spill_temp_5 = 8
	// lra_spill_temp_6 = 9
//1120  
//1121  /*************************************************************
//1122  *************************************************************/
//1123  unsigned Select_Pingamerandom()
//1124  {

LM72:
	     .stabn 68,0,1124,LM72-_Select_Pingamerandom
BB1_PU14:	// 0x1c7
// BB:1 cycle count: 15
	     push BP to [SP]          	// [0:1124]  
	     SP = SP - 10             	// [2:1124]  
	     BP = SP + 1              	// [3:1124]  
LBB14:
//1125  	unsigned i= 0;

LM73:
	     .stabn 68,0,1125,LM73-_Select_Pingamerandom
	     R4 = 0                   	// [5:1125]  
	     [BP + 0] = R4            	// [6:1125]  i
//1126  	unsigned j= 0;

LM74:
	     .stabn 68,0,1126,LM74-_Select_Pingamerandom
	     R4 = 0                   	// [7:1126]  
	     [BP + 1] = R4            	// [8:1126]  j
//1127  	unsigned temp1 =0;

LM75:
	     .stabn 68,0,1127,LM75-_Select_Pingamerandom
	     R4 = 0                   	// [9:1127]  
	     [BP + 2] = R4            	// [10:1127]  temp1
//1128  	unsigned All_enable=0;

LM76:
	     .stabn 68,0,1128,LM76-_Select_Pingamerandom
	     R4 = 0                   	// [11:1128]  
	     [BP + 3] = R4            	// [12:1128]  All_enable
//1129  	unsigned Index=0;

LM77:
	     .stabn 68,0,1129,LM77-_Select_Pingamerandom
	     R4 = 0                   	// [13:1129]  
	     [BP + 4] = R4            	// [14:1129]  Index
L_14_1:	// 0x1d5
// BB:2 cycle count: 12
//1130  
//1131  	while(i<Registerd_Num)

LM78:
	     .stabn 68,0,1131,LM78-_Select_Pingamerandom
	     R3 = [BP + 0]            	// [0:1131]  i
	     DS = seg(_Registerd_Num) 	// [2:1131]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [3:1131]  Registerd_Num
	     R4 = DS:[R4]             	// [5:1131]  
	     cmp R3, R4               	// [7:1131]  
	     jb BB3_PU14              	// [8:1131]  
BB27_PU14:	// 0x1dc
// BB:27 cycle count: 3
	     goto L_14_2              	// [0:0]  
BB3_PU14:	// 0x1de
// BB:3 cycle count: 33
//1132  	{
//1133  		 //temp = Pingame[i%16]&Pingame[i/16];
//1134  		 if(BitMap[i%16]&Pingame[i/16])

LM79:
	     .stabn 68,0,1134,LM79-_Select_Pingamerandom
	     R4 = [BP + 0]            	// [0:1134]  i
	     R4 = R4 & 15             	// [2:1134]  
	     R3 = 0                   	// [3:1134]  
	     R1 = (_BitMap)           	// [4:1134]  BitMap
	     R2 = seg(_BitMap)        	// [6:1134]  BitMap
	     R4 = R4 + R1             	// [7:1134]  
	     R3 = R3 + R2, Carry      	// [8:1134]  
	     DS = R3                  	// [9:1134]  
	     R4 = DS:[R4]             	// [10:1134]  
	     [BP + 8] = R4            	// [12:1134]  lra_spill_temp_5
	     R4 = [BP + 0]            	// [13:1134]  i
	     R4 = R4 lsr 4            	// [15:1134]  
	     R3 = 0                   	// [16:1134]  
	     R1 = (_Pingame)          	// [17:1134]  Pingame
	     R2 = seg(_Pingame)       	// [19:1134]  Pingame
	     R4 = R4 + R1             	// [20:1134]  
	     R3 = R3 + R2, Carry      	// [21:1134]  
	     DS = R3                  	// [22:1134]  
	     R3 = DS:[R4]             	// [23:1134]  
	     R4 = [BP + 8]            	// [25:1134]  lra_spill_temp_5
	     R4 = R4 & R3             	// [27:1134]  
	     cmp R4, 0                	// [28:1134]  
	     jne BB4_PU14             	// [29:1134]  
BB30_PU14:	// 0x1f7
// BB:30 cycle count: 3
	     goto L_14_3              	// [0:0]  
BB4_PU14:	// 0x1f9
// BB:4 cycle count: 33
//1135  		 {
//1136  		     if(((BitMap[i%16]&Pselected[i/16])==0)||(All_enable==2))	

LM80:
	     .stabn 68,0,1136,LM80-_Select_Pingamerandom
	     R4 = [BP + 0]            	// [0:1136]  i
	     R4 = R4 & 15             	// [2:1136]  
	     R3 = 0                   	// [3:1136]  
	     R1 = (_BitMap)           	// [4:1136]  BitMap
	     R2 = seg(_BitMap)        	// [6:1136]  BitMap
	     R4 = R4 + R1             	// [7:1136]  
	     R3 = R3 + R2, Carry      	// [8:1136]  
	     DS = R3                  	// [9:1136]  
	     R4 = DS:[R4]             	// [10:1136]  
	     [BP + 8] = R4            	// [12:1136]  lra_spill_temp_5
	     R4 = [BP + 0]            	// [13:1136]  i
	     R4 = R4 lsr 4            	// [15:1136]  
	     R3 = 0                   	// [16:1136]  
	     R1 = (_Pselected)        	// [17:1136]  Pselected
	     R2 = seg(_Pselected)     	// [19:1136]  Pselected
	     R4 = R4 + R1             	// [20:1136]  
	     R3 = R3 + R2, Carry      	// [21:1136]  
	     DS = R3                  	// [22:1136]  
	     R3 = DS:[R4]             	// [23:1136]  
	     R4 = [BP + 8]            	// [25:1136]  lra_spill_temp_5
	     R4 = R4 & R3             	// [27:1136]  
	     cmp R4, 0                	// [28:1136]  
	     je L_14_5                	// [29:1136]  
BB5_PU14:	// 0x212
// BB:5 cycle count: 7
	     R4 = [BP + 3]            	// [0:1136]  All_enable
	     cmp R4, 2                	// [2:1136]  
	     jne L_14_4               	// [3:1136]  
L_14_5:	// 0x215
// BB:6 cycle count: 7
//1137  		 	 {
//1138  			 			 	
//1139  			 	  if(temp1)

LM81:
	     .stabn 68,0,1139,LM81-_Select_Pingamerandom
	     R4 = [BP + 2]            	// [0:1139]  temp1
	     cmp R4, 0                	// [2:1139]  
	     je L_14_6                	// [3:1139]  
BB7_PU14:	// 0x218
// BB:7 cycle count: 9
//1140  			 	  {
//1141  			 	    if (j == Index) 

LM82:
	     .stabn 68,0,1141,LM82-_Select_Pingamerandom
	     R3 = [BP + 1]            	// [0:1141]  j
	     R4 = [BP + 4]            	// [2:1141]  Index
	     cmp R3, R4               	// [4:1141]  
	     jne L_14_7               	// [5:1141]  
BB8_PU14:	// 0x21c
// BB:8 cycle count: 7
//1142  			 	    {
//1143  			 	        if(All_enable)	

LM83:
	     .stabn 68,0,1143,LM83-_Select_Pingamerandom
	     R4 = [BP + 3]            	// [0:1143]  All_enable
	     cmp R4, 0                	// [2:1143]  
	     je L_14_8                	// [3:1143]  
BB9_PU14:	// 0x21f
// BB:9 cycle count: 53
//1144  			 	            Pselected[Player_Activing_Cnt/16]&=~BitMap[Player_Activing_Cnt%16];

LM84:
	     .stabn 68,0,1144,LM84-_Select_Pingamerandom
	     DS = seg(_Player_Activing_Cnt)	// [0:1144]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:1144]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [3:1144]  
	     R4 = R4 lsr 4            	// [5:1144]  
	     [BP + 5] = R4            	// [6:1144]  __save_expr_temp_0
	     R4 = [BP + 5]            	// [7:1144]  __save_expr_temp_0
	     R3 = 0                   	// [9:1144]  
	     R1 = (_Pselected)        	// [10:1144]  Pselected
	     R2 = seg(_Pselected)     	// [12:1144]  Pselected
	     R4 = R4 + R1             	// [13:1144]  
	     R3 = R3 + R2, Carry      	// [14:1144]  
	     DS = R3                  	// [15:1144]  
	     R4 = DS:[R4]             	// [16:1144]  
	     [BP + 8] = R4            	// [18:1144]  lra_spill_temp_5
	     DS = seg(_Player_Activing_Cnt)	// [19:1144]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [20:1144]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [22:1144]  
	     R4 = R4 & 15             	// [24:1144]  
	     R3 = 0                   	// [25:1144]  
	     R1 = (_BitMap)           	// [26:1144]  BitMap
	     R2 = seg(_BitMap)        	// [28:1144]  BitMap
	     R4 = R4 + R1             	// [29:1144]  
	     R3 = R3 + R2, Carry      	// [30:1144]  
	     DS = R3                  	// [31:1144]  
	     R4 = DS:[R4]             	// [32:1144]  
	     R3 = R4 ^ 65535          	// [34:1144]  
	     R4 = [BP + 8]            	// [36:1144]  lra_spill_temp_5
	     R4 = R4 & R3             	// [38:1144]  
	     [BP + 9] = R4            	// [39:1144]  lra_spill_temp_6
	     R4 = [BP + 5]            	// [40:1144]  __save_expr_temp_0
	     R3 = 0                   	// [42:1144]  
	     R1 = (_Pselected)        	// [43:1144]  Pselected
	     R2 = seg(_Pselected)     	// [45:1144]  Pselected
	     R4 = R4 + R1             	// [46:1144]  
	     R3 = R3 + R2, Carry      	// [47:1144]  
	     DS = R3                  	// [48:1144]  
	     R3 = [BP + 9]            	// [49:1144]  lra_spill_temp_6
	     DS:[R4] = R3             	// [51:1144]  
L_14_8:	// 0x24b
// BB:10 cycle count: 8
//1145  			 	    	
//1146  			 	    	return i;

LM85:
	     .stabn 68,0,1146,LM85-_Select_Pingamerandom
	     R1 = [BP + 0]            	// [0:1146]  i
	     SP = SP + 10             	// [2:1146]  
	     pop BP, PC from [SP]     	// [3:1146]  
L_14_7:	// 0x24e
L_14_6:	// 0x24e
// BB:11 cycle count: 4
//1147  			 	     }
//1148  			 	  }
//1149  			 	j++;

LM86:
	     .stabn 68,0,1149,LM86-_Select_Pingamerandom
	     R4 = [BP + 1]            	// [0:1149]  j
	     R4 = R4 + 1              	// [2:1149]  
	     [BP + 1] = R4            	// [3:1149]  j
L_14_4:	// 0x251
L_14_3:	// 0x251
// BB:12 cycle count: 16
//1150  		 	 }
//1151  		 }
//1152  		 i++;

LM87:
	     .stabn 68,0,1152,LM87-_Select_Pingamerandom
	     R4 = [BP + 0]            	// [0:1152]  i
	     R4 = R4 + 1              	// [2:1152]  
	     [BP + 0] = R4            	// [3:1152]  i
//1153  		 
//1154  		 if(i == Registerd_Num)

LM88:
	     .stabn 68,0,1154,LM88-_Select_Pingamerandom
	     R3 = [BP + 0]            	// [4:1154]  i
	     DS = seg(_Registerd_Num) 	// [6:1154]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [7:1154]  Registerd_Num
	     R4 = DS:[R4]             	// [9:1154]  
	     cmp R3, R4               	// [11:1154]  
	     je BB13_PU14             	// [12:1154]  
BB28_PU14:	// 0x25b
// BB:28 cycle count: 3
	     goto L_14_9              	// [0:0]  
BB13_PU14:	// 0x25d
// BB:13 cycle count: 3
//1155  		  {
//1156  
//1157                 WatchdogClear();

LM89:
	     .stabn 68,0,1157,LM89-_Select_Pingamerandom
	     call _WatchdogClear      	// [0:1157]  WatchdogClear
BB14_PU14:	// 0x25f
// BB:14 cycle count: 9
//1158  			  
//1159  			     i=0;	

LM90:
	     .stabn 68,0,1159,LM90-_Select_Pingamerandom
	     R4 = 0                   	// [0:1159]  
	     [BP + 0] = R4            	// [1:1159]  i
//1160  				 
//1161  			  	if(j)

LM91:
	     .stabn 68,0,1161,LM91-_Select_Pingamerandom
	     R4 = [BP + 1]            	// [2:1161]  j
	     cmp R4, 0                	// [4:1161]  
	     je L_14_11               	// [5:1161]  
BB15_PU14:	// 0x264
// BB:15 cycle count: 14
//1162  			  	{			  	   
//1163  			  	   Index = *P_TimerB_CNTR %j;

LM92:
	     .stabn 68,0,1163,LM92-_Select_Pingamerandom
	     R3 = 12307               	// [0:1163]  
	     R4 = 0                   	// [2:1163]  
	     DS = R4                  	// [3:1163]  
	     R3 = DS:[R3]             	// [4:1163]  
	     R4 = [BP + 1]            	// [6:1163]  j
	     push R4, R3 to [SP]      	// [8:1163]  
	     call __modu1             	// [11:1163]  _modu1
BB16_PU14:	// 0x26d
// BB:16 cycle count: 9
	     SP = SP + 2              	// [0:0]  
	     [BP + 4] = R1            	// [1:0]  Index
//1164  			  	   j=0;

LM93:
	     .stabn 68,0,1164,LM93-_Select_Pingamerandom
	     R4 = 0                   	// [2:1164]  
	     [BP + 1] = R4            	// [3:1164]  j
//1165  			  	   temp1 =1;

LM94:
	     .stabn 68,0,1165,LM94-_Select_Pingamerandom
	     R4 = 1                   	// [4:1165]  
	     [BP + 2] = R4            	// [5:1165]  temp1
	     goto L_14_10             	// [6:1165]  
L_14_11:	// 0x275
// BB:17 cycle count: 7
//1166  			  		
//1167  			  	}
//1168  			   else if(All_enable ==0)// Pingame = Pselected random

LM95:
	     .stabn 68,0,1168,LM95-_Select_Pingamerandom
	     R4 = [BP + 3]            	// [0:1168]  All_enable
	     cmp R4, 0                	// [2:1168]  
	     jne L_14_13              	// [3:1168]  
BB18_PU14:	// 0x278
// BB:18 cycle count: 5
//1169  			      {
//1170  			      	   All_enable =1;

LM96:
	     .stabn 68,0,1170,LM96-_Select_Pingamerandom
	     R4 = 1                   	// [0:1170]  
	     [BP + 3] = R4            	// [1:1170]  All_enable
//1171  			      	  
//1172  			      	  Reset_Pselected();

LM97:
	     .stabn 68,0,1172,LM97-_Select_Pingamerandom
	     call _Reset_Pselected    	// [2:1172]  Reset_Pselected
BB19_PU14:	// 0x27c
// BB:19 cycle count: 55
//1173  			      	  Pselected[Player_Activing_Cnt/16]|=BitMap[Player_Activing_Cnt%16];	

LM98:
	     .stabn 68,0,1173,LM98-_Select_Pingamerandom
	     DS = seg(_Player_Activing_Cnt)	// [0:1173]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:1173]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [3:1173]  
	     R4 = R4 lsr 4            	// [5:1173]  
	     [BP + 6] = R4            	// [6:1173]  __save_expr_temp_1
	     R4 = [BP + 6]            	// [7:1173]  __save_expr_temp_1
	     R3 = 0                   	// [9:1173]  
	     R1 = (_Pselected)        	// [10:1173]  Pselected
	     R2 = seg(_Pselected)     	// [12:1173]  Pselected
	     R4 = R4 + R1             	// [13:1173]  
	     R3 = R3 + R2, Carry      	// [14:1173]  
	     DS = R3                  	// [15:1173]  
	     R4 = DS:[R4]             	// [16:1173]  
	     [BP + 9] = R4            	// [18:1173]  lra_spill_temp_6
	     DS = seg(_Player_Activing_Cnt)	// [19:1173]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [20:1173]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [22:1173]  
	     R4 = R4 & 15             	// [24:1173]  
	     R3 = 0                   	// [25:1173]  
	     R1 = (_BitMap)           	// [26:1173]  BitMap
	     R2 = seg(_BitMap)        	// [28:1173]  BitMap
	     R4 = R4 + R1             	// [29:1173]  
	     R3 = R3 + R2, Carry      	// [30:1173]  
	     DS = R3                  	// [31:1173]  
	     R3 = DS:[R4]             	// [32:1173]  
	     R4 = [BP + 9]            	// [34:1173]  lra_spill_temp_6
	     R4 = R4 | R3             	// [36:1173]  
	     [BP + 8] = R4            	// [37:1173]  lra_spill_temp_5
	     R4 = [BP + 6]            	// [38:1173]  __save_expr_temp_1
	     R3 = 0                   	// [40:1173]  
	     R1 = (_Pselected)        	// [41:1173]  Pselected
	     R2 = seg(_Pselected)     	// [43:1173]  Pselected
	     R4 = R4 + R1             	// [44:1173]  
	     R3 = R3 + R2, Carry      	// [45:1173]  
	     DS = R3                  	// [46:1173]  
	     R3 = [BP + 8]            	// [47:1173]  lra_spill_temp_5
	     DS:[R4] = R3             	// [49:1173]  
	     jmp L_14_12              	// [51:1173]  
L_14_13:	// 0x2a7
// BB:20 cycle count: 7
//1174  			      	
//1175  			      	   
//1176  			      }	 
//1177  			    else if(All_enable ==1)

LM99:
	     .stabn 68,0,1177,LM99-_Select_Pingamerandom
	     R4 = [BP + 3]            	// [0:1177]  All_enable
	     cmp R4, 1                	// [2:1177]  
	     jne L_14_15              	// [3:1177]  
BB21_PU14:	// 0x2aa
// BB:21 cycle count: 6
//1178  			      {
//1179  			      	   All_enable =2;

LM100:
	     .stabn 68,0,1179,LM100-_Select_Pingamerandom
	     R4 = 2                   	// [0:1179]  
	     [BP + 3] = R4            	// [1:1179]  All_enable
	     jmp L_14_14              	// [2:1179]  
L_14_15:	// 0x2ad
// BB:22 cycle count: 7
//1180  			      }  
//1181  			      else if(All_enable ==2) 

LM101:
	     .stabn 68,0,1181,LM101-_Select_Pingamerandom
	     R4 = [BP + 3]            	// [0:1181]  All_enable
	     cmp R4, 2                	// [2:1181]  
	     jne L_14_16              	// [3:1181]  
BB23_PU14:	// 0x2b0
// BB:23 cycle count: 3
//1182  			      {
//1183  			      	   SetPingame();

LM102:
	     .stabn 68,0,1183,LM102-_Select_Pingamerandom
	     call _SetPingame         	// [0:1183]  SetPingame
BB24_PU14:	// 0x2b2
// BB:24 cycle count: 51
//1184  			      	   Pselected[Player_Activing_Cnt/16]|=BitMap[Player_Activing_Cnt%16];	

LM103:
	     .stabn 68,0,1184,LM103-_Select_Pingamerandom
	     DS = seg(_Player_Activing_Cnt)	// [0:1184]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:1184]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [3:1184]  
	     R4 = R4 lsr 4            	// [5:1184]  
	     [BP + 7] = R4            	// [6:1184]  __save_expr_temp_2
	     R4 = [BP + 7]            	// [7:1184]  __save_expr_temp_2
	     R3 = 0                   	// [9:1184]  
	     R1 = (_Pselected)        	// [10:1184]  Pselected
	     R2 = seg(_Pselected)     	// [12:1184]  Pselected
	     R4 = R4 + R1             	// [13:1184]  
	     R3 = R3 + R2, Carry      	// [14:1184]  
	     DS = R3                  	// [15:1184]  
	     R4 = DS:[R4]             	// [16:1184]  
	     [BP + 8] = R4            	// [18:1184]  lra_spill_temp_5
	     DS = seg(_Player_Activing_Cnt)	// [19:1184]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [20:1184]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [22:1184]  
	     R4 = R4 & 15             	// [24:1184]  
	     R3 = 0                   	// [25:1184]  
	     R1 = (_BitMap)           	// [26:1184]  BitMap
	     R2 = seg(_BitMap)        	// [28:1184]  BitMap
	     R4 = R4 + R1             	// [29:1184]  
	     R3 = R3 + R2, Carry      	// [30:1184]  
	     DS = R3                  	// [31:1184]  
	     R3 = DS:[R4]             	// [32:1184]  
	     R4 = [BP + 8]            	// [34:1184]  lra_spill_temp_5
	     R4 = R4 | R3             	// [36:1184]  
	     [BP + 9] = R4            	// [37:1184]  lra_spill_temp_6
	     R4 = [BP + 7]            	// [38:1184]  __save_expr_temp_2
	     R3 = 0                   	// [40:1184]  
	     R1 = (_Pselected)        	// [41:1184]  Pselected
	     R2 = seg(_Pselected)     	// [43:1184]  Pselected
	     R4 = R4 + R1             	// [44:1184]  
	     R3 = R3 + R2, Carry      	// [45:1184]  
	     DS = R3                  	// [46:1184]  
	     R3 = [BP + 9]            	// [47:1184]  lra_spill_temp_6
	     DS:[R4] = R3             	// [49:1184]  
L_14_16:	// 0x2dc
L_14_14:	// 0x2dc
L_14_12:	// 0x2dc
L_14_10:	// 0x2dc
L_14_9:	// 0x2dc
// BB:25 cycle count: 3

LM104:
	     .stabn 68,0,1154,LM104-_Select_Pingamerandom
	     goto L_14_1              	// [0:1154]  
L_14_2:	// 0x2de
// BB:26 cycle count: 7
//1187  		  }
//1188  		 
//1189  		 
//1190  	}
//1191  	return 0;

LM105:
	     .stabn 68,0,1191,LM105-_Select_Pingamerandom
	     R1 = 0                   	// [0:1191]  
	     SP = SP + 10             	// [1:1191]  
	     pop BP, PC from [SP]     	// [2:1191]  
LBE14:
	.endp	
	     .stabn 192,0,0,LBB14-_Select_Pingamerandom
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabs "temp1:4",128,0,0,2
	     .stabs "All_enable:4",128,0,0,3
	     .stabs "Index:4",128,0,0,4
	     .stabn 224,0,0,LBE14-_Select_Pingamerandom
LME15:
	     .stabf LME15-_Select_Pingamerandom
.code
	     .stabs "Supress_Question_Switch:F18",36,0,0,_Supress_Question_Switch

	// Program Unit: Supress_Question_Switch
.public	_Supress_Question_Switch
_Supress_Question_Switch: .proc	
	     .stabn 0xa6,0,0,7
	// i = 0
	// __save_expr_temp_3 = 1
	// __save_expr_temp_4 = 2
	// old_frame_pointer = 7
	// return_address = 8
	// lra_spill_temp_7 = 3
	// lra_spill_temp_8 = 4
	// lra_spill_temp_9 = 5
	// lra_spill_temp_10 = 6
//1195  
//1196  /*********************************************************************
//1197  ************************************************************************/
//1198  void Supress_Question_Switch()
//1199  {

LM106:
	     .stabn 68,0,1199,LM106-_Supress_Question_Switch
BB1_PU15:	// 0x2e1
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:1199]  
	     SP = SP - 7              	// [2:1199]  
	     BP = SP + 1              	// [3:1199]  
LBB15:
//1200  //	unsigned temp;
//1201  	unsigned i = 0;

LM107:
	     .stabn 68,0,1201,LM107-_Supress_Question_Switch
	     R4 = 0                   	// [5:1201]  
	     [BP + 0] = R4            	// [6:1201]  i
L_15_5:	// 0x2e7
// BB:2 cycle count: 12
//1202  	while(i<R_QuestionNum)

LM108:
	     .stabn 68,0,1202,LM108-_Supress_Question_Switch
	     R3 = [BP + 0]            	// [0:1202]  i
	     DS = seg(_R_QuestionNum) 	// [2:1202]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:1202]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:1202]  
	     cmp R3, R4               	// [7:1202]  
	     jb BB3_PU15              	// [8:1202]  
BB9_PU15:	// 0x2ee
// BB:9 cycle count: 3
	     goto L_15_6              	// [0:0]  
BB3_PU15:	// 0x2f0
// BB:3 cycle count: 3
//1203  	{
//1204  	 	WatchdogClear();

LM109:
	     .stabn 68,0,1204,LM109-_Supress_Question_Switch
	     call _WatchdogClear      	// [0:1204]  WatchdogClear
BB4_PU15:	// 0x2f2
// BB:4 cycle count: 10
//1207  		 
//1208  	//	if(temp)
//1209  		{
//1210  		 
//1211  		 	if (GetSwitch(i) ==  C_Only_ON2 )

LM110:
	     .stabn 68,0,1211,LM110-_Supress_Question_Switch
	     SP = SP - 1              	// [0:1211]  
	     R3 = [BP + 0]            	// [1:1211]  i
	     R4 = SP + 1              	// [3:1211]  
	     [R4] = R3                	// [5:1211]  
	     call _GetSwitch          	// [7:1211]  GetSwitch
BB5_PU15:	// 0x2f9
// BB:5 cycle count: 6
	     SP = SP + 1              	// [0:1211]  
	     cmp R1, 0                	// [1:1211]  
	     je BB6_PU15              	// [2:1211]  
BB10_PU15:	// 0x2fc
// BB:10 cycle count: 3
	     goto L_15_7              	// [0:0]  
BB6_PU15:	// 0x2fe
// BB:6 cycle count: 94
//1212  		 	{
//1213  		 		QuestionStatus_LQA[i/16] &=~BitMap[i%16];				

LM111:
	     .stabn 68,0,1213,LM111-_Supress_Question_Switch
	     R4 = [BP + 0]            	// [0:1213]  i
	     R4 = R4 lsr 4            	// [2:1213]  
	     [BP + 1] = R4            	// [3:1213]  __save_expr_temp_3
	     R4 = [BP + 1]            	// [4:1213]  __save_expr_temp_3
	     R3 = 0                   	// [6:1213]  
	     R1 = (_QuestionStatus_LQA)	// [7:1213]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [9:1213]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [10:1213]  
	     R3 = R3 + R2, Carry      	// [11:1213]  
	     DS = R3                  	// [12:1213]  
	     R4 = DS:[R4]             	// [13:1213]  
	     [BP + 3] = R4            	// [15:1213]  lra_spill_temp_7
	     R4 = [BP + 0]            	// [16:1213]  i
	     R4 = R4 & 15             	// [18:1213]  
	     R3 = 0                   	// [19:1213]  
	     R1 = (_BitMap)           	// [20:1213]  BitMap
	     R2 = seg(_BitMap)        	// [22:1213]  BitMap
	     R4 = R4 + R1             	// [23:1213]  
	     R3 = R3 + R2, Carry      	// [24:1213]  
	     DS = R3                  	// [25:1213]  
	     R4 = DS:[R4]             	// [26:1213]  
	     R3 = R4 ^ 65535          	// [28:1213]  
	     R4 = [BP + 3]            	// [30:1213]  lra_spill_temp_7
	     R4 = R4 & R3             	// [32:1213]  
	     [BP + 4] = R4            	// [33:1213]  lra_spill_temp_8
	     R4 = [BP + 1]            	// [34:1213]  __save_expr_temp_3
	     R3 = 0                   	// [36:1213]  
	     R1 = (_QuestionStatus_LQA)	// [37:1213]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [39:1213]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [40:1213]  
	     R3 = R3 + R2, Carry      	// [41:1213]  
	     DS = R3                  	// [42:1213]  
	     R3 = [BP + 4]            	// [43:1213]  lra_spill_temp_8
	     DS:[R4] = R3             	// [45:1213]  
//1214  				QuestionStatus_Asked[i/16]&=~BitMap[i%16];//xiang 20160330

LM112:
	     .stabn 68,0,1214,LM112-_Supress_Question_Switch
	     R4 = [BP + 0]            	// [47:1214]  i
	     R4 = R4 lsr 4            	// [49:1214]  
	     [BP + 2] = R4            	// [50:1214]  __save_expr_temp_4
	     R4 = [BP + 2]            	// [51:1214]  __save_expr_temp_4
	     R3 = 0                   	// [53:1214]  
	     R1 = (_QuestionStatus_Asked)	// [54:1214]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [56:1214]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [57:1214]  
	     R3 = R3 + R2, Carry      	// [58:1214]  
	     DS = R3                  	// [59:1214]  
	     R4 = DS:[R4]             	// [60:1214]  
	     [BP + 5] = R4            	// [62:1214]  lra_spill_temp_9
	     R4 = [BP + 0]            	// [63:1214]  i
	     R4 = R4 & 15             	// [65:1214]  
	     R3 = 0                   	// [66:1214]  
	     R1 = (_BitMap)           	// [67:1214]  BitMap
	     R2 = seg(_BitMap)        	// [69:1214]  BitMap
	     R4 = R4 + R1             	// [70:1214]  
	     R3 = R3 + R2, Carry      	// [71:1214]  
	     DS = R3                  	// [72:1214]  
	     R4 = DS:[R4]             	// [73:1214]  
	     R3 = R4 ^ 65535          	// [75:1214]  
	     R4 = [BP + 5]            	// [77:1214]  lra_spill_temp_9
	     R4 = R4 & R3             	// [79:1214]  
	     [BP + 6] = R4            	// [80:1214]  lra_spill_temp_10
	     R4 = [BP + 2]            	// [81:1214]  __save_expr_temp_4
	     R3 = 0                   	// [83:1214]  
	     R1 = (_QuestionStatus_Asked)	// [84:1214]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [86:1214]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [87:1214]  
	     R3 = R3 + R2, Carry      	// [88:1214]  
	     DS = R3                  	// [89:1214]  
	     R3 = [BP + 6]            	// [90:1214]  lra_spill_temp_10
	     DS:[R4] = R3             	// [92:1214]  
L_15_7:	// 0x34a
// BB:7 cycle count: 7
//1216  		 	}
//1217  	
//1218  		}
//1219  	 
//1220  	     i++;	 

LM113:
	     .stabn 68,0,1220,LM113-_Supress_Question_Switch
	     R4 = [BP + 0]            	// [0:1220]  i
	     R4 = R4 + 1              	// [2:1220]  
	     [BP + 0] = R4            	// [3:1220]  i
	     goto L_15_5              	// [4:1220]  
L_15_6:	// 0x34f
// BB:8 cycle count: 6
	     SP = SP + 7              	// [0:1220]  
	     pop BP, PC from [SP]     	// [1:1220]  
LBE15:
	.endp	
	     .stabn 192,0,0,LBB15-_Supress_Question_Switch
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE15-_Supress_Question_Switch
LME16:
	     .stabf LME16-_Supress_Question_Switch
.code
	     .stabs "Supress_Question_CategoryLast2Cat:F18",36,0,0,_Supress_Question_CategoryLast2Cat

	// Program Unit: Supress_Question_CategoryLast2Cat
.public	_Supress_Question_CategoryLast2Cat
_Supress_Question_CategoryLast2Cat: .proc	
	     .stabn 0xa6,0,0,5
	// temp = 1
	// i = 0
	// __save_expr_temp_5 = 2
	// old_frame_pointer = 5
	// return_address = 6
	// lra_spill_temp_11 = 3
	// lra_spill_temp_12 = 4
//1224  }
//1225  /*********************************************************************
//1226  ************************************************************************/
//1227  void Supress_Question_CategoryLast2Cat()
//1228  {

LM114:
	     .stabn 68,0,1228,LM114-_Supress_Question_CategoryLast2Cat
BB1_PU16:	// 0x351
// BB:1 cycle count: 22
	     push BP to [SP]          	// [0:1228]  
	     SP = SP - 5              	// [2:1228]  
	     BP = SP + 1              	// [3:1228]  
LBB16:
//1229  	unsigned temp;
//1230  	unsigned i = 0;

LM115:
	     .stabn 68,0,1230,LM115-_Supress_Question_CategoryLast2Cat
	     R4 = 0                   	// [5:1230]  
	     [BP + 0] = R4            	// [6:1230]  i
//1231  	
//1232  	
//1233  	
//1234  	
//1235  	if(Last2Cat[0]!=Last2Cat[1])

LM116:
	     .stabn 68,0,1235,LM116-_Supress_Question_CategoryLast2Cat
	     DS = seg(_Last2Cat)      	// [7:1235]  Last2Cat
	     R4 = (_Last2Cat)         	// [8:1235]  Last2Cat
	     R3 = DS:[R4]             	// [10:1235]  
	     DS = seg(_Last2Cat+1)    	// [12:1235]  Last2Cat+1
	     R4 = (_Last2Cat+1)       	// [13:1235]  Last2Cat+1
	     R4 = DS:[R4]             	// [15:1235]  
	     cmp R3, R4               	// [17:1235]  
	     je L_16_12               	// [18:1235]  
BB2_PU16:	// 0x361
// BB:2 cycle count: 6
//1236  		return ;

LM117:
	     .stabn 68,0,1236,LM117-_Supress_Question_CategoryLast2Cat
	     SP = SP + 5              	// [0:1236]  
	     pop BP, PC from [SP]     	// [1:1236]  
L_16_12:	// 0x363
// BB:3 cycle count: 10
//1237  	
//1238  	if(Last2Cat[0]==0)

LM118:
	     .stabn 68,0,1238,LM118-_Supress_Question_CategoryLast2Cat
	     DS = seg(_Last2Cat)      	// [0:1238]  Last2Cat
	     R4 = (_Last2Cat)         	// [1:1238]  Last2Cat
	     R4 = DS:[R4]             	// [3:1238]  
	     cmp R4, 0                	// [5:1238]  
	     jne L_16_13              	// [6:1238]  
BB4_PU16:	// 0x369
// BB:4 cycle count: 6
//1239  	   return ;

LM119:
	     .stabn 68,0,1239,LM119-_Supress_Question_CategoryLast2Cat
	     SP = SP + 5              	// [0:1239]  
	     pop BP, PC from [SP]     	// [1:1239]  
L_16_13:	// 0x36b
// BB:5 cycle count: 6
//1240  	
//1241  	Last2Catcnt=1;

LM120:
	     .stabn 68,0,1241,LM120-_Supress_Question_CategoryLast2Cat
	     R3 = 1                   	// [0:1241]  
	     DS = seg(_Last2Catcnt)   	// [1:1241]  Last2Catcnt
	     R4 = (_Last2Catcnt)      	// [2:1241]  Last2Catcnt
	     DS:[R4] = R3             	// [4:1241]  
L_16_14:	// 0x370
// BB:6 cycle count: 12
//1242  	
//1243  	while(i<R_QuestionNum)

LM121:
	     .stabn 68,0,1243,LM121-_Supress_Question_CategoryLast2Cat
	     R3 = [BP + 0]            	// [0:1243]  i
	     DS = seg(_R_QuestionNum) 	// [2:1243]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:1243]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:1243]  
	     cmp R3, R4               	// [7:1243]  
	     jb BB7_PU16              	// [8:1243]  
BB15_PU16:	// 0x377
// BB:15 cycle count: 3
	     goto L_16_15             	// [0:0]  
BB7_PU16:	// 0x379
// BB:7 cycle count: 3
//1244  	{
//1245  	 	WatchdogClear();

LM122:
	     .stabn 68,0,1245,LM122-_Supress_Question_CategoryLast2Cat
	     call _WatchdogClear      	// [0:1245]  WatchdogClear
BB8_PU16:	// 0x37b
// BB:8 cycle count: 33
//1246  
//1247         if(BitMap[i%16]&QuestionStatus_LQA[i/16])

LM123:
	     .stabn 68,0,1247,LM123-_Supress_Question_CategoryLast2Cat
	     R4 = [BP + 0]            	// [0:1247]  i
	     R4 = R4 & 15             	// [2:1247]  
	     R3 = 0                   	// [3:1247]  
	     R1 = (_BitMap)           	// [4:1247]  BitMap
	     R2 = seg(_BitMap)        	// [6:1247]  BitMap
	     R4 = R4 + R1             	// [7:1247]  
	     R3 = R3 + R2, Carry      	// [8:1247]  
	     DS = R3                  	// [9:1247]  
	     R4 = DS:[R4]             	// [10:1247]  
	     [BP + 3] = R4            	// [12:1247]  lra_spill_temp_11
	     R4 = [BP + 0]            	// [13:1247]  i
	     R4 = R4 lsr 4            	// [15:1247]  
	     R3 = 0                   	// [16:1247]  
	     R1 = (_QuestionStatus_LQA)	// [17:1247]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [19:1247]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [20:1247]  
	     R3 = R3 + R2, Carry      	// [21:1247]  
	     DS = R3                  	// [22:1247]  
	     R3 = DS:[R4]             	// [23:1247]  
	     R4 = [BP + 3]            	// [25:1247]  lra_spill_temp_11
	     R4 = R4 & R3             	// [27:1247]  
	     cmp R4, 0                	// [28:1247]  
	     je L_16_16               	// [29:1247]  
BB9_PU16:	// 0x394
// BB:9 cycle count: 10
//1248         {
//1249  			temp = Get_Question_Category(i);//20170721 xiang

LM124:
	     .stabn 68,0,1249,LM124-_Supress_Question_CategoryLast2Cat
	     SP = SP - 1              	// [0:1249]  
	     R3 = [BP + 0]            	// [1:1249]  i
	     R4 = SP + 1              	// [3:1249]  
	     [R4] = R3                	// [5:1249]  
	     call _Get_Question_Category	// [7:1249]  Get_Question_Category
BB10_PU16:	// 0x39b
// BB:10 cycle count: 14
	     SP = SP + 1              	// [0:1249]  
	     [BP + 1] = R1            	// [1:1249]  temp
//1250  			 
//1251  	
//1252  			 
//1253  			 	if((temp ==  Last2Cat[0])||(temp ==  Last2Cat[1]))

LM125:
	     .stabn 68,0,1253,LM125-_Supress_Question_CategoryLast2Cat
	     DS = seg(_Last2Cat)      	// [2:1253]  Last2Cat
	     R4 = (_Last2Cat)         	// [3:1253]  Last2Cat
	     R3 = DS:[R4]             	// [5:1253]  
	     R4 = [BP + 1]            	// [7:1253]  temp
	     cmp R3, R4               	// [9:1253]  
	     je L_16_18               	// [10:1253]  
BB11_PU16:	// 0x3a4
// BB:11 cycle count: 12
	     DS = seg(_Last2Cat+1)    	// [0:1253]  Last2Cat+1
	     R4 = (_Last2Cat+1)       	// [1:1253]  Last2Cat+1
	     R3 = DS:[R4]             	// [3:1253]  
	     R4 = [BP + 1]            	// [5:1253]  temp
	     cmp R3, R4               	// [7:1253]  
	     jne L_16_17              	// [8:1253]  
L_16_18:	// 0x3ab
// BB:12 cycle count: 47
//1254  			 	{
//1255  			 		QuestionStatus_LQA[i/16] &=~BitMap[i%16];				

LM126:
	     .stabn 68,0,1255,LM126-_Supress_Question_CategoryLast2Cat
	     R4 = [BP + 0]            	// [0:1255]  i
	     R4 = R4 lsr 4            	// [2:1255]  
	     [BP + 2] = R4            	// [3:1255]  __save_expr_temp_5
	     R4 = [BP + 2]            	// [4:1255]  __save_expr_temp_5
	     R3 = 0                   	// [6:1255]  
	     R1 = (_QuestionStatus_LQA)	// [7:1255]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [9:1255]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [10:1255]  
	     R3 = R3 + R2, Carry      	// [11:1255]  
	     DS = R3                  	// [12:1255]  
	     R4 = DS:[R4]             	// [13:1255]  
	     [BP + 3] = R4            	// [15:1255]  lra_spill_temp_11
	     R4 = [BP + 0]            	// [16:1255]  i
	     R4 = R4 & 15             	// [18:1255]  
	     R3 = 0                   	// [19:1255]  
	     R1 = (_BitMap)           	// [20:1255]  BitMap
	     R2 = seg(_BitMap)        	// [22:1255]  BitMap
	     R4 = R4 + R1             	// [23:1255]  
	     R3 = R3 + R2, Carry      	// [24:1255]  
	     DS = R3                  	// [25:1255]  
	     R4 = DS:[R4]             	// [26:1255]  
	     R3 = R4 ^ 65535          	// [28:1255]  
	     R4 = [BP + 3]            	// [30:1255]  lra_spill_temp_11
	     R4 = R4 & R3             	// [32:1255]  
	     [BP + 4] = R4            	// [33:1255]  lra_spill_temp_12
	     R4 = [BP + 2]            	// [34:1255]  __save_expr_temp_5
	     R3 = 0                   	// [36:1255]  
	     R1 = (_QuestionStatus_LQA)	// [37:1255]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [39:1255]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [40:1255]  
	     R3 = R3 + R2, Carry      	// [41:1255]  
	     DS = R3                  	// [42:1255]  
	     R3 = [BP + 4]            	// [43:1255]  lra_spill_temp_12
	     DS:[R4] = R3             	// [45:1255]  
L_16_17:	// 0x3d1
L_16_16:	// 0x3d1
// BB:13 cycle count: 7
//1258  			 	}
//1259  	
//1260         }
//1261  	 
//1262  	     i++;	 

LM127:
	     .stabn 68,0,1262,LM127-_Supress_Question_CategoryLast2Cat
	     R4 = [BP + 0]            	// [0:1262]  i
	     R4 = R4 + 1              	// [2:1262]  
	     [BP + 0] = R4            	// [3:1262]  i
	     goto L_16_14             	// [4:1262]  
L_16_15:	// 0x3d6
// BB:14 cycle count: 6
	     SP = SP + 5              	// [0:1262]  
	     pop BP, PC from [SP]     	// [1:1262]  
LBE16:
	.endp	
	     .stabn 192,0,0,LBB16-_Supress_Question_CategoryLast2Cat
	     .stabs "temp:4",128,0,0,1
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE16-_Supress_Question_CategoryLast2Cat
LME17:
	     .stabf LME17-_Supress_Question_CategoryLast2Cat
.code
	     .stabs "Select_Questionrandom_4:F4",36,0,0,_Select_Questionrandom_4

	// Program Unit: Select_Questionrandom_4
.public	_Select_Questionrandom_4
_Select_Questionrandom_4: .proc	
	     .stabn 0xa6,0,0,4
	// i = 0
	// j = 1
	// temp = 2
	// old_frame_pointer = 4
	// return_address = 5
	// lra_spill_temp_13 = 3
//1268  //==================================================
//1269  //SQ7_2
//1270  //==================================================
//1271  unsigned Select_Questionrandom_4(unsigned Index)
//1272  {

LM128:
	     .stabn 68,0,1272,LM128-_Select_Questionrandom_4
BB1_PU17:	// 0x3d8
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1272]  
	     SP = SP - 4              	// [2:1272]  
	     BP = SP + 1              	// [3:1272]  
LBB17:
//1273  	unsigned i= 0;

LM129:
	     .stabn 68,0,1273,LM129-_Select_Questionrandom_4
	     R4 = 0                   	// [5:1273]  
	     [BP + 0] = R4            	// [6:1273]  i
//1274  	unsigned j= 0;

LM130:
	     .stabn 68,0,1274,LM130-_Select_Questionrandom_4
	     R4 = 0                   	// [7:1274]  
	     [BP + 1] = R4            	// [8:1274]  j
L_17_1:	// 0x3e0
// BB:2 cycle count: 12
//1275  	unsigned temp;
//1276  
//1277  	while(i<R_QuestionNum)

LM131:
	     .stabn 68,0,1277,LM131-_Select_Questionrandom_4
	     R3 = [BP + 0]            	// [0:1277]  i
	     DS = seg(_R_QuestionNum) 	// [2:1277]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:1277]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:1277]  
	     cmp R3, R4               	// [7:1277]  
	     jae L_17_2               	// [8:1277]  
BB3_PU17:	// 0x3e7
// BB:3 cycle count: 36
//1278  	{
//1279  		 temp = BitMap[i%16]&QuestionStatus_LQA[i/16];

LM132:
	     .stabn 68,0,1279,LM132-_Select_Questionrandom_4
	     R4 = [BP + 0]            	// [0:1279]  i
	     R4 = R4 & 15             	// [2:1279]  
	     R3 = 0                   	// [3:1279]  
	     R1 = (_BitMap)           	// [4:1279]  BitMap
	     R2 = seg(_BitMap)        	// [6:1279]  BitMap
	     R4 = R4 + R1             	// [7:1279]  
	     R3 = R3 + R2, Carry      	// [8:1279]  
	     DS = R3                  	// [9:1279]  
	     R4 = DS:[R4]             	// [10:1279]  
	     [BP + 3] = R4            	// [12:1279]  lra_spill_temp_13
	     R4 = [BP + 0]            	// [13:1279]  i
	     R4 = R4 lsr 4            	// [15:1279]  
	     R3 = 0                   	// [16:1279]  
	     R1 = (_QuestionStatus_LQA)	// [17:1279]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [19:1279]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [20:1279]  
	     R3 = R3 + R2, Carry      	// [21:1279]  
	     DS = R3                  	// [22:1279]  
	     R3 = DS:[R4]             	// [23:1279]  
	     R4 = [BP + 3]            	// [25:1279]  lra_spill_temp_13
	     R4 = R4 & R3             	// [27:1279]  
	     [BP + 2] = R4            	// [28:1279]  temp
//1280  		 if (temp)

LM133:
	     .stabn 68,0,1280,LM133-_Select_Questionrandom_4
	     R4 = [BP + 2]            	// [29:1280]  temp
	     cmp R4, 0                	// [31:1280]  
	     je L_17_3                	// [32:1280]  
BB4_PU17:	// 0x402
// BB:4 cycle count: 9
//1281  		 {
//1282  		 	if (j == Index) return i;

LM134:
	     .stabn 68,0,1282,LM134-_Select_Questionrandom_4
	     R3 = [BP + 7]            	// [0:1282]  Index
	     R4 = [BP + 1]            	// [2:1282]  j
	     cmp R3, R4               	// [4:1282]  
	     jne L_17_4               	// [5:1282]  
BB5_PU17:	// 0x406
// BB:5 cycle count: 8
	     R1 = [BP + 0]            	// [0:1282]  i
	     SP = SP + 4              	// [2:1282]  
	     pop BP, PC from [SP]     	// [3:1282]  
L_17_4:	// 0x409
// BB:6 cycle count: 4
//1283  		 	j++;

LM135:
	     .stabn 68,0,1283,LM135-_Select_Questionrandom_4
	     R4 = [BP + 1]            	// [0:1283]  j
	     R4 = R4 + 1              	// [2:1283]  
	     [BP + 1] = R4            	// [3:1283]  j
L_17_3:	// 0x40c
// BB:7 cycle count: 8
//1284  		 }
//1285  		 i++;

LM136:
	     .stabn 68,0,1285,LM136-_Select_Questionrandom_4
	     R4 = [BP + 0]            	// [0:1285]  i
	     R4 = R4 + 1              	// [2:1285]  
	     [BP + 0] = R4            	// [3:1285]  i
	     jmp L_17_1               	// [4:1285]  
L_17_2:	// 0x410
// BB:8 cycle count: 8
//1286  	}
//1287  	return i;

LM137:
	     .stabn 68,0,1287,LM137-_Select_Questionrandom_4
	     R1 = [BP + 0]            	// [0:1287]  i
	     SP = SP + 4              	// [2:1287]  
	     pop BP, PC from [SP]     	// [3:1287]  
LBE17:
	.endp	
	     .stabs "Index:p4",160,0,0,7
	     .stabn 192,0,0,LBB17-_Select_Questionrandom_4
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabs "temp:4",128,0,0,2
	     .stabn 224,0,0,LBE17-_Select_Questionrandom_4
LME18:
	     .stabf LME18-_Select_Questionrandom_4
.code
	     .stabs "Select_Question_ModeStatus_Other:F4",36,0,0,_Select_Question_ModeStatus_Other

	// Program Unit: Select_Question_ModeStatus_Other
.public	_Select_Question_ModeStatus_Other
_Select_Question_ModeStatus_Other: .proc	
	     .stabn 0xa6,0,0,7
	// i = 0
	// j = 1
	// temp1 = 2
	// temp2 = 3
	// temp = 5
	// t_mode = 4
	// old_frame_pointer = 7
	// return_address = 8
	// lra_spill_temp_14 = 6
//1292  /**************************************************
//1293  *******************************************************/
//1294  
//1295  unsigned Select_Question_ModeStatus_Other(unsigned Mode)//,小于等于 i_quality
//1296  {

LM138:
	     .stabn 68,0,1296,LM138-_Select_Question_ModeStatus_Other
BB1_PU18:	// 0x413
// BB:1 cycle count: 13
	     push BP to [SP]          	// [0:1296]  
	     SP = SP - 7              	// [2:1296]  
	     BP = SP + 1              	// [3:1296]  
LBB18:
//1297  	unsigned i= 0,j=0,temp1 =0,temp2 =0;//temp3=0;

LM139:
	     .stabn 68,0,1297,LM139-_Select_Question_ModeStatus_Other
	     R4 = 0                   	// [5:1297]  
	     [BP + 0] = R4            	// [6:1297]  i
	     R4 = 0                   	// [7:1297]  
	     [BP + 1] = R4            	// [8:1297]  j
	     R4 = 0                   	// [9:1297]  
	     [BP + 2] = R4            	// [10:1297]  temp1
	     R4 = 0                   	// [11:1297]  
	     [BP + 3] = R4            	// [12:1297]  temp2
L_18_15:	// 0x41f
// BB:2 cycle count: 12
//1300  	unsigned int t_mode;
//1301  
//1302  
//1303  
//1304  	while(i<R_QuestionNum)

LM140:
	     .stabn 68,0,1304,LM140-_Select_Question_ModeStatus_Other
	     R3 = [BP + 0]            	// [0:1304]  i
	     DS = seg(_R_QuestionNum) 	// [2:1304]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:1304]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:1304]  
	     cmp R3, R4               	// [7:1304]  
	     jb BB3_PU18              	// [8:1304]  
BB22_PU18:	// 0x426
// BB:22 cycle count: 3
	     goto L_18_16             	// [0:0]  
BB3_PU18:	// 0x428
// BB:3 cycle count: 3
//1305  	{
//1306  
//1307  	    WatchdogClear();

LM141:
	     .stabn 68,0,1307,LM141-_Select_Question_ModeStatus_Other
	     call _WatchdogClear      	// [0:1307]  WatchdogClear
BB4_PU18:	// 0x42a
// BB:4 cycle count: 36
//1308  
//1309  		 //if(SelectOfLQA == 0)//C_SelectFromLQA
//1310  	     temp2 = BitMap[i%16]&QuestionStatus_LQA[i/16];

LM142:
	     .stabn 68,0,1310,LM142-_Select_Question_ModeStatus_Other
	     R4 = [BP + 0]            	// [0:1310]  i
	     R4 = R4 & 15             	// [2:1310]  
	     R3 = 0                   	// [3:1310]  
	     R1 = (_BitMap)           	// [4:1310]  BitMap
	     R2 = seg(_BitMap)        	// [6:1310]  BitMap
	     R4 = R4 + R1             	// [7:1310]  
	     R3 = R3 + R2, Carry      	// [8:1310]  
	     DS = R3                  	// [9:1310]  
	     R4 = DS:[R4]             	// [10:1310]  
	     [BP + 6] = R4            	// [12:1310]  lra_spill_temp_14
	     R4 = [BP + 0]            	// [13:1310]  i
	     R4 = R4 lsr 4            	// [15:1310]  
	     R3 = 0                   	// [16:1310]  
	     R1 = (_QuestionStatus_LQA)	// [17:1310]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [19:1310]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [20:1310]  
	     R3 = R3 + R2, Carry      	// [21:1310]  
	     DS = R3                  	// [22:1310]  
	     R3 = DS:[R4]             	// [23:1310]  
	     R4 = [BP + 6]            	// [25:1310]  lra_spill_temp_14
	     R4 = R4 & R3             	// [27:1310]  
	     [BP + 3] = R4            	// [28:1310]  temp2
//1311  		 
//1312  
//1313  		
//1314  		 if(temp2)		 	

LM143:
	     .stabn 68,0,1314,LM143-_Select_Question_ModeStatus_Other
	     R4 = [BP + 3]            	// [29:1314]  temp2
	     cmp R4, 0                	// [31:1314]  
	     je L_18_17               	// [32:1314]  
BB5_PU18:	// 0x445
// BB:5 cycle count: 10
//1315  		 {
//1316  
//1317               // t_status = GetStatus(i);
//1318                t_mode =  Get_Question_Category(i);

LM144:
	     .stabn 68,0,1318,LM144-_Select_Question_ModeStatus_Other
	     SP = SP - 1              	// [0:1318]  
	     R3 = [BP + 0]            	// [1:1318]  i
	     R4 = SP + 1              	// [3:1318]  
	     [R4] = R3                	// [5:1318]  
	     call _Get_Question_Category	// [7:1318]  Get_Question_Category
BB6_PU18:	// 0x44c
// BB:6 cycle count: 11
	     SP = SP + 1              	// [0:1318]  
	     [BP + 4] = R1            	// [1:1318]  t_mode
//1319  			  //t_quality = GetQuality(i);
//1320  		 
//1321  		 	if (t_mode !=Mode)

LM145:
	     .stabn 68,0,1321,LM145-_Select_Question_ModeStatus_Other
	     R3 = [BP + 10]           	// [2:1321]  Mode
	     R4 = [BP + 4]            	// [4:1321]  t_mode
	     cmp R3, R4               	// [6:1321]  
	     je L_18_18               	// [7:1321]  
BB7_PU18:	// 0x452
// BB:7 cycle count: 7
//1322  		 		{
//1323  
//1324                    if(temp1)

LM146:
	     .stabn 68,0,1324,LM146-_Select_Question_ModeStatus_Other
	     R4 = [BP + 2]            	// [0:1324]  temp1
	     cmp R4, 0                	// [2:1324]  
	     je L_18_19               	// [3:1324]  
BB8_PU18:	// 0x455
// BB:8 cycle count: 9
//1325                    	{
//1326                        if(j==temp)

LM147:
	     .stabn 68,0,1326,LM147-_Select_Question_ModeStatus_Other
	     R3 = [BP + 1]            	// [0:1326]  j
	     R4 = [BP + 5]            	// [2:1326]  temp
	     cmp R3, R4               	// [4:1326]  
	     jne L_18_20              	// [5:1326]  
BB9_PU18:	// 0x459
// BB:9 cycle count: 8
//1327  		 	    	    return i;

LM148:
	     .stabn 68,0,1327,LM148-_Select_Question_ModeStatus_Other
	     R1 = [BP + 0]            	// [0:1327]  i
	     SP = SP + 7              	// [2:1327]  
	     pop BP, PC from [SP]     	// [3:1327]  
L_18_20:	// 0x45c
L_18_19:	// 0x45c
// BB:10 cycle count: 4
//1328  
//1329                    	}
//1330  
//1331  				  j++;

LM149:
	     .stabn 68,0,1331,LM149-_Select_Question_ModeStatus_Other
	     R4 = [BP + 1]            	// [0:1331]  j
	     R4 = R4 + 1              	// [2:1331]  
	     [BP + 1] = R4            	// [3:1331]  j
L_18_18:	// 0x45f
L_18_17:	// 0x45f
// BB:11 cycle count: 16
//1332  
//1333  		 		}
//1334  		 }
//1335  		 i++;

LM150:
	     .stabn 68,0,1335,LM150-_Select_Question_ModeStatus_Other
	     R4 = [BP + 0]            	// [0:1335]  i
	     R4 = R4 + 1              	// [2:1335]  
	     [BP + 0] = R4            	// [3:1335]  i
//1336  
//1337  	  	  if(i == R_QuestionNum)

LM151:
	     .stabn 68,0,1337,LM151-_Select_Question_ModeStatus_Other
	     R3 = [BP + 0]            	// [4:1337]  i
	     DS = seg(_R_QuestionNum) 	// [6:1337]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [7:1337]  R_QuestionNum
	     R4 = DS:[R4]             	// [9:1337]  
	     cmp R3, R4               	// [11:1337]  
	     jne L_18_21              	// [12:1337]  
BB12_PU18:	// 0x469
// BB:12 cycle count: 3
//1338  		  {
//1339  
//1340                 WatchdogClear();

LM152:
	     .stabn 68,0,1340,LM152-_Select_Question_ModeStatus_Other
	     call _WatchdogClear      	// [0:1340]  WatchdogClear
BB13_PU18:	// 0x46b
// BB:13 cycle count: 9
//1341  			  
//1342  			     i=0;	

LM153:
	     .stabn 68,0,1342,LM153-_Select_Question_ModeStatus_Other
	     R4 = 0                   	// [0:1342]  
	     [BP + 0] = R4            	// [1:1342]  i
//1343  				 
//1344  			  	if(j)

LM154:
	     .stabn 68,0,1344,LM154-_Select_Question_ModeStatus_Other
	     R4 = [BP + 1]            	// [2:1344]  j
	     cmp R4, 0                	// [4:1344]  
	     je L_18_23               	// [5:1344]  
BB14_PU18:	// 0x470
// BB:14 cycle count: 14
//1345  			  	{			  	   
//1346  			  	   temp = *P_TimerB_CNTR %j;

LM155:
	     .stabn 68,0,1346,LM155-_Select_Question_ModeStatus_Other
	     R3 = 12307               	// [0:1346]  
	     R4 = 0                   	// [2:1346]  
	     DS = R4                  	// [3:1346]  
	     R3 = DS:[R3]             	// [4:1346]  
	     R4 = [BP + 1]            	// [6:1346]  j
	     push R4, R3 to [SP]      	// [8:1346]  
	     call __modu1             	// [11:1346]  _modu1
BB15_PU18:	// 0x479
// BB:15 cycle count: 10
	     SP = SP + 2              	// [0:0]  
	     [BP + 5] = R1            	// [1:0]  temp
//1347  			  	   j=0;

LM156:
	     .stabn 68,0,1347,LM156-_Select_Question_ModeStatus_Other
	     R4 = 0                   	// [2:1347]  
	     [BP + 1] = R4            	// [3:1347]  j
//1348  			  	   temp1 =1;

LM157:
	     .stabn 68,0,1348,LM157-_Select_Question_ModeStatus_Other
	     R4 = 1                   	// [4:1348]  
	     [BP + 2] = R4            	// [5:1348]  temp1
	     jmp L_18_22              	// [6:1348]  
L_18_23:	// 0x480
// BB:16 cycle count: 18
//1351  			  	
//1352                else 
//1353  			  	{
//1354  			  		
//1355  			  		 return Select_Questionrandom_4(*P_TimerB_CNTR % LQA);

LM158:
	     .stabn 68,0,1355,LM158-_Select_Question_ModeStatus_Other
	     SP = SP - 1              	// [0:1355]  
	     R3 = 12307               	// [1:1355]  
	     R4 = 0                   	// [3:1355]  
	     DS = R4                  	// [4:1355]  
	     R3 = DS:[R3]             	// [5:1355]  
	     DS = seg(_LQA)           	// [7:1355]  LQA
	     R4 = (_LQA)              	// [8:1355]  LQA
	     R4 = DS:[R4]             	// [10:1355]  
	     push R4, R3 to [SP]      	// [12:1355]  
	     call __modu1             	// [15:1355]  _modu1
BB17_PU18:	// 0x48d
// BB:17 cycle count: 8
	     SP = SP + 2              	// [0:0]  
	     R4 = SP + 1              	// [1:0]  
	     [R4] = R1                	// [3:0]  
	     call _Select_Questionrandom_4	// [5:1355]  Select_Questionrandom_4
BB18_PU18:	// 0x493
// BB:18 cycle count: 6
	     SP = SP + 8              	// [0:1355]  
	     pop BP, PC from [SP]     	// [1:1355]  
L_18_22:	// 0x495
L_18_21:	// 0x495
// BB:19 cycle count: 3

LM159:
	     .stabn 68,0,1337,LM159-_Select_Question_ModeStatus_Other
	     goto L_18_15             	// [0:1337]  
L_18_16:	// 0x497
// BB:20 cycle count: 3
//1361  
//1362  		    }  
//1363  	 
//1364  
//1365  	return Go_Rest();

LM160:
	     .stabn 68,0,1365,LM160-_Select_Question_ModeStatus_Other
	     call _Go_Rest            	// [0:1365]  Go_Rest
BB21_PU18:	// 0x499
// BB:21 cycle count: 6
	     SP = SP + 7              	// [0:1365]  
	     pop BP, PC from [SP]     	// [1:1365]  
LBE18:
	.endp	
	     .stabs "Mode:p4",160,0,0,10
	     .stabn 192,0,0,LBB18-_Select_Question_ModeStatus_Other
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabs "temp1:4",128,0,0,2
	     .stabs "temp2:4",128,0,0,3
	     .stabs "temp:4",128,0,0,5
	     .stabs "t_mode:4",128,0,0,4
	     .stabn 224,0,0,LBE18-_Select_Question_ModeStatus_Other
LME19:
	     .stabf LME19-_Select_Question_ModeStatus_Other
.code
	     .stabs "GameTimeout:F4",36,0,0,_GameTimeout

	// Program Unit: GameTimeout
.public	_GameTimeout
_GameTimeout: .proc	
	     .stabn 0xa6,0,0,1
	// temp_Key_activeflag = 0
	// old_frame_pointer = 1
	// return_address = 2
//1714  
//1715  /****************************************************************
//1716  *********************************************************************/
//1717  unsigned int GameTimeout()
//1718  {

LM161:
	     .stabn 68,0,1718,LM161-_GameTimeout
BB1_PU19:	// 0x49b
// BB:1 cycle count: 32
	     push BP to [SP]          	// [0:1718]  
	     SP = SP - 1              	// [2:1718]  
	     BP = SP + 1              	// [3:1718]  
LBB19:
//1719                 unsigned int temp_Key_activeflag = Key_activeflag;

LM162:
	     .stabn 68,0,1719,LM162-_GameTimeout
	     DS = seg(_Key_activeflag)	// [5:1719]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [6:1719]  Key_activeflag
	     R4 = DS:[R4]             	// [8:1719]  
	     [BP + 0] = R4            	// [10:1719]  temp_Key_activeflag
//1720                 
//1721                 
//1722  						  Key_activeflag =Playbutton;// Only_Play_KeyEnable;//

LM163:
	     .stabn 68,0,1722,LM163-_GameTimeout
	     R3 = 1                   	// [11:1722]  
	     DS = seg(_Key_activeflag)	// [12:1722]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [13:1722]  Key_activeflag
	     DS:[R4] = R3             	// [15:1722]  
//1723  					      Key_Event =0;

LM164:
	     .stabn 68,0,1723,LM164-_GameTimeout
	     R3 = 0                   	// [17:1723]  
	     DS = seg(_Key_Event)     	// [18:1723]  Key_Event
	     R4 = (_Key_Event)        	// [19:1723]  Key_Event
	     DS:[R4] = R3             	// [21:1723]  
//1724  						  
//1725  						  PlayA1800_Elements(A_VLMMREN_Bye_01);

LM165:
	     .stabn 68,0,1725,LM165-_GameTimeout
	     SP = SP - 1              	// [23:1725]  
	     R3 = 9                   	// [24:1725]  
	     R4 = SP + 1              	// [25:1725]  
	     [R4] = R3                	// [27:1725]  
	     call _PlayA1800_Elements 	// [29:1725]  PlayA1800_Elements
BB2_PU19:	// 0x4b5
// BB:2 cycle count: 9
//1726  
//1727  					      delay_time(10*16);

LM166:
	     .stabn 68,0,1727,LM166-_GameTimeout
	     R3 = 160                 	// [0:1727]  
	     R4 = SP + 1              	// [2:1727]  
	     [R4] = R3                	// [4:1727]  
	     call _delay_time         	// [6:1727]  delay_time
BB3_PU19:	// 0x4bc
// BB:3 cycle count: 11
	     SP = SP + 1              	// [0:1727]  
//1728  	
//1729                            if(Key_Event==0)

LM167:
	     .stabn 68,0,1729,LM167-_GameTimeout
	     DS = seg(_Key_Event)     	// [1:1729]  Key_Event
	     R4 = (_Key_Event)        	// [2:1729]  Key_Event
	     R4 = DS:[R4]             	// [4:1729]  
	     cmp R4, 0                	// [6:1729]  
	     jne L_19_1               	// [7:1729]  
BB4_PU19:	// 0x4c3
// BB:4 cycle count: 9
//1730                            	{
//1731  
//1732                                 PlayA1800_Elements(A_VLMMREN_Bye_02);

LM168:
	     .stabn 68,0,1732,LM168-_GameTimeout
	     SP = SP - 1              	// [0:1732]  
	     R3 = 10                  	// [1:1732]  
	     R4 = SP + 1              	// [2:1732]  
	     [R4] = R3                	// [4:1732]  
	     call _PlayA1800_Elements 	// [6:1732]  PlayA1800_Elements
BB5_PU19:	// 0x4ca
// BB:5 cycle count: 12
	     SP = SP + 1              	// [0:1732]  
//1733                                 Sleepflag |=1;

LM169:
	     .stabn 68,0,1733,LM169-_GameTimeout
	     DS = seg(_Sleepflag)     	// [1:1733]  Sleepflag
	     R4 = (_Sleepflag)        	// [2:1733]  Sleepflag
	     R4 = DS:[R4]             	// [4:1733]  
	     R4 = R4 | 1              	// [6:1733]  
	     DS = seg(_Sleepflag)     	// [7:1733]  Sleepflag
	     R3 = (_Sleepflag)        	// [8:1733]  Sleepflag
	     DS:[R3] = R4             	// [10:1733]  
L_19_1:	// 0x4d4
// BB:6 cycle count: 20
//1734                            	}
//1735  						   
//1736                         Key_activeflag = temp_Key_activeflag;

LM170:
	     .stabn 68,0,1736,LM170-_GameTimeout
	     R3 = [BP + 0]            	// [0:1736]  temp_Key_activeflag
	     DS = seg(_Key_activeflag)	// [2:1736]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [3:1736]  Key_activeflag
	     DS:[R4] = R3             	// [5:1736]  
//1737                         Key_Event =0;

LM171:
	     .stabn 68,0,1737,LM171-_GameTimeout
	     R3 = 0                   	// [7:1737]  
	     DS = seg(_Key_Event)     	// [8:1737]  Key_Event
	     R4 = (_Key_Event)        	// [9:1737]  Key_Event
	     DS:[R4] = R3             	// [11:1737]  
//1738                         return 0xffff;

LM172:
	     .stabn 68,0,1738,LM172-_GameTimeout
	     R1 = - 1                 	// [13:1738]  
	     SP = SP + 1              	// [14:1738]  
	     pop BP, PC from [SP]     	// [15:1738]  
LBE19:
	.endp	
	     .stabn 192,0,0,LBB19-_GameTimeout
	     .stabs "temp_Key_activeflag:4",128,0,0,0
	     .stabn 224,0,0,LBE19-_GameTimeout
LME20:
	     .stabf LME20-_GameTimeout
.code
	     .stabs "Get_Registered_Player_Num:F4",36,0,0,_Get_Registered_Player_Num

	// Program Unit: Get_Registered_Player_Num
.public	_Get_Registered_Player_Num
_Get_Registered_Player_Num: .proc	
	     .stabn 0xa6,0,0,2
	// j = 0
	// i = 1
	// old_frame_pointer = 2
	// return_address = 3
//1742  
//1743  /***************************************************************
//1744  ******************************************************************/
//1745  unsigned  Get_Registered_Player_Num(unsigned int temp)
//1746  {

LM173:
	     .stabn 68,0,1746,LM173-_Get_Registered_Player_Num
BB1_PU20:	// 0x4e1
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1746]  
	     SP = SP - 2              	// [2:1746]  
	     BP = SP + 1              	// [3:1746]  
LBB20:
//1747  	
//1748  	unsigned j = 0;

LM174:
	     .stabn 68,0,1748,LM174-_Get_Registered_Player_Num
	     R4 = 0                   	// [5:1748]  
	     [BP + 0] = R4            	// [6:1748]  j
//1749  	unsigned i = 0;

LM175:
	     .stabn 68,0,1749,LM175-_Get_Registered_Player_Num
	     R4 = 0                   	// [7:1749]  
	     [BP + 1] = R4            	// [8:1749]  i
L_20_1:	// 0x4e9
// BB:2 cycle count: 7
//1750  	while(i<C_Player_Num)//C_Player_Num <16

LM176:
	     .stabn 68,0,1750,LM176-_Get_Registered_Player_Num
	     R4 = [BP + 1]            	// [0:1750]  i
	     cmp R4, 9                	// [2:1750]  
	     ja L_20_2                	// [3:1750]  
BB3_PU20:	// 0x4ec
// BB:3 cycle count: 18
//1751  	{
//1752  		 if (BitMap[i]&temp) //Registered_Play_Status

LM177:
	     .stabn 68,0,1752,LM177-_Get_Registered_Player_Num
	     R4 = [BP + 1]            	// [0:1752]  i
	     R3 = 0                   	// [2:1752]  
	     R1 = (_BitMap)           	// [3:1752]  BitMap
	     R2 = seg(_BitMap)        	// [5:1752]  BitMap
	     R4 = R4 + R1             	// [6:1752]  
	     R3 = R3 + R2, Carry      	// [7:1752]  
	     DS = R3                  	// [8:1752]  
	     R4 = DS:[R4]             	// [9:1752]  
	     R4 = R4 & [BP + 5]       	// [11:1752]  temp
	     cmp R4, 0                	// [13:1752]  
	     je L_20_3                	// [14:1752]  
BB4_PU20:	// 0x4f8
// BB:4 cycle count: 4
//1753  		    {
//1754  		     j+=1;

LM178:
	     .stabn 68,0,1754,LM178-_Get_Registered_Player_Num
	     R4 = [BP + 0]            	// [0:1754]  j
	     R4 = R4 + 1              	// [2:1754]  
	     [BP + 0] = R4            	// [3:1754]  j
L_20_3:	// 0x4fb
// BB:5 cycle count: 8
//1755  		    }
//1756  		   i++;

LM179:
	     .stabn 68,0,1756,LM179-_Get_Registered_Player_Num
	     R4 = [BP + 1]            	// [0:1756]  i
	     R4 = R4 + 1              	// [2:1756]  
	     [BP + 1] = R4            	// [3:1756]  i
	     jmp L_20_1               	// [4:1756]  
L_20_2:	// 0x4ff
// BB:6 cycle count: 8
//1757  	}
//1758  	return j;

LM180:
	     .stabn 68,0,1758,LM180-_Get_Registered_Player_Num
	     R1 = [BP + 0]            	// [0:1758]  j
	     SP = SP + 2              	// [2:1758]  
	     pop BP, PC from [SP]     	// [3:1758]  
LBE20:
	.endp	
	     .stabs "temp:p4",160,0,0,5
	     .stabn 192,0,0,LBB20-_Get_Registered_Player_Num
	     .stabs "j:4",128,0,0,0
	     .stabs "i:4",128,0,0,1
	     .stabn 224,0,0,LBE20-_Get_Registered_Player_Num
LME21:
	     .stabf LME21-_Get_Registered_Player_Num
.code
	     .stabs "Get_LedDate_From_Play:F4",36,0,0,_Get_LedDate_From_Play

	// Program Unit: Get_LedDate_From_Play
.public	_Get_LedDate_From_Play
_Get_LedDate_From_Play: .proc	
	     .stabn 0xa6,0,0,2
	// temp = 0
	// i = 1
	// old_frame_pointer = 2
	// return_address = 3
//1809  
//1810  /***************************************************************
//1811  ******************************************************************/
//1812  unsigned Get_LedDate_From_Play(unsigned temp_Player)
//1813  {

LM181:
	     .stabn 68,0,1813,LM181-_Get_LedDate_From_Play
BB1_PU21:	// 0x502
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1813]  
	     SP = SP - 2              	// [2:1813]  
	     BP = SP + 1              	// [3:1813]  
LBB21:
//1814  	unsigned temp = 0;

LM182:
	     .stabn 68,0,1814,LM182-_Get_LedDate_From_Play
	     R4 = 0                   	// [5:1814]  
	     [BP + 0] = R4            	// [6:1814]  temp
//1815  	unsigned i = 0;

LM183:
	     .stabn 68,0,1815,LM183-_Get_LedDate_From_Play
	     R4 = 0                   	// [7:1815]  
	     [BP + 1] = R4            	// [8:1815]  i
L_21_1:	// 0x50a
// BB:2 cycle count: 7
//1816  	while(i<C_Player_Num)//C_Player_Num <16

LM184:
	     .stabn 68,0,1816,LM184-_Get_LedDate_From_Play
	     R4 = [BP + 1]            	// [0:1816]  i
	     cmp R4, 9                	// [2:1816]  
	     ja L_21_2                	// [3:1816]  
BB3_PU21:	// 0x50d
// BB:3 cycle count: 18
//1817  	{
//1818  		 if (BitMap[i]&temp_Player) //Registered_Play_Status

LM185:
	     .stabn 68,0,1818,LM185-_Get_LedDate_From_Play
	     R4 = [BP + 1]            	// [0:1818]  i
	     R3 = 0                   	// [2:1818]  
	     R1 = (_BitMap)           	// [3:1818]  BitMap
	     R2 = seg(_BitMap)        	// [5:1818]  BitMap
	     R4 = R4 + R1             	// [6:1818]  
	     R3 = R3 + R2, Carry      	// [7:1818]  
	     DS = R3                  	// [8:1818]  
	     R4 = DS:[R4]             	// [9:1818]  
	     R4 = R4 & [BP + 5]       	// [11:1818]  temp_Player
	     cmp R4, 0                	// [13:1818]  
	     je L_21_3                	// [14:1818]  
BB4_PU21:	// 0x519
// BB:4 cycle count: 14
//1819  		    {
//1820  		     temp|=Led_Data_Play[i];

LM186:
	     .stabn 68,0,1820,LM186-_Get_LedDate_From_Play
	     R4 = [BP + 1]            	// [0:1820]  i
	     R3 = 0                   	// [2:1820]  
	     R1 = (_Led_Data_Play)    	// [3:1820]  Led_Data_Play
	     R2 = seg(_Led_Data_Play) 	// [5:1820]  Led_Data_Play
	     R4 = R4 + R1             	// [6:1820]  
	     R3 = R3 + R2, Carry      	// [7:1820]  
	     DS = R3                  	// [8:1820]  
	     R4 = DS:[R4]             	// [9:1820]  
	     R4 = R4 | [BP + 0]       	// [11:1820]  temp
	     [BP + 0] = R4            	// [13:1820]  temp
L_21_3:	// 0x524
// BB:5 cycle count: 8
//1821  		    }
//1822  		   i++;

LM187:
	     .stabn 68,0,1822,LM187-_Get_LedDate_From_Play
	     R4 = [BP + 1]            	// [0:1822]  i
	     R4 = R4 + 1              	// [2:1822]  
	     [BP + 1] = R4            	// [3:1822]  i
	     jmp L_21_1               	// [4:1822]  
L_21_2:	// 0x528
// BB:6 cycle count: 8
//1823  	}
//1824  	return temp;

LM188:
	     .stabn 68,0,1824,LM188-_Get_LedDate_From_Play
	     R1 = [BP + 0]            	// [0:1824]  temp
	     SP = SP + 2              	// [2:1824]  
	     pop BP, PC from [SP]     	// [3:1824]  
LBE21:
	.endp	
	     .stabs "temp_Player:p4",160,0,0,5
	     .stabn 192,0,0,LBB21-_Get_LedDate_From_Play
	     .stabs "temp:4",128,0,0,0
	     .stabs "i:4",128,0,0,1
	     .stabn 224,0,0,LBE21-_Get_LedDate_From_Play
LME22:
	     .stabf LME22-_Get_LedDate_From_Play
.code
	     .stabs "Get_Firstcnt_From_Play:F4",36,0,0,_Get_Firstcnt_From_Play

	// Program Unit: Get_Firstcnt_From_Play
.public	_Get_Firstcnt_From_Play
_Get_Firstcnt_From_Play: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//1827  
//1828  
//1829  
//1830  unsigned Get_Firstcnt_From_Play(unsigned temp_Player)
//1831  {

LM189:
	     .stabn 68,0,1831,LM189-_Get_Firstcnt_From_Play
BB1_PU22:	// 0x52b
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:1831]  
	     SP = SP - 1              	// [2:1831]  
	     BP = SP + 1              	// [3:1831]  
LBB22:
//1832  	
//1833  	unsigned i = 0;

LM190:
	     .stabn 68,0,1833,LM190-_Get_Firstcnt_From_Play
	     R4 = 0                   	// [5:1833]  
	     [BP + 0] = R4            	// [6:1833]  i
L_22_5:	// 0x531
// BB:2 cycle count: 7
//1834  	while(i<C_Player_Num)//C_Player_Num <16

LM191:
	     .stabn 68,0,1834,LM191-_Get_Firstcnt_From_Play
	     R4 = [BP + 0]            	// [0:1834]  i
	     cmp R4, 9                	// [2:1834]  
	     ja L_22_6                	// [3:1834]  
BB3_PU22:	// 0x534
// BB:3 cycle count: 18
//1835  	{
//1836  		 if (BitMap[i]&temp_Player) //Registered_Play_Status

LM192:
	     .stabn 68,0,1836,LM192-_Get_Firstcnt_From_Play
	     R4 = [BP + 0]            	// [0:1836]  i
	     R3 = 0                   	// [2:1836]  
	     R1 = (_BitMap)           	// [3:1836]  BitMap
	     R2 = seg(_BitMap)        	// [5:1836]  BitMap
	     R4 = R4 + R1             	// [6:1836]  
	     R3 = R3 + R2, Carry      	// [7:1836]  
	     DS = R3                  	// [8:1836]  
	     R4 = DS:[R4]             	// [9:1836]  
	     R4 = R4 & [BP + 4]       	// [11:1836]  temp_Player
	     cmp R4, 0                	// [13:1836]  
	     je L_22_7                	// [14:1836]  
BB4_PU22:	// 0x540
// BB:4 cycle count: 8
//1837  		    {
//1838  		     return i;

LM193:
	     .stabn 68,0,1838,LM193-_Get_Firstcnt_From_Play
	     R1 = [BP + 0]            	// [0:1838]  i
	     SP = SP + 1              	// [2:1838]  
	     pop BP, PC from [SP]     	// [3:1838]  
L_22_7:	// 0x543
// BB:5 cycle count: 8
//1839  		    }
//1840  		   i++;

LM194:
	     .stabn 68,0,1840,LM194-_Get_Firstcnt_From_Play
	     R4 = [BP + 0]            	// [0:1840]  i
	     R4 = R4 + 1              	// [2:1840]  
	     [BP + 0] = R4            	// [3:1840]  i
	     jmp L_22_5               	// [4:1840]  
L_22_6:	// 0x547
// BB:6 cycle count: 3
//1841  	}
//1842  	return Go_Rest();

LM195:
	     .stabn 68,0,1842,LM195-_Get_Firstcnt_From_Play
	     call _Go_Rest            	// [0:1842]  Go_Rest
BB7_PU22:	// 0x549
// BB:7 cycle count: 6
	     SP = SP + 1              	// [0:1842]  
	     pop BP, PC from [SP]     	// [1:1842]  
LBE22:
	.endp	
	     .stabs "temp_Player:p4",160,0,0,4
	     .stabn 192,0,0,LBB22-_Get_Firstcnt_From_Play
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE22-_Get_Firstcnt_From_Play
LME23:
	     .stabf LME23-_Get_Firstcnt_From_Play
.code
	     .stabs "Get_FirstBit_From_Play:F4",36,0,0,_Get_FirstBit_From_Play

	// Program Unit: Get_FirstBit_From_Play
.public	_Get_FirstBit_From_Play
_Get_FirstBit_From_Play: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//1844  }
//1845  
//1846  
//1847  unsigned Get_FirstBit_From_Play(unsigned temp_Player)
//1848  {

LM196:
	     .stabn 68,0,1848,LM196-_Get_FirstBit_From_Play
BB1_PU23:	// 0x54b
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:1848]  
	     SP = SP - 1              	// [2:1848]  
	     BP = SP + 1              	// [3:1848]  
LBB23:
//1849  	
//1850  	unsigned i = 0;

LM197:
	     .stabn 68,0,1850,LM197-_Get_FirstBit_From_Play
	     R4 = 0                   	// [5:1850]  
	     [BP + 0] = R4            	// [6:1850]  i
L_23_5:	// 0x551
// BB:2 cycle count: 7
//1851  	while(i<C_Player_Num)//C_Player_Num <16

LM198:
	     .stabn 68,0,1851,LM198-_Get_FirstBit_From_Play
	     R4 = [BP + 0]            	// [0:1851]  i
	     cmp R4, 9                	// [2:1851]  
	     ja L_23_6                	// [3:1851]  
BB3_PU23:	// 0x554
// BB:3 cycle count: 18
//1852  	{
//1853  		 if (BitMap[i]&temp_Player) //Registered_Play_Status

LM199:
	     .stabn 68,0,1853,LM199-_Get_FirstBit_From_Play
	     R4 = [BP + 0]            	// [0:1853]  i
	     R3 = 0                   	// [2:1853]  
	     R1 = (_BitMap)           	// [3:1853]  BitMap
	     R2 = seg(_BitMap)        	// [5:1853]  BitMap
	     R4 = R4 + R1             	// [6:1853]  
	     R3 = R3 + R2, Carry      	// [7:1853]  
	     DS = R3                  	// [8:1853]  
	     R4 = DS:[R4]             	// [9:1853]  
	     R4 = R4 & [BP + 4]       	// [11:1853]  temp_Player
	     cmp R4, 0                	// [13:1853]  
	     je L_23_7                	// [14:1853]  
BB4_PU23:	// 0x560
// BB:4 cycle count: 17
//1854  		    {
//1855  		    // Player_Activing_Cnt =i;	
//1856  		     return BitMap[i];

LM200:
	     .stabn 68,0,1856,LM200-_Get_FirstBit_From_Play
	     R4 = [BP + 0]            	// [0:1856]  i
	     R3 = 0                   	// [2:1856]  
	     R1 = (_BitMap)           	// [3:1856]  BitMap
	     R2 = seg(_BitMap)        	// [5:1856]  BitMap
	     R4 = R4 + R1             	// [6:1856]  
	     R3 = R3 + R2, Carry      	// [7:1856]  
	     DS = R3                  	// [8:1856]  
	     R1 = DS:[R4]             	// [9:1856]  
	     SP = SP + 1              	// [11:1856]  
	     pop BP, PC from [SP]     	// [12:1856]  
L_23_7:	// 0x56b
// BB:5 cycle count: 8
//1857  		     
//1858  		    }
//1859  		   i++;

LM201:
	     .stabn 68,0,1859,LM201-_Get_FirstBit_From_Play
	     R4 = [BP + 0]            	// [0:1859]  i
	     R4 = R4 + 1              	// [2:1859]  
	     [BP + 0] = R4            	// [3:1859]  i
	     jmp L_23_5               	// [4:1859]  
L_23_6:	// 0x56f
// BB:6 cycle count: 3
//1860  	}
//1861  	return Go_Rest();

LM202:
	     .stabn 68,0,1861,LM202-_Get_FirstBit_From_Play
	     call _Go_Rest            	// [0:1861]  Go_Rest
BB7_PU23:	// 0x571
// BB:7 cycle count: 6
	     SP = SP + 1              	// [0:1861]  
	     pop BP, PC from [SP]     	// [1:1861]  
LBE23:
	.endp	
	     .stabs "temp_Player:p4",160,0,0,4
	     .stabn 192,0,0,LBB23-_Get_FirstBit_From_Play
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE23-_Get_FirstBit_From_Play
LME24:
	     .stabf LME24-_Get_FirstBit_From_Play
.code
	     .stabs "Select_Registered_Player_Random:F4",36,0,0,_Select_Registered_Player_Random

	// Program Unit: Select_Registered_Player_Random
.public	_Select_Registered_Player_Random
_Select_Registered_Player_Random: .proc	
	     .stabn 0xa6,0,0,3
	// i = 0
	// j = 1
	// temp = 2
	// old_frame_pointer = 3
	// return_address = 4
//1867  
//1868  /*************************************************************
//1869  *************************************************************/
//1870  unsigned  Select_Registered_Player_Random(unsigned int Index,unsigned register_status)
//1871  {

LM203:
	     .stabn 68,0,1871,LM203-_Select_Registered_Player_Random
BB1_PU24:	// 0x573
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1871]  
	     SP = SP - 3              	// [2:1871]  
	     BP = SP + 1              	// [3:1871]  
LBB24:
//1872    	unsigned i= 0;

LM204:
	     .stabn 68,0,1872,LM204-_Select_Registered_Player_Random
	     R4 = 0                   	// [5:1872]  
	     [BP + 0] = R4            	// [6:1872]  i
//1873  	unsigned j= 0;

LM205:
	     .stabn 68,0,1873,LM205-_Select_Registered_Player_Random
	     R4 = 0                   	// [7:1873]  
	     [BP + 1] = R4            	// [8:1873]  j
L_24_1:	// 0x57b
// BB:2 cycle count: 7
//1874  	unsigned temp;
//1875  
//1876  	while(i<C_Player_Num)//C_Player_Num <16

LM206:
	     .stabn 68,0,1876,LM206-_Select_Registered_Player_Random
	     R4 = [BP + 0]            	// [0:1876]  i
	     cmp R4, 9                	// [2:1876]  
	     ja L_24_2                	// [3:1876]  
BB3_PU24:	// 0x57e
// BB:3 cycle count: 21
//1877  	{
//1878  		 temp = BitMap[i]&register_status;//Registered_Play_Status;

LM207:
	     .stabn 68,0,1878,LM207-_Select_Registered_Player_Random
	     R4 = [BP + 0]            	// [0:1878]  i
	     R3 = 0                   	// [2:1878]  
	     R1 = (_BitMap)           	// [3:1878]  BitMap
	     R2 = seg(_BitMap)        	// [5:1878]  BitMap
	     R4 = R4 + R1             	// [6:1878]  
	     R3 = R3 + R2, Carry      	// [7:1878]  
	     DS = R3                  	// [8:1878]  
	     R4 = DS:[R4]             	// [9:1878]  
	     R4 = R4 & [BP + 7]       	// [11:1878]  register_status
	     [BP + 2] = R4            	// [13:1878]  temp
//1879  		 if (temp)

LM208:
	     .stabn 68,0,1879,LM208-_Select_Registered_Player_Random
	     R4 = [BP + 2]            	// [14:1879]  temp
	     cmp R4, 0                	// [16:1879]  
	     je L_24_3                	// [17:1879]  
BB4_PU24:	// 0x58c
// BB:4 cycle count: 9
//1880  		 {
//1881  		 	if (j == Index) 

LM209:
	     .stabn 68,0,1881,LM209-_Select_Registered_Player_Random
	     R3 = [BP + 6]            	// [0:1881]  Index
	     R4 = [BP + 1]            	// [2:1881]  j
	     cmp R3, R4               	// [4:1881]  
	     jne L_24_4               	// [5:1881]  
BB5_PU24:	// 0x590
// BB:5 cycle count: 8
//1882  		 	   {
//1883  		 	   	//Player_Activing_Cnt = i;
//1884  		 	    return i;//BitMap[i];//i;

LM210:
	     .stabn 68,0,1884,LM210-_Select_Registered_Player_Random
	     R1 = [BP + 0]            	// [0:1884]  i
	     SP = SP + 3              	// [2:1884]  
	     pop BP, PC from [SP]     	// [3:1884]  
L_24_4:	// 0x593
// BB:6 cycle count: 4
//1885  		 	    
//1886  		 	   }
//1887  		 	    j++;

LM211:
	     .stabn 68,0,1887,LM211-_Select_Registered_Player_Random
	     R4 = [BP + 1]            	// [0:1887]  j
	     R4 = R4 + 1              	// [2:1887]  
	     [BP + 1] = R4            	// [3:1887]  j
L_24_3:	// 0x596
// BB:7 cycle count: 8
//1888  		 }
//1889  		 i++;

LM212:
	     .stabn 68,0,1889,LM212-_Select_Registered_Player_Random
	     R4 = [BP + 0]            	// [0:1889]  i
	     R4 = R4 + 1              	// [2:1889]  
	     [BP + 0] = R4            	// [3:1889]  i
	     jmp L_24_1               	// [4:1889]  
L_24_2:	// 0x59a
// BB:8 cycle count: 7
//1890  	}
//1891  	return 0xffff;

LM213:
	     .stabn 68,0,1891,LM213-_Select_Registered_Player_Random
	     R1 = - 1                 	// [0:1891]  
	     SP = SP + 3              	// [1:1891]  
	     pop BP, PC from [SP]     	// [2:1891]  
LBE24:
	.endp	
	     .stabs "Index:p4",160,0,0,6
	     .stabs "register_status:p4",160,0,0,7
	     .stabn 192,0,0,LBB24-_Select_Registered_Player_Random
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabs "temp:4",128,0,0,2
	     .stabn 224,0,0,LBE24-_Select_Registered_Player_Random
LME25:
	     .stabf LME25-_Select_Registered_Player_Random
.code
	     .stabs "Save_Question_CategoryMemory:F18",36,0,0,_Save_Question_CategoryMemory

	// Program Unit: Save_Question_CategoryMemory
.public	_Save_Question_CategoryMemory
_Save_Question_CategoryMemory: .proc	
	     .stabn 0xa6,0,0,2
	// i = 0
	// old_frame_pointer = 2
	// return_address = 3
	// lra_spill_temp_15 = 1
//1944  
//1945  /*****************************************************
//1946  ******************************************************/
//1947  void Save_Question_CategoryMemory()
//1948  {

LM214:
	     .stabn 68,0,1948,LM214-_Save_Question_CategoryMemory
BB1_PU25:	// 0x59d
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:1948]  
	     SP = SP - 2              	// [2:1948]  
	     BP = SP + 1              	// [3:1948]  
LBB25:
//1949     
//1950     unsigned int i;
//1951  
//1952     for(i=0;i<C_RoundNum;i++)

LM215:
	     .stabn 68,0,1952,LM215-_Save_Question_CategoryMemory
	     R4 = 0                   	// [5:1952]  
	     [BP + 0] = R4            	// [6:1952]  i
L_25_7:	// 0x5a3
// BB:2 cycle count: 8
	     R4 = [BP + 0]            	// [0:1952]  i
	     cmp R4, 99               	// [2:1952]  
	     ja L_25_8                	// [4:1952]  
BB3_PU25:	// 0x5a7
// BB:3 cycle count: 16
//1953     	{
//1954  	 if(LastCategory_Series[i] == 0)

LM216:
	     .stabn 68,0,1954,LM216-_Save_Question_CategoryMemory
	     R4 = [BP + 0]            	// [0:1954]  i
	     R3 = 0                   	// [2:1954]  
	     R1 = (_LastCategory_Series)	// [3:1954]  LastCategory_Series
	     R2 = seg(_LastCategory_Series)	// [5:1954]  LastCategory_Series
	     R4 = R4 + R1             	// [6:1954]  
	     R3 = R3 + R2, Carry      	// [7:1954]  
	     DS = R3                  	// [8:1954]  
	     R4 = DS:[R4]             	// [9:1954]  
	     cmp R4, 0                	// [11:1954]  
	     jne L_25_9               	// [12:1954]  
BB4_PU25:	// 0x5b2
// BB:4 cycle count: 13
//1955  	 {
//1956  	     LastCategory_Series[i]=Get_Question_Category(gQuestionIdx);

LM217:
	     .stabn 68,0,1956,LM217-_Save_Question_CategoryMemory
	     SP = SP - 1              	// [0:1956]  
	     DS = seg(_gQuestionIdx)  	// [1:1956]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [2:1956]  gQuestionIdx
	     R3 = DS:[R4]             	// [4:1956]  
	     R4 = SP + 1              	// [6:1956]  
	     [R4] = R3                	// [8:1956]  
	     call _Get_Question_Category	// [10:1956]  Get_Question_Category
BB5_PU25:	// 0x5bc
// BB:5 cycle count: 19
	     SP = SP + 1              	// [0:1956]  
	     [BP + 1] = R1            	// [1:1956]  lra_spill_temp_15
	     R4 = [BP + 0]            	// [2:1956]  i
	     R3 = 0                   	// [4:1956]  
	     R1 = (_LastCategory_Series)	// [5:1956]  LastCategory_Series
	     R2 = seg(_LastCategory_Series)	// [7:1956]  LastCategory_Series
	     R4 = R4 + R1             	// [8:1956]  
	     R3 = R3 + R2, Carry      	// [9:1956]  
	     DS = R3                  	// [10:1956]  
	     R3 = [BP + 1]            	// [11:1956]  lra_spill_temp_15
	     DS:[R4] = R3             	// [13:1956]  
//1957  	     break;

LM218:
	     .stabn 68,0,1957,LM218-_Save_Question_CategoryMemory
	     jmp Lt_25_2              	// [15:1957]  
L_25_9:	// 0x5c9
Lt_25_1:	// 0x5c9
// BB:6 cycle count: 8

LM219:
	     .stabn 68,0,1952,LM219-_Save_Question_CategoryMemory
	     R4 = [BP + 0]            	// [0:1952]  i
	     R4 = R4 + 1              	// [2:1952]  
	     [BP + 0] = R4            	// [3:1952]  i
	     jmp L_25_7               	// [4:1952]  
L_25_8:	// 0x5cd
Lt_25_2:	// 0x5cd
// BB:7 cycle count: 6
	     SP = SP + 2              	// [0:1952]  
	     pop BP, PC from [SP]     	// [1:1952]  
LBE25:
	.endp	
	     .stabn 192,0,0,LBB25-_Save_Question_CategoryMemory
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE25-_Save_Question_CategoryMemory
LME26:
	     .stabf LME26-_Save_Question_CategoryMemory
.code
	     .stabs "Get_Num_CategoryMemory:F4",36,0,0,_Get_Num_CategoryMemory

	// Program Unit: Get_Num_CategoryMemory
.public	_Get_Num_CategoryMemory
_Get_Num_CategoryMemory: .proc	
	     .stabn 0xa6,0,0,2
	// i = 1
	// temp = 0
	// old_frame_pointer = 2
	// return_address = 3
//1964  
//1965  /*****************************************************
//1966  ******************************************************/
//1967  unsigned int  Get_Num_CategoryMemory()
//1968  {

LM220:
	     .stabn 68,0,1968,LM220-_Get_Num_CategoryMemory
BB1_PU26:	// 0x5cf
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1968]  
	     SP = SP - 2              	// [2:1968]  
	     BP = SP + 1              	// [3:1968]  
LBB26:
//1969     
//1970     unsigned int i;
//1971     unsigned int temp=0;

LM221:
	     .stabn 68,0,1971,LM221-_Get_Num_CategoryMemory
	     R4 = 0                   	// [5:1971]  
	     [BP + 0] = R4            	// [6:1971]  temp
//1972  
//1973     for(i=0;i<C_RoundNum;i++)

LM222:
	     .stabn 68,0,1973,LM222-_Get_Num_CategoryMemory
	     R4 = 0                   	// [7:1973]  
	     [BP + 1] = R4            	// [8:1973]  i
L_26_2:	// 0x5d7
// BB:2 cycle count: 8
	     R4 = [BP + 1]            	// [0:1973]  i
	     cmp R4, 99               	// [2:1973]  
	     ja L_26_3                	// [4:1973]  
BB3_PU26:	// 0x5db
// BB:3 cycle count: 16
//1974     	{
//1975  	  if(LastCategory_Series[i] != 0)

LM223:
	     .stabn 68,0,1975,LM223-_Get_Num_CategoryMemory
	     R4 = [BP + 1]            	// [0:1975]  i
	     R3 = 0                   	// [2:1975]  
	     R1 = (_LastCategory_Series)	// [3:1975]  LastCategory_Series
	     R2 = seg(_LastCategory_Series)	// [5:1975]  LastCategory_Series
	     R4 = R4 + R1             	// [6:1975]  
	     R3 = R3 + R2, Carry      	// [7:1975]  
	     DS = R3                  	// [8:1975]  
	     R4 = DS:[R4]             	// [9:1975]  
	     cmp R4, 0                	// [11:1975]  
	     je L_26_4                	// [12:1975]  
BB4_PU26:	// 0x5e6
// BB:4 cycle count: 4
//1976  	   {
//1977  	     temp++; 

LM224:
	     .stabn 68,0,1977,LM224-_Get_Num_CategoryMemory
	     R4 = [BP + 0]            	// [0:1977]  temp
	     R4 = R4 + 1              	// [2:1977]  
	     [BP + 0] = R4            	// [3:1977]  temp
L_26_4:	// 0x5e9
Lt_26_1:	// 0x5e9
// BB:5 cycle count: 8

LM225:
	     .stabn 68,0,1973,LM225-_Get_Num_CategoryMemory
	     R4 = [BP + 1]            	// [0:1973]  i
	     R4 = R4 + 1              	// [2:1973]  
	     [BP + 1] = R4            	// [3:1973]  i
	     jmp L_26_2               	// [4:1973]  
L_26_3:	// 0x5ed
// BB:6 cycle count: 8
//1978  	   }
//1979  
//1980     	}
//1981  	return 	temp;

LM226:
	     .stabn 68,0,1981,LM226-_Get_Num_CategoryMemory
	     R1 = [BP + 0]            	// [0:1981]  temp
	     SP = SP + 2              	// [2:1981]  
	     pop BP, PC from [SP]     	// [3:1981]  
LBE26:
	.endp	
	     .stabn 192,0,0,LBB26-_Get_Num_CategoryMemory
	     .stabs "i:4",128,0,0,1
	     .stabs "temp:4",128,0,0,0
	     .stabn 224,0,0,LBE26-_Get_Num_CategoryMemory
LME27:
	     .stabf LME27-_Get_Num_CategoryMemory
.code
	     .stabs "Save_Question_Cycle:F18",36,0,0,_Save_Question_Cycle

	// Program Unit: Save_Question_Cycle
.public	_Save_Question_Cycle
_Save_Question_Cycle: .proc	
	     .stabn 0xa6,0,0,2
	// i = 0
	// old_frame_pointer = 2
	// return_address = 3
	// lra_spill_temp_16 = 1
//2170  
//2171  /*****************************************************
//2172  ******************************************************/
//2173  void Save_Question_Cycle(unsigned int temp)
//2174  {

LM227:
	     .stabn 68,0,2174,LM227-_Save_Question_Cycle
BB1_PU27:	// 0x5f0
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:2174]  
	     SP = SP - 2              	// [2:2174]  
	     BP = SP + 1              	// [3:2174]  
LBB27:
//2175     unsigned int i;
//2176  
//2177     for(i=0;i<3;i++)

LM228:
	     .stabn 68,0,2177,LM228-_Save_Question_Cycle
	     R4 = 0                   	// [5:2177]  
	     [BP + 0] = R4            	// [6:2177]  i
L_27_2:	// 0x5f6
// BB:2 cycle count: 7
	     R4 = [BP + 0]            	// [0:2177]  i
	     cmp R4, 2                	// [2:2177]  
	     ja L_27_3                	// [3:2177]  
BB3_PU27:	// 0x5f9
// BB:3 cycle count: 26
//2178     	{
//2179        QuestionCycle[i] = QuestionCycle[i+1];

LM229:
	     .stabn 68,0,2179,LM229-_Save_Question_Cycle
	     R4 = [BP + 0]            	// [0:2179]  i
	     R4 = R4 + 1              	// [2:2179]  
	     R3 = 0                   	// [3:2179]  
	     R1 = (_QuestionCycle)    	// [4:2179]  QuestionCycle
	     R2 = seg(_QuestionCycle) 	// [6:2179]  QuestionCycle
	     R4 = R4 + R1             	// [7:2179]  
	     R3 = R3 + R2, Carry      	// [8:2179]  
	     DS = R3                  	// [9:2179]  
	     R4 = DS:[R4]             	// [10:2179]  
	     [BP + 1] = R4            	// [12:2179]  lra_spill_temp_16
	     R4 = [BP + 0]            	// [13:2179]  i
	     R3 = 0                   	// [15:2179]  
	     R1 = (_QuestionCycle)    	// [16:2179]  QuestionCycle
	     R2 = seg(_QuestionCycle) 	// [18:2179]  QuestionCycle
	     R4 = R4 + R1             	// [19:2179]  
	     R3 = R3 + R2, Carry      	// [20:2179]  
	     DS = R3                  	// [21:2179]  
	     R3 = [BP + 1]            	// [22:2179]  lra_spill_temp_16
	     DS:[R4] = R3             	// [24:2179]  
Lt_27_1:	// 0x60e
// BB:4 cycle count: 8

LM230:
	     .stabn 68,0,2177,LM230-_Save_Question_Cycle
	     R4 = [BP + 0]            	// [0:2177]  i
	     R4 = R4 + 1              	// [2:2177]  
	     [BP + 0] = R4            	// [3:2177]  i
	     jmp L_27_2               	// [4:2177]  
L_27_3:	// 0x612
// BB:5 cycle count: 13
//2180     	}
//2181     
//2182     QuestionCycle[3] = temp;

LM231:
	     .stabn 68,0,2182,LM231-_Save_Question_Cycle
	     R3 = [BP + 5]            	// [0:2182]  temp
	     DS = seg(_QuestionCycle+3)	// [2:2182]  QuestionCycle+3
	     R4 = (_QuestionCycle+3)  	// [3:2182]  QuestionCycle+3
	     DS:[R4] = R3             	// [5:2182]  
	     SP = SP + 2              	// [7:2182]  
	     pop BP, PC from [SP]     	// [8:2182]  
LBE27:
	.endp	
	     .stabs "temp:p4",160,0,0,5
	     .stabn 192,0,0,LBB27-_Save_Question_Cycle
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE27-_Save_Question_Cycle
LME28:
	     .stabf LME28-_Save_Question_Cycle
.code
	     .stabs "Get_Num_Bigscore:F4",36,0,0,_Get_Num_Bigscore

	// Program Unit: Get_Num_Bigscore
.public	_Get_Num_Bigscore
_Get_Num_Bigscore: .proc	
	     .stabn 0xa6,0,0,2
	// i = 0
	// j = 1
	// old_frame_pointer = 2
	// return_address = 3
//3071  
//3072  /*****************************************************
//3073  *******************************************************/
//3074  unsigned int Get_Num_Bigscore( int *roundsORpoint,  int score,unsigned int Play_status )//unsigned int* BitTable
//3075  {

LM232:
	     .stabn 68,0,3075,LM232-_Get_Num_Bigscore
BB1_PU28:	// 0x619
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:3075]  
	     SP = SP - 2              	// [2:3075]  
	     BP = SP + 1              	// [3:3075]  
LBB28:
//3076  	unsigned i = 0;

LM233:
	     .stabn 68,0,3076,LM233-_Get_Num_Bigscore
	     R4 = 0                   	// [5:3076]  
	     [BP + 0] = R4            	// [6:3076]  i
//3077  	unsigned j = 0;

LM234:
	     .stabn 68,0,3077,LM234-_Get_Num_Bigscore
	     R4 = 0                   	// [7:3077]  
	     [BP + 1] = R4            	// [8:3077]  j
L_28_1:	// 0x621
// BB:2 cycle count: 7
//3078  
//3079  	
//3080      while(i<C_Player_Num)

LM235:
	     .stabn 68,0,3080,LM235-_Get_Num_Bigscore
	     R4 = [BP + 0]            	// [0:3080]  i
	     cmp R4, 9                	// [2:3080]  
	     ja L_28_2                	// [3:3080]  
BB3_PU28:	// 0x624
// BB:3 cycle count: 18
//3081      	{
//3082           	 if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM236:
	     .stabn 68,0,3082,LM236-_Get_Num_Bigscore
	     R4 = [BP + 0]            	// [0:3082]  i
	     R3 = 0                   	// [2:3082]  
	     R1 = (_BitMap)           	// [3:3082]  BitMap
	     R2 = seg(_BitMap)        	// [5:3082]  BitMap
	     R4 = R4 + R1             	// [6:3082]  
	     R3 = R3 + R2, Carry      	// [7:3082]  
	     DS = R3                  	// [8:3082]  
	     R4 = DS:[R4]             	// [9:3082]  
	     R4 = R4 & [BP + 8]       	// [11:3082]  Play_status
	     cmp R4, 0                	// [13:3082]  
	     je L_28_3                	// [14:3082]  
BB4_PU28:	// 0x630
// BB:4 cycle count: 17
//3083  	    	  {
//3084  			   if(roundsORpoint[i]>=score)

LM237:
	     .stabn 68,0,3084,LM237-_Get_Num_Bigscore
	     R3 = [BP + 0]            	// [0:3084]  i
	     R4 = 0                   	// [2:3084]  
	     R3 = R3 + [BP + 5]       	// [3:3084]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3084]  roundsORpoint+1
	     DS = R4                  	// [7:3084]  
	     R3 = DS:[R3]             	// [8:3084]  
	     R4 = [BP + 7]            	// [10:3084]  score
	     cmp R3, R4               	// [12:3084]  
	     jl L_28_4                	// [13:3084]  
BB5_PU28:	// 0x639
// BB:5 cycle count: 4
//3085  			   {
//3086  				  j++;

LM238:
	     .stabn 68,0,3086,LM238-_Get_Num_Bigscore
	     R4 = [BP + 1]            	// [0:3086]  j
	     R4 = R4 + 1              	// [2:3086]  
	     [BP + 1] = R4            	// [3:3086]  j
L_28_4:	// 0x63c
L_28_3:	// 0x63c
// BB:6 cycle count: 8
//3087  			   }
//3088  	    	}
//3089  	       i++;

LM239:
	     .stabn 68,0,3089,LM239-_Get_Num_Bigscore
	     R4 = [BP + 0]            	// [0:3089]  i
	     R4 = R4 + 1              	// [2:3089]  
	     [BP + 0] = R4            	// [3:3089]  i
	     jmp L_28_1               	// [4:3089]  
L_28_2:	// 0x640
// BB:7 cycle count: 8
//3090  
//3091      	}
//3092  
//3093      return j;

LM240:
	     .stabn 68,0,3093,LM240-_Get_Num_Bigscore
	     R1 = [BP + 1]            	// [0:3093]  j
	     SP = SP + 2              	// [2:3093]  
	     pop BP, PC from [SP]     	// [3:3093]  
LBE28:
	.endp	
	     .stabs "roundsORpoint:p29=*1",160,0,0,5
	     .stabs "score:p1",160,0,0,7
	     .stabs "Play_status:p4",160,0,0,8
	     .stabn 192,0,0,LBB28-_Get_Num_Bigscore
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabn 224,0,0,LBE28-_Get_Num_Bigscore
LME29:
	     .stabf LME29-_Get_Num_Bigscore
.code
	     .stabs "Get_All_SameNum:F4",36,0,0,_Get_All_SameNum

	// Program Unit: Get_All_SameNum
.public	_Get_All_SameNum
_Get_All_SameNum: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//3097  
//3098  /*****************************************************
//3099  *******************************************************/
//3100  unsigned int Get_All_SameNum( int *roundsORpoint,  int score,unsigned int Play_status )//unsigned int* BitTable
//3101  {

LM241:
	     .stabn 68,0,3101,LM241-_Get_All_SameNum
BB1_PU29:	// 0x643
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:3101]  
	     SP = SP - 1              	// [2:3101]  
	     BP = SP + 1              	// [3:3101]  
LBB29:
//3102  	unsigned i = 0;

LM242:
	     .stabn 68,0,3102,LM242-_Get_All_SameNum
	     R4 = 0                   	// [5:3102]  
	     [BP + 0] = R4            	// [6:3102]  i
L_29_1:	// 0x649
// BB:2 cycle count: 7
//3103  
//3104  
//3105      while(i<C_Player_Num)

LM243:
	     .stabn 68,0,3105,LM243-_Get_All_SameNum
	     R4 = [BP + 0]            	// [0:3105]  i
	     cmp R4, 9                	// [2:3105]  
	     ja L_29_2                	// [3:3105]  
BB3_PU29:	// 0x64c
// BB:3 cycle count: 18
//3106      	{
//3107           	 if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM244:
	     .stabn 68,0,3107,LM244-_Get_All_SameNum
	     R4 = [BP + 0]            	// [0:3107]  i
	     R3 = 0                   	// [2:3107]  
	     R1 = (_BitMap)           	// [3:3107]  BitMap
	     R2 = seg(_BitMap)        	// [5:3107]  BitMap
	     R4 = R4 + R1             	// [6:3107]  
	     R3 = R3 + R2, Carry      	// [7:3107]  
	     DS = R3                  	// [8:3107]  
	     R4 = DS:[R4]             	// [9:3107]  
	     R4 = R4 & [BP + 7]       	// [11:3107]  Play_status
	     cmp R4, 0                	// [13:3107]  
	     je L_29_3                	// [14:3107]  
BB4_PU29:	// 0x658
// BB:4 cycle count: 17
//3108  	    	  {
//3109  			   if(roundsORpoint[i]==score)

LM245:
	     .stabn 68,0,3109,LM245-_Get_All_SameNum
	     R3 = [BP + 0]            	// [0:3109]  i
	     R4 = 0                   	// [2:3109]  
	     R3 = R3 + [BP + 4]       	// [3:3109]  roundsORpoint
	     R4 = R4 + [BP + 5], Carry	// [5:3109]  roundsORpoint+1
	     DS = R4                  	// [7:3109]  
	     R3 = DS:[R3]             	// [8:3109]  
	     R4 = [BP + 6]            	// [10:3109]  score
	     cmp R3, R4               	// [12:3109]  
	     je L_29_4                	// [13:3109]  
BB5_PU29:	// 0x661
// BB:5 cycle count: 7
//3110  			   {
//3111  				  
//3112  			   }
//3113  			   else 
//3114  			      return 0; 

LM246:
	     .stabn 68,0,3114,LM246-_Get_All_SameNum
	     R1 = 0                   	// [0:3114]  
	     SP = SP + 1              	// [1:3114]  
	     pop BP, PC from [SP]     	// [2:3114]  
L_29_4:	// 0x664
L_29_3:	// 0x664
// BB:6 cycle count: 8
//3115  			   
//3116  	    	}
//3117  	       i++;

LM247:
	     .stabn 68,0,3117,LM247-_Get_All_SameNum
	     R4 = [BP + 0]            	// [0:3117]  i
	     R4 = R4 + 1              	// [2:3117]  
	     [BP + 0] = R4            	// [3:3117]  i
	     jmp L_29_1               	// [4:3117]  
L_29_2:	// 0x668
// BB:7 cycle count: 7
//3118  
//3119      	}
//3120  
//3121      return 1;

LM248:
	     .stabn 68,0,3121,LM248-_Get_All_SameNum
	     R1 = 1                   	// [0:3121]  
	     SP = SP + 1              	// [1:3121]  
	     pop BP, PC from [SP]     	// [2:3121]  
LBE29:
	.endp	
	     .stabs "roundsORpoint:p29",160,0,0,4
	     .stabs "score:p1",160,0,0,6
	     .stabs "Play_status:p4",160,0,0,7
	     .stabn 192,0,0,LBB29-_Get_All_SameNum
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE29-_Get_All_SameNum
LME30:
	     .stabf LME30-_Get_All_SameNum
.code
	     .stabs "Get_Num_Higgest_score:F4",36,0,0,_Get_Num_Higgest_score

	// Program Unit: Get_Num_Higgest_score
.public	_Get_Num_Higgest_score
_Get_Num_Higgest_score: .proc	
	     .stabn 0xa6,0,0,2
	// i = 0
	// j = 1
	// old_frame_pointer = 2
	// return_address = 3
//3124  
//3125  /*****************************************************
//3126  *******************************************************/
//3127  unsigned int Get_Num_Higgest_score( int *roundsORpoint, unsigned int Play_status )//unsigned int* BitTable
//3128  {

LM249:
	     .stabn 68,0,3128,LM249-_Get_Num_Higgest_score
BB1_PU30:	// 0x66b
// BB:1 cycle count: 22
	     push BP to [SP]          	// [0:3128]  
	     SP = SP - 2              	// [2:3128]  
	     BP = SP + 1              	// [3:3128]  
LBB30:
//3129  	unsigned i = 0;

LM250:
	     .stabn 68,0,3129,LM250-_Get_Num_Higgest_score
	     R4 = 0                   	// [5:3129]  
	     [BP + 0] = R4            	// [6:3129]  i
//3130  	unsigned j = 0;

LM251:
	     .stabn 68,0,3130,LM251-_Get_Num_Higgest_score
	     R4 = 0                   	// [7:3130]  
	     [BP + 1] = R4            	// [8:3130]  j
//3131  
//3132       Higgest_T =0x8000;

LM252:
	     .stabn 68,0,3132,LM252-_Get_Num_Higgest_score
	     R3 = - 32768             	// [9:3132]  
	     DS = seg(_Higgest_T)     	// [11:3132]  Higgest_T
	     R4 = (_Higgest_T)        	// [12:3132]  Higgest_T
	     DS:[R4] = R3             	// [14:3132]  
//3133  
//3134  	Leader_Player =0;

LM253:
	     .stabn 68,0,3134,LM253-_Get_Num_Higgest_score
	     R3 = 0                   	// [16:3134]  
	     DS = seg(_Leader_Player) 	// [17:3134]  Leader_Player
	     R4 = (_Leader_Player)    	// [18:3134]  Leader_Player
	     DS:[R4] = R3             	// [20:3134]  
L_30_1:	// 0x67e
// BB:2 cycle count: 7
//3135  	
//3136  	while(i<C_Player_Num)

LM254:
	     .stabn 68,0,3136,LM254-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3136]  i
	     cmp R4, 9                	// [2:3136]  
	     ja L_30_2                	// [3:3136]  
BB3_PU30:	// 0x681
// BB:3 cycle count: 18
//3137  	{
//3138  	    if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM255:
	     .stabn 68,0,3138,LM255-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3138]  i
	     R3 = 0                   	// [2:3138]  
	     R1 = (_BitMap)           	// [3:3138]  BitMap
	     R2 = seg(_BitMap)        	// [5:3138]  BitMap
	     R4 = R4 + R1             	// [6:3138]  
	     R3 = R3 + R2, Carry      	// [7:3138]  
	     DS = R3                  	// [8:3138]  
	     R4 = DS:[R4]             	// [9:3138]  
	     R4 = R4 & [BP + 7]       	// [11:3138]  Play_status
	     cmp R4, 0                	// [13:3138]  
	     je L_30_3                	// [14:3138]  
BB4_PU30:	// 0x68d
// BB:4 cycle count: 20
//3139  	    	{
//3140  			   if(roundsORpoint[i]>Higgest_T)

LM256:
	     .stabn 68,0,3140,LM256-_Get_Num_Higgest_score
	     R3 = [BP + 0]            	// [0:3140]  i
	     R4 = 0                   	// [2:3140]  
	     R3 = R3 + [BP + 5]       	// [3:3140]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3140]  roundsORpoint+1
	     DS = R4                  	// [7:3140]  
	     R3 = DS:[R3]             	// [8:3140]  
	     DS = seg(_Higgest_T)     	// [10:3140]  Higgest_T
	     R4 = (_Higgest_T)        	// [11:3140]  Higgest_T
	     R4 = DS:[R4]             	// [13:3140]  
	     cmp R3, R4               	// [15:3140]  
	     jle L_30_4               	// [16:3140]  
BB5_PU30:	// 0x699
// BB:5 cycle count: 15
//3141  			   {
//3142  			   	  Higgest_T = roundsORpoint[i];

LM257:
	     .stabn 68,0,3142,LM257-_Get_Num_Higgest_score
	     R3 = [BP + 0]            	// [0:3142]  i
	     R4 = 0                   	// [2:3142]  
	     R3 = R3 + [BP + 5]       	// [3:3142]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3142]  roundsORpoint+1
	     DS = R4                  	// [7:3142]  
	     R3 = DS:[R3]             	// [8:3142]  
	     DS = seg(_Higgest_T)     	// [10:3142]  Higgest_T
	     R4 = (_Higgest_T)        	// [11:3142]  Higgest_T
	     DS:[R4] = R3             	// [13:3142]  
L_30_4:	// 0x6a3
L_30_3:	// 0x6a3
// BB:6 cycle count: 8
//3143  				 // j = i;
//3144  			   }
//3145  	    	}
//3146  	   
//3147  	   i++;

LM258:
	     .stabn 68,0,3147,LM258-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3147]  i
	     R4 = R4 + 1              	// [2:3147]  
	     [BP + 0] = R4            	// [3:3147]  i
	     jmp L_30_1               	// [4:3147]  
L_30_2:	// 0x6a7
// BB:7 cycle count: 2
//3148  	}
//3149  
//3150      i=0;

LM259:
	     .stabn 68,0,3150,LM259-_Get_Num_Higgest_score
	     R4 = 0                   	// [0:3150]  
	     [BP + 0] = R4            	// [1:3150]  i
L_30_5:	// 0x6a9
// BB:8 cycle count: 7
//3151      while(i<C_Player_Num)

LM260:
	     .stabn 68,0,3151,LM260-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3151]  i
	     cmp R4, 9                	// [2:3151]  
	     ja L_30_6                	// [3:3151]  
BB9_PU30:	// 0x6ac
// BB:9 cycle count: 18
//3152      	{
//3153           	 if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM261:
	     .stabn 68,0,3153,LM261-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3153]  i
	     R3 = 0                   	// [2:3153]  
	     R1 = (_BitMap)           	// [3:3153]  BitMap
	     R2 = seg(_BitMap)        	// [5:3153]  BitMap
	     R4 = R4 + R1             	// [6:3153]  
	     R3 = R3 + R2, Carry      	// [7:3153]  
	     DS = R3                  	// [8:3153]  
	     R4 = DS:[R4]             	// [9:3153]  
	     R4 = R4 & [BP + 7]       	// [11:3153]  Play_status
	     cmp R4, 0                	// [13:3153]  
	     je L_30_7                	// [14:3153]  
BB10_PU30:	// 0x6b8
// BB:10 cycle count: 20
//3154  	    	  {
//3155  			   if(roundsORpoint[i]>=Higgest_T)

LM262:
	     .stabn 68,0,3155,LM262-_Get_Num_Higgest_score
	     R3 = [BP + 0]            	// [0:3155]  i
	     R4 = 0                   	// [2:3155]  
	     R3 = R3 + [BP + 5]       	// [3:3155]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3155]  roundsORpoint+1
	     DS = R4                  	// [7:3155]  
	     R3 = DS:[R3]             	// [8:3155]  
	     DS = seg(_Higgest_T)     	// [10:3155]  Higgest_T
	     R4 = (_Higgest_T)        	// [11:3155]  Higgest_T
	     R4 = DS:[R4]             	// [13:3155]  
	     cmp R3, R4               	// [15:3155]  
	     jl L_30_8                	// [16:3155]  
BB11_PU30:	// 0x6c4
// BB:11 cycle count: 25
//3156  			   {
//3157  			   	  Leader_Player |= BitMap[i]; 

LM263:
	     .stabn 68,0,3157,LM263-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3157]  i
	     R3 = 0                   	// [2:3157]  
	     R1 = (_BitMap)           	// [3:3157]  BitMap
	     R2 = seg(_BitMap)        	// [5:3157]  BitMap
	     R4 = R4 + R1             	// [6:3157]  
	     R3 = R3 + R2, Carry      	// [7:3157]  
	     DS = R3                  	// [8:3157]  
	     R4 = DS:[R4]             	// [9:3157]  
	     DS = seg(_Leader_Player) 	// [11:3157]  Leader_Player
	     R3 = (_Leader_Player)    	// [12:3157]  Leader_Player
	     R4 = R4 | DS:[R3]        	// [14:3157]  
	     DS = seg(_Leader_Player) 	// [16:3157]  Leader_Player
	     R3 = (_Leader_Player)    	// [17:3157]  Leader_Player
	     DS:[R3] = R4             	// [19:3157]  
//3158  				  j++;

LM264:
	     .stabn 68,0,3158,LM264-_Get_Num_Higgest_score
	     R4 = [BP + 1]            	// [21:3158]  j
	     R4 = R4 + 1              	// [23:3158]  
	     [BP + 1] = R4            	// [24:3158]  j
L_30_8:	// 0x6d8
L_30_7:	// 0x6d8
// BB:12 cycle count: 8
//3159  			   }
//3160  	    	}
//3161  	       i++;

LM265:
	     .stabn 68,0,3161,LM265-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3161]  i
	     R4 = R4 + 1              	// [2:3161]  
	     [BP + 0] = R4            	// [3:3161]  i
	     jmp L_30_5               	// [4:3161]  
L_30_6:	// 0x6dc
// BB:13 cycle count: 8
//3162  
//3163      	}
//3164  
//3165      return j;

LM266:
	     .stabn 68,0,3165,LM266-_Get_Num_Higgest_score
	     R1 = [BP + 1]            	// [0:3165]  j
	     SP = SP + 2              	// [2:3165]  
	     pop BP, PC from [SP]     	// [3:3165]  
LBE30:
	.endp	
	     .stabs "roundsORpoint:p29",160,0,0,5
	     .stabs "Play_status:p4",160,0,0,7
	     .stabn 192,0,0,LBB30-_Get_Num_Higgest_score
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabn 224,0,0,LBE30-_Get_Num_Higgest_score
LME31:
	     .stabf LME31-_Get_Num_Higgest_score
.code
	     .stabs "Get_Num_Lowest_score:F4",36,0,0,_Get_Num_Lowest_score

	// Program Unit: Get_Num_Lowest_score
.public	_Get_Num_Lowest_score
_Get_Num_Lowest_score: .proc	
	     .stabn 0xa6,0,0,2
	// i = 0
	// j = 1
	// old_frame_pointer = 2
	// return_address = 3
//3168  
//3169  
//3170  
//3171  unsigned int Get_Num_Lowest_score(int *roundsORpoint,unsigned int Play_status )//unsigned int Play_status
//3172  {

LM267:
	     .stabn 68,0,3172,LM267-_Get_Num_Lowest_score
BB1_PU31:	// 0x6df
// BB:1 cycle count: 22
	     push BP to [SP]          	// [0:3172]  
	     SP = SP - 2              	// [2:3172]  
	     BP = SP + 1              	// [3:3172]  
LBB31:
//3173  	unsigned i = 0;

LM268:
	     .stabn 68,0,3173,LM268-_Get_Num_Lowest_score
	     R4 = 0                   	// [5:3173]  
	     [BP + 0] = R4            	// [6:3173]  i
//3174  	unsigned j = 0;

LM269:
	     .stabn 68,0,3174,LM269-_Get_Num_Lowest_score
	     R4 = 0                   	// [7:3174]  
	     [BP + 1] = R4            	// [8:3174]  j
//3175  	//unsigned k =0;
//3176  	
//3177       Lowest_T =0x7fff;

LM270:
	     .stabn 68,0,3177,LM270-_Get_Num_Lowest_score
	     R3 = 32767               	// [9:3177]  
	     DS = seg(_Lowest_T)      	// [11:3177]  Lowest_T
	     R4 = (_Lowest_T)         	// [12:3177]  Lowest_T
	     DS:[R4] = R3             	// [14:3177]  
//3178       Lowest_Player =0;

LM271:
	     .stabn 68,0,3178,LM271-_Get_Num_Lowest_score
	     R3 = 0                   	// [16:3178]  
	     DS = seg(_Lowest_Player) 	// [17:3178]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [18:3178]  Lowest_Player
	     DS:[R4] = R3             	// [20:3178]  
L_31_1:	// 0x6f2
// BB:2 cycle count: 7
//3179  	
//3180  	while(i<C_Player_Num)

LM272:
	     .stabn 68,0,3180,LM272-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3180]  i
	     cmp R4, 9                	// [2:3180]  
	     ja L_31_2                	// [3:3180]  
BB3_PU31:	// 0x6f5
// BB:3 cycle count: 18
//3181  	{
//3182  	      if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM273:
	     .stabn 68,0,3182,LM273-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3182]  i
	     R3 = 0                   	// [2:3182]  
	     R1 = (_BitMap)           	// [3:3182]  BitMap
	     R2 = seg(_BitMap)        	// [5:3182]  BitMap
	     R4 = R4 + R1             	// [6:3182]  
	     R3 = R3 + R2, Carry      	// [7:3182]  
	     DS = R3                  	// [8:3182]  
	     R4 = DS:[R4]             	// [9:3182]  
	     R4 = R4 & [BP + 7]       	// [11:3182]  Play_status
	     cmp R4, 0                	// [13:3182]  
	     je L_31_3                	// [14:3182]  
BB4_PU31:	// 0x701
// BB:4 cycle count: 20
//3183  	    	{
//3184  			   if(roundsORpoint[i]<Lowest_T)

LM274:
	     .stabn 68,0,3184,LM274-_Get_Num_Lowest_score
	     R3 = [BP + 0]            	// [0:3184]  i
	     R4 = 0                   	// [2:3184]  
	     R3 = R3 + [BP + 5]       	// [3:3184]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3184]  roundsORpoint+1
	     DS = R4                  	// [7:3184]  
	     R3 = DS:[R3]             	// [8:3184]  
	     DS = seg(_Lowest_T)      	// [10:3184]  Lowest_T
	     R4 = (_Lowest_T)         	// [11:3184]  Lowest_T
	     R4 = DS:[R4]             	// [13:3184]  
	     cmp R3, R4               	// [15:3184]  
	     jge L_31_4               	// [16:3184]  
BB5_PU31:	// 0x70d
// BB:5 cycle count: 15
//3185  			   {
//3186  			   	  Lowest_T = roundsORpoint[i];

LM275:
	     .stabn 68,0,3186,LM275-_Get_Num_Lowest_score
	     R3 = [BP + 0]            	// [0:3186]  i
	     R4 = 0                   	// [2:3186]  
	     R3 = R3 + [BP + 5]       	// [3:3186]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3186]  roundsORpoint+1
	     DS = R4                  	// [7:3186]  
	     R3 = DS:[R3]             	// [8:3186]  
	     DS = seg(_Lowest_T)      	// [10:3186]  Lowest_T
	     R4 = (_Lowest_T)         	// [11:3186]  Lowest_T
	     DS:[R4] = R3             	// [13:3186]  
L_31_4:	// 0x717
L_31_3:	// 0x717
// BB:6 cycle count: 8
//3187  				  //k= i;
//3188  			   }
//3189  	    	}
//3190  	   
//3191  	   i++;

LM276:
	     .stabn 68,0,3191,LM276-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3191]  i
	     R4 = R4 + 1              	// [2:3191]  
	     [BP + 0] = R4            	// [3:3191]  i
	     jmp L_31_1               	// [4:3191]  
L_31_2:	// 0x71b
// BB:7 cycle count: 10
//3192  	}
//3193  
//3194  // if(PlayScoresFlag)
//3195   {
//3196      if(Lowest_T<0)

LM277:
	     .stabn 68,0,3196,LM277-_Get_Num_Lowest_score
	     DS = seg(_Lowest_T)      	// [0:3196]  Lowest_T
	     R4 = (_Lowest_T)         	// [1:3196]  Lowest_T
	     R4 = DS:[R4]             	// [3:3196]  
	     cmp R4, 0                	// [5:3196]  
	     jge L_31_5               	// [6:3196]  
BB8_PU31:	// 0x721
// BB:8 cycle count: 6
//3197         Lowest_T =0;

LM278:
	     .stabn 68,0,3197,LM278-_Get_Num_Lowest_score
	     R3 = 0                   	// [0:3197]  
	     DS = seg(_Lowest_T)      	// [1:3197]  Lowest_T
	     R4 = (_Lowest_T)         	// [2:3197]  Lowest_T
	     DS:[R4] = R3             	// [4:3197]  
L_31_5:	// 0x726
// BB:9 cycle count: 2
//3198   }
//3199  
//3200  
//3201      i=0;

LM279:
	     .stabn 68,0,3201,LM279-_Get_Num_Lowest_score
	     R4 = 0                   	// [0:3201]  
	     [BP + 0] = R4            	// [1:3201]  i
L_31_6:	// 0x728
// BB:10 cycle count: 7
//3202      while(i<C_Player_Num)

LM280:
	     .stabn 68,0,3202,LM280-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3202]  i
	     cmp R4, 9                	// [2:3202]  
	     ja L_31_7                	// [3:3202]  
BB11_PU31:	// 0x72b
// BB:11 cycle count: 18
//3203      	{
//3204           	if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM281:
	     .stabn 68,0,3204,LM281-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3204]  i
	     R3 = 0                   	// [2:3204]  
	     R1 = (_BitMap)           	// [3:3204]  BitMap
	     R2 = seg(_BitMap)        	// [5:3204]  BitMap
	     R4 = R4 + R1             	// [6:3204]  
	     R3 = R3 + R2, Carry      	// [7:3204]  
	     DS = R3                  	// [8:3204]  
	     R4 = DS:[R4]             	// [9:3204]  
	     R4 = R4 & [BP + 7]       	// [11:3204]  Play_status
	     cmp R4, 0                	// [13:3204]  
	     je L_31_8                	// [14:3204]  
BB12_PU31:	// 0x737
// BB:12 cycle count: 20
//3205  	    	  {
//3206  			   if(roundsORpoint[i]<=Lowest_T)

LM282:
	     .stabn 68,0,3206,LM282-_Get_Num_Lowest_score
	     R3 = [BP + 0]            	// [0:3206]  i
	     R4 = 0                   	// [2:3206]  
	     R3 = R3 + [BP + 5]       	// [3:3206]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3206]  roundsORpoint+1
	     DS = R4                  	// [7:3206]  
	     R3 = DS:[R3]             	// [8:3206]  
	     DS = seg(_Lowest_T)      	// [10:3206]  Lowest_T
	     R4 = (_Lowest_T)         	// [11:3206]  Lowest_T
	     R4 = DS:[R4]             	// [13:3206]  
	     cmp R3, R4               	// [15:3206]  
	     jg L_31_9                	// [16:3206]  
BB13_PU31:	// 0x743
// BB:13 cycle count: 25
//3207  			   {
//3208  			   	  Lowest_Player |= BitMap[i]; 

LM283:
	     .stabn 68,0,3208,LM283-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3208]  i
	     R3 = 0                   	// [2:3208]  
	     R1 = (_BitMap)           	// [3:3208]  BitMap
	     R2 = seg(_BitMap)        	// [5:3208]  BitMap
	     R4 = R4 + R1             	// [6:3208]  
	     R3 = R3 + R2, Carry      	// [7:3208]  
	     DS = R3                  	// [8:3208]  
	     R4 = DS:[R4]             	// [9:3208]  
	     DS = seg(_Lowest_Player) 	// [11:3208]  Lowest_Player
	     R3 = (_Lowest_Player)    	// [12:3208]  Lowest_Player
	     R4 = R4 | DS:[R3]        	// [14:3208]  
	     DS = seg(_Lowest_Player) 	// [16:3208]  Lowest_Player
	     R3 = (_Lowest_Player)    	// [17:3208]  Lowest_Player
	     DS:[R3] = R4             	// [19:3208]  
//3209  				  j ++;

LM284:
	     .stabn 68,0,3209,LM284-_Get_Num_Lowest_score
	     R4 = [BP + 1]            	// [21:3209]  j
	     R4 = R4 + 1              	// [23:3209]  
	     [BP + 1] = R4            	// [24:3209]  j
L_31_9:	// 0x757
L_31_8:	// 0x757
// BB:14 cycle count: 8
//3210  			   }
//3211  	    	}
//3212  	       i++;

LM285:
	     .stabn 68,0,3212,LM285-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3212]  i
	     R4 = R4 + 1              	// [2:3212]  
	     [BP + 0] = R4            	// [3:3212]  i
	     jmp L_31_6               	// [4:3212]  
L_31_7:	// 0x75b
// BB:15 cycle count: 8
//3213  
//3214      	}
//3215  
//3216      return j;

LM286:
	     .stabn 68,0,3216,LM286-_Get_Num_Lowest_score
	     R1 = [BP + 1]            	// [0:3216]  j
	     SP = SP + 2              	// [2:3216]  
	     pop BP, PC from [SP]     	// [3:3216]  
LBE31:
	.endp	
	     .stabs "roundsORpoint:p29",160,0,0,5
	     .stabs "Play_status:p4",160,0,0,7
	     .stabn 192,0,0,LBB31-_Get_Num_Lowest_score
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabn 224,0,0,LBE31-_Get_Num_Lowest_score
LME32:
	     .stabf LME32-_Get_Num_Lowest_score
.code
	     .stabs "checksamescore:F4",36,0,0,_checksamescore

	// Program Unit: checksamescore
.public	_checksamescore
_checksamescore: .proc	
	     .stabn 0xa6,0,0,3
	// i = 0
	// cnt = 1
	// point = 2
	// old_frame_pointer = 3
	// return_address = 4
//3220  }
//3221  
//3222  
//3223  unsigned int checksamescore(unsigned int Play_status )
//3224  {

LM287:
	     .stabn 68,0,3224,LM287-_checksamescore
BB1_PU32:	// 0x75e
// BB:1 cycle count: 11
	     push BP to [SP]          	// [0:3224]  
	     SP = SP - 3              	// [2:3224]  
	     BP = SP + 1              	// [3:3224]  
LBB32:
//3225  	
//3226       unsigned int i = 0;   

LM288:
	     .stabn 68,0,3226,LM288-_checksamescore
	     R4 = 0                   	// [5:3226]  
	     [BP + 0] = R4            	// [6:3226]  i
//3227       unsigned int cnt =0;

LM289:
	     .stabn 68,0,3227,LM289-_checksamescore
	     R4 = 0                   	// [7:3227]  
	     [BP + 1] = R4            	// [8:3227]  cnt
//3228  	 int point =0;

LM290:
	     .stabn 68,0,3228,LM290-_checksamescore
	     R4 = 0                   	// [9:3228]  
	     [BP + 2] = R4            	// [10:3228]  point
L_32_2:	// 0x768
// BB:2 cycle count: 7
//3229  	 
//3230  	while(i<C_Player_Num)

LM291:
	     .stabn 68,0,3230,LM291-_checksamescore
	     R4 = [BP + 0]            	// [0:3230]  i
	     cmp R4, 9                	// [2:3230]  
	     ja L_32_3                	// [3:3230]  
BB3_PU32:	// 0x76b
// BB:3 cycle count: 18
//3231  	{
//3232  	      if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM292:
	     .stabn 68,0,3232,LM292-_checksamescore
	     R4 = [BP + 0]            	// [0:3232]  i
	     R3 = 0                   	// [2:3232]  
	     R1 = (_BitMap)           	// [3:3232]  BitMap
	     R2 = seg(_BitMap)        	// [5:3232]  BitMap
	     R4 = R4 + R1             	// [6:3232]  
	     R3 = R3 + R2, Carry      	// [7:3232]  
	     DS = R3                  	// [8:3232]  
	     R4 = DS:[R4]             	// [9:3232]  
	     R4 = R4 & [BP + 6]       	// [11:3232]  Play_status
	     cmp R4, 0                	// [13:3232]  
	     je L_32_4                	// [14:3232]  
BB4_PU32:	// 0x777
// BB:4 cycle count: 18
//3233  	    	{
//3234  			   if(Player_Point[i]!=point)

LM293:
	     .stabn 68,0,3234,LM293-_checksamescore
	     R4 = [BP + 0]            	// [0:3234]  i
	     R3 = 0                   	// [2:3234]  
	     R1 = (_Player_Point)     	// [3:3234]  Player_Point
	     R2 = seg(_Player_Point)  	// [5:3234]  Player_Point
	     R4 = R4 + R1             	// [6:3234]  
	     R3 = R3 + R2, Carry      	// [7:3234]  
	     DS = R3                  	// [8:3234]  
	     R3 = DS:[R4]             	// [9:3234]  
	     R4 = [BP + 2]            	// [11:3234]  point
	     cmp R3, R4               	// [13:3234]  
	     je L_32_5                	// [14:3234]  
BB5_PU32:	// 0x783
// BB:5 cycle count: 23
//3235  			   {
//3236  			   	  point = Player_Point[i];

LM294:
	     .stabn 68,0,3236,LM294-_checksamescore
	     R4 = [BP + 0]            	// [0:3236]  i
	     R3 = 0                   	// [2:3236]  
	     R1 = (_Player_Point)     	// [3:3236]  Player_Point
	     R2 = seg(_Player_Point)  	// [5:3236]  Player_Point
	     R4 = R4 + R1             	// [6:3236]  
	     R3 = R3 + R2, Carry      	// [7:3236]  
	     DS = R3                  	// [8:3236]  
	     R4 = DS:[R4]             	// [9:3236]  
	     [BP + 2] = R4            	// [11:3236]  point
//3237  				  cnt++;

LM295:
	     .stabn 68,0,3237,LM295-_checksamescore
	     R4 = [BP + 1]            	// [12:3237]  cnt
	     R4 = R4 + 1              	// [14:3237]  
	     [BP + 1] = R4            	// [15:3237]  cnt
//3238  				  
//3239  				  if(cnt>1)

LM296:
	     .stabn 68,0,3239,LM296-_checksamescore
	     R4 = [BP + 1]            	// [16:3239]  cnt
	     cmp R4, 1                	// [18:3239]  
	     jbe L_32_6               	// [19:3239]  
BB6_PU32:	// 0x793
// BB:6 cycle count: 4
//3240  				  	 break;

LM297:
	     .stabn 68,0,3240,LM297-_checksamescore
	     jmp Lt_32_1              	// [0:3240]  
L_32_6:	// 0x794
L_32_5:	// 0x794
L_32_4:	// 0x794
// BB:7 cycle count: 8
//3241  			   }
//3242  	    	}
//3243  	   
//3244  	   i++;

LM298:
	     .stabn 68,0,3244,LM298-_checksamescore
	     R4 = [BP + 0]            	// [0:3244]  i
	     R4 = R4 + 1              	// [2:3244]  
	     [BP + 0] = R4            	// [3:3244]  i
	     jmp L_32_2               	// [4:3244]  
L_32_3:	// 0x798
Lt_32_1:	// 0x798
// BB:8 cycle count: 7
//3245  	}
//3246  	
//3247  	if(cnt>1)

LM299:
	     .stabn 68,0,3247,LM299-_checksamescore
	     R4 = [BP + 1]            	// [0:3247]  cnt
	     cmp R4, 1                	// [2:3247]  
	     jbe L_32_7               	// [3:3247]  
BB9_PU32:	// 0x79b
// BB:9 cycle count: 7
//3248  		return 0;

LM300:
	     .stabn 68,0,3248,LM300-_checksamescore
	     R1 = 0                   	// [0:3248]  
	     SP = SP + 3              	// [1:3248]  
	     pop BP, PC from [SP]     	// [2:3248]  
L_32_7:	// 0x79e
// BB:10 cycle count: 7
//3249  	
//3250  	return 1;

LM301:
	     .stabn 68,0,3250,LM301-_checksamescore
	     R1 = 1                   	// [0:3250]  
	     SP = SP + 3              	// [1:3250]  
	     pop BP, PC from [SP]     	// [2:3250]  
LBE32:
	.endp	
	     .stabs "Play_status:p4",160,0,0,6
	     .stabn 192,0,0,LBB32-_checksamescore
	     .stabs "i:4",128,0,0,0
	     .stabs "cnt:4",128,0,0,1
	     .stabs "point:1",128,0,0,2
	     .stabn 224,0,0,LBE32-_checksamescore
LME33:
	     .stabf LME33-_checksamescore
.code
	     .stabs "Add_SomePlayer_Point:F18",36,0,0,_Add_SomePlayer_Point

	// Program Unit: Add_SomePlayer_Point
.public	_Add_SomePlayer_Point
_Add_SomePlayer_Point: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//3326  *************************************************************************/
//3327  
//3328  //=============================================
//3329  void Add_SomePlayer_Point(int point,unsigned int *roundORpint,unsigned int* BitTable )//unsigned int Players
//3330  {

LM302:
	     .stabn 68,0,3330,LM302-_Add_SomePlayer_Point
BB1_PU33:	// 0x7a1
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:3330]  
	     SP = SP - 1              	// [2:3330]  
	     BP = SP + 1              	// [3:3330]  
LBB33:
//3331  
//3332  
//3333  	unsigned i = 0;

LM303:
	     .stabn 68,0,3333,LM303-_Add_SomePlayer_Point
	     R4 = 0                   	// [5:3333]  
	     [BP + 0] = R4            	// [6:3333]  i
L_33_1:	// 0x7a7
// BB:2 cycle count: 7
//3338  	 #endif
//3339  	
//3340  	
//3341  	
//3342  	while(i<C_Player_Num)//C_Player_Num <16

LM304:
	     .stabn 68,0,3342,LM304-_Add_SomePlayer_Point
	     R4 = [BP + 0]            	// [0:3342]  i
	     cmp R4, 9                	// [2:3342]  
	     ja L_33_2                	// [3:3342]  
BB3_PU33:	// 0x7aa
// BB:3 cycle count: 29
//3343  	{
//3344  		 if (BitMap[i%16]&*(BitTable+i/16))//if (BitMap[i]&Players) //Registered_Play_Status

LM305:
	     .stabn 68,0,3344,LM305-_Add_SomePlayer_Point
	     R4 = [BP + 0]            	// [0:3344]  i
	     R4 = R4 & 15             	// [2:3344]  
	     R3 = 0                   	// [3:3344]  
	     R1 = (_BitMap)           	// [4:3344]  BitMap
	     R2 = seg(_BitMap)        	// [6:3344]  BitMap
	     R4 = R4 + R1             	// [7:3344]  
	     R3 = R3 + R2, Carry      	// [8:3344]  
	     DS = R3                  	// [9:3344]  
	     R4 = DS:[R4]             	// [10:3344]  
	     R3 = [BP + 0]            	// [12:3344]  i
	     R2 = R3 lsr 4            	// [14:3344]  
	     R3 = 0                   	// [15:3344]  
	     R2 = R2 + [BP + 7]       	// [16:3344]  BitTable
	     R3 = R3 + [BP + 8], Carry	// [18:3344]  BitTable+1
	     DS = R3                  	// [20:3344]  
	     R3 = DS:[R2]             	// [21:3344]  
	     R4 = R4 & R3             	// [23:3344]  
	     cmp R4, 0                	// [24:3344]  
	     je L_33_3                	// [25:3344]  
BB4_PU33:	// 0x7be
// BB:4 cycle count: 22
//3345  		    {
//3346  		      roundORpint[i]+=point;

LM306:
	     .stabn 68,0,3346,LM306-_Add_SomePlayer_Point
	     R3 = [BP + 0]            	// [0:3346]  i
	     R4 = 0                   	// [2:3346]  
	     R3 = R3 + [BP + 5]       	// [3:3346]  roundORpint
	     R4 = R4 + [BP + 6], Carry	// [5:3346]  roundORpint+1
	     DS = R4                  	// [7:3346]  
	     R4 = DS:[R3]             	// [8:3346]  
	     R4 = R4 + [BP + 4]       	// [10:3346]  point
	     R2 = [BP + 0]            	// [12:3346]  i
	     R3 = 0                   	// [14:3346]  
	     R2 = R2 + [BP + 5]       	// [15:3346]  roundORpint
	     R3 = R3 + [BP + 6], Carry	// [17:3346]  roundORpint+1
	     DS = R3                  	// [19:3346]  
	     DS:[R2] = R4             	// [20:3346]  
L_33_3:	// 0x7cb
// BB:5 cycle count: 8
//3348  		       //if(Player_Point[i]<0)
//3349     	           //    Player_Point[i] =0;
//3350  		      
//3351  		    }
//3352  		   i++;

LM307:
	     .stabn 68,0,3352,LM307-_Add_SomePlayer_Point
	     R4 = [BP + 0]            	// [0:3352]  i
	     R4 = R4 + 1              	// [2:3352]  
	     [BP + 0] = R4            	// [3:3352]  i
	     jmp L_33_1               	// [4:3352]  
L_33_2:	// 0x7cf
// BB:6 cycle count: 6
	     SP = SP + 1              	// [0:3352]  
	     pop BP, PC from [SP]     	// [1:3352]  
LBE33:
	.endp	
	     .stabs "point:p1",160,0,0,4
	     .stabs "roundORpint:p30=*4",160,0,0,5
	     .stabs "BitTable:p30",160,0,0,7
	     .stabn 192,0,0,LBB33-_Add_SomePlayer_Point
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE33-_Add_SomePlayer_Point
LME34:
	     .stabf LME34-_Add_SomePlayer_Point
.code
	     .stabs "Add_ALL_InactivePlayer_Point:F18",36,0,0,_Add_ALL_InactivePlayer_Point

	// Program Unit: Add_ALL_InactivePlayer_Point
.public	_Add_ALL_InactivePlayer_Point
_Add_ALL_InactivePlayer_Point: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//3360  *************************************************************************/
//3361  
//3362  //=============================================
//3363  void Add_ALL_InactivePlayer_Point(int point,unsigned int *roundORpint,unsigned int* BitTable )//(int point)
//3364  {

LM308:
	     .stabn 68,0,3364,LM308-_Add_ALL_InactivePlayer_Point
BB1_PU34:	// 0x7d1
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:3364]  
	     SP = SP - 1              	// [2:3364]  
	     BP = SP + 1              	// [3:3364]  
LBB34:
//3365  
//3366  
//3367  	unsigned i = 0;

LM309:
	     .stabn 68,0,3367,LM309-_Add_ALL_InactivePlayer_Point
	     R4 = 0                   	// [5:3367]  
	     [BP + 0] = R4            	// [6:3367]  i
L_34_1:	// 0x7d7
// BB:2 cycle count: 7
//3372  	 #endif
//3373  	
//3374  	
//3375  	
//3376  	while(i<C_Player_Num)//C_Player_Num <16

LM310:
	     .stabn 68,0,3376,LM310-_Add_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3376]  i
	     cmp R4, 9                	// [2:3376]  
	     ja L_34_2                	// [3:3376]  
BB3_PU34:	// 0x7da
// BB:3 cycle count: 21
//3377  	{
//3378  		   if (BitMap[i]&Registered_Play_Status) //Registered_Play_Status

LM311:
	     .stabn 68,0,3378,LM311-_Add_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3378]  i
	     R3 = 0                   	// [2:3378]  
	     R1 = (_BitMap)           	// [3:3378]  BitMap
	     R2 = seg(_BitMap)        	// [5:3378]  BitMap
	     R4 = R4 + R1             	// [6:3378]  
	     R3 = R3 + R2, Carry      	// [7:3378]  
	     DS = R3                  	// [8:3378]  
	     R4 = DS:[R4]             	// [9:3378]  
	     DS = seg(_Registered_Play_Status)	// [11:3378]  Registered_Play_Status
	     R3 = (_Registered_Play_Status)	// [12:3378]  Registered_Play_Status
	     R4 = R4 & DS:[R3]        	// [14:3378]  
	     cmp R4, 0                	// [16:3378]  
	     je L_34_3                	// [17:3378]  
BB4_PU34:	// 0x7e9
// BB:4 cycle count: 12
//3379  		    {
//3380  		    	
//3381  		        if(i!=Player_Activing_Cnt)//if ((BitMap[i%16]&*(BitTable+i/16))==0)//if((BitMap[i]&Player_Activing_Bit)==0)	

LM312:
	     .stabn 68,0,3381,LM312-_Add_ALL_InactivePlayer_Point
	     R3 = [BP + 0]            	// [0:3381]  i
	     DS = seg(_Player_Activing_Cnt)	// [2:3381]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [3:3381]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [5:3381]  
	     cmp R3, R4               	// [7:3381]  
	     je L_34_4                	// [8:3381]  
BB5_PU34:	// 0x7f0
// BB:5 cycle count: 22
//3382  		            roundORpint[i]+=point;

LM313:
	     .stabn 68,0,3382,LM313-_Add_ALL_InactivePlayer_Point
	     R3 = [BP + 0]            	// [0:3382]  i
	     R4 = 0                   	// [2:3382]  
	     R3 = R3 + [BP + 5]       	// [3:3382]  roundORpint
	     R4 = R4 + [BP + 6], Carry	// [5:3382]  roundORpint+1
	     DS = R4                  	// [7:3382]  
	     R4 = DS:[R3]             	// [8:3382]  
	     R4 = R4 + [BP + 4]       	// [10:3382]  point
	     R2 = [BP + 0]            	// [12:3382]  i
	     R3 = 0                   	// [14:3382]  
	     R2 = R2 + [BP + 5]       	// [15:3382]  roundORpint
	     R3 = R3 + [BP + 6], Carry	// [17:3382]  roundORpint+1
	     DS = R3                  	// [19:3382]  
	     DS:[R2] = R4             	// [20:3382]  
L_34_4:	// 0x7fd
L_34_3:	// 0x7fd
// BB:6 cycle count: 8
//3383  		    }
//3384  		   i++;

LM314:
	     .stabn 68,0,3384,LM314-_Add_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3384]  i
	     R4 = R4 + 1              	// [2:3384]  
	     [BP + 0] = R4            	// [3:3384]  i
	     jmp L_34_1               	// [4:3384]  
L_34_2:	// 0x801
// BB:7 cycle count: 6
	     SP = SP + 1              	// [0:3384]  
	     pop BP, PC from [SP]     	// [1:3384]  
LBE34:
	.endp	
	     .stabs "point:p1",160,0,0,4
	     .stabs "roundORpint:p30",160,0,0,5
	     .stabs "BitTable:p30",160,0,0,7
	     .stabn 192,0,0,LBB34-_Add_ALL_InactivePlayer_Point
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE34-_Add_ALL_InactivePlayer_Point
LME35:
	     .stabf LME35-_Add_ALL_InactivePlayer_Point
.code
	     .stabs "Sub_ALL_InactivePlayer_Point:F18",36,0,0,_Sub_ALL_InactivePlayer_Point

	// Program Unit: Sub_ALL_InactivePlayer_Point
.public	_Sub_ALL_InactivePlayer_Point
_Sub_ALL_InactivePlayer_Point: .proc	
	     .stabn 0xa6,0,0,2
	// i = 0
	// old_frame_pointer = 2
	// return_address = 3
	// lra_spill_temp_17 = 1
//3388  }
//3389  
//3390  //=============================================
//3391  void Sub_ALL_InactivePlayer_Point(int point,unsigned int Player_buffer)
//3392  {

LM315:
	     .stabn 68,0,3392,LM315-_Sub_ALL_InactivePlayer_Point
BB1_PU35:	// 0x803
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:3392]  
	     SP = SP - 2              	// [2:3392]  
	     BP = SP + 1              	// [3:3392]  
LBB35:
//3393  
//3394  
//3395  	unsigned i = 0;

LM316:
	     .stabn 68,0,3395,LM316-_Sub_ALL_InactivePlayer_Point
	     R4 = 0                   	// [5:3395]  
	     [BP + 0] = R4            	// [6:3395]  i
L_35_1:	// 0x809
// BB:2 cycle count: 7
//3400  	 #endif
//3401  	
//3402  	
//3403  	
//3404  	while(i<C_Player_Num)//C_Player_Num <16

LM317:
	     .stabn 68,0,3404,LM317-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3404]  i
	     cmp R4, 9                	// [2:3404]  
	     jbe BB3_PU35             	// [3:3404]  
BB9_PU35:	// 0x80c
// BB:9 cycle count: 3
	     goto L_35_2              	// [0:0]  
BB3_PU35:	// 0x80e
// BB:3 cycle count: 18
//3405  	{
//3406  		 if (BitMap[i]&Player_buffer) //Registered_Play_Status

LM318:
	     .stabn 68,0,3406,LM318-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3406]  i
	     R3 = 0                   	// [2:3406]  
	     R1 = (_BitMap)           	// [3:3406]  BitMap
	     R2 = seg(_BitMap)        	// [5:3406]  BitMap
	     R4 = R4 + R1             	// [6:3406]  
	     R3 = R3 + R2, Carry      	// [7:3406]  
	     DS = R3                  	// [8:3406]  
	     R4 = DS:[R4]             	// [9:3406]  
	     R4 = R4 & [BP + 6]       	// [11:3406]  Player_buffer
	     cmp R4, 0                	// [13:3406]  
	     je L_35_3                	// [14:3406]  
BB4_PU35:	// 0x81a
// BB:4 cycle count: 21
//3407  		    {
//3408  		    	
//3409  		     if((BitMap[i]&Player_Activing_Bit)==0)	

LM319:
	     .stabn 68,0,3409,LM319-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3409]  i
	     R3 = 0                   	// [2:3409]  
	     R1 = (_BitMap)           	// [3:3409]  BitMap
	     R2 = seg(_BitMap)        	// [5:3409]  BitMap
	     R4 = R4 + R1             	// [6:3409]  
	     R3 = R3 + R2, Carry      	// [7:3409]  
	     DS = R3                  	// [8:3409]  
	     R4 = DS:[R4]             	// [9:3409]  
	     DS = seg(_Player_Activing_Bit)	// [11:3409]  Player_Activing_Bit
	     R3 = (_Player_Activing_Bit)	// [12:3409]  Player_Activing_Bit
	     R4 = R4 & DS:[R3]        	// [14:3409]  
	     cmp R4, 0                	// [16:3409]  
	     jne L_35_4               	// [17:3409]  
BB5_PU35:	// 0x829
// BB:5 cycle count: 43
//3410  		     	{
//3411  		          Player_Point[i]-=point;

LM320:
	     .stabn 68,0,3411,LM320-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3411]  i
	     R3 = 0                   	// [2:3411]  
	     R1 = (_Player_Point)     	// [3:3411]  Player_Point
	     R2 = seg(_Player_Point)  	// [5:3411]  Player_Point
	     R4 = R4 + R1             	// [6:3411]  
	     R3 = R3 + R2, Carry      	// [7:3411]  
	     DS = R3                  	// [8:3411]  
	     R4 = DS:[R4]             	// [9:3411]  
	     R4 = R4 - [BP + 5]       	// [11:3411]  point
	     [BP + 1] = R4            	// [13:3411]  lra_spill_temp_17
	     R4 = [BP + 0]            	// [14:3411]  i
	     R3 = 0                   	// [16:3411]  
	     R1 = (_Player_Point)     	// [17:3411]  Player_Point
	     R2 = seg(_Player_Point)  	// [19:3411]  Player_Point
	     R4 = R4 + R1             	// [20:3411]  
	     R3 = R3 + R2, Carry      	// [21:3411]  
	     DS = R3                  	// [22:3411]  
	     R3 = [BP + 1]            	// [23:3411]  lra_spill_temp_17
	     DS:[R4] = R3             	// [25:3411]  
//3412  
//3413  				  if(Player_Point[i]<0)

LM321:
	     .stabn 68,0,3413,LM321-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [27:3413]  i
	     R3 = 0                   	// [29:3413]  
	     R1 = (_Player_Point)     	// [30:3413]  Player_Point
	     R2 = seg(_Player_Point)  	// [32:3413]  Player_Point
	     R4 = R4 + R1             	// [33:3413]  
	     R3 = R3 + R2, Carry      	// [34:3413]  
	     DS = R3                  	// [35:3413]  
	     R4 = DS:[R4]             	// [36:3413]  
	     cmp R4, 0                	// [38:3413]  
	     jge L_35_5               	// [39:3413]  
BB6_PU35:	// 0x849
// BB:6 cycle count: 12
//3414     	                  Player_Point[i] =0;

LM322:
	     .stabn 68,0,3414,LM322-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3414]  i
	     R3 = 0                   	// [2:3414]  
	     R1 = (_Player_Point)     	// [3:3414]  Player_Point
	     R2 = seg(_Player_Point)  	// [5:3414]  Player_Point
	     R4 = R4 + R1             	// [6:3414]  
	     R3 = R3 + R2, Carry      	// [7:3414]  
	     DS = R3                  	// [8:3414]  
	     R3 = 0                   	// [9:3414]  
	     DS:[R4] = R3             	// [10:3414]  
L_35_5:	// 0x853
L_35_4:	// 0x853
L_35_3:	// 0x853
// BB:7 cycle count: 7
//3415  
//3416  		     	}
//3417  		    }
//3418  		   i++;

LM323:
	     .stabn 68,0,3418,LM323-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3418]  i
	     R4 = R4 + 1              	// [2:3418]  
	     [BP + 0] = R4            	// [3:3418]  i
	     goto L_35_1              	// [4:3418]  
L_35_2:	// 0x858
// BB:8 cycle count: 6
	     SP = SP + 2              	// [0:3418]  
	     pop BP, PC from [SP]     	// [1:3418]  
LBE35:
	.endp	
	     .stabs "point:p1",160,0,0,5
	     .stabs "Player_buffer:p4",160,0,0,6
	     .stabn 192,0,0,LBB35-_Sub_ALL_InactivePlayer_Point
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE35-_Sub_ALL_InactivePlayer_Point
LME36:
	     .stabf LME36-_Sub_ALL_InactivePlayer_Point
.code
	     .stabs "PlayScores:F18",36,0,0,_PlayScores

	// Program Unit: PlayScores
.public	_PlayScores
_PlayScores: .proc	
	     .stabn 0xa6,0,0,1
	// temp = 0
	// old_frame_pointer = 1
	// return_address = 2
//3444  
//3445  /*******************************************************
//3446  **************************************************************/
//3447  void PlayScores( int scores)
//3448  {

LM324:
	     .stabn 68,0,3448,LM324-_PlayScores
BB1_PU36:	// 0x85a
// BB:1 cycle count: 13
	     push BP to [SP]          	// [0:3448]  
	     SP = SP - 1              	// [2:3448]  
	     BP = SP + 1              	// [3:3448]  
LBB36:
//3450  	   unsigned int temp;  		
//3451  
//3452  	   	  	
//3453  	   		
//3454             if(scores>100)

LM325:
	     .stabn 68,0,3454,LM325-_PlayScores
	     R4 = [BP + 4]            	// [5:3454]  scores
	     cmp R4, 100              	// [7:3454]  
	     jle L_36_1               	// [9:3454]  
BB2_PU36:	// 0x862
// BB:2 cycle count: 3
//3455                scores =100;

LM326:
	     .stabn 68,0,3455,LM326-_PlayScores
	     R4 = 100                 	// [0:3455]  
	     [BP + 4] = R4            	// [2:3455]  scores
L_36_1:	// 0x865
// BB:3 cycle count: 7
//3456             
//3457             if(scores>=0)					  	

LM327:
	     .stabn 68,0,3457,LM327-_PlayScores
	     R4 = [BP + 4]            	// [0:3457]  scores
	     cmp R4, 0                	// [2:3457]  
	     jl L_36_3                	// [3:3457]  
BB4_PU36:	// 0x868
// BB:4 cycle count: 16
//3458  	          Play_Seq(scores,C_Point_A_StartAddr);

LM328:
	     .stabn 68,0,3458,LM328-_PlayScores
	     SP = SP - 2              	// [0:3458]  
	     R3 = [BP + 4]            	// [1:3458]  scores
	     R4 = SP + 1              	// [3:3458]  
	     [R4] = R3                	// [5:3458]  
	     R3 = 8000                	// [7:3458]  
	     R4 = SP + 2              	// [9:3458]  
	     [R4] = R3                	// [11:3458]  
	     call _Play_Seq           	// [13:3458]  Play_Seq
BB5_PU36:	// 0x874
// BB:5 cycle count: 5
	     SP = SP + 2              	// [0:3458]  
	     jmp L_36_2               	// [1:3458]  
L_36_3:	// 0x876
// BB:6 cycle count: 19
//3459  	     else
//3460  	  	   {
//3461             
//3462                temp= 0-scores;

LM329:
	     .stabn 68,0,3462,LM329-_PlayScores
	     R4 = - [BP + 4]          	// [0:3462]  scores
	     [BP + 0] = R4            	// [2:3462]  temp
//3463  			  Play_Seq(scores,C_Point_A_StartAddr);// Play_Seq(temp-1,C_Point_M_StartAddr);

LM330:
	     .stabn 68,0,3463,LM330-_PlayScores
	     SP = SP - 2              	// [3:3463]  
	     R3 = [BP + 4]            	// [4:3463]  scores
	     R4 = SP + 1              	// [6:3463]  
	     [R4] = R3                	// [8:3463]  
	     R3 = 8000                	// [10:3463]  
	     R4 = SP + 2              	// [12:3463]  
	     [R4] = R3                	// [14:3463]  
	     call _Play_Seq           	// [16:3463]  Play_Seq
BB7_PU36:	// 0x884
// BB:7 cycle count: 1
	     SP = SP + 2              	// [0:3463]  
L_36_2:	// 0x885
// BB:8 cycle count: 6
	     SP = SP + 1              	// [0:3463]  
	     pop BP, PC from [SP]     	// [1:3463]  
LBE36:
	.endp	
	     .stabs "scores:p1",160,0,0,4
	     .stabn 192,0,0,LBB36-_PlayScores
	     .stabs "temp:4",128,0,0,0
	     .stabn 224,0,0,LBE36-_PlayScores
LME37:
	     .stabf LME37-_PlayScores
.code
	     .stabs "Play_Activeplayer:F18",36,0,0,_Play_Activeplayer

	// Program Unit: Play_Activeplayer
.public	_Play_Activeplayer
_Play_Activeplayer: .proc	
	     .stabn 0xa6,0,0,2
	// temp = 0
	// temp3 = 1
	// old_frame_pointer = 2
	// return_address = 3
//3471  
//3472  /******************************************************
//3473  **********************************************************/
//3474  void Play_Activeplayer(unsigned int Ledonflag,unsigned int Player_buffer,unsigned int first_SP)
//3475  {

LM331:
	     .stabn 68,0,3475,LM331-_Play_Activeplayer
BB1_PU37:	// 0x887
// BB:1 cycle count: 5
	     push BP to [SP]          	// [0:3475]  
	     SP = SP - 2              	// [2:3475]  
	     BP = SP + 1              	// [3:3475]  
L_37_5:	// 0x88b
// BB:2 cycle count: 7
LBB37:
//3476       //unsigned int temp1 = Player_Activing_Bit;
//3477  	 unsigned int temp,temp3;
//3478  
//3479           while(Player_buffer)

LM332:
	     .stabn 68,0,3479,LM332-_Play_Activeplayer
	     R4 = [BP + 6]            	// [0:3479]  Player_buffer
	     cmp R4, 0                	// [2:3479]  
	     je L_37_6                	// [3:3479]  
BB3_PU37:	// 0x88e
// BB:3 cycle count: 10
//3480  		  {
//3481  	             
//3482  	              temp =  Get_Firstcnt_From_Play(Player_buffer);

LM333:
	     .stabn 68,0,3482,LM333-_Play_Activeplayer
	     SP = SP - 1              	// [0:3482]  
	     R3 = [BP + 6]            	// [1:3482]  Player_buffer
	     R4 = SP + 1              	// [3:3482]  
	     [R4] = R3                	// [5:3482]  
	     call _Get_Firstcnt_From_Play	// [7:3482]  Get_Firstcnt_From_Play
BB4_PU37:	// 0x895
// BB:4 cycle count: 19
	     SP = SP + 1              	// [0:3482]  
	     [BP + 0] = R1            	// [1:3482]  temp
//3483  	              Player_buffer&=~(1<<temp);

LM334:
	     .stabn 68,0,3483,LM334-_Play_Activeplayer
	     R4 = 1                   	// [2:3483]  
	     R3 = [BP + 0]            	// [3:3483]  temp
	     R3 = R3 & 15             	// [5:3483]  
	     R4 = R4 lsl R3           	// [6:3483]  
	     R4 = R4 ^ 65535          	// [7:3483]  
	     R4 = R4 & [BP + 6]       	// [9:3483]  Player_buffer
	     [BP + 6] = R4            	// [11:3483]  Player_buffer
//3484                     
//3485                  if(Ledonflag)

LM335:
	     .stabn 68,0,3485,LM335-_Play_Activeplayer
	     R4 = [BP + 5]            	// [12:3485]  Ledonflag
	     cmp R4, 0                	// [14:3485]  
	     je L_37_7                	// [15:3485]  
BB5_PU37:	// 0x8a2
// BB:5 cycle count: 22
//3486                  	{
//3487  					  temp3 = Led_Data_Play[temp];

LM336:
	     .stabn 68,0,3487,LM336-_Play_Activeplayer
	     R4 = [BP + 0]            	// [0:3487]  temp
	     R3 = 0                   	// [2:3487]  
	     R1 = (_Led_Data_Play)    	// [3:3487]  Led_Data_Play
	     R2 = seg(_Led_Data_Play) 	// [5:3487]  Led_Data_Play
	     R4 = R4 + R1             	// [6:3487]  
	     R3 = R3 + R2, Carry      	// [7:3487]  
	     DS = R3                  	// [8:3487]  
	     R4 = DS:[R4]             	// [9:3487]  
	     [BP + 1] = R4            	// [11:3487]  temp3
//3488  	                  Led_ON_Some(temp3);

LM337:
	     .stabn 68,0,3488,LM337-_Play_Activeplayer
	     SP = SP - 1              	// [12:3488]  
	     R3 = [BP + 1]            	// [13:3488]  temp3
	     R4 = SP + 1              	// [15:3488]  
	     [R4] = R3                	// [17:3488]  
	     call _Led_ON_Some        	// [19:3488]  Led_ON_Some
BB6_PU37:	// 0x8b3
// BB:6 cycle count: 1
	     SP = SP + 1              	// [0:3488]  
L_37_7:	// 0x8b4
// BB:7 cycle count: 12
//3489                  	}				  
//3490  				  PlayA1800_Elements(first_SP +temp);	//B_VLHPQEN_Blue

LM338:
	     .stabn 68,0,3490,LM338-_Play_Activeplayer
	     SP = SP - 1              	// [0:3490]  
	     R4 = [BP + 7]            	// [1:3490]  first_SP
	     R4 = R4 + [BP + 0]       	// [3:3490]  temp
	     R3 = SP + 1              	// [5:3490]  
	     [R3] = R4                	// [7:3490]  
	     call _PlayA1800_Elements 	// [9:3490]  PlayA1800_Elements
BB8_PU37:	// 0x8bc
// BB:8 cycle count: 5
	     SP = SP + 1              	// [0:3490]  
	     jmp L_37_5               	// [1:3490]  
L_37_6:	// 0x8be
// BB:9 cycle count: 6
	     SP = SP + 2              	// [0:3490]  
	     pop BP, PC from [SP]     	// [1:3490]  
LBE37:
	.endp	
	     .stabs "Ledonflag:p4",160,0,0,5
	     .stabs "Player_buffer:p4",160,0,0,6
	     .stabs "first_SP:p4",160,0,0,7
	     .stabn 192,0,0,LBB37-_Play_Activeplayer
	     .stabs "temp:4",128,0,0,0
	     .stabs "temp3:4",128,0,0,1
	     .stabn 224,0,0,LBE37-_Play_Activeplayer
LME38:
	     .stabf LME38-_Play_Activeplayer
.code
	     .stabs "Play_Serieplayer:F18",36,0,0,_Play_Serieplayer

	// Program Unit: Play_Serieplayer
.public	_Play_Serieplayer
_Play_Serieplayer: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//3495  
//3496  /******************************************************
//3497  **********************************************************/
//3498  void Play_Serieplayer(unsigned int Ledonflag,unsigned int* BitTable,unsigned int  *SP_Table)
//3499  {

LM339:
	     .stabn 68,0,3499,LM339-_Play_Serieplayer
BB1_PU38:	// 0x8c0
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:3499]  
	     SP = SP - 1              	// [2:3499]  
	     BP = SP + 1              	// [3:3499]  
LBB38:
//3500       //unsigned int temp1 = Player_Activing_Bit;
//3501  	 //unsigned int temp,temp3;
//3502  	 unsigned int  i=0;

LM340:
	     .stabn 68,0,3502,LM340-_Play_Serieplayer
	     R4 = 0                   	// [5:3502]  
	     [BP + 0] = R4            	// [6:3502]  i
L_38_1:	// 0x8c6
// BB:2 cycle count: 12
//3503  
//3504           while(i<Registerd_Num)

LM341:
	     .stabn 68,0,3504,LM341-_Play_Serieplayer
	     R3 = [BP + 0]            	// [0:3504]  i
	     DS = seg(_Registerd_Num) 	// [2:3504]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [3:3504]  Registerd_Num
	     R4 = DS:[R4]             	// [5:3504]  
	     cmp R3, R4               	// [7:3504]  
	     jae L_38_2               	// [8:3504]  
BB3_PU38:	// 0x8cd
// BB:3 cycle count: 29
//3505  		  {
//3506  	             
//3507                  if (BitMap[i%16]&*(BitTable+i/16))

LM342:
	     .stabn 68,0,3507,LM342-_Play_Serieplayer
	     R4 = [BP + 0]            	// [0:3507]  i
	     R4 = R4 & 15             	// [2:3507]  
	     R3 = 0                   	// [3:3507]  
	     R1 = (_BitMap)           	// [4:3507]  BitMap
	     R2 = seg(_BitMap)        	// [6:3507]  BitMap
	     R4 = R4 + R1             	// [7:3507]  
	     R3 = R3 + R2, Carry      	// [8:3507]  
	     DS = R3                  	// [9:3507]  
	     R4 = DS:[R4]             	// [10:3507]  
	     R3 = [BP + 0]            	// [12:3507]  i
	     R2 = R3 lsr 4            	// [14:3507]  
	     R3 = 0                   	// [15:3507]  
	     R2 = R2 + [BP + 5]       	// [16:3507]  BitTable
	     R3 = R3 + [BP + 6], Carry	// [18:3507]  BitTable+1
	     DS = R3                  	// [20:3507]  
	     R3 = DS:[R2]             	// [21:3507]  
	     R4 = R4 & R3             	// [23:3507]  
	     cmp R4, 0                	// [24:3507]  
	     je L_38_3                	// [25:3507]  
BB4_PU38:	// 0x8e1
// BB:4 cycle count: 20
//3508                  	{
//3509  
//3510                          Play_Seq(i,SP_Table);

LM343:
	     .stabn 68,0,3510,LM343-_Play_Serieplayer
	     SP = SP - 3              	// [0:3510]  
	     R3 = [BP + 0]            	// [1:3510]  i
	     R4 = SP + 1              	// [3:3510]  
	     [R4] = R3                	// [5:3510]  
	     R2 = [BP + 7]            	// [7:3510]  SP_Table
	     R3 = [BP + 8]            	// [9:3510]  SP_Table+1
	     R4 = SP + 2              	// [11:3510]  
	     [R4++] = R2              	// [13:3510]  
	     [R4] = R3                	// [15:3510]  
	     call _Play_Seq           	// [17:3510]  Play_Seq
BB5_PU38:	// 0x8ee
// BB:5 cycle count: 1
	     SP = SP + 3              	// [0:3510]  
L_38_3:	// 0x8ef
// BB:6 cycle count: 8
//3511  
//3512                  	}
//3513  
//3514  				i++;

LM344:
	     .stabn 68,0,3514,LM344-_Play_Serieplayer
	     R4 = [BP + 0]            	// [0:3514]  i
	     R4 = R4 + 1              	// [2:3514]  
	     [BP + 0] = R4            	// [3:3514]  i
	     jmp L_38_1               	// [4:3514]  
L_38_2:	// 0x8f3
// BB:7 cycle count: 6
	     SP = SP + 1              	// [0:3514]  
	     pop BP, PC from [SP]     	// [1:3514]  
LBE38:
	.endp	
	     .stabs "Ledonflag:p4",160,0,0,4
	     .stabs "BitTable:p30",160,0,0,5
	     .stabs "SP_Table:p30",160,0,0,7
	     .stabn 192,0,0,LBB38-_Play_Serieplayer
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE38-_Play_Serieplayer
LME39:
	     .stabf LME39-_Play_Serieplayer
.code
	     .stabs "Play_Serieplayer16bit:F18",36,0,0,_Play_Serieplayer16bit

	// Program Unit: Play_Serieplayer16bit
.public	_Play_Serieplayer16bit
_Play_Serieplayer16bit: .proc	
	     .stabn 0xa6,0,0,1
	// temp = 0
	// old_frame_pointer = 1
	// return_address = 2
//3520  
//3521  /******************************************************
//3522  **********************************************************/
//3523  void Play_Serieplayer16bit(unsigned int Ledonflag,unsigned int Player_buffer,unsigned int  *SP_Table)
//3524  {

LM345:
	     .stabn 68,0,3524,LM345-_Play_Serieplayer16bit
BB1_PU39:	// 0x8f5
// BB:1 cycle count: 5
	     push BP to [SP]          	// [0:3524]  
	     SP = SP - 1              	// [2:3524]  
	     BP = SP + 1              	// [3:3524]  
L_39_3:	// 0x8f9
// BB:2 cycle count: 7
LBB39:
//3525       //unsigned int temp1 = Player_Activing_Bit;
//3526  	 unsigned int temp;//,temp3;
//3527  
//3528           while(Player_buffer)

LM346:
	     .stabn 68,0,3528,LM346-_Play_Serieplayer16bit
	     R4 = [BP + 5]            	// [0:3528]  Player_buffer
	     cmp R4, 0                	// [2:3528]  
	     je L_39_4                	// [3:3528]  
BB3_PU39:	// 0x8fc
// BB:3 cycle count: 10
//3529  		  {
//3530  	             
//3531  	              temp =  Get_Firstcnt_From_Play(Player_buffer);

LM347:
	     .stabn 68,0,3531,LM347-_Play_Serieplayer16bit
	     SP = SP - 1              	// [0:3531]  
	     R3 = [BP + 5]            	// [1:3531]  Player_buffer
	     R4 = SP + 1              	// [3:3531]  
	     [R4] = R3                	// [5:3531]  
	     call _Get_Firstcnt_From_Play	// [7:3531]  Get_Firstcnt_From_Play
BB4_PU39:	// 0x903
// BB:4 cycle count: 31
	     SP = SP - 2              	// [0:3531]  
	     [BP + 0] = R1            	// [1:3531]  temp
//3532  	              Player_buffer&=~(1<<temp);

LM348:
	     .stabn 68,0,3532,LM348-_Play_Serieplayer16bit
	     R4 = 1                   	// [2:3532]  
	     R3 = [BP + 0]            	// [3:3532]  temp
	     R3 = R3 & 15             	// [5:3532]  
	     R4 = R4 lsl R3           	// [6:3532]  
	     R4 = R4 ^ 65535          	// [7:3532]  
	     R4 = R4 & [BP + 5]       	// [9:3532]  Player_buffer
	     [BP + 5] = R4            	// [11:3532]  Player_buffer
//3535  //                	{
//3536  //					  temp3 = Led_Data_Play[temp];
//3537  //	                  Led_ON_Some(temp3);
//3538  //                	}				  
//3539  				  Play_Seq(temp,SP_Table);//PlayA1800_Elements(first_SP +temp);	//B_VLHPQEN_Blue

LM349:
	     .stabn 68,0,3539,LM349-_Play_Serieplayer16bit
	     R3 = [BP + 0]            	// [12:3539]  temp
	     R4 = SP + 1              	// [14:3539]  
	     [R4] = R3                	// [16:3539]  
	     R2 = [BP + 6]            	// [18:3539]  SP_Table
	     R3 = [BP + 7]            	// [20:3539]  SP_Table+1
	     R4 = SP + 2              	// [22:3539]  
	     [R4++] = R2              	// [24:3539]  
	     [R4] = R3                	// [26:3539]  
	     call _Play_Seq           	// [28:3539]  Play_Seq
BB5_PU39:	// 0x919
// BB:5 cycle count: 5
	     SP = SP + 3              	// [0:3539]  
	     jmp L_39_3               	// [1:3539]  
L_39_4:	// 0x91b
// BB:6 cycle count: 6
	     SP = SP + 1              	// [0:3539]  
	     pop BP, PC from [SP]     	// [1:3539]  
LBE39:
	.endp	
	     .stabs "Ledonflag:p4",160,0,0,4
	     .stabs "Player_buffer:p4",160,0,0,5
	     .stabs "SP_Table:p30",160,0,0,6
	     .stabn 192,0,0,LBB39-_Play_Serieplayer16bit
	     .stabs "temp:4",128,0,0,0
	     .stabn 224,0,0,LBE39-_Play_Serieplayer16bit
LME40:
	     .stabf LME40-_Play_Serieplayer16bit
.code
	     .stabs "Tell_Scores:F18",36,0,0,_Tell_Scores

	// Program Unit: Tell_Scores
.public	_Tell_Scores
_Tell_Scores: .proc	
	     .stabn 0xa6,0,0,5
	// temp = 3
	// temp2 = 4
	// t_lowest_Player = 0
	// t_highest_Player = 1
	// i = 2
	// old_frame_pointer = 5
	// return_address = 6
//3783  
//3784  /***********************************************************
//3785  *********************************************************/
//3786  void Tell_Scores(unsigned int Final_Scorefalg)
//3787  {

LM350:
	     .stabn 68,0,3787,LM350-_Tell_Scores
BB1_PU40:	// 0x91d
// BB:1 cycle count: 39
	     push BP to [SP]          	// [0:3787]  
	     SP = SP - 5              	// [2:3787]  
	     BP = SP + 1              	// [3:3787]  
LBB40:
//3796   //  unsigned int BlinkFlag_Data_temp =0;
//3797  //   unsigned int Drive_Led_temp =0;
//3798  
//3799  
//3800     unsigned int t_lowest_Player =0;

LM351:
	     .stabn 68,0,3800,LM351-_Tell_Scores
	     R4 = 0                   	// [5:3800]  
	     [BP + 0] = R4            	// [6:3800]  t_lowest_Player
//3801     unsigned int t_highest_Player =0;

LM352:
	     .stabn 68,0,3801,LM352-_Tell_Scores
	     R4 = 0                   	// [7:3801]  
	     [BP + 1] = R4            	// [8:3801]  t_highest_Player
//3802     
//3803    // unsigned int temp_fifty =0;
//3804     unsigned int i=0;    

LM353:
	     .stabn 68,0,3804,LM353-_Tell_Scores
	     R4 = 0                   	// [9:3804]  
	     [BP + 2] = R4            	// [10:3804]  i
//3805    // unsigned int CurrentN =0;
//3806      
//3807  	
//3808     t_lowest_Player = Lowest_Player;

LM354:
	     .stabn 68,0,3808,LM354-_Tell_Scores
	     DS = seg(_Lowest_Player) 	// [11:3808]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [12:3808]  Lowest_Player
	     R4 = DS:[R4]             	// [14:3808]  
	     [BP + 0] = R4            	// [16:3808]  t_lowest_Player
//3809     
//3810  
//3811    
//3812     temp = Get_Num_Lowest_score(Rounds,Registered_Play_Status);//(Registered_Play_Status);

LM355:
	     .stabn 68,0,3812,LM355-_Tell_Scores
	     SP = SP - 3              	// [17:3812]  
	     R2 = (_Rounds)           	// [18:3812]  Rounds
	     R3 = seg(_Rounds)        	// [20:3812]  Rounds
	     R4 = SP + 1              	// [21:3812]  
	     [R4++] = R2              	// [23:3812]  
	     [R4] = R3                	// [25:3812]  
	     DS = seg(_Registered_Play_Status)	// [27:3812]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [28:3812]  Registered_Play_Status
	     R3 = DS:[R4]             	// [30:3812]  
	     R4 = SP + 3              	// [32:3812]  
	     [R4] = R3                	// [34:3812]  
	     call _Get_Num_Lowest_score	// [36:3812]  Get_Num_Lowest_score
BB2_PU40:	// 0x93d
// BB:2 cycle count: 9
	     SP = SP + 3              	// [0:3812]  
	     [BP + 3] = R1            	// [1:3812]  temp
//3813     if(temp ==0) 

LM356:
	     .stabn 68,0,3813,LM356-_Tell_Scores
	     R4 = [BP + 3]            	// [2:3813]  temp
	     cmp R4, 0                	// [4:3813]  
	     jne L_40_12              	// [5:3813]  
BB3_PU40:	// 0x942
// BB:3 cycle count: 18
//3814     	{
//3815     	  PlayScoresFlag =0;

LM357:
	     .stabn 68,0,3815,LM357-_Tell_Scores
	     R3 = 0                   	// [0:3815]  
	     DS = seg(_PlayScoresFlag)	// [1:3815]  PlayScoresFlag
	     R4 = (_PlayScoresFlag)   	// [2:3815]  PlayScoresFlag
	     DS:[R4] = R3             	// [4:3815]  
//3816     	  Key_Event =0;

LM358:
	     .stabn 68,0,3816,LM358-_Tell_Scores
	     R3 = 0                   	// [6:3816]  
	     DS = seg(_Key_Event)     	// [7:3816]  Key_Event
	     R4 = (_Key_Event)        	// [8:3816]  Key_Event
	     DS:[R4] = R3             	// [10:3816]  
//3817     	  return;

LM359:
	     .stabn 68,0,3817,LM359-_Tell_Scores
	     SP = SP + 5              	// [12:3817]  
	     pop BP, PC from [SP]     	// [13:3817]  
L_40_12:	// 0x94e
// BB:4 cycle count: 20
//3818     	}
//3819     	
//3820  //   ChangePlayerFlag =0;
//3821     
//3822     t_highest_Player = Leader_Player;

LM360:
	     .stabn 68,0,3822,LM360-_Tell_Scores
	     DS = seg(_Leader_Player) 	// [0:3822]  Leader_Player
	     R4 = (_Leader_Player)    	// [1:3822]  Leader_Player
	     R4 = DS:[R4]             	// [3:3822]  
	     [BP + 1] = R4            	// [5:3822]  t_highest_Player
//3823  
//3824     //BlinkFlag_Data_temp = BlinkFlag_Data;
//3825     
//3826     PlayScoresFlag =1;

LM361:
	     .stabn 68,0,3826,LM361-_Tell_Scores
	     R3 = 1                   	// [6:3826]  
	     DS = seg(_PlayScoresFlag)	// [7:3826]  PlayScoresFlag
	     R4 = (_PlayScoresFlag)   	// [8:3826]  PlayScoresFlag
	     DS:[R4] = R3             	// [10:3826]  
//3846  
//3847  
//3848    
//3849  
//3850        temp2= Registered_Play_Status;

LM362:
	     .stabn 68,0,3850,LM362-_Tell_Scores
	     DS = seg(_Registered_Play_Status)	// [12:3850]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [13:3850]  Registered_Play_Status
	     R4 = DS:[R4]             	// [15:3850]  
	     [BP + 4] = R4            	// [17:3850]  temp2
//3851  
//3852  	   i=0;

LM363:
	     .stabn 68,0,3852,LM363-_Tell_Scores
	     R4 = 0                   	// [18:3852]  
	     [BP + 2] = R4            	// [19:3852]  i
L_40_13:	// 0x95f
// BB:5 cycle count: 7
//3853  	  
//3854  	  while(i<C_Player_Num)//C_Player_Num <16

LM364:
	     .stabn 68,0,3854,LM364-_Tell_Scores
	     R4 = [BP + 2]            	// [0:3854]  i
	     cmp R4, 9                	// [2:3854]  
	     jbe BB6_PU40             	// [3:3854]  
BB21_PU40:	// 0x962
// BB:21 cycle count: 3
	     goto L_40_14             	// [0:0]  
BB6_PU40:	// 0x964
// BB:6 cycle count: 10
//3855  	  	{
//3856  	  		
//3857  	  	   if(Key_Event)

LM365:
	     .stabn 68,0,3857,LM365-_Tell_Scores
	     DS = seg(_Key_Event)     	// [0:3857]  Key_Event
	     R4 = (_Key_Event)        	// [1:3857]  Key_Event
	     R4 = DS:[R4]             	// [3:3857]  
	     cmp R4, 0                	// [5:3857]  
	     je L_40_15               	// [6:3857]  
BB7_PU40:	// 0x96a
// BB:7 cycle count: 3
//3858         	     break;

LM366:
	     .stabn 68,0,3858,LM366-_Tell_Scores
	     goto Lt_40_1             	// [0:3858]  
L_40_15:	// 0x96c
// BB:8 cycle count: 19
//3859  			
//3860  //			if(CurrentN>3)
//3861  //				break;
//3862  			
//3863  			temp = Get_Num_Lowest_score(Rounds,temp2);

LM367:
	     .stabn 68,0,3863,LM367-_Tell_Scores
	     SP = SP - 3              	// [0:3863]  
	     R2 = (_Rounds)           	// [1:3863]  Rounds
	     R3 = seg(_Rounds)        	// [3:3863]  Rounds
	     R4 = SP + 1              	// [4:3863]  
	     [R4++] = R2              	// [6:3863]  
	     [R4] = R3                	// [8:3863]  
	     R3 = [BP + 4]            	// [10:3863]  temp2
	     R4 = SP + 3              	// [12:3863]  
	     [R4] = R3                	// [14:3863]  
	     call _Get_Num_Lowest_score	// [16:3863]  Get_Num_Lowest_score
BB9_PU40:	// 0x97a
// BB:9 cycle count: 14
	     SP = SP + 3              	// [0:3863]  
	     [BP + 3] = R1            	// [1:3863]  temp
//3864  			
//3865  //			if(Lowest_T>3)
//3866  //                break;
//3867  		
//3868  			if(Lowest_Player==temp2)  //最高分

LM368:
	     .stabn 68,0,3868,LM368-_Tell_Scores
	     R3 = [BP + 4]            	// [2:3868]  temp2
	     DS = seg(_Lowest_Player) 	// [4:3868]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [5:3868]  Lowest_Player
	     R4 = DS:[R4]             	// [7:3868]  
	     cmp R3, R4               	// [9:3868]  
	     jne L_40_16              	// [10:3868]  
BB10_PU40:	// 0x983
// BB:10 cycle count: 27
//3880  //						// Light_all_off();
//3881  //				   	  }
//3882  //				   	  else 
//3883  				   	   {
//3884  				   	   	   Play_Serieplayer16bit(0,Lowest_Player,C_Play_StartAddr);

LM369:
	     .stabn 68,0,3884,LM369-_Tell_Scores
	     SP = SP - 4              	// [0:3884]  
	     R3 = 0                   	// [1:3884]  
	     R4 = SP + 1              	// [2:3884]  
	     [R4] = R3                	// [4:3884]  
	     DS = seg(_Lowest_Player) 	// [6:3884]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [7:3884]  Lowest_Player
	     R3 = DS:[R4]             	// [9:3884]  
	     R4 = SP + 2              	// [11:3884]  
	     [R4] = R3                	// [13:3884]  
	     R2 = 6000                	// [15:3884]  
	     R3 = 0                   	// [17:3884]  
	     R4 = SP + 3              	// [18:3884]  
	     [R4++] = R2              	// [20:3884]  
	     [R4] = R3                	// [22:3884]  
	     call _Play_Serieplayer16bit	// [24:3884]  Play_Serieplayer16bit
BB11_PU40:	// 0x998
// BB:11 cycle count: 10
	     SP = SP + 3              	// [0:3884]  
//3885  	                       PlayA1800_Elements(A_VLMMREN_WinRound01);

LM370:
	     .stabn 68,0,3885,LM370-_Tell_Scores
	     R3 = 76                  	// [1:3885]  
	     R4 = SP + 1              	// [3:3885]  
	     [R4] = R3                	// [5:3885]  
	     call _PlayA1800_Elements 	// [7:3885]  PlayA1800_Elements
BB12_PU40:	// 0x9a0
// BB:12 cycle count: 19
	     SP = SP - 1              	// [0:3885]  
//3886  					  
//3887  
//3888  				    	    Play_Seq(Lowest_T,C_RoundsTable);//PlayScores(Higgest_T);

LM371:
	     .stabn 68,0,3888,LM371-_Tell_Scores
	     DS = seg(_Lowest_T)      	// [1:3888]  Lowest_T
	     R4 = (_Lowest_T)         	// [2:3888]  Lowest_T
	     R3 = DS:[R4]             	// [4:3888]  
	     R4 = SP + 1              	// [6:3888]  
	     [R4] = R3                	// [8:3888]  
	     R3 = 13050               	// [10:3888]  
	     R4 = SP + 2              	// [12:3888]  
	     [R4] = R3                	// [14:3888]  
	     call _Play_Seq           	// [16:3888]  Play_Seq
BB13_PU40:	// 0x9af
// BB:13 cycle count: 5
	     SP = SP + 2              	// [0:3888]  
//3889  				   	   	 }
//3890  				   	   	 
//3891  				   	  	 //Light_all_off();
//3892  					   
//3893  				    break;

LM372:
	     .stabn 68,0,3893,LM372-_Tell_Scores
	     jmp Lt_40_1              	// [1:3893]  
L_40_16:	// 0x9b1
// BB:14 cycle count: 27
//3894  
//3895  				 }
//3896  				
//3897  
//3898  			     Play_Serieplayer16bit(0,Lowest_Player,C_Play_StartAddr);//Play_Activeplayer(1,Lowest_Player,0);  

LM373:
	     .stabn 68,0,3898,LM373-_Tell_Scores
	     SP = SP - 4              	// [0:3898]  
	     R3 = 0                   	// [1:3898]  
	     R4 = SP + 1              	// [2:3898]  
	     [R4] = R3                	// [4:3898]  
	     DS = seg(_Lowest_Player) 	// [6:3898]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [7:3898]  Lowest_Player
	     R3 = DS:[R4]             	// [9:3898]  
	     R4 = SP + 2              	// [11:3898]  
	     [R4] = R3                	// [13:3898]  
	     R2 = 6000                	// [15:3898]  
	     R3 = 0                   	// [17:3898]  
	     R4 = SP + 3              	// [18:3898]  
	     [R4++] = R2              	// [20:3898]  
	     [R4] = R3                	// [22:3898]  
	     call _Play_Serieplayer16bit	// [24:3898]  Play_Serieplayer16bit
BB15_PU40:	// 0x9c6
// BB:15 cycle count: 10
	     SP = SP + 3              	// [0:3898]  
//3899  			     
//3900  //			   if(temp>1)    
//3901  //			     PlayA1800_Elements(A_VLMMREN_WinRound01b);
//3902  //			   else
//3903  			     PlayA1800_Elements(A_VLMMREN_WinRound01);

LM374:
	     .stabn 68,0,3903,LM374-_Tell_Scores
	     R3 = 76                  	// [1:3903]  
	     R4 = SP + 1              	// [3:3903]  
	     [R4] = R3                	// [5:3903]  
	     call _PlayA1800_Elements 	// [7:3903]  PlayA1800_Elements
BB16_PU40:	// 0x9ce
// BB:16 cycle count: 19
	     SP = SP - 1              	// [0:3903]  
//3904  										   
//3905  
//3906  	    	   
//3907  	    	    Play_Seq(Lowest_T,C_RoundsTable);//PlayScores(Higgest_T);

LM375:
	     .stabn 68,0,3907,LM375-_Tell_Scores
	     DS = seg(_Lowest_T)      	// [1:3907]  Lowest_T
	     R4 = (_Lowest_T)         	// [2:3907]  Lowest_T
	     R3 = DS:[R4]             	// [4:3907]  
	     R4 = SP + 1              	// [6:3907]  
	     [R4] = R3                	// [8:3907]  
	     R3 = 13050               	// [10:3907]  
	     R4 = SP + 2              	// [12:3907]  
	     [R4] = R3                	// [14:3907]  
	     call _Play_Seq           	// [16:3907]  Play_Seq
BB17_PU40:	// 0x9dd
// BB:17 cycle count: 18
	     SP = SP + 2              	// [0:3907]  
//3910  
//3911                //Light_all_off();
//3912  			 
//3913  			  
//3914               temp2 = temp2 &(~Lowest_Player);

LM376:
	     .stabn 68,0,3914,LM376-_Tell_Scores
	     DS = seg(_Lowest_Player) 	// [1:3914]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [2:3914]  Lowest_Player
	     R4 = DS:[R4]             	// [4:3914]  
	     R4 = R4 ^ 65535          	// [6:3914]  
	     R4 = R4 & [BP + 4]       	// [8:3914]  temp2
	     [BP + 4] = R4            	// [10:3914]  temp2
//3915               
//3916               if(temp2 ==0)

LM377:
	     .stabn 68,0,3916,LM377-_Tell_Scores
	     R4 = [BP + 4]            	// [11:3916]  temp2
	     cmp R4, 0                	// [13:3916]  
	     jne L_40_17              	// [14:3916]  
BB18_PU40:	// 0x9e9
// BB:18 cycle count: 4
//3917               	 break;

LM378:
	     .stabn 68,0,3917,LM378-_Tell_Scores
	     jmp Lt_40_1              	// [0:3917]  
L_40_17:	// 0x9ea
// BB:19 cycle count: 7
//3918               
//3919  			 i++;

LM379:
	     .stabn 68,0,3919,LM379-_Tell_Scores
	     R4 = [BP + 2]            	// [0:3919]  i
	     R4 = R4 + 1              	// [2:3919]  
	     [BP + 2] = R4            	// [3:3919]  i
	     goto L_40_13             	// [4:3919]  
L_40_14:	// 0x9ef
Lt_40_1:	// 0x9ef
// BB:20 cycle count: 12
//3923  	  	}
//3924  
//3925  
//3926  
//3927     PlayScoresFlag =0;

LM380:
	     .stabn 68,0,3927,LM380-_Tell_Scores
	     R3 = 0                   	// [0:3927]  
	     DS = seg(_PlayScoresFlag)	// [1:3927]  PlayScoresFlag
	     R4 = (_PlayScoresFlag)   	// [2:3927]  PlayScoresFlag
	     DS:[R4] = R3             	// [4:3927]  
	     SP = SP + 5              	// [6:3927]  
	     pop BP, PC from [SP]     	// [7:3927]  
LBE40:
	.endp	
	     .stabs "Final_Scorefalg:p4",160,0,0,8
	     .stabn 192,0,0,LBB40-_Tell_Scores
	     .stabs "temp:4",128,0,0,3
	     .stabs "temp2:4",128,0,0,4
	     .stabs "t_lowest_Player:4",128,0,0,0
	     .stabs "t_highest_Player:4",128,0,0,1
	     .stabs "i:4",128,0,0,2
	     .stabn 224,0,0,LBE40-_Tell_Scores
LME41:
	     .stabf LME41-_Tell_Scores
.code
	     .stabs "Key_CheckScores:F4",36,0,0,_Key_CheckScores

	// Program Unit: Key_CheckScores
.public	_Key_CheckScores
_Key_CheckScores: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//3931  
//3932  /***********************************************************
//3933  *********************************************************/
//3934  unsigned Key_CheckScores()
//3935  {

LM381:
	     .stabn 68,0,3935,LM381-_Key_CheckScores
BB1_PU41:	// 0x9f6
// BB:1 cycle count: 19
	     push BP to [SP]          	// [0:3935]  
	     BP = SP + 1              	// [2:3935]  
//3936  //	unsigned int FiveSec_cnt_temp;
//3937  	
//3938  //    FiveSec_cnt_temp = FiveSec_cnt;	 
//3939  
//3940       Key_Event =0;

LM382:
	     .stabn 68,0,3940,LM382-_Key_CheckScores
	     R3 = 0                   	// [4:3940]  
	     DS = seg(_Key_Event)     	// [5:3940]  Key_Event
	     R4 = (_Key_Event)        	// [6:3940]  Key_Event
	     DS:[R4] = R3             	// [8:3940]  
//3941       Key_activeflag = Playbutton;

LM383:
	     .stabn 68,0,3941,LM383-_Key_CheckScores
	     R3 = 1                   	// [10:3941]  
	     DS = seg(_Key_activeflag)	// [11:3941]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [12:3941]  Key_activeflag
	     DS:[R4] = R3             	// [14:3941]  
//3942  
//3943  
//3944     Light_all_off();

LM384:
	     .stabn 68,0,3944,LM384-_Key_CheckScores
	     call _Light_all_off      	// [16:3944]  Light_all_off
BB2_PU41:	// 0xa05
// BB:2 cycle count: 16
//3945     BlinkFlag_Data = All_Led_data;

LM385:
	     .stabn 68,0,3945,LM385-_Key_CheckScores
	     R3 = 240                 	// [0:3945]  
	     DS = seg(_BlinkFlag_Data)	// [2:3945]  BlinkFlag_Data
	     R4 = (_BlinkFlag_Data)   	// [3:3945]  BlinkFlag_Data
	     DS:[R4] = R3             	// [5:3945]  
//3946  
//3947  
//3948     //CurrentN =0;
//3949     //PlayA1800_Elements(SFX_Score);
//3950     delay_time(8);	

LM386:
	     .stabn 68,0,3950,LM386-_Key_CheckScores
	     SP = SP - 1              	// [7:3950]  
	     R3 = 8                   	// [8:3950]  
	     R4 = SP + 1              	// [9:3950]  
	     [R4] = R3                	// [11:3950]  
	     call _delay_time         	// [13:3950]  delay_time
BB3_PU41:	// 0xa12
// BB:3 cycle count: 9
//3951     PlayA1800_Elements(A_VLMMREN_Score_01);

LM387:
	     .stabn 68,0,3951,LM387-_Key_CheckScores
	     R3 = 65                  	// [0:3951]  
	     R4 = SP + 1              	// [2:3951]  
	     [R4] = R3                	// [4:3951]  
	     call _PlayA1800_Elements 	// [6:3951]  PlayA1800_Elements
BB4_PU41:	// 0xa19
// BB:4 cycle count: 8
//3952     delay_time(8); 

LM388:
	     .stabn 68,0,3952,LM388-_Key_CheckScores
	     R3 = 8                   	// [0:3952]  
	     R4 = SP + 1              	// [1:3952]  
	     [R4] = R3                	// [3:3952]  
	     call _delay_time         	// [5:3952]  delay_time
BB5_PU41:	// 0xa1f
// BB:5 cycle count: 8
//3953     
//3954  
//3955  	Tell_Scores(0);

LM389:
	     .stabn 68,0,3955,LM389-_Key_CheckScores
	     R3 = 0                   	// [0:3955]  
	     R4 = SP + 1              	// [1:3955]  
	     [R4] = R3                	// [3:3955]  
	     call _Tell_Scores        	// [5:3955]  Tell_Scores
BB6_PU41:	// 0xa25
// BB:6 cycle count: 11
	     SP = SP + 1              	// [0:3955]  
//3956  	
//3957     if((PlayQuestionflag)||(TwoKeyflag == 0xffff))	

LM390:
	     .stabn 68,0,3957,LM390-_Key_CheckScores
	     DS = seg(_PlayQuestionflag)	// [1:3957]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [2:3957]  PlayQuestionflag
	     R4 = DS:[R4]             	// [4:3957]  
	     cmp R4, 0                	// [6:3957]  
	     jne L_41_2               	// [7:3957]  
BB7_PU41:	// 0xa2c
// BB:7 cycle count: 11
	     DS = seg(_TwoKeyflag)    	// [0:3957]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [1:3957]  TwoKeyflag
	     R4 = DS:[R4]             	// [3:3957]  
	     cmp R4, 65535            	// [5:3957]  
	     jne L_41_1               	// [7:3957]  
L_41_2:	// 0xa33
// BB:8 cycle count: 6
//3958  	   PauseFlag =2;

LM391:
	     .stabn 68,0,3958,LM391-_Key_CheckScores
	     R3 = 2                   	// [0:3958]  
	     DS = seg(_PauseFlag)     	// [1:3958]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:3958]  PauseFlag
	     DS:[R4] = R3             	// [4:3958]  
L_41_1:	// 0xa38
// BB:9 cycle count: 9
//3961  //
//3962  //     FiveSec_cnt = temp_FiveSec_cnt; 
//3963  
//3964     
//3965        BlinkFlag_Data =0;

LM392:
	     .stabn 68,0,3965,LM392-_Key_CheckScores
	     R3 = 0                   	// [0:3965]  
	     DS = seg(_BlinkFlag_Data)	// [1:3965]  BlinkFlag_Data
	     R4 = (_BlinkFlag_Data)   	// [2:3965]  BlinkFlag_Data
	     DS:[R4] = R3             	// [4:3965]  
//3966  	  Light_all_off();

LM393:
	     .stabn 68,0,3966,LM393-_Key_CheckScores
	     call _Light_all_off      	// [6:3966]  Light_all_off
BB10_PU41:	// 0xa3f
// BB:10 cycle count: 12
//3967  	  
//3968  	  Key_Event =0;

LM394:
	     .stabn 68,0,3968,LM394-_Key_CheckScores
	     R3 = 0                   	// [0:3968]  
	     DS = seg(_Key_Event)     	// [1:3968]  Key_Event
	     R4 = (_Key_Event)        	// [2:3968]  Key_Event
	     DS:[R4] = R3             	// [4:3968]  
//3969  	  return 0xffff;

LM395:
	     .stabn 68,0,3969,LM395-_Key_CheckScores
	     R1 = - 1                 	// [6:3969]  
	     pop BP, PC from [SP]     	// [7:3969]  
	.endp	
LME42:
	     .stabf LME42-_Key_CheckScores
.code
	     .stabs "Sub_QuestionAsked:F18",36,0,0,_Sub_QuestionAsked

	// Program Unit: Sub_QuestionAsked
.public	_Sub_QuestionAsked
_Sub_QuestionAsked: .proc	
	     .stabn 0xa6,0,0,4
	// i = 0
	// __save_expr_temp_6 = 1
	// old_frame_pointer = 4
	// return_address = 5
	// lra_spill_temp_18 = 2
	// lra_spill_temp_19 = 3
//4214  
//4215  /****************************************************
//4216  *******************************************************/
//4217  void Sub_QuestionAsked()
//4218  {

LM396:
	     .stabn 68,0,4218,LM396-_Sub_QuestionAsked
BB1_PU42:	// 0xa46
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4218]  
	     SP = SP - 4              	// [2:4218]  
	     BP = SP + 1              	// [3:4218]  
LBB41:
//4219     unsigned int i;
//4220  
//4221  		    i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM397:
	     .stabn 68,0,4221,LM397-_Sub_QuestionAsked
	     R4 = 0                   	// [5:4221]  
	     [BP + 0] = R4            	// [6:4221]  i
L_42_1:	// 0xa4c
// BB:2 cycle count: 12
//4222  			while(i<R_QuestionNum)

LM398:
	     .stabn 68,0,4222,LM398-_Sub_QuestionAsked
	     R3 = [BP + 0]            	// [0:4222]  i
	     DS = seg(_R_QuestionNum) 	// [2:4222]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:4222]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:4222]  
	     cmp R3, R4               	// [7:4222]  
	     jb BB3_PU42              	// [8:4222]  
BB8_PU42:	// 0xa53
// BB:8 cycle count: 3
	     goto L_42_2              	// [0:0]  
BB3_PU42:	// 0xa55
// BB:3 cycle count: 33
//4223  			{
//4224  
//4225                if((BitMap[i%16]&QuestionStatus_Asked[i/16])==0)

LM399:
	     .stabn 68,0,4225,LM399-_Sub_QuestionAsked
	     R4 = [BP + 0]            	// [0:4225]  i
	     R4 = R4 & 15             	// [2:4225]  
	     R3 = 0                   	// [3:4225]  
	     R1 = (_BitMap)           	// [4:4225]  BitMap
	     R2 = seg(_BitMap)        	// [6:4225]  BitMap
	     R4 = R4 + R1             	// [7:4225]  
	     R3 = R3 + R2, Carry      	// [8:4225]  
	     DS = R3                  	// [9:4225]  
	     R4 = DS:[R4]             	// [10:4225]  
	     [BP + 2] = R4            	// [12:4225]  lra_spill_temp_18
	     R4 = [BP + 0]            	// [13:4225]  i
	     R4 = R4 lsr 4            	// [15:4225]  
	     R3 = 0                   	// [16:4225]  
	     R1 = (_QuestionStatus_Asked)	// [17:4225]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [19:4225]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [20:4225]  
	     R3 = R3 + R2, Carry      	// [21:4225]  
	     DS = R3                  	// [22:4225]  
	     R3 = DS:[R4]             	// [23:4225]  
	     R4 = [BP + 2]            	// [25:4225]  lra_spill_temp_18
	     R4 = R4 & R3             	// [27:4225]  
	     cmp R4, 0                	// [28:4225]  
	     jne L_42_3               	// [29:4225]  
BB4_PU42:	// 0xa6e
// BB:4 cycle count: 47
//4226                	{
//4227                             
//4228                     QuestionStatus_LQA[i/16]&=~BitMap[i%16];

LM400:
	     .stabn 68,0,4228,LM400-_Sub_QuestionAsked
	     R4 = [BP + 0]            	// [0:4228]  i
	     R4 = R4 lsr 4            	// [2:4228]  
	     [BP + 1] = R4            	// [3:4228]  __save_expr_temp_6
	     R4 = [BP + 1]            	// [4:4228]  __save_expr_temp_6
	     R3 = 0                   	// [6:4228]  
	     R1 = (_QuestionStatus_LQA)	// [7:4228]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [9:4228]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [10:4228]  
	     R3 = R3 + R2, Carry      	// [11:4228]  
	     DS = R3                  	// [12:4228]  
	     R4 = DS:[R4]             	// [13:4228]  
	     [BP + 2] = R4            	// [15:4228]  lra_spill_temp_18
	     R4 = [BP + 0]            	// [16:4228]  i
	     R4 = R4 & 15             	// [18:4228]  
	     R3 = 0                   	// [19:4228]  
	     R1 = (_BitMap)           	// [20:4228]  BitMap
	     R2 = seg(_BitMap)        	// [22:4228]  BitMap
	     R4 = R4 + R1             	// [23:4228]  
	     R3 = R3 + R2, Carry      	// [24:4228]  
	     DS = R3                  	// [25:4228]  
	     R4 = DS:[R4]             	// [26:4228]  
	     R3 = R4 ^ 65535          	// [28:4228]  
	     R4 = [BP + 2]            	// [30:4228]  lra_spill_temp_18
	     R4 = R4 & R3             	// [32:4228]  
	     [BP + 3] = R4            	// [33:4228]  lra_spill_temp_19
	     R4 = [BP + 1]            	// [34:4228]  __save_expr_temp_6
	     R3 = 0                   	// [36:4228]  
	     R1 = (_QuestionStatus_LQA)	// [37:4228]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [39:4228]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [40:4228]  
	     R3 = R3 + R2, Carry      	// [41:4228]  
	     DS = R3                  	// [42:4228]  
	     R3 = [BP + 3]            	// [43:4228]  lra_spill_temp_19
	     DS:[R4] = R3             	// [45:4228]  
L_42_3:	// 0xa94
// BB:5 cycle count: 7
//4229                    // QuestionStatus_NoAnswer[i/16]&=~BitMap[i%16];
//4230                	}
//4231  			
//4232  				i++;	

LM401:
	     .stabn 68,0,4232,LM401-_Sub_QuestionAsked
	     R4 = [BP + 0]            	// [0:4232]  i
	     R4 = R4 + 1              	// [2:4232]  
	     [BP + 0] = R4            	// [3:4232]  i
	     goto L_42_1              	// [4:4232]  
L_42_2:	// 0xa99
// BB:6 cycle count: 3
//4233  						
//4234  			}   
//4235  
//4236          WatchdogClear();

LM402:
	     .stabn 68,0,4236,LM402-_Sub_QuestionAsked
	     call _WatchdogClear      	// [0:4236]  WatchdogClear
BB7_PU42:	// 0xa9b
// BB:7 cycle count: 6
	     SP = SP + 4              	// [0:4236]  
	     pop BP, PC from [SP]     	// [1:4236]  
LBE41:
	.endp	
	     .stabn 192,0,0,LBB41-_Sub_QuestionAsked
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE41-_Sub_QuestionAsked
LME43:
	     .stabf LME43-_Sub_QuestionAsked
.code
	     .stabs "Reset_Pselected:F18",36,0,0,_Reset_Pselected

	// Program Unit: Reset_Pselected
.public	_Reset_Pselected
_Reset_Pselected: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//4237  }
//4238  
//4239  
//4240  void  Reset_Pselected()  
//4241  {

LM403:
	     .stabn 68,0,4241,LM403-_Reset_Pselected
BB1_PU43:	// 0xa9d
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4241]  
	     SP = SP - 1              	// [2:4241]  
	     BP = SP + 1              	// [3:4241]  
LBB42:
//4242       unsigned int i;
//4243    
//4244        i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM404:
	     .stabn 68,0,4244,LM404-_Reset_Pselected
	     R4 = 0                   	// [5:4244]  
	     [BP + 0] = R4            	// [6:4244]  i
L_43_1:	// 0xaa3
// BB:2 cycle count: 7
//4245  		while(i<C_ElementsRAM)

LM405:
	     .stabn 68,0,4245,LM405-_Reset_Pselected
	     R4 = [BP + 0]            	// [0:4245]  i
	     cmp R4, 1                	// [2:4245]  
	     ja L_43_2                	// [3:4245]  
BB3_PU43:	// 0xaa6
// BB:3 cycle count: 20
//4246  		{			
//4247  			Pselected[i] =0;

LM406:
	     .stabn 68,0,4247,LM406-_Reset_Pselected
	     R4 = [BP + 0]            	// [0:4247]  i
	     R3 = 0                   	// [2:4247]  
	     R1 = (_Pselected)        	// [3:4247]  Pselected
	     R2 = seg(_Pselected)     	// [5:4247]  Pselected
	     R4 = R4 + R1             	// [6:4247]  
	     R3 = R3 + R2, Carry      	// [7:4247]  
	     DS = R3                  	// [8:4247]  
	     R3 = 0                   	// [9:4247]  
	     DS:[R4] = R3             	// [10:4247]  
//4248  			i++;	

LM407:
	     .stabn 68,0,4248,LM407-_Reset_Pselected
	     R4 = [BP + 0]            	// [12:4248]  i
	     R4 = R4 + 1              	// [14:4248]  
	     [BP + 0] = R4            	// [15:4248]  i
	     jmp L_43_1               	// [16:4248]  
L_43_2:	// 0xab4
// BB:4 cycle count: 6
	     SP = SP + 1              	// [0:4248]  
	     pop BP, PC from [SP]     	// [1:4248]  
LBE42:
	.endp	
	     .stabn 192,0,0,LBB42-_Reset_Pselected
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE42-_Reset_Pselected
LME44:
	     .stabf LME44-_Reset_Pselected
.code
	     .stabs "Rest_LQ_LQA:F18",36,0,0,_Rest_LQ_LQA

	// Program Unit: Rest_LQ_LQA
.public	_Rest_LQ_LQA
_Rest_LQ_LQA: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//4255  
//4256  /**********************************************************
//4257  *************************************************************/
//4258  void Rest_LQ_LQA()
//4259  {

LM408:
	     .stabn 68,0,4259,LM408-_Rest_LQ_LQA
BB1_PU44:	// 0xab6
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4259]  
	     SP = SP - 1              	// [2:4259]  
	     BP = SP + 1              	// [3:4259]  
LBB43:
//4260        unsigned i;
//4261  
//4262  		i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM409:
	     .stabn 68,0,4262,LM409-_Rest_LQ_LQA
	     R4 = 0                   	// [5:4262]  
	     [BP + 0] = R4            	// [6:4262]  i
L_44_1:	// 0xabc
// BB:2 cycle count: 7
//4263  		while(i<C_QuestionRAM)

LM410:
	     .stabn 68,0,4263,LM410-_Rest_LQ_LQA
	     R4 = [BP + 0]            	// [0:4263]  i
	     cmp R4, 19               	// [2:4263]  
	     ja L_44_2                	// [3:4263]  
BB3_PU44:	// 0xabf
// BB:3 cycle count: 32
//4264  		{
//4265  			QuestionStatus_LQA[i] = 0xFFFF;

LM411:
	     .stabn 68,0,4265,LM411-_Rest_LQ_LQA
	     R4 = [BP + 0]            	// [0:4265]  i
	     R3 = 0                   	// [2:4265]  
	     R1 = (_QuestionStatus_LQA)	// [3:4265]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [5:4265]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [6:4265]  
	     R3 = R3 + R2, Carry      	// [7:4265]  
	     DS = R3                  	// [8:4265]  
	     R3 = - 1                 	// [9:4265]  
	     DS:[R4] = R3             	// [10:4265]  
//4266  			QuestionStatus_LQ[i] = 0xFFFF;

LM412:
	     .stabn 68,0,4266,LM412-_Rest_LQ_LQA
	     R4 = [BP + 0]            	// [12:4266]  i
	     R3 = 0                   	// [14:4266]  
	     R1 = (_QuestionStatus_LQ)	// [15:4266]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [17:4266]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [18:4266]  
	     R3 = R3 + R2, Carry      	// [19:4266]  
	     DS = R3                  	// [20:4266]  
	     R3 = - 1                 	// [21:4266]  
	     DS:[R4] = R3             	// [22:4266]  
//4267  			//QuestionStatus_NoAnswer[i] = 0xffff;
//4268  			i++;	

LM413:
	     .stabn 68,0,4268,LM413-_Rest_LQ_LQA
	     R4 = [BP + 0]            	// [24:4268]  i
	     R4 = R4 + 1              	// [26:4268]  
	     [BP + 0] = R4            	// [27:4268]  i
	     jmp L_44_1               	// [28:4268]  
L_44_2:	// 0xad7
// BB:4 cycle count: 15
//4269  					
//4270  		}
//4271  	
//4272  	
//4273  		LQA = R_QuestionNum;//Get_LQA();//R_QuestionNum;//

LM414:
	     .stabn 68,0,4273,LM414-_Rest_LQ_LQA
	     DS = seg(_R_QuestionNum) 	// [0:4273]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [1:4273]  R_QuestionNum
	     R3 = DS:[R4]             	// [3:4273]  
	     DS = seg(_LQA)           	// [5:4273]  LQA
	     R4 = (_LQA)              	// [6:4273]  LQA
	     DS:[R4] = R3             	// [8:4273]  
	//;;
	INT OFF
	//;;
//4274  		
//4275  		
//4276  		   __asm("INT OFF");
//4277        MoveSPIDriverToRAM();		

LM415:
	     .stabn 68,0,4277,LM415-_Rest_LQ_LQA
	     call _MoveSPIDriverToRAM 	// [12:4277]  MoveSPIDriverToRAM
BB5_PU44:	// 0xae4
// BB:5 cycle count: 15
//4278        SPI_Flash_Sector_Erase(T_LQ_Secter_L,T_LQ_Secter_H);

LM416:
	     .stabn 68,0,4278,LM416-_Rest_LQ_LQA
	     SP = SP - 2              	// [0:4278]  
	     R3 = - 12288             	// [1:4278]  
	     R4 = SP + 1              	// [3:4278]  
	     [R4] = R3                	// [5:4278]  
	     R3 = 31                  	// [7:4278]  
	     R4 = SP + 2              	// [8:4278]  
	     [R4] = R3                	// [10:4278]  
	     call _SPI_Flash_Sector_Erase	// [12:4278]  SPI_Flash_Sector_Erase
BB6_PU44:	// 0xaf0
// BB:6 cycle count: 29
	     SP = SP - 3              	// [0:4278]  
//4279        SPI_Flash_SendNWords(QuestionStatus_LQ,C_QuestionRAM,T_LQ_Secter_L,T_LQ_Secter_H);

LM417:
	     .stabn 68,0,4279,LM417-_Rest_LQ_LQA
	     R2 = (_QuestionStatus_LQ)	// [1:4279]  QuestionStatus_LQ
	     R3 = seg(_QuestionStatus_LQ)	// [3:4279]  QuestionStatus_LQ
	     R4 = SP + 1              	// [4:4279]  
	     [R4++] = R2              	// [6:4279]  
	     [R4] = R3                	// [8:4279]  
	     R3 = 20                  	// [10:4279]  
	     R4 = SP + 3              	// [11:4279]  
	     [R4] = R3                	// [13:4279]  
	     R3 = - 12288             	// [15:4279]  
	     R4 = SP + 4              	// [17:4279]  
	     [R4] = R3                	// [19:4279]  
	     R3 = 31                  	// [21:4279]  
	     R4 = SP + 5              	// [22:4279]  
	     [R4] = R3                	// [24:4279]  
	     call _SPI_Flash_SendNWords	// [26:4279]  SPI_Flash_SendNWords
BB7_PU44:	// 0xb07
// BB:7 cycle count: 8
	     SP = SP + 6              	// [0:4279]  
	//;;
	INT FIQ,IRQ
	//;;
//4280        
//4281          __asm("INT FIQ,IRQ");	

LM418:
	     .stabn 68,0,4281,LM418-_Rest_LQ_LQA
	     pop BP, PC from [SP]     	// [3:4281]  
LBE43:
	.endp	
	     .stabn 192,0,0,LBB43-_Rest_LQ_LQA
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE43-_Rest_LQ_LQA
LME45:
	     .stabf LME45-_Rest_LQ_LQA
.code
	     .stabs "Rest_LQA:F18",36,0,0,_Rest_LQA

	// Program Unit: Rest_LQA
.public	_Rest_LQA
_Rest_LQA: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//4286  
//4287  /**********************************************************
//4288  *************************************************************/
//4289  void Rest_LQA()
//4290  {

LM419:
	     .stabn 68,0,4290,LM419-_Rest_LQA
BB1_PU45:	// 0xb06
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4290]  
	     SP = SP - 1              	// [2:4290]  
	     BP = SP + 1              	// [3:4290]  
LBB44:
//4291        unsigned i;
//4292  
//4293  		i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM420:
	     .stabn 68,0,4293,LM420-_Rest_LQA
	     R4 = 0                   	// [5:4293]  
	     [BP + 0] = R4            	// [6:4293]  i
L_45_1:	// 0xb0c
// BB:2 cycle count: 7
//4294  		while(i<C_QuestionRAM)

LM421:
	     .stabn 68,0,4294,LM421-_Rest_LQA
	     R4 = [BP + 0]            	// [0:4294]  i
	     cmp R4, 19               	// [2:4294]  
	     ja L_45_2                	// [3:4294]  
BB3_PU45:	// 0xb0f
// BB:3 cycle count: 20
//4295  		{
//4296  			QuestionStatus_LQA[i] = 0xFFFF;

LM422:
	     .stabn 68,0,4296,LM422-_Rest_LQA
	     R4 = [BP + 0]            	// [0:4296]  i
	     R3 = 0                   	// [2:4296]  
	     R1 = (_QuestionStatus_LQA)	// [3:4296]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [5:4296]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [6:4296]  
	     R3 = R3 + R2, Carry      	// [7:4296]  
	     DS = R3                  	// [8:4296]  
	     R3 = - 1                 	// [9:4296]  
	     DS:[R4] = R3             	// [10:4296]  
//4297  			i++;	

LM423:
	     .stabn 68,0,4297,LM423-_Rest_LQA
	     R4 = [BP + 0]            	// [12:4297]  i
	     R4 = R4 + 1              	// [14:4297]  
	     [BP + 0] = R4            	// [15:4297]  i
	     jmp L_45_1               	// [16:4297]  
L_45_2:	// 0xb1d
// BB:4 cycle count: 16
//4298  					
//4299  		}	
//4300  	
//4301  		LQA = R_QuestionNum;//Get_LQA();//R_QuestionNum;//

LM424:
	     .stabn 68,0,4301,LM424-_Rest_LQA
	     DS = seg(_R_QuestionNum) 	// [0:4301]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [1:4301]  R_QuestionNum
	     R3 = DS:[R4]             	// [3:4301]  
	     DS = seg(_LQA)           	// [5:4301]  LQA
	     R4 = (_LQA)              	// [6:4301]  LQA
	     DS:[R4] = R3             	// [8:4301]  
	     SP = SP + 1              	// [10:4301]  
	     pop BP, PC from [SP]     	// [11:4301]  
LBE44:
	.endp	
	     .stabn 192,0,0,LBB44-_Rest_LQA
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE44-_Rest_LQA
LME46:
	     .stabf LME46-_Rest_LQA
.code
	     .stabs "Rest_Question_Asked:F18",36,0,0,_Rest_Question_Asked

	// Program Unit: Rest_Question_Asked
.public	_Rest_Question_Asked
_Rest_Question_Asked: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//4304  }
//4305  /**********************************************************
//4306  *************************************************************/
//4307  void Rest_Question_Asked()
//4308  {

LM425:
	     .stabn 68,0,4308,LM425-_Rest_Question_Asked
BB1_PU46:	// 0xb27
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4308]  
	     SP = SP - 1              	// [2:4308]  
	     BP = SP + 1              	// [3:4308]  
LBB45:
//4309        unsigned i;
//4310  
//4311  		i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM426:
	     .stabn 68,0,4311,LM426-_Rest_Question_Asked
	     R4 = 0                   	// [5:4311]  
	     [BP + 0] = R4            	// [6:4311]  i
L_46_1:	// 0xb2d
// BB:2 cycle count: 7
//4312  		while(i<C_QuestionRAM)

LM427:
	     .stabn 68,0,4312,LM427-_Rest_Question_Asked
	     R4 = [BP + 0]            	// [0:4312]  i
	     cmp R4, 19               	// [2:4312]  
	     ja L_46_2                	// [3:4312]  
BB3_PU46:	// 0xb30
// BB:3 cycle count: 20
//4313  		{
//4314  			QuestionStatus_Asked[i] = 0xffff;

LM428:
	     .stabn 68,0,4314,LM428-_Rest_Question_Asked
	     R4 = [BP + 0]            	// [0:4314]  i
	     R3 = 0                   	// [2:4314]  
	     R1 = (_QuestionStatus_Asked)	// [3:4314]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [5:4314]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [6:4314]  
	     R3 = R3 + R2, Carry      	// [7:4314]  
	     DS = R3                  	// [8:4314]  
	     R3 = - 1                 	// [9:4314]  
	     DS:[R4] = R3             	// [10:4314]  
//4315  			//QuestionStatus_NoAnswer[i] = 0xffff;
//4316  			i++;	

LM429:
	     .stabn 68,0,4316,LM429-_Rest_Question_Asked
	     R4 = [BP + 0]            	// [12:4316]  i
	     R4 = R4 + 1              	// [14:4316]  
	     [BP + 0] = R4            	// [15:4316]  i
	     jmp L_46_1               	// [16:4316]  
L_46_2:	// 0xb3e
// BB:4 cycle count: 5
	//;;
	INT OFF
	//;;
//4317  					
//4318  		}
//4319  	
//4320  	   __asm("INT OFF");
//4321        MoveSPIDriverToRAM();		     

LM430:
	     .stabn 68,0,4321,LM430-_Rest_Question_Asked
	     call _MoveSPIDriverToRAM 	// [2:4321]  MoveSPIDriverToRAM
BB5_PU46:	// 0xb43
// BB:5 cycle count: 15
//4322        SPI_Flash_Sector_Erase(T_Asked_Secter_L,T_Asked_Secter_H);

LM431:
	     .stabn 68,0,4322,LM431-_Rest_Question_Asked
	     SP = SP - 2              	// [0:4322]  
	     R3 = - 4096              	// [1:4322]  
	     R4 = SP + 1              	// [3:4322]  
	     [R4] = R3                	// [5:4322]  
	     R3 = 31                  	// [7:4322]  
	     R4 = SP + 2              	// [8:4322]  
	     [R4] = R3                	// [10:4322]  
	     call _SPI_Flash_Sector_Erase	// [12:4322]  SPI_Flash_Sector_Erase
BB6_PU46:	// 0xb4f
// BB:6 cycle count: 29
	     SP = SP - 3              	// [0:4322]  
//4323        SPI_Flash_SendNWords(QuestionStatus_Asked,C_QuestionRAM,T_Asked_Secter_L,T_Asked_Secter_H);   

LM432:
	     .stabn 68,0,4323,LM432-_Rest_Question_Asked
	     R2 = (_QuestionStatus_Asked)	// [1:4323]  QuestionStatus_Asked
	     R3 = seg(_QuestionStatus_Asked)	// [3:4323]  QuestionStatus_Asked
	     R4 = SP + 1              	// [4:4323]  
	     [R4++] = R2              	// [6:4323]  
	     [R4] = R3                	// [8:4323]  
	     R3 = 20                  	// [10:4323]  
	     R4 = SP + 3              	// [11:4323]  
	     [R4] = R3                	// [13:4323]  
	     R3 = - 4096              	// [15:4323]  
	     R4 = SP + 4              	// [17:4323]  
	     [R4] = R3                	// [19:4323]  
	     R3 = 31                  	// [21:4323]  
	     R4 = SP + 5              	// [22:4323]  
	     [R4] = R3                	// [24:4323]  
	     call _SPI_Flash_SendNWords	// [26:4323]  SPI_Flash_SendNWords
BB7_PU46:	// 0xb66
// BB:7 cycle count: 8
	     SP = SP + 6              	// [0:4323]  
	//;;
	INT FIQ,IRQ
	//;;
//4324        
//4325          __asm("INT FIQ,IRQ");	

LM433:
	     .stabn 68,0,4325,LM433-_Rest_Question_Asked
	     pop BP, PC from [SP]     	// [3:4325]  
LBE45:
	.endp	
	     .stabn 192,0,0,LBB45-_Rest_Question_Asked
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE45-_Rest_Question_Asked
LME47:
	     .stabf LME47-_Rest_Question_Asked
.code
	     .stabs "Check_LQA:F18",36,0,0,_Check_LQA

	// Program Unit: Check_LQA
.public	_Check_LQA
_Check_LQA: .proc	
	     .stabn 0xa6,0,0,4
	// __save_expr_temp_7 = 0
	// __save_expr_temp_8 = 1
	// old_frame_pointer = 4
	// return_address = 5
	// lra_spill_temp_20 = 2
	// lra_spill_temp_21 = 3
//4329  /******************************************************************
//4330  
//4331  ************************************************************************/
//4332  void Check_LQA()
//4333  {

LM434:
	     .stabn 68,0,4333,LM434-_Check_LQA
BB1_PU47:	// 0xb65
// BB:1 cycle count: 8
	     push BP to [SP]          	// [0:4333]  
	     SP = SP - 4              	// [2:4333]  
	     BP = SP + 1              	// [3:4333]  
//4334  	
//4335  	    Supress_Question_CategoryLast2Cat();

LM435:
	     .stabn 68,0,4335,LM435-_Check_LQA
	     call _Supress_Question_CategoryLast2Cat	// [5:4335]  Supress_Question_CategoryLast2Cat
BB2_PU47:	// 0xb6b
// BB:2 cycle count: 3
//4336  		LQA = Get_LQA();

LM436:
	     .stabn 68,0,4336,LM436-_Check_LQA
	     call _Get_LQA            	// [0:4336]  Get_LQA
BB3_PU47:	// 0xb6d
// BB:3 cycle count: 15
	     DS = seg(_LQA)           	// [0:4336]  LQA
	     R4 = (_LQA)              	// [1:4336]  LQA
	     DS:[R4] = R1             	// [3:4336]  
//4337  		
//4338  		if(LQA ==0)

LM437:
	     .stabn 68,0,4338,LM437-_Check_LQA
	     DS = seg(_LQA)           	// [5:4338]  LQA
	     R4 = (_LQA)              	// [6:4338]  LQA
	     R4 = DS:[R4]             	// [8:4338]  
	     cmp R4, 0                	// [10:4338]  
	     je BB4_PU47              	// [11:4338]  
BB23_PU47:	// 0xb77
// BB:23 cycle count: 3
	     goto L_47_13             	// [0:0]  
BB4_PU47:	// 0xb79
// BB:4 cycle count: 3
//4339  		 {	
//4340  		        Rest_LQ_LQA();					  						 					

LM438:
	     .stabn 68,0,4340,LM438-_Check_LQA
	     call _Rest_LQ_LQA        	// [0:4340]  Rest_LQ_LQA
BB5_PU47:	// 0xb7b
// BB:5 cycle count: 3
//4341  			    Sub_QuestionAsked();

LM439:
	     .stabn 68,0,4341,LM439-_Check_LQA
	     call _Sub_QuestionAsked  	// [0:4341]  Sub_QuestionAsked
BB6_PU47:	// 0xb7d
// BB:6 cycle count: 3
//4342  	            Supress_Question_CategoryLast2Cat();

LM440:
	     .stabn 68,0,4342,LM440-_Check_LQA
	     call _Supress_Question_CategoryLast2Cat	// [0:4342]  Supress_Question_CategoryLast2Cat
BB7_PU47:	// 0xb7f
// BB:7 cycle count: 3
//4343  	            LQA = Get_LQA();

LM441:
	     .stabn 68,0,4343,LM441-_Check_LQA
	     call _Get_LQA            	// [0:4343]  Get_LQA
BB8_PU47:	// 0xb81
// BB:8 cycle count: 15
	     DS = seg(_LQA)           	// [0:4343]  LQA
	     R4 = (_LQA)              	// [1:4343]  LQA
	     DS:[R4] = R1             	// [3:4343]  
//4344  			   if(LQA==0)//xiang 20160318

LM442:
	     .stabn 68,0,4344,LM442-_Check_LQA
	     DS = seg(_LQA)           	// [5:4344]  LQA
	     R4 = (_LQA)              	// [6:4344]  LQA
	     R4 = DS:[R4]             	// [8:4344]  
	     cmp R4, 0                	// [10:4344]  
	     jne L_47_14              	// [11:4344]  
BB9_PU47:	// 0xb8b
// BB:9 cycle count: 3
//4345  				{
//4346  					     Rest_Question_Asked();

LM443:
	     .stabn 68,0,4346,LM443-_Check_LQA
	     call _Rest_Question_Asked	// [0:4346]  Rest_Question_Asked
BB10_PU47:	// 0xb8d
// BB:10 cycle count: 3
//4347  						 Rest_LQA();//Rest_LQ_LQA

LM444:
	     .stabn 68,0,4347,LM444-_Check_LQA
	     call _Rest_LQA           	// [0:4347]  Rest_LQA
BB11_PU47:	// 0xb8f
// BB:11 cycle count: 3
//4348  						 Supress_Question_CategoryLast2Cat();

LM445:
	     .stabn 68,0,4348,LM445-_Check_LQA
	     call _Supress_Question_CategoryLast2Cat	// [0:4348]  Supress_Question_CategoryLast2Cat
BB12_PU47:	// 0xb91
// BB:12 cycle count: 3
//4349  						 
//4350  						  LQA = Get_LQA();

LM446:
	     .stabn 68,0,4350,LM446-_Check_LQA
	     call _Get_LQA            	// [0:4350]  Get_LQA
BB13_PU47:	// 0xb93
// BB:13 cycle count: 15
	     DS = seg(_LQA)           	// [0:4350]  LQA
	     R4 = (_LQA)              	// [1:4350]  LQA
	     DS:[R4] = R1             	// [3:4350]  
//4351  	     
//4352  					     if(LQA==0)

LM447:
	     .stabn 68,0,4352,LM447-_Check_LQA
	     DS = seg(_LQA)           	// [5:4352]  LQA
	     R4 = (_LQA)              	// [6:4352]  LQA
	     R4 = DS:[R4]             	// [8:4352]  
	     cmp R4, 0                	// [10:4352]  
	     jne L_47_15              	// [11:4352]  
BB14_PU47:	// 0xb9d
// BB:14 cycle count: 3
//4353  					     {
//4354  					     	   Rest_LQA();//Rest_LQ_LQA

LM448:
	     .stabn 68,0,4354,LM448-_Check_LQA
	     call _Rest_LQA           	// [0:4354]  Rest_LQA
L_47_15:	// 0xb9f
L_47_14:	// 0xb9f
// BB:15 cycle count: 11
//4357  						 		 
//4358  					 			 		   
//4359  				}	
//4360  				
//4361  		  			if(gQuestionIdx!=0xffff)		 	  

LM449:
	     .stabn 68,0,4361,LM449-_Check_LQA
	     DS = seg(_gQuestionIdx)  	// [0:4361]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:4361]  gQuestionIdx
	     R4 = DS:[R4]             	// [3:4361]  
	     cmp R4, 65535            	// [5:4361]  
	     je L_47_16               	// [7:4361]  
BB16_PU47:	// 0xba6
// BB:16 cycle count: 53
//4362  						   QuestionStatus_LQA[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];	  

LM450:
	     .stabn 68,0,4362,LM450-_Check_LQA
	     DS = seg(_gQuestionIdx)  	// [0:4362]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:4362]  gQuestionIdx
	     R4 = DS:[R4]             	// [3:4362]  
	     R4 = R4 lsr 4            	// [5:4362]  
	     [BP + 0] = R4            	// [6:4362]  __save_expr_temp_7
	     R4 = [BP + 0]            	// [7:4362]  __save_expr_temp_7
	     R3 = 0                   	// [9:4362]  
	     R1 = (_QuestionStatus_LQA)	// [10:4362]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [12:4362]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [13:4362]  
	     R3 = R3 + R2, Carry      	// [14:4362]  
	     DS = R3                  	// [15:4362]  
	     R4 = DS:[R4]             	// [16:4362]  
	     [BP + 2] = R4            	// [18:4362]  lra_spill_temp_20
	     DS = seg(_gQuestionIdx)  	// [19:4362]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [20:4362]  gQuestionIdx
	     R4 = DS:[R4]             	// [22:4362]  
	     R4 = R4 & 15             	// [24:4362]  
	     R3 = 0                   	// [25:4362]  
	     R1 = (_BitMap)           	// [26:4362]  BitMap
	     R2 = seg(_BitMap)        	// [28:4362]  BitMap
	     R4 = R4 + R1             	// [29:4362]  
	     R3 = R3 + R2, Carry      	// [30:4362]  
	     DS = R3                  	// [31:4362]  
	     R4 = DS:[R4]             	// [32:4362]  
	     R3 = R4 ^ 65535          	// [34:4362]  
	     R4 = [BP + 2]            	// [36:4362]  lra_spill_temp_20
	     R4 = R4 & R3             	// [38:4362]  
	     [BP + 3] = R4            	// [39:4362]  lra_spill_temp_21
	     R4 = [BP + 0]            	// [40:4362]  __save_expr_temp_7
	     R3 = 0                   	// [42:4362]  
	     R1 = (_QuestionStatus_LQA)	// [43:4362]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [45:4362]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [46:4362]  
	     R3 = R3 + R2, Carry      	// [47:4362]  
	     DS = R3                  	// [48:4362]  
	     R3 = [BP + 3]            	// [49:4362]  lra_spill_temp_21
	     DS:[R4] = R3             	// [51:4362]  
L_47_16:	// 0xbd2
// BB:17 cycle count: 10
//4363  						   
//4364  					  if( R_E ==C_TwoSounds)

LM451:
	     .stabn 68,0,4364,LM451-_Check_LQA
	     DS = seg(_R_E)           	// [0:4364]  R_E
	     R4 = (_R_E)              	// [1:4364]  R_E
	     R4 = DS:[R4]             	// [3:4364]  
	     cmp R4, 2                	// [5:4364]  
	     jne L_47_17              	// [6:4364]  
BB18_PU47:	// 0xbd8
// BB:18 cycle count: 11
//4365  					   {
//4366  				         if(gQuestionIdx_1!=0xffff)		 	  

LM452:
	     .stabn 68,0,4366,LM452-_Check_LQA
	     DS = seg(_gQuestionIdx_1)	// [0:4366]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [1:4366]  gQuestionIdx_1
	     R4 = DS:[R4]             	// [3:4366]  
	     cmp R4, 65535            	// [5:4366]  
	     je L_47_18               	// [7:4366]  
BB19_PU47:	// 0xbdf
// BB:19 cycle count: 53
//4367  						     QuestionStatus_LQA[gQuestionIdx_1/16]&=~BitMap[gQuestionIdx_1%16];	

LM453:
	     .stabn 68,0,4367,LM453-_Check_LQA
	     DS = seg(_gQuestionIdx_1)	// [0:4367]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [1:4367]  gQuestionIdx_1
	     R4 = DS:[R4]             	// [3:4367]  
	     R4 = R4 lsr 4            	// [5:4367]  
	     [BP + 1] = R4            	// [6:4367]  __save_expr_temp_8
	     R4 = [BP + 1]            	// [7:4367]  __save_expr_temp_8
	     R3 = 0                   	// [9:4367]  
	     R1 = (_QuestionStatus_LQA)	// [10:4367]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [12:4367]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [13:4367]  
	     R3 = R3 + R2, Carry      	// [14:4367]  
	     DS = R3                  	// [15:4367]  
	     R4 = DS:[R4]             	// [16:4367]  
	     [BP + 3] = R4            	// [18:4367]  lra_spill_temp_21
	     DS = seg(_gQuestionIdx_1)	// [19:4367]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [20:4367]  gQuestionIdx_1
	     R4 = DS:[R4]             	// [22:4367]  
	     R4 = R4 & 15             	// [24:4367]  
	     R3 = 0                   	// [25:4367]  
	     R1 = (_BitMap)           	// [26:4367]  BitMap
	     R2 = seg(_BitMap)        	// [28:4367]  BitMap
	     R4 = R4 + R1             	// [29:4367]  
	     R3 = R3 + R2, Carry      	// [30:4367]  
	     DS = R3                  	// [31:4367]  
	     R4 = DS:[R4]             	// [32:4367]  
	     R3 = R4 ^ 65535          	// [34:4367]  
	     R4 = [BP + 3]            	// [36:4367]  lra_spill_temp_21
	     R4 = R4 & R3             	// [38:4367]  
	     [BP + 2] = R4            	// [39:4367]  lra_spill_temp_20
	     R4 = [BP + 1]            	// [40:4367]  __save_expr_temp_8
	     R3 = 0                   	// [42:4367]  
	     R1 = (_QuestionStatus_LQA)	// [43:4367]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [45:4367]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [46:4367]  
	     R3 = R3 + R2, Carry      	// [47:4367]  
	     DS = R3                  	// [48:4367]  
	     R3 = [BP + 2]            	// [49:4367]  lra_spill_temp_20
	     DS:[R4] = R3             	// [51:4367]  
L_47_18:	// 0xc0b
L_47_17:	// 0xc0b
// BB:20 cycle count: 3
//4368  					   } 			
//4369  				
//4370  				   LQA = Get_LQA();	 

LM454:
	     .stabn 68,0,4370,LM454-_Check_LQA
	     call _Get_LQA            	// [0:4370]  Get_LQA
BB21_PU47:	// 0xc0d
// BB:21 cycle count: 5
	     DS = seg(_LQA)           	// [0:4370]  LQA
	     R4 = (_LQA)              	// [1:4370]  LQA
	     DS:[R4] = R1             	// [3:4370]  
L_47_13:	// 0xc11
// BB:22 cycle count: 6
	     SP = SP + 4              	// [0:4370]  
	     pop BP, PC from [SP]     	// [1:4370]  
	.endp	
LME48:
	     .stabf LME48-_Check_LQA
.code
	     .stabs "Read_Flash:F18",36,0,0,_Read_Flash

	// Program Unit: Read_Flash
.public	_Read_Flash
_Read_Flash: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//4376  
//4377  /********************************************************
//4378  **********************************************************/
//4379  void Read_Flash()
//4380  {

LM455:
	     .stabn 68,0,4380,LM455-_Read_Flash
BB1_PU48:	// 0xc13
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:4380]  
	     BP = SP + 1              	// [2:4380]  
	//;;
	INT OFF
	//;;
//4381  	
//4382  
//4383  	  __asm("INT OFF");
//4384  	   MoveSPIDriverToRAM();

LM456:
	     .stabn 68,0,4384,LM456-_Read_Flash
	     call _MoveSPIDriverToRAM 	// [6:4384]  MoveSPIDriverToRAM
BB2_PU48:	// 0xc1b
// BB:2 cycle count: 29
//4385  
//4386       SPI_Flash_ReadNWords(QuestionStatus_LQ,C_QuestionRAM,T_LQ_Secter_L,T_LQ_Secter_H);

LM457:
	     .stabn 68,0,4386,LM457-_Read_Flash
	     SP = SP - 5              	// [0:4386]  
	     R2 = (_QuestionStatus_LQ)	// [1:4386]  QuestionStatus_LQ
	     R3 = seg(_QuestionStatus_LQ)	// [3:4386]  QuestionStatus_LQ
	     R4 = SP + 1              	// [4:4386]  
	     [R4++] = R2              	// [6:4386]  
	     [R4] = R3                	// [8:4386]  
	     R3 = 20                  	// [10:4386]  
	     R4 = SP + 3              	// [11:4386]  
	     [R4] = R3                	// [13:4386]  
	     R3 = - 12288             	// [15:4386]  
	     R4 = SP + 4              	// [17:4386]  
	     [R4] = R3                	// [19:4386]  
	     R3 = 31                  	// [21:4386]  
	     R4 = SP + 5              	// [22:4386]  
	     [R4] = R3                	// [24:4386]  
	     call _SPI_Flash_ReadNWords	// [26:4386]  SPI_Flash_ReadNWords
BB3_PU48:	// 0xc32
// BB:3 cycle count: 28
//4387       SPI_Flash_ReadNWords(QuestionStatus_Asked,C_QuestionRAM,T_Asked_Secter_L,T_Asked_Secter_H);

LM458:
	     .stabn 68,0,4387,LM458-_Read_Flash
	     R2 = (_QuestionStatus_Asked)	// [0:4387]  QuestionStatus_Asked
	     R3 = seg(_QuestionStatus_Asked)	// [2:4387]  QuestionStatus_Asked
	     R4 = SP + 1              	// [3:4387]  
	     [R4++] = R2              	// [5:4387]  
	     [R4] = R3                	// [7:4387]  
	     R3 = 20                  	// [9:4387]  
	     R4 = SP + 3              	// [10:4387]  
	     [R4] = R3                	// [12:4387]  
	     R3 = - 4096              	// [14:4387]  
	     R4 = SP + 4              	// [16:4387]  
	     [R4] = R3                	// [18:4387]  
	     R3 = 31                  	// [20:4387]  
	     R4 = SP + 5              	// [21:4387]  
	     [R4] = R3                	// [23:4387]  
	     call _SPI_Flash_ReadNWords	// [25:4387]  SPI_Flash_ReadNWords
BB4_PU48:	// 0xc48
// BB:4 cycle count: 15
	     SP = SP + 3              	// [0:4387]  
//4388       
//4389      // SPI_Flash_ReadNWords(&Record,1,T_Record_Secter_L,T_Record_Secter_H); 
//4390        Record=SPI_Flash_ReadAWord(T_Record_Secter_L,T_Record_Secter_H);

LM459:
	     .stabn 68,0,4390,LM459-_Read_Flash
	     R3 = - 8192              	// [1:4390]  
	     R4 = SP + 1              	// [3:4390]  
	     [R4] = R3                	// [5:4390]  
	     R3 = 31                  	// [7:4390]  
	     R4 = SP + 2              	// [8:4390]  
	     [R4] = R3                	// [10:4390]  
	     call _SPI_Flash_ReadAWord	// [12:4390]  SPI_Flash_ReadAWord
BB5_PU48:	// 0xc54
// BB:5 cycle count: 19
	     SP = SP + 2              	// [0:4390]  
	     DS = seg(_Record)        	// [1:4390]  Record
	     R4 = (_Record)           	// [2:4390]  Record
	     DS:[R4] = R1             	// [4:4390]  
	//;;
	INT FIQ,IRQ
	//;;
//4391      
//4392       __asm("INT FIQ,IRQ");
//4393       
//4394       if(Record == 0xffff)

LM460:
	     .stabn 68,0,4394,LM460-_Read_Flash
	     DS = seg(_Record)        	// [8:4394]  Record
	     R4 = (_Record)           	// [9:4394]  Record
	     R4 = DS:[R4]             	// [11:4394]  
	     cmp R4, 65535            	// [13:4394]  
	     jne L_48_3               	// [15:4394]  
BB6_PU48:	// 0xc63
// BB:6 cycle count: 6
//4395       	 Record=0;

LM461:
	     .stabn 68,0,4395,LM461-_Read_Flash
	     R3 = 0                   	// [0:4395]  
	     DS = seg(_Record)        	// [1:4395]  Record
	     R4 = (_Record)           	// [2:4395]  Record
	     DS:[R4] = R3             	// [4:4395]  
L_48_3:	// 0xc68
// BB:7 cycle count: 5
	     pop BP, PC from [SP]     	// [0:4395]  
	.endp	
LME49:
	     .stabf LME49-_Read_Flash
.code
	     .stabs "Save_Question_Quality_Last:F18",36,0,0,_Save_Question_Quality_Last

	// Program Unit: Save_Question_Quality_Last
.public	_Save_Question_Quality_Last
_Save_Question_Quality_Last: .proc	
	     .stabn 0xa6,0,0,2
	// i = 0
	// old_frame_pointer = 2
	// return_address = 3
	// lra_spill_temp_22 = 1
//4397  }
//4398  /*****************************************************
//4399  ******************************************************/
//4400  void Save_Question_Quality_Last(unsigned int quality)
//4401  {

LM462:
	     .stabn 68,0,4401,LM462-_Save_Question_Quality_Last
BB1_PU49:	// 0xc63
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4401]  
	     SP = SP - 2              	// [2:4401]  
	     BP = SP + 1              	// [3:4401]  
LBB46:
//4402     
//4403     unsigned int i;
//4404  
//4405      for(i=0;i<5;i++)

LM463:
	     .stabn 68,0,4405,LM463-_Save_Question_Quality_Last
	     R4 = 0                   	// [5:4405]  
	     [BP + 0] = R4            	// [6:4405]  i
L_49_2:	// 0xc69
// BB:2 cycle count: 7
	     R4 = [BP + 0]            	// [0:4405]  i
	     cmp R4, 4                	// [2:4405]  
	     ja L_49_3                	// [3:4405]  
BB3_PU49:	// 0xc6c
// BB:3 cycle count: 26
//4406     	{
//4407        Question_Quality_Last[i] = Question_Quality_Last[i+1];

LM464:
	     .stabn 68,0,4407,LM464-_Save_Question_Quality_Last
	     R4 = [BP + 0]            	// [0:4407]  i
	     R4 = R4 + 1              	// [2:4407]  
	     R3 = 0                   	// [3:4407]  
	     R1 = (_Question_Quality_Last)	// [4:4407]  Question_Quality_Last
	     R2 = seg(_Question_Quality_Last)	// [6:4407]  Question_Quality_Last
	     R4 = R4 + R1             	// [7:4407]  
	     R3 = R3 + R2, Carry      	// [8:4407]  
	     DS = R3                  	// [9:4407]  
	     R4 = DS:[R4]             	// [10:4407]  
	     [BP + 1] = R4            	// [12:4407]  lra_spill_temp_22
	     R4 = [BP + 0]            	// [13:4407]  i
	     R3 = 0                   	// [15:4407]  
	     R1 = (_Question_Quality_Last)	// [16:4407]  Question_Quality_Last
	     R2 = seg(_Question_Quality_Last)	// [18:4407]  Question_Quality_Last
	     R4 = R4 + R1             	// [19:4407]  
	     R3 = R3 + R2, Carry      	// [20:4407]  
	     DS = R3                  	// [21:4407]  
	     R3 = [BP + 1]            	// [22:4407]  lra_spill_temp_22
	     DS:[R4] = R3             	// [24:4407]  
Lt_49_1:	// 0xc81
// BB:4 cycle count: 8

LM465:
	     .stabn 68,0,4405,LM465-_Save_Question_Quality_Last
	     R4 = [BP + 0]            	// [0:4405]  i
	     R4 = R4 + 1              	// [2:4405]  
	     [BP + 0] = R4            	// [3:4405]  i
	     jmp L_49_2               	// [4:4405]  
L_49_3:	// 0xc85
// BB:5 cycle count: 13
//4408     	}
//4409     
//4410       Question_Quality_Last[5] = quality;	

LM466:
	     .stabn 68,0,4410,LM466-_Save_Question_Quality_Last
	     R3 = [BP + 5]            	// [0:4410]  quality
	     DS = seg(_Question_Quality_Last+5)	// [2:4410]  Question_Quality_Last+5
	     R4 = (_Question_Quality_Last+5)	// [3:4410]  Question_Quality_Last+5
	     DS:[R4] = R3             	// [5:4410]  
	     SP = SP + 2              	// [7:4410]  
	     pop BP, PC from [SP]     	// [8:4410]  
LBE46:
	.endp	
	     .stabs "quality:p4",160,0,0,5
	     .stabn 192,0,0,LBB46-_Save_Question_Quality_Last
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE46-_Save_Question_Quality_Last
LME50:
	     .stabf LME50-_Save_Question_Quality_Last
.code
	     .stabs "Save_Question_Category2Last:F18",36,0,0,_Save_Question_Category2Last

	// Program Unit: Save_Question_Category2Last
.public	_Save_Question_Category2Last
_Save_Question_Category2Last: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//4412  }
//4413  /*****************************************************
//4414  ******************************************************/
//4415  void Save_Question_Category2Last(unsigned int Category)
//4416  {

LM467:
	     .stabn 68,0,4416,LM467-_Save_Question_Category2Last
BB1_PU50:	// 0xc8c
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:4416]  
	     BP = SP + 1              	// [2:4416]  
//4418    // unsigned int i;
//4419  
//4420     // for(i=0;i<5;i++)
//4421     //	{
//4422        Last2Cat[0] = Last2Cat[1];

LM468:
	     .stabn 68,0,4422,LM468-_Save_Question_Category2Last
	     DS = seg(_Last2Cat+1)    	// [4:4422]  Last2Cat+1
	     R4 = (_Last2Cat+1)       	// [5:4422]  Last2Cat+1
	     R3 = DS:[R4]             	// [7:4422]  
	     DS = seg(_Last2Cat)      	// [9:4422]  Last2Cat
	     R4 = (_Last2Cat)         	// [10:4422]  Last2Cat
	     DS:[R4] = R3             	// [12:4422]  
//4423     //	}
//4424     
//4425       Last2Cat[1] = Category;	

LM469:
	     .stabn 68,0,4425,LM469-_Save_Question_Category2Last
	     R3 = [BP + 3]            	// [14:4425]  Category
	     DS = seg(_Last2Cat+1)    	// [16:4425]  Last2Cat+1
	     R4 = (_Last2Cat+1)       	// [17:4425]  Last2Cat+1
	     DS:[R4] = R3             	// [19:4425]  
	     pop BP, PC from [SP]     	// [21:4425]  
	.endp	
	     .stabs "Category:p4",160,0,0,3
LME51:
	     .stabf LME51-_Save_Question_Category2Last
.code
	     .stabs "check_Question_Quality_Last:F4",36,0,0,_check_Question_Quality_Last

	// Program Unit: check_Question_Quality_Last
.public	_check_Question_Quality_Last
_check_Question_Quality_Last: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//4428  
//4429  /*****************************************************
//4430  ******************************************************/
//4431  unsigned int  check_Question_Quality_Last()
//4432  {

LM470:
	     .stabn 68,0,4432,LM470-_check_Question_Quality_Last
BB1_PU51:	// 0xc9d
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4432]  
	     SP = SP - 1              	// [2:4432]  
	     BP = SP + 1              	// [3:4432]  
LBB47:
//4433     
//4434     unsigned int i;
//4435  
//4436      for(i=0;i<6;i++)

LM471:
	     .stabn 68,0,4436,LM471-_check_Question_Quality_Last
	     R4 = 0                   	// [5:4436]  
	     [BP + 0] = R4            	// [6:4436]  i
L_51_2:	// 0xca3
// BB:2 cycle count: 7
	     R4 = [BP + 0]            	// [0:4436]  i
	     cmp R4, 5                	// [2:4436]  
	     ja L_51_3                	// [3:4436]  
BB3_PU51:	// 0xca6
// BB:3 cycle count: 16
//4437     	{
//4438        if(Question_Quality_Last[i]<=1)

LM472:
	     .stabn 68,0,4438,LM472-_check_Question_Quality_Last
	     R4 = [BP + 0]            	// [0:4438]  i
	     R3 = 0                   	// [2:4438]  
	     R1 = (_Question_Quality_Last)	// [3:4438]  Question_Quality_Last
	     R2 = seg(_Question_Quality_Last)	// [5:4438]  Question_Quality_Last
	     R4 = R4 + R1             	// [6:4438]  
	     R3 = R3 + R2, Carry      	// [7:4438]  
	     DS = R3                  	// [8:4438]  
	     R4 = DS:[R4]             	// [9:4438]  
	     cmp R4, 1                	// [11:4438]  
	     ja L_51_4                	// [12:4438]  
BB4_PU51:	// 0xcb1
// BB:4 cycle count: 7
//4439        	 return 0;

LM473:
	     .stabn 68,0,4439,LM473-_check_Question_Quality_Last
	     R1 = 0                   	// [0:4439]  
	     SP = SP + 1              	// [1:4439]  
	     pop BP, PC from [SP]     	// [2:4439]  
L_51_4:	// 0xcb4
Lt_51_1:	// 0xcb4
// BB:5 cycle count: 8

LM474:
	     .stabn 68,0,4436,LM474-_check_Question_Quality_Last
	     R4 = [BP + 0]            	// [0:4436]  i
	     R4 = R4 + 1              	// [2:4436]  
	     [BP + 0] = R4            	// [3:4436]  i
	     jmp L_51_2               	// [4:4436]  
L_51_3:	// 0xcb8
// BB:6 cycle count: 7
//4440     	}
//4441     
//4442       return 1;

LM475:
	     .stabn 68,0,4442,LM475-_check_Question_Quality_Last
	     R1 = 1                   	// [0:4442]  
	     SP = SP + 1              	// [1:4442]  
	     pop BP, PC from [SP]     	// [2:4442]  
LBE47:
	.endp	
	     .stabn 192,0,0,LBB47-_check_Question_Quality_Last
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE47-_check_Question_Quality_Last
LME52:
	     .stabf LME52-_check_Question_Quality_Last
.code
	     .stabs "Get_Key:F4",36,0,0,_Get_Key

	// Program Unit: Get_Key
.public	_Get_Key
_Get_Key: .proc	
	     .stabn 0xa6,0,0,1
	// temp = 0
	// old_frame_pointer = 1
	// return_address = 2
//4863  /****************************************************************************
//4864  ***************************************************************************/
//4865  
//4866  unsigned int Get_Key(Countdown_E)
//4867  {

LM476:
	     .stabn 68,0,4867,LM476-_Get_Key
BB1_PU52:	// 0xcbb
// BB:1 cycle count: 5
	     push BP to [SP]          	// [0:4867]  
	     SP = SP - 1              	// [2:4867]  
	     BP = SP + 1              	// [3:4867]  
L_52_76:	// 0xcbf
// BB:2 cycle count: 3
LBB48:
//4870   
//4871    do
//4872     {
//4873     	
//4874     	  WatchdogClear();

LM477:
	     .stabn 68,0,4874,LM477-_Get_Key
	     call _WatchdogClear      	// [0:4874]  WatchdogClear
BB3_PU52:	// 0xcc1
// BB:3 cycle count: 11
//4875     	  
//4876     	  	if(Timeout_cnt>180*16)	

LM478:
	     .stabn 68,0,4876,LM478-_Get_Key
	     DS = seg(_Timeout_cnt)   	// [0:4876]  Timeout_cnt
	     R4 = (_Timeout_cnt)      	// [1:4876]  Timeout_cnt
	     R4 = DS:[R4]             	// [3:4876]  
	     cmp R4, 2880             	// [5:4876]  
	     jbe L_52_77              	// [7:4876]  
BB4_PU52:	// 0xcc8
// BB:4 cycle count: 9
//4877  		  {
//4878  		  	  //Sleepflag =1;
//4879  		  	  Timeout_cnt=0;

LM479:
	     .stabn 68,0,4879,LM479-_Get_Key
	     R3 = 0                   	// [0:4879]  
	     DS = seg(_Timeout_cnt)   	// [1:4879]  Timeout_cnt
	     R4 = (_Timeout_cnt)      	// [2:4879]  Timeout_cnt
	     DS:[R4] = R3             	// [4:4879]  
//4880  		  	  return GameTimeout();

LM480:
	     .stabn 68,0,4880,LM480-_Get_Key
	     call _GameTimeout        	// [6:4880]  GameTimeout
BB5_PU52:	// 0xccf
// BB:5 cycle count: 6
	     SP = SP + 1              	// [0:4880]  
	     pop BP, PC from [SP]     	// [1:4880]  
L_52_77:	// 0xcd1
// BB:6 cycle count: 10
//4881  		  }
//4882     	  
//4883     	  
//4884     	  
//4885     	  	if(Sleepflag) 

LM481:
	     .stabn 68,0,4885,LM481-_Get_Key
	     DS = seg(_Sleepflag)     	// [0:4885]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:4885]  Sleepflag
	     R4 = DS:[R4]             	// [3:4885]  
	     cmp R4, 0                	// [5:4885]  
	     je L_52_78               	// [6:4885]  
BB7_PU52:	// 0xcd7
// BB:7 cycle count: 7
//4886  		     return C_Finish ;

LM482:
	     .stabn 68,0,4886,LM482-_Get_Key
	     R1 = - 1                 	// [0:4886]  
	     SP = SP + 1              	// [1:4886]  
	     pop BP, PC from [SP]     	// [2:4886]  
L_52_78:	// 0xcda
// BB:8 cycle count: 3
//4887  			
//4888             if(temp=TS_CTS_ServiceLoop())

LM483:
	     .stabn 68,0,4888,LM483-_Get_Key
	     call _TS_CTS_ServiceLoop 	// [0:4888]  TS_CTS_ServiceLoop
BB9_PU52:	// 0xcdc
// BB:9 cycle count: 8
	     [BP + 0] = R1            	// [0:4888]  temp
	     R4 = [BP + 0]            	// [1:4888]  temp
	     cmp R4, 0                	// [3:4888]  
	     je L_52_79               	// [4:4888]  
BB10_PU52:	// 0xce0
// BB:10 cycle count: 7
//4889             	   Key_Event = temp;

LM484:
	     .stabn 68,0,4889,LM484-_Get_Key
	     R3 = [BP + 0]            	// [0:4889]  temp
	     DS = seg(_Key_Event)     	// [2:4889]  Key_Event
	     R4 = (_Key_Event)        	// [3:4889]  Key_Event
	     DS:[R4] = R3             	// [5:4889]  
L_52_79:	// 0xce5
// BB:11 cycle count: 10
//4894  				if(PassFlag)
//4895  					return 0xffff;
//4896             #endif
//4897  			
//4898  			  if(PauseFlag)

LM485:
	     .stabn 68,0,4898,LM485-_Get_Key
	     DS = seg(_PauseFlag)     	// [0:4898]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:4898]  PauseFlag
	     R4 = DS:[R4]             	// [3:4898]  
	     cmp R4, 0                	// [5:4898]  
	     je L_52_80               	// [6:4898]  
BB12_PU52:	// 0xceb
// BB:12 cycle count: 7
//4899  				  return 0xffff;

LM486:
	     .stabn 68,0,4899,LM486-_Get_Key
	     R1 = - 1                 	// [0:4899]  
	     SP = SP + 1              	// [1:4899]  
	     pop BP, PC from [SP]     	// [2:4899]  
L_52_80:	// 0xcee
// BB:13 cycle count: 10
//4900  			
//4901  			
//4902  			  if(CheaterFlag)

LM487:
	     .stabn 68,0,4902,LM487-_Get_Key
	     DS = seg(_CheaterFlag)   	// [0:4902]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [1:4902]  CheaterFlag
	     R4 = DS:[R4]             	// [3:4902]  
	     cmp R4, 0                	// [5:4902]  
	     je L_52_81               	// [6:4902]  
BB14_PU52:	// 0xcf4
// BB:14 cycle count: 7
//4903  				  return 0xffff; 

LM488:
	     .stabn 68,0,4903,LM488-_Get_Key
	     R1 = - 1                 	// [0:4903]  
	     SP = SP + 1              	// [1:4903]  
	     pop BP, PC from [SP]     	// [2:4903]  
L_52_81:	// 0xcf7
// BB:15 cycle count: 10
//4904  
//4905  		    if(Key_Event)

LM489:
	     .stabn 68,0,4905,LM489-_Get_Key
	     DS = seg(_Key_Event)     	// [0:4905]  Key_Event
	     R4 = (_Key_Event)        	// [1:4905]  Key_Event
	     R4 = DS:[R4]             	// [3:4905]  
	     cmp R4, 0                	// [5:4905]  
	     je L_52_82               	// [6:4905]  
BB16_PU52:	// 0xcfd
// BB:16 cycle count: 11
//4906  		 	    return Key_Event;

LM490:
	     .stabn 68,0,4906,LM490-_Get_Key
	     DS = seg(_Key_Event)     	// [0:4906]  Key_Event
	     R4 = (_Key_Event)        	// [1:4906]  Key_Event
	     R1 = DS:[R4]             	// [3:4906]  
	     SP = SP + 1              	// [5:4906]  
	     pop BP, PC from [SP]     	// [6:4906]  
L_52_82:	// 0xd03
// BB:17 cycle count: 10
//4909             Pass_check();
//4910        #endif   
//4911  
//4912  
//4913             if(A1800_Flag ==2)

LM491:
	     .stabn 68,0,4913,LM491-_Get_Key
	     DS = seg(_A1800_Flag)    	// [0:4913]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [1:4913]  A1800_Flag
	     R4 = DS:[R4]             	// [3:4913]  
	     cmp R4, 2                	// [5:4913]  
	     jne L_52_83              	// [6:4913]  
BB18_PU52:	// 0xd09
// BB:18 cycle count: 3
//4914             {
//4915  			   	if((SACM_A1800_Status() & 0x0001) == 0)

LM492:
	     .stabn 68,0,4915,LM492-_Get_Key
	     call _SACM_A1800_Status  	// [0:4915]  SACM_A1800_Status
BB19_PU52:	// 0xd0b
// BB:19 cycle count: 7
	     R4 = R1 & 1              	// [0:4915]  
	     cmp R4, 0                	// [2:4915]  
	     jne L_52_84              	// [3:4915]  
BB20_PU52:	// 0xd0f
// BB:20 cycle count: 10
//4916  			   	{
//4917  			   					
//4918  				   PlayA1800_ElementsInit(SFX_Timer);				

LM493:
	     .stabn 68,0,4918,LM493-_Get_Key
	     SP = SP - 1              	// [0:4918]  
	     R3 = 128                 	// [1:4918]  
	     R4 = SP + 1              	// [3:4918]  
	     [R4] = R3                	// [5:4918]  
	     call _PlayA1800_ElementsInit	// [7:4918]  PlayA1800_ElementsInit
BB21_PU52:	// 0xd17
// BB:21 cycle count: 1
	     SP = SP + 1              	// [0:4918]  
L_52_84:	// 0xd18
// BB:22 cycle count: 3
//4919  			   	}
//4920  			   	
//4921  			   	    SACM_A1800_ServiceLoop();

LM494:
	     .stabn 68,0,4921,LM494-_Get_Key
	     call _SACM_A1800_ServiceLoop	// [0:4921]  SACM_A1800_ServiceLoop
L_52_83:	// 0xd1a
// BB:23 cycle count: 11
//4923  
//4924  
//4925  
//4926  
//4927  	   if(LongPressflag&0x01)

LM495:
	     .stabn 68,0,4927,LM495-_Get_Key
	     DS = seg(_LongPressflag) 	// [0:4927]  LongPressflag
	     R4 = (_LongPressflag)    	// [1:4927]  LongPressflag
	     R4 = DS:[R4]             	// [3:4927]  
	     R4 = R4 & 1              	// [5:4927]  
	     cmp R4, 0                	// [6:4927]  
	     je L_52_85               	// [7:4927]  
BB24_PU52:	// 0xd21
// BB:24 cycle count: 24
//4928  	   	{
//4929               LongPressflag&=~0x01;

LM496:
	     .stabn 68,0,4929,LM496-_Get_Key
	     DS = seg(_LongPressflag) 	// [0:4929]  LongPressflag
	     R4 = (_LongPressflag)    	// [1:4929]  LongPressflag
	     R4 = DS:[R4]             	// [3:4929]  
	     R3 = R4 & 65534          	// [5:4929]  
	     DS = seg(_LongPressflag) 	// [7:4929]  LongPressflag
	     R4 = (_LongPressflag)    	// [8:4929]  LongPressflag
	     DS:[R4] = R3             	// [10:4929]  
//4930  
//4931  			 
//4932              if((firstFlag_23b&0x8000)==0)

LM497:
	     .stabn 68,0,4932,LM497-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [12:4932]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [13:4932]  firstFlag_23b
	     R4 = DS:[R4]             	// [15:4932]  
	     R4 = R4 & 32768          	// [17:4932]  
	     cmp R4, 0                	// [19:4932]  
	     jne L_52_86              	// [20:4932]  
BB25_PU52:	// 0xd33
// BB:25 cycle count: 15
//4933              	{
//4934  
//4935  				   firstFlag_23b|=0x8000;

LM498:
	     .stabn 68,0,4935,LM498-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [0:4935]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [1:4935]  firstFlag_23b
	     R4 = DS:[R4]             	// [3:4935]  
	     R3 = R4 | 32768          	// [5:4935]  
	     DS = seg(_firstFlag_23b) 	// [7:4935]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [8:4935]  firstFlag_23b
	     DS:[R4] = R3             	// [10:4935]  
//4936  			       if(temp = Pause_Process())	

LM499:
	     .stabn 68,0,4936,LM499-_Get_Key
	     call _Pause_Process      	// [12:4936]  Pause_Process
BB26_PU52:	// 0xd3f
// BB:26 cycle count: 8
	     [BP + 0] = R1            	// [0:4936]  temp
	     R4 = [BP + 0]            	// [1:4936]  temp
	     cmp R4, 0                	// [3:4936]  
	     je L_52_87               	// [4:4936]  
BB27_PU52:	// 0xd43
// BB:27 cycle count: 20
//4937  			       {			   
//4938  			 	       firstFlag_23b&=~0x8000;

LM500:
	     .stabn 68,0,4938,LM500-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [0:4938]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [1:4938]  firstFlag_23b
	     R4 = DS:[R4]             	// [3:4938]  
	     R3 = R4 & 32767          	// [5:4938]  
	     DS = seg(_firstFlag_23b) 	// [7:4938]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [8:4938]  firstFlag_23b
	     DS:[R4] = R3             	// [10:4938]  
//4939  			 	       return temp; 

LM501:
	     .stabn 68,0,4939,LM501-_Get_Key
	     R1 = [BP + 0]            	// [12:4939]  temp
	     SP = SP + 1              	// [14:4939]  
	     pop BP, PC from [SP]     	// [15:4939]  
L_52_87:	// 0xd50
// BB:28 cycle count: 12
//4940  			 	    
//4941  			       }
//4942  			       
//4943  			      firstFlag_23b&=~0x8000; 

LM502:
	     .stabn 68,0,4943,LM502-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [0:4943]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [1:4943]  firstFlag_23b
	     R4 = DS:[R4]             	// [3:4943]  
	     R3 = R4 & 32767          	// [5:4943]  
	     DS = seg(_firstFlag_23b) 	// [7:4943]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [8:4943]  firstFlag_23b
	     DS:[R4] = R3             	// [10:4943]  
L_52_86:	// 0xd5a
L_52_85:	// 0xd5a
// BB:29 cycle count: 10
//4945  
//4946  	   	}
//4947         
//4948  		
//4949  	  if(Key)	

LM503:
	     .stabn 68,0,4949,LM503-_Get_Key
	     DS = seg(_Key)           	// [0:4949]  Key
	     R4 = (_Key)              	// [1:4949]  Key
	     R4 = DS:[R4]             	// [3:4949]  
	     cmp R4, 0                	// [5:4949]  
	     jne BB30_PU52            	// [6:4949]  
BB73_PU52:	// 0xd60
// BB:73 cycle count: 3
	     goto L_52_88             	// [0:0]  
BB30_PU52:	// 0xd62
// BB:30 cycle count: 18
//4950  	  {	
//4951  	  	 temp = Pressflag&Key;

LM504:
	     .stabn 68,0,4951,LM504-_Get_Key
	     DS = seg(_Key)           	// [0:4951]  Key
	     R4 = (_Key)              	// [1:4951]  Key
	     R4 = DS:[R4]             	// [3:4951]  
	     DS = seg(_Pressflag)     	// [5:4951]  Pressflag
	     R3 = (_Pressflag)        	// [6:4951]  Pressflag
	     R4 = R4 & DS:[R3]        	// [8:4951]  
	     [BP + 0] = R4            	// [10:4951]  temp
//4952  		  	
//4953  
//4954          if(temp ==0)//抬起

LM505:
	     .stabn 68,0,4954,LM505-_Get_Key
	     R4 = [BP + 0]            	// [11:4954]  temp
	     cmp R4, 0                	// [13:4954]  
	     je BB31_PU52             	// [14:4954]  
BB77_PU52:	// 0xd6e
// BB:77 cycle count: 3
	     goto L_52_90             	// [0:0]  
BB31_PU52:	// 0xd70
// BB:31 cycle count: 24
//4955          	{
//4956          	       temp = Key;

LM506:
	     .stabn 68,0,4956,LM506-_Get_Key
	     DS = seg(_Key)           	// [0:4956]  Key
	     R4 = (_Key)              	// [1:4956]  Key
	     R4 = DS:[R4]             	// [3:4956]  
	     [BP + 0] = R4            	// [5:4956]  temp
//4957          	   	  	Key =0;

LM507:
	     .stabn 68,0,4957,LM507-_Get_Key
	     R3 = 0                   	// [6:4957]  
	     DS = seg(_Key)           	// [7:4957]  Key
	     R4 = (_Key)              	// [8:4957]  Key
	     DS:[R4] = R3             	// [10:4957]  
//4958                   
//4959  					  
//4960  					 if(Key_activeflag&temp) 

LM508:
	     .stabn 68,0,4960,LM508-_Get_Key
	     R4 = [BP + 0]            	// [12:4960]  temp
	     DS = seg(_Key_activeflag)	// [14:4960]  Key_activeflag
	     R3 = (_Key_activeflag)   	// [15:4960]  Key_activeflag
	     R4 = R4 & DS:[R3]        	// [17:4960]  
	     cmp R4, 0                	// [19:4960]  
	     je L_52_92               	// [20:4960]  
BB32_PU52:	// 0xd81
// BB:32 cycle count: 12
//4962  				 
//4963  					   //temp_Key_TrueFlase_Buffer =0;
//4964  					   
//4965  					 //    if((!(PlayQuestionflag&0x05))||(PlayQuestionflag&0x8000))// 20160215 xiang
//4966  						if(temp&TwoKeyflag)

LM509:
	     .stabn 68,0,4966,LM509-_Get_Key
	     R4 = [BP + 0]            	// [0:4966]  temp
	     DS = seg(_TwoKeyflag)    	// [2:4966]  TwoKeyflag
	     R3 = (_TwoKeyflag)       	// [3:4966]  TwoKeyflag
	     R4 = R4 & DS:[R3]        	// [5:4966]  
	     cmp R4, 0                	// [7:4966]  
	     je L_52_94               	// [8:4966]  
BB33_PU52:	// 0xd88
// BB:33 cycle count: 11
//4967  						{
//4968                             Key_TrueFlase_Buffer = temp;  

LM510:
	     .stabn 68,0,4968,LM510-_Get_Key
	     R3 = [BP + 0]            	// [0:4968]  temp
	     DS = seg(_Key_TrueFlase_Buffer)	// [2:4968]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [3:4968]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [5:4968]  
	     jmp L_52_93              	// [7:4968]  
L_52_94:	// 0xd8e
// BB:34 cycle count: 24
//4969  						}
//4970  					   else
//4971  					     {
//4972  							   Key_Event = temp;//20160215 xiang   

LM511:
	     .stabn 68,0,4972,LM511-_Get_Key
	     R3 = [BP + 0]            	// [0:4972]  temp
	     DS = seg(_Key_Event)     	// [2:4972]  Key_Event
	     R4 = (_Key_Event)        	// [3:4972]  Key_Event
	     DS:[R4] = R3             	// [5:4972]  
//4973  							   Key_TrueFlase_Buffer =0;  

LM512:
	     .stabn 68,0,4973,LM512-_Get_Key
	     R3 = 0                   	// [7:4973]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [8:4973]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [9:4973]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [11:4973]  
//4974  					 
//4975  								return Key_Event;					     	

LM513:
	     .stabn 68,0,4975,LM513-_Get_Key
	     DS = seg(_Key_Event)     	// [13:4975]  Key_Event
	     R4 = (_Key_Event)        	// [14:4975]  Key_Event
	     R1 = DS:[R4]             	// [16:4975]  
	     SP = SP + 1              	// [18:4975]  
	     pop BP, PC from [SP]     	// [19:4975]  
L_52_93:	// 0xd9e
// BB:35 cycle count: 4

LM514:
	     .stabn 68,0,4966,LM514-_Get_Key
	     jmp L_52_91              	// [0:4966]  
L_52_92:	// 0xd9f
// BB:36 cycle count: 16
//4978  					   	 
//4979  					 }
//4980  					else
//4981  					{	 
//4982  						  Key_TrueFlase_Buffer =0;	 // 20160215 xiang

LM515:
	     .stabn 68,0,4982,LM515-_Get_Key
	     R3 = 0                   	// [0:4982]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [1:4982]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [2:4982]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [4:4982]  
//4983  						  
//4984                            if(VolumeEnable)

LM516:
	     .stabn 68,0,4984,LM516-_Get_Key
	     DS = seg(_VolumeEnable)  	// [6:4984]  VolumeEnable
	     R4 = (_VolumeEnable)     	// [7:4984]  VolumeEnable
	     R4 = DS:[R4]             	// [9:4984]  
	     cmp R4, 0                	// [11:4984]  
	     je L_52_95               	// [12:4984]  
BB37_PU52:	// 0xdaa
// BB:37 cycle count: 7
//4985                            	{
//4986  							if((temp ==PB_button)||((temp ==MB_button)))

LM517:
	     .stabn 68,0,4986,LM517-_Get_Key
	     R4 = [BP + 0]            	// [0:4986]  temp
	     cmp R4, 2                	// [2:4986]  
	     je L_52_97               	// [3:4986]  
BB38_PU52:	// 0xdad
// BB:38 cycle count: 7
	     R4 = [BP + 0]            	// [0:4986]  temp
	     cmp R4, 4                	// [2:4986]  
	     jne L_52_96              	// [3:4986]  
L_52_97:	// 0xdb0
// BB:39 cycle count: 12
//4987  			                   {			                   	
//4988  
//4989                                   if((firstFlag_23b&0x4000)==0)

LM518:
	     .stabn 68,0,4989,LM518-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [0:4989]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [1:4989]  firstFlag_23b
	     R4 = DS:[R4]             	// [3:4989]  
	     R4 = R4 & 16384          	// [5:4989]  
	     cmp R4, 0                	// [7:4989]  
	     jne L_52_98              	// [8:4989]  
BB40_PU52:	// 0xdb8
// BB:40 cycle count: 22
//4990                                   	{
//4991                                   	    firstFlag_23b|=0x4000;

LM519:
	     .stabn 68,0,4991,LM519-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [0:4991]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [1:4991]  firstFlag_23b
	     R4 = DS:[R4]             	// [3:4991]  
	     R3 = R4 | 16384          	// [5:4991]  
	     DS = seg(_firstFlag_23b) 	// [7:4991]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [8:4991]  firstFlag_23b
	     DS:[R4] = R3             	// [10:4991]  
//4992  								        Volume(temp);

LM520:
	     .stabn 68,0,4992,LM520-_Get_Key
	     SP = SP - 1              	// [12:4992]  
	     R3 = [BP + 0]            	// [13:4992]  temp
	     R4 = SP + 1              	// [15:4992]  
	     [R4] = R3                	// [17:4992]  
	     call _Volume             	// [19:4992]  Volume
BB41_PU52:	// 0xdc9
// BB:41 cycle count: 25
	     SP = SP + 2              	// [0:4992]  
//4993  										firstFlag_23b&=~0x4000; 

LM521:
	     .stabn 68,0,4993,LM521-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [1:4993]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [2:4993]  firstFlag_23b
	     R4 = DS:[R4]             	// [4:4993]  
	     R3 = R4 & 49151          	// [6:4993]  
	     DS = seg(_firstFlag_23b) 	// [8:4993]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [9:4993]  firstFlag_23b
	     DS:[R4] = R3             	// [11:4993]  
//4994  										PauseFlag =1;

LM522:
	     .stabn 68,0,4994,LM522-_Get_Key
	     R3 = 1                   	// [13:4994]  
	     DS = seg(_PauseFlag)     	// [14:4994]  PauseFlag
	     R4 = (_PauseFlag)        	// [15:4994]  PauseFlag
	     DS:[R4] = R3             	// [17:4994]  
//4995  										return 1;

LM523:
	     .stabn 68,0,4995,LM523-_Get_Key
	     R1 = 1                   	// [19:4995]  
	     pop BP, PC from [SP]     	// [20:4995]  
L_52_98:	// 0xddb
L_52_96:	// 0xddb
L_52_95:	// 0xddb
L_52_91:	// 0xddb
// BB:42 cycle count: 3

LM524:
	     .stabn 68,0,4960,LM524-_Get_Key
	     goto L_52_89             	// [0:4960]  
L_52_90:	// 0xddd
// BB:43 cycle count: 22
//5001          	}
//5002  	  else //按下
//5003  	   {
//5004  
//5005            	  	Key =0;

LM525:
	     .stabn 68,0,5005,LM525-_Get_Key
	     R3 = 0                   	// [0:5005]  
	     DS = seg(_Key)           	// [1:5005]  Key
	     R4 = (_Key)              	// [2:5005]  Key
	     DS:[R4] = R3             	// [4:5005]  
//5006            	  	
//5007  		    Cycle_Timeout_cnt=0;   

LM526:
	     .stabn 68,0,5007,LM526-_Get_Key
	     R3 = 0                   	// [6:5007]  
	     DS = seg(_Cycle_Timeout_cnt)	// [7:5007]  Cycle_Timeout_cnt
	     R4 = (_Cycle_Timeout_cnt)	// [8:5007]  Cycle_Timeout_cnt
	     DS:[R4] = R3             	// [10:5007]  
//5009           // if(Eventflag != E_Demo)
//5010            	{
//5011  		  	
//5012  		
//5013  	    	if((PlayQuestionflag )||(TwoKeyflag))

LM527:
	     .stabn 68,0,5013,LM527-_Get_Key
	     DS = seg(_PlayQuestionflag)	// [12:5013]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [13:5013]  PlayQuestionflag
	     R4 = DS:[R4]             	// [15:5013]  
	     cmp R4, 0                	// [17:5013]  
	     jne L_52_100             	// [18:5013]  
BB44_PU52:	// 0xded
// BB:44 cycle count: 10
	     DS = seg(_TwoKeyflag)    	// [0:5013]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [1:5013]  TwoKeyflag
	     R4 = DS:[R4]             	// [3:5013]  
	     cmp R4, 0                	// [5:5013]  
	     jne L_52_100             	// [6:5013]  
BB75_PU52:	// 0xdf3
// BB:75 cycle count: 3
	     goto L_52_99             	// [0:0]  
L_52_100:	// 0xdf5
// BB:45 cycle count: 10
//5014  	    	 	{
//5015  	    	 		 if(TimeCnt_Key<C_1S)//TwokeyCntl

LM528:
	     .stabn 68,0,5015,LM528-_Get_Key
	     DS = seg(_TimeCnt_Key)   	// [0:5015]  TimeCnt_Key
	     R4 = (_TimeCnt_Key)      	// [1:5015]  TimeCnt_Key
	     R4 = DS:[R4]             	// [3:5015]  
	     cmp R4, 9                	// [5:5015]  
	     jbe BB46_PU52            	// [6:5015]  
BB76_PU52:	// 0xdfb
// BB:76 cycle count: 3
	     goto L_52_101            	// [0:0]  
BB46_PU52:	// 0xdfd
// BB:46 cycle count: 12
//5016  	    	 		 	 {
//5017  	    	 		 	 	  if(temp == TwoKey_temp)

LM529:
	     .stabn 68,0,5017,LM529-_Get_Key
	     R3 = [BP + 0]            	// [0:5017]  temp
	     DS = seg(_TwoKey_temp)   	// [2:5017]  TwoKey_temp
	     R4 = (_TwoKey_temp)      	// [3:5017]  TwoKey_temp
	     R4 = DS:[R4]             	// [5:5017]  
	     cmp R3, R4               	// [7:5017]  
	     jne L_52_102             	// [8:5017]  
BB47_PU52:	// 0xe04
// BB:47 cycle count: 7
//5018  	    	 		 	 	  	{
//5019  	    	 		 	 	  
//5020  								if(temp == Playbutton)

LM530:
	     .stabn 68,0,5020,LM530-_Get_Key
	     R4 = [BP + 0]            	// [0:5020]  temp
	     cmp R4, 1                	// [2:5020]  
	     jne L_52_104             	// [3:5020]  
BB48_PU52:	// 0xe07
// BB:48 cycle count: 37
//5021  								{						
//5022  								  //if((PlayQuestionflag&0x01)&&((!PlayScoresFlag)||(TieflagAskQuestion)))	//xiang 20150106
//5023  								    {
//5024  									    PauseFlag =1;

LM531:
	     .stabn 68,0,5024,LM531-_Get_Key
	     R3 = 1                   	// [0:5024]  
	     DS = seg(_PauseFlag)     	// [1:5024]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:5024]  PauseFlag
	     DS:[R4] = R3             	// [4:5024]  
//5025  									    Key_TrueFlase_Buffer =0;//20160215

LM532:
	     .stabn 68,0,5025,LM532-_Get_Key
	     R3 = 0                   	// [6:5025]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [7:5025]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [8:5025]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [10:5025]  
//5026                                          Pressflag&=~Playbutton;//避免抬起响应

LM533:
	     .stabn 68,0,5026,LM533-_Get_Key
	     DS = seg(_Pressflag)     	// [12:5026]  Pressflag
	     R4 = (_Pressflag)        	// [13:5026]  Pressflag
	     R4 = DS:[R4]             	// [15:5026]  
	     R3 = R4 & 65534          	// [17:5026]  
	     DS = seg(_Pressflag)     	// [19:5026]  Pressflag
	     R4 = (_Pressflag)        	// [20:5026]  Pressflag
	     DS:[R4] = R3             	// [22:5026]  
//5027  										TwoKey_temp =0;//20160323

LM534:
	     .stabn 68,0,5027,LM534-_Get_Key
	     R3 = 0                   	// [24:5027]  
	     DS = seg(_TwoKey_temp)   	// [25:5027]  TwoKey_temp
	     R4 = (_TwoKey_temp)      	// [26:5027]  TwoKey_temp
	     DS:[R4] = R3             	// [28:5027]  
//5028  									    return 0xffff;;

LM535:
	     .stabn 68,0,5028,LM535-_Get_Key
	     R1 = - 1                 	// [30:5028]  
	     SP = SP + 1              	// [31:5028]  
	     pop BP, PC from [SP]     	// [32:5028]  
L_52_104:	// 0xe23
// BB:49 cycle count: 7
//5039  //										TwoKey_temp =0;//20160323
//5040  //									    return 0xffff;;
//5041  //								    }
//5042  //								}
//5043  							   else if(temp == Key_False)

LM536:
	     .stabn 68,0,5043,LM536-_Get_Key
	     R4 = [BP + 0]            	// [0:5043]  temp
	     cmp R4, 4                	// [2:5043]  
	     jne L_52_105             	// [3:5043]  
BB50_PU52:	// 0xe26
// BB:50 cycle count: 10
//5044  							   {
//5045  							   	  if(TwoKeyflag==Key_False)	

LM537:
	     .stabn 68,0,5045,LM537-_Get_Key
	     DS = seg(_TwoKeyflag)    	// [0:5045]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [1:5045]  TwoKeyflag
	     R4 = DS:[R4]             	// [3:5045]  
	     cmp R4, 4                	// [5:5045]  
	     jne L_52_106             	// [6:5045]  
BB51_PU52:	// 0xe2c
// BB:51 cycle count: 25
//5046  							   	   {
//5047  								   	   	  CheaterFlag =1;//xiang 20180517

LM538:
	     .stabn 68,0,5047,LM538-_Get_Key
	     R3 = 1                   	// [0:5047]  
	     DS = seg(_CheaterFlag)   	// [1:5047]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [2:5047]  CheaterFlag
	     DS:[R4] = R3             	// [4:5047]  
//5048  								   	   	  Key_TrueFlase_Buffer =0;//20160215

LM539:
	     .stabn 68,0,5048,LM539-_Get_Key
	     R3 = 0                   	// [6:5048]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [7:5048]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [8:5048]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [10:5048]  
//5049  
//5050  										  TwoKey_temp =0;//20160323

LM540:
	     .stabn 68,0,5050,LM540-_Get_Key
	     R3 = 0                   	// [12:5050]  
	     DS = seg(_TwoKey_temp)   	// [13:5050]  TwoKey_temp
	     R4 = (_TwoKey_temp)      	// [14:5050]  TwoKey_temp
	     DS:[R4] = R3             	// [16:5050]  
//5051  								   	     return 0xffff;	   	 

LM541:
	     .stabn 68,0,5051,LM541-_Get_Key
	     R1 = - 1                 	// [18:5051]  
	     SP = SP + 1              	// [19:5051]  
	     pop BP, PC from [SP]     	// [20:5051]  
L_52_106:	// 0xe3e
L_52_105:	// 0xe3e
L_52_103:	// 0xe3e
L_52_102:	// 0xe3e
L_52_101:	// 0xe3e
// BB:52 cycle count: 7
//5059  	    	 		 	 	  	}
//5060  	    	 		 	 	
//5061  	    	 		 	  
//5062  	    	 		 	 }
//5063  	    	 		    TwoKey_temp = temp;

LM542:
	     .stabn 68,0,5063,LM542-_Get_Key
	     R3 = [BP + 0]            	// [0:5063]  temp
	     DS = seg(_TwoKey_temp)   	// [2:5063]  TwoKey_temp
	     R4 = (_TwoKey_temp)      	// [3:5063]  TwoKey_temp
	     DS:[R4] = R3             	// [5:5063]  
L_52_99:	// 0xe43
// BB:53 cycle count: 10
//5064  	    	 		  //  TwokeyCntl =0;      
//5065  	    	 	}
//5066  
//5067  
//5068                 if(TimeCnt_Key<C_1s_Pause)

LM543:
	     .stabn 68,0,5068,LM543-_Get_Key
	     DS = seg(_TimeCnt_Key)   	// [0:5068]  TimeCnt_Key
	     R4 = (_TimeCnt_Key)      	// [1:5068]  TimeCnt_Key
	     R4 = DS:[R4]             	// [3:5068]  
	     cmp R4, 7                	// [5:5068]  
	     ja L_52_107              	// [6:5068]  
BB54_PU52:	// 0xe49
// BB:54 cycle count: 12
//5069                 	{
//5070  
//5071                     if(((Key_TrueFlase_Buffer + temp) == (Key_True+Key_False)))

LM544:
	     .stabn 68,0,5071,LM544-_Get_Key
	     R4 = [BP + 0]            	// [0:5071]  temp
	     DS = seg(_Key_TrueFlase_Buffer)	// [2:5071]  Key_TrueFlase_Buffer
	     R3 = (_Key_TrueFlase_Buffer)	// [3:5071]  Key_TrueFlase_Buffer
	     R4 = R4 + DS:[R3]        	// [5:5071]  
	     cmp R4, 6                	// [7:5071]  
	     jne L_52_108             	// [8:5071]  
BB55_PU52:	// 0xe50
// BB:55 cycle count: 30
//5072                     	{
//5073                     	
//5074                     	
//5075                          temp =0;

LM545:
	     .stabn 68,0,5075,LM545-_Get_Key
	     R4 = 0                   	// [0:5075]  
	     [BP + 0] = R4            	// [1:5075]  temp
//5076                     		Key_TrueFlase_Buffer =0;

LM546:
	     .stabn 68,0,5076,LM546-_Get_Key
	     R3 = 0                   	// [2:5076]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [3:5076]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [4:5076]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [6:5076]  
//5077                     		
//5078                     		Pressflag&=~(Key_True|Key_False);

LM547:
	     .stabn 68,0,5078,LM547-_Get_Key
	     DS = seg(_Pressflag)     	// [8:5078]  Pressflag
	     R4 = (_Pressflag)        	// [9:5078]  Pressflag
	     R4 = DS:[R4]             	// [11:5078]  
	     R3 = R4 & 65529          	// [13:5078]  
	     DS = seg(_Pressflag)     	// [15:5078]  Pressflag
	     R4 = (_Pressflag)        	// [16:5078]  Pressflag
	     DS:[R4] = R3             	// [18:5078]  
//5079                     		if(Answerflag==1)

LM548:
	     .stabn 68,0,5079,LM548-_Get_Key
	     DS = seg(_Answerflag)    	// [20:5079]  Answerflag
	     R4 = (_Answerflag)       	// [21:5079]  Answerflag
	     R4 = DS:[R4]             	// [23:5079]  
	     cmp R4, 1                	// [25:5079]  
	     jne L_52_109             	// [26:5079]  
BB56_PU52:	// 0xe67
// BB:56 cycle count: 14
//5080                     		{
//5081                     		    Sleepflag = C_PassToEnd;

LM549:
	     .stabn 68,0,5081,LM549-_Get_Key
	     R3 = 16384               	// [0:5081]  
	     DS = seg(_Sleepflag)     	// [2:5081]  Sleepflag
	     R4 = (_Sleepflag)        	// [3:5081]  Sleepflag
	     DS:[R4] = R3             	// [5:5081]  
//5082                     		    return C_Finish;

LM550:
	     .stabn 68,0,5082,LM550-_Get_Key
	     R1 = - 1                 	// [7:5082]  
	     SP = SP + 1              	// [8:5082]  
	     pop BP, PC from [SP]     	// [9:5082]  
L_52_109:	// 0xe70
L_52_108:	// 0xe70
L_52_107:	// 0xe70
// BB:57 cycle count: 8
//5105  
//5106            	}
//5107  
//5108  		  
//5109               if(temp&(Key_True|Key_False))

LM551:
	     .stabn 68,0,5109,LM551-_Get_Key
	     R4 = [BP + 0]            	// [0:5109]  temp
	     R4 = R4 & 6              	// [2:5109]  
	     cmp R4, 0                	// [3:5109]  
	     je L_52_110              	// [4:5109]  
BB58_PU52:	// 0xe74
// BB:58 cycle count: 7
//5110               	{
//5111                   Key_TrueFlase_Buffer = temp;				

LM552:
	     .stabn 68,0,5111,LM552-_Get_Key
	     R3 = [BP + 0]            	// [0:5111]  temp
	     DS = seg(_Key_TrueFlase_Buffer)	// [2:5111]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [3:5111]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [5:5111]  
L_52_110:	// 0xe79
L_52_89:	// 0xe79
// BB:59 cycle count: 6
//5139  //		      }
//5140  	    
//5141  	      }
//5142  
//5143  		  TimeCnt_Key =0;

LM553:
	     .stabn 68,0,5143,LM553-_Get_Key
	     R3 = 0                   	// [0:5143]  
	     DS = seg(_TimeCnt_Key)   	// [1:5143]  TimeCnt_Key
	     R4 = (_TimeCnt_Key)      	// [2:5143]  TimeCnt_Key
	     DS:[R4] = R3             	// [4:5143]  
L_52_88:	// 0xe7e
// BB:60 cycle count: 10
//5144  	     
//5145  	  }
//5146  
//5147  
//5148          if(Key_TrueFlase_Buffer)

LM554:
	     .stabn 68,0,5148,LM554-_Get_Key
	     DS = seg(_Key_TrueFlase_Buffer)	// [0:5148]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [1:5148]  Key_TrueFlase_Buffer
	     R4 = DS:[R4]             	// [3:5148]  
	     cmp R4, 0                	// [5:5148]  
	     je L_52_111              	// [6:5148]  
BB61_PU52:	// 0xe84
// BB:61 cycle count: 10
//5149          	{
//5150  
//5151                   if(TimeCnt_Key>=C_1s_Pause)

LM555:
	     .stabn 68,0,5151,LM555-_Get_Key
	     DS = seg(_TimeCnt_Key)   	// [0:5151]  TimeCnt_Key
	     R4 = (_TimeCnt_Key)      	// [1:5151]  TimeCnt_Key
	     R4 = DS:[R4]             	// [3:5151]  
	     cmp R4, 7                	// [5:5151]  
	     jbe L_52_112             	// [6:5151]  
BB62_PU52:	// 0xe8a
// BB:62 cycle count: 15
//5152                   	{
//5153                   	   
//5154  
//5155  					  if(Key_activeflag&Key_TrueFlase_Buffer) 

LM556:
	     .stabn 68,0,5155,LM556-_Get_Key
	     DS = seg(_Key_activeflag)	// [0:5155]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [1:5155]  Key_activeflag
	     R4 = DS:[R4]             	// [3:5155]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [5:5155]  Key_TrueFlase_Buffer
	     R3 = (_Key_TrueFlase_Buffer)	// [6:5155]  Key_TrueFlase_Buffer
	     R4 = R4 & DS:[R3]        	// [8:5155]  
	     cmp R4, 0                	// [10:5155]  
	     je L_52_113              	// [11:5155]  
BB63_PU52:	// 0xe94
// BB:63 cycle count: 33
//5156  					  {
//5157  					  	 Key_Event = Key_TrueFlase_Buffer;//20160215 xiang

LM557:
	     .stabn 68,0,5157,LM557-_Get_Key
	     DS = seg(_Key_TrueFlase_Buffer)	// [0:5157]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [1:5157]  Key_TrueFlase_Buffer
	     R3 = DS:[R4]             	// [3:5157]  
	     DS = seg(_Key_Event)     	// [5:5157]  Key_Event
	     R4 = (_Key_Event)        	// [6:5157]  Key_Event
	     DS:[R4] = R3             	// [8:5157]  
//5158  					  	 Key_TrueFlase_Buffer =0;   

LM558:
	     .stabn 68,0,5158,LM558-_Get_Key
	     R3 = 0                   	// [10:5158]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [11:5158]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [12:5158]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [14:5158]  
//5159  						TwoKey_temp =0;

LM559:
	     .stabn 68,0,5159,LM559-_Get_Key
	     R3 = 0                   	// [16:5159]  
	     DS = seg(_TwoKey_temp)   	// [17:5159]  TwoKey_temp
	     R4 = (_TwoKey_temp)      	// [18:5159]  TwoKey_temp
	     DS:[R4] = R3             	// [20:5159]  
//5160  				 	     return Key_Event;;

LM560:
	     .stabn 68,0,5160,LM560-_Get_Key
	     DS = seg(_Key_Event)     	// [22:5160]  Key_Event
	     R4 = (_Key_Event)        	// [23:5160]  Key_Event
	     R1 = DS:[R4]             	// [25:5160]  
	     SP = SP + 1              	// [27:5160]  
	     pop BP, PC from [SP]     	// [28:5160]  
L_52_113:	// 0xeac
// BB:64 cycle count: 6
//5161  					  }
//5162  				 	      
//5163  				 	     Key_TrueFlase_Buffer =0;

LM561:
	     .stabn 68,0,5163,LM561-_Get_Key
	     R3 = 0                   	// [0:5163]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [1:5163]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [2:5163]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [4:5163]  
L_52_112:	// 0xeb1
L_52_111:	// 0xeb1
// BB:65 cycle count: 7
//5165  
//5166          	}
//5167  
//5168    
//5169          if(Countdown_E ==1 )

LM562:
	     .stabn 68,0,5169,LM562-_Get_Key
	     R4 = [BP + 4]            	// [0:5169]  Countdown_E
	     cmp R4, 1                	// [2:5169]  
	     jne L_52_114             	// [3:5169]  
BB66_PU52:	// 0xeb4
// BB:66 cycle count: 15
//5170  			  	{
//5171                    if(TimeCnt > Time_Countdown)

LM563:
	     .stabn 68,0,5171,LM563-_Get_Key
	     DS = seg(_Time_Countdown)	// [0:5171]  Time_Countdown
	     R4 = (_Time_Countdown)   	// [1:5171]  Time_Countdown
	     R3 = DS:[R4]             	// [3:5171]  
	     DS = seg(_TimeCnt)       	// [5:5171]  TimeCnt
	     R4 = (_TimeCnt)          	// [6:5171]  TimeCnt
	     R4 = DS:[R4]             	// [8:5171]  
	     cmp R3, R4               	// [10:5171]  
	     jae L_52_115             	// [11:5171]  
BB67_PU52:	// 0xebe
// BB:67 cycle count: 8
//5172                    {
//5173                         return TimeOver;

LM564:
	     .stabn 68,0,5173,LM564-_Get_Key
	     R1 = - 4084              	// [0:5173]  
	     SP = SP + 1              	// [2:5173]  
	     pop BP, PC from [SP]     	// [3:5173]  
L_52_115:	// 0xec2
L_52_114:	// 0xec2
// BB:68 cycle count: 10
//5176                    }               
//5177  			   }
//5178  			   
//5179  			   
//5180  		  if(Countdownflag)

LM565:
	     .stabn 68,0,5180,LM565-_Get_Key
	     DS = seg(_Countdownflag) 	// [0:5180]  Countdownflag
	     R4 = (_Countdownflag)    	// [1:5180]  Countdownflag
	     R4 = DS:[R4]             	// [3:5180]  
	     cmp R4, 0                	// [5:5180]  
	     je L_52_116              	// [6:5180]  
BB69_PU52:	// 0xec8
// BB:69 cycle count: 11
//5181  			{
//5182  				
//5183  			    if(T_Countdowncnt > Time_Countdown_Sleep)	

LM566:
	     .stabn 68,0,5183,LM566-_Get_Key
	     DS = seg(_T_Countdowncnt)	// [0:5183]  T_Countdowncnt
	     R4 = (_T_Countdowncnt)   	// [1:5183]  T_Countdowncnt
	     R4 = DS:[R4]             	// [3:5183]  
	     cmp R4, 2880             	// [5:5183]  
	     jbe L_52_117             	// [7:5183]  
BB70_PU52:	// 0xecf
// BB:70 cycle count: 19
//5184  			    {
//5185  			    	 Sleepflag |=1;//off

LM567:
	     .stabn 68,0,5185,LM567-_Get_Key
	     DS = seg(_Sleepflag)     	// [0:5185]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:5185]  Sleepflag
	     R4 = DS:[R4]             	// [3:5185]  
	     R4 = R4 | 1              	// [5:5185]  
	     DS = seg(_Sleepflag)     	// [6:5185]  Sleepflag
	     R3 = (_Sleepflag)        	// [7:5185]  Sleepflag
	     DS:[R3] = R4             	// [9:5185]  
//5186  				     return TimeOver;

LM568:
	     .stabn 68,0,5186,LM568-_Get_Key
	     R1 = - 4084              	// [11:5186]  
	     SP = SP + 1              	// [13:5186]  
	     pop BP, PC from [SP]     	// [14:5186]  
L_52_117:	// 0xedc
L_52_116:	// 0xedc
Lt_52_1:	// 0xedc
// BB:71 cycle count: 7
//5187  			    }
//5188  			}	   
//5189  			   
//5190  
//5191   	}while(Countdown_E);

LM569:
	     .stabn 68,0,5191,LM569-_Get_Key
	     R4 = [BP + 4]            	// [0:5191]  Countdown_E
	     cmp R4, 0                	// [2:5191]  
	     je BB72_PU52             	// [3:5191]  
BB78_PU52:	// 0xedf
// BB:78 cycle count: 3
	     goto L_52_76             	// [0:0]  
BB72_PU52:	// 0xee1
// BB:72 cycle count: 7
//5192   	
//5193      return 0;

LM570:
	     .stabn 68,0,5193,LM570-_Get_Key
	     R1 = 0                   	// [0:5193]  
	     SP = SP + 1              	// [1:5193]  
	     pop BP, PC from [SP]     	// [2:5193]  
LBE48:
	.endp	
	     .stabs "Countdown_E:p1",160,0,0,4
	     .stabn 192,0,0,LBB48-_Get_Key
	     .stabs "temp:4",128,0,0,0
	     .stabn 224,0,0,LBE48-_Get_Key
LME53:
	     .stabf LME53-_Get_Key
.code
	     .stabs "Ask_Question:F18",36,0,0,_Ask_Question

	// Program Unit: Ask_Question
.public	_Ask_Question
_Ask_Question: .proc	
	     .stabn 0xa6,0,0,11
	// key_activetemp = 0
	// temp_PlayQuestionflag = 1
	// __save_expr_temp_9 = 2
	// __save_expr_temp_10 = 3
	// __save_expr_temp_11 = 4
	// old_frame_pointer = 11
	// return_address = 12
	// lra_spill_temp_23 = 5
	// lra_spill_temp_24 = 6
	// lra_spill_temp_25 = 7
	// lra_spill_temp_26 = 8
	// lra_spill_temp_27 = 9
	// lra_spill_temp_28 = 10
//5450  //==================================================
//5451  //
//5452  //==================================================
//5453  void Ask_Question()
//5454  {

LM571:
	     .stabn 68,0,5454,LM571-_Ask_Question
BB1_PU53:	// 0xee4
// BB:1 cycle count: 23
	     push BP to [SP]          	// [0:5454]  
	     SP = SP - 11             	// [2:5454]  
	     BP = SP + 1              	// [3:5454]  
LBB49:
//5455  //  unsigned int temp=0,i;
//5456       unsigned int key_activetemp = Key_activeflag;

LM572:
	     .stabn 68,0,5456,LM572-_Ask_Question
	     DS = seg(_Key_activeflag)	// [5:5456]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [6:5456]  Key_activeflag
	     R4 = DS:[R4]             	// [8:5456]  
	     [BP + 0] = R4            	// [10:5456]  key_activetemp
//5457       
//5458       unsigned int temp_PlayQuestionflag=PlayQuestionflag;

LM573:
	     .stabn 68,0,5458,LM573-_Ask_Question
	     DS = seg(_PlayQuestionflag)	// [11:5458]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [12:5458]  PlayQuestionflag
	     R4 = DS:[R4]             	// [14:5458]  
	     [BP + 1] = R4            	// [16:5458]  temp_PlayQuestionflag
//5459       
//5460       PlayQuestionflag =1;

LM574:
	     .stabn 68,0,5460,LM574-_Ask_Question
	     R3 = 1                   	// [17:5460]  
	     DS = seg(_PlayQuestionflag)	// [18:5460]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [19:5460]  PlayQuestionflag
	     DS:[R4] = R3             	// [21:5460]  
L_53_12:	// 0xef7
// BB:2 cycle count: 28
//5461     do
//5462  	{
//5463  		
//5464  			Key_Event =0;

LM575:
	     .stabn 68,0,5464,LM575-_Ask_Question
	     R3 = 0                   	// [0:5464]  
	     DS = seg(_Key_Event)     	// [1:5464]  Key_Event
	     R4 = (_Key_Event)        	// [2:5464]  Key_Event
	     DS:[R4] = R3             	// [4:5464]  
//5465  			Key_activeflag =0;		

LM576:
	     .stabn 68,0,5465,LM576-_Ask_Question
	     R3 = 0                   	// [6:5465]  
	     DS = seg(_Key_activeflag)	// [7:5465]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:5465]  Key_activeflag
	     DS:[R4] = R3             	// [10:5465]  
//5466  			PauseFlag =0;

LM577:
	     .stabn 68,0,5466,LM577-_Ask_Question
	     R3 = 0                   	// [12:5466]  
	     DS = seg(_PauseFlag)     	// [13:5466]  PauseFlag
	     R4 = (_PauseFlag)        	// [14:5466]  PauseFlag
	     DS:[R4] = R3             	// [16:5466]  
//5467  
//5468  		    //delay_time(8);
//5469  		  if(R_E ==C_TwoSounds)  

LM578:
	     .stabn 68,0,5469,LM578-_Ask_Question
	     DS = seg(_R_E)           	// [18:5469]  R_E
	     R4 = (_R_E)              	// [19:5469]  R_E
	     R4 = DS:[R4]             	// [21:5469]  
	     cmp R4, 2                	// [23:5469]  
	     jne L_53_13              	// [24:5469]  
BB3_PU53:	// 0xf0c
// BB:3 cycle count: 11
//5470  		  {
//5471  		  if(gQuestionIdx_1!=0xffff)

LM579:
	     .stabn 68,0,5471,LM579-_Ask_Question
	     DS = seg(_gQuestionIdx_1)	// [0:5471]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [1:5471]  gQuestionIdx_1
	     R4 = DS:[R4]             	// [3:5471]  
	     cmp R4, 65535            	// [5:5471]  
	     je L_53_14               	// [7:5471]  
BB4_PU53:	// 0xf13
// BB:4 cycle count: 13
//5472  		     PlayA1800_Elements(Get_Question_Sound(gQuestionIdx_1));

LM580:
	     .stabn 68,0,5472,LM580-_Ask_Question
	     SP = SP - 1              	// [0:5472]  
	     DS = seg(_gQuestionIdx_1)	// [1:5472]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [2:5472]  gQuestionIdx_1
	     R3 = DS:[R4]             	// [4:5472]  
	     R4 = SP + 1              	// [6:5472]  
	     [R4] = R3                	// [8:5472]  
	     call _Get_Question_Sound 	// [10:5472]  Get_Question_Sound
BB5_PU53:	// 0xf1d
// BB:5 cycle count: 7
	     R4 = SP + 1              	// [0:5472]  
	     [R4] = R1                	// [2:5472]  
	     call _PlayA1800_Elements 	// [4:5472]  PlayA1800_Elements
BB6_PU53:	// 0xf22
// BB:6 cycle count: 1
	     SP = SP + 1              	// [0:5472]  
L_53_14:	// 0xf23
// BB:7 cycle count: 9
//5473  		      delay_time(8);

LM581:
	     .stabn 68,0,5473,LM581-_Ask_Question
	     SP = SP - 1              	// [0:5473]  
	     R3 = 8                   	// [1:5473]  
	     R4 = SP + 1              	// [2:5473]  
	     [R4] = R3                	// [4:5473]  
	     call _delay_time         	// [6:5473]  delay_time
BB8_PU53:	// 0xf2a
// BB:8 cycle count: 1
	     SP = SP + 1              	// [0:5473]  
L_53_13:	// 0xf2b
// BB:9 cycle count: 11
//5474  		     
//5475  		  }
//5476  		   if(gQuestionIdx!=0xffff)  		  	

LM582:
	     .stabn 68,0,5476,LM582-_Ask_Question
	     DS = seg(_gQuestionIdx)  	// [0:5476]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:5476]  gQuestionIdx
	     R4 = DS:[R4]             	// [3:5476]  
	     cmp R4, 65535            	// [5:5476]  
	     je L_53_15               	// [7:5476]  
BB10_PU53:	// 0xf32
// BB:10 cycle count: 13
//5477  		      PlayA1800_Elements(Get_Question_Sound(gQuestionIdx));//PlayA1800_Question(gQuestionIdx);

LM583:
	     .stabn 68,0,5477,LM583-_Ask_Question
	     SP = SP - 1              	// [0:5477]  
	     DS = seg(_gQuestionIdx)  	// [1:5477]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [2:5477]  gQuestionIdx
	     R3 = DS:[R4]             	// [4:5477]  
	     R4 = SP + 1              	// [6:5477]  
	     [R4] = R3                	// [8:5477]  
	     call _Get_Question_Sound 	// [10:5477]  Get_Question_Sound
BB11_PU53:	// 0xf3c
// BB:11 cycle count: 7
	     R4 = SP + 1              	// [0:5477]  
	     [R4] = R1                	// [2:5477]  
	     call _PlayA1800_Elements 	// [4:5477]  PlayA1800_Elements
BB12_PU53:	// 0xf41
// BB:12 cycle count: 1
	     SP = SP + 1              	// [0:5477]  
L_53_15:	// 0xf42
// BB:13 cycle count: 15
//5478  		   
//5479  		     TwoKeyflag =0;

LM584:
	     .stabn 68,0,5479,LM584-_Ask_Question
	     R3 = 0                   	// [0:5479]  
	     DS = seg(_TwoKeyflag)    	// [1:5479]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [2:5479]  TwoKeyflag
	     DS:[R4] = R3             	// [4:5479]  
//5480  		     delay_time(8);

LM585:
	     .stabn 68,0,5480,LM585-_Ask_Question
	     SP = SP - 1              	// [6:5480]  
	     R3 = 8                   	// [7:5480]  
	     R4 = SP + 1              	// [8:5480]  
	     [R4] = R3                	// [10:5480]  
	     call _delay_time         	// [12:5480]  delay_time
BB14_PU53:	// 0xf4e
// BB:14 cycle count: 1
	     SP = SP + 1              	// [0:5480]  
Lt_53_1:	// 0xf4f
// BB:15 cycle count: 10
//5481  	 }while(PauseFlag); 

LM586:
	     .stabn 68,0,5481,LM586-_Ask_Question
	     DS = seg(_PauseFlag)     	// [0:5481]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:5481]  PauseFlag
	     R4 = DS:[R4]             	// [3:5481]  
	     cmp R4, 0                	// [5:5481]  
	     je BB16_PU53             	// [6:5481]  
BB21_PU53:	// 0xf55
// BB:21 cycle count: 3
	     goto L_53_12             	// [0:0]  
BB16_PU53:	// 0xf57
// BB:16 cycle count: 16
//5482  	 
//5483  	  PlayQuestionflag =temp_PlayQuestionflag;

LM587:
	     .stabn 68,0,5483,LM587-_Ask_Question
	     R3 = [BP + 1]            	// [0:5483]  temp_PlayQuestionflag
	     DS = seg(_PlayQuestionflag)	// [2:5483]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [3:5483]  PlayQuestionflag
	     DS:[R4] = R3             	// [5:5483]  
//5484  
//5485  
//5486       Question_Answer =0;

LM588:
	     .stabn 68,0,5486,LM588-_Ask_Question
	     R3 = 0                   	// [7:5486]  
	     DS = seg(_Question_Answer)	// [8:5486]  Question_Answer
	     R4 = (_Question_Answer)  	// [9:5486]  Question_Answer
	     DS:[R4] = R3             	// [11:5486]  
//5487       SP_RampDnDAC1();

LM589:
	     .stabn 68,0,5487,LM589-_Ask_Question
	     call _SP_RampDnDAC1      	// [13:5487]  SP_RampDnDAC1
BB17_PU53:	// 0xf63
// BB:17 cycle count: 24
//5488       
//5489       Key_Event =0;

LM590:
	     .stabn 68,0,5489,LM590-_Ask_Question
	     R3 = 0                   	// [0:5489]  
	     DS = seg(_Key_Event)     	// [1:5489]  Key_Event
	     R4 = (_Key_Event)        	// [2:5489]  Key_Event
	     DS:[R4] = R3             	// [4:5489]  
//5490       Key_activeflag =  key_activetemp;

LM591:
	     .stabn 68,0,5490,LM591-_Ask_Question
	     R3 = [BP + 0]            	// [6:5490]  key_activetemp
	     DS = seg(_Key_activeflag)	// [8:5490]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [9:5490]  Key_activeflag
	     DS:[R4] = R3             	// [11:5490]  
//5495  //		gQuestionIdx = testque[testqueptr];
//5496  //	}
//5497  //#endif
//5498  
//5499   if( Eventflag != E_Demo)

LM592:
	     .stabn 68,0,5499,LM592-_Ask_Question
	     DS = seg(_Eventflag)     	// [13:5499]  Eventflag
	     R4 = (_Eventflag)        	// [14:5499]  Eventflag
	     R4 = DS:[R4]             	// [16:5499]  
	     cmp R4, 61460            	// [18:5499]  
	     jne BB18_PU53            	// [20:5499]  
BB20_PU53:	// 0xf74
// BB:20 cycle count: 3
	     goto L_53_16             	// [0:0]  
BB18_PU53:	// 0xf76
// BB:18 cycle count: 159
//5500   	{
//5501  		QuestionStatus_LQ[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];		//suppress Qx from LQ;	

LM593:
	     .stabn 68,0,5501,LM593-_Ask_Question
	     DS = seg(_gQuestionIdx)  	// [0:5501]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:5501]  gQuestionIdx
	     R4 = DS:[R4]             	// [3:5501]  
	     R4 = R4 lsr 4            	// [5:5501]  
	     [BP + 2] = R4            	// [6:5501]  __save_expr_temp_9
	     R4 = [BP + 2]            	// [7:5501]  __save_expr_temp_9
	     R3 = 0                   	// [9:5501]  
	     R1 = (_QuestionStatus_LQ)	// [10:5501]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [12:5501]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [13:5501]  
	     R3 = R3 + R2, Carry      	// [14:5501]  
	     DS = R3                  	// [15:5501]  
	     R4 = DS:[R4]             	// [16:5501]  
	     [BP + 5] = R4            	// [18:5501]  lra_spill_temp_23
	     DS = seg(_gQuestionIdx)  	// [19:5501]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [20:5501]  gQuestionIdx
	     R4 = DS:[R4]             	// [22:5501]  
	     R4 = R4 & 15             	// [24:5501]  
	     R3 = 0                   	// [25:5501]  
	     R1 = (_BitMap)           	// [26:5501]  BitMap
	     R2 = seg(_BitMap)        	// [28:5501]  BitMap
	     R4 = R4 + R1             	// [29:5501]  
	     R3 = R3 + R2, Carry      	// [30:5501]  
	     DS = R3                  	// [31:5501]  
	     R4 = DS:[R4]             	// [32:5501]  
	     R3 = R4 ^ 65535          	// [34:5501]  
	     R4 = [BP + 5]            	// [36:5501]  lra_spill_temp_23
	     R4 = R4 & R3             	// [38:5501]  
	     [BP + 6] = R4            	// [39:5501]  lra_spill_temp_24
	     R4 = [BP + 2]            	// [40:5501]  __save_expr_temp_9
	     R3 = 0                   	// [42:5501]  
	     R1 = (_QuestionStatus_LQ)	// [43:5501]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [45:5501]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [46:5501]  
	     R3 = R3 + R2, Carry      	// [47:5501]  
	     DS = R3                  	// [48:5501]  
	     R3 = [BP + 6]            	// [49:5501]  lra_spill_temp_24
	     DS:[R4] = R3             	// [51:5501]  
//5502  		QuestionStatus_LQA[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];	

LM594:
	     .stabn 68,0,5502,LM594-_Ask_Question
	     DS = seg(_gQuestionIdx)  	// [53:5502]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [54:5502]  gQuestionIdx
	     R4 = DS:[R4]             	// [56:5502]  
	     R4 = R4 lsr 4            	// [58:5502]  
	     [BP + 3] = R4            	// [59:5502]  __save_expr_temp_10
	     R4 = [BP + 3]            	// [60:5502]  __save_expr_temp_10
	     R3 = 0                   	// [62:5502]  
	     R1 = (_QuestionStatus_LQA)	// [63:5502]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [65:5502]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [66:5502]  
	     R3 = R3 + R2, Carry      	// [67:5502]  
	     DS = R3                  	// [68:5502]  
	     R4 = DS:[R4]             	// [69:5502]  
	     [BP + 7] = R4            	// [71:5502]  lra_spill_temp_25
	     DS = seg(_gQuestionIdx)  	// [72:5502]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [73:5502]  gQuestionIdx
	     R4 = DS:[R4]             	// [75:5502]  
	     R4 = R4 & 15             	// [77:5502]  
	     R3 = 0                   	// [78:5502]  
	     R1 = (_BitMap)           	// [79:5502]  BitMap
	     R2 = seg(_BitMap)        	// [81:5502]  BitMap
	     R4 = R4 + R1             	// [82:5502]  
	     R3 = R3 + R2, Carry      	// [83:5502]  
	     DS = R3                  	// [84:5502]  
	     R4 = DS:[R4]             	// [85:5502]  
	     R3 = R4 ^ 65535          	// [87:5502]  
	     R4 = [BP + 7]            	// [89:5502]  lra_spill_temp_25
	     R4 = R4 & R3             	// [91:5502]  
	     [BP + 8] = R4            	// [92:5502]  lra_spill_temp_26
	     R4 = [BP + 3]            	// [93:5502]  __save_expr_temp_10
	     R3 = 0                   	// [95:5502]  
	     R1 = (_QuestionStatus_LQA)	// [96:5502]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [98:5502]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [99:5502]  
	     R3 = R3 + R2, Carry      	// [100:5502]  
	     DS = R3                  	// [101:5502]  
	     R3 = [BP + 8]            	// [102:5502]  lra_spill_temp_26
	     DS:[R4] = R3             	// [104:5502]  
//5503  		QuestionStatus_Asked[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];//QuestionStatus_Asked[gQuestionIdx/16]|=BitMap[gQuestionIdx%16];

LM595:
	     .stabn 68,0,5503,LM595-_Ask_Question
	     DS = seg(_gQuestionIdx)  	// [106:5503]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [107:5503]  gQuestionIdx
	     R4 = DS:[R4]             	// [109:5503]  
	     R4 = R4 lsr 4            	// [111:5503]  
	     [BP + 4] = R4            	// [112:5503]  __save_expr_temp_11
	     R4 = [BP + 4]            	// [113:5503]  __save_expr_temp_11
	     R3 = 0                   	// [115:5503]  
	     R1 = (_QuestionStatus_Asked)	// [116:5503]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [118:5503]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [119:5503]  
	     R3 = R3 + R2, Carry      	// [120:5503]  
	     DS = R3                  	// [121:5503]  
	     R4 = DS:[R4]             	// [122:5503]  
	     [BP + 9] = R4            	// [124:5503]  lra_spill_temp_27
	     DS = seg(_gQuestionIdx)  	// [125:5503]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [126:5503]  gQuestionIdx
	     R4 = DS:[R4]             	// [128:5503]  
	     R4 = R4 & 15             	// [130:5503]  
	     R3 = 0                   	// [131:5503]  
	     R1 = (_BitMap)           	// [132:5503]  BitMap
	     R2 = seg(_BitMap)        	// [134:5503]  BitMap
	     R4 = R4 + R1             	// [135:5503]  
	     R3 = R3 + R2, Carry      	// [136:5503]  
	     DS = R3                  	// [137:5503]  
	     R4 = DS:[R4]             	// [138:5503]  
	     R3 = R4 ^ 65535          	// [140:5503]  
	     R4 = [BP + 9]            	// [142:5503]  lra_spill_temp_27
	     R4 = R4 & R3             	// [144:5503]  
	     [BP + 10] = R4           	// [145:5503]  lra_spill_temp_28
	     R4 = [BP + 4]            	// [146:5503]  __save_expr_temp_11
	     R3 = 0                   	// [148:5503]  
	     R1 = (_QuestionStatus_Asked)	// [149:5503]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [151:5503]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [152:5503]  
	     R3 = R3 + R2, Carry      	// [153:5503]  
	     DS = R3                  	// [154:5503]  
	     R3 = [BP + 10]           	// [155:5503]  lra_spill_temp_28
	     DS:[R4] = R3             	// [157:5503]  
L_53_16:	// 0xffa
// BB:19 cycle count: 6
	     SP = SP + 11             	// [0:5503]  
	     pop BP, PC from [SP]     	// [1:5503]  
LBE49:
	.endp	
	     .stabn 192,0,0,LBB49-_Ask_Question
	     .stabs "key_activetemp:4",128,0,0,0
	     .stabs "temp_PlayQuestionflag:4",128,0,0,1
	     .stabn 224,0,0,LBE49-_Ask_Question
LME54:
	     .stabf LME54-_Ask_Question
.code
	     .stabs "Questions_init:F18",36,0,0,_Questions_init

	// Program Unit: Questions_init
.public	_Questions_init
_Questions_init: .proc	
	     .stabn 0xa6,0,0,2
	// i = 0
	// old_frame_pointer = 2
	// return_address = 3
	// lra_spill_temp_29 = 1
//5961  //==================================================
//5962  //
//5963  //==================================================
//5964  void  Questions_init()
//5965  {

LM596:
	     .stabn 68,0,5965,LM596-_Questions_init
BB1_PU54:	// 0xffc
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:5965]  
	     SP = SP - 2              	// [2:5965]  
	     BP = SP + 1              	// [3:5965]  
LBB50:
//5966  	unsigned int i;
//5967  	
//5968        	i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM597:
	     .stabn 68,0,5968,LM597-_Questions_init
	     R4 = 0                   	// [5:5968]  
	     [BP + 0] = R4            	// [6:5968]  i
L_54_1:	// 0x1002
// BB:2 cycle count: 7
//5969  		while(i<C_QuestionRAM)

LM598:
	     .stabn 68,0,5969,LM598-_Questions_init
	     R4 = [BP + 0]            	// [0:5969]  i
	     cmp R4, 19               	// [2:5969]  
	     ja L_54_2                	// [3:5969]  
BB3_PU54:	// 0x1005
// BB:3 cycle count: 33
//5970  		{
//5971  			QuestionStatus_LQA[i] = QuestionStatus_LQ[i];

LM599:
	     .stabn 68,0,5971,LM599-_Questions_init
	     R4 = [BP + 0]            	// [0:5971]  i
	     R3 = 0                   	// [2:5971]  
	     R1 = (_QuestionStatus_LQ)	// [3:5971]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [5:5971]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [6:5971]  
	     R3 = R3 + R2, Carry      	// [7:5971]  
	     DS = R3                  	// [8:5971]  
	     R4 = DS:[R4]             	// [9:5971]  
	     [BP + 1] = R4            	// [11:5971]  lra_spill_temp_29
	     R4 = [BP + 0]            	// [12:5971]  i
	     R3 = 0                   	// [14:5971]  
	     R1 = (_QuestionStatus_LQA)	// [15:5971]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [17:5971]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [18:5971]  
	     R3 = R3 + R2, Carry      	// [19:5971]  
	     DS = R3                  	// [20:5971]  
	     R3 = [BP + 1]            	// [21:5971]  lra_spill_temp_29
	     DS:[R4] = R3             	// [23:5971]  
//5972  		//	QuestionStatus_Asked[i] = 0;
//5973  			i++;	

LM600:
	     .stabn 68,0,5973,LM600-_Questions_init
	     R4 = [BP + 0]            	// [25:5973]  i
	     R4 = R4 + 1              	// [27:5973]  
	     [BP + 0] = R4            	// [28:5973]  i
	     jmp L_54_1               	// [29:5973]  
L_54_2:	// 0x101d
// BB:4 cycle count: 6
	     SP = SP + 2              	// [0:5973]  
	     pop BP, PC from [SP]     	// [1:5973]  
LBE50:
	.endp	
	     .stabn 192,0,0,LBB50-_Questions_init
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE50-_Questions_init
LME55:
	     .stabf LME55-_Questions_init
.code
	     .stabs "NewgameInit:F18",36,0,0,_NewgameInit

	// Program Unit: NewgameInit
.public	_NewgameInit
_NewgameInit: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//5984  		
//5985  }
//5986  
//5987  void NewgameInit()
//5988  {

LM601:
	     .stabn 68,0,5988,LM601-_NewgameInit
BB1_PU55:	// 0x101f
// BB:1 cycle count: 13
	     push BP to [SP]          	// [0:5988]  
	     SP = SP - 1              	// [2:5988]  
	     BP = SP + 1              	// [3:5988]  
LBB51:
//5989  	  unsigned int i;
//5990  	  
//5991  
//5992  	    Player_Activing_Bit =0;

LM602:
	     .stabn 68,0,5992,LM602-_NewgameInit
	     R3 = 0                   	// [5:5992]  
	     DS = seg(_Player_Activing_Bit)	// [6:5992]  Player_Activing_Bit
	     R4 = (_Player_Activing_Bit)	// [7:5992]  Player_Activing_Bit
	     DS:[R4] = R3             	// [9:5992]  
//5993    
//5994  
//5995        for(i=0;i<6;i++)

LM603:
	     .stabn 68,0,5995,LM603-_NewgameInit
	     R4 = 0                   	// [11:5995]  
	     [BP + 0] = R4            	// [12:5995]  i
L_55_2:	// 0x102a
// BB:2 cycle count: 7
	     R4 = [BP + 0]            	// [0:5995]  i
	     cmp R4, 5                	// [2:5995]  
	     ja L_55_3                	// [3:5995]  
BB3_PU55:	// 0x102d
// BB:3 cycle count: 12
//5996  		  Question_Quality_Last[i] =0;

LM604:
	     .stabn 68,0,5996,LM604-_NewgameInit
	     R4 = [BP + 0]            	// [0:5996]  i
	     R3 = 0                   	// [2:5996]  
	     R1 = (_Question_Quality_Last)	// [3:5996]  Question_Quality_Last
	     R2 = seg(_Question_Quality_Last)	// [5:5996]  Question_Quality_Last
	     R4 = R4 + R1             	// [6:5996]  
	     R3 = R3 + R2, Carry      	// [7:5996]  
	     DS = R3                  	// [8:5996]  
	     R3 = 0                   	// [9:5996]  
	     DS:[R4] = R3             	// [10:5996]  
Lt_55_1:	// 0x1037
// BB:4 cycle count: 8

LM605:
	     .stabn 68,0,5995,LM605-_NewgameInit
	     R4 = [BP + 0]            	// [0:5995]  i
	     R4 = R4 + 1              	// [2:5995]  
	     [BP + 0] = R4            	// [3:5995]  i
	     jmp L_55_2               	// [4:5995]  
L_55_3:	// 0x103b
// BB:5 cycle count: 3
//5997  	
//5998            Questions_init();

LM606:
	     .stabn 68,0,5998,LM606-_NewgameInit
	     call _Questions_init     	// [0:5998]  Questions_init
BB6_PU55:	// 0x103d
// BB:6 cycle count: 6
	     SP = SP + 1              	// [0:5998]  
	     pop BP, PC from [SP]     	// [1:5998]  
LBE51:
	.endp	
	     .stabn 192,0,0,LBB51-_NewgameInit
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE51-_NewgameInit
LME56:
	     .stabf LME56-_NewgameInit
.code
	     .stabs "Ram_OnInit:F18",36,0,0,_Ram_OnInit

	// Program Unit: Ram_OnInit
.public	_Ram_OnInit
_Ram_OnInit: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//6002  	
//6003  }
//6004  
//6005  void Ram_OnInit()
//6006  {

LM607:
	     .stabn 68,0,6006,LM607-_Ram_OnInit
BB1_PU56:	// 0x103f
// BB:1 cycle count: 39
	     push BP to [SP]          	// [0:6006]  
	     SP = SP - 1              	// [2:6006]  
	     BP = SP + 1              	// [3:6006]  
LBB52:
//6007  	   unsigned int i =0;

LM608:
	     .stabn 68,0,6007,LM608-_Ram_OnInit
	     R4 = 0                   	// [5:6007]  
	     [BP + 0] = R4            	// [6:6007]  i
//6008  		Restart =0;

LM609:
	     .stabn 68,0,6008,LM609-_Ram_OnInit
	     R3 = 0                   	// [7:6008]  
	     DS = seg(_Restart)       	// [8:6008]  Restart
	     R4 = (_Restart)          	// [9:6008]  Restart
	     DS:[R4] = R3             	// [11:6008]  
//6009  		T1=0;

LM610:
	     .stabn 68,0,6009,LM610-_Ram_OnInit
	     R3 = 0                   	// [13:6009]  
	     DS = seg(_T1)            	// [14:6009]  T1
	     R4 = (_T1)               	// [15:6009]  T1
	     DS:[R4] = R3             	// [17:6009]  
//6010  		T2=0;

LM611:
	     .stabn 68,0,6010,LM611-_Ram_OnInit
	     R3 = 0                   	// [19:6010]  
	     DS = seg(_T2)            	// [20:6010]  T2
	     R4 = (_T2)               	// [21:6010]  T2
	     DS:[R4] = R3             	// [23:6010]  
//6011  	    Last2Cat[0] =0;

LM612:
	     .stabn 68,0,6011,LM612-_Ram_OnInit
	     R3 = 0                   	// [25:6011]  
	     DS = seg(_Last2Cat)      	// [26:6011]  Last2Cat
	     R4 = (_Last2Cat)         	// [27:6011]  Last2Cat
	     DS:[R4] = R3             	// [29:6011]  
//6012  	    Last2Cat[1] =0;

LM613:
	     .stabn 68,0,6012,LM613-_Ram_OnInit
	     R3 = 0                   	// [31:6012]  
	     DS = seg(_Last2Cat+1)    	// [32:6012]  Last2Cat+1
	     R4 = (_Last2Cat+1)       	// [33:6012]  Last2Cat+1
	     DS:[R4] = R3             	// [35:6012]  
//6013  	    
//6014  	      i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM614:
	     .stabn 68,0,6014,LM614-_Ram_OnInit
	     R4 = 0                   	// [37:6014]  
	     [BP + 0] = R4            	// [38:6014]  i
L_56_1:	// 0x1060
// BB:2 cycle count: 8
//6015  		while(i<C_RoundNum)

LM615:
	     .stabn 68,0,6015,LM615-_Ram_OnInit
	     R4 = [BP + 0]            	// [0:6015]  i
	     cmp R4, 99               	// [2:6015]  
	     ja L_56_2                	// [4:6015]  
BB3_PU56:	// 0x1064
// BB:3 cycle count: 20
//6016  		{
//6017  			LastCategory_Series[i] = 0;

LM616:
	     .stabn 68,0,6017,LM616-_Ram_OnInit
	     R4 = [BP + 0]            	// [0:6017]  i
	     R3 = 0                   	// [2:6017]  
	     R1 = (_LastCategory_Series)	// [3:6017]  LastCategory_Series
	     R2 = seg(_LastCategory_Series)	// [5:6017]  LastCategory_Series
	     R4 = R4 + R1             	// [6:6017]  
	     R3 = R3 + R2, Carry      	// [7:6017]  
	     DS = R3                  	// [8:6017]  
	     R3 = 0                   	// [9:6017]  
	     DS:[R4] = R3             	// [10:6017]  
//6018  			i++;	

LM617:
	     .stabn 68,0,6018,LM617-_Ram_OnInit
	     R4 = [BP + 0]            	// [12:6018]  i
	     R4 = R4 + 1              	// [14:6018]  
	     [BP + 0] = R4            	// [15:6018]  i
	     jmp L_56_1               	// [16:6018]  
L_56_2:	// 0x1072
// BB:4 cycle count: 6
	     SP = SP + 1              	// [0:6018]  
	     pop BP, PC from [SP]     	// [1:6018]  
LBE52:
	.endp	
	     .stabn 192,0,0,LBB52-_Ram_OnInit
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE52-_Ram_OnInit
LME57:
	     .stabf LME57-_Ram_OnInit
.code
	     .stabs "Reset_Memory:F18",36,0,0,_Reset_Memory

	// Program Unit: Reset_Memory
.public	_Reset_Memory
_Reset_Memory: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//6023  	
//6024  }
//6025  
//6026  void Reset_Memory()
//6027  {

LM618:
	     .stabn 68,0,6027,LM618-_Reset_Memory
BB1_PU57:	// 0x1074
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:6027]  
	     SP = SP - 1              	// [2:6027]  
	     BP = SP + 1              	// [3:6027]  
LBB53:
//6028  	  unsigned int i=0;

LM619:
	     .stabn 68,0,6028,LM619-_Reset_Memory
	     R4 = 0                   	// [5:6028]  
	     [BP + 0] = R4            	// [6:6028]  i
L_57_1:	// 0x107a
// BB:2 cycle count: 8
//6029  
//6030  		while(i<C_RoundNum)

LM620:
	     .stabn 68,0,6030,LM620-_Reset_Memory
	     R4 = [BP + 0]            	// [0:6030]  i
	     cmp R4, 99               	// [2:6030]  
	     ja L_57_2                	// [4:6030]  
BB3_PU57:	// 0x107e
// BB:3 cycle count: 20
//6031  		{
//6032  			LastCategory_Series[i] = 0;

LM621:
	     .stabn 68,0,6032,LM621-_Reset_Memory
	     R4 = [BP + 0]            	// [0:6032]  i
	     R3 = 0                   	// [2:6032]  
	     R1 = (_LastCategory_Series)	// [3:6032]  LastCategory_Series
	     R2 = seg(_LastCategory_Series)	// [5:6032]  LastCategory_Series
	     R4 = R4 + R1             	// [6:6032]  
	     R3 = R3 + R2, Carry      	// [7:6032]  
	     DS = R3                  	// [8:6032]  
	     R3 = 0                   	// [9:6032]  
	     DS:[R4] = R3             	// [10:6032]  
//6033  			i++;	

LM622:
	     .stabn 68,0,6033,LM622-_Reset_Memory
	     R4 = [BP + 0]            	// [12:6033]  i
	     R4 = R4 + 1              	// [14:6033]  
	     [BP + 0] = R4            	// [15:6033]  i
	     jmp L_57_1               	// [16:6033]  
L_57_2:	// 0x108c
// BB:4 cycle count: 6
	     SP = SP + 1              	// [0:6033]  
	     pop BP, PC from [SP]     	// [1:6033]  
LBE53:
	.endp	
	     .stabn 192,0,0,LBB53-_Reset_Memory
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE53-_Reset_Memory
LME58:
	     .stabf LME58-_Reset_Memory
.code
	     .stabs "SetPingame:F18",36,0,0,_SetPingame

	// Program Unit: SetPingame
.public	_SetPingame
_SetPingame: .proc	
	     .stabn 0xa6,0,0,4
	// i = 0
	// __save_expr_temp_12 = 1
	// old_frame_pointer = 4
	// return_address = 5
	// lra_spill_temp_30 = 2
	// lra_spill_temp_31 = 3
//6039  
//6040  /////////////////////////////////////////////////////////////////
//6041  /////////////////////////////////////////////////////////////////////
//6042  void SetPingame()
//6043  {

LM623:
	     .stabn 68,0,6043,LM623-_SetPingame
BB1_PU58:	// 0x108e
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:6043]  
	     SP = SP - 4              	// [2:6043]  
	     BP = SP + 1              	// [3:6043]  
LBB54:
//6044  	      unsigned int  i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM624:
	     .stabn 68,0,6044,LM624-_SetPingame
	     R4 = 0                   	// [5:6044]  
	     [BP + 0] = R4            	// [6:6044]  i
L_58_1:	// 0x1094
// BB:2 cycle count: 12
//6045  		while(i<Registerd_Num)

LM625:
	     .stabn 68,0,6045,LM625-_SetPingame
	     R3 = [BP + 0]            	// [0:6045]  i
	     DS = seg(_Registerd_Num) 	// [2:6045]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [3:6045]  Registerd_Num
	     R4 = DS:[R4]             	// [5:6045]  
	     cmp R3, R4               	// [7:6045]  
	     jae L_58_2               	// [8:6045]  
BB3_PU58:	// 0x109b
// BB:3 cycle count: 74
//6046  		{
//6047  			//Pingame[i] = i+1;
//6048  			Pingame[i/16]|=BitMap[i%16];

LM626:
	     .stabn 68,0,6048,LM626-_SetPingame
	     R4 = [BP + 0]            	// [0:6048]  i
	     R4 = R4 lsr 4            	// [2:6048]  
	     [BP + 1] = R4            	// [3:6048]  __save_expr_temp_12
	     R4 = [BP + 1]            	// [4:6048]  __save_expr_temp_12
	     R3 = 0                   	// [6:6048]  
	     R1 = (_Pingame)          	// [7:6048]  Pingame
	     R2 = seg(_Pingame)       	// [9:6048]  Pingame
	     R4 = R4 + R1             	// [10:6048]  
	     R3 = R3 + R2, Carry      	// [11:6048]  
	     DS = R3                  	// [12:6048]  
	     R4 = DS:[R4]             	// [13:6048]  
	     [BP + 2] = R4            	// [15:6048]  lra_spill_temp_30
	     R4 = [BP + 0]            	// [16:6048]  i
	     R4 = R4 & 15             	// [18:6048]  
	     R3 = 0                   	// [19:6048]  
	     R1 = (_BitMap)           	// [20:6048]  BitMap
	     R2 = seg(_BitMap)        	// [22:6048]  BitMap
	     R4 = R4 + R1             	// [23:6048]  
	     R3 = R3 + R2, Carry      	// [24:6048]  
	     DS = R3                  	// [25:6048]  
	     R3 = DS:[R4]             	// [26:6048]  
	     R4 = [BP + 2]            	// [28:6048]  lra_spill_temp_30
	     R4 = R4 | R3             	// [30:6048]  
	     [BP + 3] = R4            	// [31:6048]  lra_spill_temp_31
	     R4 = [BP + 1]            	// [32:6048]  __save_expr_temp_12
	     R3 = 0                   	// [34:6048]  
	     R1 = (_Pingame)          	// [35:6048]  Pingame
	     R2 = seg(_Pingame)       	// [37:6048]  Pingame
	     R4 = R4 + R1             	// [38:6048]  
	     R3 = R3 + R2, Carry      	// [39:6048]  
	     DS = R3                  	// [40:6048]  
	     R3 = [BP + 3]            	// [41:6048]  lra_spill_temp_31
	     DS:[R4] = R3             	// [43:6048]  
//6049  			Registered_Play_Status|=BitMap[i%16];	

LM627:
	     .stabn 68,0,6049,LM627-_SetPingame
	     R4 = [BP + 0]            	// [45:6049]  i
	     R4 = R4 & 15             	// [47:6049]  
	     R3 = 0                   	// [48:6049]  
	     R1 = (_BitMap)           	// [49:6049]  BitMap
	     R2 = seg(_BitMap)        	// [51:6049]  BitMap
	     R4 = R4 + R1             	// [52:6049]  
	     R3 = R3 + R2, Carry      	// [53:6049]  
	     DS = R3                  	// [54:6049]  
	     R4 = DS:[R4]             	// [55:6049]  
	     DS = seg(_Registered_Play_Status)	// [57:6049]  Registered_Play_Status
	     R3 = (_Registered_Play_Status)	// [58:6049]  Registered_Play_Status
	     R4 = R4 | DS:[R3]        	// [60:6049]  
	     DS = seg(_Registered_Play_Status)	// [62:6049]  Registered_Play_Status
	     R3 = (_Registered_Play_Status)	// [63:6049]  Registered_Play_Status
	     DS:[R3] = R4             	// [65:6049]  
//6050  			i++;	

LM628:
	     .stabn 68,0,6050,LM628-_SetPingame
	     R4 = [BP + 0]            	// [67:6050]  i
	     R4 = R4 + 1              	// [69:6050]  
	     [BP + 0] = R4            	// [70:6050]  i
	     goto L_58_1              	// [71:6050]  
L_58_2:	// 0x10d6
// BB:4 cycle count: 6
	     SP = SP + 4              	// [0:6050]  
	     pop BP, PC from [SP]     	// [1:6050]  
LBE54:
	.endp	
	     .stabn 192,0,0,LBB54-_SetPingame
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE54-_SetPingame
LME59:
	     .stabf LME59-_SetPingame
.code
	     .stabs "Step1:F4",36,0,0,_Step1

	// Program Unit: Step1
.public	_Step1
_Step1: .proc	
	     .stabn 0xa6,0,0,3
	// i = 1
	// temp = 2
	// timeovercnt = 0
	// old_frame_pointer = 3
	// return_address = 4
//6054  	
//6055  }
//6056  
//6057  unsigned  Step1()
//6058  {	

LM629:
	     .stabn 68,0,6058,LM629-_Step1
BB1_PU59:	// 0x10d8
// BB:1 cycle count: 214
	     push BP to [SP]          	// [0:6058]  
	     SP = SP - 3              	// [2:6058]  
	     BP = SP + 1              	// [3:6058]  
LBB55:
//6059  	unsigned int i;
//6060  	unsigned int temp;
//6061  	unsigned int timeovercnt =0;

LM630:
	     .stabn 68,0,6061,LM630-_Step1
	     R4 = 0                   	// [5:6061]  
	     [BP + 0] = R4            	// [6:6061]  timeovercnt
//6063  		
//6064  	
//6065     
//6066     
//6067      Cn =0;

LM631:
	     .stabn 68,0,6067,LM631-_Step1
	     R3 = 0                   	// [7:6067]  
	     DS = seg(_Cn)            	// [8:6067]  Cn
	     R4 = (_Cn)               	// [9:6067]  Cn
	     DS:[R4] = R3             	// [11:6067]  
//6068      Registerd_Num =0;

LM632:
	     .stabn 68,0,6068,LM632-_Step1
	     R3 = 0                   	// [13:6068]  
	     DS = seg(_Registerd_Num) 	// [14:6068]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [15:6068]  Registerd_Num
	     DS:[R4] = R3             	// [17:6068]  
//6069      Player_Activing_Bit =0;//CurrentP

LM633:
	     .stabn 68,0,6069,LM633-_Step1
	     R3 = 0                   	// [19:6069]  
	     DS = seg(_Player_Activing_Bit)	// [20:6069]  Player_Activing_Bit
	     R4 = (_Player_Activing_Bit)	// [21:6069]  Player_Activing_Bit
	     DS:[R4] = R3             	// [23:6069]  
//6070      Player_Activing_Cnt =0;

LM634:
	     .stabn 68,0,6070,LM634-_Step1
	     R3 = 0                   	// [25:6070]  
	     DS = seg(_Player_Activing_Cnt)	// [26:6070]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [27:6070]  Player_Activing_Cnt
	     DS:[R4] = R3             	// [29:6070]  
//6071  //    Currentsound =0;
//6072      CurrentRound  =1;

LM635:
	     .stabn 68,0,6072,LM635-_Step1
	     R3 = 1                   	// [31:6072]  
	     DS = seg(_CurrentRound)  	// [32:6072]  CurrentRound
	     R4 = (_CurrentRound)     	// [33:6072]  CurrentRound
	     DS:[R4] = R3             	// [35:6072]  
//6073  
//6074      Tie =0;

LM636:
	     .stabn 68,0,6074,LM636-_Step1
	     R3 = 0                   	// [37:6074]  
	     DS = seg(_Tie)           	// [38:6074]  Tie
	     R4 = (_Tie)              	// [39:6074]  Tie
	     DS:[R4] = R3             	// [41:6074]  
//6075      
//6076      gQuestionIdx = 0xffff;

LM637:
	     .stabn 68,0,6076,LM637-_Step1
	     R3 = - 1                 	// [43:6076]  
	     DS = seg(_gQuestionIdx)  	// [44:6076]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [45:6076]  gQuestionIdx
	     DS:[R4] = R3             	// [47:6076]  
//6077      gQuestionIdx_1 = 0xffff;//TwoSounds的第一道	

LM638:
	     .stabn 68,0,6077,LM638-_Step1
	     R3 = - 1                 	// [49:6077]  
	     DS = seg(_gQuestionIdx_1)	// [50:6077]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [51:6077]  gQuestionIdx_1
	     DS:[R4] = R3             	// [53:6077]  
//6085      PassFlag =0;
//6086   #endif	
//6087  	
//6088  
//6089      Dis_Player=0;

LM639:
	     .stabn 68,0,6089,LM639-_Step1
	     R3 = 0                   	// [55:6089]  
	     DS = seg(_Dis_Player)    	// [56:6089]  Dis_Player
	     R4 = (_Dis_Player)       	// [57:6089]  Dis_Player
	     DS:[R4] = R3             	// [59:6089]  
//6090  
//6091     
//6092  //    OffSide_Askflag =0;
//6093  	firstFlag_23b =0;

LM640:
	     .stabn 68,0,6093,LM640-_Step1
	     R3 = 0                   	// [61:6093]  
	     DS = seg(_firstFlag_23b) 	// [62:6093]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [63:6093]  firstFlag_23b
	     DS:[R4] = R3             	// [65:6093]  
//6094  //	OFFsideFlag =0;
//6095  //	HattickOrOffside_Flag =0;
//6096  	FreeKick_Flag = 0;

LM641:
	     .stabn 68,0,6096,LM641-_Step1
	     R3 = 0                   	// [67:6096]  
	     DS = seg(_FreeKick_Flag) 	// [68:6096]  FreeKick_Flag
	     R4 = (_FreeKick_Flag)    	// [69:6096]  FreeKick_Flag
	     DS:[R4] = R3             	// [71:6096]  
//6097  	
//6098  //	QnAfter_Event5=0;
//6099  	Speed_BonusFlag =0;

LM642:
	     .stabn 68,0,6099,LM642-_Step1
	     R3 = 0                   	// [73:6099]  
	     DS = seg(_Speed_BonusFlag)	// [74:6099]  Speed_BonusFlag
	     R4 = (_Speed_BonusFlag)  	// [75:6099]  Speed_BonusFlag
	     DS:[R4] = R3             	// [77:6099]  
//6100      Key_TrueFlase_Buffer =0;

LM643:
	     .stabn 68,0,6100,LM643-_Step1
	     R3 = 0                   	// [79:6100]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [80:6100]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [81:6100]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [83:6100]  
//6101  	
//6102  	Soloflag =0;

LM644:
	     .stabn 68,0,6102,LM644-_Step1
	     R3 = 0                   	// [85:6102]  
	     DS = seg(_Soloflag)      	// [86:6102]  Soloflag
	     R4 = (_Soloflag)         	// [87:6102]  Soloflag
	     DS:[R4] = R3             	// [89:6102]  
//6103  
//6104  	Countdownflag =0;

LM645:
	     .stabn 68,0,6104,LM645-_Step1
	     R3 = 0                   	// [91:6104]  
	     DS = seg(_Countdownflag) 	// [92:6104]  Countdownflag
	     R4 = (_Countdownflag)    	// [93:6104]  Countdownflag
	     DS:[R4] = R3             	// [95:6104]  
//6105  //	RandFof_Flag =0;
//6106  	LED_Cnt =0;	

LM646:
	     .stabn 68,0,6106,LM646-_Step1
	     R3 = 0                   	// [97:6106]  
	     DS = seg(_LED_Cnt)       	// [98:6106]  LED_Cnt
	     R4 = (_LED_Cnt)          	// [99:6106]  LED_Cnt
	     DS:[R4] = R3             	// [101:6106]  
//6107  	Tieflag =0;	

LM647:
	     .stabn 68,0,6107,LM647-_Step1
	     R3 = 0                   	// [103:6107]  
	     DS = seg(_Tieflag)       	// [104:6107]  Tieflag
	     R4 = (_Tieflag)          	// [105:6107]  Tieflag
	     DS:[R4] = R3             	// [107:6107]  
//6111  //    Event_ThisGame =0;
//6112  //	Event_cnt =0;  
//6113  	
//6114  //	Registered_Actived_status =0;//ALL_Play_Registed_Init;
//6115  	Registered_Play_Status =0;

LM648:
	     .stabn 68,0,6115,LM648-_Step1
	     R3 = 0                   	// [109:6115]  
	     DS = seg(_Registered_Play_Status)	// [110:6115]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [111:6115]  Registered_Play_Status
	     DS:[R4] = R3             	// [113:6115]  
//6116  	Question_Answer =0;

LM649:
	     .stabn 68,0,6116,LM649-_Step1
	     R3 = 0                   	// [115:6116]  
	     DS = seg(_Question_Answer)	// [116:6116]  Question_Answer
	     R4 = (_Question_Answer)  	// [117:6116]  Question_Answer
	     DS:[R4] = R3             	// [119:6116]  
//6117  	L14flag =0;

LM650:
	     .stabn 68,0,6117,LM650-_Step1
	     R3 = 0                   	// [121:6117]  
	     DS = seg(_L14flag)       	// [122:6117]  L14flag
	     R4 = (_L14flag)          	// [123:6117]  L14flag
	     DS:[R4] = R3             	// [125:6117]  
//6118  
//6119  	TwoKeyflag =0;

LM651:
	     .stabn 68,0,6119,LM651-_Step1
	     R3 = 0                   	// [127:6119]  
	     DS = seg(_TwoKeyflag)    	// [128:6119]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [129:6119]  TwoKeyflag
	     DS:[R4] = R3             	// [131:6119]  
//6120  	Eventflag =0;

LM652:
	     .stabn 68,0,6120,LM652-_Step1
	     R3 = 0                   	// [133:6120]  
	     DS = seg(_Eventflag)     	// [134:6120]  Eventflag
	     R4 = (_Eventflag)        	// [135:6120]  Eventflag
	     DS:[R4] = R3             	// [137:6120]  
//6121  
//6122  	Sleepflag =0;

LM653:
	     .stabn 68,0,6122,LM653-_Step1
	     R3 = 0                   	// [139:6122]  
	     DS = seg(_Sleepflag)     	// [140:6122]  Sleepflag
	     R4 = (_Sleepflag)        	// [141:6122]  Sleepflag
	     DS:[R4] = R3             	// [143:6122]  
//6124  	//Cycle_Timeout_cnt=1;  //在选定Players后再设
//6125  //	Silent_updatedFlag =0;
//6126  	
//6127  
//6128  	Leader_Player =0;

LM654:
	     .stabn 68,0,6128,LM654-_Step1
	     R3 = 0                   	// [145:6128]  
	     DS = seg(_Leader_Player) 	// [146:6128]  Leader_Player
	     R4 = (_Leader_Player)    	// [147:6128]  Leader_Player
	     DS:[R4] = R3             	// [149:6128]  
//6129  	Lowest_Player =0;

LM655:
	     .stabn 68,0,6129,LM655-_Step1
	     R3 = 0                   	// [151:6129]  
	     DS = seg(_Lowest_Player) 	// [152:6129]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [153:6129]  Lowest_Player
	     DS:[R4] = R3             	// [155:6129]  
//6131  //	AnswerDuringQue =0;
//6132  //	Qn = 0;
//6133  
//6134  //	Length_LQGame =0;
//6135  	Round =0;

LM656:
	     .stabn 68,0,6135,LM656-_Step1
	     R3 = 0                   	// [157:6135]  
	     DS = seg(_Round)         	// [158:6135]  Round
	     R4 = (_Round)            	// [159:6135]  Round
	     DS:[R4] = R3             	// [161:6135]  
//6136  	
//6137      Key_Event =0;

LM657:
	     .stabn 68,0,6137,LM657-_Step1
	     R3 = 0                   	// [163:6137]  
	     DS = seg(_Key_Event)     	// [164:6137]  Key_Event
	     R4 = (_Key_Event)        	// [165:6137]  Key_Event
	     DS:[R4] = R3             	// [167:6137]  
//6148  
//6149  	
//6150     //for(i=0;i<4;i++)
//6151     	{
//6152        Cur_Active_Player = 0;

LM658:
	     .stabn 68,0,6152,LM658-_Step1
	     R3 = 0                   	// [169:6152]  
	     DS = seg(_Cur_Active_Player)	// [170:6152]  Cur_Active_Player
	     R4 = (_Cur_Active_Player)	// [171:6152]  Cur_Active_Player
	     DS:[R4] = R3             	// [173:6152]  
//6153     	}
//6154  
//6155  	QuestionCycle[0]=0;

LM659:
	     .stabn 68,0,6155,LM659-_Step1
	     R3 = 0                   	// [175:6155]  
	     DS = seg(_QuestionCycle) 	// [176:6155]  QuestionCycle
	     R4 = (_QuestionCycle)    	// [177:6155]  QuestionCycle
	     DS:[R4] = R3             	// [179:6155]  
//6156  	QuestionCycle[1]=0;

LM660:
	     .stabn 68,0,6156,LM660-_Step1
	     R3 = 0                   	// [181:6156]  
	     DS = seg(_QuestionCycle+1)	// [182:6156]  QuestionCycle+1
	     R4 = (_QuestionCycle+1)  	// [183:6156]  QuestionCycle+1
	     DS:[R4] = R3             	// [185:6156]  
//6157  	QuestionCycle[2]=0;

LM661:
	     .stabn 68,0,6157,LM661-_Step1
	     R3 = 0                   	// [187:6157]  
	     DS = seg(_QuestionCycle+2)	// [188:6157]  QuestionCycle+2
	     R4 = (_QuestionCycle+2)  	// [189:6157]  QuestionCycle+2
	     DS:[R4] = R3             	// [191:6157]  
//6158  	QuestionCycle[3]=0;

LM662:
	     .stabn 68,0,6158,LM662-_Step1
	     R3 = 0                   	// [193:6158]  
	     DS = seg(_QuestionCycle+3)	// [194:6158]  QuestionCycle+3
	     R4 = (_QuestionCycle+3)  	// [195:6158]  QuestionCycle+3
	     DS:[R4] = R3             	// [197:6158]  
//6159  
//6160  
//6161      CheaterFlag =0;

LM663:
	     .stabn 68,0,6161,LM663-_Step1
	     R3 = 0                   	// [199:6161]  
	     DS = seg(_CheaterFlag)   	// [200:6161]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [201:6161]  CheaterFlag
	     DS:[R4] = R3             	// [203:6161]  
//6162  	Player_Activing_Bit =0;

LM664:
	     .stabn 68,0,6162,LM664-_Step1
	     R3 = 0                   	// [205:6162]  
	     DS = seg(_Player_Activing_Bit)	// [206:6162]  Player_Activing_Bit
	     R4 = (_Player_Activing_Bit)	// [207:6162]  Player_Activing_Bit
	     DS:[R4] = R3             	// [209:6162]  
//6163    
//6164     
//6165          Questions_init();	

LM665:
	     .stabn 68,0,6165,LM665-_Step1
	     call _Questions_init     	// [211:6165]  Questions_init
BB2_PU59:	// 0x118a
// BB:2 cycle count: 3
//6166  		Reset_Memory();	

LM666:
	     .stabn 68,0,6166,LM666-_Step1
	     call _Reset_Memory       	// [0:6166]  Reset_Memory
BB3_PU59:	// 0x118c
// BB:3 cycle count: 2
//6167        
//6168  		 i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM667:
	     .stabn 68,0,6168,LM667-_Step1
	     R4 = 0                   	// [0:6168]  
	     [BP + 1] = R4            	// [1:6168]  i
L_59_72:	// 0x118e
// BB:4 cycle count: 7
//6169  		while(i<C_Player_Num)

LM668:
	     .stabn 68,0,6169,LM668-_Step1
	     R4 = [BP + 1]            	// [0:6169]  i
	     cmp R4, 9                	// [2:6169]  
	     ja L_59_73               	// [3:6169]  
BB5_PU59:	// 0x1191
// BB:5 cycle count: 32
//6170  		{
//6171  			Player_Point[i] = 0;

LM669:
	     .stabn 68,0,6171,LM669-_Step1
	     R4 = [BP + 1]            	// [0:6171]  i
	     R3 = 0                   	// [2:6171]  
	     R1 = (_Player_Point)     	// [3:6171]  Player_Point
	     R2 = seg(_Player_Point)  	// [5:6171]  Player_Point
	     R4 = R4 + R1             	// [6:6171]  
	     R3 = R3 + R2, Carry      	// [7:6171]  
	     DS = R3                  	// [8:6171]  
	     R3 = 0                   	// [9:6171]  
	     DS:[R4] = R3             	// [10:6171]  
//6172  			Rounds[i] =0;

LM670:
	     .stabn 68,0,6172,LM670-_Step1
	     R4 = [BP + 1]            	// [12:6172]  i
	     R3 = 0                   	// [14:6172]  
	     R1 = (_Rounds)           	// [15:6172]  Rounds
	     R2 = seg(_Rounds)        	// [17:6172]  Rounds
	     R4 = R4 + R1             	// [18:6172]  
	     R3 = R3 + R2, Carry      	// [19:6172]  
	     DS = R3                  	// [20:6172]  
	     R3 = 0                   	// [21:6172]  
	     DS:[R4] = R3             	// [22:6172]  
//6173  			i++;	

LM671:
	     .stabn 68,0,6173,LM671-_Step1
	     R4 = [BP + 1]            	// [24:6173]  i
	     R4 = R4 + 1              	// [26:6173]  
	     [BP + 1] = R4            	// [27:6173]  i
	     jmp L_59_72              	// [28:6173]  
L_59_73:	// 0x11a9
// BB:6 cycle count: 2
//6174  					
//6175  		}
//6176  		
//6177  	     i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM672:
	     .stabn 68,0,6177,LM672-_Step1
	     R4 = 0                   	// [0:6177]  
	     [BP + 1] = R4            	// [1:6177]  i
L_59_74:	// 0x11ab
// BB:7 cycle count: 7
//6178  		while(i<C_ElementsRAM)

LM673:
	     .stabn 68,0,6178,LM673-_Step1
	     R4 = [BP + 1]            	// [0:6178]  i
	     cmp R4, 1                	// [2:6178]  
	     ja L_59_75               	// [3:6178]  
BB8_PU59:	// 0x11ae
// BB:8 cycle count: 32
//6179  		{
//6180  			Pingame[i] = 0;

LM674:
	     .stabn 68,0,6180,LM674-_Step1
	     R4 = [BP + 1]            	// [0:6180]  i
	     R3 = 0                   	// [2:6180]  
	     R1 = (_Pingame)          	// [3:6180]  Pingame
	     R2 = seg(_Pingame)       	// [5:6180]  Pingame
	     R4 = R4 + R1             	// [6:6180]  
	     R3 = R3 + R2, Carry      	// [7:6180]  
	     DS = R3                  	// [8:6180]  
	     R3 = 0                   	// [9:6180]  
	     DS:[R4] = R3             	// [10:6180]  
//6181  			Pselected[i] =0;

LM675:
	     .stabn 68,0,6181,LM675-_Step1
	     R4 = [BP + 1]            	// [12:6181]  i
	     R3 = 0                   	// [14:6181]  
	     R1 = (_Pselected)        	// [15:6181]  Pselected
	     R2 = seg(_Pselected)     	// [17:6181]  Pselected
	     R4 = R4 + R1             	// [18:6181]  
	     R3 = R3 + R2, Carry      	// [19:6181]  
	     DS = R3                  	// [20:6181]  
	     R3 = 0                   	// [21:6181]  
	     DS:[R4] = R3             	// [22:6181]  
//6182  			i++;	

LM676:
	     .stabn 68,0,6182,LM676-_Step1
	     R4 = [BP + 1]            	// [24:6182]  i
	     R4 = R4 + 1              	// [26:6182]  
	     [BP + 1] = R4            	// [27:6182]  i
	     jmp L_59_74              	// [28:6182]  
L_59_75:	// 0x11c6
// BB:9 cycle count: 9
//6190  //    if(VOL1Flag==1)
//6191  //   	   Supress_Question_Switch();  
//6192     
//6193  
//6194          BlinkFlag_Data = 0;

LM677:
	     .stabn 68,0,6194,LM677-_Step1
	     R3 = 0                   	// [0:6194]  
	     DS = seg(_BlinkFlag_Data)	// [1:6194]  BlinkFlag_Data
	     R4 = (_BlinkFlag_Data)   	// [2:6194]  BlinkFlag_Data
	     DS:[R4] = R3             	// [4:6194]  
//6195          Light_all_off();

LM678:
	     .stabn 68,0,6195,LM678-_Step1
	     call _Light_all_off      	// [6:6195]  Light_all_off
BB10_PU59:	// 0x11cd
// BB:10 cycle count: 3
//6196  
//6197          WatchdogClear();     

LM679:
	     .stabn 68,0,6197,LM679-_Step1
	     call _WatchdogClear      	// [0:6197]  WatchdogClear
BB11_PU59:	// 0x11cf
// BB:11 cycle count: 34
//6198       
//6199  	    PlayScoresFlag =0;

LM680:
	     .stabn 68,0,6199,LM680-_Step1
	     R3 = 0                   	// [0:6199]  
	     DS = seg(_PlayScoresFlag)	// [1:6199]  PlayScoresFlag
	     R4 = (_PlayScoresFlag)   	// [2:6199]  PlayScoresFlag
	     DS:[R4] = R3             	// [4:6199]  
//6200  		
//6201  		TimeCnt = 1;

LM681:
	     .stabn 68,0,6201,LM681-_Step1
	     R3 = 1                   	// [6:6201]  
	     DS = seg(_TimeCnt)       	// [7:6201]  TimeCnt
	     R4 = (_TimeCnt)          	// [8:6201]  TimeCnt
	     DS:[R4] = R3             	// [10:6201]  
//6205  //		BlinkFlag_Data = All_Led_data;
//6206  //        FiveSec_En =1;
//6207  //        FiveSec_cnt =0;
//6208  
//6209       Key_activeflag =Playbutton;//ALL_Key_Enable&(~(Key_True|Key_False));

LM682:
	     .stabn 68,0,6209,LM682-_Step1
	     R3 = 1                   	// [12:6209]  
	     DS = seg(_Key_activeflag)	// [13:6209]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [14:6209]  Key_activeflag
	     DS:[R4] = R3             	// [16:6209]  
//6210  //     VolumeEnable =1;
//6211       Key_Event =0; 

LM683:
	     .stabn 68,0,6211,LM683-_Step1
	     R3 = 0                   	// [18:6211]  
	     DS = seg(_Key_Event)     	// [19:6211]  Key_Event
	     R4 = (_Key_Event)        	// [20:6211]  Key_Event
	     DS:[R4] = R3             	// [22:6211]  
//6212  
//6213        if(Restart ==0)

LM684:
	     .stabn 68,0,6213,LM684-_Step1
	     DS = seg(_Restart)       	// [24:6213]  Restart
	     R4 = (_Restart)          	// [25:6213]  Restart
	     R4 = DS:[R4]             	// [27:6213]  
	     cmp R4, 0                	// [29:6213]  
	     jne L_59_76              	// [30:6213]  
BB12_PU59:	// 0x11e9
// BB:12 cycle count: 18
//6214        {
//6215        	  LFX_Data_Cnt =0;

LM685:
	     .stabn 68,0,6215,LM685-_Step1
	     R3 = 0                   	// [0:6215]  
	     DS = seg(_LFX_Data_Cnt)  	// [1:6215]  LFX_Data_Cnt
	     R4 = (_LFX_Data_Cnt)     	// [2:6215]  LFX_Data_Cnt
	     DS:[R4] = R3             	// [4:6215]  
//6216  		  LED_Cnt =0;

LM686:
	     .stabn 68,0,6216,LM686-_Step1
	     R3 = 0                   	// [6:6216]  
	     DS = seg(_LED_Cnt)       	// [7:6216]  LED_Cnt
	     R4 = (_LED_Cnt)          	// [8:6216]  LED_Cnt
	     DS:[R4] = R3             	// [10:6216]  
//6217  	      LFXFlag_Data =0x01;

LM687:
	     .stabn 68,0,6217,LM687-_Step1
	     R3 = 1                   	// [12:6217]  
	     DS = seg(_LFXFlag_Data)  	// [13:6217]  LFXFlag_Data
	     R4 = (_LFXFlag_Data)     	// [14:6217]  LFXFlag_Data
	     DS:[R4] = R3             	// [16:6217]  
L_59_77:	// 0x11f8
// BB:13 cycle count: 16
//6218  	      do
//6219  	      {	
//6220  
//6221  	      	PauseFlag =0;

LM688:
	     .stabn 68,0,6221,LM688-_Step1
	     R3 = 0                   	// [0:6221]  
	     DS = seg(_PauseFlag)     	// [1:6221]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:6221]  PauseFlag
	     DS:[R4] = R3             	// [4:6221]  
//6222  		    PlayA1800_Elements(SFX_On);	//SFX_ON

LM689:
	     .stabn 68,0,6222,LM689-_Step1
	     SP = SP - 1              	// [6:6222]  
	     R3 = 125                 	// [7:6222]  
	     R4 = SP + 1              	// [9:6222]  
	     [R4] = R3                	// [11:6222]  
	     call _PlayA1800_Elements 	// [13:6222]  PlayA1800_Elements
BB14_PU59:	// 0x1205
// BB:14 cycle count: 16
	     SP = SP + 1              	// [0:6222]  
//6223  		    //delay_time(8*16);
//6224  			BlinkFlag_Data = 0;

LM690:
	     .stabn 68,0,6224,LM690-_Step1
	     R3 = 0                   	// [1:6224]  
	     DS = seg(_BlinkFlag_Data)	// [2:6224]  BlinkFlag_Data
	     R4 = (_BlinkFlag_Data)   	// [3:6224]  BlinkFlag_Data
	     DS:[R4] = R3             	// [5:6224]  
//6225  		    LFXFlag_Data=0;

LM691:
	     .stabn 68,0,6225,LM691-_Step1
	     R3 = 0                   	// [7:6225]  
	     DS = seg(_LFXFlag_Data)  	// [8:6225]  LFXFlag_Data
	     R4 = (_LFXFlag_Data)     	// [9:6225]  LFXFlag_Data
	     DS:[R4] = R3             	// [11:6225]  
//6226  	        Light_all_off();

LM692:
	     .stabn 68,0,6226,LM692-_Step1
	     call _Light_all_off      	// [13:6226]  Light_all_off
BB15_PU59:	// 0x1212
// BB:15 cycle count: 9
//6227  	//        FiveSec_En =0;
//6228  	        PlayA1800_Elements(A_VLMMREN_Hello);	//SFX_ON

LM693:
	     .stabn 68,0,6228,LM693-_Step1
	     SP = SP - 1              	// [0:6228]  
	     R3 = 33                  	// [1:6228]  
	     R4 = SP + 1              	// [2:6228]  
	     [R4] = R3                	// [4:6228]  
	     call _PlayA1800_Elements 	// [6:6228]  PlayA1800_Elements
BB16_PU59:	// 0x1219
// BB:16 cycle count: 8
//6229  	        delay_time(8);

LM694:
	     .stabn 68,0,6229,LM694-_Step1
	     R3 = 8                   	// [0:6229]  
	     R4 = SP + 1              	// [1:6229]  
	     [R4] = R3                	// [3:6229]  
	     call _delay_time         	// [5:6229]  delay_time
BB17_PU59:	// 0x121f
// BB:17 cycle count: 1
	     SP = SP + 1              	// [0:6229]  
Lt_59_1:	// 0x1220
// BB:18 cycle count: 10
//6230  	      	}while(PauseFlag);

LM695:
	     .stabn 68,0,6230,LM695-_Step1
	     DS = seg(_PauseFlag)     	// [0:6230]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6230]  PauseFlag
	     R4 = DS:[R4]             	// [3:6230]  
	     cmp R4, 0                	// [5:6230]  
	     jne L_59_77              	// [6:6230]  
L_59_76:	// 0x1226
// BB:19 cycle count: 28
//6231        }
//6232         VolumeEnable =0;

LM696:
	     .stabn 68,0,6232,LM696-_Step1
	     R3 = 0                   	// [0:6232]  
	     DS = seg(_VolumeEnable)  	// [1:6232]  VolumeEnable
	     R4 = (_VolumeEnable)     	// [2:6232]  VolumeEnable
	     DS:[R4] = R3             	// [4:6232]  
//6233       Key_activeflag =Only_Play_KeyEnable;//ALL_Key_Enable&(~(Key_True|Key_False));

LM697:
	     .stabn 68,0,6233,LM697-_Step1
	     R3 = 7                   	// [6:6233]  
	     DS = seg(_Key_activeflag)	// [7:6233]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6233]  Key_activeflag
	     DS:[R4] = R3             	// [10:6233]  
//6234       Key_Event =0;    

LM698:
	     .stabn 68,0,6234,LM698-_Step1
	     R3 = 0                   	// [12:6234]  
	     DS = seg(_Key_Event)     	// [13:6234]  Key_Event
	     R4 = (_Key_Event)        	// [14:6234]  Key_Event
	     DS:[R4] = R3             	// [16:6234]  
//6235        
//6236  	  PlayA1800_Elements(A_VLMMREN_SetUp_01);

LM699:
	     .stabn 68,0,6236,LM699-_Step1
	     SP = SP - 1              	// [18:6236]  
	     R3 = 70                  	// [19:6236]  
	     R4 = SP + 1              	// [21:6236]  
	     [R4] = R3                	// [23:6236]  
	     call _PlayA1800_Elements 	// [25:6236]  PlayA1800_Elements
BB20_PU59:	// 0x123d
// BB:20 cycle count: 9
//6237        PlayA1800_Elements(A_VLMMREN_SetUp_04);

LM700:
	     .stabn 68,0,6237,LM700-_Step1
	     R3 = 73                  	// [0:6237]  
	     R4 = SP + 1              	// [2:6237]  
	     [R4] = R3                	// [4:6237]  
	     call _PlayA1800_Elements 	// [6:6237]  PlayA1800_Elements
BB21_PU59:	// 0x1244
// BB:21 cycle count: 8
//6238        PlayA1800_Elements(A_VLMMREN_Button_01a);

LM701:
	     .stabn 68,0,6238,LM701-_Step1
	     R3 = 7                   	// [0:6238]  
	     R4 = SP + 1              	// [1:6238]  
	     [R4] = R3                	// [3:6238]  
	     call _PlayA1800_Elements 	// [5:6238]  PlayA1800_Elements
BB22_PU59:	// 0x124a
// BB:22 cycle count: 1
	     SP = SP + 1              	// [0:6238]  
L_59_78:	// 0x124b
// BB:23 cycle count: 10
//6239       while(1) 
//6240       {  
//6241  
//6242  	      if(Sleepflag)

LM702:
	     .stabn 68,0,6242,LM702-_Step1
	     DS = seg(_Sleepflag)     	// [0:6242]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:6242]  Sleepflag
	     R4 = DS:[R4]             	// [3:6242]  
	     cmp R4, 0                	// [5:6242]  
	     je L_59_80               	// [6:6242]  
BB24_PU59:	// 0x1251
// BB:24 cycle count: 7
//6243  		  	return 0;

LM703:
	     .stabn 68,0,6243,LM703-_Step1
	     R1 = 0                   	// [0:6243]  
	     SP = SP + 3              	// [1:6243]  
	     pop BP, PC from [SP]     	// [2:6243]  
L_59_80:	// 0x1254
// BB:25 cycle count: 10
//6244  
//6245  
//6246  	      temp = delay_time(20*16);

LM704:
	     .stabn 68,0,6246,LM704-_Step1
	     SP = SP - 1              	// [0:6246]  
	     R3 = 320                 	// [1:6246]  
	     R4 = SP + 1              	// [3:6246]  
	     [R4] = R3                	// [5:6246]  
	     call _delay_time         	// [7:6246]  delay_time
BB26_PU59:	// 0x125c
// BB:26 cycle count: 10
	     SP = SP + 1              	// [0:6246]  
	     [BP + 2] = R1            	// [1:6246]  temp
//6247  	      
//6248  	      if(temp == TimeOver)

LM705:
	     .stabn 68,0,6248,LM705-_Step1
	     R4 = [BP + 2]            	// [2:6248]  temp
	     cmp R4, 61452            	// [4:6248]  
	     jne L_59_82              	// [6:6248]  
BB27_PU59:	// 0x1262
// BB:27 cycle count: 11
//6249  	      {
//6250  	      	      timeovercnt++;

LM706:
	     .stabn 68,0,6250,LM706-_Step1
	     R4 = [BP + 0]            	// [0:6250]  timeovercnt
	     R4 = R4 + 1              	// [2:6250]  
	     [BP + 0] = R4            	// [3:6250]  timeovercnt
//6251  	      	  
//6252  	      	  
//6253  	      	
//6254  	      	      if(timeovercnt<9)

LM707:
	     .stabn 68,0,6254,LM707-_Step1
	     R4 = [BP + 0]            	// [4:6254]  timeovercnt
	     cmp R4, 8                	// [6:6254]  
	     ja L_59_84               	// [7:6254]  
BB28_PU59:	// 0x1268
// BB:28 cycle count: 10
//6255  	      	      {
//6256  			         PlayA1800_Elements(A_VLMMREN_SetUp_01);

LM708:
	     .stabn 68,0,6256,LM708-_Step1
	     SP = SP - 1              	// [0:6256]  
	     R3 = 70                  	// [1:6256]  
	     R4 = SP + 1              	// [3:6256]  
	     [R4] = R3                	// [5:6256]  
	     call _PlayA1800_Elements 	// [7:6256]  PlayA1800_Elements
BB29_PU59:	// 0x1270
// BB:29 cycle count: 9
//6257  			         PlayA1800_Elements(A_VLMMREN_SetUp_03);

LM709:
	     .stabn 68,0,6257,LM709-_Step1
	     R3 = 72                  	// [0:6257]  
	     R4 = SP + 1              	// [2:6257]  
	     [R4] = R3                	// [4:6257]  
	     call _PlayA1800_Elements 	// [6:6257]  PlayA1800_Elements
BB30_PU59:	// 0x1277
// BB:30 cycle count: 8
//6258  			         PlayA1800_Elements(A_VLMMREN_Button_01a);

LM710:
	     .stabn 68,0,6258,LM710-_Step1
	     R3 = 7                   	// [0:6258]  
	     R4 = SP + 1              	// [1:6258]  
	     [R4] = R3                	// [3:6258]  
	     call _PlayA1800_Elements 	// [5:6258]  PlayA1800_Elements
BB31_PU59:	// 0x127d
// BB:31 cycle count: 5
	     SP = SP + 1              	// [0:6258]  
	     jmp L_59_83              	// [1:6258]  
L_59_84:	// 0x127f
// BB:32 cycle count: 3
//6259  			      
//6260  	      	      }
//6261  	      	     else
//6262  	      	     {
//6263  	      	        GameTimeout();	

LM711:
	     .stabn 68,0,6263,LM711-_Step1
	     call _GameTimeout        	// [0:6263]  GameTimeout
BB33_PU59:	// 0x1281
// BB:33 cycle count: 2
//6264  	      	     	timeovercnt=0;

LM712:
	     .stabn 68,0,6264,LM712-_Step1
	     R4 = 0                   	// [0:6264]  
	     [BP + 0] = R4            	// [1:6264]  timeovercnt
L_59_83:	// 0x1283
// BB:34 cycle count: 4

LM713:
	     .stabn 68,0,6254,LM713-_Step1
	     jmp L_59_81              	// [0:6254]  
L_59_82:	// 0x1284
// BB:35 cycle count: 2
//6266  	      	       
//6267  	      	     }
//6268  	      }
//6269  	      else
//6270  	           timeovercnt =0;  

LM714:
	     .stabn 68,0,6270,LM714-_Step1
	     R4 = 0                   	// [0:6270]  
	     [BP + 0] = R4            	// [1:6270]  timeovercnt
L_59_81:	// 0x1286
// BB:36 cycle count: 10
//6271  	      
//6272  	      if((Key_Event==PB_button))

LM715:
	     .stabn 68,0,6272,LM715-_Step1
	     DS = seg(_Key_Event)     	// [0:6272]  Key_Event
	     R4 = (_Key_Event)        	// [1:6272]  Key_Event
	     R4 = DS:[R4]             	// [3:6272]  
	     cmp R4, 2                	// [5:6272]  
	     jne L_59_86              	// [6:6272]  
BB37_PU59:	// 0x128c
// BB:37 cycle count: 16
//6273  	      {  
//6274  	           Key_Event =0;  

LM716:
	     .stabn 68,0,6274,LM716-_Step1
	     R3 = 0                   	// [0:6274]  
	     DS = seg(_Key_Event)     	// [1:6274]  Key_Event
	     R4 = (_Key_Event)        	// [2:6274]  Key_Event
	     DS:[R4] = R3             	// [4:6274]  
//6275  	         if(Registerd_Num<10)

LM717:
	     .stabn 68,0,6275,LM717-_Step1
	     DS = seg(_Registerd_Num) 	// [6:6275]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [7:6275]  Registerd_Num
	     R4 = DS:[R4]             	// [9:6275]  
	     cmp R4, 9                	// [11:6275]  
	     ja L_59_88               	// [12:6275]  
BB38_PU59:	// 0x1297
// BB:38 cycle count: 30
//6276  	         {   
//6277  	      	  Registerd_Num++;

LM718:
	     .stabn 68,0,6277,LM718-_Step1
	     DS = seg(_Registerd_Num) 	// [0:6277]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6277]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6277]  
	     R4 = R4 + 1              	// [5:6277]  
	     DS = seg(_Registerd_Num) 	// [6:6277]  Registerd_Num
	     R3 = (_Registerd_Num)    	// [7:6277]  Registerd_Num
	     DS:[R3] = R4             	// [9:6277]  
//6278  			  //PlayA1800_Elements(SFX_Plus);
//6279  			   Play_Seq(Registerd_Num,C_NX);//PlayA1800_Other(Serie_N_NumPlayers);

LM719:
	     .stabn 68,0,6279,LM719-_Step1
	     SP = SP - 2              	// [11:6279]  
	     DS = seg(_Registerd_Num) 	// [12:6279]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [13:6279]  Registerd_Num
	     R3 = DS:[R4]             	// [15:6279]  
	     R4 = SP + 1              	// [17:6279]  
	     [R4] = R3                	// [19:6279]  
	     R3 = 80                  	// [21:6279]  
	     R4 = SP + 2              	// [23:6279]  
	     [R4] = R3                	// [25:6279]  
	     call _Play_Seq           	// [27:6279]  Play_Seq
BB39_PU59:	// 0x12af
// BB:39 cycle count: 5
	     SP = SP + 2              	// [0:6279]  
	     jmp L_59_87              	// [1:6279]  
L_59_88:	// 0x12b1
// BB:40 cycle count: 9
//6280  	         }
//6281  	        else 
//6282  	            PlayA1800_Elements(A_VLMMREN_10Max);

LM720:
	     .stabn 68,0,6282,LM720-_Step1
	     SP = SP - 1              	// [0:6282]  
	     R3 = 1                   	// [1:6282]  
	     R4 = SP + 1              	// [2:6282]  
	     [R4] = R3                	// [4:6282]  
	     call _PlayA1800_Elements 	// [6:6282]  PlayA1800_Elements
BB41_PU59:	// 0x12b8
// BB:41 cycle count: 1
	     SP = SP + 1              	// [0:6282]  
L_59_87:	// 0x12b9
// BB:42 cycle count: 3

LM721:
	     .stabn 68,0,6275,LM721-_Step1
	     goto L_59_85             	// [0:6275]  
L_59_86:	// 0x12bb
// BB:43 cycle count: 10
//6283  	      	
//6284  	      }
//6285        	  else if((Key_Event==MB_button))

LM722:
	     .stabn 68,0,6285,LM722-_Step1
	     DS = seg(_Key_Event)     	// [0:6285]  Key_Event
	     R4 = (_Key_Event)        	// [1:6285]  Key_Event
	     R4 = DS:[R4]             	// [3:6285]  
	     cmp R4, 4                	// [5:6285]  
	     jne L_59_90              	// [6:6285]  
BB44_PU59:	// 0x12c1
// BB:44 cycle count: 16
//6286  	      {  
//6287  	           Key_Event =0;

LM723:
	     .stabn 68,0,6287,LM723-_Step1
	     R3 = 0                   	// [0:6287]  
	     DS = seg(_Key_Event)     	// [1:6287]  Key_Event
	     R4 = (_Key_Event)        	// [2:6287]  Key_Event
	     DS:[R4] = R3             	// [4:6287]  
//6288  	         if(Registerd_Num>1)  

LM724:
	     .stabn 68,0,6288,LM724-_Step1
	     DS = seg(_Registerd_Num) 	// [6:6288]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [7:6288]  Registerd_Num
	     R4 = DS:[R4]             	// [9:6288]  
	     cmp R4, 1                	// [11:6288]  
	     jbe L_59_92              	// [12:6288]  
BB45_PU59:	// 0x12cc
// BB:45 cycle count: 30
//6289  	          {   
//6290  	      	   Registerd_Num--;

LM725:
	     .stabn 68,0,6290,LM725-_Step1
	     DS = seg(_Registerd_Num) 	// [0:6290]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6290]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6290]  
	     R4 = R4 - 1              	// [5:6290]  
	     DS = seg(_Registerd_Num) 	// [6:6290]  Registerd_Num
	     R3 = (_Registerd_Num)    	// [7:6290]  Registerd_Num
	     DS:[R3] = R4             	// [9:6290]  
//6291  			  // PlayA1800_Elements(SFX_Minus);
//6292  			   Play_Seq(Registerd_Num,C_NX);//PlayA1800_Other(Serie_N_NumPlayers);

LM726:
	     .stabn 68,0,6292,LM726-_Step1
	     SP = SP - 2              	// [11:6292]  
	     DS = seg(_Registerd_Num) 	// [12:6292]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [13:6292]  Registerd_Num
	     R3 = DS:[R4]             	// [15:6292]  
	     R4 = SP + 1              	// [17:6292]  
	     [R4] = R3                	// [19:6292]  
	     R3 = 80                  	// [21:6292]  
	     R4 = SP + 2              	// [23:6292]  
	     [R4] = R3                	// [25:6292]  
	     call _Play_Seq           	// [27:6292]  Play_Seq
BB46_PU59:	// 0x12e4
// BB:46 cycle count: 5
	     SP = SP + 2              	// [0:6292]  
	     jmp L_59_91              	// [1:6292]  
L_59_92:	// 0x12e6
// BB:47 cycle count: 9
//6293  	          }
//6294  	          else
//6295  	             PlayA1800_Elements(A_VLMMREN_1Min);

LM727:
	     .stabn 68,0,6295,LM727-_Step1
	     SP = SP - 1              	// [0:6295]  
	     R3 = 2                   	// [1:6295]  
	     R4 = SP + 1              	// [2:6295]  
	     [R4] = R3                	// [4:6295]  
	     call _PlayA1800_Elements 	// [6:6295]  PlayA1800_Elements
BB48_PU59:	// 0x12ed
// BB:48 cycle count: 1
	     SP = SP + 1              	// [0:6295]  
L_59_91:	// 0x12ee
// BB:49 cycle count: 4

LM728:
	     .stabn 68,0,6288,LM728-_Step1
	     jmp L_59_89              	// [0:6288]  
L_59_90:	// 0x12ef
// BB:50 cycle count: 10
//6296  	      	
//6297  	      }
//6298  		 else if((Key_Event==Playbutton))

LM729:
	     .stabn 68,0,6298,LM729-_Step1
	     DS = seg(_Key_Event)     	// [0:6298]  Key_Event
	     R4 = (_Key_Event)        	// [1:6298]  Key_Event
	     R4 = DS:[R4]             	// [3:6298]  
	     cmp R4, 1                	// [5:6298]  
	     jne L_59_93              	// [6:6298]  
BB51_PU59:	// 0x12f5
// BB:51 cycle count: 16
//6299  	      {  
//6300  	           Key_Event =0;  

LM730:
	     .stabn 68,0,6300,LM730-_Step1
	     R3 = 0                   	// [0:6300]  
	     DS = seg(_Key_Event)     	// [1:6300]  Key_Event
	     R4 = (_Key_Event)        	// [2:6300]  Key_Event
	     DS:[R4] = R3             	// [4:6300]  
//6301  	           
//6302  	         if(Registerd_Num>=1)   

LM731:
	     .stabn 68,0,6302,LM731-_Step1
	     DS = seg(_Registerd_Num) 	// [6:6302]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [7:6302]  Registerd_Num
	     R4 = DS:[R4]             	// [9:6302]  
	     cmp R4, 0                	// [11:6302]  
	     je L_59_94               	// [12:6302]  
BB52_PU59:	// 0x1300
// BB:52 cycle count: 4
//6303                 break;

LM732:
	     .stabn 68,0,6303,LM732-_Step1
	     jmp Lt_59_2              	// [0:6303]  
L_59_94:	// 0x1301
L_59_93:	// 0x1301
L_59_89:	// 0x1301
L_59_85:	// 0x1301
// BB:53 cycle count: 3

LM733:
	     .stabn 68,0,6272,LM733-_Step1
	     goto L_59_78             	// [0:6272]  
L_59_79:	// 0x1303
Lt_59_2:	// 0x1303
// BB:54 cycle count: 3
//6308  		  
//6309        
//6310       }
//6311        
//6312          SetPingame();

LM734:
	     .stabn 68,0,6312,LM734-_Step1
	     call _SetPingame         	// [0:6312]  SetPingame
BB55_PU59:	// 0x1305
// BB:55 cycle count: 10
//6313  		
//6314  		PlayA1800_Elements(SFX_Buzzer);

LM735:
	     .stabn 68,0,6314,LM735-_Step1
	     SP = SP - 1              	// [0:6314]  
	     R3 = 121                 	// [1:6314]  
	     R4 = SP + 1              	// [3:6314]  
	     [R4] = R3                	// [5:6314]  
	     call _PlayA1800_Elements 	// [7:6314]  PlayA1800_Elements
BB56_PU59:	// 0x130d
// BB:56 cycle count: 11
	     SP = SP + 1              	// [0:6314]  
//6317  		
//6318  		
//6319  		
//6320  
//6321    if(Registerd_Num>1)

LM736:
	     .stabn 68,0,6321,LM736-_Step1
	     DS = seg(_Registerd_Num) 	// [1:6321]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [2:6321]  Registerd_Num
	     R4 = DS:[R4]             	// [4:6321]  
	     cmp R4, 1                	// [6:6321]  
	     ja BB57_PU59             	// [7:6321]  
BB133_PU59:	// 0x1314
// BB:133 cycle count: 3
	     goto L_59_96             	// [0:0]  
BB57_PU59:	// 0x1316
// BB:57 cycle count: 20
//6327  //  	       NumRounds = 5;
//6328    	       
//6329    	       
//6330    	       
//6331    	       SinceLastE  =0;

LM737:
	     .stabn 68,0,6331,LM737-_Step1
	     R3 = 0                   	// [0:6331]  
	     DS = seg(_SinceLastE)    	// [1:6331]  SinceLastE
	     R4 = (_SinceLastE)       	// [2:6331]  SinceLastE
	     DS:[R4] = R3             	// [4:6331]  
//6332    	        R_2SLoop =0;

LM738:
	     .stabn 68,0,6332,LM738-_Step1
	     R3 = 0                   	// [6:6332]  
	     DS = seg(_R_2SLoop)      	// [7:6332]  R_2SLoop
	     R4 = (_R_2SLoop)         	// [8:6332]  R_2SLoop
	     DS:[R4] = R3             	// [10:6332]  
//6333    	       
//6334  		
//6335  		   sp_offset = 0xffff;

LM739:
	     .stabn 68,0,6335,LM739-_Step1
	     R3 = - 1                 	// [12:6335]  
	     DS = seg(_sp_offset)     	// [13:6335]  sp_offset
	     R4 = (_sp_offset)        	// [14:6335]  sp_offset
	     DS:[R4] = R3             	// [16:6335]  
//6336  
//6337  		   timeovercnt=0;

LM740:
	     .stabn 68,0,6337,LM740-_Step1
	     R4 = 0                   	// [18:6337]  
	     [BP + 0] = R4            	// [19:6337]  timeovercnt
L_59_97:	// 0x1327
// BB:58 cycle count: 10
//6339  		   
//6340  		   while(1) 
//6341  		     {  
//6342  		
//6343  			      if(Sleepflag)

LM741:
	     .stabn 68,0,6343,LM741-_Step1
	     DS = seg(_Sleepflag)     	// [0:6343]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:6343]  Sleepflag
	     R4 = DS:[R4]             	// [3:6343]  
	     cmp R4, 0                	// [5:6343]  
	     je L_59_99               	// [6:6343]  
BB59_PU59:	// 0x132d
// BB:59 cycle count: 8
//6344  				  	return C_Off_Mode;

LM742:
	     .stabn 68,0,6344,LM742-_Step1
	     R1 = - 4085              	// [0:6344]  
	     SP = SP + 3              	// [2:6344]  
	     pop BP, PC from [SP]     	// [3:6344]  
L_59_99:	// 0x1331
// BB:60 cycle count: 18
//6345  			      
//6346  			      
//6347  			    Key_activeflag =0;//Playbutton;//Only_Play_KeyEnable;//ALL_Key_Enable&(~(Key_True|Key_False));

LM743:
	     .stabn 68,0,6347,LM743-_Step1
	     R3 = 0                   	// [0:6347]  
	     DS = seg(_Key_activeflag)	// [1:6347]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [2:6347]  Key_activeflag
	     DS:[R4] = R3             	// [4:6347]  
//6348  		        Key_Event =0; 

LM744:
	     .stabn 68,0,6348,LM744-_Step1
	     R3 = 0                   	// [6:6348]  
	     DS = seg(_Key_Event)     	// [7:6348]  Key_Event
	     R4 = (_Key_Event)        	// [8:6348]  Key_Event
	     DS:[R4] = R3             	// [10:6348]  
//6349  		
//6350  		        TwoKeyflag = Playbutton;

LM745:
	     .stabn 68,0,6350,LM745-_Step1
	     R3 = 1                   	// [12:6350]  
	     DS = seg(_TwoKeyflag)    	// [13:6350]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [14:6350]  TwoKeyflag
	     DS:[R4] = R3             	// [16:6350]  
L_59_100:	// 0x1340
// BB:61 cycle count: 16
//6351  		       
//6352  			  do
//6353  			  	{
//6354  			        PauseFlag =0;

LM746:
	     .stabn 68,0,6354,LM746-_Step1
	     R3 = 0                   	// [0:6354]  
	     DS = seg(_PauseFlag)     	// [1:6354]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:6354]  PauseFlag
	     DS:[R4] = R3             	// [4:6354]  
//6355  			        //PlayA1800_Elements(SFX_Buzzer);
//6356  			        //PlayA1800_Elements(A_VLMMREN_SetUp_04);
//6357  			        //Play_Seq(Registerd_Num-1,C_NumP_StartAddr);
//6358  			        //delay_time(8);
//6359  			        PlayA1800_Elements(A_VLMMREN_SetUp_02);

LM747:
	     .stabn 68,0,6359,LM747-_Step1
	     SP = SP - 1              	// [6:6359]  
	     R3 = 71                  	// [7:6359]  
	     R4 = SP + 1              	// [9:6359]  
	     [R4] = R3                	// [11:6359]  
	     call _PlayA1800_Elements 	// [13:6359]  PlayA1800_Elements
BB62_PU59:	// 0x134d
// BB:62 cycle count: 12
	     SP = SP + 1              	// [0:6359]  
//6360  			        
//6361  			      if(sp_offset==0xffff)  

LM748:
	     .stabn 68,0,6361,LM748-_Step1
	     DS = seg(_sp_offset)     	// [1:6361]  sp_offset
	     R4 = (_sp_offset)        	// [2:6361]  sp_offset
	     R4 = DS:[R4]             	// [4:6361]  
	     cmp R4, 65535            	// [6:6361]  
	     jne L_59_102             	// [8:6361]  
BB63_PU59:	// 0x1355
// BB:63 cycle count: 9
//6362  			        PlayA1800_Other(Serie_Player);//Play_Seq(Registerd_Num-1,C_Play_StartAddr);

LM749:
	     .stabn 68,0,6362,LM749-_Step1
	     SP = SP - 1              	// [0:6362]  
	     R3 = 3                   	// [1:6362]  
	     R4 = SP + 1              	// [2:6362]  
	     [R4] = R3                	// [4:6362]  
	     call _PlayA1800_Other    	// [6:6362]  PlayA1800_Other
BB64_PU59:	// 0x135c
// BB:64 cycle count: 5
	     SP = SP + 1              	// [0:6362]  
	     jmp L_59_101             	// [1:6362]  
L_59_102:	// 0x135e
// BB:65 cycle count: 13
//6363  			       else
//6364  			        PlayA1800_Elements(sp_offset);

LM750:
	     .stabn 68,0,6364,LM750-_Step1
	     SP = SP - 1              	// [0:6364]  
	     DS = seg(_sp_offset)     	// [1:6364]  sp_offset
	     R4 = (_sp_offset)        	// [2:6364]  sp_offset
	     R3 = DS:[R4]             	// [4:6364]  
	     R4 = SP + 1              	// [6:6364]  
	     [R4] = R3                	// [8:6364]  
	     call _PlayA1800_Elements 	// [10:6364]  PlayA1800_Elements
BB66_PU59:	// 0x1368
// BB:66 cycle count: 1
	     SP = SP + 1              	// [0:6364]  
L_59_101:	// 0x1369
// BB:67 cycle count: 9
//6365  			         
//6366  			        delay_time(8);

LM751:
	     .stabn 68,0,6366,LM751-_Step1
	     SP = SP - 1              	// [0:6366]  
	     R3 = 8                   	// [1:6366]  
	     R4 = SP + 1              	// [2:6366]  
	     [R4] = R3                	// [4:6366]  
	     call _delay_time         	// [6:6366]  delay_time
BB68_PU59:	// 0x1370
// BB:68 cycle count: 1
	     SP = SP + 1              	// [0:6366]  
Lt_59_3:	// 0x1371
// BB:69 cycle count: 10
//6367  			  	}while(PauseFlag);

LM752:
	     .stabn 68,0,6367,LM752-_Step1
	     DS = seg(_PauseFlag)     	// [0:6367]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6367]  PauseFlag
	     R4 = DS:[R4]             	// [3:6367]  
	     cmp R4, 0                	// [5:6367]  
	     jne L_59_100             	// [6:6367]  
BB70_PU59:	// 0x1377
// BB:70 cycle count: 28
//6368  		         TwoKeyflag =0; 

LM753:
	     .stabn 68,0,6368,LM753-_Step1
	     R3 = 0                   	// [0:6368]  
	     DS = seg(_TwoKeyflag)    	// [1:6368]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [2:6368]  TwoKeyflag
	     DS:[R4] = R3             	// [4:6368]  
//6370  			      
//6371  			      
//6372  			      
//6373  				  
//6374  		     	  Key_activeflag =Playbutton;//ALL_Key_Enable&(~(Key_True|Key_False));

LM754:
	     .stabn 68,0,6374,LM754-_Step1
	     R3 = 1                   	// [6:6374]  
	     DS = seg(_Key_activeflag)	// [7:6374]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6374]  Key_activeflag
	     DS:[R4] = R3             	// [10:6374]  
//6375  				  Key_Event =0; 

LM755:
	     .stabn 68,0,6375,LM755-_Step1
	     R3 = 0                   	// [12:6375]  
	     DS = seg(_Key_Event)     	// [13:6375]  Key_Event
	     R4 = (_Key_Event)        	// [14:6375]  Key_Event
	     DS:[R4] = R3             	// [16:6375]  
//6376  				  
//6377  			      PlayA1800_Elements(A_VLMMREN_SetUp_04);

LM756:
	     .stabn 68,0,6377,LM756-_Step1
	     SP = SP - 1              	// [18:6377]  
	     R3 = 73                  	// [19:6377]  
	     R4 = SP + 1              	// [21:6377]  
	     [R4] = R3                	// [23:6377]  
	     call _PlayA1800_Elements 	// [25:6377]  PlayA1800_Elements
BB71_PU59:	// 0x138e
// BB:71 cycle count: 8
//6378  			      PlayA1800_Elements(A_VLMMREN_Button_01a);

LM757:
	     .stabn 68,0,6378,LM757-_Step1
	     R3 = 7                   	// [0:6378]  
	     R4 = SP + 1              	// [1:6378]  
	     [R4] = R3                	// [3:6378]  
	     call _PlayA1800_Elements 	// [5:6378]  PlayA1800_Elements
BB72_PU59:	// 0x1394
// BB:72 cycle count: 9
//6379  			      
//6380  			      
//6381  			     // Key_activeflag =Only_Play_KeyEnable;//ALL_Key_Enable&(~(Key_True|Key_False));
//6382  				 // Key_Event =0;  
//6383  			      delay_time(20*16);

LM758:
	     .stabn 68,0,6383,LM758-_Step1
	     R3 = 320                 	// [0:6383]  
	     R4 = SP + 1              	// [2:6383]  
	     [R4] = R3                	// [4:6383]  
	     call _delay_time         	// [6:6383]  delay_time
BB73_PU59:	// 0x139b
// BB:73 cycle count: 11
	     SP = SP + 1              	// [0:6383]  
//6384  			      
//6385  			      if(Key_Event==Playbutton)

LM759:
	     .stabn 68,0,6385,LM759-_Step1
	     DS = seg(_Key_Event)     	// [1:6385]  Key_Event
	     R4 = (_Key_Event)        	// [2:6385]  Key_Event
	     R4 = DS:[R4]             	// [4:6385]  
	     cmp R4, 1                	// [6:6385]  
	     je BB74_PU59             	// [7:6385]  
BB134_PU59:	// 0x13a2
// BB:134 cycle count: 3
	     goto L_59_103            	// [0:0]  
BB74_PU59:	// 0x13a4
// BB:74 cycle count: 21
//6386  			      {  
//6387  			      	   Key_Event =0;  

LM760:
	     .stabn 68,0,6387,LM760-_Step1
	     R3 = 0                   	// [0:6387]  
	     DS = seg(_Key_Event)     	// [1:6387]  Key_Event
	     R4 = (_Key_Event)        	// [2:6387]  Key_Event
	     DS:[R4] = R3             	// [4:6387]  
//6388  			      	   Key_activeflag =0;	

LM761:
	     .stabn 68,0,6388,LM761-_Step1
	     R3 = 0                   	// [6:6388]  
	     DS = seg(_Key_activeflag)	// [7:6388]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6388]  Key_activeflag
	     DS:[R4] = R3             	// [10:6388]  
//6389  			      	   PlayA1800_Elements(A_VLMMREN_ChoosePlayerEnd);

LM762:
	     .stabn 68,0,6389,LM762-_Step1
	     SP = SP - 1              	// [12:6389]  
	     R3 = 15                  	// [13:6389]  
	     R4 = SP + 1              	// [14:6389]  
	     [R4] = R3                	// [16:6389]  
	     call _PlayA1800_Elements 	// [18:6389]  PlayA1800_Elements
BB75_PU59:	// 0x13b5
// BB:75 cycle count: 11
	     SP = SP + 1              	// [0:6389]  
//6390  			      	   
//6391  			      	  if(Registerd_Num>2)

LM763:
	     .stabn 68,0,6391,LM763-_Step1
	     DS = seg(_Registerd_Num) 	// [1:6391]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [2:6391]  Registerd_Num
	     R4 = DS:[R4]             	// [4:6391]  
	     cmp R4, 2                	// [6:6391]  
	     jbe L_59_104             	// [7:6391]  
BB76_PU59:	// 0x13bc
// BB:76 cycle count: 9
//6392  			      	  {
//6393  			      	  	PlayA1800_Elements(A_VLMMREN_ChoosePlayerEnd02);

LM764:
	     .stabn 68,0,6393,LM764-_Step1
	     SP = SP - 1              	// [0:6393]  
	     R3 = 16                  	// [1:6393]  
	     R4 = SP + 1              	// [2:6393]  
	     [R4] = R3                	// [4:6393]  
	     call _PlayA1800_Elements 	// [6:6393]  PlayA1800_Elements
BB77_PU59:	// 0x13c3
// BB:77 cycle count: 1
	     SP = SP + 1              	// [0:6393]  
L_59_104:	// 0x13c4
// BB:78 cycle count: 9
//6394  			      	  }
//6395  	
//6396  			      	   delay_time(8);

LM765:
	     .stabn 68,0,6396,LM765-_Step1
	     SP = SP - 1              	// [0:6396]  
	     R3 = 8                   	// [1:6396]  
	     R4 = SP + 1              	// [2:6396]  
	     [R4] = R3                	// [4:6396]  
	     call _delay_time         	// [6:6396]  delay_time
BB79_PU59:	// 0x13cb
// BB:79 cycle count: 11
	     SP = SP + 1              	// [0:6396]  
//6397  
//6398  					  if(Restart ==0)

LM766:
	     .stabn 68,0,6398,LM766-_Step1
	     DS = seg(_Restart)       	// [1:6398]  Restart
	     R4 = (_Restart)          	// [2:6398]  Restart
	     R4 = DS:[R4]             	// [4:6398]  
	     cmp R4, 0                	// [6:6398]  
	     jne L_59_105             	// [7:6398]  
BB80_PU59:	// 0x13d2
// BB:80 cycle count: 21
//6399  					  {
//6400  					  	  		     	 
//6401  				          Key_Event =0; 

LM767:
	     .stabn 68,0,6401,LM767-_Step1
	     R3 = 0                   	// [0:6401]  
	     DS = seg(_Key_Event)     	// [1:6401]  Key_Event
	     R4 = (_Key_Event)        	// [2:6401]  Key_Event
	     DS:[R4] = R3             	// [4:6401]  
//6402  				          Key_activeflag =Playbutton;//ALL_Key_Enable&(~(Key_True|Key_False));

LM768:
	     .stabn 68,0,6402,LM768-_Step1
	     R3 = 1                   	// [6:6402]  
	     DS = seg(_Key_activeflag)	// [7:6402]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6402]  Key_activeflag
	     DS:[R4] = R3             	// [10:6402]  
//6403  					      PlayA1800_Elements(A_VLMMREN_Rule_01b);

LM769:
	     .stabn 68,0,6403,LM769-_Step1
	     SP = SP - 1              	// [12:6403]  
	     R3 = 49                  	// [13:6403]  
	     R4 = SP + 1              	// [14:6403]  
	     [R4] = R3                	// [16:6403]  
	     call _PlayA1800_Elements 	// [18:6403]  PlayA1800_Elements
BB81_PU59:	// 0x13e3
// BB:81 cycle count: 1
	     SP = SP + 1              	// [0:6403]  
L_59_105:	// 0x13e4
// BB:82 cycle count: 4
//6408  
//6409  				 
//6410  		
//6411  			      	
//6412  			      	   break;

LM770:
	     .stabn 68,0,6412,LM770-_Step1
	     jmp Lt_59_4              	// [0:6412]  
L_59_103:	// 0x13e5
// BB:83 cycle count: 11
//6413  			        }	  
//6414  
//6415  
//6416                        timeovercnt++;

LM771:
	     .stabn 68,0,6416,LM771-_Step1
	     R4 = [BP + 0]            	// [0:6416]  timeovercnt
	     R4 = R4 + 1              	// [2:6416]  
	     [BP + 0] = R4            	// [3:6416]  timeovercnt
//6417  
//6418  					  if(timeovercnt>8)

LM772:
	     .stabn 68,0,6418,LM772-_Step1
	     R4 = [BP + 0]            	// [4:6418]  timeovercnt
	     cmp R4, 8                	// [6:6418]  
	     jbe L_59_106             	// [7:6418]  
BB84_PU59:	// 0x13eb
// BB:84 cycle count: 3
//6419  					  	{
//6420  
//6421  	      	               GameTimeout();	

LM773:
	     .stabn 68,0,6421,LM773-_Step1
	     call _GameTimeout        	// [0:6421]  GameTimeout
BB85_PU59:	// 0x13ed
// BB:85 cycle count: 2
//6422  	      	     	       timeovercnt=0;

LM774:
	     .stabn 68,0,6422,LM774-_Step1
	     R4 = 0                   	// [0:6422]  
	     [BP + 0] = R4            	// [1:6422]  timeovercnt
L_59_106:	// 0x13ef
// BB:86 cycle count: 3

LM775:
	     .stabn 68,0,6418,LM775-_Step1
	     goto L_59_97             	// [0:6418]  
L_59_98:	// 0x13f1
Lt_59_4:	// 0x13f1
// BB:87 cycle count: 4
//6424  					  
//6425  
//6426  				  
//6427  		      
//6428  		        }

LM776:
	     .stabn 68,0,6428,LM776-_Step1
	     jmp L_59_95              	// [0:6428]  
L_59_96:	// 0x13f2
// BB:88 cycle count: 10
//6429      }    
//6430     else if(Registerd_Num ==1)

LM777:
	     .stabn 68,0,6430,LM777-_Step1
	     DS = seg(_Registerd_Num) 	// [0:6430]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6430]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6430]  
	     cmp R4, 1                	// [5:6430]  
	     jne L_59_107             	// [6:6430]  
BB89_PU59:	// 0x13f8
// BB:89 cycle count: 10
//6431     	{
//6432     		if(Restart ==0)

LM778:
	     .stabn 68,0,6432,LM778-_Step1
	     DS = seg(_Restart)       	// [0:6432]  Restart
	     R4 = (_Restart)          	// [1:6432]  Restart
	     R4 = DS:[R4]             	// [3:6432]  
	     cmp R4, 0                	// [5:6432]  
	     jne L_59_108             	// [6:6432]  
BB90_PU59:	// 0x13fe
// BB:90 cycle count: 21
//6433     		{
//6434  	         Key_Event =0;  

LM779:
	     .stabn 68,0,6434,LM779-_Step1
	     R3 = 0                   	// [0:6434]  
	     DS = seg(_Key_Event)     	// [1:6434]  Key_Event
	     R4 = (_Key_Event)        	// [2:6434]  Key_Event
	     DS:[R4] = R3             	// [4:6434]  
//6435  			 Key_activeflag =Playbutton;

LM780:
	     .stabn 68,0,6435,LM780-_Step1
	     R3 = 1                   	// [6:6435]  
	     DS = seg(_Key_activeflag)	// [7:6435]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6435]  Key_activeflag
	     DS:[R4] = R3             	// [10:6435]  
//6436  	         PlayA1800_Elements(A_VLMMREN_Rule_01a);

LM781:
	     .stabn 68,0,6436,LM781-_Step1
	     SP = SP - 1              	// [12:6436]  
	     R3 = 48                  	// [13:6436]  
	     R4 = SP + 1              	// [14:6436]  
	     [R4] = R3                	// [16:6436]  
	     call _PlayA1800_Elements 	// [18:6436]  PlayA1800_Elements
BB91_PU59:	// 0x140f
// BB:91 cycle count: 1
	     SP = SP + 1              	// [0:6436]  
L_59_108:	// 0x1410
L_59_107:	// 0x1410
L_59_95:	// 0x1410
// BB:92 cycle count: 10
//6438     	}
//6439     	
//6440  
//6441  
//6442                if(Restart ==0)

LM782:
	     .stabn 68,0,6442,LM782-_Step1
	     DS = seg(_Restart)       	// [0:6442]  Restart
	     R4 = (_Restart)          	// [1:6442]  Restart
	     R4 = DS:[R4]             	// [3:6442]  
	     cmp R4, 0                	// [5:6442]  
	     je BB93_PU59             	// [6:6442]  
BB132_PU59:	// 0x1416
// BB:132 cycle count: 3
	     goto L_59_109            	// [0:0]  
BB93_PU59:	// 0x1418
// BB:93 cycle count: 18
//6443                {
//6444           			   //Key_Event =0;  
//6445  			           Key_activeflag =Playbutton;//Only_Play_KeyEnable;

LM783:
	     .stabn 68,0,6445,LM783-_Step1
	     R3 = 1                   	// [0:6445]  
	     DS = seg(_Key_activeflag)	// [1:6445]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [2:6445]  Key_activeflag
	     DS:[R4] = R3             	// [4:6445]  
//6446  		               TwoKeyflag = Playbutton;

LM784:
	     .stabn 68,0,6446,LM784-_Step1
	     R3 = 1                   	// [6:6446]  
	     DS = seg(_TwoKeyflag)    	// [7:6446]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [8:6446]  TwoKeyflag
	     DS:[R4] = R3             	// [10:6446]  
//6447  					   PauseFlag =0; 

LM785:
	     .stabn 68,0,6447,LM785-_Step1
	     R3 = 0                   	// [12:6447]  
	     DS = seg(_PauseFlag)     	// [13:6447]  PauseFlag
	     R4 = (_PauseFlag)        	// [14:6447]  PauseFlag
	     DS:[R4] = R3             	// [16:6447]  
L_59_110:	// 0x1427
// BB:94 cycle count: 10
//6448  		
//6449  		                do
//6450  		                {
//6451  		                	
//6452  		                	if(PauseFlag)

LM786:
	     .stabn 68,0,6452,LM786-_Step1
	     DS = seg(_PauseFlag)     	// [0:6452]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6452]  PauseFlag
	     R4 = DS:[R4]             	// [3:6452]  
	     cmp R4, 0                	// [5:6452]  
	     je L_59_111              	// [6:6452]  
BB95_PU59:	// 0x142d
// BB:95 cycle count: 16
//6453  		                	{
//6454  		                		PauseFlag =0;

LM787:
	     .stabn 68,0,6454,LM787-_Step1
	     R3 = 0                   	// [0:6454]  
	     DS = seg(_PauseFlag)     	// [1:6454]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:6454]  PauseFlag
	     DS:[R4] = R3             	// [4:6454]  
//6455  		                		
//6456  					              if(Restart ==0)

LM788:
	     .stabn 68,0,6456,LM788-_Step1
	     DS = seg(_Restart)       	// [6:6456]  Restart
	     R4 = (_Restart)          	// [7:6456]  Restart
	     R4 = DS:[R4]             	// [9:6456]  
	     cmp R4, 0                	// [11:6456]  
	     jne L_59_112             	// [12:6456]  
BB96_PU59:	// 0x1438
// BB:96 cycle count: 22
//6457  								  {
//6458  								  	  		     	 
//6459  							          Key_Event =0; 

LM789:
	     .stabn 68,0,6459,LM789-_Step1
	     R3 = 0                   	// [0:6459]  
	     DS = seg(_Key_Event)     	// [1:6459]  Key_Event
	     R4 = (_Key_Event)        	// [2:6459]  Key_Event
	     DS:[R4] = R3             	// [4:6459]  
//6460  							          Key_activeflag =Playbutton;//ALL_Key_Enable&(~(Key_True|Key_False));

LM790:
	     .stabn 68,0,6460,LM790-_Step1
	     R3 = 1                   	// [6:6460]  
	     DS = seg(_Key_activeflag)	// [7:6460]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6460]  Key_activeflag
	     DS:[R4] = R3             	// [10:6460]  
//6461  							          
//6462  							         if(Registerd_Num ==1)  

LM791:
	     .stabn 68,0,6462,LM791-_Step1
	     DS = seg(_Registerd_Num) 	// [12:6462]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [13:6462]  Registerd_Num
	     R4 = DS:[R4]             	// [15:6462]  
	     cmp R4, 1                	// [17:6462]  
	     jne L_59_114             	// [18:6462]  
BB97_PU59:	// 0x1448
// BB:97 cycle count: 9
//6463  								        PlayA1800_Elements(A_VLMMREN_Rule_01a);

LM792:
	     .stabn 68,0,6463,LM792-_Step1
	     SP = SP - 1              	// [0:6463]  
	     R3 = 48                  	// [1:6463]  
	     R4 = SP + 1              	// [2:6463]  
	     [R4] = R3                	// [4:6463]  
	     call _PlayA1800_Elements 	// [6:6463]  PlayA1800_Elements
BB98_PU59:	// 0x144f
// BB:98 cycle count: 5
	     SP = SP + 1              	// [0:6463]  
	     jmp L_59_113             	// [1:6463]  
L_59_114:	// 0x1451
// BB:99 cycle count: 9
//6464  								      else
//6465  								        PlayA1800_Elements(A_VLMMREN_Rule_01b); 

LM793:
	     .stabn 68,0,6465,LM793-_Step1
	     SP = SP - 1              	// [0:6465]  
	     R3 = 49                  	// [1:6465]  
	     R4 = SP + 1              	// [2:6465]  
	     [R4] = R3                	// [4:6465]  
	     call _PlayA1800_Elements 	// [6:6465]  PlayA1800_Elements
BB100_PU59:	// 0x1458
// BB:100 cycle count: 1
	     SP = SP + 1              	// [0:6465]  
L_59_113:	// 0x1459
L_59_112:	// 0x1459
L_59_111:	// 0x1459
// BB:101 cycle count: 9
//6471  		                  
//6472  		                  
//6473  		                  
//6474  				      	  
//6475  				      	  Led_ON_Some(LED0_BIT);

LM794:
	     .stabn 68,0,6475,LM794-_Step1
	     SP = SP - 1              	// [0:6475]  
	     R3 = 16                  	// [1:6475]  
	     R4 = SP + 1              	// [2:6475]  
	     [R4] = R3                	// [4:6475]  
	     call _Led_ON_Some        	// [6:6475]  Led_ON_Some
BB102_PU59:	// 0x1460
// BB:102 cycle count: 8
//6476  						  PlayA1800_Elements(A_VLMMREN_Rule_04);

LM795:
	     .stabn 68,0,6476,LM795-_Step1
	     R3 = 55                  	// [0:6476]  
	     R4 = SP + 1              	// [1:6476]  
	     [R4] = R3                	// [3:6476]  
	     call _PlayA1800_Elements 	// [5:6476]  PlayA1800_Elements
BB103_PU59:	// 0x1466
// BB:103 cycle count: 4
	     SP = SP + 1              	// [0:6476]  
//6477  						  Light_all_off();

LM796:
	     .stabn 68,0,6477,LM796-_Step1
	     call _Light_all_off      	// [1:6477]  Light_all_off
BB104_PU59:	// 0x1469
// BB:104 cycle count: 10
//6478  						  Led_ON_Some(LED3_BIT);

LM797:
	     .stabn 68,0,6478,LM797-_Step1
	     SP = SP - 1              	// [0:6478]  
	     R3 = 128                 	// [1:6478]  
	     R4 = SP + 1              	// [3:6478]  
	     [R4] = R3                	// [5:6478]  
	     call _Led_ON_Some        	// [7:6478]  Led_ON_Some
BB105_PU59:	// 0x1471
// BB:105 cycle count: 8
//6479  						  PlayA1800_Elements(A_VLMMREN_Rule_05);

LM798:
	     .stabn 68,0,6479,LM798-_Step1
	     R3 = 56                  	// [0:6479]  
	     R4 = SP + 1              	// [1:6479]  
	     [R4] = R3                	// [3:6479]  
	     call _PlayA1800_Elements 	// [5:6479]  PlayA1800_Elements
BB106_PU59:	// 0x1477
// BB:106 cycle count: 4
	     SP = SP + 1              	// [0:6479]  
//6480  						  Light_all_off();

LM799:
	     .stabn 68,0,6480,LM799-_Step1
	     call _Light_all_off      	// [1:6480]  Light_all_off
BB107_PU59:	// 0x147a
// BB:107 cycle count: 10
//6481  						  Led_ON_Some(LED2_BIT);				  

LM800:
	     .stabn 68,0,6481,LM800-_Step1
	     SP = SP - 1              	// [0:6481]  
	     R3 = 64                  	// [1:6481]  
	     R4 = SP + 1              	// [3:6481]  
	     [R4] = R3                	// [5:6481]  
	     call _Led_ON_Some        	// [7:6481]  Led_ON_Some
BB108_PU59:	// 0x1482
// BB:108 cycle count: 8
//6482  						  PlayA1800_Elements(A_VLMMREN_Rule_06);

LM801:
	     .stabn 68,0,6482,LM801-_Step1
	     R3 = 57                  	// [0:6482]  
	     R4 = SP + 1              	// [1:6482]  
	     [R4] = R3                	// [3:6482]  
	     call _PlayA1800_Elements 	// [5:6482]  PlayA1800_Elements
BB109_PU59:	// 0x1488
// BB:109 cycle count: 4
	     SP = SP + 1              	// [0:6482]  
//6483  						  Light_all_off();

LM802:
	     .stabn 68,0,6483,LM802-_Step1
	     call _Light_all_off      	// [1:6483]  Light_all_off
BB110_PU59:	// 0x148b
// BB:110 cycle count: 9
//6484  						  Led_ON_Some(LED1_BIT);

LM803:
	     .stabn 68,0,6484,LM803-_Step1
	     SP = SP - 1              	// [0:6484]  
	     R3 = 32                  	// [1:6484]  
	     R4 = SP + 1              	// [2:6484]  
	     [R4] = R3                	// [4:6484]  
	     call _Led_ON_Some        	// [6:6484]  Led_ON_Some
BB111_PU59:	// 0x1492
// BB:111 cycle count: 8
//6485  						  PlayA1800_Elements(A_VLMMREN_Rule_07);

LM804:
	     .stabn 68,0,6485,LM804-_Step1
	     R3 = 58                  	// [0:6485]  
	     R4 = SP + 1              	// [1:6485]  
	     [R4] = R3                	// [3:6485]  
	     call _PlayA1800_Elements 	// [5:6485]  PlayA1800_Elements
BB112_PU59:	// 0x1498
// BB:112 cycle count: 4
	     SP = SP + 1              	// [0:6485]  
//6486  						  Light_all_off();

LM805:
	     .stabn 68,0,6486,LM805-_Step1
	     call _Light_all_off      	// [1:6486]  Light_all_off
Lt_59_5:	// 0x149b
// BB:113 cycle count: 10
//6487  				  	   }while(PauseFlag);

LM806:
	     .stabn 68,0,6487,LM806-_Step1
	     DS = seg(_PauseFlag)     	// [0:6487]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6487]  PauseFlag
	     R4 = DS:[R4]             	// [3:6487]  
	     cmp R4, 0                	// [5:6487]  
	     je BB114_PU59            	// [6:6487]  
BB138_PU59:	// 0x14a1
// BB:138 cycle count: 3
	     goto L_59_110            	// [0:0]  
BB114_PU59:	// 0x14a3
// BB:114 cycle count: 6
//6488  		                 TwoKeyflag =0;

LM807:
	     .stabn 68,0,6488,LM807-_Step1
	     R3 = 0                   	// [0:6488]  
	     DS = seg(_TwoKeyflag)    	// [1:6488]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [2:6488]  TwoKeyflag
	     DS:[R4] = R3             	// [4:6488]  
L_59_109:	// 0x14a8
// BB:115 cycle count: 22
//6489                }
//6490  
//6491           Key_Event =0;  

LM808:
	     .stabn 68,0,6491,LM808-_Step1
	     R3 = 0                   	// [0:6491]  
	     DS = seg(_Key_Event)     	// [1:6491]  Key_Event
	     R4 = (_Key_Event)        	// [2:6491]  Key_Event
	     DS:[R4] = R3             	// [4:6491]  
//6492           Key_activeflag =Playbutton;

LM809:
	     .stabn 68,0,6492,LM809-_Step1
	     R3 = 1                   	// [6:6492]  
	     DS = seg(_Key_activeflag)	// [7:6492]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6492]  Key_activeflag
	     DS:[R4] = R3             	// [10:6492]  
//6493          if((Registerd_Num>1))//||(Record==0))

LM810:
	     .stabn 68,0,6493,LM810-_Step1
	     DS = seg(_Registerd_Num) 	// [12:6493]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [13:6493]  Registerd_Num
	     R4 = DS:[R4]             	// [15:6493]  
	     cmp R4, 1                	// [17:6493]  
	     jbe BB116_PU59           	// [18:6493]  
BB131_PU59:	// 0x14b8
// BB:131 cycle count: 3
	     goto L_59_115            	// [0:0]  
BB116_PU59:	// 0x14ba
// BB:116 cycle count: 21
//6499          	}
//6500          else 
//6501            { 
//6502            	
//6503            	    Key_Event =0;  

LM811:
	     .stabn 68,0,6503,LM811-_Step1
	     R3 = 0                   	// [0:6503]  
	     DS = seg(_Key_Event)     	// [1:6503]  Key_Event
	     R4 = (_Key_Event)        	// [2:6503]  Key_Event
	     DS:[R4] = R3             	// [4:6503]  
//6504                  Key_activeflag =0;

LM812:
	     .stabn 68,0,6504,LM812-_Step1
	     R3 = 0                   	// [6:6504]  
	     DS = seg(_Key_activeflag)	// [7:6504]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6504]  Key_activeflag
	     DS:[R4] = R3             	// [10:6504]  
//6505           
//6506                  PlayA1800_Elements(A_VLMMREN_Rule_11);

LM813:
	     .stabn 68,0,6506,LM813-_Step1
	     SP = SP - 1              	// [12:6506]  
	     R3 = 63                  	// [13:6506]  
	     R4 = SP + 1              	// [14:6506]  
	     [R4] = R3                	// [16:6506]  
	     call _PlayA1800_Elements 	// [18:6506]  PlayA1800_Elements
BB117_PU59:	// 0x14cb
// BB:117 cycle count: 12
	     SP = SP + 1              	// [0:6506]  
//6507                  
//6508  		        if((Record>100))

LM814:
	     .stabn 68,0,6508,LM814-_Step1
	     DS = seg(_Record)        	// [1:6508]  Record
	     R4 = (_Record)           	// [2:6508]  Record
	     R4 = DS:[R4]             	// [4:6508]  
	     cmp R4, 100              	// [6:6508]  
	     jbe L_59_117             	// [8:6508]  
BB118_PU59:	// 0x14d3
// BB:118 cycle count: 9
//6509  		           {
//6510  		        	  PlayA1800_Elements(A_VLMMREN_Rule_03Max);

LM815:
	     .stabn 68,0,6510,LM815-_Step1
	     SP = SP - 1              	// [0:6510]  
	     R3 = 54                  	// [1:6510]  
	     R4 = SP + 1              	// [2:6510]  
	     [R4] = R3                	// [4:6510]  
	     call _PlayA1800_Elements 	// [6:6510]  PlayA1800_Elements
BB119_PU59:	// 0x14da
// BB:119 cycle count: 8
//6511  		        	  PlayA1800_Elements(A_VLMMREN_Rule_03b);

LM816:
	     .stabn 68,0,6511,LM816-_Step1
	     R3 = 53                  	// [0:6511]  
	     R4 = SP + 1              	// [1:6511]  
	     [R4] = R3                	// [3:6511]  
	     call _PlayA1800_Elements 	// [5:6511]  PlayA1800_Elements
BB120_PU59:	// 0x14e0
// BB:120 cycle count: 5
	     SP = SP + 1              	// [0:6511]  
	     jmp L_59_116             	// [1:6511]  
L_59_117:	// 0x14e2
// BB:121 cycle count: 10
//6512  		           }
//6513  			     else if(Record!=0)

LM817:
	     .stabn 68,0,6513,LM817-_Step1
	     DS = seg(_Record)        	// [0:6513]  Record
	     R4 = (_Record)           	// [1:6513]  Record
	     R4 = DS:[R4]             	// [3:6513]  
	     cmp R4, 0                	// [5:6513]  
	     je L_59_118              	// [6:6513]  
BB122_PU59:	// 0x14e8
// BB:122 cycle count: 9
//6514  			     	{
//6515  					    PlayA1800_Elements(A_VLMMREN_Rule_03);

LM818:
	     .stabn 68,0,6515,LM818-_Step1
	     SP = SP - 1              	// [0:6515]  
	     R3 = 52                  	// [1:6515]  
	     R4 = SP + 1              	// [2:6515]  
	     [R4] = R3                	// [4:6515]  
	     call _PlayA1800_Elements 	// [6:6515]  PlayA1800_Elements
BB123_PU59:	// 0x14ef
// BB:123 cycle count: 19
	     SP = SP - 1              	// [0:6515]  
//6516  		                Play_Seq(Record,C_Point_A_StartAddr);//C_NX

LM819:
	     .stabn 68,0,6516,LM819-_Step1
	     DS = seg(_Record)        	// [1:6516]  Record
	     R4 = (_Record)           	// [2:6516]  Record
	     R3 = DS:[R4]             	// [4:6516]  
	     R4 = SP + 1              	// [6:6516]  
	     [R4] = R3                	// [8:6516]  
	     R3 = 8000                	// [10:6516]  
	     R4 = SP + 2              	// [12:6516]  
	     [R4] = R3                	// [14:6516]  
	     call _Play_Seq           	// [16:6516]  Play_Seq
BB124_PU59:	// 0x14fe
// BB:124 cycle count: 10
	     SP = SP + 1              	// [0:6516]  
//6517  		                PlayA1800_Elements(A_VLMMREN_Score_02);

LM820:
	     .stabn 68,0,6517,LM820-_Step1
	     R3 = 66                  	// [1:6517]  
	     R4 = SP + 1              	// [3:6517]  
	     [R4] = R3                	// [5:6517]  
	     call _PlayA1800_Elements 	// [7:6517]  PlayA1800_Elements
BB125_PU59:	// 0x1506
// BB:125 cycle count: 8
//6518  						PlayA1800_Elements(A_VLMMREN_Rule_03b);

LM821:
	     .stabn 68,0,6518,LM821-_Step1
	     R3 = 53                  	// [0:6518]  
	     R4 = SP + 1              	// [1:6518]  
	     [R4] = R3                	// [3:6518]  
	     call _PlayA1800_Elements 	// [5:6518]  PlayA1800_Elements
BB126_PU59:	// 0x150c
// BB:126 cycle count: 1
	     SP = SP + 1              	// [0:6518]  
L_59_118:	// 0x150d
L_59_116:	// 0x150d
L_59_115:	// 0x150d
// BB:127 cycle count: 15
//6520  		
//6521  			     	}
//6522            }
//6523  		
//6524           Key_Event =0;  

LM822:
	     .stabn 68,0,6524,LM822-_Step1
	     R3 = 0                   	// [0:6524]  
	     DS = seg(_Key_Event)     	// [1:6524]  Key_Event
	     R4 = (_Key_Event)        	// [2:6524]  Key_Event
	     DS:[R4] = R3             	// [4:6524]  
//6525           delay_time(8);

LM823:
	     .stabn 68,0,6525,LM823-_Step1
	     SP = SP - 1              	// [6:6525]  
	     R3 = 8                   	// [7:6525]  
	     R4 = SP + 1              	// [8:6525]  
	     [R4] = R3                	// [10:6525]  
	     call _delay_time         	// [12:6525]  delay_time
BB128_PU59:	// 0x1519
// BB:128 cycle count: 9
//6526           PlayA1800_Elements(A_VLMMREN_Start);

LM824:
	     .stabn 68,0,6526,LM824-_Step1
	     R3 = 74                  	// [0:6526]  
	     R4 = SP + 1              	// [2:6526]  
	     [R4] = R3                	// [4:6526]  
	     call _PlayA1800_Elements 	// [6:6526]  PlayA1800_Elements
BB129_PU59:	// 0x1520
// BB:129 cycle count: 8
//6527           delay_time(8);

LM825:
	     .stabn 68,0,6527,LM825-_Step1
	     R3 = 8                   	// [0:6527]  
	     R4 = SP + 1              	// [1:6527]  
	     [R4] = R3                	// [3:6527]  
	     call _delay_time         	// [5:6527]  delay_time
BB130_PU59:	// 0x1526
// BB:130 cycle count: 14
	     SP = SP + 4              	// [0:6527]  
//6528  
//6529  
//6530  	 Round =1;

LM826:
	     .stabn 68,0,6530,LM826-_Step1
	     R3 = 1                   	// [1:6530]  
	     DS = seg(_Round)         	// [2:6530]  Round
	     R4 = (_Round)            	// [3:6530]  Round
	     DS:[R4] = R3             	// [5:6530]  
//6531  	 return C_Game;//C_SelectQuestion_Round1;

LM827:
	     .stabn 68,0,6531,LM827-_Step1
	     R1 = - 4083              	// [7:6531]  
	     pop BP, PC from [SP]     	// [9:6531]  
LBE55:
	.endp	
	     .stabn 192,0,0,LBB55-_Step1
	     .stabs "i:4",128,0,0,1
	     .stabs "temp:4",128,0,0,2
	     .stabs "timeovercnt:4",128,0,0,0
	     .stabn 224,0,0,LBE55-_Step1
LME60:
	     .stabf LME60-_Step1
.code
	     .stabs "Select_Sound:F18",36,0,0,_Select_Sound

	// Program Unit: Select_Sound
.public	_Select_Sound
_Select_Sound: .proc	
	     .stabn 0xa6,0,0,11
	// cnt = 0
	// temp_Category = 1
	// __save_expr_temp_13 = 2
	// __save_expr_temp_14 = 3
	// __save_expr_temp_15 = 4
	// old_frame_pointer = 11
	// return_address = 12
	// lra_spill_temp_32 = 5
	// lra_spill_temp_33 = 6
	// lra_spill_temp_34 = 7
	// lra_spill_temp_35 = 8
	// lra_spill_temp_36 = 9
	// lra_spill_temp_37 = 10
//6551  **********************************************************************/
//6552  
//6553  
//6554  void Select_Sound()
//6555  {

LM828:
	     .stabn 68,0,6555,LM828-_Select_Sound
BB1_PU60:	// 0x152f
// BB:1 cycle count: 17
	     push BP to [SP]          	// [0:6555]  
	     SP = SP - 11             	// [2:6555]  
	     BP = SP + 1              	// [3:6555]  
LBB56:
//6556     unsigned int cnt =1;

LM829:
	     .stabn 68,0,6556,LM829-_Select_Sound
	     R4 = 1                   	// [5:6556]  
	     [BP + 0] = R4            	// [6:6556]  cnt
//6557     unsigned int temp_Category;
//6558     
//6559     if(R_E ==C_TwoSounds)

LM830:
	     .stabn 68,0,6559,LM830-_Select_Sound
	     DS = seg(_R_E)           	// [7:6559]  R_E
	     R4 = (_R_E)              	// [8:6559]  R_E
	     R4 = DS:[R4]             	// [10:6559]  
	     cmp R4, 2                	// [12:6559]  
	     jne L_60_12              	// [13:6559]  
BB2_PU60:	// 0x153b
// BB:2 cycle count: 2
//6560         cnt=2;

LM831:
	     .stabn 68,0,6560,LM831-_Select_Sound
	     R4 = 2                   	// [0:6560]  
	     [BP + 0] = R4            	// [1:6560]  cnt
L_60_12:	// 0x153d
L_60_13:	// 0x153d
// BB:3 cycle count: 3
//6561       do
//6562       {
//6563          Check_LQA();

LM832:
	     .stabn 68,0,6563,LM832-_Select_Sound
	     call _Check_LQA          	// [0:6563]  Check_LQA
BB4_PU60:	// 0x153f
// BB:4 cycle count: 28
//6564          gQuestionIdx_1=gQuestionIdx;     

LM833:
	     .stabn 68,0,6564,LM833-_Select_Sound
	     DS = seg(_gQuestionIdx)  	// [0:6564]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:6564]  gQuestionIdx
	     R3 = DS:[R4]             	// [3:6564]  
	     DS = seg(_gQuestionIdx_1)	// [5:6564]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [6:6564]  gQuestionIdx_1
	     DS:[R4] = R3             	// [8:6564]  
//6565          
//6566         
//6567          gQuestionIdx= Select_Questionrandom_4(*P_TimerB_CNTR % LQA);

LM834:
	     .stabn 68,0,6567,LM834-_Select_Sound
	     SP = SP - 1              	// [10:6567]  
	     R3 = 12307               	// [11:6567]  
	     R4 = 0                   	// [13:6567]  
	     DS = R4                  	// [14:6567]  
	     R3 = DS:[R3]             	// [15:6567]  
	     DS = seg(_LQA)           	// [17:6567]  LQA
	     R4 = (_LQA)              	// [18:6567]  LQA
	     R4 = DS:[R4]             	// [20:6567]  
	     push R4, R3 to [SP]      	// [22:6567]  
	     call __modu1             	// [25:6567]  _modu1
BB5_PU60:	// 0x1554
// BB:5 cycle count: 8
	     SP = SP + 2              	// [0:0]  
	     R4 = SP + 1              	// [1:0]  
	     [R4] = R1                	// [3:0]  
	     call _Select_Questionrandom_4	// [5:6567]  Select_Questionrandom_4
BB6_PU60:	// 0x155a
// BB:6 cycle count: 17
	     DS = seg(_gQuestionIdx)  	// [0:6567]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:6567]  gQuestionIdx
	     DS:[R4] = R1             	// [3:6567]  
//6568          
//6569          temp_Category= Get_Question_Category(gQuestionIdx);

LM835:
	     .stabn 68,0,6569,LM835-_Select_Sound
	     DS = seg(_gQuestionIdx)  	// [5:6569]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [6:6569]  gQuestionIdx
	     R3 = DS:[R4]             	// [8:6569]  
	     R4 = SP + 1              	// [10:6569]  
	     [R4] = R3                	// [12:6569]  
	     call _Get_Question_Category	// [14:6569]  Get_Question_Category
BB7_PU60:	// 0x1567
// BB:7 cycle count: 12
	     SP = SP + 1              	// [0:6569]  
	     [BP + 1] = R1            	// [1:6569]  temp_Category
//6570          
//6571          if(Last2Catcnt)

LM836:
	     .stabn 68,0,6571,LM836-_Select_Sound
	     DS = seg(_Last2Catcnt)   	// [2:6571]  Last2Catcnt
	     R4 = (_Last2Catcnt)      	// [3:6571]  Last2Catcnt
	     R4 = DS:[R4]             	// [5:6571]  
	     cmp R4, 0                	// [7:6571]  
	     je L_60_14               	// [8:6571]  
BB8_PU60:	// 0x156f
// BB:8 cycle count: 21
//6572          {
//6573          	 Last2Catcnt++;

LM837:
	     .stabn 68,0,6573,LM837-_Select_Sound
	     DS = seg(_Last2Catcnt)   	// [0:6573]  Last2Catcnt
	     R4 = (_Last2Catcnt)      	// [1:6573]  Last2Catcnt
	     R4 = DS:[R4]             	// [3:6573]  
	     R4 = R4 + 1              	// [5:6573]  
	     DS = seg(_Last2Catcnt)   	// [6:6573]  Last2Catcnt
	     R3 = (_Last2Catcnt)      	// [7:6573]  Last2Catcnt
	     DS:[R3] = R4             	// [9:6573]  
//6574          
//6575            if(Last2Catcnt<4)	 

LM838:
	     .stabn 68,0,6575,LM838-_Select_Sound
	     DS = seg(_Last2Catcnt)   	// [11:6575]  Last2Catcnt
	     R4 = (_Last2Catcnt)      	// [12:6575]  Last2Catcnt
	     R4 = DS:[R4]             	// [14:6575]  
	     cmp R4, 3                	// [16:6575]  
	     ja L_60_16               	// [17:6575]  
BB9_PU60:	// 0x157e
// BB:9 cycle count: 12
//6576             {
//6577               if(temp_Category == Last2Cat[1])

LM839:
	     .stabn 68,0,6577,LM839-_Select_Sound
	     DS = seg(_Last2Cat+1)    	// [0:6577]  Last2Cat+1
	     R4 = (_Last2Cat+1)       	// [1:6577]  Last2Cat+1
	     R3 = DS:[R4]             	// [3:6577]  
	     R4 = [BP + 1]            	// [5:6577]  temp_Category
	     cmp R3, R4               	// [7:6577]  
	     jne L_60_17              	// [8:6577]  
BB10_PU60:	// 0x1585
// BB:10 cycle count: 10
//6578                  {
//6579               	    gQuestionIdx =  Select_Question_ModeStatus_Other(temp_Category);

LM840:
	     .stabn 68,0,6579,LM840-_Select_Sound
	     SP = SP - 1              	// [0:6579]  
	     R3 = [BP + 1]            	// [1:6579]  temp_Category
	     R4 = SP + 1              	// [3:6579]  
	     [R4] = R3                	// [5:6579]  
	     call _Select_Question_ModeStatus_Other	// [7:6579]  Select_Question_ModeStatus_Other
BB11_PU60:	// 0x158c
// BB:11 cycle count: 17
	     DS = seg(_gQuestionIdx)  	// [0:6579]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:6579]  gQuestionIdx
	     DS:[R4] = R1             	// [3:6579]  
//6580               	    temp_Category= Get_Question_Category(gQuestionIdx);

LM841:
	     .stabn 68,0,6580,LM841-_Select_Sound
	     DS = seg(_gQuestionIdx)  	// [5:6580]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [6:6580]  gQuestionIdx
	     R3 = DS:[R4]             	// [8:6580]  
	     R4 = SP + 1              	// [10:6580]  
	     [R4] = R3                	// [12:6580]  
	     call _Get_Question_Category	// [14:6580]  Get_Question_Category
BB12_PU60:	// 0x1599
// BB:12 cycle count: 8
	     SP = SP + 1              	// [0:6580]  
	     [BP + 1] = R1            	// [1:6580]  temp_Category
//6581               	    Last2Catcnt =0;

LM842:
	     .stabn 68,0,6581,LM842-_Select_Sound
	     R3 = 0                   	// [2:6581]  
	     DS = seg(_Last2Catcnt)   	// [3:6581]  Last2Catcnt
	     R4 = (_Last2Catcnt)      	// [4:6581]  Last2Catcnt
	     DS:[R4] = R3             	// [6:6581]  
L_60_17:	// 0x15a0
// BB:13 cycle count: 4

LM843:
	     .stabn 68,0,6577,LM843-_Select_Sound
	     jmp L_60_15              	// [0:6577]  
L_60_16:	// 0x15a1
// BB:14 cycle count: 6
//6582                  }
//6583             	
//6584             }
//6585            else
//6586               Last2Catcnt =0; 

LM844:
	     .stabn 68,0,6586,LM844-_Select_Sound
	     R3 = 0                   	// [0:6586]  
	     DS = seg(_Last2Catcnt)   	// [1:6586]  Last2Catcnt
	     R4 = (_Last2Catcnt)      	// [2:6586]  Last2Catcnt
	     DS:[R4] = R3             	// [4:6586]  
L_60_15:	// 0x15a6
L_60_14:	// 0x15a6
// BB:15 cycle count: 169
//6595  			}
//6596  		#endif  
//6597          
//6598        
//6599        	QuestionStatus_LQ[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];		//suppress Qx from LQ;	

LM845:
	     .stabn 68,0,6599,LM845-_Select_Sound
	     DS = seg(_gQuestionIdx)  	// [0:6599]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:6599]  gQuestionIdx
	     R4 = DS:[R4]             	// [3:6599]  
	     R4 = R4 lsr 4            	// [5:6599]  
	     [BP + 2] = R4            	// [6:6599]  __save_expr_temp_13
	     R4 = [BP + 2]            	// [7:6599]  __save_expr_temp_13
	     R3 = 0                   	// [9:6599]  
	     R1 = (_QuestionStatus_LQ)	// [10:6599]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [12:6599]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [13:6599]  
	     R3 = R3 + R2, Carry      	// [14:6599]  
	     DS = R3                  	// [15:6599]  
	     R4 = DS:[R4]             	// [16:6599]  
	     [BP + 5] = R4            	// [18:6599]  lra_spill_temp_32
	     DS = seg(_gQuestionIdx)  	// [19:6599]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [20:6599]  gQuestionIdx
	     R4 = DS:[R4]             	// [22:6599]  
	     R4 = R4 & 15             	// [24:6599]  
	     R3 = 0                   	// [25:6599]  
	     R1 = (_BitMap)           	// [26:6599]  BitMap
	     R2 = seg(_BitMap)        	// [28:6599]  BitMap
	     R4 = R4 + R1             	// [29:6599]  
	     R3 = R3 + R2, Carry      	// [30:6599]  
	     DS = R3                  	// [31:6599]  
	     R4 = DS:[R4]             	// [32:6599]  
	     R3 = R4 ^ 65535          	// [34:6599]  
	     R4 = [BP + 5]            	// [36:6599]  lra_spill_temp_32
	     R4 = R4 & R3             	// [38:6599]  
	     [BP + 6] = R4            	// [39:6599]  lra_spill_temp_33
	     R4 = [BP + 2]            	// [40:6599]  __save_expr_temp_13
	     R3 = 0                   	// [42:6599]  
	     R1 = (_QuestionStatus_LQ)	// [43:6599]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [45:6599]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [46:6599]  
	     R3 = R3 + R2, Carry      	// [47:6599]  
	     DS = R3                  	// [48:6599]  
	     R3 = [BP + 6]            	// [49:6599]  lra_spill_temp_33
	     DS:[R4] = R3             	// [51:6599]  
//6600  		QuestionStatus_LQA[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];	

LM846:
	     .stabn 68,0,6600,LM846-_Select_Sound
	     DS = seg(_gQuestionIdx)  	// [53:6600]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [54:6600]  gQuestionIdx
	     R4 = DS:[R4]             	// [56:6600]  
	     R4 = R4 lsr 4            	// [58:6600]  
	     [BP + 3] = R4            	// [59:6600]  __save_expr_temp_14
	     R4 = [BP + 3]            	// [60:6600]  __save_expr_temp_14
	     R3 = 0                   	// [62:6600]  
	     R1 = (_QuestionStatus_LQA)	// [63:6600]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [65:6600]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [66:6600]  
	     R3 = R3 + R2, Carry      	// [67:6600]  
	     DS = R3                  	// [68:6600]  
	     R4 = DS:[R4]             	// [69:6600]  
	     [BP + 7] = R4            	// [71:6600]  lra_spill_temp_34
	     DS = seg(_gQuestionIdx)  	// [72:6600]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [73:6600]  gQuestionIdx
	     R4 = DS:[R4]             	// [75:6600]  
	     R4 = R4 & 15             	// [77:6600]  
	     R3 = 0                   	// [78:6600]  
	     R1 = (_BitMap)           	// [79:6600]  BitMap
	     R2 = seg(_BitMap)        	// [81:6600]  BitMap
	     R4 = R4 + R1             	// [82:6600]  
	     R3 = R3 + R2, Carry      	// [83:6600]  
	     DS = R3                  	// [84:6600]  
	     R4 = DS:[R4]             	// [85:6600]  
	     R3 = R4 ^ 65535          	// [87:6600]  
	     R4 = [BP + 7]            	// [89:6600]  lra_spill_temp_34
	     R4 = R4 & R3             	// [91:6600]  
	     [BP + 8] = R4            	// [92:6600]  lra_spill_temp_35
	     R4 = [BP + 3]            	// [93:6600]  __save_expr_temp_14
	     R3 = 0                   	// [95:6600]  
	     R1 = (_QuestionStatus_LQA)	// [96:6600]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [98:6600]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [99:6600]  
	     R3 = R3 + R2, Carry      	// [100:6600]  
	     DS = R3                  	// [101:6600]  
	     R3 = [BP + 8]            	// [102:6600]  lra_spill_temp_35
	     DS:[R4] = R3             	// [104:6600]  
//6601  		QuestionStatus_Asked[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];

LM847:
	     .stabn 68,0,6601,LM847-_Select_Sound
	     DS = seg(_gQuestionIdx)  	// [106:6601]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [107:6601]  gQuestionIdx
	     R4 = DS:[R4]             	// [109:6601]  
	     R4 = R4 lsr 4            	// [111:6601]  
	     [BP + 4] = R4            	// [112:6601]  __save_expr_temp_15
	     R4 = [BP + 4]            	// [113:6601]  __save_expr_temp_15
	     R3 = 0                   	// [115:6601]  
	     R1 = (_QuestionStatus_Asked)	// [116:6601]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [118:6601]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [119:6601]  
	     R3 = R3 + R2, Carry      	// [120:6601]  
	     DS = R3                  	// [121:6601]  
	     R4 = DS:[R4]             	// [122:6601]  
	     [BP + 9] = R4            	// [124:6601]  lra_spill_temp_36
	     DS = seg(_gQuestionIdx)  	// [125:6601]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [126:6601]  gQuestionIdx
	     R4 = DS:[R4]             	// [128:6601]  
	     R4 = R4 & 15             	// [130:6601]  
	     R3 = 0                   	// [131:6601]  
	     R1 = (_BitMap)           	// [132:6601]  BitMap
	     R2 = seg(_BitMap)        	// [134:6601]  BitMap
	     R4 = R4 + R1             	// [135:6601]  
	     R3 = R3 + R2, Carry      	// [136:6601]  
	     DS = R3                  	// [137:6601]  
	     R4 = DS:[R4]             	// [138:6601]  
	     R3 = R4 ^ 65535          	// [140:6601]  
	     R4 = [BP + 9]            	// [142:6601]  lra_spill_temp_36
	     R4 = R4 & R3             	// [144:6601]  
	     [BP + 10] = R4           	// [145:6601]  lra_spill_temp_37
	     R4 = [BP + 4]            	// [146:6601]  __save_expr_temp_15
	     R3 = 0                   	// [148:6601]  
	     R1 = (_QuestionStatus_Asked)	// [149:6601]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [151:6601]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [152:6601]  
	     R3 = R3 + R2, Carry      	// [153:6601]  
	     DS = R3                  	// [154:6601]  
	     R3 = [BP + 10]           	// [155:6601]  lra_spill_temp_37
	     DS:[R4] = R3             	// [157:6601]  
//6602        
//6603        
//6604        Save_Question_Category2Last(temp_Category);

LM848:
	     .stabn 68,0,6604,LM848-_Select_Sound
	     SP = SP - 1              	// [159:6604]  
	     R3 = [BP + 1]            	// [160:6604]  temp_Category
	     R4 = SP + 1              	// [162:6604]  
	     [R4] = R3                	// [164:6604]  
	     call _Save_Question_Category2Last	// [166:6604]  Save_Question_Category2Last
BB16_PU60:	// 0x1631
// BB:16 cycle count: 4
	     SP = SP + 1              	// [0:6604]  
//6605        Save_Question_CategoryMemory();

LM849:
	     .stabn 68,0,6605,LM849-_Select_Sound
	     call _Save_Question_CategoryMemory	// [1:6605]  Save_Question_CategoryMemory
BB17_PU60:	// 0x1634
// BB:17 cycle count: 9
//6606        cnt--;

LM850:
	     .stabn 68,0,6606,LM850-_Select_Sound
	     R4 = [BP + 0]            	// [0:6606]  cnt
	     R4 = R4 - 1              	// [2:6606]  
	     [BP + 0] = R4            	// [3:6606]  cnt
	//;;
	INT OFF
	//;;
//6607        
//6608        
//6609  	   __asm("INT OFF");
//6610        MoveSPIDriverToRAM();		

LM851:
	     .stabn 68,0,6610,LM851-_Select_Sound
	     call _MoveSPIDriverToRAM 	// [6:6610]  MoveSPIDriverToRAM
BB18_PU60:	// 0x163c
// BB:18 cycle count: 15
//6611        SPI_Flash_Sector_Erase(T_LQ_Secter_L,T_LQ_Secter_H);

LM852:
	     .stabn 68,0,6611,LM852-_Select_Sound
	     SP = SP - 2              	// [0:6611]  
	     R3 = - 12288             	// [1:6611]  
	     R4 = SP + 1              	// [3:6611]  
	     [R4] = R3                	// [5:6611]  
	     R3 = 31                  	// [7:6611]  
	     R4 = SP + 2              	// [8:6611]  
	     [R4] = R3                	// [10:6611]  
	     call _SPI_Flash_Sector_Erase	// [12:6611]  SPI_Flash_Sector_Erase
BB19_PU60:	// 0x1648
// BB:19 cycle count: 29
	     SP = SP - 3              	// [0:6611]  
//6612        SPI_Flash_SendNWords(QuestionStatus_LQ,C_QuestionRAM,T_LQ_Secter_L,T_LQ_Secter_H);

LM853:
	     .stabn 68,0,6612,LM853-_Select_Sound
	     R2 = (_QuestionStatus_LQ)	// [1:6612]  QuestionStatus_LQ
	     R3 = seg(_QuestionStatus_LQ)	// [3:6612]  QuestionStatus_LQ
	     R4 = SP + 1              	// [4:6612]  
	     [R4++] = R2              	// [6:6612]  
	     [R4] = R3                	// [8:6612]  
	     R3 = 20                  	// [10:6612]  
	     R4 = SP + 3              	// [11:6612]  
	     [R4] = R3                	// [13:6612]  
	     R3 = - 12288             	// [15:6612]  
	     R4 = SP + 4              	// [17:6612]  
	     [R4] = R3                	// [19:6612]  
	     R3 = 31                  	// [21:6612]  
	     R4 = SP + 5              	// [22:6612]  
	     [R4] = R3                	// [24:6612]  
	     call _SPI_Flash_SendNWords	// [26:6612]  SPI_Flash_SendNWords
BB20_PU60:	// 0x165f
// BB:20 cycle count: 15
	     SP = SP + 3              	// [0:6612]  
//6613        
//6614        SPI_Flash_Sector_Erase(T_Asked_Secter_L,T_Asked_Secter_H);

LM854:
	     .stabn 68,0,6614,LM854-_Select_Sound
	     R3 = - 4096              	// [1:6614]  
	     R4 = SP + 1              	// [3:6614]  
	     [R4] = R3                	// [5:6614]  
	     R3 = 31                  	// [7:6614]  
	     R4 = SP + 2              	// [8:6614]  
	     [R4] = R3                	// [10:6614]  
	     call _SPI_Flash_Sector_Erase	// [12:6614]  SPI_Flash_Sector_Erase
BB21_PU60:	// 0x166b
// BB:21 cycle count: 29
	     SP = SP - 3              	// [0:6614]  
//6615        SPI_Flash_SendNWords(QuestionStatus_Asked,C_QuestionRAM,T_Asked_Secter_L,T_Asked_Secter_H);   

LM855:
	     .stabn 68,0,6615,LM855-_Select_Sound
	     R2 = (_QuestionStatus_Asked)	// [1:6615]  QuestionStatus_Asked
	     R3 = seg(_QuestionStatus_Asked)	// [3:6615]  QuestionStatus_Asked
	     R4 = SP + 1              	// [4:6615]  
	     [R4++] = R2              	// [6:6615]  
	     [R4] = R3                	// [8:6615]  
	     R3 = 20                  	// [10:6615]  
	     R4 = SP + 3              	// [11:6615]  
	     [R4] = R3                	// [13:6615]  
	     R3 = - 4096              	// [15:6615]  
	     R4 = SP + 4              	// [17:6615]  
	     [R4] = R3                	// [19:6615]  
	     R3 = 31                  	// [21:6615]  
	     R4 = SP + 5              	// [22:6615]  
	     [R4] = R3                	// [24:6615]  
	     call _SPI_Flash_SendNWords	// [26:6615]  SPI_Flash_SendNWords
BB22_PU60:	// 0x1682
// BB:22 cycle count: 3
	     SP = SP + 5              	// [0:6615]  
	//;;
	INT FIQ,IRQ
	//;;
Lt_60_1:	// 0x1686
// BB:23 cycle count: 7
//6617          __asm("INT FIQ,IRQ");
//6618        
//6619        
//6620        
//6621       }while(cnt>0);

LM856:
	     .stabn 68,0,6621,LM856-_Select_Sound
	     R4 = [BP + 0]            	// [0:6621]  cnt
	     cmp R4, 0                	// [2:6621]  
	     je BB24_PU60             	// [3:6621]  
BB25_PU60:	// 0x1689
// BB:25 cycle count: 3
	     goto L_60_13             	// [0:0]  
BB24_PU60:	// 0x168b
// BB:24 cycle count: 6
	     SP = SP + 11             	// [0:6621]  
	     pop BP, PC from [SP]     	// [1:6621]  
LBE56:
	.endp	
	     .stabn 192,0,0,LBB56-_Select_Sound
	     .stabs "cnt:4",128,0,0,0
	     .stabs "temp_Category:4",128,0,0,1
	     .stabn 224,0,0,LBE56-_Select_Sound
LME61:
	     .stabf LME61-_Select_Sound
.code
	     .stabs "Events:F18",36,0,0,_Events

	// Program Unit: Events
.public	_Events
_Events: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//6623  }
//6624  /*******************************************************************
//6625  **********************************************************************/
//6626  void Events()
//6627  {

LM857:
	     .stabn 68,0,6627,LM857-_Events
BB1_PU61:	// 0x1687
// BB:1 cycle count: 17
	     push BP to [SP]          	// [0:6627]  
	     BP = SP + 1              	// [2:6627]  
//6628  	
//6629  	if((*P_TimerB_CNTR % 6)<3)

LM858:
	     .stabn 68,0,6629,LM858-_Events
	     R3 = 12307               	// [4:6629]  
	     R4 = 0                   	// [6:6629]  
	     DS = R4                  	// [7:6629]  
	     R3 = DS:[R3]             	// [8:6629]  
	     R4 = 6                   	// [10:6629]  
	     push R4, R3 to [SP]      	// [11:6629]  
	     call __modu1             	// [14:6629]  _modu1
BB2_PU61:	// 0x1693
// BB:2 cycle count: 6
	     SP = SP + 2              	// [0:0]  
	     cmp R1, 2                	// [1:0]  
	     ja L_61_4                	// [2:0]  
BB3_PU61:	// 0x1696
// BB:3 cycle count: 25
//6630  	{
//6631  		 R_E = C_OneMoreTime;

LM859:
	     .stabn 68,0,6631,LM859-_Events
	     R3 = 1                   	// [0:6631]  
	     DS = seg(_R_E)           	// [1:6631]  R_E
	     R4 = (_R_E)              	// [2:6631]  R_E
	     DS:[R4] = R3             	// [4:6631]  
//6632  	     Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);

LM860:
	     .stabn 68,0,6632,LM860-_Events
	     SP = SP - 2              	// [6:6632]  
	     DS = seg(_Player_Activing_Cnt)	// [7:6632]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [8:6632]  Player_Activing_Cnt
	     R3 = DS:[R4]             	// [10:6632]  
	     R4 = SP + 1              	// [12:6632]  
	     [R4] = R3                	// [14:6632]  
	     R3 = 6000                	// [16:6632]  
	     R4 = SP + 2              	// [18:6632]  
	     [R4] = R3                	// [20:6632]  
	     call _Play_Seq           	// [22:6632]  Play_Seq
BB4_PU61:	// 0x16aa
// BB:4 cycle count: 9
	     SP = SP + 1              	// [0:6632]  
//6633  	     PlayA1800_Elements(A_VLMMREN_OneMore);	

LM861:
	     .stabn 68,0,6633,LM861-_Events
	     R3 = 34                  	// [1:6633]  
	     R4 = SP + 1              	// [2:6633]  
	     [R4] = R3                	// [4:6633]  
	     call _PlayA1800_Elements 	// [6:6633]  PlayA1800_Elements
BB5_PU61:	// 0x16b1
// BB:5 cycle count: 5
	     SP = SP + 1              	// [0:6633]  
	     jmp L_61_3               	// [1:6633]  
L_61_4:	// 0x16b3
// BB:6 cycle count: 22
//6634  	}
//6635    else
//6636     {
//6637    	     R_E =C_TwoSounds;

LM862:
	     .stabn 68,0,6637,LM862-_Events
	     R3 = 2                   	// [0:6637]  
	     DS = seg(_R_E)           	// [1:6637]  R_E
	     R4 = (_R_E)              	// [2:6637]  R_E
	     DS:[R4] = R3             	// [4:6637]  
//6638    	     R_2SLoop =0;

LM863:
	     .stabn 68,0,6638,LM863-_Events
	     R3 = 0                   	// [6:6638]  
	     DS = seg(_R_2SLoop)      	// [7:6638]  R_2SLoop
	     R4 = (_R_2SLoop)         	// [8:6638]  R_2SLoop
	     DS:[R4] = R3             	// [10:6638]  
//6639    	     PlayA1800_Elements(A_VLMMREN_TwoSounds);

LM864:
	     .stabn 68,0,6639,LM864-_Events
	     SP = SP - 1              	// [12:6639]  
	     R3 = 75                  	// [13:6639]  
	     R4 = SP + 1              	// [15:6639]  
	     [R4] = R3                	// [17:6639]  
	     call _PlayA1800_Elements 	// [19:6639]  PlayA1800_Elements
BB7_PU61:	// 0x16c5
// BB:7 cycle count: 4
	     SP = SP + 1              	// [0:6639]  
//6640    	     
//6641    	     Player_Activing_Cnt =Select_Pingamerandom();	

LM865:
	     .stabn 68,0,6641,LM865-_Events
	     call _Select_Pingamerandom	// [1:6641]  Select_Pingamerandom
BB8_PU61:	// 0x16c8
// BB:8 cycle count: 5
	     DS = seg(_Player_Activing_Cnt)	// [0:6641]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:6641]  Player_Activing_Cnt
	     DS:[R4] = R1             	// [3:6641]  
L_61_3:	// 0x16cc
// BB:9 cycle count: 11
//6642     }
//6643  	SinceLastE=0;

LM866:
	     .stabn 68,0,6643,LM866-_Events
	     R3 = 0                   	// [0:6643]  
	     DS = seg(_SinceLastE)    	// [1:6643]  SinceLastE
	     R4 = (_SinceLastE)       	// [2:6643]  SinceLastE
	     DS:[R4] = R3             	// [4:6643]  
	     pop BP, PC from [SP]     	// [6:6643]  
	.endp	
LME62:
	     .stabf LME62-_Events
.code
	     .stabs "Game:F4",36,0,0,_Game

	// Program Unit: Game
.public	_Game
_Game: .proc	
	     .stabn 0xa6,0,0,1
	// temp = 0
	// old_frame_pointer = 1
	// return_address = 2
//6645  
//6646  /*******************************************************************
//6647  **********************************************************************/
//6648  unsigned int Game()
//6649  {

LM867:
	     .stabn 68,0,6649,LM867-_Game
BB1_PU62:	// 0x16d2
// BB:1 cycle count: 53
	     push BP to [SP]          	// [0:6649]  
	     SP = SP - 1              	// [2:6649]  
	     BP = SP + 1              	// [3:6649]  
LBB57:
//6650  	unsigned int temp;
//6651  
//6652      R_E =0;

LM868:
	     .stabn 68,0,6652,LM868-_Game
	     R3 = 0                   	// [5:6652]  
	     DS = seg(_R_E)           	// [6:6652]  R_E
	     R4 = (_R_E)              	// [7:6652]  R_E
	     DS:[R4] = R3             	// [9:6652]  
//6653  
//6654      firstFlag_23b&=~0x800;

LM869:
	     .stabn 68,0,6654,LM869-_Game
	     DS = seg(_firstFlag_23b) 	// [11:6654]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [12:6654]  firstFlag_23b
	     R4 = DS:[R4]             	// [14:6654]  
	     R3 = R4 & 63487          	// [16:6654]  
	     DS = seg(_firstFlag_23b) 	// [18:6654]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [19:6654]  firstFlag_23b
	     DS:[R4] = R3             	// [21:6654]  
//6655      CheaterFlag =0;

LM870:
	     .stabn 68,0,6655,LM870-_Game
	     R3 = 0                   	// [23:6655]  
	     DS = seg(_CheaterFlag)   	// [24:6655]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [25:6655]  CheaterFlag
	     DS:[R4] = R3             	// [27:6655]  
//6656      Eventflag =0;

LM871:
	     .stabn 68,0,6656,LM871-_Game
	     R3 = 0                   	// [29:6656]  
	     DS = seg(_Eventflag)     	// [30:6656]  Eventflag
	     R4 = (_Eventflag)        	// [31:6656]  Eventflag
	     DS:[R4] = R3             	// [33:6656]  
//6657  	End20flag =0;

LM872:
	     .stabn 68,0,6657,LM872-_Game
	     R3 = 0                   	// [35:6657]  
	     DS = seg(_End20flag)     	// [36:6657]  End20flag
	     R4 = (_End20flag)        	// [37:6657]  End20flag
	     DS:[R4] = R3             	// [39:6657]  
//6658       
//6659  	Key_Event =0;

LM873:
	     .stabn 68,0,6659,LM873-_Game
	     R3 = 0                   	// [41:6659]  
	     DS = seg(_Key_Event)     	// [42:6659]  Key_Event
	     R4 = (_Key_Event)        	// [43:6659]  Key_Event
	     DS:[R4] = R3             	// [45:6659]  
//6660  	Key_activeflag = ALL_Key_Enable;

LM874:
	     .stabn 68,0,6660,LM874-_Game
	     R3 = 7                   	// [47:6660]  
	     DS = seg(_Key_activeflag)	// [48:6660]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [49:6660]  Key_activeflag
	     DS:[R4] = R3             	// [51:6660]  
L_62_28:	// 0x16fe
// BB:2 cycle count: 3
//6675       
//6676     while(1)
//6677     	{
//6678  	    
//6679  	    WatchdogClear();

LM875:
	     .stabn 68,0,6679,LM875-_Game
	     call _WatchdogClear      	// [0:6679]  WatchdogClear
BB3_PU62:	// 0x1700
// BB:3 cycle count: 10
//6680     	  
//6681     	  	if(Sleepflag) 

LM876:
	     .stabn 68,0,6681,LM876-_Game
	     DS = seg(_Sleepflag)     	// [0:6681]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:6681]  Sleepflag
	     R4 = DS:[R4]             	// [3:6681]  
	     cmp R4, 0                	// [5:6681]  
	     je L_62_30               	// [6:6681]  
BB4_PU62:	// 0x1706
// BB:4 cycle count: 7
//6682  		     return C_Finish ;   

LM877:
	     .stabn 68,0,6682,LM877-_Game
	     R1 = - 1                 	// [0:6682]  
	     SP = SP + 1              	// [1:6682]  
	     pop BP, PC from [SP]     	// [2:6682]  
L_62_30:	// 0x1709
// BB:5 cycle count: 37
//6683  	    
//6684  	    CheaterFlag =0;

LM878:
	     .stabn 68,0,6684,LM878-_Game
	     R3 = 0                   	// [0:6684]  
	     DS = seg(_CheaterFlag)   	// [1:6684]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [2:6684]  CheaterFlag
	     DS:[R4] = R3             	// [4:6684]  
//6685  	    PauseFlag =0;

LM879:
	     .stabn 68,0,6685,LM879-_Game
	     R3 = 0                   	// [6:6685]  
	     DS = seg(_PauseFlag)     	// [7:6685]  PauseFlag
	     R4 = (_PauseFlag)        	// [8:6685]  PauseFlag
	     DS:[R4] = R3             	// [10:6685]  
//6686  	    
//6687  	    Cn++;    

LM880:
	     .stabn 68,0,6687,LM880-_Game
	     DS = seg(_Cn)            	// [12:6687]  Cn
	     R4 = (_Cn)               	// [13:6687]  Cn
	     R4 = DS:[R4]             	// [15:6687]  
	     R4 = R4 + 1              	// [17:6687]  
	     DS = seg(_Cn)            	// [18:6687]  Cn
	     R3 = (_Cn)               	// [19:6687]  Cn
	     DS:[R3] = R4             	// [21:6687]  
//6688          SinceLastE++;

LM881:
	     .stabn 68,0,6688,LM881-_Game
	     DS = seg(_SinceLastE)    	// [23:6688]  SinceLastE
	     R4 = (_SinceLastE)       	// [24:6688]  SinceLastE
	     R4 = DS:[R4]             	// [26:6688]  
	     R4 = R4 + 1              	// [28:6688]  
	     DS = seg(_SinceLastE)    	// [29:6688]  SinceLastE
	     R3 = (_SinceLastE)       	// [30:6688]  SinceLastE
	     DS:[R3] = R4             	// [32:6688]  
//6689          
//6690  		if((Get_Num_CategoryMemory()>100)&&(Tie ==0))

LM882:
	     .stabn 68,0,6690,LM882-_Game
	     call _Get_Num_CategoryMemory	// [34:6690]  Get_Num_CategoryMemory
BB6_PU62:	// 0x1727
// BB:6 cycle count: 6
	     cmp R1, 100              	// [0:6690]  
	     jbe L_62_31              	// [2:6690]  
BB7_PU62:	// 0x172a
// BB:7 cycle count: 10
	     DS = seg(_Tie)           	// [0:6690]  Tie
	     R4 = (_Tie)              	// [1:6690]  Tie
	     R4 = DS:[R4]             	// [3:6690]  
	     cmp R4, 0                	// [5:6690]  
	     jne L_62_31              	// [6:6690]  
L_62_32:	// 0x1730
// BB:8 cycle count: 3
//6691  			break;

LM883:
	     .stabn 68,0,6691,LM883-_Game
	     goto Lt_62_1             	// [0:6691]  
L_62_31:	// 0x1732
// BB:9 cycle count: 10
//6692  
//6693          if((Cn>8)&&(Registerd_Num>1)&&(SinceLastE>4)&&((*P_TimerB_CNTR % 4)==0))

LM884:
	     .stabn 68,0,6693,LM884-_Game
	     DS = seg(_Cn)            	// [0:6693]  Cn
	     R4 = (_Cn)               	// [1:6693]  Cn
	     R4 = DS:[R4]             	// [3:6693]  
	     cmp R4, 8                	// [5:6693]  
	     jbe L_62_34              	// [6:6693]  
BB10_PU62:	// 0x1738
// BB:10 cycle count: 10
	     DS = seg(_Registerd_Num) 	// [0:6693]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6693]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6693]  
	     cmp R4, 1                	// [5:6693]  
	     jbe L_62_34              	// [6:6693]  
L_62_37:	// 0x173e
// BB:11 cycle count: 10
	     DS = seg(_SinceLastE)    	// [0:6693]  SinceLastE
	     R4 = (_SinceLastE)       	// [1:6693]  SinceLastE
	     R4 = DS:[R4]             	// [3:6693]  
	     cmp R4, 4                	// [5:6693]  
	     jbe L_62_34              	// [6:6693]  
L_62_36:	// 0x1744
// BB:12 cycle count: 12
	     R3 = 12307               	// [0:6693]  
	     R4 = 0                   	// [2:6693]  
	     DS = R4                  	// [3:6693]  
	     R4 = DS:[R3]             	// [4:6693]  
	     R4 = R4 & 3              	// [6:6693]  
	     cmp R4, 0                	// [7:6693]  
	     jne L_62_34              	// [8:6693]  
L_62_35:	// 0x174c
// BB:13 cycle count: 3
//6694          	Events();

LM885:
	     .stabn 68,0,6694,LM885-_Game
	     call _Events             	// [0:6694]  Events
BB14_PU62:	// 0x174e
// BB:14 cycle count: 4
	     jmp L_62_33              	// [0:6694]  
L_62_34:	// 0x174f
// BB:15 cycle count: 3
//6695          else      
//6696              Player_Activing_Cnt =Select_Pingamerandom();//SelectNextPingame(Player_Activing_Cnt);

LM886:
	     .stabn 68,0,6696,LM886-_Game
	     call _Select_Pingamerandom	// [0:6696]  Select_Pingamerandom
BB16_PU62:	// 0x1751
// BB:16 cycle count: 5
	     DS = seg(_Player_Activing_Cnt)	// [0:6696]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:6696]  Player_Activing_Cnt
	     DS:[R4] = R1             	// [3:6696]  
L_62_33:	// 0x1755
// BB:17 cycle count: 3
//6697              
//6698              
//6699  		    Select_Sound();

LM887:
	     .stabn 68,0,6699,LM887-_Game
	     call _Select_Sound       	// [0:6699]  Select_Sound
BB18_PU62:	// 0x1757
// BB:18 cycle count: 10
//6700  		    
//6701  		   if(Tie ==0) 

LM888:
	     .stabn 68,0,6701,LM888-_Game
	     DS = seg(_Tie)           	// [0:6701]  Tie
	     R4 = (_Tie)              	// [1:6701]  Tie
	     R4 = DS:[R4]             	// [3:6701]  
	     cmp R4, 0                	// [5:6701]  
	     jne L_62_38              	// [6:6701]  
BB19_PU62:	// 0x175d
// BB:19 cycle count: 6
//6702  		     Answerflag =1;

LM889:
	     .stabn 68,0,6702,LM889-_Game
	     R3 = 1                   	// [0:6702]  
	     DS = seg(_Answerflag)    	// [1:6702]  Answerflag
	     R4 = (_Answerflag)       	// [2:6702]  Answerflag
	     DS:[R4] = R3             	// [4:6702]  
L_62_38:	// 0x1762
// BB:20 cycle count: 3
//6703  		     
//6704  			Answer_F();

LM890:
	     .stabn 68,0,6704,LM890-_Game
	     call _Answer_F           	// [0:6704]  Answer_F
BB21_PU62:	// 0x1764
// BB:21 cycle count: 22
//6705              Answerflag =0;

LM891:
	     .stabn 68,0,6705,LM891-_Game
	     R3 = 0                   	// [0:6705]  
	     DS = seg(_Answerflag)    	// [1:6705]  Answerflag
	     R4 = (_Answerflag)       	// [2:6705]  Answerflag
	     DS:[R4] = R3             	// [4:6705]  
//6706              
//6707  		    R_E =0;

LM892:
	     .stabn 68,0,6707,LM892-_Game
	     R3 = 0                   	// [6:6707]  
	     DS = seg(_R_E)           	// [7:6707]  R_E
	     R4 = (_R_E)              	// [8:6707]  R_E
	     DS:[R4] = R3             	// [10:6707]  
//6708  		  
//6709  		   if(Sleepflag) 

LM893:
	     .stabn 68,0,6709,LM893-_Game
	     DS = seg(_Sleepflag)     	// [12:6709]  Sleepflag
	     R4 = (_Sleepflag)        	// [13:6709]  Sleepflag
	     R4 = DS:[R4]             	// [15:6709]  
	     cmp R4, 0                	// [17:6709]  
	     je L_62_39               	// [18:6709]  
BB22_PU62:	// 0x1774
// BB:22 cycle count: 7
//6710  		     return C_Finish ;  

LM894:
	     .stabn 68,0,6710,LM894-_Game
	     R1 = - 1                 	// [0:6710]  
	     SP = SP + 1              	// [1:6710]  
	     pop BP, PC from [SP]     	// [2:6710]  
L_62_39:	// 0x1777
// BB:23 cycle count: 10
//6711  		  
//6712  		  if(End20flag)

LM895:
	     .stabn 68,0,6712,LM895-_Game
	     DS = seg(_End20flag)     	// [0:6712]  End20flag
	     R4 = (_End20flag)        	// [1:6712]  End20flag
	     R4 = DS:[R4]             	// [3:6712]  
	     cmp R4, 0                	// [5:6712]  
	     je L_62_40               	// [6:6712]  
BB24_PU62:	// 0x177d
// BB:24 cycle count: 8
//6713  		  	  return C_End;

LM896:
	     .stabn 68,0,6713,LM896-_Game
	     R1 = - 4077              	// [0:6713]  
	     SP = SP + 1              	// [2:6713]  
	     pop BP, PC from [SP]     	// [3:6713]  
L_62_40:	// 0x1781
// BB:25 cycle count: 3
//6714  		
//6715          temp=Get_Length_Pingame();

LM897:
	     .stabn 68,0,6715,LM897-_Game
	     call _Get_Length_Pingame 	// [0:6715]  Get_Length_Pingame
BB26_PU62:	// 0x1783
// BB:26 cycle count: 11
	     [BP + 0] = R1            	// [0:6715]  temp
//6716          
//6717          if((Registerd_Num>1)&&(temp<=1))

LM898:
	     .stabn 68,0,6717,LM898-_Game
	     DS = seg(_Registerd_Num) 	// [1:6717]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [2:6717]  Registerd_Num
	     R4 = DS:[R4]             	// [4:6717]  
	     cmp R4, 1                	// [6:6717]  
	     jbe L_62_41              	// [7:6717]  
BB27_PU62:	// 0x178a
// BB:27 cycle count: 7
	     R4 = [BP + 0]            	// [0:6717]  temp
	     cmp R4, 1                	// [2:6717]  
	     ja L_62_41               	// [3:6717]  
L_62_42:	// 0x178d
// BB:28 cycle count: 4
//6718          	break;

LM899:
	     .stabn 68,0,6718,LM899-_Game
	     jmp Lt_62_1              	// [0:6718]  
L_62_41:	// 0x178e
// BB:29 cycle count: 10
//6719          	
//6720         if((Registerd_Num==1)&&(temp==0))

LM900:
	     .stabn 68,0,6720,LM900-_Game
	     DS = seg(_Registerd_Num) 	// [0:6720]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6720]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6720]  
	     cmp R4, 1                	// [5:6720]  
	     jne L_62_43              	// [6:6720]  
BB30_PU62:	// 0x1794
// BB:30 cycle count: 7
	     R4 = [BP + 0]            	// [0:6720]  temp
	     cmp R4, 0                	// [2:6720]  
	     jne L_62_43              	// [3:6720]  
L_62_44:	// 0x1797
// BB:31 cycle count: 4
//6721  	   	     break;

LM901:
	     .stabn 68,0,6721,LM901-_Game
	     jmp Lt_62_1              	// [0:6721]  
L_62_43:	// 0x1798
// BB:32 cycle count: 3

LM902:
	     .stabn 68,0,6720,LM902-_Game
	     goto L_62_28             	// [0:6720]  
L_62_29:	// 0x179a
Lt_62_1:	// 0x179a
// BB:33 cycle count: 22
//6726  
//6727  	
//6728  	
//6729  
//6730  	Key_Event =0;

LM903:
	     .stabn 68,0,6730,LM903-_Game
	     R3 = 0                   	// [0:6730]  
	     DS = seg(_Key_Event)     	// [1:6730]  Key_Event
	     R4 = (_Key_Event)        	// [2:6730]  Key_Event
	     DS:[R4] = R3             	// [4:6730]  
//6731  	Key_activeflag = 0;

LM904:
	     .stabn 68,0,6731,LM904-_Game
	     R3 = 0                   	// [6:6731]  
	     DS = seg(_Key_activeflag)	// [7:6731]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6731]  Key_activeflag
	     DS:[R4] = R3             	// [10:6731]  
//6732  
//6733  
//6734  //   Save_Some_data();
//6735     
//6736     if(Tie ==0)

LM905:
	     .stabn 68,0,6736,LM905-_Game
	     DS = seg(_Tie)           	// [12:6736]  Tie
	     R4 = (_Tie)              	// [13:6736]  Tie
	     R4 = DS:[R4]             	// [15:6736]  
	     cmp R4, 0                	// [17:6736]  
	     jne L_62_46              	// [18:6736]  
BB34_PU62:	// 0x17aa
// BB:34 cycle count: 8
//6737   	   return C_End;

LM906:
	     .stabn 68,0,6737,LM906-_Game
	     R1 = - 4077              	// [0:6737]  
	     SP = SP + 1              	// [2:6737]  
	     pop BP, PC from [SP]     	// [3:6737]  
L_62_46:	// 0x17ae
// BB:35 cycle count: 27
//6738     else
//6739        Add_SomePlayer_Point(1,Rounds,Pingame);	

LM907:
	     .stabn 68,0,6739,LM907-_Game
	     SP = SP - 5              	// [0:6739]  
	     R3 = 1                   	// [1:6739]  
	     R4 = SP + 1              	// [2:6739]  
	     [R4] = R3                	// [4:6739]  
	     R2 = (_Rounds)           	// [6:6739]  Rounds
	     R3 = seg(_Rounds)        	// [8:6739]  Rounds
	     R4 = SP + 2              	// [9:6739]  
	     [R4++] = R2              	// [11:6739]  
	     [R4] = R3                	// [13:6739]  
	     R2 = (_Pingame)          	// [15:6739]  Pingame
	     R3 = seg(_Pingame)       	// [17:6739]  Pingame
	     R4 = SP + 4              	// [18:6739]  
	     [R4++] = R2              	// [20:6739]  
	     [R4] = R3                	// [22:6739]  
	     call _Add_SomePlayer_Point	// [24:6739]  Add_SomePlayer_Point
BB36_PU62:	// 0x17c3
// BB:36 cycle count: 1
	     SP = SP + 5              	// [0:6739]  
L_62_45:	// 0x17c4
// BB:37 cycle count: 6
	     SP = SP + 1              	// [0:6739]  
	     pop BP, PC from [SP]     	// [1:6739]  
LBE57:
	.endp	
	     .stabn 192,0,0,LBB57-_Game
	     .stabs "temp:4",128,0,0,0
	     .stabn 224,0,0,LBE57-_Game
LME63:
	     .stabf LME63-_Game
.code
	     .stabs "Answer_F:F18",36,0,0,_Answer_F

	// Program Unit: Answer_F
.public	_Answer_F
_Answer_F: .proc	
	     .stabn 0xa6,0,0,10
	// temp = 0
	// temp1 = 1
	// round = 2
	// Currentsound = 3
	// timeout_t = 4
	// __save_expr_temp_16 = 5
	// __save_expr_temp_17 = 6
	// old_frame_pointer = 10
	// return_address = 11
	// lra_spill_temp_38 = 7
	// lra_spill_temp_39 = 8
	// lgra_spill_temp_40 = 9
//6744  
//6745  
//6746  
//6747  void Answer_F()
//6748  {

LM908:
	     .stabn 68,0,6748,LM908-_Answer_F
BB1_PU63:	// 0x17c6
// BB:1 cycle count: 31
	     push BP to [SP]          	// [0:6748]  
	     SP = SP - 10             	// [2:6748]  
	     BP = SP + 1              	// [3:6748]  
LBB58:
//6749      unsigned int temp =0;

LM909:
	     .stabn 68,0,6749,LM909-_Answer_F
	     R4 = 0                   	// [5:6749]  
	     [BP + 0] = R4            	// [6:6749]  temp
//6750      unsigned int temp1=0;   

LM910:
	     .stabn 68,0,6750,LM910-_Answer_F
	     R4 = 0                   	// [7:6750]  
	     [BP + 1] = R4            	// [8:6750]  temp1
//6751  	unsigned int  round =0;//Get_Num_CategoryMemory();

LM911:
	     .stabn 68,0,6751,LM911-_Answer_F
	     R4 = 0                   	// [9:6751]  
	     [BP + 2] = R4            	// [10:6751]  round
//6752      unsigned int  Currentsound =0;

LM912:
	     .stabn 68,0,6752,LM912-_Answer_F
	     R4 = 0                   	// [11:6752]  
	     [BP + 3] = R4            	// [12:6752]  Currentsound
//6753      unsigned int  timeout_t =0;

LM913:
	     .stabn 68,0,6753,LM913-_Answer_F
	     R4 = 0                   	// [13:6753]  
	     [BP + 4] = R4            	// [14:6753]  timeout_t
//6754      //unsigned int Category= Get_Question_Category(gQuestionIdx);
//6755  
//6756  	//LastCategory_Series[Currentsound] = Category;
//6757       End20flag =0;

LM914:
	     .stabn 68,0,6757,LM914-_Answer_F
	     R3 = 0                   	// [15:6757]  
	     DS = seg(_End20flag)     	// [16:6757]  End20flag
	     R4 = (_End20flag)        	// [17:6757]  End20flag
	     DS:[R4] = R3             	// [19:6757]  
//6758    
//6759  
//6760       if((Restart ==0)&&(CurrentRound==1))//(Cn ==2)&&

LM915:
	     .stabn 68,0,6760,LM915-_Answer_F
	     DS = seg(_Restart)       	// [21:6760]  Restart
	     R4 = (_Restart)          	// [22:6760]  Restart
	     R4 = DS:[R4]             	// [24:6760]  
	     cmp R4, 0                	// [26:6760]  
	     je BB2_PU63              	// [27:6760]  
BB117_PU63:	// 0x17df
// BB:117 cycle count: 3
	     goto L_63_60             	// [0:0]  
BB2_PU63:	// 0x17e1
// BB:2 cycle count: 10
	     DS = seg(_CurrentRound)  	// [0:6760]  CurrentRound
	     R4 = (_CurrentRound)     	// [1:6760]  CurrentRound
	     R4 = DS:[R4]             	// [3:6760]  
	     cmp R4, 1                	// [5:6760]  
	     jne L_63_60              	// [6:6760]  
L_63_61:	// 0x17e7
// BB:3 cycle count: 22
//6761       {
//6762       	Key_activeflag =Only_Play_KeyEnable;

LM916:
	     .stabn 68,0,6762,LM916-_Answer_F
	     R3 = 7                   	// [0:6762]  
	     DS = seg(_Key_activeflag)	// [1:6762]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [2:6762]  Key_activeflag
	     DS:[R4] = R3             	// [4:6762]  
//6763       	Key_Event =0;  

LM917:
	     .stabn 68,0,6763,LM917-_Answer_F
	     R3 = 0                   	// [6:6763]  
	     DS = seg(_Key_Event)     	// [7:6763]  Key_Event
	     R4 = (_Key_Event)        	// [8:6763]  Key_Event
	     DS:[R4] = R3             	// [10:6763]  
//6764       	//delay_time(8);
//6765       	
//6766       	if(Cn ==2)

LM918:
	     .stabn 68,0,6766,LM918-_Answer_F
	     DS = seg(_Cn)            	// [12:6766]  Cn
	     R4 = (_Cn)               	// [13:6766]  Cn
	     R4 = DS:[R4]             	// [15:6766]  
	     cmp R4, 2                	// [17:6766]  
	     jne L_63_63              	// [18:6766]  
BB4_PU63:	// 0x17f7
// BB:4 cycle count: 10
//6767       	{
//6768       	  	 if(Registerd_Num==1)	

LM919:
	     .stabn 68,0,6768,LM919-_Answer_F
	     DS = seg(_Registerd_Num) 	// [0:6768]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6768]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6768]  
	     cmp R4, 1                	// [5:6768]  
	     jne L_63_65              	// [6:6768]  
BB5_PU63:	// 0x17fd
// BB:5 cycle count: 9
//6769  		 	PlayA1800_Elements(A_VLMMREN_Rule_02b);

LM920:
	     .stabn 68,0,6769,LM920-_Answer_F
	     SP = SP - 1              	// [0:6769]  
	     R3 = 51                  	// [1:6769]  
	     R4 = SP + 1              	// [2:6769]  
	     [R4] = R3                	// [4:6769]  
	     call _PlayA1800_Elements 	// [6:6769]  PlayA1800_Elements
BB6_PU63:	// 0x1804
// BB:6 cycle count: 5
	     SP = SP + 1              	// [0:6769]  
	     jmp L_63_64              	// [1:6769]  
L_63_65:	// 0x1806
// BB:7 cycle count: 9
//6770  		  else
//6771  		 	 PlayA1800_Elements(A_VLMMREN_Rule_02);	

LM921:
	     .stabn 68,0,6771,LM921-_Answer_F
	     SP = SP - 1              	// [0:6771]  
	     R3 = 50                  	// [1:6771]  
	     R4 = SP + 1              	// [2:6771]  
	     [R4] = R3                	// [4:6771]  
	     call _PlayA1800_Elements 	// [6:6771]  PlayA1800_Elements
BB8_PU63:	// 0x180d
// BB:8 cycle count: 1
	     SP = SP + 1              	// [0:6771]  
L_63_64:	// 0x180e
// BB:9 cycle count: 4

LM922:
	     .stabn 68,0,6768,LM922-_Answer_F
	     jmp L_63_62              	// [0:6768]  
L_63_63:	// 0x180f
// BB:10 cycle count: 10
//6772    		
//6773       	}
//6774          else if((Cn ==3)&&(Registerd_Num>1))

LM923:
	     .stabn 68,0,6774,LM923-_Answer_F
	     DS = seg(_Cn)            	// [0:6774]  Cn
	     R4 = (_Cn)               	// [1:6774]  Cn
	     R4 = DS:[R4]             	// [3:6774]  
	     cmp R4, 3                	// [5:6774]  
	     jne L_63_66              	// [6:6774]  
BB11_PU63:	// 0x1815
// BB:11 cycle count: 10
	     DS = seg(_Registerd_Num) 	// [0:6774]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6774]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6774]  
	     cmp R4, 1                	// [5:6774]  
	     jbe L_63_66              	// [6:6774]  
L_63_67:	// 0x181b
// BB:12 cycle count: 10
//6775          {
//6776          	 PlayA1800_Elements(A_VLMMREN_Rule_12);

LM924:
	     .stabn 68,0,6776,LM924-_Answer_F
	     SP = SP - 1              	// [0:6776]  
	     R3 = 64                  	// [1:6776]  
	     R4 = SP + 1              	// [3:6776]  
	     [R4] = R3                	// [5:6776]  
	     call _PlayA1800_Elements 	// [7:6776]  PlayA1800_Elements
BB13_PU63:	// 0x1823
// BB:13 cycle count: 1
	     SP = SP + 1              	// [0:6776]  
L_63_66:	// 0x1824
L_63_62:	// 0x1824
L_63_60:	// 0x1824
// BB:14 cycle count: 24
//6778          }  	
//6779       	
//6780  
//6781       }
//6782             Key_activeflag =0;

LM925:
	     .stabn 68,0,6782,LM925-_Answer_F
	     R3 = 0                   	// [0:6782]  
	     DS = seg(_Key_activeflag)	// [1:6782]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [2:6782]  Key_activeflag
	     DS:[R4] = R3             	// [4:6782]  
//6783             Key_Event=0;

LM926:
	     .stabn 68,0,6783,LM926-_Answer_F
	     R3 = 0                   	// [6:6783]  
	     DS = seg(_Key_Event)     	// [7:6783]  Key_Event
	     R4 = (_Key_Event)        	// [8:6783]  Key_Event
	     DS:[R4] = R3             	// [10:6783]  
//6784             PlayQuestionflag =1;

LM927:
	     .stabn 68,0,6784,LM927-_Answer_F
	     R3 = 1                   	// [12:6784]  
	     DS = seg(_PlayQuestionflag)	// [13:6784]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [14:6784]  PlayQuestionflag
	     DS:[R4] = R3             	// [16:6784]  
//6785             TwoKeyflag = Playbutton;

LM928:
	     .stabn 68,0,6785,LM928-_Answer_F
	     R3 = 1                   	// [18:6785]  
	     DS = seg(_TwoKeyflag)    	// [19:6785]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [20:6785]  TwoKeyflag
	     DS:[R4] = R3             	// [22:6785]  
L_63_68:	// 0x1838
// BB:15 cycle count: 15
//6786             
//6787            
//6788             do
//6789             {
//6790             	   PauseFlag =0;

LM929:
	     .stabn 68,0,6790,LM929-_Answer_F
	     R3 = 0                   	// [0:6790]  
	     DS = seg(_PauseFlag)     	// [1:6790]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:6790]  PauseFlag
	     DS:[R4] = R3             	// [4:6790]  
//6791             	  
//6792             	   delay_time(8);

LM930:
	     .stabn 68,0,6792,LM930-_Answer_F
	     SP = SP - 1              	// [6:6792]  
	     R3 = 8                   	// [7:6792]  
	     R4 = SP + 1              	// [8:6792]  
	     [R4] = R3                	// [10:6792]  
	     call _delay_time         	// [12:6792]  delay_time
BB16_PU63:	// 0x1844
// BB:16 cycle count: 4
	     SP = SP + 1              	// [0:6792]  
//6793                 Ask_Question();//PlayA1800_Elements(Get_Question_Sound(gQuestionIdx));

LM931:
	     .stabn 68,0,6793,LM931-_Answer_F
	     call _Ask_Question       	// [1:6793]  Ask_Question
BB17_PU63:	// 0x1847
// BB:17 cycle count: 10
//6794                
//6795              if(Registerd_Num>1)	

LM932:
	     .stabn 68,0,6795,LM932-_Answer_F
	     DS = seg(_Registerd_Num) 	// [0:6795]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6795]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6795]  
	     cmp R4, 1                	// [5:6795]  
	     jbe L_63_69              	// [6:6795]  
BB18_PU63:	// 0x184d
// BB:18 cycle count: 19
//6796                 Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);

LM933:
	     .stabn 68,0,6796,LM933-_Answer_F
	     SP = SP - 2              	// [0:6796]  
	     DS = seg(_Player_Activing_Cnt)	// [1:6796]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [2:6796]  Player_Activing_Cnt
	     R3 = DS:[R4]             	// [4:6796]  
	     R4 = SP + 1              	// [6:6796]  
	     [R4] = R3                	// [8:6796]  
	     R3 = 6000                	// [10:6796]  
	     R4 = SP + 2              	// [12:6796]  
	     [R4] = R3                	// [14:6796]  
	     call _Play_Seq           	// [16:6796]  Play_Seq
BB19_PU63:	// 0x185c
// BB:19 cycle count: 1
	     SP = SP + 2              	// [0:6796]  
L_63_69:	// 0x185d
Lt_63_1:	// 0x185d
// BB:20 cycle count: 10
//6797                //PlayA1800_Elements(A_VLMMREN_Player_01+Player_Activing_Cnt);
//6798             }while(PauseFlag); 

LM934:
	     .stabn 68,0,6798,LM934-_Answer_F
	     DS = seg(_PauseFlag)     	// [0:6798]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6798]  PauseFlag
	     R4 = DS:[R4]             	// [3:6798]  
	     cmp R4, 0                	// [5:6798]  
	     jne L_63_68              	// [6:6798]  
BB21_PU63:	// 0x1863
// BB:21 cycle count: 15
//6799             
//6800             PlayQuestionflag =0;

LM935:
	     .stabn 68,0,6800,LM935-_Answer_F
	     R3 = 0                   	// [0:6800]  
	     DS = seg(_PlayQuestionflag)	// [1:6800]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [2:6800]  PlayQuestionflag
	     DS:[R4] = R3             	// [4:6800]  
//6801  		   TwoKeyflag =0;

LM936:
	     .stabn 68,0,6801,LM936-_Answer_F
	     R3 = 0                   	// [6:6801]  
	     DS = seg(_TwoKeyflag)    	// [7:6801]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [8:6801]  TwoKeyflag
	     DS:[R4] = R3             	// [10:6801]  
//6802  
//6803       
//6804         round =Get_Num_CategoryMemory();

LM937:
	     .stabn 68,0,6804,LM937-_Answer_F
	     call _Get_Num_CategoryMemory	// [12:6804]  Get_Num_CategoryMemory
BB22_PU63:	// 0x186f
// BB:22 cycle count: 11
	     [BP + 2] = R1            	// [0:6804]  round
//6805         
//6806        if(Cn<=5)  

LM938:
	     .stabn 68,0,6806,LM938-_Answer_F
	     DS = seg(_Cn)            	// [1:6806]  Cn
	     R4 = (_Cn)               	// [2:6806]  Cn
	     R4 = DS:[R4]             	// [4:6806]  
	     cmp R4, 5                	// [6:6806]  
	     ja L_63_71               	// [7:6806]  
BB23_PU63:	// 0x1876
// BB:23 cycle count: 7
//6807         timeout_t =10*16;

LM939:
	     .stabn 68,0,6807,LM939-_Answer_F
	     R4 = 160                 	// [0:6807]  
	     [BP + 4] = R4            	// [2:6807]  timeout_t
	     jmp L_63_70              	// [3:6807]  
L_63_71:	// 0x187a
// BB:24 cycle count: 8
//6808        else
//6809        {
//6810        	 timeout_t=2*Cn*16;

LM940:
	     .stabn 68,0,6810,LM940-_Answer_F
	     DS = seg(_Cn)            	// [0:6810]  Cn
	     R4 = (_Cn)               	// [1:6810]  Cn
	     R4 = DS:[R4]             	// [3:6810]  
	     R4 = R4 lsl 4            	// [5:6810]  
	     R4 = R4 lsl 1            	// [6:6810]  
	     [BP + 4] = R4            	// [7:6810]  timeout_t
L_63_70:	// 0x1881
// BB:25 cycle count: 6
//6811        	
//6812        }
//6813        Key_Event=0;

LM941:
	     .stabn 68,0,6813,LM941-_Answer_F
	     R3 = 0                   	// [0:6813]  
	     DS = seg(_Key_Event)     	// [1:6813]  Key_Event
	     R4 = (_Key_Event)        	// [2:6813]  Key_Event
	     DS:[R4] = R3             	// [4:6813]  
L_63_72:	// 0x1886
// BB:26 cycle count: 10
//6814       while(1)
//6815       	{
//6816   	
//6817   	
//6818   	       if(Sleepflag) 

LM942:
	     .stabn 68,0,6818,LM942-_Answer_F
	     DS = seg(_Sleepflag)     	// [0:6818]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:6818]  Sleepflag
	     R4 = DS:[R4]             	// [3:6818]  
	     cmp R4, 0                	// [5:6818]  
	     je L_63_74               	// [6:6818]  
BB27_PU63:	// 0x188c
// BB:27 cycle count: 6
//6819  		     return C_Finish ;  

LM943:
	     .stabn 68,0,6819,LM943-_Answer_F
	     SP = SP + 10             	// [0:6819]  
	     pop BP, PC from [SP]     	// [1:6819]  
L_63_74:	// 0x188e
// BB:28 cycle count: 29
//6820   	
//6821       	   	
//6822       	   Key_activeflag =ALL_TouchEnable;	

LM944:
	     .stabn 68,0,6822,LM944-_Answer_F
	     R3 = 240                 	// [0:6822]  
	     DS = seg(_Key_activeflag)	// [2:6822]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [3:6822]  Key_activeflag
	     DS:[R4] = R3             	// [5:6822]  
//6823       	   //Key_Event=0;
//6824  		   TwoKeyflag = Playbutton;

LM945:
	     .stabn 68,0,6824,LM945-_Answer_F
	     R3 = 1                   	// [7:6824]  
	     DS = seg(_TwoKeyflag)    	// [8:6824]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [9:6824]  TwoKeyflag
	     DS:[R4] = R3             	// [11:6824]  
//6825       	   PlayQuestionflag =1;

LM946:
	     .stabn 68,0,6825,LM946-_Answer_F
	     R3 = 1                   	// [13:6825]  
	     DS = seg(_PlayQuestionflag)	// [14:6825]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [15:6825]  PlayQuestionflag
	     DS:[R4] = R3             	// [17:6825]  
//6826       	   
//6827       	   PlayA1800_ElementsInit(SFX_Timer);

LM947:
	     .stabn 68,0,6827,LM947-_Answer_F
	     SP = SP - 1              	// [19:6827]  
	     R3 = 128                 	// [20:6827]  
	     R4 = SP + 1              	// [22:6827]  
	     [R4] = R3                	// [24:6827]  
	     call _PlayA1800_ElementsInit	// [26:6827]  PlayA1800_ElementsInit
BB29_PU63:	// 0x18a6
// BB:29 cycle count: 15
//6828       	   
//6829       	   Timeout_cnt_En =1;

LM948:
	     .stabn 68,0,6829,LM948-_Answer_F
	     R3 = 1                   	// [0:6829]  
	     DS = seg(_Timeout_cnt_En)	// [1:6829]  Timeout_cnt_En
	     R4 = (_Timeout_cnt_En)   	// [2:6829]  Timeout_cnt_En
	     DS:[R4] = R3             	// [4:6829]  
//6830  	       temp = delay_time(timeout_t);

LM949:
	     .stabn 68,0,6830,LM949-_Answer_F
	     R3 = [BP + 4]            	// [6:6830]  timeout_t
	     R4 = SP + 1              	// [8:6830]  
	     [R4] = R3                	// [10:6830]  
	     call _delay_time         	// [12:6830]  delay_time
BB30_PU63:	// 0x18b1
// BB:30 cycle count: 11
	     SP = SP + 1              	// [0:6830]  
	     [BP + 0] = R1            	// [1:6830]  temp
//6831  	       Timeout_cnt_En =0;

LM950:
	     .stabn 68,0,6831,LM950-_Answer_F
	     R3 = 0                   	// [2:6831]  
	     DS = seg(_Timeout_cnt_En)	// [3:6831]  Timeout_cnt_En
	     R4 = (_Timeout_cnt_En)   	// [4:6831]  Timeout_cnt_En
	     DS:[R4] = R3             	// [6:6831]  
//6832  	       SACM_A1800_Stop();

LM951:
	     .stabn 68,0,6832,LM951-_Answer_F
	     call _SACM_A1800_Stop    	// [8:6832]  SACM_A1800_Stop
BB31_PU63:	// 0x18ba
// BB:31 cycle count: 28
//6833  	       A1800_Flag = 0;

LM952:
	     .stabn 68,0,6833,LM952-_Answer_F
	     R3 = 0                   	// [0:6833]  
	     DS = seg(_A1800_Flag)    	// [1:6833]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [2:6833]  A1800_Flag
	     DS:[R4] = R3             	// [4:6833]  
//6834  	       
//6835  	       PlayQuestionflag =0;

LM953:
	     .stabn 68,0,6835,LM953-_Answer_F
	     R3 = 0                   	// [6:6835]  
	     DS = seg(_PlayQuestionflag)	// [7:6835]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [8:6835]  PlayQuestionflag
	     DS:[R4] = R3             	// [10:6835]  
//6836  	       TwoKeyflag=0;

LM954:
	     .stabn 68,0,6836,LM954-_Answer_F
	     R3 = 0                   	// [12:6836]  
	     DS = seg(_TwoKeyflag)    	// [13:6836]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [14:6836]  TwoKeyflag
	     DS:[R4] = R3             	// [16:6836]  
//6837  	       
//6838  	            	   	
//6839       	 	if(Sleepflag) 

LM955:
	     .stabn 68,0,6839,LM955-_Answer_F
	     DS = seg(_Sleepflag)     	// [18:6839]  Sleepflag
	     R4 = (_Sleepflag)        	// [19:6839]  Sleepflag
	     R4 = DS:[R4]             	// [21:6839]  
	     cmp R4, 0                	// [23:6839]  
	     je L_63_75               	// [24:6839]  
BB32_PU63:	// 0x18cf
// BB:32 cycle count: 6
//6840  		      return C_Finish ;   

LM956:
	     .stabn 68,0,6840,LM956-_Answer_F
	     SP = SP + 10             	// [0:6840]  
	     pop BP, PC from [SP]     	// [1:6840]  
L_63_75:	// 0x18d1
// BB:33 cycle count: 10
//6841  	       
//6842  	       
//6843  	       if(PauseFlag)

LM957:
	     .stabn 68,0,6843,LM957-_Answer_F
	     DS = seg(_PauseFlag)     	// [0:6843]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6843]  PauseFlag
	     R4 = DS:[R4]             	// [3:6843]  
	     cmp R4, 0                	// [5:6843]  
	     jne BB34_PU63            	// [6:6843]  
BB116_PU63:	// 0x18d7
// BB:116 cycle count: 3
	     goto L_63_77             	// [0:0]  
BB34_PU63:	// 0x18d9
// BB:34 cycle count: 24
//6844  	       {
//6845  	       	   
//6846  			       Key_activeflag =0;

LM958:
	     .stabn 68,0,6846,LM958-_Answer_F
	     R3 = 0                   	// [0:6846]  
	     DS = seg(_Key_activeflag)	// [1:6846]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [2:6846]  Key_activeflag
	     DS:[R4] = R3             	// [4:6846]  
//6847  		           Key_Event=0;

LM959:
	     .stabn 68,0,6847,LM959-_Answer_F
	     R3 = 0                   	// [6:6847]  
	     DS = seg(_Key_Event)     	// [7:6847]  Key_Event
	     R4 = (_Key_Event)        	// [8:6847]  Key_Event
	     DS:[R4] = R3             	// [10:6847]  
//6848  		           PlayQuestionflag =1;

LM960:
	     .stabn 68,0,6848,LM960-_Answer_F
	     R3 = 1                   	// [12:6848]  
	     DS = seg(_PlayQuestionflag)	// [13:6848]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [14:6848]  PlayQuestionflag
	     DS:[R4] = R3             	// [16:6848]  
//6849  		           TwoKeyflag = Playbutton;

LM961:
	     .stabn 68,0,6849,LM961-_Answer_F
	     R3 = 1                   	// [18:6849]  
	     DS = seg(_TwoKeyflag)    	// [19:6849]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [20:6849]  TwoKeyflag
	     DS:[R4] = R3             	// [22:6849]  
L_63_78:	// 0x18ed
// BB:35 cycle count: 15
//6850  		           do
//6851  		           {
//6852  		           	  PauseFlag =0;

LM962:
	     .stabn 68,0,6852,LM962-_Answer_F
	     R3 = 0                   	// [0:6852]  
	     DS = seg(_PauseFlag)     	// [1:6852]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:6852]  PauseFlag
	     DS:[R4] = R3             	// [4:6852]  
//6853  		           	  delay_time(8);

LM963:
	     .stabn 68,0,6853,LM963-_Answer_F
	     SP = SP - 1              	// [6:6853]  
	     R3 = 8                   	// [7:6853]  
	     R4 = SP + 1              	// [8:6853]  
	     [R4] = R3                	// [10:6853]  
	     call _delay_time         	// [12:6853]  delay_time
BB36_PU63:	// 0x18f9
// BB:36 cycle count: 11
	     SP = SP + 1              	// [0:6853]  
//6854  		             
//6855  		         
//6856  		          if(Registerd_Num>1)	

LM964:
	     .stabn 68,0,6856,LM964-_Answer_F
	     DS = seg(_Registerd_Num) 	// [1:6856]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [2:6856]  Registerd_Num
	     R4 = DS:[R4]             	// [4:6856]  
	     cmp R4, 1                	// [6:6856]  
	     jbe L_63_79              	// [7:6856]  
BB37_PU63:	// 0x1900
// BB:37 cycle count: 19
//6857  		              Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);

LM965:
	     .stabn 68,0,6857,LM965-_Answer_F
	     SP = SP - 2              	// [0:6857]  
	     DS = seg(_Player_Activing_Cnt)	// [1:6857]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [2:6857]  Player_Activing_Cnt
	     R3 = DS:[R4]             	// [4:6857]  
	     R4 = SP + 1              	// [6:6857]  
	     [R4] = R3                	// [8:6857]  
	     R3 = 6000                	// [10:6857]  
	     R4 = SP + 2              	// [12:6857]  
	     [R4] = R3                	// [14:6857]  
	     call _Play_Seq           	// [16:6857]  Play_Seq
BB38_PU63:	// 0x190f
// BB:38 cycle count: 1
	     SP = SP + 2              	// [0:6857]  
L_63_79:	// 0x1910
// BB:39 cycle count: 3
//6858  		              
//6859  		              Ask_Question();//PlayA1800_Elements(Get_Question_Sound(gQuestionIdx)); 

LM966:
	     .stabn 68,0,6859,LM966-_Answer_F
	     call _Ask_Question       	// [0:6859]  Ask_Question
Lt_63_2:	// 0x1912
// BB:40 cycle count: 10
//6860  		              
//6861  		           }while(PauseFlag); 

LM967:
	     .stabn 68,0,6861,LM967-_Answer_F
	     DS = seg(_PauseFlag)     	// [0:6861]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6861]  PauseFlag
	     R4 = DS:[R4]             	// [3:6861]  
	     cmp R4, 0                	// [5:6861]  
	     jne L_63_78              	// [6:6861]  
BB41_PU63:	// 0x1918
// BB:41 cycle count: 15
//6862  		           
//6863  		           PlayQuestionflag =0;

LM968:
	     .stabn 68,0,6863,LM968-_Answer_F
	     R3 = 0                   	// [0:6863]  
	     DS = seg(_PlayQuestionflag)	// [1:6863]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [2:6863]  PlayQuestionflag
	     DS:[R4] = R3             	// [4:6863]  
//6864  		           TwoKeyflag=0;

LM969:
	     .stabn 68,0,6864,LM969-_Answer_F
	     R3 = 0                   	// [6:6864]  
	     DS = seg(_TwoKeyflag)    	// [7:6864]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [8:6864]  TwoKeyflag
	     DS:[R4] = R3             	// [10:6864]  
	     goto L_63_76             	// [12:6864]  
L_63_77:	// 0x1924
// BB:42 cycle count: 21
//6865  	       } 
//6866  	       else
//6867  	         {     
//6868  		
//6869  				   if(Key_Event == LastCategory_Series[Currentsound])

LM970:
	     .stabn 68,0,6869,LM970-_Answer_F
	     R4 = [BP + 3]            	// [0:6869]  Currentsound
	     R3 = 0                   	// [2:6869]  
	     R1 = (_LastCategory_Series)	// [3:6869]  LastCategory_Series
	     R2 = seg(_LastCategory_Series)	// [5:6869]  LastCategory_Series
	     R4 = R4 + R1             	// [6:6869]  
	     R3 = R3 + R2, Carry      	// [7:6869]  
	     DS = R3                  	// [8:6869]  
	     R3 = DS:[R4]             	// [9:6869]  
	     DS = seg(_Key_Event)     	// [11:6869]  Key_Event
	     R4 = (_Key_Event)        	// [12:6869]  Key_Event
	     R4 = DS:[R4]             	// [14:6869]  
	     cmp R3, R4               	// [16:6869]  
	     je BB43_PU63             	// [17:6869]  
BB115_PU63:	// 0x1933
// BB:115 cycle count: 3
	     goto L_63_81             	// [0:0]  
BB43_PU63:	// 0x1935
// BB:43 cycle count: 13
//6870  				  	{
//6871  
//6872                        #ifdef C_productTouch
//6873                            Led_ON_Some(Key_Event);

LM971:
	     .stabn 68,0,6873,LM971-_Answer_F
	     SP = SP - 1              	// [0:6873]  
	     DS = seg(_Key_Event)     	// [1:6873]  Key_Event
	     R4 = (_Key_Event)        	// [2:6873]  Key_Event
	     R3 = DS:[R4]             	// [4:6873]  
	     R4 = SP + 1              	// [6:6873]  
	     [R4] = R3                	// [8:6873]  
	     call _Led_ON_Some        	// [10:6873]  Led_ON_Some
BB44_PU63:	// 0x193f
// BB:44 cycle count: 14
	     SP = SP + 1              	// [0:6873]  
//6875  						  Led_ON_Some(Key_Event>>4);
//6876  					  #endif	
//6877  					
//6878  					   
//6879  		                Currentsound++;

LM972:
	     .stabn 68,0,6879,LM972-_Answer_F
	     R4 = [BP + 3]            	// [1:6879]  Currentsound
	     R4 = R4 + 1              	// [3:6879]  
	     [BP + 3] = R4            	// [4:6879]  Currentsound
//6880  		                
//6881  		               	if(Currentsound >= round)

LM973:
	     .stabn 68,0,6881,LM973-_Answer_F
	     R3 = [BP + 2]            	// [5:6881]  round
	     R4 = [BP + 3]            	// [7:6881]  Currentsound
	     cmp R3, R4               	// [9:6881]  
	     ja L_63_82               	// [10:6881]  
BB45_PU63:	// 0x1947
// BB:45 cycle count: 6
//6882  		               	    Key_activeflag =0;	 

LM974:
	     .stabn 68,0,6882,LM974-_Answer_F
	     R3 = 0                   	// [0:6882]  
	     DS = seg(_Key_activeflag)	// [1:6882]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [2:6882]  Key_activeflag
	     DS:[R4] = R3             	// [4:6882]  
L_63_82:	// 0x194c
// BB:46 cycle count: 16
//6883  		               	
//6884  						Key_Event=0; 

LM975:
	     .stabn 68,0,6884,LM975-_Answer_F
	     R3 = 0                   	// [0:6884]  
	     DS = seg(_Key_Event)     	// [1:6884]  Key_Event
	     R4 = (_Key_Event)        	// [2:6884]  Key_Event
	     DS:[R4] = R3             	// [4:6884]  
//6885  						
//6886  						PlayA1800_Elements(SFX_Buzzer);

LM976:
	     .stabn 68,0,6886,LM976-_Answer_F
	     SP = SP - 1              	// [6:6886]  
	     R3 = 121                 	// [7:6886]  
	     R4 = SP + 1              	// [9:6886]  
	     [R4] = R3                	// [11:6886]  
	     call _PlayA1800_Elements 	// [13:6886]  PlayA1800_Elements
BB47_PU63:	// 0x1959
// BB:47 cycle count: 8
//6887  						delay_time(3);

LM977:
	     .stabn 68,0,6887,LM977-_Answer_F
	     R3 = 3                   	// [0:6887]  
	     R4 = SP + 1              	// [1:6887]  
	     [R4] = R3                	// [3:6887]  
	     call _delay_time         	// [5:6887]  delay_time
BB48_PU63:	// 0x195f
// BB:48 cycle count: 4
	     SP = SP + 1              	// [0:6887]  
//6888  						Light_all_off();

LM978:
	     .stabn 68,0,6888,LM978-_Answer_F
	     call _Light_all_off      	// [1:6888]  Light_all_off
BB49_PU63:	// 0x1962
// BB:49 cycle count: 9
//6889  		                
//6890  	
//6891  						if(Currentsound >= round)

LM979:
	     .stabn 68,0,6891,LM979-_Answer_F
	     R3 = [BP + 2]            	// [0:6891]  round
	     R4 = [BP + 3]            	// [2:6891]  Currentsound
	     cmp R3, R4               	// [4:6891]  
	     ja L_63_83               	// [5:6891]  
BB50_PU63:	// 0x1966
// BB:50 cycle count: 10
//6892  							{				   
//6893  
//6894  		                       
//6895  							   if(Cn<=5)//(((Cn-1)%2)== 0)

LM980:
	     .stabn 68,0,6895,LM980-_Answer_F
	     DS = seg(_Cn)            	// [0:6895]  Cn
	     R4 = (_Cn)               	// [1:6895]  Cn
	     R4 = DS:[R4]             	// [3:6895]  
	     cmp R4, 5                	// [5:6895]  
	     ja L_63_85               	// [6:6895]  
BB51_PU63:	// 0x196c
// BB:51 cycle count: 9
//6896  							  	   PlayA1800_Other(Serie_Correct1);//PlayA1800_Elements(VLMMREN_Congrate_02);

LM981:
	     .stabn 68,0,6896,LM981-_Answer_F
	     SP = SP - 1              	// [0:6896]  
	     R3 = 0                   	// [1:6896]  
	     R4 = SP + 1              	// [2:6896]  
	     [R4] = R3                	// [4:6896]  
	     call _PlayA1800_Other    	// [6:6896]  PlayA1800_Other
BB52_PU63:	// 0x1973
// BB:52 cycle count: 5
	     SP = SP + 1              	// [0:6896]  
	     jmp L_63_84              	// [1:6896]  
L_63_85:	// 0x1975
// BB:53 cycle count: 10
//6897  							  	else if(Cn<=10)

LM982:
	     .stabn 68,0,6897,LM982-_Answer_F
	     DS = seg(_Cn)            	// [0:6897]  Cn
	     R4 = (_Cn)               	// [1:6897]  Cn
	     R4 = DS:[R4]             	// [3:6897]  
	     cmp R4, 10               	// [5:6897]  
	     ja L_63_87               	// [6:6897]  
BB54_PU63:	// 0x197b
// BB:54 cycle count: 9
//6898  		                           PlayA1800_Other(Serie_Correct2);

LM983:
	     .stabn 68,0,6898,LM983-_Answer_F
	     SP = SP - 1              	// [0:6898]  
	     R3 = 1                   	// [1:6898]  
	     R4 = SP + 1              	// [2:6898]  
	     [R4] = R3                	// [4:6898]  
	     call _PlayA1800_Other    	// [6:6898]  PlayA1800_Other
BB55_PU63:	// 0x1982
// BB:55 cycle count: 5
	     SP = SP + 1              	// [0:6898]  
	     jmp L_63_86              	// [1:6898]  
L_63_87:	// 0x1984
// BB:56 cycle count: 9
//6899  							  	else
//6900  							  	    PlayA1800_Other(Serie_Correct3);

LM984:
	     .stabn 68,0,6900,LM984-_Answer_F
	     SP = SP - 1              	// [0:6900]  
	     R3 = 2                   	// [1:6900]  
	     R4 = SP + 1              	// [2:6900]  
	     [R4] = R3                	// [4:6900]  
	     call _PlayA1800_Other    	// [6:6900]  PlayA1800_Other
BB57_PU63:	// 0x198b
// BB:57 cycle count: 1
	     SP = SP + 1              	// [0:6900]  
L_63_86:	// 0x198c
L_63_84:	// 0x198c
// BB:58 cycle count: 9
//6901  		
//6902  							     delay_time(16);

LM985:
	     .stabn 68,0,6902,LM985-_Answer_F
	     SP = SP - 1              	// [0:6902]  
	     R3 = 16                  	// [1:6902]  
	     R4 = SP + 1              	// [2:6902]  
	     [R4] = R3                	// [4:6902]  
	     call _delay_time         	// [6:6902]  delay_time
BB59_PU63:	// 0x1993
// BB:59 cycle count: 4
	     SP = SP + 1              	// [0:6902]  
//6903  							     break;

LM986:
	     .stabn 68,0,6903,LM986-_Answer_F
	     goto Lt_63_3             	// [1:6903]  
L_63_83:	// 0x1996
// BB:60 cycle count: 3

LM987:
	     .stabn 68,0,6891,LM987-_Answer_F
	     goto L_63_80             	// [0:6891]  
L_63_81:	// 0x1998
// BB:61 cycle count: 8
//6905  							}
//6906  	
//6907  		                  
//6908  				  	}
//6909  		           else if((temp == TimeOver)||(Key_Event))

LM988:
	     .stabn 68,0,6909,LM988-_Answer_F
	     R4 = [BP + 0]            	// [0:6909]  temp
	     cmp R4, 61452            	// [2:6909]  
	     je L_63_89               	// [4:6909]  
BB62_PU63:	// 0x199c
// BB:62 cycle count: 10
	     DS = seg(_Key_Event)     	// [0:6909]  Key_Event
	     R4 = (_Key_Event)        	// [1:6909]  Key_Event
	     R4 = DS:[R4]             	// [3:6909]  
	     cmp R4, 0                	// [5:6909]  
	     jne L_63_89              	// [6:6909]  
BB109_PU63:	// 0x19a2
// BB:109 cycle count: 3
	     goto L_63_88             	// [0:0]  
L_63_89:	// 0x19a4
// BB:63 cycle count: 26
//6910  		           	{     
//6911  		           		  temp1 = Key_Event;

LM989:
	     .stabn 68,0,6911,LM989-_Answer_F
	     DS = seg(_Key_Event)     	// [0:6911]  Key_Event
	     R4 = (_Key_Event)        	// [1:6911]  Key_Event
	     R4 = DS:[R4]             	// [3:6911]  
	     [BP + 1] = R4            	// [5:6911]  temp1
//6912  		           		  Key_Event=0;

LM990:
	     .stabn 68,0,6912,LM990-_Answer_F
	     R3 = 0                   	// [6:6912]  
	     DS = seg(_Key_Event)     	// [7:6912]  Key_Event
	     R4 = (_Key_Event)        	// [8:6912]  Key_Event
	     DS:[R4] = R3             	// [10:6912]  
//6913  		           	      Key_activeflag =0;

LM991:
	     .stabn 68,0,6913,LM991-_Answer_F
	     R3 = 0                   	// [12:6913]  
	     DS = seg(_Key_activeflag)	// [13:6913]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [14:6913]  Key_activeflag
	     DS:[R4] = R3             	// [16:6913]  
//6914  		           	      
//6915  		           	    if(temp == TimeOver)

LM992:
	     .stabn 68,0,6915,LM992-_Answer_F
	     R4 = [BP + 0]            	// [18:6915]  temp
	     cmp R4, 61452            	// [20:6915]  
	     je BB64_PU63             	// [22:6915]  
BB114_PU63:	// 0x19b7
// BB:114 cycle count: 3
	     goto L_63_91             	// [0:0]  
BB64_PU63:	// 0x19b9
// BB:64 cycle count: 10
//6916  		           	    {
//6917  		           	    	PlayA1800_Elements(SFX_Gong); 

LM993:
	     .stabn 68,0,6917,LM993-_Answer_F
	     SP = SP - 1              	// [0:6917]  
	     R3 = 123                 	// [1:6917]  
	     R4 = SP + 1              	// [3:6917]  
	     [R4] = R3                	// [5:6917]  
	     call _PlayA1800_Elements 	// [7:6917]  PlayA1800_Elements
BB65_PU63:	// 0x19c1
// BB:65 cycle count: 11
	     SP = SP + 1              	// [0:6917]  
//6918  			       	      if(Registerd_Num>1)

LM994:
	     .stabn 68,0,6918,LM994-_Answer_F
	     DS = seg(_Registerd_Num) 	// [1:6918]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [2:6918]  Registerd_Num
	     R4 = DS:[R4]             	// [4:6918]  
	     cmp R4, 1                	// [6:6918]  
	     jbe L_63_93              	// [7:6918]  
BB66_PU63:	// 0x19c8
// BB:66 cycle count: 20
//6919  			       	      {
//6920  				       	      
//6921  				       	      Play_Seq(TooLate_Cnt++%3,C_TooLateTable);

LM995:
	     .stabn 68,0,6921,LM995-_Answer_F
	     DS = seg(_TooLate_Cnt)   	// [0:6921]  TooLate_Cnt
	     R4 = (_TooLate_Cnt)      	// [1:6921]  TooLate_Cnt
	     R3 = DS:[R4]             	// [3:6921]  
	     R4 = R3 + 1              	// [5:6921]  
	     DS = seg(_TooLate_Cnt)   	// [7:6921]  TooLate_Cnt
	     R2 = (_TooLate_Cnt)      	// [8:6921]  TooLate_Cnt
	     DS:[R2] = R4             	// [10:6921]  
	     SP = SP - 2              	// [12:6921]  
	     R4 = 3                   	// [13:6921]  
	     push R4, R3 to [SP]      	// [14:6921]  
	     call __modu1             	// [17:6921]  _modu1
BB67_PU63:	// 0x19d7
// BB:67 cycle count: 14
	     SP = SP + 2              	// [0:0]  
	     R4 = SP + 1              	// [1:0]  
	     [R4] = R1                	// [3:0]  
	     R3 = 12500               	// [5:6921]  
	     R4 = SP + 2              	// [7:6921]  
	     [R4] = R3                	// [9:6921]  
	     call _Play_Seq           	// [11:6921]  Play_Seq
BB68_PU63:	// 0x19e2
// BB:68 cycle count: 5
	     SP = SP + 2              	// [0:6921]  
	     jmp L_63_92              	// [1:6921]  
L_63_93:	// 0x19e4
// BB:69 cycle count: 20
//6922  			       	      }
//6923  			       	     else
//6924  			       	      {
//6925  			       	         Play_Seq(TooLatesolo_Cnt++%3,C_TooLateSoloTable);

LM996:
	     .stabn 68,0,6925,LM996-_Answer_F
	     DS = seg(_TooLatesolo_Cnt)	// [0:6925]  TooLatesolo_Cnt
	     R4 = (_TooLatesolo_Cnt)  	// [1:6925]  TooLatesolo_Cnt
	     R3 = DS:[R4]             	// [3:6925]  
	     R4 = R3 + 1              	// [5:6925]  
	     DS = seg(_TooLatesolo_Cnt)	// [7:6925]  TooLatesolo_Cnt
	     R2 = (_TooLatesolo_Cnt)  	// [8:6925]  TooLatesolo_Cnt
	     DS:[R2] = R4             	// [10:6925]  
	     SP = SP - 2              	// [12:6925]  
	     R4 = 3                   	// [13:6925]  
	     push R4, R3 to [SP]      	// [14:6925]  
	     call __modu1             	// [17:6925]  _modu1
BB70_PU63:	// 0x19f3
// BB:70 cycle count: 14
	     SP = SP + 2              	// [0:0]  
	     R4 = SP + 1              	// [1:0]  
	     [R4] = R1                	// [3:0]  
	     R3 = 13000               	// [5:6925]  
	     R4 = SP + 2              	// [7:6925]  
	     [R4] = R3                	// [9:6925]  
	     call _Play_Seq           	// [11:6925]  Play_Seq
BB71_PU63:	// 0x19fe
// BB:71 cycle count: 1
	     SP = SP + 2              	// [0:6925]  
L_63_92:	// 0x19ff
// BB:72 cycle count: 3

LM997:
	     .stabn 68,0,6918,LM997-_Answer_F
	     goto L_63_90             	// [0:6918]  
L_63_91:	// 0x1a01
// BB:73 cycle count: 7
//6926  			       	      } 
//6927  			       	      
//6928  		           	    }
//6929  			       	    else if(temp1)

LM998:
	     .stabn 68,0,6929,LM998-_Answer_F
	     R4 = [BP + 1]            	// [0:6929]  temp1
	     cmp R4, 0                	// [2:6929]  
	     jne BB74_PU63            	// [3:6929]  
BB111_PU63:	// 0x1a04
// BB:111 cycle count: 3
	     goto L_63_94             	// [0:0]  
BB74_PU63:	// 0x1a06
// BB:74 cycle count: 10
//6930  			       	    {
//6931  			       	    	
//6932  			       	    	
//6933  				       	  #ifdef C_productTouch
//6934  	                          Led_ON_Some(temp1);

LM999:
	     .stabn 68,0,6934,LM999-_Answer_F
	     SP = SP - 1              	// [0:6934]  
	     R3 = [BP + 1]            	// [1:6934]  temp1
	     R4 = SP + 1              	// [3:6934]  
	     [R4] = R3                	// [5:6934]  
	     call _Led_ON_Some        	// [7:6934]  Led_ON_Some
BB75_PU63:	// 0x1a0d
// BB:75 cycle count: 9
//6935  	                      #else
//6936  							  Led_ON_Some(temp1>>4);
//6937  						  #endif
//6938  			       	    	
//6939  			           	      PlayA1800_Elements(SFX_Wrong);  

LM1000:
	     .stabn 68,0,6939,LM1000-_Answer_F
	     R3 = 132                 	// [0:6939]  
	     R4 = SP + 1              	// [2:6939]  
	     [R4] = R3                	// [4:6939]  
	     call _PlayA1800_Elements 	// [6:6939]  PlayA1800_Elements
BB76_PU63:	// 0x1a14
// BB:76 cycle count: 4
	     SP = SP + 1              	// [0:6939]  
//6940  			           	      //delay_time(4);
//6941  			                  Light_all_off();

LM1001:
	     .stabn 68,0,6941,LM1001-_Answer_F
	     call _Light_all_off      	// [1:6941]  Light_all_off
BB77_PU63:	// 0x1a17
// BB:77 cycle count: 10
//6942  			                  
//6943  			                  if(Registerd_Num>1)

LM1002:
	     .stabn 68,0,6943,LM1002-_Answer_F
	     DS = seg(_Registerd_Num) 	// [0:6943]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6943]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6943]  
	     cmp R4, 1                	// [5:6943]  
	     ja BB78_PU63             	// [6:6943]  
BB112_PU63:	// 0x1a1d
// BB:112 cycle count: 3
	     goto L_63_95             	// [0:0]  
BB78_PU63:	// 0x1a1f
// BB:78 cycle count: 19
//6944  			                  {
//6945  			                      Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);//PlayA1800_Elements(A_VLMMREN_Player_01+Player_Activing_Cnt);

LM1003:
	     .stabn 68,0,6945,LM1003-_Answer_F
	     SP = SP - 2              	// [0:6945]  
	     DS = seg(_Player_Activing_Cnt)	// [1:6945]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [2:6945]  Player_Activing_Cnt
	     R3 = DS:[R4]             	// [4:6945]  
	     R4 = SP + 1              	// [6:6945]  
	     [R4] = R3                	// [8:6945]  
	     R3 = 6000                	// [10:6945]  
	     R4 = SP + 2              	// [12:6945]  
	     [R4] = R3                	// [14:6945]  
	     call _Play_Seq           	// [16:6945]  Play_Seq
BB79_PU63:	// 0x1a2e
// BB:79 cycle count: 11
	     SP = SP + 2              	// [0:6945]  
//6946  			                    
//6947  			                       if((Cn==1)&&(Registerd_Num ==2))

LM1004:
	     .stabn 68,0,6947,LM1004-_Answer_F
	     DS = seg(_Cn)            	// [1:6947]  Cn
	     R4 = (_Cn)               	// [2:6947]  Cn
	     R4 = DS:[R4]             	// [4:6947]  
	     cmp R4, 1                	// [6:6947]  
	     je BB80_PU63             	// [7:6947]  
BB113_PU63:	// 0x1a35
// BB:113 cycle count: 3
	     goto L_63_96             	// [0:0]  
BB80_PU63:	// 0x1a37
// BB:80 cycle count: 10
	     DS = seg(_Registerd_Num) 	// [0:6947]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6947]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6947]  
	     cmp R4, 2                	// [5:6947]  
	     jne BB113_PU63           	// [6:6947]  
L_63_97:	// 0x1a3d
// BB:81 cycle count: 27
//6948  			                       {
//6949  			                       	  
//6950  			                       	  Add_ALL_InactivePlayer_Point(1,Rounds,Pingame);

LM1005:
	     .stabn 68,0,6950,LM1005-_Answer_F
	     SP = SP - 5              	// [0:6950]  
	     R3 = 1                   	// [1:6950]  
	     R4 = SP + 1              	// [2:6950]  
	     [R4] = R3                	// [4:6950]  
	     R2 = (_Rounds)           	// [6:6950]  Rounds
	     R3 = seg(_Rounds)        	// [8:6950]  Rounds
	     R4 = SP + 2              	// [9:6950]  
	     [R4++] = R2              	// [11:6950]  
	     [R4] = R3                	// [13:6950]  
	     R2 = (_Pingame)          	// [15:6950]  Pingame
	     R3 = seg(_Pingame)       	// [17:6950]  Pingame
	     R4 = SP + 4              	// [18:6950]  
	     [R4++] = R2              	// [20:6950]  
	     [R4] = R3                	// [22:6950]  
	     call _Add_ALL_InactivePlayer_Point	// [24:6950]  Add_ALL_InactivePlayer_Point
BB82_PU63:	// 0x1a52
// BB:82 cycle count: 9
	     SP = SP + 4              	// [0:6950]  
//6951  			                       	
//6952  			                       	  PlayA1800_Elements(A_VLMMREN_2Outa);

LM1006:
	     .stabn 68,0,6952,LM1006-_Answer_F
	     R3 = 3                   	// [1:6952]  
	     R4 = SP + 1              	// [2:6952]  
	     [R4] = R3                	// [4:6952]  
	     call _PlayA1800_Elements 	// [6:6952]  PlayA1800_Elements
BB83_PU63:	// 0x1a59
// BB:83 cycle count: 8
//6953  			                       	  PlayA1800_Elements(A_VLMMREN_Out); 

LM1007:
	     .stabn 68,0,6953,LM1007-_Answer_F
	     R3 = 35                  	// [0:6953]  
	     R4 = SP + 1              	// [1:6953]  
	     [R4] = R3                	// [3:6953]  
	     call _PlayA1800_Elements 	// [5:6953]  PlayA1800_Elements
BB84_PU63:	// 0x1a5f
// BB:84 cycle count: 43
	     SP = SP - 3              	// [0:6953]  
//6954  			                       	  Play_Serieplayer16bit(0,Registered_Play_Status&(~BitMap[Player_Activing_Cnt]),C_Play_StartAddr);

LM1008:
	     .stabn 68,0,6954,LM1008-_Answer_F
	     R3 = 0                   	// [1:6954]  
	     R4 = SP + 1              	// [2:6954]  
	     [R4] = R3                	// [4:6954]  
	     DS = seg(_Player_Activing_Cnt)	// [6:6954]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [7:6954]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [9:6954]  
	     R3 = 0                   	// [11:6954]  
	     R1 = (_BitMap)           	// [12:6954]  BitMap
	     R2 = seg(_BitMap)        	// [14:6954]  BitMap
	     R4 = R4 + R1             	// [15:6954]  
	     R3 = R3 + R2, Carry      	// [16:6954]  
	     DS = R3                  	// [17:6954]  
	     R4 = DS:[R4]             	// [18:6954]  
	     R4 = R4 ^ 65535          	// [20:6954]  
	     DS = seg(_Registered_Play_Status)	// [22:6954]  Registered_Play_Status
	     R3 = (_Registered_Play_Status)	// [23:6954]  Registered_Play_Status
	     R4 = R4 & DS:[R3]        	// [25:6954]  
	     R3 = SP + 2              	// [27:6954]  
	     [R3] = R4                	// [29:6954]  
	     R2 = 6000                	// [31:6954]  
	     R3 = 0                   	// [33:6954]  
	     R4 = SP + 3              	// [34:6954]  
	     [R4++] = R2              	// [36:6954]  
	     [R4] = R3                	// [38:6954]  
	     call _Play_Serieplayer16bit	// [40:6954]  Play_Serieplayer16bit
BB85_PU63:	// 0x1a82
// BB:85 cycle count: 9
	     SP = SP + 3              	// [0:6954]  
//6955  			                       	  
//6956  			                       	  PlayA1800_Elements(A_VLMMREN_End_02b);

LM1009:
	     .stabn 68,0,6956,LM1009-_Answer_F
	     R3 = 20                  	// [1:6956]  
	     R4 = SP + 1              	// [2:6956]  
	     [R4] = R3                	// [4:6956]  
	     call _PlayA1800_Elements 	// [6:6956]  PlayA1800_Elements
BB86_PU63:	// 0x1a89
// BB:86 cycle count: 8
//6957  			                       	  PlayA1800_Elements(A_VLMMREN_2Outb);

LM1010:
	     .stabn 68,0,6957,LM1010-_Answer_F
	     R3 = 4                   	// [0:6957]  
	     R4 = SP + 1              	// [1:6957]  
	     [R4] = R3                	// [3:6957]  
	     call _PlayA1800_Elements 	// [5:6957]  PlayA1800_Elements
BB87_PU63:	// 0x1a8f
// BB:87 cycle count: 14
//6958  			                       	  
//6959  			                       	  End20flag =1;

LM1011:
	     .stabn 68,0,6959,LM1011-_Answer_F
	     R3 = 1                   	// [0:6959]  
	     DS = seg(_End20flag)     	// [1:6959]  End20flag
	     R4 = (_End20flag)        	// [2:6959]  End20flag
	     DS:[R4] = R3             	// [4:6959]  
//6960  			                       	  delay_time(8);

LM1012:
	     .stabn 68,0,6960,LM1012-_Answer_F
	     R3 = 8                   	// [6:6960]  
	     R4 = SP + 1              	// [7:6960]  
	     [R4] = R3                	// [9:6960]  
	     call _delay_time         	// [11:6960]  delay_time
BB88_PU63:	// 0x1a9a
// BB:88 cycle count: 6
	     SP = SP + 11             	// [0:6960]  
//6961  			                       	  return C_End20;

LM1013:
	     .stabn 68,0,6961,LM1013-_Answer_F
	     pop BP, PC from [SP]     	// [1:6961]  
L_63_96:	// 0x1a9c
L_63_95:	// 0x1a9c
// BB:89 cycle count: 9
//6962  			                       }
//6963  			                  
//6964  			                  }
//6965  			                  
//6966  			                  PlayA1800_Elements(A_VLMMREN_Aie);

LM1014:
	     .stabn 68,0,6966,LM1014-_Answer_F
	     SP = SP - 1              	// [0:6966]  
	     R3 = 5                   	// [1:6966]  
	     R4 = SP + 1              	// [2:6966]  
	     [R4] = R3                	// [4:6966]  
	     call _PlayA1800_Elements 	// [6:6966]  PlayA1800_Elements
BB90_PU63:	// 0x1aa3
// BB:90 cycle count: 8
//6967  			           	      PlayA1800_Elements(A_VLMMREN_Out);

LM1015:
	     .stabn 68,0,6967,LM1015-_Answer_F
	     R3 = 35                  	// [0:6967]  
	     R4 = SP + 1              	// [1:6967]  
	     [R4] = R3                	// [3:6967]  
	     call _PlayA1800_Elements 	// [5:6967]  PlayA1800_Elements
BB91_PU63:	// 0x1aa9
// BB:91 cycle count: 1
	     SP = SP + 1              	// [0:6967]  
L_63_94:	// 0x1aaa
L_63_90:	// 0x1aaa
// BB:92 cycle count: 62
//6968  			       	    }
//6969  		           	      
//6970  		                  Pingame[Player_Activing_Cnt/16]&=~BitMap[Player_Activing_Cnt%16];	

LM1016:
	     .stabn 68,0,6970,LM1016-_Answer_F
	     DS = seg(_Player_Activing_Cnt)	// [0:6970]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:6970]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [3:6970]  
	     R4 = R4 lsr 4            	// [5:6970]  
	     [BP + 5] = R4            	// [6:6970]  __save_expr_temp_16
	     R4 = [BP + 5]            	// [7:6970]  __save_expr_temp_16
	     R3 = 0                   	// [9:6970]  
	     R1 = (_Pingame)          	// [10:6970]  Pingame
	     R2 = seg(_Pingame)       	// [12:6970]  Pingame
	     R4 = R4 + R1             	// [13:6970]  
	     R3 = R3 + R2, Carry      	// [14:6970]  
	     DS = R3                  	// [15:6970]  
	     R4 = DS:[R4]             	// [16:6970]  
	     [BP + 7] = R4            	// [18:6970]  lra_spill_temp_38
	     DS = seg(_Player_Activing_Cnt)	// [19:6970]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [20:6970]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [22:6970]  
	     R4 = R4 & 15             	// [24:6970]  
	     R3 = 0                   	// [25:6970]  
	     R1 = (_BitMap)           	// [26:6970]  BitMap
	     R2 = seg(_BitMap)        	// [28:6970]  BitMap
	     R4 = R4 + R1             	// [29:6970]  
	     R3 = R3 + R2, Carry      	// [30:6970]  
	     DS = R3                  	// [31:6970]  
	     R4 = DS:[R4]             	// [32:6970]  
	     R3 = R4 ^ 65535          	// [34:6970]  
	     R4 = [BP + 7]            	// [36:6970]  lra_spill_temp_38
	     R4 = R4 & R3             	// [38:6970]  
	     [BP + 8] = R4            	// [39:6970]  lra_spill_temp_39
	     R4 = [BP + 5]            	// [40:6970]  __save_expr_temp_16
	     R3 = 0                   	// [42:6970]  
	     R1 = (_Pingame)          	// [43:6970]  Pingame
	     R2 = seg(_Pingame)       	// [45:6970]  Pingame
	     R4 = R4 + R1             	// [46:6970]  
	     R3 = R3 + R2, Carry      	// [47:6970]  
	     DS = R3                  	// [48:6970]  
	     R3 = [BP + 8]            	// [49:6970]  lra_spill_temp_39
	     DS:[R4] = R3             	// [51:6970]  
//6971  		                  
//6972  		                 // PlayA1800_Elements(SFX_Buzzer);
//6973  		                 // Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);
//6974  						 // PlayA1800_Elements(A_VLMMREN_Out);
//6975  		                  delay_time(16);

LM1017:
	     .stabn 68,0,6975,LM1017-_Answer_F
	     SP = SP - 1              	// [53:6975]  
	     R3 = 16                  	// [54:6975]  
	     R4 = SP + 1              	// [55:6975]  
	     [R4] = R3                	// [57:6975]  
	     call _delay_time         	// [59:6975]  delay_time
BB93_PU63:	// 0x1add
// BB:93 cycle count: 4
	     SP = SP + 1              	// [0:6975]  
//6976  						   if(Get_Length_Pingame()<2)

LM1018:
	     .stabn 68,0,6976,LM1018-_Answer_F
	     call _Get_Length_Pingame 	// [1:6976]  Get_Length_Pingame
BB94_PU63:	// 0x1ae0
// BB:94 cycle count: 5
	     cmp R1, 1                	// [0:6976]  
	     ja L_63_98               	// [1:6976]  
BB95_PU63:	// 0x1ae2
// BB:95 cycle count: 3
//6977  						   	  break;

LM1019:
	     .stabn 68,0,6977,LM1019-_Answer_F
	     goto Lt_63_3             	// [0:6977]  
L_63_98:	// 0x1ae4
// BB:96 cycle count: 7
//6978  		
//6979  		                  if(round>=1)

LM1020:
	     .stabn 68,0,6979,LM1020-_Answer_F
	     R4 = [BP + 2]            	// [0:6979]  round
	     cmp R4, 0                	// [2:6979]  
	     je L_63_99               	// [3:6979]  
BB97_PU63:	// 0x1ae7
// BB:97 cycle count: 34
//6980  		                     Player_Point[Player_Activing_Cnt]+=round-1;  

LM1021:
	     .stabn 68,0,6980,LM1021-_Answer_F
	     DS = seg(_Player_Activing_Cnt)	// [0:6980]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:6980]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [3:6980]  
	     R3 = 0                   	// [5:6980]  
	     R1 = (_Player_Point)     	// [6:6980]  Player_Point
	     R2 = seg(_Player_Point)  	// [8:6980]  Player_Point
	     R4 = R4 + R1             	// [9:6980]  
	     R3 = R3 + R2, Carry      	// [10:6980]  
	     DS = R3                  	// [11:6980]  
	     R4 = DS:[R4]             	// [12:6980]  
	     R4 = R4 + [BP + 2]       	// [14:6980]  round
	     R4 = R4 - 1              	// [16:6980]  
	     [BP + 8] = R4            	// [17:6980]  lra_spill_temp_39
	     DS = seg(_Player_Activing_Cnt)	// [18:6980]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [19:6980]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [21:6980]  
	     R3 = 0                   	// [23:6980]  
	     R1 = (_Player_Point)     	// [24:6980]  Player_Point
	     R2 = seg(_Player_Point)  	// [26:6980]  Player_Point
	     R4 = R4 + R1             	// [27:6980]  
	     R3 = R3 + R2, Carry      	// [28:6980]  
	     DS = R3                  	// [29:6980]  
	     R3 = [BP + 8]            	// [30:6980]  lra_spill_temp_39
	     DS:[R4] = R3             	// [32:6980]  
L_63_99:	// 0x1b03
// BB:98 cycle count: 5
//6981  		                   
//6982  						   Currentsound=0;

LM1022:
	     .stabn 68,0,6982,LM1022-_Answer_F
	     R4 = 0                   	// [0:6982]  
	     [BP + 3] = R4            	// [1:6982]  Currentsound
//6983  		                   Player_Activing_Cnt =Select_Pingamerandom();//SelectNextPingame(Player_Activing_Cnt);	 

LM1023:
	     .stabn 68,0,6983,LM1023-_Answer_F
	     call _Select_Pingamerandom	// [2:6983]  Select_Pingamerandom
BB99_PU63:	// 0x1b07
// BB:99 cycle count: 8
	     DS = seg(_Player_Activing_Cnt)	// [0:6983]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:6983]  Player_Activing_Cnt
	     DS:[R4] = R1             	// [3:6983]  
//6989  		//				 if(Player_Activing_Cnt==Registerd_Num)
//6990  		//				 	  Player_Activing_Cnt=0;
//6991  		
//6992  		
//6993  						   Ask_Question();//PlayA1800_Elements(Get_Question_Sound(gQuestionIdx));

LM1024:
	     .stabn 68,0,6993,LM1024-_Answer_F
	     call _Ask_Question       	// [5:6993]  Ask_Question
BB100_PU63:	// 0x1b0d
// BB:100 cycle count: 20
//6994  						  // delay_time(8);
//6995  						   
//6996  						   
//6997  		                   //PlayA1800_Elements(A_VLMMREN_Next_01);
//6998  		                    Play_Seq(NextCnt++%3,C_NextTable);

LM1025:
	     .stabn 68,0,6998,LM1025-_Answer_F
	     DS = seg(_NextCnt)       	// [0:6998]  NextCnt
	     R4 = (_NextCnt)          	// [1:6998]  NextCnt
	     R3 = DS:[R4]             	// [3:6998]  
	     R4 = R3 + 1              	// [5:6998]  
	     DS = seg(_NextCnt)       	// [7:6998]  NextCnt
	     R2 = (_NextCnt)          	// [8:6998]  NextCnt
	     DS:[R2] = R4             	// [10:6998]  
	     SP = SP - 2              	// [12:6998]  
	     R4 = 3                   	// [13:6998]  
	     push R4, R3 to [SP]      	// [14:6998]  
	     call __modu1             	// [17:6998]  _modu1
BB101_PU63:	// 0x1b1c
// BB:101 cycle count: 14
	     SP = SP + 2              	// [0:0]  
	     R4 = SP + 1              	// [1:0]  
	     [R4] = R1                	// [3:0]  
	     R3 = 12000               	// [5:6998]  
	     R4 = SP + 2              	// [7:6998]  
	     [R4] = R3                	// [9:6998]  
	     call _Play_Seq           	// [11:6998]  Play_Seq
BB102_PU63:	// 0x1b27
// BB:102 cycle count: 1
	     SP = SP + 2              	// [0:6998]  
L_63_88:	// 0x1b28
L_63_80:	// 0x1b28
L_63_76:	// 0x1b28
// BB:103 cycle count: 3

LM1026:
	     .stabn 68,0,6843,LM1026-_Answer_F
	     goto L_63_72             	// [0:6843]  
L_63_73:	// 0x1b2a
Lt_63_3:	// 0x1b2a
// BB:104 cycle count: 60
	     [BP + 9] = R1            	// [0:0]  lgra_spill_temp_40
//7009  
//7010  
//7011  
//7012  	     //Player_Point[Player_Activing_Cnt]=Currentsound;
//7013           Pselected[Player_Activing_Cnt/16]|=BitMap[Player_Activing_Cnt%16];	

LM1027:
	     .stabn 68,0,7013,LM1027-_Answer_F
	     DS = seg(_Player_Activing_Cnt)	// [1:7013]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [2:7013]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [4:7013]  
	     R4 = R4 lsr 4            	// [6:7013]  
	     [BP + 6] = R4            	// [7:7013]  __save_expr_temp_17
	     R4 = [BP + 6]            	// [8:7013]  __save_expr_temp_17
	     R3 = 0                   	// [10:7013]  
	     R1 = (_Pselected)        	// [11:7013]  Pselected
	     R2 = seg(_Pselected)     	// [13:7013]  Pselected
	     R4 = R4 + R1             	// [14:7013]  
	     R3 = R3 + R2, Carry      	// [15:7013]  
	     DS = R3                  	// [16:7013]  
	     R4 = DS:[R4]             	// [17:7013]  
	     [BP + 7] = R4            	// [19:7013]  lra_spill_temp_38
	     DS = seg(_Player_Activing_Cnt)	// [20:7013]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [21:7013]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [23:7013]  
	     R4 = R4 & 15             	// [25:7013]  
	     R3 = 0                   	// [26:7013]  
	     R1 = (_BitMap)           	// [27:7013]  BitMap
	     R2 = seg(_BitMap)        	// [29:7013]  BitMap
	     R4 = R4 + R1             	// [30:7013]  
	     R3 = R3 + R2, Carry      	// [31:7013]  
	     DS = R3                  	// [32:7013]  
	     R3 = DS:[R4]             	// [33:7013]  
	     R4 = [BP + 7]            	// [35:7013]  lra_spill_temp_38
	     R4 = R4 | R3             	// [37:7013]  
	     [BP + 8] = R4            	// [38:7013]  lra_spill_temp_39
	     R4 = [BP + 6]            	// [39:7013]  __save_expr_temp_17
	     R3 = 0                   	// [41:7013]  
	     R1 = (_Pselected)        	// [42:7013]  Pselected
	     R2 = seg(_Pselected)     	// [44:7013]  Pselected
	     R4 = R4 + R1             	// [45:7013]  
	     R3 = R3 + R2, Carry      	// [46:7013]  
	     DS = R3                  	// [47:7013]  
	     R3 = [BP + 8]            	// [48:7013]  lra_spill_temp_39
	     DS:[R4] = R3             	// [50:7013]  
	     R1 = [BP + 9]            	// [52:7013]  lgra_spill_temp_40
	     SP = SP + 10             	// [54:7013]  
	     pop BP, PC from [SP]     	// [55:7013]  
LBE58:
	.endp	
	     .stabn 192,0,0,LBB58-_Answer_F
	     .stabs "temp:4",128,0,0,0
	     .stabs "temp1:4",128,0,0,1
	     .stabs "round:4",128,0,0,2
	     .stabs "Currentsound:4",128,0,0,3
	     .stabs "timeout_t:4",128,0,0,4
	     .stabn 224,0,0,LBE58-_Answer_F
LME64:
	     .stabf LME64-_Answer_F
.code
	     .stabs "PlayScoreOfwhichplay:F18",36,0,0,_PlayScoreOfwhichplay

	// Program Unit: PlayScoreOfwhichplay
.public	_PlayScoreOfwhichplay
_PlayScoreOfwhichplay: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//7018  
//7019  
//7020  
//7021  void  PlayScoreOfwhichplay(unsigned int* BitTable)
//7022  {

LM1028:
	     .stabn 68,0,7022,LM1028-_PlayScoreOfwhichplay
BB1_PU64:	// 0x1b58
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:7022]  
	     SP = SP - 1              	// [2:7022]  
	     BP = SP + 1              	// [3:7022]  
LBB59:
//7023  
//7024  	   unsigned int  i=0;//,temp;

LM1029:
	     .stabn 68,0,7024,LM1029-_PlayScoreOfwhichplay
	     R4 = 0                   	// [5:7024]  
	     [BP + 0] = R4            	// [6:7024]  i
L_64_1:	// 0x1b5e
// BB:2 cycle count: 12
//7025  	
//7026  		while(i<Registerd_Num)

LM1030:
	     .stabn 68,0,7026,LM1030-_PlayScoreOfwhichplay
	     R3 = [BP + 0]            	// [0:7026]  i
	     DS = seg(_Registerd_Num) 	// [2:7026]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [3:7026]  Registerd_Num
	     R4 = DS:[R4]             	// [5:7026]  
	     cmp R3, R4               	// [7:7026]  
	     jae L_64_2               	// [8:7026]  
BB3_PU64:	// 0x1b65
// BB:3 cycle count: 8
//7032  					  //PlayScores(Player_Point[i]);
//7033  	
//7034  				   }
//7035  	
//7036  			   i++;

LM1031:
	     .stabn 68,0,7036,LM1031-_PlayScoreOfwhichplay
	     R4 = [BP + 0]            	// [0:7036]  i
	     R4 = R4 + 1              	// [2:7036]  
	     [BP + 0] = R4            	// [3:7036]  i
	     jmp L_64_1               	// [4:7036]  
L_64_2:	// 0x1b69
// BB:4 cycle count: 6
	     SP = SP + 1              	// [0:7036]  
	     pop BP, PC from [SP]     	// [1:7036]  
LBE59:
	.endp	
	     .stabs "BitTable:p30",160,0,0,4
	     .stabn 192,0,0,LBB59-_PlayScoreOfwhichplay
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE59-_PlayScoreOfwhichplay
LME65:
	     .stabf LME65-_PlayScoreOfwhichplay
.code
	     .stabs "End:F4",36,0,0,_End

	// Program Unit: End
.public	_End
_End: .proc	
	     .stabn 0xa6,0,0,8
	// memory_length = 0
	// temp_length = 3
	// temp = 4
	// Leader_Player_temp = 1
	// h_round_temp = 2
	// __save_expr_temp_18 = 5
	// old_frame_pointer = 8
	// return_address = 9
	// lra_spill_temp_41 = 6
	// lra_spill_temp_42 = 7
//7049  //end
//7050  ///////////////////////////////////////////////////////
//7051  
//7052  unsigned int End()
//7053  {

LM1032:
	     .stabn 68,0,7053,LM1032-_End
BB1_PU65:	// 0x1b6b
// BB:1 cycle count: 14
	     push BP to [SP]          	// [0:7053]  
	     SP = SP - 8              	// [2:7053]  
	     BP = SP + 1              	// [3:7053]  
LBB60:
//7054  
//7055     unsigned int memory_length =0;

LM1033:
	     .stabn 68,0,7055,LM1033-_End
	     R4 = 0                   	// [5:7055]  
	     [BP + 0] = R4            	// [6:7055]  memory_length
//7056     unsigned int temp_length,temp;
//7057  
//7058     unsigned int Leader_Player_temp =0;

LM1034:
	     .stabn 68,0,7058,LM1034-_End
	     R4 = 0                   	// [7:7058]  
	     [BP + 1] = R4            	// [8:7058]  Leader_Player_temp
//7059     int  h_round_temp =0;

LM1035:
	     .stabn 68,0,7059,LM1035-_End
	     R4 = 0                   	// [9:7059]  
	     [BP + 2] = R4            	// [10:7059]  h_round_temp
//7060   
//7061      memory_length=Get_Num_CategoryMemory();

LM1036:
	     .stabn 68,0,7061,LM1036-_End
	     call _Get_Num_CategoryMemory	// [11:7061]  Get_Num_CategoryMemory
BB2_PU65:	// 0x1b77
// BB:2 cycle count: 11
	     [BP + 0] = R1            	// [0:7061]  memory_length
//7062   
//7063   	 temp_length  = memory_length;

LM1037:
	     .stabn 68,0,7063,LM1037-_End
	     R4 = [BP + 0]            	// [1:7063]  memory_length
	     [BP + 3] = R4            	// [3:7063]  temp_length
//7064  	 if(temp_length>0)

LM1038:
	     .stabn 68,0,7064,LM1038-_End
	     R4 = [BP + 3]            	// [4:7064]  temp_length
	     cmp R4, 0                	// [6:7064]  
	     je L_65_40               	// [7:7064]  
BB3_PU65:	// 0x1b7d
// BB:3 cycle count: 4
//7065  	 	 temp_length-=1;

LM1039:
	     .stabn 68,0,7065,LM1039-_End
	     R4 = [BP + 3]            	// [0:7065]  temp_length
	     R4 = R4 - 1              	// [2:7065]  
	     [BP + 3] = R4            	// [3:7065]  temp_length
L_65_40:	// 0x1b80
// BB:4 cycle count: 10
//7066   
//7067   
//7068  
//7069   
//7070    if(Registerd_Num>1)

LM1040:
	     .stabn 68,0,7070,LM1040-_End
	     DS = seg(_Registerd_Num) 	// [0:7070]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:7070]  Registerd_Num
	     R4 = DS:[R4]             	// [3:7070]  
	     cmp R4, 1                	// [5:7070]  
	     ja BB5_PU65              	// [6:7070]  
BB139_PU65:	// 0x1b86
// BB:139 cycle count: 3
	     goto L_65_42             	// [0:0]  
BB5_PU65:	// 0x1b88
// BB:5 cycle count: 10
//7071    {
//7072  
//7073      if(End20flag ==0)

LM1041:
	     .stabn 68,0,7073,LM1041-_End
	     DS = seg(_End20flag)     	// [0:7073]  End20flag
	     R4 = (_End20flag)        	// [1:7073]  End20flag
	     R4 = DS:[R4]             	// [3:7073]  
	     cmp R4, 0                	// [5:7073]  
	     je BB6_PU65              	// [6:7073]  
BB144_PU65:	// 0x1b8e
// BB:144 cycle count: 3
	     goto L_65_43             	// [0:0]  
BB6_PU65:	// 0x1b90
// BB:6 cycle count: 8
//7074     	 {
//7075  
//7076  		    if(memory_length>100)

LM1042:
	     .stabn 68,0,7076,LM1042-_End
	     R4 = [BP + 0]            	// [0:7076]  memory_length
	     cmp R4, 100              	// [2:7076]  
	     ja BB7_PU65              	// [4:7076]  
BB146_PU65:	// 0x1b94
// BB:146 cycle count: 3
	     goto L_65_45             	// [0:0]  
BB7_PU65:	// 0x1b96
// BB:7 cycle count: 27
//7077  		    {
//7078  		    	
//7079  		       Add_SomePlayer_Point(1,Rounds,Pingame);	

LM1043:
	     .stabn 68,0,7079,LM1043-_End
	     SP = SP - 5              	// [0:7079]  
	     R3 = 1                   	// [1:7079]  
	     R4 = SP + 1              	// [2:7079]  
	     [R4] = R3                	// [4:7079]  
	     R2 = (_Rounds)           	// [6:7079]  Rounds
	     R3 = seg(_Rounds)        	// [8:7079]  Rounds
	     R4 = SP + 2              	// [9:7079]  
	     [R4++] = R2              	// [11:7079]  
	     [R4] = R3                	// [13:7079]  
	     R2 = (_Pingame)          	// [15:7079]  Pingame
	     R3 = seg(_Pingame)       	// [17:7079]  Pingame
	     R4 = SP + 4              	// [18:7079]  
	     [R4++] = R2              	// [20:7079]  
	     [R4] = R3                	// [22:7079]  
	     call _Add_SomePlayer_Point	// [24:7079]  Add_SomePlayer_Point
BB8_PU65:	// 0x1bab
// BB:8 cycle count: 27
//7080  		       Add_SomePlayer_Point(memory_length,Player_Point,Pingame);	

LM1044:
	     .stabn 68,0,7080,LM1044-_End
	     R3 = [BP + 0]            	// [0:7080]  memory_length
	     R4 = SP + 1              	// [2:7080]  
	     [R4] = R3                	// [4:7080]  
	     R2 = (_Player_Point)     	// [6:7080]  Player_Point
	     R3 = seg(_Player_Point)  	// [8:7080]  Player_Point
	     R4 = SP + 2              	// [9:7080]  
	     [R4++] = R2              	// [11:7080]  
	     [R4] = R3                	// [13:7080]  
	     R2 = (_Pingame)          	// [15:7080]  Pingame
	     R3 = seg(_Pingame)       	// [17:7080]  Pingame
	     R4 = SP + 4              	// [18:7080]  
	     [R4++] = R2              	// [20:7080]  
	     [R4] = R3                	// [22:7080]  
	     call _Add_SomePlayer_Point	// [24:7080]  Add_SomePlayer_Point
BB9_PU65:	// 0x1bbf
// BB:9 cycle count: 26
//7081  		    	
//7082  		       Play_Serieplayer(0,Pingame,C_Play_StartAddr);	

LM1045:
	     .stabn 68,0,7082,LM1045-_End
	     R3 = 0                   	// [0:7082]  
	     R4 = SP + 1              	// [1:7082]  
	     [R4] = R3                	// [3:7082]  
	     R2 = (_Pingame)          	// [5:7082]  Pingame
	     R3 = seg(_Pingame)       	// [7:7082]  Pingame
	     R4 = SP + 2              	// [8:7082]  
	     [R4++] = R2              	// [10:7082]  
	     [R4] = R3                	// [12:7082]  
	     R2 = 6000                	// [14:7082]  
	     R3 = 0                   	// [16:7082]  
	     R4 = SP + 4              	// [17:7082]  
	     [R4++] = R2              	// [19:7082]  
	     [R4] = R3                	// [21:7082]  
	     call _Play_Serieplayer   	// [23:7082]  Play_Serieplayer
BB10_PU65:	// 0x1bd3
// BB:10 cycle count: 9
	     SP = SP + 4              	// [0:7082]  
//7083  		       PlayA1800_Elements(A_VLMMREN_End_03c);	

LM1046:
	     .stabn 68,0,7083,LM1046-_End
	     R3 = 23                  	// [1:7083]  
	     R4 = SP + 1              	// [2:7083]  
	     [R4] = R3                	// [4:7083]  
	     call _PlayA1800_Elements 	// [6:7083]  PlayA1800_Elements
BB11_PU65:	// 0x1bda
// BB:11 cycle count: 8
//7084  		       PlayA1800_Elements(A_VLMMREN_End_02b);

LM1047:
	     .stabn 68,0,7084,LM1047-_End
	     R3 = 20                  	// [0:7084]  
	     R4 = SP + 1              	// [1:7084]  
	     [R4] = R3                	// [3:7084]  
	     call _PlayA1800_Elements 	// [5:7084]  PlayA1800_Elements
BB12_PU65:	// 0x1be0
// BB:12 cycle count: 8
//7085  		       delay_time(8);	 	

LM1048:
	     .stabn 68,0,7085,LM1048-_End
	     R3 = 8                   	// [0:7085]  
	     R4 = SP + 1              	// [1:7085]  
	     [R4] = R3                	// [3:7085]  
	     call _delay_time         	// [5:7085]  delay_time
BB13_PU65:	// 0x1be6
// BB:13 cycle count: 4
	     SP = SP + 1              	// [0:7085]  
	     goto L_65_44             	// [1:7085]  
L_65_45:	// 0x1be9
// BB:14 cycle count: 27
//7086  
//7087  		    }
//7088  		    else
//7089  		    {
//7090  		    	  Add_SomePlayer_Point(1,Rounds,Pingame);	

LM1049:
	     .stabn 68,0,7090,LM1049-_End
	     SP = SP - 5              	// [0:7090]  
	     R3 = 1                   	// [1:7090]  
	     R4 = SP + 1              	// [2:7090]  
	     [R4] = R3                	// [4:7090]  
	     R2 = (_Rounds)           	// [6:7090]  Rounds
	     R3 = seg(_Rounds)        	// [8:7090]  Rounds
	     R4 = SP + 2              	// [9:7090]  
	     [R4++] = R2              	// [11:7090]  
	     [R4] = R3                	// [13:7090]  
	     R2 = (_Pingame)          	// [15:7090]  Pingame
	     R3 = seg(_Pingame)       	// [17:7090]  Pingame
	     R4 = SP + 4              	// [18:7090]  
	     [R4++] = R2              	// [20:7090]  
	     [R4] = R3                	// [22:7090]  
	     call _Add_SomePlayer_Point	// [24:7090]  Add_SomePlayer_Point
BB15_PU65:	// 0x1bfe
// BB:15 cycle count: 27
//7091  		    	  Add_SomePlayer_Point(memory_length,Player_Point,Pingame);	

LM1050:
	     .stabn 68,0,7091,LM1050-_End
	     R3 = [BP + 0]            	// [0:7091]  memory_length
	     R4 = SP + 1              	// [2:7091]  
	     [R4] = R3                	// [4:7091]  
	     R2 = (_Player_Point)     	// [6:7091]  Player_Point
	     R3 = seg(_Player_Point)  	// [8:7091]  Player_Point
	     R4 = SP + 2              	// [9:7091]  
	     [R4++] = R2              	// [11:7091]  
	     [R4] = R3                	// [13:7091]  
	     R2 = (_Pingame)          	// [15:7091]  Pingame
	     R3 = seg(_Pingame)       	// [17:7091]  Pingame
	     R4 = SP + 4              	// [18:7091]  
	     [R4++] = R2              	// [20:7091]  
	     [R4] = R3                	// [22:7091]  
	     call _Add_SomePlayer_Point	// [24:7091]  Add_SomePlayer_Point
BB16_PU65:	// 0x1c12
// BB:16 cycle count: 26
//7092  		    	  
//7093  			     Play_Serieplayer(0,Pingame,C_Play_StartAddr);

LM1051:
	     .stabn 68,0,7093,LM1051-_End
	     R3 = 0                   	// [0:7093]  
	     R4 = SP + 1              	// [1:7093]  
	     [R4] = R3                	// [3:7093]  
	     R2 = (_Pingame)          	// [5:7093]  Pingame
	     R3 = seg(_Pingame)       	// [7:7093]  Pingame
	     R4 = SP + 2              	// [8:7093]  
	     [R4++] = R2              	// [10:7093]  
	     [R4] = R3                	// [12:7093]  
	     R2 = 6000                	// [14:7093]  
	     R3 = 0                   	// [16:7093]  
	     R4 = SP + 4              	// [17:7093]  
	     [R4++] = R2              	// [19:7093]  
	     [R4] = R3                	// [21:7093]  
	     call _Play_Serieplayer   	// [23:7093]  Play_Serieplayer
BB17_PU65:	// 0x1c26
// BB:17 cycle count: 9
	     SP = SP + 4              	// [0:7093]  
//7094  			     PlayA1800_Elements(A_VLMMREN_End_01);

LM1052:
	     .stabn 68,0,7094,LM1052-_End
	     R3 = 17                  	// [1:7094]  
	     R4 = SP + 1              	// [2:7094]  
	     [R4] = R3                	// [4:7094]  
	     call _PlayA1800_Elements 	// [6:7094]  PlayA1800_Elements
BB18_PU65:	// 0x1c2d
// BB:18 cycle count: 8
//7095  				 PlayA1800_Elements(A_VLMMREN_End_02);

LM1053:
	     .stabn 68,0,7095,LM1053-_End
	     R3 = 19                  	// [0:7095]  
	     R4 = SP + 1              	// [1:7095]  
	     [R4] = R3                	// [3:7095]  
	     call _PlayA1800_Elements 	// [5:7095]  PlayA1800_Elements
BB19_PU65:	// 0x1c33
// BB:19 cycle count: 9
//7096  				 PlayScores(temp_length);//Player_Point[Player_Activing_Cnt]

LM1054:
	     .stabn 68,0,7096,LM1054-_End
	     R3 = [BP + 3]            	// [0:7096]  temp_length
	     R4 = SP + 1              	// [2:7096]  
	     [R4] = R3                	// [4:7096]  
	     call _PlayScores         	// [6:7096]  PlayScores
BB20_PU65:	// 0x1c39
// BB:20 cycle count: 8
	     SP = SP + 1              	// [0:7096]  
//7097  		      
//7098  		      
//7099  			    if(memory_length<15)

LM1055:
	     .stabn 68,0,7099,LM1055-_End
	     R4 = [BP + 0]            	// [1:7099]  memory_length
	     cmp R4, 14               	// [3:7099]  
	     ja L_65_47               	// [4:7099]  
BB21_PU65:	// 0x1c3d
// BB:21 cycle count: 9
//7100  				{ 
//7101  			       PlayA1800_Elements(A_VLMMREN_End_03b);

LM1056:
	     .stabn 68,0,7101,LM1056-_End
	     SP = SP - 1              	// [0:7101]  
	     R3 = 22                  	// [1:7101]  
	     R4 = SP + 1              	// [2:7101]  
	     [R4] = R3                	// [4:7101]  
	     call _PlayA1800_Elements 	// [6:7101]  PlayA1800_Elements
BB22_PU65:	// 0x1c44
// BB:22 cycle count: 8
//7102  			       PlayA1800_Elements(A_VLMMREN_End_02b);

LM1057:
	     .stabn 68,0,7102,LM1057-_End
	     R3 = 20                  	// [0:7102]  
	     R4 = SP + 1              	// [1:7102]  
	     [R4] = R3                	// [3:7102]  
	     call _PlayA1800_Elements 	// [5:7102]  PlayA1800_Elements
BB23_PU65:	// 0x1c4a
// BB:23 cycle count: 5
	     SP = SP + 1              	// [0:7102]  
	     jmp L_65_46              	// [1:7102]  
L_65_47:	// 0x1c4c
// BB:24 cycle count: 10
//7103  				}
//7104  				else
//7105  				{
//7106  				   PlayA1800_Elements(VLMMREN_Correct3b);

LM1058:
	     .stabn 68,0,7106,LM1058-_End
	     SP = SP - 1              	// [0:7106]  
	     R3 = 210                 	// [1:7106]  
	     R4 = SP + 1              	// [3:7106]  
	     [R4] = R3                	// [5:7106]  
	     call _PlayA1800_Elements 	// [7:7106]  PlayA1800_Elements
BB25_PU65:	// 0x1c54
// BB:25 cycle count: 8
//7107  			       PlayA1800_Elements(A_VLMMREN_End_02b);

LM1059:
	     .stabn 68,0,7107,LM1059-_End
	     R3 = 20                  	// [0:7107]  
	     R4 = SP + 1              	// [1:7107]  
	     [R4] = R3                	// [3:7107]  
	     call _PlayA1800_Elements 	// [5:7107]  PlayA1800_Elements
BB26_PU65:	// 0x1c5a
// BB:26 cycle count: 1
	     SP = SP + 1              	// [0:7107]  
L_65_46:	// 0x1c5b
// BB:27 cycle count: 9
//7108  				}	
//7109  		         delay_time(8);

LM1060:
	     .stabn 68,0,7109,LM1060-_End
	     SP = SP - 1              	// [0:7109]  
	     R3 = 8                   	// [1:7109]  
	     R4 = SP + 1              	// [2:7109]  
	     [R4] = R3                	// [4:7109]  
	     call _delay_time         	// [6:7109]  delay_time
BB28_PU65:	// 0x1c62
// BB:28 cycle count: 1
	     SP = SP + 1              	// [0:7109]  
L_65_44:	// 0x1c63
L_65_43:	// 0x1c63
// BB:29 cycle count: 27
//7112  
//7113       //PlayScoreOfwhichplay(Pingame);
//7114       //temp = Get_Num_Higgest_score(Registered_Play_Status);
//7115  
//7116       if(Get_Num_Bigscore(Rounds,2,Registered_Play_Status)==0 )//NumRounds

LM1061:
	     .stabn 68,0,7116,LM1061-_End
	     SP = SP - 4              	// [0:7116]  
	     R2 = (_Rounds)           	// [1:7116]  Rounds
	     R3 = seg(_Rounds)        	// [3:7116]  Rounds
	     R4 = SP + 1              	// [4:7116]  
	     [R4++] = R2              	// [6:7116]  
	     [R4] = R3                	// [8:7116]  
	     R3 = 2                   	// [10:7116]  
	     R4 = SP + 3              	// [11:7116]  
	     [R4] = R3                	// [13:7116]  
	     DS = seg(_Registered_Play_Status)	// [15:7116]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [16:7116]  Registered_Play_Status
	     R3 = DS:[R4]             	// [18:7116]  
	     R4 = SP + 4              	// [20:7116]  
	     [R4] = R3                	// [22:7116]  
	     call _Get_Num_Bigscore   	// [24:7116]  Get_Num_Bigscore
BB30_PU65:	// 0x1c78
// BB:30 cycle count: 6
	     SP = SP + 4              	// [0:7116]  
	     cmp R1, 0                	// [1:7116]  
	     je BB31_PU65             	// [2:7116]  
BB143_PU65:	// 0x1c7b
// BB:143 cycle count: 3
	     goto L_65_49             	// [0:0]  
BB31_PU65:	// 0x1c7d
// BB:31 cycle count: 20
//7117       {
//7118       	 Cn =0;

LM1062:
	     .stabn 68,0,7118,LM1062-_End
	     R3 = 0                   	// [0:7118]  
	     DS = seg(_Cn)            	// [1:7118]  Cn
	     R4 = (_Cn)               	// [2:7118]  Cn
	     DS:[R4] = R3             	// [4:7118]  
//7119       	 CurrentRound++;

LM1063:
	     .stabn 68,0,7119,LM1063-_End
	     DS = seg(_CurrentRound)  	// [6:7119]  CurrentRound
	     R4 = (_CurrentRound)     	// [7:7119]  CurrentRound
	     R4 = DS:[R4]             	// [9:7119]  
	     R4 = R4 + 1              	// [11:7119]  
	     DS = seg(_CurrentRound)  	// [12:7119]  CurrentRound
	     R3 = (_CurrentRound)     	// [13:7119]  CurrentRound
	     DS:[R3] = R4             	// [15:7119]  
//7120  		 Reset_Memory();	

LM1064:
	     .stabn 68,0,7120,LM1064-_End
	     call _Reset_Memory       	// [17:7120]  Reset_Memory
BB32_PU65:	// 0x1c8d
// BB:32 cycle count: 3
//7121           SetPingame();

LM1065:
	     .stabn 68,0,7121,LM1065-_End
	     call _SetPingame         	// [0:7121]  SetPingame
BB33_PU65:	// 0x1c8f
// BB:33 cycle count: 27
//7122         if(Get_All_SameNum(Rounds,1,Registered_Play_Status)==0)//(CurrentRound !=3)

LM1066:
	     .stabn 68,0,7122,LM1066-_End
	     SP = SP - 4              	// [0:7122]  
	     R2 = (_Rounds)           	// [1:7122]  Rounds
	     R3 = seg(_Rounds)        	// [3:7122]  Rounds
	     R4 = SP + 1              	// [4:7122]  
	     [R4++] = R2              	// [6:7122]  
	     [R4] = R3                	// [8:7122]  
	     R3 = 1                   	// [10:7122]  
	     R4 = SP + 3              	// [11:7122]  
	     [R4] = R3                	// [13:7122]  
	     DS = seg(_Registered_Play_Status)	// [15:7122]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [16:7122]  Registered_Play_Status
	     R3 = DS:[R4]             	// [18:7122]  
	     R4 = SP + 4              	// [20:7122]  
	     [R4] = R3                	// [22:7122]  
	     call _Get_All_SameNum    	// [24:7122]  Get_All_SameNum
BB34_PU65:	// 0x1ca4
// BB:34 cycle count: 6
	     SP = SP + 4              	// [0:7122]  
	     cmp R1, 0                	// [1:7122]  
	     jne L_65_51              	// [2:7122]  
BB35_PU65:	// 0x1ca7
// BB:35 cycle count: 10
//7123         	{
//7124         	   PlayA1800_Elements(SFX_Yeah);	

LM1067:
	     .stabn 68,0,7124,LM1067-_End
	     SP = SP - 1              	// [0:7124]  
	     R3 = 133                 	// [1:7124]  
	     R4 = SP + 1              	// [3:7124]  
	     [R4] = R3                	// [5:7124]  
	     call _PlayA1800_Elements 	// [7:7124]  PlayA1800_Elements
BB36_PU65:	// 0x1caf
// BB:36 cycle count: 8
//7125         	   delay_time(8);	

LM1068:
	     .stabn 68,0,7125,LM1068-_End
	     R3 = 8                   	// [0:7125]  
	     R4 = SP + 1              	// [1:7125]  
	     [R4] = R3                	// [3:7125]  
	     call _delay_time         	// [5:7125]  delay_time
BB37_PU65:	// 0x1cb5
// BB:37 cycle count: 9
//7126             PlayA1800_Elements(A_VLMMREN_WinRound02a);    

LM1069:
	     .stabn 68,0,7126,LM1069-_End
	     R3 = 79                  	// [0:7126]  
	     R4 = SP + 1              	// [2:7126]  
	     [R4] = R3                	// [4:7126]  
	     call _PlayA1800_Elements 	// [6:7126]  PlayA1800_Elements
BB38_PU65:	// 0x1cbc
// BB:38 cycle count: 8
//7127  		   delay_time(8);

LM1070:
	     .stabn 68,0,7127,LM1070-_End
	     R3 = 8                   	// [0:7127]  
	     R4 = SP + 1              	// [1:7127]  
	     [R4] = R3                	// [3:7127]  
	     call _delay_time         	// [5:7127]  delay_time
BB39_PU65:	// 0x1cc2
// BB:39 cycle count: 5
	     SP = SP + 1              	// [0:7127]  
	     jmp L_65_50              	// [1:7127]  
L_65_51:	// 0x1cc4
// BB:40 cycle count: 3
//7129  		   
//7130         	}
//7131  	   else
//7132  	   	{
//7133  	   	    Key_CheckScores();	

LM1071:
	     .stabn 68,0,7133,LM1071-_End
	     call _Key_CheckScores    	// [0:7133]  Key_CheckScores
BB41_PU65:	// 0x1cc6
// BB:41 cycle count: 9
//7134  	   	    delay_time(8);	

LM1072:
	     .stabn 68,0,7134,LM1072-_End
	     SP = SP - 1              	// [0:7134]  
	     R3 = 8                   	// [1:7134]  
	     R4 = SP + 1              	// [2:7134]  
	     [R4] = R3                	// [4:7134]  
	     call _delay_time         	// [6:7134]  delay_time
BB42_PU65:	// 0x1ccd
// BB:42 cycle count: 9
//7135  		    PlayA1800_Elements(A_VLMMREN_WinRound03);	 

LM1073:
	     .stabn 68,0,7135,LM1073-_End
	     R3 = 80                  	// [0:7135]  
	     R4 = SP + 1              	// [2:7135]  
	     [R4] = R3                	// [4:7135]  
	     call _PlayA1800_Elements 	// [6:7135]  PlayA1800_Elements
BB43_PU65:	// 0x1cd4
// BB:43 cycle count: 8
//7136  		    delay_time(8);

LM1074:
	     .stabn 68,0,7136,LM1074-_End
	     R3 = 8                   	// [0:7136]  
	     R4 = SP + 1              	// [1:7136]  
	     [R4] = R3                	// [3:7136]  
	     call _delay_time         	// [5:7136]  delay_time
BB44_PU65:	// 0x1cda
// BB:44 cycle count: 1
	     SP = SP + 1              	// [0:7136]  
L_65_50:	// 0x1cdb
// BB:45 cycle count: 8
//7141  
//7142  
//7143  
//7144  		 
//7145       	 return C_Game;

LM1075:
	     .stabn 68,0,7145,LM1075-_End
	     R1 = - 4083              	// [0:7145]  
	     SP = SP + 8              	// [2:7145]  
	     pop BP, PC from [SP]     	// [3:7145]  
L_65_49:	// 0x1cdf
// BB:46 cycle count: 22
//7146       }
//7147      else
//7148      {
//7149      	    temp =Get_Num_Higgest_score(Rounds,Registered_Play_Status );//Pingame

LM1076:
	     .stabn 68,0,7149,LM1076-_End
	     SP = SP - 3              	// [0:7149]  
	     R2 = (_Rounds)           	// [1:7149]  Rounds
	     R3 = seg(_Rounds)        	// [3:7149]  Rounds
	     R4 = SP + 1              	// [4:7149]  
	     [R4++] = R2              	// [6:7149]  
	     [R4] = R3                	// [8:7149]  
	     DS = seg(_Registered_Play_Status)	// [10:7149]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [11:7149]  Registered_Play_Status
	     R3 = DS:[R4]             	// [13:7149]  
	     R4 = SP + 3              	// [15:7149]  
	     [R4] = R3                	// [17:7149]  
	     call _Get_Num_Higgest_score	// [19:7149]  Get_Num_Higgest_score
BB47_PU65:	// 0x1cf0
// BB:47 cycle count: 21
	     SP = SP + 3              	// [0:7149]  
	     [BP + 4] = R1            	// [1:7149]  temp
//7150  
//7151              Leader_Player_temp = Leader_Player;

LM1077:
	     .stabn 68,0,7151,LM1077-_End
	     DS = seg(_Leader_Player) 	// [2:7151]  Leader_Player
	     R4 = (_Leader_Player)    	// [3:7151]  Leader_Player
	     R4 = DS:[R4]             	// [5:7151]  
	     [BP + 1] = R4            	// [7:7151]  Leader_Player_temp
//7152              h_round_temp = Higgest_T;

LM1078:
	     .stabn 68,0,7152,LM1078-_End
	     DS = seg(_Higgest_T)     	// [8:7152]  Higgest_T
	     R4 = (_Higgest_T)        	// [9:7152]  Higgest_T
	     R4 = DS:[R4]             	// [11:7152]  
	     [BP + 2] = R4            	// [13:7152]  h_round_temp
//7153  
//7154  			
//7155      	    if(temp>1)

LM1079:
	     .stabn 68,0,7155,LM1079-_End
	     R4 = [BP + 4]            	// [14:7155]  temp
	     cmp R4, 1                	// [16:7155]  
	     ja BB48_PU65             	// [17:7155]  
BB140_PU65:	// 0x1cff
// BB:140 cycle count: 3
	     goto L_65_53             	// [0:0]  
BB48_PU65:	// 0x1d01
// BB:48 cycle count: 22
//7156      	    {
//7157      	    	temp =Get_Num_Higgest_score(Player_Point,Leader_Player);//temp = checksamescore(Leader_Player);

LM1080:
	     .stabn 68,0,7157,LM1080-_End
	     SP = SP - 3              	// [0:7157]  
	     R2 = (_Player_Point)     	// [1:7157]  Player_Point
	     R3 = seg(_Player_Point)  	// [3:7157]  Player_Point
	     R4 = SP + 1              	// [4:7157]  
	     [R4++] = R2              	// [6:7157]  
	     [R4] = R3                	// [8:7157]  
	     DS = seg(_Leader_Player) 	// [10:7157]  Leader_Player
	     R4 = (_Leader_Player)    	// [11:7157]  Leader_Player
	     R3 = DS:[R4]             	// [13:7157]  
	     R4 = SP + 3              	// [15:7157]  
	     [R4] = R3                	// [17:7157]  
	     call _Get_Num_Higgest_score	// [19:7157]  Get_Num_Higgest_score
BB49_PU65:	// 0x1d12
// BB:49 cycle count: 9
	     SP = SP + 3              	// [0:7157]  
	     [BP + 4] = R1            	// [1:7157]  temp
//7158  				
//7159      	      if(temp> 1)

LM1081:
	     .stabn 68,0,7159,LM1081-_End
	     R4 = [BP + 4]            	// [2:7159]  temp
	     cmp R4, 1                	// [4:7159]  
	     ja BB50_PU65             	// [5:7159]  
BB142_PU65:	// 0x1d17
// BB:142 cycle count: 3
	     goto L_65_55             	// [0:0]  
BB50_PU65:	// 0x1d19
// BB:50 cycle count: 2
//7160      	      {	
//7161      	    	
//7162  		    	  temp = 0;///////////////!!!!!!!!!!!!!!!!!!

LM1082:
	     .stabn 68,0,7162,LM1082-_End
	     R4 = 0                   	// [0:7162]  
	     [BP + 4] = R4            	// [1:7162]  temp
L_65_56:	// 0x1d1b
// BB:51 cycle count: 7
//7163  				while(temp<C_ElementsRAM)

LM1083:
	     .stabn 68,0,7163,LM1083-_End
	     R4 = [BP + 4]            	// [0:7163]  temp
	     cmp R4, 1                	// [2:7163]  
	     ja L_65_57               	// [3:7163]  
BB52_PU65:	// 0x1d1e
// BB:52 cycle count: 20
//7164  				{
//7165  					Pingame[temp] = 0;

LM1084:
	     .stabn 68,0,7165,LM1084-_End
	     R4 = [BP + 4]            	// [0:7165]  temp
	     R3 = 0                   	// [2:7165]  
	     R1 = (_Pingame)          	// [3:7165]  Pingame
	     R2 = seg(_Pingame)       	// [5:7165]  Pingame
	     R4 = R4 + R1             	// [6:7165]  
	     R3 = R3 + R2, Carry      	// [7:7165]  
	     DS = R3                  	// [8:7165]  
	     R3 = 0                   	// [9:7165]  
	     DS:[R4] = R3             	// [10:7165]  
//7166  					temp++;	

LM1085:
	     .stabn 68,0,7166,LM1085-_End
	     R4 = [BP + 4]            	// [12:7166]  temp
	     R4 = R4 + 1              	// [14:7166]  
	     [BP + 4] = R4            	// [15:7166]  temp
	     jmp L_65_56              	// [16:7166]  
L_65_57:	// 0x1d2c
// BB:53 cycle count: 2
//7167  							
//7168  				}
//7169  				temp = 0;

LM1086:
	     .stabn 68,0,7169,LM1086-_End
	     R4 = 0                   	// [0:7169]  
	     [BP + 4] = R4            	// [1:7169]  temp
L_65_58:	// 0x1d2e
// BB:54 cycle count: 7
//7170  				
//7171  				while(temp<C_Player_Num)

LM1087:
	     .stabn 68,0,7171,LM1087-_End
	     R4 = [BP + 4]            	// [0:7171]  temp
	     cmp R4, 9                	// [2:7171]  
	     ja L_65_59               	// [3:7171]  
BB55_PU65:	// 0x1d31
// BB:55 cycle count: 22
//7172  				{
//7173  				    if(BitMap[temp%16]&(Leader_Player))//Pingame[temp/16]

LM1088:
	     .stabn 68,0,7173,LM1088-_End
	     R4 = [BP + 4]            	// [0:7173]  temp
	     R4 = R4 & 15             	// [2:7173]  
	     R3 = 0                   	// [3:7173]  
	     R1 = (_BitMap)           	// [4:7173]  BitMap
	     R2 = seg(_BitMap)        	// [6:7173]  BitMap
	     R4 = R4 + R1             	// [7:7173]  
	     R3 = R3 + R2, Carry      	// [8:7173]  
	     DS = R3                  	// [9:7173]  
	     R4 = DS:[R4]             	// [10:7173]  
	     DS = seg(_Leader_Player) 	// [12:7173]  Leader_Player
	     R3 = (_Leader_Player)    	// [13:7173]  Leader_Player
	     R4 = R4 & DS:[R3]        	// [15:7173]  
	     cmp R4, 0                	// [17:7173]  
	     je L_65_60               	// [18:7173]  
BB56_PU65:	// 0x1d41
// BB:56 cycle count: 45
//7174  				        Pingame[temp/16]|=BitMap[temp%16];

LM1089:
	     .stabn 68,0,7174,LM1089-_End
	     R4 = [BP + 4]            	// [0:7174]  temp
	     R4 = R4 lsr 4            	// [2:7174]  
	     [BP + 5] = R4            	// [3:7174]  __save_expr_temp_18
	     R4 = [BP + 5]            	// [4:7174]  __save_expr_temp_18
	     R3 = 0                   	// [6:7174]  
	     R1 = (_Pingame)          	// [7:7174]  Pingame
	     R2 = seg(_Pingame)       	// [9:7174]  Pingame
	     R4 = R4 + R1             	// [10:7174]  
	     R3 = R3 + R2, Carry      	// [11:7174]  
	     DS = R3                  	// [12:7174]  
	     R4 = DS:[R4]             	// [13:7174]  
	     [BP + 6] = R4            	// [15:7174]  lra_spill_temp_41
	     R4 = [BP + 4]            	// [16:7174]  temp
	     R4 = R4 & 15             	// [18:7174]  
	     R3 = 0                   	// [19:7174]  
	     R1 = (_BitMap)           	// [20:7174]  BitMap
	     R2 = seg(_BitMap)        	// [22:7174]  BitMap
	     R4 = R4 + R1             	// [23:7174]  
	     R3 = R3 + R2, Carry      	// [24:7174]  
	     DS = R3                  	// [25:7174]  
	     R3 = DS:[R4]             	// [26:7174]  
	     R4 = [BP + 6]            	// [28:7174]  lra_spill_temp_41
	     R4 = R4 | R3             	// [30:7174]  
	     [BP + 7] = R4            	// [31:7174]  lra_spill_temp_42
	     R4 = [BP + 5]            	// [32:7174]  __save_expr_temp_18
	     R3 = 0                   	// [34:7174]  
	     R1 = (_Pingame)          	// [35:7174]  Pingame
	     R2 = seg(_Pingame)       	// [37:7174]  Pingame
	     R4 = R4 + R1             	// [38:7174]  
	     R3 = R3 + R2, Carry      	// [39:7174]  
	     DS = R3                  	// [40:7174]  
	     R3 = [BP + 7]            	// [41:7174]  lra_spill_temp_42
	     DS:[R4] = R3             	// [43:7174]  
L_65_60:	// 0x1d65
// BB:57 cycle count: 8
//7175  				    	
//7176  				    	temp++;

LM1090:
	     .stabn 68,0,7176,LM1090-_End
	     R4 = [BP + 4]            	// [0:7176]  temp
	     R4 = R4 + 1              	// [2:7176]  
	     [BP + 4] = R4            	// [3:7176]  temp
	     jmp L_65_58              	// [4:7176]  
L_65_59:	// 0x1d69
// BB:58 cycle count: 27
//7177  				}			
//7178  				
//7179  				
//7180  				Play_Serieplayer(0,Pingame,C_Play_StartAddr);

LM1091:
	     .stabn 68,0,7180,LM1091-_End
	     SP = SP - 5              	// [0:7180]  
	     R3 = 0                   	// [1:7180]  
	     R4 = SP + 1              	// [2:7180]  
	     [R4] = R3                	// [4:7180]  
	     R2 = (_Pingame)          	// [6:7180]  Pingame
	     R3 = seg(_Pingame)       	// [8:7180]  Pingame
	     R4 = SP + 2              	// [9:7180]  
	     [R4++] = R2              	// [11:7180]  
	     [R4] = R3                	// [13:7180]  
	     R2 = 6000                	// [15:7180]  
	     R3 = 0                   	// [17:7180]  
	     R4 = SP + 4              	// [18:7180]  
	     [R4++] = R2              	// [20:7180]  
	     [R4] = R3                	// [22:7180]  
	     call _Play_Serieplayer   	// [24:7180]  Play_Serieplayer
BB59_PU65:	// 0x1d7e
// BB:59 cycle count: 9
	     SP = SP + 4              	// [0:7180]  
//7181  				PlayA1800_Elements(A_VLMMREN_End_03d);

LM1092:
	     .stabn 68,0,7181,LM1092-_End
	     R3 = 24                  	// [1:7181]  
	     R4 = SP + 1              	// [2:7181]  
	     [R4] = R3                	// [4:7181]  
	     call _PlayA1800_Elements 	// [6:7181]  PlayA1800_Elements
BB60_PU65:	// 0x1d85
// BB:60 cycle count: 8
//7182  				PlayA1800_Elements(A_VLMMREN_End_Tie01);

LM1093:
	     .stabn 68,0,7182,LM1093-_End
	     R3 = 28                  	// [0:7182]  
	     R4 = SP + 1              	// [1:7182]  
	     [R4] = R3                	// [3:7182]  
	     call _PlayA1800_Elements 	// [5:7182]  PlayA1800_Elements
BB61_PU65:	// 0x1d8b
// BB:61 cycle count: 9
//7183  				PlayA1800_Elements(A_VLMMREN_WinRound01b);

LM1094:
	     .stabn 68,0,7183,LM1094-_End
	     R3 = 77                  	// [0:7183]  
	     R4 = SP + 1              	// [2:7183]  
	     [R4] = R3                	// [4:7183]  
	     call _PlayA1800_Elements 	// [6:7183]  PlayA1800_Elements
BB62_PU65:	// 0x1d92
// BB:62 cycle count: 16
	     SP = SP - 1              	// [0:7183]  
//7184  				Play_Seq(h_round_temp,C_RoundsTable);

LM1095:
	     .stabn 68,0,7184,LM1095-_End
	     R3 = [BP + 2]            	// [1:7184]  h_round_temp
	     R4 = SP + 1              	// [3:7184]  
	     [R4] = R3                	// [5:7184]  
	     R3 = 13050               	// [7:7184]  
	     R4 = SP + 2              	// [9:7184]  
	     [R4] = R3                	// [11:7184]  
	     call _Play_Seq           	// [13:7184]  Play_Seq
BB63_PU65:	// 0x1d9e
// BB:63 cycle count: 9
	     SP = SP + 1              	// [0:7184]  
//7185  				PlayA1800_Elements(A_VLMMREN_End_Tie04);

LM1096:
	     .stabn 68,0,7185,LM1096-_End
	     R3 = 31                  	// [1:7185]  
	     R4 = SP + 1              	// [2:7185]  
	     [R4] = R3                	// [4:7185]  
	     call _PlayA1800_Elements 	// [6:7185]  PlayA1800_Elements
BB64_PU65:	// 0x1da5
// BB:64 cycle count: 12
//7186  				
//7187  				//temp =Get_Num_Higgest_score(Player_Point,Registered_Play_Status);
//7188  				PlayScores(Higgest_T);

LM1097:
	     .stabn 68,0,7188,LM1097-_End
	     DS = seg(_Higgest_T)     	// [0:7188]  Higgest_T
	     R4 = (_Higgest_T)        	// [1:7188]  Higgest_T
	     R3 = DS:[R4]             	// [3:7188]  
	     R4 = SP + 1              	// [5:7188]  
	     [R4] = R3                	// [7:7188]  
	     call _PlayScores         	// [9:7188]  PlayScores
BB65_PU65:	// 0x1dae
// BB:65 cycle count: 8
//7189  				PlayA1800_Elements(A_VLMMREN_End_Tie05);

LM1098:
	     .stabn 68,0,7189,LM1098-_End
	     R3 = 32                  	// [0:7189]  
	     R4 = SP + 1              	// [1:7189]  
	     [R4] = R3                	// [3:7189]  
	     call _PlayA1800_Elements 	// [5:7189]  PlayA1800_Elements
BB66_PU65:	// 0x1db4
// BB:66 cycle count: 14
//7190  				
//7191  				Tie =1;	

LM1099:
	     .stabn 68,0,7191,LM1099-_End
	     R3 = 1                   	// [0:7191]  
	     DS = seg(_Tie)           	// [1:7191]  Tie
	     R4 = (_Tie)              	// [2:7191]  Tie
	     DS:[R4] = R3             	// [4:7191]  
//7192  				delay_time(8);

LM1100:
	     .stabn 68,0,7192,LM1100-_End
	     R3 = 8                   	// [6:7192]  
	     R4 = SP + 1              	// [7:7192]  
	     [R4] = R3                	// [9:7192]  
	     call _delay_time         	// [11:7192]  delay_time
BB67_PU65:	// 0x1dbf
// BB:67 cycle count: 4
	     SP = SP + 1              	// [0:7192]  
//7193  
//7194  				Reset_Memory();	

LM1101:
	     .stabn 68,0,7194,LM1101-_End
	     call _Reset_Memory       	// [1:7194]  Reset_Memory
BB68_PU65:	// 0x1dc2
// BB:68 cycle count: 3
//7195  				
//7196  				Game();

LM1102:
	     .stabn 68,0,7196,LM1102-_End
	     call _Game               	// [0:7196]  Game
BB69_PU65:	// 0x1dc4
// BB:69 cycle count: 22
//7197  				
//7198  				temp =Get_Num_Higgest_score(Rounds,Registered_Play_Status);//Pingame

LM1103:
	     .stabn 68,0,7198,LM1103-_End
	     SP = SP - 3              	// [0:7198]  
	     R2 = (_Rounds)           	// [1:7198]  Rounds
	     R3 = seg(_Rounds)        	// [3:7198]  Rounds
	     R4 = SP + 1              	// [4:7198]  
	     [R4++] = R2              	// [6:7198]  
	     [R4] = R3                	// [8:7198]  
	     DS = seg(_Registered_Play_Status)	// [10:7198]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [11:7198]  Registered_Play_Status
	     R3 = DS:[R4]             	// [13:7198]  
	     R4 = SP + 3              	// [15:7198]  
	     [R4] = R3                	// [17:7198]  
	     call _Get_Num_Higgest_score	// [19:7198]  Get_Num_Higgest_score
BB70_PU65:	// 0x1dd5
// BB:70 cycle count: 11
	     SP = SP + 2              	// [0:7198]  
	     [BP + 4] = R1            	// [1:7198]  temp
//7199  				
//7200  				//PlayA1800_Elements(SFX_EndGame);
//7201  			    //Play_Serieplayer16bit(0,Leader_Player,C_Play_StartAddr);//Play_Serieplayer(0,&Leader_Player,C_Play_StartAddr);
//7202  	            PlayA1800_Elements(A_VLMMREN_WinRound01);	   

LM1104:
	     .stabn 68,0,7202,LM1104-_End
	     R3 = 76                  	// [2:7202]  
	     R4 = SP + 1              	// [4:7202]  
	     [R4] = R3                	// [6:7202]  
	     call _PlayA1800_Elements 	// [8:7202]  PlayA1800_Elements
BB71_PU65:	// 0x1dde
// BB:71 cycle count: 19
	     SP = SP - 1              	// [0:7202]  
//7203  	    	    Play_Seq(Higgest_T,C_RoundsTable);//PlayScores(Higgest_T);

LM1105:
	     .stabn 68,0,7203,LM1105-_End
	     DS = seg(_Higgest_T)     	// [1:7203]  Higgest_T
	     R4 = (_Higgest_T)        	// [2:7203]  Higgest_T
	     R3 = DS:[R4]             	// [4:7203]  
	     R4 = SP + 1              	// [6:7203]  
	     [R4] = R3                	// [8:7203]  
	     R3 = 13050               	// [10:7203]  
	     R4 = SP + 2              	// [12:7203]  
	     [R4] = R3                	// [14:7203]  
	     call _Play_Seq           	// [16:7203]  Play_Seq
BB72_PU65:	// 0x1ded
// BB:72 cycle count: 9
	     SP = SP + 1              	// [0:7203]  
//7204  	    	    PlayA1800_Elements(A_VLMMREN_End_03);    

LM1106:
	     .stabn 68,0,7204,LM1106-_End
	     R3 = 21                  	// [1:7204]  
	     R4 = SP + 1              	// [2:7204]  
	     [R4] = R3                	// [4:7204]  
	     call _PlayA1800_Elements 	// [6:7204]  PlayA1800_Elements
BB73_PU65:	// 0x1df4
// BB:73 cycle count: 4
	     SP = SP + 1              	// [0:7204]  
	     goto L_65_54             	// [1:7204]  
L_65_55:	// 0x1df7
// BB:74 cycle count: 24
//7205      	      }
//7206      	     else
//7207      	      {
//7208      	      	
//7209      	      	  Play_Serieplayer16bit(0,Leader_Player_temp,C_Play_StartAddr);

LM1107:
	     .stabn 68,0,7209,LM1107-_End
	     SP = SP - 4              	// [0:7209]  
	     R3 = 0                   	// [1:7209]  
	     R4 = SP + 1              	// [2:7209]  
	     [R4] = R3                	// [4:7209]  
	     R3 = [BP + 1]            	// [6:7209]  Leader_Player_temp
	     R4 = SP + 2              	// [8:7209]  
	     [R4] = R3                	// [10:7209]  
	     R2 = 6000                	// [12:7209]  
	     R3 = 0                   	// [14:7209]  
	     R4 = SP + 3              	// [15:7209]  
	     [R4++] = R2              	// [17:7209]  
	     [R4] = R3                	// [19:7209]  
	     call _Play_Serieplayer16bit	// [21:7209]  Play_Serieplayer16bit
BB75_PU65:	// 0x1e09
// BB:75 cycle count: 10
	     SP = SP + 3              	// [0:7209]  
//7210      	      	  PlayA1800_Elements(A_VLMMREN_WinRound01b);

LM1108:
	     .stabn 68,0,7210,LM1108-_End
	     R3 = 77                  	// [1:7210]  
	     R4 = SP + 1              	// [3:7210]  
	     [R4] = R3                	// [5:7210]  
	     call _PlayA1800_Elements 	// [7:7210]  PlayA1800_Elements
BB76_PU65:	// 0x1e11
// BB:76 cycle count: 16
	     SP = SP - 1              	// [0:7210]  
//7211      	      	  Play_Seq(h_round_temp,C_RoundsTable);

LM1109:
	     .stabn 68,0,7211,LM1109-_End
	     R3 = [BP + 2]            	// [1:7211]  h_round_temp
	     R4 = SP + 1              	// [3:7211]  
	     [R4] = R3                	// [5:7211]  
	     R3 = 13050               	// [7:7211]  
	     R4 = SP + 2              	// [9:7211]  
	     [R4] = R3                	// [11:7211]  
	     call _Play_Seq           	// [13:7211]  Play_Seq
BB77_PU65:	// 0x1e1d
// BB:77 cycle count: 9
	     SP = SP + 1              	// [0:7211]  
//7212      	      	  PlayA1800_Elements(A_VLMMREN_End_Tie02);

LM1110:
	     .stabn 68,0,7212,LM1110-_End
	     R3 = 29                  	// [1:7212]  
	     R4 = SP + 1              	// [2:7212]  
	     [R4] = R3                	// [4:7212]  
	     call _PlayA1800_Elements 	// [6:7212]  PlayA1800_Elements
BB78_PU65:	// 0x1e24
// BB:78 cycle count: 27
	     SP = SP - 3              	// [0:7212]  
//7213      	      	  
//7214      	      	  //temp =Get_Num_Higgest_score(Player_Point,Leader_Player); //上面已求出  	      	  
//7215      	      	  Play_Serieplayer16bit(0,Leader_Player,C_Play_StartAddr);

LM1111:
	     .stabn 68,0,7215,LM1111-_End
	     R3 = 0                   	// [1:7215]  
	     R4 = SP + 1              	// [2:7215]  
	     [R4] = R3                	// [4:7215]  
	     DS = seg(_Leader_Player) 	// [6:7215]  Leader_Player
	     R4 = (_Leader_Player)    	// [7:7215]  Leader_Player
	     R3 = DS:[R4]             	// [9:7215]  
	     R4 = SP + 2              	// [11:7215]  
	     [R4] = R3                	// [13:7215]  
	     R2 = 6000                	// [15:7215]  
	     R3 = 0                   	// [17:7215]  
	     R4 = SP + 3              	// [18:7215]  
	     [R4++] = R2              	// [20:7215]  
	     [R4] = R3                	// [22:7215]  
	     call _Play_Serieplayer16bit	// [24:7215]  Play_Serieplayer16bit
BB79_PU65:	// 0x1e39
// BB:79 cycle count: 9
	     SP = SP + 3              	// [0:7215]  
//7216      	      	  PlayA1800_Elements(A_VLMMREN_End_02);

LM1112:
	     .stabn 68,0,7216,LM1112-_End
	     R3 = 19                  	// [1:7216]  
	     R4 = SP + 1              	// [2:7216]  
	     [R4] = R3                	// [4:7216]  
	     call _PlayA1800_Elements 	// [6:7216]  PlayA1800_Elements
BB80_PU65:	// 0x1e40
// BB:80 cycle count: 12
//7217      	      	  PlayScores(Higgest_T);

LM1113:
	     .stabn 68,0,7217,LM1113-_End
	     DS = seg(_Higgest_T)     	// [0:7217]  Higgest_T
	     R4 = (_Higgest_T)        	// [1:7217]  Higgest_T
	     R3 = DS:[R4]             	// [3:7217]  
	     R4 = SP + 1              	// [5:7217]  
	     [R4] = R3                	// [7:7217]  
	     call _PlayScores         	// [9:7217]  PlayScores
BB81_PU65:	// 0x1e49
// BB:81 cycle count: 8
//7218      	      	  PlayA1800_Elements(A_VLMMREN_End_Tie03);

LM1114:
	     .stabn 68,0,7218,LM1114-_End
	     R3 = 30                  	// [0:7218]  
	     R4 = SP + 1              	// [1:7218]  
	     [R4] = R3                	// [3:7218]  
	     call _PlayA1800_Elements 	// [5:7218]  PlayA1800_Elements
BB82_PU65:	// 0x1e4f
// BB:82 cycle count: 8
//7219      	      	  PlayA1800_Elements(A_VLMMREN_End_03b);    

LM1115:
	     .stabn 68,0,7219,LM1115-_End
	     R3 = 22                  	// [0:7219]  
	     R4 = SP + 1              	// [1:7219]  
	     [R4] = R3                	// [3:7219]  
	     call _PlayA1800_Elements 	// [5:7219]  PlayA1800_Elements
BB83_PU65:	// 0x1e55
// BB:83 cycle count: 1
	     SP = SP + 1              	// [0:7219]  
L_65_54:	// 0x1e56
// BB:84 cycle count: 4

LM1116:
	     .stabn 68,0,7159,LM1116-_End
	     jmp L_65_52              	// [0:7159]  
L_65_53:	// 0x1e57
// BB:85 cycle count: 10
//7224              {
//7225              	//delay_time(8);	
//7226              	//PlayA1800_Elements(SFX_EndGame);            	
//7227  	            //Play_Serieplayer16bit(0,Leader_Player,C_Play_StartAddr);//Play_Serieplayer(0,&Leader_Player,C_Play_StartAddr);
//7228  	            PlayA1800_Elements(A_VLMMREN_WinRound01);	    	   

LM1117:
	     .stabn 68,0,7228,LM1117-_End
	     SP = SP - 1              	// [0:7228]  
	     R3 = 76                  	// [1:7228]  
	     R4 = SP + 1              	// [3:7228]  
	     [R4] = R3                	// [5:7228]  
	     call _PlayA1800_Elements 	// [7:7228]  PlayA1800_Elements
BB86_PU65:	// 0x1e5f
// BB:86 cycle count: 19
	     SP = SP - 1              	// [0:7228]  
//7229  	    	    Play_Seq(Higgest_T,C_RoundsTable);//PlayScores(Higgest_T);

LM1118:
	     .stabn 68,0,7229,LM1118-_End
	     DS = seg(_Higgest_T)     	// [1:7229]  Higgest_T
	     R4 = (_Higgest_T)        	// [2:7229]  Higgest_T
	     R3 = DS:[R4]             	// [4:7229]  
	     R4 = SP + 1              	// [6:7229]  
	     [R4] = R3                	// [8:7229]  
	     R3 = 13050               	// [10:7229]  
	     R4 = SP + 2              	// [12:7229]  
	     [R4] = R3                	// [14:7229]  
	     call _Play_Seq           	// [16:7229]  Play_Seq
BB87_PU65:	// 0x1e6e
// BB:87 cycle count: 9
	     SP = SP + 1              	// [0:7229]  
//7230  	    	    PlayA1800_Elements(A_VLMMREN_End_03);           	

LM1119:
	     .stabn 68,0,7230,LM1119-_End
	     R3 = 21                  	// [1:7230]  
	     R4 = SP + 1              	// [2:7230]  
	     [R4] = R3                	// [4:7230]  
	     call _PlayA1800_Elements 	// [6:7230]  PlayA1800_Elements
BB88_PU65:	// 0x1e75
// BB:88 cycle count: 1
	     SP = SP + 1              	// [0:7230]  
L_65_52:	// 0x1e76
L_65_48:	// 0x1e76
// BB:89 cycle count: 3

LM1120:
	     .stabn 68,0,7116,LM1120-_End
	     goto L_65_41             	// [0:7116]  
L_65_42:	// 0x1e78
// BB:90 cycle count: 10
//7237  
//7238  	
//7239  	// PlayA1800_Elements(SFX_Winner);
//7240    }
//7241   else if(Registerd_Num==1)

LM1121:
	     .stabn 68,0,7241,LM1121-_End
	     DS = seg(_Registerd_Num) 	// [0:7241]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:7241]  Registerd_Num
	     R4 = DS:[R4]             	// [3:7241]  
	     cmp R4, 1                	// [5:7241]  
	     je BB91_PU65             	// [6:7241]  
BB137_PU65:	// 0x1e7e
// BB:137 cycle count: 3
	     goto L_65_61             	// [0:0]  
BB91_PU65:	// 0x1e80
// BB:91 cycle count: 8
//7242   {
//7243   	
//7244   	 if(memory_length>100)

LM1122:
	     .stabn 68,0,7244,LM1122-_End
	     R4 = [BP + 0]            	// [0:7244]  memory_length
	     cmp R4, 100              	// [2:7244]  
	     jbe L_65_63              	// [4:7244]  
BB92_PU65:	// 0x1e84
// BB:92 cycle count: 12
//7245   	 {
//7246   	 	 Record=memory_length;

LM1123:
	     .stabn 68,0,7246,LM1123-_End
	     R3 = [BP + 0]            	// [0:7246]  memory_length
	     DS = seg(_Record)        	// [2:7246]  Record
	     R4 = (_Record)           	// [3:7246]  Record
	     DS:[R4] = R3             	// [5:7246]  
	//;;
	INT OFF
	//;;
//7247   	 	 
//7248   	 	 
//7249   	  __asm("INT OFF");
//7250        MoveSPIDriverToRAM();		

LM1124:
	     .stabn 68,0,7250,LM1124-_End
	     call _MoveSPIDriverToRAM 	// [9:7250]  MoveSPIDriverToRAM
BB93_PU65:	// 0x1e8e
// BB:93 cycle count: 15
//7251        SPI_Flash_Sector_Erase(T_Record_Secter_L,T_Record_Secter_H);

LM1125:
	     .stabn 68,0,7251,LM1125-_End
	     SP = SP - 2              	// [0:7251]  
	     R3 = - 8192              	// [1:7251]  
	     R4 = SP + 1              	// [3:7251]  
	     [R4] = R3                	// [5:7251]  
	     R3 = 31                  	// [7:7251]  
	     R4 = SP + 2              	// [8:7251]  
	     [R4] = R3                	// [10:7251]  
	     call _SPI_Flash_Sector_Erase	// [12:7251]  SPI_Flash_Sector_Erase
BB94_PU65:	// 0x1e9a
// BB:94 cycle count: 24
	     SP = SP - 1              	// [0:7251]  
//7252        //SPI_Flash_SendNWords(&Record,1,T_Record_Secter_L,T_Record_Secter_H); 
//7253        SPI_Flash_SendAWord(T_Record_Secter_L,T_Record_Secter_H,Record);

LM1126:
	     .stabn 68,0,7253,LM1126-_End
	     R3 = - 8192              	// [1:7253]  
	     R4 = SP + 1              	// [3:7253]  
	     [R4] = R3                	// [5:7253]  
	     R3 = 31                  	// [7:7253]  
	     R4 = SP + 2              	// [8:7253]  
	     [R4] = R3                	// [10:7253]  
	     DS = seg(_Record)        	// [12:7253]  Record
	     R4 = (_Record)           	// [13:7253]  Record
	     R3 = DS:[R4]             	// [15:7253]  
	     R4 = SP + 3              	// [17:7253]  
	     [R4] = R3                	// [19:7253]  
	     call _SPI_Flash_SendAWord	// [21:7253]  SPI_Flash_SendAWord
BB95_PU65:	// 0x1ead
// BB:95 cycle count: 11
	     SP = SP + 2              	// [0:7253]  
	//;;
	INT FIQ,IRQ
	//;;
//7254          __asm("INT FIQ,IRQ");
//7255   	 	 
//7256   	 	 
//7257   	 	 
//7258   	 	 PlayA1800_Elements(A_VLMMREN_End_03d);

LM1127:
	     .stabn 68,0,7258,LM1127-_End
	     R3 = 24                  	// [3:7258]  
	     R4 = SP + 1              	// [4:7258]  
	     [R4] = R3                	// [6:7258]  
	     call _PlayA1800_Elements 	// [8:7258]  PlayA1800_Elements
BB96_PU65:	// 0x1eb7
// BB:96 cycle count: 8
//7259   	 	 PlayA1800_Elements(A_VLMMREN_End_03Solo);

LM1128:
	     .stabn 68,0,7259,LM1128-_End
	     R3 = 25                  	// [0:7259]  
	     R4 = SP + 1              	// [1:7259]  
	     [R4] = R3                	// [3:7259]  
	     call _PlayA1800_Elements 	// [5:7259]  PlayA1800_Elements
BB97_PU65:	// 0x1ebd
// BB:97 cycle count: 4
	     SP = SP + 1              	// [0:7259]  
	     goto L_65_62             	// [1:7259]  
L_65_63:	// 0x1ec0
// BB:98 cycle count: 9
//7260   	 }
//7261   	else
//7262   	{
//7263   	
//7264  	 	 PlayA1800_Elements(A_VLMMREN_End_02);

LM1129:
	     .stabn 68,0,7264,LM1129-_End
	     SP = SP - 1              	// [0:7264]  
	     R3 = 19                  	// [1:7264]  
	     R4 = SP + 1              	// [2:7264]  
	     [R4] = R3                	// [4:7264]  
	     call _PlayA1800_Elements 	// [6:7264]  PlayA1800_Elements
BB99_PU65:	// 0x1ec7
// BB:99 cycle count: 9
//7265  	 	 PlayScores(temp_length);

LM1130:
	     .stabn 68,0,7265,LM1130-_End
	     R3 = [BP + 3]            	// [0:7265]  temp_length
	     R4 = SP + 1              	// [2:7265]  
	     [R4] = R3                	// [4:7265]  
	     call _PlayScores         	// [6:7265]  PlayScores
BB100_PU65:	// 0x1ecd
// BB:100 cycle count: 13
	     SP = SP + 1              	// [0:7265]  
//7266  	 	 
//7267  	 	 if(Record<temp_length)

LM1131:
	     .stabn 68,0,7267,LM1131-_End
	     R3 = [BP + 3]            	// [1:7267]  temp_length
	     DS = seg(_Record)        	// [3:7267]  Record
	     R4 = (_Record)           	// [4:7267]  Record
	     R4 = DS:[R4]             	// [6:7267]  
	     cmp R3, R4               	// [8:7267]  
	     jbe L_65_64              	// [9:7267]  
BB101_PU65:	// 0x1ed5
// BB:101 cycle count: 12
//7268  	 	 {
//7269  	 	 	 Record=temp_length;

LM1132:
	     .stabn 68,0,7269,LM1132-_End
	     R3 = [BP + 3]            	// [0:7269]  temp_length
	     DS = seg(_Record)        	// [2:7269]  Record
	     R4 = (_Record)           	// [3:7269]  Record
	     DS:[R4] = R3             	// [5:7269]  
	//;;
	INT OFF
	//;;
//7270  	 	 	 
//7271  			__asm("INT OFF");
//7272  			MoveSPIDriverToRAM();		

LM1133:
	     .stabn 68,0,7272,LM1133-_End
	     call _MoveSPIDriverToRAM 	// [9:7272]  MoveSPIDriverToRAM
BB102_PU65:	// 0x1edf
// BB:102 cycle count: 15
//7273  			SPI_Flash_Sector_Erase(T_Record_Secter_L,T_Record_Secter_H);

LM1134:
	     .stabn 68,0,7273,LM1134-_End
	     SP = SP - 2              	// [0:7273]  
	     R3 = - 8192              	// [1:7273]  
	     R4 = SP + 1              	// [3:7273]  
	     [R4] = R3                	// [5:7273]  
	     R3 = 31                  	// [7:7273]  
	     R4 = SP + 2              	// [8:7273]  
	     [R4] = R3                	// [10:7273]  
	     call _SPI_Flash_Sector_Erase	// [12:7273]  SPI_Flash_Sector_Erase
BB103_PU65:	// 0x1eeb
// BB:103 cycle count: 24
	     SP = SP - 1              	// [0:7273]  
//7274  			SPI_Flash_SendAWord(T_Record_Secter_L,T_Record_Secter_H,Record);

LM1135:
	     .stabn 68,0,7274,LM1135-_End
	     R3 = - 8192              	// [1:7274]  
	     R4 = SP + 1              	// [3:7274]  
	     [R4] = R3                	// [5:7274]  
	     R3 = 31                  	// [7:7274]  
	     R4 = SP + 2              	// [8:7274]  
	     [R4] = R3                	// [10:7274]  
	     DS = seg(_Record)        	// [12:7274]  Record
	     R4 = (_Record)           	// [13:7274]  Record
	     R3 = DS:[R4]             	// [15:7274]  
	     R4 = SP + 3              	// [17:7274]  
	     [R4] = R3                	// [19:7274]  
	     call _SPI_Flash_SendAWord	// [21:7274]  SPI_Flash_SendAWord
BB104_PU65:	// 0x1efe
// BB:104 cycle count: 11
	     SP = SP + 2              	// [0:7274]  
	//;;
	INT FIQ,IRQ
	//;;
//7275  			//SPI_Flash_SendNWords(&Record,1,T_Record_Secter_L,T_Record_Secter_H); 
//7276  			__asm("INT FIQ,IRQ");
//7277  	 	 	 
//7278  	 	 	 
//7279  	 	 	 PlayA1800_Elements(A_VLMMREN_End_01b);

LM1136:
	     .stabn 68,0,7279,LM1136-_End
	     R3 = 18                  	// [3:7279]  
	     R4 = SP + 1              	// [4:7279]  
	     [R4] = R3                	// [6:7279]  
	     call _PlayA1800_Elements 	// [8:7279]  PlayA1800_Elements
BB105_PU65:	// 0x1f08
// BB:105 cycle count: 8
//7280  	 	 	 PlayA1800_Elements(A_VLMMREN_End_03b);

LM1137:
	     .stabn 68,0,7280,LM1137-_End
	     R3 = 22                  	// [0:7280]  
	     R4 = SP + 1              	// [1:7280]  
	     [R4] = R3                	// [3:7280]  
	     call _PlayA1800_Elements 	// [5:7280]  PlayA1800_Elements
BB106_PU65:	// 0x1f0e
// BB:106 cycle count: 1
	     SP = SP + 1              	// [0:7280]  
L_65_64:	// 0x1f0f
L_65_62:	// 0x1f0f
L_65_61:	// 0x1f0f
L_65_41:	// 0x1f0f
// BB:107 cycle count: 10
//7284   
//7285       //if(Record==0)
//7286       //	Record=temp_length;
//7287   
//7288   	 PlayA1800_Elements(SFX_Winner);

LM1138:
	     .stabn 68,0,7288,LM1138-_End
	     SP = SP - 1              	// [0:7288]  
	     R3 = 131                 	// [1:7288]  
	     R4 = SP + 1              	// [3:7288]  
	     [R4] = R3                	// [5:7288]  
	     call _PlayA1800_Elements 	// [7:7288]  PlayA1800_Elements
BB108_PU65:	// 0x1f17
// BB:108 cycle count: 8
//7289   	 delay_time(8);	

LM1139:
	     .stabn 68,0,7289,LM1139-_End
	     R3 = 8                   	// [0:7289]  
	     R4 = SP + 1              	// [1:7289]  
	     [R4] = R3                	// [3:7289]  
	     call _delay_time         	// [5:7289]  delay_time
BB109_PU65:	// 0x1f1d
// BB:109 cycle count: 9
	     SP = SP + 1              	// [0:7289]  
//7290   	 
//7291   	 if((memory_length>=100)&&(Registerd_Num==1))

LM1140:
	     .stabn 68,0,7291,LM1140-_End
	     R4 = [BP + 0]            	// [1:7291]  memory_length
	     cmp R4, 99               	// [3:7291]  
	     jbe L_65_65              	// [5:7291]  
BB110_PU65:	// 0x1f22
// BB:110 cycle count: 10
	     DS = seg(_Registerd_Num) 	// [0:7291]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:7291]  Registerd_Num
	     R4 = DS:[R4]             	// [3:7291]  
	     cmp R4, 1                	// [5:7291]  
	     jne L_65_65              	// [6:7291]  
L_65_66:	// 0x1f28
// BB:111 cycle count: 9
//7292   	 {
//7293   	   PlayA1800_Elements(A_VLMMREN_End_03c); 

LM1141:
	     .stabn 68,0,7293,LM1141-_End
	     SP = SP - 1              	// [0:7293]  
	     R3 = 23                  	// [1:7293]  
	     R4 = SP + 1              	// [2:7293]  
	     [R4] = R3                	// [4:7293]  
	     call _PlayA1800_Elements 	// [6:7293]  PlayA1800_Elements
BB112_PU65:	// 0x1f2f
// BB:112 cycle count: 9
//7294         PlayA1800_Elements(SFX_Winner);

LM1142:
	     .stabn 68,0,7294,LM1142-_End
	     R3 = 131                 	// [0:7294]  
	     R4 = SP + 1              	// [2:7294]  
	     [R4] = R3                	// [4:7294]  
	     call _PlayA1800_Elements 	// [6:7294]  PlayA1800_Elements
BB113_PU65:	// 0x1f36
// BB:113 cycle count: 1
	     SP = SP + 1              	// [0:7294]  
L_65_65:	// 0x1f37
// BB:114 cycle count: 22
//7295         
//7296   	 }
//7297   
//7298  	   Key_Event =0;

LM1143:
	     .stabn 68,0,7298,LM1143-_End
	     R3 = 0                   	// [0:7298]  
	     DS = seg(_Key_Event)     	// [1:7298]  Key_Event
	     R4 = (_Key_Event)        	// [2:7298]  Key_Event
	     DS:[R4] = R3             	// [4:7298]  
//7299  	   Key_activeflag = Playbutton;

LM1144:
	     .stabn 68,0,7299,LM1144-_End
	     R3 = 1                   	// [6:7299]  
	     DS = seg(_Key_activeflag)	// [7:7299]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:7299]  Key_activeflag
	     DS:[R4] = R3             	// [10:7299]  
//7300  	 
//7301  	 
//7302  	  if(Registerd_Num==1)

LM1145:
	     .stabn 68,0,7302,LM1145-_End
	     DS = seg(_Registerd_Num) 	// [12:7302]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [13:7302]  Registerd_Num
	     R4 = DS:[R4]             	// [15:7302]  
	     cmp R4, 1                	// [17:7302]  
	     jne L_65_68              	// [18:7302]  
BB115_PU65:	// 0x1f47
// BB:115 cycle count: 9
//7303  	  {  
//7304         PlayA1800_Elements(A_VLMMREN_End_04);

LM1146:
	     .stabn 68,0,7304,LM1146-_End
	     SP = SP - 1              	// [0:7304]  
	     R3 = 26                  	// [1:7304]  
	     R4 = SP + 1              	// [2:7304]  
	     [R4] = R3                	// [4:7304]  
	     call _PlayA1800_Elements 	// [6:7304]  PlayA1800_Elements
BB116_PU65:	// 0x1f4e
// BB:116 cycle count: 8
//7305         PlayA1800_Elements(A_VLMMREN_Button_01b);

LM1147:
	     .stabn 68,0,7305,LM1147-_End
	     R3 = 8                   	// [0:7305]  
	     R4 = SP + 1              	// [1:7305]  
	     [R4] = R3                	// [3:7305]  
	     call _PlayA1800_Elements 	// [5:7305]  PlayA1800_Elements
BB117_PU65:	// 0x1f54
// BB:117 cycle count: 5
	     SP = SP + 1              	// [0:7305]  
	     jmp L_65_67              	// [1:7305]  
L_65_68:	// 0x1f56
// BB:118 cycle count: 9
//7306  	  }
//7307  	 else
//7308  	  {
//7309         PlayA1800_Elements(A_VLMMREN_End_04);

LM1148:
	     .stabn 68,0,7309,LM1148-_End
	     SP = SP - 1              	// [0:7309]  
	     R3 = 26                  	// [1:7309]  
	     R4 = SP + 1              	// [2:7309]  
	     [R4] = R3                	// [4:7309]  
	     call _PlayA1800_Elements 	// [6:7309]  PlayA1800_Elements
BB119_PU65:	// 0x1f5d
// BB:119 cycle count: 8
//7310         PlayA1800_Elements(A_VLMMREN_Button_01a);	  	

LM1149:
	     .stabn 68,0,7310,LM1149-_End
	     R3 = 7                   	// [0:7310]  
	     R4 = SP + 1              	// [1:7310]  
	     [R4] = R3                	// [3:7310]  
	     call _PlayA1800_Elements 	// [5:7310]  PlayA1800_Elements
BB120_PU65:	// 0x1f63
// BB:120 cycle count: 1
	     SP = SP + 1              	// [0:7310]  
L_65_67:	// 0x1f64
// BB:121 cycle count: 10
//7311  	  	
//7312  	  }  
//7313   
//7314  	 
//7315  	   delay_time(10*16);

LM1150:
	     .stabn 68,0,7315,LM1150-_End
	     SP = SP - 1              	// [0:7315]  
	     R3 = 160                 	// [1:7315]  
	     R4 = SP + 1              	// [3:7315]  
	     [R4] = R3                	// [5:7315]  
	     call _delay_time         	// [7:7315]  delay_time
BB122_PU65:	// 0x1f6c
// BB:122 cycle count: 11
	     SP = SP + 1              	// [0:7315]  
//7316  	 
//7317  	  if(Registerd_Num==1)

LM1151:
	     .stabn 68,0,7317,LM1151-_End
	     DS = seg(_Registerd_Num) 	// [1:7317]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [2:7317]  Registerd_Num
	     R4 = DS:[R4]             	// [4:7317]  
	     cmp R4, 1                	// [6:7317]  
	     jne L_65_70              	// [7:7317]  
BB123_PU65:	// 0x1f73
// BB:123 cycle count: 9
//7318  	  {  
//7319         PlayA1800_Elements(A_VLMMREN_End_04);

LM1152:
	     .stabn 68,0,7319,LM1152-_End
	     SP = SP - 1              	// [0:7319]  
	     R3 = 26                  	// [1:7319]  
	     R4 = SP + 1              	// [2:7319]  
	     [R4] = R3                	// [4:7319]  
	     call _PlayA1800_Elements 	// [6:7319]  PlayA1800_Elements
BB124_PU65:	// 0x1f7a
// BB:124 cycle count: 8
//7320         PlayA1800_Elements(A_VLMMREN_Button_01b);

LM1153:
	     .stabn 68,0,7320,LM1153-_End
	     R3 = 8                   	// [0:7320]  
	     R4 = SP + 1              	// [1:7320]  
	     [R4] = R3                	// [3:7320]  
	     call _PlayA1800_Elements 	// [5:7320]  PlayA1800_Elements
BB125_PU65:	// 0x1f80
// BB:125 cycle count: 5
	     SP = SP + 1              	// [0:7320]  
	     jmp L_65_69              	// [1:7320]  
L_65_70:	// 0x1f82
// BB:126 cycle count: 9
//7321  	  }
//7322  	 else
//7323  	  {
//7324         PlayA1800_Elements(A_VLMMREN_End_04);

LM1154:
	     .stabn 68,0,7324,LM1154-_End
	     SP = SP - 1              	// [0:7324]  
	     R3 = 26                  	// [1:7324]  
	     R4 = SP + 1              	// [2:7324]  
	     [R4] = R3                	// [4:7324]  
	     call _PlayA1800_Elements 	// [6:7324]  PlayA1800_Elements
BB127_PU65:	// 0x1f89
// BB:127 cycle count: 8
//7325         PlayA1800_Elements(A_VLMMREN_Button_01a);	  	

LM1155:
	     .stabn 68,0,7325,LM1155-_End
	     R3 = 7                   	// [0:7325]  
	     R4 = SP + 1              	// [1:7325]  
	     [R4] = R3                	// [3:7325]  
	     call _PlayA1800_Elements 	// [5:7325]  PlayA1800_Elements
BB128_PU65:	// 0x1f8f
// BB:128 cycle count: 1
	     SP = SP + 1              	// [0:7325]  
L_65_69:	// 0x1f90
// BB:129 cycle count: 10
//7326  	  	
//7327  	  }  
//7328         
//7329         delay_time(10*16);

LM1156:
	     .stabn 68,0,7329,LM1156-_End
	     SP = SP - 1              	// [0:7329]  
	     R3 = 160                 	// [1:7329]  
	     R4 = SP + 1              	// [3:7329]  
	     [R4] = R3                	// [5:7329]  
	     call _delay_time         	// [7:7329]  delay_time
BB130_PU65:	// 0x1f98
// BB:130 cycle count: 11
	     SP = SP + 1              	// [0:7329]  
//7330         
//7331  	 if(Key_Event  == Playbutton)

LM1157:
	     .stabn 68,0,7331,LM1157-_End
	     DS = seg(_Key_Event)     	// [1:7331]  Key_Event
	     R4 = (_Key_Event)        	// [2:7331]  Key_Event
	     R4 = DS:[R4]             	// [4:7331]  
	     cmp R4, 1                	// [6:7331]  
	     jne L_65_72              	// [7:7331]  
BB131_PU65:	// 0x1f9f
// BB:131 cycle count: 16
//7332  	 	{
//7333              Key_Event=0;

LM1158:
	     .stabn 68,0,7333,LM1158-_End
	     R3 = 0                   	// [0:7333]  
	     DS = seg(_Key_Event)     	// [1:7333]  Key_Event
	     R4 = (_Key_Event)        	// [2:7333]  Key_Event
	     DS:[R4] = R3             	// [4:7333]  
//7334              PlayA1800_Elements(SFX_Buzzer);

LM1159:
	     .stabn 68,0,7334,LM1159-_End
	     SP = SP - 1              	// [6:7334]  
	     R3 = 121                 	// [7:7334]  
	     R4 = SP + 1              	// [9:7334]  
	     [R4] = R3                	// [11:7334]  
	     call _PlayA1800_Elements 	// [13:7334]  PlayA1800_Elements
BB132_PU65:	// 0x1fac
// BB:132 cycle count: 14
	     SP = SP + 9              	// [0:7334]  
//7335              Restart =1;

LM1160:
	     .stabn 68,0,7335,LM1160-_End
	     R3 = 1                   	// [1:7335]  
	     DS = seg(_Restart)       	// [2:7335]  Restart
	     R4 = (_Restart)          	// [3:7335]  Restart
	     DS:[R4] = R3             	// [5:7335]  
//7336  			return  C_StartGame;

LM1161:
	     .stabn 68,0,7336,LM1161-_End
	     R1 = - 4093              	// [7:7336]  
	     pop BP, PC from [SP]     	// [9:7336]  
L_65_72:	// 0x1fb5
// BB:133 cycle count: 15
//7337  
//7338  	 	}
//7339        else
//7340        	{
//7341              Key_Event=0;

LM1162:
	     .stabn 68,0,7341,LM1162-_End
	     R3 = 0                   	// [0:7341]  
	     DS = seg(_Key_Event)     	// [1:7341]  Key_Event
	     R4 = (_Key_Event)        	// [2:7341]  Key_Event
	     DS:[R4] = R3             	// [4:7341]  
//7342              PlayA1800_Elements(A_VLMMREN_Bye_02);

LM1163:
	     .stabn 68,0,7342,LM1163-_End
	     SP = SP - 1              	// [6:7342]  
	     R3 = 10                  	// [7:7342]  
	     R4 = SP + 1              	// [8:7342]  
	     [R4] = R3                	// [10:7342]  
	     call _PlayA1800_Elements 	// [12:7342]  PlayA1800_Elements
BB134_PU65:	// 0x1fc1
// BB:134 cycle count: 8
	     SP = SP + 9              	// [0:7342]  
//7343              return C_Off_Mode;

LM1164:
	     .stabn 68,0,7343,LM1164-_End
	     R1 = - 4085              	// [1:7343]  
	     pop BP, PC from [SP]     	// [3:7343]  
L_65_71:	// 0x1fc5
// BB:135 cycle count: 12
//7344        	}
//7345  
//7346  
//7347  	 Key_Event =0;

LM1165:
	     .stabn 68,0,7347,LM1165-_End
	     R3 = 0                   	// [0:7347]  
	     DS = seg(_Key_Event)     	// [1:7347]  Key_Event
	     R4 = (_Key_Event)        	// [2:7347]  Key_Event
	     DS:[R4] = R3             	// [4:7347]  
	     SP = SP + 8              	// [6:7347]  
	     pop BP, PC from [SP]     	// [7:7347]  
LBE60:
	.endp	
	     .stabn 192,0,0,LBB60-_End
	     .stabs "memory_length:4",128,0,0,0
	     .stabs "temp_length:4",128,0,0,3
	     .stabs "temp:4",128,0,0,4
	     .stabs "Leader_Player_temp:4",128,0,0,1
	     .stabs "h_round_temp:1",128,0,0,2
	     .stabn 224,0,0,LBE60-_End
LME66:
	     .stabf LME66-_End
.code
	     .stabs "Go_Rest:F18",36,0,0,_Go_Rest

	// Program Unit: Go_Rest
.public	_Go_Rest
_Go_Rest: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//7352  
//7353  //============================================================
//7354  //==============================================================
//7355  void  Go_Rest()
//7356  {

LM1166:
	     .stabn 68,0,7356,LM1166-_Go_Rest
BB1_PU66:	// 0x1fc0
// BB:1 cycle count: 17
	     push BP to [SP]          	// [0:7356]  
	     SP = SP - 1              	// [2:7356]  
	     BP = SP + 1              	// [3:7356]  
	//;;
	IRQ off
	//;;
LBB61:
//7357  	unsigned i;
//7358  	asm("IRQ off");
//7359  	
//7360  		
//7361  	if(A1800_Flag)

LM1167:
	     .stabn 68,0,7361,LM1167-_Go_Rest
	     DS = seg(_A1800_Flag)    	// [7:7361]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [8:7361]  A1800_Flag
	     R4 = DS:[R4]             	// [10:7361]  
	     cmp R4, 0                	// [12:7361]  
	     je L_66_7                	// [13:7361]  
BB2_PU66:	// 0x1fcd
// BB:2 cycle count: 3
//7362  	{
//7363  	 SACM_A1800_Stop();

LM1168:
	     .stabn 68,0,7363,LM1168-_Go_Rest
	     call _SACM_A1800_Stop    	// [0:7363]  SACM_A1800_Stop
BB3_PU66:	// 0x1fcf
// BB:3 cycle count: 6
//7364  	 A1800_Flag =0;

LM1169:
	     .stabn 68,0,7364,LM1169-_Go_Rest
	     R3 = 0                   	// [0:7364]  
	     DS = seg(_A1800_Flag)    	// [1:7364]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [2:7364]  A1800_Flag
	     DS:[R4] = R3             	// [4:7364]  
L_66_7:	// 0x1fd4
// BB:4 cycle count: 3
//7365  	}
//7366  //	Led_SP_Off();
//7367  	
//7368  	i = 1000;

LM1170:
	     .stabn 68,0,7368,LM1170-_Go_Rest
	     R4 = 1000                	// [0:7368]  
	     [BP + 0] = R4            	// [2:7368]  i
Lt_66_5:	// 0x1fd7
// BB:5 cycle count: 12
//7369  	while(i--) System_ServiceLoop();

LM1171:
	     .stabn 68,0,7369,LM1171-_Go_Rest
	     R4 = [BP + 0]            	// [0:7369]  i
	     R4 = R4 - 1              	// [2:7369]  
	     [BP + 0] = R4            	// [3:7369]  i
	     R4 = [BP + 0]            	// [4:7369]  i
	     cmp R4, 65535            	// [6:7369]  
	     je Lt_66_6               	// [8:7369]  
BB6_PU66:	// 0x1fde
// BB:6 cycle count: 3
	     call _System_ServiceLoop 	// [0:7369]  System_ServiceLoop
BB7_PU66:	// 0x1fe0
// BB:7 cycle count: 4
	     jmp Lt_66_5              	// [0:7369]  
Lt_66_6:	// 0x1fe1
// BB:8 cycle count: 14
//7384  //	i = 3000;
//7385  //	while(i--) System_ServiceLoop();
//7386  
//7387     // Sleep();
//7388  	*P_System_Reset = C_Software_Reset;

LM1172:
	     .stabn 68,0,7388,LM1172-_Go_Rest
	     R2 = 21845               	// [0:7388]  
	     R3 = 12337               	// [2:7388]  
	     R4 = 0                   	// [4:7388]  
	     DS = R4                  	// [5:7388]  
	     DS:[R3] = R2             	// [6:7388]  
	     SP = SP + 1              	// [8:7388]  
	     pop BP, PC from [SP]     	// [9:7388]  
LBE61:
	.endp	
	     .stabn 192,0,0,LBB61-_Go_Rest
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE61-_Go_Rest
LME67:
	     .stabf LME67-_Go_Rest
.code
	     .stabs "Sleeping:F18",36,0,0,_Sleeping

	// Program Unit: Sleeping
.public	_Sleeping
_Sleeping: .proc	
	     .stabn 0xa6,0,0,1
	// cnt = 0
	// old_frame_pointer = 1
	// return_address = 2
//7390  
//7391  /**********************************************************
//7392  *************************************************************/
//7393  void Sleeping()
//7394  {

LM1173:
	     .stabn 68,0,7394,LM1173-_Sleeping
BB1_PU67:	// 0x1fe7
// BB:1 cycle count: 17
	     push BP to [SP]          	// [0:7394]  
	     SP = SP - 1              	// [2:7394]  
	     BP = SP + 1              	// [3:7394]  
LBB62:
//7395  //   unsigned int temp;//temp_Mode;
//7396     unsigned int cnt =0;

LM1174:
	     .stabn 68,0,7396,LM1174-_Sleeping
	     R4 = 0                   	// [5:7396]  
	     [BP + 0] = R4            	// [6:7396]  cnt
//7397  	
//7398   if(A1800_Flag)

LM1175:
	     .stabn 68,0,7398,LM1175-_Sleeping
	     DS = seg(_A1800_Flag)    	// [7:7398]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [8:7398]  A1800_Flag
	     R4 = DS:[R4]             	// [10:7398]  
	     cmp R4, 0                	// [12:7398]  
	     je L_67_3                	// [13:7398]  
BB2_PU67:	// 0x1ff3
// BB:2 cycle count: 3
//7399   {
//7400     SACM_A1800_Stop();

LM1176:
	     .stabn 68,0,7400,LM1176-_Sleeping
	     call _SACM_A1800_Stop    	// [0:7400]  SACM_A1800_Stop
BB3_PU67:	// 0x1ff5
// BB:3 cycle count: 6
//7401     A1800_Flag = 0;	

LM1177:
	     .stabn 68,0,7401,LM1177-_Sleeping
	     R3 = 0                   	// [0:7401]  
	     DS = seg(_A1800_Flag)    	// [1:7401]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [2:7401]  A1800_Flag
	     DS:[R4] = R3             	// [4:7401]  
L_67_3:	// 0x1ffa
// BB:4 cycle count: 3
//7402     
//7403   }	
//7404  	
//7405     Sleep_Io();	

LM1178:
	     .stabn 68,0,7405,LM1178-_Sleeping
	     call _Sleep_Io           	// [0:7405]  Sleep_Io
L_67_4:	// 0x1ffc
// BB:5 cycle count: 3
//7406  	
//7407  while(1)
//7408  {	
//7409  	
//7410    WatchdogClear();	

LM1179:
	     .stabn 68,0,7410,LM1179-_Sleeping
	     call _WatchdogClear      	// [0:7410]  WatchdogClear
Lt_67_1:	// 0x1ffe
// BB:6 cycle count: 5
//7411    //temp_Mode = Switch_Mode;	
//7412  go_on_sleep_sw:	
//7413         cnt =0;

LM1180:
	     .stabn 68,0,7413,LM1180-_Sleeping
	     R4 = 0                   	// [0:7413]  
	     [BP + 0] = R4            	// [1:7413]  cnt
//7414  	   Sleep();	

LM1181:
	     .stabn 68,0,7414,LM1181-_Sleeping
	     call _Sleep              	// [2:7414]  Sleep
BB7_PU67:	// 0x2002
// BB:7 cycle count: 3
//7437  		//goto go_on_sleep_sw;	
//7438  	{	
//7439  
//7440  
//7441  		Sys_clock_init_Only();

LM1182:
	     .stabn 68,0,7441,LM1182-_Sleeping
	     call _Sys_clock_init_Only	// [0:7441]  Sys_clock_init_Only
BB8_PU67:	// 0x2004
// BB:8 cycle count: 3
//7442  	    //Sys_clock_init();
//7443  	    IO_init_Wakeup();

LM1183:
	     .stabn 68,0,7443,LM1183-_Sleeping
	     call _IO_init_Wakeup     	// [0:7443]  IO_init_Wakeup
BB9_PU67:	// 0x2006
// BB:9 cycle count: 10
//7444  	    
//7445  	    
//7446  	    Delay1xms(100);

LM1184:
	     .stabn 68,0,7446,LM1184-_Sleeping
	     SP = SP - 1              	// [0:7446]  
	     R3 = 100                 	// [1:7446]  
	     R4 = SP + 1              	// [3:7446]  
	     [R4] = R3                	// [5:7446]  
	     call _Delay1xms          	// [7:7446]  Delay1xms
BB10_PU67:	// 0x200e
// BB:10 cycle count: 4
	     SP = SP + 1              	// [0:7446]  
//7447  	    GetMode();

LM1185:
	     .stabn 68,0,7447,LM1185-_Sleeping
	     call _GetMode            	// [1:7447]  GetMode
BB11_PU67:	// 0x2011
// BB:11 cycle count: 11
//7448  	   // Switch_Mode = Key_Instruction;
//7449  	    
//7450  	 
//7451  	 	if((Switch_Mode == Key_Game)||(Switch_Mode == Key_Game_Family))

LM1186:
	     .stabn 68,0,7451,LM1186-_Sleeping
	     DS = seg(_Switch_Mode)   	// [0:7451]  Switch_Mode
	     R4 = (_Switch_Mode)      	// [1:7451]  Switch_Mode
	     R4 = DS:[R4]             	// [3:7451]  
	     cmp R4, 512              	// [5:7451]  
	     je L_67_8                	// [7:7451]  
BB12_PU67:	// 0x2018
// BB:12 cycle count: 11
	     DS = seg(_Switch_Mode)   	// [0:7451]  Switch_Mode
	     R4 = (_Switch_Mode)      	// [1:7451]  Switch_Mode
	     R4 = DS:[R4]             	// [3:7451]  
	     cmp R4, 128              	// [5:7451]  
	     jne L_67_7               	// [7:7451]  
L_67_8:	// 0x201f
// BB:13 cycle count: 30
//7452  	    {
//7453           	cnt =Wakeup_IO_Temp^Sleep_IO_Temp;

LM1187:
	     .stabn 68,0,7453,LM1187-_Sleeping
	     DS = seg(_Sleep_IO_Temp) 	// [0:7453]  Sleep_IO_Temp
	     R4 = (_Sleep_IO_Temp)    	// [1:7453]  Sleep_IO_Temp
	     R4 = DS:[R4]             	// [3:7453]  
	     DS = seg(_Wakeup_IO_Temp)	// [5:7453]  Wakeup_IO_Temp
	     R3 = (_Wakeup_IO_Temp)   	// [6:7453]  Wakeup_IO_Temp
	     R4 = R4 ^ DS:[R3]        	// [8:7453]  
	     [BP + 0] = R4            	// [10:7453]  cnt
//7454           	
//7455           // if(VOL1Flag)	
//7456  	           cnt&=0x280;//200

LM1188:
	     .stabn 68,0,7456,LM1188-_Sleeping
	     R4 = [BP + 0]            	// [11:7456]  cnt
	     R4 = R4 & 640            	// [13:7456]  
	     [BP + 0] = R4            	// [15:7456]  cnt
//7457  	     // else
//7458  	      //    cnt&=0x080;
//7459  	        
//7460  	       // if((cnt)&&(temp&0x200)==0))
//7461  	       if((Wakeup_IO_Temp&cnt)!=cnt) 	

LM1189:
	     .stabn 68,0,7461,LM1189-_Sleeping
	     R2 = [BP + 0]            	// [16:7461]  cnt
	     R4 = [BP + 0]            	// [18:7461]  cnt
	     DS = seg(_Wakeup_IO_Temp)	// [20:7461]  Wakeup_IO_Temp
	     R3 = (_Wakeup_IO_Temp)   	// [21:7461]  Wakeup_IO_Temp
	     R4 = R4 & DS:[R3]        	// [23:7461]  
	     cmp R2, R4               	// [25:7461]  
	     je L_67_9                	// [26:7461]  
BB14_PU67:	// 0x2034
// BB:14 cycle count: 4
//7462  	  	    {
//7463  	  	   	  break;

LM1190:
	     .stabn 68,0,7463,LM1190-_Sleeping
	     jmp Lt_67_2              	// [0:7463]  
L_67_9:	// 0x2035
// BB:15 cycle count: 4

LM1191:
	     .stabn 68,0,7461,LM1191-_Sleeping
	     jmp L_67_6               	// [0:7461]  
L_67_7:	// 0x2036
// BB:16 cycle count: 11
//7464  	  	    }
//7465  
//7466  	    }
//7467  	  else if(Switch_Mode == Key_Instruction)

LM1192:
	     .stabn 68,0,7467,LM1192-_Sleeping
	     DS = seg(_Switch_Mode)   	// [0:7467]  Switch_Mode
	     R4 = (_Switch_Mode)      	// [1:7467]  Switch_Mode
	     R4 = DS:[R4]             	// [3:7467]  
	     cmp R4, 256              	// [5:7467]  
	     jne L_67_10              	// [7:7467]  
BB17_PU67:	// 0x203d
// BB:17 cycle count: 30
//7468  	    {
//7469  	        //Sleep_IO_Temp&=0x7f;
//7470  	       
//7471  	        cnt =Wakeup_IO_Temp^Sleep_IO_Temp;

LM1193:
	     .stabn 68,0,7471,LM1193-_Sleeping
	     DS = seg(_Sleep_IO_Temp) 	// [0:7471]  Sleep_IO_Temp
	     R4 = (_Sleep_IO_Temp)    	// [1:7471]  Sleep_IO_Temp
	     R4 = DS:[R4]             	// [3:7471]  
	     DS = seg(_Wakeup_IO_Temp)	// [5:7471]  Wakeup_IO_Temp
	     R3 = (_Wakeup_IO_Temp)   	// [6:7471]  Wakeup_IO_Temp
	     R4 = R4 ^ DS:[R3]        	// [8:7471]  
	     [BP + 0] = R4            	// [10:7471]  cnt
//7472  	        cnt&=0x7f;

LM1194:
	     .stabn 68,0,7472,LM1194-_Sleeping
	     R4 = [BP + 0]            	// [11:7472]  cnt
	     R4 = R4 & 127            	// [13:7472]  
	     [BP + 0] = R4            	// [15:7472]  cnt
//7473  	       // temp&=cnt;	    	
//7474  	  	   if((Wakeup_IO_Temp&cnt)!=cnt)

LM1195:
	     .stabn 68,0,7474,LM1195-_Sleeping
	     R2 = [BP + 0]            	// [16:7474]  cnt
	     R4 = [BP + 0]            	// [18:7474]  cnt
	     DS = seg(_Wakeup_IO_Temp)	// [20:7474]  Wakeup_IO_Temp
	     R3 = (_Wakeup_IO_Temp)   	// [21:7474]  Wakeup_IO_Temp
	     R4 = R4 & DS:[R3]        	// [23:7474]  
	     cmp R2, R4               	// [25:7474]  
	     je L_67_11               	// [26:7474]  
BB18_PU67:	// 0x2052
// BB:18 cycle count: 4
//7475  	  	   {
//7476  	  	   	  break;

LM1196:
	     .stabn 68,0,7476,LM1196-_Sleeping
	     jmp Lt_67_2              	// [0:7476]  
L_67_11:	// 0x2053
L_67_10:	// 0x2053
L_67_6:	// 0x2053
// BB:19 cycle count: 3
//7478  	  	
//7479  	    }
//7480  
//7481         
//7482         Set_Sleep_IO();

LM1197:
	     .stabn 68,0,7482,LM1197-_Sleeping
	     call _Set_Sleep_IO       	// [0:7482]  Set_Sleep_IO
BB20_PU67:	// 0x2055
// BB:20 cycle count: 3
	     goto L_67_4              	// [0:7482]  
L_67_5:	// 0x2057
Lt_67_2:	// 0x2057
// BB:21 cycle count: 27
//7488  #if C_PassEn
//7489     	PassFlag =0;
//7490  #endif   	
//7491     
//7492     	Sleepflag =0;

LM1198:
	     .stabn 68,0,7492,LM1198-_Sleeping
	     R3 = 0                   	// [0:7492]  
	     DS = seg(_Sleepflag)     	// [1:7492]  Sleepflag
	     R4 = (_Sleepflag)        	// [2:7492]  Sleepflag
	     DS:[R4] = R3             	// [4:7492]  
//7493    	LED_Cnt =0;	//xiang 20150206

LM1199:
	     .stabn 68,0,7493,LM1199-_Sleeping
	     R3 = 0                   	// [6:7493]  
	     DS = seg(_LED_Cnt)       	// [7:7493]  LED_Cnt
	     R4 = (_LED_Cnt)          	// [8:7493]  LED_Cnt
	     DS:[R4] = R3             	// [10:7493]  
//7494     	BlinkFlag_Data = 0;//xiang 20150226

LM1200:
	     .stabn 68,0,7494,LM1200-_Sleeping
	     R3 = 0                   	// [12:7494]  
	     DS = seg(_BlinkFlag_Data)	// [13:7494]  BlinkFlag_Data
	     R4 = (_BlinkFlag_Data)   	// [14:7494]  BlinkFlag_Data
	     DS:[R4] = R3             	// [16:7494]  
//7495     	CheaterFlag =0;

LM1201:
	     .stabn 68,0,7495,LM1201-_Sleeping
	     R3 = 0                   	// [18:7495]  
	     DS = seg(_CheaterFlag)   	// [19:7495]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [20:7495]  CheaterFlag
	     DS:[R4] = R3             	// [22:7495]  
//7496     //	Event_List = Event_List_Init;
//7497     	
//7498      Sys_clock_init();

LM1202:
	     .stabn 68,0,7498,LM1202-_Sleeping
	     call _Sys_clock_init     	// [24:7498]  Sys_clock_init
BB22_PU67:	// 0x206d
// BB:22 cycle count: 3
//7499      Time_init();

LM1203:
	     .stabn 68,0,7499,LM1203-_Sleeping
	     call _Time_init          	// [0:7499]  Time_init
BB23_PU67:	// 0x206f
// BB:23 cycle count: 3
//7500      IO_init();

LM1204:
	     .stabn 68,0,7500,LM1204-_Sleeping
	     call _IO_init            	// [0:7500]  IO_init
BB24_PU67:	// 0x2071
// BB:24 cycle count: 3
//7501  
//7502  //	SPI_Initial();
//7503  //	SPI_Flash_Release_DP();
//7504  	
//7505  	Init_CTS();	

LM1205:
	     .stabn 68,0,7505,LM1205-_Sleeping
	     call _Init_CTS           	// [0:7505]  Init_CTS
BB25_PU67:	// 0x2073
// BB:25 cycle count: 3
//7506  	Key_Scan_Init_Wakeup();

LM1206:
	     .stabn 68,0,7506,LM1206-_Sleeping
	     call _Key_Scan_Init_Wakeup	// [0:7506]  Key_Scan_Init_Wakeup
BB26_PU67:	// 0x2075
// BB:26 cycle count: 16
//7507  
//7508      Key_Event =0;

LM1207:
	     .stabn 68,0,7508,LM1207-_Sleeping
	     R3 = 0                   	// [0:7508]  
	     DS = seg(_Key_Event)     	// [1:7508]  Key_Event
	     R4 = (_Key_Event)        	// [2:7508]  Key_Event
	     DS:[R4] = R3             	// [4:7508]  
	//;;
	FIQ ON
	//;;
	//;;
	IRQ ON
	//;;
//7509  
//7510  	asm("FIQ ON");
//7511  	asm("IRQ ON");	

LM1208:
	     .stabn 68,0,7511,LM1208-_Sleeping
	     SP = SP + 1              	// [10:7511]  
	     pop BP, PC from [SP]     	// [11:7511]  
LBE62:
	.endp	
	     .stabn 192,0,0,LBB62-_Sleeping
	     .stabs "cnt:4",128,0,0,0
	     .stabn 224,0,0,LBE62-_Sleeping
LME68:
	     .stabf LME68-_Sleeping

.iram
	     .stabs "QuestionStatus_LQA:G31=ar3;0;19;4",32,0,0,_QuestionStatus_LQA
.public	_QuestionStatus_LQA
_QuestionStatus_LQA:	// 0x75
	.dw 20 dup(0)
	     .stabs "QuestionStatus_LQ:G31",32,0,0,_QuestionStatus_LQ
.public	_QuestionStatus_LQ
_QuestionStatus_LQ:	// 0x89
	.dw 20 dup(0)
	     .stabs "QuestionStatus_Asked:G31",32,0,0,_QuestionStatus_Asked
.public	_QuestionStatus_Asked
_QuestionStatus_Asked:	// 0x9d
	.dw 20 dup(0)
.external _SPI_ReadAByte
.external _SPI_ReadAWord_Big
.external _TimeCnt
.external _WatchdogClear
.external _PlayA1800_Elements
.external _Play_Seq
.external _Led_ON_Some
.external _Light_all_off
.external _PlayQuestionflag
.external _TwoKeyflag
.external _PauseFlag
.external _MoveSPIDriverToRAM
.external _SPI_Flash_Sector_Erase
.external _SPI_Flash_SendNWords
.external _SPI_Flash_ReadNWords
.external _SPI_Flash_ReadAWord
.external _TS_CTS_ServiceLoop
.external _CheaterFlag
.external _A1800_Flag
.external _SACM_A1800_Status
.external _PlayA1800_ElementsInit
.external _SACM_A1800_ServiceLoop
.external _LongPressflag
.external _Pause_Process
.external _Key
.external _Pressflag
.external _Volume
.external _SP_RampDnDAC1
.external _LED_Cnt
.external _sp_offset
.external _PlayA1800_Other
.external _SACM_A1800_Stop
.external _SPI_Flash_SendAWord
.external _System_ServiceLoop
.external _Sleep_Io
.external _Sleep
.external _Sys_clock_init_Only
.external _IO_init_Wakeup
.external _Delay1xms
.external _GetMode
.external _Switch_Mode
.external _Set_Sleep_IO
.external _Sys_clock_init
.external _Time_init
.external _IO_init
.external _Init_CTS
.external _Key_Scan_Init_Wakeup
.external __modu1
