#ifndef	__GLOB_h__
#define	__GLOB_h__
//write your header here


#define		C_GPCE2064//3400  但需定义 


//En
//#define C_productTouch //生产用Touch接口
#define C_TestPcb 1 //按键公共端接至IOB7
//#define C_debugtest  1//测试用






#define C_Passcheck_En 0
#define C_PassEn C_Passcheck_En//定义 pass 
////////////////////////////////////////////////////



#define C_Demo_Q_N  3



#define T_LQ_Secter_H  0x1f
#define T_LQ_Secter_L  0xd000

#define T_Record_Secter_H  0x1f
#define T_Record_Secter_L  0xe000

#define T_Asked_Secter_H  0x1f
#define T_Asked_Secter_L  0xf000




#define C_Player_Num 10

#define C_RoundNum 100
#define C_QuestionRAM  20		// 
	 
#define C_ElementsRAM  2//plays		// 30 * 16 = 480 > R_ElementsNum	
//#define C_GobackBuffersize	40

//===================
#define C_Only_ON2  0//family

#define Key_Instruction 0x0100
#define Key_Game  0x0200
#define Key_TryMe  0x01
#define Key_Game_Family 0x080





///////////////////////////////////
//Question_Answer
#define Right 1
#define Wrong 2



//////////////////////////////////////////////

///////////////////////////
#define Final_Score 1

///////////////////////////////


#define True 1
#define False 0

//Key

// IOB
 #define ALL_Key_Enable  0x07
 
 #define Only_Play_KeyEnable 0x07

#define Key_Blue   0x01// Play button
#define Key_Orange 0x02// Minus Button
#define Key_Pink   0x04// Plus Button

#define   Playbutton  Key_Blue
#define   PB_button Key_Orange
#define   MB_button  Key_Pink
 

#define Key_True   PB_button 
#define Key_False  MB_button

#define TH_Animals     0x10
#define TH_Humans	   0x20
#define TH_Music       0x40
#define TH_Vehicles    0x80

#define ALL_TouchEnable 0xf0

#define Key_Pass  0x800

//Led



//IOA 
#ifdef C_productTouch

	#define All_Led_data 0x0f0
	
	#define LED_Blue   0x010 
	#define LED_Orange 0x020 //red
	#define LED_Pink   0x040 //yellow
	#define LED_Purple 0x080 //green
	#define LED_Yellow 0//0x400


#else

	#define All_Led_data 0x000f
	
	#define LED_Blue   0x01 
	#define LED_Orange 0x02 //red
	#define LED_Pink   0x04 //yellow
	#define LED_Purple 0x08 //green
	#define LED_Yellow 0x10//0x400

#endif


//Play





//Table Addr in SPI Flash 

#define C_TableQuetionAddr				900
#define C_TableQ_Answer_StartAddr      24900

#define C_TableQ_Miroir_StartAddr      28000
#define C_TableSwitchStartAddr         29300

#define C_TableDiffiStartAddr          32000
#define C_TableMoviesStartAddr         34000




#define C_NX                            80
#define C_TableQ_Sound_StartAddr        5000
#define C_Play_StartAddr                6000//从1开始
//#define C_NumP_StartAddr                7000
#define C_Point_A_StartAddr             8000
//#define C_Point_M_StartAddr             9000
#define C_TableQualityStartAddr         10000
#define C_TableCategory                 10500
#define C_TableOtherSpeechAddr          11500
#define C_NextTable                     12000
#define C_TooLateTable                  12500
#define C_TooLateSoloTable              13000
#define C_RoundsTable                   13050

#define C_TableSpeechAddr				0x10000L //同时也在A1800_User.asm中定义  及与Tab_blank相关


//algorithm control
#define C_Null					0xFAFA
#define C_Finish				0xffff//0xF001	   
#define C_Gone					0xF002                
#define C_StartGame                     0xF003 
#define C_Step1	   	                 		0xF004            
#define C_SelectQuestion_Round1        0xF005  
//#define C_SelectQuestion_Round2        0xF006  
#define C_SelectQuestion_Round3        0xF007  
#define C_KeyOFF				       0xF008  	   
#define C_StartON                     0xF009 
#define C_Demo_Mode    0xf00a
#define C_Off_Mode     0xf00b
#define TimeOver       0xf00c

#define C_Game       0xF00d
#define C_CheckCn    0xF00e
#define C_TurnMulti  0xF00f
#define C_TurnSolo   0xF010
#define C_PvLow      0xF011
#define C_TimeoutF   0xF012
#define C_End        0xF013

#define E_Demo        0xF014
#define C_End20       0XF015
#define C_Repeat      0XF016
                                             



#define C_GameTimeout  0x8000
#define C_PassToEnd    0x4000

//other

#define C_60S  60*16
#define C_30S	30*16
#define C_20S	20*16
#define C_10S	10*16

#define C_15S	15*16
#define C_2S	2*16
#define C_3S	3*16
#define C_5S	5*16
#define C_1S	10

#define C_Pass_cell 5//0.3S
#define C_Pass_longtime 40//C_3S

#define C_1s_Pause   8//12

#define C_Halfs   8

#define C_SpeedTime 16

#define C_TimeOut  60*16
#define Time_Countdown_Sleep 180*16

//#ifdef C_GPCE2064
//	#define C_LEDIO 0x00//0x000F
//#else
//	#define C_LEDIO 0x00//0x0010
//#endif

#define Serie_Correct1		    0    
#define Serie_Correct2          1   
#define Serie_Correct3          2   
#define Serie_Player            3


//#define SeriesScientist    7
//#define Event_Solo_Correct 8




#define C_OneMoreTime 1
#define C_TwoSounds 2





//question
#define	A01	0
#define	A02	1
#define	A03	2
#define	A05	3
#define	A06	4
#define	A08	5
#define	A09	6
#define	A16	7
#define	A25	8
#define	A26	9
#define	A34	10
#define	H05	11
#define	H07	12
#define	H08	13
#define	H09	14
#define	H13	15
#define	H16	16
#define	H18	17
#define	M06	18
#define	M07	19
#define	M11	20
#define	M13	21
#define	M15	22
#define	M17	23
#define	M19	24
#define	M21	25
#define	M30	26
#define	M36	27
#define	V03	28
#define	V04	29
#define	V05	30
#define	V06	31
#define	V07	32
#define	V08	33
#define	V09	34
#define	V16	35















      





























         
         #endif        