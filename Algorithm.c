#include "Glob.h"
#include "voice_A18.h"
#include "GPCE1_CE3.h"
#include "Led.h"
#include "SACM.h"
//#include "bsr.h"



//unsigned LED_Cnt = 0;




//unsigned int Select_Question_NormalRaund2or3(void);

extern void Light_all_off();

volatile unsigned int Sleep_IO_Temp =0;
volatile unsigned int Wakeup_IO_Temp =0;
volatile unsigned int Wakeup_IO_Temp_debouce=0;

volatile unsigned int TimeCnt_Key =0;
//volatile unsigned int Key_buffer_First =0;
volatile unsigned int T_Countdowncnt =0;

unsigned int Restart=0;
unsigned int Cn =0;
unsigned int Registerd_Num =0; 
unsigned int T1=0;
unsigned int T2=0;
unsigned int LastCategory_Series[C_RoundNum]={0,0,0,0,0,0,0,0,0,0,0,0};//Memory 

 
unsigned int Round =0;

unsigned int Player_Activing_Bit =0;//
unsigned int Player_Activing_Cnt =0;//CurrentP 

unsigned int Player_Activing_Bit_sec =0;

//unsigned LQ=0;
unsigned LQA=0;
//unsigned LA=0;
//unsigned LAn=0;

//unsigned VAL_Qx=0;
//unsigned NbEXT=0;
//unsigned NbPROP=0;
unsigned gQuestionIdx = 0xffff;
unsigned gQuestionIdx_1 = 0xffff;//TwoSounds的第一道
//unsigned int gElementsIdx =0;

//unsigned int R_ElementsNum =0;

//unsigned long int Event_List =0;
//unsigned long int Event_ThisGame =0;
unsigned int QuestionStatus_LQA[C_QuestionRAM];//sounds 
unsigned int QuestionStatus_LQ[C_QuestionRAM];//sounds 
//unsigned int QuestionStatus_NoAnswer[C_QuestionRAM];

unsigned int QuestionStatus_Asked[C_QuestionRAM];//1表示 No asked
int Player_Point[C_Player_Num]={0,0,0,0};//Rounds
//int Player_Point_temp[C_Player_Num]={0,0,0,0};
int Rounds[C_Player_Num]={0,0,0,0};

//unsigned int ParBool[C_Player_Num]={0,0,0,0};
unsigned int Pingame[C_ElementsRAM]={0};
unsigned int Pselected[C_ElementsRAM]={0};
//unsigned int Hattrick[C_Player_Num]={0};

//unsigned int Event_cnt =0;


//unsigned QuestionStatus_LQ[C_QuestionRAM];

//unsigned VAL_LowestIndex[100];			//temp RAM for Rate(Ex) and VAL(Qx)
unsigned R_QuestionNum = 0;
//
//unsigned int Question_Asked_Round1[14]={0};



//unsigned int Pointer=0;







/////////////////////////////////////////////////////////Fake       
//volatile unsigned int TwokeyCntl =0;

volatile unsigned Timeout_cnt =0;
//volatile unsigned temp_FiveSec_cnt =0;
//volatile unsigned int TimeCnt_Speed=0;

//unsigned int FiveSec_En =0;


unsigned int Key_activeflag =0;  
unsigned int TwoKey_temp =0;
	         
unsigned int Registered_Play_Status=0;  



//unsigned int Silent_Player[9]={0};
//unsigned int Key_For_TimeOut[5]={0};

//unsigned int Answered_Player_Lound1 =0;
//unsigned int Silent_updatedFlag =0;


 	 



//unsigned int Player_Actived_three[3]={0};
unsigned int QuestionCycle[4] ={0};
unsigned int Pre_Active_Player=0;//上一轮cylce的有效player
unsigned int Cur_Active_Player=0;//当前cycle的有效player


unsigned int Key_Event =0;
unsigned int BlinkFlag_Data =0;

//unsigned int Roundingfalg =0;

//unsigned int Last_QuestionCycle =0;
//unsigned int Last_Last_QuestionCycle =0;

unsigned int Eventflag =0;

unsigned int Answer_Right_Player =0;
unsigned int Answer_Wrong_Player =0;
unsigned int No_Answer_Player =0;

unsigned int Question_Answer =0;

unsigned int SeriesAcnt =0;
unsigned int SeriesBcnt =0;

//unsigned int Series_Correctcnt =0;
//unsigned int Series_Correctcnt_solo =0;
//unsigned int Series_Wrongcnt =0;
//unsigned int Series_Wrongcnt_solo =0;
//unsigned int Series_grunt =0;
//unsigned int Series_scient =0;
//unsigned int Series_Lient =0;
unsigned int Series_eventsolo=0;
//unsigned int Series_Team =0;

unsigned int Leader_Player=0;
unsigned int Lowest_Player =0;


unsigned int Leader_Player_pre=0;

unsigned int Special_temp =0;
unsigned int L14flag =0;
//unsigned int QnAfter_Event5 =0;


int Higgest_T =0;
int Lowest_T =0;

//unsigned int AnswerDuringQue =0;

//unsigned int Key_Buffer =0;
unsigned int Cycle_Timeout_cnt=0;

unsigned int Key_TrueFlase_Buffer =0;

//unsigned int ThreeQuestion[3]={0xffff,0xffff,0xffff};

//unsigned int ThreeQuestion_Temp[3]={0xffff,0xffff,0xffff};


//unsigned int ThreeQuestion_Cheater[3]={0};


//unsigned int ThreeQuestionRound1[3]={0xffff,0xffff,0xffff};
//unsigned int ThreeQuestionRound1_Cheater[3]={0};

//unsigned int Question_Asked_Lascycle[5]={0xffff,0xffff,0xffff,0xffff,0xffff};
unsigned int Question_Quality_Last[6]={0};
unsigned int Last2Cat[2]={0};
//unsigned int Player_Selectcnt[5]={0};



//unsigned int LQA_0_Cnt =0;

unsigned int PlayScoresFlag =0;

unsigned int Sleepflag =0;
unsigned int Tieflag =0;
//unsigned int shootoutflag =0;


//unsigned int Special_temp =0;
//unsigned int V43flag =0;

//unsigned long int Pre_Event =0;

unsigned int Cheater_SeletQu_Flag=0;


//unsigned   int Key_TellScoreFlag =0;

unsigned int VOL1Flag =0;
unsigned int Speed_BonusFlag =0;
//unsigned int HattickOrOffside_Flag=0;
unsigned int Time_Countdown =0;
unsigned int firstFlag_23b =0;

unsigned int FreeKick_Flag =0;


//unsigned int OFFsideFlag =0;
unsigned int Dis_Player =0;
//unsigned int OffSide_Askflag =0;
//unsigned int Que_Miroir[3]={0};//Y2,Y10
//unsigned int Que_Miroir_Cnt[3]={0};//Y2,Y10
unsigned int Countdownflag =0;


unsigned int Soloflag =0;
unsigned int Difficulty =0;
unsigned int Diff_int =0;
unsigned int qestion_quality =0;
int Ca =0;
int RecordV =0;
unsigned int Temp_Registered_Play_Select =0;
unsigned int Key_buffer_First_temp =0;


unsigned int LFXFlag_Data =0;
unsigned int LFX_Data_Cnt =0;
unsigned int VolumeEnable =0;
unsigned int NextCnt =0;
unsigned int TooLate_Cnt =0;
unsigned int TooLatesolo_Cnt =0;
unsigned int Record =0;
unsigned int R_E =0;
unsigned int NumRounds =0;
unsigned int CurrentRound =0;
unsigned int SinceLastE =0;
unsigned int  R_2SLoop =0;
unsigned int  Tie =0;
unsigned int  End20flag =0;
unsigned int Answerflag =0;

unsigned int Last2Catcnt =0;
unsigned int Timeout_cnt_En =0;

extern unsigned int  Pass_Key_temp;
extern unsigned TimeCnt;
extern unsigned gRejectLevel;
extern unsigned Keypress;

extern unsigned A1800_Flag;
//extern unsigned int Led_offset;

//unsigned LastQuestion = 0xFFFF;
//unsigned LastAnswer= 0xFFFF;
//unsigned Res_Test = C_N;
//extern unsigned g_GameCnt;
//extern unsigned A1800_Flag;
extern unsigned RandomValue1;
extern unsigned RandomValue2;

extern unsigned Key;
extern unsigned Pressflag;
extern unsigned TwoKeyflag;

extern unsigned int CheaterFlag;
extern unsigned int gVolume;



//extern unsigned gQ_E_Buffer[100];
//extern unsigned VAL_LowestIndex[100];			//temp RAM for Rate(Ex) and VAL(Qx)
extern unsigned OtherSph_Random_Value[];
extern unsigned int sp_offset;
extern unsigned int  gTemp;
extern unsigned int Switch_Mode;

extern unsigned int PlayQuestionflag;
extern unsigned int PauseFlag;

extern unsigned int LED_Cnt;
extern unsigned int  LongPressflag;
void Ask_Question();





typedef void (*Event_P)(void);

Event_P Event_F[12]={//const unsigned int
//Event1_F_Doublescoring, 
//Event2_Petrified,       
//Event3_ToughTest,   
//Event5_F_Speed,    
//Event6_F_Weasley,    
//Event7_F_OWLS,      
//Event8_Counter,       
//Event9_F,   
//Event10_F_Class,
//Event11_F_Memory,
//Event12_F,
//Event13_Fluffy


};

unsigned int LFX_Data[4]={LED_Blue,LED_Orange,LED_Pink,LED_Purple};
const unsigned int Led_Data_Play[5]={LED_Blue,LED_Orange,LED_Pink,LED_Purple,LED_Yellow};


const unsigned BitMap[] = { 0x0001,0x0002,0x0004,0x0008,0x0010,0x0020,0x0040,0x0080,
							0x0100,0x0200,0x0400,0x0800,0x1000,0x2000,0x4000,0x8000};


//const unsigned int Demo_Qu[10]={Q008,Q360,Q003,Q284 ,Q198 ,Q030 ,Q352 ,Q009 ,Q230 ,Q172 };

//const unsigned int Play_Cnt_Max[]={0,0,5,3,2,2};//前两字无效，对应2个人开始

//IMPORTENT code
//const unsigned JTLOGO[]={  0x1577,0x1560,0x1570,0x155e,
//							0x155c,0x1573,0x1571,0x1567,
//							0x156d,0x158c,0x1573,0x1558,
//							0x1580,0x1569,0x1574,0x1560,
//							0x1573,0x1573,0x1574,0x1590,
//							0x1571,0x1574,0x1574};

#if C_PassEn

unsigned int PassFlag =0;

unsigned int PasstoEnd =0;
    
#endif
 
 
#if C_Passcheck_En
unsigned int Pressflag_temp=0;
volatile unsigned int PassTimeCnt =0;
volatile unsigned int PassTimeCnt_temp =0;

#endif 
 
 
 
#ifdef C_debugtest  
unsigned testqueptr = 0;							

const unsigned testque[] = {H09, H13, M17, A25, V04, A05, A01, M36, M11, V08, V06, A34
}; //T10

#endif 
 
    
    
 

    
extern unsigned SPI_ReadAByte(unsigned long Addr);
extern unsigned SPI_ReadAWord(unsigned long Addr);
extern unsigned int SPI_ReadAWord_Big(unsigned long int);

extern void System_ServiceLoop(void);
extern void Delay_Xms(unsigned Xms);
extern void PlayA1800_Elements(unsigned SpeechIndex);
extern unsigned PlayA1800_Question(unsigned lQuestionIdx);
extern unsigned Get_BSR_Answer(unsigned gVoice);

extern unsigned Get_BSR_YES_NO(void);
extern unsigned Get_BSR_OK(void);
extern unsigned Get_BSR_GoBack(void);
extern unsigned PlayA1800_Question_Random(unsigned lQuestionIdx,unsigned lRandom,unsigned updateRan);
extern unsigned PlayA1800_Elements_Random(unsigned SpeechIndex,unsigned lRandomVol);

unsigned delay_time(unsigned int);
    
//==============================================
//
//==============================================
//unsigned GetRate(unsigned ElementsIdx)
//{
//	unsigned long Addr;
//	Addr = ElementsIdx + C_TableRateStartAddr;
//	return SPI_ReadAByte(Addr);
//}
//
//==============================================
//
//==============================================
//unsigned GetTableAnswer(unsigned ElementsIdx, unsigned lQuestionIdx)
//{
//	unsigned long Addr;
//	Addr = ElementsIdx*R_QuestionNum + lQuestionIdx + C_TableAnswerStartAddr;
//	return SPI_ReadAByte(Addr);
//}
//==============================================
//
//==============================================
//unsigned long GetCategory(unsigned lQuestionIdx)
//{
//	unsigned long Addr;
//	unsigned long Temp;//,Temp1;
//	Addr = lQuestionIdx*4 + C_TableCategory2StartAddr;//C_TableCategoryStartAddr;
//	Temp = SPI_ReadAWord_Big(Addr);
//	Temp = Temp<<16;
//	//Temp1 = (unsigned int long)SPI_ReadAWord_Big(Addr+2);
//	Temp += (unsigned int long)SPI_ReadAWord_Big(Addr+2);
//	return Temp;//((SPI_ReadAWord_Big(Addr)<<16) + SPI_ReadAWord_Big(Addr+2));//SPI_ReadAByte(Addr);
//}

//unsigned int GetCategory_Idex(unsigned lQuestionIdx)
//{
//   	unsigned long Addr;
//	Addr = lQuestionIdx + C_TableCategoryStartAddr;
//	return SPI_ReadAByte(Addr);	
//}


unsigned  Get_Question_Answer(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx + C_TableQ_Answer_StartAddr;
	return SPI_ReadAByte(Addr);
}

//unsigned  Get_Question_Mode(unsigned lQuestionIdx)
//{
//	unsigned long Addr;
//	Addr = lQuestionIdx*2 + C_TableQ_Mode_StartAddr;
//	return SPI_ReadAWord_Big(Addr);
//}


unsigned  Get_Question_Category(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx + C_TableCategory;
	return SPI_ReadAByte(Addr);
}

unsigned  Get_Question_Sound(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx*2 + C_TableQ_Sound_StartAddr;
	return SPI_ReadAWord_Big(Addr);
}



unsigned  Get_Question_Mode(unsigned lQuestionIdx)
{
//	unsigned long Addr;
//	Addr = lQuestionIdx*2 + C_TableQ_Sound_StartAddr;
//	return SPI_ReadAWord_Big(Addr);
}

//unsigned  Get_Question_Miroir(unsigned lQuestionIdx)
//{
//	unsigned long Addr;
//	Addr = lQuestionIdx + C_TableQ_Miroir_StartAddr;
//	return SPI_ReadAByte(Addr);
//}

unsigned GetQuality(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx + C_TableQualityStartAddr;
	return SPI_ReadAByte(Addr);
}



unsigned GetSwitch(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx + C_TableSwitchStartAddr;
	return SPI_ReadAByte(Addr);
}

unsigned GetDifficulty(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx + C_TableDiffiStartAddr;
	return SPI_ReadAByte(Addr);
}



unsigned GetMovies(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx + C_TableMoviesStartAddr;
	return SPI_ReadAByte(Addr);
}


//unsigned GetElementsType(unsigned ElementsIdx)
//{
//	unsigned long Addr;
//	Addr = ElementsIdx + C_TableElementsTypeStartAddr;
//	return SPI_ReadAByte(Addr);
//}

//////////////////////////////////////////////add 20130803 xiang
/*
unsigned GetElementsFamilyType(unsigned ElementsIdx)
{
	unsigned long Addr;
	Addr = ElementsIdx + C_TableFamilyAddr;
	return SPI_ReadAByte(Addr);
}
 
unsigned int GetElementSameFamily()
{
	unsigned temp,temp1=0,j=0;

     
   while(j<R_ElementsNum)
    { 
      WatchdogClear();	
	  temp = BitMap[j%16]&ElementsStatus[j/16];
       if (temp)	
 		{
	 		temp = GetElementsFamilyType(j);
			if(temp)
				{
                 if(temp1)
                 	{
                        if(temp!=temp1)
							return 0;

                 	}
				  	temp1 = temp;


				}
			 else
			     return 0;


       	}
      j++;
     }

   if(temp1)
   	  return 1;

    return 0;
} */
/* 
unsigned int  Get_TheFatherElement()
{

	unsigned i= 0;
	unsigned temp;
	while(i<R_ElementsNum)
	{
		 temp = BitMap[i%16]&ElementsStatus[i/16];  
		 if (temp) 
		 	{

              if( C_TypeFather == GetElementsType(i))
			  	return i;
		 	}
		 i++;
	}
	return 0xffff;
} */


//==============================================
/* 
//==============================================
void Suppress_Question_Speical()
{
	
  const unsigned int *p;
  unsigned int i=0,j=0;
  unsigned temp=0;
  	
   for(i=0;i<6;i++)
   {
   	 WatchdogClear();
	 p = Q_E_T[i];
	 j=0;
	 while(1)
	 {
	 	temp = p[j++];
	 	
	 	if(temp==0xffff)
	 		break;
	 	else
	 	 {
	 	 	if(BitMap[temp%16]&ElementsStatus[temp/16])
	 	 	{
	 	 	  QuestionStatus_LQA[Special_Question[i]/16] &=~BitMap[Special_Question[i]%16];	
	 	 	  break;	 	 		
	 	 	}
	 	 			 	
	 	 }
	 	
	 }
	
   }
	
}
 */

//=======================================================
//========================================================
//unsigned int Check_Q_Special()
//{
//	unsigned int i=0;
//	
//	for(i=0;i<7;i++)
//	{
//	  if(Q_Special[i*2] == gQuestionIdx)	
//	   {
//	     PlayA1800_Elements(Q_Special[i*2+1] - C_ElementsStartIndex);	
//	   	 return 1;
//	   	
//	   }
//		
//		
//	}
//	
//	return 0;
//	
//	
//}




//=============================================
/* void Suppress_Question_Category_LQ(unsigned long int Question_Type)
{
	unsigned temp;
	unsigned i = 0;
	while(i<R_QuestionNum)
	{
		
	WatchdogClear();			
	if(Keypress)
      	 break;
		
		 temp = BitMap[i%16]&QuestionStatus_LQ[i/16];
		 
		if(temp)
		{
		 
		 	if (GetCategory(i) & Question_Type )
		 	{
		 		QuestionStatus_LQ[i/16] &=~BitMap[i%16];
		 		
		 	}
	
		}
	 
	     i++;	 
		 
	}
	
	
} */

//==================================================
//=================================================
/* unsigned int  Select_Question_Unique_Y(unsigned int Elementcnt)
{
    unsigned temp;
	unsigned i = 0;
	unsigned temp1 =0;
//	unsigned temp2=0;
   while(i<R_QuestionNum)
    {
	 if(Keypress)	
	 	  return ;
		
		 temp = BitMap[i%16]&QuestionStatus_LQ[i/16];
		  
		 if(temp)
		 {	 
		 	if (GetCategory(i) ==Unique )
		 	{
		 		if(Y==GetTableAnswer(Elementcnt,i))
				//	return i;
		 		  temp1+=1;
		 	}
		 }
	
	 
	     i++;
	     
	    WatchdogClear(); 	 
	}


   if(temp1)
   { 	
   	   temp1 =  *P_TimerB_CNTR%temp1;
   	   
   	      i=0;
   	      temp =0;
		   while(i<R_QuestionNum)
		    {
			 if(Keypress)	
			 	  return ;
						  
				 if(BitMap[i%16]&QuestionStatus_LQ[i/16])
				 {	 
				 	if (GetCategory(i) ==Unique )
				 	{
				 		if(Y==GetTableAnswer(Elementcnt,i))
				 		{
				             if(temp ==temp1 )
				             {
				             	return i;
				             	
				             }
				 		    temp++;
				 		}
				 	}
				 }
			
			 
			     i++;
			     
			    WatchdogClear(); 	 
			}
   	
   }



   return 0xffff;

}
 */
//================================================
/* unsigned int  Select_Question_Shard()
{
    unsigned temp;
	unsigned i = 0;
   while(i<R_QuestionNum)
    {
	 if(Keypress)	
	 	  return ;
		
		 temp = BitMap[i%16]&QuestionStatus_LQ[i/16];
		  
		 if(temp)
		 {	 
		 	if (GetCategory(i) ==Shared)
		 	{
		         return i;
		 		
		 	}
		 }
	
	 
	     i++;
	     
	    WatchdogClear(); 	 
	}

   return 0xffff;

} */

//===================================================
//====================================================
//void Add_Queston_Unique()
//{
//	unsigned temp;
//	unsigned i = 0;
//	while(i<R_QuestionNum)
//	{
//	  if(Keypress)	
//	 	 return;
//		
//		 temp = BitMap[i%16]&QuestionStatus_LQ[i/16];
//		  
//		 if(temp)
//		 {	 
//		 	if (GetCategory(i) ==Unique )
//		 	{
//		 		QuestionStatus_LQA[i/16] |=BitMap[i%16];
//		 		
//		 	}
//		 }
//	
//	 
//	     i++;
//	     
//	    WatchdogClear(); 	 
//	}
//		 
//}
//===================================================
//====================================================
//unsigned int Get_Queston_Unique_Num()
//{
//
//	unsigned temp = 0;
//	unsigned i = 0;
//	while(i<R_QuestionNum)
//	{
//		 if (BitMap[i%16]&QuestionStatus_LQA[i/16]) 
//		 {
//		 	
//		  if (GetCategory(i) ==Unique)	
//		       temp+=1;
//		 
//		 }
//		 i++;
//	}
//	return temp;
//}
	
	



