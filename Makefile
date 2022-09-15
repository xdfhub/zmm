#####################################################################
#																	 
#	Created by u'nSP IDE V3.0.16.1		15:30:48	09/14/22
#
#####################################################################




APPDIR	= C:\PROGRA~2\GENERA~1\UNSPID~1.1

OUTDIR	= .\Debug

CC	= $(APPDIR)\toolchain\udocc

AS	= $(APPDIR)\toolchain\xasm16

LD	= $(APPDIR)\toolchain\xlink16_GPCE3

AR	= $(APPDIR)\toolchain\xlib16

RESC	= $(APPDIR)\toolchain\resc

BHPCK	= $(APPDIR)\toolchain\BootPacker

RM	= del	/F	1>NUL	2>NUL

STRIP	= $(APPDIR)\toolchain\stripper

S37STRIP	= $(APPDIR)\toolchain\BinaryFileStripper

BOOTPACKER	= $(APPDIR)\toolchain\BootPacker 

LIKMODIFIER	= $(APPDIR)\toolchain\unSP_LIKModifier 

INCLUDES	= -I"D:/Prj_GPCE3400/ZMM001A(EN)_MMMMMMM/soft/V44_asV34" -I"C:/Program Files (x86)/Generalplus/unSPIDE 3.0.16.1/library/include" -I"C:/Program Files (x86)/Generalplus/unSPIDE 3.0.16.1/library/include/sys" -I"../Include"

BODY	= -body GPCE3400A -nobdy -bfile "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\GPCE3400A_Demo.bdy"

BODYFILE	= "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\GPCE3400A_Demo.bdy" 

BINFILE	= "$(OUTDIR)\GPCE3400A_Demo.TSK"

BINFILENOEXT	= $(OUTDIR)\GPCE3400A_Demo

ARYFILE	= "$(OUTDIR)\GPCE3400A_Demo.ary"

SBMFILE	= "$(OUTDIR)\GPCE3400A_Demo.sbm"

OPT	= -S -gstabs -Wall -mglobal-var-iram -mISA=2.0

ASFLAGS	= -t4 -d -sr

CASFLAGS	= -t4 -sr -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -at

LDFLAGS	=  -blank 0x00 -initdata -infblk "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\GPCE3400A_Demo.inb" -conf "C:\Program Files (x86)\Generalplus\unSPIDE 3.0.16.1\Body\GPCE1_CE3\Checksum\GPCE1_CE3.cks"

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\RomCodeOBJ_GPCE1_CE3.obj" \
	"$(OUTDIR)\Rom_ZMM_V03_bin.res" \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\isr.obj" \
	"$(OUTDIR)\Resource.obj" \
	"$(OUTDIR)\BootCode_User.obj" \
	"$(OUTDIR)\ORAM_Arrangement.obj" \
	"$(OUTDIR)\SACM_A1800_User.obj" \
	"$(OUTDIR)\system.obj" \
	"$(OUTDIR)\flash.obj" \
	"$(OUTDIR)\Calc.obj" \
	"$(OUTDIR)\System_2.obj" \
	"$(OUTDIR)\LED_Drive.obj" \
	"$(OUTDIR)\Algorithm.obj" \
	"$(OUTDIR)\Play_Speech.obj" \
	"$(OUTDIR)\Key_server.obj" \
	"$(OUTDIR)\Sleep.obj" \
	"$(OUTDIR)\CheckSum_CE3400.obj" \
	"$(OUTDIR)\TestBondingC.obj" \
	"$(OUTDIR)\LED.obj" \
	"$(OUTDIR)\AntiCrack.obj" \
	"$(OUTDIR)\SPI_Flash_CE3.obj" \
	"$(OUTDIR)\CTS_Sensor.obj" \
	"$(OUTDIR)\CTS_User.obj" 

"$(OUTDIR)\Rom_ZMM_V03_bin.res": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\Rom\Link_Data\Rom_ZMM_V03.bin"
	$(RESC) "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\Rom\Link_Data\Rom_ZMM_V03.bin" "$(OUTDIR)\Rom_ZMM_V03_bin.res" RES_ROM_ZMM_V03_BIN 

"$(OUTDIR)\main.asm": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\main.c" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "D:/Prj_GPCE3400/ZMM001A(EN)_MMMMMMM/soft/V44_asV34/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 

