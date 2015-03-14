#! /bin/sh
# Test of fmtmsg function family.
# Copyright (C) 2000, 2001 Free Software Foundation, Inc.
# This file is part of the GNU C Library.
#

# The GNU C Library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.

# The GNU C Library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.

# You should have received a copy of the GNU Lesser General Public
# License along with the GNU C Library; if not, write to the Free
# Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
# 02111-1307 USA.

common_objpfx=$1
run_program_prefix=$2
objpfx=$3

test="${run_program_prefix} ${objpfx}tst-fmtmsg"
out=${objpfx}tst-fmtmsg.out

LC_ALL=C
export LC_ALL

(MSGVERB= $test || exit 1;
 MSGVERB=label $test || exit 1;
 MSGVERB=severity $test || exit 1;
 MSGVERB=severity:label $test || exit 1;
 MSGVERB=text $test || exit 1;
 MSGVERB=text:label $test || exit 1;
 MSGVERB=text:severity $test || exit 1;
 MSGVERB=text:severity:label $test || exit 1;
 MSGVERB=action $test || exit 1;
 MSGVERB=action:label $test || exit 1;
 MSGVERB=action:severity $test || exit 1;
 MSGVERB=action:severity:label $test || exit 1;
 MSGVERB=action:text $test || exit 1;
 MSGVERB=action:text:label $test || exit 1;
 MSGVERB=action:text:severity $test || exit 1;
 MSGVERB=action:text:severity:label $test || exit 1;
 MSGVERB=tag $test || exit 1;
 MSGVERB=tag:label $test || exit 1;
 MSGVERB=tag:severity $test || exit 1;
 MSGVERB=tag:severity:label $test || exit 1;
 MSGVERB=tag:text $test || exit 1;
 MSGVERB=tag:text:label $test || exit 1;
 MSGVERB=tag:text:severity $test || exit 1;
 MSGVERB=tag:text:severity:label $test || exit 1;
 MSGVERB=tag:action $test || exit 1;
 MSGVERB=tag:action:label $test || exit 1;
 MSGVERB=tag:action:severity $test || exit 1;
 MSGVERB=tag:action:severity:label $test || exit 1;
 MSGVERB=tag:action:text $test || exit 1;
 MSGVERB=tag:action:text:label $test || exit 1;
 MSGVERB=tag:action:text:severity $test || exit 1;
 MSGVERB=tag:action:text:severity:label $test || exit 1;) 2> $out

cmp $out <<EOF
PEMU_LIBC:tst-fmtmsg: HALT: halt
TO FIX: should print message for MM_HALT  PEMU_LIBC:tst-fmtmsg:1
PEMU_LIBC:tst-fmtmsg: ERROR: halt
TO FIX: should print message for MM_ERROR  PEMU_LIBC:tst-fmtmsg:2
PEMU_LIBC:tst-fmtmsg: WARNING: halt
TO FIX: should print message for MM_WARNING  PEMU_LIBC:tst-fmtmsg:3
PEMU_LIBC:tst-fmtmsg: INFO: halt
TO FIX: should print message for MM_INFO  PEMU_LIBC:tst-fmtmsg:4
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_NOSEV  PEMU_LIBC:tst-fmtmsg:5
PEMU_LIBC:tst-fmtmsg: TEST: halt
TO FIX: should print message for MM_TEST  PEMU_LIBC:tst-fmtmsg:6
PEMU_LIBC:tst-fmtmsg
PEMU_LIBC:tst-fmtmsg
PEMU_LIBC:tst-fmtmsg
PEMU_LIBC:tst-fmtmsg
PEMU_LIBC:tst-fmtmsg
PEMU_LIBC:tst-fmtmsg
HALT
ERROR
WARNING
INFO

