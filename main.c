//==========================================================================
// SACM-A1800 algorithm with play, stop, pause, resume, volume up, volume down function
//
// Function call for SACM-A1800:
// Syntax:
//  void SACM_A1800_Initial(void)
//
//  void SACM_A1800_Play(int Speech_Index, int DA_Channel, int Ramp_Set)
//       Speech_Index: -1            : Manual mode
//                     0 ~ max index : Auto Mode
//
//       DA_Channel: 1: DAC1 ON
//                   2: DAC2 ON
//                   3: DAC1, 2 ON
//       Ramp_Set: 0: Ramp Up disable/Ramp Dn disable
//                 1: Ramp Up enable/Ramp Dn disable
//                 2: Ramp Up disable/Ramp Dn enable
//                 3: Ramp Up enable/Ramp Dn enable
//
// void SACM_A1800_Stop(void);
// 
// void SACM_A1800_Pause(void);
// void SACM_A1800_Resume(void);
//
// void SACM_A1800_Volume(unsigned VolumeValue);
//      VolumeValue: 0x0000 ~ 0xFFFF
//
// int SACM_A1800_Status(void);
//      bit0: 0: Idle
//            1: Audio active
//      bit1: 0: Play Mode
//            1: Record Mode
//
// Note:
//   1. User would need to check out the resource.asm for resource arrangement.
//      The speech table is T_SACM_A1800_SpeechTable for A1800.
//   2. For manual mode, user have to handle the memory address and data
//      acquisition through F_USER_A1800_GetData, _USER_A1800_SetStartAddr
//   3. The RAM taken by library can be shared by declaring ORAM section,
//      "OVERLAP_A1800_RAM_BLOCK:   .Section        .ORAM".
//      Please check out IDE menu--> Project-->Setting--> Section for details.
//   4. Data rate of SACM-A1800 can be 7.2/9.6/12/14.4/16/20/24/32 Kbps and
//      the algorithm will select it automatically.
//   5. Please check out the sacm.asm for details of initial function, interrupt setting,
//      and timer setting.
//==========================================================================
//**************************************************************************
// Header File Included Area
//**************************************************************************
#include "System.h"
#include "SACM.h"
#include "GPCE1_CE3.h"
#include "Glob.h"
#include "voice_A18.h"

//#include "Element.h"
//**************************************************************************
// Contant Defintion Area
//**************************************************************************
//#define MaxSpeechNum		1		// Max. of speech in resource
//#define MaxVolumeNum		16		// Max. of volume settings
//
//#define Foreground			0
//#define Background			1
//#define ServiceType		Foreground


//#define P_Led_Buf P_IOA_Buffer  
//
//#define P_Led_V  0x0f0

//#define ServiceType			Background

//**************************************************************************
// Function Call Publication Area
//**************************************************************************
extern void SPI_Initial(void);
extern void WatchdogClear(void);
extern void Goto_Sleep(void);
extern unsigned SPI_ReadAByte(unsigned long addr);
extern unsigned SPI_ReadAWord(unsigned long addr);
extern unsigned SPI_ReadAWord_Big(unsigned long addr);


extern unsigned PlayA1800_Other(unsigned SpeechIndex);
extern unsigned Start_Game(void);
//extern unsigned Select_Question(void);
extern unsigned Check_Sel_Elements(void);
extern unsigned MaybeDone(void);
extern unsigned Finish_Game(void);
extern unsigned New_Game(void);
extern unsigned Game_Sleep(void);
extern unsigned KeyOFF_Sleep(void);	
extern unsigned Goback_Handle(unsigned lRandomVol);
//**************************************************************************
// Global Variable Defintion Area
//**************************************************************************
extern unsigned A1800_Flag;
extern unsigned R_QuestionNum;
extern unsigned R_ElementsNum;
extern unsigned Test;
extern unsigned RandomValue1;
extern unsigned RandomValue2;
extern unsigned JTLOGO1[];
extern unsigned VAL_LowestIndex[];

extern unsigned R_SleepKeyDebounce;

extern unsigned int Cnt_T[];

extern unsigned  int Last_Game;
extern unsigned  int Now_Game;

extern unsigned int Pointer;

extern unsigned int LefOffFlag;

extern unsigned int PlayAnswering;

extern unsigned int Pre_Active_Player;
extern unsigned int Cur_Active_Player;

