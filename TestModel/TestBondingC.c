/*==================================================================
//文件名称：			TestBondingC.C
//功能：				测试模式需用用到的C函数。
//当前版本：			v0.2
//开始日期：			2018-06-04

//Body:					GPCE063A
//Written by:			Jamis

修改记录：

==================================================================*/

#include "GPCE1_CE3.h"
#include "TestBondingC.h"

//#include "ir_send_similar.h"
//#include "PhoneControl.h"
//#include "UART.h"
//#include "main.h"


#define CheckDataAddr           0x0010				////项目名存放的FLASH地址。

//变量
//const unsigned int CheckResult[4]={('L'<<8)+'Z', ('H'<<8)+'0', ('0'<<8)+'3', ('A'<<8)+0};//'LZH003A'   项目名

#define test_flash_4io  0	//1-使用了4线FLASH，测试flash绑定;0-没有用4线flash.
#if test_flash_4io//ce4 通过读取下面地址数据，判断4线FLASH 的6个IO是否绑定成功
	extern void FLASH_Auto_ReadNWords(int,int,int,int*);
	
	#define   Test4IO_Seg        0x0022
	#define   Test4IO_Addr       0x0000
	unsigned int P_Buffer[2]={0,0};
	const unsigned int Test_4IO_Result[2]={'J'+('T'<<8),38+(1<<8)};
#endif
//----------------------------------------------
//FUNCTION
//----------------------------------------------
/////////////////////
//////测试模式下，IO 的初始化
//////////////////////
#define C_TestLed_IOA   0x000F	//IOA中通过点灯测试的IO口。
#define C_TestLed_IOB   0x00DF	//IOB中通过点灯测试的IO口。
#if GPCE4
	#define C_TestLed_IOC   0xffff	//IOC中通过点灯测试的IO口。
#endif
/*
void TestIO_Init(void)   
{
	*pP_IOA_Attrib |= C_TestLed_IOA;
	*pP_IOA_Dir |= C_TestLed_IOA;
	*pP_IOA_Buf &=~C_TestLed_IOA  ; 			//   输出0
	
	*pP_IOB_Attrib |= C_TestLed_IOB;
	*pP_IOB_Dir |= C_TestLed_IOB;
	*pP_IOB_Buf &=~C_TestLed_IOB  ; 			//   输出0
	
	#if GPCE4
	*pP_IOC_Attrib |= C_TestLed_IOC;
	*pP_IOC_Dir |= C_TestLed_IOC;
	*pP_IOC_Buf &=~C_TestLed_IOC  ; 			//   输出0
	
//	*pP_CTS_Ctrl0=0;//关掉硬件触摸功能，进行点灯测试IO。
	#endif
}

/////////////////////
//////测试模式下，IO 测试
//////////////////////
void TestIO(void)   
{
	unsigned int i =0; 
	i = *pP_IOA_Buf;
	i |= 0x0005 ;       // 输出1	
	*pP_IOA_Buf = i; 			//  
	
	i = *pP_IOB_Buf;
	i |= 0x0095 ;       // 输出1	
	*pP_IOB_Buf = i; 			//  
	
	#if GPCE4
	i = *pP_IOC_Buf;
	i |= 0x5555 ;       // 输出1	
	*pP_IOC_Buf = i; 			//  
	#endif
	
	
	Delay1xms(2000);
	
	i = *pP_IOA_Buf;
	i &= ~(C_TestLed_IOA) ;       // 输出0
	i |= 0x000A ;       // 输出1		
	*pP_IOA_Buf = i; 			//  
	
	i = *pP_IOB_Buf;
	i &= ~(C_TestLed_IOB) ;       // 输出0
	i |= 0x004A ;       // 输出1	
	*pP_IOB_Buf = i; 			//  
	
	#if GPCE4
	i = *pP_IOC_Buf;
	i &= ~C_TestLed_IOC ;       // 输出0
	i |= 0xaaaa ;       // 输出1	
	*pP_IOC_Buf = i; 			// 	
	#endif	
		
	Delay1xms(2000);
	
	//=================================================测试4IO flash绑定模式 	
	#if test_flash_4io
		Test_4IO_Flash();
	#endif
	//========================================================= 
	
//	TestIO_Init();	//关灯。
}
*/
/////////////////////
////判断数据项目名，
//数据中的项目名不匹配时，响2次BEEPBEEP声;匹配时，直接退出。
//////////////////////
//void Check_Data()
//{
//	unsigned  int i,temp;
//	for(i=0;i<4;i++)
//	{
//		temp= SPIReadAWord(CheckDataAddr+i*2,0);
//		if(temp != CheckResult[i])
//		{
//		//	while(1)
//			{
//				WatchdogClear();
//				TestMic0();
//				SP_RampDnDAC1();
//				Delay1xms(70);
//				TestMic0();
//				SP_RampDnDAC1();
//				
//				Delay1xms(1000);
//				TestMic0();
//				SP_RampDnDAC1();
//				Delay1xms(70);
//				TestMic0();
//				SP_RampDnDAC1();
//				
//				Delay1xms(500);
//				return;				
//			}
//		}
//	}
//}


