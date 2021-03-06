/*++
  This file contains an 'Intel Peripheral Driver' and uniquely  
  identified as "Intel Reference Module" and is                 
  licensed for Intel CPUs and chipsets under the terms of your  
  license agreement with Intel or your vendor.  This file may   
  be modified by the user, subject to additional terms of the   
  license agreement                                             
--*/

/*++

Copyright (c)  1999 - 2013 Intel Corporation. All rights reserved
This software and associated documentation (if any) is furnished
under a license and may only be used or copied in accordance
with the terms of the license. Except as permitted by such
license, no part of this software or documentation may be
reproduced, stored in a retrieval system, or transmitted in any
form or by any means without the express written consent of
Intel Corporation.

Module Name:

  Art.asl

Abstract:

  Intel ACPI Reference Code for Intel Dynamic Power Performance Management

--*/

  Scope(\_SB.IETM)
  {

    Name(ART1, Package()    // ART package when in Quiet Mode / Passive Cooling Mode
    {
      0,    // Revision
      // Source                           Target						     Weight,  AC0MaxLevel, AC1MaxLevel, AC21MaxLevel, AC31MaxLevel, AC41MaxLevel, AC51MaxLevel, AC61MaxLevel, AC71MaxLevel, AC81MaxLevel, AC91MaxLevel
      Package(){\_SB.PCI0.LPCB.H_EC.TFN1, \_SB.PCI0.LPCB.H_EC.TSKN,           100,             65,          50,           30,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF},
      Package(){\_SB.PCI0.LPCB.H_EC.TFN2, \_SB.PCI0.LPCB.H_EC.TSKN,           100,             65,          50,           30,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF},
      Package(){\_SB.PCI0.LPCB.H_EC.TFN1, \_SB.PCI0.B0D4,                     100,             65,          50,           30,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF},
      Package(){\_SB.PCI0.LPCB.H_EC.TFN2, \_SB.PCI0.B0D4,                     100,             65,          50,           30,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF},
    })

    Name(ART0, Package()    // ART package when in Performance Mode / Active Cooling Mode
    {
      0,    // Revision
      // Source                           Target                             Weight,  AC0MaxLevel, AC1MaxLevel, AC21MaxLevel, AC31MaxLevel, AC41MaxLevel, AC51MaxLevel, AC61MaxLevel, AC71MaxLevel, AC81MaxLevel, AC91MaxLevel
      Package(){\_SB.PCI0.LPCB.H_EC.TFN1, \_SB.PCI0.LPCB.H_EC.TSKN,           100,             65,          50,           30,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF},
      Package(){\_SB.PCI0.LPCB.H_EC.TFN2, \_SB.PCI0.LPCB.H_EC.TSKN,           100,             65,          50,           30,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF},
      Package(){\_SB.PCI0.LPCB.H_EC.TFN1, \_SB.PCI0.B0D4,                     100,             65,          50,           30,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF},
      Package(){\_SB.PCI0.LPCB.H_EC.TFN2, \_SB.PCI0.B0D4,                     100,             65,          50,           30,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF,   0xFFFFFFFF},
    })

    // _ART (Active Cooling Relationship Table)
    //
    // Arguments:
    //   None
    // Return Value:
    //   A variable-length Package containing a Revision ID and a list of Active Relationship Packages as described below:
    //
    // Return Value Information
    //   Package {
    //   Revision, // Integer - Current revision is: 0
    //   ActiveRelationship[0] // Package
    //   ...
    //   ActiveRelationship[n] // Package
    //   }
    //
    Method(_ART,,,,PkgObj)
    { // TODO: Add system-specific _ART code here
      If(\ECON)
      {
        If(\_SB.PCI0.LPCB.H_EC.TSKN.CTYP)
        {
          Return(ART1)
        } Else {
          Return(ART0)
        }
      }
    } // End _ART 
}
