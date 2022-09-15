#ifndef	__TESTBONDINGC_h__
#define	__TESTBONDINGC_h__
//	write your header here


//TestBondingC.c需要调用的函数声明
extern unsigned int SPIReadAWord(unsigned int addr,unsigned int seg);
extern void WatchdogClear();
extern void  TestMic0();
extern void  SP_RampDnDAC1();
extern void  Delay1xms(unsigned int i);

extern void  PA_On();

//函数声明
extern void TestIO_Init(void);
extern void TestIO(void); 
extern void Check_Data();
extern void Beep_Along();
extern void BeepBeep_Along();
extern void test_btplay();
extern void bt_vcc_off();
extern void test_uartio();
extern void Test_4IO_Flash();

//
extern void F_BondingTest();
#endif
