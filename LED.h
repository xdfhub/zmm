#ifndef	__LED_h__
#define	__LED_h__
//	write your header here

//-------------------LED¿ØÖÆ------------------------



#define LED0_BIT			 LED_Blue // EXT1 IO	
#define LED1_BIT			 LED_Orange // EXT1 IO	
#define LED2_BIT			 LED_Pink // EXT1 IO	
#define LED3_BIT			 LED_Purple // EXT1 IO	





#define LED_ALL_BIT			 (LED0_BIT | LED1_BIT | LED2_BIT | LED3_BIT)	

#define P_LED_DATA       P_IOA_Data		
#define P_LED_BUFFER	 P_IOA_Buffer	  
#define P_LED_DIR	     P_IOA_Dir
#define P_LED_ATTRIB     P_IOA_Attrib




#endif