/*************************************************************
**************************************************************/
unsigned  delay_time(unsigned T_cnt)
{

	TimeCnt =1;
	Time_Countdown = T_cnt;

	return Get_Key(1);


}




/*******************************************************
************************************************************
void Demo()
{
      unsigned int Demo_Qn;

//	  unsigned int answer_temp =0;
	  unsigned int Demo_points = 0;
	  unsigned int LQ_Demo = 0x07;
	  
//	    Qn =0;
        PassFlag =0;//xiang 20150727

		Soloflag =0;
		Round =0;
        
        
	    PassTimeCnt =0;
		PassTimeCnt_temp =0;
		Pressflag_temp =0;
		Pass_Key_temp =0;
		
        
	    Question_Answer=0;

		PlayScoresFlag =1;//不让报分数

	    BlinkFlag_Data =0;
		Light_all_off();

	   Eventflag = E_Demo;
      
//        gVolume+=2;

        Key_activeflag =0;
        BlinkFlag_Data = All_Led_data;

	    PlayA1800_Elements(SFX_On);


		BlinkFlag_Data =0;
		Light_all_off();
		//PlayA1800_Elements(VLHPQEN_Try03);
		
		//PlayA1800_Elements(VLHPQEN_Solo01);
		
		PlayA1800_Elements(VLHPQEN_Try01);


		//PlayA1800_Elements(VLFZEN3005);//VLFZEN027b
		//delay_time(8);
		//PlayA1800_Elements(VLFZEN_Rules);	
		
		BlinkFlag_Data = All_Led_data;
		PlayA1800_Elements(SFX_BeginningR1);
		BlinkFlag_Data =0;
		Light_all_off();


      //  temp_Qn = Demo_Qn;
		Demo_Qn=0;
		
     while(Demo_Qn<C_Demo_Q_N)//10
       {
           if(Sleepflag)
		   	   break;

	   #ifdef C_PassEn     //xiang 20150727
			 if(PassFlag)
			 	 break;
		#endif

		     //temp = Get_Registered_Player_Num(LQ_Demo);
		
	          gQuestionIdx = Demo_Qn;//Select_Questionrandom_Demo(*P_TimerB_CNTR%temp,LQ_Demo);

			  LQ_Demo&=~BitMap[gQuestionIdx];

			  Ask_Question();
			  
			  if(Demo_Qn==0)
			  	{
			  	   Key_activeflag = ALL_Key_Enable;
			  	   PlayA1800_Elements(VLHPQEN_Try02);
				   
			  	}
			  
			  Demo_Qn++;

			  Key_activeflag = ALL_Key_Enable;//Only_Play_KeyEnable;
			  Buzzer();

             if((Player_Activing_Bit ==0)&&((Key_Event&(Key_True|Key_False))==0))
             	{
				   Demo_points++;

             	}
			 else
			 	{
			 		
			 	if(Player_Activing_Bit ==0)
			 		Player_Activing_Bit = 0x8000;//无效	
			 
	              Answer_F();
				  if(Question_Answer == Right)
				  	{
	                    PlaySeries_Correct_Demo();

				  	}
				  else if(Question_Answer == Wrong)
				  	{

					  PlaySeries_Wrong_Demo();
					  //Demo_points++;

	                   
				  	}
				  else
				  	{

					   Demo_points++;

				  	}
			 	}
	   
        
            if((LQ_Demo==0)||(Demo_points>=2))
            	{
            		
            		delay_time(16);
            		Light_all_off();
            		PlayA1800_Elements(VLHPQEN_Try03);
            		
            		BlinkFlag_Data = All_Led_data;
                    PlayA1800_Elements(SFX_Victory);
                    
                    BlinkFlag_Data =0;
	             	Light_all_off();
                    
				
					//PlayA1800_Elements(VLHPQEN_Try02);
					break;

            	}

			
		

      }

		Eventflag =0;
		PassFlag =0;
}









//==================================================
//
//==================================================
/*************************************************************
*************************************************************/
unsigned Get_LQA(void)
{
	unsigned temp = 0;
	unsigned i = 0;
	while(i<R_QuestionNum)
	{
		 if (BitMap[i%16]&QuestionStatus_LQA[i/16]) temp+=1;
		 i++;
	}
	return temp;
}

//==================================================
//
//==================================================
unsigned Get_LQ(void)
{
	unsigned temp = 0;
	unsigned i = 0;
	while(i<R_QuestionNum)
	{
		 if (BitMap[i%16]&QuestionStatus_LQ[i/16]) temp+=1;
		 i++;
	}
	return temp;
}





/*************************************************************
*************************************************************/
unsigned int Get_Length_Pingame(void)
{
	unsigned temp = 0;
	unsigned i = 0;
	while(i<Registerd_Num)
	{
		 if (BitMap[i%16]&Pingame[i/16]) temp+=1;
		 i++;
	}
	return temp;
}


unsigned Select_Pingamerandom_4(unsigned Index)
{
	unsigned i= 0;
	unsigned j= 0;
	unsigned temp;

	while(i<Registerd_Num)
	{
		 temp = BitMap[i%16]&Pingame[i/16];
		 if (temp)
		 {
		 	if (j == Index) return i;
		 	j++;
		 }
		 i++;
	}
	return i;
}



/*************************************************************
*************************************************************/
unsigned int SelectNextPingame(unsigned cnt)
{
	unsigned temp = 0;
	unsigned i = 0;
	
	cnt++;
	if(cnt>=Registerd_Num)
		 cnt = 0;
	
	while(cnt<Registerd_Num)
	{
		 if(BitMap[cnt%16]&Pingame[cnt/16]) 
		 { 		       
		    //	temp+=1;
		    	
		   //if(cnt==temp)	
		       return cnt;	
	 	
		 }
		 cnt++;
		 
	    if(cnt==Registerd_Num)	 
		    {
		       cnt =0;	
		       //temp = 0;	
		    }
		 
	}
	return temp;
}

/*************************************************************
*************************************************************/
unsigned Select_Pingamerandom()
{
	unsigned i= 0;
	unsigned j= 0;
	unsigned temp1 =0;
	unsigned All_enable=0;
	unsigned Index=0;

	while(i<Registerd_Num)
	{
		 //temp = Pingame[i%16]&Pingame[i/16];
		 if(BitMap[i%16]&Pingame[i/16])
		 {
		     if(((BitMap[i%16]&Pselected[i/16])==0)||(All_enable==2))	
		 	 {
			 			 	
			 	  if(temp1)
			 	  {
			 	    if (j == Index) 
			 	    {
			 	        if(All_enable)	
			 	            Pselected[Player_Activing_Cnt/16]&=~BitMap[Player_Activing_Cnt%16];
			 	    	
			 	    	return i;
			 	     }
			 	  }
			 	j++;
		 	 }
		 }
		 i++;
		 
		 if(i == Registerd_Num)
		  {

               WatchdogClear();
			  
			     i=0;	
				 
			  	if(j)
			  	{			  	   
			  	   Index = *P_TimerB_CNTR %j;
			  	   j=0;
			  	   temp1 =1;
			  		
			  	}
			   else if(All_enable ==0)// Pingame = Pselected random
			      {
			      	   All_enable =1;
			      	  
			      	  Reset_Pselected();
			      	  Pselected[Player_Activing_Cnt/16]|=BitMap[Player_Activing_Cnt%16];	
			      	
			      	   
			      }	 
			    else if(All_enable ==1)
			      {
			      	   All_enable =2;
			      }  
			      else if(All_enable ==2) 
			      {
			      	   SetPingame();
			      	   Pselected[Player_Activing_Cnt/16]|=BitMap[Player_Activing_Cnt%16];	
			      } 
			      
		  }
		 
		 
	}
	return 0;
}



/*********************************************************************
************************************************************************/
void Supress_Question_Switch()
{
//	unsigned temp;
	unsigned i = 0;
	while(i<R_QuestionNum)
	{
	 	WatchdogClear();

	//	temp = BitMap[i%16]&QuestionStatus_LQA[i/16];//20170721 xiang
		 
	//	if(temp)
		{
		 
		 	if (GetSwitch(i) ==  C_Only_ON2 )
		 	{
		 		QuestionStatus_LQA[i/16] &=~BitMap[i%16];				
				QuestionStatus_Asked[i/16]&=~BitMap[i%16];//xiang 20160330
		 		
		 	}
	
		}
	 
	     i++;	 
		 
	}	
	
}
/*********************************************************************
************************************************************************/
void Supress_Question_CategoryLast2Cat()
{
	unsigned temp;
	unsigned i = 0;
	
	
	
	
	if(Last2Cat[0]!=Last2Cat[1])
		return ;
	
	if(Last2Cat[0]==0)
	   return ;
	
	Last2Catcnt=1;
	
	while(i<R_QuestionNum)
	{
	 	WatchdogClear();

       if(BitMap[i%16]&QuestionStatus_LQA[i/16])
       {
			temp = Get_Question_Category(i);//20170721 xiang
			 
	
			 
			 	if((temp ==  Last2Cat[0])||(temp ==  Last2Cat[1]))
			 	{
			 		QuestionStatus_LQA[i/16] &=~BitMap[i%16];				
				//	QuestionStatus_Asked[i/16]&=~BitMap[i%16];//| xiang 20160330
			 		
			 	}
	
       }
	 
	     i++;	 
		 
	}	
	
}

//==================================================
//SQ7_2
//==================================================
unsigned Select_Questionrandom_4(unsigned Index)
{
	unsigned i= 0;
	unsigned j= 0;
	unsigned temp;

	while(i<R_QuestionNum)
	{
		 temp = BitMap[i%16]&QuestionStatus_LQA[i/16];
		 if (temp)
		 {
		 	if (j == Index) return i;
		 	j++;
		 }
		 i++;
	}
	return i;
}



/**************************************************
*******************************************************/

unsigned Select_Question_ModeStatus_Other(unsigned Mode)//,小于等于 i_quality
{
	unsigned i= 0,j=0,temp1 =0,temp2 =0;//temp3=0;
	unsigned temp;

	unsigned int t_mode;



	while(i<R_QuestionNum)
	{

	    WatchdogClear();

		 //if(SelectOfLQA == 0)//C_SelectFromLQA
	     temp2 = BitMap[i%16]&QuestionStatus_LQA[i/16];
		 

		
		 if(temp2)		 	
		 {

             // t_status = GetStatus(i);
              t_mode =  Get_Question_Category(i);
			  //t_quality = GetQuality(i);
		 
		 	if (t_mode !=Mode)
		 		{

                  if(temp1)
                  	{
                      if(j==temp)
		 	    	    return i;

                  	}

				  j++;

		 		}
		 }
		 i++;

	  	  if(i == R_QuestionNum)
		  {

               WatchdogClear();
			  
			     i=0;	
				 
			  	if(j)
			  	{			  	   
			  	   temp = *P_TimerB_CNTR %j;
			  	   j=0;
			  	   temp1 =1;
			  		
			  	}
			  	
              else 
			  	{
			  		
			  		 return Select_Questionrandom_4(*P_TimerB_CNTR % LQA);
		
			  	  }
                    
			 } 	


		    }  
	 

	return Go_Rest();
}


/**************************************************
*******************************************************

unsigned Select_Questionrandom_Demo(unsigned Index,unsigned int lq_status)
{
	unsigned i= 0;
	unsigned j= 0;
	unsigned temp;

	while(i<C_Demo_Q_N)
	{
		 temp = BitMap[i%16]&lq_status;
		 if (temp)
		 {
		 	if (j == Index) return i;
		 	j++;
		 }
		 i++;
	}
	return i;
}




/**************************************************
*******************************************************

unsigned Select_Question_ModeStatus_Quality(unsigned Mode,unsigned int Q_dif_dis,unsigned int diff_int,unsigned Max_quality,unsigned int q_movies)//,小于等于 Max_quality unsigned int R_quality,
{
	unsigned i= 0,j=0,temp1 =0,temp2 =0;
	unsigned temp;

	unsigned int t_mode;
    unsigned int t_quality;


	unsigned int SelectOfLQA =0;


	while(i<R_QuestionNum)
	{

	    WatchdogClear();

		 //if(SelectOfLQA == 0)//C_SelectFromLQA
	     temp2 = BitMap[i%16]&QuestionStatus_LQA[i/16];
		 
//		 else if(SelectOfLQA == 1 )//only one mode
//			 {
//             		 
//				 //if(BitMap[i%16]&QuestionStatus_Asked[i/16])
//				//	 temp2 =0;
//				// else
//				    temp2 = BitMap[i%16]&QuestionStatus_LQA[i/16];
//				    Mode = 0xAA;//无效
//		 
//			 }




       if(temp2)//check difficult
        {
        	t_quality = GetDifficulty(i);
        
//          if((SelectOfLQA ==0)||(SelectOfLQA ==2))	
//          {
//          	if(t_quality!=R_quality)
//          	   temp2 =0;
//          }
          if((t_quality==Q_dif_dis)||(t_quality!=diff_int))
        		temp2 =0;
        	
        }



       if(temp2)//check quality
        {
        	t_quality = GetQuality(i);
        
//          if((SelectOfLQA ==0)||(SelectOfLQA ==2))	
//          {
//          	if(t_quality!=R_quality)
//          	   temp2 =0;
//          }
          if(t_quality!=Max_quality)
        		temp2 =0;
        	
        }

        if(temp2)//
         {
        	 if(GetMovies(i)==q_movies)
        	  {
        	 	 temp2 =0;
        	 	
        	  }        	   
          }
          		
		 if(temp2)		 	
		 {

             // t_status = GetStatus(i);
              t_mode =  Get_Question_Mode(i);
			  //t_quality = GetQuality(i);
		 
		 	//if((Mode==0xffff)||(Mode == t_mode)) 
		 	   if(t_mode&Mode)
		 		{

                  if(temp1)
                  	{
                      if(j==temp)
		 	    	    return i;

                  	}

				  j++;

		 		}
		 }
		 i++;

	  	  if(i == R_QuestionNum)
		  {

               WatchdogClear();
			  
			     i=0;	
				 
			  	if(j)
			  	{			  	   
			  	   temp = *P_TimerB_CNTR %j;
			  	   j=0;
			  	   temp1 =1;
			  		
			  	}
			  	
              else 
			  	{
			  		
			  		
			  		 SelectOfLQA++;
			  		 
			  	 // if((SelectOfLQA==2)||(SelectOfLQA >=4))	 
			  	  {
			  		
				  		 
				  		
				  		if(SelectOfLQA>=2)
				  		{
				  		  	return Select_Questionrandom_4(*P_TimerB_CNTR % LQA);
				  			
				  		 }
				  	   else
				  	    {				  		

	                        Rest_LQ_LQA();	
							 
							Sub_QuestionAsked();
				
							LQA = Get_LQA();	
		
							if(LQA==0)//xiang 20160318
							{
								 Rest_LQ_LQA();
			
							}
	                    
				  	   }
			  		
			  	  }
                    
			  	} 	


		     }  
	 
	  }


	return Go_Rest();
}


/**************************************************
*******************************************************

unsigned Select_Question_ModeStatus_Other(unsigned Mode,unsigned int R_quality,unsigned Max_quality)//,小于等于 i_quality
{
	unsigned i= 0,j=0,temp1 =0,temp2 =0;//temp3=0;
	unsigned temp;

	unsigned int t_mode;
    unsigned int t_quality;


	unsigned int SelectOfLQA =0;


	while(i<R_QuestionNum)
	{

	    WatchdogClear();

		 //if(SelectOfLQA == 0)//C_SelectFromLQA
	     temp2 = BitMap[i%16]&QuestionStatus_LQA[i/16];
		 
//		 else if(SelectOfLQA == 1 )//only one mode
//			 {
//             		 
//				 //if(BitMap[i%16]&QuestionStatus_Asked[i/16])
//				//	 temp2 =0;
//				// else
//				    temp2 = BitMap[i%16]&QuestionStatus_LQA[i/16];
//				    Mode = 0xAA;//无效
//		 
//			 }

//	   if(temp2)//check miroir	
//	    {
//
//	 		    t_mode = Get_Question_Miroir(i);	
//	 		    
//	 		   if(t_mode>0)  
//	 		   {
//		 		    for(temp3=0;temp3<3;temp3++)
//		 		    {
//		 		    	
//		 		    	 if(Que_Miroir[temp3]==t_mode)
//		 		    	 {
//		 		    	 	  temp2=0;
//		 		    	 	  break;
//		 		    	 }
//		 		    	 	
//		 		    	
//		 		    }
//	 		   }
//	 		    
//	    }


       if(temp2)//check quality
        {
        	t_quality = GetQuality(i);
        
          if((SelectOfLQA ==0)||(SelectOfLQA ==2))	
          {
          	if(t_quality!=R_quality)
          	   temp2 =0;
          }
          else if(t_quality>Max_quality)
        		temp2 =0;
        	
        }




		
		 if(temp2)		 	
		 {

             // t_status = GetStatus(i);
              t_mode =  Get_Question_Mode(i);
			  //t_quality = GetQuality(i);
		 
		 	if ((Mode &t_mode)==0) 
		 		{

                  if(temp1)
                  	{
                      if(j==temp)
		 	    	    return i;

                  	}

				  j++;

		 		}
		 }
		 i++;

	  	  if(i == R_QuestionNum)
		  {

               WatchdogClear();
			  
			     i=0;	
				 
			  	if(j)
			  	{			  	   
			  	   temp = *P_TimerB_CNTR %j;
			  	   j=0;
			  	   temp1 =1;
			  		
			  	}
			  	
              else 
			  	{
			  		
			  		
			  		 SelectOfLQA++;
			  		 
			  	  if((SelectOfLQA==2)||(SelectOfLQA >=4))	 
			  	  {
			  		
				  		 
				  		
				  		if(SelectOfLQA>=4)
				  		{
				  		  	return Select_Questionrandom_4(*P_TimerB_CNTR % LQA);
				  			
				  		 }
				  	   else
				  	    {				  		

	                        Rest_LQ_LQA();	
							 
							Sub_QuestionAsked();
				
							LQA = Get_LQA();	
		
							if(LQA==0)//xiang 20160318
							{
								 Rest_LQ_LQA();
			
							}
	                    
				  	   }
			  		
			  	  }
                    
			  	} 	


		     }  
	 
	  }


	return Go_Rest();
}

/****************************************************************
*********************************************************************/
unsigned int GameTimeout()
{
               unsigned int temp_Key_activeflag = Key_activeflag;
               
               
						  Key_activeflag =Playbutton;// Only_Play_KeyEnable;//
					      Key_Event =0;
						  
						  PlayA1800_Elements(A_VLMMREN_Bye_01);

					      delay_time(10*16);
	
                          if(Key_Event==0)
                          	{

                               PlayA1800_Elements(A_VLMMREN_Bye_02);
                               Sleepflag |=1;
                          	}
						   
                       Key_activeflag = temp_Key_activeflag;
                       Key_Event =0;
                       return 0xffff;

}


/***************************************************************
******************************************************************/
unsigned  Get_Registered_Player_Num(unsigned int temp)
{
	
	unsigned j = 0;
	unsigned i = 0;
	while(i<C_Player_Num)//C_Player_Num <16
	{
		 if (BitMap[i]&temp) //Registered_Play_Status
		    {
		     j+=1;
		    }
		   i++;
	}
	return j;
	
}

/***************************************************************
******************************************************************
unsigned int Get_EventNum(unsigned long event_temp)
{

		unsigned temp = 0;
		unsigned long temp1 =1;
		unsigned i = 0;
		while(i<ALL_EvnetNum)//C_Player_Num <16
		{
			 if(temp1&event_temp) 
				{
				 temp+=1;
				}
			   i++;
			   temp1 = (unsigned long)1<<i;
		}
		return temp;


}
/***************************************************************
******************************************************************
unsigned int Get_Event_F(unsigned long event_temp,unsigned int cnt)
{

    	unsigned j = 0;
		unsigned i = 0;
		unsigned long temp1 =1;
		while(i<ALL_EvnetNum)//C_Player_Num <16
		{
			 if(temp1&event_temp) 
				{
                  if(j == cnt)
				  	 return i;
				
				    j+=1;
				}
			   i++;
			   temp1 = (unsigned long)1<<i;
		}
		return 0xffff;

}
/***************************************************************
******************************************************************/


/***************************************************************
******************************************************************/
unsigned Get_LedDate_From_Play(unsigned temp_Player)
{
	unsigned temp = 0;
	unsigned i = 0;
	while(i<C_Player_Num)//C_Player_Num <16
	{
		 if (BitMap[i]&temp_Player) //Registered_Play_Status
		    {
		     temp|=Led_Data_Play[i];
		    }
		   i++;
	}
	return temp;

}



unsigned Get_Firstcnt_From_Play(unsigned temp_Player)
{
	
	unsigned i = 0;
	while(i<C_Player_Num)//C_Player_Num <16
	{
		 if (BitMap[i]&temp_Player) //Registered_Play_Status
		    {
		     return i;
		    }
		   i++;
	}
	return Go_Rest();

}


unsigned Get_FirstBit_From_Play(unsigned temp_Player)
{
	
	unsigned i = 0;
	while(i<C_Player_Num)//C_Player_Num <16
	{
		 if (BitMap[i]&temp_Player) //Registered_Play_Status
		    {
		    // Player_Activing_Cnt =i;	
		     return BitMap[i];
		     
		    }
		   i++;
	}
	return Go_Rest();

}




