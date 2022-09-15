//#include "SACM.h"

#include "Glob.h"
#include "GPCE1_CE3.h"
#include "datatype.h"
#include "LED.h"

//#define C_LED_Fast
//#define C_LED_Middle
//#define C_LED_Slow

//#ifdef C_LED_Fast
//	#define C_LowLevel 0x120
//	#define C_HighLevel 0x500
//	#define C_HighTime 50
//	#define C_LowTime 50
//#endif
//
//#ifdef C_LED_Middle
//	#define C_LowLevel 0x80
//	#define C_HighLevel 0x500
//	#define C_HighTime 110*32
//	#define C_LowTime 80*32
//#endif
//
//
//#ifdef C_LED_Slow
//	#define C_LowLevel 0x40
//	#define C_HighLevel 0x500
//	#define C_HighTime 250
//	#define C_LowTime 150
//#endif



 

//extern unsigned BlinkFlag_Data;

//unsigned LED_Env_Buffer;



volatile unsigned LED_Cnt=0;		//avoid the led flash too fast	

void Init_LED(void)
{
	*P_LED_ATTRIB |= LED_ALL_BIT;
	*P_LED_DIR |= LED_ALL_BIT;
	*P_LED_BUFFER |= LED_ALL_BIT;		
}

void LED_Control(u16 taskNum)
{
	switch(taskNum)	
	{
		case 0:
			*P_LED_BUFFER ^= LED0_BIT;
		break;
		
		case 1:
			*P_LED_BUFFER ^= LED1_BIT;
		break;

		case 2:
			*P_LED_BUFFER ^= LED2_BIT;
		break;
		
		case 3:
			*P_LED_BUFFER ^= LED3_BIT;
		break;						
	}
}



/***************************************************************
*************************************************************/
void  Led_ON_Some(unsigned int data)
{
//         #ifdef C_GPCE2064  
//         		   *(P_IO_Buffer)|=data&0x0f;
//         		   *(P_IOA_Buffer)|=data&LED_Yellow;
//         #else
//         		   *(P_IO_Buffer)|=data;
//         #endif
	
	      *(P_IOA_Buffer)|=data;
	
	
}


/***************************************************************
*************************************************************/
void  Led_OFF_Some(unsigned int data)
{
//         #ifdef C_GPCE2064  
//         		   *(P_IO_Buffer)&=~(data&0x0f);
//         		   *(P_IOA_Buffer)&=~(data&LED_Yellow);
//         #else
//         		   *(P_IO_Buffer)&=~data;
//         #endif
	
	       *(P_IOA_Buffer)&=~data;
}	
	
	
	

//void LED_Ser_Init(void)
//{
//	LED_Env_Buffer = 0;
//	EnvDet_Initial();
//	EnvDet_Start();
//}

//void Led_Blink()
//{
//   if(BlinkFlag_Data)
//   {	
//		if(LED_Cnt ==0)
//		{
//			  LED_Cnt = Blink_Fr;
//		  #ifdef C_GPCE2064
//		      *(P_IOB_Buffer)^= BlinkFlag_Data;	
//		       
//		       *(P_IOA_Buffer)^= (BlinkFlag_Data&LED_Yellow);	
//		  
//		  #else	  
//			 *(P_IOB_Buffer)^= BlinkFlag_Data;	
//		 #endif	
//		}
//   }
//}
