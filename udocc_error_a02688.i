/*

uDOC32 compiler problem report - Tue Apr 26 15:00:03 2022
Please report this problem to <fae@generalplus.com>.
If possible, please attach a copy of this file with your report.

PLEASE NOTE: This file contains a preprocessed copy of the source file
that may have led to this problem occurring.

Compiler command line (u'nSP ABI):
  "C:\\PROGRA~2\\GENERA~1\\UNSPID~1.1\\toolchain\\udocc" -S -gstabs -Wall -mglobal-var-iram -mISA=2.0 "-BC:\\PROGRA~2\\GENERA~1\\UNSPID~1.1\\toolchain\\" "-ID:/Prj_GPCE3400/ZMM001A(EN)_MMMMMMM/soft/V02_asV34" "-IC:/Program Files (x86)/Generalplus/unSPIDE 3.0.16.1/library/include" "-IC:/Program Files (x86)/Generalplus/unSPIDE 3.0.16.1/library/include/sys" -I../Include

Version 1.1.3 build information:
  ChangeSet unknown
  Built by generalplus@WIN-N3SO3K0BSAN in unknown
  Build date 2015-10-14 09:21:28 +0800

The remainder of this file contains a preprocessed copy of the
source file that appears to have led to this problem.

*/
# 1 "D:\\Prj_GPCE3400\\ZMM001A(EN)_MMMMMMM\\soft\\V02_asV34\\Algorithm.c"
# 1 "D:\\Prj_GPCE3400\\ZMM001A(EN)_MMMMMMM\\soft\\V02_asV34\\Glob.h" 1


 





 






 
 
 





	 

 

 








 




 

 

 











 
 





 
 















      
 








 



 


 







 

 
 
 
 








 





 



 



 












 

















 

























 






 





                                             

 
 
 
 
 
 





 










                                             






 
























 
 
 
 
 







 
 


























      





























         
         
# 1 "D:\\Prj_GPCE3400\\ZMM001A(EN)_MMMMMMM\\soft\\V02_asV34\\Algorithm.c" 2

# 1 "D:\\Prj_GPCE3400\\ZMM001A(EN)_MMMMMMM\\soft\\V02_asV34\\voice_A18.h" 1























































































































































# 2 "D:\\Prj_GPCE3400\\ZMM001A(EN)_MMMMMMM\\soft\\V02_asV34\\Algorithm.c" 2

# 1 "D:\\Prj_GPCE3400\\ZMM001A(EN)_MMMMMMM\\soft\\V02_asV34\\GPCE1_CE3.h" 1
 
 
 
 
 
 



# 1 "D:\\Prj_GPCE3400\\ZMM001A(EN)_MMMMMMM\\soft\\V02_asV34\\GPCE1_CE3_BODY.h" 1
 
 
 
 






# 10 "D:\\Prj_GPCE3400\\ZMM001A(EN)_MMMMMMM\\soft\\V02_asV34\\GPCE1_CE3.h" 2












 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 
 
 
 
 


















 










 









 













 





 







 




 













 







 






 










 


 

 







 
 
 
 
 

 
 
 
 
 


 


 





 





 





 





 


 



 
 
 
 



 
 
 
 



 
 
 
 



 
 
 
 
 
















 
















 

















 
 
 
 
 
 

 































 
 
 
 



 



 




 
 
 


 
 
 
 
 
 
 
 
 
 
 

 


 
 



 









 









 
 
 
 
 
 









 



 
 


 


 




 

 

 

 


 
 
 
 

 

 

 
 

 
 





 
 
 
 
 









 
 
 
 
 
 

 



 
 
 
 


 


 


 





 


 


 


 


 






 
 
 
 


 
 


 


 


 





 
















 
 
 
 
 
 






















 
 
 
 
 
 

























 
 
 
 
 


 


 


 



 

 




 



 
 


 



 



 

 









 









 
 
 
 
 

 


 
 









 


 
 
 
 
 

 


 
 

 

 









 


 
 
 
 
 
 



 


 
 

 

 

 

 


 
 
 
 
 


 



 
 
 
 



 



 


 


 

















 

 



 
 




 



 
 
 
 
 


 
 
 
 
 


 
 
 
 



 
 

 

















 
 


 


 


















 
 
 
 
 



 
 
 
 

 

 




 













 
 






 
 


 






 
 
 














 
 
 
 
 

 

 

 

 


 
 
 
 
 
 

 

 

 


 
 
 
 


 


 


 


 

 
 





 


 



 



 


 



 
 
 
 













 
 
 
 

 

 

 
 

 

 

 

 

 

 
 
 
 

















 
 



 
 


 



 



 



 
 
 
 









 









 



 



 

















 
 



 
 



 
 
 
 


 
 
 

















 
 
 
 
 
 
 















































 
 
 
 
 
 













# 3 "D:\\Prj_GPCE3400\\ZMM001A(EN)_MMMMMMM\\soft\\V02_asV34\\Algorithm.c" 2

 
 

 

 




 

extern void Light_all_off();

volatile unsigned int Sleep_IO_Temp =0;
volatile unsigned int Wakeup_IO_Temp =0;
volatile unsigned int Wakeup_IO_Temp_debouce=0;

volatile unsigned int TimeCnt_Key =0;
volatile unsigned int Key_buffer_First =0;
volatile unsigned int T_Countdowncnt =0;

unsigned int Restart=0;
unsigned int Cn =0;
unsigned int Registerd_Num =0; 
unsigned int T1=0;
unsigned int T2=0;
unsigned int Last2Cat =0;
unsigned int LastCategory =0;
 
unsigned int Round =0;

unsigned int Player_Activing_Bit =0; 
unsigned int Player_Activing_Cnt =0; 

unsigned int Player_Activing_Bit_sec =0;

 
unsigned LQA=0;
 
 

 
 
 
unsigned gQuestionIdx = 0xffff;
 

 

 
 
unsigned int QuestionStatus_LQA[20 ]; 
unsigned int QuestionStatus_LQ[20 ]; 
 

unsigned int QuestionStatus_Asked[20 ];
int Player_Point[4 ]={0,0,0,0};
int Player_Point_temp[4 ]={0,0,0,0};
unsigned int ParBool[4 ]={0,0,0,0};
unsigned int Pingame[20 ]={0};
 

 


 

 
unsigned R_QuestionNum = 0;