/*************************************************************
*************************************************************/
unsigned  Select_Registered_Player_Random(unsigned int Index,unsigned register_status)
{
  	unsigned i= 0;
	unsigned j= 0;
	unsigned temp;

	while(i<C_Player_Num)//C_Player_Num <16
	{
		 temp = BitMap[i]&register_status;//Registered_Play_Status;
		 if (temp)
		 {
		 	if (j == Index) 
		 	   {
		 	   	//Player_Activing_Cnt = i;
		 	    return i;//BitMap[i];//i;
		 	    
		 	   }
		 	    j++;
		 }
		 i++;
	}
	return 0xffff;
	
}

/***********************************************
*******************************************************
unsigned int Get_Actived_Play_Three_Same()
{

      unsigned int i;

	  for(i = 0;i<2;i++)
	  	{

            if((Player_Actived_three[i]==0)||(Player_Actived_three[i]=Player_Actived_three[i+1]))
              {
                 return 0;

              }

	  	}

	  return 1;


}





}


/*****************************************************
******************************************************
void Save_Question_Asked_Lastcycle()
{
   
   unsigned int i;

   for(i=0;i<5;i++)
   	{
	 if(Question_Asked_Lascycle[i] == 0xffff)
	 {
	     Question_Asked_Lascycle[i]=gQuestionIdx;
	     break;
	     
	 }

   	}
		
}

/*****************************************************
******************************************************/
void Save_Question_CategoryMemory()
{
   
   unsigned int i;

   for(i=0;i<C_RoundNum;i++)
   	{
	 if(LastCategory_Series[i] == 0)
	 {
	     LastCategory_Series[i]=Get_Question_Category(gQuestionIdx);
	     break;
	     
	 }

   	}
		
}

/*****************************************************
******************************************************/
unsigned int  Get_Num_CategoryMemory()
{
   
   unsigned int i;
   unsigned int temp=0;

   for(i=0;i<C_RoundNum;i++)
   	{
	  if(LastCategory_Series[i] != 0)
	   {
	     temp++; 
	   }

   	}
	return 	temp;
}

/*****************************************************
******************************************************

void Get_Queston_Lastcycle()
{
     if(Qu_Lastcycle_cnt>=5)
     {
       gQuestionIdx = 0xffff;
     }
    else
       gQuestionIdx = Question_Asked_Lascycle[Qu_Lastcycle_cnt++];


    

}

/*****************************************************
******************************************************
void Save_Question_Answered_Three(unsigned int question)
{
   unsigned int i;

   for(i=0;i<3;i++)
   	{
      if(ThreeQuestion[i] == 0xffff)
      	{
           ThreeQuestion[i] = question;
           
           ThreeQuestion_Temp[i] = question;
           break;
      	}
   	}
   
  // Save_Question_Answered_ThreeRound1();


   if(Roundingfalg == Rounding1)
  	{

	   for(i=0;i<3;i++)
	   	{
	      if(ThreeQuestionRound1[i] == 0xffff)
	      	{
	           ThreeQuestionRound1[i] = question;
	           break;
	      	}
	   	}

  	}


}



unsigned int Get_Question_Asked_Three(unsigned int Buffer[])
{
	
    unsigned int i;	
    
    for(i=0;i<3;i++)
   	{
      if(Buffer[i] == 0xffff)
      	{
           return 0;
      	}
   	}

	return 1;


}

/*****************************************************
******************************************************
void Save_Question_Answered_ThreeRound1(unsigned int question)
{
   unsigned int i;

  if(Roundingfalg == Rounding1)
  	{

	   for(i=0;i<3;i++)
	   	{
	      if(ThreeQuestionRound1[i] == 0xffff)
	      	{
	           ThreeQuestionRound1[i] = question;
	      	}
	   	}

  	}
   
}





/*****************************************************
******************************************************
unsigned  Select_Question_Three_Random()
{
   unsigned int i,j=0,k=0;
   unsigned int temp;



   if(Cheater_SeletQu_Flag)
   	{

      Get_Queston_Lastcycle();
      
     if(gQuestionIdx!=C_Finish) 
	       return gQuestionIdx;

   	}




   for(i=0;i<3;i++)
   	{
      if(ThreeQuestion_Temp[i] != 0xffff)
      	{
           j++;
      	}
   	}
   	
   if(j==0)
   {
   	
	   	for(i=0;i<3;i++)
	   	{
	      ThreeQuestion_Temp[i] =  ThreeQuestion[i];	  
	   	}
	   	
		  for(i=0;i<3;i++)
		   	{
		      if(ThreeQuestion_Temp[i] != 0xffff)
		      	{
		           j++;
		      	}
		   	}	
	   	
   }
   	 

   if(j>0)
   	{
       k=0;
       j= *P_TimerB_CNTR%j;
       
       
	    for(i=0;i<3;i++)
	   	{
	      if(ThreeQuestion_Temp[i] != 0xffff)
	      	{
	      	   if(k==j)	
	      	   {
	      	   	  temp = ThreeQuestion_Temp[i];
	      	   	  ThreeQuestion_Temp[i] = 0xffff;
	      	      return temp;
	      	      
	      	   }
	      		
	           k++;
	      	}
	   	}
   		
       
       


   	}


   return 0xffff;
     


}





/*****************************************************
******************************************************/
void Save_Question_Cycle(unsigned int temp)
{
   unsigned int i;

   for(i=0;i<3;i++)
   	{
      QuestionCycle[i] = QuestionCycle[i+1];
   	}
   
   QuestionCycle[3] = temp;
     
}


/*****************************************************
******************************************************
void Save_Active_Player(unsigned int temp)
{
   //unsigned int i;
   
   if(Pre_Active_Player_Update)
   {
   	  Pre_Active_Player_Update =0;
   //	for(i =0;i<5;i++)
		{
		 Pre_Active_Player=Cur_Active_Player;
         Cur_Active_Player =0;
		}
		
   }
   
  // for(i=0;i<4;i++)
  // 	{
  //    Cur_Active_Player[i] = Cur_Active_Player[i+1];
  // 	}
   
    Cur_Active_Player|= temp;
     
}







/**************************************************************
********************************************************
unsigned Select_Question_NormalRaund2or3()//unsigned Round3flag
{

   unsigned int Key_E_Temp =0;
   unsigned int Key_activeflag_temp =0;
   unsigned int buffer_temp =0;
   unsigned int temp=0;

    
     Speed_BonusFlag =0;
     HattickOrOffside_Flag =0;

  // if(CheaterFlag==0)
   	{
   	
		 Select_Question();
	    


   	}
   // CheaterFlag =0;
   
    Key_Event =0;

//	Player_Activing_Bit =0;
    
//	if(!Round3flag)
//	   Key_activeflag = Registered_Play_Status;
//	else
		Key_activeflag =0;
		
		
		
    Key_activeflag_temp = Registered_Play_Status&(~Dis_Player);
    Dis_Player=0;	

  if(Eventflag==0)
       Save_Question_Cycle(Normal_Cycle);
  
  
   delay_time(8);
  
  
    TimeCnt_Speed =0;
    Key_Buffer=0;
    Key_buffer_First =0;
    
    

   do
   	{
   		
		    Key_Event =0;
		    Key_activeflag =0;
			PlayQuestionflag =1;
		
		//	AnswerDuringQue =0;
			PauseFlag =0;
		
			//TwoKeyflag =Key_False;
			
		    Ask_Question();
		//	AnswerDuringQue = Key_Event;
		
		    
		    if(PauseFlag)
				continue;
		    
		   if(Cheater_SeletQu_Flag ==0)
		     	buffer_temp = Key_buffer_First;
   	

		    Key_activeflag_temp&=(~buffer_temp);
	    
		    PlayA1800_Elements(SFX_Whistle2);
		
//		     if(buffer_temp)
//		     {
//		          //Speed_BonusFlag =1;
//		         
//		           BlinkFlag_Data =0;
//			       Light_all_off();
//			       
//			       Player_Activing_Bit =  buffer_temp;
//			       Player_Activing_Cnt =Get_Firstcnt_From_Play(Player_Activing_Bit);
//			       Key_Event =0;	       
//			       Speed_penalty();
//		          return C_SelectQuestion_Round2;
//		     }
		     
         TimeCnt_Speed =0;
		 FiveSec_cnt =0;
		 
		if((OffSide_Askflag==0)&&(Cheater_SeletQu_Flag ==0))
		{
			
		    Key_activeflag = Key_activeflag_temp|Key_True|Key_False;//Registered_Play_Status ALL_Key_Enable;//Key_activeflag_temp&(~buffer_temp);
		    BlinkFlag_Data = Get_LedDate_From_Play(Key_activeflag_temp);
		
		   
//		     if(Round3flag)
//		        PlayA1800_Elements(SFX_Ding);
//			else
			    PlayA1800_Elements(SFX_TicTac);//
		   
	   while(Key_Event &(Key_True|Key_False))//Key_activeflag&(~Key_activeflag_temp)
	      {
	       
	    	Key_Event =0;
	    	
	    	temp = FiveSec_cnt;
	    	PlayA1800_Elements(VLFZEN400); 
	        FiveSec_cnt = temp ;

	        FiveSec_En =1;

		    
	    	PlayA1800_Elements(SFX_TicTac);//10s
			FiveSec_En =0;
	     }  
		    
		    
		    
		    
			BlinkFlag_Data =0;
			Light_all_off();
		 } 

   	  }
         while(PauseFlag);

	PlayQuestionflag =0;
	//TwoKeyflag =Key_False;
	if((OffSide_Askflag)||(Cheater_SeletQu_Flag))
	{
		Key_Event = Player_Activing_Bit;
		
		TimeCnt_Speed = C_SpeedTime;//no speed
		
	}

     Player_Activing_Bit =0;
	
	if(Key_Event)
		{

		    Key_E_Temp = Key_Event;
		    Key_Event =0;	
			
			  if(TimeCnt_Speed < C_SpeedTime)
              	{
                     Speed_BonusFlag =1;
              	}
						
//						delay_time(8);
//
//						if(Key_Event)
//							{
//
//                             if(Key_Event!=Key_E_Temp)
//                             	{
//                                    Key_Event =0;
//                                    Key_activeflag = Key_True|Key_False;
//                                    PlayA1800_Elements(SFX_Whistle);
//									PlayA1800_Elements(SFX_Crowd);
//									PlayA1800_Elements(VLFZEN605);
//
//								    PlayA1800_Elements(VLFZEN606);
//									PlayA1800_Elements(ZZB_VLHPQEN_Blue_B +Get_Firstcnt_From_Play(Key_E_Temp));
//                                    PlayA1800_Elements(VLFZEN607);
//                             	}
//                               else
//                                 Key_Event =0;
//							}
           
		 
		  Player_Activing_Bit = Key_E_Temp;	
          Save_Active_Player(Player_Activing_Bit);

//          Save_Actived_Three(Player_Activing_Bit);

		  Player_Activing_Cnt =Get_Firstcnt_From_Play(Player_Activing_Bit);
		 		 
//		 if(Speed_BonusFlag)	
//		  {
//		  	 if((*P_TimerB_CNTR%10)<2)
//		  	  {
//		  		 Free_Kick(Key_E_Temp);
//		  		
//		  	  }
//		  	
//		  }
						        
          BlinkFlag_Data = Led_Data_Play[Player_Activing_Cnt];

		  Key_activeflag = Key_True|Key_False;
	
		if(OffSide_Askflag==0)
		{	  
            PlayA1800_Elements(SFX_Button);
            PlayA1800_Elements( B_VLHPQEN_Blue +Player_Activing_Cnt);
            
             if((firstFlag_23b&0x100)==0)
             {
             	firstFlag_23b|=0x100;
             	PlayA1800_Other(Random_Everybody);
             }
            
            
		}

//		 if(Round3flag)
//            PlayA1800_Elements(SFX_TicTac_5S);
//		 else
             PlayA1800_Elements(SFX_TicTac_5S);//10S

		//  BlinkFlag_Data =0;
		//  Light_all_off();

		}

			OffSide_Askflag =0;
		

	 if((Eventflag == N_Event12)||(Eventflag == N_Event14))
	 	{
	 	 BlinkFlag_Data =0;
		 Light_all_off();

          Key_Event|=Key_E_Temp;//Key_True|Key_False;//play按键清掉
		 
	 	  return 0;
	 	}
	
	
	if((buffer_temp==0))//||(Speed_BonusFlag))
	     Key_Event_Process(0);
	else 
	  {
	  	
	  	   Key_Event_Process(1);
	  	   
	  	   	BlinkFlag_Data =0;
			Light_all_off();
	
		  if(CheaterFlag==0)
		  {		       
				//Player_Activing_Bit =  buffer_temp;
				//Player_Activing_Cnt =Get_Firstcnt_From_Play(Player_Activing_Bit);
			    Key_Event =0;	       
				Speed_penalty(buffer_temp);
		  }
	  	   
	  }

	   if(Sleepflag)
	   	  return  C_Finish;

//	 if(Round3flag)
//	 	{
//          return C_SelectQuestion_Round3;
//	 	}
//	 else
           return C_CheckCn;
	
	
}



/***********************************************************************
*************************************************************************

unsigned Select_Question_Normal(void)
{



	    Select_Question();
	    
		
		if(Cheater_SeletQu_Flag ==0)
			{
		      //Player_Activing_Bit = Select_Player_Random(Registered_Play_Status&(~Player_Activing_Bit));

                Select_Player_Random_Round1();
	
			}
		
		


   //CheaterFlag =0;
  
//    Last_Last_QuestionCycle = Last_QuestionCycle;
//    Last_QuestionCycle = Normal_Cycle;

    if(Eventflag==0)
       Save_Question_Cycle(Normal_Cycle);

	Key_activeflag =0;
	Key_Event =0;
	
	Key_Buffer =0;
   

   do
   	{
   	
	PlayQuestionflag =1;
	PauseFlag =0;
	//TwoKeyflag =Key_False;
	
    BlinkFlag_Data =0;
	Light_all_off();

	
    Ask_Question();

	if(PauseFlag)
		continue;

   //TwoKeyflag =0; 
    
   // Qn++;

   // temp = Registered_Play_Status&(~Player_Activing_Bit);
	
  
    // Save_Active_Player(Player_Activing_Bit);
    
    

	Key_activeflag = Player_Activing_Bit|Key_True|Key_False;
    
    BlinkFlag_Data =  Led_Data_Play[Player_Activing_Cnt];
    
    delay_time(8);
    
    PlayA1800_Elements( B_VLHPQEN_Blue +Player_Activing_Cnt);//ZB_VLHPQEN_Blue_B
    
    PlayA1800_Other(Random_Everybody);
    
    FiveSec_cnt =0;
    PlayA1800_Elements(SFX_TicTac_5S);


	 while(Key_Event &(Key_True|Key_False))
      {
		   
		   Key_Event =0;
	//	   PlayA1800_Elements(VLFZENINSTRUC);
		   FiveSec_cnt =0;
		   PlayA1800_Elements(SFX_TicTac_5S);

      }

	}
   while(PauseFlag);
   PlayQuestionflag =0;



   

   //if(Key_Event == Player_Activing_Bit)
   	{
   	   // Save_Active_Player(Player_Activing_Bit);
	    while(Key_Event == Player_Activing_Bit)
	    {
	        Key_activeflag = Player_Activing_Bit|Key_True|Key_False;
	    	Key_Event =0;
	    	PlayA1800_Elements(SFX_Button); 

	        FiveSec_En =1;

		    
	    	PlayA1800_Elements(SFX_TicTac_5S);
			FiveSec_En =0;
	    }
   	}

   
    	Key_Event_Process(0);

       if(Sleepflag)
	   	  return  C_Finish;
	
        return C_CheckCn;

}	



/***********************************************************************
*************************************************************************/
#if 0
unsigned   Select_Question_Special()
{
    unsigned long int Long_temp;
	unsigned long int Long_temp1 =0;
    unsigned int temp =0;
	unsigned int ResetEventList =0;

//	unsigned int i;


	void (*P_Event)(void);

	WatchdogClear();
	

	Key_Event =0;
	Eventflag =0;
	
/////////////////////////////////////////////////////////////////////demo




				   if(Cheater_SeletQu_Flag)
				   	   Event_cnt = Special_temp;

                   else if(Event_cnt>=3)
                     {
                       //Event_cnt =0;  
                        return 2;
                       
                      }
                   
                    Special_temp = Event_cnt;
				    P_Event =(void *)Event_F[Event_cnt++];
                   
				 
					//CheaterFlag =0;
					Eventflag =0;
                    (*P_Event)();  


                    Long_temp = ~((unsigned long int)1<<temp);
					Event_List&= Long_temp; 
					R_Event_AddTo&= Long_temp;

					//R_Event_AddTo&= ~((unsigned long int)1<<temp); 
                   // Last_Last_QuestionCycle = Last_QuestionCycle;
					//Last_QuestionCycle = Special_Cycle;
					
					if(Eventflag)
						{
                       //   Pre_Event = (unsigned long int)1<<temp;
						  Event_ThisGame|=(unsigned long int)1<<temp;
					      Save_Question_Cycle(Special_Cycle);
						  return 1;
						}


	
////////////////////////////////////////////////////////////////////	
	

  if(Cheater_SeletQu_Flag==0)
  	{

     if(Event_List == 0)
         Event_List = Event_List_Init&(~Event_ThisGame);

      if(Event_List == 0)
      	{	
      	  if(R_Event_AddTo ==0)
             R_Event_AddTo = Event_AddTo;	
      		
	 	  Event_List = R_Event_AddTo;//Event_List_Init;//Event1|Event2;//
	 	  ResetEventList =2;
	 	 // Event_List&=~Pre_Event;
		  

      	}
      	
    Long_temp = Event_List;		
    while(1)
    {
      	if(Sleepflag)
			return 0;
    
      
//	 if(Roundingfalg == Rounding3)
//	 	{
//           Long_temp &=~(Round1_Events_Only|Round2_Events_Only|Round1_2_Events);
//
//
//		   if(ResetEventList)
//		   	   Long_temp|= (Event_List&Event1);
//    
//
////            if(Registerd_Num<3)
////				Long_temp&=~Event14;
//
////           if(Get_Question_Asked_Three(ThreeQuestionRound1)==0)
////                    Long_temp&=~Event18;
//
//            Get_Num_Higgest_score(Registered_Play_Status);
//            if(Registered_Play_Status == Leader_Player)
//				 Long_temp&=~Event18;
//
//
//			if(QuestionCycle[3] == Special_Cycle)
//				{
//
//                   Long_temp&=~(Event10);
//				}
//		
//               if(Player_Activing_Bit)
//				   Long_temp&=~(Event10);//Event11
//
//
//
////                Long_temp1 = 0;
////
////
////                if(Long_temp&Event10)
////			 	{
////
////                    Long_temp1 |=Event10;
////			 	}
////			   if(Long_temp&Event18)
////			 	{
////
////                     Long_temp1 |=Event18;
////			 	}
////
////               if(Long_temp1)
////               	{
////
////                  Long_temp = Long_temp1;
////
////               	}
//
//							
//
//	 	}
	 //if(Roundingfalg == Rounding2)
	 	{
          // Long_temp &=~(Round1_Events_Only|Round3_Events_Only);


//           if(QuestionCycle[3] == Special_Cycle)
//           	{
//               Long_temp&=~(Event5|Event10);//|Event16|Event17|Event11
//			  // Long_temp&=~Event10;
//           	}
 

//             temp = Registered_Play_Status;
//
//             //for(i=0;i<5;i++)
//             	{
//                  temp = temp&(~(Cur_Active_Player));
//				  temp = temp&(~(Pre_Active_Player));
//                  
//             	}
//
//
//			if(temp ==0)
//				Long_temp&=~Event3;
					
				if(Question_Answer != Right) 
				     Long_temp&=~Event5;
				
//                if(Player_Activing_Bit)
//				   	   Long_temp&=~(Event10);//|Event11


                    
              if(Registerd_Num<3)
				  Long_temp&=~(Event7|Event115);//|Event22 Event12
			 else
	           	{


				  if(Get_MiddleScore_Play()==0)
	                  Long_temp&=~Event115;  

			    }

             Long_temp1 =0;
			 
           //  if(Long_temp&Event3)
			// 	{

            //        Long_temp1 |=Event3;
			// 	}


			 if(Long_temp&Event5)
			 	{

                   Long_temp1 |=Event5;
			 	}
			  if(Long_temp&Event7)
			 	{

                    Long_temp1 |=Event7;
			 	}

			   if(Long_temp&Event115)
			 	{

                    Long_temp1 |=Event115;
			 	}


			  if(Long_temp1)
			  	{
			  	  Long_temp = Long_temp1;

			  	}


	 	}
	 /* else if(Roundingfalg == Rounding1)
	 	{
           Long_temp &=~(Round2_Events_Only|Round3_Events_Only|Round2_3_Events);



           if(Registerd_Num<3)
				Long_temp&=~(Event15|Event20);
           else
           	{
		     // if(Get_Question_Asked_Three() ==0)
		          if(Qn<3)
		   	         Long_temp&=~Event15;

			  if(Get_MiddleScore_Play()==0)
                  Long_temp&=~Event15;  

		    }
		   	


		    if(QuestionCycle[3] == Special_Cycle)
           	{
               Long_temp&=~Event5;
           	}
            else 
            	{
				if(Question_Answer != Right) 
				     Long_temp&=~Event5;
            	}

	 	}
 */
           //Long_temp &=~Pre_Event;
    
			temp = Get_EventNum(Long_temp);
			if(temp == 0)
				{

				   if(ResetEventList ==0)
				   	{
                     //Event_List |= R_Event_AddTo;//Event_List_Init; 
                     
                       
                         Long_temp  = Event_List_Init&(~Event_ThisGame);
                         Event_List = Event_List_Init&(~Event_ThisGame);
						 
					// Event_List&=~Pre_Event;
					    ResetEventList =1;
				   	}

                   else if(ResetEventList ==1)
				   	{
				   	   if(R_Event_AddTo ==0)
                      	   R_Event_AddTo = Event_AddTo;
                     
                         Long_temp = R_Event_AddTo;	
				   	}
				   	else 
					    return 2;
					  	
					  

				}
			else
			   break;

    	}
  	}
  else
  	  temp =1;


  
			if(temp)//
				{
				  if(Cheater_SeletQu_Flag==0)
				  	{
		                   temp = *P_TimerB_CNTR % temp;

						   temp = Get_Event_F(Long_temp,temp);

						   if(temp == 0xffff)
						   	  return 0;

		                #ifdef C_Findbug
		                
		                  	if(Roundingfalg == Rounding1)
		                        temp =testqueRound1[Qn-1]-1; 
		                    else if(Roundingfalg == Rounding2)
		                       temp =testqueRound2[Qn-1]-1; 
		                #endif
				  	}
				   else
				   	  temp = Special_temp;
             
				    P_Event =(void *)Event_F[temp];
                    Special_temp = temp;
				 
					//CheaterFlag =0;
					Eventflag =0;
                    (*P_Event)();  


                    Long_temp = ~((unsigned long int)1<<temp);
					Event_List&= Long_temp; 
					R_Event_AddTo&= Long_temp;

					//R_Event_AddTo&= ~((unsigned long int)1<<temp); 
                   // Last_Last_QuestionCycle = Last_QuestionCycle;
					//Last_QuestionCycle = Special_Cycle;
					
					if(Eventflag)
						{
                       //   Pre_Event = (unsigned long int)1<<temp;
						  Event_ThisGame|=(unsigned long int)1<<temp;
					      Save_Question_Cycle(Special_Cycle);
						  return 1;
						}
					  
                     
				      
					
				}
               //temp ==0

		  
		  return 0;
		  	
						
	
}
#endif
/*****************************************************
***************************************************************/

