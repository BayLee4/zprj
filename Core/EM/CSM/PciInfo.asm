;**********************************************************************
;**********************************************************************
;**                                                                  **
;**        (C)Copyright 1985-2010, American Megatrends, Inc.         **
;**                                                                  **
;**                       All Rights Reserved.                       **
;**                                                                  **
;**           5555 Oakbrook Pkwy, Suite 200, Norcross, GA 30093      **
;**                                                                  **
;**                       Phone: (770)-246-8600                      **
;**                                                                  **
;**********************************************************************
;**********************************************************************

;**********************************************************************
; $Header: /Alaska/SOURCE/Modules/CSM/Generic/Core/PciInfo.asm 6     1/12/10 11:46a Olegi $
;
; $Revision: 6 $
;
; $Date: 1/12/10 11:46a $
;**********************************************************************
;**********************************************************************
; Revision History
; ----------------
; $Log: /Alaska/SOURCE/Modules/CSM/Generic/Core/PciInfo.asm $
; 
; 6     1/12/10 11:46a Olegi
; Copyright message updated.
; 
; 5     4/27/07 5:13p Olegi
; CSM.CHM file preparation.
;
; 4     8/24/06 3:05p Felixp
; 1. x64 support
; 2. Unused code removed
;
; 3     5/16/06 1:57p Olegi
;
; 2     11/07/05 4:37p Olegi
;
; 1     6/21/05 12:12p Olegi
; LegacyBios and LegacyBiosPlatform are combined into one FFS.
;
; 3     4/04/05 5:08p Mandal
;
;**********************************************************************
;<AMI_FHDR_START>
;
; Name: PciInfo.asm
;
; Description: This file includes the PCI related tables generated by AMISDL
;
;<AMI_FHDR_END>
;**********************************************************************

IFNDEF EFIx64
.586P
option language:c
ENDIF

IFNDEF EFIx64
PCIDATA_SEG SEGMENT USE32 'DATA'
ELSE
PCIDATA_SEG SEGMENT 'DATA'
ENDIF
        include busnumxlat.inc
PCIDATA_SEG ENDS
end


;**********************************************************************
;**********************************************************************
;**                                                                  **
;**        (C)Copyright 1985-2010, American Megatrends, Inc.         **
;**                                                                  **
;**                       All Rights Reserved.                       **
;**                                                                  **
;**           5555 Oakbrook Pkwy, Suite 200, Norcross, GA 30093      **
;**                                                                  **
;**                       Phone: (770)-246-8600                      **
;**                                                                  **
;**********************************************************************
;**********************************************************************