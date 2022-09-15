//**************************************************************************
// Header File Included Area
//**************************************************************************
.include GPCE1_CE3.inc

//**************************************************************************
// Contant Defintion Area
//**************************************************************************
.define C_DebounceCnt		0x00f0
.define C_SACM_RAMP_DELAY   80
.define C_SCAN_8_Bits	    0 //0 for 16Bits	

//**************************************************************************
// Variable Publication Area
//**************************************************************************



//**************************************************************************
// Function Call Publication Area
//**************************************************************************
.public _SPI_ReadAWord
.public F_SPI_ReadAWord
.public _SPI_ReadNWords_LH
.public F_SPI_ReadNWords_LH


//**************************************************************************
// External Function Declaration
//**************************************************************************
.external F_AutoModeReadNWords
.external F_AutoModeReadAWords

//.external __RES_DATA_V01_BIN_sa
.external _SPI_Resources_Folder_Table//T_SACM_A1800_SpeechTable
//**************************************************************************
// RAM Definition Area
//**************************************************************************
.RAM
//.var R_DebounceReg

//**************************************************************************
// CODE Definition Area
//**************************************************************************
.CODE

//.public _TOffset;
//_TOffset:
//.dw 1234,2456  ////En_0903.a18 

//****************************************************************
// SPI_ReadAWord_LH(addr low,addr high)
// Function    : F_SPI_ReadAWord_LH
// Description : Read a word data from flash,
// Destory     : R1
// Parameter   : R1 = Address Low（地址步进长度1byte,在ce3400-3100IC，此数不可以为单数）, R2 = Address High（地址步进长度1byte）	
// Return      : R1 = one word of data read
// Note        : None
//*****************************
 _SPI_ReadAWord: .proc
	R2 = SP + 3;
	R1 = [R2++];
	R2 = [R2]; 
F_SPI_ReadAWord:
   	push r2, r4 to [sp];

	test r1, 1
	jz l_calc
	     r3 = C_Software_Reset
	     [P_System_Reset]=r3
		jmp F_SPI_ReadAWord //错误参数，进入死循环
		
	l_calc:
//    test r2,1
//    jz notcarry
//    	r1=r1 lsr 1;
//    	r1+=0x8000;
//    	r2 =r2 lsr 1;
//    	jmp l_readaword
//    notcarry:
//    	r1=r1 lsr 1;
//    	r2 =r2 lsr 1;
//    l_readaword:	
    		  
    R3 = R2 lsr 4;//低位移入  4位循环移位
	R1 = R1 ror 1;
	R2 = R2 lsr 1;  		  
  
  
  	R3 = SEG16  _SPI_Resources_Folder_Table
	R4 = OFFSET _SPI_Resources_Folder_Table
	DS = R3
	R3 = D:[R4++]
	R4 = D:[R4]
 
  	R1 += R3
  	R2 +=R4,CARRY
    		  
 		 		  
//  R1 += OFFSET __RES_DATA_V01_BIN_sa
//
//	R2 += SEG16 __RES_DATA_V01_BIN_sa, CARRY			  
		  
    
////////////////////////////////////////////////////////	
	
//	DS = R2
//	R1 = D:[R1]	    须切换Bank       
    
	call F_AutoModeReadAWords//低8位在前，高8位在后
/////////////////////////////////////////
	
	pop R2, R4 from [SP];
	retf
	.endp
	
	
//****************************************************************
// SPI_ReadAWord_LH(addr low,addr high)
// Function    : F_SPI_ReadAWord_LH
// Description : Read a word data from flash,
// Destory     : R1
// Parameter   : R1 = Address Low（地址步进长度1byte,在ce3400-3100IC，此数不可以为单数）, R2 = Address High（地址步进长度1byte）	
// Return      : R1 = one word of data read
// Note        : None
//*****************************
.public _SPI_ReadAWord_Big
_SPI_ReadAWord_Big: .proc
	R2 = SP + 3;
	R1 = [R2++];
	R2 = [R2]; 
?F_SPI_ReadAWord_LH:
    push r2, r4 to [sp];
	test r1, 1
	jz ?l_calc
		 r3 = C_Software_Reset
	     [P_System_Reset]=r3
		jmp ?F_SPI_ReadAWord_LH //错误参数，进入死循环
		
	?l_calc:
//    test r2,1
//    jz ?notcarry
//    	r1=r1 lsr 1;
//    	r1+=0x8000;
//    	r2 =r2 lsr 1;
//    	jmp ?l_readaword
//    ?notcarry:
//    	r1=r1 lsr 1;
//    	r2 =r2 lsr 1;
//    ?l_readaword:	
    
    R3 = R2 lsr 4;//低位移入  4位循环移位
	R1 = R1 ror 1;
	R2 = R2 lsr 1;     
		  
		  
  //	R1 += OFFSET __RES_DATA_V01_BIN_sa

  //	R2 += SEG16 __RES_DATA_V01_BIN_sa, CARRY			  
	
	R3 = SEG16  _SPI_Resources_Folder_Table
	R4 = OFFSET _SPI_Resources_Folder_Table
	DS = R3
	R3 = D:[R4++]
	R4 = D:[R4]
	
	

  	R1 += R3
  	R2 +=R4,CARRY
	
