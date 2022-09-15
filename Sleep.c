#include "Glob.h"
#include "GPCE1_CE3.h"






extern void	Sleep(void);
extern void	System_Initial(void);
extern void	SPI_Initial(void);
extern void	SPI_Flash_Release_DP(void);
extern unsigned	SPI_Read_Flash_ID(void);
extern void	Delay_Xms_PowerOn(unsigned Xms);

extern unsigned int gTemp;

extern unsigned int Switch_Mode ;
extern unsigned int Switch_Mode_Pre ;
extern unsigned int VOL1Flag;

/**********************************************************
***********************************************************/
void Delay_Xms_PowerOn(unsigned Xms)
{
	unsigned i;
	while(Xms)
	{
		i = 10;			//600= 1ms, 100 for debug
		while(i--) WatchdogClear();
		Xms--;		
	}
}



//******************************************************
//*******************************************************
void GetMode()
{
	 unsigned int Io_temp=0,cnt =0;
		while(1) 
		{
			
			
		     if(Io_temp != (*P_IOB_Data & 0x300))// 0x380
		     {
		     	cnt =0;
		     	Io_temp = (*P_IOB_Data & 0x300);//0x380
		     }
            else
             {
             	if(++cnt>400)//400
             	{
             		 break;
             		
             	}
             	
             }
             
	 	     Delay_Xms_PowerOn(10);
		}
		
	 switch(Io_temp)
	 {
	 	case 0x100:   Switch_Mode = Key_Game;   gTemp = C_StartON ;break;//VOL1Flag =1; break;//7+ Start_MAGIC_QUESTIONS_Step2
	 	case 0x200:   Switch_Mode = Key_Instruction;  gTemp = C_Demo_Mode; VOL1Flag =0;break;
	 	case 0x300:   Switch_Mode = Key_TryMe; gTemp = C_Off_Mode; VOL1Flag =0;break;	
	 	//case 0x300:   Switch_Mode = Key_Game_Family;   gTemp = C_StartON ; VOL1Flag =0;break;//VOL2  14+
	 	default:
	 	     Switch_Mode = Key_Game;   gTemp = C_StartGame ; break;
	 }	
		
	Switch_Mode_Pre = Switch_Mode;
	
}



void Goto_Sleep()
{
  
//	  Sleep();	
	
//	System_Initial();			// System initial
    Delay_Xms_PowerOn(50);
    Sys_clock_init();
    
    AntiCrackFun();
    
    
    IO_init();
    Delay_Xms_PowerOn(10);
    
    GetMode();
    Time_init();


//	SPI_Initial();
//	SPI_Flash_Release_DP();
//	SPI_Read_Flash_ID();
}

