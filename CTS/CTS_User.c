//
//#include "main.h"
#include "CTS_Sensor.h"
#include "datatype.h"
#include "GPCE1_CE3.h"
#include "LED.h"

#define CTS_UART_ENABLE 0 // CTS串口打印使能

//#if (CTS_UART_ENABLE == 1)
//	#include ".\UART_SW\UART.h"
//#endif	

#define PAD_NUM_MORE_THAN_16 0 // 

#if (PAD_NUM_MORE_THAN_16 == 1)
	#define PAD_GROUP 2
#else
	#define PAD_GROUP 1	
#endif	

/*--------功能 映射 触摸盘（触摸盘与IO口的映射见CTS pin definition）----------*/
#define T_Animal	CTS_PAD_0
#define T_Human		CTS_PAD_1
#define T_Music		CTS_PAD_2
#define T_Vehicle	CTS_PAD_3
#define RIGHT_BACK	CTS_PAD_4

u16 TriggeredPad[PAD_GROUP];
u16 PreCtsResult[PAD_GROUP];

extern unsigned int Key_activeflag;


enum{
	MSG_LED0,
	MSG_LED1,
	MSG_LED2,
	MSG_LED3	
};



void Init_CTS(void)
{
	CTS_Initial();	
	CTS_FilterSetting(1);
	
	PreCtsResult[0] = 0;
//	PreCtsResult[1] = 0;
//	PreCtsResult[2] = 0;
	TriggeredPad[0] = 0;
//	TriggeredPad[1] = 0;
//	TriggeredPad[2] = 0;	
	
	CTS_Scan();
}

/*执行周期 <= 10ms*/
unsigned  TS_CTS_ServiceLoop(void)
{
	u16* CTS_Result;
    u16 TouchKey1 =0;

	CTS_ServiceLoop();
	CTS_Result = CTS_GetResult();
	
	// Debounce
	TriggeredPad[0] = *CTS_Result & ~PreCtsResult[0];
//	TriggeredPad[1] = CtsResult[1] & ~PreCtsResult[1];
	PreCtsResult[0] = *CTS_Result;
//	PreCtsResult[1] = CtsResult[1];

//	ScanPadIdx = TriggeredPad[0];

	TouchKey1 = TriggeredPad[0];	//Pad0~15
//	TouchKey2 = TriggeredPad[1];    //Pad16~31

    TouchKey1&=0x0f;

   if(TouchKey1)
   	  TouchKey1=TouchKey1<<4; //与按键值错开
   
     TouchKey1&=Key_activeflag;
     
   
   	return  TouchKey1;  

//	if(TouchKey1 & T_Animal)
//	{
//	#if (CTS_UART_ENABLE == 1)		
//		UART_Send_A_String("触摸0有效\n");
//		UART_Send_A_String("腰\n");
//	#endif		
//		Led_ON_Some(LED0_BIT);//LED_Control(MSG_LED0);			
//	}
//	
//	if(TouchKey1 & T_Human)
//	{
//	#if (CTS_UART_ENABLE == 1)
//		UART_Send_A_String("触摸1有效\n");
//		UART_Send_A_String("嘴\n");
//	#endif	
//		Led_ON_Some(LED1_BIT);//LLED_Control(MSG_LED1);				
//	}
//	
//	if(TouchKey1 & T_Music)
//	{
//	#if (CTS_UART_ENABLE == 1)			
//		UART_Send_A_String("触摸2有效\n");
//		UART_Send_A_String("屁股\n");
//	#endif	
//		Led_ON_Some(LED2_BIT);//LLED_Control(MSG_LED2);			
//	}
//	
//	if(TouchKey1 & T_Vehicle)
//	{
//	#if (CTS_UART_ENABLE == 1)
//		UART_Send_A_String("触摸3有效\n");
//		UART_Send_A_String("左腰\n");
//	#endif	
//		Led_ON_Some(LED3_BIT);//LLED_Control(MSG_LED3);	
//	}	
}