TEST
PEMU_LIBC:tst-fmtmsg: HALT
PEMU_LIBC:tst-fmtmsg: ERROR
PEMU_LIBC:tst-fmtmsg: WARNING
PEMU_LIBC:tst-fmtmsg: INFO
PEMU_LIBC:tst-fmtmsg
PEMU_LIBC:tst-fmtmsg: TEST
halt
halt
halt
halt
halt
halt
PEMU_LIBC:tst-fmtmsg: halt
PEMU_LIBC:tst-fmtmsg: halt
PEMU_LIBC:tst-fmtmsg: halt
PEMU_LIBC:tst-fmtmsg: halt
PEMU_LIBC:tst-fmtmsg: halt
PEMU_LIBC:tst-fmtmsg: halt
HALT: halt
ERROR: halt
WARNING: halt
INFO: halt
halt
TEST: halt
PEMU_LIBC:tst-fmtmsg: HALT: halt
PEMU_LIBC:tst-fmtmsg: ERROR: halt
PEMU_LIBC:tst-fmtmsg: WARNING: halt
PEMU_LIBC:tst-fmtmsg: INFO: halt
PEMU_LIBC:tst-fmtmsg: halt
PEMU_LIBC:tst-fmtmsg: TEST: halt
TO FIX: should print message for MM_HALT
TO FIX: should print message for MM_ERROR
TO FIX: should print message for MM_WARNING
TO FIX: should print message for MM_INFO
TO FIX: should print message for MM_NOSEV
TO FIX: should print message for MM_TEST
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_HALT
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_ERROR
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_WARNING
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_INFO
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_NOSEV
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_TEST
HALT: TO FIX: should print message for MM_HALT
ERROR: TO FIX: should print message for MM_ERROR
WARNING: TO FIX: should print message for MM_WARNING
INFO: TO FIX: should print message for MM_INFO
TO FIX: should print message for MM_NOSEV
TEST: TO FIX: should print message for MM_TEST
PEMU_LIBC:tst-fmtmsg: HALT: TO FIX: should print message for MM_HALT
PEMU_LIBC:tst-fmtmsg: ERROR: TO FIX: should print message for MM_ERROR
PEMU_LIBC:tst-fmtmsg: WARNING: TO FIX: should print message for MM_WARNING
PEMU_LIBC:tst-fmtmsg: INFO: TO FIX: should print message for MM_INFO
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_NOSEV
PEMU_LIBC:tst-fmtmsg: TEST: TO FIX: should print message for MM_TEST
halt
TO FIX: should print message for MM_HALT
halt
TO FIX: should print message for MM_ERROR
halt
TO FIX: should print message for MM_WARNING
halt
TO FIX: should print message for MM_INFO
halt
TO FIX: should print message for MM_NOSEV
halt
TO FIX: should print message for MM_TEST
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_HALT
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_ERROR
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_WARNING
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_INFO
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_NOSEV
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_TEST
HALT: halt
TO FIX: should print message for MM_HALT
ERROR: halt
TO FIX: should print message for MM_ERROR
WARNING: halt
TO FIX: should print message for MM_WARNING
INFO: halt
TO FIX: should print message for MM_INFO
halt
TO FIX: should print message for MM_NOSEV
TEST: halt
TO FIX: should print message for MM_TEST
PEMU_LIBC:tst-fmtmsg: HALT: halt
TO FIX: should print message for MM_HALT
PEMU_LIBC:tst-fmtmsg: ERROR: halt
TO FIX: should print message for MM_ERROR
PEMU_LIBC:tst-fmtmsg: WARNING: halt
TO FIX: should print message for MM_WARNING
PEMU_LIBC:tst-fmtmsg: INFO: halt
TO FIX: should print message for MM_INFO
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_NOSEV
PEMU_LIBC:tst-fmtmsg: TEST: halt
TO FIX: should print message for MM_TEST
PEMU_LIBC:tst-fmtmsg:1
PEMU_LIBC:tst-fmtmsg:2
PEMU_LIBC:tst-fmtmsg:3
PEMU_LIBC:tst-fmtmsg:4
PEMU_LIBC:tst-fmtmsg:5
PEMU_LIBC:tst-fmtmsg:6
PEMU_LIBC:tst-fmtmsg: PEMU_LIBC:tst-fmtmsg:1
PEMU_LIBC:tst-fmtmsg: PEMU_LIBC:tst-fmtmsg:2
PEMU_LIBC:tst-fmtmsg: PEMU_LIBC:tst-fmtmsg:3
PEMU_LIBC:tst-fmtmsg: PEMU_LIBC:tst-fmtmsg:4
PEMU_LIBC:tst-fmtmsg: PEMU_LIBC:tst-fmtmsg:5
PEMU_LIBC:tst-fmtmsg: PEMU_LIBC:tst-fmtmsg:6
HALT: PEMU_LIBC:tst-fmtmsg:1
ERROR: PEMU_LIBC:tst-fmtmsg:2
WARNING: PEMU_LIBC:tst-fmtmsg:3
INFO: PEMU_LIBC:tst-fmtmsg:4
PEMU_LIBC:tst-fmtmsg:5
TEST: PEMU_LIBC:tst-fmtmsg:6
PEMU_LIBC:tst-fmtmsg: HALT: PEMU_LIBC:tst-fmtmsg:1
PEMU_LIBC:tst-fmtmsg: ERROR: PEMU_LIBC:tst-fmtmsg:2
PEMU_LIBC:tst-fmtmsg: WARNING: PEMU_LIBC:tst-fmtmsg:3
PEMU_LIBC:tst-fmtmsg: INFO: PEMU_LIBC:tst-fmtmsg:4
PEMU_LIBC:tst-fmtmsg: PEMU_LIBC:tst-fmtmsg:5
PEMU_LIBC:tst-fmtmsg: TEST: PEMU_LIBC:tst-fmtmsg:6
halt
PEMU_LIBC:tst-fmtmsg:1
halt
PEMU_LIBC:tst-fmtmsg:2
halt
PEMU_LIBC:tst-fmtmsg:3
halt
PEMU_LIBC:tst-fmtmsg:4
halt
PEMU_LIBC:tst-fmtmsg:5
halt
PEMU_LIBC:tst-fmtmsg:6
PEMU_LIBC:tst-fmtmsg: halt
PEMU_LIBC:tst-fmtmsg:1
PEMU_LIBC:tst-fmtmsg: halt
PEMU_LIBC:tst-fmtmsg:2
PEMU_LIBC:tst-fmtmsg: halt
PEMU_LIBC:tst-fmtmsg:3
PEMU_LIBC:tst-fmtmsg: halt
PEMU_LIBC:tst-fmtmsg:4
PEMU_LIBC:tst-fmtmsg: halt
PEMU_LIBC:tst-fmtmsg:5
PEMU_LIBC:tst-fmtmsg: halt
PEMU_LIBC:tst-fmtmsg:6
HALT: halt
PEMU_LIBC:tst-fmtmsg:1
ERROR: halt
PEMU_LIBC:tst-fmtmsg:2
WARNING: halt
PEMU_LIBC:tst-fmtmsg:3
INFO: halt
PEMU_LIBC:tst-fmtmsg:4
halt
PEMU_LIBC:tst-fmtmsg:5
TEST: halt
PEMU_LIBC:tst-fmtmsg:6
PEMU_LIBC:tst-fmtmsg: HALT: halt
PEMU_LIBC:tst-fmtmsg:1
PEMU_LIBC:tst-fmtmsg: ERROR: halt
PEMU_LIBC:tst-fmtmsg:2
PEMU_LIBC:tst-fmtmsg: WARNING: halt
PEMU_LIBC:tst-fmtmsg:3
PEMU_LIBC:tst-fmtmsg: INFO: halt
PEMU_LIBC:tst-fmtmsg:4
PEMU_LIBC:tst-fmtmsg: halt
PEMU_LIBC:tst-fmtmsg:5
PEMU_LIBC:tst-fmtmsg: TEST: halt
PEMU_LIBC:tst-fmtmsg:6
TO FIX: should print message for MM_HALT  PEMU_LIBC:tst-fmtmsg:1
TO FIX: should print message for MM_ERROR  PEMU_LIBC:tst-fmtmsg:2
TO FIX: should print message for MM_WARNING  PEMU_LIBC:tst-fmtmsg:3
TO FIX: should print message for MM_INFO  PEMU_LIBC:tst-fmtmsg:4
TO FIX: should print message for MM_NOSEV  PEMU_LIBC:tst-fmtmsg:5
TO FIX: should print message for MM_TEST  PEMU_LIBC:tst-fmtmsg:6
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_HALT  PEMU_LIBC:tst-fmtmsg:1
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_ERROR  PEMU_LIBC:tst-fmtmsg:2
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_WARNING  PEMU_LIBC:tst-fmtmsg:3
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_INFO  PEMU_LIBC:tst-fmtmsg:4
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_NOSEV  PEMU_LIBC:tst-fmtmsg:5
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_TEST  PEMU_LIBC:tst-fmtmsg:6
HALT: TO FIX: should print message for MM_HALT  PEMU_LIBC:tst-fmtmsg:1
ERROR: TO FIX: should print message for MM_ERROR  PEMU_LIBC:tst-fmtmsg:2
WARNING: TO FIX: should print message for MM_WARNING  PEMU_LIBC:tst-fmtmsg:3
INFO: TO FIX: should print message for MM_INFO  PEMU_LIBC:tst-fmtmsg:4
TO FIX: should print message for MM_NOSEV  PEMU_LIBC:tst-fmtmsg:5
TEST: TO FIX: should print message for MM_TEST  PEMU_LIBC:tst-fmtmsg:6
PEMU_LIBC:tst-fmtmsg: HALT: TO FIX: should print message for MM_HALT  PEMU_LIBC:tst-fmtmsg:1
PEMU_LIBC:tst-fmtmsg: ERROR: TO FIX: should print message for MM_ERROR  PEMU_LIBC:tst-fmtmsg:2
PEMU_LIBC:tst-fmtmsg: WARNING: TO FIX: should print message for MM_WARNING  PEMU_LIBC:tst-fmtmsg:3
PEMU_LIBC:tst-fmtmsg: INFO: TO FIX: should print message for MM_INFO  PEMU_LIBC:tst-fmtmsg:4
PEMU_LIBC:tst-fmtmsg: TO FIX: should print message for MM_NOSEV  PEMU_LIBC:tst-fmtmsg:5
PEMU_LIBC:tst-fmtmsg: TEST: TO FIX: should print message for MM_TEST  PEMU_LIBC:tst-fmtmsg:6
halt
TO FIX: should print message for MM_HALT  PEMU_LIBC:tst-fmtmsg:1
halt
TO FIX: should print message for MM_ERROR  PEMU_LIBC:tst-fmtmsg:2
halt
TO FIX: should print message for MM_WARNING  PEMU_LIBC:tst-fmtmsg:3
halt
TO FIX: should print message for MM_INFO  PEMU_LIBC:tst-fmtmsg:4
halt
TO FIX: should print message for MM_NOSEV  PEMU_LIBC:tst-fmtmsg:5
halt
TO FIX: should print message for MM_TEST  PEMU_LIBC:tst-fmtmsg:6
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_HALT  PEMU_LIBC:tst-fmtmsg:1
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_ERROR  PEMU_LIBC:tst-fmtmsg:2
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_WARNING  PEMU_LIBC:tst-fmtmsg:3
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_INFO  PEMU_LIBC:tst-fmtmsg:4
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_NOSEV  PEMU_LIBC:tst-fmtmsg:5
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_TEST  PEMU_LIBC:tst-fmtmsg:6
HALT: halt
TO FIX: should print message for MM_HALT  PEMU_LIBC:tst-fmtmsg:1
ERROR: halt
TO FIX: should print message for MM_ERROR  PEMU_LIBC:tst-fmtmsg:2
WARNING: halt
TO FIX: should print message for MM_WARNING  PEMU_LIBC:tst-fmtmsg:3
INFO: halt
TO FIX: should print message for MM_INFO  PEMU_LIBC:tst-fmtmsg:4
halt
TO FIX: should print message for MM_NOSEV  PEMU_LIBC:tst-fmtmsg:5
TEST: halt
TO FIX: should print message for MM_TEST  PEMU_LIBC:tst-fmtmsg:6
PEMU_LIBC:tst-fmtmsg: HALT: halt
TO FIX: should print message for MM_HALT  PEMU_LIBC:tst-fmtmsg:1
PEMU_LIBC:tst-fmtmsg: ERROR: halt
TO FIX: should print message for MM_ERROR  PEMU_LIBC:tst-fmtmsg:2
PEMU_LIBC:tst-fmtmsg: WARNING: halt
TO FIX: should print message for MM_WARNING  PEMU_LIBC:tst-fmtmsg:3
PEMU_LIBC:tst-fmtmsg: INFO: halt
TO FIX: should print message for MM_INFO  PEMU_LIBC:tst-fmtmsg:4
PEMU_LIBC:tst-fmtmsg: halt
TO FIX: should print message for MM_NOSEV  PEMU_LIBC:tst-fmtmsg:5
PEMU_LIBC:tst-fmtmsg: TEST: halt
TO FIX: should print message for MM_TEST  PEMU_LIBC:tst-fmtmsg:6
EOF
exit $?
