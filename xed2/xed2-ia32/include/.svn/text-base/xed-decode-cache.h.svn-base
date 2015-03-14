/*BEGIN_LEGAL 
Intel Open Source License 

Copyright (c) 2002-2008 Intel Corporation 
All rights reserved. 
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.  Redistributions
in binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.  Neither the name of
the Intel Corporation nor the names of its contributors may be used to
endorse or promote products derived from this software without
specific prior written permission.
 
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE INTEL OR
ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
END_LEGAL */
/// @file xed-decode-cache.h 
/// @author Mark Charney   <mark.charney@intel.com> 


#ifndef _XED_DECODE_CACHE_H_
# define _XED_DECODE_CACHE_H_


#include "xed-decoded-inst.h"
#include "xed-error-enum.h"

////////////////////////////////////////////////////////////////////////////
// TYPES
////////////////////////////////////////////////////////////////////////////

typedef struct {
    xed_decoded_inst_t d;
    xed_uint8_t array[XED_MAX_INSTRUCTION_BYTES];
    xed_uint8_t length;
}  xed_decode_cache_entry_t;

typedef struct {
    xed_decode_cache_entry_t* entries;
    xed_uint32_t limit;
    xed_uint64_t hits;
    xed_uint64_t misses;
    xed_uint64_t found_something;
    xed_uint64_t miscompares;
} xed_decode_cache_t;

////////////////////////////////////////////////////////////////////////////
// PROTOTYPES
////////////////////////////////////////////////////////////////////////////

/// This is the main interface to the decoder.
///  @param xedd the decoded instruction of type #xed_decoded_inst_t . Mode/state sent in via xedd; See the #xed_state_t
///  @param itext the pointer to the array of instruction text bytes
///  @param bytes  the length of the itext input array. 1 to 15 bytes, anything more is ignored.
///  @param cache  a per-thread decode cache allocated by the user and initialized once with #xed_decode_cache_initialize().
///  @return #xed_error_enum_t indiciating success (#XED_ERROR_NONE) or failure. Note failure can be due to not
///  enough bytes in the input array.
///
/// The maximum instruction is 15B and XED will tell you how long the
/// actual instruction is via an API function call
/// xed_decoded_inst_get_length().  However, it is not always safe or
/// advisable for XED to read 15 bytes if the decode location is at the
/// boundary of some sort of protection limit. For example, if one is
/// decoding near the end of a page and the XED user does not want to cause
/// extra page faults, one might send in the number of bytes that would
/// stop at the page boundary. In this case, XED might not be able to
/// decode the instruction and would return an error. The XED user would
/// then have to decide if it was safe to touch the next page and try again
/// to decode with more bytes.  Also sometimes the user process does not
/// have read access to the next page and this allows the user to prevent
/// XED from causing process termination by limiting the memory range that
/// XED will access.  
///
/// @ingroup DECODE_CACHE
XED_DLL_EXPORT xed_error_enum_t
xed_decode_cache(xed_decoded_inst_t* xedd, 
                 const xed_uint8_t* itext, 
                 const unsigned int bytes,
                 xed_decode_cache_t* cache);


/// Have XED initialize the decode cache that you've allocated. You must
/// allocate one decode cache per thread if you are using the
/// #xed_decode_cache. The number of entries must be a power of 2.
///  @param cache     a pointer to your xed_decode_cache_t
///  @param entries   an array you have allocated.
///  @param n_entries number of   xed_decode_cache_entry_t entries, not bytes.
///  @ingroup DECODE_CACHE
XED_DLL_EXPORT void
xed_decode_cache_initialize(xed_decode_cache_t* cache, 
                            xed_decode_cache_entry_t* entries, 
                            xed_uint32_t n_entries);



////////////////////////////////////////////////////////////////////////////
// GLOBALS
////////////////////////////////////////////////////////////////////////////


#endif
////////////////////////////////////////////////////////////////////////////
//Local Variables:
//pref: "../../xed-decode-cache.cpp"
//End:
