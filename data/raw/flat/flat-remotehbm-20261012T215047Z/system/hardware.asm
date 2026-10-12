
/lpor1/store_0/usr/user/hw-bench-thesis-results/flat-remotehbm-20261012T215047Z/build/hardware:     file format elf64-x86-64


Disassembly of section .init:

0000000000403000 <_init>:
  403000:	f3 0f 1e fa          	endbr64 
  403004:	48 83 ec 08          	sub    $0x8,%rsp
  403008:	48 8b 05 c9 ef 00 00 	mov    0xefc9(%rip),%rax        # 411fd8 <__gmon_start__>
  40300f:	48 85 c0             	test   %rax,%rax
  403012:	74 02                	je     403016 <_init+0x16>
  403014:	ff d0                	callq  *%rax
  403016:	48 83 c4 08          	add    $0x8,%rsp
  40301a:	c3                   	retq   

Disassembly of section .plt:

0000000000403020 <.plt>:
  403020:	ff 35 e2 ef 00 00    	pushq  0xefe2(%rip)        # 412008 <_GLOBAL_OFFSET_TABLE_+0x8>
  403026:	ff 25 e4 ef 00 00    	jmpq   *0xefe4(%rip)        # 412010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40302c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403030 <_ZNSo3putEc@plt>:
  403030:	ff 25 e2 ef 00 00    	jmpq   *0xefe2(%rip)        # 412018 <_ZNSo3putEc@GLIBCXX_3.4>
  403036:	68 00 00 00 00       	pushq  $0x0
  40303b:	e9 e0 ff ff ff       	jmpq   403020 <.plt>

0000000000403040 <__errno_location@plt>:
  403040:	ff 25 da ef 00 00    	jmpq   *0xefda(%rip)        # 412020 <__errno_location@GLIBC_2.2.5>
  403046:	68 01 00 00 00       	pushq  $0x1
  40304b:	e9 d0 ff ff ff       	jmpq   403020 <.plt>

0000000000403050 <syscall@plt>:
  403050:	ff 25 d2 ef 00 00    	jmpq   *0xefd2(%rip)        # 412028 <syscall@GLIBC_2.2.5>
  403056:	68 02 00 00 00       	pushq  $0x2
  40305b:	e9 c0 ff ff ff       	jmpq   403020 <.plt>

0000000000403060 <GOMP_single_start@plt>:
  403060:	ff 25 ca ef 00 00    	jmpq   *0xefca(%rip)        # 412030 <GOMP_single_start@GOMP_1.0>
  403066:	68 03 00 00 00       	pushq  $0x3
  40306b:	e9 b0 ff ff ff       	jmpq   403020 <.plt>

0000000000403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>:
  403070:	ff 25 c2 ef 00 00    	jmpq   *0xefc2(%rip)        # 412038 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@GLIBCXX_3.4>
  403076:	68 04 00 00 00       	pushq  $0x4
  40307b:	e9 a0 ff ff ff       	jmpq   403020 <.plt>

0000000000403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>:
  403080:	ff 25 ba ef 00 00    	jmpq   *0xefba(%rip)        # 412040 <_ZNSt10filesystem7__cxx114pathdVERKS1_@GLIBCXX_3.4.26>
  403086:	68 05 00 00 00       	pushq  $0x5
  40308b:	e9 90 ff ff ff       	jmpq   403020 <.plt>

0000000000403090 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>:
  403090:	ff 25 b2 ef 00 00    	jmpq   *0xefb2(%rip)        # 412048 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  403096:	68 06 00 00 00       	pushq  $0x6
  40309b:	e9 80 ff ff ff       	jmpq   403020 <.plt>

00000000004030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>:
  4030a0:	ff 25 aa ef 00 00    	jmpq   *0xefaa(%rip)        # 412050 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@GLIBCXX_3.4.26>
  4030a6:	68 07 00 00 00       	pushq  $0x7
  4030ab:	e9 70 ff ff ff       	jmpq   403020 <.plt>

00000000004030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>:
  4030b0:	ff 25 a2 ef 00 00    	jmpq   *0xefa2(%rip)        # 412058 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@GLIBCXX_3.4.26>
  4030b6:	68 08 00 00 00       	pushq  $0x8
  4030bb:	e9 60 ff ff ff       	jmpq   403020 <.plt>

00000000004030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>:
  4030c0:	ff 25 9a ef 00 00    	jmpq   *0xef9a(%rip)        # 412060 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@GLIBCXX_3.4.21>
  4030c6:	68 09 00 00 00       	pushq  $0x9
  4030cb:	e9 50 ff ff ff       	jmpq   403020 <.plt>

00000000004030d0 <_ZNSt8ios_baseC2Ev@plt>:
  4030d0:	ff 25 92 ef 00 00    	jmpq   *0xef92(%rip)        # 412068 <_ZNSt8ios_baseC2Ev@GLIBCXX_3.4>
  4030d6:	68 0a 00 00 00       	pushq  $0xa
  4030db:	e9 40 ff ff ff       	jmpq   403020 <.plt>

00000000004030e0 <nanosleep@plt>:
  4030e0:	ff 25 8a ef 00 00    	jmpq   *0xef8a(%rip)        # 412070 <nanosleep@GLIBC_2.2.5>
  4030e6:	68 0b 00 00 00       	pushq  $0xb
  4030eb:	e9 30 ff ff ff       	jmpq   403020 <.plt>

00000000004030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>:
  4030f0:	ff 25 82 ef 00 00    	jmpq   *0xef82(%rip)        # 412078 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@GLIBCXX_3.4.21>
  4030f6:	68 0c 00 00 00       	pushq  $0xc
  4030fb:	e9 20 ff ff ff       	jmpq   403020 <.plt>

0000000000403100 <_ZNSt8ios_baseD2Ev@plt>:
  403100:	ff 25 7a ef 00 00    	jmpq   *0xef7a(%rip)        # 412080 <_ZNSt8ios_baseD2Ev@GLIBCXX_3.4>
  403106:	68 0d 00 00 00       	pushq  $0xd
  40310b:	e9 10 ff ff ff       	jmpq   403020 <.plt>

0000000000403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>:
  403110:	ff 25 72 ef 00 00    	jmpq   *0xef72(%rip)        # 412088 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@GLIBCXX_3.4.26>
  403116:	68 0e 00 00 00       	pushq  $0xe
  40311b:	e9 00 ff ff ff       	jmpq   403020 <.plt>

0000000000403120 <_ZNSt13runtime_errorC1EPKc@plt>:
  403120:	ff 25 6a ef 00 00    	jmpq   *0xef6a(%rip)        # 412090 <_ZNSt13runtime_errorC1EPKc@GLIBCXX_3.4.21>
  403126:	68 0f 00 00 00       	pushq  $0xf
  40312b:	e9 f0 fe ff ff       	jmpq   403020 <.plt>

0000000000403130 <__cxa_begin_catch@plt>:
  403130:	ff 25 62 ef 00 00    	jmpq   *0xef62(%rip)        # 412098 <__cxa_begin_catch@CXXABI_1.3>
  403136:	68 10 00 00 00       	pushq  $0x10
  40313b:	e9 e0 fe ff ff       	jmpq   403020 <.plt>

0000000000403140 <strlen@plt>:
  403140:	ff 25 5a ef 00 00    	jmpq   *0xef5a(%rip)        # 4120a0 <strlen@GLIBC_2.2.5>
  403146:	68 11 00 00 00       	pushq  $0x11
  40314b:	e9 d0 fe ff ff       	jmpq   403020 <.plt>

0000000000403150 <__cxa_allocate_exception@plt>:
  403150:	ff 25 52 ef 00 00    	jmpq   *0xef52(%rip)        # 4120a8 <__cxa_allocate_exception@CXXABI_1.3>
  403156:	68 12 00 00 00       	pushq  $0x12
  40315b:	e9 c0 fe ff ff       	jmpq   403020 <.plt>

0000000000403160 <_ZSt20__throw_length_errorPKc@plt>:
  403160:	ff 25 4a ef 00 00    	jmpq   *0xef4a(%rip)        # 4120b0 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
  403166:	68 13 00 00 00       	pushq  $0x13
  40316b:	e9 b0 fe ff ff       	jmpq   403020 <.plt>

0000000000403170 <_ZNSi10_M_extractImEERSiRT_@plt>:
  403170:	ff 25 42 ef 00 00    	jmpq   *0xef42(%rip)        # 4120b8 <_ZNSi10_M_extractImEERSiRT_@GLIBCXX_3.4.9>
  403176:	68 14 00 00 00       	pushq  $0x14
  40317b:	e9 a0 fe ff ff       	jmpq   403020 <.plt>

0000000000403180 <memset@plt>:
  403180:	ff 25 3a ef 00 00    	jmpq   *0xef3a(%rip)        # 4120c0 <memset@GLIBC_2.2.5>
  403186:	68 15 00 00 00       	pushq  $0x15
  40318b:	e9 90 fe ff ff       	jmpq   403020 <.plt>

0000000000403190 <GOMP_atomic_start@plt>:
  403190:	ff 25 32 ef 00 00    	jmpq   *0xef32(%rip)        # 4120c8 <GOMP_atomic_start@GOMP_1.0>
  403196:	68 16 00 00 00       	pushq  $0x16
  40319b:	e9 80 fe ff ff       	jmpq   403020 <.plt>

00000000004031a0 <_ZSt24__throw_invalid_argumentPKc@plt>:
  4031a0:	ff 25 2a ef 00 00    	jmpq   *0xef2a(%rip)        # 4120d0 <_ZSt24__throw_invalid_argumentPKc@GLIBCXX_3.4>
  4031a6:	68 17 00 00 00       	pushq  $0x17
  4031ab:	e9 70 fe ff ff       	jmpq   403020 <.plt>

00000000004031b0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@plt>:
  4031b0:	ff 25 22 ef 00 00    	jmpq   *0xef22(%rip)        # 4120d8 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@GLIBCXX_3.4.26>
  4031b6:	68 18 00 00 00       	pushq  $0x18
  4031bb:	e9 60 fe ff ff       	jmpq   403020 <.plt>

00000000004031c0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@plt>:
  4031c0:	ff 25 1a ef 00 00    	jmpq   *0xef1a(%rip)        # 4120e0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@GLIBCXX_3.4.26>
  4031c6:	68 19 00 00 00       	pushq  $0x19
  4031cb:	e9 50 fe ff ff       	jmpq   403020 <.plt>

00000000004031d0 <_ZNSo9_M_insertIyEERSoT_@plt>:
  4031d0:	ff 25 12 ef 00 00    	jmpq   *0xef12(%rip)        # 4120e8 <_ZNSo9_M_insertIyEERSoT_@GLIBCXX_3.4.9>
  4031d6:	68 1a 00 00 00       	pushq  $0x1a
  4031db:	e9 40 fe ff ff       	jmpq   403020 <.plt>

00000000004031e0 <_ZNSo9_M_insertImEERSoT_@plt>:
  4031e0:	ff 25 0a ef 00 00    	jmpq   *0xef0a(%rip)        # 4120f0 <_ZNSo9_M_insertImEERSoT_@GLIBCXX_3.4.9>
  4031e6:	68 1b 00 00 00       	pushq  $0x1b
  4031eb:	e9 30 fe ff ff       	jmpq   403020 <.plt>

00000000004031f0 <_ZSt19__throw_logic_errorPKc@plt>:
  4031f0:	ff 25 02 ef 00 00    	jmpq   *0xef02(%rip)        # 4120f8 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
  4031f6:	68 1c 00 00 00       	pushq  $0x1c
  4031fb:	e9 20 fe ff ff       	jmpq   403020 <.plt>

0000000000403200 <__cxa_free_exception@plt>:
  403200:	ff 25 fa ee 00 00    	jmpq   *0xeefa(%rip)        # 412100 <__cxa_free_exception@CXXABI_1.3>
  403206:	68 1d 00 00 00       	pushq  $0x1d
  40320b:	e9 10 fe ff ff       	jmpq   403020 <.plt>

0000000000403210 <aligned_alloc@plt>:
  403210:	ff 25 f2 ee 00 00    	jmpq   *0xeef2(%rip)        # 412108 <aligned_alloc@GLIBC_2.16>
  403216:	68 1e 00 00 00       	pushq  $0x1e
  40321b:	e9 00 fe ff ff       	jmpq   403020 <.plt>

0000000000403220 <GOMP_atomic_end@plt>:
  403220:	ff 25 ea ee 00 00    	jmpq   *0xeeea(%rip)        # 412110 <GOMP_atomic_end@GOMP_1.0>
  403226:	68 1f 00 00 00       	pushq  $0x1f
  40322b:	e9 f0 fd ff ff       	jmpq   403020 <.plt>

0000000000403230 <strtod@plt>:
  403230:	ff 25 e2 ee 00 00    	jmpq   *0xeee2(%rip)        # 412118 <strtod@GLIBC_2.2.5>
  403236:	68 20 00 00 00       	pushq  $0x20
  40323b:	e9 e0 fd ff ff       	jmpq   403020 <.plt>

0000000000403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>:
  403240:	ff 25 da ee 00 00    	jmpq   *0xeeda(%rip)        # 412120 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@GLIBCXX_3.4.26>
  403246:	68 21 00 00 00       	pushq  $0x21
  40324b:	e9 d0 fd ff ff       	jmpq   403020 <.plt>

0000000000403250 <memcpy@plt>:
  403250:	ff 25 d2 ee 00 00    	jmpq   *0xeed2(%rip)        # 412128 <memcpy@GLIBC_2.14>
  403256:	68 22 00 00 00       	pushq  $0x22
  40325b:	e9 c0 fd ff ff       	jmpq   403020 <.plt>

0000000000403260 <__cxa_atexit@plt>:
  403260:	ff 25 ca ee 00 00    	jmpq   *0xeeca(%rip)        # 412130 <__cxa_atexit@GLIBC_2.2.5>
  403266:	68 23 00 00 00       	pushq  $0x23
  40326b:	e9 b0 fd ff ff       	jmpq   403020 <.plt>

0000000000403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>:
  403270:	ff 25 c2 ee 00 00    	jmpq   *0xeec2(%rip)        # 412138 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@GLIBCXX_3.4>
  403276:	68 24 00 00 00       	pushq  $0x24
  40327b:	e9 a0 fd ff ff       	jmpq   403020 <.plt>

0000000000403280 <clock_gettime@plt>:
  403280:	ff 25 ba ee 00 00    	jmpq   *0xeeba(%rip)        # 412140 <clock_gettime@GLIBC_2.17>
  403286:	68 25 00 00 00       	pushq  $0x25
  40328b:	e9 90 fd ff ff       	jmpq   403020 <.plt>

0000000000403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  403290:	ff 25 b2 ee 00 00    	jmpq   *0xeeb2(%rip)        # 412148 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  403296:	68 26 00 00 00       	pushq  $0x26
  40329b:	e9 80 fd ff ff       	jmpq   403020 <.plt>

00000000004032a0 <_Znwm@plt>:
  4032a0:	ff 25 aa ee 00 00    	jmpq   *0xeeaa(%rip)        # 412150 <_Znwm@GLIBCXX_3.4>
  4032a6:	68 27 00 00 00       	pushq  $0x27
  4032ab:	e9 70 fd ff ff       	jmpq   403020 <.plt>

00000000004032b0 <_ZdlPvm@plt>:
  4032b0:	ff 25 a2 ee 00 00    	jmpq   *0xeea2(%rip)        # 412158 <_ZdlPvm@CXXABI_1.3.9>
  4032b6:	68 28 00 00 00       	pushq  $0x28
  4032bb:	e9 60 fd ff ff       	jmpq   403020 <.plt>

00000000004032c0 <_ZNSt13runtime_errorD1Ev@plt>:
  4032c0:	ff 25 9a ee 00 00    	jmpq   *0xee9a(%rip)        # 412160 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
  4032c6:	68 29 00 00 00       	pushq  $0x29
  4032cb:	e9 50 fd ff ff       	jmpq   403020 <.plt>

00000000004032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>:
  4032d0:	ff 25 92 ee 00 00    	jmpq   *0xee92(%rip)        # 412168 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@GLIBCXX_3.4>
  4032d6:	68 2a 00 00 00       	pushq  $0x2a
  4032db:	e9 40 fd ff ff       	jmpq   403020 <.plt>

00000000004032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
  4032e0:	ff 25 8a ee 00 00    	jmpq   *0xee8a(%rip)        # 412170 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
  4032e6:	68 2b 00 00 00       	pushq  $0x2b
  4032eb:	e9 30 fd ff ff       	jmpq   403020 <.plt>

00000000004032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>:
  4032f0:	ff 25 82 ee 00 00    	jmpq   *0xee82(%rip)        # 412178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@GLIBCXX_3.4.21>
  4032f6:	68 2c 00 00 00       	pushq  $0x2c
  4032fb:	e9 20 fd ff ff       	jmpq   403020 <.plt>

0000000000403300 <free@plt>:
  403300:	ff 25 7a ee 00 00    	jmpq   *0xee7a(%rip)        # 412180 <free@GLIBC_2.2.5>
  403306:	68 2d 00 00 00       	pushq  $0x2d
  40330b:	e9 10 fd ff ff       	jmpq   403020 <.plt>

0000000000403310 <madvise@plt>:
  403310:	ff 25 72 ee 00 00    	jmpq   *0xee72(%rip)        # 412188 <madvise@GLIBC_2.2.5>
  403316:	68 2e 00 00 00       	pushq  $0x2e
  40331b:	e9 00 fd ff ff       	jmpq   403020 <.plt>

0000000000403320 <getenv@plt>:
  403320:	ff 25 6a ee 00 00    	jmpq   *0xee6a(%rip)        # 412190 <getenv@GLIBC_2.2.5>
  403326:	68 2f 00 00 00       	pushq  $0x2f
  40332b:	e9 f0 fc ff ff       	jmpq   403020 <.plt>

0000000000403330 <strtoull@plt>:
  403330:	ff 25 62 ee 00 00    	jmpq   *0xee62(%rip)        # 412198 <strtoull@GLIBC_2.2.5>
  403336:	68 30 00 00 00       	pushq  $0x30
  40333b:	e9 e0 fc ff ff       	jmpq   403020 <.plt>

0000000000403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>:
  403340:	ff 25 5a ee 00 00    	jmpq   *0xee5a(%rip)        # 4121a0 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@GLIBCXX_3.4>
  403346:	68 31 00 00 00       	pushq  $0x31
  40334b:	e9 d0 fc ff ff       	jmpq   403020 <.plt>

0000000000403350 <strtol@plt>:
  403350:	ff 25 52 ee 00 00    	jmpq   *0xee52(%rip)        # 4121a8 <strtol@GLIBC_2.2.5>
  403356:	68 32 00 00 00       	pushq  $0x32
  40335b:	e9 c0 fc ff ff       	jmpq   403020 <.plt>

0000000000403360 <_ZNSt6localeD1Ev@plt>:
  403360:	ff 25 4a ee 00 00    	jmpq   *0xee4a(%rip)        # 4121b0 <_ZNSt6localeD1Ev@GLIBCXX_3.4>
  403366:	68 33 00 00 00       	pushq  $0x33
  40336b:	e9 b0 fc ff ff       	jmpq   403020 <.plt>

0000000000403370 <read@plt>:
  403370:	ff 25 42 ee 00 00    	jmpq   *0xee42(%rip)        # 4121b8 <read@GLIBC_2.2.5>
  403376:	68 34 00 00 00       	pushq  $0x34
  40337b:	e9 a0 fc ff ff       	jmpq   403020 <.plt>

0000000000403380 <_ZSt20__throw_out_of_rangePKc@plt>:
  403380:	ff 25 3a ee 00 00    	jmpq   *0xee3a(%rip)        # 4121c0 <_ZSt20__throw_out_of_rangePKc@GLIBCXX_3.4>
  403386:	68 35 00 00 00       	pushq  $0x35
  40338b:	e9 90 fc ff ff       	jmpq   403020 <.plt>

0000000000403390 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>:
  403390:	ff 25 32 ee 00 00    	jmpq   *0xee32(%rip)        # 4121c8 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  403396:	68 36 00 00 00       	pushq  $0x36
  40339b:	e9 80 fc ff ff       	jmpq   403020 <.plt>

00000000004033a0 <GOMP_parallel@plt>:
  4033a0:	ff 25 2a ee 00 00    	jmpq   *0xee2a(%rip)        # 4121d0 <GOMP_parallel@GOMP_4.0>
  4033a6:	68 37 00 00 00       	pushq  $0x37
  4033ab:	e9 70 fc ff ff       	jmpq   403020 <.plt>

00000000004033b0 <_ZNSt8ios_base4InitC1Ev@plt>:
  4033b0:	ff 25 22 ee 00 00    	jmpq   *0xee22(%rip)        # 4121d8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  4033b6:	68 38 00 00 00       	pushq  $0x38
  4033bb:	e9 60 fc ff ff       	jmpq   403020 <.plt>

00000000004033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>:
  4033c0:	ff 25 1a ee 00 00    	jmpq   *0xee1a(%rip)        # 4121e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@GLIBCXX_3.4.21>
  4033c6:	68 39 00 00 00       	pushq  $0x39
  4033cb:	e9 50 fc ff ff       	jmpq   403020 <.plt>

00000000004033d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>:
  4033d0:	ff 25 12 ee 00 00    	jmpq   *0xee12(%rip)        # 4121e8 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  4033d6:	68 3a 00 00 00       	pushq  $0x3a
  4033db:	e9 40 fc ff ff       	jmpq   403020 <.plt>

00000000004033e0 <omp_get_thread_num@plt>:
  4033e0:	ff 25 0a ee 00 00    	jmpq   *0xee0a(%rip)        # 4121f0 <omp_get_thread_num@OMP_1.0>
  4033e6:	68 3b 00 00 00       	pushq  $0x3b
  4033eb:	e9 30 fc ff ff       	jmpq   403020 <.plt>

00000000004033f0 <_ZNSo9_M_insertIdEERSoT_@plt>:
  4033f0:	ff 25 02 ee 00 00    	jmpq   *0xee02(%rip)        # 4121f8 <_ZNSo9_M_insertIdEERSoT_@GLIBCXX_3.4.9>
  4033f6:	68 3c 00 00 00       	pushq  $0x3c
  4033fb:	e9 20 fc ff ff       	jmpq   403020 <.plt>

0000000000403400 <__cxa_end_catch@plt>:
  403400:	ff 25 fa ed 00 00    	jmpq   *0xedfa(%rip)        # 412200 <__cxa_end_catch@CXXABI_1.3>
  403406:	68 3d 00 00 00       	pushq  $0x3d
  40340b:	e9 10 fc ff ff       	jmpq   403020 <.plt>

0000000000403410 <__gxx_personality_v0@plt>:
  403410:	ff 25 f2 ed 00 00    	jmpq   *0xedf2(%rip)        # 412208 <__gxx_personality_v0@CXXABI_1.3>
  403416:	68 3e 00 00 00       	pushq  $0x3e
  40341b:	e9 00 fc ff ff       	jmpq   403020 <.plt>

0000000000403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>:
  403420:	ff 25 ea ed 00 00    	jmpq   *0xedea(%rip)        # 412210 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@GLIBCXX_3.4>
  403426:	68 3f 00 00 00       	pushq  $0x3f
  40342b:	e9 f0 fb ff ff       	jmpq   403020 <.plt>

0000000000403430 <__cxa_throw@plt>:
  403430:	ff 25 e2 ed 00 00    	jmpq   *0xede2(%rip)        # 412218 <__cxa_throw@CXXABI_1.3>
  403436:	68 40 00 00 00       	pushq  $0x40
  40343b:	e9 e0 fb ff ff       	jmpq   403020 <.plt>

0000000000403440 <_ZNSolsEi@plt>:
  403440:	ff 25 da ed 00 00    	jmpq   *0xedda(%rip)        # 412220 <_ZNSolsEi@GLIBCXX_3.4>
  403446:	68 41 00 00 00       	pushq  $0x41
  40344b:	e9 d0 fb ff ff       	jmpq   403020 <.plt>

0000000000403450 <_Unwind_Resume@plt>:
  403450:	ff 25 d2 ed 00 00    	jmpq   *0xedd2(%rip)        # 412228 <_Unwind_Resume@GCC_3.0>
  403456:	68 42 00 00 00       	pushq  $0x42
  40345b:	e9 c0 fb ff ff       	jmpq   403020 <.plt>

0000000000403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>:
  403460:	ff 25 ca ed 00 00    	jmpq   *0xedca(%rip)        # 412230 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@GLIBCXX_3.4.21>
  403466:	68 43 00 00 00       	pushq  $0x43
  40346b:	e9 b0 fb ff ff       	jmpq   403020 <.plt>

0000000000403470 <GOMP_barrier@plt>:
  403470:	ff 25 c2 ed 00 00    	jmpq   *0xedc2(%rip)        # 412238 <GOMP_barrier@GOMP_1.0>
  403476:	68 44 00 00 00       	pushq  $0x44
  40347b:	e9 a0 fb ff ff       	jmpq   403020 <.plt>

0000000000403480 <_ZNSt12__basic_fileIcED1Ev@plt>:
  403480:	ff 25 ba ed 00 00    	jmpq   *0xedba(%rip)        # 412240 <_ZNSt12__basic_fileIcED1Ev@GLIBCXX_3.4>
  403486:	68 45 00 00 00       	pushq  $0x45
  40348b:	e9 90 fb ff ff       	jmpq   403020 <.plt>

0000000000403490 <omp_get_num_threads@plt>:
  403490:	ff 25 b2 ed 00 00    	jmpq   *0xedb2(%rip)        # 412248 <omp_get_num_threads@OMP_1.0>
  403496:	68 46 00 00 00       	pushq  $0x46
  40349b:	e9 80 fb ff ff       	jmpq   403020 <.plt>

00000000004034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>:
  4034a0:	ff 25 aa ed 00 00    	jmpq   *0xedaa(%rip)        # 412250 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@GLIBCXX_3.4.26>
  4034a6:	68 47 00 00 00       	pushq  $0x47
  4034ab:	e9 70 fb ff ff       	jmpq   403020 <.plt>

00000000004034b0 <close@plt>:
  4034b0:	ff 25 a2 ed 00 00    	jmpq   *0xeda2(%rip)        # 412258 <close@GLIBC_2.2.5>
  4034b6:	68 48 00 00 00       	pushq  $0x48
  4034bb:	e9 60 fb ff ff       	jmpq   403020 <.plt>

00000000004034c0 <_ZNSt8ios_base4InitD1Ev@plt>:
  4034c0:	ff 25 9a ed 00 00    	jmpq   *0xed9a(%rip)        # 412260 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  4034c6:	68 49 00 00 00       	pushq  $0x49
  4034cb:	e9 50 fb ff ff       	jmpq   403020 <.plt>

Disassembly of section .text:

00000000004034d0 <_Z11alloc_bytesmb.cold>:
  4034d0:	bf 10 00 00 00       	mov    $0x10,%edi
  4034d5:	e8 76 fc ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  4034da:	48 89 c7             	mov    %rax,%rdi
  4034dd:	be 13 f0 40 00       	mov    $0x40f013,%esi
  4034e2:	48 89 c5             	mov    %rax,%rbp
  4034e5:	e8 36 fc ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  4034ea:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  4034ef:	be a0 1d 41 00       	mov    $0x411da0,%esi
  4034f4:	48 89 ef             	mov    %rbp,%rdi
  4034f7:	e8 34 ff ff ff       	callq  403430 <__cxa_throw@plt>
  4034fc:	49 89 c4             	mov    %rax,%r12
  4034ff:	48 89 ef             	mov    %rbp,%rdi
  403502:	c5 f8 77             	vzeroupper 
  403505:	e8 f6 fc ff ff       	callq  403200 <__cxa_free_exception@plt>
  40350a:	4c 89 e7             	mov    %r12,%rdi
  40350d:	e8 3e ff ff ff       	callq  403450 <_Unwind_Resume@plt>

0000000000403512 <_Z6windowid.cold>:
  403512:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  403517:	83 38 00             	cmpl   $0x0,(%rax)
  40351a:	75 03                	jne    40351f <_Z6windowid.cold+0xd>
  40351c:	44 89 28             	mov    %r13d,(%rax)
  40351f:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  403526:	00 
  403527:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40352e:	00 
  40352f:	48 39 c7             	cmp    %rax,%rdi
  403532:	0f 84 30 01 00 00    	je     403668 <_Z6windowid.cold+0x156>
  403538:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40353f:	00 
  403540:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403544:	c5 f8 77             	vzeroupper 
  403547:	e8 64 fd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40354c:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  403553:	00 
  403554:	e8 87 9d 00 00       	callq  40d2e0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403559:	48 89 df             	mov    %rbx,%rdi
  40355c:	e8 ef fe ff ff       	callq  403450 <_Unwind_Resume@plt>
  403561:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403568:	00 
  403569:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403570:	00 
  403571:	48 39 c7             	cmp    %rax,%rdi
  403574:	0f 84 3b 01 00 00    	je     4036b5 <_Z6windowid.cold+0x1a3>
  40357a:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403581:	00 
  403582:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403586:	c5 f8 77             	vzeroupper 
  403589:	e8 22 fd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40358e:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403595:	00 
  403596:	e8 45 9d 00 00       	callq  40d2e0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  40359b:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  4035a2:	00 
  4035a3:	4c 39 ff             	cmp    %r15,%rdi
  4035a6:	75 5c                	jne    403604 <_Z6windowid.cold+0xf2>
  4035a8:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  4035af:	00 
  4035b0:	e8 2b 9d 00 00       	callq  40d2e0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4035b5:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  4035ba:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  4035c1:	00 
  4035c2:	48 39 c7             	cmp    %rax,%rdi
  4035c5:	74 85                	je     40354c <_Z6windowid.cold+0x3a>
  4035c7:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  4035ce:	00 
  4035cf:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4035d3:	e8 d8 fc ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4035d8:	e9 6f ff ff ff       	jmpq   40354c <_Z6windowid.cold+0x3a>
  4035dd:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  4035e4:	00 
  4035e5:	4c 39 ff             	cmp    %r15,%rdi
  4035e8:	0f 84 82 00 00 00    	je     403670 <_Z6windowid.cold+0x15e>
  4035ee:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  4035f5:	00 
  4035f6:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4035fa:	c5 f8 77             	vzeroupper 
  4035fd:	e8 ae fc ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403602:	eb a4                	jmp    4035a8 <_Z6windowid.cold+0x96>
  403604:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40360b:	00 
  40360c:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403610:	e8 9b fc ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403615:	eb 91                	jmp    4035a8 <_Z6windowid.cold+0x96>
  403617:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40361e:	00 
  40361f:	48 85 f6             	test   %rsi,%rsi
  403622:	74 3f                	je     403663 <_Z6windowid.cold+0x151>
  403624:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40362b:	00 
  40362c:	c5 f8 77             	vzeroupper 
  40362f:	e8 6c fa ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  403634:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40363b:	00 
  40363c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  403643:	00 
  403644:	48 39 c7             	cmp    %rax,%rdi
  403647:	0f 84 4e ff ff ff    	je     40359b <_Z6windowid.cold+0x89>
  40364d:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  403654:	00 
  403655:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403659:	e8 52 fc ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40365e:	e9 38 ff ff ff       	jmpq   40359b <_Z6windowid.cold+0x89>
  403663:	c5 f8 77             	vzeroupper 
  403666:	eb cc                	jmp    403634 <_Z6windowid.cold+0x122>
  403668:	c5 f8 77             	vzeroupper 
  40366b:	e9 dc fe ff ff       	jmpq   40354c <_Z6windowid.cold+0x3a>
  403670:	c5 f8 77             	vzeroupper 
  403673:	e9 30 ff ff ff       	jmpq   4035a8 <_Z6windowid.cold+0x96>
  403678:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40367d:	83 38 00             	cmpl   $0x0,(%rax)
  403680:	75 02                	jne    403684 <_Z6windowid.cold+0x172>
  403682:	89 18                	mov    %ebx,(%rax)
  403684:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40368b:	00 
  40368c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  403693:	00 
  403694:	48 39 c7             	cmp    %rax,%rdi
  403697:	74 24                	je     4036bd <_Z6windowid.cold+0x1ab>
  403699:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  4036a0:	00 
  4036a1:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4036a5:	c5 f8 77             	vzeroupper 
  4036a8:	e8 03 fc ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4036ad:	4c 89 e3             	mov    %r12,%rbx
  4036b0:	e9 97 fe ff ff       	jmpq   40354c <_Z6windowid.cold+0x3a>
  4036b5:	c5 f8 77             	vzeroupper 
  4036b8:	e9 d1 fe ff ff       	jmpq   40358e <_Z6windowid.cold+0x7c>
  4036bd:	c5 f8 77             	vzeroupper 
  4036c0:	eb eb                	jmp    4036ad <_Z6windowid.cold+0x19b>
  4036c2:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  4036c9:	00 
  4036ca:	c5 f8 77             	vzeroupper 
  4036cd:	e8 fe fc ff ff       	callq  4033d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>
  4036d2:	48 8b 05 4f e5 00 00 	mov    0xe54f(%rip),%rax        # 411c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  4036d9:	48 8b 0d 50 e5 00 00 	mov    0xe550(%rip),%rcx        # 411c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  4036e0:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4036e7:	00 
  4036e8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  4036ec:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  4036f3:	00 
  4036f4:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  4036fb:	00 
  4036fc:	48 c7 84 24 78 02 00 	movq   $0x411b90,0x278(%rsp)
  403703:	00 90 1b 41 00 
  403708:	e8 f3 f9 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40370d:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  403712:	e8 c9 9b 00 00       	callq  40d2e0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403717:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40371e:	00 
  40371f:	e8 bc 9b 00 00       	callq  40d2e0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403724:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40372b:	00 
  40372c:	4c 39 ff             	cmp    %r15,%rdi
  40372f:	74 11                	je     403742 <_Z6windowid.cold+0x230>
  403731:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  403738:	00 
  403739:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40373d:	e8 6e fb ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403742:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  403749:	00 
  40374a:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  403751:	00 
  403752:	48 39 c7             	cmp    %rax,%rdi
  403755:	74 11                	je     403768 <_Z6windowid.cold+0x256>
  403757:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40375e:	00 
  40375f:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403763:	e8 48 fb ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403768:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40376f:	00 
  403770:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  403777:	00 
  403778:	48 39 c7             	cmp    %rax,%rdi
  40377b:	0f 84 34 fe ff ff    	je     4035b5 <_Z6windowid.cold+0xa3>
  403781:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  403788:	00 
  403789:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40378d:	e8 1e fb ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403792:	e9 1e fe ff ff       	jmpq   4035b5 <_Z6windowid.cold+0xa3>
  403797:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40379e:	00 
  40379f:	c5 f8 77             	vzeroupper 
  4037a2:	e8 e9 fb ff ff       	callq  403390 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>
  4037a7:	e9 61 ff ff ff       	jmpq   40370d <_Z6windowid.cold+0x1fb>
  4037ac:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
  4037b3:	00 
  4037b4:	48 85 f6             	test   %rsi,%rsi
  4037b7:	74 3e                	je     4037f7 <_Z6windowid.cold+0x2e5>
  4037b9:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  4037c0:	00 
  4037c1:	c5 f8 77             	vzeroupper 
  4037c4:	e8 d7 f8 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  4037c9:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  4037d0:	00 
  4037d1:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  4037d8:	00 
  4037d9:	48 39 c7             	cmp    %rax,%rdi
  4037dc:	74 11                	je     4037ef <_Z6windowid.cold+0x2dd>
  4037de:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  4037e5:	00 
  4037e6:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4037ea:	e8 c1 fa ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4037ef:	4c 89 e7             	mov    %r12,%rdi
  4037f2:	e8 59 fc ff ff       	callq  403450 <_Unwind_Resume@plt>
  4037f7:	c5 f8 77             	vzeroupper 
  4037fa:	eb cd                	jmp    4037c9 <_Z6windowid.cold+0x2b7>
  4037fc:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  403803:	00 
  403804:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40380b:	00 
  40380c:	48 39 c7             	cmp    %rax,%rdi
  40380f:	74 19                	je     40382a <_Z6windowid.cold+0x318>
  403811:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  403818:	00 
  403819:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40381d:	c5 f8 77             	vzeroupper 
  403820:	e8 8b fa ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403825:	e9 22 fd ff ff       	jmpq   40354c <_Z6windowid.cold+0x3a>
  40382a:	c5 f8 77             	vzeroupper 
  40382d:	e9 1a fd ff ff       	jmpq   40354c <_Z6windowid.cold+0x3a>
  403832:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  403839:	00 
  40383a:	c5 f8 77             	vzeroupper 
  40383d:	e8 8e fb ff ff       	callq  4033d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>
  403842:	48 8b 05 df e3 00 00 	mov    0xe3df(%rip),%rax        # 411c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  403849:	48 8b 0d e0 e3 00 00 	mov    0xe3e0(%rip),%rcx        # 411c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  403850:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  403857:	00 
  403858:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40385c:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  403863:	00 
  403864:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40386b:	00 
  40386c:	48 c7 84 24 78 02 00 	movq   $0x411b90,0x278(%rsp)
  403873:	00 90 1b 41 00 
  403878:	e8 83 f8 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40387d:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  403882:	e8 59 9a 00 00       	callq  40d2e0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403887:	e9 1c fd ff ff       	jmpq   4035a8 <_Z6windowid.cold+0x96>
  40388c:	c5 f8 77             	vzeroupper 
  40388f:	e8 9c f8 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403894:	e8 67 fb ff ff       	callq  403400 <__cxa_end_catch@plt>
  403899:	e9 09 87 00 00       	jmpq   40bfa7 <_Z6windowid+0x15d7>
  40389e:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4038a3:	c5 f8 77             	vzeroupper 
  4038a6:	e8 35 9a 00 00       	callq  40d2e0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4038ab:	e9 de fc ff ff       	jmpq   40358e <_Z6windowid.cold+0x7c>
  4038b0:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  4038b7:	00 
  4038b8:	c5 f8 77             	vzeroupper 
  4038bb:	e8 d0 fa ff ff       	callq  403390 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>
  4038c0:	eb bb                	jmp    40387d <_Z6windowid.cold+0x36b>
  4038c2:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  4038c9:	00 
  4038ca:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  4038d1:	00 
  4038d2:	48 39 c7             	cmp    %rax,%rdi
  4038d5:	74 65                	je     40393c <_Z6windowid.cold+0x42a>
  4038d7:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  4038de:	00 
  4038df:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4038e3:	c5 f8 77             	vzeroupper 
  4038e6:	e8 c5 f9 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4038eb:	e9 78 fe ff ff       	jmpq   403768 <_Z6windowid.cold+0x256>
  4038f0:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  4038f7:	00 
  4038f8:	48 85 f6             	test   %rsi,%rsi
  4038fb:	74 47                	je     403944 <_Z6windowid.cold+0x432>
  4038fd:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  403904:	00 
  403905:	c5 f8 77             	vzeroupper 
  403908:	e8 93 f7 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40390d:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  403914:	00 
  403915:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40391c:	00 
  40391d:	48 39 c7             	cmp    %rax,%rdi
  403920:	0f 84 fe fd ff ff    	je     403724 <_Z6windowid.cold+0x212>
  403926:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  40392d:	00 
  40392e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403932:	e8 79 f9 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403937:	e9 e8 fd ff ff       	jmpq   403724 <_Z6windowid.cold+0x212>
  40393c:	c5 f8 77             	vzeroupper 
  40393f:	e9 24 fe ff ff       	jmpq   403768 <_Z6windowid.cold+0x256>
  403944:	c5 f8 77             	vzeroupper 
  403947:	eb c4                	jmp    40390d <_Z6windowid.cold+0x3fb>
  403949:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40394e:	c5 f8 77             	vzeroupper 
  403951:	e8 8a 99 00 00       	callq  40d2e0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403956:	e9 bc fd ff ff       	jmpq   403717 <_Z6windowid.cold+0x205>
  40395b:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  403962:	00 
  403963:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40396a:	00 
  40396b:	48 39 c7             	cmp    %rax,%rdi
  40396e:	74 71                	je     4039e1 <_Z6windowid.cold+0x4cf>
  403970:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  403977:	00 
  403978:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40397c:	c5 f8 77             	vzeroupper 
  40397f:	e8 2c f9 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403984:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40398b:	00 
  40398c:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  403993:	00 
  403994:	48 39 c7             	cmp    %rax,%rdi
  403997:	0f 84 0b fc ff ff    	je     4035a8 <_Z6windowid.cold+0x96>
  40399d:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  4039a4:	00 
  4039a5:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4039a9:	e8 02 f9 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4039ae:	e9 f5 fb ff ff       	jmpq   4035a8 <_Z6windowid.cold+0x96>
  4039b3:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  4039ba:	00 
  4039bb:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  4039c2:	00 
  4039c3:	48 39 c7             	cmp    %rax,%rdi
  4039c6:	74 1e                	je     4039e6 <_Z6windowid.cold+0x4d4>
  4039c8:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  4039cf:	00 
  4039d0:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4039d4:	c5 f8 77             	vzeroupper 
  4039d7:	e8 d4 f8 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4039dc:	e9 36 fd ff ff       	jmpq   403717 <_Z6windowid.cold+0x205>
  4039e1:	c5 f8 77             	vzeroupper 
  4039e4:	eb 9e                	jmp    403984 <_Z6windowid.cold+0x472>
  4039e6:	c5 f8 77             	vzeroupper 
  4039e9:	e9 29 fd ff ff       	jmpq   403717 <_Z6windowid.cold+0x205>
  4039ee:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  4039f5:	00 
  4039f6:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4039fd:	00 
  4039fe:	48 39 c7             	cmp    %rax,%rdi
  403a01:	0f 84 e5 02 00 00    	je     403cec <_Z6windowid.cold+0x7da>
  403a07:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  403a0e:	00 
  403a0f:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403a13:	c5 f8 77             	vzeroupper 
  403a16:	e8 95 f8 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403a1b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  403a20:	e8 bb 98 00 00       	callq  40d2e0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403a25:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  403a2c:	00 
  403a2d:	4c 39 ff             	cmp    %r15,%rdi
  403a30:	74 11                	je     403a43 <_Z6windowid.cold+0x531>
  403a32:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  403a39:	00 
  403a3a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403a3e:	e8 6d f8 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403a43:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  403a4a:	00 
  403a4b:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  403a52:	00 
  403a53:	48 39 c7             	cmp    %rax,%rdi
  403a56:	0f 84 28 ff ff ff    	je     403984 <_Z6windowid.cold+0x472>
  403a5c:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  403a63:	00 
  403a64:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403a68:	e8 43 f8 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403a6d:	e9 12 ff ff ff       	jmpq   403984 <_Z6windowid.cold+0x472>
  403a72:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  403a79:	00 
  403a7a:	48 85 f6             	test   %rsi,%rsi
  403a7d:	0f 84 8b 00 00 00    	je     403b0e <_Z6windowid.cold+0x5fc>
  403a83:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  403a8a:	00 
  403a8b:	c5 f8 77             	vzeroupper 
  403a8e:	e8 0d f6 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  403a93:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403a9a:	00 
  403a9b:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403aa2:	00 
  403aa3:	48 39 c7             	cmp    %rax,%rdi
  403aa6:	0f 84 79 ff ff ff    	je     403a25 <_Z6windowid.cold+0x513>
  403aac:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403ab3:	00 
  403ab4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403ab8:	e8 f3 f7 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403abd:	e9 63 ff ff ff       	jmpq   403a25 <_Z6windowid.cold+0x513>
  403ac2:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  403ac9:	00 
  403aca:	c5 f8 77             	vzeroupper 
  403acd:	e8 0e 98 00 00       	callq  40d2e0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403ad2:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403ad9:	00 
  403ada:	e8 01 98 00 00       	callq  40d2e0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403adf:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403ae6:	00 
  403ae7:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403aee:	00 
  403aef:	48 39 c7             	cmp    %rax,%rdi
  403af2:	0f 84 bd fa ff ff    	je     4035b5 <_Z6windowid.cold+0xa3>
  403af8:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403aff:	00 
  403b00:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403b04:	e8 a7 f7 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403b09:	e9 a7 fa ff ff       	jmpq   4035b5 <_Z6windowid.cold+0xa3>
  403b0e:	c5 f8 77             	vzeroupper 
  403b11:	eb 80                	jmp    403a93 <_Z6windowid.cold+0x581>
  403b13:	48 89 c3             	mov    %rax,%rbx
  403b16:	c5 f8 77             	vzeroupper 
  403b19:	e9 8a fa ff ff       	jmpq   4035a8 <_Z6windowid.cold+0x96>
  403b1e:	bf 10 00 00 00       	mov    $0x10,%edi
  403b23:	e8 28 f6 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403b28:	48 89 c7             	mov    %rax,%rdi
  403b2b:	be 61 f0 40 00       	mov    $0x40f061,%esi
  403b30:	49 89 c4             	mov    %rax,%r12
  403b33:	e8 e8 f5 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403b38:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403b3d:	be a0 1d 41 00       	mov    $0x411da0,%esi
  403b42:	4c 89 e7             	mov    %r12,%rdi
  403b45:	e8 e6 f8 ff ff       	callq  403430 <__cxa_throw@plt>
  403b4a:	48 89 c3             	mov    %rax,%rbx
  403b4d:	4c 89 e7             	mov    %r12,%rdi
  403b50:	c5 f8 77             	vzeroupper 
  403b53:	e8 a8 f6 ff ff       	callq  403200 <__cxa_free_exception@plt>
  403b58:	e9 4b fa ff ff       	jmpq   4035a8 <_Z6windowid.cold+0x96>
  403b5d:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  403b64:	00 
  403b65:	c5 f8 77             	vzeroupper 
  403b68:	e8 63 f8 ff ff       	callq  4033d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>
  403b6d:	4c 89 e8             	mov    %r13,%rax
  403b70:	48 8b 53 e8          	mov    -0x18(%rbx),%rdx
  403b74:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  403b7b:	00 
  403b7c:	4c 89 a4 14 80 01 00 	mov    %r12,0x180(%rsp,%rdx,1)
  403b83:	00 
  403b84:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  403b8b:	00 00 00 00 00 
  403b90:	48 89 c3             	mov    %rax,%rbx
  403b93:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  403b9a:	00 
  403b9b:	48 c7 84 24 80 02 00 	movq   $0x411b90,0x280(%rsp)
  403ba2:	00 90 1b 41 00 
  403ba7:	e8 54 f5 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  403bac:	e9 f7 f9 ff ff       	jmpq   4035a8 <_Z6windowid.cold+0x96>
  403bb1:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403bb8:	00 
  403bb9:	c5 f8 77             	vzeroupper 
  403bbc:	e8 cf f4 ff ff       	callq  403090 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>
  403bc1:	e9 e2 f9 ff ff       	jmpq   4035a8 <_Z6windowid.cold+0x96>
  403bc6:	c5 f8 77             	vzeroupper 
  403bc9:	e8 62 f5 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403bce:	e8 2d f8 ff ff       	callq  403400 <__cxa_end_catch@plt>
  403bd3:	e9 7e 88 00 00       	jmpq   40c456 <_Z6windowid+0x1a86>
  403bd8:	c5 f8 77             	vzeroupper 
  403bdb:	e8 50 f5 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403be0:	e8 1b f8 ff ff       	callq  403400 <__cxa_end_catch@plt>
  403be5:	e9 d2 77 00 00       	jmpq   40b3bc <_Z6windowid+0x9ec>
  403bea:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  403bf1:	00 
  403bf2:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  403bf9:	00 
  403bfa:	48 39 c7             	cmp    %rax,%rdi
  403bfd:	74 69                	je     403c68 <_Z6windowid.cold+0x756>
  403bff:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  403c06:	00 
  403c07:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403c0b:	c5 f8 77             	vzeroupper 
  403c0e:	e8 9d f6 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403c13:	e9 ba fe ff ff       	jmpq   403ad2 <_Z6windowid.cold+0x5c0>
  403c18:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  403c1f:	00 
  403c20:	48 85 f6             	test   %rsi,%rsi
  403c23:	0f 84 cb 00 00 00    	je     403cf4 <_Z6windowid.cold+0x7e2>
  403c29:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  403c30:	00 
  403c31:	c5 f8 77             	vzeroupper 
  403c34:	e8 67 f4 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  403c39:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  403c40:	00 
  403c41:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  403c48:	00 
  403c49:	48 39 c7             	cmp    %rax,%rdi
  403c4c:	0f 84 8d fe ff ff    	je     403adf <_Z6windowid.cold+0x5cd>
  403c52:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  403c59:	00 
  403c5a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403c5e:	e8 4d f6 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403c63:	e9 77 fe ff ff       	jmpq   403adf <_Z6windowid.cold+0x5cd>
  403c68:	c5 f8 77             	vzeroupper 
  403c6b:	e9 62 fe ff ff       	jmpq   403ad2 <_Z6windowid.cold+0x5c0>
  403c70:	bf 10 00 00 00       	mov    $0x10,%edi
  403c75:	e8 d6 f4 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403c7a:	48 89 c7             	mov    %rax,%rdi
  403c7d:	be 84 f0 40 00       	mov    $0x40f084,%esi
  403c82:	49 89 c4             	mov    %rax,%r12
  403c85:	e8 96 f4 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403c8a:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403c8f:	be a0 1d 41 00       	mov    $0x411da0,%esi
  403c94:	4c 89 e7             	mov    %r12,%rdi
  403c97:	e8 94 f7 ff ff       	callq  403430 <__cxa_throw@plt>
  403c9c:	e9 a9 fe ff ff       	jmpq   403b4a <_Z6windowid.cold+0x638>
  403ca1:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403ca8:	00 
  403ca9:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403cb0:	00 
  403cb1:	48 39 c7             	cmp    %rax,%rdi
  403cb4:	74 2e                	je     403ce4 <_Z6windowid.cold+0x7d2>
  403cb6:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403cbd:	00 
  403cbe:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403cc2:	c5 f8 77             	vzeroupper 
  403cc5:	e8 e6 f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403cca:	e9 e6 f8 ff ff       	jmpq   4035b5 <_Z6windowid.cold+0xa3>
  403ccf:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403cd6:	00 
  403cd7:	c5 f8 77             	vzeroupper 
  403cda:	e8 01 96 00 00       	callq  40d2e0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403cdf:	e9 37 fd ff ff       	jmpq   403a1b <_Z6windowid.cold+0x509>
  403ce4:	c5 f8 77             	vzeroupper 
  403ce7:	e9 c9 f8 ff ff       	jmpq   4035b5 <_Z6windowid.cold+0xa3>
  403cec:	c5 f8 77             	vzeroupper 
  403cef:	e9 27 fd ff ff       	jmpq   403a1b <_Z6windowid.cold+0x509>
  403cf4:	c5 f8 77             	vzeroupper 
  403cf7:	e9 3d ff ff ff       	jmpq   403c39 <_Z6windowid.cold+0x727>

0000000000403cfc <main.cold>:
  403cfc:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  403d01:	75 0a                	jne    403d0d <main.cold+0x11>
  403d03:	8b 85 30 f3 ff ff    	mov    -0xcd0(%rbp),%eax
  403d09:	41 89 04 24          	mov    %eax,(%r12)
  403d0d:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  403d14:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  403d1b:	48 39 c7             	cmp    %rax,%rdi
  403d1e:	0f 84 fa 01 00 00    	je     403f1e <main.cold+0x222>
  403d24:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  403d2b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d2f:	c5 f8 77             	vzeroupper 
  403d32:	e8 79 f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403d37:	eb 2a                	jmp    403d63 <main.cold+0x67>
  403d39:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  403d40:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  403d47:	48 39 c7             	cmp    %rax,%rdi
  403d4a:	0f 84 cf 00 00 00    	je     403e1f <main.cold+0x123>
  403d50:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  403d57:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d5b:	c5 f8 77             	vzeroupper 
  403d5e:	e8 4d f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403d63:	48 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%rdi
  403d6a:	4c 39 ef             	cmp    %r13,%rdi
  403d6d:	74 10                	je     403d7f <main.cold+0x83>
  403d6f:	48 8b 85 60 f5 ff ff 	mov    -0xaa0(%rbp),%rax
  403d76:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d7a:	e8 31 f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403d7f:	48 8b bd f0 f3 ff ff 	mov    -0xc10(%rbp),%rdi
  403d86:	48 8d 85 00 f4 ff ff 	lea    -0xc00(%rbp),%rax
  403d8d:	48 39 c7             	cmp    %rax,%rdi
  403d90:	74 10                	je     403da2 <main.cold+0xa6>
  403d92:	48 8b 85 00 f4 ff ff 	mov    -0xc00(%rbp),%rax
  403d99:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d9d:	e8 0e f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403da2:	48 89 df             	mov    %rbx,%rdi
  403da5:	49 ff ce             	dec    %r14
  403da8:	0f 85 6b 01 00 00    	jne    403f19 <main.cold+0x21d>
  403dae:	e8 7d f3 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403db3:	48 89 c7             	mov    %rax,%rdi
  403db6:	48 8b 00             	mov    (%rax),%rax
  403db9:	ff 50 10             	callq  *0x10(%rax)
  403dbc:	48 89 c6             	mov    %rax,%rsi
  403dbf:	bf a0 23 41 00       	mov    $0x4123a0,%edi
  403dc4:	e8 c7 f4 ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  403dc9:	48 89 c7             	mov    %rax,%rdi
  403dcc:	ba 01 00 00 00       	mov    $0x1,%edx
  403dd1:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  403dd8:	c6 85 00 f6 ff ff 0a 	movb   $0xa,-0xa00(%rbp)
  403ddf:	e8 fc f4 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  403de4:	e8 17 f6 ff ff       	callq  403400 <__cxa_end_catch@plt>
  403de9:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  403def:	e9 b7 07 00 00       	jmpq   4045ab <main+0x4eb>
  403df4:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  403dfb:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  403e02:	48 39 c7             	cmp    %rax,%rdi
  403e05:	74 20                	je     403e27 <main.cold+0x12b>
  403e07:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  403e0e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e12:	c5 f8 77             	vzeroupper 
  403e15:	e8 96 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e1a:	e9 44 ff ff ff       	jmpq   403d63 <main.cold+0x67>
  403e1f:	c5 f8 77             	vzeroupper 
  403e22:	e9 3c ff ff ff       	jmpq   403d63 <main.cold+0x67>
  403e27:	c5 f8 77             	vzeroupper 
  403e2a:	e9 34 ff ff ff       	jmpq   403d63 <main.cold+0x67>
  403e2f:	48 8b bd 50 f4 ff ff 	mov    -0xbb0(%rbp),%rdi
  403e36:	48 8d 85 60 f4 ff ff 	lea    -0xba0(%rbp),%rax
  403e3d:	48 39 c7             	cmp    %rax,%rdi
  403e40:	0f 85 59 02 00 00    	jne    40409f <main.cold+0x3a3>
  403e46:	c5 f8 77             	vzeroupper 
  403e49:	48 8b bd 30 f4 ff ff 	mov    -0xbd0(%rbp),%rdi
  403e50:	48 8d 85 40 f4 ff ff 	lea    -0xbc0(%rbp),%rax
  403e57:	48 39 c7             	cmp    %rax,%rdi
  403e5a:	74 10                	je     403e6c <main.cold+0x170>
  403e5c:	48 8b 85 40 f4 ff ff 	mov    -0xbc0(%rbp),%rax
  403e63:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e67:	e8 44 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e6c:	48 8b bd 10 f4 ff ff 	mov    -0xbf0(%rbp),%rdi
  403e73:	48 8d 85 20 f4 ff ff 	lea    -0xbe0(%rbp),%rax
  403e7a:	48 39 c7             	cmp    %rax,%rdi
  403e7d:	74 10                	je     403e8f <main.cold+0x193>
  403e7f:	48 8b 85 20 f4 ff ff 	mov    -0xbe0(%rbp),%rax
  403e86:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e8a:	e8 21 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e8f:	48 8b bd d0 f3 ff ff 	mov    -0xc30(%rbp),%rdi
  403e96:	48 8b b5 e0 f3 ff ff 	mov    -0xc20(%rbp),%rsi
  403e9d:	48 29 fe             	sub    %rdi,%rsi
  403ea0:	48 85 ff             	test   %rdi,%rdi
  403ea3:	74 05                	je     403eaa <main.cold+0x1ae>
  403ea5:	e8 06 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403eaa:	48 8b bd b0 f3 ff ff 	mov    -0xc50(%rbp),%rdi
  403eb1:	48 8b b5 c0 f3 ff ff 	mov    -0xc40(%rbp),%rsi
  403eb8:	48 29 fe             	sub    %rdi,%rsi
  403ebb:	48 85 ff             	test   %rdi,%rdi
  403ebe:	74 05                	je     403ec5 <main.cold+0x1c9>
  403ec0:	e8 eb f3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403ec5:	4d 89 e6             	mov    %r12,%r14
  403ec8:	4c 89 ff             	mov    %r15,%rdi
  403ecb:	e8 a0 9a 00 00       	callq  40d970 <_ZN8CountersD1Ev>
  403ed0:	e9 aa fe ff ff       	jmpq   403d7f <main.cold+0x83>
  403ed5:	48 89 c3             	mov    %rax,%rbx
  403ed8:	49 89 d4             	mov    %rdx,%r12
  403edb:	c5 f8 77             	vzeroupper 
  403ede:	eb af                	jmp    403e8f <main.cold+0x193>
  403ee0:	45 31 e4             	xor    %r12d,%r12d
  403ee3:	c5 f8 77             	vzeroupper 
  403ee6:	45 84 e4             	test   %r12b,%r12b
  403ee9:	74 23                	je     403f0e <main.cold+0x212>
  403eeb:	48 8b bd 70 f4 ff ff 	mov    -0xb90(%rbp),%rdi
  403ef2:	48 8d 85 80 f4 ff ff 	lea    -0xb80(%rbp),%rax
  403ef9:	48 39 c7             	cmp    %rax,%rdi
  403efc:	74 10                	je     403f0e <main.cold+0x212>
  403efe:	48 8b 85 80 f4 ff ff 	mov    -0xb80(%rbp),%rax
  403f05:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403f09:	e8 a2 f3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403f0e:	4c 89 eb             	mov    %r13,%rbx
  403f11:	4d 89 f4             	mov    %r14,%r12
  403f14:	e9 30 ff ff ff       	jmpq   403e49 <main.cold+0x14d>
  403f19:	e8 32 f5 ff ff       	callq  403450 <_Unwind_Resume@plt>
  403f1e:	c5 f8 77             	vzeroupper 
  403f21:	e9 3d fe ff ff       	jmpq   403d63 <main.cold+0x67>
  403f26:	49 89 c4             	mov    %rax,%r12
  403f29:	c5 f8 77             	vzeroupper 
  403f2c:	e8 cf f4 ff ff       	callq  403400 <__cxa_end_catch@plt>
  403f31:	4c 89 e7             	mov    %r12,%rdi
  403f34:	e8 17 f5 ff ff       	callq  403450 <_Unwind_Resume@plt>
  403f39:	bf 10 00 00 00       	mov    $0x10,%edi
  403f3e:	e8 0d f2 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403f43:	48 89 c7             	mov    %rax,%rdi
  403f46:	be 50 f4 40 00       	mov    $0x40f450,%esi
  403f4b:	49 89 c5             	mov    %rax,%r13
  403f4e:	e8 cd f1 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403f53:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403f58:	be a0 1d 41 00       	mov    $0x411da0,%esi
  403f5d:	4c 89 ef             	mov    %r13,%rdi
  403f60:	e8 cb f4 ff ff       	callq  403430 <__cxa_throw@plt>
  403f65:	48 89 c3             	mov    %rax,%rbx
  403f68:	49 89 d4             	mov    %rdx,%r12
  403f6b:	4c 89 ef             	mov    %r13,%rdi
  403f6e:	c5 f8 77             	vzeroupper 
  403f71:	e8 8a f2 ff ff       	callq  403200 <__cxa_free_exception@plt>
  403f76:	e9 14 ff ff ff       	jmpq   403e8f <main.cold+0x193>
  403f7b:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  403f80:	75 0a                	jne    403f8c <main.cold+0x290>
  403f82:	8b 85 04 f3 ff ff    	mov    -0xcfc(%rbp),%eax
  403f88:	41 89 04 24          	mov    %eax,(%r12)
  403f8c:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  403f93:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  403f9a:	48 39 c7             	cmp    %rax,%rdi
  403f9d:	74 52                	je     403ff1 <main.cold+0x2f5>
  403f9f:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  403fa6:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403faa:	c5 f8 77             	vzeroupper 
  403fad:	e8 fe f2 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403fb2:	e9 ac fd ff ff       	jmpq   403d63 <main.cold+0x67>
  403fb7:	45 31 e4             	xor    %r12d,%r12d
  403fba:	c5 f8 77             	vzeroupper 
  403fbd:	84 db                	test   %bl,%bl
  403fbf:	0f 84 21 ff ff ff    	je     403ee6 <main.cold+0x1ea>
  403fc5:	48 8b bd b0 f4 ff ff 	mov    -0xb50(%rbp),%rdi
  403fcc:	48 8d 85 c0 f4 ff ff 	lea    -0xb40(%rbp),%rax
  403fd3:	48 39 c7             	cmp    %rax,%rdi
  403fd6:	0f 84 0a ff ff ff    	je     403ee6 <main.cold+0x1ea>
  403fdc:	48 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%rax
  403fe3:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403fe7:	e8 c4 f2 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403fec:	e9 f5 fe ff ff       	jmpq   403ee6 <main.cold+0x1ea>
  403ff1:	c5 f8 77             	vzeroupper 
  403ff4:	e9 6a fd ff ff       	jmpq   403d63 <main.cold+0x67>
  403ff9:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  404000:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404007:	48 39 c7             	cmp    %rax,%rdi
  40400a:	74 18                	je     404024 <main.cold+0x328>
  40400c:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  404013:	48 8d 70 01          	lea    0x1(%rax),%rsi
  404017:	c5 f8 77             	vzeroupper 
  40401a:	e8 91 f2 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40401f:	e9 3f fd ff ff       	jmpq   403d63 <main.cold+0x67>
  404024:	c5 f8 77             	vzeroupper 
  404027:	e9 37 fd ff ff       	jmpq   403d63 <main.cold+0x67>
  40402c:	45 84 e4             	test   %r12b,%r12b
  40402f:	74 2b                	je     40405c <main.cold+0x360>
  404031:	48 8b bd 90 f4 ff ff 	mov    -0xb70(%rbp),%rdi
  404038:	48 8d 85 a0 f4 ff ff 	lea    -0xb60(%rbp),%rax
  40403f:	48 39 c7             	cmp    %rax,%rdi
  404042:	74 4e                	je     404092 <main.cold+0x396>
  404044:	48 8b 85 a0 f4 ff ff 	mov    -0xb60(%rbp),%rax
  40404b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40404f:	c5 f8 77             	vzeroupper 
  404052:	e8 59 f2 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  404057:	e9 8a fe ff ff       	jmpq   403ee6 <main.cold+0x1ea>
  40405c:	c5 f8 77             	vzeroupper 
  40405f:	e9 aa fe ff ff       	jmpq   403f0e <main.cold+0x212>
  404064:	48 8b bd 00 f5 ff ff 	mov    -0xb00(%rbp),%rdi
  40406b:	48 8d 85 10 f5 ff ff 	lea    -0xaf0(%rbp),%rax
  404072:	48 39 c7             	cmp    %rax,%rdi
  404075:	74 23                	je     40409a <main.cold+0x39e>
  404077:	48 8b 85 10 f5 ff ff 	mov    -0xaf0(%rbp),%rax
  40407e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  404082:	c5 f8 77             	vzeroupper 
  404085:	e8 26 f2 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40408a:	45 31 e4             	xor    %r12d,%r12d
  40408d:	e9 2b ff ff ff       	jmpq   403fbd <main.cold+0x2c1>
  404092:	c5 f8 77             	vzeroupper 
  404095:	e9 4c fe ff ff       	jmpq   403ee6 <main.cold+0x1ea>
  40409a:	c5 f8 77             	vzeroupper 
  40409d:	eb eb                	jmp    40408a <main.cold+0x38e>
  40409f:	48 8b 85 60 f4 ff ff 	mov    -0xba0(%rbp),%rax
  4040a6:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4040aa:	c5 f8 77             	vzeroupper 
  4040ad:	e8 fe f1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4040b2:	e9 92 fd ff ff       	jmpq   403e49 <main.cold+0x14d>
  4040b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4040be:	00 00 

00000000004040c0 <main>:
  4040c0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  4040c5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  4040c9:	41 ff 72 f8          	pushq  -0x8(%r10)
  4040cd:	55                   	push   %rbp
  4040ce:	48 89 e5             	mov    %rsp,%rbp
  4040d1:	41 57                	push   %r15
  4040d3:	41 56                	push   %r14
  4040d5:	41 55                	push   %r13
  4040d7:	41 54                	push   %r12
  4040d9:	41 52                	push   %r10
  4040db:	53                   	push   %rbx
  4040dc:	89 fb                	mov    %edi,%ebx
  4040de:	48 81 ec e0 0c 00 00 	sub    $0xce0,%rsp
  4040e5:	89 bd 40 f3 ff ff    	mov    %edi,-0xcc0(%rbp)
  4040eb:	48 89 b5 38 f3 ff ff 	mov    %rsi,-0xcc8(%rbp)
  4040f2:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  4040f9:	be b6 f0 40 00       	mov    $0x40f0b6,%esi
  4040fe:	e8 2d 66 00 00       	callq  40a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404103:	c7 85 5c f3 ff ff 01 	movl   $0x1,-0xca4(%rbp)
  40410a:	00 00 00 
  40410d:	83 fb 01             	cmp    $0x1,%ebx
  404110:	0f 8e 05 06 00 00    	jle    40471b <main+0x65b>
  404116:	c5 fb 10 35 d2 b5 00 	vmovsd 0xb5d2(%rip),%xmm6        # 40f6f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  40411d:	00 
  40411e:	48 b8 00 00 00 00 02 	movabs $0x200000000,%rax
  404125:	00 00 00 
  404128:	c6 85 18 f3 ff ff 00 	movb   $0x0,-0xce8(%rbp)
  40412f:	c6 85 20 f3 ff ff 00 	movb   $0x0,-0xce0(%rbp)
  404136:	c7 85 f8 f2 ff ff 00 	movl   $0x0,-0xd08(%rbp)
  40413d:	00 00 00 
  404140:	c7 85 00 f3 ff ff 05 	movl   $0x5,-0xd00(%rbp)
  404147:	00 00 00 
  40414a:	48 89 85 08 f3 ff ff 	mov    %rax,-0xcf8(%rbp)
  404151:	bb 01 00 00 00       	mov    $0x1,%ebx
  404156:	c5 fb 11 b5 28 f3 ff 	vmovsd %xmm6,-0xcd8(%rbp)
  40415d:	ff 
  40415e:	c5 fb 11 b5 10 f3 ff 	vmovsd %xmm6,-0xcf0(%rbp)
  404165:	ff 
  404166:	4c 8d bd 50 f5 ff ff 	lea    -0xab0(%rbp),%r15
  40416d:	4c 8d ad 60 f5 ff ff 	lea    -0xaa0(%rbp),%r13
  404174:	e9 a1 00 00 00       	jmpq   40421a <main+0x15a>
  404179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404180:	be 7b f1 40 00       	mov    $0x40f17b,%esi
  404185:	4c 89 ff             	mov    %r15,%rdi
  404188:	e8 33 ef ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40418d:	85 c0                	test   %eax,%eax
  40418f:	0f 84 6b 01 00 00    	je     404300 <main+0x240>
  404195:	ff c3                	inc    %ebx
  404197:	39 9d 40 f3 ff ff    	cmp    %ebx,-0xcc0(%rbp)
  40419d:	0f 8e f4 04 00 00    	jle    404697 <main+0x5d7>
  4041a3:	be 87 f1 40 00       	mov    $0x40f187,%esi
  4041a8:	4c 89 ff             	mov    %r15,%rdi
  4041ab:	e8 10 ef ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4041b0:	85 c0                	test   %eax,%eax
  4041b2:	0f 85 58 01 00 00    	jne    404310 <main+0x250>
  4041b8:	48 8b 8d 30 f3 ff ff 	mov    -0xcd0(%rbp),%rcx
  4041bf:	48 8b 85 38 f3 ff ff 	mov    -0xcc8(%rbp),%rax
  4041c6:	4c 8b 64 08 08       	mov    0x8(%rax,%rcx,1),%r12
  4041cb:	4c 89 e7             	mov    %r12,%rdi
  4041ce:	e8 6d ef ff ff       	callq  403140 <strlen@plt>
  4041d3:	48 8b 95 f8 f3 ff ff 	mov    -0xc08(%rbp),%rdx
  4041da:	49 89 c0             	mov    %rax,%r8
  4041dd:	4c 89 e1             	mov    %r12,%rcx
  4041e0:	31 f6                	xor    %esi,%esi
  4041e2:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  4041e9:	e8 d2 f1 ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  4041ee:	66 90                	xchg   %ax,%ax
  4041f0:	48 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%rdi
  4041f7:	4c 39 ef             	cmp    %r13,%rdi
  4041fa:	74 10                	je     40420c <main+0x14c>
  4041fc:	48 8b 85 60 f5 ff ff 	mov    -0xaa0(%rbp),%rax
  404203:	48 8d 70 01          	lea    0x1(%rax),%rsi
  404207:	e8 a4 f0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40420c:	ff c3                	inc    %ebx
  40420e:	39 9d 40 f3 ff ff    	cmp    %ebx,-0xcc0(%rbp)
  404214:	0f 8e 3e 03 00 00    	jle    404558 <main+0x498>
  40421a:	48 63 c3             	movslq %ebx,%rax
  40421d:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
  404224:	00 
  404225:	48 89 8d 30 f3 ff ff 	mov    %rcx,-0xcd0(%rbp)
  40422c:	48 8b 8d 38 f3 ff ff 	mov    -0xcc8(%rbp),%rcx
  404233:	4c 89 ad 50 f5 ff ff 	mov    %r13,-0xab0(%rbp)
  40423a:	4c 8b 24 c1          	mov    (%rcx,%rax,8),%r12
  40423e:	4d 85 e4             	test   %r12,%r12
  404241:	0f 84 26 1c 00 00    	je     405e6d <main+0x1dad>
  404247:	4c 89 e7             	mov    %r12,%rdi
  40424a:	e8 f1 ee ff ff       	callq  403140 <strlen@plt>
  40424f:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  404256:	49 89 c6             	mov    %rax,%r14
  404259:	48 83 f8 0f          	cmp    $0xf,%rax
  40425d:	77 51                	ja     4042b0 <main+0x1f0>
  40425f:	48 83 f8 01          	cmp    $0x1,%rax
  404263:	75 3b                	jne    4042a0 <main+0x1e0>
  404265:	41 0f b6 14 24       	movzbl (%r12),%edx
  40426a:	88 95 60 f5 ff ff    	mov    %dl,-0xaa0(%rbp)
  404270:	4c 89 ea             	mov    %r13,%rdx
  404273:	48 89 85 58 f5 ff ff 	mov    %rax,-0xaa8(%rbp)
  40427a:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40427e:	be 6e f1 40 00       	mov    $0x40f16e,%esi
  404283:	4c 89 ff             	mov    %r15,%rdi
  404286:	e8 35 ee ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40428b:	85 c0                	test   %eax,%eax
  40428d:	0f 85 ed fe ff ff    	jne    404180 <main+0xc0>
  404293:	c6 85 20 f3 ff ff 01 	movb   $0x1,-0xce0(%rbp)
  40429a:	e9 51 ff ff ff       	jmpq   4041f0 <main+0x130>
  40429f:	90                   	nop
  4042a0:	48 85 c0             	test   %rax,%rax
  4042a3:	0f 85 89 1c 00 00    	jne    405f32 <main+0x1e72>
  4042a9:	4c 89 ea             	mov    %r13,%rdx
  4042ac:	eb c5                	jmp    404273 <main+0x1b3>
  4042ae:	66 90                	xchg   %ax,%ax
  4042b0:	31 d2                	xor    %edx,%edx
  4042b2:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  4042b9:	4c 89 ff             	mov    %r15,%rdi
  4042bc:	e8 9f f1 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4042c1:	48 89 85 50 f5 ff ff 	mov    %rax,-0xab0(%rbp)
  4042c8:	48 89 c7             	mov    %rax,%rdi
  4042cb:	48 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%rax
  4042d2:	48 89 85 60 f5 ff ff 	mov    %rax,-0xaa0(%rbp)
  4042d9:	4c 89 f2             	mov    %r14,%rdx
  4042dc:	4c 89 e6             	mov    %r12,%rsi
  4042df:	e8 6c ef ff ff       	callq  403250 <memcpy@plt>
  4042e4:	48 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%rax
  4042eb:	48 8b 95 50 f5 ff ff 	mov    -0xab0(%rbp),%rdx
  4042f2:	e9 7c ff ff ff       	jmpq   404273 <main+0x1b3>
  4042f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4042fe:	00 00 
  404300:	c6 85 18 f3 ff ff 01 	movb   $0x1,-0xce8(%rbp)
  404307:	e9 e4 fe ff ff       	jmpq   4041f0 <main+0x130>
  40430c:	0f 1f 40 00          	nopl   0x0(%rax)
  404310:	be 8e f1 40 00       	mov    $0x40f18e,%esi
  404315:	4c 89 ff             	mov    %r15,%rdi
  404318:	e8 a3 ed ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40431d:	85 c0                	test   %eax,%eax
  40431f:	0f 85 13 01 00 00    	jne    404438 <main+0x378>
  404325:	48 8b 85 38 f3 ff ff 	mov    -0xcc8(%rbp),%rax
  40432c:	48 8b 95 30 f3 ff ff 	mov    -0xcd0(%rbp),%rdx
  404333:	4c 8b 74 10 08       	mov    0x8(%rax,%rdx,1),%r14
  404338:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  40433f:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  404346:	4d 85 f6             	test   %r14,%r14
  404349:	0f 84 13 1c 00 00    	je     405f62 <main+0x1ea2>
  40434f:	4c 89 f7             	mov    %r14,%rdi
  404352:	e8 e9 ed ff ff       	callq  403140 <strlen@plt>
  404357:	48 89 85 00 f5 ff ff 	mov    %rax,-0xb00(%rbp)
  40435e:	49 89 c4             	mov    %rax,%r12
  404361:	48 83 f8 0f          	cmp    $0xf,%rax
  404365:	0f 87 7b 02 00 00    	ja     4045e6 <main+0x526>
  40436b:	48 83 f8 01          	cmp    $0x1,%rax
  40436f:	0f 85 51 02 00 00    	jne    4045c6 <main+0x506>
  404375:	41 0f b6 06          	movzbl (%r14),%eax
  404379:	88 85 10 f6 ff ff    	mov    %al,-0x9f0(%rbp)
  40437f:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  404386:	48 89 85 30 f3 ff ff 	mov    %rax,-0xcd0(%rbp)
  40438d:	48 8b 85 00 f5 ff ff 	mov    -0xb00(%rbp),%rax
  404394:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  40439b:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  4043a2:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4043a6:	e8 95 ec ff ff       	callq  403040 <__errno_location@plt>
  4043ab:	49 89 c4             	mov    %rax,%r12
  4043ae:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  4043b5:	8b 00                	mov    (%rax),%eax
  4043b7:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  4043be:	00 
  4043bf:	48 8b b5 30 f3 ff ff 	mov    -0xcd0(%rbp),%rsi
  4043c6:	ba 0a 00 00 00       	mov    $0xa,%edx
  4043cb:	4c 89 f7             	mov    %r14,%rdi
  4043ce:	89 85 04 f3 ff ff    	mov    %eax,-0xcfc(%rbp)
  4043d4:	e8 57 ef ff ff       	callq  403330 <strtoull@plt>
  4043d9:	48 89 85 08 f3 ff ff 	mov    %rax,-0xcf8(%rbp)
  4043e0:	4c 3b b5 00 f5 ff ff 	cmp    -0xb00(%rbp),%r14
  4043e7:	0f 84 57 1b 00 00    	je     405f44 <main+0x1e84>
  4043ed:	41 8b 04 24          	mov    (%r12),%eax
  4043f1:	83 f8 22             	cmp    $0x22,%eax
  4043f4:	0f 84 40 1b 00 00    	je     405f3a <main+0x1e7a>
  4043fa:	85 c0                	test   %eax,%eax
  4043fc:	75 0a                	jne    404408 <main+0x348>
  4043fe:	8b 85 04 f3 ff ff    	mov    -0xcfc(%rbp),%eax
  404404:	41 89 04 24          	mov    %eax,(%r12)
  404408:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  40440f:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404416:	48 39 c7             	cmp    %rax,%rdi
  404419:	0f 84 d1 fd ff ff    	je     4041f0 <main+0x130>
  40441f:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  404426:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40442a:	e8 81 ee ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40442f:	e9 bc fd ff ff       	jmpq   4041f0 <main+0x130>
  404434:	0f 1f 40 00          	nopl   0x0(%rax)
  404438:	be 9d f1 40 00       	mov    $0x40f19d,%esi
  40443d:	4c 89 ff             	mov    %r15,%rdi
  404440:	e8 7b ec ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404445:	85 c0                	test   %eax,%eax
  404447:	0f 85 93 00 00 00    	jne    4044e0 <main+0x420>
  40444d:	48 8b 85 38 f3 ff ff 	mov    -0xcc8(%rbp),%rax
  404454:	48 8b 95 30 f3 ff ff 	mov    -0xcd0(%rbp),%rdx
  40445b:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404462:	48 8b 74 10 08       	mov    0x8(%rax,%rdx,1),%rsi
  404467:	e8 c4 62 00 00       	callq  40a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40446c:	e8 cf eb ff ff       	callq  403040 <__errno_location@plt>
  404471:	49 89 c4             	mov    %rax,%r12
  404474:	8b 00                	mov    (%rax),%eax
  404476:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  40447d:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  404484:	00 
  404485:	89 85 30 f3 ff ff    	mov    %eax,-0xcd0(%rbp)
  40448b:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  404492:	48 89 c6             	mov    %rax,%rsi
  404495:	4c 89 f7             	mov    %r14,%rdi
  404498:	e8 93 ed ff ff       	callq  403230 <strtod@plt>
  40449d:	c5 fb 11 85 10 f3 ff 	vmovsd %xmm0,-0xcf0(%rbp)
  4044a4:	ff 
  4044a5:	4c 3b b5 00 f5 ff ff 	cmp    -0xb00(%rbp),%r14
  4044ac:	0f 84 a6 1a 00 00    	je     405f58 <main+0x1e98>
  4044b2:	41 8b 04 24          	mov    (%r12),%eax
  4044b6:	83 f8 22             	cmp    $0x22,%eax
  4044b9:	0f 84 8f 1a 00 00    	je     405f4e <main+0x1e8e>
  4044bf:	85 c0                	test   %eax,%eax
  4044c1:	0f 85 41 ff ff ff    	jne    404408 <main+0x348>
  4044c7:	8b 85 30 f3 ff ff    	mov    -0xcd0(%rbp),%eax
  4044cd:	41 89 04 24          	mov    %eax,(%r12)
  4044d1:	e9 32 ff ff ff       	jmpq   404408 <main+0x348>
  4044d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4044dd:	00 00 00 
  4044e0:	be ac f1 40 00       	mov    $0x40f1ac,%esi
  4044e5:	4c 89 ff             	mov    %r15,%rdi
  4044e8:	e8 d3 eb ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4044ed:	85 c0                	test   %eax,%eax
  4044ef:	0f 85 38 01 00 00    	jne    40462d <main+0x56d>
  4044f5:	48 8b 85 38 f3 ff ff 	mov    -0xcc8(%rbp),%rax
  4044fc:	48 8b 95 30 f3 ff ff 	mov    -0xcd0(%rbp),%rdx
  404503:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  40450a:	48 8b 74 10 08       	mov    0x8(%rax,%rdx,1),%rsi
  40450f:	e8 1c 62 00 00       	callq  40a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404514:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  40451b:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  404521:	31 c9                	xor    %ecx,%ecx
  404523:	be 4a f0 40 00       	mov    $0x40f04a,%esi
  404528:	bf 50 33 40 00       	mov    $0x403350,%edi
  40452d:	e8 5e 95 00 00       	callq  40da90 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  404532:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  404539:	89 85 00 f3 ff ff    	mov    %eax,-0xd00(%rbp)
  40453f:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404546:	48 39 c7             	cmp    %rax,%rdi
  404549:	0f 85 d0 fe ff ff    	jne    40441f <main+0x35f>
  40454f:	e9 9c fc ff ff       	jmpq   4041f0 <main+0x130>
  404554:	0f 1f 40 00          	nopl   0x0(%rax)
  404558:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  40455c:	c5 f9 2f 85 10 f3 ff 	vcomisd -0xcf0(%rbp),%xmm0
  404563:	ff 
  404564:	73 1c                	jae    404582 <main+0x4c2>
  404566:	83 bd 00 f3 ff ff 00 	cmpl   $0x0,-0xd00(%rbp)
  40456d:	7e 13                	jle    404582 <main+0x4c2>
  40456f:	8b 85 5c f3 ff ff    	mov    -0xca4(%rbp),%eax
  404575:	ff c8                	dec    %eax
  404577:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  40457c:	0f 86 e3 01 00 00    	jbe    404765 <main+0x6a5>
  404582:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  404588:	48 8b bd f0 f3 ff ff 	mov    -0xc10(%rbp),%rdi
  40458f:	48 8d 85 00 f4 ff ff 	lea    -0xc00(%rbp),%rax
  404596:	48 39 c7             	cmp    %rax,%rdi
  404599:	74 10                	je     4045ab <main+0x4eb>
  40459b:	48 8b 85 00 f4 ff ff 	mov    -0xc00(%rbp),%rax
  4045a2:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4045a6:	e8 05 ed ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4045ab:	48 81 c4 e0 0c 00 00 	add    $0xce0,%rsp
  4045b2:	5b                   	pop    %rbx
  4045b3:	41 5a                	pop    %r10
  4045b5:	44 89 e0             	mov    %r12d,%eax
  4045b8:	41 5c                	pop    %r12
  4045ba:	41 5d                	pop    %r13
  4045bc:	41 5e                	pop    %r14
  4045be:	41 5f                	pop    %r15
  4045c0:	5d                   	pop    %rbp
  4045c1:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  4045c5:	c3                   	retq   
  4045c6:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  4045cd:	48 89 85 30 f3 ff ff 	mov    %rax,-0xcd0(%rbp)
  4045d4:	4d 85 e4             	test   %r12,%r12
  4045d7:	0f 84 b0 fd ff ff    	je     40438d <main+0x2cd>
  4045dd:	48 8d bd 10 f6 ff ff 	lea    -0x9f0(%rbp),%rdi
  4045e4:	eb 37                	jmp    40461d <main+0x55d>
  4045e6:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  4045ed:	31 d2                	xor    %edx,%edx
  4045ef:	48 89 c6             	mov    %rax,%rsi
  4045f2:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  4045f9:	48 89 85 30 f3 ff ff 	mov    %rax,-0xcd0(%rbp)
  404600:	e8 5b ee ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  404605:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  40460c:	48 89 c7             	mov    %rax,%rdi
  40460f:	48 8b 85 00 f5 ff ff 	mov    -0xb00(%rbp),%rax
  404616:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  40461d:	4c 89 e2             	mov    %r12,%rdx
  404620:	4c 89 f6             	mov    %r14,%rsi
  404623:	e8 28 ec ff ff       	callq  403250 <memcpy@plt>
  404628:	e9 60 fd ff ff       	jmpq   40438d <main+0x2cd>
  40462d:	be ba f1 40 00       	mov    $0x40f1ba,%esi
  404632:	4c 89 ff             	mov    %r15,%rdi
  404635:	e8 86 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40463a:	85 c0                	test   %eax,%eax
  40463c:	74 7e                	je     4046bc <main+0x5fc>
  40463e:	be be f1 40 00       	mov    $0x40f1be,%esi
  404643:	4c 89 ff             	mov    %r15,%rdi
  404646:	e8 75 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40464b:	85 c0                	test   %eax,%eax
  40464d:	75 48                	jne    404697 <main+0x5d7>
  40464f:	48 8b 85 38 f3 ff ff 	mov    -0xcc8(%rbp),%rax
  404656:	48 8b 8d 30 f3 ff ff 	mov    -0xcd0(%rbp),%rcx
  40465d:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404664:	48 8b 74 08 08       	mov    0x8(%rax,%rcx,1),%rsi
  404669:	e8 c2 60 00 00       	callq  40a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40466e:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  404675:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  40467b:	31 c9                	xor    %ecx,%ecx
  40467d:	be 4a f0 40 00       	mov    $0x40f04a,%esi
  404682:	bf 50 33 40 00       	mov    $0x403350,%edi
  404687:	e8 04 94 00 00       	callq  40da90 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  40468c:	89 85 f8 f2 ff ff    	mov    %eax,-0xd08(%rbp)
  404692:	e9 71 fd ff ff       	jmpq   404408 <main+0x348>
  404697:	48 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%rdi
  40469e:	4c 39 ef             	cmp    %r13,%rdi
  4046a1:	0f 84 db fe ff ff    	je     404582 <main+0x4c2>
  4046a7:	48 8b 85 60 f5 ff ff 	mov    -0xaa0(%rbp),%rax
  4046ae:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4046b2:	e8 f9 eb ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4046b7:	e9 c6 fe ff ff       	jmpq   404582 <main+0x4c2>
  4046bc:	48 8b 85 38 f3 ff ff 	mov    -0xcc8(%rbp),%rax
  4046c3:	48 8b 8d 30 f3 ff ff 	mov    -0xcd0(%rbp),%rcx
  4046ca:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  4046d1:	48 8b 74 08 08       	mov    0x8(%rax,%rcx,1),%rsi
  4046d6:	e8 55 60 00 00       	callq  40a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4046db:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  4046e2:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  4046e8:	31 c9                	xor    %ecx,%ecx
  4046ea:	be 4a f0 40 00       	mov    $0x40f04a,%esi
  4046ef:	bf 50 33 40 00       	mov    $0x403350,%edi
  4046f4:	e8 97 93 00 00       	callq  40da90 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  4046f9:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  404700:	89 85 5c f3 ff ff    	mov    %eax,-0xca4(%rbp)
  404706:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  40470d:	48 39 c7             	cmp    %rax,%rdi
  404710:	0f 85 09 fd ff ff    	jne    40441f <main+0x35f>
  404716:	e9 d5 fa ff ff       	jmpq   4041f0 <main+0x130>
  40471b:	b8 01 00 00 00       	mov    $0x1,%eax
  404720:	48 c1 e0 21          	shl    $0x21,%rax
  404724:	c5 fb 10 25 c4 af 00 	vmovsd 0xafc4(%rip),%xmm4        # 40f6f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  40472b:	00 
  40472c:	48 89 85 08 f3 ff ff 	mov    %rax,-0xcf8(%rbp)
  404733:	c6 85 18 f3 ff ff 00 	movb   $0x0,-0xce8(%rbp)
  40473a:	c7 85 00 f3 ff ff 05 	movl   $0x5,-0xd00(%rbp)
  404741:	00 00 00 
  404744:	c7 85 f8 f2 ff ff 00 	movl   $0x0,-0xd08(%rbp)
  40474b:	00 00 00 
  40474e:	c6 85 20 f3 ff ff 00 	movb   $0x0,-0xce0(%rbp)
  404755:	c5 fb 11 a5 28 f3 ff 	vmovsd %xmm4,-0xcd8(%rbp)
  40475c:	ff 
  40475d:	c5 fb 11 a5 10 f3 ff 	vmovsd %xmm4,-0xcf0(%rbp)
  404764:	ff 
  404765:	be b6 f0 40 00       	mov    $0x40f0b6,%esi
  40476a:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  404771:	e8 4a e9 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404776:	85 c0                	test   %eax,%eax
  404778:	be cf f0 40 00       	mov    $0x40f0cf,%esi
  40477d:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  404784:	0f 94 85 50 f3 ff ff 	sete   -0xcb0(%rbp)
  40478b:	e8 30 e9 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404790:	85 c0                	test   %eax,%eax
  404792:	be ed f0 40 00       	mov    $0x40f0ed,%esi
  404797:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  40479e:	0f 94 85 51 f3 ff ff 	sete   -0xcaf(%rbp)
  4047a5:	e8 16 e9 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047aa:	85 c0                	test   %eax,%eax
  4047ac:	be c7 f1 40 00       	mov    $0x40f1c7,%esi
  4047b1:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  4047b8:	0f 94 85 52 f3 ff ff 	sete   -0xcae(%rbp)
  4047bf:	e8 fc e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047c4:	85 c0                	test   %eax,%eax
  4047c6:	be df f0 40 00       	mov    $0x40f0df,%esi
  4047cb:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  4047d2:	0f 94 85 53 f3 ff ff 	sete   -0xcad(%rbp)
  4047d9:	e8 e2 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047de:	85 c0                	test   %eax,%eax
  4047e0:	be 2f f1 40 00       	mov    $0x40f12f,%esi
  4047e5:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  4047ec:	0f 94 85 54 f3 ff ff 	sete   -0xcac(%rbp)
  4047f3:	e8 c8 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047f8:	85 c0                	test   %eax,%eax
  4047fa:	be 2a f1 40 00       	mov    $0x40f12a,%esi
  4047ff:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  404806:	0f 94 85 55 f3 ff ff 	sete   -0xcab(%rbp)
  40480d:	e8 ae e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404812:	85 c0                	test   %eax,%eax
  404814:	be da f1 40 00       	mov    $0x40f1da,%esi
  404819:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  404820:	0f 94 85 56 f3 ff ff 	sete   -0xcaa(%rbp)
  404827:	e8 94 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40482c:	85 c0                	test   %eax,%eax
  40482e:	be 34 f1 40 00       	mov    $0x40f134,%esi
  404833:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  40483a:	0f 94 85 57 f3 ff ff 	sete   -0xca9(%rbp)
  404841:	e8 7a e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404846:	85 c0                	test   %eax,%eax
  404848:	be cf f1 40 00       	mov    $0x40f1cf,%esi
  40484d:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  404854:	0f 94 85 58 f3 ff ff 	sete   -0xca8(%rbp)
  40485b:	e8 60 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404860:	85 c0                	test   %eax,%eax
  404862:	be d4 f1 40 00       	mov    $0x40f1d4,%esi
  404867:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  40486e:	0f 94 85 59 f3 ff ff 	sete   -0xca7(%rbp)
  404875:	e8 46 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40487a:	85 c0                	test   %eax,%eax
  40487c:	0f b6 95 50 f3 ff ff 	movzbl -0xcb0(%rbp),%edx
  404883:	0f 94 c1             	sete   %cl
  404886:	88 8d 5a f3 ff ff    	mov    %cl,-0xca6(%rbp)
  40488c:	84 d2                	test   %dl,%dl
  40488e:	0f 85 80 00 00 00    	jne    404914 <main+0x854>
  404894:	0f b6 9d 51 f3 ff ff 	movzbl -0xcaf(%rbp),%ebx
  40489b:	88 9d 04 f3 ff ff    	mov    %bl,-0xcfc(%rbp)
  4048a1:	84 db                	test   %bl,%bl
  4048a3:	75 6f                	jne    404914 <main+0x854>
  4048a5:	80 bd 52 f3 ff ff 00 	cmpb   $0x0,-0xcae(%rbp)
  4048ac:	0f 85 51 14 00 00    	jne    405d03 <main+0x1c43>
  4048b2:	80 bd 53 f3 ff ff 00 	cmpb   $0x0,-0xcad(%rbp)
  4048b9:	75 3e                	jne    4048f9 <main+0x839>
  4048bb:	80 bd 54 f3 ff ff 00 	cmpb   $0x0,-0xcac(%rbp)
  4048c2:	75 35                	jne    4048f9 <main+0x839>
  4048c4:	80 bd 55 f3 ff ff 00 	cmpb   $0x0,-0xcab(%rbp)
  4048cb:	75 2c                	jne    4048f9 <main+0x839>
  4048cd:	80 bd 56 f3 ff ff 00 	cmpb   $0x0,-0xcaa(%rbp)
  4048d4:	75 23                	jne    4048f9 <main+0x839>
  4048d6:	80 bd 57 f3 ff ff 00 	cmpb   $0x0,-0xca9(%rbp)
  4048dd:	75 1a                	jne    4048f9 <main+0x839>
  4048df:	80 bd 58 f3 ff ff 00 	cmpb   $0x0,-0xca8(%rbp)
  4048e6:	75 11                	jne    4048f9 <main+0x839>
  4048e8:	80 bd 59 f3 ff ff 00 	cmpb   $0x0,-0xca7(%rbp)
  4048ef:	75 08                	jne    4048f9 <main+0x839>
  4048f1:	84 c9                	test   %cl,%cl
  4048f3:	0f 84 89 fc ff ff    	je     404582 <main+0x4c2>
  4048f9:	83 bd f8 f2 ff ff 00 	cmpl   $0x0,-0xd08(%rbp)
  404900:	0f 85 75 14 00 00    	jne    405d7b <main+0x1cbb>
  404906:	c6 85 04 f3 ff ff 00 	movb   $0x0,-0xcfc(%rbp)
  40490d:	ba 0c 00 00 00       	mov    $0xc,%edx
  404912:	eb 28                	jmp    40493c <main+0x87c>
  404914:	0a 95 51 f3 ff ff    	or     -0xcaf(%rbp),%dl
  40491a:	83 bd f8 f2 ff ff 00 	cmpl   $0x0,-0xd08(%rbp)
  404921:	88 95 04 f3 ff ff    	mov    %dl,-0xcfc(%rbp)
  404927:	0f 85 c9 05 00 00    	jne    404ef6 <main+0xe36>
  40492d:	80 bd 52 f3 ff ff 01 	cmpb   $0x1,-0xcae(%rbp)
  404934:	19 d2                	sbb    %edx,%edx
  404936:	83 e2 04             	and    $0x4,%edx
  404939:	83 c2 08             	add    $0x8,%edx
  40493c:	89 95 60 f3 ff ff    	mov    %edx,-0xca0(%rbp)
  404942:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  404949:	4c 8d ad 64 f3 ff ff 	lea    -0xc9c(%rbp),%r13
  404950:	31 c9                	xor    %ecx,%ecx
  404952:	31 d2                	xor    %edx,%edx
  404954:	bf 00 63 40 00       	mov    $0x406300,%edi
  404959:	c7 85 64 f3 ff ff 00 	movl   $0x0,-0xc9c(%rbp)
  404960:	00 00 00 
  404963:	c6 85 5b f3 ff ff 01 	movb   $0x1,-0xca5(%rbp)
  40496a:	4c 89 ad 00 f6 ff ff 	mov    %r13,-0xa00(%rbp)
  404971:	4c 8d bd 50 f5 ff ff 	lea    -0xab0(%rbp),%r15
  404978:	e8 23 ea ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40497d:	8b b5 64 f3 ff ff    	mov    -0xc9c(%rbp),%esi
  404983:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  404987:	4c 89 ff             	mov    %r15,%rdi
  40498a:	48 c7 85 d0 f5 ff ff 	movq   $0x0,-0xa30(%rbp)
  404991:	00 00 00 00 
  404995:	48 c7 85 d8 f5 ff ff 	movq   $0x0,-0xa28(%rbp)
  40499c:	00 00 00 00 
  4049a0:	c6 85 e0 f5 ff ff 00 	movb   $0x0,-0xa20(%rbp)
  4049a7:	c5 fd 7f 85 50 f5 ff 	vmovdqa %ymm0,-0xab0(%rbp)
  4049ae:	ff 
  4049af:	c5 fd 7f 85 70 f5 ff 	vmovdqa %ymm0,-0xa90(%rbp)
  4049b6:	ff 
  4049b7:	c5 fd 7f 85 90 f5 ff 	vmovdqa %ymm0,-0xa70(%rbp)
  4049be:	ff 
  4049bf:	c5 fd 7f 85 b0 f5 ff 	vmovdqa %ymm0,-0xa50(%rbp)
  4049c6:	ff 
  4049c7:	c5 f8 77             	vzeroupper 
  4049ca:	e8 51 89 00 00       	callq  40d320 <_ZN8Counters4openEi>
  4049cf:	80 bd 04 f3 ff ff 00 	cmpb   $0x0,-0xcfc(%rbp)
  4049d6:	48 c7 85 68 f3 ff ff 	movq   $0x0,-0xc98(%rbp)
  4049dd:	00 00 00 00 
  4049e1:	48 c7 85 70 f3 ff ff 	movq   $0x0,-0xc90(%rbp)
  4049e8:	00 00 00 00 
  4049ec:	48 c7 85 78 f3 ff ff 	movq   $0x0,-0xc88(%rbp)
  4049f3:	00 00 00 00 
  4049f7:	48 c7 85 80 f3 ff ff 	movq   $0x0,-0xc80(%rbp)
  4049fe:	00 00 00 00 
  404a02:	48 c7 85 88 f3 ff ff 	movq   $0x0,-0xc78(%rbp)
  404a09:	00 00 00 00 
  404a0d:	48 c7 85 b0 f3 ff ff 	movq   $0x0,-0xc50(%rbp)
  404a14:	00 00 00 00 
  404a18:	48 c7 85 b8 f3 ff ff 	movq   $0x0,-0xc48(%rbp)
  404a1f:	00 00 00 00 
  404a23:	48 c7 85 c0 f3 ff ff 	movq   $0x0,-0xc40(%rbp)
  404a2a:	00 00 00 00 
  404a2e:	48 c7 85 d0 f3 ff ff 	movq   $0x0,-0xc30(%rbp)
  404a35:	00 00 00 00 
  404a39:	48 c7 85 d8 f3 ff ff 	movq   $0x0,-0xc28(%rbp)
  404a40:	00 00 00 00 
  404a44:	48 c7 85 e0 f3 ff ff 	movq   $0x0,-0xc20(%rbp)
  404a4b:	00 00 00 00 
  404a4f:	48 c7 85 90 f3 ff ff 	movq   $0x0,-0xc70(%rbp)
  404a56:	00 00 00 00 
  404a5a:	0f b6 85 52 f3 ff ff 	movzbl -0xcae(%rbp),%eax
  404a61:	0f 85 9e 00 00 00    	jne    404b05 <main+0xa45>
  404a67:	84 c0                	test   %al,%al
  404a69:	0f 84 a0 01 00 00    	je     404c0f <main+0xb4f>
  404a6f:	8b 85 60 f3 ff ff    	mov    -0xca0(%rbp),%eax
  404a75:	c1 e0 03             	shl    $0x3,%eax
  404a78:	48 63 f0             	movslq %eax,%rsi
  404a7b:	0f 89 48 12 00 00    	jns    405cc9 <main+0x1c09>
  404a81:	48 f7 de             	neg    %rsi
  404a84:	31 d2                	xor    %edx,%edx
  404a86:	f3 48 0f bc d6       	tzcnt  %rsi,%rdx
  404a8b:	b9 06 00 00 00       	mov    $0x6,%ecx
  404a90:	39 ca                	cmp    %ecx,%edx
  404a92:	0f 4e ca             	cmovle %edx,%ecx
  404a95:	c4 e2 eb f7 c6       	shrx   %rdx,%rsi,%rax
  404a9a:	89 cf                	mov    %ecx,%edi
  404a9c:	ba 01 00 00 00       	mov    $0x1,%edx
  404aa1:	eb 0c                	jmp    404aaf <main+0x9ef>
  404aa3:	31 c9                	xor    %ecx,%ecx
  404aa5:	f3 48 0f bc c8       	tzcnt  %rax,%rcx
  404aaa:	c4 e2 f3 f7 c0       	shrx   %rcx,%rax,%rax
  404aaf:	48 39 c2             	cmp    %rax,%rdx
  404ab2:	76 02                	jbe    404ab6 <main+0x9f6>
  404ab4:	48 92                	xchg   %rax,%rdx
  404ab6:	48 29 d0             	sub    %rdx,%rax
  404ab9:	75 e8                	jne    404aa3 <main+0x9e3>
  404abb:	c4 e2 c1 f7 ca       	shlx   %rdi,%rdx,%rcx
  404ac0:	b8 40 00 00 00       	mov    $0x40,%eax
  404ac5:	31 d2                	xor    %edx,%edx
  404ac7:	48 f7 f1             	div    %rcx
  404aca:	48 0f af c6          	imul   %rsi,%rax
  404ace:	80 bd 04 f3 ff ff 00 	cmpb   $0x0,-0xcfc(%rbp)
  404ad5:	48 89 c1             	mov    %rax,%rcx
  404ad8:	75 38                	jne    404b12 <main+0xa52>
  404ada:	48 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%rax
  404ae1:	31 d2                	xor    %edx,%edx
  404ae3:	48 c1 e8 04          	shr    $0x4,%rax
  404ae7:	48 f7 f1             	div    %rcx
  404aea:	48 0f af c1          	imul   %rcx,%rax
  404aee:	48 89 85 68 f3 ff ff 	mov    %rax,-0xc98(%rbp)
  404af5:	48 85 c0             	test   %rax,%rax
  404af8:	0f 84 df 11 00 00    	je     405cdd <main+0x1c1d>
  404afe:	ba 02 00 00 00       	mov    $0x2,%edx
  404b03:	eb 3c                	jmp    404b41 <main+0xa81>
  404b05:	b9 40 00 00 00       	mov    $0x40,%ecx
  404b0a:	84 c0                	test   %al,%al
  404b0c:	0f 85 5d ff ff ff    	jne    404a6f <main+0x9af>
  404b12:	48 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%rax
  404b19:	be 18 00 00 00       	mov    $0x18,%esi
  404b1e:	31 d2                	xor    %edx,%edx
  404b20:	48 f7 f6             	div    %rsi
  404b23:	31 d2                	xor    %edx,%edx
  404b25:	48 f7 f1             	div    %rcx
  404b28:	48 0f af c1          	imul   %rcx,%rax
  404b2c:	48 89 85 68 f3 ff ff 	mov    %rax,-0xc98(%rbp)
  404b33:	48 85 c0             	test   %rax,%rax
  404b36:	0f 84 a1 11 00 00    	je     405cdd <main+0x1c1d>
  404b3c:	ba 03 00 00 00       	mov    $0x3,%edx
  404b41:	48 0f af d0          	imul   %rax,%rdx
  404b45:	44 0f b6 a5 18 f3 ff 	movzbl -0xce8(%rbp),%r12d
  404b4c:	ff 
  404b4d:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  404b54:	00 
  404b55:	48 8d 1c d5 00 00 00 	lea    0x0(,%rdx,8),%rbx
  404b5c:	00 
  404b5d:	44 89 e6             	mov    %r12d,%esi
  404b60:	48 89 9d 08 f3 ff ff 	mov    %rbx,-0xcf8(%rbp)
  404b67:	e8 14 5d 00 00       	callq  40a880 <_Z11alloc_bytesmb>
  404b6c:	48 89 85 70 f3 ff ff 	mov    %rax,-0xc90(%rbp)
  404b73:	48 8b 85 68 f3 ff ff 	mov    -0xc98(%rbp),%rax
  404b7a:	44 89 e6             	mov    %r12d,%esi
  404b7d:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  404b84:	00 
  404b85:	e8 f6 5c 00 00       	callq  40a880 <_Z11alloc_bytesmb>
  404b8a:	80 bd 04 f3 ff ff 00 	cmpb   $0x0,-0xcfc(%rbp)
  404b91:	48 89 85 78 f3 ff ff 	mov    %rax,-0xc88(%rbp)
  404b98:	74 1e                	je     404bb8 <main+0xaf8>
  404b9a:	48 8b 85 68 f3 ff ff 	mov    -0xc98(%rbp),%rax
  404ba1:	44 89 e6             	mov    %r12d,%esi
  404ba4:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  404bab:	00 
  404bac:	e8 cf 5c 00 00       	callq  40a880 <_Z11alloc_bytesmb>
  404bb1:	48 89 85 80 f3 ff ff 	mov    %rax,-0xc80(%rbp)
  404bb8:	48 8d 85 68 f3 ff ff 	lea    -0xc98(%rbp),%rax
  404bbf:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  404bc4:	48 8d 85 70 f3 ff ff 	lea    -0xc90(%rbp),%rax
  404bcb:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  404bd1:	48 8d 85 78 f3 ff ff 	lea    -0xc88(%rbp),%rax
  404bd8:	c5 f9 7f 85 00 f6 ff 	vmovdqa %xmm0,-0xa00(%rbp)
  404bdf:	ff 
  404be0:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  404be5:	48 8d 85 80 f3 ff ff 	lea    -0xc80(%rbp),%rax
  404bec:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  404bf2:	31 c9                	xor    %ecx,%ecx
  404bf4:	31 d2                	xor    %edx,%edx
  404bf6:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  404bfd:	bf 90 61 40 00       	mov    $0x406190,%edi
  404c02:	c5 f9 7f 85 10 f6 ff 	vmovdqa %xmm0,-0x9f0(%rbp)
  404c09:	ff 
  404c0a:	e8 91 e7 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  404c0f:	48 8d 9d b0 f3 ff ff 	lea    -0xc50(%rbp),%rbx
  404c16:	4c 8d b5 d0 f3 ff ff 	lea    -0xc30(%rbp),%r14
  404c1d:	c4 e1 f9 6e fb       	vmovq  %rbx,%xmm7
  404c22:	c4 c3 c1 22 fe 01    	vpinsrq $0x1,%r14,%xmm7,%xmm7
  404c28:	80 bd 54 f3 ff ff 00 	cmpb   $0x0,-0xcac(%rbp)
  404c2f:	c5 f9 7f bd 40 f3 ff 	vmovdqa %xmm7,-0xcc0(%rbp)
  404c36:	ff 
  404c37:	0f 84 ba 00 00 00    	je     404cf7 <main+0xc37>
  404c3d:	80 bd 20 f3 ff ff 00 	cmpb   $0x0,-0xce0(%rbp)
  404c44:	0f 84 9b 10 00 00    	je     405ce5 <main+0x1c25>
  404c4a:	48 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%rax
  404c51:	48 25 00 fe ff ff    	and    $0xfffffffffffffe00,%rax
  404c57:	48 89 85 90 f3 ff ff 	mov    %rax,-0xc70(%rbp)
  404c5e:	48 3d ff 01 00 00    	cmp    $0x1ff,%rax
  404c64:	0f 86 2a 10 00 00    	jbe    405c94 <main+0x1bd4>
  404c6a:	48 63 b5 64 f3 ff ff 	movslq -0xc9c(%rbp),%rsi
  404c71:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  404c78:	48 0f af c6          	imul   %rsi,%rax
  404c7c:	48 89 df             	mov    %rbx,%rdi
  404c7f:	48 c7 85 00 f6 ff ff 	movq   $0x0,-0xa00(%rbp)
  404c86:	00 00 00 00 
  404c8a:	48 89 85 08 f3 ff ff 	mov    %rax,-0xcf8(%rbp)
  404c91:	e8 ca 8f 00 00       	callq  40dc60 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_>
  404c96:	48 63 b5 64 f3 ff ff 	movslq -0xc9c(%rbp),%rsi
  404c9d:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  404ca4:	4c 89 f7             	mov    %r14,%rdi
  404ca7:	48 c7 85 00 f6 ff ff 	movq   $0x0,-0xa00(%rbp)
  404cae:	00 00 00 00 
  404cb2:	e8 a9 92 00 00       	callq  40df60 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd>
  404cb7:	0f b6 85 18 f3 ff ff 	movzbl -0xce8(%rbp),%eax
  404cbe:	c5 f9 6f ad 40 f3 ff 	vmovdqa -0xcc0(%rbp),%xmm5
  404cc5:	ff 
  404cc6:	88 85 18 f6 ff ff    	mov    %al,-0x9e8(%rbp)
  404ccc:	31 c9                	xor    %ecx,%ecx
  404cce:	48 8d 85 90 f3 ff ff 	lea    -0xc70(%rbp),%rax
  404cd5:	31 d2                	xor    %edx,%edx
  404cd7:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  404cde:	bf 10 a9 40 00       	mov    $0x40a910,%edi
  404ce3:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  404cea:	c5 f9 7f ad 00 f6 ff 	vmovdqa %xmm5,-0xa00(%rbp)
  404cf1:	ff 
  404cf2:	e8 a9 e6 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  404cf7:	80 bd 53 f3 ff ff 00 	cmpb   $0x0,-0xcad(%rbp)
  404cfe:	0f 84 50 02 00 00    	je     404f54 <main+0xe94>
  404d04:	83 bd 64 f3 ff ff 01 	cmpl   $0x1,-0xc9c(%rbp)
  404d0b:	0f 85 28 f2 ff ff    	jne    403f39 <main.cold+0x23d>
  404d11:	48 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%rax
  404d18:	48 c1 e8 06          	shr    $0x6,%rax
  404d1c:	48 89 85 68 f3 ff ff 	mov    %rax,-0xc98(%rbp)
  404d23:	48 83 f8 01          	cmp    $0x1,%rax
  404d27:	0f 86 67 0f 00 00    	jbe    405c94 <main+0x1bd4>
  404d2d:	48 c1 e0 06          	shl    $0x6,%rax
  404d31:	0f b6 b5 18 f3 ff ff 	movzbl -0xce8(%rbp),%esi
  404d38:	48 89 c7             	mov    %rax,%rdi
  404d3b:	48 89 85 08 f3 ff ff 	mov    %rax,-0xcf8(%rbp)
  404d42:	e8 39 5b 00 00       	callq  40a880 <_Z11alloc_bytesmb>
  404d47:	4c 8b a5 68 f3 ff ff 	mov    -0xc98(%rbp),%r12
  404d4e:	48 89 85 f8 f2 ff ff 	mov    %rax,-0xd08(%rbp)
  404d55:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
  404d5c:	ff ff 0f 
  404d5f:	49 39 c4             	cmp    %rax,%r12
  404d62:	0f 87 c0 11 00 00    	ja     405f28 <main+0x1e68>
  404d68:	4a 8d 04 e5 00 00 00 	lea    0x0(,%r12,8),%rax
  404d6f:	00 
  404d70:	4d 85 e4             	test   %r12,%r12
  404d73:	0f 84 22 10 00 00    	je     405d9b <main+0x1cdb>
  404d79:	48 89 c7             	mov    %rax,%rdi
  404d7c:	48 89 85 40 f3 ff ff 	mov    %rax,-0xcc0(%rbp)
  404d83:	e8 18 e5 ff ff       	callq  4032a0 <_Znwm@plt>
  404d88:	49 89 c0             	mov    %rax,%r8
  404d8b:	48 8b 85 40 f3 ff ff 	mov    -0xcc0(%rbp),%rax
  404d92:	49 ff cc             	dec    %r12
  404d95:	49 8d 0c 00          	lea    (%r8,%rax,1),%rcx
  404d99:	48 89 8d 40 f3 ff ff 	mov    %rcx,-0xcc0(%rbp)
  404da0:	49 c7 00 00 00 00 00 	movq   $0x0,(%r8)
  404da7:	49 8d 78 08          	lea    0x8(%r8),%rdi
  404dab:	74 23                	je     404dd0 <main+0xd10>
  404dad:	48 83 e8 08          	sub    $0x8,%rax
  404db1:	48 89 c2             	mov    %rax,%rdx
  404db4:	31 f6                	xor    %esi,%esi
  404db6:	4c 89 85 38 f3 ff ff 	mov    %r8,-0xcc8(%rbp)
  404dbd:	e8 be e3 ff ff       	callq  403180 <memset@plt>
  404dc2:	48 8b bd 40 f3 ff ff 	mov    -0xcc0(%rbp),%rdi
  404dc9:	4c 8b 85 38 f3 ff ff 	mov    -0xcc8(%rbp),%r8
  404dd0:	48 89 fa             	mov    %rdi,%rdx
  404dd3:	4c 29 c2             	sub    %r8,%rdx
  404dd6:	48 c1 ea 03          	shr    $0x3,%rdx
  404dda:	31 c0                	xor    %eax,%eax
  404ddc:	eb 07                	jmp    404de5 <main+0xd25>
  404dde:	49 89 04 c0          	mov    %rax,(%r8,%rax,8)
  404de2:	48 ff c0             	inc    %rax
  404de5:	48 39 c2             	cmp    %rax,%rdx
  404de8:	75 f4                	jne    404dde <main+0xd1e>
  404dea:	48 c7 85 00 f6 ff ff 	movq   $0x7,-0xa00(%rbp)
  404df1:	07 00 00 00 
  404df5:	b8 07 00 00 00       	mov    $0x7,%eax
  404dfa:	b9 01 00 00 00       	mov    $0x1,%ecx
  404dff:	48 be 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rsi
  404e06:	f4 51 58 
  404e09:	48 89 c2             	mov    %rax,%rdx
  404e0c:	0f 1f 40 00          	nopl   0x0(%rax)
  404e10:	48 89 d0             	mov    %rdx,%rax
  404e13:	48 c1 e8 3e          	shr    $0x3e,%rax
  404e17:	48 31 d0             	xor    %rdx,%rax
  404e1a:	48 0f af c6          	imul   %rsi,%rax
  404e1e:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  404e22:	48 89 94 cd 00 f6 ff 	mov    %rdx,-0xa00(%rbp,%rcx,8)
  404e29:	ff 
  404e2a:	48 ff c1             	inc    %rcx
  404e2d:	48 81 f9 38 01 00 00 	cmp    $0x138,%rcx
  404e34:	75 da                	jne    404e10 <main+0xd50>
  404e36:	48 89 fe             	mov    %rdi,%rsi
  404e39:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  404e40:	4c 89 c7             	mov    %r8,%rdi
  404e43:	4c 89 85 38 f3 ff ff 	mov    %r8,-0xcc8(%rbp)
  404e4a:	48 c7 45 c0 38 01 00 	movq   $0x138,-0x40(%rbp)
  404e51:	00 
  404e52:	e8 b9 95 00 00       	callq  40e410 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>
  404e57:	48 8b b5 68 f3 ff ff 	mov    -0xc98(%rbp),%rsi
  404e5e:	4c 8b 8d f8 f2 ff ff 	mov    -0xd08(%rbp),%r9
  404e65:	4c 8b 85 38 f3 ff ff 	mov    -0xcc8(%rbp),%r8
  404e6c:	31 c9                	xor    %ecx,%ecx
  404e6e:	eb 26                	jmp    404e96 <main+0xdd6>
  404e70:	48 ff c1             	inc    %rcx
  404e73:	b8 06 00 00 00       	mov    $0x6,%eax
  404e78:	c4 c2 f9 f7 7c c8 f8 	shlx   %rax,-0x8(%r8,%rcx,8),%rdi
  404e7f:	31 d2                	xor    %edx,%edx
  404e81:	48 89 c8             	mov    %rcx,%rax
  404e84:	48 f7 f6             	div    %rsi
  404e87:	49 8b 04 d0          	mov    (%r8,%rdx,8),%rax
  404e8b:	48 c1 e0 06          	shl    $0x6,%rax
  404e8f:	4c 01 c8             	add    %r9,%rax
  404e92:	49 89 04 39          	mov    %rax,(%r9,%rdi,1)
  404e96:	48 39 ce             	cmp    %rcx,%rsi
  404e99:	75 d5                	jne    404e70 <main+0xdb0>
  404e9b:	48 8b 85 f8 f2 ff ff 	mov    -0xd08(%rbp),%rax
  404ea2:	48 89 85 88 f3 ff ff 	mov    %rax,-0xc78(%rbp)
  404ea9:	4d 85 c0             	test   %r8,%r8
  404eac:	74 19                	je     404ec7 <main+0xe07>
  404eae:	48 8b b5 40 f3 ff ff 	mov    -0xcc0(%rbp),%rsi
  404eb5:	4c 89 c7             	mov    %r8,%rdi
  404eb8:	4c 29 c6             	sub    %r8,%rsi
  404ebb:	e8 f0 e3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  404ec0:	48 8b b5 68 f3 ff ff 	mov    -0xc98(%rbp),%rsi
  404ec7:	31 c0                	xor    %eax,%eax
  404ec9:	eb 0d                	jmp    404ed8 <main+0xe18>
  404ecb:	48 8b 12             	mov    (%rdx),%rdx
  404ece:	48 ff c0             	inc    %rax
  404ed1:	48 89 95 88 f3 ff ff 	mov    %rdx,-0xc78(%rbp)
  404ed8:	48 8b 95 88 f3 ff ff 	mov    -0xc78(%rbp),%rdx
  404edf:	48 39 c6             	cmp    %rax,%rsi
  404ee2:	75 e7                	jne    404ecb <main+0xe0b>
  404ee4:	48 39 95 f8 f2 ff ff 	cmp    %rdx,-0xd08(%rbp)
  404eeb:	0f 94 c0             	sete   %al
  404eee:	20 85 5b f3 ff ff    	and    %al,-0xca5(%rbp)
  404ef4:	eb 69                	jmp    404f5f <main+0xe9f>
  404ef6:	8b 9d f8 f2 ff ff    	mov    -0xd08(%rbp),%ebx
  404efc:	89 9d 60 f3 ff ff    	mov    %ebx,-0xca0(%rbp)
  404f02:	85 c0                	test   %eax,%eax
  404f04:	75 1f                	jne    404f25 <main+0xe65>
  404f06:	8b 9d f8 f2 ff ff    	mov    -0xd08(%rbp),%ebx
  404f0c:	83 fb 18             	cmp    $0x18,%ebx
  404f0f:	77 14                	ja     404f25 <main+0xe65>
  404f11:	48 c7 c0 bf ef ff fe 	mov    $0xfffffffffeffefbf,%rax
  404f18:	c4 e2 e2 f7 c0       	sarx   %rbx,%rax,%rax
  404f1d:	a8 01                	test   $0x1,%al
  404f1f:	0f 84 1d fa ff ff    	je     404942 <main+0x882>
  404f25:	80 bd 52 f3 ff ff 00 	cmpb   $0x0,-0xcae(%rbp)
  404f2c:	0f 84 50 f6 ff ff    	je     404582 <main+0x4c2>
  404f32:	8b 9d f8 f2 ff ff    	mov    -0xd08(%rbp),%ebx
  404f38:	89 d8                	mov    %ebx,%eax
  404f3a:	83 e0 fb             	and    $0xfffffffb,%eax
  404f3d:	83 f8 08             	cmp    $0x8,%eax
  404f40:	0f 84 fc f9 ff ff    	je     404942 <main+0x882>
  404f46:	83 fb 10             	cmp    $0x10,%ebx
  404f49:	0f 84 f3 f9 ff ff    	je     404942 <main+0x882>
  404f4f:	e9 2e f6 ff ff       	jmpq   404582 <main+0x4c2>
  404f54:	48 c7 85 f8 f2 ff ff 	movq   $0x0,-0xd08(%rbp)
  404f5b:	00 00 00 00 
  404f5f:	48 8d 85 98 f3 ff ff 	lea    -0xc68(%rbp),%rax
  404f66:	0f b6 8d 55 f3 ff ff 	movzbl -0xcab(%rbp),%ecx
  404f6d:	c4 e1 f9 6e f8       	vmovq  %rax,%xmm7
  404f72:	48 c7 85 98 f3 ff ff 	movq   $0x0,-0xc68(%rbp)
  404f79:	00 00 00 00 
  404f7d:	c4 c3 c1 22 fd 01    	vpinsrq $0x1,%r13,%xmm7,%xmm7
  404f83:	84 c9                	test   %cl,%cl
  404f85:	75 09                	jne    404f90 <main+0xed0>
  404f87:	80 bd 56 f3 ff ff 00 	cmpb   $0x0,-0xcaa(%rbp)
  404f8e:	74 7a                	je     40500a <main+0xf4a>
  404f90:	c5 fb 10 1d a0 a6 00 	vmovsd 0xa6a0(%rip),%xmm3        # 40f638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  404f97:	00 
  404f98:	c5 fb 10 35 70 a6 00 	vmovsd 0xa670(%rip),%xmm6        # 40f610 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x110>
  404f9f:	00 
  404fa0:	c5 fa 10 15 88 a7 00 	vmovss 0xa788(%rip),%xmm2        # 40f730 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x230>
  404fa7:	00 
  404fa8:	c5 fa 10 0d 84 a7 00 	vmovss 0xa784(%rip),%xmm1        # 40f734 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x234>
  404faf:	00 
  404fb0:	c5 fa 10 2d 84 a7 00 	vmovss 0xa784(%rip),%xmm5        # 40f73c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x23c>
  404fb7:	00 
  404fb8:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  404fbc:	31 d2                	xor    %edx,%edx
  404fbe:	ff c2                	inc    %edx
  404fc0:	84 c9                	test   %cl,%cl
  404fc2:	0f 84 6b 09 00 00    	je     405933 <main+0x1873>
  404fc8:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  404fcc:	c5 fa 2a c2          	vcvtsi2ss %edx,%xmm0,%xmm0
  404fd0:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  404fd5:	0f 1f 00             	nopl   (%rax)
  404fd8:	c4 e2 69 b9 c1       	vfmadd231ss %xmm1,%xmm2,%xmm0
  404fdd:	ff c8                	dec    %eax
  404fdf:	75 f7                	jne    404fd8 <main+0xf18>
  404fe1:	c5 fa 59 c5          	vmulss %xmm5,%xmm0,%xmm0
  404fe5:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  404fe9:	c5 db 58 e0          	vaddsd %xmm0,%xmm4,%xmm4
  404fed:	83 fa 0c             	cmp    $0xc,%edx
  404ff0:	75 cc                	jne    404fbe <main+0xefe>
  404ff2:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
  404ff6:	c5 d3 2a 85 64 f3 ff 	vcvtsi2sdl -0xc9c(%rbp),%xmm5,%xmm0
  404ffd:	ff 
  404ffe:	c5 fb 59 c4          	vmulsd %xmm4,%xmm0,%xmm0
  405002:	c5 fb 11 85 98 f3 ff 	vmovsd %xmm0,-0xc68(%rbp)
  405009:	ff 
  40500a:	48 8d 85 53 f3 ff ff 	lea    -0xcad(%rbp),%rax
  405011:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  405018:	48 8d 85 88 f3 ff ff 	lea    -0xc78(%rbp),%rax
  40501f:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  405026:	48 8d 85 50 f3 ff ff 	lea    -0xcb0(%rbp),%rax
  40502d:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  405034:	48 8d 85 68 f3 ff ff 	lea    -0xc98(%rbp),%rax
  40503b:	48 89 85 18 f6 ff ff 	mov    %rax,-0x9e8(%rbp)
  405042:	48 8d 85 70 f3 ff ff 	lea    -0xc90(%rbp),%rax
  405049:	48 89 85 20 f6 ff ff 	mov    %rax,-0x9e0(%rbp)
  405050:	48 8d 85 78 f3 ff ff 	lea    -0xc88(%rbp),%rax
  405057:	48 89 85 28 f6 ff ff 	mov    %rax,-0x9d8(%rbp)
  40505e:	48 8d 85 80 f3 ff ff 	lea    -0xc80(%rbp),%rax
  405065:	48 89 85 30 f6 ff ff 	mov    %rax,-0x9d0(%rbp)
  40506c:	48 8d 85 51 f3 ff ff 	lea    -0xcaf(%rbp),%rax
  405073:	48 89 85 38 f6 ff ff 	mov    %rax,-0x9c8(%rbp)
  40507a:	48 8d 85 54 f3 ff ff 	lea    -0xcac(%rbp),%rax
  405081:	48 89 85 40 f6 ff ff 	mov    %rax,-0x9c0(%rbp)
  405088:	48 8d 85 90 f3 ff ff 	lea    -0xc70(%rbp),%rax
  40508f:	48 89 85 50 f6 ff ff 	mov    %rax,-0x9b0(%rbp)
  405096:	48 8d 85 a0 f3 ff ff 	lea    -0xc60(%rbp),%rax
  40509d:	48 89 85 60 f6 ff ff 	mov    %rax,-0x9a0(%rbp)
  4050a4:	48 8d 85 5b f3 ff ff 	lea    -0xca5(%rbp),%rax
  4050ab:	48 89 85 68 f6 ff ff 	mov    %rax,-0x998(%rbp)
  4050b2:	48 8d 85 a8 f3 ff ff 	lea    -0xc58(%rbp),%rax
  4050b9:	48 89 85 70 f6 ff ff 	mov    %rax,-0x990(%rbp)
  4050c0:	48 8d 85 52 f3 ff ff 	lea    -0xcae(%rbp),%rax
  4050c7:	48 89 85 78 f6 ff ff 	mov    %rax,-0x988(%rbp)
  4050ce:	48 8d 85 60 f3 ff ff 	lea    -0xca0(%rbp),%rax
  4050d5:	48 89 85 80 f6 ff ff 	mov    %rax,-0x980(%rbp)
  4050dc:	48 8d 85 5c f3 ff ff 	lea    -0xca4(%rbp),%rax
  4050e3:	48 89 85 88 f6 ff ff 	mov    %rax,-0x978(%rbp)
  4050ea:	48 8d 85 57 f3 ff ff 	lea    -0xca9(%rbp),%rax
  4050f1:	48 89 85 90 f6 ff ff 	mov    %rax,-0x970(%rbp)
  4050f8:	48 8d 85 58 f3 ff ff 	lea    -0xca8(%rbp),%rax
  4050ff:	48 89 85 98 f6 ff ff 	mov    %rax,-0x968(%rbp)
  405106:	48 8d 85 59 f3 ff ff 	lea    -0xca7(%rbp),%rax
  40510d:	48 89 85 a0 f6 ff ff 	mov    %rax,-0x960(%rbp)
  405114:	48 8d 85 5a f3 ff ff 	lea    -0xca6(%rbp),%rax
  40511b:	48 89 85 a8 f6 ff ff 	mov    %rax,-0x958(%rbp)
  405122:	48 8d 85 55 f3 ff ff 	lea    -0xcab(%rbp),%rax
  405129:	48 89 85 b0 f6 ff ff 	mov    %rax,-0x950(%rbp)
  405130:	80 bd 53 f3 ff ff 00 	cmpb   $0x0,-0xcad(%rbp)
  405137:	48 8d 85 56 f3 ff ff 	lea    -0xcaa(%rbp),%rax
  40513e:	48 c7 85 a0 f3 ff ff 	movq   $0x0,-0xc60(%rbp)
  405145:	00 00 00 00 
  405149:	48 c7 85 a8 f3 ff ff 	movq   $0x0,-0xc58(%rbp)
  405150:	00 00 00 00 
  405154:	48 89 9d 48 f6 ff ff 	mov    %rbx,-0x9b8(%rbp)
  40515b:	4c 89 b5 58 f6 ff ff 	mov    %r14,-0x9a8(%rbp)
  405162:	48 89 85 b8 f6 ff ff 	mov    %rax,-0x948(%rbp)
  405169:	c5 f9 7f bd c0 f6 ff 	vmovdqa %xmm7,-0x940(%rbp)
  405170:	ff 
  405171:	0f 84 b7 0b 00 00    	je     405d2e <main+0x1c6e>
  405177:	80 bd 50 f3 ff ff 00 	cmpb   $0x0,-0xcb0(%rbp)
  40517e:	be af f0 40 00       	mov    $0x40f0af,%esi
  405183:	75 77                	jne    4051fc <main+0x113c>
  405185:	80 bd 51 f3 ff ff 00 	cmpb   $0x0,-0xcaf(%rbp)
  40518c:	be c8 f0 40 00       	mov    $0x40f0c8,%esi
  405191:	75 69                	jne    4051fc <main+0x113c>
  405193:	80 bd 54 f3 ff ff 00 	cmpb   $0x0,-0xcac(%rbp)
  40519a:	be d8 f0 40 00       	mov    $0x40f0d8,%esi
  40519f:	75 5b                	jne    4051fc <main+0x113c>
  4051a1:	80 bd 52 f3 ff ff 00 	cmpb   $0x0,-0xcae(%rbp)
  4051a8:	be e4 f0 40 00       	mov    $0x40f0e4,%esi
  4051ad:	75 4d                	jne    4051fc <main+0x113c>
  4051af:	80 bd 53 f3 ff ff 00 	cmpb   $0x0,-0xcad(%rbp)
  4051b6:	be f3 f0 40 00       	mov    $0x40f0f3,%esi
  4051bb:	75 3f                	jne    4051fc <main+0x113c>
  4051bd:	80 bd 57 f3 ff ff 00 	cmpb   $0x0,-0xca9(%rbp)
  4051c4:	be 06 f1 40 00       	mov    $0x40f106,%esi
  4051c9:	75 31                	jne    4051fc <main+0x113c>
  4051cb:	80 bd 58 f3 ff ff 00 	cmpb   $0x0,-0xca8(%rbp)
  4051d2:	be 01 f1 40 00       	mov    $0x40f101,%esi
  4051d7:	75 23                	jne    4051fc <main+0x113c>
  4051d9:	80 bd 59 f3 ff ff 00 	cmpb   $0x0,-0xca7(%rbp)
  4051e0:	be 0f f1 40 00       	mov    $0x40f10f,%esi
  4051e5:	75 15                	jne    4051fc <main+0x113c>
  4051e7:	80 bd 5a f3 ff ff 00 	cmpb   $0x0,-0xca6(%rbp)
  4051ee:	be 19 f1 40 00       	mov    $0x40f119,%esi
  4051f3:	b8 bc f0 40 00       	mov    $0x40f0bc,%eax
  4051f8:	48 0f 44 f0          	cmove  %rax,%rsi
  4051fc:	48 8d bd 10 f4 ff ff 	lea    -0xbf0(%rbp),%rdi
  405203:	e8 28 55 00 00       	callq  40a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  405208:	80 bd 04 f3 ff ff 00 	cmpb   $0x0,-0xcfc(%rbp)
  40520f:	be 1c f4 40 00       	mov    $0x40f41c,%esi
  405214:	75 55                	jne    40526b <main+0x11ab>
  405216:	80 bd 53 f3 ff ff 00 	cmpb   $0x0,-0xcad(%rbp)
  40521d:	75 4c                	jne    40526b <main+0x11ab>
  40521f:	80 bd 54 f3 ff ff 00 	cmpb   $0x0,-0xcac(%rbp)
  405226:	75 43                	jne    40526b <main+0x11ab>
  405228:	80 bd 57 f3 ff ff 00 	cmpb   $0x0,-0xca9(%rbp)
  40522f:	be da f1 40 00       	mov    $0x40f1da,%esi
  405234:	75 35                	jne    40526b <main+0x11ab>
  405236:	80 bd 5a f3 ff ff 00 	cmpb   $0x0,-0xca6(%rbp)
  40523d:	75 2c                	jne    40526b <main+0x11ab>
  40523f:	80 bd 58 f3 ff ff 00 	cmpb   $0x0,-0xca8(%rbp)
  405246:	be 34 f1 40 00       	mov    $0x40f134,%esi
  40524b:	75 1e                	jne    40526b <main+0x11ab>
  40524d:	80 bd 59 f3 ff ff 00 	cmpb   $0x0,-0xca7(%rbp)
  405254:	75 15                	jne    40526b <main+0x11ab>
  405256:	80 bd 55 f3 ff ff 00 	cmpb   $0x0,-0xcab(%rbp)
  40525d:	be 2f f1 40 00       	mov    $0x40f12f,%esi
  405262:	b8 2a f1 40 00       	mov    $0x40f12a,%eax
  405267:	48 0f 44 f0          	cmove  %rax,%rsi
  40526b:	48 8d bd 30 f4 ff ff 	lea    -0xbd0(%rbp),%rdi
  405272:	e8 b9 54 00 00       	callq  40a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  405277:	80 bd 57 f3 ff ff 00 	cmpb   $0x0,-0xca9(%rbp)
  40527e:	0f 85 cb 0a 00 00    	jne    405d4f <main+0x1c8f>
  405284:	44 0f b6 a5 58 f3 ff 	movzbl -0xca8(%rbp),%r12d
  40528b:	ff 
  40528c:	45 84 e4             	test   %r12b,%r12b
  40528f:	0f 85 d0 0a 00 00    	jne    405d65 <main+0x1ca5>
  405295:	80 bd 59 f3 ff ff 00 	cmpb   $0x0,-0xca7(%rbp)
  40529c:	0f 85 0e 0b 00 00    	jne    405db0 <main+0x1cf0>
  4052a2:	44 0f b6 a5 5a f3 ff 	movzbl -0xca6(%rbp),%r12d
  4052a9:	ff 
  4052aa:	45 84 e4             	test   %r12b,%r12b
  4052ad:	0f 85 13 0b 00 00    	jne    405dc6 <main+0x1d06>
  4052b3:	80 bd 51 f3 ff ff 00 	cmpb   $0x0,-0xcaf(%rbp)
  4052ba:	0f 85 97 0b 00 00    	jne    405e57 <main+0x1d97>
  4052c0:	80 bd 54 f3 ff ff 00 	cmpb   $0x0,-0xcac(%rbp)
  4052c7:	0f 85 45 0c 00 00    	jne    405f12 <main+0x1e52>
  4052cd:	0f b6 9d 52 f3 ff ff 	movzbl -0xcae(%rbp),%ebx
  4052d4:	84 db                	test   %bl,%bl
  4052d6:	0f 85 9b 0b 00 00    	jne    405e77 <main+0x1db7>
  4052dc:	80 bd 53 f3 ff ff 00 	cmpb   $0x0,-0xcad(%rbp)
  4052e3:	be 39 f1 40 00       	mov    $0x40f139,%esi
  4052e8:	b8 55 f1 40 00       	mov    $0x40f155,%eax
  4052ed:	48 0f 44 f0          	cmove  %rax,%rsi
  4052f1:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  4052f8:	e8 33 54 00 00       	callq  40a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4052fd:	0f b6 9d 04 f3 ff ff 	movzbl -0xcfc(%rbp),%ebx
  405304:	84 db                	test   %bl,%bl
  405306:	75 1d                	jne    405325 <main+0x1265>
  405308:	0f b6 9d 52 f3 ff ff 	movzbl -0xcae(%rbp),%ebx
  40530f:	84 db                	test   %bl,%bl
  405311:	75 12                	jne    405325 <main+0x1265>
  405313:	0f b6 9d 53 f3 ff ff 	movzbl -0xcad(%rbp),%ebx
  40531a:	84 db                	test   %bl,%bl
  40531c:	75 07                	jne    405325 <main+0x1265>
  40531e:	0f b6 9d 54 f3 ff ff 	movzbl -0xcac(%rbp),%ebx
  405325:	48 8b 05 54 cf 00 00 	mov    0xcf54(%rip),%rax        # 412280 <_ZSt4cout@@GLIBCXX_3.4>
  40532c:	ba 0e 00 00 00       	mov    $0xe,%edx
  405331:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  405335:	be 61 f2 40 00       	mov    $0x40f261,%esi
  40533a:	bf 80 22 41 00       	mov    $0x412280,%edi
  40533f:	48 c7 80 88 22 41 00 	movq   $0xf,0x412288(%rax)
  405346:	0f 00 00 00 
  40534a:	e8 91 df ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40534f:	48 8b 95 18 f4 ff ff 	mov    -0xbe8(%rbp),%rdx
  405356:	48 8b b5 10 f4 ff ff 	mov    -0xbf0(%rbp),%rsi
  40535d:	bf 80 22 41 00       	mov    $0x412280,%edi
  405362:	e8 79 df ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405367:	ba 0c 00 00 00       	mov    $0xc,%edx
  40536c:	be 70 f2 40 00       	mov    $0x40f270,%esi
  405371:	48 89 c7             	mov    %rax,%rdi
  405374:	49 89 c4             	mov    %rax,%r12
  405377:	e8 64 df ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40537c:	48 8b 95 f8 f3 ff ff 	mov    -0xc08(%rbp),%rdx
  405383:	48 8b b5 f0 f3 ff ff 	mov    -0xc10(%rbp),%rsi
  40538a:	4c 89 e7             	mov    %r12,%rdi
  40538d:	e8 4e df ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405392:	ba 0b 00 00 00       	mov    $0xb,%edx
  405397:	be 7d f2 40 00       	mov    $0x40f27d,%esi
  40539c:	48 89 c7             	mov    %rax,%rdi
  40539f:	49 89 c4             	mov    %rax,%r12
  4053a2:	e8 39 df ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4053a7:	48 8b 95 38 f4 ff ff 	mov    -0xbc8(%rbp),%rdx
  4053ae:	48 8b b5 30 f4 ff ff 	mov    -0xbd0(%rbp),%rsi
  4053b5:	4c 89 e7             	mov    %r12,%rdi
  4053b8:	e8 23 df ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4053bd:	ba 14 00 00 00       	mov    $0x14,%edx
  4053c2:	be 89 f2 40 00       	mov    $0x40f289,%esi
  4053c7:	48 89 c7             	mov    %rax,%rdi
  4053ca:	49 89 c4             	mov    %rax,%r12
  4053cd:	e8 0e df ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4053d2:	48 8b 95 58 f4 ff ff 	mov    -0xba8(%rbp),%rdx
  4053d9:	48 8b b5 50 f4 ff ff 	mov    -0xbb0(%rbp),%rsi
  4053e0:	4c 89 e7             	mov    %r12,%rdi
  4053e3:	e8 f8 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4053e8:	ba 0c 00 00 00       	mov    $0xc,%edx
  4053ed:	be 9e f2 40 00       	mov    $0x40f29e,%esi
  4053f2:	48 89 c7             	mov    %rax,%rdi
  4053f5:	49 89 c4             	mov    %rax,%r12
  4053f8:	e8 e3 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4053fd:	8b b5 64 f3 ff ff    	mov    -0xc9c(%rbp),%esi
  405403:	4c 89 e7             	mov    %r12,%rdi
  405406:	e8 35 e0 ff ff       	callq  403440 <_ZNSolsEi@plt>
  40540b:	ba 15 00 00 00       	mov    $0x15,%edx
  405410:	be ab f2 40 00       	mov    $0x40f2ab,%esi
  405415:	48 89 c7             	mov    %rax,%rdi
  405418:	49 89 c4             	mov    %rax,%r12
  40541b:	e8 c0 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405420:	31 f6                	xor    %esi,%esi
  405422:	84 db                	test   %bl,%bl
  405424:	48 0f 45 b5 08 f3 ff 	cmovne -0xcf8(%rbp),%rsi
  40542b:	ff 
  40542c:	4c 89 e7             	mov    %r12,%rdi
  40542f:	e8 ac dd ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405434:	ba 14 00 00 00       	mov    $0x14,%edx
  405439:	be c1 f2 40 00       	mov    $0x40f2c1,%esi
  40543e:	48 89 c7             	mov    %rax,%rdi
  405441:	49 89 c4             	mov    %rax,%r12
  405444:	e8 97 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405449:	48 8b b5 90 f3 ff ff 	mov    -0xc70(%rbp),%rsi
  405450:	4c 89 e7             	mov    %r12,%rdi
  405453:	e8 88 dd ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405458:	ba 0d 00 00 00       	mov    $0xd,%edx
  40545d:	be d6 f2 40 00       	mov    $0x40f2d6,%esi
  405462:	48 89 c7             	mov    %rax,%rdi
  405465:	49 89 c4             	mov    %rax,%r12
  405468:	e8 73 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40546d:	0f b6 b5 18 f3 ff ff 	movzbl -0xce8(%rbp),%esi
  405474:	4c 89 e7             	mov    %r12,%rdi
  405477:	e8 c4 df ff ff       	callq  403440 <_ZNSolsEi@plt>
  40547c:	ba 05 00 00 00       	mov    $0x5,%edx
  405481:	be e4 f2 40 00       	mov    $0x40f2e4,%esi
  405486:	48 89 c7             	mov    %rax,%rdi
  405489:	49 89 c4             	mov    %rax,%r12
  40548c:	e8 4f de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405491:	8b b5 5c f3 ff ff    	mov    -0xca4(%rbp),%esi
  405497:	4c 89 e7             	mov    %r12,%rdi
  40549a:	e8 a1 df ff ff       	callq  403440 <_ZNSolsEi@plt>
  40549f:	ba 0a 00 00 00       	mov    $0xa,%edx
  4054a4:	be ea f2 40 00       	mov    $0x40f2ea,%esi
  4054a9:	48 89 c7             	mov    %rax,%rdi
  4054ac:	49 89 c4             	mov    %rax,%r12
  4054af:	e8 2c de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054b4:	80 bd 52 f3 ff ff 00 	cmpb   $0x0,-0xcae(%rbp)
  4054bb:	75 0b                	jne    4054c8 <main+0x1408>
  4054bd:	31 f6                	xor    %esi,%esi
  4054bf:	80 bd 5a f3 ff ff 00 	cmpb   $0x0,-0xca6(%rbp)
  4054c6:	74 06                	je     4054ce <main+0x140e>
  4054c8:	8b b5 60 f3 ff ff    	mov    -0xca0(%rbp),%esi
  4054ce:	4c 89 e7             	mov    %r12,%rdi
  4054d1:	e8 6a df ff ff       	callq  403440 <_ZNSolsEi@plt>
  4054d6:	ba 0c 00 00 00       	mov    $0xc,%edx
  4054db:	be f5 f2 40 00       	mov    $0x40f2f5,%esi
  4054e0:	48 89 c7             	mov    %rax,%rdi
  4054e3:	49 89 c4             	mov    %rax,%r12
  4054e6:	e8 f5 dd ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054eb:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  4054f2:	4c 89 fe             	mov    %r15,%rsi
  4054f5:	48 89 c7             	mov    %rax,%rdi
  4054f8:	48 89 85 30 f3 ff ff 	mov    %rax,-0xcd0(%rbp)
  4054ff:	e8 4c 80 00 00       	callq  40d550 <_ZNK8Counters4readEv>
  405504:	80 bd 00 f5 ff ff 00 	cmpb   $0x0,-0xb00(%rbp)
  40550b:	be 63 f1 40 00       	mov    $0x40f163,%esi
  405510:	b8 68 f1 40 00       	mov    $0x40f168,%eax
  405515:	48 0f 44 f0          	cmove  %rax,%rsi
  405519:	4c 89 e7             	mov    %r12,%rdi
  40551c:	e8 6f dd ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  405521:	48 89 c7             	mov    %rax,%rdi
  405524:	be 02 f3 40 00       	mov    $0x40f302,%esi
  405529:	e8 62 dd ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40552e:	c7 85 40 f3 ff ff 00 	movl   $0x0,-0xcc0(%rbp)
  405535:	00 00 00 
  405538:	c5 fb 10 85 10 f3 ff 	vmovsd -0xcf0(%rbp),%xmm0
  40553f:	ff 
  405540:	8b bd 40 f3 ff ff    	mov    -0xcc0(%rbp),%edi
  405546:	e8 85 54 00 00       	callq  40a9d0 <_Z6windowid>
  40554b:	c5 fb 10 2d 3d a1 00 	vmovsd 0xa13d(%rip),%xmm5        # 40f690 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x190>
  405552:	00 
  405553:	4c 89 fe             	mov    %r15,%rsi
  405556:	c5 d3 59 85 10 f3 ff 	vmulsd -0xcf0(%rbp),%xmm5,%xmm0
  40555d:	ff 
  40555e:	48 8d bd b0 f4 ff ff 	lea    -0xb50(%rbp),%rdi
  405565:	48 89 85 28 f3 ff ff 	mov    %rax,-0xcd8(%rbp)
  40556c:	62 f1 ff 08 78 d8    	vcvttsd2usi %xmm0,%rbx
  405572:	48 01 c3             	add    %rax,%rbx
  405575:	e8 d6 7f 00 00       	callq  40d550 <_ZNK8Counters4readEv>
  40557a:	48 8b b5 30 f3 ff ff 	mov    -0xcd0(%rbp),%rsi
  405581:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  405585:	bf 01 00 00 00       	mov    $0x1,%edi
  40558a:	c5 f9 7f 85 00 f5 ff 	vmovdqa %xmm0,-0xb00(%rbp)
  405591:	ff 
  405592:	e8 e9 dc ff ff       	callq  403280 <clock_gettime@plt>
  405597:	48 69 85 00 f5 ff ff 	imul   $0x3b9aca00,-0xb00(%rbp),%rax
  40559e:	00 ca 9a 3b 
  4055a2:	4c 89 bd 20 f3 ff ff 	mov    %r15,-0xce0(%rbp)
  4055a9:	4c 8b bd 30 f3 ff ff 	mov    -0xcd0(%rbp),%r15
  4055b0:	48 03 85 08 f5 ff ff 	add    -0xaf8(%rbp),%rax
  4055b7:	48 89 85 38 f3 ff ff 	mov    %rax,-0xcc8(%rbp)
  4055be:	45 31 ed             	xor    %r13d,%r13d
  4055c1:	45 31 f6             	xor    %r14d,%r14d
  4055c4:	45 31 e4             	xor    %r12d,%r12d
  4055c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4055ce:	00 00 
  4055d0:	48 89 de             	mov    %rbx,%rsi
  4055d3:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  4055da:	e8 f1 4b 00 00       	callq  40a1d0 <_ZZ4mainENKUlmE_clEm>
  4055df:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4055e3:	4c 89 fe             	mov    %r15,%rsi
  4055e6:	bf 01 00 00 00       	mov    $0x1,%edi
  4055eb:	49 01 c4             	add    %rax,%r12
  4055ee:	4c 03 ad a8 f3 ff ff 	add    -0xc58(%rbp),%r13
  4055f5:	c5 f9 7f 85 00 f5 ff 	vmovdqa %xmm0,-0xb00(%rbp)
  4055fc:	ff 
  4055fd:	e8 7e dc ff ff       	callq  403280 <clock_gettime@plt>
  405602:	48 69 85 00 f5 ff ff 	imul   $0x3b9aca00,-0xb00(%rbp),%rax
  405609:	00 ca 9a 3b 
  40560d:	49 ff c6             	inc    %r14
  405610:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  405614:	48 03 85 08 f5 ff ff 	add    -0xaf8(%rbp),%rax
  40561b:	48 39 c3             	cmp    %rax,%rbx
  40561e:	77 b0                	ja     4055d0 <main+0x1510>
  405620:	4c 89 b5 18 f3 ff ff 	mov    %r14,-0xce8(%rbp)
  405627:	4c 8b b5 30 f3 ff ff 	mov    -0xcd0(%rbp),%r14
  40562e:	bf 01 00 00 00       	mov    $0x1,%edi
  405633:	4c 89 f6             	mov    %r14,%rsi
  405636:	4c 8b bd 20 f3 ff ff 	mov    -0xce0(%rbp),%r15
  40563d:	c5 f9 7f 85 00 f5 ff 	vmovdqa %xmm0,-0xb00(%rbp)
  405644:	ff 
  405645:	e8 36 dc ff ff       	callq  403280 <clock_gettime@plt>
  40564a:	48 69 9d 00 f5 ff ff 	imul   $0x3b9aca00,-0xb00(%rbp),%rbx
  405651:	00 ca 9a 3b 
  405655:	4c 89 fe             	mov    %r15,%rsi
  405658:	4c 89 f7             	mov    %r14,%rdi
  40565b:	48 03 9d 08 f5 ff ff 	add    -0xaf8(%rbp),%rbx
  405662:	e8 e9 7e 00 00       	callq  40d550 <_ZNK8Counters4readEv>
  405667:	0f b6 85 00 f5 ff ff 	movzbl -0xb00(%rbp),%eax
  40566e:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
  405672:	88 85 20 f3 ff ff    	mov    %al,-0xce0(%rbp)
  405678:	48 89 d8             	mov    %rbx,%rax
  40567b:	48 2b 85 38 f3 ff ff 	sub    -0xcc8(%rbp),%rax
  405682:	62 f1 d7 08 7b c0    	vcvtusi2sd %rax,%xmm5,%xmm0
  405688:	83 bd 40 f3 ff ff 00 	cmpl   $0x0,-0xcc0(%rbp)
  40568f:	c5 fb 59 25 c1 9f 00 	vmulsd 0x9fc1(%rip),%xmm0,%xmm4        # 40f658 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  405696:	00 
  405697:	c4 c1 f9 7e e6       	vmovq  %xmm4,%r14
  40569c:	74 1d                	je     4056bb <main+0x15fb>
  40569e:	ba 01 00 00 00       	mov    $0x1,%edx
  4056a3:	48 8d b5 70 f4 ff ff 	lea    -0xb90(%rbp),%rsi
  4056aa:	bf 80 22 41 00       	mov    $0x412280,%edi
  4056af:	c6 85 70 f4 ff ff 2c 	movb   $0x2c,-0xb90(%rbp)
  4056b6:	e8 25 dc ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4056bb:	ba 13 00 00 00       	mov    $0x13,%edx
  4056c0:	be 18 f3 40 00       	mov    $0x40f318,%esi
  4056c5:	bf 80 22 41 00       	mov    $0x412280,%edi
  4056ca:	e8 11 dc ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4056cf:	c4 c1 f9 6e c6       	vmovq  %r14,%xmm0
  4056d4:	bf 80 22 41 00       	mov    $0x412280,%edi
  4056d9:	e8 12 dd ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  4056de:	ba 0c 00 00 00       	mov    $0xc,%edx
  4056e3:	be 2c f3 40 00       	mov    $0x40f32c,%esi
  4056e8:	48 89 c7             	mov    %rax,%rdi
  4056eb:	49 89 c6             	mov    %rax,%r14
  4056ee:	e8 ed db ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4056f3:	48 8b b5 38 f3 ff ff 	mov    -0xcc8(%rbp),%rsi
  4056fa:	4c 89 f7             	mov    %r14,%rdi
  4056fd:	e8 de da ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405702:	ba 0a 00 00 00       	mov    $0xa,%edx
  405707:	be 39 f3 40 00       	mov    $0x40f339,%esi
  40570c:	48 89 c7             	mov    %rax,%rdi
  40570f:	49 89 c6             	mov    %rax,%r14
  405712:	e8 c9 db ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405717:	48 89 de             	mov    %rbx,%rsi
  40571a:	4c 89 f7             	mov    %r14,%rdi
  40571d:	e8 be da ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405722:	ba 14 00 00 00       	mov    $0x14,%edx
  405727:	be 44 f3 40 00       	mov    $0x40f344,%esi
  40572c:	48 89 c7             	mov    %rax,%rdi
  40572f:	49 89 c6             	mov    %rax,%r14
  405732:	e8 a9 db ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405737:	48 8b b5 28 f3 ff ff 	mov    -0xcd8(%rbp),%rsi
  40573e:	4c 89 f7             	mov    %r14,%rdi
  405741:	e8 9a da ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405746:	ba 0e 00 00 00       	mov    $0xe,%edx
  40574b:	be 59 f3 40 00       	mov    $0x40f359,%esi
  405750:	48 89 c7             	mov    %rax,%rdi
  405753:	49 89 c6             	mov    %rax,%r14
  405756:	e8 85 db ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40575b:	31 f6                	xor    %esi,%esi
  40575d:	80 bd 53 f3 ff ff 00 	cmpb   $0x0,-0xcad(%rbp)
  405764:	75 0b                	jne    405771 <main+0x16b1>
  405766:	80 bd 54 f3 ff ff 00 	cmpb   $0x0,-0xcac(%rbp)
  40576d:	49 0f 44 f4          	cmove  %r12,%rsi
  405771:	4c 89 f7             	mov    %r14,%rdi
  405774:	e8 67 da ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405779:	ba 11 00 00 00       	mov    $0x11,%edx
  40577e:	be 68 f3 40 00       	mov    $0x40f368,%esi
  405783:	48 89 c7             	mov    %rax,%rdi
  405786:	49 89 c6             	mov    %rax,%r14
  405789:	e8 52 db ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40578e:	80 bd 54 f3 ff ff 00 	cmpb   $0x0,-0xcac(%rbp)
  405795:	75 24                	jne    4057bb <main+0x16fb>
  405797:	80 bd 04 f3 ff ff 00 	cmpb   $0x0,-0xcfc(%rbp)
  40579e:	75 0c                	jne    4057ac <main+0x16ec>
  4057a0:	45 31 ed             	xor    %r13d,%r13d
  4057a3:	80 bd 52 f3 ff ff 00 	cmpb   $0x0,-0xcae(%rbp)
  4057aa:	74 0f                	je     4057bb <main+0x16fb>
  4057ac:	4c 8b ad 18 f3 ff ff 	mov    -0xce8(%rbp),%r13
  4057b3:	4c 0f af ad 08 f3 ff 	imul   -0xcf8(%rbp),%r13
  4057ba:	ff 
  4057bb:	4c 89 ee             	mov    %r13,%rsi
  4057be:	4c 89 f7             	mov    %r14,%rdi
  4057c1:	e8 1a da ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  4057c6:	ba 09 00 00 00       	mov    $0x9,%edx
  4057cb:	be 7a f3 40 00       	mov    $0x40f37a,%esi
  4057d0:	48 89 c7             	mov    %rax,%rdi
  4057d3:	49 89 c5             	mov    %rax,%r13
  4057d6:	e8 05 db ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4057db:	31 c0                	xor    %eax,%eax
  4057dd:	80 bd 53 f3 ff ff 00 	cmpb   $0x0,-0xcad(%rbp)
  4057e4:	4c 0f 44 e0          	cmove  %rax,%r12
  4057e8:	4c 89 ef             	mov    %r13,%rdi
  4057eb:	4c 89 e6             	mov    %r12,%rsi
  4057ee:	e8 ed d9 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  4057f3:	80 bd b0 f4 ff ff 00 	cmpb   $0x0,-0xb50(%rbp)
  4057fa:	74 0d                	je     405809 <main+0x1749>
  4057fc:	80 bd 20 f3 ff ff 00 	cmpb   $0x0,-0xce0(%rbp)
  405803:	0f 85 4e 01 00 00    	jne    405957 <main+0x1897>
  405809:	ba 01 00 00 00       	mov    $0x1,%edx
  40580e:	48 8d b5 90 f4 ff ff 	lea    -0xb70(%rbp),%rsi
  405815:	bf 80 22 41 00       	mov    $0x412280,%edi
  40581a:	c6 85 90 f4 ff ff 7d 	movb   $0x7d,-0xb70(%rbp)
  405821:	e8 ba da ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405826:	ff 85 40 f3 ff ff    	incl   -0xcc0(%rbp)
  40582c:	8b 85 40 f3 ff ff    	mov    -0xcc0(%rbp),%eax
  405832:	39 85 00 f3 ff ff    	cmp    %eax,-0xd00(%rbp)
  405838:	0f 8f fa fc ff ff    	jg     405538 <main+0x1478>
  40583e:	80 bd 04 f3 ff ff 00 	cmpb   $0x0,-0xcfc(%rbp)
  405845:	75 0d                	jne    405854 <main+0x1794>
  405847:	80 bd 52 f3 ff ff 00 	cmpb   $0x0,-0xcae(%rbp)
  40584e:	0f 84 6e 02 00 00    	je     405ac2 <main+0x1a02>
  405854:	48 8b bd 68 f3 ff ff 	mov    -0xc98(%rbp),%rdi
  40585b:	b8 01 00 00 00       	mov    $0x1,%eax
  405860:	48 89 fe             	mov    %rdi,%rsi
  405863:	48 c1 ee 0a          	shr    $0xa,%rsi
  405867:	48 0f 44 f0          	cmove  %rax,%rsi
  40586b:	4c 8b 8d 78 f3 ff ff 	mov    -0xc88(%rbp),%r9
  405872:	8b 8d 5c f3 ff ff    	mov    -0xca4(%rbp),%ecx
  405878:	4c 8b 95 80 f3 ff ff 	mov    -0xc80(%rbp),%r10
  40587f:	4c 8b 85 70 f3 ff ff 	mov    -0xc90(%rbp),%r8
  405886:	44 0f b6 9d 5b f3 ff 	movzbl -0xca5(%rbp),%r11d
  40588d:	ff 
  40588e:	c5 fb 10 3d 4a 9d 00 	vmovsd 0x9d4a(%rip),%xmm7        # 40f5e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  405895:	00 
  405896:	c5 fb 10 1d 9a 9d 00 	vmovsd 0x9d9a(%rip),%xmm3        # 40f638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40589d:	00 
  40589e:	c5 fb 10 15 9a 9d 00 	vmovsd 0x9d9a(%rip),%xmm2        # 40f640 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  4058a5:	00 
  4058a6:	c5 fa 7e 2d 92 9e 00 	vmovq  0x9e92(%rip),%xmm5        # 40f740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  4058ad:	00 
  4058ae:	c5 fb 10 35 9a 9d 00 	vmovsd 0x9d9a(%rip),%xmm6        # 40f650 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  4058b5:	00 
  4058b6:	c5 7b 10 05 da 9d 00 	vmovsd 0x9dda(%rip),%xmm8        # 40f698 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x198>
  4058bd:	00 
  4058be:	0f b6 9d 04 f3 ff ff 	movzbl -0xcfc(%rbp),%ebx
  4058c5:	31 c0                	xor    %eax,%eax
  4058c7:	31 d2                	xor    %edx,%edx
  4058c9:	eb 42                	jmp    40590d <main+0x184d>
  4058cb:	c4 c2 c1 b9 04 d2    	vfmadd231sd (%r10,%rdx,8),%xmm7,%xmm0
  4058d1:	c4 c1 7b 10 0c d0    	vmovsd (%r8,%rdx,8),%xmm1
  4058d7:	31 c0                	xor    %eax,%eax
  4058d9:	c5 f1 54 e5          	vandpd %xmm5,%xmm1,%xmm4
  4058dd:	c5 f9 2e f4          	vucomisd %xmm4,%xmm6
  4058e1:	72 0f                	jb     4058f2 <main+0x1832>
  4058e3:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
  4058e7:	c5 f9 54 c5          	vandpd %xmm5,%xmm0,%xmm0
  4058eb:	c5 79 2f c0          	vcomisd %xmm0,%xmm8
  4058ef:	0f 97 c0             	seta   %al
  4058f2:	c5 f3 58 8d a0 f3 ff 	vaddsd -0xc60(%rbp),%xmm1,%xmm1
  4058f9:	ff 
  4058fa:	41 21 c3             	and    %eax,%r11d
  4058fd:	48 01 f2             	add    %rsi,%rdx
  405900:	c5 fb 11 8d a0 f3 ff 	vmovsd %xmm1,-0xc60(%rbp)
  405907:	ff 
  405908:	b8 01 00 00 00       	mov    $0x1,%eax
  40590d:	48 39 d7             	cmp    %rdx,%rdi
  405910:	0f 86 a1 01 00 00    	jbe    405ab7 <main+0x19f7>
  405916:	c4 c1 7b 10 04 d1    	vmovsd (%r9,%rdx,8),%xmm0
  40591c:	84 db                	test   %bl,%bl
  40591e:	75 ab                	jne    4058cb <main+0x180b>
  405920:	31 c0                	xor    %eax,%eax
  405922:	85 c9                	test   %ecx,%ecx
  405924:	7e ab                	jle    4058d1 <main+0x1811>
  405926:	ff c0                	inc    %eax
  405928:	c4 e2 e1 99 c2       	vfmadd132sd %xmm2,%xmm3,%xmm0
  40592d:	39 c1                	cmp    %eax,%ecx
  40592f:	75 f5                	jne    405926 <main+0x1866>
  405931:	eb 9e                	jmp    4058d1 <main+0x1811>
  405933:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  405937:	c5 fb 2a c2          	vcvtsi2sd %edx,%xmm0,%xmm0
  40593b:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  405940:	c4 e2 e1 b9 85 28 f3 	vfmadd231sd -0xcd8(%rbp),%xmm3,%xmm0
  405947:	ff ff 
  405949:	ff c8                	dec    %eax
  40594b:	75 f3                	jne    405940 <main+0x1880>
  40594d:	c4 e2 f9 b9 e6       	vfmadd231sd %xmm6,%xmm0,%xmm4
  405952:	e9 96 f6 ff ff       	jmpq   404fed <main+0xf2d>
  405957:	ba 0a 00 00 00       	mov    $0xa,%edx
  40595c:	be 84 f3 40 00       	mov    $0x40f384,%esi
  405961:	bf 80 22 41 00       	mov    $0x412280,%edi
  405966:	e8 75 d9 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40596b:	c5 fb 10 85 08 f5 ff 	vmovsd -0xaf8(%rbp),%xmm0
  405972:	ff 
  405973:	bf 80 22 41 00       	mov    $0x412280,%edi
  405978:	c5 fb 5c 85 b8 f4 ff 	vsubsd -0xb48(%rbp),%xmm0,%xmm0
  40597f:	ff 
  405980:	e8 6b da ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  405985:	ba 13 00 00 00       	mov    $0x13,%edx
  40598a:	be 8f f3 40 00       	mov    $0x40f38f,%esi
  40598f:	48 89 c7             	mov    %rax,%rdi
  405992:	49 89 c4             	mov    %rax,%r12
  405995:	e8 46 d9 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40599a:	c5 fb 10 8d 10 f5 ff 	vmovsd -0xaf0(%rbp),%xmm1
  4059a1:	ff 
  4059a2:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  4059a6:	c5 f9 2f f9          	vcomisd %xmm1,%xmm7
  4059aa:	c5 fb 10 05 46 9d 00 	vmovsd 0x9d46(%rip),%xmm0        # 40f6f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  4059b1:	00 
  4059b2:	77 08                	ja     4059bc <main+0x18fc>
  4059b4:	c5 f3 5c 85 c0 f4 ff 	vsubsd -0xb40(%rbp),%xmm1,%xmm0
  4059bb:	ff 
  4059bc:	4c 89 e7             	mov    %r12,%rdi
  4059bf:	e8 2c da ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  4059c4:	ba 11 00 00 00       	mov    $0x11,%edx
  4059c9:	be a3 f3 40 00       	mov    $0x40f3a3,%esi
  4059ce:	48 89 c7             	mov    %rax,%rdi
  4059d1:	49 89 c4             	mov    %rax,%r12
  4059d4:	e8 07 d9 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4059d9:	c5 fb 10 85 18 f5 ff 	vmovsd -0xae8(%rbp),%xmm0
  4059e0:	ff 
  4059e1:	4c 89 e7             	mov    %r12,%rdi
  4059e4:	c5 fb 5d 85 c8 f4 ff 	vminsd -0xb38(%rbp),%xmm0,%xmm0
  4059eb:	ff 
  4059ec:	e8 ff d9 ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  4059f1:	ba 13 00 00 00       	mov    $0x13,%edx
  4059f6:	be b5 f3 40 00       	mov    $0x40f3b5,%esi
  4059fb:	48 89 c7             	mov    %rax,%rdi
  4059fe:	49 89 c4             	mov    %rax,%r12
  405a01:	e8 da d8 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405a06:	8b b5 40 f5 ff ff    	mov    -0xac0(%rbp),%esi
  405a0c:	4c 89 e7             	mov    %r12,%rdi
  405a0f:	e8 2c da ff ff       	callq  403440 <_ZNSolsEi@plt>
  405a14:	c5 fb 10 85 d0 f4 ff 	vmovsd -0xb30(%rbp),%xmm0
  405a1b:	ff 
  405a1c:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  405a20:	c5 f9 2f c7          	vcomisd %xmm7,%xmm0
  405a24:	c5 fb 10 8d 20 f5 ff 	vmovsd -0xae0(%rbp),%xmm1
  405a2b:	ff 
  405a2c:	72 0a                	jb     405a38 <main+0x1978>
  405a2e:	c5 f9 2f cf          	vcomisd %xmm7,%xmm1
  405a32:	0f 83 82 02 00 00    	jae    405cba <main+0x1bfa>
  405a38:	c5 fb 10 85 d8 f4 ff 	vmovsd -0xb28(%rbp),%xmm0
  405a3f:	ff 
  405a40:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
  405a44:	c5 f9 2f c5          	vcomisd %xmm5,%xmm0
  405a48:	c5 fb 10 8d 28 f5 ff 	vmovsd -0xad8(%rbp),%xmm1
  405a4f:	ff 
  405a50:	72 0a                	jb     405a5c <main+0x199c>
  405a52:	c5 f9 2f cd          	vcomisd %xmm5,%xmm1
  405a56:	0f 83 40 02 00 00    	jae    405c9c <main+0x1bdc>
  405a5c:	c5 fb 10 85 e0 f4 ff 	vmovsd -0xb20(%rbp),%xmm0
  405a63:	ff 
  405a64:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  405a68:	c5 f9 2f c7          	vcomisd %xmm7,%xmm0
  405a6c:	c5 fb 10 8d 30 f5 ff 	vmovsd -0xad0(%rbp),%xmm1
  405a73:	ff 
  405a74:	72 0a                	jb     405a80 <main+0x19c0>
  405a76:	c5 f9 2f cf          	vcomisd %xmm7,%xmm1
  405a7a:	0f 83 2b 02 00 00    	jae    405cab <main+0x1beb>
  405a80:	c5 fb 10 85 e8 f4 ff 	vmovsd -0xb18(%rbp),%xmm0
  405a87:	ff 
  405a88:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
  405a8c:	c5 f9 2f c5          	vcomisd %xmm5,%xmm0
  405a90:	c5 fb 10 8d 38 f5 ff 	vmovsd -0xac8(%rbp),%xmm1
  405a97:	ff 
  405a98:	0f 82 6b fd ff ff    	jb     405809 <main+0x1749>
  405a9e:	c5 f9 2f cd          	vcomisd %xmm5,%xmm1
  405aa2:	0f 82 61 fd ff ff    	jb     405809 <main+0x1749>
  405aa8:	bf f1 f3 40 00       	mov    $0x40f3f1,%edi
  405aad:	e8 0e 4c 00 00       	callq  40a6c0 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  405ab2:	e9 52 fd ff ff       	jmpq   405809 <main+0x1749>
  405ab7:	84 c0                	test   %al,%al
  405ab9:	74 07                	je     405ac2 <main+0x1a02>
  405abb:	44 88 9d 5b f3 ff ff 	mov    %r11b,-0xca5(%rbp)
  405ac2:	80 bd 53 f3 ff ff 00 	cmpb   $0x0,-0xcad(%rbp)
  405ac9:	74 57                	je     405b22 <main+0x1a62>
  405acb:	48 8b 85 88 f3 ff ff 	mov    -0xc78(%rbp),%rax
  405ad2:	48 8b 9d f8 f2 ff ff 	mov    -0xd08(%rbp),%rbx
  405ad9:	0f b6 8d 5b f3 ff ff 	movzbl -0xca5(%rbp),%ecx
  405ae0:	31 d2                	xor    %edx,%edx
  405ae2:	48 39 d8             	cmp    %rbx,%rax
  405ae5:	72 17                	jb     405afe <main+0x1a3e>
  405ae7:	ba 06 00 00 00       	mov    $0x6,%edx
  405aec:	c4 e2 e9 f7 95 68 f3 	shlx   %rdx,-0xc98(%rbp),%rdx
  405af3:	ff ff 
  405af5:	48 01 da             	add    %rbx,%rdx
  405af8:	48 39 d0             	cmp    %rdx,%rax
  405afb:	0f 92 c2             	setb   %dl
  405afe:	48 2b 85 f8 f2 ff ff 	sub    -0xd08(%rbp),%rax
  405b05:	48 c1 f8 06          	sar    $0x6,%rax
  405b09:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  405b0d:	c4 e1 c3 2a c0       	vcvtsi2sd %rax,%xmm7,%xmm0
  405b12:	21 ca                	and    %ecx,%edx
  405b14:	88 95 5b f3 ff ff    	mov    %dl,-0xca5(%rbp)
  405b1a:	c5 fb 11 85 a0 f3 ff 	vmovsd %xmm0,-0xc60(%rbp)
  405b21:	ff 
  405b22:	ba 0d 00 00 00       	mov    $0xd,%edx
  405b27:	be 02 f4 40 00       	mov    $0x40f402,%esi
  405b2c:	bf 80 22 41 00       	mov    $0x412280,%edi
  405b31:	e8 aa d7 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405b36:	c5 fb 10 85 a0 f3 ff 	vmovsd -0xc60(%rbp),%xmm0
  405b3d:	ff 
  405b3e:	bf 80 22 41 00       	mov    $0x412280,%edi
  405b43:	e8 a8 d8 ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  405b48:	ba 09 00 00 00       	mov    $0x9,%edx
  405b4d:	be 10 f4 40 00       	mov    $0x40f410,%esi
  405b52:	48 89 c7             	mov    %rax,%rdi
  405b55:	49 89 c4             	mov    %rax,%r12
  405b58:	e8 83 d7 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405b5d:	80 bd 5b f3 ff ff 00 	cmpb   $0x0,-0xca5(%rbp)
  405b64:	be 63 f1 40 00       	mov    $0x40f163,%esi
  405b69:	b8 68 f1 40 00       	mov    $0x40f168,%eax
  405b6e:	48 0f 44 f0          	cmove  %rax,%rsi
  405b72:	4c 89 e7             	mov    %r12,%rdi
  405b75:	e8 16 d7 ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  405b7a:	48 89 c7             	mov    %rax,%rdi
  405b7d:	be 1a f4 40 00       	mov    $0x40f41a,%esi
  405b82:	e8 09 d7 ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  405b87:	48 8b bd 70 f3 ff ff 	mov    -0xc90(%rbp),%rdi
  405b8e:	e8 6d d7 ff ff       	callq  403300 <free@plt>
  405b93:	48 8b bd 78 f3 ff ff 	mov    -0xc88(%rbp),%rdi
  405b9a:	e8 61 d7 ff ff       	callq  403300 <free@plt>
  405b9f:	48 8b bd 80 f3 ff ff 	mov    -0xc80(%rbp),%rdi
  405ba6:	e8 55 d7 ff ff       	callq  403300 <free@plt>
  405bab:	48 8b bd f8 f2 ff ff 	mov    -0xd08(%rbp),%rdi
  405bb2:	e8 49 d7 ff ff       	callq  403300 <free@plt>
  405bb7:	48 8b 9d b0 f3 ff ff 	mov    -0xc50(%rbp),%rbx
  405bbe:	4c 8b a5 b8 f3 ff ff 	mov    -0xc48(%rbp),%r12
  405bc5:	eb 0c                	jmp    405bd3 <main+0x1b13>
  405bc7:	48 8b 3b             	mov    (%rbx),%rdi
  405bca:	48 83 c3 08          	add    $0x8,%rbx
  405bce:	e8 2d d7 ff ff       	callq  403300 <free@plt>
  405bd3:	49 39 dc             	cmp    %rbx,%r12
  405bd6:	75 ef                	jne    405bc7 <main+0x1b07>
  405bd8:	44 0f b6 a5 5b f3 ff 	movzbl -0xca5(%rbp),%r12d
  405bdf:	ff 
  405be0:	48 8b bd 50 f4 ff ff 	mov    -0xbb0(%rbp),%rdi
  405be7:	41 83 f4 01          	xor    $0x1,%r12d
  405beb:	48 8d 85 60 f4 ff ff 	lea    -0xba0(%rbp),%rax
  405bf2:	45 0f b6 e4          	movzbl %r12b,%r12d
  405bf6:	48 39 c7             	cmp    %rax,%rdi
  405bf9:	74 10                	je     405c0b <main+0x1b4b>
  405bfb:	48 8b 85 60 f4 ff ff 	mov    -0xba0(%rbp),%rax
  405c02:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405c06:	e8 a5 d6 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405c0b:	48 8b bd 30 f4 ff ff 	mov    -0xbd0(%rbp),%rdi
  405c12:	48 8d 85 40 f4 ff ff 	lea    -0xbc0(%rbp),%rax
  405c19:	48 39 c7             	cmp    %rax,%rdi
  405c1c:	74 10                	je     405c2e <main+0x1b6e>
  405c1e:	48 8b 85 40 f4 ff ff 	mov    -0xbc0(%rbp),%rax
  405c25:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405c29:	e8 82 d6 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405c2e:	48 8b bd 10 f4 ff ff 	mov    -0xbf0(%rbp),%rdi
  405c35:	48 8d 85 20 f4 ff ff 	lea    -0xbe0(%rbp),%rax
  405c3c:	48 39 c7             	cmp    %rax,%rdi
  405c3f:	74 10                	je     405c51 <main+0x1b91>
  405c41:	48 8b 85 20 f4 ff ff 	mov    -0xbe0(%rbp),%rax
  405c48:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405c4c:	e8 5f d6 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405c51:	48 8b bd d0 f3 ff ff 	mov    -0xc30(%rbp),%rdi
  405c58:	48 85 ff             	test   %rdi,%rdi
  405c5b:	74 0f                	je     405c6c <main+0x1bac>
  405c5d:	48 8b b5 e0 f3 ff ff 	mov    -0xc20(%rbp),%rsi
  405c64:	48 29 fe             	sub    %rdi,%rsi
  405c67:	e8 44 d6 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405c6c:	48 8b bd b0 f3 ff ff 	mov    -0xc50(%rbp),%rdi
  405c73:	48 85 ff             	test   %rdi,%rdi
  405c76:	74 0f                	je     405c87 <main+0x1bc7>
  405c78:	48 8b b5 c0 f3 ff ff 	mov    -0xc40(%rbp),%rsi
  405c7f:	48 29 fe             	sub    %rdi,%rsi
  405c82:	e8 29 d6 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405c87:	4c 89 ff             	mov    %r15,%rdi
  405c8a:	e8 e1 7c 00 00       	callq  40d970 <_ZN8CountersD1Ev>
  405c8f:	e9 f4 e8 ff ff       	jmpq   404588 <main+0x4c8>
  405c94:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  405c9a:	eb b5                	jmp    405c51 <main+0x1b91>
  405c9c:	bf d6 f3 40 00       	mov    $0x40f3d6,%edi
  405ca1:	e8 1a 4a 00 00       	callq  40a6c0 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  405ca6:	e9 b1 fd ff ff       	jmpq   405a5c <main+0x199c>
  405cab:	bf e1 f3 40 00       	mov    $0x40f3e1,%edi
  405cb0:	e8 0b 4a 00 00       	callq  40a6c0 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  405cb5:	e9 c6 fd ff ff       	jmpq   405a80 <main+0x19c0>
  405cba:	bf c9 f3 40 00       	mov    $0x40f3c9,%edi
  405cbf:	e8 fc 49 00 00       	callq  40a6c0 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  405cc4:	e9 6f fd ff ff       	jmpq   405a38 <main+0x1978>
  405cc9:	48 85 f6             	test   %rsi,%rsi
  405ccc:	0f 85 b2 ed ff ff    	jne    404a84 <main+0x9c4>
  405cd2:	48 c7 85 68 f3 ff ff 	movq   $0x0,-0xc98(%rbp)
  405cd9:	00 00 00 00 
  405cdd:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  405ce3:	eb 87                	jmp    405c6c <main+0x1bac>
  405ce5:	48 63 8d 64 f3 ff ff 	movslq -0xc9c(%rbp),%rcx
  405cec:	48 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%rax
  405cf3:	31 d2                	xor    %edx,%edx
  405cf5:	48 f7 f1             	div    %rcx
  405cf8:	48 25 00 fe ff ff    	and    $0xfffffffffffffe00,%rax
  405cfe:	e9 54 ef ff ff       	jmpq   404c57 <main+0xb97>
  405d03:	83 bd f8 f2 ff ff 00 	cmpl   $0x0,-0xd08(%rbp)
  405d0a:	ba 08 00 00 00       	mov    $0x8,%edx
  405d0f:	0f 84 27 ec ff ff    	je     40493c <main+0x87c>
  405d15:	8b 9d f8 f2 ff ff    	mov    -0xd08(%rbp),%ebx
  405d1b:	89 9d 60 f3 ff ff    	mov    %ebx,-0xca0(%rbp)
  405d21:	85 c0                	test   %eax,%eax
  405d23:	0f 84 dd f1 ff ff    	je     404f06 <main+0xe46>
  405d29:	e9 04 f2 ff ff       	jmpq   404f32 <main+0xe72>
  405d2e:	31 f6                	xor    %esi,%esi
  405d30:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  405d37:	e8 94 44 00 00       	callq  40a1d0 <_ZZ4mainENKUlmE_clEm>
  405d3c:	31 f6                	xor    %esi,%esi
  405d3e:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  405d45:	e8 86 44 00 00       	callq  40a1d0 <_ZZ4mainENKUlmE_clEm>
  405d4a:	e9 28 f4 ff ff       	jmpq   405177 <main+0x10b7>
  405d4f:	be df f1 40 00       	mov    $0x40f1df,%esi
  405d54:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  405d5b:	e8 d0 49 00 00       	callq  40a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  405d60:	e9 98 f5 ff ff       	jmpq   4052fd <main+0x123d>
  405d65:	be f2 f1 40 00       	mov    $0x40f1f2,%esi
  405d6a:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  405d71:	e8 ba 49 00 00       	callq  40a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  405d76:	e9 82 f5 ff ff       	jmpq   4052fd <main+0x123d>
  405d7b:	8b 9d f8 f2 ff ff    	mov    -0xd08(%rbp),%ebx
  405d81:	89 9d 60 f3 ff ff    	mov    %ebx,-0xca0(%rbp)
  405d87:	85 c0                	test   %eax,%eax
  405d89:	0f 85 f3 e7 ff ff    	jne    404582 <main+0x4c2>
  405d8f:	c6 85 04 f3 ff ff 00 	movb   $0x0,-0xcfc(%rbp)
  405d96:	e9 6b f1 ff ff       	jmpq   404f06 <main+0xe46>
  405d9b:	48 c7 85 40 f3 ff ff 	movq   $0x0,-0xcc0(%rbp)
  405da2:	00 00 00 00 
  405da6:	45 31 c0             	xor    %r8d,%r8d
  405da9:	31 ff                	xor    %edi,%edi
  405dab:	e9 20 f0 ff ff       	jmpq   404dd0 <main+0xd10>
  405db0:	be 0a f2 40 00       	mov    $0x40f20a,%esi
  405db5:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  405dbc:	e8 6f 49 00 00       	callq  40a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  405dc1:	e9 37 f5 ff ff       	jmpq   4052fd <main+0x123d>
  405dc6:	8b b5 60 f3 ff ff    	mov    -0xca0(%rbp),%esi
  405dcc:	48 8d bd 70 f4 ff ff 	lea    -0xb90(%rbp),%rdi
  405dd3:	e8 08 73 00 00       	callq  40d0e0 <_ZNSt7__cxx119to_stringEi>
  405dd8:	48 8d 95 70 f4 ff ff 	lea    -0xb90(%rbp),%rdx
  405ddf:	be 20 f2 40 00       	mov    $0x40f220,%esi
  405de4:	48 8d bd 90 f4 ff ff 	lea    -0xb70(%rbp),%rdi
  405deb:	e8 50 7d 00 00       	callq  40db40 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>
  405df0:	ba 18 f2 40 00       	mov    $0x40f218,%edx
  405df5:	48 8d b5 90 f4 ff ff 	lea    -0xb70(%rbp),%rsi
  405dfc:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  405e03:	e8 b8 7d 00 00       	callq  40dbc0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
  405e08:	48 8b bd 90 f4 ff ff 	mov    -0xb70(%rbp),%rdi
  405e0f:	48 8d 85 a0 f4 ff ff 	lea    -0xb60(%rbp),%rax
  405e16:	48 39 c7             	cmp    %rax,%rdi
  405e19:	74 10                	je     405e2b <main+0x1d6b>
  405e1b:	48 8b 85 a0 f4 ff ff 	mov    -0xb60(%rbp),%rax
  405e22:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405e26:	e8 85 d4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405e2b:	48 8b bd 70 f4 ff ff 	mov    -0xb90(%rbp),%rdi
  405e32:	48 8d 85 80 f4 ff ff 	lea    -0xb80(%rbp),%rax
  405e39:	48 39 c7             	cmp    %rax,%rdi
  405e3c:	0f 84 bb f4 ff ff    	je     4052fd <main+0x123d>
  405e42:	48 8b 85 80 f4 ff ff 	mov    -0xb80(%rbp),%rax
  405e49:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405e4d:	e8 5e d4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405e52:	e9 a6 f4 ff ff       	jmpq   4052fd <main+0x123d>
  405e57:	be 2d f2 40 00       	mov    $0x40f22d,%esi
  405e5c:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  405e63:	e8 c8 48 00 00       	callq  40a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  405e68:	e9 90 f4 ff ff       	jmpq   4052fd <main+0x123d>
  405e6d:	bf 20 f4 40 00       	mov    $0x40f420,%edi
  405e72:	e8 79 d3 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  405e77:	8b b5 60 f3 ff ff    	mov    -0xca0(%rbp),%esi
  405e7d:	48 8d bd b0 f4 ff ff 	lea    -0xb50(%rbp),%rdi
  405e84:	e8 57 72 00 00       	callq  40d0e0 <_ZNSt7__cxx119to_stringEi>
  405e89:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  405e90:	48 8d 95 b0 f4 ff ff 	lea    -0xb50(%rbp),%rdx
  405e97:	be 45 f2 40 00       	mov    $0x40f245,%esi
  405e9c:	48 89 c7             	mov    %rax,%rdi
  405e9f:	48 89 85 30 f3 ff ff 	mov    %rax,-0xcd0(%rbp)
  405ea6:	e8 95 7c 00 00       	callq  40db40 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>
  405eab:	48 8b b5 30 f3 ff ff 	mov    -0xcd0(%rbp),%rsi
  405eb2:	ba 4d f2 40 00       	mov    $0x40f24d,%edx
  405eb7:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  405ebe:	e8 fd 7c 00 00       	callq  40dbc0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
  405ec3:	48 8b bd 00 f5 ff ff 	mov    -0xb00(%rbp),%rdi
  405eca:	48 8d 85 10 f5 ff ff 	lea    -0xaf0(%rbp),%rax
  405ed1:	48 39 c7             	cmp    %rax,%rdi
  405ed4:	74 10                	je     405ee6 <main+0x1e26>
  405ed6:	48 8b 85 10 f5 ff ff 	mov    -0xaf0(%rbp),%rax
  405edd:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405ee1:	e8 ca d3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405ee6:	48 8b bd b0 f4 ff ff 	mov    -0xb50(%rbp),%rdi
  405eed:	48 8d 85 c0 f4 ff ff 	lea    -0xb40(%rbp),%rax
  405ef4:	48 39 c7             	cmp    %rax,%rdi
  405ef7:	0f 84 00 f4 ff ff    	je     4052fd <main+0x123d>
  405efd:	48 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%rax
  405f04:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405f08:	e8 a3 d3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405f0d:	e9 eb f3 ff ff       	jmpq   4052fd <main+0x123d>
  405f12:	be 78 f4 40 00       	mov    $0x40f478,%esi
  405f17:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  405f1e:	e8 0d 48 00 00       	callq  40a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  405f23:	e9 d5 f3 ff ff       	jmpq   4052fd <main+0x123d>
  405f28:	bf a0 f4 40 00       	mov    $0x40f4a0,%edi
  405f2d:	e8 2e d2 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  405f32:	4c 89 ef             	mov    %r13,%rdi
  405f35:	e9 9f e3 ff ff       	jmpq   4042d9 <main+0x219>
  405f3a:	bf 96 f1 40 00       	mov    $0x40f196,%edi
  405f3f:	e8 3c d4 ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  405f44:	bf 96 f1 40 00       	mov    $0x40f196,%edi
  405f49:	e8 52 d2 ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  405f4e:	bf a7 f1 40 00       	mov    $0x40f1a7,%edi
  405f53:	e8 28 d4 ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  405f58:	bf a7 f1 40 00       	mov    $0x40f1a7,%edi
  405f5d:	e8 3e d2 ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  405f62:	bf 20 f4 40 00       	mov    $0x40f420,%edi
  405f67:	e8 84 d2 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  405f6c:	48 89 c3             	mov    %rax,%rbx
  405f6f:	49 89 d6             	mov    %rdx,%r14
  405f72:	e9 85 dd ff ff       	jmpq   403cfc <main.cold>
  405f77:	48 89 c3             	mov    %rax,%rbx
  405f7a:	49 89 d6             	mov    %rdx,%r14
  405f7d:	e9 b7 dd ff ff       	jmpq   403d39 <main.cold+0x3d>
  405f82:	48 89 c3             	mov    %rax,%rbx
  405f85:	49 89 d4             	mov    %rdx,%r12
  405f88:	c5 f8 77             	vzeroupper 
  405f8b:	e9 dc de ff ff       	jmpq   403e6c <main.cold+0x170>
  405f90:	48 89 c3             	mov    %rax,%rbx
  405f93:	49 89 d6             	mov    %rdx,%r14
  405f96:	c5 f8 77             	vzeroupper 
  405f99:	e9 e1 dd ff ff       	jmpq   403d7f <main.cold+0x83>
  405f9e:	48 89 c3             	mov    %rax,%rbx
  405fa1:	49 89 d6             	mov    %rdx,%r14
  405fa4:	c5 f8 77             	vzeroupper 
  405fa7:	e9 1c df ff ff       	jmpq   403ec8 <main.cold+0x1cc>
  405fac:	48 89 c3             	mov    %rax,%rbx
  405faf:	49 89 d6             	mov    %rdx,%r14
  405fb2:	e9 3d de ff ff       	jmpq   403df4 <main.cold+0xf8>
  405fb7:	e9 19 df ff ff       	jmpq   403ed5 <main.cold+0x1d9>
  405fbc:	48 89 c7             	mov    %rax,%rdi
  405fbf:	49 89 d6             	mov    %rdx,%r14
  405fc2:	c5 f8 77             	vzeroupper 
  405fc5:	e9 db dd ff ff       	jmpq   403da5 <main.cold+0xa9>
  405fca:	49 89 c5             	mov    %rax,%r13
  405fcd:	49 89 d6             	mov    %rdx,%r14
  405fd0:	e9 0b df ff ff       	jmpq   403ee0 <main.cold+0x1e4>
  405fd5:	49 89 c5             	mov    %rax,%r13
  405fd8:	49 89 d6             	mov    %rdx,%r14
  405fdb:	e9 00 df ff ff       	jmpq   403ee0 <main.cold+0x1e4>
  405fe0:	49 89 c5             	mov    %rax,%r13
  405fe3:	49 89 d6             	mov    %rdx,%r14
  405fe6:	c5 f8 77             	vzeroupper 
  405fe9:	e9 f8 de ff ff       	jmpq   403ee6 <main.cold+0x1ea>
  405fee:	48 89 c3             	mov    %rax,%rbx
  405ff1:	49 89 d6             	mov    %rdx,%r14
  405ff4:	e9 82 df ff ff       	jmpq   403f7b <main.cold+0x27f>
  405ff9:	49 89 c5             	mov    %rax,%r13
  405ffc:	49 89 d6             	mov    %rdx,%r14
  405fff:	e9 b3 df ff ff       	jmpq   403fb7 <main.cold+0x2bb>
  406004:	49 89 c5             	mov    %rax,%r13
  406007:	49 89 d6             	mov    %rdx,%r14
  40600a:	e9 d1 de ff ff       	jmpq   403ee0 <main.cold+0x1e4>
  40600f:	48 89 c3             	mov    %rax,%rbx
  406012:	49 89 d6             	mov    %rdx,%r14
  406015:	c5 f8 77             	vzeroupper 
  406018:	e9 46 dd ff ff       	jmpq   403d63 <main.cold+0x67>
  40601d:	48 89 c3             	mov    %rax,%rbx
  406020:	49 89 d6             	mov    %rdx,%r14
  406023:	e9 d1 df ff ff       	jmpq   403ff9 <main.cold+0x2fd>
  406028:	49 89 c5             	mov    %rax,%r13
  40602b:	49 89 d6             	mov    %rdx,%r14
  40602e:	e9 f9 df ff ff       	jmpq   40402c <main.cold+0x330>
  406033:	eb ab                	jmp    405fe0 <main+0x1f20>
  406035:	49 89 c5             	mov    %rax,%r13
  406038:	49 89 d6             	mov    %rdx,%r14
  40603b:	e9 a0 de ff ff       	jmpq   403ee0 <main.cold+0x1e4>
  406040:	49 89 c5             	mov    %rax,%r13
  406043:	49 89 d6             	mov    %rdx,%r14
  406046:	e9 95 de ff ff       	jmpq   403ee0 <main.cold+0x1e4>
  40604b:	49 89 c5             	mov    %rax,%r13
  40604e:	49 89 d6             	mov    %rdx,%r14
  406051:	e9 0e e0 ff ff       	jmpq   404064 <main.cold+0x368>
  406056:	eb 88                	jmp    405fe0 <main+0x1f20>
  406058:	48 89 c3             	mov    %rax,%rbx
  40605b:	49 89 d4             	mov    %rdx,%r12
  40605e:	e9 cc dd ff ff       	jmpq   403e2f <main.cold+0x133>
  406063:	49 89 c5             	mov    %rax,%r13
  406066:	49 89 d6             	mov    %rdx,%r14
  406069:	e9 72 de ff ff       	jmpq   403ee0 <main.cold+0x1e4>
  40606e:	66 90                	xchg   %ax,%ax

0000000000406070 <_GLOBAL__sub_I__Z8clock_nsv>:
  406070:	48 83 ec 08          	sub    $0x8,%rsp
  406074:	bf b1 24 41 00       	mov    $0x4124b1,%edi
  406079:	e8 32 d3 ff ff       	callq  4033b0 <_ZNSt8ios_base4InitC1Ev@plt>
  40607e:	ba 08 f0 40 00       	mov    $0x40f008,%edx
  406083:	be b1 24 41 00       	mov    $0x4124b1,%esi
  406088:	bf c0 34 40 00       	mov    $0x4034c0,%edi
  40608d:	48 83 c4 08          	add    $0x8,%rsp
  406091:	e9 ca d1 ff ff       	jmpq   403260 <__cxa_atexit@plt>
  406096:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40609d:	00 00 00 

00000000004060a0 <_start>:
  4060a0:	f3 0f 1e fa          	endbr64 
  4060a4:	31 ed                	xor    %ebp,%ebp
  4060a6:	49 89 d1             	mov    %rdx,%r9
  4060a9:	5e                   	pop    %rsi
  4060aa:	48 89 e2             	mov    %rsp,%rdx
  4060ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4060b1:	50                   	push   %rax
  4060b2:	54                   	push   %rsp
  4060b3:	45 31 c0             	xor    %r8d,%r8d
  4060b6:	31 c9                	xor    %ecx,%ecx
  4060b8:	48 c7 c7 c0 40 40 00 	mov    $0x4040c0,%rdi
  4060bf:	ff 15 03 bf 00 00    	callq  *0xbf03(%rip)        # 411fc8 <__libc_start_main@GLIBC_2.34>
  4060c5:	f4                   	hlt    
  4060c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4060cd:	00 00 00 

00000000004060d0 <_dl_relocate_static_pie>:
  4060d0:	f3 0f 1e fa          	endbr64 
  4060d4:	c3                   	retq   
  4060d5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4060dc:	00 00 00 
  4060df:	90                   	nop

00000000004060e0 <deregister_tm_clones>:
  4060e0:	48 8d 3d 89 c1 00 00 	lea    0xc189(%rip),%rdi        # 412270 <__TMC_END__>
  4060e7:	48 8d 05 82 c1 00 00 	lea    0xc182(%rip),%rax        # 412270 <__TMC_END__>
  4060ee:	48 39 f8             	cmp    %rdi,%rax
  4060f1:	74 15                	je     406108 <deregister_tm_clones+0x28>
  4060f3:	48 8b 05 d6 be 00 00 	mov    0xbed6(%rip),%rax        # 411fd0 <_ITM_deregisterTMCloneTable>
  4060fa:	48 85 c0             	test   %rax,%rax
  4060fd:	74 09                	je     406108 <deregister_tm_clones+0x28>
  4060ff:	ff e0                	jmpq   *%rax
  406101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406108:	c3                   	retq   
  406109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406110 <register_tm_clones>:
  406110:	48 8d 3d 59 c1 00 00 	lea    0xc159(%rip),%rdi        # 412270 <__TMC_END__>
  406117:	48 8d 35 52 c1 00 00 	lea    0xc152(%rip),%rsi        # 412270 <__TMC_END__>
  40611e:	48 29 fe             	sub    %rdi,%rsi
  406121:	48 89 f0             	mov    %rsi,%rax
  406124:	48 c1 ee 3f          	shr    $0x3f,%rsi
  406128:	48 c1 f8 03          	sar    $0x3,%rax
  40612c:	48 01 c6             	add    %rax,%rsi
  40612f:	48 d1 fe             	sar    %rsi
  406132:	74 14                	je     406148 <register_tm_clones+0x38>
  406134:	48 8b 05 a5 be 00 00 	mov    0xbea5(%rip),%rax        # 411fe0 <_ITM_registerTMCloneTable>
  40613b:	48 85 c0             	test   %rax,%rax
  40613e:	74 08                	je     406148 <register_tm_clones+0x38>
  406140:	ff e0                	jmpq   *%rax
  406142:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406148:	c3                   	retq   
  406149:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406150 <__do_global_dtors_aux>:
  406150:	f3 0f 1e fa          	endbr64 
  406154:	80 3d 55 c3 00 00 00 	cmpb   $0x0,0xc355(%rip)        # 4124b0 <completed.0>
  40615b:	75 13                	jne    406170 <__do_global_dtors_aux+0x20>
  40615d:	55                   	push   %rbp
  40615e:	48 89 e5             	mov    %rsp,%rbp
  406161:	e8 7a ff ff ff       	callq  4060e0 <deregister_tm_clones>
  406166:	c6 05 43 c3 00 00 01 	movb   $0x1,0xc343(%rip)        # 4124b0 <completed.0>
  40616d:	5d                   	pop    %rbp
  40616e:	c3                   	retq   
  40616f:	90                   	nop
  406170:	c3                   	retq   
  406171:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  406178:	00 00 00 00 
  40617c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406180 <frame_dummy>:
  406180:	f3 0f 1e fa          	endbr64 
  406184:	eb 8a                	jmp    406110 <register_tm_clones>
  406186:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40618d:	00 00 00 

0000000000406190 <main._omp_fn.1>:
  406190:	41 54                	push   %r12
  406192:	55                   	push   %rbp
  406193:	53                   	push   %rbx
  406194:	48 8b 07             	mov    (%rdi),%rax
  406197:	48 8b 18             	mov    (%rax),%rbx
  40619a:	48 85 db             	test   %rbx,%rbx
  40619d:	0f 84 ef 00 00 00    	je     406292 <main._omp_fn.1+0x102>
  4061a3:	49 89 fc             	mov    %rdi,%r12
  4061a6:	e8 e5 d2 ff ff       	callq  403490 <omp_get_num_threads@plt>
  4061ab:	89 c5                	mov    %eax,%ebp
  4061ad:	e8 2e d2 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  4061b2:	48 63 c8             	movslq %eax,%rcx
  4061b5:	48 63 f5             	movslq %ebp,%rsi
  4061b8:	48 89 d8             	mov    %rbx,%rax
  4061bb:	31 d2                	xor    %edx,%edx
  4061bd:	48 f7 f6             	div    %rsi
  4061c0:	48 39 d1             	cmp    %rdx,%rcx
  4061c3:	0f 82 d7 00 00 00    	jb     4062a0 <main._omp_fn.1+0x110>
  4061c9:	48 0f af c8          	imul   %rax,%rcx
  4061cd:	48 01 d1             	add    %rdx,%rcx
  4061d0:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
  4061d4:	48 39 f1             	cmp    %rsi,%rcx
  4061d7:	0f 83 b5 00 00 00    	jae    406292 <main._omp_fn.1+0x102>
  4061dd:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  4061e2:	c5 fb 10 0d e6 93 00 	vmovsd 0x93e6(%rip),%xmm1        # 40f5d0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd0>
  4061e9:	00 
  4061ea:	48 8b 38             	mov    (%rax),%rdi
  4061ed:	49 8b 44 24 10       	mov    0x10(%r12),%rax
  4061f2:	c5 fb 10 1d f6 94 00 	vmovsd 0x94f6(%rip),%xmm3        # 40f6f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  4061f9:	00 
  4061fa:	4c 8b 00             	mov    (%rax),%r8
  4061fd:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  406202:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  406206:	4c 8b 08             	mov    (%rax),%r9
  406209:	4d 85 c9             	test   %r9,%r9
  40620c:	0f 84 9e 00 00 00    	je     4062b0 <main._omp_fn.1+0x120>
  406212:	c5 fb 10 25 be 93 00 	vmovsd 0x93be(%rip),%xmm4        # 40f5d8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  406219:	00 
  40621a:	49 bb f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r11
  406221:	f0 f0 f0 
  406224:	49 ba c5 4e ec c4 4e 	movabs $0x4ec4ec4ec4ec4ec5,%r10
  40622b:	ec c4 4e 
  40622e:	66 90                	xchg   %ax,%ax
  406230:	48 89 c8             	mov    %rcx,%rax
  406233:	49 f7 e3             	mul    %r11
  406236:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  40623d:	00 
  40623e:	48 89 d0             	mov    %rdx,%rax
  406241:	48 c1 e8 04          	shr    $0x4,%rax
  406245:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  406249:	48 01 c2             	add    %rax,%rdx
  40624c:	48 89 c8             	mov    %rcx,%rax
  40624f:	48 29 d0             	sub    %rdx,%rax
  406252:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  406257:	48 89 c8             	mov    %rcx,%rax
  40625a:	49 f7 e2             	mul    %r10
  40625d:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  406262:	48 c1 ea 02          	shr    $0x2,%rdx
  406266:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
  40626a:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
  40626e:	48 89 c8             	mov    %rcx,%rax
  406271:	48 29 d0             	sub    %rdx,%rax
  406274:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  40627a:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  40627f:	c4 e2 d9 9d c1       	vfnmadd132sd %xmm1,%xmm4,%xmm0
  406284:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  40628a:	48 ff c1             	inc    %rcx
  40628d:	48 39 ce             	cmp    %rcx,%rsi
  406290:	75 9e                	jne    406230 <main._omp_fn.1+0xa0>
  406292:	5b                   	pop    %rbx
  406293:	5d                   	pop    %rbp
  406294:	41 5c                	pop    %r12
  406296:	c3                   	retq   
  406297:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40629e:	00 00 
  4062a0:	48 ff c0             	inc    %rax
  4062a3:	31 d2                	xor    %edx,%edx
  4062a5:	e9 1f ff ff ff       	jmpq   4061c9 <main._omp_fn.1+0x39>
  4062aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4062b0:	49 b9 f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r9
  4062b7:	f0 f0 f0 
  4062ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4062c0:	48 89 c8             	mov    %rcx,%rax
  4062c3:	49 f7 e1             	mul    %r9
  4062c6:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  4062cd:	00 
  4062ce:	48 89 d0             	mov    %rdx,%rax
  4062d1:	48 c1 e8 04          	shr    $0x4,%rax
  4062d5:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  4062d9:	48 01 c2             	add    %rax,%rdx
  4062dc:	48 89 c8             	mov    %rcx,%rax
  4062df:	48 29 d0             	sub    %rdx,%rax
  4062e2:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  4062e7:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  4062ec:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  4062f2:	48 ff c1             	inc    %rcx
  4062f5:	48 39 ce             	cmp    %rcx,%rsi
  4062f8:	75 c6                	jne    4062c0 <main._omp_fn.1+0x130>
  4062fa:	5b                   	pop    %rbx
  4062fb:	5d                   	pop    %rbp
  4062fc:	41 5c                	pop    %r12
  4062fe:	c3                   	retq   
  4062ff:	90                   	nop

0000000000406300 <main._omp_fn.0>:
  406300:	53                   	push   %rbx
  406301:	48 89 fb             	mov    %rdi,%rbx
  406304:	e8 57 cd ff ff       	callq  403060 <GOMP_single_start@plt>
  406309:	84 c0                	test   %al,%al
  40630b:	74 0e                	je     40631b <main._omp_fn.0+0x1b>
  40630d:	e8 7e d1 ff ff       	callq  403490 <omp_get_num_threads@plt>
  406312:	41 89 c0             	mov    %eax,%r8d
  406315:	48 8b 03             	mov    (%rbx),%rax
  406318:	44 89 00             	mov    %r8d,(%rax)
  40631b:	5b                   	pop    %rbx
  40631c:	e9 4f d1 ff ff       	jmpq   403470 <GOMP_barrier@plt>
  406321:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  406328:	00 00 00 00 
  40632c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406330 <_ZZ4mainENKUlmE_clEm._omp_fn.0>:
  406330:	55                   	push   %rbp
  406331:	48 89 e5             	mov    %rsp,%rbp
  406334:	41 55                	push   %r13
  406336:	41 54                	push   %r12
  406338:	53                   	push   %rbx
  406339:	4c 8b 27             	mov    (%rdi),%r12
  40633c:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  406340:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  406345:	4c 8b 28             	mov    (%rax),%r13
  406348:	4d 85 ed             	test   %r13,%r13
  40634b:	0f 84 42 01 00 00    	je     406493 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406351:	e8 3a d1 ff ff       	callq  403490 <omp_get_num_threads@plt>
  406356:	89 c3                	mov    %eax,%ebx
  406358:	e8 83 d0 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40635d:	48 63 c8             	movslq %eax,%rcx
  406360:	48 63 f3             	movslq %ebx,%rsi
  406363:	4c 89 e8             	mov    %r13,%rax
  406366:	31 d2                	xor    %edx,%edx
  406368:	48 f7 f6             	div    %rsi
  40636b:	48 39 d1             	cmp    %rdx,%rcx
  40636e:	0f 82 2c 01 00 00    	jb     4064a0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x170>
  406374:	48 0f af c8          	imul   %rax,%rcx
  406378:	48 01 ca             	add    %rcx,%rdx
  40637b:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  40637f:	48 39 ca             	cmp    %rcx,%rdx
  406382:	0f 83 0b 01 00 00    	jae    406493 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406388:	4d 8b 44 24 20       	mov    0x20(%r12),%r8
  40638d:	49 8b 7c 24 30       	mov    0x30(%r12),%rdi
  406392:	4d 8b 08             	mov    (%r8),%r9
  406395:	48 8b 3f             	mov    (%rdi),%rdi
  406398:	4c 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%r8
  40639f:	00 
  4063a0:	49 8b 74 24 28       	mov    0x28(%r12),%rsi
  4063a5:	4f 8d 14 01          	lea    (%r9,%r8,1),%r10
  4063a9:	4d 8d 58 08          	lea    0x8(%r8),%r11
  4063ad:	4e 8d 24 1f          	lea    (%rdi,%r11,1),%r12
  4063b1:	4c 89 d3             	mov    %r10,%rbx
  4063b4:	4c 29 e3             	sub    %r12,%rbx
  4063b7:	48 8b 36             	mov    (%rsi),%rsi
  4063ba:	48 83 fb 10          	cmp    $0x10,%rbx
  4063be:	0f 97 c3             	seta   %bl
  4063c1:	4d 89 d4             	mov    %r10,%r12
  4063c4:	49 01 f3             	add    %rsi,%r11
  4063c7:	4d 29 dc             	sub    %r11,%r12
  4063ca:	49 83 fc 10          	cmp    $0x10,%r12
  4063ce:	41 0f 97 c3          	seta   %r11b
  4063d2:	44 84 db             	test   %r11b,%bl
  4063d5:	0f 84 d5 00 00 00    	je     4064b0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x180>
  4063db:	48 83 f8 01          	cmp    $0x1,%rax
  4063df:	0f 84 cb 00 00 00    	je     4064b0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x180>
  4063e5:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  4063e9:	48 83 f9 02          	cmp    $0x2,%rcx
  4063ed:	0f 86 f2 00 00 00    	jbe    4064e5 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1b5>
  4063f3:	49 89 c3             	mov    %rax,%r11
  4063f6:	49 c1 eb 02          	shr    $0x2,%r11
  4063fa:	c4 e2 7d 19 0d dd 91 	vbroadcastsd 0x91dd(%rip),%ymm1        # 40f5e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406401:	00 00 
  406403:	4a 8d 1c 06          	lea    (%rsi,%r8,1),%rbx
  406407:	49 c1 e3 05          	shl    $0x5,%r11
  40640b:	49 01 f8             	add    %rdi,%r8
  40640e:	31 c9                	xor    %ecx,%ecx
  406410:	c4 c1 7d 10 04 08    	vmovupd (%r8,%rcx,1),%ymm0
  406416:	c4 e2 f5 a8 04 0b    	vfmadd213pd (%rbx,%rcx,1),%ymm1,%ymm0
  40641c:	c4 c1 7d 11 04 0a    	vmovupd %ymm0,(%r10,%rcx,1)
  406422:	48 83 c1 20          	add    $0x20,%rcx
  406426:	49 39 cb             	cmp    %rcx,%r11
  406429:	75 e5                	jne    406410 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0xe0>
  40642b:	49 89 c0             	mov    %rax,%r8
  40642e:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
  406432:	4c 01 c2             	add    %r8,%rdx
  406435:	48 89 d1             	mov    %rdx,%rcx
  406438:	4c 39 c0             	cmp    %r8,%rax
  40643b:	0f 84 9f 00 00 00    	je     4064e0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1b0>
  406441:	4c 29 c0             	sub    %r8,%rax
  406444:	48 83 f8 01          	cmp    $0x1,%rax
  406448:	0f 84 9f 00 00 00    	je     4064ed <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1bd>
  40644e:	c5 f8 77             	vzeroupper 
  406451:	c5 f9 10 04 d7       	vmovupd (%rdi,%rdx,8),%xmm0
  406456:	c5 f9 10 1c d6       	vmovupd (%rsi,%rdx,8),%xmm3
  40645b:	62 f2 e5 18 98 05 7b 	vfmadd132pd 0x917b(%rip){1to2},%xmm3,%xmm0        # 40f5e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406462:	91 00 00 
  406465:	c4 c1 79 11 04 d1    	vmovupd %xmm0,(%r9,%rdx,8)
  40646b:	48 89 c2             	mov    %rax,%rdx
  40646e:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
  406472:	48 01 d1             	add    %rdx,%rcx
  406475:	48 39 d0             	cmp    %rdx,%rax
  406478:	74 19                	je     406493 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  40647a:	c5 fb 10 04 cf       	vmovsd (%rdi,%rcx,8),%xmm0
  40647f:	c5 fb 10 14 ce       	vmovsd (%rsi,%rcx,8),%xmm2
  406484:	c4 e2 e9 99 05 53 91 	vfmadd132sd 0x9153(%rip),%xmm2,%xmm0        # 40f5e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  40648b:	00 00 
  40648d:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  406493:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  406497:	5b                   	pop    %rbx
  406498:	41 5c                	pop    %r12
  40649a:	41 5d                	pop    %r13
  40649c:	5d                   	pop    %rbp
  40649d:	c3                   	retq   
  40649e:	66 90                	xchg   %ax,%ax
  4064a0:	48 ff c0             	inc    %rax
  4064a3:	31 d2                	xor    %edx,%edx
  4064a5:	e9 ca fe ff ff       	jmpq   406374 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x44>
  4064aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4064b0:	c5 fb 10 0d 28 91 00 	vmovsd 0x9128(%rip),%xmm1        # 40f5e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  4064b7:	00 
  4064b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4064bf:	00 
  4064c0:	c5 fb 10 04 d7       	vmovsd (%rdi,%rdx,8),%xmm0
  4064c5:	c4 e2 f1 a9 04 d6    	vfmadd213sd (%rsi,%rdx,8),%xmm1,%xmm0
  4064cb:	c4 c1 7b 11 04 d1    	vmovsd %xmm0,(%r9,%rdx,8)
  4064d1:	48 ff c2             	inc    %rdx
  4064d4:	48 39 d1             	cmp    %rdx,%rcx
  4064d7:	75 e7                	jne    4064c0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x190>
  4064d9:	eb b8                	jmp    406493 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  4064db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4064e0:	c5 f8 77             	vzeroupper 
  4064e3:	eb ae                	jmp    406493 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  4064e5:	48 89 d1             	mov    %rdx,%rcx
  4064e8:	e9 64 ff ff ff       	jmpq   406451 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x121>
  4064ed:	c5 f8 77             	vzeroupper 
  4064f0:	eb 88                	jmp    40647a <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x14a>
  4064f2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4064f9:	00 00 00 00 
  4064fd:	0f 1f 00             	nopl   (%rax)

0000000000406500 <_ZZ4mainENKUlmE_clEm._omp_fn.2>:
  406500:	55                   	push   %rbp
  406501:	48 89 e5             	mov    %rsp,%rbp
  406504:	41 57                	push   %r15
  406506:	41 56                	push   %r14
  406508:	41 55                	push   %r13
  40650a:	41 54                	push   %r12
  40650c:	53                   	push   %rbx
  40650d:	31 db                	xor    %ebx,%ebx
  40650f:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  406513:	48 83 ec 40          	sub    $0x40,%rsp
  406517:	48 8b 07             	mov    (%rdi),%rax
  40651a:	4c 8b 7f 08          	mov    0x8(%rdi),%r15
  40651e:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
  406523:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  406528:	e8 b3 ce ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40652d:	48 63 d0             	movslq %eax,%rdx
  406530:	49 8b 47 50          	mov    0x50(%r15),%rax
  406534:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  406539:	4c 8b 20             	mov    (%rax),%r12
  40653c:	49 8b 47 48          	mov    0x48(%r15),%rax
  406540:	49 c1 ec 03          	shr    $0x3,%r12
  406544:	48 8b 00             	mov    (%rax),%rax
  406547:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
  40654c:	4c 8b 34 d0          	mov    (%rax,%rdx,8),%r14
  406550:	49 8d 54 24 ff       	lea    -0x1(%r12),%rdx
  406555:	48 c1 ea 06          	shr    $0x6,%rdx
  406559:	48 ff c2             	inc    %rdx
  40655c:	48 c1 e2 09          	shl    $0x9,%rdx
  406560:	4e 8d 2c 32          	lea    (%rdx,%r14,1),%r13
  406564:	0f 1f 40 00          	nopl   0x0(%rax)
  406568:	4d 85 e4             	test   %r12,%r12
  40656b:	0f 84 6f 01 00 00    	je     4066e0 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x1e0>
  406571:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  406575:	4c 89 f0             	mov    %r14,%rax
  406578:	62 f1 fd 48 28 c7    	vmovapd %zmm7,%zmm0
  40657e:	62 f1 fd 48 28 f7    	vmovapd %zmm7,%zmm6
  406584:	62 f1 fd 48 28 df    	vmovapd %zmm7,%zmm3
  40658a:	62 f1 fd 48 28 ef    	vmovapd %zmm7,%zmm5
  406590:	62 f1 fd 48 28 cf    	vmovapd %zmm7,%zmm1
  406596:	62 f1 fd 48 28 e7    	vmovapd %zmm7,%zmm4
  40659c:	62 f1 fd 48 28 d7    	vmovapd %zmm7,%zmm2
  4065a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4065a8:	62 f1 ed 48 58 10    	vaddpd (%rax),%zmm2,%zmm2
  4065ae:	62 f1 dd 48 58 60 01 	vaddpd 0x40(%rax),%zmm4,%zmm4
  4065b5:	62 f1 f5 48 58 48 02 	vaddpd 0x80(%rax),%zmm1,%zmm1
  4065bc:	62 f1 d5 48 58 68 03 	vaddpd 0xc0(%rax),%zmm5,%zmm5
  4065c3:	62 f1 e5 48 58 58 04 	vaddpd 0x100(%rax),%zmm3,%zmm3
  4065ca:	62 f1 cd 48 58 70 05 	vaddpd 0x140(%rax),%zmm6,%zmm6
  4065d1:	62 f1 fd 48 58 40 06 	vaddpd 0x180(%rax),%zmm0,%zmm0
  4065d8:	62 f1 c5 48 58 78 07 	vaddpd 0x1c0(%rax),%zmm7,%zmm7
  4065df:	48 05 00 02 00 00    	add    $0x200,%rax
  4065e5:	49 39 c5             	cmp    %rax,%r13
  4065e8:	75 be                	jne    4065a8 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0xa8>
  4065ea:	62 f1 fd 48 58 c7    	vaddpd %zmm7,%zmm0,%zmm0
  4065f0:	62 f1 e5 48 58 de    	vaddpd %zmm6,%zmm3,%zmm3
  4065f6:	62 f1 f5 48 58 cd    	vaddpd %zmm5,%zmm1,%zmm1
  4065fc:	62 f1 ed 48 58 d4    	vaddpd %zmm4,%zmm2,%zmm2
  406602:	62 f1 fd 48 58 c3    	vaddpd %zmm3,%zmm0,%zmm0
  406608:	62 f1 f5 48 58 ca    	vaddpd %zmm2,%zmm1,%zmm1
  40660e:	62 f1 fd 48 58 c1    	vaddpd %zmm1,%zmm0,%zmm0
  406614:	62 f3 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm0,%ymm1
  40661b:	c5 f5 58 c8          	vaddpd %ymm0,%ymm1,%ymm1
  40661f:	48 ff c3             	inc    %rbx
  406622:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  406627:	62 f3 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm1,%xmm0
  40662e:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  406632:	bf 01 00 00 00       	mov    $0x1,%edi
  406637:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  40663b:	c5 3b 58 c0          	vaddsd %xmm0,%xmm8,%xmm8
  40663f:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  406643:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  406649:	c5 7b 11 44 24 20    	vmovsd %xmm8,0x20(%rsp)
  40664f:	c5 f8 77             	vzeroupper 
  406652:	e8 29 cc ff ff       	callq  403280 <clock_gettime@plt>
  406657:	48 69 44 24 30 00 ca 	imul   $0x3b9aca00,0x30(%rsp),%rax
  40665e:	9a 3b 
  406660:	c5 7b 10 44 24 20    	vmovsd 0x20(%rsp),%xmm8
  406666:	48 03 44 24 38       	add    0x38(%rsp),%rax
  40666b:	48 39 44 24 18       	cmp    %rax,0x18(%rsp)
  406670:	0f 87 f2 fe ff ff    	ja     406568 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x68>
  406676:	49 8b 47 50          	mov    0x50(%r15),%rax
  40667a:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  40667e:	4c 8b 20             	mov    (%rax),%r12
  406681:	62 f1 ff 08 7b c3    	vcvtusi2sd %rbx,%xmm0,%xmm0
  406687:	49 8b 47 58          	mov    0x58(%r15),%rax
  40668b:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  406690:	48 8b 00             	mov    (%rax),%rax
  406693:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  406697:	c5 fb 59 04 f8       	vmulsd (%rax,%rdi,8),%xmm0,%xmm0
  40669c:	4c 0f af e3          	imul   %rbx,%r12
  4066a0:	c5 b9 14 c0          	vunpcklpd %xmm0,%xmm8,%xmm0
  4066a4:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  4066a8:	c5 f9 29 44 24 20    	vmovapd %xmm0,0x20(%rsp)
  4066ae:	e8 dd ca ff ff       	callq  403190 <GOMP_atomic_start@plt>
  4066b3:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4066b8:	c5 f9 28 44 24 20    	vmovapd 0x20(%rsp),%xmm0
  4066be:	4c 01 60 28          	add    %r12,0x28(%rax)
  4066c2:	c5 f9 58 40 30       	vaddpd 0x30(%rax),%xmm0,%xmm0
  4066c7:	c5 f9 11 40 30       	vmovupd %xmm0,0x30(%rax)
  4066cc:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  4066d0:	5b                   	pop    %rbx
  4066d1:	41 5c                	pop    %r12
  4066d3:	41 5d                	pop    %r13
  4066d5:	41 5e                	pop    %r14
  4066d7:	41 5f                	pop    %r15
  4066d9:	5d                   	pop    %rbp
  4066da:	e9 41 cb ff ff       	jmpq   403220 <GOMP_atomic_end@plt>
  4066df:	90                   	nop
  4066e0:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  4066e4:	e9 2b ff ff ff       	jmpq   406614 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x114>
  4066e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004066f0 <_ZZ4mainENKUlmE_clEm._omp_fn.3>:
  4066f0:	55                   	push   %rbp
  4066f1:	48 89 e5             	mov    %rsp,%rbp
  4066f4:	41 55                	push   %r13
  4066f6:	41 54                	push   %r12
  4066f8:	49 89 fc             	mov    %rdi,%r12
  4066fb:	53                   	push   %rbx
  4066fc:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  406700:	48 81 ec 80 19 00 00 	sub    $0x1980,%rsp
  406707:	48 8b 1f             	mov    (%rdi),%rbx
  40670a:	48 8b 83 90 00 00 00 	mov    0x90(%rbx),%rax
  406711:	80 38 00             	cmpb   $0x0,(%rax)
  406714:	75 10                	jne    406726 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x36>
  406716:	48 8b 83 98 00 00 00 	mov    0x98(%rbx),%rax
  40671d:	80 38 00             	cmpb   $0x0,(%rax)
  406720:	0f 84 7a 10 00 00    	je     4077a0 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x10b0>
  406726:	64 80 3c 25 f0 ff ff 	cmpb   $0x0,%fs:0xfffffffffffffff0
  40672d:	ff 00 
  40672f:	0f 84 b6 13 00 00    	je     407aeb <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x13fb>
  406735:	64 0f b6 04 25 f8 ff 	movzbl %fs:0xfffffffffffffff8,%eax
  40673c:	ff ff 
  40673e:	84 c0                	test   %al,%al
  406740:	75 39                	jne    40677b <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x8b>
  406742:	48 8b 1d 97 8f 00 00 	mov    0x8f97(%rip),%rbx        # 40f6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  406749:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  40674f:	e8 3c ca ff ff       	callq  403190 <GOMP_atomic_start@plt>
  406754:	c4 e1 f9 6e f3       	vmovq  %rbx,%xmm6
  406759:	c4 c1 4b 58 44 24 38 	vaddsd 0x38(%r12),%xmm6,%xmm0
  406760:	45 09 6c 24 40       	or     %r13d,0x40(%r12)
  406765:	c4 c1 7b 11 44 24 38 	vmovsd %xmm0,0x38(%r12)
  40676c:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  406770:	5b                   	pop    %rbx
  406771:	41 5c                	pop    %r12
  406773:	41 5d                	pop    %r13
  406775:	5d                   	pop    %rbp
  406776:	e9 a5 ca ff ff       	jmpq   403220 <GOMP_atomic_end@plt>
  40677b:	48 8b 05 66 8e 00 00 	mov    0x8e66(%rip),%rax        # 40f5e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  406782:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  406786:	c5 f9 7f 84 24 50 01 	vmovdqa %xmm0,0x150(%rsp)
  40678d:	00 00 
  40678f:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  406796:	00 
  406797:	b8 10 10 00 00       	mov    $0x1010,%eax
  40679c:	c5 f9 7f 84 24 70 01 	vmovdqa %xmm0,0x170(%rsp)
  4067a3:	00 00 
  4067a5:	c5 f9 7f 84 24 40 01 	vmovdqa %xmm0,0x140(%rsp)
  4067ac:	00 00 
  4067ae:	c7 84 24 58 01 00 00 	movl   $0x400040,0x158(%rsp)
  4067b5:	40 00 40 00 
  4067b9:	c6 84 24 40 01 00 00 	movb   $0x1,0x140(%rsp)
  4067c0:	01 
  4067c1:	c7 84 24 70 01 00 00 	movl   $0x10101010,0x170(%rsp)
  4067c8:	10 10 10 10 
  4067cc:	66 89 84 24 74 01 00 	mov    %ax,0x174(%rsp)
  4067d3:	00 
  4067d4:	c5 f9 7f 84 24 60 01 	vmovdqa %xmm0,0x160(%rsp)
  4067db:	00 00 
  4067dd:	c4 e2 78 49 84 24 40 	ldtilecfg 0x140(%rsp)
  4067e4:	01 00 00 
  4067e7:	48 8b 83 90 00 00 00 	mov    0x90(%rbx),%rax
  4067ee:	80 38 00             	cmpb   $0x0,(%rax)
  4067f1:	0f 84 26 13 00 00    	je     407b1d <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x142d>
  4067f7:	c4 e2 7d 79 05 32 8f 	vpbroadcastw 0x8f32(%rip),%ymm0        # 40f732 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  4067fe:	00 00 
  406800:	48 8d 94 24 80 01 00 	lea    0x180(%rsp),%rdx
  406807:	00 
  406808:	c5 fd 7f 84 24 80 01 	vmovdqa %ymm0,0x180(%rsp)
  40680f:	00 00 
  406811:	c5 fd 7f 84 24 a0 01 	vmovdqa %ymm0,0x1a0(%rsp)
  406818:	00 00 
  40681a:	c5 fd 7f 84 24 c0 01 	vmovdqa %ymm0,0x1c0(%rsp)
  406821:	00 00 
  406823:	c5 fd 7f 84 24 e0 01 	vmovdqa %ymm0,0x1e0(%rsp)
  40682a:	00 00 
  40682c:	c5 fd 7f 84 24 00 02 	vmovdqa %ymm0,0x200(%rsp)
  406833:	00 00 
  406835:	c5 fd 7f 84 24 20 02 	vmovdqa %ymm0,0x220(%rsp)
  40683c:	00 00 
  40683e:	c5 fd 7f 84 24 40 02 	vmovdqa %ymm0,0x240(%rsp)
  406845:	00 00 
  406847:	c5 fd 7f 84 24 60 02 	vmovdqa %ymm0,0x260(%rsp)
  40684e:	00 00 
  406850:	c5 fd 7f 84 24 80 02 	vmovdqa %ymm0,0x280(%rsp)
  406857:	00 00 
  406859:	c5 fd 7f 84 24 a0 02 	vmovdqa %ymm0,0x2a0(%rsp)
  406860:	00 00 
  406862:	c5 fd 7f 84 24 c0 02 	vmovdqa %ymm0,0x2c0(%rsp)
  406869:	00 00 
  40686b:	c5 fd 7f 84 24 e0 02 	vmovdqa %ymm0,0x2e0(%rsp)
  406872:	00 00 
  406874:	c5 fd 7f 84 24 00 03 	vmovdqa %ymm0,0x300(%rsp)
  40687b:	00 00 
  40687d:	c5 fd 7f 84 24 20 03 	vmovdqa %ymm0,0x320(%rsp)
  406884:	00 00 
  406886:	c5 fd 7f 84 24 40 03 	vmovdqa %ymm0,0x340(%rsp)
  40688d:	00 00 
  40688f:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  406896:	00 00 
  406898:	c5 fd 7f 84 24 80 03 	vmovdqa %ymm0,0x380(%rsp)
  40689f:	00 00 
  4068a1:	c5 fd 7f 84 24 a0 03 	vmovdqa %ymm0,0x3a0(%rsp)
  4068a8:	00 00 
  4068aa:	c5 fd 7f 84 24 c0 03 	vmovdqa %ymm0,0x3c0(%rsp)
  4068b1:	00 00 
  4068b3:	c5 fd 7f 84 24 e0 03 	vmovdqa %ymm0,0x3e0(%rsp)
  4068ba:	00 00 
  4068bc:	c5 fd 7f 84 24 00 04 	vmovdqa %ymm0,0x400(%rsp)
  4068c3:	00 00 
  4068c5:	c5 fd 7f 84 24 20 04 	vmovdqa %ymm0,0x420(%rsp)
  4068cc:	00 00 
  4068ce:	c5 fd 7f 84 24 40 04 	vmovdqa %ymm0,0x440(%rsp)
  4068d5:	00 00 
  4068d7:	c5 fd 7f 84 24 60 04 	vmovdqa %ymm0,0x460(%rsp)
  4068de:	00 00 
  4068e0:	c5 fd 7f 84 24 80 04 	vmovdqa %ymm0,0x480(%rsp)
  4068e7:	00 00 
  4068e9:	c5 fd 7f 84 24 a0 04 	vmovdqa %ymm0,0x4a0(%rsp)
  4068f0:	00 00 
  4068f2:	c5 fd 7f 84 24 c0 04 	vmovdqa %ymm0,0x4c0(%rsp)
  4068f9:	00 00 
  4068fb:	c5 fd 7f 84 24 e0 04 	vmovdqa %ymm0,0x4e0(%rsp)
  406902:	00 00 
  406904:	c5 fd 7f 84 24 00 05 	vmovdqa %ymm0,0x500(%rsp)
  40690b:	00 00 
  40690d:	c5 fd 7f 84 24 20 05 	vmovdqa %ymm0,0x520(%rsp)
  406914:	00 00 
  406916:	c5 fd 7f 84 24 40 05 	vmovdqa %ymm0,0x540(%rsp)
  40691d:	00 00 
  40691f:	b8 40 00 00 00       	mov    $0x40,%eax
  406924:	c5 fd 7f 84 24 60 05 	vmovdqa %ymm0,0x560(%rsp)
  40692b:	00 00 
  40692d:	c5 fd 7f 84 24 80 05 	vmovdqa %ymm0,0x580(%rsp)
  406934:	00 00 
  406936:	c5 fd 7f 84 24 a0 05 	vmovdqa %ymm0,0x5a0(%rsp)
  40693d:	00 00 
  40693f:	c5 fd 7f 84 24 c0 05 	vmovdqa %ymm0,0x5c0(%rsp)
  406946:	00 00 
  406948:	c5 fd 7f 84 24 e0 05 	vmovdqa %ymm0,0x5e0(%rsp)
  40694f:	00 00 
  406951:	c5 fd 7f 84 24 00 06 	vmovdqa %ymm0,0x600(%rsp)
  406958:	00 00 
  40695a:	c5 fd 7f 84 24 20 06 	vmovdqa %ymm0,0x620(%rsp)
  406961:	00 00 
  406963:	c5 fd 7f 84 24 40 06 	vmovdqa %ymm0,0x640(%rsp)
  40696a:	00 00 
  40696c:	c5 fd 7f 84 24 60 06 	vmovdqa %ymm0,0x660(%rsp)
  406973:	00 00 
  406975:	c5 fd 7f 84 24 80 06 	vmovdqa %ymm0,0x680(%rsp)
  40697c:	00 00 
  40697e:	c5 fd 7f 84 24 a0 06 	vmovdqa %ymm0,0x6a0(%rsp)
  406985:	00 00 
  406987:	c5 fd 7f 84 24 c0 06 	vmovdqa %ymm0,0x6c0(%rsp)
  40698e:	00 00 
  406990:	c5 fd 7f 84 24 e0 06 	vmovdqa %ymm0,0x6e0(%rsp)
  406997:	00 00 
  406999:	c5 fd 7f 84 24 00 07 	vmovdqa %ymm0,0x700(%rsp)
  4069a0:	00 00 
  4069a2:	c5 fd 7f 84 24 20 07 	vmovdqa %ymm0,0x720(%rsp)
  4069a9:	00 00 
  4069ab:	c5 fd 7f 84 24 40 07 	vmovdqa %ymm0,0x740(%rsp)
  4069b2:	00 00 
  4069b4:	c5 fd 7f 84 24 60 07 	vmovdqa %ymm0,0x760(%rsp)
  4069bb:	00 00 
  4069bd:	c5 fd 7f 84 24 80 07 	vmovdqa %ymm0,0x780(%rsp)
  4069c4:	00 00 
  4069c6:	c5 fd 7f 84 24 a0 07 	vmovdqa %ymm0,0x7a0(%rsp)
  4069cd:	00 00 
  4069cf:	c5 fd 7f 84 24 c0 07 	vmovdqa %ymm0,0x7c0(%rsp)
  4069d6:	00 00 
  4069d8:	c5 fd 7f 84 24 e0 07 	vmovdqa %ymm0,0x7e0(%rsp)
  4069df:	00 00 
  4069e1:	c5 fd 7f 84 24 00 08 	vmovdqa %ymm0,0x800(%rsp)
  4069e8:	00 00 
  4069ea:	c5 fd 7f 84 24 20 08 	vmovdqa %ymm0,0x820(%rsp)
  4069f1:	00 00 
  4069f3:	c5 fd 7f 84 24 40 08 	vmovdqa %ymm0,0x840(%rsp)
  4069fa:	00 00 
  4069fc:	c5 fd 7f 84 24 60 08 	vmovdqa %ymm0,0x860(%rsp)
  406a03:	00 00 
  406a05:	c5 fd 7f 84 24 80 08 	vmovdqa %ymm0,0x880(%rsp)
  406a0c:	00 00 
  406a0e:	c5 fd 7f 84 24 a0 08 	vmovdqa %ymm0,0x8a0(%rsp)
  406a15:	00 00 
  406a17:	c5 fd 7f 84 24 c0 08 	vmovdqa %ymm0,0x8c0(%rsp)
  406a1e:	00 00 
  406a20:	c5 fd 7f 84 24 e0 08 	vmovdqa %ymm0,0x8e0(%rsp)
  406a27:	00 00 
  406a29:	c5 fd 7f 84 24 00 09 	vmovdqa %ymm0,0x900(%rsp)
  406a30:	00 00 
  406a32:	c5 fd 7f 84 24 20 09 	vmovdqa %ymm0,0x920(%rsp)
  406a39:	00 00 
  406a3b:	c5 fd 7f 84 24 40 09 	vmovdqa %ymm0,0x940(%rsp)
  406a42:	00 00 
  406a44:	c5 fd 7f 84 24 60 09 	vmovdqa %ymm0,0x960(%rsp)
  406a4b:	00 00 
  406a4d:	c4 e2 7b 4b 24 02    	tileloadd (%rdx,%rax,1),%tmm4
  406a53:	48 8d 94 24 80 05 00 	lea    0x580(%rsp),%rdx
  406a5a:	00 
  406a5b:	c4 e2 7b 4b 2c 02    	tileloadd (%rdx,%rax,1),%tmm5
  406a61:	ba 00 04 00 00       	mov    $0x400,%edx
  406a66:	c4 e2 7b 49 c0       	tilezero %tmm0
  406a6b:	c4 e2 7b 49 c8       	tilezero %tmm1
  406a70:	c4 e2 7b 49 d0       	tilezero %tmm2
  406a75:	c4 e2 7b 49 d8       	tilezero %tmm3
  406a7a:	b8 00 01 00 00       	mov    $0x100,%eax
  406a7f:	90                   	nop
  406a80:	c4 e2 52 5c c4       	tdpbf16ps %tmm5,%tmm4,%tmm0
  406a85:	c4 e2 52 5c cc       	tdpbf16ps %tmm5,%tmm4,%tmm1
  406a8a:	c4 e2 52 5c d4       	tdpbf16ps %tmm5,%tmm4,%tmm2
  406a8f:	c4 e2 52 5c dc       	tdpbf16ps %tmm5,%tmm4,%tmm3
  406a94:	ff c8                	dec    %eax
  406a96:	75 e8                	jne    406a80 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x390>
  406a98:	ff ca                	dec    %edx
  406a9a:	75 ca                	jne    406a66 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x376>
  406a9c:	48 8d 8c 24 80 09 00 	lea    0x980(%rsp),%rcx
  406aa3:	00 
  406aa4:	b8 40 00 00 00       	mov    $0x40,%eax
  406aa9:	c4 e2 7a 4b 04 01    	tilestored %tmm0,(%rcx,%rax,1)
  406aaf:	48 8d 94 24 80 0d 00 	lea    0xd80(%rsp),%rdx
  406ab6:	00 
  406ab7:	c4 e2 7a 4b 0c 02    	tilestored %tmm1,(%rdx,%rax,1)
  406abd:	48 8d 94 24 80 11 00 	lea    0x1180(%rsp),%rdx
  406ac4:	00 
  406ac5:	c4 e2 7a 4b 14 02    	tilestored %tmm2,(%rdx,%rax,1)
  406acb:	48 8d 94 24 80 15 00 	lea    0x1580(%rsp),%rdx
  406ad2:	00 
  406ad3:	c4 e2 7a 4b 1c 02    	tilestored %tmm3,(%rdx,%rax,1)
  406ad9:	62 61 7d 28 6f 05 dd 	vmovdqa32 0x8bdd(%rip),%ymm24        # 40f6c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  406ae0:	8b 00 00 
  406ae3:	62 61 7d 28 6f 0d b3 	vmovdqa32 0x8bb3(%rip),%ymm25        # 40f6a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1a0>
  406aea:	8b 00 00 
  406aed:	c4 e2 7d 58 3d ca 8b 	vpbroadcastd 0x8bca(%rip),%ymm7        # 40f6c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  406af4:	00 00 
  406af6:	48 8b 1d e3 8b 00 00 	mov    0x8be3(%rip),%rbx        # 40f6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  406afd:	62 e2 7d 28 18 3d fd 	vbroadcastss 0x8bfd(%rip),%ymm23        # 40f704 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x204>
  406b04:	8b 00 00 
  406b07:	62 01 7d 28 6f d0    	vmovdqa32 %ymm24,%ymm26
  406b0d:	45 31 ed             	xor    %r13d,%r13d
  406b10:	c5 fd 7f bc 24 20 01 	vmovdqa %ymm7,0x120(%rsp)
  406b17:	00 00 
  406b19:	62 01 7d 28 6f c1    	vmovdqa32 %ymm25,%ymm24
  406b1f:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  406b26:	48 8d 91 00 fc ff ff 	lea    -0x400(%rcx),%rdx
  406b2d:	62 01 25 00 ef db    	vpxord %xmm27,%xmm27,%xmm27
  406b33:	c5 fc 28 72 20       	vmovaps 0x20(%rdx),%ymm6
  406b38:	c5 fc 28 1a          	vmovaps (%rdx),%ymm3
  406b3c:	62 b3 7d 28 19 f4 01 	vextractf32x4 $0x1,%ymm6,%xmm20
  406b43:	c5 fc 28 72 40       	vmovaps 0x40(%rdx),%ymm6
  406b48:	62 b3 7d 28 19 dd 01 	vextractf32x4 $0x1,%ymm3,%xmm21
  406b4f:	c4 e3 7d 19 f1 01    	vextractf128 $0x1,%ymm6,%xmm1
  406b55:	c5 fc 28 72 60       	vmovaps 0x60(%rdx),%ymm6
  406b5a:	c5 fc 28 9a 20 01 00 	vmovaps 0x120(%rdx),%ymm3
  406b61:	00 
  406b62:	c4 e3 7d 19 f0 01    	vextractf128 $0x1,%ymm6,%xmm0
  406b68:	c5 fc 28 b2 80 00 00 	vmovaps 0x80(%rdx),%ymm6
  406b6f:	00 
  406b70:	c5 fc 5a c0          	vcvtps2pd %xmm0,%ymm0
  406b74:	c4 c3 7d 19 f5 01    	vextractf128 $0x1,%ymm6,%xmm13
  406b7a:	c5 fc 28 b2 a0 00 00 	vmovaps 0xa0(%rdx),%ymm6
  406b81:	00 
  406b82:	c5 fd 29 84 24 00 01 	vmovapd %ymm0,0x100(%rsp)
  406b89:	00 00 
  406b8b:	c4 c3 7d 19 f4 01    	vextractf128 $0x1,%ymm6,%xmm12
  406b91:	c5 fc 28 b2 c0 00 00 	vmovaps 0xc0(%rdx),%ymm6
  406b98:	00 
  406b99:	c5 fc 28 82 a0 01 00 	vmovaps 0x1a0(%rdx),%ymm0
  406ba0:	00 
  406ba1:	c4 c3 7d 19 f1 01    	vextractf128 $0x1,%ymm6,%xmm9
  406ba7:	c4 e3 7d 19 dd 01    	vextractf128 $0x1,%ymm3,%xmm5
  406bad:	c5 fc 28 b2 e0 00 00 	vmovaps 0xe0(%rdx),%ymm6
  406bb4:	00 
  406bb5:	c5 fc 28 9a 40 01 00 	vmovaps 0x140(%rdx),%ymm3
  406bbc:	00 
  406bbd:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  406bc4:	62 61 7c 28 5a 72 02 	vcvtps2pd 0x20(%rdx),%ymm30
  406bcb:	62 61 7c 28 5a 6a 04 	vcvtps2pd 0x40(%rdx),%ymm29
  406bd2:	c5 7c 5a b2 40 01 00 	vcvtps2pd 0x140(%rdx),%ymm14
  406bd9:	00 
  406bda:	62 e1 7c 28 5a 32    	vcvtps2pd (%rdx),%ymm22
  406be0:	62 e1 7c 28 5a 5a 06 	vcvtps2pd 0x60(%rdx),%ymm19
  406be7:	62 e1 7c 28 5a 52 08 	vcvtps2pd 0x80(%rdx),%ymm18
  406bee:	62 e1 7c 28 5a 4a 0a 	vcvtps2pd 0xa0(%rdx),%ymm17
  406bf5:	62 e1 7c 28 5a 42 0c 	vcvtps2pd 0xc0(%rdx),%ymm16
  406bfc:	c5 7c 5a ba e0 00 00 	vcvtps2pd 0xe0(%rdx),%ymm15
  406c03:	00 
  406c04:	62 61 7c 28 5a 62 10 	vcvtps2pd 0x100(%rdx),%ymm28
  406c0b:	62 61 7c 28 5a 4a 12 	vcvtps2pd 0x120(%rdx),%ymm25
  406c12:	c5 7c 5a 9a 60 01 00 	vcvtps2pd 0x160(%rdx),%ymm11
  406c19:	00 
  406c1a:	c5 7c 5a 92 80 01 00 	vcvtps2pd 0x180(%rdx),%ymm10
  406c21:	00 
  406c22:	c5 7c 5a 82 a0 01 00 	vcvtps2pd 0x1a0(%rdx),%ymm8
  406c29:	00 
  406c2a:	c5 fc 28 92 80 01 00 	vmovaps 0x180(%rdx),%ymm2
  406c31:	00 
  406c32:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  406c38:	c4 e3 7d 19 f7 01    	vextractf128 $0x1,%ymm6,%xmm7
  406c3e:	62 61 7c 28 5a 7a 1c 	vcvtps2pd 0x1c0(%rdx),%ymm31
  406c45:	c5 fc 28 b2 00 01 00 	vmovaps 0x100(%rdx),%ymm6
  406c4c:	00 
  406c4d:	c4 e3 7d 19 dc 01    	vextractf128 $0x1,%ymm3,%xmm4
  406c53:	c5 fd 29 44 24 40    	vmovapd %ymm0,0x40(%rsp)
  406c59:	c5 fc 28 9a 60 01 00 	vmovaps 0x160(%rdx),%ymm3
  406c60:	00 
  406c61:	c5 fc 5a c9          	vcvtps2pd %xmm1,%ymm1
  406c65:	c5 fd 29 8c 24 e0 00 	vmovapd %ymm1,0xe0(%rsp)
  406c6c:	00 00 
  406c6e:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0x60(%rsp)
  406c75:	03 
  406c76:	c5 fc 28 82 c0 01 00 	vmovaps 0x1c0(%rdx),%ymm0
  406c7d:	00 
  406c7e:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  406c85:	07 
  406c86:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  406c8d:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  406c93:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  406c9a:	00 00 
  406c9c:	c5 fc 28 82 e0 01 00 	vmovaps 0x1e0(%rdx),%ymm0
  406ca3:	00 
  406ca4:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  406ca9:	62 61 7c 28 5a 7a 1e 	vcvtps2pd 0x1e0(%rdx),%ymm31
  406cb0:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xa0(%rsp)
  406cb7:	05 
  406cb8:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  406cbf:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  406cc4:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  406cca:	c5 fd 29 84 24 c0 00 	vmovapd %ymm0,0xc0(%rsp)
  406cd1:	00 00 
  406cd3:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  406cd8:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406cdc:	62 b1 cd 00 15 ce    	vunpckhpd %xmm22,%xmm22,%xmm1
  406ce2:	62 a3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm22,%xmm22
  406ce9:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  406ced:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  406cf4:	07 
  406cf5:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  406cfa:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  406cff:	62 61 fd 08 6e f8    	vmovq  %rax,%xmm31
  406d05:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  406d0a:	62 91 f7 08 58 cf    	vaddsd %xmm31,%xmm1,%xmm1
  406d10:	62 21 cd 00 15 fe    	vunpckhpd %xmm22,%xmm22,%xmm31
  406d16:	62 a1 7c 28 5a ed    	vcvtps2pd %xmm21,%ymm21
  406d1c:	62 f1 87 00 58 c9    	vaddsd %xmm1,%xmm31,%xmm1
  406d22:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  406d29:	07 
  406d2a:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  406d2f:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  406d34:	62 e1 fd 08 6e f0    	vmovq  %rax,%xmm22
  406d3a:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  406d3f:	62 b1 f7 08 58 ce    	vaddsd %xmm22,%xmm1,%xmm1
  406d45:	62 21 d5 00 15 fd    	vunpckhpd %xmm21,%xmm21,%xmm31
  406d4b:	62 a3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm21,%xmm21
  406d52:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  406d59:	07 
  406d5a:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  406d5f:	62 61 87 00 58 f9    	vaddsd %xmm1,%xmm31,%xmm31
  406d65:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  406d6a:	62 61 fd 08 13 74 24 	vmovlpd %xmm30,0x38(%rsp)
  406d71:	07 
  406d72:	62 01 f7 08 58 ff    	vaddsd %xmm31,%xmm1,%xmm31
  406d78:	62 a1 d5 00 15 f5    	vunpckhpd %xmm21,%xmm21,%xmm22
  406d7e:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  406d83:	62 81 cf 00 58 f7    	vaddsd %xmm31,%xmm22,%xmm22
  406d89:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  406d8e:	62 01 8d 00 15 fe    	vunpckhpd %xmm30,%xmm30,%xmm31
  406d94:	62 a1 f7 08 58 f6    	vaddsd %xmm22,%xmm1,%xmm22
  406d9a:	62 a1 7c 28 5a e4    	vcvtps2pd %xmm20,%ymm20
  406da0:	c5 fd 28 8c 24 e0 00 	vmovapd 0xe0(%rsp),%ymm1
  406da7:	00 00 
  406da9:	62 21 87 00 58 fe    	vaddsd %xmm22,%xmm31,%xmm31
  406daf:	62 23 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm30,%xmm22
  406db6:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  406dbd:	07 
  406dbe:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  406dc5:	07 
  406dc6:	62 a1 cd 00 15 f6    	vunpckhpd %xmm22,%xmm22,%xmm22
  406dcc:	62 01 8f 00 58 f7    	vaddsd %xmm31,%xmm30,%xmm30
  406dd2:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  406dd9:	07 
  406dda:	62 61 ff 08 10 7c 24 	vmovsd 0x38(%rsp),%xmm31
  406de1:	07 
  406de2:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  406de8:	62 21 dd 00 15 f4    	vunpckhpd %xmm20,%xmm20,%xmm30
  406dee:	62 a3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm20,%xmm20
  406df5:	62 a1 87 00 58 f6    	vaddsd %xmm22,%xmm31,%xmm22
  406dfb:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  406e02:	07 
  406e03:	62 a1 dd 00 15 ec    	vunpckhpd %xmm20,%xmm20,%xmm21
  406e09:	62 21 8f 00 58 f6    	vaddsd %xmm22,%xmm30,%xmm30
  406e0f:	62 e1 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm22
  406e16:	07 
  406e17:	62 61 fd 08 13 6c 24 	vmovlpd %xmm29,0x38(%rsp)
  406e1e:	07 
  406e1f:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  406e25:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  406e2c:	07 
  406e2d:	c5 f9 13 8c 24 e0 00 	vmovlpd %xmm1,0xe0(%rsp)
  406e34:	00 00 
  406e36:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  406e3c:	62 81 95 00 15 f5    	vunpckhpd %xmm29,%xmm29,%xmm22
  406e42:	c4 41 7c 5a ed       	vcvtps2pd %xmm13,%ymm13
  406e47:	62 a1 8f 00 58 ed    	vaddsd %xmm21,%xmm30,%xmm21
  406e4d:	c4 41 7c 5a e4       	vcvtps2pd %xmm12,%ymm12
  406e52:	c4 41 7c 5a c9       	vcvtps2pd %xmm9,%ymm9
  406e57:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  406e5d:	62 23 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm29,%xmm21
  406e64:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  406e6b:	07 
  406e6c:	62 61 ff 08 10 6c 24 	vmovsd 0x38(%rsp),%xmm29
  406e73:	07 
  406e74:	62 a1 d5 00 15 ed    	vunpckhpd %xmm21,%xmm21,%xmm21
  406e7a:	62 a1 97 00 58 f6    	vaddsd %xmm22,%xmm29,%xmm22
  406e80:	62 61 ff 08 10 6c 24 	vmovsd 0xe0(%rsp),%xmm29
  406e87:	1c 
  406e88:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0xe0(%rsp)
  406e8f:	1c 
  406e90:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  406e96:	62 e1 f5 08 15 f1    	vunpckhpd %xmm1,%xmm1,%xmm22
  406e9c:	62 f3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm1,%xmm1
  406ea3:	62 a1 97 00 58 ed    	vaddsd %xmm21,%xmm29,%xmm21
  406ea9:	62 e1 f5 08 15 e1    	vunpckhpd %xmm1,%xmm1,%xmm20
  406eaf:	c5 fc 5a ff          	vcvtps2pd %xmm7,%ymm7
  406eb3:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  406eb9:	c4 e3 7d 19 f6 01    	vextractf128 $0x1,%ymm6,%xmm6
  406ebf:	c5 fc 5a f6          	vcvtps2pd %xmm6,%ymm6
  406ec3:	62 a1 f7 08 58 ee    	vaddsd %xmm22,%xmm1,%xmm21
  406ec9:	62 e1 ff 08 10 74 24 	vmovsd 0xe0(%rsp),%xmm22
  406ed0:	1c 
  406ed1:	c5 fc 5a ed          	vcvtps2pd %xmm5,%ymm5
  406ed5:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  406edb:	62 a1 e5 00 15 eb    	vunpckhpd %xmm19,%xmm19,%xmm21
  406ee1:	62 a3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm19,%xmm19
  406ee8:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  406eee:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0xe0(%rsp)
  406ef5:	1c 
  406ef6:	62 e1 ff 08 10 74 24 	vmovsd 0xe0(%rsp),%xmm22
  406efd:	1c 
  406efe:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  406f04:	c5 fd 28 84 24 00 01 	vmovapd 0x100(%rsp),%ymm0
  406f0b:	00 00 
  406f0d:	62 a1 e5 00 15 e3    	vunpckhpd %xmm19,%xmm19,%xmm20
  406f13:	62 a1 cf 00 58 ed    	vaddsd %xmm21,%xmm22,%xmm21
  406f19:	c5 f9 13 84 24 00 01 	vmovlpd %xmm0,0x100(%rsp)
  406f20:	00 00 
  406f22:	62 e1 ff 08 10 74 24 	vmovsd 0x100(%rsp),%xmm22
  406f29:	20 
  406f2a:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  406f30:	62 e1 fd 08 15 e8    	vunpckhpd %xmm0,%xmm0,%xmm21
  406f36:	62 f3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm0,%xmm0
  406f3d:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  406f43:	62 e1 fd 08 15 d8    	vunpckhpd %xmm0,%xmm0,%xmm19
  406f49:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x100(%rsp)
  406f50:	20 
  406f51:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  406f57:	c5 fc 5a e4          	vcvtps2pd %xmm4,%ymm4
  406f5b:	c4 e3 7d 19 db 01    	vextractf128 $0x1,%ymm3,%xmm3
  406f61:	62 a1 ff 08 58 e5    	vaddsd %xmm21,%xmm0,%xmm20
  406f67:	62 e1 ff 08 10 6c 24 	vmovsd 0x100(%rsp),%xmm21
  406f6e:	20 
  406f6f:	c5 fc 5a db          	vcvtps2pd %xmm3,%ymm3
  406f73:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  406f79:	62 a1 ed 00 15 e2    	vunpckhpd %xmm18,%xmm18,%xmm20
  406f7f:	62 a3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm18,%xmm18
  406f86:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  406f8c:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x100(%rsp)
  406f93:	20 
  406f94:	62 e1 ff 08 10 6c 24 	vmovsd 0x100(%rsp),%xmm21
  406f9b:	20 
  406f9c:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  406fa2:	62 a1 ed 00 15 da    	vunpckhpd %xmm18,%xmm18,%xmm19
  406fa8:	c5 79 13 ac 24 00 01 	vmovlpd %xmm13,0x100(%rsp)
  406faf:	00 00 
  406fb1:	62 a1 d7 00 58 e4    	vaddsd %xmm20,%xmm21,%xmm20
  406fb7:	62 e1 ff 08 10 6c 24 	vmovsd 0x100(%rsp),%xmm21
  406fbe:	20 
  406fbf:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x100(%rsp)
  406fc6:	20 
  406fc7:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  406fcd:	62 c1 95 08 15 e5    	vunpckhpd %xmm13,%xmm13,%xmm20
  406fd3:	62 53 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm13,%xmm13
  406fda:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  406fe0:	62 c1 95 08 15 d5    	vunpckhpd %xmm13,%xmm13,%xmm18
  406fe6:	c4 e3 7d 19 d2 01    	vextractf128 $0x1,%ymm2,%xmm2
  406fec:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  406ff2:	c5 fc 5a d2          	vcvtps2pd %xmm2,%ymm2
  406ff6:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  406ffd:	62 a1 97 08 58 dc    	vaddsd %xmm20,%xmm13,%xmm19
  407003:	62 e1 ff 08 10 64 24 	vmovsd 0x100(%rsp),%xmm20
  40700a:	20 
  40700b:	62 43 fd 28 19 cd 01 	vextractf64x2 $0x1,%ymm25,%xmm13
  407012:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  407018:	62 a1 f5 00 15 d9    	vunpckhpd %xmm17,%xmm17,%xmm19
  40701e:	62 a3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm17,%xmm17
  407025:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  40702b:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x100(%rsp)
  407032:	20 
  407033:	62 e1 ff 08 10 64 24 	vmovsd 0x100(%rsp),%xmm20
  40703a:	20 
  40703b:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  407041:	62 a1 f5 00 15 d1    	vunpckhpd %xmm17,%xmm17,%xmm18
  407047:	c5 79 13 a4 24 00 01 	vmovlpd %xmm12,0x100(%rsp)
  40704e:	00 00 
  407050:	62 a1 df 00 58 db    	vaddsd %xmm19,%xmm20,%xmm19
  407056:	62 e1 ff 08 10 64 24 	vmovsd 0x100(%rsp),%xmm20
  40705d:	20 
  40705e:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x100(%rsp)
  407065:	20 
  407066:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  40706c:	62 c1 9d 08 15 dc    	vunpckhpd %xmm12,%xmm12,%xmm19
  407072:	62 53 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm12,%xmm12
  407079:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  40707f:	62 c1 9d 08 15 cc    	vunpckhpd %xmm12,%xmm12,%xmm17
  407085:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  40708b:	62 a1 9f 08 58 d3    	vaddsd %xmm19,%xmm12,%xmm18
  407091:	62 e1 ff 08 10 5c 24 	vmovsd 0x100(%rsp),%xmm19
  407098:	20 
  407099:	62 53 fd 28 19 f4 01 	vextractf64x2 $0x1,%ymm14,%xmm12
  4070a0:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  4070a6:	62 a1 fd 00 15 d0    	vunpckhpd %xmm16,%xmm16,%xmm18
  4070ac:	62 a3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm16,%xmm16
  4070b3:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  4070b9:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x100(%rsp)
  4070c0:	20 
  4070c1:	62 e1 ff 08 10 5c 24 	vmovsd 0x100(%rsp),%xmm19
  4070c8:	20 
  4070c9:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  4070cf:	62 a1 fd 00 15 c8    	vunpckhpd %xmm16,%xmm16,%xmm17
  4070d5:	c5 79 13 8c 24 00 01 	vmovlpd %xmm9,0x100(%rsp)
  4070dc:	00 00 
  4070de:	62 a1 e7 00 58 d2    	vaddsd %xmm18,%xmm19,%xmm18
  4070e4:	62 e1 ff 08 10 5c 24 	vmovsd 0x100(%rsp),%xmm19
  4070eb:	20 
  4070ec:	c5 79 13 bc 24 00 01 	vmovlpd %xmm15,0x100(%rsp)
  4070f3:	00 00 
  4070f5:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  4070fb:	62 c1 b5 08 15 d1    	vunpckhpd %xmm9,%xmm9,%xmm18
  407101:	62 53 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm9,%xmm9
  407108:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  40710e:	62 c1 b5 08 15 c1    	vunpckhpd %xmm9,%xmm9,%xmm16
  407114:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  40711a:	62 a1 b7 08 58 ca    	vaddsd %xmm18,%xmm9,%xmm17
  407120:	62 e1 ff 08 10 54 24 	vmovsd 0x100(%rsp),%xmm18
  407127:	20 
  407128:	c5 f9 13 bc 24 00 01 	vmovlpd %xmm7,0x100(%rsp)
  40712f:	00 00 
  407131:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  407137:	62 c1 85 08 15 cf    	vunpckhpd %xmm15,%xmm15,%xmm17
  40713d:	62 53 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm15,%xmm15
  407144:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  40714a:	62 e1 ff 08 10 54 24 	vmovsd 0x100(%rsp),%xmm18
  407151:	20 
  407152:	62 61 fd 08 13 64 24 	vmovlpd %xmm28,0x100(%rsp)
  407159:	20 
  40715a:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  407160:	62 c1 85 08 15 c7    	vunpckhpd %xmm15,%xmm15,%xmm16
  407166:	62 a1 87 08 58 c9    	vaddsd %xmm17,%xmm15,%xmm17
  40716c:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  407172:	62 e1 c5 08 15 cf    	vunpckhpd %xmm7,%xmm7,%xmm17
  407178:	62 f3 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm7,%xmm7
  40717f:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  407185:	c5 41 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm15
  407189:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  40718f:	62 a1 c7 08 58 c1    	vaddsd %xmm17,%xmm7,%xmm16
  407195:	62 e1 ff 08 10 4c 24 	vmovsd 0x100(%rsp),%xmm17
  40719c:	20 
  40719d:	c5 f9 13 b4 24 00 01 	vmovlpd %xmm6,0x100(%rsp)
  4071a4:	00 00 
  4071a6:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  4071ac:	62 81 9d 00 15 c4    	vunpckhpd %xmm28,%xmm28,%xmm16
  4071b2:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  4071b8:	62 e1 ff 08 10 4c 24 	vmovsd 0x100(%rsp),%xmm17
  4071bf:	20 
  4071c0:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4071c6:	62 43 fd 28 19 e7 01 	vextractf64x2 $0x1,%ymm28,%xmm15
  4071cd:	62 a1 87 08 58 c0    	vaddsd %xmm16,%xmm15,%xmm16
  4071d3:	c4 41 01 15 ff       	vunpckhpd %xmm15,%xmm15,%xmm15
  4071d8:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  4071de:	62 e1 cd 08 15 c6    	vunpckhpd %xmm6,%xmm6,%xmm16
  4071e4:	62 f3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm6,%xmm6
  4071eb:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  4071f1:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4071f7:	62 31 cf 08 58 f8    	vaddsd %xmm16,%xmm6,%xmm15
  4071fd:	c5 c9 15 f6          	vunpckhpd %xmm6,%xmm6,%xmm6
  407201:	c4 c1 4b 58 f7       	vaddsd %xmm15,%xmm6,%xmm6
  407206:	62 11 b5 00 15 f9    	vunpckhpd %xmm25,%xmm25,%xmm15
  40720c:	62 f1 b7 00 58 f6    	vaddsd %xmm6,%xmm25,%xmm6
  407212:	c5 03 58 fe          	vaddsd %xmm6,%xmm15,%xmm15
  407216:	c4 c1 13 58 f7       	vaddsd %xmm15,%xmm13,%xmm6
  40721b:	c4 41 11 15 ed       	vunpckhpd %xmm13,%xmm13,%xmm13
  407220:	c5 13 58 ee          	vaddsd %xmm6,%xmm13,%xmm13
  407224:	c5 d1 15 f5          	vunpckhpd %xmm5,%xmm5,%xmm6
  407228:	c4 41 53 58 ed       	vaddsd %xmm13,%xmm5,%xmm13
  40722d:	62 f3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm5,%xmm5
  407234:	c4 c1 4b 58 f5       	vaddsd %xmm13,%xmm6,%xmm6
  407239:	c5 d3 58 f6          	vaddsd %xmm6,%xmm5,%xmm6
  40723d:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  407241:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  407245:	c4 c1 09 15 f6       	vunpckhpd %xmm14,%xmm14,%xmm6
  40724a:	c5 8b 58 ed          	vaddsd %xmm5,%xmm14,%xmm5
  40724e:	c5 cb 58 f5          	vaddsd %xmm5,%xmm6,%xmm6
  407252:	c5 9b 58 ee          	vaddsd %xmm6,%xmm12,%xmm5
  407256:	c4 41 19 15 e4       	vunpckhpd %xmm12,%xmm12,%xmm12
  40725b:	c5 1b 58 e5          	vaddsd %xmm5,%xmm12,%xmm12
  40725f:	c5 d9 15 ec          	vunpckhpd %xmm4,%xmm4,%xmm5
  407263:	c4 c1 5b 58 f4       	vaddsd %xmm12,%xmm4,%xmm6
  407268:	62 f3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm4,%xmm4
  40726f:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  407273:	c5 fd 28 74 24 40    	vmovapd 0x40(%rsp),%ymm6
  407279:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  40727d:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  407281:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  407288:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  40728c:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  407291:	c5 a3 58 ed          	vaddsd %xmm5,%xmm11,%xmm5
  407295:	62 53 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm11,%xmm11
  40729c:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  4072a0:	c5 a3 58 ec          	vaddsd %xmm4,%xmm11,%xmm5
  4072a4:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  4072a9:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  4072ad:	c5 e1 15 eb          	vunpckhpd %xmm3,%xmm3,%xmm5
  4072b1:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  4072b5:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  4072b9:	62 f3 fd 28 19 dc 01 	vextractf64x2 $0x1,%ymm3,%xmm4
  4072c0:	c5 db 58 dd          	vaddsd %xmm5,%xmm4,%xmm3
  4072c4:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  4072c8:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  4072cc:	c4 c1 29 15 da       	vunpckhpd %xmm10,%xmm10,%xmm3
  4072d1:	c5 ab 58 e4          	vaddsd %xmm4,%xmm10,%xmm4
  4072d5:	62 53 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm10,%xmm10
  4072dc:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  4072e0:	c5 ab 58 db          	vaddsd %xmm3,%xmm10,%xmm3
  4072e4:	c4 41 29 15 d2       	vunpckhpd %xmm10,%xmm10,%xmm10
  4072e9:	c5 2b 58 d3          	vaddsd %xmm3,%xmm10,%xmm10
  4072ed:	c5 e9 15 da          	vunpckhpd %xmm2,%xmm2,%xmm3
  4072f1:	c4 c1 6b 58 e2       	vaddsd %xmm10,%xmm2,%xmm4
  4072f6:	62 f3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm2,%xmm2
  4072fd:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  407301:	c5 eb 58 db          	vaddsd %xmm3,%xmm2,%xmm3
  407305:	c5 e9 15 d2          	vunpckhpd %xmm2,%xmm2,%xmm2
  407309:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40730d:	c4 c1 39 15 d8       	vunpckhpd %xmm8,%xmm8,%xmm3
  407312:	c5 bb 58 d2          	vaddsd %xmm2,%xmm8,%xmm2
  407316:	62 53 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm8
  40731d:	c4 41 39 15 c8       	vunpckhpd %xmm8,%xmm8,%xmm9
  407322:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  407326:	c5 bb 58 d3          	vaddsd %xmm3,%xmm8,%xmm2
  40732a:	c5 33 58 ca          	vaddsd %xmm2,%xmm9,%xmm9
  40732e:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  407332:	c4 c1 4b 58 d9       	vaddsd %xmm9,%xmm6,%xmm3
  407337:	c5 fd 28 74 24 60    	vmovapd 0x60(%rsp),%ymm6
  40733d:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  407341:	62 d3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm8
  407348:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40734c:	c5 f1 15 c9          	vunpckhpd %xmm1,%xmm1,%xmm1
  407350:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  407354:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  407358:	c5 cb 58 c9          	vaddsd %xmm1,%xmm6,%xmm1
  40735c:	c5 fd 28 b4 24 80 00 	vmovapd 0x80(%rsp),%ymm6
  407363:	00 00 
  407365:	c5 fc 28 a2 00 fe ff 	vmovaps -0x200(%rdx),%ymm4
  40736c:	ff 
  40736d:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  407371:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  407378:	62 e1 7c 28 28 52 f2 	vmovaps -0x1c0(%rdx),%ymm18
  40737f:	c5 bb 58 ca          	vaddsd %xmm2,%xmm8,%xmm1
  407383:	c4 41 39 15 c0       	vunpckhpd %xmm8,%xmm8,%xmm8
  407388:	c5 fc 28 aa 80 fe ff 	vmovaps -0x180(%rdx),%ymm5
  40738f:	ff 
  407390:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  407394:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  407398:	62 f2 3d 20 7f 62 f1 	vpermt2ps -0x1e0(%rdx),%ymm24,%ymm4
  40739f:	c4 c1 4b 58 d0       	vaddsd %xmm8,%xmm6,%xmm2
  4073a4:	c5 fd 28 b4 24 a0 00 	vmovapd 0xa0(%rsp),%ymm6
  4073ab:	00 00 
  4073ad:	c5 7c 28 ba c0 fe ff 	vmovaps -0x140(%rdx),%ymm15
  4073b4:	ff 
  4073b5:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  4073b9:	62 f3 fd 28 19 f7 01 	vextractf64x2 $0x1,%ymm6,%xmm7
  4073c0:	62 e2 3d 20 7f 52 f3 	vpermt2ps -0x1a0(%rdx),%ymm24,%ymm18
  4073c7:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  4073cb:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  4073cf:	62 f2 3d 20 7f 6a f5 	vpermt2ps -0x160(%rdx),%ymm24,%ymm5
  4073d6:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4073da:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  4073de:	62 e1 7c 28 28 4a fa 	vmovaps -0xc0(%rdx),%ymm17
  4073e5:	c5 cb 58 c0          	vaddsd %xmm0,%xmm6,%xmm0
  4073e9:	c5 fd 28 b4 24 c0 00 	vmovapd 0xc0(%rsp),%ymm6
  4073f0:	00 00 
  4073f2:	c5 fc 28 52 80       	vmovaps -0x80(%rdx),%ymm2
  4073f7:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4073fb:	c5 7c 28 ec          	vmovaps %ymm4,%ymm13
  4073ff:	62 72 3d 20 7f 7a f7 	vpermt2ps -0x120(%rdx),%ymm24,%ymm15
  407406:	c5 c3 58 c1          	vaddsd %xmm1,%xmm7,%xmm0
  40740a:	c5 c1 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm7
  40740e:	62 32 3d 20 7f ea    	vpermt2ps %ymm18,%ymm24,%ymm13
  407414:	c5 c3 58 f8          	vaddsd %xmm0,%xmm7,%xmm7
  407418:	c5 c9 15 c6          	vunpckhpd %xmm6,%xmm6,%xmm0
  40741c:	62 b2 2d 20 7f e2    	vpermt2ps %ymm18,%ymm26,%ymm4
  407422:	c5 cb 58 cf          	vaddsd %xmm7,%xmm6,%xmm1
  407426:	c5 7c 28 8a 40 fe ff 	vmovaps -0x1c0(%rdx),%ymm9
  40742d:	ff 
  40742e:	c5 fc 28 ba 80 fe ff 	vmovaps -0x180(%rdx),%ymm7
  407435:	ff 
  407436:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  40743a:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  407441:	c5 7c 28 b2 c0 fe ff 	vmovaps -0x140(%rdx),%ymm14
  407448:	ff 
  407449:	c5 fb 58 d9          	vaddsd %xmm1,%xmm0,%xmm3
  40744d:	c5 fc 28 8a 00 ff ff 	vmovaps -0x100(%rdx),%ymm1
  407454:	ff 
  407455:	c5 fc 28 b2 00 fe ff 	vmovaps -0x200(%rdx),%ymm6
  40745c:	ff 
  40745d:	62 f2 3d 20 7f 4a f9 	vpermt2ps -0xe0(%rdx),%ymm24,%ymm1
  407464:	c5 7c 28 9a 00 ff ff 	vmovaps -0x100(%rdx),%ymm11
  40746b:	ff 
  40746c:	c5 7c 28 82 40 ff ff 	vmovaps -0xc0(%rdx),%ymm8
  407473:	ff 
  407474:	62 e1 7c 28 28 42 fc 	vmovaps -0x80(%rdx),%ymm16
  40747b:	62 e1 7c 28 28 d5    	vmovaps %ymm5,%ymm18
  407481:	c5 7c 28 62 c0       	vmovaps -0x40(%rdx),%ymm12
  407486:	62 e2 3d 20 7f 4a fb 	vpermt2ps -0xa0(%rdx),%ymm24,%ymm17
  40748d:	62 c2 3d 20 7f d7    	vpermt2ps %ymm15,%ymm24,%ymm18
  407493:	62 d2 2d 20 7f ef    	vpermt2ps %ymm15,%ymm26,%ymm5
  407499:	62 f2 3d 20 7f 52 fd 	vpermt2ps -0x60(%rdx),%ymm24,%ymm2
  4074a0:	c5 7c 28 f9          	vmovaps %ymm1,%ymm15
  4074a4:	62 72 2d 20 7f 4a f3 	vpermt2ps -0x1a0(%rdx),%ymm26,%ymm9
  4074ab:	62 72 2d 20 7f 72 f7 	vpermt2ps -0x120(%rdx),%ymm26,%ymm14
  4074b2:	62 72 2d 20 7f 42 fb 	vpermt2ps -0xa0(%rdx),%ymm26,%ymm8
  4074b9:	62 f2 2d 20 7f 72 f1 	vpermt2ps -0x1e0(%rdx),%ymm26,%ymm6
  4074c0:	62 f2 2d 20 7f 7a f5 	vpermt2ps -0x160(%rdx),%ymm26,%ymm7
  4074c7:	62 72 2d 20 7f 5a f9 	vpermt2ps -0xe0(%rdx),%ymm26,%ymm11
  4074ce:	62 e2 2d 20 7f 42 fd 	vpermt2ps -0x60(%rdx),%ymm26,%ymm16
  4074d5:	62 32 3d 20 7f f9    	vpermt2ps %ymm17,%ymm24,%ymm15
  4074db:	62 72 3d 20 7f 62 ff 	vpermt2ps -0x20(%rdx),%ymm24,%ymm12
  4074e2:	62 b2 2d 20 7f c9    	vpermt2ps %ymm17,%ymm26,%ymm1
  4074e8:	62 e1 7c 28 28 ca    	vmovaps %ymm2,%ymm17
  4074ee:	62 c2 3d 20 7f cc    	vpermt2ps %ymm12,%ymm24,%ymm17
  4074f4:	62 d2 2d 20 7f d4    	vpermt2ps %ymm12,%ymm26,%ymm2
  4074fa:	c5 7c 28 e6          	vmovaps %ymm6,%ymm12
  4074fe:	62 52 3d 20 7f e1    	vpermt2ps %ymm9,%ymm24,%ymm12
  407504:	62 d2 2d 20 7f f1    	vpermt2ps %ymm9,%ymm26,%ymm6
  40750a:	c5 7c 28 52 c0       	vmovaps -0x40(%rdx),%ymm10
  40750f:	c5 7c 28 cf          	vmovaps %ymm7,%ymm9
  407513:	62 52 3d 20 7f ce    	vpermt2ps %ymm14,%ymm24,%ymm9
  407519:	62 d2 2d 20 7f fe    	vpermt2ps %ymm14,%ymm26,%ymm7
  40751f:	c4 41 7c 28 f3       	vmovaps %ymm11,%ymm14
  407524:	62 72 2d 20 7f 52 ff 	vpermt2ps -0x20(%rdx),%ymm26,%ymm10
  40752b:	62 52 3d 20 7f f0    	vpermt2ps %ymm8,%ymm24,%ymm14
  407531:	62 52 2d 20 7f d8    	vpermt2ps %ymm8,%ymm26,%ymm11
  407537:	62 c1 7c 28 28 e7    	vmovaps %ymm15,%ymm20
  40753d:	62 31 7c 28 28 c0    	vmovaps %ymm16,%ymm8
  407543:	62 52 3d 20 7f c2    	vpermt2ps %ymm10,%ymm24,%ymm8
  407549:	62 c2 2d 20 7f c2    	vpermt2ps %ymm10,%ymm26,%ymm16
  40754f:	62 a2 3d 20 7f e1    	vpermt2ps %ymm17,%ymm24,%ymm20
  407555:	62 32 2d 20 7f f9    	vpermt2ps %ymm17,%ymm26,%ymm15
  40755b:	c4 41 7c 28 d5       	vmovaps %ymm13,%ymm10
  407560:	62 c1 7c 28 28 cc    	vmovaps %ymm12,%ymm17
  407566:	62 c1 7c 28 28 de    	vmovaps %ymm14,%ymm19
  40756c:	62 32 3d 20 7f d2    	vpermt2ps %ymm18,%ymm24,%ymm10
  407572:	62 32 2d 20 7f ea    	vpermt2ps %ymm18,%ymm26,%ymm13
  407578:	62 c2 3d 20 7f c9    	vpermt2ps %ymm9,%ymm24,%ymm17
  40757e:	62 c2 3d 20 7f d8    	vpermt2ps %ymm8,%ymm24,%ymm19
  407584:	62 52 2d 20 7f f0    	vpermt2ps %ymm8,%ymm26,%ymm14
  40758a:	62 e1 7c 28 28 d1    	vmovaps %ymm1,%ymm18
  407590:	c5 7c 28 c6          	vmovaps %ymm6,%ymm8
  407594:	62 f2 2d 20 7f f7    	vpermt2ps %ymm7,%ymm26,%ymm6
  40759a:	62 f2 2d 20 7f ca    	vpermt2ps %ymm2,%ymm26,%ymm1
  4075a0:	62 e2 3d 20 7f d2    	vpermt2ps %ymm2,%ymm24,%ymm18
  4075a6:	c5 fc 28 d6          	vmovaps %ymm6,%ymm2
  4075aa:	62 b1 7c 28 28 f1    	vmovaps %ymm17,%ymm6
  4075b0:	62 b2 3d 20 7f f3    	vpermt2ps %ymm19,%ymm24,%ymm6
  4075b6:	62 52 2d 20 7f e1    	vpermt2ps %ymm9,%ymm26,%ymm12
  4075bc:	62 b1 4c 28 c2 cf 04 	vcmpneqps %ymm23,%ymm6,%k1
  4075c3:	c5 7c 28 cc          	vmovaps %ymm4,%ymm9
  4075c7:	c5 7c 29 d6          	vmovaps %ymm10,%ymm6
  4075cb:	62 72 3d 20 7f cd    	vpermt2ps %ymm5,%ymm24,%ymm9
  4075d1:	62 b2 3d 20 7f f4    	vpermt2ps %ymm20,%ymm24,%ymm6
  4075d7:	62 b1 4c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm6,%k0
  4075de:	c5 7c 29 ce          	vmovaps %ymm9,%ymm6
  4075e2:	62 f2 2d 20 7f e5    	vpermt2ps %ymm5,%ymm26,%ymm4
  4075e8:	62 72 3d 20 7f c7    	vpermt2ps %ymm7,%ymm24,%ymm8
  4075ee:	c5 7c 29 dd          	vmovaps %ymm11,%ymm5
  4075f2:	62 b2 3d 20 7f f2    	vpermt2ps %ymm18,%ymm24,%ymm6
  4075f8:	62 b1 4c 28 c2 df 04 	vcmpneqps %ymm23,%ymm6,%k3
  4075ff:	62 b2 3d 20 7f e8    	vpermt2ps %ymm16,%ymm24,%ymm5
  407605:	c5 7c 29 c6          	vmovaps %ymm8,%ymm6
  407609:	62 f2 3d 20 7f f5    	vpermt2ps %ymm5,%ymm24,%ymm6
  40760f:	62 b1 4c 28 c2 e7 04 	vcmpneqps %ymm23,%ymm6,%k4
  407616:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  40761a:	62 d2 3d 20 7f f7    	vpermt2ps %ymm15,%ymm24,%ymm6
  407620:	62 b1 4c 28 c2 ef 04 	vcmpneqps %ymm23,%ymm6,%k5
  407627:	c5 7c 29 e6          	vmovaps %ymm12,%ymm6
  40762b:	62 d2 3d 20 7f f6    	vpermt2ps %ymm14,%ymm24,%ymm6
  407631:	62 b1 4c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm6,%k6
  407638:	c5 fc 28 f4          	vmovaps %ymm4,%ymm6
  40763c:	62 f2 3d 20 7f f1    	vpermt2ps %ymm1,%ymm24,%ymm6
  407642:	62 b1 4c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm6,%k7
  407649:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  40764d:	c5 f9 93 c3          	kmovb  %k3,%eax
  407651:	62 32 2d 20 7f d8    	vpermt2ps %ymm16,%ymm26,%ymm11
  407657:	c5 fc 28 f2          	vmovaps %ymm2,%ymm6
  40765b:	c5 f9 93 f1          	kmovb  %k1,%esi
  40765f:	09 c6                	or     %eax,%esi
  407661:	62 d2 3d 20 7f f3    	vpermt2ps %ymm11,%ymm24,%ymm6
  407667:	c5 f9 93 c4          	kmovb  %k4,%eax
  40766b:	09 c6                	or     %eax,%esi
  40766d:	62 b1 4c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm6,%k2
  407674:	c5 f9 93 c5          	kmovb  %k5,%eax
  407678:	62 32 2d 20 7f d4    	vpermt2ps %ymm20,%ymm26,%ymm10
  40767e:	09 c6                	or     %eax,%esi
  407680:	62 b1 7c 28 28 f9    	vmovaps %ymm17,%ymm7
  407686:	c5 f9 93 c6          	kmovb  %k6,%eax
  40768a:	62 b1 2c 28 c2 df 04 	vcmpneqps %ymm23,%ymm10,%k3
  407691:	09 c6                	or     %eax,%esi
  407693:	62 b2 2d 20 7f fb    	vpermt2ps %ymm19,%ymm26,%ymm7
  407699:	c5 f9 93 c7          	kmovb  %k7,%eax
  40769d:	62 b1 44 28 c2 e7 04 	vcmpneqps %ymm23,%ymm7,%k4
  4076a4:	09 c6                	or     %eax,%esi
  4076a6:	62 32 2d 20 7f ca    	vpermt2ps %ymm18,%ymm26,%ymm9
  4076ac:	c5 f9 93 c2          	kmovb  %k2,%eax
  4076b0:	62 72 2d 20 7f c5    	vpermt2ps %ymm5,%ymm26,%ymm8
  4076b6:	09 c6                	or     %eax,%esi
  4076b8:	62 b1 34 28 c2 ef 04 	vcmpneqps %ymm23,%ymm9,%k5
  4076bf:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  4076c3:	c5 7c 29 e5          	vmovaps %ymm12,%ymm5
  4076c7:	c5 f9 93 c3          	kmovb  %k3,%eax
  4076cb:	62 b1 3c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm8,%k6
  4076d2:	09 c6                	or     %eax,%esi
  4076d4:	62 d2 2d 20 7f f7    	vpermt2ps %ymm15,%ymm26,%ymm6
  4076da:	62 d2 2d 20 7f ee    	vpermt2ps %ymm14,%ymm26,%ymm5
  4076e0:	62 b1 54 28 c2 c7 04 	vcmpneqps %ymm23,%ymm5,%k0
  4076e7:	c5 f9 93 c4          	kmovb  %k4,%eax
  4076eb:	62 b1 4c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm6,%k7
  4076f2:	09 c6                	or     %eax,%esi
  4076f4:	62 f2 2d 20 7f e1    	vpermt2ps %ymm1,%ymm26,%ymm4
  4076fa:	c5 f9 93 c5          	kmovb  %k5,%eax
  4076fe:	09 c6                	or     %eax,%esi
  407700:	62 b1 5c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm4,%k2
  407707:	c5 f9 93 c6          	kmovb  %k6,%eax
  40770b:	62 d2 2d 20 7f d3    	vpermt2ps %ymm11,%ymm26,%ymm2
  407711:	09 c6                	or     %eax,%esi
  407713:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  407717:	c5 f9 93 c7          	kmovb  %k7,%eax
  40771b:	09 c6                	or     %eax,%esi
  40771d:	c5 f9 93 c0          	kmovb  %k0,%eax
  407721:	62 b1 6c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm2,%k0
  407728:	09 c6                	or     %eax,%esi
  40772a:	c5 fb 58 db          	vaddsd %xmm3,%xmm0,%xmm3
  40772e:	c5 f9 93 c2          	kmovb  %k2,%eax
  407732:	09 c6                	or     %eax,%esi
  407734:	c5 f9 92 ce          	kmovb  %esi,%k1
  407738:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  40773c:	62 f1 7d a9 6f 4c 24 	vmovdqa32 0x120(%rsp),%ymm1{%k1}{z}
  407743:	09 
  407744:	62 61 25 20 eb d9    	vpord  %ymm1,%ymm27,%ymm27
  40774a:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  40774f:	48 39 d1             	cmp    %rdx,%rcx
  407752:	0f 85 db f3 ff ff    	jne    406b33 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x443>
  407758:	62 91 7d 08 6f cb    	vmovdqa32 %xmm27,%xmm1
  40775e:	62 63 7d 28 39 d8 01 	vextracti32x4 $0x1,%ymm27,%xmm0
  407765:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  407769:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  40776e:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  407772:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  407777:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  40777b:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  40777f:	41 09 c5             	or     %eax,%r13d
  407782:	48 8d 84 24 80 19 00 	lea    0x1980(%rsp),%rax
  407789:	00 
  40778a:	48 39 c1             	cmp    %rax,%rcx
  40778d:	0f 85 8c f3 ff ff    	jne    406b1f <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x42f>
  407793:	c4 e2 78 49 c0       	tilerelease 
  407798:	c5 f8 77             	vzeroupper 
  40779b:	e9 af ef ff ff       	jmpq   40674f <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x5f>
  4077a0:	48 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%rax
  4077a7:	80 38 00             	cmpb   $0x0,(%rax)
  4077aa:	0f 84 d5 10 00 00    	je     408885 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x2195>
  4077b0:	c5 e1 ef db          	vpxor  %xmm3,%xmm3,%xmm3
  4077b4:	62 f2 7d 48 58 05 7a 	vpbroadcastd 0x7f7a(%rip),%zmm0        # 40f738 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x238>
  4077bb:	7f 00 00 
  4077be:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  4077c3:	62 f1 fd 48 6f e3    	vmovdqa64 %zmm3,%zmm4
  4077c9:	62 f1 fd 48 6f eb    	vmovdqa64 %zmm3,%zmm5
  4077cf:	62 f1 fd 48 6f f3    	vmovdqa64 %zmm3,%zmm6
  4077d5:	62 f1 fd 48 6f cb    	vmovdqa64 %zmm3,%zmm1
  4077db:	62 f1 fd 48 6f fb    	vmovdqa64 %zmm3,%zmm7
  4077e1:	62 f1 fd 48 6f d3    	vmovdqa64 %zmm3,%zmm2
  4077e7:	62 71 fd 48 6f c3    	vmovdqa64 %zmm3,%zmm8
  4077ed:	62 71 fd 48 6f cb    	vmovdqa64 %zmm3,%zmm9
  4077f3:	62 71 fd 48 6f d3    	vmovdqa64 %zmm3,%zmm10
  4077f9:	62 71 fd 48 6f db    	vmovdqa64 %zmm3,%zmm11
  4077ff:	62 71 fd 48 6f e3    	vmovdqa64 %zmm3,%zmm12
  407805:	62 72 7d 48 50 e0    	vpdpbusd %zmm0,%zmm0,%zmm12
  40780b:	62 72 7d 48 50 d8    	vpdpbusd %zmm0,%zmm0,%zmm11
  407811:	62 72 7d 48 50 d0    	vpdpbusd %zmm0,%zmm0,%zmm10
  407817:	62 72 7d 48 50 c8    	vpdpbusd %zmm0,%zmm0,%zmm9
  40781d:	62 72 7d 48 50 c0    	vpdpbusd %zmm0,%zmm0,%zmm8
  407823:	62 f2 7d 48 50 d0    	vpdpbusd %zmm0,%zmm0,%zmm2
  407829:	62 f2 7d 48 50 f8    	vpdpbusd %zmm0,%zmm0,%zmm7
  40782f:	62 f2 7d 48 50 c8    	vpdpbusd %zmm0,%zmm0,%zmm1
  407835:	62 f2 7d 48 50 f0    	vpdpbusd %zmm0,%zmm0,%zmm6
  40783b:	62 f2 7d 48 50 e8    	vpdpbusd %zmm0,%zmm0,%zmm5
  407841:	62 f2 7d 48 50 e0    	vpdpbusd %zmm0,%zmm0,%zmm4
  407847:	62 f2 7d 48 50 d8    	vpdpbusd %zmm0,%zmm0,%zmm3
  40784d:	ff c8                	dec    %eax
  40784f:	75 b4                	jne    407805 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x1115>
  407851:	62 53 fd 48 3b e5 01 	vextracti64x4 $0x1,%zmm12,%ymm13
  407858:	c4 41 15 fe e4       	vpaddd %ymm12,%ymm13,%ymm12
  40785d:	62 53 fd 28 39 e5 01 	vextracti64x2 $0x1,%ymm12,%xmm13
  407864:	c4 41 19 fe e5       	vpaddd %xmm13,%xmm12,%xmm12
  407869:	c4 41 79 70 ec 4e    	vpshufd $0x4e,%xmm12,%xmm13
  40786f:	c4 41 11 fe e4       	vpaddd %xmm12,%xmm13,%xmm12
  407874:	c4 63 79 16 e2 01    	vpextrd $0x1,%xmm12,%edx
  40787a:	c5 79 7e e0          	vmovd  %xmm12,%eax
  40787e:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  407882:	01 d0                	add    %edx,%eax
  407884:	c5 7b 2a e0          	vcvtsi2sd %eax,%xmm0,%xmm12
  407888:	45 31 ed             	xor    %r13d,%r13d
  40788b:	c5 1b 58 2d 4d 7e 00 	vaddsd 0x7e4d(%rip),%xmm12,%xmm13        # 40f6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  407892:	00 
  407893:	62 53 fd 48 3b dc 01 	vextracti64x4 $0x1,%zmm11,%ymm12
  40789a:	c4 41 1d fe db       	vpaddd %ymm11,%ymm12,%ymm11
  40789f:	62 53 fd 28 39 dc 01 	vextracti64x2 $0x1,%ymm11,%xmm12
  4078a6:	c4 41 19 fe e3       	vpaddd %xmm11,%xmm12,%xmm12
  4078ab:	c4 41 79 70 dc 4e    	vpshufd $0x4e,%xmm12,%xmm11
  4078b1:	c4 41 21 fe dc       	vpaddd %xmm12,%xmm11,%xmm11
  4078b6:	c5 79 7e da          	vmovd  %xmm11,%edx
  4078ba:	c4 63 79 16 d8 01    	vpextrd $0x1,%xmm11,%eax
  4078c0:	01 d0                	add    %edx,%eax
  4078c2:	c5 7b 2a d8          	vcvtsi2sd %eax,%xmm0,%xmm11
  4078c6:	c4 41 23 58 ed       	vaddsd %xmm13,%xmm11,%xmm13
  4078cb:	62 53 fd 48 3b d3 01 	vextracti64x4 $0x1,%zmm10,%ymm11
  4078d2:	c4 41 25 fe d2       	vpaddd %ymm10,%ymm11,%ymm10
  4078d7:	62 53 fd 28 39 d3 01 	vextracti64x2 $0x1,%ymm10,%xmm11
  4078de:	c4 41 21 fe da       	vpaddd %xmm10,%xmm11,%xmm11
  4078e3:	c4 41 79 70 d3 4e    	vpshufd $0x4e,%xmm11,%xmm10
  4078e9:	c4 41 29 fe d3       	vpaddd %xmm11,%xmm10,%xmm10
  4078ee:	c4 63 79 16 d2 01    	vpextrd $0x1,%xmm10,%edx
  4078f4:	c5 79 7e d0          	vmovd  %xmm10,%eax
  4078f8:	01 d0                	add    %edx,%eax
  4078fa:	c5 7b 2a d0          	vcvtsi2sd %eax,%xmm0,%xmm10
  4078fe:	c4 41 2b 58 dd       	vaddsd %xmm13,%xmm10,%xmm11
  407903:	62 53 fd 48 3b ca 01 	vextracti64x4 $0x1,%zmm9,%ymm10
  40790a:	c4 41 2d fe c9       	vpaddd %ymm9,%ymm10,%ymm9
  40790f:	62 53 fd 28 39 ca 01 	vextracti64x2 $0x1,%ymm9,%xmm10
  407916:	c4 41 29 fe d1       	vpaddd %xmm9,%xmm10,%xmm10
  40791b:	c4 41 79 70 ca 4e    	vpshufd $0x4e,%xmm10,%xmm9
  407921:	c4 41 31 fe ca       	vpaddd %xmm10,%xmm9,%xmm9
  407926:	c5 79 7e ca          	vmovd  %xmm9,%edx
  40792a:	c4 63 79 16 c8 01    	vpextrd $0x1,%xmm9,%eax
  407930:	01 d0                	add    %edx,%eax
  407932:	c5 7b 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm9
  407936:	c4 41 33 58 db       	vaddsd %xmm11,%xmm9,%xmm11
  40793b:	62 53 fd 48 3b c1 01 	vextracti64x4 $0x1,%zmm8,%ymm9
  407942:	c4 41 35 fe c0       	vpaddd %ymm8,%ymm9,%ymm8
  407947:	62 53 fd 28 39 c1 01 	vextracti64x2 $0x1,%ymm8,%xmm9
  40794e:	c4 41 31 fe c8       	vpaddd %xmm8,%xmm9,%xmm9
  407953:	c4 41 79 70 c1 4e    	vpshufd $0x4e,%xmm9,%xmm8
  407959:	c4 41 39 fe c1       	vpaddd %xmm9,%xmm8,%xmm8
  40795e:	62 d3 fd 48 3b d1 01 	vextracti64x4 $0x1,%zmm2,%ymm9
  407965:	c4 c1 6d fe d1       	vpaddd %ymm9,%ymm2,%ymm2
  40796a:	62 d3 fd 28 39 d1 01 	vextracti64x2 $0x1,%ymm2,%xmm9
  407971:	c5 79 7e c2          	vmovd  %xmm8,%edx
  407975:	c5 31 fe ca          	vpaddd %xmm2,%xmm9,%xmm9
  407979:	c4 63 79 16 c0 01    	vpextrd $0x1,%xmm8,%eax
  40797f:	01 d0                	add    %edx,%eax
  407981:	c4 c1 79 70 d1 4e    	vpshufd $0x4e,%xmm9,%xmm2
  407987:	c4 c1 69 fe d1       	vpaddd %xmm9,%xmm2,%xmm2
  40798c:	c5 7b 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm8
  407990:	c5 f9 7e d2          	vmovd  %xmm2,%edx
  407994:	c4 e3 79 16 d0 01    	vpextrd $0x1,%xmm2,%eax
  40799a:	01 d0                	add    %edx,%eax
  40799c:	c5 fb 2a d0          	vcvtsi2sd %eax,%xmm0,%xmm2
  4079a0:	c4 41 3b 58 c3       	vaddsd %xmm11,%xmm8,%xmm8
  4079a5:	c4 41 6b 58 c0       	vaddsd %xmm8,%xmm2,%xmm8
  4079aa:	62 f3 fd 48 3b fa 01 	vextracti64x4 $0x1,%zmm7,%ymm2
  4079b1:	c5 ed fe d7          	vpaddd %ymm7,%ymm2,%ymm2
  4079b5:	62 f3 fd 28 39 d7 01 	vextracti64x2 $0x1,%ymm2,%xmm7
  4079bc:	c5 e9 fe d7          	vpaddd %xmm7,%xmm2,%xmm2
  4079c0:	c5 f9 70 fa 4e       	vpshufd $0x4e,%xmm2,%xmm7
  4079c5:	c5 c1 fe d2          	vpaddd %xmm2,%xmm7,%xmm2
  4079c9:	c5 f9 7e d2          	vmovd  %xmm2,%edx
  4079cd:	c4 e3 79 16 d0 01    	vpextrd $0x1,%xmm2,%eax
  4079d3:	01 d0                	add    %edx,%eax
  4079d5:	c5 fb 2a d0          	vcvtsi2sd %eax,%xmm0,%xmm2
  4079d9:	c4 41 6b 58 c0       	vaddsd %xmm8,%xmm2,%xmm8
  4079de:	62 f3 fd 48 3b ca 01 	vextracti64x4 $0x1,%zmm1,%ymm2
  4079e5:	c5 f5 fe ca          	vpaddd %ymm2,%ymm1,%ymm1
  4079e9:	62 f3 fd 28 39 ca 01 	vextracti64x2 $0x1,%ymm1,%xmm2
  4079f0:	c5 f1 fe ca          	vpaddd %xmm2,%xmm1,%xmm1
  4079f4:	c5 f9 70 d1 4e       	vpshufd $0x4e,%xmm1,%xmm2
  4079f9:	c5 e9 fe c9          	vpaddd %xmm1,%xmm2,%xmm1
  4079fd:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407a01:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407a07:	01 d0                	add    %edx,%eax
  407a09:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407a0d:	c4 c1 73 58 d0       	vaddsd %xmm8,%xmm1,%xmm2
  407a12:	62 f3 fd 48 3b f1 01 	vextracti64x4 $0x1,%zmm6,%ymm1
  407a19:	c5 f5 fe ce          	vpaddd %ymm6,%ymm1,%ymm1
  407a1d:	62 f3 fd 28 39 ce 01 	vextracti64x2 $0x1,%ymm1,%xmm6
  407a24:	c5 c9 fe f1          	vpaddd %xmm1,%xmm6,%xmm6
  407a28:	c5 f9 70 ce 4e       	vpshufd $0x4e,%xmm6,%xmm1
  407a2d:	c5 f1 fe ce          	vpaddd %xmm6,%xmm1,%xmm1
  407a31:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407a35:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407a3b:	01 d0                	add    %edx,%eax
  407a3d:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407a41:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  407a45:	62 f3 fd 48 3b e9 01 	vextracti64x4 $0x1,%zmm5,%ymm1
  407a4c:	c5 f5 fe cd          	vpaddd %ymm5,%ymm1,%ymm1
  407a50:	62 f3 fd 28 39 cd 01 	vextracti64x2 $0x1,%ymm1,%xmm5
  407a57:	c5 d1 fe e9          	vpaddd %xmm1,%xmm5,%xmm5
  407a5b:	c5 f9 70 cd 4e       	vpshufd $0x4e,%xmm5,%xmm1
  407a60:	c5 f1 fe cd          	vpaddd %xmm5,%xmm1,%xmm1
  407a64:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407a68:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407a6e:	01 d0                	add    %edx,%eax
  407a70:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407a74:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  407a78:	62 f3 fd 48 3b e1 01 	vextracti64x4 $0x1,%zmm4,%ymm1
  407a7f:	c5 f5 fe cc          	vpaddd %ymm4,%ymm1,%ymm1
  407a83:	62 f3 fd 28 39 cc 01 	vextracti64x2 $0x1,%ymm1,%xmm4
  407a8a:	c5 d9 fe e1          	vpaddd %xmm1,%xmm4,%xmm4
  407a8e:	c5 f9 70 cc 4e       	vpshufd $0x4e,%xmm4,%xmm1
  407a93:	c5 f1 fe cc          	vpaddd %xmm4,%xmm1,%xmm1
  407a97:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407a9b:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407aa1:	01 d0                	add    %edx,%eax
  407aa3:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407aa7:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  407aab:	62 f3 fd 48 3b d9 01 	vextracti64x4 $0x1,%zmm3,%ymm1
  407ab2:	c5 f5 fe cb          	vpaddd %ymm3,%ymm1,%ymm1
  407ab6:	62 f3 fd 28 39 cb 01 	vextracti64x2 $0x1,%ymm1,%xmm3
  407abd:	c5 e1 fe d9          	vpaddd %xmm1,%xmm3,%xmm3
  407ac1:	c5 f9 70 cb 4e       	vpshufd $0x4e,%xmm3,%xmm1
  407ac6:	c5 f1 fe cb          	vpaddd %xmm3,%xmm1,%xmm1
  407aca:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407ace:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407ad4:	01 d0                	add    %edx,%eax
  407ad6:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  407ada:	c5 fb 58 f2          	vaddsd %xmm2,%xmm0,%xmm6
  407ade:	c4 e1 f9 7e f3       	vmovq  %xmm6,%rbx
  407ae3:	c5 f8 77             	vzeroupper 
  407ae6:	e9 64 ec ff ff       	jmpq   40674f <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x5f>
  407aeb:	31 c0                	xor    %eax,%eax
  407aed:	ba 12 00 00 00       	mov    $0x12,%edx
  407af2:	be 23 10 00 00       	mov    $0x1023,%esi
  407af7:	bf 9e 00 00 00       	mov    $0x9e,%edi
  407afc:	e8 4f b5 ff ff       	callq  403050 <syscall@plt>
  407b01:	48 85 c0             	test   %rax,%rax
  407b04:	0f 94 c0             	sete   %al
  407b07:	64 88 04 25 f8 ff ff 	mov    %al,%fs:0xfffffffffffffff8
  407b0e:	ff 
  407b0f:	64 c6 04 25 f0 ff ff 	movb   $0x1,%fs:0xfffffffffffffff0
  407b16:	ff 01 
  407b18:	e9 21 ec ff ff       	jmpq   40673e <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x4e>
  407b1d:	48 8d 9c 24 80 01 00 	lea    0x180(%rsp),%rbx
  407b24:	00 
  407b25:	48 89 df             	mov    %rbx,%rdi
  407b28:	ba 00 04 00 00       	mov    $0x400,%edx
  407b2d:	be 01 00 00 00       	mov    $0x1,%esi
  407b32:	e8 49 b6 ff ff       	callq  403180 <memset@plt>
  407b37:	48 8d 8c 24 80 05 00 	lea    0x580(%rsp),%rcx
  407b3e:	00 
  407b3f:	48 89 cf             	mov    %rcx,%rdi
  407b42:	ba 00 04 00 00       	mov    $0x400,%edx
  407b47:	be 01 00 00 00       	mov    $0x1,%esi
  407b4c:	e8 2f b6 ff ff       	callq  403180 <memset@plt>
  407b51:	48 89 c1             	mov    %rax,%rcx
  407b54:	b8 40 00 00 00       	mov    $0x40,%eax
  407b59:	c4 e2 7b 4b 24 03    	tileloadd (%rbx,%rax,1),%tmm4
  407b5f:	c4 e2 7b 4b 2c 01    	tileloadd (%rcx,%rax,1),%tmm5
  407b65:	ba 00 04 00 00       	mov    $0x400,%edx
  407b6a:	c4 e2 7b 49 c0       	tilezero %tmm0
  407b6f:	c4 e2 7b 49 c8       	tilezero %tmm1
  407b74:	c4 e2 7b 49 d0       	tilezero %tmm2
  407b79:	c4 e2 7b 49 d8       	tilezero %tmm3
  407b7e:	b8 00 01 00 00       	mov    $0x100,%eax
  407b83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407b88:	c4 e2 53 5e c4       	tdpbssd %tmm5,%tmm4,%tmm0
  407b8d:	c4 e2 53 5e cc       	tdpbssd %tmm5,%tmm4,%tmm1
  407b92:	c4 e2 53 5e d4       	tdpbssd %tmm5,%tmm4,%tmm2
  407b97:	c4 e2 53 5e dc       	tdpbssd %tmm5,%tmm4,%tmm3
  407b9c:	ff c8                	dec    %eax
  407b9e:	75 e8                	jne    407b88 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x1498>
  407ba0:	ff ca                	dec    %edx
  407ba2:	75 c6                	jne    407b6a <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x147a>
  407ba4:	48 8d 8c 24 80 09 00 	lea    0x980(%rsp),%rcx
  407bab:	00 
  407bac:	b8 40 00 00 00       	mov    $0x40,%eax
  407bb1:	c4 e2 7a 4b 04 01    	tilestored %tmm0,(%rcx,%rax,1)
  407bb7:	48 8d 94 24 80 0d 00 	lea    0xd80(%rsp),%rdx
  407bbe:	00 
  407bbf:	c4 e2 7a 4b 0c 02    	tilestored %tmm1,(%rdx,%rax,1)
  407bc5:	48 8d 94 24 80 11 00 	lea    0x1180(%rsp),%rdx
  407bcc:	00 
  407bcd:	c4 e2 7a 4b 14 02    	tilestored %tmm2,(%rdx,%rax,1)
  407bd3:	48 8d 94 24 80 15 00 	lea    0x1580(%rsp),%rdx
  407bda:	00 
  407bdb:	c4 e2 7a 4b 1c 02    	tilestored %tmm3,(%rdx,%rax,1)
  407be1:	62 61 7d 28 6f 05 d5 	vmovdqa32 0x7ad5(%rip),%ymm24        # 40f6c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  407be8:	7a 00 00 
  407beb:	62 61 7d 28 6f 0d ab 	vmovdqa32 0x7aab(%rip),%ymm25        # 40f6a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1a0>
  407bf2:	7a 00 00 
  407bf5:	c4 e2 7d 58 1d c2 7a 	vpbroadcastd 0x7ac2(%rip),%ymm3        # 40f6c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  407bfc:	00 00 
  407bfe:	48 8b 1d db 7a 00 00 	mov    0x7adb(%rip),%rbx        # 40f6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  407c05:	62 e2 7d 28 58 3d f1 	vpbroadcastd 0x7af1(%rip),%ymm23        # 40f700 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x200>
  407c0c:	7a 00 00 
  407c0f:	62 01 7d 28 6f d0    	vmovdqa32 %ymm24,%ymm26
  407c15:	45 31 ed             	xor    %r13d,%r13d
  407c18:	c5 fd 7f 9c 24 20 01 	vmovdqa %ymm3,0x120(%rsp)
  407c1f:	00 00 
  407c21:	62 01 7d 28 6f c1    	vmovdqa32 %ymm25,%ymm24
  407c27:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  407c2e:	48 8d 91 00 fc ff ff 	lea    -0x400(%rcx),%rdx
  407c35:	62 01 25 00 ef db    	vpxord %xmm27,%xmm27,%xmm27
  407c3b:	c5 fd 6f 32          	vmovdqa (%rdx),%ymm6
  407c3f:	c5 fd 6f 9a 20 01 00 	vmovdqa 0x120(%rdx),%ymm3
  407c46:	00 
  407c47:	62 b3 7d 28 39 f5 01 	vextracti32x4 $0x1,%ymm6,%xmm21
  407c4e:	c5 fd 6f 72 40       	vmovdqa 0x40(%rdx),%ymm6
  407c53:	c5 fd 6f 7a 20       	vmovdqa 0x20(%rdx),%ymm7
  407c58:	c4 e3 7d 39 f1 01    	vextracti128 $0x1,%ymm6,%xmm1
  407c5e:	c5 fd 6f 72 60       	vmovdqa 0x60(%rdx),%ymm6
  407c63:	c4 e3 7d 39 dd 01    	vextracti128 $0x1,%ymm3,%xmm5
  407c69:	c4 e3 7d 39 f0 01    	vextracti128 $0x1,%ymm6,%xmm0
  407c6f:	c5 fd 6f b2 80 00 00 	vmovdqa 0x80(%rdx),%ymm6
  407c76:	00 
  407c77:	c5 fe e6 c0          	vcvtdq2pd %xmm0,%ymm0
  407c7b:	c4 c3 7d 39 f5 01    	vextracti128 $0x1,%ymm6,%xmm13
  407c81:	c5 fd 6f b2 a0 00 00 	vmovdqa 0xa0(%rdx),%ymm6
  407c88:	00 
  407c89:	c5 fd 29 44 24 60    	vmovapd %ymm0,0x60(%rsp)
  407c8f:	c4 c3 7d 39 f4 01    	vextracti128 $0x1,%ymm6,%xmm12
  407c95:	c5 fd 6f b2 c0 00 00 	vmovdqa 0xc0(%rdx),%ymm6
  407c9c:	00 
  407c9d:	c5 fd 6f 82 a0 01 00 	vmovdqa 0x1a0(%rdx),%ymm0
  407ca4:	00 
  407ca5:	c5 fd 6f 9a 40 01 00 	vmovdqa 0x140(%rdx),%ymm3
  407cac:	00 
  407cad:	c4 c3 7d 39 f1 01    	vextracti128 $0x1,%ymm6,%xmm9
  407cb3:	c5 fd 6f b2 e0 00 00 	vmovdqa 0xe0(%rdx),%ymm6
  407cba:	00 
  407cbb:	62 93 7d 28 39 c7 01 	vextracti32x4 $0x1,%ymm0,%xmm31
  407cc2:	62 61 7e 28 e6 72 02 	vcvtdq2pd 0x20(%rdx),%ymm30
  407cc9:	62 61 7e 28 e6 6a 04 	vcvtdq2pd 0x40(%rdx),%ymm29
  407cd0:	c5 7e e6 b2 40 01 00 	vcvtdq2pd 0x140(%rdx),%ymm14
  407cd7:	00 
  407cd8:	62 e1 7e 28 e6 32    	vcvtdq2pd (%rdx),%ymm22
  407cde:	62 e1 7e 28 e6 5a 06 	vcvtdq2pd 0x60(%rdx),%ymm19
  407ce5:	62 e1 7e 28 e6 52 08 	vcvtdq2pd 0x80(%rdx),%ymm18
  407cec:	62 e1 7e 28 e6 4a 0a 	vcvtdq2pd 0xa0(%rdx),%ymm17
  407cf3:	62 e1 7e 28 e6 42 0c 	vcvtdq2pd 0xc0(%rdx),%ymm16
  407cfa:	c5 7e e6 ba e0 00 00 	vcvtdq2pd 0xe0(%rdx),%ymm15
  407d01:	00 
  407d02:	62 61 7e 28 e6 62 10 	vcvtdq2pd 0x100(%rdx),%ymm28
  407d09:	62 61 7e 28 e6 4a 12 	vcvtdq2pd 0x120(%rdx),%ymm25
  407d10:	c5 7e e6 9a 60 01 00 	vcvtdq2pd 0x160(%rdx),%ymm11
  407d17:	00 
  407d18:	c5 7e e6 92 80 01 00 	vcvtdq2pd 0x180(%rdx),%ymm10
  407d1f:	00 
  407d20:	c5 7e e6 82 a0 01 00 	vcvtdq2pd 0x1a0(%rdx),%ymm8
  407d27:	00 
  407d28:	c5 fd 6f 92 80 01 00 	vmovdqa 0x180(%rdx),%ymm2
  407d2f:	00 
  407d30:	62 91 7e 28 e6 c7    	vcvtdq2pd %xmm31,%ymm0
  407d36:	62 b3 7d 28 39 fc 01 	vextracti32x4 $0x1,%ymm7,%xmm20
  407d3d:	62 61 7e 28 e6 7a 1c 	vcvtdq2pd 0x1c0(%rdx),%ymm31
  407d44:	c4 e3 7d 39 f7 01    	vextracti128 $0x1,%ymm6,%xmm7
  407d4a:	c4 e3 7d 39 dc 01    	vextracti128 $0x1,%ymm3,%xmm4
  407d50:	c5 fd 6f b2 00 01 00 	vmovdqa 0x100(%rdx),%ymm6
  407d57:	00 
  407d58:	c5 fd 6f 9a 60 01 00 	vmovdqa 0x160(%rdx),%ymm3
  407d5f:	00 
  407d60:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  407d67:	00 00 
  407d69:	c5 fe e6 c9          	vcvtdq2pd %xmm1,%ymm1
  407d6d:	c5 fd 29 4c 24 40    	vmovapd %ymm1,0x40(%rsp)
  407d73:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xa0(%rsp)
  407d7a:	05 
  407d7b:	c5 fd 6f 82 c0 01 00 	vmovdqa 0x1c0(%rdx),%ymm0
  407d82:	00 
  407d83:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  407d8a:	07 
  407d8b:	62 93 7d 28 39 c7 01 	vextracti32x4 $0x1,%ymm0,%xmm31
  407d92:	62 91 7e 28 e6 c7    	vcvtdq2pd %xmm31,%ymm0
  407d98:	c5 fd 29 84 24 c0 00 	vmovapd %ymm0,0xc0(%rsp)
  407d9f:	00 00 
  407da1:	c5 fd 6f 82 e0 01 00 	vmovdqa 0x1e0(%rdx),%ymm0
  407da8:	00 
  407da9:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407dae:	62 61 7e 28 e6 7a 1e 	vcvtdq2pd 0x1e0(%rdx),%ymm31
  407db5:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xe0(%rsp)
  407dbc:	07 
  407dbd:	62 93 7d 28 39 c7 01 	vextracti32x4 $0x1,%ymm0,%xmm31
  407dc4:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  407dc9:	62 91 7e 28 e6 c7    	vcvtdq2pd %xmm31,%ymm0
  407dcf:	c5 fd 29 84 24 00 01 	vmovapd %ymm0,0x100(%rsp)
  407dd6:	00 00 
  407dd8:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  407ddd:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  407de1:	62 b1 cd 00 15 ce    	vunpckhpd %xmm22,%xmm22,%xmm1
  407de7:	62 a3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm22,%xmm22
  407dee:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  407df2:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  407df9:	07 
  407dfa:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  407dff:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  407e04:	62 61 fd 08 6e f8    	vmovq  %rax,%xmm31
  407e0a:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  407e0f:	62 91 f7 08 58 cf    	vaddsd %xmm31,%xmm1,%xmm1
  407e15:	62 21 cd 00 15 fe    	vunpckhpd %xmm22,%xmm22,%xmm31
  407e1b:	62 a1 7e 28 e6 ed    	vcvtdq2pd %xmm21,%ymm21
  407e21:	62 f1 87 00 58 c9    	vaddsd %xmm1,%xmm31,%xmm1
  407e27:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  407e2e:	07 
  407e2f:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  407e34:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  407e39:	62 e1 fd 08 6e f0    	vmovq  %rax,%xmm22
  407e3f:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  407e44:	62 b1 f7 08 58 ce    	vaddsd %xmm22,%xmm1,%xmm1
  407e4a:	62 21 d5 00 15 fd    	vunpckhpd %xmm21,%xmm21,%xmm31
  407e50:	62 a3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm21,%xmm21
  407e57:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  407e5e:	07 
  407e5f:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407e64:	62 61 87 00 58 f9    	vaddsd %xmm1,%xmm31,%xmm31
  407e6a:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  407e6f:	62 61 fd 08 13 74 24 	vmovlpd %xmm30,0x38(%rsp)
  407e76:	07 
  407e77:	62 01 f7 08 58 ff    	vaddsd %xmm31,%xmm1,%xmm31
  407e7d:	62 a1 d5 00 15 f5    	vunpckhpd %xmm21,%xmm21,%xmm22
  407e83:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407e88:	62 81 cf 00 58 f7    	vaddsd %xmm31,%xmm22,%xmm22
  407e8e:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  407e93:	62 01 8d 00 15 fe    	vunpckhpd %xmm30,%xmm30,%xmm31
  407e99:	62 a1 f7 08 58 f6    	vaddsd %xmm22,%xmm1,%xmm22
  407e9f:	62 a1 7e 28 e6 e4    	vcvtdq2pd %xmm20,%ymm20
  407ea5:	c5 fd 28 4c 24 40    	vmovapd 0x40(%rsp),%ymm1
  407eab:	62 21 87 00 58 fe    	vaddsd %xmm22,%xmm31,%xmm31
  407eb1:	62 23 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm30,%xmm22
  407eb8:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  407ebf:	07 
  407ec0:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  407ec7:	07 
  407ec8:	62 a1 cd 00 15 f6    	vunpckhpd %xmm22,%xmm22,%xmm22
  407ece:	62 01 8f 00 58 f7    	vaddsd %xmm31,%xmm30,%xmm30
  407ed4:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  407edb:	07 
  407edc:	62 61 ff 08 10 7c 24 	vmovsd 0x38(%rsp),%xmm31
  407ee3:	07 
  407ee4:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  407eea:	62 21 dd 00 15 f4    	vunpckhpd %xmm20,%xmm20,%xmm30
  407ef0:	62 a3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm20,%xmm20
  407ef7:	62 a1 87 00 58 f6    	vaddsd %xmm22,%xmm31,%xmm22
  407efd:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  407f04:	07 
  407f05:	62 a1 dd 00 15 ec    	vunpckhpd %xmm20,%xmm20,%xmm21
  407f0b:	62 21 8f 00 58 f6    	vaddsd %xmm22,%xmm30,%xmm30
  407f11:	62 e1 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm22
  407f18:	07 
  407f19:	62 61 fd 08 13 6c 24 	vmovlpd %xmm29,0x38(%rsp)
  407f20:	07 
  407f21:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  407f27:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  407f2e:	07 
  407f2f:	c5 f9 13 4c 24 40    	vmovlpd %xmm1,0x40(%rsp)
  407f35:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  407f3b:	62 81 95 00 15 f5    	vunpckhpd %xmm29,%xmm29,%xmm22
  407f41:	c4 41 7e e6 ed       	vcvtdq2pd %xmm13,%ymm13
  407f46:	62 a1 8f 00 58 ed    	vaddsd %xmm21,%xmm30,%xmm21
  407f4c:	c4 41 7e e6 e4       	vcvtdq2pd %xmm12,%ymm12
  407f51:	c4 41 7e e6 c9       	vcvtdq2pd %xmm9,%ymm9
  407f56:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  407f5c:	62 23 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm29,%xmm21
  407f63:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  407f6a:	07 
  407f6b:	62 61 ff 08 10 6c 24 	vmovsd 0x38(%rsp),%xmm29
  407f72:	07 
  407f73:	62 a1 d5 00 15 ed    	vunpckhpd %xmm21,%xmm21,%xmm21
  407f79:	62 a1 97 00 58 f6    	vaddsd %xmm22,%xmm29,%xmm22
  407f7f:	62 61 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm29
  407f86:	08 
  407f87:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x40(%rsp)
  407f8e:	08 
  407f8f:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  407f95:	62 e1 f5 08 15 f1    	vunpckhpd %xmm1,%xmm1,%xmm22
  407f9b:	62 f3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm1,%xmm1
  407fa2:	62 a1 97 00 58 ed    	vaddsd %xmm21,%xmm29,%xmm21
  407fa8:	62 e1 f5 08 15 e1    	vunpckhpd %xmm1,%xmm1,%xmm20
  407fae:	c5 fe e6 ff          	vcvtdq2pd %xmm7,%ymm7
  407fb2:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  407fb8:	c4 e3 7d 39 f6 01    	vextracti128 $0x1,%ymm6,%xmm6
  407fbe:	c5 fe e6 f6          	vcvtdq2pd %xmm6,%ymm6
  407fc2:	62 a1 f7 08 58 ee    	vaddsd %xmm22,%xmm1,%xmm21
  407fc8:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  407fcf:	08 
  407fd0:	c5 fe e6 ed          	vcvtdq2pd %xmm5,%ymm5
  407fd4:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  407fda:	62 a1 e5 00 15 eb    	vunpckhpd %xmm19,%xmm19,%xmm21
  407fe0:	62 a3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm19,%xmm19
  407fe7:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  407fed:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x40(%rsp)
  407ff4:	08 
  407ff5:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  407ffc:	08 
  407ffd:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  408003:	c5 fd 28 44 24 60    	vmovapd 0x60(%rsp),%ymm0
  408009:	62 a1 e5 00 15 e3    	vunpckhpd %xmm19,%xmm19,%xmm20
  40800f:	62 a1 cf 00 58 ed    	vaddsd %xmm21,%xmm22,%xmm21
  408015:	c5 f9 13 44 24 60    	vmovlpd %xmm0,0x60(%rsp)
  40801b:	62 e1 ff 08 10 74 24 	vmovsd 0x60(%rsp),%xmm22
  408022:	0c 
  408023:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  408029:	62 e1 fd 08 15 e8    	vunpckhpd %xmm0,%xmm0,%xmm21
  40802f:	62 f3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm0,%xmm0
  408036:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  40803c:	62 e1 fd 08 15 d8    	vunpckhpd %xmm0,%xmm0,%xmm19
  408042:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x60(%rsp)
  408049:	0c 
  40804a:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  408050:	c5 fe e6 e4          	vcvtdq2pd %xmm4,%ymm4
  408054:	c4 e3 7d 39 db 01    	vextracti128 $0x1,%ymm3,%xmm3
  40805a:	62 a1 ff 08 58 e5    	vaddsd %xmm21,%xmm0,%xmm20
  408060:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  408067:	0c 
  408068:	c5 fe e6 db          	vcvtdq2pd %xmm3,%ymm3
  40806c:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  408072:	62 a1 ed 00 15 e2    	vunpckhpd %xmm18,%xmm18,%xmm20
  408078:	62 a3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm18,%xmm18
  40807f:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  408085:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x60(%rsp)
  40808c:	0c 
  40808d:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  408094:	0c 
  408095:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  40809b:	62 a1 ed 00 15 da    	vunpckhpd %xmm18,%xmm18,%xmm19
  4080a1:	c5 79 13 6c 24 60    	vmovlpd %xmm13,0x60(%rsp)
  4080a7:	62 a1 d7 00 58 e4    	vaddsd %xmm20,%xmm21,%xmm20
  4080ad:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  4080b4:	0c 
  4080b5:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x60(%rsp)
  4080bc:	0c 
  4080bd:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  4080c3:	62 c1 95 08 15 e5    	vunpckhpd %xmm13,%xmm13,%xmm20
  4080c9:	62 53 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm13,%xmm13
  4080d0:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  4080d6:	62 c1 95 08 15 d5    	vunpckhpd %xmm13,%xmm13,%xmm18
  4080dc:	c4 e3 7d 39 d2 01    	vextracti128 $0x1,%ymm2,%xmm2
  4080e2:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  4080e8:	c5 fe e6 d2          	vcvtdq2pd %xmm2,%ymm2
  4080ec:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  4080f3:	62 a1 97 08 58 dc    	vaddsd %xmm20,%xmm13,%xmm19
  4080f9:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  408100:	0c 
  408101:	62 43 fd 28 19 cd 01 	vextractf64x2 $0x1,%ymm25,%xmm13
  408108:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  40810e:	62 a1 f5 00 15 d9    	vunpckhpd %xmm17,%xmm17,%xmm19
  408114:	62 a3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm17,%xmm17
  40811b:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  408121:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x60(%rsp)
  408128:	0c 
  408129:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  408130:	0c 
  408131:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  408137:	62 a1 f5 00 15 d1    	vunpckhpd %xmm17,%xmm17,%xmm18
  40813d:	c5 79 13 64 24 60    	vmovlpd %xmm12,0x60(%rsp)
  408143:	62 a1 df 00 58 db    	vaddsd %xmm19,%xmm20,%xmm19
  408149:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  408150:	0c 
  408151:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x60(%rsp)
  408158:	0c 
  408159:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  40815f:	62 c1 9d 08 15 dc    	vunpckhpd %xmm12,%xmm12,%xmm19
  408165:	62 53 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm12,%xmm12
  40816c:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  408172:	62 c1 9d 08 15 cc    	vunpckhpd %xmm12,%xmm12,%xmm17
  408178:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  40817e:	62 a1 9f 08 58 d3    	vaddsd %xmm19,%xmm12,%xmm18
  408184:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  40818b:	0c 
  40818c:	62 53 fd 28 19 f4 01 	vextractf64x2 $0x1,%ymm14,%xmm12
  408193:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  408199:	62 a1 fd 00 15 d0    	vunpckhpd %xmm16,%xmm16,%xmm18
  40819f:	62 a3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm16,%xmm16
  4081a6:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  4081ac:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x60(%rsp)
  4081b3:	0c 
  4081b4:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  4081bb:	0c 
  4081bc:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  4081c2:	62 a1 fd 00 15 c8    	vunpckhpd %xmm16,%xmm16,%xmm17
  4081c8:	c5 79 13 4c 24 60    	vmovlpd %xmm9,0x60(%rsp)
  4081ce:	62 a1 e7 00 58 d2    	vaddsd %xmm18,%xmm19,%xmm18
  4081d4:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  4081db:	0c 
  4081dc:	c5 79 13 7c 24 60    	vmovlpd %xmm15,0x60(%rsp)
  4081e2:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  4081e8:	62 c1 b5 08 15 d1    	vunpckhpd %xmm9,%xmm9,%xmm18
  4081ee:	62 53 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm9,%xmm9
  4081f5:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  4081fb:	62 c1 b5 08 15 c1    	vunpckhpd %xmm9,%xmm9,%xmm16
  408201:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  408207:	62 a1 b7 08 58 ca    	vaddsd %xmm18,%xmm9,%xmm17
  40820d:	62 e1 ff 08 10 54 24 	vmovsd 0x60(%rsp),%xmm18
  408214:	0c 
  408215:	c5 f9 13 7c 24 60    	vmovlpd %xmm7,0x60(%rsp)
  40821b:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  408221:	62 c1 85 08 15 cf    	vunpckhpd %xmm15,%xmm15,%xmm17
  408227:	62 53 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm15,%xmm15
  40822e:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  408234:	62 e1 ff 08 10 54 24 	vmovsd 0x60(%rsp),%xmm18
  40823b:	0c 
  40823c:	62 61 fd 08 13 64 24 	vmovlpd %xmm28,0x60(%rsp)
  408243:	0c 
  408244:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  40824a:	62 c1 85 08 15 c7    	vunpckhpd %xmm15,%xmm15,%xmm16
  408250:	62 a1 87 08 58 c9    	vaddsd %xmm17,%xmm15,%xmm17
  408256:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  40825c:	62 e1 c5 08 15 cf    	vunpckhpd %xmm7,%xmm7,%xmm17
  408262:	62 f3 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm7,%xmm7
  408269:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  40826f:	c5 41 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm15
  408273:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  408279:	62 a1 c7 08 58 c1    	vaddsd %xmm17,%xmm7,%xmm16
  40827f:	62 e1 ff 08 10 4c 24 	vmovsd 0x60(%rsp),%xmm17
  408286:	0c 
  408287:	c5 f9 13 74 24 60    	vmovlpd %xmm6,0x60(%rsp)
  40828d:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  408293:	62 81 9d 00 15 c4    	vunpckhpd %xmm28,%xmm28,%xmm16
  408299:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  40829f:	62 e1 ff 08 10 4c 24 	vmovsd 0x60(%rsp),%xmm17
  4082a6:	0c 
  4082a7:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4082ad:	62 43 fd 28 19 e7 01 	vextractf64x2 $0x1,%ymm28,%xmm15
  4082b4:	62 a1 87 08 58 c0    	vaddsd %xmm16,%xmm15,%xmm16
  4082ba:	c4 41 01 15 ff       	vunpckhpd %xmm15,%xmm15,%xmm15
  4082bf:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  4082c5:	62 e1 cd 08 15 c6    	vunpckhpd %xmm6,%xmm6,%xmm16
  4082cb:	62 f3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm6,%xmm6
  4082d2:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  4082d8:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4082de:	62 31 cf 08 58 f8    	vaddsd %xmm16,%xmm6,%xmm15
  4082e4:	c5 c9 15 f6          	vunpckhpd %xmm6,%xmm6,%xmm6
  4082e8:	c4 c1 4b 58 f7       	vaddsd %xmm15,%xmm6,%xmm6
  4082ed:	62 11 b5 00 15 f9    	vunpckhpd %xmm25,%xmm25,%xmm15
  4082f3:	62 f1 b7 00 58 f6    	vaddsd %xmm6,%xmm25,%xmm6
  4082f9:	c5 03 58 fe          	vaddsd %xmm6,%xmm15,%xmm15
  4082fd:	c4 c1 13 58 f7       	vaddsd %xmm15,%xmm13,%xmm6
  408302:	c4 41 11 15 ed       	vunpckhpd %xmm13,%xmm13,%xmm13
  408307:	c5 13 58 ee          	vaddsd %xmm6,%xmm13,%xmm13
  40830b:	c5 d1 15 f5          	vunpckhpd %xmm5,%xmm5,%xmm6
  40830f:	c4 41 53 58 ed       	vaddsd %xmm13,%xmm5,%xmm13
  408314:	62 f3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm5,%xmm5
  40831b:	c4 c1 4b 58 f5       	vaddsd %xmm13,%xmm6,%xmm6
  408320:	c5 d3 58 f6          	vaddsd %xmm6,%xmm5,%xmm6
  408324:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  408328:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  40832c:	c4 c1 09 15 f6       	vunpckhpd %xmm14,%xmm14,%xmm6
  408331:	c5 8b 58 ed          	vaddsd %xmm5,%xmm14,%xmm5
  408335:	c5 cb 58 f5          	vaddsd %xmm5,%xmm6,%xmm6
  408339:	c5 9b 58 ee          	vaddsd %xmm6,%xmm12,%xmm5
  40833d:	c4 41 19 15 e4       	vunpckhpd %xmm12,%xmm12,%xmm12
  408342:	c5 1b 58 e5          	vaddsd %xmm5,%xmm12,%xmm12
  408346:	c5 d9 15 ec          	vunpckhpd %xmm4,%xmm4,%xmm5
  40834a:	c4 c1 5b 58 f4       	vaddsd %xmm12,%xmm4,%xmm6
  40834f:	62 f3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm4,%xmm4
  408356:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  40835a:	c5 fd 28 b4 24 80 00 	vmovapd 0x80(%rsp),%ymm6
  408361:	00 00 
  408363:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  408367:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  40836b:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  408372:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  408376:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  40837b:	c5 a3 58 ed          	vaddsd %xmm5,%xmm11,%xmm5
  40837f:	62 53 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm11,%xmm11
  408386:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40838a:	c5 a3 58 ec          	vaddsd %xmm4,%xmm11,%xmm5
  40838e:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  408393:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  408397:	c5 e1 15 eb          	vunpckhpd %xmm3,%xmm3,%xmm5
  40839b:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  40839f:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  4083a3:	62 f3 fd 28 19 dc 01 	vextractf64x2 $0x1,%ymm3,%xmm4
  4083aa:	c5 db 58 dd          	vaddsd %xmm5,%xmm4,%xmm3
  4083ae:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  4083b2:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  4083b6:	c4 c1 29 15 da       	vunpckhpd %xmm10,%xmm10,%xmm3
  4083bb:	c5 ab 58 e4          	vaddsd %xmm4,%xmm10,%xmm4
  4083bf:	62 53 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm10,%xmm10
  4083c6:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  4083ca:	c5 ab 58 db          	vaddsd %xmm3,%xmm10,%xmm3
  4083ce:	c4 41 29 15 d2       	vunpckhpd %xmm10,%xmm10,%xmm10
  4083d3:	c5 2b 58 d3          	vaddsd %xmm3,%xmm10,%xmm10
  4083d7:	c5 e9 15 da          	vunpckhpd %xmm2,%xmm2,%xmm3
  4083db:	c4 c1 6b 58 e2       	vaddsd %xmm10,%xmm2,%xmm4
  4083e0:	62 f3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm2,%xmm2
  4083e7:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  4083eb:	c5 eb 58 db          	vaddsd %xmm3,%xmm2,%xmm3
  4083ef:	c5 e9 15 d2          	vunpckhpd %xmm2,%xmm2,%xmm2
  4083f3:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  4083f7:	c4 c1 39 15 d8       	vunpckhpd %xmm8,%xmm8,%xmm3
  4083fc:	c5 bb 58 d2          	vaddsd %xmm2,%xmm8,%xmm2
  408400:	62 53 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm8
  408407:	c4 41 39 15 c8       	vunpckhpd %xmm8,%xmm8,%xmm9
  40840c:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  408410:	c5 bb 58 d3          	vaddsd %xmm3,%xmm8,%xmm2
  408414:	c5 33 58 ca          	vaddsd %xmm2,%xmm9,%xmm9
  408418:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  40841c:	c4 c1 4b 58 d9       	vaddsd %xmm9,%xmm6,%xmm3
  408421:	c5 fd 28 b4 24 a0 00 	vmovapd 0xa0(%rsp),%ymm6
  408428:	00 00 
  40842a:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40842e:	62 d3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm8
  408435:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  408439:	c5 f1 15 c9          	vunpckhpd %xmm1,%xmm1,%xmm1
  40843d:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  408441:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  408445:	c5 cb 58 c9          	vaddsd %xmm1,%xmm6,%xmm1
  408449:	c5 fd 28 b4 24 c0 00 	vmovapd 0xc0(%rsp),%ymm6
  408450:	00 00 
  408452:	c5 fd 6f a2 00 fe ff 	vmovdqa -0x200(%rdx),%ymm4
  408459:	ff 
  40845a:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  40845e:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  408465:	62 e1 7d 28 6f 52 f2 	vmovdqa32 -0x1c0(%rdx),%ymm18
  40846c:	c5 bb 58 ca          	vaddsd %xmm2,%xmm8,%xmm1
  408470:	c4 41 39 15 c0       	vunpckhpd %xmm8,%xmm8,%xmm8
  408475:	c5 fd 6f aa 80 fe ff 	vmovdqa -0x180(%rdx),%ymm5
  40847c:	ff 
  40847d:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  408481:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  408485:	62 f2 3d 20 7e 62 f1 	vpermt2d -0x1e0(%rdx),%ymm24,%ymm4
  40848c:	c4 c1 4b 58 d0       	vaddsd %xmm8,%xmm6,%xmm2
  408491:	c5 fd 28 b4 24 e0 00 	vmovapd 0xe0(%rsp),%ymm6
  408498:	00 00 
  40849a:	c5 7d 6f ba c0 fe ff 	vmovdqa -0x140(%rdx),%ymm15
  4084a1:	ff 
  4084a2:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  4084a6:	62 f3 fd 28 19 f7 01 	vextractf64x2 $0x1,%ymm6,%xmm7
  4084ad:	62 e2 3d 20 7e 52 f3 	vpermt2d -0x1a0(%rdx),%ymm24,%ymm18
  4084b4:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  4084b8:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  4084bc:	62 f2 3d 20 7e 6a f5 	vpermt2d -0x160(%rdx),%ymm24,%ymm5
  4084c3:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4084c7:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  4084cb:	62 e1 7d 28 6f 4a fa 	vmovdqa32 -0xc0(%rdx),%ymm17
  4084d2:	c5 cb 58 c0          	vaddsd %xmm0,%xmm6,%xmm0
  4084d6:	c5 fd 28 b4 24 00 01 	vmovapd 0x100(%rsp),%ymm6
  4084dd:	00 00 
  4084df:	c5 fd 6f 52 80       	vmovdqa -0x80(%rdx),%ymm2
  4084e4:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4084e8:	c5 7d 6f ec          	vmovdqa %ymm4,%ymm13
  4084ec:	62 72 3d 20 7e 7a f7 	vpermt2d -0x120(%rdx),%ymm24,%ymm15
  4084f3:	c5 c3 58 c1          	vaddsd %xmm1,%xmm7,%xmm0
  4084f7:	c5 c1 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm7
  4084fb:	62 32 3d 20 7e ea    	vpermt2d %ymm18,%ymm24,%ymm13
  408501:	c5 c3 58 f8          	vaddsd %xmm0,%xmm7,%xmm7
  408505:	c5 c9 15 c6          	vunpckhpd %xmm6,%xmm6,%xmm0
  408509:	62 b2 2d 20 7e e2    	vpermt2d %ymm18,%ymm26,%ymm4
  40850f:	c5 cb 58 cf          	vaddsd %xmm7,%xmm6,%xmm1
  408513:	c5 7d 6f 8a 40 fe ff 	vmovdqa -0x1c0(%rdx),%ymm9
  40851a:	ff 
  40851b:	c5 fd 6f ba 80 fe ff 	vmovdqa -0x180(%rdx),%ymm7
  408522:	ff 
  408523:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  408527:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  40852e:	c5 7d 6f b2 c0 fe ff 	vmovdqa -0x140(%rdx),%ymm14
  408535:	ff 
  408536:	c5 fb 58 d9          	vaddsd %xmm1,%xmm0,%xmm3
  40853a:	c5 fd 6f 8a 00 ff ff 	vmovdqa -0x100(%rdx),%ymm1
  408541:	ff 
  408542:	c5 fd 6f b2 00 fe ff 	vmovdqa -0x200(%rdx),%ymm6
  408549:	ff 
  40854a:	62 f2 3d 20 7e 4a f9 	vpermt2d -0xe0(%rdx),%ymm24,%ymm1
  408551:	c5 7d 6f 9a 00 ff ff 	vmovdqa -0x100(%rdx),%ymm11
  408558:	ff 
  408559:	c5 7d 6f 82 40 ff ff 	vmovdqa -0xc0(%rdx),%ymm8
  408560:	ff 
  408561:	62 e1 7d 28 6f 42 fc 	vmovdqa32 -0x80(%rdx),%ymm16
  408568:	62 e1 7d 28 6f d5    	vmovdqa32 %ymm5,%ymm18
  40856e:	c5 7d 6f 62 c0       	vmovdqa -0x40(%rdx),%ymm12
  408573:	62 e2 3d 20 7e 4a fb 	vpermt2d -0xa0(%rdx),%ymm24,%ymm17
  40857a:	62 c2 3d 20 7e d7    	vpermt2d %ymm15,%ymm24,%ymm18
  408580:	62 d2 2d 20 7e ef    	vpermt2d %ymm15,%ymm26,%ymm5
  408586:	62 f2 3d 20 7e 52 fd 	vpermt2d -0x60(%rdx),%ymm24,%ymm2
  40858d:	c5 7d 6f f9          	vmovdqa %ymm1,%ymm15
  408591:	62 72 2d 20 7e 4a f3 	vpermt2d -0x1a0(%rdx),%ymm26,%ymm9
  408598:	62 72 2d 20 7e 72 f7 	vpermt2d -0x120(%rdx),%ymm26,%ymm14
  40859f:	62 72 2d 20 7e 42 fb 	vpermt2d -0xa0(%rdx),%ymm26,%ymm8
  4085a6:	62 f2 2d 20 7e 72 f1 	vpermt2d -0x1e0(%rdx),%ymm26,%ymm6
  4085ad:	62 f2 2d 20 7e 7a f5 	vpermt2d -0x160(%rdx),%ymm26,%ymm7
  4085b4:	62 72 2d 20 7e 5a f9 	vpermt2d -0xe0(%rdx),%ymm26,%ymm11
  4085bb:	62 e2 2d 20 7e 42 fd 	vpermt2d -0x60(%rdx),%ymm26,%ymm16
  4085c2:	62 32 3d 20 7e f9    	vpermt2d %ymm17,%ymm24,%ymm15
  4085c8:	62 72 3d 20 7e 62 ff 	vpermt2d -0x20(%rdx),%ymm24,%ymm12
  4085cf:	62 b2 2d 20 7e c9    	vpermt2d %ymm17,%ymm26,%ymm1
  4085d5:	62 e1 7d 28 6f ca    	vmovdqa32 %ymm2,%ymm17
  4085db:	62 c2 3d 20 7e cc    	vpermt2d %ymm12,%ymm24,%ymm17
  4085e1:	62 d2 2d 20 7e d4    	vpermt2d %ymm12,%ymm26,%ymm2
  4085e7:	c5 7d 6f e6          	vmovdqa %ymm6,%ymm12
  4085eb:	62 52 3d 20 7e e1    	vpermt2d %ymm9,%ymm24,%ymm12
  4085f1:	62 d2 2d 20 7e f1    	vpermt2d %ymm9,%ymm26,%ymm6
  4085f7:	c5 7d 6f 52 c0       	vmovdqa -0x40(%rdx),%ymm10
  4085fc:	c5 7d 6f cf          	vmovdqa %ymm7,%ymm9
  408600:	62 52 3d 20 7e ce    	vpermt2d %ymm14,%ymm24,%ymm9
  408606:	62 d2 2d 20 7e fe    	vpermt2d %ymm14,%ymm26,%ymm7
  40860c:	c4 41 7d 6f f3       	vmovdqa %ymm11,%ymm14
  408611:	62 72 2d 20 7e 52 ff 	vpermt2d -0x20(%rdx),%ymm26,%ymm10
  408618:	62 52 3d 20 7e f0    	vpermt2d %ymm8,%ymm24,%ymm14
  40861e:	62 52 2d 20 7e d8    	vpermt2d %ymm8,%ymm26,%ymm11
  408624:	62 31 7d 28 6f c0    	vmovdqa32 %ymm16,%ymm8
  40862a:	62 52 3d 20 7e c2    	vpermt2d %ymm10,%ymm24,%ymm8
  408630:	62 c2 2d 20 7e c2    	vpermt2d %ymm10,%ymm26,%ymm16
  408636:	62 c1 7d 28 6f de    	vmovdqa32 %ymm14,%ymm19
  40863c:	c4 41 7d 6f d5       	vmovdqa %ymm13,%ymm10
  408641:	62 32 3d 20 7e d2    	vpermt2d %ymm18,%ymm24,%ymm10
  408647:	62 32 2d 20 7e ea    	vpermt2d %ymm18,%ymm26,%ymm13
  40864d:	62 c2 3d 20 7e d8    	vpermt2d %ymm8,%ymm24,%ymm19
  408653:	62 52 2d 20 7e f0    	vpermt2d %ymm8,%ymm26,%ymm14
  408659:	62 c1 7d 28 6f e7    	vmovdqa32 %ymm15,%ymm20
  40865f:	62 e1 7d 28 6f d1    	vmovdqa32 %ymm1,%ymm18
  408665:	c5 7d 6f c6          	vmovdqa %ymm6,%ymm8
  408669:	62 f2 2d 20 7e f7    	vpermt2d %ymm7,%ymm26,%ymm6
  40866f:	62 f2 2d 20 7e ca    	vpermt2d %ymm2,%ymm26,%ymm1
  408675:	62 a2 3d 20 7e e1    	vpermt2d %ymm17,%ymm24,%ymm20
  40867b:	62 32 2d 20 7e f9    	vpermt2d %ymm17,%ymm26,%ymm15
  408681:	62 e2 3d 20 7e d2    	vpermt2d %ymm2,%ymm24,%ymm18
  408687:	62 c1 7d 28 6f cc    	vmovdqa32 %ymm12,%ymm17
  40868d:	c5 fd 6f d6          	vmovdqa %ymm6,%ymm2
  408691:	c5 7d 7f d6          	vmovdqa %ymm10,%ymm6
  408695:	62 c2 3d 20 7e c9    	vpermt2d %ymm9,%ymm24,%ymm17
  40869b:	62 b2 3d 20 7e f4    	vpermt2d %ymm20,%ymm24,%ymm6
  4086a1:	62 52 2d 20 7e e1    	vpermt2d %ymm9,%ymm26,%ymm12
  4086a7:	62 b3 4d 28 1f cf 04 	vpcmpneqd %ymm23,%ymm6,%k1
  4086ae:	c5 7d 6f cc          	vmovdqa %ymm4,%ymm9
  4086b2:	62 b1 7d 28 6f f1    	vmovdqa32 %ymm17,%ymm6
  4086b8:	62 72 3d 20 7e cd    	vpermt2d %ymm5,%ymm24,%ymm9
  4086be:	62 b2 3d 20 7e f3    	vpermt2d %ymm19,%ymm24,%ymm6
  4086c4:	62 b3 4d 28 1f c7 04 	vpcmpneqd %ymm23,%ymm6,%k0
  4086cb:	c5 7d 7f ce          	vmovdqa %ymm9,%ymm6
  4086cf:	62 f2 2d 20 7e e5    	vpermt2d %ymm5,%ymm26,%ymm4
  4086d5:	62 72 3d 20 7e c7    	vpermt2d %ymm7,%ymm24,%ymm8
  4086db:	c5 7d 7f dd          	vmovdqa %ymm11,%ymm5
  4086df:	62 b2 3d 20 7e f2    	vpermt2d %ymm18,%ymm24,%ymm6
  4086e5:	62 b3 4d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm6,%k2
  4086ec:	62 b2 3d 20 7e e8    	vpermt2d %ymm16,%ymm24,%ymm5
  4086f2:	c5 7d 7f c6          	vmovdqa %ymm8,%ymm6
  4086f6:	62 f2 3d 20 7e f5    	vpermt2d %ymm5,%ymm24,%ymm6
  4086fc:	62 b3 4d 28 1f df 04 	vpcmpneqd %ymm23,%ymm6,%k3
  408703:	c5 7d 7f ee          	vmovdqa %ymm13,%ymm6
  408707:	62 d2 3d 20 7e f7    	vpermt2d %ymm15,%ymm24,%ymm6
  40870d:	62 b3 4d 28 1f e7 04 	vpcmpneqd %ymm23,%ymm6,%k4
  408714:	c5 7d 7f e6          	vmovdqa %ymm12,%ymm6
  408718:	62 d2 3d 20 7e f6    	vpermt2d %ymm14,%ymm24,%ymm6
  40871e:	62 b3 4d 28 1f ef 04 	vpcmpneqd %ymm23,%ymm6,%k5
  408725:	c5 fd 6f f4          	vmovdqa %ymm4,%ymm6
  408729:	62 f2 3d 20 7e f1    	vpermt2d %ymm1,%ymm24,%ymm6
  40872f:	62 b3 4d 28 1f f7 04 	vpcmpneqd %ymm23,%ymm6,%k6
  408736:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  40873a:	c5 f9 93 c2          	kmovb  %k2,%eax
  40873e:	62 32 2d 20 7e d8    	vpermt2d %ymm16,%ymm26,%ymm11
  408744:	c5 fd 6f f2          	vmovdqa %ymm2,%ymm6
  408748:	c5 f9 93 f1          	kmovb  %k1,%esi
  40874c:	09 c6                	or     %eax,%esi
  40874e:	62 d2 3d 20 7e f3    	vpermt2d %ymm11,%ymm24,%ymm6
  408754:	c5 f9 93 c3          	kmovb  %k3,%eax
  408758:	09 c6                	or     %eax,%esi
  40875a:	62 b3 4d 28 1f ff 04 	vpcmpneqd %ymm23,%ymm6,%k7
  408761:	c5 f9 93 c4          	kmovb  %k4,%eax
  408765:	62 32 2d 20 7e d4    	vpermt2d %ymm20,%ymm26,%ymm10
  40876b:	09 c6                	or     %eax,%esi
  40876d:	62 b1 7d 28 6f f9    	vmovdqa32 %ymm17,%ymm7
  408773:	c5 f9 93 c5          	kmovb  %k5,%eax
  408777:	62 b3 2d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm10,%k2
  40877e:	09 c6                	or     %eax,%esi
  408780:	62 b2 2d 20 7e fb    	vpermt2d %ymm19,%ymm26,%ymm7
  408786:	c5 f9 93 c6          	kmovb  %k6,%eax
  40878a:	62 b3 45 28 1f df 04 	vpcmpneqd %ymm23,%ymm7,%k3
  408791:	09 c6                	or     %eax,%esi
  408793:	62 32 2d 20 7e ca    	vpermt2d %ymm18,%ymm26,%ymm9
  408799:	c5 f9 93 c7          	kmovb  %k7,%eax
  40879d:	62 72 2d 20 7e c5    	vpermt2d %ymm5,%ymm26,%ymm8
  4087a3:	09 c6                	or     %eax,%esi
  4087a5:	62 b3 35 28 1f e7 04 	vpcmpneqd %ymm23,%ymm9,%k4
  4087ac:	c5 7d 7f ee          	vmovdqa %ymm13,%ymm6
  4087b0:	c5 f9 93 c2          	kmovb  %k2,%eax
  4087b4:	62 b3 3d 28 1f ef 04 	vpcmpneqd %ymm23,%ymm8,%k5
  4087bb:	09 c6                	or     %eax,%esi
  4087bd:	62 d2 2d 20 7e f7    	vpermt2d %ymm15,%ymm26,%ymm6
  4087c3:	c5 7d 7f e5          	vmovdqa %ymm12,%ymm5
  4087c7:	c5 f9 93 c3          	kmovb  %k3,%eax
  4087cb:	62 b3 4d 28 1f f7 04 	vpcmpneqd %ymm23,%ymm6,%k6
  4087d2:	09 c6                	or     %eax,%esi
  4087d4:	62 d2 2d 20 7e ee    	vpermt2d %ymm14,%ymm26,%ymm5
  4087da:	62 f2 2d 20 7e e1    	vpermt2d %ymm1,%ymm26,%ymm4
  4087e0:	c5 f9 93 c4          	kmovb  %k4,%eax
  4087e4:	62 b3 55 28 1f ff 04 	vpcmpneqd %ymm23,%ymm5,%k7
  4087eb:	09 c6                	or     %eax,%esi
  4087ed:	62 b3 5d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm4,%k2
  4087f4:	c5 f9 93 c5          	kmovb  %k5,%eax
  4087f8:	62 d2 2d 20 7e d3    	vpermt2d %ymm11,%ymm26,%ymm2
  4087fe:	09 c6                	or     %eax,%esi
  408800:	62 b3 6d 28 1f c7 04 	vpcmpneqd %ymm23,%ymm2,%k0
  408807:	c5 f9 93 c6          	kmovb  %k6,%eax
  40880b:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  40880f:	09 c6                	or     %eax,%esi
  408811:	c5 fb 58 db          	vaddsd %xmm3,%xmm0,%xmm3
  408815:	c5 f9 93 c7          	kmovb  %k7,%eax
  408819:	09 c6                	or     %eax,%esi
  40881b:	c5 f9 93 c2          	kmovb  %k2,%eax
  40881f:	09 c6                	or     %eax,%esi
  408821:	c5 f9 92 ce          	kmovb  %esi,%k1
  408825:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  408829:	62 f1 7d a9 6f 4c 24 	vmovdqa32 0x120(%rsp),%ymm1{%k1}{z}
  408830:	09 
  408831:	62 61 25 20 eb d9    	vpord  %ymm1,%ymm27,%ymm27
  408837:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  40883c:	48 39 d1             	cmp    %rdx,%rcx
  40883f:	0f 85 f6 f3 ff ff    	jne    407c3b <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x154b>
  408845:	62 91 7d 08 6f cb    	vmovdqa32 %xmm27,%xmm1
  40884b:	62 63 7d 28 39 d8 01 	vextracti32x4 $0x1,%ymm27,%xmm0
  408852:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  408856:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  40885b:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  40885f:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  408864:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  408868:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  40886c:	41 09 c5             	or     %eax,%r13d
  40886f:	48 8d 84 24 80 19 00 	lea    0x1980(%rsp),%rax
  408876:	00 
  408877:	48 39 c1             	cmp    %rax,%rcx
  40887a:	0f 85 a7 f3 ff ff    	jne    407c27 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x1537>
  408880:	e9 0e ef ff ff       	jmpq   407793 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x10a3>
  408885:	48 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%rax
  40888c:	80 38 00             	cmpb   $0x0,(%rax)
  40888f:	0f 85 7d 03 00 00    	jne    408c12 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x2522>
  408895:	48 8b 83 b0 00 00 00 	mov    0xb0(%rbx),%rax
  40889c:	80 38 00             	cmpb   $0x0,(%rax)
  40889f:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  4088a4:	0f 84 be 10 00 00    	je     409968 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x3278>
  4088aa:	62 f2 7d 48 18 05 7c 	vbroadcastss 0x6e7c(%rip),%zmm0        # 40f730 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x230>
  4088b1:	6e 00 00 
  4088b4:	62 f2 7d 48 18 15 4a 	vbroadcastss 0x6e4a(%rip),%zmm2        # 40f708 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x208>
  4088bb:	6e 00 00 
  4088be:	62 f2 7d 48 18 1d 44 	vbroadcastss 0x6e44(%rip),%zmm3        # 40f70c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x20c>
  4088c5:	6e 00 00 
  4088c8:	62 f2 7d 48 18 25 3e 	vbroadcastss 0x6e3e(%rip),%zmm4        # 40f710 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x210>
  4088cf:	6e 00 00 
  4088d2:	62 f2 7d 48 18 2d 38 	vbroadcastss 0x6e38(%rip),%zmm5        # 40f714 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x214>
  4088d9:	6e 00 00 
  4088dc:	62 f2 7d 48 18 35 32 	vbroadcastss 0x6e32(%rip),%zmm6        # 40f718 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x218>
  4088e3:	6e 00 00 
  4088e6:	62 f2 7d 48 18 3d 2c 	vbroadcastss 0x6e2c(%rip),%zmm7        # 40f71c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x21c>
  4088ed:	6e 00 00 
  4088f0:	62 72 7d 48 18 05 26 	vbroadcastss 0x6e26(%rip),%zmm8        # 40f720 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x220>
  4088f7:	6e 00 00 
  4088fa:	62 72 7d 48 18 0d 20 	vbroadcastss 0x6e20(%rip),%zmm9        # 40f724 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x224>
  408901:	6e 00 00 
  408904:	62 72 7d 48 18 15 1a 	vbroadcastss 0x6e1a(%rip),%zmm10        # 40f728 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x228>
  40890b:	6e 00 00 
  40890e:	62 72 7d 48 18 1d 14 	vbroadcastss 0x6e14(%rip),%zmm11        # 40f72c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x22c>
  408915:	6e 00 00 
  408918:	62 72 7d 48 18 25 ba 	vbroadcastss 0x6cba(%rip),%zmm12        # 40f5dc <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xdc>
  40891f:	6c 00 00 
  408922:	62 f2 7d 48 18 0d 08 	vbroadcastss 0x6e08(%rip),%zmm1        # 40f734 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x234>
  408929:	6e 00 00 
  40892c:	62 71 7c 48 28 e8    	vmovaps %zmm0,%zmm13
  408932:	62 72 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm13
  408938:	62 72 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm12
  40893e:	62 72 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm11
  408944:	62 72 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm10
  40894a:	62 72 75 48 98 c8    	vfmadd132ps %zmm0,%zmm1,%zmm9
  408950:	62 72 75 48 98 c0    	vfmadd132ps %zmm0,%zmm1,%zmm8
  408956:	62 f2 75 48 98 f8    	vfmadd132ps %zmm0,%zmm1,%zmm7
  40895c:	62 f2 75 48 98 f0    	vfmadd132ps %zmm0,%zmm1,%zmm6
  408962:	62 f2 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm5
  408968:	62 f2 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm4
  40896e:	62 f2 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm3
  408974:	62 f2 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm2
  40897a:	ff c8                	dec    %eax
  40897c:	75 b4                	jne    408932 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x2242>
  40897e:	62 73 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm13,%ymm0
  408985:	c4 c1 7c 58 c5       	vaddps %ymm13,%ymm0,%ymm0
  40898a:	45 31 ed             	xor    %r13d,%r13d
  40898d:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  408993:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  408997:	c4 e3 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm1
  40899d:	c5 f0 58 c8          	vaddps %xmm0,%xmm1,%xmm1
  4089a1:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  4089a5:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  4089aa:	c5 fa 58 c1          	vaddss %xmm1,%xmm0,%xmm0
  4089ae:	62 73 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm12,%ymm1
  4089b5:	c4 c1 74 58 cc       	vaddps %ymm12,%ymm1,%ymm1
  4089ba:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4089be:	c5 fb 58 05 1a 6d 00 	vaddsd 0x6d1a(%rip),%xmm0,%xmm0        # 40f6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  4089c5:	00 
  4089c6:	c4 c3 7d 19 cc 01    	vextractf128 $0x1,%ymm1,%xmm12
  4089cc:	c5 98 58 c9          	vaddps %xmm1,%xmm12,%xmm1
  4089d0:	c4 63 79 04 e1 4e    	vpermilps $0x4e,%xmm1,%xmm12
  4089d6:	c5 18 58 e1          	vaddps %xmm1,%xmm12,%xmm12
  4089da:	c5 78 29 e1          	vmovaps %xmm12,%xmm1
  4089de:	c4 41 18 c6 e4 55    	vshufps $0x55,%xmm12,%xmm12,%xmm12
  4089e4:	c4 c1 72 58 cc       	vaddss %xmm12,%xmm1,%xmm1
  4089e9:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4089ed:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4089f1:	62 73 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm11,%ymm0
  4089f8:	c4 c1 7c 58 c3       	vaddps %ymm11,%ymm0,%ymm0
  4089fd:	c4 c3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm11
  408a03:	c5 a0 58 c0          	vaddps %xmm0,%xmm11,%xmm0
  408a07:	c4 63 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm11
  408a0d:	c5 20 58 d8          	vaddps %xmm0,%xmm11,%xmm11
  408a11:	c5 78 29 d8          	vmovaps %xmm11,%xmm0
  408a15:	c4 41 20 c6 db 55    	vshufps $0x55,%xmm11,%xmm11,%xmm11
  408a1b:	c4 c1 7a 58 c3       	vaddss %xmm11,%xmm0,%xmm0
  408a20:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408a24:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408a28:	62 73 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm1
  408a2f:	c4 c1 74 58 ca       	vaddps %ymm10,%ymm1,%ymm1
  408a34:	c4 c3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm10
  408a3a:	c5 a8 58 c9          	vaddps %xmm1,%xmm10,%xmm1
  408a3e:	c4 63 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm10
  408a44:	c5 28 58 d1          	vaddps %xmm1,%xmm10,%xmm10
  408a48:	c5 78 29 d1          	vmovaps %xmm10,%xmm1
  408a4c:	c4 41 28 c6 d2 55    	vshufps $0x55,%xmm10,%xmm10,%xmm10
  408a52:	c4 c1 72 58 ca       	vaddss %xmm10,%xmm1,%xmm1
  408a57:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408a5b:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408a5f:	62 73 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm0
  408a66:	c4 c1 7c 58 c1       	vaddps %ymm9,%ymm0,%ymm0
  408a6b:	c4 c3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm9
  408a71:	c5 b0 58 c0          	vaddps %xmm0,%xmm9,%xmm0
  408a75:	c4 63 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm9
  408a7b:	c5 30 58 c8          	vaddps %xmm0,%xmm9,%xmm9
  408a7f:	c5 78 29 c8          	vmovaps %xmm9,%xmm0
  408a83:	c4 41 30 c6 c9 55    	vshufps $0x55,%xmm9,%xmm9,%xmm9
  408a89:	c4 c1 7a 58 c1       	vaddss %xmm9,%xmm0,%xmm0
  408a8e:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408a92:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408a96:	62 73 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm8,%ymm1
  408a9d:	c4 c1 74 58 c8       	vaddps %ymm8,%ymm1,%ymm1
  408aa2:	c4 c3 7d 19 c8 01    	vextractf128 $0x1,%ymm1,%xmm8
  408aa8:	c5 b8 58 c9          	vaddps %xmm1,%xmm8,%xmm1
  408aac:	c4 63 79 04 c1 4e    	vpermilps $0x4e,%xmm1,%xmm8
  408ab2:	c5 38 58 c1          	vaddps %xmm1,%xmm8,%xmm8
  408ab6:	c5 78 29 c1          	vmovaps %xmm8,%xmm1
  408aba:	c4 41 38 c6 c0 55    	vshufps $0x55,%xmm8,%xmm8,%xmm8
  408ac0:	c4 c1 72 58 c8       	vaddss %xmm8,%xmm1,%xmm1
  408ac5:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408ac9:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408acd:	62 f3 fd 48 1b f8 01 	vextractf64x4 $0x1,%zmm7,%ymm0
  408ad4:	c5 fc 58 c7          	vaddps %ymm7,%ymm0,%ymm0
  408ad8:	c4 e3 7d 19 c7 01    	vextractf128 $0x1,%ymm0,%xmm7
  408ade:	c5 c0 58 c0          	vaddps %xmm0,%xmm7,%xmm0
  408ae2:	c4 e3 79 04 f8 4e    	vpermilps $0x4e,%xmm0,%xmm7
  408ae8:	c5 c0 58 f8          	vaddps %xmm0,%xmm7,%xmm7
  408aec:	c5 f8 28 c7          	vmovaps %xmm7,%xmm0
  408af0:	c5 c0 c6 ff 55       	vshufps $0x55,%xmm7,%xmm7,%xmm7
  408af5:	c5 fa 58 c7          	vaddss %xmm7,%xmm0,%xmm0
  408af9:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408afd:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408b01:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  408b08:	c5 f4 58 ce          	vaddps %ymm6,%ymm1,%ymm1
  408b0c:	c4 e3 7d 19 ce 01    	vextractf128 $0x1,%ymm1,%xmm6
  408b12:	c5 c8 58 c9          	vaddps %xmm1,%xmm6,%xmm1
  408b16:	c4 e3 79 04 f1 4e    	vpermilps $0x4e,%xmm1,%xmm6
  408b1c:	c5 c8 58 f1          	vaddps %xmm1,%xmm6,%xmm6
  408b20:	c5 f8 28 ce          	vmovaps %xmm6,%xmm1
  408b24:	c5 c8 c6 f6 55       	vshufps $0x55,%xmm6,%xmm6,%xmm6
  408b29:	c5 f2 58 ce          	vaddss %xmm6,%xmm1,%xmm1
  408b2d:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408b31:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408b35:	62 f3 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm5,%ymm0
  408b3c:	c5 fc 58 c5          	vaddps %ymm5,%ymm0,%ymm0
  408b40:	c4 e3 7d 19 c5 01    	vextractf128 $0x1,%ymm0,%xmm5
  408b46:	c5 d0 58 c0          	vaddps %xmm0,%xmm5,%xmm0
  408b4a:	c4 e3 79 04 e8 4e    	vpermilps $0x4e,%xmm0,%xmm5
  408b50:	c5 d0 58 e8          	vaddps %xmm0,%xmm5,%xmm5
  408b54:	c5 f8 28 c5          	vmovaps %xmm5,%xmm0
  408b58:	c5 d0 c6 ed 55       	vshufps $0x55,%xmm5,%xmm5,%xmm5
  408b5d:	c5 fa 58 c5          	vaddss %xmm5,%xmm0,%xmm0
  408b61:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408b65:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408b69:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  408b70:	c5 f4 58 cc          	vaddps %ymm4,%ymm1,%ymm1
  408b74:	c4 e3 7d 19 cc 01    	vextractf128 $0x1,%ymm1,%xmm4
  408b7a:	c5 d8 58 c9          	vaddps %xmm1,%xmm4,%xmm1
  408b7e:	c4 e3 79 04 e1 4e    	vpermilps $0x4e,%xmm1,%xmm4
  408b84:	c5 d8 58 e1          	vaddps %xmm1,%xmm4,%xmm4
  408b88:	c5 f8 28 cc          	vmovaps %xmm4,%xmm1
  408b8c:	c5 d8 c6 e4 55       	vshufps $0x55,%xmm4,%xmm4,%xmm4
  408b91:	c5 f2 58 cc          	vaddss %xmm4,%xmm1,%xmm1
  408b95:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408b99:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408b9d:	62 f3 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm3,%ymm0
  408ba4:	c5 fc 58 c3          	vaddps %ymm3,%ymm0,%ymm0
  408ba8:	c4 e3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm3
  408bae:	c5 e0 58 c0          	vaddps %xmm0,%xmm3,%xmm0
  408bb2:	c4 e3 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm3
  408bb8:	c5 e0 58 d8          	vaddps %xmm0,%xmm3,%xmm3
  408bbc:	c5 f8 28 c3          	vmovaps %xmm3,%xmm0
  408bc0:	c5 e0 c6 db 55       	vshufps $0x55,%xmm3,%xmm3,%xmm3
  408bc5:	c5 fa 58 c3          	vaddss %xmm3,%xmm0,%xmm0
  408bc9:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408bcd:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408bd1:	62 f3 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm2,%ymm1
  408bd8:	c5 f4 58 ca          	vaddps %ymm2,%ymm1,%ymm1
  408bdc:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  408be2:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  408be6:	c4 e3 79 04 ca 4e    	vpermilps $0x4e,%xmm2,%xmm1
  408bec:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
  408bf0:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
  408bf4:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  408bf9:	c5 ea 58 c9          	vaddss %xmm1,%xmm2,%xmm1
  408bfd:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408c01:	c5 f3 58 f8          	vaddsd %xmm0,%xmm1,%xmm7
  408c05:	c4 e1 f9 7e fb       	vmovq  %xmm7,%rbx
  408c0a:	c5 f8 77             	vzeroupper 
  408c0d:	e9 3d db ff ff       	jmpq   40674f <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x5f>
  408c12:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
  408c19:	8b 00                	mov    (%rax),%eax
  408c1b:	83 f8 06             	cmp    $0x6,%eax
  408c1e:	0f 84 a1 01 00 00    	je     408dc5 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x26d5>
  408c24:	83 f8 18             	cmp    $0x18,%eax
  408c27:	0f 85 38 02 00 00    	jne    408e65 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x2775>
  408c2d:	31 f6                	xor    %esi,%esi
  408c2f:	ba 00 06 00 00       	mov    $0x600,%edx
  408c34:	48 8d bc 24 80 09 00 	lea    0x980(%rsp),%rdi
  408c3b:	00 
  408c3c:	e8 3f a5 ff ff       	callq  403180 <memset@plt>
  408c41:	62 f2 7d 48 79 0d e7 	vpbroadcastw 0x6ae7(%rip),%zmm1        # 40f732 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  408c48:	6a 00 00 
  408c4b:	31 f6                	xor    %esi,%esi
  408c4d:	48 8d 8c 24 80 0f 00 	lea    0xf80(%rsp),%rcx
  408c54:	00 
  408c55:	48 8d 94 24 80 09 00 	lea    0x980(%rsp),%rdx
  408c5c:	00 
  408c5d:	48 89 d0             	mov    %rdx,%rax
  408c60:	62 f1 7c 48 28 00    	vmovaps (%rax),%zmm0
  408c66:	48 83 c0 40          	add    $0x40,%rax
  408c6a:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  408c70:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  408c76:	62 f1 7c 48 29 40 ff 	vmovaps %zmm0,-0x40(%rax)
  408c7d:	48 39 c1             	cmp    %rax,%rcx
  408c80:	75 de                	jne    408c60 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x2570>
  408c82:	83 c6 02             	add    $0x2,%esi
  408c85:	81 fe be c6 2d 00    	cmp    $0x2dc6be,%esi
  408c8b:	75 c8                	jne    408c55 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x2565>
  408c8d:	48 8d b4 24 80 09 00 	lea    0x980(%rsp),%rsi
  408c94:	00 
  408c95:	62 f1 7c 48 28 06    	vmovaps (%rsi),%zmm0
  408c9b:	b8 02 00 00 00       	mov    $0x2,%eax
  408ca0:	eb 0b                	jmp    408cad <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x25bd>
  408ca2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408ca8:	b8 01 00 00 00       	mov    $0x1,%eax
  408cad:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  408cb3:	83 f8 01             	cmp    $0x1,%eax
  408cb6:	75 f0                	jne    408ca8 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x25b8>
  408cb8:	62 f1 7c 48 29 06    	vmovaps %zmm0,(%rsi)
  408cbe:	48 83 c6 40          	add    $0x40,%rsi
  408cc2:	48 39 f1             	cmp    %rsi,%rcx
  408cc5:	75 ce                	jne    408c95 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x25a5>
  408cc7:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  408ccb:	c5 db 10 c4          	vmovsd %xmm4,%xmm4,%xmm0
  408ccf:	c5 fc 28 12          	vmovaps (%rdx),%ymm2
  408cd3:	62 f1 7c 48 28 32    	vmovaps (%rdx),%zmm6
  408cd9:	c5 ea 5a ca          	vcvtss2sd %xmm2,%xmm2,%xmm1
  408cdd:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  408ce1:	c5 e8 c6 ca 55       	vshufps $0x55,%xmm2,%xmm2,%xmm1
  408ce6:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408cea:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408cee:	c5 e8 15 c2          	vunpckhps %xmm2,%xmm2,%xmm0
  408cf2:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408cf6:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408cfa:	c5 e8 c6 ca ff       	vshufps $0xff,%xmm2,%xmm2,%xmm1
  408cff:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408d03:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408d07:	c4 e3 7d 19 d0 01    	vextractf128 $0x1,%ymm2,%xmm0
  408d0d:	c5 fa 5a d0          	vcvtss2sd %xmm0,%xmm0,%xmm2
  408d11:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
  408d15:	c5 f8 c6 d0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm2
  408d1a:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  408d1e:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  408d22:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  408d26:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408d2a:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  408d2e:	c5 f8 c6 c0 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm0
  408d33:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408d37:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408d3b:	62 f3 7d 48 1b f1 01 	vextractf32x8 $0x1,%zmm6,%ymm1
  408d42:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  408d46:	c5 e3 58 d8          	vaddsd %xmm0,%xmm3,%xmm3
  408d4a:	c5 f0 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm0
  408d4f:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408d53:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0
  408d57:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  408d5b:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  408d5f:	c5 e3 58 d8          	vaddsd %xmm0,%xmm3,%xmm3
  408d63:	c5 f0 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm0
  408d68:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408d6c:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0
  408d70:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  408d76:	c5 f2 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm2
  408d7a:	c5 eb 58 c0          	vaddsd %xmm0,%xmm2,%xmm0
  408d7e:	c5 f0 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm2
  408d83:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  408d87:	c5 eb 58 d0          	vaddsd %xmm0,%xmm2,%xmm2
  408d8b:	c5 f0 15 c1          	vunpckhps %xmm1,%xmm1,%xmm0
  408d8f:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408d93:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
  408d97:	48 83 c2 40          	add    $0x40,%rdx
  408d9b:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  408da0:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408da4:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  408da8:	48 39 d1             	cmp    %rdx,%rcx
  408dab:	0f 85 1e ff ff ff    	jne    408ccf <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x25df>
  408db1:	c5 fb 58 fc          	vaddsd %xmm4,%xmm0,%xmm7
  408db5:	45 31 ed             	xor    %r13d,%r13d
  408db8:	c4 e1 f9 7e fb       	vmovq  %xmm7,%rbx
  408dbd:	c5 f8 77             	vzeroupper 
  408dc0:	e9 8a d9 ff ff       	jmpq   40674f <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x5f>
  408dc5:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  408dc9:	62 f2 7d 48 79 0d 5f 	vpbroadcastw 0x695f(%rip),%zmm1        # 40f732 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  408dd0:	69 00 00 
  408dd3:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  408dd8:	62 f1 7c 48 28 d0    	vmovaps %zmm0,%zmm2
  408dde:	62 f1 7c 48 28 d8    	vmovaps %zmm0,%zmm3
  408de4:	62 f1 7c 48 28 e0    	vmovaps %zmm0,%zmm4
  408dea:	62 f1 7c 48 28 e8    	vmovaps %zmm0,%zmm5
  408df0:	62 f1 7c 48 28 f8    	vmovaps %zmm0,%zmm7
  408df6:	62 f2 76 48 52 f9    	vdpbf16ps %zmm1,%zmm1,%zmm7
  408dfc:	62 f2 76 48 52 e9    	vdpbf16ps %zmm1,%zmm1,%zmm5
  408e02:	62 f2 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm4
  408e08:	62 f2 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm3
  408e0e:	62 f2 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm2
  408e14:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  408e1a:	ff c8                	dec    %eax
  408e1c:	75 d8                	jne    408df6 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x2706>
  408e1e:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  408e22:	c5 42 5a cf          	vcvtss2sd %xmm7,%xmm7,%xmm9
  408e26:	c5 33 58 ce          	vaddsd %xmm6,%xmm9,%xmm9
  408e2a:	c5 40 c6 d7 55       	vshufps $0x55,%xmm7,%xmm7,%xmm10
  408e2f:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  408e34:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  408e39:	c5 40 15 cf          	vunpckhps %xmm7,%xmm7,%xmm9
  408e3d:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  408e42:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  408e47:	c4 e3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm1
  408e4d:	c5 40 c6 c7 ff       	vshufps $0xff,%xmm7,%xmm7,%xmm8
  408e52:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  408e57:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  408e5c:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  408e60:	e9 4b 06 00 00       	jmpq   4094b0 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x2dc0>
  408e65:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  408e69:	62 f2 7d 48 79 0d bf 	vpbroadcastw 0x68bf(%rip),%zmm1        # 40f732 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  408e70:	68 00 00 
  408e73:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  408e78:	62 f1 7c 48 28 d0    	vmovaps %zmm0,%zmm2
  408e7e:	62 f1 7c 48 28 d8    	vmovaps %zmm0,%zmm3
  408e84:	62 f1 7c 48 28 e0    	vmovaps %zmm0,%zmm4
  408e8a:	62 f1 7c 48 28 e8    	vmovaps %zmm0,%zmm5
  408e90:	62 f1 7c 48 28 f8    	vmovaps %zmm0,%zmm7
  408e96:	62 71 7c 48 28 c0    	vmovaps %zmm0,%zmm8
  408e9c:	62 71 7c 48 28 c8    	vmovaps %zmm0,%zmm9
  408ea2:	62 71 7c 48 28 d0    	vmovaps %zmm0,%zmm10
  408ea8:	62 71 7c 48 28 d8    	vmovaps %zmm0,%zmm11
  408eae:	62 71 7c 48 28 e0    	vmovaps %zmm0,%zmm12
  408eb4:	62 71 7c 48 28 e8    	vmovaps %zmm0,%zmm13
  408eba:	62 72 76 48 52 e9    	vdpbf16ps %zmm1,%zmm1,%zmm13
  408ec0:	62 72 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm12
  408ec6:	62 72 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm11
  408ecc:	62 72 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm10
  408ed2:	62 72 76 48 52 c9    	vdpbf16ps %zmm1,%zmm1,%zmm9
  408ed8:	62 72 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm8
  408ede:	62 f2 76 48 52 f9    	vdpbf16ps %zmm1,%zmm1,%zmm7
  408ee4:	62 f2 76 48 52 e9    	vdpbf16ps %zmm1,%zmm1,%zmm5
  408eea:	62 f2 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm4
  408ef0:	62 f2 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm3
  408ef6:	62 f2 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm2
  408efc:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  408f02:	ff c8                	dec    %eax
  408f04:	75 b4                	jne    408eba <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x27ca>
  408f06:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  408f0a:	c4 41 12 5a fd       	vcvtss2sd %xmm13,%xmm13,%xmm15
  408f0f:	c5 03 58 fe          	vaddsd %xmm6,%xmm15,%xmm15
  408f13:	62 c1 14 08 c6 c5 55 	vshufps $0x55,%xmm13,%xmm13,%xmm16
  408f1a:	62 a1 7e 00 5a c0    	vcvtss2sd %xmm16,%xmm16,%xmm16
  408f20:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  408f26:	c4 41 10 15 fd       	vunpckhps %xmm13,%xmm13,%xmm15
  408f2b:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  408f30:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  408f36:	c4 41 10 c6 f5 ff    	vshufps $0xff,%xmm13,%xmm13,%xmm14
  408f3c:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  408f41:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  408f46:	c4 63 7d 19 e9 01    	vextractf128 $0x1,%ymm13,%xmm1
  408f4c:	c5 72 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm15
  408f50:	c4 41 03 58 fe       	vaddsd %xmm14,%xmm15,%xmm15
  408f55:	c5 70 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm14
  408f5a:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  408f5f:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  408f64:	c5 70 15 f9          	vunpckhps %xmm1,%xmm1,%xmm15
  408f68:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  408f6d:	c4 41 03 58 fe       	vaddsd %xmm14,%xmm15,%xmm15
  408f72:	c5 70 c6 f1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm14
  408f77:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  408f7c:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  408f81:	62 73 7d 48 1b e9 01 	vextractf32x8 $0x1,%zmm13,%ymm1
  408f88:	c5 72 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm15
  408f8c:	c4 41 03 58 f6       	vaddsd %xmm14,%xmm15,%xmm14
  408f91:	c5 70 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm15
  408f96:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  408f9b:	c4 41 03 58 fe       	vaddsd %xmm14,%xmm15,%xmm15
  408fa0:	c5 70 15 f1          	vunpckhps %xmm1,%xmm1,%xmm14
  408fa4:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  408fa9:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  408fae:	c5 70 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm13
  408fb3:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  408fb8:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  408fbd:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  408fc3:	c5 72 5a f1          	vcvtss2sd %xmm1,%xmm1,%xmm14
  408fc7:	c4 41 0b 58 ed       	vaddsd %xmm13,%xmm14,%xmm13
  408fcc:	c5 70 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm14
  408fd1:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  408fd6:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  408fdb:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  408fdf:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  408fe4:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  408fe9:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  408fee:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408ff2:	c4 c1 73 58 cd       	vaddsd %xmm13,%xmm1,%xmm1
  408ff7:	c4 41 1a 5a fc       	vcvtss2sd %xmm12,%xmm12,%xmm15
  408ffc:	c4 41 18 c6 f4 ff    	vshufps $0xff,%xmm12,%xmm12,%xmm14
  409002:	c5 83 58 c9          	vaddsd %xmm1,%xmm15,%xmm1
  409006:	c4 41 18 c6 fc 55    	vshufps $0x55,%xmm12,%xmm12,%xmm15
  40900c:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  409011:	c5 03 58 f9          	vaddsd %xmm1,%xmm15,%xmm15
  409015:	c4 c1 18 15 cc       	vunpckhps %xmm12,%xmm12,%xmm1
  40901a:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40901e:	c4 c1 73 58 cf       	vaddsd %xmm15,%xmm1,%xmm1
  409023:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409028:	c5 0b 58 f1          	vaddsd %xmm1,%xmm14,%xmm14
  40902c:	c4 63 7d 19 e1 01    	vextractf128 $0x1,%ymm12,%xmm1
  409032:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  409036:	c4 41 13 58 f6       	vaddsd %xmm14,%xmm13,%xmm14
  40903b:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  409040:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409045:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  40904a:	c5 70 15 f1          	vunpckhps %xmm1,%xmm1,%xmm14
  40904e:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409053:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  409058:	c5 70 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm13
  40905d:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409062:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  409067:	62 73 7d 48 1b e1 01 	vextractf32x8 $0x1,%zmm12,%ymm1
  40906e:	c5 72 5a f1          	vcvtss2sd %xmm1,%xmm1,%xmm14
  409072:	c4 41 0b 58 ed       	vaddsd %xmm13,%xmm14,%xmm13
  409077:	c5 70 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm14
  40907c:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409081:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  409086:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  40908a:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  40908f:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  409094:	c5 70 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm12
  409099:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  40909e:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  4090a3:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4090a9:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  4090ad:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  4090b2:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  4090b7:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  4090bc:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  4090c1:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  4090c5:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  4090ca:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  4090cf:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  4090d4:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4090d8:	c4 c1 73 58 cc       	vaddsd %xmm12,%xmm1,%xmm1
  4090dd:	c4 41 22 5a f3       	vcvtss2sd %xmm11,%xmm11,%xmm14
  4090e2:	c4 41 20 c6 eb ff    	vshufps $0xff,%xmm11,%xmm11,%xmm13
  4090e8:	c5 8b 58 c9          	vaddsd %xmm1,%xmm14,%xmm1
  4090ec:	c4 41 20 c6 f3 55    	vshufps $0x55,%xmm11,%xmm11,%xmm14
  4090f2:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  4090f7:	c5 0b 58 f1          	vaddsd %xmm1,%xmm14,%xmm14
  4090fb:	c4 c1 20 15 cb       	vunpckhps %xmm11,%xmm11,%xmm1
  409100:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409104:	c4 c1 73 58 ce       	vaddsd %xmm14,%xmm1,%xmm1
  409109:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  40910e:	c5 13 58 e9          	vaddsd %xmm1,%xmm13,%xmm13
  409112:	c4 63 7d 19 d9 01    	vextractf128 $0x1,%ymm11,%xmm1
  409118:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  40911c:	c4 41 1b 58 ed       	vaddsd %xmm13,%xmm12,%xmm13
  409121:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  409126:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  40912b:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  409130:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  409134:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409139:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  40913e:	c5 70 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm12
  409143:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409148:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  40914d:	62 73 7d 48 1b d9 01 	vextractf32x8 $0x1,%zmm11,%ymm1
  409154:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  409158:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  40915d:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  409162:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409167:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  40916c:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  409170:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409175:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  40917a:	c5 70 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm11
  40917f:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409184:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409189:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  40918f:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  409193:	c4 41 1b 58 db       	vaddsd %xmm11,%xmm12,%xmm11
  409198:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  40919d:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  4091a2:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  4091a7:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  4091ab:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  4091b0:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  4091b5:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  4091ba:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4091be:	c4 c1 73 58 cb       	vaddsd %xmm11,%xmm1,%xmm1
  4091c3:	c4 41 2a 5a ea       	vcvtss2sd %xmm10,%xmm10,%xmm13
  4091c8:	c4 41 28 c6 e2 ff    	vshufps $0xff,%xmm10,%xmm10,%xmm12
  4091ce:	c5 93 58 c9          	vaddsd %xmm1,%xmm13,%xmm1
  4091d2:	c4 41 28 c6 ea 55    	vshufps $0x55,%xmm10,%xmm10,%xmm13
  4091d8:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  4091dd:	c5 13 58 e9          	vaddsd %xmm1,%xmm13,%xmm13
  4091e1:	c4 c1 28 15 ca       	vunpckhps %xmm10,%xmm10,%xmm1
  4091e6:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4091ea:	c4 c1 73 58 cd       	vaddsd %xmm13,%xmm1,%xmm1
  4091ef:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  4091f4:	c5 1b 58 e1          	vaddsd %xmm1,%xmm12,%xmm12
  4091f8:	c4 63 7d 19 d1 01    	vextractf128 $0x1,%ymm10,%xmm1
  4091fe:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  409202:	c4 41 23 58 e4       	vaddsd %xmm12,%xmm11,%xmm12
  409207:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  40920c:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409211:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409216:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  40921a:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  40921f:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  409224:	c5 70 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm11
  409229:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  40922e:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409233:	62 73 7d 48 1b d1 01 	vextractf32x8 $0x1,%zmm10,%ymm1
  40923a:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  40923e:	c4 41 1b 58 db       	vaddsd %xmm11,%xmm12,%xmm11
  409243:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  409248:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  40924d:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  409252:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  409256:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  40925b:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409260:	c5 70 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm10
  409265:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  40926a:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  40926f:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409275:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  409279:	c4 41 23 58 d2       	vaddsd %xmm10,%xmm11,%xmm10
  40927e:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  409283:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409288:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  40928d:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  409291:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409296:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  40929b:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  4092a0:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4092a4:	c4 c1 73 58 ca       	vaddsd %xmm10,%xmm1,%xmm1
  4092a9:	c4 41 32 5a e1       	vcvtss2sd %xmm9,%xmm9,%xmm12
  4092ae:	c4 41 30 c6 d9 ff    	vshufps $0xff,%xmm9,%xmm9,%xmm11
  4092b4:	c5 9b 58 c9          	vaddsd %xmm1,%xmm12,%xmm1
  4092b8:	c4 41 30 c6 e1 55    	vshufps $0x55,%xmm9,%xmm9,%xmm12
  4092be:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  4092c3:	c5 1b 58 e1          	vaddsd %xmm1,%xmm12,%xmm12
  4092c7:	c4 c1 30 15 c9       	vunpckhps %xmm9,%xmm9,%xmm1
  4092cc:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4092d0:	c4 c1 73 58 cc       	vaddsd %xmm12,%xmm1,%xmm1
  4092d5:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  4092da:	c5 23 58 d9          	vaddsd %xmm1,%xmm11,%xmm11
  4092de:	c4 63 7d 19 c9 01    	vextractf128 $0x1,%ymm9,%xmm1
  4092e4:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  4092e8:	c4 41 2b 58 db       	vaddsd %xmm11,%xmm10,%xmm11
  4092ed:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  4092f2:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  4092f7:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  4092fc:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  409300:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409305:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  40930a:	c5 70 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm10
  40930f:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409314:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409319:	62 73 7d 48 1b c9 01 	vextractf32x8 $0x1,%zmm9,%ymm1
  409320:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  409324:	c4 41 23 58 d2       	vaddsd %xmm10,%xmm11,%xmm10
  409329:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  40932e:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409333:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  409338:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  40933c:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409341:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409346:	c5 70 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm9
  40934b:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409350:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409355:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  40935b:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  40935f:	c4 41 2b 58 c9       	vaddsd %xmm9,%xmm10,%xmm9
  409364:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  409369:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  40936e:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  409373:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  409377:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  40937c:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409381:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409386:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40938a:	c4 c1 73 58 c9       	vaddsd %xmm9,%xmm1,%xmm1
  40938f:	c4 41 3a 5a d8       	vcvtss2sd %xmm8,%xmm8,%xmm11
  409394:	c4 41 38 c6 d0 ff    	vshufps $0xff,%xmm8,%xmm8,%xmm10
  40939a:	c5 a3 58 c9          	vaddsd %xmm1,%xmm11,%xmm1
  40939e:	c4 41 38 c6 d8 55    	vshufps $0x55,%xmm8,%xmm8,%xmm11
  4093a4:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  4093a9:	c5 23 58 d9          	vaddsd %xmm1,%xmm11,%xmm11
  4093ad:	c4 c1 38 15 c8       	vunpckhps %xmm8,%xmm8,%xmm1
  4093b2:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4093b6:	c4 c1 73 58 cb       	vaddsd %xmm11,%xmm1,%xmm1
  4093bb:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  4093c0:	c5 2b 58 d1          	vaddsd %xmm1,%xmm10,%xmm10
  4093c4:	c4 63 7d 19 c1 01    	vextractf128 $0x1,%ymm8,%xmm1
  4093ca:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  4093ce:	c4 41 33 58 d2       	vaddsd %xmm10,%xmm9,%xmm10
  4093d3:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  4093d8:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  4093dd:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  4093e2:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  4093e6:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  4093eb:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  4093f0:	c5 70 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm9
  4093f5:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  4093fa:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  4093ff:	62 73 7d 48 1b c1 01 	vextractf32x8 $0x1,%zmm8,%ymm1
  409406:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  40940a:	c4 41 2b 58 c9       	vaddsd %xmm9,%xmm10,%xmm9
  40940f:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  409414:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409419:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  40941e:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  409422:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409427:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  40942c:	c5 70 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm8
  409431:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409436:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  40943b:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409441:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  409445:	c4 41 33 58 c0       	vaddsd %xmm8,%xmm9,%xmm8
  40944a:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  40944f:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409454:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409459:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  40945d:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409462:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409467:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40946c:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409470:	c4 c1 73 58 c8       	vaddsd %xmm8,%xmm1,%xmm1
  409475:	c5 42 5a d7          	vcvtss2sd %xmm7,%xmm7,%xmm10
  409479:	c5 40 c6 cf ff       	vshufps $0xff,%xmm7,%xmm7,%xmm9
  40947e:	c5 ab 58 c9          	vaddsd %xmm1,%xmm10,%xmm1
  409482:	c5 40 c6 d7 55       	vshufps $0x55,%xmm7,%xmm7,%xmm10
  409487:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  40948c:	c5 2b 58 d1          	vaddsd %xmm1,%xmm10,%xmm10
  409490:	c5 c0 15 cf          	vunpckhps %xmm7,%xmm7,%xmm1
  409494:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409498:	c4 c1 73 58 ca       	vaddsd %xmm10,%xmm1,%xmm1
  40949d:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  4094a2:	c5 33 58 c9          	vaddsd %xmm1,%xmm9,%xmm9
  4094a6:	c4 e3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm1
  4094ac:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  4094b0:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  4094b5:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  4094ba:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  4094bf:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  4094c4:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  4094c8:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  4094cd:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  4094d2:	c5 70 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm8
  4094d7:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  4094dc:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  4094e1:	62 f3 7d 48 1b f9 01 	vextractf32x8 $0x1,%zmm7,%ymm1
  4094e8:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  4094ec:	c4 41 33 58 c0       	vaddsd %xmm8,%xmm9,%xmm8
  4094f1:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  4094f6:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  4094fb:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409500:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  409504:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409509:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  40950e:	c5 f0 c6 f9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm7
  409513:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409517:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  40951c:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409522:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  409526:	c5 bb 58 ff          	vaddsd %xmm7,%xmm8,%xmm7
  40952a:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  40952f:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409534:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  409538:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  40953c:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409540:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409545:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40954a:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40954e:	c5 f3 58 cf          	vaddsd %xmm7,%xmm1,%xmm1
  409552:	c5 52 5a cd          	vcvtss2sd %xmm5,%xmm5,%xmm9
  409556:	c5 50 c6 c5 ff       	vshufps $0xff,%xmm5,%xmm5,%xmm8
  40955b:	c5 b3 58 c9          	vaddsd %xmm1,%xmm9,%xmm1
  40955f:	c5 50 c6 cd 55       	vshufps $0x55,%xmm5,%xmm5,%xmm9
  409564:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409569:	c5 33 58 c9          	vaddsd %xmm1,%xmm9,%xmm9
  40956d:	c5 d0 15 cd          	vunpckhps %xmm5,%xmm5,%xmm1
  409571:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409575:	c4 c1 73 58 c9       	vaddsd %xmm9,%xmm1,%xmm1
  40957a:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  40957f:	45 31 ed             	xor    %r13d,%r13d
  409582:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  409586:	c4 e3 7d 19 e9 01    	vextractf128 $0x1,%ymm5,%xmm1
  40958c:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  409590:	c4 41 43 58 c0       	vaddsd %xmm8,%xmm7,%xmm8
  409595:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  40959a:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40959e:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  4095a3:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  4095a7:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  4095ac:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  4095b0:	c5 f0 c6 f9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm7
  4095b5:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  4095b9:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  4095be:	62 f3 7d 48 1b e9 01 	vextractf32x8 $0x1,%zmm5,%ymm1
  4095c5:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  4095c9:	c5 bb 58 ff          	vaddsd %xmm7,%xmm8,%xmm7
  4095cd:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  4095d2:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  4095d7:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  4095db:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  4095df:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  4095e3:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  4095e8:	c5 f0 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm5
  4095ed:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  4095f1:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  4095f5:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4095fb:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  4095ff:	c5 c3 58 ed          	vaddsd %xmm5,%xmm7,%xmm5
  409603:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  409608:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40960c:	c5 c3 58 fd          	vaddsd %xmm5,%xmm7,%xmm7
  409610:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  409614:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409618:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  40961c:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409621:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409625:	c5 f3 58 cd          	vaddsd %xmm5,%xmm1,%xmm1
  409629:	c5 5a 5a c4          	vcvtss2sd %xmm4,%xmm4,%xmm8
  40962d:	c5 d8 c6 fc ff       	vshufps $0xff,%xmm4,%xmm4,%xmm7
  409632:	c5 bb 58 c9          	vaddsd %xmm1,%xmm8,%xmm1
  409636:	c5 58 c6 c4 55       	vshufps $0x55,%xmm4,%xmm4,%xmm8
  40963b:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409640:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  409644:	c5 d8 15 cc          	vunpckhps %xmm4,%xmm4,%xmm1
  409648:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40964c:	c4 c1 73 58 c8       	vaddsd %xmm8,%xmm1,%xmm1
  409651:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409655:	c5 c3 58 f9          	vaddsd %xmm1,%xmm7,%xmm7
  409659:	c4 e3 7d 19 e1 01    	vextractf128 $0x1,%ymm4,%xmm1
  40965f:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  409663:	c5 d3 58 ff          	vaddsd %xmm7,%xmm5,%xmm7
  409667:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  40966c:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409670:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  409674:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  409678:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40967c:	c5 c3 58 fd          	vaddsd %xmm5,%xmm7,%xmm7
  409680:	c5 f0 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm5
  409685:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409689:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  40968d:	62 f3 7d 48 1b e1 01 	vextractf32x8 $0x1,%zmm4,%ymm1
  409694:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  409698:	c5 c3 58 ed          	vaddsd %xmm5,%xmm7,%xmm5
  40969c:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  4096a1:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  4096a5:	c5 c3 58 fd          	vaddsd %xmm5,%xmm7,%xmm7
  4096a9:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  4096ad:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  4096b1:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  4096b5:	c5 f0 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm4
  4096ba:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  4096be:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  4096c2:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4096c8:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  4096cc:	c5 d3 58 e4          	vaddsd %xmm4,%xmm5,%xmm4
  4096d0:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  4096d5:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  4096d9:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  4096dd:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  4096e1:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  4096e5:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  4096e9:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  4096ee:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4096f2:	c5 f3 58 cc          	vaddsd %xmm4,%xmm1,%xmm1
  4096f6:	c5 e2 5a fb          	vcvtss2sd %xmm3,%xmm3,%xmm7
  4096fa:	c5 e0 c6 eb ff       	vshufps $0xff,%xmm3,%xmm3,%xmm5
  4096ff:	c5 c3 58 c9          	vaddsd %xmm1,%xmm7,%xmm1
  409703:	c5 e0 c6 fb 55       	vshufps $0x55,%xmm3,%xmm3,%xmm7
  409708:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40970c:	c5 c3 58 f9          	vaddsd %xmm1,%xmm7,%xmm7
  409710:	c5 e0 15 cb          	vunpckhps %xmm3,%xmm3,%xmm1
  409714:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409718:	c5 f3 58 cf          	vaddsd %xmm7,%xmm1,%xmm1
  40971c:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409720:	c5 d3 58 e9          	vaddsd %xmm1,%xmm5,%xmm5
  409724:	c4 e3 7d 19 d9 01    	vextractf128 $0x1,%ymm3,%xmm1
  40972a:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  40972e:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  409732:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  409737:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40973b:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40973f:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  409743:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409747:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  40974b:	c5 f0 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm4
  409750:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409754:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  409758:	62 f3 7d 48 1b d9 01 	vextractf32x8 $0x1,%zmm3,%ymm1
  40975f:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  409763:	c5 d3 58 e4          	vaddsd %xmm4,%xmm5,%xmm4
  409767:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  40976c:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409770:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  409774:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  409778:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40977c:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  409780:	c5 f0 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm3
  409785:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409789:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40978d:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409793:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  409797:	c5 db 58 db          	vaddsd %xmm3,%xmm4,%xmm3
  40979b:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  4097a0:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  4097a4:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  4097a8:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  4097ac:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  4097b0:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  4097b4:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  4097b9:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4097bd:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  4097c1:	c5 ea 5a ea          	vcvtss2sd %xmm2,%xmm2,%xmm5
  4097c5:	c5 e8 c6 e2 ff       	vshufps $0xff,%xmm2,%xmm2,%xmm4
  4097ca:	c5 d3 58 c9          	vaddsd %xmm1,%xmm5,%xmm1
  4097ce:	c5 e8 c6 ea 55       	vshufps $0x55,%xmm2,%xmm2,%xmm5
  4097d3:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  4097d7:	c5 d3 58 e9          	vaddsd %xmm1,%xmm5,%xmm5
  4097db:	c5 e8 15 ca          	vunpckhps %xmm2,%xmm2,%xmm1
  4097df:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4097e3:	c5 f3 58 cd          	vaddsd %xmm5,%xmm1,%xmm1
  4097e7:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  4097eb:	c5 db 58 e1          	vaddsd %xmm1,%xmm4,%xmm4
  4097ef:	c4 e3 7d 19 d1 01    	vextractf128 $0x1,%ymm2,%xmm1
  4097f5:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  4097f9:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  4097fd:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  409802:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409806:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40980a:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  40980e:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409812:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  409816:	c5 f0 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm3
  40981b:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40981f:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  409823:	62 f3 7d 48 1b d1 01 	vextractf32x8 $0x1,%zmm2,%ymm1
  40982a:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  40982e:	c5 db 58 db          	vaddsd %xmm3,%xmm4,%xmm3
  409832:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  409837:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40983b:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  40983f:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  409843:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409847:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40984b:	c5 f0 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm2
  409850:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  409854:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  409858:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  40985e:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  409862:	c5 e3 58 d2          	vaddsd %xmm2,%xmm3,%xmm2
  409866:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  40986b:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40986f:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  409873:	c5 f0 15 d1          	vunpckhps %xmm1,%xmm1,%xmm2
  409877:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  40987b:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40987f:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409884:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409888:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40988c:	c5 fa 5a e0          	vcvtss2sd %xmm0,%xmm0,%xmm4
  409890:	c5 f8 c6 d8 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm3
  409895:	c5 db 58 c9          	vaddsd %xmm1,%xmm4,%xmm1
  409899:	c5 f8 c6 e0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm4
  40989e:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  4098a2:	c5 db 58 e1          	vaddsd %xmm1,%xmm4,%xmm4
  4098a6:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  4098aa:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4098ae:	c5 f3 58 cc          	vaddsd %xmm4,%xmm1,%xmm1
  4098b2:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  4098b6:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  4098ba:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  4098c0:	c5 f2 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm2
  4098c4:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  4098c8:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  4098cd:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  4098d1:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  4098d5:	c5 f0 15 d1          	vunpckhps %xmm1,%xmm1,%xmm2
  4098d9:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  4098dd:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  4098e1:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  4098e6:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4098ea:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  4098ee:	62 f3 7d 48 1b c0 01 	vextractf32x8 $0x1,%zmm0,%ymm0
  4098f5:	c5 fa 5a d8          	vcvtss2sd %xmm0,%xmm0,%xmm3
  4098f9:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  4098fd:	c5 f8 c6 c8 55       	vshufps $0x55,%xmm0,%xmm0,%xmm1
  409902:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409906:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  40990a:	c5 f8 15 d8          	vunpckhps %xmm0,%xmm0,%xmm3
  40990e:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409912:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  409916:	c5 f8 c6 c8 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm1
  40991b:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40991f:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  409923:	c4 e3 7d 19 c0 01    	vextractf128 $0x1,%ymm0,%xmm0
  409929:	c5 fa 5a d0          	vcvtss2sd %xmm0,%xmm0,%xmm2
  40992d:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
  409931:	c5 f8 c6 d0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm2
  409936:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  40993a:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  40993e:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  409942:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409946:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40994a:	c5 f8 c6 c0 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm0
  40994f:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409953:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  409957:	c5 f3 58 de          	vaddsd %xmm6,%xmm1,%xmm3
  40995b:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  409960:	c5 f8 77             	vzeroupper 
  409963:	e9 e7 cd ff ff       	jmpq   40674f <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x5f>
  409968:	62 f2 fd 48 19 0d 7e 	vbroadcastsd 0x5d7e(%rip),%zmm1        # 40f6f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  40996f:	5d 00 00 
  409972:	62 f2 fd 48 19 05 74 	vbroadcastsd 0x5c74(%rip),%zmm0        # 40f5f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  409979:	5c 00 00 
  40997c:	62 f2 fd 48 19 1d 72 	vbroadcastsd 0x5c72(%rip),%zmm3        # 40f5f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  409983:	5c 00 00 
  409986:	62 f2 fd 48 19 25 70 	vbroadcastsd 0x5c70(%rip),%zmm4        # 40f600 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x100>
  40998d:	5c 00 00 
  409990:	62 f2 fd 48 19 2d 6e 	vbroadcastsd 0x5c6e(%rip),%zmm5        # 40f608 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x108>
  409997:	5c 00 00 
  40999a:	62 f2 fd 48 19 35 6c 	vbroadcastsd 0x5c6c(%rip),%zmm6        # 40f610 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x110>
  4099a1:	5c 00 00 
  4099a4:	62 72 fd 48 19 05 6a 	vbroadcastsd 0x5c6a(%rip),%zmm8        # 40f618 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x118>
  4099ab:	5c 00 00 
  4099ae:	62 72 fd 48 19 0d 68 	vbroadcastsd 0x5c68(%rip),%zmm9        # 40f620 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x120>
  4099b5:	5c 00 00 
  4099b8:	62 72 fd 48 19 15 66 	vbroadcastsd 0x5c66(%rip),%zmm10        # 40f628 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x128>
  4099bf:	5c 00 00 
  4099c2:	62 72 fd 48 19 1d 64 	vbroadcastsd 0x5c64(%rip),%zmm11        # 40f630 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  4099c9:	5c 00 00 
  4099cc:	62 72 fd 48 19 25 0a 	vbroadcastsd 0x5c0a(%rip),%zmm12        # 40f5e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  4099d3:	5c 00 00 
  4099d6:	62 72 fd 48 19 2d f8 	vbroadcastsd 0x5bf8(%rip),%zmm13        # 40f5d8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  4099dd:	5b 00 00 
  4099e0:	62 f2 fd 48 19 15 4e 	vbroadcastsd 0x5c4e(%rip),%zmm2        # 40f638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  4099e7:	5c 00 00 
  4099ea:	62 f1 fd 48 28 f9    	vmovapd %zmm1,%zmm7
  4099f0:	62 f2 ed 48 98 f9    	vfmadd132pd %zmm1,%zmm2,%zmm7
  4099f6:	62 72 ed 48 98 e9    	vfmadd132pd %zmm1,%zmm2,%zmm13
  4099fc:	62 72 ed 48 98 e1    	vfmadd132pd %zmm1,%zmm2,%zmm12
  409a02:	62 72 ed 48 98 d9    	vfmadd132pd %zmm1,%zmm2,%zmm11
  409a08:	62 72 ed 48 98 d1    	vfmadd132pd %zmm1,%zmm2,%zmm10
  409a0e:	62 72 ed 48 98 c9    	vfmadd132pd %zmm1,%zmm2,%zmm9
  409a14:	62 72 ed 48 98 c1    	vfmadd132pd %zmm1,%zmm2,%zmm8
  409a1a:	62 f2 ed 48 98 f1    	vfmadd132pd %zmm1,%zmm2,%zmm6
  409a20:	62 f2 ed 48 98 e9    	vfmadd132pd %zmm1,%zmm2,%zmm5
  409a26:	62 f2 ed 48 98 e1    	vfmadd132pd %zmm1,%zmm2,%zmm4
  409a2c:	62 f2 ed 48 98 d9    	vfmadd132pd %zmm1,%zmm2,%zmm3
  409a32:	62 f2 ed 48 98 c1    	vfmadd132pd %zmm1,%zmm2,%zmm0
  409a38:	ff c8                	dec    %eax
  409a3a:	75 b4                	jne    4099f0 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x3300>
  409a3c:	62 f3 fd 48 1b fa 01 	vextractf64x4 $0x1,%zmm7,%ymm2
  409a43:	c5 ed 58 d7          	vaddpd %ymm7,%ymm2,%ymm2
  409a47:	62 73 fd 48 1b ef 01 	vextractf64x4 $0x1,%zmm13,%ymm7
  409a4e:	c4 c1 45 58 fd       	vaddpd %ymm13,%ymm7,%ymm7
  409a53:	62 f3 fd 28 19 d1 01 	vextractf64x2 $0x1,%ymm2,%xmm1
  409a5a:	c5 f1 58 ca          	vaddpd %xmm2,%xmm1,%xmm1
  409a5e:	45 31 ed             	xor    %r13d,%r13d
  409a61:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409a65:	c5 f3 58 15 73 5c 00 	vaddsd 0x5c73(%rip),%xmm1,%xmm2        # 40f6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  409a6c:	00 
  409a6d:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409a74:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  409a78:	62 73 fd 48 1b e7 01 	vextractf64x4 $0x1,%zmm12,%ymm7
  409a7f:	c4 c1 45 58 fc       	vaddpd %ymm12,%ymm7,%ymm7
  409a84:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409a88:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409a8c:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409a93:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  409a97:	62 73 fd 48 1b df 01 	vextractf64x4 $0x1,%zmm11,%ymm7
  409a9e:	c4 c1 45 58 fb       	vaddpd %ymm11,%ymm7,%ymm7
  409aa3:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409aa7:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409aab:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409ab2:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  409ab6:	62 73 fd 48 1b d7 01 	vextractf64x4 $0x1,%zmm10,%ymm7
  409abd:	c4 c1 45 58 fa       	vaddpd %ymm10,%ymm7,%ymm7
  409ac2:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409ac6:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409aca:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409ad1:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  409ad5:	62 73 fd 48 1b cf 01 	vextractf64x4 $0x1,%zmm9,%ymm7
  409adc:	c4 c1 45 58 f9       	vaddpd %ymm9,%ymm7,%ymm7
  409ae1:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409ae5:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409ae9:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409af0:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  409af4:	62 73 fd 48 1b c7 01 	vextractf64x4 $0x1,%zmm8,%ymm7
  409afb:	c4 c1 45 58 f8       	vaddpd %ymm8,%ymm7,%ymm7
  409b00:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409b04:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409b08:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409b0f:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  409b13:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409b17:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409b1b:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  409b22:	c5 f5 58 f6          	vaddpd %ymm6,%ymm1,%ymm6
  409b26:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  409b2d:	c5 f1 58 ce          	vaddpd %xmm6,%xmm1,%xmm1
  409b31:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409b35:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409b39:	62 f3 fd 48 1b e9 01 	vextractf64x4 $0x1,%zmm5,%ymm1
  409b40:	c5 f5 58 ed          	vaddpd %ymm5,%ymm1,%ymm5
  409b44:	62 f3 fd 28 19 e9 01 	vextractf64x2 $0x1,%ymm5,%xmm1
  409b4b:	c5 f1 58 cd          	vaddpd %xmm5,%xmm1,%xmm1
  409b4f:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409b53:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409b57:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  409b5e:	c5 f5 58 e4          	vaddpd %ymm4,%ymm1,%ymm4
  409b62:	62 f3 fd 28 19 e1 01 	vextractf64x2 $0x1,%ymm4,%xmm1
  409b69:	c5 f1 58 cc          	vaddpd %xmm4,%xmm1,%xmm1
  409b6d:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409b71:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409b75:	62 f3 fd 48 1b d9 01 	vextractf64x4 $0x1,%zmm3,%ymm1
  409b7c:	c5 f5 58 db          	vaddpd %ymm3,%ymm1,%ymm3
  409b80:	62 f3 fd 28 19 d9 01 	vextractf64x2 $0x1,%ymm3,%xmm1
  409b87:	c5 f1 58 cb          	vaddpd %xmm3,%xmm1,%xmm1
  409b8b:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409b8f:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  409b93:	62 f3 fd 48 1b c2 01 	vextractf64x4 $0x1,%zmm0,%ymm2
  409b9a:	c5 fd 58 c2          	vaddpd %ymm2,%ymm0,%ymm0
  409b9e:	62 f3 fd 28 19 c2 01 	vextractf64x2 $0x1,%ymm0,%xmm2
  409ba5:	c5 f9 58 c2          	vaddpd %xmm2,%xmm0,%xmm0
  409ba9:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  409bad:	c5 fb 58 f1          	vaddsd %xmm1,%xmm0,%xmm6
  409bb1:	c4 e1 f9 7e f3       	vmovq  %xmm6,%rbx
  409bb6:	c5 f8 77             	vzeroupper 
  409bb9:	e9 91 cb ff ff       	jmpq   40674f <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x5f>
  409bbe:	66 90                	xchg   %ax,%ax

0000000000409bc0 <_ZZ4mainENKUlmE_clEm._omp_fn.1>:
  409bc0:	55                   	push   %rbp
  409bc1:	48 89 e5             	mov    %rsp,%rbp
  409bc4:	41 55                	push   %r13
  409bc6:	4c 8b 2f             	mov    (%rdi),%r13
  409bc9:	41 54                	push   %r12
  409bcb:	53                   	push   %rbx
  409bcc:	49 8b 45 18          	mov    0x18(%r13),%rax
  409bd0:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  409bd4:	48 8b 18             	mov    (%rax),%rbx
  409bd7:	48 85 db             	test   %rbx,%rbx
  409bda:	74 7a                	je     409c56 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x96>
  409bdc:	e8 af 98 ff ff       	callq  403490 <omp_get_num_threads@plt>
  409be1:	4c 63 e0             	movslq %eax,%r12
  409be4:	e8 f7 97 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  409be9:	48 63 c8             	movslq %eax,%rcx
  409bec:	48 8d 43 07          	lea    0x7(%rbx),%rax
  409bf0:	48 c1 e8 03          	shr    $0x3,%rax
  409bf4:	31 d2                	xor    %edx,%edx
  409bf6:	49 f7 f4             	div    %r12
  409bf9:	48 39 d1             	cmp    %rdx,%rcx
  409bfc:	72 6a                	jb     409c68 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0xa8>
  409bfe:	48 0f af c8          	imul   %rax,%rcx
  409c02:	48 01 ca             	add    %rcx,%rdx
  409c05:	48 01 d0             	add    %rdx,%rax
  409c08:	48 39 c2             	cmp    %rax,%rdx
  409c0b:	73 49                	jae    409c56 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x96>
  409c0d:	62 f2 fd 48 19 0d c9 	vbroadcastsd 0x59c9(%rip),%zmm1        # 40f5e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  409c14:	59 00 00 
  409c17:	48 c1 e2 03          	shl    $0x3,%rdx
  409c1b:	48 c1 e0 03          	shl    $0x3,%rax
  409c1f:	90                   	nop
  409c20:	49 8b 4d 30          	mov    0x30(%r13),%rcx
  409c24:	48 8b 31             	mov    (%rcx),%rsi
  409c27:	49 8b 4d 28          	mov    0x28(%r13),%rcx
  409c2b:	62 f1 fd 48 28 04 d6 	vmovapd (%rsi,%rdx,8),%zmm0
  409c32:	48 8b 09             	mov    (%rcx),%rcx
  409c35:	62 f2 f5 48 a8 04 d1 	vfmadd213pd (%rcx,%rdx,8),%zmm1,%zmm0
  409c3c:	49 8b 4d 20          	mov    0x20(%r13),%rcx
  409c40:	48 8b 09             	mov    (%rcx),%rcx
  409c43:	62 f1 fd 48 2b 04 d1 	vmovntpd %zmm0,(%rcx,%rdx,8)
  409c4a:	48 83 c2 08          	add    $0x8,%rdx
  409c4e:	48 39 d0             	cmp    %rdx,%rax
  409c51:	77 cd                	ja     409c20 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x60>
  409c53:	c5 f8 77             	vzeroupper 
  409c56:	0f ae f8             	sfence 
  409c59:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  409c5d:	5b                   	pop    %rbx
  409c5e:	41 5c                	pop    %r12
  409c60:	41 5d                	pop    %r13
  409c62:	5d                   	pop    %rbp
  409c63:	c3                   	retq   
  409c64:	0f 1f 40 00          	nopl   0x0(%rax)
  409c68:	48 ff c0             	inc    %rax
  409c6b:	31 d2                	xor    %edx,%edx
  409c6d:	eb 8f                	jmp    409bfe <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x3e>
  409c6f:	90                   	nop

0000000000409c70 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0>:
  409c70:	55                   	push   %rbp
  409c71:	48 89 e5             	mov    %rsp,%rbp
  409c74:	41 55                	push   %r13
  409c76:	41 54                	push   %r12
  409c78:	53                   	push   %rbx
  409c79:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  409c7d:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  409c81:	48 85 db             	test   %rbx,%rbx
  409c84:	0f 84 a5 01 00 00    	je     409e2f <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x1bf>
  409c8a:	49 89 fd             	mov    %rdi,%r13
  409c8d:	e8 fe 97 ff ff       	callq  403490 <omp_get_num_threads@plt>
  409c92:	4c 63 e0             	movslq %eax,%r12
  409c95:	e8 46 97 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  409c9a:	48 63 c8             	movslq %eax,%rcx
  409c9d:	48 ba ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rdx
  409ca4:	aa aa aa 
  409ca7:	48 8d 43 5f          	lea    0x5f(%rbx),%rax
  409cab:	48 f7 e2             	mul    %rdx
  409cae:	48 89 d0             	mov    %rdx,%rax
  409cb1:	48 c1 e8 06          	shr    $0x6,%rax
  409cb5:	31 d2                	xor    %edx,%edx
  409cb7:	49 f7 f4             	div    %r12
  409cba:	48 39 d1             	cmp    %rdx,%rcx
  409cbd:	0f 82 77 01 00 00    	jb     409e3a <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x1ca>
  409cc3:	48 0f af c8          	imul   %rax,%rcx
  409cc7:	48 01 ca             	add    %rcx,%rdx
  409cca:	48 01 d0             	add    %rdx,%rax
  409ccd:	48 39 c2             	cmp    %rax,%rdx
  409cd0:	0f 83 59 01 00 00    	jae    409e2f <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x1bf>
  409cd6:	48 8d 14 52          	lea    (%rdx,%rdx,2),%rdx
  409cda:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  409cde:	48 89 d7             	mov    %rdx,%rdi
  409ce1:	4c 8d 04 40          	lea    (%rax,%rax,2),%r8
  409ce5:	48 c1 e2 08          	shl    $0x8,%rdx
  409ce9:	41 8b 75 18          	mov    0x18(%r13),%esi
  409ced:	62 f2 fd 48 19 0d 49 	vbroadcastsd 0x5949(%rip),%zmm1        # 40f640 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  409cf4:	59 00 00 
  409cf7:	62 f2 fd 48 19 05 37 	vbroadcastsd 0x5937(%rip),%zmm0        # 40f638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  409cfe:	59 00 00 
  409d01:	48 01 d1             	add    %rdx,%rcx
  409d04:	48 c1 e7 05          	shl    $0x5,%rdi
  409d08:	49 c1 e0 05          	shl    $0x5,%r8
  409d0c:	49 03 55 08          	add    0x8(%r13),%rdx
  409d10:	62 71 fd 48 28 29    	vmovapd (%rcx),%zmm13
  409d16:	62 71 fd 48 28 61 01 	vmovapd 0x40(%rcx),%zmm12
  409d1d:	62 71 fd 48 28 59 02 	vmovapd 0x80(%rcx),%zmm11
  409d24:	62 71 fd 48 28 51 03 	vmovapd 0xc0(%rcx),%zmm10
  409d2b:	62 71 fd 48 28 49 04 	vmovapd 0x100(%rcx),%zmm9
  409d32:	62 71 fd 48 28 41 05 	vmovapd 0x140(%rcx),%zmm8
  409d39:	62 f1 fd 48 28 79 06 	vmovapd 0x180(%rcx),%zmm7
  409d40:	62 f1 fd 48 28 71 07 	vmovapd 0x1c0(%rcx),%zmm6
  409d47:	62 f1 fd 48 28 69 08 	vmovapd 0x200(%rcx),%zmm5
  409d4e:	62 f1 fd 48 28 61 09 	vmovapd 0x240(%rcx),%zmm4
  409d55:	62 f1 fd 48 28 59 0a 	vmovapd 0x280(%rcx),%zmm3
  409d5c:	62 f1 fd 48 28 51 0b 	vmovapd 0x2c0(%rcx),%zmm2
  409d63:	85 f6                	test   %esi,%esi
  409d65:	7e 57                	jle    409dbe <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x14e>
  409d67:	31 c0                	xor    %eax,%eax
  409d69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  409d70:	ff c0                	inc    %eax
  409d72:	62 72 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm13
  409d78:	62 72 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm12
  409d7e:	62 72 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm11
  409d84:	62 72 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm10
  409d8a:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  409d90:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  409d96:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  409d9c:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  409da2:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  409da8:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  409dae:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  409db4:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  409dba:	39 c6                	cmp    %eax,%esi
  409dbc:	75 b2                	jne    409d70 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x100>
  409dbe:	48 83 c7 60          	add    $0x60,%rdi
  409dc2:	62 71 fd 48 29 2a    	vmovapd %zmm13,(%rdx)
  409dc8:	62 71 fd 48 29 62 01 	vmovapd %zmm12,0x40(%rdx)
  409dcf:	62 71 fd 48 29 5a 02 	vmovapd %zmm11,0x80(%rdx)
  409dd6:	62 71 fd 48 29 52 03 	vmovapd %zmm10,0xc0(%rdx)
  409ddd:	62 71 fd 48 29 4a 04 	vmovapd %zmm9,0x100(%rdx)
  409de4:	62 71 fd 48 29 42 05 	vmovapd %zmm8,0x140(%rdx)
  409deb:	62 f1 fd 48 29 7a 06 	vmovapd %zmm7,0x180(%rdx)
  409df2:	62 f1 fd 48 29 72 07 	vmovapd %zmm6,0x1c0(%rdx)
  409df9:	62 f1 fd 48 29 6a 08 	vmovapd %zmm5,0x200(%rdx)
  409e00:	62 f1 fd 48 29 62 09 	vmovapd %zmm4,0x240(%rdx)
  409e07:	62 f1 fd 48 29 5a 0a 	vmovapd %zmm3,0x280(%rdx)
  409e0e:	62 f1 fd 48 29 52 0b 	vmovapd %zmm2,0x2c0(%rdx)
  409e15:	48 81 c1 00 03 00 00 	add    $0x300,%rcx
  409e1c:	48 81 c2 00 03 00 00 	add    $0x300,%rdx
  409e23:	49 39 f8             	cmp    %rdi,%r8
  409e26:	0f 87 e4 fe ff ff    	ja     409d10 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0xa0>
  409e2c:	c5 f8 77             	vzeroupper 
  409e2f:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  409e33:	5b                   	pop    %rbx
  409e34:	41 5c                	pop    %r12
  409e36:	41 5d                	pop    %r13
  409e38:	5d                   	pop    %rbp
  409e39:	c3                   	retq   
  409e3a:	48 ff c0             	inc    %rax
  409e3d:	31 d2                	xor    %edx,%edx
  409e3f:	e9 7f fe ff ff       	jmpq   409cc3 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x53>
  409e44:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  409e4b:	00 00 00 00 
  409e4f:	90                   	nop

0000000000409e50 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0>:
  409e50:	55                   	push   %rbp
  409e51:	48 89 e5             	mov    %rsp,%rbp
  409e54:	41 55                	push   %r13
  409e56:	41 54                	push   %r12
  409e58:	53                   	push   %rbx
  409e59:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  409e5d:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  409e61:	48 85 db             	test   %rbx,%rbx
  409e64:	0f 84 e1 01 00 00    	je     40a04b <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x1fb>
  409e6a:	49 89 fc             	mov    %rdi,%r12
  409e6d:	e8 1e 96 ff ff       	callq  403490 <omp_get_num_threads@plt>
  409e72:	41 89 c5             	mov    %eax,%r13d
  409e75:	e8 66 95 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  409e7a:	48 63 c8             	movslq %eax,%rcx
  409e7d:	48 8d 43 7f          	lea    0x7f(%rbx),%rax
  409e81:	48 c1 e8 07          	shr    $0x7,%rax
  409e85:	49 63 f5             	movslq %r13d,%rsi
  409e88:	31 d2                	xor    %edx,%edx
  409e8a:	48 f7 f6             	div    %rsi
  409e8d:	48 39 d1             	cmp    %rdx,%rcx
  409e90:	0f 82 c0 01 00 00    	jb     40a056 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x206>
  409e96:	48 0f af c8          	imul   %rax,%rcx
  409e9a:	48 01 ca             	add    %rcx,%rdx
  409e9d:	48 01 d0             	add    %rdx,%rax
  409ea0:	48 39 c2             	cmp    %rax,%rdx
  409ea3:	0f 83 a2 01 00 00    	jae    40a04b <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x1fb>
  409ea9:	49 8b 0c 24          	mov    (%r12),%rcx
  409ead:	49 89 d0             	mov    %rdx,%r8
  409eb0:	48 c1 e0 07          	shl    $0x7,%rax
  409eb4:	48 c1 e2 0a          	shl    $0xa,%rdx
  409eb8:	41 8b 74 24 18       	mov    0x18(%r12),%esi
  409ebd:	62 f2 fd 48 19 0d 79 	vbroadcastsd 0x5779(%rip),%zmm1        # 40f640 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  409ec4:	57 00 00 
  409ec7:	62 f2 fd 48 19 05 67 	vbroadcastsd 0x5767(%rip),%zmm0        # 40f638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  409ece:	57 00 00 
  409ed1:	48 01 d1             	add    %rdx,%rcx
  409ed4:	49 c1 e0 07          	shl    $0x7,%r8
  409ed8:	48 89 c7             	mov    %rax,%rdi
  409edb:	49 03 54 24 08       	add    0x8(%r12),%rdx
  409ee0:	62 e1 fd 48 28 09    	vmovapd (%rcx),%zmm17
  409ee6:	62 e1 fd 48 28 41 01 	vmovapd 0x40(%rcx),%zmm16
  409eed:	62 71 fd 48 28 79 02 	vmovapd 0x80(%rcx),%zmm15
  409ef4:	62 71 fd 48 28 71 03 	vmovapd 0xc0(%rcx),%zmm14
  409efb:	62 71 fd 48 28 69 04 	vmovapd 0x100(%rcx),%zmm13
  409f02:	62 71 fd 48 28 61 05 	vmovapd 0x140(%rcx),%zmm12
  409f09:	62 71 fd 48 28 59 06 	vmovapd 0x180(%rcx),%zmm11
  409f10:	62 71 fd 48 28 51 07 	vmovapd 0x1c0(%rcx),%zmm10
  409f17:	62 71 fd 48 28 49 08 	vmovapd 0x200(%rcx),%zmm9
  409f1e:	62 71 fd 48 28 41 09 	vmovapd 0x240(%rcx),%zmm8
  409f25:	62 f1 fd 48 28 79 0a 	vmovapd 0x280(%rcx),%zmm7
  409f2c:	62 f1 fd 48 28 71 0b 	vmovapd 0x2c0(%rcx),%zmm6
  409f33:	62 f1 fd 48 28 69 0c 	vmovapd 0x300(%rcx),%zmm5
  409f3a:	62 f1 fd 48 28 61 0d 	vmovapd 0x340(%rcx),%zmm4
  409f41:	62 f1 fd 48 28 59 0e 	vmovapd 0x380(%rcx),%zmm3
  409f48:	62 f1 fd 48 28 51 0f 	vmovapd 0x3c0(%rcx),%zmm2
  409f4f:	85 f6                	test   %esi,%esi
  409f51:	7e 6b                	jle    409fbe <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x16e>
  409f53:	31 c0                	xor    %eax,%eax
  409f55:	0f 1f 00             	nopl   (%rax)
  409f58:	ff c0                	inc    %eax
  409f5a:	62 e2 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm17
  409f60:	62 e2 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm16
  409f66:	62 72 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm15
  409f6c:	62 72 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm14
  409f72:	62 72 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm13
  409f78:	62 72 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm12
  409f7e:	62 72 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm11
  409f84:	62 72 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm10
  409f8a:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  409f90:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  409f96:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  409f9c:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  409fa2:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  409fa8:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  409fae:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  409fb4:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  409fba:	39 c6                	cmp    %eax,%esi
  409fbc:	75 9a                	jne    409f58 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x108>
  409fbe:	49 83 e8 80          	sub    $0xffffffffffffff80,%r8
  409fc2:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  409fc8:	62 e1 fd 48 29 42 01 	vmovapd %zmm16,0x40(%rdx)
  409fcf:	62 71 fd 48 29 7a 02 	vmovapd %zmm15,0x80(%rdx)
  409fd6:	62 71 fd 48 29 72 03 	vmovapd %zmm14,0xc0(%rdx)
  409fdd:	62 71 fd 48 29 6a 04 	vmovapd %zmm13,0x100(%rdx)
  409fe4:	62 71 fd 48 29 62 05 	vmovapd %zmm12,0x140(%rdx)
  409feb:	62 71 fd 48 29 5a 06 	vmovapd %zmm11,0x180(%rdx)
  409ff2:	62 71 fd 48 29 52 07 	vmovapd %zmm10,0x1c0(%rdx)
  409ff9:	62 71 fd 48 29 4a 08 	vmovapd %zmm9,0x200(%rdx)
  40a000:	62 71 fd 48 29 42 09 	vmovapd %zmm8,0x240(%rdx)
  40a007:	62 f1 fd 48 29 7a 0a 	vmovapd %zmm7,0x280(%rdx)
  40a00e:	62 f1 fd 48 29 72 0b 	vmovapd %zmm6,0x2c0(%rdx)
  40a015:	62 f1 fd 48 29 6a 0c 	vmovapd %zmm5,0x300(%rdx)
  40a01c:	62 f1 fd 48 29 62 0d 	vmovapd %zmm4,0x340(%rdx)
  40a023:	62 f1 fd 48 29 5a 0e 	vmovapd %zmm3,0x380(%rdx)
  40a02a:	62 f1 fd 48 29 52 0f 	vmovapd %zmm2,0x3c0(%rdx)
  40a031:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  40a038:	48 81 c2 00 04 00 00 	add    $0x400,%rdx
  40a03f:	4c 39 c7             	cmp    %r8,%rdi
  40a042:	0f 87 98 fe ff ff    	ja     409ee0 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x90>
  40a048:	c5 f8 77             	vzeroupper 
  40a04b:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a04f:	5b                   	pop    %rbx
  40a050:	41 5c                	pop    %r12
  40a052:	41 5d                	pop    %r13
  40a054:	5d                   	pop    %rbp
  40a055:	c3                   	retq   
  40a056:	48 ff c0             	inc    %rax
  40a059:	31 d2                	xor    %edx,%edx
  40a05b:	e9 36 fe ff ff       	jmpq   409e96 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x46>

000000000040a060 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0>:
  40a060:	55                   	push   %rbp
  40a061:	48 89 e5             	mov    %rsp,%rbp
  40a064:	41 55                	push   %r13
  40a066:	41 54                	push   %r12
  40a068:	53                   	push   %rbx
  40a069:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  40a06d:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a071:	48 85 db             	test   %rbx,%rbx
  40a074:	0f 84 41 01 00 00    	je     40a1bb <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x15b>
  40a07a:	49 89 fd             	mov    %rdi,%r13
  40a07d:	e8 0e 94 ff ff       	callq  403490 <omp_get_num_threads@plt>
  40a082:	4c 63 e0             	movslq %eax,%r12
  40a085:	e8 56 93 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40a08a:	48 63 c8             	movslq %eax,%rcx
  40a08d:	48 8d 43 3f          	lea    0x3f(%rbx),%rax
  40a091:	48 c1 e8 06          	shr    $0x6,%rax
  40a095:	31 d2                	xor    %edx,%edx
  40a097:	49 f7 f4             	div    %r12
  40a09a:	48 39 d1             	cmp    %rdx,%rcx
  40a09d:	0f 82 23 01 00 00    	jb     40a1c6 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x166>
  40a0a3:	48 0f af c8          	imul   %rax,%rcx
  40a0a7:	48 01 ca             	add    %rcx,%rdx
  40a0aa:	48 01 d0             	add    %rdx,%rax
  40a0ad:	48 39 c2             	cmp    %rax,%rdx
  40a0b0:	0f 83 05 01 00 00    	jae    40a1bb <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x15b>
  40a0b6:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40a0ba:	49 89 d0             	mov    %rdx,%r8
  40a0bd:	48 c1 e0 06          	shl    $0x6,%rax
  40a0c1:	48 c1 e2 09          	shl    $0x9,%rdx
  40a0c5:	41 8b 75 18          	mov    0x18(%r13),%esi
  40a0c9:	62 f2 fd 48 19 0d 6d 	vbroadcastsd 0x556d(%rip),%zmm1        # 40f640 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  40a0d0:	55 00 00 
  40a0d3:	62 f2 fd 48 19 05 5b 	vbroadcastsd 0x555b(%rip),%zmm0        # 40f638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40a0da:	55 00 00 
  40a0dd:	48 01 d1             	add    %rdx,%rcx
  40a0e0:	49 c1 e0 06          	shl    $0x6,%r8
  40a0e4:	48 89 c7             	mov    %rax,%rdi
  40a0e7:	49 03 55 08          	add    0x8(%r13),%rdx
  40a0eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40a0f0:	62 71 fd 48 28 09    	vmovapd (%rcx),%zmm9
  40a0f6:	62 71 fd 48 28 41 01 	vmovapd 0x40(%rcx),%zmm8
  40a0fd:	62 f1 fd 48 28 79 02 	vmovapd 0x80(%rcx),%zmm7
  40a104:	62 f1 fd 48 28 71 03 	vmovapd 0xc0(%rcx),%zmm6
  40a10b:	62 f1 fd 48 28 69 04 	vmovapd 0x100(%rcx),%zmm5
  40a112:	62 f1 fd 48 28 61 05 	vmovapd 0x140(%rcx),%zmm4
  40a119:	62 f1 fd 48 28 59 06 	vmovapd 0x180(%rcx),%zmm3
  40a120:	62 f1 fd 48 28 51 07 	vmovapd 0x1c0(%rcx),%zmm2
  40a127:	85 f6                	test   %esi,%esi
  40a129:	7e 3b                	jle    40a166 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x106>
  40a12b:	31 c0                	xor    %eax,%eax
  40a12d:	0f 1f 00             	nopl   (%rax)
  40a130:	ff c0                	inc    %eax
  40a132:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  40a138:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  40a13e:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  40a144:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  40a14a:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  40a150:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  40a156:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  40a15c:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  40a162:	39 c6                	cmp    %eax,%esi
  40a164:	75 ca                	jne    40a130 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0xd0>
  40a166:	49 83 c0 40          	add    $0x40,%r8
  40a16a:	62 71 fd 48 29 0a    	vmovapd %zmm9,(%rdx)
  40a170:	62 71 fd 48 29 42 01 	vmovapd %zmm8,0x40(%rdx)
  40a177:	62 f1 fd 48 29 7a 02 	vmovapd %zmm7,0x80(%rdx)
  40a17e:	62 f1 fd 48 29 72 03 	vmovapd %zmm6,0xc0(%rdx)
  40a185:	62 f1 fd 48 29 6a 04 	vmovapd %zmm5,0x100(%rdx)
  40a18c:	62 f1 fd 48 29 62 05 	vmovapd %zmm4,0x140(%rdx)
  40a193:	62 f1 fd 48 29 5a 06 	vmovapd %zmm3,0x180(%rdx)
  40a19a:	62 f1 fd 48 29 52 07 	vmovapd %zmm2,0x1c0(%rdx)
  40a1a1:	48 81 c1 00 02 00 00 	add    $0x200,%rcx
  40a1a8:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  40a1af:	4c 39 c7             	cmp    %r8,%rdi
  40a1b2:	0f 87 38 ff ff ff    	ja     40a0f0 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x90>
  40a1b8:	c5 f8 77             	vzeroupper 
  40a1bb:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a1bf:	5b                   	pop    %rbx
  40a1c0:	41 5c                	pop    %r12
  40a1c2:	41 5d                	pop    %r13
  40a1c4:	5d                   	pop    %rbp
  40a1c5:	c3                   	retq   
  40a1c6:	48 ff c0             	inc    %rax
  40a1c9:	31 d2                	xor    %edx,%edx
  40a1cb:	e9 d3 fe ff ff       	jmpq   40a0a3 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x43>

000000000040a1d0 <_ZZ4mainENKUlmE_clEm>:
  40a1d0:	55                   	push   %rbp
  40a1d1:	48 89 e5             	mov    %rsp,%rbp
  40a1d4:	41 54                	push   %r12
  40a1d6:	53                   	push   %rbx
  40a1d7:	48 89 fb             	mov    %rdi,%rbx
  40a1da:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40a1de:	48 83 ec 60          	sub    $0x60,%rsp
  40a1e2:	48 8b 07             	mov    (%rdi),%rax
  40a1e5:	80 38 00             	cmpb   $0x0,(%rax)
  40a1e8:	0f 85 bd 00 00 00    	jne    40a2ab <_ZZ4mainENKUlmE_clEm+0xdb>
  40a1ee:	48 8b 47 10          	mov    0x10(%rdi),%rax
  40a1f2:	80 38 00             	cmpb   $0x0,(%rax)
  40a1f5:	0f 85 8d 03 00 00    	jne    40a588 <_ZZ4mainENKUlmE_clEm+0x3b8>
  40a1fb:	48 8b 47 38          	mov    0x38(%rdi),%rax
  40a1ff:	44 0f b6 20          	movzbl (%rax),%r12d
  40a203:	45 84 e4             	test   %r12b,%r12b
  40a206:	0f 85 cc 00 00 00    	jne    40a2d8 <_ZZ4mainENKUlmE_clEm+0x108>
  40a20c:	48 8b 47 40          	mov    0x40(%rdi),%rax
  40a210:	80 38 00             	cmpb   $0x0,(%rax)
  40a213:	0f 85 bb 03 00 00    	jne    40a5d4 <_ZZ4mainENKUlmE_clEm+0x404>
  40a219:	48 8b 47 78          	mov    0x78(%rdi),%rax
  40a21d:	44 0f b6 20          	movzbl (%rax),%r12d
  40a221:	45 84 e4             	test   %r12b,%r12b
  40a224:	0f 84 4a 01 00 00    	je     40a374 <_ZZ4mainENKUlmE_clEm+0x1a4>
  40a22a:	48 8b 97 88 00 00 00 	mov    0x88(%rdi),%rdx
  40a231:	48 8b 87 80 00 00 00 	mov    0x80(%rdi),%rax
  40a238:	8b 3a                	mov    (%rdx),%edi
  40a23a:	48 8b 53 18          	mov    0x18(%rbx),%rdx
  40a23e:	8b 00                	mov    (%rax),%eax
  40a240:	48 8b 32             	mov    (%rdx),%rsi
  40a243:	48 8b 53 20          	mov    0x20(%rbx),%rdx
  40a247:	48 8b 0a             	mov    (%rdx),%rcx
  40a24a:	48 8b 53 28          	mov    0x28(%rbx),%rdx
  40a24e:	48 8b 12             	mov    (%rdx),%rdx
  40a251:	c4 e1 f9 6e ea       	vmovq  %rdx,%xmm5
  40a256:	c4 e3 d1 22 c1 01    	vpinsrq $0x1,%rcx,%xmm5,%xmm0
  40a25c:	83 f8 0c             	cmp    $0xc,%eax
  40a25f:	0f 84 e7 00 00 00    	je     40a34c <_ZZ4mainENKUlmE_clEm+0x17c>
  40a265:	83 f8 10             	cmp    $0x10,%eax
  40a268:	0f 85 b6 00 00 00    	jne    40a324 <_ZZ4mainENKUlmE_clEm+0x154>
  40a26e:	89 7c 24 18          	mov    %edi,0x18(%rsp)
  40a272:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40a277:	31 c9                	xor    %ecx,%ecx
  40a279:	31 d2                	xor    %edx,%edx
  40a27b:	48 89 e6             	mov    %rsp,%rsi
  40a27e:	bf 50 9e 40 00       	mov    $0x409e50,%edi
  40a283:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  40a288:	e8 13 91 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40a28d:	48 8b 83 88 00 00 00 	mov    0x88(%rbx),%rax
  40a294:	48 8b 53 18          	mov    0x18(%rbx),%rdx
  40a298:	48 63 00             	movslq (%rax),%rax
  40a29b:	48 0f af 02          	imul   (%rdx),%rax
  40a29f:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
  40a2a3:	5b                   	pop    %rbx
  40a2a4:	41 5c                	pop    %r12
  40a2a6:	48 01 c0             	add    %rax,%rax
  40a2a9:	5d                   	pop    %rbp
  40a2aa:	c3                   	retq   
  40a2ab:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  40a2af:	b8 00 00 01 00       	mov    $0x10000,%eax
  40a2b4:	48 8b 11             	mov    (%rcx),%rdx
  40a2b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40a2be:	00 00 
  40a2c0:	48 8b 12             	mov    (%rdx),%rdx
  40a2c3:	48 89 11             	mov    %rdx,(%rcx)
  40a2c6:	ff c8                	dec    %eax
  40a2c8:	75 f6                	jne    40a2c0 <_ZZ4mainENKUlmE_clEm+0xf0>
  40a2ca:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
  40a2ce:	5b                   	pop    %rbx
  40a2cf:	41 5c                	pop    %r12
  40a2d1:	b8 00 00 01 00       	mov    $0x10000,%eax
  40a2d6:	5d                   	pop    %rbp
  40a2d7:	c3                   	retq   
  40a2d8:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40a2dc:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40a2e1:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40a2e5:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40a2ea:	48 8d 47 28          	lea    0x28(%rdi),%rax
  40a2ee:	48 89 3c 24          	mov    %rdi,(%rsp)
  40a2f2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40a2f7:	48 89 e6             	mov    %rsp,%rsi
  40a2fa:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40a2fe:	31 c9                	xor    %ecx,%ecx
  40a300:	31 d2                	xor    %edx,%edx
  40a302:	bf c0 9b 40 00       	mov    $0x409bc0,%edi
  40a307:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40a30c:	e8 8f 90 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40a311:	48 8b 43 18          	mov    0x18(%rbx),%rax
  40a315:	48 8b 00             	mov    (%rax),%rax
  40a318:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
  40a31c:	5b                   	pop    %rbx
  40a31d:	41 5c                	pop    %r12
  40a31f:	48 01 c0             	add    %rax,%rax
  40a322:	5d                   	pop    %rbp
  40a323:	c3                   	retq   
  40a324:	89 7c 24 18          	mov    %edi,0x18(%rsp)
  40a328:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40a32d:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40a332:	48 89 14 24          	mov    %rdx,(%rsp)
  40a336:	31 c9                	xor    %ecx,%ecx
  40a338:	31 d2                	xor    %edx,%edx
  40a33a:	48 89 e6             	mov    %rsp,%rsi
  40a33d:	bf 60 a0 40 00       	mov    $0x40a060,%edi
  40a342:	e8 59 90 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40a347:	e9 41 ff ff ff       	jmpq   40a28d <_ZZ4mainENKUlmE_clEm+0xbd>
  40a34c:	89 7c 24 18          	mov    %edi,0x18(%rsp)
  40a350:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40a355:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40a35a:	48 89 14 24          	mov    %rdx,(%rsp)
  40a35e:	31 c9                	xor    %ecx,%ecx
  40a360:	31 d2                	xor    %edx,%edx
  40a362:	48 89 e6             	mov    %rsp,%rsi
  40a365:	bf 70 9c 40 00       	mov    $0x409c70,%edi
  40a36a:	e8 31 90 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40a36f:	e9 19 ff ff ff       	jmpq   40a28d <_ZZ4mainENKUlmE_clEm+0xbd>
  40a374:	48 8d 87 80 00 00 00 	lea    0x80(%rdi),%rax
  40a37b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40a380:	48 8d 87 90 00 00 00 	lea    0x90(%rdi),%rax
  40a387:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40a38c:	48 8d 87 98 00 00 00 	lea    0x98(%rdi),%rax
  40a393:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40a398:	48 8d 87 a0 00 00 00 	lea    0xa0(%rdi),%rax
  40a39f:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  40a3a4:	48 8d 87 a8 00 00 00 	lea    0xa8(%rdi),%rax
  40a3ab:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  40a3b1:	48 89 3c 24          	mov    %rdi,(%rsp)
  40a3b5:	48 8d 87 b0 00 00 00 	lea    0xb0(%rdi),%rax
  40a3bc:	31 d2                	xor    %edx,%edx
  40a3be:	31 c9                	xor    %ecx,%ecx
  40a3c0:	48 89 e6             	mov    %rsp,%rsi
  40a3c3:	bf f0 66 40 00       	mov    $0x4066f0,%edi
  40a3c8:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40a3cd:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%rsp)
  40a3d4:	00 
  40a3d5:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  40a3dc:	00 00 
  40a3de:	c5 f9 7f 44 24 20    	vmovdqa %xmm0,0x20(%rsp)
  40a3e4:	e8 b7 8f ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40a3e9:	8b 44 24 40          	mov    0x40(%rsp),%eax
  40a3ed:	c5 fb 10 4c 24 38    	vmovsd 0x38(%rsp),%xmm1
  40a3f3:	48 8b 53 60          	mov    0x60(%rbx),%rdx
  40a3f7:	c5 fb 11 0a          	vmovsd %xmm1,(%rdx)
  40a3fb:	85 c0                	test   %eax,%eax
  40a3fd:	75 1a                	jne    40a419 <_ZZ4mainENKUlmE_clEm+0x249>
  40a3ff:	c5 f1 54 05 39 53 00 	vandpd 0x5339(%rip),%xmm1,%xmm0        # 40f740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40a406:	00 
  40a407:	c5 fb 10 15 41 52 00 	vmovsd 0x5241(%rip),%xmm2        # 40f650 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  40a40e:	00 
  40a40f:	c5 f9 2e d0          	vucomisd %xmm0,%xmm2
  40a413:	0f 83 7c 02 00 00    	jae    40a695 <_ZZ4mainENKUlmE_clEm+0x4c5>
  40a419:	48 8b 73 68          	mov    0x68(%rbx),%rsi
  40a41d:	48 8b 8b b0 00 00 00 	mov    0xb0(%rbx),%rcx
  40a424:	44 22 26             	and    (%rsi),%r12b
  40a427:	44 88 26             	mov    %r12b,(%rsi)
  40a42a:	80 39 00             	cmpb   $0x0,(%rcx)
  40a42d:	0f 85 14 01 00 00    	jne    40a547 <_ZZ4mainENKUlmE_clEm+0x377>
  40a433:	48 8b 83 b8 00 00 00 	mov    0xb8(%rbx),%rax
  40a43a:	80 38 00             	cmpb   $0x0,(%rax)
  40a43d:	0f 85 04 01 00 00    	jne    40a547 <_ZZ4mainENKUlmE_clEm+0x377>
  40a443:	48 8b bb a0 00 00 00 	mov    0xa0(%rbx),%rdi
  40a44a:	48 8b 83 c8 00 00 00 	mov    0xc8(%rbx),%rax
  40a451:	80 3f 00             	cmpb   $0x0,(%rdi)
  40a454:	48 63 00             	movslq (%rax),%rax
  40a457:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  40a45b:	74 3c                	je     40a499 <_ZZ4mainENKUlmE_clEm+0x2c9>
  40a45d:	c5 eb 2a c0          	vcvtsi2sd %eax,%xmm2,%xmm0
  40a461:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40a467:	c5 fb 59 05 81 51 00 	vmulsd 0x5181(%rip),%xmm0,%xmm0        # 40f5f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  40a46e:	00 
  40a46f:	c5 fb 59 05 e9 51 00 	vmulsd 0x51e9(%rip),%xmm0,%xmm0        # 40f660 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  40a476:	00 
  40a477:	c5 fb 59 05 b1 51 00 	vmulsd 0x51b1(%rip),%xmm0,%xmm0        # 40f630 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  40a47e:	00 
  40a47f:	c5 fb 59 05 e1 51 00 	vmulsd 0x51e1(%rip),%xmm0,%xmm0        # 40f668 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  40a486:	00 
  40a487:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  40a48b:	41 0f 9b c0          	setnp  %r8b
  40a48f:	45 0f 45 c1          	cmovne %r9d,%r8d
  40a493:	45 21 c4             	and    %r8d,%r12d
  40a496:	44 88 26             	mov    %r12b,(%rsi)
  40a499:	4c 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8
  40a4a0:	41 80 38 00          	cmpb   $0x0,(%r8)
  40a4a4:	74 3e                	je     40a4e4 <_ZZ4mainENKUlmE_clEm+0x314>
  40a4a6:	4c 8b 8b 80 00 00 00 	mov    0x80(%rbx),%r9
  40a4ad:	ba 00 00 00 00       	mov    $0x0,%edx
  40a4b2:	c4 c1 6b 2a 01       	vcvtsi2sdl (%r9),%xmm2,%xmm0
  40a4b7:	c5 eb 2a d0          	vcvtsi2sd %eax,%xmm2,%xmm2
  40a4bb:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40a4bf:	c5 fb 59 05 99 51 00 	vmulsd 0x5199(%rip),%xmm0,%xmm0        # 40f660 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  40a4c6:	00 
  40a4c7:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  40a4cb:	c5 fb 59 05 95 51 00 	vmulsd 0x5195(%rip),%xmm0,%xmm0        # 40f668 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  40a4d2:	00 
  40a4d3:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  40a4d7:	41 0f 9b c1          	setnp  %r9b
  40a4db:	41 0f 44 d1          	cmove  %r9d,%edx
  40a4df:	44 21 e2             	and    %r12d,%edx
  40a4e2:	88 16                	mov    %dl,(%rsi)
  40a4e4:	48 8b b3 90 00 00 00 	mov    0x90(%rbx),%rsi
  40a4eb:	48 ba 00 00 00 00 04 	movabs $0x400000000,%rdx
  40a4f2:	00 00 00 
  40a4f5:	80 3e 00             	cmpb   $0x0,(%rsi)
  40a4f8:	75 40                	jne    40a53a <_ZZ4mainENKUlmE_clEm+0x36a>
  40a4fa:	48 8b b3 98 00 00 00 	mov    0x98(%rbx),%rsi
  40a501:	48 ba 00 00 00 00 08 	movabs $0x800000000,%rdx
  40a508:	00 00 00 
  40a50b:	80 3e 00             	cmpb   $0x0,(%rsi)
  40a50e:	75 2a                	jne    40a53a <_ZZ4mainENKUlmE_clEm+0x36a>
  40a510:	80 3f 00             	cmpb   $0x0,(%rdi)
  40a513:	48 ba 00 80 a8 12 01 	movabs $0x112a88000,%rdx
  40a51a:	00 00 00 
  40a51d:	75 1b                	jne    40a53a <_ZZ4mainENKUlmE_clEm+0x36a>
  40a51f:	41 80 38 00          	cmpb   $0x0,(%r8)
  40a523:	0f 84 7d 01 00 00    	je     40a6a6 <_ZZ4mainENKUlmE_clEm+0x4d6>
  40a529:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
  40a530:	48 63 12             	movslq (%rdx),%rdx
  40a533:	48 69 d2 00 b0 71 0b 	imul   $0xb71b000,%rdx,%rdx
  40a53a:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
  40a53e:	5b                   	pop    %rbx
  40a53f:	41 5c                	pop    %r12
  40a541:	48 0f af c2          	imul   %rdx,%rax
  40a545:	5d                   	pop    %rbp
  40a546:	c3                   	retq   
  40a547:	48 8b 83 c0 00 00 00 	mov    0xc0(%rbx),%rax
  40a54e:	c5 fa 7e 1d ea 51 00 	vmovq  0x51ea(%rip),%xmm3        # 40f740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40a555:	00 
  40a556:	c5 fb 10 00          	vmovsd (%rax),%xmm0
  40a55a:	c5 f3 5c d0          	vsubsd %xmm0,%xmm1,%xmm2
  40a55e:	c5 f9 54 c3          	vandpd %xmm3,%xmm0,%xmm0
  40a562:	c5 e9 54 d3          	vandpd %xmm3,%xmm2,%xmm2
  40a566:	c5 fb 10 1d da 50 00 	vmovsd 0x50da(%rip),%xmm3        # 40f648 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x148>
  40a56d:	00 
  40a56e:	c5 fb 59 c3          	vmulsd %xmm3,%xmm0,%xmm0
  40a572:	c5 fb 5f c3          	vmaxsd %xmm3,%xmm0,%xmm0
  40a576:	c5 f9 2f c2          	vcomisd %xmm2,%xmm0
  40a57a:	0f 97 c0             	seta   %al
  40a57d:	41 21 c4             	and    %eax,%r12d
  40a580:	44 88 26             	mov    %r12b,(%rsi)
  40a583:	e9 bb fe ff ff       	jmpq   40a443 <_ZZ4mainENKUlmE_clEm+0x273>
  40a588:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40a58c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40a591:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40a595:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40a59a:	48 8d 47 28          	lea    0x28(%rdi),%rax
  40a59e:	48 89 3c 24          	mov    %rdi,(%rsp)
  40a5a2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40a5a7:	48 89 e6             	mov    %rsp,%rsi
  40a5aa:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40a5ae:	31 c9                	xor    %ecx,%ecx
  40a5b0:	31 d2                	xor    %edx,%edx
  40a5b2:	bf 30 63 40 00       	mov    $0x406330,%edi
  40a5b7:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40a5bc:	e8 df 8d ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40a5c1:	48 8b 43 18          	mov    0x18(%rbx),%rax
  40a5c5:	48 8b 00             	mov    (%rax),%rax
  40a5c8:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
  40a5cc:	5b                   	pop    %rbx
  40a5cd:	41 5c                	pop    %r12
  40a5cf:	48 01 c0             	add    %rax,%rax
  40a5d2:	5d                   	pop    %rbp
  40a5d3:	c3                   	retq   
  40a5d4:	48 8d 47 48          	lea    0x48(%rdi),%rax
  40a5d8:	48 8d 7f 50          	lea    0x50(%rdi),%rdi
  40a5dc:	48 8d 53 58          	lea    0x58(%rbx),%rdx
  40a5e0:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  40a5e4:	c4 e1 f9 6e cf       	vmovq  %rdi,%xmm1
  40a5e9:	c4 e1 f9 6e f3       	vmovq  %rbx,%xmm6
  40a5ee:	c4 e3 f1 22 ca 01    	vpinsrq $0x1,%rdx,%xmm1,%xmm1
  40a5f4:	c5 f9 29 44 24 30    	vmovapd %xmm0,0x30(%rsp)
  40a5fa:	c4 e3 c9 22 c0 01    	vpinsrq $0x1,%rax,%xmm6,%xmm0
  40a600:	48 89 34 24          	mov    %rsi,(%rsp)
  40a604:	c4 e3 7d 38 c1 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm0
  40a60a:	31 c9                	xor    %ecx,%ecx
  40a60c:	31 d2                	xor    %edx,%edx
  40a60e:	48 89 e6             	mov    %rsp,%rsi
  40a611:	bf 00 65 40 00       	mov    $0x406500,%edi
  40a616:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  40a61d:	00 00 
  40a61f:	c5 fe 7f 44 24 08    	vmovdqu %ymm0,0x8(%rsp)
  40a625:	c5 f8 77             	vzeroupper 
  40a628:	e8 73 8d ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40a62d:	c5 fb 10 44 24 30    	vmovsd 0x30(%rsp),%xmm0
  40a633:	c5 fa 7e 0d 05 51 00 	vmovq  0x5105(%rip),%xmm1        # 40f740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40a63a:	00 
  40a63b:	c5 fb 10 25 0d 50 00 	vmovsd 0x500d(%rip),%xmm4        # 40f650 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  40a642:	00 
  40a643:	c5 f9 54 d1          	vandpd %xmm1,%xmm0,%xmm2
  40a647:	c5 f9 2e e2          	vucomisd %xmm2,%xmm4
  40a64b:	48 8b 43 60          	mov    0x60(%rbx),%rax
  40a64f:	c5 fb 10 5c 24 38    	vmovsd 0x38(%rsp),%xmm3
  40a655:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
  40a65a:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
  40a65e:	72 1c                	jb     40a67c <_ZZ4mainENKUlmE_clEm+0x4ac>
  40a660:	c5 e1 54 d1          	vandpd %xmm1,%xmm3,%xmm2
  40a664:	c5 eb 59 15 ec 4f 00 	vmulsd 0x4fec(%rip),%xmm2,%xmm2        # 40f658 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  40a66b:	00 
  40a66c:	c5 fb 5c c3          	vsubsd %xmm3,%xmm0,%xmm0
  40a670:	c5 f9 54 c1          	vandpd %xmm1,%xmm0,%xmm0
  40a674:	c5 f9 2f d0          	vcomisd %xmm0,%xmm2
  40a678:	41 0f 93 c4          	setae  %r12b
  40a67c:	48 8b 43 68          	mov    0x68(%rbx),%rax
  40a680:	44 20 20             	and    %r12b,(%rax)
  40a683:	48 8b 43 70          	mov    0x70(%rbx),%rax
  40a687:	48 89 10             	mov    %rdx,(%rax)
  40a68a:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
  40a68e:	31 c0                	xor    %eax,%eax
  40a690:	5b                   	pop    %rbx
  40a691:	41 5c                	pop    %r12
  40a693:	5d                   	pop    %rbp
  40a694:	c3                   	retq   
  40a695:	c5 f9 2f 0d 43 50 00 	vcomisd 0x5043(%rip),%xmm1        # 40f6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  40a69c:	00 
  40a69d:	41 0f 97 c4          	seta   %r12b
  40a6a1:	e9 73 fd ff ff       	jmpq   40a419 <_ZZ4mainENKUlmE_clEm+0x249>
  40a6a6:	80 39 01             	cmpb   $0x1,(%rcx)
  40a6a9:	48 19 d2             	sbb    %rdx,%rdx
  40a6ac:	48 81 e2 00 f0 aa dd 	and    $0xffffffffddaaf000,%rdx
  40a6b3:	48 81 c2 00 20 aa 44 	add    $0x44aa2000,%rdx
  40a6ba:	e9 7b fe ff ff       	jmpq   40a53a <_ZZ4mainENKUlmE_clEm+0x36a>
  40a6bf:	90                   	nop

000000000040a6c0 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>:
  40a6c0:	41 56                	push   %r14
  40a6c2:	ba 02 00 00 00       	mov    $0x2,%edx
  40a6c7:	be 10 f0 40 00       	mov    $0x40f010,%esi
  40a6cc:	55                   	push   %rbp
  40a6cd:	48 89 fd             	mov    %rdi,%rbp
  40a6d0:	bf 80 22 41 00       	mov    $0x412280,%edi
  40a6d5:	53                   	push   %rbx
  40a6d6:	c4 c1 f9 7e c6       	vmovq  %xmm0,%r14
  40a6db:	c4 e1 f9 7e cb       	vmovq  %xmm1,%rbx
  40a6e0:	e8 fb 8b ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40a6e5:	48 89 ef             	mov    %rbp,%rdi
  40a6e8:	e8 53 8a ff ff       	callq  403140 <strlen@plt>
  40a6ed:	48 89 c2             	mov    %rax,%rdx
  40a6f0:	48 89 ee             	mov    %rbp,%rsi
  40a6f3:	bf 80 22 41 00       	mov    $0x412280,%edi
  40a6f8:	e8 e3 8b ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40a6fd:	bf 80 22 41 00       	mov    $0x412280,%edi
  40a702:	ba 02 00 00 00       	mov    $0x2,%edx
  40a707:	be 17 f4 40 00       	mov    $0x40f417,%esi
  40a70c:	e8 cf 8b ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40a711:	c4 e1 f9 6e d3       	vmovq  %rbx,%xmm2
  40a716:	c4 c1 f9 6e de       	vmovq  %r14,%xmm3
  40a71b:	5b                   	pop    %rbx
  40a71c:	c5 eb 5c c3          	vsubsd %xmm3,%xmm2,%xmm0
  40a720:	5d                   	pop    %rbp
  40a721:	bf 80 22 41 00       	mov    $0x412280,%edi
  40a726:	41 5e                	pop    %r14
  40a728:	e9 c3 8c ff ff       	jmpq   4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  40a72d:	90                   	nop
  40a72e:	66 90                	xchg   %ax,%ax

000000000040a730 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>:
  40a730:	41 55                	push   %r13
  40a732:	41 54                	push   %r12
  40a734:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  40a738:	55                   	push   %rbp
  40a739:	53                   	push   %rbx
  40a73a:	48 83 ec 18          	sub    $0x18,%rsp
  40a73e:	4c 89 27             	mov    %r12,(%rdi)
  40a741:	48 85 f6             	test   %rsi,%rsi
  40a744:	0f 84 8c 00 00 00    	je     40a7d6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0xa6>
  40a74a:	48 89 fb             	mov    %rdi,%rbx
  40a74d:	48 89 f7             	mov    %rsi,%rdi
  40a750:	48 89 f5             	mov    %rsi,%rbp
  40a753:	e8 e8 89 ff ff       	callq  403140 <strlen@plt>
  40a758:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40a75d:	49 89 c5             	mov    %rax,%r13
  40a760:	48 83 f8 0f          	cmp    $0xf,%rax
  40a764:	77 3a                	ja     40a7a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x70>
  40a766:	48 83 f8 01          	cmp    $0x1,%rax
  40a76a:	75 24                	jne    40a790 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x60>
  40a76c:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
  40a770:	88 53 10             	mov    %dl,0x10(%rbx)
  40a773:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40a777:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
  40a77c:	48 83 c4 18          	add    $0x18,%rsp
  40a780:	5b                   	pop    %rbx
  40a781:	5d                   	pop    %rbp
  40a782:	41 5c                	pop    %r12
  40a784:	41 5d                	pop    %r13
  40a786:	c3                   	retq   
  40a787:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40a78e:	00 00 
  40a790:	48 85 c0             	test   %rax,%rax
  40a793:	74 de                	je     40a773 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  40a795:	eb 27                	jmp    40a7be <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x8e>
  40a797:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40a79e:	00 00 
  40a7a0:	31 d2                	xor    %edx,%edx
  40a7a2:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  40a7a7:	48 89 df             	mov    %rbx,%rdi
  40a7aa:	e8 b1 8c ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40a7af:	48 89 03             	mov    %rax,(%rbx)
  40a7b2:	49 89 c4             	mov    %rax,%r12
  40a7b5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40a7ba:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40a7be:	4c 89 e7             	mov    %r12,%rdi
  40a7c1:	4c 89 ea             	mov    %r13,%rdx
  40a7c4:	48 89 ee             	mov    %rbp,%rsi
  40a7c7:	e8 84 8a ff ff       	callq  403250 <memcpy@plt>
  40a7cc:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40a7d1:	4c 8b 23             	mov    (%rbx),%r12
  40a7d4:	eb 9d                	jmp    40a773 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  40a7d6:	bf 20 f4 40 00       	mov    $0x40f420,%edi
  40a7db:	e8 10 8a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>

000000000040a7e0 <_Z8clock_nsv>:
  40a7e0:	48 83 ec 18          	sub    $0x18,%rsp
  40a7e4:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40a7e8:	48 89 e6             	mov    %rsp,%rsi
  40a7eb:	bf 01 00 00 00       	mov    $0x1,%edi
  40a7f0:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  40a7f5:	e8 86 8a ff ff       	callq  403280 <clock_gettime@plt>
  40a7fa:	48 69 04 24 00 ca 9a 	imul   $0x3b9aca00,(%rsp),%rax
  40a801:	3b 
  40a802:	48 03 44 24 08       	add    0x8(%rsp),%rax
  40a807:	48 83 c4 18          	add    $0x18,%rsp
  40a80b:	c3                   	retq   
  40a80c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040a810 <_Z9perf_openjmm>:
  40a810:	48 83 ec 58          	sub    $0x58,%rsp
  40a814:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40a818:	89 3c 24             	mov    %edi,(%rsp)
  40a81b:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  40a820:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40a826:	48 89 e6             	mov    %rsp,%rsi
  40a829:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
  40a82e:	45 31 c9             	xor    %r9d,%r9d
  40a831:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40a837:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40a83c:	31 d2                	xor    %edx,%edx
  40a83e:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40a843:	31 c0                	xor    %eax,%eax
  40a845:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40a84c:	00 00 
  40a84e:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40a855:	00 
  40a856:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40a85d:	00 00 
  40a85f:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40a866:	00 00 
  40a868:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40a86e:	e8 dd 87 ff ff       	callq  403050 <syscall@plt>
  40a873:	48 83 c4 58          	add    $0x58,%rsp
  40a877:	c3                   	retq   
  40a878:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40a87f:	00 

000000000040a880 <_Z11alloc_bytesmb>:
  40a880:	41 54                	push   %r12
  40a882:	55                   	push   %rbp
  40a883:	48 83 ec 08          	sub    $0x8,%rsp
  40a887:	48 81 ff ff ff 1f 00 	cmp    $0x1fffff,%rdi
  40a88e:	76 48                	jbe    40a8d8 <_Z11alloc_bytesmb+0x58>
  40a890:	40 84 f6             	test   %sil,%sil
  40a893:	74 43                	je     40a8d8 <_Z11alloc_bytesmb+0x58>
  40a895:	48 8d af ff ff 1f 00 	lea    0x1fffff(%rdi),%rbp
  40a89c:	48 81 e5 00 00 e0 ff 	and    $0xffffffffffe00000,%rbp
  40a8a3:	48 89 ee             	mov    %rbp,%rsi
  40a8a6:	bf 00 00 20 00       	mov    $0x200000,%edi
  40a8ab:	e8 60 89 ff ff       	callq  403210 <aligned_alloc@plt>
  40a8b0:	49 89 c4             	mov    %rax,%r12
  40a8b3:	48 85 c0             	test   %rax,%rax
  40a8b6:	74 49                	je     40a901 <_Z11alloc_bytesmb+0x81>
  40a8b8:	48 89 ee             	mov    %rbp,%rsi
  40a8bb:	4c 89 e7             	mov    %r12,%rdi
  40a8be:	ba 0e 00 00 00       	mov    $0xe,%edx
  40a8c3:	e8 48 8a ff ff       	callq  403310 <madvise@plt>
  40a8c8:	48 83 c4 08          	add    $0x8,%rsp
  40a8cc:	5d                   	pop    %rbp
  40a8cd:	4c 89 e0             	mov    %r12,%rax
  40a8d0:	41 5c                	pop    %r12
  40a8d2:	c3                   	retq   
  40a8d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40a8d8:	48 8d 77 3f          	lea    0x3f(%rdi),%rsi
  40a8dc:	48 83 e6 c0          	and    $0xffffffffffffffc0,%rsi
  40a8e0:	bf 40 00 00 00       	mov    $0x40,%edi
  40a8e5:	e8 26 89 ff ff       	callq  403210 <aligned_alloc@plt>
  40a8ea:	49 89 c4             	mov    %rax,%r12
  40a8ed:	48 85 c0             	test   %rax,%rax
  40a8f0:	0f 84 da 8b ff ff    	je     4034d0 <_Z11alloc_bytesmb.cold>
  40a8f6:	48 83 c4 08          	add    $0x8,%rsp
  40a8fa:	5d                   	pop    %rbp
  40a8fb:	4c 89 e0             	mov    %r12,%rax
  40a8fe:	41 5c                	pop    %r12
  40a900:	c3                   	retq   
  40a901:	e9 ca 8b ff ff       	jmpq   4034d0 <_Z11alloc_bytesmb.cold>
  40a906:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a90d:	00 00 00 

000000000040a910 <main._omp_fn.2>:
  40a910:	55                   	push   %rbp
  40a911:	48 89 fd             	mov    %rdi,%rbp
  40a914:	53                   	push   %rbx
  40a915:	48 83 ec 08          	sub    $0x8,%rsp
  40a919:	e8 c2 8a ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40a91e:	48 63 d8             	movslq %eax,%rbx
  40a921:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40a925:	0f b6 75 18          	movzbl 0x18(%rbp),%esi
  40a929:	48 8b 38             	mov    (%rax),%rdi
  40a92c:	e8 4f ff ff ff       	callq  40a880 <_Z11alloc_bytesmb>
  40a931:	48 89 c6             	mov    %rax,%rsi
  40a934:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40a938:	48 8b 38             	mov    (%rax),%rdi
  40a93b:	48 c1 ef 03          	shr    $0x3,%rdi
  40a93f:	74 7f                	je     40a9c0 <main._omp_fn.2+0xb0>
  40a941:	c5 fb 10 1d 87 4c 00 	vmovsd 0x4c87(%rip),%xmm3        # 40f5d0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd0>
  40a948:	00 
  40a949:	c5 fb 10 15 9f 4d 00 	vmovsd 0x4d9f(%rip),%xmm2        # 40f6f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  40a950:	00 
  40a951:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
  40a955:	31 c9                	xor    %ecx,%ecx
  40a957:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  40a95b:	49 b8 f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r8
  40a962:	f0 f0 f0 
  40a965:	0f 1f 00             	nopl   (%rax)
  40a968:	48 89 c8             	mov    %rcx,%rax
  40a96b:	49 f7 e0             	mul    %r8
  40a96e:	48 89 d0             	mov    %rdx,%rax
  40a971:	48 c1 e8 04          	shr    $0x4,%rax
  40a975:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  40a979:	48 01 c2             	add    %rax,%rdx
  40a97c:	48 89 c8             	mov    %rcx,%rax
  40a97f:	48 29 d0             	sub    %rdx,%rax
  40a982:	c4 e1 db 2a c0       	vcvtsi2sd %rax,%xmm4,%xmm0
  40a987:	c4 e2 e9 99 c3       	vfmadd132sd %xmm3,%xmm2,%xmm0
  40a98c:	c5 fb 11 04 ce       	vmovsd %xmm0,(%rsi,%rcx,8)
  40a991:	48 ff c1             	inc    %rcx
  40a994:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40a998:	48 39 cf             	cmp    %rcx,%rdi
  40a99b:	75 cb                	jne    40a968 <main._omp_fn.2+0x58>
  40a99d:	48 8b 45 00          	mov    0x0(%rbp),%rax
  40a9a1:	48 8b 00             	mov    (%rax),%rax
  40a9a4:	48 89 34 d8          	mov    %rsi,(%rax,%rbx,8)
  40a9a8:	48 8b 45 08          	mov    0x8(%rbp),%rax
  40a9ac:	48 8b 00             	mov    (%rax),%rax
  40a9af:	c5 fb 11 0c d8       	vmovsd %xmm1,(%rax,%rbx,8)
  40a9b4:	48 83 c4 08          	add    $0x8,%rsp
  40a9b8:	5b                   	pop    %rbx
  40a9b9:	5d                   	pop    %rbp
  40a9ba:	c3                   	retq   
  40a9bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40a9c0:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  40a9c4:	eb d7                	jmp    40a99d <main._omp_fn.2+0x8d>
  40a9c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a9cd:	00 00 00 

000000000040a9d0 <_Z6windowid>:
  40a9d0:	55                   	push   %rbp
  40a9d1:	48 89 e5             	mov    %rsp,%rbp
  40a9d4:	41 57                	push   %r15
  40a9d6:	41 56                	push   %r14
  40a9d8:	41 55                	push   %r13
  40a9da:	41 54                	push   %r12
  40a9dc:	41 89 fc             	mov    %edi,%r12d
  40a9df:	bf 25 f0 40 00       	mov    $0x40f025,%edi
  40a9e4:	53                   	push   %rbx
  40a9e5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40a9e9:	48 81 ec a0 03 00 00 	sub    $0x3a0,%rsp
  40a9f0:	e8 2b 89 ff ff       	callq  403320 <getenv@plt>
  40a9f5:	48 85 c0             	test   %rax,%rax
  40a9f8:	0f 84 0f 1c 00 00    	je     40c60d <_Z6windowid+0x1c3d>
  40a9fe:	48 89 c7             	mov    %rax,%rdi
  40aa01:	49 89 c5             	mov    %rax,%r13
  40aa04:	e8 37 87 ff ff       	callq  403140 <strlen@plt>
  40aa09:	48 8d 8c 24 00 01 00 	lea    0x100(%rsp),%rcx
  40aa10:	00 
  40aa11:	48 89 8c 24 f0 00 00 	mov    %rcx,0xf0(%rsp)
  40aa18:	00 
  40aa19:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40aa20:	00 
  40aa21:	49 89 c6             	mov    %rax,%r14
  40aa24:	48 83 f8 0f          	cmp    $0xf,%rax
  40aa28:	0f 87 92 01 00 00    	ja     40abc0 <_Z6windowid+0x1f0>
  40aa2e:	48 83 f8 01          	cmp    $0x1,%rax
  40aa32:	0f 85 6a 1d 00 00    	jne    40c7a2 <_Z6windowid+0x1dd2>
  40aa38:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40aa3d:	88 94 24 00 01 00 00 	mov    %dl,0x100(%rsp)
  40aa44:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40aa4b:	00 
  40aa4c:	48 89 84 24 f8 00 00 	mov    %rax,0xf8(%rsp)
  40aa53:	00 
  40aa54:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40aa58:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  40aa5f:	00 
  40aa60:	e8 4b 86 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40aa65:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40aa6c:	00 
  40aa6d:	e8 ce 87 ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40aa72:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40aa79:	00 
  40aa7a:	e8 41 87 ff ff       	callq  4031c0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@plt>
  40aa7f:	bf 36 f0 40 00       	mov    $0x40f036,%edi
  40aa84:	e8 97 88 ff ff       	callq  403320 <getenv@plt>
  40aa89:	49 89 c5             	mov    %rax,%r13
  40aa8c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40aa93:	00 
  40aa94:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40aa9b:	00 
  40aa9c:	4d 85 ed             	test   %r13,%r13
  40aa9f:	0f 84 61 20 00 00    	je     40cb06 <_Z6windowid+0x2136>
  40aaa5:	4c 89 ef             	mov    %r13,%rdi
  40aaa8:	e8 93 86 ff ff       	callq  403140 <strlen@plt>
  40aaad:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40aab4:	00 
  40aab5:	49 89 c6             	mov    %rax,%r14
  40aab8:	48 83 f8 0f          	cmp    $0xf,%rax
  40aabc:	0f 87 86 1c 00 00    	ja     40c748 <_Z6windowid+0x1d78>
  40aac2:	48 83 f8 01          	cmp    $0x1,%rax
  40aac6:	0f 85 59 1c 00 00    	jne    40c725 <_Z6windowid+0x1d55>
  40aacc:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  40aad3:	00 
  40aad4:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40aad9:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  40aade:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  40aae5:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40aaec:	00 
  40aaed:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40aaf4:	00 
  40aaf5:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40aaf9:	e8 42 85 ff ff       	callq  403040 <__errno_location@plt>
  40aafe:	48 8b 9c 24 80 01 00 	mov    0x180(%rsp),%rbx
  40ab05:	00 
  40ab06:	44 8b 28             	mov    (%rax),%r13d
  40ab09:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40ab0f:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40ab14:	ba 0a 00 00 00       	mov    $0xa,%edx
  40ab19:	48 89 df             	mov    %rbx,%rdi
  40ab1c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  40ab21:	e8 2a 88 ff ff       	callq  403350 <strtol@plt>
  40ab26:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  40ab2b:	48 3b 9c 24 50 01 00 	cmp    0x150(%rsp),%rbx
  40ab32:	00 
  40ab33:	0f 84 d7 1f 00 00    	je     40cb10 <_Z6windowid+0x2140>
  40ab39:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40ab3e:	8b 10                	mov    (%rax),%edx
  40ab40:	83 fa 22             	cmp    $0x22,%edx
  40ab43:	0f 84 d1 1f 00 00    	je     40cb1a <_Z6windowid+0x214a>
  40ab49:	b8 00 00 00 80       	mov    $0x80000000,%eax
  40ab4e:	48 03 44 24 48       	add    0x48(%rsp),%rax
  40ab53:	48 c1 e8 20          	shr    $0x20,%rax
  40ab57:	0f 85 bd 1f 00 00    	jne    40cb1a <_Z6windowid+0x214a>
  40ab5d:	85 d2                	test   %edx,%edx
  40ab5f:	75 08                	jne    40ab69 <_Z6windowid+0x199>
  40ab61:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40ab66:	44 89 28             	mov    %r13d,(%rax)
  40ab69:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40ab70:	00 
  40ab71:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40ab78:	00 
  40ab79:	48 39 c7             	cmp    %rax,%rdi
  40ab7c:	74 11                	je     40ab8f <_Z6windowid+0x1bf>
  40ab7e:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40ab85:	00 
  40ab86:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40ab8a:	e8 21 87 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40ab8f:	bf 9a f0 40 00       	mov    $0x40f09a,%edi
  40ab94:	e8 87 87 ff ff       	callq  403320 <getenv@plt>
  40ab99:	49 89 c5             	mov    %rax,%r13
  40ab9c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40aba3:	00 
  40aba4:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40abab:	00 
  40abac:	4d 85 ed             	test   %r13,%r13
  40abaf:	75 61                	jne    40ac12 <_Z6windowid+0x242>
  40abb1:	bf 20 f4 40 00       	mov    $0x40f420,%edi
  40abb6:	e8 35 86 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40abbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40abc0:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40abc7:	00 
  40abc8:	31 d2                	xor    %edx,%edx
  40abca:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40abd1:	00 
  40abd2:	e8 89 88 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40abd7:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
  40abde:	00 
  40abdf:	48 89 c7             	mov    %rax,%rdi
  40abe2:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40abe9:	00 
  40abea:	48 89 84 24 00 01 00 	mov    %rax,0x100(%rsp)
  40abf1:	00 
  40abf2:	4c 89 f2             	mov    %r14,%rdx
  40abf5:	4c 89 ee             	mov    %r13,%rsi
  40abf8:	e8 53 86 ff ff       	callq  403250 <memcpy@plt>
  40abfd:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40ac04:	00 
  40ac05:	48 8b 94 24 f0 00 00 	mov    0xf0(%rsp),%rdx
  40ac0c:	00 
  40ac0d:	e9 3a fe ff ff       	jmpq   40aa4c <_Z6windowid+0x7c>
  40ac12:	4c 89 ef             	mov    %r13,%rdi
  40ac15:	e8 26 85 ff ff       	callq  403140 <strlen@plt>
  40ac1a:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40ac21:	00 
  40ac22:	49 89 c6             	mov    %rax,%r14
  40ac25:	48 83 f8 0f          	cmp    $0xf,%rax
  40ac29:	0f 87 91 1a 00 00    	ja     40c6c0 <_Z6windowid+0x1cf0>
  40ac2f:	48 83 f8 01          	cmp    $0x1,%rax
  40ac33:	0f 85 d6 1a 00 00    	jne    40c70f <_Z6windowid+0x1d3f>
  40ac39:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40ac3e:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  40ac45:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40ac4c:	00 
  40ac4d:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40ac54:	00 
  40ac55:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40ac59:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40ac5e:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40ac63:	4c 8b ac 24 80 01 00 	mov    0x180(%rsp),%r13
  40ac6a:	00 
  40ac6b:	8b 18                	mov    (%rax),%ebx
  40ac6d:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40ac73:	ba 0a 00 00 00       	mov    $0xa,%edx
  40ac78:	4c 89 ef             	mov    %r13,%rdi
  40ac7b:	e8 d0 86 ff ff       	callq  403350 <strtol@plt>
  40ac80:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40ac85:	4c 3b ac 24 50 01 00 	cmp    0x150(%rsp),%r13
  40ac8c:	00 
  40ac8d:	0f 84 7d 1f 00 00    	je     40cc10 <_Z6windowid+0x2240>
  40ac93:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40ac98:	8b 10                	mov    (%rax),%edx
  40ac9a:	83 fa 22             	cmp    $0x22,%edx
  40ac9d:	0f 84 30 1e 00 00    	je     40cad3 <_Z6windowid+0x2103>
  40aca3:	b8 00 00 00 80       	mov    $0x80000000,%eax
  40aca8:	48 03 44 24 28       	add    0x28(%rsp),%rax
  40acad:	48 c1 e8 20          	shr    $0x20,%rax
  40acb1:	0f 85 1c 1e 00 00    	jne    40cad3 <_Z6windowid+0x2103>
  40acb7:	85 d2                	test   %edx,%edx
  40acb9:	75 07                	jne    40acc2 <_Z6windowid+0x2f2>
  40acbb:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40acc0:	89 18                	mov    %ebx,(%rax)
  40acc2:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40acc9:	00 
  40acca:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40acd1:	00 
  40acd2:	48 39 c7             	cmp    %rax,%rdi
  40acd5:	74 11                	je     40ace8 <_Z6windowid+0x318>
  40acd7:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40acde:	00 
  40acdf:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40ace3:	e8 c8 85 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40ace8:	44 89 e0             	mov    %r12d,%eax
  40aceb:	c1 f8 1f             	sar    $0x1f,%eax
  40acee:	45 89 e5             	mov    %r12d,%r13d
  40acf1:	41 31 c4             	xor    %eax,%r12d
  40acf4:	41 29 c4             	sub    %eax,%r12d
  40acf7:	41 c1 ed 1f          	shr    $0x1f,%r13d
  40acfb:	41 83 fc 09          	cmp    $0x9,%r12d
  40acff:	0f 86 88 1d 00 00    	jbe    40ca8d <_Z6windowid+0x20bd>
  40ad05:	41 83 fc 63          	cmp    $0x63,%r12d
  40ad09:	0f 86 88 1d 00 00    	jbe    40ca97 <_Z6windowid+0x20c7>
  40ad0f:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  40ad16:	0f 86 85 1d 00 00    	jbe    40caa1 <_Z6windowid+0x20d1>
  40ad1c:	44 89 e2             	mov    %r12d,%edx
  40ad1f:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  40ad26:	0f 86 7f 1d 00 00    	jbe    40caab <_Z6windowid+0x20db>
  40ad2c:	bb 01 00 00 00       	mov    $0x1,%ebx
  40ad31:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  40ad38:	c5 6d 34 
  40ad3b:	eb 24                	jmp    40ad61 <_Z6windowid+0x391>
  40ad3d:	0f 1f 00             	nopl   (%rax)
  40ad40:	83 fa 63             	cmp    $0x63,%edx
  40ad43:	0f 86 44 1c 00 00    	jbe    40c98d <_Z6windowid+0x1fbd>
  40ad49:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40ad4f:	0f 86 30 1c 00 00    	jbe    40c985 <_Z6windowid+0x1fb5>
  40ad55:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40ad5b:	0f 86 34 1c 00 00    	jbe    40c995 <_Z6windowid+0x1fc5>
  40ad61:	48 89 d0             	mov    %rdx,%rax
  40ad64:	48 89 d1             	mov    %rdx,%rcx
  40ad67:	48 f7 e6             	mul    %rsi
  40ad6a:	89 d8                	mov    %ebx,%eax
  40ad6c:	83 c3 04             	add    $0x4,%ebx
  40ad6f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40ad73:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40ad7a:	77 c4                	ja     40ad40 <_Z6windowid+0x370>
  40ad7c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40ad83:	00 
  40ad84:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  40ad89:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40ad8e:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40ad95:	00 
  40ad96:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40ad9d:	00 
  40ad9e:	e8 4d 85 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40ada3:	45 0f b6 ed          	movzbl %r13b,%r13d
  40ada7:	4c 03 ac 24 80 01 00 	add    0x180(%rsp),%r13
  40adae:	00 
  40adaf:	ff cb                	dec    %ebx
  40adb1:	41 83 fc 63          	cmp    $0x63,%r12d
  40adb5:	76 52                	jbe    40ae09 <_Z6windowid+0x439>
  40adb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40adbe:	00 00 
  40adc0:	44 89 e2             	mov    %r12d,%edx
  40adc3:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40adca:	44 89 e0             	mov    %r12d,%eax
  40adcd:	48 c1 ea 25          	shr    $0x25,%rdx
  40add1:	6b ca 64             	imul   $0x64,%edx,%ecx
  40add4:	29 c8                	sub    %ecx,%eax
  40add6:	01 c0                	add    %eax,%eax
  40add8:	8d 70 01             	lea    0x1(%rax),%esi
  40addb:	0f b6 b6 00 f5 40 00 	movzbl 0x40f500(%rsi),%esi
  40ade2:	0f b6 80 00 f5 40 00 	movzbl 0x40f500(%rax),%eax
  40ade9:	44 89 e1             	mov    %r12d,%ecx
  40adec:	41 89 d4             	mov    %edx,%r12d
  40adef:	89 da                	mov    %ebx,%edx
  40adf1:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  40adf6:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40adf9:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  40adfe:	83 eb 02             	sub    $0x2,%ebx
  40ae01:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  40ae07:	77 b7                	ja     40adc0 <_Z6windowid+0x3f0>
  40ae09:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40ae0e:	41 83 fc 09          	cmp    $0x9,%r12d
  40ae12:	76 1c                	jbe    40ae30 <_Z6windowid+0x460>
  40ae14:	45 01 e4             	add    %r12d,%r12d
  40ae17:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40ae1c:	0f b6 80 00 f5 40 00 	movzbl 0x40f500(%rax),%eax
  40ae23:	41 88 45 01          	mov    %al,0x1(%r13)
  40ae27:	41 0f b6 84 24 00 f5 	movzbl 0x40f500(%r12),%eax
  40ae2e:	40 00 
  40ae30:	41 88 45 00          	mov    %al,0x0(%r13)
  40ae34:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  40ae3a:	b9 4f f0 40 00       	mov    $0x40f04f,%ecx
  40ae3f:	31 d2                	xor    %edx,%edx
  40ae41:	31 f6                	xor    %esi,%esi
  40ae43:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40ae4a:	00 
  40ae4b:	e8 70 85 ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40ae50:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
  40ae57:	00 
  40ae58:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  40ae5d:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40ae61:	48 8b 08             	mov    (%rax),%rcx
  40ae64:	48 39 d1             	cmp    %rdx,%rcx
  40ae67:	0f 84 a1 1a 00 00    	je     40c90e <_Z6windowid+0x1f3e>
  40ae6d:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  40ae72:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40ae76:	48 89 8c 24 80 00 00 	mov    %rcx,0x80(%rsp)
  40ae7d:	00 
  40ae7e:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40ae82:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40ae86:	48 89 4c 24 78       	mov    %rcx,0x78(%rsp)
  40ae8b:	48 89 10             	mov    %rdx,(%rax)
  40ae8e:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40ae95:	00 
  40ae96:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40ae9d:	00 
  40ae9e:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40aea5:	00 
  40aea6:	48 39 c7             	cmp    %rax,%rdi
  40aea9:	74 11                	je     40aebc <_Z6windowid+0x4ec>
  40aeab:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40aeb2:	00 
  40aeb3:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40aeb7:	e8 f4 83 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40aebc:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
  40aec1:	41 89 c5             	mov    %eax,%r13d
  40aec4:	41 89 c4             	mov    %eax,%r12d
  40aec7:	41 f7 dc             	neg    %r12d
  40aeca:	41 c1 ed 1f          	shr    $0x1f,%r13d
  40aece:	48 85 c0             	test   %rax,%rax
  40aed1:	44 0f 49 e0          	cmovns %eax,%r12d
  40aed5:	41 83 fc 09          	cmp    $0x9,%r12d
  40aed9:	0f 86 ea 1b 00 00    	jbe    40cac9 <_Z6windowid+0x20f9>
  40aedf:	41 83 fc 63          	cmp    $0x63,%r12d
  40aee3:	0f 86 9a 1b 00 00    	jbe    40ca83 <_Z6windowid+0x20b3>
  40aee9:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  40aef0:	0f 86 bf 1b 00 00    	jbe    40cab5 <_Z6windowid+0x20e5>
  40aef6:	44 89 e2             	mov    %r12d,%edx
  40aef9:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  40af00:	0f 86 b9 1b 00 00    	jbe    40cabf <_Z6windowid+0x20ef>
  40af06:	bb 01 00 00 00       	mov    $0x1,%ebx
  40af0b:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  40af12:	c5 6d 34 
  40af15:	eb 2a                	jmp    40af41 <_Z6windowid+0x571>
  40af17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40af1e:	00 00 
  40af20:	83 fa 63             	cmp    $0x63,%edx
  40af23:	0f 86 54 1a 00 00    	jbe    40c97d <_Z6windowid+0x1fad>
  40af29:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40af2f:	0f 86 40 1a 00 00    	jbe    40c975 <_Z6windowid+0x1fa5>
  40af35:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40af3b:	0f 86 5c 1a 00 00    	jbe    40c99d <_Z6windowid+0x1fcd>
  40af41:	48 89 d0             	mov    %rdx,%rax
  40af44:	48 89 d1             	mov    %rdx,%rcx
  40af47:	48 f7 e6             	mul    %rsi
  40af4a:	89 d8                	mov    %ebx,%eax
  40af4c:	83 c3 04             	add    $0x4,%ebx
  40af4f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40af53:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40af5a:	77 c4                	ja     40af20 <_Z6windowid+0x550>
  40af5c:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40af63:	00 
  40af64:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  40af69:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40af6e:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40af75:	00 
  40af76:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  40af7d:	00 
  40af7e:	e8 6d 83 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40af83:	45 0f b6 ed          	movzbl %r13b,%r13d
  40af87:	4c 03 ac 24 b0 00 00 	add    0xb0(%rsp),%r13
  40af8e:	00 
  40af8f:	ff cb                	dec    %ebx
  40af91:	41 83 fc 63          	cmp    $0x63,%r12d
  40af95:	76 52                	jbe    40afe9 <_Z6windowid+0x619>
  40af97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40af9e:	00 00 
  40afa0:	44 89 e2             	mov    %r12d,%edx
  40afa3:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40afaa:	44 89 e0             	mov    %r12d,%eax
  40afad:	48 c1 ea 25          	shr    $0x25,%rdx
  40afb1:	6b ca 64             	imul   $0x64,%edx,%ecx
  40afb4:	29 c8                	sub    %ecx,%eax
  40afb6:	01 c0                	add    %eax,%eax
  40afb8:	8d 70 01             	lea    0x1(%rax),%esi
  40afbb:	0f b6 b6 00 f5 40 00 	movzbl 0x40f500(%rsi),%esi
  40afc2:	0f b6 80 00 f5 40 00 	movzbl 0x40f500(%rax),%eax
  40afc9:	44 89 e1             	mov    %r12d,%ecx
  40afcc:	41 89 d4             	mov    %edx,%r12d
  40afcf:	89 da                	mov    %ebx,%edx
  40afd1:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  40afd6:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40afd9:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  40afde:	83 eb 02             	sub    $0x2,%ebx
  40afe1:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  40afe7:	77 b7                	ja     40afa0 <_Z6windowid+0x5d0>
  40afe9:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40afee:	41 83 fc 09          	cmp    $0x9,%r12d
  40aff2:	76 1c                	jbe    40b010 <_Z6windowid+0x640>
  40aff4:	45 01 e4             	add    %r12d,%r12d
  40aff7:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40affc:	0f b6 80 00 f5 40 00 	movzbl 0x40f500(%rax),%eax
  40b003:	41 88 45 01          	mov    %al,0x1(%r13)
  40b007:	41 0f b6 84 24 00 f5 	movzbl 0x40f500(%r12),%eax
  40b00e:	40 00 
  40b010:	41 88 45 00          	mov    %al,0x0(%r13)
  40b014:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40b01b:	00 
  40b01c:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40b023:	00 
  40b024:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40b029:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40b02e:	4c 89 e8             	mov    %r13,%rax
  40b031:	4c 01 e0             	add    %r12,%rax
  40b034:	74 09                	je     40b03f <_Z6windowid+0x66f>
  40b036:	4d 85 ed             	test   %r13,%r13
  40b039:	0f 84 db 1b 00 00    	je     40cc1a <_Z6windowid+0x224a>
  40b03f:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40b046:	00 
  40b047:	49 83 fc 0f          	cmp    $0xf,%r12
  40b04b:	0f 87 31 18 00 00    	ja     40c882 <_Z6windowid+0x1eb2>
  40b051:	49 83 fc 01          	cmp    $0x1,%r12
  40b055:	0f 85 11 18 00 00    	jne    40c86c <_Z6windowid+0x1e9c>
  40b05b:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40b060:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  40b067:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40b06e:	00 
  40b06f:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  40b076:	00 
  40b077:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40b07c:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40b083:	ff ff 3f 
  40b086:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  40b08d:	00 
  40b08e:	48 83 f8 05          	cmp    $0x5,%rax
  40b092:	0f 86 5a 1b 00 00    	jbe    40cbf2 <_Z6windowid+0x2222>
  40b098:	ba 06 00 00 00       	mov    $0x6,%edx
  40b09d:	be 53 f0 40 00       	mov    $0x40f053,%esi
  40b0a2:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40b0a9:	00 
  40b0aa:	e8 41 80 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40b0af:	4c 8b 8c 24 90 00 00 	mov    0x90(%rsp),%r9
  40b0b6:	00 
  40b0b7:	b8 0f 00 00 00       	mov    $0xf,%eax
  40b0bc:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  40b0c3:	00 
  40b0c4:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  40b0cb:	00 
  40b0cc:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  40b0d3:	00 
  40b0d4:	49 39 d9             	cmp    %rbx,%r9
  40b0d7:	48 89 c7             	mov    %rax,%rdi
  40b0da:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  40b0e1:	00 00 
  40b0e3:	49 8d 0c 10          	lea    (%r8,%rdx,1),%rcx
  40b0e7:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  40b0ee:	00 
  40b0ef:	48 39 f9             	cmp    %rdi,%rcx
  40b0f2:	76 1d                	jbe    40b111 <_Z6windowid+0x741>
  40b0f4:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  40b0fb:	00 
  40b0fc:	48 39 de             	cmp    %rbx,%rsi
  40b0ff:	48 0f 45 84 24 c0 00 	cmovne 0xc0(%rsp),%rax
  40b106:	00 00 
  40b108:	48 39 c1             	cmp    %rax,%rcx
  40b10b:	0f 86 4b 18 00 00    	jbe    40c95c <_Z6windowid+0x1f8c>
  40b111:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40b118:	00 
  40b119:	e8 d2 7f ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40b11e:	4c 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%r15
  40b125:	00 
  40b126:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40b12d:	00 
  40b12e:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40b132:	48 8b 08             	mov    (%rax),%rcx
  40b135:	48 39 d1             	cmp    %rdx,%rcx
  40b138:	0f 84 bd 17 00 00    	je     40c8fb <_Z6windowid+0x1f2b>
  40b13e:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  40b145:	00 
  40b146:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40b14a:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  40b151:	00 
  40b152:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40b156:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  40b15d:	00 
  40b15e:	48 89 10             	mov    %rdx,(%rax)
  40b161:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40b165:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40b16c:	00 
  40b16d:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40b174:	00 
  40b175:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40b17c:	00 
  40b17d:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40b184:	00 
  40b185:	4c 39 f8             	cmp    %r15,%rax
  40b188:	0f 84 56 17 00 00    	je     40c8e4 <_Z6windowid+0x1f14>
  40b18e:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40b195:	00 
  40b196:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40b19d:	00 
  40b19e:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40b1a5:	00 
  40b1a6:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40b1ad:	00 
  40b1ae:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40b1b5:	00 
  40b1b6:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
  40b1bd:	00 
  40b1be:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40b1c5:	00 
  40b1c6:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40b1cd:	00 00 00 00 00 
  40b1d2:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40b1d9:	00 
  40b1da:	e8 d1 7e ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40b1df:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40b1e6:	00 
  40b1e7:	e8 54 80 ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40b1ec:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40b1f3:	00 
  40b1f4:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b1fb:	00 
  40b1fc:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40b203:	00 
  40b204:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b20b:	00 
  40b20c:	4c 89 e8             	mov    %r13,%rax
  40b20f:	4c 01 e0             	add    %r12,%rax
  40b212:	74 09                	je     40b21d <_Z6windowid+0x84d>
  40b214:	4d 85 ed             	test   %r13,%r13
  40b217:	0f 84 e9 19 00 00    	je     40cc06 <_Z6windowid+0x2236>
  40b21d:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40b224:	00 
  40b225:	49 83 fc 0f          	cmp    $0xf,%r12
  40b229:	0f 87 ee 15 00 00    	ja     40c81d <_Z6windowid+0x1e4d>
  40b22f:	49 83 fc 01          	cmp    $0x1,%r12
  40b233:	0f 85 ce 15 00 00    	jne    40c807 <_Z6windowid+0x1e37>
  40b239:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40b23e:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40b245:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b24c:	00 
  40b24d:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40b254:	00 
  40b255:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40b25a:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40b261:	00 
  40b262:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40b269:	00 
  40b26a:	e8 31 82 ff ff       	callq  4034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40b26f:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40b274:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  40b27b:	00 
  40b27c:	e8 ff 7d ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40b281:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40b288:	00 
  40b289:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40b290:	00 
  40b291:	e8 3a 7e ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40b296:	31 c9                	xor    %ecx,%ecx
  40b298:	66 89 8c 24 58 03 00 	mov    %cx,0x358(%rsp)
  40b29f:	00 
  40b2a0:	48 8b 05 81 69 00 00 	mov    0x6981(%rip),%rax        # 411c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40b2a7:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40b2ab:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  40b2b2:	00 00 
  40b2b4:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b2bb:	00 
  40b2bc:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b2c3:	00 
  40b2c4:	48 03 78 e8          	add    -0x18(%rax),%rdi
  40b2c8:	48 8b 05 61 69 00 00 	mov    0x6961(%rip),%rax        # 411c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40b2cf:	31 f6                	xor    %esi,%esi
  40b2d1:	48 c7 84 24 78 02 00 	movq   $0x411b90,0x278(%rsp)
  40b2d8:	00 90 1b 41 00 
  40b2dd:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  40b2e4:	00 00 00 00 00 
  40b2e9:	48 89 07             	mov    %rax,(%rdi)
  40b2ec:	c5 f8 77             	vzeroupper 
  40b2ef:	e8 4c 80 ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40b2f4:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40b2fb:	00 
  40b2fc:	48 c7 84 24 80 01 00 	movq   $0x411d28,0x180(%rsp)
  40b303:	00 28 1d 41 00 
  40b308:	48 c7 84 24 78 02 00 	movq   $0x411d50,0x278(%rsp)
  40b30f:	00 50 1d 41 00 
  40b314:	e8 b7 7f ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40b319:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  40b320:	00 
  40b321:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40b328:	00 
  40b329:	e8 12 80 ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40b32e:	ba 10 00 00 00       	mov    $0x10,%edx
  40b333:	4c 89 e6             	mov    %r12,%rsi
  40b336:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40b33d:	00 
  40b33e:	e8 2d 7f ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40b343:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40b34a:	00 
  40b34b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b352:	00 
  40b353:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40b357:	48 85 c0             	test   %rax,%rax
  40b35a:	0f 84 74 15 00 00    	je     40c8d4 <_Z6windowid+0x1f04>
  40b360:	31 f6                	xor    %esi,%esi
  40b362:	e8 b9 80 ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40b367:	ba 28 1d 41 00       	mov    $0x411d28,%edx
  40b36c:	b8 a0 1c 41 00       	mov    $0x411ca0,%eax
  40b371:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
  40b376:	c4 e3 e9 22 c8 01    	vpinsrq $0x1,%rax,%xmm2,%xmm1
  40b37c:	be 31 00 00 00       	mov    $0x31,%esi
  40b381:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b388:	00 
  40b389:	c5 f9 7f 4c 24 10    	vmovdqa %xmm1,0x10(%rsp)
  40b38f:	e8 9c 7c ff ff       	callq  403030 <_ZNSo3putEc@plt>
  40b394:	c5 f9 6f 74 24 10    	vmovdqa 0x10(%rsp),%xmm6
  40b39a:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40b3a1:	00 
  40b3a2:	48 c7 84 24 78 02 00 	movq   $0x411d50,0x278(%rsp)
  40b3a9:	00 50 1d 41 00 
  40b3ae:	c5 f9 7f b4 24 80 01 	vmovdqa %xmm6,0x180(%rsp)
  40b3b5:	00 00 
  40b3b7:	e8 b4 7c ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40b3bc:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  40b3c3:	00 
  40b3c4:	e8 b7 80 ff ff       	callq  403480 <_ZNSt12__basic_fileIcED1Ev@plt>
  40b3c9:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  40b3d0:	00 
  40b3d1:	48 c7 84 24 88 01 00 	movq   $0x411bb0,0x188(%rsp)
  40b3d8:	00 b0 1b 41 00 
  40b3dd:	e8 7e 7f ff ff       	callq  403360 <_ZNSt6localeD1Ev@plt>
  40b3e2:	48 8b 05 3f 68 00 00 	mov    0x683f(%rip),%rax        # 411c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40b3e9:	48 8b 0d 40 68 00 00 	mov    0x6840(%rip),%rcx        # 411c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40b3f0:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b3f7:	00 
  40b3f8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40b3fc:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40b403:	00 
  40b404:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  40b40b:	00 
  40b40c:	48 c7 84 24 78 02 00 	movq   $0x411b90,0x278(%rsp)
  40b413:	00 90 1b 41 00 
  40b418:	e8 e3 7c ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40b41d:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40b424:	00 
  40b425:	48 85 f6             	test   %rsi,%rsi
  40b428:	74 0d                	je     40b437 <_Z6windowid+0xa67>
  40b42a:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40b431:	00 
  40b432:	e8 69 7c ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40b437:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40b43e:	00 
  40b43f:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b446:	00 
  40b447:	48 39 c7             	cmp    %rax,%rdi
  40b44a:	74 11                	je     40b45d <_Z6windowid+0xa8d>
  40b44c:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40b453:	00 
  40b454:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b458:	e8 53 7e ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b45d:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  40b464:	00 
  40b465:	48 85 f6             	test   %rsi,%rsi
  40b468:	74 0d                	je     40b477 <_Z6windowid+0xaa7>
  40b46a:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40b471:	00 
  40b472:	e8 29 7c ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40b477:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  40b47e:	00 
  40b47f:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40b486:	00 
  40b487:	48 39 c7             	cmp    %rax,%rdi
  40b48a:	74 11                	je     40b49d <_Z6windowid+0xacd>
  40b48c:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  40b493:	00 
  40b494:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b498:	e8 13 7e ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b49d:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40b4a4:	00 
  40b4a5:	4c 39 ff             	cmp    %r15,%rdi
  40b4a8:	74 11                	je     40b4bb <_Z6windowid+0xaeb>
  40b4aa:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40b4b1:	00 
  40b4b2:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b4b6:	e8 f5 7d ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b4bb:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  40b4c2:	00 
  40b4c3:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40b4ca:	00 
  40b4cb:	48 39 c7             	cmp    %rax,%rdi
  40b4ce:	74 11                	je     40b4e1 <_Z6windowid+0xb11>
  40b4d0:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40b4d7:	00 
  40b4d8:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b4dc:	e8 cf 7d ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b4e1:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40b4e8:	00 
  40b4e9:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40b4f0:	00 
  40b4f1:	48 39 c7             	cmp    %rax,%rdi
  40b4f4:	74 11                	je     40b507 <_Z6windowid+0xb37>
  40b4f6:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  40b4fd:	00 
  40b4fe:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b502:	e8 a9 7d ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b507:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40b50c:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b513:	00 
  40b514:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40b519:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b520:	00 
  40b521:	4c 89 e8             	mov    %r13,%rax
  40b524:	4c 01 e0             	add    %r12,%rax
  40b527:	74 09                	je     40b532 <_Z6windowid+0xb62>
  40b529:	4d 85 ed             	test   %r13,%r13
  40b52c:	0f 84 f2 15 00 00    	je     40cb24 <_Z6windowid+0x2154>
  40b532:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40b539:	00 
  40b53a:	49 83 fc 0f          	cmp    $0xf,%r12
  40b53e:	0f 87 74 12 00 00    	ja     40c7b8 <_Z6windowid+0x1de8>
  40b544:	49 83 fc 01          	cmp    $0x1,%r12
  40b548:	0f 85 5c 11 00 00    	jne    40c6aa <_Z6windowid+0x1cda>
  40b54e:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40b553:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40b55a:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b561:	00 
  40b562:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40b569:	00 
  40b56a:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40b56f:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40b576:	ff ff 3f 
  40b579:	48 2b 84 24 58 01 00 	sub    0x158(%rsp),%rax
  40b580:	00 
  40b581:	48 83 f8 05          	cmp    $0x5,%rax
  40b585:	0f 86 a3 15 00 00    	jbe    40cb2e <_Z6windowid+0x215e>
  40b58b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40b590:	ba 06 00 00 00       	mov    $0x6,%edx
  40b595:	be 5a f0 40 00       	mov    $0x40f05a,%esi
  40b59a:	e8 51 7b ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40b59f:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b5a6:	00 
  40b5a7:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b5ae:	00 
  40b5af:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40b5b6:	00 
  40b5b7:	48 8d 8c 24 60 01 00 	lea    0x160(%rsp),%rcx
  40b5be:	00 
  40b5bf:	48 39 c8             	cmp    %rcx,%rax
  40b5c2:	0f 84 59 13 00 00    	je     40c921 <_Z6windowid+0x1f51>
  40b5c8:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b5cf:	00 
  40b5d0:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40b5d7:	00 
  40b5d8:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40b5df:	00 
  40b5e0:	48 8b 84 24 58 01 00 	mov    0x158(%rsp),%rax
  40b5e7:	00 
  40b5e8:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40b5ef:	00 
  40b5f0:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40b5f7:	00 
  40b5f8:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b5ff:	00 
  40b600:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b607:	00 
  40b608:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
  40b60f:	00 00 00 00 00 
  40b614:	c6 84 24 60 01 00 00 	movb   $0x0,0x160(%rsp)
  40b61b:	00 
  40b61c:	e8 8f 7a ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40b621:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b628:	00 
  40b629:	e8 12 7c ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40b62e:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40b635:	00 
  40b636:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40b63d:	00 
  40b63e:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40b645:	00 
  40b646:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40b64d:	00 
  40b64e:	4c 89 e8             	mov    %r13,%rax
  40b651:	4c 01 e0             	add    %r12,%rax
  40b654:	74 09                	je     40b65f <_Z6windowid+0xc8f>
  40b656:	4d 85 ed             	test   %r13,%r13
  40b659:	0f 84 d9 14 00 00    	je     40cb38 <_Z6windowid+0x2168>
  40b65f:	4c 89 a4 24 d0 00 00 	mov    %r12,0xd0(%rsp)
  40b666:	00 
  40b667:	49 83 fc 0f          	cmp    $0xf,%r12
  40b66b:	0f 87 e7 0f 00 00    	ja     40c658 <_Z6windowid+0x1c88>
  40b671:	49 83 fc 01          	cmp    $0x1,%r12
  40b675:	0f 85 c7 0f 00 00    	jne    40c642 <_Z6windowid+0x1c72>
  40b67b:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40b680:	88 84 24 30 01 00 00 	mov    %al,0x130(%rsp)
  40b687:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40b68e:	00 
  40b68f:	4c 89 a4 24 28 01 00 	mov    %r12,0x128(%rsp)
  40b696:	00 
  40b697:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40b69c:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40b6a3:	00 
  40b6a4:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40b6ab:	00 
  40b6ac:	e8 ef 7d ff ff       	callq  4034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40b6b1:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40b6b8:	00 
  40b6b9:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40b6c0:	00 
  40b6c1:	e8 ba 79 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40b6c6:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40b6cd:	00 
  40b6ce:	48 85 f6             	test   %rsi,%rsi
  40b6d1:	74 0d                	je     40b6e0 <_Z6windowid+0xd10>
  40b6d3:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40b6da:	00 
  40b6db:	e8 c0 79 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40b6e0:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40b6e7:	00 
  40b6e8:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b6ef:	00 
  40b6f0:	48 39 c7             	cmp    %rax,%rdi
  40b6f3:	74 11                	je     40b706 <_Z6windowid+0xd36>
  40b6f5:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40b6fc:	00 
  40b6fd:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b701:	e8 aa 7b ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b706:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40b70d:	00 
  40b70e:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b715:	00 
  40b716:	48 39 c7             	cmp    %rax,%rdi
  40b719:	74 11                	je     40b72c <_Z6windowid+0xd5c>
  40b71b:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40b722:	00 
  40b723:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b727:	e8 84 7b ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b72c:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40b730:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40b737:	00 
  40b738:	bf 01 00 00 00       	mov    $0x1,%edi
  40b73d:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40b744:	00 00 
  40b746:	e8 35 7b ff ff       	callq  403280 <clock_gettime@plt>
  40b74b:	48 69 94 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rdx
  40b752:	00 00 ca 9a 3b 
  40b757:	48 b8 00 b0 8e f0 1b 	movabs $0x1bf08eb000,%rax
  40b75e:	00 00 00 
  40b761:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40b768:	00 
  40b769:	48 01 d0             	add    %rdx,%rax
  40b76c:	48 83 7c 24 48 00    	cmpq   $0x0,0x48(%rsp)
  40b772:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40b777:	0f 85 dd 08 00 00    	jne    40c05a <_Z6windowid+0x168a>
  40b77d:	8b 44 24 28          	mov    0x28(%rsp),%eax
  40b781:	49 bd 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%r13
  40b788:	c5 6d 34 
  40b78b:	ff c8                	dec    %eax
  40b78d:	89 44 24 40          	mov    %eax,0x40(%rsp)
  40b791:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40b798:	48 83 7c 24 28 00    	cmpq   $0x0,0x28(%rsp)
  40b79e:	0f 8e b0 04 00 00    	jle    40bc54 <_Z6windowid+0x1284>
  40b7a4:	8b 44 24 40          	mov    0x40(%rsp),%eax
  40b7a8:	c6 44 24 47 01       	movb   $0x1,0x47(%rsp)
  40b7ad:	48 ff c0             	inc    %rax
  40b7b0:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40b7b5:	41 be 01 00 00 00    	mov    $0x1,%r14d
  40b7bb:	bb 01 00 00 00       	mov    $0x1,%ebx
  40b7c0:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40b7c7:	00 
  40b7c8:	89 de                	mov    %ebx,%esi
  40b7ca:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40b7cf:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40b7d6:	00 
  40b7d7:	44 89 74 24 48       	mov    %r14d,0x48(%rsp)
  40b7dc:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  40b7e3:	00 
  40b7e4:	45 8d 66 ff          	lea    -0x1(%r14),%r12d
  40b7e8:	e8 03 7b ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40b7ed:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
  40b7f4:	00 
  40b7f5:	ff cb                	dec    %ebx
  40b7f7:	41 83 fc 63          	cmp    $0x63,%r12d
  40b7fb:	76 49                	jbe    40b846 <_Z6windowid+0xe76>
  40b7fd:	0f 1f 00             	nopl   (%rax)
  40b800:	44 89 e2             	mov    %r12d,%edx
  40b803:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40b80a:	44 89 e0             	mov    %r12d,%eax
  40b80d:	48 c1 ea 25          	shr    $0x25,%rdx
  40b811:	6b f2 64             	imul   $0x64,%edx,%esi
  40b814:	29 f0                	sub    %esi,%eax
  40b816:	01 c0                	add    %eax,%eax
  40b818:	8d 78 01             	lea    0x1(%rax),%edi
  40b81b:	0f b6 bf 00 f5 40 00 	movzbl 0x40f500(%rdi),%edi
  40b822:	0f b6 80 00 f5 40 00 	movzbl 0x40f500(%rax),%eax
  40b829:	44 89 e6             	mov    %r12d,%esi
  40b82c:	41 89 d4             	mov    %edx,%r12d
  40b82f:	89 da                	mov    %ebx,%edx
  40b831:	40 88 3c 11          	mov    %dil,(%rcx,%rdx,1)
  40b835:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40b838:	88 04 11             	mov    %al,(%rcx,%rdx,1)
  40b83b:	83 eb 02             	sub    $0x2,%ebx
  40b83e:	81 fe 0f 27 00 00    	cmp    $0x270f,%esi
  40b844:	77 ba                	ja     40b800 <_Z6windowid+0xe30>
  40b846:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40b84b:	41 83 fc 09          	cmp    $0x9,%r12d
  40b84f:	76 1b                	jbe    40b86c <_Z6windowid+0xe9c>
  40b851:	45 01 e4             	add    %r12d,%r12d
  40b854:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40b859:	0f b6 80 00 f5 40 00 	movzbl 0x40f500(%rax),%eax
  40b860:	88 41 01             	mov    %al,0x1(%rcx)
  40b863:	41 0f b6 84 24 00 f5 	movzbl 0x40f500(%r12),%eax
  40b86a:	40 00 
  40b86c:	88 01                	mov    %al,(%rcx)
  40b86e:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40b875:	00 
  40b876:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40b87d:	00 
  40b87e:	48 8b 5c 24 70       	mov    0x70(%rsp),%rbx
  40b883:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40b888:	48 89 d8             	mov    %rbx,%rax
  40b88b:	4c 01 e0             	add    %r12,%rax
  40b88e:	74 09                	je     40b899 <_Z6windowid+0xec9>
  40b890:	48 85 db             	test   %rbx,%rbx
  40b893:	0f 84 af 12 00 00    	je     40cb48 <_Z6windowid+0x2178>
  40b899:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40b8a0:	00 
  40b8a1:	49 83 fc 0f          	cmp    $0xf,%r12
  40b8a5:	0f 87 95 08 00 00    	ja     40c140 <_Z6windowid+0x1770>
  40b8ab:	49 83 fc 01          	cmp    $0x1,%r12
  40b8af:	0f 85 4b 08 00 00    	jne    40c100 <_Z6windowid+0x1730>
  40b8b5:	0f b6 03             	movzbl (%rbx),%eax
  40b8b8:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  40b8bf:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40b8c6:	00 
  40b8c7:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  40b8ce:	00 
  40b8cf:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40b8d4:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40b8db:	ff ff 3f 
  40b8de:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  40b8e5:	00 
  40b8e6:	48 83 f8 05          	cmp    $0x5,%rax
  40b8ea:	0f 86 62 12 00 00    	jbe    40cb52 <_Z6windowid+0x2182>
  40b8f0:	ba 06 00 00 00       	mov    $0x6,%edx
  40b8f5:	be 53 f0 40 00       	mov    $0x40f053,%esi
  40b8fa:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40b901:	00 
  40b902:	e8 e9 77 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40b907:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
  40b90e:	00 
  40b90f:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  40b916:	00 
  40b917:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  40b91e:	00 
  40b91f:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  40b926:	00 
  40b927:	48 39 d9             	cmp    %rbx,%rcx
  40b92a:	bf 0f 00 00 00       	mov    $0xf,%edi
  40b92f:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  40b936:	00 00 
  40b938:	49 8d 04 10          	lea    (%r8,%rdx,1),%rax
  40b93c:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  40b943:	00 
  40b944:	48 39 f8             	cmp    %rdi,%rax
  40b947:	76 22                	jbe    40b96b <_Z6windowid+0xf9b>
  40b949:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  40b950:	00 
  40b951:	48 39 de             	cmp    %rbx,%rsi
  40b954:	bf 0f 00 00 00       	mov    $0xf,%edi
  40b959:	48 0f 45 bc 24 c0 00 	cmovne 0xc0(%rsp),%rdi
  40b960:	00 00 
  40b962:	48 39 f8             	cmp    %rdi,%rax
  40b965:	0f 86 cd 08 00 00    	jbe    40c238 <_Z6windowid+0x1868>
  40b96b:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40b972:	00 
  40b973:	e8 78 77 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40b978:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40b97f:	00 
  40b980:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40b984:	48 8b 08             	mov    (%rax),%rcx
  40b987:	48 39 d1             	cmp    %rdx,%rcx
  40b98a:	0f 84 70 08 00 00    	je     40c200 <_Z6windowid+0x1830>
  40b990:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  40b997:	00 
  40b998:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40b99c:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  40b9a3:	00 
  40b9a4:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40b9a8:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  40b9af:	00 
  40b9b0:	48 89 10             	mov    %rdx,(%rax)
  40b9b3:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40b9b7:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40b9be:	00 
  40b9bf:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b9c6:	00 
  40b9c7:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b9ce:	00 
  40b9cf:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40b9d6:	00 
  40b9d7:	4c 39 f8             	cmp    %r15,%rax
  40b9da:	0f 84 08 08 00 00    	je     40c1e8 <_Z6windowid+0x1818>
  40b9e0:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b9e7:	00 
  40b9e8:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40b9ef:	00 
  40b9f0:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40b9f7:	00 
  40b9f8:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40b9ff:	00 
  40ba00:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40ba07:	00 
  40ba08:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  40ba0f:	00 
  40ba10:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40ba17:	00 
  40ba18:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40ba1f:	00 00 00 00 00 
  40ba24:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40ba2b:	00 
  40ba2c:	e8 7f 76 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40ba31:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40ba36:	e8 05 78 ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40ba3b:	48 8b 9c 24 f0 00 00 	mov    0xf0(%rsp),%rbx
  40ba42:	00 
  40ba43:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40ba4a:	00 
  40ba4b:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40ba52:	00 
  40ba53:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40ba5a:	00 
  40ba5b:	48 89 d8             	mov    %rbx,%rax
  40ba5e:	4c 01 e0             	add    %r12,%rax
  40ba61:	74 09                	je     40ba6c <_Z6windowid+0x109c>
  40ba63:	48 85 db             	test   %rbx,%rbx
  40ba66:	0f 84 f0 10 00 00    	je     40cb5c <_Z6windowid+0x218c>
  40ba6c:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  40ba71:	49 83 fc 0f          	cmp    $0xf,%r12
  40ba75:	0f 87 1d 07 00 00    	ja     40c198 <_Z6windowid+0x17c8>
  40ba7b:	49 83 fc 01          	cmp    $0x1,%r12
  40ba7f:	0f 85 9b 06 00 00    	jne    40c120 <_Z6windowid+0x1750>
  40ba85:	0f b6 03             	movzbl (%rbx),%eax
  40ba88:	88 84 24 90 01 00 00 	mov    %al,0x190(%rsp)
  40ba8f:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40ba96:	00 
  40ba97:	4c 89 a4 24 88 01 00 	mov    %r12,0x188(%rsp)
  40ba9e:	00 
  40ba9f:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40baa4:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40baab:	00 
  40baac:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40bab3:	00 
  40bab4:	e8 e7 79 ff ff       	callq  4034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40bab9:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40babe:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bac5:	00 
  40bac6:	e8 b5 75 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40bacb:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bad2:	00 
  40bad3:	e8 38 76 ff ff       	callq  403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  40bad8:	ff c0                	inc    %eax
  40bada:	3c 01                	cmp    $0x1,%al
  40badc:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40bae3:	00 
  40bae4:	0f 97 c0             	seta   %al
  40bae7:	20 44 24 47          	and    %al,0x47(%rsp)
  40baeb:	48 85 f6             	test   %rsi,%rsi
  40baee:	74 0d                	je     40bafd <_Z6windowid+0x112d>
  40baf0:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40baf7:	00 
  40baf8:	e8 a3 75 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40bafd:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40bb04:	00 
  40bb05:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40bb0c:	00 
  40bb0d:	48 39 c7             	cmp    %rax,%rdi
  40bb10:	74 11                	je     40bb23 <_Z6windowid+0x1153>
  40bb12:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40bb19:	00 
  40bb1a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bb1e:	e8 8d 77 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40bb23:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40bb2a:	00 
  40bb2b:	48 85 f6             	test   %rsi,%rsi
  40bb2e:	74 0d                	je     40bb3d <_Z6windowid+0x116d>
  40bb30:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40bb37:	00 
  40bb38:	e8 63 75 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40bb3d:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40bb44:	00 
  40bb45:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bb4c:	00 
  40bb4d:	48 39 c7             	cmp    %rax,%rdi
  40bb50:	74 11                	je     40bb63 <_Z6windowid+0x1193>
  40bb52:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40bb59:	00 
  40bb5a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bb5e:	e8 4d 77 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40bb63:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40bb6a:	00 
  40bb6b:	4c 39 ff             	cmp    %r15,%rdi
  40bb6e:	74 11                	je     40bb81 <_Z6windowid+0x11b1>
  40bb70:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40bb77:	00 
  40bb78:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bb7c:	e8 2f 77 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40bb81:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  40bb88:	00 
  40bb89:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40bb90:	00 
  40bb91:	48 39 c7             	cmp    %rax,%rdi
  40bb94:	74 11                	je     40bba7 <_Z6windowid+0x11d7>
  40bb96:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40bb9d:	00 
  40bb9e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bba2:	e8 09 77 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40bba7:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40bbae:	00 
  40bbaf:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40bbb6:	00 
  40bbb7:	48 39 c7             	cmp    %rax,%rdi
  40bbba:	74 11                	je     40bbcd <_Z6windowid+0x11fd>
  40bbbc:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  40bbc3:	00 
  40bbc4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bbc8:	e8 e3 76 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40bbcd:	4c 39 74 24 38       	cmp    %r14,0x38(%rsp)
  40bbd2:	0f 84 b0 06 00 00    	je     40c288 <_Z6windowid+0x18b8>
  40bbd8:	49 83 fe 09          	cmp    $0x9,%r14
  40bbdc:	0f 86 84 0f 00 00    	jbe    40cb66 <_Z6windowid+0x2196>
  40bbe2:	8b 44 24 48          	mov    0x48(%rsp),%eax
  40bbe6:	83 f8 63             	cmp    $0x63,%eax
  40bbe9:	0f 86 f7 09 00 00    	jbe    40c5e6 <_Z6windowid+0x1c16>
  40bbef:	3d e7 03 00 00       	cmp    $0x3e7,%eax
  40bbf4:	0f 86 06 0a 00 00    	jbe    40c600 <_Z6windowid+0x1c30>
  40bbfa:	3d 0f 27 00 00       	cmp    $0x270f,%eax
  40bbff:	0f 86 ee 09 00 00    	jbe    40c5f3 <_Z6windowid+0x1c23>
  40bc05:	4c 89 f2             	mov    %r14,%rdx
  40bc08:	bb 01 00 00 00       	mov    $0x1,%ebx
  40bc0d:	eb 22                	jmp    40bc31 <_Z6windowid+0x1261>
  40bc0f:	90                   	nop
  40bc10:	83 fa 63             	cmp    $0x63,%edx
  40bc13:	0f 86 ff 05 00 00    	jbe    40c218 <_Z6windowid+0x1848>
  40bc19:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40bc1f:	0f 86 03 06 00 00    	jbe    40c228 <_Z6windowid+0x1858>
  40bc25:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40bc2b:	0f 86 47 06 00 00    	jbe    40c278 <_Z6windowid+0x18a8>
  40bc31:	48 89 d0             	mov    %rdx,%rax
  40bc34:	48 89 d1             	mov    %rdx,%rcx
  40bc37:	49 f7 e5             	mul    %r13
  40bc3a:	89 d8                	mov    %ebx,%eax
  40bc3c:	83 c3 04             	add    $0x4,%ebx
  40bc3f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40bc43:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40bc4a:	77 c4                	ja     40bc10 <_Z6windowid+0x1240>
  40bc4c:	49 ff c6             	inc    %r14
  40bc4f:	e9 6c fb ff ff       	jmpq   40b7c0 <_Z6windowid+0xdf0>
  40bc54:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40bc59:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40bc5e:	4c 89 e8             	mov    %r13,%rax
  40bc61:	4c 01 e0             	add    %r12,%rax
  40bc64:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40bc6b:	00 
  40bc6c:	74 09                	je     40bc77 <_Z6windowid+0x12a7>
  40bc6e:	4d 85 ed             	test   %r13,%r13
  40bc71:	0f 84 85 0f 00 00    	je     40cbfc <_Z6windowid+0x222c>
  40bc77:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40bc7e:	00 
  40bc7f:	49 83 fc 0f          	cmp    $0xf,%r12
  40bc83:	0f 87 81 0d 00 00    	ja     40ca0a <_Z6windowid+0x203a>
  40bc89:	49 83 fc 01          	cmp    $0x1,%r12
  40bc8d:	0f 84 b5 0c 00 00    	je     40c948 <_Z6windowid+0x1f78>
  40bc93:	4d 85 e4             	test   %r12,%r12
  40bc96:	0f 85 55 0e 00 00    	jne    40caf1 <_Z6windowid+0x2121>
  40bc9c:	4c 89 f8             	mov    %r15,%rax
  40bc9f:	4c 89 a4 24 d8 00 00 	mov    %r12,0xd8(%rsp)
  40bca6:	00 
  40bca7:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40bcac:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40bcb3:	ff ff 3f 
  40bcb6:	48 2b 84 24 d8 00 00 	sub    0xd8(%rsp),%rax
  40bcbd:	00 
  40bcbe:	48 83 f8 03          	cmp    $0x3,%rax
  40bcc2:	0f 86 1f 0e 00 00    	jbe    40cae7 <_Z6windowid+0x2117>
  40bcc8:	ba 04 00 00 00       	mov    $0x4,%edx
  40bccd:	be 7f f0 40 00       	mov    $0x40f07f,%esi
  40bcd2:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  40bcd9:	00 
  40bcda:	e8 11 74 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40bcdf:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40bce6:	00 
  40bce7:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40bcee:	00 
  40bcef:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40bcf6:	00 
  40bcf7:	4c 39 f8             	cmp    %r15,%rax
  40bcfa:	0f 84 6c 0d 00 00    	je     40ca6c <_Z6windowid+0x209c>
  40bd00:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40bd07:	00 
  40bd08:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40bd0f:	00 
  40bd10:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40bd17:	00 
  40bd18:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40bd1f:	00 
  40bd20:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40bd27:	00 
  40bd28:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40bd2f:	00 
  40bd30:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40bd37:	00 
  40bd38:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40bd3f:	00 00 00 00 00 
  40bd44:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40bd4b:	00 
  40bd4c:	e8 5f 73 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40bd51:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bd58:	00 
  40bd59:	e8 e2 74 ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40bd5e:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40bd65:	00 
  40bd66:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bd6d:	00 
  40bd6e:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40bd75:	00 
  40bd76:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40bd7d:	00 
  40bd7e:	4c 89 e8             	mov    %r13,%rax
  40bd81:	4c 01 e0             	add    %r12,%rax
  40bd84:	74 09                	je     40bd8f <_Z6windowid+0x13bf>
  40bd86:	4d 85 ed             	test   %r13,%r13
  40bd89:	0f 84 4e 0d 00 00    	je     40cadd <_Z6windowid+0x210d>
  40bd8f:	4c 89 a4 24 b0 00 00 	mov    %r12,0xb0(%rsp)
  40bd96:	00 
  40bd97:	49 83 fc 0f          	cmp    $0xf,%r12
  40bd9b:	0f 87 1a 0c 00 00    	ja     40c9bb <_Z6windowid+0x1feb>
  40bda1:	49 83 fc 01          	cmp    $0x1,%r12
  40bda5:	0f 85 fa 0b 00 00    	jne    40c9a5 <_Z6windowid+0x1fd5>
  40bdab:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40bdb0:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40bdb7:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bdbe:	00 
  40bdbf:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40bdc6:	00 
  40bdc7:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40bdcc:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40bdd3:	00 
  40bdd4:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40bddb:	00 
  40bddc:	e8 bf 76 ff ff       	callq  4034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40bde1:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40bde6:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40bded:	00 
  40bdee:	e8 8d 72 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40bdf3:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40bdfa:	00 
  40bdfb:	48 85 f6             	test   %rsi,%rsi
  40bdfe:	74 0d                	je     40be0d <_Z6windowid+0x143d>
  40be00:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40be07:	00 
  40be08:	e8 93 72 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40be0d:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40be14:	00 
  40be15:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40be1c:	00 
  40be1d:	48 39 c7             	cmp    %rax,%rdi
  40be20:	74 11                	je     40be33 <_Z6windowid+0x1463>
  40be22:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40be29:	00 
  40be2a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40be2e:	e8 7d 74 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40be33:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40be3a:	00 
  40be3b:	4c 39 ff             	cmp    %r15,%rdi
  40be3e:	74 11                	je     40be51 <_Z6windowid+0x1481>
  40be40:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40be47:	00 
  40be48:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40be4c:	e8 5f 74 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40be51:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40be58:	00 
  40be59:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40be60:	00 
  40be61:	e8 6a 72 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40be66:	31 d2                	xor    %edx,%edx
  40be68:	66 89 94 24 58 03 00 	mov    %dx,0x358(%rsp)
  40be6f:	00 
  40be70:	48 8b 05 b1 5d 00 00 	mov    0x5db1(%rip),%rax        # 411c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40be77:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40be7b:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  40be82:	00 00 
  40be84:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40be8b:	00 
  40be8c:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40be93:	00 
  40be94:	48 03 78 e8          	add    -0x18(%rax),%rdi
  40be98:	48 8b 05 91 5d 00 00 	mov    0x5d91(%rip),%rax        # 411c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40be9f:	31 f6                	xor    %esi,%esi
  40bea1:	48 c7 84 24 78 02 00 	movq   $0x411b90,0x278(%rsp)
  40bea8:	00 90 1b 41 00 
  40bead:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  40beb4:	00 00 00 00 00 
  40beb9:	48 89 07             	mov    %rax,(%rdi)
  40bebc:	c5 f8 77             	vzeroupper 
  40bebf:	e8 7c 74 ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40bec4:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40becb:	00 
  40becc:	48 c7 84 24 80 01 00 	movq   $0x411d28,0x180(%rsp)
  40bed3:	00 28 1d 41 00 
  40bed8:	48 c7 84 24 78 02 00 	movq   $0x411d50,0x278(%rsp)
  40bedf:	00 50 1d 41 00 
  40bee4:	e8 e7 73 ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40bee9:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  40bef0:	00 
  40bef1:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40bef8:	00 
  40bef9:	e8 42 74 ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40befe:	ba 10 00 00 00       	mov    $0x10,%edx
  40bf03:	4c 89 e6             	mov    %r12,%rsi
  40bf06:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40bf0d:	00 
  40bf0e:	e8 5d 73 ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40bf13:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40bf1a:	00 
  40bf1b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bf22:	00 
  40bf23:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40bf27:	48 85 c0             	test   %rax,%rax
  40bf2a:	0f 84 2c 0b 00 00    	je     40ca5c <_Z6windowid+0x208c>
  40bf30:	31 f6                	xor    %esi,%esi
  40bf32:	e8 e9 74 ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40bf37:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40bf3b:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  40bf42:	00 
  40bf43:	bf 01 00 00 00       	mov    $0x1,%edi
  40bf48:	c5 f9 7f 84 24 d0 00 	vmovdqa %xmm0,0xd0(%rsp)
  40bf4f:	00 00 
  40bf51:	e8 2a 73 ff ff       	callq  403280 <clock_gettime@plt>
  40bf56:	48 69 94 24 d0 00 00 	imul   $0x3b9aca00,0xd0(%rsp),%rdx
  40bf5d:	00 00 ca 9a 3b 
  40bf62:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40bf69:	00 
  40bf6a:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bf71:	00 
  40bf72:	48 8d b4 02 80 b2 e6 	lea    0xee6b280(%rdx,%rax,1),%rsi
  40bf79:	0e 
  40bf7a:	e8 51 72 ff ff       	callq  4031d0 <_ZNSo9_M_insertIyEERSoT_@plt>
  40bf7f:	c5 f9 6f 7c 24 10    	vmovdqa 0x10(%rsp),%xmm7
  40bf85:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40bf8c:	00 
  40bf8d:	48 c7 84 24 78 02 00 	movq   $0x411d50,0x278(%rsp)
  40bf94:	00 50 1d 41 00 
  40bf99:	c5 f9 7f bc 24 80 01 	vmovdqa %xmm7,0x180(%rsp)
  40bfa0:	00 00 
  40bfa2:	e8 c9 70 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40bfa7:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  40bfae:	00 
  40bfaf:	e8 cc 74 ff ff       	callq  403480 <_ZNSt12__basic_fileIcED1Ev@plt>
  40bfb4:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  40bfbb:	00 
  40bfbc:	48 c7 84 24 88 01 00 	movq   $0x411bb0,0x188(%rsp)
  40bfc3:	00 b0 1b 41 00 
  40bfc8:	e8 93 73 ff ff       	callq  403360 <_ZNSt6localeD1Ev@plt>
  40bfcd:	48 8b 05 54 5c 00 00 	mov    0x5c54(%rip),%rax        # 411c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40bfd4:	48 8b 0d 55 5c 00 00 	mov    0x5c55(%rip),%rcx        # 411c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40bfdb:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40bfe2:	00 
  40bfe3:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40bfe7:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40bfee:	00 
  40bfef:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  40bff6:	00 
  40bff7:	48 c7 84 24 78 02 00 	movq   $0x411b90,0x278(%rsp)
  40bffe:	00 90 1b 41 00 
  40c003:	e8 f8 70 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40c008:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c00d:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  40c014:	00 
  40c015:	e8 96 71 ff ff       	callq  4031b0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@plt>
  40c01a:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40c021:	00 
  40c022:	48 85 f6             	test   %rsi,%rsi
  40c025:	74 0d                	je     40c034 <_Z6windowid+0x1664>
  40c027:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40c02e:	00 
  40c02f:	e8 6c 70 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c034:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40c03b:	00 
  40c03c:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c043:	00 
  40c044:	48 39 c7             	cmp    %rax,%rdi
  40c047:	74 11                	je     40c05a <_Z6windowid+0x168a>
  40c049:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40c050:	00 
  40c051:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c055:	e8 56 72 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c05a:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40c061:	00 
  40c062:	e8 a9 70 ff ff       	callq  403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  40c067:	ff c0                	inc    %eax
  40c069:	3c 01                	cmp    $0x1,%al
  40c06b:	0f 87 a7 02 00 00    	ja     40c318 <_Z6windowid+0x1948>
  40c071:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40c075:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c07c:	00 
  40c07d:	bf 01 00 00 00       	mov    $0x1,%edi
  40c082:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40c089:	00 00 
  40c08b:	e8 f0 71 ff ff       	callq  403280 <clock_gettime@plt>
  40c090:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40c097:	00 00 ca 9a 3b 
  40c09c:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40c0a3:	00 
  40c0a4:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  40c0a9:	0f 82 c1 7b ff ff    	jb     403c70 <_Z6windowid.cold+0x75e>
  40c0af:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40c0b6:	00 00 00 00 00 
  40c0bb:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  40c0c2:	00 80 84 1e 00 
  40c0c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40c0ce:	00 00 
  40c0d0:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c0d7:	00 
  40c0d8:	48 89 f7             	mov    %rsi,%rdi
  40c0db:	e8 00 70 ff ff       	callq  4030e0 <nanosleep@plt>
  40c0e0:	83 f8 ff             	cmp    $0xffffffff,%eax
  40c0e3:	0f 85 71 ff ff ff    	jne    40c05a <_Z6windowid+0x168a>
  40c0e9:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40c0ee:	83 38 04             	cmpl   $0x4,(%rax)
  40c0f1:	74 dd                	je     40c0d0 <_Z6windowid+0x1700>
  40c0f3:	e9 62 ff ff ff       	jmpq   40c05a <_Z6windowid+0x168a>
  40c0f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40c0ff:	00 
  40c100:	4d 85 e4             	test   %r12,%r12
  40c103:	0f 85 67 0a 00 00    	jne    40cb70 <_Z6windowid+0x21a0>
  40c109:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40c110:	00 
  40c111:	e9 b1 f7 ff ff       	jmpq   40b8c7 <_Z6windowid+0xef7>
  40c116:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40c11d:	00 00 00 
  40c120:	4d 85 e4             	test   %r12,%r12
  40c123:	0f 85 54 0a 00 00    	jne    40cb7d <_Z6windowid+0x21ad>
  40c129:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c130:	00 
  40c131:	e9 61 f9 ff ff       	jmpq   40ba97 <_Z6windowid+0x10c7>
  40c136:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40c13d:	00 00 00 
  40c140:	31 d2                	xor    %edx,%edx
  40c142:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c149:	00 
  40c14a:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40c151:	00 
  40c152:	e8 09 73 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c157:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40c15e:	00 
  40c15f:	48 89 c7             	mov    %rax,%rdi
  40c162:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40c169:	00 
  40c16a:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  40c171:	00 
  40c172:	4c 89 e2             	mov    %r12,%rdx
  40c175:	48 89 de             	mov    %rbx,%rsi
  40c178:	e8 d3 70 ff ff       	callq  403250 <memcpy@plt>
  40c17d:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40c184:	00 
  40c185:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  40c18c:	00 
  40c18d:	e9 35 f7 ff ff       	jmpq   40b8c7 <_Z6windowid+0xef7>
  40c192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40c198:	31 d2                	xor    %edx,%edx
  40c19a:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
  40c19f:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c1a6:	00 
  40c1a7:	e8 b4 72 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c1ac:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c1b3:	00 
  40c1b4:	48 89 c7             	mov    %rax,%rdi
  40c1b7:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  40c1bc:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40c1c3:	00 
  40c1c4:	4c 89 e2             	mov    %r12,%rdx
  40c1c7:	48 89 de             	mov    %rbx,%rsi
  40c1ca:	e8 81 70 ff ff       	callq  403250 <memcpy@plt>
  40c1cf:	4c 8b 64 24 68       	mov    0x68(%rsp),%r12
  40c1d4:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40c1db:	00 
  40c1dc:	e9 b6 f8 ff ff       	jmpq   40ba97 <_Z6windowid+0x10c7>
  40c1e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40c1e8:	c5 f9 6f 9c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm3
  40c1ef:	00 00 
  40c1f1:	c5 f9 7f 9c 24 60 01 	vmovdqa %xmm3,0x160(%rsp)
  40c1f8:	00 00 
  40c1fa:	e9 f9 f7 ff ff       	jmpq   40b9f8 <_Z6windowid+0x1028>
  40c1ff:	90                   	nop
  40c200:	c5 fa 6f 60 10       	vmovdqu 0x10(%rax),%xmm4
  40c205:	c5 f9 7f a4 24 e0 00 	vmovdqa %xmm4,0xe0(%rsp)
  40c20c:	00 00 
  40c20e:	e9 91 f7 ff ff       	jmpq   40b9a4 <_Z6windowid+0xfd4>
  40c213:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40c218:	8d 58 05             	lea    0x5(%rax),%ebx
  40c21b:	49 ff c6             	inc    %r14
  40c21e:	e9 9d f5 ff ff       	jmpq   40b7c0 <_Z6windowid+0xdf0>
  40c223:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40c228:	8d 58 06             	lea    0x6(%rax),%ebx
  40c22b:	49 ff c6             	inc    %r14
  40c22e:	e9 8d f5 ff ff       	jmpq   40b7c0 <_Z6windowid+0xdf0>
  40c233:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40c238:	31 d2                	xor    %edx,%edx
  40c23a:	31 f6                	xor    %esi,%esi
  40c23c:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40c243:	00 
  40c244:	e8 77 71 ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40c249:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c250:	00 
  40c251:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40c255:	48 8b 08             	mov    (%rax),%rcx
  40c258:	48 39 d1             	cmp    %rdx,%rcx
  40c25b:	0f 85 2f f7 ff ff    	jne    40b990 <_Z6windowid+0xfc0>
  40c261:	c5 fa 6f 68 10       	vmovdqu 0x10(%rax),%xmm5
  40c266:	c5 f9 7f ac 24 e0 00 	vmovdqa %xmm5,0xe0(%rsp)
  40c26d:	00 00 
  40c26f:	e9 30 f7 ff ff       	jmpq   40b9a4 <_Z6windowid+0xfd4>
  40c274:	0f 1f 40 00          	nopl   0x0(%rax)
  40c278:	8d 58 07             	lea    0x7(%rax),%ebx
  40c27b:	49 ff c6             	inc    %r14
  40c27e:	e9 3d f5 ff ff       	jmpq   40b7c0 <_Z6windowid+0xdf0>
  40c283:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40c288:	80 7c 24 47 00       	cmpb   $0x0,0x47(%rsp)
  40c28d:	0f 85 c1 f9 ff ff    	jne    40bc54 <_Z6windowid+0x1284>
  40c293:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40c297:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c29e:	00 
  40c29f:	bf 01 00 00 00       	mov    $0x1,%edi
  40c2a4:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40c2ab:	00 00 
  40c2ad:	e8 ce 6f ff ff       	callq  403280 <clock_gettime@plt>
  40c2b2:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40c2b9:	00 00 ca 9a 3b 
  40c2be:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40c2c5:	00 
  40c2c6:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  40c2cb:	0f 82 4d 78 ff ff    	jb     403b1e <_Z6windowid.cold+0x60c>
  40c2d1:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40c2d8:	00 00 00 00 00 
  40c2dd:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  40c2e4:	00 80 84 1e 00 
  40c2e9:	eb 13                	jmp    40c2fe <_Z6windowid+0x192e>
  40c2eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40c2f0:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40c2f5:	83 38 04             	cmpl   $0x4,(%rax)
  40c2f8:	0f 85 9a f4 ff ff    	jne    40b798 <_Z6windowid+0xdc8>
  40c2fe:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c305:	00 
  40c306:	48 89 f7             	mov    %rsi,%rdi
  40c309:	e8 d2 6d ff ff       	callq  4030e0 <nanosleep@plt>
  40c30e:	83 f8 ff             	cmp    $0xffffffff,%eax
  40c311:	74 dd                	je     40c2f0 <_Z6windowid+0x1920>
  40c313:	e9 80 f4 ff ff       	jmpq   40b798 <_Z6windowid+0xdc8>
  40c318:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40c31f:	00 
  40c320:	4c 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13
  40c327:	00 
  40c328:	e8 a3 6d ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40c32d:	31 c0                	xor    %eax,%eax
  40c32f:	66 89 84 24 60 03 00 	mov    %ax,0x360(%rsp)
  40c336:	00 
  40c337:	48 8b 1d 3a 5a 00 00 	mov    0x5a3a(%rip),%rbx        # 411d78 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40c33e:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40c342:	c5 fe 7f 84 24 68 03 	vmovdqu %ymm0,0x368(%rsp)
  40c349:	00 00 
  40c34b:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  40c34f:	4c 8b 25 2a 5a 00 00 	mov    0x5a2a(%rip),%r12        # 411d80 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40c356:	48 c7 84 24 80 02 00 	movq   $0x411b90,0x280(%rsp)
  40c35d:	00 90 1b 41 00 
  40c362:	48 c7 84 24 58 03 00 	movq   $0x0,0x358(%rsp)
  40c369:	00 00 00 00 00 
  40c36e:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  40c375:	00 
  40c376:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  40c37d:	00 
  40c37e:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  40c385:	00 00 00 00 00 
  40c38a:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c391:	00 
  40c392:	31 f6                	xor    %esi,%esi
  40c394:	48 03 7b e8          	add    -0x18(%rbx),%rdi
  40c398:	c5 f8 77             	vzeroupper 
  40c39b:	e8 a0 6f ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40c3a0:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40c3a7:	00 
  40c3a8:	48 c7 84 24 80 01 00 	movq   $0x411c58,0x180(%rsp)
  40c3af:	00 58 1c 41 00 
  40c3b4:	48 c7 84 24 80 02 00 	movq   $0x411c80,0x280(%rsp)
  40c3bb:	00 80 1c 41 00 
  40c3c0:	e8 0b 6f ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40c3c5:	48 8d b4 24 90 01 00 	lea    0x190(%rsp),%rsi
  40c3cc:	00 
  40c3cd:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40c3d4:	00 
  40c3d5:	e8 66 6f ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40c3da:	ba 08 00 00 00       	mov    $0x8,%edx
  40c3df:	4c 89 ee             	mov    %r13,%rsi
  40c3e2:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40c3e9:	00 
  40c3ea:	e8 81 6e ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40c3ef:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40c3f6:	00 
  40c3f7:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c3fe:	00 
  40c3ff:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40c403:	48 85 c0             	test   %rax,%rax
  40c406:	0f 84 2c 05 00 00    	je     40c938 <_Z6windowid+0x1f68>
  40c40c:	31 f6                	xor    %esi,%esi
  40c40e:	e8 0d 70 ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40c413:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40c418:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c41f:	00 
  40c420:	e8 4b 6d ff ff       	callq  403170 <_ZNSi10_M_extractImEERSiRT_@plt>
  40c425:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40c42c:	00 
  40c42d:	48 c7 84 24 80 01 00 	movq   $0x411c58,0x180(%rsp)
  40c434:	00 58 1c 41 00 
  40c439:	48 c7 84 24 80 02 00 	movq   $0x411c80,0x280(%rsp)
  40c440:	00 80 1c 41 00 
  40c445:	48 c7 84 24 90 01 00 	movq   $0x411ca0,0x190(%rsp)
  40c44c:	00 a0 1c 41 00 
  40c451:	e8 1a 6c ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40c456:	48 8d bc 24 f8 01 00 	lea    0x1f8(%rsp),%rdi
  40c45d:	00 
  40c45e:	e8 1d 70 ff ff       	callq  403480 <_ZNSt12__basic_fileIcED1Ev@plt>
  40c463:	48 8d bc 24 c8 01 00 	lea    0x1c8(%rsp),%rdi
  40c46a:	00 
  40c46b:	48 c7 84 24 90 01 00 	movq   $0x411bb0,0x190(%rsp)
  40c472:	00 b0 1b 41 00 
  40c477:	e8 e4 6e ff ff       	callq  403360 <_ZNSt6localeD1Ev@plt>
  40c47c:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  40c480:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40c487:	00 
  40c488:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  40c48f:	00 
  40c490:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  40c497:	00 
  40c498:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  40c49f:	00 00 00 00 00 
  40c4a4:	48 c7 84 24 80 02 00 	movq   $0x411b90,0x280(%rsp)
  40c4ab:	00 90 1b 41 00 
  40c4b0:	e8 4b 6c ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40c4b5:	0f 1f 00             	nopl   (%rax)
  40c4b8:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40c4bc:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c4c3:	00 
  40c4c4:	bf 01 00 00 00       	mov    $0x1,%edi
  40c4c9:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40c4d0:	00 00 
  40c4d2:	e8 a9 6d ff ff       	callq  403280 <clock_gettime@plt>
  40c4d7:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40c4de:	00 00 ca 9a 3b 
  40c4e3:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40c4ea:	00 
  40c4eb:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40c4f2:	00 
  40c4f3:	49 39 c4             	cmp    %rax,%r12
  40c4f6:	76 39                	jbe    40c531 <_Z6windowid+0x1b61>
  40c4f8:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40c4ff:	00 00 00 00 00 
  40c504:	48 c7 84 24 88 01 00 	movq   $0x4e20,0x188(%rsp)
  40c50b:	00 20 4e 00 00 
  40c510:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c517:	00 
  40c518:	48 89 f7             	mov    %rsi,%rdi
  40c51b:	e8 c0 6b ff ff       	callq  4030e0 <nanosleep@plt>
  40c520:	83 f8 ff             	cmp    $0xffffffff,%eax
  40c523:	75 93                	jne    40c4b8 <_Z6windowid+0x1ae8>
  40c525:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40c52a:	83 38 04             	cmpl   $0x4,(%rax)
  40c52d:	74 e1                	je     40c510 <_Z6windowid+0x1b40>
  40c52f:	eb 87                	jmp    40c4b8 <_Z6windowid+0x1ae8>
  40c531:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  40c538:	00 
  40c539:	48 85 f6             	test   %rsi,%rsi
  40c53c:	74 0d                	je     40c54b <_Z6windowid+0x1b7b>
  40c53e:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40c545:	00 
  40c546:	e8 55 6b ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c54b:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  40c552:	00 
  40c553:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40c55a:	00 
  40c55b:	48 39 c7             	cmp    %rax,%rdi
  40c55e:	74 11                	je     40c571 <_Z6windowid+0x1ba1>
  40c560:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  40c567:	00 
  40c568:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c56c:	e8 3f 6d ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c571:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  40c576:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  40c57d:	00 
  40c57e:	48 39 c7             	cmp    %rax,%rdi
  40c581:	74 11                	je     40c594 <_Z6windowid+0x1bc4>
  40c583:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  40c58a:	00 
  40c58b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c58f:	e8 1c 6d ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c594:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
  40c59b:	00 
  40c59c:	48 85 f6             	test   %rsi,%rsi
  40c59f:	74 0d                	je     40c5ae <_Z6windowid+0x1bde>
  40c5a1:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  40c5a8:	00 
  40c5a9:	e8 f2 6a ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c5ae:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  40c5b5:	00 
  40c5b6:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  40c5bd:	00 
  40c5be:	48 39 c7             	cmp    %rax,%rdi
  40c5c1:	74 11                	je     40c5d4 <_Z6windowid+0x1c04>
  40c5c3:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  40c5ca:	00 
  40c5cb:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c5cf:	e8 dc 6c ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c5d4:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  40c5d8:	5b                   	pop    %rbx
  40c5d9:	4c 89 e0             	mov    %r12,%rax
  40c5dc:	41 5c                	pop    %r12
  40c5de:	41 5d                	pop    %r13
  40c5e0:	41 5e                	pop    %r14
  40c5e2:	41 5f                	pop    %r15
  40c5e4:	5d                   	pop    %rbp
  40c5e5:	c3                   	retq   
  40c5e6:	bb 02 00 00 00       	mov    $0x2,%ebx
  40c5eb:	49 ff c6             	inc    %r14
  40c5ee:	e9 cd f1 ff ff       	jmpq   40b7c0 <_Z6windowid+0xdf0>
  40c5f3:	bb 04 00 00 00       	mov    $0x4,%ebx
  40c5f8:	49 ff c6             	inc    %r14
  40c5fb:	e9 c0 f1 ff ff       	jmpq   40b7c0 <_Z6windowid+0xdf0>
  40c600:	bb 03 00 00 00       	mov    $0x3,%ebx
  40c605:	49 ff c6             	inc    %r14
  40c608:	e9 b3 f1 ff ff       	jmpq   40b7c0 <_Z6windowid+0xdf0>
  40c60d:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40c611:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c618:	00 
  40c619:	bf 01 00 00 00       	mov    $0x1,%edi
  40c61e:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40c625:	00 00 
  40c627:	e8 54 6c ff ff       	callq  403280 <clock_gettime@plt>
  40c62c:	4c 69 a4 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%r12
  40c633:	00 00 ca 9a 3b 
  40c638:	4c 03 a4 24 88 01 00 	add    0x188(%rsp),%r12
  40c63f:	00 
  40c640:	eb 92                	jmp    40c5d4 <_Z6windowid+0x1c04>
  40c642:	4d 85 e4             	test   %r12,%r12
  40c645:	0f 85 3f 05 00 00    	jne    40cb8a <_Z6windowid+0x21ba>
  40c64b:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40c652:	00 
  40c653:	e9 37 f0 ff ff       	jmpq   40b68f <_Z6windowid+0xcbf>
  40c658:	31 d2                	xor    %edx,%edx
  40c65a:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  40c661:	00 
  40c662:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40c669:	00 
  40c66a:	e8 f1 6d ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c66f:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40c676:	00 
  40c677:	48 89 c7             	mov    %rax,%rdi
  40c67a:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40c681:	00 
  40c682:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40c689:	00 
  40c68a:	4c 89 e2             	mov    %r12,%rdx
  40c68d:	4c 89 ee             	mov    %r13,%rsi
  40c690:	e8 bb 6b ff ff       	callq  403250 <memcpy@plt>
  40c695:	4c 8b a4 24 d0 00 00 	mov    0xd0(%rsp),%r12
  40c69c:	00 
  40c69d:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  40c6a4:	00 
  40c6a5:	e9 e5 ef ff ff       	jmpq   40b68f <_Z6windowid+0xcbf>
  40c6aa:	4d 85 e4             	test   %r12,%r12
  40c6ad:	0f 85 e4 04 00 00    	jne    40cb97 <_Z6windowid+0x21c7>
  40c6b3:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c6ba:	00 
  40c6bb:	e9 a2 ee ff ff       	jmpq   40b562 <_Z6windowid+0xb92>
  40c6c0:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40c6c5:	31 d2                	xor    %edx,%edx
  40c6c7:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c6ce:	00 
  40c6cf:	e8 8c 6d ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c6d4:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c6db:	00 
  40c6dc:	48 89 c7             	mov    %rax,%rdi
  40c6df:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c6e6:	00 
  40c6e7:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40c6ee:	00 
  40c6ef:	4c 89 f2             	mov    %r14,%rdx
  40c6f2:	4c 89 ee             	mov    %r13,%rsi
  40c6f5:	e8 56 6b ff ff       	callq  403250 <memcpy@plt>
  40c6fa:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c701:	00 
  40c702:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40c709:	00 
  40c70a:	e9 3e e5 ff ff       	jmpq   40ac4d <_Z6windowid+0x27d>
  40c70f:	4d 85 f6             	test   %r14,%r14
  40c712:	0f 85 8c 04 00 00    	jne    40cba4 <_Z6windowid+0x21d4>
  40c718:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40c71f:	00 
  40c720:	e9 28 e5 ff ff       	jmpq   40ac4d <_Z6windowid+0x27d>
  40c725:	48 85 c0             	test   %rax,%rax
  40c728:	0f 85 83 04 00 00    	jne    40cbb1 <_Z6windowid+0x21e1>
  40c72e:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  40c735:	00 
  40c736:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  40c73b:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40c742:	00 
  40c743:	e9 a5 e3 ff ff       	jmpq   40aaed <_Z6windowid+0x11d>
  40c748:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  40c74f:	00 
  40c750:	31 d2                	xor    %edx,%edx
  40c752:	48 89 c6             	mov    %rax,%rsi
  40c755:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c75c:	00 
  40c75d:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40c762:	e8 f9 6c ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c767:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c76e:	00 
  40c76f:	48 89 c7             	mov    %rax,%rdi
  40c772:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c779:	00 
  40c77a:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40c781:	00 
  40c782:	4c 89 f2             	mov    %r14,%rdx
  40c785:	4c 89 ee             	mov    %r13,%rsi
  40c788:	e8 c3 6a ff ff       	callq  403250 <memcpy@plt>
  40c78d:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c794:	00 
  40c795:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40c79c:	00 
  40c79d:	e9 4b e3 ff ff       	jmpq   40aaed <_Z6windowid+0x11d>
  40c7a2:	48 85 c0             	test   %rax,%rax
  40c7a5:	0f 85 20 04 00 00    	jne    40cbcb <_Z6windowid+0x21fb>
  40c7ab:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40c7b2:	00 
  40c7b3:	e9 94 e2 ff ff       	jmpq   40aa4c <_Z6windowid+0x7c>
  40c7b8:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c7bd:	31 d2                	xor    %edx,%edx
  40c7bf:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c7c6:	00 
  40c7c7:	e8 94 6c ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c7cc:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c7d3:	00 
  40c7d4:	48 89 c7             	mov    %rax,%rdi
  40c7d7:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40c7de:	00 
  40c7df:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40c7e6:	00 
  40c7e7:	4c 89 e2             	mov    %r12,%rdx
  40c7ea:	4c 89 ee             	mov    %r13,%rsi
  40c7ed:	e8 5e 6a ff ff       	callq  403250 <memcpy@plt>
  40c7f2:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40c7f9:	00 
  40c7fa:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c801:	00 
  40c802:	e9 5b ed ff ff       	jmpq   40b562 <_Z6windowid+0xb92>
  40c807:	4d 85 e4             	test   %r12,%r12
  40c80a:	0f 85 c8 03 00 00    	jne    40cbd8 <_Z6windowid+0x2208>
  40c810:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c817:	00 
  40c818:	e9 30 ea ff ff       	jmpq   40b24d <_Z6windowid+0x87d>
  40c81d:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c822:	31 d2                	xor    %edx,%edx
  40c824:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c82b:	00 
  40c82c:	e8 2f 6c ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c831:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c838:	00 
  40c839:	48 89 c7             	mov    %rax,%rdi
  40c83c:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40c843:	00 
  40c844:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40c84b:	00 
  40c84c:	4c 89 e2             	mov    %r12,%rdx
  40c84f:	4c 89 ee             	mov    %r13,%rsi
  40c852:	e8 f9 69 ff ff       	callq  403250 <memcpy@plt>
  40c857:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40c85e:	00 
  40c85f:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c866:	00 
  40c867:	e9 e1 e9 ff ff       	jmpq   40b24d <_Z6windowid+0x87d>
  40c86c:	4d 85 e4             	test   %r12,%r12
  40c86f:	0f 85 70 03 00 00    	jne    40cbe5 <_Z6windowid+0x2215>
  40c875:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40c87c:	00 
  40c87d:	e9 ed e7 ff ff       	jmpq   40b06f <_Z6windowid+0x69f>
  40c882:	31 d2                	xor    %edx,%edx
  40c884:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c88b:	00 
  40c88c:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40c893:	00 
  40c894:	e8 c7 6b ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c899:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40c8a0:	00 
  40c8a1:	48 89 c7             	mov    %rax,%rdi
  40c8a4:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40c8ab:	00 
  40c8ac:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  40c8b3:	00 
  40c8b4:	4c 89 e2             	mov    %r12,%rdx
  40c8b7:	4c 89 ee             	mov    %r13,%rsi
  40c8ba:	e8 91 69 ff ff       	callq  403250 <memcpy@plt>
  40c8bf:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40c8c6:	00 
  40c8c7:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  40c8ce:	00 
  40c8cf:	e9 9b e7 ff ff       	jmpq   40b06f <_Z6windowid+0x69f>
  40c8d4:	8b 77 20             	mov    0x20(%rdi),%esi
  40c8d7:	83 ce 04             	or     $0x4,%esi
  40c8da:	e8 41 6b ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40c8df:	e9 83 ea ff ff       	jmpq   40b367 <_Z6windowid+0x997>
  40c8e4:	c5 f9 6f 8c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm1
  40c8eb:	00 00 
  40c8ed:	c5 f9 7f 8c 24 30 01 	vmovdqa %xmm1,0x130(%rsp)
  40c8f4:	00 00 
  40c8f6:	e9 ab e8 ff ff       	jmpq   40b1a6 <_Z6windowid+0x7d6>
  40c8fb:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  40c900:	c5 f9 7f bc 24 e0 00 	vmovdqa %xmm7,0xe0(%rsp)
  40c907:	00 00 
  40c909:	e9 44 e8 ff ff       	jmpq   40b152 <_Z6windowid+0x782>
  40c90e:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  40c913:	c5 f9 7f bc 24 80 00 	vmovdqa %xmm7,0x80(%rsp)
  40c91a:	00 00 
  40c91c:	e9 5d e5 ff ff       	jmpq   40ae7e <_Z6windowid+0x4ae>
  40c921:	c5 f9 6f 94 24 60 01 	vmovdqa 0x160(%rsp),%xmm2
  40c928:	00 00 
  40c92a:	c5 f9 7f 94 24 90 01 	vmovdqa %xmm2,0x190(%rsp)
  40c931:	00 00 
  40c933:	e9 a8 ec ff ff       	jmpq   40b5e0 <_Z6windowid+0xc10>
  40c938:	8b 77 20             	mov    0x20(%rdi),%esi
  40c93b:	83 ce 04             	or     $0x4,%esi
  40c93e:	e8 dd 6a ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40c943:	e9 cb fa ff ff       	jmpq   40c413 <_Z6windowid+0x1a43>
  40c948:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40c94d:	88 84 24 e0 00 00 00 	mov    %al,0xe0(%rsp)
  40c954:	4c 89 f8             	mov    %r15,%rax
  40c957:	e9 43 f3 ff ff       	jmpq   40bc9f <_Z6windowid+0x12cf>
  40c95c:	4c 89 c9             	mov    %r9,%rcx
  40c95f:	31 d2                	xor    %edx,%edx
  40c961:	31 f6                	xor    %esi,%esi
  40c963:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40c96a:	00 
  40c96b:	e8 50 6a ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40c970:	e9 a9 e7 ff ff       	jmpq   40b11e <_Z6windowid+0x74e>
  40c975:	8d 58 06             	lea    0x6(%rax),%ebx
  40c978:	e9 df e5 ff ff       	jmpq   40af5c <_Z6windowid+0x58c>
  40c97d:	8d 58 05             	lea    0x5(%rax),%ebx
  40c980:	e9 d7 e5 ff ff       	jmpq   40af5c <_Z6windowid+0x58c>
  40c985:	8d 58 06             	lea    0x6(%rax),%ebx
  40c988:	e9 ef e3 ff ff       	jmpq   40ad7c <_Z6windowid+0x3ac>
  40c98d:	8d 58 05             	lea    0x5(%rax),%ebx
  40c990:	e9 e7 e3 ff ff       	jmpq   40ad7c <_Z6windowid+0x3ac>
  40c995:	8d 58 07             	lea    0x7(%rax),%ebx
  40c998:	e9 df e3 ff ff       	jmpq   40ad7c <_Z6windowid+0x3ac>
  40c99d:	8d 58 07             	lea    0x7(%rax),%ebx
  40c9a0:	e9 b7 e5 ff ff       	jmpq   40af5c <_Z6windowid+0x58c>
  40c9a5:	4d 85 e4             	test   %r12,%r12
  40c9a8:	0f 85 4b 01 00 00    	jne    40caf9 <_Z6windowid+0x2129>
  40c9ae:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c9b5:	00 
  40c9b6:	e9 04 f4 ff ff       	jmpq   40bdbf <_Z6windowid+0x13ef>
  40c9bb:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c9c0:	31 d2                	xor    %edx,%edx
  40c9c2:	48 8d b4 24 b0 00 00 	lea    0xb0(%rsp),%rsi
  40c9c9:	00 
  40c9ca:	e8 91 6a ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c9cf:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c9d6:	00 
  40c9d7:	48 89 c7             	mov    %rax,%rdi
  40c9da:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
  40c9e1:	00 
  40c9e2:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40c9e9:	00 
  40c9ea:	4c 89 e2             	mov    %r12,%rdx
  40c9ed:	4c 89 ee             	mov    %r13,%rsi
  40c9f0:	e8 5b 68 ff ff       	callq  403250 <memcpy@plt>
  40c9f5:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
  40c9fc:	00 
  40c9fd:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40ca04:	00 
  40ca05:	e9 b5 f3 ff ff       	jmpq   40bdbf <_Z6windowid+0x13ef>
  40ca0a:	31 d2                	xor    %edx,%edx
  40ca0c:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40ca13:	00 
  40ca14:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  40ca1b:	00 
  40ca1c:	e8 3f 6a ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40ca21:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
  40ca28:	00 
  40ca29:	48 89 c7             	mov    %rax,%rdi
  40ca2c:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40ca33:	00 
  40ca34:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
  40ca3b:	00 
  40ca3c:	4c 89 e2             	mov    %r12,%rdx
  40ca3f:	4c 89 ee             	mov    %r13,%rsi
  40ca42:	e8 09 68 ff ff       	callq  403250 <memcpy@plt>
  40ca47:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40ca4e:	00 
  40ca4f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40ca56:	00 
  40ca57:	e9 43 f2 ff ff       	jmpq   40bc9f <_Z6windowid+0x12cf>
  40ca5c:	8b 77 20             	mov    0x20(%rdi),%esi
  40ca5f:	83 ce 04             	or     $0x4,%esi
  40ca62:	e8 b9 69 ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40ca67:	e9 cb f4 ff ff       	jmpq   40bf37 <_Z6windowid+0x1567>
  40ca6c:	c5 f9 6f b4 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm6
  40ca73:	00 00 
  40ca75:	c5 f9 7f b4 24 90 01 	vmovdqa %xmm6,0x190(%rsp)
  40ca7c:	00 00 
  40ca7e:	e9 95 f2 ff ff       	jmpq   40bd18 <_Z6windowid+0x1348>
  40ca83:	bb 02 00 00 00       	mov    $0x2,%ebx
  40ca88:	e9 cf e4 ff ff       	jmpq   40af5c <_Z6windowid+0x58c>
  40ca8d:	bb 01 00 00 00       	mov    $0x1,%ebx
  40ca92:	e9 e5 e2 ff ff       	jmpq   40ad7c <_Z6windowid+0x3ac>
  40ca97:	bb 02 00 00 00       	mov    $0x2,%ebx
  40ca9c:	e9 db e2 ff ff       	jmpq   40ad7c <_Z6windowid+0x3ac>
  40caa1:	bb 03 00 00 00       	mov    $0x3,%ebx
  40caa6:	e9 d1 e2 ff ff       	jmpq   40ad7c <_Z6windowid+0x3ac>
  40caab:	bb 04 00 00 00       	mov    $0x4,%ebx
  40cab0:	e9 c7 e2 ff ff       	jmpq   40ad7c <_Z6windowid+0x3ac>
  40cab5:	bb 03 00 00 00       	mov    $0x3,%ebx
  40caba:	e9 9d e4 ff ff       	jmpq   40af5c <_Z6windowid+0x58c>
  40cabf:	bb 04 00 00 00       	mov    $0x4,%ebx
  40cac4:	e9 93 e4 ff ff       	jmpq   40af5c <_Z6windowid+0x58c>
  40cac9:	bb 01 00 00 00       	mov    $0x1,%ebx
  40cace:	e9 89 e4 ff ff       	jmpq   40af5c <_Z6windowid+0x58c>
  40cad3:	bf 4a f0 40 00       	mov    $0x40f04a,%edi
  40cad8:	e8 a3 68 ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  40cadd:	bf 20 f4 40 00       	mov    $0x40f420,%edi
  40cae2:	e8 09 67 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40cae7:	bf d1 f4 40 00       	mov    $0x40f4d1,%edi
  40caec:	e8 6f 66 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40caf1:	4c 89 ff             	mov    %r15,%rdi
  40caf4:	e9 43 ff ff ff       	jmpq   40ca3c <_Z6windowid+0x206c>
  40caf9:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40cb00:	00 
  40cb01:	e9 e4 fe ff ff       	jmpq   40c9ea <_Z6windowid+0x201a>
  40cb06:	bf 20 f4 40 00       	mov    $0x40f420,%edi
  40cb0b:	e8 e0 66 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40cb10:	bf 4a f0 40 00       	mov    $0x40f04a,%edi
  40cb15:	e8 86 66 ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40cb1a:	bf 4a f0 40 00       	mov    $0x40f04a,%edi
  40cb1f:	e8 5c 68 ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  40cb24:	bf 20 f4 40 00       	mov    $0x40f420,%edi
  40cb29:	e8 c2 66 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40cb2e:	bf d1 f4 40 00       	mov    $0x40f4d1,%edi
  40cb33:	e8 28 66 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40cb38:	bf 20 f4 40 00       	mov    $0x40f420,%edi
  40cb3d:	e8 ae 66 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40cb42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40cb48:	bf 20 f4 40 00       	mov    $0x40f420,%edi
  40cb4d:	e8 9e 66 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40cb52:	bf d1 f4 40 00       	mov    $0x40f4d1,%edi
  40cb57:	e8 04 66 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40cb5c:	bf 20 f4 40 00       	mov    $0x40f420,%edi
  40cb61:	e8 8a 66 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40cb66:	bb 01 00 00 00       	mov    $0x1,%ebx
  40cb6b:	e9 dc f0 ff ff       	jmpq   40bc4c <_Z6windowid+0x127c>
  40cb70:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40cb77:	00 
  40cb78:	e9 f5 f5 ff ff       	jmpq   40c172 <_Z6windowid+0x17a2>
  40cb7d:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40cb84:	00 
  40cb85:	e9 3a f6 ff ff       	jmpq   40c1c4 <_Z6windowid+0x17f4>
  40cb8a:	48 8d bc 24 30 01 00 	lea    0x130(%rsp),%rdi
  40cb91:	00 
  40cb92:	e9 f3 fa ff ff       	jmpq   40c68a <_Z6windowid+0x1cba>
  40cb97:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40cb9e:	00 
  40cb9f:	e9 43 fc ff ff       	jmpq   40c7e7 <_Z6windowid+0x1e17>
  40cba4:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40cbab:	00 
  40cbac:	e9 3e fb ff ff       	jmpq   40c6ef <_Z6windowid+0x1d1f>
  40cbb1:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  40cbb8:	00 
  40cbb9:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40cbbe:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40cbc5:	00 
  40cbc6:	e9 b7 fb ff ff       	jmpq   40c782 <_Z6windowid+0x1db2>
  40cbcb:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40cbd2:	00 
  40cbd3:	e9 1a e0 ff ff       	jmpq   40abf2 <_Z6windowid+0x222>
  40cbd8:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40cbdf:	00 
  40cbe0:	e9 67 fc ff ff       	jmpq   40c84c <_Z6windowid+0x1e7c>
  40cbe5:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40cbec:	00 
  40cbed:	e9 c2 fc ff ff       	jmpq   40c8b4 <_Z6windowid+0x1ee4>
  40cbf2:	bf d1 f4 40 00       	mov    $0x40f4d1,%edi
  40cbf7:	e8 64 65 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40cbfc:	bf 20 f4 40 00       	mov    $0x40f420,%edi
  40cc01:	e8 ea 65 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40cc06:	bf 20 f4 40 00       	mov    $0x40f420,%edi
  40cc0b:	e8 e0 65 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40cc10:	bf 4a f0 40 00       	mov    $0x40f04a,%edi
  40cc15:	e8 86 65 ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40cc1a:	bf 20 f4 40 00       	mov    $0x40f420,%edi
  40cc1f:	e8 cc 65 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40cc24:	48 89 c3             	mov    %rax,%rbx
  40cc27:	e9 e6 68 ff ff       	jmpq   403512 <_Z6windowid.cold>
  40cc2c:	48 89 c3             	mov    %rax,%rbx
  40cc2f:	c5 f8 77             	vzeroupper 
  40cc32:	e9 57 69 ff ff       	jmpq   40358e <_Z6windowid.cold+0x7c>
  40cc37:	48 89 c3             	mov    %rax,%rbx
  40cc3a:	e9 9e 69 ff ff       	jmpq   4035dd <_Z6windowid.cold+0xcb>
  40cc3f:	48 89 c3             	mov    %rax,%rbx
  40cc42:	e9 d0 69 ff ff       	jmpq   403617 <_Z6windowid.cold+0x105>
  40cc47:	48 89 c3             	mov    %rax,%rbx
  40cc4a:	c5 f8 77             	vzeroupper 
  40cc4d:	e9 e2 69 ff ff       	jmpq   403634 <_Z6windowid.cold+0x122>
  40cc52:	48 89 c3             	mov    %rax,%rbx
  40cc55:	e9 07 69 ff ff       	jmpq   403561 <_Z6windowid.cold+0x4f>
  40cc5a:	49 89 c4             	mov    %rax,%r12
  40cc5d:	e9 16 6a ff ff       	jmpq   403678 <_Z6windowid.cold+0x166>
  40cc62:	48 89 c3             	mov    %rax,%rbx
  40cc65:	c5 f8 77             	vzeroupper 
  40cc68:	e9 65 6a ff ff       	jmpq   4036d2 <_Z6windowid.cold+0x1c0>
  40cc6d:	48 89 c3             	mov    %rax,%rbx
  40cc70:	e9 4d 6a ff ff       	jmpq   4036c2 <_Z6windowid.cold+0x1b0>
  40cc75:	48 89 c3             	mov    %rax,%rbx
  40cc78:	e9 1a 6b ff ff       	jmpq   403797 <_Z6windowid.cold+0x285>
  40cc7d:	49 89 c4             	mov    %rax,%r12
  40cc80:	e9 27 6b ff ff       	jmpq   4037ac <_Z6windowid.cold+0x29a>
  40cc85:	48 89 c3             	mov    %rax,%rbx
  40cc88:	c5 f8 77             	vzeroupper 
  40cc8b:	e9 bc 68 ff ff       	jmpq   40354c <_Z6windowid.cold+0x3a>
  40cc90:	48 89 c3             	mov    %rax,%rbx
  40cc93:	c5 f8 77             	vzeroupper 
  40cc96:	e9 cd 6a ff ff       	jmpq   403768 <_Z6windowid.cold+0x256>
  40cc9b:	49 89 c4             	mov    %rax,%r12
  40cc9e:	c5 f8 77             	vzeroupper 
  40cca1:	e9 23 6b ff ff       	jmpq   4037c9 <_Z6windowid.cold+0x2b7>
  40cca6:	48 89 c3             	mov    %rax,%rbx
  40cca9:	e9 4e 6b ff ff       	jmpq   4037fc <_Z6windowid.cold+0x2ea>
  40ccae:	48 89 c3             	mov    %rax,%rbx
  40ccb1:	c5 f8 77             	vzeroupper 
  40ccb4:	e9 3b 6a ff ff       	jmpq   4036f4 <_Z6windowid.cold+0x1e2>
  40ccb9:	48 89 c3             	mov    %rax,%rbx
  40ccbc:	c5 f8 77             	vzeroupper 
  40ccbf:	e9 b9 6b ff ff       	jmpq   40387d <_Z6windowid.cold+0x36b>
  40ccc4:	48 89 c3             	mov    %rax,%rbx
  40ccc7:	e9 66 6b ff ff       	jmpq   403832 <_Z6windowid.cold+0x320>
  40cccc:	48 89 c7             	mov    %rax,%rdi
  40cccf:	e9 b8 6b ff ff       	jmpq   40388c <_Z6windowid.cold+0x37a>
  40ccd4:	48 89 c3             	mov    %rax,%rbx
  40ccd7:	c5 f8 77             	vzeroupper 
  40ccda:	e9 85 6b ff ff       	jmpq   403864 <_Z6windowid.cold+0x352>
  40ccdf:	48 89 c3             	mov    %rax,%rbx
  40cce2:	c5 f8 77             	vzeroupper 
  40cce5:	e9 58 6b ff ff       	jmpq   403842 <_Z6windowid.cold+0x330>
  40ccea:	48 89 c3             	mov    %rax,%rbx
  40cced:	e9 ac 6b ff ff       	jmpq   40389e <_Z6windowid.cold+0x38c>
  40ccf2:	48 89 c3             	mov    %rax,%rbx
  40ccf5:	e9 b6 6b ff ff       	jmpq   4038b0 <_Z6windowid.cold+0x39e>
  40ccfa:	48 89 c3             	mov    %rax,%rbx
  40ccfd:	e9 c0 6b ff ff       	jmpq   4038c2 <_Z6windowid.cold+0x3b0>
  40cd02:	48 89 c3             	mov    %rax,%rbx
  40cd05:	c5 f8 77             	vzeroupper 
  40cd08:	e9 a8 68 ff ff       	jmpq   4035b5 <_Z6windowid.cold+0xa3>
  40cd0d:	48 89 c3             	mov    %rax,%rbx
  40cd10:	e9 db 6b ff ff       	jmpq   4038f0 <_Z6windowid.cold+0x3de>
  40cd15:	48 89 c3             	mov    %rax,%rbx
  40cd18:	c5 f8 77             	vzeroupper 
  40cd1b:	e9 22 6a ff ff       	jmpq   403742 <_Z6windowid.cold+0x230>
  40cd20:	48 89 c3             	mov    %rax,%rbx
  40cd23:	c5 f8 77             	vzeroupper 
  40cd26:	e9 e2 6b ff ff       	jmpq   40390d <_Z6windowid.cold+0x3fb>
  40cd2b:	48 89 c3             	mov    %rax,%rbx
  40cd2e:	e9 16 6c ff ff       	jmpq   403949 <_Z6windowid.cold+0x437>
  40cd33:	48 89 c3             	mov    %rax,%rbx
  40cd36:	e9 20 6c ff ff       	jmpq   40395b <_Z6windowid.cold+0x449>
  40cd3b:	48 89 c3             	mov    %rax,%rbx
  40cd3e:	e9 70 6c ff ff       	jmpq   4039b3 <_Z6windowid.cold+0x4a1>
  40cd43:	48 89 c3             	mov    %rax,%rbx
  40cd46:	c5 f8 77             	vzeroupper 
  40cd49:	e9 f5 6c ff ff       	jmpq   403a43 <_Z6windowid.cold+0x531>
  40cd4e:	48 89 c3             	mov    %rax,%rbx
  40cd51:	c5 f8 77             	vzeroupper 
  40cd54:	e9 3a 6d ff ff       	jmpq   403a93 <_Z6windowid.cold+0x581>
  40cd59:	48 89 c3             	mov    %rax,%rbx
  40cd5c:	e9 11 6d ff ff       	jmpq   403a72 <_Z6windowid.cold+0x560>
  40cd61:	48 89 c3             	mov    %rax,%rbx
  40cd64:	e9 59 6d ff ff       	jmpq   403ac2 <_Z6windowid.cold+0x5b0>
  40cd69:	e9 a5 6d ff ff       	jmpq   403b13 <_Z6windowid.cold+0x601>
  40cd6e:	48 89 c3             	mov    %rax,%rbx
  40cd71:	c5 f8 77             	vzeroupper 
  40cd74:	e9 59 6d ff ff       	jmpq   403ad2 <_Z6windowid.cold+0x5c0>
  40cd79:	48 89 c3             	mov    %rax,%rbx
  40cd7c:	c5 f8 77             	vzeroupper 
  40cd7f:	e9 93 69 ff ff       	jmpq   403717 <_Z6windowid.cold+0x205>
  40cd84:	48 89 c3             	mov    %rax,%rbx
  40cd87:	e9 43 6f ff ff       	jmpq   403ccf <_Z6windowid.cold+0x7bd>
  40cd8c:	48 89 c3             	mov    %rax,%rbx
  40cd8f:	e9 3b 6f ff ff       	jmpq   403ccf <_Z6windowid.cold+0x7bd>
  40cd94:	48 89 c3             	mov    %rax,%rbx
  40cd97:	c5 f8 77             	vzeroupper 
  40cd9a:	e9 7c 6c ff ff       	jmpq   403a1b <_Z6windowid.cold+0x509>
  40cd9f:	48 89 c3             	mov    %rax,%rbx
  40cda2:	c5 f8 77             	vzeroupper 
  40cda5:	e9 e9 6d ff ff       	jmpq   403b93 <_Z6windowid.cold+0x681>
  40cdaa:	c5 f8 77             	vzeroupper 
  40cdad:	e9 be 6d ff ff       	jmpq   403b70 <_Z6windowid.cold+0x65e>
  40cdb2:	49 89 c5             	mov    %rax,%r13
  40cdb5:	e9 a3 6d ff ff       	jmpq   403b5d <_Z6windowid.cold+0x64b>
  40cdba:	48 89 c3             	mov    %rax,%rbx
  40cdbd:	e9 ef 6d ff ff       	jmpq   403bb1 <_Z6windowid.cold+0x69f>
  40cdc2:	48 89 c7             	mov    %rax,%rdi
  40cdc5:	e9 fc 6d ff ff       	jmpq   403bc6 <_Z6windowid.cold+0x6b4>
  40cdca:	48 89 c7             	mov    %rax,%rdi
  40cdcd:	e9 06 6e ff ff       	jmpq   403bd8 <_Z6windowid.cold+0x6c6>
  40cdd2:	48 89 c3             	mov    %rax,%rbx
  40cdd5:	e9 10 6e ff ff       	jmpq   403bea <_Z6windowid.cold+0x6d8>
  40cdda:	48 89 c3             	mov    %rax,%rbx
  40cddd:	c5 f8 77             	vzeroupper 
  40cde0:	e9 54 6e ff ff       	jmpq   403c39 <_Z6windowid.cold+0x727>
  40cde5:	48 89 c3             	mov    %rax,%rbx
  40cde8:	e9 b4 6e ff ff       	jmpq   403ca1 <_Z6windowid.cold+0x78f>
  40cded:	48 89 c3             	mov    %rax,%rbx
  40cdf0:	e9 f9 6b ff ff       	jmpq   4039ee <_Z6windowid.cold+0x4dc>
  40cdf5:	48 89 c3             	mov    %rax,%rbx
  40cdf8:	e9 1b 6e ff ff       	jmpq   403c18 <_Z6windowid.cold+0x706>
  40cdfd:	48 89 c3             	mov    %rax,%rbx
  40ce00:	c5 f8 77             	vzeroupper 
  40ce03:	e9 7c 6b ff ff       	jmpq   403984 <_Z6windowid.cold+0x472>
  40ce08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40ce0f:	00 

000000000040ce10 <_ZN8Counters4openEi._omp_fn.0>:
  40ce10:	55                   	push   %rbp
  40ce11:	48 89 fd             	mov    %rdi,%rbp
  40ce14:	53                   	push   %rbx
  40ce15:	48 83 ec 58          	sub    $0x58,%rsp
  40ce19:	e8 c2 65 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40ce1e:	48 63 d8             	movslq %eax,%rbx
  40ce21:	39 5d 08             	cmp    %ebx,0x8(%rbp)
  40ce24:	7f 0a                	jg     40ce30 <_ZN8Counters4openEi._omp_fn.0+0x20>
  40ce26:	48 83 c4 58          	add    $0x58,%rsp
  40ce2a:	5b                   	pop    %rbx
  40ce2b:	5d                   	pop    %rbp
  40ce2c:	c3                   	retq   
  40ce2d:	0f 1f 00             	nopl   (%rax)
  40ce30:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
  40ce34:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40ce38:	48 89 e6             	mov    %rsp,%rsi
  40ce3b:	45 31 c9             	xor    %r9d,%r9d
  40ce3e:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40ce44:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40ce49:	31 d2                	xor    %edx,%edx
  40ce4b:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40ce50:	31 c0                	xor    %eax,%eax
  40ce52:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40ce58:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40ce5e:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40ce65:	00 00 
  40ce67:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40ce6e:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40ce75:	00 
  40ce76:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40ce7d:	00 00 
  40ce7f:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40ce86:	00 00 
  40ce88:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40ce8f:	00 00 
  40ce91:	e8 ba 61 ff ff       	callq  403050 <syscall@plt>
  40ce96:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  40ce9a:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40ce9e:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40cea1:	48 89 e6             	mov    %rsp,%rsi
  40cea4:	45 31 c9             	xor    %r9d,%r9d
  40cea7:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40cead:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40ceb2:	31 d2                	xor    %edx,%edx
  40ceb4:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40ceb9:	31 c0                	xor    %eax,%eax
  40cebb:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40cec1:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40cec7:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40cece:	00 00 
  40ced0:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  40ced7:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40cede:	00 
  40cedf:	48 c7 44 24 08 b7 02 	movq   $0x2b7,0x8(%rsp)
  40cee6:	00 00 
  40cee8:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40ceef:	00 00 
  40cef1:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40cef8:	00 00 
  40cefa:	e8 51 61 ff ff       	callq  403050 <syscall@plt>
  40ceff:	48 8b 55 18          	mov    0x18(%rbp),%rdx
  40cf03:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40cf07:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40cf0a:	48 89 e6             	mov    %rsp,%rsi
  40cf0d:	45 31 c9             	xor    %r9d,%r9d
  40cf10:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40cf16:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40cf1b:	31 d2                	xor    %edx,%edx
  40cf1d:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40cf22:	31 c0                	xor    %eax,%eax
  40cf24:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40cf2a:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40cf30:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40cf37:	00 00 
  40cf39:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40cf40:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40cf47:	00 
  40cf48:	48 c7 44 24 08 01 00 	movq   $0x1,0x8(%rsp)
  40cf4f:	00 00 
  40cf51:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40cf58:	00 00 
  40cf5a:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40cf61:	00 00 
  40cf63:	e8 e8 60 ff ff       	callq  403050 <syscall@plt>
  40cf68:	48 8b 55 30          	mov    0x30(%rbp),%rdx
  40cf6c:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40cf70:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40cf73:	48 89 e6             	mov    %rsp,%rsi
  40cf76:	45 31 c9             	xor    %r9d,%r9d
  40cf79:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40cf7f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40cf84:	31 d2                	xor    %edx,%edx
  40cf86:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40cf8b:	31 c0                	xor    %eax,%eax
  40cf8d:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40cf93:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40cf99:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40cfa0:	00 00 
  40cfa2:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40cfa9:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40cfb0:	00 
  40cfb1:	48 c7 44 24 08 09 00 	movq   $0x9,0x8(%rsp)
  40cfb8:	00 00 
  40cfba:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40cfc1:	00 00 
  40cfc3:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40cfca:	00 00 
  40cfcc:	e8 7f 60 ff ff       	callq  403050 <syscall@plt>
  40cfd1:	48 8b 55 48          	mov    0x48(%rbp),%rdx
  40cfd5:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40cfd9:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40cfdc:	48 b8 77 04 00 3c 07 	movabs $0x73c000477,%rax
  40cfe3:	00 00 00 
  40cfe6:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40cfec:	48 89 e6             	mov    %rsp,%rsi
  40cfef:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40cff4:	45 31 c9             	xor    %r9d,%r9d
  40cff7:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40cffd:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40d002:	31 d2                	xor    %edx,%edx
  40d004:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40d009:	31 c0                	xor    %eax,%eax
  40d00b:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40d011:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40d018:	00 00 
  40d01a:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  40d021:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40d028:	00 
  40d029:	48 c7 44 24 08 2a 01 	movq   $0x12a,0x8(%rsp)
  40d030:	00 00 
  40d032:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40d039:	00 00 
  40d03b:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40d042:	00 00 
  40d044:	e8 07 60 ff ff       	callq  403050 <syscall@plt>
  40d049:	48 8b 55 60          	mov    0x60(%rbp),%rdx
  40d04d:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d051:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40d054:	48 b8 22 08 f8 bf 0f 	movabs $0xfbff80822,%rax
  40d05b:	00 00 00 
  40d05e:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40d064:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40d06a:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40d06f:	48 89 e6             	mov    %rsp,%rsi
  40d072:	45 31 c9             	xor    %r9d,%r9d
  40d075:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40d07a:	31 d2                	xor    %edx,%edx
  40d07c:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40d081:	31 c0                	xor    %eax,%eax
  40d083:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40d08a:	00 00 
  40d08c:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  40d093:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40d09a:	00 
  40d09b:	48 c7 44 24 08 2b 01 	movq   $0x12b,0x8(%rsp)
  40d0a2:	00 00 
  40d0a4:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40d0ab:	00 00 
  40d0ad:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40d0b4:	00 00 
  40d0b6:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40d0bc:	e8 8f 5f ff ff       	callq  403050 <syscall@plt>
  40d0c1:	49 89 c0             	mov    %rax,%r8
  40d0c4:	48 8b 45 78          	mov    0x78(%rbp),%rax
  40d0c8:	44 89 04 98          	mov    %r8d,(%rax,%rbx,4)
  40d0cc:	48 83 c4 58          	add    $0x58,%rsp
  40d0d0:	5b                   	pop    %rbx
  40d0d1:	5d                   	pop    %rbp
  40d0d2:	c3                   	retq   
  40d0d3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40d0da:	00 00 00 
  40d0dd:	0f 1f 00             	nopl   (%rax)

000000000040d0e0 <_ZNSt7__cxx119to_stringEi>:
  40d0e0:	41 56                	push   %r14
  40d0e2:	89 f0                	mov    %esi,%eax
  40d0e4:	c1 f8 1f             	sar    $0x1f,%eax
  40d0e7:	41 55                	push   %r13
  40d0e9:	41 89 f6             	mov    %esi,%r14d
  40d0ec:	49 89 fd             	mov    %rdi,%r13
  40d0ef:	41 54                	push   %r12
  40d0f1:	41 c1 ee 1f          	shr    $0x1f,%r14d
  40d0f5:	55                   	push   %rbp
  40d0f6:	89 f5                	mov    %esi,%ebp
  40d0f8:	31 c5                	xor    %eax,%ebp
  40d0fa:	29 c5                	sub    %eax,%ebp
  40d0fc:	53                   	push   %rbx
  40d0fd:	83 fd 09             	cmp    $0x9,%ebp
  40d100:	0f 86 86 01 00 00    	jbe    40d28c <_ZNSt7__cxx119to_stringEi+0x1ac>
  40d106:	83 fd 63             	cmp    $0x63,%ebp
  40d109:	0f 86 9f 01 00 00    	jbe    40d2ae <_ZNSt7__cxx119to_stringEi+0x1ce>
  40d10f:	81 fd e7 03 00 00    	cmp    $0x3e7,%ebp
  40d115:	0f 86 b3 01 00 00    	jbe    40d2ce <_ZNSt7__cxx119to_stringEi+0x1ee>
  40d11b:	89 eb                	mov    %ebp,%ebx
  40d11d:	48 89 da             	mov    %rbx,%rdx
  40d120:	81 fd 0f 27 00 00    	cmp    $0x270f,%ebp
  40d126:	0f 86 92 01 00 00    	jbe    40d2be <_ZNSt7__cxx119to_stringEi+0x1de>
  40d12c:	b9 01 00 00 00       	mov    $0x1,%ecx
  40d131:	48 bf 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rdi
  40d138:	c5 6d 34 
  40d13b:	eb 24                	jmp    40d161 <_ZNSt7__cxx119to_stringEi+0x81>
  40d13d:	0f 1f 00             	nopl   (%rax)
  40d140:	83 fa 63             	cmp    $0x63,%edx
  40d143:	0f 86 c7 00 00 00    	jbe    40d210 <_ZNSt7__cxx119to_stringEi+0x130>
  40d149:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40d14f:	0f 86 1b 01 00 00    	jbe    40d270 <_ZNSt7__cxx119to_stringEi+0x190>
  40d155:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40d15b:	0f 86 1f 01 00 00    	jbe    40d280 <_ZNSt7__cxx119to_stringEi+0x1a0>
  40d161:	48 89 d0             	mov    %rdx,%rax
  40d164:	48 89 d6             	mov    %rdx,%rsi
  40d167:	48 f7 e7             	mul    %rdi
  40d16a:	89 c8                	mov    %ecx,%eax
  40d16c:	83 c1 04             	add    $0x4,%ecx
  40d16f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40d173:	48 81 fe 9f 86 01 00 	cmp    $0x1869f,%rsi
  40d17a:	77 c4                	ja     40d140 <_ZNSt7__cxx119to_stringEi+0x60>
  40d17c:	44 8d 60 03          	lea    0x3(%rax),%r12d
  40d180:	49 8d 45 10          	lea    0x10(%r13),%rax
  40d184:	49 89 45 00          	mov    %rax,0x0(%r13)
  40d188:	41 8d 34 0e          	lea    (%r14,%rcx,1),%esi
  40d18c:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40d191:	4c 89 ef             	mov    %r13,%rdi
  40d194:	e8 57 61 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40d199:	41 0f b6 ce          	movzbl %r14b,%ecx
  40d19d:	49 03 4d 00          	add    0x0(%r13),%rcx
  40d1a1:	eb 07                	jmp    40d1aa <_ZNSt7__cxx119to_stringEi+0xca>
  40d1a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40d1a8:	89 eb                	mov    %ebp,%ebx
  40d1aa:	48 69 d3 1f 85 eb 51 	imul   $0x51eb851f,%rbx,%rdx
  40d1b1:	89 e8                	mov    %ebp,%eax
  40d1b3:	48 c1 ea 25          	shr    $0x25,%rdx
  40d1b7:	6b f2 64             	imul   $0x64,%edx,%esi
  40d1ba:	29 f0                	sub    %esi,%eax
  40d1bc:	01 c0                	add    %eax,%eax
  40d1be:	8d 78 01             	lea    0x1(%rax),%edi
  40d1c1:	0f b6 bf 00 f5 40 00 	movzbl 0x40f500(%rdi),%edi
  40d1c8:	0f b6 80 00 f5 40 00 	movzbl 0x40f500(%rax),%eax
  40d1cf:	89 ee                	mov    %ebp,%esi
  40d1d1:	89 d5                	mov    %edx,%ebp
  40d1d3:	44 89 e2             	mov    %r12d,%edx
  40d1d6:	40 88 3c 11          	mov    %dil,(%rcx,%rdx,1)
  40d1da:	41 8d 54 24 ff       	lea    -0x1(%r12),%edx
  40d1df:	88 04 11             	mov    %al,(%rcx,%rdx,1)
  40d1e2:	41 83 ec 02          	sub    $0x2,%r12d
  40d1e6:	81 fe 0f 27 00 00    	cmp    $0x270f,%esi
  40d1ec:	77 ba                	ja     40d1a8 <_ZNSt7__cxx119to_stringEi+0xc8>
  40d1ee:	81 fe e7 03 00 00    	cmp    $0x3e7,%esi
  40d1f4:	77 4c                	ja     40d242 <_ZNSt7__cxx119to_stringEi+0x162>
  40d1f6:	83 c5 30             	add    $0x30,%ebp
  40d1f9:	40 88 29             	mov    %bpl,(%rcx)
  40d1fc:	4c 89 e8             	mov    %r13,%rax
  40d1ff:	5b                   	pop    %rbx
  40d200:	5d                   	pop    %rbp
  40d201:	41 5c                	pop    %r12
  40d203:	41 5d                	pop    %r13
  40d205:	41 5e                	pop    %r14
  40d207:	c3                   	retq   
  40d208:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40d20f:	00 
  40d210:	83 c0 05             	add    $0x5,%eax
  40d213:	41 89 cc             	mov    %ecx,%r12d
  40d216:	49 8d 55 10          	lea    0x10(%r13),%rdx
  40d21a:	49 89 55 00          	mov    %rdx,0x0(%r13)
  40d21e:	41 8d 34 06          	lea    (%r14,%rax,1),%esi
  40d222:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40d227:	4c 89 ef             	mov    %r13,%rdi
  40d22a:	e8 c1 60 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40d22f:	41 0f b6 ce          	movzbl %r14b,%ecx
  40d233:	49 03 4d 00          	add    0x0(%r13),%rcx
  40d237:	89 eb                	mov    %ebp,%ebx
  40d239:	83 fd 63             	cmp    $0x63,%ebp
  40d23c:	0f 87 68 ff ff ff    	ja     40d1aa <_ZNSt7__cxx119to_stringEi+0xca>
  40d242:	01 ed                	add    %ebp,%ebp
  40d244:	8d 45 01             	lea    0x1(%rbp),%eax
  40d247:	0f b6 80 00 f5 40 00 	movzbl 0x40f500(%rax),%eax
  40d24e:	0f b6 ad 00 f5 40 00 	movzbl 0x40f500(%rbp),%ebp
  40d255:	88 41 01             	mov    %al,0x1(%rcx)
  40d258:	40 88 29             	mov    %bpl,(%rcx)
  40d25b:	4c 89 e8             	mov    %r13,%rax
  40d25e:	5b                   	pop    %rbx
  40d25f:	5d                   	pop    %rbp
  40d260:	41 5c                	pop    %r12
  40d262:	41 5d                	pop    %r13
  40d264:	41 5e                	pop    %r14
  40d266:	c3                   	retq   
  40d267:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40d26e:	00 00 
  40d270:	8d 48 06             	lea    0x6(%rax),%ecx
  40d273:	44 8d 60 05          	lea    0x5(%rax),%r12d
  40d277:	e9 04 ff ff ff       	jmpq   40d180 <_ZNSt7__cxx119to_stringEi+0xa0>
  40d27c:	0f 1f 40 00          	nopl   0x0(%rax)
  40d280:	8d 48 07             	lea    0x7(%rax),%ecx
  40d283:	44 8d 60 06          	lea    0x6(%rax),%r12d
  40d287:	e9 f4 fe ff ff       	jmpq   40d180 <_ZNSt7__cxx119to_stringEi+0xa0>
  40d28c:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40d290:	48 89 07             	mov    %rax,(%rdi)
  40d293:	41 8d 76 01          	lea    0x1(%r14),%esi
  40d297:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40d29c:	e8 4f 60 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40d2a1:	41 0f b6 ce          	movzbl %r14b,%ecx
  40d2a5:	49 03 4d 00          	add    0x0(%r13),%rcx
  40d2a9:	e9 48 ff ff ff       	jmpq   40d1f6 <_ZNSt7__cxx119to_stringEi+0x116>
  40d2ae:	b8 02 00 00 00       	mov    $0x2,%eax
  40d2b3:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  40d2b9:	e9 58 ff ff ff       	jmpq   40d216 <_ZNSt7__cxx119to_stringEi+0x136>
  40d2be:	41 bc 03 00 00 00    	mov    $0x3,%r12d
  40d2c4:	b9 04 00 00 00       	mov    $0x4,%ecx
  40d2c9:	e9 b2 fe ff ff       	jmpq   40d180 <_ZNSt7__cxx119to_stringEi+0xa0>
  40d2ce:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  40d2d4:	b9 03 00 00 00       	mov    $0x3,%ecx
  40d2d9:	89 eb                	mov    %ebp,%ebx
  40d2db:	e9 a0 fe ff ff       	jmpq   40d180 <_ZNSt7__cxx119to_stringEi+0xa0>

000000000040d2e0 <_ZNSt10filesystem7__cxx114pathD1Ev>:
  40d2e0:	53                   	push   %rbx
  40d2e1:	48 89 fb             	mov    %rdi,%rbx
  40d2e4:	48 8b 77 20          	mov    0x20(%rdi),%rsi
  40d2e8:	48 85 f6             	test   %rsi,%rsi
  40d2eb:	74 09                	je     40d2f6 <_ZNSt10filesystem7__cxx114pathD1Ev+0x16>
  40d2ed:	48 8d 7f 20          	lea    0x20(%rdi),%rdi
  40d2f1:	e8 aa 5d ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40d2f6:	48 8b 3b             	mov    (%rbx),%rdi
  40d2f9:	48 8d 43 10          	lea    0x10(%rbx),%rax
  40d2fd:	48 39 c7             	cmp    %rax,%rdi
  40d300:	74 0e                	je     40d310 <_ZNSt10filesystem7__cxx114pathD1Ev+0x30>
  40d302:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40d306:	5b                   	pop    %rbx
  40d307:	48 ff c6             	inc    %rsi
  40d30a:	e9 a1 5f ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  40d30f:	90                   	nop
  40d310:	5b                   	pop    %rbx
  40d311:	c3                   	retq   
  40d312:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40d319:	00 00 00 
  40d31c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040d320 <_ZN8Counters4openEi>:
  40d320:	41 57                	push   %r15
  40d322:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40d326:	41 56                	push   %r14
  40d328:	49 89 fe             	mov    %rdi,%r14
  40d32b:	41 55                	push   %r13
  40d32d:	41 54                	push   %r12
  40d32f:	55                   	push   %rbp
  40d330:	48 89 fd             	mov    %rdi,%rbp
  40d333:	53                   	push   %rbx
  40d334:	48 63 de             	movslq %esi,%rbx
  40d337:	4c 8d 24 9d 00 00 00 	lea    0x0(,%rbx,4),%r12
  40d33e:	00 
  40d33f:	48 83 ec 48          	sub    $0x48,%rsp
  40d343:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40d348:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40d34c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40d351:	48 8d 47 48          	lea    0x48(%rdi),%rax
  40d355:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40d35a:	48 8d 47 60          	lea    0x60(%rdi),%rax
  40d35e:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  40d363:	48 8d 47 78          	lea    0x78(%rdi),%rax
  40d367:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  40d36d:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  40d371:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
  40d376:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40d37c:	4c 8d 7c 24 18       	lea    0x18(%rsp),%r15
  40d381:	eb 5a                	jmp    40d3dd <_ZN8Counters4openEi+0xbd>
  40d383:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40d388:	4c 39 ef             	cmp    %r13,%rdi
  40d38b:	74 12                	je     40d39f <_ZN8Counters4openEi+0x7f>
  40d38d:	be ff 00 00 00       	mov    $0xff,%esi
  40d392:	4c 89 14 24          	mov    %r10,(%rsp)
  40d396:	e8 e5 5d ff ff       	callq  403180 <memset@plt>
  40d39b:	4c 8b 14 24          	mov    (%rsp),%r10
  40d39f:	48 89 da             	mov    %rbx,%rdx
  40d3a2:	4c 29 d2             	sub    %r10,%rdx
  40d3a5:	48 c1 e2 02          	shl    $0x2,%rdx
  40d3a9:	4d 8d 54 15 00       	lea    0x0(%r13,%rdx,1),%r10
  40d3ae:	4d 39 d5             	cmp    %r10,%r13
  40d3b1:	74 15                	je     40d3c8 <_ZN8Counters4openEi+0xa8>
  40d3b3:	be ff 00 00 00       	mov    $0xff,%esi
  40d3b8:	4c 89 ef             	mov    %r13,%rdi
  40d3bb:	4c 89 14 24          	mov    %r10,(%rsp)
  40d3bf:	e8 bc 5d ff ff       	callq  403180 <memset@plt>
  40d3c4:	4c 8b 14 24          	mov    (%rsp),%r10
  40d3c8:	4d 89 56 08          	mov    %r10,0x8(%r14)
  40d3cc:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40d3d1:	4c 39 f8             	cmp    %r15,%rax
  40d3d4:	74 72                	je     40d448 <_ZN8Counters4openEi+0x128>
  40d3d6:	4d 8b 37             	mov    (%r15),%r14
  40d3d9:	49 83 c7 08          	add    $0x8,%r15
  40d3dd:	49 8b 3e             	mov    (%r14),%rdi
  40d3e0:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40d3e4:	48 29 fe             	sub    %rdi,%rsi
  40d3e7:	48 89 f0             	mov    %rsi,%rax
  40d3ea:	48 c1 f8 02          	sar    $0x2,%rax
  40d3ee:	48 39 c3             	cmp    %rax,%rbx
  40d3f1:	0f 87 b9 00 00 00    	ja     40d4b0 <_ZN8Counters4openEi+0x190>
  40d3f7:	4d 8b 6e 08          	mov    0x8(%r14),%r13
  40d3fb:	4c 89 ea             	mov    %r13,%rdx
  40d3fe:	48 29 fa             	sub    %rdi,%rdx
  40d401:	49 89 d2             	mov    %rdx,%r10
  40d404:	49 c1 fa 02          	sar    $0x2,%r10
  40d408:	4c 39 d3             	cmp    %r10,%rbx
  40d40b:	0f 87 77 ff ff ff    	ja     40d388 <_ZN8Counters4openEi+0x68>
  40d411:	49 89 fa             	mov    %rdi,%r10
  40d414:	48 85 db             	test   %rbx,%rbx
  40d417:	74 1d                	je     40d436 <_ZN8Counters4openEi+0x116>
  40d419:	4d 01 e2             	add    %r12,%r10
  40d41c:	4c 39 d7             	cmp    %r10,%rdi
  40d41f:	74 15                	je     40d436 <_ZN8Counters4openEi+0x116>
  40d421:	4c 89 e2             	mov    %r12,%rdx
  40d424:	be ff 00 00 00       	mov    $0xff,%esi
  40d429:	4c 89 14 24          	mov    %r10,(%rsp)
  40d42d:	e8 4e 5d ff ff       	callq  403180 <memset@plt>
  40d432:	4c 8b 14 24          	mov    (%rsp),%r10
  40d436:	4d 39 d5             	cmp    %r10,%r13
  40d439:	75 8d                	jne    40d3c8 <_ZN8Counters4openEi+0xa8>
  40d43b:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40d440:	4c 39 f8             	cmp    %r15,%rax
  40d443:	75 91                	jne    40d3d6 <_ZN8Counters4openEi+0xb6>
  40d445:	0f 1f 00             	nopl   (%rax)
  40d448:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40d44c:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40d451:	89 c2                	mov    %eax,%edx
  40d453:	31 c9                	xor    %ecx,%ecx
  40d455:	bf 10 ce 40 00       	mov    $0x40ce10,%edi
  40d45a:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
  40d45f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40d463:	e8 38 5f ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40d468:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  40d46c:	48 8b 75 08          	mov    0x8(%rbp),%rsi
  40d470:	c6 85 90 00 00 00 01 	movb   $0x1,0x90(%rbp)
  40d477:	48 39 d6             	cmp    %rdx,%rsi
  40d47a:	74 24                	je     40d4a0 <_ZN8Counters4openEi+0x180>
  40d47c:	b9 01 00 00 00       	mov    $0x1,%ecx
  40d481:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40d488:	8b 02                	mov    (%rdx),%eax
  40d48a:	48 83 c2 04          	add    $0x4,%rdx
  40d48e:	f7 d0                	not    %eax
  40d490:	c1 e8 1f             	shr    $0x1f,%eax
  40d493:	21 c1                	and    %eax,%ecx
  40d495:	48 39 f2             	cmp    %rsi,%rdx
  40d498:	75 ee                	jne    40d488 <_ZN8Counters4openEi+0x168>
  40d49a:	88 8d 90 00 00 00    	mov    %cl,0x90(%rbp)
  40d4a0:	48 83 c4 48          	add    $0x48,%rsp
  40d4a4:	5b                   	pop    %rbx
  40d4a5:	5d                   	pop    %rbp
  40d4a6:	41 5c                	pop    %r12
  40d4a8:	41 5d                	pop    %r13
  40d4aa:	41 5e                	pop    %r14
  40d4ac:	41 5f                	pop    %r15
  40d4ae:	c3                   	retq   
  40d4af:	90                   	nop
  40d4b0:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
  40d4b7:	ff ff 1f 
  40d4ba:	48 39 c3             	cmp    %rax,%rbx
  40d4bd:	77 7b                	ja     40d53a <_ZN8Counters4openEi+0x21a>
  40d4bf:	48 85 db             	test   %rbx,%rbx
  40d4c2:	74 5c                	je     40d520 <_ZN8Counters4openEi+0x200>
  40d4c4:	4c 89 e7             	mov    %r12,%rdi
  40d4c7:	e8 d4 5d ff ff       	callq  4032a0 <_Znwm@plt>
  40d4cc:	4e 8d 2c 20          	lea    (%rax,%r12,1),%r13
  40d4d0:	49 89 c2             	mov    %rax,%r10
  40d4d3:	49 39 c5             	cmp    %rax,%r13
  40d4d6:	74 53                	je     40d52b <_ZN8Counters4openEi+0x20b>
  40d4d8:	be ff 00 00 00       	mov    $0xff,%esi
  40d4dd:	48 89 c7             	mov    %rax,%rdi
  40d4e0:	4c 89 e2             	mov    %r12,%rdx
  40d4e3:	e8 98 5c ff ff       	callq  403180 <memset@plt>
  40d4e8:	49 8b 3e             	mov    (%r14),%rdi
  40d4eb:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40d4ef:	49 89 c2             	mov    %rax,%r10
  40d4f2:	48 29 fe             	sub    %rdi,%rsi
  40d4f5:	4c 89 e8             	mov    %r13,%rax
  40d4f8:	c4 c1 f9 6e ca       	vmovq  %r10,%xmm1
  40d4fd:	c4 c3 f1 22 c5 01    	vpinsrq $0x1,%r13,%xmm1,%xmm0
  40d503:	49 89 46 10          	mov    %rax,0x10(%r14)
  40d507:	c4 c1 7a 7f 06       	vmovdqu %xmm0,(%r14)
  40d50c:	48 85 ff             	test   %rdi,%rdi
  40d50f:	0f 84 b7 fe ff ff    	je     40d3cc <_ZN8Counters4openEi+0xac>
  40d515:	e8 96 5d ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40d51a:	e9 ad fe ff ff       	jmpq   40d3cc <_ZN8Counters4openEi+0xac>
  40d51f:	90                   	nop
  40d520:	4c 89 e0             	mov    %r12,%rax
  40d523:	45 31 d2             	xor    %r10d,%r10d
  40d526:	45 31 ed             	xor    %r13d,%r13d
  40d529:	eb cd                	jmp    40d4f8 <_ZN8Counters4openEi+0x1d8>
  40d52b:	49 8b 3e             	mov    (%r14),%rdi
  40d52e:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40d532:	4c 89 e8             	mov    %r13,%rax
  40d535:	48 29 fe             	sub    %rdi,%rsi
  40d538:	eb be                	jmp    40d4f8 <_ZN8Counters4openEi+0x1d8>
  40d53a:	bf a0 f4 40 00       	mov    $0x40f4a0,%edi
  40d53f:	e8 1c 5c ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40d544:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40d54b:	00 00 00 
  40d54e:	66 90                	xchg   %ax,%ax

000000000040d550 <_ZNK8Counters4readEv>:
  40d550:	55                   	push   %rbp
  40d551:	48 89 e5             	mov    %rsp,%rbp
  40d554:	41 57                	push   %r15
  40d556:	41 56                	push   %r14
  40d558:	41 55                	push   %r13
  40d55a:	41 54                	push   %r12
  40d55c:	49 89 fc             	mov    %rdi,%r12
  40d55f:	53                   	push   %rbx
  40d560:	48 83 ec 38          	sub    $0x38,%rsp
  40d564:	c5 fd 28 05 74 21 00 	vmovapd 0x2174(%rip),%ymm0        # 40f6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  40d56b:	00 
  40d56c:	48 8b 05 85 21 00 00 	mov    0x2185(%rip),%rax        # 40f6f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  40d573:	44 0f b6 b6 90 00 00 	movzbl 0x90(%rsi),%r14d
  40d57a:	00 
  40d57b:	c5 fd 11 47 08       	vmovupd %ymm0,0x8(%rdi)
  40d580:	c6 07 00             	movb   $0x0,(%rdi)
  40d583:	c5 fb 12 05 6d 21 00 	vmovddup 0x216d(%rip),%xmm0        # 40f6f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  40d58a:	00 
  40d58b:	48 89 47 38          	mov    %rax,0x38(%rdi)
  40d58f:	c7 47 40 00 00 00 00 	movl   $0x0,0x40(%rdi)
  40d596:	c5 f9 11 47 28       	vmovupd %xmm0,0x28(%rdi)
  40d59b:	45 84 f6             	test   %r14b,%r14b
  40d59e:	0f 84 44 01 00 00    	je     40d6e8 <_ZNK8Counters4readEv+0x198>
  40d5a4:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
  40d5a8:	48 8b 16             	mov    (%rsi),%rdx
  40d5ab:	48 89 c8             	mov    %rcx,%rax
  40d5ae:	48 29 d0             	sub    %rdx,%rax
  40d5b1:	48 c1 f8 02          	sar    $0x2,%rax
  40d5b5:	c6 07 01             	movb   $0x1,(%rdi)
  40d5b8:	89 47 40             	mov    %eax,0x40(%rdi)
  40d5bb:	48 89 f3             	mov    %rsi,%rbx
  40d5be:	48 39 d1             	cmp    %rdx,%rcx
  40d5c1:	0f 84 8c 03 00 00    	je     40d953 <_ZNK8Counters4readEv+0x403>
  40d5c7:	45 31 ff             	xor    %r15d,%r15d
  40d5ca:	c5 f8 77             	vzeroupper 
  40d5cd:	eb 1e                	jmp    40d5ed <_ZNK8Counters4readEv+0x9d>
  40d5cf:	90                   	nop
  40d5d0:	45 31 f6             	xor    %r14d,%r14d
  40d5d3:	48 8b 13             	mov    (%rbx),%rdx
  40d5d6:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40d5da:	49 ff c7             	inc    %r15
  40d5dd:	48 29 d0             	sub    %rdx,%rax
  40d5e0:	48 c1 f8 02          	sar    $0x2,%rax
  40d5e4:	49 39 c7             	cmp    %rax,%r15
  40d5e7:	0f 83 23 01 00 00    	jae    40d710 <_ZNK8Counters4readEv+0x1c0>
  40d5ed:	42 8b 3c ba          	mov    (%rdx,%r15,4),%edi
  40d5f1:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40d5f6:	ba 18 00 00 00       	mov    $0x18,%edx
  40d5fb:	4e 8d 2c bd 00 00 00 	lea    0x0(,%r15,4),%r13
  40d602:	00 
  40d603:	e8 68 5d ff ff       	callq  403370 <read@plt>
  40d608:	48 83 f8 18          	cmp    $0x18,%rax
  40d60c:	0f 85 ee 00 00 00    	jne    40d700 <_ZNK8Counters4readEv+0x1b0>
  40d612:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40d617:	48 85 c0             	test   %rax,%rax
  40d61a:	0f 84 e0 00 00 00    	je     40d700 <_ZNK8Counters4readEv+0x1b0>
  40d620:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40d624:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40d62a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  40d62f:	ba 01 00 00 00       	mov    $0x1,%edx
  40d634:	48 85 c0             	test   %rax,%rax
  40d637:	48 0f 45 d0          	cmovne %rax,%rdx
  40d63b:	62 f1 f7 08 7b d8    	vcvtusi2sd %rax,%xmm1,%xmm3
  40d641:	62 f1 f7 08 7b c2    	vcvtusi2sd %rdx,%xmm1,%xmm0
  40d647:	48 8b 43 18          	mov    0x18(%rbx),%rax
  40d64b:	42 8b 3c 28          	mov    (%rax,%r13,1),%edi
  40d64f:	c5 eb 5e c0          	vdivsd %xmm0,%xmm2,%xmm0
  40d653:	c4 c1 7b 5d 44 24 18 	vminsd 0x18(%r12),%xmm0,%xmm0
  40d65a:	c4 c1 7b 11 44 24 18 	vmovsd %xmm0,0x18(%r12)
  40d661:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40d668:	02 
  40d669:	c5 fb 59 c3          	vmulsd %xmm3,%xmm0,%xmm0
  40d66d:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40d671:	c4 c1 7b 58 44 24 08 	vaddsd 0x8(%r12),%xmm0,%xmm0
  40d678:	c4 c1 7b 11 44 24 08 	vmovsd %xmm0,0x8(%r12)
  40d67f:	85 ff                	test   %edi,%edi
  40d681:	0f 88 49 ff ff ff    	js     40d5d0 <_ZNK8Counters4readEv+0x80>
  40d687:	ba 18 00 00 00       	mov    $0x18,%edx
  40d68c:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40d691:	e8 da 5c ff ff       	callq  403370 <read@plt>
  40d696:	48 83 f8 18          	cmp    $0x18,%rax
  40d69a:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40d69e:	0f 85 2c ff ff ff    	jne    40d5d0 <_ZNK8Counters4readEv+0x80>
  40d6a4:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40d6a9:	48 85 c0             	test   %rax,%rax
  40d6ac:	0f 84 1e ff ff ff    	je     40d5d0 <_ZNK8Counters4readEv+0x80>
  40d6b2:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40d6b9:	03 
  40d6ba:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40d6c1:	02 
  40d6c2:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40d6c6:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40d6cc:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40d6d0:	c4 c1 7b 58 44 24 10 	vaddsd 0x10(%r12),%xmm0,%xmm0
  40d6d7:	c4 c1 7b 11 44 24 10 	vmovsd %xmm0,0x10(%r12)
  40d6de:	e9 f0 fe ff ff       	jmpq   40d5d3 <_ZNK8Counters4readEv+0x83>
  40d6e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40d6e8:	c5 f8 77             	vzeroupper 
  40d6eb:	48 83 c4 38          	add    $0x38,%rsp
  40d6ef:	5b                   	pop    %rbx
  40d6f0:	4c 89 e0             	mov    %r12,%rax
  40d6f3:	41 5c                	pop    %r12
  40d6f5:	41 5d                	pop    %r13
  40d6f7:	41 5e                	pop    %r14
  40d6f9:	41 5f                	pop    %r15
  40d6fb:	5d                   	pop    %rbp
  40d6fc:	c3                   	retq   
  40d6fd:	0f 1f 00             	nopl   (%rax)
  40d700:	41 c6 04 24 00       	movb   $0x0,(%r12)
  40d705:	eb e4                	jmp    40d6eb <_ZNK8Counters4readEv+0x19b>
  40d707:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40d70e:	00 00 
  40d710:	45 84 f6             	test   %r14b,%r14b
  40d713:	75 0c                	jne    40d721 <_ZNK8Counters4readEv+0x1d1>
  40d715:	48 8b 05 dc 1f 00 00 	mov    0x1fdc(%rip),%rax        # 40f6f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  40d71c:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  40d721:	4c 8b 7b 30          	mov    0x30(%rbx),%r15
  40d725:	4c 8b 73 38          	mov    0x38(%rbx),%r14
  40d729:	4d 39 f7             	cmp    %r14,%r15
  40d72c:	0f 84 29 02 00 00    	je     40d95b <_ZNK8Counters4readEv+0x40b>
  40d732:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  40d736:	c5 fb 11 64 24 08    	vmovsd %xmm4,0x8(%rsp)
  40d73c:	c4 c1 f9 7e e5       	vmovq  %xmm4,%r13
  40d741:	eb 5d                	jmp    40d7a0 <_ZNK8Counters4readEv+0x250>
  40d743:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40d748:	ba 18 00 00 00       	mov    $0x18,%edx
  40d74d:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40d752:	e8 19 5c ff ff       	callq  403370 <read@plt>
  40d757:	48 83 f8 18          	cmp    $0x18,%rax
  40d75b:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40d75f:	75 46                	jne    40d7a7 <_ZNK8Counters4readEv+0x257>
  40d761:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40d766:	48 85 c0             	test   %rax,%rax
  40d769:	74 3c                	je     40d7a7 <_ZNK8Counters4readEv+0x257>
  40d76b:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40d772:	03 
  40d773:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40d77a:	02 
  40d77b:	c4 c1 f9 6e ed       	vmovq  %r13,%xmm5
  40d780:	49 83 c7 04          	add    $0x4,%r15
  40d784:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40d788:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40d78e:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40d792:	c5 d3 58 e0          	vaddsd %xmm0,%xmm5,%xmm4
  40d796:	c4 c1 f9 7e e5       	vmovq  %xmm4,%r13
  40d79b:	4d 39 fe             	cmp    %r15,%r14
  40d79e:	74 11                	je     40d7b1 <_ZNK8Counters4readEv+0x261>
  40d7a0:	41 8b 3f             	mov    (%r15),%edi
  40d7a3:	85 ff                	test   %edi,%edi
  40d7a5:	79 a1                	jns    40d748 <_ZNK8Counters4readEv+0x1f8>
  40d7a7:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40d7ae:	00 f0 bf 
  40d7b1:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
  40d7b5:	4c 8b 73 50          	mov    0x50(%rbx),%r14
  40d7b9:	4d 89 6c 24 20       	mov    %r13,0x20(%r12)
  40d7be:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  40d7c3:	4d 39 f7             	cmp    %r14,%r15
  40d7c6:	75 60                	jne    40d828 <_ZNK8Counters4readEv+0x2d8>
  40d7c8:	eb 6f                	jmp    40d839 <_ZNK8Counters4readEv+0x2e9>
  40d7ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40d7d0:	ba 18 00 00 00       	mov    $0x18,%edx
  40d7d5:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40d7da:	e8 91 5b ff ff       	callq  403370 <read@plt>
  40d7df:	48 83 f8 18          	cmp    $0x18,%rax
  40d7e3:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40d7e7:	75 46                	jne    40d82f <_ZNK8Counters4readEv+0x2df>
  40d7e9:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40d7ee:	48 85 c0             	test   %rax,%rax
  40d7f1:	74 3c                	je     40d82f <_ZNK8Counters4readEv+0x2df>
  40d7f3:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40d7fa:	03 
  40d7fb:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40d802:	02 
  40d803:	c4 c1 f9 6e fd       	vmovq  %r13,%xmm7
  40d808:	49 83 c7 04          	add    $0x4,%r15
  40d80c:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40d810:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40d816:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40d81a:	c5 c3 58 f0          	vaddsd %xmm0,%xmm7,%xmm6
  40d81e:	c4 c1 f9 7e f5       	vmovq  %xmm6,%r13
  40d823:	4d 39 fe             	cmp    %r15,%r14
  40d826:	74 11                	je     40d839 <_ZNK8Counters4readEv+0x2e9>
  40d828:	41 8b 3f             	mov    (%r15),%edi
  40d82b:	85 ff                	test   %edi,%edi
  40d82d:	79 a1                	jns    40d7d0 <_ZNK8Counters4readEv+0x280>
  40d82f:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40d836:	00 f0 bf 
  40d839:	4c 8b 7b 60          	mov    0x60(%rbx),%r15
  40d83d:	4c 8b 73 68          	mov    0x68(%rbx),%r14
  40d841:	4d 89 6c 24 28       	mov    %r13,0x28(%r12)
  40d846:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  40d84b:	4d 39 f7             	cmp    %r14,%r15
  40d84e:	75 60                	jne    40d8b0 <_ZNK8Counters4readEv+0x360>
  40d850:	eb 6f                	jmp    40d8c1 <_ZNK8Counters4readEv+0x371>
  40d852:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40d858:	ba 18 00 00 00       	mov    $0x18,%edx
  40d85d:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40d862:	e8 09 5b ff ff       	callq  403370 <read@plt>
  40d867:	48 83 f8 18          	cmp    $0x18,%rax
  40d86b:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40d86f:	75 46                	jne    40d8b7 <_ZNK8Counters4readEv+0x367>
  40d871:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40d876:	48 85 c0             	test   %rax,%rax
  40d879:	74 3c                	je     40d8b7 <_ZNK8Counters4readEv+0x367>
  40d87b:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40d882:	03 
  40d883:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40d88a:	02 
  40d88b:	c4 c1 f9 6e ed       	vmovq  %r13,%xmm5
  40d890:	49 83 c7 04          	add    $0x4,%r15
  40d894:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40d898:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40d89e:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40d8a2:	c5 d3 58 e0          	vaddsd %xmm0,%xmm5,%xmm4
  40d8a6:	c4 c1 f9 7e e5       	vmovq  %xmm4,%r13
  40d8ab:	4d 39 fe             	cmp    %r15,%r14
  40d8ae:	74 11                	je     40d8c1 <_ZNK8Counters4readEv+0x371>
  40d8b0:	41 8b 3f             	mov    (%r15),%edi
  40d8b3:	85 ff                	test   %edi,%edi
  40d8b5:	79 a1                	jns    40d858 <_ZNK8Counters4readEv+0x308>
  40d8b7:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40d8be:	00 f0 bf 
  40d8c1:	4c 8b 73 78          	mov    0x78(%rbx),%r14
  40d8c5:	48 8b 9b 80 00 00 00 	mov    0x80(%rbx),%rbx
  40d8cc:	4d 89 6c 24 30       	mov    %r13,0x30(%r12)
  40d8d1:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  40d8d6:	49 39 de             	cmp    %rbx,%r14
  40d8d9:	75 5d                	jne    40d938 <_ZNK8Counters4readEv+0x3e8>
  40d8db:	eb 6c                	jmp    40d949 <_ZNK8Counters4readEv+0x3f9>
  40d8dd:	0f 1f 00             	nopl   (%rax)
  40d8e0:	ba 18 00 00 00       	mov    $0x18,%edx
  40d8e5:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40d8ea:	e8 81 5a ff ff       	callq  403370 <read@plt>
  40d8ef:	48 83 f8 18          	cmp    $0x18,%rax
  40d8f3:	75 4a                	jne    40d93f <_ZNK8Counters4readEv+0x3ef>
  40d8f5:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40d8fa:	48 85 c0             	test   %rax,%rax
  40d8fd:	74 40                	je     40d93f <_ZNK8Counters4readEv+0x3ef>
  40d8ff:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40d903:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40d90a:	03 
  40d90b:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40d912:	02 
  40d913:	c4 c1 f9 6e fd       	vmovq  %r13,%xmm7
  40d918:	49 83 c6 04          	add    $0x4,%r14
  40d91c:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40d920:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40d926:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40d92a:	c5 c3 58 f0          	vaddsd %xmm0,%xmm7,%xmm6
  40d92e:	c4 c1 f9 7e f5       	vmovq  %xmm6,%r13
  40d933:	4c 39 f3             	cmp    %r14,%rbx
  40d936:	74 11                	je     40d949 <_ZNK8Counters4readEv+0x3f9>
  40d938:	41 8b 3e             	mov    (%r14),%edi
  40d93b:	85 ff                	test   %edi,%edi
  40d93d:	79 a1                	jns    40d8e0 <_ZNK8Counters4readEv+0x390>
  40d93f:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40d946:	00 f0 bf 
  40d949:	4d 89 6c 24 38       	mov    %r13,0x38(%r12)
  40d94e:	e9 98 fd ff ff       	jmpq   40d6eb <_ZNK8Counters4readEv+0x19b>
  40d953:	c5 f8 77             	vzeroupper 
  40d956:	e9 c6 fd ff ff       	jmpq   40d721 <_ZNK8Counters4readEv+0x1d1>
  40d95b:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
  40d95f:	c5 fb 11 6c 24 08    	vmovsd %xmm5,0x8(%rsp)
  40d965:	c4 c1 f9 7e ed       	vmovq  %xmm5,%r13
  40d96a:	e9 42 fe ff ff       	jmpq   40d7b1 <_ZNK8Counters4readEv+0x261>
  40d96f:	90                   	nop

000000000040d970 <_ZN8CountersD1Ev>:
  40d970:	41 56                	push   %r14
  40d972:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40d976:	41 55                	push   %r13
  40d978:	49 89 fd             	mov    %rdi,%r13
  40d97b:	41 54                	push   %r12
  40d97d:	55                   	push   %rbp
  40d97e:	53                   	push   %rbx
  40d97f:	48 83 ec 30          	sub    $0x30,%rsp
  40d983:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40d988:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40d98c:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40d991:	48 8d 47 48          	lea    0x48(%rdi),%rax
  40d995:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40d99a:	48 8d 47 60          	lea    0x60(%rdi),%rax
  40d99e:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  40d9a3:	48 89 3c 24          	mov    %rdi,(%rsp)
  40d9a7:	48 8d 47 78          	lea    0x78(%rdi),%rax
  40d9ab:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  40d9b1:	c5 f9 7f 44 24 20    	vmovdqa %xmm0,0x20(%rsp)
  40d9b7:	49 89 e4             	mov    %rsp,%r12
  40d9ba:	4c 8d 74 24 30       	lea    0x30(%rsp),%r14
  40d9bf:	90                   	nop
  40d9c0:	49 8b 04 24          	mov    (%r12),%rax
  40d9c4:	48 8b 18             	mov    (%rax),%rbx
  40d9c7:	48 8b 68 08          	mov    0x8(%rax),%rbp
  40d9cb:	48 39 dd             	cmp    %rbx,%rbp
  40d9ce:	74 14                	je     40d9e4 <_ZN8CountersD1Ev+0x74>
  40d9d0:	8b 3b                	mov    (%rbx),%edi
  40d9d2:	85 ff                	test   %edi,%edi
  40d9d4:	78 05                	js     40d9db <_ZN8CountersD1Ev+0x6b>
  40d9d6:	e8 d5 5a ff ff       	callq  4034b0 <close@plt>
  40d9db:	48 83 c3 04          	add    $0x4,%rbx
  40d9df:	48 39 dd             	cmp    %rbx,%rbp
  40d9e2:	75 ec                	jne    40d9d0 <_ZN8CountersD1Ev+0x60>
  40d9e4:	49 83 c4 08          	add    $0x8,%r12
  40d9e8:	4d 39 e6             	cmp    %r12,%r14
  40d9eb:	75 d3                	jne    40d9c0 <_ZN8CountersD1Ev+0x50>
  40d9ed:	49 8b 7d 78          	mov    0x78(%r13),%rdi
  40d9f1:	48 85 ff             	test   %rdi,%rdi
  40d9f4:	74 0f                	je     40da05 <_ZN8CountersD1Ev+0x95>
  40d9f6:	49 8b b5 88 00 00 00 	mov    0x88(%r13),%rsi
  40d9fd:	48 29 fe             	sub    %rdi,%rsi
  40da00:	e8 ab 58 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40da05:	49 8b 7d 60          	mov    0x60(%r13),%rdi
  40da09:	48 85 ff             	test   %rdi,%rdi
  40da0c:	74 0c                	je     40da1a <_ZN8CountersD1Ev+0xaa>
  40da0e:	49 8b 75 70          	mov    0x70(%r13),%rsi
  40da12:	48 29 fe             	sub    %rdi,%rsi
  40da15:	e8 96 58 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40da1a:	49 8b 7d 48          	mov    0x48(%r13),%rdi
  40da1e:	48 85 ff             	test   %rdi,%rdi
  40da21:	74 0c                	je     40da2f <_ZN8CountersD1Ev+0xbf>
  40da23:	49 8b 75 58          	mov    0x58(%r13),%rsi
  40da27:	48 29 fe             	sub    %rdi,%rsi
  40da2a:	e8 81 58 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40da2f:	49 8b 7d 30          	mov    0x30(%r13),%rdi
  40da33:	48 85 ff             	test   %rdi,%rdi
  40da36:	74 0c                	je     40da44 <_ZN8CountersD1Ev+0xd4>
  40da38:	49 8b 75 40          	mov    0x40(%r13),%rsi
  40da3c:	48 29 fe             	sub    %rdi,%rsi
  40da3f:	e8 6c 58 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40da44:	49 8b 7d 18          	mov    0x18(%r13),%rdi
  40da48:	48 85 ff             	test   %rdi,%rdi
  40da4b:	74 0c                	je     40da59 <_ZN8CountersD1Ev+0xe9>
  40da4d:	49 8b 75 28          	mov    0x28(%r13),%rsi
  40da51:	48 29 fe             	sub    %rdi,%rsi
  40da54:	e8 57 58 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40da59:	49 8b 7d 00          	mov    0x0(%r13),%rdi
  40da5d:	48 85 ff             	test   %rdi,%rdi
  40da60:	74 18                	je     40da7a <_ZN8CountersD1Ev+0x10a>
  40da62:	49 8b 75 10          	mov    0x10(%r13),%rsi
  40da66:	48 83 c4 30          	add    $0x30,%rsp
  40da6a:	5b                   	pop    %rbx
  40da6b:	5d                   	pop    %rbp
  40da6c:	41 5c                	pop    %r12
  40da6e:	41 5d                	pop    %r13
  40da70:	48 29 fe             	sub    %rdi,%rsi
  40da73:	41 5e                	pop    %r14
  40da75:	e9 36 58 ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  40da7a:	48 83 c4 30          	add    $0x30,%rsp
  40da7e:	5b                   	pop    %rbx
  40da7f:	5d                   	pop    %rbp
  40da80:	41 5c                	pop    %r12
  40da82:	41 5d                	pop    %r13
  40da84:	41 5e                	pop    %r14
  40da86:	c3                   	retq   
  40da87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40da8e:	00 00 

000000000040da90 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>:
  40da90:	41 57                	push   %r15
  40da92:	49 89 ff             	mov    %rdi,%r15
  40da95:	41 56                	push   %r14
  40da97:	41 55                	push   %r13
  40da99:	49 89 f5             	mov    %rsi,%r13
  40da9c:	41 54                	push   %r12
  40da9e:	49 89 cc             	mov    %rcx,%r12
  40daa1:	55                   	push   %rbp
  40daa2:	48 89 d5             	mov    %rdx,%rbp
  40daa5:	53                   	push   %rbx
  40daa6:	48 83 ec 28          	sub    $0x28,%rsp
  40daaa:	44 89 44 24 0c       	mov    %r8d,0xc(%rsp)
  40daaf:	e8 8c 55 ff ff       	callq  403040 <__errno_location@plt>
  40dab4:	44 8b 30             	mov    (%rax),%r14d
  40dab7:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40dabd:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  40dac1:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  40dac6:	48 89 ef             	mov    %rbp,%rdi
  40dac9:	48 89 c3             	mov    %rax,%rbx
  40dacc:	41 ff d7             	callq  *%r15
  40dacf:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40dad4:	48 39 e9             	cmp    %rbp,%rcx
  40dad7:	74 3f                	je     40db18 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x88>
  40dad9:	8b 33                	mov    (%rbx),%esi
  40dadb:	83 fe 22             	cmp    $0x22,%esi
  40dade:	74 30                	je     40db10 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  40dae0:	ba 00 00 00 80       	mov    $0x80000000,%edx
  40dae5:	48 01 c2             	add    %rax,%rdx
  40dae8:	48 c1 ea 20          	shr    $0x20,%rdx
  40daec:	75 22                	jne    40db10 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  40daee:	4d 85 e4             	test   %r12,%r12
  40daf1:	74 07                	je     40dafa <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x6a>
  40daf3:	48 29 e9             	sub    %rbp,%rcx
  40daf6:	49 89 0c 24          	mov    %rcx,(%r12)
  40dafa:	85 f6                	test   %esi,%esi
  40dafc:	75 03                	jne    40db01 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x71>
  40dafe:	44 89 33             	mov    %r14d,(%rbx)
  40db01:	48 83 c4 28          	add    $0x28,%rsp
  40db05:	5b                   	pop    %rbx
  40db06:	5d                   	pop    %rbp
  40db07:	41 5c                	pop    %r12
  40db09:	41 5d                	pop    %r13
  40db0b:	41 5e                	pop    %r14
  40db0d:	41 5f                	pop    %r15
  40db0f:	c3                   	retq   
  40db10:	4c 89 ef             	mov    %r13,%rdi
  40db13:	e8 68 58 ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  40db18:	4c 89 ef             	mov    %r13,%rdi
  40db1b:	e8 80 56 ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40db20:	48 89 c7             	mov    %rax,%rdi
  40db23:	83 3b 00             	cmpl   $0x0,(%rbx)
  40db26:	75 03                	jne    40db2b <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x9b>
  40db28:	44 89 33             	mov    %r14d,(%rbx)
  40db2b:	c5 f8 77             	vzeroupper 
  40db2e:	e8 1d 59 ff ff       	callq  403450 <_Unwind_Resume@plt>
  40db33:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40db3a:	00 00 00 
  40db3d:	0f 1f 00             	nopl   (%rax)

000000000040db40 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>:
  40db40:	41 55                	push   %r13
  40db42:	49 89 f5             	mov    %rsi,%r13
  40db45:	41 54                	push   %r12
  40db47:	49 89 fc             	mov    %rdi,%r12
  40db4a:	48 89 f7             	mov    %rsi,%rdi
  40db4d:	55                   	push   %rbp
  40db4e:	48 89 d5             	mov    %rdx,%rbp
  40db51:	e8 ea 55 ff ff       	callq  403140 <strlen@plt>
  40db56:	49 89 c0             	mov    %rax,%r8
  40db59:	4c 89 e9             	mov    %r13,%rcx
  40db5c:	31 d2                	xor    %edx,%edx
  40db5e:	31 f6                	xor    %esi,%esi
  40db60:	48 89 ef             	mov    %rbp,%rdi
  40db63:	e8 58 58 ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40db68:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
  40db6d:	49 89 14 24          	mov    %rdx,(%r12)
  40db71:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40db75:	48 8b 08             	mov    (%rax),%rcx
  40db78:	48 39 d1             	cmp    %rdx,%rcx
  40db7b:	74 33                	je     40dbb0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_+0x70>
  40db7d:	49 89 0c 24          	mov    %rcx,(%r12)
  40db81:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40db85:	49 89 4c 24 10       	mov    %rcx,0x10(%r12)
  40db8a:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40db8e:	48 89 10             	mov    %rdx,(%rax)
  40db91:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40db98:	00 
  40db99:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
  40db9e:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40dba2:	4c 89 e0             	mov    %r12,%rax
  40dba5:	5d                   	pop    %rbp
  40dba6:	41 5c                	pop    %r12
  40dba8:	41 5d                	pop    %r13
  40dbaa:	c3                   	retq   
  40dbab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40dbb0:	c5 fa 6f 40 10       	vmovdqu 0x10(%rax),%xmm0
  40dbb5:	c4 c1 7a 7f 44 24 10 	vmovdqu %xmm0,0x10(%r12)
  40dbbc:	eb cc                	jmp    40db8a <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_+0x4a>
  40dbbe:	66 90                	xchg   %ax,%ax

000000000040dbc0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>:
  40dbc0:	41 55                	push   %r13
  40dbc2:	49 89 d5             	mov    %rdx,%r13
  40dbc5:	41 54                	push   %r12
  40dbc7:	49 89 fc             	mov    %rdi,%r12
  40dbca:	48 89 d7             	mov    %rdx,%rdi
  40dbcd:	55                   	push   %rbp
  40dbce:	48 89 f5             	mov    %rsi,%rbp
  40dbd1:	e8 6a 55 ff ff       	callq  403140 <strlen@plt>
  40dbd6:	48 89 c2             	mov    %rax,%rdx
  40dbd9:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40dbe0:	ff ff 3f 
  40dbe3:	48 2b 45 08          	sub    0x8(%rbp),%rax
  40dbe7:	48 39 c2             	cmp    %rax,%rdx
  40dbea:	77 62                	ja     40dc4e <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_+0x8e>
  40dbec:	4c 89 ee             	mov    %r13,%rsi
  40dbef:	48 89 ef             	mov    %rbp,%rdi
  40dbf2:	e8 f9 54 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40dbf7:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
  40dbfc:	49 89 14 24          	mov    %rdx,(%r12)
  40dc00:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40dc04:	48 8b 08             	mov    (%rax),%rcx
  40dc07:	48 39 d1             	cmp    %rdx,%rcx
  40dc0a:	74 34                	je     40dc40 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_+0x80>
  40dc0c:	49 89 0c 24          	mov    %rcx,(%r12)
  40dc10:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40dc14:	49 89 4c 24 10       	mov    %rcx,0x10(%r12)
  40dc19:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40dc1d:	48 89 10             	mov    %rdx,(%rax)
  40dc20:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40dc27:	00 
  40dc28:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
  40dc2d:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40dc31:	4c 89 e0             	mov    %r12,%rax
  40dc34:	5d                   	pop    %rbp
  40dc35:	41 5c                	pop    %r12
  40dc37:	41 5d                	pop    %r13
  40dc39:	c3                   	retq   
  40dc3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40dc40:	c5 fa 6f 40 10       	vmovdqu 0x10(%rax),%xmm0
  40dc45:	c4 c1 7a 7f 44 24 10 	vmovdqu %xmm0,0x10(%r12)
  40dc4c:	eb cb                	jmp    40dc19 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_+0x59>
  40dc4e:	bf d1 f4 40 00       	mov    $0x40f4d1,%edi
  40dc53:	e8 08 55 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40dc58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40dc5f:	00 

000000000040dc60 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_>:
  40dc60:	55                   	push   %rbp
  40dc61:	48 89 f0             	mov    %rsi,%rax
  40dc64:	48 89 e5             	mov    %rsp,%rbp
  40dc67:	41 55                	push   %r13
  40dc69:	41 54                	push   %r12
  40dc6b:	49 89 d4             	mov    %rdx,%r12
  40dc6e:	53                   	push   %rbx
  40dc6f:	48 89 fb             	mov    %rdi,%rbx
  40dc72:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40dc76:	48 8b 3f             	mov    (%rdi),%rdi
  40dc79:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40dc7d:	48 29 fe             	sub    %rdi,%rsi
  40dc80:	48 89 f2             	mov    %rsi,%rdx
  40dc83:	48 c1 fa 03          	sar    $0x3,%rdx
  40dc87:	48 39 c2             	cmp    %rax,%rdx
  40dc8a:	0f 82 c8 01 00 00    	jb     40de58 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1f8>
  40dc90:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  40dc94:	48 89 ce             	mov    %rcx,%rsi
  40dc97:	48 29 fe             	sub    %rdi,%rsi
  40dc9a:	48 c1 fe 03          	sar    $0x3,%rsi
  40dc9e:	48 39 f0             	cmp    %rsi,%rax
  40dca1:	0f 86 09 01 00 00    	jbe    40ddb0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x150>
  40dca7:	4d 8b 0c 24          	mov    (%r12),%r9
  40dcab:	48 39 cf             	cmp    %rcx,%rdi
  40dcae:	74 6e                	je     40dd1e <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xbe>
  40dcb0:	4c 8d 41 f8          	lea    -0x8(%rcx),%r8
  40dcb4:	49 29 f8             	sub    %rdi,%r8
  40dcb7:	4d 89 c2             	mov    %r8,%r10
  40dcba:	49 c1 ea 03          	shr    $0x3,%r10
  40dcbe:	48 89 fa             	mov    %rdi,%rdx
  40dcc1:	49 ff c2             	inc    %r10
  40dcc4:	49 83 f8 10          	cmp    $0x10,%r8
  40dcc8:	76 33                	jbe    40dcfd <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x9d>
  40dcca:	4d 89 d0             	mov    %r10,%r8
  40dccd:	49 c1 e8 02          	shr    $0x2,%r8
  40dcd1:	49 c1 e0 05          	shl    $0x5,%r8
  40dcd5:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40dcdb:	49 01 f8             	add    %rdi,%r8
  40dcde:	66 90                	xchg   %ax,%ax
  40dce0:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40dce4:	48 83 c2 20          	add    $0x20,%rdx
  40dce8:	49 39 d0             	cmp    %rdx,%r8
  40dceb:	75 f3                	jne    40dce0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x80>
  40dced:	4c 89 d2             	mov    %r10,%rdx
  40dcf0:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  40dcf4:	48 8d 3c d7          	lea    (%rdi,%rdx,8),%rdi
  40dcf8:	49 39 d2             	cmp    %rdx,%r10
  40dcfb:	74 1d                	je     40dd1a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40dcfd:	48 8d 57 08          	lea    0x8(%rdi),%rdx
  40dd01:	4c 89 0f             	mov    %r9,(%rdi)
  40dd04:	48 39 d1             	cmp    %rdx,%rcx
  40dd07:	74 11                	je     40dd1a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40dd09:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40dd0d:	4c 89 4f 08          	mov    %r9,0x8(%rdi)
  40dd11:	48 39 d1             	cmp    %rdx,%rcx
  40dd14:	74 04                	je     40dd1a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40dd16:	4c 89 4f 10          	mov    %r9,0x10(%rdi)
  40dd1a:	4d 8b 0c 24          	mov    (%r12),%r9
  40dd1e:	48 29 f0             	sub    %rsi,%rax
  40dd21:	48 c1 e0 03          	shl    $0x3,%rax
  40dd25:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
  40dd29:	48 39 f9             	cmp    %rdi,%rcx
  40dd2c:	74 6c                	je     40dd9a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40dd2e:	48 83 e8 08          	sub    $0x8,%rax
  40dd32:	48 89 c6             	mov    %rax,%rsi
  40dd35:	48 c1 ee 03          	shr    $0x3,%rsi
  40dd39:	48 89 ca             	mov    %rcx,%rdx
  40dd3c:	48 ff c6             	inc    %rsi
  40dd3f:	48 83 f8 10          	cmp    $0x10,%rax
  40dd43:	76 38                	jbe    40dd7d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x11d>
  40dd45:	48 89 f0             	mov    %rsi,%rax
  40dd48:	48 c1 e8 02          	shr    $0x2,%rax
  40dd4c:	48 c1 e0 05          	shl    $0x5,%rax
  40dd50:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40dd56:	48 01 c8             	add    %rcx,%rax
  40dd59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40dd60:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40dd64:	48 83 c2 20          	add    $0x20,%rdx
  40dd68:	48 39 d0             	cmp    %rdx,%rax
  40dd6b:	75 f3                	jne    40dd60 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x100>
  40dd6d:	48 89 f0             	mov    %rsi,%rax
  40dd70:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40dd74:	48 8d 0c c1          	lea    (%rcx,%rax,8),%rcx
  40dd78:	48 39 c6             	cmp    %rax,%rsi
  40dd7b:	74 1d                	je     40dd9a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40dd7d:	48 8d 41 08          	lea    0x8(%rcx),%rax
  40dd81:	4c 89 09             	mov    %r9,(%rcx)
  40dd84:	48 39 c7             	cmp    %rax,%rdi
  40dd87:	74 11                	je     40dd9a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40dd89:	48 8d 41 10          	lea    0x10(%rcx),%rax
  40dd8d:	4c 89 49 08          	mov    %r9,0x8(%rcx)
  40dd91:	48 39 c7             	cmp    %rax,%rdi
  40dd94:	74 04                	je     40dd9a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40dd96:	4c 89 49 10          	mov    %r9,0x10(%rcx)
  40dd9a:	48 89 7b 08          	mov    %rdi,0x8(%rbx)
  40dd9e:	c5 f8 77             	vzeroupper 
  40dda1:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40dda5:	5b                   	pop    %rbx
  40dda6:	41 5c                	pop    %r12
  40dda8:	41 5d                	pop    %r13
  40ddaa:	5d                   	pop    %rbp
  40ddab:	c3                   	retq   
  40ddac:	0f 1f 40 00          	nopl   0x0(%rax)
  40ddb0:	48 89 fe             	mov    %rdi,%rsi
  40ddb3:	48 85 c0             	test   %rax,%rax
  40ddb6:	0f 84 85 00 00 00    	je     40de41 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40ddbc:	48 c1 e0 03          	shl    $0x3,%rax
  40ddc0:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
  40ddc4:	4d 8b 0c 24          	mov    (%r12),%r9
  40ddc8:	48 39 f7             	cmp    %rsi,%rdi
  40ddcb:	74 74                	je     40de41 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40ddcd:	48 83 e8 08          	sub    $0x8,%rax
  40ddd1:	49 89 c0             	mov    %rax,%r8
  40ddd4:	49 c1 e8 03          	shr    $0x3,%r8
  40ddd8:	48 89 fa             	mov    %rdi,%rdx
  40dddb:	49 ff c0             	inc    %r8
  40ddde:	48 83 f8 10          	cmp    $0x10,%rax
  40dde2:	76 40                	jbe    40de24 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1c4>
  40dde4:	4c 89 c0             	mov    %r8,%rax
  40dde7:	48 c1 e8 02          	shr    $0x2,%rax
  40ddeb:	48 c1 e0 05          	shl    $0x5,%rax
  40ddef:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40ddf5:	48 01 f8             	add    %rdi,%rax
  40ddf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40ddff:	00 
  40de00:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40de04:	48 83 c2 20          	add    $0x20,%rdx
  40de08:	48 39 d0             	cmp    %rdx,%rax
  40de0b:	75 f3                	jne    40de00 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1a0>
  40de0d:	4c 89 c0             	mov    %r8,%rax
  40de10:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40de14:	48 8d 3c c7          	lea    (%rdi,%rax,8),%rdi
  40de18:	49 39 c0             	cmp    %rax,%r8
  40de1b:	0f 84 1f 01 00 00    	je     40df40 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2e0>
  40de21:	c5 f8 77             	vzeroupper 
  40de24:	48 8d 47 08          	lea    0x8(%rdi),%rax
  40de28:	4c 89 0f             	mov    %r9,(%rdi)
  40de2b:	48 39 c6             	cmp    %rax,%rsi
  40de2e:	74 11                	je     40de41 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40de30:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40de34:	4c 89 4f 08          	mov    %r9,0x8(%rdi)
  40de38:	48 39 c6             	cmp    %rax,%rsi
  40de3b:	74 04                	je     40de41 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40de3d:	4c 89 4f 10          	mov    %r9,0x10(%rdi)
  40de41:	48 39 f1             	cmp    %rsi,%rcx
  40de44:	74 04                	je     40de4a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1ea>
  40de46:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  40de4a:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40de4e:	5b                   	pop    %rbx
  40de4f:	41 5c                	pop    %r12
  40de51:	41 5d                	pop    %r13
  40de53:	5d                   	pop    %rbp
  40de54:	c3                   	retq   
  40de55:	0f 1f 00             	nopl   (%rax)
  40de58:	48 89 c1             	mov    %rax,%rcx
  40de5b:	48 c1 e9 3c          	shr    $0x3c,%rcx
  40de5f:	0f 85 f0 00 00 00    	jne    40df55 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2f5>
  40de65:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  40de6c:	00 
  40de6d:	48 85 c0             	test   %rax,%rax
  40de70:	0f 84 c2 00 00 00    	je     40df38 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2d8>
  40de76:	4c 89 ef             	mov    %r13,%rdi
  40de79:	e8 22 54 ff ff       	callq  4032a0 <_Znwm@plt>
  40de7e:	4e 8d 04 28          	lea    (%rax,%r13,1),%r8
  40de82:	49 8b 3c 24          	mov    (%r12),%rdi
  40de86:	48 89 c2             	mov    %rax,%rdx
  40de89:	49 39 c0             	cmp    %rax,%r8
  40de8c:	74 6f                	je     40defd <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40de8e:	49 83 ed 08          	sub    $0x8,%r13
  40de92:	4c 89 ee             	mov    %r13,%rsi
  40de95:	48 c1 ee 03          	shr    $0x3,%rsi
  40de99:	48 ff c6             	inc    %rsi
  40de9c:	49 83 fd 10          	cmp    $0x10,%r13
  40dea0:	76 3e                	jbe    40dee0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x280>
  40dea2:	48 89 f1             	mov    %rsi,%rcx
  40dea5:	48 c1 e9 02          	shr    $0x2,%rcx
  40dea9:	48 c1 e1 05          	shl    $0x5,%rcx
  40dead:	62 f2 fd 28 7c c7    	vpbroadcastq %rdi,%ymm0
  40deb3:	48 01 c1             	add    %rax,%rcx
  40deb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40debd:	00 00 00 
  40dec0:	c5 fe 7f 00          	vmovdqu %ymm0,(%rax)
  40dec4:	48 83 c0 20          	add    $0x20,%rax
  40dec8:	48 39 c1             	cmp    %rax,%rcx
  40decb:	75 f3                	jne    40dec0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x260>
  40decd:	48 89 f1             	mov    %rsi,%rcx
  40ded0:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
  40ded4:	48 8d 04 ca          	lea    (%rdx,%rcx,8),%rax
  40ded8:	48 39 f1             	cmp    %rsi,%rcx
  40dedb:	74 73                	je     40df50 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2f0>
  40dedd:	c5 f8 77             	vzeroupper 
  40dee0:	48 8d 48 08          	lea    0x8(%rax),%rcx
  40dee4:	48 89 38             	mov    %rdi,(%rax)
  40dee7:	49 39 c8             	cmp    %rcx,%r8
  40deea:	74 11                	je     40defd <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40deec:	48 8d 48 10          	lea    0x10(%rax),%rcx
  40def0:	48 89 78 08          	mov    %rdi,0x8(%rax)
  40def4:	49 39 c8             	cmp    %rcx,%r8
  40def7:	74 04                	je     40defd <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40def9:	48 89 78 10          	mov    %rdi,0x10(%rax)
  40defd:	48 8b 3b             	mov    (%rbx),%rdi
  40df00:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40df04:	48 29 fe             	sub    %rdi,%rsi
  40df07:	c4 e1 f9 6e ca       	vmovq  %rdx,%xmm1
  40df0c:	c4 c3 f1 22 c0 01    	vpinsrq $0x1,%r8,%xmm1,%xmm0
  40df12:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  40df16:	c5 fa 7f 03          	vmovdqu %xmm0,(%rbx)
  40df1a:	48 85 ff             	test   %rdi,%rdi
  40df1d:	0f 84 27 ff ff ff    	je     40de4a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1ea>
  40df23:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40df27:	5b                   	pop    %rbx
  40df28:	41 5c                	pop    %r12
  40df2a:	41 5d                	pop    %r13
  40df2c:	5d                   	pop    %rbp
  40df2d:	e9 7e 53 ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  40df32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40df38:	31 d2                	xor    %edx,%edx
  40df3a:	45 31 c0             	xor    %r8d,%r8d
  40df3d:	eb c8                	jmp    40df07 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2a7>
  40df3f:	90                   	nop
  40df40:	c5 f8 77             	vzeroupper 
  40df43:	e9 f9 fe ff ff       	jmpq   40de41 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40df48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40df4f:	00 
  40df50:	c5 f8 77             	vzeroupper 
  40df53:	eb a8                	jmp    40defd <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40df55:	bf a0 f4 40 00       	mov    $0x40f4a0,%edi
  40df5a:	e8 01 52 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40df5f:	90                   	nop

000000000040df60 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd>:
  40df60:	55                   	push   %rbp
  40df61:	48 89 f0             	mov    %rsi,%rax
  40df64:	48 89 e5             	mov    %rsp,%rbp
  40df67:	41 55                	push   %r13
  40df69:	41 54                	push   %r12
  40df6b:	49 89 d4             	mov    %rdx,%r12
  40df6e:	53                   	push   %rbx
  40df6f:	48 89 fb             	mov    %rdi,%rbx
  40df72:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40df76:	48 8b 3f             	mov    (%rdi),%rdi
  40df79:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40df7d:	48 29 fe             	sub    %rdi,%rsi
  40df80:	48 89 f2             	mov    %rsi,%rdx
  40df83:	48 c1 fa 03          	sar    $0x3,%rdx
  40df87:	48 39 c2             	cmp    %rax,%rdx
  40df8a:	0f 82 d0 01 00 00    	jb     40e160 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x200>
  40df90:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  40df94:	48 89 ce             	mov    %rcx,%rsi
  40df97:	48 29 fe             	sub    %rdi,%rsi
  40df9a:	48 c1 fe 03          	sar    $0x3,%rsi
  40df9e:	48 39 f0             	cmp    %rsi,%rax
  40dfa1:	0f 86 09 01 00 00    	jbe    40e0b0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x150>
  40dfa7:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  40dfad:	48 39 cf             	cmp    %rcx,%rdi
  40dfb0:	74 71                	je     40e023 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xc3>
  40dfb2:	4c 8d 41 f8          	lea    -0x8(%rcx),%r8
  40dfb6:	49 29 f8             	sub    %rdi,%r8
  40dfb9:	4d 89 c1             	mov    %r8,%r9
  40dfbc:	49 c1 e9 03          	shr    $0x3,%r9
  40dfc0:	48 89 fa             	mov    %rdi,%rdx
  40dfc3:	49 ff c1             	inc    %r9
  40dfc6:	49 83 f8 10          	cmp    $0x10,%r8
  40dfca:	76 31                	jbe    40dffd <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x9d>
  40dfcc:	4d 89 c8             	mov    %r9,%r8
  40dfcf:	49 c1 e8 02          	shr    $0x2,%r8
  40dfd3:	49 c1 e0 05          	shl    $0x5,%r8
  40dfd7:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  40dfdc:	49 01 f8             	add    %rdi,%r8
  40dfdf:	90                   	nop
  40dfe0:	c5 fd 11 0a          	vmovupd %ymm1,(%rdx)
  40dfe4:	48 83 c2 20          	add    $0x20,%rdx
  40dfe8:	49 39 d0             	cmp    %rdx,%r8
  40dfeb:	75 f3                	jne    40dfe0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x80>
  40dfed:	4c 89 ca             	mov    %r9,%rdx
  40dff0:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  40dff4:	48 8d 3c d7          	lea    (%rdi,%rdx,8),%rdi
  40dff8:	49 39 d1             	cmp    %rdx,%r9
  40dffb:	74 20                	je     40e01d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40dffd:	48 8d 57 08          	lea    0x8(%rdi),%rdx
  40e001:	c5 fb 11 07          	vmovsd %xmm0,(%rdi)
  40e005:	48 39 d1             	cmp    %rdx,%rcx
  40e008:	74 13                	je     40e01d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40e00a:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40e00e:	c5 fb 11 47 08       	vmovsd %xmm0,0x8(%rdi)
  40e013:	48 39 d1             	cmp    %rdx,%rcx
  40e016:	74 05                	je     40e01d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40e018:	c5 fb 11 47 10       	vmovsd %xmm0,0x10(%rdi)
  40e01d:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  40e023:	48 29 f0             	sub    %rsi,%rax
  40e026:	48 c1 e0 03          	shl    $0x3,%rax
  40e02a:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
  40e02e:	48 39 f9             	cmp    %rdi,%rcx
  40e031:	74 6a                	je     40e09d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40e033:	48 83 e8 08          	sub    $0x8,%rax
  40e037:	48 89 c6             	mov    %rax,%rsi
  40e03a:	48 c1 ee 03          	shr    $0x3,%rsi
  40e03e:	48 89 ca             	mov    %rcx,%rdx
  40e041:	48 ff c6             	inc    %rsi
  40e044:	48 83 f8 10          	cmp    $0x10,%rax
  40e048:	76 33                	jbe    40e07d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x11d>
  40e04a:	48 89 f0             	mov    %rsi,%rax
  40e04d:	48 c1 e8 02          	shr    $0x2,%rax
  40e051:	48 c1 e0 05          	shl    $0x5,%rax
  40e055:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  40e05a:	48 01 c8             	add    %rcx,%rax
  40e05d:	0f 1f 00             	nopl   (%rax)
  40e060:	c5 fd 11 0a          	vmovupd %ymm1,(%rdx)
  40e064:	48 83 c2 20          	add    $0x20,%rdx
  40e068:	48 39 d0             	cmp    %rdx,%rax
  40e06b:	75 f3                	jne    40e060 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x100>
  40e06d:	48 89 f0             	mov    %rsi,%rax
  40e070:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40e074:	48 8d 0c c1          	lea    (%rcx,%rax,8),%rcx
  40e078:	48 39 c6             	cmp    %rax,%rsi
  40e07b:	74 20                	je     40e09d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40e07d:	48 8d 41 08          	lea    0x8(%rcx),%rax
  40e081:	c5 fb 11 01          	vmovsd %xmm0,(%rcx)
  40e085:	48 39 c7             	cmp    %rax,%rdi
  40e088:	74 13                	je     40e09d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40e08a:	48 8d 41 10          	lea    0x10(%rcx),%rax
  40e08e:	c5 fb 11 41 08       	vmovsd %xmm0,0x8(%rcx)
  40e093:	48 39 c7             	cmp    %rax,%rdi
  40e096:	74 05                	je     40e09d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40e098:	c5 fb 11 41 10       	vmovsd %xmm0,0x10(%rcx)
  40e09d:	48 89 7b 08          	mov    %rdi,0x8(%rbx)
  40e0a1:	c5 f8 77             	vzeroupper 
  40e0a4:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40e0a8:	5b                   	pop    %rbx
  40e0a9:	41 5c                	pop    %r12
  40e0ab:	41 5d                	pop    %r13
  40e0ad:	5d                   	pop    %rbp
  40e0ae:	c3                   	retq   
  40e0af:	90                   	nop
  40e0b0:	48 89 fe             	mov    %rdi,%rsi
  40e0b3:	48 85 c0             	test   %rax,%rax
  40e0b6:	0f 84 88 00 00 00    	je     40e144 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40e0bc:	48 c1 e0 03          	shl    $0x3,%rax
  40e0c0:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
  40e0c4:	c4 c1 7b 10 0c 24    	vmovsd (%r12),%xmm1
  40e0ca:	48 39 f7             	cmp    %rsi,%rdi
  40e0cd:	74 75                	je     40e144 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40e0cf:	48 83 e8 08          	sub    $0x8,%rax
  40e0d3:	49 89 c0             	mov    %rax,%r8
  40e0d6:	49 c1 e8 03          	shr    $0x3,%r8
  40e0da:	48 89 fa             	mov    %rdi,%rdx
  40e0dd:	49 ff c0             	inc    %r8
  40e0e0:	48 83 f8 10          	cmp    $0x10,%rax
  40e0e4:	76 3e                	jbe    40e124 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1c4>
  40e0e6:	4c 89 c0             	mov    %r8,%rax
  40e0e9:	48 c1 e8 02          	shr    $0x2,%rax
  40e0ed:	48 c1 e0 05          	shl    $0x5,%rax
  40e0f1:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  40e0f6:	48 01 f8             	add    %rdi,%rax
  40e0f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40e100:	c5 fd 11 02          	vmovupd %ymm0,(%rdx)
  40e104:	48 83 c2 20          	add    $0x20,%rdx
  40e108:	48 39 d0             	cmp    %rdx,%rax
  40e10b:	75 f3                	jne    40e100 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1a0>
  40e10d:	4c 89 c0             	mov    %r8,%rax
  40e110:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40e114:	48 8d 3c c7          	lea    (%rdi,%rax,8),%rdi
  40e118:	49 39 c0             	cmp    %rax,%r8
  40e11b:	0f 84 1f 01 00 00    	je     40e240 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2e0>
  40e121:	c5 f8 77             	vzeroupper 
  40e124:	48 8d 47 08          	lea    0x8(%rdi),%rax
  40e128:	c5 fb 11 0f          	vmovsd %xmm1,(%rdi)
  40e12c:	48 39 c6             	cmp    %rax,%rsi
  40e12f:	74 13                	je     40e144 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40e131:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40e135:	c5 fb 11 4f 08       	vmovsd %xmm1,0x8(%rdi)
  40e13a:	48 39 c6             	cmp    %rax,%rsi
  40e13d:	74 05                	je     40e144 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40e13f:	c5 fb 11 4f 10       	vmovsd %xmm1,0x10(%rdi)
  40e144:	48 39 f1             	cmp    %rsi,%rcx
  40e147:	74 04                	je     40e14d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1ed>
  40e149:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  40e14d:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40e151:	5b                   	pop    %rbx
  40e152:	41 5c                	pop    %r12
  40e154:	41 5d                	pop    %r13
  40e156:	5d                   	pop    %rbp
  40e157:	c3                   	retq   
  40e158:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40e15f:	00 
  40e160:	48 89 c1             	mov    %rax,%rcx
  40e163:	48 c1 e9 3c          	shr    $0x3c,%rcx
  40e167:	0f 85 e8 00 00 00    	jne    40e255 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2f5>
  40e16d:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  40e174:	00 
  40e175:	48 85 c0             	test   %rax,%rax
  40e178:	0f 84 ba 00 00 00    	je     40e238 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2d8>
  40e17e:	4c 89 ef             	mov    %r13,%rdi
  40e181:	e8 1a 51 ff ff       	callq  4032a0 <_Znwm@plt>
  40e186:	4e 8d 04 28          	lea    (%rax,%r13,1),%r8
  40e18a:	c4 c1 7b 10 0c 24    	vmovsd (%r12),%xmm1
  40e190:	48 89 c2             	mov    %rax,%rdx
  40e193:	49 39 c0             	cmp    %rax,%r8
  40e196:	74 68                	je     40e200 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40e198:	49 83 ed 08          	sub    $0x8,%r13
  40e19c:	4c 89 ee             	mov    %r13,%rsi
  40e19f:	48 c1 ee 03          	shr    $0x3,%rsi
  40e1a3:	48 ff c6             	inc    %rsi
  40e1a6:	49 83 fd 10          	cmp    $0x10,%r13
  40e1aa:	76 34                	jbe    40e1e0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x280>
  40e1ac:	48 89 f1             	mov    %rsi,%rcx
  40e1af:	48 c1 e9 02          	shr    $0x2,%rcx
  40e1b3:	48 c1 e1 05          	shl    $0x5,%rcx
  40e1b7:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  40e1bc:	48 01 c1             	add    %rax,%rcx
  40e1bf:	90                   	nop
  40e1c0:	c5 fd 11 00          	vmovupd %ymm0,(%rax)
  40e1c4:	48 83 c0 20          	add    $0x20,%rax
  40e1c8:	48 39 c1             	cmp    %rax,%rcx
  40e1cb:	75 f3                	jne    40e1c0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x260>
  40e1cd:	48 89 f1             	mov    %rsi,%rcx
  40e1d0:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
  40e1d4:	48 8d 04 ca          	lea    (%rdx,%rcx,8),%rax
  40e1d8:	48 39 f1             	cmp    %rsi,%rcx
  40e1db:	74 73                	je     40e250 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2f0>
  40e1dd:	c5 f8 77             	vzeroupper 
  40e1e0:	48 8d 48 08          	lea    0x8(%rax),%rcx
  40e1e4:	c5 fb 11 08          	vmovsd %xmm1,(%rax)
  40e1e8:	49 39 c8             	cmp    %rcx,%r8
  40e1eb:	74 13                	je     40e200 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40e1ed:	48 8d 48 10          	lea    0x10(%rax),%rcx
  40e1f1:	c5 fb 11 48 08       	vmovsd %xmm1,0x8(%rax)
  40e1f6:	49 39 c8             	cmp    %rcx,%r8
  40e1f9:	74 05                	je     40e200 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40e1fb:	c5 fb 11 48 10       	vmovsd %xmm1,0x10(%rax)
  40e200:	48 8b 3b             	mov    (%rbx),%rdi
  40e203:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40e207:	48 29 fe             	sub    %rdi,%rsi
  40e20a:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
  40e20f:	c4 c3 e9 22 c0 01    	vpinsrq $0x1,%r8,%xmm2,%xmm0
  40e215:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  40e219:	c5 fa 7f 03          	vmovdqu %xmm0,(%rbx)
  40e21d:	48 85 ff             	test   %rdi,%rdi
  40e220:	0f 84 27 ff ff ff    	je     40e14d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1ed>
  40e226:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40e22a:	5b                   	pop    %rbx
  40e22b:	41 5c                	pop    %r12
  40e22d:	41 5d                	pop    %r13
  40e22f:	5d                   	pop    %rbp
  40e230:	e9 7b 50 ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  40e235:	0f 1f 00             	nopl   (%rax)
  40e238:	31 d2                	xor    %edx,%edx
  40e23a:	45 31 c0             	xor    %r8d,%r8d
  40e23d:	eb cb                	jmp    40e20a <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2aa>
  40e23f:	90                   	nop
  40e240:	c5 f8 77             	vzeroupper 
  40e243:	e9 fc fe ff ff       	jmpq   40e144 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40e248:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40e24f:	00 
  40e250:	c5 f8 77             	vzeroupper 
  40e253:	eb ab                	jmp    40e200 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40e255:	bf a0 f4 40 00       	mov    $0x40f4a0,%edi
  40e25a:	e8 01 4f ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40e25f:	90                   	nop

000000000040e260 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>:
  40e260:	c4 e2 7d 59 1d 07 14 	vpbroadcastq 0x1407(%rip),%ymm3        # 40f670 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  40e267:	00 00 
  40e269:	c4 e2 7d 59 25 06 14 	vpbroadcastq 0x1406(%rip),%ymm4        # 40f678 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  40e270:	00 00 
  40e272:	c4 e2 7d 59 2d 05 14 	vpbroadcastq 0x1405(%rip),%ymm5        # 40f680 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x180>
  40e279:	00 00 
  40e27b:	c4 e2 7d 59 35 04 14 	vpbroadcastq 0x1404(%rip),%ymm6        # 40f688 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x188>
  40e282:	00 00 
  40e284:	48 89 f8             	mov    %rdi,%rax
  40e287:	48 8d 8f e0 04 00 00 	lea    0x4e0(%rdi),%rcx
  40e28e:	48 89 fa             	mov    %rdi,%rdx
  40e291:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40e298:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  40e29d:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  40e2a1:	48 83 c2 20          	add    $0x20,%rdx
  40e2a5:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  40e2a9:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  40e2ae:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  40e2b2:	c5 f5 ef 8a c0 04 00 	vpxor  0x4c0(%rdx),%ymm1,%ymm1
  40e2b9:	00 
  40e2ba:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  40e2c0:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  40e2c4:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  40e2ca:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  40e2cf:	48 39 ca             	cmp    %rcx,%rdx
  40e2d2:	75 c4                	jne    40e298 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x38>
  40e2d4:	48 8d 88 a0 09 00 00 	lea    0x9a0(%rax),%rcx
  40e2db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40e2e0:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  40e2e5:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  40e2e9:	48 83 c2 20          	add    $0x20,%rdx
  40e2ed:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  40e2f1:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  40e2f6:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  40e2fa:	c5 f5 ef 8a 00 fb ff 	vpxor  -0x500(%rdx),%ymm1,%ymm1
  40e301:	ff 
  40e302:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  40e308:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  40e30c:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  40e312:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  40e317:	48 39 d1             	cmp    %rdx,%rcx
  40e31a:	75 c4                	jne    40e2e0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x80>
  40e31c:	c4 e2 79 59 05 4b 13 	vpbroadcastq 0x134b(%rip),%xmm0        # 40f670 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  40e323:	00 00 
  40e325:	c4 e2 79 59 0d 4a 13 	vpbroadcastq 0x134a(%rip),%xmm1        # 40f678 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  40e32c:	00 00 
  40e32e:	c5 f9 db 80 a0 09 00 	vpand  0x9a0(%rax),%xmm0,%xmm0
  40e335:	00 
  40e336:	c5 f1 db 88 a8 09 00 	vpand  0x9a8(%rax),%xmm1,%xmm1
  40e33d:	00 
  40e33e:	48 8b b0 b8 09 00 00 	mov    0x9b8(%rax),%rsi
  40e345:	48 8b 90 b0 09 00 00 	mov    0x9b0(%rax),%rdx
  40e34c:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  40e350:	48 89 f1             	mov    %rsi,%rcx
  40e353:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
  40e359:	c5 f1 73 d0 01       	vpsrlq $0x1,%xmm0,%xmm1
  40e35e:	48 81 e2 00 00 00 80 	and    $0xffffffff80000000,%rdx
  40e365:	62 f1 fd 18 db 05 11 	vpandq 0x1311(%rip){1to2},%xmm0,%xmm0        # 40f680 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x180>
  40e36c:	13 00 00 
  40e36f:	c5 f1 ef 88 c0 04 00 	vpxor  0x4c0(%rax),%xmm1,%xmm1
  40e376:	00 
  40e377:	48 09 ca             	or     %rcx,%rdx
  40e37a:	62 f2 fe 08 27 c8    	vptestnmq %xmm0,%xmm0,%k1
  40e380:	48 89 d1             	mov    %rdx,%rcx
  40e383:	48 d1 e9             	shr    %rcx
  40e386:	62 f1 f5 18 ef 15 f8 	vpxorq 0x12f8(%rip){1to2},%xmm1,%xmm2        # 40f688 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x188>
  40e38d:	12 00 00 
  40e390:	62 f2 ed 09 64 c1    	vpblendmq %xmm1,%xmm2,%xmm0{%k1}
  40e396:	48 33 88 d0 04 00 00 	xor    0x4d0(%rax),%rcx
  40e39d:	83 e2 01             	and    $0x1,%edx
  40e3a0:	c5 fa 7f 80 a0 09 00 	vmovdqu %xmm0,0x9a0(%rax)
  40e3a7:	00 
  40e3a8:	74 0d                	je     40e3b7 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x157>
  40e3aa:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  40e3b1:	6f 02 b5 
  40e3b4:	48 31 d1             	xor    %rdx,%rcx
  40e3b7:	48 8b 10             	mov    (%rax),%rdx
  40e3ba:	48 81 e6 00 00 00 80 	and    $0xffffffff80000000,%rsi
  40e3c1:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
  40e3c7:	48 09 f2             	or     %rsi,%rdx
  40e3ca:	48 89 88 b0 09 00 00 	mov    %rcx,0x9b0(%rax)
  40e3d1:	48 89 d1             	mov    %rdx,%rcx
  40e3d4:	48 d1 e9             	shr    %rcx
  40e3d7:	48 33 88 d8 04 00 00 	xor    0x4d8(%rax),%rcx
  40e3de:	83 e2 01             	and    $0x1,%edx
  40e3e1:	74 0d                	je     40e3f0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x190>
  40e3e3:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  40e3ea:	6f 02 b5 
  40e3ed:	48 31 d1             	xor    %rdx,%rcx
  40e3f0:	48 89 88 b8 09 00 00 	mov    %rcx,0x9b8(%rax)
  40e3f7:	48 c7 80 c0 09 00 00 	movq   $0x0,0x9c0(%rax)
  40e3fe:	00 00 00 00 
  40e402:	c5 f8 77             	vzeroupper 
  40e405:	c3                   	retq   
  40e406:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40e40d:	00 00 00 

000000000040e410 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>:
  40e410:	41 57                	push   %r15
  40e412:	41 56                	push   %r14
  40e414:	41 55                	push   %r13
  40e416:	41 54                	push   %r12
  40e418:	55                   	push   %rbp
  40e419:	53                   	push   %rbx
  40e41a:	48 83 ec 28          	sub    $0x28,%rsp
  40e41e:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  40e423:	48 39 fe             	cmp    %rdi,%rsi
  40e426:	0f 84 99 01 00 00    	je     40e5c5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40e42c:	48 89 f1             	mov    %rsi,%rcx
  40e42f:	48 29 f9             	sub    %rdi,%rcx
  40e432:	48 c1 f9 03          	sar    $0x3,%rcx
  40e436:	48 89 c8             	mov    %rcx,%rax
  40e439:	48 89 d3             	mov    %rdx,%rbx
  40e43c:	48 f7 e1             	mul    %rcx
  40e43f:	48 89 fd             	mov    %rdi,%rbp
  40e442:	4c 8d 6f 08          	lea    0x8(%rdi),%r13
  40e446:	0f 90 c0             	seto   %al
  40e449:	0f b6 c0             	movzbl %al,%eax
  40e44c:	48 85 c0             	test   %rax,%rax
  40e44f:	0f 84 1b 02 00 00    	je     40e670 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x260>
  40e455:	4c 3b 6c 24 08       	cmp    0x8(%rsp),%r13
  40e45a:	0f 84 65 01 00 00    	je     40e5c5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40e460:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40e467:	55 55 55 
  40e46a:	49 bc 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r12
  40e471:	7f d6 71 
  40e474:	49 bf 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r15
  40e47b:	ee f7 ff 
  40e47e:	66 90                	xchg   %ax,%ax
  40e480:	4c 89 e8             	mov    %r13,%rax
  40e483:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  40e48a:	48 29 e8             	sub    %rbp,%rax
  40e48d:	48 c1 f8 03          	sar    $0x3,%rax
  40e491:	48 89 d1             	mov    %rdx,%rcx
  40e494:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40e498:	0f 84 3a 01 00 00    	je     40e5d8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1c8>
  40e49e:	4c 8d 70 01          	lea    0x1(%rax),%r14
  40e4a2:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  40e4a9:	0f 87 79 01 00 00    	ja     40e628 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x218>
  40e4af:	48 8b 34 d3          	mov    (%rbx,%rdx,8),%rsi
  40e4b3:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
  40e4b7:	48 89 f2             	mov    %rsi,%rdx
  40e4ba:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40e4be:	4c 21 ca             	and    %r9,%rdx
  40e4c1:	48 31 d6             	xor    %rdx,%rsi
  40e4c4:	48 89 f2             	mov    %rsi,%rdx
  40e4c7:	48 c1 e2 11          	shl    $0x11,%rdx
  40e4cb:	4c 21 e2             	and    %r12,%rdx
  40e4ce:	48 31 d6             	xor    %rdx,%rsi
  40e4d1:	48 89 f2             	mov    %rsi,%rdx
  40e4d4:	48 c1 e2 25          	shl    $0x25,%rdx
  40e4d8:	4c 21 fa             	and    %r15,%rdx
  40e4db:	48 31 d6             	xor    %rdx,%rsi
  40e4de:	48 89 f2             	mov    %rsi,%rdx
  40e4e1:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40e4e5:	48 31 d6             	xor    %rdx,%rsi
  40e4e8:	48 89 f2             	mov    %rsi,%rdx
  40e4eb:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  40e4f0:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40e4f7:	49 39 f6             	cmp    %rsi,%r14
  40e4fa:	0f 86 a0 00 00 00    	jbe    40e5a0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40e500:	48 f7 d0             	not    %rax
  40e503:	31 d2                	xor    %edx,%edx
  40e505:	49 f7 f6             	div    %r14
  40e508:	49 89 d0             	mov    %rdx,%r8
  40e50b:	48 39 d6             	cmp    %rdx,%rsi
  40e50e:	72 55                	jb     40e565 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x155>
  40e510:	e9 8b 00 00 00       	jmpq   40e5a0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40e515:	0f 1f 00             	nopl   (%rax)
  40e518:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40e51c:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40e520:	48 89 f0             	mov    %rsi,%rax
  40e523:	48 c1 e8 1d          	shr    $0x1d,%rax
  40e527:	4c 21 c8             	and    %r9,%rax
  40e52a:	48 31 c6             	xor    %rax,%rsi
  40e52d:	48 89 f0             	mov    %rsi,%rax
  40e530:	48 c1 e0 11          	shl    $0x11,%rax
  40e534:	4c 21 e0             	and    %r12,%rax
  40e537:	48 31 c6             	xor    %rax,%rsi
  40e53a:	48 89 f0             	mov    %rsi,%rax
  40e53d:	48 c1 e0 25          	shl    $0x25,%rax
  40e541:	4c 21 f8             	and    %r15,%rax
  40e544:	48 31 c6             	xor    %rax,%rsi
  40e547:	48 89 f0             	mov    %rsi,%rax
  40e54a:	48 c1 e8 2b          	shr    $0x2b,%rax
  40e54e:	48 31 c6             	xor    %rax,%rsi
  40e551:	48 89 f2             	mov    %rsi,%rdx
  40e554:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  40e559:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40e560:	49 39 f0             	cmp    %rsi,%r8
  40e563:	76 3b                	jbe    40e5a0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40e565:	48 89 c8             	mov    %rcx,%rax
  40e568:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  40e56f:	76 a7                	jbe    40e518 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  40e571:	48 89 df             	mov    %rbx,%rdi
  40e574:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  40e579:	e8 e2 fc ff ff       	callq  40e260 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40e57e:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40e585:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  40e58a:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40e591:	55 55 55 
  40e594:	eb 82                	jmp    40e518 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  40e596:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40e59d:	00 00 00 
  40e5a0:	48 89 f8             	mov    %rdi,%rax
  40e5a3:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  40e5a8:	48 8b 08             	mov    (%rax),%rcx
  40e5ab:	49 8b 55 00          	mov    0x0(%r13),%rdx
  40e5af:	49 89 4d 00          	mov    %rcx,0x0(%r13)
  40e5b3:	49 83 c5 08          	add    $0x8,%r13
  40e5b7:	48 89 10             	mov    %rdx,(%rax)
  40e5ba:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40e5bf:	0f 85 bb fe ff ff    	jne    40e480 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x70>
  40e5c5:	48 83 c4 28          	add    $0x28,%rsp
  40e5c9:	5b                   	pop    %rbx
  40e5ca:	5d                   	pop    %rbp
  40e5cb:	41 5c                	pop    %r12
  40e5cd:	41 5d                	pop    %r13
  40e5cf:	41 5e                	pop    %r14
  40e5d1:	41 5f                	pop    %r15
  40e5d3:	c3                   	retq   
  40e5d4:	0f 1f 40 00          	nopl   0x0(%rax)
  40e5d8:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  40e5df:	77 6f                	ja     40e650 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x240>
  40e5e1:	48 8d 41 01          	lea    0x1(%rcx),%rax
  40e5e5:	48 89 83 c0 09 00 00 	mov    %rax,0x9c0(%rbx)
  40e5ec:	48 8b 04 cb          	mov    (%rbx,%rcx,8),%rax
  40e5f0:	48 89 c2             	mov    %rax,%rdx
  40e5f3:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40e5f7:	4c 21 ca             	and    %r9,%rdx
  40e5fa:	48 31 d0             	xor    %rdx,%rax
  40e5fd:	48 89 c2             	mov    %rax,%rdx
  40e600:	48 c1 e2 11          	shl    $0x11,%rdx
  40e604:	4c 21 e2             	and    %r12,%rdx
  40e607:	48 31 d0             	xor    %rdx,%rax
  40e60a:	48 89 c2             	mov    %rax,%rdx
  40e60d:	48 c1 e2 25          	shl    $0x25,%rdx
  40e611:	4c 21 fa             	and    %r15,%rdx
  40e614:	48 31 d0             	xor    %rdx,%rax
  40e617:	48 89 c2             	mov    %rax,%rdx
  40e61a:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40e61e:	48 31 d0             	xor    %rdx,%rax
  40e621:	eb 80                	jmp    40e5a3 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x193>
  40e623:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40e628:	48 89 df             	mov    %rbx,%rdi
  40e62b:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40e630:	e8 2b fc ff ff       	callq  40e260 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40e635:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  40e63c:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40e641:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40e648:	55 55 55 
  40e64b:	e9 5f fe ff ff       	jmpq   40e4af <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x9f>
  40e650:	48 89 df             	mov    %rbx,%rdi
  40e653:	e8 08 fc ff ff       	callq  40e260 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40e658:	48 8b 8b c0 09 00 00 	mov    0x9c0(%rbx),%rcx
  40e65f:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40e666:	55 55 55 
  40e669:	e9 73 ff ff ff       	jmpq   40e5e1 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1d1>
  40e66e:	66 90                	xchg   %ax,%ax
  40e670:	83 e1 01             	and    $0x1,%ecx
  40e673:	0f 84 35 02 00 00    	je     40e8ae <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x49e>
  40e679:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40e67e:	0f 84 41 ff ff ff    	je     40e5c5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40e684:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40e68b:	55 55 55 
  40e68e:	49 be 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r14
  40e695:	7f d6 71 
  40e698:	49 bc 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r12
  40e69f:	ee f7 ff 
  40e6a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40e6a8:	4d 89 ef             	mov    %r13,%r15
  40e6ab:	49 29 ef             	sub    %rbp,%r15
  40e6ae:	49 c1 ff 03          	sar    $0x3,%r15
  40e6b2:	49 8d 47 02          	lea    0x2(%r15),%rax
  40e6b6:	49 ff c7             	inc    %r15
  40e6b9:	4c 0f af f8          	imul   %rax,%r15
  40e6bd:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40e6c2:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40e6c9:	4d 85 ff             	test   %r15,%r15
  40e6cc:	0f 84 46 01 00 00    	je     40e818 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x408>
  40e6d2:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40e6d8:	0f 87 8a 01 00 00    	ja     40e868 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x458>
  40e6de:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40e6e2:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40e6e6:	48 89 f0             	mov    %rsi,%rax
  40e6e9:	48 c1 e8 1d          	shr    $0x1d,%rax
  40e6ed:	4c 21 d0             	and    %r10,%rax
  40e6f0:	48 31 c6             	xor    %rax,%rsi
  40e6f3:	48 89 f0             	mov    %rsi,%rax
  40e6f6:	48 c1 e0 11          	shl    $0x11,%rax
  40e6fa:	4c 21 f0             	and    %r14,%rax
  40e6fd:	48 31 c6             	xor    %rax,%rsi
  40e700:	48 89 f0             	mov    %rsi,%rax
  40e703:	48 c1 e0 25          	shl    $0x25,%rax
  40e707:	4c 21 e0             	and    %r12,%rax
  40e70a:	48 31 c6             	xor    %rax,%rsi
  40e70d:	48 89 f0             	mov    %rsi,%rax
  40e710:	48 c1 e8 2b          	shr    $0x2b,%rax
  40e714:	48 31 c6             	xor    %rax,%rsi
  40e717:	48 89 f2             	mov    %rsi,%rdx
  40e71a:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40e71f:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40e726:	49 39 f7             	cmp    %rsi,%r15
  40e729:	0f 86 a1 00 00 00    	jbe    40e7d0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40e72f:	4c 89 f8             	mov    %r15,%rax
  40e732:	48 f7 d8             	neg    %rax
  40e735:	31 d2                	xor    %edx,%edx
  40e737:	49 f7 f7             	div    %r15
  40e73a:	49 89 d0             	mov    %rdx,%r8
  40e73d:	48 39 d6             	cmp    %rdx,%rsi
  40e740:	72 5b                	jb     40e79d <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x38d>
  40e742:	e9 89 00 00 00       	jmpq   40e7d0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40e747:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40e74e:	00 00 
  40e750:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40e754:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40e758:	48 89 f0             	mov    %rsi,%rax
  40e75b:	48 c1 e8 1d          	shr    $0x1d,%rax
  40e75f:	4c 21 d0             	and    %r10,%rax
  40e762:	48 31 c6             	xor    %rax,%rsi
  40e765:	48 89 f0             	mov    %rsi,%rax
  40e768:	48 c1 e0 11          	shl    $0x11,%rax
  40e76c:	4c 21 f0             	and    %r14,%rax
  40e76f:	48 31 c6             	xor    %rax,%rsi
  40e772:	48 89 f0             	mov    %rsi,%rax
  40e775:	48 c1 e0 25          	shl    $0x25,%rax
  40e779:	4c 21 e0             	and    %r12,%rax
  40e77c:	48 31 c6             	xor    %rax,%rsi
  40e77f:	48 89 f0             	mov    %rsi,%rax
  40e782:	48 c1 e8 2b          	shr    $0x2b,%rax
  40e786:	48 31 c6             	xor    %rax,%rsi
  40e789:	48 89 f2             	mov    %rsi,%rdx
  40e78c:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40e791:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40e798:	49 39 f0             	cmp    %rsi,%r8
  40e79b:	76 33                	jbe    40e7d0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40e79d:	48 89 c8             	mov    %rcx,%rax
  40e7a0:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  40e7a7:	76 a7                	jbe    40e750 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40e7a9:	48 89 df             	mov    %rbx,%rdi
  40e7ac:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  40e7b1:	e8 aa fa ff ff       	callq  40e260 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40e7b6:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40e7bd:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  40e7c2:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40e7c9:	55 55 55 
  40e7cc:	eb 82                	jmp    40e750 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40e7ce:	66 90                	xchg   %ax,%ax
  40e7d0:	48 89 f8             	mov    %rdi,%rax
  40e7d3:	31 d2                	xor    %edx,%edx
  40e7d5:	48 f7 74 24 10       	divq   0x10(%rsp)
  40e7da:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40e7de:	49 83 c5 10          	add    $0x10,%r13
  40e7e2:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  40e7e7:	48 8b 30             	mov    (%rax),%rsi
  40e7ea:	49 89 75 f0          	mov    %rsi,-0x10(%r13)
  40e7ee:	48 89 08             	mov    %rcx,(%rax)
  40e7f1:	48 8d 44 d5 00       	lea    0x0(%rbp,%rdx,8),%rax
  40e7f6:	48 8b 08             	mov    (%rax),%rcx
  40e7f9:	49 8b 55 f8          	mov    -0x8(%r13),%rdx
  40e7fd:	49 89 4d f8          	mov    %rcx,-0x8(%r13)
  40e801:	48 89 10             	mov    %rdx,(%rax)
  40e804:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40e809:	0f 85 99 fe ff ff    	jne    40e6a8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x298>
  40e80f:	e9 b1 fd ff ff       	jmpq   40e5c5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40e814:	0f 1f 40 00          	nopl   0x0(%rax)
  40e818:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40e81e:	77 70                	ja     40e890 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x480>
  40e820:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40e824:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40e828:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40e82f:	48 89 c2             	mov    %rax,%rdx
  40e832:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40e836:	4c 21 d2             	and    %r10,%rdx
  40e839:	48 31 d0             	xor    %rdx,%rax
  40e83c:	48 89 c2             	mov    %rax,%rdx
  40e83f:	48 c1 e2 11          	shl    $0x11,%rdx
  40e843:	4c 21 f2             	and    %r14,%rdx
  40e846:	48 31 d0             	xor    %rdx,%rax
  40e849:	48 89 c2             	mov    %rax,%rdx
  40e84c:	48 c1 e2 25          	shl    $0x25,%rdx
  40e850:	4c 21 e2             	and    %r12,%rdx
  40e853:	48 31 d0             	xor    %rdx,%rax
  40e856:	48 89 c2             	mov    %rax,%rdx
  40e859:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40e85d:	48 31 d0             	xor    %rdx,%rax
  40e860:	e9 6e ff ff ff       	jmpq   40e7d3 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c3>
  40e865:	0f 1f 00             	nopl   (%rax)
  40e868:	48 89 df             	mov    %rbx,%rdi
  40e86b:	e8 f0 f9 ff ff       	callq  40e260 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40e870:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40e877:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40e87e:	55 55 55 
  40e881:	e9 58 fe ff ff       	jmpq   40e6de <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x2ce>
  40e886:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40e88d:	00 00 00 
  40e890:	48 89 df             	mov    %rbx,%rdi
  40e893:	e8 c8 f9 ff ff       	callq  40e260 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40e898:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40e89f:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40e8a6:	55 55 55 
  40e8a9:	e9 72 ff ff ff       	jmpq   40e820 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x410>
  40e8ae:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40e8b5:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40e8bb:	0f 87 81 00 00 00    	ja     40e942 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x532>
  40e8c1:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40e8c5:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40e8c9:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40e8d0:	48 89 c2             	mov    %rax,%rdx
  40e8d3:	48 b9 55 55 55 55 55 	movabs $0x5555555555555555,%rcx
  40e8da:	55 55 55 
  40e8dd:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40e8e1:	48 21 ca             	and    %rcx,%rdx
  40e8e4:	48 31 d0             	xor    %rdx,%rax
  40e8e7:	48 89 c2             	mov    %rax,%rdx
  40e8ea:	48 b9 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%rcx
  40e8f1:	7f d6 71 
  40e8f4:	48 c1 e2 11          	shl    $0x11,%rdx
  40e8f8:	48 21 ca             	and    %rcx,%rdx
  40e8fb:	48 31 d0             	xor    %rdx,%rax
  40e8fe:	48 89 c2             	mov    %rax,%rdx
  40e901:	48 b9 00 00 00 00 e0 	movabs $0xfff7eee000000000,%rcx
  40e908:	ee f7 ff 
  40e90b:	48 c1 e2 25          	shl    $0x25,%rdx
  40e90f:	48 21 ca             	and    %rcx,%rdx
  40e912:	48 31 d0             	xor    %rdx,%rax
  40e915:	48 89 c2             	mov    %rax,%rdx
  40e918:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40e91c:	48 31 d0             	xor    %rdx,%rax
  40e91f:	31 ff                	xor    %edi,%edi
  40e921:	48 0f a4 c7 01       	shld   $0x1,%rax,%rdi
  40e926:	48 8d 44 fd 00       	lea    0x0(%rbp,%rdi,8),%rax
  40e92b:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  40e92f:	48 8b 08             	mov    (%rax),%rcx
  40e932:	4c 8d 6d 10          	lea    0x10(%rbp),%r13
  40e936:	48 89 4d 08          	mov    %rcx,0x8(%rbp)
  40e93a:	48 89 10             	mov    %rdx,(%rax)
  40e93d:	e9 37 fd ff ff       	jmpq   40e679 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x269>
  40e942:	48 89 df             	mov    %rbx,%rdi
  40e945:	e8 16 f9 ff ff       	callq  40e260 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40e94a:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40e951:	e9 6b ff ff ff       	jmpq   40e8c1 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x4b1>

Disassembly of section .fini:

000000000040e958 <_fini>:
  40e958:	f3 0f 1e fa          	endbr64 
  40e95c:	48 83 ec 08          	sub    $0x8,%rsp
  40e960:	48 83 c4 08          	add    $0x8,%rsp
  40e964:	c3                   	retq   
