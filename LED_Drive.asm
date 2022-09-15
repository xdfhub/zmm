.include GPCE1_CE3.inc
.include CTS_def.inc

.external _BlinkFlag_Data
.external _LED_Cnt

.external _LFXFlag_Data
.external _LFX_Data_Cnt
.external _LFX_Data
//.define LED_Yellow 0//0x400
.define Blink_Fr  8

.code


.public _Light_all_off
_Light_all_off: .proc
   
.ifdef C_productTouch

   r1 =[P_IOA_Buffer]
   r1&=~0x0f0//0x00f;
   [P_IOA_Buffer] =r1


.else
	
   r1 =[P_IOA_Buffer]
   r1&=~0x00f;
   [P_IOA_Buffer] =r1
.endif 



retf
.endp
 
.public _Led_Blink
_Led_Blink:.proc

	r1 = [_BlinkFlag_Data]
	jnz Blink_Loop//out_Blink
//LFX	
	r1 = [_LFXFlag_Data]
	jz  out_Blink
	
	r2 = [_LED_Cnt]
	jnz  out_Blink
	
	r2 = Blink_Fr//[_Blink_Fr]
	[_LED_Cnt] = r2
	 	
	 	
	 	
	r2= [_LFX_Data_Cnt]
	cmp r2,0x04
	Jb Not_over
	r2=0	
Not_over:	   
	
  	R3 = SEG16  _LFX_Data
	R4 = OFFSET _LFX_Data
    r4+=r2	
	DS = R3
	R1 = D:[R4]	
	
	
	r2+=1
	[_LFX_Data_Cnt]=r2   
	
	 r2 = [P_IOA_Buffer]
	 
.ifdef C_productTouch
     r2&=0xff0f///0xfff0
.else	 
	 r2&=0xfff0
.endif	 
	 
	 r2|=r1
	 [P_IOA_Buffer] = r1
	 
   retf	
   
Blink_Loop:	
	r2 = [_LED_Cnt]
	jnz  out_Blink
	
	 r2 =Blink_Fr// [_Blink_Fr]
	 [_LED_Cnt] = r2
	 
      r2 = [P_IOA_Buffer]
      r2^=r1
      [P_IOA_Buffer] = r2
out_Blink:
 retf
.endp