"$(OUTDIR)\isr.obj": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\isr.asm" ".\GPCE1_CE3.inc" ".\GPCE1_CE3_BODY.inc" "..\Include\A1800.inc" "..\Include\A3400Pro.inc" "..\Include\MS02.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\isr.obj" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\isr.asm" 

"$(OUTDIR)\Resource.obj": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\Resource.obj" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Resource.asm" 

"$(OUTDIR)\BootCode_User.obj": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\Include\BootCode_User.asm" "GPCE1_CE3.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\BootCode_User.obj" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\Include\BootCode_User.asm" 

"$(OUTDIR)\ORAM_Arrangement.obj": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\Include\ORAM_Arrangement.asm" "GPCE1_CE3.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\ORAM_Arrangement.obj" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\Include\ORAM_Arrangement.asm" 

"$(OUTDIR)\SACM_A1800_User.obj": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\Include\SACM_A1800_User.asm" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\Include\A1800.inc" "GPCE1_CE3.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\SACM_A1800_User.obj" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\Include\SACM_A1800_User.asm" 

"$(OUTDIR)\system.obj": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\Include\system.asm" "GPCE1_CE3.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\system.obj" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\Include\system.asm" 

"$(OUTDIR)\flash.obj": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\flash.asm" ".\GPCE1_CE3.inc" ".\GPCE1_CE3_BODY.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\flash.obj" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\flash.asm" 

"$(OUTDIR)\Calc.asm": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Calc\Calc.c" ".\Calc\Calc.h" "..\Include\datatype.h" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/Calc.asm" "D:/Prj_GPCE3400/ZMM001A(EN)_MMMMMMM/soft/V44_asV34/Calc/Calc.c" 

"$(OUTDIR)\Calc.obj": "$(OUTDIR)\Calc.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -o "$(OUTDIR)\Calc.obj" "$(OUTDIR)\Calc.asm" 

"$(OUTDIR)\System_2.obj": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\System_2.asm" ".\GPCE1_CE3.inc" ".\CTS_def.inc" ".\GPCE1_CE3_BODY.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\System_2.obj" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\System_2.asm" 

"$(OUTDIR)\LED_Drive.obj": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\LED_Drive.asm" ".\GPCE1_CE3.inc" ".\CTS_def.inc" ".\GPCE1_CE3_BODY.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\LED_Drive.obj" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\LED_Drive.asm" 

"$(OUTDIR)\Algorithm.asm": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Algorithm.c" ".\Glob.h" ".\voice_A18.h" ".\GPCE1_CE3.h" ".\Led.h" ".\GPCE1_CE3_BODY.h" "..\Include\SACM.h" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/Algorithm.asm" "D:/Prj_GPCE3400/ZMM001A(EN)_MMMMMMM/soft/V44_asV34/Algorithm.c" 

"$(OUTDIR)\Algorithm.obj": "$(OUTDIR)\Algorithm.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -o "$(OUTDIR)\Algorithm.obj" "$(OUTDIR)\Algorithm.asm" 

"$(OUTDIR)\Play_Speech.asm": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Play_Speech.c" ".\Glob.h" ".\voice_A18.h" ".\GPCE1_CE3.h" ".\GPCE1_CE3_BODY.h" "..\Include\SACM.h" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/Play_Speech.asm" "D:/Prj_GPCE3400/ZMM001A(EN)_MMMMMMM/soft/V44_asV34/Play_Speech.c" 

"$(OUTDIR)\Play_Speech.obj": "$(OUTDIR)\Play_Speech.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -o "$(OUTDIR)\Play_Speech.obj" "$(OUTDIR)\Play_Speech.asm" 

"$(OUTDIR)\Key_server.obj": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Key_server.asm" ".\GPCE1_CE3.inc" ".\GPCE1_CE3_BODY.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\Key_server.obj" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Key_server.asm" 

"$(OUTDIR)\Sleep.asm": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Sleep.c" ".\Glob.h" ".\GPCE1_CE3.h" ".\GPCE1_CE3_BODY.h" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/Sleep.asm" "D:/Prj_GPCE3400/ZMM001A(EN)_MMMMMMM/soft/V44_asV34/Sleep.c" 

"$(OUTDIR)\Sleep.obj": "$(OUTDIR)\Sleep.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -o "$(OUTDIR)\Sleep.obj" "$(OUTDIR)\Sleep.asm" 