extern unsigned int QuestionCycle[];

extern unsigned int V43flag;
extern unsigned int CheaterFlag;

extern unsigned int Sleepflag;
extern unsigned int R_Event_AddTo;

extern unsigned int PlayScoresFlag;

extern unsigned int BlinkFlag_Data;
extern unsigned int Dis_Player;
extern unsigned int	Series_Correctcnt;
extern unsigned int Series_Wrongcnt; 
extern unsigned int Key_TrueFlase_Buffer;
extern unsigned int Qn_Cnt_PowerON;
extern unsigned int Soloflag ;
extern unsigned int  Round;
extern unsigned int  Cn;
extern unsigned int PasstoEnd;
extern unsigned int OtherSph_Random_Value[];
//#define IOB0 (1<<1)
//#define IOB1 (1<<2)
//#define IOB2 (1<<3)
//#define IOB3 (1<<4)
//#define IOB4 (1<<5)
//#define IOB5 (1<<6)
//#define IOB6 (1<<7)
//
//#define Repeat_RAM 0xfffe
//#define End_RAM    0xffff
//#define T_HZ  16
//
//#define C_200ms	(0x8000 +(1.5*T_HZ) )
//
//#define C_400ms (0.4*T_HZ)
//
//#define C_500ms (0.5*T_HZ)




//const unsigned int Led_random[]={IOB0,C_200ms,IOB1,C_200ms,IOB3,C_200ms,IOB4,C_200ms,IOB2,C_200ms,
//
//                                 IOB5,C_200ms,IOB6,C_200ms,IOB4,C_200ms,IOB0,C_200ms,IOB5,C_200ms,
//                                 
//                                 IOB3,C_200ms,IOB1,C_200ms,IOB0,C_200ms, IOB4,C_200ms,IOB3,C_200ms,
//                                 
//                                 
//                                 IOB4,C_200ms,IOB3,C_200ms,IOB5,C_200ms,IOB0,C_200ms,IOB6,C_200ms,
//                                 
//                                 IOB4,C_200ms, IOB0,C_200ms,IOB5,C_200ms,IOB1,C_200ms,IOB6,C_200ms,
//	                             
//	                             IOB0,C_200ms,IOB3,C_200ms,IOB6,C_200ms,IOB3,C_200ms,IOB4,C_200ms,
//	                             
//	                             IOB1,C_200ms,IOB6,C_200ms,IOB5,C_200ms,IOB3,C_200ms,
//
//                                 Repeat_RAM};
//
//#define Led_Random_Num 69



//const unsigned int Led_random1[] = {IOB5,IOB6,IOB2,IOB4,IOB0,IOB1,IOB3};

//unsigned int Led_offset =0;

//volatile unsigned int Keyupflag = 1;
//volatile unsigned int Keypress =0;

//volatile unsigned int Keystopflag =0;


//volatile unsigned int KeypressDisable =0;

volatile unsigned int Switch_Mode =0;

volatile unsigned int Switch_Mode_Pre =0;

//volatile unsigned int KeypressStep1 =0;

//volatile unsigned int LongKeypress =0;
volatile unsigned int IO_Buffer =0;
volatile unsigned int R_DebounceCnt =0;

extern unsigned int sp_offset;
extern unsigned int sp_offset_temp;

extern unsigned int Key;
extern unsigned int Key_activeflag;
extern unsigned int Key_Event;
extern unsigned int Pressflag;

extern unsigned int PassFlag;
extern unsigned int Passcnt;
extern unsigned int PauseFlag;
extern unsigned int TwoKeyflag;

extern unsigned int Qn;
extern unsigned int Cycle_Timeout_cnt;
extern unsigned int VOL1Flag;
extern unsigned int Countdownflag;

extern unsigned long int Event_List;

//unsigned int Ledotherflag =0;

//==============================================
//
//==============================================
volatile unsigned TimeCnt = 0;



volatile unsigned TimeCnt_Testingmode = 0;
//unsigned TimeCnt_Total = 0;
unsigned gTemp = 0;
unsigned gVolume = 10;
//unsigned int gVolume1 =6;

//unsigned g_GameCnt = 0;


unsigned int Key_Debounce=0;


//volatile unsigned int Keyupcnt =0;





