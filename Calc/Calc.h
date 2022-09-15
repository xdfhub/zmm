#ifndef	__calc_h__
#define	__calc_h__
//	write your header here	

#include "datatype.h"

typedef union {
	u32 whole;//整一个数
	struct{
		u16 low;//低十六位.先后顺序根据系统来调整。
		u16 high;//高16位。
	}prt; 
}pntaddr32;//指针的地址高低位格式

//function
extern u32 mul2(u32 data);
extern u16 Low16(u32 data);
extern u16 High16(u32 data);

#endif
