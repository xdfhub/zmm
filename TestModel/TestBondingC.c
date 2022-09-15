/*==================================================================
//�ļ����ƣ�			TestBondingC.C
//���ܣ�				����ģʽ�����õ���C������
//��ǰ�汾��			v0.2
//��ʼ���ڣ�			2018-06-04

//Body:					GPCE063A
//Written by:			Jamis

�޸ļ�¼��

==================================================================*/

#include "GPCE1_CE3.h"
#include "TestBondingC.h"

//#include "ir_send_similar.h"
//#include "PhoneControl.h"
//#include "UART.h"
//#include "main.h"


#define CheckDataAddr           0x0010				////��Ŀ����ŵ�FLASH��ַ��

//����
//const unsigned int CheckResult[4]={('L'<<8)+'Z', ('H'<<8)+'0', ('0'<<8)+'3', ('A'<<8)+0};//'LZH003A'   ��Ŀ��

#define test_flash_4io  0	//1-ʹ����4��FLASH������flash��;0-û����4��flash.
#if test_flash_4io//ce4 ͨ����ȡ�����ַ���ݣ��ж�4��FLASH ��6��IO�Ƿ�󶨳ɹ�
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
//////����ģʽ�£�IO �ĳ�ʼ��
//////////////////////
#define C_TestLed_IOA   0x000F	//IOA��ͨ����Ʋ��Ե�IO�ڡ�
#define C_TestLed_IOB   0x00DF	//IOB��ͨ����Ʋ��Ե�IO�ڡ�
#if GPCE4
	#define C_TestLed_IOC   0xffff	//IOC��ͨ����Ʋ��Ե�IO�ڡ�
#endif
/*
void TestIO_Init(void)   
{
	*pP_IOA_Attrib |= C_TestLed_IOA;
	*pP_IOA_Dir |= C_TestLed_IOA;
	*pP_IOA_Buf &=~C_TestLed_IOA  ; 			//   ���0
	
	*pP_IOB_Attrib |= C_TestLed_IOB;
	*pP_IOB_Dir |= C_TestLed_IOB;
	*pP_IOB_Buf &=~C_TestLed_IOB  ; 			//   ���0
	
	#if GPCE4
	*pP_IOC_Attrib |= C_TestLed_IOC;
	*pP_IOC_Dir |= C_TestLed_IOC;
	*pP_IOC_Buf &=~C_TestLed_IOC  ; 			//   ���0
	
//	*pP_CTS_Ctrl0=0;//�ص�Ӳ���������ܣ����е�Ʋ���IO��
	#endif
}

/////////////////////
//////����ģʽ�£�IO ����
//////////////////////
void TestIO(void)   
{
	unsigned int i =0; 
	i = *pP_IOA_Buf;
	i |= 0x0005 ;       // ���1	
	*pP_IOA_Buf = i; 			//  
	
	i = *pP_IOB_Buf;
	i |= 0x0095 ;       // ���1	
	*pP_IOB_Buf = i; 			//  
	
	#if GPCE4
	i = *pP_IOC_Buf;
	i |= 0x5555 ;       // ���1	
	*pP_IOC_Buf = i; 			//  
	#endif
	
	
	Delay1xms(2000);
	
	i = *pP_IOA_Buf;
	i &= ~(C_TestLed_IOA) ;       // ���0
	i |= 0x000A ;       // ���1		
	*pP_IOA_Buf = i; 			//  
	
	i = *pP_IOB_Buf;
	i &= ~(C_TestLed_IOB) ;       // ���0
	i |= 0x004A ;       // ���1	
	*pP_IOB_Buf = i; 			//  
	
	#if GPCE4
	i = *pP_IOC_Buf;
	i &= ~C_TestLed_IOC ;       // ���0
	i |= 0xaaaa ;       // ���1	
	*pP_IOC_Buf = i; 			// 	
	#endif	
		
	Delay1xms(2000);
	
	//=================================================����4IO flash��ģʽ 	
	#if test_flash_4io
		Test_4IO_Flash();
	#endif
	//========================================================= 
	
//	TestIO_Init();	//�صơ�
}
*/
/////////////////////
////�ж�������Ŀ����
//�����е���Ŀ����ƥ��ʱ����2��BEEPBEEP��;ƥ��ʱ��ֱ���˳���
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


void Delay1xms(unsigned int i)   /////i = 1ʱ ���Գ�Լ1.25MS
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
////һֱ��Beep.
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
////һֱ��BeepBeep.
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
//////���SPI �Ƿ��д������
///���̣�ɾ��һ��û�õ�SECTOR��������һ����ַд��һ��word��
//////////�ٶ����������бȽϣ����Ƿ���ȡ�
//////////////////////
//void Check_SPIFlash(void)   
//{
//	unsigned int i;
//	
//	SPI_Flash_Sector_Erase(0xe000,0x0000);  //ERASE A SECTOR within 0xf000. ///ѡһ������Ҫ�õ���SECTOR.
//		
//	SPI_SendAWord(0xe000,0,0x00a0);
//	if(SPIReadAWord(0xe000,0) !=0x00a0)
//	{
//		while(1)
//		{
//			WatchdogClear();		////spi ��д���ɹ���
//		}
//	}
//	
//	SPI_Flash_Sector_Erase(0xe000,0x0000);  //ERASE A SECTOR within 0xf000. ///ѡһ������Ҫ�õ���SECTOR.
//}

//-----------------------����Ϊ������Ŀ�õ���--------------
#if test_flash_4io
//========================================================
//����4��FLASH ��6��IO�Ƿ�������д.
//����ʱ���˳����������⣬�����ݲ��ԣ�һֱbeep��ͬʱ���ơ�
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
				 //---------һֱBeep				
				WatchdogClear();
				TestMic0();
				SP_RampDnDAC1();
				
				*pP_IOA_Buf^=C_TestLed_IOA;//����
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