//signed Test_1;
//==============================================
//1000 for 175ms
//==============================================
/**********************************************************
***********************************************************
void Delay_Xms(unsigned Xms)
{
	unsigned i;
	unsigned int temp;
	while(Xms)
	{
	
	#ifdef C_debug
	   if(PassFlag)	
			 break;	
	  #endif  
	  
	if(Sleepflag) 
       break;
	  
	 if(CheaterFlag)
	 	break;
	
	 if(Key_Event)
	 	 break;
	 
	 if(PauseFlag)
	   break;
		
	  if(Key)	
	  {	
		  	temp = Pressflag&Key;	
		  	  	
		    if(temp)
		    {
		    	
			      if(Key_activeflag & temp)
			      {
			      	// Key_Event = temp; 跳至发音程序处理

					// Key =0;	
			      	 break;
			      }


                 if(temp&(Key_True|Key_False))
                 	{
                       break;//跳至发音程序处理
                 	}
				  
		    
		      }


	    		  
		 Key =0;	      
	  }
	 	 		
		i = 100;			
		while(i--) WatchdogClear();
		Xms--;		
	}

}




////////////////////////////////////////
//void Led_drive(unsigned int M_data)
//{
//
//   *P_Led_Buf |=M_data;
//
//}
/////////////////////////////////////////////////////
///////////////////////////////////////////////////
/*void Led_Flash()
{

//        if((Led_flashEnable ==1)&&(Led_flashcnt<4))
//         	{
//
//	            if(TimeChangeCount1>C_200ms_Noflag)
//	            {
//	              TimeChangeCount1 =0;	
//	            	
//	       
//	             if(Led_flashcnt&0x01)        
//	                 Led_drive_Off(Led_temp);
//				 else
//				 	Led_drive(Led_temp);
//				 	
//				  Led_flashcnt++;
//	            
//			 	
//                }
//         	}
//          else
//          	{
			  

          if(Led_random[ Led_offset] == Repeat_RAM)
          	{

				  Led_offset =0;

          	}
  
 
		 else if(Led_random[ Led_offset] & 0x8000)
			  {
  
					 if(TimeCnt > (Led_random[ Led_offset]&(~0x8000)))
					  {
							Led_offset++; 
							TimeCnt =1;
					  }
  
			  }
			  
			else
			   {
					 Led_Off_All();
				   
				   if(TimeCnt>C_400ms)
				   {
					 TimeCnt =1;
					 Led_drive(Led_random[ Led_offset]);// &(~Non_Stop)
					//  *P_B_Buf |=Led_random[ Led_offset];
  
					 Led_offset++;
				   }
			  }

       //   }
			  
  }
*/
//////////////////////////////////////////////////////
/* void Led_Flash_Other()
{

				 if(TimeCnt >C_500ms)
				  {
				  	  Led_Off_All();
				  	  if(Led_offset>6)
				  	  	 Led_offset =0;
				  	
				  	    Led_drive(Led_random1[ Led_offset]);
						Led_offset++; 
						TimeCnt =1;
				  } 
		  
  }
*/

