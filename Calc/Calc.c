/*==================================================================
//�ļ����ƣ�			Calc.c
//���ܣ�				���㹦�ܡ�
//��ǰ�汾��			v0.2
//��ʼ���ڣ�			2019-04-04

//Body:					GPCE063A
//Written by:			Jamis

���ܣ�


�޸ļ�¼��
190419:

==================================================================*/
#include "Calc.h"
			
/*----------------------------------------------------------
valiable
----------------------------------------------------------*/


/*----------------------------------------------------------
function
----------------------------------------------------------*/
//����ֵ��data*2
u32 mul2(u32 data)
{
	pntaddr32 ptemp;
	
	ptemp.whole=data;
	if(ptemp.prt.low&0x8000)//*2
	{
		ptemp.prt.low=ptemp.prt.low<<1;
		ptemp.prt.high=(ptemp.prt.high<<1)+1;
	}
	else
	{
		ptemp.prt.low=ptemp.prt.low<<1;
		ptemp.prt.high=ptemp.prt.high<<1;
	}
	return ptemp.whole;
}
//����ֵ����16λ��
u16 Low16(u32 data)
{
	pntaddr32 ptemp;
	ptemp.whole=data;
	
	return ptemp.prt.low;
}
//����ֵ����16λ��
u16 High16(u32 data)
{
	pntaddr32 ptemp;
	ptemp.whole=data;
	
	return ptemp.prt.high;
}