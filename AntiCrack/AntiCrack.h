#ifndef	__anticrack_h__
#define	__anticrack_h__
//	write your header here	

#include "datatype.h"

//funtion
//****************************************************************
// Function    : AntiCrackFun
// Description : ���ƽ⹦�ܣ��������ڲ�����ʹ�õ�оƬʱ��R_WrongICflag��Ϊ1������Ϊ0��
//��Ҫice->setting->section�ｫSPIFC_RAMCode_SEC��rom��ram�ֱ��Ϊ205100��10��
//��ƥ��MoveSPIDriverToRAM��������Ĳ�����
// Destory     : ���ƻ�ram�е�ַΪ[0x10,0x334]�����ݣ��������Ҫ�������н��������³�ʼ����
//ͨ�����ramΪOVERLAP_A3400��OVERLAP_A1800�����ݣ������˳��󣬿������½���һ��A1800��A3400�ĳ�ʼ����
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
extern void AntiCrackFun(void); 

//���˱����Ž�ģ������������PlaySpeech()��ʹ���ŵ�ģ�����ƫ��R_WrongICflag��
//оƬ��ȷʱ�����ŵ�������ȷ�������оƬʱ�����ŵ�������������ƫ�Ƶ�һ����
extern unsigned int R_WrongICflag;//1-�����оƬ��0-оƬ��ȷ��
#endif