/***************************************************

*******************************************************
unsigned int  Delay_Xms_testmode(unsigned Xms)
{
	unsigned i;
	
	unsigned int upflag1 =0;

	while(Xms)
	{
			
		i = 100;			
		while(i--) 
		{
		
			 if((*P_IOA_Data &0x0001)==0)
				{
					 if(upflag1)	
					 {
						   Delay_Xms_PowerOn(1);	
						  if((*P_IOA_Data &0x0001)==0) 
						    {
						      //upflag1 =0;
						      return 1;
						    }
					   }
				 }
		   else if(!upflag1)
			 {
			   Delay_Xms_PowerOn(1);	
			 if((*P_IOA_Data &0x0001)==0x0001) 	
			     upflag1 =1;	
			   
			 }   
		
		
		WatchdogClear();
		
		
		}
		Xms--;	
		
		
	}
	
	return 0;

}

/*********************************************************
************************************************************
void checkflasherror()
{
		asm("IRQ ON");
    	Delay_Xms(6*600);
    	
    	asm("IRQ Off");
    	Delay_Xms(6*600);
	
}






/*********************************************************
************************************************************
void  Test_three_mode()
{
    unsigned int Io_temp=0,cnt =0;

    
    //unsigned int Playtemp =0x700;
    
    //unsigned int upflag1=0;
    
    unsigned changeflag =0;

	unsigned Play_switchFlag =0;
    
    TimeCnt_Testingmode =0;
    //System_Initial();			// System initial
    
  //  Sys_clock_init();
   // IO_init();
    
   // Time_init_TestMode();
    
    //*(P_INT_Status) = 0xFFFF;
   //  TimeCnt = 1;
   // *(P_INT_Ctrl) |=C_IRQ7_16Hz;
    
	//asm("FIQ ON");
	//asm("IRQ ON");
	//SPI_Initial();
	//SPI_Flash_Release_DP();	

   // gVolume =10;
    
  while(1)
  {   
    
	while(1) 
		{
		     if(Io_temp != (*P_IOB_Data & 0x380))
		     {
		     	cnt =0;
		     	changeflag =1;
		     	Io_temp = (*P_IOB_Data & 0x380);
		     }
            else
             {
             	if(++cnt>300)
             	{
             		 //cnt = 5005;
             		 break;
             		
             	}
             	
             }
             
	 	     Delay_Xms_PowerOn(10);
		 }
		
	 switch(Io_temp)
	 {
	 	case 0x280:  //demo 
	 	     if(changeflag)
	 	     {
	 	       changeflag =0;
	 	       //TimeCnt =1;	
   	           //cnt = SPI_ReadAWord_Big((unsigned long)0x02);
	           //PlayA1800_Elements(cnt); 
	           PlayA1800_Elements(SFX_Whistle); 

			   cnt =0;
			   Play_switchFlag |=0x01;
			   TimeCnt_Testingmode =0;
	 	     }
	 	     
            if(Play_switchFlag==0x03) 
	 	        return;
	 	        
	 	     break;//Switch_Mode = Key_Game;   gTemp = Start_MAGIC_QUESTIONS_Step2; break;
	 	case 0x300:  //与180共用
	 	
	 	     if(changeflag)
	 	     {
	 	       //if(Play_switchFlag==0x07) 
	 	       // return;
	 	     	
	 	     	
	 	       changeflag =0;
	 		   PlayA1800_Elements(SFX_Button); 
	 		   Play_switchFlag|=0x02; 
	 		   TimeCnt_Testingmode =0;
	 		   
	 	     }
	 		 
	 	    break;//Switch_Mode = Key_Instruction;  gTemp = C_Instruction_Mode; break;
	 	case 0x380:   

	 	   if(Play_switchFlag== 0x03) 
	 	       return;//Switch_Mode = Key_TryMe; gTemp = C_TryMe_Mode; break;	
	 	       
	 	   break;
	 	
	    case 0x180:   
	    
	       if(changeflag)
	 	     {
	 	       changeflag =0;
	 	       //TimeCnt =1;	
   	           //cnt = SPI_ReadAWord_Big((unsigned long)0x02);
	           //PlayA1800_Elements(cnt); 
	           //PlayA1800_Elements(cnt); 
               PlayA1800_Elements(VLHPQEN_HP);    
			   cnt =0;
			   Play_switchFlag |=0x02;
			   TimeCnt_Testingmode =0;
	 	     }
	    	
	    	break;
	 	   
	 }	
	
	
	if(TimeCnt_Testingmode>0xF000)
		 return ;	
    	
     
       WatchdogClear();	
   } 	
	

}



/*********************************************************
************************************************************
void PlayBee()
{
    //Sys_Dac_test_set();  //bee 一声响
	*(P_INT_Status) = 0xFFFF;
    *(P_INT_Ctrl) =C_IRQ6_4096Hz;//C_IRQ7_16Hz; C_IRQ6_2048Hz;//
	
//	g_GameCnt = 0x000;
	asm("IRQ ON");
   // Delay_Xms(6*600);
     delaytest(2000);
    *(P_INT_Ctrl) =0;
	*(P_INT_Status) = 0xFFFF;
	
	*(P_DAC_Data) = 0;  

}

/*********************************************************
************************************************************
void Test_Assembly(void)
{
	
	
  	unsigned temp;
  	
  	//unsigned int upflag1 =0;

	unsigned int key_step =0;
  	
	*P_IOB_Dir = 0x0000;
	*P_IOB_Buffer = Key_Blue|Key_Pink|0x380;
	*P_IOB_Attrib = 0x0000;
	Delay_Xms_PowerOn(1);


    if((*P_IOB_Data&(Key_Blue|Key_Pink|0x380)) !=0x380 )
	{
		return;
	}
	
    Sys_clock_init_Only();
	
	
	
	temp = 200;//1000;//3200
	while(temp)
	{
		if((*P_IOB_Data&(Key_Blue|Key_Pink|0x380)) !=0x380)
		{
		  //	i--;
		  return;
		}
		
		temp--;
			//i=0x3000;
		
		WatchdogClear();
		
		Delay_Xms_PowerOn(60);
	}	
//	System_Initial();			// System initial
///	asm("FIQ ON");
//	asm("IRQ ON");
 //   Sys_Dac_test_set();
 
	Sys_clock_init();//读语言版本
    IO_init();

 

//	SPI_Initial();
//	SPI_Flash_Release_DP();

	gVolume = SPI_ReadAByte(24);
	//if (!((gVolume>3)&&(gVolume<15)))
	//{
	//	gVolume = 9;
	//}
	
  
    Time_init_TestMode();

    
//    TimeCnt = 1;
//    *(P_INT_Ctrl) |=C_IRQ7_16Hz;
     
	asm("FIQ ON");
	asm("IRQ ON");
    
   	temp = SPI_ReadAWord_Big((unsigned long)0x30);
	PlayA1800_Elements(temp); 
	PlayA1800_Elements(temp); 
	
//    PlayBee();
//    Delay_Xms_PowerOn(60*500);
//	  PlayBee();
//	  Delay_Xms_PowerOn(60*500);
//	  PlayBee();

	temp = SPI_ReadAWord_Big((unsigned long)0x00);
     
     if(temp!=0x4850)//HP
     {
        *(P_IOA_Buffer)|=LED_Blue;
        while(1)
        {
        		
        	WatchdogClear();
        	
        }
        
         return;
        
     }
	


     Key_Scan_Init();
     TimeCnt_Testingmode = 0;
    *(P_INT2_Ctrl) |=C_IRQ6_2048Hz+C_IRQ6_512Hz;//+C_IRQ7_16Hz;


    while(1)
	{	
		WatchdogClear();
			
		if(Key)
		{

		   temp = Pressflag&Key;

		   Key =0;

           TimeCnt_Testingmode=0;

          // switch(temp)
		  	 {
		  	 	 if(temp == Key_Blue)
				 	{

					 if((key_step ==0)||(key_step == 1))
					 	{
				 	      *(P_IOA_Buffer)^=LED_Blue;//break;
				 	      key_step =1;
					 	}
		  	 	 	}
		  	 	 if(temp == Key_Orange)
				 	{
				 	  if((key_step ==1)||(key_step == 2))
				 	  	{
				 	      *(P_IOA_Buffer)^=LED_Orange;//break;
				 	       key_step =2;
				 	  	}
		  	 	 	}
                 if(temp == Key_Pink)
				 	{
				 	 if((key_step ==2)||(key_step == 3))
				 	 	{
				 	      *(P_IOA_Buffer)^=LED_Pink;//break;
				 	      key_step =3;
				 	 	}
		  	 	 	}
		  	 	if(temp == Key_Purple)
				 	{
				 	  if((key_step ==3)||(key_step == 4))
				 	  	{
				 	      *(P_IOA_Buffer)^=LED_Purple;//break;
				 	       key_step =4;
				 	  	}
		  	 	 	}	 	
		  	 	 	
//                 if(temp ==Key_Yellow)
//		  	 	 	{
//
//
//                           if((key_step ==4)||(key_step == 5))
//                           	{
//                                  // Led_ON_Some(LED_Yellow);
//                                  #ifdef C_GPCE2064
//		  	 	                      *(P_IOA_Buffer)^=LED_Yellow;
//		  	 	                       
//		  	 	                    #else
//		  	 	                      *(P_IOB_Buffer)^=LED_Yellow;
//		  	 	                      
//		  	 	                     #endif
//                                  
//                                  
//								   key_step =5;
//                           	}
//									 
//									//break;
//		  	 	 	}
				 
				 
				 
                if(temp == Key_False)
					{

					   if(key_step ==4)
					   	{
                           Light_all_off();
						   key_step =6;
						
					   	}
					}

				 
			    if(temp == Key_True)
			    	{
					
						//#ifdef C_GPCE2064  
						//  *(P_IOB_Buffer)|=0x0f;
						//  *(P_IOA_Buffer)|=LED_Yellow;
		              //#else
						//  *(P_IOB_Buffer)|=All_Led_data;
				  
		              // #endif

						 if(key_step ==6)
						 	{
                              Led_ON_Some(All_Led_data);
							  break;
						 	}


			    	}



           	}

		}

 
	   if(TimeCnt_Testingmode>0xF000)//2048*30
 		  return;	
	
    }

    Test_three_mode();
    
    *(P_INT_Ctrl) =0;
	
 
    CheckSum_SPIFlash();	   //如果不正确，一直beepbeep响

} 



/*********************************************************
************************************************************/
int main()
 {
    
 //	TestBonding();
 
//	Test_Assembly();
			
	Goto_Sleep();
	
	
#ifdef C_TestPcb
      *P_IOB_Buffer&=~0x80;
      *P_IOB_Attrib|=0x80;
      *P_IOB_Dir|=0x80;

#endif	
	
	

    //CheckSum_SPIFlash();
    Init_CTS();	
    Key_Scan_Init();

	Delay_Xms_PowerOn(1);
//	Delay_Xms(1000);
	asm("FIQ ON");
	asm("IRQ ON");



     R_QuestionNum = SPI_ReadAWord_Big((unsigned long int)0x40);
     //Rest_LQA();
     Read_Flash();
     
     OtherSph_Random_Value[Serie_Player] =0x0f;
 //    Event_List = Event_List_Init;

//      Qn_Cnt_PowerON =0;
      
  		gVolume = SPI_ReadAByte(24);
		if (!((gVolume>3)&&(gVolume<16)))
		{
			gVolume = 9;
		}
  
  
//       gVolume1 = SPI_ReadAByte(0x20);
//       
//       if(gVolume1 == 0x0ff)
//       {
//       	  gVolume1 = 5;
//       }
  

     if((C_Demo_Mode == gTemp)||(gTemp ==0))//
     	gTemp = C_Finish;

      //gTemp = C_StartON;


	while(1)
	{
		switch (gTemp)
		{
			case C_Demo_Mode:			      

                 

//                     Demo();
                     gTemp = C_Finish;
   	                
			        break;
			        
		  case  C_Off_Mode:
			
   	               Sleeping();
   	               gTemp = C_StartON;
			        break;
		   case C_StartON:				

		        
		       //  R_QuestionNum =SPI_ReadAWord_Big((unsigned long int)0x40);

                 Ram_OnInit();
		        
            case C_StartGame:
			case C_Step1:
			    gTemp = Step1();
			    PlayScoresFlag =0; 		
			     break;	
		
//		  case C_Solo:
//		          gTemp =  Solo();
//		         break;
		  case C_Game:
		  
		           gTemp =  Game();
		        break;						
	
	      case C_CheckCn:
	      
//	              gTemp = Checkcn();
	      
	           break;
	           
	     
				
          case C_TurnMulti:
//                gTemp = TurnMulti();
                break;
			    
  
			    

		  
		        break;	
		 case C_End:
		 
		        gTemp = End();
		        

		        break;	
			    			     
												
			case C_Finish:
					 
			      if((Key_Game & Sleepflag)||(Key_Game_Family & Sleepflag))
			      {
			      	 Sleepflag =0;
			      	 gTemp = C_StartGame;
			      	 break;
			      }
				    Sleeping();	
				    gTemp = C_StartON;			
				 break;					
  
//                  case C_GameTimeout:                
//                        gTemp == GameTimeout();
//                                                                          
//                    break;  
 
  
			default:
			    gTemp = C_StartGame;
			break;
		}
				
	  	if(Sleepflag)
	  	{

	        
	        
	      if(Sleepflag & C_GameTimeout)
	      {
	      	 Sleepflag&=~C_GameTimeout;
             gTemp = C_Finish;	
	         
	      }
          else if(Sleepflag & C_PassToEnd)
          { 
          	    Sleepflag&=~C_PassToEnd;
          	    gTemp =  C_End;
          }
         else
	   	      gTemp = C_Finish;	
	   	    
	  	}
	  	
#if C_PassEn	  	
		  if(PassFlag)
		  {
		  	 PassFlag =0;
		  		      	
		  }	
#endif	  	
	  	
		
		PauseFlag =0;
		Countdownflag =0;
		WatchdogClear();
	}
   	return 0;	
}	