//==================================================
//SQ22 + SQ32
//==================================================
//void Remove_Elements(unsigned lQuestionIdx, unsigned Answer0, unsigned Answer1)
//{
//	unsigned i = 0;
//	unsigned temp = 0;
////	unsigned long Addr = 0;
//	while(i<R_ElementsNum)
//	{
//		temp = GetTableAnswer(i,lQuestionIdx);
//		if ((temp==Answer0)||(temp==Answer1))
//		{
//			ElementsStatus[i/16]&=~BitMap[i%16];		//suppress Ex from LS;
//		}
//		i++;
//	}
//}
//===========================================================
//=====================================================


//==============================================
//================================================
/*
void Get_Player_Higgest_score()
{
	unsigned i = 1;
	unsigned j = 0;

    int Higgest_T =Player_Point[0];
	
	while(i<C_Player_Num)
	{

	   if(BitMap[i]&Registered_Play_Status)
	   	{
			   if(Player_Point[i]>Higgest_T)
			   {
			   	  Higgest_T = Player_Point[i];
				  j = i;
			   }
	   	}
	   
	   i++;
	}

    return j;
  
}
*/

/*****************************************************
*******************************************************
unsigned int Get_MiddleScore_Play()
{

    unsigned int temp;//,temp2;

	   temp = Get_Num_Lowest_score(Registered_Play_Status);
     if(temp ==0) 
     	{

   	       return 0;
     	}
	
      temp = Get_Num_Higgest_score(Registered_Play_Status);
     if(temp ==0) 
     	{

   	       return 0;
     	}

//sec highest
//	 temp2 = Registered_Play_Status &(~Leader_Player);
//     temp = Get_Num_Higgest_score(temp2);
//     if(temp ==0) 
//   	   {
//	   	    return 0;
//     	}
//
//
//	  if(Leader_Player ==Lowest_Player)
//           return 0;

	   temp = Registered_Play_Status&(~(Leader_Player|Lowest_Player));
	
		 if(temp ==0)
		    return 0;
	  
	  
	  
     return 1;

}

/*****************************************************
*******************************************************/
unsigned int Get_Num_Bigscore( int *roundsORpoint,  int score,unsigned int Play_status )//unsigned int* BitTable
{
	unsigned i = 0;
	unsigned j = 0;

	
    while(i<C_Player_Num)
    	{
         	 if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))
	    	  {
			   if(roundsORpoint[i]>=score)
			   {
				  j++;
			   }
	    	}
	       i++;

    	}

    return j;
  
}


/*****************************************************
*******************************************************/
unsigned int Get_All_SameNum( int *roundsORpoint,  int score,unsigned int Play_status )//unsigned int* BitTable
{
	unsigned i = 0;


    while(i<C_Player_Num)
    	{
         	 if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))
	    	  {
			   if(roundsORpoint[i]==score)
			   {
				  
			   }
			   else 
			      return 0; 
			   
	    	}
	       i++;

    	}

    return 1;
  
}

/*****************************************************
*******************************************************/
unsigned int Get_Num_Higgest_score( int *roundsORpoint, unsigned int Play_status )//unsigned int* BitTable
{
	unsigned i = 0;
	unsigned j = 0;

     Higgest_T =0x8000;

	Leader_Player =0;
	
	while(i<C_Player_Num)
	{
	    if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))
	    	{
			   if(roundsORpoint[i]>Higgest_T)
			   {
			   	  Higgest_T = roundsORpoint[i];
				 // j = i;
			   }
	    	}
	   
	   i++;
	}

    i=0;
    while(i<C_Player_Num)
    	{
         	 if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))
	    	  {
			   if(roundsORpoint[i]>=Higgest_T)
			   {
			   	  Leader_Player |= BitMap[i]; 
				  j++;
			   }
	    	}
	       i++;

    	}

    return j;
  
}



unsigned int Get_Num_Lowest_score(int *roundsORpoint,unsigned int Play_status )//unsigned int Play_status
{
	unsigned i = 0;
	unsigned j = 0;
	//unsigned k =0;
	
     Lowest_T =0x7fff;
     Lowest_Player =0;
	
	while(i<C_Player_Num)
	{
	      if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))
	    	{
			   if(roundsORpoint[i]<Lowest_T)
			   {
			   	  Lowest_T = roundsORpoint[i];
				  //k= i;
			   }
	    	}
	   
	   i++;
	}

// if(PlayScoresFlag)
 {
    if(Lowest_T<0)
       Lowest_T =0;
 }


    i=0;
    while(i<C_Player_Num)
    	{
         	if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))
	    	  {
			   if(roundsORpoint[i]<=Lowest_T)
			   {
			   	  Lowest_Player |= BitMap[i]; 
				  j ++;
			   }
	    	}
	       i++;

    	}

    return j;


  
}


unsigned int checksamescore(unsigned int Play_status )
{
	
     unsigned int i = 0;   
     unsigned int cnt =0;
	 int point =0;
	 
	while(i<C_Player_Num)
	{
	      if(BitMap[i]&Play_status)//if(BitMap[i%16]&*(BitTable+i/16))
	    	{
			   if(Player_Point[i]!=point)
			   {
			   	  point = Player_Point[i];
				  cnt++;
				  
				  if(cnt>1)
				  	 break;
			   }
	    	}
	   
	   i++;
	}
	
	if(cnt>1)
		return 0;
	
	return 1;
	
	
}

/********************************************************************
*************************************************************************
void Sub_Player_Point(unsigned PlayerIdx, int point)
{
     #ifdef C_PassEn	
			 if(PassFlag)
				 return;
	#endif	
	
	

   	Player_Point[PlayerIdx]-=point;	

   if(Player_Point[PlayerIdx]<0)
   	   Player_Point[PlayerIdx] =0;

}




//=============================================
void Add_Player_Point(unsigned PlayerIdx, int point)
{
//     if(AnswerDuringQue)
//	 	Player_Point[PlayerIdx]+=3;

   	#ifdef C_PassEn	
			 if(PassFlag)
				 return;
		#endif

//     if(Eventflag == N_Event7)
//	   Player_Point[PlayerIdx]+=4;
//    else if((Eventflag == N_Event1)||(Eventflag == N_Event4))
//       Player_Point[PlayerIdx]+=2;
//	else if(Eventflag == N_Event2)
//		Player_Point[PlayerIdx]+=3;
//	else
	   Player_Point[PlayerIdx]+=point;		

}



//=============================================
void Add_ALL_Player_Point(int point)
{


	unsigned i = 0;
	
	  #ifdef C_PassEn	
			 if(PassFlag)
				 return;
	 #endif
	
	
	
	while(i<C_Player_Num)//C_Player_Num <16
	{
		 if (BitMap[i]&Registered_Play_Status) //Registered_Play_Status
		    {
		      Player_Point[i]+=point;
		    }
		   i++;
	}
 		

}
/********************************************************************
*************************************************************************/

//=============================================
void Add_SomePlayer_Point(int point,unsigned int *roundORpint,unsigned int* BitTable )//unsigned int Players
{


	unsigned i = 0;
	
	  #if C_PassEn	
			 if(PassFlag)
				 return;
	 #endif
	
	
	
	while(i<C_Player_Num)//C_Player_Num <16
	{
		 if (BitMap[i%16]&*(BitTable+i/16))//if (BitMap[i]&Players) //Registered_Play_Status
		    {
		      roundORpint[i]+=point;
		      
		       //if(Player_Point[i]<0)
   	           //    Player_Point[i] =0;
		      
		    }
		   i++;
	}
 		

}


/********************************************************************
*************************************************************************/

//=============================================
void Add_ALL_InactivePlayer_Point(int point,unsigned int *roundORpint,unsigned int* BitTable )//(int point)
{


	unsigned i = 0;
	
	  #if C_PassEn	
			 if(PassFlag)
				 return;
	 #endif
	
	
	
	while(i<C_Player_Num)//C_Player_Num <16
	{
		   if (BitMap[i]&Registered_Play_Status) //Registered_Play_Status
		    {
		    	
		        if(i!=Player_Activing_Cnt)//if ((BitMap[i%16]&*(BitTable+i/16))==0)//if((BitMap[i]&Player_Activing_Bit)==0)	
		            roundORpint[i]+=point;
		    }
		   i++;
	}
 		

}

//=============================================
void Sub_ALL_InactivePlayer_Point(int point,unsigned int Player_buffer)
{


	unsigned i = 0;
	
	  #if C_PassEn	
			 if(PassFlag)
				 return;
	 #endif
	
	
	
	while(i<C_Player_Num)//C_Player_Num <16
	{
		 if (BitMap[i]&Player_buffer) //Registered_Play_Status
		    {
		    	
		     if((BitMap[i]&Player_Activing_Bit)==0)	
		     	{
		          Player_Point[i]-=point;

				  if(Player_Point[i]<0)
   	                  Player_Point[i] =0;

		     	}
		    }
		   i++;
	}
 		

}

/********************************************************************
*************************************************************************/
//==================================================
//
//==================================================
/* void Remove_Elements_Temp(unsigned lQuestionIdx, unsigned Answer0, unsigned Answer1)
{
	unsigned i = 0;
	unsigned temp = 0;
//	unsigned long Addr = 0;
	while(i<R_ElementsNum)
	{
		temp = GetTableAnswer(i,lQuestionIdx);
		if ((temp==Answer0)||(temp==Answer1))
		{
			ElementsStatus_Temp[i/16]&=~BitMap[i%16];		//suppress Ex from LS;
		}
		i++;
	}
} */

/*******************************************************
**************************************************************/
void PlayScores( int scores)
{

	   unsigned int temp;  		

	   	  	
	   		
           if(scores>100)
              scores =100;
           
           if(scores>=0)					  	
	          Play_Seq(scores,C_Point_A_StartAddr);
	     else
	  	   {
           
              temp= 0-scores;
			  Play_Seq(scores,C_Point_A_StartAddr);// Play_Seq(temp-1,C_Point_M_StartAddr);
			  

	  	   }
              
   

}

/******************************************************
**********************************************************/
void Play_Activeplayer(unsigned int Ledonflag,unsigned int Player_buffer,unsigned int first_SP)
{
     //unsigned int temp1 = Player_Activing_Bit;
	 unsigned int temp,temp3;

         while(Player_buffer)
		  {
	             
	              temp =  Get_Firstcnt_From_Play(Player_buffer);
	              Player_buffer&=~(1<<temp);
                   
                if(Ledonflag)
                	{
					  temp3 = Led_Data_Play[temp];
	                  Led_ON_Some(temp3);
                	}				  
				  PlayA1800_Elements(first_SP +temp);	//B_VLHPQEN_Blue
				  
		   }

}

/******************************************************
**********************************************************/
void Play_Serieplayer(unsigned int Ledonflag,unsigned int* BitTable,unsigned int  *SP_Table)
{
     //unsigned int temp1 = Player_Activing_Bit;
	 //unsigned int temp,temp3;
	 unsigned int  i=0;

         while(i<Registerd_Num)
		  {
	             
                if (BitMap[i%16]&*(BitTable+i/16))
                	{

                        Play_Seq(i,SP_Table);

                	}

				i++;
				  
		   }

}


/******************************************************
**********************************************************/
void Play_Serieplayer16bit(unsigned int Ledonflag,unsigned int Player_buffer,unsigned int  *SP_Table)
{
     //unsigned int temp1 = Player_Activing_Bit;
	 unsigned int temp;//,temp3;

         while(Player_buffer)
		  {
	             
	              temp =  Get_Firstcnt_From_Play(Player_buffer);
	              Player_buffer&=~(1<<temp);
                   
//                if(Ledonflag)
//                	{
//					  temp3 = Led_Data_Play[temp];
//	                  Led_ON_Some(temp3);
//                	}				  
				  Play_Seq(temp,SP_Table);//PlayA1800_Elements(first_SP +temp);	//B_VLHPQEN_Blue
				  
		   }

}

/***************************************************
********************************************************
void Tie(void)
{

   unsigned int Tie_Group;

   Tie_Group = Registered_Play_Status&(~Leader_Player);

   if(Tie_Group ==0)
   	   return;

    PlayA1800_Elements(VLFZEN1000);
	Delay_Xms(6*1000);
   



}

/***************************************************
********************************************************
unsigned int  ShootOut(void)
{

     unsigned int temp,temp2;

      unsigned int Ask_Group =0;
      unsigned int Tie_Group =0;

     unsigned int Nb_Game =0;

	  unsigned int selectplayer =0;
     unsigned int selectplayer1 =0;
     unsigned int selectplayer2 =0;


    temp=0;
	while(temp<C_Player_Num)
	{
	  Player_Point[temp++] = 0;
	}




       Light_all_off();
	   
       Key_activeflag =0;
       PlayA1800_Elements(VLFZEN1001);
	   delay_time(8);

       // temp1 = Leader_Player;
        Tie_Group = Leader_Player;


       selectplayer1 = Select_Player_Random(Tie_Group);
       selectplayer2 = Tie_Group&(~selectplayer1);
			 
       selectplayer =   selectplayer1;
        
        while(Nb_Game<10)
        	{

              if(Sleepflag)
				 break;//return ;  20140109 xiang
			
			
			 #ifdef C_PassEn
			    if(PassFlag)
			 	   return 1;
		       #endif
				     Select_Question();
				    
                    WatchdogClear();
               		//Player_Activing_Bit = Select_Player_Random(Tie_Group);
				    // Save_Active_Player(Player_Activing_Bit);
				    
					 Player_Activing_Bit = selectplayer;
					 Player_Activing_Cnt = 	Get_Firstcnt_From_Play(Player_Activing_Bit);		
				     Key_activeflag =0;

                  	temp2 = Led_Data_Play[Player_Activing_Cnt];
                     Led_ON_Some(temp2);
				    
				    PlayA1800_Elements( B_VLHPQEN_Blue +Player_Activing_Cnt);//ZB_VLHPQEN_Blue_B
		

				   do
				   	{
						PlayQuestionflag =1;
						PauseFlag =0;
						Key_Event =0;//xiang 20150212

                       temp2 = Led_Data_Play[Player_Activing_Cnt];
                        Led_ON_Some(temp2);

                 
					    TieflagAskQuestion =1;	 
					    Ask_Question();
					   // TieflagAskQuestion =0;

						//if(PauseFlag)
						//	continue;
						
                    //Key_Event =0;
					  Key_activeflag = Player_Activing_Bit;//|Key_True|Key_False;	

                       if(PauseFlag)//xiang 20150212
		                   continue;

					
				    BlinkFlag_Data =  Led_Data_Play[Player_Activing_Cnt];
				    FiveSec_cnt =0;
				    PlayA1800_Elements(SFX_TicTac_5S);

                     if(PauseFlag)
                     	{
					          BlinkFlag_Data =0;
						       Light_all_off();
                     	}

                      TieflagAskQuestion =0;
					}
				   while(PauseFlag);
				   PlayQuestionflag =0;
				   

				   //if(Key_Event == Player_Activing_Bit)
				   	{
				   	   // Save_Active_Player(Player_Activing_Bit);
					    while(Key_Event == Player_Activing_Bit)
					    {
					        Key_activeflag = Player_Activing_Bit|Key_True|Key_False;
					    	Key_Event =0;
					    	PlayA1800_Elements(SFX_Button); 

					        FiveSec_En =1;
							
					    	PlayA1800_Elements(SFX_TicTac_5S);
							FiveSec_En =0;
					    }
				   	}


				        Tieflag =1;
					    shootoutflag =1;	 
				    	Key_Event_Process(0);
						Tieflag =0;
						shootoutflag =0;
						BlinkFlag_Data =0;
						Light_all_off();


						Nb_Game++;

					//	if(Nb_Game>=10)
					//		break;


						if(selectplayer==selectplayer1)
							 selectplayer = selectplayer2;
						else
							selectplayer = selectplayer1;
							
							
							
							
					   if((Nb_Game%2)==0)
					   {
					   	
					   	    temp = Get_Num_Higgest_score(Tie_Group);
					   		if(temp ==1)
								{
                                         temp=Tie_Group&(~Leader_Player);
                                         temp2 = Get_Firstcnt_From_Play(temp);
                                         
                                         Play_Activeplayer(1,Leader_Player,B_VLHPQEN_Blue);
										 PlayA1800_Elements(VLFZEN1003);
										 PlayA1800_Elements(VLFZNUMEN000+Higgest_T);
										 PlayA1800_Elements(VLFZNUMEN000+Player_Point[temp2]);
										 //Light_all_off();						 

								  }
                                  else
                                  	{  
                                  		    
                                  	        PlayA1800_Elements(VLFZEN389b);
											PlayA1800_Elements(VLFZNUMEN000+Higgest_T);
                                            PlayA1800_Elements(VLFZNUMEN000+Higgest_T);
                                           								
                                      }			   	
					   	
					   }
							
          }

                               Key_activeflag =0;
                               Key_Event =0;
                            
                                 temp = Get_Num_Higgest_score(Tie_Group);
								  if(temp ==1)
								  	{
								  		
								  		
//								  		 Play_Activeplayer(1,Leader_Player);
//										 PlayA1800_Elements(VLFZEN1003);
//										 PlayA1800_Elements(VLFZNUMEN000+Higgest_T);
//										 PlayA1800_Elements(VLFZNUMEN000+Player_Point[temp2]);
								  		
                                       
                                         Play_Activeplayer(1,Leader_Player);
										 PlayA1800_Elements(VLFZEN081a);
										 PlayA1800_Elements(VLFZEN081c);
										 PlayA1800_Elements(SFX_Clap_long);
										 Light_all_off();						 

								  	}
                                  else
                                  	{  
                                  		
                                  		      PlayA1800_Elements(VLFZEN3001b);                                	         
											  //delay_time(16);
                                  
                                               //Play_Activeplayer(1,Leader_Player);
                                               Light_all_off();
										  	   return 0;
		   

                                      	}
				       
		
                  return 1;
  }





/***********************************************************
*********************************************************/
void Tell_Scores(unsigned int Final_Scorefalg)
{


   unsigned int temp,temp2;//,temp1,temp2,temp3;//,highest_players;



   //unsigned key_Ac_temp =0;
   
 //  unsigned int BlinkFlag_Data_temp =0;
//   unsigned int Drive_Led_temp =0;


   unsigned int t_lowest_Player =0;
   unsigned int t_highest_Player =0;
   
  // unsigned int temp_fifty =0;
   unsigned int i=0;    
  // unsigned int CurrentN =0;
    
	
   t_lowest_Player = Lowest_Player;
   

  
   temp = Get_Num_Lowest_score(Rounds,Registered_Play_Status);//(Registered_Play_Status);
   if(temp ==0) 
   	{
   	  PlayScoresFlag =0;
   	  Key_Event =0;
   	  return;
   	}
   	
//   ChangePlayerFlag =0;
   
   t_highest_Player = Leader_Player;

   //BlinkFlag_Data_temp = BlinkFlag_Data;
   
   PlayScoresFlag =1;

   

// #ifdef C_GPCE2064     
//    Drive_Led_temp = (*(P_IOB_Buffer)&0x0f)|(*(P_IOA_Buffer)&(LED_Yellow|LED_Six));
// #else
//    Drive_Led_temp = *(P_IOB_Buffer)&0x3ff;
//  #endif  
     
  // Light_all_off();


	
//   key_Ac_temp = Key_activeflag;




//   temp1 = Lowest_Player;


  

      temp2= Registered_Play_Status;

	   i=0;
	  
	  while(i<C_Player_Num)//C_Player_Num <16
	  	{
	  		
	  	   if(Key_Event)
       	     break;
			
//			if(CurrentN>3)
//				break;
			
			temp = Get_Num_Lowest_score(Rounds,temp2);
			
//			if(Lowest_T>3)
//                break;
		
			if(Lowest_Player==temp2)  //最高分
				{
	                  	   	   
//				   	  if(temp>1)
//				   	  {
//				   	  	Play_Serieplayer16bit(0,Lowest_Player,C_Play_StartAddr);
//				   	    PlayA1800_Elements(A_VLMMREN_WinRound01b);
//					   	//PlayScores(Lowest_T);
//			    	   
//			    	    Play_Seq(Lowest_T,C_RoundsTable);//PlayScores(Higgest_T);
//				   	   	 
//				   	   	 
//						// Light_all_off();
//				   	  }
//				   	  else 
				   	   {
				   	   	   Play_Serieplayer16bit(0,Lowest_Player,C_Play_StartAddr);
	                       PlayA1800_Elements(A_VLMMREN_WinRound01);
					  

				    	    Play_Seq(Lowest_T,C_RoundsTable);//PlayScores(Higgest_T);
				   	   	 }
				   	   	 
				   	  	 //Light_all_off();
					   
				    break;

				 }
				

			     Play_Serieplayer16bit(0,Lowest_Player,C_Play_StartAddr);//Play_Activeplayer(1,Lowest_Player,0);  
			     
//			   if(temp>1)    
//			     PlayA1800_Elements(A_VLMMREN_WinRound01b);
//			   else
			     PlayA1800_Elements(A_VLMMREN_WinRound01);
										   

	    	   
	    	    Play_Seq(Lowest_T,C_RoundsTable);//PlayScores(Higgest_T);
				
				

              //Light_all_off();
			 
			  
             temp2 = temp2 &(~Lowest_Player);
             
             if(temp2 ==0)
             	 break;
             
			 i++;
//			 CurrentN++;


	  	}



   PlayScoresFlag =0;
	
}


