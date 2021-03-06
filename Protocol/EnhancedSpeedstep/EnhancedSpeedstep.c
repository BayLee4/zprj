/*++
  This file contains 'Framework Code' and is licensed as such   
  under the terms of your license agreement with Intel or your  
  vendor.  This file may not be modified, except as allowed by  
  additional terms of your license agreement.                   
--*/
/*++

Copyright (c)  2004 Intel Corporation. All rights reserved
This software and associated documentation (if any) is furnished
under a license and may only be used or copied in accordance
with the terms of the license. Except as permitted by such
license, no part of this software or documentation may be
reproduced, stored in a retrieval system, or transmitted in any
form or by any means without the express written consent of
Intel Corporation.


Module Name:

  EnhacedSpeedstep.c

Abstract:

   Enhaced Speedstep protocol 

  Enhanced Intel Speedstep support. 
--*/

// GC_TODO: fix comment to set correct module name: EnhancedSpeedstep.c
#include "Tiano.h"
#include EFI_PROTOCOL_DEFINITION (EnhancedSpeedstep)

EFI_GUID  gDxeEnhancedSpeedstepProtocolGuid = DXE_ENHANCED_SPEEDSTEP_PROTOCOL_GUID;

EFI_GUID_STRING
  (&gDxeEnhancedSpeedstepProtocolGuid, "Enhanced Speedstep Protocol", "Enhanced Speedstep support protocol");
