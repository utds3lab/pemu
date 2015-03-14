\ *****************************************************************************
\ * Copyright (c) 2011 IBM Corporation
\ * All rights reserved.
\ * This program and the accompanying materials
\ * are made available under the terms of the BSD License
\ * which accompanies this distribution, and is available at
\ * http://www.opensource.org/licenses/bsd-license.php
\ *
\ * Contributors:
\ *     IBM Corporation - initial implementation
\ ****************************************************************************/

\ ." Populating " pwd cr

s" network" device-type

INSTANCE VARIABLE obp-tftp-package

/vd-len BUFFER: virtiodev
virtiodev virtio-setup-vd

: open  ( -- okay? )
   open IF
      \ my-unit 1 rtas-set-tce-bypass
      my-args s" obp-tftp" $open-package obp-tftp-package !
      true
   ELSE
      false
   THEN
;

: close  ( -- )
   s" close" obp-tftp-package @ $call-method
   \ my-unit 0 rtas-set-tce-bypass
   close
;

: load  ( addr -- len )
   s" load" obp-tftp-package @ $call-method 
;

: ping  ( -- )
   s" ping" obp-tftp-package @ $call-method
;

\ Set up MAC address from config virtqueue
6 BUFFER: local-mac
: setup-mac  ( -- )
   6 0 DO
      virtiodev i 1 virtio-get-config
      local-mac i + c!
   LOOP
   local-mac 6 encode-bytes  s" local-mac-address"  property
;
setup-mac

: setup-alias  ( -- )
   s" net" find-alias 0= IF
      s" net" get-node node>path set-alias
   ELSE
      drop
   THEN
;
setup-alias
