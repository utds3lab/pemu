/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#include "img.h"


IMG IMG_Next (IMG img)
{
}

IMG IMG_Prev (IMG img)
{
}

IMG IMG_Invalid (VOID)
{
}

BOOL IMG_Valid (IMG img)
{
}

SEC IMG_SecHead (IMG img)
{
}

SEC IMG_SecTail (IMG img)
{
}

SYM IMG_RegsymHead (IMG img)
{
}

ADDRINT IMG_Entry (IMG img)
{
}

VOID IMG_Name (IMG img, CHAR *name)
{
}

ADDRINT IMG_Gp (IMG img)
{
}

ADDRINT IMG_LoadOffset (IMG img)
{
}

ADDRINT IMG_LowAddress (IMG img)
{
}

ADDRINT IMG_HighAddress (IMG img)
{
}

ADDRINT IMG_StartAddress (IMG img)
{
}

USIZE IMG_SizeMapped (IMG img)
{
}

IMG_TYPE IMG_Type (IMG img)
{
}

BOOL IMG_IsMainExecutable (IMG x)
{
}

BOOL IMG_IsStaticExecutable (IMG x)
{
}

UINT32 IMG_Id (IMG x)
{
}

IMG IMG_FindImgById (UINT32 id)
{
}

IMG IMG_FindByAddress (ADDRINT address)
{
}

VOID IMG_AddInstrumentFunction (IMAGECALLBACK fun, VOID *v)
{
}

VOID IMG_AddUnloadFunction (IMAGECALLBACK fun, VOID *v)
{
}

IMG IMG_Open (const CHAR *filename)
{
}

VOID IMG_Close (IMG img)
{
}

IMG APP_ImgHead (VOID)
{
}

IMG APP_ImgTail (VOID)
{
}
