/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/


#include <linux/module.h>
#include <linux/sched.h>
#include <linux/mm.h>

int init_module(void)
{
    printk(KERN_INFO 
	   "       0x%08lX, /* task struct root */\n"
	   "       %d, /* offset of task_struct list */\n"
	   "       %d, /* offset of mm */\n"
	   "       %d, /* offset of pgd in mm */\n"
	   "       %d, /* offset of comm */\n"
	   "    },\n",
	   (long)&init_task, 
	   (int)&init_task.tasks - (int)&init_task,
	   (int)&init_task.mm - (int)&init_task,
	   (int)&init_task.mm->pgd - (int)init_task.mm,
           (int)&init_task.comm - (int)&init_task
	);
    

    printk(KERN_INFO "Information module retistered.\n");
    return -1;
}

void cleanup_module(void)
{
    printk(KERN_INFO "Information module removed.\n");
}

MODULE_LICENSE("GPL"); 
