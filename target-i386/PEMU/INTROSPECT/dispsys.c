/*
#
#  Copyright © 2014 The University of Texas System Board of Regents, All Rights Reserved.
#       Author:        The Systems and Software Security (S3) Laboratory.
#         Date:        March 12, 2015
#      Version:        1.0.0
#
*/

#include "sse.h"
#include<linux/sockios.h>
#include<sys/mman.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<stdlib.h>

#include<stdio.h>
#include<stdlib.h>
#include<fcntl.h>
#include<errno.h> 

#define R_EAX 0
#define R_ECX 1
#define R_EDX 2
#define R_EBX 3
#define R_ESP 4
#define R_EBP 5
#define R_ESI 6
#define R_EDI 7
#define CPU_NB_REGS 8
#define STARTCHAR '@'
#if 0
extern int seminit;
int pemuint80(target_ulong syscall_op, target_ulong arg1, target_ulong arg2, target_ulong arg3, target_ulong arg4, target_ulong arg5, target_ulong arg6)
{
    if(seminit==0)
    return syscallori(syscall_op, arg1, arg2,arg3,arg4,arg5,arg6);
    
    #ifdef DEBUG
    char str[100];
    sprintf(str, "Iyscall is %5d\n",syscall_op);
    syscallori(4,1, str, 18);
    syscallori(syscall_op, arg1, arg2,arg3,arg4,arg5,arg6);
    #endif
}
#endif
int do_syscall_policy(target_ulong syscall_op, target_ulong arg1, target_ulong arg2, target_ulong arg3, target_ulong arg4, target_ulong arg5, target_ulong arg6)
{
    char str[256];
    char *lstr = "/usr/lib/locale/locale-archive";
    #if 0
    if(seminit==0)
    return syscallori(syscall_op, arg1, arg2,arg3,arg4,arg5,arg6);
    
    if(syscall_op ==117)
    return syscallori(syscall_op, arg1, arg2,arg3,arg4,arg5,arg6);
    #ifdef DEBUG
    sprintf(str, "syscall is %5d %08x\n",syscall_op, arg1);
    char *str2="haha\n";
    syscallori(4,1, str, 27);
    #endif
    
    #endif
    
    if(syscall_op==0x6 && (arg1==1 ||arg1 == 2))
    return 0;
    
    target_ulong regs[CPU_NB_REGS];
    
    regs[R_EBX] = arg1;
    regs[R_ECX] = arg2;
    regs[R_EDX] = arg3;
    regs[R_ESI] = arg4;
    regs[R_EDI] = arg5;
    regs[R_EBP] = arg6;
    
    sc_init(syscall_op);
    
    int size;
    //int sys_need_redirect=0;
    char *file;
    switch (syscall_op)
    {
        
        case 0 : // sys_ni_syscall
        break;
        case 1 : // sys_exit 
        break;
        case 2 : // sys_fork
        break;
        case 3 : // sys_read
        //if(regs[R_EBX] &0x1000)
        //{
            //regs[R_EBX] &=0xfff;
            size = regs[R_EDX];
            insert_sc_arg(0, regs[R_EBX], 0, 0);
            insert_sc_arg(1, regs[R_ECX], size, 1);
            insert_sc_arg(2, regs[R_EDX], 0, 0);
            //sys_need_redirect=1;
        //}
        break;
        case 4 : // sys_write
        //if(regs[R_EBX] &0x1000)
        {
            //regs[R_EBX] &=0xfff;
            size = regs[R_EDX];
            insert_sc_arg(0, regs[R_EBX], 0, 0);
            insert_sc_arg(1, regs[R_ECX], size, 0);
            insert_sc_arg(2, regs[R_EDX], 0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 5 : // sys_open
        file =  (char *) regs[R_EBX];
        if(strstr(file, "locale-archive") != NULL)
        {
            regs[R_EBX]=lstr;
            arg1 = lstr;
            break;
        }
        if(strstr(file, "magic.mgc") != NULL)
        {
            break;
        }
        
        //if(file[0]!='@')
        {
            size = strlen((char*) regs[R_EBX]);
            #ifdef DEBUG
            //sprintf(str, "open file %s\n", regs[R_EBX]);
            //syscallori(4,1, str, strlen(str)+1);
            #endif
            //printf("open file %s\n", (char*) regs[R_EBX]);
            insert_sc_arg(0, regs[R_EBX], size+1, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            insert_sc_arg(2, regs[R_EDX],  0, 0);
            //sys_need_redirect=1;
        }//else
        //arg1++;
        break;
        case 6 : // sys_close
        //if(regs[R_EBX] &0x1000)
        {
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX], 0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 7 : // sys_waitpid
        break;
        case 8 : // sys_creat
        break;
        case 9:  //link
        	size = strlen((char*) regs[R_EBX])+1;
        	insert_sc_arg(0, regs[R_EBX], size, 0);
        	size = strlen((char*) regs[R_ECX])+1;
        	insert_sc_arg(1, regs[R_ECX], size, 0);
        	//sys_need_redirect=1;
        break;
        case 10 : // sys_unlink
        	size = strlen((char*) regs[R_EBX])+1;
        	insert_sc_arg(0, regs[R_EBX], size, 0);
        	//sys_need_redirect=1;
        break;
        case 11: // sys_execve
        break;
        case 12 : // sys_chdir
        	file =  (char *) regs[R_EBX];
        //if(file[0]!='@')
        //{
            size = strlen((char*) regs[R_EBX])+1;
            insert_sc_arg(0, regs[R_EBX], size, 0);
            //sys_need_redirect=1;
        //}else
        //arg1++;
        break;
        case 13 : // sys_time
        	insert_sc_arg(0, regs[R_EBX], 0, 0);
        	//sys_need_redirect=1;
        break;
        case 14 : // sys_mknod
        	size = strlen((char*) regs[R_EBX])+1;
        	insert_sc_arg(0, regs[R_EBX], size, 0);
        	insert_sc_arg(1, regs[R_ECX], 0, 0);
        	insert_sc_arg(2, regs[R_EDX], 0, 0);
        	//sys_need_redirect=1;
        break;
        case 15 : // sys_chmod
        break;
        case 16 : // sys_lchown16
        break;
        case 17 : // sys_ni_syscall
        break;
        case 18 : // sys_stat
        	file =  (char *) regs[R_EBX];
        //if(file[0]!='@')
        {
            size = strlen((char*) regs[R_EBX])+1;
            insert_sc_arg(0, regs[R_EBX], size, 0);
            insert_sc_arg(1, regs[R_ECX], 88, 1);
            //sys_need_redirect=1;
        }//else
        //arg1++;
        break;
        case 19 : // sys_lseek
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            insert_sc_arg(2, regs[R_EDX],  0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 20 : // sys_getpid
        //sys_need_redirect=1;
        break;
        case 21: // sys_mount
        break;
        case 22 : // sys_oldumount
        break;
        case 23 : // sys_setuid16
        break;
        case 24 : // sys_getuid16
        break;
        case 25 : // sys_stime
        break;
        case 26 : // sys_ptrace
        break;
        case 27 : // sys_alarm
        break;
        case 28 : // sys_fstat
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  88, 1);
            //sys_need_redirect=1;
        }
        break;
        case 29 : // sys_pause
        break;
        case 30 : // sys_utime
        break;
        case 31 : // sys_ni_syscall
        break;
        case 32 : // sys_ni_syscall
        break;
        case 33 : // sys_access
        	file =  (char *) regs[R_EBX];
        //if(file[0]!='@')
        {
            size = strlen((char*) regs[R_EBX])+1;
            insert_sc_arg(0, regs[R_EBX], size, 0);
            insert_sc_arg(1, regs[R_ECX], 0, 0);
            //sys_need_redirect=1;
        }//else
        //arg1++;
        break;
        case 34 : // sys_nice
        break;
        case 35 : // sys_ni_syscall
        break;
        case 36 : // sys_sync
        //sys_need_redirect=1;
        break;
        case 37 : // sys_kill
        	insert_sc_arg(0, regs[R_EBX], 0,0);
        	insert_sc_arg(1, regs[R_ECX], 0,0);
        	//sys_need_redirect = 1;
        break;
        case 38: // sys_rename
        	size = strlen((char *)regs[R_EBX])+1;
        	insert_sc_arg(0, regs[R_EBX],  size, 0);
        	size = strlen((char *)regs[R_ECX])+1;
        	insert_sc_arg(1, regs[R_ECX],  size, 0);
        	//sys_need_redirect = 1;
        break;
        case 39: // sys_mkdir
        	file = (char *) regs[R_EBX];
        	size = strlen((char *)regs[R_EBX])+1;
        //if(file[0]!='@')
        {
            insert_sc_arg(0, regs[R_EBX],  size, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            //sys_need_redirect=1;
        }//else
        //arg1++;
        break;
        case 40: // sys_rmdir
        	size = strlen((char *)regs[R_EBX])+1;
        	insert_sc_arg(0, regs[R_EBX], size, 0);
        	//sys_need_redirect=1;
        break;
        case 41: // sys_dup
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 42: // sys_pipe
        break;
        case 43 : // sys_times
        break;
        case 44 : // sys_ni_syscall
        break;
        case 45 : // sys_brk
        break;
        case 46 : // sys_setgid16
        break;
        case 47 : // sys_getgid16
        break;
        case 48 : // sys_signal
        break;
        case 49 : // sys_geteuid16
        break;
        case 50 : // sys_getegid16
        break;
        case 51 : // sys_acct
        break;
        case 52 : // sys_umount2
        break;
        case 53 : // sys_lock
        break;
        case 54 : // sys_ioctl
        //printf("Ioctl %d\n", regs[R_EBX]);
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            #define SIOCGIWNAME  0x8b01
            switch(regs[R_ECX])
            {
                case SIOCGIFFLAGS:
                case SIOCGIFHWADDR:
                case SIOCGIFMETRIC:
                case SIOCGIFMTU:
                case SIOCGIFMAP:
                case SIOCGIFTXQLEN:
                case SIOCGIFADDR:
                case SIOCGIFDSTADDR:
                case SIOCGIFBRDADDR:
                case SIOCGIFNETMASK:
                case SIOCGIWNAME:
                case SIOCSIFNAME:
                #ifdef DEBUG
                sprintf(str, "socket %x\n", regs[R_ECX]);
                syscallori(4,1, str, strlen(str)+1);
                #endif
                insert_sc_arg(2, regs[R_EDX],  32, 0);
                break;
                case SIOCGIFCONF:
                {
                    unsigned int * a = regs[R_EDX];
                    #ifdef DEBUG
                    sprintf(str, "socket %x %d %x\n", regs[R_ECX], a[0], a[1]);
                    syscallori(4,1, str, strlen(str)+1);
                    #endif
                    insert_sc_arg(2, regs[R_EDX],8,0);
                    insert_sc_arg(3, a[1],64,1);
                }
                break;
                #define BLKGETSIZE64 0x1272
                #define BLKSSZGET 0x1268
                #define BLKBSZGET 0x1270
                #define BLKIOMIN 0x1278
                #define BLKIOOPT 0x1279
                #define BLKALIGNOFF 0x127a
                #define BLKPBSZGET 0x127b
                case BLKGETSIZE64:
                	insert_sc_arg(2, regs[R_EDX],8,1);
                break;
                case BLKALIGNOFF:
                case BLKIOMIN:
                case BLKIOOPT:
                case BLKPBSZGET:
                case BLKSSZGET:
                	insert_sc_arg(2, regs[R_EDX],4,1);
                break;
                default:
                	insert_sc_arg(2, regs[R_EDX],  0, 0);
            }
            //sys_need_redirect=1;
        }
        break;
        case 55 : // sys_fcntl
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 56 : // sys_mpx
        break;
        case 57 : // sys_setpgid
        break;
        case 58 : // sys_ulimit
        break;
        case 59 : // sys_oldolduname
        break;
        case 60 : // sys_umask
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	//sys_need_redirect=1;
        break;
        case 61 : // sys_chroot
        break;
        case 62 : // sys_ustat
        break;
        case 63 : // sys_dup2
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            //sys_need_redirect=1;
        }
        
        break;
        case 64 : // sys_getppid
        	//sys_need_redirect=1;
        break;
        case 65 : // sys_getpgrp
        break;
        case 66 : // sys_setsid
        break;
        case 67 : // sys_sigaction
        break;
        case 68 : // sys_sgetmask
        break;
        case 69 : // sys_ssetmask
        break;
        case 70 : // sys_setreuid
        break;
        case 71 : // sys_setregid
        break;
        case 72 : // sys_sigsuspend
        break;
        case 73 : // sys_sigpending
        break;
        case 74 : // sys_sethostname
        break;
        case 75 : // sys_setrlimit
        break;
        case 76 : // sys_getrlimit
        	insert_sc_arg(0, regs[R_EBX], 0, 0);
        	insert_sc_arg(1, regs[R_ECX], 8, 1);
        	//sys_need_redirect=1;
        break;
        case 77 : // sys_getrusage
        break;
        case 78 : // sys_gettimeofday
        	insert_sc_arg(0, regs[R_EBX], 8, 1);
        	if(regs[R_ECX]!=0)
        		insert_sc_arg(1, regs[R_ECX], 8, 0);
        	else
        		insert_sc_arg(1, regs[R_ECX], 0, 0);
        //sys_need_redirect=1;
        break;
        case 79 : // sys_settimeofday
        
        break;
        case 80 : // sys_getgroups
        break;
        case 81 : // sys_setgroups
        break;
        case 82 : // sys_select
        break;
        case 83: //symlink
        	size = strlen((char*) regs[R_EBX])+1;
        	insert_sc_arg(0, regs[R_EBX], size, 0);
        	size = strlen((char*) regs[R_ECX])+1;
        	insert_sc_arg(1, regs[R_ECX], size, 0);
        	//sys_need_redirect=1;
        break;
        case 84 : // sys_oldlstat
        break;
        case 85 : // sys_readlink
        	file =  (char *) regs[R_EBX];
        //if(file[0]!='@')
        {
            size = strlen((char*) regs[R_EBX])+1;
            insert_sc_arg(0, regs[R_EBX], size, 0);
            insert_sc_arg(1, regs[R_ECX], regs[R_EDX] , 1);
            insert_sc_arg(2, regs[R_EDX],  0, 0);
            //sys_need_redirect=1;
        }//else
        //arg1++;
        break;
        
        case 86 : // sys_uselib
        break;
        case 87 : // sys_swapon
        break;
        case 88 : // sys_reboot
        break;
        case 89 : // sys_readdir
        break;
        case 90 : // sys_mmap
        break;
        case 91 : // sys_munmap
        break;
        case 92 : // sys_truncate
        break;
        case 93 : // sys_ftruncate
        break;
        case 94 : // sys_fchmod
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 95 : // sys_fchown
        break;
        case 96 : // sys_getpriority
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	insert_sc_arg(1, regs[R_ECX],  0, 0);
        	//sys_need_redirect=1;
        break;
        case 97 : // sys_setpriority
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	insert_sc_arg(1, regs[R_ECX],  0, 0);
        	insert_sc_arg(2, regs[R_EDX],  0, 0);
        	//sys_need_redirect=1;
        break;
        case 98 : // sys_profil
        break;
        case 99 : // sys_statfs
        break;
        case 100 : // sys_fstatfs
        break;
        case 101 : // sys_ioperm
        break;
        
        case 102 : // sys_socketcall
        #define SYS_SOCKET    1        /* sys_socket(2)        */
        #define SYS_BIND    2        /* sys_bind(2)            */
        #define SYS_CONNECT    3        /* sys_connect(2)        */
        #define SYS_LISTEN    4        /* sys_listen(2)        */
        #define SYS_ACCEPT    5        /* sys_accept(2)        */
        #define SYS_GETSOCKNAME    6        /* sys_getsockname(2)        */
        #define SYS_GETPEERNAME    7        /* sys_getpeername(2)        */
        #define SYS_SOCKETPAIR    8        /* sys_socketpair(2)        */
        #define SYS_SEND    9        /* sys_send(2)            */
        #define SYS_RECV    10        /* sys_recv(2)            */
        #define SYS_SENDTO    11        /* sys_sendto(2)        */
        #define SYS_RECVFROM    12        /* sys_recvfrom(2)        */
        #define SYS_SHUTDOWN    13        /* sys_shutdown(2)        */
        #define SYS_SETSOCKOPT    14        /* sys_setsockopt(2)        */
        #define SYS_GETSOCKOPT    15        /* sys_getsockopt(2)        */
        #define SYS_SENDMSG    16        /* sys_sendmsg(2)        */
        #define SYS_RECVMSG    17        /* sys_recvmsg(2)        */
        #define SYS_ACCEPT4    18        /* sys_accept4(2)        */
        {
            //sys_need_redirect=1;
            unsigned long * a =(unsigned long*) regs[R_ECX];
            switch(regs[R_EBX])
            {
                case SYS_SOCKET:
                insert_sc_arg(0, regs[R_EBX],  0, 0);
                insert_sc_arg(1, a[0],0, 0);
                insert_sc_arg(2, a[1],0, 0);
                insert_sc_arg(3, a[2],0, 0);
                break;
                case SYS_CONNECT:
                
                #ifdef DEBUG
                sprintf(str, "socketcall %s\n", a[1]+2);
                size = strlen(str) + 1;
                syscallori(4,1, str, size);
                #endif
                insert_sc_arg(0, regs[R_EBX],  0, 0);
                insert_sc_arg(1, a[0],0, 0);
                insert_sc_arg(2, a[1],2+(strlen(a[1]+2)+1), 0);
                insert_sc_arg(3, a[2],0, 0);
                break;
                case SYS_SEND:
                insert_sc_arg(0, regs[R_EBX],  0, 0);
                insert_sc_arg(1, a[0],0, 0);
                insert_sc_arg(2, a[1],a[2], 0);
                insert_sc_arg(3, a[2],0, 0);
                insert_sc_arg(4, a[3],0, 0);
                break;
                case SYS_GETSOCKNAME:
                insert_sc_arg(0, regs[R_EBX],  0, 0);
                insert_sc_arg(1, a[0],0, 0);
                insert_sc_arg(2, a[1],*(unsigned *)a[2],1);
                insert_sc_arg(3, a[2],4, 1);
                break;
                case SYS_RECVFROM:
                insert_sc_arg(0, regs[R_EBX],  0, 0);
                insert_sc_arg(1, a[0],0, 0);
                insert_sc_arg(2, a[1],a[2], 1);
                insert_sc_arg(3, a[2],0, 0);
                insert_sc_arg(4, a[3],0, 0);
                insert_sc_arg(5, a[4],*(int *)a[5], 1);
                insert_sc_arg(6, a[5], 4, 1);
                break;
                case SYS_SETSOCKOPT:
                insert_sc_arg(0, regs[R_EBX],  0, 0);
                insert_sc_arg(1, a[0],0, 0);
                insert_sc_arg(2, a[1],0, 0);
                insert_sc_arg(3, a[2],0, 0);
                insert_sc_arg(4, a[3],a[4], 0);
                insert_sc_arg(5, a[4],0, 0);
                break;
                case SYS_GETSOCKOPT:
                insert_sc_arg(0, regs[R_EBX],  0, 0);
                insert_sc_arg(1, a[0],0, 0);
                insert_sc_arg(2, a[1],0, 0);
                insert_sc_arg(3, a[2],0, 0);
                insert_sc_arg(4, a[3],*(int *)a[4], 1);
                insert_sc_arg(5, a[4], 4, 1);
                break;
                case SYS_SENDMSG:
                case SYS_RECVMSG:
                default:
				break;
                //sys_need_redirect=0;
            }
        }
        break;
        case 103 : // sys_syslog
        if(regs[R_EBX] == 0xa)  //get log buf size
        {
            
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            insert_sc_arg(2, regs[R_EDX],  0, 0);
            
        }else{
            size = regs[R_EDX];
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  size, 1);
            insert_sc_arg(2, regs[R_EDX],  0, 0); 
        }
        //sys_need_redirect=1;
        
        break;
        case 104 : // sys_setitimer
        break;
        case 105 : // sys_getitimer
        break;
        case 106 : // sys_stat
        break;
        case 107 : // sys_lstat
        break;
        case 108 : // sys_fstat
        break;
        case 109 : // sys_olduname
        break;
        case 110 : // sys_iopl
        break;
        case 111 : // sys_vhangup
        break;
        case 112 : // sys_idle
        break;
        case 113 : // sys_vm86old
        break;
        case 114 : // sys_wait4
        break;
        case 116 : // sys_sysinfo
        break;
        case 117 : // sys_ipc
        break;
        // call first second third ptr fifth
        //-&gt;EBX  ECX  EDX   ESI   EDI  EBP
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	insert_sc_arg(1, regs[R_ECX],  0, 0);
        	insert_sc_arg(2, regs[R_EDX],  0, 0);
        	insert_sc_arg(3, regs[R_ESI],  0, 0);
        	insert_sc_arg(4, regs[R_EDI],  0, 0);
        	insert_sc_arg(5, regs[R_EBP],  0, 0);
        break;
        case 118 : // sys_fsync
        break;
        case 119 : // sys_sigreturn
        break;
        case 120 : // sys_clone
        break;
        case 121 : // sys_setdomainname
        break;
        case 122 : // sys_uname
        	insert_sc_arg(0, regs[R_EBX],  390, 1);
        	//sys_need_redirect=1;
        break;
        case 123 : // sys_modify_ldt
        break;
        case 124 : // sys_adjtimex
        break;
        case 125 : // sys_mprotect
        break;
        case 126 : // sys_sigprocmask
        break;
        case 127 : // sys_create_module
        break;
        case 128 : // sys_init_module
        	size = regs[R_ECX];
        	#ifdef DEBUG
        	sprintf(str, "init module %x %x\n", size , regs[R_EBX]);
        	syscallori(4,1, str, strlen(str)+1);
        	#endif
        	insert_sc_arg(0, regs[R_EBX], size, 0);
        	insert_sc_arg(1, regs[R_ECX], 0, 0);
        	insert_sc_arg(2, regs[R_EDX], 0, 0);
        	//sys_need_redirect = 1;
        break;
        case 129 : // sys_delete_module
        	size = strlen(regs[R_EBX])+1;
        	insert_sc_arg(0, regs[R_EBX], size, 0);
        	insert_sc_arg(1, regs[R_ECX], 0, 0);
        	//sys_need_redirect = 1;
        break;
        case 130 : // sys_get_kernel_syms
        break;
        case 131 : /// sys_quotactl
        break;
        case 132 : // sys_getpgid
        break;
        case 133 : // sys_fchdir
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 134 : // sys_bdflush
        break;
        case 135 : // sys_sysfs
        break;
        case 136 : // sys_personality
        break;
        case 137 : // sys_afs_syscall
        break;
        case 138 : // sys_setfsuid
        break;
        case 139 : // sys_setfsgid
        break;
        case 140: //sys_llseek
        //if(regs[R_EBX]&0x1000)
        {    
            #ifdef DEBUG
            sprintf(str, "%x %x %x %x %x\n", arg1,arg2,arg3,arg4,arg5);
            syscallori(4,1, str, strlen(str)+1);
            #endif
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            insert_sc_arg(2, regs[R_EDX],  0, 0);
            insert_sc_arg(3, regs[R_ESI],  8, 1);
            insert_sc_arg(4, regs[R_EDI],  0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 141 : // sys_getdents
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            size = regs[R_EDX];
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  size, 1);
            insert_sc_arg(2, regs[R_EDX],  0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 142 : // sys_select
        break;
        case 143:  // sys_flock
        break;
        case 144:  //sys_msync
        break;
        case 145: //sys_readv
        break;
        case 146: //sys_writev
        break;
        case 147 : // sys_getsid
        break;
        case 148 : // sys_fdatasync
        //if(regs[R_EBX]&0x1000)
        {
            insert_sc_arg(0, regs[R_EBX] &0xfff,  0, 0);
            //sys_need_redirect=1;
        }
        
        break;
        case 149 : // sys_sysctl
        break;
        case 150 : // sys_mlock
        break;
        case 151 : // sys_munlock
        break;
        case 152 : // sys_mlockall
        break;
        case 153 : // sys_munlockall
        break;
        case 154 : // sys_sched_setparam
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	insert_sc_arg(1, regs[R_ECX],  4, 0);
        	//sys_need_redirect=1;
        break;
        case 155 : // sys_sched_getparam
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	insert_sc_arg(1, regs[R_ECX],  4, 1);
        	//sys_need_redirect=1;
        break;
        case 156 : // sys_sched_setscheduler
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	insert_sc_arg(1, regs[R_ECX],  0, 0);
        	insert_sc_arg(2, regs[R_EDX],  4, 0);
        	//sys_need_redirect=1;
        break;
        case 157 : // sys_sched_getscheduler
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	//sys_need_redirect=1;
        break;
        case 158 : // sys_sched_yield
        break;
        case 159 : // sys_sched_get_priority_max
        break;
        case 160 : // sys_sched_get_priority_min
        break;
        case 161 : // sys_sched_rr_get_interval
        break;
        case 162 : // sys_nanosleep
        break;
        case 163 : // sys_mremap
        break;
        case 164 : // sys_setresuid
        break;
        case 165 : // sys_getresuid
        break;
        case 166 : // sys_vm86
        break;
        case 167 : // sys_query_module
        break;
        case 168:  //poll
        {
            int *a = regs[R_EBX];
            //a[0] = a[0] &0xfff;
            insert_sc_arg(0, regs[R_EBX] ,  8, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            insert_sc_arg(2, regs[R_EDX],  0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 169 : // sys_nfsservctl
        break;
        case 170 : // sys_setresgid
        break;
        case 171 : // sys_getresgid
        break;
        case 172 : // sys_prctl
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	insert_sc_arg(1, regs[R_ECX],  0, 0);
        	insert_sc_arg(2, regs[R_EDX],  0, 0);
        	insert_sc_arg(3, regs[R_ESI],  0, 0);
        	insert_sc_arg(4, regs[R_EDI],  0, 0);
        	//sys_need_redirect=1;
        break;
        case 173 : // sys_rt_sigreturn
        break;
        case 174 : // sys_rt_sigaction
        break;
        case 175 : // sys_rt_sigprocmask
        break;
        case 176 : // sys_rt_sigpending
        break;
        case 177 : // sys_rt_sigtimedwait
        break;
        case 178 : // sys_rt_sigqueueinfo
        break;
        case 179 : // sys_rt_sigsuspend
        break;
        case 180 : // sys_pread64
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            size = regs[R_EDX];
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  size, 1);
            insert_sc_arg(2, regs[R_EDX],  0, 0);
            insert_sc_arg(3, regs[R_ESI],  0, 0);
            insert_sc_arg(4, regs[R_EDI],  0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 181 : // sys_pwrite64
        break;
        case 182 : // sys_chown
        	size = regs[R_ECX];
        	insert_sc_arg(0, regs[R_EBX],  size, 1);
        	insert_sc_arg(1, regs[R_ECX],  0, 0);
        	//sys_need_redirect=1;
        break;
        case 183: //getcwd
        	size = regs[R_ECX];
        	insert_sc_arg(0, regs[R_EBX],  size, 1);
        	insert_sc_arg(1, regs[R_ECX],  0, 0);
        	//sys_need_redirect=1;
        break;
        case 184 : // sys_capget
        	insert_sc_arg(0, regs[R_EBX], 8, 1);
        	insert_sc_arg(1, regs[R_ECX], 0,0);
        	insert_sc_arg(2,regs[R_EDX], 0,0);
        	//sys_need_redirect=1;
        break;
        case 185 : // sys_capset
        break;
        case 186 : // sys_sigaltstack
        break;
        case 187 : // sys_sendfile
        break;
        case 188 : // sys_getpmsg
        break;
        case 189 : // sys_putpmsg
        break;
        case 190 : // sys_vfork
        break;
        case 191 : // sys_getrlimit
        
        break;
        case 192 : // sys_mmap2
        //if(regs[R_EDI]!=-1 &&(regs[R_EDI]&0x1000))
        {//TODO:
#if 0
			int res = syscallori(syscall_op, arg1,arg2,PROT_READ|PROT_WRITE,MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
            #ifdef DEBUG
            sprintf(str, "mmap is %x %x\n", res, arg2);
            syscallori(4,1, str, strlen(str)+1);
            #endif
            sc_init(0x3);
            size = regs[R_ECX];
            insert_sc_arg(0, regs[R_EDI],  0, 0);
            insert_sc_arg(1, res, size, 1);
            insert_sc_arg(2, size,  0, 0);
            //sys_need_redirect=1;
            dispatch_sc();
            return res;
#endif
        }
        break;
        case 193 : // sys_truncate64
        break;
        case 194 : // sys_ftruncate64
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 195 : // sys_stat64
        	file =  (char *) regs[R_EBX];
        	size = strlen((char*) regs[R_EBX]);
        	#ifdef DEBUG
        	sprintf(str, "stat64 file %s\n", regs[R_EBX]);
        	syscallori(4,1, str, strlen(str)+1);
        	#endif
        //if(file[0]!='@')
        {
            size = strlen((char*) regs[R_EBX])+1;
            insert_sc_arg(0, regs[R_EBX],  size, 0);
            insert_sc_arg(1, regs[R_ECX],  96, 1);
            //sys_need_redirect=1;
        }//else
        //arg1++;
        break;
        case 196 : // sys_lstat64
        file =  (char *) regs[R_EBX];
        //if(file[0]!='@')
        {
            size = strlen((char*) regs[R_EBX])+1;
            insert_sc_arg(0, regs[R_EBX],  size, 0);
            insert_sc_arg(1, regs[R_ECX],  96, 1);
            //sys_need_redirect=1;
        }//else
        //arg1++;
        break;
        case 197 : // sys_fstat64
        //printf("file is %d\n", regs[R_EBX]);
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  96, 1);
            //sys_need_redirect=1;
        }
        break;
        case 198 : // sys_lchown32
        break;
        case 199 : // sys_getuid32
        //sys_need_redirect=1;
        break;
        case 200 : // sys_getgid32
        //sys_need_redirect=1;
        break;
        case 201 : // sys_geteuid32
        //sys_need_redirect=1;
        
        break;
        case 202 : // sys_getegid32
        break;
        case 203 : // sys_setreuid32
        break;
        case 204 : // sys_setregid32
        break;
        case 205 : // sys_getgroups32
        break;
        case 206 : // sys_setgroups32
        break;
        case 207 : // sys_fchown32
        break;
        case 208 : // sys_setresuid32
        break;
        case 209 : // sys_getresuid32
        break;
        case 210 : // sys_setresgid32
        break;
        case 211 : // sys_getresgid32
        break;
        case 212 : // sys_chown32
        break;
        case 213 : // sys_setuid32
        break;
        case 214 : // sys_setgid32
        break;
        case 215 : // sys_setfsuid32
        break;
        case 216 : // sys_setfsgid32
        break;
        case 217 : // sys_pivot_root
        break;
        case 218 : // sys_mincore
        break;
        case 219 : // sys_madvise
        break;
        case 220 : // sys_getdents64
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            size = regs[R_EDX];
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  size, 1);
            insert_sc_arg(2, regs[R_EDX],  0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 221 : // sys_fcntl64
        //if(regs[R_EBX]&0x1000)
        {//TODO
            
            #ifdef DEBUG
            sprintf(str, "fcntl64 %x %x %x %x %x\n", arg1,arg2,arg3,arg4,arg5);
            syscallori(4,1, str, strlen(str)+1);
            #endif
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            if(regs[R_ECX] == F_GETLK)                      //struct flock64
            	insert_sc_arg(2, regs[R_EDX],  24, 1);
            else if(regs[R_ECX] == F_SETLK || regs[R_ECX] == F_SETLKW)
            	insert_sc_arg(2, regs[R_EDX],  24, 0);
            else if(regs[R_ECX]==F_SETFL)
            //    return 0;
            insert_sc_arg(2, regs[R_EDX] &(~0x4000),0, 0);
            // insert_sc_arg(2, 1,0, 0);
            else
            	insert_sc_arg(2, regs[R_EDX],0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 224 : // sys_gettid
        break;
        case 225 : // sys_readahead
        break;
        case 226 : // sys_setxattr
        break;
        case 227 : // sys_lsetxattr
        break;
        case 228 : // sys_fsetxattr
        break;
        case 229 : // sys_getxattr
        	size = strlen((char*) regs[R_EBX])+1;
        	insert_sc_arg(0, regs[R_EBX], size, 0);
        	size = strlen((char*) regs[R_ECX])+1;
        	insert_sc_arg(1, regs[R_ECX],  size, 0);
        	size = regs[R_ESI];
        	insert_sc_arg(2, regs[R_EDX],  size, 1);
        	insert_sc_arg(3, regs[R_ESI],  0, 0);
        	//sys_need_redirect=1;
        break;
        case 230 : // sys_lgetxattr
        	size = strlen((char*) regs[R_EBX])+1;
        	insert_sc_arg(0, regs[R_EBX], size, 0);
        	size = strlen((char*) regs[R_ECX])+1;
        	insert_sc_arg(1, regs[R_ECX],  size, 0);
        	size = regs[R_ESI];
        	insert_sc_arg(2, regs[R_EDX],  size, 1);
        	insert_sc_arg(3, regs[R_ESI],  0, 0);
        	//sys_need_redirect=1;
        break;
        case 231 : // sys_fgetxattr
        //if(regs[R_EBX]&0x1000)
        {
            insert_sc_arg(0, regs[R_EBX], 0, 0);
            size = strlen((char*) regs[R_ECX])+1;
            insert_sc_arg(1, regs[R_ECX],  size, 0);
            size = regs[R_ESI];
            insert_sc_arg(2, regs[R_EDX],  size, 1);
            insert_sc_arg(3, regs[R_ESI],  0, 0);
            //sys_need_redirect=1;
        }
        break;
        break;
        case 232 : // sys_listxattr
        break;
        case 233 : // sys_llistxattr
        break;
        case 234 : // sys_flistxattr
        break;
        case 235 : // sys_removexattr
        break;
        case 236 : // sys_lremovexattr
        break;
        case 237 : // sys_fremovexattr
        break;
        case 238 : // sys_tkill
        break;
        case 239 : // sys_sendfile64
        break;
        case 240 : // sys_futex
        break;
        case 241 : // sys_sched_setaffinity( pid_t pid, const struct cpumask*)
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	insert_sc_arg(1, regs[R_ECX],  4, 0);
        	//sys_need_redirect=1;
        break;
        case 242 : // sys_sched_getaffinity(pid_t pid, unsigned int len, unsigned long * user_mask_str)
        	size =  regs[R_ECX];
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	insert_sc_arg(1, regs[R_ECX],  0, 0);
        	insert_sc_arg(2, regs[R_EDX],  size, 0);
        	//sys_need_redirect=1;
        break;
        case 243 : // sys_set_thread_area
        break;
        case 244 : // sys_get_thread_area
        break;
        case 245 : // sys_io_setup
        break;
        case 246 : // sys_io_destroy
        break;
        case 247 : // sys_io_getevents
        break;
        case 248 : // sys_io_submit
        break;
        case 249 : // sys_io_cancel
        break;
        case 250 : // sys_fadvise64
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            insert_sc_arg(2, regs[R_EDX],  0, 0);
            insert_sc_arg(3, regs[R_ESI],  0, 0);
            insert_sc_arg(4, regs[R_EDI],  0, 0);
            insert_sc_arg(5, regs[R_EBP],  0, 0);
            //sys_need_redirect=1;
        }
        break;
        case 252 : // sys_exit_group
        break;
        case 253 : // sys_lookup_dcookie
        break;
        case 254 : // sys_epoll_create
        break;
        case 255 : // sys_epoll_ctl
        break;
        case 256 : // sys_epoll_wait
        break;
        case 257 : // sys_remap_file_pages
        break;
        case 258 : // sys_set_tid_address
        break;
        case 259 : // sys_timer_create
        break;
        case 260: //sys_set_time
        break;
        case 261: //sys_get_time
        break;
        case 262: //sys_getoverrun
        break;
        case 263: //sys_delete
        break;
        case 264: //sys_set_time
        break;
        case 265: //clock_get_time
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	insert_sc_arg(1, regs[R_ECX],  8, 1);
        	//sys_need_redirect=1;
        break;
        case 268:  //statfs64
        	file =  (char *) regs[R_EBX];
        //if(file[0]!='@')
        //{
            size = strlen((char *)regs[R_EBX])+1;
            insert_sc_arg(0, regs[R_EBX],  size, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            insert_sc_arg(2, regs[R_EDX],  regs[R_ECX], 1);
            //sys_need_redirect=1;
        //}//else
        //arg1++;
        break;
        case 269:  //fstatfs64
        //if(regs[R_EBX]&0x1000)
        //{
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  0, 0);
            insert_sc_arg(2, regs[R_EDX],  regs[R_ECX], 1);
            //sys_need_redirect=1;
       // }  
        break;
        case 295:    //openat
        file =  (char *) regs[R_ECX];
        //if(file[0]!='@')
        //{
            size = strlen((char *)regs[R_ECX])+1;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  size, 0);
            insert_sc_arg(2, regs[R_EDX],  0, 0);
            insert_sc_arg(3, regs[R_ESI],  0, 0);
            //sys_need_redirect=1;
        //}//else
        //arg2++;
        break;
        case 296: //mkdirat
        break;
        case 297: //mknodat
        break;
        case 298:  //fchownat
        	size = strlen((char *)regs[R_ECX])+1;
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	insert_sc_arg(1, regs[R_ECX],  size, 0);
        	insert_sc_arg(2, regs[R_EDX],  0, 0);
        	insert_sc_arg(3, regs[R_ESI],  0, 0);
        	insert_sc_arg(4, regs[R_EDI],  0, 0);
        	//sys_need_redirect=1;
        break;
        case 299: //futimesat
        break;
        case 301: //unlinkat
        	file =  (char *) regs[R_ECX];
        //if(file[0]!='@')
        //{
            size = strlen((char *)regs[R_ECX])+1;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  size, 0);
            insert_sc_arg(2, regs[R_EDX],  0, 0);
            //sys_need_redirect=1;
        //}//else
        //arg2++;
        break;
        case 302:   //renameat
        	size = strlen((char *)regs[R_ECX])+1;
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	insert_sc_arg(1, regs[R_ECX],  size, 0);
        	insert_sc_arg(2, regs[R_EDX],  0, 0);
        	size = strlen((char *)regs[R_ESI])+1;
        	insert_sc_arg(3, regs[R_ESI],  size, 0);
        	//sys_need_redirect=1;
        break;
        case 300: //fstatatfs64
        	file =  (char *) regs[R_ECX];
        //if(file[0]!='@')
        //{
            size = strlen((char *)regs[R_ECX])+1;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            insert_sc_arg(1, regs[R_ECX],  size, 0);
            insert_sc_arg(2, regs[R_EDX],  96, 1);
            insert_sc_arg(3, regs[R_ESI],  0, 0);
            //sys_need_redirect=1;
        //}//else
        //arg2++;
        break;
        case 303: //linkat
        break;
        case 304: //symlinkat
        break;
        case 305: //readlinkat
        break;
        case 306: //fchmodat
        	size = strlen((char *)regs[R_ECX])+1;
        	insert_sc_arg(0, regs[R_EBX],  0, 0);
        	insert_sc_arg(1, regs[R_ECX],  size, 0);
        	insert_sc_arg(2, regs[R_EDX],  0,0);
        	//sys_need_redirect=1;
        break;
        case 307:  //faccessat
        break;
        case 308:  //pselectat
        break;
        case 311: //set_robust_list
        break;
        case 312: //set_robust_list
        break;
        case 320: //utimesat
        //if(regs[R_EBX]&0x1000)
        {
            //regs[R_EBX] &=0xfff;
            insert_sc_arg(0, regs[R_EBX],  0, 0);
            if(regs[R_ECX]==0)
            	insert_sc_arg(1, regs[R_ECX],  0, 0);
            else
            	insert_sc_arg(1, regs[R_ECX],  strlen(regs[R_ECX])+1, 0);
            if(regs[R_ECX]==0)
            	insert_sc_arg(2, regs[R_EDX],  0,0);
            else
            	insert_sc_arg(2, regs[R_EDX],  16,0);
            	insert_sc_arg(3, regs[R_ESI],  0,0);
            //sys_need_redirect=1;
        }
        break;
        default:
        break;
	}  //switch
	
	return dispatch_sc();
}