unsigned int Question_Asked_Round1[14]={0};



 







 
 

volatile unsigned FiveSec_cnt =0;
volatile unsigned temp_FiveSec_cnt =0;
 

unsigned int FiveSec_En =0;


unsigned int Key_activeflag =0;  
unsigned int TwoKey_temp =0;
	         
unsigned int Registered_Play_Status=0;  



 
 

 
 


 	 



 
unsigned int QuestionCycle[4] ={0};
unsigned int Pre_Active_Player=0; 
unsigned int Cur_Active_Player=0; 


unsigned int Key_Event =0;
unsigned int BlinkFlag_Data =0;

 

 
 

unsigned int Eventflag =0;

unsigned int Answer_Right_Player =0;
unsigned int Answer_Wrong_Player =0;
unsigned int No_Answer_Player =0;

unsigned int Question_Answer =0;

unsigned int SeriesAcnt =0;
unsigned int SeriesBcnt =0;

 
 
 
 
 
 
 
unsigned int Series_eventsolo=0;
 

unsigned int Leader_Player=0;
unsigned int Lowest_Player =0;


unsigned int Leader_Player_pre=0;

unsigned int Special_temp =0;
unsigned int L14flag =0;
 


int Higgest_T =0;
int Lowest_T =0;

 

unsigned int Key_Buffer =0;
unsigned int Cycle_Timeout_cnt=0;

unsigned int Key_TrueFlase_Buffer =0;

 

 


 


 
 

unsigned int Question_Asked_Lascycle[5]={0xffff,0xffff,0xffff,0xffff,0xffff};
unsigned int Question_Quality_Last[6]={0};
unsigned int Last2Cat[2]={0};
 



 

unsigned int Pre_Active_Player_Update =0;
unsigned int PlayScoresFlag =0;

unsigned int Sleepflag =0;
unsigned int Tieflag =0;
 
unsigned int TieflagAskQuestion=0;

 
 

 

unsigned int Cheater_SeletQu_Flag=0;
unsigned int Qu_Lastcycle_cnt=0;

 

 
 

 

 

 
 

unsigned int Pressflag_temp=0;

volatile unsigned int PassTimeCnt =0;
volatile unsigned int PassTimeCnt_temp =0;
 

unsigned int VOL1Flag =0;
unsigned int Speed_BonusFlag =0;
 
unsigned int Time_Countdown =0;
unsigned int firstFlag_23b =0;

unsigned int FreeKick_Flag =0;


 
unsigned int Dis_Player =0;
 
 
 
unsigned int Countdownflag =0;


unsigned int Soloflag =0;
unsigned int Difficulty =0;
unsigned int Diff_int =0;
unsigned int qestion_quality =0;
int Ca =0;
int RecordV =0;
unsigned int Temp_Registered_Play_Select =0;
unsigned int Key_buffer_First_temp =0;

 
 

 
 
 
 

	 
  
  
 

extern unsigned int  Pass_Key_temp;
extern unsigned TimeCnt;
extern unsigned gRejectLevel;
extern unsigned Keypress;

extern unsigned A1800_Flag;
 

 
 
 
 
 
extern unsigned RandomValue1;
extern unsigned RandomValue2;

extern unsigned Key;
extern unsigned Pressflag;
extern unsigned TwoKeyflag;

extern unsigned int CheaterFlag;
extern unsigned int gVolume;



 
 
extern unsigned OtherSph_Random_Value[];
 
extern unsigned int  gTemp;
extern unsigned int Switch_Mode;

extern unsigned int PlayQuestionflag;
extern unsigned int PauseFlag;

extern unsigned int LED_Cnt;
extern unsigned int  LongPressflag;
void Ask_Question();





typedef void (*Event_P)(void);

Event_P Event_F[12]={ 
 
 
 
 
 
 
 
 
 
 
 
 


};


const unsigned int Led_Data_Play[5]={0x01 ,0x02 ,0x04 ,0x08 ,0 };


const unsigned BitMap[] = { 0x0001,0x0002,0x0004,0x0008,0x0010,0x0020,0x0040,0x0080,
							0x0100,0x0200,0x0400,0x0800,0x1000,0x2000,0x4000,0x8000};


 

 

 
 
 
 
 
 
 



unsigned int PassFlag =0;

unsigned int PasstoEnd =0;
 


 



 

  



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
    

 







    
 

    
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

void delay_time(unsigned int);
    
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 


unsigned  Get_Question_Answer(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx + 24900 ;
	return SPI_ReadAByte(Addr);
}

 
 
 
 
 
 


unsigned  Get_Question_Category(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx + 10500 ;
	return SPI_ReadAByte(Addr);
}

unsigned  Get_Question_Sound(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx*2 + 5000 ;
	return SPI_ReadAWord_Big(Addr);
}



unsigned  Get_Question_Mode(unsigned lQuestionIdx)
{
 
 
 
}

 
 
 
 
 
 

unsigned GetQuality(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx + 10000 ;
	return SPI_ReadAByte(Addr);
}



unsigned GetSwitch(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx + 29300 ;
	return SPI_ReadAByte(Addr);
}

unsigned GetDifficulty(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx + 32000 ;
	return SPI_ReadAByte(Addr);
}



unsigned GetMovies(unsigned lQuestionIdx)
{
	unsigned long Addr;
	Addr = lQuestionIdx + 34000 ;
	return SPI_ReadAByte(Addr);
}


 
 
 
 
 
 

 
 












































 




















 
 




































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 




 
 






























 
 
 






































































 
 





























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
	
	



 

void delay_time(unsigned T_cnt)
{

	TimeCnt =1;
	Time_Countdown = T_cnt;

	Get_Key(1);


}




 






































































































































































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





 

unsigned int Get_Length_Pingame(void)
{
	unsigned temp = 0;
	unsigned i = 0;
	while(i< 20 )
	{
		 if (BitMap[i%16]&Pingame[i/16]) temp+=1;
		 i++;
	}
	return temp;
}



 

