//========================================================
//上拉输入
//低电平触发  2008.7.13
//output: key(1-8), PressUpflag: 0xff00 Press ; 0x00ff up
//====================================================================
//.include GPCE2P064.inc
//.include /Touch16/Touch16.inc
.include GPCE1_CE3.inc



.public _Key_Scan_ServiceLoop 

//.define C_TouchIO_Mask	 0x00ff	//0x3fc0	
//
//.define C_Hight_Active_IO 0x0ff//0x04ff//C_TouchIO_Mask+Usbdet


.define P_IO_Key_Data   P_IOB_Data

.DEFINE C_DebounceCnt	0x00f  //0x02 16hz 
.Define C_LongDebounceCnt   1000//2S



.define IO_BuffMask   0x0f//0x034//
.define IO_Buffinit   0x0f




.public _Key
.public  _Pressflag   //对应位为1 则按下
.public _LongPressflag //对应位为1 则为长按

//.external  _Key_Debounce
.external _Key_Buffer
.external _Key_activeflag
//.external _Key_Debounce1

.external _Key_buffer_First
.external _Registered_Play_Status
.external _Timeout_cnt


.ram
.var    IO_Buff           //初始状态
.var    _Key_Debounce;        //计数单元
//.var    Debouceflag;
.var    _Key;
.var    _Key_Temp
.var    _Pressflag
.var   _LongPressflag


.code   
.public _Key_Scan_Init
_Key_Scan_Init: .proc
   push r1,r2  to [sp]
       r1=0x0000
       [_Key]=r1
       [_Pressflag]=r1
       [_LongPressflag] = r1
       
       [_Key_Debounce]=r1
       [_Key_Temp]=r1

       
       r1 = IO_Buffinit 
       [IO_Buff]=r1
       
    
  pop r1, r2 from [sp]
  
 retf
.endp

.public _Key_Scan_Init_Wakeup
_Key_Scan_Init_Wakeup: .proc
   push r1,r2  to [sp]
       r1=0x0000
       [_Key]=r1
       [_Pressflag]=r1
//       [_LongPressflag] = r1
       
       [_Key_Temp]=r1
       [_Key_Debounce]=r1
       

       r1=[P_IO_Key_Data]
       r1 &= IO_BuffMask    
       [IO_Buff]=r1
       
    
  pop r1, r2 from [sp]
  
 retf
.endp


 
_Key_Scan_ServiceLoop: .proc

   //push r1,r2 to [sp]
//-----------------------------//

        
            
       r1=[P_IO_Key_Data]
       r1&=IO_BuffMask
       

       r1^=[IO_Buff]
       jnz L_Keyactive
         
           
        r1 =0
       [_Key_Temp]=r1   
           
       
       r1 = [_Pressflag]
       test r1,(1) //只有Play button 检查长按
       jz Jmp_Out
            
       r2 = [_Key_Debounce] 
       r2+=1                //在此计数 debounce
       [_Key_Debounce] = r2
       
       cmp r2,C_LongDebounceCnt
       jb  Jmp_Out
        
        
       r1 = (1) //!!!!!!!!!!!!!!!!     
       [_LongPressflag] = r1
       //[_Key]=r1
       
       r1=0
       [_Pressflag] = r1
    
            
Jmp_Out:         
       pc=out
        
        
 L_Keyactive:         
         
        cmp r1,[_Key_Temp]  
        je L_Debounce
        
        [_Key_Temp]=r1
        
//        r1 = C_IRQ7_16Hz
//   		[P_INT_Status] =r1; 
//   		
//   		r1 =0x5555
//        [P_TimeBase_Clear] = r1;
       
       
        r1 =0
        [_Key_Debounce]=r1
     
L_Debounce:
             
       r1=[_Key_Debounce]
       
       r1+=1                //在此计数 debounce
       [_Key_Debounce] = r1
       
       cmp r1,C_DebounceCnt
       jae L_Debounceover
       

       pc=out

L_Debounceover:
 //       r1=0
 //       [Debouceflag]=r1
        
        
        r1 =1        
        r2 = [_Key_Temp]

Get_Loop:
        test r2,r1
        jnz L_Getkeyvalue
        
         r1=r1 lsl 1
         jnz Get_Loop
             
out_getvalue:   
     
         r1 =0
         [_Key_Temp] =r1
         
       pc=out
      
         
L_Getkeyvalue:
         [_Key]=r1    
         [_Key_Temp] =r1 
         
//         r2 = r1 & C_Hight_Active_IO//C_TouchIO_Mask
//         jz check_H //按键低有效
//         
//         r1 = r1 & C_Hight_Active_IO
//         [_Key]=r1 
//         
//         r1&=[IO_Buff]   
//         jz Key_press   
//         
//         jmp Key_up
//         
//check_H:        
         r1&=[IO_Buff]   
         jnz Key_press         
 
Key_up:
     //  r2=[_LongPressflag]  //长按抬起
       r2=[_Pressflag]
       r2&=[_Key]
       jnz Key_Up_short
        
//        r2=[_LongPressflag]  //长按抬起
//        
//        r1=[_Key]   
//        r1^=0xffff
//        r2&=r1
//        [_LongPressflag]=r2 
        

       
        r2=0
        [_Key]=r2 //clear
        

        
        pc=Save_IO_buffer

Key_Up_short:    //短按抬起
        r2=[_Pressflag]
        r1=[_Key]   
        r1^=0xffff
        r2&=r1
        [_Pressflag]=r2 
        
        
        //r2=0
        //[_Key]=r2 //clear
        
        pc=Save_IO_buffer
 
         
Key_press:
        r2=[_Pressflag]
        r1=[_Key] 
        r2|=r1
        [_Pressflag]=r2  
        
        
        r1=0
        [_Timeout_cnt] =r1
        
//        r2 =[_Key_activeflag]
//        r2&=r1
//        jz Save_IO_buffer
        
//        r2=[_Key_Buffer]
//        r2|=r1
//        [_Key_Buffer] = r2
//        
//        r2 =[_Registered_Play_Status]
//        r2&=r1
//        jz Save_IO_buffer
//        
//         r2=[_Key_buffer_First]
//         jnz Save_IO_buffer
//         
//         [_Key_buffer_First] = r1
  
        
Save_IO_buffer:
        r2=[IO_Buff]
        r2^=[_Key_Temp]
        [IO_Buff]=r2
        
        r1 =0
        [_Key_Temp] =r1
         
out:     
  //    pop r1,r2 from [sp]
      retf
 .endp 