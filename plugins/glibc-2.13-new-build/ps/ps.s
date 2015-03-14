
./ps:     file format elf64-x86-64


Disassembly of section .init:

00000000004014a8 <.init>:
  4014a8:	48 83 ec 08          	sub    $0x8,%rsp
  4014ac:	e8 ef 0a 00 00       	callq  401fa0 <readtask@plt+0x6d0>
  4014b1:	e8 7a 0b 00 00       	callq  402030 <readtask@plt+0x760>
  4014b6:	e8 e5 89 00 00       	callq  409ea0 <readtask@plt+0x85d0>
  4014bb:	48 83 c4 08          	add    $0x8,%rsp
  4014bf:	c3                   	retq   

Disassembly of section .plt:

00000000004014c0 <getenv@plt-0x10>:
  4014c0:	ff 35 2a 2b 21 00    	pushq  0x212b2a(%rip)        # 613ff0 <readtask@plt+0x212720>
  4014c6:	ff 25 2c 2b 21 00    	jmpq   *0x212b2c(%rip)        # 613ff8 <readtask@plt+0x212728>
  4014cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004014d0 <getenv@plt>:
  4014d0:	ff 25 2a 2b 21 00    	jmpq   *0x212b2a(%rip)        # 614000 <readtask@plt+0x212730>
  4014d6:	68 00 00 00 00       	pushq  $0x0
  4014db:	e9 e0 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004014e0 <__snprintf_chk@plt>:
  4014e0:	ff 25 22 2b 21 00    	jmpq   *0x212b22(%rip)        # 614008 <readtask@plt+0x212738>
  4014e6:	68 01 00 00 00       	pushq  $0x1
  4014eb:	e9 d0 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004014f0 <free@plt>:
  4014f0:	ff 25 1a 2b 21 00    	jmpq   *0x212b1a(%rip)        # 614010 <readtask@plt+0x212740>
  4014f6:	68 02 00 00 00       	pushq  $0x2
  4014fb:	e9 c0 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401500 <strcasecmp@plt>:
  401500:	ff 25 12 2b 21 00    	jmpq   *0x212b12(%rip)        # 614018 <readtask@plt+0x212748>
  401506:	68 03 00 00 00       	pushq  $0x3
  40150b:	e9 b0 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401510 <localtime@plt>:
  401510:	ff 25 0a 2b 21 00    	jmpq   *0x212b0a(%rip)        # 614020 <readtask@plt+0x212750>
  401516:	68 04 00 00 00       	pushq  $0x4
  40151b:	e9 a0 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401520 <strncpy@plt>:
  401520:	ff 25 02 2b 21 00    	jmpq   *0x212b02(%rip)        # 614028 <readtask@plt+0x212758>
  401526:	68 05 00 00 00       	pushq  $0x5
  40152b:	e9 90 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401530 <strncmp@plt>:
  401530:	ff 25 fa 2a 21 00    	jmpq   *0x212afa(%rip)        # 614030 <readtask@plt+0x212760>
  401536:	68 06 00 00 00       	pushq  $0x6
  40153b:	e9 80 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401540 <_exit@plt>:
  401540:	ff 25 f2 2a 21 00    	jmpq   *0x212af2(%rip)        # 614038 <readtask@plt+0x212768>
  401546:	68 07 00 00 00       	pushq  $0x7
  40154b:	e9 70 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401550 <strcpy@plt>:
  401550:	ff 25 ea 2a 21 00    	jmpq   *0x212aea(%rip)        # 614040 <readtask@plt+0x212770>
  401556:	68 08 00 00 00       	pushq  $0x8
  40155b:	e9 60 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401560 <puts@plt>:
  401560:	ff 25 e2 2a 21 00    	jmpq   *0x212ae2(%rip)        # 614048 <readtask@plt+0x212778>
  401566:	68 09 00 00 00       	pushq  $0x9
  40156b:	e9 50 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401570 <qsort@plt>:
  401570:	ff 25 da 2a 21 00    	jmpq   *0x212ada(%rip)        # 614050 <readtask@plt+0x212780>
  401576:	68 0a 00 00 00       	pushq  $0xa
  40157b:	e9 40 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401580 <isatty@plt>:
  401580:	ff 25 d2 2a 21 00    	jmpq   *0x212ad2(%rip)        # 614058 <readtask@plt+0x212788>
  401586:	68 0b 00 00 00       	pushq  $0xb
  40158b:	e9 30 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401590 <sigaction@plt>:
  401590:	ff 25 ca 2a 21 00    	jmpq   *0x212aca(%rip)        # 614060 <readtask@plt+0x212790>
  401596:	68 0c 00 00 00       	pushq  $0xc
  40159b:	e9 20 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004015a0 <readproc@plt>:
  4015a0:	ff 25 c2 2a 21 00    	jmpq   *0x212ac2(%rip)        # 614068 <readtask@plt+0x212798>
  4015a6:	68 0d 00 00 00       	pushq  $0xd
  4015ab:	e9 10 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004015b0 <readproctab2@plt>:
  4015b0:	ff 25 ba 2a 21 00    	jmpq   *0x212aba(%rip)        # 614070 <readtask@plt+0x2127a0>
  4015b6:	68 0e 00 00 00       	pushq  $0xe
  4015bb:	e9 00 ff ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004015c0 <ctime@plt>:
  4015c0:	ff 25 b2 2a 21 00    	jmpq   *0x212ab2(%rip)        # 614078 <readtask@plt+0x2127a8>
  4015c6:	68 0f 00 00 00       	pushq  $0xf
  4015cb:	e9 f0 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004015d0 <escape_command@plt>:
  4015d0:	ff 25 aa 2a 21 00    	jmpq   *0x212aaa(%rip)        # 614080 <readtask@plt+0x2127b0>
  4015d6:	68 10 00 00 00       	pushq  $0x10
  4015db:	e9 e0 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004015e0 <strlen@plt>:
  4015e0:	ff 25 a2 2a 21 00    	jmpq   *0x212aa2(%rip)        # 614088 <readtask@plt+0x2127b8>
  4015e6:	68 11 00 00 00       	pushq  $0x11
  4015eb:	e9 d0 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004015f0 <__stack_chk_fail@plt>:
  4015f0:	ff 25 9a 2a 21 00    	jmpq   *0x212a9a(%rip)        # 614090 <readtask@plt+0x2127c0>
  4015f6:	68 12 00 00 00       	pushq  $0x12
  4015fb:	e9 c0 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401600 <open_psdb@plt>:
  401600:	ff 25 92 2a 21 00    	jmpq   *0x212a92(%rip)        # 614098 <readtask@plt+0x2127c8>
  401606:	68 13 00 00 00       	pushq  $0x13
  40160b:	e9 b0 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401610 <mmap@plt>:
  401610:	ff 25 8a 2a 21 00    	jmpq   *0x212a8a(%rip)        # 6140a0 <readtask@plt+0x2127d0>
  401616:	68 14 00 00 00       	pushq  $0x14
  40161b:	e9 a0 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401620 <strchr@plt>:
  401620:	ff 25 82 2a 21 00    	jmpq   *0x212a82(%rip)        # 6140a8 <readtask@plt+0x2127d8>
  401626:	68 15 00 00 00       	pushq  $0x15
  40162b:	e9 90 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401630 <snprintf@plt>:
  401630:	ff 25 7a 2a 21 00    	jmpq   *0x212a7a(%rip)        # 6140b0 <readtask@plt+0x2127e0>
  401636:	68 16 00 00 00       	pushq  $0x16
  40163b:	e9 80 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401640 <lookup_wchan@plt>:
  401640:	ff 25 72 2a 21 00    	jmpq   *0x212a72(%rip)        # 6140b8 <readtask@plt+0x2127e8>
  401646:	68 17 00 00 00       	pushq  $0x17
  40164b:	e9 70 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401650 <geteuid@plt>:
  401650:	ff 25 6a 2a 21 00    	jmpq   *0x212a6a(%rip)        # 6140c0 <readtask@plt+0x2127f0>
  401656:	68 18 00 00 00       	pushq  $0x18
  40165b:	e9 60 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401660 <ioctl@plt>:
  401660:	ff 25 62 2a 21 00    	jmpq   *0x212a62(%rip)        # 6140c8 <readtask@plt+0x2127f8>
  401666:	68 19 00 00 00       	pushq  $0x19
  40166b:	e9 50 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401670 <get_pid_digits@plt>:
  401670:	ff 25 5a 2a 21 00    	jmpq   *0x212a5a(%rip)        # 6140d0 <readtask@plt+0x212800>
  401676:	68 1a 00 00 00       	pushq  $0x1a
  40167b:	e9 40 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401680 <close@plt>:
  401680:	ff 25 52 2a 21 00    	jmpq   *0x212a52(%rip)        # 6140d8 <readtask@plt+0x212808>
  401686:	68 1b 00 00 00       	pushq  $0x1b
  40168b:	e9 30 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401690 <strspn@plt>:
  401690:	ff 25 4a 2a 21 00    	jmpq   *0x212a4a(%rip)        # 6140e0 <readtask@plt+0x212810>
  401696:	68 1c 00 00 00       	pushq  $0x1c
  40169b:	e9 20 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004016a0 <__strdup@plt>:
  4016a0:	ff 25 42 2a 21 00    	jmpq   *0x212a42(%rip)        # 6140e8 <readtask@plt+0x212818>
  4016a6:	68 1d 00 00 00       	pushq  $0x1d
  4016ab:	e9 10 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004016b0 <read@plt>:
  4016b0:	ff 25 3a 2a 21 00    	jmpq   *0x212a3a(%rip)        # 6140f0 <readtask@plt+0x212820>
  4016b6:	68 1e 00 00 00       	pushq  $0x1e
  4016bb:	e9 00 fe ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004016c0 <__libc_start_main@plt>:
  4016c0:	ff 25 32 2a 21 00    	jmpq   *0x212a32(%rip)        # 6140f8 <readtask@plt+0x212828>
  4016c6:	68 1f 00 00 00       	pushq  $0x1f
  4016cb:	e9 f0 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004016d0 <strcmp@plt>:
  4016d0:	ff 25 2a 2a 21 00    	jmpq   *0x212a2a(%rip)        # 614100 <readtask@plt+0x212830>
  4016d6:	68 20 00 00 00       	pushq  $0x20
  4016db:	e9 e0 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004016e0 <getpwnam@plt>:
  4016e0:	ff 25 22 2a 21 00    	jmpq   *0x212a22(%rip)        # 614108 <readtask@plt+0x212838>
  4016e6:	68 21 00 00 00       	pushq  $0x21
  4016eb:	e9 d0 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004016f0 <strtol@plt>:
  4016f0:	ff 25 1a 2a 21 00    	jmpq   *0x212a1a(%rip)        # 614110 <readtask@plt+0x212840>
  4016f6:	68 22 00 00 00       	pushq  $0x22
  4016fb:	e9 c0 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401700 <display_version@plt>:
  401700:	ff 25 12 2a 21 00    	jmpq   *0x212a12(%rip)        # 614118 <readtask@plt+0x212848>
  401706:	68 23 00 00 00       	pushq  $0x23
  40170b:	e9 b0 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401710 <sigfillset@plt>:
  401710:	ff 25 0a 2a 21 00    	jmpq   *0x212a0a(%rip)        # 614120 <readtask@plt+0x212850>
  401716:	68 24 00 00 00       	pushq  $0x24
  40171b:	e9 a0 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401720 <memcpy@plt>:
  401720:	ff 25 02 2a 21 00    	jmpq   *0x212a02(%rip)        # 614128 <readtask@plt+0x212858>
  401726:	68 25 00 00 00       	pushq  $0x25
  40172b:	e9 90 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401730 <getgrnam@plt>:
  401730:	ff 25 fa 29 21 00    	jmpq   *0x2129fa(%rip)        # 614130 <readtask@plt+0x212860>
  401736:	68 26 00 00 00       	pushq  $0x26
  40173b:	e9 80 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401740 <meminfo@plt>:
  401740:	ff 25 f2 29 21 00    	jmpq   *0x2129f2(%rip)        # 614138 <readtask@plt+0x212868>
  401746:	68 27 00 00 00       	pushq  $0x27
  40174b:	e9 70 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401750 <openproc@plt>:
  401750:	ff 25 ea 29 21 00    	jmpq   *0x2129ea(%rip)        # 614140 <readtask@plt+0x212870>
  401756:	68 28 00 00 00       	pushq  $0x28
  40175b:	e9 60 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401760 <time@plt>:
  401760:	ff 25 e2 29 21 00    	jmpq   *0x2129e2(%rip)        # 614148 <readtask@plt+0x212878>
  401766:	68 29 00 00 00       	pushq  $0x29
  40176b:	e9 50 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401770 <uptime@plt>:
  401770:	ff 25 da 29 21 00    	jmpq   *0x2129da(%rip)        # 614150 <readtask@plt+0x212880>
  401776:	68 2a 00 00 00       	pushq  $0x2a
  40177b:	e9 40 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401780 <closeproc@plt>:
  401780:	ff 25 d2 29 21 00    	jmpq   *0x2129d2(%rip)        # 614158 <readtask@plt+0x212888>
  401786:	68 2b 00 00 00       	pushq  $0x2b
  40178b:	e9 30 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401790 <__xstat@plt>:
  401790:	ff 25 ca 29 21 00    	jmpq   *0x2129ca(%rip)        # 614160 <readtask@plt+0x212890>
  401796:	68 2c 00 00 00       	pushq  $0x2c
  40179b:	e9 20 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004017a0 <escape_strlist@plt>:
  4017a0:	ff 25 c2 29 21 00    	jmpq   *0x2129c2(%rip)        # 614168 <readtask@plt+0x212898>
  4017a6:	68 2d 00 00 00       	pushq  $0x2d
  4017ab:	e9 10 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004017b0 <look_up_our_self@plt>:
  4017b0:	ff 25 ba 29 21 00    	jmpq   *0x2129ba(%rip)        # 614170 <readtask@plt+0x2128a0>
  4017b6:	68 2e 00 00 00       	pushq  $0x2e
  4017bb:	e9 00 fd ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004017c0 <malloc@plt>:
  4017c0:	ff 25 b2 29 21 00    	jmpq   *0x2129b2(%rip)        # 614178 <readtask@plt+0x2128a8>
  4017c6:	68 2f 00 00 00       	pushq  $0x2f
  4017cb:	e9 f0 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004017d0 <signal_number_to_name@plt>:
  4017d0:	ff 25 aa 29 21 00    	jmpq   *0x2129aa(%rip)        # 614180 <readtask@plt+0x2128b0>
  4017d6:	68 30 00 00 00       	pushq  $0x30
  4017db:	e9 e0 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004017e0 <strpbrk@plt>:
  4017e0:	ff 25 a2 29 21 00    	jmpq   *0x2129a2(%rip)        # 614188 <readtask@plt+0x2128b8>
  4017e6:	68 31 00 00 00       	pushq  $0x31
  4017eb:	e9 d0 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004017f0 <__strncpy_chk@plt>:
  4017f0:	ff 25 9a 29 21 00    	jmpq   *0x21299a(%rip)        # 614190 <readtask@plt+0x2128c0>
  4017f6:	68 32 00 00 00       	pushq  $0x32
  4017fb:	e9 c0 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401800 <setlocale@plt>:
  401800:	ff 25 92 29 21 00    	jmpq   *0x212992(%rip)        # 614198 <readtask@plt+0x2128c8>
  401806:	68 33 00 00 00       	pushq  $0x33
  40180b:	e9 b0 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401810 <__printf_chk@plt>:
  401810:	ff 25 8a 29 21 00    	jmpq   *0x21298a(%rip)        # 6141a0 <readtask@plt+0x2128d0>
  401816:	68 34 00 00 00       	pushq  $0x34
  40181b:	e9 a0 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401820 <strftime@plt>:
  401820:	ff 25 82 29 21 00    	jmpq   *0x212982(%rip)        # 6141a8 <readtask@plt+0x2128d8>
  401826:	68 35 00 00 00       	pushq  $0x35
  40182b:	e9 90 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401830 <mprotect@plt>:
  401830:	ff 25 7a 29 21 00    	jmpq   *0x21297a(%rip)        # 6141b0 <readtask@plt+0x2128e0>
  401836:	68 36 00 00 00       	pushq  $0x36
  40183b:	e9 80 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401840 <open@plt>:
  401840:	ff 25 72 29 21 00    	jmpq   *0x212972(%rip)        # 6141b8 <readtask@plt+0x2128e8>
  401846:	68 37 00 00 00       	pushq  $0x37
  40184b:	e9 70 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401850 <strtoul@plt>:
  401850:	ff 25 6a 29 21 00    	jmpq   *0x21296a(%rip)        # 6141c0 <readtask@plt+0x2128f0>
  401856:	68 38 00 00 00       	pushq  $0x38
  40185b:	e9 60 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401860 <getpagesize@plt>:
  401860:	ff 25 62 29 21 00    	jmpq   *0x212962(%rip)        # 6141c8 <readtask@plt+0x2128f8>
  401866:	68 39 00 00 00       	pushq  $0x39
  40186b:	e9 50 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401870 <exit@plt>:
  401870:	ff 25 5a 29 21 00    	jmpq   *0x21295a(%rip)        # 6141d0 <readtask@plt+0x212900>
  401876:	68 3a 00 00 00       	pushq  $0x3a
  40187b:	e9 40 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401880 <fwrite@plt>:
  401880:	ff 25 52 29 21 00    	jmpq   *0x212952(%rip)        # 6141d8 <readtask@plt+0x212908>
  401886:	68 3b 00 00 00       	pushq  $0x3b
  40188b:	e9 30 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

0000000000401890 <__fprintf_chk@plt>:
  401890:	ff 25 4a 29 21 00    	jmpq   *0x21294a(%rip)        # 6141e0 <readtask@plt+0x212910>
  401896:	68 3c 00 00 00       	pushq  $0x3c
  40189b:	e9 20 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004018a0 <bsearch@plt>:
  4018a0:	ff 25 42 29 21 00    	jmpq   *0x212942(%rip)        # 6141e8 <readtask@plt+0x212918>
  4018a6:	68 3d 00 00 00       	pushq  $0x3d
  4018ab:	e9 10 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004018b0 <dev_to_tty@plt>:
  4018b0:	ff 25 3a 29 21 00    	jmpq   *0x21293a(%rip)        # 6141f0 <readtask@plt+0x212920>
  4018b6:	68 3e 00 00 00       	pushq  $0x3e
  4018bb:	e9 00 fc ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004018c0 <escape_str@plt>:
  4018c0:	ff 25 32 29 21 00    	jmpq   *0x212932(%rip)        # 6141f8 <readtask@plt+0x212928>
  4018c6:	68 3f 00 00 00       	pushq  $0x3f
  4018cb:	e9 f0 fb ff ff       	jmpq   4014c0 <getenv@plt-0x10>

00000000004018d0 <readtask@plt>:
  4018d0:	ff 25 2a 29 21 00    	jmpq   *0x21292a(%rip)        # 614200 <readtask@plt+0x212930>
  4018d6:	68 40 00 00 00       	pushq  $0x40
  4018db:	e9 e0 fb ff ff       	jmpq   4014c0 <getenv@plt-0x10>

Disassembly of section .text:

00000000004018e0 <.text>:
  4018e0:	41 57                	push   %r15
  4018e2:	41 56                	push   %r14
  4018e4:	41 be 1f 00 00 00    	mov    $0x1f,%r14d
  4018ea:	41 55                	push   %r13
  4018ec:	49 89 f5             	mov    %rsi,%r13
  4018ef:	be a5 0a 41 00       	mov    $0x410aa5,%esi
  4018f4:	41 54                	push   %r12
  4018f6:	41 89 fc             	mov    %edi,%r12d
  4018f9:	31 ff                	xor    %edi,%edi
  4018fb:	55                   	push   %rbp
  4018fc:	53                   	push   %rbx
  4018fd:	bb 01 00 00 00       	mov    $0x1,%ebx
  401902:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
  401909:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
  40190e:	e8 ed fe ff ff       	callq  401800 <setlocale@plt>
  401913:	31 c0                	xor    %eax,%eax
  401915:	b9 13 00 00 00       	mov    $0x13,%ecx
  40191a:	48 89 ef             	mov    %rbp,%rdi
  40191d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401920:	48 8d 7d 08          	lea    0x8(%rbp),%rdi
  401924:	48 c7 44 24 10 30 23 	movq   $0x402330,0x10(%rsp)
  40192b:	40 00 
  40192d:	e8 de fd ff ff       	callq  401710 <sigfillset@plt>
  401932:	eb 1b                	jmp    40194f <readtask@plt+0x7f>
  401934:	0f 1f 40 00          	nopl   0x0(%rax)
  401938:	31 d2                	xor    %edx,%edx
  40193a:	44 89 f7             	mov    %r14d,%edi
  40193d:	48 89 ee             	mov    %rbp,%rsi
  401940:	41 83 ee 01          	sub    $0x1,%r14d
  401944:	e8 47 fc ff ff       	callq  401590 <sigaction@plt>
  401949:	41 83 fe ff          	cmp    $0xffffffff,%r14d
  40194d:	74 20                	je     40196f <readtask@plt+0x9f>
  40194f:	41 83 fe 1c          	cmp    $0x1c,%r14d
  401953:	77 e3                	ja     401938 <readtask@plt+0x68>
  401955:	48 89 d8             	mov    %rbx,%rax
  401958:	44 89 f1             	mov    %r14d,%ecx
  40195b:	48 d3 e0             	shl    %cl,%rax
  40195e:	a9 0d 02 58 18       	test   $0x1858020d,%eax
  401963:	74 d3                	je     401938 <readtask@plt+0x68>
  401965:	41 83 ee 01          	sub    $0x1,%r14d
  401969:	41 83 fe ff          	cmp    $0xffffffff,%r14d
  40196d:	75 e0                	jne    40194f <readtask@plt+0x7f>
  40196f:	e8 6c 11 00 00       	callq  402ae0 <readtask@plt+0x1210>
  401974:	4c 89 ee             	mov    %r13,%rsi
  401977:	44 89 e7             	mov    %r12d,%edi
  40197a:	e8 61 5f 00 00       	callq  4078e0 <readtask@plt+0x6010>
  40197f:	e8 ec 41 00 00       	callq  405b70 <readtask@plt+0x42a0>
  401984:	8b 05 0e 29 21 00    	mov    0x21290e(%rip),%eax        # 614298 <readtask@plt+0x2129c8>
  40198a:	48 8b 1d 17 29 21 00 	mov    0x212917(%rip),%rbx        # 6142a8 <readtask@plt+0x2129d8>
  401991:	83 f8 02             	cmp    $0x2,%eax
  401994:	0f 84 30 04 00 00    	je     401dca <readtask@plt+0x4fa>
  40199a:	83 f8 01             	cmp    $0x1,%eax
  40199d:	0f 84 3b 04 00 00    	je     401dde <readtask@plt+0x50e>
  4019a3:	48 85 db             	test   %rbx,%rbx
  4019a6:	74 2f                	je     4019d7 <readtask@plt+0x107>
  4019a8:	48 89 d8             	mov    %rbx,%rax
  4019ab:	31 c9                	xor    %ecx,%ecx
  4019ad:	eb 13                	jmp    4019c2 <readtask@plt+0xf2>
  4019af:	90                   	nop
  4019b0:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  4019b5:	74 14                	je     4019cb <readtask@plt+0xfb>
  4019b7:	48 8b 00             	mov    (%rax),%rax
  4019ba:	83 c1 01             	add    $0x1,%ecx
  4019bd:	48 85 c0             	test   %rax,%rax
  4019c0:	74 11                	je     4019d3 <readtask@plt+0x103>
  4019c2:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4019c6:	80 3e 00             	cmpb   $0x0,(%rsi)
  4019c9:	75 e5                	jne    4019b0 <readtask@plt+0xe0>
  4019cb:	48 8b 00             	mov    (%rax),%rax
  4019ce:	48 85 c0             	test   %rax,%rax
  4019d1:	75 ef                	jne    4019c2 <readtask@plt+0xf2>
  4019d3:	85 c9                	test   %ecx,%ecx
  4019d5:	75 0a                	jne    4019e1 <readtask@plt+0x111>
  4019d7:	c7 05 af 28 21 00 ff 	movl   $0xffffffff,0x2128af(%rip)        # 614290 <readtask@plt+0x2129c0>
  4019de:	ff ff ff 
  4019e1:	f6 05 3d 28 21 00 04 	testb  $0x4,0x21283d(%rip)        # 614225 <readtask@plt+0x212955>
  4019e8:	0f 84 b5 03 00 00    	je     401da3 <readtask@plt+0x4d3>
  4019ee:	48 85 db             	test   %rbx,%rbx
  4019f1:	0f 84 93 04 00 00    	je     401e8a <readtask@plt+0x5ba>
  4019f7:	4c 8d ac 24 e0 00 00 	lea    0xe0(%rsp),%r13
  4019fe:	00 
  4019ff:	4c 8d a4 24 b0 00 00 	lea    0xb0(%rsp),%r12
  401a06:	00 
  401a07:	eb 42                	jmp    401a4b <readtask@plt+0x17b>
  401a09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a10:	3d 00 00 00 10       	cmp    $0x10000000,%eax
  401a15:	0f 84 45 03 00 00    	je     401d60 <readtask@plt+0x490>
  401a1b:	48 8b 0d 66 29 21 00 	mov    0x212966(%rip),%rcx        # 614388 <stderr>
  401a22:	ba 17 00 00 00       	mov    $0x17,%edx
  401a27:	be 01 00 00 00       	mov    $0x1,%esi
  401a2c:	bf 97 9f 40 00       	mov    $0x409f97,%edi
  401a31:	e8 4a fe ff ff       	callq  401880 <fwrite@plt>
  401a36:	48 8b 03             	mov    (%rbx),%rax
  401a39:	48 85 c0             	test   %rax,%rax
  401a3c:	0f 84 99 00 00 00    	je     401adb <readtask@plt+0x20b>
  401a42:	49 89 dc             	mov    %rbx,%r12
  401a45:	49 89 ed             	mov    %rbp,%r13
  401a48:	48 89 c3             	mov    %rax,%rbx
  401a4b:	bf 30 00 00 00       	mov    $0x30,%edi
  401a50:	e8 6b fd ff ff       	callq  4017c0 <malloc@plt>
  401a55:	4c 8b 3b             	mov    (%rbx),%r15
  401a58:	48 89 c5             	mov    %rax,%rbp
  401a5b:	4c 89 38             	mov    %r15,(%rax)
  401a5e:	4c 8b 73 08          	mov    0x8(%rbx),%r14
  401a62:	4c 89 70 08          	mov    %r14,0x8(%rax)
  401a66:	4c 8b 5b 10          	mov    0x10(%rbx),%r11
  401a6a:	4c 89 58 10          	mov    %r11,0x10(%rax)
  401a6e:	4c 8b 53 18          	mov    0x18(%rbx),%r10
  401a72:	4c 89 50 18          	mov    %r10,0x18(%rax)
  401a76:	4c 8b 4b 20          	mov    0x20(%rbx),%r9
  401a7a:	4c 89 48 20          	mov    %r9,0x20(%rax)
  401a7e:	4c 8b 43 28          	mov    0x28(%rbx),%r8
  401a82:	4c 89 40 28          	mov    %r8,0x28(%rax)
  401a86:	49 89 1c 24          	mov    %rbx,(%r12)
  401a8a:	49 89 45 00          	mov    %rax,0x0(%r13)
  401a8e:	8b 43 24             	mov    0x24(%rbx),%eax
  401a91:	25 00 00 00 f0       	and    $0xf0000000,%eax
  401a96:	3d 00 00 00 20       	cmp    $0x20000000,%eax
  401a9b:	74 23                	je     401ac0 <readtask@plt+0x1f0>
  401a9d:	0f 86 6d ff ff ff    	jbe    401a10 <readtask@plt+0x140>
  401aa3:	3d 00 00 00 40       	cmp    $0x40000000,%eax
  401aa8:	74 8c                	je     401a36 <readtask@plt+0x166>
  401aaa:	3d 00 00 00 80       	cmp    $0x80000000,%eax
  401aaf:	0f 85 66 ff ff ff    	jne    401a1b <readtask@plt+0x14b>
  401ab5:	e9 7c ff ff ff       	jmpq   401a36 <readtask@plt+0x166>
  401aba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401ac0:	48 8b 03             	mov    (%rbx),%rax
  401ac3:	48 c7 45 10 80 3a 40 	movq   $0x403a80,0x10(%rbp)
  401aca:	00 
  401acb:	c7 45 1c 00 00 00 00 	movl   $0x0,0x1c(%rbp)
  401ad2:	48 85 c0             	test   %rax,%rax
  401ad5:	0f 85 67 ff ff ff    	jne    401a42 <readtask@plt+0x172>
  401adb:	48 c7 45 00 00 00 00 	movq   $0x0,0x0(%rbp)
  401ae2:	00 
  401ae3:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
  401aea:	48 8b 9c 24 e0 00 00 	mov    0xe0(%rsp),%rbx
  401af1:	00 
  401af2:	48 8b ac 24 b0 00 00 	mov    0xb0(%rsp),%rbp
  401af9:	00 
  401afa:	48 89 1d a7 28 21 00 	mov    %rbx,0x2128a7(%rip)        # 6143a8 <stderr+0x20>
  401b01:	48 89 2d 98 28 21 00 	mov    %rbp,0x212898(%rip)        # 6143a0 <stderr+0x18>
  401b08:	48 8b 05 91 28 21 00 	mov    0x212891(%rip),%rax        # 6143a0 <stderr+0x18>
  401b0f:	31 c9                	xor    %ecx,%ecx
  401b11:	48 85 c0             	test   %rax,%rax
  401b14:	74 15                	je     401b2b <readtask@plt+0x25b>
  401b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b1d:	00 00 00 
  401b20:	0b 48 1c             	or     0x1c(%rax),%ecx
  401b23:	48 8b 00             	mov    (%rax),%rax
  401b26:	48 85 c0             	test   %rax,%rax
  401b29:	75 f5                	jne    401b20 <readtask@plt+0x250>
  401b2b:	48 8b 05 76 28 21 00 	mov    0x212876(%rip),%rax        # 6143a8 <stderr+0x20>
  401b32:	31 f6                	xor    %esi,%esi
  401b34:	48 85 c0             	test   %rax,%rax
  401b37:	74 12                	je     401b4b <readtask@plt+0x27b>
  401b39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401b40:	0b 70 1c             	or     0x1c(%rax),%esi
  401b43:	48 8b 00             	mov    (%rax),%rax
  401b46:	48 85 c0             	test   %rax,%rax
  401b49:	75 f5                	jne    401b40 <readtask@plt+0x270>
  401b4b:	48 8b 05 f6 26 21 00 	mov    0x2126f6(%rip),%rax        # 614248 <readtask@plt+0x212978>
  401b52:	31 d2                	xor    %edx,%edx
  401b54:	48 85 c0             	test   %rax,%rax
  401b57:	74 12                	je     401b6b <readtask@plt+0x29b>
  401b59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401b60:	0b 50 18             	or     0x18(%rax),%edx
  401b63:	48 8b 00             	mov    (%rax),%rax
  401b66:	48 85 c0             	test   %rax,%rax
  401b69:	75 f5                	jne    401b60 <readtask@plt+0x290>
  401b6b:	44 8b 25 56 27 21 00 	mov    0x212756(%rip),%r12d        # 6142c8 <readtask@plt+0x2129f8>
  401b72:	81 e6 f8 fe ff ff    	and    $0xfffffef8,%esi
  401b78:	89 15 3a 28 21 00    	mov    %edx,0x21283a(%rip)        # 6143b8 <stderr+0x30>
  401b7e:	09 f1                	or     %esi,%ecx
  401b80:	89 35 2e 28 21 00    	mov    %esi,0x21282e(%rip)        # 6143b4 <stderr+0x2c>
  401b86:	89 0d 24 28 21 00    	mov    %ecx,0x212824(%rip)        # 6143b0 <stderr+0x28>
  401b8c:	45 85 e4             	test   %r12d,%r12d
  401b8f:	74 12                	je     401ba3 <readtask@plt+0x2d3>
  401b91:	80 e5 fe             	and    $0xfe,%ch
  401b94:	80 e6 fe             	and    $0xfe,%dh
  401b97:	89 0d 13 28 21 00    	mov    %ecx,0x212813(%rip)        # 6143b0 <stderr+0x28>
  401b9d:	89 15 15 28 21 00    	mov    %edx,0x212815(%rip)        # 6143b8 <stderr+0x30>
  401ba3:	44 8b 2d 76 26 21 00 	mov    0x212676(%rip),%r13d        # 614220 <readtask@plt+0x212950>
  401baa:	45 85 ed             	test   %r13d,%r13d
  401bad:	75 0e                	jne    401bbd <readtask@plt+0x2ed>
  401baf:	83 25 fa 27 21 00 fd 	andl   $0xfffffffd,0x2127fa(%rip)        # 6143b0 <stderr+0x28>
  401bb6:	83 25 fb 27 21 00 fd 	andl   $0xfffffffd,0x2127fb(%rip)        # 6143b8 <stderr+0x30>
  401bbd:	8b 05 ed 27 21 00    	mov    0x2127ed(%rip),%eax        # 6143b0 <stderr+0x28>
  401bc3:	f6 c4 01             	test   $0x1,%ah
  401bc6:	74 0c                	je     401bd4 <readtask@plt+0x304>
  401bc8:	83 c8 02             	or     $0x2,%eax
  401bcb:	80 e4 fe             	and    $0xfe,%ah
  401bce:	89 05 dc 27 21 00    	mov    %eax,0x2127dc(%rip)        # 6143b0 <stderr+0x28>
  401bd4:	8b 3d ea 26 21 00    	mov    0x2126ea(%rip),%edi        # 6142c4 <readtask@plt+0x2129f4>
  401bda:	85 ff                	test   %edi,%edi
  401bdc:	74 0d                	je     401beb <readtask@plt+0x31b>
  401bde:	a8 02                	test   $0x2,%al
  401be0:	74 09                	je     401beb <readtask@plt+0x31b>
  401be2:	83 c8 04             	or     $0x4,%eax
  401be5:	89 05 c5 27 21 00    	mov    %eax,0x2127c5(%rip)        # 6143b0 <stderr+0x28>
  401beb:	0b 05 c7 27 21 00    	or     0x2127c7(%rip),%eax        # 6143b8 <stderr+0x30>
  401bf1:	09 f0                	or     %esi,%eax
  401bf3:	a8 80                	test   $0x80,%al
  401bf5:	74 0d                	je     401c04 <readtask@plt+0x334>
  401bf7:	83 3d 1a 26 21 00 00 	cmpl   $0x0,0x21261a(%rip)        # 614218 <readtask@plt+0x212948>
  401bfe:	0f 84 59 02 00 00    	je     401e5d <readtask@plt+0x58d>
  401c04:	f6 05 1a 26 21 00 08 	testb  $0x8,0x21261a(%rip)        # 614225 <readtask@plt+0x212955>
  401c0b:	74 0a                	je     401c17 <readtask@plt+0x347>
  401c0d:	81 0d a5 27 21 00 00 	orl    $0x200,0x2127a5(%rip)        # 6143bc <stderr+0x34>
  401c14:	02 00 00 
  401c17:	8b 05 97 26 21 00    	mov    0x212697(%rip),%eax        # 6142b4 <readtask@plt+0x2129e4>
  401c1d:	85 c0                	test   %eax,%eax
  401c1f:	75 0e                	jne    401c2f <readtask@plt+0x35f>
  401c21:	48 83 3d 1f 26 21 00 	cmpq   $0x0,0x21261f(%rip)        # 614248 <readtask@plt+0x212978>
  401c28:	00 
  401c29:	0f 84 51 02 00 00    	je     401e80 <readtask@plt+0x5b0>
  401c2f:	8b 3d 7b 27 21 00    	mov    0x21277b(%rip),%edi        # 6143b0 <stderr+0x28>
  401c35:	0b 3d 79 27 21 00    	or     0x212779(%rip),%edi        # 6143b4 <stderr+0x2c>
  401c3b:	31 c0                	xor    %eax,%eax
  401c3d:	83 cf 60             	or     $0x60,%edi
  401c40:	0b 3d 72 27 21 00    	or     0x212772(%rip),%edi        # 6143b8 <stderr+0x30>
  401c46:	0b 3d 70 27 21 00    	or     0x212770(%rip),%edi        # 6143bc <stderr+0x34>
  401c4c:	e8 ff fa ff ff       	callq  401750 <openproc@plt>
  401c51:	48 85 c0             	test   %rax,%rax
  401c54:	48 89 c5             	mov    %rax,%rbp
  401c57:	0f 84 b3 02 00 00    	je     401f10 <readtask@plt+0x640>
  401c5d:	f6 05 c1 25 21 00 08 	testb  $0x8,0x2125c1(%rip)        # 614225 <readtask@plt+0x212955>
  401c64:	48 89 c2             	mov    %rax,%rdx
  401c67:	0f 84 49 01 00 00    	je     401db6 <readtask@plt+0x4e6>
  401c6d:	be 80 23 40 00       	mov    $0x402380,%esi
  401c72:	bf b0 20 40 00       	mov    $0x4020b0,%edi
  401c77:	e8 34 f9 ff ff       	callq  4015b0 <readproctab2@plt>
  401c7c:	8b 58 18             	mov    0x18(%rax),%ebx
  401c7f:	48 8b 08             	mov    (%rax),%rcx
  401c82:	85 db                	test   %ebx,%ebx
  401c84:	48 89 0d 35 27 21 00 	mov    %rcx,0x212735(%rip)        # 6143c0 <stderr+0x38>
  401c8b:	0f 84 a5 00 00 00    	je     401d36 <readtask@plt+0x466>
  401c91:	83 3d 1c 26 21 00 00 	cmpl   $0x0,0x21261c(%rip)        # 6142b4 <readtask@plt+0x2129e4>
  401c98:	0f 85 4c 01 00 00    	jne    401dea <readtask@plt+0x51a>
  401c9e:	48 8b 3d 1b 27 21 00 	mov    0x21271b(%rip),%rdi        # 6143c0 <stderr+0x38>
  401ca5:	48 63 f3             	movslq %ebx,%rsi
  401ca8:	b9 60 20 40 00       	mov    $0x402060,%ecx
  401cad:	ba 08 00 00 00       	mov    $0x8,%edx
  401cb2:	e8 b9 f8 ff ff       	callq  401570 <qsort@plt>
  401cb7:	83 3d f6 25 21 00 00 	cmpl   $0x0,0x2125f6(%rip)        # 6142b4 <readtask@plt+0x2129e4>
  401cbe:	0f 84 8a 01 00 00    	je     401e4e <readtask@plt+0x57e>
  401cc4:	44 8d 73 ff          	lea    -0x1(%rbx),%r14d
  401cc8:	4d 63 ee             	movslq %r14d,%r13
  401ccb:	45 89 f4             	mov    %r14d,%r12d
  401cce:	4e 8d 3c ed 00 00 00 	lea    0x0(,%r13,8),%r15
  401cd5:	00 
  401cd6:	4d 29 e5             	sub    %r12,%r13
  401cd9:	49 f7 dc             	neg    %r12
  401cdc:	4e 8d 24 e5 f8 ff ff 	lea    -0x8(,%r12,8),%r12
  401ce3:	ff 
  401ce4:	4a 8d 04 ed f8 ff ff 	lea    -0x8(,%r13,8),%rax
  401ceb:	ff 
  401cec:	4d 89 fd             	mov    %r15,%r13
  401cef:	90                   	nop
  401cf0:	48 8b 35 c9 26 21 00 	mov    0x2126c9(%rip),%rsi        # 6143c0 <stderr+0x38>
  401cf7:	31 d2                	xor    %edx,%edx
  401cf9:	4a 8b 3c 2e          	mov    (%rsi,%r13,1),%rdi
  401cfd:	4a 8d 34 3e          	lea    (%rsi,%r15,1),%rsi
  401d01:	8b 7f 04             	mov    0x4(%rdi),%edi
  401d04:	eb 13                	jmp    401d19 <readtask@plt+0x449>
  401d06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401d0d:	00 00 00 
  401d10:	48 83 ea 08          	sub    $0x8,%rdx
  401d14:	4c 39 e2             	cmp    %r12,%rdx
  401d17:	74 5f                	je     401d78 <readtask@plt+0x4a8>
  401d19:	48 8b 0c 16          	mov    (%rsi,%rdx,1),%rcx
  401d1d:	39 39                	cmp    %edi,(%rcx)
  401d1f:	75 ef                	jne    401d10 <readtask@plt+0x440>
  401d21:	49 83 ed 08          	sub    $0x8,%r13
  401d25:	41 83 ee 01          	sub    $0x1,%r14d
  401d29:	49 39 c5             	cmp    %rax,%r13
  401d2c:	75 c2                	jne    401cf0 <readtask@plt+0x420>
  401d2e:	48 89 ef             	mov    %rbp,%rdi
  401d31:	e8 4a fa ff ff       	callq  401780 <closeproc@plt>
  401d36:	48 8b 35 6b 25 21 00 	mov    0x21256b(%rip),%rsi        # 6142a8 <readtask@plt+0x2129d8>
  401d3d:	48 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%rdi
  401d44:	e8 17 3a 00 00       	callq  405760 <readtask@plt+0x3e90>
  401d49:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
  401d50:	31 c0                	xor    %eax,%eax
  401d52:	5b                   	pop    %rbx
  401d53:	5d                   	pop    %rbp
  401d54:	41 5c                	pop    %r12
  401d56:	41 5d                	pop    %r13
  401d58:	41 5e                	pop    %r14
  401d5a:	41 5f                	pop    %r15
  401d5c:	c3                   	retq   
  401d5d:	0f 1f 00             	nopl   (%rax)
  401d60:	48 c7 43 10 80 3a 40 	movq   $0x403a80,0x10(%rbx)
  401d67:	00 
  401d68:	c7 43 1c 00 00 00 00 	movl   $0x0,0x1c(%rbx)
  401d6f:	e9 c2 fc ff ff       	jmpq   401a36 <readtask@plt+0x166>
  401d74:	0f 1f 40 00          	nopl   0x0(%rax)
  401d78:	31 c9                	xor    %ecx,%ecx
  401d7a:	31 d2                	xor    %edx,%edx
  401d7c:	44 89 f7             	mov    %r14d,%edi
  401d7f:	89 de                	mov    %ebx,%esi
  401d81:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401d86:	49 83 ed 08          	sub    $0x8,%r13
  401d8a:	e8 31 03 00 00       	callq  4020c0 <readtask@plt+0x7f0>
  401d8f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  401d94:	41 83 ee 01          	sub    $0x1,%r14d
  401d98:	49 39 c5             	cmp    %rax,%r13
  401d9b:	0f 85 4f ff ff ff    	jne    401cf0 <readtask@plt+0x420>
  401da1:	eb 8b                	jmp    401d2e <readtask@plt+0x45e>
  401da3:	48 89 1d f6 25 21 00 	mov    %rbx,0x2125f6(%rip)        # 6143a0 <stderr+0x18>
  401daa:	48 89 1d f7 25 21 00 	mov    %rbx,0x2125f7(%rip)        # 6143a8 <stderr+0x20>
  401db1:	e9 52 fd ff ff       	jmpq   401b08 <readtask@plt+0x238>
  401db6:	be af be ad de       	mov    $0xdeadbeaf,%esi
  401dbb:	bf 80 23 40 00       	mov    $0x402380,%edi
  401dc0:	e8 eb f7 ff ff       	callq  4015b0 <readproctab2@plt>
  401dc5:	e9 b2 fe ff ff       	jmpq   401c7c <readtask@plt+0x3ac>
  401dca:	8b 15 98 24 21 00    	mov    0x212498(%rip),%edx        # 614268 <readtask@plt+0x212998>
  401dd0:	83 ea 01             	sub    $0x1,%edx
  401dd3:	89 15 c3 24 21 00    	mov    %edx,0x2124c3(%rip)        # 61429c <readtask@plt+0x2129cc>
  401dd9:	e9 03 fc ff ff       	jmpq   4019e1 <readtask@plt+0x111>
  401dde:	44 89 35 ab 24 21 00 	mov    %r14d,0x2124ab(%rip)        # 614290 <readtask@plt+0x2129c0>
  401de5:	e9 f7 fb ff ff       	jmpq   4019e1 <readtask@plt+0x111>
  401dea:	48 83 3d 56 24 21 00 	cmpq   $0x0,0x212456(%rip)        # 614248 <readtask@plt+0x212978>
  401df1:	00 
  401df2:	0f 84 c7 00 00 00    	je     401ebf <readtask@plt+0x5ef>
  401df8:	bf d6 9f 40 00       	mov    $0x409fd6,%edi
  401dfd:	e8 fe 38 00 00       	callq  405700 <readtask@plt+0x3e30>
  401e02:	48 85 c0             	test   %rax,%rax
  401e05:	49 89 c4             	mov    %rax,%r12
  401e08:	0f 84 91 00 00 00    	je     401e9f <readtask@plt+0x5cf>
  401e0e:	bf 20 00 00 00       	mov    $0x20,%edi
  401e13:	e8 a8 f9 ff ff       	callq  4017c0 <malloc@plt>
  401e18:	4d 8b 5c 24 18       	mov    0x18(%r12),%r11
  401e1d:	45 8b 54 24 24       	mov    0x24(%r12),%r10d
  401e22:	4c 8b 0d 1f 24 21 00 	mov    0x21241f(%rip),%r9        # 614248 <readtask@plt+0x212978>
  401e29:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
  401e30:	c7 40 14 3f 00 00 00 	movl   $0x3f,0x14(%rax)
  401e37:	48 89 05 0a 24 21 00 	mov    %rax,0x21240a(%rip)        # 614248 <readtask@plt+0x212978>
  401e3e:	4c 89 58 08          	mov    %r11,0x8(%rax)
  401e42:	44 89 50 18          	mov    %r10d,0x18(%rax)
  401e46:	4c 89 08             	mov    %r9,(%rax)
  401e49:	e9 50 fe ff ff       	jmpq   401c9e <readtask@plt+0x3ce>
  401e4e:	89 de                	mov    %ebx,%esi
  401e50:	48 89 ef             	mov    %rbp,%rdi
  401e53:	e8 08 04 00 00       	callq  402260 <readtask@plt+0x990>
  401e58:	e9 d1 fe ff ff       	jmpq   401d2e <readtask@plt+0x45e>
  401e5d:	48 8b 3d 24 24 21 00 	mov    0x212424(%rip),%rdi        # 614288 <readtask@plt+0x2129b8>
  401e64:	e8 97 f7 ff ff       	callq  401600 <open_psdb@plt>
  401e69:	85 c0                	test   %eax,%eax
  401e6b:	0f 84 93 fd ff ff    	je     401c04 <readtask@plt+0x334>
  401e71:	c7 05 9d 23 21 00 01 	movl   $0x1,0x21239d(%rip)        # 614218 <readtask@plt+0x212948>
  401e78:	00 00 00 
  401e7b:	e9 84 fd ff ff       	jmpq   401c04 <readtask@plt+0x334>
  401e80:	e8 5b 05 00 00       	callq  4023e0 <readtask@plt+0xb10>
  401e85:	e9 ac fe ff ff       	jmpq   401d36 <readtask@plt+0x466>
  401e8a:	48 8d ac 24 e0 00 00 	lea    0xe0(%rsp),%rbp
  401e91:	00 
  401e92:	48 8d 9c 24 b0 00 00 	lea    0xb0(%rsp),%rbx
  401e99:	00 
  401e9a:	e9 3c fc ff ff       	jmpq   401adb <readtask@plt+0x20b>
  401e9f:	48 8b 0d e2 24 21 00 	mov    0x2124e2(%rip),%rcx        # 614388 <stderr>
  401ea6:	ba 15 00 00 00       	mov    $0x15,%edx
  401eab:	be 01 00 00 00       	mov    $0x1,%esi
  401eb0:	bf db 9f 40 00       	mov    $0x409fdb,%edi
  401eb5:	e8 c6 f9 ff ff       	callq  401880 <fwrite@plt>
  401eba:	e9 4f ff ff ff       	jmpq   401e0e <readtask@plt+0x53e>
  401ebf:	bf af 9f 40 00       	mov    $0x409faf,%edi
  401ec4:	e8 37 38 00 00       	callq  405700 <readtask@plt+0x3e30>
  401ec9:	48 85 c0             	test   %rax,%rax
  401ecc:	49 89 c4             	mov    %rax,%r12
  401ecf:	74 64                	je     401f35 <readtask@plt+0x665>
  401ed1:	bf 20 00 00 00       	mov    $0x20,%edi
  401ed6:	e8 e5 f8 ff ff       	callq  4017c0 <malloc@plt>
  401edb:	4d 8b 44 24 18       	mov    0x18(%r12),%r8
  401ee0:	41 8b 74 24 24       	mov    0x24(%r12),%esi
  401ee5:	48 8b 15 5c 23 21 00 	mov    0x21235c(%rip),%rdx        # 614248 <readtask@plt+0x212978>
  401eec:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
  401ef3:	c7 40 14 3f 00 00 00 	movl   $0x3f,0x14(%rax)
  401efa:	48 89 05 47 23 21 00 	mov    %rax,0x212347(%rip)        # 614248 <readtask@plt+0x212978>
  401f01:	4c 89 40 08          	mov    %r8,0x8(%rax)
  401f05:	89 70 18             	mov    %esi,0x18(%rax)
  401f08:	48 89 10             	mov    %rdx,(%rax)
  401f0b:	e9 e8 fe ff ff       	jmpq   401df8 <readtask@plt+0x528>
  401f10:	48 8b 0d 71 24 21 00 	mov    0x212471(%rip),%rcx        # 614388 <stderr>
  401f17:	bf 79 9f 40 00       	mov    $0x409f79,%edi
  401f1c:	ba 1d 00 00 00       	mov    $0x1d,%edx
  401f21:	be 01 00 00 00       	mov    $0x1,%esi
  401f26:	e8 55 f9 ff ff       	callq  401880 <fwrite@plt>
  401f2b:	bf 01 00 00 00       	mov    $0x1,%edi
  401f30:	e8 3b f9 ff ff       	callq  401870 <exit@plt>
  401f35:	48 8b 0d 4c 24 21 00 	mov    0x21244c(%rip),%rcx        # 614388 <stderr>
  401f3c:	ba 1b 00 00 00       	mov    $0x1b,%edx
  401f41:	be 01 00 00 00       	mov    $0x1,%esi
  401f46:	bf ba 9f 40 00       	mov    $0x409fba,%edi
  401f4b:	e8 30 f9 ff ff       	callq  401880 <fwrite@plt>
  401f50:	e9 7c ff ff ff       	jmpq   401ed1 <readtask@plt+0x601>
  401f55:	90                   	nop
  401f56:	90                   	nop
  401f57:	90                   	nop
  401f58:	90                   	nop
  401f59:	90                   	nop
  401f5a:	90                   	nop
  401f5b:	90                   	nop
  401f5c:	90                   	nop
  401f5d:	90                   	nop
  401f5e:	90                   	nop
  401f5f:	90                   	nop
  401f60:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
  401f65:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
  401f6c:	00 
  401f6d:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
  401f72:	c3                   	retq   
  401f73:	90                   	nop
  401f74:	31 ed                	xor    %ebp,%ebp
  401f76:	49 89 d1             	mov    %rdx,%r9
  401f79:	5e                   	pop    %rsi
  401f7a:	48 89 e2             	mov    %rsp,%rdx
  401f7d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401f81:	50                   	push   %rax
  401f82:	54                   	push   %rsp
  401f83:	49 c7 c0 90 9e 40 00 	mov    $0x409e90,%r8
  401f8a:	48 c7 c1 00 9e 40 00 	mov    $0x409e00,%rcx
  401f91:	48 c7 c7 e0 18 40 00 	mov    $0x4018e0,%rdi
  401f98:	e8 23 f7 ff ff       	callq  4016c0 <__libc_start_main@plt>
  401f9d:	f4                   	hlt    
  401f9e:	90                   	nop
  401f9f:	90                   	nop
  401fa0:	48 83 ec 08          	sub    $0x8,%rsp
  401fa4:	48 8b 05 35 20 21 00 	mov    0x212035(%rip),%rax        # 613fe0 <readtask@plt+0x212710>
  401fab:	48 85 c0             	test   %rax,%rax
  401fae:	74 02                	je     401fb2 <readtask@plt+0x6e2>
  401fb0:	ff d0                	callq  *%rax
  401fb2:	48 83 c4 08          	add    $0x8,%rsp
  401fb6:	c3                   	retq   
  401fb7:	90                   	nop
  401fb8:	90                   	nop
  401fb9:	90                   	nop
  401fba:	90                   	nop
  401fbb:	90                   	nop
  401fbc:	90                   	nop
  401fbd:	90                   	nop
  401fbe:	90                   	nop
  401fbf:	90                   	nop
  401fc0:	55                   	push   %rbp
  401fc1:	48 89 e5             	mov    %rsp,%rbp
  401fc4:	53                   	push   %rbx
  401fc5:	48 83 ec 08          	sub    $0x8,%rsp
  401fc9:	80 3d c0 23 21 00 00 	cmpb   $0x0,0x2123c0(%rip)        # 614390 <stderr+0x8>
  401fd0:	75 4b                	jne    40201d <readtask@plt+0x74d>
  401fd2:	bb 10 3e 61 00       	mov    $0x613e10,%ebx
  401fd7:	48 8b 05 ba 23 21 00 	mov    0x2123ba(%rip),%rax        # 614398 <stderr+0x10>
  401fde:	48 81 eb 08 3e 61 00 	sub    $0x613e08,%rbx
  401fe5:	48 c1 fb 03          	sar    $0x3,%rbx
  401fe9:	48 83 eb 01          	sub    $0x1,%rbx
  401fed:	48 39 d8             	cmp    %rbx,%rax
  401ff0:	73 24                	jae    402016 <readtask@plt+0x746>
  401ff2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401ff8:	48 83 c0 01          	add    $0x1,%rax
  401ffc:	48 89 05 95 23 21 00 	mov    %rax,0x212395(%rip)        # 614398 <stderr+0x10>
  402003:	ff 14 c5 08 3e 61 00 	callq  *0x613e08(,%rax,8)
  40200a:	48 8b 05 87 23 21 00 	mov    0x212387(%rip),%rax        # 614398 <stderr+0x10>
  402011:	48 39 d8             	cmp    %rbx,%rax
  402014:	72 e2                	jb     401ff8 <readtask@plt+0x728>
  402016:	c6 05 73 23 21 00 01 	movb   $0x1,0x212373(%rip)        # 614390 <stderr+0x8>
  40201d:	48 83 c4 08          	add    $0x8,%rsp
  402021:	5b                   	pop    %rbx
  402022:	5d                   	pop    %rbp
  402023:	c3                   	retq   
  402024:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40202b:	00 00 00 00 00 
  402030:	48 83 3d e0 1d 21 00 	cmpq   $0x0,0x211de0(%rip)        # 613e18 <readtask@plt+0x212548>
  402037:	00 
  402038:	55                   	push   %rbp
  402039:	48 89 e5             	mov    %rsp,%rbp
  40203c:	74 12                	je     402050 <readtask@plt+0x780>
  40203e:	b8 00 00 00 00       	mov    $0x0,%eax
  402043:	48 85 c0             	test   %rax,%rax
  402046:	74 08                	je     402050 <readtask@plt+0x780>
  402048:	5d                   	pop    %rbp
  402049:	bf 18 3e 61 00       	mov    $0x613e18,%edi
  40204e:	ff e0                	jmpq   *%rax
  402050:	5d                   	pop    %rbp
  402051:	c3                   	retq   
  402052:	90                   	nop
  402053:	90                   	nop
  402054:	90                   	nop
  402055:	90                   	nop
  402056:	90                   	nop
  402057:	90                   	nop
  402058:	90                   	nop
  402059:	90                   	nop
  40205a:	90                   	nop
  40205b:	90                   	nop
  40205c:	90                   	nop
  40205d:	90                   	nop
  40205e:	90                   	nop
  40205f:	90                   	nop
  402060:	41 54                	push   %r12
  402062:	31 c0                	xor    %eax,%eax
  402064:	49 89 fc             	mov    %rdi,%r12
  402067:	55                   	push   %rbp
  402068:	48 89 f5             	mov    %rsi,%rbp
  40206b:	53                   	push   %rbx
  40206c:	48 8b 1d d5 21 21 00 	mov    0x2121d5(%rip),%rbx        # 614248 <readtask@plt+0x212978>
  402073:	48 85 db             	test   %rbx,%rbx
  402076:	75 10                	jne    402088 <readtask@plt+0x7b8>
  402078:	eb 29                	jmp    4020a3 <readtask@plt+0x7d3>
  40207a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402080:	48 8b 1b             	mov    (%rbx),%rbx
  402083:	48 85 db             	test   %rbx,%rbx
  402086:	74 1b                	je     4020a3 <readtask@plt+0x7d3>
  402088:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  40208c:	49 8b 3c 24          	mov    (%r12),%rdi
  402090:	ff 53 08             	callq  *0x8(%rbx)
  402093:	85 c0                	test   %eax,%eax
  402095:	74 e9                	je     402080 <readtask@plt+0x7b0>
  402097:	8b 4b 10             	mov    0x10(%rbx),%ecx
  40209a:	89 c2                	mov    %eax,%edx
  40209c:	f7 da                	neg    %edx
  40209e:	85 c9                	test   %ecx,%ecx
  4020a0:	0f 45 c2             	cmovne %edx,%eax
  4020a3:	5b                   	pop    %rbx
  4020a4:	5d                   	pop    %rbp
  4020a5:	41 5c                	pop    %r12
  4020a7:	c3                   	retq   
  4020a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4020af:	00 
  4020b0:	b8 01 00 00 00       	mov    $0x1,%eax
  4020b5:	c3                   	retq   
  4020b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4020bd:	00 00 00 
  4020c0:	41 57                	push   %r15
  4020c2:	41 89 d7             	mov    %edx,%r15d
  4020c5:	41 56                	push   %r14
  4020c7:	41 55                	push   %r13
  4020c9:	41 54                	push   %r12
  4020cb:	55                   	push   %rbp
  4020cc:	89 cd                	mov    %ecx,%ebp
  4020ce:	53                   	push   %rbx
  4020cf:	89 f3                	mov    %esi,%ebx
  4020d1:	48 83 ec 18          	sub    $0x18,%rsp
  4020d5:	85 d2                	test   %edx,%edx
  4020d7:	74 1f                	je     4020f8 <readtask@plt+0x828>
  4020d9:	41 8d 47 ff          	lea    -0x1(%r15),%eax
  4020dd:	85 c9                	test   %ecx,%ecx
  4020df:	48 98                	cltq   
  4020e1:	0f 85 81 00 00 00    	jne    402168 <readtask@plt+0x898>
  4020e7:	c6 80 e0 43 61 00 4c 	movb   $0x4c,0x6143e0(%rax)
  4020ee:	49 63 c7             	movslq %r15d,%rax
  4020f1:	c6 80 e0 43 61 00 00 	movb   $0x0,0x6143e0(%rax)
  4020f8:	48 8b 15 c1 22 21 00 	mov    0x2122c1(%rip),%rdx        # 6143c0 <stderr+0x38>
  4020ff:	48 63 ff             	movslq %edi,%rdi
  402102:	48 8b 35 9f 21 21 00 	mov    0x21219f(%rip),%rsi        # 6142a8 <readtask@plt+0x2129d8>
  402109:	4c 8d 34 fd 00 00 00 	lea    0x0(,%rdi,8),%r14
  402110:	00 
  402111:	48 8b 3c fa          	mov    (%rdx,%rdi,8),%rdi
  402115:	e8 46 36 00 00       	callq  405760 <readtask@plt+0x3e90>
  40211a:	85 db                	test   %ebx,%ebx
  40211c:	7e 37                	jle    402155 <readtask@plt+0x885>
  40211e:	48 8b 35 9b 22 21 00 	mov    0x21229b(%rip),%rsi        # 6143c0 <stderr+0x38>
  402125:	4e 8d 04 36          	lea    (%rsi,%r14,1),%r8
  402129:	48 8b 0e             	mov    (%rsi),%rcx
  40212c:	4d 8b 08             	mov    (%r8),%r9
  40212f:	41 8b 11             	mov    (%r9),%edx
  402132:	39 51 04             	cmp    %edx,0x4(%rcx)
  402135:	74 3d                	je     402174 <readtask@plt+0x8a4>
  402137:	48 89 f0             	mov    %rsi,%rax
  40213a:	31 ff                	xor    %edi,%edi
  40213c:	eb 10                	jmp    40214e <readtask@plt+0x87e>
  40213e:	66 90                	xchg   %ax,%ax
  402140:	4c 8b 50 08          	mov    0x8(%rax),%r10
  402144:	48 83 c0 08          	add    $0x8,%rax
  402148:	41 3b 52 04          	cmp    0x4(%r10),%edx
  40214c:	74 32                	je     402180 <readtask@plt+0x8b0>
  40214e:	83 c7 01             	add    $0x1,%edi
  402151:	39 df                	cmp    %ebx,%edi
  402153:	75 eb                	jne    402140 <readtask@plt+0x870>
  402155:	48 83 c4 18          	add    $0x18,%rsp
  402159:	5b                   	pop    %rbx
  40215a:	5d                   	pop    %rbp
  40215b:	41 5c                	pop    %r12
  40215d:	41 5d                	pop    %r13
  40215f:	41 5e                	pop    %r14
  402161:	41 5f                	pop    %r15
  402163:	c3                   	retq   
  402164:	0f 1f 40 00          	nopl   0x0(%rax)
  402168:	c6 80 e0 43 61 00 2b 	movb   $0x2b,0x6143e0(%rax)
  40216f:	e9 7a ff ff ff       	jmpq   4020ee <readtask@plt+0x81e>
  402174:	31 ff                	xor    %edi,%edi
  402176:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40217d:	00 00 00 
  402180:	4d 63 df             	movslq %r15d,%r11
  402183:	45 85 ff             	test   %r15d,%r15d
  402186:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
  40218b:	74 2c                	je     4021b9 <readtask@plt+0x8e9>
  40218d:	41 8d 47 ff          	lea    -0x1(%r15),%eax
  402191:	85 ed                	test   %ebp,%ebp
  402193:	48 98                	cltq   
  402195:	0f 85 b5 00 00 00    	jne    402250 <readtask@plt+0x980>
  40219b:	c6 80 e0 43 61 00 20 	movb   $0x20,0x6143e0(%rax)
  4021a2:	4d 63 e7             	movslq %r15d,%r12
  4021a5:	41 c6 84 24 e0 43 61 	movb   $0x0,0x6143e0(%r12)
  4021ac:	00 00 
  4021ae:	49 8b 28             	mov    (%r8),%rbp
  4021b1:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
  4021b6:	8b 55 00             	mov    0x0(%rbp),%edx
  4021b9:	45 8d 47 01          	lea    0x1(%r15),%r8d
  4021bd:	4c 63 ef             	movslq %edi,%r13
  4021c0:	4e 8d 2c ed 08 00 00 	lea    0x8(,%r13,8),%r13
  4021c7:	00 
  4021c8:	44 89 44 24 04       	mov    %r8d,0x4(%rsp)
  4021cd:	eb 30                	jmp    4021ff <readtask@plt+0x92f>
  4021cf:	90                   	nop
  4021d0:	83 3d dd 20 21 00 75 	cmpl   $0x75,0x2120dd(%rip)        # 6142b4 <readtask@plt+0x2129e4>
  4021d7:	74 46                	je     40221f <readtask@plt+0x94f>
  4021d9:	44 89 fa             	mov    %r15d,%edx
  4021dc:	89 de                	mov    %ebx,%esi
  4021de:	e8 dd fe ff ff       	callq  4020c0 <readtask@plt+0x7f0>
  4021e3:	45 85 e4             	test   %r12d,%r12d
  4021e6:	74 47                	je     40222f <readtask@plt+0x95f>
  4021e8:	49 83 c5 08          	add    $0x8,%r13
  4021ec:	39 eb                	cmp    %ebp,%ebx
  4021ee:	7e 3f                	jle    40222f <readtask@plt+0x95f>
  4021f0:	48 8b 35 c9 21 21 00 	mov    0x2121c9(%rip),%rsi        # 6143c0 <stderr+0x38>
  4021f7:	89 ef                	mov    %ebp,%edi
  4021f9:	4a 8b 04 36          	mov    (%rsi,%r14,1),%rax
  4021fd:	8b 10                	mov    (%rax),%edx
  4021ff:	8d 6f 01             	lea    0x1(%rdi),%ebp
  402202:	45 31 e4             	xor    %r12d,%r12d
  402205:	39 eb                	cmp    %ebp,%ebx
  402207:	7e 0e                	jle    402217 <readtask@plt+0x947>
  402209:	4a 8b 34 2e          	mov    (%rsi,%r13,1),%rsi
  40220d:	45 31 e4             	xor    %r12d,%r12d
  402210:	39 56 04             	cmp    %edx,0x4(%rsi)
  402213:	41 0f 94 c4          	sete   %r12b
  402217:	83 fa 01             	cmp    $0x1,%edx
  40221a:	44 89 e1             	mov    %r12d,%ecx
  40221d:	74 b1                	je     4021d0 <readtask@plt+0x900>
  40221f:	8b 54 24 04          	mov    0x4(%rsp),%edx
  402223:	89 de                	mov    %ebx,%esi
  402225:	e8 96 fe ff ff       	callq  4020c0 <readtask@plt+0x7f0>
  40222a:	45 85 e4             	test   %r12d,%r12d
  40222d:	75 b9                	jne    4021e8 <readtask@plt+0x918>
  40222f:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  402234:	c6 83 e0 43 61 00 00 	movb   $0x0,0x6143e0(%rbx)
  40223b:	48 83 c4 18          	add    $0x18,%rsp
  40223f:	5b                   	pop    %rbx
  402240:	5d                   	pop    %rbp
  402241:	41 5c                	pop    %r12
  402243:	41 5d                	pop    %r13
  402245:	41 5e                	pop    %r14
  402247:	41 5f                	pop    %r15
  402249:	c3                   	retq   
  40224a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402250:	c6 80 e0 43 61 00 7c 	movb   $0x7c,0x6143e0(%rax)
  402257:	e9 46 ff ff ff       	jmpq   4021a2 <readtask@plt+0x8d2>
  40225c:	0f 1f 40 00          	nopl   0x0(%rax)
  402260:	41 55                	push   %r13
  402262:	41 54                	push   %r12
  402264:	55                   	push   %rbp
  402265:	48 89 fd             	mov    %rdi,%rbp
  402268:	53                   	push   %rbx
  402269:	48 81 ec c8 02 00 00 	sub    $0x2c8,%rsp
  402270:	48 8b 1d 49 21 21 00 	mov    0x212149(%rip),%rbx        # 6143c0 <stderr+0x38>
  402277:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40227e:	00 00 
  402280:	48 89 84 24 b8 02 00 	mov    %rax,0x2b8(%rsp)
  402287:	00 
  402288:	31 c0                	xor    %eax,%eax
  40228a:	85 f6                	test   %esi,%esi
  40228c:	74 5c                	je     4022ea <readtask@plt+0xa1a>
  40228e:	4c 8d 63 08          	lea    0x8(%rbx),%r12
  402292:	83 ee 01             	sub    $0x1,%esi
  402295:	4d 8d 2c f4          	lea    (%r12,%rsi,8),%r13
  402299:	eb 0c                	jmp    4022a7 <readtask@plt+0x9d7>
  40229b:	4d 39 ec             	cmp    %r13,%r12
  40229e:	4c 89 e3             	mov    %r12,%rbx
  4022a1:	74 47                	je     4022ea <readtask@plt+0xa1a>
  4022a3:	49 83 c4 08          	add    $0x8,%r12
  4022a7:	8b 05 77 1f 21 00    	mov    0x211f77(%rip),%eax        # 614224 <readtask@plt+0x212954>
  4022ad:	f6 c4 01             	test   $0x1,%ah
  4022b0:	75 5e                	jne    402310 <readtask@plt+0xa40>
  4022b2:	f6 c4 02             	test   $0x2,%ah
  4022b5:	75 18                	jne    4022cf <readtask@plt+0x9ff>
  4022b7:	eb e2                	jmp    40229b <readtask@plt+0x9cb>
  4022b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4022c0:	48 8b 35 e1 20 21 00 	mov    0x2120e1(%rip),%rsi        # 6143a8 <stderr+0x20>
  4022c7:	48 89 e7             	mov    %rsp,%rdi
  4022ca:	e8 91 34 00 00       	callq  405760 <readtask@plt+0x3e90>
  4022cf:	48 8b 33             	mov    (%rbx),%rsi
  4022d2:	48 89 e2             	mov    %rsp,%rdx
  4022d5:	48 89 ef             	mov    %rbp,%rdi
  4022d8:	e8 f3 f5 ff ff       	callq  4018d0 <readtask@plt>
  4022dd:	48 85 c0             	test   %rax,%rax
  4022e0:	75 de                	jne    4022c0 <readtask@plt+0x9f0>
  4022e2:	4d 39 ec             	cmp    %r13,%r12
  4022e5:	4c 89 e3             	mov    %r12,%rbx
  4022e8:	75 b9                	jne    4022a3 <readtask@plt+0x9d3>
  4022ea:	48 8b 84 24 b8 02 00 	mov    0x2b8(%rsp),%rax
  4022f1:	00 
  4022f2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4022f9:	00 00 
  4022fb:	75 2a                	jne    402327 <readtask@plt+0xa57>
  4022fd:	48 81 c4 c8 02 00 00 	add    $0x2c8,%rsp
  402304:	5b                   	pop    %rbx
  402305:	5d                   	pop    %rbp
  402306:	41 5c                	pop    %r12
  402308:	41 5d                	pop    %r13
  40230a:	c3                   	retq   
  40230b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402310:	48 8b 35 89 20 21 00 	mov    0x212089(%rip),%rsi        # 6143a0 <stderr+0x18>
  402317:	48 8b 3b             	mov    (%rbx),%rdi
  40231a:	e8 41 34 00 00       	callq  405760 <readtask@plt+0x3e90>
  40231f:	8b 05 ff 1e 21 00    	mov    0x211eff(%rip),%eax        # 614224 <readtask@plt+0x212954>
  402325:	eb 8b                	jmp    4022b2 <readtask@plt+0x9e2>
  402327:	e8 c4 f2 ff ff       	callq  4015f0 <__stack_chk_fail@plt>
  40232c:	0f 1f 40 00          	nopl   0x0(%rax)
  402330:	83 ff 0d             	cmp    $0xd,%edi
  402333:	53                   	push   %rbx
  402334:	89 fb                	mov    %edi,%ebx
  402336:	74 33                	je     40236b <readtask@plt+0xa9b>
  402338:	e8 93 f4 ff ff       	callq  4017d0 <signal_number_to_name@plt>
  40233d:	48 8b 3d 44 20 21 00 	mov    0x212044(%rip),%rdi        # 614388 <stderr>
  402344:	49 89 c0             	mov    %rax,%r8
  402347:	41 b9 70 43 61 00    	mov    $0x614370,%r9d
  40234d:	89 d9                	mov    %ebx,%ecx
  40234f:	ba 08 9f 40 00       	mov    $0x409f08,%edx
  402354:	be 01 00 00 00       	mov    $0x1,%esi
  402359:	31 c0                	xor    %eax,%eax
  40235b:	e8 30 f5 ff ff       	callq  401890 <__fprintf_chk@plt>
  402360:	8d bb 80 00 00 00    	lea    0x80(%rbx),%edi
  402366:	e8 d5 f1 ff ff       	callq  401540 <_exit@plt>
  40236b:	31 ff                	xor    %edi,%edi
  40236d:	e8 ce f1 ff ff       	callq  401540 <_exit@plt>
  402372:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  402379:	1f 84 00 00 00 00 00 
  402380:	53                   	push   %rbx
  402381:	48 89 fb             	mov    %rdi,%rbx
  402384:	e8 57 58 00 00       	callq  407be0 <readtask@plt+0x6310>
  402389:	31 d2                	xor    %edx,%edx
  40238b:	85 c0                	test   %eax,%eax
  40238d:	74 39                	je     4023c8 <readtask@plt+0xaf8>
  40238f:	8b 35 ff 1e 21 00    	mov    0x211eff(%rip),%esi        # 614294 <readtask@plt+0x2129c4>
  402395:	48 8b 53 18          	mov    0x18(%rbx),%rdx
  402399:	48 03 53 10          	add    0x10(%rbx),%rdx
  40239d:	85 f6                	test   %esi,%esi
  40239f:	74 08                	je     4023a9 <readtask@plt+0xad9>
  4023a1:	48 03 53 28          	add    0x28(%rbx),%rdx
  4023a5:	48 03 53 20          	add    0x20(%rbx),%rdx
  4023a9:	48 8b 0d b0 1f 21 00 	mov    0x211fb0(%rip),%rcx        # 614360 <Hertz>
  4023b0:	31 c0                	xor    %eax,%eax
  4023b2:	48 0f af 0d a6 1e 21 	imul   0x211ea6(%rip),%rcx        # 614260 <readtask@plt+0x212990>
  4023b9:	00 
  4023ba:	48 2b 4b 30          	sub    0x30(%rbx),%rcx
  4023be:	75 10                	jne    4023d0 <readtask@plt+0xb00>
  4023c0:	89 43 08             	mov    %eax,0x8(%rbx)
  4023c3:	ba 01 00 00 00       	mov    $0x1,%edx
  4023c8:	89 d0                	mov    %edx,%eax
  4023ca:	5b                   	pop    %rbx
  4023cb:	c3                   	retq   
  4023cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4023d0:	48 89 d0             	mov    %rdx,%rax
  4023d3:	31 d2                	xor    %edx,%edx
  4023d5:	48 c1 e0 18          	shl    $0x18,%rax
  4023d9:	48 f7 f1             	div    %rcx
  4023dc:	eb e2                	jmp    4023c0 <readtask@plt+0xaf0>
  4023de:	66 90                	xchg   %ax,%ax
  4023e0:	55                   	push   %rbp
  4023e1:	53                   	push   %rbx
  4023e2:	48 81 ec 78 05 00 00 	sub    $0x578,%rsp
  4023e9:	8b 3d c1 1f 21 00    	mov    0x211fc1(%rip),%edi        # 6143b0 <stderr+0x28>
  4023ef:	0b 3d bf 1f 21 00    	or     0x211fbf(%rip),%edi        # 6143b4 <stderr+0x2c>
  4023f5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023fc:	00 00 
  4023fe:	48 89 84 24 68 05 00 	mov    %rax,0x568(%rsp)
  402405:	00 
  402406:	31 c0                	xor    %eax,%eax
  402408:	83 cf 60             	or     $0x60,%edi
  40240b:	0b 3d a7 1f 21 00    	or     0x211fa7(%rip),%edi        # 6143b8 <stderr+0x30>
  402411:	0b 3d a5 1f 21 00    	or     0x211fa5(%rip),%edi        # 6143bc <stderr+0x34>
  402417:	e8 34 f3 ff ff       	callq  401750 <openproc@plt>
  40241c:	48 85 c0             	test   %rax,%rax
  40241f:	48 89 c5             	mov    %rax,%rbp
  402422:	0f 84 84 02 00 00    	je     4026ac <readtask@plt+0xddc>
  402428:	48 b8 23 23 23 23 23 	movabs $0x2323232323232323,%rax
  40242f:	23 23 23 
  402432:	b9 56 00 00 00       	mov    $0x56,%ecx
  402437:	48 89 e7             	mov    %rsp,%rdi
  40243a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40243d:	8b 05 e1 1d 21 00    	mov    0x211de1(%rip),%eax        # 614224 <readtask@plt+0x212954>
  402443:	25 00 0b 00 00       	and    $0xb00,%eax
  402448:	3d 00 02 00 00       	cmp    $0x200,%eax
  40244d:	0f 84 9b 00 00 00    	je     4024ee <readtask@plt+0xc1e>
  402453:	0f 86 c3 00 00 00    	jbe    40251c <readtask@plt+0xc4c>
  402459:	3d 00 03 00 00       	cmp    $0x300,%eax
  40245e:	0f 84 86 01 00 00    	je     4025ea <readtask@plt+0xd1a>
  402464:	3d 00 09 00 00       	cmp    $0x900,%eax
  402469:	0f 84 d1 01 00 00    	je     402640 <readtask@plt+0xd70>
  40246f:	90                   	nop
  402470:	48 89 ef             	mov    %rbp,%rdi
  402473:	e8 08 f3 ff ff       	callq  401780 <closeproc@plt>
  402478:	48 8b 84 24 68 05 00 	mov    0x568(%rsp),%rax
  40247f:	00 
  402480:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402487:	00 00 
  402489:	0f 85 42 02 00 00    	jne    4026d1 <readtask@plt+0xe01>
  40248f:	48 81 c4 78 05 00 00 	add    $0x578,%rsp
  402496:	5b                   	pop    %rbx
  402497:	5d                   	pop    %rbp
  402498:	c3                   	retq   
  402499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4024a0:	48 8b 35 01 1f 21 00 	mov    0x211f01(%rip),%rsi        # 6143a8 <stderr+0x20>
  4024a7:	48 8d bc 24 b0 02 00 	lea    0x2b0(%rsp),%rdi
  4024ae:	00 
  4024af:	e8 ac 32 00 00       	callq  405760 <readtask@plt+0x3e90>
  4024b4:	48 8d 94 24 b0 02 00 	lea    0x2b0(%rsp),%rdx
  4024bb:	00 
  4024bc:	48 89 e6             	mov    %rsp,%rsi
  4024bf:	48 89 ef             	mov    %rbp,%rdi
  4024c2:	e8 09 f4 ff ff       	callq  4018d0 <readtask@plt>
  4024c7:	48 85 c0             	test   %rax,%rax
  4024ca:	75 d4                	jne    4024a0 <readtask@plt+0xbd0>
  4024cc:	48 8b 84 24 a8 01 00 	mov    0x1a8(%rsp),%rax
  4024d3:	00 
  4024d4:	48 85 c0             	test   %rax,%rax
  4024d7:	74 08                	je     4024e1 <readtask@plt+0xc11>
  4024d9:	48 8b 38             	mov    (%rax),%rdi
  4024dc:	e8 0f f0 ff ff       	callq  4014f0 <free@plt>
  4024e1:	48 8b 84 24 a0 01 00 	mov    0x1a0(%rsp),%rax
  4024e8:	00 
  4024e9:	48 85 c0             	test   %rax,%rax
  4024ec:	75 24                	jne    402512 <readtask@plt+0xc42>
  4024ee:	48 89 e6             	mov    %rsp,%rsi
  4024f1:	48 89 ef             	mov    %rbp,%rdi
  4024f4:	e8 a7 f0 ff ff       	callq  4015a0 <readproc@plt>
  4024f9:	48 85 c0             	test   %rax,%rax
  4024fc:	0f 84 6e ff ff ff    	je     402470 <readtask@plt+0xba0>
  402502:	48 89 e7             	mov    %rsp,%rdi
  402505:	e8 d6 56 00 00       	callq  407be0 <readtask@plt+0x6310>
  40250a:	85 c0                	test   %eax,%eax
  40250c:	75 a6                	jne    4024b4 <readtask@plt+0xbe4>
  40250e:	66 90                	xchg   %ax,%ax
  402510:	eb ba                	jmp    4024cc <readtask@plt+0xbfc>
  402512:	48 8b 38             	mov    (%rax),%rdi
  402515:	e8 d6 ef ff ff       	callq  4014f0 <free@plt>
  40251a:	eb d2                	jmp    4024ee <readtask@plt+0xc1e>
  40251c:	3d 00 01 00 00       	cmp    $0x100,%eax
  402521:	0f 85 49 ff ff ff    	jne    402470 <readtask@plt+0xba0>
  402527:	eb 35                	jmp    40255e <readtask@plt+0xc8e>
  402529:	48 8b 35 70 1e 21 00 	mov    0x211e70(%rip),%rsi        # 6143a0 <stderr+0x18>
  402530:	48 89 e7             	mov    %rsp,%rdi
  402533:	e8 28 32 00 00       	callq  405760 <readtask@plt+0x3e90>
  402538:	48 8b 84 24 a8 01 00 	mov    0x1a8(%rsp),%rax
  40253f:	00 
  402540:	48 85 c0             	test   %rax,%rax
  402543:	74 08                	je     40254d <readtask@plt+0xc7d>
  402545:	48 8b 38             	mov    (%rax),%rdi
  402548:	e8 a3 ef ff ff       	callq  4014f0 <free@plt>
  40254d:	48 8b 84 24 a0 01 00 	mov    0x1a0(%rsp),%rax
  402554:	00 
  402555:	48 85 c0             	test   %rax,%rax
  402558:	0f 85 34 01 00 00    	jne    402692 <readtask@plt+0xdc2>
  40255e:	48 89 e6             	mov    %rsp,%rsi
  402561:	48 89 ef             	mov    %rbp,%rdi
  402564:	e8 37 f0 ff ff       	callq  4015a0 <readproc@plt>
  402569:	48 85 c0             	test   %rax,%rax
  40256c:	0f 84 fe fe ff ff    	je     402470 <readtask@plt+0xba0>
  402572:	48 89 e7             	mov    %rsp,%rdi
  402575:	e8 66 56 00 00       	callq  407be0 <readtask@plt+0x6310>
  40257a:	85 c0                	test   %eax,%eax
  40257c:	74 ba                	je     402538 <readtask@plt+0xc68>
  40257e:	66 90                	xchg   %ax,%ax
  402580:	eb a7                	jmp    402529 <readtask@plt+0xc59>
  402582:	48 8b 35 17 1e 21 00 	mov    0x211e17(%rip),%rsi        # 6143a0 <stderr+0x18>
  402589:	48 89 e7             	mov    %rsp,%rdi
  40258c:	e8 cf 31 00 00       	callq  405760 <readtask@plt+0x3e90>
  402591:	eb 19                	jmp    4025ac <readtask@plt+0xcdc>
  402593:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402598:	48 8b 35 09 1e 21 00 	mov    0x211e09(%rip),%rsi        # 6143a8 <stderr+0x20>
  40259f:	48 8d bc 24 b0 02 00 	lea    0x2b0(%rsp),%rdi
  4025a6:	00 
  4025a7:	e8 b4 31 00 00       	callq  405760 <readtask@plt+0x3e90>
  4025ac:	48 8d 94 24 b0 02 00 	lea    0x2b0(%rsp),%rdx
  4025b3:	00 
  4025b4:	48 89 e6             	mov    %rsp,%rsi
  4025b7:	48 89 ef             	mov    %rbp,%rdi
  4025ba:	e8 11 f3 ff ff       	callq  4018d0 <readtask@plt>
  4025bf:	48 85 c0             	test   %rax,%rax
  4025c2:	75 d4                	jne    402598 <readtask@plt+0xcc8>
  4025c4:	48 8b 84 24 a8 01 00 	mov    0x1a8(%rsp),%rax
  4025cb:	00 
  4025cc:	48 85 c0             	test   %rax,%rax
  4025cf:	74 08                	je     4025d9 <readtask@plt+0xd09>
  4025d1:	48 8b 38             	mov    (%rax),%rdi
  4025d4:	e8 17 ef ff ff       	callq  4014f0 <free@plt>
  4025d9:	48 8b 84 24 a0 01 00 	mov    0x1a0(%rsp),%rax
  4025e0:	00 
  4025e1:	48 85 c0             	test   %rax,%rax
  4025e4:	0f 85 b5 00 00 00    	jne    40269f <readtask@plt+0xdcf>
  4025ea:	48 89 e6             	mov    %rsp,%rsi
  4025ed:	48 89 ef             	mov    %rbp,%rdi
  4025f0:	e8 ab ef ff ff       	callq  4015a0 <readproc@plt>
  4025f5:	48 85 c0             	test   %rax,%rax
  4025f8:	0f 84 72 fe ff ff    	je     402470 <readtask@plt+0xba0>
  4025fe:	48 89 e7             	mov    %rsp,%rdi
  402601:	e8 da 55 00 00       	callq  407be0 <readtask@plt+0x6310>
  402606:	85 c0                	test   %eax,%eax
  402608:	74 ba                	je     4025c4 <readtask@plt+0xcf4>
  40260a:	e9 73 ff ff ff       	jmpq   402582 <readtask@plt+0xcb2>
  40260f:	90                   	nop
  402610:	48 8b 84 24 a8 01 00 	mov    0x1a8(%rsp),%rax
  402617:	00 
  402618:	48 85 c0             	test   %rax,%rax
  40261b:	74 08                	je     402625 <readtask@plt+0xd55>
  40261d:	48 8b 38             	mov    (%rax),%rdi
  402620:	e8 cb ee ff ff       	callq  4014f0 <free@plt>
  402625:	48 8b 84 24 a0 01 00 	mov    0x1a0(%rsp),%rax
  40262c:	00 
  40262d:	48 85 c0             	test   %rax,%rax
  402630:	74 0e                	je     402640 <readtask@plt+0xd70>
  402632:	48 8b 38             	mov    (%rax),%rdi
  402635:	e8 b6 ee ff ff       	callq  4014f0 <free@plt>
  40263a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402640:	48 89 e6             	mov    %rsp,%rsi
  402643:	48 89 ef             	mov    %rbp,%rdi
  402646:	e8 55 ef ff ff       	callq  4015a0 <readproc@plt>
  40264b:	48 85 c0             	test   %rax,%rax
  40264e:	0f 84 1c fe ff ff    	je     402470 <readtask@plt+0xba0>
  402654:	0f 1f 40 00          	nopl   0x0(%rax)
  402658:	48 8d 94 24 b0 02 00 	lea    0x2b0(%rsp),%rdx
  40265f:	00 
  402660:	48 89 e6             	mov    %rsp,%rsi
  402663:	48 89 ef             	mov    %rbp,%rdi
  402666:	e8 65 f2 ff ff       	callq  4018d0 <readtask@plt>
  40266b:	48 85 c0             	test   %rax,%rax
  40266e:	74 a0                	je     402610 <readtask@plt+0xd40>
  402670:	48 89 e7             	mov    %rsp,%rdi
  402673:	e8 68 55 00 00       	callq  407be0 <readtask@plt+0x6310>
  402678:	85 c0                	test   %eax,%eax
  40267a:	74 dc                	je     402658 <readtask@plt+0xd88>
  40267c:	48 8b 35 25 1d 21 00 	mov    0x211d25(%rip),%rsi        # 6143a8 <stderr+0x20>
  402683:	48 8d bc 24 b0 02 00 	lea    0x2b0(%rsp),%rdi
  40268a:	00 
  40268b:	e8 d0 30 00 00       	callq  405760 <readtask@plt+0x3e90>
  402690:	eb c6                	jmp    402658 <readtask@plt+0xd88>
  402692:	48 8b 38             	mov    (%rax),%rdi
  402695:	e8 56 ee ff ff       	callq  4014f0 <free@plt>
  40269a:	e9 bf fe ff ff       	jmpq   40255e <readtask@plt+0xc8e>
  40269f:	48 8b 38             	mov    (%rax),%rdi
  4026a2:	e8 49 ee ff ff       	callq  4014f0 <free@plt>
  4026a7:	e9 3e ff ff ff       	jmpq   4025ea <readtask@plt+0xd1a>
  4026ac:	48 8b 0d d5 1c 21 00 	mov    0x211cd5(%rip),%rcx        # 614388 <stderr>
  4026b3:	bf 79 9f 40 00       	mov    $0x409f79,%edi
  4026b8:	ba 1d 00 00 00       	mov    $0x1d,%edx
  4026bd:	be 01 00 00 00       	mov    $0x1,%esi
  4026c2:	e8 b9 f1 ff ff       	callq  401880 <fwrite@plt>
  4026c7:	bf 01 00 00 00       	mov    $0x1,%edi
  4026cc:	e8 9f f1 ff ff       	callq  401870 <exit@plt>
  4026d1:	e8 1a ef ff ff       	callq  4015f0 <__stack_chk_fail@plt>
  4026d6:	90                   	nop
  4026d7:	90                   	nop
  4026d8:	90                   	nop
  4026d9:	90                   	nop
  4026da:	90                   	nop
  4026db:	90                   	nop
  4026dc:	90                   	nop
  4026dd:	90                   	nop
  4026de:	90                   	nop
  4026df:	90                   	nop
  4026e0:	41 54                	push   %r12
  4026e2:	bf 16 a0 40 00       	mov    $0x40a016,%edi
  4026e7:	55                   	push   %rbp
  4026e8:	53                   	push   %rbx
  4026e9:	48 83 ec 30          	sub    $0x30,%rsp
  4026ed:	c7 05 7d 1b 21 00 00 	movl   $0x0,0x211b7d(%rip)        # 614274 <readtask@plt+0x2129a4>
  4026f4:	00 00 00 
  4026f7:	c7 05 6f 1b 21 00 00 	movl   $0x0,0x211b6f(%rip)        # 614270 <readtask@plt+0x2129a0>
  4026fe:	00 00 00 
  402701:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  402706:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40270d:	00 00 
  40270f:	48 c7 05 d6 1b 21 00 	movq   $0x409ffd,0x211bd6(%rip)        # 6142f0 <readtask@plt+0x212a20>
  402716:	fd 9f 40 00 
  40271a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402721:	00 00 
  402723:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  402728:	31 c0                	xor    %eax,%eax
  40272a:	48 89 1c 24          	mov    %rbx,(%rsp)
  40272e:	48 c7 05 af 1b 21 00 	movq   $0x40a002,0x211baf(%rip)        # 6142e8 <readtask@plt+0x212a18>
  402735:	02 a0 40 00 
  402739:	48 c7 05 9c 1b 21 00 	movq   $0x40a007,0x211b9c(%rip)        # 6142e0 <readtask@plt+0x212a10>
  402740:	07 a0 40 00 
  402744:	48 c7 05 89 1b 21 00 	movq   $0x40a00c,0x211b89(%rip)        # 6142d8 <readtask@plt+0x212a08>
  40274b:	0c a0 40 00 
  40274f:	48 c7 05 76 1b 21 00 	movq   $0x40a011,0x211b76(%rip)        # 6142d0 <readtask@plt+0x212a00>
  402756:	11 a0 40 00 
  40275a:	48 c7 05 db 1a 21 00 	movq   $0x0,0x211adb(%rip)        # 614240 <readtask@plt+0x212970>
  402761:	00 00 00 00 
  402765:	48 c7 05 c8 1a 21 00 	movq   $0x0,0x211ac8(%rip)        # 614238 <readtask@plt+0x212968>
  40276c:	00 00 00 00 
  402770:	48 c7 05 b5 1a 21 00 	movq   $0x0,0x211ab5(%rip)        # 614230 <readtask@plt+0x212960>
  402777:	00 00 00 00 
  40277b:	48 c7 05 a2 1a 21 00 	movq   $0x0,0x211aa2(%rip)        # 614228 <readtask@plt+0x212958>
  402782:	00 00 00 00 
  402786:	e8 45 ed ff ff       	callq  4014d0 <getenv@plt>
  40278b:	48 85 c0             	test   %rax,%rax
  40278e:	49 89 c4             	mov    %rax,%r12
  402791:	74 7d                	je     402810 <readtask@plt+0xf40>
  402793:	80 38 00             	cmpb   $0x0,(%rax)
  402796:	74 78                	je     402810 <readtask@plt+0xf40>
  402798:	bf 2d a0 40 00       	mov    $0x40a02d,%edi
  40279d:	e8 2e ed ff ff       	callq  4014d0 <getenv@plt>
  4027a2:	48 85 c0             	test   %rax,%rax
  4027a5:	0f 84 99 00 00 00    	je     402844 <readtask@plt+0xf74>
  4027ab:	bd 03 00 00 00       	mov    $0x3,%ebp
  4027b0:	41 bc f9 9f 40 00    	mov    $0x409ff9,%r12d
  4027b6:	b9 10 00 00 00       	mov    $0x10,%ecx
  4027bb:	48 89 ea             	mov    %rbp,%rdx
  4027be:	4c 89 e6             	mov    %r12,%rsi
  4027c1:	48 89 df             	mov    %rbx,%rdi
  4027c4:	e8 27 f0 ff ff       	callq  4017f0 <__strncpy_chk@plt>
  4027c9:	48 89 df             	mov    %rbx,%rdi
  4027cc:	c6 44 2c 10 00       	movb   $0x0,0x10(%rsp,%rbp,1)
  4027d1:	bb b8 a1 40 00       	mov    $0x40a1b8,%ebx
  4027d6:	e8 c5 ee ff ff       	callq  4016a0 <__strdup@plt>
  4027db:	41 b8 d0 2a 40 00    	mov    $0x402ad0,%r8d
  4027e1:	b9 10 00 00 00       	mov    $0x10,%ecx
  4027e6:	ba 1b 00 00 00       	mov    $0x1b,%edx
  4027eb:	be a0 a3 40 00       	mov    $0x40a3a0,%esi
  4027f0:	48 89 e7             	mov    %rsp,%rdi
  4027f3:	48 89 05 06 1b 21 00 	mov    %rax,0x211b06(%rip)        # 614300 <readtask@plt+0x212a30>
  4027fa:	e8 a1 f0 ff ff       	callq  4018a0 <bsearch@plt>
  4027ff:	48 85 c0             	test   %rax,%rax
  402802:	74 5a                	je     40285e <readtask@plt+0xf8e>
  402804:	ff 60 08             	jmpq   *0x8(%rax)
  402807:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40280e:	00 00 
  402810:	bf 25 a0 40 00       	mov    $0x40a025,%edi
  402815:	e8 b6 ec ff ff       	callq  4014d0 <getenv@plt>
  40281a:	48 85 c0             	test   %rax,%rax
  40281d:	49 89 c4             	mov    %rax,%r12
  402820:	74 09                	je     40282b <readtask@plt+0xf5b>
  402822:	80 38 00             	cmpb   $0x0,(%rax)
  402825:	0f 85 6d ff ff ff    	jne    402798 <readtask@plt+0xec8>
  40282b:	bf 2d a0 40 00       	mov    $0x40a02d,%edi
  402830:	41 bc f1 9f 40 00    	mov    $0x409ff1,%r12d
  402836:	e8 95 ec ff ff       	callq  4014d0 <getenv@plt>
  40283b:	48 85 c0             	test   %rax,%rax
  40283e:	0f 85 67 ff ff ff    	jne    4027ab <readtask@plt+0xedb>
  402844:	4c 89 e7             	mov    %r12,%rdi
  402847:	e8 94 ed ff ff       	callq  4015e0 <strlen@plt>
  40284c:	48 83 f8 0f          	cmp    $0xf,%rax
  402850:	48 89 c5             	mov    %rax,%rbp
  402853:	0f 86 5d ff ff ff    	jbe    4027b6 <readtask@plt+0xee6>
  402859:	bb b8 a1 40 00       	mov    $0x40a1b8,%ebx
  40285e:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
  402863:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  40286a:	00 00 
  40286c:	48 89 d8             	mov    %rbx,%rax
  40286f:	0f 85 40 02 00 00    	jne    402ab5 <readtask@plt+0x11e5>
  402875:	48 83 c4 30          	add    $0x30,%rsp
  402879:	5b                   	pop    %rbx
  40287a:	5d                   	pop    %rbp
  40287b:	41 5c                	pop    %r12
  40287d:	c3                   	retq   
  40287e:	bf 63 a0 40 00       	mov    $0x40a063,%edi
  402883:	e8 48 ec ff ff       	callq  4014d0 <getenv@plt>
  402888:	48 85 c0             	test   %rax,%rax
  40288b:	75 43                	jne    4028d0 <readtask@plt+0x1000>
  40288d:	bf 6a a0 40 00       	mov    $0x40a06a,%edi
  402892:	e8 39 ec ff ff       	callq  4014d0 <getenv@plt>
  402897:	48 85 c0             	test   %rax,%rax
  40289a:	75 34                	jne    4028d0 <readtask@plt+0x1000>
  40289c:	bf 7a a0 40 00       	mov    $0x40a07a,%edi
  4028a1:	31 db                	xor    %ebx,%ebx
  4028a3:	e8 28 ec ff ff       	callq  4014d0 <getenv@plt>
  4028a8:	48 85 c0             	test   %rax,%rax
  4028ab:	74 b1                	je     40285e <readtask@plt+0xf8e>
  4028ad:	bf 7a a0 40 00       	mov    $0x40a07a,%edi
  4028b2:	e8 19 ec ff ff       	callq  4014d0 <getenv@plt>
  4028b7:	80 38 6f             	cmpb   $0x6f,(%rax)
  4028ba:	75 a2                	jne    40285e <readtask@plt+0xf8e>
  4028bc:	80 78 01 6e          	cmpb   $0x6e,0x1(%rax)
  4028c0:	75 9c                	jne    40285e <readtask@plt+0xf8e>
  4028c2:	80 78 02 00          	cmpb   $0x0,0x2(%rax)
  4028c6:	75 96                	jne    40285e <readtask@plt+0xf8e>
  4028c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4028cf:	00 
  4028d0:	c7 05 9a 19 21 00 01 	movl   $0x1,0x21199a(%rip)        # 614274 <readtask@plt+0x2129a4>
  4028d7:	00 00 00 
  4028da:	31 db                	xor    %ebx,%ebx
  4028dc:	eb 80                	jmp    40285e <readtask@plt+0xf8e>
  4028de:	c7 05 8c 19 21 00 22 	movl   $0x22,0x21198c(%rip)        # 614274 <readtask@plt+0x2129a4>
  4028e5:	00 00 00 
  4028e8:	c7 05 7e 19 21 00 01 	movl   $0x1,0x21197e(%rip)        # 614270 <readtask@plt+0x2129a0>
  4028ef:	00 00 00 
  4028f2:	31 db                	xor    %ebx,%ebx
  4028f4:	48 c7 05 41 19 21 00 	movq   $0x40a081,0x211941(%rip)        # 614240 <readtask@plt+0x212970>
  4028fb:	81 a0 40 00 
  4028ff:	48 c7 05 2e 19 21 00 	movq   $0x40a087,0x21192e(%rip)        # 614238 <readtask@plt+0x212968>
  402906:	87 a0 40 00 
  40290a:	48 c7 05 1b 19 21 00 	movq   $0x40a08e,0x21191b(%rip)        # 614230 <readtask@plt+0x212960>
  402911:	8e a0 40 00 
  402915:	48 c7 05 08 19 21 00 	movq   $0x40a088,0x211908(%rip)        # 614228 <readtask@plt+0x212958>
  40291c:	88 a0 40 00 
  402920:	48 c7 05 c5 19 21 00 	movq   $0x40a08e,0x2119c5(%rip)        # 6142f0 <readtask@plt+0x212a20>
  402927:	8e a0 40 00 
  40292b:	48 c7 05 b2 19 21 00 	movq   $0x40a093,0x2119b2(%rip)        # 6142e8 <readtask@plt+0x212a18>
  402932:	93 a0 40 00 
  402936:	48 c7 05 9f 19 21 00 	movq   $0x40a098,0x21199f(%rip)        # 6142e0 <readtask@plt+0x212a10>
  40293d:	98 a0 40 00 
  402941:	48 c7 05 8c 19 21 00 	movq   $0x40a09d,0x21198c(%rip)        # 6142d8 <readtask@plt+0x212a08>
  402948:	9d a0 40 00 
  40294c:	48 c7 05 79 19 21 00 	movq   $0x40a0a2,0x211979(%rip)        # 6142d0 <readtask@plt+0x212a00>
  402953:	a2 a0 40 00 
  402957:	e9 02 ff ff ff       	jmpq   40285e <readtask@plt+0xf8e>
  40295c:	c7 05 0e 19 21 00 01 	movl   $0x801,0x21190e(%rip)        # 614274 <readtask@plt+0x2129a4>
  402963:	08 00 00 
  402966:	31 db                	xor    %ebx,%ebx
  402968:	e9 f1 fe ff ff       	jmpq   40285e <readtask@plt+0xf8e>
  40296d:	48 c7 05 b8 18 21 00 	movq   $0x40a0ac,0x2118b8(%rip)        # 614230 <readtask@plt+0x212960>
  402974:	ac a0 40 00 
  402978:	31 db                	xor    %ebx,%ebx
  40297a:	e9 df fe ff ff       	jmpq   40285e <readtask@plt+0xf8e>
  40297f:	bf a7 a0 40 00       	mov    $0x40a0a7,%edi
  402984:	e8 47 eb ff ff       	callq  4014d0 <getenv@plt>
  402989:	48 85 c0             	test   %rax,%rax
  40298c:	74 0f                	je     40299d <readtask@plt+0x10cd>
  40298e:	0f b6 00             	movzbl (%rax),%eax
  402991:	3c 30                	cmp    $0x30,%al
  402993:	7e 08                	jle    40299d <readtask@plt+0x10cd>
  402995:	3c 39                	cmp    $0x39,%al
  402997:	0f 8e 33 ff ff ff    	jle    4028d0 <readtask@plt+0x1000>
  40299d:	c7 05 cd 18 21 00 08 	movl   $0x8,0x2118cd(%rip)        # 614274 <readtask@plt+0x2129a4>
  4029a4:	00 00 00 
  4029a7:	31 db                	xor    %ebx,%ebx
  4029a9:	e9 b0 fe ff ff       	jmpq   40285e <readtask@plt+0xf8e>
  4029ae:	c7 05 bc 18 21 00 60 	movl   $0x60,0x2118bc(%rip)        # 614274 <readtask@plt+0x2129a4>
  4029b5:	00 00 00 
  4029b8:	c7 05 ae 18 21 00 01 	movl   $0x1,0x2118ae(%rip)        # 614270 <readtask@plt+0x2129a0>
  4029bf:	00 00 00 
  4029c2:	31 db                	xor    %ebx,%ebx
  4029c4:	48 c7 05 71 18 21 00 	movq   $0x40a054,0x211871(%rip)        # 614240 <readtask@plt+0x212970>
  4029cb:	54 a0 40 00 
  4029cf:	48 c7 05 56 18 21 00 	movq   $0x40a059,0x211856(%rip)        # 614230 <readtask@plt+0x212960>
  4029d6:	59 a0 40 00 
  4029da:	48 c7 05 43 18 21 00 	movq   $0x40a05e,0x211843(%rip)        # 614228 <readtask@plt+0x212958>
  4029e1:	5e a0 40 00 
  4029e5:	e9 74 fe ff ff       	jmpq   40285e <readtask@plt+0xf8e>
  4029ea:	c7 05 80 18 21 00 01 	movl   $0x401,0x211880(%rip)        # 614274 <readtask@plt+0x2129a4>
  4029f1:	04 00 00 
  4029f4:	31 db                	xor    %ebx,%ebx
  4029f6:	e9 63 fe ff ff       	jmpq   40285e <readtask@plt+0xf8e>
  4029fb:	e9 d0 fe ff ff       	jmpq   4028d0 <readtask@plt+0x1000>
  402a00:	e9 57 ff ff ff       	jmpq   40295c <readtask@plt+0x108c>
  402a05:	c7 05 65 18 21 00 50 	movl   $0x50,0x211865(%rip)        # 614274 <readtask@plt+0x2129a4>
  402a0c:	00 00 00 
  402a0f:	c7 05 57 18 21 00 01 	movl   $0x1,0x211857(%rip)        # 614270 <readtask@plt+0x2129a0>
  402a16:	00 00 00 
  402a19:	31 db                	xor    %ebx,%ebx
  402a1b:	e9 3e fe ff ff       	jmpq   40285e <readtask@plt+0xf8e>
  402a20:	c7 05 4a 18 21 00 16 	movl   $0x16,0x21184a(%rip)        # 614274 <readtask@plt+0x2129a4>
  402a27:	00 00 00 
  402a2a:	c7 05 3c 18 21 00 01 	movl   $0x1,0x21183c(%rip)        # 614270 <readtask@plt+0x2129a0>
  402a31:	00 00 00 
  402a34:	48 c7 05 b1 18 21 00 	movq   $0x40a040,0x2118b1(%rip)        # 6142f0 <readtask@plt+0x212a20>
  402a3b:	40 a0 40 00 
  402a3f:	48 c7 05 9e 18 21 00 	movq   $0x40a045,0x21189e(%rip)        # 6142e8 <readtask@plt+0x212a18>
  402a46:	45 a0 40 00 
  402a4a:	31 db                	xor    %ebx,%ebx
  402a4c:	48 c7 05 81 18 21 00 	movq   $0x40a04a,0x211881(%rip)        # 6142d8 <readtask@plt+0x212a08>
  402a53:	4a a0 40 00 
  402a57:	48 c7 05 6e 18 21 00 	movq   $0x40a04f,0x21186e(%rip)        # 6142d0 <readtask@plt+0x212a00>
  402a5e:	4f a0 40 00 
  402a62:	e9 f7 fd ff ff       	jmpq   40285e <readtask@plt+0xf8e>
  402a67:	e9 01 ff ff ff       	jmpq   40296d <readtask@plt+0x109d>
  402a6c:	c7 05 fe 17 21 00 80 	movl   $0x80,0x2117fe(%rip)        # 614274 <readtask@plt+0x2129a4>
  402a73:	00 00 00 
  402a76:	c7 05 f0 17 21 00 01 	movl   $0x1,0x2117f0(%rip)        # 614270 <readtask@plt+0x2129a0>
  402a7d:	00 00 00 
  402a80:	eb b2                	jmp    402a34 <readtask@plt+0x1164>
  402a82:	e9 57 fe ff ff       	jmpq   4028de <readtask@plt+0x100e>
  402a87:	eb ab                	jmp    402a34 <readtask@plt+0x1164>
  402a89:	31 db                	xor    %ebx,%ebx
  402a8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402a90:	e9 c9 fd ff ff       	jmpq   40285e <readtask@plt+0xf8e>
  402a95:	c7 05 d5 17 21 00 20 	movl   $0x320,0x2117d5(%rip)        # 614274 <readtask@plt+0x2129a4>
  402a9c:	03 00 00 
  402a9f:	31 db                	xor    %ebx,%ebx
  402aa1:	e9 b8 fd ff ff       	jmpq   40285e <readtask@plt+0xf8e>
  402aa6:	e9 25 fe ff ff       	jmpq   4028d0 <readtask@plt+0x1000>
  402aab:	e9 20 fe ff ff       	jmpq   4028d0 <readtask@plt+0x1000>
  402ab0:	e9 1b fe ff ff       	jmpq   4028d0 <readtask@plt+0x1000>
  402ab5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  402abc:	00 00 00 00 
  402ac0:	e8 2b eb ff ff       	callq  4015f0 <__stack_chk_fail@plt>
  402ac5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  402acc:	00 00 00 00 
  402ad0:	48 8b 36             	mov    (%rsi),%rsi
  402ad3:	48 8b 3f             	mov    (%rdi),%rdi
  402ad6:	e9 25 ea ff ff       	jmpq   401500 <strcasecmp@plt>
  402adb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402ae0:	55                   	push   %rbp
  402ae1:	b8 ef be ad de       	mov    $0xdeadbeef,%eax
  402ae6:	53                   	push   %rbx
  402ae7:	48 83 ec 18          	sub    $0x18,%rsp
  402aeb:	48 8b 1d 66 17 21 00 	mov    0x211766(%rip),%rbx        # 614258 <readtask@plt+0x212988>
  402af2:	48 39 c3             	cmp    %rax,%rbx
  402af5:	74 25                	je     402b1c <readtask@plt+0x124c>
  402af7:	48 85 db             	test   %rbx,%rbx
  402afa:	75 07                	jne    402b03 <readtask@plt+0x1233>
  402afc:	eb 1e                	jmp    402b1c <readtask@plt+0x124c>
  402afe:	66 90                	xchg   %ax,%ax
  402b00:	48 89 eb             	mov    %rbp,%rbx
  402b03:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  402b07:	48 8b 2b             	mov    (%rbx),%rbp
  402b0a:	e8 e1 e9 ff ff       	callq  4014f0 <free@plt>
  402b0f:	48 89 df             	mov    %rbx,%rdi
  402b12:	e8 d9 e9 ff ff       	callq  4014f0 <free@plt>
  402b17:	48 85 ed             	test   %rbp,%rbp
  402b1a:	75 e4                	jne    402b00 <readtask@plt+0x1230>
  402b1c:	bf 60 44 63 00       	mov    $0x634460,%edi
  402b21:	48 c7 05 2c 17 21 00 	movq   $0x0,0x21172c(%rip)        # 614258 <readtask@plt+0x212988>
  402b28:	00 00 00 00 
  402b2c:	e8 7f ec ff ff       	callq  4017b0 <look_up_our_self@plt>
  402b31:	31 c0                	xor    %eax,%eax
  402b33:	48 89 e2             	mov    %rsp,%rdx
  402b36:	be 13 54 00 00       	mov    $0x5413,%esi
  402b3b:	bf 01 00 00 00       	mov    $0x1,%edi
  402b40:	e8 1b eb ff ff       	callq  401660 <ioctl@plt>
  402b45:	83 f8 ff             	cmp    $0xffffffff,%eax
  402b48:	0f 84 b2 01 00 00    	je     402d00 <readtask@plt+0x1430>
  402b4e:	0f b7 54 24 02       	movzwl 0x2(%rsp),%edx
  402b53:	66 85 d2             	test   %dx,%dx
  402b56:	0f 84 a4 01 00 00    	je     402d00 <readtask@plt+0x1430>
  402b5c:	0f b7 04 24          	movzwl (%rsp),%eax
  402b60:	66 85 c0             	test   %ax,%ax
  402b63:	0f 84 97 01 00 00    	je     402d00 <readtask@plt+0x1430>
  402b69:	0f b7 d2             	movzwl %dx,%edx
  402b6c:	0f b7 c0             	movzwl %ax,%eax
  402b6f:	bf 01 00 00 00       	mov    $0x1,%edi
  402b74:	89 15 f2 16 21 00    	mov    %edx,0x2116f2(%rip)        # 61426c <readtask@plt+0x21299c>
  402b7a:	89 05 e8 16 21 00    	mov    %eax,0x2116e8(%rip)        # 614268 <readtask@plt+0x212998>
  402b80:	e8 fb e9 ff ff       	callq  401580 <isatty@plt>
  402b85:	85 c0                	test   %eax,%eax
  402b87:	75 0a                	jne    402b93 <readtask@plt+0x12c3>
  402b89:	c7 05 d9 16 21 00 00 	movl   $0x20000,0x2116d9(%rip)        # 61426c <readtask@plt+0x21299c>
  402b90:	00 02 00 
  402b93:	bf ba a0 40 00       	mov    $0x40a0ba,%edi
  402b98:	e8 33 e9 ff ff       	callq  4014d0 <getenv@plt>
  402b9d:	48 85 c0             	test   %rax,%rax
  402ba0:	74 09                	je     402bab <readtask@plt+0x12db>
  402ba2:	80 38 00             	cmpb   $0x0,(%rax)
  402ba5:	0f 85 65 02 00 00    	jne    402e10 <readtask@plt+0x1540>
  402bab:	bf c2 a0 40 00       	mov    $0x40a0c2,%edi
  402bb0:	e8 1b e9 ff ff       	callq  4014d0 <getenv@plt>
  402bb5:	48 85 c0             	test   %rax,%rax
  402bb8:	74 09                	je     402bc3 <readtask@plt+0x12f3>
  402bba:	80 38 00             	cmpb   $0x0,(%rax)
  402bbd:	0f 85 8d 02 00 00    	jne    402e50 <readtask@plt+0x1580>
  402bc3:	44 8b 05 9e 16 21 00 	mov    0x21169e(%rip),%r8d        # 614268 <readtask@plt+0x212998>
  402bca:	8b 0d 9c 16 21 00    	mov    0x21169c(%rip),%ecx        # 61426c <readtask@plt+0x21299c>
  402bd0:	83 f9 08             	cmp    $0x8,%ecx
  402bd3:	0f 8e 17 02 00 00    	jle    402df0 <readtask@plt+0x1520>
  402bd9:	41 83 f8 01          	cmp    $0x1,%r8d
  402bdd:	0f 8e 0d 02 00 00    	jle    402df0 <readtask@plt+0x1520>
  402be3:	e8 f8 fa ff ff       	callq  4026e0 <readtask@plt+0xe10>
  402be8:	c7 05 06 17 21 00 00 	movl   $0x0,0x211706(%rip)        # 6142f8 <readtask@plt+0x212a28>
  402bef:	00 00 00 
  402bf2:	c7 05 cc 16 21 00 00 	movl   $0x0,0x2116cc(%rip)        # 6142c8 <readtask@plt+0x2129f8>
  402bf9:	00 00 00 
  402bfc:	c7 05 be 16 21 00 00 	movl   $0x0,0x2116be(%rip)        # 6142c4 <readtask@plt+0x2129f4>
  402c03:	00 00 00 
  402c06:	e8 45 ea ff ff       	callq  401650 <geteuid@plt>
  402c0b:	48 63 1d ce 1a 23 00 	movslq 0x231ace(%rip),%rbx        # 6346e0 <stderr+0x20358>
  402c12:	89 05 a8 16 21 00    	mov    %eax,0x2116a8(%rip)        # 6142c0 <readtask@plt+0x2129f0>
  402c18:	c7 05 92 16 21 00 00 	movl   $0x0,0x211692(%rip)        # 6142b4 <readtask@plt+0x2129e4>
  402c1f:	00 00 00 
  402c22:	c7 05 84 16 21 00 00 	movl   $0x0,0x211684(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  402c29:	00 00 00 
  402c2c:	48 c7 05 71 16 21 00 	movq   $0x0,0x211671(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  402c33:	00 00 00 00 
  402c37:	c7 05 5f 16 21 00 00 	movl   $0x0,0x21165f(%rip)        # 6142a0 <readtask@plt+0x2129d0>
  402c3e:	00 00 00 
  402c41:	c7 05 51 16 21 00 ff 	movl   $0xffffffff,0x211651(%rip)        # 61429c <readtask@plt+0x2129cc>
  402c48:	ff ff ff 
  402c4b:	c7 05 43 16 21 00 00 	movl   $0x0,0x211643(%rip)        # 614298 <readtask@plt+0x2129c8>
  402c52:	00 00 00 
  402c55:	48 89 1d 5c 16 21 00 	mov    %rbx,0x21165c(%rip)        # 6142b8 <readtask@plt+0x2129e8>
  402c5c:	c7 05 2e 16 21 00 00 	movl   $0x0,0x21162e(%rip)        # 614294 <readtask@plt+0x2129c4>
  402c63:	00 00 00 
  402c66:	c7 05 20 16 21 00 01 	movl   $0x1,0x211620(%rip)        # 614290 <readtask@plt+0x2129c0>
  402c6d:	00 00 00 
  402c70:	48 c7 05 0d 16 21 00 	movq   $0x0,0x21160d(%rip)        # 614288 <readtask@plt+0x2129b8>
  402c77:	00 00 00 00 
  402c7b:	c7 05 fb 15 21 00 00 	movl   $0x0,0x2115fb(%rip)        # 614280 <readtask@plt+0x2129b0>
  402c82:	00 00 00 
  402c85:	e8 d6 eb ff ff       	callq  401860 <getpagesize@plt>
  402c8a:	31 f6                	xor    %esi,%esi
  402c8c:	31 ff                	xor    %edi,%edi
  402c8e:	89 05 e4 15 21 00    	mov    %eax,0x2115e4(%rip)        # 614278 <readtask@plt+0x2129a8>
  402c94:	c7 05 de 15 21 00 00 	movl   $0x0,0x2115de(%rip)        # 61427c <readtask@plt+0x2129ac>
  402c9b:	00 00 00 
  402c9e:	e8 cd ea ff ff       	callq  401770 <uptime@plt>
  402ca3:	48 98                	cltq   
  402ca5:	48 c7 05 a8 15 21 00 	movq   $0x0,0x2115a8(%rip)        # 614258 <readtask@plt+0x212988>
  402cac:	00 00 00 00 
  402cb0:	c7 05 96 15 21 00 00 	movl   $0x0,0x211596(%rip)        # 614250 <readtask@plt+0x212980>
  402cb7:	00 00 00 
  402cba:	48 89 05 9f 15 21 00 	mov    %rax,0x21159f(%rip)        # 614260 <readtask@plt+0x212990>
  402cc1:	48 c7 05 7c 15 21 00 	movq   $0x0,0x21157c(%rip)        # 614248 <readtask@plt+0x212978>
  402cc8:	00 00 00 00 
  402ccc:	c7 05 4e 15 21 00 00 	movl   $0x0,0x21154e(%rip)        # 614224 <readtask@plt+0x212954>
  402cd3:	00 00 00 
  402cd6:	c7 05 40 15 21 00 00 	movl   $0x0,0x211540(%rip)        # 614220 <readtask@plt+0x212950>
  402cdd:	00 00 00 
  402ce0:	c7 05 32 15 21 00 00 	movl   $0x0,0x211532(%rip)        # 61421c <readtask@plt+0x21294c>
  402ce7:	00 00 00 
  402cea:	c7 05 24 15 21 00 00 	movl   $0x0,0x211524(%rip)        # 614218 <readtask@plt+0x212948>
  402cf1:	00 00 00 
  402cf4:	48 83 c4 18          	add    $0x18,%rsp
  402cf8:	5b                   	pop    %rbx
  402cf9:	5d                   	pop    %rbp
  402cfa:	c3                   	retq   
  402cfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402d00:	31 c0                	xor    %eax,%eax
  402d02:	48 89 e2             	mov    %rsp,%rdx
  402d05:	be 13 54 00 00       	mov    $0x5413,%esi
  402d0a:	bf 02 00 00 00       	mov    $0x2,%edi
  402d0f:	e8 4c e9 ff ff       	callq  401660 <ioctl@plt>
  402d14:	83 f8 ff             	cmp    $0xffffffff,%eax
  402d17:	74 0e                	je     402d27 <readtask@plt+0x1457>
  402d19:	0f b7 54 24 02       	movzwl 0x2(%rsp),%edx
  402d1e:	66 85 d2             	test   %dx,%dx
  402d21:	0f 85 99 00 00 00    	jne    402dc0 <readtask@plt+0x14f0>
  402d27:	31 ff                	xor    %edi,%edi
  402d29:	31 c0                	xor    %eax,%eax
  402d2b:	48 89 e2             	mov    %rsp,%rdx
  402d2e:	be 13 54 00 00       	mov    $0x5413,%esi
  402d33:	e8 28 e9 ff ff       	callq  401660 <ioctl@plt>
  402d38:	83 f8 ff             	cmp    $0xffffffff,%eax
  402d3b:	74 0e                	je     402d4b <readtask@plt+0x147b>
  402d3d:	0f b7 54 24 02       	movzwl 0x2(%rsp),%edx
  402d42:	66 85 d2             	test   %dx,%dx
  402d45:	0f 85 8d 00 00 00    	jne    402dd8 <readtask@plt+0x1508>
  402d4b:	31 c0                	xor    %eax,%eax
  402d4d:	be 00 09 00 00       	mov    $0x900,%esi
  402d52:	bf b1 a0 40 00       	mov    $0x40a0b1,%edi
  402d57:	e8 e4 ea ff ff       	callq  401840 <open@plt>
  402d5c:	83 f8 ff             	cmp    $0xffffffff,%eax
  402d5f:	89 c3                	mov    %eax,%ebx
  402d61:	74 3d                	je     402da0 <readtask@plt+0x14d0>
  402d63:	89 c7                	mov    %eax,%edi
  402d65:	48 89 e2             	mov    %rsp,%rdx
  402d68:	be 13 54 00 00       	mov    $0x5413,%esi
  402d6d:	31 c0                	xor    %eax,%eax
  402d6f:	e8 ec e8 ff ff       	callq  401660 <ioctl@plt>
  402d74:	89 df                	mov    %ebx,%edi
  402d76:	89 c5                	mov    %eax,%ebp
  402d78:	e8 03 e9 ff ff       	callq  401680 <close@plt>
  402d7d:	83 fd ff             	cmp    $0xffffffff,%ebp
  402d80:	74 1e                	je     402da0 <readtask@plt+0x14d0>
  402d82:	0f b7 54 24 02       	movzwl 0x2(%rsp),%edx
  402d87:	66 85 d2             	test   %dx,%dx
  402d8a:	74 14                	je     402da0 <readtask@plt+0x14d0>
  402d8c:	0f b7 04 24          	movzwl (%rsp),%eax
  402d90:	66 85 c0             	test   %ax,%ax
  402d93:	0f 85 d0 fd ff ff    	jne    402b69 <readtask@plt+0x1299>
  402d99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402da0:	66 c7 44 24 02 50 00 	movw   $0x50,0x2(%rsp)
  402da7:	66 c7 04 24 18 00    	movw   $0x18,(%rsp)
  402dad:	b8 18 00 00 00       	mov    $0x18,%eax
  402db2:	ba 50 00 00 00       	mov    $0x50,%edx
  402db7:	e9 b3 fd ff ff       	jmpq   402b6f <readtask@plt+0x129f>
  402dbc:	0f 1f 40 00          	nopl   0x0(%rax)
  402dc0:	0f b7 04 24          	movzwl (%rsp),%eax
  402dc4:	66 85 c0             	test   %ax,%ax
  402dc7:	0f 84 5a ff ff ff    	je     402d27 <readtask@plt+0x1457>
  402dcd:	e9 97 fd ff ff       	jmpq   402b69 <readtask@plt+0x1299>
  402dd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402dd8:	0f b7 04 24          	movzwl (%rsp),%eax
  402ddc:	66 85 c0             	test   %ax,%ax
  402ddf:	0f 84 66 ff ff ff    	je     402d4b <readtask@plt+0x147b>
  402de5:	e9 7f fd ff ff       	jmpq   402b69 <readtask@plt+0x1299>
  402dea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402df0:	48 8b 3d 91 15 21 00 	mov    0x211591(%rip),%rdi        # 614388 <stderr>
  402df7:	ba e8 a1 40 00       	mov    $0x40a1e8,%edx
  402dfc:	be 01 00 00 00       	mov    $0x1,%esi
  402e01:	31 c0                	xor    %eax,%eax
  402e03:	e8 88 ea ff ff       	callq  401890 <__fprintf_chk@plt>
  402e08:	e9 d6 fd ff ff       	jmpq   402be3 <readtask@plt+0x1313>
  402e0d:	0f 1f 00             	nopl   (%rax)
  402e10:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  402e15:	31 d2                	xor    %edx,%edx
  402e17:	48 89 c7             	mov    %rax,%rdi
  402e1a:	e8 d1 e8 ff ff       	callq  4016f0 <strtol@plt>
  402e1f:	48 85 c0             	test   %rax,%rax
  402e22:	0f 8e 83 fd ff ff    	jle    402bab <readtask@plt+0x12db>
  402e28:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402e2d:	80 3a 00             	cmpb   $0x0,(%rdx)
  402e30:	0f 85 75 fd ff ff    	jne    402bab <readtask@plt+0x12db>
  402e36:	48 3d ff ff 01 00    	cmp    $0x1ffff,%rax
  402e3c:	0f 8f 69 fd ff ff    	jg     402bab <readtask@plt+0x12db>
  402e42:	89 05 24 14 21 00    	mov    %eax,0x211424(%rip)        # 61426c <readtask@plt+0x21299c>
  402e48:	e9 5e fd ff ff       	jmpq   402bab <readtask@plt+0x12db>
  402e4d:	0f 1f 00             	nopl   (%rax)
  402e50:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  402e55:	31 d2                	xor    %edx,%edx
  402e57:	48 89 c7             	mov    %rax,%rdi
  402e5a:	e8 91 e8 ff ff       	callq  4016f0 <strtol@plt>
  402e5f:	48 85 c0             	test   %rax,%rax
  402e62:	0f 8e 5b fd ff ff    	jle    402bc3 <readtask@plt+0x12f3>
  402e68:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402e6d:	80 39 00             	cmpb   $0x0,(%rcx)
  402e70:	0f 85 4d fd ff ff    	jne    402bc3 <readtask@plt+0x12f3>
  402e76:	48 3d ff ff 01 00    	cmp    $0x1ffff,%rax
  402e7c:	0f 8f 41 fd ff ff    	jg     402bc3 <readtask@plt+0x12f3>
  402e82:	41 89 c0             	mov    %eax,%r8d
  402e85:	89 05 dd 13 21 00    	mov    %eax,0x2113dd(%rip)        # 614268 <readtask@plt+0x212998>
  402e8b:	e9 3a fd ff ff       	jmpq   402bca <readtask@plt+0x12fa>
  402e90:	55                   	push   %rbp
  402e91:	b8 c8 a0 40 00       	mov    $0x40a0c8,%eax
  402e96:	49 89 c2             	mov    %rax,%r10
  402e99:	49 89 c3             	mov    %rax,%r11
  402e9c:	48 89 c5             	mov    %rax,%rbp
  402e9f:	53                   	push   %rbx
  402ea0:	48 89 c3             	mov    %rax,%rbx
  402ea3:	48 83 ec 38          	sub    $0x38,%rsp
  402ea7:	48 8b 3d 7a 13 21 00 	mov    0x21137a(%rip),%rdi        # 614228 <readtask@plt+0x212958>
  402eae:	48 8b 35 7b 13 21 00 	mov    0x21137b(%rip),%rsi        # 614230 <readtask@plt+0x212960>
  402eb5:	48 8b 15 7c 13 21 00 	mov    0x21137c(%rip),%rdx        # 614238 <readtask@plt+0x212968>
  402ebc:	4c 8b 05 7d 13 21 00 	mov    0x21137d(%rip),%r8        # 614240 <readtask@plt+0x212970>
  402ec3:	48 8b 0d 06 14 21 00 	mov    0x211406(%rip),%rcx        # 6142d0 <readtask@plt+0x212a00>
  402eca:	4c 8b 0d 07 14 21 00 	mov    0x211407(%rip),%r9        # 6142d8 <readtask@plt+0x212a08>
  402ed1:	48 85 ff             	test   %rdi,%rdi
  402ed4:	4c 0f 45 d7          	cmovne %rdi,%r10
  402ed8:	48 85 f6             	test   %rsi,%rsi
  402edb:	48 89 c7             	mov    %rax,%rdi
  402ede:	4c 0f 45 de          	cmovne %rsi,%r11
  402ee2:	48 85 d2             	test   %rdx,%rdx
  402ee5:	48 89 c6             	mov    %rax,%rsi
  402ee8:	48 0f 45 da          	cmovne %rdx,%rbx
  402eec:	4d 85 c0             	test   %r8,%r8
  402eef:	ba 20 a2 40 00       	mov    $0x40a220,%edx
  402ef4:	49 0f 45 e8          	cmovne %r8,%rbp
  402ef8:	48 85 c9             	test   %rcx,%rcx
  402efb:	4c 8b 05 e6 13 21 00 	mov    0x2113e6(%rip),%r8        # 6142e8 <readtask@plt+0x212a18>
  402f02:	48 0f 45 f9          	cmovne %rcx,%rdi
  402f06:	4d 85 c9             	test   %r9,%r9
  402f09:	48 8b 0d e0 13 21 00 	mov    0x2113e0(%rip),%rcx        # 6142f0 <readtask@plt+0x212a20>
  402f10:	49 0f 45 f1          	cmovne %r9,%rsi
  402f14:	4c 8b 0d c5 13 21 00 	mov    0x2113c5(%rip),%r9        # 6142e0 <readtask@plt+0x212a10>
  402f1b:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  402f20:	48 8b 3d 61 14 21 00 	mov    0x211461(%rip),%rdi        # 614388 <stderr>
  402f27:	48 89 34 24          	mov    %rsi,(%rsp)
  402f2b:	be 01 00 00 00       	mov    $0x1,%esi
  402f30:	4c 89 54 24 28       	mov    %r10,0x28(%rsp)
  402f35:	4c 89 5c 24 20       	mov    %r11,0x20(%rsp)
  402f3a:	4d 85 c9             	test   %r9,%r9
  402f3d:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  402f42:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
  402f47:	4c 0f 44 c8          	cmove  %rax,%r9
  402f4b:	4d 85 c0             	test   %r8,%r8
  402f4e:	4c 0f 44 c0          	cmove  %rax,%r8
  402f52:	48 85 c9             	test   %rcx,%rcx
  402f55:	48 0f 44 c8          	cmove  %rax,%rcx
  402f59:	31 c0                	xor    %eax,%eax
  402f5b:	e8 30 e9 ff ff       	callq  401890 <__fprintf_chk@plt>
  402f60:	e8 9b e7 ff ff       	callq  401700 <display_version@plt>
  402f65:	8b 15 d5 13 21 00    	mov    0x2113d5(%rip),%edx        # 614340 <linux_version_code>
  402f6b:	0f b6 0d d0 13 21 00 	movzbl 0x2113d0(%rip),%ecx        # 614342 <linux_version_code+0x2>
  402f72:	be 01 00 00 00       	mov    $0x1,%esi
  402f77:	48 8b 3d 0a 14 21 00 	mov    0x21140a(%rip),%rdi        # 614388 <stderr>
  402f7e:	0f b6 c6             	movzbl %dh,%eax
  402f81:	44 0f b6 ca          	movzbl %dl,%r9d
  402f85:	ba e4 a0 40 00       	mov    $0x40a0e4,%edx
  402f8a:	41 89 c0             	mov    %eax,%r8d
  402f8d:	31 c0                	xor    %eax,%eax
  402f8f:	e8 fc e8 ff ff       	callq  401890 <__fprintf_chk@plt>
  402f94:	48 8b 3d ed 13 21 00 	mov    0x2113ed(%rip),%rdi        # 614388 <stderr>
  402f9b:	41 b9 04 00 00 00    	mov    $0x4,%r9d
  402fa1:	41 b8 0f 00 00 00    	mov    $0xf,%r8d
  402fa7:	b9 02 00 00 00       	mov    $0x2,%ecx
  402fac:	ba 90 a2 40 00       	mov    $0x40a290,%edx
  402fb1:	be 01 00 00 00       	mov    $0x1,%esi
  402fb6:	31 c0                	xor    %eax,%eax
  402fb8:	c7 04 24 06 00 00 00 	movl   $0x6,(%rsp)
  402fbf:	e8 cc e8 ff ff       	callq  401890 <__fprintf_chk@plt>
  402fc4:	44 8b 05 9d 12 21 00 	mov    0x21129d(%rip),%r8d        # 614268 <readtask@plt+0x212998>
  402fcb:	44 8b 0d 9a 12 21 00 	mov    0x21129a(%rip),%r9d        # 61426c <readtask@plt+0x21299c>
  402fd2:	ba b8 a2 40 00       	mov    $0x40a2b8,%edx
  402fd7:	8b 0d bf 12 21 00    	mov    0x2112bf(%rip),%ecx        # 61429c <readtask@plt+0x2129cc>
  402fdd:	48 8b 3d a4 13 21 00 	mov    0x2113a4(%rip),%rdi        # 614388 <stderr>
  402fe4:	be 01 00 00 00       	mov    $0x1,%esi
  402fe9:	31 c0                	xor    %eax,%eax
  402feb:	44 89 04 24          	mov    %r8d,(%rsp)
  402fef:	44 8b 05 9a 12 21 00 	mov    0x21129a(%rip),%r8d        # 614290 <readtask@plt+0x2129c0>
  402ff6:	e8 95 e8 ff ff       	callq  401890 <__fprintf_chk@plt>
  402ffb:	48 8b 1d b6 12 21 00 	mov    0x2112b6(%rip),%rbx        # 6142b8 <readtask@plt+0x2129e8>
  403002:	48 8b 3d 57 13 21 00 	mov    0x211357(%rip),%rdi        # 614360 <Hertz>
  403009:	31 c0                	xor    %eax,%eax
  40300b:	8b 2d 67 12 21 00    	mov    0x211267(%rip),%ebp        # 614278 <readtask@plt+0x2129a8>
  403011:	44 8b 0d a8 12 21 00 	mov    0x2112a8(%rip),%r9d        # 6142c0 <readtask@plt+0x2129f0>
  403018:	4c 8b 05 e1 12 21 00 	mov    0x2112e1(%rip),%r8        # 614300 <readtask@plt+0x212a30>
  40301f:	48 89 de             	mov    %rbx,%rsi
  403022:	48 89 da             	mov    %rbx,%rdx
  403025:	0f b6 cb             	movzbl %bl,%ecx
  403028:	48 c1 ee 0c          	shr    $0xc,%rsi
  40302c:	48 c1 ea 20          	shr    $0x20,%rdx
  403030:	48 c1 eb 08          	shr    $0x8,%rbx
  403034:	40 30 f6             	xor    %sil,%sil
  403037:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
  40303c:	81 e3 ff 0f 00 00    	and    $0xfff,%ebx
  403042:	09 ce                	or     %ecx,%esi
  403044:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
  40304a:	8b 0d 24 12 21 00    	mov    0x211224(%rip),%ecx        # 614274 <readtask@plt+0x2129a4>
  403050:	48 8b 3d 31 13 21 00 	mov    0x211331(%rip),%rdi        # 614388 <stderr>
  403057:	09 da                	or     %ebx,%edx
  403059:	89 74 24 08          	mov    %esi,0x8(%rsp)
  40305d:	89 14 24             	mov    %edx,(%rsp)
  403060:	be 01 00 00 00       	mov    $0x1,%esi
  403065:	ba 00 a3 40 00       	mov    $0x40a300,%edx
  40306a:	89 6c 24 18          	mov    %ebp,0x18(%rsp)
  40306e:	e8 1d e8 ff ff       	callq  401890 <__fprintf_chk@plt>
  403073:	48 8b 3d 0e 13 21 00 	mov    0x21130e(%rip),%rdi        # 614388 <stderr>
  40307a:	41 b9 08 00 00 00    	mov    $0x8,%r9d
  403080:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  403086:	b9 b0 02 00 00       	mov    $0x2b0,%ecx
  40308b:	ba 50 a3 40 00       	mov    $0x40a350,%edx
  403090:	be 01 00 00 00       	mov    $0x1,%esi
  403095:	31 c0                	xor    %eax,%eax
  403097:	e8 f4 e7 ff ff       	callq  401890 <__fprintf_chk@plt>
  40309c:	48 8b 3d e5 12 21 00 	mov    0x2112e5(%rip),%rdi        # 614388 <stderr>
  4030a3:	b9 50 a5 40 00       	mov    $0x40a550,%ecx
  4030a8:	ba fc a0 40 00       	mov    $0x40a0fc,%edx
  4030ad:	be 01 00 00 00       	mov    $0x1,%esi
  4030b2:	31 c0                	xor    %eax,%eax
  4030b4:	e8 d7 e7 ff ff       	callq  401890 <__fprintf_chk@plt>
  4030b9:	48 8b 3d c8 11 21 00 	mov    0x2111c8(%rip),%rdi        # 614288 <readtask@plt+0x2129b8>
  4030c0:	e8 3b e5 ff ff       	callq  401600 <open_psdb@plt>
  4030c5:	48 8b 05 bc 11 21 00 	mov    0x2111bc(%rip),%rax        # 614288 <readtask@plt+0x2129b8>
  4030cc:	b9 cf a0 40 00       	mov    $0x40a0cf,%ecx
  4030d1:	48 8b 3d b0 12 21 00 	mov    0x2112b0(%rip),%rdi        # 614388 <stderr>
  4030d8:	ba 09 a1 40 00       	mov    $0x40a109,%edx
  4030dd:	be 01 00 00 00       	mov    $0x1,%esi
  4030e2:	48 85 c0             	test   %rax,%rax
  4030e5:	48 0f 45 c8          	cmovne %rax,%rcx
  4030e9:	48 83 c4 38          	add    $0x38,%rsp
  4030ed:	31 c0                	xor    %eax,%eax
  4030ef:	5b                   	pop    %rbx
  4030f0:	5d                   	pop    %rbp
  4030f1:	e9 9a e7 ff ff       	jmpq   401890 <__fprintf_chk@plt>
  4030f6:	90                   	nop
  4030f7:	90                   	nop
  4030f8:	90                   	nop
  4030f9:	90                   	nop
  4030fa:	90                   	nop
  4030fb:	90                   	nop
  4030fc:	90                   	nop
  4030fd:	90                   	nop
  4030fe:	90                   	nop
  4030ff:	90                   	nop
  403100:	31 c0                	xor    %eax,%eax
  403102:	c3                   	retq   
  403103:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40310a:	84 00 00 00 00 00 
  403110:	48 8b 86 58 01 00 00 	mov    0x158(%rsi),%rax
  403117:	31 d2                	xor    %edx,%edx
  403119:	48 39 87 58 01 00 00 	cmp    %rax,0x158(%rdi)
  403120:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403125:	0f 97 c2             	seta   %dl
  403128:	0f 43 c2             	cmovae %edx,%eax
  40312b:	c3                   	retq   
  40312c:	0f 1f 40 00          	nopl   0x0(%rax)
  403130:	48 8b 87 60 01 00 00 	mov    0x160(%rdi),%rax
  403137:	2b 86 60 01 00 00    	sub    0x160(%rsi),%eax
  40313d:	c3                   	retq   
  40313e:	66 90                	xchg   %ax,%ax
  403140:	48 8b 46 20          	mov    0x20(%rsi),%rax
  403144:	31 d2                	xor    %edx,%edx
  403146:	48 39 47 20          	cmp    %rax,0x20(%rdi)
  40314a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40314f:	0f 97 c2             	seta   %dl
  403152:	0f 43 c2             	cmovae %edx,%eax
  403155:	c3                   	retq   
  403156:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40315d:	00 00 00 
  403160:	48 8b 46 28          	mov    0x28(%rsi),%rax
  403164:	31 d2                	xor    %edx,%edx
  403166:	48 39 47 28          	cmp    %rax,0x28(%rdi)
  40316a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40316f:	0f 97 c2             	seta   %dl
  403172:	0f 43 c2             	cmovae %edx,%eax
  403175:	c3                   	retq   
  403176:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40317d:	00 00 00 
  403180:	48 8b 87 c8 00 00 00 	mov    0xc8(%rdi),%rax
  403187:	2b 86 c8 00 00 00    	sub    0xc8(%rsi),%eax
  40318d:	c3                   	retq   
  40318e:	66 90                	xchg   %ax,%ax
  403190:	8b 87 78 02 00 00    	mov    0x278(%rdi),%eax
  403196:	2b 86 78 02 00 00    	sub    0x278(%rsi),%eax
  40319c:	c3                   	retq   
  40319d:	0f 1f 00             	nopl   (%rax)
  4031a0:	48 8b 87 d0 00 00 00 	mov    0xd0(%rdi),%rax
  4031a7:	2b 86 d0 00 00 00    	sub    0xd0(%rsi),%eax
  4031ad:	c3                   	retq   
  4031ae:	66 90                	xchg   %ax,%ax
  4031b0:	48 8b 86 d8 00 00 00 	mov    0xd8(%rsi),%rax
  4031b7:	31 d2                	xor    %edx,%edx
  4031b9:	48 39 87 d8 00 00 00 	cmp    %rax,0xd8(%rdi)
  4031c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031c5:	0f 9f c2             	setg   %dl
  4031c8:	0f 4d c2             	cmovge %edx,%eax
  4031cb:	c3                   	retq   
  4031cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4031d0:	48 8b 86 e0 00 00 00 	mov    0xe0(%rsi),%rax
  4031d7:	31 d2                	xor    %edx,%edx
  4031d9:	48 39 87 e0 00 00 00 	cmp    %rax,0xe0(%rdi)
  4031e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031e5:	0f 9f c2             	setg   %dl
  4031e8:	0f 4d c2             	cmovge %edx,%eax
  4031eb:	c3                   	retq   
  4031ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4031f0:	48 8b 86 e8 00 00 00 	mov    0xe8(%rsi),%rax
  4031f7:	31 d2                	xor    %edx,%edx
  4031f9:	48 39 87 e8 00 00 00 	cmp    %rax,0xe8(%rdi)
  403200:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403205:	0f 9f c2             	setg   %dl
  403208:	0f 4d c2             	cmovge %edx,%eax
  40320b:	c3                   	retq   
  40320c:	0f 1f 40 00          	nopl   0x0(%rax)
  403210:	48 8b 86 f0 00 00 00 	mov    0xf0(%rsi),%rax
  403217:	31 d2                	xor    %edx,%edx
  403219:	48 39 87 f0 00 00 00 	cmp    %rax,0xf0(%rdi)
  403220:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403225:	0f 9f c2             	setg   %dl
  403228:	0f 4d c2             	cmovge %edx,%eax
  40322b:	c3                   	retq   
  40322c:	0f 1f 40 00          	nopl   0x0(%rax)
  403230:	48 8b 86 f8 00 00 00 	mov    0xf8(%rsi),%rax
  403237:	31 d2                	xor    %edx,%edx
  403239:	48 39 87 f8 00 00 00 	cmp    %rax,0xf8(%rdi)
  403240:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403245:	0f 9f c2             	setg   %dl
  403248:	0f 4d c2             	cmovge %edx,%eax
  40324b:	c3                   	retq   
  40324c:	0f 1f 40 00          	nopl   0x0(%rax)
  403250:	48 8b 86 00 01 00 00 	mov    0x100(%rsi),%rax
  403257:	31 d2                	xor    %edx,%edx
  403259:	48 39 87 00 01 00 00 	cmp    %rax,0x100(%rdi)
  403260:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403265:	0f 9f c2             	setg   %dl
  403268:	0f 4d c2             	cmovge %edx,%eax
  40326b:	c3                   	retq   
  40326c:	0f 1f 40 00          	nopl   0x0(%rax)
  403270:	48 8b 86 08 01 00 00 	mov    0x108(%rsi),%rax
  403277:	31 d2                	xor    %edx,%edx
  403279:	48 39 87 08 01 00 00 	cmp    %rax,0x108(%rdi)
  403280:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403285:	0f 9f c2             	setg   %dl
  403288:	0f 4d c2             	cmovge %edx,%eax
  40328b:	c3                   	retq   
  40328c:	0f 1f 40 00          	nopl   0x0(%rax)
  403290:	48 8b 86 10 01 00 00 	mov    0x110(%rsi),%rax
  403297:	31 d2                	xor    %edx,%edx
  403299:	48 39 87 10 01 00 00 	cmp    %rax,0x110(%rdi)
  4032a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032a5:	0f 9f c2             	setg   %dl
  4032a8:	0f 4d c2             	cmovge %edx,%eax
  4032ab:	c3                   	retq   
  4032ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4032b0:	48 8b 86 18 01 00 00 	mov    0x118(%rsi),%rax
  4032b7:	31 d2                	xor    %edx,%edx
  4032b9:	48 39 87 18 01 00 00 	cmp    %rax,0x118(%rdi)
  4032c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032c5:	0f 9f c2             	setg   %dl
  4032c8:	0f 4d c2             	cmovge %edx,%eax
  4032cb:	c3                   	retq   
  4032cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4032d0:	48 8b 86 20 01 00 00 	mov    0x120(%rsi),%rax
  4032d7:	31 d2                	xor    %edx,%edx
  4032d9:	48 39 87 20 01 00 00 	cmp    %rax,0x120(%rdi)
  4032e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032e5:	0f 97 c2             	seta   %dl
  4032e8:	0f 43 c2             	cmovae %edx,%eax
  4032eb:	c3                   	retq   
  4032ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4032f0:	48 8b 86 28 01 00 00 	mov    0x128(%rsi),%rax
  4032f7:	31 d2                	xor    %edx,%edx
  4032f9:	48 39 87 28 01 00 00 	cmp    %rax,0x128(%rdi)
  403300:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403305:	0f 97 c2             	seta   %dl
  403308:	0f 43 c2             	cmovae %edx,%eax
  40330b:	c3                   	retq   
  40330c:	0f 1f 40 00          	nopl   0x0(%rax)
  403310:	48 8b 86 30 01 00 00 	mov    0x130(%rsi),%rax
  403317:	31 d2                	xor    %edx,%edx
  403319:	48 39 87 30 01 00 00 	cmp    %rax,0x130(%rdi)
  403320:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403325:	0f 97 c2             	seta   %dl
  403328:	0f 43 c2             	cmovae %edx,%eax
  40332b:	c3                   	retq   
  40332c:	0f 1f 40 00          	nopl   0x0(%rax)
  403330:	48 8b 86 38 01 00 00 	mov    0x138(%rsi),%rax
  403337:	31 d2                	xor    %edx,%edx
  403339:	48 39 87 38 01 00 00 	cmp    %rax,0x138(%rdi)
  403340:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403345:	0f 97 c2             	seta   %dl
  403348:	0f 43 c2             	cmovae %edx,%eax
  40334b:	c3                   	retq   
  40334c:	0f 1f 40 00          	nopl   0x0(%rax)
  403350:	48 8b 86 40 01 00 00 	mov    0x140(%rsi),%rax
  403357:	31 d2                	xor    %edx,%edx
  403359:	48 39 87 40 01 00 00 	cmp    %rax,0x140(%rdi)
  403360:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403365:	0f 97 c2             	seta   %dl
  403368:	0f 43 c2             	cmovae %edx,%eax
  40336b:	c3                   	retq   
  40336c:	0f 1f 40 00          	nopl   0x0(%rax)
  403370:	48 8b 86 48 01 00 00 	mov    0x148(%rsi),%rax
  403377:	31 d2                	xor    %edx,%edx
  403379:	48 39 87 48 01 00 00 	cmp    %rax,0x148(%rdi)
  403380:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403385:	0f 97 c2             	seta   %dl
  403388:	0f 43 c2             	cmovae %edx,%eax
  40338b:	c3                   	retq   
  40338c:	0f 1f 40 00          	nopl   0x0(%rax)
  403390:	48 8b 86 50 01 00 00 	mov    0x150(%rsi),%rax
  403397:	31 d2                	xor    %edx,%edx
  403399:	48 39 87 50 01 00 00 	cmp    %rax,0x150(%rdi)
  4033a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033a5:	0f 97 c2             	seta   %dl
  4033a8:	0f 43 c2             	cmovae %edx,%eax
  4033ab:	c3                   	retq   
  4033ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4033b0:	48 8b 86 68 01 00 00 	mov    0x168(%rsi),%rax
  4033b7:	31 d2                	xor    %edx,%edx
  4033b9:	48 39 87 68 01 00 00 	cmp    %rax,0x168(%rdi)
  4033c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033c5:	0f 97 c2             	seta   %dl
  4033c8:	0f 43 c2             	cmovae %edx,%eax
  4033cb:	c3                   	retq   
  4033cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4033d0:	48 8b 86 70 01 00 00 	mov    0x170(%rsi),%rax
  4033d7:	31 d2                	xor    %edx,%edx
  4033d9:	48 39 87 70 01 00 00 	cmp    %rax,0x170(%rdi)
  4033e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033e5:	0f 97 c2             	seta   %dl
  4033e8:	0f 43 c2             	cmovae %edx,%eax
  4033eb:	c3                   	retq   
  4033ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4033f0:	48 8b 87 78 01 00 00 	mov    0x178(%rdi),%rax
  4033f7:	2b 86 78 01 00 00    	sub    0x178(%rsi),%eax
  4033fd:	c3                   	retq   
  4033fe:	66 90                	xchg   %ax,%ax
  403400:	48 8b 86 80 01 00 00 	mov    0x180(%rsi),%rax
  403407:	31 d2                	xor    %edx,%edx
  403409:	48 39 87 80 01 00 00 	cmp    %rax,0x180(%rdi)
  403410:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403415:	0f 97 c2             	seta   %dl
  403418:	0f 43 c2             	cmovae %edx,%eax
  40341b:	c3                   	retq   
  40341c:	0f 1f 40 00          	nopl   0x0(%rax)
  403420:	48 8b 86 88 01 00 00 	mov    0x188(%rsi),%rax
  403427:	31 d2                	xor    %edx,%edx
  403429:	48 39 87 88 01 00 00 	cmp    %rax,0x188(%rdi)
  403430:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403435:	0f 97 c2             	seta   %dl
  403438:	0f 43 c2             	cmovae %edx,%eax
  40343b:	c3                   	retq   
  40343c:	0f 1f 40 00          	nopl   0x0(%rax)
  403440:	48 8b 86 90 01 00 00 	mov    0x190(%rsi),%rax
  403447:	31 d2                	xor    %edx,%edx
  403449:	48 39 87 90 01 00 00 	cmp    %rax,0x190(%rdi)
  403450:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403455:	0f 97 c2             	seta   %dl
  403458:	0f 43 c2             	cmovae %edx,%eax
  40345b:	c3                   	retq   
  40345c:	0f 1f 40 00          	nopl   0x0(%rax)
  403460:	48 8b 86 98 01 00 00 	mov    0x198(%rsi),%rax
  403467:	31 d2                	xor    %edx,%edx
  403469:	48 39 87 98 01 00 00 	cmp    %rax,0x198(%rdi)
  403470:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403475:	0f 97 c2             	seta   %dl
  403478:	0f 43 c2             	cmovae %edx,%eax
  40347b:	c3                   	retq   
  40347c:	0f 1f 40 00          	nopl   0x0(%rax)
  403480:	48 8b 46 10          	mov    0x10(%rsi),%rax
  403484:	31 d2                	xor    %edx,%edx
  403486:	48 39 47 10          	cmp    %rax,0x10(%rdi)
  40348a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40348f:	0f 97 c2             	seta   %dl
  403492:	0f 43 c2             	cmovae %edx,%eax
  403495:	c3                   	retq   
  403496:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40349d:	00 00 00 
  4034a0:	48 8b 46 18          	mov    0x18(%rsi),%rax
  4034a4:	31 d2                	xor    %edx,%edx
  4034a6:	48 39 47 18          	cmp    %rax,0x18(%rdi)
  4034aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034af:	0f 97 c2             	seta   %dl
  4034b2:	0f 43 c2             	cmovae %edx,%eax
  4034b5:	c3                   	retq   
  4034b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4034bd:	00 00 00 
  4034c0:	48 8b 86 98 00 00 00 	mov    0x98(%rsi),%rax
  4034c7:	31 d2                	xor    %edx,%edx
  4034c9:	48 39 87 98 00 00 00 	cmp    %rax,0x98(%rdi)
  4034d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034d5:	0f 97 c2             	seta   %dl
  4034d8:	0f 43 c2             	cmovae %edx,%eax
  4034db:	c3                   	retq   
  4034dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4034e0:	48 8b 86 a0 00 00 00 	mov    0xa0(%rsi),%rax
  4034e7:	31 d2                	xor    %edx,%edx
  4034e9:	48 39 87 a0 00 00 00 	cmp    %rax,0xa0(%rdi)
  4034f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034f5:	0f 97 c2             	seta   %dl
  4034f8:	0f 43 c2             	cmovae %edx,%eax
  4034fb:	c3                   	retq   
  4034fc:	0f 1f 40 00          	nopl   0x0(%rax)
  403500:	48 8b 86 a8 00 00 00 	mov    0xa8(%rsi),%rax
  403507:	31 d2                	xor    %edx,%edx
  403509:	48 39 87 a8 00 00 00 	cmp    %rax,0xa8(%rdi)
  403510:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403515:	0f 97 c2             	seta   %dl
  403518:	0f 43 c2             	cmovae %edx,%eax
  40351b:	c3                   	retq   
  40351c:	0f 1f 40 00          	nopl   0x0(%rax)
  403520:	48 8b 86 b0 00 00 00 	mov    0xb0(%rsi),%rax
  403527:	31 d2                	xor    %edx,%edx
  403529:	48 39 87 b0 00 00 00 	cmp    %rax,0xb0(%rdi)
  403530:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403535:	0f 97 c2             	seta   %dl
  403538:	0f 43 c2             	cmovae %edx,%eax
  40353b:	c3                   	retq   
  40353c:	0f 1f 40 00          	nopl   0x0(%rax)
  403540:	48 8b 86 b8 00 00 00 	mov    0xb8(%rsi),%rax
  403547:	31 d2                	xor    %edx,%edx
  403549:	48 39 87 b8 00 00 00 	cmp    %rax,0xb8(%rdi)
  403550:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403555:	0f 97 c2             	seta   %dl
  403558:	0f 43 c2             	cmovae %edx,%eax
  40355b:	c3                   	retq   
  40355c:	0f 1f 40 00          	nopl   0x0(%rax)
  403560:	48 8b 46 30          	mov    0x30(%rsi),%rax
  403564:	31 d2                	xor    %edx,%edx
  403566:	48 39 47 30          	cmp    %rax,0x30(%rdi)
  40356a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40356f:	0f 97 c2             	seta   %dl
  403572:	0f 43 c2             	cmovae %edx,%eax
  403575:	c3                   	retq   
  403576:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40357d:	00 00 00 
  403580:	48 8b 86 c0 00 00 00 	mov    0xc0(%rsi),%rax
  403587:	31 d2                	xor    %edx,%edx
  403589:	48 39 87 c0 00 00 00 	cmp    %rax,0xc0(%rdi)
  403590:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403595:	0f 97 c2             	seta   %dl
  403598:	0f 43 c2             	cmovae %edx,%eax
  40359b:	c3                   	retq   
  40359c:	0f 1f 40 00          	nopl   0x0(%rax)
  4035a0:	8b 86 8c 02 00 00    	mov    0x28c(%rsi),%eax
  4035a6:	31 d2                	xor    %edx,%edx
  4035a8:	39 87 8c 02 00 00    	cmp    %eax,0x28c(%rdi)
  4035ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035b3:	0f 9f c2             	setg   %dl
  4035b6:	0f 4d c2             	cmovge %edx,%eax
  4035b9:	c3                   	retq   
  4035ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4035c0:	8b 86 90 02 00 00    	mov    0x290(%rsi),%eax
  4035c6:	31 d2                	xor    %edx,%edx
  4035c8:	39 87 90 02 00 00    	cmp    %eax,0x290(%rdi)
  4035ce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035d3:	0f 9f c2             	setg   %dl
  4035d6:	0f 4d c2             	cmovge %edx,%eax
  4035d9:	c3                   	retq   
  4035da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4035e0:	8b 86 84 02 00 00    	mov    0x284(%rsi),%eax
  4035e6:	31 d2                	xor    %edx,%edx
  4035e8:	39 87 84 02 00 00    	cmp    %eax,0x284(%rdi)
  4035ee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035f3:	0f 9f c2             	setg   %dl
  4035f6:	0f 4d c2             	cmovge %edx,%eax
  4035f9:	c3                   	retq   
  4035fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403600:	8b 86 88 02 00 00    	mov    0x288(%rsi),%eax
  403606:	31 d2                	xor    %edx,%edx
  403608:	39 87 88 02 00 00    	cmp    %eax,0x288(%rdi)
  40360e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403613:	0f 9f c2             	setg   %dl
  403616:	0f 4d c2             	cmovge %edx,%eax
  403619:	c3                   	retq   
  40361a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403620:	8b 86 94 02 00 00    	mov    0x294(%rsi),%eax
  403626:	31 d2                	xor    %edx,%edx
  403628:	39 87 94 02 00 00    	cmp    %eax,0x294(%rdi)
  40362e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403633:	0f 9f c2             	setg   %dl
  403636:	0f 4d c2             	cmovge %edx,%eax
  403639:	c3                   	retq   
  40363a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403640:	8b 86 98 02 00 00    	mov    0x298(%rsi),%eax
  403646:	31 d2                	xor    %edx,%edx
  403648:	39 87 98 02 00 00    	cmp    %eax,0x298(%rdi)
  40364e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403653:	0f 9f c2             	setg   %dl
  403656:	0f 4d c2             	cmovge %edx,%eax
  403659:	c3                   	retq   
  40365a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403660:	8b 86 9c 02 00 00    	mov    0x29c(%rsi),%eax
  403666:	31 d2                	xor    %edx,%edx
  403668:	39 87 9c 02 00 00    	cmp    %eax,0x29c(%rdi)
  40366e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403673:	0f 9f c2             	setg   %dl
  403676:	0f 4d c2             	cmovge %edx,%eax
  403679:	c3                   	retq   
  40367a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403680:	8b 86 a0 02 00 00    	mov    0x2a0(%rsi),%eax
  403686:	31 d2                	xor    %edx,%edx
  403688:	39 87 a0 02 00 00    	cmp    %eax,0x2a0(%rdi)
  40368e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403693:	0f 9f c2             	setg   %dl
  403696:	0f 4d c2             	cmovge %edx,%eax
  403699:	c3                   	retq   
  40369a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4036a0:	8b 07                	mov    (%rdi),%eax
  4036a2:	2b 06                	sub    (%rsi),%eax
  4036a4:	c3                   	retq   
  4036a5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  4036ac:	00 00 00 00 
  4036b0:	8b 87 7c 02 00 00    	mov    0x27c(%rdi),%eax
  4036b6:	2b 86 7c 02 00 00    	sub    0x27c(%rsi),%eax
  4036bc:	c3                   	retq   
  4036bd:	0f 1f 00             	nopl   (%rax)
  4036c0:	8b 47 04             	mov    0x4(%rdi),%eax
  4036c3:	2b 46 04             	sub    0x4(%rsi),%eax
  4036c6:	c3                   	retq   
  4036c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4036ce:	00 00 
  4036d0:	8b 87 70 02 00 00    	mov    0x270(%rdi),%eax
  4036d6:	2b 86 70 02 00 00    	sub    0x270(%rsi),%eax
  4036dc:	c3                   	retq   
  4036dd:	0f 1f 00             	nopl   (%rax)
  4036e0:	8b 87 74 02 00 00    	mov    0x274(%rdi),%eax
  4036e6:	2b 86 74 02 00 00    	sub    0x274(%rsi),%eax
  4036ec:	c3                   	retq   
  4036ed:	0f 1f 00             	nopl   (%rax)
  4036f0:	8b 86 80 02 00 00    	mov    0x280(%rsi),%eax
  4036f6:	31 d2                	xor    %edx,%edx
  4036f8:	39 87 80 02 00 00    	cmp    %eax,0x280(%rdi)
  4036fe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403703:	0f 9f c2             	setg   %dl
  403706:	0f 4d c2             	cmovge %edx,%eax
  403709:	c3                   	retq   
  40370a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403710:	8b 87 a4 02 00 00    	mov    0x2a4(%rdi),%eax
  403716:	2b 86 a4 02 00 00    	sub    0x2a4(%rsi),%eax
  40371c:	c3                   	retq   
  40371d:	0f 1f 00             	nopl   (%rax)
  403720:	8b 47 08             	mov    0x8(%rdi),%eax
  403723:	2b 46 08             	sub    0x8(%rsi),%eax
  403726:	c3                   	retq   
  403727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40372e:	00 00 
  403730:	0f be 47 0c          	movsbl 0xc(%rdi),%eax
  403734:	0f be 56 0c          	movsbl 0xc(%rsi),%edx
  403738:	29 d0                	sub    %edx,%eax
  40373a:	c3                   	retq   
  40373b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403740:	48 8b 96 40 01 00 00 	mov    0x140(%rsi),%rdx
  403747:	48 8b 8f 40 01 00 00 	mov    0x140(%rdi),%rcx
  40374e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403753:	48 03 96 38 01 00 00 	add    0x138(%rsi),%rdx
  40375a:	48 03 8f 38 01 00 00 	add    0x138(%rdi),%rcx
  403761:	31 f6                	xor    %esi,%esi
  403763:	48 39 d1             	cmp    %rdx,%rcx
  403766:	40 0f 97 c6          	seta   %sil
  40376a:	0f 43 c6             	cmovae %esi,%eax
  40376d:	c3                   	retq   
  40376e:	66 90                	xchg   %ax,%ax
  403770:	0f b6 46 0c          	movzbl 0xc(%rsi),%eax
  403774:	48 83 be d0 00 00 00 	cmpq   $0x0,0xd0(%rsi)
  40377b:	00 
  40377c:	88 07                	mov    %al,(%rdi)
  40377e:	0f 8c 7c 00 00 00    	jl     403800 <readtask@plt+0x1f30>
  403784:	0f 84 86 00 00 00    	je     403810 <readtask@plt+0x1f40>
  40378a:	c6 47 01 4e          	movb   $0x4e,0x1(%rdi)
  40378e:	ba 02 00 00 00       	mov    $0x2,%edx
  403793:	b8 02 00 00 00       	mov    $0x2,%eax
  403798:	48 83 be 28 01 00 00 	cmpq   $0x0,0x128(%rsi)
  40379f:	00 
  4037a0:	74 0a                	je     4037ac <readtask@plt+0x1edc>
  4037a2:	83 c0 01             	add    $0x1,%eax
  4037a5:	c6 04 17 4c          	movb   $0x4c,(%rdi,%rdx,1)
  4037a9:	48 63 d0             	movslq %eax,%rdx
  4037ac:	8b 8e 7c 02 00 00    	mov    0x27c(%rsi),%ecx
  4037b2:	39 8e 74 02 00 00    	cmp    %ecx,0x274(%rsi)
  4037b8:	74 36                	je     4037f0 <readtask@plt+0x1f20>
  4037ba:	83 be 78 02 00 00 01 	cmpl   $0x1,0x278(%rsi)
  4037c1:	7e 0a                	jle    4037cd <readtask@plt+0x1efd>
  4037c3:	83 c0 01             	add    $0x1,%eax
  4037c6:	c6 04 17 6c          	movb   $0x6c,(%rdi,%rdx,1)
  4037ca:	48 63 d0             	movslq %eax,%rdx
  4037cd:	44 8b 86 a4 02 00 00 	mov    0x2a4(%rsi),%r8d
  4037d4:	44 39 86 70 02 00 00 	cmp    %r8d,0x270(%rsi)
  4037db:	75 0a                	jne    4037e7 <readtask@plt+0x1f17>
  4037dd:	83 c0 01             	add    $0x1,%eax
  4037e0:	c6 04 17 2b          	movb   $0x2b,(%rdi,%rdx,1)
  4037e4:	48 63 d0             	movslq %eax,%rdx
  4037e7:	c6 04 17 00          	movb   $0x0,(%rdi,%rdx,1)
  4037eb:	c3                   	retq   
  4037ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4037f0:	83 c0 01             	add    $0x1,%eax
  4037f3:	c6 04 17 73          	movb   $0x73,(%rdi,%rdx,1)
  4037f7:	48 63 d0             	movslq %eax,%rdx
  4037fa:	eb be                	jmp    4037ba <readtask@plt+0x1eea>
  4037fc:	0f 1f 40 00          	nopl   0x0(%rax)
  403800:	c6 47 01 3c          	movb   $0x3c,0x1(%rdi)
  403804:	ba 02 00 00 00       	mov    $0x2,%edx
  403809:	b8 02 00 00 00       	mov    $0x2,%eax
  40380e:	eb 88                	jmp    403798 <readtask@plt+0x1ec8>
  403810:	ba 01 00 00 00       	mov    $0x1,%edx
  403815:	b8 01 00 00 00       	mov    $0x1,%eax
  40381a:	e9 79 ff ff ff       	jmpq   403798 <readtask@plt+0x1ec8>
  40381f:	90                   	nop
  403820:	0f b6 46 0c          	movzbl 0xc(%rsi),%eax
  403824:	c6 47 01 00          	movb   $0x0,0x1(%rdi)
  403828:	88 07                	mov    %al,(%rdi)
  40382a:	b8 01 00 00 00       	mov    $0x1,%eax
  40382f:	c3                   	retq   
  403830:	0f b6 15 a9 0b 21 00 	movzbl 0x210ba9(%rip),%edx        # 6143e0 <stderr+0x58>
  403837:	31 c0                	xor    %eax,%eax
  403839:	8b 0d d1 0a 21 00    	mov    0x210ad1(%rip),%ecx        # 614310 <readtask@plt+0x212a40>
  40383f:	84 d2                	test   %dl,%dl
  403841:	0f 84 a9 00 00 00    	je     4038f0 <readtask@plt+0x2020>
  403847:	83 3d 66 0a 21 00 75 	cmpl   $0x75,0x210a66(%rip)        # 6142b4 <readtask@plt+0x2129e4>
  40384e:	be e0 43 61 00       	mov    $0x6143e0,%esi
  403853:	48 89 f8             	mov    %rdi,%rax
  403856:	74 78                	je     4038d0 <readtask@plt+0x2000>
  403858:	80 fa 4c             	cmp    $0x4c,%dl
  40385b:	0f 84 af 00 00 00    	je     403910 <readtask@plt+0x2040>
  403861:	0f 8f 91 00 00 00    	jg     4038f8 <readtask@plt+0x2028>
  403867:	80 fa 20             	cmp    $0x20,%dl
  40386a:	0f 84 b0 00 00 00    	je     403920 <readtask@plt+0x2050>
  403870:	80 fa 2b             	cmp    $0x2b,%dl
  403873:	0f 84 97 00 00 00    	je     403910 <readtask@plt+0x2040>
  403879:	84 d2                	test   %dl,%dl
  40387b:	74 23                	je     4038a0 <readtask@plt+0x1fd0>
  40387d:	0f 1f 00             	nopl   (%rax)
  403880:	83 f9 03             	cmp    $0x3,%ecx
  403883:	0f 8e a7 00 00 00    	jle    403930 <readtask@plt+0x2060>
  403889:	48 83 c6 01          	add    $0x1,%rsi
  40388d:	48 83 c0 04          	add    $0x4,%rax
  403891:	83 e9 04             	sub    $0x4,%ecx
  403894:	0f b6 16             	movzbl (%rsi),%edx
  403897:	84 d2                	test   %dl,%dl
  403899:	75 bd                	jne    403858 <readtask@plt+0x1f88>
  40389b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4038a0:	29 f8                	sub    %edi,%eax
  4038a2:	c3                   	retq   
  4038a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4038a8:	80 fa 7c             	cmp    $0x7c,%dl
  4038ab:	75 0c                	jne    4038b9 <readtask@plt+0x1fe9>
  4038ad:	0f 1f 00             	nopl   (%rax)
  4038b0:	66 c7 00 20 20       	movw   $0x2020,(%rax)
  4038b5:	c6 40 02 00          	movb   $0x0,0x2(%rax)
  4038b9:	83 f9 01             	cmp    $0x1,%ecx
  4038bc:	7e 72                	jle    403930 <readtask@plt+0x2060>
  4038be:	48 83 c6 01          	add    $0x1,%rsi
  4038c2:	48 83 c0 02          	add    $0x2,%rax
  4038c6:	83 e9 02             	sub    $0x2,%ecx
  4038c9:	0f b6 16             	movzbl (%rsi),%edx
  4038cc:	84 d2                	test   %dl,%dl
  4038ce:	74 18                	je     4038e8 <readtask@plt+0x2018>
  4038d0:	80 fa 4c             	cmp    $0x4c,%dl
  4038d3:	74 db                	je     4038b0 <readtask@plt+0x1fe0>
  4038d5:	7f d1                	jg     4038a8 <readtask@plt+0x1fd8>
  4038d7:	80 fa 20             	cmp    $0x20,%dl
  4038da:	74 d4                	je     4038b0 <readtask@plt+0x1fe0>
  4038dc:	80 fa 2b             	cmp    $0x2b,%dl
  4038df:	90                   	nop
  4038e0:	74 ce                	je     4038b0 <readtask@plt+0x1fe0>
  4038e2:	84 d2                	test   %dl,%dl
  4038e4:	74 ba                	je     4038a0 <readtask@plt+0x1fd0>
  4038e6:	eb d1                	jmp    4038b9 <readtask@plt+0x1fe9>
  4038e8:	29 f8                	sub    %edi,%eax
  4038ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4038f0:	f3 c3                	repz retq 
  4038f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4038f8:	80 fa 7c             	cmp    $0x7c,%dl
  4038fb:	75 83                	jne    403880 <readtask@plt+0x1fb0>
  4038fd:	c7 00 20 7c 20 20    	movl   $0x20207c20,(%rax)
  403903:	c6 40 04 00          	movb   $0x0,0x4(%rax)
  403907:	e9 74 ff ff ff       	jmpq   403880 <readtask@plt+0x1fb0>
  40390c:	0f 1f 40 00          	nopl   0x0(%rax)
  403910:	c7 00 20 5c 5f 20    	movl   $0x205f5c20,(%rax)
  403916:	c6 40 04 00          	movb   $0x0,0x4(%rax)
  40391a:	e9 61 ff ff ff       	jmpq   403880 <readtask@plt+0x1fb0>
  40391f:	90                   	nop
  403920:	c7 00 20 20 20 20    	movl   $0x20202020,(%rax)
  403926:	c6 40 04 00          	movb   $0x0,0x4(%rax)
  40392a:	e9 51 ff ff ff       	jmpq   403880 <readtask@plt+0x1fb0>
  40392f:	90                   	nop
  403930:	48 63 c9             	movslq %ecx,%rcx
  403933:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
  403937:	8b 05 d3 09 21 00    	mov    0x2109d3(%rip),%eax        # 614310 <readtask@plt+0x212a40>
  40393d:	c3                   	retq   
  40393e:	66 90                	xchg   %ax,%ax
  403940:	48 8b 36             	mov    (%rsi),%rsi
  403943:	48 8b 3f             	mov    (%rdi),%rdi
  403946:	e9 85 dd ff ff       	jmpq   4016d0 <strcmp@plt>
  40394b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403950:	48 81 c6 d8 01 00 00 	add    $0x1d8,%rsi
  403957:	48 81 c7 d8 01 00 00 	add    $0x1d8,%rdi
  40395e:	e9 6d dd ff ff       	jmpq   4016d0 <strcmp@plt>
  403963:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40396a:	84 00 00 00 00 00 
  403970:	48 81 c6 28 02 00 00 	add    $0x228,%rsi
  403977:	48 81 c7 28 02 00 00 	add    $0x228,%rdi
  40397e:	e9 4d dd ff ff       	jmpq   4016d0 <strcmp@plt>
  403983:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40398a:	84 00 00 00 00 00 
  403990:	48 81 c6 c4 01 00 00 	add    $0x1c4,%rsi
  403997:	48 81 c7 c4 01 00 00 	add    $0x1c4,%rdi
  40399e:	e9 2d dd ff ff       	jmpq   4016d0 <strcmp@plt>
  4039a3:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4039aa:	84 00 00 00 00 00 
  4039b0:	48 81 c6 00 02 00 00 	add    $0x200,%rsi
  4039b7:	48 81 c7 00 02 00 00 	add    $0x200,%rdi
  4039be:	e9 0d dd ff ff       	jmpq   4016d0 <strcmp@plt>
  4039c3:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4039ca:	84 00 00 00 00 00 
  4039d0:	48 81 c6 ec 01 00 00 	add    $0x1ec,%rsi
  4039d7:	48 81 c7 ec 01 00 00 	add    $0x1ec,%rdi
  4039de:	e9 ed dc ff ff       	jmpq   4016d0 <strcmp@plt>
  4039e3:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4039ea:	84 00 00 00 00 00 
  4039f0:	48 81 c6 3c 02 00 00 	add    $0x23c,%rsi
  4039f7:	48 81 c7 3c 02 00 00 	add    $0x23c,%rdi
  4039fe:	e9 cd dc ff ff       	jmpq   4016d0 <strcmp@plt>
  403a03:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  403a0a:	84 00 00 00 00 00 
  403a10:	48 81 c6 b0 01 00 00 	add    $0x1b0,%rsi
  403a17:	48 81 c7 b0 01 00 00 	add    $0x1b0,%rdi
  403a1e:	e9 ad dc ff ff       	jmpq   4016d0 <strcmp@plt>
  403a23:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  403a2a:	84 00 00 00 00 00 
  403a30:	48 81 c6 14 02 00 00 	add    $0x214,%rsi
  403a37:	48 81 c7 14 02 00 00 	add    $0x214,%rdi
  403a3e:	e9 8d dc ff ff       	jmpq   4016d0 <strcmp@plt>
  403a43:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  403a4a:	84 00 00 00 00 00 
  403a50:	48 81 c6 50 02 00 00 	add    $0x250,%rsi
  403a57:	48 81 c7 50 02 00 00 	add    $0x250,%rdi
  403a5e:	e9 6d dc ff ff       	jmpq   4016d0 <strcmp@plt>
  403a63:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  403a6a:	84 00 00 00 00 00 
  403a70:	48 8b 36             	mov    (%rsi),%rsi
  403a73:	48 8b 3f             	mov    (%rdi),%rdi
  403a76:	e9 55 dc ff ff       	jmpq   4016d0 <strcmp@plt>
  403a7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403a80:	41 b9 2d 00 00 00    	mov    $0x2d,%r9d
  403a86:	41 b8 27 ab 40 00    	mov    $0x40ab27,%r8d
  403a8c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403a93:	ba 01 00 00 00       	mov    $0x1,%edx
  403a98:	be f0 00 00 00       	mov    $0xf0,%esi
  403a9d:	31 c0                	xor    %eax,%eax
  403a9f:	e9 3c da ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  403aa4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  403aab:	00 00 00 00 00 
  403ab0:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  403ab5:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  403aba:	31 d2                	xor    %edx,%edx
  403abc:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  403ac1:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  403ac6:	49 bc 89 88 88 88 88 	movabs $0x8888888888888889,%r12
  403acd:	88 88 88 
  403ad0:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  403ad5:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  403ada:	48 83 ec 48          	sub    $0x48,%rsp
  403ade:	48 8b 46 30          	mov    0x30(%rsi),%rax
  403ae2:	48 8b 35 77 07 21 00 	mov    0x210777(%rip),%rsi        # 614260 <readtask@plt+0x212990>
  403ae9:	48 89 fd             	mov    %rdi,%rbp
  403aec:	45 31 ed             	xor    %r13d,%r13d
  403aef:	48 f7 35 6a 08 21 00 	divq   0x21086a(%rip)        # 614360 <Hertz>
  403af6:	48 29 c6             	sub    %rax,%rsi
  403af9:	48 89 f0             	mov    %rsi,%rax
  403afc:	49 f7 e4             	mul    %r12
  403aff:	48 89 d1             	mov    %rdx,%rcx
  403b02:	48 c1 e9 05          	shr    $0x5,%rcx
  403b06:	48 89 c8             	mov    %rcx,%rax
  403b09:	48 89 cf             	mov    %rcx,%rdi
  403b0c:	4c 8d 34 8e          	lea    (%rsi,%rcx,4),%r14
  403b10:	49 f7 e4             	mul    %r12
  403b13:	48 c1 e7 06          	shl    $0x6,%rdi
  403b17:	41 29 fe             	sub    %edi,%r14d
  403b1a:	49 89 d4             	mov    %rdx,%r12
  403b1d:	48 ba ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rdx
  403b24:	aa aa aa 
  403b27:	49 c1 ec 05          	shr    $0x5,%r12
  403b2b:	4c 89 e0             	mov    %r12,%rax
  403b2e:	4c 89 e3             	mov    %r12,%rbx
  403b31:	4e 8d 3c a1          	lea    (%rcx,%r12,4),%r15
  403b35:	48 f7 e2             	mul    %rdx
  403b38:	48 c1 e3 06          	shl    $0x6,%rbx
  403b3c:	41 29 df             	sub    %ebx,%r15d
  403b3f:	48 c1 ea 04          	shr    $0x4,%rdx
  403b43:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
  403b47:	89 d3                	mov    %edx,%ebx
  403b49:	48 c1 e0 03          	shl    $0x3,%rax
  403b4d:	41 29 c4             	sub    %eax,%r12d
  403b50:	85 d2                	test   %edx,%edx
  403b52:	0f 85 88 00 00 00    	jne    403be0 <readtask@plt+0x2310>
  403b58:	49 01 ed             	add    %rbp,%r13
  403b5b:	31 c0                	xor    %eax,%eax
  403b5d:	44 09 e3             	or     %r12d,%ebx
  403b60:	74 24                	je     403b86 <readtask@plt+0x22b6>
  403b62:	45 89 e1             	mov    %r12d,%r9d
  403b65:	41 b8 2e ab 40 00    	mov    $0x40ab2e,%r8d
  403b6b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403b72:	ba 01 00 00 00       	mov    $0x1,%edx
  403b77:	be f0 00 00 00       	mov    $0xf0,%esi
  403b7c:	4c 89 ef             	mov    %r13,%rdi
  403b7f:	e8 5c d9 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  403b84:	48 98                	cltq   
  403b86:	4d 8d 6c 05 00       	lea    0x0(%r13,%rax,1),%r13
  403b8b:	45 89 f9             	mov    %r15d,%r9d
  403b8e:	41 b8 47 ab 40 00    	mov    $0x40ab47,%r8d
  403b94:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403b9b:	ba 01 00 00 00       	mov    $0x1,%edx
  403ba0:	be f0 00 00 00       	mov    $0xf0,%esi
  403ba5:	4c 89 ef             	mov    %r13,%rdi
  403ba8:	31 c0                	xor    %eax,%eax
  403baa:	44 89 34 24          	mov    %r14d,(%rsp)
  403bae:	e8 2d d9 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  403bb3:	48 98                	cltq   
  403bb5:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  403bba:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
  403bbf:	4c 01 e8             	add    %r13,%rax
  403bc2:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
  403bc7:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
  403bcc:	48 29 e8             	sub    %rbp,%rax
  403bcf:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
  403bd4:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
  403bd9:	48 83 c4 48          	add    $0x48,%rsp
  403bdd:	c3                   	retq   
  403bde:	66 90                	xchg   %ax,%ax
  403be0:	41 89 d1             	mov    %edx,%r9d
  403be3:	41 b8 2a ab 40 00    	mov    $0x40ab2a,%r8d
  403be9:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403bf0:	ba 01 00 00 00       	mov    $0x1,%edx
  403bf5:	be f0 00 00 00       	mov    $0xf0,%esi
  403bfa:	48 89 ef             	mov    %rbp,%rdi
  403bfd:	31 c0                	xor    %eax,%eax
  403bff:	e8 dc d8 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  403c04:	4c 63 e8             	movslq %eax,%r13
  403c07:	e9 4c ff ff ff       	jmpq   403b58 <readtask@plt+0x2288>
  403c0c:	0f 1f 40 00          	nopl   0x0(%rax)
  403c10:	8b 05 7e 06 21 00    	mov    0x21067e(%rip),%eax        # 614294 <readtask@plt+0x2129c4>
  403c16:	48 8b 4e 18          	mov    0x18(%rsi),%rcx
  403c1a:	48 03 4e 10          	add    0x10(%rsi),%rcx
  403c1e:	85 c0                	test   %eax,%eax
  403c20:	74 08                	je     403c2a <readtask@plt+0x235a>
  403c22:	48 03 4e 28          	add    0x28(%rsi),%rcx
  403c26:	48 03 4e 20          	add    0x20(%rsi),%rcx
  403c2a:	48 8b 46 30          	mov    0x30(%rsi),%rax
  403c2e:	4c 8b 05 2b 07 21 00 	mov    0x21072b(%rip),%r8        # 614360 <Hertz>
  403c35:	31 d2                	xor    %edx,%edx
  403c37:	48 8b 35 22 06 21 00 	mov    0x210622(%rip),%rsi        # 614260 <readtask@plt+0x212990>
  403c3e:	45 31 c9             	xor    %r9d,%r9d
  403c41:	49 f7 f0             	div    %r8
  403c44:	48 29 c6             	sub    %rax,%rsi
  403c47:	74 20                	je     403c69 <readtask@plt+0x2399>
  403c49:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  403c4d:	31 d2                	xor    %edx,%edx
  403c4f:	41 b1 63             	mov    $0x63,%r9b
  403c52:	48 8d 04 89          	lea    (%rcx,%rcx,4),%rax
  403c56:	48 c1 e0 02          	shl    $0x2,%rax
  403c5a:	49 f7 f0             	div    %r8
  403c5d:	31 d2                	xor    %edx,%edx
  403c5f:	48 f7 f6             	div    %rsi
  403c62:	83 f8 64             	cmp    $0x64,%eax
  403c65:	44 0f 42 c8          	cmovb  %eax,%r9d
  403c69:	41 b8 34 ab 40 00    	mov    $0x40ab34,%r8d
  403c6f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403c76:	ba 01 00 00 00       	mov    $0x1,%edx
  403c7b:	be f0 00 00 00       	mov    $0xf0,%esi
  403c80:	31 c0                	xor    %eax,%eax
  403c82:	e9 59 d8 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  403c87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  403c8e:	00 00 
  403c90:	48 83 ec 18          	sub    $0x18,%rsp
  403c94:	8b 15 fa 05 21 00    	mov    0x2105fa(%rip),%edx        # 614294 <readtask@plt+0x2129c4>
  403c9a:	48 8b 4e 18          	mov    0x18(%rsi),%rcx
  403c9e:	48 03 4e 10          	add    0x10(%rsi),%rcx
  403ca2:	85 d2                	test   %edx,%edx
  403ca4:	74 08                	je     403cae <readtask@plt+0x23de>
  403ca6:	48 03 4e 28          	add    0x28(%rsi),%rcx
  403caa:	48 03 4e 20          	add    0x20(%rsi),%rcx
  403cae:	48 8b 46 30          	mov    0x30(%rsi),%rax
  403cb2:	4c 8b 05 a7 06 21 00 	mov    0x2106a7(%rip),%r8        # 614360 <Hertz>
  403cb9:	31 d2                	xor    %edx,%edx
  403cbb:	48 8b 35 9e 05 21 00 	mov    0x21059e(%rip),%rsi        # 614260 <readtask@plt+0x212990>
  403cc2:	45 31 c9             	xor    %r9d,%r9d
  403cc5:	45 31 d2             	xor    %r10d,%r10d
  403cc8:	49 f7 f0             	div    %r8
  403ccb:	48 29 c6             	sub    %rax,%rsi
  403cce:	74 68                	je     403d38 <readtask@plt+0x2468>
  403cd0:	48 69 c1 e8 03 00 00 	imul   $0x3e8,%rcx,%rax
  403cd7:	31 d2                	xor    %edx,%edx
  403cd9:	49 f7 f0             	div    %r8
  403cdc:	31 d2                	xor    %edx,%edx
  403cde:	48 f7 f6             	div    %rsi
  403ce1:	be cd cc cc cc       	mov    $0xcccccccd,%esi
  403ce6:	89 c1                	mov    %eax,%ecx
  403ce8:	f7 e6                	mul    %esi
  403cea:	81 f9 e7 03 00 00    	cmp    $0x3e7,%ecx
  403cf0:	76 2e                	jbe    403d20 <readtask@plt+0x2450>
  403cf2:	41 89 d1             	mov    %edx,%r9d
  403cf5:	41 b8 3b ab 40 00    	mov    $0x40ab3b,%r8d
  403cfb:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403d02:	41 c1 e9 03          	shr    $0x3,%r9d
  403d06:	ba 01 00 00 00       	mov    $0x1,%edx
  403d0b:	be f0 00 00 00       	mov    $0xf0,%esi
  403d10:	31 c0                	xor    %eax,%eax
  403d12:	48 83 c4 18          	add    $0x18,%rsp
  403d16:	e9 c5 d7 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  403d1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403d20:	c1 ea 03             	shr    $0x3,%edx
  403d23:	41 89 ca             	mov    %ecx,%r10d
  403d26:	44 8d 04 92          	lea    (%rdx,%rdx,4),%r8d
  403d2a:	41 89 d1             	mov    %edx,%r9d
  403d2d:	45 01 c0             	add    %r8d,%r8d
  403d30:	45 29 c2             	sub    %r8d,%r10d
  403d33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403d38:	41 b8 38 ab 40 00    	mov    $0x40ab38,%r8d
  403d3e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403d45:	ba 01 00 00 00       	mov    $0x1,%edx
  403d4a:	be f0 00 00 00       	mov    $0xf0,%esi
  403d4f:	31 c0                	xor    %eax,%eax
  403d51:	44 89 14 24          	mov    %r10d,(%rsp)
  403d55:	e8 86 d7 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  403d5a:	48 83 c4 18          	add    $0x18,%rsp
  403d5e:	c3                   	retq   
  403d5f:	90                   	nop
  403d60:	44 8b 05 2d 05 21 00 	mov    0x21052d(%rip),%r8d        # 614294 <readtask@plt+0x2129c4>
  403d67:	48 8b 4e 18          	mov    0x18(%rsi),%rcx
  403d6b:	48 03 4e 10          	add    0x10(%rsi),%rcx
  403d6f:	45 85 c0             	test   %r8d,%r8d
  403d72:	74 08                	je     403d7c <readtask@plt+0x24ac>
  403d74:	48 03 4e 28          	add    0x28(%rsi),%rcx
  403d78:	48 03 4e 20          	add    0x20(%rsi),%rcx
  403d7c:	48 8b 46 30          	mov    0x30(%rsi),%rax
  403d80:	4c 8b 05 d9 05 21 00 	mov    0x2105d9(%rip),%r8        # 614360 <Hertz>
  403d87:	31 d2                	xor    %edx,%edx
  403d89:	48 8b 35 d0 04 21 00 	mov    0x2104d0(%rip),%rsi        # 614260 <readtask@plt+0x212990>
  403d90:	45 31 c9             	xor    %r9d,%r9d
  403d93:	49 f7 f0             	div    %r8
  403d96:	48 29 c6             	sub    %rax,%rsi
  403d99:	74 1f                	je     403dba <readtask@plt+0x24ea>
  403d9b:	48 69 c1 e8 03 00 00 	imul   $0x3e8,%rcx,%rax
  403da2:	31 d2                	xor    %edx,%edx
  403da4:	66 41 b9 e7 03       	mov    $0x3e7,%r9w
  403da9:	49 f7 f0             	div    %r8
  403dac:	31 d2                	xor    %edx,%edx
  403dae:	48 f7 f6             	div    %rsi
  403db1:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  403db6:	44 0f 42 c8          	cmovb  %eax,%r9d
  403dba:	41 b8 3e ab 40 00    	mov    $0x40ab3e,%r8d
  403dc0:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403dc7:	ba 01 00 00 00       	mov    $0x1,%edx
  403dcc:	be f0 00 00 00       	mov    $0xf0,%esi
  403dd1:	31 c0                	xor    %eax,%eax
  403dd3:	e9 08 d7 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  403dd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403ddf:	00 
  403de0:	44 8b 8e 70 02 00 00 	mov    0x270(%rsi),%r9d
  403de7:	41 b8 3b ab 40 00    	mov    $0x40ab3b,%r8d
  403ded:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403df4:	ba 01 00 00 00       	mov    $0x1,%edx
  403df9:	be f0 00 00 00       	mov    $0xf0,%esi
  403dfe:	31 c0                	xor    %eax,%eax
  403e00:	e9 db d6 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  403e05:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  403e0c:	00 00 00 00 
  403e10:	44 8b 8e 7c 02 00 00 	mov    0x27c(%rsi),%r9d
  403e17:	41 b8 3b ab 40 00    	mov    $0x40ab3b,%r8d
  403e1d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403e24:	ba 01 00 00 00       	mov    $0x1,%edx
  403e29:	be f0 00 00 00       	mov    $0xf0,%esi
  403e2e:	31 c0                	xor    %eax,%eax
  403e30:	e9 ab d6 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  403e35:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  403e3c:	00 00 00 00 
  403e40:	44 8b 4e 04          	mov    0x4(%rsi),%r9d
  403e44:	41 b8 3b ab 40 00    	mov    $0x40ab3b,%r8d
  403e4a:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403e51:	ba 01 00 00 00       	mov    $0x1,%edx
  403e56:	be f0 00 00 00       	mov    $0xf0,%esi
  403e5b:	31 c0                	xor    %eax,%eax
  403e5d:	e9 7e d6 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  403e62:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  403e69:	1f 84 00 00 00 00 00 
  403e70:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
  403e75:	48 89 6c 24 e0       	mov    %rbp,-0x20(%rsp)
  403e7a:	31 d2                	xor    %edx,%edx
  403e7c:	4c 89 64 24 e8       	mov    %r12,-0x18(%rsp)
  403e81:	4c 89 6c 24 f0       	mov    %r13,-0x10(%rsp)
  403e86:	48 89 fd             	mov    %rdi,%rbp
  403e89:	4c 89 74 24 f8       	mov    %r14,-0x8(%rsp)
  403e8e:	48 83 ec 38          	sub    $0x38,%rsp
  403e92:	48 8b 46 18          	mov    0x18(%rsi),%rax
  403e96:	48 03 46 10          	add    0x10(%rsi),%rax
  403e9a:	49 be 89 88 88 88 88 	movabs $0x8888888888888889,%r14
  403ea1:	88 88 88 
  403ea4:	48 f7 35 b5 04 21 00 	divq   0x2104b5(%rip)        # 614360 <Hertz>
  403eab:	48 89 c6             	mov    %rax,%rsi
  403eae:	49 f7 e6             	mul    %r14
  403eb1:	48 89 d1             	mov    %rdx,%rcx
  403eb4:	48 c1 e9 05          	shr    $0x5,%rcx
  403eb8:	48 89 c8             	mov    %rcx,%rax
  403ebb:	48 89 cf             	mov    %rcx,%rdi
  403ebe:	4c 8d 24 8e          	lea    (%rsi,%rcx,4),%r12
  403ec2:	49 f7 e6             	mul    %r14
  403ec5:	48 c1 e7 06          	shl    $0x6,%rdi
  403ec9:	41 29 fc             	sub    %edi,%r12d
  403ecc:	31 ff                	xor    %edi,%edi
  403ece:	49 89 d6             	mov    %rdx,%r14
  403ed1:	48 ba ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rdx
  403ed8:	aa aa aa 
  403edb:	49 c1 ee 05          	shr    $0x5,%r14
  403edf:	4c 89 f0             	mov    %r14,%rax
  403ee2:	4c 89 f3             	mov    %r14,%rbx
  403ee5:	4e 8d 2c b1          	lea    (%rcx,%r14,4),%r13
  403ee9:	48 f7 e2             	mul    %rdx
  403eec:	48 c1 e3 06          	shl    $0x6,%rbx
  403ef0:	41 29 dd             	sub    %ebx,%r13d
  403ef3:	31 db                	xor    %ebx,%ebx
  403ef5:	48 c1 ea 04          	shr    $0x4,%rdx
  403ef9:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
  403efd:	48 c1 e0 03          	shl    $0x3,%rax
  403f01:	41 29 c6             	sub    %eax,%r14d
  403f04:	85 d2                	test   %edx,%edx
  403f06:	74 29                	je     403f31 <readtask@plt+0x2661>
  403f08:	41 89 d1             	mov    %edx,%r9d
  403f0b:	48 89 ef             	mov    %rbp,%rdi
  403f0e:	41 b8 2a ab 40 00    	mov    $0x40ab2a,%r8d
  403f14:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403f1b:	ba 01 00 00 00       	mov    $0x1,%edx
  403f20:	be f0 00 00 00       	mov    $0xf0,%esi
  403f25:	31 c0                	xor    %eax,%eax
  403f27:	e8 b4 d5 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  403f2c:	89 c3                	mov    %eax,%ebx
  403f2e:	48 63 f8             	movslq %eax,%rdi
  403f31:	48 01 ef             	add    %rbp,%rdi
  403f34:	45 89 f1             	mov    %r14d,%r9d
  403f37:	41 b8 42 ab 40 00    	mov    $0x40ab42,%r8d
  403f3d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403f44:	ba 01 00 00 00       	mov    $0x1,%edx
  403f49:	be f0 00 00 00       	mov    $0xf0,%esi
  403f4e:	31 c0                	xor    %eax,%eax
  403f50:	44 89 64 24 08       	mov    %r12d,0x8(%rsp)
  403f55:	44 89 2c 24          	mov    %r13d,(%rsp)
  403f59:	e8 82 d5 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  403f5e:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
  403f63:	01 d8                	add    %ebx,%eax
  403f65:	4c 8b 64 24 20       	mov    0x20(%rsp),%r12
  403f6a:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  403f6f:	4c 8b 6c 24 28       	mov    0x28(%rsp),%r13
  403f74:	4c 8b 74 24 30       	mov    0x30(%rsp),%r14
  403f79:	48 83 c4 38          	add    $0x38,%rsp
  403f7d:	c3                   	retq   
  403f7e:	66 90                	xchg   %ax,%ax
  403f80:	4c 8b 8e 20 01 00 00 	mov    0x120(%rsi),%r9
  403f87:	41 b8 51 ab 40 00    	mov    $0x40ab51,%r8d
  403f8d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403f94:	ba 01 00 00 00       	mov    $0x1,%edx
  403f99:	be f0 00 00 00       	mov    $0xf0,%esi
  403f9e:	31 c0                	xor    %eax,%eax
  403fa0:	e9 3b d5 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  403fa5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  403fac:	00 00 00 00 
  403fb0:	4c 8b 8e c8 00 00 00 	mov    0xc8(%rsi),%r9
  403fb7:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  403fbd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403fc4:	ba 01 00 00 00       	mov    $0x1,%edx
  403fc9:	be f0 00 00 00       	mov    $0xf0,%esi
  403fce:	31 c0                	xor    %eax,%eax
  403fd0:	e9 0b d5 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  403fd5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  403fdc:	00 00 00 00 
  403fe0:	4c 8b 8e c8 00 00 00 	mov    0xc8(%rsi),%r9
  403fe7:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  403fed:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  403ff4:	ba 01 00 00 00       	mov    $0x1,%edx
  403ff9:	be f0 00 00 00       	mov    $0xf0,%esi
  403ffe:	31 c0                	xor    %eax,%eax
  404000:	49 83 c1 3c          	add    $0x3c,%r9
  404004:	e9 d7 d4 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404009:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404010:	4c 8b 8e c8 00 00 00 	mov    0xc8(%rsi),%r9
  404017:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  40401d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404024:	ba 01 00 00 00       	mov    $0x1,%edx
  404029:	be f0 00 00 00       	mov    $0xf0,%esi
  40402e:	31 c0                	xor    %eax,%eax
  404030:	49 83 e9 14          	sub    $0x14,%r9
  404034:	e9 a7 d4 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404039:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404040:	4c 8b 8e c8 00 00 00 	mov    0xc8(%rsi),%r9
  404047:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  40404d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404054:	ba 01 00 00 00       	mov    $0x1,%edx
  404059:	be f0 00 00 00       	mov    $0xf0,%esi
  40405e:	31 c0                	xor    %eax,%eax
  404060:	49 83 c1 01          	add    $0x1,%r9
  404064:	e9 77 d4 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404069:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404070:	4c 8b 8e c8 00 00 00 	mov    0xc8(%rsi),%r9
  404077:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  40407d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404084:	ba 01 00 00 00       	mov    $0x1,%edx
  404089:	be f0 00 00 00       	mov    $0xf0,%esi
  40408e:	31 c0                	xor    %eax,%eax
  404090:	49 83 c1 64          	add    $0x64,%r9
  404094:	e9 47 d4 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404099:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4040a0:	41 b9 27 00 00 00    	mov    $0x27,%r9d
  4040a6:	4c 2b 8e c8 00 00 00 	sub    0xc8(%rsi),%r9
  4040ad:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  4040b3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4040ba:	ba 01 00 00 00       	mov    $0x1,%edx
  4040bf:	be f0 00 00 00       	mov    $0xf0,%esi
  4040c4:	31 c0                	xor    %eax,%eax
  4040c6:	e9 15 d4 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  4040cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4040d0:	4c 8b 8e c8 00 00 00 	mov    0xc8(%rsi),%r9
  4040d7:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  4040dd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4040e4:	ba 01 00 00 00       	mov    $0x1,%edx
  4040e9:	be f0 00 00 00       	mov    $0xf0,%esi
  4040ee:	31 c0                	xor    %eax,%eax
  4040f0:	49 f7 d1             	not    %r9
  4040f3:	e9 e8 d3 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  4040f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4040ff:	00 
  404100:	48 8b 86 60 01 00 00 	mov    0x160(%rsi),%rax
  404107:	48 83 f8 05          	cmp    $0x5,%rax
  40410b:	0f 84 57 01 00 00    	je     404268 <readtask@plt+0x2998>
  404111:	76 3d                	jbe    404150 <readtask@plt+0x2880>
  404113:	48 83 f8 08          	cmp    $0x8,%rax
  404117:	0f 84 1b 01 00 00    	je     404238 <readtask@plt+0x2968>
  40411d:	0f 1f 00             	nopl   (%rax)
  404120:	77 5e                	ja     404180 <readtask@plt+0x28b0>
  404122:	48 83 f8 06          	cmp    $0x6,%rax
  404126:	0f 84 dc 00 00 00    	je     404208 <readtask@plt+0x2938>
  40412c:	48 83 f8 07          	cmp    $0x7,%rax
  404130:	0f 84 ba 00 00 00    	je     4041f0 <readtask@plt+0x2920>
  404136:	ba 73 ab 40 00       	mov    $0x40ab73,%edx
  40413b:	be f0 00 00 00       	mov    $0xf0,%esi
  404140:	31 c0                	xor    %eax,%eax
  404142:	e9 e9 d4 ff ff       	jmpq   401630 <snprintf@plt>
  404147:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40414e:	00 00 
  404150:	48 83 f8 02          	cmp    $0x2,%rax
  404154:	0f 84 f6 00 00 00    	je     404250 <readtask@plt+0x2980>
  40415a:	76 44                	jbe    4041a0 <readtask@plt+0x28d0>
  40415c:	48 83 f8 03          	cmp    $0x3,%rax
  404160:	0f 84 ba 00 00 00    	je     404220 <readtask@plt+0x2950>
  404166:	48 83 f8 04          	cmp    $0x4,%rax
  40416a:	75 ca                	jne    404136 <readtask@plt+0x2866>
  40416c:	ba 5f ab 40 00       	mov    $0x40ab5f,%edx
  404171:	be f0 00 00 00       	mov    $0xf0,%esi
  404176:	31 c0                	xor    %eax,%eax
  404178:	e9 b3 d4 ff ff       	jmpq   401630 <snprintf@plt>
  40417d:	0f 1f 00             	nopl   (%rax)
  404180:	48 83 f8 09          	cmp    $0x9,%rax
  404184:	74 3a                	je     4041c0 <readtask@plt+0x28f0>
  404186:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40418a:	75 aa                	jne    404136 <readtask@plt+0x2866>
  40418c:	ba e4 ab 40 00       	mov    $0x40abe4,%edx
  404191:	be f0 00 00 00       	mov    $0xf0,%esi
  404196:	31 c0                	xor    %eax,%eax
  404198:	e9 93 d4 ff ff       	jmpq   401630 <snprintf@plt>
  40419d:	0f 1f 00             	nopl   (%rax)
  4041a0:	48 85 c0             	test   %rax,%rax
  4041a3:	74 33                	je     4041d8 <readtask@plt+0x2908>
  4041a5:	48 83 f8 01          	cmp    $0x1,%rax
  4041a9:	75 8b                	jne    404136 <readtask@plt+0x2866>
  4041ab:	ba 5c ab 40 00       	mov    $0x40ab5c,%edx
  4041b0:	be f0 00 00 00       	mov    $0xf0,%esi
  4041b5:	31 c0                	xor    %eax,%eax
  4041b7:	e9 74 d4 ff ff       	jmpq   401630 <snprintf@plt>
  4041bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4041c0:	ba 70 ab 40 00       	mov    $0x40ab70,%edx
  4041c5:	be f0 00 00 00       	mov    $0xf0,%esi
  4041ca:	31 c0                	xor    %eax,%eax
  4041cc:	e9 5f d4 ff ff       	jmpq   401630 <snprintf@plt>
  4041d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4041d8:	ba 59 ab 40 00       	mov    $0x40ab59,%edx
  4041dd:	be f0 00 00 00       	mov    $0xf0,%esi
  4041e2:	31 c0                	xor    %eax,%eax
  4041e4:	e9 47 d4 ff ff       	jmpq   401630 <snprintf@plt>
  4041e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4041f0:	ba 6a ab 40 00       	mov    $0x40ab6a,%edx
  4041f5:	be f0 00 00 00       	mov    $0xf0,%esi
  4041fa:	31 c0                	xor    %eax,%eax
  4041fc:	e9 2f d4 ff ff       	jmpq   401630 <snprintf@plt>
  404201:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404208:	ba 67 ab 40 00       	mov    $0x40ab67,%edx
  40420d:	be f0 00 00 00       	mov    $0xf0,%esi
  404212:	31 c0                	xor    %eax,%eax
  404214:	e9 17 d4 ff ff       	jmpq   401630 <snprintf@plt>
  404219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404220:	ba bc b3 40 00       	mov    $0x40b3bc,%edx
  404225:	be f0 00 00 00       	mov    $0xf0,%esi
  40422a:	31 c0                	xor    %eax,%eax
  40422c:	e9 ff d3 ff ff       	jmpq   401630 <snprintf@plt>
  404231:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404238:	ba 6d ab 40 00       	mov    $0x40ab6d,%edx
  40423d:	be f0 00 00 00       	mov    $0xf0,%esi
  404242:	31 c0                	xor    %eax,%eax
  404244:	e9 e7 d3 ff ff       	jmpq   401630 <snprintf@plt>
  404249:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404250:	ba 76 ac 40 00       	mov    $0x40ac76,%edx
  404255:	be f0 00 00 00       	mov    $0xf0,%esi
  40425a:	31 c0                	xor    %eax,%eax
  40425c:	e9 cf d3 ff ff       	jmpq   401630 <snprintf@plt>
  404261:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404268:	ba 63 ab 40 00       	mov    $0x40ab63,%edx
  40426d:	be f0 00 00 00       	mov    $0xf0,%esi
  404272:	31 c0                	xor    %eax,%eax
  404274:	e9 b7 d3 ff ff       	jmpq   401630 <snprintf@plt>
  404279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404280:	4c 8b 8e 78 01 00 00 	mov    0x178(%rsi),%r9
  404287:	41 b8 75 ab 40 00    	mov    $0x40ab75,%r8d
  40428d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404294:	ba 01 00 00 00       	mov    $0x1,%edx
  404299:	be f0 00 00 00       	mov    $0xf0,%esi
  40429e:	31 c0                	xor    %eax,%eax
  4042a0:	49 c1 e9 06          	shr    $0x6,%r9
  4042a4:	41 83 e1 07          	and    $0x7,%r9d
  4042a8:	e9 33 d2 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  4042ad:	0f 1f 00             	nopl   (%rax)
  4042b0:	44 8b 8e a8 00 00 00 	mov    0xa8(%rsi),%r9d
  4042b7:	41 b8 78 ab 40 00    	mov    $0x40ab78,%r8d
  4042bd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4042c4:	ba 01 00 00 00       	mov    $0x1,%edx
  4042c9:	be f0 00 00 00       	mov    $0xf0,%esi
  4042ce:	31 c0                	xor    %eax,%eax
  4042d0:	e9 0b d2 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  4042d5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  4042dc:	00 00 00 00 
  4042e0:	44 8b 8e b0 00 00 00 	mov    0xb0(%rsi),%r9d
  4042e7:	41 b8 78 ab 40 00    	mov    $0x40ab78,%r8d
  4042ed:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4042f4:	ba 01 00 00 00       	mov    $0x1,%edx
  4042f9:	be f0 00 00 00       	mov    $0xf0,%esi
  4042fe:	31 c0                	xor    %eax,%eax
  404300:	e9 db d1 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404305:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40430c:	00 00 00 00 
  404310:	44 8b 8e b8 00 00 00 	mov    0xb8(%rsi),%r9d
  404317:	41 b8 78 ab 40 00    	mov    $0x40ab78,%r8d
  40431d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404324:	ba 01 00 00 00       	mov    $0x1,%edx
  404329:	be f0 00 00 00       	mov    $0xf0,%esi
  40432e:	31 c0                	xor    %eax,%eax
  404330:	e9 ab d1 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404335:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40433c:	00 00 00 00 
  404340:	48 83 ec 18          	sub    $0x18,%rsp
  404344:	44 8b 1d 49 ff 20 00 	mov    0x20ff49(%rip),%r11d        # 614294 <readtask@plt+0x2129c4>
  40434b:	48 8b 4e 18          	mov    0x18(%rsi),%rcx
  40434f:	48 03 4e 10          	add    0x10(%rsi),%rcx
  404353:	45 85 db             	test   %r11d,%r11d
  404356:	74 08                	je     404360 <readtask@plt+0x2a90>
  404358:	48 03 4e 28          	add    0x28(%rsi),%rcx
  40435c:	48 03 4e 20          	add    0x20(%rsi),%rcx
  404360:	48 89 c8             	mov    %rcx,%rax
  404363:	31 d2                	xor    %edx,%edx
  404365:	41 b9 89 88 88 88    	mov    $0x88888889,%r9d
  40436b:	48 f7 35 ee ff 20 00 	divq   0x20ffee(%rip)        # 614360 <Hertz>
  404372:	41 ba 3c 00 00 00    	mov    $0x3c,%r10d
  404378:	41 b8 7d ab 40 00    	mov    $0x40ab7d,%r8d
  40437e:	be f0 00 00 00       	mov    $0xf0,%esi
  404383:	48 89 c1             	mov    %rax,%rcx
  404386:	41 f7 e1             	mul    %r9d
  404389:	41 89 d1             	mov    %edx,%r9d
  40438c:	ba 01 00 00 00       	mov    $0x1,%edx
  404391:	41 c1 e9 05          	shr    $0x5,%r9d
  404395:	44 89 c8             	mov    %r9d,%eax
  404398:	41 0f af c2          	imul   %r10d,%eax
  40439c:	29 c1                	sub    %eax,%ecx
  40439e:	31 c0                	xor    %eax,%eax
  4043a0:	89 0c 24             	mov    %ecx,(%rsp)
  4043a3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4043aa:	e8 31 d1 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  4043af:	48 83 c4 18          	add    $0x18,%rsp
  4043b3:	c3                   	retq   
  4043b4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4043bb:	00 00 00 00 00 
  4043c0:	44 8b 0d b1 fe 20 00 	mov    0x20feb1(%rip),%r9d        # 614278 <readtask@plt+0x2129a8>
  4043c7:	48 8b 86 20 01 00 00 	mov    0x120(%rsi),%rax
  4043ce:	be f0 00 00 00       	mov    $0xf0,%esi
  4043d3:	45 8d 81 ff 03 00 00 	lea    0x3ff(%r9),%r8d
  4043da:	45 85 c9             	test   %r9d,%r9d
  4043dd:	45 0f 49 c1          	cmovns %r9d,%r8d
  4043e1:	31 d2                	xor    %edx,%edx
  4043e3:	41 c1 f8 0a          	sar    $0xa,%r8d
  4043e7:	49 63 c8             	movslq %r8d,%rcx
  4043ea:	41 b8 51 ab 40 00    	mov    $0x40ab51,%r8d
  4043f0:	48 f7 f1             	div    %rcx
  4043f3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4043fa:	ba 01 00 00 00       	mov    $0x1,%edx
  4043ff:	49 89 c1             	mov    %rax,%r9
  404402:	31 c0                	xor    %eax,%eax
  404404:	e9 d7 d0 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404409:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404410:	48 8b 86 68 01 00 00 	mov    0x168(%rsi),%rax
  404417:	45 31 c9             	xor    %r9d,%r9d
  40441a:	48 85 c0             	test   %rax,%rax
  40441d:	74 15                	je     404434 <readtask@plt+0x2b64>
  40441f:	49 89 c1             	mov    %rax,%r9
  404422:	4c 03 8e 98 00 00 00 	add    0x98(%rsi),%r9
  404429:	4c 2b 8e a0 00 00 00 	sub    0xa0(%rsi),%r9
  404430:	49 c1 e9 0a          	shr    $0xa,%r9
  404434:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  40443a:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404441:	ba 01 00 00 00       	mov    $0x1,%edx
  404446:	be f0 00 00 00       	mov    $0xf0,%esi
  40444b:	31 c0                	xor    %eax,%eax
  40444d:	e9 8e d0 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404452:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404459:	1f 84 00 00 00 00 00 
  404460:	45 31 c9             	xor    %r9d,%r9d
  404463:	48 83 be 68 01 00 00 	cmpq   $0x0,0x168(%rsi)
  40446a:	00 
  40446b:	74 12                	je     40447f <readtask@plt+0x2baf>
  40446d:	4c 8b 8e a0 00 00 00 	mov    0xa0(%rsi),%r9
  404474:	4c 2b 8e 98 00 00 00 	sub    0x98(%rsi),%r9
  40447b:	49 c1 e9 0a          	shr    $0xa,%r9
  40447f:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  404485:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40448c:	ba 01 00 00 00       	mov    $0x1,%edx
  404491:	be f0 00 00 00       	mov    $0xf0,%esi
  404496:	31 c0                	xor    %eax,%eax
  404498:	e9 43 d0 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  40449d:	0f 1f 00             	nopl   (%rax)
  4044a0:	48 8b 86 68 01 00 00 	mov    0x168(%rsi),%rax
  4044a7:	45 31 c9             	xor    %r9d,%r9d
  4044aa:	48 85 c0             	test   %rax,%rax
  4044ad:	74 15                	je     4044c4 <readtask@plt+0x2bf4>
  4044af:	49 89 c1             	mov    %rax,%r9
  4044b2:	4c 03 8e 98 00 00 00 	add    0x98(%rsi),%r9
  4044b9:	4c 2b 8e a0 00 00 00 	sub    0xa0(%rsi),%r9
  4044c0:	49 c1 e9 0a          	shr    $0xa,%r9
  4044c4:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  4044ca:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4044d1:	ba 01 00 00 00       	mov    $0x1,%edx
  4044d6:	be f0 00 00 00       	mov    $0xf0,%esi
  4044db:	31 c0                	xor    %eax,%eax
  4044dd:	e9 fe cf ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  4044e2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4044e9:	1f 84 00 00 00 00 00 
  4044f0:	45 31 c9             	xor    %r9d,%r9d
  4044f3:	48 83 be 68 01 00 00 	cmpq   $0x0,0x168(%rsi)
  4044fa:	00 
  4044fb:	74 12                	je     40450f <readtask@plt+0x2c3f>
  4044fd:	4c 8b 8e a0 00 00 00 	mov    0xa0(%rsi),%r9
  404504:	4c 2b 8e 98 00 00 00 	sub    0x98(%rsi),%r9
  40450b:	49 c1 e9 0a          	shr    $0xa,%r9
  40450f:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  404515:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40451c:	ba 01 00 00 00       	mov    $0x1,%edx
  404521:	be f0 00 00 00       	mov    $0xf0,%esi
  404526:	31 c0                	xor    %eax,%eax
  404528:	e9 b3 cf ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  40452d:	0f 1f 00             	nopl   (%rax)
  404530:	4c 8b 8e 40 01 00 00 	mov    0x140(%rsi),%r9
  404537:	4c 03 8e 38 01 00 00 	add    0x138(%rsi),%r9
  40453e:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  404544:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40454b:	ba 01 00 00 00       	mov    $0x1,%edx
  404550:	be f0 00 00 00       	mov    $0xf0,%esi
  404555:	31 c0                	xor    %eax,%eax
  404557:	e9 84 cf ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  40455c:	0f 1f 40 00          	nopl   0x0(%rax)
  404560:	4c 8b 8e e8 00 00 00 	mov    0xe8(%rsi),%r9
  404567:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  40456d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404574:	ba 01 00 00 00       	mov    $0x1,%edx
  404579:	be f0 00 00 00       	mov    $0xf0,%esi
  40457e:	31 c0                	xor    %eax,%eax
  404580:	e9 5b cf ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404585:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40458c:	00 00 00 00 
  404590:	8b 05 fe fc 20 00    	mov    0x20fcfe(%rip),%eax        # 614294 <readtask@plt+0x2129c4>
  404596:	4c 8b 8e 80 01 00 00 	mov    0x180(%rsi),%r9
  40459d:	85 c0                	test   %eax,%eax
  40459f:	74 07                	je     4045a8 <readtask@plt+0x2cd8>
  4045a1:	4c 03 8e 90 01 00 00 	add    0x190(%rsi),%r9
  4045a8:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  4045ae:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4045b5:	ba 01 00 00 00       	mov    $0x1,%edx
  4045ba:	be f0 00 00 00       	mov    $0xf0,%esi
  4045bf:	31 c0                	xor    %eax,%eax
  4045c1:	e9 1a cf ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  4045c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4045cd:	00 00 00 
  4045d0:	8b 05 be fc 20 00    	mov    0x20fcbe(%rip),%eax        # 614294 <readtask@plt+0x2129c4>
  4045d6:	4c 8b 8e 88 01 00 00 	mov    0x188(%rsi),%r9
  4045dd:	85 c0                	test   %eax,%eax
  4045df:	74 07                	je     4045e8 <readtask@plt+0x2d18>
  4045e1:	4c 03 8e 98 01 00 00 	add    0x198(%rsi),%r9
  4045e8:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  4045ee:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4045f5:	ba 01 00 00 00       	mov    $0x1,%edx
  4045fa:	be f0 00 00 00       	mov    $0xf0,%esi
  4045ff:	31 c0                	xor    %eax,%eax
  404601:	e9 da ce ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404606:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40460d:	00 00 00 
  404610:	44 8b 8e ac 02 00 00 	mov    0x2ac(%rsi),%r9d
  404617:	41 b8 a4 ab 40 00    	mov    $0x40aba4,%r8d
  40461d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404624:	ba 01 00 00 00       	mov    $0x1,%edx
  404629:	be f0 00 00 00       	mov    $0xf0,%esi
  40462e:	31 c0                	xor    %eax,%eax
  404630:	e9 ab ce ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404635:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40463c:	00 00 00 00 
  404640:	4c 8b 8e 30 01 00 00 	mov    0x130(%rsi),%r9
  404647:	41 b8 51 ab 40 00    	mov    $0x40ab51,%r8d
  40464d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404654:	ba 01 00 00 00       	mov    $0x1,%edx
  404659:	be f0 00 00 00       	mov    $0xf0,%esi
  40465e:	31 c0                	xor    %eax,%eax
  404660:	e9 7b ce ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404665:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40466c:	00 00 00 00 
  404670:	48 83 ec 18          	sub    $0x18,%rsp
  404674:	4c 8b 86 30 01 00 00 	mov    0x130(%rsi),%r8
  40467b:	31 d2                	xor    %edx,%edx
  40467d:	b9 e7 03 00 00       	mov    $0x3e7,%ecx
  404682:	48 be cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rsi
  404689:	cc cc cc 
  40468c:	49 69 c0 e8 03 00 00 	imul   $0x3e8,%r8,%rax
  404693:	41 b8 86 ab 40 00    	mov    $0x40ab86,%r8d
  404699:	48 f7 35 80 fc 20 00 	divq   0x20fc80(%rip)        # 614320 <kb_main_total>
  4046a0:	48 3d e7 03 00 00    	cmp    $0x3e7,%rax
  4046a6:	48 0f 46 c8          	cmovbe %rax,%rcx
  4046aa:	48 89 c8             	mov    %rcx,%rax
  4046ad:	48 f7 e6             	mul    %rsi
  4046b0:	be f0 00 00 00       	mov    $0xf0,%esi
  4046b5:	48 c1 ea 03          	shr    $0x3,%rdx
  4046b9:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  4046bd:	41 89 d1             	mov    %edx,%r9d
  4046c0:	ba 01 00 00 00       	mov    $0x1,%edx
  4046c5:	48 01 c0             	add    %rax,%rax
  4046c8:	48 29 c1             	sub    %rax,%rcx
  4046cb:	31 c0                	xor    %eax,%eax
  4046cd:	89 0c 24             	mov    %ecx,(%rsp)
  4046d0:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4046d7:	e8 04 ce ff ff       	callq  4014e0 <__snprintf_chk@plt>
  4046dc:	48 83 c4 18          	add    $0x18,%rsp
  4046e0:	c3                   	retq   
  4046e1:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4046e8:	0f 1f 84 00 00 00 00 
  4046ef:	00 
  4046f0:	44 8b 8e 88 02 00 00 	mov    0x288(%rsi),%r9d
  4046f7:	41 b8 a4 ab 40 00    	mov    $0x40aba4,%r8d
  4046fd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404704:	ba 01 00 00 00       	mov    $0x1,%edx
  404709:	be f0 00 00 00       	mov    $0xf0,%esi
  40470e:	31 c0                	xor    %eax,%eax
  404710:	e9 cb cd ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404715:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40471c:	00 00 00 00 
  404720:	44 8b 8e 90 02 00 00 	mov    0x290(%rsi),%r9d
  404727:	41 b8 a4 ab 40 00    	mov    $0x40aba4,%r8d
  40472d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404734:	ba 01 00 00 00       	mov    $0x1,%edx
  404739:	be f0 00 00 00       	mov    $0xf0,%esi
  40473e:	31 c0                	xor    %eax,%eax
  404740:	e9 9b cd ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404745:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40474c:	00 00 00 00 
  404750:	44 8b 8e 98 02 00 00 	mov    0x298(%rsi),%r9d
  404757:	41 b8 a4 ab 40 00    	mov    $0x40aba4,%r8d
  40475d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404764:	ba 01 00 00 00       	mov    $0x1,%edx
  404769:	be f0 00 00 00       	mov    $0xf0,%esi
  40476e:	31 c0                	xor    %eax,%eax
  404770:	e9 6b cd ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404775:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40477c:	00 00 00 00 
  404780:	44 8b 8e a0 02 00 00 	mov    0x2a0(%rsi),%r9d
  404787:	41 b8 a4 ab 40 00    	mov    $0x40aba4,%r8d
  40478d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404794:	ba 01 00 00 00       	mov    $0x1,%edx
  404799:	be f0 00 00 00       	mov    $0xf0,%esi
  40479e:	31 c0                	xor    %eax,%eax
  4047a0:	e9 3b cd ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  4047a5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  4047ac:	00 00 00 00 
  4047b0:	44 8b 8e 84 02 00 00 	mov    0x284(%rsi),%r9d
  4047b7:	41 b8 a4 ab 40 00    	mov    $0x40aba4,%r8d
  4047bd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4047c4:	ba 01 00 00 00       	mov    $0x1,%edx
  4047c9:	be f0 00 00 00       	mov    $0xf0,%esi
  4047ce:	31 c0                	xor    %eax,%eax
  4047d0:	e9 0b cd ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  4047d5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  4047dc:	00 00 00 00 
  4047e0:	44 8b 8e 8c 02 00 00 	mov    0x28c(%rsi),%r9d
  4047e7:	41 b8 a4 ab 40 00    	mov    $0x40aba4,%r8d
  4047ed:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4047f4:	ba 01 00 00 00       	mov    $0x1,%edx
  4047f9:	be f0 00 00 00       	mov    $0xf0,%esi
  4047fe:	31 c0                	xor    %eax,%eax
  404800:	e9 db cc ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404805:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40480c:	00 00 00 00 
  404810:	44 8b 8e 94 02 00 00 	mov    0x294(%rsi),%r9d
  404817:	41 b8 a4 ab 40 00    	mov    $0x40aba4,%r8d
  40481d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404824:	ba 01 00 00 00       	mov    $0x1,%edx
  404829:	be f0 00 00 00       	mov    $0xf0,%esi
  40482e:	31 c0                	xor    %eax,%eax
  404830:	e9 ab cc ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404835:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40483c:	00 00 00 00 
  404840:	44 8b 8e 9c 02 00 00 	mov    0x29c(%rsi),%r9d
  404847:	41 b8 a4 ab 40 00    	mov    $0x40aba4,%r8d
  40484d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404854:	ba 01 00 00 00       	mov    $0x1,%edx
  404859:	be f0 00 00 00       	mov    $0xf0,%esi
  40485e:	31 c0                	xor    %eax,%eax
  404860:	e9 7b cc ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404865:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40486c:	00 00 00 00 
  404870:	44 8b 0e             	mov    (%rsi),%r9d
  404873:	41 b8 3b ab 40 00    	mov    $0x40ab3b,%r8d
  404879:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404880:	ba 01 00 00 00       	mov    $0x1,%edx
  404885:	be f0 00 00 00       	mov    $0xf0,%esi
  40488a:	31 c0                	xor    %eax,%eax
  40488c:	e9 4f cc ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404891:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404898:	0f 1f 84 00 00 00 00 
  40489f:	00 
  4048a0:	44 8b 8e 78 02 00 00 	mov    0x278(%rsi),%r9d
  4048a7:	41 b8 a4 ab 40 00    	mov    $0x40aba4,%r8d
  4048ad:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4048b4:	ba 01 00 00 00       	mov    $0x1,%edx
  4048b9:	be f0 00 00 00       	mov    $0xf0,%esi
  4048be:	31 c0                	xor    %eax,%eax
  4048c0:	e9 1b cc ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  4048c5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  4048cc:	00 00 00 00 
  4048d0:	44 8b 8e 74 02 00 00 	mov    0x274(%rsi),%r9d
  4048d7:	41 b8 3b ab 40 00    	mov    $0x40ab3b,%r8d
  4048dd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4048e4:	ba 01 00 00 00       	mov    $0x1,%edx
  4048e9:	be f0 00 00 00       	mov    $0xf0,%esi
  4048ee:	31 c0                	xor    %eax,%eax
  4048f0:	e9 eb cb ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  4048f5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  4048fc:	00 00 00 00 
  404900:	44 8b 8e a4 02 00 00 	mov    0x2a4(%rsi),%r9d
  404907:	41 b8 a4 ab 40 00    	mov    $0x40aba4,%r8d
  40490d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404914:	ba 01 00 00 00       	mov    $0x1,%edx
  404919:	be f0 00 00 00       	mov    $0xf0,%esi
  40491e:	31 c0                	xor    %eax,%eax
  404920:	e9 bb cb ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404925:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40492c:	00 00 00 00 
  404930:	8b 05 5a f9 20 00    	mov    0x20f95a(%rip),%eax        # 614290 <readtask@plt+0x2129c0>
  404936:	ba d6 f2 40 00       	mov    $0x40f2d6,%edx
  40493b:	be f0 00 00 00       	mov    $0xf0,%esi
  404940:	83 e0 03             	and    $0x3,%eax
  404943:	48 8b 0c c5 00 e3 40 	mov    0x40e300(,%rax,8),%rcx
  40494a:	00 
  40494b:	31 c0                	xor    %eax,%eax
  40494d:	e9 de cc ff ff       	jmpq   401630 <snprintf@plt>
  404952:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404959:	1f 84 00 00 00 00 00 
  404960:	8b 0d 2a f9 20 00    	mov    0x20f92a(%rip),%ecx        # 614290 <readtask@plt+0x2129c0>
  404966:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  40496b:	89 c8                	mov    %ecx,%eax
  40496d:	f7 e6                	mul    %esi
  40496f:	be f0 00 00 00       	mov    $0xf0,%esi
  404974:	31 c0                	xor    %eax,%eax
  404976:	d1 ea                	shr    %edx
  404978:	8d 14 52             	lea    (%rdx,%rdx,2),%edx
  40497b:	29 d1                	sub    %edx,%ecx
  40497d:	ba d6 f2 40 00       	mov    $0x40f2d6,%edx
  404982:	48 8b 0c cd e0 e2 40 	mov    0x40e2e0(,%rcx,8),%rcx
  404989:	00 
  40498a:	e9 a1 cc ff ff       	jmpq   401630 <snprintf@plt>
  40498f:	90                   	nop
  404990:	8b 0d fa f8 20 00    	mov    0x20f8fa(%rip),%ecx        # 614290 <readtask@plt+0x2129c0>
  404996:	be cd cc cc cc       	mov    $0xcccccccd,%esi
  40499b:	89 c8                	mov    %ecx,%eax
  40499d:	f7 e6                	mul    %esi
  40499f:	be f0 00 00 00       	mov    $0xf0,%esi
  4049a4:	31 c0                	xor    %eax,%eax
  4049a6:	c1 ea 02             	shr    $0x2,%edx
  4049a9:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  4049ac:	29 d1                	sub    %edx,%ecx
  4049ae:	ba d6 f2 40 00       	mov    $0x40f2d6,%edx
  4049b3:	48 8b 0c cd 40 e3 40 	mov    0x40e340(,%rcx,8),%rcx
  4049ba:	00 
  4049bb:	e9 70 cc ff ff       	jmpq   401630 <snprintf@plt>
  4049c0:	8b 05 ca f8 20 00    	mov    0x20f8ca(%rip),%eax        # 614290 <readtask@plt+0x2129c0>
  4049c6:	ba d6 f2 40 00       	mov    $0x40f2d6,%edx
  4049cb:	be f0 00 00 00       	mov    $0xf0,%esi
  4049d0:	83 e0 03             	and    $0x3,%eax
  4049d3:	48 8b 0c c5 20 e3 40 	mov    0x40e320(,%rax,8),%rcx
  4049da:	00 
  4049db:	31 c0                	xor    %eax,%eax
  4049dd:	e9 4e cc ff ff       	jmpq   401630 <snprintf@plt>
  4049e2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4049e9:	1f 84 00 00 00 00 00 
  4049f0:	8b 05 9a f8 20 00    	mov    0x20f89a(%rip),%eax        # 614290 <readtask@plt+0x2129c0>
  4049f6:	8b 35 14 f9 20 00    	mov    0x20f914(%rip),%esi        # 614310 <readtask@plt+0x212a40>
  4049fc:	ba d6 f2 40 00       	mov    $0x40f2d6,%edx
  404a01:	53                   	push   %rbx
  404a02:	48 89 fb             	mov    %rdi,%rbx
  404a05:	83 e0 03             	and    $0x3,%eax
  404a08:	83 c6 01             	add    $0x1,%esi
  404a0b:	48 8b 0c c5 a0 e2 40 	mov    0x40e2a0(,%rax,8),%rcx
  404a12:	00 
  404a13:	31 c0                	xor    %eax,%eax
  404a15:	e8 16 cc ff ff       	callq  401630 <snprintf@plt>
  404a1a:	48 89 df             	mov    %rbx,%rdi
  404a1d:	e8 be cb ff ff       	callq  4015e0 <strlen@plt>
  404a22:	5b                   	pop    %rbx
  404a23:	c3                   	retq   
  404a24:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404a2b:	00 00 00 00 00 
  404a30:	8b 0d 5a f8 20 00    	mov    0x20f85a(%rip),%ecx        # 614290 <readtask@plt+0x2129c0>
  404a36:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  404a3b:	53                   	push   %rbx
  404a3c:	48 89 fb             	mov    %rdi,%rbx
  404a3f:	89 c8                	mov    %ecx,%eax
  404a41:	f7 e6                	mul    %esi
  404a43:	8b 35 c7 f8 20 00    	mov    0x20f8c7(%rip),%esi        # 614310 <readtask@plt+0x212a40>
  404a49:	31 c0                	xor    %eax,%eax
  404a4b:	d1 ea                	shr    %edx
  404a4d:	83 c6 01             	add    $0x1,%esi
  404a50:	8d 14 52             	lea    (%rdx,%rdx,2),%edx
  404a53:	29 d1                	sub    %edx,%ecx
  404a55:	ba d6 f2 40 00       	mov    $0x40f2d6,%edx
  404a5a:	48 8b 0c cd c0 e2 40 	mov    0x40e2c0(,%rcx,8),%rcx
  404a61:	00 
  404a62:	e8 c9 cb ff ff       	callq  401630 <snprintf@plt>
  404a67:	48 89 df             	mov    %rbx,%rdi
  404a6a:	e8 71 cb ff ff       	callq  4015e0 <strlen@plt>
  404a6f:	5b                   	pop    %rbx
  404a70:	c3                   	retq   
  404a71:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404a78:	0f 1f 84 00 00 00 00 
  404a7f:	00 
  404a80:	48 63 96 80 02 00 00 	movslq 0x280(%rsi),%rdx
  404a87:	8b 0e                	mov    (%rsi),%ecx
  404a89:	41 b8 07 00 00 00    	mov    $0x7,%r8d
  404a8f:	be 04 00 00 00       	mov    $0x4,%esi
  404a94:	e9 17 ce ff ff       	jmpq   4018b0 <dev_to_tty@plt>
  404a99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404aa0:	48 63 96 80 02 00 00 	movslq 0x280(%rsi),%rdx
  404aa7:	8b 0e                	mov    (%rsi),%ecx
  404aa9:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  404aaf:	be f0 00 00 00       	mov    $0xf0,%esi
  404ab4:	e9 f7 cd ff ff       	jmpq   4018b0 <dev_to_tty@plt>
  404ab9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404ac0:	55                   	push   %rbp
  404ac1:	48 89 f5             	mov    %rsi,%rbp
  404ac4:	53                   	push   %rbx
  404ac5:	48 89 fb             	mov    %rdi,%rbx
  404ac8:	48 89 f7             	mov    %rsi,%rdi
  404acb:	48 83 ec 08          	sub    $0x8,%rsp
  404acf:	e8 0c cb ff ff       	callq  4015e0 <strlen@plt>
  404ad4:	8b 15 36 fc 22 00    	mov    0x22fc36(%rip),%edx        # 634710 <stderr+0x20388>
  404ada:	85 d2                	test   %edx,%edx
  404adc:	75 52                	jne    404b30 <readtask@plt+0x3260>
  404ade:	31 d2                	xor    %edx,%edx
  404ae0:	80 7d 00 30          	cmpb   $0x30,0x0(%rbp)
  404ae4:	75 15                	jne    404afb <readtask@plt+0x322b>
  404ae6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404aed:	00 00 00 
  404af0:	48 83 c2 01          	add    $0x1,%rdx
  404af4:	80 7c 15 00 30       	cmpb   $0x30,0x0(%rbp,%rdx,1)
  404af9:	74 f5                	je     404af0 <readtask@plt+0x3220>
  404afb:	48 89 c1             	mov    %rax,%rcx
  404afe:	48 29 d1             	sub    %rdx,%rcx
  404b01:	48 89 ce             	mov    %rcx,%rsi
  404b04:	48 8d 4c 05 f8       	lea    -0x8(%rbp,%rax,1),%rcx
  404b09:	48 83 fe 08          	cmp    $0x8,%rsi
  404b0d:	77 59                	ja     404b68 <readtask@plt+0x3298>
  404b0f:	48 83 c4 08          	add    $0x8,%rsp
  404b13:	48 89 df             	mov    %rbx,%rdi
  404b16:	ba d6 f2 40 00       	mov    $0x40f2d6,%edx
  404b1b:	5b                   	pop    %rbx
  404b1c:	5d                   	pop    %rbp
  404b1d:	be f0 00 00 00       	mov    $0xf0,%esi
  404b22:	31 c0                	xor    %eax,%eax
  404b24:	e9 07 cb ff ff       	jmpq   401630 <snprintf@plt>
  404b29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404b30:	48 83 f8 08          	cmp    $0x8,%rax
  404b34:	48 89 e9             	mov    %rbp,%rcx
  404b37:	49 89 e9             	mov    %rbp,%r9
  404b3a:	41 b8 8d ab 40 00    	mov    $0x40ab8d,%r8d
  404b40:	7f cd                	jg     404b0f <readtask@plt+0x323f>
  404b42:	48 83 c4 08          	add    $0x8,%rsp
  404b46:	48 89 df             	mov    %rbx,%rdi
  404b49:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404b50:	5b                   	pop    %rbx
  404b51:	5d                   	pop    %rbp
  404b52:	ba 01 00 00 00       	mov    $0x1,%edx
  404b57:	be f0 00 00 00       	mov    $0xf0,%esi
  404b5c:	31 c0                	xor    %eax,%eax
  404b5e:	e9 7d c9 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  404b63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404b68:	4c 8d 4c 05 f8       	lea    -0x8(%rbp,%rax,1),%r9
  404b6d:	41 b8 98 ab 40 00    	mov    $0x40ab98,%r8d
  404b73:	eb cd                	jmp    404b42 <readtask@plt+0x3272>
  404b75:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  404b7c:	00 00 00 00 
  404b80:	48 83 ee 80          	sub    $0xffffffffffffff80,%rsi
  404b84:	e9 37 ff ff ff       	jmpq   404ac0 <readtask@plt+0x31f0>
  404b89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404b90:	48 83 c6 38          	add    $0x38,%rsi
  404b94:	e9 27 ff ff ff       	jmpq   404ac0 <readtask@plt+0x31f0>
  404b99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404ba0:	48 83 c6 5c          	add    $0x5c,%rsi
  404ba4:	e9 17 ff ff ff       	jmpq   404ac0 <readtask@plt+0x31f0>
  404ba9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404bb0:	48 83 c6 6e          	add    $0x6e,%rsi
  404bb4:	e9 07 ff ff ff       	jmpq   404ac0 <readtask@plt+0x31f0>
  404bb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404bc0:	48 83 c6 4a          	add    $0x4a,%rsi
  404bc4:	e9 f7 fe ff ff       	jmpq   404ac0 <readtask@plt+0x31f0>
  404bc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404bd0:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
  404bd5:	48 89 6c 24 f8       	mov    %rbp,-0x8(%rsp)
  404bda:	48 83 ec 28          	sub    $0x28,%rsp
  404bde:	8b 0d 38 f6 20 00    	mov    0x20f638(%rip),%ecx        # 61421c <readtask@plt+0x21294c>
  404be4:	48 89 fb             	mov    %rdi,%rbx
  404be7:	89 d5                	mov    %edx,%ebp
  404be9:	85 c9                	test   %ecx,%ecx
  404beb:	75 28                	jne    404c15 <readtask@plt+0x3345>
  404bed:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  404bf2:	ba 00 00 02 00       	mov    $0x20000,%edx
  404bf7:	c7 44 24 0c 00 00 02 	movl   $0x20000,0xc(%rsp)
  404bfe:	00 
  404bff:	e8 bc cc ff ff       	callq  4018c0 <escape_str@plt>
  404c04:	b8 00 00 02 00       	mov    $0x20000,%eax
  404c09:	2b 44 24 0c          	sub    0xc(%rsp),%eax
  404c0d:	3b 05 fd f6 20 00    	cmp    0x20f6fd(%rip),%eax        # 614310 <readtask@plt+0x212a40>
  404c13:	7e 24                	jle    404c39 <readtask@plt+0x3369>
  404c15:	41 89 e9             	mov    %ebp,%r9d
  404c18:	41 b8 3b ab 40 00    	mov    $0x40ab3b,%r8d
  404c1e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404c25:	ba 01 00 00 00       	mov    $0x1,%edx
  404c2a:	be f0 00 00 00       	mov    $0xf0,%esi
  404c2f:	48 89 df             	mov    %rbx,%rdi
  404c32:	31 c0                	xor    %eax,%eax
  404c34:	e8 a7 c8 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  404c39:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  404c3e:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
  404c43:	48 83 c4 28          	add    $0x28,%rsp
  404c47:	c3                   	retq   
  404c48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  404c4f:	00 
  404c50:	8b 96 94 02 00 00    	mov    0x294(%rsi),%edx
  404c56:	48 81 c6 d8 01 00 00 	add    $0x1d8,%rsi
  404c5d:	e9 6e ff ff ff       	jmpq   404bd0 <readtask@plt+0x3300>
  404c62:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404c69:	1f 84 00 00 00 00 00 
  404c70:	8b 96 98 02 00 00    	mov    0x298(%rsi),%edx
  404c76:	48 81 c6 28 02 00 00 	add    $0x228,%rsi
  404c7d:	e9 4e ff ff ff       	jmpq   404bd0 <readtask@plt+0x3300>
  404c82:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404c89:	1f 84 00 00 00 00 00 
  404c90:	8b 96 8c 02 00 00    	mov    0x28c(%rsi),%edx
  404c96:	48 81 c6 c4 01 00 00 	add    $0x1c4,%rsi
  404c9d:	e9 2e ff ff ff       	jmpq   404bd0 <readtask@plt+0x3300>
  404ca2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404ca9:	1f 84 00 00 00 00 00 
  404cb0:	8b 96 90 02 00 00    	mov    0x290(%rsi),%edx
  404cb6:	48 81 c6 00 02 00 00 	add    $0x200,%rsi
  404cbd:	e9 0e ff ff ff       	jmpq   404bd0 <readtask@plt+0x3300>
  404cc2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404cc9:	1f 84 00 00 00 00 00 
  404cd0:	8b 96 9c 02 00 00    	mov    0x29c(%rsi),%edx
  404cd6:	48 81 c6 ec 01 00 00 	add    $0x1ec,%rsi
  404cdd:	e9 ee fe ff ff       	jmpq   404bd0 <readtask@plt+0x3300>
  404ce2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404ce9:	1f 84 00 00 00 00 00 
  404cf0:	8b 96 a0 02 00 00    	mov    0x2a0(%rsi),%edx
  404cf6:	48 81 c6 3c 02 00 00 	add    $0x23c,%rsi
  404cfd:	e9 ce fe ff ff       	jmpq   404bd0 <readtask@plt+0x3300>
  404d02:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404d09:	1f 84 00 00 00 00 00 
  404d10:	8b 96 84 02 00 00    	mov    0x284(%rsi),%edx
  404d16:	48 81 c6 b0 01 00 00 	add    $0x1b0,%rsi
  404d1d:	e9 ae fe ff ff       	jmpq   404bd0 <readtask@plt+0x3300>
  404d22:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404d29:	1f 84 00 00 00 00 00 
  404d30:	8b 96 88 02 00 00    	mov    0x288(%rsi),%edx
  404d36:	48 81 c6 14 02 00 00 	add    $0x214,%rsi
  404d3d:	e9 8e fe ff ff       	jmpq   404bd0 <readtask@plt+0x3300>
  404d42:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404d49:	1f 84 00 00 00 00 00 
  404d50:	55                   	push   %rbp
  404d51:	48 89 f5             	mov    %rsi,%rbp
  404d54:	53                   	push   %rbx
  404d55:	48 89 fb             	mov    %rdi,%rbx
  404d58:	48 83 ec 18          	sub    $0x18,%rsp
  404d5c:	8b 0d ae f5 20 00    	mov    0x20f5ae(%rip),%ecx        # 614310 <readtask@plt+0x212a40>
  404d62:	89 4c 24 0c          	mov    %ecx,0xc(%rsp)
  404d66:	e8 c5 ea ff ff       	callq  403830 <readtask@plt+0x1f60>
  404d6b:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  404d6f:	48 63 f8             	movslq %eax,%rdi
  404d72:	48 8d b5 50 02 00 00 	lea    0x250(%rbp),%rsi
  404d79:	48 01 df             	add    %rbx,%rdi
  404d7c:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  404d81:	29 c2                	sub    %eax,%edx
  404d83:	b8 08 00 00 00       	mov    $0x8,%eax
  404d88:	83 fa 09             	cmp    $0x9,%edx
  404d8b:	0f 4c c2             	cmovl  %edx,%eax
  404d8e:	ba 00 00 02 00       	mov    $0x20000,%edx
  404d93:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  404d97:	e8 24 cb ff ff       	callq  4018c0 <escape_str@plt>
  404d9c:	8b 05 6e f5 20 00    	mov    0x20f56e(%rip),%eax        # 614310 <readtask@plt+0x212a40>
  404da2:	2b 44 24 0c          	sub    0xc(%rsp),%eax
  404da6:	48 83 c4 18          	add    $0x18,%rsp
  404daa:	5b                   	pop    %rbx
  404dab:	5d                   	pop    %rbp
  404dac:	c3                   	retq   
  404dad:	0f 1f 00             	nopl   (%rax)
  404db0:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
  404db5:	48 89 6c 24 e8       	mov    %rbp,-0x18(%rsp)
  404dba:	48 89 fb             	mov    %rdi,%rbx
  404dbd:	4c 89 64 24 f0       	mov    %r12,-0x10(%rsp)
  404dc2:	4c 89 6c 24 f8       	mov    %r13,-0x8(%rsp)
  404dc7:	bf 18 47 63 00       	mov    $0x634718,%edi
  404dcc:	48 83 ec 38          	sub    $0x38,%rsp
  404dd0:	49 89 f5             	mov    %rsi,%r13
  404dd3:	e8 38 c7 ff ff       	callq  401510 <localtime@plt>
  404dd8:	8b 68 14             	mov    0x14(%rax),%ebp
  404ddb:	44 8b 60 1c          	mov    0x1c(%rax),%r12d
  404ddf:	31 d2                	xor    %edx,%edx
  404de1:	49 8b 45 30          	mov    0x30(%r13),%rax
  404de5:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  404dea:	48 f7 35 6f f5 20 00 	divq   0x20f56f(%rip)        # 614360 <Hertz>
  404df1:	48 03 05 28 f9 22 00 	add    0x22f928(%rip),%rax        # 634720 <stderr+0x20398>
  404df8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  404dfd:	e8 0e c7 ff ff       	callq  401510 <localtime@plt>
  404e02:	44 39 60 1c          	cmp    %r12d,0x1c(%rax)
  404e06:	ba a2 ab 40 00       	mov    $0x40aba2,%edx
  404e0b:	b9 9c ab 40 00       	mov    $0x40ab9c,%ecx
  404e10:	48 89 df             	mov    %rbx,%rdi
  404e13:	be 2a 00 00 00       	mov    $0x2a,%esi
  404e18:	48 0f 45 ca          	cmovne %rdx,%rcx
  404e1c:	39 68 14             	cmp    %ebp,0x14(%rax)
  404e1f:	ba a7 ab 40 00       	mov    $0x40aba7,%edx
  404e24:	48 0f 44 d1          	cmove  %rcx,%rdx
  404e28:	48 89 c1             	mov    %rax,%rcx
  404e2b:	e8 f0 c9 ff ff       	callq  401820 <strftime@plt>
  404e30:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  404e35:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
  404e3a:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
  404e3f:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
  404e44:	48 83 c4 38          	add    $0x38,%rsp
  404e48:	c3                   	retq   
  404e49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404e50:	53                   	push   %rbx
  404e51:	31 d2                	xor    %edx,%edx
  404e53:	48 89 fb             	mov    %rdi,%rbx
  404e56:	48 83 ec 10          	sub    $0x10,%rsp
  404e5a:	48 8b 46 30          	mov    0x30(%rsi),%rax
  404e5e:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  404e63:	48 f7 35 f6 f4 20 00 	divq   0x20f4f6(%rip)        # 614360 <Hertz>
  404e6a:	48 03 05 af f8 22 00 	add    0x22f8af(%rip),%rax        # 634720 <stderr+0x20398>
  404e71:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  404e76:	e8 45 c7 ff ff       	callq  4015c0 <ctime@plt>
  404e7b:	80 78 08 20          	cmpb   $0x20,0x8(%rax)
  404e7f:	74 57                	je     404ed8 <readtask@plt+0x3608>
  404e81:	80 78 0b 20          	cmpb   $0x20,0xb(%rax)
  404e85:	74 5b                	je     404ee2 <readtask@plt+0x3612>
  404e87:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  404e8c:	4c 8d 48 0b          	lea    0xb(%rax),%r9
  404e90:	41 b8 aa ab 40 00    	mov    $0x40abaa,%r8d
  404e96:	48 81 c1 80 51 01 00 	add    $0x15180,%rcx
  404e9d:	48 3b 0d 74 f8 22 00 	cmp    0x22f874(%rip),%rcx        # 634718 <stderr+0x20390>
  404ea4:	77 0a                	ja     404eb0 <readtask@plt+0x35e0>
  404ea6:	4c 8d 48 04          	lea    0x4(%rax),%r9
  404eaa:	41 b8 b0 ab 40 00    	mov    $0x40abb0,%r8d
  404eb0:	48 89 df             	mov    %rbx,%rdi
  404eb3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404eba:	ba 01 00 00 00       	mov    $0x1,%edx
  404ebf:	be f0 00 00 00       	mov    $0xf0,%esi
  404ec4:	31 c0                	xor    %eax,%eax
  404ec6:	e8 15 c6 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  404ecb:	48 83 c4 10          	add    $0x10,%rsp
  404ecf:	5b                   	pop    %rbx
  404ed0:	c3                   	retq   
  404ed1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404ed8:	80 78 0b 20          	cmpb   $0x20,0xb(%rax)
  404edc:	c6 40 08 30          	movb   $0x30,0x8(%rax)
  404ee0:	75 a5                	jne    404e87 <readtask@plt+0x35b7>
  404ee2:	c6 40 0b 30          	movb   $0x30,0xb(%rax)
  404ee6:	eb 9f                	jmp    404e87 <readtask@plt+0x35b7>
  404ee8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  404eef:	00 
  404ef0:	53                   	push   %rbx
  404ef1:	31 d2                	xor    %edx,%edx
  404ef3:	48 89 fb             	mov    %rdi,%rbx
  404ef6:	48 83 ec 10          	sub    $0x10,%rsp
  404efa:	48 8b 46 30          	mov    0x30(%rsi),%rax
  404efe:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  404f03:	48 f7 35 56 f4 20 00 	divq   0x20f456(%rip)        # 614360 <Hertz>
  404f0a:	48 03 05 0f f8 22 00 	add    0x22f80f(%rip),%rax        # 634720 <stderr+0x20398>
  404f11:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  404f16:	e8 a5 c6 ff ff       	callq  4015c0 <ctime@plt>
  404f1b:	48 89 df             	mov    %rbx,%rdi
  404f1e:	49 89 c1             	mov    %rax,%r9
  404f21:	41 b8 b8 ab 40 00    	mov    $0x40abb8,%r8d
  404f27:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  404f2e:	ba 01 00 00 00       	mov    $0x1,%edx
  404f33:	be f0 00 00 00       	mov    $0xf0,%esi
  404f38:	31 c0                	xor    %eax,%eax
  404f3a:	e8 a1 c5 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  404f3f:	48 83 c4 10          	add    $0x10,%rsp
  404f43:	5b                   	pop    %rbx
  404f44:	c3                   	retq   
  404f45:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  404f4c:	00 00 00 00 
  404f50:	53                   	push   %rbx
  404f51:	31 d2                	xor    %edx,%edx
  404f53:	48 89 fb             	mov    %rdi,%rbx
  404f56:	48 83 ec 10          	sub    $0x10,%rsp
  404f5a:	48 8b 46 30          	mov    0x30(%rsi),%rax
  404f5e:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  404f63:	48 f7 35 f6 f3 20 00 	divq   0x20f3f6(%rip)        # 614360 <Hertz>
  404f6a:	48 8b 15 a7 f7 22 00 	mov    0x22f7a7(%rip),%rdx        # 634718 <stderr+0x20390>
  404f71:	48 03 05 a8 f7 22 00 	add    0x22f7a8(%rip),%rax        # 634720 <stderr+0x20398>
  404f78:	48 29 c2             	sub    %rax,%rdx
  404f7b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  404f80:	78 2e                	js     404fb0 <readtask@plt+0x36e0>
  404f82:	48 81 fa 80 51 01 00 	cmp    $0x15180,%rdx
  404f89:	7e 25                	jle    404fb0 <readtask@plt+0x36e0>
  404f8b:	e8 30 c6 ff ff       	callq  4015c0 <ctime@plt>
  404f90:	48 8d 70 04          	lea    0x4(%rax),%rsi
  404f94:	48 89 df             	mov    %rbx,%rdi
  404f97:	e8 b4 c5 ff ff       	callq  401550 <strcpy@plt>
  404f9c:	c6 43 06 00          	movb   $0x0,0x6(%rbx)
  404fa0:	48 83 c4 10          	add    $0x10,%rsp
  404fa4:	b8 06 00 00 00       	mov    $0x6,%eax
  404fa9:	5b                   	pop    %rbx
  404faa:	c3                   	retq   
  404fab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404fb0:	e8 0b c6 ff ff       	callq  4015c0 <ctime@plt>
  404fb5:	48 8d 70 0a          	lea    0xa(%rax),%rsi
  404fb9:	48 89 df             	mov    %rbx,%rdi
  404fbc:	e8 8f c5 ff ff       	callq  401550 <strcpy@plt>
  404fc1:	c6 43 06 00          	movb   $0x0,0x6(%rbx)
  404fc5:	48 83 c4 10          	add    $0x10,%rsp
  404fc9:	b8 06 00 00 00       	mov    $0x6,%eax
  404fce:	5b                   	pop    %rbx
  404fcf:	c3                   	retq   
  404fd0:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
  404fd5:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
  404fda:	41 b8 c0 ab 40 00    	mov    $0x40abc0,%r8d
  404fe0:	4c 89 64 24 f8       	mov    %r12,-0x8(%rsp)
  404fe5:	48 83 ec 58          	sub    $0x58,%rsp
  404fe9:	44 8b 8e 7c 02 00 00 	mov    0x27c(%rsi),%r9d
  404ff0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  404ff7:	00 00 
  404ff9:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  404ffe:	31 c0                	xor    %eax,%eax
  405000:	b9 30 00 00 00       	mov    $0x30,%ecx
  405005:	ba 01 00 00 00       	mov    $0x1,%edx
  40500a:	be 30 00 00 00       	mov    $0x30,%esi
  40500f:	48 89 fb             	mov    %rdi,%rbx
  405012:	48 89 e7             	mov    %rsp,%rdi
  405015:	e8 c6 c4 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  40501a:	31 d2                	xor    %edx,%edx
  40501c:	31 f6                	xor    %esi,%esi
  40501e:	31 c0                	xor    %eax,%eax
  405020:	48 89 e7             	mov    %rsp,%rdi
  405023:	e8 18 c8 ff ff       	callq  401840 <open@plt>
  405028:	83 f8 ff             	cmp    $0xffffffff,%eax
  40502b:	89 c5                	mov    %eax,%ebp
  40502d:	75 35                	jne    405064 <readtask@plt+0x3794>
  40502f:	c6 03 2d             	movb   $0x2d,(%rbx)
  405032:	c6 43 01 00          	movb   $0x0,0x1(%rbx)
  405036:	b8 01 00 00 00       	mov    $0x1,%eax
  40503b:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  405040:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  405047:	00 00 
  405049:	75 14                	jne    40505f <readtask@plt+0x378f>
  40504b:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
  405050:	48 8b 6c 24 48       	mov    0x48(%rsp),%rbp
  405055:	4c 8b 64 24 50       	mov    0x50(%rsp),%r12
  40505a:	48 83 c4 58          	add    $0x58,%rsp
  40505e:	c3                   	retq   
  40505f:	e8 8c c5 ff ff       	callq  4015f0 <__stack_chk_fail@plt>
  405064:	ba 9a 02 00 00       	mov    $0x29a,%edx
  405069:	48 89 de             	mov    %rbx,%rsi
  40506c:	89 c7                	mov    %eax,%edi
  40506e:	e8 3d c6 ff ff       	callq  4016b0 <read@plt>
  405073:	89 ef                	mov    %ebp,%edi
  405075:	49 89 c4             	mov    %rax,%r12
  405078:	e8 03 c6 ff ff       	callq  401680 <close@plt>
  40507d:	4d 85 e4             	test   %r12,%r12
  405080:	7e ad                	jle    40502f <readtask@plt+0x375f>
  405082:	42 c6 04 23 00       	movb   $0x0,(%rbx,%r12,1)
  405087:	0f b6 03             	movzbl (%rbx),%eax
  40508a:	83 e8 21             	sub    $0x21,%eax
  40508d:	3c 5d                	cmp    $0x5d,%al
  40508f:	77 9e                	ja     40502f <readtask@plt+0x375f>
  405091:	48 8d 53 01          	lea    0x1(%rbx),%rdx
  405095:	31 c0                	xor    %eax,%eax
  405097:	0f b6 0a             	movzbl (%rdx),%ecx
  40509a:	48 83 c0 01          	add    $0x1,%rax
  40509e:	48 89 d6             	mov    %rdx,%rsi
  4050a1:	48 83 c2 01          	add    $0x1,%rdx
  4050a5:	83 e9 21             	sub    $0x21,%ecx
  4050a8:	80 f9 5d             	cmp    $0x5d,%cl
  4050ab:	76 ea                	jbe    405097 <readtask@plt+0x37c7>
  4050ad:	48 85 c0             	test   %rax,%rax
  4050b0:	c6 06 00             	movb   $0x0,(%rsi)
  4050b3:	0f 84 76 ff ff ff    	je     40502f <readtask@plt+0x375f>
  4050b9:	eb 80                	jmp    40503b <readtask@plt+0x376b>
  4050bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4050c0:	55                   	push   %rbp
  4050c1:	48 89 fd             	mov    %rdi,%rbp
  4050c4:	53                   	push   %rbx
  4050c5:	48 89 f3             	mov    %rsi,%rbx
  4050c8:	48 83 ec 18          	sub    $0x18,%rsp
  4050cc:	8b 05 3e f2 20 00    	mov    0x20f23e(%rip),%eax        # 614310 <readtask@plt+0x212a40>
  4050d2:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4050d6:	e8 55 e7 ff ff       	callq  403830 <readtask@plt+0x1f60>
  4050db:	48 63 d0             	movslq %eax,%rdx
  4050de:	29 44 24 0c          	sub    %eax,0xc(%rsp)
  4050e2:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  4050e7:	48 01 d5             	add    %rdx,%rbp
  4050ea:	83 3d 2f f1 20 00 01 	cmpl   $0x1,0x20f12f(%rip)        # 614220 <readtask@plt+0x212950>
  4050f1:	ba 00 00 02 00       	mov    $0x20000,%edx
  4050f6:	48 89 de             	mov    %rbx,%rsi
  4050f9:	48 89 ef             	mov    %rbp,%rdi
  4050fc:	45 19 c0             	sbb    %r8d,%r8d
  4050ff:	41 83 e0 fd          	and    $0xfffffffd,%r8d
  405103:	41 83 c0 07          	add    $0x7,%r8d
  405107:	e8 c4 c4 ff ff       	callq  4015d0 <escape_command@plt>
  40510c:	8b 35 b2 f1 20 00    	mov    0x20f1b2(%rip),%esi        # 6142c4 <readtask@plt+0x2129f4>
  405112:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  405116:	85 f6                	test   %esi,%esi
  405118:	74 3e                	je     405158 <readtask@plt+0x3888>
  40511a:	83 fa 01             	cmp    $0x1,%edx
  40511d:	7e 39                	jle    405158 <readtask@plt+0x3888>
  40511f:	48 8b b3 a0 01 00 00 	mov    0x1a0(%rbx),%rsi
  405126:	48 85 f6             	test   %rsi,%rsi
  405129:	74 2d                	je     405158 <readtask@plt+0x3888>
  40512b:	48 83 3e 00          	cmpq   $0x0,(%rsi)
  40512f:	74 27                	je     405158 <readtask@plt+0x3888>
  405131:	48 98                	cltq   
  405133:	83 ea 01             	sub    $0x1,%edx
  405136:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  40513b:	48 01 c5             	add    %rax,%rbp
  40513e:	89 54 24 0c          	mov    %edx,0xc(%rsp)
  405142:	ba 00 00 02 00       	mov    $0x20000,%edx
  405147:	48 8d 7d 01          	lea    0x1(%rbp),%rdi
  40514b:	c6 45 00 20          	movb   $0x20,0x0(%rbp)
  40514f:	e8 4c c6 ff ff       	callq  4017a0 <escape_strlist@plt>
  405154:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  405158:	8b 05 b2 f1 20 00    	mov    0x20f1b2(%rip),%eax        # 614310 <readtask@plt+0x212a40>
  40515e:	48 83 c4 18          	add    $0x18,%rsp
  405162:	5b                   	pop    %rbx
  405163:	5d                   	pop    %rbp
  405164:	29 d0                	sub    %edx,%eax
  405166:	c3                   	retq   
  405167:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40516e:	00 00 
  405170:	55                   	push   %rbp
  405171:	48 89 fd             	mov    %rdi,%rbp
  405174:	53                   	push   %rbx
  405175:	48 89 f3             	mov    %rsi,%rbx
  405178:	48 83 ec 18          	sub    $0x18,%rsp
  40517c:	8b 05 8e f1 20 00    	mov    0x20f18e(%rip),%eax        # 614310 <readtask@plt+0x212a40>
  405182:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  405186:	e8 a5 e6 ff ff       	callq  403830 <readtask@plt+0x1f60>
  40518b:	48 63 d0             	movslq %eax,%rdx
  40518e:	29 44 24 0c          	sub    %eax,0xc(%rsp)
  405192:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  405197:	48 01 d5             	add    %rdx,%rbp
  40519a:	83 3d 27 f1 20 00 01 	cmpl   $0x1,0x20f127(%rip)        # 6142c8 <readtask@plt+0x2129f8>
  4051a1:	ba 00 00 02 00       	mov    $0x20000,%edx
  4051a6:	48 89 ef             	mov    %rbp,%rdi
  4051a9:	48 89 de             	mov    %rbx,%rsi
  4051ac:	45 19 c0             	sbb    %r8d,%r8d
  4051af:	41 83 e0 03          	and    $0x3,%r8d
  4051b3:	41 83 c0 04          	add    $0x4,%r8d
  4051b7:	e8 14 c4 ff ff       	callq  4015d0 <escape_command@plt>
  4051bc:	8b 3d 02 f1 20 00    	mov    0x20f102(%rip),%edi        # 6142c4 <readtask@plt+0x2129f4>
  4051c2:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  4051c6:	85 ff                	test   %edi,%edi
  4051c8:	74 3e                	je     405208 <readtask@plt+0x3938>
  4051ca:	83 fa 01             	cmp    $0x1,%edx
  4051cd:	7e 39                	jle    405208 <readtask@plt+0x3938>
  4051cf:	48 8b b3 a0 01 00 00 	mov    0x1a0(%rbx),%rsi
  4051d6:	48 85 f6             	test   %rsi,%rsi
  4051d9:	74 2d                	je     405208 <readtask@plt+0x3938>
  4051db:	48 83 3e 00          	cmpq   $0x0,(%rsi)
  4051df:	74 27                	je     405208 <readtask@plt+0x3938>
  4051e1:	48 98                	cltq   
  4051e3:	83 ea 01             	sub    $0x1,%edx
  4051e6:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  4051eb:	48 01 c5             	add    %rax,%rbp
  4051ee:	89 54 24 0c          	mov    %edx,0xc(%rsp)
  4051f2:	ba 00 00 02 00       	mov    $0x20000,%edx
  4051f7:	48 8d 7d 01          	lea    0x1(%rbp),%rdi
  4051fb:	c6 45 00 20          	movb   $0x20,0x0(%rbp)
  4051ff:	e8 9c c5 ff ff       	callq  4017a0 <escape_strlist@plt>
  405204:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  405208:	8b 05 02 f1 20 00    	mov    0x20f102(%rip),%eax        # 614310 <readtask@plt+0x212a40>
  40520e:	48 83 c4 18          	add    $0x18,%rsp
  405212:	5b                   	pop    %rbx
  405213:	5d                   	pop    %rbp
  405214:	29 d0                	sub    %edx,%eax
  405216:	c3                   	retq   
  405217:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40521e:	00 00 
  405220:	48 8b 86 60 01 00 00 	mov    0x160(%rsi),%rax
  405227:	48 83 e8 01          	sub    $0x1,%rax
  40522b:	48 83 f8 fd          	cmp    $0xfffffffffffffffd,%rax
  40522f:	76 2f                	jbe    405260 <readtask@plt+0x3990>
  405231:	4c 8b 8e d0 00 00 00 	mov    0xd0(%rsi),%r9
  405238:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  40523e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  405245:	ba 01 00 00 00       	mov    $0x1,%edx
  40524a:	be f0 00 00 00       	mov    $0xf0,%esi
  40524f:	31 c0                	xor    %eax,%eax
  405251:	e9 8a c2 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  405256:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40525d:	00 00 00 
  405260:	ba e4 ab 40 00       	mov    $0x40abe4,%edx
  405265:	be f0 00 00 00       	mov    $0xf0,%esi
  40526a:	31 c0                	xor    %eax,%eax
  40526c:	e9 bf c3 ff ff       	jmpq   401630 <snprintf@plt>
  405271:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  405278:	0f 1f 84 00 00 00 00 
  40527f:	00 
  405280:	48 8b 86 60 01 00 00 	mov    0x160(%rsi),%rax
  405287:	48 83 e8 01          	sub    $0x1,%rax
  40528b:	48 83 f8 fd          	cmp    $0xfffffffffffffffd,%rax
  40528f:	77 2f                	ja     4052c0 <readtask@plt+0x39f0>
  405291:	4c 8b 8e 58 01 00 00 	mov    0x158(%rsi),%r9
  405298:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  40529e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4052a5:	ba 01 00 00 00       	mov    $0x1,%edx
  4052aa:	be f0 00 00 00       	mov    $0xf0,%esi
  4052af:	31 c0                	xor    %eax,%eax
  4052b1:	e9 2a c2 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  4052b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4052bd:	00 00 00 
  4052c0:	ba e4 ab 40 00       	mov    $0x40abe4,%edx
  4052c5:	be f0 00 00 00       	mov    $0xf0,%esi
  4052ca:	31 c0                	xor    %eax,%eax
  4052cc:	e9 5f c3 ff ff       	jmpq   401630 <snprintf@plt>
  4052d1:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4052d8:	0f 1f 84 00 00 00 00 
  4052df:	00 
  4052e0:	4c 8b 8e 60 01 00 00 	mov    0x160(%rsi),%r9
  4052e7:	49 83 f9 ff          	cmp    $0xffffffffffffffff,%r9
  4052eb:	74 23                	je     405310 <readtask@plt+0x3a40>
  4052ed:	41 b8 55 ab 40 00    	mov    $0x40ab55,%r8d
  4052f3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4052fa:	ba 01 00 00 00       	mov    $0x1,%edx
  4052ff:	be f0 00 00 00       	mov    $0xf0,%esi
  405304:	31 c0                	xor    %eax,%eax
  405306:	e9 d5 c1 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  40530b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405310:	ba e4 ab 40 00       	mov    $0x40abe4,%edx
  405315:	be f0 00 00 00       	mov    $0xf0,%esi
  40531a:	31 c0                	xor    %eax,%eax
  40531c:	e9 0f c3 ff ff       	jmpq   401630 <snprintf@plt>
  405321:	66 66 66 66 66 66 2e 	data32 data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  405328:	0f 1f 84 00 00 00 00 
  40532f:	00 
  405330:	4c 8b 8e c0 00 00 00 	mov    0xc0(%rsi),%r9
  405337:	41 81 e1 ff ff ff 00 	and    $0xffffff,%r9d
  40533e:	74 20                	je     405360 <readtask@plt+0x3a90>
  405340:	41 b8 d6 ab 40 00    	mov    $0x40abd6,%r8d
  405346:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40534d:	ba 01 00 00 00       	mov    $0x1,%edx
  405352:	be f0 00 00 00       	mov    $0xf0,%esi
  405357:	31 c0                	xor    %eax,%eax
  405359:	e9 82 c1 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  40535e:	66 90                	xchg   %ax,%ax
  405360:	66 c7 07 2d 00       	movw   $0x2d,(%rdi)
  405365:	b8 01 00 00 00       	mov    $0x1,%eax
  40536a:	c3                   	retq   
  40536b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405370:	4c 8b 8e 70 01 00 00 	mov    0x170(%rsi),%r9
  405377:	49 83 f9 ff          	cmp    $0xffffffffffffffff,%r9
  40537b:	75 13                	jne    405390 <readtask@plt+0x3ac0>
  40537d:	c6 07 78             	movb   $0x78,(%rdi)
  405380:	c6 47 01 78          	movb   $0x78,0x1(%rdi)
  405384:	b8 02 00 00 00       	mov    $0x2,%eax
  405389:	c6 47 02 00          	movb   $0x0,0x2(%rdi)
  40538d:	c3                   	retq   
  40538e:	66 90                	xchg   %ax,%ax
  405390:	49 c1 e9 0a          	shr    $0xa,%r9
  405394:	41 b8 d9 ab 40 00    	mov    $0x40abd9,%r8d
  40539a:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4053a1:	ba 01 00 00 00       	mov    $0x1,%edx
  4053a6:	be f0 00 00 00       	mov    $0xf0,%esi
  4053ab:	31 c0                	xor    %eax,%eax
  4053ad:	e9 2e c1 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  4053b2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4053b9:	1f 84 00 00 00 00 00 
  4053c0:	80 7e 0c 52          	cmpb   $0x52,0xc(%rsi)
  4053c4:	74 1a                	je     4053e0 <readtask@plt+0x3b10>
  4053c6:	ba de ab 40 00       	mov    $0x40abde,%edx
  4053cb:	be f0 00 00 00       	mov    $0xf0,%esi
  4053d0:	31 c0                	xor    %eax,%eax
  4053d2:	e9 59 c2 ff ff       	jmpq   401630 <snprintf@plt>
  4053d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4053de:	00 00 
  4053e0:	44 8b 8e ac 02 00 00 	mov    0x2ac(%rsi),%r9d
  4053e7:	41 b8 a4 ab 40 00    	mov    $0x40aba4,%r8d
  4053ed:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4053f4:	ba 01 00 00 00       	mov    $0x1,%edx
  4053f9:	be f0 00 00 00       	mov    $0xf0,%esi
  4053fe:	31 c0                	xor    %eax,%eax
  405400:	e9 db c0 ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  405405:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40540c:	00 00 00 00 
  405410:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
  405415:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
  40541a:	48 89 fb             	mov    %rdi,%rbx
  40541d:	4c 89 64 24 f8       	mov    %r12,-0x8(%rsp)
  405422:	48 83 ec 18          	sub    $0x18,%rsp
  405426:	48 8b be c0 00 00 00 	mov    0xc0(%rsi),%rdi
  40542d:	f7 c7 ff ff ff 00    	test   $0xffffff,%edi
  405433:	74 4b                	je     405480 <readtask@plt+0x3bb0>
  405435:	8b 36                	mov    (%rsi),%esi
  405437:	e8 04 c2 ff ff       	callq  401640 <lookup_wchan@plt>
  40543c:	48 89 c7             	mov    %rax,%rdi
  40543f:	49 89 c4             	mov    %rax,%r12
  405442:	e8 99 c1 ff ff       	callq  4015e0 <strlen@plt>
  405447:	8b 15 c3 ee 20 00    	mov    0x20eec3(%rip),%edx        # 614310 <readtask@plt+0x212a40>
  40544d:	4c 89 e6             	mov    %r12,%rsi
  405450:	48 89 df             	mov    %rbx,%rdi
  405453:	48 39 d0             	cmp    %rdx,%rax
  405456:	48 89 d5             	mov    %rdx,%rbp
  405459:	48 0f 46 e8          	cmovbe %rax,%rbp
  40545d:	48 89 ea             	mov    %rbp,%rdx
  405460:	e8 bb c2 ff ff       	callq  401720 <memcpy@plt>
  405465:	c6 04 2b 00          	movb   $0x0,(%rbx,%rbp,1)
  405469:	89 e8                	mov    %ebp,%eax
  40546b:	48 8b 1c 24          	mov    (%rsp),%rbx
  40546f:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
  405474:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
  405479:	48 83 c4 18          	add    $0x18,%rsp
  40547d:	c3                   	retq   
  40547e:	66 90                	xchg   %ax,%ax
  405480:	66 c7 03 2d 00       	movw   $0x2d,(%rbx)
  405485:	b8 01 00 00 00       	mov    $0x1,%eax
  40548a:	eb df                	jmp    40546b <readtask@plt+0x3b9b>
  40548c:	0f 1f 40 00          	nopl   0x0(%rax)
  405490:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
  405495:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
  40549a:	48 89 fb             	mov    %rdi,%rbx
  40549d:	4c 89 64 24 f8       	mov    %r12,-0x8(%rsp)
  4054a2:	48 83 ec 18          	sub    $0x18,%rsp
  4054a6:	48 8b be c0 00 00 00 	mov    0xc0(%rsi),%rdi
  4054ad:	49 89 f9             	mov    %rdi,%r9
  4054b0:	41 81 e1 ff ff ff 00 	and    $0xffffff,%r9d
  4054b7:	0f 84 93 00 00 00    	je     405550 <readtask@plt+0x3c80>
  4054bd:	44 8b 05 54 ed 20 00 	mov    0x20ed54(%rip),%r8d        # 614218 <readtask@plt+0x212948>
  4054c4:	45 85 c0             	test   %r8d,%r8d
  4054c7:	75 4f                	jne    405518 <readtask@plt+0x3c48>
  4054c9:	8b 36                	mov    (%rsi),%esi
  4054cb:	e8 70 c1 ff ff       	callq  401640 <lookup_wchan@plt>
  4054d0:	48 89 c7             	mov    %rax,%rdi
  4054d3:	49 89 c4             	mov    %rax,%r12
  4054d6:	e8 05 c1 ff ff       	callq  4015e0 <strlen@plt>
  4054db:	8b 15 2f ee 20 00    	mov    0x20ee2f(%rip),%edx        # 614310 <readtask@plt+0x212a40>
  4054e1:	4c 89 e6             	mov    %r12,%rsi
  4054e4:	48 89 df             	mov    %rbx,%rdi
  4054e7:	48 39 d0             	cmp    %rdx,%rax
  4054ea:	48 89 d5             	mov    %rdx,%rbp
  4054ed:	48 0f 46 e8          	cmovbe %rax,%rbp
  4054f1:	48 89 ea             	mov    %rbp,%rdx
  4054f4:	e8 27 c2 ff ff       	callq  401720 <memcpy@plt>
  4054f9:	c6 04 2b 00          	movb   $0x0,(%rbx,%rbp,1)
  4054fd:	89 e8                	mov    %ebp,%eax
  4054ff:	48 8b 1c 24          	mov    (%rsp),%rbx
  405503:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
  405508:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
  40550d:	48 83 c4 18          	add    $0x18,%rsp
  405511:	c3                   	retq   
  405512:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405518:	48 89 df             	mov    %rbx,%rdi
  40551b:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
  405520:	48 8b 1c 24          	mov    (%rsp),%rbx
  405524:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
  405529:	41 b8 d6 ab 40 00    	mov    $0x40abd6,%r8d
  40552f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  405536:	ba 01 00 00 00       	mov    $0x1,%edx
  40553b:	be f0 00 00 00       	mov    $0xf0,%esi
  405540:	31 c0                	xor    %eax,%eax
  405542:	48 83 c4 18          	add    $0x18,%rsp
  405546:	e9 95 bf ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  40554b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405550:	66 c7 03 2d 00       	movw   $0x2d,(%rbx)
  405555:	b8 01 00 00 00       	mov    $0x1,%eax
  40555a:	eb a3                	jmp    4054ff <readtask@plt+0x3c2f>
  40555c:	0f 1f 40 00          	nopl   0x0(%rax)
  405560:	48 83 ec 18          	sub    $0x18,%rsp
  405564:	48 8b 8e e0 00 00 00 	mov    0xe0(%rsi),%rcx
  40556b:	48 85 c9             	test   %rcx,%rcx
  40556e:	0f 84 a4 00 00 00    	je     405618 <readtask@plt+0x3d48>
  405574:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  405578:	0f 84 c2 00 00 00    	je     405640 <readtask@plt+0x3d70>
  40557e:	48 85 c9             	test   %rcx,%rcx
  405581:	0f 88 a9 00 00 00    	js     405630 <readtask@plt+0x3d60>
  405587:	48 81 f9 0f 27 00 00 	cmp    $0x270f,%rcx
  40558e:	76 40                	jbe    4055d0 <readtask@plt+0x3d00>
  405590:	48 c1 e9 02          	shr    $0x2,%rcx
  405594:	49 b8 c3 f5 28 5c 8f 	movabs $0x28f5c28f5c28f5c3,%r8
  40559b:	c2 f5 28 
  40559e:	be f0 00 00 00       	mov    $0xf0,%esi
  4055a3:	48 89 c8             	mov    %rcx,%rax
  4055a6:	48 83 c4 18          	add    $0x18,%rsp
  4055aa:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4055b1:	49 f7 e0             	mul    %r8
  4055b4:	41 b8 ec ab 40 00    	mov    $0x40abec,%r8d
  4055ba:	31 c0                	xor    %eax,%eax
  4055bc:	49 89 d1             	mov    %rdx,%r9
  4055bf:	ba 01 00 00 00       	mov    $0x1,%edx
  4055c4:	49 c1 e9 02          	shr    $0x2,%r9
  4055c8:	e9 13 bf ff ff       	jmpq   4014e0 <__snprintf_chk@plt>
  4055cd:	0f 1f 00             	nopl   (%rax)
  4055d0:	89 c8                	mov    %ecx,%eax
  4055d2:	be 1f 85 eb 51       	mov    $0x51eb851f,%esi
  4055d7:	41 b9 64 00 00 00    	mov    $0x64,%r9d
  4055dd:	f7 e6                	mul    %esi
  4055df:	c1 ea 05             	shr    $0x5,%edx
  4055e2:	89 d0                	mov    %edx,%eax
  4055e4:	41 0f af c1          	imul   %r9d,%eax
  4055e8:	41 89 d1             	mov    %edx,%r9d
  4055eb:	29 c1                	sub    %eax,%ecx
  4055ed:	89 0c 24             	mov    %ecx,(%rsp)
  4055f0:	41 b8 f1 ab 40 00    	mov    $0x40abf1,%r8d
  4055f6:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4055fd:	ba 01 00 00 00       	mov    $0x1,%edx
  405602:	be f0 00 00 00       	mov    $0xf0,%esi
  405607:	31 c0                	xor    %eax,%eax
  405609:	e8 d2 be ff ff       	callq  4014e0 <__snprintf_chk@plt>
  40560e:	48 83 c4 18          	add    $0x18,%rsp
  405612:	c3                   	retq   
  405613:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405618:	ba e0 ab 40 00       	mov    $0x40abe0,%edx
  40561d:	be f0 00 00 00       	mov    $0xf0,%esi
  405622:	31 c0                	xor    %eax,%eax
  405624:	48 83 c4 18          	add    $0x18,%rsp
  405628:	e9 03 c0 ff ff       	jmpq   401630 <snprintf@plt>
  40562d:	0f 1f 00             	nopl   (%rax)
  405630:	45 31 c9             	xor    %r9d,%r9d
  405633:	31 c9                	xor    %ecx,%ecx
  405635:	eb b6                	jmp    4055ed <readtask@plt+0x3d1d>
  405637:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40563e:	00 00 
  405640:	ba e6 ab 40 00       	mov    $0x40abe6,%edx
  405645:	be f0 00 00 00       	mov    $0xf0,%esi
  40564a:	31 c0                	xor    %eax,%eax
  40564c:	48 83 c4 18          	add    $0x18,%rsp
  405650:	e9 db bf ff ff       	jmpq   401630 <snprintf@plt>
  405655:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40565c:	00 00 00 00 
  405660:	53                   	push   %rbx
  405661:	ba fa ab 40 00       	mov    $0x40abfa,%edx
  405666:	bb 80 b6 40 00       	mov    $0x40b680,%ebx
  40566b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405670:	48 81 7b 10 80 3a 40 	cmpq   $0x403a80,0x10(%rbx)
  405677:	00 
  405678:	74 15                	je     40568f <readtask@plt+0x3dbf>
  40567a:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  40567e:	be ff ab 40 00       	mov    $0x40abff,%esi
  405683:	bf 01 00 00 00       	mov    $0x1,%edi
  405688:	31 c0                	xor    %eax,%eax
  40568a:	e8 81 c1 ff ff       	callq  401810 <__printf_chk@plt>
  40568f:	48 83 c3 30          	add    $0x30,%rbx
  405693:	48 8b 13             	mov    (%rbx),%rdx
  405696:	80 3a 7e             	cmpb   $0x7e,(%rdx)
  405699:	75 d5                	jne    405670 <readtask@plt+0x3da0>
  40569b:	5b                   	pop    %rbx
  40569c:	c3                   	retq   
  40569d:	0f 1f 00             	nopl   (%rax)
  4056a0:	83 ff 43             	cmp    $0x43,%edi
  4056a3:	b8 80 e3 40 00       	mov    $0x40e380,%eax
  4056a8:	75 0e                	jne    4056b8 <readtask@plt+0x3de8>
  4056aa:	eb 18                	jmp    4056c4 <readtask@plt+0x3df4>
  4056ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4056b0:	48 83 c0 10          	add    $0x10,%rax
  4056b4:	39 fa                	cmp    %edi,%edx
  4056b6:	74 0a                	je     4056c2 <readtask@plt+0x3df2>
  4056b8:	8b 50 10             	mov    0x10(%rax),%edx
  4056bb:	83 fa 7e             	cmp    $0x7e,%edx
  4056be:	75 f0                	jne    4056b0 <readtask@plt+0x3de0>
  4056c0:	31 c0                	xor    %eax,%eax
  4056c2:	f3 c3                	repz retq 
  4056c4:	f3 c3                	repz retq 
  4056c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4056cd:	00 00 00 
  4056d0:	83 ff 43             	cmp    $0x43,%edi
  4056d3:	b8 20 e5 40 00       	mov    $0x40e520,%eax
  4056d8:	75 0e                	jne    4056e8 <readtask@plt+0x3e18>
  4056da:	eb 18                	jmp    4056f4 <readtask@plt+0x3e24>
  4056dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4056e0:	48 83 c0 18          	add    $0x18,%rax
  4056e4:	39 fa                	cmp    %edi,%edx
  4056e6:	74 0a                	je     4056f2 <readtask@plt+0x3e22>
  4056e8:	8b 50 18             	mov    0x18(%rax),%edx
  4056eb:	83 fa 7e             	cmp    $0x7e,%edx
  4056ee:	75 f0                	jne    4056e0 <readtask@plt+0x3e10>
  4056f0:	31 c0                	xor    %eax,%eax
  4056f2:	f3 c3                	repz retq 
  4056f4:	f3 c3                	repz retq 
  4056f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4056fd:	00 00 00 
  405700:	48 83 ec 38          	sub    $0x38,%rsp
  405704:	41 b8 70 3a 40 00    	mov    $0x403a70,%r8d
  40570a:	b9 30 00 00 00       	mov    $0x30,%ecx
  40570f:	48 89 3c 24          	mov    %rdi,(%rsp)
  405713:	ba eb 00 00 00       	mov    $0xeb,%edx
  405718:	48 89 e7             	mov    %rsp,%rdi
  40571b:	be 80 b6 40 00       	mov    $0x40b680,%esi
  405720:	e8 7b c1 ff ff       	callq  4018a0 <bsearch@plt>
  405725:	48 83 c4 38          	add    $0x38,%rsp
  405729:	c3                   	retq   
  40572a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405730:	48 83 ec 18          	sub    $0x18,%rsp
  405734:	41 b8 40 39 40 00    	mov    $0x403940,%r8d
  40573a:	b9 10 00 00 00       	mov    $0x10,%ecx
  40573f:	48 89 3c 24          	mov    %rdi,(%rsp)
  405743:	ba 32 00 00 00       	mov    $0x32,%edx
  405748:	48 89 e7             	mov    %rsp,%rdi
  40574b:	be a0 e6 40 00       	mov    $0x40e6a0,%esi
  405750:	e8 4b c1 ff ff       	callq  4018a0 <bsearch@plt>
  405755:	48 83 c4 18          	add    $0x18,%rsp
  405759:	c3                   	retq   
  40575a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405760:	41 57                	push   %r15
  405762:	41 56                	push   %r14
  405764:	41 55                	push   %r13
  405766:	41 54                	push   %r12
  405768:	55                   	push   %rbp
  405769:	53                   	push   %rbx
  40576a:	48 89 f3             	mov    %rsi,%rbx
  40576d:	48 83 ec 28          	sub    $0x28,%rsp
  405771:	48 83 ff ff          	cmp    $0xffffffffffffffff,%rdi
  405775:	4c 8b 35 ac ef 22 00 	mov    0x22efac(%rip),%r14        # 634728 <stderr+0x203a0>
  40577c:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
  405781:	0f 84 7a 03 00 00    	je     405b01 <readtask@plt+0x4231>
  405787:	48 83 7c 24 10 00    	cmpq   $0x0,0x10(%rsp)
  40578d:	74 17                	je     4057a6 <readtask@plt+0x3ed6>
  40578f:	8b 35 fb ea 20 00    	mov    0x20eafb(%rip),%esi        # 614290 <readtask@plt+0x2129c0>
  405795:	83 ee 01             	sub    $0x1,%esi
  405798:	85 f6                	test   %esi,%esi
  40579a:	89 35 f0 ea 20 00    	mov    %esi,0x20eaf0(%rip)        # 614290 <readtask@plt+0x2129c0>
  4057a0:	0f 84 74 03 00 00    	je     405b1a <readtask@plt+0x424a>
  4057a6:	81 3d 84 ef 22 00 00 	cmpl   $0x20000,0x22ef84(%rip)        # 634734 <stderr+0x203ac>
  4057ad:	00 02 00 
  4057b0:	c7 05 76 ef 22 00 01 	movl   $0x1,0x22ef76(%rip)        # 634730 <stderr+0x203a8>
  4057b7:	00 00 00 
  4057ba:	0f 87 21 03 00 00    	ja     405ae1 <readtask@plt+0x4211>
  4057c0:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%rsp)
  4057c7:	00 
  4057c8:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
  4057cf:	00 
  4057d0:	45 31 ed             	xor    %r13d,%r13d
  4057d3:	45 31 e4             	xor    %r12d,%r12d
  4057d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4057dd:	00 00 00 
  4057e0:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  4057e4:	0f 84 19 01 00 00    	je     405903 <readtask@plt+0x4033>
  4057ea:	8b 43 18             	mov    0x18(%rbx),%eax
  4057ed:	44 89 e5             	mov    %r12d,%ebp
  4057f0:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  4057f7:	00 
  4057f8:	44 29 ed             	sub    %r13d,%ebp
  4057fb:	89 05 0f eb 20 00    	mov    %eax,0x20eb0f(%rip)        # 614310 <readtask@plt+0x212a40>
  405801:	44 01 e8             	add    %r13d,%eax
  405804:	44 29 e0             	sub    %r12d,%eax
  405807:	48 83 7c 24 10 00    	cmpq   $0x0,0x10(%rsp)
  40580d:	89 05 01 eb 20 00    	mov    %eax,0x20eb01(%rip)        # 614314 <readtask@plt+0x212a44>
  405813:	0f 84 41 02 00 00    	je     405a5a <readtask@plt+0x418a>
  405819:	48 8b 43 10          	mov    0x10(%rbx),%rax
  40581d:	48 85 c0             	test   %rax,%rax
  405820:	0f 84 34 02 00 00    	je     405a5a <readtask@plt+0x418a>
  405826:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  40582b:	4c 89 f7             	mov    %r14,%rdi
  40582e:	ff d0                	callq  *%rax
  405830:	41 89 c7             	mov    %eax,%r15d
  405833:	8b 43 24             	mov    0x24(%rbx),%eax
  405836:	83 e0 0f             	and    $0xf,%eax
  405839:	83 f8 06             	cmp    $0x6,%eax
  40583c:	0f 86 fe 00 00 00    	jbe    405940 <readtask@plt+0x4070>
  405842:	48 8b 0d 3f eb 20 00 	mov    0x20eb3f(%rip),%rcx        # 614388 <stderr>
  405849:	ba 13 00 00 00       	mov    $0x13,%edx
  40584e:	be 01 00 00 00       	mov    $0x1,%esi
  405853:	bf 24 ac 40 00       	mov    $0x40ac24,%edi
  405858:	e8 23 c0 ff ff       	callq  401880 <fwrite@plt>
  40585d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
  405864:	00 
  405865:	0f 1f 00             	nopl   (%rax)
  405868:	03 6c 24 08          	add    0x8(%rsp),%ebp
  40586c:	85 ed                	test   %ebp,%ebp
  40586e:	0f 8e 1c 01 00 00    	jle    405990 <readtask@plt+0x40c0>
  405874:	81 fd 90 00 00 00    	cmp    $0x90,%ebp
  40587a:	0f 8f f6 01 00 00    	jg     405a76 <readtask@plt+0x41a6>
  405880:	48 63 d5             	movslq %ebp,%rdx
  405883:	48 f7 da             	neg    %rdx
  405886:	4c 89 f7             	mov    %r14,%rdi
  405889:	48 89 14 24          	mov    %rdx,(%rsp)
  40588d:	e8 4e bd ff ff       	callq  4015e0 <strlen@plt>
  405892:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  405896:	48 8b 14 24          	mov    (%rsp),%rdx
  40589a:	0f 84 e7 01 00 00    	je     405a87 <readtask@plt+0x41b7>
  4058a0:	44 8d 44 05 00       	lea    0x0(%rbp,%rax,1),%r8d
  4058a5:	48 8b 0d 84 ea 20 00 	mov    0x20ea84(%rip),%rcx        # 614330 <stdout>
  4058ac:	49 8d 3c 16          	lea    (%r14,%rdx,1),%rdi
  4058b0:	ba 01 00 00 00       	mov    $0x1,%edx
  4058b5:	44 01 fd             	add    %r15d,%ebp
  4058b8:	49 63 f0             	movslq %r8d,%rsi
  4058bb:	41 01 ed             	add    %ebp,%r13d
  4058be:	e8 bd bf ff ff       	callq  401880 <fwrite@plt>
  4058c3:	44 03 63 18          	add    0x18(%rbx),%r12d
  4058c7:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%rsp)
  4058ce:	00 
  4058cf:	44 03 64 24 0c       	add    0xc(%rsp),%r12d
  4058d4:	48 83 7b 10 00       	cmpq   $0x0,0x10(%rbx)
  4058d9:	48 8b 1b             	mov    (%rbx),%rbx
  4058dc:	0f 84 fe fe ff ff    	je     4057e0 <readtask@plt+0x3f10>
  4058e2:	48 83 7b 10 00       	cmpq   $0x0,0x10(%rbx)
  4058e7:	0f 84 f3 fe ff ff    	je     4057e0 <readtask@plt+0x3f10>
  4058ed:	41 83 c4 01          	add    $0x1,%r12d
  4058f1:	48 83 3b 00          	cmpq   $0x0,(%rbx)
  4058f5:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%rsp)
  4058fc:	00 
  4058fd:	0f 85 e7 fe ff ff    	jne    4057ea <readtask@plt+0x3f1a>
  405903:	44 89 e5             	mov    %r12d,%ebp
  405906:	44 29 ed             	sub    %r13d,%ebp
  405909:	85 ed                	test   %ebp,%ebp
  40590b:	0f 8e a8 01 00 00    	jle    405ab9 <readtask@plt+0x41e9>
  405911:	44 8b 15 1c ee 22 00 	mov    0x22ee1c(%rip),%r10d        # 634734 <stderr+0x203ac>
  405918:	45 39 e5             	cmp    %r12d,%r13d
  40591b:	45 89 e3             	mov    %r12d,%r11d
  40591e:	45 0f 4d dd          	cmovge %r13d,%r11d
  405922:	8b 43 18             	mov    0x18(%rbx),%eax
  405925:	89 6c 24 1c          	mov    %ebp,0x1c(%rsp)
  405929:	45 29 da             	sub    %r11d,%r10d
  40592c:	44 89 15 dd e9 20 00 	mov    %r10d,0x20e9dd(%rip)        # 614310 <readtask@plt+0x212a40>
  405933:	e9 c9 fe ff ff       	jmpq   405801 <readtask@plt+0x3f31>
  405938:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40593f:	00 
  405940:	ff 24 c5 40 b6 40 00 	jmpq   *0x40b640(,%rax,8)
  405947:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40594e:	00 00 
  405950:	8b 05 c2 e8 20 00    	mov    0x20e8c2(%rip),%eax        # 614218 <readtask@plt+0x212948>
  405956:	85 c0                	test   %eax,%eax
  405958:	75 46                	jne    4059a0 <readtask@plt+0x40d0>
  40595a:	8b 3d d4 ed 22 00    	mov    0x22edd4(%rip),%edi        # 634734 <stderr+0x203ac>
  405960:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
  405967:	00 
  405968:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
  40596f:	00 
  405970:	44 29 ef             	sub    %r13d,%edi
  405973:	3b 7c 24 1c          	cmp    0x1c(%rsp),%edi
  405977:	0f 85 eb fe ff ff    	jne    405868 <readtask@plt+0x3f98>
  40597d:	03 6c 24 08          	add    0x8(%rsp),%ebp
  405981:	41 c6 46 01 00       	movb   $0x0,0x1(%r14)
  405986:	85 ed                	test   %ebp,%ebp
  405988:	0f 8f e6 fe ff ff    	jg     405874 <readtask@plt+0x3fa4>
  40598e:	66 90                	xchg   %ax,%ax
  405990:	8b 6c 24 18          	mov    0x18(%rsp),%ebp
  405994:	e9 e7 fe ff ff       	jmpq   405880 <readtask@plt+0x3fb0>
  405999:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4059a0:	8b 73 18             	mov    0x18(%rbx),%esi
  4059a3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
  4059aa:	00 
  4059ab:	44 29 fe             	sub    %r15d,%esi
  4059ae:	89 74 24 08          	mov    %esi,0x8(%rsp)
  4059b2:	0f 89 b0 fe ff ff    	jns    405868 <readtask@plt+0x3f98>
  4059b8:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
  4059bf:	00 
  4059c0:	e9 a3 fe ff ff       	jmpq   405868 <readtask@plt+0x3f98>
  4059c5:	0f 1f 00             	nopl   (%rax)
  4059c8:	8b 0d 42 ed 22 00    	mov    0x22ed42(%rip),%ecx        # 634710 <stderr+0x20388>
  4059ce:	b8 09 00 00 00       	mov    $0x9,%eax
  4059d3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
  4059da:	00 
  4059db:	44 29 f8             	sub    %r15d,%eax
  4059de:	85 c9                	test   %ecx,%ecx
  4059e0:	74 10                	je     4059f2 <readtask@plt+0x4122>
  4059e2:	b8 10 00 00 00       	mov    $0x10,%eax
  4059e7:	c7 44 24 0c 07 00 00 	movl   $0x7,0xc(%rsp)
  4059ee:	00 
  4059ef:	44 29 f8             	sub    %r15d,%eax
  4059f2:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
  4059f9:	00 
  4059fa:	85 c0                	test   %eax,%eax
  4059fc:	0f 48 44 24 08       	cmovs  0x8(%rsp),%eax
  405a01:	89 44 24 08          	mov    %eax,0x8(%rsp)
  405a05:	e9 5e fe ff ff       	jmpq   405868 <readtask@plt+0x3f98>
  405a0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405a10:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
  405a17:	00 
  405a18:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
  405a1f:	00 
  405a20:	e9 43 fe ff ff       	jmpq   405868 <readtask@plt+0x3f98>
  405a25:	0f 1f 00             	nopl   (%rax)
  405a28:	8b 15 ee e7 20 00    	mov    0x20e7ee(%rip),%edx        # 61421c <readtask@plt+0x21294c>
  405a2e:	8b 43 18             	mov    0x18(%rbx),%eax
  405a31:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
  405a38:	00 
  405a39:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
  405a40:	00 
  405a41:	85 d2                	test   %edx,%edx
  405a43:	0f 84 1f fe ff ff    	je     405868 <readtask@plt+0x3f98>
  405a49:	44 29 f8             	sub    %r15d,%eax
  405a4c:	0f 48 44 24 0c       	cmovs  0xc(%rsp),%eax
  405a51:	89 44 24 08          	mov    %eax,0x8(%rsp)
  405a55:	e9 0e fe ff ff       	jmpq   405868 <readtask@plt+0x3f98>
  405a5a:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  405a5e:	4c 89 f7             	mov    %r14,%rdi
  405a61:	e8 ea ba ff ff       	callq  401550 <strcpy@plt>
  405a66:	48 89 c7             	mov    %rax,%rdi
  405a69:	e8 72 bb ff ff       	callq  4015e0 <strlen@plt>
  405a6e:	41 89 c7             	mov    %eax,%r15d
  405a71:	e9 bd fd ff ff       	jmpq   405833 <readtask@plt+0x3f63>
  405a76:	48 c7 c2 70 ff ff ff 	mov    $0xffffffffffffff70,%rdx
  405a7d:	bd 90 00 00 00       	mov    $0x90,%ebp
  405a82:	e9 ff fd ff ff       	jmpq   405886 <readtask@plt+0x3fb6>
  405a87:	8d 5c 05 01          	lea    0x1(%rbp,%rax,1),%ebx
  405a8b:	4c 63 e0             	movslq %eax,%r12
  405a8e:	49 8d 3c 16          	lea    (%r14,%rdx,1),%rdi
  405a92:	43 c6 04 26 0a       	movb   $0xa,(%r14,%r12,1)
  405a97:	48 8b 0d 92 e8 20 00 	mov    0x20e892(%rip),%rcx        # 614330 <stdout>
  405a9e:	48 83 c4 28          	add    $0x28,%rsp
  405aa2:	48 63 f3             	movslq %ebx,%rsi
  405aa5:	ba 01 00 00 00       	mov    $0x1,%edx
  405aaa:	5b                   	pop    %rbx
  405aab:	5d                   	pop    %rbp
  405aac:	41 5c                	pop    %r12
  405aae:	41 5d                	pop    %r13
  405ab0:	41 5e                	pop    %r14
  405ab2:	41 5f                	pop    %r15
  405ab4:	e9 c7 bd ff ff       	jmpq   401880 <fwrite@plt>
  405ab9:	44 8b 0d 74 ec 22 00 	mov    0x22ec74(%rip),%r9d        # 634734 <stderr+0x203ac>
  405ac0:	44 8b 44 24 18       	mov    0x18(%rsp),%r8d
  405ac5:	8b 43 18             	mov    0x18(%rbx),%eax
  405ac8:	45 29 e9             	sub    %r13d,%r9d
  405acb:	44 2b 4c 24 18       	sub    0x18(%rsp),%r9d
  405ad0:	44 89 44 24 1c       	mov    %r8d,0x1c(%rsp)
  405ad5:	44 89 0d 34 e8 20 00 	mov    %r9d,0x20e834(%rip)        # 614310 <readtask@plt+0x212a40>
  405adc:	e9 20 fd ff ff       	jmpq   405801 <readtask@plt+0x3f31>
  405ae1:	48 8b 0d a0 e8 20 00 	mov    0x20e8a0(%rip),%rcx        # 614388 <stderr>
  405ae8:	ba 13 00 00 00       	mov    $0x13,%edx
  405aed:	be 01 00 00 00       	mov    $0x1,%esi
  405af2:	bf 10 ac 40 00       	mov    $0x40ac10,%edi
  405af7:	e8 84 bd ff ff       	callq  401880 <fwrite@plt>
  405afc:	e9 bf fc ff ff       	jmpq   4057c0 <readtask@plt+0x3ef0>
  405b01:	8b 0d 29 ec 22 00    	mov    0x22ec29(%rip),%ecx        # 634730 <stderr+0x203a8>
  405b07:	85 c9                	test   %ecx,%ecx
  405b09:	74 2a                	je     405b35 <readtask@plt+0x4265>
  405b0b:	48 83 c4 28          	add    $0x28,%rsp
  405b0f:	5b                   	pop    %rbx
  405b10:	5d                   	pop    %rbp
  405b11:	41 5c                	pop    %r12
  405b13:	41 5d                	pop    %r13
  405b15:	41 5e                	pop    %r14
  405b17:	41 5f                	pop    %r15
  405b19:	c3                   	retq   
  405b1a:	8b 3d 7c e7 20 00    	mov    0x20e77c(%rip),%edi        # 61429c <readtask@plt+0x2129cc>
  405b20:	48 89 de             	mov    %rbx,%rsi
  405b23:	89 3d 67 e7 20 00    	mov    %edi,0x20e767(%rip)        # 614290 <readtask@plt+0x2129c0>
  405b29:	31 ff                	xor    %edi,%edi
  405b2b:	e8 30 fc ff ff       	callq  405760 <readtask@plt+0x3e90>
  405b30:	e9 71 fc ff ff       	jmpq   4057a6 <readtask@plt+0x3ed6>
  405b35:	8b 05 55 e7 20 00    	mov    0x20e755(%rip),%eax        # 614290 <readtask@plt+0x2129c0>
  405b3b:	83 e8 01             	sub    $0x1,%eax
  405b3e:	85 c0                	test   %eax,%eax
  405b40:	89 05 4a e7 20 00    	mov    %eax,0x20e74a(%rip)        # 614290 <readtask@plt+0x2129c0>
  405b46:	75 13                	jne    405b5b <readtask@plt+0x428b>
  405b48:	8b 15 4e e7 20 00    	mov    0x20e74e(%rip),%edx        # 61429c <readtask@plt+0x2129cc>
  405b4e:	31 ff                	xor    %edi,%edi
  405b50:	89 15 3a e7 20 00    	mov    %edx,0x20e73a(%rip)        # 614290 <readtask@plt+0x2129c0>
  405b56:	e8 05 fc ff ff       	callq  405760 <readtask@plt+0x3e90>
  405b5b:	bf 01 00 00 00       	mov    $0x1,%edi
  405b60:	e8 0b bd ff ff       	callq  401870 <exit@plt>
  405b65:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  405b6c:	00 00 00 00 
  405b70:	55                   	push   %rbp
  405b71:	53                   	push   %rbx
  405b72:	48 83 ec 08          	sub    $0x8,%rsp
  405b76:	8b 05 fc e6 20 00    	mov    0x20e6fc(%rip),%eax        # 614278 <readtask@plt+0x2129a8>
  405b7c:	3d 00 20 00 00       	cmp    $0x2000,%eax
  405b81:	0f 84 a9 02 00 00    	je     405e30 <readtask@plt+0x4560>
  405b87:	0f 8e e3 01 00 00    	jle    405d70 <readtask@plt+0x44a0>
  405b8d:	3d 00 80 00 00       	cmp    $0x8000,%eax
  405b92:	0f 84 68 02 00 00    	je     405e00 <readtask@plt+0x4530>
  405b98:	3d 00 00 01 00       	cmp    $0x10000,%eax
  405b9d:	0f 84 09 02 00 00    	je     405dac <readtask@plt+0x44dc>
  405ba3:	3d 00 40 00 00       	cmp    $0x4000,%eax
  405ba8:	0f 84 97 02 00 00    	je     405e45 <readtask@plt+0x4575>
  405bae:	48 8b 0d d3 e7 20 00 	mov    0x20e7d3(%rip),%rcx        # 614388 <stderr>
  405bb5:	ba 21 00 00 00       	mov    $0x21,%edx
  405bba:	be 01 00 00 00       	mov    $0x1,%esi
  405bbf:	bf c0 e9 40 00       	mov    $0x40e9c0,%edi
  405bc4:	e8 b7 bc ff ff       	callq  401880 <fwrite@plt>
  405bc9:	8b 0d a9 e6 20 00    	mov    0x20e6a9(%rip),%ecx        # 614278 <readtask@plt+0x2129a8>
  405bcf:	48 c7 05 5e eb 22 00 	movq   $0xc,0x22eb5e(%rip)        # 634738 <stderr+0x203b0>
  405bd6:	0c 00 00 00 
  405bda:	8d 99 8f 00 02 00    	lea    0x2008f(%rcx),%ebx
  405be0:	45 31 c9             	xor    %r9d,%r9d
  405be3:	31 ff                	xor    %edi,%edi
  405be5:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  405beb:	89 da                	mov    %ebx,%edx
  405bed:	89 d8                	mov    %ebx,%eax
  405bef:	c1 fa 1f             	sar    $0x1f,%edx
  405bf2:	f7 f9                	idiv   %ecx
  405bf4:	ba 03 00 00 00       	mov    $0x3,%edx
  405bf9:	89 c3                	mov    %eax,%ebx
  405bfb:	8d 73 01             	lea    0x1(%rbx),%esi
  405bfe:	0f af f1             	imul   %ecx,%esi
  405c01:	b9 22 00 00 00       	mov    $0x22,%ecx
  405c06:	48 63 f6             	movslq %esi,%rsi
  405c09:	e8 02 ba ff ff       	callq  401610 <mmap@plt>
  405c0e:	a8 01                	test   $0x1,%al
  405c10:	48 89 c5             	mov    %rax,%rbp
  405c13:	48 89 c2             	mov    %rax,%rdx
  405c16:	be 90 00 00 00       	mov    $0x90,%esi
  405c1b:	0f 85 39 02 00 00    	jne    405e5a <readtask@plt+0x458a>
  405c21:	f6 c2 02             	test   $0x2,%dl
  405c24:	0f 85 43 02 00 00    	jne    405e6d <readtask@plt+0x459d>
  405c2a:	f6 c2 04             	test   $0x4,%dl
  405c2d:	0f 85 4f 02 00 00    	jne    405e82 <readtask@plt+0x45b2>
  405c33:	89 f1                	mov    %esi,%ecx
  405c35:	48 b8 20 20 20 20 20 	movabs $0x2020202020202020,%rax
  405c3c:	20 20 20 
  405c3f:	48 89 d7             	mov    %rdx,%rdi
  405c42:	c1 e9 03             	shr    $0x3,%ecx
  405c45:	40 f6 c6 04          	test   $0x4,%sil
  405c49:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  405c4c:	74 0a                	je     405c58 <readtask@plt+0x4388>
  405c4e:	c7 07 20 20 20 20    	movl   $0x20202020,(%rdi)
  405c54:	48 83 c7 04          	add    $0x4,%rdi
  405c58:	40 f6 c6 02          	test   $0x2,%sil
  405c5c:	74 09                	je     405c67 <readtask@plt+0x4397>
  405c5e:	66 c7 07 20 20       	movw   $0x2020,(%rdi)
  405c63:	48 83 c7 02          	add    $0x2,%rdi
  405c67:	83 e6 01             	and    $0x1,%esi
  405c6a:	74 03                	je     405c6f <readtask@plt+0x439f>
  405c6c:	c6 07 20             	movb   $0x20,(%rdi)
  405c6f:	8b 3d 03 e6 20 00    	mov    0x20e603(%rip),%edi        # 614278 <readtask@plt+0x2129a8>
  405c75:	81 ff 90 00 00 00    	cmp    $0x90,%edi
  405c7b:	0f 84 5f 01 00 00    	je     405de0 <readtask@plt+0x4510>
  405c81:	48 63 f7             	movslq %edi,%rsi
  405c84:	31 d2                	xor    %edx,%edx
  405c86:	0f af fb             	imul   %ebx,%edi
  405c89:	48 63 ff             	movslq %edi,%rdi
  405c8c:	48 01 ef             	add    %rbp,%rdi
  405c8f:	48 81 c5 90 00 00 00 	add    $0x90,%rbp
  405c96:	e8 95 bb ff ff       	callq  401830 <mprotect@plt>
  405c9b:	31 ff                	xor    %edi,%edi
  405c9d:	48 89 2d 84 ea 22 00 	mov    %rbp,0x22ea84(%rip)        # 634728 <stderr+0x203a0>
  405ca4:	e8 b7 ba ff ff       	callq  401760 <time@plt>
  405ca9:	48 89 05 68 ea 22 00 	mov    %rax,0x22ea68(%rip)        # 634718 <stderr+0x20390>
  405cb0:	48 2b 05 a9 e5 20 00 	sub    0x20e5a9(%rip),%rax        # 614260 <readtask@plt+0x212990>
  405cb7:	48 89 05 62 ea 22 00 	mov    %rax,0x22ea62(%rip)        # 634720 <stderr+0x20398>
  405cbe:	e8 7d ba ff ff       	callq  401740 <meminfo@plt>
  405cc3:	48 8b 15 de e5 20 00 	mov    0x20e5de(%rip),%rdx        # 6142a8 <readtask@plt+0x2129d8>
  405cca:	45 31 c0             	xor    %r8d,%r8d
  405ccd:	31 c9                	xor    %ecx,%ecx
  405ccf:	48 85 d2             	test   %rdx,%rdx
  405cd2:	74 60                	je     405d34 <readtask@plt+0x4464>
  405cd4:	31 ff                	xor    %edi,%edi
  405cd6:	31 f6                	xor    %esi,%esi
  405cd8:	eb 24                	jmp    405cfe <readtask@plt+0x442e>
  405cda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405ce0:	83 f8 06             	cmp    $0x6,%eax
  405ce3:	0f 84 df 00 00 00    	je     405dc8 <readtask@plt+0x44f8>
  405ce9:	03 4a 18             	add    0x18(%rdx),%ecx
  405cec:	85 c0                	test   %eax,%eax
  405cee:	0f 85 da 00 00 00    	jne    405dce <readtask@plt+0x44fe>
  405cf4:	48 8b 12             	mov    (%rdx),%rdx
  405cf7:	31 f6                	xor    %esi,%esi
  405cf9:	48 85 d2             	test   %rdx,%rdx
  405cfc:	74 2f                	je     405d2d <readtask@plt+0x445d>
  405cfe:	8b 42 24             	mov    0x24(%rdx),%eax
  405d01:	83 e0 0f             	and    $0xf,%eax
  405d04:	83 f8 04             	cmp    $0x4,%eax
  405d07:	75 d7                	jne    405ce0 <readtask@plt+0x4410>
  405d09:	48 8b 02             	mov    (%rdx),%rax
  405d0c:	44 8d 41 03          	lea    0x3(%rcx),%r8d
  405d10:	48 85 c0             	test   %rax,%rax
  405d13:	74 07                	je     405d1c <readtask@plt+0x444c>
  405d15:	44 8b 42 18          	mov    0x18(%rdx),%r8d
  405d19:	41 01 c8             	add    %ecx,%r8d
  405d1c:	48 89 c2             	mov    %rax,%rdx
  405d1f:	41 8d 0c 30          	lea    (%r8,%rsi,1),%ecx
  405d23:	be 01 00 00 00       	mov    $0x1,%esi
  405d28:	48 85 d2             	test   %rdx,%rdx
  405d2b:	75 d1                	jne    405cfe <readtask@plt+0x442e>
  405d2d:	44 8d 04 f9          	lea    (%rcx,%rdi,8),%r8d
  405d31:	41 29 f8             	sub    %edi,%r8d
  405d34:	8b 35 32 e5 20 00    	mov    0x20e532(%rip),%esi        # 61426c <readtask@plt+0x21299c>
  405d3a:	89 f0                	mov    %esi,%eax
  405d3c:	eb 04                	jmp    405d42 <readtask@plt+0x4472>
  405d3e:	66 90                	xchg   %ax,%ax
  405d40:	89 d0                	mov    %edx,%eax
  405d42:	39 c1                	cmp    %eax,%ecx
  405d44:	76 0a                	jbe    405d50 <readtask@plt+0x4480>
  405d46:	3d ff ff 00 00       	cmp    $0xffff,%eax
  405d4b:	8d 14 30             	lea    (%rax,%rsi,1),%edx
  405d4e:	76 f0                	jbe    405d40 <readtask@plt+0x4470>
  405d50:	41 39 c0             	cmp    %eax,%r8d
  405d53:	89 05 db e9 22 00    	mov    %eax,0x22e9db(%rip)        # 634734 <stderr+0x203ac>
  405d59:	40 0f 96 c5          	setbe  %bpl
  405d5d:	40 0f b6 fd          	movzbl %bpl,%edi
  405d61:	89 3d a9 e9 22 00    	mov    %edi,0x22e9a9(%rip)        # 634710 <stderr+0x20388>
  405d67:	48 83 c4 08          	add    $0x8,%rsp
  405d6b:	5b                   	pop    %rbx
  405d6c:	5d                   	pop    %rbp
  405d6d:	c3                   	retq   
  405d6e:	66 90                	xchg   %ax,%ax
  405d70:	3d 00 08 00 00       	cmp    $0x800,%eax
  405d75:	0f 84 9d 00 00 00    	je     405e18 <readtask@plt+0x4548>
  405d7b:	3d 00 10 00 00       	cmp    $0x1000,%eax
  405d80:	74 20                	je     405da2 <readtask@plt+0x44d2>
  405d82:	3d 00 04 00 00       	cmp    $0x400,%eax
  405d87:	0f 85 21 fe ff ff    	jne    405bae <readtask@plt+0x42de>
  405d8d:	48 c7 05 a0 e9 22 00 	movq   $0xa,0x22e9a0(%rip)        # 634738 <stderr+0x203b0>
  405d94:	0a 00 00 00 
  405d98:	b9 00 04 00 00       	mov    $0x400,%ecx
  405d9d:	e9 38 fe ff ff       	jmpq   405bda <readtask@plt+0x430a>
  405da2:	b9 00 10 00 00       	mov    $0x1000,%ecx
  405da7:	e9 23 fe ff ff       	jmpq   405bcf <readtask@plt+0x42ff>
  405dac:	48 c7 05 81 e9 22 00 	movq   $0x10,0x22e981(%rip)        # 634738 <stderr+0x203b0>
  405db3:	10 00 00 00 
  405db7:	b9 00 00 01 00       	mov    $0x10000,%ecx
  405dbc:	e9 19 fe ff ff       	jmpq   405bda <readtask@plt+0x430a>
  405dc1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405dc8:	03 4a 18             	add    0x18(%rdx),%ecx
  405dcb:	83 c7 01             	add    $0x1,%edi
  405dce:	01 f1                	add    %esi,%ecx
  405dd0:	48 8b 12             	mov    (%rdx),%rdx
  405dd3:	be 01 00 00 00       	mov    $0x1,%esi
  405dd8:	e9 1c ff ff ff       	jmpq   405cf9 <readtask@plt+0x4429>
  405ddd:	0f 1f 00             	nopl   (%rax)
  405de0:	48 89 ef             	mov    %rbp,%rdi
  405de3:	ba 01 00 00 00       	mov    $0x1,%edx
  405de8:	be 90 00 00 00       	mov    $0x90,%esi
  405ded:	e8 3e ba ff ff       	callq  401830 <mprotect@plt>
  405df2:	8b 3d 80 e4 20 00    	mov    0x20e480(%rip),%edi        # 614278 <readtask@plt+0x2129a8>
  405df8:	e9 84 fe ff ff       	jmpq   405c81 <readtask@plt+0x43b1>
  405dfd:	0f 1f 00             	nopl   (%rax)
  405e00:	48 c7 05 2d e9 22 00 	movq   $0xf,0x22e92d(%rip)        # 634738 <stderr+0x203b0>
  405e07:	0f 00 00 00 
  405e0b:	b9 00 80 00 00       	mov    $0x8000,%ecx
  405e10:	e9 c5 fd ff ff       	jmpq   405bda <readtask@plt+0x430a>
  405e15:	0f 1f 00             	nopl   (%rax)
  405e18:	48 c7 05 15 e9 22 00 	movq   $0xb,0x22e915(%rip)        # 634738 <stderr+0x203b0>
  405e1f:	0b 00 00 00 
  405e23:	b9 00 08 00 00       	mov    $0x800,%ecx
  405e28:	e9 ad fd ff ff       	jmpq   405bda <readtask@plt+0x430a>
  405e2d:	0f 1f 00             	nopl   (%rax)
  405e30:	48 c7 05 fd e8 22 00 	movq   $0xd,0x22e8fd(%rip)        # 634738 <stderr+0x203b0>
  405e37:	0d 00 00 00 
  405e3b:	b9 00 20 00 00       	mov    $0x2000,%ecx
  405e40:	e9 95 fd ff ff       	jmpq   405bda <readtask@plt+0x430a>
  405e45:	48 c7 05 e8 e8 22 00 	movq   $0xe,0x22e8e8(%rip)        # 634738 <stderr+0x203b0>
  405e4c:	0e 00 00 00 
  405e50:	b9 00 40 00 00       	mov    $0x4000,%ecx
  405e55:	e9 80 fd ff ff       	jmpq   405bda <readtask@plt+0x430a>
  405e5a:	48 8d 50 01          	lea    0x1(%rax),%rdx
  405e5e:	c6 00 20             	movb   $0x20,(%rax)
  405e61:	40 b6 8f             	mov    $0x8f,%sil
  405e64:	f6 c2 02             	test   $0x2,%dl
  405e67:	0f 84 bd fd ff ff    	je     405c2a <readtask@plt+0x435a>
  405e6d:	66 c7 02 20 20       	movw   $0x2020,(%rdx)
  405e72:	48 83 c2 02          	add    $0x2,%rdx
  405e76:	83 ee 02             	sub    $0x2,%esi
  405e79:	f6 c2 04             	test   $0x4,%dl
  405e7c:	0f 84 b1 fd ff ff    	je     405c33 <readtask@plt+0x4363>
  405e82:	c7 02 20 20 20 20    	movl   $0x20202020,(%rdx)
  405e88:	83 ee 04             	sub    $0x4,%esi
  405e8b:	48 83 c2 04          	add    $0x4,%rdx
  405e8f:	e9 9f fd ff ff       	jmpq   405c33 <readtask@plt+0x4363>
  405e94:	90                   	nop
  405e95:	90                   	nop
  405e96:	90                   	nop
  405e97:	90                   	nop
  405e98:	90                   	nop
  405e99:	90                   	nop
  405e9a:	90                   	nop
  405e9b:	90                   	nop
  405e9c:	90                   	nop
  405e9d:	90                   	nop
  405e9e:	90                   	nop
  405e9f:	90                   	nop
  405ea0:	48 8b 36             	mov    (%rsi),%rsi
  405ea3:	48 8b 3f             	mov    (%rdi),%rdi
  405ea6:	e9 25 b8 ff ff       	jmpq   4016d0 <strcmp@plt>
  405eab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405eb0:	48 89 f8             	mov    %rdi,%rax
  405eb3:	48 83 ec 08          	sub    $0x8,%rsp
  405eb7:	48 89 f7             	mov    %rsi,%rdi
  405eba:	ba 10 00 00 00       	mov    $0x10,%edx
  405ebf:	48 89 c6             	mov    %rax,%rsi
  405ec2:	e8 59 b6 ff ff       	callq  401520 <strncpy@plt>
  405ec7:	31 c0                	xor    %eax,%eax
  405ec9:	48 83 c4 08          	add    $0x8,%rsp
  405ecd:	c3                   	retq   
  405ece:	66 90                	xchg   %ax,%ax
  405ed0:	41 57                	push   %r15
  405ed2:	41 56                	push   %r14
  405ed4:	49 89 fe             	mov    %rdi,%r14
  405ed7:	bf 18 00 00 00       	mov    $0x18,%edi
  405edc:	41 55                	push   %r13
  405ede:	41 54                	push   %r12
  405ee0:	49 89 f4             	mov    %rsi,%r12
  405ee3:	55                   	push   %rbp
  405ee4:	53                   	push   %rbx
  405ee5:	48 83 ec 18          	sub    $0x18,%rsp
  405ee9:	e8 d2 b8 ff ff       	callq  4017c0 <malloc@plt>
  405eee:	4c 89 f7             	mov    %r14,%rdi
  405ef1:	48 89 c5             	mov    %rax,%rbp
  405ef4:	e8 e7 b6 ff ff       	callq  4015e0 <strlen@plt>
  405ef9:	48 c1 e0 04          	shl    $0x4,%rax
  405efd:	48 89 c7             	mov    %rax,%rdi
  405f00:	e8 bb b8 ff ff       	callq  4017c0 <malloc@plt>
  405f05:	4c 89 f7             	mov    %r14,%rdi
  405f08:	48 89 c3             	mov    %rax,%rbx
  405f0b:	48 89 45 08          	mov    %rax,0x8(%rbp)
  405f0f:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%rbp)
  405f16:	e8 c5 b6 ff ff       	callq  4015e0 <strlen@plt>
  405f1b:	48 8d 78 01          	lea    0x1(%rax),%rdi
  405f1f:	e8 9c b8 ff ff       	callq  4017c0 <malloc@plt>
  405f24:	4c 89 f6             	mov    %r14,%rsi
  405f27:	49 89 c5             	mov    %rax,%r13
  405f2a:	48 89 c7             	mov    %rax,%rdi
  405f2d:	e8 1e b6 ff ff       	callq  401550 <strcpy@plt>
  405f32:	41 0f b6 4d 00       	movzbl 0x0(%r13),%ecx
  405f37:	4c 89 e8             	mov    %r13,%rax
  405f3a:	ba 01 00 00 00       	mov    $0x1,%edx
  405f3f:	31 f6                	xor    %esi,%esi
  405f41:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  405f47:	48 bf 01 02 00 00 01 	movabs $0x100100000201,%rdi
  405f4e:	10 00 00 
  405f51:	eb 25                	jmp    405f78 <readtask@plt+0x46a8>
  405f53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405f58:	4d 89 c1             	mov    %r8,%r9
  405f5b:	49 d3 e1             	shl    %cl,%r9
  405f5e:	49 85 f9             	test   %rdi,%r9
  405f61:	74 1a                	je     405f7d <readtask@plt+0x46ad>
  405f63:	85 d2                	test   %edx,%edx
  405f65:	0f 85 d5 00 00 00    	jne    406040 <readtask@plt+0x4770>
  405f6b:	b2 01                	mov    $0x1,%dl
  405f6d:	48 83 c0 01          	add    $0x1,%rax
  405f71:	0f b6 08             	movzbl (%rax),%ecx
  405f74:	84 c9                	test   %cl,%cl
  405f76:	74 19                	je     405f91 <readtask@plt+0x46c1>
  405f78:	80 f9 2c             	cmp    $0x2c,%cl
  405f7b:	76 db                	jbe    405f58 <readtask@plt+0x4688>
  405f7d:	85 d2                	test   %edx,%edx
  405f7f:	74 ec                	je     405f6d <readtask@plt+0x469d>
  405f81:	48 83 c0 01          	add    $0x1,%rax
  405f85:	83 c6 01             	add    $0x1,%esi
  405f88:	31 d2                	xor    %edx,%edx
  405f8a:	0f b6 08             	movzbl (%rax),%ecx
  405f8d:	84 c9                	test   %cl,%cl
  405f8f:	75 e7                	jne    405f78 <readtask@plt+0x46a8>
  405f91:	85 d2                	test   %edx,%edx
  405f93:	b8 be f2 40 00       	mov    $0x40f2be,%eax
  405f98:	0f 85 aa 00 00 00    	jne    406048 <readtask@plt+0x4778>
  405f9e:	85 f6                	test   %esi,%esi
  405fa0:	89 75 10             	mov    %esi,0x10(%rbp)
  405fa3:	0f 84 d7 00 00 00    	je     406080 <readtask@plt+0x47b0>
  405fa9:	83 ee 01             	sub    $0x1,%esi
  405fac:	4c 89 ef             	mov    %r13,%rdi
  405faf:	48 63 c6             	movslq %esi,%rax
  405fb2:	49 89 c6             	mov    %rax,%r14
  405fb5:	48 29 f0             	sub    %rsi,%rax
  405fb8:	48 c1 e0 04          	shl    $0x4,%rax
  405fbc:	49 c1 e6 04          	shl    $0x4,%r14
  405fc0:	48 83 e8 10          	sub    $0x10,%rax
  405fc4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  405fc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405fd0:	0f b6 07             	movzbl (%rdi),%eax
  405fd3:	45 31 ff             	xor    %r15d,%r15d
  405fd6:	84 c0                	test   %al,%al
  405fd8:	74 42                	je     40601c <readtask@plt+0x474c>
  405fda:	0f be c0             	movsbl %al,%eax
  405fdd:	49 89 ff             	mov    %rdi,%r15
  405fe0:	83 f8 20             	cmp    $0x20,%eax
  405fe3:	75 29                	jne    40600e <readtask@plt+0x473e>
  405fe5:	eb 2c                	jmp    406013 <readtask@plt+0x4743>
  405fe7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  405fee:	00 00 
  405ff0:	83 f8 09             	cmp    $0x9,%eax
  405ff3:	74 1e                	je     406013 <readtask@plt+0x4743>
  405ff5:	41 0f b6 47 01       	movzbl 0x1(%r15),%eax
  405ffa:	84 c0                	test   %al,%al
  405ffc:	0f 84 ae 00 00 00    	je     4060b0 <readtask@plt+0x47e0>
  406002:	0f be c0             	movsbl %al,%eax
  406005:	49 83 c7 01          	add    $0x1,%r15
  406009:	83 f8 20             	cmp    $0x20,%eax
  40600c:	74 05                	je     406013 <readtask@plt+0x4743>
  40600e:	83 f8 2c             	cmp    $0x2c,%eax
  406011:	75 dd                	jne    405ff0 <readtask@plt+0x4720>
  406013:	4d 85 ff             	test   %r15,%r15
  406016:	74 04                	je     40601c <readtask@plt+0x474c>
  406018:	41 c6 07 00          	movb   $0x0,(%r15)
  40601c:	4a 8d 34 33          	lea    (%rbx,%r14,1),%rsi
  406020:	41 ff d4             	callq  *%r12
  406023:	48 85 c0             	test   %rax,%rax
  406026:	75 20                	jne    406048 <readtask@plt+0x4778>
  406028:	49 83 ee 10          	sub    $0x10,%r14
  40602c:	4c 3b 74 24 08       	cmp    0x8(%rsp),%r14
  406031:	74 4d                	je     406080 <readtask@plt+0x47b0>
  406033:	49 8d 7f 01          	lea    0x1(%r15),%rdi
  406037:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
  40603b:	eb 93                	jmp    405fd0 <readtask@plt+0x4700>
  40603d:	0f 1f 00             	nopl   (%rax)
  406040:	b8 be f2 40 00       	mov    $0x40f2be,%eax
  406045:	0f 1f 00             	nopl   (%rax)
  406048:	4c 89 ef             	mov    %r13,%rdi
  40604b:	48 89 04 24          	mov    %rax,(%rsp)
  40604f:	e8 9c b4 ff ff       	callq  4014f0 <free@plt>
  406054:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
  406058:	e8 93 b4 ff ff       	callq  4014f0 <free@plt>
  40605d:	48 89 ef             	mov    %rbp,%rdi
  406060:	e8 8b b4 ff ff       	callq  4014f0 <free@plt>
  406065:	48 8b 04 24          	mov    (%rsp),%rax
  406069:	48 83 c4 18          	add    $0x18,%rsp
  40606d:	5b                   	pop    %rbx
  40606e:	5d                   	pop    %rbp
  40606f:	41 5c                	pop    %r12
  406071:	41 5d                	pop    %r13
  406073:	41 5e                	pop    %r14
  406075:	41 5f                	pop    %r15
  406077:	c3                   	retq   
  406078:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40607f:	00 
  406080:	4c 89 ef             	mov    %r13,%rdi
  406083:	e8 68 b4 ff ff       	callq  4014f0 <free@plt>
  406088:	48 8b 15 c9 e1 20 00 	mov    0x20e1c9(%rip),%rdx        # 614258 <readtask@plt+0x212988>
  40608f:	48 89 2d c2 e1 20 00 	mov    %rbp,0x20e1c2(%rip)        # 614258 <readtask@plt+0x212988>
  406096:	31 c0                	xor    %eax,%eax
  406098:	48 89 55 00          	mov    %rdx,0x0(%rbp)
  40609c:	48 83 c4 18          	add    $0x18,%rsp
  4060a0:	5b                   	pop    %rbx
  4060a1:	5d                   	pop    %rbp
  4060a2:	41 5c                	pop    %r12
  4060a4:	41 5d                	pop    %r13
  4060a6:	41 5e                	pop    %r14
  4060a8:	41 5f                	pop    %r15
  4060aa:	c3                   	retq   
  4060ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4060b0:	45 31 ff             	xor    %r15d,%r15d
  4060b3:	e9 64 ff ff ff       	jmpq   40601c <readtask@plt+0x474c>
  4060b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4060bf:	00 
  4060c0:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
  4060c5:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
  4060ca:	48 89 fb             	mov    %rdi,%rbx
  4060cd:	4c 89 64 24 f8       	mov    %r12,-0x8(%rsp)
  4060d2:	48 81 ec b8 10 00 00 	sub    $0x10b8,%rsp
  4060d9:	48 89 f5             	mov    %rsi,%rbp
  4060dc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4060e3:	00 00 
  4060e5:	48 89 84 24 98 10 00 	mov    %rax,0x1098(%rsp)
  4060ec:	00 
  4060ed:	31 c0                	xor    %eax,%eax
  4060ef:	80 3f 2f             	cmpb   $0x2f,(%rdi)
  4060f2:	0f 84 98 00 00 00    	je     406190 <readtask@plt+0x48c0>
  4060f8:	49 89 f9             	mov    %rdi,%r9
  4060fb:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  406102:	00 
  406103:	41 b8 cd f2 40 00    	mov    $0x40f2cd,%r8d
  406109:	b9 00 10 00 00       	mov    $0x1000,%ecx
  40610e:	ba 01 00 00 00       	mov    $0x1,%edx
  406113:	be 00 10 00 00       	mov    $0x1000,%esi
  406118:	31 c0                	xor    %eax,%eax
  40611a:	e8 c1 b3 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  40611f:	48 8d b4 24 90 00 00 	lea    0x90(%rsp),%rsi
  406126:	00 
  406127:	48 89 e2             	mov    %rsp,%rdx
  40612a:	bf 01 00 00 00       	mov    $0x1,%edi
  40612f:	e8 5c b6 ff ff       	callq  401790 <__xstat@plt>
  406134:	85 c0                	test   %eax,%eax
  406136:	78 78                	js     4061b0 <readtask@plt+0x48e0>
  406138:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40613c:	41 bc 00 08 41 00    	mov    $0x410800,%r12d
  406142:	25 00 f0 00 00       	and    $0xf000,%eax
  406147:	3d 00 20 00 00       	cmp    $0x2000,%eax
  40614c:	0f 84 8e 01 00 00    	je     4062e0 <readtask@plt+0x4a10>
  406152:	48 8b 94 24 98 10 00 	mov    0x1098(%rsp),%rdx
  406159:	00 
  40615a:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  406161:	00 00 
  406163:	4c 89 e0             	mov    %r12,%rax
  406166:	0f 85 85 01 00 00    	jne    4062f1 <readtask@plt+0x4a21>
  40616c:	48 8b 9c 24 a0 10 00 	mov    0x10a0(%rsp),%rbx
  406173:	00 
  406174:	48 8b ac 24 a8 10 00 	mov    0x10a8(%rsp),%rbp
  40617b:	00 
  40617c:	4c 8b a4 24 b0 10 00 	mov    0x10b0(%rsp),%r12
  406183:	00 
  406184:	48 81 c4 b8 10 00 00 	add    $0x10b8,%rsp
  40618b:	c3                   	retq   
  40618c:	0f 1f 40 00          	nopl   0x0(%rax)
  406190:	48 89 fe             	mov    %rdi,%rsi
  406193:	48 89 e2             	mov    %rsp,%rdx
  406196:	bf 01 00 00 00       	mov    $0x1,%edi
  40619b:	e8 f0 b5 ff ff       	callq  401790 <__xstat@plt>
  4061a0:	85 c0                	test   %eax,%eax
  4061a2:	41 bc e0 07 41 00    	mov    $0x4107e0,%r12d
  4061a8:	79 8e                	jns    406138 <readtask@plt+0x4868>
  4061aa:	eb a6                	jmp    406152 <readtask@plt+0x4882>
  4061ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4061b0:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  4061b7:	00 
  4061b8:	49 89 d9             	mov    %rbx,%r9
  4061bb:	41 b8 d9 f2 40 00    	mov    $0x40f2d9,%r8d
  4061c1:	b9 00 10 00 00       	mov    $0x1000,%ecx
  4061c6:	ba 01 00 00 00       	mov    $0x1,%edx
  4061cb:	be 00 10 00 00       	mov    $0x1000,%esi
  4061d0:	31 c0                	xor    %eax,%eax
  4061d2:	e8 09 b3 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  4061d7:	48 8d b4 24 90 00 00 	lea    0x90(%rsp),%rsi
  4061de:	00 
  4061df:	48 89 e2             	mov    %rsp,%rdx
  4061e2:	bf 01 00 00 00       	mov    $0x1,%edi
  4061e7:	e8 a4 b5 ff ff       	callq  401790 <__xstat@plt>
  4061ec:	85 c0                	test   %eax,%eax
  4061ee:	0f 89 44 ff ff ff    	jns    406138 <readtask@plt+0x4868>
  4061f4:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  4061fb:	00 
  4061fc:	49 89 d9             	mov    %rbx,%r9
  4061ff:	41 b8 e1 f2 40 00    	mov    $0x40f2e1,%r8d
  406205:	b9 00 10 00 00       	mov    $0x1000,%ecx
  40620a:	ba 01 00 00 00       	mov    $0x1,%edx
  40620f:	be 00 10 00 00       	mov    $0x1000,%esi
  406214:	31 c0                	xor    %eax,%eax
  406216:	e8 c5 b2 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  40621b:	48 8d b4 24 90 00 00 	lea    0x90(%rsp),%rsi
  406222:	00 
  406223:	48 89 e2             	mov    %rsp,%rdx
  406226:	bf 01 00 00 00       	mov    $0x1,%edi
  40622b:	e8 60 b5 ff ff       	callq  401790 <__xstat@plt>
  406230:	85 c0                	test   %eax,%eax
  406232:	0f 89 00 ff ff ff    	jns    406138 <readtask@plt+0x4868>
  406238:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40623f:	00 
  406240:	49 89 d9             	mov    %rbx,%r9
  406243:	41 b8 ec f2 40 00    	mov    $0x40f2ec,%r8d
  406249:	b9 00 10 00 00       	mov    $0x1000,%ecx
  40624e:	ba 01 00 00 00       	mov    $0x1,%edx
  406253:	be 00 10 00 00       	mov    $0x1000,%esi
  406258:	31 c0                	xor    %eax,%eax
  40625a:	e8 81 b2 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  40625f:	48 8d b4 24 90 00 00 	lea    0x90(%rsp),%rsi
  406266:	00 
  406267:	48 89 e2             	mov    %rsp,%rdx
  40626a:	bf 01 00 00 00       	mov    $0x1,%edi
  40626f:	e8 1c b5 ff ff       	callq  401790 <__xstat@plt>
  406274:	85 c0                	test   %eax,%eax
  406276:	0f 89 bc fe ff ff    	jns    406138 <readtask@plt+0x4868>
  40627c:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  406283:	00 
  406284:	49 89 d9             	mov    %rbx,%r9
  406287:	41 b8 f7 f2 40 00    	mov    $0x40f2f7,%r8d
  40628d:	b9 00 10 00 00       	mov    $0x1000,%ecx
  406292:	ba 01 00 00 00       	mov    $0x1,%edx
  406297:	be 00 10 00 00       	mov    $0x1000,%esi
  40629c:	31 c0                	xor    %eax,%eax
  40629e:	e8 3d b2 ff ff       	callq  4014e0 <__snprintf_chk@plt>
  4062a3:	48 8d b4 24 90 00 00 	lea    0x90(%rsp),%rsi
  4062aa:	00 
  4062ab:	48 89 e2             	mov    %rsp,%rdx
  4062ae:	bf 01 00 00 00       	mov    $0x1,%edi
  4062b3:	e8 d8 b4 ff ff       	callq  401790 <__xstat@plt>
  4062b8:	85 c0                	test   %eax,%eax
  4062ba:	0f 89 78 fe ff ff    	jns    406138 <readtask@plt+0x4868>
  4062c0:	0f b6 03             	movzbl (%rbx),%eax
  4062c3:	83 f8 2d             	cmp    $0x2d,%eax
  4062c6:	75 2e                	jne    4062f6 <readtask@plt+0x4a26>
  4062c8:	80 7b 01 00          	cmpb   $0x0,0x1(%rbx)
  4062cc:	75 2d                	jne    4062fb <readtask@plt+0x4a2b>
  4062ce:	48 c7 45 00 00 00 00 	movq   $0x0,0x0(%rbp)
  4062d5:	00 
  4062d6:	45 31 e4             	xor    %r12d,%r12d
  4062d9:	e9 74 fe ff ff       	jmpq   406152 <readtask@plt+0x4882>
  4062de:	66 90                	xchg   %ax,%ax
  4062e0:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
  4062e5:	45 31 e4             	xor    %r12d,%r12d
  4062e8:	48 89 55 00          	mov    %rdx,0x0(%rbp)
  4062ec:	e9 61 fe ff ff       	jmpq   406152 <readtask@plt+0x4882>
  4062f1:	e8 fa b2 ff ff       	callq  4015f0 <__stack_chk_fail@plt>
  4062f6:	83 f8 3f             	cmp    $0x3f,%eax
  4062f9:	74 cd                	je     4062c8 <readtask@plt+0x49f8>
  4062fb:	80 7b 01 00          	cmpb   $0x0,0x1(%rbx)
  4062ff:	41 bc e0 07 41 00    	mov    $0x4107e0,%r12d
  406305:	0f 85 47 fe ff ff    	jne    406152 <readtask@plt+0x4882>
  40630b:	48 89 e2             	mov    %rsp,%rdx
  40630e:	48 89 de             	mov    %rbx,%rsi
  406311:	bf 01 00 00 00       	mov    $0x1,%edi
  406316:	e8 75 b4 ff ff       	callq  401790 <__xstat@plt>
  40631b:	85 c0                	test   %eax,%eax
  40631d:	0f 88 2f fe ff ff    	js     406152 <readtask@plt+0x4882>
  406323:	eb a9                	jmp    4062ce <readtask@plt+0x49fe>
  406325:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40632c:	00 00 00 00 
  406330:	53                   	push   %rbx
  406331:	48 89 f3             	mov    %rsi,%rbx
  406334:	31 d2                	xor    %edx,%edx
  406336:	48 83 ec 10          	sub    $0x10,%rsp
  40633a:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  40633f:	e8 0c b5 ff ff       	callq  401850 <strtoul@plt>
  406344:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  406349:	ba 20 08 41 00       	mov    $0x410820,%edx
  40634e:	80 39 00             	cmpb   $0x0,(%rcx)
  406351:	75 12                	jne    406365 <readtask@plt+0x4a95>
  406353:	48 85 c0             	test   %rax,%rax
  406356:	ba 40 08 41 00       	mov    $0x410840,%edx
  40635b:	74 08                	je     406365 <readtask@plt+0x4a95>
  40635d:	48 3d ff ff ff 7f    	cmp    $0x7fffffff,%rax
  406363:	76 0b                	jbe    406370 <readtask@plt+0x4aa0>
  406365:	48 83 c4 10          	add    $0x10,%rsp
  406369:	48 89 d0             	mov    %rdx,%rax
  40636c:	5b                   	pop    %rbx
  40636d:	c3                   	retq   
  40636e:	66 90                	xchg   %ax,%ax
  406370:	89 03                	mov    %eax,(%rbx)
  406372:	31 d2                	xor    %edx,%edx
  406374:	eb ef                	jmp    406365 <readtask@plt+0x4a95>
  406376:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40637d:	00 00 00 
  406380:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
  406385:	48 89 6c 24 f8       	mov    %rbp,-0x8(%rsp)
  40638a:	48 83 ec 28          	sub    $0x28,%rsp
  40638e:	48 89 f5             	mov    %rsi,%rbp
  406391:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  406396:	31 d2                	xor    %edx,%edx
  406398:	48 89 fb             	mov    %rdi,%rbx
  40639b:	e8 b0 b4 ff ff       	callq  401850 <strtoul@plt>
  4063a0:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4063a5:	80 3a 00             	cmpb   $0x0,(%rdx)
  4063a8:	75 26                	jne    4063d0 <readtask@plt+0x4b00>
  4063aa:	b9 fe ff ff ff       	mov    $0xfffffffe,%ecx
  4063af:	ba 80 08 41 00       	mov    $0x410880,%edx
  4063b4:	48 39 c8             	cmp    %rcx,%rax
  4063b7:	76 37                	jbe    4063f0 <readtask@plt+0x4b20>
  4063b9:	48 89 d0             	mov    %rdx,%rax
  4063bc:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  4063c1:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
  4063c6:	48 83 c4 28          	add    $0x28,%rsp
  4063ca:	c3                   	retq   
  4063cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4063d0:	48 89 df             	mov    %rbx,%rdi
  4063d3:	e8 08 b3 ff ff       	callq  4016e0 <getpwnam@plt>
  4063d8:	48 85 c0             	test   %rax,%rax
  4063db:	ba 60 08 41 00       	mov    $0x410860,%edx
  4063e0:	74 d7                	je     4063b9 <readtask@plt+0x4ae9>
  4063e2:	8b 40 10             	mov    0x10(%rax),%eax
  4063e5:	eb c3                	jmp    4063aa <readtask@plt+0x4ada>
  4063e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4063ee:	00 00 
  4063f0:	89 45 00             	mov    %eax,0x0(%rbp)
  4063f3:	31 d2                	xor    %edx,%edx
  4063f5:	eb c2                	jmp    4063b9 <readtask@plt+0x4ae9>
  4063f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4063fe:	00 00 
  406400:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
  406405:	48 89 6c 24 f8       	mov    %rbp,-0x8(%rsp)
  40640a:	48 83 ec 28          	sub    $0x28,%rsp
  40640e:	48 89 f5             	mov    %rsi,%rbp
  406411:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  406416:	31 d2                	xor    %edx,%edx
  406418:	48 89 fb             	mov    %rdi,%rbx
  40641b:	e8 30 b4 ff ff       	callq  401850 <strtoul@plt>
  406420:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  406425:	80 3a 00             	cmpb   $0x0,(%rdx)
  406428:	75 26                	jne    406450 <readtask@plt+0x4b80>
  40642a:	b9 fe ff ff ff       	mov    $0xfffffffe,%ecx
  40642f:	ba c0 08 41 00       	mov    $0x4108c0,%edx
  406434:	48 39 c8             	cmp    %rcx,%rax
  406437:	76 37                	jbe    406470 <readtask@plt+0x4ba0>
  406439:	48 89 d0             	mov    %rdx,%rax
  40643c:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  406441:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
  406446:	48 83 c4 28          	add    $0x28,%rsp
  40644a:	c3                   	retq   
  40644b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406450:	48 89 df             	mov    %rbx,%rdi
  406453:	e8 d8 b2 ff ff       	callq  401730 <getgrnam@plt>
  406458:	48 85 c0             	test   %rax,%rax
  40645b:	ba a0 08 41 00       	mov    $0x4108a0,%edx
  406460:	74 d7                	je     406439 <readtask@plt+0x4b69>
  406462:	8b 40 10             	mov    0x10(%rax),%eax
  406465:	eb c3                	jmp    40642a <readtask@plt+0x4b5a>
  406467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40646e:	00 00 
  406470:	89 45 00             	mov    %eax,0x0(%rbp)
  406473:	31 d2                	xor    %edx,%edx
  406475:	eb c2                	jmp    406439 <readtask@plt+0x4b69>
  406477:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40647e:	00 00 
  406480:	48 8b 05 d9 e2 22 00 	mov    0x22e2d9(%rip),%rax        # 634760 <stderr+0x203d8>
  406487:	80 78 01 00          	cmpb   $0x0,0x1(%rax)
  40648b:	75 3b                	jne    4064c8 <readtask@plt+0x4bf8>
  40648d:	8b 0d bd e2 22 00    	mov    0x22e2bd(%rip),%ecx        # 634750 <stderr+0x203c8>
  406493:	31 c0                	xor    %eax,%eax
  406495:	8d 51 01             	lea    0x1(%rcx),%edx
  406498:	3b 15 a2 e2 22 00    	cmp    0x22e2a2(%rip),%edx        # 634740 <stderr+0x203b8>
  40649e:	7d 21                	jge    4064c1 <readtask@plt+0x4bf1>
  4064a0:	48 8b 35 a1 e2 22 00 	mov    0x22e2a1(%rip),%rsi        # 634748 <stderr+0x203c0>
  4064a7:	48 63 f9             	movslq %ecx,%rdi
  4064aa:	48 8b 4c fe 08       	mov    0x8(%rsi,%rdi,8),%rcx
  4064af:	80 39 00             	cmpb   $0x0,(%rcx)
  4064b2:	74 0d                	je     4064c1 <readtask@plt+0x4bf1>
  4064b4:	89 15 96 e2 22 00    	mov    %edx,0x22e296(%rip)        # 634750 <stderr+0x203c8>
  4064ba:	48 63 d2             	movslq %edx,%rdx
  4064bd:	48 8b 04 d6          	mov    (%rsi,%rdx,8),%rax
  4064c1:	f3 c3                	repz retq 
  4064c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4064c8:	c7 05 82 e2 22 00 01 	movl   $0x1,0x22e282(%rip)        # 634754 <stderr+0x203cc>
  4064cf:	00 00 00 
  4064d2:	48 83 c0 01          	add    $0x1,%rax
  4064d6:	c3                   	retq   
  4064d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4064de:	00 00 
  4064e0:	48 8b 15 79 e2 22 00 	mov    0x22e279(%rip),%rdx        # 634760 <stderr+0x203d8>
  4064e7:	0f b6 02             	movzbl (%rdx),%eax
  4064ea:	3c 3a                	cmp    $0x3a,%al
  4064ec:	74 4a                	je     406538 <readtask@plt+0x4c68>
  4064ee:	3c 3d                	cmp    $0x3d,%al
  4064f0:	74 46                	je     406538 <readtask@plt+0x4c68>
  4064f2:	84 c0                	test   %al,%al
  4064f4:	75 3a                	jne    406530 <readtask@plt+0x4c60>
  4064f6:	8b 0d 54 e2 22 00    	mov    0x22e254(%rip),%ecx        # 634750 <stderr+0x203c8>
  4064fc:	31 c0                	xor    %eax,%eax
  4064fe:	8d 51 01             	lea    0x1(%rcx),%edx
  406501:	3b 15 39 e2 22 00    	cmp    0x22e239(%rip),%edx        # 634740 <stderr+0x203b8>
  406507:	7d 29                	jge    406532 <readtask@plt+0x4c62>
  406509:	48 8b 35 38 e2 22 00 	mov    0x22e238(%rip),%rsi        # 634748 <stderr+0x203c0>
  406510:	4c 63 c1             	movslq %ecx,%r8
  406513:	4a 8b 7c c6 08       	mov    0x8(%rsi,%r8,8),%rdi
  406518:	80 3f 00             	cmpb   $0x0,(%rdi)
  40651b:	74 15                	je     406532 <readtask@plt+0x4c62>
  40651d:	89 15 2d e2 22 00    	mov    %edx,0x22e22d(%rip)        # 634750 <stderr+0x203c8>
  406523:	48 63 d2             	movslq %edx,%rdx
  406526:	48 8b 04 d6          	mov    (%rsi,%rdx,8),%rax
  40652a:	c3                   	retq   
  40652b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406530:	31 c0                	xor    %eax,%eax
  406532:	f3 c3                	repz retq 
  406534:	0f 1f 40 00          	nopl   0x0(%rax)
  406538:	31 c0                	xor    %eax,%eax
  40653a:	80 7a 01 00          	cmpb   $0x0,0x1(%rdx)
  40653e:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
  406542:	48 89 0d 17 e2 22 00 	mov    %rcx,0x22e217(%rip)        # 634760 <stderr+0x203d8>
  406549:	48 0f 45 c1          	cmovne %rcx,%rax
  40654d:	c3                   	retq   
  40654e:	66 90                	xchg   %ax,%ax
  406550:	41 54                	push   %r12
  406552:	55                   	push   %rbp
  406553:	53                   	push   %rbx
  406554:	48 83 ec 40          	sub    $0x40,%rsp
  406558:	48 63 15 f1 e1 22 00 	movslq 0x22e1f1(%rip),%rdx        # 634750 <stderr+0x203c8>
  40655f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  406566:	00 00 
  406568:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40656d:	31 c0                	xor    %eax,%eax
  40656f:	48 8b 05 d2 e1 22 00 	mov    0x22e1d2(%rip),%rax        # 634748 <stderr+0x203c0>
  406576:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40657b:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  406582:	00 00 
  406584:	48 89 3c 24          	mov    %rdi,(%rsp)
  406588:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
  40658c:	0f b6 50 02          	movzbl 0x2(%rax),%edx
  406590:	48 8d 70 02          	lea    0x2(%rax),%rsi
  406594:	84 d2                	test   %dl,%dl
  406596:	74 68                	je     406600 <readtask@plt+0x4d30>
  406598:	0f be d2             	movsbl %dl,%edx
  40659b:	83 fa 3a             	cmp    $0x3a,%edx
  40659e:	74 60                	je     406600 <readtask@plt+0x4d30>
  4065a0:	83 fa 3d             	cmp    $0x3d,%edx
  4065a3:	74 5b                	je     406600 <readtask@plt+0x4d30>
  4065a5:	48 83 c0 03          	add    $0x3,%rax
  4065a9:	31 ed                	xor    %ebp,%ebp
  4065ab:	0f b6 10             	movzbl (%rax),%edx
  4065ae:	48 83 c5 01          	add    $0x1,%rbp
  4065b2:	48 89 c3             	mov    %rax,%rbx
  4065b5:	84 d2                	test   %dl,%dl
  4065b7:	74 17                	je     4065d0 <readtask@plt+0x4d00>
  4065b9:	0f be d2             	movsbl %dl,%edx
  4065bc:	83 fa 3a             	cmp    $0x3a,%edx
  4065bf:	74 0f                	je     4065d0 <readtask@plt+0x4d00>
  4065c1:	48 83 c0 01          	add    $0x1,%rax
  4065c5:	83 fa 3d             	cmp    $0x3d,%edx
  4065c8:	75 e1                	jne    4065ab <readtask@plt+0x4cdb>
  4065ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4065d0:	48 83 fd 0f          	cmp    $0xf,%rbp
  4065d4:	41 bc 04 f3 40 00    	mov    $0x40f304,%r12d
  4065da:	76 29                	jbe    406605 <readtask@plt+0x4d35>
  4065dc:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  4065e1:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  4065e8:	00 00 
  4065ea:	4c 89 e0             	mov    %r12,%rax
  4065ed:	0f 85 d6 05 00 00    	jne    406bc9 <readtask@plt+0x52f9>
  4065f3:	48 83 c4 40          	add    $0x40,%rsp
  4065f7:	5b                   	pop    %rbx
  4065f8:	5d                   	pop    %rbp
  4065f9:	41 5c                	pop    %r12
  4065fb:	c3                   	retq   
  4065fc:	0f 1f 40 00          	nopl   0x0(%rax)
  406600:	48 89 f3             	mov    %rsi,%rbx
  406603:	31 ed                	xor    %ebp,%ebp
  406605:	b9 10 00 00 00       	mov    $0x10,%ecx
  40660a:	48 89 ea             	mov    %rbp,%rdx
  40660d:	e8 de b1 ff ff       	callq  4017f0 <__strncpy_chk@plt>
  406612:	41 b8 a0 5e 40 00    	mov    $0x405ea0,%r8d
  406618:	b9 10 00 00 00       	mov    $0x10,%ecx
  40661d:	ba 22 00 00 00       	mov    $0x22,%edx
  406622:	be c0 05 41 00       	mov    $0x4105c0,%esi
  406627:	48 89 e7             	mov    %rsp,%rdi
  40662a:	c6 44 2c 20 00       	movb   $0x0,0x20(%rsp,%rbp,1)
  40662f:	48 89 1d 2a e1 22 00 	mov    %rbx,0x22e12a(%rip)        # 634760 <stderr+0x203d8>
  406636:	e8 65 b2 ff ff       	callq  4018a0 <bsearch@plt>
  40663b:	48 85 c0             	test   %rax,%rax
  40663e:	0f 84 64 05 00 00    	je     406ba8 <readtask@plt+0x52d8>
  406644:	ff 60 08             	jmpq   *0x8(%rax)
  406647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40664e:	00 00 
  406650:	80 3b 00             	cmpb   $0x0,(%rbx)
  406653:	41 bc e0 f5 40 00    	mov    $0x40f5e0,%r12d
  406659:	75 81                	jne    4065dc <readtask@plt+0x4d0c>
  40665b:	8b 3d 37 dc 20 00    	mov    0x20dc37(%rip),%edi        # 614298 <readtask@plt+0x2129c8>
  406661:	41 bc 10 f6 40 00    	mov    $0x40f610,%r12d
  406667:	85 ff                	test   %edi,%edi
  406669:	0f 85 6d ff ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  40666f:	c7 05 1f dc 20 00 01 	movl   $0x1,0x20dc1f(%rip)        # 614298 <readtask@plt+0x2129c8>
  406676:	00 00 00 
  406679:	45 31 e4             	xor    %r12d,%r12d
  40667c:	e9 5b ff ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406681:	80 3b 00             	cmpb   $0x0,(%rbx)
  406684:	41 bc 40 f6 40 00    	mov    $0x40f640,%r12d
  40668a:	0f 85 4c ff ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  406690:	8b 2d 02 dc 20 00    	mov    0x20dc02(%rip),%ebp        # 614298 <readtask@plt+0x2129c8>
  406696:	41 bc 10 f6 40 00    	mov    $0x40f610,%r12d
  40669c:	85 ed                	test   %ebp,%ebp
  40669e:	0f 85 38 ff ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  4066a4:	c7 05 ea db 20 00 02 	movl   $0x2,0x20dbea(%rip)        # 614298 <readtask@plt+0x2129c8>
  4066ab:	00 00 00 
  4066ae:	45 31 e4             	xor    %r12d,%r12d
  4066b1:	e9 26 ff ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  4066b6:	e8 25 fe ff ff       	callq  4064e0 <readtask@plt+0x4c10>
  4066bb:	48 85 c0             	test   %rax,%rax
  4066be:	41 bc 40 f5 40 00    	mov    $0x40f540,%r12d
  4066c4:	0f 84 12 ff ff ff    	je     4065dc <readtask@plt+0x4d0c>
  4066ca:	80 38 00             	cmpb   $0x0,(%rax)
  4066cd:	0f 84 09 ff ff ff    	je     4065dc <readtask@plt+0x4d0c>
  4066d3:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  4066d8:	31 d2                	xor    %edx,%edx
  4066da:	48 89 c7             	mov    %rax,%rdi
  4066dd:	e8 0e b0 ff ff       	callq  4016f0 <strtol@plt>
  4066e2:	48 85 c0             	test   %rax,%rax
  4066e5:	0f 8e c8 04 00 00    	jle    406bb3 <readtask@plt+0x52e3>
  4066eb:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  4066f0:	80 3e 00             	cmpb   $0x0,(%rsi)
  4066f3:	0f 85 ba 04 00 00    	jne    406bb3 <readtask@plt+0x52e3>
  4066f9:	48 3d ff 93 35 77    	cmp    $0x773593ff,%rax
  4066ff:	0f 8f d7 fe ff ff    	jg     4065dc <readtask@plt+0x4d0c>
  406705:	89 05 61 db 20 00    	mov    %eax,0x20db61(%rip)        # 61426c <readtask@plt+0x21299c>
  40670b:	45 31 e4             	xor    %r12d,%r12d
  40670e:	e9 c9 fe ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406713:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406718:	e8 c3 fd ff ff       	callq  4064e0 <readtask@plt+0x4c10>
  40671d:	48 85 c0             	test   %rax,%rax
  406720:	41 bc b8 f7 40 00    	mov    $0x40f7b8,%r12d
  406726:	0f 84 b0 fe ff ff    	je     4065dc <readtask@plt+0x4d0c>
  40672c:	80 38 00             	cmpb   $0x0,(%rax)
  40672f:	0f 84 a7 fe ff ff    	je     4065dc <readtask@plt+0x4d0c>
  406735:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  40673a:	31 d2                	xor    %edx,%edx
  40673c:	48 89 c7             	mov    %rax,%rdi
  40673f:	e8 ac af ff ff       	callq  4016f0 <strtol@plt>
  406744:	48 85 c0             	test   %rax,%rax
  406747:	0f 8e 71 04 00 00    	jle    406bbe <readtask@plt+0x52ee>
  40674d:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
  406752:	80 7d 00 00          	cmpb   $0x0,0x0(%rbp)
  406756:	0f 85 62 04 00 00    	jne    406bbe <readtask@plt+0x52ee>
  40675c:	48 3d ff 93 35 77    	cmp    $0x773593ff,%rax
  406762:	0f 8f 74 fe ff ff    	jg     4065dc <readtask@plt+0x4d0c>
  406768:	89 05 fa da 20 00    	mov    %eax,0x20dafa(%rip)        # 614268 <readtask@plt+0x212998>
  40676e:	45 31 e4             	xor    %r12d,%r12d
  406771:	e9 66 fe ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406776:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40677d:	00 00 00 
  406780:	e9 cb fe ff ff       	jmpq   406650 <readtask@plt+0x4d80>
  406785:	e9 f7 fe ff ff       	jmpq   406681 <readtask@plt+0x4db1>
  40678a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406790:	e9 ec fe ff ff       	jmpq   406681 <readtask@plt+0x4db1>
  406795:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40679c:	00 00 00 00 
  4067a0:	e8 3b fd ff ff       	callq  4064e0 <readtask@plt+0x4c10>
  4067a5:	48 85 c0             	test   %rax,%rax
  4067a8:	41 bc a0 f6 40 00    	mov    $0x40f6a0,%r12d
  4067ae:	0f 84 28 fe ff ff    	je     4065dc <readtask@plt+0x4d0c>
  4067b4:	be 07 00 00 00       	mov    $0x7,%esi
  4067b9:	48 89 c7             	mov    %rax,%rdi
  4067bc:	45 31 e4             	xor    %r12d,%r12d
  4067bf:	e8 3c 27 00 00       	callq  408f00 <readtask@plt+0x7630>
  4067c4:	e9 13 fe ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  4067c9:	e8 12 fd ff ff       	callq  4064e0 <readtask@plt+0x4c10>
  4067ce:	48 85 c0             	test   %rax,%rax
  4067d1:	41 bc d0 f6 40 00    	mov    $0x40f6d0,%r12d
  4067d7:	0f 84 ff fd ff ff    	je     4065dc <readtask@plt+0x4d0c>
  4067dd:	be 00 64 40 00       	mov    $0x406400,%esi
  4067e2:	48 89 c7             	mov    %rax,%rdi
  4067e5:	e8 e6 f6 ff ff       	callq  405ed0 <readtask@plt+0x4600>
  4067ea:	48 85 c0             	test   %rax,%rax
  4067ed:	49 89 c4             	mov    %rax,%r12
  4067f0:	0f 85 e6 fd ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  4067f6:	4c 8b 05 5b da 20 00 	mov    0x20da5b(%rip),%r8        # 614258 <readtask@plt+0x212988>
  4067fd:	41 c7 40 14 06 00 00 	movl   $0x6,0x14(%r8)
  406804:	00 
  406805:	e9 d2 fd ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  40680a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406810:	e9 3b fe ff ff       	jmpq   406650 <readtask@plt+0x4d80>
  406815:	e9 36 fe ff ff       	jmpq   406650 <readtask@plt+0x4d80>
  40681a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406820:	e9 2b fe ff ff       	jmpq   406650 <readtask@plt+0x4d80>
  406825:	80 3b 00             	cmpb   $0x0,(%rbx)
  406828:	41 bc 70 f6 40 00    	mov    $0x40f670,%r12d
  40682e:	66 90                	xchg   %ax,%ax
  406830:	0f 85 a6 fd ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  406836:	c7 05 74 da 20 00 67 	movl   $0x67,0x20da74(%rip)        # 6142b4 <readtask@plt+0x2129e4>
  40683d:	00 00 00 
  406840:	45 31 e4             	xor    %r12d,%r12d
  406843:	e9 94 fd ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406848:	e8 93 fc ff ff       	callq  4064e0 <readtask@plt+0x4c10>
  40684d:	48 85 c0             	test   %rax,%rax
  406850:	41 bc 18 f5 40 00    	mov    $0x40f518,%r12d
  406856:	0f 84 80 fd ff ff    	je     4065dc <readtask@plt+0x4d0c>
  40685c:	be 80 63 40 00       	mov    $0x406380,%esi
  406861:	48 89 c7             	mov    %rax,%rdi
  406864:	e8 67 f6 ff ff       	callq  405ed0 <readtask@plt+0x4600>
  406869:	48 85 c0             	test   %rax,%rax
  40686c:	49 89 c4             	mov    %rax,%r12
  40686f:	0f 85 67 fd ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  406875:	48 8b 1d dc d9 20 00 	mov    0x20d9dc(%rip),%rbx        # 614258 <readtask@plt+0x212988>
  40687c:	c7 43 14 01 00 00 00 	movl   $0x1,0x14(%rbx)
  406883:	e9 54 fd ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406888:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40688f:	00 
  406890:	e9 21 fe ff ff       	jmpq   4066b6 <readtask@plt+0x4de6>
  406895:	80 3b 00             	cmpb   $0x0,(%rbx)
  406898:	41 bc 80 f5 40 00    	mov    $0x40f580,%r12d
  40689e:	0f 85 38 fd ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  4068a4:	c7 05 e6 d9 20 00 01 	movl   $0x1,0x20d9e6(%rip)        # 614294 <readtask@plt+0x2129c4>
  4068ab:	00 00 00 
  4068ae:	45 31 e4             	xor    %r12d,%r12d
  4068b1:	e9 26 fd ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  4068b6:	80 3b 00             	cmpb   $0x0,(%rbx)
  4068b9:	41 bc b0 f5 40 00    	mov    $0x40f5b0,%r12d
  4068bf:	0f 85 17 fd ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  4068c5:	c7 05 b1 d9 20 00 01 	movl   $0x1,0x20d9b1(%rip)        # 614280 <readtask@plt+0x2129b0>
  4068cc:	00 00 00 
  4068cf:	45 31 e4             	xor    %r12d,%r12d
  4068d2:	e9 05 fd ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  4068d7:	e9 74 fd ff ff       	jmpq   406650 <readtask@plt+0x4d80>
  4068dc:	e9 6f fd ff ff       	jmpq   406650 <readtask@plt+0x4d80>
  4068e1:	e8 fa fb ff ff       	callq  4064e0 <readtask@plt+0x4c10>
  4068e6:	48 85 c0             	test   %rax,%rax
  4068e9:	41 bc 40 f8 40 00    	mov    $0x40f840,%r12d
  4068ef:	0f 84 e7 fc ff ff    	je     4065dc <readtask@plt+0x4d0c>
  4068f5:	be c0 60 40 00       	mov    $0x4060c0,%esi
  4068fa:	48 89 c7             	mov    %rax,%rdi
  4068fd:	e8 ce f5 ff ff       	callq  405ed0 <readtask@plt+0x4600>
  406902:	48 85 c0             	test   %rax,%rax
  406905:	49 89 c4             	mov    %rax,%r12
  406908:	0f 85 ce fc ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  40690e:	4c 8b 0d 43 d9 20 00 	mov    0x20d943(%rip),%r9        # 614258 <readtask@plt+0x212988>
  406915:	41 c7 41 14 0b 00 00 	movl   $0xb,0x14(%r9)
  40691c:	00 
  40691d:	e9 ba fc ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406922:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406928:	e8 b3 fb ff ff       	callq  4064e0 <readtask@plt+0x4c10>
  40692d:	48 85 c0             	test   %rax,%rax
  406930:	41 bc 60 f8 40 00    	mov    $0x40f860,%r12d
  406936:	0f 84 a0 fc ff ff    	je     4065dc <readtask@plt+0x4d0c>
  40693c:	be 80 63 40 00       	mov    $0x406380,%esi
  406941:	48 89 c7             	mov    %rax,%rdi
  406944:	e8 87 f5 ff ff       	callq  405ed0 <readtask@plt+0x4600>
  406949:	48 85 c0             	test   %rax,%rax
  40694c:	49 89 c4             	mov    %rax,%r12
  40694f:	0f 85 87 fc ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  406955:	4c 8b 15 fc d8 20 00 	mov    0x20d8fc(%rip),%r10        # 614258 <readtask@plt+0x212988>
  40695c:	41 c7 42 14 02 00 00 	movl   $0x2,0x14(%r10)
  406963:	00 
  406964:	e9 73 fc ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406969:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406970:	83 3d c9 dd 22 00 02 	cmpl   $0x2,0x22ddc9(%rip)        # 634740 <stderr+0x203b8>
  406977:	41 bc 20 f7 40 00    	mov    $0x40f720,%r12d
  40697d:	0f 85 59 fc ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  406983:	48 8b 05 be dd 22 00 	mov    0x22ddbe(%rip),%rax        # 634748 <stderr+0x203c0>
  40698a:	b9 0a 00 00 00       	mov    $0xa,%ecx
  40698f:	bf 2b f3 40 00       	mov    $0x40f32b,%edi
  406994:	48 8b 70 08          	mov    0x8(%rax),%rsi
  406998:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40699a:	0f 85 3c fc ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  4069a0:	e8 5b ad ff ff       	callq  401700 <display_version@plt>
  4069a5:	31 ff                	xor    %edi,%edi
  4069a7:	e8 c4 ae ff ff       	callq  401870 <exit@plt>
  4069ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4069b0:	81 0d f6 d8 20 00 00 	orl    $0x400,0x20d8f6(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  4069b7:	04 00 00 
  4069ba:	45 31 e4             	xor    %r12d,%r12d
  4069bd:	e9 1a fc ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  4069c2:	e8 19 fb ff ff       	callq  4064e0 <readtask@plt+0x4c10>
  4069c7:	48 85 c0             	test   %rax,%rax
  4069ca:	41 bc e8 f4 40 00    	mov    $0x40f4e8,%r12d
  4069d0:	0f 84 06 fc ff ff    	je     4065dc <readtask@plt+0x4d0c>
  4069d6:	be 00 64 40 00       	mov    $0x406400,%esi
  4069db:	48 89 c7             	mov    %rax,%rdi
  4069de:	e8 ed f4 ff ff       	callq  405ed0 <readtask@plt+0x4600>
  4069e3:	48 85 c0             	test   %rax,%rax
  4069e6:	49 89 c4             	mov    %rax,%r12
  4069e9:	0f 85 ed fb ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  4069ef:	48 8b 0d 62 d8 20 00 	mov    0x20d862(%rip),%rcx        # 614258 <readtask@plt+0x212988>
  4069f6:	c7 41 14 05 00 00 00 	movl   $0x5,0x14(%rcx)
  4069fd:	e9 da fb ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406a02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406a08:	83 3d 31 dd 22 00 02 	cmpl   $0x2,0x22dd31(%rip)        # 634740 <stderr+0x203b8>
  406a0f:	41 bc 00 f7 40 00    	mov    $0x40f700,%r12d
  406a15:	0f 85 c1 fb ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  406a1b:	4c 8b 0d 26 dd 22 00 	mov    0x22dd26(%rip),%r9        # 634748 <stderr+0x203c0>
  406a22:	b9 07 00 00 00       	mov    $0x7,%ecx
  406a27:	bf 1d f3 40 00       	mov    $0x40f31d,%edi
  406a2c:	49 8b 71 08          	mov    0x8(%r9),%rsi
  406a30:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  406a32:	0f 85 a4 fb ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  406a38:	4c 8b 15 c9 d8 20 00 	mov    0x20d8c9(%rip),%r10        # 614308 <readtask@plt+0x212a38>
  406a3f:	31 c0                	xor    %eax,%eax
  406a41:	48 83 c9 ff          	or     $0xffffffffffffffff,%rcx
  406a45:	be 01 00 00 00       	mov    $0x1,%esi
  406a4a:	4c 89 d7             	mov    %r10,%rdi
  406a4d:	f2 ae                	repnz scas %es:(%rdi),%al
  406a4f:	4c 89 d7             	mov    %r10,%rdi
  406a52:	48 f7 d1             	not    %rcx
  406a55:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  406a59:	48 8b 0d d0 d8 20 00 	mov    0x20d8d0(%rip),%rcx        # 614330 <stdout>
  406a60:	e8 1b ae ff ff       	callq  401880 <fwrite@plt>
  406a65:	31 ff                	xor    %edi,%edi
  406a67:	e8 04 ae ff ff       	callq  401870 <exit@plt>
  406a6c:	0f 1f 40 00          	nopl   0x0(%rax)
  406a70:	83 3d c9 dc 22 00 02 	cmpl   $0x2,0x22dcc9(%rip)        # 634740 <stderr+0x203b8>
  406a77:	41 bc 48 f7 40 00    	mov    $0x40f748,%r12d
  406a7d:	0f 85 59 fb ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  406a83:	4c 8b 1d be dc 22 00 	mov    0x22dcbe(%rip),%r11        # 634748 <stderr+0x203c0>
  406a8a:	b9 07 00 00 00       	mov    $0x7,%ecx
  406a8f:	bf 24 f3 40 00       	mov    $0x40f324,%edi
  406a94:	49 8b 73 08          	mov    0x8(%r11),%rsi
  406a98:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  406a9a:	0f 85 3c fb ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  406aa0:	e8 eb c3 ff ff       	callq  402e90 <readtask@plt+0x15c0>
  406aa5:	31 ff                	xor    %edi,%edi
  406aa7:	e8 c4 ad ff ff       	callq  401870 <exit@plt>
  406aac:	0f 1f 40 00          	nopl   0x0(%rax)
  406ab0:	e8 2b fa ff ff       	callq  4064e0 <readtask@plt+0x4c10>
  406ab5:	48 85 c0             	test   %rax,%rax
  406ab8:	41 bc 68 f7 40 00    	mov    $0x40f768,%r12d
  406abe:	0f 84 18 fb ff ff    	je     4065dc <readtask@plt+0x4d0c>
  406ac4:	be 30 63 40 00       	mov    $0x406330,%esi
  406ac9:	48 89 c7             	mov    %rax,%rdi
  406acc:	e8 ff f3 ff ff       	callq  405ed0 <readtask@plt+0x4600>
  406ad1:	48 85 c0             	test   %rax,%rax
  406ad4:	49 89 c4             	mov    %rax,%r12
  406ad7:	0f 85 ff fa ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  406add:	48 8b 15 74 d7 20 00 	mov    0x20d774(%rip),%rdx        # 614258 <readtask@plt+0x212988>
  406ae4:	c7 42 14 0a 00 00 00 	movl   $0xa,0x14(%rdx)
  406aeb:	e9 ec fa ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406af0:	e8 eb f9 ff ff       	callq  4064e0 <readtask@plt+0x4c10>
  406af5:	48 85 c0             	test   %rax,%rax
  406af8:	41 bc 90 f7 40 00    	mov    $0x40f790,%r12d
  406afe:	0f 84 d8 fa ff ff    	je     4065dc <readtask@plt+0x4d0c>
  406b04:	be 30 63 40 00       	mov    $0x406330,%esi
  406b09:	48 89 c7             	mov    %rax,%rdi
  406b0c:	e8 bf f3 ff ff       	callq  405ed0 <readtask@plt+0x4600>
  406b11:	48 85 c0             	test   %rax,%rax
  406b14:	49 89 c4             	mov    %rax,%r12
  406b17:	0f 85 bf fa ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  406b1d:	48 8b 1d 34 d7 20 00 	mov    0x20d734(%rip),%rbx        # 614258 <readtask@plt+0x212988>
  406b24:	c7 43 14 0e 00 00 00 	movl   $0xe,0x14(%rbx)
  406b2b:	e9 ac fa ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406b30:	e8 ab f9 ff ff       	callq  4064e0 <readtask@plt+0x4c10>
  406b35:	48 85 c0             	test   %rax,%rax
  406b38:	41 bc e8 f7 40 00    	mov    $0x40f7e8,%r12d
  406b3e:	0f 84 98 fa ff ff    	je     4065dc <readtask@plt+0x4d0c>
  406b44:	be 30 63 40 00       	mov    $0x406330,%esi
  406b49:	48 89 c7             	mov    %rax,%rdi
  406b4c:	e8 7f f3 ff ff       	callq  405ed0 <readtask@plt+0x4600>
  406b51:	48 85 c0             	test   %rax,%rax
  406b54:	49 89 c4             	mov    %rax,%r12
  406b57:	0f 85 7f fa ff ff    	jne    4065dc <readtask@plt+0x4d0c>
  406b5d:	4c 8b 05 f4 d6 20 00 	mov    0x20d6f4(%rip),%r8        # 614258 <readtask@plt+0x212988>
  406b64:	41 c7 40 14 0c 00 00 	movl   $0xc,0x14(%r8)
  406b6b:	00 
  406b6c:	e9 6b fa ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406b71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406b78:	e8 63 f9 ff ff       	callq  4064e0 <readtask@plt+0x4c10>
  406b7d:	48 85 c0             	test   %rax,%rax
  406b80:	41 bc 10 f8 40 00    	mov    $0x40f810,%r12d
  406b86:	0f 84 50 fa ff ff    	je     4065dc <readtask@plt+0x4d0c>
  406b8c:	be 06 00 00 00       	mov    $0x6,%esi
  406b91:	48 89 c7             	mov    %rax,%rdi
  406b94:	45 31 e4             	xor    %r12d,%r12d
  406b97:	e8 64 23 00 00       	callq  408f00 <readtask@plt+0x7630>
  406b9c:	e9 3b fa ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406ba1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406ba8:	41 bc 04 f3 40 00    	mov    $0x40f304,%r12d
  406bae:	e9 29 fa ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406bb3:	41 bc 40 f5 40 00    	mov    $0x40f540,%r12d
  406bb9:	e9 1e fa ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406bbe:	41 bc b8 f7 40 00    	mov    $0x40f7b8,%r12d
  406bc4:	e9 13 fa ff ff       	jmpq   4065dc <readtask@plt+0x4d0c>
  406bc9:	e8 22 aa ff ff       	callq  4015f0 <__stack_chk_fail@plt>
  406bce:	66 90                	xchg   %ax,%ax
  406bd0:	41 57                	push   %r15
  406bd2:	41 56                	push   %r14
  406bd4:	41 55                	push   %r13
  406bd6:	41 54                	push   %r12
  406bd8:	55                   	push   %rbp
  406bd9:	53                   	push   %rbx
  406bda:	48 83 ec 08          	sub    $0x8,%rsp
  406bde:	8b 05 6c db 22 00    	mov    0x22db6c(%rip),%eax        # 634750 <stderr+0x203c8>
  406be4:	8b 0d 56 db 22 00    	mov    0x22db56(%rip),%ecx        # 634740 <stderr+0x203b8>
  406bea:	83 c0 01             	add    $0x1,%eax
  406bed:	39 c8                	cmp    %ecx,%eax
  406bef:	89 05 5b db 22 00    	mov    %eax,0x22db5b(%rip)        # 634750 <stderr+0x203c8>
  406bf5:	0f 8d a5 0a 00 00    	jge    4076a0 <readtask@plt+0x5dd0>
  406bfb:	4c 8b 0d 46 db 22 00 	mov    0x22db46(%rip),%r9        # 634748 <stderr+0x203c0>
  406c02:	48 63 d8             	movslq %eax,%rbx
  406c05:	49 8d 1c d9          	lea    (%r9,%rbx,8),%rbx
  406c09:	48 8b 2b             	mov    (%rbx),%rbp
  406c0c:	0f be 55 00          	movsbl 0x0(%rbp),%edx
  406c10:	8d 72 9f             	lea    -0x61(%rdx),%esi
  406c13:	83 fe 19             	cmp    $0x19,%esi
  406c16:	0f 86 34 01 00 00    	jbe    406d50 <readtask@plt+0x5480>
  406c1c:	8d 7a bf             	lea    -0x41(%rdx),%edi
  406c1f:	83 ff 19             	cmp    $0x19,%edi
  406c22:	0f 86 28 01 00 00    	jbe    406d50 <readtask@plt+0x5480>
  406c28:	44 8d 42 d0          	lea    -0x30(%rdx),%r8d
  406c2c:	41 83 f8 09          	cmp    $0x9,%r8d
  406c30:	0f 87 aa 01 00 00    	ja     406de0 <readtask@plt+0x5510>
  406c36:	41 89 cf             	mov    %ecx,%r15d
  406c39:	bf 18 00 00 00       	mov    $0x18,%edi
  406c3e:	83 e9 01             	sub    $0x1,%ecx
  406c41:	41 29 c7             	sub    %eax,%r15d
  406c44:	89 0d 06 db 22 00    	mov    %ecx,0x22db06(%rip)        # 634750 <stderr+0x203c8>
  406c4a:	c7 05 00 db 22 00 01 	movl   $0x1,0x22db00(%rip)        # 634754 <stderr+0x203cc>
  406c51:	00 00 00 
  406c54:	4d 63 f7             	movslq %r15d,%r14
  406c57:	c7 05 0f d6 20 00 01 	movl   $0x1,0x20d60f(%rip)        # 614270 <readtask@plt+0x2129a0>
  406c5e:	00 00 00 
  406c61:	49 c1 e6 04          	shl    $0x4,%r14
  406c65:	e8 56 ab ff ff       	callq  4017c0 <malloc@plt>
  406c6a:	4c 89 f7             	mov    %r14,%rdi
  406c6d:	49 89 c5             	mov    %rax,%r13
  406c70:	e8 4b ab ff ff       	callq  4017c0 <malloc@plt>
  406c75:	bf 18 00 00 00       	mov    $0x18,%edi
  406c7a:	49 89 45 08          	mov    %rax,0x8(%r13)
  406c7e:	41 c7 45 10 00 00 00 	movl   $0x0,0x10(%r13)
  406c85:	00 
  406c86:	e8 35 ab ff ff       	callq  4017c0 <malloc@plt>
  406c8b:	4c 89 f7             	mov    %r14,%rdi
  406c8e:	49 89 c4             	mov    %rax,%r12
  406c91:	e8 2a ab ff ff       	callq  4017c0 <malloc@plt>
  406c96:	bf 18 00 00 00       	mov    $0x18,%edi
  406c9b:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  406ca0:	41 c7 44 24 10 00 00 	movl   $0x0,0x10(%r12)
  406ca7:	00 00 
  406ca9:	e8 12 ab ff ff       	callq  4017c0 <malloc@plt>
  406cae:	4c 89 f7             	mov    %r14,%rdi
  406cb1:	48 89 c5             	mov    %rax,%rbp
  406cb4:	4e 8d 34 fb          	lea    (%rbx,%r15,8),%r14
  406cb8:	e8 03 ab ff ff       	callq  4017c0 <malloc@plt>
  406cbd:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%rbp)
  406cc4:	48 89 45 08          	mov    %rax,0x8(%rbp)
  406cc8:	eb 2f                	jmp    406cf9 <readtask@plt+0x5429>
  406cca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406cd0:	3c 2d                	cmp    $0x2d,%al
  406cd2:	0f 84 38 01 00 00    	je     406e10 <readtask@plt+0x5540>
  406cd8:	45 8b 4d 10          	mov    0x10(%r13),%r9d
  406cdc:	49 63 f1             	movslq %r9d,%rsi
  406cdf:	41 83 c1 01          	add    $0x1,%r9d
  406ce3:	48 c1 e6 04          	shl    $0x4,%rsi
  406ce7:	49 03 75 08          	add    0x8(%r13),%rsi
  406ceb:	45 89 4d 10          	mov    %r9d,0x10(%r13)
  406cef:	e8 3c f6 ff ff       	callq  406330 <readtask@plt+0x4a60>
  406cf4:	48 85 c0             	test   %rax,%rax
  406cf7:	75 3f                	jne    406d38 <readtask@plt+0x5468>
  406cf9:	4c 39 f3             	cmp    %r14,%rbx
  406cfc:	0f 84 56 02 00 00    	je     406f58 <readtask@plt+0x5688>
  406d02:	48 8b 3b             	mov    (%rbx),%rdi
  406d05:	48 83 c3 08          	add    $0x8,%rbx
  406d09:	0f b6 07             	movzbl (%rdi),%eax
  406d0c:	3c 2b                	cmp    $0x2b,%al
  406d0e:	75 c0                	jne    406cd0 <readtask@plt+0x5400>
  406d10:	44 8b 55 10          	mov    0x10(%rbp),%r10d
  406d14:	48 83 c7 01          	add    $0x1,%rdi
  406d18:	49 63 f2             	movslq %r10d,%rsi
  406d1b:	41 83 c2 01          	add    $0x1,%r10d
  406d1f:	48 c1 e6 04          	shl    $0x4,%rsi
  406d23:	48 03 75 08          	add    0x8(%rbp),%rsi
  406d27:	44 89 55 10          	mov    %r10d,0x10(%rbp)
  406d2b:	e8 00 f6 ff ff       	callq  406330 <readtask@plt+0x4a60>
  406d30:	48 85 c0             	test   %rax,%rax
  406d33:	74 c4                	je     406cf9 <readtask@plt+0x5429>
  406d35:	0f 1f 00             	nopl   (%rax)
  406d38:	48 83 c4 08          	add    $0x8,%rsp
  406d3c:	5b                   	pop    %rbx
  406d3d:	5d                   	pop    %rbp
  406d3e:	41 5c                	pop    %r12
  406d40:	41 5d                	pop    %r13
  406d42:	41 5e                	pop    %r14
  406d44:	41 5f                	pop    %r15
  406d46:	c3                   	retq   
  406d47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  406d4e:	00 00 
  406d50:	8b 15 06 da 22 00    	mov    0x22da06(%rip),%edx        # 63475c <stderr+0x203d4>
  406d56:	c7 05 f4 d9 22 00 01 	movl   $0x1,0x22d9f4(%rip)        # 634754 <stderr+0x203cc>
  406d5d:	00 00 00 
  406d60:	85 d2                	test   %edx,%edx
  406d62:	74 14                	je     406d78 <readtask@plt+0x54a8>
  406d64:	f6 05 09 d5 20 00 10 	testb  $0x10,0x20d509(%rip)        # 614274 <readtask@plt+0x2129a4>
  406d6b:	0f 84 fc 05 00 00    	je     40736d <readtask@plt+0x5a9d>
  406d71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406d78:	c7 05 ee d4 20 00 01 	movl   $0x1,0x20d4ee(%rip)        # 614270 <readtask@plt+0x2129a0>
  406d7f:	00 00 00 
  406d82:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  406d86:	48 89 2d d3 d9 22 00 	mov    %rbp,0x22d9d3(%rip)        # 634760 <stderr+0x203d8>
  406d8d:	3c 2d                	cmp    $0x2d,%al
  406d8f:	0f 84 d3 00 00 00    	je     406e68 <readtask@plt+0x5598>
  406d95:	48 83 ed 01          	sub    $0x1,%rbp
  406d99:	f6 05 d4 d4 20 00 10 	testb  $0x10,0x20d4d4(%rip)        # 614274 <readtask@plt+0x2129a4>
  406da0:	48 89 2d b9 d9 22 00 	mov    %rbp,0x22d9b9(%rip)        # 634760 <stderr+0x203d8>
  406da7:	0f 84 a3 00 00 00    	je     406e50 <readtask@plt+0x5580>
  406dad:	85 d2                	test   %edx,%edx
  406daf:	0f 84 cb 00 00 00    	je     406e80 <readtask@plt+0x55b0>
  406db5:	0f 1f 00             	nopl   (%rax)
  406db8:	48 83 c5 01          	add    $0x1,%rbp
  406dbc:	84 c0                	test   %al,%al
  406dbe:	48 89 2d 9b d9 22 00 	mov    %rbp,0x22d99b(%rip)        # 634760 <stderr+0x203d8>
  406dc5:	0f 84 13 fe ff ff    	je     406bde <readtask@plt+0x530e>
  406dcb:	3c 78                	cmp    $0x78,%al
  406dcd:	76 71                	jbe    406e40 <readtask@plt+0x5570>
  406dcf:	b8 d0 fc 40 00       	mov    $0x40fcd0,%eax
  406dd4:	e9 5f ff ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  406dd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406de0:	83 fa 2b             	cmp    $0x2b,%edx
  406de3:	0f 84 4d fe ff ff    	je     406c36 <readtask@plt+0x5366>
  406de9:	83 fa 2d             	cmp    $0x2d,%edx
  406dec:	0f 84 9e 00 00 00    	je     406e90 <readtask@plt+0x55c0>
  406df2:	c7 05 58 d9 22 00 01 	movl   $0x1,0x22d958(%rip)        # 634754 <stderr+0x203cc>
  406df9:	00 00 00 
  406dfc:	48 83 c4 08          	add    $0x8,%rsp
  406e00:	b8 19 f4 40 00       	mov    $0x40f419,%eax
  406e05:	5b                   	pop    %rbx
  406e06:	5d                   	pop    %rbp
  406e07:	41 5c                	pop    %r12
  406e09:	41 5d                	pop    %r13
  406e0b:	41 5e                	pop    %r14
  406e0d:	41 5f                	pop    %r15
  406e0f:	c3                   	retq   
  406e10:	45 8b 44 24 10       	mov    0x10(%r12),%r8d
  406e15:	48 83 c7 01          	add    $0x1,%rdi
  406e19:	49 63 f0             	movslq %r8d,%rsi
  406e1c:	41 83 c0 01          	add    $0x1,%r8d
  406e20:	48 c1 e6 04          	shl    $0x4,%rsi
  406e24:	49 03 74 24 08       	add    0x8(%r12),%rsi
  406e29:	45 89 44 24 10       	mov    %r8d,0x10(%r12)
  406e2e:	e8 fd f4 ff ff       	callq  406330 <readtask@plt+0x4a60>
  406e33:	e9 bc fe ff ff       	jmpq   406cf4 <readtask@plt+0x5424>
  406e38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406e3f:	00 
  406e40:	0f b6 d8             	movzbl %al,%ebx
  406e43:	ff 24 dd 20 fe 40 00 	jmpq   *0x40fe20(,%rbx,8)
  406e4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406e50:	85 d2                	test   %edx,%edx
  406e52:	0f 84 60 ff ff ff    	je     406db8 <readtask@plt+0x54e8>
  406e58:	b8 20 fb 40 00       	mov    $0x40fb20,%eax
  406e5d:	e9 d6 fe ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  406e62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406e68:	85 d2                	test   %edx,%edx
  406e6a:	0f 84 60 01 00 00    	je     406fd0 <readtask@plt+0x5700>
  406e70:	0f b6 45 01          	movzbl 0x1(%rbp),%eax
  406e74:	e9 3f ff ff ff       	jmpq   406db8 <readtask@plt+0x54e8>
  406e79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406e80:	b8 a3 f3 40 00       	mov    $0x40f3a3,%eax
  406e85:	e9 ae fe ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  406e8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406e90:	0f be 55 01          	movsbl 0x1(%rbp),%edx
  406e94:	44 8d 52 9f          	lea    -0x61(%rdx),%r10d
  406e98:	41 83 fa 19          	cmp    $0x19,%r10d
  406e9c:	76 5a                	jbe    406ef8 <readtask@plt+0x5628>
  406e9e:	44 8d 5a bf          	lea    -0x41(%rdx),%r11d
  406ea2:	41 83 fb 19          	cmp    $0x19,%r11d
  406ea6:	76 50                	jbe    406ef8 <readtask@plt+0x5628>
  406ea8:	44 8d 62 d0          	lea    -0x30(%rdx),%r12d
  406eac:	41 83 fc 09          	cmp    $0x9,%r12d
  406eb0:	0f 86 80 fd ff ff    	jbe    406c36 <readtask@plt+0x5366>
  406eb6:	83 fa 2d             	cmp    $0x2d,%edx
  406eb9:	0f 85 33 ff ff ff    	jne    406df2 <readtask@plt+0x5522>
  406ebf:	0f be 45 02          	movsbl 0x2(%rbp),%eax
  406ec3:	8d 50 9f             	lea    -0x61(%rax),%edx
  406ec6:	83 fa 19             	cmp    $0x19,%edx
  406ec9:	76 0c                	jbe    406ed7 <readtask@plt+0x5607>
  406ecb:	83 e8 41             	sub    $0x41,%eax
  406ece:	83 f8 19             	cmp    $0x19,%eax
  406ed1:	0f 87 1b ff ff ff    	ja     406df2 <readtask@plt+0x5522>
  406ed7:	c7 05 73 d8 22 00 01 	movl   $0x1,0x22d873(%rip)        # 634754 <stderr+0x203cc>
  406ede:	00 00 00 
  406ee1:	e8 6a f6 ff ff       	callq  406550 <readtask@plt+0x4c80>
  406ee6:	48 85 c0             	test   %rax,%rax
  406ee9:	0f 84 ef fc ff ff    	je     406bde <readtask@plt+0x530e>
  406eef:	e9 44 fe ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  406ef4:	0f 1f 40 00          	nopl   0x0(%rax)
  406ef8:	8b 15 5e d8 22 00    	mov    0x22d85e(%rip),%edx        # 63475c <stderr+0x203d4>
  406efe:	85 d2                	test   %edx,%edx
  406f00:	0f 85 72 fe ff ff    	jne    406d78 <readtask@plt+0x54a8>
  406f06:	48 83 c5 01          	add    $0x1,%rbp
  406f0a:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  406f0e:	48 89 2d 4b d8 22 00 	mov    %rbp,0x22d84b(%rip)        # 634760 <stderr+0x203d8>
  406f15:	84 db                	test   %bl,%bl
  406f17:	0f 84 c1 fc ff ff    	je     406bde <readtask@plt+0x530e>
  406f1d:	0f be f3             	movsbl %bl,%esi
  406f20:	bf 29 f4 40 00       	mov    $0x40f429,%edi
  406f25:	e8 f6 a6 ff ff       	callq  401620 <strchr@plt>
  406f2a:	48 85 c0             	test   %rax,%rax
  406f2d:	0f 84 7d 07 00 00    	je     4076b0 <readtask@plt+0x5de0>
  406f33:	80 fb 79             	cmp    $0x79,%bl
  406f36:	76 10                	jbe    406f48 <readtask@plt+0x5678>
  406f38:	b8 6f f3 40 00       	mov    $0x40f36f,%eax
  406f3d:	e9 f6 fd ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  406f42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406f48:	0f b6 c3             	movzbl %bl,%eax
  406f4b:	ff 24 c5 e8 01 41 00 	jmpq   *0x4101e8(,%rax,8)
  406f52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406f58:	41 8b 5d 10          	mov    0x10(%r13),%ebx
  406f5c:	85 db                	test   %ebx,%ebx
  406f5e:	74 1a                	je     406f7a <readtask@plt+0x56aa>
  406f60:	48 8b 3d f1 d2 20 00 	mov    0x20d2f1(%rip),%rdi        # 614258 <readtask@plt+0x212988>
  406f67:	41 c7 45 14 0a 00 00 	movl   $0xa,0x14(%r13)
  406f6e:	00 
  406f6f:	4c 89 2d e2 d2 20 00 	mov    %r13,0x20d2e2(%rip)        # 614258 <readtask@plt+0x212988>
  406f76:	49 89 7d 00          	mov    %rdi,0x0(%r13)
  406f7a:	45 8b 5c 24 10       	mov    0x10(%r12),%r11d
  406f7f:	45 85 db             	test   %r11d,%r11d
  406f82:	74 1b                	je     406f9f <readtask@plt+0x56cf>
  406f84:	48 8b 15 cd d2 20 00 	mov    0x20d2cd(%rip),%rdx        # 614258 <readtask@plt+0x212988>
  406f8b:	41 c7 44 24 14 09 00 	movl   $0x9,0x14(%r12)
  406f92:	00 00 
  406f94:	4c 89 25 bd d2 20 00 	mov    %r12,0x20d2bd(%rip)        # 614258 <readtask@plt+0x212988>
  406f9b:	49 89 14 24          	mov    %rdx,(%r12)
  406f9f:	44 8b 65 10          	mov    0x10(%rbp),%r12d
  406fa3:	45 85 e4             	test   %r12d,%r12d
  406fa6:	0f 84 32 fc ff ff    	je     406bde <readtask@plt+0x530e>
  406fac:	48 8b 05 a5 d2 20 00 	mov    0x20d2a5(%rip),%rax        # 614258 <readtask@plt+0x212988>
  406fb3:	c7 45 14 0c 00 00 00 	movl   $0xc,0x14(%rbp)
  406fba:	48 89 2d 97 d2 20 00 	mov    %rbp,0x20d297(%rip)        # 614258 <readtask@plt+0x212988>
  406fc1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  406fc5:	e9 14 fc ff ff       	jmpq   406bde <readtask@plt+0x530e>
  406fca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406fd0:	b8 88 f3 40 00       	mov    $0x40f388,%eax
  406fd5:	e9 5e fd ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  406fda:	83 0d 43 d2 20 00 02 	orl    $0x2,0x20d243(%rip)        # 614224 <readtask@plt+0x212954>
  406fe1:	e9 8a fe ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  406fe6:	83 0d c3 d2 20 00 40 	orl    $0x40,0x20d2c3(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  406fed:	e9 7e fe ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  406ff2:	81 0d b4 d2 20 00 80 	orl    $0x80,0x20d2b4(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  406ff9:	00 00 00 
  406ffc:	e9 6f fe ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  407001:	83 05 50 d7 22 00 01 	addl   $0x1,0x22d750(%rip)        # 634758 <stderr+0x203d0>
  407008:	e9 63 fe ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  40700d:	83 0d 3c d2 20 00 01 	orl    $0x1,0x20d23c(%rip)        # 614250 <readtask@plt+0x212980>
  407014:	e9 57 fe ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  407019:	83 0d 90 d2 20 00 10 	orl    $0x10,0x20d290(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  407020:	e9 4b fe ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  407025:	8b 05 49 d2 20 00    	mov    0x20d249(%rip),%eax        # 614274 <readtask@plt+0x2129a4>
  40702b:	a8 40                	test   $0x40,%al
  40702d:	0f 84 8c 06 00 00    	je     4076bf <readtask@plt+0x5def>
  407033:	81 0d 73 d2 20 00 00 	orl    $0x200,0x20d273(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  40703a:	02 00 00 
  40703d:	e9 2e fe ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  407042:	c7 05 cc d1 20 00 01 	movl   $0x1,0x20d1cc(%rip)        # 614218 <readtask@plt+0x212948>
  407049:	00 00 00 
  40704c:	c7 05 c6 d1 20 00 01 	movl   $0x1,0x20d1c6(%rip)        # 61421c <readtask@plt+0x21294c>
  407053:	00 00 00 
  407056:	e9 15 fe ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  40705b:	e8 20 f4 ff ff       	callq  406480 <readtask@plt+0x4bb0>
  407060:	48 85 c0             	test   %rax,%rax
  407063:	0f 85 bd 06 00 00    	jne    407726 <readtask@plt+0x5e56>
  407069:	b8 20 fc 40 00       	mov    $0x40fc20,%eax
  40706e:	e9 c5 fc ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  407073:	e8 08 f4 ff ff       	callq  406480 <readtask@plt+0x4bb0>
  407078:	48 85 c0             	test   %rax,%rax
  40707b:	0f 84 6d 06 00 00    	je     4076ee <readtask@plt+0x5e1e>
  407081:	be 30 63 40 00       	mov    $0x406330,%esi
  407086:	48 89 c7             	mov    %rax,%rdi
  407089:	e8 42 ee ff ff       	callq  405ed0 <readtask@plt+0x4600>
  40708e:	48 85 c0             	test   %rax,%rax
  407091:	0f 85 a1 fc ff ff    	jne    406d38 <readtask@plt+0x5468>
  407097:	48 8b 2d ba d1 20 00 	mov    0x20d1ba(%rip),%rbp        # 614258 <readtask@plt+0x212988>
  40709e:	c7 45 14 0a 00 00 00 	movl   $0xa,0x14(%rbp)
  4070a5:	e9 34 fb ff ff       	jmpq   406bde <readtask@plt+0x530e>
  4070aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4070b0:	83 0d f9 d1 20 00 20 	orl    $0x20,0x20d1f9(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  4070b7:	e9 b4 fd ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  4070bc:	c7 05 b6 d1 20 00 01 	movl   $0x1,0x20d1b6(%rip)        # 61427c <readtask@plt+0x2129ac>
  4070c3:	00 00 00 
  4070c6:	e9 a5 fd ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  4070cb:	e8 b0 f3 ff ff       	callq  406480 <readtask@plt+0x4bb0>
  4070d0:	48 85 c0             	test   %rax,%rax
  4070d3:	0f 84 c7 06 00 00    	je     4077a0 <readtask@plt+0x5ed0>
  4070d9:	be c0 60 40 00       	mov    $0x4060c0,%esi
  4070de:	48 89 c7             	mov    %rax,%rdi
  4070e1:	e8 ea ed ff ff       	callq  405ed0 <readtask@plt+0x4600>
  4070e6:	48 85 c0             	test   %rax,%rax
  4070e9:	0f 85 49 fc ff ff    	jne    406d38 <readtask@plt+0x5468>
  4070ef:	48 8b 35 62 d1 20 00 	mov    0x20d162(%rip),%rsi        # 614258 <readtask@plt+0x212988>
  4070f6:	c7 46 14 0b 00 00 00 	movl   $0xb,0x14(%rsi)
  4070fd:	e9 dc fa ff ff       	jmpq   406bde <readtask@plt+0x530e>
  407102:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  407108:	e8 73 f3 ff ff       	callq  406480 <readtask@plt+0x4bb0>
  40710d:	48 85 c0             	test   %rax,%rax
  407110:	0f 85 ec 05 00 00    	jne    407702 <readtask@plt+0x5e32>
  407116:	b8 c0 fb 40 00       	mov    $0x40fbc0,%eax
  40711b:	e9 18 fc ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  407120:	83 0d 29 d1 20 00 10 	orl    $0x10,0x20d129(%rip)        # 614250 <readtask@plt+0x212980>
  407127:	e9 44 fd ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  40712c:	83 3d 0d d6 22 00 02 	cmpl   $0x2,0x22d60d(%rip)        # 634740 <stderr+0x203b8>
  407133:	b8 f6 f3 40 00       	mov    $0x40f3f6,%eax
  407138:	0f 85 fa fb ff ff    	jne    406d38 <readtask@plt+0x5468>
  40713e:	4c 8b 1d 03 d6 22 00 	mov    0x22d603(%rip),%r11        # 634748 <stderr+0x203c0>
  407145:	49 8b 53 08          	mov    0x8(%r11),%rdx
  407149:	80 3a 56             	cmpb   $0x56,(%rdx)
  40714c:	0f 85 e6 fb ff ff    	jne    406d38 <readtask@plt+0x5468>
  407152:	80 7a 01 00          	cmpb   $0x0,0x1(%rdx)
  407156:	0f 85 dc fb ff ff    	jne    406d38 <readtask@plt+0x5468>
  40715c:	e8 9f a5 ff ff       	callq  401700 <display_version@plt>
  407161:	31 ff                	xor    %edi,%edi
  407163:	e8 08 a7 ff ff       	callq  401870 <exit@plt>
  407168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40716f:	00 
  407170:	b8 50 fb 40 00       	mov    $0x40fb50,%eax
  407175:	e9 be fb ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  40717a:	81 0d 2c d1 20 00 00 	orl    $0x100,0x20d12c(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  407181:	01 00 00 
  407184:	e9 e7 fc ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  407189:	83 0d 10 d1 20 00 20 	orl    $0x20,0x20d110(%rip)        # 6142a0 <readtask@plt+0x2129d0>
  407190:	e9 db fc ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  407195:	bf 18 00 00 00       	mov    $0x18,%edi
  40719a:	e8 21 a6 ff ff       	callq  4017c0 <malloc@plt>
  40719f:	bf 10 00 00 00       	mov    $0x10,%edi
  4071a4:	49 89 c4             	mov    %rax,%r12
  4071a7:	e8 14 a6 ff ff       	callq  4017c0 <malloc@plt>
  4071ac:	48 8b 3d a5 d0 20 00 	mov    0x20d0a5(%rip),%rdi        # 614258 <readtask@plt+0x212988>
  4071b3:	4c 8b 05 fe d0 20 00 	mov    0x20d0fe(%rip),%r8        # 6142b8 <readtask@plt+0x2129e8>
  4071ba:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  4071bf:	41 c7 44 24 14 0b 00 	movl   $0xb,0x14(%r12)
  4071c6:	00 00 
  4071c8:	41 c7 44 24 10 01 00 	movl   $0x1,0x10(%r12)
  4071cf:	00 00 
  4071d1:	4c 89 25 80 d0 20 00 	mov    %r12,0x20d080(%rip)        # 614258 <readtask@plt+0x212988>
  4071d8:	4c 89 00             	mov    %r8,(%rax)
  4071db:	49 89 3c 24          	mov    %rdi,(%r12)
  4071df:	e9 8c fc ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  4071e4:	e8 97 f2 ff ff       	callq  406480 <readtask@plt+0x4bb0>
  4071e9:	48 85 c0             	test   %rax,%rax
  4071ec:	0f 84 06 05 00 00    	je     4076f8 <readtask@plt+0x5e28>
  4071f2:	be 80 63 40 00       	mov    $0x406380,%esi
  4071f7:	48 89 c7             	mov    %rax,%rdi
  4071fa:	e8 d1 ec ff ff       	callq  405ed0 <readtask@plt+0x4600>
  4071ff:	48 85 c0             	test   %rax,%rax
  407202:	0f 85 30 fb ff ff    	jne    406d38 <readtask@plt+0x5468>
  407208:	4c 8b 15 49 d0 20 00 	mov    0x20d049(%rip),%r10        # 614258 <readtask@plt+0x212988>
  40720f:	41 c7 42 14 02 00 00 	movl   $0x2,0x14(%r10)
  407216:	00 
  407217:	e9 c2 f9 ff ff       	jmpq   406bde <readtask@plt+0x530e>
  40721c:	0f 1f 40 00          	nopl   0x0(%rax)
  407220:	c7 05 6a d0 20 00 01 	movl   $0x1,0x20d06a(%rip)        # 614294 <readtask@plt+0x2129c4>
  407227:	00 00 00 
  40722a:	e9 41 fc ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  40722f:	83 0d 1a d0 20 00 02 	orl    $0x2,0x20d01a(%rip)        # 614250 <readtask@plt+0x212980>
  407236:	e9 35 fc ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  40723b:	8b 15 57 d0 20 00    	mov    0x20d057(%rip),%edx        # 614298 <readtask@plt+0x2129c8>
  407241:	85 d2                	test   %edx,%edx
  407243:	0f 85 a3 05 00 00    	jne    4077ec <readtask@plt+0x5f1c>
  407249:	8b 0d 25 d0 20 00    	mov    0x20d025(%rip),%ecx        # 614274 <readtask@plt+0x2129a4>
  40724f:	83 e1 02             	and    $0x2,%ecx
  407252:	83 f9 01             	cmp    $0x1,%ecx
  407255:	19 c0                	sbb    %eax,%eax
  407257:	83 c0 02             	add    $0x2,%eax
  40725a:	89 05 38 d0 20 00    	mov    %eax,0x20d038(%rip)        # 614298 <readtask@plt+0x2129c8>
  407260:	e9 0b fc ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  407265:	83 0d 44 d0 20 00 08 	orl    $0x8,0x20d044(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  40726c:	e9 ff fb ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  407271:	c7 05 49 d0 20 00 01 	movl   $0x1,0x20d049(%rip)        # 6142c4 <readtask@plt+0x2129f4>
  407278:	00 00 00 
  40727b:	e9 f0 fb ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  407280:	c7 05 2a d0 20 00 62 	movl   $0x62,0x20d02a(%rip)        # 6142b4 <readtask@plt+0x2129e4>
  407287:	00 00 00 
  40728a:	e9 e1 fb ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  40728f:	c7 05 2f d0 20 00 01 	movl   $0x1,0x20d02f(%rip)        # 6142c8 <readtask@plt+0x2129f8>
  407296:	00 00 00 
  407299:	e9 d2 fb ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  40729e:	e8 dd f1 ff ff       	callq  406480 <readtask@plt+0x4bb0>
  4072a3:	48 85 c0             	test   %rax,%rax
  4072a6:	0f 85 68 04 00 00    	jne    407714 <readtask@plt+0x5e44>
  4072ac:	b8 f0 fb 40 00       	mov    $0x40fbf0,%eax
  4072b1:	e9 82 fa ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  4072b6:	e8 c5 f1 ff ff       	callq  406480 <readtask@plt+0x4bb0>
  4072bb:	48 85 c0             	test   %rax,%rax
  4072be:	0f 85 1e 04 00 00    	jne    4076e2 <readtask@plt+0x5e12>
  4072c4:	b8 90 fb 40 00       	mov    $0x40fb90,%eax
  4072c9:	e9 6a fa ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  4072ce:	83 3d 6b d4 22 00 02 	cmpl   $0x2,0x22d46b(%rip)        # 634740 <stderr+0x203b8>
  4072d5:	b8 be f3 40 00       	mov    $0x40f3be,%eax
  4072da:	0f 85 58 fa ff ff    	jne    406d38 <readtask@plt+0x5468>
  4072e0:	4c 8b 0d 61 d4 22 00 	mov    0x22d461(%rip),%r9        # 634748 <stderr+0x203c0>
  4072e7:	49 8b 51 08          	mov    0x8(%r9),%rdx
  4072eb:	80 3a 4c             	cmpb   $0x4c,(%rdx)
  4072ee:	0f 85 44 fa ff ff    	jne    406d38 <readtask@plt+0x5468>
  4072f4:	80 7a 01 00          	cmpb   $0x0,0x1(%rdx)
  4072f8:	0f 85 3a fa ff ff    	jne    406d38 <readtask@plt+0x5468>
  4072fe:	e8 5d e3 ff ff       	callq  405660 <readtask@plt+0x3d90>
  407303:	31 ff                	xor    %edi,%edi
  407305:	e8 66 a5 ff ff       	callq  401870 <exit@plt>
  40730a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  407310:	83 0d 0d cf 20 00 01 	orl    $0x1,0x20cf0d(%rip)        # 614224 <readtask@plt+0x212954>
  407317:	e9 54 fb ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  40731c:	b8 70 fc 40 00       	mov    $0x40fc70,%eax
  407321:	e9 12 fa ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  407326:	be 30 63 40 00       	mov    $0x406330,%esi
  40732b:	48 89 ef             	mov    %rbp,%rdi
  40732e:	e8 9d eb ff ff       	callq  405ed0 <readtask@plt+0x4600>
  407333:	48 85 c0             	test   %rax,%rax
  407336:	0f 85 fc f9 ff ff    	jne    406d38 <readtask@plt+0x5468>
  40733c:	e9 56 fd ff ff       	jmpq   407097 <readtask@plt+0x57c7>
  407341:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  407348:	b8 a0 fc 40 00       	mov    $0x40fca0,%eax
  40734d:	e9 e6 f9 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  407352:	c7 05 9c cf 20 00 01 	movl   $0x1,0x20cf9c(%rip)        # 6142f8 <readtask@plt+0x212a28>
  407359:	00 00 00 
  40735c:	e9 a5 fb ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  407361:	83 0d 38 cf 20 00 20 	orl    $0x20,0x20cf38(%rip)        # 6142a0 <readtask@plt+0x2129d0>
  407368:	e9 99 fb ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  40736d:	b8 11 f4 40 00       	mov    $0x40f411,%eax
  407372:	e9 c1 f9 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  407377:	83 0d 22 cf 20 00 04 	orl    $0x4,0x20cf22(%rip)        # 6142a0 <readtask@plt+0x2129d0>
  40737e:	e9 83 fb ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  407383:	b8 f0 fa 40 00       	mov    $0x40faf0,%eax
  407388:	e9 ab f9 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  40738d:	b8 90 f8 40 00       	mov    $0x40f890,%eax
  407392:	e9 a1 f9 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  407397:	81 0d ff ce 20 00 80 	orl    $0x80,0x20ceff(%rip)        # 6142a0 <readtask@plt+0x2129d0>
  40739e:	00 00 00 
  4073a1:	83 0d 08 cf 20 00 01 	orl    $0x1,0x20cf08(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  4073a8:	c7 05 6e ce 20 00 01 	movl   $0x1,0x20ce6e(%rip)        # 614220 <readtask@plt+0x212950>
  4073af:	00 00 00 
  4073b2:	e9 4f fb ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  4073b7:	e8 c4 f0 ff ff       	callq  406480 <readtask@plt+0x4bb0>
  4073bc:	48 85 c0             	test   %rax,%rax
  4073bf:	0f 84 73 03 00 00    	je     407738 <readtask@plt+0x5e68>
  4073c5:	be b0 5e 40 00       	mov    $0x405eb0,%esi
  4073ca:	48 89 c7             	mov    %rax,%rdi
  4073cd:	e8 fe ea ff ff       	callq  405ed0 <readtask@plt+0x4600>
  4073d2:	48 85 c0             	test   %rax,%rax
  4073d5:	0f 85 5d f9 ff ff    	jne    406d38 <readtask@plt+0x5468>
  4073db:	48 8b 0d 76 ce 20 00 	mov    0x20ce76(%rip),%rcx        # 614258 <readtask@plt+0x212988>
  4073e2:	c7 41 14 0d 00 00 00 	movl   $0xd,0x14(%rcx)
  4073e9:	e9 f0 f7 ff ff       	jmpq   406bde <readtask@plt+0x530e>
  4073ee:	66 90                	xchg   %ax,%ax
  4073f0:	8b 05 7e ce 20 00    	mov    0x20ce7e(%rip),%eax        # 614274 <readtask@plt+0x2129a4>
  4073f6:	f6 c4 08             	test   $0x8,%ah
  4073f9:	0f 85 78 ff ff ff    	jne    407377 <readtask@plt+0x5aa7>
  4073ff:	f6 c4 04             	test   $0x4,%ah
  407402:	0f 84 ee 03 00 00    	je     4077f6 <readtask@plt+0x5f26>
  407408:	83 05 49 d3 22 00 02 	addl   $0x2,0x22d349(%rip)        # 634758 <stderr+0x203d0>
  40740f:	c7 05 07 ce 20 00 01 	movl   $0x1,0x20ce07(%rip)        # 614220 <readtask@plt+0x212950>
  407416:	00 00 00 
  407419:	e9 e8 fa ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  40741e:	c7 05 8c ce 20 00 75 	movl   $0x75,0x20ce8c(%rip)        # 6142b4 <readtask@plt+0x2129e4>
  407425:	00 00 00 
  407428:	e9 d9 fa ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  40742d:	83 0d f0 cd 20 00 10 	orl    $0x10,0x20cdf0(%rip)        # 614224 <readtask@plt+0x212954>
  407434:	e9 cd fa ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  407439:	e8 42 f0 ff ff       	callq  406480 <readtask@plt+0x4bb0>
  40743e:	48 85 c0             	test   %rax,%rax
  407441:	0f 84 43 03 00 00    	je     40778a <readtask@plt+0x5eba>
  407447:	be 00 64 40 00       	mov    $0x406400,%esi
  40744c:	48 89 c7             	mov    %rax,%rdi
  40744f:	e8 7c ea ff ff       	callq  405ed0 <readtask@plt+0x4600>
  407454:	48 85 c0             	test   %rax,%rax
  407457:	0f 85 db f8 ff ff    	jne    406d38 <readtask@plt+0x5468>
  40745d:	48 8b 2d f4 cd 20 00 	mov    0x20cdf4(%rip),%rbp        # 614258 <readtask@plt+0x212988>
  407464:	c7 45 14 05 00 00 00 	movl   $0x5,0x14(%rbp)
  40746b:	e9 6e f7 ff ff       	jmpq   406bde <readtask@plt+0x530e>
  407470:	83 0d d9 cd 20 00 04 	orl    $0x4,0x20cdd9(%rip)        # 614250 <readtask@plt+0x212980>
  407477:	e9 8a fa ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  40747c:	e8 ff ef ff ff       	callq  406480 <readtask@plt+0x4bb0>
  407481:	48 85 c0             	test   %rax,%rax
  407484:	0f 84 b8 02 00 00    	je     407742 <readtask@plt+0x5e72>
  40748a:	be 30 63 40 00       	mov    $0x406330,%esi
  40748f:	48 89 c7             	mov    %rax,%rdi
  407492:	e8 39 ea ff ff       	callq  405ed0 <readtask@plt+0x4600>
  407497:	48 85 c0             	test   %rax,%rax
  40749a:	0f 85 98 f8 ff ff    	jne    406d38 <readtask@plt+0x5468>
  4074a0:	48 8b 35 b1 cd 20 00 	mov    0x20cdb1(%rip),%rsi        # 614258 <readtask@plt+0x212988>
  4074a7:	c7 46 14 0c 00 00 00 	movl   $0xc,0x14(%rsi)
  4074ae:	e9 2b f7 ff ff       	jmpq   406bde <readtask@plt+0x530e>
  4074b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4074b8:	e8 c3 ef ff ff       	callq  406480 <readtask@plt+0x4bb0>
  4074bd:	48 85 c0             	test   %rax,%rax
  4074c0:	0f 85 bb fb ff ff    	jne    407081 <readtask@plt+0x57b1>
  4074c6:	b8 48 fa 40 00       	mov    $0x40fa48,%eax
  4074cb:	e9 68 f8 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  4074d0:	e8 ab ef ff ff       	callq  406480 <readtask@plt+0x4bb0>
  4074d5:	48 85 c0             	test   %rax,%rax
  4074d8:	0f 85 6e 02 00 00    	jne    40774c <readtask@plt+0x5e7c>
  4074de:	b8 20 fa 40 00       	mov    $0x40fa20,%eax
  4074e3:	e9 50 f8 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  4074e8:	e8 93 ef ff ff       	callq  406480 <readtask@plt+0x4bb0>
  4074ed:	48 85 c0             	test   %rax,%rax
  4074f0:	0f 85 ec 01 00 00    	jne    4076e2 <readtask@plt+0x5e12>
  4074f6:	b8 f0 f9 40 00       	mov    $0x40f9f0,%eax
  4074fb:	e9 38 f8 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  407500:	83 0d a9 cd 20 00 01 	orl    $0x1,0x20cda9(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  407507:	c7 05 0f cd 20 00 01 	movl   $0x1,0x20cd0f(%rip)        # 614220 <readtask@plt+0x212950>
  40750e:	00 00 00 
  407511:	e9 f0 f9 ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  407516:	83 0d 33 cd 20 00 08 	orl    $0x8,0x20cd33(%rip)        # 614250 <readtask@plt+0x212980>
  40751d:	e9 e4 f9 ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  407522:	83 3d 17 d2 22 00 02 	cmpl   $0x2,0x22d217(%rip)        # 634740 <stderr+0x203b8>
  407529:	b8 35 f3 40 00       	mov    $0x40f335,%eax
  40752e:	0f 85 04 f8 ff ff    	jne    406d38 <readtask@plt+0x5468>
  407534:	4c 8b 35 0d d2 22 00 	mov    0x22d20d(%rip),%r14        # 634748 <stderr+0x203c0>
  40753b:	49 8b 56 08          	mov    0x8(%r14),%rdx
  40753f:	80 3a 2d             	cmpb   $0x2d,(%rdx)
  407542:	0f 85 f0 f7 ff ff    	jne    406d38 <readtask@plt+0x5468>
  407548:	80 7a 01 56          	cmpb   $0x56,0x1(%rdx)
  40754c:	0f 85 e6 f7 ff ff    	jne    406d38 <readtask@plt+0x5468>
  407552:	80 7a 02 00          	cmpb   $0x0,0x2(%rdx)
  407556:	0f 85 dc f7 ff ff    	jne    406d38 <readtask@plt+0x5468>
  40755c:	e9 fb fb ff ff       	jmpq   40715c <readtask@plt+0x588c>
  407561:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  407568:	e8 13 ef ff ff       	callq  406480 <readtask@plt+0x4bb0>
  40756d:	48 85 c0             	test   %rax,%rax
  407570:	0f 84 0a 02 00 00    	je     407780 <readtask@plt+0x5eb0>
  407576:	be 80 63 40 00       	mov    $0x406380,%esi
  40757b:	48 89 c7             	mov    %rax,%rdi
  40757e:	e8 4d e9 ff ff       	callq  405ed0 <readtask@plt+0x4600>
  407583:	48 85 c0             	test   %rax,%rax
  407586:	0f 85 ac f7 ff ff    	jne    406d38 <readtask@plt+0x5468>
  40758c:	4c 8b 2d c5 cc 20 00 	mov    0x20ccc5(%rip),%r13        # 614258 <readtask@plt+0x212988>
  407593:	41 c7 45 14 01 00 00 	movl   $0x1,0x14(%r13)
  40759a:	00 
  40759b:	e9 3e f6 ff ff       	jmpq   406bde <readtask@plt+0x530e>
  4075a0:	83 0d 7d cc 20 00 08 	orl    $0x8,0x20cc7d(%rip)        # 614224 <readtask@plt+0x212954>
  4075a7:	e9 5a f9 ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  4075ac:	e8 cf ee ff ff       	callq  406480 <readtask@plt+0x4bb0>
  4075b1:	48 85 c0             	test   %rax,%rax
  4075b4:	0f 85 b4 01 00 00    	jne    40776e <readtask@plt+0x5e9e>
  4075ba:	b8 10 f9 40 00       	mov    $0x40f910,%eax
  4075bf:	e9 74 f7 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  4075c4:	c7 05 b2 cc 20 00 01 	movl   $0x1,0x20ccb2(%rip)        # 614280 <readtask@plt+0x2129b0>
  4075cb:	00 00 00 
  4075ce:	e9 33 f9 ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  4075d3:	83 0d c6 cc 20 00 10 	orl    $0x10,0x20ccc6(%rip)        # 6142a0 <readtask@plt+0x2129d0>
  4075da:	e9 27 f9 ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  4075df:	83 0d 3e cc 20 00 04 	orl    $0x4,0x20cc3e(%rip)        # 614224 <readtask@plt+0x212954>
  4075e6:	e9 1b f9 ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  4075eb:	83 0d be cc 20 00 04 	orl    $0x4,0x20ccbe(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  4075f2:	e9 0f f9 ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  4075f7:	48 83 3d 31 cc 20 00 	cmpq   $0x0,0x20cc31(%rip)        # 614230 <readtask@plt+0x212960>
  4075fe:	00 
  4075ff:	0f 84 8f 01 00 00    	je     407794 <readtask@plt+0x5ec4>
  407605:	83 0d a4 cc 20 00 02 	orl    $0x2,0x20cca4(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  40760c:	e9 f5 f8 ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  407611:	e8 6a ee ff ff       	callq  406480 <readtask@plt+0x4bb0>
  407616:	48 85 c0             	test   %rax,%rax
  407619:	48 89 c3             	mov    %rax,%rbx
  40761c:	0f 84 42 01 00 00    	je     407764 <readtask@plt+0x5e94>
  407622:	be 30 63 40 00       	mov    $0x406330,%esi
  407627:	48 89 c7             	mov    %rax,%rdi
  40762a:	e8 a1 e8 ff ff       	callq  405ed0 <readtask@plt+0x4600>
  40762f:	48 85 c0             	test   %rax,%rax
  407632:	0f 84 68 fe ff ff    	je     4074a0 <readtask@plt+0x5bd0>
  407638:	be 00 64 40 00       	mov    $0x406400,%esi
  40763d:	48 89 df             	mov    %rbx,%rdi
  407640:	e8 8b e8 ff ff       	callq  405ed0 <readtask@plt+0x4600>
  407645:	48 85 c0             	test   %rax,%rax
  407648:	0f 84 b2 01 00 00    	je     407800 <readtask@plt+0x5f30>
  40764e:	b8 b0 f9 40 00       	mov    $0x40f9b0,%eax
  407653:	e9 e0 f6 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  407658:	83 0d 41 cc 20 00 01 	orl    $0x1,0x20cc41(%rip)        # 6142a0 <readtask@plt+0x2129d0>
  40765f:	e9 a2 f8 ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  407664:	e8 17 ee ff ff       	callq  406480 <readtask@plt+0x4bb0>
  407669:	48 85 c0             	test   %rax,%rax
  40766c:	0f 85 80 fb ff ff    	jne    4071f2 <readtask@plt+0x5922>
  407672:	b8 51 f3 40 00       	mov    $0x40f351,%eax
  407677:	e9 bc f6 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  40767c:	e8 ff ed ff ff       	callq  406480 <readtask@plt+0x4bb0>
  407681:	48 85 c0             	test   %rax,%rax
  407684:	0f 85 4f fa ff ff    	jne    4070d9 <readtask@plt+0x5809>
  40768a:	b8 98 fa 40 00       	mov    $0x40fa98,%eax
  40768f:	e9 a4 f6 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  407694:	83 05 bd d0 22 00 01 	addl   $0x1,0x22d0bd(%rip)        # 634758 <stderr+0x203d0>
  40769b:	e9 66 f8 ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  4076a0:	31 c0                	xor    %eax,%eax
  4076a2:	e9 91 f6 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  4076a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4076ae:	00 00 
  4076b0:	c7 05 9a d0 22 00 01 	movl   $0x1,0x22d09a(%rip)        # 634754 <stderr+0x203cc>
  4076b7:	00 00 00 
  4076ba:	e9 74 f8 ff ff       	jmpq   406f33 <readtask@plt+0x5663>
  4076bf:	a8 04                	test   $0x4,%al
  4076c1:	0f 84 13 f9 ff ff    	je     406fda <readtask@plt+0x570a>
  4076c7:	be 05 00 00 00       	mov    $0x5,%esi
  4076cc:	bf 98 b0 40 00       	mov    $0x40b098,%edi
  4076d1:	e8 2a 18 00 00       	callq  408f00 <readtask@plt+0x7630>
  4076d6:	48 8b 2d 83 d0 22 00 	mov    0x22d083(%rip),%rbp        # 634760 <stderr+0x203d8>
  4076dd:	e9 8e f7 ff ff       	jmpq   406e70 <readtask@plt+0x55a0>
  4076e2:	48 89 05 9f cb 20 00 	mov    %rax,0x20cb9f(%rip)        # 614288 <readtask@plt+0x2129b8>
  4076e9:	e9 f0 f4 ff ff       	jmpq   406bde <readtask@plt+0x530e>
  4076ee:	b8 48 fc 40 00       	mov    $0x40fc48,%eax
  4076f3:	e9 40 f6 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  4076f8:	b8 d9 f3 40 00       	mov    $0x40f3d9,%eax
  4076fd:	e9 36 f6 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  407702:	be 03 00 00 00       	mov    $0x3,%esi
  407707:	48 89 c7             	mov    %rax,%rdi
  40770a:	e8 f1 17 00 00       	callq  408f00 <readtask@plt+0x7630>
  40770f:	e9 ca f4 ff ff       	jmpq   406bde <readtask@plt+0x530e>
  407714:	be 06 00 00 00       	mov    $0x6,%esi
  407719:	48 89 c7             	mov    %rax,%rdi
  40771c:	e8 df 17 00 00       	callq  408f00 <readtask@plt+0x7630>
  407721:	e9 b8 f4 ff ff       	jmpq   406bde <readtask@plt+0x530e>
  407726:	be 04 00 00 00       	mov    $0x4,%esi
  40772b:	48 89 c7             	mov    %rax,%rdi
  40772e:	e8 cd 17 00 00       	callq  408f00 <readtask@plt+0x7630>
  407733:	e9 a6 f4 ff ff       	jmpq   406bde <readtask@plt+0x530e>
  407738:	b8 c0 f8 40 00       	mov    $0x40f8c0,%eax
  40773d:	e9 f6 f5 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  407742:	b8 70 fa 40 00       	mov    $0x40fa70,%eax
  407747:	e9 ec f5 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  40774c:	be 02 00 00 00       	mov    $0x2,%esi
  407751:	48 89 c7             	mov    %rax,%rdi
  407754:	e8 a7 17 00 00       	callq  408f00 <readtask@plt+0x7630>
  407759:	09 05 f5 cf 22 00    	or     %eax,0x22cff5(%rip)        # 634754 <stderr+0x203cc>
  40775f:	e9 7a f4 ff ff       	jmpq   406bde <readtask@plt+0x530e>
  407764:	b8 68 f9 40 00       	mov    $0x40f968,%eax
  407769:	e9 ca f5 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  40776e:	be 01 00 00 00       	mov    $0x1,%esi
  407773:	48 89 c7             	mov    %rax,%rdi
  407776:	e8 85 17 00 00       	callq  408f00 <readtask@plt+0x7630>
  40777b:	e9 5e f4 ff ff       	jmpq   406bde <readtask@plt+0x530e>
  407780:	b8 40 f9 40 00       	mov    $0x40f940,%eax
  407785:	e9 ae f5 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  40778a:	b8 e8 f8 40 00       	mov    $0x40f8e8,%eax
  40778f:	e9 a4 f5 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  407794:	83 0d 05 cb 20 00 02 	orl    $0x2,0x20cb05(%rip)        # 6142a0 <readtask@plt+0x2129d0>
  40779b:	e9 66 f7 ff ff       	jmpq   406f06 <readtask@plt+0x5636>
  4077a0:	bf 18 00 00 00       	mov    $0x18,%edi
  4077a5:	e8 16 a0 ff ff       	callq  4017c0 <malloc@plt>
  4077aa:	bf 10 00 00 00       	mov    $0x10,%edi
  4077af:	49 89 c5             	mov    %rax,%r13
  4077b2:	e8 09 a0 ff ff       	callq  4017c0 <malloc@plt>
  4077b7:	4c 8b 35 9a ca 20 00 	mov    0x20ca9a(%rip),%r14        # 614258 <readtask@plt+0x212988>
  4077be:	4c 8b 3d f3 ca 20 00 	mov    0x20caf3(%rip),%r15        # 6142b8 <readtask@plt+0x2129e8>
  4077c5:	49 89 45 08          	mov    %rax,0x8(%r13)
  4077c9:	41 c7 45 14 0b 00 00 	movl   $0xb,0x14(%r13)
  4077d0:	00 
  4077d1:	41 c7 45 10 01 00 00 	movl   $0x1,0x10(%r13)
  4077d8:	00 
  4077d9:	4c 89 2d 78 ca 20 00 	mov    %r13,0x20ca78(%rip)        # 614258 <readtask@plt+0x212988>
  4077e0:	4c 89 38             	mov    %r15,(%rax)
  4077e3:	4d 89 75 00          	mov    %r14,0x0(%r13)
  4077e7:	e9 f2 f3 ff ff       	jmpq   406bde <readtask@plt+0x530e>
  4077ec:	b8 10 f6 40 00       	mov    $0x40f610,%eax
  4077f1:	e9 42 f5 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  4077f6:	b8 c8 fa 40 00       	mov    $0x40fac8,%eax
  4077fb:	e9 38 f5 ff ff       	jmpq   406d38 <readtask@plt+0x5468>
  407800:	4c 8b 3d 51 ca 20 00 	mov    0x20ca51(%rip),%r15        # 614258 <readtask@plt+0x212988>
  407807:	41 c7 47 14 06 00 00 	movl   $0x6,0x14(%r15)
  40780e:	00 
  40780f:	e9 ca f3 ff ff       	jmpq   406bde <readtask@plt+0x530e>
  407814:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40781b:	00 00 00 00 00 
  407820:	8b 15 fe c9 20 00    	mov    0x20c9fe(%rip),%edx        # 614224 <readtask@plt+0x212954>
  407826:	85 d2                	test   %edx,%edx
  407828:	0f 84 a2 00 00 00    	je     4078d0 <readtask@plt+0x6000>
  40782e:	44 8b 15 7f ca 20 00 	mov    0x20ca7f(%rip),%r10d        # 6142b4 <readtask@plt+0x2129e4>
  407835:	b8 f0 fc 40 00       	mov    $0x40fcf0,%eax
  40783a:	45 85 d2             	test   %r10d,%r10d
  40783d:	75 5a                	jne    407899 <readtask@plt+0x5fc9>
  40783f:	89 d1                	mov    %edx,%ecx
  407841:	83 e1 01             	and    $0x1,%ecx
  407844:	74 5a                	je     4078a0 <readtask@plt+0x5fd0>
  407846:	f6 c2 06             	test   $0x6,%dl
  407849:	b8 20 fd 40 00       	mov    $0x40fd20,%eax
  40784e:	75 78                	jne    4078c8 <readtask@plt+0x5ff8>
  407850:	89 d7                	mov    %edx,%edi
  407852:	b8 88 fd 40 00       	mov    $0x40fd88,%eax
  407857:	83 e7 18             	and    $0x18,%edi
  40785a:	83 ff 18             	cmp    $0x18,%edi
  40785d:	74 3a                	je     407899 <readtask@plt+0x5fc9>
  40785f:	85 c9                	test   %ecx,%ecx
  407861:	74 09                	je     40786c <readtask@plt+0x5f9c>
  407863:	80 ce 09             	or     $0x9,%dh
  407866:	89 15 b8 c9 20 00    	mov    %edx,0x20c9b8(%rip)        # 614224 <readtask@plt+0x212954>
  40786c:	f6 c2 06             	test   $0x6,%dl
  40786f:	75 47                	jne    4078b8 <readtask@plt+0x5fe8>
  407871:	31 c0                	xor    %eax,%eax
  407873:	f6 c2 18             	test   $0x18,%dl
  407876:	74 21                	je     407899 <readtask@plt+0x5fc9>
  407878:	f6 c2 07             	test   $0x7,%dl
  40787b:	74 13                	je     407890 <readtask@plt+0x5fc0>
  40787d:	80 ce 40             	or     $0x40,%dh
  407880:	89 15 9e c9 20 00    	mov    %edx,0x20c99e(%rip)        # 614224 <readtask@plt+0x212954>
  407886:	c3                   	retq   
  407887:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40788e:	00 00 
  407890:	80 ce 02             	or     $0x2,%dh
  407893:	89 15 8b c9 20 00    	mov    %edx,0x20c98b(%rip)        # 614224 <readtask@plt+0x212954>
  407899:	f3 c3                	repz retq 
  40789b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4078a0:	89 d6                	mov    %edx,%esi
  4078a2:	b8 58 fd 40 00       	mov    $0x40fd58,%eax
  4078a7:	83 e6 06             	and    $0x6,%esi
  4078aa:	83 fe 06             	cmp    $0x6,%esi
  4078ad:	75 a1                	jne    407850 <readtask@plt+0x5f80>
  4078af:	f3 c3                	repz retq 
  4078b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4078b8:	80 ce 07             	or     $0x7,%dh
  4078bb:	89 15 63 c9 20 00    	mov    %edx,0x20c963(%rip)        # 614224 <readtask@plt+0x212954>
  4078c1:	eb ae                	jmp    407871 <readtask@plt+0x5fa1>
  4078c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4078c8:	f3 c3                	repz retq 
  4078ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4078d0:	c7 05 4a c9 20 00 00 	movl   $0x100,0x20c94a(%rip)        # 614224 <readtask@plt+0x212954>
  4078d7:	01 00 00 
  4078da:	31 c0                	xor    %eax,%eax
  4078dc:	c3                   	retq   
  4078dd:	0f 1f 00             	nopl   (%rax)
  4078e0:	41 54                	push   %r12
  4078e2:	45 31 e4             	xor    %r12d,%r12d
  4078e5:	f6 05 88 c9 20 00 10 	testb  $0x10,0x20c988(%rip)        # 614274 <readtask@plt+0x2129a4>
  4078ec:	89 3d 4e ce 22 00    	mov    %edi,0x22ce4e(%rip)        # 634740 <stderr+0x203b8>
  4078f2:	48 89 35 4f ce 22 00 	mov    %rsi,0x22ce4f(%rip)        # 634748 <stderr+0x203c0>
  4078f9:	55                   	push   %rbp
  4078fa:	c7 05 4c ce 22 00 00 	movl   $0x0,0x22ce4c(%rip)        # 634750 <stderr+0x203c8>
  407901:	00 00 00 
  407904:	48 89 f5             	mov    %rsi,%rbp
  407907:	53                   	push   %rbx
  407908:	89 fb                	mov    %edi,%ebx
  40790a:	75 11                	jne    40791d <readtask@plt+0x604d>
  40790c:	e8 bf f2 ff ff       	callq  406bd0 <readtask@plt+0x5300>
  407911:	48 85 c0             	test   %rax,%rax
  407914:	49 89 c4             	mov    %rax,%r12
  407917:	0f 84 13 01 00 00    	je     407a30 <readtask@plt+0x6160>
  40791d:	e8 be b1 ff ff       	callq  402ae0 <readtask@plt+0x1210>
  407922:	c7 05 2c ce 22 00 00 	movl   $0x0,0x22ce2c(%rip)        # 634758 <stderr+0x203d0>
  407929:	00 00 00 
  40792c:	e8 7f 17 00 00       	callq  4090b0 <readtask@plt+0x77e0>
  407931:	8b 05 3d c9 20 00    	mov    0x20c93d(%rip),%eax        # 614274 <readtask@plt+0x2129a4>
  407937:	c7 05 6f c9 20 00 00 	movl   $0x0,0x20c96f(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  40793e:	00 00 00 
  407941:	89 1d f9 cd 22 00    	mov    %ebx,0x22cdf9(%rip)        # 634740 <stderr+0x203b8>
  407947:	48 89 2d fa cd 22 00 	mov    %rbp,0x22cdfa(%rip)        # 634748 <stderr+0x203c0>
  40794e:	c7 05 f8 cd 22 00 00 	movl   $0x0,0x22cdf8(%rip)        # 634750 <stderr+0x203c8>
  407955:	00 00 00 
  407958:	c7 05 f2 cd 22 00 01 	movl   $0x1,0x22cdf2(%rip)        # 634754 <stderr+0x203cc>
  40795f:	00 00 00 
  407962:	a8 44                	test   $0x44,%al
  407964:	c7 05 ee cd 22 00 01 	movl   $0x1,0x22cdee(%rip)        # 63475c <stderr+0x203d4>
  40796b:	00 00 00 
  40796e:	c7 05 f8 c8 20 00 01 	movl   $0x1,0x20c8f8(%rip)        # 614270 <readtask@plt+0x2129a0>
  407975:	00 00 00 
  407978:	75 09                	jne    407983 <readtask@plt+0x60b3>
  40797a:	83 c8 40             	or     $0x40,%eax
  40797d:	89 05 f1 c8 20 00    	mov    %eax,0x20c8f1(%rip)        # 614274 <readtask@plt+0x2129a4>
  407983:	e8 48 f2 ff ff       	callq  406bd0 <readtask@plt+0x5300>
  407988:	48 85 c0             	test   %rax,%rax
  40798b:	0f 85 ef 00 00 00    	jne    407a80 <readtask@plt+0x61b0>
  407991:	e8 8a fe ff ff       	callq  407820 <readtask@plt+0x5f50>
  407996:	48 85 c0             	test   %rax,%rax
  407999:	0f 85 e1 00 00 00    	jne    407a80 <readtask@plt+0x61b0>
  40799f:	44 8b 1d ae cd 22 00 	mov    0x22cdae(%rip),%r11d        # 634754 <stderr+0x203cc>
  4079a6:	31 ff                	xor    %edi,%edi
  4079a8:	45 85 db             	test   %r11d,%r11d
  4079ab:	40 0f 94 c7          	sete   %dil
  4079af:	e8 3c 17 00 00       	callq  4090f0 <readtask@plt+0x7820>
  4079b4:	48 85 c0             	test   %rax,%rax
  4079b7:	0f 85 c3 00 00 00    	jne    407a80 <readtask@plt+0x61b0>
  4079bd:	e8 2e 01 00 00       	callq  407af0 <readtask@plt+0x6220>
  4079c2:	48 85 c0             	test   %rax,%rax
  4079c5:	0f 85 b5 00 00 00    	jne    407a80 <readtask@plt+0x61b0>
  4079cb:	f6 05 a2 c8 20 00 10 	testb  $0x10,0x20c8a2(%rip)        # 614274 <readtask@plt+0x2129a4>
  4079d2:	74 3c                	je     407a10 <readtask@plt+0x6140>
  4079d4:	8b 05 7e cd 22 00    	mov    0x22cd7e(%rip),%eax        # 634758 <stderr+0x203d0>
  4079da:	85 c0                	test   %eax,%eax
  4079dc:	74 25                	je     407a03 <readtask@plt+0x6133>
  4079de:	81 3d 84 c8 20 00 83 	cmpl   $0x83,0x20c884(%rip)        # 61426c <readtask@plt+0x21299c>
  4079e5:	00 00 00 
  4079e8:	7f 0a                	jg     4079f4 <readtask@plt+0x6124>
  4079ea:	c7 05 78 c8 20 00 84 	movl   $0x84,0x20c878(%rip)        # 61426c <readtask@plt+0x21299c>
  4079f1:	00 00 00 
  4079f4:	83 f8 01             	cmp    $0x1,%eax
  4079f7:	7e 0a                	jle    407a03 <readtask@plt+0x6133>
  4079f9:	c7 05 69 c8 20 00 00 	movl   $0x20000,0x20c869(%rip)        # 61426c <readtask@plt+0x21299c>
  407a00:	00 02 00 
  407a03:	5b                   	pop    %rbx
  407a04:	5d                   	pop    %rbp
  407a05:	31 c0                	xor    %eax,%eax
  407a07:	41 5c                	pop    %r12
  407a09:	c3                   	retq   
  407a0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  407a10:	48 8b 0d 71 c9 20 00 	mov    0x20c971(%rip),%rcx        # 614388 <stderr>
  407a17:	ba 4f 00 00 00       	mov    $0x4f,%edx
  407a1c:	be 01 00 00 00       	mov    $0x1,%esi
  407a21:	bf c0 fd 40 00       	mov    $0x40fdc0,%edi
  407a26:	e8 55 9e ff ff       	callq  401880 <fwrite@plt>
  407a2b:	eb a7                	jmp    4079d4 <readtask@plt+0x6104>
  407a2d:	0f 1f 00             	nopl   (%rax)
  407a30:	e8 eb fd ff ff       	callq  407820 <readtask@plt+0x5f50>
  407a35:	48 85 c0             	test   %rax,%rax
  407a38:	49 89 c4             	mov    %rax,%r12
  407a3b:	0f 85 dc fe ff ff    	jne    40791d <readtask@plt+0x604d>
  407a41:	44 8b 25 0c cd 22 00 	mov    0x22cd0c(%rip),%r12d        # 634754 <stderr+0x203cc>
  407a48:	31 ff                	xor    %edi,%edi
  407a4a:	45 85 e4             	test   %r12d,%r12d
  407a4d:	40 0f 94 c7          	sete   %dil
  407a51:	e8 9a 16 00 00       	callq  4090f0 <readtask@plt+0x7820>
  407a56:	48 85 c0             	test   %rax,%rax
  407a59:	49 89 c4             	mov    %rax,%r12
  407a5c:	0f 85 bb fe ff ff    	jne    40791d <readtask@plt+0x604d>
  407a62:	e8 89 00 00 00       	callq  407af0 <readtask@plt+0x6220>
  407a67:	48 85 c0             	test   %rax,%rax
  407a6a:	49 89 c4             	mov    %rax,%r12
  407a6d:	0f 85 aa fe ff ff    	jne    40791d <readtask@plt+0x604d>
  407a73:	e9 5c ff ff ff       	jmpq   4079d4 <readtask@plt+0x6104>
  407a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407a7f:	00 
  407a80:	f6 05 ed c7 20 00 10 	testb  $0x10,0x20c7ed(%rip)        # 614274 <readtask@plt+0x2129a4>
  407a87:	c7 05 c7 cc 22 00 00 	movl   $0x0,0x22ccc7(%rip)        # 634758 <stderr+0x203d0>
  407a8e:	00 00 00 
  407a91:	48 89 c1             	mov    %rax,%rcx
  407a94:	75 03                	jne    407a99 <readtask@plt+0x61c9>
  407a96:	4c 89 e1             	mov    %r12,%rcx
  407a99:	48 8b 3d e8 c8 20 00 	mov    0x20c8e8(%rip),%rdi        # 614388 <stderr>
  407aa0:	ba 38 f4 40 00       	mov    $0x40f438,%edx
  407aa5:	be 01 00 00 00       	mov    $0x1,%esi
  407aaa:	31 c0                	xor    %eax,%eax
  407aac:	e8 df 9d ff ff       	callq  401890 <__fprintf_chk@plt>
  407ab1:	48 8b 1d 50 c8 20 00 	mov    0x20c850(%rip),%rbx        # 614308 <readtask@plt+0x212a38>
  407ab8:	48 89 df             	mov    %rbx,%rdi
  407abb:	e8 20 9b ff ff       	callq  4015e0 <strlen@plt>
  407ac0:	48 8b 0d c1 c8 20 00 	mov    0x20c8c1(%rip),%rcx        # 614388 <stderr>
  407ac7:	48 89 df             	mov    %rbx,%rdi
  407aca:	48 89 c2             	mov    %rax,%rdx
  407acd:	be 01 00 00 00       	mov    $0x1,%esi
  407ad2:	e8 a9 9d ff ff       	callq  401880 <fwrite@plt>
  407ad7:	bf 01 00 00 00       	mov    $0x1,%edi
  407adc:	e8 8f 9d ff ff       	callq  401870 <exit@plt>
  407ae1:	90                   	nop
  407ae2:	90                   	nop
  407ae3:	90                   	nop
  407ae4:	90                   	nop
  407ae5:	90                   	nop
  407ae6:	90                   	nop
  407ae7:	90                   	nop
  407ae8:	90                   	nop
  407ae9:	90                   	nop
  407aea:	90                   	nop
  407aeb:	90                   	nop
  407aec:	90                   	nop
  407aed:	90                   	nop
  407aee:	90                   	nop
  407aef:	90                   	nop
  407af0:	8b 05 5a c7 20 00    	mov    0x20c75a(%rip),%eax        # 614250 <readtask@plt+0x212980>
  407af6:	85 c0                	test   %eax,%eax
  407af8:	75 0a                	jne    407b04 <readtask@plt+0x6234>
  407afa:	8b 15 70 c7 20 00    	mov    0x20c770(%rip),%edx        # 614270 <readtask@plt+0x2129a0>
  407b00:	85 d2                	test   %edx,%edx
  407b02:	74 4c                	je     407b50 <readtask@plt+0x6280>
  407b04:	f6 05 69 c7 20 00 80 	testb  $0x80,0x20c769(%rip)        # 614274 <readtask@plt+0x2129a4>
  407b0b:	75 07                	jne    407b14 <readtask@plt+0x6244>
  407b0d:	a8 0c                	test   $0xc,%al
  407b0f:	75 03                	jne    407b14 <readtask@plt+0x6244>
  407b11:	83 c8 02             	or     $0x2,%eax
  407b14:	83 f8 13             	cmp    $0x13,%eax
  407b17:	76 07                	jbe    407b20 <readtask@plt+0x6250>
  407b19:	b8 d8 08 41 00       	mov    $0x4108d8,%eax
  407b1e:	c3                   	retq   
  407b1f:	90                   	nop
  407b20:	ff 24 c5 30 09 41 00 	jmpq   *0x410930(,%rax,8)
  407b27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  407b2e:	00 00 
  407b30:	48 c7 05 2d cc 22 00 	movq   $0x3333,0x22cc2d(%rip)        # 634768 <stderr+0x203e0>
  407b37:	33 33 00 00 
  407b3b:	31 c0                	xor    %eax,%eax
  407b3d:	c3                   	retq   
  407b3e:	66 90                	xchg   %ax,%ax
  407b40:	48 c7 05 1d cc 22 00 	movq   $0x303,0x22cc1d(%rip)        # 634768 <stderr+0x203e0>
  407b47:	03 03 00 00 
  407b4b:	31 c0                	xor    %eax,%eax
  407b4d:	c3                   	retq   
  407b4e:	66 90                	xchg   %ax,%ax
  407b50:	48 c7 05 0d cc 22 00 	movq   $0xaa00,0x22cc0d(%rip)        # 634768 <stderr+0x203e0>
  407b57:	00 aa 00 00 
  407b5b:	31 c0                	xor    %eax,%eax
  407b5d:	c3                   	retq   
  407b5e:	66 90                	xchg   %ax,%ax
  407b60:	48 c7 05 fd cb 22 00 	movq   $0x202,0x22cbfd(%rip)        # 634768 <stderr+0x203e0>
  407b67:	02 02 00 00 
  407b6b:	31 c0                	xor    %eax,%eax
  407b6d:	c3                   	retq   
  407b6e:	66 90                	xchg   %ax,%ax
  407b70:	48 c7 05 ed cb 22 00 	movq   $0xa0a,0x22cbed(%rip)        # 634768 <stderr+0x203e0>
  407b77:	0a 0a 00 00 
  407b7b:	31 c0                	xor    %eax,%eax
  407b7d:	c3                   	retq   
  407b7e:	66 90                	xchg   %ax,%ax
  407b80:	48 c7 05 dd cb 22 00 	movq   $0x2222,0x22cbdd(%rip)        # 634768 <stderr+0x203e0>
  407b87:	22 22 00 00 
  407b8b:	31 c0                	xor    %eax,%eax
  407b8d:	c3                   	retq   
  407b8e:	66 90                	xchg   %ax,%ax
  407b90:	48 c7 05 cd cb 22 00 	movq   $0x3f3f,0x22cbcd(%rip)        # 634768 <stderr+0x203e0>
  407b97:	3f 3f 00 00 
  407b9b:	31 c0                	xor    %eax,%eax
  407b9d:	c3                   	retq   
  407b9e:	66 90                	xchg   %ax,%ax
  407ba0:	48 c7 05 bd cb 22 00 	movq   $0xf0f,0x22cbbd(%rip)        # 634768 <stderr+0x203e0>
  407ba7:	0f 0f 00 00 
  407bab:	31 c0                	xor    %eax,%eax
  407bad:	c3                   	retq   
  407bae:	66 90                	xchg   %ax,%ax
  407bb0:	c7 05 3e c7 20 00 01 	movl   $0x1,0x20c73e(%rip)        # 6142f8 <readtask@plt+0x212a28>
  407bb7:	00 00 00 
  407bba:	c7 05 8c c6 20 00 00 	movl   $0x0,0x20c68c(%rip)        # 614250 <readtask@plt+0x212980>
  407bc1:	00 00 00 
  407bc4:	31 c0                	xor    %eax,%eax
  407bc6:	c3                   	retq   
  407bc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  407bce:	00 00 
  407bd0:	48 c7 05 8d cb 22 00 	movq   $0xaaaa,0x22cb8d(%rip)        # 634768 <stderr+0x203e0>
  407bd7:	aa aa 00 00 
  407bdb:	31 c0                	xor    %eax,%eax
  407bdd:	c3                   	retq   
  407bde:	66 90                	xchg   %ax,%ax
  407be0:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
  407be5:	48 89 6c 24 e0       	mov    %rbp,-0x20(%rsp)
  407bea:	48 89 fb             	mov    %rdi,%rbx
  407bed:	4c 89 64 24 e8       	mov    %r12,-0x18(%rsp)
  407bf2:	4c 89 6c 24 f0       	mov    %r13,-0x10(%rsp)
  407bf7:	b8 01 00 00 00       	mov    $0x1,%eax
  407bfc:	4c 89 74 24 f8       	mov    %r14,-0x8(%rsp)
  407c01:	48 83 ec 28          	sub    $0x28,%rsp
  407c05:	44 8b 05 ec c6 20 00 	mov    0x20c6ec(%rip),%r8d        # 6142f8 <readtask@plt+0x212a28>
  407c0c:	45 85 c0             	test   %r8d,%r8d
  407c0f:	75 47                	jne    407c58 <readtask@plt+0x6388>
  407c11:	8b 3d 39 c6 20 00    	mov    0x20c639(%rip),%edi        # 614250 <readtask@plt+0x212980>
  407c17:	85 ff                	test   %edi,%edi
  407c19:	0f 85 81 00 00 00    	jne    407ca0 <readtask@plt+0x63d0>
  407c1f:	48 8b 2d 32 c6 20 00 	mov    0x20c632(%rip),%rbp        # 614258 <readtask@plt+0x212988>
  407c26:	48 85 ed             	test   %rbp,%rbp
  407c29:	74 75                	je     407ca0 <readtask@plt+0x63d0>
  407c2b:	4c 8d ab 50 02 00 00 	lea    0x250(%rbx),%r13
  407c32:	83 7d 14 0e          	cmpl   $0xe,0x14(%rbp)
  407c36:	0f 86 f4 00 00 00    	jbe    407d30 <readtask@plt+0x6460>
  407c3c:	bf 00 09 41 00       	mov    $0x410900,%edi
  407c41:	e8 1a 99 ff ff       	callq  401560 <puts@plt>
  407c46:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
  407c4a:	48 85 ed             	test   %rbp,%rbp
  407c4d:	75 e3                	jne    407c32 <readtask@plt+0x6362>
  407c4f:	31 c0                	xor    %eax,%eax
  407c51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  407c58:	8b 2d 1e c6 20 00    	mov    0x20c61e(%rip),%ebp        # 61427c <readtask@plt+0x2129ac>
  407c5e:	85 ed                	test   %ebp,%ebp
  407c60:	74 0d                	je     407c6f <readtask@plt+0x639f>
  407c62:	0f b6 53 0c          	movzbl 0xc(%rbx),%edx
  407c66:	80 fa 44             	cmp    $0x44,%dl
  407c69:	0f 85 b1 00 00 00    	jne    407d20 <readtask@plt+0x6450>
  407c6f:	8b 35 0b c6 20 00    	mov    0x20c60b(%rip),%esi        # 614280 <readtask@plt+0x2129b0>
  407c75:	41 89 c5             	mov    %eax,%r13d
  407c78:	48 8b 1c 24          	mov    (%rsp),%rbx
  407c7c:	41 83 f5 01          	xor    $0x1,%r13d
  407c80:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
  407c85:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
  407c8a:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
  407c8f:	85 f6                	test   %esi,%esi
  407c91:	41 0f 45 c5          	cmovne %r13d,%eax
  407c95:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
  407c9a:	48 83 c4 28          	add    $0x28,%rsp
  407c9e:	c3                   	retq   
  407c9f:	90                   	nop
  407ca0:	44 8b 2d 19 c6 20 00 	mov    0x20c619(%rip),%r13d        # 6142c0 <readtask@plt+0x2129f0>
  407ca7:	44 39 ab 84 02 00 00 	cmp    %r13d,0x284(%rbx)
  407cae:	ba 01 00 00 00       	mov    $0x1,%edx
  407cb3:	44 8b 9b 7c 02 00 00 	mov    0x27c(%rbx),%r11d
  407cba:	8b b3 80 02 00 00    	mov    0x280(%rbx),%esi
  407cc0:	41 0f 94 c4          	sete   %r12b
  407cc4:	44 39 9b 74 02 00 00 	cmp    %r11d,0x274(%rbx)
  407ccb:	45 0f b6 cc          	movzbl %r12b,%r9d
  407ccf:	41 0f 94 c2          	sete   %r10b
  407cd3:	41 0f b6 ca          	movzbl %r10b,%ecx
  407cd7:	01 c9                	add    %ecx,%ecx
  407cd9:	44 09 c9             	or     %r9d,%ecx
  407cdc:	83 fe 01             	cmp    $0x1,%esi
  407cdf:	19 ed                	sbb    %ebp,%ebp
  407ce1:	31 c0                	xor    %eax,%eax
  407ce3:	83 e5 04             	and    $0x4,%ebp
  407ce6:	09 e9                	or     %ebp,%ecx
  407ce8:	3b 35 ca c5 20 00    	cmp    0x20c5ca(%rip),%esi        # 6142b8 <readtask@plt+0x2129e8>
  407cee:	0f 94 c0             	sete   %al
  407cf1:	c1 e0 03             	shl    $0x3,%eax
  407cf4:	09 c1                	or     %eax,%ecx
  407cf6:	b8 01 00 00 00       	mov    $0x1,%eax
  407cfb:	d3 e2                	shl    %cl,%edx
  407cfd:	85 15 65 ca 22 00    	test   %edx,0x22ca65(%rip)        # 634768 <stderr+0x203e0>
  407d03:	0f 85 4f ff ff ff    	jne    407c58 <readtask@plt+0x6388>
  407d09:	48 8b 2d 48 c5 20 00 	mov    0x20c548(%rip),%rbp        # 614258 <readtask@plt+0x212988>
  407d10:	48 85 ed             	test   %rbp,%rbp
  407d13:	0f 85 12 ff ff ff    	jne    407c2b <readtask@plt+0x635b>
  407d19:	31 c0                	xor    %eax,%eax
  407d1b:	e9 38 ff ff ff       	jmpq   407c58 <readtask@plt+0x6388>
  407d20:	80 fa 52             	cmp    $0x52,%dl
  407d23:	bb 00 00 00 00       	mov    $0x0,%ebx
  407d28:	0f 45 c3             	cmovne %ebx,%eax
  407d2b:	e9 3f ff ff ff       	jmpq   407c6f <readtask@plt+0x639f>
  407d30:	44 8b 75 14          	mov    0x14(%rbp),%r14d
  407d34:	42 ff 24 f5 d0 09 41 	jmpq   *0x4109d0(,%r14,8)
  407d3b:	00 
  407d3c:	0f 1f 40 00          	nopl   0x0(%rax)
  407d40:	8b 75 10             	mov    0x10(%rbp),%esi
  407d43:	48 63 ce             	movslq %esi,%rcx
  407d46:	48 89 c8             	mov    %rcx,%rax
  407d49:	48 29 f1             	sub    %rsi,%rcx
  407d4c:	48 c1 e0 04          	shl    $0x4,%rax
  407d50:	48 c1 e1 04          	shl    $0x4,%rcx
  407d54:	48 83 e8 10          	sub    $0x10,%rax
  407d58:	48 83 e9 10          	sub    $0x10,%rcx
  407d5c:	0f 1f 40 00          	nopl   0x0(%rax)
  407d60:	48 39 c8             	cmp    %rcx,%rax
  407d63:	0f 84 dd fe ff ff    	je     407c46 <readtask@plt+0x6376>
  407d69:	4c 8b 55 08          	mov    0x8(%rbp),%r10
  407d6d:	45 8b 0c 02          	mov    (%r10,%rax,1),%r9d
  407d71:	48 83 e8 10          	sub    $0x10,%rax
  407d75:	44 39 8b 84 02 00 00 	cmp    %r9d,0x284(%rbx)
  407d7c:	75 e2                	jne    407d60 <readtask@plt+0x6490>
  407d7e:	66 90                	xchg   %ax,%ax
  407d80:	b8 01 00 00 00       	mov    $0x1,%eax
  407d85:	e9 ce fe ff ff       	jmpq   407c58 <readtask@plt+0x6388>
  407d8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  407d90:	44 8b 45 10          	mov    0x10(%rbp),%r8d
  407d94:	49 63 c8             	movslq %r8d,%rcx
  407d97:	48 89 c8             	mov    %rcx,%rax
  407d9a:	4c 29 c1             	sub    %r8,%rcx
  407d9d:	48 c1 e0 04          	shl    $0x4,%rax
  407da1:	48 c1 e1 04          	shl    $0x4,%rcx
  407da5:	48 83 e8 10          	sub    $0x10,%rax
  407da9:	48 83 e9 10          	sub    $0x10,%rcx
  407dad:	0f 1f 00             	nopl   (%rax)
  407db0:	48 39 c8             	cmp    %rcx,%rax
  407db3:	0f 84 8d fe ff ff    	je     407c46 <readtask@plt+0x6376>
  407db9:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  407dbd:	8b 3c 02             	mov    (%rdx,%rax,1),%edi
  407dc0:	48 83 e8 10          	sub    $0x10,%rax
  407dc4:	39 bb 8c 02 00 00    	cmp    %edi,0x28c(%rbx)
  407dca:	75 e4                	jne    407db0 <readtask@plt+0x64e0>
  407dcc:	eb b2                	jmp    407d80 <readtask@plt+0x64b0>
  407dce:	66 90                	xchg   %ax,%ax
  407dd0:	44 8b 5d 10          	mov    0x10(%rbp),%r11d
  407dd4:	49 63 cb             	movslq %r11d,%rcx
  407dd7:	48 89 c8             	mov    %rcx,%rax
  407dda:	4c 29 d9             	sub    %r11,%rcx
  407ddd:	48 c1 e0 04          	shl    $0x4,%rax
  407de1:	48 c1 e1 04          	shl    $0x4,%rcx
  407de5:	48 83 e8 10          	sub    $0x10,%rax
  407de9:	48 83 e9 10          	sub    $0x10,%rcx
  407ded:	0f 1f 00             	nopl   (%rax)
  407df0:	48 39 c8             	cmp    %rcx,%rax
  407df3:	0f 84 4d fe ff ff    	je     407c46 <readtask@plt+0x6376>
  407df9:	4c 8b 75 08          	mov    0x8(%rbp),%r14
  407dfd:	45 8b 24 06          	mov    (%r14,%rax,1),%r12d
  407e01:	48 83 e8 10          	sub    $0x10,%rax
  407e05:	44 39 a3 94 02 00 00 	cmp    %r12d,0x294(%rbx)
  407e0c:	75 e2                	jne    407df0 <readtask@plt+0x6520>
  407e0e:	e9 6d ff ff ff       	jmpq   407d80 <readtask@plt+0x64b0>
  407e13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407e18:	44 8b 45 10          	mov    0x10(%rbp),%r8d
  407e1c:	49 63 c8             	movslq %r8d,%rcx
  407e1f:	48 89 c8             	mov    %rcx,%rax
  407e22:	4c 29 c1             	sub    %r8,%rcx
  407e25:	48 c1 e0 04          	shl    $0x4,%rax
  407e29:	48 c1 e1 04          	shl    $0x4,%rcx
  407e2d:	48 83 e8 10          	sub    $0x10,%rax
  407e31:	48 83 e9 10          	sub    $0x10,%rcx
  407e35:	0f 1f 00             	nopl   (%rax)
  407e38:	48 39 c8             	cmp    %rcx,%rax
  407e3b:	0f 84 05 fe ff ff    	je     407c46 <readtask@plt+0x6376>
  407e41:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  407e45:	8b 3c 02             	mov    (%rdx,%rax,1),%edi
  407e48:	48 83 e8 10          	sub    $0x10,%rax
  407e4c:	39 bb 9c 02 00 00    	cmp    %edi,0x29c(%rbx)
  407e52:	75 e4                	jne    407e38 <readtask@plt+0x6568>
  407e54:	e9 27 ff ff ff       	jmpq   407d80 <readtask@plt+0x64b0>
  407e59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  407e60:	8b 75 10             	mov    0x10(%rbp),%esi
  407e63:	48 63 ce             	movslq %esi,%rcx
  407e66:	48 89 c8             	mov    %rcx,%rax
  407e69:	48 29 f1             	sub    %rsi,%rcx
  407e6c:	48 c1 e0 04          	shl    $0x4,%rax
  407e70:	48 c1 e1 04          	shl    $0x4,%rcx
  407e74:	48 83 e8 10          	sub    $0x10,%rax
  407e78:	48 83 e9 10          	sub    $0x10,%rcx
  407e7c:	0f 1f 40 00          	nopl   0x0(%rax)
  407e80:	48 39 c8             	cmp    %rcx,%rax
  407e83:	0f 84 bd fd ff ff    	je     407c46 <readtask@plt+0x6376>
  407e89:	4c 8b 55 08          	mov    0x8(%rbp),%r10
  407e8d:	45 8b 0c 02          	mov    (%r10,%rax,1),%r9d
  407e91:	48 83 e8 10          	sub    $0x10,%rax
  407e95:	44 39 8b 90 02 00 00 	cmp    %r9d,0x290(%rbx)
  407e9c:	75 e2                	jne    407e80 <readtask@plt+0x65b0>
  407e9e:	e9 dd fe ff ff       	jmpq   407d80 <readtask@plt+0x64b0>
  407ea3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407ea8:	44 8b 5d 10          	mov    0x10(%rbp),%r11d
  407eac:	49 63 cb             	movslq %r11d,%rcx
  407eaf:	48 89 c8             	mov    %rcx,%rax
  407eb2:	4c 29 d9             	sub    %r11,%rcx
  407eb5:	48 c1 e0 04          	shl    $0x4,%rax
  407eb9:	48 c1 e1 04          	shl    $0x4,%rcx
  407ebd:	48 83 e8 10          	sub    $0x10,%rax
  407ec1:	48 83 e9 10          	sub    $0x10,%rcx
  407ec5:	0f 1f 00             	nopl   (%rax)
  407ec8:	48 39 c8             	cmp    %rcx,%rax
  407ecb:	0f 84 75 fd ff ff    	je     407c46 <readtask@plt+0x6376>
  407ed1:	4c 8b 75 08          	mov    0x8(%rbp),%r14
  407ed5:	45 8b 24 06          	mov    (%r14,%rax,1),%r12d
  407ed9:	48 83 e8 10          	sub    $0x10,%rax
  407edd:	44 39 a3 88 02 00 00 	cmp    %r12d,0x288(%rbx)
  407ee4:	75 e2                	jne    407ec8 <readtask@plt+0x65f8>
  407ee6:	e9 95 fe ff ff       	jmpq   407d80 <readtask@plt+0x64b0>
  407eeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407ef0:	44 8b 45 10          	mov    0x10(%rbp),%r8d
  407ef4:	49 63 c8             	movslq %r8d,%rcx
  407ef7:	48 89 c8             	mov    %rcx,%rax
  407efa:	4c 29 c1             	sub    %r8,%rcx
  407efd:	48 c1 e0 04          	shl    $0x4,%rax
  407f01:	48 c1 e1 04          	shl    $0x4,%rcx
  407f05:	48 83 e8 10          	sub    $0x10,%rax
  407f09:	48 83 e9 10          	sub    $0x10,%rcx
  407f0d:	0f 1f 00             	nopl   (%rax)
  407f10:	48 39 c8             	cmp    %rcx,%rax
  407f13:	0f 84 2d fd ff ff    	je     407c46 <readtask@plt+0x6376>
  407f19:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  407f1d:	8b 3c 02             	mov    (%rdx,%rax,1),%edi
  407f20:	48 83 e8 10          	sub    $0x10,%rax
  407f24:	39 bb 98 02 00 00    	cmp    %edi,0x298(%rbx)
  407f2a:	75 e4                	jne    407f10 <readtask@plt+0x6640>
  407f2c:	e9 4f fe ff ff       	jmpq   407d80 <readtask@plt+0x64b0>
  407f31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  407f38:	8b 75 10             	mov    0x10(%rbp),%esi
  407f3b:	48 63 ce             	movslq %esi,%rcx
  407f3e:	48 89 c8             	mov    %rcx,%rax
  407f41:	48 29 f1             	sub    %rsi,%rcx
  407f44:	48 c1 e0 04          	shl    $0x4,%rax
  407f48:	48 c1 e1 04          	shl    $0x4,%rcx
  407f4c:	48 83 e8 10          	sub    $0x10,%rax
  407f50:	48 83 e9 10          	sub    $0x10,%rcx
  407f54:	0f 1f 40 00          	nopl   0x0(%rax)
  407f58:	48 39 c8             	cmp    %rcx,%rax
  407f5b:	0f 84 e5 fc ff ff    	je     407c46 <readtask@plt+0x6376>
  407f61:	4c 8b 55 08          	mov    0x8(%rbp),%r10
  407f65:	45 8b 0c 02          	mov    (%r10,%rax,1),%r9d
  407f69:	48 83 e8 10          	sub    $0x10,%rax
  407f6d:	44 39 8b a0 02 00 00 	cmp    %r9d,0x2a0(%rbx)
  407f74:	75 e2                	jne    407f58 <readtask@plt+0x6688>
  407f76:	e9 05 fe ff ff       	jmpq   407d80 <readtask@plt+0x64b0>
  407f7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407f80:	44 8b 5d 10          	mov    0x10(%rbp),%r11d
  407f84:	49 63 cb             	movslq %r11d,%rcx
  407f87:	48 89 c8             	mov    %rcx,%rax
  407f8a:	4c 29 d9             	sub    %r11,%rcx
  407f8d:	48 c1 e0 04          	shl    $0x4,%rax
  407f91:	48 c1 e1 04          	shl    $0x4,%rcx
  407f95:	48 83 e8 10          	sub    $0x10,%rax
  407f99:	48 83 e9 10          	sub    $0x10,%rcx
  407f9d:	0f 1f 00             	nopl   (%rax)
  407fa0:	48 39 c8             	cmp    %rcx,%rax
  407fa3:	0f 84 9d fc ff ff    	je     407c46 <readtask@plt+0x6376>
  407fa9:	4c 8b 75 08          	mov    0x8(%rbp),%r14
  407fad:	45 8b 24 06          	mov    (%r14,%rax,1),%r12d
  407fb1:	48 83 e8 10          	sub    $0x10,%rax
  407fb5:	44 39 a3 70 02 00 00 	cmp    %r12d,0x270(%rbx)
  407fbc:	75 e2                	jne    407fa0 <readtask@plt+0x66d0>
  407fbe:	e9 bd fd ff ff       	jmpq   407d80 <readtask@plt+0x64b0>
  407fc3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407fc8:	44 8b 45 10          	mov    0x10(%rbp),%r8d
  407fcc:	49 63 c8             	movslq %r8d,%rcx
  407fcf:	48 89 c8             	mov    %rcx,%rax
  407fd2:	4c 29 c1             	sub    %r8,%rcx
  407fd5:	48 c1 e0 04          	shl    $0x4,%rax
  407fd9:	48 c1 e1 04          	shl    $0x4,%rcx
  407fdd:	48 83 e8 10          	sub    $0x10,%rax
  407fe1:	48 83 e9 10          	sub    $0x10,%rcx
  407fe5:	0f 1f 00             	nopl   (%rax)
  407fe8:	48 39 c8             	cmp    %rcx,%rax
  407feb:	0f 84 55 fc ff ff    	je     407c46 <readtask@plt+0x6376>
  407ff1:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  407ff5:	8b 3c 02             	mov    (%rdx,%rax,1),%edi
  407ff8:	48 83 e8 10          	sub    $0x10,%rax
  407ffc:	39 bb 7c 02 00 00    	cmp    %edi,0x27c(%rbx)
  408002:	75 e4                	jne    407fe8 <readtask@plt+0x6718>
  408004:	e9 77 fd ff ff       	jmpq   407d80 <readtask@plt+0x64b0>
  408009:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  408010:	44 8b 5d 10          	mov    0x10(%rbp),%r11d
  408014:	49 63 cb             	movslq %r11d,%rcx
  408017:	48 89 c8             	mov    %rcx,%rax
  40801a:	4c 29 d9             	sub    %r11,%rcx
  40801d:	48 c1 e0 04          	shl    $0x4,%rax
  408021:	48 c1 e1 04          	shl    $0x4,%rcx
  408025:	48 83 e8 10          	sub    $0x10,%rax
  408029:	48 83 e9 10          	sub    $0x10,%rcx
  40802d:	0f 1f 00             	nopl   (%rax)
  408030:	48 39 c8             	cmp    %rcx,%rax
  408033:	0f 84 0d fc ff ff    	je     407c46 <readtask@plt+0x6376>
  408039:	4c 8b 75 08          	mov    0x8(%rbp),%r14
  40803d:	45 8b 24 06          	mov    (%r14,%rax,1),%r12d
  408041:	48 83 e8 10          	sub    $0x10,%rax
  408045:	44 39 a3 80 02 00 00 	cmp    %r12d,0x280(%rbx)
  40804c:	75 e2                	jne    408030 <readtask@plt+0x6760>
  40804e:	e9 2d fd ff ff       	jmpq   407d80 <readtask@plt+0x64b0>
  408053:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408058:	44 8b 45 10          	mov    0x10(%rbp),%r8d
  40805c:	49 63 c8             	movslq %r8d,%rcx
  40805f:	48 89 c8             	mov    %rcx,%rax
  408062:	4c 29 c1             	sub    %r8,%rcx
  408065:	48 c1 e0 04          	shl    $0x4,%rax
  408069:	48 c1 e1 04          	shl    $0x4,%rcx
  40806d:	48 83 e8 10          	sub    $0x10,%rax
  408071:	48 83 e9 10          	sub    $0x10,%rcx
  408075:	0f 1f 00             	nopl   (%rax)
  408078:	48 39 c8             	cmp    %rcx,%rax
  40807b:	0f 84 c5 fb ff ff    	je     407c46 <readtask@plt+0x6376>
  408081:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  408085:	8b 3c 02             	mov    (%rdx,%rax,1),%edi
  408088:	48 83 e8 10          	sub    $0x10,%rax
  40808c:	39 bb 74 02 00 00    	cmp    %edi,0x274(%rbx)
  408092:	75 e4                	jne    408078 <readtask@plt+0x67a8>
  408094:	e9 e7 fc ff ff       	jmpq   407d80 <readtask@plt+0x64b0>
  408099:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4080a0:	8b 4d 10             	mov    0x10(%rbp),%ecx
  4080a3:	4c 63 f1             	movslq %ecx,%r14
  4080a6:	4d 89 f4             	mov    %r14,%r12
  4080a9:	49 29 ce             	sub    %rcx,%r14
  4080ac:	49 c1 e4 04          	shl    $0x4,%r12
  4080b0:	49 c1 e6 04          	shl    $0x4,%r14
  4080b4:	49 83 ec 10          	sub    $0x10,%r12
  4080b8:	49 83 ee 10          	sub    $0x10,%r14
  4080bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4080c0:	4d 39 f4             	cmp    %r14,%r12
  4080c3:	0f 84 7d fb ff ff    	je     407c46 <readtask@plt+0x6376>
  4080c9:	4c 89 e6             	mov    %r12,%rsi
  4080cc:	48 03 75 08          	add    0x8(%rbp),%rsi
  4080d0:	ba 0f 00 00 00       	mov    $0xf,%edx
  4080d5:	4c 89 ef             	mov    %r13,%rdi
  4080d8:	49 83 ec 10          	sub    $0x10,%r12
  4080dc:	e8 4f 94 ff ff       	callq  401530 <strncmp@plt>
  4080e1:	85 c0                	test   %eax,%eax
  4080e3:	75 db                	jne    4080c0 <readtask@plt+0x67f0>
  4080e5:	e9 96 fc ff ff       	jmpq   407d80 <readtask@plt+0x64b0>
  4080ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4080f0:	8b 75 10             	mov    0x10(%rbp),%esi
  4080f3:	48 63 ce             	movslq %esi,%rcx
  4080f6:	48 89 c8             	mov    %rcx,%rax
  4080f9:	48 29 f1             	sub    %rsi,%rcx
  4080fc:	48 c1 e0 04          	shl    $0x4,%rax
  408100:	48 c1 e1 04          	shl    $0x4,%rcx
  408104:	48 83 e8 10          	sub    $0x10,%rax
  408108:	48 83 e9 10          	sub    $0x10,%rcx
  40810c:	0f 1f 40 00          	nopl   0x0(%rax)
  408110:	48 39 c8             	cmp    %rcx,%rax
  408113:	0f 84 2d fb ff ff    	je     407c46 <readtask@plt+0x6376>
  408119:	4c 8b 55 08          	mov    0x8(%rbp),%r10
  40811d:	45 8b 0c 02          	mov    (%r10,%rax,1),%r9d
  408121:	48 83 e8 10          	sub    $0x10,%rax
  408125:	44 39 4b 04          	cmp    %r9d,0x4(%rbx)
  408129:	75 e5                	jne    408110 <readtask@plt+0x6840>
  40812b:	e9 50 fc ff ff       	jmpq   407d80 <readtask@plt+0x64b0>
  408130:	55                   	push   %rbp
  408131:	48 ba 53 54 55 63 66 	movabs $0x6b6a676663555453,%rdx
  408138:	67 6a 6b 
  40813b:	48 b9 6d 6e 6f 70 72 	movabs $0x75747372706f6e6d,%rcx
  408142:	73 74 75 
  408145:	53                   	push   %rbx
  408146:	48 89 fb             	mov    %rdi,%rbx
  408149:	48 81 ec 38 01 00 00 	sub    $0x138,%rsp
  408150:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  408157:	00 
  408158:	48 89 94 24 08 01 00 	mov    %rdx,0x108(%rsp)
  40815f:	00 
  408160:	48 89 8c 24 10 01 00 	mov    %rcx,0x110(%rsp)
  408167:	00 
  408168:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40816f:	00 00 
  408171:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
  408178:	00 
  408179:	31 c0                	xor    %eax,%eax
  40817b:	48 b8 43 47 4a 4b 4d 	movabs $0x52504e4d4b4a4743,%rax
  408182:	4e 50 52 
  408185:	c7 84 24 18 01 00 00 	movl   $0x2d2b7976,0x118(%rsp)
  40818c:	76 79 2b 2d 
  408190:	c6 84 24 1c 01 00 00 	movb   $0x0,0x11c(%rsp)
  408197:	00 
  408198:	48 89 84 24 00 01 00 	mov    %rax,0x100(%rsp)
  40819f:	00 
  4081a0:	e8 eb 94 ff ff       	callq  401690 <strspn@plt>
  4081a5:	48 89 df             	mov    %rbx,%rdi
  4081a8:	48 89 c5             	mov    %rax,%rbp
  4081ab:	e8 30 94 ff ff       	callq  4015e0 <strlen@plt>
  4081b0:	48 39 c5             	cmp    %rax,%rbp
  4081b3:	ba 48 0a 41 00       	mov    $0x410a48,%edx
  4081b8:	74 26                	je     4081e0 <readtask@plt+0x6910>
  4081ba:	48 89 d0             	mov    %rdx,%rax
  4081bd:	48 8b 94 24 28 01 00 	mov    0x128(%rsp),%rdx
  4081c4:	00 
  4081c5:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  4081cc:	00 00 
  4081ce:	0f 85 9b 00 00 00    	jne    40826f <readtask@plt+0x699f>
  4081d4:	48 81 c4 38 01 00 00 	add    $0x138,%rsp
  4081db:	5b                   	pop    %rbx
  4081dc:	5d                   	pop    %rbp
  4081dd:	c3                   	retq   
  4081de:	66 90                	xchg   %ax,%ax
  4081e0:	48 8d 84 24 ff 00 00 	lea    0xff(%rsp),%rax
  4081e7:	00 
  4081e8:	48 8d 54 24 ff       	lea    -0x1(%rsp),%rdx
  4081ed:	0f 1f 00             	nopl   (%rax)
  4081f0:	c6 00 00             	movb   $0x0,(%rax)
  4081f3:	48 83 e8 01          	sub    $0x1,%rax
  4081f7:	48 39 d0             	cmp    %rdx,%rax
  4081fa:	75 f4                	jne    4081f0 <readtask@plt+0x6920>
  4081fc:	0f b6 03             	movzbl (%rbx),%eax
  4081ff:	8b 0d af c0 20 00    	mov    0x20c0af(%rip),%ecx        # 6142b4 <readtask@plt+0x2129e4>
  408205:	3c 2d                	cmp    $0x2d,%al
  408207:	74 24                	je     40822d <readtask@plt+0x695d>
  408209:	7f 45                	jg     408250 <readtask@plt+0x6980>
  40820b:	84 c0                	test   %al,%al
  40820d:	74 59                	je     408268 <readtask@plt+0x6998>
  40820f:	3c 2b                	cmp    $0x2b,%al
  408211:	74 1a                	je     40822d <readtask@plt+0x695d>
  408213:	48 0f be c0          	movsbq %al,%rax
  408217:	80 3c 04 00          	cmpb   $0x0,(%rsp,%rax,1)
  40821b:	75 25                	jne    408242 <readtask@plt+0x6972>
  40821d:	c6 04 04 01          	movb   $0x1,(%rsp,%rax,1)
  408221:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  408225:	48 83 c3 01          	add    $0x1,%rbx
  408229:	3c 2d                	cmp    $0x2d,%al
  40822b:	75 dc                	jne    408209 <readtask@plt+0x6939>
  40822d:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  408231:	0f be d0             	movsbl %al,%edx
  408234:	83 fa 2b             	cmp    $0x2b,%edx
  408237:	74 09                	je     408242 <readtask@plt+0x6972>
  408239:	85 d2                	test   %edx,%edx
  40823b:	74 05                	je     408242 <readtask@plt+0x6972>
  40823d:	83 fa 2d             	cmp    $0x2d,%edx
  408240:	75 e3                	jne    408225 <readtask@plt+0x6955>
  408242:	ba 48 0a 41 00       	mov    $0x410a48,%edx
  408247:	e9 6e ff ff ff       	jmpq   4081ba <readtask@plt+0x68ea>
  40824c:	0f 1f 40 00          	nopl   0x0(%rax)
  408250:	3c 50                	cmp    $0x50,%al
  408252:	75 bf                	jne    408213 <readtask@plt+0x6943>
  408254:	85 c9                	test   %ecx,%ecx
  408256:	74 bb                	je     408213 <readtask@plt+0x6943>
  408258:	ba 48 0b 41 00       	mov    $0x410b48,%edx
  40825d:	e9 58 ff ff ff       	jmpq   4081ba <readtask@plt+0x68ea>
  408262:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408268:	31 d2                	xor    %edx,%edx
  40826a:	e9 4b ff ff ff       	jmpq   4081ba <readtask@plt+0x68ea>
  40826f:	e8 7c 93 ff ff       	callq  4015f0 <__stack_chk_fail@plt>
  408274:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40827b:	00 00 00 00 00 
  408280:	55                   	push   %rbp
  408281:	53                   	push   %rbx
  408282:	48 83 ec 08          	sub    $0x8,%rsp
  408286:	0f b6 07             	movzbl (%rdi),%eax
  408289:	3c 2d                	cmp    $0x2d,%al
  40828b:	74 4b                	je     4082d8 <readtask@plt+0x6a08>
  40828d:	31 ed                	xor    %ebp,%ebp
  40828f:	3c 2b                	cmp    $0x2b,%al
  408291:	0f 94 c2             	sete   %dl
  408294:	0f b6 c2             	movzbl %dl,%eax
  408297:	48 01 c7             	add    %rax,%rdi
  40829a:	e8 61 d4 ff ff       	callq  405700 <readtask@plt+0x3e30>
  40829f:	48 89 c3             	mov    %rax,%rbx
  4082a2:	31 c0                	xor    %eax,%eax
  4082a4:	48 85 db             	test   %rbx,%rbx
  4082a7:	74 22                	je     4082cb <readtask@plt+0x69fb>
  4082a9:	bf 20 00 00 00       	mov    $0x20,%edi
  4082ae:	e8 0d 95 ff ff       	callq  4017c0 <malloc@plt>
  4082b3:	48 8b 73 18          	mov    0x18(%rbx),%rsi
  4082b7:	8b 4b 24             	mov    0x24(%rbx),%ecx
  4082ba:	89 68 10             	mov    %ebp,0x10(%rax)
  4082bd:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  4082c4:	48 89 70 08          	mov    %rsi,0x8(%rax)
  4082c8:	89 48 18             	mov    %ecx,0x18(%rax)
  4082cb:	48 83 c4 08          	add    $0x8,%rsp
  4082cf:	5b                   	pop    %rbx
  4082d0:	5d                   	pop    %rbp
  4082d1:	c3                   	retq   
  4082d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4082d8:	48 83 c7 01          	add    $0x1,%rdi
  4082dc:	bd 01 00 00 00       	mov    $0x1,%ebp
  4082e1:	eb b7                	jmp    40829a <readtask@plt+0x69ca>
  4082e3:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4082ea:	84 00 00 00 00 00 
  4082f0:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
  4082f5:	48 89 6c 24 e0       	mov    %rbp,-0x20(%rsp)
  4082fa:	48 89 f5             	mov    %rsi,%rbp
  4082fd:	4c 89 64 24 e8       	mov    %r12,-0x18(%rsp)
  408302:	4c 89 6c 24 f0       	mov    %r13,-0x10(%rsp)
  408307:	49 89 fc             	mov    %rdi,%r12
  40830a:	4c 89 74 24 f8       	mov    %r14,-0x8(%rsp)
  40830f:	48 83 ec 48          	sub    $0x48,%rsp
  408313:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40831a:	00 00 
  40831c:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  408321:	31 c0                	xor    %eax,%eax
  408323:	e8 d8 d3 ff ff       	callq  405700 <readtask@plt+0x3e30>
  408328:	48 85 c0             	test   %rax,%rax
  40832b:	48 89 c3             	mov    %rax,%rbx
  40832e:	0f 84 ec 00 00 00    	je     408420 <readtask@plt+0x6b50>
  408334:	bf 30 00 00 00       	mov    $0x30,%edi
  408339:	e8 82 94 ff ff       	callq  4017c0 <malloc@plt>
  40833e:	f6 43 2c 10          	testb  $0x10,0x2c(%rbx)
  408342:	49 89 c4             	mov    %rax,%r12
  408345:	0f 85 a5 00 00 00    	jne    4083f0 <readtask@plt+0x6b20>
  40834b:	48 85 ed             	test   %rbp,%rbp
  40834e:	44 8b 6b 20          	mov    0x20(%rbx),%r13d
  408352:	0f 84 b9 00 00 00    	je     408411 <readtask@plt+0x6b41>
  408358:	48 89 ef             	mov    %rbp,%rdi
  40835b:	e8 80 92 ff ff       	callq  4015e0 <strlen@plt>
  408360:	41 39 c5             	cmp    %eax,%r13d
  408363:	44 0f 4e e8          	cmovle %eax,%r13d
  408367:	45 89 6c 24 18       	mov    %r13d,0x18(%r12)
  40836c:	48 89 ef             	mov    %rbp,%rdi
  40836f:	e8 6c 92 ff ff       	callq  4015e0 <strlen@plt>
  408374:	48 8d 78 01          	lea    0x1(%rax),%rdi
  408378:	e8 43 94 ff ff       	callq  4017c0 <malloc@plt>
  40837d:	48 89 ee             	mov    %rbp,%rsi
  408380:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  408385:	48 89 c7             	mov    %rax,%rdi
  408388:	e8 c3 91 ff ff       	callq  401550 <strcpy@plt>
  40838d:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  408391:	8b 4b 24             	mov    0x24(%rbx),%ecx
  408394:	8b 53 28             	mov    0x28(%rbx),%edx
  408397:	8b 43 2c             	mov    0x2c(%rbx),%eax
  40839a:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
  4083a1:	00 
  4083a2:	49 89 74 24 10       	mov    %rsi,0x10(%r12)
  4083a7:	41 89 4c 24 1c       	mov    %ecx,0x1c(%r12)
  4083ac:	41 89 54 24 20       	mov    %edx,0x20(%r12)
  4083b1:	41 89 44 24 24       	mov    %eax,0x24(%r12)
  4083b6:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  4083bb:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  4083c2:	00 00 
  4083c4:	4c 89 e0             	mov    %r12,%rax
  4083c7:	0f 85 00 01 00 00    	jne    4084cd <readtask@plt+0x6bfd>
  4083cd:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
  4083d2:	48 8b 6c 24 28       	mov    0x28(%rsp),%rbp
  4083d7:	4c 8b 64 24 30       	mov    0x30(%rsp),%r12
  4083dc:	4c 8b 6c 24 38       	mov    0x38(%rsp),%r13
  4083e1:	4c 8b 74 24 40       	mov    0x40(%rsp),%r14
  4083e6:	48 83 c4 48          	add    $0x48,%rsp
  4083ea:	c3                   	retq   
  4083eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4083f0:	e8 7b 92 ff ff       	callq  401670 <get_pid_digits@plt>
  4083f5:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  4083f9:	41 89 c5             	mov    %eax,%r13d
  4083fc:	e8 df 91 ff ff       	callq  4015e0 <strlen@plt>
  408401:	41 39 c5             	cmp    %eax,%r13d
  408404:	44 0f 4e e8          	cmovle %eax,%r13d
  408408:	48 85 ed             	test   %rbp,%rbp
  40840b:	0f 85 47 ff ff ff    	jne    408358 <readtask@plt+0x6a88>
  408411:	45 89 6c 24 18       	mov    %r13d,0x18(%r12)
  408416:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
  40841a:	e9 4d ff ff ff       	jmpq   40836c <readtask@plt+0x6a9c>
  40841f:	90                   	nop
  408420:	4c 89 e7             	mov    %r12,%rdi
  408423:	e8 08 d3 ff ff       	callq  405730 <readtask@plt+0x3e60>
  408428:	48 85 c0             	test   %rax,%rax
  40842b:	0f 84 94 00 00 00    	je     4084c5 <readtask@plt+0x6bf5>
  408431:	48 8b 58 08          	mov    0x8(%rax),%rbx
  408435:	45 31 e4             	xor    %r12d,%r12d
  408438:	0f b6 13             	movzbl (%rbx),%edx
  40843b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408440:	84 d2                	test   %dl,%dl
  408442:	0f 84 6e ff ff ff    	je     4083b6 <readtask@plt+0x6ae6>
  408448:	0f be d2             	movsbl %dl,%edx
  40844b:	45 31 ed             	xor    %r13d,%r13d
  40844e:	45 31 f6             	xor    %r14d,%r14d
  408451:	83 fa 2c             	cmp    $0x2c,%edx
  408454:	74 29                	je     40847f <readtask@plt+0x6baf>
  408456:	31 c0                	xor    %eax,%eax
  408458:	83 fa 20             	cmp    $0x20,%edx
  40845b:	75 10                	jne    40846d <readtask@plt+0x6b9d>
  40845d:	eb 20                	jmp    40847f <readtask@plt+0x6baf>
  40845f:	90                   	nop
  408460:	0f be d2             	movsbl %dl,%edx
  408463:	83 fa 2c             	cmp    $0x2c,%edx
  408466:	74 11                	je     408479 <readtask@plt+0x6ba9>
  408468:	83 fa 20             	cmp    $0x20,%edx
  40846b:	74 0c                	je     408479 <readtask@plt+0x6ba9>
  40846d:	48 83 c0 01          	add    $0x1,%rax
  408471:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
  408475:	84 d2                	test   %dl,%dl
  408477:	75 e7                	jne    408460 <readtask@plt+0x6b90>
  408479:	4c 63 f0             	movslq %eax,%r14
  40847c:	4d 89 f5             	mov    %r14,%r13
  40847f:	4c 89 ea             	mov    %r13,%rdx
  408482:	48 89 de             	mov    %rbx,%rsi
  408485:	b9 10 00 00 00       	mov    $0x10,%ecx
  40848a:	48 89 e7             	mov    %rsp,%rdi
  40848d:	49 01 dd             	add    %rbx,%r13
  408490:	e8 5b 93 ff ff       	callq  4017f0 <__strncpy_chk@plt>
  408495:	48 89 ee             	mov    %rbp,%rsi
  408498:	48 89 e7             	mov    %rsp,%rdi
  40849b:	42 c6 04 34 00       	movb   $0x0,(%rsp,%r14,1)
  4084a0:	e8 4b fe ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  4084a5:	31 d2                	xor    %edx,%edx
  4084a7:	4c 89 20             	mov    %r12,(%rax)
  4084aa:	41 80 7d 00 00       	cmpb   $0x0,0x0(%r13)
  4084af:	4c 89 eb             	mov    %r13,%rbx
  4084b2:	74 09                	je     4084bd <readtask@plt+0x6bed>
  4084b4:	41 0f b6 55 01       	movzbl 0x1(%r13),%edx
  4084b9:	48 83 c3 01          	add    $0x1,%rbx
  4084bd:	49 89 c4             	mov    %rax,%r12
  4084c0:	e9 7b ff ff ff       	jmpq   408440 <readtask@plt+0x6b70>
  4084c5:	45 31 e4             	xor    %r12d,%r12d
  4084c8:	e9 e9 fe ff ff       	jmpq   4083b6 <readtask@plt+0x6ae6>
  4084cd:	e8 1e 91 ff ff       	callq  4015f0 <__stack_chk_fail@plt>
  4084d2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4084d9:	1f 84 00 00 00 00 00 
  4084e0:	41 54                	push   %r12
  4084e2:	83 fe 62             	cmp    $0x62,%esi
  4084e5:	b8 ff b4 40 00       	mov    $0x40b4ff,%eax
  4084ea:	55                   	push   %rbp
  4084eb:	bd de b4 40 00       	mov    $0x40b4de,%ebp
  4084f0:	48 0f 45 e8          	cmovne %rax,%rbp
  4084f4:	31 f6                	xor    %esi,%esi
  4084f6:	53                   	push   %rbx
  4084f7:	48 89 fb             	mov    %rdi,%rbx
  4084fa:	bf d7 9f 40 00       	mov    $0x409fd7,%edi
  4084ff:	e8 ec fd ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  408504:	48 85 c0             	test   %rax,%rax
  408507:	49 89 c4             	mov    %rax,%r12
  40850a:	74 4d                	je     408559 <readtask@plt+0x6c89>
  40850c:	48 8b 13             	mov    (%rbx),%rdx
  40850f:	eb 0a                	jmp    40851b <readtask@plt+0x6c4b>
  408511:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  408518:	48 89 c2             	mov    %rax,%rdx
  40851b:	48 8b 02             	mov    (%rdx),%rax
  40851e:	48 85 c0             	test   %rax,%rax
  408521:	75 f5                	jne    408518 <readtask@plt+0x6c48>
  408523:	31 f6                	xor    %esi,%esi
  408525:	48 89 ef             	mov    %rbp,%rdi
  408528:	4c 89 22             	mov    %r12,(%rdx)
  40852b:	e8 c0 fd ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  408530:	48 85 c0             	test   %rax,%rax
  408533:	48 89 c5             	mov    %rax,%rbp
  408536:	74 3e                	je     408576 <readtask@plt+0x6ca6>
  408538:	48 89 ea             	mov    %rbp,%rdx
  40853b:	eb 06                	jmp    408543 <readtask@plt+0x6c73>
  40853d:	0f 1f 00             	nopl   (%rax)
  408540:	48 89 c2             	mov    %rax,%rdx
  408543:	48 8b 02             	mov    (%rdx),%rax
  408546:	48 85 c0             	test   %rax,%rax
  408549:	75 f5                	jne    408540 <readtask@plt+0x6c70>
  40854b:	48 8b 0b             	mov    (%rbx),%rcx
  40854e:	48 89 0a             	mov    %rcx,(%rdx)
  408551:	48 89 2b             	mov    %rbp,(%rbx)
  408554:	5b                   	pop    %rbx
  408555:	5d                   	pop    %rbp
  408556:	41 5c                	pop    %r12
  408558:	c3                   	retq   
  408559:	48 8b 0d 28 be 20 00 	mov    0x20be28(%rip),%rcx        # 614388 <stderr>
  408560:	ba 29 00 00 00       	mov    $0x29,%edx
  408565:	be 01 00 00 00       	mov    $0x1,%esi
  40856a:	bf 70 0b 41 00       	mov    $0x410b70,%edi
  40856f:	e8 0c 93 ff ff       	callq  401880 <fwrite@plt>
  408574:	eb 96                	jmp    40850c <readtask@plt+0x6c3c>
  408576:	48 8b 0d 0b be 20 00 	mov    0x20be0b(%rip),%rcx        # 614388 <stderr>
  40857d:	ba 29 00 00 00       	mov    $0x29,%edx
  408582:	be 01 00 00 00       	mov    $0x1,%esi
  408587:	bf 70 0b 41 00       	mov    $0x410b70,%edi
  40858c:	e8 ef 92 ff ff       	callq  401880 <fwrite@plt>
  408591:	eb a5                	jmp    408538 <readtask@plt+0x6c68>
  408593:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40859a:	84 00 00 00 00 00 
  4085a0:	41 57                	push   %r15
  4085a2:	45 31 ff             	xor    %r15d,%r15d
  4085a5:	41 56                	push   %r14
  4085a7:	41 55                	push   %r13
  4085a9:	41 54                	push   %r12
  4085ab:	55                   	push   %rbp
  4085ac:	53                   	push   %rbx
  4085ad:	48 89 fb             	mov    %rdi,%rbx
  4085b0:	48 83 ec 28          	sub    $0x28,%rsp
  4085b4:	4c 8b 67 18          	mov    0x18(%rdi),%r12
  4085b8:	4c 89 e7             	mov    %r12,%rdi
  4085bb:	e8 20 90 ff ff       	callq  4015e0 <strlen@plt>
  4085c0:	48 8d 78 01          	lea    0x1(%rax),%rdi
  4085c4:	e8 f7 91 ff ff       	callq  4017c0 <malloc@plt>
  4085c9:	4c 89 e6             	mov    %r12,%rsi
  4085cc:	48 89 c5             	mov    %rax,%rbp
  4085cf:	48 89 c7             	mov    %rax,%rdi
  4085d2:	e8 79 8f ff ff       	callq  401550 <strcpy@plt>
  4085d7:	0f b6 4d 00          	movzbl 0x0(%rbp),%ecx
  4085db:	44 8b 05 b2 c1 22 00 	mov    0x22c1b2(%rip),%r8d        # 634794 <stderr+0x2040c>
  4085e2:	48 89 e8             	mov    %rbp,%rax
  4085e5:	ba 01 00 00 00       	mov    $0x1,%edx
  4085ea:	bf 01 00 00 00       	mov    $0x1,%edi
  4085ef:	48 be 01 06 00 00 01 	movabs $0x100100000601,%rsi
  4085f6:	10 00 00 
  4085f9:	49 b9 00 00 00 00 00 	movabs $0x2000000000000000,%r9
  408600:	00 00 20 
  408603:	eb 22                	jmp    408627 <readtask@plt+0x6d57>
  408605:	0f 1f 00             	nopl   (%rax)
  408608:	4d 85 ca             	test   %r9,%r10
  40860b:	74 05                	je     408612 <readtask@plt+0x6d42>
  40860d:	45 85 c0             	test   %r8d,%r8d
  408610:	75 3d                	jne    40864f <readtask@plt+0x6d7f>
  408612:	85 d2                	test   %edx,%edx
  408614:	74 06                	je     40861c <readtask@plt+0x6d4c>
  408616:	41 83 c7 01          	add    $0x1,%r15d
  40861a:	31 d2                	xor    %edx,%edx
  40861c:	48 83 c0 01          	add    $0x1,%rax
  408620:	0f b6 08             	movzbl (%rax),%ecx
  408623:	84 c9                	test   %cl,%cl
  408625:	74 28                	je     40864f <readtask@plt+0x6d7f>
  408627:	80 f9 3d             	cmp    $0x3d,%cl
  40862a:	77 e6                	ja     408612 <readtask@plt+0x6d42>
  40862c:	49 89 fa             	mov    %rdi,%r10
  40862f:	49 d3 e2             	shl    %cl,%r10
  408632:	49 85 f2             	test   %rsi,%r10
  408635:	74 d1                	je     408608 <readtask@plt+0x6d38>
  408637:	85 d2                	test   %edx,%edx
  408639:	0f 85 ce 03 00 00    	jne    408a0d <readtask@plt+0x713d>
  40863f:	48 83 c0 01          	add    $0x1,%rax
  408643:	ba 01 00 00 00       	mov    $0x1,%edx
  408648:	0f b6 08             	movzbl (%rax),%ecx
  40864b:	84 c9                	test   %cl,%cl
  40864d:	75 d8                	jne    408627 <readtask@plt+0x6d57>
  40864f:	45 85 ff             	test   %r15d,%r15d
  408652:	0f 84 73 03 00 00    	je     4089cb <readtask@plt+0x70fb>
  408658:	85 d2                	test   %edx,%edx
  40865a:	0f 85 47 01 00 00    	jne    4087a7 <readtask@plt+0x6ed7>
  408660:	41 83 ef 01          	sub    $0x1,%r15d
  408664:	48 89 2c 24          	mov    %rbp,(%rsp)
  408668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40866f:	00 
  408670:	48 8b 3c 24          	mov    (%rsp),%rdi
  408674:	be a1 0a 41 00       	mov    $0x410aa1,%esi
  408679:	e8 62 91 ff ff       	callq  4017e0 <strpbrk@plt>
  40867e:	45 85 ff             	test   %r15d,%r15d
  408681:	49 89 c6             	mov    %rax,%r14
  408684:	0f 95 44 24 17       	setne  0x17(%rsp)
  408689:	48 85 c0             	test   %rax,%rax
  40868c:	74 0a                	je     408698 <readtask@plt+0x6dc8>
  40868e:	80 7c 24 17 00       	cmpb   $0x0,0x17(%rsp)
  408693:	74 03                	je     408698 <readtask@plt+0x6dc8>
  408695:	c6 00 00             	movb   $0x0,(%rax)
  408698:	48 8b 3c 24          	mov    (%rsp),%rdi
  40869c:	be 3d 00 00 00       	mov    $0x3d,%esi
  4086a1:	e8 7a 8f ff ff       	callq  401620 <strchr@plt>
  4086a6:	48 85 c0             	test   %rax,%rax
  4086a9:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4086b0:	00 00 
  4086b2:	74 0c                	je     4086c0 <readtask@plt+0x6df0>
  4086b4:	c6 00 00             	movb   $0x0,(%rax)
  4086b7:	48 83 c0 01          	add    $0x1,%rax
  4086bb:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4086c0:	48 8b 3c 24          	mov    (%rsp),%rdi
  4086c4:	be 3a 00 00 00       	mov    $0x3a,%esi
  4086c9:	e8 52 8f ff ff       	callq  401620 <strchr@plt>
  4086ce:	48 85 c0             	test   %rax,%rax
  4086d1:	49 89 c4             	mov    %rax,%r12
  4086d4:	0f 84 d6 00 00 00    	je     4087b0 <readtask@plt+0x6ee0>
  4086da:	4c 8d 68 01          	lea    0x1(%rax),%r13
  4086de:	be a6 0a 41 00       	mov    $0x410aa6,%esi
  4086e3:	c6 00 00             	movb   $0x0,(%rax)
  4086e6:	4c 89 ef             	mov    %r13,%rdi
  4086e9:	e8 a2 8f ff ff       	callq  401690 <strspn@plt>
  4086ee:	4c 89 ef             	mov    %r13,%rdi
  4086f1:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4086f6:	e8 e5 8e ff ff       	callq  4015e0 <strlen@plt>
  4086fb:	48 39 44 24 18       	cmp    %rax,0x18(%rsp)
  408700:	0f 85 b2 00 00 00    	jne    4087b8 <readtask@plt+0x6ee8>
  408706:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  40870c:	3c 30                	cmp    $0x30,%al
  40870e:	0f 84 a4 00 00 00    	je     4087b8 <readtask@plt+0x6ee8>
  408714:	84 c0                	test   %al,%al
  408716:	0f 84 9c 00 00 00    	je     4087b8 <readtask@plt+0x6ee8>
  40871c:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  408721:	48 8b 3c 24          	mov    (%rsp),%rdi
  408725:	e8 c6 fb ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  40872a:	48 85 c0             	test   %rax,%rax
  40872d:	49 89 c4             	mov    %rax,%r12
  408730:	0f 84 a8 02 00 00    	je     4089de <readtask@plt+0x710e>
  408736:	4d 85 ed             	test   %r13,%r13
  408739:	74 1e                	je     408759 <readtask@plt+0x6e89>
  40873b:	48 83 38 00          	cmpq   $0x0,(%rax)
  40873f:	0f 85 b5 02 00 00    	jne    4089fa <readtask@plt+0x712a>
  408745:	ba 0a 00 00 00       	mov    $0xa,%edx
  40874a:	31 f6                	xor    %esi,%esi
  40874c:	4c 89 ef             	mov    %r13,%rdi
  40874f:	e8 9c 8f ff ff       	callq  4016f0 <strtol@plt>
  408754:	41 89 44 24 18       	mov    %eax,0x18(%r12)
  408759:	4c 89 e2             	mov    %r12,%rdx
  40875c:	eb 05                	jmp    408763 <readtask@plt+0x6e93>
  40875e:	66 90                	xchg   %ax,%ax
  408760:	48 89 c2             	mov    %rax,%rdx
  408763:	48 8b 02             	mov    (%rdx),%rax
  408766:	48 85 c0             	test   %rax,%rax
  408769:	75 f5                	jne    408760 <readtask@plt+0x6e90>
  40876b:	49 83 c6 01          	add    $0x1,%r14
  40876f:	41 83 ef 01          	sub    $0x1,%r15d
  408773:	80 7c 24 17 00       	cmpb   $0x0,0x17(%rsp)
  408778:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40877c:	4c 89 34 24          	mov    %r14,(%rsp)
  408780:	48 89 02             	mov    %rax,(%rdx)
  408783:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  408787:	0f 85 e3 fe ff ff    	jne    408670 <readtask@plt+0x6da0>
  40878d:	48 89 ef             	mov    %rbp,%rdi
  408790:	45 31 e4             	xor    %r12d,%r12d
  408793:	e8 58 8d ff ff       	callq  4014f0 <free@plt>
  408798:	c7 05 ee bf 22 00 01 	movl   $0x1,0x22bfee(%rip)        # 634790 <stderr+0x20408>
  40879f:	00 00 00 
  4087a2:	e9 7c 01 00 00       	jmpq   408923 <readtask@plt+0x7053>
  4087a7:	c6 40 ff 00          	movb   $0x0,-0x1(%rax)
  4087ab:	e9 b0 fe ff ff       	jmpq   408660 <readtask@plt+0x6d90>
  4087b0:	45 31 ed             	xor    %r13d,%r13d
  4087b3:	e9 64 ff ff ff       	jmpq   40871c <readtask@plt+0x6e4c>
  4087b8:	48 89 ef             	mov    %rbp,%rdi
  4087bb:	41 bc a0 0b 41 00    	mov    $0x410ba0,%r12d
  4087c1:	e8 2a 8d ff ff       	callq  4014f0 <free@plt>
  4087c6:	48 8b 6b 18          	mov    0x18(%rbx),%rbp
  4087ca:	be 25 00 00 00       	mov    $0x25,%esi
  4087cf:	48 89 ef             	mov    %rbp,%rdi
  4087d2:	e8 49 8e ff ff       	callq  401620 <strchr@plt>
  4087d7:	48 85 c0             	test   %rax,%rax
  4087da:	0f 84 43 01 00 00    	je     408923 <readtask@plt+0x7053>
  4087e0:	4c 8d 7b 08          	lea    0x8(%rbx),%r15
  4087e4:	48 89 ea             	mov    %rbp,%rdx
  4087e7:	45 31 e4             	xor    %r12d,%r12d
  4087ea:	0f be 0a             	movsbl (%rdx),%ecx
  4087ed:	48 8d 42 01          	lea    0x1(%rdx),%rax
  4087f1:	83 f9 25             	cmp    $0x25,%ecx
  4087f4:	0f 84 a6 01 00 00    	je     4089a0 <readtask@plt+0x70d0>
  4087fa:	85 c9                	test   %ecx,%ecx
  4087fc:	0f 84 6e 02 00 00    	je     408a70 <readtask@plt+0x71a0>
  408802:	41 83 c4 01          	add    $0x1,%r12d
  408806:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40880d:	00 00 00 
  408810:	0f be 10             	movsbl (%rax),%edx
  408813:	48 83 c0 01          	add    $0x1,%rax
  408817:	83 fa 25             	cmp    $0x25,%edx
  40881a:	0f 84 80 01 00 00    	je     4089a0 <readtask@plt+0x70d0>
  408820:	85 d2                	test   %edx,%edx
  408822:	75 ec                	jne    408810 <readtask@plt+0x6f40>
  408824:	48 89 ef             	mov    %rbp,%rdi
  408827:	e8 b4 8d ff ff       	callq  4015e0 <strlen@plt>
  40882c:	48 8d 78 01          	lea    0x1(%rax),%rdi
  408830:	e8 8b 8f ff ff       	callq  4017c0 <malloc@plt>
  408835:	48 89 ee             	mov    %rbp,%rsi
  408838:	48 89 c7             	mov    %rax,%rdi
  40883b:	49 89 c6             	mov    %rax,%r14
  40883e:	e8 0d 8d ff ff       	callq  401550 <strcpy@plt>
  408843:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408848:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  40884c:	3c 25                	cmp    $0x25,%al
  40884e:	0f 84 e4 00 00 00    	je     408938 <readtask@plt+0x7068>
  408854:	45 31 ed             	xor    %r13d,%r13d
  408857:	84 c0                	test   %al,%al
  408859:	75 09                	jne    408864 <readtask@plt+0x6f94>
  40885b:	e9 5c 01 00 00       	jmpq   4089bc <readtask@plt+0x70ec>
  408860:	3c 25                	cmp    $0x25,%al
  408862:	74 0e                	je     408872 <readtask@plt+0x6fa2>
  408864:	49 83 c5 01          	add    $0x1,%r13
  408868:	42 0f b6 44 2d 00    	movzbl 0x0(%rbp,%r13,1),%eax
  40886e:	84 c0                	test   %al,%al
  408870:	75 ee                	jne    408860 <readtask@plt+0x6f90>
  408872:	41 8d 45 01          	lea    0x1(%r13),%eax
  408876:	49 63 dd             	movslq %r13d,%rbx
  408879:	48 98                	cltq   
  40887b:	48 89 04 24          	mov    %rax,(%rsp)
  40887f:	48 89 da             	mov    %rbx,%rdx
  408882:	48 89 ee             	mov    %rbp,%rsi
  408885:	4c 89 f7             	mov    %r14,%rdi
  408888:	e8 93 8e ff ff       	callq  401720 <memcpy@plt>
  40888d:	41 c6 04 1e 00       	movb   $0x0,(%r14,%rbx,1)
  408892:	bf 30 00 00 00       	mov    $0x30,%edi
  408897:	48 01 dd             	add    %rbx,%rbp
  40889a:	e8 21 8f ff ff       	callq  4017c0 <malloc@plt>
  40889f:	48 8b 3c 24          	mov    (%rsp),%rdi
  4088a3:	48 89 c3             	mov    %rax,%rbx
  4088a6:	44 89 68 18          	mov    %r13d,0x18(%rax)
  4088aa:	e8 11 8f ff ff       	callq  4017c0 <malloc@plt>
  4088af:	4c 89 f6             	mov    %r14,%rsi
  4088b2:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4088b6:	48 89 c7             	mov    %rax,%rdi
  4088b9:	e8 92 8c ff ff       	callq  401550 <strcpy@plt>
  4088be:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  4088c5:	00 
  4088c6:	c7 43 1c 00 00 00 00 	movl   $0x0,0x1c(%rbx)
  4088cd:	31 c0                	xor    %eax,%eax
  4088cf:	c7 43 20 03 00 00 00 	movl   $0x3,0x20(%rbx)
  4088d6:	c7 43 24 00 00 00 40 	movl   $0x40000000,0x24(%rbx)
  4088dd:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
  4088e4:	48 89 da             	mov    %rbx,%rdx
  4088e7:	eb 0d                	jmp    4088f6 <readtask@plt+0x7026>
  4088e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4088f0:	48 89 c2             	mov    %rax,%rdx
  4088f3:	48 8b 00             	mov    (%rax),%rax
  4088f6:	48 85 c0             	test   %rax,%rax
  4088f9:	75 f5                	jne    4088f0 <readtask@plt+0x7020>
  4088fb:	49 8b 0f             	mov    (%r15),%rcx
  4088fe:	41 83 ec 01          	sub    $0x1,%r12d
  408902:	48 89 0a             	mov    %rcx,(%rdx)
  408905:	49 89 1f             	mov    %rbx,(%r15)
  408908:	0f 85 3a ff ff ff    	jne    408848 <readtask@plt+0x6f78>
  40890e:	4c 89 f7             	mov    %r14,%rdi
  408911:	45 31 e4             	xor    %r12d,%r12d
  408914:	e8 d7 8b ff ff       	callq  4014f0 <free@plt>
  408919:	c7 05 6d be 22 00 01 	movl   $0x1,0x22be6d(%rip)        # 634790 <stderr+0x20408>
  408920:	00 00 00 
  408923:	48 83 c4 28          	add    $0x28,%rsp
  408927:	4c 89 e0             	mov    %r12,%rax
  40892a:	5b                   	pop    %rbx
  40892b:	5d                   	pop    %rbp
  40892c:	41 5c                	pop    %r12
  40892e:	41 5d                	pop    %r13
  408930:	41 5e                	pop    %r14
  408932:	41 5f                	pop    %r15
  408934:	c3                   	retq   
  408935:	0f 1f 00             	nopl   (%rax)
  408938:	0f b6 45 01          	movzbl 0x1(%rbp),%eax
  40893c:	3c 25                	cmp    $0x25,%al
  40893e:	74 40                	je     408980 <readtask@plt+0x70b0>
  408940:	0f be f8             	movsbl %al,%edi
  408943:	e8 88 cd ff ff       	callq  4056d0 <readtask@plt+0x3e00>
  408948:	48 85 c0             	test   %rax,%rax
  40894b:	0f 84 e2 00 00 00    	je     408a33 <readtask@plt+0x7163>
  408951:	48 8b 70 10          	mov    0x10(%rax),%rsi
  408955:	48 8b 78 08          	mov    0x8(%rax),%rdi
  408959:	e8 92 f9 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  40895e:	48 85 c0             	test   %rax,%rax
  408961:	48 89 c3             	mov    %rax,%rbx
  408964:	0f 84 b6 00 00 00    	je     408a20 <readtask@plt+0x7150>
  40896a:	48 83 c5 02          	add    $0x2,%rbp
  40896e:	48 8b 00             	mov    (%rax),%rax
  408971:	e9 6e ff ff ff       	jmpq   4088e4 <readtask@plt+0x7014>
  408976:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40897d:	00 00 00 
  408980:	48 83 c5 01          	add    $0x1,%rbp
  408984:	41 c6 06 25          	movb   $0x25,(%r14)
  408988:	48 c7 04 24 02 00 00 	movq   $0x2,(%rsp)
  40898f:	00 
  408990:	bb 01 00 00 00       	mov    $0x1,%ebx
  408995:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  40899b:	e9 ed fe ff ff       	jmpq   40888d <readtask@plt+0x6fbd>
  4089a0:	41 83 c4 01          	add    $0x1,%r12d
  4089a4:	80 38 00             	cmpb   $0x0,(%rax)
  4089a7:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4089ab:	0f 85 39 fe ff ff    	jne    4087ea <readtask@plt+0x6f1a>
  4089b1:	41 bc 10 0c 41 00    	mov    $0x410c10,%r12d
  4089b7:	e9 67 ff ff ff       	jmpq   408923 <readtask@plt+0x7053>
  4089bc:	48 c7 04 24 01 00 00 	movq   $0x1,(%rsp)
  4089c3:	00 
  4089c4:	31 db                	xor    %ebx,%ebx
  4089c6:	e9 b4 fe ff ff       	jmpq   40887f <readtask@plt+0x6faf>
  4089cb:	48 89 ef             	mov    %rbp,%rdi
  4089ce:	41 bc 70 0a 41 00    	mov    $0x410a70,%r12d
  4089d4:	e8 17 8b ff ff       	callq  4014f0 <free@plt>
  4089d9:	e9 e8 fd ff ff       	jmpq   4087c6 <readtask@plt+0x6ef6>
  4089de:	80 3d bb bd 22 00 00 	cmpb   $0x0,0x22bdbb(%rip)        # 6347a0 <stderr+0x20418>
  4089e5:	74 5f                	je     408a46 <readtask@plt+0x7176>
  4089e7:	48 89 ef             	mov    %rbp,%rdi
  4089ea:	41 bc a0 47 63 00    	mov    $0x6347a0,%r12d
  4089f0:	e8 fb 8a ff ff       	callq  4014f0 <free@plt>
  4089f5:	e9 cc fd ff ff       	jmpq   4087c6 <readtask@plt+0x6ef6>
  4089fa:	48 89 ef             	mov    %rbp,%rdi
  4089fd:	41 bc d0 0b 41 00    	mov    $0x410bd0,%r12d
  408a03:	e8 e8 8a ff ff       	callq  4014f0 <free@plt>
  408a08:	e9 b9 fd ff ff       	jmpq   4087c6 <readtask@plt+0x6ef6>
  408a0d:	48 89 ef             	mov    %rbp,%rdi
  408a10:	41 bc 5a 0a 41 00    	mov    $0x410a5a,%r12d
  408a16:	e8 d5 8a ff ff       	callq  4014f0 <free@plt>
  408a1b:	e9 a6 fd ff ff       	jmpq   4087c6 <readtask@plt+0x6ef6>
  408a20:	4c 89 f7             	mov    %r14,%rdi
  408a23:	41 bc 30 0c 41 00    	mov    $0x410c30,%r12d
  408a29:	e8 c2 8a ff ff       	callq  4014f0 <free@plt>
  408a2e:	e9 f0 fe ff ff       	jmpq   408923 <readtask@plt+0x7053>
  408a33:	4c 89 f7             	mov    %r14,%rdi
  408a36:	41 bc 83 0a 41 00    	mov    $0x410a83,%r12d
  408a3c:	e8 af 8a ff ff       	callq  4014f0 <free@plt>
  408a41:	e9 dd fe ff ff       	jmpq   408923 <readtask@plt+0x7053>
  408a46:	4c 8b 0c 24          	mov    (%rsp),%r9
  408a4a:	41 b8 58 0c 41 00    	mov    $0x410c58,%r8d
  408a50:	b9 50 00 00 00       	mov    $0x50,%ecx
  408a55:	ba 01 00 00 00       	mov    $0x1,%edx
  408a5a:	be 50 00 00 00       	mov    $0x50,%esi
  408a5f:	bf a0 47 63 00       	mov    $0x6347a0,%edi
  408a64:	31 c0                	xor    %eax,%eax
  408a66:	e8 75 8a ff ff       	callq  4014e0 <__snprintf_chk@plt>
  408a6b:	e9 77 ff ff ff       	jmpq   4089e7 <readtask@plt+0x7117>
  408a70:	48 89 ef             	mov    %rbp,%rdi
  408a73:	e8 68 8b ff ff       	callq  4015e0 <strlen@plt>
  408a78:	48 8d 78 01          	lea    0x1(%rax),%rdi
  408a7c:	e8 3f 8d ff ff       	callq  4017c0 <malloc@plt>
  408a81:	48 89 ee             	mov    %rbp,%rsi
  408a84:	48 89 c7             	mov    %rax,%rdi
  408a87:	49 89 c6             	mov    %rax,%r14
  408a8a:	e8 c1 8a ff ff       	callq  401550 <strcpy@plt>
  408a8f:	45 85 e4             	test   %r12d,%r12d
  408a92:	0f 84 76 fe ff ff    	je     40890e <readtask@plt+0x703e>
  408a98:	e9 ab fd ff ff       	jmpq   408848 <readtask@plt+0x6f78>
  408a9d:	0f 1f 00             	nopl   (%rax)
  408aa0:	48 89 6c 24 e0       	mov    %rbp,-0x20(%rsp)
  408aa5:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
  408aaa:	48 89 fd             	mov    %rdi,%rbp
  408aad:	4c 89 64 24 e8       	mov    %r12,-0x18(%rsp)
  408ab2:	4c 89 6c 24 f0       	mov    %r13,-0x10(%rsp)
  408ab7:	4c 89 74 24 f8       	mov    %r14,-0x8(%rsp)
  408abc:	48 83 ec 28          	sub    $0x28,%rsp
  408ac0:	48 8b 3f             	mov    (%rdi),%rdi
  408ac3:	48 85 ff             	test   %rdi,%rdi
  408ac6:	74 30                	je     408af8 <readtask@plt+0x7228>
  408ac8:	e8 d3 ff ff ff       	callq  408aa0 <readtask@plt+0x71d0>
  408acd:	48 85 c0             	test   %rax,%rax
  408ad0:	48 89 c3             	mov    %rax,%rbx
  408ad3:	74 23                	je     408af8 <readtask@plt+0x7228>
  408ad5:	48 89 d8             	mov    %rbx,%rax
  408ad8:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
  408add:	48 8b 1c 24          	mov    (%rsp),%rbx
  408ae1:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
  408ae6:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
  408aeb:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
  408af0:	48 83 c4 28          	add    $0x28,%rsp
  408af4:	c3                   	retq   
  408af5:	0f 1f 00             	nopl   (%rax)
  408af8:	83 7d 20 07          	cmpl   $0x7,0x20(%rbp)
  408afc:	76 0a                	jbe    408b08 <readtask@plt+0x7238>
  408afe:	bb b8 0c 41 00       	mov    $0x410cb8,%ebx
  408b03:	eb d0                	jmp    408ad5 <readtask@plt+0x7205>
  408b05:	0f 1f 00             	nopl   (%rax)
  408b08:	8b 45 20             	mov    0x20(%rbp),%eax
  408b0b:	ff 24 c5 48 0f 41 00 	jmpq   *0x410f48(,%rax,8)
  408b12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408b18:	8b 35 6e bc 22 00    	mov    0x22bc6e(%rip),%esi        # 63478c <stderr+0x20404>
  408b1e:	bb b1 0a 41 00       	mov    $0x410ab1,%ebx
  408b23:	85 f6                	test   %esi,%esi
  408b25:	0f 84 45 01 00 00    	je     408c70 <readtask@plt+0x73a0>
  408b2b:	c7 05 57 bc 22 00 01 	movl   $0x1,0x22bc57(%rip)        # 63478c <stderr+0x20404>
  408b32:	00 00 00 
  408b35:	eb 9e                	jmp    408ad5 <readtask@plt+0x7205>
  408b37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  408b3e:	00 00 
  408b40:	44 8b 0d 41 bc 22 00 	mov    0x22bc41(%rip),%r9d        # 634788 <stderr+0x20400>
  408b47:	bb b1 0a 41 00       	mov    $0x410ab1,%ebx
  408b4c:	45 85 c9             	test   %r9d,%r9d
  408b4f:	0f 85 fb 00 00 00    	jne    408c50 <readtask@plt+0x7380>
  408b55:	44 8b 05 30 bc 22 00 	mov    0x22bc30(%rip),%r8d        # 63478c <stderr+0x20404>
  408b5c:	45 85 c0             	test   %r8d,%r8d
  408b5f:	0f 85 eb 00 00 00    	jne    408c50 <readtask@plt+0x7380>
  408b65:	4c 8b 65 18          	mov    0x18(%rbp),%r12
  408b69:	4c 89 e7             	mov    %r12,%rdi
  408b6c:	e8 bf f5 ff ff       	callq  408130 <readtask@plt+0x6860>
  408b71:	48 85 c0             	test   %rax,%rax
  408b74:	48 89 c3             	mov    %rax,%rbx
  408b77:	0f 85 d3 00 00 00    	jne    408c50 <readtask@plt+0x7380>
  408b7d:	45 31 ed             	xor    %r13d,%r13d
  408b80:	41 0f b6 04 24       	movzbl (%r12),%eax
  408b85:	3c 2b                	cmp    $0x2b,%al
  408b87:	74 4d                	je     408bd6 <readtask@plt+0x7306>
  408b89:	3c 2d                	cmp    $0x2d,%al
  408b8b:	0f 84 42 02 00 00    	je     408dd3 <readtask@plt+0x7503>
  408b91:	84 c0                	test   %al,%al
  408b93:	74 96                	je     408b2b <readtask@plt+0x725b>
  408b95:	0f be f8             	movsbl %al,%edi
  408b98:	e8 03 cb ff ff       	callq  4056a0 <readtask@plt+0x3dd0>
  408b9d:	48 85 c0             	test   %rax,%rax
  408ba0:	74 89                	je     408b2b <readtask@plt+0x725b>
  408ba2:	48 8b 78 08          	mov    0x8(%rax),%rdi
  408ba6:	e8 d5 f6 ff ff       	callq  408280 <readtask@plt+0x69b0>
  408bab:	48 85 c0             	test   %rax,%rax
  408bae:	0f 84 77 ff ff ff    	je     408b2b <readtask@plt+0x725b>
  408bb4:	44 89 68 10          	mov    %r13d,0x10(%rax)
  408bb8:	48 89 c1             	mov    %rax,%rcx
  408bbb:	eb 06                	jmp    408bc3 <readtask@plt+0x72f3>
  408bbd:	0f 1f 00             	nopl   (%rax)
  408bc0:	48 89 d1             	mov    %rdx,%rcx
  408bc3:	48 8b 11             	mov    (%rcx),%rdx
  408bc6:	48 85 d2             	test   %rdx,%rdx
  408bc9:	75 f5                	jne    408bc0 <readtask@plt+0x72f0>
  408bcb:	48 8b 55 10          	mov    0x10(%rbp),%rdx
  408bcf:	48 89 11             	mov    %rdx,(%rcx)
  408bd2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  408bd6:	45 31 ed             	xor    %r13d,%r13d
  408bd9:	49 83 c4 01          	add    $0x1,%r12
  408bdd:	eb a1                	jmp    408b80 <readtask@plt+0x72b0>
  408bdf:	90                   	nop
  408be0:	48 89 ef             	mov    %rbp,%rdi
  408be3:	e8 b8 f9 ff ff       	callq  4085a0 <readtask@plt+0x6cd0>
  408be8:	48 85 c0             	test   %rax,%rax
  408beb:	48 89 c3             	mov    %rax,%rbx
  408bee:	0f 85 e1 fe ff ff    	jne    408ad5 <readtask@plt+0x7205>
  408bf4:	c7 05 92 bb 22 00 01 	movl   $0x1,0x22bb92(%rip)        # 634790 <stderr+0x20408>
  408bfb:	00 00 00 
  408bfe:	e9 d2 fe ff ff       	jmpq   408ad5 <readtask@plt+0x7205>
  408c03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408c08:	44 8b 15 81 bb 22 00 	mov    0x22bb81(%rip),%r10d        # 634790 <stderr+0x20408>
  408c0f:	bb 88 0c 41 00       	mov    $0x410c88,%ebx
  408c14:	45 85 d2             	test   %r10d,%r10d
  408c17:	0f 85 b8 fe ff ff    	jne    408ad5 <readtask@plt+0x7205>
  408c1d:	48 89 ef             	mov    %rbp,%rdi
  408c20:	e8 7b f9 ff ff       	callq  4085a0 <readtask@plt+0x6cd0>
  408c25:	48 85 c0             	test   %rax,%rax
  408c28:	48 89 c3             	mov    %rax,%rbx
  408c2b:	0f 85 a4 fe ff ff    	jne    408ad5 <readtask@plt+0x7205>
  408c31:	48 8d 7d 08          	lea    0x8(%rbp),%rdi
  408c35:	be 75 00 00 00       	mov    $0x75,%esi
  408c3a:	c7 05 4c bb 22 00 01 	movl   $0x1,0x22bb4c(%rip)        # 634790 <stderr+0x20408>
  408c41:	00 00 00 
  408c44:	e8 97 f8 ff ff       	callq  4084e0 <readtask@plt+0x6c10>
  408c49:	e9 87 fe ff ff       	jmpq   408ad5 <readtask@plt+0x7205>
  408c4e:	66 90                	xchg   %ax,%ax
  408c50:	8b 3d 3a bb 22 00    	mov    0x22bb3a(%rip),%edi        # 634790 <stderr+0x20408>
  408c56:	85 ff                	test   %edi,%edi
  408c58:	0f 84 a2 00 00 00    	je     408d00 <readtask@plt+0x7430>
  408c5e:	bb e0 0c 41 00       	mov    $0x410ce0,%ebx
  408c63:	e9 6d fe ff ff       	jmpq   408ad5 <readtask@plt+0x7205>
  408c68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  408c6f:	00 
  408c70:	4c 8b 65 18          	mov    0x18(%rbp),%r12
  408c74:	48 8d 5d 10          	lea    0x10(%rbp),%rbx
  408c78:	45 31 ed             	xor    %r13d,%r13d
  408c7b:	4c 89 e7             	mov    %r12,%rdi
  408c7e:	e8 5d 89 ff ff       	callq  4015e0 <strlen@plt>
  408c83:	48 8d 78 01          	lea    0x1(%rax),%rdi
  408c87:	e8 34 8b ff ff       	callq  4017c0 <malloc@plt>
  408c8c:	4c 89 e6             	mov    %r12,%rsi
  408c8f:	48 89 c5             	mov    %rax,%rbp
  408c92:	48 89 c7             	mov    %rax,%rdi
  408c95:	e8 b6 88 ff ff       	callq  401550 <strcpy@plt>
  408c9a:	0f b6 4d 00          	movzbl 0x0(%rbp),%ecx
  408c9e:	48 89 e8             	mov    %rbp,%rax
  408ca1:	ba 01 00 00 00       	mov    $0x1,%edx
  408ca6:	bf 01 00 00 00       	mov    $0x1,%edi
  408cab:	48 be 01 06 00 00 01 	movabs $0x100100000601,%rsi
  408cb2:	10 00 00 
  408cb5:	eb 30                	jmp    408ce7 <readtask@plt+0x7417>
  408cb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  408cbe:	00 00 
  408cc0:	49 89 fb             	mov    %rdi,%r11
  408cc3:	49 d3 e3             	shl    %cl,%r11
  408cc6:	49 85 f3             	test   %rsi,%r11
  408cc9:	74 21                	je     408cec <readtask@plt+0x741c>
  408ccb:	85 d2                	test   %edx,%edx
  408ccd:	0f 85 ee 00 00 00    	jne    408dc1 <readtask@plt+0x74f1>
  408cd3:	ba 01 00 00 00       	mov    $0x1,%edx
  408cd8:	0f b6 48 01          	movzbl 0x1(%rax),%ecx
  408cdc:	4c 8d 40 01          	lea    0x1(%rax),%r8
  408ce0:	84 c9                	test   %cl,%cl
  408ce2:	74 4c                	je     408d30 <readtask@plt+0x7460>
  408ce4:	4c 89 c0             	mov    %r8,%rax
  408ce7:	80 f9 2c             	cmp    $0x2c,%cl
  408cea:	76 d4                	jbe    408cc0 <readtask@plt+0x73f0>
  408cec:	85 d2                	test   %edx,%edx
  408cee:	74 e8                	je     408cd8 <readtask@plt+0x7408>
  408cf0:	41 83 c5 01          	add    $0x1,%r13d
  408cf4:	31 d2                	xor    %edx,%edx
  408cf6:	eb e0                	jmp    408cd8 <readtask@plt+0x7408>
  408cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  408cff:	00 
  408d00:	48 89 ef             	mov    %rbp,%rdi
  408d03:	e8 98 f8 ff ff       	callq  4085a0 <readtask@plt+0x6cd0>
  408d08:	48 85 c0             	test   %rax,%rax
  408d0b:	0f 85 c4 fd ff ff    	jne    408ad5 <readtask@plt+0x7205>
  408d11:	48 8d 7d 08          	lea    0x8(%rbp),%rdi
  408d15:	be 62 00 00 00       	mov    $0x62,%esi
  408d1a:	c7 05 6c ba 22 00 01 	movl   $0x1,0x22ba6c(%rip)        # 634790 <stderr+0x20408>
  408d21:	00 00 00 
  408d24:	31 db                	xor    %ebx,%ebx
  408d26:	e8 b5 f7 ff ff       	callq  4084e0 <readtask@plt+0x6c10>
  408d2b:	e9 a5 fd ff ff       	jmpq   408ad5 <readtask@plt+0x7205>
  408d30:	45 85 ed             	test   %r13d,%r13d
  408d33:	74 7a                	je     408daf <readtask@plt+0x74df>
  408d35:	85 d2                	test   %edx,%edx
  408d37:	74 03                	je     408d3c <readtask@plt+0x746c>
  408d39:	c6 00 00             	movb   $0x0,(%rax)
  408d3c:	49 89 ec             	mov    %rbp,%r12
  408d3f:	90                   	nop
  408d40:	be a1 0a 41 00       	mov    $0x410aa1,%esi
  408d45:	4c 89 e7             	mov    %r12,%rdi
  408d48:	e8 93 8a ff ff       	callq  4017e0 <strpbrk@plt>
  408d4d:	48 85 c0             	test   %rax,%rax
  408d50:	49 89 c6             	mov    %rax,%r14
  408d53:	74 03                	je     408d58 <readtask@plt+0x7488>
  408d55:	c6 00 00             	movb   $0x0,(%rax)
  408d58:	4c 89 e7             	mov    %r12,%rdi
  408d5b:	e8 20 f5 ff ff       	callq  408280 <readtask@plt+0x69b0>
  408d60:	48 85 c0             	test   %rax,%rax
  408d63:	74 38                	je     408d9d <readtask@plt+0x74cd>
  408d65:	48 89 c1             	mov    %rax,%rcx
  408d68:	eb 09                	jmp    408d73 <readtask@plt+0x74a3>
  408d6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408d70:	48 89 d1             	mov    %rdx,%rcx
  408d73:	48 8b 11             	mov    (%rcx),%rdx
  408d76:	48 85 d2             	test   %rdx,%rdx
  408d79:	75 f5                	jne    408d70 <readtask@plt+0x74a0>
  408d7b:	4c 8b 13             	mov    (%rbx),%r10
  408d7e:	41 83 ed 01          	sub    $0x1,%r13d
  408d82:	4d 8d 66 01          	lea    0x1(%r14),%r12
  408d86:	4c 89 11             	mov    %r10,(%rcx)
  408d89:	48 89 03             	mov    %rax,(%rbx)
  408d8c:	75 b2                	jne    408d40 <readtask@plt+0x7470>
  408d8e:	48 89 ef             	mov    %rbp,%rdi
  408d91:	31 db                	xor    %ebx,%ebx
  408d93:	e8 58 87 ff ff       	callq  4014f0 <free@plt>
  408d98:	e9 8e fd ff ff       	jmpq   408b2b <readtask@plt+0x725b>
  408d9d:	48 89 ef             	mov    %rbp,%rdi
  408da0:	bb ec 0a 41 00       	mov    $0x410aec,%ebx
  408da5:	e8 46 87 ff ff       	callq  4014f0 <free@plt>
  408daa:	e9 7c fd ff ff       	jmpq   408b2b <readtask@plt+0x725b>
  408daf:	48 89 ef             	mov    %rbp,%rdi
  408db2:	bb db 0a 41 00       	mov    $0x410adb,%ebx
  408db7:	e8 34 87 ff ff       	callq  4014f0 <free@plt>
  408dbc:	e9 6a fd ff ff       	jmpq   408b2b <readtask@plt+0x725b>
  408dc1:	48 89 ef             	mov    %rbp,%rdi
  408dc4:	bb c8 0a 41 00       	mov    $0x410ac8,%ebx
  408dc9:	e8 22 87 ff ff       	callq  4014f0 <free@plt>
  408dce:	e9 58 fd ff ff       	jmpq   408b2b <readtask@plt+0x725b>
  408dd3:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  408dd9:	e9 fb fd ff ff       	jmpq   408bd9 <readtask@plt+0x7309>
  408dde:	66 90                	xchg   %ax,%ax
  408de0:	41 55                	push   %r13
  408de2:	49 89 f5             	mov    %rsi,%r13
  408de5:	41 54                	push   %r12
  408de7:	49 89 fc             	mov    %rdi,%r12
  408dea:	4c 89 e6             	mov    %r12,%rsi
  408ded:	55                   	push   %rbp
  408dee:	53                   	push   %rbx
  408def:	48 83 ec 08          	sub    $0x8,%rsp
  408df3:	48 8b 2d ae b4 20 00 	mov    0x20b4ae(%rip),%rbp        # 6142a8 <readtask@plt+0x2129d8>
  408dfa:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
  408dfe:	e8 cd 88 ff ff       	callq  4016d0 <strcmp@plt>
  408e03:	85 c0                	test   %eax,%eax
  408e05:	75 1c                	jne    408e23 <readtask@plt+0x7553>
  408e07:	eb 30                	jmp    408e39 <readtask@plt+0x7569>
  408e09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  408e10:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  408e14:	4c 89 e6             	mov    %r12,%rsi
  408e17:	e8 b4 88 ff ff       	callq  4016d0 <strcmp@plt>
  408e1c:	85 c0                	test   %eax,%eax
  408e1e:	74 38                	je     408e58 <readtask@plt+0x7588>
  408e20:	48 89 dd             	mov    %rbx,%rbp
  408e23:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
  408e27:	48 85 db             	test   %rbx,%rbx
  408e2a:	75 e4                	jne    408e10 <readtask@plt+0x7540>
  408e2c:	48 83 c4 08          	add    $0x8,%rsp
  408e30:	31 c0                	xor    %eax,%eax
  408e32:	5b                   	pop    %rbx
  408e33:	5d                   	pop    %rbp
  408e34:	41 5c                	pop    %r12
  408e36:	41 5d                	pop    %r13
  408e38:	c3                   	retq   
  408e39:	48 8b 45 00          	mov    0x0(%rbp),%rax
  408e3d:	49 89 45 00          	mov    %rax,0x0(%r13)
  408e41:	4c 89 6d 00          	mov    %r13,0x0(%rbp)
  408e45:	48 83 c4 08          	add    $0x8,%rsp
  408e49:	5b                   	pop    %rbx
  408e4a:	5d                   	pop    %rbp
  408e4b:	41 5c                	pop    %r12
  408e4d:	b8 01 00 00 00       	mov    $0x1,%eax
  408e52:	41 5d                	pop    %r13
  408e54:	c3                   	retq   
  408e55:	0f 1f 00             	nopl   (%rax)
  408e58:	48 8b 0b             	mov    (%rbx),%rcx
  408e5b:	b8 01 00 00 00       	mov    $0x1,%eax
  408e60:	49 89 4d 00          	mov    %rcx,0x0(%r13)
  408e64:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  408e68:	4c 89 2a             	mov    %r13,(%rdx)
  408e6b:	48 83 c4 08          	add    $0x8,%rsp
  408e6f:	5b                   	pop    %rbx
  408e70:	5d                   	pop    %rbp
  408e71:	41 5c                	pop    %r12
  408e73:	41 5d                	pop    %r13
  408e75:	c3                   	retq   
  408e76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408e7d:	00 00 00 
  408e80:	41 54                	push   %r12
  408e82:	49 89 fc             	mov    %rdi,%r12
  408e85:	4c 89 e6             	mov    %r12,%rsi
  408e88:	55                   	push   %rbp
  408e89:	48 8b 2d 18 b4 20 00 	mov    0x20b418(%rip),%rbp        # 6142a8 <readtask@plt+0x2129d8>
  408e90:	53                   	push   %rbx
  408e91:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
  408e95:	e8 36 88 ff ff       	callq  4016d0 <strcmp@plt>
  408e9a:	85 c0                	test   %eax,%eax
  408e9c:	75 15                	jne    408eb3 <readtask@plt+0x75e3>
  408e9e:	eb 41                	jmp    408ee1 <readtask@plt+0x7611>
  408ea0:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  408ea4:	4c 89 e6             	mov    %r12,%rsi
  408ea7:	e8 24 88 ff ff       	callq  4016d0 <strcmp@plt>
  408eac:	85 c0                	test   %eax,%eax
  408eae:	74 18                	je     408ec8 <readtask@plt+0x75f8>
  408eb0:	48 89 dd             	mov    %rbx,%rbp
  408eb3:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
  408eb7:	48 85 db             	test   %rbx,%rbx
  408eba:	75 e4                	jne    408ea0 <readtask@plt+0x75d0>
  408ebc:	5b                   	pop    %rbx
  408ebd:	5d                   	pop    %rbp
  408ebe:	31 c0                	xor    %eax,%eax
  408ec0:	41 5c                	pop    %r12
  408ec2:	c3                   	retq   
  408ec3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408ec8:	48 8b 13             	mov    (%rbx),%rdx
  408ecb:	48 89 df             	mov    %rbx,%rdi
  408ece:	48 89 55 00          	mov    %rdx,0x0(%rbp)
  408ed2:	e8 19 86 ff ff       	callq  4014f0 <free@plt>
  408ed7:	5b                   	pop    %rbx
  408ed8:	5d                   	pop    %rbp
  408ed9:	b8 01 00 00 00       	mov    $0x1,%eax
  408ede:	41 5c                	pop    %r12
  408ee0:	c3                   	retq   
  408ee1:	48 8b 45 00          	mov    0x0(%rbp),%rax
  408ee5:	48 89 ef             	mov    %rbp,%rdi
  408ee8:	48 89 05 b9 b3 20 00 	mov    %rax,0x20b3b9(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  408eef:	e8 fc 85 ff ff       	callq  4014f0 <free@plt>
  408ef4:	5b                   	pop    %rbx
  408ef5:	5d                   	pop    %rbp
  408ef6:	b8 01 00 00 00       	mov    $0x1,%eax
  408efb:	41 5c                	pop    %r12
  408efd:	c3                   	retq   
  408efe:	66 90                	xchg   %ax,%ax
  408f00:	41 54                	push   %r12
  408f02:	41 89 f4             	mov    %esi,%r12d
  408f05:	55                   	push   %rbp
  408f06:	53                   	push   %rbx
  408f07:	48 89 fb             	mov    %rdi,%rbx
  408f0a:	bf 28 00 00 00       	mov    $0x28,%edi
  408f0f:	48 83 ec 20          	sub    $0x20,%rsp
  408f13:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  408f1a:	00 00 
  408f1c:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  408f21:	31 c0                	xor    %eax,%eax
  408f23:	e8 98 88 ff ff       	callq  4017c0 <malloc@plt>
  408f28:	48 89 df             	mov    %rbx,%rdi
  408f2b:	48 89 c5             	mov    %rax,%rbp
  408f2e:	e8 ad 86 ff ff       	callq  4015e0 <strlen@plt>
  408f33:	48 8d 78 01          	lea    0x1(%rax),%rdi
  408f37:	e8 84 88 ff ff       	callq  4017c0 <malloc@plt>
  408f3c:	48 89 de             	mov    %rbx,%rsi
  408f3f:	48 89 45 18          	mov    %rax,0x18(%rbp)
  408f43:	48 89 c7             	mov    %rax,%rdi
  408f46:	e8 05 86 ff ff       	callq  401550 <strcpy@plt>
  408f4b:	48 8b 05 2e b8 22 00 	mov    0x22b82e(%rip),%rax        # 634780 <stderr+0x203f8>
  408f52:	41 83 fc 06          	cmp    $0x6,%r12d
  408f56:	44 89 65 20          	mov    %r12d,0x20(%rbp)
  408f5a:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
  408f61:	00 
  408f62:	48 c7 45 08 00 00 00 	movq   $0x0,0x8(%rbp)
  408f69:	00 
  408f6a:	48 89 2d 0f b8 22 00 	mov    %rbp,0x22b80f(%rip)        # 634780 <stderr+0x203f8>
  408f71:	48 89 45 00          	mov    %rax,0x0(%rbp)
  408f75:	0f 84 f5 00 00 00    	je     409070 <readtask@plt+0x77a0>
  408f7b:	41 83 fc 02          	cmp    $0x2,%r12d
  408f7f:	b8 01 00 00 00       	mov    $0x1,%eax
  408f84:	75 32                	jne    408fb8 <readtask@plt+0x76e8>
  408f86:	0f b6 13             	movzbl (%rbx),%edx
  408f89:	80 fa 2c             	cmp    $0x2c,%dl
  408f8c:	74 0a                	je     408f98 <readtask@plt+0x76c8>
  408f8e:	7f 48                	jg     408fd8 <readtask@plt+0x7708>
  408f90:	84 d2                	test   %dl,%dl
  408f92:	0f 85 f0 00 00 00    	jne    409088 <readtask@plt+0x77b8>
  408f98:	85 c0                	test   %eax,%eax
  408f9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408fa0:	0f 85 f0 00 00 00    	jne    409096 <readtask@plt+0x77c6>
  408fa6:	b0 01                	mov    $0x1,%al
  408fa8:	48 83 c3 01          	add    $0x1,%rbx
  408fac:	0f b6 13             	movzbl (%rbx),%edx
  408faf:	84 d2                	test   %dl,%dl
  408fb1:	75 d6                	jne    408f89 <readtask@plt+0x76b9>
  408fb3:	31 c0                	xor    %eax,%eax
  408fb5:	0f 1f 00             	nopl   (%rax)
  408fb8:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  408fbd:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  408fc4:	00 00 
  408fc6:	0f 85 d8 00 00 00    	jne    4090a4 <readtask@plt+0x77d4>
  408fcc:	48 83 c4 20          	add    $0x20,%rsp
  408fd0:	5b                   	pop    %rbx
  408fd1:	5d                   	pop    %rbp
  408fd2:	41 5c                	pop    %r12
  408fd4:	c3                   	retq   
  408fd5:	0f 1f 00             	nopl   (%rax)
  408fd8:	80 fa 3d             	cmp    $0x3d,%dl
  408fdb:	74 db                	je     408fb8 <readtask@plt+0x76e8>
  408fdd:	85 c0                	test   %eax,%eax
  408fdf:	74 c7                	je     408fa8 <readtask@plt+0x76d8>
  408fe1:	84 d2                	test   %dl,%dl
  408fe3:	0f 84 b7 00 00 00    	je     4090a0 <readtask@plt+0x77d0>
  408fe9:	0f be d2             	movsbl %dl,%edx
  408fec:	83 fa 2c             	cmp    $0x2c,%edx
  408fef:	0f 84 ab 00 00 00    	je     4090a0 <readtask@plt+0x77d0>
  408ff5:	83 fa 20             	cmp    $0x20,%edx
  408ff8:	0f 84 a2 00 00 00    	je     4090a0 <readtask@plt+0x77d0>
  408ffe:	83 fa 3d             	cmp    $0x3d,%edx
  409001:	0f 84 99 00 00 00    	je     4090a0 <readtask@plt+0x77d0>
  409007:	31 ed                	xor    %ebp,%ebp
  409009:	eb 17                	jmp    409022 <readtask@plt+0x7752>
  40900b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  409010:	0f be c0             	movsbl %al,%eax
  409013:	83 f8 2c             	cmp    $0x2c,%eax
  409016:	74 16                	je     40902e <readtask@plt+0x775e>
  409018:	83 f8 20             	cmp    $0x20,%eax
  40901b:	74 11                	je     40902e <readtask@plt+0x775e>
  40901d:	83 f8 3d             	cmp    $0x3d,%eax
  409020:	74 0c                	je     40902e <readtask@plt+0x775e>
  409022:	48 83 c5 01          	add    $0x1,%rbp
  409026:	0f b6 04 2b          	movzbl (%rbx,%rbp,1),%eax
  40902a:	84 c0                	test   %al,%al
  40902c:	75 e2                	jne    409010 <readtask@plt+0x7740>
  40902e:	83 fd 0f             	cmp    $0xf,%ebp
  409031:	7f 63                	jg     409096 <readtask@plt+0x77c6>
  409033:	4c 63 e5             	movslq %ebp,%r12
  409036:	b9 10 00 00 00       	mov    $0x10,%ecx
  40903b:	48 89 de             	mov    %rbx,%rsi
  40903e:	4c 89 e2             	mov    %r12,%rdx
  409041:	48 89 e7             	mov    %rsp,%rdi
  409044:	e8 a7 87 ff ff       	callq  4017f0 <__strncpy_chk@plt>
  409049:	48 89 e7             	mov    %rsp,%rdi
  40904c:	42 c6 04 24 00       	movb   $0x0,(%rsp,%r12,1)
  409051:	e8 aa c6 ff ff       	callq  405700 <readtask@plt+0x3e30>
  409056:	48 85 c0             	test   %rax,%rax
  409059:	74 3b                	je     409096 <readtask@plt+0x77c6>
  40905b:	44 8b 58 28          	mov    0x28(%rax),%r11d
  40905f:	45 85 db             	test   %r11d,%r11d
  409062:	75 32                	jne    409096 <readtask@plt+0x77c6>
  409064:	31 c0                	xor    %eax,%eax
  409066:	e9 3d ff ff ff       	jmpq   408fa8 <readtask@plt+0x76d8>
  40906b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  409070:	c7 05 0e b7 22 00 01 	movl   $0x1,0x22b70e(%rip)        # 634788 <stderr+0x20400>
  409077:	00 00 00 
  40907a:	b8 01 00 00 00       	mov    $0x1,%eax
  40907f:	e9 34 ff ff ff       	jmpq   408fb8 <readtask@plt+0x76e8>
  409084:	0f 1f 40 00          	nopl   0x0(%rax)
  409088:	80 fa 20             	cmp    $0x20,%dl
  40908b:	0f 85 4c ff ff ff    	jne    408fdd <readtask@plt+0x770d>
  409091:	e9 02 ff ff ff       	jmpq   408f98 <readtask@plt+0x76c8>
  409096:	b8 01 00 00 00       	mov    $0x1,%eax
  40909b:	e9 18 ff ff ff       	jmpq   408fb8 <readtask@plt+0x76e8>
  4090a0:	31 ed                	xor    %ebp,%ebp
  4090a2:	eb 8f                	jmp    409033 <readtask@plt+0x7763>
  4090a4:	e8 47 85 ff ff       	callq  4015f0 <__stack_chk_fail@plt>
  4090a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4090b0:	48 c7 05 c5 b6 22 00 	movq   $0x0,0x22b6c5(%rip)        # 634780 <stderr+0x203f8>
  4090b7:	00 00 00 00 
  4090bb:	48 c7 05 e2 b1 20 00 	movq   $0x0,0x20b1e2(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  4090c2:	00 00 00 00 
  4090c6:	48 c7 05 77 b1 20 00 	movq   $0x0,0x20b177(%rip)        # 614248 <readtask@plt+0x212978>
  4090cd:	00 00 00 00 
  4090d1:	c7 05 ad b6 22 00 00 	movl   $0x0,0x22b6ad(%rip)        # 634788 <stderr+0x20400>
  4090d8:	00 00 00 
  4090db:	c7 05 a7 b6 22 00 00 	movl   $0x0,0x22b6a7(%rip)        # 63478c <stderr+0x20404>
  4090e2:	00 00 00 
  4090e5:	c7 05 a1 b6 22 00 00 	movl   $0x0,0x22b6a1(%rip)        # 634790 <stderr+0x20408>
  4090ec:	00 00 00 
  4090ef:	c3                   	retq   
  4090f0:	55                   	push   %rbp
  4090f1:	ba 01 00 00 00       	mov    $0x1,%edx
  4090f6:	53                   	push   %rbx
  4090f7:	48 83 ec 38          	sub    $0x38,%rsp
  4090fb:	8b 0d 73 b1 20 00    	mov    0x20b173(%rip),%ecx        # 614274 <readtask@plt+0x2129a4>
  409101:	f6 c1 01             	test   $0x1,%cl
  409104:	0f 44 d7             	cmove  %edi,%edx
  409107:	48 8b 3d 72 b6 22 00 	mov    0x22b672(%rip),%rdi        # 634780 <stderr+0x203f8>
  40910e:	31 c0                	xor    %eax,%eax
  409110:	83 e1 20             	and    $0x20,%ecx
  409113:	0f 44 c2             	cmove  %edx,%eax
  409116:	48 85 ff             	test   %rdi,%rdi
  409119:	89 05 75 b6 22 00    	mov    %eax,0x22b675(%rip)        # 634794 <stderr+0x2040c>
  40911f:	74 17                	je     409138 <readtask@plt+0x7868>
  409121:	e8 7a f9 ff ff       	callq  408aa0 <readtask@plt+0x71d0>
  409126:	48 85 c0             	test   %rax,%rax
  409129:	48 89 c3             	mov    %rax,%rbx
  40912c:	74 0a                	je     409138 <readtask@plt+0x7868>
  40912e:	48 83 c4 38          	add    $0x38,%rsp
  409132:	48 89 d8             	mov    %rbx,%rax
  409135:	5b                   	pop    %rbx
  409136:	5d                   	pop    %rbp
  409137:	c3                   	retq   
  409138:	48 83 3d 68 b1 20 00 	cmpq   $0x0,0x20b168(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  40913f:	00 
  409140:	74 0a                	je     40914c <readtask@plt+0x787c>
  409142:	bf 00 0f 41 00       	mov    $0x410f00,%edi
  409147:	e8 14 84 ff ff       	callq  401560 <puts@plt>
  40914c:	48 8b 35 2d b6 22 00 	mov    0x22b62d(%rip),%rsi        # 634780 <stderr+0x203f8>
  409153:	48 8b 05 4e b1 20 00 	mov    0x20b14e(%rip),%rax        # 6142a8 <readtask@plt+0x2129d8>
  40915a:	48 8b 0d e7 b0 20 00 	mov    0x20b0e7(%rip),%rcx        # 614248 <readtask@plt+0x212978>
  409161:	48 85 f6             	test   %rsi,%rsi
  409164:	48 89 f7             	mov    %rsi,%rdi
  409167:	0f 84 83 00 00 00    	je     4091f0 <readtask@plt+0x7920>
  40916d:	0f 1f 00             	nopl   (%rax)
  409170:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  409174:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
  40917b:	00 
  40917c:	48 85 d2             	test   %rdx,%rdx
  40917f:	74 18                	je     409199 <readtask@plt+0x78c9>
  409181:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  409188:	48 89 c3             	mov    %rax,%rbx
  40918b:	48 89 d0             	mov    %rdx,%rax
  40918e:	48 8b 12             	mov    (%rdx),%rdx
  409191:	48 89 18             	mov    %rbx,(%rax)
  409194:	48 85 d2             	test   %rdx,%rdx
  409197:	75 ef                	jne    409188 <readtask@plt+0x78b8>
  409199:	48 8b 3f             	mov    (%rdi),%rdi
  40919c:	48 85 ff             	test   %rdi,%rdi
  40919f:	75 cf                	jne    409170 <readtask@plt+0x78a0>
  4091a1:	48 89 05 00 b1 20 00 	mov    %rax,0x20b100(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  4091a8:	48 8b 05 99 b0 20 00 	mov    0x20b099(%rip),%rax        # 614248 <readtask@plt+0x212978>
  4091af:	48 89 c1             	mov    %rax,%rcx
  4091b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4091b8:	48 8b 56 10          	mov    0x10(%rsi),%rdx
  4091bc:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
  4091c3:	00 
  4091c4:	48 85 d2             	test   %rdx,%rdx
  4091c7:	74 18                	je     4091e1 <readtask@plt+0x7911>
  4091c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4091d0:	48 89 d0             	mov    %rdx,%rax
  4091d3:	48 8b 12             	mov    (%rdx),%rdx
  4091d6:	48 89 08             	mov    %rcx,(%rax)
  4091d9:	48 89 c1             	mov    %rax,%rcx
  4091dc:	48 85 d2             	test   %rdx,%rdx
  4091df:	75 ef                	jne    4091d0 <readtask@plt+0x7900>
  4091e1:	48 8b 36             	mov    (%rsi),%rsi
  4091e4:	48 85 f6             	test   %rsi,%rsi
  4091e7:	75 cf                	jne    4091b8 <readtask@plt+0x78e8>
  4091e9:	48 89 05 58 b0 20 00 	mov    %rax,0x20b058(%rip)        # 614248 <readtask@plt+0x212978>
  4091f0:	48 85 c9             	test   %rcx,%rcx
  4091f3:	74 12                	je     409207 <readtask@plt+0x7937>
  4091f5:	f6 05 29 b0 20 00 10 	testb  $0x10,0x20b029(%rip)        # 614225 <readtask@plt+0x212955>
  4091fc:	bb 48 0d 41 00       	mov    $0x410d48,%ebx
  409201:	0f 85 27 ff ff ff    	jne    40912e <readtask@plt+0x785e>
  409207:	8b 05 a3 b0 20 00    	mov    0x20b0a3(%rip),%eax        # 6142b0 <readtask@plt+0x2129e0>
  40920d:	85 c0                	test   %eax,%eax
  40920f:	0f 85 9a 00 00 00    	jne    4092af <readtask@plt+0x79df>
  409215:	8b 35 85 b0 20 00    	mov    0x20b085(%rip),%esi        # 6142a0 <readtask@plt+0x2129d0>
  40921b:	85 f6                	test   %esi,%esi
  40921d:	0f 85 8c 00 00 00    	jne    4092af <readtask@plt+0x79df>
  409223:	48 83 3d 7d b0 20 00 	cmpq   $0x0,0x20b07d(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  40922a:	00 
  40922b:	74 1c                	je     409249 <readtask@plt+0x7979>
  40922d:	31 db                	xor    %ebx,%ebx
  40922f:	f6 05 ef af 20 00 40 	testb  $0x40,0x20afef(%rip)        # 614225 <readtask@plt+0x212955>
  409236:	bf 08 0e 41 00       	mov    $0x410e08,%edi
  40923b:	48 0f 45 df          	cmovne %rdi,%rbx
  40923f:	48 83 c4 38          	add    $0x38,%rsp
  409243:	48 89 d8             	mov    %rbx,%rax
  409246:	5b                   	pop    %rbx
  409247:	5d                   	pop    %rbp
  409248:	c3                   	retq   
  409249:	bf 3b 0b 41 00       	mov    $0x410b3b,%edi
  40924e:	e8 7d 82 ff ff       	callq  4014d0 <getenv@plt>
  409253:	48 85 c0             	test   %rax,%rax
  409256:	74 51                	je     4092a9 <readtask@plt+0x79d9>
  409258:	80 38 00             	cmpb   $0x0,(%rax)
  40925b:	74 4c                	je     4092a9 <readtask@plt+0x79d9>
  40925d:	f6 05 c1 af 20 00 40 	testb  $0x40,0x20afc1(%rip)        # 614225 <readtask@plt+0x212955>
  409264:	bb 80 0d 41 00       	mov    $0x410d80,%ebx
  409269:	0f 85 bf fe ff ff    	jne    40912e <readtask@plt+0x785e>
  40926f:	48 89 e7             	mov    %rsp,%rdi
  409272:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  409277:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40927e:	00 00 
  409280:	e8 1b f3 ff ff       	callq  4085a0 <readtask@plt+0x6cd0>
  409285:	48 85 c0             	test   %rax,%rax
  409288:	0f 84 64 09 00 00    	je     409bf2 <readtask@plt+0x8322>
  40928e:	48 8b 3d f3 b0 20 00 	mov    0x20b0f3(%rip),%rdi        # 614388 <stderr>
  409295:	48 89 c1             	mov    %rax,%rcx
  409298:	ba 20 0f 41 00       	mov    $0x410f20,%edx
  40929d:	be 01 00 00 00       	mov    $0x1,%esi
  4092a2:	31 c0                	xor    %eax,%eax
  4092a4:	e8 e7 85 ff ff       	callq  401890 <__fprintf_chk@plt>
  4092a9:	8b 05 01 b0 20 00    	mov    0x20b001(%rip),%eax        # 6142b0 <readtask@plt+0x2129e0>
  4092af:	48 83 3d f1 af 20 00 	cmpq   $0x0,0x20aff1(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  4092b6:	00 
  4092b7:	74 25                	je     4092de <readtask@plt+0x7a0e>
  4092b9:	85 c0                	test   %eax,%eax
  4092bb:	bb 04 0b 41 00       	mov    $0x410b04,%ebx
  4092c0:	0f 85 68 fe ff ff    	jne    40912e <readtask@plt+0x785e>
  4092c6:	8b 2d d4 af 20 00    	mov    0x20afd4(%rip),%ebp        # 6142a0 <readtask@plt+0x2129d0>
  4092cc:	bb d0 0d 41 00       	mov    $0x410dd0,%ebx
  4092d1:	85 ed                	test   %ebp,%ebp
  4092d3:	0f 85 55 fe ff ff    	jne    40912e <readtask@plt+0x785e>
  4092d9:	e9 4f ff ff ff       	jmpq   40922d <readtask@plt+0x795d>
  4092de:	83 f8 08             	cmp    $0x8,%eax
  4092e1:	0f 84 19 03 00 00    	je     409600 <readtask@plt+0x7d30>
  4092e7:	0f 87 f4 03 00 00    	ja     4096e1 <readtask@plt+0x7e11>
  4092ed:	83 f8 03             	cmp    $0x3,%eax
  4092f0:	0f 84 61 05 00 00    	je     409857 <readtask@plt+0x7f87>
  4092f6:	0f 87 bf 06 00 00    	ja     4099bb <readtask@plt+0x80eb>
  4092fc:	83 f8 01             	cmp    $0x1,%eax
  4092ff:	90                   	nop
  409300:	0f 84 a9 06 00 00    	je     4099af <readtask@plt+0x80df>
  409306:	48 8b 3d 23 af 20 00 	mov    0x20af23(%rip),%rdi        # 614230 <readtask@plt+0x212960>
  40930d:	0f 87 f4 02 00 00    	ja     409607 <readtask@plt+0x7d37>
  409313:	f6 05 86 af 20 00 04 	testb  $0x4,0x20af86(%rip)        # 6142a0 <readtask@plt+0x2129d0>
  40931a:	74 0d                	je     409329 <readtask@plt+0x7a59>
  40931c:	a8 04                	test   $0x4,%al
  40931e:	bb 18 0d 41 00       	mov    $0x410d18,%ebx
  409323:	0f 84 05 fe ff ff    	je     40912e <readtask@plt+0x785e>
  409329:	44 8b 05 40 af 20 00 	mov    0x20af40(%rip),%r8d        # 614270 <readtask@plt+0x2129a0>
  409330:	31 f6                	xor    %esi,%esi
  409332:	45 85 c0             	test   %r8d,%r8d
  409335:	0f 84 0f 08 00 00    	je     409b4a <readtask@plt+0x827a>
  40933b:	85 c0                	test   %eax,%eax
  40933d:	0f 84 34 09 00 00    	je     409c77 <readtask@plt+0x83a7>
  409343:	bf da b4 40 00       	mov    $0x40b4da,%edi
  409348:	e8 a3 ef ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  40934d:	4c 8b 0d 54 af 20 00 	mov    0x20af54(%rip),%r9        # 6142a8 <readtask@plt+0x2129d8>
  409354:	4c 89 08             	mov    %r9,(%rax)
  409357:	48 89 05 4a af 20 00 	mov    %rax,0x20af4a(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  40935e:	31 f6                	xor    %esi,%esi
  409360:	bf 0c ad 40 00       	mov    $0x40ad0c,%edi
  409365:	e8 86 ef ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  40936a:	f6 05 3f af 20 00 04 	testb  $0x4,0x20af3f(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  409371:	4c 8b 1d 30 af 20 00 	mov    0x20af30(%rip),%r11        # 6142a8 <readtask@plt+0x2129d8>
  409378:	4c 89 18             	mov    %r11,(%rax)
  40937b:	48 89 05 26 af 20 00 	mov    %rax,0x20af26(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409382:	75 1d                	jne    4093a1 <readtask@plt+0x7ad1>
  409384:	31 f6                	xor    %esi,%esi
  409386:	bf ee b3 40 00       	mov    $0x40b3ee,%edi
  40938b:	e8 60 ef ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409390:	48 8b 15 11 af 20 00 	mov    0x20af11(%rip),%rdx        # 6142a8 <readtask@plt+0x2129d8>
  409397:	48 89 10             	mov    %rdx,(%rax)
  40939a:	48 89 05 07 af 20 00 	mov    %rax,0x20af07(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  4093a1:	31 f6                	xor    %esi,%esi
  4093a3:	bf 1c af 40 00       	mov    $0x40af1c,%edi
  4093a8:	e8 43 ef ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  4093ad:	f6 05 fc ae 20 00 01 	testb  $0x1,0x20aefc(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  4093b4:	48 8b 2d ed ae 20 00 	mov    0x20aeed(%rip),%rbp        # 6142a8 <readtask@plt+0x2129d8>
  4093bb:	48 89 28             	mov    %rbp,(%rax)
  4093be:	48 89 05 e3 ae 20 00 	mov    %rax,0x20aee3(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  4093c5:	0f 85 8a 08 00 00    	jne    409c55 <readtask@plt+0x8385>
  4093cb:	8b 05 cf ae 20 00    	mov    0x20aecf(%rip),%eax        # 6142a0 <readtask@plt+0x2129d0>
  4093d1:	a8 80                	test   $0x80,%al
  4093d3:	74 54                	je     409429 <readtask@plt+0x7b59>
  4093d5:	a8 10                	test   $0x10,%al
  4093d7:	75 1d                	jne    4093f6 <readtask@plt+0x7b26>
  4093d9:	31 f6                	xor    %esi,%esi
  4093db:	bf 2d b1 40 00       	mov    $0x40b12d,%edi
  4093e0:	e8 0b ef ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  4093e5:	4c 8b 05 bc ae 20 00 	mov    0x20aebc(%rip),%r8        # 6142a8 <readtask@plt+0x2129d8>
  4093ec:	4c 89 00             	mov    %r8,(%rax)
  4093ef:	48 89 05 b2 ae 20 00 	mov    %rax,0x20aeb2(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  4093f6:	f6 05 b3 ae 20 00 04 	testb  $0x4,0x20aeb3(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  4093fd:	74 0d                	je     40940c <readtask@plt+0x7b3c>
  4093ff:	f6 05 9a ae 20 00 04 	testb  $0x4,0x20ae9a(%rip)        # 6142a0 <readtask@plt+0x2129d0>
  409406:	0f 85 8c 06 00 00    	jne    409a98 <readtask@plt+0x81c8>
  40940c:	31 f6                	xor    %esi,%esi
  40940e:	bf c2 b1 40 00       	mov    $0x40b1c2,%edi
  409413:	e8 d8 ee ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409418:	4c 8b 0d 89 ae 20 00 	mov    0x20ae89(%rip),%r9        # 6142a8 <readtask@plt+0x2129d8>
  40941f:	4c 89 08             	mov    %r9,(%rax)
  409422:	48 89 05 7f ae 20 00 	mov    %rax,0x20ae7f(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409429:	f6 05 80 ae 20 00 04 	testb  $0x4,0x20ae80(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  409430:	0f 85 62 06 00 00    	jne    409a98 <readtask@plt+0x81c8>
  409436:	8b 05 64 ae 20 00    	mov    0x20ae64(%rip),%eax        # 6142a0 <readtask@plt+0x2129d0>
  40943c:	a8 80                	test   $0x80,%al
  40943e:	75 09                	jne    409449 <readtask@plt+0x7b79>
  409440:	f6 05 69 ae 20 00 04 	testb  $0x4,0x20ae69(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  409447:	74 6b                	je     4094b4 <readtask@plt+0x7be4>
  409449:	31 f6                	xor    %esi,%esi
  40944b:	bf 3e b0 40 00       	mov    $0x40b03e,%edi
  409450:	e8 9b ee ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409455:	f6 05 54 ae 20 00 04 	testb  $0x4,0x20ae54(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  40945c:	4c 8b 1d 45 ae 20 00 	mov    0x20ae45(%rip),%r11        # 6142a8 <readtask@plt+0x2129d8>
  409463:	4c 89 18             	mov    %r11,(%rax)
  409466:	48 89 05 3b ae 20 00 	mov    %rax,0x20ae3b(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  40946d:	0f 84 d7 07 00 00    	je     409c4a <readtask@plt+0x837a>
  409473:	31 f6                	xor    %esi,%esi
  409475:	f6 05 24 ae 20 00 04 	testb  $0x4,0x20ae24(%rip)        # 6142a0 <readtask@plt+0x2129d0>
  40947c:	bf c2 b1 40 00       	mov    $0x40b1c2,%edi
  409481:	75 15                	jne    409498 <readtask@plt+0x7bc8>
  409483:	f7 05 e7 ad 20 00 08 	testl  $0x108,0x20ade7(%rip)        # 614274 <readtask@plt+0x2129a4>
  40948a:	01 00 00 
  40948d:	0f 84 9c 07 00 00    	je     409c2f <readtask@plt+0x835f>
  409493:	bf b8 b1 40 00       	mov    $0x40b1b8,%edi
  409498:	e8 53 ee ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  40949d:	48 8b 15 04 ae 20 00 	mov    0x20ae04(%rip),%rdx        # 6142a8 <readtask@plt+0x2129d8>
  4094a4:	48 89 10             	mov    %rdx,(%rax)
  4094a7:	48 89 05 fa ad 20 00 	mov    %rax,0x20adfa(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  4094ae:	8b 05 ec ad 20 00    	mov    0x20adec(%rip),%eax        # 6142a0 <readtask@plt+0x2129d0>
  4094b4:	a8 01                	test   $0x1,%al
  4094b6:	0f 85 97 05 00 00    	jne    409a53 <readtask@plt+0x8183>
  4094bc:	8b 05 ee ad 20 00    	mov    0x20adee(%rip),%eax        # 6142b0 <readtask@plt+0x2129e0>
  4094c2:	a8 04                	test   $0x4,%al
  4094c4:	0f 85 ed 06 00 00    	jne    409bb7 <readtask@plt+0x82e7>
  4094ca:	f6 05 53 ad 20 00 10 	testb  $0x10,0x20ad53(%rip)        # 614224 <readtask@plt+0x212954>
  4094d1:	74 27                	je     4094fa <readtask@plt+0x7c2a>
  4094d3:	a8 01                	test   $0x1,%al
  4094d5:	74 23                	je     4094fa <readtask@plt+0x7c2a>
  4094d7:	31 f6                	xor    %esi,%esi
  4094d9:	bf 06 b0 40 00       	mov    $0x40b006,%edi
  4094de:	e8 0d ee ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  4094e3:	4c 8b 0d be ad 20 00 	mov    0x20adbe(%rip),%r9        # 6142a8 <readtask@plt+0x2129d8>
  4094ea:	4c 89 08             	mov    %r9,(%rax)
  4094ed:	48 89 05 b4 ad 20 00 	mov    %rax,0x20adb4(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  4094f4:	8b 05 b6 ad 20 00    	mov    0x20adb6(%rip),%eax        # 6142b0 <readtask@plt+0x2129e0>
  4094fa:	a8 05                	test   $0x5,%al
  4094fc:	8b 05 9e ad 20 00    	mov    0x20ad9e(%rip),%eax        # 6142a0 <readtask@plt+0x2129d0>
  409502:	74 27                	je     40952b <readtask@plt+0x7c5b>
  409504:	a8 01                	test   $0x1,%al
  409506:	75 23                	jne    40952b <readtask@plt+0x7c5b>
  409508:	31 f6                	xor    %esi,%esi
  40950a:	bf 28 ab 40 00       	mov    $0x40ab28,%edi
  40950f:	e8 dc ed ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409514:	4c 8b 15 8d ad 20 00 	mov    0x20ad8d(%rip),%r10        # 6142a8 <readtask@plt+0x2129d8>
  40951b:	4c 89 10             	mov    %r10,(%rax)
  40951e:	48 89 05 83 ad 20 00 	mov    %rax,0x20ad83(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409525:	8b 05 75 ad 20 00    	mov    0x20ad75(%rip),%eax        # 6142a0 <readtask@plt+0x2129d0>
  40952b:	a8 10                	test   $0x10,%al
  40952d:	0f 85 a0 08 00 00    	jne    409dd3 <readtask@plt+0x8503>
  409533:	f6 05 ea ac 20 00 10 	testb  $0x10,0x20acea(%rip)        # 614224 <readtask@plt+0x212954>
  40953a:	0f 85 71 08 00 00    	jne    409db1 <readtask@plt+0x84e1>
  409540:	f6 05 59 ad 20 00 02 	testb  $0x2,0x20ad59(%rip)        # 6142a0 <readtask@plt+0x2129d0>
  409547:	0f 85 25 08 00 00    	jne    409d72 <readtask@plt+0x84a2>
  40954d:	f6 05 5c ad 20 00 05 	testb  $0x5,0x20ad5c(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  409554:	0f 85 f6 07 00 00    	jne    409d50 <readtask@plt+0x8480>
  40955a:	f6 05 c3 ac 20 00 08 	testb  $0x8,0x20acc3(%rip)        # 614224 <readtask@plt+0x212954>
  409561:	0f 85 c7 07 00 00    	jne    409d2e <readtask@plt+0x845e>
  409567:	31 f6                	xor    %esi,%esi
  409569:	bf d7 9f 40 00       	mov    $0x409fd7,%edi
  40956e:	e8 7d ed ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409573:	48 8b 3d 2e ad 20 00 	mov    0x20ad2e(%rip),%rdi        # 6142a8 <readtask@plt+0x2129d8>
  40957a:	48 89 38             	mov    %rdi,(%rax)
  40957d:	48 89 05 24 ad 20 00 	mov    %rax,0x20ad24(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409584:	8b 05 26 ad 20 00    	mov    0x20ad26(%rip),%eax        # 6142b0 <readtask@plt+0x2129e0>
  40958a:	a8 01                	test   $0x1,%al
  40958c:	0f 84 72 07 00 00    	je     409d04 <readtask@plt+0x8434>
  409592:	31 f6                	xor    %esi,%esi
  409594:	f6 05 da ac 20 00 02 	testb  $0x2,0x20acda(%rip)        # 614275 <readtask@plt+0x2129a5>
  40959b:	0f 84 43 07 00 00    	je     409ce4 <readtask@plt+0x8414>
  4095a1:	bf 14 ae 40 00       	mov    $0x40ae14,%edi
  4095a6:	e8 45 ed ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  4095ab:	4c 8b 05 f6 ac 20 00 	mov    0x20acf6(%rip),%r8        # 6142a8 <readtask@plt+0x2129d8>
  4095b2:	4c 89 00             	mov    %r8,(%rax)
  4095b5:	48 89 05 ec ac 20 00 	mov    %rax,0x20acec(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  4095bc:	f6 05 ed ac 20 00 04 	testb  $0x4,0x20aced(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  4095c3:	0f 85 ce 06 00 00    	jne    409c97 <readtask@plt+0x83c7>
  4095c9:	8b 05 d1 ac 20 00    	mov    0x20acd1(%rip),%eax        # 6142a0 <readtask@plt+0x2129d0>
  4095cf:	31 db                	xor    %ebx,%ebx
  4095d1:	a8 20                	test   $0x20,%al
  4095d3:	0f 84 55 fb ff ff    	je     40912e <readtask@plt+0x785e>
  4095d9:	31 f6                	xor    %esi,%esi
  4095db:	bf e6 ae 40 00       	mov    $0x40aee6,%edi
  4095e0:	e8 0b ed ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  4095e5:	4c 8b 1d bc ac 20 00 	mov    0x20acbc(%rip),%r11        # 6142a8 <readtask@plt+0x2129d8>
  4095ec:	4c 89 18             	mov    %r11,(%rax)
  4095ef:	48 89 05 b2 ac 20 00 	mov    %rax,0x20acb2(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  4095f6:	e9 33 fb ff ff       	jmpq   40912e <readtask@plt+0x785e>
  4095fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  409600:	48 8b 3d e9 ac 20 00 	mov    0x20ace9(%rip),%rdi        # 6142f0 <readtask@plt+0x212a20>
  409607:	48 85 ff             	test   %rdi,%rdi
  40960a:	0f 84 03 fd ff ff    	je     409313 <readtask@plt+0x7a43>
  409610:	31 f6                	xor    %esi,%esi
  409612:	e8 d9 ec ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409617:	48 85 c0             	test   %rax,%rax
  40961a:	48 8b 0d 87 ac 20 00 	mov    0x20ac87(%rip),%rcx        # 6142a8 <readtask@plt+0x2129d8>
  409621:	75 0b                	jne    40962e <readtask@plt+0x7d5e>
  409623:	eb 1b                	jmp    409640 <readtask@plt+0x7d70>
  409625:	0f 1f 00             	nopl   (%rax)
  409628:	48 89 c1             	mov    %rax,%rcx
  40962b:	48 89 d0             	mov    %rdx,%rax
  40962e:	48 8b 10             	mov    (%rax),%rdx
  409631:	48 89 08             	mov    %rcx,(%rax)
  409634:	48 85 d2             	test   %rdx,%rdx
  409637:	75 ef                	jne    409628 <readtask@plt+0x7d58>
  409639:	48 89 05 68 ac 20 00 	mov    %rax,0x20ac68(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409640:	8b 05 5a ac 20 00    	mov    0x20ac5a(%rip),%eax        # 6142a0 <readtask@plt+0x2129d0>
  409646:	a8 02                	test   $0x2,%al
  409648:	0f 85 9e 01 00 00    	jne    4097ec <readtask@plt+0x7f1c>
  40964e:	a8 04                	test   $0x4,%al
  409650:	0f 85 5a 01 00 00    	jne    4097b0 <readtask@plt+0x7ee0>
  409656:	a8 01                	test   $0x1,%al
  409658:	0f 85 bd 00 00 00    	jne    40971b <readtask@plt+0x7e4b>
  40965e:	8b 05 c0 ab 20 00    	mov    0x20abc0(%rip),%eax        # 614224 <readtask@plt+0x212954>
  409664:	a8 08                	test   $0x8,%al
  409666:	0f 85 92 02 00 00    	jne    4098fe <readtask@plt+0x802e>
  40966c:	a8 10                	test   $0x10,%al
  40966e:	0f 85 d8 02 00 00    	jne    40994c <readtask@plt+0x807c>
  409674:	f6 05 25 ac 20 00 20 	testb  $0x20,0x20ac25(%rip)        # 6142a0 <readtask@plt+0x2129d0>
  40967b:	0f 85 0c 02 00 00    	jne    40988d <readtask@plt+0x7fbd>
  409681:	8b 05 ed ab 20 00    	mov    0x20abed(%rip),%eax        # 614274 <readtask@plt+0x2129a4>
  409687:	f6 c4 01             	test   $0x1,%ah
  40968a:	74 0d                	je     409699 <readtask@plt+0x7dc9>
  40968c:	f6 05 1d ac 20 00 04 	testb  $0x4,0x20ac1d(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  409693:	0f 85 c8 01 00 00    	jne    409861 <readtask@plt+0x7f91>
  409699:	31 db                	xor    %ebx,%ebx
  40969b:	f6 c4 02             	test   $0x2,%ah
  40969e:	0f 84 8a fa ff ff    	je     40912e <readtask@plt+0x785e>
  4096a4:	f6 05 05 ac 20 00 01 	testb  $0x1,0x20ac05(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  4096ab:	0f 84 7d fa ff ff    	je     40912e <readtask@plt+0x785e>
  4096b1:	31 f6                	xor    %esi,%esi
  4096b3:	bf 14 ae 40 00       	mov    $0x40ae14,%edi
  4096b8:	e8 33 ec ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  4096bd:	bf 0f ae 40 00       	mov    $0x40ae0f,%edi
  4096c2:	48 89 c6             	mov    %rax,%rsi
  4096c5:	e8 16 f7 ff ff       	callq  408de0 <readtask@plt+0x7510>
  4096ca:	85 c0                	test   %eax,%eax
  4096cc:	0f 84 5c fa ff ff    	je     40912e <readtask@plt+0x785e>
  4096d2:	bf 0f ae 40 00       	mov    $0x40ae0f,%edi
  4096d7:	e8 a4 f7 ff ff       	callq  408e80 <readtask@plt+0x75b0>
  4096dc:	e9 4d fa ff ff       	jmpq   40912e <readtask@plt+0x785e>
  4096e1:	3d 80 00 00 00       	cmp    $0x80,%eax
  4096e6:	0f 84 06 02 00 00    	je     4098f2 <readtask@plt+0x8022>
  4096ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4096f0:	0f 87 d1 01 00 00    	ja     4098c7 <readtask@plt+0x7ff7>
  4096f6:	83 f8 20             	cmp    $0x20,%eax
  4096f9:	0f 84 bc 01 00 00    	je     4098bb <readtask@plt+0x7feb>
  4096ff:	83 f8 40             	cmp    $0x40,%eax
  409702:	0f 84 a7 01 00 00    	je     4098af <readtask@plt+0x7fdf>
  409708:	83 f8 10             	cmp    $0x10,%eax
  40970b:	0f 84 2f 02 00 00    	je     409940 <readtask@plt+0x8070>
  409711:	bb 04 0b 41 00       	mov    $0x410b04,%ebx
  409716:	e9 13 fa ff ff       	jmpq   40912e <readtask@plt+0x785e>
  40971b:	bf 38 ac 40 00       	mov    $0x40ac38,%edi
  409720:	bb 68 0e 41 00       	mov    $0x410e68,%ebx
  409725:	e8 56 f7 ff ff       	callq  408e80 <readtask@plt+0x75b0>
  40972a:	bf 39 ac 40 00       	mov    $0x40ac39,%edi
  40972f:	e8 4c f7 ff ff       	callq  408e80 <readtask@plt+0x75b0>
  409734:	bf 48 b3 40 00       	mov    $0x40b348,%edi
  409739:	e8 42 f7 ff ff       	callq  408e80 <readtask@plt+0x75b0>
  40973e:	bf c6 ae 40 00       	mov    $0x40aec6,%edi
  409743:	e8 38 f7 ff ff       	callq  408e80 <readtask@plt+0x75b0>
  409748:	bf f1 af 40 00       	mov    $0x40aff1,%edi
  40974d:	e8 2e f7 ff ff       	callq  408e80 <readtask@plt+0x75b0>
  409752:	31 f6                	xor    %esi,%esi
  409754:	bf 22 ad 40 00       	mov    $0x40ad22,%edi
  409759:	e8 92 eb ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  40975e:	bf ba ae 40 00       	mov    $0x40aeba,%edi
  409763:	48 89 c6             	mov    %rax,%rsi
  409766:	e8 75 f6 ff ff       	callq  408de0 <readtask@plt+0x7510>
  40976b:	85 c0                	test   %eax,%eax
  40976d:	0f 84 bb f9 ff ff    	je     40912e <readtask@plt+0x785e>
  409773:	bf ba ae 40 00       	mov    $0x40aeba,%edi
  409778:	bb 2e 0b 41 00       	mov    $0x410b2e,%ebx
  40977d:	e8 fe f6 ff ff       	callq  408e80 <readtask@plt+0x75b0>
  409782:	31 f6                	xor    %esi,%esi
  409784:	bf 39 b0 40 00       	mov    $0x40b039,%edi
  409789:	e8 62 eb ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  40978e:	bf 28 ad 40 00       	mov    $0x40ad28,%edi
  409793:	48 89 c6             	mov    %rax,%rsi
  409796:	e8 45 f6 ff ff       	callq  408de0 <readtask@plt+0x7510>
  40979b:	85 c0                	test   %eax,%eax
  40979d:	0f 85 bb fe ff ff    	jne    40965e <readtask@plt+0x7d8e>
  4097a3:	e9 86 f9 ff ff       	jmpq   40912e <readtask@plt+0x785e>
  4097a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4097af:	00 
  4097b0:	bf 5d ab 40 00       	mov    $0x40ab5d,%edi
  4097b5:	e8 c6 f6 ff ff       	callq  408e80 <readtask@plt+0x75b0>
  4097ba:	31 f6                	xor    %esi,%esi
  4097bc:	bf c2 b1 40 00       	mov    $0x40b1c2,%edi
  4097c1:	e8 2a eb ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  4097c6:	bf 66 b0 40 00       	mov    $0x40b066,%edi
  4097cb:	48 89 c6             	mov    %rax,%rsi
  4097ce:	e8 0d f6 ff ff       	callq  408de0 <readtask@plt+0x7510>
  4097d3:	85 c0                	test   %eax,%eax
  4097d5:	74 0a                	je     4097e1 <readtask@plt+0x7f11>
  4097d7:	bf 66 b0 40 00       	mov    $0x40b066,%edi
  4097dc:	e8 9f f6 ff ff       	callq  408e80 <readtask@plt+0x75b0>
  4097e1:	8b 05 b9 aa 20 00    	mov    0x20aab9(%rip),%eax        # 6142a0 <readtask@plt+0x2129d0>
  4097e7:	e9 6a fe ff ff       	jmpq   409656 <readtask@plt+0x7d86>
  4097ec:	31 f6                	xor    %esi,%esi
  4097ee:	bf ee b2 40 00       	mov    $0x40b2ee,%edi
  4097f3:	e8 f8 ea ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  4097f8:	bf ad b0 40 00       	mov    $0x40b0ad,%edi
  4097fd:	48 89 c6             	mov    %rax,%rsi
  409800:	48 89 c3             	mov    %rax,%rbx
  409803:	e8 d8 f5 ff ff       	callq  408de0 <readtask@plt+0x7510>
  409808:	85 c0                	test   %eax,%eax
  40980a:	75 1a                	jne    409826 <readtask@plt+0x7f56>
  40980c:	48 89 de             	mov    %rbx,%rsi
  40980f:	bf ae b0 40 00       	mov    $0x40b0ae,%edi
  409814:	bb 38 0e 41 00       	mov    $0x410e38,%ebx
  409819:	e8 c2 f5 ff ff       	callq  408de0 <readtask@plt+0x7510>
  40981e:	85 c0                	test   %eax,%eax
  409820:	0f 84 08 f9 ff ff    	je     40912e <readtask@plt+0x785e>
  409826:	31 f6                	xor    %esi,%esi
  409828:	bf 19 b3 40 00       	mov    $0x40b319,%edi
  40982d:	bb 20 0b 41 00       	mov    $0x410b20,%ebx
  409832:	e8 b9 ea ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409837:	bf f4 b2 40 00       	mov    $0x40b2f4,%edi
  40983c:	48 89 c6             	mov    %rax,%rsi
  40983f:	e8 9c f5 ff ff       	callq  408de0 <readtask@plt+0x7510>
  409844:	85 c0                	test   %eax,%eax
  409846:	0f 84 e2 f8 ff ff    	je     40912e <readtask@plt+0x785e>
  40984c:	8b 05 4e aa 20 00    	mov    0x20aa4e(%rip),%eax        # 6142a0 <readtask@plt+0x2129d0>
  409852:	e9 f7 fd ff ff       	jmpq   40964e <readtask@plt+0x7d7e>
  409857:	bf 09 b6 40 00       	mov    $0x40b609,%edi
  40985c:	e9 af fd ff ff       	jmpq   409610 <readtask@plt+0x7d40>
  409861:	31 f6                	xor    %esi,%esi
  409863:	bf b8 b1 40 00       	mov    $0x40b1b8,%edi
  409868:	e8 83 ea ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  40986d:	bf 66 b0 40 00       	mov    $0x40b066,%edi
  409872:	48 89 c6             	mov    %rax,%rsi
  409875:	e8 66 f5 ff ff       	callq  408de0 <readtask@plt+0x7510>
  40987a:	85 c0                	test   %eax,%eax
  40987c:	0f 85 09 03 00 00    	jne    409b8b <readtask@plt+0x82bb>
  409882:	8b 05 ec a9 20 00    	mov    0x20a9ec(%rip),%eax        # 614274 <readtask@plt+0x2129a4>
  409888:	e9 0c fe ff ff       	jmpq   409699 <readtask@plt+0x7dc9>
  40988d:	31 f6                	xor    %esi,%esi
  40988f:	bf e6 ae 40 00       	mov    $0x40aee6,%edi
  409894:	e8 57 ea ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409899:	48 8b 15 08 aa 20 00 	mov    0x20aa08(%rip),%rdx        # 6142a8 <readtask@plt+0x2129d8>
  4098a0:	48 89 10             	mov    %rdx,(%rax)
  4098a3:	48 89 05 fe a9 20 00 	mov    %rax,0x20a9fe(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  4098aa:	e9 d2 fd ff ff       	jmpq   409681 <readtask@plt+0x7db1>
  4098af:	48 8b 3d 22 aa 20 00 	mov    0x20aa22(%rip),%rdi        # 6142d8 <readtask@plt+0x212a08>
  4098b6:	e9 4c fd ff ff       	jmpq   409607 <readtask@plt+0x7d37>
  4098bb:	48 8b 3d 1e aa 20 00 	mov    0x20aa1e(%rip),%rdi        # 6142e0 <readtask@plt+0x212a10>
  4098c2:	e9 40 fd ff ff       	jmpq   409607 <readtask@plt+0x7d37>
  4098c7:	3d 00 02 00 00       	cmp    $0x200,%eax
  4098cc:	0f 84 d3 00 00 00    	je     4099a5 <readtask@plt+0x80d5>
  4098d2:	3d 00 04 00 00       	cmp    $0x400,%eax
  4098d7:	0f 84 be 00 00 00    	je     40999b <readtask@plt+0x80cb>
  4098dd:	3d 00 01 00 00       	cmp    $0x100,%eax
  4098e2:	0f 85 29 fe ff ff    	jne    409711 <readtask@plt+0x7e41>
  4098e8:	bf de b5 40 00       	mov    $0x40b5de,%edi
  4098ed:	e9 1e fd ff ff       	jmpq   409610 <readtask@plt+0x7d40>
  4098f2:	48 8b 3d d7 a9 20 00 	mov    0x20a9d7(%rip),%rdi        # 6142d0 <readtask@plt+0x212a00>
  4098f9:	e9 09 fd ff ff       	jmpq   409607 <readtask@plt+0x7d37>
  4098fe:	31 f6                	xor    %esi,%esi
  409900:	bf 1e b2 40 00       	mov    $0x40b21e,%edi
  409905:	e8 e6 e9 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  40990a:	bf ae b0 40 00       	mov    $0x40b0ae,%edi
  40990f:	48 89 c6             	mov    %rax,%rsi
  409912:	e8 c9 f4 ff ff       	callq  408de0 <readtask@plt+0x7510>
  409917:	85 c0                	test   %eax,%eax
  409919:	8b 05 05 a9 20 00    	mov    0x20a905(%rip),%eax        # 614224 <readtask@plt+0x212954>
  40991f:	0f 85 47 fd ff ff    	jne    40966c <readtask@plt+0x7d9c>
  409925:	f6 c4 40             	test   $0x40,%ah
  409928:	bb 90 0e 41 00       	mov    $0x410e90,%ebx
  40992d:	0f 84 39 fd ff ff    	je     40966c <readtask@plt+0x7d9c>
  409933:	e9 f6 f7 ff ff       	jmpq   40912e <readtask@plt+0x785e>
  409938:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40993f:	00 
  409940:	48 8b 3d a1 a9 20 00 	mov    0x20a9a1(%rip),%rdi        # 6142e8 <readtask@plt+0x212a18>
  409947:	e9 bb fc ff ff       	jmpq   409607 <readtask@plt+0x7d37>
  40994c:	31 f6                	xor    %esi,%esi
  40994e:	bf 07 b0 40 00       	mov    $0x40b007,%edi
  409953:	e8 98 e9 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409958:	bf 1e b3 40 00       	mov    $0x40b31e,%edi
  40995d:	48 89 c6             	mov    %rax,%rsi
  409960:	48 89 c3             	mov    %rax,%rbx
  409963:	e8 78 f4 ff ff       	callq  408de0 <readtask@plt+0x7510>
  409968:	85 c0                	test   %eax,%eax
  40996a:	75 11                	jne    40997d <readtask@plt+0x80ad>
  40996c:	48 89 de             	mov    %rbx,%rsi
  40996f:	bf 0a b3 40 00       	mov    $0x40b30a,%edi
  409974:	e8 67 f4 ff ff       	callq  408de0 <readtask@plt+0x7510>
  409979:	85 c0                	test   %eax,%eax
  40997b:	74 6f                	je     4099ec <readtask@plt+0x811c>
  40997d:	31 f6                	xor    %esi,%esi
  40997f:	bf 06 b0 40 00       	mov    $0x40b006,%edi
  409984:	e8 67 e9 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409989:	bf 38 ac 40 00       	mov    $0x40ac38,%edi
  40998e:	48 89 c6             	mov    %rax,%rsi
  409991:	e8 4a f4 ff ff       	callq  408de0 <readtask@plt+0x7510>
  409996:	e9 d9 fc ff ff       	jmpq   409674 <readtask@plt+0x7da4>
  40999b:	bf 8a b5 40 00       	mov    $0x40b58a,%edi
  4099a0:	e9 6b fc ff ff       	jmpq   409610 <readtask@plt+0x7d40>
  4099a5:	bf e3 b5 40 00       	mov    $0x40b5e3,%edi
  4099aa:	e9 61 fc ff ff       	jmpq   409610 <readtask@plt+0x7d40>
  4099af:	48 8b 3d 8a a8 20 00 	mov    0x20a88a(%rip),%rdi        # 614240 <readtask@plt+0x212970>
  4099b6:	e9 4c fc ff ff       	jmpq   409607 <readtask@plt+0x7d37>
  4099bb:	83 f8 05             	cmp    $0x5,%eax
  4099be:	74 20                	je     4099e0 <readtask@plt+0x8110>
  4099c0:	48 8b 3d 61 a8 20 00 	mov    0x20a861(%rip),%rdi        # 614228 <readtask@plt+0x212958>
  4099c7:	0f 82 3a fc ff ff    	jb     409607 <readtask@plt+0x7d37>
  4099cd:	83 f8 06             	cmp    $0x6,%eax
  4099d0:	0f 85 3b fd ff ff    	jne    409711 <readtask@plt+0x7e41>
  4099d6:	bf 0f b6 40 00       	mov    $0x40b60f,%edi
  4099db:	e9 30 fc ff ff       	jmpq   409610 <readtask@plt+0x7d40>
  4099e0:	48 8b 3d 51 a8 20 00 	mov    0x20a851(%rip),%rdi        # 614238 <readtask@plt+0x212968>
  4099e7:	e9 1b fc ff ff       	jmpq   409607 <readtask@plt+0x7d37>
  4099ec:	48 89 de             	mov    %rbx,%rsi
  4099ef:	bf f4 b2 40 00       	mov    $0x40b2f4,%edi
  4099f4:	e8 e7 f3 ff ff       	callq  408de0 <readtask@plt+0x7510>
  4099f9:	85 c0                	test   %eax,%eax
  4099fb:	75 80                	jne    40997d <readtask@plt+0x80ad>
  4099fd:	48 89 de             	mov    %rbx,%rsi
  409a00:	bf 93 b0 40 00       	mov    $0x40b093,%edi
  409a05:	e8 d6 f3 ff ff       	callq  408de0 <readtask@plt+0x7510>
  409a0a:	85 c0                	test   %eax,%eax
  409a0c:	0f 85 6b ff ff ff    	jne    40997d <readtask@plt+0x80ad>
  409a12:	48 89 de             	mov    %rbx,%rsi
  409a15:	bf ad b0 40 00       	mov    $0x40b0ad,%edi
  409a1a:	e8 c1 f3 ff ff       	callq  408de0 <readtask@plt+0x7510>
  409a1f:	85 c0                	test   %eax,%eax
  409a21:	0f 85 56 ff ff ff    	jne    40997d <readtask@plt+0x80ad>
  409a27:	48 89 de             	mov    %rbx,%rsi
  409a2a:	bf ae b0 40 00       	mov    $0x40b0ae,%edi
  409a2f:	e8 ac f3 ff ff       	callq  408de0 <readtask@plt+0x7510>
  409a34:	85 c0                	test   %eax,%eax
  409a36:	0f 85 41 ff ff ff    	jne    40997d <readtask@plt+0x80ad>
  409a3c:	f6 05 e2 a7 20 00 40 	testb  $0x40,0x20a7e2(%rip)        # 614225 <readtask@plt+0x212955>
  409a43:	bb c0 0e 41 00       	mov    $0x410ec0,%ebx
  409a48:	0f 84 2f ff ff ff    	je     40997d <readtask@plt+0x80ad>
  409a4e:	e9 db f6 ff ff       	jmpq   40912e <readtask@plt+0x785e>
  409a53:	31 f6                	xor    %esi,%esi
  409a55:	bf 39 b0 40 00       	mov    $0x40b039,%edi
  409a5a:	e8 91 e8 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409a5f:	48 8b 35 42 a8 20 00 	mov    0x20a842(%rip),%rsi        # 6142a8 <readtask@plt+0x2129d8>
  409a66:	bf 22 ad 40 00       	mov    $0x40ad22,%edi
  409a6b:	48 89 30             	mov    %rsi,(%rax)
  409a6e:	48 89 05 33 a8 20 00 	mov    %rax,0x20a833(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409a75:	31 f6                	xor    %esi,%esi
  409a77:	e8 74 e8 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409a7c:	4c 8b 05 25 a8 20 00 	mov    0x20a825(%rip),%r8        # 6142a8 <readtask@plt+0x2129d8>
  409a83:	4c 89 00             	mov    %r8,(%rax)
  409a86:	48 89 05 1b a8 20 00 	mov    %rax,0x20a81b(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409a8d:	8b 05 1d a8 20 00    	mov    0x20a81d(%rip),%eax        # 6142b0 <readtask@plt+0x2129e0>
  409a93:	e9 32 fa ff ff       	jmpq   4094ca <readtask@plt+0x7bfa>
  409a98:	31 f6                	xor    %esi,%esi
  409a9a:	bf e1 af 40 00       	mov    $0x40afe1,%edi
  409a9f:	e8 4c e8 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409aa4:	f6 05 05 a8 20 00 04 	testb  $0x4,0x20a805(%rip)        # 6142b0 <readtask@plt+0x2129e0>
  409aab:	4c 8b 15 f6 a7 20 00 	mov    0x20a7f6(%rip),%r10        # 6142a8 <readtask@plt+0x2129d8>
  409ab2:	4c 89 10             	mov    %r10,(%rax)
  409ab5:	48 89 05 ec a7 20 00 	mov    %rax,0x20a7ec(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409abc:	8b 05 de a7 20 00    	mov    0x20a7de(%rip),%eax        # 6142a0 <readtask@plt+0x2129d0>
  409ac2:	0f 84 74 f9 ff ff    	je     40943c <readtask@plt+0x7b6c>
  409ac8:	a8 04                	test   $0x4,%al
  409aca:	0f 85 6c f9 ff ff    	jne    40943c <readtask@plt+0x7b6c>
  409ad0:	f6 05 9d a7 20 00 08 	testb  $0x8,0x20a79d(%rip)        # 614274 <readtask@plt+0x2129a4>
  409ad7:	0f 84 5f f9 ff ff    	je     40943c <readtask@plt+0x7b6c>
  409add:	31 f6                	xor    %esi,%esi
  409adf:	bf be b1 40 00       	mov    $0x40b1be,%edi
  409ae4:	e8 07 e8 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409ae9:	48 89 c5             	mov    %rax,%rbp
  409aec:	48 8b 05 b5 a7 20 00 	mov    0x20a7b5(%rip),%rax        # 6142a8 <readtask@plt+0x2129d8>
  409af3:	bf 30 00 00 00       	mov    $0x30,%edi
  409af8:	48 89 45 00          	mov    %rax,0x0(%rbp)
  409afc:	e8 bf 7c ff ff       	callq  4017c0 <malloc@plt>
  409b01:	bf 02 00 00 00       	mov    $0x2,%edi
  409b06:	48 89 c3             	mov    %rax,%rbx
  409b09:	c7 40 18 01 00 00 00 	movl   $0x1,0x18(%rax)
  409b10:	e8 ab 7c ff ff       	callq  4017c0 <malloc@plt>
  409b15:	48 89 43 08          	mov    %rax,0x8(%rbx)
  409b19:	66 c7 00 3a 00       	movw   $0x3a,(%rax)
  409b1e:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  409b25:	00 
  409b26:	c7 43 1c 00 00 00 00 	movl   $0x0,0x1c(%rbx)
  409b2d:	c7 43 20 03 00 00 00 	movl   $0x3,0x20(%rbx)
  409b34:	c7 43 24 00 00 00 40 	movl   $0x40000000,0x24(%rbx)
  409b3b:	48 89 2b             	mov    %rbp,(%rbx)
  409b3e:	48 89 1d 63 a7 20 00 	mov    %rbx,0x20a763(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409b45:	e9 ec f8 ff ff       	jmpq   409436 <readtask@plt+0x7b66>
  409b4a:	a8 01                	test   $0x1,%al
  409b4c:	74 4c                	je     409b9a <readtask@plt+0x82ca>
  409b4e:	bf da b4 40 00       	mov    $0x40b4da,%edi
  409b53:	e8 98 e7 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409b58:	48 8b 0d 49 a7 20 00 	mov    0x20a749(%rip),%rcx        # 6142a8 <readtask@plt+0x2129d8>
  409b5f:	48 89 08             	mov    %rcx,(%rax)
  409b62:	48 89 05 3f a7 20 00 	mov    %rax,0x20a73f(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409b69:	31 f6                	xor    %esi,%esi
  409b6b:	bf b5 9f 40 00       	mov    $0x409fb5,%edi
  409b70:	e8 7b e7 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409b75:	48 8b 35 2c a7 20 00 	mov    0x20a72c(%rip),%rsi        # 6142a8 <readtask@plt+0x2129d8>
  409b7c:	48 89 30             	mov    %rsi,(%rax)
  409b7f:	48 89 05 22 a7 20 00 	mov    %rax,0x20a722(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409b86:	e9 16 f8 ff ff       	jmpq   4093a1 <readtask@plt+0x7ad1>
  409b8b:	bf 66 b0 40 00       	mov    $0x40b066,%edi
  409b90:	e8 eb f2 ff ff       	callq  408e80 <readtask@plt+0x75b0>
  409b95:	e9 e8 fc ff ff       	jmpq   409882 <readtask@plt+0x7fb2>
  409b9a:	bf 4b b3 40 00       	mov    $0x40b34b,%edi
  409b9f:	e8 4c e7 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409ba4:	48 8b 1d fd a6 20 00 	mov    0x20a6fd(%rip),%rbx        # 6142a8 <readtask@plt+0x2129d8>
  409bab:	48 89 18             	mov    %rbx,(%rax)
  409bae:	48 89 05 f3 a6 20 00 	mov    %rax,0x20a6f3(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409bb5:	eb b2                	jmp    409b69 <readtask@plt+0x8299>
  409bb7:	31 f6                	xor    %esi,%esi
  409bb9:	bf ee af 40 00       	mov    $0x40afee,%edi
  409bbe:	e8 2d e7 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409bc3:	31 f6                	xor    %esi,%esi
  409bc5:	f6 05 a8 a6 20 00 08 	testb  $0x8,0x20a6a8(%rip)        # 614274 <readtask@plt+0x2129a4>
  409bcc:	48 8b 3d d5 a6 20 00 	mov    0x20a6d5(%rip),%rdi        # 6142a8 <readtask@plt+0x2129d8>
  409bd3:	48 89 38             	mov    %rdi,(%rax)
  409bd6:	48 89 05 cb a6 20 00 	mov    %rax,0x20a6cb(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409bdd:	bf e2 b0 40 00       	mov    $0x40b0e2,%edi
  409be2:	0f 85 8f fe ff ff    	jne    409a77 <readtask@plt+0x81a7>
  409be8:	bf 38 b0 40 00       	mov    $0x40b038,%edi
  409bed:	e9 85 fe ff ff       	jmpq   409a77 <readtask@plt+0x81a7>
  409bf2:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  409bf7:	31 db                	xor    %ebx,%ebx
  409bf9:	48 8b 15 a8 a6 20 00 	mov    0x20a6a8(%rip),%rdx        # 6142a8 <readtask@plt+0x2129d8>
  409c00:	48 85 c0             	test   %rax,%rax
  409c03:	75 11                	jne    409c16 <readtask@plt+0x8346>
  409c05:	e9 24 f5 ff ff       	jmpq   40912e <readtask@plt+0x785e>
  409c0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  409c10:	48 89 c2             	mov    %rax,%rdx
  409c13:	48 89 c8             	mov    %rcx,%rax
  409c16:	48 8b 08             	mov    (%rax),%rcx
  409c19:	48 89 10             	mov    %rdx,(%rax)
  409c1c:	48 85 c9             	test   %rcx,%rcx
  409c1f:	75 ef                	jne    409c10 <readtask@plt+0x8340>
  409c21:	48 89 05 80 a6 20 00 	mov    %rax,0x20a680(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409c28:	31 db                	xor    %ebx,%ebx
  409c2a:	e9 ff f4 ff ff       	jmpq   40912e <readtask@plt+0x785e>
  409c2f:	bf ba ac 40 00       	mov    $0x40acba,%edi
  409c34:	e8 b7 e6 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409c39:	48 8b 0d 68 a6 20 00 	mov    0x20a668(%rip),%rcx        # 6142a8 <readtask@plt+0x2129d8>
  409c40:	48 89 08             	mov    %rcx,(%rax)
  409c43:	48 89 05 5e a6 20 00 	mov    %rax,0x20a65e(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409c4a:	8b 05 50 a6 20 00    	mov    0x20a650(%rip),%eax        # 6142a0 <readtask@plt+0x2129d0>
  409c50:	e9 5f f8 ff ff       	jmpq   4094b4 <readtask@plt+0x7be4>
  409c55:	bf 6a ad 40 00       	mov    $0x40ad6a,%edi
  409c5a:	31 f6                	xor    %esi,%esi
  409c5c:	e8 8f e6 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409c61:	48 8b 3d 40 a6 20 00 	mov    0x20a640(%rip),%rdi        # 6142a8 <readtask@plt+0x2129d8>
  409c68:	48 89 38             	mov    %rdi,(%rax)
  409c6b:	48 89 05 36 a6 20 00 	mov    %rax,0x20a636(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409c72:	e9 54 f7 ff ff       	jmpq   4093cb <readtask@plt+0x7afb>
  409c77:	bf d9 b5 40 00       	mov    $0x40b5d9,%edi
  409c7c:	e8 6f e6 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409c81:	4c 8b 15 20 a6 20 00 	mov    0x20a620(%rip),%r10        # 6142a8 <readtask@plt+0x2129d8>
  409c88:	4c 89 10             	mov    %r10,(%rax)
  409c8b:	48 89 05 16 a6 20 00 	mov    %rax,0x20a616(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409c92:	e9 c7 f6 ff ff       	jmpq   40935e <readtask@plt+0x7a8e>
  409c97:	31 f6                	xor    %esi,%esi
  409c99:	bf d7 f2 40 00       	mov    $0x40f2d7,%edi
  409c9e:	e8 4d e6 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409ca3:	48 8b 1d fe a5 20 00 	mov    0x20a5fe(%rip),%rbx        # 6142a8 <readtask@plt+0x2129d8>
  409caa:	48 89 18             	mov    %rbx,(%rax)
  409cad:	48 89 05 f4 a5 20 00 	mov    %rax,0x20a5f4(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409cb4:	8b 05 e6 a5 20 00    	mov    0x20a5e6(%rip),%eax        # 6142a0 <readtask@plt+0x2129d0>
  409cba:	a8 04                	test   $0x4,%al
  409cbc:	0f 85 0d f9 ff ff    	jne    4095cf <readtask@plt+0x7cff>
  409cc2:	31 f6                	xor    %esi,%esi
  409cc4:	bf 57 b5 40 00       	mov    $0x40b557,%edi
  409cc9:	e8 22 e6 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409cce:	48 8b 2d d3 a5 20 00 	mov    0x20a5d3(%rip),%rbp        # 6142a8 <readtask@plt+0x2129d8>
  409cd5:	48 89 28             	mov    %rbp,(%rax)
  409cd8:	48 89 05 c9 a5 20 00 	mov    %rax,0x20a5c9(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409cdf:	e9 e5 f8 ff ff       	jmpq   4095c9 <readtask@plt+0x7cf9>
  409ce4:	bf 56 b3 40 00       	mov    $0x40b356,%edi
  409ce9:	e8 02 e6 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409cee:	4c 8b 0d b3 a5 20 00 	mov    0x20a5b3(%rip),%r9        # 6142a8 <readtask@plt+0x2129d8>
  409cf5:	4c 89 08             	mov    %r9,(%rax)
  409cf8:	48 89 05 a9 a5 20 00 	mov    %rax,0x20a5a9(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409cff:	e9 b8 f8 ff ff       	jmpq   4095bc <readtask@plt+0x7cec>
  409d04:	a8 04                	test   $0x4,%al
  409d06:	0f 84 bd f8 ff ff    	je     4095c9 <readtask@plt+0x7cf9>
  409d0c:	31 f6                	xor    %esi,%esi
  409d0e:	bf 0a ae 40 00       	mov    $0x40ae0a,%edi
  409d13:	e8 d8 e5 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409d18:	4c 8b 15 89 a5 20 00 	mov    0x20a589(%rip),%r10        # 6142a8 <readtask@plt+0x2129d8>
  409d1f:	4c 89 10             	mov    %r10,(%rax)
  409d22:	48 89 05 7f a5 20 00 	mov    %rax,0x20a57f(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409d29:	e9 8e f8 ff ff       	jmpq   4095bc <readtask@plt+0x7cec>
  409d2e:	31 f6                	xor    %esi,%esi
  409d30:	bf 1e b2 40 00       	mov    $0x40b21e,%edi
  409d35:	e8 b6 e5 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409d3a:	48 8b 35 67 a5 20 00 	mov    0x20a567(%rip),%rsi        # 6142a8 <readtask@plt+0x2129d8>
  409d41:	48 89 30             	mov    %rsi,(%rax)
  409d44:	48 89 05 5d a5 20 00 	mov    %rax,0x20a55d(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409d4b:	e9 17 f8 ff ff       	jmpq   409567 <readtask@plt+0x7c97>
  409d50:	31 f6                	xor    %esi,%esi
  409d52:	bf d6 9f 40 00       	mov    $0x409fd6,%edi
  409d57:	e8 94 e5 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409d5c:	48 8b 0d 45 a5 20 00 	mov    0x20a545(%rip),%rcx        # 6142a8 <readtask@plt+0x2129d8>
  409d63:	48 89 08             	mov    %rcx,(%rax)
  409d66:	48 89 05 3b a5 20 00 	mov    %rax,0x20a53b(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409d6d:	e9 e8 f7 ff ff       	jmpq   40955a <readtask@plt+0x7c8a>
  409d72:	31 f6                	xor    %esi,%esi
  409d74:	bf 19 b3 40 00       	mov    $0x40b319,%edi
  409d79:	e8 72 e5 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409d7e:	48 8b 15 23 a5 20 00 	mov    0x20a523(%rip),%rdx        # 6142a8 <readtask@plt+0x2129d8>
  409d85:	31 f6                	xor    %esi,%esi
  409d87:	bf ee b2 40 00       	mov    $0x40b2ee,%edi
  409d8c:	48 89 10             	mov    %rdx,(%rax)
  409d8f:	48 89 05 12 a5 20 00 	mov    %rax,0x20a512(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409d96:	e8 55 e5 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409d9b:	4c 8b 1d 06 a5 20 00 	mov    0x20a506(%rip),%r11        # 6142a8 <readtask@plt+0x2129d8>
  409da2:	4c 89 18             	mov    %r11,(%rax)
  409da5:	48 89 05 fc a4 20 00 	mov    %rax,0x20a4fc(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409dac:	e9 9c f7 ff ff       	jmpq   40954d <readtask@plt+0x7c7d>
  409db1:	31 f6                	xor    %esi,%esi
  409db3:	bf 07 b0 40 00       	mov    $0x40b007,%edi
  409db8:	e8 33 e5 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409dbd:	48 8b 2d e4 a4 20 00 	mov    0x20a4e4(%rip),%rbp        # 6142a8 <readtask@plt+0x2129d8>
  409dc4:	48 89 28             	mov    %rbp,(%rax)
  409dc7:	48 89 05 da a4 20 00 	mov    %rax,0x20a4da(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409dce:	e9 6d f7 ff ff       	jmpq   409540 <readtask@plt+0x7c70>
  409dd3:	31 f6                	xor    %esi,%esi
  409dd5:	bf 2d b1 40 00       	mov    $0x40b12d,%edi
  409dda:	e8 11 e5 ff ff       	callq  4082f0 <readtask@plt+0x6a20>
  409ddf:	48 8b 1d c2 a4 20 00 	mov    0x20a4c2(%rip),%rbx        # 6142a8 <readtask@plt+0x2129d8>
  409de6:	48 89 18             	mov    %rbx,(%rax)
  409de9:	48 89 05 b8 a4 20 00 	mov    %rax,0x20a4b8(%rip)        # 6142a8 <readtask@plt+0x2129d8>
  409df0:	e9 3e f7 ff ff       	jmpq   409533 <readtask@plt+0x7c63>
  409df5:	90                   	nop
  409df6:	90                   	nop
  409df7:	90                   	nop
  409df8:	90                   	nop
  409df9:	90                   	nop
  409dfa:	90                   	nop
  409dfb:	90                   	nop
  409dfc:	90                   	nop
  409dfd:	90                   	nop
  409dfe:	90                   	nop
  409dff:	90                   	nop
  409e00:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  409e05:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  409e0a:	48 8d 2d e7 9f 20 00 	lea    0x209fe7(%rip),%rbp        # 613df8 <readtask@plt+0x212528>
  409e11:	4c 8d 25 d8 9f 20 00 	lea    0x209fd8(%rip),%r12        # 613df0 <readtask@plt+0x212520>
  409e18:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  409e1d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  409e22:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  409e27:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  409e2c:	48 83 ec 38          	sub    $0x38,%rsp
  409e30:	4c 29 e5             	sub    %r12,%rbp
  409e33:	41 89 fd             	mov    %edi,%r13d
  409e36:	49 89 f6             	mov    %rsi,%r14
  409e39:	48 c1 fd 03          	sar    $0x3,%rbp
  409e3d:	49 89 d7             	mov    %rdx,%r15
  409e40:	e8 63 76 ff ff       	callq  4014a8 <getenv@plt-0x28>
  409e45:	48 85 ed             	test   %rbp,%rbp
  409e48:	74 1c                	je     409e66 <readtask@plt+0x8596>
  409e4a:	31 db                	xor    %ebx,%ebx
  409e4c:	0f 1f 40 00          	nopl   0x0(%rax)
  409e50:	4c 89 fa             	mov    %r15,%rdx
  409e53:	4c 89 f6             	mov    %r14,%rsi
  409e56:	44 89 ef             	mov    %r13d,%edi
  409e59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  409e5d:	48 83 c3 01          	add    $0x1,%rbx
  409e61:	48 39 eb             	cmp    %rbp,%rbx
  409e64:	75 ea                	jne    409e50 <readtask@plt+0x8580>
  409e66:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  409e6b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  409e70:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  409e75:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  409e7a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  409e7f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  409e84:	48 83 c4 38          	add    $0x38,%rsp
  409e88:	c3                   	retq   
  409e89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  409e90:	f3 c3                	repz retq 
  409e92:	90                   	nop
  409e93:	90                   	nop
  409e94:	90                   	nop
  409e95:	90                   	nop
  409e96:	90                   	nop
  409e97:	90                   	nop
  409e98:	90                   	nop
  409e99:	90                   	nop
  409e9a:	90                   	nop
  409e9b:	90                   	nop
  409e9c:	90                   	nop
  409e9d:	90                   	nop
  409e9e:	90                   	nop
  409e9f:	90                   	nop
  409ea0:	55                   	push   %rbp
  409ea1:	48 89 e5             	mov    %rsp,%rbp
  409ea4:	53                   	push   %rbx
  409ea5:	48 83 ec 08          	sub    $0x8,%rsp
  409ea9:	48 8b 05 48 9f 20 00 	mov    0x209f48(%rip),%rax        # 613df8 <readtask@plt+0x212528>
  409eb0:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  409eb4:	74 19                	je     409ecf <readtask@plt+0x85ff>
  409eb6:	bb f8 3d 61 00       	mov    $0x613df8,%ebx
  409ebb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  409ec0:	48 83 eb 08          	sub    $0x8,%rbx
  409ec4:	ff d0                	callq  *%rax
  409ec6:	48 8b 03             	mov    (%rbx),%rax
  409ec9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  409ecd:	75 f1                	jne    409ec0 <readtask@plt+0x85f0>
  409ecf:	48 83 c4 08          	add    $0x8,%rsp
  409ed3:	5b                   	pop    %rbx
  409ed4:	5d                   	pop    %rbp
  409ed5:	c3                   	retq   
  409ed6:	90                   	nop
  409ed7:	90                   	nop

Disassembly of section .fini:

0000000000409ed8 <.fini>:
  409ed8:	48 83 ec 08          	sub    $0x8,%rsp
  409edc:	e8 df 80 ff ff       	callq  401fc0 <readtask@plt+0x6f0>
  409ee1:	48 83 c4 08          	add    $0x8,%rsp
  409ee5:	c3                   	retq   