"$(OUTDIR)\CheckSum_CE3400.obj": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\TestModel\CheckSum_CE3400.asm" "GPCE1_CE3.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\CheckSum_CE3400.obj" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\TestModel\CheckSum_CE3400.asm" 

"$(OUTDIR)\TestBondingC.asm": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\TestModel\TestBondingC.c" ".\TestModel\TestBondingC.h" "GPCE1_CE3.h" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/TestBondingC.asm" "D:/Prj_GPCE3400/ZMM001A(EN)_MMMMMMM/soft/V44_asV34/TestModel/TestBondingC.c" 

"$(OUTDIR)\TestBondingC.obj": "$(OUTDIR)\TestBondingC.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -o "$(OUTDIR)\TestBondingC.obj" "$(OUTDIR)\TestBondingC.asm" 

"$(OUTDIR)\LED.asm": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\LED.c" ".\Glob.h" ".\GPCE1_CE3.h" ".\datatype.h" ".\LED.h" ".\GPCE1_CE3_BODY.h" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/LED.asm" "D:/Prj_GPCE3400/ZMM001A(EN)_MMMMMMM/soft/V44_asV34/LED.c" 

"$(OUTDIR)\LED.obj": "$(OUTDIR)\LED.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -o "$(OUTDIR)\LED.obj" "$(OUTDIR)\LED.asm" 

"$(OUTDIR)\AntiCrack.asm": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\AntiCrack\AntiCrack.c" ".\AntiCrack\AntiCrack.h" "GPCE1_CE3.h" "..\Include\datatype.h" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/AntiCrack.asm" "D:/Prj_GPCE3400/ZMM001A(EN)_MMMMMMM/soft/V44_asV34/AntiCrack/AntiCrack.c" 

"$(OUTDIR)\AntiCrack.obj": "$(OUTDIR)\AntiCrack.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -o "$(OUTDIR)\AntiCrack.obj" "$(OUTDIR)\AntiCrack.asm" 

"$(OUTDIR)\SPI_Flash_CE3.obj": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\Include\SPI_Flash_CE3.asm" "GPCE1_CE3.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\SPI_Flash_CE3.obj" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\Include\SPI_Flash_CE3.asm" 

"$(OUTDIR)\CTS_Sensor.obj": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\CTS\CTS_Sensor.asm" ".\CTS\CTS_Sensor.inc" "GPCE1_CE3.inc" "CTS_def.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\CTS_Sensor.obj" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\CTS\CTS_Sensor.asm" 

"$(OUTDIR)\CTS_User.asm": "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\CTS\CTS_User.c" ".\CTS\CTS_Sensor.h" "..\Include\datatype.h" "GPCE1_CE3.h" "LED.h" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/CTS_User.asm" "D:/Prj_GPCE3400/ZMM001A(EN)_MMMMMMM/soft/V44_asV34/CTS/CTS_User.c" 

"$(OUTDIR)\CTS_User.obj": "$(OUTDIR)\CTS_User.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -o "$(OUTDIR)\CTS_User.obj" "$(OUTDIR)\CTS_User.asm" 


.SUFFIXES : .c .asm .obj .s37 .tsk .res

all :	 BEFOREBUILD "$(OUTDIR)" $(BINFILE)

BEFOREBUILD :

"$(OUTDIR)" :
	if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

$(BINFILE) : $(OBJFILES) 
	@echo Hint: The version of HDB file for boot packer and Rom code are Ver.1.0.0.2 and 002C.
	$(LD) $(BINTYPE) $(ARYFILE) "$(OUTDIR)\GPCE3400A_Demo_SPI.bin" -tskMaxUsed $(LDFLAGS) $(BODY) $(EXTRAFLAGS) -exportvalues "C:\Users\xdf\AppData\Local\Temp\ini6130.tmp" -defined "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Debug\GlobalSymbol_GPCE1_CE3.ini" -bootrominfo "BootCode_SEC;0100" -undefined-opt __TgP190708CM -undefined-opt __TgP190708CL -undefined-opt __TgP190708M
	$(BOOTPACKER) "C:\Users\xdf\AppData\Local\Temp\ini6130.tmp"
	if exist "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Debug\GPCE3400A_Demo_SPI.bin" del "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Debug\GPCE3400A_Demo_SPI.bin"
	copy "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Debug\GPCE3400A_Demo_SPI.bintmp" "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Debug\GPCE3400A_Demo_SPI.bin" /A /Y
	if exist "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Debug\GPCE3400A_Demo_SPI.bintmp" del "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Debug\GPCE3400A_Demo_SPI.bintmp"
	$(STRIP) "$(OUTDIR)\GPCE3400A_Demo_SPI.bin" "$(OUTDIR)\GPCE3400A_Demo_SPI.bin" 0x400000 0 1 
	$(LD) $(BINTYPE) $(ARYFILE) $(BINFILE) $(LDFLAGS) $(BODY) $(EXTRAFLAGS) -defined "D:\Prj_GPCE3400\ZMM001A(EN)_MMMMMMM\soft\V44_asV34\Debug\GlobalSymbol_GPCE1_CE3.ini" -bootrominfo "BootCode_SEC;0100" -undefined-opt __TgP190708CM -undefined-opt __TgP190708CL -undefined-opt __TgP190708M

