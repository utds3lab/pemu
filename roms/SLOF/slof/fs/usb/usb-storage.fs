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

s" entered usb-storage.fs" usb-debug-print

\ -----------------------------------------------------------
\ OF properties
\ -----------------------------------------------------------

s" storage" device-name
s" block" device-type

2 encode-int s" #address-cells" property
0 encode-int s" #size-cells" property

\ -----------------------------------------------------------
\ Specific properties
\ -----------------------------------------------------------

8 VALUE mps-bulk-out
8 VALUE mps-bulk-in
8 VALUE mps-dcp
0 VALUE bulk-in-ep
0 VALUE bulk-out-ep
0 VALUE bulk-in-toggle
0 VALUE bulk-out-toggle
0 VALUE lun
0 VALUE my-usb-address


\ ----------------------------------------------------------
\ Instance specific values
\ ----------------------------------------------------------

INSTANCE VARIABLE ihandle-bulk
INSTANCE VARIABLE ihandle-deblocker
INSTANCE VARIABLE flag
INSTANCE VARIABLE count
4000 CONSTANT max-transfer
200   VALUE block-size           \ default (512 Bytes)
-1    VALUE max-block-num        \ highest reported block-number


\ -------------------------------------------------------
\ General Constants
\ -------------------------------------------------------

0f CONSTANT SCSI-COMMAND-OFFSET


\ -------------------------------------------------------
\ DMA-able buffers
\ -------------------------------------------------------

STRUCT
   max-transfer FIELD >read-buffer
   80 FIELD >response-buffer
   40 FIELD >command-buffer
   10 FIELD >csw-buffer
   8  FIELD >cfg-buffer
CONSTANT /dma-buf

0 VALUE dma-buf
0 VALUE dma-buf-phys

: (dma-buf-init)  ( -- )
   /dma-buf s" dma-alloc" $call-parent TO dma-buf
   dma-buf /dma-buf 0 s" dma-map-in" $call-parent TO dma-buf-phys

   s" storage dma-buf = " dma-buf usb-debug-print-val
;

: (dma-buf-free)  ( -- )
   dma-buf dma-buf-phys /dma-buf s" dma-map-out" $call-parent
   dma-buf /dma-buf s" dma-free" $call-parent
   0 TO dma-buf
   0 TO dma-buf-phys
;


\ -------------------------------------------------------
\ All support methods inherited from parent or imported
\ from support packages are included here. Also included
\ are the internal methods
\ -------------------------------------------------------

s" usb-storage-support.fs" INCLUDED

\ ---------------------------------------------------------------
\ COLON Definitions: Implementation of Standard SCSI commands
\ over USB OHCI
\ ---------------------------------------------------------------