/***********************************************************
*********************************************************/
unsigned Key_CheckScores()
{
//	unsigned int FiveSec_cnt_temp;
	
//    FiveSec_cnt_temp = FiveSec_cnt;	 

     Key_Event =0;
     Key_activeflag = Playbutton;


   Light_all_off();
   BlinkFlag_Data = All_Led_data;


   //CurrentN =0;
   //PlayA1800_Elements(SFX_Score);
   delay_time(8);	
   PlayA1800_Elements(A_VLMMREN_Score_01);
   delay_time(8); 
   

	Tell_Scores(0);
	
   if((PlayQuestionflag)||(TwoKeyflag == 0xffff))	
	   PauseFlag =2;
	   
//	   Key_TellScoreFlag =1;
//
//     FiveSec_cnt = temp_FiveSec_cnt; 

   
      BlinkFlag_Data =0;
	  Light_all_off();
	  
	  Key_Event =0;
	  return 0xffff;
}

/***********************************************************
*********************************************************/





/***********************************************************
*********************************************************

unsigned Select_Player_Random(unsigned int temp)
{  
     unsigned j;
	 unsigned int temp1;

   		 //temp = Registered_Play_Status&(~Player_Activing_Bit);
	   if(temp)
	     {

			   j = Get_Registered_Player_Num(temp);
			   j = *P_TimerB_CNTR % j;
			   temp1 = Select_Registered_Player_Random(j,temp);//Player_Activing_Bit
			   
			   if(temp1 == 0xffff)
				    return Go_Rest();
			   else
			   	{
//			   	  Player_Selectcnt[Player_Activing_Cnt]++;
			   	  return temp1;
			   	}
	    }
	  else
	   {
	   	  if(Player_Activing_Bit ==0) //只有一个player时,Player_Activing_Bit不变
		      return Go_Rest();
		  else
		  	 return Player_Activing_Bit;
	   
	   }

}




/******************************************************
******************************************************
void Select_Player_Random_Round1()
{
          unsigned int temp;



			   if((Cheater_SeletQu_Flag ==0)||(Player_Activing_Bit==0))
				   {


					   temp = Registered_Play_Status&(~(Temp_Registered_Play_Select|Key_buffer_First));

					   if(temp ==0)
					   	{			
                          
                           Temp_Registered_Play_Select =0;
                           temp = Registered_Play_Status&(~(Player_Activing_Bit|Key_buffer_First));	//Temp_Registered_Play_Status中可能还有值
					   	}
					   	
					    if(temp ==0)
					   {
					   	   temp = Registered_Play_Status&(~(Player_Activing_Bit));
					   	
					   }	   
					   	
					   if(temp ==0)
					   {
					   	   temp = Registered_Play_Status;
					   	
					   }						   	
					   
					   Player_Activing_Bit = Select_Player_Random(temp);//,&Temp_Registered_Play_Status);//Temp_Registered_Play_Status
				   	   
			     
       
					 					 
                    Temp_Registered_Play_Select|=Player_Activing_Bit;
				    //	 Player_Selected_Event+=Player_Activing_Bit;

				    //	 Player_SelectCnt[Player_Activing_Cnt]++;
			   	}
				else
					{		
						Player_Activing_Cnt = Get_Firstcnt_From_Play(Player_Activing_Bit);



					}


           if(Soloflag==0)
           	{
              Key_Event =0;
              Key_activeflag = Key_True|Key_False;
              Led_ON_Some(Led_Data_Play[Player_Activing_Cnt]);
//              PlayA1800_Elements( B_VLHPQEN_Blue +Player_Activing_Cnt);
              Light_all_off();


           	}
				
	
              if((firstFlag_23b&0x02)==0)
              {
              	Key_activeflag = Key_True|Key_False;
              	firstFlag_23b|=0x02;
              	PlayA1800_Other(SerieAsk);
              	
              }
 


}


/*************************************************

****************************************************

unsigned int Potion()
{

	if(Difficulty == T_Beginner)
	 {

		Diff_int =2;


	 }
	else if(Difficulty == T_Advanced)
	 {

		Diff_int =3;

	 }
	else if(Difficulty == T_Expert)
	 {

		Diff_int =3;


	 }


     TwoKeyflag = 0xffff;//可暂停重复
	 
	 
	do
	 {
		 PauseFlag =0;	
         PlayA1800_Elements(VLHPQEN_Potion01);
	 }while(PauseFlag);
	   TwoKeyflag =0; 

   Select_Question();
   Ask_Question_AndGo();
   Player_Activing_Bit = Registered_Play_Status;
   Player_Activing_Cnt = Get_Firstcnt_From_Play(Player_Activing_Bit);
   
   	Answer_F();


	if(Question_Answer == Right)
	   {


		
		PlayA1800_Elements(VLHPQEN_Potion02);		
		//PlayA1800_Other(Ser_SFX_Correct);
		Light_all_off();

		Ca++;
		Add_Player_Point(Player_Activing_Cnt,2);

	   }
	else if(Question_Answer == Wrong)
	   {

			PlayA1800_Elements(VLHPQEN_Potion03);		

			//PlayA1800_Other(Ser_SFX_Wrong);
			
			Light_all_off();

	   }

	Cn++;
	Leader_Light();
	return C_CheckCn;

}



/************************************************************
*************************************************************

unsigned Get_Asked_Round1(void)
{
	unsigned temp = 0;
	unsigned i = 0;
	while(i<14)
	{
		 if (Question_Asked_Round1[i]!=0xffff) temp+=1;
		 i++;
	}
	return temp;
}



 unsigned Select_Questionrandom_AskedRound1(unsigned Index)
{
	unsigned i= 0;
	unsigned j= 0;
//	unsigned temp;

	while(i<14)
	{
		 
      if(Question_Asked_Round1[i]!=0xffff)
		 {
		 	if (j == Index) return Question_Asked_Round1[i];
		 	j++;
		 }
		 i++;
	}
	return Question_Asked_Round1[0];
}







/****************************************************
*******************************************************/
void Sub_QuestionAsked()
{
   unsigned int i;

		    i = 0;///////////////!!!!!!!!!!!!!!!!!!
			while(i<R_QuestionNum)
			{

              if((BitMap[i%16]&QuestionStatus_Asked[i/16])==0)
              	{
                           
                   QuestionStatus_LQA[i/16]&=~BitMap[i%16];
                  // QuestionStatus_NoAnswer[i/16]&=~BitMap[i%16];
              	}
			
				i++;	
						
			}   

        WatchdogClear();
}


void  Reset_Pselected()  
{
     unsigned int i;
  
      i = 0;///////////////!!!!!!!!!!!!!!!!!!
		while(i<C_ElementsRAM)
		{			
			Pselected[i] =0;
			i++;	
					
		}
		
}



/**********************************************************
*************************************************************/
void Rest_LQ_LQA()
{
      unsigned i;

		i = 0;///////////////!!!!!!!!!!!!!!!!!!
		while(i<C_QuestionRAM)
		{
			QuestionStatus_LQA[i] = 0xFFFF;
			QuestionStatus_LQ[i] = 0xFFFF;
			//QuestionStatus_NoAnswer[i] = 0xffff;
			i++;	
					
		}
	
	
		LQA = R_QuestionNum;//Get_LQA();//R_QuestionNum;//
		
		
		   __asm("INT OFF");
      MoveSPIDriverToRAM();		
      SPI_Flash_Sector_Erase(T_LQ_Secter_L,T_LQ_Secter_H);
      SPI_Flash_SendNWords(QuestionStatus_LQ,C_QuestionRAM,T_LQ_Secter_L,T_LQ_Secter_H);
      
        __asm("INT FIQ,IRQ");	
		


}

/**********************************************************
*************************************************************/
void Rest_LQA()
{
      unsigned i;

		i = 0;///////////////!!!!!!!!!!!!!!!!!!
		while(i<C_QuestionRAM)
		{
			QuestionStatus_LQA[i] = 0xFFFF;
			i++;	
					
		}	
	
		LQA = R_QuestionNum;//Get_LQA();//R_QuestionNum;//


}
/**********************************************************
*************************************************************/
void Rest_Question_Asked()
{
      unsigned i;

		i = 0;///////////////!!!!!!!!!!!!!!!!!!
		while(i<C_QuestionRAM)
		{
			QuestionStatus_Asked[i] = 0xffff;
			//QuestionStatus_NoAnswer[i] = 0xffff;
			i++;	
					
		}
	
	   __asm("INT OFF");
      MoveSPIDriverToRAM();		     
      SPI_Flash_Sector_Erase(T_Asked_Secter_L,T_Asked_Secter_H);
      SPI_Flash_SendNWords(QuestionStatus_Asked,C_QuestionRAM,T_Asked_Secter_L,T_Asked_Secter_H);   
      
        __asm("INT FIQ,IRQ");	


}
/******************************************************************

************************************************************************/
void Check_LQA()
{
	
	    Supress_Question_CategoryLast2Cat();
		LQA = Get_LQA();
		
		if(LQA ==0)
		 {	
		        Rest_LQ_LQA();					  						 					
			    Sub_QuestionAsked();
	            Supress_Question_CategoryLast2Cat();
	            LQA = Get_LQA();
			   if(LQA==0)//xiang 20160318
				{
					     Rest_Question_Asked();
						 Rest_LQA();//Rest_LQ_LQA
						 Supress_Question_CategoryLast2Cat();
						 
						  LQA = Get_LQA();
	     
					     if(LQA==0)
					     {
					     	   Rest_LQA();//Rest_LQ_LQA
							 
					     } 
						 		 
					 			 		   
				}	
				
		  			if(gQuestionIdx!=0xffff)		 	  
						   QuestionStatus_LQA[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];	  
						   
					  if( R_E ==C_TwoSounds)
					   {
				         if(gQuestionIdx_1!=0xffff)		 	  
						     QuestionStatus_LQA[gQuestionIdx_1/16]&=~BitMap[gQuestionIdx_1%16];	
					   } 			
				
				   LQA = Get_LQA();	 
		 }	
    	

	     
}

/********************************************************
**********************************************************/
void Read_Flash()
{
	

	  __asm("INT OFF");
	   MoveSPIDriverToRAM();

     SPI_Flash_ReadNWords(QuestionStatus_LQ,C_QuestionRAM,T_LQ_Secter_L,T_LQ_Secter_H);
     SPI_Flash_ReadNWords(QuestionStatus_Asked,C_QuestionRAM,T_Asked_Secter_L,T_Asked_Secter_H);
     
    // SPI_Flash_ReadNWords(&Record,1,T_Record_Secter_L,T_Record_Secter_H); 
      Record=SPI_Flash_ReadAWord(T_Record_Secter_L,T_Record_Secter_H);
    
     __asm("INT FIQ,IRQ");
     
     if(Record == 0xffff)
     	 Record=0;
	
}
/*****************************************************
******************************************************/
void Save_Question_Quality_Last(unsigned int quality)
{
   
   unsigned int i;

    for(i=0;i<5;i++)
   	{
      Question_Quality_Last[i] = Question_Quality_Last[i+1];
   	}
   
     Question_Quality_Last[5] = quality;	
   			
}
/*****************************************************
******************************************************/
void Save_Question_Category2Last(unsigned int Category)
{
   
  // unsigned int i;

   // for(i=0;i<5;i++)
   //	{
      Last2Cat[0] = Last2Cat[1];
   //	}
   
     Last2Cat[1] = Category;	
   			
}

/*****************************************************
******************************************************/
unsigned int  check_Question_Quality_Last()
{
   
   unsigned int i;

    for(i=0;i<6;i++)
   	{
      if(Question_Quality_Last[i]<=1)
      	 return 0;
   	}
   
     return 1;
   			
}


/******************************************************************

************************************************************************
void  Select_Question(void)
{
	unsigned temp,temp1;


	unsigned int Question_mode=0;
//	unsigned int qestion_quality =0;
	unsigned int qestion_dif_dis  =0;
	unsigned int question_movies =0;

    WatchdogClear();


    if(Cheater_SeletQu_Flag)
   	{

      Get_Queston_Lastcycle();
      
     if(gQuestionIdx!=C_Finish) 
	       return;
	  //else //没有题选 则往下正常选其他题
	    //  return Go_Rest();
	    
      //  Cheater_SeletQu_Flag =0;//无题可选，后续题要保存
   	}


     Check_LQA();

			if(Difficulty == T_Beginner)
				{
			       qestion_dif_dis =3;
			
				}

               Diff_int_F();

/////////////////////////////////////////////////////////////////////////
 ///////////////////////////////////////////////////////////////////////////  Quality

      if(check_Question_Quality_Last()==1)
	  	    qestion_quality =1;
	  else
	  	{
          if(Question_Quality_Last[5]==3)
             qestion_quality = 1+*P_TimerB_CNTR % 2;
		  else
		  	{

			     temp = *P_TimerB_CNTR % 100;  
				 temp1 = Get_LQ();

				 if(temp1>900)
				 	{
                           if(temp>80)
						   	  qestion_quality =3;
						   else if(temp>35)
							   qestion_quality =2;
						   else
						   	   qestion_quality =1;

				 	}
				 else //if(Question_mode>850)
				 	{
						  if(temp>=87)
							  qestion_quality =3;
						   else if(temp>=49)
							   qestion_quality =2;
						   else
							   qestion_quality =1;


				 	}
//				 else
//				 	{
//
//					   qestion_quality = 1+*P_TimerB_CNTR % 3;
//
//
//				 	}



		  	}


	  	}
	  	
	  	if(gQuestionIdx!=0xffff)  
	     {
	        Question_mode = Get_Question_Mode(gQuestionIdx);
	        question_movies = GetMovies(gQuestionIdx);
	        
	     }
	  	
          gQuestionIdx = Select_Question_ModeStatus_Quality(~Question_mode,qestion_dif_dis,Diff_int,qestion_quality,question_movies);//0xffff 所有mode
        // gQuestionIdx = Select_Question_ModeStatus_Other(Question_mode,i_quality,qestion_quality);//<=2

	






    // if(Cheater_SeletQu_Flag ==0)	
	     Save_Question_Asked_Lastcycle();
         Save_Question_Quality_Last(GetQuality(gQuestionIdx));


           if((Round==1)&&(Soloflag ==0))  
             Save_Question_Asked_Round1();
	





}




/***************************************************************************
void Save_Some_data()
{
    unsigned int temp;


     for(temp=0;temp<5;temp++)
	    Question_Asked_Lascycle[temp]=0xffff;



    for(temp=0;temp<C_Player_Num;temp++)
    	{

          Player_Point_temp[temp] = Player_Point[temp];

    	}


//    for(temp=0;temp<3;temp++)
//    	{
//
//          ThreeQuestion_Cheater[temp] = ThreeQuestion[temp];
//
//		  ThreeQuestionRound1_Cheater[temp] = ThreeQuestionRound1[temp];//round1 only
//
//    	}





}






/****************************************************************************
***************************************************************************
unsigned int Checkcn()
{
	unsigned int temp;////,temp1;
//	unsigned int zero_cnt =0;
//	unsigned int zero_Player =0;
//    unsigned long int event_List_temp =0;
    
	//unsigned int pointflag =0;
	

	


   if(Cycle_Timeout_cnt>=5)
   	{
	   
      // Sleepflag |= C_GameTimeout;
        GameTimeout();
   	}


   Cycle_Timeout_cnt++;




	
   if(Sleepflag) 
     return C_Finish;	

	
#ifdef C_PassEn
   	if(PassFlag)
	 	 return gTemp;
#endif
	
//	Roundingfalg = Rounding2;
	
	Countdownflag =0;

    BlinkFlag_Data=0;
    Light_all_off();






	
	Pre_Active_Player_Update =1;
	
	Speed_BonusFlag =0;
	
	Key_Event =0;
    Key_activeflag =0;
//	AnswerDuringQue =0;  

	TwoKeyflag =0;
	TwoKey_temp =0;
	//TwoKeyflag =0;
   

	Cheater_SeletQu_Flag =0;
	

	if(CheaterFlag)
   	{
   		
   		 //temp1 = QuestionCycle[3];
   			
	   	  Cheater_F();
	
         Pre_Active_Player_Update =0;

	      //for(temp=0;temp<5;temp++)  //round2 only
	   	  {
	      Cur_Active_Player = 0;
	   	  }




            if(Eventflag)
            	{
            	   Dis_Player =0;		
				   Select_Question_Special();
				   return C_CheckCn;
            	}
			else
				{

				if(Soloflag)
				  {				
					 return C_TurnSolo;			
				
				  }
   
				   return C_TurnMulti;

				} 
		 
		 
		 
		 

   	}


   	Eventflag =0;

    Save_Some_data();



	

//	Silent_updatedFlag =0;
	Key_Buffer =0;



	

    

			  
            	   	//if((Cn==3)||((Cn>3)&&(((Cn-3)%6)==0)))
            	   	if(((Cn+1)%5)==0)
                   	{
                   		
 			           Dis_Player =0;	
                       Select_Question_Special();
					   return C_CheckCn;
					  	

		    	     }


			for(temp=0;temp<C_Player_Num;temp++) 
			{

				 ParBool[temp]=0;
						
			}	   
		    	
    	
		    	
		   
		  if(Soloflag)
		  {
		  	
			for(temp=0;temp<C_Player_Num;temp++) 
			{
				
			  if(BitMap[temp]&Registered_Play_Status) 
			  {	
				 if(Player_Point[temp]>2)
				{
                    return C_TurnSolo;
				}
			  }
				
			}
		  	
		       return C_PvLow;	
		  	
		  }
		 else
		  {
		  	
//			   for(temp=0;temp<C_Player_Num;temp++) 
//				{
//					 if(Player_Point[temp]<=20)
//					{
//	                    return C_PvLow;
//					}
//					
//				}
		  	
		
		  	 


               	 return C_TurnMulti;

			
		  }  
		    	
		  //  return Select_Question_NormalRaund2or3();	
		    	
		    	
 

 	
     	 

}
/***********************************************************************
*********************************************************************
void Cheater_F()
{
	
	     unsigned int temp;
	  
		   CheaterFlag =0;
   	     
   	      Qu_Lastcycle_cnt =0;
   	      Cheater_SeletQu_Flag =1;
   	      
         // QuestionCycle[3]=QuestionCycle[2];
         // QuestionCycle[2]=QuestionCycle[1];
         // QuestionCycle[1]=QuestionCycle[0];
    
        
         if(Cn)
         	Cn--;
    
    
    
         for(temp=0;temp<C_Player_Num;temp++)
    	{

          Player_Point[temp] = Player_Point_temp[temp];

    	}
    	
    	 for(temp=0;temp<C_Player_Num;temp++) 
			{

				 ParBool[temp]=0;
						
			}	
    	
    	
//      for(temp=0;temp<3;temp++)
//    	{
//
//          ThreeQuestion[temp] = ThreeQuestion_Cheater[temp];
//
//       if(Roundingfalg == Rounding1)
//		    ThreeQuestionRound1[temp] = ThreeQuestionRound1_Cheater[temp];//round1 only
//
//    	}
	
	
	
}


/****************************************************************************
***************************************************************************/