void Supress_Question_Switch()
{
 
	unsigned i = 0;
	while(i<R_QuestionNum)
	{
	 	WatchdogClear();

	 
		 
	 
		{
		 
		 	if (GetSwitch(i) ==  0  )
		 	{
		 		QuestionStatus_LQA[i/16] &=~BitMap[i%16];				
				QuestionStatus_Asked[i/16]|=BitMap[i%16]; 
		 		
		 	}
	
		}
	 
	     i++;	 
		 
	}	
	
}


 
 
 
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
 



























unsigned Select_Question_ModeStatus_Quality(unsigned Mode,unsigned int Q_dif_dis,unsigned int diff_int,unsigned Max_quality,unsigned int q_movies) 
{
	unsigned i= 0,j=0,temp1 =0,temp2 =0;
	unsigned temp;

	unsigned int t_mode;
    unsigned int t_quality;


	unsigned int SelectOfLQA =0;


	while(i<R_QuestionNum)
	{

	    WatchdogClear();

		  
	     temp2 = BitMap[i%16]&QuestionStatus_LQA[i/16];
		 
 
 
 
 
 
 
 
 
 
 


 

























       if(temp2) 
        {
        	t_quality = GetDifficulty(i);
        
 
 
 
 
 
          if((t_quality==Q_dif_dis)||(t_quality!=diff_int))
        		temp2 =0;
        	
        }



       if(temp2) 
        {
        	t_quality = GetQuality(i);
        
 
 
 
 
 
          if(t_quality!=Max_quality)
        		temp2 =0;
        	
        }

        if(temp2) 
         {
        	 if(GetMovies(i)==q_movies)
        	  {
        	 	 temp2 =0;
        	 	
        	  }        	   
          }
          		
		 if(temp2)		 	
		 {

              
              t_mode =  Get_Question_Mode(i);
			   
		 
		 	 
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
			  	   temp = * (volatile unsigned *)0x3013  %j;
			  	   j=0;
			  	   temp1 =1;
			  		
			  	}
			  	
              else 
			  	{
			  		
			  		
			  		 SelectOfLQA++;
			  		 
			  	  
			  	  {
			  		
				  		 
				  		
				  		if(SelectOfLQA>=2)
				  		{
				  		  	return Select_Questionrandom_4(* (volatile unsigned *)0x3013  % LQA);
				  			
				  		 }
				  	   else
				  	    {				  		

	                        Rest_LQA();	
							 
							Sub_QuestionAsked();
				
							LQA = Get_LQA();	
		
							if(LQA==0) 
							{
								 Rest_LQA();
			
							}
	                    
				  	   }
			  		
			  	  }
                    
			  	} 	


		     }  
	 
	  }


	return Go_Rest();
}


 




























































































































































































































































































































































































































































unsigned int GameTimeout()
{
	                       
					       Key =0;
						   Key_Event =0;
 
 
 
						       Key_activeflag = 0x07 ; 
						       

					
						   while(TimeCnt< 60*16 )
						   	{
					            WatchdogClear();
					
								if(Sleepflag)
									return 0;
								
					
								
									 if(PassFlag)
									 	 return 0;
								
								
								if((Key)||(Key_Event))
									{ 
									  
					                  Key=0;
									  Key_Event =0;
					                   
					                  	{
					                  	  Cycle_Timeout_cnt =0;
									  	  return 0;
					
					                  	}
					
									}
					
					
						   	}

						   Sleepflag |=1;


}


 

unsigned  Get_Registered_Player_Num(unsigned int temp)
{
	
	unsigned j = 0;
	unsigned i = 0;
	while(i< 4 ) 
	{
		 if (BitMap[i]&temp)  
		    {
		     j+=1;
		    }
		   i++;
	}
	return j;
	
}

 















































 

