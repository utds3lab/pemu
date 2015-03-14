(1) Process Information for guest OS:
(1.1) Compile and run task-info/task-info.c in the guest OS
(1.2) Copy the output to the ./target-i386/PEMU/linux.c
 {
	0xC1731F60, /* task struct root */
	432, /* offset of task_struct list */
	460, /* offset of mm */
	40, /* offset of pgd in mm */
	732, /* offset of comm */
};
Note: the new process detection approach listed in the paper is not that stable.
Instead, we use some process information to help new process detection.

(2) Compile PEMU:
sudo apt-get build-dep qemu
cd pemu && mkdir build && cd build
../myconfig && make install

(3) Compile PIN plugins
cd pemu/plugins && make

(4) Run testcases:
(4.1) Launch PEMU:
	cd pemu/build/bin && ./qemu-system-i386 -m 512 image -monitor stdio
(4.2) Specify PIN plugin and target program (eg. ls):
	(QEMU) pemu ls strace.so
(4.3) Run target program in guest OS (eg. ls):
	guestos:~$ ls
