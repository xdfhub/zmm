#ifndef	__anticrack_h__
#define	__anticrack_h__
//	write your header here	

#include "datatype.h"

//funtion
//****************************************************************
// Function    : AntiCrackFun
// Description : 防破解功能，程序用在不允许使用的芯片时，R_WrongICflag设为1，否则为0。
//需要ice->setting->section里将SPIFC_RAMCode_SEC的rom和ram分别改为205100和10，
//以匹配MoveSPIDriverToRAM函数里面的参数。
// Destory     : 会破坏ram中地址为[0x10,0x334]的数据，如果有需要，请自行将变量重新初始化。
//通常这段ram为OVERLAP_A3400和OVERLAP_A1800的数据，所以退出后，可以重新进行一次A1800和A3400的初始化。
// Parameter   : None
// Return      : None
// Note        : None
//****************************************************************
extern void AntiCrackFun(void); 

//将此变量放进模板语音播放里PlaySpeech()，使播放的模板进行偏移R_WrongICflag，
//芯片正确时，播放的语音正确；错误的芯片时，播放的语音错误，向下偏移的一个。
extern unsigned int R_WrongICflag;//1-错误的芯片；0-芯片正确。
#endif