unsigned Get_LedDate_From_Play(unsigned temp_Player)
{
	unsigned temp = 0;
	unsigned i = 0;
	while(i< 4 ) 
	{
		 if (BitMap[i]&temp_Player)  
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
	while(i< 4 ) 
	{
		 if (BitMap[i]&temp_Player)  
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
	while(i< 4 ) 
	{
		 if (BitMap[i]&temp_Player)  
		    {
		     
		     return BitMap[i];
		     
		    }
		   i++;
	}
	return Go_Rest();

}




 

unsigned  Select_Registered_Player_Random(unsigned int Index,unsigned register_status)
{
  	unsigned i= 0;
	unsigned j= 0;
	unsigned temp;

	while(i< 4 ) 
	{
		 temp = BitMap[i]&register_status; 
		 if (temp)
		 {
		 	if (j == Index) 
		 	   {
		 	   	Player_Activing_Cnt = i;
		 	    return BitMap[i]; 
		 	    
		 	   }
		 	    j++;
		 }
		 i++;
	}
	return 0xffff;
	
}

 































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





 


void Get_Queston_Lastcycle()
{
     if(Qu_Lastcycle_cnt>=5)
     {
       gQuestionIdx = 0xffff;
     }
    else
       gQuestionIdx = Question_Asked_Lascycle[Qu_Lastcycle_cnt++];


    

}

 











































































































































































void Save_Question_Cycle(unsigned int temp)
{
   unsigned int i;

   for(i=0;i<3;i++)
   	{
      QuestionCycle[i] = QuestionCycle[i+1];
   	}
   
   QuestionCycle[3] = temp;
     
}


 

void Save_Active_Player(unsigned int temp)
{
    
   
   if(Pre_Active_Player_Update)
   {
   	  Pre_Active_Player_Update =0;
    
		{
		 Pre_Active_Player=Cur_Active_Player;
         Cur_Active_Player =0;
		}
		
   }
   
   
   
   
   
   
    Cur_Active_Player|= temp;
     
}







 













































































































































































































































































































































































































# 3057 "D:\\Prj_GPCE3400\\ZMM001A(EN)_MMMMMMM\\soft\\V02_asV34\\Algorithm.c"

 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 
 
 



























 

unsigned int Get_MiddleScore_Play()
{

    unsigned int temp; 

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

 
 
 
 
 
 
 
 
 
 
 

	   temp = Registered_Play_Status&(~(Leader_Player|Lowest_Player));
	
		 if(temp ==0)
		    return 0;
	  
	  
	  
     return 1;

}




unsigned int Get_Num_Higgest_score(unsigned int Play_status)
{
	unsigned i = 0;
	unsigned j = 0;

     Higgest_T =0x8000;

	Leader_Player =0;
	
	while(i< 4 )
	{
	    if(BitMap[i]&Play_status)
	    	{
			   if(Player_Point[i]>Higgest_T)
			   {
			   	  Higgest_T = Player_Point[i];
				  
			   }
	    	}
	   
	   i++;
	}

    i=0;
    while(i< 4 )
    	{
         	 if(BitMap[i]&Play_status)
	    	  {
			   if(Player_Point[i]>=Higgest_T)
			   {
			   	  Leader_Player |= BitMap[i]; 
				  j++;
			   }
	    	}
	       i++;

    	}

    return j;
  
}



unsigned int Get_Num_Lowest_score(unsigned int Play_status)
{
	unsigned i = 0;
	unsigned j = 0;
	 
	
     Lowest_T =0x7fff;
     Lowest_Player =0;
	
	while(i< 4 )
	{
	    if(BitMap[i]&Play_status)
	    	{
			   if(Player_Point[i]<Lowest_T)
			   {
			   	  Lowest_T = Player_Point[i];
				   
			   }
	    	}
	   
	   i++;
	}

 
 {
    if(Lowest_T<0)
       Lowest_T =0;
 }


    i=0;
    while(i< 4 )
    	{
         	 if(BitMap[i]&Play_status)
	    	  {
			   if(Player_Point[i]<=Lowest_T)
			   {
			   	  Lowest_Player |= BitMap[i]; 
				  j ++;
			   }
	    	}
	       i++;

    	}

    return j;



  

 





































 
  
}


 
 
void Sub_Player_Point(unsigned PlayerIdx, int point)
{
     
			 if(PassFlag)
				 return;
	
	
	

   	Player_Point[PlayerIdx]-=point;	

   if(Player_Point[PlayerIdx]<0)
   	   Player_Point[PlayerIdx] =0;

}




 
void Add_Player_Point(unsigned PlayerIdx, int point)
{
 
 

   	
			 if(PassFlag)
				 return;
		

 
 
 
 
 
 
 
	   Player_Point[PlayerIdx]+=point;		

}



 
void Add_ALL_Player_Point(int point)
{


	unsigned i = 0;
	
	  
			 if(PassFlag)
				 return;
	 
	
	
	
	while(i< 4 ) 
	{
		 if (BitMap[i]&Registered_Play_Status)  
		    {
		      Player_Point[i]+=point;
		    }
		   i++;
	}
 		

}


 
void Add_SomePlayer_Point(int point,unsigned int Players)
{


	unsigned i = 0;
	
	  
			 if(PassFlag)
				 return;
	 
	
	
	
	while(i< 4 ) 
	{
		 if (BitMap[i]&Players)  
		    {
		      Player_Point[i]+=point;
		      
		       if(Player_Point[i]<0)
   	               Player_Point[i] =0;
		      
		    }
		   i++;
	}
 		

}




 
void Add_ALL_InactivePlayer_Point(int point)
{


	unsigned i = 0;
	
	  
			 if(PassFlag)
				 return;
	 
	
	
	
	while(i< 4 ) 
	{
		 if (BitMap[i]&Registered_Play_Status)  
		    {
		    	
		     if((BitMap[i]&Player_Activing_Bit)==0)	
		          Player_Point[i]+=point;
		    }
		   i++;
	}
 		

}

 
void Sub_ALL_InactivePlayer_Point(int point,unsigned int Player_buffer)
{


	unsigned i = 0;
	
	  
			 if(PassFlag)
				 return;
	 
	
	
	
	while(i< 4 ) 
	{
		 if (BitMap[i]&Player_buffer)  
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


 
 
 
 















 

void PlayScores( int scores)
{

	   unsigned int temp;  		

	   	  	
	   		
           if(scores>100)
              scores =100;
           
           if(scores>0)					  	
	          Play_Seq(scores,8000 );
	     else
	  	   {
           
              temp= 0-scores;
			   Play_Seq(temp-1,9000 );
			  

	  	   }
              
   

}

 

void Play_Activeplayer(unsigned int Ledonflag,unsigned int Player_buffer,unsigned int first_SP)
{
      
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
				  PlayA1800_Elements(first_SP +temp);	 
				  
		   }

}

 

void Play_Serieplayer(unsigned int Ledonflag,unsigned int* BitTable,unsigned int  *SP_Table)
{
      
	  
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


 
















































































































































































































































void Tell_Scores(unsigned int Final_Scorefalg)
{


   unsigned int temp,temp2; 



   unsigned key_Ac_temp =0;
   
   unsigned int BlinkFlag_Data_temp =0;
   unsigned int Drive_Led_temp =0;


   unsigned int t_lowest_Player =0;
   unsigned int t_highest_Player =0;
   
   unsigned int temp_fifty =0;
   unsigned int i=0;
    

    
	
   t_lowest_Player = Lowest_Player;
   

  
   temp = Get_Num_Lowest_score(Registered_Play_Status);
   if(temp ==0) 
   	{
   	  PlayScoresFlag =0;
   	  Key_Event =0;
   	  return;
   	}
   	
 
   
   t_highest_Player = Leader_Player;

   BlinkFlag_Data_temp = BlinkFlag_Data;
   
   PlayScoresFlag =1;
   
   

 
 
 
 
 
     
   Light_all_off();


	
   key_Ac_temp = Key_activeflag;


   Key_Event =0;
   
   if(Final_Scorefalg==1)
        Key_activeflag = 0; 
   else
        Key_activeflag = 0x07 ;

 


  

      temp2= Registered_Play_Status;

	   i=0;
	  
	  while(i< 4 ) 
	  	{
			
			temp = Get_Num_Lowest_score(temp2);

			 
			if(Lowest_Player==temp2)   
				{
				   if(Final_Scorefalg==1)
				   {
				   	   Lowest_Player|=temp_fifty; 
				   	   temp = Get_Registered_Player_Num(Lowest_Player);
				   	   
				   	  if(temp==1)
				   	  {
				   	  	 Play_Activeplayer(1,Lowest_Player,0);  
				   	  	 
				   	    
				   	   
				   	   
				   	   	 {	     
					    
					   	  	 PlayScores(Lowest_T);
				   	   	 }
				   	   	 
				   	  	 
				   	  	 
				   	  	 Light_all_off();
						 BlinkFlag_Data = 0x000f ;
						
						 
						
						 BlinkFlag_Data = 0;
						 Light_all_off();
				   	  }
				   	  else 
				   	   {
				   	   	 
				   	   	 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
					   	   	 {   
					   	   	 	
							   	 Play_Activeplayer(1,Lowest_Player,0);  
						   	  	 
						   	   
						   	   
						   	   
						   	   	 {	     
							   
							   	  	 PlayScores(Lowest_T);
						   	   	 }
					   	   	 	
					   	   	 }
					   	   	 
					   	  	 Light_all_off();
					   	  	  
				   	   	
				   	   }
				   						  	
                        
                    
				   }
                  else
	                    {
					   	   Lowest_Player|=temp_fifty; 
					   	   temp = Get_Registered_Player_Num(Lowest_Player);
					   	   
					   	  if(temp==1)
					   	  {
					   	  	Play_Serieplayer(0,Lowest_Player,6000 );
					   	  
						   	PlayScores(Lowest_T);
					   	   	 
					   	   	 
							 
					   	  }
					   	  else 
					   	   {
					   	   	   Play_Serieplayer(0,Lowest_Player,6000 );
					   	   	   PlayA1800_Elements(26 );
	
						   	   PlayScores(Lowest_T);
					   	   	 }
					   	   	 
					   	  	  
					   
					   	                          
	                    
					   }
				  
				    break;

				 }
				

			     Play_Serieplayer(0,Lowest_Player,6000 ); 
				 PlayScores(Lowest_T);	
			
				
				

               
			 
			  
             temp2 = temp2 &(~Lowest_Player);
             
             if(temp2 ==0)
             	 break;
             
			 i++;
			 
		 
		 

	  	}




	
}


 

unsigned Key_CheckScores()
{
	unsigned int FiveSec_cnt_temp;
	
    FiveSec_cnt_temp = FiveSec_cnt;	 


   Light_all_off();
   BlinkFlag_Data = 0x000f ;

   PlayA1800_Elements(77 );
   PlayA1800_Elements(24 );
   delay_time(8); 
   

	Tell_Scores(0);
	
   if((PlayQuestionflag)||(TwoKeyflag == 0xffff))	
	   PauseFlag =2;
	   
 

     FiveSec_cnt = temp_FiveSec_cnt; 

   
      BlinkFlag_Data =0;
	  Light_all_off();
	  return 0xffff;
}

 






 


unsigned Select_Player_Random(unsigned int temp)
{  
     unsigned j;
	 unsigned int temp1;

   		  
	   if(temp)
	     {

			   j = Get_Registered_Player_Num(temp);
			   j = * (volatile unsigned *)0x3013  % j;
			   temp1 = Select_Registered_Player_Random(j,temp); 
			   
			   if(temp1 == 0xffff)
				    return Go_Rest();
			   else
			   	{
 
			   	  return temp1;
			   	}
	    }
	  else
	   {
	   	  if(Player_Activing_Bit ==0)  
		      return Go_Rest();
		  else
		  	 return Player_Activing_Bit;
	   
	   }

}




 

void Select_Player_Random_Round1()
{
          unsigned int temp;

 



























			   if((Cheater_SeletQu_Flag ==0)||(Player_Activing_Bit==0))
				   {


					   temp = Registered_Play_Status&(~(Temp_Registered_Play_Select|Key_buffer_First));

					   if(temp ==0)
					   	{			
                          
                           Temp_Registered_Play_Select =0;
                           temp = Registered_Play_Status&(~(Player_Activing_Bit|Key_buffer_First));	 
					   	}
					   	
					    if(temp ==0)
					   {
					   	   temp = Registered_Play_Status&(~(Player_Activing_Bit));
					   	
					   }	   
					   	
					   if(temp ==0)
					   {
					   	   temp = Registered_Play_Status;
					   	
					   }						   	
					   
					   Player_Activing_Bit = Select_Player_Random(temp); 
				   	   
			     
       
					 					 
                    Temp_Registered_Play_Select|=Player_Activing_Bit;
				     

				     
			   	}
				else
					{		
						Player_Activing_Cnt = Get_Firstcnt_From_Play(Player_Activing_Bit);



					}


           if(Soloflag==0)
           	{
              Key_Event =0;
              Key_activeflag = 0x04   | 0x02   ;
              Led_ON_Some(Led_Data_Play[Player_Activing_Cnt]);
 
              Light_all_off();


           	}
				
	
              if((firstFlag_23b&0x02)==0)
              {
              	Key_activeflag = 0x04   | 0x02   ;
              	firstFlag_23b|=0x02;
              	PlayA1800_Other(3 );
              	
              }
 


}


 






















































































































void Save_Question_Asked_Round1()
{
   
   unsigned int i;

   for(i=0;i<14;i++)
   	{
	 if(Question_Asked_Round1[i] == 0xffff)
	 {
	     Question_Asked_Round1[i]=gQuestionIdx;
	     break;
	     
	 }

   	}
		
}



 

void Sub_QuestionAsked()
{
   unsigned int i;

		    i = 0; 
			while(i<R_QuestionNum)
			{

              if(BitMap[i%16]&QuestionStatus_Asked[i/16])
              	{
                           
                   QuestionStatus_LQA[i/16]&=~BitMap[i%16];
                   
              	}
			
				i++;	
						
			}   

        WatchdogClear();
}


 

void Rest_LQA()
{
      unsigned i;

		i = 0; 
		while(i< 20 )
		{
			QuestionStatus_LQA[i] = 0xFFFF;
			QuestionStatus_LQ[i] = 0xFFFF;
			 
			i++;	
					
		}
	
	
 
 
	
	
	
		LQA = Get_LQA(); 


}

 


void Check_LQA()
{
		LQA = Get_LQA();
		
		if(LQA ==0)
		 {	
		        Rest_LQA();					  						 					
			    Sub_QuestionAsked();
	
			     LQA = Get_LQA();	  

		
			   if(LQA==0) 
				{
						 Rest_LQA();
						  
				}	
		 }	

}


 

void Save_Question_Quality_Last(unsigned int quality)
{
   
   unsigned int i;

    for(i=0;i<5;i++)
   	{
      Question_Quality_Last[i] = Question_Quality_Last[i+1];
   	}
   
     Question_Quality_Last[5] = quality;	
   			
}


 

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


 






























































































































void Save_Some_data()
{
    unsigned int temp;


     for(temp=0;temp<5;temp++)
	    Question_Asked_Lascycle[temp]=0xffff;



    for(temp=0;temp< 4 ;temp++)
    	{

          Player_Point_temp[temp] = Player_Point[temp];

    	}


 
 
 
 
 
 
 
 





}






 








































































































































































































void Cheater_F()
{
	
	     unsigned int temp;
	  
		   CheaterFlag =0;
   	     
   	      Qu_Lastcycle_cnt =0;
   	      Cheater_SeletQu_Flag =1;
   	      
          
          
          
    
        
         if(Cn)
         	Cn--;
    
    
    
         for(temp=0;temp< 4 ;temp++)
    	{

          Player_Point[temp] = Player_Point_temp[temp];

    	}
    	
    	 for(temp=0;temp< 4 ;temp++) 
			{

				 ParBool[temp]=0;
						
			}	
    	
    	
 
 
 
 
 
 
 
 
 
	
	
	
}



 


unsigned int Get_Key(Countdown_E)
{
  unsigned int temp;
  unsigned int FiveSec_cnt_temp;
 
  do
   {
   	
   	  WatchdogClear();
   	  
   	  	if(Sleepflag) 
		     return 0xffff  ;
			

           TS_CTS_ServiceLoop();

			
          
				if(PassFlag)
					return 0xffff;
           
			
			  if(PauseFlag)
				  return 0xffff;
			
			
			  if(CheaterFlag)
				  return 0xffff; 

		    if(Key_Event)
		 	    return Key_Event;
   	  
  
        


	   if(LongPressflag&0x01)
	   	{
             LongPressflag&=~0x01;

			 if(Pause_Process())
			 	  return 0xffff; 

	   	}
       
		
	  if(Key)	
	  {	
	  	 temp = Pressflag&Key;
		  	

        if(temp ==0) 
        	{
        	       temp = Key;
        	   	  	Key =0;
                 
                  if((temp&Key_TrueFlase_Buffer))
                  	{
                      
                       
                      if(Key_activeflag&Key_TrueFlase_Buffer) 
                      {  

					     
                      	
                      	if((!(PlayQuestionflag&0x01))||(PlayQuestionflag&0x8000)) 
                      	 {
                      	    Key_Event = Key_TrueFlase_Buffer; 
                      	    Key_TrueFlase_Buffer =0;  

				 	          return Key_Event;;
                      	 }
                      }
				 	 else     
				 	       Key_TrueFlase_Buffer =0;    

                  	}

        	}
	  else  
	   {

          	  	Key =0;
          	  	
		    Cycle_Timeout_cnt=0;   
		    
          if(Eventflag != 0xF01a )
          	{
		  	
		
	    	if((PlayQuestionflag )||(TwoKeyflag))
	    	 	{
	    	 		 if(TimeCnt_Key< 10 ) 
	    	 		 	 {
	    	 		 	 	  if(temp == TwoKey_temp)
	    	 		 	 	  	{
	    	 		 	 	  
								 
								 
								 
								 
								
								if(temp == 0x04   )
								{						
								  if((PlayQuestionflag&0x01)&&((!PlayScoresFlag)||(TieflagAskQuestion)))	 
								    {
									    PauseFlag =1;
									    Key_TrueFlase_Buffer =0; 

										TwoKey_temp =0; 
									    return 0xffff;;
								    }
								}
							   else if(temp == 0x02   )
							   {
							   	  if(TwoKeyflag== 0x02   )	
							   	   {
								   	   	  CheaterFlag =1; 
								   	   	  Key_TrueFlase_Buffer =0; 

										  TwoKey_temp =0; 
								   	     return 0xffff;	   	 
							   	   	
							   	   }
							   	
							   	
							   }
								 
	    	 		 	 	  		
	    	 		 	 	  	}
	    	 		 	 	
	    	 		 	  
	    	 		 	 }
	    	 		    TwoKey_temp = temp;
	    	 		   
	    	 	}


               if(TimeCnt_Key< 12 )
               	{

                   if(((Key_TrueFlase_Buffer + temp) == (0x04   + 0x02   )))
                   	{

                        temp =0;
                       
                        return Key_CheckScores();
 
 
 
 
 
 
 
 
                   	}
    
               	}

          	}

		  
             if(temp&(0x04   | 0x02   ))
             	{
                 Key_TrueFlase_Buffer = temp;				
             	}
			
	    	   
	    	     	 
	    	
		      if(Key_activeflag & temp)
		      {
		       
		       
		      	 
		      	 	 

			   if(temp&(0x04   | 0x02   )) 
			   	{

 
 
 

			   	}
			    else
			    {
			        Key_Event = temp;	 
			        
			        Key_TrueFlase_Buffer =0;
					 return Key_Event;;
			    }
		      }
	    
	      }

		  TimeCnt_Key =0;
	     
	  }


        if(Key_TrueFlase_Buffer)
        	{

                 if(TimeCnt_Key>= 12 )
                 	{
                 	   

					  if(Key_activeflag&Key_TrueFlase_Buffer) 
					  {
					  	 Key_Event = Key_TrueFlase_Buffer; 
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
                       return 0xf012 ;

				  	
                  }               
			   }
			   
			   
		  if(Countdownflag)
			{
				
			    if(T_Countdowncnt > 180*16 )	
			    {
			    	 Sleepflag |=1; 
				     return 0xf012 ;
			    }
			}	   
			   

 	}while(Countdown_E);
 	
    return 0;
}


 





























































































































































































































































 
 
 
void Ask_Question()
{
 
     unsigned int key_activetemp = Key_activeflag;

   do
	{
		
			Key_Event =0;
			Key_activeflag =0;
			
		
		 
			PauseFlag =0;

		   delay_time(8);		  	
		  
				  	
		   
		  	
		     
		    PlayA1800_Question(gQuestionIdx);
		   
		     TwoKeyflag =0;
		     delay_time(8);
	 }while(PauseFlag); 
	 
	  PlayQuestionflag =0;


     Question_Answer =0;
     SP_RampDnDAC1();
     
     Key_Event =0;
     Key_activeflag =  key_activetemp;
	
 
 
 
 
 
 

 if( Eventflag != 0xF01a )
 	{
		QuestionStatus_LQ[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];		 
		QuestionStatus_LQA[gQuestionIdx/16]&=~BitMap[gQuestionIdx%16];	
		QuestionStatus_Asked[gQuestionIdx/16]|=BitMap[gQuestionIdx%16];
 	}
	
	

 
 
	

     

     



}

 

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
	   Key_buffer_First|=0x8000; 






}

 

unsigned int Key_True_F()
{
       unsigned int Player_buffer=0,temp;
 
       
         

			Key_Buffer&=~0x04   ;
           if(Registered_Play_Status)
            {
           	
           	   Registerd_Num = Get_Registered_Player_Num(Registered_Play_Status);

			   if(Registerd_Num>1)
			   	{
				   
				   
			   	}
			   else
			      return 0;
			   
			   
			      Soloflag =0;

			        Light_all_off();
			       
			        
			        

				   Key_Event =0;
				   Key_activeflag = 0x07 ;
			        
			     Player_buffer =  Registered_Play_Status;  
			     while(Player_buffer)
		         {
	             
	                temp =  Get_Firstcnt_From_Play(Player_buffer);
	                Player_buffer&=~(1<<temp);
 
		
	                Led_ON_Some(Led_Data_Play[temp]);
                				  
				     
				    

					Light_all_off();
				  
		         }       
			        
			       Key_Event =0;
				   Key_activeflag = 0;
			        
			              
			        return 1;
			      
           }

         return 0;


}

 


























































































































































































































































































































































 
 
 
 
void  Questions_init()
{
	unsigned int i;
	
      	i = 0; 
		while(i< 20 )
		{
			QuestionStatus_LQA[i] = QuestionStatus_LQ[i];
			QuestionStatus_Asked[i] = 0;
			i++;	
					
		}
		
 
 
 
 
 
 
 
		
}

void NewgameInit()
{
	  unsigned int i;
	  
 
 
 
 


	    Player_Activing_Bit =0;
  

      for(i=0;i<6;i++)
		  Question_Quality_Last[i] =0;

	
	   for(i=0;i<14;i++)
    	 Question_Asked_Round1[i]=0xffff;
	
	
          Questions_init();
	
	
	
	
}

void Ram_OnInit()
{
	
		Restart =0;
		T1=0;
		T2=0;
	    Last2Cat[0] =0;
	    Last2Cat[1] =0;
	    LastCategory =0;
	
}


unsigned  Step1()
{	
	unsigned int i;
 
 
 
		
	
   
   
    Cn =0;
    Registerd_Num =0;
    Player_Activing_Bit =0; 
    Player_Activing_Cnt =0;
    
    
        i = 0; 
		while(i< 20 )
		{
			Pingame[i] = 0;
			i++;	
					
		}
    
    
    gQuestionIdx = 0xffff;		
	PassTimeCnt =0;
	PassTimeCnt_temp =0;
	Pressflag_temp =0;
	Pass_Key_temp =0;
	PassFlag =0;
    Dis_Player=0;

    PasstoEnd =0;
 
	firstFlag_23b =0;
 
 
	FreeKick_Flag = 0;
	
 
	Speed_BonusFlag =0;
    Key_TrueFlase_Buffer =0;
	
	Soloflag =0;

	Countdownflag =0;
 
	LED_Cnt =0;	
	Tieflag =0;	
 
		
 
 
 
	
 
	Registered_Play_Status =0;
	Question_Answer =0;
	L14flag =0;

	TwoKeyflag =0;
	Eventflag =0;

	Sleepflag =0;
		
	 
 
	

	Leader_Player =0;
	Lowest_Player =0;

 
 

 
	Round =0;
	
    Key_Event =0;
    

	FiveSec_En =0;
	FiveSec_cnt =0;
	
    

 

 

	
    
   	{
      Cur_Active_Player = 0;
   	}

	QuestionCycle[0]=0;
	QuestionCycle[1]=0;
	QuestionCycle[2]=0;
	QuestionCycle[3]=0;


    CheaterFlag =0;
	Player_Activing_Bit =0;
  
   
      	i = 0; 
		while(i< 20 )
		{
			QuestionStatus_Asked[i] = 0;
			i++;	
					
		}
		
		i = 0; 
		while(i< 20 )
		{
			QuestionStatus_LQA[i] = QuestionStatus_LQ[i];
			i++;	
					
		}	
			

		
   
 
 
   

        BlinkFlag_Data = 0;
        Light_all_off();

        WatchdogClear();     
     
	    PlayScoresFlag =1;
		
		TimeCnt = 1;
		Key_Buffer =0;

		
 
 
 

      if(Restart ==0)
      {
	    PlayA1800_Elements(75 );	 
	     
		BlinkFlag_Data = 0;
        Light_all_off();
 
        PlayA1800_Elements(10 );	 
        delay_time(8);
      }
      
      
     while(1) 
     {  

	      if(Sleepflag)
		  	return 0;
		  
     	  Key_activeflag =0; 
		  Key_Event =0; 
		  
	      PlayA1800_Elements(28 );
	      PlayA1800_Elements(30 );
	      PlayA1800_Elements(2 );
	      
	      
	      Key_activeflag = 0x07 ; 
		  Key_Event =0;  
	      delay_time(20*16);
	      
	      if((Key_Event== 0x02  )&&(Registerd_Num<10))
	      {  
	           Key_Event =0;  
	      	  Registerd_Num++;
			  PlayA1800_Elements(76 );
	      	
	      }
      	  else if((Key_Event== 0x04  )&&(Registerd_Num>1))
	      {  
	           Key_Event =0;  
	      	  Registerd_Num--;
			  PlayA1800_Elements(74 );
	      	
	      }
		 else if((Key_Event== 0x01  )&&(Registerd_Num>0))
	      {  
	           Key_Event =0;  
               break;
	      	
	      }

	       PlayA1800_Other(6 );
		  
      
     }
      
      	  i = 0; 
		while(i<Registerd_Num)
		{
			Pingame[i] = i+1;
			i++;	
					
		}
		
        
        Key_Event =0;
        Key_activeflag =0;
        PlayA1800_Elements(72 );
        PlayA1800_Elements(31 );
        PlayA1800_Other(6 );
        delay_time(8);
        PlayA1800_Elements(29 );
        PlayA1800_Other(6 );
        delay_time(8);



   while(1) 
     {  

	      if(Sleepflag)
		  	return 0;
		  
     	  Key_activeflag = 0x01  ; 
		  Key_Event =0; 
		  
	      PlayA1800_Elements(30 );
	      PlayA1800_Elements(2 );
	      
	      
	      
		  
	      delay_time(20*16);
	      
	      if(Key_Event== 0x01  )
	      {  
	           Key_Event =0;  
	           
		       if(Registerd_Num>1)    
		       {
		      	  PlayA1800_Elements(17 );
				  PlayA1800_Elements(20 );
				  PlayA1800_Elements(21 );
				  PlayA1800_Elements(22 );
				  PlayA1800_Elements(23 );
		       }
	       	  else  if(Registerd_Num==1)    
	       	  {
			      PlayA1800_Elements(16 );
				  PlayA1800_Elements(20 );
				  PlayA1800_Elements(21 );
				  PlayA1800_Elements(22 );
				  PlayA1800_Elements(23 );       	  	
	       	  	  PlayA1800_Elements(19 );      
	       	  }
	      	
	      	   break;
	        }	  
      
        }
         delay_time(8);
         PlayA1800_Elements(32 );
         delay_time(8);


	 Round =1;
	 return 0xF013 ; 

		 
}

 

















void Select_Sound()
{

      LQA = Get_LQA();	
      gQuestionIdx= Select_Questionrandom_4(* (volatile unsigned *)0x3013  % LQA);


}



 

unsigned int Game()
{
	unsigned int i;

    firstFlag_23b&=~0x800;
    CheaterFlag =0;
    Eventflag =0;
     
	Key_Event =0;
	Key_activeflag = 0x07 ;
	


   while(1)
   	{
	    Player_Activing_Cnt =* (volatile unsigned *)0x3013  % Registerd_Num ;
	    Cn++;    


	    Select_Sound();
		Answer_F();

       if(Get_Length_Pingame()==0)
	   	   break;

   	}

	
	

	Key_Event =0;
	Key_activeflag = 0;


   Save_Some_data();

 return 0xF019 ;
	
	
}



void Answer_F()
{
    unsigned int temp =0;
    unsigned int Blink_temp=0;
    unsigned int  Currentsound =0;

    unsigned int Category= Get_Question_Category(gQuestionIdx);

     if(Cn ==2)
	 	PlayA1800_Elements(18 );
     else
     	{

          PlayA1800_Elements(Get_Question_Sound(gQuestionIdx));

     	}


      delay_time(5*16);

	  if(Key_Event == Category)
	  	{
            Key_Event=0;

			

	  	}




	




}



void  PlayScoreOfwhichplay(unsigned int* BitTable)
{

	   unsigned int  i=0,temp;
	
		while(i<Registerd_Num)
		 {
				
			   if (BitMap[i%16]&*(BitTable+i/16))
				   {

					  PlayScores(Player_Point[i]);
	
				   }
	
			   i++;
				 
		  }


 



}


unsigned int EndGame()
{


     Play_Serieplayer(0,Pingame,6000 );
     PlayA1800_Elements(6 );
	 PlayA1800_Elements(7 );


     PlayScoreOfwhichplay(Pingame);
	 
     PlayA1800_Elements(8 );
	 PlayA1800_Elements(113 );
	 PlayA1800_Elements(79 );
	 delay_time(8);

     PlayA1800_Elements(9 );
     PlayA1800_Elements(2 );



     Key_Event =0;
	 Key_activeflag = 0x01  ;
	 
	 delay_time(10*16);

	 if(Key_Event  == 0x01  )
	 	{
            Key_Event=0;
            PlayA1800_Elements(72 );
			return  0xF003 ;

	 	}
      else
      	{
            Key_Event=0;
            PlayA1800_Elements(0 );
            return 0xf011 ;
      	}


	 Key_Event =0;
	 
}



 
 
void  Go_Rest()
{
	unsigned i;
	asm("IRQ off");
	
		
	if(A1800_Flag)
	{
	 SACM_A1800_Stop();
	 A1800_Flag =0;
	}
 
	
	i = 1000;
	while(i--) System_ServiceLoop();

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

    
	* (volatile unsigned *)0x3031  = 0x5555 ;
}

 

void Sleeping()
{
 
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
   
go_on_sleep_sw:	
       cnt =0;
	   Sleep();	
	
 

   
    
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
		 
	{	


		Sys_clock_init_Only();
	     
	    IO_init_Wakeup();
	    
	    
	    Delay1xms(100);
	    GetMode();
	    
	    
	 
	 	if((Switch_Mode == 0x0200 )||(Switch_Mode == 0x080 ))
	    {
         	cnt =Wakeup_IO_Temp^Sleep_IO_Temp;
         	
          
	           cnt&=0x280; 
	      
	       
	        
	        
	       if((Wakeup_IO_Temp&cnt)!=cnt) 	
	  	    {
	  	   	  break;
	  	    }

	    }
	  else if(Switch_Mode == 0x0100 )
	    {
	         
	       
	        cnt =Wakeup_IO_Temp^Sleep_IO_Temp;
	        cnt&=0x7f;
	        
	  	   if((Wakeup_IO_Temp&cnt)!=cnt)
	  	   {
	  	   	  break;
	  	   }
	  	
	    }

       
       Set_Sleep_IO();
		 
	}
    
}


   	PassFlag =0;
   	Sleepflag =0;
  	LED_Cnt =0;	 
   	BlinkFlag_Data = 0; 
   	CheaterFlag =0;
    
   	
    Sys_clock_init();
    Time_init();


 
 
	
	Init_CTS();	
	Key_Scan_Init_Wakeup();

    Key_Event =0;

	asm("FIQ ON");
	asm("IRQ ON");	
 
	
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

/* End of uDOC32 problem report. */
