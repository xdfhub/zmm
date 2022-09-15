//==================================================================
//�ļ����ƣ�	AntiCrack.asm		
//���ܣ�	    ���ƽ����
//��ǰ�汾��			
//�������ڣ�			2021-0520

//Body:					ce3400
//Written by:			Jamis

//�޸ļ�¼��
//2021-05-10
//  1.���ӷ��ƽ����ʹ����ֻ�����ڱ���˾��3400����оƬ�򲻼���оƬ����ͨ����оƬ��
//  2.���ļ���Ҫ�õ�SPI_Flash_CE3.asm�ļ���
//==================================================================

#include "AntiCrack.h"
#include "GPCE1_CE3.h"

//**************************************************************************
// Contant Defintion Area
//**************************************************************************
#define normalIC_enable  1//1--����ʹ�ò����ܵ���ͨоƬ;0-������ʹ�ã�
#define SzjtIC_enable    1//1--����ʹ�ü��ܵĽ�ͨоƬ;0-������ʹ�ã�
#define YutongIC_enable  1//1--����ʹ�ü��ܵ���ͨоƬ;0-������ʹ�ã�


const unsigned int T_Scr[]={0x05a0};
#if SzjtIC_enable
const unsigned int T_Szjt_enc[]={0x530a};//��ͨ����оƬ��T_Scr[]���ݼ��ܺ��ɵ�����
#endif
#if YutongIC_enable
const unsigned int T_Yutong_enc[]={0x164f};//��ͨ����оƬ��T_Scr[]���ݼ��ܺ��ɵ�����
#endif
//���˱����Ž�ģ������������PlaySpeech()��ʹ���ŵ�ģ�����ƫ��R_WrongICflag��
//оƬ��ȷʱ�����ŵ�������ȷ�������оƬʱ�����ŵ�������������ƫ�Ƶ�һ����
unsigned int R_WrongICflag=0;//1-�����оƬ��0-оƬ��ȷ��

//**************************************************************************
// ����������
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
// Description : ���ƽ⹦�ܣ��������ڲ�����ʹ�õ�оƬʱ��R_WrongICflag��Ϊ1������Ϊ0��
//��Ҫide->setting->section�ｫSPIFC_RAMCode_SEC��rom��ram�ֱ��Ϊ205100��10��
//��ƥ��MoveSPIDriverToRAM��������Ĳ�����
// Destory     : ���ƻ�ram�е�ַΪ[0x10,0x334]�����ݣ��������Ҫ�������н��������³�ʼ����
//ͨ�����ramΪOVERLAP_A3400��OVERLAP_A1800�����ݣ������˳��󣬿������½���һ��A1800��A3400�ĳ�ʼ����
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
void AntiCrackFun()
{
	unsigned int temp1;
	union {
		u32 whole;//��һ����
		struct{
			u16 low;//��ʮ��λ.�Ⱥ�˳�����ϵͳ��������
			u16 high;//��16λ��
		}prt; 
	}paddr32;//ָ��ĵ�ַ�ߵ�λ��ʽ
//����flash��д����ram������ͨ��flash�ķ�ʽ����T_Scr��ַ������
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
//end ��ͨ��дflash��ʽ��
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
	R_WrongICflag=1;//оƬ����
}