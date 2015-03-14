\ *****************************************************************************
\ * Copyright (c) 2004, 2011 IBM Corporation
\ * All rights reserved.
\ * This program and the accompanying materials
\ * are made available under the terms of the BSD License
\ * which accompanies this distribution, and is available at
\ * http://www.opensource.org/licenses/bsd-license.php
\ *
\ * Contributors:
\ *     IBM Corporation - initial implementation
\ ****************************************************************************/


\ Set usb-debug flag to TRUE for debugging output:
0 VALUE usb-debug-flag
false VALUE scan-time?

VARIABLE ihandle-bulk-tran


\ Print a debug message when usb-debug-flag is set
: usb-debug-print  ( str len -- )
   usb-debug-flag  IF type cr ELSE 2drop THEN
;

\ Print a debug message with corresponding value when usb-debug-flag is set
: usb-debug-print-val  ( str len val -- )
   usb-debug-flag  IF -ROT type . cr ELSE drop 2drop THEN
;

\ show proceeding propeller only during scan process.
\ As soon USB-keyboard can be used, this must be suppressed.
0 VALUE proceed-char
: show-proceed ( -- )
   scan-time?              \ are we on usb-scan ?
   IF
      proceed-char
      CASE
         0   OF 2d ENDOF   \ show '-'
         1   OF 5c ENDOF   \ show '\'
         2   OF 7c ENDOF   \ show '|'
         dup OF 2f ENDOF   \ show '/'
      ENDCASE
      emit 8 emit
      proceed-char 1 + 3 AND to proceed-char
   THEN
;

\ delay with proceeding signs
: wait-proceed ( nl -- )
   show-proceed
   BEGIN
      dup d# 100 >         ( nl true|false )
      WHILE
      100 - show-proceed
      100 ms               \ do it in steps of 100ms
   REPEAT
   ms                      \ rest delay
;

\ register device alias
: do-alias-setting ( num name-str name-len )
   rot $cathex strdup            \ create alias name
   get-node node>path            \ get path string
   set-alias                     \ and set the alias
;


0 VALUE ohci-alias-num

\ create a new ohci device alias for the current node:
: set-ohci-alias  ( -- )
   ohci-alias-num dup 1+ TO ohci-alias-num    ( num )
   s" ohci"
   do-alias-setting
;

0 VALUE cdrom-alias-num
0 VALUE disk-alias-num        \ shall start with: pci-disk-num
FALSE VALUE ext-disk-alias    \ first external disk: not yet assigned

\ create a new ohci device alias for the current node:
: set-drive-alias  ( --  )
   space 5b emit
   s" cdrom" drop                ( name-str )
   get-node node>name comp 0=    ( true|false )
   IF                            \ is this a cdrom ?
      cdrom-alias-num dup 1+ TO cdrom-alias-num    ( num )
      s" cdrom"                  \ yes, alias = cdrom
   ELSE
      s" sbc-dev" drop           \ is this a scsi-block-device?
      get-node node>name comp 0= ( true|false )
      IF
         disk-alias-num dup 1 + to disk-alias-num
         s" disk"                \ all block devices will be named "disk"

         ext-disk-alias not   \ flag for first ext. disk already assigned
         IF
            TRUE to ext-disk-alias
            2 s" hdd"         \ add extra alias hdd2 for first USB disk
            2dup type 2 pick .
            8 emit 2f emit
            do-alias-setting
         THEN
      ELSE
         0 s" ??? "              \ unknown device
      THEN
   THEN     ( num name-str name-len )
   2dup type 2 pick .
   8 emit 5d emit cr
   do-alias-setting
;

: usb-create-alias-name ( num -- str len )
    >r s" ohciX" 2dup + 1-           ( str len last-char-ptr  R: num )
    r> [char] 0 + swap c!            ( str len  R: )
;

: ohci-scan-node  ( str len -- )
   2dup find-node ?dup IF
      ( str len phandle )
      dup set-node
      dup child ?dup IF
         delete-node s" Deleting node" usb-debug-print
      THEN
      \ Check whether usb-ohci.fs has already been included:
      s" enumerate" rot find-method IF
         drop
         \ Create instance for enumeration:
         open-dev dup to my-self
         s" enumerate" 2 pick $call-method   \ Scan host controller
         close-dev  0 to my-self
         0 set-node
      ELSE
         2drop get-node
         dup parent node>path select-dev     \ Open parent
         extend-device
         s" usb-ohci.fs" included
         s" open" $call-my-method 0= ABORT" OHCI open failed"
         s" enumerate" $call-my-method
         s" close" $call-my-method
         finish-device
         unselect-dev
      THEN                             ( str len  R: num )
   ELSE
      2drop
   THEN
;

\ Scan all USB OHCI host controllers for attached devices:
: ohci-scan
   \ Scan all OHCI chips:
   space ." Scan USB... " cr
   true to scan-time?            \ show proceeding signs
   0 to disk-alias-num           \ start with disk0
   s" pci-disk-num" $find        \ previously detected disks ?
   IF
      execute to disk-alias-num  \ overwrite start number
   ELSE
      2drop
   THEN

   0 >r                             \ Counter for alias
   BEGIN
      r@ usb-create-alias-name
      find-alias ?dup               ( false | str len len  R: num )
   WHILE
      ( str len  R: num )
      usb-debug-flag IF
         ." * Scanning hub " 2dup type ." ..." cr
      THEN
      ohci-scan-node                ( R: num )
      r> 1+ >r                      ( R: num+1 )
   REPEAT
   r> drop
   0 TO ohci-alias-num
   0 TO cdrom-alias-num
   s" cdrom0" find-alias            ( false | dev-path len )
   dup IF
       s" cdrom" 2swap              ( alias-name len' dev-path len )
       set-alias                    ( -- )
       \ cdrom-alias-num 1 + TO cdrom-alias-num
   ELSE 
       drop                         ( -- )
   THEN

   false to scan-time?                 \ suppress proceeding signs
;

: usb-scan
   s" ohci0" find-alias IF
      drop
      ohci-scan
   THEN
;