unsigned int Get_Key(Countdown_E)
{
  unsigned int temp;
//  unsigned int FiveSec_cnt_temp;
 
  do
   {
   	
   	  WatchdogClear();
   	  
   	  	if(Timeout_cnt>180*16)	
		  {
		  	  //Sleepflag =1;
		  	  Timeout_cnt=0;
		  	  return GameTimeout();
		  }
   	  
   	  
   	  
   	  	if(Sleepflag) 
		     return C_Finish ;
			
           if(temp=TS_CTS_ServiceLoop())
           	   Key_Event = temp;
           	  

			
          #if C_PassEn
				if(PassFlag)
					return 0xffff;
           #endif
			
			  if(PauseFlag)
				  return 0xffff;
			
			
			  if(CheaterFlag)
				  return 0xffff; 

		    if(Key_Event)
		 	    return Key_Event;
   	  
      #if C_Passcheck_En
           Pass_check();
      #endif   


           if(A1800_Flag ==2)
           {
			   	if((SACM_A1800_Status() & 0x0001) == 0)
			   	{
			   					
				   PlayA1800_ElementsInit(SFX_Timer);				
			   	}
			   	
			   	    SACM_A1800_ServiceLoop();
           }




	   if(LongPressflag&0x01)
	   	{
             LongPressflag&=~0x01;

			 
            if((firstFlag_23b&0x8000)==0)
            	{

				   firstFlag_23b|=0x8000;
			       if(temp = Pause_Process())	
			       {			   
			 	       firstFlag_23b&=~0x8000;
			 	       return temp; 
			 	    
			       }
			       
			      firstFlag_23b&=~0x8000; 
            	}

	   	}
       
		
	  if(Key)	
	  {	
	  	 temp = Pressflag&Key;
		  	

        if(temp ==0)//抬起
        	{
        	       temp = Key;
        	   	  	Key =0;
                 
					  
					 if(Key_activeflag&temp) 
					 {	
				 
					   //temp_Key_TrueFlase_Buffer =0;
					   
					 //    if((!(PlayQuestionflag&0x05))||(PlayQuestionflag&0x8000))// 20160215 xiang
						if(temp&TwoKeyflag)
						{
                           Key_TrueFlase_Buffer = temp;  
						}
					   else
					     {
							   Key_Event = temp;//20160215 xiang   
							   Key_TrueFlase_Buffer =0;  
					 
								return Key_Event;					     	
					     	
					     }
					   	 
					 }
					else
					{	 
						  Key_TrueFlase_Buffer =0;	 // 20160215 xiang
						  
                          if(VolumeEnable)
                          	{
							if((temp ==PB_button)||((temp ==MB_button)))
			                   {			                   	

                                 if((firstFlag_23b&0x4000)==0)
                                 	{
                                 	    firstFlag_23b|=0x4000;
								        Volume(temp);
										firstFlag_23b&=~0x4000; 
										PauseFlag =1;
										return 1;
                                 	}
			                   }
                          	}
					}

        	}
	  else //按下
	   {

          	  	Key =0;
          	  	
		    Cycle_Timeout_cnt=0;   
		    
         // if(Eventflag != E_Demo)
          	{
		  	
		
	    	if((PlayQuestionflag )||(TwoKeyflag))
	    	 	{
	    	 		 if(TimeCnt_Key<C_1S)//TwokeyCntl
	    	 		 	 {
	    	 		 	 	  if(temp == TwoKey_temp)
	    	 		 	 	  	{
	    	 		 	 	  
								if(temp == Playbutton)
								{						
								  //if((PlayQuestionflag&0x01)&&((!PlayScoresFlag)||(TieflagAskQuestion)))	//xiang 20150106
								    {
									    PauseFlag =1;
									    Key_TrueFlase_Buffer =0;//20160215
                                        Pressflag&=~Playbutton;//避免抬起响应
										TwoKey_temp =0;//20160323
									    return 0xffff;;
								    }
								}
								
//								if(temp == Key_True)
//								{						
//								  if((PlayQuestionflag&0x01)&&((!PlayScoresFlag)||(TieflagAskQuestion)))	//xiang 20150106
//								    {
//									    PauseFlag =1;
//									    Key_TrueFlase_Buffer =0;//20160215
//
//										TwoKey_temp =0;//20160323
//									    return 0xffff;;
//								    }
//								}
							   else if(temp == Key_False)
							   {
							   	  if(TwoKeyflag==Key_False)	
							   	   {
								   	   	  CheaterFlag =1;//xiang 20180517
								   	   	  Key_TrueFlase_Buffer =0;//20160215

										  TwoKey_temp =0;//20160323
								   	     return 0xffff;	   	 
							   	   	
							   	   }
							   	
							   	
							   }
								//	return Tell_Scores(0);
	    	 		 	 	  		
	    	 		 	 	  	}
	    	 		 	 	
	    	 		 	  
	    	 		 	 }
	    	 		    TwoKey_temp = temp;
	    	 		  //  TwokeyCntl =0;      
	    	 	}


               if(TimeCnt_Key<C_1s_Pause)
               	{

                   if(((Key_TrueFlase_Buffer + temp) == (Key_True+Key_False)))
                   	{
                   	
                   	
                        temp =0;
                   		Key_TrueFlase_Buffer =0;
                   		
                   		Pressflag&=~(Key_True|Key_False);
                   		if(Answerflag==1)
                   		{
                   		    Sleepflag = C_PassToEnd;
                   		    return C_Finish;
                   		    
                   		} 	
                   	
                   	
                   	
////////////////////////////////////////////////////////////////////////////////////////////////
//                         temp =0;                       
//                         return Key_CheckScores();
                         
////////////////////////////////////////////////////////////////////////////////////////////////////                         
                        
//					   if(Pause_Process())
//					   {
//					   	
//					   	   FiveSec_cnt = FiveSec_cnt_temp;
//					   	   return 0xffff;
//					   }
//					   
//                       FiveSec_cnt = FiveSec_cnt_temp;
                   	}
    
               	}

          	}

		  
             if(temp&(Key_True|Key_False))
             	{
                 Key_TrueFlase_Buffer = temp;				
             	}
			
	    	   
	    	     	 
	    	
//		      if(Key_activeflag & temp)
//		      {
//		      //	 Key_Event = temp;	 //20160215 xiang
//		      //	 Key_Buffer |=temp;	  
//		      	 
//		      	 	 
//
//			   if(temp&(TwoKeyflag))//|Key_True|Key_False))//if(Key_TrueFlase_Buffer) 
//			   	{
//
////				    SACM_A1800_Pause();    
////				    DAC1_Data_Temp = (*(volatile unsigned int *)(P_DAC_Data))&0xffc0;
////				    SP_RampDnDAC1();
//
//			   	}
//			    else
//			    {
//			        Key_Event = temp;	//20160215 xiang
//			        
//			        Key_TrueFlase_Buffer =0;
//					 return Key_Event;;
//			    }
//		      }
	    
	      }

		  TimeCnt_Key =0;
	     
	  }


        if(Key_TrueFlase_Buffer)
        	{

                 if(TimeCnt_Key>=C_1s_Pause)
                 	{
                 	   

					  if(Key_activeflag&Key_TrueFlase_Buffer) 
					  {
					  	 Key_Event = Key_TrueFlase_Buffer;//20160215 xiang
					  	 Key_TrueFlase_Buffer =0;   
						TwoKey_temp =0;
				 	     return Key_Event;;
					  }
				 	      
				 	     Key_TrueFlase_Buffer =0;
                 	}

        	}

  
        if(Countdown_E ==1 )
			  	{
                  if(TimeCnt > Time_Countdown)
                  {
                       return TimeOver;

				  	
                  }               
			   }
			   
			   
		  if(Countdownflag)
			{
				
			    if(T_Countdowncnt > Time_Countdown_Sleep)	
			    {
			    	 Sleepflag |=1;//off
				     return TimeOver;
			    }
			}	   
			   

 	}while(Countdown_E);
 	
    return 0;
}

/****************************************************************************
***************************************************************************
unsigned int Select_Round1()
{

    unsigned int temp,temp1;
    
    
   if(Sleepflag) 
     return C_Finish;

	Roundingfalg = Rounding1;
	


#ifdef C_PassEn
		if(PassFlag)
			 return gTemp;
#endif


   BlinkFlag_Data=0;
   Light_all_off();

   Key_Event =0;
   //TwoKeyflag =0;
   Eventflag =0;
   
   TwoKeyflag =0;
   TwoKey_temp =0;
   Cheater_SeletQu_Flag =0;
   


   if(CheaterFlag)
   	{

		 
   	     temp1 = QuestionCycle[3];

	     Cheater_F();

    	

		 Answered_Player_Lound1&=~Player_Activing_Bit;//round1 only




        if(temp1 == Normal_Cycle)
			return Select_Question_Normal();
		else
			{
			  Select_Question_Special();
              return C_SelectQuestion_Round1;
			}

		 

   	}


	 Save_Some_data();

	
	
	
//	Key_Buffer_For_Timeout=0;

//	AnswerDuringQue =0;
	if (Qn==0)
	{
		BlinkFlag_Data = All_Led_data;
	    PlayA1800_Elements(VLFZEN024); 
	    
	    
	    PlayA1800_Elements(SFX_Round); 
	    BlinkFlag_Data =0;
		Light_all_off();

		PlayA1800_Elements(VLFZEN400b); 
		PlayA1800_Elements(VLFZEN400c); 
		//PlayA1800_Elements(VLFZEN399d); 
		
	    PlayA1800_Elements(VLFZEN399c); 
	    delay_time(16);
	}
  	
       if(Qn >= 10)
     	{
     	    BlinkFlag_Data = All_Led_data;
     		PlayA1800_Elements(SFX_Jingle);
			BlinkFlag_Data =0;
		    Light_all_off();
			Tell_Scores(0);
			
			
			
	      Cur_Active_Player = 0;
//	      Cur_Active_Player[1] = 0;
//	      Cur_Active_Player[2] = 0;
//	      Cur_Active_Player[3] = 0;
//	      Cur_Active_Player[4] = 0;

		    QuestionCycle[0]=0;
			QuestionCycle[1]=0;
			QuestionCycle[2]=0;
			QuestionCycle[3]=0;
			
			Qn =0;
			//Cycle_Timeout_cnt=1; //xiang 20150208           
			R_Event_AddTo = Event_AddTo;

 
			return C_SelectQuestion_Round2;
     		
     	}
     	
     	else if(Qn<3)
     	{

		   if(Qn>=2)
				RandFof_Flag =1;
		   
     		Qn++;	
     		return Select_Question_Normal();
     	}
     	
     	else //
     	 {
            Qn++;

             	if(QuestionCycle[3] == Special_Cycle)
				  {
                     return Select_Question_Normal();

				   }

			
		    if((QuestionCycle[2] == QuestionCycle[3])&&(QuestionCycle[1] == QuestionCycle[3]))
		    	{
                   if(QuestionCycle[3] == Normal_Cycle)
                   	{

                       while(1)
                   	   	{
                   	   	 WatchdogClear();
                   	     temp = Select_Question_Special();

						  if(Sleepflag)
	   	                  return  C_Finish;
						  
						  #ifdef C_PassEn
							    if(PassFlag)
							 	   return;
						       #endif
  
  
						  if(temp==1)//Event成功 
				   	         return C_SelectQuestion_Round1;
						  else if(temp == 2) //无Event
						 	return Select_Question_Normal();
						 // else if(temp == 0)
						 //	{


						 //	}

                   	   	}

						 
                   	}
				   //else if(QuestionCycle[3] == Special_Cycle)
				   //	{
                   //      return Select_Question_Normal();

				   //	}

		    	}
    
    
    	#ifdef C_Findbug
			     
			   if(testqueRound1[Qn-1]==0)
			   {
			   	  return Select_Question_Normal();
			   }
			  else
			   {             
			   	    Select_Question_Special();
			   	    return C_SelectQuestion_Round1;
						
			
			   }			    	
			#endif 	  
    
    
   
		     temp = *P_TimerB_CNTR % 6;		//random 0~9 	  	
             if(temp<5)
             	{
                       
                   return Select_Question_Normal();
             	}
			 else
			 	{

					  while(1)
                   	   	{
                   	   	WatchdogClear();
                   	     temp = Select_Question_Special();

						 if(Sleepflag)
	   	                  return  C_Finish;
						 
						 #ifdef C_PassEn
							  if(PassFlag)
							 	  return;
						     #endif
  
  
						  if(temp==1)//Event成功 
				   	         return C_SelectQuestion_Round1;
						  else if(temp == 2) //无Event
						 	return Select_Question_Normal();
						 // else if(temp == 0)
						 //	{


						 //	}

                   	   	}

			 	}
 	
     	 }
        
//		
//		if (gQuestionIdx == C_Finish) 
//		{
//			return C_Finish;
//		}
	
}






/***************************************************************
*******************************************************************/


//==================================================
//
//==================================================
void Ask_Question()
{
//  unsigned int temp=0,i;
     unsigned int key_activetemp = Key_activeflag;
     
     unsigned int temp_PlayQuestionflag=PlayQuestionflag;
     
     PlayQuestionflag =1;
   do
	{
		
			Key_Event =0;
			Key_activeflag =0;		
			PauseFlag =0;

		    //delay_time(8);
		  if(R_E ==C_TwoSounds)  
		  {
		  if(gQuestionIdx_1!=0xffff)
		     PlayA1800_Elements(Get_Question_Sound(gQuestionIdx_1));
		      delay_time(8);
		     
		  }
		   if(gQuestionIdx!=0xffff)  		  	
		      PlayA1800_Elements(Get_Question_Sound(gQuestionIdx));//PlayA1800_Question(gQuestionIdx);
		   
		     TwoKeyflag =0;
		     delay_time(8);
	 }while(PauseFlag); 
	 
	  PlayQuestionflag =temp_PlayQuestionflag;


     Question_Answer =0;
     SP_RampDnDAC1();
     
     Key_Event =0;
     Key_activeflag =  key_activetemp;
	
//#ifdef C_PassEn
//	if (testqueptr<80)
//	{
//		gQuestionIdx = testque[testqueptr];
//	}
//#endif

 if( Eventflag != E_Demo)
 	{
		QuestionStatus_LQ[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];		//suppress Qx from LQ;	
		QuestionStatus_LQA[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];	
		QuestionStatus_Asked[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];//QuestionStatus_Asked[gQuestionIdx/16]|=BitMap[gQuestionIdx%16];
 	}
	
	

//  if(Cheater_SeletQu_Flag ==0)	
	 
	

     

     



}

/***************************************************************************

void  Ask_Question_AndGo()
{

  Key_buffer_First =0;
 
  PlayQuestionflag =1;

	Key_Event =0;
	Key_activeflag =0;
		  
    Ask_Question();

	  
	if(Round ==1)
	{
	    Key_buffer_First = 0x8000;
	}
	else 
	   Key_buffer_First|=0x8000;//无效值，之后按键无效






}

/**************************************************************
******************************************************************
unsigned int Key_True_F()
{
       unsigned int Player_buffer=0,temp;
//       unsigned int onetime=0;
       
         

			Key_Buffer&=~Key_True;
           if(Registered_Play_Status)
            {
           	
           	   Registerd_Num = Get_Registered_Player_Num(Registered_Play_Status);

			   if(Registerd_Num>1)
			   	{
				  // Key_TrueFlase_Buffer =0;
				  // Soloflag =0;      
			   	}
			   else
			      return 0;
			   
			   
			      Soloflag =0;

			        Light_all_off();
			       
			       // PlayA1800_Elements(SFX_Button); 
			       // PlayA1800_Elements(VLHPQEN_OK);   

				   Key_Event =0;
				   Key_activeflag = ALL_Key_Enable;
			        
			     Player_buffer =  Registered_Play_Status;  
			     while(Player_buffer)
		         {
	             
	                temp =  Get_Firstcnt_From_Play(Player_buffer);
	                Player_buffer&=~(1<<temp);
 
		
	                Led_ON_Some(Led_Data_Play[temp]);
                				  
				    //PlayA1800_Elements(B_VLHPQEN_Blue +temp);	//B_VLHPQEN_Blue
				    

					Light_all_off();
				  
		         }       
			        
			       Key_Event =0;
				   Key_activeflag = 0;
			        
			              
			        return 1;
			      
           }

         return 0;


}

/*********************************************************************************
**************************************************************************************
void Register_Play_F()
{

  unsigned int temp;
  unsigned int time_level=0;
  
  //unsigned Pause_f_temp =0;
  Key_TrueFlase_Buffer =0;
  
  Key_Buffer &=~(Key_True|Key_False);
  //Key_Buffer =0;
  
    TimeCnt =1;
	
	while(1)
	{	
		WatchdogClear();
		
		if(Sleepflag) 
		{
		   gTemp = C_Finish;	
           return;	
		}	
           
        #ifdef C_PassEn
			PassFlag =0;			 	
		#endif       
           
           
		if(Key_Buffer)//(Key)||
		{

		   
            
          // if(Key_Event)//在前面语音按键
          // { 
          //  temp =Key;//在前面语音按键
          //  Key_Event =0;
          // }

		 if(Key_Buffer&(Key_True|Key_False))  
		  {

		    temp = Pressflag&Key_Buffer;//Key;
		   
           if(temp==(Key_True|Key_False))
             	{
                  //Key_TrueFlase_Buffer |= temp&(Key_True|Key_False);//temp;
                  //Key_TrueFlase_Buffer = (Key_True|Key_False);//temp;
				     temp =0;
				 

		                if(TimeCnt<C_1s_Pause)
		               	{

		                   //if((Key_TrueFlase_Buffer) == (Key_True+Key_False))
		                   	{

		                         Key_TrueFlase_Buffer =0;

								 TimeCnt =1;
								  Key =0;
								 while(1)
									 {
									 	
									    if(Sleepflag) 
                                           return;	
									 	
									    WatchdogClear();
									    if(Key)
										 {
											  temp = Pressflag&Key;
											 
											  
											  
												if(temp ==0)//抬起
										        	{
										                 
										                  if(Key&Key_TrueFlase_Buffer)
										                  	{											 	       
														 	    Key_TrueFlase_Buffer =0;   
																
													         //   Key_Buffer&=~(Key_False);//20160122
						                                        temp = Key&(Key_True);
																Key_Buffer=0;
																TimeCnt =1;
																time_level =0;
																break;
										                  	}
										
										        	}
									 
									          Key =0;
									          
											  if(TimeCnt<C_1s_Pause)
												 {
													if((Key_TrueFlase_Buffer + temp) == (Key_True+Key_False))
													 {
									 
														   temp =0;
														   Key_TrueFlase_Buffer =0;
														   Key_Buffer=0;//~(Key_True|Key_False);
														   TimeCnt =1;
														   time_level =0;
									
														   break;
									 
									 
													 }
									 
									 
												 }
									 
									 
											  if(temp&(Key_True|Key_False))
											  	{
													 Key_TrueFlase_Buffer = temp;
											  
													 TimeCnt =1;
											  	}
											  else if(temp&(Key_Blue|Key_Orange|Key_Pink|Key_Purple|Key_Yellow))	
											  	{
                                                       Key_Buffer=0;
													   TimeCnt =1;
													   time_level =0;
                                                       break;
											  	}
									 
										 }
									 
									 
										 if(Key_TrueFlase_Buffer)
										 {
									 
											  if(TimeCnt>=C_1s_Pause)
												 {
													Key_TrueFlase_Buffer =0;

												    //Key_Buffer&=~(Key_False);//20160122
						                            temp = Key_Buffer&(Key_True);

													Key_Buffer=0;
													TimeCnt =1;
													time_level =0;
													break;
									 
												 }
									 
										 }

                                        
										if(TimeCnt>180*16)
										{
											Sleepflag |=C_GameTimeout;
											Key_Buffer=0;
											return ;
										}

										 
									 
									 }


		                   	}
		               	}


             	}
		       else
		       	{
		       	    if(temp ==0)//抬起
		       	    	{
	                      Key_TrueFlase_Buffer =0;  
						  
						  Key_Buffer&=~(Key_False);
						  temp = Key_Buffer&(Key_True);//Key_False无效;//Key_Buffer&Key_TrueFlase_Buffer;//Key;//重新给值
		       	    	}
		       	     else
		       	     	{
		       	          temp =0;

						  if((Pressflag&Key)&(Key_True|Key_False))//Key;
						  	{
						      TimeCnt =1;
							  time_level =0;
						  	}

		       	     	}


		       	}

		 	}
          else 
        	{
                 
                  //if((Key_Buffer&Key_TrueFlase_Buffer))
                  //	{
                      
                   //   Key_TrueFlase_Buffer =0;  
					//  temp = Key_Buffer&Key_TrueFlase_Buffer;//Key;//重新给值

                  //	}

				  temp = Key_Buffer;

        	}

		   Key =0;
		  // Key_Buffer =0;
		  if(temp)
		  {



		  

		  	// switch(temp)
		  	 {
		  	 	 if(temp&Key_Blue)     
				 	{
				 	 Key_Buffer&=~Key_Blue;
				 	*(P_IOA_Buffer)^=LED_Blue;Registered_Play_Status^=Key_Blue ;PlayA1800_Elements(SFX_Buzzer);time_level =0;
					//break;
		  	 	 	}
		  	 	 if(temp&Key_Orange)
				 	{
				 	  Key_Buffer&=~Key_Orange;
				 	 *(P_IOA_Buffer)^=LED_Orange;Registered_Play_Status^=Key_Orange;PlayA1800_Elements(SFX_Buzzer);time_level =0;
					// break;
		  	 	 	}
		  	 	 if(temp&Key_Pink)     
				 	{
				 	  Key_Buffer&=~Key_Pink;
				 	  *(P_IOA_Buffer)^=LED_Pink;Registered_Play_Status^=Key_Pink ;PlayA1800_Elements(SFX_Buzzer);time_level =0;
					 // break;
		  	 	 	}
		  	 	 if(temp&Key_Purple)
				 	{
				 	  Key_Buffer&=~Key_Purple;
				 	 *(P_IOA_Buffer)^=LED_Purple;Registered_Play_Status^=Key_Purple;PlayA1800_Elements(SFX_Buzzer);time_level =0;
					//break;
		  	 	 	}
		  	 	 if(temp&Key_Yellow)
				 	{//Key=0; 
		  	 	       Key_Buffer&=~Key_Yellow;
		  	 	       
		  	 	                      *(P_IOA_Buffer)^=LED_Yellow;
		  	 	                       

		  	 	                     
		  	 	                     Registered_Play_Status^=Key_Yellow;
		  	 	                     
		  	 	                     PlayA1800_Elements(SFX_Buzzer); time_level =0;
		  	 	                    // break;
		  	 	 	}
		  	 	                     
		  	 	                     
		  	 	 if(temp&Key_True)    //Key=0; 
		  	 	 	{
		  	 	 	  TimeCnt =1;
                      time_level =0;
                        if(Key_True_F())
							return;


		  	 	 	}
		  	 	 //if(temp&Key_False)
		  	 	 //	{

									// break;
		  	 	 //	}
		  	 	 	
		  	 }		  	
		  }		


		
		// TimeCnt =1;
		  
		}	

           if(Key_Buffer&(Key_True|Key_False))
        	{

                 if(TimeCnt>=C_1s_Pause)
                 	{               	 			
						//Key=Key_TrueFlase_Buffer&Key_True;
                       Key_Buffer&=~(Key_False);

                       if(Key_Buffer&Key_True)//Key_True
                       	{
                          if(Key_True_F())
							  return;

						  
                 	   }
                        
                   	   // Key_TrueFlase_Buffer =0;
                 	}

        	}

       

       if(TimeCnt>10*16)
       	{

	         if(++time_level>=42)
	         	{
	         	 // PlayA1800_Elements(VLFZEN7020);
	         	  time_level =0;
	         	  GameTimeout();
	         	  Key_activeflag =0;
	             // gTemp = C_Finish;				  
				  //break;
				  
	         	}
			 else
			 {
			 	 Key_activeflag = ALL_Key_Enable;
			 	 PlayA1800_Elements(VLHPQEN_Intro01b);//227 TimeCnt
			 	 Key_Event =0;
				 Key_activeflag = 0;
			 }

              



		 
       	}



		 
		
	}
	
}



/*******************************************************
****************************************************************/
//==================================================
//==================================================
//
//==================================================
void  Questions_init()
{
	unsigned int i;
	
      	i = 0;///////////////!!!!!!!!!!!!!!!!!!
		while(i<C_QuestionRAM)
		{
			QuestionStatus_LQA[i] = QuestionStatus_LQ[i];
		//	QuestionStatus_Asked[i] = 0;
			i++;	
					
		}
		
//		i = 0;///////////////!!!!!!!!!!!!!!!!!!
//		while(i<C_QuestionRAM)
//		{
//		    QuestionStatus_LQA[i] = QuestionStatus_LQ[i];
//			i++;	
//					
//		}	
		
}