compile :	 $(OBJFILES)

CLEANFILES = \
	"$(OUTDIR)\Rom_ZMM_V03_bin.res" \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\main.lst" \
	"$(OUTDIR)\main.asm" \
	"$(OUTDIR)\isr.obj" \
	"$(OUTDIR)\isr.lst" \
	"$(OUTDIR)\Resource.obj" \
	"$(OUTDIR)\Resource.lst" \
	"$(OUTDIR)\BootCode_User.obj" \
	"$(OUTDIR)\BootCode_User.lst" \
	"$(OUTDIR)\ORAM_Arrangement.obj" \
	"$(OUTDIR)\ORAM_Arrangement.lst" \
	"$(OUTDIR)\SACM_A1800_User.obj" \
	"$(OUTDIR)\SACM_A1800_User.lst" \
	"$(OUTDIR)\system.obj" \
	"$(OUTDIR)\system.lst" \
	"$(OUTDIR)\flash.obj" \
	"$(OUTDIR)\flash.lst" \
	"$(OUTDIR)\Calc.obj" \
	"$(OUTDIR)\Calc.lst" \
	"$(OUTDIR)\Calc.asm" \
	"$(OUTDIR)\System_2.obj" \
	"$(OUTDIR)\System_2.lst" \
	"$(OUTDIR)\LED_Drive.obj" \
	"$(OUTDIR)\LED_Drive.lst" \
	"$(OUTDIR)\Algorithm.obj" \
	"$(OUTDIR)\Algorithm.lst" \
	"$(OUTDIR)\Algorithm.asm" \
	"$(OUTDIR)\Play_Speech.obj" \
	"$(OUTDIR)\Play_Speech.lst" \
	"$(OUTDIR)\Play_Speech.asm" \
	"$(OUTDIR)\Key_server.obj" \
	"$(OUTDIR)\Key_server.lst" \
	"$(OUTDIR)\Sleep.obj" \
	"$(OUTDIR)\Sleep.lst" \
	"$(OUTDIR)\Sleep.asm" \
	"$(OUTDIR)\CheckSum_CE3400.obj" \
	"$(OUTDIR)\CheckSum_CE3400.lst" \
	"$(OUTDIR)\TestBondingC.obj" \
	"$(OUTDIR)\TestBondingC.lst" \
	"$(OUTDIR)\TestBondingC.asm" \
	"$(OUTDIR)\LED.obj" \
	"$(OUTDIR)\LED.lst" \
	"$(OUTDIR)\LED.asm" \
	"$(OUTDIR)\AntiCrack.obj" \
	"$(OUTDIR)\AntiCrack.lst" \
	"$(OUTDIR)\AntiCrack.asm" \
	"$(OUTDIR)\SPI_Flash_CE3.obj" \
	"$(OUTDIR)\SPI_Flash_CE3.lst" \
	"$(OUTDIR)\CTS_Sensor.obj" \
	"$(OUTDIR)\CTS_Sensor.lst" \
	"$(OUTDIR)\CTS_User.obj" \
	"$(OUTDIR)\CTS_User.lst" \
	"$(OUTDIR)\CTS_User.asm" \
	"$(BINFILENOEXT).s37" "$(BINFILENOEXT).tsk" "$(BINFILENOEXT)_SPI.bin" "$(BINFILENOEXT).hdb" $(SBMFILE) 

clean :
	$(RM) $(wordlist 1,57,$(CLEANFILES))

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

