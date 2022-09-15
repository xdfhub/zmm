#ifndef	__calc_h__
#define	__calc_h__
//	write your header here	

#include "datatype.h"

typedef union {
	u32 whole;//��һ����
	struct{
		u16 low;//��ʮ��λ.�Ⱥ�˳�����ϵͳ��������
		u16 high;//��16λ��
	}prt; 
}pntaddr32;//ָ��ĵ�ַ�ߵ�λ��ʽ

//function
extern u32 mul2(u32 data);
extern u16 Low16(u32 data);
extern u16 High16(u32 data);

#endif
