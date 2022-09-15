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
// 431  //}
// 432  
// 433  
// 434  unsigned  Get_Question_Answer(unsigned lQuestionIdx)
// 435  {

LM1:
	     .stabn 68,0,435,LM1-_Get_Question_Answer
BB1_PU0:	// 0x0
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:435]  
	     SP = SP - 2              	// [2:435]  
	     BP = SP + 1              	// [3:435]  
LBB2:
// 436  	unsigned long Addr;
// 437  	Addr = lQuestionIdx + C_TableQ_Answer_StartAddr;

LM2:
	     .stabn 68,0,437,LM2-_Get_Question_Answer
	     R4 = [BP + 5]            	// [5:437]  lQuestionIdx
	     R4 = R4 + 24900          	// [7:437]  
	     R3 = 0                   	// [9:437]  
	     [BP + 0] = R4            	// [10:437]  Addr
	     [BP + 1] = R3            	// [11:437]  Addr+1
// 438  	return SPI_ReadAByte(Addr);

LM3:
	     .stabn 68,0,438,LM3-_Get_Question_Answer
	     SP = SP - 2              	// [12:438]  
	     R2 = [BP + 0]            	// [13:438]  Addr
	     R3 = [BP + 1]            	// [15:438]  Addr+1
	     R4 = SP + 1              	// [17:438]  
	     [R4++] = R2              	// [19:438]  
	     [R4] = R3                	// [21:438]  
	     call _SPI_ReadAByte      	// [23:438]  SPI_ReadAByte
BB2_PU0:	// 0x13
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:438]  
	     pop BP, PC from [SP]     	// [1:438]  
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
	     .stabs "randomflag:G4",32,0,0,_randomflag
.public	_randomflag
_randomflag:	// 0x113
	.dw	0
	// end of initialization for randomflag
	     .stabs "Event_F:G26=ar3;0;11;19",32,0,0,_Event_F
.public	_Event_F
_Event_F:	// 0x114
	.dw 24 dup(0)
	// end of initialization for Event_F
	     .stabs "LFX_Data:G24",32,0,0,_LFX_Data
.public	_LFX_Data
_LFX_Data:	// 0x12c
	.dw	1
	.dw	2
	.dw	4
	.dw	8
	// end of initialization for LFX_Data

.nb_data
	     .stabs "Led_Data_Play:G27=ar3;0;4;4",32,0,0,_Led_Data_Play
.public	_Led_Data_Play
_Led_Data_Play:	// 0x0
	.dw	1
	.dw	2
	.dw	4
	.dw	8
	.dw	16
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
// 446  //}
// 447  
// 448  
// 449  unsigned  Get_Question_Category(unsigned lQuestionIdx)
// 450  {

LM4:
	     .stabn 68,0,450,LM4-_Get_Question_Category
BB1_PU1:	// 0x15
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:450]  
	     SP = SP - 2              	// [2:450]  
	     BP = SP + 1              	// [3:450]  
LBB3:
// 451  	unsigned long Addr;
// 452  	Addr = lQuestionIdx + C_TableCategory;

LM5:
	     .stabn 68,0,452,LM5-_Get_Question_Category
	     R4 = [BP + 5]            	// [5:452]  lQuestionIdx
	     R4 = R4 + 10500          	// [7:452]  
	     R3 = 0                   	// [9:452]  
	     [BP + 0] = R4            	// [10:452]  Addr
	     [BP + 1] = R3            	// [11:452]  Addr+1
// 453  	return SPI_ReadAByte(Addr);

LM6:
	     .stabn 68,0,453,LM6-_Get_Question_Category
	     SP = SP - 2              	// [12:453]  
	     R2 = [BP + 0]            	// [13:453]  Addr
	     R3 = [BP + 1]            	// [15:453]  Addr+1
	     R4 = SP + 1              	// [17:453]  
	     [R4++] = R2              	// [19:453]  
	     [R4] = R3                	// [21:453]  
	     call _SPI_ReadAByte      	// [23:453]  SPI_ReadAByte
BB2_PU1:	// 0x28
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:453]  
	     pop BP, PC from [SP]     	// [1:453]  
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
// 454  }
// 455  
// 456  unsigned  Get_Question_Sound(unsigned lQuestionIdx)
// 457  {

LM7:
	     .stabn 68,0,457,LM7-_Get_Question_Sound
BB1_PU2:	// 0x2a
// BB:1 cycle count: 27
	     push BP to [SP]          	// [0:457]  
	     SP = SP - 2              	// [2:457]  
	     BP = SP + 1              	// [3:457]  
LBB4:
// 458  	unsigned long Addr;
// 459  	Addr = lQuestionIdx*2 + C_TableQ_Sound_StartAddr;

LM8:
	     .stabn 68,0,459,LM8-_Get_Question_Sound
	     R4 = [BP + 5]            	// [5:459]  lQuestionIdx
	     R4 = R4 lsl 1            	// [7:459]  
	     R4 = R4 + 5000           	// [8:459]  
	     R3 = 0                   	// [10:459]  
	     [BP + 0] = R4            	// [11:459]  Addr
	     [BP + 1] = R3            	// [12:459]  Addr+1
// 460  	return SPI_ReadAWord_Big(Addr);

LM9:
	     .stabn 68,0,460,LM9-_Get_Question_Sound
	     SP = SP - 2              	// [13:460]  
	     R2 = [BP + 0]            	// [14:460]  Addr
	     R3 = [BP + 1]            	// [16:460]  Addr+1
	     R4 = SP + 1              	// [18:460]  
	     [R4++] = R2              	// [20:460]  
	     [R4] = R3                	// [22:460]  
	     call _SPI_ReadAWord_Big  	// [24:460]  SPI_ReadAWord_Big
BB2_PU2:	// 0x3e
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:460]  
	     pop BP, PC from [SP]     	// [1:460]  
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
// 462  
// 463  
// 464  
// 465  unsigned  Get_Question_Mode(unsigned lQuestionIdx)
// 466  {

LM10:
	     .stabn 68,0,466,LM10-_Get_Question_Mode
BB1_PU3:	// 0x40
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:466]  
	     BP = SP + 1              	// [2:466]  
	     pop BP, PC from [SP]     	// [4:466]  
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
// 476  //	return SPI_ReadAByte(Addr);
// 477  //}
// 478  
// 479  unsigned GetQuality(unsigned lQuestionIdx)
// 480  {

LM11:
	     .stabn 68,0,480,LM11-_GetQuality
BB1_PU4:	// 0x44
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:480]  
	     SP = SP - 2              	// [2:480]  
	     BP = SP + 1              	// [3:480]  
LBB5:
// 481  	unsigned long Addr;
// 482  	Addr = lQuestionIdx + C_TableQualityStartAddr;

LM12:
	     .stabn 68,0,482,LM12-_GetQuality
	     R4 = [BP + 5]            	// [5:482]  lQuestionIdx
	     R4 = R4 + 10000          	// [7:482]  
	     R3 = 0                   	// [9:482]  
	     [BP + 0] = R4            	// [10:482]  Addr
	     [BP + 1] = R3            	// [11:482]  Addr+1
// 483  	return SPI_ReadAByte(Addr);

LM13:
	     .stabn 68,0,483,LM13-_GetQuality
	     SP = SP - 2              	// [12:483]  
	     R2 = [BP + 0]            	// [13:483]  Addr
	     R3 = [BP + 1]            	// [15:483]  Addr+1
	     R4 = SP + 1              	// [17:483]  
	     [R4++] = R2              	// [19:483]  
	     [R4] = R3                	// [21:483]  
	     call _SPI_ReadAByte      	// [23:483]  SPI_ReadAByte
BB2_PU4:	// 0x57
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:483]  
	     pop BP, PC from [SP]     	// [1:483]  
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
// 485  
// 486  
// 487  
// 488  unsigned GetSwitch(unsigned lQuestionIdx)
// 489  {

LM14:
	     .stabn 68,0,489,LM14-_GetSwitch
BB1_PU5:	// 0x59
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:489]  
	     SP = SP - 2              	// [2:489]  
	     BP = SP + 1              	// [3:489]  
LBB6:
// 490  	unsigned long Addr;
// 491  	Addr = lQuestionIdx + C_TableSwitchStartAddr;

LM15:
	     .stabn 68,0,491,LM15-_GetSwitch
	     R4 = [BP + 5]            	// [5:491]  lQuestionIdx
	     R4 = R4 + 29300          	// [7:491]  
	     R3 = 0                   	// [9:491]  
	     [BP + 0] = R4            	// [10:491]  Addr
	     [BP + 1] = R3            	// [11:491]  Addr+1
// 492  	return SPI_ReadAByte(Addr);

LM16:
	     .stabn 68,0,492,LM16-_GetSwitch
	     SP = SP - 2              	// [12:492]  
	     R2 = [BP + 0]            	// [13:492]  Addr
	     R3 = [BP + 1]            	// [15:492]  Addr+1
	     R4 = SP + 1              	// [17:492]  
	     [R4++] = R2              	// [19:492]  
	     [R4] = R3                	// [21:492]  
	     call _SPI_ReadAByte      	// [23:492]  SPI_ReadAByte
BB2_PU5:	// 0x6c
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:492]  
	     pop BP, PC from [SP]     	// [1:492]  
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
// 493  }
// 494  
// 495  unsigned GetDifficulty(unsigned lQuestionIdx)
// 496  {

LM17:
	     .stabn 68,0,496,LM17-_GetDifficulty
BB1_PU6:	// 0x6e
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:496]  
	     SP = SP - 2              	// [2:496]  
	     BP = SP + 1              	// [3:496]  
LBB7:
// 497  	unsigned long Addr;
// 498  	Addr = lQuestionIdx + C_TableDiffiStartAddr;

LM18:
	     .stabn 68,0,498,LM18-_GetDifficulty
	     R4 = [BP + 5]            	// [5:498]  lQuestionIdx
	     R4 = R4 + 32000          	// [7:498]  
	     R3 = 0                   	// [9:498]  
	     [BP + 0] = R4            	// [10:498]  Addr
	     [BP + 1] = R3            	// [11:498]  Addr+1
// 499  	return SPI_ReadAByte(Addr);

LM19:
	     .stabn 68,0,499,LM19-_GetDifficulty
	     SP = SP - 2              	// [12:499]  
	     R2 = [BP + 0]            	// [13:499]  Addr
	     R3 = [BP + 1]            	// [15:499]  Addr+1
	     R4 = SP + 1              	// [17:499]  
	     [R4++] = R2              	// [19:499]  
	     [R4] = R3                	// [21:499]  
	     call _SPI_ReadAByte      	// [23:499]  SPI_ReadAByte
BB2_PU6:	// 0x81
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:499]  
	     pop BP, PC from [SP]     	// [1:499]  
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
// 501  
// 502  
// 503  
// 504  unsigned GetMovies(unsigned lQuestionIdx)
// 505  {

LM20:
	     .stabn 68,0,505,LM20-_GetMovies
BB1_PU7:	// 0x83
// BB:1 cycle count: 27
	     push BP to [SP]          	// [0:505]  
	     SP = SP - 2              	// [2:505]  
	     BP = SP + 1              	// [3:505]  
LBB8:
// 506  	unsigned long Addr;
// 507  	Addr = lQuestionIdx + C_TableMoviesStartAddr;

LM21:
	     .stabn 68,0,507,LM21-_GetMovies
	     R3 = [BP + 5]            	// [5:507]  lQuestionIdx
	     R4 = 0                   	// [7:507]  
	     R3 = R3 + 34000          	// [8:507]  
	     R4 = R4 + 0, Carry       	// [10:507]  
	     [BP + 0] = R3            	// [11:507]  Addr
	     [BP + 1] = R4            	// [12:507]  Addr+1
// 508  	return SPI_ReadAByte(Addr);

LM22:
	     .stabn 68,0,508,LM22-_GetMovies
	     SP = SP - 2              	// [13:508]  
	     R2 = [BP + 0]            	// [14:508]  Addr
	     R3 = [BP + 1]            	// [16:508]  Addr+1
	     R4 = SP + 1              	// [18:508]  
	     [R4++] = R2              	// [20:508]  
	     [R4] = R3                	// [22:508]  
	     call _SPI_ReadAByte      	// [24:508]  SPI_ReadAByte
BB2_PU7:	// 0x97
// BB:2 cycle count: 6
	     SP = SP + 4              	// [0:508]  
	     pop BP, PC from [SP]     	// [1:508]  
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
// 839  
// 840  /*************************************************************
// 841  **************************************************************/
// 842  unsigned  delay_time(unsigned T_cnt)
// 843  {

LM23:
	     .stabn 68,0,843,LM23-_delay_time
BB1_PU8:	// 0x99
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:843]  
	     BP = SP + 1              	// [2:843]  
// 844  
// 845  	TimeCnt =1;

LM24:
	     .stabn 68,0,845,LM24-_delay_time
	     R3 = 1                   	// [4:845]  
	     DS = seg(_TimeCnt)       	// [5:845]  TimeCnt
	     R4 = (_TimeCnt)          	// [6:845]  TimeCnt
	     DS:[R4] = R3             	// [8:845]  
// 846  	Time_Countdown = T_cnt;

LM25:
	     .stabn 68,0,846,LM25-_delay_time
	     R3 = [BP + 3]            	// [10:846]  T_cnt
	     DS = seg(_Time_Countdown)	// [12:846]  Time_Countdown
	     R4 = (_Time_Countdown)   	// [13:846]  Time_Countdown
	     DS:[R4] = R3             	// [15:846]  
// 847  
// 848  	return Get_Key(1);

LM26:
	     .stabn 68,0,848,LM26-_delay_time
	     SP = SP - 1              	// [17:848]  
	     R3 = 1                   	// [18:848]  
	     R4 = SP + 1              	// [19:848]  
	     [R4] = R3                	// [21:848]  
	     call _Get_Key            	// [23:848]  Get_Key
BB2_PU8:	// 0xad
// BB:2 cycle count: 6
	     SP = SP + 1              	// [0:848]  
	     pop BP, PC from [SP]     	// [1:848]  
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
//1020  //==================================================
//1021  /*************************************************************
//1022  *************************************************************/
//1023  unsigned Get_LQA(void)
//1024  {

LM27:
	     .stabn 68,0,1024,LM27-_Get_LQA
BB1_PU9:	// 0xaf
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1024]  
	     SP = SP - 3              	// [2:1024]  
	     BP = SP + 1              	// [3:1024]  
LBB9:
//1025  	unsigned temp = 0;

LM28:
	     .stabn 68,0,1025,LM28-_Get_LQA
	     R4 = 0                   	// [5:1025]  
	     [BP + 0] = R4            	// [6:1025]  temp
//1026  	unsigned i = 0;

LM29:
	     .stabn 68,0,1026,LM29-_Get_LQA
	     R4 = 0                   	// [7:1026]  
	     [BP + 1] = R4            	// [8:1026]  i
L_9_1:	// 0xb7
// BB:2 cycle count: 12
//1027  	while(i<R_QuestionNum)

LM30:
	     .stabn 68,0,1027,LM30-_Get_LQA
	     R3 = [BP + 1]            	// [0:1027]  i
	     DS = seg(_R_QuestionNum) 	// [2:1027]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:1027]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:1027]  
	     cmp R3, R4               	// [7:1027]  
	     jae L_9_2                	// [8:1027]  
BB3_PU9:	// 0xbe
// BB:3 cycle count: 33
//1028  	{
//1029  		 if (BitMap[i%16]&QuestionStatus_LQA[i/16]) temp+=1;

LM31:
	     .stabn 68,0,1029,LM31-_Get_LQA
	     R4 = [BP + 1]            	// [0:1029]  i
	     R4 = R4 & 15             	// [2:1029]  
	     R3 = 0                   	// [3:1029]  
	     R1 = (_BitMap)           	// [4:1029]  BitMap
	     R2 = seg(_BitMap)        	// [6:1029]  BitMap
	     R4 = R4 + R1             	// [7:1029]  
	     R3 = R3 + R2, Carry      	// [8:1029]  
	     DS = R3                  	// [9:1029]  
	     R4 = DS:[R4]             	// [10:1029]  
	     [BP + 2] = R4            	// [12:1029]  lra_spill_temp_0
	     R4 = [BP + 1]            	// [13:1029]  i
	     R4 = R4 lsr 4            	// [15:1029]  
	     R3 = 0                   	// [16:1029]  
	     R1 = (_QuestionStatus_LQA)	// [17:1029]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [19:1029]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [20:1029]  
	     R3 = R3 + R2, Carry      	// [21:1029]  
	     DS = R3                  	// [22:1029]  
	     R3 = DS:[R4]             	// [23:1029]  
	     R4 = [BP + 2]            	// [25:1029]  lra_spill_temp_0
	     R4 = R4 & R3             	// [27:1029]  
	     cmp R4, 0                	// [28:1029]  
	     je L_9_3                 	// [29:1029]  
BB4_PU9:	// 0xd7
// BB:4 cycle count: 4
	     R4 = [BP + 0]            	// [0:1029]  temp
	     R4 = R4 + 1              	// [2:1029]  
	     [BP + 0] = R4            	// [3:1029]  temp
L_9_3:	// 0xda
// BB:5 cycle count: 8
//1030  		 i++;

LM32:
	     .stabn 68,0,1030,LM32-_Get_LQA
	     R4 = [BP + 1]            	// [0:1030]  i
	     R4 = R4 + 1              	// [2:1030]  
	     [BP + 1] = R4            	// [3:1030]  i
	     jmp L_9_1                	// [4:1030]  
L_9_2:	// 0xde
// BB:6 cycle count: 8
//1031  	}
//1032  	return temp;

LM33:
	     .stabn 68,0,1032,LM33-_Get_LQA
	     R1 = [BP + 0]            	// [0:1032]  temp
	     SP = SP + 3              	// [2:1032]  
	     pop BP, PC from [SP]     	// [3:1032]  
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
//1035  //==================================================
//1036  //
//1037  //==================================================
//1038  unsigned Get_LQ(void)
//1039  {

LM34:
	     .stabn 68,0,1039,LM34-_Get_LQ
BB1_PU10:	// 0xe1
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1039]  
	     SP = SP - 3              	// [2:1039]  
	     BP = SP + 1              	// [3:1039]  
LBB10:
//1040  	unsigned temp = 0;

LM35:
	     .stabn 68,0,1040,LM35-_Get_LQ
	     R4 = 0                   	// [5:1040]  
	     [BP + 0] = R4            	// [6:1040]  temp
//1041  	unsigned i = 0;

LM36:
	     .stabn 68,0,1041,LM36-_Get_LQ
	     R4 = 0                   	// [7:1041]  
	     [BP + 1] = R4            	// [8:1041]  i
L_10_1:	// 0xe9
// BB:2 cycle count: 12
//1042  	while(i<R_QuestionNum)

LM37:
	     .stabn 68,0,1042,LM37-_Get_LQ
	     R3 = [BP + 1]            	// [0:1042]  i
	     DS = seg(_R_QuestionNum) 	// [2:1042]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:1042]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:1042]  
	     cmp R3, R4               	// [7:1042]  
	     jae L_10_2               	// [8:1042]  
BB3_PU10:	// 0xf0
// BB:3 cycle count: 33
//1043  	{
//1044  		 if (BitMap[i%16]&QuestionStatus_LQ[i/16]) temp+=1;

LM38:
	     .stabn 68,0,1044,LM38-_Get_LQ
	     R4 = [BP + 1]            	// [0:1044]  i
	     R4 = R4 & 15             	// [2:1044]  
	     R3 = 0                   	// [3:1044]  
	     R1 = (_BitMap)           	// [4:1044]  BitMap
	     R2 = seg(_BitMap)        	// [6:1044]  BitMap
	     R4 = R4 + R1             	// [7:1044]  
	     R3 = R3 + R2, Carry      	// [8:1044]  
	     DS = R3                  	// [9:1044]  
	     R4 = DS:[R4]             	// [10:1044]  
	     [BP + 2] = R4            	// [12:1044]  lra_spill_temp_1
	     R4 = [BP + 1]            	// [13:1044]  i
	     R4 = R4 lsr 4            	// [15:1044]  
	     R3 = 0                   	// [16:1044]  
	     R1 = (_QuestionStatus_LQ)	// [17:1044]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [19:1044]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [20:1044]  
	     R3 = R3 + R2, Carry      	// [21:1044]  
	     DS = R3                  	// [22:1044]  
	     R3 = DS:[R4]             	// [23:1044]  
	     R4 = [BP + 2]            	// [25:1044]  lra_spill_temp_1
	     R4 = R4 & R3             	// [27:1044]  
	     cmp R4, 0                	// [28:1044]  
	     je L_10_3                	// [29:1044]  
BB4_PU10:	// 0x109
// BB:4 cycle count: 4
	     R4 = [BP + 0]            	// [0:1044]  temp
	     R4 = R4 + 1              	// [2:1044]  
	     [BP + 0] = R4            	// [3:1044]  temp
L_10_3:	// 0x10c
// BB:5 cycle count: 8
//1045  		 i++;

LM39:
	     .stabn 68,0,1045,LM39-_Get_LQ
	     R4 = [BP + 1]            	// [0:1045]  i
	     R4 = R4 + 1              	// [2:1045]  
	     [BP + 1] = R4            	// [3:1045]  i
	     jmp L_10_1               	// [4:1045]  
L_10_2:	// 0x110
// BB:6 cycle count: 8
//1046  	}
//1047  	return temp;

LM40:
	     .stabn 68,0,1047,LM40-_Get_LQ
	     R1 = [BP + 0]            	// [0:1047]  temp
	     SP = SP + 3              	// [2:1047]  
	     pop BP, PC from [SP]     	// [3:1047]  
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
//1053  
//1054  /*************************************************************
//1055  *************************************************************/
//1056  unsigned int Get_Length_Pingame(void)
//1057  {

LM41:
	     .stabn 68,0,1057,LM41-_Get_Length_Pingame
BB1_PU11:	// 0x113
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1057]  
	     SP = SP - 3              	// [2:1057]  
	     BP = SP + 1              	// [3:1057]  
LBB11:
//1058  	unsigned temp = 0;

LM42:
	     .stabn 68,0,1058,LM42-_Get_Length_Pingame
	     R4 = 0                   	// [5:1058]  
	     [BP + 0] = R4            	// [6:1058]  temp
//1059  	unsigned i = 0;

LM43:
	     .stabn 68,0,1059,LM43-_Get_Length_Pingame
	     R4 = 0                   	// [7:1059]  
	     [BP + 1] = R4            	// [8:1059]  i
L_11_1:	// 0x11b
// BB:2 cycle count: 12
//1060  	while(i<Registerd_Num)

LM44:
	     .stabn 68,0,1060,LM44-_Get_Length_Pingame
	     R3 = [BP + 1]            	// [0:1060]  i
	     DS = seg(_Registerd_Num) 	// [2:1060]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [3:1060]  Registerd_Num
	     R4 = DS:[R4]             	// [5:1060]  
	     cmp R3, R4               	// [7:1060]  
	     jae L_11_2               	// [8:1060]  
BB3_PU11:	// 0x122
// BB:3 cycle count: 33
//1061  	{
//1062  		 if (BitMap[i%16]&Pingame[i/16]) temp+=1;

LM45:
	     .stabn 68,0,1062,LM45-_Get_Length_Pingame
	     R4 = [BP + 1]            	// [0:1062]  i
	     R4 = R4 & 15             	// [2:1062]  
	     R3 = 0                   	// [3:1062]  
	     R1 = (_BitMap)           	// [4:1062]  BitMap
	     R2 = seg(_BitMap)        	// [6:1062]  BitMap
	     R4 = R4 + R1             	// [7:1062]  
	     R3 = R3 + R2, Carry      	// [8:1062]  
	     DS = R3                  	// [9:1062]  
	     R4 = DS:[R4]             	// [10:1062]  
	     [BP + 2] = R4            	// [12:1062]  lra_spill_temp_2
	     R4 = [BP + 1]            	// [13:1062]  i
	     R4 = R4 lsr 4            	// [15:1062]  
	     R3 = 0                   	// [16:1062]  
	     R1 = (_Pingame)          	// [17:1062]  Pingame
	     R2 = seg(_Pingame)       	// [19:1062]  Pingame
	     R4 = R4 + R1             	// [20:1062]  
	     R3 = R3 + R2, Carry      	// [21:1062]  
	     DS = R3                  	// [22:1062]  
	     R3 = DS:[R4]             	// [23:1062]  
	     R4 = [BP + 2]            	// [25:1062]  lra_spill_temp_2
	     R4 = R4 & R3             	// [27:1062]  
	     cmp R4, 0                	// [28:1062]  
	     je L_11_3                	// [29:1062]  
BB4_PU11:	// 0x13b
// BB:4 cycle count: 4
	     R4 = [BP + 0]            	// [0:1062]  temp
	     R4 = R4 + 1              	// [2:1062]  
	     [BP + 0] = R4            	// [3:1062]  temp
L_11_3:	// 0x13e
// BB:5 cycle count: 8
//1063  		 i++;

LM46:
	     .stabn 68,0,1063,LM46-_Get_Length_Pingame
	     R4 = [BP + 1]            	// [0:1063]  i
	     R4 = R4 + 1              	// [2:1063]  
	     [BP + 1] = R4            	// [3:1063]  i
	     jmp L_11_1               	// [4:1063]  
L_11_2:	// 0x142
// BB:6 cycle count: 8
//1064  	}
//1065  	return temp;

LM47:
	     .stabn 68,0,1065,LM47-_Get_Length_Pingame
	     R1 = [BP + 0]            	// [0:1065]  temp
	     SP = SP + 3              	// [2:1065]  
	     pop BP, PC from [SP]     	// [3:1065]  
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
//1066  }
//1067  
//1068  
//1069  unsigned Select_Pingamerandom_4(unsigned Index)
//1070  {

LM48:
	     .stabn 68,0,1070,LM48-_Select_Pingamerandom_4
BB1_PU12:	// 0x145
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1070]  
	     SP = SP - 4              	// [2:1070]  
	     BP = SP + 1              	// [3:1070]  
LBB12:
//1071  	unsigned i= 0;

LM49:
	     .stabn 68,0,1071,LM49-_Select_Pingamerandom_4
	     R4 = 0                   	// [5:1071]  
	     [BP + 0] = R4            	// [6:1071]  i
//1072  	unsigned j= 0;

LM50:
	     .stabn 68,0,1072,LM50-_Select_Pingamerandom_4
	     R4 = 0                   	// [7:1072]  
	     [BP + 1] = R4            	// [8:1072]  j
L_12_1:	// 0x14d
// BB:2 cycle count: 12
//1073  	unsigned temp;
//1074  
//1075  	while(i<Registerd_Num)

LM51:
	     .stabn 68,0,1075,LM51-_Select_Pingamerandom_4
	     R3 = [BP + 0]            	// [0:1075]  i
	     DS = seg(_Registerd_Num) 	// [2:1075]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [3:1075]  Registerd_Num
	     R4 = DS:[R4]             	// [5:1075]  
	     cmp R3, R4               	// [7:1075]  
	     jae L_12_2               	// [8:1075]  
BB3_PU12:	// 0x154
// BB:3 cycle count: 36
//1076  	{
//1077  		 temp = BitMap[i%16]&Pingame[i/16];

LM52:
	     .stabn 68,0,1077,LM52-_Select_Pingamerandom_4
	     R4 = [BP + 0]            	// [0:1077]  i
	     R4 = R4 & 15             	// [2:1077]  
	     R3 = 0                   	// [3:1077]  
	     R1 = (_BitMap)           	// [4:1077]  BitMap
	     R2 = seg(_BitMap)        	// [6:1077]  BitMap
	     R4 = R4 + R1             	// [7:1077]  
	     R3 = R3 + R2, Carry      	// [8:1077]  
	     DS = R3                  	// [9:1077]  
	     R4 = DS:[R4]             	// [10:1077]  
	     [BP + 3] = R4            	// [12:1077]  lra_spill_temp_3
	     R4 = [BP + 0]            	// [13:1077]  i
	     R4 = R4 lsr 4            	// [15:1077]  
	     R3 = 0                   	// [16:1077]  
	     R1 = (_Pingame)          	// [17:1077]  Pingame
	     R2 = seg(_Pingame)       	// [19:1077]  Pingame
	     R4 = R4 + R1             	// [20:1077]  
	     R3 = R3 + R2, Carry      	// [21:1077]  
	     DS = R3                  	// [22:1077]  
	     R3 = DS:[R4]             	// [23:1077]  
	     R4 = [BP + 3]            	// [25:1077]  lra_spill_temp_3
	     R4 = R4 & R3             	// [27:1077]  
	     [BP + 2] = R4            	// [28:1077]  temp
//1078  		 if (temp)

LM53:
	     .stabn 68,0,1078,LM53-_Select_Pingamerandom_4
	     R4 = [BP + 2]            	// [29:1078]  temp
	     cmp R4, 0                	// [31:1078]  
	     je L_12_3                	// [32:1078]  
BB4_PU12:	// 0x16f
// BB:4 cycle count: 9
//1079  		 {
//1080  		 	if (j == Index) return i;

LM54:
	     .stabn 68,0,1080,LM54-_Select_Pingamerandom_4
	     R3 = [BP + 7]            	// [0:1080]  Index
	     R4 = [BP + 1]            	// [2:1080]  j
	     cmp R3, R4               	// [4:1080]  
	     jne L_12_4               	// [5:1080]  
BB5_PU12:	// 0x173
// BB:5 cycle count: 8
	     R1 = [BP + 0]            	// [0:1080]  i
	     SP = SP + 4              	// [2:1080]  
	     pop BP, PC from [SP]     	// [3:1080]  
L_12_4:	// 0x176
// BB:6 cycle count: 4
//1081  		 	j++;

LM55:
	     .stabn 68,0,1081,LM55-_Select_Pingamerandom_4
	     R4 = [BP + 1]            	// [0:1081]  j
	     R4 = R4 + 1              	// [2:1081]  
	     [BP + 1] = R4            	// [3:1081]  j
L_12_3:	// 0x179
// BB:7 cycle count: 8
//1082  		 }
//1083  		 i++;

LM56:
	     .stabn 68,0,1083,LM56-_Select_Pingamerandom_4
	     R4 = [BP + 0]            	// [0:1083]  i
	     R4 = R4 + 1              	// [2:1083]  
	     [BP + 0] = R4            	// [3:1083]  i
	     jmp L_12_1               	// [4:1083]  
L_12_2:	// 0x17d
// BB:8 cycle count: 8
//1084  	}
//1085  	return i;

LM57:
	     .stabn 68,0,1085,LM57-_Select_Pingamerandom_4
	     R1 = [BP + 0]            	// [0:1085]  i
	     SP = SP + 4              	// [2:1085]  
	     pop BP, PC from [SP]     	// [3:1085]  
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
	// lra_spill_temp_4 = 8
	// lra_spill_temp_5 = 9
//1123  
//1124  /*************************************************************
//1125  *************************************************************/
//1126  unsigned Select_Pingamerandom()
//1127  {

LM58:
	     .stabn 68,0,1127,LM58-_Select_Pingamerandom
BB1_PU13:	// 0x180
// BB:1 cycle count: 15
	     push BP to [SP]          	// [0:1127]  
	     SP = SP - 10             	// [2:1127]  
	     BP = SP + 1              	// [3:1127]  
LBB13:
//1128  	unsigned i= 0;

LM59:
	     .stabn 68,0,1128,LM59-_Select_Pingamerandom
	     R4 = 0                   	// [5:1128]  
	     [BP + 0] = R4            	// [6:1128]  i
//1129  	unsigned j= 0;

LM60:
	     .stabn 68,0,1129,LM60-_Select_Pingamerandom
	     R4 = 0                   	// [7:1129]  
	     [BP + 1] = R4            	// [8:1129]  j
//1130  	unsigned temp1 =0;

LM61:
	     .stabn 68,0,1130,LM61-_Select_Pingamerandom
	     R4 = 0                   	// [9:1130]  
	     [BP + 2] = R4            	// [10:1130]  temp1
//1131  	unsigned All_enable=0;

LM62:
	     .stabn 68,0,1131,LM62-_Select_Pingamerandom
	     R4 = 0                   	// [11:1131]  
	     [BP + 3] = R4            	// [12:1131]  All_enable
//1132  	unsigned Index=0;

LM63:
	     .stabn 68,0,1132,LM63-_Select_Pingamerandom
	     R4 = 0                   	// [13:1132]  
	     [BP + 4] = R4            	// [14:1132]  Index
L_13_1:	// 0x18e
// BB:2 cycle count: 12
//1133  
//1134  	while(i<Registerd_Num)

LM64:
	     .stabn 68,0,1134,LM64-_Select_Pingamerandom
	     R3 = [BP + 0]            	// [0:1134]  i
	     DS = seg(_Registerd_Num) 	// [2:1134]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [3:1134]  Registerd_Num
	     R4 = DS:[R4]             	// [5:1134]  
	     cmp R3, R4               	// [7:1134]  
	     jb BB3_PU13              	// [8:1134]  
BB30_PU13:	// 0x195
// BB:30 cycle count: 3
	     goto L_13_2              	// [0:0]  
BB3_PU13:	// 0x197
// BB:3 cycle count: 33
//1135  	{
//1136  		 //temp = Pingame[i%16]&Pingame[i/16];
//1137  		 if(BitMap[i%16]&Pingame[i/16])

LM65:
	     .stabn 68,0,1137,LM65-_Select_Pingamerandom
	     R4 = [BP + 0]            	// [0:1137]  i
	     R4 = R4 & 15             	// [2:1137]  
	     R3 = 0                   	// [3:1137]  
	     R1 = (_BitMap)           	// [4:1137]  BitMap
	     R2 = seg(_BitMap)        	// [6:1137]  BitMap
	     R4 = R4 + R1             	// [7:1137]  
	     R3 = R3 + R2, Carry      	// [8:1137]  
	     DS = R3                  	// [9:1137]  
	     R4 = DS:[R4]             	// [10:1137]  
	     [BP + 8] = R4            	// [12:1137]  lra_spill_temp_4
	     R4 = [BP + 0]            	// [13:1137]  i
	     R4 = R4 lsr 4            	// [15:1137]  
	     R3 = 0                   	// [16:1137]  
	     R1 = (_Pingame)          	// [17:1137]  Pingame
	     R2 = seg(_Pingame)       	// [19:1137]  Pingame
	     R4 = R4 + R1             	// [20:1137]  
	     R3 = R3 + R2, Carry      	// [21:1137]  
	     DS = R3                  	// [22:1137]  
	     R3 = DS:[R4]             	// [23:1137]  
	     R4 = [BP + 8]            	// [25:1137]  lra_spill_temp_4
	     R4 = R4 & R3             	// [27:1137]  
	     cmp R4, 0                	// [28:1137]  
	     jne BB4_PU13             	// [29:1137]  
BB33_PU13:	// 0x1b0
// BB:33 cycle count: 3
	     goto L_13_3              	// [0:0]  
BB4_PU13:	// 0x1b2
// BB:4 cycle count: 33
//1138  		 {
//1139  		     if(((BitMap[i%16]&Pselected[i/16])==0)||(All_enable==2))	

LM66:
	     .stabn 68,0,1139,LM66-_Select_Pingamerandom
	     R4 = [BP + 0]            	// [0:1139]  i
	     R4 = R4 & 15             	// [2:1139]  
	     R3 = 0                   	// [3:1139]  
	     R1 = (_BitMap)           	// [4:1139]  BitMap
	     R2 = seg(_BitMap)        	// [6:1139]  BitMap
	     R4 = R4 + R1             	// [7:1139]  
	     R3 = R3 + R2, Carry      	// [8:1139]  
	     DS = R3                  	// [9:1139]  
	     R4 = DS:[R4]             	// [10:1139]  
	     [BP + 8] = R4            	// [12:1139]  lra_spill_temp_4
	     R4 = [BP + 0]            	// [13:1139]  i
	     R4 = R4 lsr 4            	// [15:1139]  
	     R3 = 0                   	// [16:1139]  
	     R1 = (_Pselected)        	// [17:1139]  Pselected
	     R2 = seg(_Pselected)     	// [19:1139]  Pselected
	     R4 = R4 + R1             	// [20:1139]  
	     R3 = R3 + R2, Carry      	// [21:1139]  
	     DS = R3                  	// [22:1139]  
	     R3 = DS:[R4]             	// [23:1139]  
	     R4 = [BP + 8]            	// [25:1139]  lra_spill_temp_4
	     R4 = R4 & R3             	// [27:1139]  
	     cmp R4, 0                	// [28:1139]  
	     je L_13_5                	// [29:1139]  
BB5_PU13:	// 0x1cb
// BB:5 cycle count: 7
	     R4 = [BP + 3]            	// [0:1139]  All_enable
	     cmp R4, 2                	// [2:1139]  
	     jne L_13_4               	// [3:1139]  
L_13_5:	// 0x1ce
// BB:6 cycle count: 7
//1140  		 	 {
//1141  			 			 	
//1142  			 	  if(temp1)

LM67:
	     .stabn 68,0,1142,LM67-_Select_Pingamerandom
	     R4 = [BP + 2]            	// [0:1142]  temp1
	     cmp R4, 0                	// [2:1142]  
	     je L_13_6                	// [3:1142]  
BB7_PU13:	// 0x1d1
// BB:7 cycle count: 9
//1143  			 	  {
//1144  			 	    if (j == Index) 

LM68:
	     .stabn 68,0,1144,LM68-_Select_Pingamerandom
	     R3 = [BP + 1]            	// [0:1144]  j
	     R4 = [BP + 4]            	// [2:1144]  Index
	     cmp R3, R4               	// [4:1144]  
	     jne L_13_7               	// [5:1144]  
BB8_PU13:	// 0x1d5
// BB:8 cycle count: 7
//1145  			 	    {
//1146  			 	        if(All_enable)	

LM69:
	     .stabn 68,0,1146,LM69-_Select_Pingamerandom
	     R4 = [BP + 3]            	// [0:1146]  All_enable
	     cmp R4, 0                	// [2:1146]  
	     je L_13_8                	// [3:1146]  
BB9_PU13:	// 0x1d8
// BB:9 cycle count: 53
//1147  			 	            Pselected[Player_Activing_Cnt/16]&=~BitMap[Player_Activing_Cnt%16];

LM70:
	     .stabn 68,0,1147,LM70-_Select_Pingamerandom
	     DS = seg(_Player_Activing_Cnt)	// [0:1147]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:1147]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [3:1147]  
	     R4 = R4 lsr 4            	// [5:1147]  
	     [BP + 5] = R4            	// [6:1147]  __save_expr_temp_0
	     R4 = [BP + 5]            	// [7:1147]  __save_expr_temp_0
	     R3 = 0                   	// [9:1147]  
	     R1 = (_Pselected)        	// [10:1147]  Pselected
	     R2 = seg(_Pselected)     	// [12:1147]  Pselected
	     R4 = R4 + R1             	// [13:1147]  
	     R3 = R3 + R2, Carry      	// [14:1147]  
	     DS = R3                  	// [15:1147]  
	     R4 = DS:[R4]             	// [16:1147]  
	     [BP + 8] = R4            	// [18:1147]  lra_spill_temp_4
	     DS = seg(_Player_Activing_Cnt)	// [19:1147]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [20:1147]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [22:1147]  
	     R4 = R4 & 15             	// [24:1147]  
	     R3 = 0                   	// [25:1147]  
	     R1 = (_BitMap)           	// [26:1147]  BitMap
	     R2 = seg(_BitMap)        	// [28:1147]  BitMap
	     R4 = R4 + R1             	// [29:1147]  
	     R3 = R3 + R2, Carry      	// [30:1147]  
	     DS = R3                  	// [31:1147]  
	     R4 = DS:[R4]             	// [32:1147]  
	     R3 = R4 ^ 65535          	// [34:1147]  
	     R4 = [BP + 8]            	// [36:1147]  lra_spill_temp_4
	     R4 = R4 & R3             	// [38:1147]  
	     [BP + 9] = R4            	// [39:1147]  lra_spill_temp_5
	     R4 = [BP + 5]            	// [40:1147]  __save_expr_temp_0
	     R3 = 0                   	// [42:1147]  
	     R1 = (_Pselected)        	// [43:1147]  Pselected
	     R2 = seg(_Pselected)     	// [45:1147]  Pselected
	     R4 = R4 + R1             	// [46:1147]  
	     R3 = R3 + R2, Carry      	// [47:1147]  
	     DS = R3                  	// [48:1147]  
	     R3 = [BP + 9]            	// [49:1147]  lra_spill_temp_5
	     DS:[R4] = R3             	// [51:1147]  
L_13_8:	// 0x204
// BB:10 cycle count: 8
//1148  			 	    	
//1149  			 	    	return i;

LM71:
	     .stabn 68,0,1149,LM71-_Select_Pingamerandom
	     R1 = [BP + 0]            	// [0:1149]  i
	     SP = SP + 10             	// [2:1149]  
	     pop BP, PC from [SP]     	// [3:1149]  
L_13_7:	// 0x207
L_13_6:	// 0x207
// BB:11 cycle count: 4
//1150  			 	     }
//1151  			 	  }
//1152  			 	j++;

LM72:
	     .stabn 68,0,1152,LM72-_Select_Pingamerandom
	     R4 = [BP + 1]            	// [0:1152]  j
	     R4 = R4 + 1              	// [2:1152]  
	     [BP + 1] = R4            	// [3:1152]  j
L_13_4:	// 0x20a
L_13_3:	// 0x20a
// BB:12 cycle count: 16
//1153  		 	 }
//1154  		 }
//1155  		 i++;

LM73:
	     .stabn 68,0,1155,LM73-_Select_Pingamerandom
	     R4 = [BP + 0]            	// [0:1155]  i
	     R4 = R4 + 1              	// [2:1155]  
	     [BP + 0] = R4            	// [3:1155]  i
//1156  		 
//1157  		 if(i == Registerd_Num)

LM74:
	     .stabn 68,0,1157,LM74-_Select_Pingamerandom
	     R3 = [BP + 0]            	// [4:1157]  i
	     DS = seg(_Registerd_Num) 	// [6:1157]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [7:1157]  Registerd_Num
	     R4 = DS:[R4]             	// [9:1157]  
	     cmp R3, R4               	// [11:1157]  
	     je BB13_PU13             	// [12:1157]  
BB31_PU13:	// 0x214
// BB:31 cycle count: 3
	     goto L_13_9              	// [0:0]  
BB13_PU13:	// 0x216
// BB:13 cycle count: 3
//1158  		  {
//1159  
//1160                 WatchdogClear();

LM75:
	     .stabn 68,0,1160,LM75-_Select_Pingamerandom
	     call _WatchdogClear      	// [0:1160]  WatchdogClear
BB14_PU13:	// 0x218
// BB:14 cycle count: 9
//1161  			  
//1162  			     i=0;	

LM76:
	     .stabn 68,0,1162,LM76-_Select_Pingamerandom
	     R4 = 0                   	// [0:1162]  
	     [BP + 0] = R4            	// [1:1162]  i
//1163  				 
//1164  			  	if(j)

LM77:
	     .stabn 68,0,1164,LM77-_Select_Pingamerandom
	     R4 = [BP + 1]            	// [2:1164]  j
	     cmp R4, 0                	// [4:1164]  
	     je L_13_11               	// [5:1164]  
BB15_PU13:	// 0x21d
// BB:15 cycle count: 10
//1165  			  	{	
//1166  			  		
//1167  			  	  if(randomflag)			  	   

LM78:
	     .stabn 68,0,1167,LM78-_Select_Pingamerandom
	     DS = seg(_randomflag)    	// [0:1167]  randomflag
	     R4 = (_randomflag)       	// [1:1167]  randomflag
	     R4 = DS:[R4]             	// [3:1167]  
	     cmp R4, 0                	// [5:1167]  
	     je L_13_13               	// [6:1167]  
BB16_PU13:	// 0x223
// BB:16 cycle count: 14
//1168  			  	    Index = *P_TimerB_CNTR %j;

LM79:
	     .stabn 68,0,1168,LM79-_Select_Pingamerandom
	     R3 = 12307               	// [0:1168]  
	     R4 = 0                   	// [2:1168]  
	     DS = R4                  	// [3:1168]  
	     R3 = DS:[R3]             	// [4:1168]  
	     R4 = [BP + 1]            	// [6:1168]  j
	     push R4, R3 to [SP]      	// [8:1168]  
	     call __modu1             	// [11:1168]  _modu1
BB17_PU13:	// 0x22c
// BB:17 cycle count: 6
	     SP = SP + 2              	// [0:0]  
	     [BP + 4] = R1            	// [1:0]  Index
	     jmp L_13_12              	// [2:1168]  
L_13_13:	// 0x22f
// BB:18 cycle count: 2
//1169  			  	  else
//1170  			  	     Index =0;

LM80:
	     .stabn 68,0,1170,LM80-_Select_Pingamerandom
	     R4 = 0                   	// [0:1170]  
	     [BP + 4] = R4            	// [1:1170]  Index
L_13_12:	// 0x231
// BB:19 cycle count: 7
//1171  			  	   
//1172  			  	   j=0;

LM81:
	     .stabn 68,0,1172,LM81-_Select_Pingamerandom
	     R4 = 0                   	// [0:1172]  
	     [BP + 1] = R4            	// [1:1172]  j
//1173  			  	   temp1 =1;

LM82:
	     .stabn 68,0,1173,LM82-_Select_Pingamerandom
	     R4 = 1                   	// [2:1173]  
	     [BP + 2] = R4            	// [3:1173]  temp1
	     goto L_13_10             	// [4:1173]  
L_13_11:	// 0x237
// BB:20 cycle count: 7
//1174  			  		
//1175  			  	}
//1176  			   else if(All_enable ==0)// Pingame = Pselected random

LM83:
	     .stabn 68,0,1176,LM83-_Select_Pingamerandom
	     R4 = [BP + 3]            	// [0:1176]  All_enable
	     cmp R4, 0                	// [2:1176]  
	     jne L_13_15              	// [3:1176]  
BB21_PU13:	// 0x23a
// BB:21 cycle count: 5
//1177  			      {
//1178  			      	   All_enable =1;

LM84:
	     .stabn 68,0,1178,LM84-_Select_Pingamerandom
	     R4 = 1                   	// [0:1178]  
	     [BP + 3] = R4            	// [1:1178]  All_enable
//1179  			      	  
//1180  			      	  Reset_Pselected();

LM85:
	     .stabn 68,0,1180,LM85-_Select_Pingamerandom
	     call _Reset_Pselected    	// [2:1180]  Reset_Pselected
BB22_PU13:	// 0x23e
// BB:22 cycle count: 61
//1181  			      	  randomflag =1;

LM86:
	     .stabn 68,0,1181,LM86-_Select_Pingamerandom
	     R3 = 1                   	// [0:1181]  
	     DS = seg(_randomflag)    	// [1:1181]  randomflag
	     R4 = (_randomflag)       	// [2:1181]  randomflag
	     DS:[R4] = R3             	// [4:1181]  
//1182  			      	  Pselected[Player_Activing_Cnt/16]|=BitMap[Player_Activing_Cnt%16];	

LM87:
	     .stabn 68,0,1182,LM87-_Select_Pingamerandom
	     DS = seg(_Player_Activing_Cnt)	// [6:1182]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [7:1182]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [9:1182]  
	     R4 = R4 lsr 4            	// [11:1182]  
	     [BP + 6] = R4            	// [12:1182]  __save_expr_temp_1
	     R4 = [BP + 6]            	// [13:1182]  __save_expr_temp_1
	     R3 = 0                   	// [15:1182]  
	     R1 = (_Pselected)        	// [16:1182]  Pselected
	     R2 = seg(_Pselected)     	// [18:1182]  Pselected
	     R4 = R4 + R1             	// [19:1182]  
	     R3 = R3 + R2, Carry      	// [20:1182]  
	     DS = R3                  	// [21:1182]  
	     R4 = DS:[R4]             	// [22:1182]  
	     [BP + 9] = R4            	// [24:1182]  lra_spill_temp_5
	     DS = seg(_Player_Activing_Cnt)	// [25:1182]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [26:1182]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [28:1182]  
	     R4 = R4 & 15             	// [30:1182]  
	     R3 = 0                   	// [31:1182]  
	     R1 = (_BitMap)           	// [32:1182]  BitMap
	     R2 = seg(_BitMap)        	// [34:1182]  BitMap
	     R4 = R4 + R1             	// [35:1182]  
	     R3 = R3 + R2, Carry      	// [36:1182]  
	     DS = R3                  	// [37:1182]  
	     R3 = DS:[R4]             	// [38:1182]  
	     R4 = [BP + 9]            	// [40:1182]  lra_spill_temp_5
	     R4 = R4 | R3             	// [42:1182]  
	     [BP + 8] = R4            	// [43:1182]  lra_spill_temp_4
	     R4 = [BP + 6]            	// [44:1182]  __save_expr_temp_1
	     R3 = 0                   	// [46:1182]  
	     R1 = (_Pselected)        	// [47:1182]  Pselected
	     R2 = seg(_Pselected)     	// [49:1182]  Pselected
	     R4 = R4 + R1             	// [50:1182]  
	     R3 = R3 + R2, Carry      	// [51:1182]  
	     DS = R3                  	// [52:1182]  
	     R3 = [BP + 8]            	// [53:1182]  lra_spill_temp_4
	     DS:[R4] = R3             	// [55:1182]  
	     jmp L_13_14              	// [57:1182]  
L_13_15:	// 0x26e
// BB:23 cycle count: 7
//1183  			      	
//1184  			      	   
//1185  			      }	 
//1186  			    else if(All_enable ==1)

LM88:
	     .stabn 68,0,1186,LM88-_Select_Pingamerandom
	     R4 = [BP + 3]            	// [0:1186]  All_enable
	     cmp R4, 1                	// [2:1186]  
	     jne L_13_17              	// [3:1186]  
BB24_PU13:	// 0x271
// BB:24 cycle count: 6
//1187  			      {
//1188  			      	   All_enable =2;

LM89:
	     .stabn 68,0,1188,LM89-_Select_Pingamerandom
	     R4 = 2                   	// [0:1188]  
	     [BP + 3] = R4            	// [1:1188]  All_enable
	     jmp L_13_16              	// [2:1188]  
L_13_17:	// 0x274
// BB:25 cycle count: 7
//1189  			      }  
//1190  			      else if(All_enable ==2) 

LM90:
	     .stabn 68,0,1190,LM90-_Select_Pingamerandom
	     R4 = [BP + 3]            	// [0:1190]  All_enable
	     cmp R4, 2                	// [2:1190]  
	     jne L_13_18              	// [3:1190]  
BB26_PU13:	// 0x277
// BB:26 cycle count: 3
//1191  			      {
//1192  			      	   SetPingame();

LM91:
	     .stabn 68,0,1192,LM91-_Select_Pingamerandom
	     call _SetPingame         	// [0:1192]  SetPingame
BB27_PU13:	// 0x279
// BB:27 cycle count: 51
//1193  			      	   Pselected[Player_Activing_Cnt/16]|=BitMap[Player_Activing_Cnt%16];	

LM92:
	     .stabn 68,0,1193,LM92-_Select_Pingamerandom
	     DS = seg(_Player_Activing_Cnt)	// [0:1193]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:1193]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [3:1193]  
	     R4 = R4 lsr 4            	// [5:1193]  
	     [BP + 7] = R4            	// [6:1193]  __save_expr_temp_2
	     R4 = [BP + 7]            	// [7:1193]  __save_expr_temp_2
	     R3 = 0                   	// [9:1193]  
	     R1 = (_Pselected)        	// [10:1193]  Pselected
	     R2 = seg(_Pselected)     	// [12:1193]  Pselected
	     R4 = R4 + R1             	// [13:1193]  
	     R3 = R3 + R2, Carry      	// [14:1193]  
	     DS = R3                  	// [15:1193]  
	     R4 = DS:[R4]             	// [16:1193]  
	     [BP + 8] = R4            	// [18:1193]  lra_spill_temp_4
	     DS = seg(_Player_Activing_Cnt)	// [19:1193]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [20:1193]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [22:1193]  
	     R4 = R4 & 15             	// [24:1193]  
	     R3 = 0                   	// [25:1193]  
	     R1 = (_BitMap)           	// [26:1193]  BitMap
	     R2 = seg(_BitMap)        	// [28:1193]  BitMap
	     R4 = R4 + R1             	// [29:1193]  
	     R3 = R3 + R2, Carry      	// [30:1193]  
	     DS = R3                  	// [31:1193]  
	     R3 = DS:[R4]             	// [32:1193]  
	     R4 = [BP + 8]            	// [34:1193]  lra_spill_temp_4
	     R4 = R4 | R3             	// [36:1193]  
	     [BP + 9] = R4            	// [37:1193]  lra_spill_temp_5
	     R4 = [BP + 7]            	// [38:1193]  __save_expr_temp_2
	     R3 = 0                   	// [40:1193]  
	     R1 = (_Pselected)        	// [41:1193]  Pselected
	     R2 = seg(_Pselected)     	// [43:1193]  Pselected
	     R4 = R4 + R1             	// [44:1193]  
	     R3 = R3 + R2, Carry      	// [45:1193]  
	     DS = R3                  	// [46:1193]  
	     R3 = [BP + 9]            	// [47:1193]  lra_spill_temp_5
	     DS:[R4] = R3             	// [49:1193]  
L_13_18:	// 0x2a3
L_13_16:	// 0x2a3
L_13_14:	// 0x2a3
L_13_10:	// 0x2a3
L_13_9:	// 0x2a3
// BB:28 cycle count: 3

LM93:
	     .stabn 68,0,1157,LM93-_Select_Pingamerandom
	     goto L_13_1              	// [0:1157]  
L_13_2:	// 0x2a5
// BB:29 cycle count: 7
//1196  		  }
//1197  		 
//1198  		 
//1199  	}
//1200  	return 0;

LM94:
	     .stabn 68,0,1200,LM94-_Select_Pingamerandom
	     R1 = 0                   	// [0:1200]  
	     SP = SP + 10             	// [1:1200]  
	     pop BP, PC from [SP]     	// [2:1200]  
LBE13:
	.endp	
	     .stabn 192,0,0,LBB13-_Select_Pingamerandom
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabs "temp1:4",128,0,0,2
	     .stabs "All_enable:4",128,0,0,3
	     .stabs "Index:4",128,0,0,4
	     .stabn 224,0,0,LBE13-_Select_Pingamerandom
LME14:
	     .stabf LME14-_Select_Pingamerandom
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
	// lra_spill_temp_6 = 3
	// lra_spill_temp_7 = 4
	// lra_spill_temp_8 = 5
	// lra_spill_temp_9 = 6
//1204  
//1205  /*********************************************************************
//1206  ************************************************************************/
//1207  void Supress_Question_Switch()
//1208  {

LM95:
	     .stabn 68,0,1208,LM95-_Supress_Question_Switch
BB1_PU14:	// 0x2a8
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:1208]  
	     SP = SP - 7              	// [2:1208]  
	     BP = SP + 1              	// [3:1208]  
LBB14:
//1209  //	unsigned temp;
//1210  	unsigned i = 0;

LM96:
	     .stabn 68,0,1210,LM96-_Supress_Question_Switch
	     R4 = 0                   	// [5:1210]  
	     [BP + 0] = R4            	// [6:1210]  i
L_14_5:	// 0x2ae
// BB:2 cycle count: 12
//1211  	while(i<R_QuestionNum)

LM97:
	     .stabn 68,0,1211,LM97-_Supress_Question_Switch
	     R3 = [BP + 0]            	// [0:1211]  i
	     DS = seg(_R_QuestionNum) 	// [2:1211]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:1211]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:1211]  
	     cmp R3, R4               	// [7:1211]  
	     jb BB3_PU14              	// [8:1211]  
BB9_PU14:	// 0x2b5
// BB:9 cycle count: 3
	     goto L_14_6              	// [0:0]  
BB3_PU14:	// 0x2b7
// BB:3 cycle count: 3
//1212  	{
//1213  	 	WatchdogClear();

LM98:
	     .stabn 68,0,1213,LM98-_Supress_Question_Switch
	     call _WatchdogClear      	// [0:1213]  WatchdogClear
BB4_PU14:	// 0x2b9
// BB:4 cycle count: 10
//1216  		 
//1217  	//	if(temp)
//1218  		{
//1219  		 
//1220  		 	if (GetSwitch(i) ==  C_Only_ON2 )

LM99:
	     .stabn 68,0,1220,LM99-_Supress_Question_Switch
	     SP = SP - 1              	// [0:1220]  
	     R3 = [BP + 0]            	// [1:1220]  i
	     R4 = SP + 1              	// [3:1220]  
	     [R4] = R3                	// [5:1220]  
	     call _GetSwitch          	// [7:1220]  GetSwitch
BB5_PU14:	// 0x2c0
// BB:5 cycle count: 6
	     SP = SP + 1              	// [0:1220]  
	     cmp R1, 0                	// [1:1220]  
	     je BB6_PU14              	// [2:1220]  
BB10_PU14:	// 0x2c3
// BB:10 cycle count: 3
	     goto L_14_7              	// [0:0]  
BB6_PU14:	// 0x2c5
// BB:6 cycle count: 94
//1221  		 	{
//1222  		 		QuestionStatus_LQA[i/16] &=~BitMap[i%16];				

LM100:
	     .stabn 68,0,1222,LM100-_Supress_Question_Switch
	     R4 = [BP + 0]            	// [0:1222]  i
	     R4 = R4 lsr 4            	// [2:1222]  
	     [BP + 1] = R4            	// [3:1222]  __save_expr_temp_3
	     R4 = [BP + 1]            	// [4:1222]  __save_expr_temp_3
	     R3 = 0                   	// [6:1222]  
	     R1 = (_QuestionStatus_LQA)	// [7:1222]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [9:1222]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [10:1222]  
	     R3 = R3 + R2, Carry      	// [11:1222]  
	     DS = R3                  	// [12:1222]  
	     R4 = DS:[R4]             	// [13:1222]  
	     [BP + 3] = R4            	// [15:1222]  lra_spill_temp_6
	     R4 = [BP + 0]            	// [16:1222]  i
	     R4 = R4 & 15             	// [18:1222]  
	     R3 = 0                   	// [19:1222]  
	     R1 = (_BitMap)           	// [20:1222]  BitMap
	     R2 = seg(_BitMap)        	// [22:1222]  BitMap
	     R4 = R4 + R1             	// [23:1222]  
	     R3 = R3 + R2, Carry      	// [24:1222]  
	     DS = R3                  	// [25:1222]  
	     R4 = DS:[R4]             	// [26:1222]  
	     R3 = R4 ^ 65535          	// [28:1222]  
	     R4 = [BP + 3]            	// [30:1222]  lra_spill_temp_6
	     R4 = R4 & R3             	// [32:1222]  
	     [BP + 4] = R4            	// [33:1222]  lra_spill_temp_7
	     R4 = [BP + 1]            	// [34:1222]  __save_expr_temp_3
	     R3 = 0                   	// [36:1222]  
	     R1 = (_QuestionStatus_LQA)	// [37:1222]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [39:1222]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [40:1222]  
	     R3 = R3 + R2, Carry      	// [41:1222]  
	     DS = R3                  	// [42:1222]  
	     R3 = [BP + 4]            	// [43:1222]  lra_spill_temp_7
	     DS:[R4] = R3             	// [45:1222]  
//1223  				QuestionStatus_Asked[i/16]&=~BitMap[i%16];//xiang 20160330

LM101:
	     .stabn 68,0,1223,LM101-_Supress_Question_Switch
	     R4 = [BP + 0]            	// [47:1223]  i
	     R4 = R4 lsr 4            	// [49:1223]  
	     [BP + 2] = R4            	// [50:1223]  __save_expr_temp_4
	     R4 = [BP + 2]            	// [51:1223]  __save_expr_temp_4
	     R3 = 0                   	// [53:1223]  
	     R1 = (_QuestionStatus_Asked)	// [54:1223]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [56:1223]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [57:1223]  
	     R3 = R3 + R2, Carry      	// [58:1223]  
	     DS = R3                  	// [59:1223]  
	     R4 = DS:[R4]             	// [60:1223]  
	     [BP + 5] = R4            	// [62:1223]  lra_spill_temp_8
	     R4 = [BP + 0]            	// [63:1223]  i
	     R4 = R4 & 15             	// [65:1223]  
	     R3 = 0                   	// [66:1223]  
	     R1 = (_BitMap)           	// [67:1223]  BitMap
	     R2 = seg(_BitMap)        	// [69:1223]  BitMap
	     R4 = R4 + R1             	// [70:1223]  
	     R3 = R3 + R2, Carry      	// [71:1223]  
	     DS = R3                  	// [72:1223]  
	     R4 = DS:[R4]             	// [73:1223]  
	     R3 = R4 ^ 65535          	// [75:1223]  
	     R4 = [BP + 5]            	// [77:1223]  lra_spill_temp_8
	     R4 = R4 & R3             	// [79:1223]  
	     [BP + 6] = R4            	// [80:1223]  lra_spill_temp_9
	     R4 = [BP + 2]            	// [81:1223]  __save_expr_temp_4
	     R3 = 0                   	// [83:1223]  
	     R1 = (_QuestionStatus_Asked)	// [84:1223]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [86:1223]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [87:1223]  
	     R3 = R3 + R2, Carry      	// [88:1223]  
	     DS = R3                  	// [89:1223]  
	     R3 = [BP + 6]            	// [90:1223]  lra_spill_temp_9
	     DS:[R4] = R3             	// [92:1223]  
L_14_7:	// 0x311
// BB:7 cycle count: 7
//1225  		 	}
//1226  	
//1227  		}
//1228  	 
//1229  	     i++;	 

LM102:
	     .stabn 68,0,1229,LM102-_Supress_Question_Switch
	     R4 = [BP + 0]            	// [0:1229]  i
	     R4 = R4 + 1              	// [2:1229]  
	     [BP + 0] = R4            	// [3:1229]  i
	     goto L_14_5              	// [4:1229]  
L_14_6:	// 0x316
// BB:8 cycle count: 6
	     SP = SP + 7              	// [0:1229]  
	     pop BP, PC from [SP]     	// [1:1229]  
LBE14:
	.endp	
	     .stabn 192,0,0,LBB14-_Supress_Question_Switch
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE14-_Supress_Question_Switch
LME15:
	     .stabf LME15-_Supress_Question_Switch
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
	// lra_spill_temp_10 = 3
	// lra_spill_temp_11 = 4
//1233  }
//1234  /*********************************************************************
//1235  ************************************************************************/
//1236  void Supress_Question_CategoryLast2Cat()
//1237  {

LM103:
	     .stabn 68,0,1237,LM103-_Supress_Question_CategoryLast2Cat
BB1_PU15:	// 0x318
// BB:1 cycle count: 22
	     push BP to [SP]          	// [0:1237]  
	     SP = SP - 5              	// [2:1237]  
	     BP = SP + 1              	// [3:1237]  
LBB15:
//1238  	unsigned temp;
//1239  	unsigned i = 0;

LM104:
	     .stabn 68,0,1239,LM104-_Supress_Question_CategoryLast2Cat
	     R4 = 0                   	// [5:1239]  
	     [BP + 0] = R4            	// [6:1239]  i
//1240  	
//1241  	
//1242  	
//1243  	
//1244  	if(Last2Cat[0]!=Last2Cat[1])

LM105:
	     .stabn 68,0,1244,LM105-_Supress_Question_CategoryLast2Cat
	     DS = seg(_Last2Cat)      	// [7:1244]  Last2Cat
	     R4 = (_Last2Cat)         	// [8:1244]  Last2Cat
	     R3 = DS:[R4]             	// [10:1244]  
	     DS = seg(_Last2Cat+1)    	// [12:1244]  Last2Cat+1
	     R4 = (_Last2Cat+1)       	// [13:1244]  Last2Cat+1
	     R4 = DS:[R4]             	// [15:1244]  
	     cmp R3, R4               	// [17:1244]  
	     je L_15_12               	// [18:1244]  
BB2_PU15:	// 0x328
// BB:2 cycle count: 6
//1245  		return ;

LM106:
	     .stabn 68,0,1245,LM106-_Supress_Question_CategoryLast2Cat
	     SP = SP + 5              	// [0:1245]  
	     pop BP, PC from [SP]     	// [1:1245]  
L_15_12:	// 0x32a
// BB:3 cycle count: 10
//1246  	
//1247  	if(Last2Cat[0]==0)

LM107:
	     .stabn 68,0,1247,LM107-_Supress_Question_CategoryLast2Cat
	     DS = seg(_Last2Cat)      	// [0:1247]  Last2Cat
	     R4 = (_Last2Cat)         	// [1:1247]  Last2Cat
	     R4 = DS:[R4]             	// [3:1247]  
	     cmp R4, 0                	// [5:1247]  
	     jne L_15_13              	// [6:1247]  
BB4_PU15:	// 0x330
// BB:4 cycle count: 6
//1248  	   return ;

LM108:
	     .stabn 68,0,1248,LM108-_Supress_Question_CategoryLast2Cat
	     SP = SP + 5              	// [0:1248]  
	     pop BP, PC from [SP]     	// [1:1248]  
L_15_13:	// 0x332
// BB:5 cycle count: 6
//1249  	
//1250  	Last2Catcnt=1;

LM109:
	     .stabn 68,0,1250,LM109-_Supress_Question_CategoryLast2Cat
	     R3 = 1                   	// [0:1250]  
	     DS = seg(_Last2Catcnt)   	// [1:1250]  Last2Catcnt
	     R4 = (_Last2Catcnt)      	// [2:1250]  Last2Catcnt
	     DS:[R4] = R3             	// [4:1250]  
L_15_14:	// 0x337
// BB:6 cycle count: 12
//1251  	
//1252  	while(i<R_QuestionNum)

LM110:
	     .stabn 68,0,1252,LM110-_Supress_Question_CategoryLast2Cat
	     R3 = [BP + 0]            	// [0:1252]  i
	     DS = seg(_R_QuestionNum) 	// [2:1252]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:1252]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:1252]  
	     cmp R3, R4               	// [7:1252]  
	     jb BB7_PU15              	// [8:1252]  
BB15_PU15:	// 0x33e
// BB:15 cycle count: 3
	     goto L_15_15             	// [0:0]  
BB7_PU15:	// 0x340
// BB:7 cycle count: 3
//1253  	{
//1254  	 	WatchdogClear();

LM111:
	     .stabn 68,0,1254,LM111-_Supress_Question_CategoryLast2Cat
	     call _WatchdogClear      	// [0:1254]  WatchdogClear
BB8_PU15:	// 0x342
// BB:8 cycle count: 33
//1255  
//1256         if(BitMap[i%16]&QuestionStatus_LQA[i/16])

LM112:
	     .stabn 68,0,1256,LM112-_Supress_Question_CategoryLast2Cat
	     R4 = [BP + 0]            	// [0:1256]  i
	     R4 = R4 & 15             	// [2:1256]  
	     R3 = 0                   	// [3:1256]  
	     R1 = (_BitMap)           	// [4:1256]  BitMap
	     R2 = seg(_BitMap)        	// [6:1256]  BitMap
	     R4 = R4 + R1             	// [7:1256]  
	     R3 = R3 + R2, Carry      	// [8:1256]  
	     DS = R3                  	// [9:1256]  
	     R4 = DS:[R4]             	// [10:1256]  
	     [BP + 3] = R4            	// [12:1256]  lra_spill_temp_10
	     R4 = [BP + 0]            	// [13:1256]  i
	     R4 = R4 lsr 4            	// [15:1256]  
	     R3 = 0                   	// [16:1256]  
	     R1 = (_QuestionStatus_LQA)	// [17:1256]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [19:1256]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [20:1256]  
	     R3 = R3 + R2, Carry      	// [21:1256]  
	     DS = R3                  	// [22:1256]  
	     R3 = DS:[R4]             	// [23:1256]  
	     R4 = [BP + 3]            	// [25:1256]  lra_spill_temp_10
	     R4 = R4 & R3             	// [27:1256]  
	     cmp R4, 0                	// [28:1256]  
	     je L_15_16               	// [29:1256]  
BB9_PU15:	// 0x35b
// BB:9 cycle count: 10
//1257         {
//1258  			temp = Get_Question_Category(i);//20170721 xiang

LM113:
	     .stabn 68,0,1258,LM113-_Supress_Question_CategoryLast2Cat
	     SP = SP - 1              	// [0:1258]  
	     R3 = [BP + 0]            	// [1:1258]  i
	     R4 = SP + 1              	// [3:1258]  
	     [R4] = R3                	// [5:1258]  
	     call _Get_Question_Category	// [7:1258]  Get_Question_Category
BB10_PU15:	// 0x362
// BB:10 cycle count: 14
	     SP = SP + 1              	// [0:1258]  
	     [BP + 1] = R1            	// [1:1258]  temp
//1259  			 
//1260  	
//1261  			 
//1262  			 	if((temp ==  Last2Cat[0])||(temp ==  Last2Cat[1]))

LM114:
	     .stabn 68,0,1262,LM114-_Supress_Question_CategoryLast2Cat
	     DS = seg(_Last2Cat)      	// [2:1262]  Last2Cat
	     R4 = (_Last2Cat)         	// [3:1262]  Last2Cat
	     R3 = DS:[R4]             	// [5:1262]  
	     R4 = [BP + 1]            	// [7:1262]  temp
	     cmp R3, R4               	// [9:1262]  
	     je L_15_18               	// [10:1262]  
BB11_PU15:	// 0x36b
// BB:11 cycle count: 12
	     DS = seg(_Last2Cat+1)    	// [0:1262]  Last2Cat+1
	     R4 = (_Last2Cat+1)       	// [1:1262]  Last2Cat+1
	     R3 = DS:[R4]             	// [3:1262]  
	     R4 = [BP + 1]            	// [5:1262]  temp
	     cmp R3, R4               	// [7:1262]  
	     jne L_15_17              	// [8:1262]  
L_15_18:	// 0x372
// BB:12 cycle count: 47
//1263  			 	{
//1264  			 		QuestionStatus_LQA[i/16] &=~BitMap[i%16];				

LM115:
	     .stabn 68,0,1264,LM115-_Supress_Question_CategoryLast2Cat
	     R4 = [BP + 0]            	// [0:1264]  i
	     R4 = R4 lsr 4            	// [2:1264]  
	     [BP + 2] = R4            	// [3:1264]  __save_expr_temp_5
	     R4 = [BP + 2]            	// [4:1264]  __save_expr_temp_5
	     R3 = 0                   	// [6:1264]  
	     R1 = (_QuestionStatus_LQA)	// [7:1264]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [9:1264]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [10:1264]  
	     R3 = R3 + R2, Carry      	// [11:1264]  
	     DS = R3                  	// [12:1264]  
	     R4 = DS:[R4]             	// [13:1264]  
	     [BP + 3] = R4            	// [15:1264]  lra_spill_temp_10
	     R4 = [BP + 0]            	// [16:1264]  i
	     R4 = R4 & 15             	// [18:1264]  
	     R3 = 0                   	// [19:1264]  
	     R1 = (_BitMap)           	// [20:1264]  BitMap
	     R2 = seg(_BitMap)        	// [22:1264]  BitMap
	     R4 = R4 + R1             	// [23:1264]  
	     R3 = R3 + R2, Carry      	// [24:1264]  
	     DS = R3                  	// [25:1264]  
	     R4 = DS:[R4]             	// [26:1264]  
	     R3 = R4 ^ 65535          	// [28:1264]  
	     R4 = [BP + 3]            	// [30:1264]  lra_spill_temp_10
	     R4 = R4 & R3             	// [32:1264]  
	     [BP + 4] = R4            	// [33:1264]  lra_spill_temp_11
	     R4 = [BP + 2]            	// [34:1264]  __save_expr_temp_5
	     R3 = 0                   	// [36:1264]  
	     R1 = (_QuestionStatus_LQA)	// [37:1264]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [39:1264]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [40:1264]  
	     R3 = R3 + R2, Carry      	// [41:1264]  
	     DS = R3                  	// [42:1264]  
	     R3 = [BP + 4]            	// [43:1264]  lra_spill_temp_11
	     DS:[R4] = R3             	// [45:1264]  
L_15_17:	// 0x398
L_15_16:	// 0x398
// BB:13 cycle count: 7
//1267  			 	}
//1268  	
//1269         }
//1270  	 
//1271  	     i++;	 

LM116:
	     .stabn 68,0,1271,LM116-_Supress_Question_CategoryLast2Cat
	     R4 = [BP + 0]            	// [0:1271]  i
	     R4 = R4 + 1              	// [2:1271]  
	     [BP + 0] = R4            	// [3:1271]  i
	     goto L_15_14             	// [4:1271]  
L_15_15:	// 0x39d
// BB:14 cycle count: 6
	     SP = SP + 5              	// [0:1271]  
	     pop BP, PC from [SP]     	// [1:1271]  
LBE15:
	.endp	
	     .stabn 192,0,0,LBB15-_Supress_Question_CategoryLast2Cat
	     .stabs "temp:4",128,0,0,1
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE15-_Supress_Question_CategoryLast2Cat
LME16:
	     .stabf LME16-_Supress_Question_CategoryLast2Cat
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
	// lra_spill_temp_12 = 3
//1277  //==================================================
//1278  //SQ7_2
//1279  //==================================================
//1280  unsigned Select_Questionrandom_4(unsigned Index)
//1281  {

LM117:
	     .stabn 68,0,1281,LM117-_Select_Questionrandom_4
BB1_PU16:	// 0x39f
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1281]  
	     SP = SP - 4              	// [2:1281]  
	     BP = SP + 1              	// [3:1281]  
LBB16:
//1282  	unsigned i= 0;

LM118:
	     .stabn 68,0,1282,LM118-_Select_Questionrandom_4
	     R4 = 0                   	// [5:1282]  
	     [BP + 0] = R4            	// [6:1282]  i
//1283  	unsigned j= 0;

LM119:
	     .stabn 68,0,1283,LM119-_Select_Questionrandom_4
	     R4 = 0                   	// [7:1283]  
	     [BP + 1] = R4            	// [8:1283]  j
L_16_1:	// 0x3a7
// BB:2 cycle count: 12
//1284  	unsigned temp;
//1285  
//1286  	while(i<R_QuestionNum)

LM120:
	     .stabn 68,0,1286,LM120-_Select_Questionrandom_4
	     R3 = [BP + 0]            	// [0:1286]  i
	     DS = seg(_R_QuestionNum) 	// [2:1286]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:1286]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:1286]  
	     cmp R3, R4               	// [7:1286]  
	     jae L_16_2               	// [8:1286]  
BB3_PU16:	// 0x3ae
// BB:3 cycle count: 36
//1287  	{
//1288  		 temp = BitMap[i%16]&QuestionStatus_LQA[i/16];

LM121:
	     .stabn 68,0,1288,LM121-_Select_Questionrandom_4
	     R4 = [BP + 0]            	// [0:1288]  i
	     R4 = R4 & 15             	// [2:1288]  
	     R3 = 0                   	// [3:1288]  
	     R1 = (_BitMap)           	// [4:1288]  BitMap
	     R2 = seg(_BitMap)        	// [6:1288]  BitMap
	     R4 = R4 + R1             	// [7:1288]  
	     R3 = R3 + R2, Carry      	// [8:1288]  
	     DS = R3                  	// [9:1288]  
	     R4 = DS:[R4]             	// [10:1288]  
	     [BP + 3] = R4            	// [12:1288]  lra_spill_temp_12
	     R4 = [BP + 0]            	// [13:1288]  i
	     R4 = R4 lsr 4            	// [15:1288]  
	     R3 = 0                   	// [16:1288]  
	     R1 = (_QuestionStatus_LQA)	// [17:1288]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [19:1288]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [20:1288]  
	     R3 = R3 + R2, Carry      	// [21:1288]  
	     DS = R3                  	// [22:1288]  
	     R3 = DS:[R4]             	// [23:1288]  
	     R4 = [BP + 3]            	// [25:1288]  lra_spill_temp_12
	     R4 = R4 & R3             	// [27:1288]  
	     [BP + 2] = R4            	// [28:1288]  temp
//1289  		 if (temp)

LM122:
	     .stabn 68,0,1289,LM122-_Select_Questionrandom_4
	     R4 = [BP + 2]            	// [29:1289]  temp
	     cmp R4, 0                	// [31:1289]  
	     je L_16_3                	// [32:1289]  
BB4_PU16:	// 0x3c9
// BB:4 cycle count: 9
//1290  		 {
//1291  		 	if (j == Index) return i;

LM123:
	     .stabn 68,0,1291,LM123-_Select_Questionrandom_4
	     R3 = [BP + 7]            	// [0:1291]  Index
	     R4 = [BP + 1]            	// [2:1291]  j
	     cmp R3, R4               	// [4:1291]  
	     jne L_16_4               	// [5:1291]  
BB5_PU16:	// 0x3cd
// BB:5 cycle count: 8
	     R1 = [BP + 0]            	// [0:1291]  i
	     SP = SP + 4              	// [2:1291]  
	     pop BP, PC from [SP]     	// [3:1291]  
L_16_4:	// 0x3d0
// BB:6 cycle count: 4
//1292  		 	j++;

LM124:
	     .stabn 68,0,1292,LM124-_Select_Questionrandom_4
	     R4 = [BP + 1]            	// [0:1292]  j
	     R4 = R4 + 1              	// [2:1292]  
	     [BP + 1] = R4            	// [3:1292]  j
L_16_3:	// 0x3d3
// BB:7 cycle count: 8
//1293  		 }
//1294  		 i++;

LM125:
	     .stabn 68,0,1294,LM125-_Select_Questionrandom_4
	     R4 = [BP + 0]            	// [0:1294]  i
	     R4 = R4 + 1              	// [2:1294]  
	     [BP + 0] = R4            	// [3:1294]  i
	     jmp L_16_1               	// [4:1294]  
L_16_2:	// 0x3d7
// BB:8 cycle count: 8
//1295  	}
//1296  	return i;

LM126:
	     .stabn 68,0,1296,LM126-_Select_Questionrandom_4
	     R1 = [BP + 0]            	// [0:1296]  i
	     SP = SP + 4              	// [2:1296]  
	     pop BP, PC from [SP]     	// [3:1296]  
LBE16:
	.endp	
	     .stabs "Index:p4",160,0,0,7
	     .stabn 192,0,0,LBB16-_Select_Questionrandom_4
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabs "temp:4",128,0,0,2
	     .stabn 224,0,0,LBE16-_Select_Questionrandom_4
LME17:
	     .stabf LME17-_Select_Questionrandom_4
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
	// lra_spill_temp_13 = 6
//1301  /**************************************************
//1302  *******************************************************/
//1303  
//1304  unsigned Select_Question_ModeStatus_Other(unsigned Mode)//,小于等于 i_quality
//1305  {

LM127:
	     .stabn 68,0,1305,LM127-_Select_Question_ModeStatus_Other
BB1_PU17:	// 0x3da
// BB:1 cycle count: 13
	     push BP to [SP]          	// [0:1305]  
	     SP = SP - 7              	// [2:1305]  
	     BP = SP + 1              	// [3:1305]  
LBB17:
//1306  	unsigned i= 0,j=0,temp1 =0,temp2 =0;//temp3=0;

LM128:
	     .stabn 68,0,1306,LM128-_Select_Question_ModeStatus_Other
	     R4 = 0                   	// [5:1306]  
	     [BP + 0] = R4            	// [6:1306]  i
	     R4 = 0                   	// [7:1306]  
	     [BP + 1] = R4            	// [8:1306]  j
	     R4 = 0                   	// [9:1306]  
	     [BP + 2] = R4            	// [10:1306]  temp1
	     R4 = 0                   	// [11:1306]  
	     [BP + 3] = R4            	// [12:1306]  temp2
L_17_15:	// 0x3e6
// BB:2 cycle count: 12
//1309  	unsigned int t_mode;
//1310  
//1311  
//1312  
//1313  	while(i<R_QuestionNum)

LM129:
	     .stabn 68,0,1313,LM129-_Select_Question_ModeStatus_Other
	     R3 = [BP + 0]            	// [0:1313]  i
	     DS = seg(_R_QuestionNum) 	// [2:1313]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:1313]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:1313]  
	     cmp R3, R4               	// [7:1313]  
	     jb BB3_PU17              	// [8:1313]  
BB22_PU17:	// 0x3ed
// BB:22 cycle count: 3
	     goto L_17_16             	// [0:0]  
BB3_PU17:	// 0x3ef
// BB:3 cycle count: 3
//1314  	{
//1315  
//1316  	    WatchdogClear();

LM130:
	     .stabn 68,0,1316,LM130-_Select_Question_ModeStatus_Other
	     call _WatchdogClear      	// [0:1316]  WatchdogClear
BB4_PU17:	// 0x3f1
// BB:4 cycle count: 36
//1317  
//1318  		 //if(SelectOfLQA == 0)//C_SelectFromLQA
//1319  	     temp2 = BitMap[i%16]&QuestionStatus_LQA[i/16];

LM131:
	     .stabn 68,0,1319,LM131-_Select_Question_ModeStatus_Other
	     R4 = [BP + 0]            	// [0:1319]  i
	     R4 = R4 & 15             	// [2:1319]  
	     R3 = 0                   	// [3:1319]  
	     R1 = (_BitMap)           	// [4:1319]  BitMap
	     R2 = seg(_BitMap)        	// [6:1319]  BitMap
	     R4 = R4 + R1             	// [7:1319]  
	     R3 = R3 + R2, Carry      	// [8:1319]  
	     DS = R3                  	// [9:1319]  
	     R4 = DS:[R4]             	// [10:1319]  
	     [BP + 6] = R4            	// [12:1319]  lra_spill_temp_13
	     R4 = [BP + 0]            	// [13:1319]  i
	     R4 = R4 lsr 4            	// [15:1319]  
	     R3 = 0                   	// [16:1319]  
	     R1 = (_QuestionStatus_LQA)	// [17:1319]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [19:1319]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [20:1319]  
	     R3 = R3 + R2, Carry      	// [21:1319]  
	     DS = R3                  	// [22:1319]  
	     R3 = DS:[R4]             	// [23:1319]  
	     R4 = [BP + 6]            	// [25:1319]  lra_spill_temp_13
	     R4 = R4 & R3             	// [27:1319]  
	     [BP + 3] = R4            	// [28:1319]  temp2
//1320  		 
//1321  
//1322  		
//1323  		 if(temp2)		 	

LM132:
	     .stabn 68,0,1323,LM132-_Select_Question_ModeStatus_Other
	     R4 = [BP + 3]            	// [29:1323]  temp2
	     cmp R4, 0                	// [31:1323]  
	     je L_17_17               	// [32:1323]  
BB5_PU17:	// 0x40c
// BB:5 cycle count: 10
//1324  		 {
//1325  
//1326               // t_status = GetStatus(i);
//1327                t_mode =  Get_Question_Category(i);

LM133:
	     .stabn 68,0,1327,LM133-_Select_Question_ModeStatus_Other
	     SP = SP - 1              	// [0:1327]  
	     R3 = [BP + 0]            	// [1:1327]  i
	     R4 = SP + 1              	// [3:1327]  
	     [R4] = R3                	// [5:1327]  
	     call _Get_Question_Category	// [7:1327]  Get_Question_Category
BB6_PU17:	// 0x413
// BB:6 cycle count: 11
	     SP = SP + 1              	// [0:1327]  
	     [BP + 4] = R1            	// [1:1327]  t_mode
//1328  			  //t_quality = GetQuality(i);
//1329  		 
//1330  		 	if (t_mode !=Mode)

LM134:
	     .stabn 68,0,1330,LM134-_Select_Question_ModeStatus_Other
	     R3 = [BP + 10]           	// [2:1330]  Mode
	     R4 = [BP + 4]            	// [4:1330]  t_mode
	     cmp R3, R4               	// [6:1330]  
	     je L_17_18               	// [7:1330]  
BB7_PU17:	// 0x419
// BB:7 cycle count: 7
//1331  		 		{
//1332  
//1333                    if(temp1)

LM135:
	     .stabn 68,0,1333,LM135-_Select_Question_ModeStatus_Other
	     R4 = [BP + 2]            	// [0:1333]  temp1
	     cmp R4, 0                	// [2:1333]  
	     je L_17_19               	// [3:1333]  
BB8_PU17:	// 0x41c
// BB:8 cycle count: 9
//1334                    	{
//1335                        if(j==temp)

LM136:
	     .stabn 68,0,1335,LM136-_Select_Question_ModeStatus_Other
	     R3 = [BP + 1]            	// [0:1335]  j
	     R4 = [BP + 5]            	// [2:1335]  temp
	     cmp R3, R4               	// [4:1335]  
	     jne L_17_20              	// [5:1335]  
BB9_PU17:	// 0x420
// BB:9 cycle count: 8
//1336  		 	    	    return i;

LM137:
	     .stabn 68,0,1336,LM137-_Select_Question_ModeStatus_Other
	     R1 = [BP + 0]            	// [0:1336]  i
	     SP = SP + 7              	// [2:1336]  
	     pop BP, PC from [SP]     	// [3:1336]  
L_17_20:	// 0x423
L_17_19:	// 0x423
// BB:10 cycle count: 4
//1337  
//1338                    	}
//1339  
//1340  				  j++;

LM138:
	     .stabn 68,0,1340,LM138-_Select_Question_ModeStatus_Other
	     R4 = [BP + 1]            	// [0:1340]  j
	     R4 = R4 + 1              	// [2:1340]  
	     [BP + 1] = R4            	// [3:1340]  j
L_17_18:	// 0x426
L_17_17:	// 0x426
// BB:11 cycle count: 16
//1341  
//1342  		 		}
//1343  		 }
//1344  		 i++;

LM139:
	     .stabn 68,0,1344,LM139-_Select_Question_ModeStatus_Other
	     R4 = [BP + 0]            	// [0:1344]  i
	     R4 = R4 + 1              	// [2:1344]  
	     [BP + 0] = R4            	// [3:1344]  i
//1345  
//1346  	  	  if(i == R_QuestionNum)

LM140:
	     .stabn 68,0,1346,LM140-_Select_Question_ModeStatus_Other
	     R3 = [BP + 0]            	// [4:1346]  i
	     DS = seg(_R_QuestionNum) 	// [6:1346]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [7:1346]  R_QuestionNum
	     R4 = DS:[R4]             	// [9:1346]  
	     cmp R3, R4               	// [11:1346]  
	     jne L_17_21              	// [12:1346]  
BB12_PU17:	// 0x430
// BB:12 cycle count: 3
//1347  		  {
//1348  
//1349                 WatchdogClear();

LM141:
	     .stabn 68,0,1349,LM141-_Select_Question_ModeStatus_Other
	     call _WatchdogClear      	// [0:1349]  WatchdogClear
BB13_PU17:	// 0x432
// BB:13 cycle count: 9
//1350  			  
//1351  			     i=0;	

LM142:
	     .stabn 68,0,1351,LM142-_Select_Question_ModeStatus_Other
	     R4 = 0                   	// [0:1351]  
	     [BP + 0] = R4            	// [1:1351]  i
//1352  				 
//1353  			  	if(j)

LM143:
	     .stabn 68,0,1353,LM143-_Select_Question_ModeStatus_Other
	     R4 = [BP + 1]            	// [2:1353]  j
	     cmp R4, 0                	// [4:1353]  
	     je L_17_23               	// [5:1353]  
BB14_PU17:	// 0x437
// BB:14 cycle count: 14
//1354  			  	{			  	   
//1355  			  	   temp = *P_TimerB_CNTR %j;

LM144:
	     .stabn 68,0,1355,LM144-_Select_Question_ModeStatus_Other
	     R3 = 12307               	// [0:1355]  
	     R4 = 0                   	// [2:1355]  
	     DS = R4                  	// [3:1355]  
	     R3 = DS:[R3]             	// [4:1355]  
	     R4 = [BP + 1]            	// [6:1355]  j
	     push R4, R3 to [SP]      	// [8:1355]  
	     call __modu1             	// [11:1355]  _modu1
BB15_PU17:	// 0x440
// BB:15 cycle count: 10
	     SP = SP + 2              	// [0:0]  
	     [BP + 5] = R1            	// [1:0]  temp
//1356  			  	   j=0;

LM145:
	     .stabn 68,0,1356,LM145-_Select_Question_ModeStatus_Other
	     R4 = 0                   	// [2:1356]  
	     [BP + 1] = R4            	// [3:1356]  j
//1357  			  	   temp1 =1;

LM146:
	     .stabn 68,0,1357,LM146-_Select_Question_ModeStatus_Other
	     R4 = 1                   	// [4:1357]  
	     [BP + 2] = R4            	// [5:1357]  temp1
	     jmp L_17_22              	// [6:1357]  
L_17_23:	// 0x447
// BB:16 cycle count: 18
//1360  			  	
//1361                else 
//1362  			  	{
//1363  			  		
//1364  			  		 return Select_Questionrandom_4(*P_TimerB_CNTR % LQA);

LM147:
	     .stabn 68,0,1364,LM147-_Select_Question_ModeStatus_Other
	     SP = SP - 1              	// [0:1364]  
	     R3 = 12307               	// [1:1364]  
	     R4 = 0                   	// [3:1364]  
	     DS = R4                  	// [4:1364]  
	     R3 = DS:[R3]             	// [5:1364]  
	     DS = seg(_LQA)           	// [7:1364]  LQA
	     R4 = (_LQA)              	// [8:1364]  LQA
	     R4 = DS:[R4]             	// [10:1364]  
	     push R4, R3 to [SP]      	// [12:1364]  
	     call __modu1             	// [15:1364]  _modu1
BB17_PU17:	// 0x454
// BB:17 cycle count: 8
	     SP = SP + 2              	// [0:0]  
	     R4 = SP + 1              	// [1:0]  
	     [R4] = R1                	// [3:0]  
	     call _Select_Questionrandom_4	// [5:1364]  Select_Questionrandom_4
BB18_PU17:	// 0x45a
// BB:18 cycle count: 6
	     SP = SP + 8              	// [0:1364]  
	     pop BP, PC from [SP]     	// [1:1364]  
L_17_22:	// 0x45c
L_17_21:	// 0x45c
// BB:19 cycle count: 3

LM148:
	     .stabn 68,0,1346,LM148-_Select_Question_ModeStatus_Other
	     goto L_17_15             	// [0:1346]  
L_17_16:	// 0x45e
// BB:20 cycle count: 3
//1370  
//1371  		    }  
//1372  	 
//1373  
//1374  	return Go_Rest();

LM149:
	     .stabn 68,0,1374,LM149-_Select_Question_ModeStatus_Other
	     call _Go_Rest            	// [0:1374]  Go_Rest
BB21_PU17:	// 0x460
// BB:21 cycle count: 6
	     SP = SP + 7              	// [0:1374]  
	     pop BP, PC from [SP]     	// [1:1374]  
LBE17:
	.endp	
	     .stabs "Mode:p4",160,0,0,10
	     .stabn 192,0,0,LBB17-_Select_Question_ModeStatus_Other
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabs "temp1:4",128,0,0,2
	     .stabs "temp2:4",128,0,0,3
	     .stabs "temp:4",128,0,0,5
	     .stabs "t_mode:4",128,0,0,4
	     .stabn 224,0,0,LBE17-_Select_Question_ModeStatus_Other
LME18:
	     .stabf LME18-_Select_Question_ModeStatus_Other
.code
	     .stabs "GameTimeout:F4",36,0,0,_GameTimeout

	// Program Unit: GameTimeout
.public	_GameTimeout
_GameTimeout: .proc	
	     .stabn 0xa6,0,0,1
	// temp_Key_activeflag = 0
	// old_frame_pointer = 1
	// return_address = 2
//1723  
//1724  /****************************************************************
//1725  *********************************************************************/
//1726  unsigned int GameTimeout()
//1727  {

LM150:
	     .stabn 68,0,1727,LM150-_GameTimeout
BB1_PU18:	// 0x462
// BB:1 cycle count: 32
	     push BP to [SP]          	// [0:1727]  
	     SP = SP - 1              	// [2:1727]  
	     BP = SP + 1              	// [3:1727]  
LBB18:
//1728                 unsigned int temp_Key_activeflag = Key_activeflag;

LM151:
	     .stabn 68,0,1728,LM151-_GameTimeout
	     DS = seg(_Key_activeflag)	// [5:1728]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [6:1728]  Key_activeflag
	     R4 = DS:[R4]             	// [8:1728]  
	     [BP + 0] = R4            	// [10:1728]  temp_Key_activeflag
//1729                 
//1730                 
//1731  						  Key_activeflag =Playbutton;// Only_Play_KeyEnable;//

LM152:
	     .stabn 68,0,1731,LM152-_GameTimeout
	     R3 = 1                   	// [11:1731]  
	     DS = seg(_Key_activeflag)	// [12:1731]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [13:1731]  Key_activeflag
	     DS:[R4] = R3             	// [15:1731]  
//1732  					      Key_Event =0;

LM153:
	     .stabn 68,0,1732,LM153-_GameTimeout
	     R3 = 0                   	// [17:1732]  
	     DS = seg(_Key_Event)     	// [18:1732]  Key_Event
	     R4 = (_Key_Event)        	// [19:1732]  Key_Event
	     DS:[R4] = R3             	// [21:1732]  
//1733  						  
//1734  						  PlayA1800_Elements(A_VLMMREN_Bye_01);

LM154:
	     .stabn 68,0,1734,LM154-_GameTimeout
	     SP = SP - 1              	// [23:1734]  
	     R3 = 9                   	// [24:1734]  
	     R4 = SP + 1              	// [25:1734]  
	     [R4] = R3                	// [27:1734]  
	     call _PlayA1800_Elements 	// [29:1734]  PlayA1800_Elements
BB2_PU18:	// 0x47c
// BB:2 cycle count: 9
//1735  
//1736  					      delay_time(10*16);

LM155:
	     .stabn 68,0,1736,LM155-_GameTimeout
	     R3 = 160                 	// [0:1736]  
	     R4 = SP + 1              	// [2:1736]  
	     [R4] = R3                	// [4:1736]  
	     call _delay_time         	// [6:1736]  delay_time
BB3_PU18:	// 0x483
// BB:3 cycle count: 11
	     SP = SP + 1              	// [0:1736]  
//1737  	
//1738                            if(Key_Event==0)

LM156:
	     .stabn 68,0,1738,LM156-_GameTimeout
	     DS = seg(_Key_Event)     	// [1:1738]  Key_Event
	     R4 = (_Key_Event)        	// [2:1738]  Key_Event
	     R4 = DS:[R4]             	// [4:1738]  
	     cmp R4, 0                	// [6:1738]  
	     jne L_18_1               	// [7:1738]  
BB4_PU18:	// 0x48a
// BB:4 cycle count: 9
//1739                            	{
//1740  
//1741                                 PlayA1800_Elements(A_VLMMREN_Bye_02);

LM157:
	     .stabn 68,0,1741,LM157-_GameTimeout
	     SP = SP - 1              	// [0:1741]  
	     R3 = 10                  	// [1:1741]  
	     R4 = SP + 1              	// [2:1741]  
	     [R4] = R3                	// [4:1741]  
	     call _PlayA1800_Elements 	// [6:1741]  PlayA1800_Elements
BB5_PU18:	// 0x491
// BB:5 cycle count: 12
	     SP = SP + 1              	// [0:1741]  
//1742                                 Sleepflag |=1;

LM158:
	     .stabn 68,0,1742,LM158-_GameTimeout
	     DS = seg(_Sleepflag)     	// [1:1742]  Sleepflag
	     R4 = (_Sleepflag)        	// [2:1742]  Sleepflag
	     R4 = DS:[R4]             	// [4:1742]  
	     R4 = R4 | 1              	// [6:1742]  
	     DS = seg(_Sleepflag)     	// [7:1742]  Sleepflag
	     R3 = (_Sleepflag)        	// [8:1742]  Sleepflag
	     DS:[R3] = R4             	// [10:1742]  
L_18_1:	// 0x49b
// BB:6 cycle count: 20
//1743                            	}
//1744  						   
//1745                         Key_activeflag = temp_Key_activeflag;

LM159:
	     .stabn 68,0,1745,LM159-_GameTimeout
	     R3 = [BP + 0]            	// [0:1745]  temp_Key_activeflag
	     DS = seg(_Key_activeflag)	// [2:1745]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [3:1745]  Key_activeflag
	     DS:[R4] = R3             	// [5:1745]  
//1746                         Key_Event =0;

LM160:
	     .stabn 68,0,1746,LM160-_GameTimeout
	     R3 = 0                   	// [7:1746]  
	     DS = seg(_Key_Event)     	// [8:1746]  Key_Event
	     R4 = (_Key_Event)        	// [9:1746]  Key_Event
	     DS:[R4] = R3             	// [11:1746]  
//1747                         return 0xffff;

LM161:
	     .stabn 68,0,1747,LM161-_GameTimeout
	     R1 = - 1                 	// [13:1747]  
	     SP = SP + 1              	// [14:1747]  
	     pop BP, PC from [SP]     	// [15:1747]  
LBE18:
	.endp	
	     .stabn 192,0,0,LBB18-_GameTimeout
	     .stabs "temp_Key_activeflag:4",128,0,0,0
	     .stabn 224,0,0,LBE18-_GameTimeout
LME19:
	     .stabf LME19-_GameTimeout
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
//1751  
//1752  /***************************************************************
//1753  ******************************************************************/
//1754  unsigned  Get_Registered_Player_Num(unsigned int temp)
//1755  {

LM162:
	     .stabn 68,0,1755,LM162-_Get_Registered_Player_Num
BB1_PU19:	// 0x4a8
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1755]  
	     SP = SP - 2              	// [2:1755]  
	     BP = SP + 1              	// [3:1755]  
LBB19:
//1756  	
//1757  	unsigned j = 0;

LM163:
	     .stabn 68,0,1757,LM163-_Get_Registered_Player_Num
	     R4 = 0                   	// [5:1757]  
	     [BP + 0] = R4            	// [6:1757]  j
//1758  	unsigned i = 0;

LM164:
	     .stabn 68,0,1758,LM164-_Get_Registered_Player_Num
	     R4 = 0                   	// [7:1758]  
	     [BP + 1] = R4            	// [8:1758]  i
L_19_1:	// 0x4b0
// BB:2 cycle count: 7
//1759  	while(i<C_Player_Num)//C_Player_Num <16

LM165:
	     .stabn 68,0,1759,LM165-_Get_Registered_Player_Num
	     R4 = [BP + 1]            	// [0:1759]  i
	     cmp R4, 9                	// [2:1759]  
	     ja L_19_2                	// [3:1759]  
BB3_PU19:	// 0x4b3
// BB:3 cycle count: 18
//1760  	{
//1761  		 if (BitMap[i]&temp) //Registered_Play_Status

LM166:
	     .stabn 68,0,1761,LM166-_Get_Registered_Player_Num
	     R4 = [BP + 1]            	// [0:1761]  i
	     R3 = 0                   	// [2:1761]  
	     R1 = (_BitMap)           	// [3:1761]  BitMap
	     R2 = seg(_BitMap)        	// [5:1761]  BitMap
	     R4 = R4 + R1             	// [6:1761]  
	     R3 = R3 + R2, Carry      	// [7:1761]  
	     DS = R3                  	// [8:1761]  
	     R4 = DS:[R4]             	// [9:1761]  
	     R4 = R4 & [BP + 5]       	// [11:1761]  temp
	     cmp R4, 0                	// [13:1761]  
	     je L_19_3                	// [14:1761]  
BB4_PU19:	// 0x4bf
// BB:4 cycle count: 4
//1762  		    {
//1763  		     j+=1;

LM167:
	     .stabn 68,0,1763,LM167-_Get_Registered_Player_Num
	     R4 = [BP + 0]            	// [0:1763]  j
	     R4 = R4 + 1              	// [2:1763]  
	     [BP + 0] = R4            	// [3:1763]  j
L_19_3:	// 0x4c2
// BB:5 cycle count: 8
//1764  		    }
//1765  		   i++;

LM168:
	     .stabn 68,0,1765,LM168-_Get_Registered_Player_Num
	     R4 = [BP + 1]            	// [0:1765]  i
	     R4 = R4 + 1              	// [2:1765]  
	     [BP + 1] = R4            	// [3:1765]  i
	     jmp L_19_1               	// [4:1765]  
L_19_2:	// 0x4c6
// BB:6 cycle count: 8
//1766  	}
//1767  	return j;

LM169:
	     .stabn 68,0,1767,LM169-_Get_Registered_Player_Num
	     R1 = [BP + 0]            	// [0:1767]  j
	     SP = SP + 2              	// [2:1767]  
	     pop BP, PC from [SP]     	// [3:1767]  
LBE19:
	.endp	
	     .stabs "temp:p4",160,0,0,5
	     .stabn 192,0,0,LBB19-_Get_Registered_Player_Num
	     .stabs "j:4",128,0,0,0
	     .stabs "i:4",128,0,0,1
	     .stabn 224,0,0,LBE19-_Get_Registered_Player_Num
LME20:
	     .stabf LME20-_Get_Registered_Player_Num
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
//1818  
//1819  /***************************************************************
//1820  ******************************************************************/
//1821  unsigned Get_LedDate_From_Play(unsigned temp_Player)
//1822  {

LM170:
	     .stabn 68,0,1822,LM170-_Get_LedDate_From_Play
BB1_PU20:	// 0x4c9
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1822]  
	     SP = SP - 2              	// [2:1822]  
	     BP = SP + 1              	// [3:1822]  
LBB20:
//1823  	unsigned temp = 0;

LM171:
	     .stabn 68,0,1823,LM171-_Get_LedDate_From_Play
	     R4 = 0                   	// [5:1823]  
	     [BP + 0] = R4            	// [6:1823]  temp
//1824  	unsigned i = 0;

LM172:
	     .stabn 68,0,1824,LM172-_Get_LedDate_From_Play
	     R4 = 0                   	// [7:1824]  
	     [BP + 1] = R4            	// [8:1824]  i
L_20_1:	// 0x4d1
// BB:2 cycle count: 7
//1825  	while(i<C_Player_Num)//C_Player_Num <16

LM173:
	     .stabn 68,0,1825,LM173-_Get_LedDate_From_Play
	     R4 = [BP + 1]            	// [0:1825]  i
	     cmp R4, 9                	// [2:1825]  
	     ja L_20_2                	// [3:1825]  
BB3_PU20:	// 0x4d4
// BB:3 cycle count: 18
//1826  	{
//1827  		 if (BitMap[i]&temp_Player) //Registered_Play_Status

LM174:
	     .stabn 68,0,1827,LM174-_Get_LedDate_From_Play
	     R4 = [BP + 1]            	// [0:1827]  i
	     R3 = 0                   	// [2:1827]  
	     R1 = (_BitMap)           	// [3:1827]  BitMap
	     R2 = seg(_BitMap)        	// [5:1827]  BitMap
	     R4 = R4 + R1             	// [6:1827]  
	     R3 = R3 + R2, Carry      	// [7:1827]  
	     DS = R3                  	// [8:1827]  
	     R4 = DS:[R4]             	// [9:1827]  
	     R4 = R4 & [BP + 5]       	// [11:1827]  temp_Player
	     cmp R4, 0                	// [13:1827]  
	     je L_20_3                	// [14:1827]  
BB4_PU20:	// 0x4e0
// BB:4 cycle count: 14
//1828  		    {
//1829  		     temp|=Led_Data_Play[i];

LM175:
	     .stabn 68,0,1829,LM175-_Get_LedDate_From_Play
	     R4 = [BP + 1]            	// [0:1829]  i
	     R3 = 0                   	// [2:1829]  
	     R1 = (_Led_Data_Play)    	// [3:1829]  Led_Data_Play
	     R2 = seg(_Led_Data_Play) 	// [5:1829]  Led_Data_Play
	     R4 = R4 + R1             	// [6:1829]  
	     R3 = R3 + R2, Carry      	// [7:1829]  
	     DS = R3                  	// [8:1829]  
	     R4 = DS:[R4]             	// [9:1829]  
	     R4 = R4 | [BP + 0]       	// [11:1829]  temp
	     [BP + 0] = R4            	// [13:1829]  temp
L_20_3:	// 0x4eb
// BB:5 cycle count: 8
//1830  		    }
//1831  		   i++;

LM176:
	     .stabn 68,0,1831,LM176-_Get_LedDate_From_Play
	     R4 = [BP + 1]            	// [0:1831]  i
	     R4 = R4 + 1              	// [2:1831]  
	     [BP + 1] = R4            	// [3:1831]  i
	     jmp L_20_1               	// [4:1831]  
L_20_2:	// 0x4ef
// BB:6 cycle count: 8
//1832  	}
//1833  	return temp;

LM177:
	     .stabn 68,0,1833,LM177-_Get_LedDate_From_Play
	     R1 = [BP + 0]            	// [0:1833]  temp
	     SP = SP + 2              	// [2:1833]  
	     pop BP, PC from [SP]     	// [3:1833]  
LBE20:
	.endp	
	     .stabs "temp_Player:p4",160,0,0,5
	     .stabn 192,0,0,LBB20-_Get_LedDate_From_Play
	     .stabs "temp:4",128,0,0,0
	     .stabs "i:4",128,0,0,1
	     .stabn 224,0,0,LBE20-_Get_LedDate_From_Play
LME21:
	     .stabf LME21-_Get_LedDate_From_Play
.code
	     .stabs "Get_Firstcnt_From_Play:F4",36,0,0,_Get_Firstcnt_From_Play

	// Program Unit: Get_Firstcnt_From_Play
.public	_Get_Firstcnt_From_Play
_Get_Firstcnt_From_Play: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//1836  
//1837  
//1838  
//1839  unsigned Get_Firstcnt_From_Play(unsigned temp_Player)
//1840  {

LM178:
	     .stabn 68,0,1840,LM178-_Get_Firstcnt_From_Play
BB1_PU21:	// 0x4f2
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:1840]  
	     SP = SP - 1              	// [2:1840]  
	     BP = SP + 1              	// [3:1840]  
LBB21:
//1841  	
//1842  	unsigned i = 0;

LM179:
	     .stabn 68,0,1842,LM179-_Get_Firstcnt_From_Play
	     R4 = 0                   	// [5:1842]  
	     [BP + 0] = R4            	// [6:1842]  i
L_21_5:	// 0x4f8
// BB:2 cycle count: 7
//1843  	while(i<C_Player_Num)//C_Player_Num <16

LM180:
	     .stabn 68,0,1843,LM180-_Get_Firstcnt_From_Play
	     R4 = [BP + 0]            	// [0:1843]  i
	     cmp R4, 9                	// [2:1843]  
	     ja L_21_6                	// [3:1843]  
BB3_PU21:	// 0x4fb
// BB:3 cycle count: 18
//1844  	{
//1845  		 if (BitMap[i]&temp_Player) //Registered_Play_Status

LM181:
	     .stabn 68,0,1845,LM181-_Get_Firstcnt_From_Play
	     R4 = [BP + 0]            	// [0:1845]  i
	     R3 = 0                   	// [2:1845]  
	     R1 = (_BitMap)           	// [3:1845]  BitMap
	     R2 = seg(_BitMap)        	// [5:1845]  BitMap
	     R4 = R4 + R1             	// [6:1845]  
	     R3 = R3 + R2, Carry      	// [7:1845]  
	     DS = R3                  	// [8:1845]  
	     R4 = DS:[R4]             	// [9:1845]  
	     R4 = R4 & [BP + 4]       	// [11:1845]  temp_Player
	     cmp R4, 0                	// [13:1845]  
	     je L_21_7                	// [14:1845]  
BB4_PU21:	// 0x507
// BB:4 cycle count: 8
//1846  		    {
//1847  		     return i;

LM182:
	     .stabn 68,0,1847,LM182-_Get_Firstcnt_From_Play
	     R1 = [BP + 0]            	// [0:1847]  i
	     SP = SP + 1              	// [2:1847]  
	     pop BP, PC from [SP]     	// [3:1847]  
L_21_7:	// 0x50a
// BB:5 cycle count: 8
//1848  		    }
//1849  		   i++;

LM183:
	     .stabn 68,0,1849,LM183-_Get_Firstcnt_From_Play
	     R4 = [BP + 0]            	// [0:1849]  i
	     R4 = R4 + 1              	// [2:1849]  
	     [BP + 0] = R4            	// [3:1849]  i
	     jmp L_21_5               	// [4:1849]  
L_21_6:	// 0x50e
// BB:6 cycle count: 3
//1850  	}
//1851  	return Go_Rest();

LM184:
	     .stabn 68,0,1851,LM184-_Get_Firstcnt_From_Play
	     call _Go_Rest            	// [0:1851]  Go_Rest
BB7_PU21:	// 0x510
// BB:7 cycle count: 6
	     SP = SP + 1              	// [0:1851]  
	     pop BP, PC from [SP]     	// [1:1851]  
LBE21:
	.endp	
	     .stabs "temp_Player:p4",160,0,0,4
	     .stabn 192,0,0,LBB21-_Get_Firstcnt_From_Play
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE21-_Get_Firstcnt_From_Play
LME22:
	     .stabf LME22-_Get_Firstcnt_From_Play
.code
	     .stabs "Get_FirstBit_From_Play:F4",36,0,0,_Get_FirstBit_From_Play

	// Program Unit: Get_FirstBit_From_Play
.public	_Get_FirstBit_From_Play
_Get_FirstBit_From_Play: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//1853  }
//1854  
//1855  
//1856  unsigned Get_FirstBit_From_Play(unsigned temp_Player)
//1857  {

LM185:
	     .stabn 68,0,1857,LM185-_Get_FirstBit_From_Play
BB1_PU22:	// 0x512
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:1857]  
	     SP = SP - 1              	// [2:1857]  
	     BP = SP + 1              	// [3:1857]  
LBB22:
//1858  	
//1859  	unsigned i = 0;

LM186:
	     .stabn 68,0,1859,LM186-_Get_FirstBit_From_Play
	     R4 = 0                   	// [5:1859]  
	     [BP + 0] = R4            	// [6:1859]  i
L_22_5:	// 0x518
// BB:2 cycle count: 7
//1860  	while(i<C_Player_Num)//C_Player_Num <16

LM187:
	     .stabn 68,0,1860,LM187-_Get_FirstBit_From_Play
	     R4 = [BP + 0]            	// [0:1860]  i
	     cmp R4, 9                	// [2:1860]  
	     ja L_22_6                	// [3:1860]  
BB3_PU22:	// 0x51b
// BB:3 cycle count: 18
//1861  	{
//1862  		 if (BitMap[i]&temp_Player) //Registered_Play_Status

LM188:
	     .stabn 68,0,1862,LM188-_Get_FirstBit_From_Play
	     R4 = [BP + 0]            	// [0:1862]  i
	     R3 = 0                   	// [2:1862]  
	     R1 = (_BitMap)           	// [3:1862]  BitMap
	     R2 = seg(_BitMap)        	// [5:1862]  BitMap
	     R4 = R4 + R1             	// [6:1862]  
	     R3 = R3 + R2, Carry      	// [7:1862]  
	     DS = R3                  	// [8:1862]  
	     R4 = DS:[R4]             	// [9:1862]  
	     R4 = R4 & [BP + 4]       	// [11:1862]  temp_Player
	     cmp R4, 0                	// [13:1862]  
	     je L_22_7                	// [14:1862]  
BB4_PU22:	// 0x527
// BB:4 cycle count: 17
//1863  		    {
//1864  		    // Player_Activing_Cnt =i;	
//1865  		     return BitMap[i];

LM189:
	     .stabn 68,0,1865,LM189-_Get_FirstBit_From_Play
	     R4 = [BP + 0]            	// [0:1865]  i
	     R3 = 0                   	// [2:1865]  
	     R1 = (_BitMap)           	// [3:1865]  BitMap
	     R2 = seg(_BitMap)        	// [5:1865]  BitMap
	     R4 = R4 + R1             	// [6:1865]  
	     R3 = R3 + R2, Carry      	// [7:1865]  
	     DS = R3                  	// [8:1865]  
	     R1 = DS:[R4]             	// [9:1865]  
	     SP = SP + 1              	// [11:1865]  
	     pop BP, PC from [SP]     	// [12:1865]  
L_22_7:	// 0x532
// BB:5 cycle count: 8
//1866  		     
//1867  		    }
//1868  		   i++;

LM190:
	     .stabn 68,0,1868,LM190-_Get_FirstBit_From_Play
	     R4 = [BP + 0]            	// [0:1868]  i
	     R4 = R4 + 1              	// [2:1868]  
	     [BP + 0] = R4            	// [3:1868]  i
	     jmp L_22_5               	// [4:1868]  
L_22_6:	// 0x536
// BB:6 cycle count: 3
//1869  	}
//1870  	return Go_Rest();

LM191:
	     .stabn 68,0,1870,LM191-_Get_FirstBit_From_Play
	     call _Go_Rest            	// [0:1870]  Go_Rest
BB7_PU22:	// 0x538
// BB:7 cycle count: 6
	     SP = SP + 1              	// [0:1870]  
	     pop BP, PC from [SP]     	// [1:1870]  
LBE22:
	.endp	
	     .stabs "temp_Player:p4",160,0,0,4
	     .stabn 192,0,0,LBB22-_Get_FirstBit_From_Play
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE22-_Get_FirstBit_From_Play
LME23:
	     .stabf LME23-_Get_FirstBit_From_Play
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
//1876  
//1877  /*************************************************************
//1878  *************************************************************/
//1879  unsigned  Select_Registered_Player_Random(unsigned int Index,unsigned register_status)
//1880  {

LM192:
	     .stabn 68,0,1880,LM192-_Select_Registered_Player_Random
BB1_PU23:	// 0x53a
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1880]  
	     SP = SP - 3              	// [2:1880]  
	     BP = SP + 1              	// [3:1880]  
LBB23:
//1881    	unsigned i= 0;

LM193:
	     .stabn 68,0,1881,LM193-_Select_Registered_Player_Random
	     R4 = 0                   	// [5:1881]  
	     [BP + 0] = R4            	// [6:1881]  i
//1882  	unsigned j= 0;

LM194:
	     .stabn 68,0,1882,LM194-_Select_Registered_Player_Random
	     R4 = 0                   	// [7:1882]  
	     [BP + 1] = R4            	// [8:1882]  j
L_23_1:	// 0x542
// BB:2 cycle count: 7
//1883  	unsigned temp;
//1884  
//1885  	while(i<C_Player_Num)//C_Player_Num <16

LM195:
	     .stabn 68,0,1885,LM195-_Select_Registered_Player_Random
	     R4 = [BP + 0]            	// [0:1885]  i
	     cmp R4, 9                	// [2:1885]  
	     ja L_23_2                	// [3:1885]  
BB3_PU23:	// 0x545
// BB:3 cycle count: 21
//1886  	{
//1887  		 temp = BitMap[i]&register_status;//Registered_Play_Status;

LM196:
	     .stabn 68,0,1887,LM196-_Select_Registered_Player_Random
	     R4 = [BP + 0]            	// [0:1887]  i
	     R3 = 0                   	// [2:1887]  
	     R1 = (_BitMap)           	// [3:1887]  BitMap
	     R2 = seg(_BitMap)        	// [5:1887]  BitMap
	     R4 = R4 + R1             	// [6:1887]  
	     R3 = R3 + R2, Carry      	// [7:1887]  
	     DS = R3                  	// [8:1887]  
	     R4 = DS:[R4]             	// [9:1887]  
	     R4 = R4 & [BP + 7]       	// [11:1887]  register_status
	     [BP + 2] = R4            	// [13:1887]  temp
//1888  		 if (temp)

LM197:
	     .stabn 68,0,1888,LM197-_Select_Registered_Player_Random
	     R4 = [BP + 2]            	// [14:1888]  temp
	     cmp R4, 0                	// [16:1888]  
	     je L_23_3                	// [17:1888]  
BB4_PU23:	// 0x553
// BB:4 cycle count: 9
//1889  		 {
//1890  		 	if (j == Index) 

LM198:
	     .stabn 68,0,1890,LM198-_Select_Registered_Player_Random
	     R3 = [BP + 6]            	// [0:1890]  Index
	     R4 = [BP + 1]            	// [2:1890]  j
	     cmp R3, R4               	// [4:1890]  
	     jne L_23_4               	// [5:1890]  
BB5_PU23:	// 0x557
// BB:5 cycle count: 8
//1891  		 	   {
//1892  		 	   	//Player_Activing_Cnt = i;
//1893  		 	    return i;//BitMap[i];//i;

LM199:
	     .stabn 68,0,1893,LM199-_Select_Registered_Player_Random
	     R1 = [BP + 0]            	// [0:1893]  i
	     SP = SP + 3              	// [2:1893]  
	     pop BP, PC from [SP]     	// [3:1893]  
L_23_4:	// 0x55a
// BB:6 cycle count: 4
//1894  		 	    
//1895  		 	   }
//1896  		 	    j++;

LM200:
	     .stabn 68,0,1896,LM200-_Select_Registered_Player_Random
	     R4 = [BP + 1]            	// [0:1896]  j
	     R4 = R4 + 1              	// [2:1896]  
	     [BP + 1] = R4            	// [3:1896]  j
L_23_3:	// 0x55d
// BB:7 cycle count: 8
//1897  		 }
//1898  		 i++;

LM201:
	     .stabn 68,0,1898,LM201-_Select_Registered_Player_Random
	     R4 = [BP + 0]            	// [0:1898]  i
	     R4 = R4 + 1              	// [2:1898]  
	     [BP + 0] = R4            	// [3:1898]  i
	     jmp L_23_1               	// [4:1898]  
L_23_2:	// 0x561
// BB:8 cycle count: 7
//1899  	}
//1900  	return 0xffff;

LM202:
	     .stabn 68,0,1900,LM202-_Select_Registered_Player_Random
	     R1 = - 1                 	// [0:1900]  
	     SP = SP + 3              	// [1:1900]  
	     pop BP, PC from [SP]     	// [2:1900]  
LBE23:
	.endp	
	     .stabs "Index:p4",160,0,0,6
	     .stabs "register_status:p4",160,0,0,7
	     .stabn 192,0,0,LBB23-_Select_Registered_Player_Random
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabs "temp:4",128,0,0,2
	     .stabn 224,0,0,LBE23-_Select_Registered_Player_Random
LME24:
	     .stabf LME24-_Select_Registered_Player_Random
.code
	     .stabs "Save_Question_CategoryMemory:F18",36,0,0,_Save_Question_CategoryMemory

	// Program Unit: Save_Question_CategoryMemory
.public	_Save_Question_CategoryMemory
_Save_Question_CategoryMemory: .proc	
	     .stabn 0xa6,0,0,2
	// i = 0
	// old_frame_pointer = 2
	// return_address = 3
	// lra_spill_temp_14 = 1
//1953  
//1954  /*****************************************************
//1955  ******************************************************/
//1956  void Save_Question_CategoryMemory()
//1957  {

LM203:
	     .stabn 68,0,1957,LM203-_Save_Question_CategoryMemory
BB1_PU24:	// 0x564
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:1957]  
	     SP = SP - 2              	// [2:1957]  
	     BP = SP + 1              	// [3:1957]  
LBB24:
//1958     
//1959     unsigned int i;
//1960  
//1961     for(i=0;i<C_RoundNum;i++)

LM204:
	     .stabn 68,0,1961,LM204-_Save_Question_CategoryMemory
	     R4 = 0                   	// [5:1961]  
	     [BP + 0] = R4            	// [6:1961]  i
L_24_7:	// 0x56a
// BB:2 cycle count: 8
	     R4 = [BP + 0]            	// [0:1961]  i
	     cmp R4, 99               	// [2:1961]  
	     ja L_24_8                	// [4:1961]  
BB3_PU24:	// 0x56e
// BB:3 cycle count: 16
//1962     	{
//1963  	 if(LastCategory_Series[i] == 0)

LM205:
	     .stabn 68,0,1963,LM205-_Save_Question_CategoryMemory
	     R4 = [BP + 0]            	// [0:1963]  i
	     R3 = 0                   	// [2:1963]  
	     R1 = (_LastCategory_Series)	// [3:1963]  LastCategory_Series
	     R2 = seg(_LastCategory_Series)	// [5:1963]  LastCategory_Series
	     R4 = R4 + R1             	// [6:1963]  
	     R3 = R3 + R2, Carry      	// [7:1963]  
	     DS = R3                  	// [8:1963]  
	     R4 = DS:[R4]             	// [9:1963]  
	     cmp R4, 0                	// [11:1963]  
	     jne L_24_9               	// [12:1963]  
BB4_PU24:	// 0x579
// BB:4 cycle count: 13
//1964  	 {
//1965  	     LastCategory_Series[i]=Get_Question_Category(gQuestionIdx);

LM206:
	     .stabn 68,0,1965,LM206-_Save_Question_CategoryMemory
	     SP = SP - 1              	// [0:1965]  
	     DS = seg(_gQuestionIdx)  	// [1:1965]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [2:1965]  gQuestionIdx
	     R3 = DS:[R4]             	// [4:1965]  
	     R4 = SP + 1              	// [6:1965]  
	     [R4] = R3                	// [8:1965]  
	     call _Get_Question_Category	// [10:1965]  Get_Question_Category
BB5_PU24:	// 0x583
// BB:5 cycle count: 19
	     SP = SP + 1              	// [0:1965]  
	     [BP + 1] = R1            	// [1:1965]  lra_spill_temp_14
	     R4 = [BP + 0]            	// [2:1965]  i
	     R3 = 0                   	// [4:1965]  
	     R1 = (_LastCategory_Series)	// [5:1965]  LastCategory_Series
	     R2 = seg(_LastCategory_Series)	// [7:1965]  LastCategory_Series
	     R4 = R4 + R1             	// [8:1965]  
	     R3 = R3 + R2, Carry      	// [9:1965]  
	     DS = R3                  	// [10:1965]  
	     R3 = [BP + 1]            	// [11:1965]  lra_spill_temp_14
	     DS:[R4] = R3             	// [13:1965]  
//1966  	     break;

LM207:
	     .stabn 68,0,1966,LM207-_Save_Question_CategoryMemory
	     jmp Lt_24_2              	// [15:1966]  
L_24_9:	// 0x590
Lt_24_1:	// 0x590
// BB:6 cycle count: 8

LM208:
	     .stabn 68,0,1961,LM208-_Save_Question_CategoryMemory
	     R4 = [BP + 0]            	// [0:1961]  i
	     R4 = R4 + 1              	// [2:1961]  
	     [BP + 0] = R4            	// [3:1961]  i
	     jmp L_24_7               	// [4:1961]  
L_24_8:	// 0x594
Lt_24_2:	// 0x594
// BB:7 cycle count: 6
	     SP = SP + 2              	// [0:1961]  
	     pop BP, PC from [SP]     	// [1:1961]  
LBE24:
	.endp	
	     .stabn 192,0,0,LBB24-_Save_Question_CategoryMemory
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE24-_Save_Question_CategoryMemory
LME25:
	     .stabf LME25-_Save_Question_CategoryMemory
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
//1973  
//1974  /*****************************************************
//1975  ******************************************************/
//1976  unsigned int  Get_Num_CategoryMemory()
//1977  {

LM209:
	     .stabn 68,0,1977,LM209-_Get_Num_CategoryMemory
BB1_PU25:	// 0x596
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:1977]  
	     SP = SP - 2              	// [2:1977]  
	     BP = SP + 1              	// [3:1977]  
LBB25:
//1978     
//1979     unsigned int i;
//1980     unsigned int temp=0;

LM210:
	     .stabn 68,0,1980,LM210-_Get_Num_CategoryMemory
	     R4 = 0                   	// [5:1980]  
	     [BP + 0] = R4            	// [6:1980]  temp
//1981  
//1982     for(i=0;i<C_RoundNum;i++)

LM211:
	     .stabn 68,0,1982,LM211-_Get_Num_CategoryMemory
	     R4 = 0                   	// [7:1982]  
	     [BP + 1] = R4            	// [8:1982]  i
L_25_2:	// 0x59e
// BB:2 cycle count: 8
	     R4 = [BP + 1]            	// [0:1982]  i
	     cmp R4, 99               	// [2:1982]  
	     ja L_25_3                	// [4:1982]  
BB3_PU25:	// 0x5a2
// BB:3 cycle count: 16
//1983     	{
//1984  	  if(LastCategory_Series[i] != 0)

LM212:
	     .stabn 68,0,1984,LM212-_Get_Num_CategoryMemory
	     R4 = [BP + 1]            	// [0:1984]  i
	     R3 = 0                   	// [2:1984]  
	     R1 = (_LastCategory_Series)	// [3:1984]  LastCategory_Series
	     R2 = seg(_LastCategory_Series)	// [5:1984]  LastCategory_Series
	     R4 = R4 + R1             	// [6:1984]  
	     R3 = R3 + R2, Carry      	// [7:1984]  
	     DS = R3                  	// [8:1984]  
	     R4 = DS:[R4]             	// [9:1984]  
	     cmp R4, 0                	// [11:1984]  
	     je L_25_4                	// [12:1984]  
BB4_PU25:	// 0x5ad
// BB:4 cycle count: 4
//1985  	   {
//1986  	     temp++; 

LM213:
	     .stabn 68,0,1986,LM213-_Get_Num_CategoryMemory
	     R4 = [BP + 0]            	// [0:1986]  temp
	     R4 = R4 + 1              	// [2:1986]  
	     [BP + 0] = R4            	// [3:1986]  temp
L_25_4:	// 0x5b0
Lt_25_1:	// 0x5b0
// BB:5 cycle count: 8

LM214:
	     .stabn 68,0,1982,LM214-_Get_Num_CategoryMemory
	     R4 = [BP + 1]            	// [0:1982]  i
	     R4 = R4 + 1              	// [2:1982]  
	     [BP + 1] = R4            	// [3:1982]  i
	     jmp L_25_2               	// [4:1982]  
L_25_3:	// 0x5b4
// BB:6 cycle count: 8
//1987  	   }
//1988  
//1989     	}
//1990  	return 	temp;

LM215:
	     .stabn 68,0,1990,LM215-_Get_Num_CategoryMemory
	     R1 = [BP + 0]            	// [0:1990]  temp
	     SP = SP + 2              	// [2:1990]  
	     pop BP, PC from [SP]     	// [3:1990]  
LBE25:
	.endp	
	     .stabn 192,0,0,LBB25-_Get_Num_CategoryMemory
	     .stabs "i:4",128,0,0,1
	     .stabs "temp:4",128,0,0,0
	     .stabn 224,0,0,LBE25-_Get_Num_CategoryMemory
LME26:
	     .stabf LME26-_Get_Num_CategoryMemory
.code
	     .stabs "Save_Question_Cycle:F18",36,0,0,_Save_Question_Cycle

	// Program Unit: Save_Question_Cycle
.public	_Save_Question_Cycle
_Save_Question_Cycle: .proc	
	     .stabn 0xa6,0,0,2
	// i = 0
	// old_frame_pointer = 2
	// return_address = 3
	// lra_spill_temp_15 = 1
//2179  
//2180  /*****************************************************
//2181  ******************************************************/
//2182  void Save_Question_Cycle(unsigned int temp)
//2183  {

LM216:
	     .stabn 68,0,2183,LM216-_Save_Question_Cycle
BB1_PU26:	// 0x5b7
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:2183]  
	     SP = SP - 2              	// [2:2183]  
	     BP = SP + 1              	// [3:2183]  
LBB26:
//2184     unsigned int i;
//2185  
//2186     for(i=0;i<3;i++)

LM217:
	     .stabn 68,0,2186,LM217-_Save_Question_Cycle
	     R4 = 0                   	// [5:2186]  
	     [BP + 0] = R4            	// [6:2186]  i
L_26_2:	// 0x5bd
// BB:2 cycle count: 7
	     R4 = [BP + 0]            	// [0:2186]  i
	     cmp R4, 2                	// [2:2186]  
	     ja L_26_3                	// [3:2186]  
BB3_PU26:	// 0x5c0
// BB:3 cycle count: 26
//2187     	{
//2188        QuestionCycle[i] = QuestionCycle[i+1];

LM218:
	     .stabn 68,0,2188,LM218-_Save_Question_Cycle
	     R4 = [BP + 0]            	// [0:2188]  i
	     R4 = R4 + 1              	// [2:2188]  
	     R3 = 0                   	// [3:2188]  
	     R1 = (_QuestionCycle)    	// [4:2188]  QuestionCycle
	     R2 = seg(_QuestionCycle) 	// [6:2188]  QuestionCycle
	     R4 = R4 + R1             	// [7:2188]  
	     R3 = R3 + R2, Carry      	// [8:2188]  
	     DS = R3                  	// [9:2188]  
	     R4 = DS:[R4]             	// [10:2188]  
	     [BP + 1] = R4            	// [12:2188]  lra_spill_temp_15
	     R4 = [BP + 0]            	// [13:2188]  i
	     R3 = 0                   	// [15:2188]  
	     R1 = (_QuestionCycle)    	// [16:2188]  QuestionCycle
	     R2 = seg(_QuestionCycle) 	// [18:2188]  QuestionCycle
	     R4 = R4 + R1             	// [19:2188]  
	     R3 = R3 + R2, Carry      	// [20:2188]  
	     DS = R3                  	// [21:2188]  
	     R3 = [BP + 1]            	// [22:2188]  lra_spill_temp_15
	     DS:[R4] = R3             	// [24:2188]  
Lt_26_1:	// 0x5d5
// BB:4 cycle count: 8

LM219:
	     .stabn 68,0,2186,LM219-_Save_Question_Cycle
	     R4 = [BP + 0]            	// [0:2186]  i
	     R4 = R4 + 1              	// [2:2186]  
	     [BP + 0] = R4            	// [3:2186]  i
	     jmp L_26_2               	// [4:2186]  
L_26_3:	// 0x5d9
// BB:5 cycle count: 13
//2189     	}
//2190     
//2191     QuestionCycle[3] = temp;

LM220:
	     .stabn 68,0,2191,LM220-_Save_Question_Cycle
	     R3 = [BP + 5]            	// [0:2191]  temp
	     DS = seg(_QuestionCycle+3)	// [2:2191]  QuestionCycle+3
	     R4 = (_QuestionCycle+3)  	// [3:2191]  QuestionCycle+3
	     DS:[R4] = R3             	// [5:2191]  
	     SP = SP + 2              	// [7:2191]  
	     pop BP, PC from [SP]     	// [8:2191]  
LBE26:
	.endp	
	     .stabs "temp:p4",160,0,0,5
	     .stabn 192,0,0,LBB26-_Save_Question_Cycle
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE26-_Save_Question_Cycle
LME27:
	     .stabf LME27-_Save_Question_Cycle
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
//3080  
//3081  /*****************************************************
//3082  *******************************************************/
//3083  unsigned int Get_Num_Bigscore( int *roundsORpoint,  int score,unsigned int Play_status )//unsigned int* BitTable
//3084  {

LM221:
	     .stabn 68,0,3084,LM221-_Get_Num_Bigscore
BB1_PU27:	// 0x5e0
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:3084]  
	     SP = SP - 2              	// [2:3084]  
	     BP = SP + 1              	// [3:3084]  
LBB27:
//3085  	unsigned i = 0;

LM222:
	     .stabn 68,0,3085,LM222-_Get_Num_Bigscore
	     R4 = 0                   	// [5:3085]  
	     [BP + 0] = R4            	// [6:3085]  i
//3086  	unsigned j = 0;

LM223:
	     .stabn 68,0,3086,LM223-_Get_Num_Bigscore
	     R4 = 0                   	// [7:3086]  
	     [BP + 1] = R4            	// [8:3086]  j
L_27_1:	// 0x5e8
// BB:2 cycle count: 7
//3087  
//3088  	
//3089      while(i<C_Player_Num)

LM224:
	     .stabn 68,0,3089,LM224-_Get_Num_Bigscore
	     R4 = [BP + 0]            	// [0:3089]  i
	     cmp R4, 9                	// [2:3089]  
	     ja L_27_2                	// [3:3089]  
BB3_PU27:	// 0x5eb
// BB:3 cycle count: 18
//3090      	{
//3091           	 if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM225:
	     .stabn 68,0,3091,LM225-_Get_Num_Bigscore
	     R4 = [BP + 0]            	// [0:3091]  i
	     R3 = 0                   	// [2:3091]  
	     R1 = (_BitMap)           	// [3:3091]  BitMap
	     R2 = seg(_BitMap)        	// [5:3091]  BitMap
	     R4 = R4 + R1             	// [6:3091]  
	     R3 = R3 + R2, Carry      	// [7:3091]  
	     DS = R3                  	// [8:3091]  
	     R4 = DS:[R4]             	// [9:3091]  
	     R4 = R4 & [BP + 8]       	// [11:3091]  Play_status
	     cmp R4, 0                	// [13:3091]  
	     je L_27_3                	// [14:3091]  
BB4_PU27:	// 0x5f7
// BB:4 cycle count: 17
//3092  	    	  {
//3093  			   if(roundsORpoint[i]>=score)

LM226:
	     .stabn 68,0,3093,LM226-_Get_Num_Bigscore
	     R3 = [BP + 0]            	// [0:3093]  i
	     R4 = 0                   	// [2:3093]  
	     R3 = R3 + [BP + 5]       	// [3:3093]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3093]  roundsORpoint+1
	     DS = R4                  	// [7:3093]  
	     R3 = DS:[R3]             	// [8:3093]  
	     R4 = [BP + 7]            	// [10:3093]  score
	     cmp R3, R4               	// [12:3093]  
	     jl L_27_4                	// [13:3093]  
BB5_PU27:	// 0x600
// BB:5 cycle count: 4
//3094  			   {
//3095  				  j++;

LM227:
	     .stabn 68,0,3095,LM227-_Get_Num_Bigscore
	     R4 = [BP + 1]            	// [0:3095]  j
	     R4 = R4 + 1              	// [2:3095]  
	     [BP + 1] = R4            	// [3:3095]  j
L_27_4:	// 0x603
L_27_3:	// 0x603
// BB:6 cycle count: 8
//3096  			   }
//3097  	    	}
//3098  	       i++;

LM228:
	     .stabn 68,0,3098,LM228-_Get_Num_Bigscore
	     R4 = [BP + 0]            	// [0:3098]  i
	     R4 = R4 + 1              	// [2:3098]  
	     [BP + 0] = R4            	// [3:3098]  i
	     jmp L_27_1               	// [4:3098]  
L_27_2:	// 0x607
// BB:7 cycle count: 8
//3099  
//3100      	}
//3101  
//3102      return j;

LM229:
	     .stabn 68,0,3102,LM229-_Get_Num_Bigscore
	     R1 = [BP + 1]            	// [0:3102]  j
	     SP = SP + 2              	// [2:3102]  
	     pop BP, PC from [SP]     	// [3:3102]  
LBE27:
	.endp	
	     .stabs "roundsORpoint:p29=*1",160,0,0,5
	     .stabs "score:p1",160,0,0,7
	     .stabs "Play_status:p4",160,0,0,8
	     .stabn 192,0,0,LBB27-_Get_Num_Bigscore
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabn 224,0,0,LBE27-_Get_Num_Bigscore
LME28:
	     .stabf LME28-_Get_Num_Bigscore
.code
	     .stabs "Get_All_SameNum:F4",36,0,0,_Get_All_SameNum

	// Program Unit: Get_All_SameNum
.public	_Get_All_SameNum
_Get_All_SameNum: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//3106  
//3107  /*****************************************************
//3108  *******************************************************/
//3109  unsigned int Get_All_SameNum( int *roundsORpoint,  int score,unsigned int Play_status )//unsigned int* BitTable
//3110  {

LM230:
	     .stabn 68,0,3110,LM230-_Get_All_SameNum
BB1_PU28:	// 0x60a
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:3110]  
	     SP = SP - 1              	// [2:3110]  
	     BP = SP + 1              	// [3:3110]  
LBB28:
//3111  	unsigned i = 0;

LM231:
	     .stabn 68,0,3111,LM231-_Get_All_SameNum
	     R4 = 0                   	// [5:3111]  
	     [BP + 0] = R4            	// [6:3111]  i
L_28_1:	// 0x610
// BB:2 cycle count: 7
//3112  
//3113  
//3114      while(i<C_Player_Num)

LM232:
	     .stabn 68,0,3114,LM232-_Get_All_SameNum
	     R4 = [BP + 0]            	// [0:3114]  i
	     cmp R4, 9                	// [2:3114]  
	     ja L_28_2                	// [3:3114]  
BB3_PU28:	// 0x613
// BB:3 cycle count: 18
//3115      	{
//3116           	 if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM233:
	     .stabn 68,0,3116,LM233-_Get_All_SameNum
	     R4 = [BP + 0]            	// [0:3116]  i
	     R3 = 0                   	// [2:3116]  
	     R1 = (_BitMap)           	// [3:3116]  BitMap
	     R2 = seg(_BitMap)        	// [5:3116]  BitMap
	     R4 = R4 + R1             	// [6:3116]  
	     R3 = R3 + R2, Carry      	// [7:3116]  
	     DS = R3                  	// [8:3116]  
	     R4 = DS:[R4]             	// [9:3116]  
	     R4 = R4 & [BP + 7]       	// [11:3116]  Play_status
	     cmp R4, 0                	// [13:3116]  
	     je L_28_3                	// [14:3116]  
BB4_PU28:	// 0x61f
// BB:4 cycle count: 17
//3117  	    	  {
//3118  			   if(roundsORpoint[i]==score)

LM234:
	     .stabn 68,0,3118,LM234-_Get_All_SameNum
	     R3 = [BP + 0]            	// [0:3118]  i
	     R4 = 0                   	// [2:3118]  
	     R3 = R3 + [BP + 4]       	// [3:3118]  roundsORpoint
	     R4 = R4 + [BP + 5], Carry	// [5:3118]  roundsORpoint+1
	     DS = R4                  	// [7:3118]  
	     R3 = DS:[R3]             	// [8:3118]  
	     R4 = [BP + 6]            	// [10:3118]  score
	     cmp R3, R4               	// [12:3118]  
	     je L_28_4                	// [13:3118]  
BB5_PU28:	// 0x628
// BB:5 cycle count: 7
//3119  			   {
//3120  				  
//3121  			   }
//3122  			   else 
//3123  			      return 0; 

LM235:
	     .stabn 68,0,3123,LM235-_Get_All_SameNum
	     R1 = 0                   	// [0:3123]  
	     SP = SP + 1              	// [1:3123]  
	     pop BP, PC from [SP]     	// [2:3123]  
L_28_4:	// 0x62b
L_28_3:	// 0x62b
// BB:6 cycle count: 8
//3124  			   
//3125  	    	}
//3126  	       i++;

LM236:
	     .stabn 68,0,3126,LM236-_Get_All_SameNum
	     R4 = [BP + 0]            	// [0:3126]  i
	     R4 = R4 + 1              	// [2:3126]  
	     [BP + 0] = R4            	// [3:3126]  i
	     jmp L_28_1               	// [4:3126]  
L_28_2:	// 0x62f
// BB:7 cycle count: 7
//3127  
//3128      	}
//3129  
//3130      return 1;

LM237:
	     .stabn 68,0,3130,LM237-_Get_All_SameNum
	     R1 = 1                   	// [0:3130]  
	     SP = SP + 1              	// [1:3130]  
	     pop BP, PC from [SP]     	// [2:3130]  
LBE28:
	.endp	
	     .stabs "roundsORpoint:p29",160,0,0,4
	     .stabs "score:p1",160,0,0,6
	     .stabs "Play_status:p4",160,0,0,7
	     .stabn 192,0,0,LBB28-_Get_All_SameNum
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE28-_Get_All_SameNum
LME29:
	     .stabf LME29-_Get_All_SameNum
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
//3133  
//3134  /*****************************************************
//3135  *******************************************************/
//3136  unsigned int Get_Num_Higgest_score( int *roundsORpoint, unsigned int Play_status )//unsigned int* BitTable
//3137  {

LM238:
	     .stabn 68,0,3137,LM238-_Get_Num_Higgest_score
BB1_PU29:	// 0x632
// BB:1 cycle count: 22
	     push BP to [SP]          	// [0:3137]  
	     SP = SP - 2              	// [2:3137]  
	     BP = SP + 1              	// [3:3137]  
LBB29:
//3138  	unsigned i = 0;

LM239:
	     .stabn 68,0,3138,LM239-_Get_Num_Higgest_score
	     R4 = 0                   	// [5:3138]  
	     [BP + 0] = R4            	// [6:3138]  i
//3139  	unsigned j = 0;

LM240:
	     .stabn 68,0,3139,LM240-_Get_Num_Higgest_score
	     R4 = 0                   	// [7:3139]  
	     [BP + 1] = R4            	// [8:3139]  j
//3140  
//3141       Higgest_T =0x8000;

LM241:
	     .stabn 68,0,3141,LM241-_Get_Num_Higgest_score
	     R3 = - 32768             	// [9:3141]  
	     DS = seg(_Higgest_T)     	// [11:3141]  Higgest_T
	     R4 = (_Higgest_T)        	// [12:3141]  Higgest_T
	     DS:[R4] = R3             	// [14:3141]  
//3142  
//3143  	Leader_Player =0;

LM242:
	     .stabn 68,0,3143,LM242-_Get_Num_Higgest_score
	     R3 = 0                   	// [16:3143]  
	     DS = seg(_Leader_Player) 	// [17:3143]  Leader_Player
	     R4 = (_Leader_Player)    	// [18:3143]  Leader_Player
	     DS:[R4] = R3             	// [20:3143]  
L_29_1:	// 0x645
// BB:2 cycle count: 7
//3144  	
//3145  	while(i<C_Player_Num)

LM243:
	     .stabn 68,0,3145,LM243-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3145]  i
	     cmp R4, 9                	// [2:3145]  
	     ja L_29_2                	// [3:3145]  
BB3_PU29:	// 0x648
// BB:3 cycle count: 18
//3146  	{
//3147  	    if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM244:
	     .stabn 68,0,3147,LM244-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3147]  i
	     R3 = 0                   	// [2:3147]  
	     R1 = (_BitMap)           	// [3:3147]  BitMap
	     R2 = seg(_BitMap)        	// [5:3147]  BitMap
	     R4 = R4 + R1             	// [6:3147]  
	     R3 = R3 + R2, Carry      	// [7:3147]  
	     DS = R3                  	// [8:3147]  
	     R4 = DS:[R4]             	// [9:3147]  
	     R4 = R4 & [BP + 7]       	// [11:3147]  Play_status
	     cmp R4, 0                	// [13:3147]  
	     je L_29_3                	// [14:3147]  
BB4_PU29:	// 0x654
// BB:4 cycle count: 20
//3148  	    	{
//3149  			   if(roundsORpoint[i]>Higgest_T)

LM245:
	     .stabn 68,0,3149,LM245-_Get_Num_Higgest_score
	     R3 = [BP + 0]            	// [0:3149]  i
	     R4 = 0                   	// [2:3149]  
	     R3 = R3 + [BP + 5]       	// [3:3149]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3149]  roundsORpoint+1
	     DS = R4                  	// [7:3149]  
	     R3 = DS:[R3]             	// [8:3149]  
	     DS = seg(_Higgest_T)     	// [10:3149]  Higgest_T
	     R4 = (_Higgest_T)        	// [11:3149]  Higgest_T
	     R4 = DS:[R4]             	// [13:3149]  
	     cmp R3, R4               	// [15:3149]  
	     jle L_29_4               	// [16:3149]  
BB5_PU29:	// 0x660
// BB:5 cycle count: 15
//3150  			   {
//3151  			   	  Higgest_T = roundsORpoint[i];

LM246:
	     .stabn 68,0,3151,LM246-_Get_Num_Higgest_score
	     R3 = [BP + 0]            	// [0:3151]  i
	     R4 = 0                   	// [2:3151]  
	     R3 = R3 + [BP + 5]       	// [3:3151]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3151]  roundsORpoint+1
	     DS = R4                  	// [7:3151]  
	     R3 = DS:[R3]             	// [8:3151]  
	     DS = seg(_Higgest_T)     	// [10:3151]  Higgest_T
	     R4 = (_Higgest_T)        	// [11:3151]  Higgest_T
	     DS:[R4] = R3             	// [13:3151]  
L_29_4:	// 0x66a
L_29_3:	// 0x66a
// BB:6 cycle count: 8
//3152  				 // j = i;
//3153  			   }
//3154  	    	}
//3155  	   
//3156  	   i++;

LM247:
	     .stabn 68,0,3156,LM247-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3156]  i
	     R4 = R4 + 1              	// [2:3156]  
	     [BP + 0] = R4            	// [3:3156]  i
	     jmp L_29_1               	// [4:3156]  
L_29_2:	// 0x66e
// BB:7 cycle count: 2
//3157  	}
//3158  
//3159      i=0;

LM248:
	     .stabn 68,0,3159,LM248-_Get_Num_Higgest_score
	     R4 = 0                   	// [0:3159]  
	     [BP + 0] = R4            	// [1:3159]  i
L_29_5:	// 0x670
// BB:8 cycle count: 7
//3160      while(i<C_Player_Num)

LM249:
	     .stabn 68,0,3160,LM249-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3160]  i
	     cmp R4, 9                	// [2:3160]  
	     ja L_29_6                	// [3:3160]  
BB9_PU29:	// 0x673
// BB:9 cycle count: 18
//3161      	{
//3162           	 if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM250:
	     .stabn 68,0,3162,LM250-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3162]  i
	     R3 = 0                   	// [2:3162]  
	     R1 = (_BitMap)           	// [3:3162]  BitMap
	     R2 = seg(_BitMap)        	// [5:3162]  BitMap
	     R4 = R4 + R1             	// [6:3162]  
	     R3 = R3 + R2, Carry      	// [7:3162]  
	     DS = R3                  	// [8:3162]  
	     R4 = DS:[R4]             	// [9:3162]  
	     R4 = R4 & [BP + 7]       	// [11:3162]  Play_status
	     cmp R4, 0                	// [13:3162]  
	     je L_29_7                	// [14:3162]  
BB10_PU29:	// 0x67f
// BB:10 cycle count: 20
//3163  	    	  {
//3164  			   if(roundsORpoint[i]>=Higgest_T)

LM251:
	     .stabn 68,0,3164,LM251-_Get_Num_Higgest_score
	     R3 = [BP + 0]            	// [0:3164]  i
	     R4 = 0                   	// [2:3164]  
	     R3 = R3 + [BP + 5]       	// [3:3164]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3164]  roundsORpoint+1
	     DS = R4                  	// [7:3164]  
	     R3 = DS:[R3]             	// [8:3164]  
	     DS = seg(_Higgest_T)     	// [10:3164]  Higgest_T
	     R4 = (_Higgest_T)        	// [11:3164]  Higgest_T
	     R4 = DS:[R4]             	// [13:3164]  
	     cmp R3, R4               	// [15:3164]  
	     jl L_29_8                	// [16:3164]  
BB11_PU29:	// 0x68b
// BB:11 cycle count: 25
//3165  			   {
//3166  			   	  Leader_Player |= BitMap[i]; 

LM252:
	     .stabn 68,0,3166,LM252-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3166]  i
	     R3 = 0                   	// [2:3166]  
	     R1 = (_BitMap)           	// [3:3166]  BitMap
	     R2 = seg(_BitMap)        	// [5:3166]  BitMap
	     R4 = R4 + R1             	// [6:3166]  
	     R3 = R3 + R2, Carry      	// [7:3166]  
	     DS = R3                  	// [8:3166]  
	     R4 = DS:[R4]             	// [9:3166]  
	     DS = seg(_Leader_Player) 	// [11:3166]  Leader_Player
	     R3 = (_Leader_Player)    	// [12:3166]  Leader_Player
	     R4 = R4 | DS:[R3]        	// [14:3166]  
	     DS = seg(_Leader_Player) 	// [16:3166]  Leader_Player
	     R3 = (_Leader_Player)    	// [17:3166]  Leader_Player
	     DS:[R3] = R4             	// [19:3166]  
//3167  				  j++;

LM253:
	     .stabn 68,0,3167,LM253-_Get_Num_Higgest_score
	     R4 = [BP + 1]            	// [21:3167]  j
	     R4 = R4 + 1              	// [23:3167]  
	     [BP + 1] = R4            	// [24:3167]  j
L_29_8:	// 0x69f
L_29_7:	// 0x69f
// BB:12 cycle count: 8
//3168  			   }
//3169  	    	}
//3170  	       i++;

LM254:
	     .stabn 68,0,3170,LM254-_Get_Num_Higgest_score
	     R4 = [BP + 0]            	// [0:3170]  i
	     R4 = R4 + 1              	// [2:3170]  
	     [BP + 0] = R4            	// [3:3170]  i
	     jmp L_29_5               	// [4:3170]  
L_29_6:	// 0x6a3
// BB:13 cycle count: 8
//3171  
//3172      	}
//3173  
//3174      return j;

LM255:
	     .stabn 68,0,3174,LM255-_Get_Num_Higgest_score
	     R1 = [BP + 1]            	// [0:3174]  j
	     SP = SP + 2              	// [2:3174]  
	     pop BP, PC from [SP]     	// [3:3174]  
LBE29:
	.endp	
	     .stabs "roundsORpoint:p29",160,0,0,5
	     .stabs "Play_status:p4",160,0,0,7
	     .stabn 192,0,0,LBB29-_Get_Num_Higgest_score
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabn 224,0,0,LBE29-_Get_Num_Higgest_score
LME30:
	     .stabf LME30-_Get_Num_Higgest_score
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
//3177  
//3178  
//3179  
//3180  unsigned int Get_Num_Lowest_score(int *roundsORpoint,unsigned int Play_status )//unsigned int Play_status
//3181  {

LM256:
	     .stabn 68,0,3181,LM256-_Get_Num_Lowest_score
BB1_PU30:	// 0x6a6
// BB:1 cycle count: 22
	     push BP to [SP]          	// [0:3181]  
	     SP = SP - 2              	// [2:3181]  
	     BP = SP + 1              	// [3:3181]  
LBB30:
//3182  	unsigned i = 0;

LM257:
	     .stabn 68,0,3182,LM257-_Get_Num_Lowest_score
	     R4 = 0                   	// [5:3182]  
	     [BP + 0] = R4            	// [6:3182]  i
//3183  	unsigned j = 0;

LM258:
	     .stabn 68,0,3183,LM258-_Get_Num_Lowest_score
	     R4 = 0                   	// [7:3183]  
	     [BP + 1] = R4            	// [8:3183]  j
//3184  	//unsigned k =0;
//3185  	
//3186       Lowest_T =0x7fff;

LM259:
	     .stabn 68,0,3186,LM259-_Get_Num_Lowest_score
	     R3 = 32767               	// [9:3186]  
	     DS = seg(_Lowest_T)      	// [11:3186]  Lowest_T
	     R4 = (_Lowest_T)         	// [12:3186]  Lowest_T
	     DS:[R4] = R3             	// [14:3186]  
//3187       Lowest_Player =0;

LM260:
	     .stabn 68,0,3187,LM260-_Get_Num_Lowest_score
	     R3 = 0                   	// [16:3187]  
	     DS = seg(_Lowest_Player) 	// [17:3187]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [18:3187]  Lowest_Player
	     DS:[R4] = R3             	// [20:3187]  
L_30_1:	// 0x6b9
// BB:2 cycle count: 7
//3188  	
//3189  	while(i<C_Player_Num)

LM261:
	     .stabn 68,0,3189,LM261-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3189]  i
	     cmp R4, 9                	// [2:3189]  
	     ja L_30_2                	// [3:3189]  
BB3_PU30:	// 0x6bc
// BB:3 cycle count: 18
//3190  	{
//3191  	      if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM262:
	     .stabn 68,0,3191,LM262-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3191]  i
	     R3 = 0                   	// [2:3191]  
	     R1 = (_BitMap)           	// [3:3191]  BitMap
	     R2 = seg(_BitMap)        	// [5:3191]  BitMap
	     R4 = R4 + R1             	// [6:3191]  
	     R3 = R3 + R2, Carry      	// [7:3191]  
	     DS = R3                  	// [8:3191]  
	     R4 = DS:[R4]             	// [9:3191]  
	     R4 = R4 & [BP + 7]       	// [11:3191]  Play_status
	     cmp R4, 0                	// [13:3191]  
	     je L_30_3                	// [14:3191]  
BB4_PU30:	// 0x6c8
// BB:4 cycle count: 20
//3192  	    	{
//3193  			   if(roundsORpoint[i]<Lowest_T)

LM263:
	     .stabn 68,0,3193,LM263-_Get_Num_Lowest_score
	     R3 = [BP + 0]            	// [0:3193]  i
	     R4 = 0                   	// [2:3193]  
	     R3 = R3 + [BP + 5]       	// [3:3193]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3193]  roundsORpoint+1
	     DS = R4                  	// [7:3193]  
	     R3 = DS:[R3]             	// [8:3193]  
	     DS = seg(_Lowest_T)      	// [10:3193]  Lowest_T
	     R4 = (_Lowest_T)         	// [11:3193]  Lowest_T
	     R4 = DS:[R4]             	// [13:3193]  
	     cmp R3, R4               	// [15:3193]  
	     jge L_30_4               	// [16:3193]  
BB5_PU30:	// 0x6d4
// BB:5 cycle count: 15
//3194  			   {
//3195  			   	  Lowest_T = roundsORpoint[i];

LM264:
	     .stabn 68,0,3195,LM264-_Get_Num_Lowest_score
	     R3 = [BP + 0]            	// [0:3195]  i
	     R4 = 0                   	// [2:3195]  
	     R3 = R3 + [BP + 5]       	// [3:3195]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3195]  roundsORpoint+1
	     DS = R4                  	// [7:3195]  
	     R3 = DS:[R3]             	// [8:3195]  
	     DS = seg(_Lowest_T)      	// [10:3195]  Lowest_T
	     R4 = (_Lowest_T)         	// [11:3195]  Lowest_T
	     DS:[R4] = R3             	// [13:3195]  
L_30_4:	// 0x6de
L_30_3:	// 0x6de
// BB:6 cycle count: 8
//3196  				  //k= i;
//3197  			   }
//3198  	    	}
//3199  	   
//3200  	   i++;

LM265:
	     .stabn 68,0,3200,LM265-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3200]  i
	     R4 = R4 + 1              	// [2:3200]  
	     [BP + 0] = R4            	// [3:3200]  i
	     jmp L_30_1               	// [4:3200]  
L_30_2:	// 0x6e2
// BB:7 cycle count: 10
//3201  	}
//3202  
//3203  // if(PlayScoresFlag)
//3204   {
//3205      if(Lowest_T<0)

LM266:
	     .stabn 68,0,3205,LM266-_Get_Num_Lowest_score
	     DS = seg(_Lowest_T)      	// [0:3205]  Lowest_T
	     R4 = (_Lowest_T)         	// [1:3205]  Lowest_T
	     R4 = DS:[R4]             	// [3:3205]  
	     cmp R4, 0                	// [5:3205]  
	     jge L_30_5               	// [6:3205]  
BB8_PU30:	// 0x6e8
// BB:8 cycle count: 6
//3206         Lowest_T =0;

LM267:
	     .stabn 68,0,3206,LM267-_Get_Num_Lowest_score
	     R3 = 0                   	// [0:3206]  
	     DS = seg(_Lowest_T)      	// [1:3206]  Lowest_T
	     R4 = (_Lowest_T)         	// [2:3206]  Lowest_T
	     DS:[R4] = R3             	// [4:3206]  
L_30_5:	// 0x6ed
// BB:9 cycle count: 2
//3207   }
//3208  
//3209  
//3210      i=0;

LM268:
	     .stabn 68,0,3210,LM268-_Get_Num_Lowest_score
	     R4 = 0                   	// [0:3210]  
	     [BP + 0] = R4            	// [1:3210]  i
L_30_6:	// 0x6ef
// BB:10 cycle count: 7
//3211      while(i<C_Player_Num)

LM269:
	     .stabn 68,0,3211,LM269-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3211]  i
	     cmp R4, 9                	// [2:3211]  
	     ja L_30_7                	// [3:3211]  
BB11_PU30:	// 0x6f2
// BB:11 cycle count: 18
//3212      	{
//3213           	if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM270:
	     .stabn 68,0,3213,LM270-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3213]  i
	     R3 = 0                   	// [2:3213]  
	     R1 = (_BitMap)           	// [3:3213]  BitMap
	     R2 = seg(_BitMap)        	// [5:3213]  BitMap
	     R4 = R4 + R1             	// [6:3213]  
	     R3 = R3 + R2, Carry      	// [7:3213]  
	     DS = R3                  	// [8:3213]  
	     R4 = DS:[R4]             	// [9:3213]  
	     R4 = R4 & [BP + 7]       	// [11:3213]  Play_status
	     cmp R4, 0                	// [13:3213]  
	     je L_30_8                	// [14:3213]  
BB12_PU30:	// 0x6fe
// BB:12 cycle count: 20
//3214  	    	  {
//3215  			   if(roundsORpoint[i]<=Lowest_T)

LM271:
	     .stabn 68,0,3215,LM271-_Get_Num_Lowest_score
	     R3 = [BP + 0]            	// [0:3215]  i
	     R4 = 0                   	// [2:3215]  
	     R3 = R3 + [BP + 5]       	// [3:3215]  roundsORpoint
	     R4 = R4 + [BP + 6], Carry	// [5:3215]  roundsORpoint+1
	     DS = R4                  	// [7:3215]  
	     R3 = DS:[R3]             	// [8:3215]  
	     DS = seg(_Lowest_T)      	// [10:3215]  Lowest_T
	     R4 = (_Lowest_T)         	// [11:3215]  Lowest_T
	     R4 = DS:[R4]             	// [13:3215]  
	     cmp R3, R4               	// [15:3215]  
	     jg L_30_9                	// [16:3215]  
BB13_PU30:	// 0x70a
// BB:13 cycle count: 25
//3216  			   {
//3217  			   	  Lowest_Player |= BitMap[i]; 

LM272:
	     .stabn 68,0,3217,LM272-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3217]  i
	     R3 = 0                   	// [2:3217]  
	     R1 = (_BitMap)           	// [3:3217]  BitMap
	     R2 = seg(_BitMap)        	// [5:3217]  BitMap
	     R4 = R4 + R1             	// [6:3217]  
	     R3 = R3 + R2, Carry      	// [7:3217]  
	     DS = R3                  	// [8:3217]  
	     R4 = DS:[R4]             	// [9:3217]  
	     DS = seg(_Lowest_Player) 	// [11:3217]  Lowest_Player
	     R3 = (_Lowest_Player)    	// [12:3217]  Lowest_Player
	     R4 = R4 | DS:[R3]        	// [14:3217]  
	     DS = seg(_Lowest_Player) 	// [16:3217]  Lowest_Player
	     R3 = (_Lowest_Player)    	// [17:3217]  Lowest_Player
	     DS:[R3] = R4             	// [19:3217]  
//3218  				  j ++;

LM273:
	     .stabn 68,0,3218,LM273-_Get_Num_Lowest_score
	     R4 = [BP + 1]            	// [21:3218]  j
	     R4 = R4 + 1              	// [23:3218]  
	     [BP + 1] = R4            	// [24:3218]  j
L_30_9:	// 0x71e
L_30_8:	// 0x71e
// BB:14 cycle count: 8
//3219  			   }
//3220  	    	}
//3221  	       i++;

LM274:
	     .stabn 68,0,3221,LM274-_Get_Num_Lowest_score
	     R4 = [BP + 0]            	// [0:3221]  i
	     R4 = R4 + 1              	// [2:3221]  
	     [BP + 0] = R4            	// [3:3221]  i
	     jmp L_30_6               	// [4:3221]  
L_30_7:	// 0x722
// BB:15 cycle count: 8
//3222  
//3223      	}
//3224  
//3225      return j;

LM275:
	     .stabn 68,0,3225,LM275-_Get_Num_Lowest_score
	     R1 = [BP + 1]            	// [0:3225]  j
	     SP = SP + 2              	// [2:3225]  
	     pop BP, PC from [SP]     	// [3:3225]  
LBE30:
	.endp	
	     .stabs "roundsORpoint:p29",160,0,0,5
	     .stabs "Play_status:p4",160,0,0,7
	     .stabn 192,0,0,LBB30-_Get_Num_Lowest_score
	     .stabs "i:4",128,0,0,0
	     .stabs "j:4",128,0,0,1
	     .stabn 224,0,0,LBE30-_Get_Num_Lowest_score
LME31:
	     .stabf LME31-_Get_Num_Lowest_score
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
//3229  }
//3230  
//3231  
//3232  unsigned int checksamescore(unsigned int Play_status )
//3233  {

LM276:
	     .stabn 68,0,3233,LM276-_checksamescore
BB1_PU31:	// 0x725
// BB:1 cycle count: 11
	     push BP to [SP]          	// [0:3233]  
	     SP = SP - 3              	// [2:3233]  
	     BP = SP + 1              	// [3:3233]  
LBB31:
//3234  	
//3235       unsigned int i = 0;   

LM277:
	     .stabn 68,0,3235,LM277-_checksamescore
	     R4 = 0                   	// [5:3235]  
	     [BP + 0] = R4            	// [6:3235]  i
//3236       unsigned int cnt =0;

LM278:
	     .stabn 68,0,3236,LM278-_checksamescore
	     R4 = 0                   	// [7:3236]  
	     [BP + 1] = R4            	// [8:3236]  cnt
//3237  	 int point =0;

LM279:
	     .stabn 68,0,3237,LM279-_checksamescore
	     R4 = 0                   	// [9:3237]  
	     [BP + 2] = R4            	// [10:3237]  point
L_31_2:	// 0x72f
// BB:2 cycle count: 7
//3238  	 
//3239  	while(i<C_Player_Num)

LM280:
	     .stabn 68,0,3239,LM280-_checksamescore
	     R4 = [BP + 0]            	// [0:3239]  i
	     cmp R4, 9                	// [2:3239]  
	     ja L_31_3                	// [3:3239]  
BB3_PU31:	// 0x732
// BB:3 cycle count: 18
//3240  	{
//3241  	      if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))

LM281:
	     .stabn 68,0,3241,LM281-_checksamescore
	     R4 = [BP + 0]            	// [0:3241]  i
	     R3 = 0                   	// [2:3241]  
	     R1 = (_BitMap)           	// [3:3241]  BitMap
	     R2 = seg(_BitMap)        	// [5:3241]  BitMap
	     R4 = R4 + R1             	// [6:3241]  
	     R3 = R3 + R2, Carry      	// [7:3241]  
	     DS = R3                  	// [8:3241]  
	     R4 = DS:[R4]             	// [9:3241]  
	     R4 = R4 & [BP + 6]       	// [11:3241]  Play_status
	     cmp R4, 0                	// [13:3241]  
	     je L_31_4                	// [14:3241]  
BB4_PU31:	// 0x73e
// BB:4 cycle count: 18
//3242  	    	{
//3243  			   if(Player_Point[i]!=point)

LM282:
	     .stabn 68,0,3243,LM282-_checksamescore
	     R4 = [BP + 0]            	// [0:3243]  i
	     R3 = 0                   	// [2:3243]  
	     R1 = (_Player_Point)     	// [3:3243]  Player_Point
	     R2 = seg(_Player_Point)  	// [5:3243]  Player_Point
	     R4 = R4 + R1             	// [6:3243]  
	     R3 = R3 + R2, Carry      	// [7:3243]  
	     DS = R3                  	// [8:3243]  
	     R3 = DS:[R4]             	// [9:3243]  
	     R4 = [BP + 2]            	// [11:3243]  point
	     cmp R3, R4               	// [13:3243]  
	     je L_31_5                	// [14:3243]  
BB5_PU31:	// 0x74a
// BB:5 cycle count: 23
//3244  			   {
//3245  			   	  point = Player_Point[i];

LM283:
	     .stabn 68,0,3245,LM283-_checksamescore
	     R4 = [BP + 0]            	// [0:3245]  i
	     R3 = 0                   	// [2:3245]  
	     R1 = (_Player_Point)     	// [3:3245]  Player_Point
	     R2 = seg(_Player_Point)  	// [5:3245]  Player_Point
	     R4 = R4 + R1             	// [6:3245]  
	     R3 = R3 + R2, Carry      	// [7:3245]  
	     DS = R3                  	// [8:3245]  
	     R4 = DS:[R4]             	// [9:3245]  
	     [BP + 2] = R4            	// [11:3245]  point
//3246  				  cnt++;

LM284:
	     .stabn 68,0,3246,LM284-_checksamescore
	     R4 = [BP + 1]            	// [12:3246]  cnt
	     R4 = R4 + 1              	// [14:3246]  
	     [BP + 1] = R4            	// [15:3246]  cnt
//3247  				  
//3248  				  if(cnt>1)

LM285:
	     .stabn 68,0,3248,LM285-_checksamescore
	     R4 = [BP + 1]            	// [16:3248]  cnt
	     cmp R4, 1                	// [18:3248]  
	     jbe L_31_6               	// [19:3248]  
BB6_PU31:	// 0x75a
// BB:6 cycle count: 4
//3249  				  	 break;

LM286:
	     .stabn 68,0,3249,LM286-_checksamescore
	     jmp Lt_31_1              	// [0:3249]  
L_31_6:	// 0x75b
L_31_5:	// 0x75b
L_31_4:	// 0x75b
// BB:7 cycle count: 8
//3250  			   }
//3251  	    	}
//3252  	   
//3253  	   i++;

LM287:
	     .stabn 68,0,3253,LM287-_checksamescore
	     R4 = [BP + 0]            	// [0:3253]  i
	     R4 = R4 + 1              	// [2:3253]  
	     [BP + 0] = R4            	// [3:3253]  i
	     jmp L_31_2               	// [4:3253]  
L_31_3:	// 0x75f
Lt_31_1:	// 0x75f
// BB:8 cycle count: 7
//3254  	}
//3255  	
//3256  	if(cnt>1)

LM288:
	     .stabn 68,0,3256,LM288-_checksamescore
	     R4 = [BP + 1]            	// [0:3256]  cnt
	     cmp R4, 1                	// [2:3256]  
	     jbe L_31_7               	// [3:3256]  
BB9_PU31:	// 0x762
// BB:9 cycle count: 7
//3257  		return 0;

LM289:
	     .stabn 68,0,3257,LM289-_checksamescore
	     R1 = 0                   	// [0:3257]  
	     SP = SP + 3              	// [1:3257]  
	     pop BP, PC from [SP]     	// [2:3257]  
L_31_7:	// 0x765
// BB:10 cycle count: 7
//3258  	
//3259  	return 1;

LM290:
	     .stabn 68,0,3259,LM290-_checksamescore
	     R1 = 1                   	// [0:3259]  
	     SP = SP + 3              	// [1:3259]  
	     pop BP, PC from [SP]     	// [2:3259]  
LBE31:
	.endp	
	     .stabs "Play_status:p4",160,0,0,6
	     .stabn 192,0,0,LBB31-_checksamescore
	     .stabs "i:4",128,0,0,0
	     .stabs "cnt:4",128,0,0,1
	     .stabs "point:1",128,0,0,2
	     .stabn 224,0,0,LBE31-_checksamescore
LME32:
	     .stabf LME32-_checksamescore
.code
	     .stabs "Add_SomePlayer_Point:F18",36,0,0,_Add_SomePlayer_Point

	// Program Unit: Add_SomePlayer_Point
.public	_Add_SomePlayer_Point
_Add_SomePlayer_Point: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//3335  *************************************************************************/
//3336  
//3337  //=============================================
//3338  void Add_SomePlayer_Point(int point,unsigned int *roundORpint,unsigned int* BitTable )//unsigned int Players
//3339  {

LM291:
	     .stabn 68,0,3339,LM291-_Add_SomePlayer_Point
BB1_PU32:	// 0x768
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:3339]  
	     SP = SP - 1              	// [2:3339]  
	     BP = SP + 1              	// [3:3339]  
LBB32:
//3340  
//3341  
//3342  	unsigned i = 0;

LM292:
	     .stabn 68,0,3342,LM292-_Add_SomePlayer_Point
	     R4 = 0                   	// [5:3342]  
	     [BP + 0] = R4            	// [6:3342]  i
L_32_1:	// 0x76e
// BB:2 cycle count: 7
//3347  	 #endif
//3348  	
//3349  	
//3350  	
//3351  	while(i<C_Player_Num)//C_Player_Num <16

LM293:
	     .stabn 68,0,3351,LM293-_Add_SomePlayer_Point
	     R4 = [BP + 0]            	// [0:3351]  i
	     cmp R4, 9                	// [2:3351]  
	     ja L_32_2                	// [3:3351]  
BB3_PU32:	// 0x771
// BB:3 cycle count: 29
//3352  	{
//3353  		 if (BitMap[i%16]&*(BitTable+i/16))//if (BitMap[i]&Players) //Registered_Play_Status

LM294:
	     .stabn 68,0,3353,LM294-_Add_SomePlayer_Point
	     R4 = [BP + 0]            	// [0:3353]  i
	     R4 = R4 & 15             	// [2:3353]  
	     R3 = 0                   	// [3:3353]  
	     R1 = (_BitMap)           	// [4:3353]  BitMap
	     R2 = seg(_BitMap)        	// [6:3353]  BitMap
	     R4 = R4 + R1             	// [7:3353]  
	     R3 = R3 + R2, Carry      	// [8:3353]  
	     DS = R3                  	// [9:3353]  
	     R4 = DS:[R4]             	// [10:3353]  
	     R3 = [BP + 0]            	// [12:3353]  i
	     R2 = R3 lsr 4            	// [14:3353]  
	     R3 = 0                   	// [15:3353]  
	     R2 = R2 + [BP + 7]       	// [16:3353]  BitTable
	     R3 = R3 + [BP + 8], Carry	// [18:3353]  BitTable+1
	     DS = R3                  	// [20:3353]  
	     R3 = DS:[R2]             	// [21:3353]  
	     R4 = R4 & R3             	// [23:3353]  
	     cmp R4, 0                	// [24:3353]  
	     je L_32_3                	// [25:3353]  
BB4_PU32:	// 0x785
// BB:4 cycle count: 22
//3354  		    {
//3355  		      roundORpint[i]+=point;

LM295:
	     .stabn 68,0,3355,LM295-_Add_SomePlayer_Point
	     R3 = [BP + 0]            	// [0:3355]  i
	     R4 = 0                   	// [2:3355]  
	     R3 = R3 + [BP + 5]       	// [3:3355]  roundORpint
	     R4 = R4 + [BP + 6], Carry	// [5:3355]  roundORpint+1
	     DS = R4                  	// [7:3355]  
	     R4 = DS:[R3]             	// [8:3355]  
	     R4 = R4 + [BP + 4]       	// [10:3355]  point
	     R2 = [BP + 0]            	// [12:3355]  i
	     R3 = 0                   	// [14:3355]  
	     R2 = R2 + [BP + 5]       	// [15:3355]  roundORpint
	     R3 = R3 + [BP + 6], Carry	// [17:3355]  roundORpint+1
	     DS = R3                  	// [19:3355]  
	     DS:[R2] = R4             	// [20:3355]  
L_32_3:	// 0x792
// BB:5 cycle count: 8
//3357  		       //if(Player_Point[i]<0)
//3358     	           //    Player_Point[i] =0;
//3359  		      
//3360  		    }
//3361  		   i++;

LM296:
	     .stabn 68,0,3361,LM296-_Add_SomePlayer_Point
	     R4 = [BP + 0]            	// [0:3361]  i
	     R4 = R4 + 1              	// [2:3361]  
	     [BP + 0] = R4            	// [3:3361]  i
	     jmp L_32_1               	// [4:3361]  
L_32_2:	// 0x796
// BB:6 cycle count: 6
	     SP = SP + 1              	// [0:3361]  
	     pop BP, PC from [SP]     	// [1:3361]  
LBE32:
	.endp	
	     .stabs "point:p1",160,0,0,4
	     .stabs "roundORpint:p30=*4",160,0,0,5
	     .stabs "BitTable:p30",160,0,0,7
	     .stabn 192,0,0,LBB32-_Add_SomePlayer_Point
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE32-_Add_SomePlayer_Point
LME33:
	     .stabf LME33-_Add_SomePlayer_Point
.code
	     .stabs "Add_ALL_InactivePlayer_Point:F18",36,0,0,_Add_ALL_InactivePlayer_Point

	// Program Unit: Add_ALL_InactivePlayer_Point
.public	_Add_ALL_InactivePlayer_Point
_Add_ALL_InactivePlayer_Point: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//3369  *************************************************************************/
//3370  
//3371  //=============================================
//3372  void Add_ALL_InactivePlayer_Point(int point,unsigned int *roundORpint,unsigned int* BitTable )//(int point)
//3373  {

LM297:
	     .stabn 68,0,3373,LM297-_Add_ALL_InactivePlayer_Point
BB1_PU33:	// 0x798
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:3373]  
	     SP = SP - 1              	// [2:3373]  
	     BP = SP + 1              	// [3:3373]  
LBB33:
//3374  
//3375  
//3376  	unsigned i = 0;

LM298:
	     .stabn 68,0,3376,LM298-_Add_ALL_InactivePlayer_Point
	     R4 = 0                   	// [5:3376]  
	     [BP + 0] = R4            	// [6:3376]  i
L_33_1:	// 0x79e
// BB:2 cycle count: 7
//3381  	 #endif
//3382  	
//3383  	
//3384  	
//3385  	while(i<C_Player_Num)//C_Player_Num <16

LM299:
	     .stabn 68,0,3385,LM299-_Add_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3385]  i
	     cmp R4, 9                	// [2:3385]  
	     ja L_33_2                	// [3:3385]  
BB3_PU33:	// 0x7a1
// BB:3 cycle count: 21
//3386  	{
//3387  		   if (BitMap[i]&Registered_Play_Status) //Registered_Play_Status

LM300:
	     .stabn 68,0,3387,LM300-_Add_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3387]  i
	     R3 = 0                   	// [2:3387]  
	     R1 = (_BitMap)           	// [3:3387]  BitMap
	     R2 = seg(_BitMap)        	// [5:3387]  BitMap
	     R4 = R4 + R1             	// [6:3387]  
	     R3 = R3 + R2, Carry      	// [7:3387]  
	     DS = R3                  	// [8:3387]  
	     R4 = DS:[R4]             	// [9:3387]  
	     DS = seg(_Registered_Play_Status)	// [11:3387]  Registered_Play_Status
	     R3 = (_Registered_Play_Status)	// [12:3387]  Registered_Play_Status
	     R4 = R4 & DS:[R3]        	// [14:3387]  
	     cmp R4, 0                	// [16:3387]  
	     je L_33_3                	// [17:3387]  
BB4_PU33:	// 0x7b0
// BB:4 cycle count: 12
//3388  		    {
//3389  		    	
//3390  		        if(i!=Player_Activing_Cnt)//if ((BitMap[i%16]&*(BitTable+i/16))==0)//if((BitMap[i]&Player_Activing_Bit)==0)	

LM301:
	     .stabn 68,0,3390,LM301-_Add_ALL_InactivePlayer_Point
	     R3 = [BP + 0]            	// [0:3390]  i
	     DS = seg(_Player_Activing_Cnt)	// [2:3390]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [3:3390]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [5:3390]  
	     cmp R3, R4               	// [7:3390]  
	     je L_33_4                	// [8:3390]  
BB5_PU33:	// 0x7b7
// BB:5 cycle count: 22
//3391  		            roundORpint[i]+=point;

LM302:
	     .stabn 68,0,3391,LM302-_Add_ALL_InactivePlayer_Point
	     R3 = [BP + 0]            	// [0:3391]  i
	     R4 = 0                   	// [2:3391]  
	     R3 = R3 + [BP + 5]       	// [3:3391]  roundORpint
	     R4 = R4 + [BP + 6], Carry	// [5:3391]  roundORpint+1
	     DS = R4                  	// [7:3391]  
	     R4 = DS:[R3]             	// [8:3391]  
	     R4 = R4 + [BP + 4]       	// [10:3391]  point
	     R2 = [BP + 0]            	// [12:3391]  i
	     R3 = 0                   	// [14:3391]  
	     R2 = R2 + [BP + 5]       	// [15:3391]  roundORpint
	     R3 = R3 + [BP + 6], Carry	// [17:3391]  roundORpint+1
	     DS = R3                  	// [19:3391]  
	     DS:[R2] = R4             	// [20:3391]  
L_33_4:	// 0x7c4
L_33_3:	// 0x7c4
// BB:6 cycle count: 8
//3392  		    }
//3393  		   i++;

LM303:
	     .stabn 68,0,3393,LM303-_Add_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3393]  i
	     R4 = R4 + 1              	// [2:3393]  
	     [BP + 0] = R4            	// [3:3393]  i
	     jmp L_33_1               	// [4:3393]  
L_33_2:	// 0x7c8
// BB:7 cycle count: 6
	     SP = SP + 1              	// [0:3393]  
	     pop BP, PC from [SP]     	// [1:3393]  
LBE33:
	.endp	
	     .stabs "point:p1",160,0,0,4
	     .stabs "roundORpint:p30",160,0,0,5
	     .stabs "BitTable:p30",160,0,0,7
	     .stabn 192,0,0,LBB33-_Add_ALL_InactivePlayer_Point
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE33-_Add_ALL_InactivePlayer_Point
LME34:
	     .stabf LME34-_Add_ALL_InactivePlayer_Point
.code
	     .stabs "Sub_ALL_InactivePlayer_Point:F18",36,0,0,_Sub_ALL_InactivePlayer_Point

	// Program Unit: Sub_ALL_InactivePlayer_Point
.public	_Sub_ALL_InactivePlayer_Point
_Sub_ALL_InactivePlayer_Point: .proc	
	     .stabn 0xa6,0,0,2
	// i = 0
	// old_frame_pointer = 2
	// return_address = 3
	// lra_spill_temp_16 = 1
//3397  }
//3398  
//3399  //=============================================
//3400  void Sub_ALL_InactivePlayer_Point(int point,unsigned int Player_buffer)
//3401  {

LM304:
	     .stabn 68,0,3401,LM304-_Sub_ALL_InactivePlayer_Point
BB1_PU34:	// 0x7ca
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:3401]  
	     SP = SP - 2              	// [2:3401]  
	     BP = SP + 1              	// [3:3401]  
LBB34:
//3402  
//3403  
//3404  	unsigned i = 0;

LM305:
	     .stabn 68,0,3404,LM305-_Sub_ALL_InactivePlayer_Point
	     R4 = 0                   	// [5:3404]  
	     [BP + 0] = R4            	// [6:3404]  i
L_34_1:	// 0x7d0
// BB:2 cycle count: 7
//3409  	 #endif
//3410  	
//3411  	
//3412  	
//3413  	while(i<C_Player_Num)//C_Player_Num <16

LM306:
	     .stabn 68,0,3413,LM306-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3413]  i
	     cmp R4, 9                	// [2:3413]  
	     jbe BB3_PU34             	// [3:3413]  
BB9_PU34:	// 0x7d3
// BB:9 cycle count: 3
	     goto L_34_2              	// [0:0]  
BB3_PU34:	// 0x7d5
// BB:3 cycle count: 18
//3414  	{
//3415  		 if (BitMap[i]&Player_buffer) //Registered_Play_Status

LM307:
	     .stabn 68,0,3415,LM307-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3415]  i
	     R3 = 0                   	// [2:3415]  
	     R1 = (_BitMap)           	// [3:3415]  BitMap
	     R2 = seg(_BitMap)        	// [5:3415]  BitMap
	     R4 = R4 + R1             	// [6:3415]  
	     R3 = R3 + R2, Carry      	// [7:3415]  
	     DS = R3                  	// [8:3415]  
	     R4 = DS:[R4]             	// [9:3415]  
	     R4 = R4 & [BP + 6]       	// [11:3415]  Player_buffer
	     cmp R4, 0                	// [13:3415]  
	     je L_34_3                	// [14:3415]  
BB4_PU34:	// 0x7e1
// BB:4 cycle count: 21
//3416  		    {
//3417  		    	
//3418  		     if((BitMap[i]&Player_Activing_Bit)==0)	

LM308:
	     .stabn 68,0,3418,LM308-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3418]  i
	     R3 = 0                   	// [2:3418]  
	     R1 = (_BitMap)           	// [3:3418]  BitMap
	     R2 = seg(_BitMap)        	// [5:3418]  BitMap
	     R4 = R4 + R1             	// [6:3418]  
	     R3 = R3 + R2, Carry      	// [7:3418]  
	     DS = R3                  	// [8:3418]  
	     R4 = DS:[R4]             	// [9:3418]  
	     DS = seg(_Player_Activing_Bit)	// [11:3418]  Player_Activing_Bit
	     R3 = (_Player_Activing_Bit)	// [12:3418]  Player_Activing_Bit
	     R4 = R4 & DS:[R3]        	// [14:3418]  
	     cmp R4, 0                	// [16:3418]  
	     jne L_34_4               	// [17:3418]  
BB5_PU34:	// 0x7f0
// BB:5 cycle count: 43
//3419  		     	{
//3420  		          Player_Point[i]-=point;

LM309:
	     .stabn 68,0,3420,LM309-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3420]  i
	     R3 = 0                   	// [2:3420]  
	     R1 = (_Player_Point)     	// [3:3420]  Player_Point
	     R2 = seg(_Player_Point)  	// [5:3420]  Player_Point
	     R4 = R4 + R1             	// [6:3420]  
	     R3 = R3 + R2, Carry      	// [7:3420]  
	     DS = R3                  	// [8:3420]  
	     R4 = DS:[R4]             	// [9:3420]  
	     R4 = R4 - [BP + 5]       	// [11:3420]  point
	     [BP + 1] = R4            	// [13:3420]  lra_spill_temp_16
	     R4 = [BP + 0]            	// [14:3420]  i
	     R3 = 0                   	// [16:3420]  
	     R1 = (_Player_Point)     	// [17:3420]  Player_Point
	     R2 = seg(_Player_Point)  	// [19:3420]  Player_Point
	     R4 = R4 + R1             	// [20:3420]  
	     R3 = R3 + R2, Carry      	// [21:3420]  
	     DS = R3                  	// [22:3420]  
	     R3 = [BP + 1]            	// [23:3420]  lra_spill_temp_16
	     DS:[R4] = R3             	// [25:3420]  
//3421  
//3422  				  if(Player_Point[i]<0)

LM310:
	     .stabn 68,0,3422,LM310-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [27:3422]  i
	     R3 = 0                   	// [29:3422]  
	     R1 = (_Player_Point)     	// [30:3422]  Player_Point
	     R2 = seg(_Player_Point)  	// [32:3422]  Player_Point
	     R4 = R4 + R1             	// [33:3422]  
	     R3 = R3 + R2, Carry      	// [34:3422]  
	     DS = R3                  	// [35:3422]  
	     R4 = DS:[R4]             	// [36:3422]  
	     cmp R4, 0                	// [38:3422]  
	     jge L_34_5               	// [39:3422]  
BB6_PU34:	// 0x810
// BB:6 cycle count: 12
//3423     	                  Player_Point[i] =0;

LM311:
	     .stabn 68,0,3423,LM311-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3423]  i
	     R3 = 0                   	// [2:3423]  
	     R1 = (_Player_Point)     	// [3:3423]  Player_Point
	     R2 = seg(_Player_Point)  	// [5:3423]  Player_Point
	     R4 = R4 + R1             	// [6:3423]  
	     R3 = R3 + R2, Carry      	// [7:3423]  
	     DS = R3                  	// [8:3423]  
	     R3 = 0                   	// [9:3423]  
	     DS:[R4] = R3             	// [10:3423]  
L_34_5:	// 0x81a
L_34_4:	// 0x81a
L_34_3:	// 0x81a
// BB:7 cycle count: 7
//3424  
//3425  		     	}
//3426  		    }
//3427  		   i++;

LM312:
	     .stabn 68,0,3427,LM312-_Sub_ALL_InactivePlayer_Point
	     R4 = [BP + 0]            	// [0:3427]  i
	     R4 = R4 + 1              	// [2:3427]  
	     [BP + 0] = R4            	// [3:3427]  i
	     goto L_34_1              	// [4:3427]  
L_34_2:	// 0x81f
// BB:8 cycle count: 6
	     SP = SP + 2              	// [0:3427]  
	     pop BP, PC from [SP]     	// [1:3427]  
LBE34:
	.endp	
	     .stabs "point:p1",160,0,0,5
	     .stabs "Player_buffer:p4",160,0,0,6
	     .stabn 192,0,0,LBB34-_Sub_ALL_InactivePlayer_Point
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE34-_Sub_ALL_InactivePlayer_Point
LME35:
	     .stabf LME35-_Sub_ALL_InactivePlayer_Point
.code
	     .stabs "PlayScores:F18",36,0,0,_PlayScores

	// Program Unit: PlayScores
.public	_PlayScores
_PlayScores: .proc	
	     .stabn 0xa6,0,0,1
	// temp = 0
	// old_frame_pointer = 1
	// return_address = 2
//3453  
//3454  /*******************************************************
//3455  **************************************************************/
//3456  void PlayScores( int scores)
//3457  {

LM313:
	     .stabn 68,0,3457,LM313-_PlayScores
BB1_PU35:	// 0x821
// BB:1 cycle count: 13
	     push BP to [SP]          	// [0:3457]  
	     SP = SP - 1              	// [2:3457]  
	     BP = SP + 1              	// [3:3457]  
LBB35:
//3459  	   unsigned int temp;  		
//3460  
//3461  	   	  	
//3462  	   		
//3463             if(scores>100)

LM314:
	     .stabn 68,0,3463,LM314-_PlayScores
	     R4 = [BP + 4]            	// [5:3463]  scores
	     cmp R4, 100              	// [7:3463]  
	     jle L_35_1               	// [9:3463]  
BB2_PU35:	// 0x829
// BB:2 cycle count: 3
//3464                scores =100;

LM315:
	     .stabn 68,0,3464,LM315-_PlayScores
	     R4 = 100                 	// [0:3464]  
	     [BP + 4] = R4            	// [2:3464]  scores
L_35_1:	// 0x82c
// BB:3 cycle count: 7
//3465             
//3466             if(scores>=0)					  	

LM316:
	     .stabn 68,0,3466,LM316-_PlayScores
	     R4 = [BP + 4]            	// [0:3466]  scores
	     cmp R4, 0                	// [2:3466]  
	     jl L_35_3                	// [3:3466]  
BB4_PU35:	// 0x82f
// BB:4 cycle count: 16
//3467  	          Play_Seq(scores,C_Point_A_StartAddr);

LM317:
	     .stabn 68,0,3467,LM317-_PlayScores
	     SP = SP - 2              	// [0:3467]  
	     R3 = [BP + 4]            	// [1:3467]  scores
	     R4 = SP + 1              	// [3:3467]  
	     [R4] = R3                	// [5:3467]  
	     R3 = 8000                	// [7:3467]  
	     R4 = SP + 2              	// [9:3467]  
	     [R4] = R3                	// [11:3467]  
	     call _Play_Seq           	// [13:3467]  Play_Seq
BB5_PU35:	// 0x83b
// BB:5 cycle count: 5
	     SP = SP + 2              	// [0:3467]  
	     jmp L_35_2               	// [1:3467]  
L_35_3:	// 0x83d
// BB:6 cycle count: 19
//3468  	     else
//3469  	  	   {
//3470             
//3471                temp= 0-scores;

LM318:
	     .stabn 68,0,3471,LM318-_PlayScores
	     R4 = - [BP + 4]          	// [0:3471]  scores
	     [BP + 0] = R4            	// [2:3471]  temp
//3472  			  Play_Seq(scores,C_Point_A_StartAddr);// Play_Seq(temp-1,C_Point_M_StartAddr);

LM319:
	     .stabn 68,0,3472,LM319-_PlayScores
	     SP = SP - 2              	// [3:3472]  
	     R3 = [BP + 4]            	// [4:3472]  scores
	     R4 = SP + 1              	// [6:3472]  
	     [R4] = R3                	// [8:3472]  
	     R3 = 8000                	// [10:3472]  
	     R4 = SP + 2              	// [12:3472]  
	     [R4] = R3                	// [14:3472]  
	     call _Play_Seq           	// [16:3472]  Play_Seq
BB7_PU35:	// 0x84b
// BB:7 cycle count: 1
	     SP = SP + 2              	// [0:3472]  
L_35_2:	// 0x84c
// BB:8 cycle count: 6
	     SP = SP + 1              	// [0:3472]  
	     pop BP, PC from [SP]     	// [1:3472]  
LBE35:
	.endp	
	     .stabs "scores:p1",160,0,0,4
	     .stabn 192,0,0,LBB35-_PlayScores
	     .stabs "temp:4",128,0,0,0
	     .stabn 224,0,0,LBE35-_PlayScores
LME36:
	     .stabf LME36-_PlayScores
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
//3480  
//3481  /******************************************************
//3482  **********************************************************/
//3483  void Play_Activeplayer(unsigned int Ledonflag,unsigned int Player_buffer,unsigned int first_SP)
//3484  {

LM320:
	     .stabn 68,0,3484,LM320-_Play_Activeplayer
BB1_PU36:	// 0x84e
// BB:1 cycle count: 5
	     push BP to [SP]          	// [0:3484]  
	     SP = SP - 2              	// [2:3484]  
	     BP = SP + 1              	// [3:3484]  
L_36_5:	// 0x852
// BB:2 cycle count: 7
LBB36:
//3485       //unsigned int temp1 = Player_Activing_Bit;
//3486  	 unsigned int temp,temp3;
//3487  
//3488           while(Player_buffer)

LM321:
	     .stabn 68,0,3488,LM321-_Play_Activeplayer
	     R4 = [BP + 6]            	// [0:3488]  Player_buffer
	     cmp R4, 0                	// [2:3488]  
	     je L_36_6                	// [3:3488]  
BB3_PU36:	// 0x855
// BB:3 cycle count: 10
//3489  		  {
//3490  	             
//3491  	              temp =  Get_Firstcnt_From_Play(Player_buffer);

LM322:
	     .stabn 68,0,3491,LM322-_Play_Activeplayer
	     SP = SP - 1              	// [0:3491]  
	     R3 = [BP + 6]            	// [1:3491]  Player_buffer
	     R4 = SP + 1              	// [3:3491]  
	     [R4] = R3                	// [5:3491]  
	     call _Get_Firstcnt_From_Play	// [7:3491]  Get_Firstcnt_From_Play
BB4_PU36:	// 0x85c
// BB:4 cycle count: 19
	     SP = SP + 1              	// [0:3491]  
	     [BP + 0] = R1            	// [1:3491]  temp
//3492  	              Player_buffer&=~(1<<temp);

LM323:
	     .stabn 68,0,3492,LM323-_Play_Activeplayer
	     R4 = 1                   	// [2:3492]  
	     R3 = [BP + 0]            	// [3:3492]  temp
	     R3 = R3 & 15             	// [5:3492]  
	     R4 = R4 lsl R3           	// [6:3492]  
	     R4 = R4 ^ 65535          	// [7:3492]  
	     R4 = R4 & [BP + 6]       	// [9:3492]  Player_buffer
	     [BP + 6] = R4            	// [11:3492]  Player_buffer
//3493                     
//3494                  if(Ledonflag)

LM324:
	     .stabn 68,0,3494,LM324-_Play_Activeplayer
	     R4 = [BP + 5]            	// [12:3494]  Ledonflag
	     cmp R4, 0                	// [14:3494]  
	     je L_36_7                	// [15:3494]  
BB5_PU36:	// 0x869
// BB:5 cycle count: 22
//3495                  	{
//3496  					  temp3 = Led_Data_Play[temp];

LM325:
	     .stabn 68,0,3496,LM325-_Play_Activeplayer
	     R4 = [BP + 0]            	// [0:3496]  temp
	     R3 = 0                   	// [2:3496]  
	     R1 = (_Led_Data_Play)    	// [3:3496]  Led_Data_Play
	     R2 = seg(_Led_Data_Play) 	// [5:3496]  Led_Data_Play
	     R4 = R4 + R1             	// [6:3496]  
	     R3 = R3 + R2, Carry      	// [7:3496]  
	     DS = R3                  	// [8:3496]  
	     R4 = DS:[R4]             	// [9:3496]  
	     [BP + 1] = R4            	// [11:3496]  temp3
//3497  	                  Led_ON_Some(temp3);

LM326:
	     .stabn 68,0,3497,LM326-_Play_Activeplayer
	     SP = SP - 1              	// [12:3497]  
	     R3 = [BP + 1]            	// [13:3497]  temp3
	     R4 = SP + 1              	// [15:3497]  
	     [R4] = R3                	// [17:3497]  
	     call _Led_ON_Some        	// [19:3497]  Led_ON_Some
BB6_PU36:	// 0x87a
// BB:6 cycle count: 1
	     SP = SP + 1              	// [0:3497]  
L_36_7:	// 0x87b
// BB:7 cycle count: 12
//3498                  	}				  
//3499  				  PlayA1800_Elements(first_SP +temp);	//B_VLHPQEN_Blue

LM327:
	     .stabn 68,0,3499,LM327-_Play_Activeplayer
	     SP = SP - 1              	// [0:3499]  
	     R4 = [BP + 7]            	// [1:3499]  first_SP
	     R4 = R4 + [BP + 0]       	// [3:3499]  temp
	     R3 = SP + 1              	// [5:3499]  
	     [R3] = R4                	// [7:3499]  
	     call _PlayA1800_Elements 	// [9:3499]  PlayA1800_Elements
BB8_PU36:	// 0x883
// BB:8 cycle count: 5
	     SP = SP + 1              	// [0:3499]  
	     jmp L_36_5               	// [1:3499]  
L_36_6:	// 0x885
// BB:9 cycle count: 6
	     SP = SP + 2              	// [0:3499]  
	     pop BP, PC from [SP]     	// [1:3499]  
LBE36:
	.endp	
	     .stabs "Ledonflag:p4",160,0,0,5
	     .stabs "Player_buffer:p4",160,0,0,6
	     .stabs "first_SP:p4",160,0,0,7
	     .stabn 192,0,0,LBB36-_Play_Activeplayer
	     .stabs "temp:4",128,0,0,0
	     .stabs "temp3:4",128,0,0,1
	     .stabn 224,0,0,LBE36-_Play_Activeplayer
LME37:
	     .stabf LME37-_Play_Activeplayer
.code
	     .stabs "Play_Serieplayer:F18",36,0,0,_Play_Serieplayer

	// Program Unit: Play_Serieplayer
.public	_Play_Serieplayer
_Play_Serieplayer: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//3504  
//3505  /******************************************************
//3506  **********************************************************/
//3507  void Play_Serieplayer(unsigned int Ledonflag,unsigned int* BitTable,unsigned int  *SP_Table)
//3508  {

LM328:
	     .stabn 68,0,3508,LM328-_Play_Serieplayer
BB1_PU37:	// 0x887
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:3508]  
	     SP = SP - 1              	// [2:3508]  
	     BP = SP + 1              	// [3:3508]  
LBB37:
//3509       //unsigned int temp1 = Player_Activing_Bit;
//3510  	 //unsigned int temp,temp3;
//3511  	 unsigned int  i=0;

LM329:
	     .stabn 68,0,3511,LM329-_Play_Serieplayer
	     R4 = 0                   	// [5:3511]  
	     [BP + 0] = R4            	// [6:3511]  i
L_37_1:	// 0x88d
// BB:2 cycle count: 12
//3512  
//3513           while(i<Registerd_Num)

LM330:
	     .stabn 68,0,3513,LM330-_Play_Serieplayer
	     R3 = [BP + 0]            	// [0:3513]  i
	     DS = seg(_Registerd_Num) 	// [2:3513]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [3:3513]  Registerd_Num
	     R4 = DS:[R4]             	// [5:3513]  
	     cmp R3, R4               	// [7:3513]  
	     jae L_37_2               	// [8:3513]  
BB3_PU37:	// 0x894
// BB:3 cycle count: 29
//3514  		  {
//3515  	             
//3516                  if (BitMap[i%16]&*(BitTable+i/16))

LM331:
	     .stabn 68,0,3516,LM331-_Play_Serieplayer
	     R4 = [BP + 0]            	// [0:3516]  i
	     R4 = R4 & 15             	// [2:3516]  
	     R3 = 0                   	// [3:3516]  
	     R1 = (_BitMap)           	// [4:3516]  BitMap
	     R2 = seg(_BitMap)        	// [6:3516]  BitMap
	     R4 = R4 + R1             	// [7:3516]  
	     R3 = R3 + R2, Carry      	// [8:3516]  
	     DS = R3                  	// [9:3516]  
	     R4 = DS:[R4]             	// [10:3516]  
	     R3 = [BP + 0]            	// [12:3516]  i
	     R2 = R3 lsr 4            	// [14:3516]  
	     R3 = 0                   	// [15:3516]  
	     R2 = R2 + [BP + 5]       	// [16:3516]  BitTable
	     R3 = R3 + [BP + 6], Carry	// [18:3516]  BitTable+1
	     DS = R3                  	// [20:3516]  
	     R3 = DS:[R2]             	// [21:3516]  
	     R4 = R4 & R3             	// [23:3516]  
	     cmp R4, 0                	// [24:3516]  
	     je L_37_3                	// [25:3516]  
BB4_PU37:	// 0x8a8
// BB:4 cycle count: 20
//3517                  	{
//3518  
//3519                          Play_Seq(i,SP_Table);

LM332:
	     .stabn 68,0,3519,LM332-_Play_Serieplayer
	     SP = SP - 3              	// [0:3519]  
	     R3 = [BP + 0]            	// [1:3519]  i
	     R4 = SP + 1              	// [3:3519]  
	     [R4] = R3                	// [5:3519]  
	     R2 = [BP + 7]            	// [7:3519]  SP_Table
	     R3 = [BP + 8]            	// [9:3519]  SP_Table+1
	     R4 = SP + 2              	// [11:3519]  
	     [R4++] = R2              	// [13:3519]  
	     [R4] = R3                	// [15:3519]  
	     call _Play_Seq           	// [17:3519]  Play_Seq
BB5_PU37:	// 0x8b5
// BB:5 cycle count: 1
	     SP = SP + 3              	// [0:3519]  
L_37_3:	// 0x8b6
// BB:6 cycle count: 8
//3520  
//3521                  	}
//3522  
//3523  				i++;

LM333:
	     .stabn 68,0,3523,LM333-_Play_Serieplayer
	     R4 = [BP + 0]            	// [0:3523]  i
	     R4 = R4 + 1              	// [2:3523]  
	     [BP + 0] = R4            	// [3:3523]  i
	     jmp L_37_1               	// [4:3523]  
L_37_2:	// 0x8ba
// BB:7 cycle count: 6
	     SP = SP + 1              	// [0:3523]  
	     pop BP, PC from [SP]     	// [1:3523]  
LBE37:
	.endp	
	     .stabs "Ledonflag:p4",160,0,0,4
	     .stabs "BitTable:p30",160,0,0,5
	     .stabs "SP_Table:p30",160,0,0,7
	     .stabn 192,0,0,LBB37-_Play_Serieplayer
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE37-_Play_Serieplayer
LME38:
	     .stabf LME38-_Play_Serieplayer
.code
	     .stabs "Play_Serieplayer16bit:F18",36,0,0,_Play_Serieplayer16bit

	// Program Unit: Play_Serieplayer16bit
.public	_Play_Serieplayer16bit
_Play_Serieplayer16bit: .proc	
	     .stabn 0xa6,0,0,1
	// temp = 0
	// old_frame_pointer = 1
	// return_address = 2
//3529  
//3530  /******************************************************
//3531  **********************************************************/
//3532  void Play_Serieplayer16bit(unsigned int Ledonflag,unsigned int Player_buffer,unsigned int  *SP_Table)
//3533  {

LM334:
	     .stabn 68,0,3533,LM334-_Play_Serieplayer16bit
BB1_PU38:	// 0x8bc
// BB:1 cycle count: 5
	     push BP to [SP]          	// [0:3533]  
	     SP = SP - 1              	// [2:3533]  
	     BP = SP + 1              	// [3:3533]  
L_38_3:	// 0x8c0
// BB:2 cycle count: 7
LBB38:
//3534       //unsigned int temp1 = Player_Activing_Bit;
//3535  	 unsigned int temp;//,temp3;
//3536  
//3537           while(Player_buffer)

LM335:
	     .stabn 68,0,3537,LM335-_Play_Serieplayer16bit
	     R4 = [BP + 5]            	// [0:3537]  Player_buffer
	     cmp R4, 0                	// [2:3537]  
	     je L_38_4                	// [3:3537]  
BB3_PU38:	// 0x8c3
// BB:3 cycle count: 10
//3538  		  {
//3539  	             
//3540  	              temp =  Get_Firstcnt_From_Play(Player_buffer);

LM336:
	     .stabn 68,0,3540,LM336-_Play_Serieplayer16bit
	     SP = SP - 1              	// [0:3540]  
	     R3 = [BP + 5]            	// [1:3540]  Player_buffer
	     R4 = SP + 1              	// [3:3540]  
	     [R4] = R3                	// [5:3540]  
	     call _Get_Firstcnt_From_Play	// [7:3540]  Get_Firstcnt_From_Play
BB4_PU38:	// 0x8ca
// BB:4 cycle count: 31
	     SP = SP - 2              	// [0:3540]  
	     [BP + 0] = R1            	// [1:3540]  temp
//3541  	              Player_buffer&=~(1<<temp);

LM337:
	     .stabn 68,0,3541,LM337-_Play_Serieplayer16bit
	     R4 = 1                   	// [2:3541]  
	     R3 = [BP + 0]            	// [3:3541]  temp
	     R3 = R3 & 15             	// [5:3541]  
	     R4 = R4 lsl R3           	// [6:3541]  
	     R4 = R4 ^ 65535          	// [7:3541]  
	     R4 = R4 & [BP + 5]       	// [9:3541]  Player_buffer
	     [BP + 5] = R4            	// [11:3541]  Player_buffer
//3544  //                	{
//3545  //					  temp3 = Led_Data_Play[temp];
//3546  //	                  Led_ON_Some(temp3);
//3547  //                	}				  
//3548  				  Play_Seq(temp,SP_Table);//PlayA1800_Elements(first_SP +temp);	//B_VLHPQEN_Blue

LM338:
	     .stabn 68,0,3548,LM338-_Play_Serieplayer16bit
	     R3 = [BP + 0]            	// [12:3548]  temp
	     R4 = SP + 1              	// [14:3548]  
	     [R4] = R3                	// [16:3548]  
	     R2 = [BP + 6]            	// [18:3548]  SP_Table
	     R3 = [BP + 7]            	// [20:3548]  SP_Table+1
	     R4 = SP + 2              	// [22:3548]  
	     [R4++] = R2              	// [24:3548]  
	     [R4] = R3                	// [26:3548]  
	     call _Play_Seq           	// [28:3548]  Play_Seq
BB5_PU38:	// 0x8e0
// BB:5 cycle count: 5
	     SP = SP + 3              	// [0:3548]  
	     jmp L_38_3               	// [1:3548]  
L_38_4:	// 0x8e2
// BB:6 cycle count: 6
	     SP = SP + 1              	// [0:3548]  
	     pop BP, PC from [SP]     	// [1:3548]  
LBE38:
	.endp	
	     .stabs "Ledonflag:p4",160,0,0,4
	     .stabs "Player_buffer:p4",160,0,0,5
	     .stabs "SP_Table:p30",160,0,0,6
	     .stabn 192,0,0,LBB38-_Play_Serieplayer16bit
	     .stabs "temp:4",128,0,0,0
	     .stabn 224,0,0,LBE38-_Play_Serieplayer16bit
LME39:
	     .stabf LME39-_Play_Serieplayer16bit
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
//3792  
//3793  /***********************************************************
//3794  *********************************************************/
//3795  void Tell_Scores(unsigned int Final_Scorefalg)
//3796  {

LM339:
	     .stabn 68,0,3796,LM339-_Tell_Scores
BB1_PU39:	// 0x8e4
// BB:1 cycle count: 39
	     push BP to [SP]          	// [0:3796]  
	     SP = SP - 5              	// [2:3796]  
	     BP = SP + 1              	// [3:3796]  
LBB39:
//3805   //  unsigned int BlinkFlag_Data_temp =0;
//3806  //   unsigned int Drive_Led_temp =0;
//3807  
//3808  
//3809     unsigned int t_lowest_Player =0;

LM340:
	     .stabn 68,0,3809,LM340-_Tell_Scores
	     R4 = 0                   	// [5:3809]  
	     [BP + 0] = R4            	// [6:3809]  t_lowest_Player
//3810     unsigned int t_highest_Player =0;

LM341:
	     .stabn 68,0,3810,LM341-_Tell_Scores
	     R4 = 0                   	// [7:3810]  
	     [BP + 1] = R4            	// [8:3810]  t_highest_Player
//3811     
//3812    // unsigned int temp_fifty =0;
//3813     unsigned int i=0;    

LM342:
	     .stabn 68,0,3813,LM342-_Tell_Scores
	     R4 = 0                   	// [9:3813]  
	     [BP + 2] = R4            	// [10:3813]  i
//3814    // unsigned int CurrentN =0;
//3815      
//3816  	
//3817     t_lowest_Player = Lowest_Player;

LM343:
	     .stabn 68,0,3817,LM343-_Tell_Scores
	     DS = seg(_Lowest_Player) 	// [11:3817]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [12:3817]  Lowest_Player
	     R4 = DS:[R4]             	// [14:3817]  
	     [BP + 0] = R4            	// [16:3817]  t_lowest_Player
//3818     
//3819  
//3820    
//3821     temp = Get_Num_Lowest_score(Rounds,Registered_Play_Status);//(Registered_Play_Status);

LM344:
	     .stabn 68,0,3821,LM344-_Tell_Scores
	     SP = SP - 3              	// [17:3821]  
	     R2 = (_Rounds)           	// [18:3821]  Rounds
	     R3 = seg(_Rounds)        	// [20:3821]  Rounds
	     R4 = SP + 1              	// [21:3821]  
	     [R4++] = R2              	// [23:3821]  
	     [R4] = R3                	// [25:3821]  
	     DS = seg(_Registered_Play_Status)	// [27:3821]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [28:3821]  Registered_Play_Status
	     R3 = DS:[R4]             	// [30:3821]  
	     R4 = SP + 3              	// [32:3821]  
	     [R4] = R3                	// [34:3821]  
	     call _Get_Num_Lowest_score	// [36:3821]  Get_Num_Lowest_score
BB2_PU39:	// 0x904
// BB:2 cycle count: 9
	     SP = SP + 3              	// [0:3821]  
	     [BP + 3] = R1            	// [1:3821]  temp
//3822     if(temp ==0) 

LM345:
	     .stabn 68,0,3822,LM345-_Tell_Scores
	     R4 = [BP + 3]            	// [2:3822]  temp
	     cmp R4, 0                	// [4:3822]  
	     jne L_39_12              	// [5:3822]  
BB3_PU39:	// 0x909
// BB:3 cycle count: 18
//3823     	{
//3824     	  PlayScoresFlag =0;

LM346:
	     .stabn 68,0,3824,LM346-_Tell_Scores
	     R3 = 0                   	// [0:3824]  
	     DS = seg(_PlayScoresFlag)	// [1:3824]  PlayScoresFlag
	     R4 = (_PlayScoresFlag)   	// [2:3824]  PlayScoresFlag
	     DS:[R4] = R3             	// [4:3824]  
//3825     	  Key_Event =0;

LM347:
	     .stabn 68,0,3825,LM347-_Tell_Scores
	     R3 = 0                   	// [6:3825]  
	     DS = seg(_Key_Event)     	// [7:3825]  Key_Event
	     R4 = (_Key_Event)        	// [8:3825]  Key_Event
	     DS:[R4] = R3             	// [10:3825]  
//3826     	  return;

LM348:
	     .stabn 68,0,3826,LM348-_Tell_Scores
	     SP = SP + 5              	// [12:3826]  
	     pop BP, PC from [SP]     	// [13:3826]  
L_39_12:	// 0x915
// BB:4 cycle count: 20
//3827     	}
//3828     	
//3829  //   ChangePlayerFlag =0;
//3830     
//3831     t_highest_Player = Leader_Player;

LM349:
	     .stabn 68,0,3831,LM349-_Tell_Scores
	     DS = seg(_Leader_Player) 	// [0:3831]  Leader_Player
	     R4 = (_Leader_Player)    	// [1:3831]  Leader_Player
	     R4 = DS:[R4]             	// [3:3831]  
	     [BP + 1] = R4            	// [5:3831]  t_highest_Player
//3832  
//3833     //BlinkFlag_Data_temp = BlinkFlag_Data;
//3834     
//3835     PlayScoresFlag =1;

LM350:
	     .stabn 68,0,3835,LM350-_Tell_Scores
	     R3 = 1                   	// [6:3835]  
	     DS = seg(_PlayScoresFlag)	// [7:3835]  PlayScoresFlag
	     R4 = (_PlayScoresFlag)   	// [8:3835]  PlayScoresFlag
	     DS:[R4] = R3             	// [10:3835]  
//3855  
//3856  
//3857    
//3858  
//3859        temp2= Registered_Play_Status;

LM351:
	     .stabn 68,0,3859,LM351-_Tell_Scores
	     DS = seg(_Registered_Play_Status)	// [12:3859]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [13:3859]  Registered_Play_Status
	     R4 = DS:[R4]             	// [15:3859]  
	     [BP + 4] = R4            	// [17:3859]  temp2
//3860  
//3861  	   i=0;

LM352:
	     .stabn 68,0,3861,LM352-_Tell_Scores
	     R4 = 0                   	// [18:3861]  
	     [BP + 2] = R4            	// [19:3861]  i
L_39_13:	// 0x926
// BB:5 cycle count: 7
//3862  	  
//3863  	  while(i<C_Player_Num)//C_Player_Num <16

LM353:
	     .stabn 68,0,3863,LM353-_Tell_Scores
	     R4 = [BP + 2]            	// [0:3863]  i
	     cmp R4, 9                	// [2:3863]  
	     jbe BB6_PU39             	// [3:3863]  
BB21_PU39:	// 0x929
// BB:21 cycle count: 3
	     goto L_39_14             	// [0:0]  
BB6_PU39:	// 0x92b
// BB:6 cycle count: 10
//3864  	  	{
//3865  	  		
//3866  	  	   if(Key_Event)

LM354:
	     .stabn 68,0,3866,LM354-_Tell_Scores
	     DS = seg(_Key_Event)     	// [0:3866]  Key_Event
	     R4 = (_Key_Event)        	// [1:3866]  Key_Event
	     R4 = DS:[R4]             	// [3:3866]  
	     cmp R4, 0                	// [5:3866]  
	     je L_39_15               	// [6:3866]  
BB7_PU39:	// 0x931
// BB:7 cycle count: 3
//3867         	     break;

LM355:
	     .stabn 68,0,3867,LM355-_Tell_Scores
	     goto Lt_39_1             	// [0:3867]  
L_39_15:	// 0x933
// BB:8 cycle count: 19
//3868  			
//3869  //			if(CurrentN>3)
//3870  //				break;
//3871  			
//3872  			temp = Get_Num_Lowest_score(Rounds,temp2);

LM356:
	     .stabn 68,0,3872,LM356-_Tell_Scores
	     SP = SP - 3              	// [0:3872]  
	     R2 = (_Rounds)           	// [1:3872]  Rounds
	     R3 = seg(_Rounds)        	// [3:3872]  Rounds
	     R4 = SP + 1              	// [4:3872]  
	     [R4++] = R2              	// [6:3872]  
	     [R4] = R3                	// [8:3872]  
	     R3 = [BP + 4]            	// [10:3872]  temp2
	     R4 = SP + 3              	// [12:3872]  
	     [R4] = R3                	// [14:3872]  
	     call _Get_Num_Lowest_score	// [16:3872]  Get_Num_Lowest_score
BB9_PU39:	// 0x941
// BB:9 cycle count: 14
	     SP = SP + 3              	// [0:3872]  
	     [BP + 3] = R1            	// [1:3872]  temp
//3873  			
//3874  //			if(Lowest_T>3)
//3875  //                break;
//3876  		
//3877  			if(Lowest_Player==temp2)  //最高分

LM357:
	     .stabn 68,0,3877,LM357-_Tell_Scores
	     R3 = [BP + 4]            	// [2:3877]  temp2
	     DS = seg(_Lowest_Player) 	// [4:3877]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [5:3877]  Lowest_Player
	     R4 = DS:[R4]             	// [7:3877]  
	     cmp R3, R4               	// [9:3877]  
	     jne L_39_16              	// [10:3877]  
BB10_PU39:	// 0x94a
// BB:10 cycle count: 27
//3889  //						// Light_all_off();
//3890  //				   	  }
//3891  //				   	  else 
//3892  				   	   {
//3893  				   	   	   Play_Serieplayer16bit(0,Lowest_Player,C_Play_StartAddr);

LM358:
	     .stabn 68,0,3893,LM358-_Tell_Scores
	     SP = SP - 4              	// [0:3893]  
	     R3 = 0                   	// [1:3893]  
	     R4 = SP + 1              	// [2:3893]  
	     [R4] = R3                	// [4:3893]  
	     DS = seg(_Lowest_Player) 	// [6:3893]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [7:3893]  Lowest_Player
	     R3 = DS:[R4]             	// [9:3893]  
	     R4 = SP + 2              	// [11:3893]  
	     [R4] = R3                	// [13:3893]  
	     R2 = 6000                	// [15:3893]  
	     R3 = 0                   	// [17:3893]  
	     R4 = SP + 3              	// [18:3893]  
	     [R4++] = R2              	// [20:3893]  
	     [R4] = R3                	// [22:3893]  
	     call _Play_Serieplayer16bit	// [24:3893]  Play_Serieplayer16bit
BB11_PU39:	// 0x95f
// BB:11 cycle count: 10
	     SP = SP + 3              	// [0:3893]  
//3894  	                       PlayA1800_Elements(A_VLMMREN_WinRound01);

LM359:
	     .stabn 68,0,3894,LM359-_Tell_Scores
	     R3 = 76                  	// [1:3894]  
	     R4 = SP + 1              	// [3:3894]  
	     [R4] = R3                	// [5:3894]  
	     call _PlayA1800_Elements 	// [7:3894]  PlayA1800_Elements
BB12_PU39:	// 0x967
// BB:12 cycle count: 19
	     SP = SP - 1              	// [0:3894]  
//3895  					  
//3896  
//3897  				    	    Play_Seq(Lowest_T,C_RoundsTable);//PlayScores(Higgest_T);

LM360:
	     .stabn 68,0,3897,LM360-_Tell_Scores
	     DS = seg(_Lowest_T)      	// [1:3897]  Lowest_T
	     R4 = (_Lowest_T)         	// [2:3897]  Lowest_T
	     R3 = DS:[R4]             	// [4:3897]  
	     R4 = SP + 1              	// [6:3897]  
	     [R4] = R3                	// [8:3897]  
	     R3 = 13050               	// [10:3897]  
	     R4 = SP + 2              	// [12:3897]  
	     [R4] = R3                	// [14:3897]  
	     call _Play_Seq           	// [16:3897]  Play_Seq
BB13_PU39:	// 0x976
// BB:13 cycle count: 5
	     SP = SP + 2              	// [0:3897]  
//3898  				   	   	 }
//3899  				   	   	 
//3900  				   	  	 //Light_all_off();
//3901  					   
//3902  				    break;

LM361:
	     .stabn 68,0,3902,LM361-_Tell_Scores
	     jmp Lt_39_1              	// [1:3902]  
L_39_16:	// 0x978
// BB:14 cycle count: 27
//3903  
//3904  				 }
//3905  				
//3906  
//3907  			     Play_Serieplayer16bit(0,Lowest_Player,C_Play_StartAddr);//Play_Activeplayer(1,Lowest_Player,0);  

LM362:
	     .stabn 68,0,3907,LM362-_Tell_Scores
	     SP = SP - 4              	// [0:3907]  
	     R3 = 0                   	// [1:3907]  
	     R4 = SP + 1              	// [2:3907]  
	     [R4] = R3                	// [4:3907]  
	     DS = seg(_Lowest_Player) 	// [6:3907]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [7:3907]  Lowest_Player
	     R3 = DS:[R4]             	// [9:3907]  
	     R4 = SP + 2              	// [11:3907]  
	     [R4] = R3                	// [13:3907]  
	     R2 = 6000                	// [15:3907]  
	     R3 = 0                   	// [17:3907]  
	     R4 = SP + 3              	// [18:3907]  
	     [R4++] = R2              	// [20:3907]  
	     [R4] = R3                	// [22:3907]  
	     call _Play_Serieplayer16bit	// [24:3907]  Play_Serieplayer16bit
BB15_PU39:	// 0x98d
// BB:15 cycle count: 10
	     SP = SP + 3              	// [0:3907]  
//3908  			     
//3909  //			   if(temp>1)    
//3910  //			     PlayA1800_Elements(A_VLMMREN_WinRound01b);
//3911  //			   else
//3912  			     PlayA1800_Elements(A_VLMMREN_WinRound01);

LM363:
	     .stabn 68,0,3912,LM363-_Tell_Scores
	     R3 = 76                  	// [1:3912]  
	     R4 = SP + 1              	// [3:3912]  
	     [R4] = R3                	// [5:3912]  
	     call _PlayA1800_Elements 	// [7:3912]  PlayA1800_Elements
BB16_PU39:	// 0x995
// BB:16 cycle count: 19
	     SP = SP - 1              	// [0:3912]  
//3913  										   
//3914  
//3915  	    	   
//3916  	    	    Play_Seq(Lowest_T,C_RoundsTable);//PlayScores(Higgest_T);

LM364:
	     .stabn 68,0,3916,LM364-_Tell_Scores
	     DS = seg(_Lowest_T)      	// [1:3916]  Lowest_T
	     R4 = (_Lowest_T)         	// [2:3916]  Lowest_T
	     R3 = DS:[R4]             	// [4:3916]  
	     R4 = SP + 1              	// [6:3916]  
	     [R4] = R3                	// [8:3916]  
	     R3 = 13050               	// [10:3916]  
	     R4 = SP + 2              	// [12:3916]  
	     [R4] = R3                	// [14:3916]  
	     call _Play_Seq           	// [16:3916]  Play_Seq
BB17_PU39:	// 0x9a4
// BB:17 cycle count: 18
	     SP = SP + 2              	// [0:3916]  
//3919  
//3920                //Light_all_off();
//3921  			 
//3922  			  
//3923               temp2 = temp2 &(~Lowest_Player);

LM365:
	     .stabn 68,0,3923,LM365-_Tell_Scores
	     DS = seg(_Lowest_Player) 	// [1:3923]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [2:3923]  Lowest_Player
	     R4 = DS:[R4]             	// [4:3923]  
	     R4 = R4 ^ 65535          	// [6:3923]  
	     R4 = R4 & [BP + 4]       	// [8:3923]  temp2
	     [BP + 4] = R4            	// [10:3923]  temp2
//3924               
//3925               if(temp2 ==0)

LM366:
	     .stabn 68,0,3925,LM366-_Tell_Scores
	     R4 = [BP + 4]            	// [11:3925]  temp2
	     cmp R4, 0                	// [13:3925]  
	     jne L_39_17              	// [14:3925]  
BB18_PU39:	// 0x9b0
// BB:18 cycle count: 4
//3926               	 break;

LM367:
	     .stabn 68,0,3926,LM367-_Tell_Scores
	     jmp Lt_39_1              	// [0:3926]  
L_39_17:	// 0x9b1
// BB:19 cycle count: 7
//3927               
//3928  			 i++;

LM368:
	     .stabn 68,0,3928,LM368-_Tell_Scores
	     R4 = [BP + 2]            	// [0:3928]  i
	     R4 = R4 + 1              	// [2:3928]  
	     [BP + 2] = R4            	// [3:3928]  i
	     goto L_39_13             	// [4:3928]  
L_39_14:	// 0x9b6
Lt_39_1:	// 0x9b6
// BB:20 cycle count: 12
//3932  	  	}
//3933  
//3934  
//3935  
//3936     PlayScoresFlag =0;

LM369:
	     .stabn 68,0,3936,LM369-_Tell_Scores
	     R3 = 0                   	// [0:3936]  
	     DS = seg(_PlayScoresFlag)	// [1:3936]  PlayScoresFlag
	     R4 = (_PlayScoresFlag)   	// [2:3936]  PlayScoresFlag
	     DS:[R4] = R3             	// [4:3936]  
	     SP = SP + 5              	// [6:3936]  
	     pop BP, PC from [SP]     	// [7:3936]  
LBE39:
	.endp	
	     .stabs "Final_Scorefalg:p4",160,0,0,8
	     .stabn 192,0,0,LBB39-_Tell_Scores
	     .stabs "temp:4",128,0,0,3
	     .stabs "temp2:4",128,0,0,4
	     .stabs "t_lowest_Player:4",128,0,0,0
	     .stabs "t_highest_Player:4",128,0,0,1
	     .stabs "i:4",128,0,0,2
	     .stabn 224,0,0,LBE39-_Tell_Scores
LME40:
	     .stabf LME40-_Tell_Scores
.code
	     .stabs "Key_CheckScores:F4",36,0,0,_Key_CheckScores

	// Program Unit: Key_CheckScores
.public	_Key_CheckScores
_Key_CheckScores: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//3940  
//3941  /***********************************************************
//3942  *********************************************************/
//3943  unsigned Key_CheckScores()
//3944  {

LM370:
	     .stabn 68,0,3944,LM370-_Key_CheckScores
BB1_PU40:	// 0x9bd
// BB:1 cycle count: 19
	     push BP to [SP]          	// [0:3944]  
	     BP = SP + 1              	// [2:3944]  
//3945  //	unsigned int FiveSec_cnt_temp;
//3946  	
//3947  //    FiveSec_cnt_temp = FiveSec_cnt;	 
//3948  
//3949       Key_Event =0;

LM371:
	     .stabn 68,0,3949,LM371-_Key_CheckScores
	     R3 = 0                   	// [4:3949]  
	     DS = seg(_Key_Event)     	// [5:3949]  Key_Event
	     R4 = (_Key_Event)        	// [6:3949]  Key_Event
	     DS:[R4] = R3             	// [8:3949]  
//3950       Key_activeflag = Playbutton;

LM372:
	     .stabn 68,0,3950,LM372-_Key_CheckScores
	     R3 = 1                   	// [10:3950]  
	     DS = seg(_Key_activeflag)	// [11:3950]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [12:3950]  Key_activeflag
	     DS:[R4] = R3             	// [14:3950]  
//3951  
//3952  
//3953     Light_all_off();

LM373:
	     .stabn 68,0,3953,LM373-_Key_CheckScores
	     call _Light_all_off      	// [16:3953]  Light_all_off
BB2_PU40:	// 0x9cc
// BB:2 cycle count: 15
//3954     BlinkFlag_Data = All_Led_data;

LM374:
	     .stabn 68,0,3954,LM374-_Key_CheckScores
	     R3 = 15                  	// [0:3954]  
	     DS = seg(_BlinkFlag_Data)	// [1:3954]  BlinkFlag_Data
	     R4 = (_BlinkFlag_Data)   	// [2:3954]  BlinkFlag_Data
	     DS:[R4] = R3             	// [4:3954]  
//3955  
//3956  
//3957     //CurrentN =0;
//3958     //PlayA1800_Elements(SFX_Score);
//3959     delay_time(8);	

LM375:
	     .stabn 68,0,3959,LM375-_Key_CheckScores
	     SP = SP - 1              	// [6:3959]  
	     R3 = 8                   	// [7:3959]  
	     R4 = SP + 1              	// [8:3959]  
	     [R4] = R3                	// [10:3959]  
	     call _delay_time         	// [12:3959]  delay_time
BB3_PU40:	// 0x9d8
// BB:3 cycle count: 9
//3960     PlayA1800_Elements(A_VLMMREN_Score_01);

LM376:
	     .stabn 68,0,3960,LM376-_Key_CheckScores
	     R3 = 65                  	// [0:3960]  
	     R4 = SP + 1              	// [2:3960]  
	     [R4] = R3                	// [4:3960]  
	     call _PlayA1800_Elements 	// [6:3960]  PlayA1800_Elements
BB4_PU40:	// 0x9df
// BB:4 cycle count: 8
//3961     delay_time(8); 

LM377:
	     .stabn 68,0,3961,LM377-_Key_CheckScores
	     R3 = 8                   	// [0:3961]  
	     R4 = SP + 1              	// [1:3961]  
	     [R4] = R3                	// [3:3961]  
	     call _delay_time         	// [5:3961]  delay_time
BB5_PU40:	// 0x9e5
// BB:5 cycle count: 8
//3962     
//3963  
//3964  	Tell_Scores(0);

LM378:
	     .stabn 68,0,3964,LM378-_Key_CheckScores
	     R3 = 0                   	// [0:3964]  
	     R4 = SP + 1              	// [1:3964]  
	     [R4] = R3                	// [3:3964]  
	     call _Tell_Scores        	// [5:3964]  Tell_Scores
BB6_PU40:	// 0x9eb
// BB:6 cycle count: 11
	     SP = SP + 1              	// [0:3964]  
//3965  	
//3966     if((PlayQuestionflag)||(TwoKeyflag == 0xffff))	

LM379:
	     .stabn 68,0,3966,LM379-_Key_CheckScores
	     DS = seg(_PlayQuestionflag)	// [1:3966]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [2:3966]  PlayQuestionflag
	     R4 = DS:[R4]             	// [4:3966]  
	     cmp R4, 0                	// [6:3966]  
	     jne L_40_2               	// [7:3966]  
BB7_PU40:	// 0x9f2
// BB:7 cycle count: 11
	     DS = seg(_TwoKeyflag)    	// [0:3966]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [1:3966]  TwoKeyflag
	     R4 = DS:[R4]             	// [3:3966]  
	     cmp R4, 65535            	// [5:3966]  
	     jne L_40_1               	// [7:3966]  
L_40_2:	// 0x9f9
// BB:8 cycle count: 6
//3967  	   PauseFlag =2;

LM380:
	     .stabn 68,0,3967,LM380-_Key_CheckScores
	     R3 = 2                   	// [0:3967]  
	     DS = seg(_PauseFlag)     	// [1:3967]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:3967]  PauseFlag
	     DS:[R4] = R3             	// [4:3967]  
L_40_1:	// 0x9fe
// BB:9 cycle count: 9
//3970  //
//3971  //     FiveSec_cnt = temp_FiveSec_cnt; 
//3972  
//3973     
//3974        BlinkFlag_Data =0;

LM381:
	     .stabn 68,0,3974,LM381-_Key_CheckScores
	     R3 = 0                   	// [0:3974]  
	     DS = seg(_BlinkFlag_Data)	// [1:3974]  BlinkFlag_Data
	     R4 = (_BlinkFlag_Data)   	// [2:3974]  BlinkFlag_Data
	     DS:[R4] = R3             	// [4:3974]  
//3975  	  Light_all_off();

LM382:
	     .stabn 68,0,3975,LM382-_Key_CheckScores
	     call _Light_all_off      	// [6:3975]  Light_all_off
BB10_PU40:	// 0xa05
// BB:10 cycle count: 12
//3976  	  
//3977  	  Key_Event =0;

LM383:
	     .stabn 68,0,3977,LM383-_Key_CheckScores
	     R3 = 0                   	// [0:3977]  
	     DS = seg(_Key_Event)     	// [1:3977]  Key_Event
	     R4 = (_Key_Event)        	// [2:3977]  Key_Event
	     DS:[R4] = R3             	// [4:3977]  
//3978  	  return 0xffff;

LM384:
	     .stabn 68,0,3978,LM384-_Key_CheckScores
	     R1 = - 1                 	// [6:3978]  
	     pop BP, PC from [SP]     	// [7:3978]  
	.endp	
LME41:
	     .stabf LME41-_Key_CheckScores
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
	// lra_spill_temp_17 = 2
	// lra_spill_temp_18 = 3
//4223  
//4224  /****************************************************
//4225  *******************************************************/
//4226  void Sub_QuestionAsked()
//4227  {

LM385:
	     .stabn 68,0,4227,LM385-_Sub_QuestionAsked
BB1_PU41:	// 0xa0c
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4227]  
	     SP = SP - 4              	// [2:4227]  
	     BP = SP + 1              	// [3:4227]  
LBB40:
//4228     unsigned int i;
//4229  
//4230  		    i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM386:
	     .stabn 68,0,4230,LM386-_Sub_QuestionAsked
	     R4 = 0                   	// [5:4230]  
	     [BP + 0] = R4            	// [6:4230]  i
L_41_1:	// 0xa12
// BB:2 cycle count: 12
//4231  			while(i<R_QuestionNum)

LM387:
	     .stabn 68,0,4231,LM387-_Sub_QuestionAsked
	     R3 = [BP + 0]            	// [0:4231]  i
	     DS = seg(_R_QuestionNum) 	// [2:4231]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [3:4231]  R_QuestionNum
	     R4 = DS:[R4]             	// [5:4231]  
	     cmp R3, R4               	// [7:4231]  
	     jb BB3_PU41              	// [8:4231]  
BB8_PU41:	// 0xa19
// BB:8 cycle count: 3
	     goto L_41_2              	// [0:0]  
BB3_PU41:	// 0xa1b
// BB:3 cycle count: 33
//4232  			{
//4233  
//4234                if((BitMap[i%16]&QuestionStatus_Asked[i/16])==0)

LM388:
	     .stabn 68,0,4234,LM388-_Sub_QuestionAsked
	     R4 = [BP + 0]            	// [0:4234]  i
	     R4 = R4 & 15             	// [2:4234]  
	     R3 = 0                   	// [3:4234]  
	     R1 = (_BitMap)           	// [4:4234]  BitMap
	     R2 = seg(_BitMap)        	// [6:4234]  BitMap
	     R4 = R4 + R1             	// [7:4234]  
	     R3 = R3 + R2, Carry      	// [8:4234]  
	     DS = R3                  	// [9:4234]  
	     R4 = DS:[R4]             	// [10:4234]  
	     [BP + 2] = R4            	// [12:4234]  lra_spill_temp_17
	     R4 = [BP + 0]            	// [13:4234]  i
	     R4 = R4 lsr 4            	// [15:4234]  
	     R3 = 0                   	// [16:4234]  
	     R1 = (_QuestionStatus_Asked)	// [17:4234]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [19:4234]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [20:4234]  
	     R3 = R3 + R2, Carry      	// [21:4234]  
	     DS = R3                  	// [22:4234]  
	     R3 = DS:[R4]             	// [23:4234]  
	     R4 = [BP + 2]            	// [25:4234]  lra_spill_temp_17
	     R4 = R4 & R3             	// [27:4234]  
	     cmp R4, 0                	// [28:4234]  
	     jne L_41_3               	// [29:4234]  
BB4_PU41:	// 0xa34
// BB:4 cycle count: 47
//4235                	{
//4236                             
//4237                     QuestionStatus_LQA[i/16]&=~BitMap[i%16];

LM389:
	     .stabn 68,0,4237,LM389-_Sub_QuestionAsked
	     R4 = [BP + 0]            	// [0:4237]  i
	     R4 = R4 lsr 4            	// [2:4237]  
	     [BP + 1] = R4            	// [3:4237]  __save_expr_temp_6
	     R4 = [BP + 1]            	// [4:4237]  __save_expr_temp_6
	     R3 = 0                   	// [6:4237]  
	     R1 = (_QuestionStatus_LQA)	// [7:4237]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [9:4237]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [10:4237]  
	     R3 = R3 + R2, Carry      	// [11:4237]  
	     DS = R3                  	// [12:4237]  
	     R4 = DS:[R4]             	// [13:4237]  
	     [BP + 2] = R4            	// [15:4237]  lra_spill_temp_17
	     R4 = [BP + 0]            	// [16:4237]  i
	     R4 = R4 & 15             	// [18:4237]  
	     R3 = 0                   	// [19:4237]  
	     R1 = (_BitMap)           	// [20:4237]  BitMap
	     R2 = seg(_BitMap)        	// [22:4237]  BitMap
	     R4 = R4 + R1             	// [23:4237]  
	     R3 = R3 + R2, Carry      	// [24:4237]  
	     DS = R3                  	// [25:4237]  
	     R4 = DS:[R4]             	// [26:4237]  
	     R3 = R4 ^ 65535          	// [28:4237]  
	     R4 = [BP + 2]            	// [30:4237]  lra_spill_temp_17
	     R4 = R4 & R3             	// [32:4237]  
	     [BP + 3] = R4            	// [33:4237]  lra_spill_temp_18
	     R4 = [BP + 1]            	// [34:4237]  __save_expr_temp_6
	     R3 = 0                   	// [36:4237]  
	     R1 = (_QuestionStatus_LQA)	// [37:4237]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [39:4237]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [40:4237]  
	     R3 = R3 + R2, Carry      	// [41:4237]  
	     DS = R3                  	// [42:4237]  
	     R3 = [BP + 3]            	// [43:4237]  lra_spill_temp_18
	     DS:[R4] = R3             	// [45:4237]  
L_41_3:	// 0xa5a
// BB:5 cycle count: 7
//4238                    // QuestionStatus_NoAnswer[i/16]&=~BitMap[i%16];
//4239                	}
//4240  			
//4241  				i++;	

LM390:
	     .stabn 68,0,4241,LM390-_Sub_QuestionAsked
	     R4 = [BP + 0]            	// [0:4241]  i
	     R4 = R4 + 1              	// [2:4241]  
	     [BP + 0] = R4            	// [3:4241]  i
	     goto L_41_1              	// [4:4241]  
L_41_2:	// 0xa5f
// BB:6 cycle count: 3
//4242  						
//4243  			}   
//4244  
//4245          WatchdogClear();

LM391:
	     .stabn 68,0,4245,LM391-_Sub_QuestionAsked
	     call _WatchdogClear      	// [0:4245]  WatchdogClear
BB7_PU41:	// 0xa61
// BB:7 cycle count: 6
	     SP = SP + 4              	// [0:4245]  
	     pop BP, PC from [SP]     	// [1:4245]  
LBE40:
	.endp	
	     .stabn 192,0,0,LBB40-_Sub_QuestionAsked
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE40-_Sub_QuestionAsked
LME42:
	     .stabf LME42-_Sub_QuestionAsked
.code
	     .stabs "Reset_Pselected:F18",36,0,0,_Reset_Pselected

	// Program Unit: Reset_Pselected
.public	_Reset_Pselected
_Reset_Pselected: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//4246  }
//4247  
//4248  
//4249  void  Reset_Pselected()  
//4250  {

LM392:
	     .stabn 68,0,4250,LM392-_Reset_Pselected
BB1_PU42:	// 0xa63
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4250]  
	     SP = SP - 1              	// [2:4250]  
	     BP = SP + 1              	// [3:4250]  
LBB41:
//4251       unsigned int i;
//4252    
//4253        i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM393:
	     .stabn 68,0,4253,LM393-_Reset_Pselected
	     R4 = 0                   	// [5:4253]  
	     [BP + 0] = R4            	// [6:4253]  i
L_42_1:	// 0xa69
// BB:2 cycle count: 7
//4254  		while(i<C_ElementsRAM)

LM394:
	     .stabn 68,0,4254,LM394-_Reset_Pselected
	     R4 = [BP + 0]            	// [0:4254]  i
	     cmp R4, 1                	// [2:4254]  
	     ja L_42_2                	// [3:4254]  
BB3_PU42:	// 0xa6c
// BB:3 cycle count: 20
//4255  		{			
//4256  			Pselected[i] =0;

LM395:
	     .stabn 68,0,4256,LM395-_Reset_Pselected
	     R4 = [BP + 0]            	// [0:4256]  i
	     R3 = 0                   	// [2:4256]  
	     R1 = (_Pselected)        	// [3:4256]  Pselected
	     R2 = seg(_Pselected)     	// [5:4256]  Pselected
	     R4 = R4 + R1             	// [6:4256]  
	     R3 = R3 + R2, Carry      	// [7:4256]  
	     DS = R3                  	// [8:4256]  
	     R3 = 0                   	// [9:4256]  
	     DS:[R4] = R3             	// [10:4256]  
//4257  			i++;	

LM396:
	     .stabn 68,0,4257,LM396-_Reset_Pselected
	     R4 = [BP + 0]            	// [12:4257]  i
	     R4 = R4 + 1              	// [14:4257]  
	     [BP + 0] = R4            	// [15:4257]  i
	     jmp L_42_1               	// [16:4257]  
L_42_2:	// 0xa7a
// BB:4 cycle count: 6
	     SP = SP + 1              	// [0:4257]  
	     pop BP, PC from [SP]     	// [1:4257]  
LBE41:
	.endp	
	     .stabn 192,0,0,LBB41-_Reset_Pselected
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE41-_Reset_Pselected
LME43:
	     .stabf LME43-_Reset_Pselected
.code
	     .stabs "Rest_LQ_LQA:F18",36,0,0,_Rest_LQ_LQA

	// Program Unit: Rest_LQ_LQA
.public	_Rest_LQ_LQA
_Rest_LQ_LQA: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//4264  
//4265  /**********************************************************
//4266  *************************************************************/
//4267  void Rest_LQ_LQA()
//4268  {

LM397:
	     .stabn 68,0,4268,LM397-_Rest_LQ_LQA
BB1_PU43:	// 0xa7c
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4268]  
	     SP = SP - 1              	// [2:4268]  
	     BP = SP + 1              	// [3:4268]  
LBB42:
//4269        unsigned i;
//4270  
//4271  		i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM398:
	     .stabn 68,0,4271,LM398-_Rest_LQ_LQA
	     R4 = 0                   	// [5:4271]  
	     [BP + 0] = R4            	// [6:4271]  i
L_43_1:	// 0xa82
// BB:2 cycle count: 7
//4272  		while(i<C_QuestionRAM)

LM399:
	     .stabn 68,0,4272,LM399-_Rest_LQ_LQA
	     R4 = [BP + 0]            	// [0:4272]  i
	     cmp R4, 19               	// [2:4272]  
	     ja L_43_2                	// [3:4272]  
BB3_PU43:	// 0xa85
// BB:3 cycle count: 32
//4273  		{
//4274  			QuestionStatus_LQA[i] = 0xFFFF;

LM400:
	     .stabn 68,0,4274,LM400-_Rest_LQ_LQA
	     R4 = [BP + 0]            	// [0:4274]  i
	     R3 = 0                   	// [2:4274]  
	     R1 = (_QuestionStatus_LQA)	// [3:4274]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [5:4274]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [6:4274]  
	     R3 = R3 + R2, Carry      	// [7:4274]  
	     DS = R3                  	// [8:4274]  
	     R3 = - 1                 	// [9:4274]  
	     DS:[R4] = R3             	// [10:4274]  
//4275  			QuestionStatus_LQ[i] = 0xFFFF;

LM401:
	     .stabn 68,0,4275,LM401-_Rest_LQ_LQA
	     R4 = [BP + 0]            	// [12:4275]  i
	     R3 = 0                   	// [14:4275]  
	     R1 = (_QuestionStatus_LQ)	// [15:4275]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [17:4275]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [18:4275]  
	     R3 = R3 + R2, Carry      	// [19:4275]  
	     DS = R3                  	// [20:4275]  
	     R3 = - 1                 	// [21:4275]  
	     DS:[R4] = R3             	// [22:4275]  
//4276  			//QuestionStatus_NoAnswer[i] = 0xffff;
//4277  			i++;	

LM402:
	     .stabn 68,0,4277,LM402-_Rest_LQ_LQA
	     R4 = [BP + 0]            	// [24:4277]  i
	     R4 = R4 + 1              	// [26:4277]  
	     [BP + 0] = R4            	// [27:4277]  i
	     jmp L_43_1               	// [28:4277]  
L_43_2:	// 0xa9d
// BB:4 cycle count: 15
//4278  					
//4279  		}
//4280  	
//4281  	
//4282  		LQA = R_QuestionNum;//Get_LQA();//R_QuestionNum;//

LM403:
	     .stabn 68,0,4282,LM403-_Rest_LQ_LQA
	     DS = seg(_R_QuestionNum) 	// [0:4282]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [1:4282]  R_QuestionNum
	     R3 = DS:[R4]             	// [3:4282]  
	     DS = seg(_LQA)           	// [5:4282]  LQA
	     R4 = (_LQA)              	// [6:4282]  LQA
	     DS:[R4] = R3             	// [8:4282]  
	//;;
	INT OFF
	//;;
//4283  		
//4284  		
//4285  		   __asm("INT OFF");
//4286        MoveSPIDriverToRAM();		

LM404:
	     .stabn 68,0,4286,LM404-_Rest_LQ_LQA
	     call _MoveSPIDriverToRAM 	// [12:4286]  MoveSPIDriverToRAM
BB5_PU43:	// 0xaaa
// BB:5 cycle count: 15
//4287        SPI_Flash_Sector_Erase(T_LQ_Secter_L,T_LQ_Secter_H);

LM405:
	     .stabn 68,0,4287,LM405-_Rest_LQ_LQA
	     SP = SP - 2              	// [0:4287]  
	     R3 = - 12288             	// [1:4287]  
	     R4 = SP + 1              	// [3:4287]  
	     [R4] = R3                	// [5:4287]  
	     R3 = 31                  	// [7:4287]  
	     R4 = SP + 2              	// [8:4287]  
	     [R4] = R3                	// [10:4287]  
	     call _SPI_Flash_Sector_Erase	// [12:4287]  SPI_Flash_Sector_Erase
BB6_PU43:	// 0xab6
// BB:6 cycle count: 29
	     SP = SP - 3              	// [0:4287]  
//4288        SPI_Flash_SendNWords(QuestionStatus_LQ,C_QuestionRAM,T_LQ_Secter_L,T_LQ_Secter_H);

LM406:
	     .stabn 68,0,4288,LM406-_Rest_LQ_LQA
	     R2 = (_QuestionStatus_LQ)	// [1:4288]  QuestionStatus_LQ
	     R3 = seg(_QuestionStatus_LQ)	// [3:4288]  QuestionStatus_LQ
	     R4 = SP + 1              	// [4:4288]  
	     [R4++] = R2              	// [6:4288]  
	     [R4] = R3                	// [8:4288]  
	     R3 = 20                  	// [10:4288]  
	     R4 = SP + 3              	// [11:4288]  
	     [R4] = R3                	// [13:4288]  
	     R3 = - 12288             	// [15:4288]  
	     R4 = SP + 4              	// [17:4288]  
	     [R4] = R3                	// [19:4288]  
	     R3 = 31                  	// [21:4288]  
	     R4 = SP + 5              	// [22:4288]  
	     [R4] = R3                	// [24:4288]  
	     call _SPI_Flash_SendNWords	// [26:4288]  SPI_Flash_SendNWords
BB7_PU43:	// 0xacd
// BB:7 cycle count: 8
	     SP = SP + 6              	// [0:4288]  
	//;;
	INT FIQ,IRQ
	//;;
//4289        
//4290          __asm("INT FIQ,IRQ");	

LM407:
	     .stabn 68,0,4290,LM407-_Rest_LQ_LQA
	     pop BP, PC from [SP]     	// [3:4290]  
LBE42:
	.endp	
	     .stabn 192,0,0,LBB42-_Rest_LQ_LQA
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE42-_Rest_LQ_LQA
LME44:
	     .stabf LME44-_Rest_LQ_LQA
.code
	     .stabs "Rest_LQA:F18",36,0,0,_Rest_LQA

	// Program Unit: Rest_LQA
.public	_Rest_LQA
_Rest_LQA: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//4295  
//4296  /**********************************************************
//4297  *************************************************************/
//4298  void Rest_LQA()
//4299  {

LM408:
	     .stabn 68,0,4299,LM408-_Rest_LQA
BB1_PU44:	// 0xacc
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4299]  
	     SP = SP - 1              	// [2:4299]  
	     BP = SP + 1              	// [3:4299]  
LBB43:
//4300        unsigned i;
//4301  
//4302  		i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM409:
	     .stabn 68,0,4302,LM409-_Rest_LQA
	     R4 = 0                   	// [5:4302]  
	     [BP + 0] = R4            	// [6:4302]  i
L_44_1:	// 0xad2
// BB:2 cycle count: 7
//4303  		while(i<C_QuestionRAM)

LM410:
	     .stabn 68,0,4303,LM410-_Rest_LQA
	     R4 = [BP + 0]            	// [0:4303]  i
	     cmp R4, 19               	// [2:4303]  
	     ja L_44_2                	// [3:4303]  
BB3_PU44:	// 0xad5
// BB:3 cycle count: 20
//4304  		{
//4305  			QuestionStatus_LQA[i] = 0xFFFF;

LM411:
	     .stabn 68,0,4305,LM411-_Rest_LQA
	     R4 = [BP + 0]            	// [0:4305]  i
	     R3 = 0                   	// [2:4305]  
	     R1 = (_QuestionStatus_LQA)	// [3:4305]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [5:4305]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [6:4305]  
	     R3 = R3 + R2, Carry      	// [7:4305]  
	     DS = R3                  	// [8:4305]  
	     R3 = - 1                 	// [9:4305]  
	     DS:[R4] = R3             	// [10:4305]  
//4306  			i++;	

LM412:
	     .stabn 68,0,4306,LM412-_Rest_LQA
	     R4 = [BP + 0]            	// [12:4306]  i
	     R4 = R4 + 1              	// [14:4306]  
	     [BP + 0] = R4            	// [15:4306]  i
	     jmp L_44_1               	// [16:4306]  
L_44_2:	// 0xae3
// BB:4 cycle count: 16
//4307  					
//4308  		}	
//4309  	
//4310  		LQA = R_QuestionNum;//Get_LQA();//R_QuestionNum;//

LM413:
	     .stabn 68,0,4310,LM413-_Rest_LQA
	     DS = seg(_R_QuestionNum) 	// [0:4310]  R_QuestionNum
	     R4 = (_R_QuestionNum)    	// [1:4310]  R_QuestionNum
	     R3 = DS:[R4]             	// [3:4310]  
	     DS = seg(_LQA)           	// [5:4310]  LQA
	     R4 = (_LQA)              	// [6:4310]  LQA
	     DS:[R4] = R3             	// [8:4310]  
	     SP = SP + 1              	// [10:4310]  
	     pop BP, PC from [SP]     	// [11:4310]  
LBE43:
	.endp	
	     .stabn 192,0,0,LBB43-_Rest_LQA
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE43-_Rest_LQA
LME45:
	     .stabf LME45-_Rest_LQA
.code
	     .stabs "Rest_Question_Asked:F18",36,0,0,_Rest_Question_Asked

	// Program Unit: Rest_Question_Asked
.public	_Rest_Question_Asked
_Rest_Question_Asked: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//4313  }
//4314  /**********************************************************
//4315  *************************************************************/
//4316  void Rest_Question_Asked()
//4317  {

LM414:
	     .stabn 68,0,4317,LM414-_Rest_Question_Asked
BB1_PU45:	// 0xaed
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4317]  
	     SP = SP - 1              	// [2:4317]  
	     BP = SP + 1              	// [3:4317]  
LBB44:
//4318        unsigned i;
//4319  
//4320  		i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM415:
	     .stabn 68,0,4320,LM415-_Rest_Question_Asked
	     R4 = 0                   	// [5:4320]  
	     [BP + 0] = R4            	// [6:4320]  i
L_45_1:	// 0xaf3
// BB:2 cycle count: 7
//4321  		while(i<C_QuestionRAM)

LM416:
	     .stabn 68,0,4321,LM416-_Rest_Question_Asked
	     R4 = [BP + 0]            	// [0:4321]  i
	     cmp R4, 19               	// [2:4321]  
	     ja L_45_2                	// [3:4321]  
BB3_PU45:	// 0xaf6
// BB:3 cycle count: 20
//4322  		{
//4323  			QuestionStatus_Asked[i] = 0xffff;

LM417:
	     .stabn 68,0,4323,LM417-_Rest_Question_Asked
	     R4 = [BP + 0]            	// [0:4323]  i
	     R3 = 0                   	// [2:4323]  
	     R1 = (_QuestionStatus_Asked)	// [3:4323]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [5:4323]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [6:4323]  
	     R3 = R3 + R2, Carry      	// [7:4323]  
	     DS = R3                  	// [8:4323]  
	     R3 = - 1                 	// [9:4323]  
	     DS:[R4] = R3             	// [10:4323]  
//4324  			//QuestionStatus_NoAnswer[i] = 0xffff;
//4325  			i++;	

LM418:
	     .stabn 68,0,4325,LM418-_Rest_Question_Asked
	     R4 = [BP + 0]            	// [12:4325]  i
	     R4 = R4 + 1              	// [14:4325]  
	     [BP + 0] = R4            	// [15:4325]  i
	     jmp L_45_1               	// [16:4325]  
L_45_2:	// 0xb04
// BB:4 cycle count: 5
	//;;
	INT OFF
	//;;
//4326  					
//4327  		}
//4328  	
//4329  	   __asm("INT OFF");
//4330        MoveSPIDriverToRAM();		     

LM419:
	     .stabn 68,0,4330,LM419-_Rest_Question_Asked
	     call _MoveSPIDriverToRAM 	// [2:4330]  MoveSPIDriverToRAM
BB5_PU45:	// 0xb09
// BB:5 cycle count: 15
//4331        SPI_Flash_Sector_Erase(T_Asked_Secter_L,T_Asked_Secter_H);

LM420:
	     .stabn 68,0,4331,LM420-_Rest_Question_Asked
	     SP = SP - 2              	// [0:4331]  
	     R3 = - 4096              	// [1:4331]  
	     R4 = SP + 1              	// [3:4331]  
	     [R4] = R3                	// [5:4331]  
	     R3 = 31                  	// [7:4331]  
	     R4 = SP + 2              	// [8:4331]  
	     [R4] = R3                	// [10:4331]  
	     call _SPI_Flash_Sector_Erase	// [12:4331]  SPI_Flash_Sector_Erase
BB6_PU45:	// 0xb15
// BB:6 cycle count: 29
	     SP = SP - 3              	// [0:4331]  
//4332        SPI_Flash_SendNWords(QuestionStatus_Asked,C_QuestionRAM,T_Asked_Secter_L,T_Asked_Secter_H);   

LM421:
	     .stabn 68,0,4332,LM421-_Rest_Question_Asked
	     R2 = (_QuestionStatus_Asked)	// [1:4332]  QuestionStatus_Asked
	     R3 = seg(_QuestionStatus_Asked)	// [3:4332]  QuestionStatus_Asked
	     R4 = SP + 1              	// [4:4332]  
	     [R4++] = R2              	// [6:4332]  
	     [R4] = R3                	// [8:4332]  
	     R3 = 20                  	// [10:4332]  
	     R4 = SP + 3              	// [11:4332]  
	     [R4] = R3                	// [13:4332]  
	     R3 = - 4096              	// [15:4332]  
	     R4 = SP + 4              	// [17:4332]  
	     [R4] = R3                	// [19:4332]  
	     R3 = 31                  	// [21:4332]  
	     R4 = SP + 5              	// [22:4332]  
	     [R4] = R3                	// [24:4332]  
	     call _SPI_Flash_SendNWords	// [26:4332]  SPI_Flash_SendNWords
BB7_PU45:	// 0xb2c
// BB:7 cycle count: 8
	     SP = SP + 6              	// [0:4332]  
	//;;
	INT FIQ,IRQ
	//;;
//4333        
//4334          __asm("INT FIQ,IRQ");	

LM422:
	     .stabn 68,0,4334,LM422-_Rest_Question_Asked
	     pop BP, PC from [SP]     	// [3:4334]  
LBE44:
	.endp	
	     .stabn 192,0,0,LBB44-_Rest_Question_Asked
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE44-_Rest_Question_Asked
LME46:
	     .stabf LME46-_Rest_Question_Asked
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
	// lra_spill_temp_19 = 2
	// lra_spill_temp_20 = 3
//4338  /******************************************************************
//4339  
//4340  ************************************************************************/
//4341  void Check_LQA()
//4342  {

LM423:
	     .stabn 68,0,4342,LM423-_Check_LQA
BB1_PU46:	// 0xb2b
// BB:1 cycle count: 8
	     push BP to [SP]          	// [0:4342]  
	     SP = SP - 4              	// [2:4342]  
	     BP = SP + 1              	// [3:4342]  
//4343  	
//4344  	    Supress_Question_CategoryLast2Cat();

LM424:
	     .stabn 68,0,4344,LM424-_Check_LQA
	     call _Supress_Question_CategoryLast2Cat	// [5:4344]  Supress_Question_CategoryLast2Cat
BB2_PU46:	// 0xb31
// BB:2 cycle count: 3
//4345  		LQA = Get_LQA();

LM425:
	     .stabn 68,0,4345,LM425-_Check_LQA
	     call _Get_LQA            	// [0:4345]  Get_LQA
BB3_PU46:	// 0xb33
// BB:3 cycle count: 15
	     DS = seg(_LQA)           	// [0:4345]  LQA
	     R4 = (_LQA)              	// [1:4345]  LQA
	     DS:[R4] = R1             	// [3:4345]  
//4346  		
//4347  		if(LQA ==0)

LM426:
	     .stabn 68,0,4347,LM426-_Check_LQA
	     DS = seg(_LQA)           	// [5:4347]  LQA
	     R4 = (_LQA)              	// [6:4347]  LQA
	     R4 = DS:[R4]             	// [8:4347]  
	     cmp R4, 0                	// [10:4347]  
	     je BB4_PU46              	// [11:4347]  
BB23_PU46:	// 0xb3d
// BB:23 cycle count: 3
	     goto L_46_13             	// [0:0]  
BB4_PU46:	// 0xb3f
// BB:4 cycle count: 3
//4348  		 {	
//4349  		        Rest_LQ_LQA();					  						 					

LM427:
	     .stabn 68,0,4349,LM427-_Check_LQA
	     call _Rest_LQ_LQA        	// [0:4349]  Rest_LQ_LQA
BB5_PU46:	// 0xb41
// BB:5 cycle count: 3
//4350  			    Sub_QuestionAsked();

LM428:
	     .stabn 68,0,4350,LM428-_Check_LQA
	     call _Sub_QuestionAsked  	// [0:4350]  Sub_QuestionAsked
BB6_PU46:	// 0xb43
// BB:6 cycle count: 3
//4351  	            Supress_Question_CategoryLast2Cat();

LM429:
	     .stabn 68,0,4351,LM429-_Check_LQA
	     call _Supress_Question_CategoryLast2Cat	// [0:4351]  Supress_Question_CategoryLast2Cat
BB7_PU46:	// 0xb45
// BB:7 cycle count: 3
//4352  	            LQA = Get_LQA();

LM430:
	     .stabn 68,0,4352,LM430-_Check_LQA
	     call _Get_LQA            	// [0:4352]  Get_LQA
BB8_PU46:	// 0xb47
// BB:8 cycle count: 15
	     DS = seg(_LQA)           	// [0:4352]  LQA
	     R4 = (_LQA)              	// [1:4352]  LQA
	     DS:[R4] = R1             	// [3:4352]  
//4353  			   if(LQA==0)//xiang 20160318

LM431:
	     .stabn 68,0,4353,LM431-_Check_LQA
	     DS = seg(_LQA)           	// [5:4353]  LQA
	     R4 = (_LQA)              	// [6:4353]  LQA
	     R4 = DS:[R4]             	// [8:4353]  
	     cmp R4, 0                	// [10:4353]  
	     jne L_46_14              	// [11:4353]  
BB9_PU46:	// 0xb51
// BB:9 cycle count: 3
//4354  				{
//4355  					     Rest_Question_Asked();

LM432:
	     .stabn 68,0,4355,LM432-_Check_LQA
	     call _Rest_Question_Asked	// [0:4355]  Rest_Question_Asked
BB10_PU46:	// 0xb53
// BB:10 cycle count: 3
//4356  						 Rest_LQA();//Rest_LQ_LQA

LM433:
	     .stabn 68,0,4356,LM433-_Check_LQA
	     call _Rest_LQA           	// [0:4356]  Rest_LQA
BB11_PU46:	// 0xb55
// BB:11 cycle count: 3
//4357  						 Supress_Question_CategoryLast2Cat();

LM434:
	     .stabn 68,0,4357,LM434-_Check_LQA
	     call _Supress_Question_CategoryLast2Cat	// [0:4357]  Supress_Question_CategoryLast2Cat
BB12_PU46:	// 0xb57
// BB:12 cycle count: 3
//4358  						 
//4359  						  LQA = Get_LQA();

LM435:
	     .stabn 68,0,4359,LM435-_Check_LQA
	     call _Get_LQA            	// [0:4359]  Get_LQA
BB13_PU46:	// 0xb59
// BB:13 cycle count: 15
	     DS = seg(_LQA)           	// [0:4359]  LQA
	     R4 = (_LQA)              	// [1:4359]  LQA
	     DS:[R4] = R1             	// [3:4359]  
//4360  	     
//4361  					     if(LQA==0)

LM436:
	     .stabn 68,0,4361,LM436-_Check_LQA
	     DS = seg(_LQA)           	// [5:4361]  LQA
	     R4 = (_LQA)              	// [6:4361]  LQA
	     R4 = DS:[R4]             	// [8:4361]  
	     cmp R4, 0                	// [10:4361]  
	     jne L_46_15              	// [11:4361]  
BB14_PU46:	// 0xb63
// BB:14 cycle count: 3
//4362  					     {
//4363  					     	   Rest_LQA();//Rest_LQ_LQA

LM437:
	     .stabn 68,0,4363,LM437-_Check_LQA
	     call _Rest_LQA           	// [0:4363]  Rest_LQA
L_46_15:	// 0xb65
L_46_14:	// 0xb65
// BB:15 cycle count: 11
//4366  						 		 
//4367  					 			 		   
//4368  				}	
//4369  				
//4370  		  			if(gQuestionIdx!=0xffff)		 	  

LM438:
	     .stabn 68,0,4370,LM438-_Check_LQA
	     DS = seg(_gQuestionIdx)  	// [0:4370]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:4370]  gQuestionIdx
	     R4 = DS:[R4]             	// [3:4370]  
	     cmp R4, 65535            	// [5:4370]  
	     je L_46_16               	// [7:4370]  
BB16_PU46:	// 0xb6c
// BB:16 cycle count: 53
//4371  						   QuestionStatus_LQA[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];	  

LM439:
	     .stabn 68,0,4371,LM439-_Check_LQA
	     DS = seg(_gQuestionIdx)  	// [0:4371]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:4371]  gQuestionIdx
	     R4 = DS:[R4]             	// [3:4371]  
	     R4 = R4 lsr 4            	// [5:4371]  
	     [BP + 0] = R4            	// [6:4371]  __save_expr_temp_7
	     R4 = [BP + 0]            	// [7:4371]  __save_expr_temp_7
	     R3 = 0                   	// [9:4371]  
	     R1 = (_QuestionStatus_LQA)	// [10:4371]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [12:4371]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [13:4371]  
	     R3 = R3 + R2, Carry      	// [14:4371]  
	     DS = R3                  	// [15:4371]  
	     R4 = DS:[R4]             	// [16:4371]  
	     [BP + 2] = R4            	// [18:4371]  lra_spill_temp_19
	     DS = seg(_gQuestionIdx)  	// [19:4371]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [20:4371]  gQuestionIdx
	     R4 = DS:[R4]             	// [22:4371]  
	     R4 = R4 & 15             	// [24:4371]  
	     R3 = 0                   	// [25:4371]  
	     R1 = (_BitMap)           	// [26:4371]  BitMap
	     R2 = seg(_BitMap)        	// [28:4371]  BitMap
	     R4 = R4 + R1             	// [29:4371]  
	     R3 = R3 + R2, Carry      	// [30:4371]  
	     DS = R3                  	// [31:4371]  
	     R4 = DS:[R4]             	// [32:4371]  
	     R3 = R4 ^ 65535          	// [34:4371]  
	     R4 = [BP + 2]            	// [36:4371]  lra_spill_temp_19
	     R4 = R4 & R3             	// [38:4371]  
	     [BP + 3] = R4            	// [39:4371]  lra_spill_temp_20
	     R4 = [BP + 0]            	// [40:4371]  __save_expr_temp_7
	     R3 = 0                   	// [42:4371]  
	     R1 = (_QuestionStatus_LQA)	// [43:4371]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [45:4371]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [46:4371]  
	     R3 = R3 + R2, Carry      	// [47:4371]  
	     DS = R3                  	// [48:4371]  
	     R3 = [BP + 3]            	// [49:4371]  lra_spill_temp_20
	     DS:[R4] = R3             	// [51:4371]  
L_46_16:	// 0xb98
// BB:17 cycle count: 10
//4372  						   
//4373  					  if( R_E ==C_TwoSounds)

LM440:
	     .stabn 68,0,4373,LM440-_Check_LQA
	     DS = seg(_R_E)           	// [0:4373]  R_E
	     R4 = (_R_E)              	// [1:4373]  R_E
	     R4 = DS:[R4]             	// [3:4373]  
	     cmp R4, 2                	// [5:4373]  
	     jne L_46_17              	// [6:4373]  
BB18_PU46:	// 0xb9e
// BB:18 cycle count: 11
//4374  					   {
//4375  				         if(gQuestionIdx_1!=0xffff)		 	  

LM441:
	     .stabn 68,0,4375,LM441-_Check_LQA
	     DS = seg(_gQuestionIdx_1)	// [0:4375]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [1:4375]  gQuestionIdx_1
	     R4 = DS:[R4]             	// [3:4375]  
	     cmp R4, 65535            	// [5:4375]  
	     je L_46_18               	// [7:4375]  
BB19_PU46:	// 0xba5
// BB:19 cycle count: 53
//4376  						     QuestionStatus_LQA[gQuestionIdx_1/16]&=~BitMap[gQuestionIdx_1%16];	

LM442:
	     .stabn 68,0,4376,LM442-_Check_LQA
	     DS = seg(_gQuestionIdx_1)	// [0:4376]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [1:4376]  gQuestionIdx_1
	     R4 = DS:[R4]             	// [3:4376]  
	     R4 = R4 lsr 4            	// [5:4376]  
	     [BP + 1] = R4            	// [6:4376]  __save_expr_temp_8
	     R4 = [BP + 1]            	// [7:4376]  __save_expr_temp_8
	     R3 = 0                   	// [9:4376]  
	     R1 = (_QuestionStatus_LQA)	// [10:4376]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [12:4376]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [13:4376]  
	     R3 = R3 + R2, Carry      	// [14:4376]  
	     DS = R3                  	// [15:4376]  
	     R4 = DS:[R4]             	// [16:4376]  
	     [BP + 3] = R4            	// [18:4376]  lra_spill_temp_20
	     DS = seg(_gQuestionIdx_1)	// [19:4376]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [20:4376]  gQuestionIdx_1
	     R4 = DS:[R4]             	// [22:4376]  
	     R4 = R4 & 15             	// [24:4376]  
	     R3 = 0                   	// [25:4376]  
	     R1 = (_BitMap)           	// [26:4376]  BitMap
	     R2 = seg(_BitMap)        	// [28:4376]  BitMap
	     R4 = R4 + R1             	// [29:4376]  
	     R3 = R3 + R2, Carry      	// [30:4376]  
	     DS = R3                  	// [31:4376]  
	     R4 = DS:[R4]             	// [32:4376]  
	     R3 = R4 ^ 65535          	// [34:4376]  
	     R4 = [BP + 3]            	// [36:4376]  lra_spill_temp_20
	     R4 = R4 & R3             	// [38:4376]  
	     [BP + 2] = R4            	// [39:4376]  lra_spill_temp_19
	     R4 = [BP + 1]            	// [40:4376]  __save_expr_temp_8
	     R3 = 0                   	// [42:4376]  
	     R1 = (_QuestionStatus_LQA)	// [43:4376]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [45:4376]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [46:4376]  
	     R3 = R3 + R2, Carry      	// [47:4376]  
	     DS = R3                  	// [48:4376]  
	     R3 = [BP + 2]            	// [49:4376]  lra_spill_temp_19
	     DS:[R4] = R3             	// [51:4376]  
L_46_18:	// 0xbd1
L_46_17:	// 0xbd1
// BB:20 cycle count: 3
//4377  					   } 			
//4378  				
//4379  				   LQA = Get_LQA();	 

LM443:
	     .stabn 68,0,4379,LM443-_Check_LQA
	     call _Get_LQA            	// [0:4379]  Get_LQA
BB21_PU46:	// 0xbd3
// BB:21 cycle count: 5
	     DS = seg(_LQA)           	// [0:4379]  LQA
	     R4 = (_LQA)              	// [1:4379]  LQA
	     DS:[R4] = R1             	// [3:4379]  
L_46_13:	// 0xbd7
// BB:22 cycle count: 6
	     SP = SP + 4              	// [0:4379]  
	     pop BP, PC from [SP]     	// [1:4379]  
	.endp	
LME47:
	     .stabf LME47-_Check_LQA
.code
	     .stabs "Read_Flash:F18",36,0,0,_Read_Flash

	// Program Unit: Read_Flash
.public	_Read_Flash
_Read_Flash: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//4385  
//4386  /********************************************************
//4387  **********************************************************/
//4388  void Read_Flash()
//4389  {

LM444:
	     .stabn 68,0,4389,LM444-_Read_Flash
BB1_PU47:	// 0xbd9
// BB:1 cycle count: 9
	     push BP to [SP]          	// [0:4389]  
	     BP = SP + 1              	// [2:4389]  
	//;;
	INT OFF
	//;;
//4390  	
//4391  
//4392  	  __asm("INT OFF");
//4393  	   MoveSPIDriverToRAM();

LM445:
	     .stabn 68,0,4393,LM445-_Read_Flash
	     call _MoveSPIDriverToRAM 	// [6:4393]  MoveSPIDriverToRAM
BB2_PU47:	// 0xbe1
// BB:2 cycle count: 29
//4394  
//4395       SPI_Flash_ReadNWords(QuestionStatus_LQ,C_QuestionRAM,T_LQ_Secter_L,T_LQ_Secter_H);

LM446:
	     .stabn 68,0,4395,LM446-_Read_Flash
	     SP = SP - 5              	// [0:4395]  
	     R2 = (_QuestionStatus_LQ)	// [1:4395]  QuestionStatus_LQ
	     R3 = seg(_QuestionStatus_LQ)	// [3:4395]  QuestionStatus_LQ
	     R4 = SP + 1              	// [4:4395]  
	     [R4++] = R2              	// [6:4395]  
	     [R4] = R3                	// [8:4395]  
	     R3 = 20                  	// [10:4395]  
	     R4 = SP + 3              	// [11:4395]  
	     [R4] = R3                	// [13:4395]  
	     R3 = - 12288             	// [15:4395]  
	     R4 = SP + 4              	// [17:4395]  
	     [R4] = R3                	// [19:4395]  
	     R3 = 31                  	// [21:4395]  
	     R4 = SP + 5              	// [22:4395]  
	     [R4] = R3                	// [24:4395]  
	     call _SPI_Flash_ReadNWords	// [26:4395]  SPI_Flash_ReadNWords
BB3_PU47:	// 0xbf8
// BB:3 cycle count: 28
//4396       SPI_Flash_ReadNWords(QuestionStatus_Asked,C_QuestionRAM,T_Asked_Secter_L,T_Asked_Secter_H);

LM447:
	     .stabn 68,0,4396,LM447-_Read_Flash
	     R2 = (_QuestionStatus_Asked)	// [0:4396]  QuestionStatus_Asked
	     R3 = seg(_QuestionStatus_Asked)	// [2:4396]  QuestionStatus_Asked
	     R4 = SP + 1              	// [3:4396]  
	     [R4++] = R2              	// [5:4396]  
	     [R4] = R3                	// [7:4396]  
	     R3 = 20                  	// [9:4396]  
	     R4 = SP + 3              	// [10:4396]  
	     [R4] = R3                	// [12:4396]  
	     R3 = - 4096              	// [14:4396]  
	     R4 = SP + 4              	// [16:4396]  
	     [R4] = R3                	// [18:4396]  
	     R3 = 31                  	// [20:4396]  
	     R4 = SP + 5              	// [21:4396]  
	     [R4] = R3                	// [23:4396]  
	     call _SPI_Flash_ReadNWords	// [25:4396]  SPI_Flash_ReadNWords
BB4_PU47:	// 0xc0e
// BB:4 cycle count: 15
	     SP = SP + 3              	// [0:4396]  
//4397       
//4398      // SPI_Flash_ReadNWords(&Record,1,T_Record_Secter_L,T_Record_Secter_H); 
//4399        Record=SPI_Flash_ReadAWord(T_Record_Secter_L,T_Record_Secter_H);

LM448:
	     .stabn 68,0,4399,LM448-_Read_Flash
	     R3 = - 8192              	// [1:4399]  
	     R4 = SP + 1              	// [3:4399]  
	     [R4] = R3                	// [5:4399]  
	     R3 = 31                  	// [7:4399]  
	     R4 = SP + 2              	// [8:4399]  
	     [R4] = R3                	// [10:4399]  
	     call _SPI_Flash_ReadAWord	// [12:4399]  SPI_Flash_ReadAWord
BB5_PU47:	// 0xc1a
// BB:5 cycle count: 19
	     SP = SP + 2              	// [0:4399]  
	     DS = seg(_Record)        	// [1:4399]  Record
	     R4 = (_Record)           	// [2:4399]  Record
	     DS:[R4] = R1             	// [4:4399]  
	//;;
	INT FIQ,IRQ
	//;;
//4400      
//4401       __asm("INT FIQ,IRQ");
//4402       
//4403       if(Record == 0xffff)

LM449:
	     .stabn 68,0,4403,LM449-_Read_Flash
	     DS = seg(_Record)        	// [8:4403]  Record
	     R4 = (_Record)           	// [9:4403]  Record
	     R4 = DS:[R4]             	// [11:4403]  
	     cmp R4, 65535            	// [13:4403]  
	     jne L_47_3               	// [15:4403]  
BB6_PU47:	// 0xc29
// BB:6 cycle count: 6
//4404       	 Record=0;

LM450:
	     .stabn 68,0,4404,LM450-_Read_Flash
	     R3 = 0                   	// [0:4404]  
	     DS = seg(_Record)        	// [1:4404]  Record
	     R4 = (_Record)           	// [2:4404]  Record
	     DS:[R4] = R3             	// [4:4404]  
L_47_3:	// 0xc2e
// BB:7 cycle count: 5
	     pop BP, PC from [SP]     	// [0:4404]  
	.endp	
LME48:
	     .stabf LME48-_Read_Flash
.code
	     .stabs "Save_Question_Quality_Last:F18",36,0,0,_Save_Question_Quality_Last

	// Program Unit: Save_Question_Quality_Last
.public	_Save_Question_Quality_Last
_Save_Question_Quality_Last: .proc	
	     .stabn 0xa6,0,0,2
	// i = 0
	// old_frame_pointer = 2
	// return_address = 3
	// lra_spill_temp_21 = 1
//4406  }
//4407  /*****************************************************
//4408  ******************************************************/
//4409  void Save_Question_Quality_Last(unsigned int quality)
//4410  {

LM451:
	     .stabn 68,0,4410,LM451-_Save_Question_Quality_Last
BB1_PU48:	// 0xc29
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4410]  
	     SP = SP - 2              	// [2:4410]  
	     BP = SP + 1              	// [3:4410]  
LBB45:
//4411     
//4412     unsigned int i;
//4413  
//4414      for(i=0;i<5;i++)

LM452:
	     .stabn 68,0,4414,LM452-_Save_Question_Quality_Last
	     R4 = 0                   	// [5:4414]  
	     [BP + 0] = R4            	// [6:4414]  i
L_48_2:	// 0xc2f
// BB:2 cycle count: 7
	     R4 = [BP + 0]            	// [0:4414]  i
	     cmp R4, 4                	// [2:4414]  
	     ja L_48_3                	// [3:4414]  
BB3_PU48:	// 0xc32
// BB:3 cycle count: 26
//4415     	{
//4416        Question_Quality_Last[i] = Question_Quality_Last[i+1];

LM453:
	     .stabn 68,0,4416,LM453-_Save_Question_Quality_Last
	     R4 = [BP + 0]            	// [0:4416]  i
	     R4 = R4 + 1              	// [2:4416]  
	     R3 = 0                   	// [3:4416]  
	     R1 = (_Question_Quality_Last)	// [4:4416]  Question_Quality_Last
	     R2 = seg(_Question_Quality_Last)	// [6:4416]  Question_Quality_Last
	     R4 = R4 + R1             	// [7:4416]  
	     R3 = R3 + R2, Carry      	// [8:4416]  
	     DS = R3                  	// [9:4416]  
	     R4 = DS:[R4]             	// [10:4416]  
	     [BP + 1] = R4            	// [12:4416]  lra_spill_temp_21
	     R4 = [BP + 0]            	// [13:4416]  i
	     R3 = 0                   	// [15:4416]  
	     R1 = (_Question_Quality_Last)	// [16:4416]  Question_Quality_Last
	     R2 = seg(_Question_Quality_Last)	// [18:4416]  Question_Quality_Last
	     R4 = R4 + R1             	// [19:4416]  
	     R3 = R3 + R2, Carry      	// [20:4416]  
	     DS = R3                  	// [21:4416]  
	     R3 = [BP + 1]            	// [22:4416]  lra_spill_temp_21
	     DS:[R4] = R3             	// [24:4416]  
Lt_48_1:	// 0xc47
// BB:4 cycle count: 8

LM454:
	     .stabn 68,0,4414,LM454-_Save_Question_Quality_Last
	     R4 = [BP + 0]            	// [0:4414]  i
	     R4 = R4 + 1              	// [2:4414]  
	     [BP + 0] = R4            	// [3:4414]  i
	     jmp L_48_2               	// [4:4414]  
L_48_3:	// 0xc4b
// BB:5 cycle count: 13
//4417     	}
//4418     
//4419       Question_Quality_Last[5] = quality;	

LM455:
	     .stabn 68,0,4419,LM455-_Save_Question_Quality_Last
	     R3 = [BP + 5]            	// [0:4419]  quality
	     DS = seg(_Question_Quality_Last+5)	// [2:4419]  Question_Quality_Last+5
	     R4 = (_Question_Quality_Last+5)	// [3:4419]  Question_Quality_Last+5
	     DS:[R4] = R3             	// [5:4419]  
	     SP = SP + 2              	// [7:4419]  
	     pop BP, PC from [SP]     	// [8:4419]  
LBE45:
	.endp	
	     .stabs "quality:p4",160,0,0,5
	     .stabn 192,0,0,LBB45-_Save_Question_Quality_Last
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE45-_Save_Question_Quality_Last
LME49:
	     .stabf LME49-_Save_Question_Quality_Last
.code
	     .stabs "Save_Question_Category2Last:F18",36,0,0,_Save_Question_Category2Last

	// Program Unit: Save_Question_Category2Last
.public	_Save_Question_Category2Last
_Save_Question_Category2Last: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//4421  }
//4422  /*****************************************************
//4423  ******************************************************/
//4424  void Save_Question_Category2Last(unsigned int Category)
//4425  {

LM456:
	     .stabn 68,0,4425,LM456-_Save_Question_Category2Last
BB1_PU49:	// 0xc52
// BB:1 cycle count: 26
	     push BP to [SP]          	// [0:4425]  
	     BP = SP + 1              	// [2:4425]  
//4427    // unsigned int i;
//4428  
//4429     // for(i=0;i<5;i++)
//4430     //	{
//4431        Last2Cat[0] = Last2Cat[1];

LM457:
	     .stabn 68,0,4431,LM457-_Save_Question_Category2Last
	     DS = seg(_Last2Cat+1)    	// [4:4431]  Last2Cat+1
	     R4 = (_Last2Cat+1)       	// [5:4431]  Last2Cat+1
	     R3 = DS:[R4]             	// [7:4431]  
	     DS = seg(_Last2Cat)      	// [9:4431]  Last2Cat
	     R4 = (_Last2Cat)         	// [10:4431]  Last2Cat
	     DS:[R4] = R3             	// [12:4431]  
//4432     //	}
//4433     
//4434       Last2Cat[1] = Category;	

LM458:
	     .stabn 68,0,4434,LM458-_Save_Question_Category2Last
	     R3 = [BP + 3]            	// [14:4434]  Category
	     DS = seg(_Last2Cat+1)    	// [16:4434]  Last2Cat+1
	     R4 = (_Last2Cat+1)       	// [17:4434]  Last2Cat+1
	     DS:[R4] = R3             	// [19:4434]  
	     pop BP, PC from [SP]     	// [21:4434]  
	.endp	
	     .stabs "Category:p4",160,0,0,3
LME50:
	     .stabf LME50-_Save_Question_Category2Last
.code
	     .stabs "check_Question_Quality_Last:F4",36,0,0,_check_Question_Quality_Last

	// Program Unit: check_Question_Quality_Last
.public	_check_Question_Quality_Last
_check_Question_Quality_Last: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//4437  
//4438  /*****************************************************
//4439  ******************************************************/
//4440  unsigned int  check_Question_Quality_Last()
//4441  {

LM459:
	     .stabn 68,0,4441,LM459-_check_Question_Quality_Last
BB1_PU50:	// 0xc63
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:4441]  
	     SP = SP - 1              	// [2:4441]  
	     BP = SP + 1              	// [3:4441]  
LBB46:
//4442     
//4443     unsigned int i;
//4444  
//4445      for(i=0;i<6;i++)

LM460:
	     .stabn 68,0,4445,LM460-_check_Question_Quality_Last
	     R4 = 0                   	// [5:4445]  
	     [BP + 0] = R4            	// [6:4445]  i
L_50_2:	// 0xc69
// BB:2 cycle count: 7
	     R4 = [BP + 0]            	// [0:4445]  i
	     cmp R4, 5                	// [2:4445]  
	     ja L_50_3                	// [3:4445]  
BB3_PU50:	// 0xc6c
// BB:3 cycle count: 16
//4446     	{
//4447        if(Question_Quality_Last[i]<=1)

LM461:
	     .stabn 68,0,4447,LM461-_check_Question_Quality_Last
	     R4 = [BP + 0]            	// [0:4447]  i
	     R3 = 0                   	// [2:4447]  
	     R1 = (_Question_Quality_Last)	// [3:4447]  Question_Quality_Last
	     R2 = seg(_Question_Quality_Last)	// [5:4447]  Question_Quality_Last
	     R4 = R4 + R1             	// [6:4447]  
	     R3 = R3 + R2, Carry      	// [7:4447]  
	     DS = R3                  	// [8:4447]  
	     R4 = DS:[R4]             	// [9:4447]  
	     cmp R4, 1                	// [11:4447]  
	     ja L_50_4                	// [12:4447]  
BB4_PU50:	// 0xc77
// BB:4 cycle count: 7
//4448        	 return 0;

LM462:
	     .stabn 68,0,4448,LM462-_check_Question_Quality_Last
	     R1 = 0                   	// [0:4448]  
	     SP = SP + 1              	// [1:4448]  
	     pop BP, PC from [SP]     	// [2:4448]  
L_50_4:	// 0xc7a
Lt_50_1:	// 0xc7a
// BB:5 cycle count: 8

LM463:
	     .stabn 68,0,4445,LM463-_check_Question_Quality_Last
	     R4 = [BP + 0]            	// [0:4445]  i
	     R4 = R4 + 1              	// [2:4445]  
	     [BP + 0] = R4            	// [3:4445]  i
	     jmp L_50_2               	// [4:4445]  
L_50_3:	// 0xc7e
// BB:6 cycle count: 7
//4449     	}
//4450     
//4451       return 1;

LM464:
	     .stabn 68,0,4451,LM464-_check_Question_Quality_Last
	     R1 = 1                   	// [0:4451]  
	     SP = SP + 1              	// [1:4451]  
	     pop BP, PC from [SP]     	// [2:4451]  
LBE46:
	.endp	
	     .stabn 192,0,0,LBB46-_check_Question_Quality_Last
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE46-_check_Question_Quality_Last
LME51:
	     .stabf LME51-_check_Question_Quality_Last
.code
	     .stabs "Get_Key:F4",36,0,0,_Get_Key

	// Program Unit: Get_Key
.public	_Get_Key
_Get_Key: .proc	
	     .stabn 0xa6,0,0,1
	// temp = 0
	// old_frame_pointer = 1
	// return_address = 2
//4872  /****************************************************************************
//4873  ***************************************************************************/
//4874  
//4875  unsigned int Get_Key(Countdown_E)
//4876  {

LM465:
	     .stabn 68,0,4876,LM465-_Get_Key
BB1_PU51:	// 0xc81
// BB:1 cycle count: 5
	     push BP to [SP]          	// [0:4876]  
	     SP = SP - 1              	// [2:4876]  
	     BP = SP + 1              	// [3:4876]  
L_51_76:	// 0xc85
// BB:2 cycle count: 3
LBB47:
//4879   
//4880    do
//4881     {
//4882     	
//4883     	  WatchdogClear();

LM466:
	     .stabn 68,0,4883,LM466-_Get_Key
	     call _WatchdogClear      	// [0:4883]  WatchdogClear
BB3_PU51:	// 0xc87
// BB:3 cycle count: 11
//4884     	  
//4885     	  	if(Timeout_cnt>180*16)	

LM467:
	     .stabn 68,0,4885,LM467-_Get_Key
	     DS = seg(_Timeout_cnt)   	// [0:4885]  Timeout_cnt
	     R4 = (_Timeout_cnt)      	// [1:4885]  Timeout_cnt
	     R4 = DS:[R4]             	// [3:4885]  
	     cmp R4, 2880             	// [5:4885]  
	     jbe L_51_77              	// [7:4885]  
BB4_PU51:	// 0xc8e
// BB:4 cycle count: 9
//4886  		  {
//4887  		  	  //Sleepflag =1;
//4888  		  	  Timeout_cnt=0;

LM468:
	     .stabn 68,0,4888,LM468-_Get_Key
	     R3 = 0                   	// [0:4888]  
	     DS = seg(_Timeout_cnt)   	// [1:4888]  Timeout_cnt
	     R4 = (_Timeout_cnt)      	// [2:4888]  Timeout_cnt
	     DS:[R4] = R3             	// [4:4888]  
//4889  		  	  return GameTimeout();

LM469:
	     .stabn 68,0,4889,LM469-_Get_Key
	     call _GameTimeout        	// [6:4889]  GameTimeout
BB5_PU51:	// 0xc95
// BB:5 cycle count: 6
	     SP = SP + 1              	// [0:4889]  
	     pop BP, PC from [SP]     	// [1:4889]  
L_51_77:	// 0xc97
// BB:6 cycle count: 10
//4890  		  }
//4891     	  
//4892     	  
//4893     	  
//4894     	  	if(Sleepflag) 

LM470:
	     .stabn 68,0,4894,LM470-_Get_Key
	     DS = seg(_Sleepflag)     	// [0:4894]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:4894]  Sleepflag
	     R4 = DS:[R4]             	// [3:4894]  
	     cmp R4, 0                	// [5:4894]  
	     je L_51_78               	// [6:4894]  
BB7_PU51:	// 0xc9d
// BB:7 cycle count: 7
//4895  		     return C_Finish ;

LM471:
	     .stabn 68,0,4895,LM471-_Get_Key
	     R1 = - 1                 	// [0:4895]  
	     SP = SP + 1              	// [1:4895]  
	     pop BP, PC from [SP]     	// [2:4895]  
L_51_78:	// 0xca0
// BB:8 cycle count: 3
//4896  			
//4897             if(temp=TS_CTS_ServiceLoop())

LM472:
	     .stabn 68,0,4897,LM472-_Get_Key
	     call _TS_CTS_ServiceLoop 	// [0:4897]  TS_CTS_ServiceLoop
BB9_PU51:	// 0xca2
// BB:9 cycle count: 8
	     [BP + 0] = R1            	// [0:4897]  temp
	     R4 = [BP + 0]            	// [1:4897]  temp
	     cmp R4, 0                	// [3:4897]  
	     je L_51_79               	// [4:4897]  
BB10_PU51:	// 0xca6
// BB:10 cycle count: 7
//4898             	   Key_Event = temp;

LM473:
	     .stabn 68,0,4898,LM473-_Get_Key
	     R3 = [BP + 0]            	// [0:4898]  temp
	     DS = seg(_Key_Event)     	// [2:4898]  Key_Event
	     R4 = (_Key_Event)        	// [3:4898]  Key_Event
	     DS:[R4] = R3             	// [5:4898]  
L_51_79:	// 0xcab
// BB:11 cycle count: 10
//4903  				if(PassFlag)
//4904  					return 0xffff;
//4905             #endif
//4906  			
//4907  			  if(PauseFlag)

LM474:
	     .stabn 68,0,4907,LM474-_Get_Key
	     DS = seg(_PauseFlag)     	// [0:4907]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:4907]  PauseFlag
	     R4 = DS:[R4]             	// [3:4907]  
	     cmp R4, 0                	// [5:4907]  
	     je L_51_80               	// [6:4907]  
BB12_PU51:	// 0xcb1
// BB:12 cycle count: 7
//4908  				  return 0xffff;

LM475:
	     .stabn 68,0,4908,LM475-_Get_Key
	     R1 = - 1                 	// [0:4908]  
	     SP = SP + 1              	// [1:4908]  
	     pop BP, PC from [SP]     	// [2:4908]  
L_51_80:	// 0xcb4
// BB:13 cycle count: 10
//4909  			
//4910  			
//4911  			  if(CheaterFlag)

LM476:
	     .stabn 68,0,4911,LM476-_Get_Key
	     DS = seg(_CheaterFlag)   	// [0:4911]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [1:4911]  CheaterFlag
	     R4 = DS:[R4]             	// [3:4911]  
	     cmp R4, 0                	// [5:4911]  
	     je L_51_81               	// [6:4911]  
BB14_PU51:	// 0xcba
// BB:14 cycle count: 7
//4912  				  return 0xffff; 

LM477:
	     .stabn 68,0,4912,LM477-_Get_Key
	     R1 = - 1                 	// [0:4912]  
	     SP = SP + 1              	// [1:4912]  
	     pop BP, PC from [SP]     	// [2:4912]  
L_51_81:	// 0xcbd
// BB:15 cycle count: 10
//4913  
//4914  		    if(Key_Event)

LM478:
	     .stabn 68,0,4914,LM478-_Get_Key
	     DS = seg(_Key_Event)     	// [0:4914]  Key_Event
	     R4 = (_Key_Event)        	// [1:4914]  Key_Event
	     R4 = DS:[R4]             	// [3:4914]  
	     cmp R4, 0                	// [5:4914]  
	     je L_51_82               	// [6:4914]  
BB16_PU51:	// 0xcc3
// BB:16 cycle count: 11
//4915  		 	    return Key_Event;

LM479:
	     .stabn 68,0,4915,LM479-_Get_Key
	     DS = seg(_Key_Event)     	// [0:4915]  Key_Event
	     R4 = (_Key_Event)        	// [1:4915]  Key_Event
	     R1 = DS:[R4]             	// [3:4915]  
	     SP = SP + 1              	// [5:4915]  
	     pop BP, PC from [SP]     	// [6:4915]  
L_51_82:	// 0xcc9
// BB:17 cycle count: 10
//4918             Pass_check();
//4919        #endif   
//4920  
//4921  
//4922             if(A1800_Flag ==2)

LM480:
	     .stabn 68,0,4922,LM480-_Get_Key
	     DS = seg(_A1800_Flag)    	// [0:4922]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [1:4922]  A1800_Flag
	     R4 = DS:[R4]             	// [3:4922]  
	     cmp R4, 2                	// [5:4922]  
	     jne L_51_83              	// [6:4922]  
BB18_PU51:	// 0xccf
// BB:18 cycle count: 3
//4923             {
//4924  			   	if((SACM_A1800_Status() & 0x0001) == 0)

LM481:
	     .stabn 68,0,4924,LM481-_Get_Key
	     call _SACM_A1800_Status  	// [0:4924]  SACM_A1800_Status
BB19_PU51:	// 0xcd1
// BB:19 cycle count: 7
	     R4 = R1 & 1              	// [0:4924]  
	     cmp R4, 0                	// [2:4924]  
	     jne L_51_84              	// [3:4924]  
BB20_PU51:	// 0xcd5
// BB:20 cycle count: 10
//4925  			   	{
//4926  			   					
//4927  				   PlayA1800_ElementsInit(SFX_Timer);				

LM482:
	     .stabn 68,0,4927,LM482-_Get_Key
	     SP = SP - 1              	// [0:4927]  
	     R3 = 128                 	// [1:4927]  
	     R4 = SP + 1              	// [3:4927]  
	     [R4] = R3                	// [5:4927]  
	     call _PlayA1800_ElementsInit	// [7:4927]  PlayA1800_ElementsInit
BB21_PU51:	// 0xcdd
// BB:21 cycle count: 1
	     SP = SP + 1              	// [0:4927]  
L_51_84:	// 0xcde
// BB:22 cycle count: 3
//4928  			   	}
//4929  			   	
//4930  			   	    SACM_A1800_ServiceLoop();

LM483:
	     .stabn 68,0,4930,LM483-_Get_Key
	     call _SACM_A1800_ServiceLoop	// [0:4930]  SACM_A1800_ServiceLoop
L_51_83:	// 0xce0
// BB:23 cycle count: 11
//4932  
//4933  
//4934  
//4935  
//4936  	   if(LongPressflag&0x01)

LM484:
	     .stabn 68,0,4936,LM484-_Get_Key
	     DS = seg(_LongPressflag) 	// [0:4936]  LongPressflag
	     R4 = (_LongPressflag)    	// [1:4936]  LongPressflag
	     R4 = DS:[R4]             	// [3:4936]  
	     R4 = R4 & 1              	// [5:4936]  
	     cmp R4, 0                	// [6:4936]  
	     je L_51_85               	// [7:4936]  
BB24_PU51:	// 0xce7
// BB:24 cycle count: 24
//4937  	   	{
//4938               LongPressflag&=~0x01;

LM485:
	     .stabn 68,0,4938,LM485-_Get_Key
	     DS = seg(_LongPressflag) 	// [0:4938]  LongPressflag
	     R4 = (_LongPressflag)    	// [1:4938]  LongPressflag
	     R4 = DS:[R4]             	// [3:4938]  
	     R3 = R4 & 65534          	// [5:4938]  
	     DS = seg(_LongPressflag) 	// [7:4938]  LongPressflag
	     R4 = (_LongPressflag)    	// [8:4938]  LongPressflag
	     DS:[R4] = R3             	// [10:4938]  
//4939  
//4940  			 
//4941              if((firstFlag_23b&0x8000)==0)

LM486:
	     .stabn 68,0,4941,LM486-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [12:4941]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [13:4941]  firstFlag_23b
	     R4 = DS:[R4]             	// [15:4941]  
	     R4 = R4 & 32768          	// [17:4941]  
	     cmp R4, 0                	// [19:4941]  
	     jne L_51_86              	// [20:4941]  
BB25_PU51:	// 0xcf9
// BB:25 cycle count: 15
//4942              	{
//4943  
//4944  				   firstFlag_23b|=0x8000;

LM487:
	     .stabn 68,0,4944,LM487-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [0:4944]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [1:4944]  firstFlag_23b
	     R4 = DS:[R4]             	// [3:4944]  
	     R3 = R4 | 32768          	// [5:4944]  
	     DS = seg(_firstFlag_23b) 	// [7:4944]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [8:4944]  firstFlag_23b
	     DS:[R4] = R3             	// [10:4944]  
//4945  			       if(temp = Pause_Process())	

LM488:
	     .stabn 68,0,4945,LM488-_Get_Key
	     call _Pause_Process      	// [12:4945]  Pause_Process
BB26_PU51:	// 0xd05
// BB:26 cycle count: 8
	     [BP + 0] = R1            	// [0:4945]  temp
	     R4 = [BP + 0]            	// [1:4945]  temp
	     cmp R4, 0                	// [3:4945]  
	     je L_51_87               	// [4:4945]  
BB27_PU51:	// 0xd09
// BB:27 cycle count: 20
//4946  			       {			   
//4947  			 	       firstFlag_23b&=~0x8000;

LM489:
	     .stabn 68,0,4947,LM489-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [0:4947]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [1:4947]  firstFlag_23b
	     R4 = DS:[R4]             	// [3:4947]  
	     R3 = R4 & 32767          	// [5:4947]  
	     DS = seg(_firstFlag_23b) 	// [7:4947]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [8:4947]  firstFlag_23b
	     DS:[R4] = R3             	// [10:4947]  
//4948  			 	       return temp; 

LM490:
	     .stabn 68,0,4948,LM490-_Get_Key
	     R1 = [BP + 0]            	// [12:4948]  temp
	     SP = SP + 1              	// [14:4948]  
	     pop BP, PC from [SP]     	// [15:4948]  
L_51_87:	// 0xd16
// BB:28 cycle count: 12
//4949  			 	    
//4950  			       }
//4951  			       
//4952  			      firstFlag_23b&=~0x8000; 

LM491:
	     .stabn 68,0,4952,LM491-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [0:4952]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [1:4952]  firstFlag_23b
	     R4 = DS:[R4]             	// [3:4952]  
	     R3 = R4 & 32767          	// [5:4952]  
	     DS = seg(_firstFlag_23b) 	// [7:4952]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [8:4952]  firstFlag_23b
	     DS:[R4] = R3             	// [10:4952]  
L_51_86:	// 0xd20
L_51_85:	// 0xd20
// BB:29 cycle count: 10
//4954  
//4955  	   	}
//4956         
//4957  		
//4958  	  if(Key)	

LM492:
	     .stabn 68,0,4958,LM492-_Get_Key
	     DS = seg(_Key)           	// [0:4958]  Key
	     R4 = (_Key)              	// [1:4958]  Key
	     R4 = DS:[R4]             	// [3:4958]  
	     cmp R4, 0                	// [5:4958]  
	     jne BB30_PU51            	// [6:4958]  
BB73_PU51:	// 0xd26
// BB:73 cycle count: 3
	     goto L_51_88             	// [0:0]  
BB30_PU51:	// 0xd28
// BB:30 cycle count: 18
//4959  	  {	
//4960  	  	 temp = Pressflag&Key;

LM493:
	     .stabn 68,0,4960,LM493-_Get_Key
	     DS = seg(_Key)           	// [0:4960]  Key
	     R4 = (_Key)              	// [1:4960]  Key
	     R4 = DS:[R4]             	// [3:4960]  
	     DS = seg(_Pressflag)     	// [5:4960]  Pressflag
	     R3 = (_Pressflag)        	// [6:4960]  Pressflag
	     R4 = R4 & DS:[R3]        	// [8:4960]  
	     [BP + 0] = R4            	// [10:4960]  temp
//4961  		  	
//4962  
//4963          if(temp ==0)//抬起

LM494:
	     .stabn 68,0,4963,LM494-_Get_Key
	     R4 = [BP + 0]            	// [11:4963]  temp
	     cmp R4, 0                	// [13:4963]  
	     je BB31_PU51             	// [14:4963]  
BB77_PU51:	// 0xd34
// BB:77 cycle count: 3
	     goto L_51_90             	// [0:0]  
BB31_PU51:	// 0xd36
// BB:31 cycle count: 24
//4964          	{
//4965          	       temp = Key;

LM495:
	     .stabn 68,0,4965,LM495-_Get_Key
	     DS = seg(_Key)           	// [0:4965]  Key
	     R4 = (_Key)              	// [1:4965]  Key
	     R4 = DS:[R4]             	// [3:4965]  
	     [BP + 0] = R4            	// [5:4965]  temp
//4966          	   	  	Key =0;

LM496:
	     .stabn 68,0,4966,LM496-_Get_Key
	     R3 = 0                   	// [6:4966]  
	     DS = seg(_Key)           	// [7:4966]  Key
	     R4 = (_Key)              	// [8:4966]  Key
	     DS:[R4] = R3             	// [10:4966]  
//4967                   
//4968  					  
//4969  					 if(Key_activeflag&temp) 

LM497:
	     .stabn 68,0,4969,LM497-_Get_Key
	     R4 = [BP + 0]            	// [12:4969]  temp
	     DS = seg(_Key_activeflag)	// [14:4969]  Key_activeflag
	     R3 = (_Key_activeflag)   	// [15:4969]  Key_activeflag
	     R4 = R4 & DS:[R3]        	// [17:4969]  
	     cmp R4, 0                	// [19:4969]  
	     je L_51_92               	// [20:4969]  
BB32_PU51:	// 0xd47
// BB:32 cycle count: 12
//4971  				 
//4972  					   //temp_Key_TrueFlase_Buffer =0;
//4973  					   
//4974  					 //    if((!(PlayQuestionflag&0x05))||(PlayQuestionflag&0x8000))// 20160215 xiang
//4975  						if(temp&TwoKeyflag)

LM498:
	     .stabn 68,0,4975,LM498-_Get_Key
	     R4 = [BP + 0]            	// [0:4975]  temp
	     DS = seg(_TwoKeyflag)    	// [2:4975]  TwoKeyflag
	     R3 = (_TwoKeyflag)       	// [3:4975]  TwoKeyflag
	     R4 = R4 & DS:[R3]        	// [5:4975]  
	     cmp R4, 0                	// [7:4975]  
	     je L_51_94               	// [8:4975]  
BB33_PU51:	// 0xd4e
// BB:33 cycle count: 11
//4976  						{
//4977                             Key_TrueFlase_Buffer = temp;  

LM499:
	     .stabn 68,0,4977,LM499-_Get_Key
	     R3 = [BP + 0]            	// [0:4977]  temp
	     DS = seg(_Key_TrueFlase_Buffer)	// [2:4977]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [3:4977]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [5:4977]  
	     jmp L_51_93              	// [7:4977]  
L_51_94:	// 0xd54
// BB:34 cycle count: 24
//4978  						}
//4979  					   else
//4980  					     {
//4981  							   Key_Event = temp;//20160215 xiang   

LM500:
	     .stabn 68,0,4981,LM500-_Get_Key
	     R3 = [BP + 0]            	// [0:4981]  temp
	     DS = seg(_Key_Event)     	// [2:4981]  Key_Event
	     R4 = (_Key_Event)        	// [3:4981]  Key_Event
	     DS:[R4] = R3             	// [5:4981]  
//4982  							   Key_TrueFlase_Buffer =0;  

LM501:
	     .stabn 68,0,4982,LM501-_Get_Key
	     R3 = 0                   	// [7:4982]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [8:4982]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [9:4982]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [11:4982]  
//4983  					 
//4984  								return Key_Event;					     	

LM502:
	     .stabn 68,0,4984,LM502-_Get_Key
	     DS = seg(_Key_Event)     	// [13:4984]  Key_Event
	     R4 = (_Key_Event)        	// [14:4984]  Key_Event
	     R1 = DS:[R4]             	// [16:4984]  
	     SP = SP + 1              	// [18:4984]  
	     pop BP, PC from [SP]     	// [19:4984]  
L_51_93:	// 0xd64
// BB:35 cycle count: 4

LM503:
	     .stabn 68,0,4975,LM503-_Get_Key
	     jmp L_51_91              	// [0:4975]  
L_51_92:	// 0xd65
// BB:36 cycle count: 16
//4987  					   	 
//4988  					 }
//4989  					else
//4990  					{	 
//4991  						  Key_TrueFlase_Buffer =0;	 // 20160215 xiang

LM504:
	     .stabn 68,0,4991,LM504-_Get_Key
	     R3 = 0                   	// [0:4991]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [1:4991]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [2:4991]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [4:4991]  
//4992  						  
//4993                            if(VolumeEnable)

LM505:
	     .stabn 68,0,4993,LM505-_Get_Key
	     DS = seg(_VolumeEnable)  	// [6:4993]  VolumeEnable
	     R4 = (_VolumeEnable)     	// [7:4993]  VolumeEnable
	     R4 = DS:[R4]             	// [9:4993]  
	     cmp R4, 0                	// [11:4993]  
	     je L_51_95               	// [12:4993]  
BB37_PU51:	// 0xd70
// BB:37 cycle count: 7
//4994                            	{
//4995  							if((temp ==PB_button)||((temp ==MB_button)))

LM506:
	     .stabn 68,0,4995,LM506-_Get_Key
	     R4 = [BP + 0]            	// [0:4995]  temp
	     cmp R4, 2                	// [2:4995]  
	     je L_51_97               	// [3:4995]  
BB38_PU51:	// 0xd73
// BB:38 cycle count: 7
	     R4 = [BP + 0]            	// [0:4995]  temp
	     cmp R4, 4                	// [2:4995]  
	     jne L_51_96              	// [3:4995]  
L_51_97:	// 0xd76
// BB:39 cycle count: 12
//4996  			                   {			                   	
//4997  
//4998                                   if((firstFlag_23b&0x4000)==0)

LM507:
	     .stabn 68,0,4998,LM507-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [0:4998]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [1:4998]  firstFlag_23b
	     R4 = DS:[R4]             	// [3:4998]  
	     R4 = R4 & 16384          	// [5:4998]  
	     cmp R4, 0                	// [7:4998]  
	     jne L_51_98              	// [8:4998]  
BB40_PU51:	// 0xd7e
// BB:40 cycle count: 22
//4999                                   	{
//5000                                   	    firstFlag_23b|=0x4000;

LM508:
	     .stabn 68,0,5000,LM508-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [0:5000]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [1:5000]  firstFlag_23b
	     R4 = DS:[R4]             	// [3:5000]  
	     R3 = R4 | 16384          	// [5:5000]  
	     DS = seg(_firstFlag_23b) 	// [7:5000]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [8:5000]  firstFlag_23b
	     DS:[R4] = R3             	// [10:5000]  
//5001  								        Volume(temp);

LM509:
	     .stabn 68,0,5001,LM509-_Get_Key
	     SP = SP - 1              	// [12:5001]  
	     R3 = [BP + 0]            	// [13:5001]  temp
	     R4 = SP + 1              	// [15:5001]  
	     [R4] = R3                	// [17:5001]  
	     call _Volume             	// [19:5001]  Volume
BB41_PU51:	// 0xd8f
// BB:41 cycle count: 25
	     SP = SP + 2              	// [0:5001]  
//5002  										firstFlag_23b&=~0x4000; 

LM510:
	     .stabn 68,0,5002,LM510-_Get_Key
	     DS = seg(_firstFlag_23b) 	// [1:5002]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [2:5002]  firstFlag_23b
	     R4 = DS:[R4]             	// [4:5002]  
	     R3 = R4 & 49151          	// [6:5002]  
	     DS = seg(_firstFlag_23b) 	// [8:5002]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [9:5002]  firstFlag_23b
	     DS:[R4] = R3             	// [11:5002]  
//5003  										PauseFlag =1;

LM511:
	     .stabn 68,0,5003,LM511-_Get_Key
	     R3 = 1                   	// [13:5003]  
	     DS = seg(_PauseFlag)     	// [14:5003]  PauseFlag
	     R4 = (_PauseFlag)        	// [15:5003]  PauseFlag
	     DS:[R4] = R3             	// [17:5003]  
//5004  										return 1;

LM512:
	     .stabn 68,0,5004,LM512-_Get_Key
	     R1 = 1                   	// [19:5004]  
	     pop BP, PC from [SP]     	// [20:5004]  
L_51_98:	// 0xda1
L_51_96:	// 0xda1
L_51_95:	// 0xda1
L_51_91:	// 0xda1
// BB:42 cycle count: 3

LM513:
	     .stabn 68,0,4969,LM513-_Get_Key
	     goto L_51_89             	// [0:4969]  
L_51_90:	// 0xda3
// BB:43 cycle count: 22
//5010          	}
//5011  	  else //按下
//5012  	   {
//5013  
//5014            	  	Key =0;

LM514:
	     .stabn 68,0,5014,LM514-_Get_Key
	     R3 = 0                   	// [0:5014]  
	     DS = seg(_Key)           	// [1:5014]  Key
	     R4 = (_Key)              	// [2:5014]  Key
	     DS:[R4] = R3             	// [4:5014]  
//5015            	  	
//5016  		    Cycle_Timeout_cnt=0;   

LM515:
	     .stabn 68,0,5016,LM515-_Get_Key
	     R3 = 0                   	// [6:5016]  
	     DS = seg(_Cycle_Timeout_cnt)	// [7:5016]  Cycle_Timeout_cnt
	     R4 = (_Cycle_Timeout_cnt)	// [8:5016]  Cycle_Timeout_cnt
	     DS:[R4] = R3             	// [10:5016]  
//5018           // if(Eventflag != E_Demo)
//5019            	{
//5020  		  	
//5021  		
//5022  	    	if((PlayQuestionflag )||(TwoKeyflag))

LM516:
	     .stabn 68,0,5022,LM516-_Get_Key
	     DS = seg(_PlayQuestionflag)	// [12:5022]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [13:5022]  PlayQuestionflag
	     R4 = DS:[R4]             	// [15:5022]  
	     cmp R4, 0                	// [17:5022]  
	     jne L_51_100             	// [18:5022]  
BB44_PU51:	// 0xdb3
// BB:44 cycle count: 10
	     DS = seg(_TwoKeyflag)    	// [0:5022]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [1:5022]  TwoKeyflag
	     R4 = DS:[R4]             	// [3:5022]  
	     cmp R4, 0                	// [5:5022]  
	     jne L_51_100             	// [6:5022]  
BB75_PU51:	// 0xdb9
// BB:75 cycle count: 3
	     goto L_51_99             	// [0:0]  
L_51_100:	// 0xdbb
// BB:45 cycle count: 10
//5023  	    	 	{
//5024  	    	 		 if(TimeCnt_Key<C_1S)//TwokeyCntl

LM517:
	     .stabn 68,0,5024,LM517-_Get_Key
	     DS = seg(_TimeCnt_Key)   	// [0:5024]  TimeCnt_Key
	     R4 = (_TimeCnt_Key)      	// [1:5024]  TimeCnt_Key
	     R4 = DS:[R4]             	// [3:5024]  
	     cmp R4, 9                	// [5:5024]  
	     jbe BB46_PU51            	// [6:5024]  
BB76_PU51:	// 0xdc1
// BB:76 cycle count: 3
	     goto L_51_101            	// [0:0]  
BB46_PU51:	// 0xdc3
// BB:46 cycle count: 12
//5025  	    	 		 	 {
//5026  	    	 		 	 	  if(temp == TwoKey_temp)

LM518:
	     .stabn 68,0,5026,LM518-_Get_Key
	     R3 = [BP + 0]            	// [0:5026]  temp
	     DS = seg(_TwoKey_temp)   	// [2:5026]  TwoKey_temp
	     R4 = (_TwoKey_temp)      	// [3:5026]  TwoKey_temp
	     R4 = DS:[R4]             	// [5:5026]  
	     cmp R3, R4               	// [7:5026]  
	     jne L_51_102             	// [8:5026]  
BB47_PU51:	// 0xdca
// BB:47 cycle count: 7
//5027  	    	 		 	 	  	{
//5028  	    	 		 	 	  
//5029  								if(temp == Playbutton)

LM519:
	     .stabn 68,0,5029,LM519-_Get_Key
	     R4 = [BP + 0]            	// [0:5029]  temp
	     cmp R4, 1                	// [2:5029]  
	     jne L_51_104             	// [3:5029]  
BB48_PU51:	// 0xdcd
// BB:48 cycle count: 37
//5030  								{						
//5031  								  //if((PlayQuestionflag&0x01)&&((!PlayScoresFlag)||(TieflagAskQuestion)))	//xiang 20150106
//5032  								    {
//5033  									    PauseFlag =1;

LM520:
	     .stabn 68,0,5033,LM520-_Get_Key
	     R3 = 1                   	// [0:5033]  
	     DS = seg(_PauseFlag)     	// [1:5033]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:5033]  PauseFlag
	     DS:[R4] = R3             	// [4:5033]  
//5034  									    Key_TrueFlase_Buffer =0;//20160215

LM521:
	     .stabn 68,0,5034,LM521-_Get_Key
	     R3 = 0                   	// [6:5034]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [7:5034]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [8:5034]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [10:5034]  
//5035                                          Pressflag&=~Playbutton;//避免抬起响应

LM522:
	     .stabn 68,0,5035,LM522-_Get_Key
	     DS = seg(_Pressflag)     	// [12:5035]  Pressflag
	     R4 = (_Pressflag)        	// [13:5035]  Pressflag
	     R4 = DS:[R4]             	// [15:5035]  
	     R3 = R4 & 65534          	// [17:5035]  
	     DS = seg(_Pressflag)     	// [19:5035]  Pressflag
	     R4 = (_Pressflag)        	// [20:5035]  Pressflag
	     DS:[R4] = R3             	// [22:5035]  
//5036  										TwoKey_temp =0;//20160323

LM523:
	     .stabn 68,0,5036,LM523-_Get_Key
	     R3 = 0                   	// [24:5036]  
	     DS = seg(_TwoKey_temp)   	// [25:5036]  TwoKey_temp
	     R4 = (_TwoKey_temp)      	// [26:5036]  TwoKey_temp
	     DS:[R4] = R3             	// [28:5036]  
//5037  									    return 0xffff;;

LM524:
	     .stabn 68,0,5037,LM524-_Get_Key
	     R1 = - 1                 	// [30:5037]  
	     SP = SP + 1              	// [31:5037]  
	     pop BP, PC from [SP]     	// [32:5037]  
L_51_104:	// 0xde9
// BB:49 cycle count: 7
//5048  //										TwoKey_temp =0;//20160323
//5049  //									    return 0xffff;;
//5050  //								    }
//5051  //								}
//5052  							   else if(temp == Key_False)

LM525:
	     .stabn 68,0,5052,LM525-_Get_Key
	     R4 = [BP + 0]            	// [0:5052]  temp
	     cmp R4, 4                	// [2:5052]  
	     jne L_51_105             	// [3:5052]  
BB50_PU51:	// 0xdec
// BB:50 cycle count: 10
//5053  							   {
//5054  							   	  if(TwoKeyflag==Key_False)	

LM526:
	     .stabn 68,0,5054,LM526-_Get_Key
	     DS = seg(_TwoKeyflag)    	// [0:5054]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [1:5054]  TwoKeyflag
	     R4 = DS:[R4]             	// [3:5054]  
	     cmp R4, 4                	// [5:5054]  
	     jne L_51_106             	// [6:5054]  
BB51_PU51:	// 0xdf2
// BB:51 cycle count: 25
//5055  							   	   {
//5056  								   	   	  CheaterFlag =1;//xiang 20180517

LM527:
	     .stabn 68,0,5056,LM527-_Get_Key
	     R3 = 1                   	// [0:5056]  
	     DS = seg(_CheaterFlag)   	// [1:5056]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [2:5056]  CheaterFlag
	     DS:[R4] = R3             	// [4:5056]  
//5057  								   	   	  Key_TrueFlase_Buffer =0;//20160215

LM528:
	     .stabn 68,0,5057,LM528-_Get_Key
	     R3 = 0                   	// [6:5057]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [7:5057]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [8:5057]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [10:5057]  
//5058  
//5059  										  TwoKey_temp =0;//20160323

LM529:
	     .stabn 68,0,5059,LM529-_Get_Key
	     R3 = 0                   	// [12:5059]  
	     DS = seg(_TwoKey_temp)   	// [13:5059]  TwoKey_temp
	     R4 = (_TwoKey_temp)      	// [14:5059]  TwoKey_temp
	     DS:[R4] = R3             	// [16:5059]  
//5060  								   	     return 0xffff;	   	 

LM530:
	     .stabn 68,0,5060,LM530-_Get_Key
	     R1 = - 1                 	// [18:5060]  
	     SP = SP + 1              	// [19:5060]  
	     pop BP, PC from [SP]     	// [20:5060]  
L_51_106:	// 0xe04
L_51_105:	// 0xe04
L_51_103:	// 0xe04
L_51_102:	// 0xe04
L_51_101:	// 0xe04
// BB:52 cycle count: 7
//5068  	    	 		 	 	  	}
//5069  	    	 		 	 	
//5070  	    	 		 	  
//5071  	    	 		 	 }
//5072  	    	 		    TwoKey_temp = temp;

LM531:
	     .stabn 68,0,5072,LM531-_Get_Key
	     R3 = [BP + 0]            	// [0:5072]  temp
	     DS = seg(_TwoKey_temp)   	// [2:5072]  TwoKey_temp
	     R4 = (_TwoKey_temp)      	// [3:5072]  TwoKey_temp
	     DS:[R4] = R3             	// [5:5072]  
L_51_99:	// 0xe09
// BB:53 cycle count: 10
//5073  	    	 		  //  TwokeyCntl =0;      
//5074  	    	 	}
//5075  
//5076  
//5077                 if(TimeCnt_Key<C_1s_Pause)

LM532:
	     .stabn 68,0,5077,LM532-_Get_Key
	     DS = seg(_TimeCnt_Key)   	// [0:5077]  TimeCnt_Key
	     R4 = (_TimeCnt_Key)      	// [1:5077]  TimeCnt_Key
	     R4 = DS:[R4]             	// [3:5077]  
	     cmp R4, 7                	// [5:5077]  
	     ja L_51_107              	// [6:5077]  
BB54_PU51:	// 0xe0f
// BB:54 cycle count: 12
//5078                 	{
//5079  
//5080                     if(((Key_TrueFlase_Buffer + temp) == (Key_True+Key_False)))

LM533:
	     .stabn 68,0,5080,LM533-_Get_Key
	     R4 = [BP + 0]            	// [0:5080]  temp
	     DS = seg(_Key_TrueFlase_Buffer)	// [2:5080]  Key_TrueFlase_Buffer
	     R3 = (_Key_TrueFlase_Buffer)	// [3:5080]  Key_TrueFlase_Buffer
	     R4 = R4 + DS:[R3]        	// [5:5080]  
	     cmp R4, 6                	// [7:5080]  
	     jne L_51_108             	// [8:5080]  
BB55_PU51:	// 0xe16
// BB:55 cycle count: 30
//5081                     	{
//5082                     	
//5083                     	
//5084                          temp =0;

LM534:
	     .stabn 68,0,5084,LM534-_Get_Key
	     R4 = 0                   	// [0:5084]  
	     [BP + 0] = R4            	// [1:5084]  temp
//5085                     		Key_TrueFlase_Buffer =0;

LM535:
	     .stabn 68,0,5085,LM535-_Get_Key
	     R3 = 0                   	// [2:5085]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [3:5085]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [4:5085]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [6:5085]  
//5086                     		
//5087                     		Pressflag&=~(Key_True|Key_False);

LM536:
	     .stabn 68,0,5087,LM536-_Get_Key
	     DS = seg(_Pressflag)     	// [8:5087]  Pressflag
	     R4 = (_Pressflag)        	// [9:5087]  Pressflag
	     R4 = DS:[R4]             	// [11:5087]  
	     R3 = R4 & 65529          	// [13:5087]  
	     DS = seg(_Pressflag)     	// [15:5087]  Pressflag
	     R4 = (_Pressflag)        	// [16:5087]  Pressflag
	     DS:[R4] = R3             	// [18:5087]  
//5088                     		if(Answerflag==1)

LM537:
	     .stabn 68,0,5088,LM537-_Get_Key
	     DS = seg(_Answerflag)    	// [20:5088]  Answerflag
	     R4 = (_Answerflag)       	// [21:5088]  Answerflag
	     R4 = DS:[R4]             	// [23:5088]  
	     cmp R4, 1                	// [25:5088]  
	     jne L_51_109             	// [26:5088]  
BB56_PU51:	// 0xe2d
// BB:56 cycle count: 14
//5089                     		{
//5090                     		    Sleepflag = C_PassToEnd;

LM538:
	     .stabn 68,0,5090,LM538-_Get_Key
	     R3 = 16384               	// [0:5090]  
	     DS = seg(_Sleepflag)     	// [2:5090]  Sleepflag
	     R4 = (_Sleepflag)        	// [3:5090]  Sleepflag
	     DS:[R4] = R3             	// [5:5090]  
//5091                     		    return C_Finish;

LM539:
	     .stabn 68,0,5091,LM539-_Get_Key
	     R1 = - 1                 	// [7:5091]  
	     SP = SP + 1              	// [8:5091]  
	     pop BP, PC from [SP]     	// [9:5091]  
L_51_109:	// 0xe36
L_51_108:	// 0xe36
L_51_107:	// 0xe36
// BB:57 cycle count: 8
//5114  
//5115            	}
//5116  
//5117  		  
//5118               if(temp&(Key_True|Key_False))

LM540:
	     .stabn 68,0,5118,LM540-_Get_Key
	     R4 = [BP + 0]            	// [0:5118]  temp
	     R4 = R4 & 6              	// [2:5118]  
	     cmp R4, 0                	// [3:5118]  
	     je L_51_110              	// [4:5118]  
BB58_PU51:	// 0xe3a
// BB:58 cycle count: 7
//5119               	{
//5120                   Key_TrueFlase_Buffer = temp;				

LM541:
	     .stabn 68,0,5120,LM541-_Get_Key
	     R3 = [BP + 0]            	// [0:5120]  temp
	     DS = seg(_Key_TrueFlase_Buffer)	// [2:5120]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [3:5120]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [5:5120]  
L_51_110:	// 0xe3f
L_51_89:	// 0xe3f
// BB:59 cycle count: 6
//5148  //		      }
//5149  	    
//5150  	      }
//5151  
//5152  		  TimeCnt_Key =0;

LM542:
	     .stabn 68,0,5152,LM542-_Get_Key
	     R3 = 0                   	// [0:5152]  
	     DS = seg(_TimeCnt_Key)   	// [1:5152]  TimeCnt_Key
	     R4 = (_TimeCnt_Key)      	// [2:5152]  TimeCnt_Key
	     DS:[R4] = R3             	// [4:5152]  
L_51_88:	// 0xe44
// BB:60 cycle count: 10
//5153  	     
//5154  	  }
//5155  
//5156  
//5157          if(Key_TrueFlase_Buffer)

LM543:
	     .stabn 68,0,5157,LM543-_Get_Key
	     DS = seg(_Key_TrueFlase_Buffer)	// [0:5157]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [1:5157]  Key_TrueFlase_Buffer
	     R4 = DS:[R4]             	// [3:5157]  
	     cmp R4, 0                	// [5:5157]  
	     je L_51_111              	// [6:5157]  
BB61_PU51:	// 0xe4a
// BB:61 cycle count: 10
//5158          	{
//5159  
//5160                   if(TimeCnt_Key>=C_1s_Pause)

LM544:
	     .stabn 68,0,5160,LM544-_Get_Key
	     DS = seg(_TimeCnt_Key)   	// [0:5160]  TimeCnt_Key
	     R4 = (_TimeCnt_Key)      	// [1:5160]  TimeCnt_Key
	     R4 = DS:[R4]             	// [3:5160]  
	     cmp R4, 7                	// [5:5160]  
	     jbe L_51_112             	// [6:5160]  
BB62_PU51:	// 0xe50
// BB:62 cycle count: 15
//5161                   	{
//5162                   	   
//5163  
//5164  					  if(Key_activeflag&Key_TrueFlase_Buffer) 

LM545:
	     .stabn 68,0,5164,LM545-_Get_Key
	     DS = seg(_Key_activeflag)	// [0:5164]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [1:5164]  Key_activeflag
	     R4 = DS:[R4]             	// [3:5164]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [5:5164]  Key_TrueFlase_Buffer
	     R3 = (_Key_TrueFlase_Buffer)	// [6:5164]  Key_TrueFlase_Buffer
	     R4 = R4 & DS:[R3]        	// [8:5164]  
	     cmp R4, 0                	// [10:5164]  
	     je L_51_113              	// [11:5164]  
BB63_PU51:	// 0xe5a
// BB:63 cycle count: 33
//5165  					  {
//5166  					  	 Key_Event = Key_TrueFlase_Buffer;//20160215 xiang

LM546:
	     .stabn 68,0,5166,LM546-_Get_Key
	     DS = seg(_Key_TrueFlase_Buffer)	// [0:5166]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [1:5166]  Key_TrueFlase_Buffer
	     R3 = DS:[R4]             	// [3:5166]  
	     DS = seg(_Key_Event)     	// [5:5166]  Key_Event
	     R4 = (_Key_Event)        	// [6:5166]  Key_Event
	     DS:[R4] = R3             	// [8:5166]  
//5167  					  	 Key_TrueFlase_Buffer =0;   

LM547:
	     .stabn 68,0,5167,LM547-_Get_Key
	     R3 = 0                   	// [10:5167]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [11:5167]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [12:5167]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [14:5167]  
//5168  						TwoKey_temp =0;

LM548:
	     .stabn 68,0,5168,LM548-_Get_Key
	     R3 = 0                   	// [16:5168]  
	     DS = seg(_TwoKey_temp)   	// [17:5168]  TwoKey_temp
	     R4 = (_TwoKey_temp)      	// [18:5168]  TwoKey_temp
	     DS:[R4] = R3             	// [20:5168]  
//5169  				 	     return Key_Event;;

LM549:
	     .stabn 68,0,5169,LM549-_Get_Key
	     DS = seg(_Key_Event)     	// [22:5169]  Key_Event
	     R4 = (_Key_Event)        	// [23:5169]  Key_Event
	     R1 = DS:[R4]             	// [25:5169]  
	     SP = SP + 1              	// [27:5169]  
	     pop BP, PC from [SP]     	// [28:5169]  
L_51_113:	// 0xe72
// BB:64 cycle count: 6
//5170  					  }
//5171  				 	      
//5172  				 	     Key_TrueFlase_Buffer =0;

LM550:
	     .stabn 68,0,5172,LM550-_Get_Key
	     R3 = 0                   	// [0:5172]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [1:5172]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [2:5172]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [4:5172]  
L_51_112:	// 0xe77
L_51_111:	// 0xe77
// BB:65 cycle count: 7
//5174  
//5175          	}
//5176  
//5177    
//5178          if(Countdown_E ==1 )

LM551:
	     .stabn 68,0,5178,LM551-_Get_Key
	     R4 = [BP + 4]            	// [0:5178]  Countdown_E
	     cmp R4, 1                	// [2:5178]  
	     jne L_51_114             	// [3:5178]  
BB66_PU51:	// 0xe7a
// BB:66 cycle count: 15
//5179  			  	{
//5180                    if(TimeCnt > Time_Countdown)

LM552:
	     .stabn 68,0,5180,LM552-_Get_Key
	     DS = seg(_Time_Countdown)	// [0:5180]  Time_Countdown
	     R4 = (_Time_Countdown)   	// [1:5180]  Time_Countdown
	     R3 = DS:[R4]             	// [3:5180]  
	     DS = seg(_TimeCnt)       	// [5:5180]  TimeCnt
	     R4 = (_TimeCnt)          	// [6:5180]  TimeCnt
	     R4 = DS:[R4]             	// [8:5180]  
	     cmp R3, R4               	// [10:5180]  
	     jae L_51_115             	// [11:5180]  
BB67_PU51:	// 0xe84
// BB:67 cycle count: 8
//5181                    {
//5182                         return TimeOver;

LM553:
	     .stabn 68,0,5182,LM553-_Get_Key
	     R1 = - 4084              	// [0:5182]  
	     SP = SP + 1              	// [2:5182]  
	     pop BP, PC from [SP]     	// [3:5182]  
L_51_115:	// 0xe88
L_51_114:	// 0xe88
// BB:68 cycle count: 10
//5185                    }               
//5186  			   }
//5187  			   
//5188  			   
//5189  		  if(Countdownflag)

LM554:
	     .stabn 68,0,5189,LM554-_Get_Key
	     DS = seg(_Countdownflag) 	// [0:5189]  Countdownflag
	     R4 = (_Countdownflag)    	// [1:5189]  Countdownflag
	     R4 = DS:[R4]             	// [3:5189]  
	     cmp R4, 0                	// [5:5189]  
	     je L_51_116              	// [6:5189]  
BB69_PU51:	// 0xe8e
// BB:69 cycle count: 11
//5190  			{
//5191  				
//5192  			    if(T_Countdowncnt > Time_Countdown_Sleep)	

LM555:
	     .stabn 68,0,5192,LM555-_Get_Key
	     DS = seg(_T_Countdowncnt)	// [0:5192]  T_Countdowncnt
	     R4 = (_T_Countdowncnt)   	// [1:5192]  T_Countdowncnt
	     R4 = DS:[R4]             	// [3:5192]  
	     cmp R4, 2880             	// [5:5192]  
	     jbe L_51_117             	// [7:5192]  
BB70_PU51:	// 0xe95
// BB:70 cycle count: 19
//5193  			    {
//5194  			    	 Sleepflag |=1;//off

LM556:
	     .stabn 68,0,5194,LM556-_Get_Key
	     DS = seg(_Sleepflag)     	// [0:5194]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:5194]  Sleepflag
	     R4 = DS:[R4]             	// [3:5194]  
	     R4 = R4 | 1              	// [5:5194]  
	     DS = seg(_Sleepflag)     	// [6:5194]  Sleepflag
	     R3 = (_Sleepflag)        	// [7:5194]  Sleepflag
	     DS:[R3] = R4             	// [9:5194]  
//5195  				     return TimeOver;

LM557:
	     .stabn 68,0,5195,LM557-_Get_Key
	     R1 = - 4084              	// [11:5195]  
	     SP = SP + 1              	// [13:5195]  
	     pop BP, PC from [SP]     	// [14:5195]  
L_51_117:	// 0xea2
L_51_116:	// 0xea2
Lt_51_1:	// 0xea2
// BB:71 cycle count: 7
//5196  			    }
//5197  			}	   
//5198  			   
//5199  
//5200   	}while(Countdown_E);

LM558:
	     .stabn 68,0,5200,LM558-_Get_Key
	     R4 = [BP + 4]            	// [0:5200]  Countdown_E
	     cmp R4, 0                	// [2:5200]  
	     je BB72_PU51             	// [3:5200]  
BB78_PU51:	// 0xea5
// BB:78 cycle count: 3
	     goto L_51_76             	// [0:0]  
BB72_PU51:	// 0xea7
// BB:72 cycle count: 7
//5201   	
//5202      return 0;

LM559:
	     .stabn 68,0,5202,LM559-_Get_Key
	     R1 = 0                   	// [0:5202]  
	     SP = SP + 1              	// [1:5202]  
	     pop BP, PC from [SP]     	// [2:5202]  
LBE47:
	.endp	
	     .stabs "Countdown_E:p1",160,0,0,4
	     .stabn 192,0,0,LBB47-_Get_Key
	     .stabs "temp:4",128,0,0,0
	     .stabn 224,0,0,LBE47-_Get_Key
LME52:
	     .stabf LME52-_Get_Key
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
	// lra_spill_temp_22 = 5
	// lra_spill_temp_23 = 6
	// lra_spill_temp_24 = 7
	// lra_spill_temp_25 = 8
	// lra_spill_temp_26 = 9
	// lra_spill_temp_27 = 10
//5459  //==================================================
//5460  //
//5461  //==================================================
//5462  void Ask_Question()
//5463  {

LM560:
	     .stabn 68,0,5463,LM560-_Ask_Question
BB1_PU52:	// 0xeaa
// BB:1 cycle count: 23
	     push BP to [SP]          	// [0:5463]  
	     SP = SP - 11             	// [2:5463]  
	     BP = SP + 1              	// [3:5463]  
LBB48:
//5464  //  unsigned int temp=0,i;
//5465       unsigned int key_activetemp = Key_activeflag;

LM561:
	     .stabn 68,0,5465,LM561-_Ask_Question
	     DS = seg(_Key_activeflag)	// [5:5465]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [6:5465]  Key_activeflag
	     R4 = DS:[R4]             	// [8:5465]  
	     [BP + 0] = R4            	// [10:5465]  key_activetemp
//5466       
//5467       unsigned int temp_PlayQuestionflag=PlayQuestionflag;

LM562:
	     .stabn 68,0,5467,LM562-_Ask_Question
	     DS = seg(_PlayQuestionflag)	// [11:5467]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [12:5467]  PlayQuestionflag
	     R4 = DS:[R4]             	// [14:5467]  
	     [BP + 1] = R4            	// [16:5467]  temp_PlayQuestionflag
//5468       
//5469       PlayQuestionflag =1;

LM563:
	     .stabn 68,0,5469,LM563-_Ask_Question
	     R3 = 1                   	// [17:5469]  
	     DS = seg(_PlayQuestionflag)	// [18:5469]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [19:5469]  PlayQuestionflag
	     DS:[R4] = R3             	// [21:5469]  
L_52_12:	// 0xebd
// BB:2 cycle count: 28
//5470     do
//5471  	{
//5472  		
//5473  			Key_Event =0;

LM564:
	     .stabn 68,0,5473,LM564-_Ask_Question
	     R3 = 0                   	// [0:5473]  
	     DS = seg(_Key_Event)     	// [1:5473]  Key_Event
	     R4 = (_Key_Event)        	// [2:5473]  Key_Event
	     DS:[R4] = R3             	// [4:5473]  
//5474  			Key_activeflag =0;		

LM565:
	     .stabn 68,0,5474,LM565-_Ask_Question
	     R3 = 0                   	// [6:5474]  
	     DS = seg(_Key_activeflag)	// [7:5474]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:5474]  Key_activeflag
	     DS:[R4] = R3             	// [10:5474]  
//5475  			PauseFlag =0;

LM566:
	     .stabn 68,0,5475,LM566-_Ask_Question
	     R3 = 0                   	// [12:5475]  
	     DS = seg(_PauseFlag)     	// [13:5475]  PauseFlag
	     R4 = (_PauseFlag)        	// [14:5475]  PauseFlag
	     DS:[R4] = R3             	// [16:5475]  
//5476  
//5477  		    //delay_time(8);
//5478  		  if(R_E ==C_TwoSounds)  

LM567:
	     .stabn 68,0,5478,LM567-_Ask_Question
	     DS = seg(_R_E)           	// [18:5478]  R_E
	     R4 = (_R_E)              	// [19:5478]  R_E
	     R4 = DS:[R4]             	// [21:5478]  
	     cmp R4, 2                	// [23:5478]  
	     jne L_52_13              	// [24:5478]  
BB3_PU52:	// 0xed2
// BB:3 cycle count: 11
//5479  		  {
//5480  		  if(gQuestionIdx_1!=0xffff)

LM568:
	     .stabn 68,0,5480,LM568-_Ask_Question
	     DS = seg(_gQuestionIdx_1)	// [0:5480]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [1:5480]  gQuestionIdx_1
	     R4 = DS:[R4]             	// [3:5480]  
	     cmp R4, 65535            	// [5:5480]  
	     je L_52_14               	// [7:5480]  
BB4_PU52:	// 0xed9
// BB:4 cycle count: 13
//5481  		     PlayA1800_Elements(Get_Question_Sound(gQuestionIdx_1));

LM569:
	     .stabn 68,0,5481,LM569-_Ask_Question
	     SP = SP - 1              	// [0:5481]  
	     DS = seg(_gQuestionIdx_1)	// [1:5481]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [2:5481]  gQuestionIdx_1
	     R3 = DS:[R4]             	// [4:5481]  
	     R4 = SP + 1              	// [6:5481]  
	     [R4] = R3                	// [8:5481]  
	     call _Get_Question_Sound 	// [10:5481]  Get_Question_Sound
BB5_PU52:	// 0xee3
// BB:5 cycle count: 7
	     R4 = SP + 1              	// [0:5481]  
	     [R4] = R1                	// [2:5481]  
	     call _PlayA1800_Elements 	// [4:5481]  PlayA1800_Elements
BB6_PU52:	// 0xee8
// BB:6 cycle count: 1
	     SP = SP + 1              	// [0:5481]  
L_52_14:	// 0xee9
// BB:7 cycle count: 9
//5482  		      delay_time(8);

LM570:
	     .stabn 68,0,5482,LM570-_Ask_Question
	     SP = SP - 1              	// [0:5482]  
	     R3 = 8                   	// [1:5482]  
	     R4 = SP + 1              	// [2:5482]  
	     [R4] = R3                	// [4:5482]  
	     call _delay_time         	// [6:5482]  delay_time
BB8_PU52:	// 0xef0
// BB:8 cycle count: 1
	     SP = SP + 1              	// [0:5482]  
L_52_13:	// 0xef1
// BB:9 cycle count: 11
//5483  		     
//5484  		  }
//5485  		   if(gQuestionIdx!=0xffff)  		  	

LM571:
	     .stabn 68,0,5485,LM571-_Ask_Question
	     DS = seg(_gQuestionIdx)  	// [0:5485]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:5485]  gQuestionIdx
	     R4 = DS:[R4]             	// [3:5485]  
	     cmp R4, 65535            	// [5:5485]  
	     je L_52_15               	// [7:5485]  
BB10_PU52:	// 0xef8
// BB:10 cycle count: 13
//5486  		      PlayA1800_Elements(Get_Question_Sound(gQuestionIdx));//PlayA1800_Question(gQuestionIdx);

LM572:
	     .stabn 68,0,5486,LM572-_Ask_Question
	     SP = SP - 1              	// [0:5486]  
	     DS = seg(_gQuestionIdx)  	// [1:5486]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [2:5486]  gQuestionIdx
	     R3 = DS:[R4]             	// [4:5486]  
	     R4 = SP + 1              	// [6:5486]  
	     [R4] = R3                	// [8:5486]  
	     call _Get_Question_Sound 	// [10:5486]  Get_Question_Sound
BB11_PU52:	// 0xf02
// BB:11 cycle count: 7
	     R4 = SP + 1              	// [0:5486]  
	     [R4] = R1                	// [2:5486]  
	     call _PlayA1800_Elements 	// [4:5486]  PlayA1800_Elements
BB12_PU52:	// 0xf07
// BB:12 cycle count: 1
	     SP = SP + 1              	// [0:5486]  
L_52_15:	// 0xf08
// BB:13 cycle count: 15
//5487  		   
//5488  		     TwoKeyflag =0;

LM573:
	     .stabn 68,0,5488,LM573-_Ask_Question
	     R3 = 0                   	// [0:5488]  
	     DS = seg(_TwoKeyflag)    	// [1:5488]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [2:5488]  TwoKeyflag
	     DS:[R4] = R3             	// [4:5488]  
//5489  		     delay_time(8);

LM574:
	     .stabn 68,0,5489,LM574-_Ask_Question
	     SP = SP - 1              	// [6:5489]  
	     R3 = 8                   	// [7:5489]  
	     R4 = SP + 1              	// [8:5489]  
	     [R4] = R3                	// [10:5489]  
	     call _delay_time         	// [12:5489]  delay_time
BB14_PU52:	// 0xf14
// BB:14 cycle count: 1
	     SP = SP + 1              	// [0:5489]  
Lt_52_1:	// 0xf15
// BB:15 cycle count: 10
//5490  	 }while(PauseFlag); 

LM575:
	     .stabn 68,0,5490,LM575-_Ask_Question
	     DS = seg(_PauseFlag)     	// [0:5490]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:5490]  PauseFlag
	     R4 = DS:[R4]             	// [3:5490]  
	     cmp R4, 0                	// [5:5490]  
	     je BB16_PU52             	// [6:5490]  
BB21_PU52:	// 0xf1b
// BB:21 cycle count: 3
	     goto L_52_12             	// [0:0]  
BB16_PU52:	// 0xf1d
// BB:16 cycle count: 16
//5491  	 
//5492  	  PlayQuestionflag =temp_PlayQuestionflag;

LM576:
	     .stabn 68,0,5492,LM576-_Ask_Question
	     R3 = [BP + 1]            	// [0:5492]  temp_PlayQuestionflag
	     DS = seg(_PlayQuestionflag)	// [2:5492]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [3:5492]  PlayQuestionflag
	     DS:[R4] = R3             	// [5:5492]  
//5493  
//5494  
//5495       Question_Answer =0;

LM577:
	     .stabn 68,0,5495,LM577-_Ask_Question
	     R3 = 0                   	// [7:5495]  
	     DS = seg(_Question_Answer)	// [8:5495]  Question_Answer
	     R4 = (_Question_Answer)  	// [9:5495]  Question_Answer
	     DS:[R4] = R3             	// [11:5495]  
//5496       SP_RampDnDAC1();

LM578:
	     .stabn 68,0,5496,LM578-_Ask_Question
	     call _SP_RampDnDAC1      	// [13:5496]  SP_RampDnDAC1
BB17_PU52:	// 0xf29
// BB:17 cycle count: 24
//5497       
//5498       Key_Event =0;

LM579:
	     .stabn 68,0,5498,LM579-_Ask_Question
	     R3 = 0                   	// [0:5498]  
	     DS = seg(_Key_Event)     	// [1:5498]  Key_Event
	     R4 = (_Key_Event)        	// [2:5498]  Key_Event
	     DS:[R4] = R3             	// [4:5498]  
//5499       Key_activeflag =  key_activetemp;

LM580:
	     .stabn 68,0,5499,LM580-_Ask_Question
	     R3 = [BP + 0]            	// [6:5499]  key_activetemp
	     DS = seg(_Key_activeflag)	// [8:5499]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [9:5499]  Key_activeflag
	     DS:[R4] = R3             	// [11:5499]  
//5504  //		gQuestionIdx = testque[testqueptr];
//5505  //	}
//5506  //#endif
//5507  
//5508   if( Eventflag != E_Demo)

LM581:
	     .stabn 68,0,5508,LM581-_Ask_Question
	     DS = seg(_Eventflag)     	// [13:5508]  Eventflag
	     R4 = (_Eventflag)        	// [14:5508]  Eventflag
	     R4 = DS:[R4]             	// [16:5508]  
	     cmp R4, 61460            	// [18:5508]  
	     jne BB18_PU52            	// [20:5508]  
BB20_PU52:	// 0xf3a
// BB:20 cycle count: 3
	     goto L_52_16             	// [0:0]  
BB18_PU52:	// 0xf3c
// BB:18 cycle count: 159
//5509   	{
//5510  		QuestionStatus_LQ[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];		//suppress Qx from LQ;	

LM582:
	     .stabn 68,0,5510,LM582-_Ask_Question
	     DS = seg(_gQuestionIdx)  	// [0:5510]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:5510]  gQuestionIdx
	     R4 = DS:[R4]             	// [3:5510]  
	     R4 = R4 lsr 4            	// [5:5510]  
	     [BP + 2] = R4            	// [6:5510]  __save_expr_temp_9
	     R4 = [BP + 2]            	// [7:5510]  __save_expr_temp_9
	     R3 = 0                   	// [9:5510]  
	     R1 = (_QuestionStatus_LQ)	// [10:5510]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [12:5510]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [13:5510]  
	     R3 = R3 + R2, Carry      	// [14:5510]  
	     DS = R3                  	// [15:5510]  
	     R4 = DS:[R4]             	// [16:5510]  
	     [BP + 5] = R4            	// [18:5510]  lra_spill_temp_22
	     DS = seg(_gQuestionIdx)  	// [19:5510]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [20:5510]  gQuestionIdx
	     R4 = DS:[R4]             	// [22:5510]  
	     R4 = R4 & 15             	// [24:5510]  
	     R3 = 0                   	// [25:5510]  
	     R1 = (_BitMap)           	// [26:5510]  BitMap
	     R2 = seg(_BitMap)        	// [28:5510]  BitMap
	     R4 = R4 + R1             	// [29:5510]  
	     R3 = R3 + R2, Carry      	// [30:5510]  
	     DS = R3                  	// [31:5510]  
	     R4 = DS:[R4]             	// [32:5510]  
	     R3 = R4 ^ 65535          	// [34:5510]  
	     R4 = [BP + 5]            	// [36:5510]  lra_spill_temp_22
	     R4 = R4 & R3             	// [38:5510]  
	     [BP + 6] = R4            	// [39:5510]  lra_spill_temp_23
	     R4 = [BP + 2]            	// [40:5510]  __save_expr_temp_9
	     R3 = 0                   	// [42:5510]  
	     R1 = (_QuestionStatus_LQ)	// [43:5510]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [45:5510]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [46:5510]  
	     R3 = R3 + R2, Carry      	// [47:5510]  
	     DS = R3                  	// [48:5510]  
	     R3 = [BP + 6]            	// [49:5510]  lra_spill_temp_23
	     DS:[R4] = R3             	// [51:5510]  
//5511  		QuestionStatus_LQA[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];	

LM583:
	     .stabn 68,0,5511,LM583-_Ask_Question
	     DS = seg(_gQuestionIdx)  	// [53:5511]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [54:5511]  gQuestionIdx
	     R4 = DS:[R4]             	// [56:5511]  
	     R4 = R4 lsr 4            	// [58:5511]  
	     [BP + 3] = R4            	// [59:5511]  __save_expr_temp_10
	     R4 = [BP + 3]            	// [60:5511]  __save_expr_temp_10
	     R3 = 0                   	// [62:5511]  
	     R1 = (_QuestionStatus_LQA)	// [63:5511]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [65:5511]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [66:5511]  
	     R3 = R3 + R2, Carry      	// [67:5511]  
	     DS = R3                  	// [68:5511]  
	     R4 = DS:[R4]             	// [69:5511]  
	     [BP + 7] = R4            	// [71:5511]  lra_spill_temp_24
	     DS = seg(_gQuestionIdx)  	// [72:5511]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [73:5511]  gQuestionIdx
	     R4 = DS:[R4]             	// [75:5511]  
	     R4 = R4 & 15             	// [77:5511]  
	     R3 = 0                   	// [78:5511]  
	     R1 = (_BitMap)           	// [79:5511]  BitMap
	     R2 = seg(_BitMap)        	// [81:5511]  BitMap
	     R4 = R4 + R1             	// [82:5511]  
	     R3 = R3 + R2, Carry      	// [83:5511]  
	     DS = R3                  	// [84:5511]  
	     R4 = DS:[R4]             	// [85:5511]  
	     R3 = R4 ^ 65535          	// [87:5511]  
	     R4 = [BP + 7]            	// [89:5511]  lra_spill_temp_24
	     R4 = R4 & R3             	// [91:5511]  
	     [BP + 8] = R4            	// [92:5511]  lra_spill_temp_25
	     R4 = [BP + 3]            	// [93:5511]  __save_expr_temp_10
	     R3 = 0                   	// [95:5511]  
	     R1 = (_QuestionStatus_LQA)	// [96:5511]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [98:5511]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [99:5511]  
	     R3 = R3 + R2, Carry      	// [100:5511]  
	     DS = R3                  	// [101:5511]  
	     R3 = [BP + 8]            	// [102:5511]  lra_spill_temp_25
	     DS:[R4] = R3             	// [104:5511]  
//5512  		QuestionStatus_Asked[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];//QuestionStatus_Asked[gQuestionIdx/16]|=BitMap[gQuestionIdx%16];

LM584:
	     .stabn 68,0,5512,LM584-_Ask_Question
	     DS = seg(_gQuestionIdx)  	// [106:5512]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [107:5512]  gQuestionIdx
	     R4 = DS:[R4]             	// [109:5512]  
	     R4 = R4 lsr 4            	// [111:5512]  
	     [BP + 4] = R4            	// [112:5512]  __save_expr_temp_11
	     R4 = [BP + 4]            	// [113:5512]  __save_expr_temp_11
	     R3 = 0                   	// [115:5512]  
	     R1 = (_QuestionStatus_Asked)	// [116:5512]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [118:5512]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [119:5512]  
	     R3 = R3 + R2, Carry      	// [120:5512]  
	     DS = R3                  	// [121:5512]  
	     R4 = DS:[R4]             	// [122:5512]  
	     [BP + 9] = R4            	// [124:5512]  lra_spill_temp_26
	     DS = seg(_gQuestionIdx)  	// [125:5512]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [126:5512]  gQuestionIdx
	     R4 = DS:[R4]             	// [128:5512]  
	     R4 = R4 & 15             	// [130:5512]  
	     R3 = 0                   	// [131:5512]  
	     R1 = (_BitMap)           	// [132:5512]  BitMap
	     R2 = seg(_BitMap)        	// [134:5512]  BitMap
	     R4 = R4 + R1             	// [135:5512]  
	     R3 = R3 + R2, Carry      	// [136:5512]  
	     DS = R3                  	// [137:5512]  
	     R4 = DS:[R4]             	// [138:5512]  
	     R3 = R4 ^ 65535          	// [140:5512]  
	     R4 = [BP + 9]            	// [142:5512]  lra_spill_temp_26
	     R4 = R4 & R3             	// [144:5512]  
	     [BP + 10] = R4           	// [145:5512]  lra_spill_temp_27
	     R4 = [BP + 4]            	// [146:5512]  __save_expr_temp_11
	     R3 = 0                   	// [148:5512]  
	     R1 = (_QuestionStatus_Asked)	// [149:5512]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [151:5512]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [152:5512]  
	     R3 = R3 + R2, Carry      	// [153:5512]  
	     DS = R3                  	// [154:5512]  
	     R3 = [BP + 10]           	// [155:5512]  lra_spill_temp_27
	     DS:[R4] = R3             	// [157:5512]  
L_52_16:	// 0xfc0
// BB:19 cycle count: 6
	     SP = SP + 11             	// [0:5512]  
	     pop BP, PC from [SP]     	// [1:5512]  
LBE48:
	.endp	
	     .stabn 192,0,0,LBB48-_Ask_Question
	     .stabs "key_activetemp:4",128,0,0,0
	     .stabs "temp_PlayQuestionflag:4",128,0,0,1
	     .stabn 224,0,0,LBE48-_Ask_Question
LME53:
	     .stabf LME53-_Ask_Question
.code
	     .stabs "Questions_init:F18",36,0,0,_Questions_init

	// Program Unit: Questions_init
.public	_Questions_init
_Questions_init: .proc	
	     .stabn 0xa6,0,0,2
	// i = 0
	// old_frame_pointer = 2
	// return_address = 3
	// lra_spill_temp_28 = 1
//5970  //==================================================
//5971  //
//5972  //==================================================
//5973  void  Questions_init()
//5974  {

LM585:
	     .stabn 68,0,5974,LM585-_Questions_init
BB1_PU53:	// 0xfc2
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:5974]  
	     SP = SP - 2              	// [2:5974]  
	     BP = SP + 1              	// [3:5974]  
LBB49:
//5975  	unsigned int i;
//5976  	
//5977        	i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM586:
	     .stabn 68,0,5977,LM586-_Questions_init
	     R4 = 0                   	// [5:5977]  
	     [BP + 0] = R4            	// [6:5977]  i
L_53_1:	// 0xfc8
// BB:2 cycle count: 7
//5978  		while(i<C_QuestionRAM)

LM587:
	     .stabn 68,0,5978,LM587-_Questions_init
	     R4 = [BP + 0]            	// [0:5978]  i
	     cmp R4, 19               	// [2:5978]  
	     ja L_53_2                	// [3:5978]  
BB3_PU53:	// 0xfcb
// BB:3 cycle count: 33
//5979  		{
//5980  			QuestionStatus_LQA[i] = QuestionStatus_LQ[i];

LM588:
	     .stabn 68,0,5980,LM588-_Questions_init
	     R4 = [BP + 0]            	// [0:5980]  i
	     R3 = 0                   	// [2:5980]  
	     R1 = (_QuestionStatus_LQ)	// [3:5980]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [5:5980]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [6:5980]  
	     R3 = R3 + R2, Carry      	// [7:5980]  
	     DS = R3                  	// [8:5980]  
	     R4 = DS:[R4]             	// [9:5980]  
	     [BP + 1] = R4            	// [11:5980]  lra_spill_temp_28
	     R4 = [BP + 0]            	// [12:5980]  i
	     R3 = 0                   	// [14:5980]  
	     R1 = (_QuestionStatus_LQA)	// [15:5980]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [17:5980]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [18:5980]  
	     R3 = R3 + R2, Carry      	// [19:5980]  
	     DS = R3                  	// [20:5980]  
	     R3 = [BP + 1]            	// [21:5980]  lra_spill_temp_28
	     DS:[R4] = R3             	// [23:5980]  
//5981  		//	QuestionStatus_Asked[i] = 0;
//5982  			i++;	

LM589:
	     .stabn 68,0,5982,LM589-_Questions_init
	     R4 = [BP + 0]            	// [25:5982]  i
	     R4 = R4 + 1              	// [27:5982]  
	     [BP + 0] = R4            	// [28:5982]  i
	     jmp L_53_1               	// [29:5982]  
L_53_2:	// 0xfe3
// BB:4 cycle count: 6
	     SP = SP + 2              	// [0:5982]  
	     pop BP, PC from [SP]     	// [1:5982]  
LBE49:
	.endp	
	     .stabn 192,0,0,LBB49-_Questions_init
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE49-_Questions_init
LME54:
	     .stabf LME54-_Questions_init
.code
	     .stabs "NewgameInit:F18",36,0,0,_NewgameInit

	// Program Unit: NewgameInit
.public	_NewgameInit
_NewgameInit: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//5993  		
//5994  }
//5995  
//5996  void NewgameInit()
//5997  {

LM590:
	     .stabn 68,0,5997,LM590-_NewgameInit
BB1_PU54:	// 0xfe5
// BB:1 cycle count: 13
	     push BP to [SP]          	// [0:5997]  
	     SP = SP - 1              	// [2:5997]  
	     BP = SP + 1              	// [3:5997]  
LBB50:
//5998  	  unsigned int i;
//5999  	  
//6000  
//6001  	    Player_Activing_Bit =0;

LM591:
	     .stabn 68,0,6001,LM591-_NewgameInit
	     R3 = 0                   	// [5:6001]  
	     DS = seg(_Player_Activing_Bit)	// [6:6001]  Player_Activing_Bit
	     R4 = (_Player_Activing_Bit)	// [7:6001]  Player_Activing_Bit
	     DS:[R4] = R3             	// [9:6001]  
//6002    
//6003  
//6004        for(i=0;i<6;i++)

LM592:
	     .stabn 68,0,6004,LM592-_NewgameInit
	     R4 = 0                   	// [11:6004]  
	     [BP + 0] = R4            	// [12:6004]  i
L_54_2:	// 0xff0
// BB:2 cycle count: 7
	     R4 = [BP + 0]            	// [0:6004]  i
	     cmp R4, 5                	// [2:6004]  
	     ja L_54_3                	// [3:6004]  
BB3_PU54:	// 0xff3
// BB:3 cycle count: 12
//6005  		  Question_Quality_Last[i] =0;

LM593:
	     .stabn 68,0,6005,LM593-_NewgameInit
	     R4 = [BP + 0]            	// [0:6005]  i
	     R3 = 0                   	// [2:6005]  
	     R1 = (_Question_Quality_Last)	// [3:6005]  Question_Quality_Last
	     R2 = seg(_Question_Quality_Last)	// [5:6005]  Question_Quality_Last
	     R4 = R4 + R1             	// [6:6005]  
	     R3 = R3 + R2, Carry      	// [7:6005]  
	     DS = R3                  	// [8:6005]  
	     R3 = 0                   	// [9:6005]  
	     DS:[R4] = R3             	// [10:6005]  
Lt_54_1:	// 0xffd
// BB:4 cycle count: 8

LM594:
	     .stabn 68,0,6004,LM594-_NewgameInit
	     R4 = [BP + 0]            	// [0:6004]  i
	     R4 = R4 + 1              	// [2:6004]  
	     [BP + 0] = R4            	// [3:6004]  i
	     jmp L_54_2               	// [4:6004]  
L_54_3:	// 0x1001
// BB:5 cycle count: 3
//6006  	
//6007            Questions_init();

LM595:
	     .stabn 68,0,6007,LM595-_NewgameInit
	     call _Questions_init     	// [0:6007]  Questions_init
BB6_PU54:	// 0x1003
// BB:6 cycle count: 6
	     SP = SP + 1              	// [0:6007]  
	     pop BP, PC from [SP]     	// [1:6007]  
LBE50:
	.endp	
	     .stabn 192,0,0,LBB50-_NewgameInit
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE50-_NewgameInit
LME55:
	     .stabf LME55-_NewgameInit
.code
	     .stabs "Ram_OnInit:F18",36,0,0,_Ram_OnInit

	// Program Unit: Ram_OnInit
.public	_Ram_OnInit
_Ram_OnInit: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//6011  	
//6012  }
//6013  
//6014  void Ram_OnInit()
//6015  {

LM596:
	     .stabn 68,0,6015,LM596-_Ram_OnInit
BB1_PU55:	// 0x1005
// BB:1 cycle count: 39
	     push BP to [SP]          	// [0:6015]  
	     SP = SP - 1              	// [2:6015]  
	     BP = SP + 1              	// [3:6015]  
LBB51:
//6016  	   unsigned int i =0;

LM597:
	     .stabn 68,0,6016,LM597-_Ram_OnInit
	     R4 = 0                   	// [5:6016]  
	     [BP + 0] = R4            	// [6:6016]  i
//6017  		Restart =0;

LM598:
	     .stabn 68,0,6017,LM598-_Ram_OnInit
	     R3 = 0                   	// [7:6017]  
	     DS = seg(_Restart)       	// [8:6017]  Restart
	     R4 = (_Restart)          	// [9:6017]  Restart
	     DS:[R4] = R3             	// [11:6017]  
//6018  		T1=0;

LM599:
	     .stabn 68,0,6018,LM599-_Ram_OnInit
	     R3 = 0                   	// [13:6018]  
	     DS = seg(_T1)            	// [14:6018]  T1
	     R4 = (_T1)               	// [15:6018]  T1
	     DS:[R4] = R3             	// [17:6018]  
//6019  		T2=0;

LM600:
	     .stabn 68,0,6019,LM600-_Ram_OnInit
	     R3 = 0                   	// [19:6019]  
	     DS = seg(_T2)            	// [20:6019]  T2
	     R4 = (_T2)               	// [21:6019]  T2
	     DS:[R4] = R3             	// [23:6019]  
//6020  	    Last2Cat[0] =0;

LM601:
	     .stabn 68,0,6020,LM601-_Ram_OnInit
	     R3 = 0                   	// [25:6020]  
	     DS = seg(_Last2Cat)      	// [26:6020]  Last2Cat
	     R4 = (_Last2Cat)         	// [27:6020]  Last2Cat
	     DS:[R4] = R3             	// [29:6020]  
//6021  	    Last2Cat[1] =0;

LM602:
	     .stabn 68,0,6021,LM602-_Ram_OnInit
	     R3 = 0                   	// [31:6021]  
	     DS = seg(_Last2Cat+1)    	// [32:6021]  Last2Cat+1
	     R4 = (_Last2Cat+1)       	// [33:6021]  Last2Cat+1
	     DS:[R4] = R3             	// [35:6021]  
//6022  	    
//6023  	      i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM603:
	     .stabn 68,0,6023,LM603-_Ram_OnInit
	     R4 = 0                   	// [37:6023]  
	     [BP + 0] = R4            	// [38:6023]  i
L_55_1:	// 0x1026
// BB:2 cycle count: 8
//6024  		while(i<C_RoundNum)

LM604:
	     .stabn 68,0,6024,LM604-_Ram_OnInit
	     R4 = [BP + 0]            	// [0:6024]  i
	     cmp R4, 99               	// [2:6024]  
	     ja L_55_2                	// [4:6024]  
BB3_PU55:	// 0x102a
// BB:3 cycle count: 20
//6025  		{
//6026  			LastCategory_Series[i] = 0;

LM605:
	     .stabn 68,0,6026,LM605-_Ram_OnInit
	     R4 = [BP + 0]            	// [0:6026]  i
	     R3 = 0                   	// [2:6026]  
	     R1 = (_LastCategory_Series)	// [3:6026]  LastCategory_Series
	     R2 = seg(_LastCategory_Series)	// [5:6026]  LastCategory_Series
	     R4 = R4 + R1             	// [6:6026]  
	     R3 = R3 + R2, Carry      	// [7:6026]  
	     DS = R3                  	// [8:6026]  
	     R3 = 0                   	// [9:6026]  
	     DS:[R4] = R3             	// [10:6026]  
//6027  			i++;	

LM606:
	     .stabn 68,0,6027,LM606-_Ram_OnInit
	     R4 = [BP + 0]            	// [12:6027]  i
	     R4 = R4 + 1              	// [14:6027]  
	     [BP + 0] = R4            	// [15:6027]  i
	     jmp L_55_1               	// [16:6027]  
L_55_2:	// 0x1038
// BB:4 cycle count: 6
	     SP = SP + 1              	// [0:6027]  
	     pop BP, PC from [SP]     	// [1:6027]  
LBE51:
	.endp	
	     .stabn 192,0,0,LBB51-_Ram_OnInit
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE51-_Ram_OnInit
LME56:
	     .stabf LME56-_Ram_OnInit
.code
	     .stabs "Reset_Memory:F18",36,0,0,_Reset_Memory

	// Program Unit: Reset_Memory
.public	_Reset_Memory
_Reset_Memory: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//6032  	
//6033  }
//6034  
//6035  void Reset_Memory()
//6036  {

LM607:
	     .stabn 68,0,6036,LM607-_Reset_Memory
BB1_PU56:	// 0x103a
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:6036]  
	     SP = SP - 1              	// [2:6036]  
	     BP = SP + 1              	// [3:6036]  
LBB52:
//6037  	  unsigned int i=0;

LM608:
	     .stabn 68,0,6037,LM608-_Reset_Memory
	     R4 = 0                   	// [5:6037]  
	     [BP + 0] = R4            	// [6:6037]  i
L_56_1:	// 0x1040
// BB:2 cycle count: 8
//6038  
//6039  		while(i<C_RoundNum)

LM609:
	     .stabn 68,0,6039,LM609-_Reset_Memory
	     R4 = [BP + 0]            	// [0:6039]  i
	     cmp R4, 99               	// [2:6039]  
	     ja L_56_2                	// [4:6039]  
BB3_PU56:	// 0x1044
// BB:3 cycle count: 20
//6040  		{
//6041  			LastCategory_Series[i] = 0;

LM610:
	     .stabn 68,0,6041,LM610-_Reset_Memory
	     R4 = [BP + 0]            	// [0:6041]  i
	     R3 = 0                   	// [2:6041]  
	     R1 = (_LastCategory_Series)	// [3:6041]  LastCategory_Series
	     R2 = seg(_LastCategory_Series)	// [5:6041]  LastCategory_Series
	     R4 = R4 + R1             	// [6:6041]  
	     R3 = R3 + R2, Carry      	// [7:6041]  
	     DS = R3                  	// [8:6041]  
	     R3 = 0                   	// [9:6041]  
	     DS:[R4] = R3             	// [10:6041]  
//6042  			i++;	

LM611:
	     .stabn 68,0,6042,LM611-_Reset_Memory
	     R4 = [BP + 0]            	// [12:6042]  i
	     R4 = R4 + 1              	// [14:6042]  
	     [BP + 0] = R4            	// [15:6042]  i
	     jmp L_56_1               	// [16:6042]  
L_56_2:	// 0x1052
// BB:4 cycle count: 6
	     SP = SP + 1              	// [0:6042]  
	     pop BP, PC from [SP]     	// [1:6042]  
LBE52:
	.endp	
	     .stabn 192,0,0,LBB52-_Reset_Memory
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE52-_Reset_Memory
LME57:
	     .stabf LME57-_Reset_Memory
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
	// lra_spill_temp_29 = 2
	// lra_spill_temp_30 = 3
//6048  
//6049  /////////////////////////////////////////////////////////////////
//6050  /////////////////////////////////////////////////////////////////////
//6051  void SetPingame()
//6052  {

LM612:
	     .stabn 68,0,6052,LM612-_SetPingame
BB1_PU57:	// 0x1054
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:6052]  
	     SP = SP - 4              	// [2:6052]  
	     BP = SP + 1              	// [3:6052]  
LBB53:
//6053  	      unsigned int  i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM613:
	     .stabn 68,0,6053,LM613-_SetPingame
	     R4 = 0                   	// [5:6053]  
	     [BP + 0] = R4            	// [6:6053]  i
L_57_1:	// 0x105a
// BB:2 cycle count: 12
//6054  		while(i<Registerd_Num)

LM614:
	     .stabn 68,0,6054,LM614-_SetPingame
	     R3 = [BP + 0]            	// [0:6054]  i
	     DS = seg(_Registerd_Num) 	// [2:6054]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [3:6054]  Registerd_Num
	     R4 = DS:[R4]             	// [5:6054]  
	     cmp R3, R4               	// [7:6054]  
	     jae L_57_2               	// [8:6054]  
BB3_PU57:	// 0x1061
// BB:3 cycle count: 74
//6055  		{
//6056  			//Pingame[i] = i+1;
//6057  			Pingame[i/16]|=BitMap[i%16];

LM615:
	     .stabn 68,0,6057,LM615-_SetPingame
	     R4 = [BP + 0]            	// [0:6057]  i
	     R4 = R4 lsr 4            	// [2:6057]  
	     [BP + 1] = R4            	// [3:6057]  __save_expr_temp_12
	     R4 = [BP + 1]            	// [4:6057]  __save_expr_temp_12
	     R3 = 0                   	// [6:6057]  
	     R1 = (_Pingame)          	// [7:6057]  Pingame
	     R2 = seg(_Pingame)       	// [9:6057]  Pingame
	     R4 = R4 + R1             	// [10:6057]  
	     R3 = R3 + R2, Carry      	// [11:6057]  
	     DS = R3                  	// [12:6057]  
	     R4 = DS:[R4]             	// [13:6057]  
	     [BP + 2] = R4            	// [15:6057]  lra_spill_temp_29
	     R4 = [BP + 0]            	// [16:6057]  i
	     R4 = R4 & 15             	// [18:6057]  
	     R3 = 0                   	// [19:6057]  
	     R1 = (_BitMap)           	// [20:6057]  BitMap
	     R2 = seg(_BitMap)        	// [22:6057]  BitMap
	     R4 = R4 + R1             	// [23:6057]  
	     R3 = R3 + R2, Carry      	// [24:6057]  
	     DS = R3                  	// [25:6057]  
	     R3 = DS:[R4]             	// [26:6057]  
	     R4 = [BP + 2]            	// [28:6057]  lra_spill_temp_29
	     R4 = R4 | R3             	// [30:6057]  
	     [BP + 3] = R4            	// [31:6057]  lra_spill_temp_30
	     R4 = [BP + 1]            	// [32:6057]  __save_expr_temp_12
	     R3 = 0                   	// [34:6057]  
	     R1 = (_Pingame)          	// [35:6057]  Pingame
	     R2 = seg(_Pingame)       	// [37:6057]  Pingame
	     R4 = R4 + R1             	// [38:6057]  
	     R3 = R3 + R2, Carry      	// [39:6057]  
	     DS = R3                  	// [40:6057]  
	     R3 = [BP + 3]            	// [41:6057]  lra_spill_temp_30
	     DS:[R4] = R3             	// [43:6057]  
//6058  			Registered_Play_Status|=BitMap[i%16];	

LM616:
	     .stabn 68,0,6058,LM616-_SetPingame
	     R4 = [BP + 0]            	// [45:6058]  i
	     R4 = R4 & 15             	// [47:6058]  
	     R3 = 0                   	// [48:6058]  
	     R1 = (_BitMap)           	// [49:6058]  BitMap
	     R2 = seg(_BitMap)        	// [51:6058]  BitMap
	     R4 = R4 + R1             	// [52:6058]  
	     R3 = R3 + R2, Carry      	// [53:6058]  
	     DS = R3                  	// [54:6058]  
	     R4 = DS:[R4]             	// [55:6058]  
	     DS = seg(_Registered_Play_Status)	// [57:6058]  Registered_Play_Status
	     R3 = (_Registered_Play_Status)	// [58:6058]  Registered_Play_Status
	     R4 = R4 | DS:[R3]        	// [60:6058]  
	     DS = seg(_Registered_Play_Status)	// [62:6058]  Registered_Play_Status
	     R3 = (_Registered_Play_Status)	// [63:6058]  Registered_Play_Status
	     DS:[R3] = R4             	// [65:6058]  
//6059  			i++;	

LM617:
	     .stabn 68,0,6059,LM617-_SetPingame
	     R4 = [BP + 0]            	// [67:6059]  i
	     R4 = R4 + 1              	// [69:6059]  
	     [BP + 0] = R4            	// [70:6059]  i
	     goto L_57_1              	// [71:6059]  
L_57_2:	// 0x109c
// BB:4 cycle count: 6
	     SP = SP + 4              	// [0:6059]  
	     pop BP, PC from [SP]     	// [1:6059]  
LBE53:
	.endp	
	     .stabn 192,0,0,LBB53-_SetPingame
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE53-_SetPingame
LME58:
	     .stabf LME58-_SetPingame
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
//6063  	
//6064  }
//6065  
//6066  unsigned  Step1()
//6067  {	

LM618:
	     .stabn 68,0,6067,LM618-_Step1
BB1_PU58:	// 0x109e
// BB:1 cycle count: 220
	     push BP to [SP]          	// [0:6067]  
	     SP = SP - 3              	// [2:6067]  
	     BP = SP + 1              	// [3:6067]  
LBB54:
//6068  	unsigned int i;
//6069  	unsigned int temp;
//6070  	unsigned int timeovercnt =0;

LM619:
	     .stabn 68,0,6070,LM619-_Step1
	     R4 = 0                   	// [5:6070]  
	     [BP + 0] = R4            	// [6:6070]  timeovercnt
//6071  //	unsigned int first_a9 =0;
//6072  		
//6073  	
//6074     
//6075      randomflag =0;

LM620:
	     .stabn 68,0,6075,LM620-_Step1
	     R3 = 0                   	// [7:6075]  
	     DS = seg(_randomflag)    	// [8:6075]  randomflag
	     R4 = (_randomflag)       	// [9:6075]  randomflag
	     DS:[R4] = R3             	// [11:6075]  
//6076      Cn =0;

LM621:
	     .stabn 68,0,6076,LM621-_Step1
	     R3 = 0                   	// [13:6076]  
	     DS = seg(_Cn)            	// [14:6076]  Cn
	     R4 = (_Cn)               	// [15:6076]  Cn
	     DS:[R4] = R3             	// [17:6076]  
//6077      Registerd_Num =0;

LM622:
	     .stabn 68,0,6077,LM622-_Step1
	     R3 = 0                   	// [19:6077]  
	     DS = seg(_Registerd_Num) 	// [20:6077]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [21:6077]  Registerd_Num
	     DS:[R4] = R3             	// [23:6077]  
//6078      Player_Activing_Bit =0;//CurrentP

LM623:
	     .stabn 68,0,6078,LM623-_Step1
	     R3 = 0                   	// [25:6078]  
	     DS = seg(_Player_Activing_Bit)	// [26:6078]  Player_Activing_Bit
	     R4 = (_Player_Activing_Bit)	// [27:6078]  Player_Activing_Bit
	     DS:[R4] = R3             	// [29:6078]  
//6079      Player_Activing_Cnt =0;

LM624:
	     .stabn 68,0,6079,LM624-_Step1
	     R3 = 0                   	// [31:6079]  
	     DS = seg(_Player_Activing_Cnt)	// [32:6079]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [33:6079]  Player_Activing_Cnt
	     DS:[R4] = R3             	// [35:6079]  
//6080  //    Currentsound =0;
//6081      CurrentRound  =1;

LM625:
	     .stabn 68,0,6081,LM625-_Step1
	     R3 = 1                   	// [37:6081]  
	     DS = seg(_CurrentRound)  	// [38:6081]  CurrentRound
	     R4 = (_CurrentRound)     	// [39:6081]  CurrentRound
	     DS:[R4] = R3             	// [41:6081]  
//6082  
//6083      Tie =0;

LM626:
	     .stabn 68,0,6083,LM626-_Step1
	     R3 = 0                   	// [43:6083]  
	     DS = seg(_Tie)           	// [44:6083]  Tie
	     R4 = (_Tie)              	// [45:6083]  Tie
	     DS:[R4] = R3             	// [47:6083]  
//6084      
//6085      gQuestionIdx = 0xffff;

LM627:
	     .stabn 68,0,6085,LM627-_Step1
	     R3 = - 1                 	// [49:6085]  
	     DS = seg(_gQuestionIdx)  	// [50:6085]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [51:6085]  gQuestionIdx
	     DS:[R4] = R3             	// [53:6085]  
//6086      gQuestionIdx_1 = 0xffff;//TwoSounds的第一道	

LM628:
	     .stabn 68,0,6086,LM628-_Step1
	     R3 = - 1                 	// [55:6086]  
	     DS = seg(_gQuestionIdx_1)	// [56:6086]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [57:6086]  gQuestionIdx_1
	     DS:[R4] = R3             	// [59:6086]  
//6094      PassFlag =0;
//6095   #endif	
//6096  	
//6097  
//6098      Dis_Player=0;

LM629:
	     .stabn 68,0,6098,LM629-_Step1
	     R3 = 0                   	// [61:6098]  
	     DS = seg(_Dis_Player)    	// [62:6098]  Dis_Player
	     R4 = (_Dis_Player)       	// [63:6098]  Dis_Player
	     DS:[R4] = R3             	// [65:6098]  
//6099  
//6100     
//6101  //    OffSide_Askflag =0;
//6102  	firstFlag_23b =0;

LM630:
	     .stabn 68,0,6102,LM630-_Step1
	     R3 = 0                   	// [67:6102]  
	     DS = seg(_firstFlag_23b) 	// [68:6102]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [69:6102]  firstFlag_23b
	     DS:[R4] = R3             	// [71:6102]  
//6103  //	OFFsideFlag =0;
//6104  //	HattickOrOffside_Flag =0;
//6105  	FreeKick_Flag = 0;

LM631:
	     .stabn 68,0,6105,LM631-_Step1
	     R3 = 0                   	// [73:6105]  
	     DS = seg(_FreeKick_Flag) 	// [74:6105]  FreeKick_Flag
	     R4 = (_FreeKick_Flag)    	// [75:6105]  FreeKick_Flag
	     DS:[R4] = R3             	// [77:6105]  
//6106  	
//6107  //	QnAfter_Event5=0;
//6108  	Speed_BonusFlag =0;

LM632:
	     .stabn 68,0,6108,LM632-_Step1
	     R3 = 0                   	// [79:6108]  
	     DS = seg(_Speed_BonusFlag)	// [80:6108]  Speed_BonusFlag
	     R4 = (_Speed_BonusFlag)  	// [81:6108]  Speed_BonusFlag
	     DS:[R4] = R3             	// [83:6108]  
//6109      Key_TrueFlase_Buffer =0;

LM633:
	     .stabn 68,0,6109,LM633-_Step1
	     R3 = 0                   	// [85:6109]  
	     DS = seg(_Key_TrueFlase_Buffer)	// [86:6109]  Key_TrueFlase_Buffer
	     R4 = (_Key_TrueFlase_Buffer)	// [87:6109]  Key_TrueFlase_Buffer
	     DS:[R4] = R3             	// [89:6109]  
//6110  	
//6111  	Soloflag =0;

LM634:
	     .stabn 68,0,6111,LM634-_Step1
	     R3 = 0                   	// [91:6111]  
	     DS = seg(_Soloflag)      	// [92:6111]  Soloflag
	     R4 = (_Soloflag)         	// [93:6111]  Soloflag
	     DS:[R4] = R3             	// [95:6111]  
//6112  
//6113  	Countdownflag =0;

LM635:
	     .stabn 68,0,6113,LM635-_Step1
	     R3 = 0                   	// [97:6113]  
	     DS = seg(_Countdownflag) 	// [98:6113]  Countdownflag
	     R4 = (_Countdownflag)    	// [99:6113]  Countdownflag
	     DS:[R4] = R3             	// [101:6113]  
//6114  //	RandFof_Flag =0;
//6115  	LED_Cnt =0;	

LM636:
	     .stabn 68,0,6115,LM636-_Step1
	     R3 = 0                   	// [103:6115]  
	     DS = seg(_LED_Cnt)       	// [104:6115]  LED_Cnt
	     R4 = (_LED_Cnt)          	// [105:6115]  LED_Cnt
	     DS:[R4] = R3             	// [107:6115]  
//6116  	Tieflag =0;	

LM637:
	     .stabn 68,0,6116,LM637-_Step1
	     R3 = 0                   	// [109:6116]  
	     DS = seg(_Tieflag)       	// [110:6116]  Tieflag
	     R4 = (_Tieflag)          	// [111:6116]  Tieflag
	     DS:[R4] = R3             	// [113:6116]  
//6120  //    Event_ThisGame =0;
//6121  //	Event_cnt =0;  
//6122  	
//6123  //	Registered_Actived_status =0;//ALL_Play_Registed_Init;
//6124  	Registered_Play_Status =0;

LM638:
	     .stabn 68,0,6124,LM638-_Step1
	     R3 = 0                   	// [115:6124]  
	     DS = seg(_Registered_Play_Status)	// [116:6124]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [117:6124]  Registered_Play_Status
	     DS:[R4] = R3             	// [119:6124]  
//6125  	Question_Answer =0;

LM639:
	     .stabn 68,0,6125,LM639-_Step1
	     R3 = 0                   	// [121:6125]  
	     DS = seg(_Question_Answer)	// [122:6125]  Question_Answer
	     R4 = (_Question_Answer)  	// [123:6125]  Question_Answer
	     DS:[R4] = R3             	// [125:6125]  
//6126  	L14flag =0;

LM640:
	     .stabn 68,0,6126,LM640-_Step1
	     R3 = 0                   	// [127:6126]  
	     DS = seg(_L14flag)       	// [128:6126]  L14flag
	     R4 = (_L14flag)          	// [129:6126]  L14flag
	     DS:[R4] = R3             	// [131:6126]  
//6127  
//6128  	TwoKeyflag =0;

LM641:
	     .stabn 68,0,6128,LM641-_Step1
	     R3 = 0                   	// [133:6128]  
	     DS = seg(_TwoKeyflag)    	// [134:6128]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [135:6128]  TwoKeyflag
	     DS:[R4] = R3             	// [137:6128]  
//6129  	Eventflag =0;

LM642:
	     .stabn 68,0,6129,LM642-_Step1
	     R3 = 0                   	// [139:6129]  
	     DS = seg(_Eventflag)     	// [140:6129]  Eventflag
	     R4 = (_Eventflag)        	// [141:6129]  Eventflag
	     DS:[R4] = R3             	// [143:6129]  
//6130  
//6131  	Sleepflag =0;

LM643:
	     .stabn 68,0,6131,LM643-_Step1
	     R3 = 0                   	// [145:6131]  
	     DS = seg(_Sleepflag)     	// [146:6131]  Sleepflag
	     R4 = (_Sleepflag)        	// [147:6131]  Sleepflag
	     DS:[R4] = R3             	// [149:6131]  
//6133  	//Cycle_Timeout_cnt=1;  //在选定Players后再设
//6134  //	Silent_updatedFlag =0;
//6135  	
//6136  
//6137  	Leader_Player =0;

LM644:
	     .stabn 68,0,6137,LM644-_Step1
	     R3 = 0                   	// [151:6137]  
	     DS = seg(_Leader_Player) 	// [152:6137]  Leader_Player
	     R4 = (_Leader_Player)    	// [153:6137]  Leader_Player
	     DS:[R4] = R3             	// [155:6137]  
//6138  	Lowest_Player =0;

LM645:
	     .stabn 68,0,6138,LM645-_Step1
	     R3 = 0                   	// [157:6138]  
	     DS = seg(_Lowest_Player) 	// [158:6138]  Lowest_Player
	     R4 = (_Lowest_Player)    	// [159:6138]  Lowest_Player
	     DS:[R4] = R3             	// [161:6138]  
//6140  //	AnswerDuringQue =0;
//6141  //	Qn = 0;
//6142  
//6143  //	Length_LQGame =0;
//6144  	Round =0;

LM646:
	     .stabn 68,0,6144,LM646-_Step1
	     R3 = 0                   	// [163:6144]  
	     DS = seg(_Round)         	// [164:6144]  Round
	     R4 = (_Round)            	// [165:6144]  Round
	     DS:[R4] = R3             	// [167:6144]  
//6145  	
//6146      Key_Event =0;

LM647:
	     .stabn 68,0,6146,LM647-_Step1
	     R3 = 0                   	// [169:6146]  
	     DS = seg(_Key_Event)     	// [170:6146]  Key_Event
	     R4 = (_Key_Event)        	// [171:6146]  Key_Event
	     DS:[R4] = R3             	// [173:6146]  
//6157  
//6158  	
//6159     //for(i=0;i<4;i++)
//6160     	{
//6161        Cur_Active_Player = 0;

LM648:
	     .stabn 68,0,6161,LM648-_Step1
	     R3 = 0                   	// [175:6161]  
	     DS = seg(_Cur_Active_Player)	// [176:6161]  Cur_Active_Player
	     R4 = (_Cur_Active_Player)	// [177:6161]  Cur_Active_Player
	     DS:[R4] = R3             	// [179:6161]  
//6162     	}
//6163  
//6164  	QuestionCycle[0]=0;

LM649:
	     .stabn 68,0,6164,LM649-_Step1
	     R3 = 0                   	// [181:6164]  
	     DS = seg(_QuestionCycle) 	// [182:6164]  QuestionCycle
	     R4 = (_QuestionCycle)    	// [183:6164]  QuestionCycle
	     DS:[R4] = R3             	// [185:6164]  
//6165  	QuestionCycle[1]=0;

LM650:
	     .stabn 68,0,6165,LM650-_Step1
	     R3 = 0                   	// [187:6165]  
	     DS = seg(_QuestionCycle+1)	// [188:6165]  QuestionCycle+1
	     R4 = (_QuestionCycle+1)  	// [189:6165]  QuestionCycle+1
	     DS:[R4] = R3             	// [191:6165]  
//6166  	QuestionCycle[2]=0;

LM651:
	     .stabn 68,0,6166,LM651-_Step1
	     R3 = 0                   	// [193:6166]  
	     DS = seg(_QuestionCycle+2)	// [194:6166]  QuestionCycle+2
	     R4 = (_QuestionCycle+2)  	// [195:6166]  QuestionCycle+2
	     DS:[R4] = R3             	// [197:6166]  
//6167  	QuestionCycle[3]=0;

LM652:
	     .stabn 68,0,6167,LM652-_Step1
	     R3 = 0                   	// [199:6167]  
	     DS = seg(_QuestionCycle+3)	// [200:6167]  QuestionCycle+3
	     R4 = (_QuestionCycle+3)  	// [201:6167]  QuestionCycle+3
	     DS:[R4] = R3             	// [203:6167]  
//6168  
//6169  
//6170      CheaterFlag =0;

LM653:
	     .stabn 68,0,6170,LM653-_Step1
	     R3 = 0                   	// [205:6170]  
	     DS = seg(_CheaterFlag)   	// [206:6170]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [207:6170]  CheaterFlag
	     DS:[R4] = R3             	// [209:6170]  
//6171  	Player_Activing_Bit =0;

LM654:
	     .stabn 68,0,6171,LM654-_Step1
	     R3 = 0                   	// [211:6171]  
	     DS = seg(_Player_Activing_Bit)	// [212:6171]  Player_Activing_Bit
	     R4 = (_Player_Activing_Bit)	// [213:6171]  Player_Activing_Bit
	     DS:[R4] = R3             	// [215:6171]  
//6172    
//6173     
//6174          Questions_init();	

LM655:
	     .stabn 68,0,6174,LM655-_Step1
	     call _Questions_init     	// [217:6174]  Questions_init
BB2_PU58:	// 0x1155
// BB:2 cycle count: 3
//6175  		Reset_Memory();	

LM656:
	     .stabn 68,0,6175,LM656-_Step1
	     call _Reset_Memory       	// [0:6175]  Reset_Memory
BB3_PU58:	// 0x1157
// BB:3 cycle count: 2
//6176        
//6177  		 i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM657:
	     .stabn 68,0,6177,LM657-_Step1
	     R4 = 0                   	// [0:6177]  
	     [BP + 1] = R4            	// [1:6177]  i
L_58_72:	// 0x1159
// BB:4 cycle count: 7
//6178  		while(i<C_Player_Num)

LM658:
	     .stabn 68,0,6178,LM658-_Step1
	     R4 = [BP + 1]            	// [0:6178]  i
	     cmp R4, 9                	// [2:6178]  
	     ja L_58_73               	// [3:6178]  
BB5_PU58:	// 0x115c
// BB:5 cycle count: 32
//6179  		{
//6180  			Player_Point[i] = 0;

LM659:
	     .stabn 68,0,6180,LM659-_Step1
	     R4 = [BP + 1]            	// [0:6180]  i
	     R3 = 0                   	// [2:6180]  
	     R1 = (_Player_Point)     	// [3:6180]  Player_Point
	     R2 = seg(_Player_Point)  	// [5:6180]  Player_Point
	     R4 = R4 + R1             	// [6:6180]  
	     R3 = R3 + R2, Carry      	// [7:6180]  
	     DS = R3                  	// [8:6180]  
	     R3 = 0                   	// [9:6180]  
	     DS:[R4] = R3             	// [10:6180]  
//6181  			Rounds[i] =0;

LM660:
	     .stabn 68,0,6181,LM660-_Step1
	     R4 = [BP + 1]            	// [12:6181]  i
	     R3 = 0                   	// [14:6181]  
	     R1 = (_Rounds)           	// [15:6181]  Rounds
	     R2 = seg(_Rounds)        	// [17:6181]  Rounds
	     R4 = R4 + R1             	// [18:6181]  
	     R3 = R3 + R2, Carry      	// [19:6181]  
	     DS = R3                  	// [20:6181]  
	     R3 = 0                   	// [21:6181]  
	     DS:[R4] = R3             	// [22:6181]  
//6182  			i++;	

LM661:
	     .stabn 68,0,6182,LM661-_Step1
	     R4 = [BP + 1]            	// [24:6182]  i
	     R4 = R4 + 1              	// [26:6182]  
	     [BP + 1] = R4            	// [27:6182]  i
	     jmp L_58_72              	// [28:6182]  
L_58_73:	// 0x1174
// BB:6 cycle count: 2
//6183  					
//6184  		}
//6185  		
//6186  	     i = 0;///////////////!!!!!!!!!!!!!!!!!!

LM662:
	     .stabn 68,0,6186,LM662-_Step1
	     R4 = 0                   	// [0:6186]  
	     [BP + 1] = R4            	// [1:6186]  i
L_58_74:	// 0x1176
// BB:7 cycle count: 7
//6187  		while(i<C_ElementsRAM)

LM663:
	     .stabn 68,0,6187,LM663-_Step1
	     R4 = [BP + 1]            	// [0:6187]  i
	     cmp R4, 1                	// [2:6187]  
	     ja L_58_75               	// [3:6187]  
BB8_PU58:	// 0x1179
// BB:8 cycle count: 32
//6188  		{
//6189  			Pingame[i] = 0;

LM664:
	     .stabn 68,0,6189,LM664-_Step1
	     R4 = [BP + 1]            	// [0:6189]  i
	     R3 = 0                   	// [2:6189]  
	     R1 = (_Pingame)          	// [3:6189]  Pingame
	     R2 = seg(_Pingame)       	// [5:6189]  Pingame
	     R4 = R4 + R1             	// [6:6189]  
	     R3 = R3 + R2, Carry      	// [7:6189]  
	     DS = R3                  	// [8:6189]  
	     R3 = 0                   	// [9:6189]  
	     DS:[R4] = R3             	// [10:6189]  
//6190  			Pselected[i] =0;

LM665:
	     .stabn 68,0,6190,LM665-_Step1
	     R4 = [BP + 1]            	// [12:6190]  i
	     R3 = 0                   	// [14:6190]  
	     R1 = (_Pselected)        	// [15:6190]  Pselected
	     R2 = seg(_Pselected)     	// [17:6190]  Pselected
	     R4 = R4 + R1             	// [18:6190]  
	     R3 = R3 + R2, Carry      	// [19:6190]  
	     DS = R3                  	// [20:6190]  
	     R3 = 0                   	// [21:6190]  
	     DS:[R4] = R3             	// [22:6190]  
//6191  			i++;	

LM666:
	     .stabn 68,0,6191,LM666-_Step1
	     R4 = [BP + 1]            	// [24:6191]  i
	     R4 = R4 + 1              	// [26:6191]  
	     [BP + 1] = R4            	// [27:6191]  i
	     jmp L_58_74              	// [28:6191]  
L_58_75:	// 0x1191
// BB:9 cycle count: 9
//6199  //    if(VOL1Flag==1)
//6200  //   	   Supress_Question_Switch();  
//6201     
//6202  
//6203          BlinkFlag_Data = 0;

LM667:
	     .stabn 68,0,6203,LM667-_Step1
	     R3 = 0                   	// [0:6203]  
	     DS = seg(_BlinkFlag_Data)	// [1:6203]  BlinkFlag_Data
	     R4 = (_BlinkFlag_Data)   	// [2:6203]  BlinkFlag_Data
	     DS:[R4] = R3             	// [4:6203]  
//6204          Light_all_off();

LM668:
	     .stabn 68,0,6204,LM668-_Step1
	     call _Light_all_off      	// [6:6204]  Light_all_off
BB10_PU58:	// 0x1198
// BB:10 cycle count: 3
//6205  
//6206          WatchdogClear();     

LM669:
	     .stabn 68,0,6206,LM669-_Step1
	     call _WatchdogClear      	// [0:6206]  WatchdogClear
BB11_PU58:	// 0x119a
// BB:11 cycle count: 34
//6207       
//6208  	    PlayScoresFlag =0;

LM670:
	     .stabn 68,0,6208,LM670-_Step1
	     R3 = 0                   	// [0:6208]  
	     DS = seg(_PlayScoresFlag)	// [1:6208]  PlayScoresFlag
	     R4 = (_PlayScoresFlag)   	// [2:6208]  PlayScoresFlag
	     DS:[R4] = R3             	// [4:6208]  
//6209  		
//6210  		TimeCnt = 1;

LM671:
	     .stabn 68,0,6210,LM671-_Step1
	     R3 = 1                   	// [6:6210]  
	     DS = seg(_TimeCnt)       	// [7:6210]  TimeCnt
	     R4 = (_TimeCnt)          	// [8:6210]  TimeCnt
	     DS:[R4] = R3             	// [10:6210]  
//6214  //		BlinkFlag_Data = All_Led_data;
//6215  //        FiveSec_En =1;
//6216  //        FiveSec_cnt =0;
//6217  
//6218       Key_activeflag =Playbutton;//ALL_Key_Enable&(~(Key_True|Key_False));

LM672:
	     .stabn 68,0,6218,LM672-_Step1
	     R3 = 1                   	// [12:6218]  
	     DS = seg(_Key_activeflag)	// [13:6218]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [14:6218]  Key_activeflag
	     DS:[R4] = R3             	// [16:6218]  
//6219  //     VolumeEnable =1;
//6220       Key_Event =0; 

LM673:
	     .stabn 68,0,6220,LM673-_Step1
	     R3 = 0                   	// [18:6220]  
	     DS = seg(_Key_Event)     	// [19:6220]  Key_Event
	     R4 = (_Key_Event)        	// [20:6220]  Key_Event
	     DS:[R4] = R3             	// [22:6220]  
//6221  
//6222        if(Restart ==0)

LM674:
	     .stabn 68,0,6222,LM674-_Step1
	     DS = seg(_Restart)       	// [24:6222]  Restart
	     R4 = (_Restart)          	// [25:6222]  Restart
	     R4 = DS:[R4]             	// [27:6222]  
	     cmp R4, 0                	// [29:6222]  
	     jne L_58_76              	// [30:6222]  
BB12_PU58:	// 0x11b4
// BB:12 cycle count: 18
//6223        {
//6224        	  LFX_Data_Cnt =0;

LM675:
	     .stabn 68,0,6224,LM675-_Step1
	     R3 = 0                   	// [0:6224]  
	     DS = seg(_LFX_Data_Cnt)  	// [1:6224]  LFX_Data_Cnt
	     R4 = (_LFX_Data_Cnt)     	// [2:6224]  LFX_Data_Cnt
	     DS:[R4] = R3             	// [4:6224]  
//6225  		  LED_Cnt =0;

LM676:
	     .stabn 68,0,6225,LM676-_Step1
	     R3 = 0                   	// [6:6225]  
	     DS = seg(_LED_Cnt)       	// [7:6225]  LED_Cnt
	     R4 = (_LED_Cnt)          	// [8:6225]  LED_Cnt
	     DS:[R4] = R3             	// [10:6225]  
//6226  	      LFXFlag_Data =0x01;

LM677:
	     .stabn 68,0,6226,LM677-_Step1
	     R3 = 1                   	// [12:6226]  
	     DS = seg(_LFXFlag_Data)  	// [13:6226]  LFXFlag_Data
	     R4 = (_LFXFlag_Data)     	// [14:6226]  LFXFlag_Data
	     DS:[R4] = R3             	// [16:6226]  
L_58_77:	// 0x11c3
// BB:13 cycle count: 16
//6227  	      do
//6228  	      {	
//6229  
//6230  	      	PauseFlag =0;

LM678:
	     .stabn 68,0,6230,LM678-_Step1
	     R3 = 0                   	// [0:6230]  
	     DS = seg(_PauseFlag)     	// [1:6230]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:6230]  PauseFlag
	     DS:[R4] = R3             	// [4:6230]  
//6231  		    PlayA1800_Elements(SFX_On);	//SFX_ON

LM679:
	     .stabn 68,0,6231,LM679-_Step1
	     SP = SP - 1              	// [6:6231]  
	     R3 = 125                 	// [7:6231]  
	     R4 = SP + 1              	// [9:6231]  
	     [R4] = R3                	// [11:6231]  
	     call _PlayA1800_Elements 	// [13:6231]  PlayA1800_Elements
BB14_PU58:	// 0x11d0
// BB:14 cycle count: 16
	     SP = SP + 1              	// [0:6231]  
//6232  		    //delay_time(8*16);
//6233  			BlinkFlag_Data = 0;

LM680:
	     .stabn 68,0,6233,LM680-_Step1
	     R3 = 0                   	// [1:6233]  
	     DS = seg(_BlinkFlag_Data)	// [2:6233]  BlinkFlag_Data
	     R4 = (_BlinkFlag_Data)   	// [3:6233]  BlinkFlag_Data
	     DS:[R4] = R3             	// [5:6233]  
//6234  		    LFXFlag_Data=0;

LM681:
	     .stabn 68,0,6234,LM681-_Step1
	     R3 = 0                   	// [7:6234]  
	     DS = seg(_LFXFlag_Data)  	// [8:6234]  LFXFlag_Data
	     R4 = (_LFXFlag_Data)     	// [9:6234]  LFXFlag_Data
	     DS:[R4] = R3             	// [11:6234]  
//6235  	        Light_all_off();

LM682:
	     .stabn 68,0,6235,LM682-_Step1
	     call _Light_all_off      	// [13:6235]  Light_all_off
BB15_PU58:	// 0x11dd
// BB:15 cycle count: 9
//6236  	//        FiveSec_En =0;
//6237  	        PlayA1800_Elements(A_VLMMREN_Hello);	//SFX_ON

LM683:
	     .stabn 68,0,6237,LM683-_Step1
	     SP = SP - 1              	// [0:6237]  
	     R3 = 33                  	// [1:6237]  
	     R4 = SP + 1              	// [2:6237]  
	     [R4] = R3                	// [4:6237]  
	     call _PlayA1800_Elements 	// [6:6237]  PlayA1800_Elements
BB16_PU58:	// 0x11e4
// BB:16 cycle count: 8
//6238  	        delay_time(8);

LM684:
	     .stabn 68,0,6238,LM684-_Step1
	     R3 = 8                   	// [0:6238]  
	     R4 = SP + 1              	// [1:6238]  
	     [R4] = R3                	// [3:6238]  
	     call _delay_time         	// [5:6238]  delay_time
BB17_PU58:	// 0x11ea
// BB:17 cycle count: 1
	     SP = SP + 1              	// [0:6238]  
Lt_58_1:	// 0x11eb
// BB:18 cycle count: 10
//6239  	      	}while(PauseFlag);

LM685:
	     .stabn 68,0,6239,LM685-_Step1
	     DS = seg(_PauseFlag)     	// [0:6239]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6239]  PauseFlag
	     R4 = DS:[R4]             	// [3:6239]  
	     cmp R4, 0                	// [5:6239]  
	     jne L_58_77              	// [6:6239]  
L_58_76:	// 0x11f1
// BB:19 cycle count: 28
//6240        }
//6241         VolumeEnable =0;

LM686:
	     .stabn 68,0,6241,LM686-_Step1
	     R3 = 0                   	// [0:6241]  
	     DS = seg(_VolumeEnable)  	// [1:6241]  VolumeEnable
	     R4 = (_VolumeEnable)     	// [2:6241]  VolumeEnable
	     DS:[R4] = R3             	// [4:6241]  
//6242       Key_activeflag =Only_Play_KeyEnable;//ALL_Key_Enable&(~(Key_True|Key_False));

LM687:
	     .stabn 68,0,6242,LM687-_Step1
	     R3 = 7                   	// [6:6242]  
	     DS = seg(_Key_activeflag)	// [7:6242]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6242]  Key_activeflag
	     DS:[R4] = R3             	// [10:6242]  
//6243       Key_Event =0;    

LM688:
	     .stabn 68,0,6243,LM688-_Step1
	     R3 = 0                   	// [12:6243]  
	     DS = seg(_Key_Event)     	// [13:6243]  Key_Event
	     R4 = (_Key_Event)        	// [14:6243]  Key_Event
	     DS:[R4] = R3             	// [16:6243]  
//6244        
//6245  	  PlayA1800_Elements(A_VLMMREN_SetUp_01);

LM689:
	     .stabn 68,0,6245,LM689-_Step1
	     SP = SP - 1              	// [18:6245]  
	     R3 = 70                  	// [19:6245]  
	     R4 = SP + 1              	// [21:6245]  
	     [R4] = R3                	// [23:6245]  
	     call _PlayA1800_Elements 	// [25:6245]  PlayA1800_Elements
BB20_PU58:	// 0x1208
// BB:20 cycle count: 9
//6246        PlayA1800_Elements(A_VLMMREN_SetUp_04);

LM690:
	     .stabn 68,0,6246,LM690-_Step1
	     R3 = 73                  	// [0:6246]  
	     R4 = SP + 1              	// [2:6246]  
	     [R4] = R3                	// [4:6246]  
	     call _PlayA1800_Elements 	// [6:6246]  PlayA1800_Elements
BB21_PU58:	// 0x120f
// BB:21 cycle count: 8
//6247        PlayA1800_Elements(A_VLMMREN_Button_01a);

LM691:
	     .stabn 68,0,6247,LM691-_Step1
	     R3 = 7                   	// [0:6247]  
	     R4 = SP + 1              	// [1:6247]  
	     [R4] = R3                	// [3:6247]  
	     call _PlayA1800_Elements 	// [5:6247]  PlayA1800_Elements
BB22_PU58:	// 0x1215
// BB:22 cycle count: 1
	     SP = SP + 1              	// [0:6247]  
L_58_78:	// 0x1216
// BB:23 cycle count: 10
//6248       while(1) 
//6249       {  
//6250  
//6251  	      if(Sleepflag)

LM692:
	     .stabn 68,0,6251,LM692-_Step1
	     DS = seg(_Sleepflag)     	// [0:6251]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:6251]  Sleepflag
	     R4 = DS:[R4]             	// [3:6251]  
	     cmp R4, 0                	// [5:6251]  
	     je L_58_80               	// [6:6251]  
BB24_PU58:	// 0x121c
// BB:24 cycle count: 7
//6252  		  	return 0;

LM693:
	     .stabn 68,0,6252,LM693-_Step1
	     R1 = 0                   	// [0:6252]  
	     SP = SP + 3              	// [1:6252]  
	     pop BP, PC from [SP]     	// [2:6252]  
L_58_80:	// 0x121f
// BB:25 cycle count: 10
//6253  
//6254  
//6255  	      temp = delay_time(20*16);

LM694:
	     .stabn 68,0,6255,LM694-_Step1
	     SP = SP - 1              	// [0:6255]  
	     R3 = 320                 	// [1:6255]  
	     R4 = SP + 1              	// [3:6255]  
	     [R4] = R3                	// [5:6255]  
	     call _delay_time         	// [7:6255]  delay_time
BB26_PU58:	// 0x1227
// BB:26 cycle count: 10
	     SP = SP + 1              	// [0:6255]  
	     [BP + 2] = R1            	// [1:6255]  temp
//6256  	      
//6257  	      if(temp == TimeOver)

LM695:
	     .stabn 68,0,6257,LM695-_Step1
	     R4 = [BP + 2]            	// [2:6257]  temp
	     cmp R4, 61452            	// [4:6257]  
	     jne L_58_82              	// [6:6257]  
BB27_PU58:	// 0x122d
// BB:27 cycle count: 11
//6258  	      {
//6259  	      	      timeovercnt++;

LM696:
	     .stabn 68,0,6259,LM696-_Step1
	     R4 = [BP + 0]            	// [0:6259]  timeovercnt
	     R4 = R4 + 1              	// [2:6259]  
	     [BP + 0] = R4            	// [3:6259]  timeovercnt
//6260  	      	  
//6261  	      	  
//6262  	      	
//6263  	      	      if(timeovercnt<9)

LM697:
	     .stabn 68,0,6263,LM697-_Step1
	     R4 = [BP + 0]            	// [4:6263]  timeovercnt
	     cmp R4, 8                	// [6:6263]  
	     ja L_58_84               	// [7:6263]  
BB28_PU58:	// 0x1233
// BB:28 cycle count: 10
//6264  	      	      {
//6265  			         PlayA1800_Elements(A_VLMMREN_SetUp_01);

LM698:
	     .stabn 68,0,6265,LM698-_Step1
	     SP = SP - 1              	// [0:6265]  
	     R3 = 70                  	// [1:6265]  
	     R4 = SP + 1              	// [3:6265]  
	     [R4] = R3                	// [5:6265]  
	     call _PlayA1800_Elements 	// [7:6265]  PlayA1800_Elements
BB29_PU58:	// 0x123b
// BB:29 cycle count: 9
//6266  			         PlayA1800_Elements(A_VLMMREN_SetUp_03);

LM699:
	     .stabn 68,0,6266,LM699-_Step1
	     R3 = 72                  	// [0:6266]  
	     R4 = SP + 1              	// [2:6266]  
	     [R4] = R3                	// [4:6266]  
	     call _PlayA1800_Elements 	// [6:6266]  PlayA1800_Elements
BB30_PU58:	// 0x1242
// BB:30 cycle count: 8
//6267  			         PlayA1800_Elements(A_VLMMREN_Button_01a);

LM700:
	     .stabn 68,0,6267,LM700-_Step1
	     R3 = 7                   	// [0:6267]  
	     R4 = SP + 1              	// [1:6267]  
	     [R4] = R3                	// [3:6267]  
	     call _PlayA1800_Elements 	// [5:6267]  PlayA1800_Elements
BB31_PU58:	// 0x1248
// BB:31 cycle count: 5
	     SP = SP + 1              	// [0:6267]  
	     jmp L_58_83              	// [1:6267]  
L_58_84:	// 0x124a
// BB:32 cycle count: 3
//6268  			      
//6269  	      	      }
//6270  	      	     else
//6271  	      	     {
//6272  	      	        GameTimeout();	

LM701:
	     .stabn 68,0,6272,LM701-_Step1
	     call _GameTimeout        	// [0:6272]  GameTimeout
BB33_PU58:	// 0x124c
// BB:33 cycle count: 2
//6273  	      	     	timeovercnt=0;

LM702:
	     .stabn 68,0,6273,LM702-_Step1
	     R4 = 0                   	// [0:6273]  
	     [BP + 0] = R4            	// [1:6273]  timeovercnt
L_58_83:	// 0x124e
// BB:34 cycle count: 4

LM703:
	     .stabn 68,0,6263,LM703-_Step1
	     jmp L_58_81              	// [0:6263]  
L_58_82:	// 0x124f
// BB:35 cycle count: 2
//6275  	      	       
//6276  	      	     }
//6277  	      }
//6278  	      else
//6279  	           timeovercnt =0;  

LM704:
	     .stabn 68,0,6279,LM704-_Step1
	     R4 = 0                   	// [0:6279]  
	     [BP + 0] = R4            	// [1:6279]  timeovercnt
L_58_81:	// 0x1251
// BB:36 cycle count: 10
//6280  	      
//6281  	      if((Key_Event==PB_button))

LM705:
	     .stabn 68,0,6281,LM705-_Step1
	     DS = seg(_Key_Event)     	// [0:6281]  Key_Event
	     R4 = (_Key_Event)        	// [1:6281]  Key_Event
	     R4 = DS:[R4]             	// [3:6281]  
	     cmp R4, 2                	// [5:6281]  
	     jne L_58_86              	// [6:6281]  
BB37_PU58:	// 0x1257
// BB:37 cycle count: 16
//6282  	      {  
//6283  	           Key_Event =0;  

LM706:
	     .stabn 68,0,6283,LM706-_Step1
	     R3 = 0                   	// [0:6283]  
	     DS = seg(_Key_Event)     	// [1:6283]  Key_Event
	     R4 = (_Key_Event)        	// [2:6283]  Key_Event
	     DS:[R4] = R3             	// [4:6283]  
//6284  	         if(Registerd_Num<10)

LM707:
	     .stabn 68,0,6284,LM707-_Step1
	     DS = seg(_Registerd_Num) 	// [6:6284]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [7:6284]  Registerd_Num
	     R4 = DS:[R4]             	// [9:6284]  
	     cmp R4, 9                	// [11:6284]  
	     ja L_58_88               	// [12:6284]  
BB38_PU58:	// 0x1262
// BB:38 cycle count: 30
//6285  	         {   
//6286  	      	  Registerd_Num++;

LM708:
	     .stabn 68,0,6286,LM708-_Step1
	     DS = seg(_Registerd_Num) 	// [0:6286]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6286]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6286]  
	     R4 = R4 + 1              	// [5:6286]  
	     DS = seg(_Registerd_Num) 	// [6:6286]  Registerd_Num
	     R3 = (_Registerd_Num)    	// [7:6286]  Registerd_Num
	     DS:[R3] = R4             	// [9:6286]  
//6287  			  //PlayA1800_Elements(SFX_Plus);
//6288  			   Play_Seq(Registerd_Num,C_NX);//PlayA1800_Other(Serie_N_NumPlayers);

LM709:
	     .stabn 68,0,6288,LM709-_Step1
	     SP = SP - 2              	// [11:6288]  
	     DS = seg(_Registerd_Num) 	// [12:6288]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [13:6288]  Registerd_Num
	     R3 = DS:[R4]             	// [15:6288]  
	     R4 = SP + 1              	// [17:6288]  
	     [R4] = R3                	// [19:6288]  
	     R3 = 80                  	// [21:6288]  
	     R4 = SP + 2              	// [23:6288]  
	     [R4] = R3                	// [25:6288]  
	     call _Play_Seq           	// [27:6288]  Play_Seq
BB39_PU58:	// 0x127a
// BB:39 cycle count: 5
	     SP = SP + 2              	// [0:6288]  
	     jmp L_58_87              	// [1:6288]  
L_58_88:	// 0x127c
// BB:40 cycle count: 9
//6289  	         }
//6290  	        else 
//6291  	            PlayA1800_Elements(A_VLMMREN_10Max);

LM710:
	     .stabn 68,0,6291,LM710-_Step1
	     SP = SP - 1              	// [0:6291]  
	     R3 = 1                   	// [1:6291]  
	     R4 = SP + 1              	// [2:6291]  
	     [R4] = R3                	// [4:6291]  
	     call _PlayA1800_Elements 	// [6:6291]  PlayA1800_Elements
BB41_PU58:	// 0x1283
// BB:41 cycle count: 1
	     SP = SP + 1              	// [0:6291]  
L_58_87:	// 0x1284
// BB:42 cycle count: 3

LM711:
	     .stabn 68,0,6284,LM711-_Step1
	     goto L_58_85             	// [0:6284]  
L_58_86:	// 0x1286
// BB:43 cycle count: 10
//6292  	      	
//6293  	      }
//6294        	  else if((Key_Event==MB_button))

LM712:
	     .stabn 68,0,6294,LM712-_Step1
	     DS = seg(_Key_Event)     	// [0:6294]  Key_Event
	     R4 = (_Key_Event)        	// [1:6294]  Key_Event
	     R4 = DS:[R4]             	// [3:6294]  
	     cmp R4, 4                	// [5:6294]  
	     jne L_58_90              	// [6:6294]  
BB44_PU58:	// 0x128c
// BB:44 cycle count: 16
//6295  	      {  
//6296  	           Key_Event =0;

LM713:
	     .stabn 68,0,6296,LM713-_Step1
	     R3 = 0                   	// [0:6296]  
	     DS = seg(_Key_Event)     	// [1:6296]  Key_Event
	     R4 = (_Key_Event)        	// [2:6296]  Key_Event
	     DS:[R4] = R3             	// [4:6296]  
//6297  	         if(Registerd_Num>1)  

LM714:
	     .stabn 68,0,6297,LM714-_Step1
	     DS = seg(_Registerd_Num) 	// [6:6297]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [7:6297]  Registerd_Num
	     R4 = DS:[R4]             	// [9:6297]  
	     cmp R4, 1                	// [11:6297]  
	     jbe L_58_92              	// [12:6297]  
BB45_PU58:	// 0x1297
// BB:45 cycle count: 30
//6298  	          {   
//6299  	      	   Registerd_Num--;

LM715:
	     .stabn 68,0,6299,LM715-_Step1
	     DS = seg(_Registerd_Num) 	// [0:6299]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6299]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6299]  
	     R4 = R4 - 1              	// [5:6299]  
	     DS = seg(_Registerd_Num) 	// [6:6299]  Registerd_Num
	     R3 = (_Registerd_Num)    	// [7:6299]  Registerd_Num
	     DS:[R3] = R4             	// [9:6299]  
//6300  			  // PlayA1800_Elements(SFX_Minus);
//6301  			   Play_Seq(Registerd_Num,C_NX);//PlayA1800_Other(Serie_N_NumPlayers);

LM716:
	     .stabn 68,0,6301,LM716-_Step1
	     SP = SP - 2              	// [11:6301]  
	     DS = seg(_Registerd_Num) 	// [12:6301]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [13:6301]  Registerd_Num
	     R3 = DS:[R4]             	// [15:6301]  
	     R4 = SP + 1              	// [17:6301]  
	     [R4] = R3                	// [19:6301]  
	     R3 = 80                  	// [21:6301]  
	     R4 = SP + 2              	// [23:6301]  
	     [R4] = R3                	// [25:6301]  
	     call _Play_Seq           	// [27:6301]  Play_Seq
BB46_PU58:	// 0x12af
// BB:46 cycle count: 5
	     SP = SP + 2              	// [0:6301]  
	     jmp L_58_91              	// [1:6301]  
L_58_92:	// 0x12b1
// BB:47 cycle count: 9
//6302  	          }
//6303  	          else
//6304  	             PlayA1800_Elements(A_VLMMREN_1Min);

LM717:
	     .stabn 68,0,6304,LM717-_Step1
	     SP = SP - 1              	// [0:6304]  
	     R3 = 2                   	// [1:6304]  
	     R4 = SP + 1              	// [2:6304]  
	     [R4] = R3                	// [4:6304]  
	     call _PlayA1800_Elements 	// [6:6304]  PlayA1800_Elements
BB48_PU58:	// 0x12b8
// BB:48 cycle count: 1
	     SP = SP + 1              	// [0:6304]  
L_58_91:	// 0x12b9
// BB:49 cycle count: 4

LM718:
	     .stabn 68,0,6297,LM718-_Step1
	     jmp L_58_89              	// [0:6297]  
L_58_90:	// 0x12ba
// BB:50 cycle count: 10
//6305  	      	
//6306  	      }
//6307  		 else if((Key_Event==Playbutton))

LM719:
	     .stabn 68,0,6307,LM719-_Step1
	     DS = seg(_Key_Event)     	// [0:6307]  Key_Event
	     R4 = (_Key_Event)        	// [1:6307]  Key_Event
	     R4 = DS:[R4]             	// [3:6307]  
	     cmp R4, 1                	// [5:6307]  
	     jne L_58_93              	// [6:6307]  
BB51_PU58:	// 0x12c0
// BB:51 cycle count: 16
//6308  	      {  
//6309  	           Key_Event =0;  

LM720:
	     .stabn 68,0,6309,LM720-_Step1
	     R3 = 0                   	// [0:6309]  
	     DS = seg(_Key_Event)     	// [1:6309]  Key_Event
	     R4 = (_Key_Event)        	// [2:6309]  Key_Event
	     DS:[R4] = R3             	// [4:6309]  
//6310  	           
//6311  	         if(Registerd_Num>=1)   

LM721:
	     .stabn 68,0,6311,LM721-_Step1
	     DS = seg(_Registerd_Num) 	// [6:6311]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [7:6311]  Registerd_Num
	     R4 = DS:[R4]             	// [9:6311]  
	     cmp R4, 0                	// [11:6311]  
	     je L_58_94               	// [12:6311]  
BB52_PU58:	// 0x12cb
// BB:52 cycle count: 4
//6312                 break;

LM722:
	     .stabn 68,0,6312,LM722-_Step1
	     jmp Lt_58_2              	// [0:6312]  
L_58_94:	// 0x12cc
L_58_93:	// 0x12cc
L_58_89:	// 0x12cc
L_58_85:	// 0x12cc
// BB:53 cycle count: 3

LM723:
	     .stabn 68,0,6281,LM723-_Step1
	     goto L_58_78             	// [0:6281]  
L_58_79:	// 0x12ce
Lt_58_2:	// 0x12ce
// BB:54 cycle count: 3
//6317  		  
//6318        
//6319       }
//6320        
//6321          SetPingame();

LM724:
	     .stabn 68,0,6321,LM724-_Step1
	     call _SetPingame         	// [0:6321]  SetPingame
BB55_PU58:	// 0x12d0
// BB:55 cycle count: 10
//6322  		
//6323  		PlayA1800_Elements(SFX_Buzzer);

LM725:
	     .stabn 68,0,6323,LM725-_Step1
	     SP = SP - 1              	// [0:6323]  
	     R3 = 121                 	// [1:6323]  
	     R4 = SP + 1              	// [3:6323]  
	     [R4] = R3                	// [5:6323]  
	     call _PlayA1800_Elements 	// [7:6323]  PlayA1800_Elements
BB56_PU58:	// 0x12d8
// BB:56 cycle count: 11
	     SP = SP + 1              	// [0:6323]  
//6326  		
//6327  		
//6328  		
//6329  
//6330    if(Registerd_Num>1)

LM726:
	     .stabn 68,0,6330,LM726-_Step1
	     DS = seg(_Registerd_Num) 	// [1:6330]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [2:6330]  Registerd_Num
	     R4 = DS:[R4]             	// [4:6330]  
	     cmp R4, 1                	// [6:6330]  
	     ja BB57_PU58             	// [7:6330]  
BB133_PU58:	// 0x12df
// BB:133 cycle count: 3
	     goto L_58_96             	// [0:0]  
BB57_PU58:	// 0x12e1
// BB:57 cycle count: 20
//6336  //  	       NumRounds = 5;
//6337    	       
//6338    	       
//6339    	       
//6340    	       SinceLastE  =0;

LM727:
	     .stabn 68,0,6340,LM727-_Step1
	     R3 = 0                   	// [0:6340]  
	     DS = seg(_SinceLastE)    	// [1:6340]  SinceLastE
	     R4 = (_SinceLastE)       	// [2:6340]  SinceLastE
	     DS:[R4] = R3             	// [4:6340]  
//6341    	        R_2SLoop =0;

LM728:
	     .stabn 68,0,6341,LM728-_Step1
	     R3 = 0                   	// [6:6341]  
	     DS = seg(_R_2SLoop)      	// [7:6341]  R_2SLoop
	     R4 = (_R_2SLoop)         	// [8:6341]  R_2SLoop
	     DS:[R4] = R3             	// [10:6341]  
//6342    	       
//6343  		
//6344  		   sp_offset = 0xffff;

LM729:
	     .stabn 68,0,6344,LM729-_Step1
	     R3 = - 1                 	// [12:6344]  
	     DS = seg(_sp_offset)     	// [13:6344]  sp_offset
	     R4 = (_sp_offset)        	// [14:6344]  sp_offset
	     DS:[R4] = R3             	// [16:6344]  
//6345  
//6346  		   timeovercnt=0;

LM730:
	     .stabn 68,0,6346,LM730-_Step1
	     R4 = 0                   	// [18:6346]  
	     [BP + 0] = R4            	// [19:6346]  timeovercnt
L_58_97:	// 0x12f2
// BB:58 cycle count: 10
//6348  		   
//6349  		   while(1) 
//6350  		     {  
//6351  		
//6352  			      if(Sleepflag)

LM731:
	     .stabn 68,0,6352,LM731-_Step1
	     DS = seg(_Sleepflag)     	// [0:6352]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:6352]  Sleepflag
	     R4 = DS:[R4]             	// [3:6352]  
	     cmp R4, 0                	// [5:6352]  
	     je L_58_99               	// [6:6352]  
BB59_PU58:	// 0x12f8
// BB:59 cycle count: 8
//6353  				  	return C_Off_Mode;

LM732:
	     .stabn 68,0,6353,LM732-_Step1
	     R1 = - 4085              	// [0:6353]  
	     SP = SP + 3              	// [2:6353]  
	     pop BP, PC from [SP]     	// [3:6353]  
L_58_99:	// 0x12fc
// BB:60 cycle count: 18
//6354  			      
//6355  			      
//6356  			    Key_activeflag =0;//Playbutton;//Only_Play_KeyEnable;//ALL_Key_Enable&(~(Key_True|Key_False));

LM733:
	     .stabn 68,0,6356,LM733-_Step1
	     R3 = 0                   	// [0:6356]  
	     DS = seg(_Key_activeflag)	// [1:6356]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [2:6356]  Key_activeflag
	     DS:[R4] = R3             	// [4:6356]  
//6357  		        Key_Event =0; 

LM734:
	     .stabn 68,0,6357,LM734-_Step1
	     R3 = 0                   	// [6:6357]  
	     DS = seg(_Key_Event)     	// [7:6357]  Key_Event
	     R4 = (_Key_Event)        	// [8:6357]  Key_Event
	     DS:[R4] = R3             	// [10:6357]  
//6358  		
//6359  		        TwoKeyflag = Playbutton;

LM735:
	     .stabn 68,0,6359,LM735-_Step1
	     R3 = 1                   	// [12:6359]  
	     DS = seg(_TwoKeyflag)    	// [13:6359]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [14:6359]  TwoKeyflag
	     DS:[R4] = R3             	// [16:6359]  
L_58_100:	// 0x130b
// BB:61 cycle count: 16
//6360  		       
//6361  			  do
//6362  			  	{
//6363  			        PauseFlag =0;

LM736:
	     .stabn 68,0,6363,LM736-_Step1
	     R3 = 0                   	// [0:6363]  
	     DS = seg(_PauseFlag)     	// [1:6363]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:6363]  PauseFlag
	     DS:[R4] = R3             	// [4:6363]  
//6364  			        //PlayA1800_Elements(SFX_Buzzer);
//6365  			        //PlayA1800_Elements(A_VLMMREN_SetUp_04);
//6366  			        //Play_Seq(Registerd_Num-1,C_NumP_StartAddr);
//6367  			        //delay_time(8);
//6368  			        PlayA1800_Elements(A_VLMMREN_SetUp_02);

LM737:
	     .stabn 68,0,6368,LM737-_Step1
	     SP = SP - 1              	// [6:6368]  
	     R3 = 71                  	// [7:6368]  
	     R4 = SP + 1              	// [9:6368]  
	     [R4] = R3                	// [11:6368]  
	     call _PlayA1800_Elements 	// [13:6368]  PlayA1800_Elements
BB62_PU58:	// 0x1318
// BB:62 cycle count: 12
	     SP = SP + 1              	// [0:6368]  
//6369  			        
//6370  			      if(sp_offset==0xffff)  

LM738:
	     .stabn 68,0,6370,LM738-_Step1
	     DS = seg(_sp_offset)     	// [1:6370]  sp_offset
	     R4 = (_sp_offset)        	// [2:6370]  sp_offset
	     R4 = DS:[R4]             	// [4:6370]  
	     cmp R4, 65535            	// [6:6370]  
	     jne L_58_102             	// [8:6370]  
BB63_PU58:	// 0x1320
// BB:63 cycle count: 9
//6371  			        PlayA1800_Other(Serie_Player);//Play_Seq(Registerd_Num-1,C_Play_StartAddr);

LM739:
	     .stabn 68,0,6371,LM739-_Step1
	     SP = SP - 1              	// [0:6371]  
	     R3 = 3                   	// [1:6371]  
	     R4 = SP + 1              	// [2:6371]  
	     [R4] = R3                	// [4:6371]  
	     call _PlayA1800_Other    	// [6:6371]  PlayA1800_Other
BB64_PU58:	// 0x1327
// BB:64 cycle count: 5
	     SP = SP + 1              	// [0:6371]  
	     jmp L_58_101             	// [1:6371]  
L_58_102:	// 0x1329
// BB:65 cycle count: 13
//6372  			       else
//6373  			        PlayA1800_Elements(sp_offset);

LM740:
	     .stabn 68,0,6373,LM740-_Step1
	     SP = SP - 1              	// [0:6373]  
	     DS = seg(_sp_offset)     	// [1:6373]  sp_offset
	     R4 = (_sp_offset)        	// [2:6373]  sp_offset
	     R3 = DS:[R4]             	// [4:6373]  
	     R4 = SP + 1              	// [6:6373]  
	     [R4] = R3                	// [8:6373]  
	     call _PlayA1800_Elements 	// [10:6373]  PlayA1800_Elements
BB66_PU58:	// 0x1333
// BB:66 cycle count: 1
	     SP = SP + 1              	// [0:6373]  
L_58_101:	// 0x1334
// BB:67 cycle count: 9
//6374  			         
//6375  			        delay_time(8);

LM741:
	     .stabn 68,0,6375,LM741-_Step1
	     SP = SP - 1              	// [0:6375]  
	     R3 = 8                   	// [1:6375]  
	     R4 = SP + 1              	// [2:6375]  
	     [R4] = R3                	// [4:6375]  
	     call _delay_time         	// [6:6375]  delay_time
BB68_PU58:	// 0x133b
// BB:68 cycle count: 1
	     SP = SP + 1              	// [0:6375]  
Lt_58_3:	// 0x133c
// BB:69 cycle count: 10
//6376  			  	}while(PauseFlag);

LM742:
	     .stabn 68,0,6376,LM742-_Step1
	     DS = seg(_PauseFlag)     	// [0:6376]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6376]  PauseFlag
	     R4 = DS:[R4]             	// [3:6376]  
	     cmp R4, 0                	// [5:6376]  
	     jne L_58_100             	// [6:6376]  
BB70_PU58:	// 0x1342
// BB:70 cycle count: 28
//6377  		         TwoKeyflag =0; 

LM743:
	     .stabn 68,0,6377,LM743-_Step1
	     R3 = 0                   	// [0:6377]  
	     DS = seg(_TwoKeyflag)    	// [1:6377]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [2:6377]  TwoKeyflag
	     DS:[R4] = R3             	// [4:6377]  
//6379  			      
//6380  			      
//6381  			      
//6382  				  
//6383  		     	  Key_activeflag =Playbutton;//ALL_Key_Enable&(~(Key_True|Key_False));

LM744:
	     .stabn 68,0,6383,LM744-_Step1
	     R3 = 1                   	// [6:6383]  
	     DS = seg(_Key_activeflag)	// [7:6383]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6383]  Key_activeflag
	     DS:[R4] = R3             	// [10:6383]  
//6384  				  Key_Event =0; 

LM745:
	     .stabn 68,0,6384,LM745-_Step1
	     R3 = 0                   	// [12:6384]  
	     DS = seg(_Key_Event)     	// [13:6384]  Key_Event
	     R4 = (_Key_Event)        	// [14:6384]  Key_Event
	     DS:[R4] = R3             	// [16:6384]  
//6385  				  
//6386  			      PlayA1800_Elements(A_VLMMREN_SetUp_04);

LM746:
	     .stabn 68,0,6386,LM746-_Step1
	     SP = SP - 1              	// [18:6386]  
	     R3 = 73                  	// [19:6386]  
	     R4 = SP + 1              	// [21:6386]  
	     [R4] = R3                	// [23:6386]  
	     call _PlayA1800_Elements 	// [25:6386]  PlayA1800_Elements
BB71_PU58:	// 0x1359
// BB:71 cycle count: 8
//6387  			      PlayA1800_Elements(A_VLMMREN_Button_01a);

LM747:
	     .stabn 68,0,6387,LM747-_Step1
	     R3 = 7                   	// [0:6387]  
	     R4 = SP + 1              	// [1:6387]  
	     [R4] = R3                	// [3:6387]  
	     call _PlayA1800_Elements 	// [5:6387]  PlayA1800_Elements
BB72_PU58:	// 0x135f
// BB:72 cycle count: 9
//6388  			      
//6389  			      
//6390  			     // Key_activeflag =Only_Play_KeyEnable;//ALL_Key_Enable&(~(Key_True|Key_False));
//6391  				 // Key_Event =0;  
//6392  			      delay_time(20*16);

LM748:
	     .stabn 68,0,6392,LM748-_Step1
	     R3 = 320                 	// [0:6392]  
	     R4 = SP + 1              	// [2:6392]  
	     [R4] = R3                	// [4:6392]  
	     call _delay_time         	// [6:6392]  delay_time
BB73_PU58:	// 0x1366
// BB:73 cycle count: 11
	     SP = SP + 1              	// [0:6392]  
//6393  			      
//6394  			      if(Key_Event==Playbutton)

LM749:
	     .stabn 68,0,6394,LM749-_Step1
	     DS = seg(_Key_Event)     	// [1:6394]  Key_Event
	     R4 = (_Key_Event)        	// [2:6394]  Key_Event
	     R4 = DS:[R4]             	// [4:6394]  
	     cmp R4, 1                	// [6:6394]  
	     je BB74_PU58             	// [7:6394]  
BB134_PU58:	// 0x136d
// BB:134 cycle count: 3
	     goto L_58_103            	// [0:0]  
BB74_PU58:	// 0x136f
// BB:74 cycle count: 21
//6395  			      {  
//6396  			      	   Key_Event =0;  

LM750:
	     .stabn 68,0,6396,LM750-_Step1
	     R3 = 0                   	// [0:6396]  
	     DS = seg(_Key_Event)     	// [1:6396]  Key_Event
	     R4 = (_Key_Event)        	// [2:6396]  Key_Event
	     DS:[R4] = R3             	// [4:6396]  
//6397  			      	   Key_activeflag =0;	

LM751:
	     .stabn 68,0,6397,LM751-_Step1
	     R3 = 0                   	// [6:6397]  
	     DS = seg(_Key_activeflag)	// [7:6397]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6397]  Key_activeflag
	     DS:[R4] = R3             	// [10:6397]  
//6398  			      	   PlayA1800_Elements(A_VLMMREN_ChoosePlayerEnd);

LM752:
	     .stabn 68,0,6398,LM752-_Step1
	     SP = SP - 1              	// [12:6398]  
	     R3 = 15                  	// [13:6398]  
	     R4 = SP + 1              	// [14:6398]  
	     [R4] = R3                	// [16:6398]  
	     call _PlayA1800_Elements 	// [18:6398]  PlayA1800_Elements
BB75_PU58:	// 0x1380
// BB:75 cycle count: 11
	     SP = SP + 1              	// [0:6398]  
//6399  			      	   
//6400  			      	  if(Registerd_Num>2)

LM753:
	     .stabn 68,0,6400,LM753-_Step1
	     DS = seg(_Registerd_Num) 	// [1:6400]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [2:6400]  Registerd_Num
	     R4 = DS:[R4]             	// [4:6400]  
	     cmp R4, 2                	// [6:6400]  
	     jbe L_58_104             	// [7:6400]  
BB76_PU58:	// 0x1387
// BB:76 cycle count: 9
//6401  			      	  {
//6402  			      	  	PlayA1800_Elements(A_VLMMREN_ChoosePlayerEnd02);

LM754:
	     .stabn 68,0,6402,LM754-_Step1
	     SP = SP - 1              	// [0:6402]  
	     R3 = 16                  	// [1:6402]  
	     R4 = SP + 1              	// [2:6402]  
	     [R4] = R3                	// [4:6402]  
	     call _PlayA1800_Elements 	// [6:6402]  PlayA1800_Elements
BB77_PU58:	// 0x138e
// BB:77 cycle count: 1
	     SP = SP + 1              	// [0:6402]  
L_58_104:	// 0x138f
// BB:78 cycle count: 9
//6403  			      	  }
//6404  	
//6405  			      	   delay_time(8);

LM755:
	     .stabn 68,0,6405,LM755-_Step1
	     SP = SP - 1              	// [0:6405]  
	     R3 = 8                   	// [1:6405]  
	     R4 = SP + 1              	// [2:6405]  
	     [R4] = R3                	// [4:6405]  
	     call _delay_time         	// [6:6405]  delay_time
BB79_PU58:	// 0x1396
// BB:79 cycle count: 11
	     SP = SP + 1              	// [0:6405]  
//6406  
//6407  					  if(Restart ==0)

LM756:
	     .stabn 68,0,6407,LM756-_Step1
	     DS = seg(_Restart)       	// [1:6407]  Restart
	     R4 = (_Restart)          	// [2:6407]  Restart
	     R4 = DS:[R4]             	// [4:6407]  
	     cmp R4, 0                	// [6:6407]  
	     jne L_58_105             	// [7:6407]  
BB80_PU58:	// 0x139d
// BB:80 cycle count: 21
//6408  					  {
//6409  					  	  		     	 
//6410  				          Key_Event =0; 

LM757:
	     .stabn 68,0,6410,LM757-_Step1
	     R3 = 0                   	// [0:6410]  
	     DS = seg(_Key_Event)     	// [1:6410]  Key_Event
	     R4 = (_Key_Event)        	// [2:6410]  Key_Event
	     DS:[R4] = R3             	// [4:6410]  
//6411  				          Key_activeflag =Playbutton;//ALL_Key_Enable&(~(Key_True|Key_False));

LM758:
	     .stabn 68,0,6411,LM758-_Step1
	     R3 = 1                   	// [6:6411]  
	     DS = seg(_Key_activeflag)	// [7:6411]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6411]  Key_activeflag
	     DS:[R4] = R3             	// [10:6411]  
//6412  					      PlayA1800_Elements(A_VLMMREN_Rule_01b);

LM759:
	     .stabn 68,0,6412,LM759-_Step1
	     SP = SP - 1              	// [12:6412]  
	     R3 = 49                  	// [13:6412]  
	     R4 = SP + 1              	// [14:6412]  
	     [R4] = R3                	// [16:6412]  
	     call _PlayA1800_Elements 	// [18:6412]  PlayA1800_Elements
BB81_PU58:	// 0x13ae
// BB:81 cycle count: 1
	     SP = SP + 1              	// [0:6412]  
L_58_105:	// 0x13af
// BB:82 cycle count: 4
//6417  
//6418  				 
//6419  		
//6420  			      	
//6421  			      	   break;

LM760:
	     .stabn 68,0,6421,LM760-_Step1
	     jmp Lt_58_4              	// [0:6421]  
L_58_103:	// 0x13b0
// BB:83 cycle count: 11
//6422  			        }	  
//6423  
//6424  
//6425                        timeovercnt++;

LM761:
	     .stabn 68,0,6425,LM761-_Step1
	     R4 = [BP + 0]            	// [0:6425]  timeovercnt
	     R4 = R4 + 1              	// [2:6425]  
	     [BP + 0] = R4            	// [3:6425]  timeovercnt
//6426  
//6427  					  if(timeovercnt>8)

LM762:
	     .stabn 68,0,6427,LM762-_Step1
	     R4 = [BP + 0]            	// [4:6427]  timeovercnt
	     cmp R4, 8                	// [6:6427]  
	     jbe L_58_106             	// [7:6427]  
BB84_PU58:	// 0x13b6
// BB:84 cycle count: 3
//6428  					  	{
//6429  
//6430  	      	               GameTimeout();	

LM763:
	     .stabn 68,0,6430,LM763-_Step1
	     call _GameTimeout        	// [0:6430]  GameTimeout
BB85_PU58:	// 0x13b8
// BB:85 cycle count: 2
//6431  	      	     	       timeovercnt=0;

LM764:
	     .stabn 68,0,6431,LM764-_Step1
	     R4 = 0                   	// [0:6431]  
	     [BP + 0] = R4            	// [1:6431]  timeovercnt
L_58_106:	// 0x13ba
// BB:86 cycle count: 3

LM765:
	     .stabn 68,0,6427,LM765-_Step1
	     goto L_58_97             	// [0:6427]  
L_58_98:	// 0x13bc
Lt_58_4:	// 0x13bc
// BB:87 cycle count: 4
//6433  					  
//6434  
//6435  				  
//6436  		      
//6437  		        }

LM766:
	     .stabn 68,0,6437,LM766-_Step1
	     jmp L_58_95              	// [0:6437]  
L_58_96:	// 0x13bd
// BB:88 cycle count: 10
//6438      }    
//6439     else if(Registerd_Num ==1)

LM767:
	     .stabn 68,0,6439,LM767-_Step1
	     DS = seg(_Registerd_Num) 	// [0:6439]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6439]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6439]  
	     cmp R4, 1                	// [5:6439]  
	     jne L_58_107             	// [6:6439]  
BB89_PU58:	// 0x13c3
// BB:89 cycle count: 10
//6440     	{
//6441     		if(Restart ==0)

LM768:
	     .stabn 68,0,6441,LM768-_Step1
	     DS = seg(_Restart)       	// [0:6441]  Restart
	     R4 = (_Restart)          	// [1:6441]  Restart
	     R4 = DS:[R4]             	// [3:6441]  
	     cmp R4, 0                	// [5:6441]  
	     jne L_58_108             	// [6:6441]  
BB90_PU58:	// 0x13c9
// BB:90 cycle count: 21
//6442     		{
//6443  	         Key_Event =0;  

LM769:
	     .stabn 68,0,6443,LM769-_Step1
	     R3 = 0                   	// [0:6443]  
	     DS = seg(_Key_Event)     	// [1:6443]  Key_Event
	     R4 = (_Key_Event)        	// [2:6443]  Key_Event
	     DS:[R4] = R3             	// [4:6443]  
//6444  			 Key_activeflag =Playbutton;

LM770:
	     .stabn 68,0,6444,LM770-_Step1
	     R3 = 1                   	// [6:6444]  
	     DS = seg(_Key_activeflag)	// [7:6444]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6444]  Key_activeflag
	     DS:[R4] = R3             	// [10:6444]  
//6445  	         PlayA1800_Elements(A_VLMMREN_Rule_01a);

LM771:
	     .stabn 68,0,6445,LM771-_Step1
	     SP = SP - 1              	// [12:6445]  
	     R3 = 48                  	// [13:6445]  
	     R4 = SP + 1              	// [14:6445]  
	     [R4] = R3                	// [16:6445]  
	     call _PlayA1800_Elements 	// [18:6445]  PlayA1800_Elements
BB91_PU58:	// 0x13da
// BB:91 cycle count: 1
	     SP = SP + 1              	// [0:6445]  
L_58_108:	// 0x13db
L_58_107:	// 0x13db
L_58_95:	// 0x13db
// BB:92 cycle count: 10
//6447     	}
//6448     	
//6449  
//6450  
//6451                if(Restart ==0)

LM772:
	     .stabn 68,0,6451,LM772-_Step1
	     DS = seg(_Restart)       	// [0:6451]  Restart
	     R4 = (_Restart)          	// [1:6451]  Restart
	     R4 = DS:[R4]             	// [3:6451]  
	     cmp R4, 0                	// [5:6451]  
	     je BB93_PU58             	// [6:6451]  
BB132_PU58:	// 0x13e1
// BB:132 cycle count: 3
	     goto L_58_109            	// [0:0]  
BB93_PU58:	// 0x13e3
// BB:93 cycle count: 18
//6452                {
//6453           			   //Key_Event =0;  
//6454  			           Key_activeflag =Playbutton;//Only_Play_KeyEnable;

LM773:
	     .stabn 68,0,6454,LM773-_Step1
	     R3 = 1                   	// [0:6454]  
	     DS = seg(_Key_activeflag)	// [1:6454]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [2:6454]  Key_activeflag
	     DS:[R4] = R3             	// [4:6454]  
//6455  		               TwoKeyflag = Playbutton;

LM774:
	     .stabn 68,0,6455,LM774-_Step1
	     R3 = 1                   	// [6:6455]  
	     DS = seg(_TwoKeyflag)    	// [7:6455]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [8:6455]  TwoKeyflag
	     DS:[R4] = R3             	// [10:6455]  
//6456  					   PauseFlag =0; 

LM775:
	     .stabn 68,0,6456,LM775-_Step1
	     R3 = 0                   	// [12:6456]  
	     DS = seg(_PauseFlag)     	// [13:6456]  PauseFlag
	     R4 = (_PauseFlag)        	// [14:6456]  PauseFlag
	     DS:[R4] = R3             	// [16:6456]  
L_58_110:	// 0x13f2
// BB:94 cycle count: 10
//6457  		
//6458  		                do
//6459  		                {
//6460  		                	
//6461  		                	if(PauseFlag)

LM776:
	     .stabn 68,0,6461,LM776-_Step1
	     DS = seg(_PauseFlag)     	// [0:6461]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6461]  PauseFlag
	     R4 = DS:[R4]             	// [3:6461]  
	     cmp R4, 0                	// [5:6461]  
	     je L_58_111              	// [6:6461]  
BB95_PU58:	// 0x13f8
// BB:95 cycle count: 16
//6462  		                	{
//6463  		                		PauseFlag =0;

LM777:
	     .stabn 68,0,6463,LM777-_Step1
	     R3 = 0                   	// [0:6463]  
	     DS = seg(_PauseFlag)     	// [1:6463]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:6463]  PauseFlag
	     DS:[R4] = R3             	// [4:6463]  
//6464  		                		
//6465  					              if(Restart ==0)

LM778:
	     .stabn 68,0,6465,LM778-_Step1
	     DS = seg(_Restart)       	// [6:6465]  Restart
	     R4 = (_Restart)          	// [7:6465]  Restart
	     R4 = DS:[R4]             	// [9:6465]  
	     cmp R4, 0                	// [11:6465]  
	     jne L_58_112             	// [12:6465]  
BB96_PU58:	// 0x1403
// BB:96 cycle count: 22
//6466  								  {
//6467  								  	  		     	 
//6468  							          Key_Event =0; 

LM779:
	     .stabn 68,0,6468,LM779-_Step1
	     R3 = 0                   	// [0:6468]  
	     DS = seg(_Key_Event)     	// [1:6468]  Key_Event
	     R4 = (_Key_Event)        	// [2:6468]  Key_Event
	     DS:[R4] = R3             	// [4:6468]  
//6469  							          Key_activeflag =Playbutton;//ALL_Key_Enable&(~(Key_True|Key_False));

LM780:
	     .stabn 68,0,6469,LM780-_Step1
	     R3 = 1                   	// [6:6469]  
	     DS = seg(_Key_activeflag)	// [7:6469]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6469]  Key_activeflag
	     DS:[R4] = R3             	// [10:6469]  
//6470  							          
//6471  							         if(Registerd_Num ==1)  

LM781:
	     .stabn 68,0,6471,LM781-_Step1
	     DS = seg(_Registerd_Num) 	// [12:6471]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [13:6471]  Registerd_Num
	     R4 = DS:[R4]             	// [15:6471]  
	     cmp R4, 1                	// [17:6471]  
	     jne L_58_114             	// [18:6471]  
BB97_PU58:	// 0x1413
// BB:97 cycle count: 9
//6472  								        PlayA1800_Elements(A_VLMMREN_Rule_01a);

LM782:
	     .stabn 68,0,6472,LM782-_Step1
	     SP = SP - 1              	// [0:6472]  
	     R3 = 48                  	// [1:6472]  
	     R4 = SP + 1              	// [2:6472]  
	     [R4] = R3                	// [4:6472]  
	     call _PlayA1800_Elements 	// [6:6472]  PlayA1800_Elements
BB98_PU58:	// 0x141a
// BB:98 cycle count: 5
	     SP = SP + 1              	// [0:6472]  
	     jmp L_58_113             	// [1:6472]  
L_58_114:	// 0x141c
// BB:99 cycle count: 9
//6473  								      else
//6474  								        PlayA1800_Elements(A_VLMMREN_Rule_01b); 

LM783:
	     .stabn 68,0,6474,LM783-_Step1
	     SP = SP - 1              	// [0:6474]  
	     R3 = 49                  	// [1:6474]  
	     R4 = SP + 1              	// [2:6474]  
	     [R4] = R3                	// [4:6474]  
	     call _PlayA1800_Elements 	// [6:6474]  PlayA1800_Elements
BB100_PU58:	// 0x1423
// BB:100 cycle count: 1
	     SP = SP + 1              	// [0:6474]  
L_58_113:	// 0x1424
L_58_112:	// 0x1424
L_58_111:	// 0x1424
// BB:101 cycle count: 9
//6480  		                  
//6481  		                  
//6482  		                  
//6483  				      	  
//6484  				      	  Led_ON_Some(LED0_BIT);

LM784:
	     .stabn 68,0,6484,LM784-_Step1
	     SP = SP - 1              	// [0:6484]  
	     R3 = 1                   	// [1:6484]  
	     R4 = SP + 1              	// [2:6484]  
	     [R4] = R3                	// [4:6484]  
	     call _Led_ON_Some        	// [6:6484]  Led_ON_Some
BB102_PU58:	// 0x142b
// BB:102 cycle count: 8
//6485  						  PlayA1800_Elements(A_VLMMREN_Rule_04);

LM785:
	     .stabn 68,0,6485,LM785-_Step1
	     R3 = 55                  	// [0:6485]  
	     R4 = SP + 1              	// [1:6485]  
	     [R4] = R3                	// [3:6485]  
	     call _PlayA1800_Elements 	// [5:6485]  PlayA1800_Elements
BB103_PU58:	// 0x1431
// BB:103 cycle count: 4
	     SP = SP + 1              	// [0:6485]  
//6486  						  Light_all_off();

LM786:
	     .stabn 68,0,6486,LM786-_Step1
	     call _Light_all_off      	// [1:6486]  Light_all_off
BB104_PU58:	// 0x1434
// BB:104 cycle count: 9
//6487  						  Led_ON_Some(LED3_BIT);

LM787:
	     .stabn 68,0,6487,LM787-_Step1
	     SP = SP - 1              	// [0:6487]  
	     R3 = 8                   	// [1:6487]  
	     R4 = SP + 1              	// [2:6487]  
	     [R4] = R3                	// [4:6487]  
	     call _Led_ON_Some        	// [6:6487]  Led_ON_Some
BB105_PU58:	// 0x143b
// BB:105 cycle count: 8
//6488  						  PlayA1800_Elements(A_VLMMREN_Rule_05);

LM788:
	     .stabn 68,0,6488,LM788-_Step1
	     R3 = 56                  	// [0:6488]  
	     R4 = SP + 1              	// [1:6488]  
	     [R4] = R3                	// [3:6488]  
	     call _PlayA1800_Elements 	// [5:6488]  PlayA1800_Elements
BB106_PU58:	// 0x1441
// BB:106 cycle count: 4
	     SP = SP + 1              	// [0:6488]  
//6489  						  Light_all_off();

LM789:
	     .stabn 68,0,6489,LM789-_Step1
	     call _Light_all_off      	// [1:6489]  Light_all_off
BB107_PU58:	// 0x1444
// BB:107 cycle count: 9
//6490  						  Led_ON_Some(LED2_BIT);				  

LM790:
	     .stabn 68,0,6490,LM790-_Step1
	     SP = SP - 1              	// [0:6490]  
	     R3 = 4                   	// [1:6490]  
	     R4 = SP + 1              	// [2:6490]  
	     [R4] = R3                	// [4:6490]  
	     call _Led_ON_Some        	// [6:6490]  Led_ON_Some
BB108_PU58:	// 0x144b
// BB:108 cycle count: 8
//6491  						  PlayA1800_Elements(A_VLMMREN_Rule_06);

LM791:
	     .stabn 68,0,6491,LM791-_Step1
	     R3 = 57                  	// [0:6491]  
	     R4 = SP + 1              	// [1:6491]  
	     [R4] = R3                	// [3:6491]  
	     call _PlayA1800_Elements 	// [5:6491]  PlayA1800_Elements
BB109_PU58:	// 0x1451
// BB:109 cycle count: 4
	     SP = SP + 1              	// [0:6491]  
//6492  						  Light_all_off();

LM792:
	     .stabn 68,0,6492,LM792-_Step1
	     call _Light_all_off      	// [1:6492]  Light_all_off
BB110_PU58:	// 0x1454
// BB:110 cycle count: 9
//6493  						  Led_ON_Some(LED1_BIT);

LM793:
	     .stabn 68,0,6493,LM793-_Step1
	     SP = SP - 1              	// [0:6493]  
	     R3 = 2                   	// [1:6493]  
	     R4 = SP + 1              	// [2:6493]  
	     [R4] = R3                	// [4:6493]  
	     call _Led_ON_Some        	// [6:6493]  Led_ON_Some
BB111_PU58:	// 0x145b
// BB:111 cycle count: 8
//6494  						  PlayA1800_Elements(A_VLMMREN_Rule_07);

LM794:
	     .stabn 68,0,6494,LM794-_Step1
	     R3 = 58                  	// [0:6494]  
	     R4 = SP + 1              	// [1:6494]  
	     [R4] = R3                	// [3:6494]  
	     call _PlayA1800_Elements 	// [5:6494]  PlayA1800_Elements
BB112_PU58:	// 0x1461
// BB:112 cycle count: 4
	     SP = SP + 1              	// [0:6494]  
//6495  						  Light_all_off();

LM795:
	     .stabn 68,0,6495,LM795-_Step1
	     call _Light_all_off      	// [1:6495]  Light_all_off
Lt_58_5:	// 0x1464
// BB:113 cycle count: 10
//6496  				  	   }while(PauseFlag);

LM796:
	     .stabn 68,0,6496,LM796-_Step1
	     DS = seg(_PauseFlag)     	// [0:6496]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6496]  PauseFlag
	     R4 = DS:[R4]             	// [3:6496]  
	     cmp R4, 0                	// [5:6496]  
	     je BB114_PU58            	// [6:6496]  
BB138_PU58:	// 0x146a
// BB:138 cycle count: 3
	     goto L_58_110            	// [0:0]  
BB114_PU58:	// 0x146c
// BB:114 cycle count: 6
//6497  		                 TwoKeyflag =0;

LM797:
	     .stabn 68,0,6497,LM797-_Step1
	     R3 = 0                   	// [0:6497]  
	     DS = seg(_TwoKeyflag)    	// [1:6497]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [2:6497]  TwoKeyflag
	     DS:[R4] = R3             	// [4:6497]  
L_58_109:	// 0x1471
// BB:115 cycle count: 22
//6498                }
//6499  
//6500           Key_Event =0;  

LM798:
	     .stabn 68,0,6500,LM798-_Step1
	     R3 = 0                   	// [0:6500]  
	     DS = seg(_Key_Event)     	// [1:6500]  Key_Event
	     R4 = (_Key_Event)        	// [2:6500]  Key_Event
	     DS:[R4] = R3             	// [4:6500]  
//6501           Key_activeflag =Playbutton;

LM799:
	     .stabn 68,0,6501,LM799-_Step1
	     R3 = 1                   	// [6:6501]  
	     DS = seg(_Key_activeflag)	// [7:6501]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6501]  Key_activeflag
	     DS:[R4] = R3             	// [10:6501]  
//6502          if((Registerd_Num>1))//||(Record==0))

LM800:
	     .stabn 68,0,6502,LM800-_Step1
	     DS = seg(_Registerd_Num) 	// [12:6502]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [13:6502]  Registerd_Num
	     R4 = DS:[R4]             	// [15:6502]  
	     cmp R4, 1                	// [17:6502]  
	     jbe BB116_PU58           	// [18:6502]  
BB131_PU58:	// 0x1481
// BB:131 cycle count: 3
	     goto L_58_115            	// [0:0]  
BB116_PU58:	// 0x1483
// BB:116 cycle count: 21
//6508          	}
//6509          else 
//6510            { 
//6511            	
//6512            	    Key_Event =0;  

LM801:
	     .stabn 68,0,6512,LM801-_Step1
	     R3 = 0                   	// [0:6512]  
	     DS = seg(_Key_Event)     	// [1:6512]  Key_Event
	     R4 = (_Key_Event)        	// [2:6512]  Key_Event
	     DS:[R4] = R3             	// [4:6512]  
//6513                  Key_activeflag =0;

LM802:
	     .stabn 68,0,6513,LM802-_Step1
	     R3 = 0                   	// [6:6513]  
	     DS = seg(_Key_activeflag)	// [7:6513]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6513]  Key_activeflag
	     DS:[R4] = R3             	// [10:6513]  
//6514           
//6515                  PlayA1800_Elements(A_VLMMREN_Rule_11);

LM803:
	     .stabn 68,0,6515,LM803-_Step1
	     SP = SP - 1              	// [12:6515]  
	     R3 = 63                  	// [13:6515]  
	     R4 = SP + 1              	// [14:6515]  
	     [R4] = R3                	// [16:6515]  
	     call _PlayA1800_Elements 	// [18:6515]  PlayA1800_Elements
BB117_PU58:	// 0x1494
// BB:117 cycle count: 12
	     SP = SP + 1              	// [0:6515]  
//6516                  
//6517  		        if((Record>100))

LM804:
	     .stabn 68,0,6517,LM804-_Step1
	     DS = seg(_Record)        	// [1:6517]  Record
	     R4 = (_Record)           	// [2:6517]  Record
	     R4 = DS:[R4]             	// [4:6517]  
	     cmp R4, 100              	// [6:6517]  
	     jbe L_58_117             	// [8:6517]  
BB118_PU58:	// 0x149c
// BB:118 cycle count: 9
//6518  		           {
//6519  		        	  PlayA1800_Elements(A_VLMMREN_Rule_03Max);

LM805:
	     .stabn 68,0,6519,LM805-_Step1
	     SP = SP - 1              	// [0:6519]  
	     R3 = 54                  	// [1:6519]  
	     R4 = SP + 1              	// [2:6519]  
	     [R4] = R3                	// [4:6519]  
	     call _PlayA1800_Elements 	// [6:6519]  PlayA1800_Elements
BB119_PU58:	// 0x14a3
// BB:119 cycle count: 8
//6520  		        	  PlayA1800_Elements(A_VLMMREN_Rule_03b);

LM806:
	     .stabn 68,0,6520,LM806-_Step1
	     R3 = 53                  	// [0:6520]  
	     R4 = SP + 1              	// [1:6520]  
	     [R4] = R3                	// [3:6520]  
	     call _PlayA1800_Elements 	// [5:6520]  PlayA1800_Elements
BB120_PU58:	// 0x14a9
// BB:120 cycle count: 5
	     SP = SP + 1              	// [0:6520]  
	     jmp L_58_116             	// [1:6520]  
L_58_117:	// 0x14ab
// BB:121 cycle count: 10
//6521  		           }
//6522  			     else if(Record!=0)

LM807:
	     .stabn 68,0,6522,LM807-_Step1
	     DS = seg(_Record)        	// [0:6522]  Record
	     R4 = (_Record)           	// [1:6522]  Record
	     R4 = DS:[R4]             	// [3:6522]  
	     cmp R4, 0                	// [5:6522]  
	     je L_58_118              	// [6:6522]  
BB122_PU58:	// 0x14b1
// BB:122 cycle count: 9
//6523  			     	{
//6524  					    PlayA1800_Elements(A_VLMMREN_Rule_03);

LM808:
	     .stabn 68,0,6524,LM808-_Step1
	     SP = SP - 1              	// [0:6524]  
	     R3 = 52                  	// [1:6524]  
	     R4 = SP + 1              	// [2:6524]  
	     [R4] = R3                	// [4:6524]  
	     call _PlayA1800_Elements 	// [6:6524]  PlayA1800_Elements
BB123_PU58:	// 0x14b8
// BB:123 cycle count: 19
	     SP = SP - 1              	// [0:6524]  
//6525  		                Play_Seq(Record,C_Point_A_StartAddr);//C_NX

LM809:
	     .stabn 68,0,6525,LM809-_Step1
	     DS = seg(_Record)        	// [1:6525]  Record
	     R4 = (_Record)           	// [2:6525]  Record
	     R3 = DS:[R4]             	// [4:6525]  
	     R4 = SP + 1              	// [6:6525]  
	     [R4] = R3                	// [8:6525]  
	     R3 = 8000                	// [10:6525]  
	     R4 = SP + 2              	// [12:6525]  
	     [R4] = R3                	// [14:6525]  
	     call _Play_Seq           	// [16:6525]  Play_Seq
BB124_PU58:	// 0x14c7
// BB:124 cycle count: 10
	     SP = SP + 1              	// [0:6525]  
//6526  		                PlayA1800_Elements(A_VLMMREN_Score_02);

LM810:
	     .stabn 68,0,6526,LM810-_Step1
	     R3 = 66                  	// [1:6526]  
	     R4 = SP + 1              	// [3:6526]  
	     [R4] = R3                	// [5:6526]  
	     call _PlayA1800_Elements 	// [7:6526]  PlayA1800_Elements
BB125_PU58:	// 0x14cf
// BB:125 cycle count: 8
//6527  						PlayA1800_Elements(A_VLMMREN_Rule_03b);

LM811:
	     .stabn 68,0,6527,LM811-_Step1
	     R3 = 53                  	// [0:6527]  
	     R4 = SP + 1              	// [1:6527]  
	     [R4] = R3                	// [3:6527]  
	     call _PlayA1800_Elements 	// [5:6527]  PlayA1800_Elements
BB126_PU58:	// 0x14d5
// BB:126 cycle count: 1
	     SP = SP + 1              	// [0:6527]  
L_58_118:	// 0x14d6
L_58_116:	// 0x14d6
L_58_115:	// 0x14d6
// BB:127 cycle count: 15
//6529  		
//6530  			     	}
//6531            }
//6532  		
//6533           Key_Event =0;  

LM812:
	     .stabn 68,0,6533,LM812-_Step1
	     R3 = 0                   	// [0:6533]  
	     DS = seg(_Key_Event)     	// [1:6533]  Key_Event
	     R4 = (_Key_Event)        	// [2:6533]  Key_Event
	     DS:[R4] = R3             	// [4:6533]  
//6534           delay_time(8);

LM813:
	     .stabn 68,0,6534,LM813-_Step1
	     SP = SP - 1              	// [6:6534]  
	     R3 = 8                   	// [7:6534]  
	     R4 = SP + 1              	// [8:6534]  
	     [R4] = R3                	// [10:6534]  
	     call _delay_time         	// [12:6534]  delay_time
BB128_PU58:	// 0x14e2
// BB:128 cycle count: 9
//6535           PlayA1800_Elements(A_VLMMREN_Start);

LM814:
	     .stabn 68,0,6535,LM814-_Step1
	     R3 = 74                  	// [0:6535]  
	     R4 = SP + 1              	// [2:6535]  
	     [R4] = R3                	// [4:6535]  
	     call _PlayA1800_Elements 	// [6:6535]  PlayA1800_Elements
BB129_PU58:	// 0x14e9
// BB:129 cycle count: 8
//6536           delay_time(8);

LM815:
	     .stabn 68,0,6536,LM815-_Step1
	     R3 = 8                   	// [0:6536]  
	     R4 = SP + 1              	// [1:6536]  
	     [R4] = R3                	// [3:6536]  
	     call _delay_time         	// [5:6536]  delay_time
BB130_PU58:	// 0x14ef
// BB:130 cycle count: 14
	     SP = SP + 4              	// [0:6536]  
//6537  
//6538  
//6539  	 Round =1;

LM816:
	     .stabn 68,0,6539,LM816-_Step1
	     R3 = 1                   	// [1:6539]  
	     DS = seg(_Round)         	// [2:6539]  Round
	     R4 = (_Round)            	// [3:6539]  Round
	     DS:[R4] = R3             	// [5:6539]  
//6540  	 return C_Game;//C_SelectQuestion_Round1;

LM817:
	     .stabn 68,0,6540,LM817-_Step1
	     R1 = - 4083              	// [7:6540]  
	     pop BP, PC from [SP]     	// [9:6540]  
LBE54:
	.endp	
	     .stabn 192,0,0,LBB54-_Step1
	     .stabs "i:4",128,0,0,1
	     .stabs "temp:4",128,0,0,2
	     .stabs "timeovercnt:4",128,0,0,0
	     .stabn 224,0,0,LBE54-_Step1
LME59:
	     .stabf LME59-_Step1
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
	// lra_spill_temp_31 = 5
	// lra_spill_temp_32 = 6
	// lra_spill_temp_33 = 7
	// lra_spill_temp_34 = 8
	// lra_spill_temp_35 = 9
	// lra_spill_temp_36 = 10
//6560  **********************************************************************/
//6561  
//6562  
//6563  void Select_Sound()
//6564  {

LM818:
	     .stabn 68,0,6564,LM818-_Select_Sound
BB1_PU59:	// 0x14f8
// BB:1 cycle count: 17
	     push BP to [SP]          	// [0:6564]  
	     SP = SP - 11             	// [2:6564]  
	     BP = SP + 1              	// [3:6564]  
LBB55:
//6565     unsigned int cnt =1;

LM819:
	     .stabn 68,0,6565,LM819-_Select_Sound
	     R4 = 1                   	// [5:6565]  
	     [BP + 0] = R4            	// [6:6565]  cnt
//6566     unsigned int temp_Category;
//6567     
//6568     if(R_E ==C_TwoSounds)

LM820:
	     .stabn 68,0,6568,LM820-_Select_Sound
	     DS = seg(_R_E)           	// [7:6568]  R_E
	     R4 = (_R_E)              	// [8:6568]  R_E
	     R4 = DS:[R4]             	// [10:6568]  
	     cmp R4, 2                	// [12:6568]  
	     jne L_59_12              	// [13:6568]  
BB2_PU59:	// 0x1504
// BB:2 cycle count: 2
//6569         cnt=2;

LM821:
	     .stabn 68,0,6569,LM821-_Select_Sound
	     R4 = 2                   	// [0:6569]  
	     [BP + 0] = R4            	// [1:6569]  cnt
L_59_12:	// 0x1506
L_59_13:	// 0x1506
// BB:3 cycle count: 3
//6570       do
//6571       {
//6572          Check_LQA();

LM822:
	     .stabn 68,0,6572,LM822-_Select_Sound
	     call _Check_LQA          	// [0:6572]  Check_LQA
BB4_PU59:	// 0x1508
// BB:4 cycle count: 28
//6573          gQuestionIdx_1=gQuestionIdx;     

LM823:
	     .stabn 68,0,6573,LM823-_Select_Sound
	     DS = seg(_gQuestionIdx)  	// [0:6573]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:6573]  gQuestionIdx
	     R3 = DS:[R4]             	// [3:6573]  
	     DS = seg(_gQuestionIdx_1)	// [5:6573]  gQuestionIdx_1
	     R4 = (_gQuestionIdx_1)   	// [6:6573]  gQuestionIdx_1
	     DS:[R4] = R3             	// [8:6573]  
//6574          
//6575         
//6576          gQuestionIdx= Select_Questionrandom_4(*P_TimerB_CNTR % LQA);

LM824:
	     .stabn 68,0,6576,LM824-_Select_Sound
	     SP = SP - 1              	// [10:6576]  
	     R3 = 12307               	// [11:6576]  
	     R4 = 0                   	// [13:6576]  
	     DS = R4                  	// [14:6576]  
	     R3 = DS:[R3]             	// [15:6576]  
	     DS = seg(_LQA)           	// [17:6576]  LQA
	     R4 = (_LQA)              	// [18:6576]  LQA
	     R4 = DS:[R4]             	// [20:6576]  
	     push R4, R3 to [SP]      	// [22:6576]  
	     call __modu1             	// [25:6576]  _modu1
BB5_PU59:	// 0x151d
// BB:5 cycle count: 8
	     SP = SP + 2              	// [0:0]  
	     R4 = SP + 1              	// [1:0]  
	     [R4] = R1                	// [3:0]  
	     call _Select_Questionrandom_4	// [5:6576]  Select_Questionrandom_4
BB6_PU59:	// 0x1523
// BB:6 cycle count: 17
	     DS = seg(_gQuestionIdx)  	// [0:6576]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:6576]  gQuestionIdx
	     DS:[R4] = R1             	// [3:6576]  
//6577          
//6578          temp_Category= Get_Question_Category(gQuestionIdx);

LM825:
	     .stabn 68,0,6578,LM825-_Select_Sound
	     DS = seg(_gQuestionIdx)  	// [5:6578]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [6:6578]  gQuestionIdx
	     R3 = DS:[R4]             	// [8:6578]  
	     R4 = SP + 1              	// [10:6578]  
	     [R4] = R3                	// [12:6578]  
	     call _Get_Question_Category	// [14:6578]  Get_Question_Category
BB7_PU59:	// 0x1530
// BB:7 cycle count: 12
	     SP = SP + 1              	// [0:6578]  
	     [BP + 1] = R1            	// [1:6578]  temp_Category
//6579          
//6580          if(Last2Catcnt)

LM826:
	     .stabn 68,0,6580,LM826-_Select_Sound
	     DS = seg(_Last2Catcnt)   	// [2:6580]  Last2Catcnt
	     R4 = (_Last2Catcnt)      	// [3:6580]  Last2Catcnt
	     R4 = DS:[R4]             	// [5:6580]  
	     cmp R4, 0                	// [7:6580]  
	     je L_59_14               	// [8:6580]  
BB8_PU59:	// 0x1538
// BB:8 cycle count: 21
//6581          {
//6582          	 Last2Catcnt++;

LM827:
	     .stabn 68,0,6582,LM827-_Select_Sound
	     DS = seg(_Last2Catcnt)   	// [0:6582]  Last2Catcnt
	     R4 = (_Last2Catcnt)      	// [1:6582]  Last2Catcnt
	     R4 = DS:[R4]             	// [3:6582]  
	     R4 = R4 + 1              	// [5:6582]  
	     DS = seg(_Last2Catcnt)   	// [6:6582]  Last2Catcnt
	     R3 = (_Last2Catcnt)      	// [7:6582]  Last2Catcnt
	     DS:[R3] = R4             	// [9:6582]  
//6583          
//6584            if(Last2Catcnt<4)	 

LM828:
	     .stabn 68,0,6584,LM828-_Select_Sound
	     DS = seg(_Last2Catcnt)   	// [11:6584]  Last2Catcnt
	     R4 = (_Last2Catcnt)      	// [12:6584]  Last2Catcnt
	     R4 = DS:[R4]             	// [14:6584]  
	     cmp R4, 3                	// [16:6584]  
	     ja L_59_16               	// [17:6584]  
BB9_PU59:	// 0x1547
// BB:9 cycle count: 12
//6585             {
//6586               if(temp_Category == Last2Cat[1])

LM829:
	     .stabn 68,0,6586,LM829-_Select_Sound
	     DS = seg(_Last2Cat+1)    	// [0:6586]  Last2Cat+1
	     R4 = (_Last2Cat+1)       	// [1:6586]  Last2Cat+1
	     R3 = DS:[R4]             	// [3:6586]  
	     R4 = [BP + 1]            	// [5:6586]  temp_Category
	     cmp R3, R4               	// [7:6586]  
	     jne L_59_17              	// [8:6586]  
BB10_PU59:	// 0x154e
// BB:10 cycle count: 10
//6587                  {
//6588               	    gQuestionIdx =  Select_Question_ModeStatus_Other(temp_Category);

LM830:
	     .stabn 68,0,6588,LM830-_Select_Sound
	     SP = SP - 1              	// [0:6588]  
	     R3 = [BP + 1]            	// [1:6588]  temp_Category
	     R4 = SP + 1              	// [3:6588]  
	     [R4] = R3                	// [5:6588]  
	     call _Select_Question_ModeStatus_Other	// [7:6588]  Select_Question_ModeStatus_Other
BB11_PU59:	// 0x1555
// BB:11 cycle count: 17
	     DS = seg(_gQuestionIdx)  	// [0:6588]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:6588]  gQuestionIdx
	     DS:[R4] = R1             	// [3:6588]  
//6589               	    temp_Category= Get_Question_Category(gQuestionIdx);

LM831:
	     .stabn 68,0,6589,LM831-_Select_Sound
	     DS = seg(_gQuestionIdx)  	// [5:6589]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [6:6589]  gQuestionIdx
	     R3 = DS:[R4]             	// [8:6589]  
	     R4 = SP + 1              	// [10:6589]  
	     [R4] = R3                	// [12:6589]  
	     call _Get_Question_Category	// [14:6589]  Get_Question_Category
BB12_PU59:	// 0x1562
// BB:12 cycle count: 8
	     SP = SP + 1              	// [0:6589]  
	     [BP + 1] = R1            	// [1:6589]  temp_Category
//6590               	    Last2Catcnt =0;

LM832:
	     .stabn 68,0,6590,LM832-_Select_Sound
	     R3 = 0                   	// [2:6590]  
	     DS = seg(_Last2Catcnt)   	// [3:6590]  Last2Catcnt
	     R4 = (_Last2Catcnt)      	// [4:6590]  Last2Catcnt
	     DS:[R4] = R3             	// [6:6590]  
L_59_17:	// 0x1569
// BB:13 cycle count: 4

LM833:
	     .stabn 68,0,6586,LM833-_Select_Sound
	     jmp L_59_15              	// [0:6586]  
L_59_16:	// 0x156a
// BB:14 cycle count: 6
//6591                  }
//6592             	
//6593             }
//6594            else
//6595               Last2Catcnt =0; 

LM834:
	     .stabn 68,0,6595,LM834-_Select_Sound
	     R3 = 0                   	// [0:6595]  
	     DS = seg(_Last2Catcnt)   	// [1:6595]  Last2Catcnt
	     R4 = (_Last2Catcnt)      	// [2:6595]  Last2Catcnt
	     DS:[R4] = R3             	// [4:6595]  
L_59_15:	// 0x156f
L_59_14:	// 0x156f
// BB:15 cycle count: 169
//6604  			}
//6605  		#endif  
//6606          
//6607        
//6608        	QuestionStatus_LQ[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];		//suppress Qx from LQ;	

LM835:
	     .stabn 68,0,6608,LM835-_Select_Sound
	     DS = seg(_gQuestionIdx)  	// [0:6608]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [1:6608]  gQuestionIdx
	     R4 = DS:[R4]             	// [3:6608]  
	     R4 = R4 lsr 4            	// [5:6608]  
	     [BP + 2] = R4            	// [6:6608]  __save_expr_temp_13
	     R4 = [BP + 2]            	// [7:6608]  __save_expr_temp_13
	     R3 = 0                   	// [9:6608]  
	     R1 = (_QuestionStatus_LQ)	// [10:6608]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [12:6608]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [13:6608]  
	     R3 = R3 + R2, Carry      	// [14:6608]  
	     DS = R3                  	// [15:6608]  
	     R4 = DS:[R4]             	// [16:6608]  
	     [BP + 5] = R4            	// [18:6608]  lra_spill_temp_31
	     DS = seg(_gQuestionIdx)  	// [19:6608]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [20:6608]  gQuestionIdx
	     R4 = DS:[R4]             	// [22:6608]  
	     R4 = R4 & 15             	// [24:6608]  
	     R3 = 0                   	// [25:6608]  
	     R1 = (_BitMap)           	// [26:6608]  BitMap
	     R2 = seg(_BitMap)        	// [28:6608]  BitMap
	     R4 = R4 + R1             	// [29:6608]  
	     R3 = R3 + R2, Carry      	// [30:6608]  
	     DS = R3                  	// [31:6608]  
	     R4 = DS:[R4]             	// [32:6608]  
	     R3 = R4 ^ 65535          	// [34:6608]  
	     R4 = [BP + 5]            	// [36:6608]  lra_spill_temp_31
	     R4 = R4 & R3             	// [38:6608]  
	     [BP + 6] = R4            	// [39:6608]  lra_spill_temp_32
	     R4 = [BP + 2]            	// [40:6608]  __save_expr_temp_13
	     R3 = 0                   	// [42:6608]  
	     R1 = (_QuestionStatus_LQ)	// [43:6608]  QuestionStatus_LQ
	     R2 = seg(_QuestionStatus_LQ)	// [45:6608]  QuestionStatus_LQ
	     R4 = R4 + R1             	// [46:6608]  
	     R3 = R3 + R2, Carry      	// [47:6608]  
	     DS = R3                  	// [48:6608]  
	     R3 = [BP + 6]            	// [49:6608]  lra_spill_temp_32
	     DS:[R4] = R3             	// [51:6608]  
//6609  		QuestionStatus_LQA[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];	

LM836:
	     .stabn 68,0,6609,LM836-_Select_Sound
	     DS = seg(_gQuestionIdx)  	// [53:6609]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [54:6609]  gQuestionIdx
	     R4 = DS:[R4]             	// [56:6609]  
	     R4 = R4 lsr 4            	// [58:6609]  
	     [BP + 3] = R4            	// [59:6609]  __save_expr_temp_14
	     R4 = [BP + 3]            	// [60:6609]  __save_expr_temp_14
	     R3 = 0                   	// [62:6609]  
	     R1 = (_QuestionStatus_LQA)	// [63:6609]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [65:6609]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [66:6609]  
	     R3 = R3 + R2, Carry      	// [67:6609]  
	     DS = R3                  	// [68:6609]  
	     R4 = DS:[R4]             	// [69:6609]  
	     [BP + 7] = R4            	// [71:6609]  lra_spill_temp_33
	     DS = seg(_gQuestionIdx)  	// [72:6609]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [73:6609]  gQuestionIdx
	     R4 = DS:[R4]             	// [75:6609]  
	     R4 = R4 & 15             	// [77:6609]  
	     R3 = 0                   	// [78:6609]  
	     R1 = (_BitMap)           	// [79:6609]  BitMap
	     R2 = seg(_BitMap)        	// [81:6609]  BitMap
	     R4 = R4 + R1             	// [82:6609]  
	     R3 = R3 + R2, Carry      	// [83:6609]  
	     DS = R3                  	// [84:6609]  
	     R4 = DS:[R4]             	// [85:6609]  
	     R3 = R4 ^ 65535          	// [87:6609]  
	     R4 = [BP + 7]            	// [89:6609]  lra_spill_temp_33
	     R4 = R4 & R3             	// [91:6609]  
	     [BP + 8] = R4            	// [92:6609]  lra_spill_temp_34
	     R4 = [BP + 3]            	// [93:6609]  __save_expr_temp_14
	     R3 = 0                   	// [95:6609]  
	     R1 = (_QuestionStatus_LQA)	// [96:6609]  QuestionStatus_LQA
	     R2 = seg(_QuestionStatus_LQA)	// [98:6609]  QuestionStatus_LQA
	     R4 = R4 + R1             	// [99:6609]  
	     R3 = R3 + R2, Carry      	// [100:6609]  
	     DS = R3                  	// [101:6609]  
	     R3 = [BP + 8]            	// [102:6609]  lra_spill_temp_34
	     DS:[R4] = R3             	// [104:6609]  
//6610  		QuestionStatus_Asked[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];

LM837:
	     .stabn 68,0,6610,LM837-_Select_Sound
	     DS = seg(_gQuestionIdx)  	// [106:6610]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [107:6610]  gQuestionIdx
	     R4 = DS:[R4]             	// [109:6610]  
	     R4 = R4 lsr 4            	// [111:6610]  
	     [BP + 4] = R4            	// [112:6610]  __save_expr_temp_15
	     R4 = [BP + 4]            	// [113:6610]  __save_expr_temp_15
	     R3 = 0                   	// [115:6610]  
	     R1 = (_QuestionStatus_Asked)	// [116:6610]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [118:6610]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [119:6610]  
	     R3 = R3 + R2, Carry      	// [120:6610]  
	     DS = R3                  	// [121:6610]  
	     R4 = DS:[R4]             	// [122:6610]  
	     [BP + 9] = R4            	// [124:6610]  lra_spill_temp_35
	     DS = seg(_gQuestionIdx)  	// [125:6610]  gQuestionIdx
	     R4 = (_gQuestionIdx)     	// [126:6610]  gQuestionIdx
	     R4 = DS:[R4]             	// [128:6610]  
	     R4 = R4 & 15             	// [130:6610]  
	     R3 = 0                   	// [131:6610]  
	     R1 = (_BitMap)           	// [132:6610]  BitMap
	     R2 = seg(_BitMap)        	// [134:6610]  BitMap
	     R4 = R4 + R1             	// [135:6610]  
	     R3 = R3 + R2, Carry      	// [136:6610]  
	     DS = R3                  	// [137:6610]  
	     R4 = DS:[R4]             	// [138:6610]  
	     R3 = R4 ^ 65535          	// [140:6610]  
	     R4 = [BP + 9]            	// [142:6610]  lra_spill_temp_35
	     R4 = R4 & R3             	// [144:6610]  
	     [BP + 10] = R4           	// [145:6610]  lra_spill_temp_36
	     R4 = [BP + 4]            	// [146:6610]  __save_expr_temp_15
	     R3 = 0                   	// [148:6610]  
	     R1 = (_QuestionStatus_Asked)	// [149:6610]  QuestionStatus_Asked
	     R2 = seg(_QuestionStatus_Asked)	// [151:6610]  QuestionStatus_Asked
	     R4 = R4 + R1             	// [152:6610]  
	     R3 = R3 + R2, Carry      	// [153:6610]  
	     DS = R3                  	// [154:6610]  
	     R3 = [BP + 10]           	// [155:6610]  lra_spill_temp_36
	     DS:[R4] = R3             	// [157:6610]  
//6611        
//6612        
//6613        Save_Question_Category2Last(temp_Category);

LM838:
	     .stabn 68,0,6613,LM838-_Select_Sound
	     SP = SP - 1              	// [159:6613]  
	     R3 = [BP + 1]            	// [160:6613]  temp_Category
	     R4 = SP + 1              	// [162:6613]  
	     [R4] = R3                	// [164:6613]  
	     call _Save_Question_Category2Last	// [166:6613]  Save_Question_Category2Last
BB16_PU59:	// 0x15fa
// BB:16 cycle count: 4
	     SP = SP + 1              	// [0:6613]  
//6614        Save_Question_CategoryMemory();

LM839:
	     .stabn 68,0,6614,LM839-_Select_Sound
	     call _Save_Question_CategoryMemory	// [1:6614]  Save_Question_CategoryMemory
BB17_PU59:	// 0x15fd
// BB:17 cycle count: 9
//6615        cnt--;

LM840:
	     .stabn 68,0,6615,LM840-_Select_Sound
	     R4 = [BP + 0]            	// [0:6615]  cnt
	     R4 = R4 - 1              	// [2:6615]  
	     [BP + 0] = R4            	// [3:6615]  cnt
	//;;
	INT OFF
	//;;
//6616        
//6617        
//6618  	   __asm("INT OFF");
//6619        MoveSPIDriverToRAM();		

LM841:
	     .stabn 68,0,6619,LM841-_Select_Sound
	     call _MoveSPIDriverToRAM 	// [6:6619]  MoveSPIDriverToRAM
BB18_PU59:	// 0x1605
// BB:18 cycle count: 15
//6620        SPI_Flash_Sector_Erase(T_LQ_Secter_L,T_LQ_Secter_H);

LM842:
	     .stabn 68,0,6620,LM842-_Select_Sound
	     SP = SP - 2              	// [0:6620]  
	     R3 = - 12288             	// [1:6620]  
	     R4 = SP + 1              	// [3:6620]  
	     [R4] = R3                	// [5:6620]  
	     R3 = 31                  	// [7:6620]  
	     R4 = SP + 2              	// [8:6620]  
	     [R4] = R3                	// [10:6620]  
	     call _SPI_Flash_Sector_Erase	// [12:6620]  SPI_Flash_Sector_Erase
BB19_PU59:	// 0x1611
// BB:19 cycle count: 29
	     SP = SP - 3              	// [0:6620]  
//6621        SPI_Flash_SendNWords(QuestionStatus_LQ,C_QuestionRAM,T_LQ_Secter_L,T_LQ_Secter_H);

LM843:
	     .stabn 68,0,6621,LM843-_Select_Sound
	     R2 = (_QuestionStatus_LQ)	// [1:6621]  QuestionStatus_LQ
	     R3 = seg(_QuestionStatus_LQ)	// [3:6621]  QuestionStatus_LQ
	     R4 = SP + 1              	// [4:6621]  
	     [R4++] = R2              	// [6:6621]  
	     [R4] = R3                	// [8:6621]  
	     R3 = 20                  	// [10:6621]  
	     R4 = SP + 3              	// [11:6621]  
	     [R4] = R3                	// [13:6621]  
	     R3 = - 12288             	// [15:6621]  
	     R4 = SP + 4              	// [17:6621]  
	     [R4] = R3                	// [19:6621]  
	     R3 = 31                  	// [21:6621]  
	     R4 = SP + 5              	// [22:6621]  
	     [R4] = R3                	// [24:6621]  
	     call _SPI_Flash_SendNWords	// [26:6621]  SPI_Flash_SendNWords
BB20_PU59:	// 0x1628
// BB:20 cycle count: 15
	     SP = SP + 3              	// [0:6621]  
//6622        
//6623        SPI_Flash_Sector_Erase(T_Asked_Secter_L,T_Asked_Secter_H);

LM844:
	     .stabn 68,0,6623,LM844-_Select_Sound
	     R3 = - 4096              	// [1:6623]  
	     R4 = SP + 1              	// [3:6623]  
	     [R4] = R3                	// [5:6623]  
	     R3 = 31                  	// [7:6623]  
	     R4 = SP + 2              	// [8:6623]  
	     [R4] = R3                	// [10:6623]  
	     call _SPI_Flash_Sector_Erase	// [12:6623]  SPI_Flash_Sector_Erase
BB21_PU59:	// 0x1634
// BB:21 cycle count: 29
	     SP = SP - 3              	// [0:6623]  
//6624        SPI_Flash_SendNWords(QuestionStatus_Asked,C_QuestionRAM,T_Asked_Secter_L,T_Asked_Secter_H);   

LM845:
	     .stabn 68,0,6624,LM845-_Select_Sound
	     R2 = (_QuestionStatus_Asked)	// [1:6624]  QuestionStatus_Asked
	     R3 = seg(_QuestionStatus_Asked)	// [3:6624]  QuestionStatus_Asked
	     R4 = SP + 1              	// [4:6624]  
	     [R4++] = R2              	// [6:6624]  
	     [R4] = R3                	// [8:6624]  
	     R3 = 20                  	// [10:6624]  
	     R4 = SP + 3              	// [11:6624]  
	     [R4] = R3                	// [13:6624]  
	     R3 = - 4096              	// [15:6624]  
	     R4 = SP + 4              	// [17:6624]  
	     [R4] = R3                	// [19:6624]  
	     R3 = 31                  	// [21:6624]  
	     R4 = SP + 5              	// [22:6624]  
	     [R4] = R3                	// [24:6624]  
	     call _SPI_Flash_SendNWords	// [26:6624]  SPI_Flash_SendNWords
BB22_PU59:	// 0x164b
// BB:22 cycle count: 3
	     SP = SP + 5              	// [0:6624]  
	//;;
	INT FIQ,IRQ
	//;;
Lt_59_1:	// 0x164f
// BB:23 cycle count: 7
//6626          __asm("INT FIQ,IRQ");
//6627        
//6628        
//6629        
//6630       }while(cnt>0);

LM846:
	     .stabn 68,0,6630,LM846-_Select_Sound
	     R4 = [BP + 0]            	// [0:6630]  cnt
	     cmp R4, 0                	// [2:6630]  
	     je BB24_PU59             	// [3:6630]  
BB25_PU59:	// 0x1652
// BB:25 cycle count: 3
	     goto L_59_13             	// [0:0]  
BB24_PU59:	// 0x1654
// BB:24 cycle count: 6
	     SP = SP + 11             	// [0:6630]  
	     pop BP, PC from [SP]     	// [1:6630]  
LBE55:
	.endp	
	     .stabn 192,0,0,LBB55-_Select_Sound
	     .stabs "cnt:4",128,0,0,0
	     .stabs "temp_Category:4",128,0,0,1
	     .stabn 224,0,0,LBE55-_Select_Sound
LME60:
	     .stabf LME60-_Select_Sound
.code
	     .stabs "Events:F18",36,0,0,_Events

	// Program Unit: Events
.public	_Events
_Events: .proc	
	     .stabn 0xa6,0,0,0
	// old_frame_pointer = 0
	// return_address = 1
//6632  }
//6633  /*******************************************************************
//6634  **********************************************************************/
//6635  void Events()
//6636  {

LM847:
	     .stabn 68,0,6636,LM847-_Events
BB1_PU60:	// 0x1650
// BB:1 cycle count: 17
	     push BP to [SP]          	// [0:6636]  
	     BP = SP + 1              	// [2:6636]  
//6637  	
//6638  	if((*P_TimerB_CNTR % 6)<3)

LM848:
	     .stabn 68,0,6638,LM848-_Events
	     R3 = 12307               	// [4:6638]  
	     R4 = 0                   	// [6:6638]  
	     DS = R4                  	// [7:6638]  
	     R3 = DS:[R3]             	// [8:6638]  
	     R4 = 6                   	// [10:6638]  
	     push R4, R3 to [SP]      	// [11:6638]  
	     call __modu1             	// [14:6638]  _modu1
BB2_PU60:	// 0x165c
// BB:2 cycle count: 6
	     SP = SP + 2              	// [0:0]  
	     cmp R1, 2                	// [1:0]  
	     ja L_60_4                	// [2:0]  
BB3_PU60:	// 0x165f
// BB:3 cycle count: 25
//6639  	{
//6640  		 R_E = C_OneMoreTime;

LM849:
	     .stabn 68,0,6640,LM849-_Events
	     R3 = 1                   	// [0:6640]  
	     DS = seg(_R_E)           	// [1:6640]  R_E
	     R4 = (_R_E)              	// [2:6640]  R_E
	     DS:[R4] = R3             	// [4:6640]  
//6641  	     Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);

LM850:
	     .stabn 68,0,6641,LM850-_Events
	     SP = SP - 2              	// [6:6641]  
	     DS = seg(_Player_Activing_Cnt)	// [7:6641]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [8:6641]  Player_Activing_Cnt
	     R3 = DS:[R4]             	// [10:6641]  
	     R4 = SP + 1              	// [12:6641]  
	     [R4] = R3                	// [14:6641]  
	     R3 = 6000                	// [16:6641]  
	     R4 = SP + 2              	// [18:6641]  
	     [R4] = R3                	// [20:6641]  
	     call _Play_Seq           	// [22:6641]  Play_Seq
BB4_PU60:	// 0x1673
// BB:4 cycle count: 9
	     SP = SP + 1              	// [0:6641]  
//6642  	     PlayA1800_Elements(A_VLMMREN_OneMore);	

LM851:
	     .stabn 68,0,6642,LM851-_Events
	     R3 = 34                  	// [1:6642]  
	     R4 = SP + 1              	// [2:6642]  
	     [R4] = R3                	// [4:6642]  
	     call _PlayA1800_Elements 	// [6:6642]  PlayA1800_Elements
BB5_PU60:	// 0x167a
// BB:5 cycle count: 5
	     SP = SP + 1              	// [0:6642]  
	     jmp L_60_3               	// [1:6642]  
L_60_4:	// 0x167c
// BB:6 cycle count: 22
//6643  	}
//6644    else
//6645     {
//6646    	     R_E =C_TwoSounds;

LM852:
	     .stabn 68,0,6646,LM852-_Events
	     R3 = 2                   	// [0:6646]  
	     DS = seg(_R_E)           	// [1:6646]  R_E
	     R4 = (_R_E)              	// [2:6646]  R_E
	     DS:[R4] = R3             	// [4:6646]  
//6647    	     R_2SLoop =0;

LM853:
	     .stabn 68,0,6647,LM853-_Events
	     R3 = 0                   	// [6:6647]  
	     DS = seg(_R_2SLoop)      	// [7:6647]  R_2SLoop
	     R4 = (_R_2SLoop)         	// [8:6647]  R_2SLoop
	     DS:[R4] = R3             	// [10:6647]  
//6648    	     PlayA1800_Elements(A_VLMMREN_TwoSounds);

LM854:
	     .stabn 68,0,6648,LM854-_Events
	     SP = SP - 1              	// [12:6648]  
	     R3 = 75                  	// [13:6648]  
	     R4 = SP + 1              	// [15:6648]  
	     [R4] = R3                	// [17:6648]  
	     call _PlayA1800_Elements 	// [19:6648]  PlayA1800_Elements
BB7_PU60:	// 0x168e
// BB:7 cycle count: 4
	     SP = SP + 1              	// [0:6648]  
//6649    	     
//6650    	     Player_Activing_Cnt =Select_Pingamerandom();	

LM855:
	     .stabn 68,0,6650,LM855-_Events
	     call _Select_Pingamerandom	// [1:6650]  Select_Pingamerandom
BB8_PU60:	// 0x1691
// BB:8 cycle count: 5
	     DS = seg(_Player_Activing_Cnt)	// [0:6650]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:6650]  Player_Activing_Cnt
	     DS:[R4] = R1             	// [3:6650]  
L_60_3:	// 0x1695
// BB:9 cycle count: 11
//6651     }
//6652  	SinceLastE=0;

LM856:
	     .stabn 68,0,6652,LM856-_Events
	     R3 = 0                   	// [0:6652]  
	     DS = seg(_SinceLastE)    	// [1:6652]  SinceLastE
	     R4 = (_SinceLastE)       	// [2:6652]  SinceLastE
	     DS:[R4] = R3             	// [4:6652]  
	     pop BP, PC from [SP]     	// [6:6652]  
	.endp	
LME61:
	     .stabf LME61-_Events
.code
	     .stabs "Game:F4",36,0,0,_Game

	// Program Unit: Game
.public	_Game
_Game: .proc	
	     .stabn 0xa6,0,0,1
	// temp = 0
	// old_frame_pointer = 1
	// return_address = 2
//6654  
//6655  /*******************************************************************
//6656  **********************************************************************/
//6657  unsigned int Game()
//6658  {

LM857:
	     .stabn 68,0,6658,LM857-_Game
BB1_PU61:	// 0x169b
// BB:1 cycle count: 53
	     push BP to [SP]          	// [0:6658]  
	     SP = SP - 1              	// [2:6658]  
	     BP = SP + 1              	// [3:6658]  
LBB56:
//6659  	unsigned int temp;
//6660  
//6661      R_E =0;

LM858:
	     .stabn 68,0,6661,LM858-_Game
	     R3 = 0                   	// [5:6661]  
	     DS = seg(_R_E)           	// [6:6661]  R_E
	     R4 = (_R_E)              	// [7:6661]  R_E
	     DS:[R4] = R3             	// [9:6661]  
//6662  
//6663      firstFlag_23b&=~0x800;

LM859:
	     .stabn 68,0,6663,LM859-_Game
	     DS = seg(_firstFlag_23b) 	// [11:6663]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [12:6663]  firstFlag_23b
	     R4 = DS:[R4]             	// [14:6663]  
	     R3 = R4 & 63487          	// [16:6663]  
	     DS = seg(_firstFlag_23b) 	// [18:6663]  firstFlag_23b
	     R4 = (_firstFlag_23b)    	// [19:6663]  firstFlag_23b
	     DS:[R4] = R3             	// [21:6663]  
//6664      CheaterFlag =0;

LM860:
	     .stabn 68,0,6664,LM860-_Game
	     R3 = 0                   	// [23:6664]  
	     DS = seg(_CheaterFlag)   	// [24:6664]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [25:6664]  CheaterFlag
	     DS:[R4] = R3             	// [27:6664]  
//6665      Eventflag =0;

LM861:
	     .stabn 68,0,6665,LM861-_Game
	     R3 = 0                   	// [29:6665]  
	     DS = seg(_Eventflag)     	// [30:6665]  Eventflag
	     R4 = (_Eventflag)        	// [31:6665]  Eventflag
	     DS:[R4] = R3             	// [33:6665]  
//6666  	End20flag =0;

LM862:
	     .stabn 68,0,6666,LM862-_Game
	     R3 = 0                   	// [35:6666]  
	     DS = seg(_End20flag)     	// [36:6666]  End20flag
	     R4 = (_End20flag)        	// [37:6666]  End20flag
	     DS:[R4] = R3             	// [39:6666]  
//6667       
//6668  	Key_Event =0;

LM863:
	     .stabn 68,0,6668,LM863-_Game
	     R3 = 0                   	// [41:6668]  
	     DS = seg(_Key_Event)     	// [42:6668]  Key_Event
	     R4 = (_Key_Event)        	// [43:6668]  Key_Event
	     DS:[R4] = R3             	// [45:6668]  
//6669  	Key_activeflag = ALL_Key_Enable;

LM864:
	     .stabn 68,0,6669,LM864-_Game
	     R3 = 7                   	// [47:6669]  
	     DS = seg(_Key_activeflag)	// [48:6669]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [49:6669]  Key_activeflag
	     DS:[R4] = R3             	// [51:6669]  
L_61_30:	// 0x16c7
// BB:2 cycle count: 3
//6684       
//6685     while(1)
//6686     	{
//6687  	    
//6688  	    WatchdogClear();

LM865:
	     .stabn 68,0,6688,LM865-_Game
	     call _WatchdogClear      	// [0:6688]  WatchdogClear
BB3_PU61:	// 0x16c9
// BB:3 cycle count: 10
//6689     	  
//6690     	  	if(Sleepflag) 

LM866:
	     .stabn 68,0,6690,LM866-_Game
	     DS = seg(_Sleepflag)     	// [0:6690]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:6690]  Sleepflag
	     R4 = DS:[R4]             	// [3:6690]  
	     cmp R4, 0                	// [5:6690]  
	     je L_61_32               	// [6:6690]  
BB4_PU61:	// 0x16cf
// BB:4 cycle count: 7
//6691  		     return C_Finish ;   

LM867:
	     .stabn 68,0,6691,LM867-_Game
	     R1 = - 1                 	// [0:6691]  
	     SP = SP + 1              	// [1:6691]  
	     pop BP, PC from [SP]     	// [2:6691]  
L_61_32:	// 0x16d2
// BB:5 cycle count: 37
//6692  	    
//6693  	    CheaterFlag =0;

LM868:
	     .stabn 68,0,6693,LM868-_Game
	     R3 = 0                   	// [0:6693]  
	     DS = seg(_CheaterFlag)   	// [1:6693]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [2:6693]  CheaterFlag
	     DS:[R4] = R3             	// [4:6693]  
//6694  	    PauseFlag =0;

LM869:
	     .stabn 68,0,6694,LM869-_Game
	     R3 = 0                   	// [6:6694]  
	     DS = seg(_PauseFlag)     	// [7:6694]  PauseFlag
	     R4 = (_PauseFlag)        	// [8:6694]  PauseFlag
	     DS:[R4] = R3             	// [10:6694]  
//6695  	    
//6696  	    Cn++;    

LM870:
	     .stabn 68,0,6696,LM870-_Game
	     DS = seg(_Cn)            	// [12:6696]  Cn
	     R4 = (_Cn)               	// [13:6696]  Cn
	     R4 = DS:[R4]             	// [15:6696]  
	     R4 = R4 + 1              	// [17:6696]  
	     DS = seg(_Cn)            	// [18:6696]  Cn
	     R3 = (_Cn)               	// [19:6696]  Cn
	     DS:[R3] = R4             	// [21:6696]  
//6697          SinceLastE++;

LM871:
	     .stabn 68,0,6697,LM871-_Game
	     DS = seg(_SinceLastE)    	// [23:6697]  SinceLastE
	     R4 = (_SinceLastE)       	// [24:6697]  SinceLastE
	     R4 = DS:[R4]             	// [26:6697]  
	     R4 = R4 + 1              	// [28:6697]  
	     DS = seg(_SinceLastE)    	// [29:6697]  SinceLastE
	     R3 = (_SinceLastE)       	// [30:6697]  SinceLastE
	     DS:[R3] = R4             	// [32:6697]  
//6698          
//6699  		if((Get_Num_CategoryMemory()>100)&&(Tie ==0))

LM872:
	     .stabn 68,0,6699,LM872-_Game
	     call _Get_Num_CategoryMemory	// [34:6699]  Get_Num_CategoryMemory
BB6_PU61:	// 0x16f0
// BB:6 cycle count: 6
	     cmp R1, 100              	// [0:6699]  
	     jbe L_61_33              	// [2:6699]  
BB7_PU61:	// 0x16f3
// BB:7 cycle count: 10
	     DS = seg(_Tie)           	// [0:6699]  Tie
	     R4 = (_Tie)              	// [1:6699]  Tie
	     R4 = DS:[R4]             	// [3:6699]  
	     cmp R4, 0                	// [5:6699]  
	     jne L_61_33              	// [6:6699]  
L_61_34:	// 0x16f9
// BB:8 cycle count: 3
//6700  			break;

LM873:
	     .stabn 68,0,6700,LM873-_Game
	     goto Lt_61_1             	// [0:6700]  
L_61_33:	// 0x16fb
// BB:9 cycle count: 10
//6701  
//6702          if((Cn>8)&&(Registerd_Num>1)&&(SinceLastE>4)&&((*P_TimerB_CNTR % 4)==0))

LM874:
	     .stabn 68,0,6702,LM874-_Game
	     DS = seg(_Cn)            	// [0:6702]  Cn
	     R4 = (_Cn)               	// [1:6702]  Cn
	     R4 = DS:[R4]             	// [3:6702]  
	     cmp R4, 8                	// [5:6702]  
	     jbe L_61_36              	// [6:6702]  
BB10_PU61:	// 0x1701
// BB:10 cycle count: 10
	     DS = seg(_Registerd_Num) 	// [0:6702]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6702]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6702]  
	     cmp R4, 1                	// [5:6702]  
	     jbe L_61_36              	// [6:6702]  
L_61_39:	// 0x1707
// BB:11 cycle count: 10
	     DS = seg(_SinceLastE)    	// [0:6702]  SinceLastE
	     R4 = (_SinceLastE)       	// [1:6702]  SinceLastE
	     R4 = DS:[R4]             	// [3:6702]  
	     cmp R4, 4                	// [5:6702]  
	     jbe L_61_36              	// [6:6702]  
L_61_38:	// 0x170d
// BB:12 cycle count: 12
	     R3 = 12307               	// [0:6702]  
	     R4 = 0                   	// [2:6702]  
	     DS = R4                  	// [3:6702]  
	     R4 = DS:[R3]             	// [4:6702]  
	     R4 = R4 & 3              	// [6:6702]  
	     cmp R4, 0                	// [7:6702]  
	     jne L_61_36              	// [8:6702]  
L_61_37:	// 0x1715
// BB:13 cycle count: 3
//6703          	Events();

LM875:
	     .stabn 68,0,6703,LM875-_Game
	     call _Events             	// [0:6703]  Events
BB14_PU61:	// 0x1717
// BB:14 cycle count: 4
	     jmp L_61_35              	// [0:6703]  
L_61_36:	// 0x1718
// BB:15 cycle count: 10
//6704          else             
//6705          {
//6706             if(Registerd_Num==1)

LM876:
	     .stabn 68,0,6706,LM876-_Game
	     DS = seg(_Registerd_Num) 	// [0:6706]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6706]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6706]  
	     cmp R4, 1                	// [5:6706]  
	     jne L_61_40              	// [6:6706]  
BB16_PU61:	// 0x171e
// BB:16 cycle count: 13
//6707             	     Player_Activing_Cnt=Get_Firstcnt_From_Play(Registered_Play_Status);

LM877:
	     .stabn 68,0,6707,LM877-_Game
	     SP = SP - 1              	// [0:6707]  
	     DS = seg(_Registered_Play_Status)	// [1:6707]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [2:6707]  Registered_Play_Status
	     R3 = DS:[R4]             	// [4:6707]  
	     R4 = SP + 1              	// [6:6707]  
	     [R4] = R3                	// [8:6707]  
	     call _Get_Firstcnt_From_Play	// [10:6707]  Get_Firstcnt_From_Play
BB17_PU61:	// 0x1728
// BB:17 cycle count: 6
	     SP = SP + 1              	// [0:6707]  
	     DS = seg(_Player_Activing_Cnt)	// [1:6707]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [2:6707]  Player_Activing_Cnt
	     DS:[R4] = R1             	// [4:6707]  
L_61_40:	// 0x172d
// BB:18 cycle count: 3
//6708  //           else	if(CurrentRound ==1)
//6709  //           	     Player_Activing_Cnt =Select_Pingamerandom(0);
//6710  //           	else
//6711                   Player_Activing_Cnt =Select_Pingamerandom();//SelectNextPingame(Player_Activing_Cnt);

LM878:
	     .stabn 68,0,6711,LM878-_Game
	     call _Select_Pingamerandom	// [0:6711]  Select_Pingamerandom
BB19_PU61:	// 0x172f
// BB:19 cycle count: 5
	     DS = seg(_Player_Activing_Cnt)	// [0:6711]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:6711]  Player_Activing_Cnt
	     DS:[R4] = R1             	// [3:6711]  
L_61_35:	// 0x1733
// BB:20 cycle count: 3
//6712              
//6713          }
//6714              
//6715              
//6716  		    Select_Sound();

LM879:
	     .stabn 68,0,6716,LM879-_Game
	     call _Select_Sound       	// [0:6716]  Select_Sound
BB21_PU61:	// 0x1735
// BB:21 cycle count: 10
//6717  		    
//6718  		   if(Tie ==0) 

LM880:
	     .stabn 68,0,6718,LM880-_Game
	     DS = seg(_Tie)           	// [0:6718]  Tie
	     R4 = (_Tie)              	// [1:6718]  Tie
	     R4 = DS:[R4]             	// [3:6718]  
	     cmp R4, 0                	// [5:6718]  
	     jne L_61_41              	// [6:6718]  
BB22_PU61:	// 0x173b
// BB:22 cycle count: 6
//6719  		     Answerflag =1;

LM881:
	     .stabn 68,0,6719,LM881-_Game
	     R3 = 1                   	// [0:6719]  
	     DS = seg(_Answerflag)    	// [1:6719]  Answerflag
	     R4 = (_Answerflag)       	// [2:6719]  Answerflag
	     DS:[R4] = R3             	// [4:6719]  
L_61_41:	// 0x1740
// BB:23 cycle count: 3
//6720  		     
//6721  			Answer_F();

LM882:
	     .stabn 68,0,6721,LM882-_Game
	     call _Answer_F           	// [0:6721]  Answer_F
BB24_PU61:	// 0x1742
// BB:24 cycle count: 22
//6722              Answerflag =0;

LM883:
	     .stabn 68,0,6722,LM883-_Game
	     R3 = 0                   	// [0:6722]  
	     DS = seg(_Answerflag)    	// [1:6722]  Answerflag
	     R4 = (_Answerflag)       	// [2:6722]  Answerflag
	     DS:[R4] = R3             	// [4:6722]  
//6723              
//6724  		    R_E =0;

LM884:
	     .stabn 68,0,6724,LM884-_Game
	     R3 = 0                   	// [6:6724]  
	     DS = seg(_R_E)           	// [7:6724]  R_E
	     R4 = (_R_E)              	// [8:6724]  R_E
	     DS:[R4] = R3             	// [10:6724]  
//6725  		  
//6726  		   if(Sleepflag) 

LM885:
	     .stabn 68,0,6726,LM885-_Game
	     DS = seg(_Sleepflag)     	// [12:6726]  Sleepflag
	     R4 = (_Sleepflag)        	// [13:6726]  Sleepflag
	     R4 = DS:[R4]             	// [15:6726]  
	     cmp R4, 0                	// [17:6726]  
	     je L_61_42               	// [18:6726]  
BB25_PU61:	// 0x1752
// BB:25 cycle count: 7
//6727  		     return C_Finish ;  

LM886:
	     .stabn 68,0,6727,LM886-_Game
	     R1 = - 1                 	// [0:6727]  
	     SP = SP + 1              	// [1:6727]  
	     pop BP, PC from [SP]     	// [2:6727]  
L_61_42:	// 0x1755
// BB:26 cycle count: 10
//6728  		  
//6729  		  if(End20flag)

LM887:
	     .stabn 68,0,6729,LM887-_Game
	     DS = seg(_End20flag)     	// [0:6729]  End20flag
	     R4 = (_End20flag)        	// [1:6729]  End20flag
	     R4 = DS:[R4]             	// [3:6729]  
	     cmp R4, 0                	// [5:6729]  
	     je L_61_43               	// [6:6729]  
BB27_PU61:	// 0x175b
// BB:27 cycle count: 8
//6730  		  	  return C_End;

LM888:
	     .stabn 68,0,6730,LM888-_Game
	     R1 = - 4077              	// [0:6730]  
	     SP = SP + 1              	// [2:6730]  
	     pop BP, PC from [SP]     	// [3:6730]  
L_61_43:	// 0x175f
// BB:28 cycle count: 3
//6731  		
//6732          temp=Get_Length_Pingame();

LM889:
	     .stabn 68,0,6732,LM889-_Game
	     call _Get_Length_Pingame 	// [0:6732]  Get_Length_Pingame
BB29_PU61:	// 0x1761
// BB:29 cycle count: 11
	     [BP + 0] = R1            	// [0:6732]  temp
//6733          
//6734          if((Registerd_Num>1)&&(temp<=1))

LM890:
	     .stabn 68,0,6734,LM890-_Game
	     DS = seg(_Registerd_Num) 	// [1:6734]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [2:6734]  Registerd_Num
	     R4 = DS:[R4]             	// [4:6734]  
	     cmp R4, 1                	// [6:6734]  
	     jbe L_61_44              	// [7:6734]  
BB30_PU61:	// 0x1768
// BB:30 cycle count: 7
	     R4 = [BP + 0]            	// [0:6734]  temp
	     cmp R4, 1                	// [2:6734]  
	     ja L_61_44               	// [3:6734]  
L_61_45:	// 0x176b
// BB:31 cycle count: 4
//6735          	break;

LM891:
	     .stabn 68,0,6735,LM891-_Game
	     jmp Lt_61_1              	// [0:6735]  
L_61_44:	// 0x176c
// BB:32 cycle count: 10
//6736          	
//6737         if((Registerd_Num==1)&&(temp==0))

LM892:
	     .stabn 68,0,6737,LM892-_Game
	     DS = seg(_Registerd_Num) 	// [0:6737]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6737]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6737]  
	     cmp R4, 1                	// [5:6737]  
	     jne L_61_46              	// [6:6737]  
BB33_PU61:	// 0x1772
// BB:33 cycle count: 7
	     R4 = [BP + 0]            	// [0:6737]  temp
	     cmp R4, 0                	// [2:6737]  
	     jne L_61_46              	// [3:6737]  
L_61_47:	// 0x1775
// BB:34 cycle count: 4
//6738  	   	     break;

LM893:
	     .stabn 68,0,6738,LM893-_Game
	     jmp Lt_61_1              	// [0:6738]  
L_61_46:	// 0x1776
// BB:35 cycle count: 3

LM894:
	     .stabn 68,0,6737,LM894-_Game
	     goto L_61_30             	// [0:6737]  
L_61_31:	// 0x1778
Lt_61_1:	// 0x1778
// BB:36 cycle count: 22
//6743  
//6744  	
//6745  	
//6746  
//6747  	Key_Event =0;

LM895:
	     .stabn 68,0,6747,LM895-_Game
	     R3 = 0                   	// [0:6747]  
	     DS = seg(_Key_Event)     	// [1:6747]  Key_Event
	     R4 = (_Key_Event)        	// [2:6747]  Key_Event
	     DS:[R4] = R3             	// [4:6747]  
//6748  	Key_activeflag = 0;

LM896:
	     .stabn 68,0,6748,LM896-_Game
	     R3 = 0                   	// [6:6748]  
	     DS = seg(_Key_activeflag)	// [7:6748]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:6748]  Key_activeflag
	     DS:[R4] = R3             	// [10:6748]  
//6749  
//6750  
//6751  //   Save_Some_data();
//6752     
//6753     if(Tie ==0)

LM897:
	     .stabn 68,0,6753,LM897-_Game
	     DS = seg(_Tie)           	// [12:6753]  Tie
	     R4 = (_Tie)              	// [13:6753]  Tie
	     R4 = DS:[R4]             	// [15:6753]  
	     cmp R4, 0                	// [17:6753]  
	     jne L_61_49              	// [18:6753]  
BB37_PU61:	// 0x1788
// BB:37 cycle count: 8
//6754   	   return C_End;

LM898:
	     .stabn 68,0,6754,LM898-_Game
	     R1 = - 4077              	// [0:6754]  
	     SP = SP + 1              	// [2:6754]  
	     pop BP, PC from [SP]     	// [3:6754]  
L_61_49:	// 0x178c
// BB:38 cycle count: 27
//6755     else
//6756        Add_SomePlayer_Point(1,Rounds,Pingame);	

LM899:
	     .stabn 68,0,6756,LM899-_Game
	     SP = SP - 5              	// [0:6756]  
	     R3 = 1                   	// [1:6756]  
	     R4 = SP + 1              	// [2:6756]  
	     [R4] = R3                	// [4:6756]  
	     R2 = (_Rounds)           	// [6:6756]  Rounds
	     R3 = seg(_Rounds)        	// [8:6756]  Rounds
	     R4 = SP + 2              	// [9:6756]  
	     [R4++] = R2              	// [11:6756]  
	     [R4] = R3                	// [13:6756]  
	     R2 = (_Pingame)          	// [15:6756]  Pingame
	     R3 = seg(_Pingame)       	// [17:6756]  Pingame
	     R4 = SP + 4              	// [18:6756]  
	     [R4++] = R2              	// [20:6756]  
	     [R4] = R3                	// [22:6756]  
	     call _Add_SomePlayer_Point	// [24:6756]  Add_SomePlayer_Point
BB39_PU61:	// 0x17a1
// BB:39 cycle count: 1
	     SP = SP + 5              	// [0:6756]  
L_61_48:	// 0x17a2
// BB:40 cycle count: 6
	     SP = SP + 1              	// [0:6756]  
	     pop BP, PC from [SP]     	// [1:6756]  
LBE56:
	.endp	
	     .stabn 192,0,0,LBB56-_Game
	     .stabs "temp:4",128,0,0,0
	     .stabn 224,0,0,LBE56-_Game
LME62:
	     .stabf LME62-_Game
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
	// lra_spill_temp_37 = 7
	// lra_spill_temp_38 = 8
	// lgra_spill_temp_39 = 9
//6761  
//6762  
//6763  
//6764  void Answer_F()
//6765  {

LM900:
	     .stabn 68,0,6765,LM900-_Answer_F
BB1_PU62:	// 0x17a4
// BB:1 cycle count: 31
	     push BP to [SP]          	// [0:6765]  
	     SP = SP - 10             	// [2:6765]  
	     BP = SP + 1              	// [3:6765]  
LBB57:
//6766      unsigned int temp =0;

LM901:
	     .stabn 68,0,6766,LM901-_Answer_F
	     R4 = 0                   	// [5:6766]  
	     [BP + 0] = R4            	// [6:6766]  temp
//6767      unsigned int temp1=0;   

LM902:
	     .stabn 68,0,6767,LM902-_Answer_F
	     R4 = 0                   	// [7:6767]  
	     [BP + 1] = R4            	// [8:6767]  temp1
//6768  	unsigned int  round =0;//Get_Num_CategoryMemory();

LM903:
	     .stabn 68,0,6768,LM903-_Answer_F
	     R4 = 0                   	// [9:6768]  
	     [BP + 2] = R4            	// [10:6768]  round
//6769      unsigned int  Currentsound =0;

LM904:
	     .stabn 68,0,6769,LM904-_Answer_F
	     R4 = 0                   	// [11:6769]  
	     [BP + 3] = R4            	// [12:6769]  Currentsound
//6770      unsigned int  timeout_t =0;

LM905:
	     .stabn 68,0,6770,LM905-_Answer_F
	     R4 = 0                   	// [13:6770]  
	     [BP + 4] = R4            	// [14:6770]  timeout_t
//6771      //unsigned int Category= Get_Question_Category(gQuestionIdx);
//6772  
//6773  	//LastCategory_Series[Currentsound] = Category;
//6774       End20flag =0;

LM906:
	     .stabn 68,0,6774,LM906-_Answer_F
	     R3 = 0                   	// [15:6774]  
	     DS = seg(_End20flag)     	// [16:6774]  End20flag
	     R4 = (_End20flag)        	// [17:6774]  End20flag
	     DS:[R4] = R3             	// [19:6774]  
//6775    
//6776  
//6777       if((Restart ==0)&&(CurrentRound==1))//(Cn ==2)&&

LM907:
	     .stabn 68,0,6777,LM907-_Answer_F
	     DS = seg(_Restart)       	// [21:6777]  Restart
	     R4 = (_Restart)          	// [22:6777]  Restart
	     R4 = DS:[R4]             	// [24:6777]  
	     cmp R4, 0                	// [26:6777]  
	     je BB2_PU62              	// [27:6777]  
BB117_PU62:	// 0x17bd
// BB:117 cycle count: 3
	     goto L_62_60             	// [0:0]  
BB2_PU62:	// 0x17bf
// BB:2 cycle count: 10
	     DS = seg(_CurrentRound)  	// [0:6777]  CurrentRound
	     R4 = (_CurrentRound)     	// [1:6777]  CurrentRound
	     R4 = DS:[R4]             	// [3:6777]  
	     cmp R4, 1                	// [5:6777]  
	     jne L_62_60              	// [6:6777]  
L_62_61:	// 0x17c5
// BB:3 cycle count: 22
//6778       {
//6779       	Key_activeflag =Only_Play_KeyEnable;

LM908:
	     .stabn 68,0,6779,LM908-_Answer_F
	     R3 = 7                   	// [0:6779]  
	     DS = seg(_Key_activeflag)	// [1:6779]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [2:6779]  Key_activeflag
	     DS:[R4] = R3             	// [4:6779]  
//6780       	Key_Event =0;  

LM909:
	     .stabn 68,0,6780,LM909-_Answer_F
	     R3 = 0                   	// [6:6780]  
	     DS = seg(_Key_Event)     	// [7:6780]  Key_Event
	     R4 = (_Key_Event)        	// [8:6780]  Key_Event
	     DS:[R4] = R3             	// [10:6780]  
//6781       	//delay_time(8);
//6782       	
//6783       	if(Cn ==2)

LM910:
	     .stabn 68,0,6783,LM910-_Answer_F
	     DS = seg(_Cn)            	// [12:6783]  Cn
	     R4 = (_Cn)               	// [13:6783]  Cn
	     R4 = DS:[R4]             	// [15:6783]  
	     cmp R4, 2                	// [17:6783]  
	     jne L_62_63              	// [18:6783]  
BB4_PU62:	// 0x17d5
// BB:4 cycle count: 10
//6784       	{
//6785       	  	 if(Registerd_Num==1)	

LM911:
	     .stabn 68,0,6785,LM911-_Answer_F
	     DS = seg(_Registerd_Num) 	// [0:6785]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6785]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6785]  
	     cmp R4, 1                	// [5:6785]  
	     jne L_62_65              	// [6:6785]  
BB5_PU62:	// 0x17db
// BB:5 cycle count: 9
//6786  		 	PlayA1800_Elements(A_VLMMREN_Rule_02b);

LM912:
	     .stabn 68,0,6786,LM912-_Answer_F
	     SP = SP - 1              	// [0:6786]  
	     R3 = 51                  	// [1:6786]  
	     R4 = SP + 1              	// [2:6786]  
	     [R4] = R3                	// [4:6786]  
	     call _PlayA1800_Elements 	// [6:6786]  PlayA1800_Elements
BB6_PU62:	// 0x17e2
// BB:6 cycle count: 5
	     SP = SP + 1              	// [0:6786]  
	     jmp L_62_64              	// [1:6786]  
L_62_65:	// 0x17e4
// BB:7 cycle count: 9
//6787  		  else
//6788  		 	 PlayA1800_Elements(A_VLMMREN_Rule_02);	

LM913:
	     .stabn 68,0,6788,LM913-_Answer_F
	     SP = SP - 1              	// [0:6788]  
	     R3 = 50                  	// [1:6788]  
	     R4 = SP + 1              	// [2:6788]  
	     [R4] = R3                	// [4:6788]  
	     call _PlayA1800_Elements 	// [6:6788]  PlayA1800_Elements
BB8_PU62:	// 0x17eb
// BB:8 cycle count: 1
	     SP = SP + 1              	// [0:6788]  
L_62_64:	// 0x17ec
// BB:9 cycle count: 4

LM914:
	     .stabn 68,0,6785,LM914-_Answer_F
	     jmp L_62_62              	// [0:6785]  
L_62_63:	// 0x17ed
// BB:10 cycle count: 10
//6789    		
//6790       	}
//6791          else if((Cn ==3)&&(Registerd_Num>1))

LM915:
	     .stabn 68,0,6791,LM915-_Answer_F
	     DS = seg(_Cn)            	// [0:6791]  Cn
	     R4 = (_Cn)               	// [1:6791]  Cn
	     R4 = DS:[R4]             	// [3:6791]  
	     cmp R4, 3                	// [5:6791]  
	     jne L_62_66              	// [6:6791]  
BB11_PU62:	// 0x17f3
// BB:11 cycle count: 10
	     DS = seg(_Registerd_Num) 	// [0:6791]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6791]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6791]  
	     cmp R4, 1                	// [5:6791]  
	     jbe L_62_66              	// [6:6791]  
L_62_67:	// 0x17f9
// BB:12 cycle count: 10
//6792          {
//6793          	 PlayA1800_Elements(A_VLMMREN_Rule_12);

LM916:
	     .stabn 68,0,6793,LM916-_Answer_F
	     SP = SP - 1              	// [0:6793]  
	     R3 = 64                  	// [1:6793]  
	     R4 = SP + 1              	// [3:6793]  
	     [R4] = R3                	// [5:6793]  
	     call _PlayA1800_Elements 	// [7:6793]  PlayA1800_Elements
BB13_PU62:	// 0x1801
// BB:13 cycle count: 1
	     SP = SP + 1              	// [0:6793]  
L_62_66:	// 0x1802
L_62_62:	// 0x1802
L_62_60:	// 0x1802
// BB:14 cycle count: 24
//6795          }  	
//6796       	
//6797  
//6798       }
//6799             Key_activeflag =0;

LM917:
	     .stabn 68,0,6799,LM917-_Answer_F
	     R3 = 0                   	// [0:6799]  
	     DS = seg(_Key_activeflag)	// [1:6799]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [2:6799]  Key_activeflag
	     DS:[R4] = R3             	// [4:6799]  
//6800             Key_Event=0;

LM918:
	     .stabn 68,0,6800,LM918-_Answer_F
	     R3 = 0                   	// [6:6800]  
	     DS = seg(_Key_Event)     	// [7:6800]  Key_Event
	     R4 = (_Key_Event)        	// [8:6800]  Key_Event
	     DS:[R4] = R3             	// [10:6800]  
//6801             PlayQuestionflag =1;

LM919:
	     .stabn 68,0,6801,LM919-_Answer_F
	     R3 = 1                   	// [12:6801]  
	     DS = seg(_PlayQuestionflag)	// [13:6801]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [14:6801]  PlayQuestionflag
	     DS:[R4] = R3             	// [16:6801]  
//6802             TwoKeyflag = Playbutton;

LM920:
	     .stabn 68,0,6802,LM920-_Answer_F
	     R3 = 1                   	// [18:6802]  
	     DS = seg(_TwoKeyflag)    	// [19:6802]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [20:6802]  TwoKeyflag
	     DS:[R4] = R3             	// [22:6802]  
L_62_68:	// 0x1816
// BB:15 cycle count: 15
//6803             
//6804            
//6805             do
//6806             {
//6807             	   PauseFlag =0;

LM921:
	     .stabn 68,0,6807,LM921-_Answer_F
	     R3 = 0                   	// [0:6807]  
	     DS = seg(_PauseFlag)     	// [1:6807]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:6807]  PauseFlag
	     DS:[R4] = R3             	// [4:6807]  
//6808             	  
//6809             	   delay_time(8);

LM922:
	     .stabn 68,0,6809,LM922-_Answer_F
	     SP = SP - 1              	// [6:6809]  
	     R3 = 8                   	// [7:6809]  
	     R4 = SP + 1              	// [8:6809]  
	     [R4] = R3                	// [10:6809]  
	     call _delay_time         	// [12:6809]  delay_time
BB16_PU62:	// 0x1822
// BB:16 cycle count: 4
	     SP = SP + 1              	// [0:6809]  
//6810                 Ask_Question();//PlayA1800_Elements(Get_Question_Sound(gQuestionIdx));

LM923:
	     .stabn 68,0,6810,LM923-_Answer_F
	     call _Ask_Question       	// [1:6810]  Ask_Question
BB17_PU62:	// 0x1825
// BB:17 cycle count: 10
//6811                
//6812              if(Registerd_Num>1)	

LM924:
	     .stabn 68,0,6812,LM924-_Answer_F
	     DS = seg(_Registerd_Num) 	// [0:6812]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6812]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6812]  
	     cmp R4, 1                	// [5:6812]  
	     jbe L_62_69              	// [6:6812]  
BB18_PU62:	// 0x182b
// BB:18 cycle count: 19
//6813                 Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);

LM925:
	     .stabn 68,0,6813,LM925-_Answer_F
	     SP = SP - 2              	// [0:6813]  
	     DS = seg(_Player_Activing_Cnt)	// [1:6813]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [2:6813]  Player_Activing_Cnt
	     R3 = DS:[R4]             	// [4:6813]  
	     R4 = SP + 1              	// [6:6813]  
	     [R4] = R3                	// [8:6813]  
	     R3 = 6000                	// [10:6813]  
	     R4 = SP + 2              	// [12:6813]  
	     [R4] = R3                	// [14:6813]  
	     call _Play_Seq           	// [16:6813]  Play_Seq
BB19_PU62:	// 0x183a
// BB:19 cycle count: 1
	     SP = SP + 2              	// [0:6813]  
L_62_69:	// 0x183b
Lt_62_1:	// 0x183b
// BB:20 cycle count: 10
//6814                //PlayA1800_Elements(A_VLMMREN_Player_01+Player_Activing_Cnt);
//6815             }while(PauseFlag); 

LM926:
	     .stabn 68,0,6815,LM926-_Answer_F
	     DS = seg(_PauseFlag)     	// [0:6815]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6815]  PauseFlag
	     R4 = DS:[R4]             	// [3:6815]  
	     cmp R4, 0                	// [5:6815]  
	     jne L_62_68              	// [6:6815]  
BB21_PU62:	// 0x1841
// BB:21 cycle count: 15
//6816             
//6817             PlayQuestionflag =0;

LM927:
	     .stabn 68,0,6817,LM927-_Answer_F
	     R3 = 0                   	// [0:6817]  
	     DS = seg(_PlayQuestionflag)	// [1:6817]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [2:6817]  PlayQuestionflag
	     DS:[R4] = R3             	// [4:6817]  
//6818  		   TwoKeyflag =0;

LM928:
	     .stabn 68,0,6818,LM928-_Answer_F
	     R3 = 0                   	// [6:6818]  
	     DS = seg(_TwoKeyflag)    	// [7:6818]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [8:6818]  TwoKeyflag
	     DS:[R4] = R3             	// [10:6818]  
//6819  
//6820       
//6821         round =Get_Num_CategoryMemory();

LM929:
	     .stabn 68,0,6821,LM929-_Answer_F
	     call _Get_Num_CategoryMemory	// [12:6821]  Get_Num_CategoryMemory
BB22_PU62:	// 0x184d
// BB:22 cycle count: 11
	     [BP + 2] = R1            	// [0:6821]  round
//6822         
//6823        if(Cn<=5)  

LM930:
	     .stabn 68,0,6823,LM930-_Answer_F
	     DS = seg(_Cn)            	// [1:6823]  Cn
	     R4 = (_Cn)               	// [2:6823]  Cn
	     R4 = DS:[R4]             	// [4:6823]  
	     cmp R4, 5                	// [6:6823]  
	     ja L_62_71               	// [7:6823]  
BB23_PU62:	// 0x1854
// BB:23 cycle count: 7
//6824         timeout_t =10*16;

LM931:
	     .stabn 68,0,6824,LM931-_Answer_F
	     R4 = 160                 	// [0:6824]  
	     [BP + 4] = R4            	// [2:6824]  timeout_t
	     jmp L_62_70              	// [3:6824]  
L_62_71:	// 0x1858
// BB:24 cycle count: 8
//6825        else
//6826        {
//6827        	 timeout_t=2*Cn*16;

LM932:
	     .stabn 68,0,6827,LM932-_Answer_F
	     DS = seg(_Cn)            	// [0:6827]  Cn
	     R4 = (_Cn)               	// [1:6827]  Cn
	     R4 = DS:[R4]             	// [3:6827]  
	     R4 = R4 lsl 4            	// [5:6827]  
	     R4 = R4 lsl 1            	// [6:6827]  
	     [BP + 4] = R4            	// [7:6827]  timeout_t
L_62_70:	// 0x185f
// BB:25 cycle count: 6
//6828        	
//6829        }
//6830        Key_Event=0;

LM933:
	     .stabn 68,0,6830,LM933-_Answer_F
	     R3 = 0                   	// [0:6830]  
	     DS = seg(_Key_Event)     	// [1:6830]  Key_Event
	     R4 = (_Key_Event)        	// [2:6830]  Key_Event
	     DS:[R4] = R3             	// [4:6830]  
L_62_72:	// 0x1864
// BB:26 cycle count: 10
//6831       while(1)
//6832       	{
//6833   	
//6834   	
//6835   	       if(Sleepflag) 

LM934:
	     .stabn 68,0,6835,LM934-_Answer_F
	     DS = seg(_Sleepflag)     	// [0:6835]  Sleepflag
	     R4 = (_Sleepflag)        	// [1:6835]  Sleepflag
	     R4 = DS:[R4]             	// [3:6835]  
	     cmp R4, 0                	// [5:6835]  
	     je L_62_74               	// [6:6835]  
BB27_PU62:	// 0x186a
// BB:27 cycle count: 6
//6836  		     return C_Finish ;  

LM935:
	     .stabn 68,0,6836,LM935-_Answer_F
	     SP = SP + 10             	// [0:6836]  
	     pop BP, PC from [SP]     	// [1:6836]  
L_62_74:	// 0x186c
// BB:28 cycle count: 29
//6837   	
//6838       	   	
//6839       	   Key_activeflag =ALL_TouchEnable;	

LM936:
	     .stabn 68,0,6839,LM936-_Answer_F
	     R3 = 240                 	// [0:6839]  
	     DS = seg(_Key_activeflag)	// [2:6839]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [3:6839]  Key_activeflag
	     DS:[R4] = R3             	// [5:6839]  
//6840       	   //Key_Event=0;
//6841  		   TwoKeyflag = Playbutton;

LM937:
	     .stabn 68,0,6841,LM937-_Answer_F
	     R3 = 1                   	// [7:6841]  
	     DS = seg(_TwoKeyflag)    	// [8:6841]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [9:6841]  TwoKeyflag
	     DS:[R4] = R3             	// [11:6841]  
//6842       	   PlayQuestionflag =1;

LM938:
	     .stabn 68,0,6842,LM938-_Answer_F
	     R3 = 1                   	// [13:6842]  
	     DS = seg(_PlayQuestionflag)	// [14:6842]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [15:6842]  PlayQuestionflag
	     DS:[R4] = R3             	// [17:6842]  
//6843       	   
//6844       	   PlayA1800_ElementsInit(SFX_Timer);

LM939:
	     .stabn 68,0,6844,LM939-_Answer_F
	     SP = SP - 1              	// [19:6844]  
	     R3 = 128                 	// [20:6844]  
	     R4 = SP + 1              	// [22:6844]  
	     [R4] = R3                	// [24:6844]  
	     call _PlayA1800_ElementsInit	// [26:6844]  PlayA1800_ElementsInit
BB29_PU62:	// 0x1884
// BB:29 cycle count: 15
//6845       	   
//6846       	   Timeout_cnt_En =1;

LM940:
	     .stabn 68,0,6846,LM940-_Answer_F
	     R3 = 1                   	// [0:6846]  
	     DS = seg(_Timeout_cnt_En)	// [1:6846]  Timeout_cnt_En
	     R4 = (_Timeout_cnt_En)   	// [2:6846]  Timeout_cnt_En
	     DS:[R4] = R3             	// [4:6846]  
//6847  	       temp = delay_time(timeout_t);

LM941:
	     .stabn 68,0,6847,LM941-_Answer_F
	     R3 = [BP + 4]            	// [6:6847]  timeout_t
	     R4 = SP + 1              	// [8:6847]  
	     [R4] = R3                	// [10:6847]  
	     call _delay_time         	// [12:6847]  delay_time
BB30_PU62:	// 0x188f
// BB:30 cycle count: 11
	     SP = SP + 1              	// [0:6847]  
	     [BP + 0] = R1            	// [1:6847]  temp
//6848  	       Timeout_cnt_En =0;

LM942:
	     .stabn 68,0,6848,LM942-_Answer_F
	     R3 = 0                   	// [2:6848]  
	     DS = seg(_Timeout_cnt_En)	// [3:6848]  Timeout_cnt_En
	     R4 = (_Timeout_cnt_En)   	// [4:6848]  Timeout_cnt_En
	     DS:[R4] = R3             	// [6:6848]  
//6849  	       SACM_A1800_Stop();

LM943:
	     .stabn 68,0,6849,LM943-_Answer_F
	     call _SACM_A1800_Stop    	// [8:6849]  SACM_A1800_Stop
BB31_PU62:	// 0x1898
// BB:31 cycle count: 28
//6850  	       A1800_Flag = 0;

LM944:
	     .stabn 68,0,6850,LM944-_Answer_F
	     R3 = 0                   	// [0:6850]  
	     DS = seg(_A1800_Flag)    	// [1:6850]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [2:6850]  A1800_Flag
	     DS:[R4] = R3             	// [4:6850]  
//6851  	       
//6852  	       PlayQuestionflag =0;

LM945:
	     .stabn 68,0,6852,LM945-_Answer_F
	     R3 = 0                   	// [6:6852]  
	     DS = seg(_PlayQuestionflag)	// [7:6852]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [8:6852]  PlayQuestionflag
	     DS:[R4] = R3             	// [10:6852]  
//6853  	       TwoKeyflag=0;

LM946:
	     .stabn 68,0,6853,LM946-_Answer_F
	     R3 = 0                   	// [12:6853]  
	     DS = seg(_TwoKeyflag)    	// [13:6853]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [14:6853]  TwoKeyflag
	     DS:[R4] = R3             	// [16:6853]  
//6854  	       
//6855  	            	   	
//6856       	 	if(Sleepflag) 

LM947:
	     .stabn 68,0,6856,LM947-_Answer_F
	     DS = seg(_Sleepflag)     	// [18:6856]  Sleepflag
	     R4 = (_Sleepflag)        	// [19:6856]  Sleepflag
	     R4 = DS:[R4]             	// [21:6856]  
	     cmp R4, 0                	// [23:6856]  
	     je L_62_75               	// [24:6856]  
BB32_PU62:	// 0x18ad
// BB:32 cycle count: 6
//6857  		      return C_Finish ;   

LM948:
	     .stabn 68,0,6857,LM948-_Answer_F
	     SP = SP + 10             	// [0:6857]  
	     pop BP, PC from [SP]     	// [1:6857]  
L_62_75:	// 0x18af
// BB:33 cycle count: 10
//6858  	       
//6859  	       
//6860  	       if(PauseFlag)

LM949:
	     .stabn 68,0,6860,LM949-_Answer_F
	     DS = seg(_PauseFlag)     	// [0:6860]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6860]  PauseFlag
	     R4 = DS:[R4]             	// [3:6860]  
	     cmp R4, 0                	// [5:6860]  
	     jne BB34_PU62            	// [6:6860]  
BB116_PU62:	// 0x18b5
// BB:116 cycle count: 3
	     goto L_62_77             	// [0:0]  
BB34_PU62:	// 0x18b7
// BB:34 cycle count: 24
//6861  	       {
//6862  	       	   
//6863  			       Key_activeflag =0;

LM950:
	     .stabn 68,0,6863,LM950-_Answer_F
	     R3 = 0                   	// [0:6863]  
	     DS = seg(_Key_activeflag)	// [1:6863]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [2:6863]  Key_activeflag
	     DS:[R4] = R3             	// [4:6863]  
//6864  		           Key_Event=0;

LM951:
	     .stabn 68,0,6864,LM951-_Answer_F
	     R3 = 0                   	// [6:6864]  
	     DS = seg(_Key_Event)     	// [7:6864]  Key_Event
	     R4 = (_Key_Event)        	// [8:6864]  Key_Event
	     DS:[R4] = R3             	// [10:6864]  
//6865  		           PlayQuestionflag =1;

LM952:
	     .stabn 68,0,6865,LM952-_Answer_F
	     R3 = 1                   	// [12:6865]  
	     DS = seg(_PlayQuestionflag)	// [13:6865]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [14:6865]  PlayQuestionflag
	     DS:[R4] = R3             	// [16:6865]  
//6866  		           TwoKeyflag = Playbutton;

LM953:
	     .stabn 68,0,6866,LM953-_Answer_F
	     R3 = 1                   	// [18:6866]  
	     DS = seg(_TwoKeyflag)    	// [19:6866]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [20:6866]  TwoKeyflag
	     DS:[R4] = R3             	// [22:6866]  
L_62_78:	// 0x18cb
// BB:35 cycle count: 15
//6867  		           do
//6868  		           {
//6869  		           	  PauseFlag =0;

LM954:
	     .stabn 68,0,6869,LM954-_Answer_F
	     R3 = 0                   	// [0:6869]  
	     DS = seg(_PauseFlag)     	// [1:6869]  PauseFlag
	     R4 = (_PauseFlag)        	// [2:6869]  PauseFlag
	     DS:[R4] = R3             	// [4:6869]  
//6870  		           	  delay_time(8);

LM955:
	     .stabn 68,0,6870,LM955-_Answer_F
	     SP = SP - 1              	// [6:6870]  
	     R3 = 8                   	// [7:6870]  
	     R4 = SP + 1              	// [8:6870]  
	     [R4] = R3                	// [10:6870]  
	     call _delay_time         	// [12:6870]  delay_time
BB36_PU62:	// 0x18d7
// BB:36 cycle count: 11
	     SP = SP + 1              	// [0:6870]  
//6871  		             
//6872  		         
//6873  		          if(Registerd_Num>1)	

LM956:
	     .stabn 68,0,6873,LM956-_Answer_F
	     DS = seg(_Registerd_Num) 	// [1:6873]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [2:6873]  Registerd_Num
	     R4 = DS:[R4]             	// [4:6873]  
	     cmp R4, 1                	// [6:6873]  
	     jbe L_62_79              	// [7:6873]  
BB37_PU62:	// 0x18de
// BB:37 cycle count: 19
//6874  		              Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);

LM957:
	     .stabn 68,0,6874,LM957-_Answer_F
	     SP = SP - 2              	// [0:6874]  
	     DS = seg(_Player_Activing_Cnt)	// [1:6874]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [2:6874]  Player_Activing_Cnt
	     R3 = DS:[R4]             	// [4:6874]  
	     R4 = SP + 1              	// [6:6874]  
	     [R4] = R3                	// [8:6874]  
	     R3 = 6000                	// [10:6874]  
	     R4 = SP + 2              	// [12:6874]  
	     [R4] = R3                	// [14:6874]  
	     call _Play_Seq           	// [16:6874]  Play_Seq
BB38_PU62:	// 0x18ed
// BB:38 cycle count: 1
	     SP = SP + 2              	// [0:6874]  
L_62_79:	// 0x18ee
// BB:39 cycle count: 3
//6875  		              
//6876  		              Ask_Question();//PlayA1800_Elements(Get_Question_Sound(gQuestionIdx)); 

LM958:
	     .stabn 68,0,6876,LM958-_Answer_F
	     call _Ask_Question       	// [0:6876]  Ask_Question
Lt_62_2:	// 0x18f0
// BB:40 cycle count: 10
//6877  		              
//6878  		           }while(PauseFlag); 

LM959:
	     .stabn 68,0,6878,LM959-_Answer_F
	     DS = seg(_PauseFlag)     	// [0:6878]  PauseFlag
	     R4 = (_PauseFlag)        	// [1:6878]  PauseFlag
	     R4 = DS:[R4]             	// [3:6878]  
	     cmp R4, 0                	// [5:6878]  
	     jne L_62_78              	// [6:6878]  
BB41_PU62:	// 0x18f6
// BB:41 cycle count: 15
//6879  		           
//6880  		           PlayQuestionflag =0;

LM960:
	     .stabn 68,0,6880,LM960-_Answer_F
	     R3 = 0                   	// [0:6880]  
	     DS = seg(_PlayQuestionflag)	// [1:6880]  PlayQuestionflag
	     R4 = (_PlayQuestionflag) 	// [2:6880]  PlayQuestionflag
	     DS:[R4] = R3             	// [4:6880]  
//6881  		           TwoKeyflag=0;

LM961:
	     .stabn 68,0,6881,LM961-_Answer_F
	     R3 = 0                   	// [6:6881]  
	     DS = seg(_TwoKeyflag)    	// [7:6881]  TwoKeyflag
	     R4 = (_TwoKeyflag)       	// [8:6881]  TwoKeyflag
	     DS:[R4] = R3             	// [10:6881]  
	     goto L_62_76             	// [12:6881]  
L_62_77:	// 0x1902
// BB:42 cycle count: 21
//6882  	       } 
//6883  	       else
//6884  	         {     
//6885  		
//6886  				   if(Key_Event == LastCategory_Series[Currentsound])

LM962:
	     .stabn 68,0,6886,LM962-_Answer_F
	     R4 = [BP + 3]            	// [0:6886]  Currentsound
	     R3 = 0                   	// [2:6886]  
	     R1 = (_LastCategory_Series)	// [3:6886]  LastCategory_Series
	     R2 = seg(_LastCategory_Series)	// [5:6886]  LastCategory_Series
	     R4 = R4 + R1             	// [6:6886]  
	     R3 = R3 + R2, Carry      	// [7:6886]  
	     DS = R3                  	// [8:6886]  
	     R3 = DS:[R4]             	// [9:6886]  
	     DS = seg(_Key_Event)     	// [11:6886]  Key_Event
	     R4 = (_Key_Event)        	// [12:6886]  Key_Event
	     R4 = DS:[R4]             	// [14:6886]  
	     cmp R3, R4               	// [16:6886]  
	     je BB43_PU62             	// [17:6886]  
BB115_PU62:	// 0x1911
// BB:115 cycle count: 3
	     goto L_62_81             	// [0:0]  
BB43_PU62:	// 0x1913
// BB:43 cycle count: 14
//6888  
//6889                        #ifdef C_productTouch
//6890                            Led_ON_Some(Key_Event);
//6891                        #else
//6892  						  Led_ON_Some(Key_Event>>4);

LM963:
	     .stabn 68,0,6892,LM963-_Answer_F
	     SP = SP - 1              	// [0:6892]  
	     DS = seg(_Key_Event)     	// [1:6892]  Key_Event
	     R4 = (_Key_Event)        	// [2:6892]  Key_Event
	     R4 = DS:[R4]             	// [4:6892]  
	     R3 = R4 lsr 4            	// [6:6892]  
	     R4 = SP + 1              	// [7:6892]  
	     [R4] = R3                	// [9:6892]  
	     call _Led_ON_Some        	// [11:6892]  Led_ON_Some
BB44_PU62:	// 0x191e
// BB:44 cycle count: 14
	     SP = SP + 1              	// [0:6892]  
//6893  					  #endif	
//6894  					
//6895  					   
//6896  		                Currentsound++;

LM964:
	     .stabn 68,0,6896,LM964-_Answer_F
	     R4 = [BP + 3]            	// [1:6896]  Currentsound
	     R4 = R4 + 1              	// [3:6896]  
	     [BP + 3] = R4            	// [4:6896]  Currentsound
//6897  		                
//6898  		               	if(Currentsound >= round)

LM965:
	     .stabn 68,0,6898,LM965-_Answer_F
	     R3 = [BP + 2]            	// [5:6898]  round
	     R4 = [BP + 3]            	// [7:6898]  Currentsound
	     cmp R3, R4               	// [9:6898]  
	     ja L_62_82               	// [10:6898]  
BB45_PU62:	// 0x1926
// BB:45 cycle count: 6
//6899  		               	    Key_activeflag =0;	 

LM966:
	     .stabn 68,0,6899,LM966-_Answer_F
	     R3 = 0                   	// [0:6899]  
	     DS = seg(_Key_activeflag)	// [1:6899]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [2:6899]  Key_activeflag
	     DS:[R4] = R3             	// [4:6899]  
L_62_82:	// 0x192b
// BB:46 cycle count: 16
//6900  		               	
//6901  						Key_Event=0; 

LM967:
	     .stabn 68,0,6901,LM967-_Answer_F
	     R3 = 0                   	// [0:6901]  
	     DS = seg(_Key_Event)     	// [1:6901]  Key_Event
	     R4 = (_Key_Event)        	// [2:6901]  Key_Event
	     DS:[R4] = R3             	// [4:6901]  
//6902  						
//6903  						PlayA1800_Elements(SFX_Buzzer);

LM968:
	     .stabn 68,0,6903,LM968-_Answer_F
	     SP = SP - 1              	// [6:6903]  
	     R3 = 121                 	// [7:6903]  
	     R4 = SP + 1              	// [9:6903]  
	     [R4] = R3                	// [11:6903]  
	     call _PlayA1800_Elements 	// [13:6903]  PlayA1800_Elements
BB47_PU62:	// 0x1938
// BB:47 cycle count: 8
//6904  						delay_time(3);

LM969:
	     .stabn 68,0,6904,LM969-_Answer_F
	     R3 = 3                   	// [0:6904]  
	     R4 = SP + 1              	// [1:6904]  
	     [R4] = R3                	// [3:6904]  
	     call _delay_time         	// [5:6904]  delay_time
BB48_PU62:	// 0x193e
// BB:48 cycle count: 4
	     SP = SP + 1              	// [0:6904]  
//6905  						Light_all_off();

LM970:
	     .stabn 68,0,6905,LM970-_Answer_F
	     call _Light_all_off      	// [1:6905]  Light_all_off
BB49_PU62:	// 0x1941
// BB:49 cycle count: 9
//6906  		                
//6907  	
//6908  						if(Currentsound >= round)

LM971:
	     .stabn 68,0,6908,LM971-_Answer_F
	     R3 = [BP + 2]            	// [0:6908]  round
	     R4 = [BP + 3]            	// [2:6908]  Currentsound
	     cmp R3, R4               	// [4:6908]  
	     ja L_62_83               	// [5:6908]  
BB50_PU62:	// 0x1945
// BB:50 cycle count: 10
//6909  							{				   
//6910  
//6911  		                       
//6912  							   if(Cn<=5)//(((Cn-1)%2)== 0)

LM972:
	     .stabn 68,0,6912,LM972-_Answer_F
	     DS = seg(_Cn)            	// [0:6912]  Cn
	     R4 = (_Cn)               	// [1:6912]  Cn
	     R4 = DS:[R4]             	// [3:6912]  
	     cmp R4, 5                	// [5:6912]  
	     ja L_62_85               	// [6:6912]  
BB51_PU62:	// 0x194b
// BB:51 cycle count: 9
//6913  							  	   PlayA1800_Other(Serie_Correct1);//PlayA1800_Elements(VLMMREN_Congrate_02);

LM973:
	     .stabn 68,0,6913,LM973-_Answer_F
	     SP = SP - 1              	// [0:6913]  
	     R3 = 0                   	// [1:6913]  
	     R4 = SP + 1              	// [2:6913]  
	     [R4] = R3                	// [4:6913]  
	     call _PlayA1800_Other    	// [6:6913]  PlayA1800_Other
BB52_PU62:	// 0x1952
// BB:52 cycle count: 5
	     SP = SP + 1              	// [0:6913]  
	     jmp L_62_84              	// [1:6913]  
L_62_85:	// 0x1954
// BB:53 cycle count: 10
//6914  							  	else if(Cn<=10)

LM974:
	     .stabn 68,0,6914,LM974-_Answer_F
	     DS = seg(_Cn)            	// [0:6914]  Cn
	     R4 = (_Cn)               	// [1:6914]  Cn
	     R4 = DS:[R4]             	// [3:6914]  
	     cmp R4, 10               	// [5:6914]  
	     ja L_62_87               	// [6:6914]  
BB54_PU62:	// 0x195a
// BB:54 cycle count: 9
//6915  		                           PlayA1800_Other(Serie_Correct2);

LM975:
	     .stabn 68,0,6915,LM975-_Answer_F
	     SP = SP - 1              	// [0:6915]  
	     R3 = 1                   	// [1:6915]  
	     R4 = SP + 1              	// [2:6915]  
	     [R4] = R3                	// [4:6915]  
	     call _PlayA1800_Other    	// [6:6915]  PlayA1800_Other
BB55_PU62:	// 0x1961
// BB:55 cycle count: 5
	     SP = SP + 1              	// [0:6915]  
	     jmp L_62_86              	// [1:6915]  
L_62_87:	// 0x1963
// BB:56 cycle count: 9
//6916  							  	else
//6917  							  	    PlayA1800_Other(Serie_Correct3);

LM976:
	     .stabn 68,0,6917,LM976-_Answer_F
	     SP = SP - 1              	// [0:6917]  
	     R3 = 2                   	// [1:6917]  
	     R4 = SP + 1              	// [2:6917]  
	     [R4] = R3                	// [4:6917]  
	     call _PlayA1800_Other    	// [6:6917]  PlayA1800_Other
BB57_PU62:	// 0x196a
// BB:57 cycle count: 1
	     SP = SP + 1              	// [0:6917]  
L_62_86:	// 0x196b
L_62_84:	// 0x196b
// BB:58 cycle count: 9
//6918  		
//6919  							     delay_time(16);

LM977:
	     .stabn 68,0,6919,LM977-_Answer_F
	     SP = SP - 1              	// [0:6919]  
	     R3 = 16                  	// [1:6919]  
	     R4 = SP + 1              	// [2:6919]  
	     [R4] = R3                	// [4:6919]  
	     call _delay_time         	// [6:6919]  delay_time
BB59_PU62:	// 0x1972
// BB:59 cycle count: 4
	     SP = SP + 1              	// [0:6919]  
//6920  							     break;

LM978:
	     .stabn 68,0,6920,LM978-_Answer_F
	     goto Lt_62_3             	// [1:6920]  
L_62_83:	// 0x1975
// BB:60 cycle count: 3

LM979:
	     .stabn 68,0,6908,LM979-_Answer_F
	     goto L_62_80             	// [0:6908]  
L_62_81:	// 0x1977
// BB:61 cycle count: 8
//6922  							}
//6923  	
//6924  		                  
//6925  				  	}
//6926  		           else if((temp == TimeOver)||(Key_Event))

LM980:
	     .stabn 68,0,6926,LM980-_Answer_F
	     R4 = [BP + 0]            	// [0:6926]  temp
	     cmp R4, 61452            	// [2:6926]  
	     je L_62_89               	// [4:6926]  
BB62_PU62:	// 0x197b
// BB:62 cycle count: 10
	     DS = seg(_Key_Event)     	// [0:6926]  Key_Event
	     R4 = (_Key_Event)        	// [1:6926]  Key_Event
	     R4 = DS:[R4]             	// [3:6926]  
	     cmp R4, 0                	// [5:6926]  
	     jne L_62_89              	// [6:6926]  
BB109_PU62:	// 0x1981
// BB:109 cycle count: 3
	     goto L_62_88             	// [0:0]  
L_62_89:	// 0x1983
// BB:63 cycle count: 26
//6927  		           	{     
//6928  		           		  temp1 = Key_Event;

LM981:
	     .stabn 68,0,6928,LM981-_Answer_F
	     DS = seg(_Key_Event)     	// [0:6928]  Key_Event
	     R4 = (_Key_Event)        	// [1:6928]  Key_Event
	     R4 = DS:[R4]             	// [3:6928]  
	     [BP + 1] = R4            	// [5:6928]  temp1
//6929  		           		  Key_Event=0;

LM982:
	     .stabn 68,0,6929,LM982-_Answer_F
	     R3 = 0                   	// [6:6929]  
	     DS = seg(_Key_Event)     	// [7:6929]  Key_Event
	     R4 = (_Key_Event)        	// [8:6929]  Key_Event
	     DS:[R4] = R3             	// [10:6929]  
//6930  		           	      Key_activeflag =0;

LM983:
	     .stabn 68,0,6930,LM983-_Answer_F
	     R3 = 0                   	// [12:6930]  
	     DS = seg(_Key_activeflag)	// [13:6930]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [14:6930]  Key_activeflag
	     DS:[R4] = R3             	// [16:6930]  
//6931  		           	      
//6932  		           	    if(temp == TimeOver)

LM984:
	     .stabn 68,0,6932,LM984-_Answer_F
	     R4 = [BP + 0]            	// [18:6932]  temp
	     cmp R4, 61452            	// [20:6932]  
	     je BB64_PU62             	// [22:6932]  
BB114_PU62:	// 0x1996
// BB:114 cycle count: 3
	     goto L_62_91             	// [0:0]  
BB64_PU62:	// 0x1998
// BB:64 cycle count: 10
//6933  		           	    {
//6934  		           	    	PlayA1800_Elements(SFX_Gong); 

LM985:
	     .stabn 68,0,6934,LM985-_Answer_F
	     SP = SP - 1              	// [0:6934]  
	     R3 = 123                 	// [1:6934]  
	     R4 = SP + 1              	// [3:6934]  
	     [R4] = R3                	// [5:6934]  
	     call _PlayA1800_Elements 	// [7:6934]  PlayA1800_Elements
BB65_PU62:	// 0x19a0
// BB:65 cycle count: 11
	     SP = SP + 1              	// [0:6934]  
//6935  			       	      if(Registerd_Num>1)

LM986:
	     .stabn 68,0,6935,LM986-_Answer_F
	     DS = seg(_Registerd_Num) 	// [1:6935]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [2:6935]  Registerd_Num
	     R4 = DS:[R4]             	// [4:6935]  
	     cmp R4, 1                	// [6:6935]  
	     jbe L_62_93              	// [7:6935]  
BB66_PU62:	// 0x19a7
// BB:66 cycle count: 20
//6936  			       	      {
//6937  				       	      
//6938  				       	      Play_Seq(TooLate_Cnt++%3,C_TooLateTable);

LM987:
	     .stabn 68,0,6938,LM987-_Answer_F
	     DS = seg(_TooLate_Cnt)   	// [0:6938]  TooLate_Cnt
	     R4 = (_TooLate_Cnt)      	// [1:6938]  TooLate_Cnt
	     R3 = DS:[R4]             	// [3:6938]  
	     R4 = R3 + 1              	// [5:6938]  
	     DS = seg(_TooLate_Cnt)   	// [7:6938]  TooLate_Cnt
	     R2 = (_TooLate_Cnt)      	// [8:6938]  TooLate_Cnt
	     DS:[R2] = R4             	// [10:6938]  
	     SP = SP - 2              	// [12:6938]  
	     R4 = 3                   	// [13:6938]  
	     push R4, R3 to [SP]      	// [14:6938]  
	     call __modu1             	// [17:6938]  _modu1
BB67_PU62:	// 0x19b6
// BB:67 cycle count: 14
	     SP = SP + 2              	// [0:0]  
	     R4 = SP + 1              	// [1:0]  
	     [R4] = R1                	// [3:0]  
	     R3 = 12500               	// [5:6938]  
	     R4 = SP + 2              	// [7:6938]  
	     [R4] = R3                	// [9:6938]  
	     call _Play_Seq           	// [11:6938]  Play_Seq
BB68_PU62:	// 0x19c1
// BB:68 cycle count: 5
	     SP = SP + 2              	// [0:6938]  
	     jmp L_62_92              	// [1:6938]  
L_62_93:	// 0x19c3
// BB:69 cycle count: 20
//6939  			       	      }
//6940  			       	     else
//6941  			       	      {
//6942  			       	         Play_Seq(TooLatesolo_Cnt++%3,C_TooLateSoloTable);

LM988:
	     .stabn 68,0,6942,LM988-_Answer_F
	     DS = seg(_TooLatesolo_Cnt)	// [0:6942]  TooLatesolo_Cnt
	     R4 = (_TooLatesolo_Cnt)  	// [1:6942]  TooLatesolo_Cnt
	     R3 = DS:[R4]             	// [3:6942]  
	     R4 = R3 + 1              	// [5:6942]  
	     DS = seg(_TooLatesolo_Cnt)	// [7:6942]  TooLatesolo_Cnt
	     R2 = (_TooLatesolo_Cnt)  	// [8:6942]  TooLatesolo_Cnt
	     DS:[R2] = R4             	// [10:6942]  
	     SP = SP - 2              	// [12:6942]  
	     R4 = 3                   	// [13:6942]  
	     push R4, R3 to [SP]      	// [14:6942]  
	     call __modu1             	// [17:6942]  _modu1
BB70_PU62:	// 0x19d2
// BB:70 cycle count: 14
	     SP = SP + 2              	// [0:0]  
	     R4 = SP + 1              	// [1:0]  
	     [R4] = R1                	// [3:0]  
	     R3 = 13000               	// [5:6942]  
	     R4 = SP + 2              	// [7:6942]  
	     [R4] = R3                	// [9:6942]  
	     call _Play_Seq           	// [11:6942]  Play_Seq
BB71_PU62:	// 0x19dd
// BB:71 cycle count: 1
	     SP = SP + 2              	// [0:6942]  
L_62_92:	// 0x19de
// BB:72 cycle count: 3

LM989:
	     .stabn 68,0,6935,LM989-_Answer_F
	     goto L_62_90             	// [0:6935]  
L_62_91:	// 0x19e0
// BB:73 cycle count: 7
//6943  			       	      } 
//6944  			       	      
//6945  		           	    }
//6946  			       	    else if(temp1)

LM990:
	     .stabn 68,0,6946,LM990-_Answer_F
	     R4 = [BP + 1]            	// [0:6946]  temp1
	     cmp R4, 0                	// [2:6946]  
	     jne BB74_PU62            	// [3:6946]  
BB111_PU62:	// 0x19e3
// BB:111 cycle count: 3
	     goto L_62_94             	// [0:0]  
BB74_PU62:	// 0x19e5
// BB:74 cycle count: 11
//6949  			       	    	
//6950  				       	  #ifdef C_productTouch
//6951  	                          Led_ON_Some(temp1);
//6952  	                      #else
//6953  							  Led_ON_Some(temp1>>4);

LM991:
	     .stabn 68,0,6953,LM991-_Answer_F
	     SP = SP - 1              	// [0:6953]  
	     R4 = [BP + 1]            	// [1:6953]  temp1
	     R3 = R4 lsr 4            	// [3:6953]  
	     R4 = SP + 1              	// [4:6953]  
	     [R4] = R3                	// [6:6953]  
	     call _Led_ON_Some        	// [8:6953]  Led_ON_Some
BB75_PU62:	// 0x19ed
// BB:75 cycle count: 9
//6954  						  #endif
//6955  			       	    	
//6956  			           	      PlayA1800_Elements(SFX_Wrong);  

LM992:
	     .stabn 68,0,6956,LM992-_Answer_F
	     R3 = 132                 	// [0:6956]  
	     R4 = SP + 1              	// [2:6956]  
	     [R4] = R3                	// [4:6956]  
	     call _PlayA1800_Elements 	// [6:6956]  PlayA1800_Elements
BB76_PU62:	// 0x19f4
// BB:76 cycle count: 4
	     SP = SP + 1              	// [0:6956]  
//6957  			           	      //delay_time(4);
//6958  			                  Light_all_off();

LM993:
	     .stabn 68,0,6958,LM993-_Answer_F
	     call _Light_all_off      	// [1:6958]  Light_all_off
BB77_PU62:	// 0x19f7
// BB:77 cycle count: 10
//6959  			                  
//6960  			                  if(Registerd_Num>1)

LM994:
	     .stabn 68,0,6960,LM994-_Answer_F
	     DS = seg(_Registerd_Num) 	// [0:6960]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6960]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6960]  
	     cmp R4, 1                	// [5:6960]  
	     ja BB78_PU62             	// [6:6960]  
BB112_PU62:	// 0x19fd
// BB:112 cycle count: 3
	     goto L_62_95             	// [0:0]  
BB78_PU62:	// 0x19ff
// BB:78 cycle count: 19
//6961  			                  {
//6962  			                      Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);//PlayA1800_Elements(A_VLMMREN_Player_01+Player_Activing_Cnt);

LM995:
	     .stabn 68,0,6962,LM995-_Answer_F
	     SP = SP - 2              	// [0:6962]  
	     DS = seg(_Player_Activing_Cnt)	// [1:6962]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [2:6962]  Player_Activing_Cnt
	     R3 = DS:[R4]             	// [4:6962]  
	     R4 = SP + 1              	// [6:6962]  
	     [R4] = R3                	// [8:6962]  
	     R3 = 6000                	// [10:6962]  
	     R4 = SP + 2              	// [12:6962]  
	     [R4] = R3                	// [14:6962]  
	     call _Play_Seq           	// [16:6962]  Play_Seq
BB79_PU62:	// 0x1a0e
// BB:79 cycle count: 11
	     SP = SP + 2              	// [0:6962]  
//6963  			                    
//6964  			                       if((Cn==1)&&(Registerd_Num ==2))

LM996:
	     .stabn 68,0,6964,LM996-_Answer_F
	     DS = seg(_Cn)            	// [1:6964]  Cn
	     R4 = (_Cn)               	// [2:6964]  Cn
	     R4 = DS:[R4]             	// [4:6964]  
	     cmp R4, 1                	// [6:6964]  
	     je BB80_PU62             	// [7:6964]  
BB113_PU62:	// 0x1a15
// BB:113 cycle count: 3
	     goto L_62_96             	// [0:0]  
BB80_PU62:	// 0x1a17
// BB:80 cycle count: 10
	     DS = seg(_Registerd_Num) 	// [0:6964]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:6964]  Registerd_Num
	     R4 = DS:[R4]             	// [3:6964]  
	     cmp R4, 2                	// [5:6964]  
	     jne BB113_PU62           	// [6:6964]  
L_62_97:	// 0x1a1d
// BB:81 cycle count: 27
//6965  			                       {
//6966  			                       	  
//6967  			                       	  Add_ALL_InactivePlayer_Point(1,Rounds,Pingame);

LM997:
	     .stabn 68,0,6967,LM997-_Answer_F
	     SP = SP - 5              	// [0:6967]  
	     R3 = 1                   	// [1:6967]  
	     R4 = SP + 1              	// [2:6967]  
	     [R4] = R3                	// [4:6967]  
	     R2 = (_Rounds)           	// [6:6967]  Rounds
	     R3 = seg(_Rounds)        	// [8:6967]  Rounds
	     R4 = SP + 2              	// [9:6967]  
	     [R4++] = R2              	// [11:6967]  
	     [R4] = R3                	// [13:6967]  
	     R2 = (_Pingame)          	// [15:6967]  Pingame
	     R3 = seg(_Pingame)       	// [17:6967]  Pingame
	     R4 = SP + 4              	// [18:6967]  
	     [R4++] = R2              	// [20:6967]  
	     [R4] = R3                	// [22:6967]  
	     call _Add_ALL_InactivePlayer_Point	// [24:6967]  Add_ALL_InactivePlayer_Point
BB82_PU62:	// 0x1a32
// BB:82 cycle count: 9
	     SP = SP + 4              	// [0:6967]  
//6968  			                       	
//6969  			                       	  PlayA1800_Elements(A_VLMMREN_2Outa);

LM998:
	     .stabn 68,0,6969,LM998-_Answer_F
	     R3 = 3                   	// [1:6969]  
	     R4 = SP + 1              	// [2:6969]  
	     [R4] = R3                	// [4:6969]  
	     call _PlayA1800_Elements 	// [6:6969]  PlayA1800_Elements
BB83_PU62:	// 0x1a39
// BB:83 cycle count: 8
//6970  			                       	  PlayA1800_Elements(A_VLMMREN_Out); 

LM999:
	     .stabn 68,0,6970,LM999-_Answer_F
	     R3 = 35                  	// [0:6970]  
	     R4 = SP + 1              	// [1:6970]  
	     [R4] = R3                	// [3:6970]  
	     call _PlayA1800_Elements 	// [5:6970]  PlayA1800_Elements
BB84_PU62:	// 0x1a3f
// BB:84 cycle count: 43
	     SP = SP - 3              	// [0:6970]  
//6971  			                       	  Play_Serieplayer16bit(0,Registered_Play_Status&(~BitMap[Player_Activing_Cnt]),C_Play_StartAddr);

LM1000:
	     .stabn 68,0,6971,LM1000-_Answer_F
	     R3 = 0                   	// [1:6971]  
	     R4 = SP + 1              	// [2:6971]  
	     [R4] = R3                	// [4:6971]  
	     DS = seg(_Player_Activing_Cnt)	// [6:6971]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [7:6971]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [9:6971]  
	     R3 = 0                   	// [11:6971]  
	     R1 = (_BitMap)           	// [12:6971]  BitMap
	     R2 = seg(_BitMap)        	// [14:6971]  BitMap
	     R4 = R4 + R1             	// [15:6971]  
	     R3 = R3 + R2, Carry      	// [16:6971]  
	     DS = R3                  	// [17:6971]  
	     R4 = DS:[R4]             	// [18:6971]  
	     R4 = R4 ^ 65535          	// [20:6971]  
	     DS = seg(_Registered_Play_Status)	// [22:6971]  Registered_Play_Status
	     R3 = (_Registered_Play_Status)	// [23:6971]  Registered_Play_Status
	     R4 = R4 & DS:[R3]        	// [25:6971]  
	     R3 = SP + 2              	// [27:6971]  
	     [R3] = R4                	// [29:6971]  
	     R2 = 6000                	// [31:6971]  
	     R3 = 0                   	// [33:6971]  
	     R4 = SP + 3              	// [34:6971]  
	     [R4++] = R2              	// [36:6971]  
	     [R4] = R3                	// [38:6971]  
	     call _Play_Serieplayer16bit	// [40:6971]  Play_Serieplayer16bit
BB85_PU62:	// 0x1a62
// BB:85 cycle count: 9
	     SP = SP + 3              	// [0:6971]  
//6972  			                       	  
//6973  			                       	  PlayA1800_Elements(A_VLMMREN_End_02b);

LM1001:
	     .stabn 68,0,6973,LM1001-_Answer_F
	     R3 = 20                  	// [1:6973]  
	     R4 = SP + 1              	// [2:6973]  
	     [R4] = R3                	// [4:6973]  
	     call _PlayA1800_Elements 	// [6:6973]  PlayA1800_Elements
BB86_PU62:	// 0x1a69
// BB:86 cycle count: 8
//6974  			                       	  PlayA1800_Elements(A_VLMMREN_2Outb);

LM1002:
	     .stabn 68,0,6974,LM1002-_Answer_F
	     R3 = 4                   	// [0:6974]  
	     R4 = SP + 1              	// [1:6974]  
	     [R4] = R3                	// [3:6974]  
	     call _PlayA1800_Elements 	// [5:6974]  PlayA1800_Elements
BB87_PU62:	// 0x1a6f
// BB:87 cycle count: 14
//6975  			                       	  
//6976  			                       	  End20flag =1;

LM1003:
	     .stabn 68,0,6976,LM1003-_Answer_F
	     R3 = 1                   	// [0:6976]  
	     DS = seg(_End20flag)     	// [1:6976]  End20flag
	     R4 = (_End20flag)        	// [2:6976]  End20flag
	     DS:[R4] = R3             	// [4:6976]  
//6977  			                       	  delay_time(8);

LM1004:
	     .stabn 68,0,6977,LM1004-_Answer_F
	     R3 = 8                   	// [6:6977]  
	     R4 = SP + 1              	// [7:6977]  
	     [R4] = R3                	// [9:6977]  
	     call _delay_time         	// [11:6977]  delay_time
BB88_PU62:	// 0x1a7a
// BB:88 cycle count: 6
	     SP = SP + 11             	// [0:6977]  
//6978  			                       	  return C_End20;

LM1005:
	     .stabn 68,0,6978,LM1005-_Answer_F
	     pop BP, PC from [SP]     	// [1:6978]  
L_62_96:	// 0x1a7c
L_62_95:	// 0x1a7c
// BB:89 cycle count: 9
//6979  			                       }
//6980  			                  
//6981  			                  }
//6982  			                  
//6983  			                  PlayA1800_Elements(A_VLMMREN_Aie);

LM1006:
	     .stabn 68,0,6983,LM1006-_Answer_F
	     SP = SP - 1              	// [0:6983]  
	     R3 = 5                   	// [1:6983]  
	     R4 = SP + 1              	// [2:6983]  
	     [R4] = R3                	// [4:6983]  
	     call _PlayA1800_Elements 	// [6:6983]  PlayA1800_Elements
BB90_PU62:	// 0x1a83
// BB:90 cycle count: 8
//6984  			           	      PlayA1800_Elements(A_VLMMREN_Out);

LM1007:
	     .stabn 68,0,6984,LM1007-_Answer_F
	     R3 = 35                  	// [0:6984]  
	     R4 = SP + 1              	// [1:6984]  
	     [R4] = R3                	// [3:6984]  
	     call _PlayA1800_Elements 	// [5:6984]  PlayA1800_Elements
BB91_PU62:	// 0x1a89
// BB:91 cycle count: 1
	     SP = SP + 1              	// [0:6984]  
L_62_94:	// 0x1a8a
L_62_90:	// 0x1a8a
// BB:92 cycle count: 62
//6985  			       	    }
//6986  		           	      
//6987  		                  Pingame[Player_Activing_Cnt/16]&=~BitMap[Player_Activing_Cnt%16];	

LM1008:
	     .stabn 68,0,6987,LM1008-_Answer_F
	     DS = seg(_Player_Activing_Cnt)	// [0:6987]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:6987]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [3:6987]  
	     R4 = R4 lsr 4            	// [5:6987]  
	     [BP + 5] = R4            	// [6:6987]  __save_expr_temp_16
	     R4 = [BP + 5]            	// [7:6987]  __save_expr_temp_16
	     R3 = 0                   	// [9:6987]  
	     R1 = (_Pingame)          	// [10:6987]  Pingame
	     R2 = seg(_Pingame)       	// [12:6987]  Pingame
	     R4 = R4 + R1             	// [13:6987]  
	     R3 = R3 + R2, Carry      	// [14:6987]  
	     DS = R3                  	// [15:6987]  
	     R4 = DS:[R4]             	// [16:6987]  
	     [BP + 7] = R4            	// [18:6987]  lra_spill_temp_37
	     DS = seg(_Player_Activing_Cnt)	// [19:6987]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [20:6987]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [22:6987]  
	     R4 = R4 & 15             	// [24:6987]  
	     R3 = 0                   	// [25:6987]  
	     R1 = (_BitMap)           	// [26:6987]  BitMap
	     R2 = seg(_BitMap)        	// [28:6987]  BitMap
	     R4 = R4 + R1             	// [29:6987]  
	     R3 = R3 + R2, Carry      	// [30:6987]  
	     DS = R3                  	// [31:6987]  
	     R4 = DS:[R4]             	// [32:6987]  
	     R3 = R4 ^ 65535          	// [34:6987]  
	     R4 = [BP + 7]            	// [36:6987]  lra_spill_temp_37
	     R4 = R4 & R3             	// [38:6987]  
	     [BP + 8] = R4            	// [39:6987]  lra_spill_temp_38
	     R4 = [BP + 5]            	// [40:6987]  __save_expr_temp_16
	     R3 = 0                   	// [42:6987]  
	     R1 = (_Pingame)          	// [43:6987]  Pingame
	     R2 = seg(_Pingame)       	// [45:6987]  Pingame
	     R4 = R4 + R1             	// [46:6987]  
	     R3 = R3 + R2, Carry      	// [47:6987]  
	     DS = R3                  	// [48:6987]  
	     R3 = [BP + 8]            	// [49:6987]  lra_spill_temp_38
	     DS:[R4] = R3             	// [51:6987]  
//6988  		                  
//6989  		                 // PlayA1800_Elements(SFX_Buzzer);
//6990  		                 // Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);
//6991  						 // PlayA1800_Elements(A_VLMMREN_Out);
//6992  		                  delay_time(16);

LM1009:
	     .stabn 68,0,6992,LM1009-_Answer_F
	     SP = SP - 1              	// [53:6992]  
	     R3 = 16                  	// [54:6992]  
	     R4 = SP + 1              	// [55:6992]  
	     [R4] = R3                	// [57:6992]  
	     call _delay_time         	// [59:6992]  delay_time
BB93_PU62:	// 0x1abd
// BB:93 cycle count: 4
	     SP = SP + 1              	// [0:6992]  
//6993  						   if(Get_Length_Pingame()<2)

LM1010:
	     .stabn 68,0,6993,LM1010-_Answer_F
	     call _Get_Length_Pingame 	// [1:6993]  Get_Length_Pingame
BB94_PU62:	// 0x1ac0
// BB:94 cycle count: 5
	     cmp R1, 1                	// [0:6993]  
	     ja L_62_98               	// [1:6993]  
BB95_PU62:	// 0x1ac2
// BB:95 cycle count: 3
//6994  						   	  break;

LM1011:
	     .stabn 68,0,6994,LM1011-_Answer_F
	     goto Lt_62_3             	// [0:6994]  
L_62_98:	// 0x1ac4
// BB:96 cycle count: 7
//6995  		
//6996  		                  if(round>=1)

LM1012:
	     .stabn 68,0,6996,LM1012-_Answer_F
	     R4 = [BP + 2]            	// [0:6996]  round
	     cmp R4, 0                	// [2:6996]  
	     je L_62_99               	// [3:6996]  
BB97_PU62:	// 0x1ac7
// BB:97 cycle count: 34
//6997  		                     Player_Point[Player_Activing_Cnt]+=round-1;  

LM1013:
	     .stabn 68,0,6997,LM1013-_Answer_F
	     DS = seg(_Player_Activing_Cnt)	// [0:6997]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:6997]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [3:6997]  
	     R3 = 0                   	// [5:6997]  
	     R1 = (_Player_Point)     	// [6:6997]  Player_Point
	     R2 = seg(_Player_Point)  	// [8:6997]  Player_Point
	     R4 = R4 + R1             	// [9:6997]  
	     R3 = R3 + R2, Carry      	// [10:6997]  
	     DS = R3                  	// [11:6997]  
	     R4 = DS:[R4]             	// [12:6997]  
	     R4 = R4 + [BP + 2]       	// [14:6997]  round
	     R4 = R4 - 1              	// [16:6997]  
	     [BP + 8] = R4            	// [17:6997]  lra_spill_temp_38
	     DS = seg(_Player_Activing_Cnt)	// [18:6997]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [19:6997]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [21:6997]  
	     R3 = 0                   	// [23:6997]  
	     R1 = (_Player_Point)     	// [24:6997]  Player_Point
	     R2 = seg(_Player_Point)  	// [26:6997]  Player_Point
	     R4 = R4 + R1             	// [27:6997]  
	     R3 = R3 + R2, Carry      	// [28:6997]  
	     DS = R3                  	// [29:6997]  
	     R3 = [BP + 8]            	// [30:6997]  lra_spill_temp_38
	     DS:[R4] = R3             	// [32:6997]  
L_62_99:	// 0x1ae3
// BB:98 cycle count: 5
//6998  		                   
//6999  						   Currentsound=0;

LM1014:
	     .stabn 68,0,6999,LM1014-_Answer_F
	     R4 = 0                   	// [0:6999]  
	     [BP + 3] = R4            	// [1:6999]  Currentsound
//7000  	                        Player_Activing_Cnt =Select_Pingamerandom();//SelectNextPingame(Player_Activing_Cnt);	 

LM1015:
	     .stabn 68,0,7000,LM1015-_Answer_F
	     call _Select_Pingamerandom	// [2:7000]  Select_Pingamerandom
BB99_PU62:	// 0x1ae7
// BB:99 cycle count: 8
	     DS = seg(_Player_Activing_Cnt)	// [0:7000]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [1:7000]  Player_Activing_Cnt
	     DS:[R4] = R1             	// [3:7000]  
//7006  		//				 if(Player_Activing_Cnt==Registerd_Num)
//7007  		//				 	  Player_Activing_Cnt=0;
//7008  		
//7009  		
//7010  						   Ask_Question();//PlayA1800_Elements(Get_Question_Sound(gQuestionIdx));

LM1016:
	     .stabn 68,0,7010,LM1016-_Answer_F
	     call _Ask_Question       	// [5:7010]  Ask_Question
BB100_PU62:	// 0x1aed
// BB:100 cycle count: 20
//7011  						  // delay_time(8);
//7012  						   
//7013  						   
//7014  		                   //PlayA1800_Elements(A_VLMMREN_Next_01);
//7015  		                    Play_Seq(NextCnt++%3,C_NextTable);

LM1017:
	     .stabn 68,0,7015,LM1017-_Answer_F
	     DS = seg(_NextCnt)       	// [0:7015]  NextCnt
	     R4 = (_NextCnt)          	// [1:7015]  NextCnt
	     R3 = DS:[R4]             	// [3:7015]  
	     R4 = R3 + 1              	// [5:7015]  
	     DS = seg(_NextCnt)       	// [7:7015]  NextCnt
	     R2 = (_NextCnt)          	// [8:7015]  NextCnt
	     DS:[R2] = R4             	// [10:7015]  
	     SP = SP - 2              	// [12:7015]  
	     R4 = 3                   	// [13:7015]  
	     push R4, R3 to [SP]      	// [14:7015]  
	     call __modu1             	// [17:7015]  _modu1
BB101_PU62:	// 0x1afc
// BB:101 cycle count: 14
	     SP = SP + 2              	// [0:0]  
	     R4 = SP + 1              	// [1:0]  
	     [R4] = R1                	// [3:0]  
	     R3 = 12000               	// [5:7015]  
	     R4 = SP + 2              	// [7:7015]  
	     [R4] = R3                	// [9:7015]  
	     call _Play_Seq           	// [11:7015]  Play_Seq
BB102_PU62:	// 0x1b07
// BB:102 cycle count: 1
	     SP = SP + 2              	// [0:7015]  
L_62_88:	// 0x1b08
L_62_80:	// 0x1b08
L_62_76:	// 0x1b08
// BB:103 cycle count: 3

LM1018:
	     .stabn 68,0,6860,LM1018-_Answer_F
	     goto L_62_72             	// [0:6860]  
L_62_73:	// 0x1b0a
Lt_62_3:	// 0x1b0a
// BB:104 cycle count: 60
	     [BP + 9] = R1            	// [0:0]  lgra_spill_temp_39
//7026  
//7027  
//7028  
//7029  	     //Player_Point[Player_Activing_Cnt]=Currentsound;
//7030           Pselected[Player_Activing_Cnt/16]|=BitMap[Player_Activing_Cnt%16];	

LM1019:
	     .stabn 68,0,7030,LM1019-_Answer_F
	     DS = seg(_Player_Activing_Cnt)	// [1:7030]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [2:7030]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [4:7030]  
	     R4 = R4 lsr 4            	// [6:7030]  
	     [BP + 6] = R4            	// [7:7030]  __save_expr_temp_17
	     R4 = [BP + 6]            	// [8:7030]  __save_expr_temp_17
	     R3 = 0                   	// [10:7030]  
	     R1 = (_Pselected)        	// [11:7030]  Pselected
	     R2 = seg(_Pselected)     	// [13:7030]  Pselected
	     R4 = R4 + R1             	// [14:7030]  
	     R3 = R3 + R2, Carry      	// [15:7030]  
	     DS = R3                  	// [16:7030]  
	     R4 = DS:[R4]             	// [17:7030]  
	     [BP + 7] = R4            	// [19:7030]  lra_spill_temp_37
	     DS = seg(_Player_Activing_Cnt)	// [20:7030]  Player_Activing_Cnt
	     R4 = (_Player_Activing_Cnt)	// [21:7030]  Player_Activing_Cnt
	     R4 = DS:[R4]             	// [23:7030]  
	     R4 = R4 & 15             	// [25:7030]  
	     R3 = 0                   	// [26:7030]  
	     R1 = (_BitMap)           	// [27:7030]  BitMap
	     R2 = seg(_BitMap)        	// [29:7030]  BitMap
	     R4 = R4 + R1             	// [30:7030]  
	     R3 = R3 + R2, Carry      	// [31:7030]  
	     DS = R3                  	// [32:7030]  
	     R3 = DS:[R4]             	// [33:7030]  
	     R4 = [BP + 7]            	// [35:7030]  lra_spill_temp_37
	     R4 = R4 | R3             	// [37:7030]  
	     [BP + 8] = R4            	// [38:7030]  lra_spill_temp_38
	     R4 = [BP + 6]            	// [39:7030]  __save_expr_temp_17
	     R3 = 0                   	// [41:7030]  
	     R1 = (_Pselected)        	// [42:7030]  Pselected
	     R2 = seg(_Pselected)     	// [44:7030]  Pselected
	     R4 = R4 + R1             	// [45:7030]  
	     R3 = R3 + R2, Carry      	// [46:7030]  
	     DS = R3                  	// [47:7030]  
	     R3 = [BP + 8]            	// [48:7030]  lra_spill_temp_38
	     DS:[R4] = R3             	// [50:7030]  
	     R1 = [BP + 9]            	// [52:7030]  lgra_spill_temp_39
	     SP = SP + 10             	// [54:7030]  
	     pop BP, PC from [SP]     	// [55:7030]  
LBE57:
	.endp	
	     .stabn 192,0,0,LBB57-_Answer_F
	     .stabs "temp:4",128,0,0,0
	     .stabs "temp1:4",128,0,0,1
	     .stabs "round:4",128,0,0,2
	     .stabs "Currentsound:4",128,0,0,3
	     .stabs "timeout_t:4",128,0,0,4
	     .stabn 224,0,0,LBE57-_Answer_F
LME63:
	     .stabf LME63-_Answer_F
.code
	     .stabs "PlayScoreOfwhichplay:F18",36,0,0,_PlayScoreOfwhichplay

	// Program Unit: PlayScoreOfwhichplay
.public	_PlayScoreOfwhichplay
_PlayScoreOfwhichplay: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//7035  
//7036  
//7037  
//7038  void  PlayScoreOfwhichplay(unsigned int* BitTable)
//7039  {

LM1020:
	     .stabn 68,0,7039,LM1020-_PlayScoreOfwhichplay
BB1_PU63:	// 0x1b38
// BB:1 cycle count: 7
	     push BP to [SP]          	// [0:7039]  
	     SP = SP - 1              	// [2:7039]  
	     BP = SP + 1              	// [3:7039]  
LBB58:
//7040  
//7041  	   unsigned int  i=0;//,temp;

LM1021:
	     .stabn 68,0,7041,LM1021-_PlayScoreOfwhichplay
	     R4 = 0                   	// [5:7041]  
	     [BP + 0] = R4            	// [6:7041]  i
L_63_1:	// 0x1b3e
// BB:2 cycle count: 12
//7042  	
//7043  		while(i<Registerd_Num)

LM1022:
	     .stabn 68,0,7043,LM1022-_PlayScoreOfwhichplay
	     R3 = [BP + 0]            	// [0:7043]  i
	     DS = seg(_Registerd_Num) 	// [2:7043]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [3:7043]  Registerd_Num
	     R4 = DS:[R4]             	// [5:7043]  
	     cmp R3, R4               	// [7:7043]  
	     jae L_63_2               	// [8:7043]  
BB3_PU63:	// 0x1b45
// BB:3 cycle count: 8
//7049  					  //PlayScores(Player_Point[i]);
//7050  	
//7051  				   }
//7052  	
//7053  			   i++;

LM1023:
	     .stabn 68,0,7053,LM1023-_PlayScoreOfwhichplay
	     R4 = [BP + 0]            	// [0:7053]  i
	     R4 = R4 + 1              	// [2:7053]  
	     [BP + 0] = R4            	// [3:7053]  i
	     jmp L_63_1               	// [4:7053]  
L_63_2:	// 0x1b49
// BB:4 cycle count: 6
	     SP = SP + 1              	// [0:7053]  
	     pop BP, PC from [SP]     	// [1:7053]  
LBE58:
	.endp	
	     .stabs "BitTable:p30",160,0,0,4
	     .stabn 192,0,0,LBB58-_PlayScoreOfwhichplay
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE58-_PlayScoreOfwhichplay
LME64:
	     .stabf LME64-_PlayScoreOfwhichplay
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
	// lra_spill_temp_40 = 6
	// lra_spill_temp_41 = 7
//7066  //end
//7067  ///////////////////////////////////////////////////////
//7068  
//7069  unsigned int End()
//7070  {

LM1024:
	     .stabn 68,0,7070,LM1024-_End
BB1_PU64:	// 0x1b4b
// BB:1 cycle count: 14
	     push BP to [SP]          	// [0:7070]  
	     SP = SP - 8              	// [2:7070]  
	     BP = SP + 1              	// [3:7070]  
LBB59:
//7071  
//7072     unsigned int memory_length =0;

LM1025:
	     .stabn 68,0,7072,LM1025-_End
	     R4 = 0                   	// [5:7072]  
	     [BP + 0] = R4            	// [6:7072]  memory_length
//7073     unsigned int temp_length,temp;
//7074  
//7075     unsigned int Leader_Player_temp =0;

LM1026:
	     .stabn 68,0,7075,LM1026-_End
	     R4 = 0                   	// [7:7075]  
	     [BP + 1] = R4            	// [8:7075]  Leader_Player_temp
//7076     int  h_round_temp =0;

LM1027:
	     .stabn 68,0,7076,LM1027-_End
	     R4 = 0                   	// [9:7076]  
	     [BP + 2] = R4            	// [10:7076]  h_round_temp
//7077   
//7078      memory_length=Get_Num_CategoryMemory();

LM1028:
	     .stabn 68,0,7078,LM1028-_End
	     call _Get_Num_CategoryMemory	// [11:7078]  Get_Num_CategoryMemory
BB2_PU64:	// 0x1b57
// BB:2 cycle count: 11
	     [BP + 0] = R1            	// [0:7078]  memory_length
//7079   
//7080   	 temp_length  = memory_length;

LM1029:
	     .stabn 68,0,7080,LM1029-_End
	     R4 = [BP + 0]            	// [1:7080]  memory_length
	     [BP + 3] = R4            	// [3:7080]  temp_length
//7081  	 if(temp_length>0)

LM1030:
	     .stabn 68,0,7081,LM1030-_End
	     R4 = [BP + 3]            	// [4:7081]  temp_length
	     cmp R4, 0                	// [6:7081]  
	     je L_64_40               	// [7:7081]  
BB3_PU64:	// 0x1b5d
// BB:3 cycle count: 4
//7082  	 	 temp_length-=1;

LM1031:
	     .stabn 68,0,7082,LM1031-_End
	     R4 = [BP + 3]            	// [0:7082]  temp_length
	     R4 = R4 - 1              	// [2:7082]  
	     [BP + 3] = R4            	// [3:7082]  temp_length
L_64_40:	// 0x1b60
// BB:4 cycle count: 10
//7083   
//7084   
//7085  
//7086   
//7087    if(Registerd_Num>1)

LM1032:
	     .stabn 68,0,7087,LM1032-_End
	     DS = seg(_Registerd_Num) 	// [0:7087]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:7087]  Registerd_Num
	     R4 = DS:[R4]             	// [3:7087]  
	     cmp R4, 1                	// [5:7087]  
	     ja BB5_PU64              	// [6:7087]  
BB139_PU64:	// 0x1b66
// BB:139 cycle count: 3
	     goto L_64_42             	// [0:0]  
BB5_PU64:	// 0x1b68
// BB:5 cycle count: 10
//7088    {
//7089  
//7090      if(End20flag ==0)

LM1033:
	     .stabn 68,0,7090,LM1033-_End
	     DS = seg(_End20flag)     	// [0:7090]  End20flag
	     R4 = (_End20flag)        	// [1:7090]  End20flag
	     R4 = DS:[R4]             	// [3:7090]  
	     cmp R4, 0                	// [5:7090]  
	     je BB6_PU64              	// [6:7090]  
BB144_PU64:	// 0x1b6e
// BB:144 cycle count: 3
	     goto L_64_43             	// [0:0]  
BB6_PU64:	// 0x1b70
// BB:6 cycle count: 8
//7091     	 {
//7092  
//7093  		    if(memory_length>100)

LM1034:
	     .stabn 68,0,7093,LM1034-_End
	     R4 = [BP + 0]            	// [0:7093]  memory_length
	     cmp R4, 100              	// [2:7093]  
	     ja BB7_PU64              	// [4:7093]  
BB146_PU64:	// 0x1b74
// BB:146 cycle count: 3
	     goto L_64_45             	// [0:0]  
BB7_PU64:	// 0x1b76
// BB:7 cycle count: 27
//7094  		    {
//7095  		    	
//7096  		       Add_SomePlayer_Point(1,Rounds,Pingame);	

LM1035:
	     .stabn 68,0,7096,LM1035-_End
	     SP = SP - 5              	// [0:7096]  
	     R3 = 1                   	// [1:7096]  
	     R4 = SP + 1              	// [2:7096]  
	     [R4] = R3                	// [4:7096]  
	     R2 = (_Rounds)           	// [6:7096]  Rounds
	     R3 = seg(_Rounds)        	// [8:7096]  Rounds
	     R4 = SP + 2              	// [9:7096]  
	     [R4++] = R2              	// [11:7096]  
	     [R4] = R3                	// [13:7096]  
	     R2 = (_Pingame)          	// [15:7096]  Pingame
	     R3 = seg(_Pingame)       	// [17:7096]  Pingame
	     R4 = SP + 4              	// [18:7096]  
	     [R4++] = R2              	// [20:7096]  
	     [R4] = R3                	// [22:7096]  
	     call _Add_SomePlayer_Point	// [24:7096]  Add_SomePlayer_Point
BB8_PU64:	// 0x1b8b
// BB:8 cycle count: 27
//7097  		       Add_SomePlayer_Point(memory_length,Player_Point,Pingame);	

LM1036:
	     .stabn 68,0,7097,LM1036-_End
	     R3 = [BP + 0]            	// [0:7097]  memory_length
	     R4 = SP + 1              	// [2:7097]  
	     [R4] = R3                	// [4:7097]  
	     R2 = (_Player_Point)     	// [6:7097]  Player_Point
	     R3 = seg(_Player_Point)  	// [8:7097]  Player_Point
	     R4 = SP + 2              	// [9:7097]  
	     [R4++] = R2              	// [11:7097]  
	     [R4] = R3                	// [13:7097]  
	     R2 = (_Pingame)          	// [15:7097]  Pingame
	     R3 = seg(_Pingame)       	// [17:7097]  Pingame
	     R4 = SP + 4              	// [18:7097]  
	     [R4++] = R2              	// [20:7097]  
	     [R4] = R3                	// [22:7097]  
	     call _Add_SomePlayer_Point	// [24:7097]  Add_SomePlayer_Point
BB9_PU64:	// 0x1b9f
// BB:9 cycle count: 26
//7098  		    	
//7099  		       Play_Serieplayer(0,Pingame,C_Play_StartAddr);	

LM1037:
	     .stabn 68,0,7099,LM1037-_End
	     R3 = 0                   	// [0:7099]  
	     R4 = SP + 1              	// [1:7099]  
	     [R4] = R3                	// [3:7099]  
	     R2 = (_Pingame)          	// [5:7099]  Pingame
	     R3 = seg(_Pingame)       	// [7:7099]  Pingame
	     R4 = SP + 2              	// [8:7099]  
	     [R4++] = R2              	// [10:7099]  
	     [R4] = R3                	// [12:7099]  
	     R2 = 6000                	// [14:7099]  
	     R3 = 0                   	// [16:7099]  
	     R4 = SP + 4              	// [17:7099]  
	     [R4++] = R2              	// [19:7099]  
	     [R4] = R3                	// [21:7099]  
	     call _Play_Serieplayer   	// [23:7099]  Play_Serieplayer
BB10_PU64:	// 0x1bb3
// BB:10 cycle count: 9
	     SP = SP + 4              	// [0:7099]  
//7100  		       PlayA1800_Elements(A_VLMMREN_End_03c);	

LM1038:
	     .stabn 68,0,7100,LM1038-_End
	     R3 = 23                  	// [1:7100]  
	     R4 = SP + 1              	// [2:7100]  
	     [R4] = R3                	// [4:7100]  
	     call _PlayA1800_Elements 	// [6:7100]  PlayA1800_Elements
BB11_PU64:	// 0x1bba
// BB:11 cycle count: 8
//7101  		       PlayA1800_Elements(A_VLMMREN_End_02b);

LM1039:
	     .stabn 68,0,7101,LM1039-_End
	     R3 = 20                  	// [0:7101]  
	     R4 = SP + 1              	// [1:7101]  
	     [R4] = R3                	// [3:7101]  
	     call _PlayA1800_Elements 	// [5:7101]  PlayA1800_Elements
BB12_PU64:	// 0x1bc0
// BB:12 cycle count: 8
//7102  		       delay_time(8);	 	

LM1040:
	     .stabn 68,0,7102,LM1040-_End
	     R3 = 8                   	// [0:7102]  
	     R4 = SP + 1              	// [1:7102]  
	     [R4] = R3                	// [3:7102]  
	     call _delay_time         	// [5:7102]  delay_time
BB13_PU64:	// 0x1bc6
// BB:13 cycle count: 4
	     SP = SP + 1              	// [0:7102]  
	     goto L_64_44             	// [1:7102]  
L_64_45:	// 0x1bc9
// BB:14 cycle count: 27
//7103  
//7104  		    }
//7105  		    else
//7106  		    {
//7107  		    	  Add_SomePlayer_Point(1,Rounds,Pingame);	

LM1041:
	     .stabn 68,0,7107,LM1041-_End
	     SP = SP - 5              	// [0:7107]  
	     R3 = 1                   	// [1:7107]  
	     R4 = SP + 1              	// [2:7107]  
	     [R4] = R3                	// [4:7107]  
	     R2 = (_Rounds)           	// [6:7107]  Rounds
	     R3 = seg(_Rounds)        	// [8:7107]  Rounds
	     R4 = SP + 2              	// [9:7107]  
	     [R4++] = R2              	// [11:7107]  
	     [R4] = R3                	// [13:7107]  
	     R2 = (_Pingame)          	// [15:7107]  Pingame
	     R3 = seg(_Pingame)       	// [17:7107]  Pingame
	     R4 = SP + 4              	// [18:7107]  
	     [R4++] = R2              	// [20:7107]  
	     [R4] = R3                	// [22:7107]  
	     call _Add_SomePlayer_Point	// [24:7107]  Add_SomePlayer_Point
BB15_PU64:	// 0x1bde
// BB:15 cycle count: 27
//7108  		    	  Add_SomePlayer_Point(memory_length,Player_Point,Pingame);	

LM1042:
	     .stabn 68,0,7108,LM1042-_End
	     R3 = [BP + 0]            	// [0:7108]  memory_length
	     R4 = SP + 1              	// [2:7108]  
	     [R4] = R3                	// [4:7108]  
	     R2 = (_Player_Point)     	// [6:7108]  Player_Point
	     R3 = seg(_Player_Point)  	// [8:7108]  Player_Point
	     R4 = SP + 2              	// [9:7108]  
	     [R4++] = R2              	// [11:7108]  
	     [R4] = R3                	// [13:7108]  
	     R2 = (_Pingame)          	// [15:7108]  Pingame
	     R3 = seg(_Pingame)       	// [17:7108]  Pingame
	     R4 = SP + 4              	// [18:7108]  
	     [R4++] = R2              	// [20:7108]  
	     [R4] = R3                	// [22:7108]  
	     call _Add_SomePlayer_Point	// [24:7108]  Add_SomePlayer_Point
BB16_PU64:	// 0x1bf2
// BB:16 cycle count: 26
//7109  		    	  
//7110  			     Play_Serieplayer(0,Pingame,C_Play_StartAddr);

LM1043:
	     .stabn 68,0,7110,LM1043-_End
	     R3 = 0                   	// [0:7110]  
	     R4 = SP + 1              	// [1:7110]  
	     [R4] = R3                	// [3:7110]  
	     R2 = (_Pingame)          	// [5:7110]  Pingame
	     R3 = seg(_Pingame)       	// [7:7110]  Pingame
	     R4 = SP + 2              	// [8:7110]  
	     [R4++] = R2              	// [10:7110]  
	     [R4] = R3                	// [12:7110]  
	     R2 = 6000                	// [14:7110]  
	     R3 = 0                   	// [16:7110]  
	     R4 = SP + 4              	// [17:7110]  
	     [R4++] = R2              	// [19:7110]  
	     [R4] = R3                	// [21:7110]  
	     call _Play_Serieplayer   	// [23:7110]  Play_Serieplayer
BB17_PU64:	// 0x1c06
// BB:17 cycle count: 9
	     SP = SP + 4              	// [0:7110]  
//7111  			     PlayA1800_Elements(A_VLMMREN_End_01);

LM1044:
	     .stabn 68,0,7111,LM1044-_End
	     R3 = 17                  	// [1:7111]  
	     R4 = SP + 1              	// [2:7111]  
	     [R4] = R3                	// [4:7111]  
	     call _PlayA1800_Elements 	// [6:7111]  PlayA1800_Elements
BB18_PU64:	// 0x1c0d
// BB:18 cycle count: 8
//7112  				 PlayA1800_Elements(A_VLMMREN_End_02);

LM1045:
	     .stabn 68,0,7112,LM1045-_End
	     R3 = 19                  	// [0:7112]  
	     R4 = SP + 1              	// [1:7112]  
	     [R4] = R3                	// [3:7112]  
	     call _PlayA1800_Elements 	// [5:7112]  PlayA1800_Elements
BB19_PU64:	// 0x1c13
// BB:19 cycle count: 9
//7113  				 PlayScores(temp_length);//Player_Point[Player_Activing_Cnt]

LM1046:
	     .stabn 68,0,7113,LM1046-_End
	     R3 = [BP + 3]            	// [0:7113]  temp_length
	     R4 = SP + 1              	// [2:7113]  
	     [R4] = R3                	// [4:7113]  
	     call _PlayScores         	// [6:7113]  PlayScores
BB20_PU64:	// 0x1c19
// BB:20 cycle count: 8
	     SP = SP + 1              	// [0:7113]  
//7114  		      
//7115  		      
//7116  			    if(memory_length<15)

LM1047:
	     .stabn 68,0,7116,LM1047-_End
	     R4 = [BP + 0]            	// [1:7116]  memory_length
	     cmp R4, 14               	// [3:7116]  
	     ja L_64_47               	// [4:7116]  
BB21_PU64:	// 0x1c1d
// BB:21 cycle count: 9
//7117  				{ 
//7118  			       PlayA1800_Elements(A_VLMMREN_End_03b);

LM1048:
	     .stabn 68,0,7118,LM1048-_End
	     SP = SP - 1              	// [0:7118]  
	     R3 = 22                  	// [1:7118]  
	     R4 = SP + 1              	// [2:7118]  
	     [R4] = R3                	// [4:7118]  
	     call _PlayA1800_Elements 	// [6:7118]  PlayA1800_Elements
BB22_PU64:	// 0x1c24
// BB:22 cycle count: 8
//7119  			       PlayA1800_Elements(A_VLMMREN_End_02b);

LM1049:
	     .stabn 68,0,7119,LM1049-_End
	     R3 = 20                  	// [0:7119]  
	     R4 = SP + 1              	// [1:7119]  
	     [R4] = R3                	// [3:7119]  
	     call _PlayA1800_Elements 	// [5:7119]  PlayA1800_Elements
BB23_PU64:	// 0x1c2a
// BB:23 cycle count: 5
	     SP = SP + 1              	// [0:7119]  
	     jmp L_64_46              	// [1:7119]  
L_64_47:	// 0x1c2c
// BB:24 cycle count: 10
//7120  				}
//7121  				else
//7122  				{
//7123  				   PlayA1800_Elements(VLMMREN_Correct3b);

LM1050:
	     .stabn 68,0,7123,LM1050-_End
	     SP = SP - 1              	// [0:7123]  
	     R3 = 210                 	// [1:7123]  
	     R4 = SP + 1              	// [3:7123]  
	     [R4] = R3                	// [5:7123]  
	     call _PlayA1800_Elements 	// [7:7123]  PlayA1800_Elements
BB25_PU64:	// 0x1c34
// BB:25 cycle count: 8
//7124  			       PlayA1800_Elements(A_VLMMREN_End_02b);

LM1051:
	     .stabn 68,0,7124,LM1051-_End
	     R3 = 20                  	// [0:7124]  
	     R4 = SP + 1              	// [1:7124]  
	     [R4] = R3                	// [3:7124]  
	     call _PlayA1800_Elements 	// [5:7124]  PlayA1800_Elements
BB26_PU64:	// 0x1c3a
// BB:26 cycle count: 1
	     SP = SP + 1              	// [0:7124]  
L_64_46:	// 0x1c3b
// BB:27 cycle count: 9
//7125  				}	
//7126  		         delay_time(8);

LM1052:
	     .stabn 68,0,7126,LM1052-_End
	     SP = SP - 1              	// [0:7126]  
	     R3 = 8                   	// [1:7126]  
	     R4 = SP + 1              	// [2:7126]  
	     [R4] = R3                	// [4:7126]  
	     call _delay_time         	// [6:7126]  delay_time
BB28_PU64:	// 0x1c42
// BB:28 cycle count: 1
	     SP = SP + 1              	// [0:7126]  
L_64_44:	// 0x1c43
L_64_43:	// 0x1c43
// BB:29 cycle count: 27
//7129  
//7130       //PlayScoreOfwhichplay(Pingame);
//7131       //temp = Get_Num_Higgest_score(Registered_Play_Status);
//7132  
//7133       if(Get_Num_Bigscore(Rounds,2,Registered_Play_Status)==0 )//NumRounds

LM1053:
	     .stabn 68,0,7133,LM1053-_End
	     SP = SP - 4              	// [0:7133]  
	     R2 = (_Rounds)           	// [1:7133]  Rounds
	     R3 = seg(_Rounds)        	// [3:7133]  Rounds
	     R4 = SP + 1              	// [4:7133]  
	     [R4++] = R2              	// [6:7133]  
	     [R4] = R3                	// [8:7133]  
	     R3 = 2                   	// [10:7133]  
	     R4 = SP + 3              	// [11:7133]  
	     [R4] = R3                	// [13:7133]  
	     DS = seg(_Registered_Play_Status)	// [15:7133]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [16:7133]  Registered_Play_Status
	     R3 = DS:[R4]             	// [18:7133]  
	     R4 = SP + 4              	// [20:7133]  
	     [R4] = R3                	// [22:7133]  
	     call _Get_Num_Bigscore   	// [24:7133]  Get_Num_Bigscore
BB30_PU64:	// 0x1c58
// BB:30 cycle count: 6
	     SP = SP + 4              	// [0:7133]  
	     cmp R1, 0                	// [1:7133]  
	     je BB31_PU64             	// [2:7133]  
BB143_PU64:	// 0x1c5b
// BB:143 cycle count: 3
	     goto L_64_49             	// [0:0]  
BB31_PU64:	// 0x1c5d
// BB:31 cycle count: 20
//7134       {
//7135       	 Cn =0;

LM1054:
	     .stabn 68,0,7135,LM1054-_End
	     R3 = 0                   	// [0:7135]  
	     DS = seg(_Cn)            	// [1:7135]  Cn
	     R4 = (_Cn)               	// [2:7135]  Cn
	     DS:[R4] = R3             	// [4:7135]  
//7136       	 CurrentRound++;

LM1055:
	     .stabn 68,0,7136,LM1055-_End
	     DS = seg(_CurrentRound)  	// [6:7136]  CurrentRound
	     R4 = (_CurrentRound)     	// [7:7136]  CurrentRound
	     R4 = DS:[R4]             	// [9:7136]  
	     R4 = R4 + 1              	// [11:7136]  
	     DS = seg(_CurrentRound)  	// [12:7136]  CurrentRound
	     R3 = (_CurrentRound)     	// [13:7136]  CurrentRound
	     DS:[R3] = R4             	// [15:7136]  
//7137  		 Reset_Memory();	

LM1056:
	     .stabn 68,0,7137,LM1056-_End
	     call _Reset_Memory       	// [17:7137]  Reset_Memory
BB32_PU64:	// 0x1c6d
// BB:32 cycle count: 3
//7138           SetPingame();

LM1057:
	     .stabn 68,0,7138,LM1057-_End
	     call _SetPingame         	// [0:7138]  SetPingame
BB33_PU64:	// 0x1c6f
// BB:33 cycle count: 27
//7139         if(Get_All_SameNum(Rounds,1,Registered_Play_Status)==0)//(CurrentRound !=3)

LM1058:
	     .stabn 68,0,7139,LM1058-_End
	     SP = SP - 4              	// [0:7139]  
	     R2 = (_Rounds)           	// [1:7139]  Rounds
	     R3 = seg(_Rounds)        	// [3:7139]  Rounds
	     R4 = SP + 1              	// [4:7139]  
	     [R4++] = R2              	// [6:7139]  
	     [R4] = R3                	// [8:7139]  
	     R3 = 1                   	// [10:7139]  
	     R4 = SP + 3              	// [11:7139]  
	     [R4] = R3                	// [13:7139]  
	     DS = seg(_Registered_Play_Status)	// [15:7139]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [16:7139]  Registered_Play_Status
	     R3 = DS:[R4]             	// [18:7139]  
	     R4 = SP + 4              	// [20:7139]  
	     [R4] = R3                	// [22:7139]  
	     call _Get_All_SameNum    	// [24:7139]  Get_All_SameNum
BB34_PU64:	// 0x1c84
// BB:34 cycle count: 6
	     SP = SP + 4              	// [0:7139]  
	     cmp R1, 0                	// [1:7139]  
	     jne L_64_51              	// [2:7139]  
BB35_PU64:	// 0x1c87
// BB:35 cycle count: 10
//7140         	{
//7141         	   PlayA1800_Elements(SFX_Yeah);	

LM1059:
	     .stabn 68,0,7141,LM1059-_End
	     SP = SP - 1              	// [0:7141]  
	     R3 = 133                 	// [1:7141]  
	     R4 = SP + 1              	// [3:7141]  
	     [R4] = R3                	// [5:7141]  
	     call _PlayA1800_Elements 	// [7:7141]  PlayA1800_Elements
BB36_PU64:	// 0x1c8f
// BB:36 cycle count: 8
//7142         	   delay_time(8);	

LM1060:
	     .stabn 68,0,7142,LM1060-_End
	     R3 = 8                   	// [0:7142]  
	     R4 = SP + 1              	// [1:7142]  
	     [R4] = R3                	// [3:7142]  
	     call _delay_time         	// [5:7142]  delay_time
BB37_PU64:	// 0x1c95
// BB:37 cycle count: 9
//7143             PlayA1800_Elements(A_VLMMREN_WinRound02a);    

LM1061:
	     .stabn 68,0,7143,LM1061-_End
	     R3 = 79                  	// [0:7143]  
	     R4 = SP + 1              	// [2:7143]  
	     [R4] = R3                	// [4:7143]  
	     call _PlayA1800_Elements 	// [6:7143]  PlayA1800_Elements
BB38_PU64:	// 0x1c9c
// BB:38 cycle count: 8
//7144  		   delay_time(8);

LM1062:
	     .stabn 68,0,7144,LM1062-_End
	     R3 = 8                   	// [0:7144]  
	     R4 = SP + 1              	// [1:7144]  
	     [R4] = R3                	// [3:7144]  
	     call _delay_time         	// [5:7144]  delay_time
BB39_PU64:	// 0x1ca2
// BB:39 cycle count: 5
	     SP = SP + 1              	// [0:7144]  
	     jmp L_64_50              	// [1:7144]  
L_64_51:	// 0x1ca4
// BB:40 cycle count: 3
//7146  		   
//7147         	}
//7148  	   else
//7149  	   	{
//7150  	   	    Key_CheckScores();	

LM1063:
	     .stabn 68,0,7150,LM1063-_End
	     call _Key_CheckScores    	// [0:7150]  Key_CheckScores
BB41_PU64:	// 0x1ca6
// BB:41 cycle count: 9
//7151  	   	    delay_time(8);	

LM1064:
	     .stabn 68,0,7151,LM1064-_End
	     SP = SP - 1              	// [0:7151]  
	     R3 = 8                   	// [1:7151]  
	     R4 = SP + 1              	// [2:7151]  
	     [R4] = R3                	// [4:7151]  
	     call _delay_time         	// [6:7151]  delay_time
BB42_PU64:	// 0x1cad
// BB:42 cycle count: 9
//7152  		    PlayA1800_Elements(A_VLMMREN_WinRound03);	 

LM1065:
	     .stabn 68,0,7152,LM1065-_End
	     R3 = 80                  	// [0:7152]  
	     R4 = SP + 1              	// [2:7152]  
	     [R4] = R3                	// [4:7152]  
	     call _PlayA1800_Elements 	// [6:7152]  PlayA1800_Elements
BB43_PU64:	// 0x1cb4
// BB:43 cycle count: 8
//7153  		    delay_time(8);

LM1066:
	     .stabn 68,0,7153,LM1066-_End
	     R3 = 8                   	// [0:7153]  
	     R4 = SP + 1              	// [1:7153]  
	     [R4] = R3                	// [3:7153]  
	     call _delay_time         	// [5:7153]  delay_time
BB44_PU64:	// 0x1cba
// BB:44 cycle count: 1
	     SP = SP + 1              	// [0:7153]  
L_64_50:	// 0x1cbb
// BB:45 cycle count: 8
//7158  
//7159  
//7160  
//7161  		 
//7162       	 return C_Game;

LM1067:
	     .stabn 68,0,7162,LM1067-_End
	     R1 = - 4083              	// [0:7162]  
	     SP = SP + 8              	// [2:7162]  
	     pop BP, PC from [SP]     	// [3:7162]  
L_64_49:	// 0x1cbf
// BB:46 cycle count: 22
//7163       }
//7164      else
//7165      {
//7166      	    temp =Get_Num_Higgest_score(Rounds,Registered_Play_Status );//Pingame

LM1068:
	     .stabn 68,0,7166,LM1068-_End
	     SP = SP - 3              	// [0:7166]  
	     R2 = (_Rounds)           	// [1:7166]  Rounds
	     R3 = seg(_Rounds)        	// [3:7166]  Rounds
	     R4 = SP + 1              	// [4:7166]  
	     [R4++] = R2              	// [6:7166]  
	     [R4] = R3                	// [8:7166]  
	     DS = seg(_Registered_Play_Status)	// [10:7166]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [11:7166]  Registered_Play_Status
	     R3 = DS:[R4]             	// [13:7166]  
	     R4 = SP + 3              	// [15:7166]  
	     [R4] = R3                	// [17:7166]  
	     call _Get_Num_Higgest_score	// [19:7166]  Get_Num_Higgest_score
BB47_PU64:	// 0x1cd0
// BB:47 cycle count: 21
	     SP = SP + 3              	// [0:7166]  
	     [BP + 4] = R1            	// [1:7166]  temp
//7167  
//7168              Leader_Player_temp = Leader_Player;

LM1069:
	     .stabn 68,0,7168,LM1069-_End
	     DS = seg(_Leader_Player) 	// [2:7168]  Leader_Player
	     R4 = (_Leader_Player)    	// [3:7168]  Leader_Player
	     R4 = DS:[R4]             	// [5:7168]  
	     [BP + 1] = R4            	// [7:7168]  Leader_Player_temp
//7169              h_round_temp = Higgest_T;

LM1070:
	     .stabn 68,0,7169,LM1070-_End
	     DS = seg(_Higgest_T)     	// [8:7169]  Higgest_T
	     R4 = (_Higgest_T)        	// [9:7169]  Higgest_T
	     R4 = DS:[R4]             	// [11:7169]  
	     [BP + 2] = R4            	// [13:7169]  h_round_temp
//7170  
//7171  			
//7172      	    if(temp>1)

LM1071:
	     .stabn 68,0,7172,LM1071-_End
	     R4 = [BP + 4]            	// [14:7172]  temp
	     cmp R4, 1                	// [16:7172]  
	     ja BB48_PU64             	// [17:7172]  
BB140_PU64:	// 0x1cdf
// BB:140 cycle count: 3
	     goto L_64_53             	// [0:0]  
BB48_PU64:	// 0x1ce1
// BB:48 cycle count: 22
//7173      	    {
//7174      	    	temp =Get_Num_Higgest_score(Player_Point,Leader_Player);//temp = checksamescore(Leader_Player);

LM1072:
	     .stabn 68,0,7174,LM1072-_End
	     SP = SP - 3              	// [0:7174]  
	     R2 = (_Player_Point)     	// [1:7174]  Player_Point
	     R3 = seg(_Player_Point)  	// [3:7174]  Player_Point
	     R4 = SP + 1              	// [4:7174]  
	     [R4++] = R2              	// [6:7174]  
	     [R4] = R3                	// [8:7174]  
	     DS = seg(_Leader_Player) 	// [10:7174]  Leader_Player
	     R4 = (_Leader_Player)    	// [11:7174]  Leader_Player
	     R3 = DS:[R4]             	// [13:7174]  
	     R4 = SP + 3              	// [15:7174]  
	     [R4] = R3                	// [17:7174]  
	     call _Get_Num_Higgest_score	// [19:7174]  Get_Num_Higgest_score
BB49_PU64:	// 0x1cf2
// BB:49 cycle count: 9
	     SP = SP + 3              	// [0:7174]  
	     [BP + 4] = R1            	// [1:7174]  temp
//7175  				
//7176      	      if(temp> 1)

LM1073:
	     .stabn 68,0,7176,LM1073-_End
	     R4 = [BP + 4]            	// [2:7176]  temp
	     cmp R4, 1                	// [4:7176]  
	     ja BB50_PU64             	// [5:7176]  
BB142_PU64:	// 0x1cf7
// BB:142 cycle count: 3
	     goto L_64_55             	// [0:0]  
BB50_PU64:	// 0x1cf9
// BB:50 cycle count: 2
//7177      	      {	
//7178      	    	
//7179  		    	  temp = 0;///////////////!!!!!!!!!!!!!!!!!!

LM1074:
	     .stabn 68,0,7179,LM1074-_End
	     R4 = 0                   	// [0:7179]  
	     [BP + 4] = R4            	// [1:7179]  temp
L_64_56:	// 0x1cfb
// BB:51 cycle count: 7
//7180  				while(temp<C_ElementsRAM)

LM1075:
	     .stabn 68,0,7180,LM1075-_End
	     R4 = [BP + 4]            	// [0:7180]  temp
	     cmp R4, 1                	// [2:7180]  
	     ja L_64_57               	// [3:7180]  
BB52_PU64:	// 0x1cfe
// BB:52 cycle count: 20
//7181  				{
//7182  					Pingame[temp] = 0;

LM1076:
	     .stabn 68,0,7182,LM1076-_End
	     R4 = [BP + 4]            	// [0:7182]  temp
	     R3 = 0                   	// [2:7182]  
	     R1 = (_Pingame)          	// [3:7182]  Pingame
	     R2 = seg(_Pingame)       	// [5:7182]  Pingame
	     R4 = R4 + R1             	// [6:7182]  
	     R3 = R3 + R2, Carry      	// [7:7182]  
	     DS = R3                  	// [8:7182]  
	     R3 = 0                   	// [9:7182]  
	     DS:[R4] = R3             	// [10:7182]  
//7183  					temp++;	

LM1077:
	     .stabn 68,0,7183,LM1077-_End
	     R4 = [BP + 4]            	// [12:7183]  temp
	     R4 = R4 + 1              	// [14:7183]  
	     [BP + 4] = R4            	// [15:7183]  temp
	     jmp L_64_56              	// [16:7183]  
L_64_57:	// 0x1d0c
// BB:53 cycle count: 2
//7184  							
//7185  				}
//7186  				temp = 0;

LM1078:
	     .stabn 68,0,7186,LM1078-_End
	     R4 = 0                   	// [0:7186]  
	     [BP + 4] = R4            	// [1:7186]  temp
L_64_58:	// 0x1d0e
// BB:54 cycle count: 7
//7187  				
//7188  				while(temp<C_Player_Num)

LM1079:
	     .stabn 68,0,7188,LM1079-_End
	     R4 = [BP + 4]            	// [0:7188]  temp
	     cmp R4, 9                	// [2:7188]  
	     ja L_64_59               	// [3:7188]  
BB55_PU64:	// 0x1d11
// BB:55 cycle count: 22
//7189  				{
//7190  				    if(BitMap[temp%16]&(Leader_Player))//Pingame[temp/16]

LM1080:
	     .stabn 68,0,7190,LM1080-_End
	     R4 = [BP + 4]            	// [0:7190]  temp
	     R4 = R4 & 15             	// [2:7190]  
	     R3 = 0                   	// [3:7190]  
	     R1 = (_BitMap)           	// [4:7190]  BitMap
	     R2 = seg(_BitMap)        	// [6:7190]  BitMap
	     R4 = R4 + R1             	// [7:7190]  
	     R3 = R3 + R2, Carry      	// [8:7190]  
	     DS = R3                  	// [9:7190]  
	     R4 = DS:[R4]             	// [10:7190]  
	     DS = seg(_Leader_Player) 	// [12:7190]  Leader_Player
	     R3 = (_Leader_Player)    	// [13:7190]  Leader_Player
	     R4 = R4 & DS:[R3]        	// [15:7190]  
	     cmp R4, 0                	// [17:7190]  
	     je L_64_60               	// [18:7190]  
BB56_PU64:	// 0x1d21
// BB:56 cycle count: 45
//7191  				        Pingame[temp/16]|=BitMap[temp%16];

LM1081:
	     .stabn 68,0,7191,LM1081-_End
	     R4 = [BP + 4]            	// [0:7191]  temp
	     R4 = R4 lsr 4            	// [2:7191]  
	     [BP + 5] = R4            	// [3:7191]  __save_expr_temp_18
	     R4 = [BP + 5]            	// [4:7191]  __save_expr_temp_18
	     R3 = 0                   	// [6:7191]  
	     R1 = (_Pingame)          	// [7:7191]  Pingame
	     R2 = seg(_Pingame)       	// [9:7191]  Pingame
	     R4 = R4 + R1             	// [10:7191]  
	     R3 = R3 + R2, Carry      	// [11:7191]  
	     DS = R3                  	// [12:7191]  
	     R4 = DS:[R4]             	// [13:7191]  
	     [BP + 6] = R4            	// [15:7191]  lra_spill_temp_40
	     R4 = [BP + 4]            	// [16:7191]  temp
	     R4 = R4 & 15             	// [18:7191]  
	     R3 = 0                   	// [19:7191]  
	     R1 = (_BitMap)           	// [20:7191]  BitMap
	     R2 = seg(_BitMap)        	// [22:7191]  BitMap
	     R4 = R4 + R1             	// [23:7191]  
	     R3 = R3 + R2, Carry      	// [24:7191]  
	     DS = R3                  	// [25:7191]  
	     R3 = DS:[R4]             	// [26:7191]  
	     R4 = [BP + 6]            	// [28:7191]  lra_spill_temp_40
	     R4 = R4 | R3             	// [30:7191]  
	     [BP + 7] = R4            	// [31:7191]  lra_spill_temp_41
	     R4 = [BP + 5]            	// [32:7191]  __save_expr_temp_18
	     R3 = 0                   	// [34:7191]  
	     R1 = (_Pingame)          	// [35:7191]  Pingame
	     R2 = seg(_Pingame)       	// [37:7191]  Pingame
	     R4 = R4 + R1             	// [38:7191]  
	     R3 = R3 + R2, Carry      	// [39:7191]  
	     DS = R3                  	// [40:7191]  
	     R3 = [BP + 7]            	// [41:7191]  lra_spill_temp_41
	     DS:[R4] = R3             	// [43:7191]  
L_64_60:	// 0x1d45
// BB:57 cycle count: 8
//7192  				    	
//7193  				    	temp++;

LM1082:
	     .stabn 68,0,7193,LM1082-_End
	     R4 = [BP + 4]            	// [0:7193]  temp
	     R4 = R4 + 1              	// [2:7193]  
	     [BP + 4] = R4            	// [3:7193]  temp
	     jmp L_64_58              	// [4:7193]  
L_64_59:	// 0x1d49
// BB:58 cycle count: 27
//7194  				}			
//7195  				
//7196  				
//7197  				Play_Serieplayer(0,Pingame,C_Play_StartAddr);

LM1083:
	     .stabn 68,0,7197,LM1083-_End
	     SP = SP - 5              	// [0:7197]  
	     R3 = 0                   	// [1:7197]  
	     R4 = SP + 1              	// [2:7197]  
	     [R4] = R3                	// [4:7197]  
	     R2 = (_Pingame)          	// [6:7197]  Pingame
	     R3 = seg(_Pingame)       	// [8:7197]  Pingame
	     R4 = SP + 2              	// [9:7197]  
	     [R4++] = R2              	// [11:7197]  
	     [R4] = R3                	// [13:7197]  
	     R2 = 6000                	// [15:7197]  
	     R3 = 0                   	// [17:7197]  
	     R4 = SP + 4              	// [18:7197]  
	     [R4++] = R2              	// [20:7197]  
	     [R4] = R3                	// [22:7197]  
	     call _Play_Serieplayer   	// [24:7197]  Play_Serieplayer
BB59_PU64:	// 0x1d5e
// BB:59 cycle count: 9
	     SP = SP + 4              	// [0:7197]  
//7198  				PlayA1800_Elements(A_VLMMREN_End_03d);

LM1084:
	     .stabn 68,0,7198,LM1084-_End
	     R3 = 24                  	// [1:7198]  
	     R4 = SP + 1              	// [2:7198]  
	     [R4] = R3                	// [4:7198]  
	     call _PlayA1800_Elements 	// [6:7198]  PlayA1800_Elements
BB60_PU64:	// 0x1d65
// BB:60 cycle count: 8
//7199  				PlayA1800_Elements(A_VLMMREN_End_Tie01);

LM1085:
	     .stabn 68,0,7199,LM1085-_End
	     R3 = 28                  	// [0:7199]  
	     R4 = SP + 1              	// [1:7199]  
	     [R4] = R3                	// [3:7199]  
	     call _PlayA1800_Elements 	// [5:7199]  PlayA1800_Elements
BB61_PU64:	// 0x1d6b
// BB:61 cycle count: 9
//7200  				PlayA1800_Elements(A_VLMMREN_WinRound01b);

LM1086:
	     .stabn 68,0,7200,LM1086-_End
	     R3 = 77                  	// [0:7200]  
	     R4 = SP + 1              	// [2:7200]  
	     [R4] = R3                	// [4:7200]  
	     call _PlayA1800_Elements 	// [6:7200]  PlayA1800_Elements
BB62_PU64:	// 0x1d72
// BB:62 cycle count: 16
	     SP = SP - 1              	// [0:7200]  
//7201  				Play_Seq(h_round_temp,C_RoundsTable);

LM1087:
	     .stabn 68,0,7201,LM1087-_End
	     R3 = [BP + 2]            	// [1:7201]  h_round_temp
	     R4 = SP + 1              	// [3:7201]  
	     [R4] = R3                	// [5:7201]  
	     R3 = 13050               	// [7:7201]  
	     R4 = SP + 2              	// [9:7201]  
	     [R4] = R3                	// [11:7201]  
	     call _Play_Seq           	// [13:7201]  Play_Seq
BB63_PU64:	// 0x1d7e
// BB:63 cycle count: 9
	     SP = SP + 1              	// [0:7201]  
//7202  				PlayA1800_Elements(A_VLMMREN_End_Tie04);

LM1088:
	     .stabn 68,0,7202,LM1088-_End
	     R3 = 31                  	// [1:7202]  
	     R4 = SP + 1              	// [2:7202]  
	     [R4] = R3                	// [4:7202]  
	     call _PlayA1800_Elements 	// [6:7202]  PlayA1800_Elements
BB64_PU64:	// 0x1d85
// BB:64 cycle count: 12
//7203  				
//7204  				//temp =Get_Num_Higgest_score(Player_Point,Registered_Play_Status);
//7205  				PlayScores(Higgest_T);

LM1089:
	     .stabn 68,0,7205,LM1089-_End
	     DS = seg(_Higgest_T)     	// [0:7205]  Higgest_T
	     R4 = (_Higgest_T)        	// [1:7205]  Higgest_T
	     R3 = DS:[R4]             	// [3:7205]  
	     R4 = SP + 1              	// [5:7205]  
	     [R4] = R3                	// [7:7205]  
	     call _PlayScores         	// [9:7205]  PlayScores
BB65_PU64:	// 0x1d8e
// BB:65 cycle count: 8
//7206  				PlayA1800_Elements(A_VLMMREN_End_Tie05);

LM1090:
	     .stabn 68,0,7206,LM1090-_End
	     R3 = 32                  	// [0:7206]  
	     R4 = SP + 1              	// [1:7206]  
	     [R4] = R3                	// [3:7206]  
	     call _PlayA1800_Elements 	// [5:7206]  PlayA1800_Elements
BB66_PU64:	// 0x1d94
// BB:66 cycle count: 14
//7207  				
//7208  				Tie =1;	

LM1091:
	     .stabn 68,0,7208,LM1091-_End
	     R3 = 1                   	// [0:7208]  
	     DS = seg(_Tie)           	// [1:7208]  Tie
	     R4 = (_Tie)              	// [2:7208]  Tie
	     DS:[R4] = R3             	// [4:7208]  
//7209  				delay_time(8);

LM1092:
	     .stabn 68,0,7209,LM1092-_End
	     R3 = 8                   	// [6:7209]  
	     R4 = SP + 1              	// [7:7209]  
	     [R4] = R3                	// [9:7209]  
	     call _delay_time         	// [11:7209]  delay_time
BB67_PU64:	// 0x1d9f
// BB:67 cycle count: 4
	     SP = SP + 1              	// [0:7209]  
//7210  
//7211  				Reset_Memory();	

LM1093:
	     .stabn 68,0,7211,LM1093-_End
	     call _Reset_Memory       	// [1:7211]  Reset_Memory
BB68_PU64:	// 0x1da2
// BB:68 cycle count: 3
//7212  				
//7213  				Game();

LM1094:
	     .stabn 68,0,7213,LM1094-_End
	     call _Game               	// [0:7213]  Game
BB69_PU64:	// 0x1da4
// BB:69 cycle count: 22
//7214  				
//7215  				temp =Get_Num_Higgest_score(Rounds,Registered_Play_Status);//Pingame

LM1095:
	     .stabn 68,0,7215,LM1095-_End
	     SP = SP - 3              	// [0:7215]  
	     R2 = (_Rounds)           	// [1:7215]  Rounds
	     R3 = seg(_Rounds)        	// [3:7215]  Rounds
	     R4 = SP + 1              	// [4:7215]  
	     [R4++] = R2              	// [6:7215]  
	     [R4] = R3                	// [8:7215]  
	     DS = seg(_Registered_Play_Status)	// [10:7215]  Registered_Play_Status
	     R4 = (_Registered_Play_Status)	// [11:7215]  Registered_Play_Status
	     R3 = DS:[R4]             	// [13:7215]  
	     R4 = SP + 3              	// [15:7215]  
	     [R4] = R3                	// [17:7215]  
	     call _Get_Num_Higgest_score	// [19:7215]  Get_Num_Higgest_score
BB70_PU64:	// 0x1db5
// BB:70 cycle count: 11
	     SP = SP + 2              	// [0:7215]  
	     [BP + 4] = R1            	// [1:7215]  temp
//7216  				
//7217  				//PlayA1800_Elements(SFX_EndGame);
//7218  			    //Play_Serieplayer16bit(0,Leader_Player,C_Play_StartAddr);//Play_Serieplayer(0,&Leader_Player,C_Play_StartAddr);
//7219  	            PlayA1800_Elements(A_VLMMREN_WinRound01);	   

LM1096:
	     .stabn 68,0,7219,LM1096-_End
	     R3 = 76                  	// [2:7219]  
	     R4 = SP + 1              	// [4:7219]  
	     [R4] = R3                	// [6:7219]  
	     call _PlayA1800_Elements 	// [8:7219]  PlayA1800_Elements
BB71_PU64:	// 0x1dbe
// BB:71 cycle count: 19
	     SP = SP - 1              	// [0:7219]  
//7220  	    	    Play_Seq(Higgest_T,C_RoundsTable);//PlayScores(Higgest_T);

LM1097:
	     .stabn 68,0,7220,LM1097-_End
	     DS = seg(_Higgest_T)     	// [1:7220]  Higgest_T
	     R4 = (_Higgest_T)        	// [2:7220]  Higgest_T
	     R3 = DS:[R4]             	// [4:7220]  
	     R4 = SP + 1              	// [6:7220]  
	     [R4] = R3                	// [8:7220]  
	     R3 = 13050               	// [10:7220]  
	     R4 = SP + 2              	// [12:7220]  
	     [R4] = R3                	// [14:7220]  
	     call _Play_Seq           	// [16:7220]  Play_Seq
BB72_PU64:	// 0x1dcd
// BB:72 cycle count: 9
	     SP = SP + 1              	// [0:7220]  
//7221  	    	    PlayA1800_Elements(A_VLMMREN_End_03);    

LM1098:
	     .stabn 68,0,7221,LM1098-_End
	     R3 = 21                  	// [1:7221]  
	     R4 = SP + 1              	// [2:7221]  
	     [R4] = R3                	// [4:7221]  
	     call _PlayA1800_Elements 	// [6:7221]  PlayA1800_Elements
BB73_PU64:	// 0x1dd4
// BB:73 cycle count: 4
	     SP = SP + 1              	// [0:7221]  
	     goto L_64_54             	// [1:7221]  
L_64_55:	// 0x1dd7
// BB:74 cycle count: 24
//7222      	      }
//7223      	     else
//7224      	      {
//7225      	      	
//7226      	      	  Play_Serieplayer16bit(0,Leader_Player_temp,C_Play_StartAddr);

LM1099:
	     .stabn 68,0,7226,LM1099-_End
	     SP = SP - 4              	// [0:7226]  
	     R3 = 0                   	// [1:7226]  
	     R4 = SP + 1              	// [2:7226]  
	     [R4] = R3                	// [4:7226]  
	     R3 = [BP + 1]            	// [6:7226]  Leader_Player_temp
	     R4 = SP + 2              	// [8:7226]  
	     [R4] = R3                	// [10:7226]  
	     R2 = 6000                	// [12:7226]  
	     R3 = 0                   	// [14:7226]  
	     R4 = SP + 3              	// [15:7226]  
	     [R4++] = R2              	// [17:7226]  
	     [R4] = R3                	// [19:7226]  
	     call _Play_Serieplayer16bit	// [21:7226]  Play_Serieplayer16bit
BB75_PU64:	// 0x1de9
// BB:75 cycle count: 10
	     SP = SP + 3              	// [0:7226]  
//7227      	      	  PlayA1800_Elements(A_VLMMREN_WinRound01b);

LM1100:
	     .stabn 68,0,7227,LM1100-_End
	     R3 = 77                  	// [1:7227]  
	     R4 = SP + 1              	// [3:7227]  
	     [R4] = R3                	// [5:7227]  
	     call _PlayA1800_Elements 	// [7:7227]  PlayA1800_Elements
BB76_PU64:	// 0x1df1
// BB:76 cycle count: 16
	     SP = SP - 1              	// [0:7227]  
//7228      	      	  Play_Seq(h_round_temp,C_RoundsTable);

LM1101:
	     .stabn 68,0,7228,LM1101-_End
	     R3 = [BP + 2]            	// [1:7228]  h_round_temp
	     R4 = SP + 1              	// [3:7228]  
	     [R4] = R3                	// [5:7228]  
	     R3 = 13050               	// [7:7228]  
	     R4 = SP + 2              	// [9:7228]  
	     [R4] = R3                	// [11:7228]  
	     call _Play_Seq           	// [13:7228]  Play_Seq
BB77_PU64:	// 0x1dfd
// BB:77 cycle count: 9
	     SP = SP + 1              	// [0:7228]  
//7229      	      	  PlayA1800_Elements(A_VLMMREN_End_Tie02);

LM1102:
	     .stabn 68,0,7229,LM1102-_End
	     R3 = 29                  	// [1:7229]  
	     R4 = SP + 1              	// [2:7229]  
	     [R4] = R3                	// [4:7229]  
	     call _PlayA1800_Elements 	// [6:7229]  PlayA1800_Elements
BB78_PU64:	// 0x1e04
// BB:78 cycle count: 27
	     SP = SP - 3              	// [0:7229]  
//7230      	      	  
//7231      	      	  //temp =Get_Num_Higgest_score(Player_Point,Leader_Player); //上面已求出  	      	  
//7232      	      	  Play_Serieplayer16bit(0,Leader_Player,C_Play_StartAddr);

LM1103:
	     .stabn 68,0,7232,LM1103-_End
	     R3 = 0                   	// [1:7232]  
	     R4 = SP + 1              	// [2:7232]  
	     [R4] = R3                	// [4:7232]  
	     DS = seg(_Leader_Player) 	// [6:7232]  Leader_Player
	     R4 = (_Leader_Player)    	// [7:7232]  Leader_Player
	     R3 = DS:[R4]             	// [9:7232]  
	     R4 = SP + 2              	// [11:7232]  
	     [R4] = R3                	// [13:7232]  
	     R2 = 6000                	// [15:7232]  
	     R3 = 0                   	// [17:7232]  
	     R4 = SP + 3              	// [18:7232]  
	     [R4++] = R2              	// [20:7232]  
	     [R4] = R3                	// [22:7232]  
	     call _Play_Serieplayer16bit	// [24:7232]  Play_Serieplayer16bit
BB79_PU64:	// 0x1e19
// BB:79 cycle count: 9
	     SP = SP + 3              	// [0:7232]  
//7233      	      	  PlayA1800_Elements(A_VLMMREN_End_02);

LM1104:
	     .stabn 68,0,7233,LM1104-_End
	     R3 = 19                  	// [1:7233]  
	     R4 = SP + 1              	// [2:7233]  
	     [R4] = R3                	// [4:7233]  
	     call _PlayA1800_Elements 	// [6:7233]  PlayA1800_Elements
BB80_PU64:	// 0x1e20
// BB:80 cycle count: 12
//7234      	      	  PlayScores(Higgest_T);

LM1105:
	     .stabn 68,0,7234,LM1105-_End
	     DS = seg(_Higgest_T)     	// [0:7234]  Higgest_T
	     R4 = (_Higgest_T)        	// [1:7234]  Higgest_T
	     R3 = DS:[R4]             	// [3:7234]  
	     R4 = SP + 1              	// [5:7234]  
	     [R4] = R3                	// [7:7234]  
	     call _PlayScores         	// [9:7234]  PlayScores
BB81_PU64:	// 0x1e29
// BB:81 cycle count: 8
//7235      	      	  PlayA1800_Elements(A_VLMMREN_End_Tie03);

LM1106:
	     .stabn 68,0,7235,LM1106-_End
	     R3 = 30                  	// [0:7235]  
	     R4 = SP + 1              	// [1:7235]  
	     [R4] = R3                	// [3:7235]  
	     call _PlayA1800_Elements 	// [5:7235]  PlayA1800_Elements
BB82_PU64:	// 0x1e2f
// BB:82 cycle count: 8
//7236      	      	  PlayA1800_Elements(A_VLMMREN_End_03b);    

LM1107:
	     .stabn 68,0,7236,LM1107-_End
	     R3 = 22                  	// [0:7236]  
	     R4 = SP + 1              	// [1:7236]  
	     [R4] = R3                	// [3:7236]  
	     call _PlayA1800_Elements 	// [5:7236]  PlayA1800_Elements
BB83_PU64:	// 0x1e35
// BB:83 cycle count: 1
	     SP = SP + 1              	// [0:7236]  
L_64_54:	// 0x1e36
// BB:84 cycle count: 4

LM1108:
	     .stabn 68,0,7176,LM1108-_End
	     jmp L_64_52              	// [0:7176]  
L_64_53:	// 0x1e37
// BB:85 cycle count: 10
//7241              {
//7242              	//delay_time(8);	
//7243              	//PlayA1800_Elements(SFX_EndGame);            	
//7244  	            //Play_Serieplayer16bit(0,Leader_Player,C_Play_StartAddr);//Play_Serieplayer(0,&Leader_Player,C_Play_StartAddr);
//7245  	            PlayA1800_Elements(A_VLMMREN_WinRound01);	    	   

LM1109:
	     .stabn 68,0,7245,LM1109-_End
	     SP = SP - 1              	// [0:7245]  
	     R3 = 76                  	// [1:7245]  
	     R4 = SP + 1              	// [3:7245]  
	     [R4] = R3                	// [5:7245]  
	     call _PlayA1800_Elements 	// [7:7245]  PlayA1800_Elements
BB86_PU64:	// 0x1e3f
// BB:86 cycle count: 19
	     SP = SP - 1              	// [0:7245]  
//7246  	    	    Play_Seq(Higgest_T,C_RoundsTable);//PlayScores(Higgest_T);

LM1110:
	     .stabn 68,0,7246,LM1110-_End
	     DS = seg(_Higgest_T)     	// [1:7246]  Higgest_T
	     R4 = (_Higgest_T)        	// [2:7246]  Higgest_T
	     R3 = DS:[R4]             	// [4:7246]  
	     R4 = SP + 1              	// [6:7246]  
	     [R4] = R3                	// [8:7246]  
	     R3 = 13050               	// [10:7246]  
	     R4 = SP + 2              	// [12:7246]  
	     [R4] = R3                	// [14:7246]  
	     call _Play_Seq           	// [16:7246]  Play_Seq
BB87_PU64:	// 0x1e4e
// BB:87 cycle count: 9
	     SP = SP + 1              	// [0:7246]  
//7247  	    	    PlayA1800_Elements(A_VLMMREN_End_03);           	

LM1111:
	     .stabn 68,0,7247,LM1111-_End
	     R3 = 21                  	// [1:7247]  
	     R4 = SP + 1              	// [2:7247]  
	     [R4] = R3                	// [4:7247]  
	     call _PlayA1800_Elements 	// [6:7247]  PlayA1800_Elements
BB88_PU64:	// 0x1e55
// BB:88 cycle count: 1
	     SP = SP + 1              	// [0:7247]  
L_64_52:	// 0x1e56
L_64_48:	// 0x1e56
// BB:89 cycle count: 3

LM1112:
	     .stabn 68,0,7133,LM1112-_End
	     goto L_64_41             	// [0:7133]  
L_64_42:	// 0x1e58
// BB:90 cycle count: 10
//7254  
//7255  	
//7256  	// PlayA1800_Elements(SFX_Winner);
//7257    }
//7258   else if(Registerd_Num==1)

LM1113:
	     .stabn 68,0,7258,LM1113-_End
	     DS = seg(_Registerd_Num) 	// [0:7258]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:7258]  Registerd_Num
	     R4 = DS:[R4]             	// [3:7258]  
	     cmp R4, 1                	// [5:7258]  
	     je BB91_PU64             	// [6:7258]  
BB137_PU64:	// 0x1e5e
// BB:137 cycle count: 3
	     goto L_64_61             	// [0:0]  
BB91_PU64:	// 0x1e60
// BB:91 cycle count: 8
//7259   {
//7260   	
//7261   	 if(memory_length>100)

LM1114:
	     .stabn 68,0,7261,LM1114-_End
	     R4 = [BP + 0]            	// [0:7261]  memory_length
	     cmp R4, 100              	// [2:7261]  
	     jbe L_64_63              	// [4:7261]  
BB92_PU64:	// 0x1e64
// BB:92 cycle count: 12
//7262   	 {
//7263   	 	 Record=memory_length;

LM1115:
	     .stabn 68,0,7263,LM1115-_End
	     R3 = [BP + 0]            	// [0:7263]  memory_length
	     DS = seg(_Record)        	// [2:7263]  Record
	     R4 = (_Record)           	// [3:7263]  Record
	     DS:[R4] = R3             	// [5:7263]  
	//;;
	INT OFF
	//;;
//7264   	 	 
//7265   	 	 
//7266   	  __asm("INT OFF");
//7267        MoveSPIDriverToRAM();		

LM1116:
	     .stabn 68,0,7267,LM1116-_End
	     call _MoveSPIDriverToRAM 	// [9:7267]  MoveSPIDriverToRAM
BB93_PU64:	// 0x1e6e
// BB:93 cycle count: 15
//7268        SPI_Flash_Sector_Erase(T_Record_Secter_L,T_Record_Secter_H);

LM1117:
	     .stabn 68,0,7268,LM1117-_End
	     SP = SP - 2              	// [0:7268]  
	     R3 = - 8192              	// [1:7268]  
	     R4 = SP + 1              	// [3:7268]  
	     [R4] = R3                	// [5:7268]  
	     R3 = 31                  	// [7:7268]  
	     R4 = SP + 2              	// [8:7268]  
	     [R4] = R3                	// [10:7268]  
	     call _SPI_Flash_Sector_Erase	// [12:7268]  SPI_Flash_Sector_Erase
BB94_PU64:	// 0x1e7a
// BB:94 cycle count: 24
	     SP = SP - 1              	// [0:7268]  
//7269        //SPI_Flash_SendNWords(&Record,1,T_Record_Secter_L,T_Record_Secter_H); 
//7270        SPI_Flash_SendAWord(T_Record_Secter_L,T_Record_Secter_H,Record);

LM1118:
	     .stabn 68,0,7270,LM1118-_End
	     R3 = - 8192              	// [1:7270]  
	     R4 = SP + 1              	// [3:7270]  
	     [R4] = R3                	// [5:7270]  
	     R3 = 31                  	// [7:7270]  
	     R4 = SP + 2              	// [8:7270]  
	     [R4] = R3                	// [10:7270]  
	     DS = seg(_Record)        	// [12:7270]  Record
	     R4 = (_Record)           	// [13:7270]  Record
	     R3 = DS:[R4]             	// [15:7270]  
	     R4 = SP + 3              	// [17:7270]  
	     [R4] = R3                	// [19:7270]  
	     call _SPI_Flash_SendAWord	// [21:7270]  SPI_Flash_SendAWord
BB95_PU64:	// 0x1e8d
// BB:95 cycle count: 11
	     SP = SP + 2              	// [0:7270]  
	//;;
	INT FIQ,IRQ
	//;;
//7271          __asm("INT FIQ,IRQ");
//7272   	 	 
//7273   	 	 
//7274   	 	 
//7275   	 	 PlayA1800_Elements(A_VLMMREN_End_03d);

LM1119:
	     .stabn 68,0,7275,LM1119-_End
	     R3 = 24                  	// [3:7275]  
	     R4 = SP + 1              	// [4:7275]  
	     [R4] = R3                	// [6:7275]  
	     call _PlayA1800_Elements 	// [8:7275]  PlayA1800_Elements
BB96_PU64:	// 0x1e97
// BB:96 cycle count: 8
//7276   	 	 PlayA1800_Elements(A_VLMMREN_End_03Solo);

LM1120:
	     .stabn 68,0,7276,LM1120-_End
	     R3 = 25                  	// [0:7276]  
	     R4 = SP + 1              	// [1:7276]  
	     [R4] = R3                	// [3:7276]  
	     call _PlayA1800_Elements 	// [5:7276]  PlayA1800_Elements
BB97_PU64:	// 0x1e9d
// BB:97 cycle count: 4
	     SP = SP + 1              	// [0:7276]  
	     goto L_64_62             	// [1:7276]  
L_64_63:	// 0x1ea0
// BB:98 cycle count: 9
//7277   	 }
//7278   	else
//7279   	{
//7280   	
//7281  	 	 PlayA1800_Elements(A_VLMMREN_End_02);

LM1121:
	     .stabn 68,0,7281,LM1121-_End
	     SP = SP - 1              	// [0:7281]  
	     R3 = 19                  	// [1:7281]  
	     R4 = SP + 1              	// [2:7281]  
	     [R4] = R3                	// [4:7281]  
	     call _PlayA1800_Elements 	// [6:7281]  PlayA1800_Elements
BB99_PU64:	// 0x1ea7
// BB:99 cycle count: 9
//7282  	 	 PlayScores(temp_length);

LM1122:
	     .stabn 68,0,7282,LM1122-_End
	     R3 = [BP + 3]            	// [0:7282]  temp_length
	     R4 = SP + 1              	// [2:7282]  
	     [R4] = R3                	// [4:7282]  
	     call _PlayScores         	// [6:7282]  PlayScores
BB100_PU64:	// 0x1ead
// BB:100 cycle count: 13
	     SP = SP + 1              	// [0:7282]  
//7283  	 	 
//7284  	 	 if(Record<temp_length)

LM1123:
	     .stabn 68,0,7284,LM1123-_End
	     R3 = [BP + 3]            	// [1:7284]  temp_length
	     DS = seg(_Record)        	// [3:7284]  Record
	     R4 = (_Record)           	// [4:7284]  Record
	     R4 = DS:[R4]             	// [6:7284]  
	     cmp R3, R4               	// [8:7284]  
	     jbe L_64_64              	// [9:7284]  
BB101_PU64:	// 0x1eb5
// BB:101 cycle count: 12
//7285  	 	 {
//7286  	 	 	 Record=temp_length;

LM1124:
	     .stabn 68,0,7286,LM1124-_End
	     R3 = [BP + 3]            	// [0:7286]  temp_length
	     DS = seg(_Record)        	// [2:7286]  Record
	     R4 = (_Record)           	// [3:7286]  Record
	     DS:[R4] = R3             	// [5:7286]  
	//;;
	INT OFF
	//;;
//7287  	 	 	 
//7288  			__asm("INT OFF");
//7289  			MoveSPIDriverToRAM();		

LM1125:
	     .stabn 68,0,7289,LM1125-_End
	     call _MoveSPIDriverToRAM 	// [9:7289]  MoveSPIDriverToRAM
BB102_PU64:	// 0x1ebf
// BB:102 cycle count: 15
//7290  			SPI_Flash_Sector_Erase(T_Record_Secter_L,T_Record_Secter_H);

LM1126:
	     .stabn 68,0,7290,LM1126-_End
	     SP = SP - 2              	// [0:7290]  
	     R3 = - 8192              	// [1:7290]  
	     R4 = SP + 1              	// [3:7290]  
	     [R4] = R3                	// [5:7290]  
	     R3 = 31                  	// [7:7290]  
	     R4 = SP + 2              	// [8:7290]  
	     [R4] = R3                	// [10:7290]  
	     call _SPI_Flash_Sector_Erase	// [12:7290]  SPI_Flash_Sector_Erase
BB103_PU64:	// 0x1ecb
// BB:103 cycle count: 24
	     SP = SP - 1              	// [0:7290]  
//7291  			SPI_Flash_SendAWord(T_Record_Secter_L,T_Record_Secter_H,Record);

LM1127:
	     .stabn 68,0,7291,LM1127-_End
	     R3 = - 8192              	// [1:7291]  
	     R4 = SP + 1              	// [3:7291]  
	     [R4] = R3                	// [5:7291]  
	     R3 = 31                  	// [7:7291]  
	     R4 = SP + 2              	// [8:7291]  
	     [R4] = R3                	// [10:7291]  
	     DS = seg(_Record)        	// [12:7291]  Record
	     R4 = (_Record)           	// [13:7291]  Record
	     R3 = DS:[R4]             	// [15:7291]  
	     R4 = SP + 3              	// [17:7291]  
	     [R4] = R3                	// [19:7291]  
	     call _SPI_Flash_SendAWord	// [21:7291]  SPI_Flash_SendAWord
BB104_PU64:	// 0x1ede
// BB:104 cycle count: 11
	     SP = SP + 2              	// [0:7291]  
	//;;
	INT FIQ,IRQ
	//;;
//7292  			//SPI_Flash_SendNWords(&Record,1,T_Record_Secter_L,T_Record_Secter_H); 
//7293  			__asm("INT FIQ,IRQ");
//7294  	 	 	 
//7295  	 	 	 
//7296  	 	 	 PlayA1800_Elements(A_VLMMREN_End_01b);

LM1128:
	     .stabn 68,0,7296,LM1128-_End
	     R3 = 18                  	// [3:7296]  
	     R4 = SP + 1              	// [4:7296]  
	     [R4] = R3                	// [6:7296]  
	     call _PlayA1800_Elements 	// [8:7296]  PlayA1800_Elements
BB105_PU64:	// 0x1ee8
// BB:105 cycle count: 8
//7297  	 	 	 PlayA1800_Elements(A_VLMMREN_End_03b);

LM1129:
	     .stabn 68,0,7297,LM1129-_End
	     R3 = 22                  	// [0:7297]  
	     R4 = SP + 1              	// [1:7297]  
	     [R4] = R3                	// [3:7297]  
	     call _PlayA1800_Elements 	// [5:7297]  PlayA1800_Elements
BB106_PU64:	// 0x1eee
// BB:106 cycle count: 1
	     SP = SP + 1              	// [0:7297]  
L_64_64:	// 0x1eef
L_64_62:	// 0x1eef
L_64_61:	// 0x1eef
L_64_41:	// 0x1eef
// BB:107 cycle count: 10
//7301   
//7302       //if(Record==0)
//7303       //	Record=temp_length;
//7304   
//7305   	 PlayA1800_Elements(SFX_Winner);

LM1130:
	     .stabn 68,0,7305,LM1130-_End
	     SP = SP - 1              	// [0:7305]  
	     R3 = 131                 	// [1:7305]  
	     R4 = SP + 1              	// [3:7305]  
	     [R4] = R3                	// [5:7305]  
	     call _PlayA1800_Elements 	// [7:7305]  PlayA1800_Elements
BB108_PU64:	// 0x1ef7
// BB:108 cycle count: 8
//7306   	 delay_time(8);	

LM1131:
	     .stabn 68,0,7306,LM1131-_End
	     R3 = 8                   	// [0:7306]  
	     R4 = SP + 1              	// [1:7306]  
	     [R4] = R3                	// [3:7306]  
	     call _delay_time         	// [5:7306]  delay_time
BB109_PU64:	// 0x1efd
// BB:109 cycle count: 9
	     SP = SP + 1              	// [0:7306]  
//7307   	 
//7308   	 if((memory_length>=100)&&(Registerd_Num==1))

LM1132:
	     .stabn 68,0,7308,LM1132-_End
	     R4 = [BP + 0]            	// [1:7308]  memory_length
	     cmp R4, 99               	// [3:7308]  
	     jbe L_64_65              	// [5:7308]  
BB110_PU64:	// 0x1f02
// BB:110 cycle count: 10
	     DS = seg(_Registerd_Num) 	// [0:7308]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [1:7308]  Registerd_Num
	     R4 = DS:[R4]             	// [3:7308]  
	     cmp R4, 1                	// [5:7308]  
	     jne L_64_65              	// [6:7308]  
L_64_66:	// 0x1f08
// BB:111 cycle count: 9
//7309   	 {
//7310   	   PlayA1800_Elements(A_VLMMREN_End_03c); 

LM1133:
	     .stabn 68,0,7310,LM1133-_End
	     SP = SP - 1              	// [0:7310]  
	     R3 = 23                  	// [1:7310]  
	     R4 = SP + 1              	// [2:7310]  
	     [R4] = R3                	// [4:7310]  
	     call _PlayA1800_Elements 	// [6:7310]  PlayA1800_Elements
BB112_PU64:	// 0x1f0f
// BB:112 cycle count: 9
//7311         PlayA1800_Elements(SFX_Winner);

LM1134:
	     .stabn 68,0,7311,LM1134-_End
	     R3 = 131                 	// [0:7311]  
	     R4 = SP + 1              	// [2:7311]  
	     [R4] = R3                	// [4:7311]  
	     call _PlayA1800_Elements 	// [6:7311]  PlayA1800_Elements
BB113_PU64:	// 0x1f16
// BB:113 cycle count: 1
	     SP = SP + 1              	// [0:7311]  
L_64_65:	// 0x1f17
// BB:114 cycle count: 22
//7312         
//7313   	 }
//7314   
//7315  	   Key_Event =0;

LM1135:
	     .stabn 68,0,7315,LM1135-_End
	     R3 = 0                   	// [0:7315]  
	     DS = seg(_Key_Event)     	// [1:7315]  Key_Event
	     R4 = (_Key_Event)        	// [2:7315]  Key_Event
	     DS:[R4] = R3             	// [4:7315]  
//7316  	   Key_activeflag = Playbutton;

LM1136:
	     .stabn 68,0,7316,LM1136-_End
	     R3 = 1                   	// [6:7316]  
	     DS = seg(_Key_activeflag)	// [7:7316]  Key_activeflag
	     R4 = (_Key_activeflag)   	// [8:7316]  Key_activeflag
	     DS:[R4] = R3             	// [10:7316]  
//7317  	 
//7318  	 
//7319  	  if(Registerd_Num==1)

LM1137:
	     .stabn 68,0,7319,LM1137-_End
	     DS = seg(_Registerd_Num) 	// [12:7319]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [13:7319]  Registerd_Num
	     R4 = DS:[R4]             	// [15:7319]  
	     cmp R4, 1                	// [17:7319]  
	     jne L_64_68              	// [18:7319]  
BB115_PU64:	// 0x1f27
// BB:115 cycle count: 9
//7320  	  {  
//7321         PlayA1800_Elements(A_VLMMREN_End_04);

LM1138:
	     .stabn 68,0,7321,LM1138-_End
	     SP = SP - 1              	// [0:7321]  
	     R3 = 26                  	// [1:7321]  
	     R4 = SP + 1              	// [2:7321]  
	     [R4] = R3                	// [4:7321]  
	     call _PlayA1800_Elements 	// [6:7321]  PlayA1800_Elements
BB116_PU64:	// 0x1f2e
// BB:116 cycle count: 8
//7322         PlayA1800_Elements(A_VLMMREN_Button_01b);

LM1139:
	     .stabn 68,0,7322,LM1139-_End
	     R3 = 8                   	// [0:7322]  
	     R4 = SP + 1              	// [1:7322]  
	     [R4] = R3                	// [3:7322]  
	     call _PlayA1800_Elements 	// [5:7322]  PlayA1800_Elements
BB117_PU64:	// 0x1f34
// BB:117 cycle count: 5
	     SP = SP + 1              	// [0:7322]  
	     jmp L_64_67              	// [1:7322]  
L_64_68:	// 0x1f36
// BB:118 cycle count: 9
//7323  	  }
//7324  	 else
//7325  	  {
//7326         PlayA1800_Elements(A_VLMMREN_End_04);

LM1140:
	     .stabn 68,0,7326,LM1140-_End
	     SP = SP - 1              	// [0:7326]  
	     R3 = 26                  	// [1:7326]  
	     R4 = SP + 1              	// [2:7326]  
	     [R4] = R3                	// [4:7326]  
	     call _PlayA1800_Elements 	// [6:7326]  PlayA1800_Elements
BB119_PU64:	// 0x1f3d
// BB:119 cycle count: 8
//7327         PlayA1800_Elements(A_VLMMREN_Button_01a);	  	

LM1141:
	     .stabn 68,0,7327,LM1141-_End
	     R3 = 7                   	// [0:7327]  
	     R4 = SP + 1              	// [1:7327]  
	     [R4] = R3                	// [3:7327]  
	     call _PlayA1800_Elements 	// [5:7327]  PlayA1800_Elements
BB120_PU64:	// 0x1f43
// BB:120 cycle count: 1
	     SP = SP + 1              	// [0:7327]  
L_64_67:	// 0x1f44
// BB:121 cycle count: 10
//7328  	  	
//7329  	  }  
//7330   
//7331  	 
//7332  	   delay_time(10*16);

LM1142:
	     .stabn 68,0,7332,LM1142-_End
	     SP = SP - 1              	// [0:7332]  
	     R3 = 160                 	// [1:7332]  
	     R4 = SP + 1              	// [3:7332]  
	     [R4] = R3                	// [5:7332]  
	     call _delay_time         	// [7:7332]  delay_time
BB122_PU64:	// 0x1f4c
// BB:122 cycle count: 11
	     SP = SP + 1              	// [0:7332]  
//7333  	 
//7334  	  if(Registerd_Num==1)

LM1143:
	     .stabn 68,0,7334,LM1143-_End
	     DS = seg(_Registerd_Num) 	// [1:7334]  Registerd_Num
	     R4 = (_Registerd_Num)    	// [2:7334]  Registerd_Num
	     R4 = DS:[R4]             	// [4:7334]  
	     cmp R4, 1                	// [6:7334]  
	     jne L_64_70              	// [7:7334]  
BB123_PU64:	// 0x1f53
// BB:123 cycle count: 9
//7335  	  {  
//7336         PlayA1800_Elements(A_VLMMREN_End_04);

LM1144:
	     .stabn 68,0,7336,LM1144-_End
	     SP = SP - 1              	// [0:7336]  
	     R3 = 26                  	// [1:7336]  
	     R4 = SP + 1              	// [2:7336]  
	     [R4] = R3                	// [4:7336]  
	     call _PlayA1800_Elements 	// [6:7336]  PlayA1800_Elements
BB124_PU64:	// 0x1f5a
// BB:124 cycle count: 8
//7337         PlayA1800_Elements(A_VLMMREN_Button_01b);

LM1145:
	     .stabn 68,0,7337,LM1145-_End
	     R3 = 8                   	// [0:7337]  
	     R4 = SP + 1              	// [1:7337]  
	     [R4] = R3                	// [3:7337]  
	     call _PlayA1800_Elements 	// [5:7337]  PlayA1800_Elements
BB125_PU64:	// 0x1f60
// BB:125 cycle count: 5
	     SP = SP + 1              	// [0:7337]  
	     jmp L_64_69              	// [1:7337]  
L_64_70:	// 0x1f62
// BB:126 cycle count: 9
//7338  	  }
//7339  	 else
//7340  	  {
//7341         PlayA1800_Elements(A_VLMMREN_End_04);

LM1146:
	     .stabn 68,0,7341,LM1146-_End
	     SP = SP - 1              	// [0:7341]  
	     R3 = 26                  	// [1:7341]  
	     R4 = SP + 1              	// [2:7341]  
	     [R4] = R3                	// [4:7341]  
	     call _PlayA1800_Elements 	// [6:7341]  PlayA1800_Elements
BB127_PU64:	// 0x1f69
// BB:127 cycle count: 8
//7342         PlayA1800_Elements(A_VLMMREN_Button_01a);	  	

LM1147:
	     .stabn 68,0,7342,LM1147-_End
	     R3 = 7                   	// [0:7342]  
	     R4 = SP + 1              	// [1:7342]  
	     [R4] = R3                	// [3:7342]  
	     call _PlayA1800_Elements 	// [5:7342]  PlayA1800_Elements
BB128_PU64:	// 0x1f6f
// BB:128 cycle count: 1
	     SP = SP + 1              	// [0:7342]  
L_64_69:	// 0x1f70
// BB:129 cycle count: 10
//7343  	  	
//7344  	  }  
//7345         
//7346         delay_time(10*16);

LM1148:
	     .stabn 68,0,7346,LM1148-_End
	     SP = SP - 1              	// [0:7346]  
	     R3 = 160                 	// [1:7346]  
	     R4 = SP + 1              	// [3:7346]  
	     [R4] = R3                	// [5:7346]  
	     call _delay_time         	// [7:7346]  delay_time
BB130_PU64:	// 0x1f78
// BB:130 cycle count: 11
	     SP = SP + 1              	// [0:7346]  
//7347         
//7348  	 if(Key_Event  == Playbutton)

LM1149:
	     .stabn 68,0,7348,LM1149-_End
	     DS = seg(_Key_Event)     	// [1:7348]  Key_Event
	     R4 = (_Key_Event)        	// [2:7348]  Key_Event
	     R4 = DS:[R4]             	// [4:7348]  
	     cmp R4, 1                	// [6:7348]  
	     jne L_64_72              	// [7:7348]  
BB131_PU64:	// 0x1f7f
// BB:131 cycle count: 16
//7349  	 	{
//7350              Key_Event=0;

LM1150:
	     .stabn 68,0,7350,LM1150-_End
	     R3 = 0                   	// [0:7350]  
	     DS = seg(_Key_Event)     	// [1:7350]  Key_Event
	     R4 = (_Key_Event)        	// [2:7350]  Key_Event
	     DS:[R4] = R3             	// [4:7350]  
//7351              PlayA1800_Elements(SFX_Buzzer);

LM1151:
	     .stabn 68,0,7351,LM1151-_End
	     SP = SP - 1              	// [6:7351]  
	     R3 = 121                 	// [7:7351]  
	     R4 = SP + 1              	// [9:7351]  
	     [R4] = R3                	// [11:7351]  
	     call _PlayA1800_Elements 	// [13:7351]  PlayA1800_Elements
BB132_PU64:	// 0x1f8c
// BB:132 cycle count: 14
	     SP = SP + 9              	// [0:7351]  
//7352              Restart =1;

LM1152:
	     .stabn 68,0,7352,LM1152-_End
	     R3 = 1                   	// [1:7352]  
	     DS = seg(_Restart)       	// [2:7352]  Restart
	     R4 = (_Restart)          	// [3:7352]  Restart
	     DS:[R4] = R3             	// [5:7352]  
//7353  			return  C_StartGame;

LM1153:
	     .stabn 68,0,7353,LM1153-_End
	     R1 = - 4093              	// [7:7353]  
	     pop BP, PC from [SP]     	// [9:7353]  
L_64_72:	// 0x1f95
// BB:133 cycle count: 15
//7354  
//7355  	 	}
//7356        else
//7357        	{
//7358              Key_Event=0;

LM1154:
	     .stabn 68,0,7358,LM1154-_End
	     R3 = 0                   	// [0:7358]  
	     DS = seg(_Key_Event)     	// [1:7358]  Key_Event
	     R4 = (_Key_Event)        	// [2:7358]  Key_Event
	     DS:[R4] = R3             	// [4:7358]  
//7359              PlayA1800_Elements(A_VLMMREN_Bye_02);

LM1155:
	     .stabn 68,0,7359,LM1155-_End
	     SP = SP - 1              	// [6:7359]  
	     R3 = 10                  	// [7:7359]  
	     R4 = SP + 1              	// [8:7359]  
	     [R4] = R3                	// [10:7359]  
	     call _PlayA1800_Elements 	// [12:7359]  PlayA1800_Elements
BB134_PU64:	// 0x1fa1
// BB:134 cycle count: 8
	     SP = SP + 9              	// [0:7359]  
//7360              return C_Off_Mode;

LM1156:
	     .stabn 68,0,7360,LM1156-_End
	     R1 = - 4085              	// [1:7360]  
	     pop BP, PC from [SP]     	// [3:7360]  
L_64_71:	// 0x1fa5
// BB:135 cycle count: 12
//7361        	}
//7362  
//7363  
//7364  	 Key_Event =0;

LM1157:
	     .stabn 68,0,7364,LM1157-_End
	     R3 = 0                   	// [0:7364]  
	     DS = seg(_Key_Event)     	// [1:7364]  Key_Event
	     R4 = (_Key_Event)        	// [2:7364]  Key_Event
	     DS:[R4] = R3             	// [4:7364]  
	     SP = SP + 8              	// [6:7364]  
	     pop BP, PC from [SP]     	// [7:7364]  
LBE59:
	.endp	
	     .stabn 192,0,0,LBB59-_End
	     .stabs "memory_length:4",128,0,0,0
	     .stabs "temp_length:4",128,0,0,3
	     .stabs "temp:4",128,0,0,4
	     .stabs "Leader_Player_temp:4",128,0,0,1
	     .stabs "h_round_temp:1",128,0,0,2
	     .stabn 224,0,0,LBE59-_End
LME65:
	     .stabf LME65-_End
.code
	     .stabs "Go_Rest:F18",36,0,0,_Go_Rest

	// Program Unit: Go_Rest
.public	_Go_Rest
_Go_Rest: .proc	
	     .stabn 0xa6,0,0,1
	// i = 0
	// old_frame_pointer = 1
	// return_address = 2
//7369  
//7370  //============================================================
//7371  //==============================================================
//7372  void  Go_Rest()
//7373  {

LM1158:
	     .stabn 68,0,7373,LM1158-_Go_Rest
BB1_PU65:	// 0x1fa0
// BB:1 cycle count: 17
	     push BP to [SP]          	// [0:7373]  
	     SP = SP - 1              	// [2:7373]  
	     BP = SP + 1              	// [3:7373]  
	//;;
	IRQ off
	//;;
LBB60:
//7374  	unsigned i;
//7375  	asm("IRQ off");
//7376  	
//7377  		
//7378  	if(A1800_Flag)

LM1159:
	     .stabn 68,0,7378,LM1159-_Go_Rest
	     DS = seg(_A1800_Flag)    	// [7:7378]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [8:7378]  A1800_Flag
	     R4 = DS:[R4]             	// [10:7378]  
	     cmp R4, 0                	// [12:7378]  
	     je L_65_7                	// [13:7378]  
BB2_PU65:	// 0x1fad
// BB:2 cycle count: 3
//7379  	{
//7380  	 SACM_A1800_Stop();

LM1160:
	     .stabn 68,0,7380,LM1160-_Go_Rest
	     call _SACM_A1800_Stop    	// [0:7380]  SACM_A1800_Stop
BB3_PU65:	// 0x1faf
// BB:3 cycle count: 6
//7381  	 A1800_Flag =0;

LM1161:
	     .stabn 68,0,7381,LM1161-_Go_Rest
	     R3 = 0                   	// [0:7381]  
	     DS = seg(_A1800_Flag)    	// [1:7381]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [2:7381]  A1800_Flag
	     DS:[R4] = R3             	// [4:7381]  
L_65_7:	// 0x1fb4
// BB:4 cycle count: 3
//7382  	}
//7383  //	Led_SP_Off();
//7384  	
//7385  	i = 1000;

LM1162:
	     .stabn 68,0,7385,LM1162-_Go_Rest
	     R4 = 1000                	// [0:7385]  
	     [BP + 0] = R4            	// [2:7385]  i
Lt_65_5:	// 0x1fb7
// BB:5 cycle count: 12
//7386  	while(i--) System_ServiceLoop();

LM1163:
	     .stabn 68,0,7386,LM1163-_Go_Rest
	     R4 = [BP + 0]            	// [0:7386]  i
	     R4 = R4 - 1              	// [2:7386]  
	     [BP + 0] = R4            	// [3:7386]  i
	     R4 = [BP + 0]            	// [4:7386]  i
	     cmp R4, 65535            	// [6:7386]  
	     je Lt_65_6               	// [8:7386]  
BB6_PU65:	// 0x1fbe
// BB:6 cycle count: 3
	     call _System_ServiceLoop 	// [0:7386]  System_ServiceLoop
BB7_PU65:	// 0x1fc0
// BB:7 cycle count: 4
	     jmp Lt_65_5              	// [0:7386]  
Lt_65_6:	// 0x1fc1
// BB:8 cycle count: 14
//7401  //	i = 3000;
//7402  //	while(i--) System_ServiceLoop();
//7403  
//7404     // Sleep();
//7405  	*P_System_Reset = C_Software_Reset;

LM1164:
	     .stabn 68,0,7405,LM1164-_Go_Rest
	     R2 = 21845               	// [0:7405]  
	     R3 = 12337               	// [2:7405]  
	     R4 = 0                   	// [4:7405]  
	     DS = R4                  	// [5:7405]  
	     DS:[R3] = R2             	// [6:7405]  
	     SP = SP + 1              	// [8:7405]  
	     pop BP, PC from [SP]     	// [9:7405]  
LBE60:
	.endp	
	     .stabn 192,0,0,LBB60-_Go_Rest
	     .stabs "i:4",128,0,0,0
	     .stabn 224,0,0,LBE60-_Go_Rest
LME66:
	     .stabf LME66-_Go_Rest
.code
	     .stabs "Sleeping:F18",36,0,0,_Sleeping

	// Program Unit: Sleeping
.public	_Sleeping
_Sleeping: .proc	
	     .stabn 0xa6,0,0,1
	// cnt = 0
	// old_frame_pointer = 1
	// return_address = 2
//7407  
//7408  /**********************************************************
//7409  *************************************************************/
//7410  void Sleeping()
//7411  {

LM1165:
	     .stabn 68,0,7411,LM1165-_Sleeping
BB1_PU66:	// 0x1fc7
// BB:1 cycle count: 17
	     push BP to [SP]          	// [0:7411]  
	     SP = SP - 1              	// [2:7411]  
	     BP = SP + 1              	// [3:7411]  
LBB61:
//7412  //   unsigned int temp;//temp_Mode;
//7413     unsigned int cnt =0;

LM1166:
	     .stabn 68,0,7413,LM1166-_Sleeping
	     R4 = 0                   	// [5:7413]  
	     [BP + 0] = R4            	// [6:7413]  cnt
//7414  	
//7415   if(A1800_Flag)

LM1167:
	     .stabn 68,0,7415,LM1167-_Sleeping
	     DS = seg(_A1800_Flag)    	// [7:7415]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [8:7415]  A1800_Flag
	     R4 = DS:[R4]             	// [10:7415]  
	     cmp R4, 0                	// [12:7415]  
	     je L_66_3                	// [13:7415]  
BB2_PU66:	// 0x1fd3
// BB:2 cycle count: 3
//7416   {
//7417     SACM_A1800_Stop();

LM1168:
	     .stabn 68,0,7417,LM1168-_Sleeping
	     call _SACM_A1800_Stop    	// [0:7417]  SACM_A1800_Stop
BB3_PU66:	// 0x1fd5
// BB:3 cycle count: 6
//7418     A1800_Flag = 0;	

LM1169:
	     .stabn 68,0,7418,LM1169-_Sleeping
	     R3 = 0                   	// [0:7418]  
	     DS = seg(_A1800_Flag)    	// [1:7418]  A1800_Flag
	     R4 = (_A1800_Flag)       	// [2:7418]  A1800_Flag
	     DS:[R4] = R3             	// [4:7418]  
L_66_3:	// 0x1fda
// BB:4 cycle count: 3
//7419     
//7420   }	
//7421  	
//7422     Sleep_Io();	

LM1170:
	     .stabn 68,0,7422,LM1170-_Sleeping
	     call _Sleep_Io           	// [0:7422]  Sleep_Io
L_66_4:	// 0x1fdc
// BB:5 cycle count: 3
//7423  	
//7424  while(1)
//7425  {	
//7426  	
//7427    WatchdogClear();	

LM1171:
	     .stabn 68,0,7427,LM1171-_Sleeping
	     call _WatchdogClear      	// [0:7427]  WatchdogClear
Lt_66_1:	// 0x1fde
// BB:6 cycle count: 5
//7428    //temp_Mode = Switch_Mode;	
//7429  go_on_sleep_sw:	
//7430         cnt =0;

LM1172:
	     .stabn 68,0,7430,LM1172-_Sleeping
	     R4 = 0                   	// [0:7430]  
	     [BP + 0] = R4            	// [1:7430]  cnt
//7431  	   Sleep();	

LM1173:
	     .stabn 68,0,7431,LM1173-_Sleeping
	     call _Sleep              	// [2:7431]  Sleep
BB7_PU66:	// 0x1fe2
// BB:7 cycle count: 3
//7454  		//goto go_on_sleep_sw;	
//7455  	{	
//7456  
//7457  
//7458  		Sys_clock_init_Only();

LM1174:
	     .stabn 68,0,7458,LM1174-_Sleeping
	     call _Sys_clock_init_Only	// [0:7458]  Sys_clock_init_Only
BB8_PU66:	// 0x1fe4
// BB:8 cycle count: 3
//7459  	    //Sys_clock_init();
//7460  	    IO_init_Wakeup();

LM1175:
	     .stabn 68,0,7460,LM1175-_Sleeping
	     call _IO_init_Wakeup     	// [0:7460]  IO_init_Wakeup
BB9_PU66:	// 0x1fe6
// BB:9 cycle count: 10
//7461  	    
//7462  	    
//7463  	    Delay1xms(100);

LM1176:
	     .stabn 68,0,7463,LM1176-_Sleeping
	     SP = SP - 1              	// [0:7463]  
	     R3 = 100                 	// [1:7463]  
	     R4 = SP + 1              	// [3:7463]  
	     [R4] = R3                	// [5:7463]  
	     call _Delay1xms          	// [7:7463]  Delay1xms
BB10_PU66:	// 0x1fee
// BB:10 cycle count: 4
	     SP = SP + 1              	// [0:7463]  
//7464  	    GetMode();

LM1177:
	     .stabn 68,0,7464,LM1177-_Sleeping
	     call _GetMode            	// [1:7464]  GetMode
BB11_PU66:	// 0x1ff1
// BB:11 cycle count: 11
//7465  	   // Switch_Mode = Key_Instruction;
//7466  	    
//7467  	 
//7468  	 	if((Switch_Mode == Key_Game)||(Switch_Mode == Key_Game_Family))

LM1178:
	     .stabn 68,0,7468,LM1178-_Sleeping
	     DS = seg(_Switch_Mode)   	// [0:7468]  Switch_Mode
	     R4 = (_Switch_Mode)      	// [1:7468]  Switch_Mode
	     R4 = DS:[R4]             	// [3:7468]  
	     cmp R4, 512              	// [5:7468]  
	     je L_66_8                	// [7:7468]  
BB12_PU66:	// 0x1ff8
// BB:12 cycle count: 11
	     DS = seg(_Switch_Mode)   	// [0:7468]  Switch_Mode
	     R4 = (_Switch_Mode)      	// [1:7468]  Switch_Mode
	     R4 = DS:[R4]             	// [3:7468]  
	     cmp R4, 128              	// [5:7468]  
	     jne L_66_7               	// [7:7468]  
L_66_8:	// 0x1fff
// BB:13 cycle count: 30
//7469  	    {
//7470           	cnt =Wakeup_IO_Temp^Sleep_IO_Temp;

LM1179:
	     .stabn 68,0,7470,LM1179-_Sleeping
	     DS = seg(_Sleep_IO_Temp) 	// [0:7470]  Sleep_IO_Temp
	     R4 = (_Sleep_IO_Temp)    	// [1:7470]  Sleep_IO_Temp
	     R4 = DS:[R4]             	// [3:7470]  
	     DS = seg(_Wakeup_IO_Temp)	// [5:7470]  Wakeup_IO_Temp
	     R3 = (_Wakeup_IO_Temp)   	// [6:7470]  Wakeup_IO_Temp
	     R4 = R4 ^ DS:[R3]        	// [8:7470]  
	     [BP + 0] = R4            	// [10:7470]  cnt
//7471           	
//7472           // if(VOL1Flag)	
//7473  	           cnt&=0x280;//200

LM1180:
	     .stabn 68,0,7473,LM1180-_Sleeping
	     R4 = [BP + 0]            	// [11:7473]  cnt
	     R4 = R4 & 640            	// [13:7473]  
	     [BP + 0] = R4            	// [15:7473]  cnt
//7474  	     // else
//7475  	      //    cnt&=0x080;
//7476  	        
//7477  	       // if((cnt)&&(temp&0x200)==0))
//7478  	       if((Wakeup_IO_Temp&cnt)!=cnt) 	

LM1181:
	     .stabn 68,0,7478,LM1181-_Sleeping
	     R2 = [BP + 0]            	// [16:7478]  cnt
	     R4 = [BP + 0]            	// [18:7478]  cnt
	     DS = seg(_Wakeup_IO_Temp)	// [20:7478]  Wakeup_IO_Temp
	     R3 = (_Wakeup_IO_Temp)   	// [21:7478]  Wakeup_IO_Temp
	     R4 = R4 & DS:[R3]        	// [23:7478]  
	     cmp R2, R4               	// [25:7478]  
	     je L_66_9                	// [26:7478]  
BB14_PU66:	// 0x2014
// BB:14 cycle count: 4
//7479  	  	    {
//7480  	  	   	  break;

LM1182:
	     .stabn 68,0,7480,LM1182-_Sleeping
	     jmp Lt_66_2              	// [0:7480]  
L_66_9:	// 0x2015
// BB:15 cycle count: 4

LM1183:
	     .stabn 68,0,7478,LM1183-_Sleeping
	     jmp L_66_6               	// [0:7478]  
L_66_7:	// 0x2016
// BB:16 cycle count: 11
//7481  	  	    }
//7482  
//7483  	    }
//7484  	  else if(Switch_Mode == Key_Instruction)

LM1184:
	     .stabn 68,0,7484,LM1184-_Sleeping
	     DS = seg(_Switch_Mode)   	// [0:7484]  Switch_Mode
	     R4 = (_Switch_Mode)      	// [1:7484]  Switch_Mode
	     R4 = DS:[R4]             	// [3:7484]  
	     cmp R4, 256              	// [5:7484]  
	     jne L_66_10              	// [7:7484]  
BB17_PU66:	// 0x201d
// BB:17 cycle count: 30
//7485  	    {
//7486  	        //Sleep_IO_Temp&=0x7f;
//7487  	       
//7488  	        cnt =Wakeup_IO_Temp^Sleep_IO_Temp;

LM1185:
	     .stabn 68,0,7488,LM1185-_Sleeping
	     DS = seg(_Sleep_IO_Temp) 	// [0:7488]  Sleep_IO_Temp
	     R4 = (_Sleep_IO_Temp)    	// [1:7488]  Sleep_IO_Temp
	     R4 = DS:[R4]             	// [3:7488]  
	     DS = seg(_Wakeup_IO_Temp)	// [5:7488]  Wakeup_IO_Temp
	     R3 = (_Wakeup_IO_Temp)   	// [6:7488]  Wakeup_IO_Temp
	     R4 = R4 ^ DS:[R3]        	// [8:7488]  
	     [BP + 0] = R4            	// [10:7488]  cnt
//7489  	        cnt&=0x7f;

LM1186:
	     .stabn 68,0,7489,LM1186-_Sleeping
	     R4 = [BP + 0]            	// [11:7489]  cnt
	     R4 = R4 & 127            	// [13:7489]  
	     [BP + 0] = R4            	// [15:7489]  cnt
//7490  	       // temp&=cnt;	    	
//7491  	  	   if((Wakeup_IO_Temp&cnt)!=cnt)

LM1187:
	     .stabn 68,0,7491,LM1187-_Sleeping
	     R2 = [BP + 0]            	// [16:7491]  cnt
	     R4 = [BP + 0]            	// [18:7491]  cnt
	     DS = seg(_Wakeup_IO_Temp)	// [20:7491]  Wakeup_IO_Temp
	     R3 = (_Wakeup_IO_Temp)   	// [21:7491]  Wakeup_IO_Temp
	     R4 = R4 & DS:[R3]        	// [23:7491]  
	     cmp R2, R4               	// [25:7491]  
	     je L_66_11               	// [26:7491]  
BB18_PU66:	// 0x2032
// BB:18 cycle count: 4
//7492  	  	   {
//7493  	  	   	  break;

LM1188:
	     .stabn 68,0,7493,LM1188-_Sleeping
	     jmp Lt_66_2              	// [0:7493]  
L_66_11:	// 0x2033
L_66_10:	// 0x2033
L_66_6:	// 0x2033
// BB:19 cycle count: 3
//7495  	  	
//7496  	    }
//7497  
//7498         
//7499         Set_Sleep_IO();

LM1189:
	     .stabn 68,0,7499,LM1189-_Sleeping
	     call _Set_Sleep_IO       	// [0:7499]  Set_Sleep_IO
BB20_PU66:	// 0x2035
// BB:20 cycle count: 3
	     goto L_66_4              	// [0:7499]  
L_66_5:	// 0x2037
Lt_66_2:	// 0x2037
// BB:21 cycle count: 27
//7505  #if C_PassEn
//7506     	PassFlag =0;
//7507  #endif   	
//7508     
//7509     	Sleepflag =0;

LM1190:
	     .stabn 68,0,7509,LM1190-_Sleeping
	     R3 = 0                   	// [0:7509]  
	     DS = seg(_Sleepflag)     	// [1:7509]  Sleepflag
	     R4 = (_Sleepflag)        	// [2:7509]  Sleepflag
	     DS:[R4] = R3             	// [4:7509]  
//7510    	LED_Cnt =0;	//xiang 20150206

LM1191:
	     .stabn 68,0,7510,LM1191-_Sleeping
	     R3 = 0                   	// [6:7510]  
	     DS = seg(_LED_Cnt)       	// [7:7510]  LED_Cnt
	     R4 = (_LED_Cnt)          	// [8:7510]  LED_Cnt
	     DS:[R4] = R3             	// [10:7510]  
//7511     	BlinkFlag_Data = 0;//xiang 20150226

LM1192:
	     .stabn 68,0,7511,LM1192-_Sleeping
	     R3 = 0                   	// [12:7511]  
	     DS = seg(_BlinkFlag_Data)	// [13:7511]  BlinkFlag_Data
	     R4 = (_BlinkFlag_Data)   	// [14:7511]  BlinkFlag_Data
	     DS:[R4] = R3             	// [16:7511]  
//7512     	CheaterFlag =0;

LM1193:
	     .stabn 68,0,7512,LM1193-_Sleeping
	     R3 = 0                   	// [18:7512]  
	     DS = seg(_CheaterFlag)   	// [19:7512]  CheaterFlag
	     R4 = (_CheaterFlag)      	// [20:7512]  CheaterFlag
	     DS:[R4] = R3             	// [22:7512]  
//7513     //	Event_List = Event_List_Init;
//7514     	
//7515      Sys_clock_init();

LM1194:
	     .stabn 68,0,7515,LM1194-_Sleeping
	     call _Sys_clock_init     	// [24:7515]  Sys_clock_init
BB22_PU66:	// 0x204d
// BB:22 cycle count: 3
//7516      Time_init();

LM1195:
	     .stabn 68,0,7516,LM1195-_Sleeping
	     call _Time_init          	// [0:7516]  Time_init
BB23_PU66:	// 0x204f
// BB:23 cycle count: 3
//7517      IO_init();

LM1196:
	     .stabn 68,0,7517,LM1196-_Sleeping
	     call _IO_init            	// [0:7517]  IO_init
BB24_PU66:	// 0x2051
// BB:24 cycle count: 3
//7518  
//7519  //	SPI_Initial();
//7520  //	SPI_Flash_Release_DP();
//7521  	
//7522  	Init_CTS();	

LM1197:
	     .stabn 68,0,7522,LM1197-_Sleeping
	     call _Init_CTS           	// [0:7522]  Init_CTS
BB25_PU66:	// 0x2053
// BB:25 cycle count: 3
//7523  	Key_Scan_Init_Wakeup();

LM1198:
	     .stabn 68,0,7523,LM1198-_Sleeping
	     call _Key_Scan_Init_Wakeup	// [0:7523]  Key_Scan_Init_Wakeup
BB26_PU66:	// 0x2055
// BB:26 cycle count: 16
//7524  
//7525      Key_Event =0;

LM1199:
	     .stabn 68,0,7525,LM1199-_Sleeping
	     R3 = 0                   	// [0:7525]  
	     DS = seg(_Key_Event)     	// [1:7525]  Key_Event
	     R4 = (_Key_Event)        	// [2:7525]  Key_Event
	     DS:[R4] = R3             	// [4:7525]  
	//;;
	FIQ ON
	//;;
	//;;
	IRQ ON
	//;;
//7526  
//7527  	asm("FIQ ON");
//7528  	asm("IRQ ON");	

LM1200:
	     .stabn 68,0,7528,LM1200-_Sleeping
	     SP = SP + 1              	// [10:7528]  
	     pop BP, PC from [SP]     	// [11:7528]  
LBE61:
	.endp	
	     .stabn 192,0,0,LBB61-_Sleeping
	     .stabs "cnt:4",128,0,0,0
	     .stabn 224,0,0,LBE61-_Sleeping
LME67:
	     .stabf LME67-_Sleeping

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
