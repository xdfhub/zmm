#ifndef	__DATATYPE_h__
#define	__DATATYPE_h__
//	write your header here
//常用的数据类型转换
#define system_nbits   16//16位系统 

#if system_nbits==16
	    /* exact-width signed integer types */
	typedef   signed           char int8;
	typedef   signed           int int16;
	typedef   signed  long     int int32;
	//typedef   signed  long	   int int64;
	
	    /* exact-width unsigned integer types */
	typedef unsigned          char uint8;
	typedef unsigned           int uint16;
	typedef unsigned  long     int uint32;
	//typedef unsigned long      int uint64;
	
	typedef  uint8		u8;
	typedef  uint16		u16;
	typedef  uint32		u32;
	//typedef  uint64		u64;
	
#elif system_nbits==32	
	/* exact-width signed integer types */
	typedef   signed           char int8;
	typedef   signed  short    int int16;
	typedef   signed           int int32;
	typedef   signed  long	   int int64;
	
	    /* exact-width unsigned integer types */
	typedef unsigned          char uint8;
	typedef unsigned  short    int uint16;
	typedef unsigned           int uint32;
	typedef unsigned long      int uint64;
	
	typedef  bool 		u1;
	typedef  uint8		u8;
	typedef  uint16		u16;
	typedef  uint32		u32;
	typedef  uint64		u64;
#endif

#define TRUE 	1
#define FALSE 	0

#endif
