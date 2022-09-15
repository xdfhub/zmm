//==================================================================
//文件名称：	AntiCrack.asm		
//功能：	    防破解程序。
//当前版本：			
//更新日期：			2021-0520

//Body:					ce3400
//Written by:			Jamis

//修改记录：
//2021-05-10
//  1.增加防破解程序，使程序只能用于本公司的3400加密芯片或不加密芯片或语通加密芯片。
//  2.本文件需要用到SPI_Flash_CE3.asm文件。
//==================================================================

#include "AntiCrack.h"
#include "GPCE1_CE3.h"

//**************************************************************************
// Contant Defintion Area
//**************************************************************************
#define normalIC_enable  1//1--允许使用不加密的普通芯片;0-不允许使用；
#define SzjtIC_enable    1//1--允许使用加密的捷通芯片;0-不允许使用；
#define YutongIC_enable  1//1--允许使用加密的语通芯片;0-不允许使用；


const unsigned int T_Scr[]={0x05a0};
#if SzjtIC_enable
const unsigned int T_Szjt_enc[]={0x530a};//捷通加密芯片将T_Scr[]数据加密后变成的数据
#endif
#if YutongIC_enable
const unsigned int T_Yutong_enc[]={0x164f};//语通加密芯片将T_Scr[]数据加密后变成的数据
#endif
//将此变量放进模板语音播放里PlaySpeech()，使播放的模板进行偏移R_WrongICflag，
//芯片正确时，播放的语音正确；错误的芯片时，播放的语音错误，向下偏移的一个。
unsigned int R_WrongICflag=0;//1-错误的芯片；0-芯片正确。

//**************************************************************************
// 函数声明区
//**************************************************************************
#define pP_AUDIO_Ctrl2             ((volatile unsigned int *)P_AUDIO_Ctrl2)  
#define pP_AUDIO_Ctrl1             ((volatile unsigned int *)P_AUDIO_Ctrl1)  
#define pP_AUDIO_CH1_Data             ((volatile unsigned int *)P_AUDIO_CH1_Data)  
#define pP_Timer_Ctrl            ((volatile unsigned int *)P_Timer_Ctrl)
#define pP_TimerA_Data            ((volatile unsigned int *)P_TimerA_Data)
#define pP_TimerA_CNTR            ((volatile unsigned int *)P_TimerA_CNTR)
extern void WatchdogClear();
extern unsigned int SPI_Flash_ReadAWord(unsigned int addrl,unsigned int addrh);
extern void MoveSPIDriverToRAM();
//****************************************************************
// Function    : AntiCrackFun
// Description : 防破解功能，程序用在不允许使用的芯片时，R_WrongICflag设为1，否则为0。
//需要ide->setting->section里将SPIFC_RAMCode_SEC的rom和ram分别改为205100和10，
//以匹配MoveSPIDriverToRAM函数里面的参数。
// Destory     : 会破坏ram中地址为[0x10,0x334]的数据，如果有需要，请自行将变量重新初始化。
//通常这段ram为OVERLAP_A3400和OVERLAP_A1800的数据，所以退出后，可以重新进行一次A1800和A3400的初始化。
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
void AntiCrackFun()
{
	unsigned int temp1;
	union {
		u32 whole;//整一个数
		struct{
			u16 low;//低十六位.先后顺序根据系统来调整。
			u16 high;//高16位。
		}prt; 
	}paddr32;//指针的地址高低位格式
//加载flash读写程序到ram，用普通读flash的方式读出T_Scr地址的数据
	__asm("INT OFF");
	MoveSPIDriverToRAM();
	paddr32.whole=T_Scr;
	paddr32.prt.high-=0x20;
	if(paddr32.prt.low&0x8000)
	{
		paddr32.prt.high+=1;
	}
	paddr32.prt.low*=2;
	temp1 = SPI_Flash_ReadAWord(paddr32.prt.low,paddr32.prt.high);	
//	__asm("INT FIQ,IRQ");
//end 普通读写flash方式。
	R_WrongICflag=0;	
	#if normalIC_enable
	if(temp1==T_Scr[0])
	{
		return;
	}
	#endif
	#if SzjtIC_enable
	if(temp1==T_Szjt_enc[0])
	{
		return;
	}
	#endif
	#if YutongIC_enable
	if(temp1==T_Yutong_enc[0])
	{
		return;
	}
	#endif
	R_WrongICflag=1;//芯片错误。
}