\ to use the general bulk command a lot of global variables
\ must be set. See for example the inquiry command.
0 VALUE bulk-cnt
0 VALUE bulk-cmd-len
0 VALUE itest
0 VALUE resp-buffer
0 VALUE resp-size
: do-bulk-command ( resp-buffer resp-size -- TRUE | FALSE )
   TO resp-size
   TO resp-buffer
   \ dump buffer in debug-mode
   usb-debug-flag
   IF
      dma-buf >command-buffer 0E + c@ TO bulk-cmd-len 
      s" cmd-length: " bulk-cmd-len usb-debug-print-val
      dma-buf >command-buffer bulk-cmd-len 0E + dump cr
   THEN

   6 TO bulk-cnt \ 2 old value
   FALSE dup
   BEGIN
      0=
      WHILE
      drop
      \ prepare and send bulk CBW
      1 1 bulk-out-toggle dma-buf >command-buffer 1f mps-bulk-out
               ( pt ed-type toggle buffer length mps-bulk-out )
      my-usb-address bulk-out-ep 7 lshift or
               ( pt ed-type toggle buffer length mps address )
      rw-endpoint swap		             ( TRUE toggle | FALSE toggle )
      to bulk-out-toggle                ( TRUE | FALSE )
      IF
         s" resp-size : " resp-size usb-debug-print-val
         resp-size 0<>
         IF       \ do we need a response ?!
                  \ read the bulk response
            0 1 bulk-in-toggle resp-buffer resp-size mps-bulk-in
                     ( pt ed-type toggle buffer length mps-bulk-in )
            my-usb-address bulk-in-ep 7 lshift or
                     ( pt ed-type toggle buffer length mps address )
            rw-endpoint swap                       ( TRUE toggle | FALSE toggle )
            to bulk-in-toggle                      ( TRUE | FALSE )
         ELSE
            TRUE
         THEN
         IF               \ read the bulk CSW
            0 1 bulk-in-toggle dma-buf >csw-buffer D mps-bulk-in
                     ( pt ed-type toggle buffer length mps-bulk-in )
            my-usb-address bulk-in-ep 7 lshift or
                     ( pt ed-type toggle buffer length mps address )
            rw-endpoint swap                    ( TRUE toggle | FALSE toggle )
            to bulk-in-toggle                   ( TRUE | FALSE )
            IF
	            s" Command successful." usb-debug-print
	            TRUE dup
            ELSE
               s" Command failed in CSW stage" usb-debug-print
	            FALSE dup
            THEN
         ELSE
            s" Command failed while receiving DATA... read CSW..." usb-debug-print
            \ STALLED: Get CSW to send the CBW again
            0 1 bulk-in-toggle dma-buf >csw-buffer D mps-bulk-in
                     ( pt ed-type toggle buffer length mps-bulk-in )
            my-usb-address bulk-in-ep 7 lshift or
                     ( pt ed-type toggle buffer length mps address )
            rw-endpoint swap                    ( TRUE toggle | FALSE toggle )
            to bulk-in-toggle                   ( TRUE | FALSE )
            IF
               s" OK evaluate the CSW ..." usb-debug-print
               dma-buf >csw-buffer c + c@ dup TO itest
               s" CSW Status: " itest usb-debug-print-val
               dup
               2 =
               IF \ Phase Error
	               s" Phase error do a bulk reset-recovery ..." usb-debug-print
                  bulk-out-ep bulk-in-ep my-usb-address
                  bulk-reset-recovery-procedure
               THEN
               \ ELSE
	            \ don't abort if the read fails.
	            1 =
               IF \ Command failed
                  s" Command Failed do a bulk-reset-recovery" usb-debug-print
                  bulk-out-ep bulk-in-ep my-usb-address
                  bulk-reset-recovery-procedure
               THEN
  	         THEN
            FALSE dup
         THEN
      ELSE
         s" Command failed while Sending CBW ..." usb-debug-print
         FALSE dup
      THEN
      bulk-cnt 1 - TO bulk-cnt
      bulk-cnt 0=
      IF
         2drop FALSE dup
      THEN
   REPEAT
;


\ ---------------------------------------------------------------
\ Method to 1. Send the INQUIRY command 2. Receive and analyse
\ (pending) INQUIRY data
\ ---------------------------------------------------------------
scsi-open
usb-debug-flag to scsi-param-debug  \ copy debug flag

24 CONSTANT inquiry-length    \ was 20

: inquiry ( -- )
   s" usb-storage: inquiry" usb-debug-print
   dma-buf >command-buffer 1 inquiry-length 80 lun scsi-length-inquiry
   ( address tag transfer-len direction lun command-len )
   build-cbw
   inquiry-length dma-buf >command-buffer SCSI-COMMAND-OFFSET +   ( alloc-len address  )
   scsi-build-inquiry
   dma-buf >response-buffer inquiry-length erase      \ provide clean buffer
   dma-buf >response-buffer inquiry-length do-bulk-command
   IF
     s" Successfully read INQUIRY data" usb-debug-print
     0d emit space space
     dma-buf >response-buffer c@  \ get 'Peripheral Device Type' (PDT)
     CASE
        0   OF ." BLOCK-DEV: " ENDOF  \ SCSI Block Device
        5   OF ." CD-ROM   : " ENDOF
        7   OF ." OPTICAL  : " ENDOF
        e   OF ." RED-BLOCK: " ENDOF  \ SCSI Reduced Block Device
        dup dup OF ." ? (" . 8 emit 29 emit 2 spaces ENDOF
     ENDCASE
     space
     \ create vendor identification in device property
     dma-buf >response-buffer 8 + 16 encode-string s" ident-str" property
     dma-buf >response-buffer .inquiry-text
   ELSE
     5040 error" (USB) Device transaction error. (inquiry)"
     ABORT
   THEN
;

\ ---------------------------------------------------------------
\ Method to 1. Send the READ CAPACITY command
\           2. Receive and analyse the response data
\ ---------------------------------------------------------------

