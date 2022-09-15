//==========================================================================
// File Name   : CTS_Sensor.h
// Description : External C functions and constants declaration
// Written by  : Ray Cheng
// Last modified date:
//              2012/10/24
//==========================================================================
#ifndef	__CTS_Sensor_H__
#define	__CTS_Sensor_H__

#define CTS_PAD_0 0x0001
#define CTS_PAD_1 0x0002
#define CTS_PAD_2 0x0004
#define CTS_PAD_3 0x0008
#define CTS_PAD_4 0x0010

extern void CTS_Initial(void);
extern void CTS_Scan(void);
extern void CTS_ScanStop(void);
extern void CTS_SetSchmittHigh(unsigned int);
extern void CTS_SetSchmittLow(unsigned int);
extern void CTS_ServiceLoop(void);
extern void CTS_FilterSetting(unsigned int);
extern unsigned int* CTS_GetResult(void);
extern void ISR_Service_CTS(void);


extern void TouchProbe_SendAllSUM1(void);

#endif