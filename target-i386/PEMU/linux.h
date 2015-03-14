/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#ifndef __LINUX_H__
#define __LINUX_H__

struct PEMU_guest_os {
	unsigned int taskaddr;
	int listoffset;
	int mmoffset;
	int pgdoffset;
	int commoffset;
};

extern struct PEMU_guest_os pemu_guest_os;

#endif