: read-capacity ( -- )
   s" usb-storage: read-capacity" usb-debug-print
   dma-buf >command-buffer 1 8  80 lun  scsi-length-read-cap-10
   ( address tag transfer-len direction lun command-len )
   build-cbw 
   \ dma-buf >command-buffer 30 dump cr      \ dump the command buffer
   dma-buf >command-buffer SCSI-COMMAND-OFFSET +      ( address )   
   scsi-build-read-cap-10
   lun 5 lshift
   dma-buf >command-buffer SCSI-COMMAND-OFFSET +      ( address )
   read-cap-10>reserved1 c!

   dma-buf >response-buffer 8 erase          \ provide clean buffer
   dma-buf >response-buffer 8 do-bulk-command
   IF
     s" Successfully read READ CAPACITY data" usb-debug-print
   ELSE
     5040 error" (USB) Device transaction error. (capacity)"
     ABORT
   THEN
;


\ -------------------------------------------------------------------
\ Method to 1. Send TEST UNIT READY command 2. Analyse the status
\ of the response
\ -------------------------------------------------------------------

: test-unit-ready ( -- TRUE | FALSE )
   dma-buf >command-buffer 1 0 80 lun scsi-length-test-unit-ready    \ was: 0c
   ( address tag transfer-len direction lun command-len )
   build-cbw
   dma-buf >command-buffer SCSI-COMMAND-OFFSET +      ( address )
   scsi-build-test-unit-ready                ( cdb -- )
   dma-buf >response-buffer 0 do-bulk-command
   IF
     s" Successfully read test unit ready data" usb-debug-print
     s" Test Unit STATUS available in dma-buf >csw-buffer" usb-debug-print
     dma-buf >csw-buffer 0c + c@ 0=  IF
       s" Test Unit Command Successfully Executed" usb-debug-print
       TRUE                             ( TRUE )
     ELSE
       s" Test Unit Command Failed to execute" usb-debug-print
       FALSE                            ( FALSE )
     THEN
   ELSE
     \ TRUE ABORT" USB device transaction error. (test-unit-ready)"
      5040 error" (USB) Device transaction error. (test-unit-ready)"
      ABORT
   THEN
;

\ ****************************************************
\ multiple checks of 'test-unit-ready' with timeout
\ ****************************************************
: wait-for-unit-ready            ( -- TRUE|FALSE )
   s" --> WAIT: test-unit-ready ... " usb-debug-print
   d# 100                        ( count )   \ up to 10 seconds
   BEGIN                         ( count )
      dup 0>                     ( count flag )
      test-unit-ready      \ dup IF 2b ELSE 2d THEN emit
      not and    ( count flag )
      WHILE
      1-                         ( count )
      d# 100 wait-proceed        \ wait 100 ms
   REPEAT                        ( count )
   0=
   IF
      s" **  Device not ready **  " usb-debug-print
      FALSE
   ELSE
      TRUE
   THEN
;


\ -------------------------------------------------
\ Method to 1. read sense data 2. analyse sesnse
\ data(pending)
\ ------------------------------------------------

: request-sense ( -- )
   s" request-sense: Command ready." usb-debug-print
   dma-buf >command-buffer 1 12 80 lun scsi-length-request-sense
   ( address tag transfer-len direction lun command-len )
   build-cbw

   12 dma-buf >command-buffer SCSI-COMMAND-OFFSET +   ( alloc-len cdb )
   scsi-build-request-sense                           ( alloc-len cdb -- )

   dma-buf >response-buffer 12 do-bulk-command
   IF
      s" Read Sense data successfully" usb-debug-print
      \   dma-buf >response-buffer 12 dump cr      \ dump the rsponsed message
   ELSE
     \ TRUE ABORT" USB device transaction error. (request-sense)"
     5040 error" (USB) Device transaction error. (request-sense)"
     ABORT
   THEN
;