void Delay1xms(unsigned int i)   /////i = 1时 测试出约1.25MS
{
	unsigned int k,t;
	i = i;
	for(k=0; k<i; k++)
	{
		t=0x01da*2;				//0x010a*2:delay 1ms	-- 49M,focs
		while(--t)
			WatchdogClear();
	}
}




/////////////////////
////一直响Beep.
//////////////////////
void Beep_Along()
{
	while(1)
	{
		WatchdogClear();
		TestMic0();
		SP_RampDnDAC1();
		Delay1xms(700);
	}
}
/////////////////////
////一直响BeepBeep.
//////////////////////
void BeepBeep_Along()
{
	while(1)
	{
		WatchdogClear();
		TestMic0();
		SP_RampDnDAC1();
		Delay1xms(70);
		TestMic0();
		SP_RampDnDAC1();
		Delay1xms(1000);	
	}
}

/////////////////////
//////检测SPI 是否读写正常。
///过程：删除一个没用的SECTOR，在里面一个地址写入一个word，
//////////再读出来，进行比较，看是否相等。
//////////////////////
//void Check_SPIFlash(void)   
//{
//	unsigned int i;
//	
//	SPI_Flash_Sector_Erase(0xe000,0x0000);  //ERASE A SECTOR within 0xf000. ///选一个不需要用到的SECTOR.
//		
//	SPI_SendAWord(0xe000,0,0x00a0);
//	if(SPIReadAWord(0xe000,0) !=0x00a0)
//	{
//		while(1)
//		{
//			WatchdogClear();		////spi 读写不成功。
//		}
//	}
//	
//	SPI_Flash_Sector_Erase(0xe000,0x0000);  //ERASE A SECTOR within 0xf000. ///选一个不需要用到的SECTOR.
//}

//-----------------------以下为特殊项目用到的--------------
#if test_flash_4io
//========================================================
//测试4线FLASH 的6个IO是否正常读写.
//正常时，退出；绑定有问题，或数据不对，一直beep，同时闪灯。
//========================================================
void Test_4IO_Flash()
{
	unsigned int i=0;
	
	SPI1_MultiIOMode_Initial(C_SPI1_4IO_Mode); 
	
	FLASH_Auto_ReadNWords(Test4IO_Addr,Test4IO_Seg,2,P_Buffer);
	
	for(i=0;i<2;i++)
	{
		if(P_Buffer[i] != Test_4IO_Result[i])
		{
			while(1)
			{
				 //---------一直Beep				
				WatchdogClear();
				TestMic0();
				SP_RampDnDAC1();
				
				*pP_IOA_Buf^=C_TestLed_IOA;//闪灯
				*pP_IOB_Buf^=C_TestLed_IOB;//
				#if GPCE4
				*pP_IOC_Buf^=C_TestLed_IOC;//
				#endif
	
				Delay1xms(300);		
			}
		}
	}
}
#endif