////////////////////////////////////////////////////////	
	
//	DS = R2
//	R1 = D:[R1]	  须切换Bank
    
	call F_AutoModeReadAWords//低8位在前，高8位在后
/////////////////////////////////////////	
	r2 = r1&0xff00
	R1 = R1 LSL 4;
	R1 = R1 LSL 4;
	
	r2 =r2 lsr 4;
	r2 =r2 lsr 4;
	
     R1 |= R2;	
	
	pop R2, R4 from [SP];	
	retf
	.endp	
	
//****************************************************************
// SPI_ReadAByte(addr low,addr high)
// Function    : F_SPI_ReadAWord_LH
// Description : Read a word data from flash,
// Destory     : R1
// Parameter   : R1 = Address Low（地址步进长度1byte,在ce3400-3100IC，此数不可以为单数）, R2 = Address High（地址步进长度1byte）	
// Return      : R1 = one word of data read
// Note        : None
//*****************************	
.public _SPI_ReadAByte
_SPI_ReadAByte:	.proc
	R2 = SP + 3;
	R1 = [R2++];
	R2 = [R2]; 
	
F_SPI_ReadAByte:
	push r2, r5 to [sp];
	
    r5 =r1				
// ?l_calc:
//    test r2,1
//    jz ?notcarry
//    	r1=r1 lsr 1;
//    	r1+=0x8000;
//    	r2 =r2 lsr 1;
//    	jmp ?l_readaword
//    ?notcarry:
//    	r1=r1 lsr 1;
//    	r2 =r2 lsr 1;
//    ?l_readaword:	
    		 	
    R3 = R2 lsr 4;//低位移入  4位循环移位
	R1 = R1 ror 1;
	R2 = R2 lsr 1;  		 	
    		 	
    		 		  
  	//R1 += OFFSET __RES_DATA_V01_BIN_sa

	//R2 += SEG16 __RES_DATA_V01_BIN_sa, CARRY	
	R3 = SEG16  _SPI_Resources_Folder_Table
	R4 = OFFSET _SPI_Resources_Folder_Table
	DS = R3
	R3 = D:[R4++]
	R4 = D:[R4]
 
  	R1 += R3
  	R2 +=R4,CARRY		  
		  
    
////////////////////////////////////////////////////////	
	
//	DS = R2
//	R1 = D:[R1]	  
    
	call F_AutoModeReadAWords//低8位在前，高8位在后
/////////////////////////////////////////
	
	
	test r5, 1//地址为单数
	jz ?outlowbyte
	
	r1 = R1 lsr 4
	r1 = R1 lsr 4

?outlowbyte:		
    R1 &= 0x0ff;	
     
	pop R2, R5 from [SP];
	retf;
	.endp	
	
//****************************************************************
// Function    : F_SPI_ReadNWords_LH
// Description : Get N words from external memory to buffer
// Destory     : R1
// Parameter   : R1 : buffer address
//               R2 : data length
//               R3 : external memory address low word（地址步进长度1byte,在ce3400-3100IC，此数不可以为单数）
//               R4 : external memory address high word（地址步进长度1byte）
// Return      : None
// Note        : None
//****************************************************************
_SPI_ReadNWords_LH:      .proc
    R4 = SP + 3;
    R1 = [R4++];							// buffer address
    R2 = [R4++];							// data length
    R3 = [R4++];							// external memory address low byte
    R4 = [R4];							// external memory address high byte

F_SPI_ReadNWords_LH:
	push R1, R5 to [SP];

	test r3, 1
	jz l_calc_nhl
	
		 r5 = C_Software_Reset
	     [P_System_Reset]=r5
		jmp F_SPI_ReadNWords_LH //错误参数，进入死循环
		
	l_calc_nhl:
    test r4,1
    jz notcarry_nhl
    	r3=r3 lsr 1;
    	r3+=0x8000;
    	r4 =r4 lsr 1;
    	jmp l_readnwordhl
    notcarry_nhl:
    	r3=r3 lsr 1;
    	r4 =r4 lsr 1;
    l_readnwordhl:	
    
    
	//R3 += OFFSET __RES_DATA_V01_BIN_sa

//	R4 += SEG16  __RES_DATA_V01_BIN_sa, CARRY	

  	R3 = SEG16  _SPI_Resources_Folder_Table
	R4 = OFFSET _SPI_Resources_Folder_Table
	DS = R3
	R3 = D:[R4++]
	R4 = D:[R4]
 
  	R1 += R3
  	R2 +=R4,CARRY

  
    
	call F_AutoModeReadNWords//低8位在前，高8位灾后
	
	
	pop R1, R5 from [SP];
	retf
	.endp