: start ( -- )
   dma-buf >command-buffer 1 0 80 lun scsi-length-start-stop-unit
   ( address tag transfer-len direction lun command-len )
   build-cbw

   dma-buf >command-buffer SCSI-COMMAND-OFFSET +      ( cdb )
   scsi-const-start scsi-build-start-stop-unit        ( state# cdb -- )

   dma-buf >response-buffer 0 do-bulk-command
   IF
     s" Start successfully" usb-debug-print
   ELSE
     \ TRUE ABORT" USB device transaction error. (start)"
     5040 error" (USB) Device transaction error. (start)"
     ABORT
   THEN
;


\ To transmit SCSI Stop command

: stop ( -- )
   dma-buf >command-buffer 1 0 80 lun scsi-length-start-stop-unit
   ( address tag transfer-len direction lun command-len )
   build-cbw

   dma-buf >command-buffer SCSI-COMMAND-OFFSET +      ( cdb )
   scsi-const-stop scsi-build-start-stop-unit         ( state# cdb -- )

   dma-buf >response-buffer 0 do-bulk-command
   IF
     s" Stop successfully" usb-debug-print
   ELSE
     \ TRUE ABORT" USB device transaction error. (stop)"
     5040 error" (USB) Device transaction error. (stop)"
     ABORT
   THEN
;


0 VALUE temp1
0 VALUE temp2
0 VALUE temp3


\ -------------------------------------------------------------
\          block device's seek
\ -------------------------------------------------------------
\ if anything is wrong in the boot device, a seek-request can
\ occur that exceeds the limits of the device in the following
\ read-command. So checking is required and the appropriate
\ return-value has to be returned
\ Spec requires -1 if operation fails and 0 or 1 if it succeeds !!
\ -------------------------------------------------------------

: seek ( pos-lo pos-hi -- status )
   2dup lxjoin max-block-num block-size * >
   IF
      ." ** Seek Error: pos too large ("
      dup . over . ." -> " max-block-num block-size * .
      ." ) ** " cr
      -1                   \ see spec-1275 page 183
   ELSE
      s" seek" ihandle-deblocker @ $call-method
   THEN
;


\ -------------------------------------------------------------
\          block device's read
\ -------------------------------------------------------------

: read ( address length -- actual )
   s" read" ihandle-deblocker @  $call-method
;


\ -------------------------------------------------------------
\         read-blocks to be used by deblocker
\ -------------------------------------------------------------
: read-blocks ( address block# #blocks -- #read-blocks )
   2dup + max-block-num >
   IF
      ." ** Requested block too large "
      2dup + ." (" .d ." -> " max-block-num .d
      bs emit ." ) ... read aborted **" cr
      nip nip                       \ leave #blocks on stack
   ELSE
      block-size *
      dma-buf >command-buffer      ( address block# transfer-len command-buffer )
      1 2 pick 80 lun 0c build-cbw ( address block# transfer-len )
      dup to temp1                 ( address block# transfer-len )
      block-size /                 ( address block# #blocks )
      dma-buf >command-buffer      ( address block# #blocks command-addr )
      SCSI-COMMAND-OFFSET +        ( address block# #blocks cdb )
      scsi-build-read?             ( address cdblength )
      dma-buf >command-buffer 0e + c!   \ update bCBWCBLength-field with resulting CDB length
      dma-buf >read-buffer temp1   ( address read-buffer transfer-len )
      do-bulk-command              ( address )
      IF
        dma-buf >read-buffer swap temp1    ( read-buffer address transfer-len )
        move
        s" Read  data successfully" usb-debug-print
      ELSE
        drop
        5040 error" (USB) Device transaction error. (read-blocks)"
        ABORT
      THEN
      temp1 block-size /  ( #read-blocks )
   THEN
;

\ ------------------------------------------------
\ To bring the the media to seekable and readable
\ condition.
\ ------------------------------------------------

d# 800 CONSTANT media-ready-retry

: make-media-ready ( -- )
   s" usb-storage: make-media-ready" usb-debug-print
   0  flag !
   0  count !
   BEGIN
      flag @  0=
   WHILE
      test-unit-ready IF
         s" Media ready for access." usb-debug-print
         1  flag !
      ELSE
         count @  1 +  count !
         count @ media-ready-retry = IF
            1 flag !
            5000 error" (USB) Media or drive not ready for this blade."
            ABORT
         THEN
         request-sense
         dma-buf >response-buffer scsi-get-sense-ID? ( addr -- false | sense-ID true )
         IF
            ffff00 AND     \ remaining: sense-key ASC
            CASE
               023a00 OF   \ MEDIUM NOT PRESENT (02 3a 00)
                  5010 error" (USB) No Media found! Check for the drawer/inserted media."
                  ABORT
               ENDOF

               020400 OF   \ LOGICAL DRIVE NOT READY - INITIALIZATION REQUIRED
                  5010 error" (USB) No Media found! Check for the drawer/inserted media."
                  ABORT
               ENDOF

               033000 OF   \ CANNOT READ MEDIUM - UNKNOWN FORMAT
                  5020 error" (USB) Unknown media format."
                  ABORT
               ENDOF
            ENDCASE
         THEN
      THEN
      d# 10 ms             \ wait maximum 10ms * 800 (=8s)
   REPEAT
   usb-debug-flag IF
      ." make-media-ready finished after "
      count @ decimal . hex ." tries." cr
   THEN
;

\ ------------------------------------------------
\ read and show devices capacity
\ ------------------------------------------------
: .showcap
   space
   test-unit-ready drop             \ initial command
   request-sense
   dma-buf >response-buffer scsi-get-sense-ID? ( addr -- false | sense-ID true )
   IF
      dup FFFF00 and 023a00 =       ( sense-id flag )
      IF
         023a02 =                   \ see sense-codes SPC-3 clause 4.5.6
         IF
            ."  Tray Open!"
         ELSE
            ."    No Media"
         THEN
      ELSE                          ( sense-id )
         drop
         wait-for-unit-ready
         IF
            read-capacity
            dma-buf >response-buffer scsi-get-capacity-10 space .capacity-text
         ELSE
            request-sense
            dma-buf >response-buffer scsi-get-sense-ID? ( addr -- false | sense-ID true )
            IF
               dup ff0000 and 040000 =       \ sense-code = 4 ?
               IF
                  ." *HW-ERROR*"
               ELSE
                  ( sense-ID )
                  CASE
                     \ see SPC-3 clause 4.5.6
                     023a00 OF ."   No Media " ENDOF
                     023a02 OF ." Tray Open! " ENDOF
                     dup    OF ."          ? " ENDOF
                  ENDCASE
               THEN
            THEN
         THEN
      THEN
   ELSE
      ."       ??   "
   THEN
;



: init-dev-ready
   test-unit-ready drop
   4 >r                \ loop-counter
   0 0
   BEGIN
      2drop
      request-sense
      dma-buf >response-buffer scsi-get-sense-data      ( ascq asc sense-key )
      0<>  r> 1- dup >r 0<> AND          \ loop-counter or sense-key
      WHILE
   REPEAT
   2drop
   r> drop
;



scsi-close        \ no further scsi words required


\ Set up the block-size of the device, using the READ CAPACITY command.
\ Note: Media must be ready (=> make-media-ready) or READ CAPACITY
\ might fail!

: (init-block-size)
   read-capacity
   dma-buf >response-buffer l@ dup 0<>
   IF
      to max-block-num        \ highest block-number
   ELSE
      -1 to max-block-num     \ indeterminate
   THEN
   dma-buf >response-buffer 4 + 
   l@ to block-size
   s" usb-storage: block-size=" block-size usb-debug-print-val
;


\ Standard OF methods

: open ( -- TRUE )
   s" usb-storage: open" usb-debug-print
   (dma-buf-init)
   ihandle-bulk s" bulk" (open-package)

   make-media-ready
   (init-block-size)           \ Init block-size before opening the deblocker

   ihandle-deblocker s" deblocker" (open-package)

   s" disk-label" find-package IF  ( phandle )
      usb-debug-flag IF ." my-args for disk-label = " my-args swap . . cr THEN
      my-args rot interpose
   THEN
   TRUE                        ( TRUE )
;


: close  ( -- )
   ihandle-deblocker (close-package)
   ihandle-bulk (close-package)
   (dma-buf-free)
;


\ Set device name according to type

: (init-device-name)  ( -- )
   init-dev-ready
   inquiry
   dma-buf >response-buffer c@
   CASE
      1  OF .showcap s" tape"    device-name ENDOF
      5  OF .showcap s" cdrom"   device-name s" CDROM found" usb-debug-print ENDOF
      0  OF .showcap s" sbc-dev" device-name s" SBC Direct access device" usb-debug-print ENDOF
      7  OF .showcap s" optical" device-name s" Optical memory found" usb-debug-print ENDOF
      0E OF .showcap s" rbc-dev" device-name s" RBC direct acces device found" usb-debug-print ENDOF
      \ dup OF s" storage" device-name ENDOF
   ENDCASE
;


\ Initial device node setup

: (initial-setup)
   (dma-buf-init)
   ihandle-bulk s" bulk" (open-package)

   device-init
   (init-device-name)
   set-drive-alias
   200 to block-size       \ Default block-size, will be overwritten in "open"

   ihandle-bulk (close-package)
   (dma-buf-free)
;

(initial-setup)

s" leaving usb-storage.fs" usb-debug-print
