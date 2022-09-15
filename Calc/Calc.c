/*==================================================================
//文件名称：			Calc.c
//功能：				计算功能。
//当前版本：			v0.2
//开始日期：			2019-04-04

//Body:					GPCE063A
//Written by:			Jamis

功能：


修改记录：
190419:

==================================================================*/
#include "Calc.h"
			
/*----------------------------------------------------------
valiable
----------------------------------------------------------*/


/*----------------------------------------------------------
function
----------------------------------------------------------*/
//返回值：data*2
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
//返回值：低16位数
u16 Low16(u32 data)
{
	pntaddr32 ptemp;
	ptemp.whole=data;
	
	return ptemp.prt.low;
}
//返回值：低16位数
u16 High16(u32 data)
{
	pntaddr32 ptemp;
	ptemp.whole=data;
	
	return ptemp.prt.high;
}