void NewgameInit()
{
	  unsigned int i;
	  

	    Player_Activing_Bit =0;
  

      for(i=0;i<6;i++)
		  Question_Quality_Last[i] =0;
	
          Questions_init();
	
	
	
	
}

void Ram_OnInit()
{
	   unsigned int i =0;
		Restart =0;
		T1=0;
		T2=0;
	    Last2Cat[0] =0;
	    Last2Cat[1] =0;
	    
	      i = 0;///////////////!!!!!!!!!!!!!!!!!!
		while(i<C_RoundNum)
		{
			LastCategory_Series[i] = 0;
			i++;	
					
		} 
	    
	  
	
}

void Reset_Memory()
{
	  unsigned int i=0;

		while(i<C_RoundNum)
		{
			LastCategory_Series[i] = 0;
			i++;	
					
		} 	
	
	
}

/////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////
void SetPingame()
{
	      unsigned int  i = 0;///////////////!!!!!!!!!!!!!!!!!!
		while(i<Registerd_Num)
		{
			//Pingame[i] = i+1;
			Pingame[i/16]|=BitMap[i%16];
			Registered_Play_Status|=BitMap[i%16];	
			i++;	
					
		}
	
	
}

unsigned  Step1()
{	
	unsigned int i;
	unsigned int temp;
	unsigned int timeovercnt =0;
//	unsigned int first_a9 =0;
		
	
   
   
    Cn =0;
    Registerd_Num =0;
    Player_Activing_Bit =0;//CurrentP
    Player_Activing_Cnt =0;
//    Currentsound =0;
    CurrentRound  =1;

    Tie =0;
    
    gQuestionIdx = 0xffff;
    gQuestionIdx_1 = 0xffff;//TwoSounds的第一道	
 
 #if C_Passcheck_En   	
	PassTimeCnt =0;
	PassTimeCnt_temp =0;
	Pressflag_temp =0;
	Pass_Key_temp =0;
	PasstoEnd =0;
    PassFlag =0;
 #endif	
	

    Dis_Player=0;

   
//    OffSide_Askflag =0;
	firstFlag_23b =0;
//	OFFsideFlag =0;
//	HattickOrOffside_Flag =0;
	FreeKick_Flag = 0;
	
//	QnAfter_Event5=0;
	Speed_BonusFlag =0;
    Key_TrueFlase_Buffer =0;
	
	Soloflag =0;

	Countdownflag =0;
//	RandFof_Flag =0;
	LED_Cnt =0;	
	Tieflag =0;	
//	Answered_Player_Lound1 =0;	
		
//	Event_List = Event_List_Init;
//    Event_ThisGame =0;
//	Event_cnt =0;  
	
//	Registered_Actived_status =0;//ALL_Play_Registed_Init;
	Registered_Play_Status =0;
	Question_Answer =0;
	L14flag =0;

	TwoKeyflag =0;
	Eventflag =0;

	Sleepflag =0;
		
	//Cycle_Timeout_cnt=1;  //在选定Players后再设
//	Silent_updatedFlag =0;
	

	Leader_Player =0;
	Lowest_Player =0;

//	AnswerDuringQue =0;
//	Qn = 0;

//	Length_LQGame =0;
	Round =0;
	
    Key_Event =0;
    

//	FiveSec_En =0;
//	FiveSec_cnt =0;
	
    

//

//    R_Event_AddTo = Event_AddTo;

	
   //for(i=0;i<4;i++)
   	{
      Cur_Active_Player = 0;
   	}

	QuestionCycle[0]=0;
	QuestionCycle[1]=0;
	QuestionCycle[2]=0;
	QuestionCycle[3]=0;


    CheaterFlag =0;
	Player_Activing_Bit =0;
  
   
        Questions_init();	
		Reset_Memory();	
      
		 i = 0;///////////////!!!!!!!!!!!!!!!!!!
		while(i<C_Player_Num)
		{
			Player_Point[i] = 0;
			Rounds[i] =0;
			i++;	
					
		}
		
	     i = 0;///////////////!!!!!!!!!!!!!!!!!!
		while(i<C_ElementsRAM)
		{
			Pingame[i] = 0;
			Pselected[i] =0;
			i++;	
					
		}
    
	
		
		
   
//    if(VOL1Flag==1)
//   	   Supress_Question_Switch();  
   

        BlinkFlag_Data = 0;
        Light_all_off();

        WatchdogClear();     
     
	    PlayScoresFlag =0;
		
		TimeCnt = 1;
//		Key_Buffer =0;

		
//		BlinkFlag_Data = All_Led_data;
//        FiveSec_En =1;
//        FiveSec_cnt =0;

     Key_activeflag =Playbutton;//ALL_Key_Enable&(~(Key_True|Key_False));
//     VolumeEnable =1;
     Key_Event =0; 

      if(Restart ==0)
      {
      	  LFX_Data_Cnt =0;
		  LED_Cnt =0;
	      LFXFlag_Data =0x01;
	      do
	      {	

	      	PauseFlag =0;
		    PlayA1800_Elements(SFX_On);	//SFX_ON
		    //delay_time(8*16);
			BlinkFlag_Data = 0;
		    LFXFlag_Data=0;
	        Light_all_off();
	//        FiveSec_En =0;
	        PlayA1800_Elements(A_VLMMREN_Hello);	//SFX_ON
	        delay_time(8);
	      	}while(PauseFlag);
      }
       VolumeEnable =0;
     Key_activeflag =Only_Play_KeyEnable;//ALL_Key_Enable&(~(Key_True|Key_False));
     Key_Event =0;    
      
	  PlayA1800_Elements(A_VLMMREN_SetUp_01);
      PlayA1800_Elements(A_VLMMREN_SetUp_04);
      PlayA1800_Elements(A_VLMMREN_Button_01a);
     while(1) 
     {  

	      if(Sleepflag)
		  	return 0;


	      temp = delay_time(20*16);
	      
	      if(temp == TimeOver)
	      {
	      	      timeovercnt++;
	      	  
	      	  
	      	
	      	      if(timeovercnt<9)
	      	      {
			         PlayA1800_Elements(A_VLMMREN_SetUp_01);
			         PlayA1800_Elements(A_VLMMREN_SetUp_03);
			         PlayA1800_Elements(A_VLMMREN_Button_01a);
			      
	      	      }
	      	     else
	      	     {
	      	        GameTimeout();	
	      	     	timeovercnt=0;
	      	        //return  C_Off_Mode;
	      	       
	      	     }
	      }
	      else
	           timeovercnt =0;  
	      
	      if((Key_Event==PB_button))
	      {  
	           Key_Event =0;  
	         if(Registerd_Num<10)
	         {   
	      	  Registerd_Num++;
			  //PlayA1800_Elements(SFX_Plus);
			   Play_Seq(Registerd_Num,C_NX);//PlayA1800_Other(Serie_N_NumPlayers);
	         }
	        else 
	            PlayA1800_Elements(A_VLMMREN_10Max);
	      	
	      }
      	  else if((Key_Event==MB_button))
	      {  
	           Key_Event =0;
	         if(Registerd_Num>1)  
	          {   
	      	   Registerd_Num--;
			  // PlayA1800_Elements(SFX_Minus);
			   Play_Seq(Registerd_Num,C_NX);//PlayA1800_Other(Serie_N_NumPlayers);
	          }
	          else
	             PlayA1800_Elements(A_VLMMREN_1Min);
	      	
	      }
		 else if((Key_Event==Playbutton))
	      {  
	           Key_Event =0;  
	           
	         if(Registerd_Num>=1)   
               break;
	      	
	      }

	      
		  
      
     }
      
        SetPingame();
		
		PlayA1800_Elements(SFX_Buzzer);
		
		
		
		
		

  if(Registerd_Num>1)
  {
  	
//  	    if(Registerd_Num<5)
//  	    	NumRounds =Registerd_Num+1;
//  	    else
//  	       NumRounds = 5;
  	       
  	       
  	       
  	       SinceLastE  =0;
  	        R_2SLoop =0;
  	       
		
		   sp_offset = 0xffff;

		   timeovercnt=0;

		   
		   while(1) 
		     {  
		
			      if(Sleepflag)
				  	return C_Off_Mode;
			      
			      
			    Key_activeflag =0;//Playbutton;//Only_Play_KeyEnable;//ALL_Key_Enable&(~(Key_True|Key_False));
		        Key_Event =0; 
		
		        TwoKeyflag = Playbutton;
		       
			  do
			  	{
			        PauseFlag =0;
			        //PlayA1800_Elements(SFX_Buzzer);
			        //PlayA1800_Elements(A_VLMMREN_SetUp_04);
			        //Play_Seq(Registerd_Num-1,C_NumP_StartAddr);
			        //delay_time(8);
			        PlayA1800_Elements(A_VLMMREN_SetUp_02);
			        
			      if(sp_offset==0xffff)  
			        PlayA1800_Other(Serie_Player);//Play_Seq(Registerd_Num-1,C_Play_StartAddr);
			       else
			        PlayA1800_Elements(sp_offset);
			         
			        delay_time(8);
			  	}while(PauseFlag);
		         TwoKeyflag =0; 
			      
			      
			      
			      
				  
		     	  Key_activeflag =Playbutton;//ALL_Key_Enable&(~(Key_True|Key_False));
				  Key_Event =0; 
				  
			      PlayA1800_Elements(A_VLMMREN_SetUp_04);
			      PlayA1800_Elements(A_VLMMREN_Button_01a);
			      
			      
			     // Key_activeflag =Only_Play_KeyEnable;//ALL_Key_Enable&(~(Key_True|Key_False));
				 // Key_Event =0;  
			      delay_time(20*16);
			      
			      if(Key_Event==Playbutton)
			      {  
			      	   Key_Event =0;  
			      	   Key_activeflag =0;	
			      	   PlayA1800_Elements(A_VLMMREN_ChoosePlayerEnd);
			      	   
			      	  if(Registerd_Num>2)
			      	  {
			      	  	PlayA1800_Elements(A_VLMMREN_ChoosePlayerEnd02);
			      	  }
	
			      	   delay_time(8);

					  if(Restart ==0)
					  {
					  	  		     	 
				          Key_Event =0; 
				          Key_activeflag =Playbutton;//ALL_Key_Enable&(~(Key_True|Key_False));
					      PlayA1800_Elements(A_VLMMREN_Rule_01b);
					      
					      
					  }
					  

				 
		
			      	
			      	   break;
			        }	  


                      timeovercnt++;

					  if(timeovercnt>8)
					  	{

	      	               GameTimeout();	
	      	     	       timeovercnt=0;
					  	}
					  

				  
		      
		        }
    }    
   else if(Registerd_Num ==1)
   	{
   		if(Restart ==0)
   		{
	         Key_Event =0;  
			 Key_activeflag =Playbutton;
	         PlayA1800_Elements(A_VLMMREN_Rule_01a);
   		}
   	}
   	


              if(Restart ==0)
              {
         			   //Key_Event =0;  
			           Key_activeflag =Playbutton;//Only_Play_KeyEnable;
		               TwoKeyflag = Playbutton;
					   PauseFlag =0; 
		
		                do
		                {
		                	
		                	if(PauseFlag)
		                	{
		                		PauseFlag =0;
		                		
					              if(Restart ==0)
								  {
								  	  		     	 
							          Key_Event =0; 
							          Key_activeflag =Playbutton;//ALL_Key_Enable&(~(Key_True|Key_False));
							          
							         if(Registerd_Num ==1)  
								        PlayA1800_Elements(A_VLMMREN_Rule_01a);
								      else
								        PlayA1800_Elements(A_VLMMREN_Rule_01b); 
								      
								      
								  }
		                		
		                	}
		                  
		                  
		                  
				      	  
				      	  Led_ON_Some(LED0_BIT);
						  PlayA1800_Elements(A_VLMMREN_Rule_04);
						  Light_all_off();
						  Led_ON_Some(LED3_BIT);
						  PlayA1800_Elements(A_VLMMREN_Rule_05);
						  Light_all_off();
						  Led_ON_Some(LED2_BIT);				  
						  PlayA1800_Elements(A_VLMMREN_Rule_06);
						  Light_all_off();
						  Led_ON_Some(LED1_BIT);
						  PlayA1800_Elements(A_VLMMREN_Rule_07);
						  Light_all_off();
				  	   }while(PauseFlag);
		                 TwoKeyflag =0;
              }

         Key_Event =0;  
         Key_activeflag =Playbutton;
        if((Registerd_Num>1))//||(Record==0))
        	{ 
//                    PlayA1800_Elements(A_VLMMREN_Rule_08);
//                    Play_Seq(3,C_RoundsTable);
//                    PlayA1800_Elements(A_VLMMREN_Rule_10);
                    
        	}
        else 
          { 
          	
          	    Key_Event =0;  
                Key_activeflag =0;
         
                PlayA1800_Elements(A_VLMMREN_Rule_11);
                
		        if((Record>100))
		           {
		        	  PlayA1800_Elements(A_VLMMREN_Rule_03Max);
		        	  PlayA1800_Elements(A_VLMMREN_Rule_03b);
		           }
			     else if(Record!=0)
			     	{
					    PlayA1800_Elements(A_VLMMREN_Rule_03);
		                Play_Seq(Record,C_Point_A_StartAddr);//C_NX
		                PlayA1800_Elements(A_VLMMREN_Score_02);
						PlayA1800_Elements(A_VLMMREN_Rule_03b);
		      
		
			     	}
          }
		
         Key_Event =0;  
         delay_time(8);
         PlayA1800_Elements(A_VLMMREN_Start);
         delay_time(8);


	 Round =1;
	 return C_Game;//C_SelectQuestion_Round1;

		 
}

/*******************************************************************
**********************************************************************

unsigned int Checkcn()
{
	unsigned int temp =0,zero_cnt=0,zero_Player =0;
	
	
	
	

	
	
}
/*******************************************************************
**********************************************************************/


void Select_Sound()
{
   unsigned int cnt =1;
   unsigned int temp_Category;
   
   if(R_E ==C_TwoSounds)
       cnt=2;
     do
     {
        Check_LQA();
        gQuestionIdx_1=gQuestionIdx;     
        
       
        gQuestionIdx= Select_Questionrandom_4(*P_TimerB_CNTR % LQA);
        
        temp_Category= Get_Question_Category(gQuestionIdx);
        
        if(Last2Catcnt)
        {
        	 Last2Catcnt++;
        
          if(Last2Catcnt<4)	 
           {
             if(temp_Category == Last2Cat[1])
                {
             	    gQuestionIdx =  Select_Question_ModeStatus_Other(temp_Category);
             	    temp_Category= Get_Question_Category(gQuestionIdx);
             	    Last2Catcnt =0;
                }
           	
           }
          else
             Last2Catcnt =0; 
        	
        }
        
        
		#ifdef C_debugtest
			if (testqueptr<80)
			{
				gQuestionIdx = testque[testqueptr++];
			}
		#endif  
        
      
      	QuestionStatus_LQ[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];		//suppress Qx from LQ;	
		QuestionStatus_LQA[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];	
		QuestionStatus_Asked[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];
      
      
      Save_Question_Category2Last(temp_Category);
      Save_Question_CategoryMemory();
      cnt--;
      
      
	   __asm("INT OFF");
      MoveSPIDriverToRAM();		
      SPI_Flash_Sector_Erase(T_LQ_Secter_L,T_LQ_Secter_H);
      SPI_Flash_SendNWords(QuestionStatus_LQ,C_QuestionRAM,T_LQ_Secter_L,T_LQ_Secter_H);
      
      SPI_Flash_Sector_Erase(T_Asked_Secter_L,T_Asked_Secter_H);
      SPI_Flash_SendNWords(QuestionStatus_Asked,C_QuestionRAM,T_Asked_Secter_L,T_Asked_Secter_H);   
      
        __asm("INT FIQ,IRQ");
      
      
      
     }while(cnt>0);

}
/*******************************************************************
**********************************************************************/
void Events()
{
	
	if((*P_TimerB_CNTR % 6)<3)
	{
		 R_E = C_OneMoreTime;
	     Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);
	     PlayA1800_Elements(A_VLMMREN_OneMore);	
	}
  else
   {
  	     R_E =C_TwoSounds;
  	     R_2SLoop =0;
  	     PlayA1800_Elements(A_VLMMREN_TwoSounds);
  	     
  	     Player_Activing_Cnt =Select_Pingamerandom();	
   }
	SinceLastE=0;
}

/*******************************************************************
**********************************************************************/
unsigned int Game()
{
	unsigned int temp;

    R_E =0;

    firstFlag_23b&=~0x800;
    CheaterFlag =0;
    Eventflag =0;
	End20flag =0;
     
	Key_Event =0;
	Key_activeflag = ALL_Key_Enable;
	
    //Player_Activing_Cnt =*P_TimerB_CNTR % Registerd_Num ;
    
    
//     temp = Get_Length_Pingame();
//     
//    if(temp==0)  
//    {
//        SetPingame();
//        temp = Registerd_Num;
//        
//    }
//    
//        Player_Activing_Cnt =Select_Pingamerandom_4(*P_TimerB_CNTR % temp);
     
   while(1)
   	{
	    
	    WatchdogClear();
   	  
   	  	if(Sleepflag) 
		     return C_Finish ;   
	    
	    CheaterFlag =0;
	    PauseFlag =0;
	    
	    Cn++;    
        SinceLastE++;
        
		if((Get_Num_CategoryMemory()>100)&&(Tie ==0))
			break;

        if((Cn>8)&&(Registerd_Num>1)&&(SinceLastE>4)&&((*P_TimerB_CNTR % 4)==0))
        	Events();
        else      
            Player_Activing_Cnt =Select_Pingamerandom();//SelectNextPingame(Player_Activing_Cnt);
            
            
		    Select_Sound();
		    
		   if(Tie ==0) 
		     Answerflag =1;
		     
			Answer_F();
            Answerflag =0;
            
		    R_E =0;
		  
		   if(Sleepflag) 
		     return C_Finish ;  
		  
		  if(End20flag)
		  	  return C_End;
		
        temp=Get_Length_Pingame();
        
        if((Registerd_Num>1)&&(temp<=1))
        	break;
        	
       if((Registerd_Num==1)&&(temp==0))
	   	     break;
       
     

   	}

	
	

	Key_Event =0;
	Key_activeflag = 0;


//   Save_Some_data();
   
   if(Tie ==0)
 	   return C_End;
   else
      Add_SomePlayer_Point(1,Rounds,Pingame);	

	
	
}



