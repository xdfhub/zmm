
// Resource Table
// Created by IDE, Do not modify this table

.CODE
.public _RES_Table;
.public _SPI_Resources_Folder_Table;
.external __RES_ROM_ZMM_V03_BIN_sa
.public _RES_ROM_ZMM_V03_BIN_SA;
.external __RES_ROM_ZMM_V03_BIN_ea;
.public _RES_ROM_ZMM_V03_BIN_EA;


_RES_Table:


_SPI_Resources_Folder_Table:

_RES_ROM_ZMM_V03_BIN_SA:
	.DW offset __RES_ROM_ZMM_V03_BIN_sa,seg16 __RES_ROM_ZMM_V03_BIN_sa;
_RES_ROM_ZMM_V03_BIN_EA:
	.DW offset __RES_ROM_ZMM_V03_BIN_ea,seg16 __RES_ROM_ZMM_V03_BIN_ea;


// End Table
.public T_SACM_A1800_SpeechTable;
T_SACM_A1800_SpeechTable:
	
.public T_SACM_A3400_SpeechTable;
T_SACM_A3400_SpeechTable:
//	.DW offset __RES_ANIMALS02_34K_SP4_sa,seg16 __RES_ANIMALS02_34K_SP4_sa;
//	.DW offset __RES_ANIMALS03_34K_SP4_sa,seg16 __RES_ANIMALS03_34K_SP4_sa;
//	.DW offset __RES_ANIMALS04_34K_SP4_sa,seg16 __RES_ANIMALS04_34K_SP4_sa;
//	.DW offset __RES_ANIMALS08_34K_SP4_sa,seg16 __RES_ANIMALS08_34K_SP4_sa;
	
.public T_SACM_MS02_InstrumentSet;
T_SACM_MS02_InstrumentSet:
//	.DW offset __RES_GPCE3_DEMO_LIB_sa,seg16 __RES_GPCE3_DEMO_LIB_sa;
	
.public T_SACM_MS02_MIDITable;
T_SACM_MS02_MIDITable:
//	.DW offset __RES_DORAEMON_MID_BIN_sa,seg16 __RES_DORAEMON_MID_BIN_sa;
//	.DW offset __RES_RAGTIME_MID_BIN_sa,seg16 __RES_RAGTIME_MID_BIN_sa;
//	.DW offset __RES_IWANTFORXMAS_MID_BIN_sa,seg16 __RES_IWANTFORXMAS_MID_BIN_sa;
//	.DW offset __RES_HARRYPOTTER_MID_BIN_sa,seg16 __RES_HARRYPOTTER_MID_BIN_sa;
