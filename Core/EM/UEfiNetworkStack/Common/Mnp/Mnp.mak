#//**********************************************************************
#//**********************************************************************
#//**                                                                  **
#//**        (C)Copyright 1985-2008, American Megatrends, Inc.         **
#//**                                                                  **
#//**                       All Rights Reserved.                       **
#//**                                                                  **
#//**         5555 Oakbrook Pkwy, Suite 200, Norcross, GA 30093        **
#//**                                                                  **
#//**                       Phone: (770)-246-8600                      **
#//**                                                                  **
#//**********************************************************************
#//**********************************************************************

#**********************************************************************
# $Header: /Alaska/BIN/Modules/Network/UEFINetworkStack II/Common/Mnp/Mnp.mak 2     5/01/12 9:47a Hari $
#
# Revision: $
#
# $Date: 5/01/12 9:47a $
#**********************************************************************
# Revision History
# ----------------
# 
#**********************************************************************
#<AMI_FHDR_START>
#
# Name:	Mnp.mak
#
# Description:	
#
#<AMI_FHDR_END>
#**********************************************************************
all : Mnp

Mnp : $(BUILD_DIR)\Mnp.ffs

!IF "$(x64_BUILD)"=="1"
$(BUILD_DIR)\Mnp.ffs : $(Mnp_DIR)\MnpDxe.efi
!ELSE
$(BUILD_DIR)\Mnp.ffs : $(Mnp_DIR)\MnpDxeIa32.efi
!ENDIF
	$(MAKE) /f Core\FFS.mak \
	BUILD_DIR=$(BUILD_DIR) \
	GUID=C30B94E3-C8F2-4ab0-91AB-FA8DF621B1C9\
	TYPE=EFI_FV_FILETYPE_DRIVER \
	PEFILE=$** FFSFILE=$@ COMPRESS=1 NAME=$(**B)
#**********************************************************************
#**                                                                  **
#**        (C)Copyright 1985-2004, American Megatrends, Inc.         **
#**                                                                  **
#**                       All Rights Reserved.                       **
#**                                                                  **
#**             6145-F Northbelt Pkwy, Norcross, GA 30071            **
#**                                                                  **
#**                       Phone: (770)-246-8600                      **
#**                                                                  **
#**********************************************************************
#**********************************************************************