void Answer_F()
{
    unsigned int temp =0;
    unsigned int temp1=0;   
	unsigned int  round =0;//Get_Num_CategoryMemory();
    unsigned int  Currentsound =0;
    unsigned int  timeout_t =0;
    //unsigned int Category= Get_Question_Category(gQuestionIdx);

	//LastCategory_Series[Currentsound] = Category;
     End20flag =0;
  

     if((Restart ==0)&&(CurrentRound==1))//(Cn ==2)&&
     {
     	Key_activeflag =Only_Play_KeyEnable;
     	Key_Event =0;  
     	//delay_time(8);
     	
     	if(Cn ==2)
     	{
     	  	 if(Registerd_Num==1)	
		 	PlayA1800_Elements(A_VLMMREN_Rule_02b);
		  else
		 	 PlayA1800_Elements(A_VLMMREN_Rule_02);	
  		
     	}
        else if((Cn ==3)&&(Registerd_Num>1))
        {
        	 PlayA1800_Elements(A_VLMMREN_Rule_12);
        	
        }  	
     	

     }
           Key_activeflag =0;
           Key_Event=0;
           PlayQuestionflag =1;
           TwoKeyflag = Playbutton;
           
          
           do
           {
           	   PauseFlag =0;
           	  
           	   delay_time(8);
               Ask_Question();//PlayA1800_Elements(Get_Question_Sound(gQuestionIdx));
              
            if(Registerd_Num>1)	
               Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);
              //PlayA1800_Elements(A_VLMMREN_Player_01+Player_Activing_Cnt);
           }while(PauseFlag); 
           
           PlayQuestionflag =0;
		   TwoKeyflag =0;

     
       round =Get_Num_CategoryMemory();
       
      if(Cn<=5)  
       timeout_t =10*16;
      else
      {
      	 timeout_t=2*Cn*16;
      	
      }
      Key_Event=0;
     while(1)
     	{
 	
 	
 	       if(Sleepflag) 
		     return C_Finish ;  
 	
     	   	
     	   Key_activeflag =ALL_TouchEnable;	
     	   //Key_Event=0;
		   TwoKeyflag = Playbutton;
     	   PlayQuestionflag =1;
     	   
     	   PlayA1800_ElementsInit(SFX_Timer);
     	   
     	   Timeout_cnt_En =1;
	       temp = delay_time(timeout_t);
	       Timeout_cnt_En =0;
	       SACM_A1800_Stop();
	       A1800_Flag = 0;
	       
	       PlayQuestionflag =0;
	       TwoKeyflag=0;
	       
	            	   	
     	 	if(Sleepflag) 
		      return C_Finish ;   
	       
	       
	       if(PauseFlag)
	       {
	       	   
			       Key_activeflag =0;
		           Key_Event=0;
		           PlayQuestionflag =1;
		           TwoKeyflag = Playbutton;
		           do
		           {
		           	  PauseFlag =0;
		           	  delay_time(8);
		             
		         
		          if(Registerd_Num>1)	
		              Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);
		              
		              Ask_Question();//PlayA1800_Elements(Get_Question_Sound(gQuestionIdx)); 
		              
		           }while(PauseFlag); 
		           
		           PlayQuestionflag =0;
		           TwoKeyflag=0;
	       } 
	       else
	         {     
		
				   if(Key_Event == LastCategory_Series[Currentsound])
				  	{

                      #ifdef C_productTouch
                          Led_ON_Some(Key_Event);
                      #else
						  Led_ON_Some(Key_Event>>4);
					  #endif	
					
					   
		                Currentsound++;
		                
		               	if(Currentsound >= round)
		               	    Key_activeflag =0;	 
		               	
						Key_Event=0; 
						
						PlayA1800_Elements(SFX_Buzzer);
						delay_time(3);
						Light_all_off();
		                
	
						if(Currentsound >= round)
							{				   

		                       
							   if(Cn<=5)//(((Cn-1)%2)== 0)
							  	   PlayA1800_Other(Serie_Correct1);//PlayA1800_Elements(VLMMREN_Congrate_02);
							  	else if(Cn<=10)
		                           PlayA1800_Other(Serie_Correct2);
							  	else
							  	    PlayA1800_Other(Serie_Correct3);
		
							     delay_time(16);
							     break;
		
							}
	
		                  
				  	}
		           else if((temp == TimeOver)||(Key_Event))
		           	{     
		           		  temp1 = Key_Event;
		           		  Key_Event=0;
		           	      Key_activeflag =0;
		           	      
		           	    if(temp == TimeOver)
		           	    {
		           	    	PlayA1800_Elements(SFX_Gong); 
			       	      if(Registerd_Num>1)
			       	      {
				       	      
				       	      Play_Seq(TooLate_Cnt++%3,C_TooLateTable);
			       	      }
			       	     else
			       	      {
			       	         Play_Seq(TooLatesolo_Cnt++%3,C_TooLateSoloTable);
			       	      } 
			       	      
		           	    }
			       	    else if(temp1)
			       	    {
			       	    	
			       	    	
				       	  #ifdef C_productTouch
	                          Led_ON_Some(temp1);
	                      #else
							  Led_ON_Some(temp1>>4);
						  #endif
			       	    	
			           	      PlayA1800_Elements(SFX_Wrong);  
			           	      //delay_time(4);
			                  Light_all_off();
			                  
			                  if(Registerd_Num>1)
			                  {
			                      Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);//PlayA1800_Elements(A_VLMMREN_Player_01+Player_Activing_Cnt);
			                    
			                       if((Cn==1)&&(Registerd_Num ==2))
			                       {
			                       	  
			                       	  Add_ALL_InactivePlayer_Point(1,Rounds,Pingame);
			                       	
			                       	  PlayA1800_Elements(A_VLMMREN_2Outa);
			                       	  PlayA1800_Elements(A_VLMMREN_Out); 
			                       	  Play_Serieplayer16bit(0,Registered_Play_Status&(~BitMap[Player_Activing_Cnt]),C_Play_StartAddr);
			                       	  
			                       	  PlayA1800_Elements(A_VLMMREN_End_02b);
			                       	  PlayA1800_Elements(A_VLMMREN_2Outb);
			                       	  
			                       	  End20flag =1;
			                       	  delay_time(8);
			                       	  return C_End20;
			                       }
			                  
			                  }
			                  
			                  PlayA1800_Elements(A_VLMMREN_Aie);
			           	      PlayA1800_Elements(A_VLMMREN_Out);
			       	    }
		           	      
		                  Pingame[Player_Activing_Cnt/16]&=~BitMap[Player_Activing_Cnt%16];	
		                  
		                 // PlayA1800_Elements(SFX_Buzzer);
		                 // Play_Seq(Player_Activing_Cnt,C_Play_StartAddr);
						 // PlayA1800_Elements(A_VLMMREN_Out);
		                  delay_time(16);
						   if(Get_Length_Pingame()<2)
						   	  break;
		
		                  if(round>=1)
		                     Player_Point[Player_Activing_Cnt]+=round-1;  
		                   
						   Currentsound=0;
		                   Player_Activing_Cnt =Select_Pingamerandom();//SelectNextPingame(Player_Activing_Cnt);	 
		                   
		                   
		                   
		//				   Player_Activing_Cnt++;
		//
		//				 if(Player_Activing_Cnt==Registerd_Num)
		//				 	  Player_Activing_Cnt=0;
		
		
						   Ask_Question();//PlayA1800_Elements(Get_Question_Sound(gQuestionIdx));
						  // delay_time(8);
						   
						   
		                   //PlayA1800_Elements(A_VLMMREN_Next_01);
		                    Play_Seq(NextCnt++%3,C_NextTable);
		                   //PlayA1800_Elements(A_VLMMREN_Next_02);

		
		           	}

	         }
		   

     	}




	     //Player_Point[Player_Activing_Cnt]=Currentsound;
         Pselected[Player_Activing_Cnt/16]|=BitMap[Player_Activing_Cnt%16];	



}



void  PlayScoreOfwhichplay(unsigned int* BitTable)
{

	   unsigned int  i=0;//,temp;
	
		while(i<Registerd_Num)
		 {
				
			   if (BitMap[i%16]&*(BitTable+i/16))
				   {

					  //PlayScores(Player_Point[i]);
	
				   }
	
			   i++;
				 
		  }


 



}


//////////////////////////////////////////////
//end
///////////////////////////////////////////////////////

unsigned int End()
{

   unsigned int memory_length =0;
   unsigned int temp_length,temp;

   unsigned int Leader_Player_temp =0;
   int  h_round_temp =0;
 
    memory_length=Get_Num_CategoryMemory();
 
 	 temp_length  = memory_length;
	 if(temp_length>0)
	 	 temp_length-=1;
 
 

 
  if(Registerd_Num>1)
  {

    if(End20flag ==0)
   	 {

		    if(memory_length>100)
		    {
		    	
		       Add_SomePlayer_Point(1,Rounds,Pingame);	
		       Add_SomePlayer_Point(memory_length,Player_Point,Pingame);	
		    	
		       Play_Serieplayer(0,Pingame,C_Play_StartAddr);	
		       PlayA1800_Elements(A_VLMMREN_End_03c);	
		       PlayA1800_Elements(A_VLMMREN_End_02b);
		       delay_time(8);	 	

		    }
		    else
		    {
		    	  Add_SomePlayer_Point(1,Rounds,Pingame);	
		    	  Add_SomePlayer_Point(memory_length,Player_Point,Pingame);	
		    	  
			     Play_Serieplayer(0,Pingame,C_Play_StartAddr);
			     PlayA1800_Elements(A_VLMMREN_End_01);
				 PlayA1800_Elements(A_VLMMREN_End_02);
				 PlayScores(temp_length);//Player_Point[Player_Activing_Cnt]
		      
		      
			    if(memory_length<15)
				{ 
			       PlayA1800_Elements(A_VLMMREN_End_03b);
			       PlayA1800_Elements(A_VLMMREN_End_02b);
				}
				else
				{
				   PlayA1800_Elements(VLMMREN_Correct3b);
			       PlayA1800_Elements(A_VLMMREN_End_02b);
				}	
		         delay_time(8);
		    }
   	}

     //PlayScoreOfwhichplay(Pingame);
     //temp = Get_Num_Higgest_score(Registered_Play_Status);

     if(Get_Num_Bigscore(Rounds,2,Registered_Play_Status)==0 )//NumRounds
     {
     	 Cn =0;
     	 CurrentRound++;
		 Reset_Memory();	
         SetPingame();
       if(Get_All_SameNum(Rounds,1,Registered_Play_Status)==0)//(CurrentRound !=3)
       	{
       	   PlayA1800_Elements(SFX_Yeah);	
       	   delay_time(8);	
           PlayA1800_Elements(A_VLMMREN_WinRound02a);    
		   delay_time(8);
              
		   
       	}
	   else
	   	{
	   	    Key_CheckScores();	
	   	    delay_time(8);	
		    PlayA1800_Elements(A_VLMMREN_WinRound03);	 
		    delay_time(8);
		  

	   	}




		 
     	 return C_Game;
     }
    else
    {
    	    temp =Get_Num_Higgest_score(Rounds,Registered_Play_Status );//Pingame

            Leader_Player_temp = Leader_Player;
            h_round_temp = Higgest_T;

			
    	    if(temp>1)
    	    {
    	    	temp =Get_Num_Higgest_score(Player_Point,Leader_Player);//temp = checksamescore(Leader_Player);
				
    	      if(temp> 1)
    	      {	
    	    	
		    	  temp = 0;///////////////!!!!!!!!!!!!!!!!!!
				while(temp<C_ElementsRAM)
				{
					Pingame[temp] = 0;
					temp++;	
							
				}
				temp = 0;
				
				while(temp<C_Player_Num)
				{
				    if(BitMap[temp%16]&(Leader_Player))//Pingame[temp/16]
				        Pingame[temp/16]|=BitMap[temp%16];
				    	
				    	temp++;
				}			
				
				
				Play_Serieplayer(0,Pingame,C_Play_StartAddr);
				PlayA1800_Elements(A_VLMMREN_End_03d);
				PlayA1800_Elements(A_VLMMREN_End_Tie01);
				PlayA1800_Elements(A_VLMMREN_WinRound01b);
				Play_Seq(h_round_temp,C_RoundsTable);
				PlayA1800_Elements(A_VLMMREN_End_Tie04);
				
				//temp =Get_Num_Higgest_score(Player_Point,Registered_Play_Status);
				PlayScores(Higgest_T);
				PlayA1800_Elements(A_VLMMREN_End_Tie05);
				
				Tie =1;	
				delay_time(8);

				Reset_Memory();	
				
				Game();
				
				temp =Get_Num_Higgest_score(Rounds,Registered_Play_Status);//Pingame
				
				//PlayA1800_Elements(SFX_EndGame);
			    //Play_Serieplayer16bit(0,Leader_Player,C_Play_StartAddr);//Play_Serieplayer(0,&Leader_Player,C_Play_StartAddr);
	            PlayA1800_Elements(A_VLMMREN_WinRound01);	   
	    	    Play_Seq(Higgest_T,C_RoundsTable);//PlayScores(Higgest_T);
	    	    PlayA1800_Elements(A_VLMMREN_End_03);    
    	      }
    	     else
    	      {
    	      	
    	      	  Play_Serieplayer16bit(0,Leader_Player_temp,C_Play_StartAddr);
    	      	  PlayA1800_Elements(A_VLMMREN_WinRound01b);
    	      	  Play_Seq(h_round_temp,C_RoundsTable);
    	      	  PlayA1800_Elements(A_VLMMREN_End_Tie02);
    	      	  
    	      	  //temp =Get_Num_Higgest_score(Player_Point,Leader_Player); //上面已求出  	      	  
    	      	  Play_Serieplayer16bit(0,Leader_Player,C_Play_StartAddr);
    	      	  PlayA1800_Elements(A_VLMMREN_End_02);
    	      	  PlayScores(Higgest_T);
    	      	  PlayA1800_Elements(A_VLMMREN_End_Tie03);
    	      	  PlayA1800_Elements(A_VLMMREN_End_03b);    
    	      }
				
    	    }
            else
            {
            	//delay_time(8);	
            	//PlayA1800_Elements(SFX_EndGame);            	
	            //Play_Serieplayer16bit(0,Leader_Player,C_Play_StartAddr);//Play_Serieplayer(0,&Leader_Player,C_Play_StartAddr);
	            PlayA1800_Elements(A_VLMMREN_WinRound01);	    	   
	    	    Play_Seq(Higgest_T,C_RoundsTable);//PlayScores(Higgest_T);
	    	    PlayA1800_Elements(A_VLMMREN_End_03);           	
            	
            }
            
            

    }	  

	
	// PlayA1800_Elements(SFX_Winner);
  }
 else if(Registerd_Num==1)
 {
 	
 	 if(memory_length>100)
 	 {
 	 	 Record=memory_length;
 	 	 
 	 	 
 	  __asm("INT OFF");
      MoveSPIDriverToRAM();		
      SPI_Flash_Sector_Erase(T_Record_Secter_L,T_Record_Secter_H);
      //SPI_Flash_SendNWords(&Record,1,T_Record_Secter_L,T_Record_Secter_H); 
      SPI_Flash_SendAWord(T_Record_Secter_L,T_Record_Secter_H,Record);
        __asm("INT FIQ,IRQ");
 	 	 
 	 	 
 	 	 
 	 	 PlayA1800_Elements(A_VLMMREN_End_03d);
 	 	 PlayA1800_Elements(A_VLMMREN_End_03Solo);
 	 }
 	else
 	{
 	
	 	 PlayA1800_Elements(A_VLMMREN_End_02);
	 	 PlayScores(temp_length);
	 	 
	 	 if(Record<temp_length)
	 	 {
	 	 	 Record=temp_length;
	 	 	 
			__asm("INT OFF");
			MoveSPIDriverToRAM();		
			SPI_Flash_Sector_Erase(T_Record_Secter_L,T_Record_Secter_H);
			SPI_Flash_SendAWord(T_Record_Secter_L,T_Record_Secter_H,Record);
			//SPI_Flash_SendNWords(&Record,1,T_Record_Secter_L,T_Record_Secter_H); 
			__asm("INT FIQ,IRQ");
	 	 	 
	 	 	 
	 	 	 PlayA1800_Elements(A_VLMMREN_End_01b);
	 	 	 PlayA1800_Elements(A_VLMMREN_End_03b);
	 	 }
 	 }
 }
 
     //if(Record==0)
     //	Record=temp_length;
 
 	 PlayA1800_Elements(SFX_Winner);
 	 delay_time(8);	
 	 
 	 if((memory_length>=100)&&(Registerd_Num==1))
 	 {
 	   PlayA1800_Elements(A_VLMMREN_End_03c); 
       PlayA1800_Elements(SFX_Winner);
       
 	 }
 
	   Key_Event =0;
	   Key_activeflag = Playbutton;
	 
	 
	  if(Registerd_Num==1)
	  {  
       PlayA1800_Elements(A_VLMMREN_End_04);
       PlayA1800_Elements(A_VLMMREN_Button_01b);
	  }
	 else
	  {
       PlayA1800_Elements(A_VLMMREN_End_04);
       PlayA1800_Elements(A_VLMMREN_Button_01a);	  	
	  	
	  }  
 
	 
	   delay_time(10*16);
	 
	  if(Registerd_Num==1)
	  {  
       PlayA1800_Elements(A_VLMMREN_End_04);
       PlayA1800_Elements(A_VLMMREN_Button_01b);
	  }
	 else
	  {
       PlayA1800_Elements(A_VLMMREN_End_04);
       PlayA1800_Elements(A_VLMMREN_Button_01a);	  	
	  	
	  }  
       
       delay_time(10*16);
       
	 if(Key_Event  == Playbutton)
	 	{
            Key_Event=0;
            PlayA1800_Elements(SFX_Buzzer);
            Restart =1;
			return  C_StartGame;

	 	}
      else
      	{
            Key_Event=0;
            PlayA1800_Elements(A_VLMMREN_Bye_02);
            return C_Off_Mode;
      	}


	 Key_Event =0;
	 
}



//============================================================
//==============================================================
void  Go_Rest()
{
	unsigned i;
	asm("IRQ off");
	
		
	if(A1800_Flag)
	{
	 SACM_A1800_Stop();
	 A1800_Flag =0;
	}
//	Led_SP_Off();
	
	i = 1000;
	while(i--) System_ServiceLoop();

//	i = 0x3000;
//	while(i)
//	{
//		if((*P_IOA_Data&0x0001))
//		{
//			i--;
//		}
//		else
//		{
//			i=0x3000;
//		}
//		System_ServiceLoop();		
//	}
//	i = 3000;
//	while(i--) System_ServiceLoop();

   // Sleep();
	*P_System_Reset = C_Software_Reset;
}

/**********************************************************
*************************************************************/
void Sleeping()
{
//   unsigned int temp;//temp_Mode;
   unsigned int cnt =0;
	
 if(A1800_Flag)
 {
   SACM_A1800_Stop();
   A1800_Flag = 0;	
   
 }	
	
   Sleep_Io();	
	
while(1)
{	
	
  WatchdogClear();	
  //temp_Mode = Switch_Mode;	
go_on_sleep_sw:	
       cnt =0;
	   Sleep();	
	
//	System_Initial();			// System initial

  // Delay_Xms_PowerOn(60*120);
    
//   temp = (*P_IOA_Data)&0x27f;
////   
//   if((Sleep_IO_Temp&0x27f)!=temp)
//    {
//	   if(temp != 0x27f)
//	   {
//		   while((*P_IOA_Data &0x27f) ==temp)
//		   {
//		   	
//		   	    Delay_Xms_PowerOn(8);//60
//		   	    if(cnt++>2)//80
//		   	    	break;
//		   }
//	   }
//   }
// 
//   	if(cnt>=2)
		//goto go_on_sleep_sw;	
	{	


		Sys_clock_init_Only();
	    //Sys_clock_init();
	    IO_init_Wakeup();
	    
	    
	    Delay1xms(100);
	    GetMode();
	   // Switch_Mode = Key_Instruction;
	    
	 
	 	if((Switch_Mode == Key_Game)||(Switch_Mode == Key_Game_Family))
	    {
         	cnt =Wakeup_IO_Temp^Sleep_IO_Temp;
         	
         // if(VOL1Flag)	
	           cnt&=0x280;//200
	     // else
	      //    cnt&=0x080;
	        
	       // if((cnt)&&(temp&0x200)==0))
	       if((Wakeup_IO_Temp&cnt)!=cnt) 	
	  	    {
	  	   	  break;
	  	    }

	    }
	  else if(Switch_Mode == Key_Instruction)
	    {
	        //Sleep_IO_Temp&=0x7f;
	       
	        cnt =Wakeup_IO_Temp^Sleep_IO_Temp;
	        cnt&=0x7f;
	       // temp&=cnt;	    	
	  	   if((Wakeup_IO_Temp&cnt)!=cnt)
	  	   {
	  	   	  break;
	  	   }
	  	
	    }

       
       Set_Sleep_IO();
		 
	}
    
}

#if C_PassEn
   	PassFlag =0;
#endif   	
   
   	Sleepflag =0;
  	LED_Cnt =0;	//xiang 20150206
   	BlinkFlag_Data = 0;//xiang 20150226
   	CheaterFlag =0;
   //	Event_List = Event_List_Init;
   	
    Sys_clock_init();
    Time_init();
    IO_init();

//	SPI_Initial();
//	SPI_Flash_Release_DP();
	
	Init_CTS();	
	Key_Scan_Init_Wakeup();

    Key_Event =0;

	asm("FIQ ON");
	asm("IRQ ON");	
 
	
}

////==================================================
////
////==================================================
//unsigned KeyOFF_Sleep(void)
//{
////	unsigned i;
//	asm("IRQ off");
//	
//
////	PlayA1800_Elements(C_Sph_Gone);//C_Sph_Bye
//
//     Sleeping();
//
//	return C_StartGame;	
//}
////==================================================
////
////==================================================
//unsigned Game_Sleep(void)
//{
//	//PlayA1800_Elements(C_Sph_Gone);
////	Delay_Xms(1000);					
//	KeyOFF_Sleep();
////	Sleep();
////	*P_System_Reset = C_Software_Reset;  //20130807 xiang
//	return C_StartGame;
//}



//==========================================
//check JT LOGO
//==========================================
//void Check_JT_LOGO()
//{
//	unsigned i,j,temp;
//	i= 0;
//	j = 0;
//	while (j<50)
//	{
//		temp=JTLOGO[i++];
//		temp-=0x0057;
//		temp^=0x1573;
//		VAL_LowestIndex[j++] = temp;
//	}
//}
