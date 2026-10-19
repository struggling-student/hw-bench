
/lpor1/store_0/usr/user/hw-bench-thesis-results/flat-uloaded-20261019T211812Z/build/hardware:     file format elf64-x86-64


Disassembly of section .init:

0000000000403000 <_init>:
  403000:	f3 0f 1e fa          	endbr64 
  403004:	48 83 ec 08          	sub    $0x8,%rsp
  403008:	48 8b 05 c9 ff 00 00 	mov    0xffc9(%rip),%rax        # 412fd8 <__gmon_start__>
  40300f:	48 85 c0             	test   %rax,%rax
  403012:	74 02                	je     403016 <_init+0x16>
  403014:	ff d0                	callq  *%rax
  403016:	48 83 c4 08          	add    $0x8,%rsp
  40301a:	c3                   	retq   

Disassembly of section .plt:

0000000000403020 <.plt>:
  403020:	ff 35 e2 ff 00 00    	pushq  0xffe2(%rip)        # 413008 <_GLOBAL_OFFSET_TABLE_+0x8>
  403026:	ff 25 e4 ff 00 00    	jmpq   *0xffe4(%rip)        # 413010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40302c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403030 <_ZNSo3putEc@plt>:
  403030:	ff 25 e2 ff 00 00    	jmpq   *0xffe2(%rip)        # 413018 <_ZNSo3putEc@GLIBCXX_3.4>
  403036:	68 00 00 00 00       	pushq  $0x0
  40303b:	e9 e0 ff ff ff       	jmpq   403020 <.plt>

0000000000403040 <__errno_location@plt>:
  403040:	ff 25 da ff 00 00    	jmpq   *0xffda(%rip)        # 413020 <__errno_location@GLIBC_2.2.5>
  403046:	68 01 00 00 00       	pushq  $0x1
  40304b:	e9 d0 ff ff ff       	jmpq   403020 <.plt>

0000000000403050 <syscall@plt>:
  403050:	ff 25 d2 ff 00 00    	jmpq   *0xffd2(%rip)        # 413028 <syscall@GLIBC_2.2.5>
  403056:	68 02 00 00 00       	pushq  $0x2
  40305b:	e9 c0 ff ff ff       	jmpq   403020 <.plt>

0000000000403060 <GOMP_single_start@plt>:
  403060:	ff 25 ca ff 00 00    	jmpq   *0xffca(%rip)        # 413030 <GOMP_single_start@GOMP_1.0>
  403066:	68 03 00 00 00       	pushq  $0x3
  40306b:	e9 b0 ff ff ff       	jmpq   403020 <.plt>

0000000000403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>:
  403070:	ff 25 c2 ff 00 00    	jmpq   *0xffc2(%rip)        # 413038 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@GLIBCXX_3.4>
  403076:	68 04 00 00 00       	pushq  $0x4
  40307b:	e9 a0 ff ff ff       	jmpq   403020 <.plt>

0000000000403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>:
  403080:	ff 25 ba ff 00 00    	jmpq   *0xffba(%rip)        # 413040 <_ZNSt10filesystem7__cxx114pathdVERKS1_@GLIBCXX_3.4.26>
  403086:	68 05 00 00 00       	pushq  $0x5
  40308b:	e9 90 ff ff ff       	jmpq   403020 <.plt>

0000000000403090 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>:
  403090:	ff 25 b2 ff 00 00    	jmpq   *0xffb2(%rip)        # 413048 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  403096:	68 06 00 00 00       	pushq  $0x6
  40309b:	e9 80 ff ff ff       	jmpq   403020 <.plt>

00000000004030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>:
  4030a0:	ff 25 aa ff 00 00    	jmpq   *0xffaa(%rip)        # 413050 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@GLIBCXX_3.4.26>
  4030a6:	68 07 00 00 00       	pushq  $0x7
  4030ab:	e9 70 ff ff ff       	jmpq   403020 <.plt>

00000000004030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>:
  4030b0:	ff 25 a2 ff 00 00    	jmpq   *0xffa2(%rip)        # 413058 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@GLIBCXX_3.4.26>
  4030b6:	68 08 00 00 00       	pushq  $0x8
  4030bb:	e9 60 ff ff ff       	jmpq   403020 <.plt>

00000000004030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>:
  4030c0:	ff 25 9a ff 00 00    	jmpq   *0xff9a(%rip)        # 413060 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@GLIBCXX_3.4.21>
  4030c6:	68 09 00 00 00       	pushq  $0x9
  4030cb:	e9 50 ff ff ff       	jmpq   403020 <.plt>

00000000004030d0 <_ZNSt8ios_baseC2Ev@plt>:
  4030d0:	ff 25 92 ff 00 00    	jmpq   *0xff92(%rip)        # 413068 <_ZNSt8ios_baseC2Ev@GLIBCXX_3.4>
  4030d6:	68 0a 00 00 00       	pushq  $0xa
  4030db:	e9 40 ff ff ff       	jmpq   403020 <.plt>

00000000004030e0 <nanosleep@plt>:
  4030e0:	ff 25 8a ff 00 00    	jmpq   *0xff8a(%rip)        # 413070 <nanosleep@GLIBC_2.2.5>
  4030e6:	68 0b 00 00 00       	pushq  $0xb
  4030eb:	e9 30 ff ff ff       	jmpq   403020 <.plt>

00000000004030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>:
  4030f0:	ff 25 82 ff 00 00    	jmpq   *0xff82(%rip)        # 413078 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@GLIBCXX_3.4.21>
  4030f6:	68 0c 00 00 00       	pushq  $0xc
  4030fb:	e9 20 ff ff ff       	jmpq   403020 <.plt>

0000000000403100 <_ZNSt8ios_baseD2Ev@plt>:
  403100:	ff 25 7a ff 00 00    	jmpq   *0xff7a(%rip)        # 413080 <_ZNSt8ios_baseD2Ev@GLIBCXX_3.4>
  403106:	68 0d 00 00 00       	pushq  $0xd
  40310b:	e9 10 ff ff ff       	jmpq   403020 <.plt>

0000000000403110 <write@plt>:
  403110:	ff 25 72 ff 00 00    	jmpq   *0xff72(%rip)        # 413088 <write@GLIBC_2.2.5>
  403116:	68 0e 00 00 00       	pushq  $0xe
  40311b:	e9 00 ff ff ff       	jmpq   403020 <.plt>

0000000000403120 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>:
  403120:	ff 25 6a ff 00 00    	jmpq   *0xff6a(%rip)        # 413090 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@GLIBCXX_3.4.26>
  403126:	68 0f 00 00 00       	pushq  $0xf
  40312b:	e9 f0 fe ff ff       	jmpq   403020 <.plt>

0000000000403130 <_ZNSt13runtime_errorC1EPKc@plt>:
  403130:	ff 25 62 ff 00 00    	jmpq   *0xff62(%rip)        # 413098 <_ZNSt13runtime_errorC1EPKc@GLIBCXX_3.4.21>
  403136:	68 10 00 00 00       	pushq  $0x10
  40313b:	e9 e0 fe ff ff       	jmpq   403020 <.plt>

0000000000403140 <__cxa_begin_catch@plt>:
  403140:	ff 25 5a ff 00 00    	jmpq   *0xff5a(%rip)        # 4130a0 <__cxa_begin_catch@CXXABI_1.3>
  403146:	68 11 00 00 00       	pushq  $0x11
  40314b:	e9 d0 fe ff ff       	jmpq   403020 <.plt>

0000000000403150 <strlen@plt>:
  403150:	ff 25 52 ff 00 00    	jmpq   *0xff52(%rip)        # 4130a8 <strlen@GLIBC_2.2.5>
  403156:	68 12 00 00 00       	pushq  $0x12
  40315b:	e9 c0 fe ff ff       	jmpq   403020 <.plt>

0000000000403160 <__cxa_allocate_exception@plt>:
  403160:	ff 25 4a ff 00 00    	jmpq   *0xff4a(%rip)        # 4130b0 <__cxa_allocate_exception@CXXABI_1.3>
  403166:	68 13 00 00 00       	pushq  $0x13
  40316b:	e9 b0 fe ff ff       	jmpq   403020 <.plt>

0000000000403170 <_ZSt20__throw_length_errorPKc@plt>:
  403170:	ff 25 42 ff 00 00    	jmpq   *0xff42(%rip)        # 4130b8 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
  403176:	68 14 00 00 00       	pushq  $0x14
  40317b:	e9 a0 fe ff ff       	jmpq   403020 <.plt>

0000000000403180 <_ZNSi10_M_extractImEERSiRT_@plt>:
  403180:	ff 25 3a ff 00 00    	jmpq   *0xff3a(%rip)        # 4130c0 <_ZNSi10_M_extractImEERSiRT_@GLIBCXX_3.4.9>
  403186:	68 15 00 00 00       	pushq  $0x15
  40318b:	e9 90 fe ff ff       	jmpq   403020 <.plt>

0000000000403190 <memset@plt>:
  403190:	ff 25 32 ff 00 00    	jmpq   *0xff32(%rip)        # 4130c8 <memset@GLIBC_2.2.5>
  403196:	68 16 00 00 00       	pushq  $0x16
  40319b:	e9 80 fe ff ff       	jmpq   403020 <.plt>

00000000004031a0 <GOMP_atomic_start@plt>:
  4031a0:	ff 25 2a ff 00 00    	jmpq   *0xff2a(%rip)        # 4130d0 <GOMP_atomic_start@GOMP_1.0>
  4031a6:	68 17 00 00 00       	pushq  $0x17
  4031ab:	e9 70 fe ff ff       	jmpq   403020 <.plt>

00000000004031b0 <_ZSt24__throw_invalid_argumentPKc@plt>:
  4031b0:	ff 25 22 ff 00 00    	jmpq   *0xff22(%rip)        # 4130d8 <_ZSt24__throw_invalid_argumentPKc@GLIBCXX_3.4>
  4031b6:	68 18 00 00 00       	pushq  $0x18
  4031bb:	e9 60 fe ff ff       	jmpq   403020 <.plt>

00000000004031c0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@plt>:
  4031c0:	ff 25 1a ff 00 00    	jmpq   *0xff1a(%rip)        # 4130e0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@GLIBCXX_3.4.26>
  4031c6:	68 19 00 00 00       	pushq  $0x19
  4031cb:	e9 50 fe ff ff       	jmpq   403020 <.plt>

00000000004031d0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@plt>:
  4031d0:	ff 25 12 ff 00 00    	jmpq   *0xff12(%rip)        # 4130e8 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@GLIBCXX_3.4.26>
  4031d6:	68 1a 00 00 00       	pushq  $0x1a
  4031db:	e9 40 fe ff ff       	jmpq   403020 <.plt>

00000000004031e0 <_ZNSo9_M_insertIyEERSoT_@plt>:
  4031e0:	ff 25 0a ff 00 00    	jmpq   *0xff0a(%rip)        # 4130f0 <_ZNSo9_M_insertIyEERSoT_@GLIBCXX_3.4.9>
  4031e6:	68 1b 00 00 00       	pushq  $0x1b
  4031eb:	e9 30 fe ff ff       	jmpq   403020 <.plt>

00000000004031f0 <_ZNSo9_M_insertImEERSoT_@plt>:
  4031f0:	ff 25 02 ff 00 00    	jmpq   *0xff02(%rip)        # 4130f8 <_ZNSo9_M_insertImEERSoT_@GLIBCXX_3.4.9>
  4031f6:	68 1c 00 00 00       	pushq  $0x1c
  4031fb:	e9 20 fe ff ff       	jmpq   403020 <.plt>

0000000000403200 <_ZSt19__throw_logic_errorPKc@plt>:
  403200:	ff 25 fa fe 00 00    	jmpq   *0xfefa(%rip)        # 413100 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
  403206:	68 1d 00 00 00       	pushq  $0x1d
  40320b:	e9 10 fe ff ff       	jmpq   403020 <.plt>

0000000000403210 <__cxa_free_exception@plt>:
  403210:	ff 25 f2 fe 00 00    	jmpq   *0xfef2(%rip)        # 413108 <__cxa_free_exception@CXXABI_1.3>
  403216:	68 1e 00 00 00       	pushq  $0x1e
  40321b:	e9 00 fe ff ff       	jmpq   403020 <.plt>

0000000000403220 <open@plt>:
  403220:	ff 25 ea fe 00 00    	jmpq   *0xfeea(%rip)        # 413110 <open@GLIBC_2.2.5>
  403226:	68 1f 00 00 00       	pushq  $0x1f
  40322b:	e9 f0 fd ff ff       	jmpq   403020 <.plt>

0000000000403230 <aligned_alloc@plt>:
  403230:	ff 25 e2 fe 00 00    	jmpq   *0xfee2(%rip)        # 413118 <aligned_alloc@GLIBC_2.16>
  403236:	68 20 00 00 00       	pushq  $0x20
  40323b:	e9 e0 fd ff ff       	jmpq   403020 <.plt>

0000000000403240 <GOMP_atomic_end@plt>:
  403240:	ff 25 da fe 00 00    	jmpq   *0xfeda(%rip)        # 413120 <GOMP_atomic_end@GOMP_1.0>
  403246:	68 21 00 00 00       	pushq  $0x21
  40324b:	e9 d0 fd ff ff       	jmpq   403020 <.plt>

0000000000403250 <strtod@plt>:
  403250:	ff 25 d2 fe 00 00    	jmpq   *0xfed2(%rip)        # 413128 <strtod@GLIBC_2.2.5>
  403256:	68 22 00 00 00       	pushq  $0x22
  40325b:	e9 c0 fd ff ff       	jmpq   403020 <.plt>

0000000000403260 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>:
  403260:	ff 25 ca fe 00 00    	jmpq   *0xfeca(%rip)        # 413130 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@GLIBCXX_3.4.26>
  403266:	68 23 00 00 00       	pushq  $0x23
  40326b:	e9 b0 fd ff ff       	jmpq   403020 <.plt>

0000000000403270 <memcpy@plt>:
  403270:	ff 25 c2 fe 00 00    	jmpq   *0xfec2(%rip)        # 413138 <memcpy@GLIBC_2.14>
  403276:	68 24 00 00 00       	pushq  $0x24
  40327b:	e9 a0 fd ff ff       	jmpq   403020 <.plt>

0000000000403280 <__cxa_atexit@plt>:
  403280:	ff 25 ba fe 00 00    	jmpq   *0xfeba(%rip)        # 413140 <__cxa_atexit@GLIBC_2.2.5>
  403286:	68 25 00 00 00       	pushq  $0x25
  40328b:	e9 90 fd ff ff       	jmpq   403020 <.plt>

0000000000403290 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>:
  403290:	ff 25 b2 fe 00 00    	jmpq   *0xfeb2(%rip)        # 413148 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@GLIBCXX_3.4>
  403296:	68 26 00 00 00       	pushq  $0x26
  40329b:	e9 80 fd ff ff       	jmpq   403020 <.plt>

00000000004032a0 <clock_gettime@plt>:
  4032a0:	ff 25 aa fe 00 00    	jmpq   *0xfeaa(%rip)        # 413150 <clock_gettime@GLIBC_2.17>
  4032a6:	68 27 00 00 00       	pushq  $0x27
  4032ab:	e9 70 fd ff ff       	jmpq   403020 <.plt>

00000000004032b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  4032b0:	ff 25 a2 fe 00 00    	jmpq   *0xfea2(%rip)        # 413158 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  4032b6:	68 28 00 00 00       	pushq  $0x28
  4032bb:	e9 60 fd ff ff       	jmpq   403020 <.plt>

00000000004032c0 <_Znwm@plt>:
  4032c0:	ff 25 9a fe 00 00    	jmpq   *0xfe9a(%rip)        # 413160 <_Znwm@GLIBCXX_3.4>
  4032c6:	68 29 00 00 00       	pushq  $0x29
  4032cb:	e9 50 fd ff ff       	jmpq   403020 <.plt>

00000000004032d0 <_ZdlPvm@plt>:
  4032d0:	ff 25 92 fe 00 00    	jmpq   *0xfe92(%rip)        # 413168 <_ZdlPvm@CXXABI_1.3.9>
  4032d6:	68 2a 00 00 00       	pushq  $0x2a
  4032db:	e9 40 fd ff ff       	jmpq   403020 <.plt>

00000000004032e0 <_ZNSt13runtime_errorD1Ev@plt>:
  4032e0:	ff 25 8a fe 00 00    	jmpq   *0xfe8a(%rip)        # 413170 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
  4032e6:	68 2b 00 00 00       	pushq  $0x2b
  4032eb:	e9 30 fd ff ff       	jmpq   403020 <.plt>

00000000004032f0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>:
  4032f0:	ff 25 82 fe 00 00    	jmpq   *0xfe82(%rip)        # 413178 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@GLIBCXX_3.4>
  4032f6:	68 2c 00 00 00       	pushq  $0x2c
  4032fb:	e9 20 fd ff ff       	jmpq   403020 <.plt>

0000000000403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
  403300:	ff 25 7a fe 00 00    	jmpq   *0xfe7a(%rip)        # 413180 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
  403306:	68 2d 00 00 00       	pushq  $0x2d
  40330b:	e9 10 fd ff ff       	jmpq   403020 <.plt>

0000000000403310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>:
  403310:	ff 25 72 fe 00 00    	jmpq   *0xfe72(%rip)        # 413188 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@GLIBCXX_3.4.21>
  403316:	68 2e 00 00 00       	pushq  $0x2e
  40331b:	e9 00 fd ff ff       	jmpq   403020 <.plt>

0000000000403320 <free@plt>:
  403320:	ff 25 6a fe 00 00    	jmpq   *0xfe6a(%rip)        # 413190 <free@GLIBC_2.2.5>
  403326:	68 2f 00 00 00       	pushq  $0x2f
  40332b:	e9 f0 fc ff ff       	jmpq   403020 <.plt>

0000000000403330 <madvise@plt>:
  403330:	ff 25 62 fe 00 00    	jmpq   *0xfe62(%rip)        # 413198 <madvise@GLIBC_2.2.5>
  403336:	68 30 00 00 00       	pushq  $0x30
  40333b:	e9 e0 fc ff ff       	jmpq   403020 <.plt>

0000000000403340 <getenv@plt>:
  403340:	ff 25 5a fe 00 00    	jmpq   *0xfe5a(%rip)        # 4131a0 <getenv@GLIBC_2.2.5>
  403346:	68 31 00 00 00       	pushq  $0x31
  40334b:	e9 d0 fc ff ff       	jmpq   403020 <.plt>

0000000000403350 <strtoull@plt>:
  403350:	ff 25 52 fe 00 00    	jmpq   *0xfe52(%rip)        # 4131a8 <strtoull@GLIBC_2.2.5>
  403356:	68 32 00 00 00       	pushq  $0x32
  40335b:	e9 c0 fc ff ff       	jmpq   403020 <.plt>

0000000000403360 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>:
  403360:	ff 25 4a fe 00 00    	jmpq   *0xfe4a(%rip)        # 4131b0 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@GLIBCXX_3.4>
  403366:	68 33 00 00 00       	pushq  $0x33
  40336b:	e9 b0 fc ff ff       	jmpq   403020 <.plt>

0000000000403370 <strtol@plt>:
  403370:	ff 25 42 fe 00 00    	jmpq   *0xfe42(%rip)        # 4131b8 <strtol@GLIBC_2.2.5>
  403376:	68 34 00 00 00       	pushq  $0x34
  40337b:	e9 a0 fc ff ff       	jmpq   403020 <.plt>

0000000000403380 <_ZNSt6localeD1Ev@plt>:
  403380:	ff 25 3a fe 00 00    	jmpq   *0xfe3a(%rip)        # 4131c0 <_ZNSt6localeD1Ev@GLIBCXX_3.4>
  403386:	68 35 00 00 00       	pushq  $0x35
  40338b:	e9 90 fc ff ff       	jmpq   403020 <.plt>

0000000000403390 <read@plt>:
  403390:	ff 25 32 fe 00 00    	jmpq   *0xfe32(%rip)        # 4131c8 <read@GLIBC_2.2.5>
  403396:	68 36 00 00 00       	pushq  $0x36
  40339b:	e9 80 fc ff ff       	jmpq   403020 <.plt>

00000000004033a0 <_ZSt20__throw_out_of_rangePKc@plt>:
  4033a0:	ff 25 2a fe 00 00    	jmpq   *0xfe2a(%rip)        # 4131d0 <_ZSt20__throw_out_of_rangePKc@GLIBCXX_3.4>
  4033a6:	68 37 00 00 00       	pushq  $0x37
  4033ab:	e9 70 fc ff ff       	jmpq   403020 <.plt>

00000000004033b0 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>:
  4033b0:	ff 25 22 fe 00 00    	jmpq   *0xfe22(%rip)        # 4131d8 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  4033b6:	68 38 00 00 00       	pushq  $0x38
  4033bb:	e9 60 fc ff ff       	jmpq   403020 <.plt>

00000000004033c0 <GOMP_parallel@plt>:
  4033c0:	ff 25 1a fe 00 00    	jmpq   *0xfe1a(%rip)        # 4131e0 <GOMP_parallel@GOMP_4.0>
  4033c6:	68 39 00 00 00       	pushq  $0x39
  4033cb:	e9 50 fc ff ff       	jmpq   403020 <.plt>

00000000004033d0 <_ZNSt8ios_base4InitC1Ev@plt>:
  4033d0:	ff 25 12 fe 00 00    	jmpq   *0xfe12(%rip)        # 4131e8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  4033d6:	68 3a 00 00 00       	pushq  $0x3a
  4033db:	e9 40 fc ff ff       	jmpq   403020 <.plt>

00000000004033e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>:
  4033e0:	ff 25 0a fe 00 00    	jmpq   *0xfe0a(%rip)        # 4131f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@GLIBCXX_3.4.21>
  4033e6:	68 3b 00 00 00       	pushq  $0x3b
  4033eb:	e9 30 fc ff ff       	jmpq   403020 <.plt>

00000000004033f0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>:
  4033f0:	ff 25 02 fe 00 00    	jmpq   *0xfe02(%rip)        # 4131f8 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  4033f6:	68 3c 00 00 00       	pushq  $0x3c
  4033fb:	e9 20 fc ff ff       	jmpq   403020 <.plt>

0000000000403400 <omp_get_thread_num@plt>:
  403400:	ff 25 fa fd 00 00    	jmpq   *0xfdfa(%rip)        # 413200 <omp_get_thread_num@OMP_1.0>
  403406:	68 3d 00 00 00       	pushq  $0x3d
  40340b:	e9 10 fc ff ff       	jmpq   403020 <.plt>

0000000000403410 <_ZNSo9_M_insertIdEERSoT_@plt>:
  403410:	ff 25 f2 fd 00 00    	jmpq   *0xfdf2(%rip)        # 413208 <_ZNSo9_M_insertIdEERSoT_@GLIBCXX_3.4.9>
  403416:	68 3e 00 00 00       	pushq  $0x3e
  40341b:	e9 00 fc ff ff       	jmpq   403020 <.plt>

0000000000403420 <__cxa_end_catch@plt>:
  403420:	ff 25 ea fd 00 00    	jmpq   *0xfdea(%rip)        # 413210 <__cxa_end_catch@CXXABI_1.3>
  403426:	68 3f 00 00 00       	pushq  $0x3f
  40342b:	e9 f0 fb ff ff       	jmpq   403020 <.plt>

0000000000403430 <__gxx_personality_v0@plt>:
  403430:	ff 25 e2 fd 00 00    	jmpq   *0xfde2(%rip)        # 413218 <__gxx_personality_v0@CXXABI_1.3>
  403436:	68 40 00 00 00       	pushq  $0x40
  40343b:	e9 e0 fb ff ff       	jmpq   403020 <.plt>

0000000000403440 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>:
  403440:	ff 25 da fd 00 00    	jmpq   *0xfdda(%rip)        # 413220 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@GLIBCXX_3.4>
  403446:	68 41 00 00 00       	pushq  $0x41
  40344b:	e9 d0 fb ff ff       	jmpq   403020 <.plt>

0000000000403450 <__cxa_throw@plt>:
  403450:	ff 25 d2 fd 00 00    	jmpq   *0xfdd2(%rip)        # 413228 <__cxa_throw@CXXABI_1.3>
  403456:	68 42 00 00 00       	pushq  $0x42
  40345b:	e9 c0 fb ff ff       	jmpq   403020 <.plt>

0000000000403460 <_ZNSolsEi@plt>:
  403460:	ff 25 ca fd 00 00    	jmpq   *0xfdca(%rip)        # 413230 <_ZNSolsEi@GLIBCXX_3.4>
  403466:	68 43 00 00 00       	pushq  $0x43
  40346b:	e9 b0 fb ff ff       	jmpq   403020 <.plt>

0000000000403470 <_Unwind_Resume@plt>:
  403470:	ff 25 c2 fd 00 00    	jmpq   *0xfdc2(%rip)        # 413238 <_Unwind_Resume@GCC_3.0>
  403476:	68 44 00 00 00       	pushq  $0x44
  40347b:	e9 a0 fb ff ff       	jmpq   403020 <.plt>

0000000000403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>:
  403480:	ff 25 ba fd 00 00    	jmpq   *0xfdba(%rip)        # 413240 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@GLIBCXX_3.4.21>
  403486:	68 45 00 00 00       	pushq  $0x45
  40348b:	e9 90 fb ff ff       	jmpq   403020 <.plt>

0000000000403490 <GOMP_barrier@plt>:
  403490:	ff 25 b2 fd 00 00    	jmpq   *0xfdb2(%rip)        # 413248 <GOMP_barrier@GOMP_1.0>
  403496:	68 46 00 00 00       	pushq  $0x46
  40349b:	e9 80 fb ff ff       	jmpq   403020 <.plt>

00000000004034a0 <_ZNSt12__basic_fileIcED1Ev@plt>:
  4034a0:	ff 25 aa fd 00 00    	jmpq   *0xfdaa(%rip)        # 413250 <_ZNSt12__basic_fileIcED1Ev@GLIBCXX_3.4>
  4034a6:	68 47 00 00 00       	pushq  $0x47
  4034ab:	e9 70 fb ff ff       	jmpq   403020 <.plt>

00000000004034b0 <omp_get_num_threads@plt>:
  4034b0:	ff 25 a2 fd 00 00    	jmpq   *0xfda2(%rip)        # 413258 <omp_get_num_threads@OMP_1.0>
  4034b6:	68 48 00 00 00       	pushq  $0x48
  4034bb:	e9 60 fb ff ff       	jmpq   403020 <.plt>

00000000004034c0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>:
  4034c0:	ff 25 9a fd 00 00    	jmpq   *0xfd9a(%rip)        # 413260 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@GLIBCXX_3.4.26>
  4034c6:	68 49 00 00 00       	pushq  $0x49
  4034cb:	e9 50 fb ff ff       	jmpq   403020 <.plt>

00000000004034d0 <close@plt>:
  4034d0:	ff 25 92 fd 00 00    	jmpq   *0xfd92(%rip)        # 413268 <close@GLIBC_2.2.5>
  4034d6:	68 4a 00 00 00       	pushq  $0x4a
  4034db:	e9 40 fb ff ff       	jmpq   403020 <.plt>

00000000004034e0 <_ZNSt8ios_base4InitD1Ev@plt>:
  4034e0:	ff 25 8a fd 00 00    	jmpq   *0xfd8a(%rip)        # 413270 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  4034e6:	68 4b 00 00 00       	pushq  $0x4b
  4034eb:	e9 30 fb ff ff       	jmpq   403020 <.plt>

Disassembly of section .text:

00000000004034f0 <_Z11alloc_bytesmb.cold>:
  4034f0:	bf 10 00 00 00       	mov    $0x10,%edi
  4034f5:	e8 66 fc ff ff       	callq  403160 <__cxa_allocate_exception@plt>
  4034fa:	48 89 c7             	mov    %rax,%rdi
  4034fd:	be 13 00 41 00       	mov    $0x410013,%esi
  403502:	48 89 c5             	mov    %rax,%rbp
  403505:	e8 26 fc ff ff       	callq  403130 <_ZNSt13runtime_errorC1EPKc@plt>
  40350a:	ba e0 32 40 00       	mov    $0x4032e0,%edx
  40350f:	be a0 2d 41 00       	mov    $0x412da0,%esi
  403514:	48 89 ef             	mov    %rbp,%rdi
  403517:	e8 34 ff ff ff       	callq  403450 <__cxa_throw@plt>
  40351c:	49 89 c4             	mov    %rax,%r12
  40351f:	48 89 ef             	mov    %rbp,%rdi
  403522:	c5 f8 77             	vzeroupper 
  403525:	e8 e6 fc ff ff       	callq  403210 <__cxa_free_exception@plt>
  40352a:	4c 89 e7             	mov    %r12,%rdi
  40352d:	e8 3e ff ff ff       	callq  403470 <_Unwind_Resume@plt>

0000000000403532 <_Z6windowid.cold>:
  403532:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  403537:	83 38 00             	cmpl   $0x0,(%rax)
  40353a:	75 03                	jne    40353f <_Z6windowid.cold+0xd>
  40353c:	44 89 28             	mov    %r13d,(%rax)
  40353f:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  403546:	00 
  403547:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40354e:	00 
  40354f:	48 39 c7             	cmp    %rax,%rdi
  403552:	0f 84 30 01 00 00    	je     403688 <_Z6windowid.cold+0x156>
  403558:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40355f:	00 
  403560:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403564:	c5 f8 77             	vzeroupper 
  403567:	e8 64 fd ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40356c:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  403573:	00 
  403574:	e8 37 a9 00 00       	callq  40deb0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403579:	48 89 df             	mov    %rbx,%rdi
  40357c:	e8 ef fe ff ff       	callq  403470 <_Unwind_Resume@plt>
  403581:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403588:	00 
  403589:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403590:	00 
  403591:	48 39 c7             	cmp    %rax,%rdi
  403594:	0f 84 3b 01 00 00    	je     4036d5 <_Z6windowid.cold+0x1a3>
  40359a:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  4035a1:	00 
  4035a2:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4035a6:	c5 f8 77             	vzeroupper 
  4035a9:	e8 22 fd ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4035ae:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  4035b5:	00 
  4035b6:	e8 f5 a8 00 00       	callq  40deb0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4035bb:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  4035c2:	00 
  4035c3:	4c 39 ff             	cmp    %r15,%rdi
  4035c6:	75 5c                	jne    403624 <_Z6windowid.cold+0xf2>
  4035c8:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  4035cf:	00 
  4035d0:	e8 db a8 00 00       	callq  40deb0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4035d5:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  4035da:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  4035e1:	00 
  4035e2:	48 39 c7             	cmp    %rax,%rdi
  4035e5:	74 85                	je     40356c <_Z6windowid.cold+0x3a>
  4035e7:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  4035ee:	00 
  4035ef:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4035f3:	e8 d8 fc ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4035f8:	e9 6f ff ff ff       	jmpq   40356c <_Z6windowid.cold+0x3a>
  4035fd:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  403604:	00 
  403605:	4c 39 ff             	cmp    %r15,%rdi
  403608:	0f 84 82 00 00 00    	je     403690 <_Z6windowid.cold+0x15e>
  40360e:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  403615:	00 
  403616:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40361a:	c5 f8 77             	vzeroupper 
  40361d:	e8 ae fc ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403622:	eb a4                	jmp    4035c8 <_Z6windowid.cold+0x96>
  403624:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40362b:	00 
  40362c:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403630:	e8 9b fc ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403635:	eb 91                	jmp    4035c8 <_Z6windowid.cold+0x96>
  403637:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40363e:	00 
  40363f:	48 85 f6             	test   %rsi,%rsi
  403642:	74 3f                	je     403683 <_Z6windowid.cold+0x151>
  403644:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40364b:	00 
  40364c:	c5 f8 77             	vzeroupper 
  40364f:	e8 4c fa ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  403654:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40365b:	00 
  40365c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  403663:	00 
  403664:	48 39 c7             	cmp    %rax,%rdi
  403667:	0f 84 4e ff ff ff    	je     4035bb <_Z6windowid.cold+0x89>
  40366d:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  403674:	00 
  403675:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403679:	e8 52 fc ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40367e:	e9 38 ff ff ff       	jmpq   4035bb <_Z6windowid.cold+0x89>
  403683:	c5 f8 77             	vzeroupper 
  403686:	eb cc                	jmp    403654 <_Z6windowid.cold+0x122>
  403688:	c5 f8 77             	vzeroupper 
  40368b:	e9 dc fe ff ff       	jmpq   40356c <_Z6windowid.cold+0x3a>
  403690:	c5 f8 77             	vzeroupper 
  403693:	e9 30 ff ff ff       	jmpq   4035c8 <_Z6windowid.cold+0x96>
  403698:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40369d:	83 38 00             	cmpl   $0x0,(%rax)
  4036a0:	75 02                	jne    4036a4 <_Z6windowid.cold+0x172>
  4036a2:	89 18                	mov    %ebx,(%rax)
  4036a4:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  4036ab:	00 
  4036ac:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4036b3:	00 
  4036b4:	48 39 c7             	cmp    %rax,%rdi
  4036b7:	74 24                	je     4036dd <_Z6windowid.cold+0x1ab>
  4036b9:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  4036c0:	00 
  4036c1:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4036c5:	c5 f8 77             	vzeroupper 
  4036c8:	e8 03 fc ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4036cd:	4c 89 e3             	mov    %r12,%rbx
  4036d0:	e9 97 fe ff ff       	jmpq   40356c <_Z6windowid.cold+0x3a>
  4036d5:	c5 f8 77             	vzeroupper 
  4036d8:	e9 d1 fe ff ff       	jmpq   4035ae <_Z6windowid.cold+0x7c>
  4036dd:	c5 f8 77             	vzeroupper 
  4036e0:	eb eb                	jmp    4036cd <_Z6windowid.cold+0x19b>
  4036e2:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  4036e9:	00 
  4036ea:	c5 f8 77             	vzeroupper 
  4036ed:	e8 fe fc ff ff       	callq  4033f0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>
  4036f2:	48 8b 05 2f f5 00 00 	mov    0xf52f(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  4036f9:	48 8b 0d 30 f5 00 00 	mov    0xf530(%rip),%rcx        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  403700:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  403707:	00 
  403708:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40370c:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  403713:	00 
  403714:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40371b:	00 
  40371c:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  403723:	00 90 2b 41 00 
  403728:	e8 d3 f9 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40372d:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  403732:	e8 79 a7 00 00       	callq  40deb0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403737:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40373e:	00 
  40373f:	e8 6c a7 00 00       	callq  40deb0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403744:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40374b:	00 
  40374c:	4c 39 ff             	cmp    %r15,%rdi
  40374f:	74 11                	je     403762 <_Z6windowid.cold+0x230>
  403751:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  403758:	00 
  403759:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40375d:	e8 6e fb ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403762:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  403769:	00 
  40376a:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  403771:	00 
  403772:	48 39 c7             	cmp    %rax,%rdi
  403775:	74 11                	je     403788 <_Z6windowid.cold+0x256>
  403777:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40377e:	00 
  40377f:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403783:	e8 48 fb ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403788:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40378f:	00 
  403790:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  403797:	00 
  403798:	48 39 c7             	cmp    %rax,%rdi
  40379b:	0f 84 34 fe ff ff    	je     4035d5 <_Z6windowid.cold+0xa3>
  4037a1:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  4037a8:	00 
  4037a9:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4037ad:	e8 1e fb ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4037b2:	e9 1e fe ff ff       	jmpq   4035d5 <_Z6windowid.cold+0xa3>
  4037b7:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  4037be:	00 
  4037bf:	c5 f8 77             	vzeroupper 
  4037c2:	e8 e9 fb ff ff       	callq  4033b0 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>
  4037c7:	e9 61 ff ff ff       	jmpq   40372d <_Z6windowid.cold+0x1fb>
  4037cc:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
  4037d3:	00 
  4037d4:	48 85 f6             	test   %rsi,%rsi
  4037d7:	74 3e                	je     403817 <_Z6windowid.cold+0x2e5>
  4037d9:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  4037e0:	00 
  4037e1:	c5 f8 77             	vzeroupper 
  4037e4:	e8 b7 f8 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  4037e9:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  4037f0:	00 
  4037f1:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  4037f8:	00 
  4037f9:	48 39 c7             	cmp    %rax,%rdi
  4037fc:	74 11                	je     40380f <_Z6windowid.cold+0x2dd>
  4037fe:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  403805:	00 
  403806:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40380a:	e8 c1 fa ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40380f:	4c 89 e7             	mov    %r12,%rdi
  403812:	e8 59 fc ff ff       	callq  403470 <_Unwind_Resume@plt>
  403817:	c5 f8 77             	vzeroupper 
  40381a:	eb cd                	jmp    4037e9 <_Z6windowid.cold+0x2b7>
  40381c:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  403823:	00 
  403824:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40382b:	00 
  40382c:	48 39 c7             	cmp    %rax,%rdi
  40382f:	74 19                	je     40384a <_Z6windowid.cold+0x318>
  403831:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  403838:	00 
  403839:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40383d:	c5 f8 77             	vzeroupper 
  403840:	e8 8b fa ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403845:	e9 22 fd ff ff       	jmpq   40356c <_Z6windowid.cold+0x3a>
  40384a:	c5 f8 77             	vzeroupper 
  40384d:	e9 1a fd ff ff       	jmpq   40356c <_Z6windowid.cold+0x3a>
  403852:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  403859:	00 
  40385a:	c5 f8 77             	vzeroupper 
  40385d:	e8 8e fb ff ff       	callq  4033f0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>
  403862:	48 8b 05 bf f3 00 00 	mov    0xf3bf(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  403869:	48 8b 0d c0 f3 00 00 	mov    0xf3c0(%rip),%rcx        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  403870:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  403877:	00 
  403878:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40387c:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  403883:	00 
  403884:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40388b:	00 
  40388c:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  403893:	00 90 2b 41 00 
  403898:	e8 63 f8 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40389d:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4038a2:	e8 09 a6 00 00       	callq  40deb0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4038a7:	e9 1c fd ff ff       	jmpq   4035c8 <_Z6windowid.cold+0x96>
  4038ac:	c5 f8 77             	vzeroupper 
  4038af:	e8 8c f8 ff ff       	callq  403140 <__cxa_begin_catch@plt>
  4038b4:	e8 67 fb ff ff       	callq  403420 <__cxa_end_catch@plt>
  4038b9:	e9 b9 92 00 00       	jmpq   40cb77 <_Z6windowid+0x15d7>
  4038be:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4038c3:	c5 f8 77             	vzeroupper 
  4038c6:	e8 e5 a5 00 00       	callq  40deb0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4038cb:	e9 de fc ff ff       	jmpq   4035ae <_Z6windowid.cold+0x7c>
  4038d0:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  4038d7:	00 
  4038d8:	c5 f8 77             	vzeroupper 
  4038db:	e8 d0 fa ff ff       	callq  4033b0 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>
  4038e0:	eb bb                	jmp    40389d <_Z6windowid.cold+0x36b>
  4038e2:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  4038e9:	00 
  4038ea:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  4038f1:	00 
  4038f2:	48 39 c7             	cmp    %rax,%rdi
  4038f5:	74 65                	je     40395c <_Z6windowid.cold+0x42a>
  4038f7:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  4038fe:	00 
  4038ff:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403903:	c5 f8 77             	vzeroupper 
  403906:	e8 c5 f9 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40390b:	e9 78 fe ff ff       	jmpq   403788 <_Z6windowid.cold+0x256>
  403910:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  403917:	00 
  403918:	48 85 f6             	test   %rsi,%rsi
  40391b:	74 47                	je     403964 <_Z6windowid.cold+0x432>
  40391d:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  403924:	00 
  403925:	c5 f8 77             	vzeroupper 
  403928:	e8 73 f7 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40392d:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  403934:	00 
  403935:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40393c:	00 
  40393d:	48 39 c7             	cmp    %rax,%rdi
  403940:	0f 84 fe fd ff ff    	je     403744 <_Z6windowid.cold+0x212>
  403946:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  40394d:	00 
  40394e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403952:	e8 79 f9 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403957:	e9 e8 fd ff ff       	jmpq   403744 <_Z6windowid.cold+0x212>
  40395c:	c5 f8 77             	vzeroupper 
  40395f:	e9 24 fe ff ff       	jmpq   403788 <_Z6windowid.cold+0x256>
  403964:	c5 f8 77             	vzeroupper 
  403967:	eb c4                	jmp    40392d <_Z6windowid.cold+0x3fb>
  403969:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40396e:	c5 f8 77             	vzeroupper 
  403971:	e8 3a a5 00 00       	callq  40deb0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403976:	e9 bc fd ff ff       	jmpq   403737 <_Z6windowid.cold+0x205>
  40397b:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  403982:	00 
  403983:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40398a:	00 
  40398b:	48 39 c7             	cmp    %rax,%rdi
  40398e:	74 71                	je     403a01 <_Z6windowid.cold+0x4cf>
  403990:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  403997:	00 
  403998:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40399c:	c5 f8 77             	vzeroupper 
  40399f:	e8 2c f9 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4039a4:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  4039ab:	00 
  4039ac:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  4039b3:	00 
  4039b4:	48 39 c7             	cmp    %rax,%rdi
  4039b7:	0f 84 0b fc ff ff    	je     4035c8 <_Z6windowid.cold+0x96>
  4039bd:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  4039c4:	00 
  4039c5:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4039c9:	e8 02 f9 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4039ce:	e9 f5 fb ff ff       	jmpq   4035c8 <_Z6windowid.cold+0x96>
  4039d3:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  4039da:	00 
  4039db:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  4039e2:	00 
  4039e3:	48 39 c7             	cmp    %rax,%rdi
  4039e6:	74 1e                	je     403a06 <_Z6windowid.cold+0x4d4>
  4039e8:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  4039ef:	00 
  4039f0:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4039f4:	c5 f8 77             	vzeroupper 
  4039f7:	e8 d4 f8 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4039fc:	e9 36 fd ff ff       	jmpq   403737 <_Z6windowid.cold+0x205>
  403a01:	c5 f8 77             	vzeroupper 
  403a04:	eb 9e                	jmp    4039a4 <_Z6windowid.cold+0x472>
  403a06:	c5 f8 77             	vzeroupper 
  403a09:	e9 29 fd ff ff       	jmpq   403737 <_Z6windowid.cold+0x205>
  403a0e:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  403a15:	00 
  403a16:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  403a1d:	00 
  403a1e:	48 39 c7             	cmp    %rax,%rdi
  403a21:	0f 84 e5 02 00 00    	je     403d0c <_Z6windowid.cold+0x7da>
  403a27:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  403a2e:	00 
  403a2f:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403a33:	c5 f8 77             	vzeroupper 
  403a36:	e8 95 f8 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403a3b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  403a40:	e8 6b a4 00 00       	callq  40deb0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403a45:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  403a4c:	00 
  403a4d:	4c 39 ff             	cmp    %r15,%rdi
  403a50:	74 11                	je     403a63 <_Z6windowid.cold+0x531>
  403a52:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  403a59:	00 
  403a5a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403a5e:	e8 6d f8 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403a63:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  403a6a:	00 
  403a6b:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  403a72:	00 
  403a73:	48 39 c7             	cmp    %rax,%rdi
  403a76:	0f 84 28 ff ff ff    	je     4039a4 <_Z6windowid.cold+0x472>
  403a7c:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  403a83:	00 
  403a84:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403a88:	e8 43 f8 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403a8d:	e9 12 ff ff ff       	jmpq   4039a4 <_Z6windowid.cold+0x472>
  403a92:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  403a99:	00 
  403a9a:	48 85 f6             	test   %rsi,%rsi
  403a9d:	0f 84 8b 00 00 00    	je     403b2e <_Z6windowid.cold+0x5fc>
  403aa3:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  403aaa:	00 
  403aab:	c5 f8 77             	vzeroupper 
  403aae:	e8 ed f5 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  403ab3:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403aba:	00 
  403abb:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403ac2:	00 
  403ac3:	48 39 c7             	cmp    %rax,%rdi
  403ac6:	0f 84 79 ff ff ff    	je     403a45 <_Z6windowid.cold+0x513>
  403acc:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403ad3:	00 
  403ad4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403ad8:	e8 f3 f7 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403add:	e9 63 ff ff ff       	jmpq   403a45 <_Z6windowid.cold+0x513>
  403ae2:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  403ae9:	00 
  403aea:	c5 f8 77             	vzeroupper 
  403aed:	e8 be a3 00 00       	callq  40deb0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403af2:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403af9:	00 
  403afa:	e8 b1 a3 00 00       	callq  40deb0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403aff:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403b06:	00 
  403b07:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403b0e:	00 
  403b0f:	48 39 c7             	cmp    %rax,%rdi
  403b12:	0f 84 bd fa ff ff    	je     4035d5 <_Z6windowid.cold+0xa3>
  403b18:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403b1f:	00 
  403b20:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403b24:	e8 a7 f7 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403b29:	e9 a7 fa ff ff       	jmpq   4035d5 <_Z6windowid.cold+0xa3>
  403b2e:	c5 f8 77             	vzeroupper 
  403b31:	eb 80                	jmp    403ab3 <_Z6windowid.cold+0x581>
  403b33:	48 89 c3             	mov    %rax,%rbx
  403b36:	c5 f8 77             	vzeroupper 
  403b39:	e9 8a fa ff ff       	jmpq   4035c8 <_Z6windowid.cold+0x96>
  403b3e:	bf 10 00 00 00       	mov    $0x10,%edi
  403b43:	e8 18 f6 ff ff       	callq  403160 <__cxa_allocate_exception@plt>
  403b48:	48 89 c7             	mov    %rax,%rdi
  403b4b:	be 4d 00 41 00       	mov    $0x41004d,%esi
  403b50:	49 89 c4             	mov    %rax,%r12
  403b53:	e8 d8 f5 ff ff       	callq  403130 <_ZNSt13runtime_errorC1EPKc@plt>
  403b58:	ba e0 32 40 00       	mov    $0x4032e0,%edx
  403b5d:	be a0 2d 41 00       	mov    $0x412da0,%esi
  403b62:	4c 89 e7             	mov    %r12,%rdi
  403b65:	e8 e6 f8 ff ff       	callq  403450 <__cxa_throw@plt>
  403b6a:	48 89 c3             	mov    %rax,%rbx
  403b6d:	4c 89 e7             	mov    %r12,%rdi
  403b70:	c5 f8 77             	vzeroupper 
  403b73:	e8 98 f6 ff ff       	callq  403210 <__cxa_free_exception@plt>
  403b78:	e9 4b fa ff ff       	jmpq   4035c8 <_Z6windowid.cold+0x96>
  403b7d:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  403b84:	00 
  403b85:	c5 f8 77             	vzeroupper 
  403b88:	e8 63 f8 ff ff       	callq  4033f0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>
  403b8d:	4c 89 e8             	mov    %r13,%rax
  403b90:	48 8b 53 e8          	mov    -0x18(%rbx),%rdx
  403b94:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  403b9b:	00 
  403b9c:	4c 89 a4 14 80 01 00 	mov    %r12,0x180(%rsp,%rdx,1)
  403ba3:	00 
  403ba4:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  403bab:	00 00 00 00 00 
  403bb0:	48 89 c3             	mov    %rax,%rbx
  403bb3:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  403bba:	00 
  403bbb:	48 c7 84 24 80 02 00 	movq   $0x412b90,0x280(%rsp)
  403bc2:	00 90 2b 41 00 
  403bc7:	e8 34 f5 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  403bcc:	e9 f7 f9 ff ff       	jmpq   4035c8 <_Z6windowid.cold+0x96>
  403bd1:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403bd8:	00 
  403bd9:	c5 f8 77             	vzeroupper 
  403bdc:	e8 af f4 ff ff       	callq  403090 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>
  403be1:	e9 e2 f9 ff ff       	jmpq   4035c8 <_Z6windowid.cold+0x96>
  403be6:	c5 f8 77             	vzeroupper 
  403be9:	e8 52 f5 ff ff       	callq  403140 <__cxa_begin_catch@plt>
  403bee:	e8 2d f8 ff ff       	callq  403420 <__cxa_end_catch@plt>
  403bf3:	e9 2e 94 00 00       	jmpq   40d026 <_Z6windowid+0x1a86>
  403bf8:	c5 f8 77             	vzeroupper 
  403bfb:	e8 40 f5 ff ff       	callq  403140 <__cxa_begin_catch@plt>
  403c00:	e8 1b f8 ff ff       	callq  403420 <__cxa_end_catch@plt>
  403c05:	e9 82 83 00 00       	jmpq   40bf8c <_Z6windowid+0x9ec>
  403c0a:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  403c11:	00 
  403c12:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  403c19:	00 
  403c1a:	48 39 c7             	cmp    %rax,%rdi
  403c1d:	74 69                	je     403c88 <_Z6windowid.cold+0x756>
  403c1f:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  403c26:	00 
  403c27:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403c2b:	c5 f8 77             	vzeroupper 
  403c2e:	e8 9d f6 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403c33:	e9 ba fe ff ff       	jmpq   403af2 <_Z6windowid.cold+0x5c0>
  403c38:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  403c3f:	00 
  403c40:	48 85 f6             	test   %rsi,%rsi
  403c43:	0f 84 cb 00 00 00    	je     403d14 <_Z6windowid.cold+0x7e2>
  403c49:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  403c50:	00 
  403c51:	c5 f8 77             	vzeroupper 
  403c54:	e8 47 f4 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  403c59:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  403c60:	00 
  403c61:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  403c68:	00 
  403c69:	48 39 c7             	cmp    %rax,%rdi
  403c6c:	0f 84 8d fe ff ff    	je     403aff <_Z6windowid.cold+0x5cd>
  403c72:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  403c79:	00 
  403c7a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403c7e:	e8 4d f6 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403c83:	e9 77 fe ff ff       	jmpq   403aff <_Z6windowid.cold+0x5cd>
  403c88:	c5 f8 77             	vzeroupper 
  403c8b:	e9 62 fe ff ff       	jmpq   403af2 <_Z6windowid.cold+0x5c0>
  403c90:	bf 10 00 00 00       	mov    $0x10,%edi
  403c95:	e8 c6 f4 ff ff       	callq  403160 <__cxa_allocate_exception@plt>
  403c9a:	48 89 c7             	mov    %rax,%rdi
  403c9d:	be 70 00 41 00       	mov    $0x410070,%esi
  403ca2:	49 89 c4             	mov    %rax,%r12
  403ca5:	e8 86 f4 ff ff       	callq  403130 <_ZNSt13runtime_errorC1EPKc@plt>
  403caa:	ba e0 32 40 00       	mov    $0x4032e0,%edx
  403caf:	be a0 2d 41 00       	mov    $0x412da0,%esi
  403cb4:	4c 89 e7             	mov    %r12,%rdi
  403cb7:	e8 94 f7 ff ff       	callq  403450 <__cxa_throw@plt>
  403cbc:	e9 a9 fe ff ff       	jmpq   403b6a <_Z6windowid.cold+0x638>
  403cc1:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403cc8:	00 
  403cc9:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403cd0:	00 
  403cd1:	48 39 c7             	cmp    %rax,%rdi
  403cd4:	74 2e                	je     403d04 <_Z6windowid.cold+0x7d2>
  403cd6:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403cdd:	00 
  403cde:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403ce2:	c5 f8 77             	vzeroupper 
  403ce5:	e8 e6 f5 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403cea:	e9 e6 f8 ff ff       	jmpq   4035d5 <_Z6windowid.cold+0xa3>
  403cef:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403cf6:	00 
  403cf7:	c5 f8 77             	vzeroupper 
  403cfa:	e8 b1 a1 00 00       	callq  40deb0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403cff:	e9 37 fd ff ff       	jmpq   403a3b <_Z6windowid.cold+0x509>
  403d04:	c5 f8 77             	vzeroupper 
  403d07:	e9 c9 f8 ff ff       	jmpq   4035d5 <_Z6windowid.cold+0xa3>
  403d0c:	c5 f8 77             	vzeroupper 
  403d0f:	e9 27 fd ff ff       	jmpq   403a3b <_Z6windowid.cold+0x509>
  403d14:	c5 f8 77             	vzeroupper 
  403d17:	e9 3d ff ff ff       	jmpq   403c59 <_Z6windowid.cold+0x727>

0000000000403d1c <main.cold>:
  403d1c:	48 8b bd f0 f4 ff ff 	mov    -0xb10(%rbp),%rdi
  403d23:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  403d2a:	48 39 c7             	cmp    %rax,%rdi
  403d2d:	0f 85 56 03 00 00    	jne    404089 <main.cold+0x36d>
  403d33:	c5 f8 77             	vzeroupper 
  403d36:	45 84 e4             	test   %r12b,%r12b
  403d39:	74 23                	je     403d5e <main.cold+0x42>
  403d3b:	48 8b bd a0 f4 ff ff 	mov    -0xb60(%rbp),%rdi
  403d42:	48 8d 85 b0 f4 ff ff 	lea    -0xb50(%rbp),%rax
  403d49:	48 39 c7             	cmp    %rax,%rdi
  403d4c:	74 10                	je     403d5e <main.cold+0x42>
  403d4e:	48 8b 85 b0 f4 ff ff 	mov    -0xb50(%rbp),%rax
  403d55:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d59:	e8 72 f5 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403d5e:	84 db                	test   %bl,%bl
  403d60:	74 23                	je     403d85 <main.cold+0x69>
  403d62:	48 8b bd 60 f4 ff ff 	mov    -0xba0(%rbp),%rdi
  403d69:	48 8d 85 70 f4 ff ff 	lea    -0xb90(%rbp),%rax
  403d70:	48 39 c7             	cmp    %rax,%rdi
  403d73:	74 10                	je     403d85 <main.cold+0x69>
  403d75:	48 8b 85 70 f4 ff ff 	mov    -0xb90(%rbp),%rax
  403d7c:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d80:	e8 4b f5 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403d85:	4c 89 eb             	mov    %r13,%rbx
  403d88:	4d 89 f4             	mov    %r14,%r12
  403d8b:	48 8b bd 20 f4 ff ff 	mov    -0xbe0(%rbp),%rdi
  403d92:	48 8d 85 30 f4 ff ff 	lea    -0xbd0(%rbp),%rax
  403d99:	48 39 c7             	cmp    %rax,%rdi
  403d9c:	74 10                	je     403dae <main.cold+0x92>
  403d9e:	48 8b 85 30 f4 ff ff 	mov    -0xbd0(%rbp),%rax
  403da5:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403da9:	e8 22 f5 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403dae:	48 8b bd 00 f4 ff ff 	mov    -0xc00(%rbp),%rdi
  403db5:	48 8d 85 10 f4 ff ff 	lea    -0xbf0(%rbp),%rax
  403dbc:	48 39 c7             	cmp    %rax,%rdi
  403dbf:	0f 85 c2 00 00 00    	jne    403e87 <main.cold+0x16b>
  403dc5:	48 8d bd c0 f3 ff ff 	lea    -0xc40(%rbp),%rdi
  403dcc:	e8 8f a3 00 00       	callq  40e160 <_ZN11PerfControlD1Ev>
  403dd1:	48 8b bd a0 f3 ff ff 	mov    -0xc60(%rbp),%rdi
  403dd8:	48 8b b5 b0 f3 ff ff 	mov    -0xc50(%rbp),%rsi
  403ddf:	48 29 fe             	sub    %rdi,%rsi
  403de2:	48 85 ff             	test   %rdi,%rdi
  403de5:	74 05                	je     403dec <main.cold+0xd0>
  403de7:	e8 e4 f4 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403dec:	48 8b bd 80 f3 ff ff 	mov    -0xc80(%rbp),%rdi
  403df3:	48 8b b5 90 f3 ff ff 	mov    -0xc70(%rbp),%rsi
  403dfa:	48 29 fe             	sub    %rdi,%rsi
  403dfd:	48 85 ff             	test   %rdi,%rdi
  403e00:	74 05                	je     403e07 <main.cold+0xeb>
  403e02:	e8 c9 f4 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403e07:	4d 89 e6             	mov    %r12,%r14
  403e0a:	4c 89 ff             	mov    %r15,%rdi
  403e0d:	e8 ce a9 00 00       	callq  40e7e0 <_ZN8CountersD1Ev>
  403e12:	48 8b bd e0 f3 ff ff 	mov    -0xc20(%rbp),%rdi
  403e19:	48 8d 85 f0 f3 ff ff 	lea    -0xc10(%rbp),%rax
  403e20:	48 39 c7             	cmp    %rax,%rdi
  403e23:	74 10                	je     403e35 <main.cold+0x119>
  403e25:	48 8b 85 f0 f3 ff ff 	mov    -0xc10(%rbp),%rax
  403e2c:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e30:	e8 9b f4 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403e35:	48 89 df             	mov    %rbx,%rdi
  403e38:	49 ff ce             	dec    %r14
  403e3b:	0f 85 a0 01 00 00    	jne    403fe1 <main.cold+0x2c5>
  403e41:	e8 fa f2 ff ff       	callq  403140 <__cxa_begin_catch@plt>
  403e46:	48 89 c7             	mov    %rax,%rdi
  403e49:	48 8b 00             	mov    (%rax),%rax
  403e4c:	ff 50 10             	callq  *0x10(%rax)
  403e4f:	48 89 c6             	mov    %rax,%rsi
  403e52:	bf a0 33 41 00       	mov    $0x4133a0,%edi
  403e57:	e8 54 f4 ff ff       	callq  4032b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  403e5c:	48 89 c7             	mov    %rax,%rdi
  403e5f:	ba 01 00 00 00       	mov    $0x1,%edx
  403e64:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  403e6b:	c6 85 00 f6 ff ff 0a 	movb   $0xa,-0xa00(%rbp)
  403e72:	e8 89 f4 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  403e77:	e8 a4 f5 ff ff       	callq  403420 <__cxa_end_catch@plt>
  403e7c:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  403e82:	e9 40 07 00 00       	jmpq   4045c7 <main+0x4e7>
  403e87:	48 8b 85 10 f4 ff ff 	mov    -0xbf0(%rbp),%rax
  403e8e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e92:	e8 39 f4 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403e97:	e9 29 ff ff ff       	jmpq   403dc5 <main.cold+0xa9>
  403e9c:	48 8b bd 40 f4 ff ff 	mov    -0xbc0(%rbp),%rdi
  403ea3:	48 8d 85 50 f4 ff ff 	lea    -0xbb0(%rbp),%rax
  403eaa:	48 39 c7             	cmp    %rax,%rdi
  403ead:	0f 84 90 00 00 00    	je     403f43 <main.cold+0x227>
  403eb3:	48 8b 85 50 f4 ff ff 	mov    -0xbb0(%rbp),%rax
  403eba:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403ebe:	c5 f8 77             	vzeroupper 
  403ec1:	e8 0a f4 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403ec6:	e9 c0 fe ff ff       	jmpq   403d8b <main.cold+0x6f>
  403ecb:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  403ed2:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  403ed9:	48 39 c7             	cmp    %rax,%rdi
  403edc:	74 60                	je     403f3e <main.cold+0x222>
  403ede:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  403ee5:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403ee9:	c5 f8 77             	vzeroupper 
  403eec:	e8 df f3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403ef1:	48 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%rdi
  403ef8:	4c 39 ef             	cmp    %r13,%rdi
  403efb:	0f 84 11 ff ff ff    	je     403e12 <main.cold+0xf6>
  403f01:	48 8b 85 60 f5 ff ff 	mov    -0xaa0(%rbp),%rax
  403f08:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403f0c:	e8 bf f3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403f11:	e9 fc fe ff ff       	jmpq   403e12 <main.cold+0xf6>
  403f16:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  403f1d:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  403f24:	48 39 c7             	cmp    %rax,%rdi
  403f27:	74 22                	je     403f4b <main.cold+0x22f>
  403f29:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  403f30:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403f34:	c5 f8 77             	vzeroupper 
  403f37:	e8 94 f3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403f3c:	eb b3                	jmp    403ef1 <main.cold+0x1d5>
  403f3e:	c5 f8 77             	vzeroupper 
  403f41:	eb ae                	jmp    403ef1 <main.cold+0x1d5>
  403f43:	c5 f8 77             	vzeroupper 
  403f46:	e9 40 fe ff ff       	jmpq   403d8b <main.cold+0x6f>
  403f4b:	c5 f8 77             	vzeroupper 
  403f4e:	eb a1                	jmp    403ef1 <main.cold+0x1d5>
  403f50:	48 89 c3             	mov    %rax,%rbx
  403f53:	49 89 d4             	mov    %rdx,%r12
  403f56:	c5 f8 77             	vzeroupper 
  403f59:	e9 73 fe ff ff       	jmpq   403dd1 <main.cold+0xb5>
  403f5e:	84 db                	test   %bl,%bl
  403f60:	74 35                	je     403f97 <main.cold+0x27b>
  403f62:	48 8b bd 80 f4 ff ff 	mov    -0xb80(%rbp),%rdi
  403f69:	48 8d 85 90 f4 ff ff 	lea    -0xb70(%rbp),%rax
  403f70:	48 39 c7             	cmp    %rax,%rdi
  403f73:	74 71                	je     403fe6 <main.cold+0x2ca>
  403f75:	48 8b 85 90 f4 ff ff 	mov    -0xb70(%rbp),%rax
  403f7c:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403f80:	c5 f8 77             	vzeroupper 
  403f83:	e8 48 f3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403f88:	e9 d1 fd ff ff       	jmpq   403d5e <main.cold+0x42>
  403f8d:	31 db                	xor    %ebx,%ebx
  403f8f:	c5 f8 77             	vzeroupper 
  403f92:	e9 c7 fd ff ff       	jmpq   403d5e <main.cold+0x42>
  403f97:	c5 f8 77             	vzeroupper 
  403f9a:	e9 e6 fd ff ff       	jmpq   403d85 <main.cold+0x69>
  403f9f:	bf 10 00 00 00       	mov    $0x10,%edi
  403fa4:	e8 b7 f1 ff ff       	callq  403160 <__cxa_allocate_exception@plt>
  403fa9:	48 89 c7             	mov    %rax,%rdi
  403fac:	be 80 04 41 00       	mov    $0x410480,%esi
  403fb1:	49 89 c5             	mov    %rax,%r13
  403fb4:	e8 77 f1 ff ff       	callq  403130 <_ZNSt13runtime_errorC1EPKc@plt>
  403fb9:	ba e0 32 40 00       	mov    $0x4032e0,%edx
  403fbe:	be a0 2d 41 00       	mov    $0x412da0,%esi
  403fc3:	4c 89 ef             	mov    %r13,%rdi
  403fc6:	e8 85 f4 ff ff       	callq  403450 <__cxa_throw@plt>
  403fcb:	48 89 c3             	mov    %rax,%rbx
  403fce:	49 89 d4             	mov    %rdx,%r12
  403fd1:	4c 89 ef             	mov    %r13,%rdi
  403fd4:	c5 f8 77             	vzeroupper 
  403fd7:	e8 34 f2 ff ff       	callq  403210 <__cxa_free_exception@plt>
  403fdc:	e9 f0 fd ff ff       	jmpq   403dd1 <main.cold+0xb5>
  403fe1:	e8 8a f4 ff ff       	callq  403470 <_Unwind_Resume@plt>
  403fe6:	c5 f8 77             	vzeroupper 
  403fe9:	e9 70 fd ff ff       	jmpq   403d5e <main.cold+0x42>
  403fee:	49 89 c4             	mov    %rax,%r12
  403ff1:	c5 f8 77             	vzeroupper 
  403ff4:	e8 27 f4 ff ff       	callq  403420 <__cxa_end_catch@plt>
  403ff9:	4c 89 e7             	mov    %r12,%rdi
  403ffc:	e8 6f f4 ff ff       	callq  403470 <_Unwind_Resume@plt>
  404001:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  404006:	75 0a                	jne    404012 <main.cold+0x2f6>
  404008:	8b 85 f0 f2 ff ff    	mov    -0xd10(%rbp),%eax
  40400e:	41 89 04 24          	mov    %eax,(%r12)
  404012:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  404019:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404020:	48 39 c7             	cmp    %rax,%rdi
  404023:	74 54                	je     404079 <main.cold+0x35d>
  404025:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  40402c:	48 8d 70 01          	lea    0x1(%rax),%rsi
  404030:	c5 f8 77             	vzeroupper 
  404033:	e8 98 f2 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  404038:	e9 b4 fe ff ff       	jmpq   403ef1 <main.cold+0x1d5>
  40403d:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  404042:	75 0a                	jne    40404e <main.cold+0x332>
  404044:	8b 85 bc f2 ff ff    	mov    -0xd44(%rbp),%eax
  40404a:	41 89 04 24          	mov    %eax,(%r12)
  40404e:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  404055:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  40405c:	48 39 c7             	cmp    %rax,%rdi
  40405f:	74 20                	je     404081 <main.cold+0x365>
  404061:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  404068:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40406c:	c5 f8 77             	vzeroupper 
  40406f:	e8 5c f2 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  404074:	e9 78 fe ff ff       	jmpq   403ef1 <main.cold+0x1d5>
  404079:	c5 f8 77             	vzeroupper 
  40407c:	e9 70 fe ff ff       	jmpq   403ef1 <main.cold+0x1d5>
  404081:	c5 f8 77             	vzeroupper 
  404084:	e9 68 fe ff ff       	jmpq   403ef1 <main.cold+0x1d5>
  404089:	48 8b 85 00 f5 ff ff 	mov    -0xb00(%rbp),%rax
  404090:	48 8d 70 01          	lea    0x1(%rax),%rsi
  404094:	c5 f8 77             	vzeroupper 
  404097:	e8 34 f2 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40409c:	e9 95 fc ff ff       	jmpq   403d36 <main.cold+0x1a>
  4040a1:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  4040a8:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  4040af:	48 39 c7             	cmp    %rax,%rdi
  4040b2:	74 18                	je     4040cc <main.cold+0x3b0>
  4040b4:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  4040bb:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4040bf:	c5 f8 77             	vzeroupper 
  4040c2:	e8 09 f2 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4040c7:	e9 25 fe ff ff       	jmpq   403ef1 <main.cold+0x1d5>
  4040cc:	c5 f8 77             	vzeroupper 
  4040cf:	e9 1d fe ff ff       	jmpq   403ef1 <main.cold+0x1d5>
  4040d4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4040db:	00 00 00 
  4040de:	66 90                	xchg   %ax,%ax

00000000004040e0 <main>:
  4040e0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  4040e5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  4040e9:	41 ff 72 f8          	pushq  -0x8(%r10)
  4040ed:	55                   	push   %rbp
  4040ee:	48 89 e5             	mov    %rsp,%rbp
  4040f1:	41 57                	push   %r15
  4040f3:	41 56                	push   %r14
  4040f5:	41 55                	push   %r13
  4040f7:	41 54                	push   %r12
  4040f9:	41 52                	push   %r10
  4040fb:	53                   	push   %rbx
  4040fc:	89 fb                	mov    %edi,%ebx
  4040fe:	48 81 ec 60 0d 00 00 	sub    $0xd60,%rsp
  404105:	89 bd 00 f3 ff ff    	mov    %edi,-0xd00(%rbp)
  40410b:	48 89 b5 f8 f2 ff ff 	mov    %rsi,-0xd08(%rbp)
  404112:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  404119:	be a2 00 41 00       	mov    $0x4100a2,%esi
  40411e:	e8 dd 71 00 00       	callq  40b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404123:	c7 85 2c f3 ff ff 01 	movl   $0x1,-0xcd4(%rbp)
  40412a:	00 00 00 
  40412d:	83 fb 01             	cmp    $0x1,%ebx
  404130:	0f 8e 01 06 00 00    	jle    404737 <main+0x657>
  404136:	c5 fb 10 2d 72 c6 00 	vmovsd 0xc672(%rip),%xmm5        # 4107b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  40413d:	00 
  40413e:	48 b8 00 00 00 00 02 	movabs $0x200000000,%rax
  404145:	00 00 00 
  404148:	c6 85 e0 f2 ff ff 00 	movb   $0x0,-0xd20(%rbp)
  40414f:	c6 85 d0 f2 ff ff 00 	movb   $0x0,-0xd30(%rbp)
  404156:	c7 85 b4 f2 ff ff 00 	movl   $0x0,-0xd4c(%rbp)
  40415d:	00 00 00 
  404160:	c7 85 b8 f2 ff ff 05 	movl   $0x5,-0xd48(%rbp)
  404167:	00 00 00 
  40416a:	48 89 85 c8 f2 ff ff 	mov    %rax,-0xd38(%rbp)
  404171:	bb 01 00 00 00       	mov    $0x1,%ebx
  404176:	c5 fb 11 ad e8 f2 ff 	vmovsd %xmm5,-0xd18(%rbp)
  40417d:	ff 
  40417e:	c5 fb 11 ad c0 f2 ff 	vmovsd %xmm5,-0xd40(%rbp)
  404185:	ff 
  404186:	4c 8d bd 50 f5 ff ff 	lea    -0xab0(%rbp),%r15
  40418d:	4c 8d ad 60 f5 ff ff 	lea    -0xaa0(%rbp),%r13
  404194:	e9 a1 00 00 00       	jmpq   40423a <main+0x15a>
  404199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4041a0:	be 82 01 41 00       	mov    $0x410182,%esi
  4041a5:	4c 89 ff             	mov    %r15,%rdi
  4041a8:	e8 13 ef ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4041ad:	85 c0                	test   %eax,%eax
  4041af:	0f 84 6b 01 00 00    	je     404320 <main+0x240>
  4041b5:	ff c3                	inc    %ebx
  4041b7:	39 9d 00 f3 ff ff    	cmp    %ebx,-0xd00(%rbp)
  4041bd:	0f 8e f0 04 00 00    	jle    4046b3 <main+0x5d3>
  4041c3:	be 8e 01 41 00       	mov    $0x41018e,%esi
  4041c8:	4c 89 ff             	mov    %r15,%rdi
  4041cb:	e8 f0 ee ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4041d0:	85 c0                	test   %eax,%eax
  4041d2:	0f 85 58 01 00 00    	jne    404330 <main+0x250>
  4041d8:	48 8b b5 f0 f2 ff ff 	mov    -0xd10(%rbp),%rsi
  4041df:	48 8b 85 f8 f2 ff ff 	mov    -0xd08(%rbp),%rax
  4041e6:	4c 8b 64 30 08       	mov    0x8(%rax,%rsi,1),%r12
  4041eb:	4c 89 e7             	mov    %r12,%rdi
  4041ee:	e8 5d ef ff ff       	callq  403150 <strlen@plt>
  4041f3:	48 8b 95 e8 f3 ff ff 	mov    -0xc18(%rbp),%rdx
  4041fa:	49 89 c0             	mov    %rax,%r8
  4041fd:	4c 89 e1             	mov    %r12,%rcx
  404200:	31 f6                	xor    %esi,%esi
  404202:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  404209:	e8 d2 f1 ff ff       	callq  4033e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40420e:	66 90                	xchg   %ax,%ax
  404210:	48 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%rdi
  404217:	4c 39 ef             	cmp    %r13,%rdi
  40421a:	74 10                	je     40422c <main+0x14c>
  40421c:	48 8b 85 60 f5 ff ff 	mov    -0xaa0(%rbp),%rax
  404223:	48 8d 70 01          	lea    0x1(%rax),%rsi
  404227:	e8 a4 f0 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40422c:	ff c3                	inc    %ebx
  40422e:	39 9d 00 f3 ff ff    	cmp    %ebx,-0xd00(%rbp)
  404234:	0f 8e 3a 03 00 00    	jle    404574 <main+0x494>
  40423a:	48 63 c3             	movslq %ebx,%rax
  40423d:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
  404244:	00 
  404245:	48 89 8d f0 f2 ff ff 	mov    %rcx,-0xd10(%rbp)
  40424c:	48 8b 8d f8 f2 ff ff 	mov    -0xd08(%rbp),%rcx
  404253:	4c 89 ad 50 f5 ff ff 	mov    %r13,-0xab0(%rbp)
  40425a:	4c 8b 24 c1          	mov    (%rcx,%rax,8),%r12
  40425e:	4d 85 e4             	test   %r12,%r12
  404261:	0f 84 0c 25 00 00    	je     406773 <main+0x2693>
  404267:	4c 89 e7             	mov    %r12,%rdi
  40426a:	e8 e1 ee ff ff       	callq  403150 <strlen@plt>
  40426f:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  404276:	49 89 c6             	mov    %rax,%r14
  404279:	48 83 f8 0f          	cmp    $0xf,%rax
  40427d:	77 51                	ja     4042d0 <main+0x1f0>
  40427f:	48 83 f8 01          	cmp    $0x1,%rax
  404283:	75 3b                	jne    4042c0 <main+0x1e0>
  404285:	41 0f b6 14 24       	movzbl (%r12),%edx
  40428a:	88 95 60 f5 ff ff    	mov    %dl,-0xaa0(%rbp)
  404290:	4c 89 ea             	mov    %r13,%rdx
  404293:	48 89 85 58 f5 ff ff 	mov    %rax,-0xaa8(%rbp)
  40429a:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40429e:	be 75 01 41 00       	mov    $0x410175,%esi
  4042a3:	4c 89 ff             	mov    %r15,%rdi
  4042a6:	e8 15 ee ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4042ab:	85 c0                	test   %eax,%eax
  4042ad:	0f 85 ed fe ff ff    	jne    4041a0 <main+0xc0>
  4042b3:	c6 85 d0 f2 ff ff 01 	movb   $0x1,-0xd30(%rbp)
  4042ba:	e9 51 ff ff ff       	jmpq   404210 <main+0x130>
  4042bf:	90                   	nop
  4042c0:	48 85 c0             	test   %rax,%rax
  4042c3:	0f 85 b4 24 00 00    	jne    40677d <main+0x269d>
  4042c9:	4c 89 ea             	mov    %r13,%rdx
  4042cc:	eb c5                	jmp    404293 <main+0x1b3>
  4042ce:	66 90                	xchg   %ax,%ax
  4042d0:	31 d2                	xor    %edx,%edx
  4042d2:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  4042d9:	4c 89 ff             	mov    %r15,%rdi
  4042dc:	e8 9f f1 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4042e1:	48 89 85 50 f5 ff ff 	mov    %rax,-0xab0(%rbp)
  4042e8:	48 89 c7             	mov    %rax,%rdi
  4042eb:	48 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%rax
  4042f2:	48 89 85 60 f5 ff ff 	mov    %rax,-0xaa0(%rbp)
  4042f9:	4c 89 f2             	mov    %r14,%rdx
  4042fc:	4c 89 e6             	mov    %r12,%rsi
  4042ff:	e8 6c ef ff ff       	callq  403270 <memcpy@plt>
  404304:	48 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%rax
  40430b:	48 8b 95 50 f5 ff ff 	mov    -0xab0(%rbp),%rdx
  404312:	e9 7c ff ff ff       	jmpq   404293 <main+0x1b3>
  404317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40431e:	00 00 
  404320:	c6 85 e0 f2 ff ff 01 	movb   $0x1,-0xd20(%rbp)
  404327:	e9 e4 fe ff ff       	jmpq   404210 <main+0x130>
  40432c:	0f 1f 40 00          	nopl   0x0(%rax)
  404330:	be 95 01 41 00       	mov    $0x410195,%esi
  404335:	4c 89 ff             	mov    %r15,%rdi
  404338:	e8 83 ed ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40433d:	85 c0                	test   %eax,%eax
  40433f:	0f 85 13 01 00 00    	jne    404458 <main+0x378>
  404345:	48 8b 85 f8 f2 ff ff 	mov    -0xd08(%rbp),%rax
  40434c:	48 8b b5 f0 f2 ff ff 	mov    -0xd10(%rbp),%rsi
  404353:	4c 8b 74 30 08       	mov    0x8(%rax,%rsi,1),%r14
  404358:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  40435f:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  404366:	4d 85 f6             	test   %r14,%r14
  404369:	0f 84 fa 23 00 00    	je     406769 <main+0x2689>
  40436f:	4c 89 f7             	mov    %r14,%rdi
  404372:	e8 d9 ed ff ff       	callq  403150 <strlen@plt>
  404377:	48 89 85 f0 f4 ff ff 	mov    %rax,-0xb10(%rbp)
  40437e:	49 89 c4             	mov    %rax,%r12
  404381:	48 83 f8 0f          	cmp    $0xf,%rax
  404385:	0f 87 77 02 00 00    	ja     404602 <main+0x522>
  40438b:	48 83 f8 01          	cmp    $0x1,%rax
  40438f:	0f 85 4d 02 00 00    	jne    4045e2 <main+0x502>
  404395:	41 0f b6 06          	movzbl (%r14),%eax
  404399:	88 85 10 f6 ff ff    	mov    %al,-0x9f0(%rbp)
  40439f:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  4043a6:	48 89 85 f0 f2 ff ff 	mov    %rax,-0xd10(%rbp)
  4043ad:	48 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%rax
  4043b4:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  4043bb:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  4043c2:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4043c6:	e8 75 ec ff ff       	callq  403040 <__errno_location@plt>
  4043cb:	49 89 c4             	mov    %rax,%r12
  4043ce:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  4043d5:	8b 00                	mov    (%rax),%eax
  4043d7:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  4043de:	00 
  4043df:	48 8b b5 f0 f2 ff ff 	mov    -0xd10(%rbp),%rsi
  4043e6:	ba 0a 00 00 00       	mov    $0xa,%edx
  4043eb:	4c 89 f7             	mov    %r14,%rdi
  4043ee:	89 85 bc f2 ff ff    	mov    %eax,-0xd44(%rbp)
  4043f4:	e8 57 ef ff ff       	callq  403350 <strtoull@plt>
  4043f9:	48 89 85 c8 f2 ff ff 	mov    %rax,-0xd38(%rbp)
  404400:	4c 3b b5 f0 f4 ff ff 	cmp    -0xb10(%rbp),%r14
  404407:	0f 84 83 24 00 00    	je     406890 <main+0x27b0>
  40440d:	41 8b 04 24          	mov    (%r12),%eax
  404411:	83 f8 22             	cmp    $0x22,%eax
  404414:	0f 84 6c 24 00 00    	je     406886 <main+0x27a6>
  40441a:	85 c0                	test   %eax,%eax
  40441c:	75 0a                	jne    404428 <main+0x348>
  40441e:	8b 85 bc f2 ff ff    	mov    -0xd44(%rbp),%eax
  404424:	41 89 04 24          	mov    %eax,(%r12)
  404428:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  40442f:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404436:	48 39 c7             	cmp    %rax,%rdi
  404439:	0f 84 d1 fd ff ff    	je     404210 <main+0x130>
  40443f:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  404446:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40444a:	e8 81 ee ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40444f:	e9 bc fd ff ff       	jmpq   404210 <main+0x130>
  404454:	0f 1f 40 00          	nopl   0x0(%rax)
  404458:	be a4 01 41 00       	mov    $0x4101a4,%esi
  40445d:	4c 89 ff             	mov    %r15,%rdi
  404460:	e8 5b ec ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404465:	85 c0                	test   %eax,%eax
  404467:	0f 85 93 00 00 00    	jne    404500 <main+0x420>
  40446d:	48 8b 85 f8 f2 ff ff 	mov    -0xd08(%rbp),%rax
  404474:	48 8b b5 f0 f2 ff ff 	mov    -0xd10(%rbp),%rsi
  40447b:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404482:	48 8b 74 30 08       	mov    0x8(%rax,%rsi,1),%rsi
  404487:	e8 74 6e 00 00       	callq  40b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40448c:	e8 af eb ff ff       	callq  403040 <__errno_location@plt>
  404491:	49 89 c4             	mov    %rax,%r12
  404494:	8b 00                	mov    (%rax),%eax
  404496:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  40449d:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  4044a4:	00 
  4044a5:	89 85 f0 f2 ff ff    	mov    %eax,-0xd10(%rbp)
  4044ab:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  4044b2:	48 89 c6             	mov    %rax,%rsi
  4044b5:	4c 89 f7             	mov    %r14,%rdi
  4044b8:	e8 93 ed ff ff       	callq  403250 <strtod@plt>
  4044bd:	c5 fb 11 85 c0 f2 ff 	vmovsd %xmm0,-0xd40(%rbp)
  4044c4:	ff 
  4044c5:	4c 3b b5 f0 f4 ff ff 	cmp    -0xb10(%rbp),%r14
  4044cc:	0f 84 8d 22 00 00    	je     40675f <main+0x267f>
  4044d2:	41 8b 04 24          	mov    (%r12),%eax
  4044d6:	83 f8 22             	cmp    $0x22,%eax
  4044d9:	0f 84 76 22 00 00    	je     406755 <main+0x2675>
  4044df:	85 c0                	test   %eax,%eax
  4044e1:	0f 85 41 ff ff ff    	jne    404428 <main+0x348>
  4044e7:	8b 85 f0 f2 ff ff    	mov    -0xd10(%rbp),%eax
  4044ed:	41 89 04 24          	mov    %eax,(%r12)
  4044f1:	e9 32 ff ff ff       	jmpq   404428 <main+0x348>
  4044f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4044fd:	00 00 00 
  404500:	be b3 01 41 00       	mov    $0x4101b3,%esi
  404505:	4c 89 ff             	mov    %r15,%rdi
  404508:	e8 b3 eb ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40450d:	85 c0                	test   %eax,%eax
  40450f:	0f 85 34 01 00 00    	jne    404649 <main+0x569>
  404515:	48 8b 85 f8 f2 ff ff 	mov    -0xd08(%rbp),%rax
  40451c:	48 8b b5 f0 f2 ff ff 	mov    -0xd10(%rbp),%rsi
  404523:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  40452a:	48 8b 74 30 08       	mov    0x8(%rax,%rsi,1),%rsi
  40452f:	e8 cc 6d 00 00       	callq  40b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404534:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  40453b:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  404541:	31 c9                	xor    %ecx,%ecx
  404543:	be 36 00 41 00       	mov    $0x410036,%esi
  404548:	bf 70 33 40 00       	mov    $0x403370,%edi
  40454d:	e8 ae a3 00 00       	callq  40e900 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  404552:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  404559:	89 85 b8 f2 ff ff    	mov    %eax,-0xd48(%rbp)
  40455f:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404566:	48 39 c7             	cmp    %rax,%rdi
  404569:	0f 85 d0 fe ff ff    	jne    40443f <main+0x35f>
  40456f:	e9 9c fc ff ff       	jmpq   404210 <main+0x130>
  404574:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  404578:	c5 f9 2f 85 c0 f2 ff 	vcomisd -0xd40(%rbp),%xmm0
  40457f:	ff 
  404580:	73 1c                	jae    40459e <main+0x4be>
  404582:	83 bd b8 f2 ff ff 00 	cmpl   $0x0,-0xd48(%rbp)
  404589:	7e 13                	jle    40459e <main+0x4be>
  40458b:	8b 85 2c f3 ff ff    	mov    -0xcd4(%rbp),%eax
  404591:	ff c8                	dec    %eax
  404593:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  404598:	0f 86 e3 01 00 00    	jbe    404781 <main+0x6a1>
  40459e:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  4045a4:	48 8b bd e0 f3 ff ff 	mov    -0xc20(%rbp),%rdi
  4045ab:	48 8d 85 f0 f3 ff ff 	lea    -0xc10(%rbp),%rax
  4045b2:	48 39 c7             	cmp    %rax,%rdi
  4045b5:	74 10                	je     4045c7 <main+0x4e7>
  4045b7:	48 8b 85 f0 f3 ff ff 	mov    -0xc10(%rbp),%rax
  4045be:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4045c2:	e8 09 ed ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4045c7:	48 81 c4 60 0d 00 00 	add    $0xd60,%rsp
  4045ce:	5b                   	pop    %rbx
  4045cf:	41 5a                	pop    %r10
  4045d1:	44 89 e0             	mov    %r12d,%eax
  4045d4:	41 5c                	pop    %r12
  4045d6:	41 5d                	pop    %r13
  4045d8:	41 5e                	pop    %r14
  4045da:	41 5f                	pop    %r15
  4045dc:	5d                   	pop    %rbp
  4045dd:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  4045e1:	c3                   	retq   
  4045e2:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  4045e9:	48 89 85 f0 f2 ff ff 	mov    %rax,-0xd10(%rbp)
  4045f0:	4d 85 e4             	test   %r12,%r12
  4045f3:	0f 84 b4 fd ff ff    	je     4043ad <main+0x2cd>
  4045f9:	48 8d bd 10 f6 ff ff 	lea    -0x9f0(%rbp),%rdi
  404600:	eb 37                	jmp    404639 <main+0x559>
  404602:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  404609:	31 d2                	xor    %edx,%edx
  40460b:	48 89 c6             	mov    %rax,%rsi
  40460e:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404615:	48 89 85 f0 f2 ff ff 	mov    %rax,-0xd10(%rbp)
  40461c:	e8 5f ee ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  404621:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  404628:	48 89 c7             	mov    %rax,%rdi
  40462b:	48 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%rax
  404632:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  404639:	4c 89 e2             	mov    %r12,%rdx
  40463c:	4c 89 f6             	mov    %r14,%rsi
  40463f:	e8 2c ec ff ff       	callq  403270 <memcpy@plt>
  404644:	e9 64 fd ff ff       	jmpq   4043ad <main+0x2cd>
  404649:	be c1 01 41 00       	mov    $0x4101c1,%esi
  40464e:	4c 89 ff             	mov    %r15,%rdi
  404651:	e8 6a ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404656:	85 c0                	test   %eax,%eax
  404658:	74 7e                	je     4046d8 <main+0x5f8>
  40465a:	be c5 01 41 00       	mov    $0x4101c5,%esi
  40465f:	4c 89 ff             	mov    %r15,%rdi
  404662:	e8 59 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404667:	85 c0                	test   %eax,%eax
  404669:	75 48                	jne    4046b3 <main+0x5d3>
  40466b:	48 8b 85 f8 f2 ff ff 	mov    -0xd08(%rbp),%rax
  404672:	48 8b b5 f0 f2 ff ff 	mov    -0xd10(%rbp),%rsi
  404679:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404680:	48 8b 74 30 08       	mov    0x8(%rax,%rsi,1),%rsi
  404685:	e8 76 6c 00 00       	callq  40b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40468a:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  404691:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  404697:	31 c9                	xor    %ecx,%ecx
  404699:	be 36 00 41 00       	mov    $0x410036,%esi
  40469e:	bf 70 33 40 00       	mov    $0x403370,%edi
  4046a3:	e8 58 a2 00 00       	callq  40e900 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  4046a8:	89 85 b4 f2 ff ff    	mov    %eax,-0xd4c(%rbp)
  4046ae:	e9 75 fd ff ff       	jmpq   404428 <main+0x348>
  4046b3:	48 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%rdi
  4046ba:	4c 39 ef             	cmp    %r13,%rdi
  4046bd:	0f 84 db fe ff ff    	je     40459e <main+0x4be>
  4046c3:	48 8b 85 60 f5 ff ff 	mov    -0xaa0(%rbp),%rax
  4046ca:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4046ce:	e8 fd eb ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4046d3:	e9 c6 fe ff ff       	jmpq   40459e <main+0x4be>
  4046d8:	48 8b 85 f8 f2 ff ff 	mov    -0xd08(%rbp),%rax
  4046df:	48 8b b5 f0 f2 ff ff 	mov    -0xd10(%rbp),%rsi
  4046e6:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  4046ed:	48 8b 74 30 08       	mov    0x8(%rax,%rsi,1),%rsi
  4046f2:	e8 09 6c 00 00       	callq  40b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4046f7:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  4046fe:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  404704:	31 c9                	xor    %ecx,%ecx
  404706:	be 36 00 41 00       	mov    $0x410036,%esi
  40470b:	bf 70 33 40 00       	mov    $0x403370,%edi
  404710:	e8 eb a1 00 00       	callq  40e900 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  404715:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  40471c:	89 85 2c f3 ff ff    	mov    %eax,-0xcd4(%rbp)
  404722:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404729:	48 39 c7             	cmp    %rax,%rdi
  40472c:	0f 85 0d fd ff ff    	jne    40443f <main+0x35f>
  404732:	e9 d9 fa ff ff       	jmpq   404210 <main+0x130>
  404737:	b8 01 00 00 00       	mov    $0x1,%eax
  40473c:	48 c1 e0 21          	shl    $0x21,%rax
  404740:	c5 fb 10 3d 68 c0 00 	vmovsd 0xc068(%rip),%xmm7        # 4107b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  404747:	00 
  404748:	c7 85 b8 f2 ff ff 05 	movl   $0x5,-0xd48(%rbp)
  40474f:	00 00 00 
  404752:	48 89 85 c8 f2 ff ff 	mov    %rax,-0xd38(%rbp)
  404759:	c6 85 e0 f2 ff ff 00 	movb   $0x0,-0xd20(%rbp)
  404760:	c6 85 d0 f2 ff ff 00 	movb   $0x0,-0xd30(%rbp)
  404767:	c7 85 b4 f2 ff ff 00 	movl   $0x0,-0xd4c(%rbp)
  40476e:	00 00 00 
  404771:	c5 fb 11 bd e8 f2 ff 	vmovsd %xmm7,-0xd18(%rbp)
  404778:	ff 
  404779:	c5 fb 11 bd c0 f2 ff 	vmovsd %xmm7,-0xd40(%rbp)
  404780:	ff 
  404781:	be a2 00 41 00       	mov    $0x4100a2,%esi
  404786:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  40478d:	e8 2e e9 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404792:	85 c0                	test   %eax,%eax
  404794:	be bb 00 41 00       	mov    $0x4100bb,%esi
  404799:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  4047a0:	0f 94 85 1d f3 ff ff 	sete   -0xce3(%rbp)
  4047a7:	e8 14 e9 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047ac:	85 c0                	test   %eax,%eax
  4047ae:	be f4 00 41 00       	mov    $0x4100f4,%esi
  4047b3:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  4047ba:	0f 94 85 1e f3 ff ff 	sete   -0xce2(%rbp)
  4047c1:	e8 fa e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047c6:	85 c0                	test   %eax,%eax
  4047c8:	be ce 01 41 00       	mov    $0x4101ce,%esi
  4047cd:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  4047d4:	0f 94 85 1f f3 ff ff 	sete   -0xce1(%rbp)
  4047db:	e8 e0 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047e0:	85 c0                	test   %eax,%eax
  4047e2:	be e6 00 41 00       	mov    $0x4100e6,%esi
  4047e7:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  4047ee:	0f 94 85 20 f3 ff ff 	sete   -0xce0(%rbp)
  4047f5:	e8 c6 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047fa:	85 c0                	test   %eax,%eax
  4047fc:	be cb 00 41 00       	mov    $0x4100cb,%esi
  404801:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  404808:	0f 94 85 21 f3 ff ff 	sete   -0xcdf(%rbp)
  40480f:	e8 ac e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404814:	85 c0                	test   %eax,%eax
  404816:	be d7 00 41 00       	mov    $0x4100d7,%esi
  40481b:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  404822:	0f 94 85 22 f3 ff ff 	sete   -0xcde(%rbp)
  404829:	e8 92 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40482e:	85 c0                	test   %eax,%eax
  404830:	be 36 01 41 00       	mov    $0x410136,%esi
  404835:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  40483c:	0f 94 85 23 f3 ff ff 	sete   -0xcdd(%rbp)
  404843:	e8 78 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404848:	85 c0                	test   %eax,%eax
  40484a:	be 31 01 41 00       	mov    $0x410131,%esi
  40484f:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  404856:	0f 94 85 24 f3 ff ff 	sete   -0xcdc(%rbp)
  40485d:	e8 5e e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404862:	85 c0                	test   %eax,%eax
  404864:	be e1 01 41 00       	mov    $0x4101e1,%esi
  404869:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  404870:	0f 94 85 25 f3 ff ff 	sete   -0xcdb(%rbp)
  404877:	e8 44 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40487c:	85 c0                	test   %eax,%eax
  40487e:	be 3b 01 41 00       	mov    $0x41013b,%esi
  404883:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  40488a:	0f 94 85 26 f3 ff ff 	sete   -0xcda(%rbp)
  404891:	e8 2a e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404896:	85 c0                	test   %eax,%eax
  404898:	be d6 01 41 00       	mov    $0x4101d6,%esi
  40489d:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  4048a4:	0f 94 85 27 f3 ff ff 	sete   -0xcd9(%rbp)
  4048ab:	e8 10 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4048b0:	85 c0                	test   %eax,%eax
  4048b2:	be db 01 41 00       	mov    $0x4101db,%esi
  4048b7:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  4048be:	0f 94 85 28 f3 ff ff 	sete   -0xcd8(%rbp)
  4048c5:	e8 f6 e7 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4048ca:	85 c0                	test   %eax,%eax
  4048cc:	0f b6 95 1d f3 ff ff 	movzbl -0xce3(%rbp),%edx
  4048d3:	0f 94 c1             	sete   %cl
  4048d6:	88 8d 29 f3 ff ff    	mov    %cl,-0xcd7(%rbp)
  4048dc:	84 d2                	test   %dl,%dl
  4048de:	0f 85 9a 00 00 00    	jne    40497e <main+0x89e>
  4048e4:	80 bd 1e f3 ff ff 00 	cmpb   $0x0,-0xce2(%rbp)
  4048eb:	0f 85 8d 00 00 00    	jne    40497e <main+0x89e>
  4048f1:	80 bd 22 f3 ff ff 00 	cmpb   $0x0,-0xcde(%rbp)
  4048f8:	0f 85 80 00 00 00    	jne    40497e <main+0x89e>
  4048fe:	44 0f b6 ad 23 f3 ff 	movzbl -0xcdd(%rbp),%r13d
  404905:	ff 
  404906:	45 84 ed             	test   %r13b,%r13b
  404909:	75 73                	jne    40497e <main+0x89e>
  40490b:	0f b6 9d 1f f3 ff ff 	movzbl -0xce1(%rbp),%ebx
  404912:	88 9d bc f2 ff ff    	mov    %bl,-0xd44(%rbp)
  404918:	84 db                	test   %bl,%bl
  40491a:	0f 85 06 1e 00 00    	jne    406726 <main+0x2646>
  404920:	80 bd 20 f3 ff ff 00 	cmpb   $0x0,-0xce0(%rbp)
  404927:	75 3e                	jne    404967 <main+0x887>
  404929:	80 bd 21 f3 ff ff 00 	cmpb   $0x0,-0xcdf(%rbp)
  404930:	75 35                	jne    404967 <main+0x887>
  404932:	80 bd 24 f3 ff ff 00 	cmpb   $0x0,-0xcdc(%rbp)
  404939:	75 2c                	jne    404967 <main+0x887>
  40493b:	80 bd 25 f3 ff ff 00 	cmpb   $0x0,-0xcdb(%rbp)
  404942:	75 23                	jne    404967 <main+0x887>
  404944:	80 bd 26 f3 ff ff 00 	cmpb   $0x0,-0xcda(%rbp)
  40494b:	75 1a                	jne    404967 <main+0x887>
  40494d:	80 bd 27 f3 ff ff 00 	cmpb   $0x0,-0xcd9(%rbp)
  404954:	75 11                	jne    404967 <main+0x887>
  404956:	80 bd 28 f3 ff ff 00 	cmpb   $0x0,-0xcd8(%rbp)
  40495d:	75 08                	jne    404967 <main+0x887>
  40495f:	84 c9                	test   %cl,%cl
  404961:	0f 84 37 fc ff ff    	je     40459e <main+0x4be>
  404967:	83 bd b4 f2 ff ff 00 	cmpl   $0x0,-0xd4c(%rbp)
  40496e:	0f 85 1b 1e 00 00    	jne    40678f <main+0x26af>
  404974:	45 31 ed             	xor    %r13d,%r13d
  404977:	b8 0c 00 00 00       	mov    $0xc,%eax
  40497c:	eb 38                	jmp    4049b6 <main+0x8d6>
  40497e:	0a 95 1e f3 ff ff    	or     -0xce2(%rbp),%dl
  404984:	88 95 bc f2 ff ff    	mov    %dl,-0xd44(%rbp)
  40498a:	0f b6 95 22 f3 ff ff 	movzbl -0xcde(%rbp),%edx
  404991:	0a 95 23 f3 ff ff    	or     -0xcdd(%rbp),%dl
  404997:	83 bd b4 f2 ff ff 00 	cmpl   $0x0,-0xd4c(%rbp)
  40499e:	41 89 d5             	mov    %edx,%r13d
  4049a1:	0f 85 e6 01 00 00    	jne    404b8d <main+0xaad>
  4049a7:	80 bd 1f f3 ff ff 01 	cmpb   $0x1,-0xce1(%rbp)
  4049ae:	19 c0                	sbb    %eax,%eax
  4049b0:	83 e0 04             	and    $0x4,%eax
  4049b3:	83 c0 08             	add    $0x8,%eax
  4049b6:	89 85 30 f3 ff ff    	mov    %eax,-0xcd0(%rbp)
  4049bc:	48 8d 85 34 f3 ff ff 	lea    -0xccc(%rbp),%rax
  4049c3:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  4049ca:	31 c9                	xor    %ecx,%ecx
  4049cc:	31 d2                	xor    %edx,%edx
  4049ce:	bf 40 6c 40 00       	mov    $0x406c40,%edi
  4049d3:	c7 85 34 f3 ff ff 00 	movl   $0x0,-0xccc(%rbp)
  4049da:	00 00 00 
  4049dd:	c6 85 2a f3 ff ff 01 	movb   $0x1,-0xcd6(%rbp)
  4049e4:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  4049eb:	4c 8d bd 50 f5 ff ff 	lea    -0xab0(%rbp),%r15
  4049f2:	e8 c9 e9 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  4049f7:	8b b5 34 f3 ff ff    	mov    -0xccc(%rbp),%esi
  4049fd:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  404a01:	4c 89 ff             	mov    %r15,%rdi
  404a04:	48 c7 85 d0 f5 ff ff 	movq   $0x0,-0xa30(%rbp)
  404a0b:	00 00 00 00 
  404a0f:	48 c7 85 d8 f5 ff ff 	movq   $0x0,-0xa28(%rbp)
  404a16:	00 00 00 00 
  404a1a:	c6 85 e0 f5 ff ff 00 	movb   $0x0,-0xa20(%rbp)
  404a21:	c5 fd 7f 85 50 f5 ff 	vmovdqa %ymm0,-0xab0(%rbp)
  404a28:	ff 
  404a29:	c5 fd 7f 85 70 f5 ff 	vmovdqa %ymm0,-0xa90(%rbp)
  404a30:	ff 
  404a31:	c5 fd 7f 85 90 f5 ff 	vmovdqa %ymm0,-0xa70(%rbp)
  404a38:	ff 
  404a39:	c5 fd 7f 85 b0 f5 ff 	vmovdqa %ymm0,-0xa50(%rbp)
  404a40:	ff 
  404a41:	c5 f8 77             	vzeroupper 
  404a44:	e8 47 97 00 00       	callq  40e190 <_ZN8Counters4openEi>
  404a49:	80 bd bc f2 ff ff 00 	cmpb   $0x0,-0xd44(%rbp)
  404a50:	48 c7 85 38 f3 ff ff 	movq   $0x0,-0xcc8(%rbp)
  404a57:	00 00 00 00 
  404a5b:	48 c7 85 40 f3 ff ff 	movq   $0x0,-0xcc0(%rbp)
  404a62:	00 00 00 00 
  404a66:	48 c7 85 48 f3 ff ff 	movq   $0x0,-0xcb8(%rbp)
  404a6d:	00 00 00 00 
  404a71:	48 c7 85 50 f3 ff ff 	movq   $0x0,-0xcb0(%rbp)
  404a78:	00 00 00 00 
  404a7c:	48 c7 85 58 f3 ff ff 	movq   $0x0,-0xca8(%rbp)
  404a83:	00 00 00 00 
  404a87:	48 c7 85 80 f3 ff ff 	movq   $0x0,-0xc80(%rbp)
  404a8e:	00 00 00 00 
  404a92:	48 c7 85 88 f3 ff ff 	movq   $0x0,-0xc78(%rbp)
  404a99:	00 00 00 00 
  404a9d:	48 c7 85 90 f3 ff ff 	movq   $0x0,-0xc70(%rbp)
  404aa4:	00 00 00 00 
  404aa8:	48 c7 85 a0 f3 ff ff 	movq   $0x0,-0xc60(%rbp)
  404aaf:	00 00 00 00 
  404ab3:	48 c7 85 a8 f3 ff ff 	movq   $0x0,-0xc58(%rbp)
  404aba:	00 00 00 00 
  404abe:	48 c7 85 b0 f3 ff ff 	movq   $0x0,-0xc50(%rbp)
  404ac5:	00 00 00 00 
  404ac9:	48 c7 85 60 f3 ff ff 	movq   $0x0,-0xca0(%rbp)
  404ad0:	00 00 00 00 
  404ad4:	0f b6 85 1f f3 ff ff 	movzbl -0xce1(%rbp),%eax
  404adb:	0f 85 0a 01 00 00    	jne    404beb <main+0xb0b>
  404ae1:	45 84 ed             	test   %r13b,%r13b
  404ae4:	0f 85 07 0e 00 00    	jne    4058f1 <main+0x1811>
  404aea:	84 c0                	test   %al,%al
  404aec:	0f 84 03 02 00 00    	je     404cf5 <main+0xc15>
  404af2:	8b 85 30 f3 ff ff    	mov    -0xcd0(%rbp),%eax
  404af8:	c1 e0 03             	shl    $0x3,%eax
  404afb:	48 63 f0             	movslq %eax,%rsi
  404afe:	0f 89 6a 1a 00 00    	jns    40656e <main+0x248e>
  404b04:	48 f7 de             	neg    %rsi
  404b07:	31 d2                	xor    %edx,%edx
  404b09:	f3 48 0f bc d6       	tzcnt  %rsi,%rdx
  404b0e:	b9 06 00 00 00       	mov    $0x6,%ecx
  404b13:	39 ca                	cmp    %ecx,%edx
  404b15:	0f 4e ca             	cmovle %edx,%ecx
  404b18:	c4 e2 eb f7 c6       	shrx   %rdx,%rsi,%rax
  404b1d:	ba 01 00 00 00       	mov    $0x1,%edx
  404b22:	eb 0c                	jmp    404b30 <main+0xa50>
  404b24:	31 ff                	xor    %edi,%edi
  404b26:	f3 48 0f bc f8       	tzcnt  %rax,%rdi
  404b2b:	c4 e2 c3 f7 c0       	shrx   %rdi,%rax,%rax
  404b30:	48 39 c2             	cmp    %rax,%rdx
  404b33:	76 02                	jbe    404b37 <main+0xa57>
  404b35:	48 92                	xchg   %rax,%rdx
  404b37:	48 29 d0             	sub    %rdx,%rax
  404b3a:	75 e8                	jne    404b24 <main+0xa44>
  404b3c:	c4 e2 f1 f7 ca       	shlx   %rcx,%rdx,%rcx
  404b41:	b8 40 00 00 00       	mov    $0x40,%eax
  404b46:	31 d2                	xor    %edx,%edx
  404b48:	48 f7 f1             	div    %rcx
  404b4b:	48 0f af c6          	imul   %rsi,%rax
  404b4f:	80 bd bc f2 ff ff 00 	cmpb   $0x0,-0xd44(%rbp)
  404b56:	48 89 c1             	mov    %rax,%rcx
  404b59:	0f 85 99 00 00 00    	jne    404bf8 <main+0xb18>
  404b5f:	48 8b 85 c8 f2 ff ff 	mov    -0xd38(%rbp),%rax
  404b66:	31 d2                	xor    %edx,%edx
  404b68:	48 c1 e8 04          	shr    $0x4,%rax
  404b6c:	48 f7 f1             	div    %rcx
  404b6f:	48 0f af c1          	imul   %rcx,%rax
  404b73:	48 89 85 38 f3 ff ff 	mov    %rax,-0xcc8(%rbp)
  404b7a:	48 85 c0             	test   %rax,%rax
  404b7d:	0f 84 ff 19 00 00    	je     406582 <main+0x24a2>
  404b83:	ba 02 00 00 00       	mov    $0x2,%edx
  404b88:	e9 9a 00 00 00       	jmpq   404c27 <main+0xb47>
  404b8d:	8b 9d b4 f2 ff ff    	mov    -0xd4c(%rbp),%ebx
  404b93:	89 9d 30 f3 ff ff    	mov    %ebx,-0xcd0(%rbp)
  404b99:	85 c0                	test   %eax,%eax
  404b9b:	75 1f                	jne    404bbc <main+0xadc>
  404b9d:	8b 9d b4 f2 ff ff    	mov    -0xd4c(%rbp),%ebx
  404ba3:	83 fb 18             	cmp    $0x18,%ebx
  404ba6:	77 14                	ja     404bbc <main+0xadc>
  404ba8:	48 c7 c0 bf ef ff fe 	mov    $0xfffffffffeffefbf,%rax
  404baf:	c4 e2 e2 f7 c0       	sarx   %rbx,%rax,%rax
  404bb4:	a8 01                	test   $0x1,%al
  404bb6:	0f 84 00 fe ff ff    	je     4049bc <main+0x8dc>
  404bbc:	80 bd 1f f3 ff ff 00 	cmpb   $0x0,-0xce1(%rbp)
  404bc3:	0f 84 d5 f9 ff ff    	je     40459e <main+0x4be>
  404bc9:	8b 9d b4 f2 ff ff    	mov    -0xd4c(%rbp),%ebx
  404bcf:	89 d8                	mov    %ebx,%eax
  404bd1:	83 e0 fb             	and    $0xfffffffb,%eax
  404bd4:	83 f8 08             	cmp    $0x8,%eax
  404bd7:	0f 84 df fd ff ff    	je     4049bc <main+0x8dc>
  404bdd:	83 fb 10             	cmp    $0x10,%ebx
  404be0:	0f 84 d6 fd ff ff    	je     4049bc <main+0x8dc>
  404be6:	e9 b3 f9 ff ff       	jmpq   40459e <main+0x4be>
  404beb:	b9 40 00 00 00       	mov    $0x40,%ecx
  404bf0:	84 c0                	test   %al,%al
  404bf2:	0f 85 fa fe ff ff    	jne    404af2 <main+0xa12>
  404bf8:	48 8b 85 c8 f2 ff ff 	mov    -0xd38(%rbp),%rax
  404bff:	be 18 00 00 00       	mov    $0x18,%esi
  404c04:	31 d2                	xor    %edx,%edx
  404c06:	48 f7 f6             	div    %rsi
  404c09:	31 d2                	xor    %edx,%edx
  404c0b:	48 f7 f1             	div    %rcx
  404c0e:	48 0f af c1          	imul   %rcx,%rax
  404c12:	48 89 85 38 f3 ff ff 	mov    %rax,-0xcc8(%rbp)
  404c19:	48 85 c0             	test   %rax,%rax
  404c1c:	0f 84 60 19 00 00    	je     406582 <main+0x24a2>
  404c22:	ba 03 00 00 00       	mov    $0x3,%edx
  404c27:	48 0f af d0          	imul   %rax,%rdx
  404c2b:	44 0f b6 a5 e0 f2 ff 	movzbl -0xd20(%rbp),%r12d
  404c32:	ff 
  404c33:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  404c3a:	00 
  404c3b:	48 8d 1c d5 00 00 00 	lea    0x0(,%rdx,8),%rbx
  404c42:	00 
  404c43:	44 89 e6             	mov    %r12d,%esi
  404c46:	48 89 9d c8 f2 ff ff 	mov    %rbx,-0xd38(%rbp)
  404c4d:	e8 fe 67 00 00       	callq  40b450 <_Z11alloc_bytesmb>
  404c52:	48 89 85 40 f3 ff ff 	mov    %rax,-0xcc0(%rbp)
  404c59:	48 8b 85 38 f3 ff ff 	mov    -0xcc8(%rbp),%rax
  404c60:	44 89 e6             	mov    %r12d,%esi
  404c63:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  404c6a:	00 
  404c6b:	e8 e0 67 00 00       	callq  40b450 <_Z11alloc_bytesmb>
  404c70:	80 bd bc f2 ff ff 00 	cmpb   $0x0,-0xd44(%rbp)
  404c77:	48 89 85 48 f3 ff ff 	mov    %rax,-0xcb8(%rbp)
  404c7e:	74 1e                	je     404c9e <main+0xbbe>
  404c80:	48 8b 85 38 f3 ff ff 	mov    -0xcc8(%rbp),%rax
  404c87:	44 89 e6             	mov    %r12d,%esi
  404c8a:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  404c91:	00 
  404c92:	e8 b9 67 00 00       	callq  40b450 <_Z11alloc_bytesmb>
  404c97:	48 89 85 50 f3 ff ff 	mov    %rax,-0xcb0(%rbp)
  404c9e:	48 8d 85 38 f3 ff ff 	lea    -0xcc8(%rbp),%rax
  404ca5:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  404caa:	48 8d 85 40 f3 ff ff 	lea    -0xcc0(%rbp),%rax
  404cb1:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  404cb7:	48 8d 85 48 f3 ff ff 	lea    -0xcb8(%rbp),%rax
  404cbe:	c5 f9 7f 85 00 f6 ff 	vmovdqa %xmm0,-0xa00(%rbp)
  404cc5:	ff 
  404cc6:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  404ccb:	48 8d 85 50 f3 ff ff 	lea    -0xcb0(%rbp),%rax
  404cd2:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  404cd8:	31 c9                	xor    %ecx,%ecx
  404cda:	31 d2                	xor    %edx,%edx
  404cdc:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  404ce3:	bf d0 6a 40 00       	mov    $0x406ad0,%edi
  404ce8:	c5 f9 7f 85 10 f6 ff 	vmovdqa %xmm0,-0x9f0(%rbp)
  404cef:	ff 
  404cf0:	e8 cb e6 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  404cf5:	48 8d 85 80 f3 ff ff 	lea    -0xc80(%rbp),%rax
  404cfc:	4c 8d b5 a0 f3 ff ff 	lea    -0xc60(%rbp),%r14
  404d03:	c4 e1 f9 6e f0       	vmovq  %rax,%xmm6
  404d08:	c4 c3 c9 22 ee 01    	vpinsrq $0x1,%r14,%xmm6,%xmm5
  404d0e:	80 bd 21 f3 ff ff 00 	cmpb   $0x0,-0xcdf(%rbp)
  404d15:	c5 f9 7f ad 00 f3 ff 	vmovdqa %xmm5,-0xd00(%rbp)
  404d1c:	ff 
  404d1d:	0f 84 be 00 00 00    	je     404de1 <main+0xd01>
  404d23:	80 bd d0 f2 ff ff 00 	cmpb   $0x0,-0xd30(%rbp)
  404d2a:	0f 84 b8 18 00 00    	je     4065e8 <main+0x2508>
  404d30:	48 8b 85 c8 f2 ff ff 	mov    -0xd38(%rbp),%rax
  404d37:	48 25 00 fe ff ff    	and    $0xfffffffffffffe00,%rax
  404d3d:	48 89 85 60 f3 ff ff 	mov    %rax,-0xca0(%rbp)
  404d44:	48 3d ff 01 00 00    	cmp    $0x1ff,%rax
  404d4a:	0f 86 3a 18 00 00    	jbe    40658a <main+0x24aa>
  404d50:	48 63 b5 34 f3 ff ff 	movslq -0xccc(%rbp),%rsi
  404d57:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  404d5e:	48 0f af c6          	imul   %rsi,%rax
  404d62:	48 8d bd 80 f3 ff ff 	lea    -0xc80(%rbp),%rdi
  404d69:	48 c7 85 00 f6 ff ff 	movq   $0x0,-0xa00(%rbp)
  404d70:	00 00 00 00 
  404d74:	48 89 85 c8 f2 ff ff 	mov    %rax,-0xd38(%rbp)
  404d7b:	e8 50 9d 00 00       	callq  40ead0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_>
  404d80:	48 63 b5 34 f3 ff ff 	movslq -0xccc(%rbp),%rsi
  404d87:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  404d8e:	4c 89 f7             	mov    %r14,%rdi
  404d91:	48 c7 85 00 f6 ff ff 	movq   $0x0,-0xa00(%rbp)
  404d98:	00 00 00 00 
  404d9c:	e8 2f a0 00 00       	callq  40edd0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd>
  404da1:	0f b6 85 e0 f2 ff ff 	movzbl -0xd20(%rbp),%eax
  404da8:	c5 f9 6f a5 00 f3 ff 	vmovdqa -0xd00(%rbp),%xmm4
  404daf:	ff 
  404db0:	88 85 18 f6 ff ff    	mov    %al,-0x9e8(%rbp)
  404db6:	31 c9                	xor    %ecx,%ecx
  404db8:	48 8d 85 60 f3 ff ff 	lea    -0xca0(%rbp),%rax
  404dbf:	31 d2                	xor    %edx,%edx
  404dc1:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  404dc8:	bf e0 b4 40 00       	mov    $0x40b4e0,%edi
  404dcd:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  404dd4:	c5 f9 7f a5 00 f6 ff 	vmovdqa %xmm4,-0xa00(%rbp)
  404ddb:	ff 
  404ddc:	e8 df e5 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  404de1:	80 bd 20 f3 ff ff 00 	cmpb   $0x0,-0xce0(%rbp)
  404de8:	0f 84 a4 17 00 00    	je     406592 <main+0x24b2>
  404dee:	83 bd 34 f3 ff ff 01 	cmpl   $0x1,-0xccc(%rbp)
  404df5:	0f 85 a4 f1 ff ff    	jne    403f9f <main.cold+0x283>
  404dfb:	48 8b 85 c8 f2 ff ff 	mov    -0xd38(%rbp),%rax
  404e02:	48 c1 e8 06          	shr    $0x6,%rax
  404e06:	48 89 85 38 f3 ff ff 	mov    %rax,-0xcc8(%rbp)
  404e0d:	48 83 f8 01          	cmp    $0x1,%rax
  404e11:	0f 86 73 17 00 00    	jbe    40658a <main+0x24aa>
  404e17:	48 c1 e0 06          	shl    $0x6,%rax
  404e1b:	0f b6 b5 e0 f2 ff ff 	movzbl -0xd20(%rbp),%esi
  404e22:	48 89 c7             	mov    %rax,%rdi
  404e25:	48 89 85 c8 f2 ff ff 	mov    %rax,-0xd38(%rbp)
  404e2c:	e8 1f 66 00 00       	callq  40b450 <_Z11alloc_bytesmb>
  404e31:	4c 8b a5 38 f3 ff ff 	mov    -0xcc8(%rbp),%r12
  404e38:	48 89 85 a8 f2 ff ff 	mov    %rax,-0xd58(%rbp)
  404e3f:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
  404e46:	ff ff 0f 
  404e49:	49 39 c4             	cmp    %rax,%r12
  404e4c:	0f 87 33 19 00 00    	ja     406785 <main+0x26a5>
  404e52:	4a 8d 1c e5 00 00 00 	lea    0x0(,%r12,8),%rbx
  404e59:	00 
  404e5a:	4d 85 e4             	test   %r12,%r12
  404e5d:	0f 84 dd 18 00 00    	je     406740 <main+0x2660>
  404e63:	48 89 df             	mov    %rbx,%rdi
  404e66:	e8 55 e4 ff ff       	callq  4032c0 <_Znwm@plt>
  404e6b:	49 89 c0             	mov    %rax,%r8
  404e6e:	49 ff cc             	dec    %r12
  404e71:	48 8d 04 18          	lea    (%rax,%rbx,1),%rax
  404e75:	48 89 85 00 f3 ff ff 	mov    %rax,-0xd00(%rbp)
  404e7c:	49 c7 00 00 00 00 00 	movq   $0x0,(%r8)
  404e83:	49 8d 78 08          	lea    0x8(%r8),%rdi
  404e87:	74 20                	je     404ea9 <main+0xdc9>
  404e89:	48 8d 53 f8          	lea    -0x8(%rbx),%rdx
  404e8d:	31 f6                	xor    %esi,%esi
  404e8f:	4c 89 85 f8 f2 ff ff 	mov    %r8,-0xd08(%rbp)
  404e96:	e8 f5 e2 ff ff       	callq  403190 <memset@plt>
  404e9b:	48 8b bd 00 f3 ff ff 	mov    -0xd00(%rbp),%rdi
  404ea2:	4c 8b 85 f8 f2 ff ff 	mov    -0xd08(%rbp),%r8
  404ea9:	48 89 fa             	mov    %rdi,%rdx
  404eac:	4c 29 c2             	sub    %r8,%rdx
  404eaf:	48 c1 ea 03          	shr    $0x3,%rdx
  404eb3:	31 c0                	xor    %eax,%eax
  404eb5:	eb 07                	jmp    404ebe <main+0xdde>
  404eb7:	49 89 04 c0          	mov    %rax,(%r8,%rax,8)
  404ebb:	48 ff c0             	inc    %rax
  404ebe:	48 39 c2             	cmp    %rax,%rdx
  404ec1:	75 f4                	jne    404eb7 <main+0xdd7>
  404ec3:	48 c7 85 00 f6 ff ff 	movq   $0x7,-0xa00(%rbp)
  404eca:	07 00 00 00 
  404ece:	b8 07 00 00 00       	mov    $0x7,%eax
  404ed3:	b9 01 00 00 00       	mov    $0x1,%ecx
  404ed8:	48 be 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rsi
  404edf:	f4 51 58 
  404ee2:	48 89 c2             	mov    %rax,%rdx
  404ee5:	0f 1f 00             	nopl   (%rax)
  404ee8:	48 89 d0             	mov    %rdx,%rax
  404eeb:	48 c1 e8 3e          	shr    $0x3e,%rax
  404eef:	48 31 d0             	xor    %rdx,%rax
  404ef2:	48 0f af c6          	imul   %rsi,%rax
  404ef6:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  404efa:	48 89 94 cd 00 f6 ff 	mov    %rdx,-0xa00(%rbp,%rcx,8)
  404f01:	ff 
  404f02:	48 ff c1             	inc    %rcx
  404f05:	48 81 f9 38 01 00 00 	cmp    $0x138,%rcx
  404f0c:	75 da                	jne    404ee8 <main+0xe08>
  404f0e:	48 89 fe             	mov    %rdi,%rsi
  404f11:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  404f18:	4c 89 c7             	mov    %r8,%rdi
  404f1b:	4c 89 85 f8 f2 ff ff 	mov    %r8,-0xd08(%rbp)
  404f22:	48 c7 45 c0 38 01 00 	movq   $0x138,-0x40(%rbp)
  404f29:	00 
  404f2a:	e8 51 a3 00 00       	callq  40f280 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>
  404f2f:	48 8b 8d 38 f3 ff ff 	mov    -0xcc8(%rbp),%rcx
  404f36:	4c 8b 85 f8 f2 ff ff 	mov    -0xd08(%rbp),%r8
  404f3d:	31 f6                	xor    %esi,%esi
  404f3f:	eb 2d                	jmp    404f6e <main+0xe8e>
  404f41:	48 ff c6             	inc    %rsi
  404f44:	b8 06 00 00 00       	mov    $0x6,%eax
  404f49:	c4 c2 f9 f7 7c f0 f8 	shlx   %rax,-0x8(%r8,%rsi,8),%rdi
  404f50:	31 d2                	xor    %edx,%edx
  404f52:	48 89 f0             	mov    %rsi,%rax
  404f55:	48 f7 f1             	div    %rcx
  404f58:	48 8b 9d a8 f2 ff ff 	mov    -0xd58(%rbp),%rbx
  404f5f:	49 8b 04 d0          	mov    (%r8,%rdx,8),%rax
  404f63:	48 c1 e0 06          	shl    $0x6,%rax
  404f67:	48 01 d8             	add    %rbx,%rax
  404f6a:	48 89 04 3b          	mov    %rax,(%rbx,%rdi,1)
  404f6e:	48 39 f1             	cmp    %rsi,%rcx
  404f71:	75 ce                	jne    404f41 <main+0xe61>
  404f73:	48 8b 85 a8 f2 ff ff 	mov    -0xd58(%rbp),%rax
  404f7a:	48 89 85 58 f3 ff ff 	mov    %rax,-0xca8(%rbp)
  404f81:	4d 85 c0             	test   %r8,%r8
  404f84:	74 19                	je     404f9f <main+0xebf>
  404f86:	48 8b b5 00 f3 ff ff 	mov    -0xd00(%rbp),%rsi
  404f8d:	4c 89 c7             	mov    %r8,%rdi
  404f90:	4c 29 c6             	sub    %r8,%rsi
  404f93:	e8 38 e3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  404f98:	48 8b 8d 38 f3 ff ff 	mov    -0xcc8(%rbp),%rcx
  404f9f:	31 c0                	xor    %eax,%eax
  404fa1:	eb 0d                	jmp    404fb0 <main+0xed0>
  404fa3:	48 8b 12             	mov    (%rdx),%rdx
  404fa6:	48 ff c0             	inc    %rax
  404fa9:	48 89 95 58 f3 ff ff 	mov    %rdx,-0xca8(%rbp)
  404fb0:	48 8b 95 58 f3 ff ff 	mov    -0xca8(%rbp),%rdx
  404fb7:	48 39 c1             	cmp    %rax,%rcx
  404fba:	75 e7                	jne    404fa3 <main+0xec3>
  404fbc:	48 39 95 a8 f2 ff ff 	cmp    %rdx,-0xd58(%rbp)
  404fc3:	0f 94 c0             	sete   %al
  404fc6:	20 85 2a f3 ff ff    	and    %al,-0xcd6(%rbp)
  404fcc:	48 8d 85 20 f3 ff ff 	lea    -0xce0(%rbp),%rax
  404fd3:	62 e1 fd 08 6e d0    	vmovq  %rax,%xmm18
  404fd9:	48 8d 85 58 f3 ff ff 	lea    -0xca8(%rbp),%rax
  404fe0:	62 e3 ed 00 22 d0 01 	vpinsrq $0x1,%rax,%xmm18,%xmm18
  404fe7:	48 8d 85 1d f3 ff ff 	lea    -0xce3(%rbp),%rax
  404fee:	62 e1 fd 08 6e c8    	vmovq  %rax,%xmm17
  404ff4:	48 8d 85 38 f3 ff ff 	lea    -0xcc8(%rbp),%rax
  404ffb:	62 e3 f5 00 22 c8 01 	vpinsrq $0x1,%rax,%xmm17,%xmm17
  405002:	48 8d 85 40 f3 ff ff 	lea    -0xcc0(%rbp),%rax
  405009:	62 e1 fd 08 6e c0    	vmovq  %rax,%xmm16
  40500f:	48 8d 85 48 f3 ff ff 	lea    -0xcb8(%rbp),%rax
  405016:	62 e3 fd 00 22 c0 01 	vpinsrq $0x1,%rax,%xmm16,%xmm16
  40501d:	48 8d 85 50 f3 ff ff 	lea    -0xcb0(%rbp),%rax
  405024:	c4 61 f9 6e f8       	vmovq  %rax,%xmm15
  405029:	48 8d 85 1e f3 ff ff 	lea    -0xce2(%rbp),%rax
  405030:	c4 63 81 22 f8 01    	vpinsrq $0x1,%rax,%xmm15,%xmm15
  405036:	48 8d 85 22 f3 ff ff 	lea    -0xcde(%rbp),%rax
  40503d:	c4 61 f9 6e f0       	vmovq  %rax,%xmm14
  405042:	48 8d 85 23 f3 ff ff 	lea    -0xcdd(%rbp),%rax
  405049:	c4 63 89 22 f0 01    	vpinsrq $0x1,%rax,%xmm14,%xmm14
  40504f:	48 8d 85 21 f3 ff ff 	lea    -0xcdf(%rbp),%rax
  405056:	c4 61 f9 6e e8       	vmovq  %rax,%xmm13
  40505b:	48 8d 85 80 f3 ff ff 	lea    -0xc80(%rbp),%rax
  405062:	c4 63 91 22 e8 01    	vpinsrq $0x1,%rax,%xmm13,%xmm13
  405068:	48 8d 85 60 f3 ff ff 	lea    -0xca0(%rbp),%rax
  40506f:	c4 61 f9 6e e0       	vmovq  %rax,%xmm12
  405074:	48 8d 85 70 f3 ff ff 	lea    -0xc90(%rbp),%rax
  40507b:	c4 61 f9 6e d8       	vmovq  %rax,%xmm11
  405080:	48 8d 85 2a f3 ff ff 	lea    -0xcd6(%rbp),%rax
  405087:	c4 63 a1 22 d8 01    	vpinsrq $0x1,%rax,%xmm11,%xmm11
  40508d:	48 8d 85 78 f3 ff ff 	lea    -0xc88(%rbp),%rax
  405094:	c4 61 f9 6e d0       	vmovq  %rax,%xmm10
  405099:	48 8d 85 1f f3 ff ff 	lea    -0xce1(%rbp),%rax
  4050a0:	c4 63 a9 22 d0 01    	vpinsrq $0x1,%rax,%xmm10,%xmm10
  4050a6:	48 8d 85 30 f3 ff ff 	lea    -0xcd0(%rbp),%rax
  4050ad:	c4 61 f9 6e c8       	vmovq  %rax,%xmm9
  4050b2:	48 8d 85 2c f3 ff ff 	lea    -0xcd4(%rbp),%rax
  4050b9:	c4 63 b1 22 c8 01    	vpinsrq $0x1,%rax,%xmm9,%xmm9
  4050bf:	48 8d 85 26 f3 ff ff 	lea    -0xcda(%rbp),%rax
  4050c6:	c4 61 f9 6e c0       	vmovq  %rax,%xmm8
  4050cb:	48 8d 85 27 f3 ff ff 	lea    -0xcd9(%rbp),%rax
  4050d2:	c4 63 b9 22 c0 01    	vpinsrq $0x1,%rax,%xmm8,%xmm8
  4050d8:	48 8d 85 28 f3 ff ff 	lea    -0xcd8(%rbp),%rax
  4050df:	c4 e1 f9 6e f8       	vmovq  %rax,%xmm7
  4050e4:	48 8d 85 29 f3 ff ff 	lea    -0xcd7(%rbp),%rax
  4050eb:	c4 e3 c1 22 f8 01    	vpinsrq $0x1,%rax,%xmm7,%xmm7
  4050f1:	48 8d 85 24 f3 ff ff 	lea    -0xcdc(%rbp),%rax
  4050f8:	c4 e1 f9 6e f0       	vmovq  %rax,%xmm6
  4050fd:	48 8d 85 25 f3 ff ff 	lea    -0xcdb(%rbp),%rax
  405104:	c4 e3 c9 22 f0 01    	vpinsrq $0x1,%rax,%xmm6,%xmm6
  40510a:	0f b6 8d 24 f3 ff ff 	movzbl -0xcdc(%rbp),%ecx
  405111:	48 8d 85 68 f3 ff ff 	lea    -0xc98(%rbp),%rax
  405118:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
  40511d:	48 8d 85 34 f3 ff ff 	lea    -0xccc(%rbp),%rax
  405124:	48 c7 85 68 f3 ff ff 	movq   $0x0,-0xc98(%rbp)
  40512b:	00 00 00 00 
  40512f:	c4 43 99 22 e6 01    	vpinsrq $0x1,%r14,%xmm12,%xmm12
  405135:	c4 e3 d1 22 e8 01    	vpinsrq $0x1,%rax,%xmm5,%xmm5
  40513b:	84 c9                	test   %cl,%cl
  40513d:	75 0d                	jne    40514c <main+0x106c>
  40513f:	80 bd 25 f3 ff ff 00 	cmpb   $0x0,-0xcdb(%rbp)
  405146:	0f 84 80 00 00 00    	je     4051cc <main+0x10ec>
  40514c:	c5 fb 10 1d a4 b5 00 	vmovsd 0xb5a4(%rip),%xmm3        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  405153:	00 
  405154:	62 e1 ff 08 10 25 72 	vmovsd 0xb572(%rip),%xmm20        # 4106d0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x110>
  40515b:	b5 00 00 
  40515e:	c5 fa 10 15 8a b6 00 	vmovss 0xb68a(%rip),%xmm2        # 4107f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x230>
  405165:	00 
  405166:	c5 fa 10 0d 86 b6 00 	vmovss 0xb686(%rip),%xmm1        # 4107f4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x234>
  40516d:	00 
  40516e:	62 e1 7e 08 10 1d 84 	vmovss 0xb684(%rip),%xmm19        # 4107fc <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x23c>
  405175:	b6 00 00 
  405178:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  40517c:	31 d2                	xor    %edx,%edx
  40517e:	ff c2                	inc    %edx
  405180:	84 c9                	test   %cl,%cl
  405182:	0f 84 84 0f 00 00    	je     40610c <main+0x202c>
  405188:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  40518c:	c5 fa 2a c2          	vcvtsi2ss %edx,%xmm0,%xmm0
  405190:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  405195:	0f 1f 00             	nopl   (%rax)
  405198:	c4 e2 69 b9 c1       	vfmadd231ss %xmm1,%xmm2,%xmm0
  40519d:	ff c8                	dec    %eax
  40519f:	75 f7                	jne    405198 <main+0x10b8>
  4051a1:	62 b1 7e 08 59 c3    	vmulss %xmm19,%xmm0,%xmm0
  4051a7:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4051ab:	c5 db 58 e0          	vaddsd %xmm0,%xmm4,%xmm4
  4051af:	83 fa 0c             	cmp    $0xc,%edx
  4051b2:	75 ca                	jne    40517e <main+0x109e>
  4051b4:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  4051b8:	c5 e3 2a 85 34 f3 ff 	vcvtsi2sdl -0xccc(%rbp),%xmm3,%xmm0
  4051bf:	ff 
  4051c0:	c5 fb 59 c4          	vmulsd %xmm4,%xmm0,%xmm0
  4051c4:	c5 fb 11 85 68 f3 ff 	vmovsd %xmm0,-0xc98(%rbp)
  4051cb:	ff 
  4051cc:	48 8d bd c0 f3 ff ff 	lea    -0xc40(%rbp),%rdi
  4051d3:	48 c7 85 70 f3 ff ff 	movq   $0x0,-0xc90(%rbp)
  4051da:	00 00 00 00 
  4051de:	48 c7 85 78 f3 ff ff 	movq   $0x0,-0xc88(%rbp)
  4051e5:	00 00 00 00 
  4051e9:	62 e1 fd 08 7f 95 00 	vmovdqa64 %xmm18,-0xa00(%rbp)
  4051f0:	f6 ff ff 
  4051f3:	62 e1 fd 08 7f 8d 10 	vmovdqa64 %xmm17,-0x9f0(%rbp)
  4051fa:	f6 ff ff 
  4051fd:	62 e1 fd 08 7f 85 20 	vmovdqa64 %xmm16,-0x9e0(%rbp)
  405204:	f6 ff ff 
  405207:	c5 79 7f bd 30 f6 ff 	vmovdqa %xmm15,-0x9d0(%rbp)
  40520e:	ff 
  40520f:	c5 79 7f b5 40 f6 ff 	vmovdqa %xmm14,-0x9c0(%rbp)
  405216:	ff 
  405217:	c5 79 7f ad 50 f6 ff 	vmovdqa %xmm13,-0x9b0(%rbp)
  40521e:	ff 
  40521f:	c5 79 7f a5 60 f6 ff 	vmovdqa %xmm12,-0x9a0(%rbp)
  405226:	ff 
  405227:	c5 79 7f 9d 70 f6 ff 	vmovdqa %xmm11,-0x990(%rbp)
  40522e:	ff 
  40522f:	c5 79 7f 95 80 f6 ff 	vmovdqa %xmm10,-0x980(%rbp)
  405236:	ff 
  405237:	c5 79 7f 8d 90 f6 ff 	vmovdqa %xmm9,-0x970(%rbp)
  40523e:	ff 
  40523f:	c5 79 7f 85 a0 f6 ff 	vmovdqa %xmm8,-0x960(%rbp)
  405246:	ff 
  405247:	c5 f9 7f bd b0 f6 ff 	vmovdqa %xmm7,-0x950(%rbp)
  40524e:	ff 
  40524f:	c5 f9 7f b5 c0 f6 ff 	vmovdqa %xmm6,-0x940(%rbp)
  405256:	ff 
  405257:	c5 f9 7f ad d0 f6 ff 	vmovdqa %xmm5,-0x930(%rbp)
  40525e:	ff 
  40525f:	e8 4c 8d 00 00       	callq  40dfb0 <_ZN11PerfControlC1Ev>
  405264:	83 bd c0 f3 ff ff 00 	cmpl   $0x0,-0xc40(%rbp)
  40526b:	0f 89 95 13 00 00    	jns    406606 <main+0x2526>
  405271:	80 bd 20 f3 ff ff 00 	cmpb   $0x0,-0xce0(%rbp)
  405278:	0f 84 9e 13 00 00    	je     40661c <main+0x253c>
  40527e:	80 bd 1d f3 ff ff 00 	cmpb   $0x0,-0xce3(%rbp)
  405285:	be 9b 00 41 00       	mov    $0x41009b,%esi
  40528a:	0f 85 97 00 00 00    	jne    405327 <main+0x1247>
  405290:	80 bd 1e f3 ff ff 00 	cmpb   $0x0,-0xce2(%rbp)
  405297:	be b4 00 41 00       	mov    $0x4100b4,%esi
  40529c:	0f 85 85 00 00 00    	jne    405327 <main+0x1247>
  4052a2:	80 bd 22 f3 ff ff 00 	cmpb   $0x0,-0xcde(%rbp)
  4052a9:	be c4 00 41 00       	mov    $0x4100c4,%esi
  4052ae:	75 77                	jne    405327 <main+0x1247>
  4052b0:	80 bd 23 f3 ff ff 00 	cmpb   $0x0,-0xcdd(%rbp)
  4052b7:	be d0 00 41 00       	mov    $0x4100d0,%esi
  4052bc:	75 69                	jne    405327 <main+0x1247>
  4052be:	80 bd 21 f3 ff ff 00 	cmpb   $0x0,-0xcdf(%rbp)
  4052c5:	be df 00 41 00       	mov    $0x4100df,%esi
  4052ca:	75 5b                	jne    405327 <main+0x1247>
  4052cc:	80 bd 1f f3 ff ff 00 	cmpb   $0x0,-0xce1(%rbp)
  4052d3:	be eb 00 41 00       	mov    $0x4100eb,%esi
  4052d8:	75 4d                	jne    405327 <main+0x1247>
  4052da:	80 bd 20 f3 ff ff 00 	cmpb   $0x0,-0xce0(%rbp)
  4052e1:	be fa 00 41 00       	mov    $0x4100fa,%esi
  4052e6:	75 3f                	jne    405327 <main+0x1247>
  4052e8:	80 bd 26 f3 ff ff 00 	cmpb   $0x0,-0xcda(%rbp)
  4052ef:	be 0d 01 41 00       	mov    $0x41010d,%esi
  4052f4:	75 31                	jne    405327 <main+0x1247>
  4052f6:	80 bd 27 f3 ff ff 00 	cmpb   $0x0,-0xcd9(%rbp)
  4052fd:	be 08 01 41 00       	mov    $0x410108,%esi
  405302:	75 23                	jne    405327 <main+0x1247>
  405304:	80 bd 28 f3 ff ff 00 	cmpb   $0x0,-0xcd8(%rbp)
  40530b:	be 16 01 41 00       	mov    $0x410116,%esi
  405310:	75 15                	jne    405327 <main+0x1247>
  405312:	80 bd 29 f3 ff ff 00 	cmpb   $0x0,-0xcd7(%rbp)
  405319:	be 20 01 41 00       	mov    $0x410120,%esi
  40531e:	b8 a8 00 41 00       	mov    $0x4100a8,%eax
  405323:	48 0f 44 f0          	cmove  %rax,%rsi
  405327:	48 8d bd 00 f4 ff ff 	lea    -0xc00(%rbp),%rdi
  40532e:	e8 cd 5f 00 00       	callq  40b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  405333:	44 0a ad bc f2 ff ff 	or     -0xd44(%rbp),%r13b
  40533a:	44 88 ad 9f f2 ff ff 	mov    %r13b,-0xd61(%rbp)
  405341:	be ed 01 41 00       	mov    $0x4101ed,%esi
  405346:	75 55                	jne    40539d <main+0x12bd>
  405348:	80 bd 20 f3 ff ff 00 	cmpb   $0x0,-0xce0(%rbp)
  40534f:	75 4c                	jne    40539d <main+0x12bd>
  405351:	80 bd 21 f3 ff ff 00 	cmpb   $0x0,-0xcdf(%rbp)
  405358:	75 43                	jne    40539d <main+0x12bd>
  40535a:	80 bd 26 f3 ff ff 00 	cmpb   $0x0,-0xcda(%rbp)
  405361:	be e1 01 41 00       	mov    $0x4101e1,%esi
  405366:	75 35                	jne    40539d <main+0x12bd>
  405368:	80 bd 29 f3 ff ff 00 	cmpb   $0x0,-0xcd7(%rbp)
  40536f:	75 2c                	jne    40539d <main+0x12bd>
  405371:	80 bd 27 f3 ff ff 00 	cmpb   $0x0,-0xcd9(%rbp)
  405378:	be 3b 01 41 00       	mov    $0x41013b,%esi
  40537d:	75 1e                	jne    40539d <main+0x12bd>
  40537f:	80 bd 28 f3 ff ff 00 	cmpb   $0x0,-0xcd8(%rbp)
  405386:	75 15                	jne    40539d <main+0x12bd>
  405388:	80 bd 24 f3 ff ff 00 	cmpb   $0x0,-0xcdc(%rbp)
  40538f:	be 36 01 41 00       	mov    $0x410136,%esi
  405394:	b8 31 01 41 00       	mov    $0x410131,%eax
  405399:	48 0f 44 f0          	cmove  %rax,%rsi
  40539d:	48 8d bd 20 f4 ff ff 	lea    -0xbe0(%rbp),%rdi
  4053a4:	e8 57 5f 00 00       	callq  40b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4053a9:	80 bd 26 f3 ff ff 00 	cmpb   $0x0,-0xcda(%rbp)
  4053b0:	0f 85 87 12 00 00    	jne    40663d <main+0x255d>
  4053b6:	0f b6 9d 27 f3 ff ff 	movzbl -0xcd9(%rbp),%ebx
  4053bd:	84 db                	test   %bl,%bl
  4053bf:	0f 85 8e 12 00 00    	jne    406653 <main+0x2573>
  4053c5:	80 bd 28 f3 ff ff 00 	cmpb   $0x0,-0xcd8(%rbp)
  4053cc:	0f 85 28 13 00 00    	jne    4066fa <main+0x261a>
  4053d2:	0f b6 9d 29 f3 ff ff 	movzbl -0xcd7(%rbp),%ebx
  4053d9:	84 db                	test   %bl,%bl
  4053db:	0f 85 88 12 00 00    	jne    406669 <main+0x2589>
  4053e1:	80 bd 1e f3 ff ff 00 	cmpb   $0x0,-0xce2(%rbp)
  4053e8:	0f 85 22 13 00 00    	jne    406710 <main+0x2630>
  4053ee:	80 bd 23 f3 ff ff 00 	cmpb   $0x0,-0xcdd(%rbp)
  4053f5:	0f 85 15 13 00 00    	jne    406710 <main+0x2630>
  4053fb:	0f b6 9d 21 f3 ff ff 	movzbl -0xcdf(%rbp),%ebx
  405402:	84 db                	test   %bl,%bl
  405404:	0f 85 66 14 00 00    	jne    406870 <main+0x2790>
  40540a:	44 0f b6 a5 1f f3 ff 	movzbl -0xce1(%rbp),%r12d
  405411:	ff 
  405412:	45 84 e4             	test   %r12b,%r12b
  405415:	0f 85 b0 13 00 00    	jne    4067cb <main+0x26eb>
  40541b:	80 bd 20 f3 ff ff 00 	cmpb   $0x0,-0xce0(%rbp)
  405422:	be 40 01 41 00       	mov    $0x410140,%esi
  405427:	b8 5c 01 41 00       	mov    $0x41015c,%eax
  40542c:	48 0f 44 f0          	cmove  %rax,%rsi
  405430:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  405437:	e8 c4 5e 00 00       	callq  40b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40543c:	0f b6 9d 9f f2 ff ff 	movzbl -0xd61(%rbp),%ebx
  405443:	84 db                	test   %bl,%bl
  405445:	75 1d                	jne    405464 <main+0x1384>
  405447:	0f b6 9d 1f f3 ff ff 	movzbl -0xce1(%rbp),%ebx
  40544e:	84 db                	test   %bl,%bl
  405450:	75 12                	jne    405464 <main+0x1384>
  405452:	0f b6 9d 20 f3 ff ff 	movzbl -0xce0(%rbp),%ebx
  405459:	84 db                	test   %bl,%bl
  40545b:	75 07                	jne    405464 <main+0x1384>
  40545d:	0f b6 9d 21 f3 ff ff 	movzbl -0xcdf(%rbp),%ebx
  405464:	48 8b 05 15 de 00 00 	mov    0xde15(%rip),%rax        # 413280 <_ZSt4cout@@GLIBCXX_3.4>
  40546b:	ba 0e 00 00 00       	mov    $0xe,%edx
  405470:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  405474:	be 70 02 41 00       	mov    $0x410270,%esi
  405479:	bf 80 32 41 00       	mov    $0x413280,%edi
  40547e:	48 c7 80 88 32 41 00 	movq   $0xf,0x413288(%rax)
  405485:	0f 00 00 00 
  405489:	e8 72 de ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40548e:	48 8b 95 08 f4 ff ff 	mov    -0xbf8(%rbp),%rdx
  405495:	48 8b b5 00 f4 ff ff 	mov    -0xc00(%rbp),%rsi
  40549c:	bf 80 32 41 00       	mov    $0x413280,%edi
  4054a1:	e8 5a de ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054a6:	ba 0c 00 00 00       	mov    $0xc,%edx
  4054ab:	be 7f 02 41 00       	mov    $0x41027f,%esi
  4054b0:	48 89 c7             	mov    %rax,%rdi
  4054b3:	49 89 c4             	mov    %rax,%r12
  4054b6:	e8 45 de ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054bb:	48 8b 95 e8 f3 ff ff 	mov    -0xc18(%rbp),%rdx
  4054c2:	48 8b b5 e0 f3 ff ff 	mov    -0xc20(%rbp),%rsi
  4054c9:	4c 89 e7             	mov    %r12,%rdi
  4054cc:	e8 2f de ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054d1:	ba 0b 00 00 00       	mov    $0xb,%edx
  4054d6:	be 8c 02 41 00       	mov    $0x41028c,%esi
  4054db:	48 89 c7             	mov    %rax,%rdi
  4054de:	49 89 c4             	mov    %rax,%r12
  4054e1:	e8 1a de ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054e6:	48 8b 95 28 f4 ff ff 	mov    -0xbd8(%rbp),%rdx
  4054ed:	48 8b b5 20 f4 ff ff 	mov    -0xbe0(%rbp),%rsi
  4054f4:	4c 89 e7             	mov    %r12,%rdi
  4054f7:	e8 04 de ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054fc:	ba 14 00 00 00       	mov    $0x14,%edx
  405501:	be 98 02 41 00       	mov    $0x410298,%esi
  405506:	48 89 c7             	mov    %rax,%rdi
  405509:	49 89 c4             	mov    %rax,%r12
  40550c:	e8 ef dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405511:	48 8b 95 48 f4 ff ff 	mov    -0xbb8(%rbp),%rdx
  405518:	48 8b b5 40 f4 ff ff 	mov    -0xbc0(%rbp),%rsi
  40551f:	4c 89 e7             	mov    %r12,%rdi
  405522:	e8 d9 dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405527:	ba 0c 00 00 00       	mov    $0xc,%edx
  40552c:	be ad 02 41 00       	mov    $0x4102ad,%esi
  405531:	48 89 c7             	mov    %rax,%rdi
  405534:	49 89 c4             	mov    %rax,%r12
  405537:	e8 c4 dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40553c:	8b b5 34 f3 ff ff    	mov    -0xccc(%rbp),%esi
  405542:	4c 89 e7             	mov    %r12,%rdi
  405545:	e8 16 df ff ff       	callq  403460 <_ZNSolsEi@plt>
  40554a:	ba 15 00 00 00       	mov    $0x15,%edx
  40554f:	be ba 02 41 00       	mov    $0x4102ba,%esi
  405554:	48 89 c7             	mov    %rax,%rdi
  405557:	49 89 c4             	mov    %rax,%r12
  40555a:	e8 a1 dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40555f:	31 f6                	xor    %esi,%esi
  405561:	84 db                	test   %bl,%bl
  405563:	48 0f 45 b5 c8 f2 ff 	cmovne -0xd38(%rbp),%rsi
  40556a:	ff 
  40556b:	4c 89 e7             	mov    %r12,%rdi
  40556e:	e8 7d dc ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  405573:	ba 14 00 00 00       	mov    $0x14,%edx
  405578:	be d0 02 41 00       	mov    $0x4102d0,%esi
  40557d:	48 89 c7             	mov    %rax,%rdi
  405580:	49 89 c4             	mov    %rax,%r12
  405583:	e8 78 dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405588:	48 8b b5 60 f3 ff ff 	mov    -0xca0(%rbp),%rsi
  40558f:	4c 89 e7             	mov    %r12,%rdi
  405592:	e8 59 dc ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  405597:	ba 0d 00 00 00       	mov    $0xd,%edx
  40559c:	be e5 02 41 00       	mov    $0x4102e5,%esi
  4055a1:	48 89 c7             	mov    %rax,%rdi
  4055a4:	49 89 c4             	mov    %rax,%r12
  4055a7:	e8 54 dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4055ac:	0f b6 b5 e0 f2 ff ff 	movzbl -0xd20(%rbp),%esi
  4055b3:	4c 89 e7             	mov    %r12,%rdi
  4055b6:	e8 a5 de ff ff       	callq  403460 <_ZNSolsEi@plt>
  4055bb:	ba 05 00 00 00       	mov    $0x5,%edx
  4055c0:	be f3 02 41 00       	mov    $0x4102f3,%esi
  4055c5:	48 89 c7             	mov    %rax,%rdi
  4055c8:	49 89 c4             	mov    %rax,%r12
  4055cb:	e8 30 dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4055d0:	8b b5 2c f3 ff ff    	mov    -0xcd4(%rbp),%esi
  4055d6:	4c 89 e7             	mov    %r12,%rdi
  4055d9:	e8 82 de ff ff       	callq  403460 <_ZNSolsEi@plt>
  4055de:	ba 0a 00 00 00       	mov    $0xa,%edx
  4055e3:	be f9 02 41 00       	mov    $0x4102f9,%esi
  4055e8:	48 89 c7             	mov    %rax,%rdi
  4055eb:	49 89 c4             	mov    %rax,%r12
  4055ee:	e8 0d dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4055f3:	80 bd 1f f3 ff ff 00 	cmpb   $0x0,-0xce1(%rbp)
  4055fa:	75 0b                	jne    405607 <main+0x1527>
  4055fc:	31 f6                	xor    %esi,%esi
  4055fe:	80 bd 29 f3 ff ff 00 	cmpb   $0x0,-0xcd7(%rbp)
  405605:	74 06                	je     40560d <main+0x152d>
  405607:	8b b5 30 f3 ff ff    	mov    -0xcd0(%rbp),%esi
  40560d:	4c 89 e7             	mov    %r12,%rdi
  405610:	e8 4b de ff ff       	callq  403460 <_ZNSolsEi@plt>
  405615:	ba 0c 00 00 00       	mov    $0xc,%edx
  40561a:	be 04 03 41 00       	mov    $0x410304,%esi
  40561f:	48 89 c7             	mov    %rax,%rdi
  405622:	49 89 c4             	mov    %rax,%r12
  405625:	e8 d6 dc ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40562a:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  405631:	4c 89 fe             	mov    %r15,%rsi
  405634:	48 89 c7             	mov    %rax,%rdi
  405637:	48 89 85 f0 f2 ff ff 	mov    %rax,-0xd10(%rbp)
  40563e:	e8 7d 8d 00 00       	callq  40e3c0 <_ZNK8Counters4readEv>
  405643:	80 bd f0 f4 ff ff 00 	cmpb   $0x0,-0xb10(%rbp)
  40564a:	be 6a 01 41 00       	mov    $0x41016a,%esi
  40564f:	b8 6f 01 41 00       	mov    $0x41016f,%eax
  405654:	48 0f 44 f0          	cmove  %rax,%rsi
  405658:	4c 89 e7             	mov    %r12,%rdi
  40565b:	e8 50 dc ff ff       	callq  4032b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  405660:	48 89 c7             	mov    %rax,%rdi
  405663:	be 11 03 41 00       	mov    $0x410311,%esi
  405668:	e8 43 dc ff ff       	callq  4032b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40566d:	c7 85 00 f3 ff ff 00 	movl   $0x0,-0xd00(%rbp)
  405674:	00 00 00 
  405677:	c5 fb 10 85 c0 f2 ff 	vmovsd -0xd40(%rbp),%xmm0
  40567e:	ff 
  40567f:	8b bd 00 f3 ff ff    	mov    -0xd00(%rbp),%edi
  405685:	e8 16 5f 00 00       	callq  40b5a0 <_Z6windowid>
  40568a:	c5 fb 10 a5 c0 f2 ff 	vmovsd -0xd40(%rbp),%xmm4
  405691:	ff 
  405692:	48 89 c3             	mov    %rax,%rbx
  405695:	c5 db 59 05 b3 b0 00 	vmulsd 0xb0b3(%rip),%xmm4,%xmm0        # 410750 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x190>
  40569c:	00 
  40569d:	48 89 85 e8 f2 ff ff 	mov    %rax,-0xd18(%rbp)
  4056a4:	4c 89 fe             	mov    %r15,%rsi
  4056a7:	62 f1 ff 08 78 c0    	vcvttsd2usi %xmm0,%rax
  4056ad:	4c 8d 34 18          	lea    (%rax,%rbx,1),%r14
  4056b1:	48 8d 85 a0 f4 ff ff 	lea    -0xb60(%rbp),%rax
  4056b8:	48 89 c7             	mov    %rax,%rdi
  4056bb:	48 89 85 a0 f2 ff ff 	mov    %rax,-0xd60(%rbp)
  4056c2:	e8 f9 8c 00 00       	callq  40e3c0 <_ZNK8Counters4readEv>
  4056c7:	48 8d 9d 60 f6 ff ff 	lea    -0x9a0(%rbp),%rbx
  4056ce:	48 8d 95 68 f6 ff ff 	lea    -0x998(%rbp),%rdx
  4056d5:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  4056da:	48 8d 9d 00 f6 ff ff 	lea    -0xa00(%rbp),%rbx
  4056e1:	48 8d 85 58 f6 ff ff 	lea    -0x9a8(%rbp),%rax
  4056e8:	c4 e3 f9 22 c2 01    	vpinsrq $0x1,%rdx,%xmm0,%xmm0
  4056ee:	c4 e1 f9 6e fb       	vmovq  %rbx,%xmm7
  4056f3:	48 8d 95 b0 f6 ff ff 	lea    -0x950(%rbp),%rdx
  4056fa:	c4 e3 c1 22 c8 01    	vpinsrq $0x1,%rax,%xmm7,%xmm1
  405700:	c4 e1 f9 6e e2       	vmovq  %rdx,%xmm4
  405705:	48 8d 85 b8 f6 ff ff 	lea    -0x948(%rbp),%rax
  40570c:	48 8b b5 f0 f2 ff ff 	mov    -0xd10(%rbp),%rsi
  405713:	c4 e3 75 38 e8 01    	vinserti128 $0x1,%xmm0,%ymm1,%ymm5
  405719:	c4 e3 d9 22 f0 01    	vpinsrq $0x1,%rax,%xmm4,%xmm6
  40571f:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  405723:	bf 01 00 00 00       	mov    $0x1,%edi
  405728:	c5 fd 7f ad 70 f2 ff 	vmovdqa %ymm5,-0xd90(%rbp)
  40572f:	ff 
  405730:	c5 f9 7f b5 d0 f2 ff 	vmovdqa %xmm6,-0xd30(%rbp)
  405737:	ff 
  405738:	c5 f9 7f 85 f0 f4 ff 	vmovdqa %xmm0,-0xb10(%rbp)
  40573f:	ff 
  405740:	c5 f8 77             	vzeroupper 
  405743:	e8 58 db ff ff       	callq  4032a0 <clock_gettime@plt>
  405748:	48 69 85 f0 f4 ff ff 	imul   $0x3b9aca00,-0xb10(%rbp),%rax
  40574f:	00 ca 9a 3b 
  405753:	4c 89 bd e0 f2 ff ff 	mov    %r15,-0xd20(%rbp)
  40575a:	45 31 ed             	xor    %r13d,%r13d
  40575d:	48 03 85 f8 f4 ff ff 	add    -0xb08(%rbp),%rax
  405764:	48 89 85 f8 f2 ff ff 	mov    %rax,-0xd08(%rbp)
  40576b:	4c 8b bd f0 f2 ff ff 	mov    -0xd10(%rbp),%r15
  405772:	31 db                	xor    %ebx,%ebx
  405774:	45 31 e4             	xor    %r12d,%r12d
  405777:	e9 41 01 00 00       	jmpq   4058bd <main+0x17dd>
  40577c:	0f 1f 40 00          	nopl   0x0(%rax)
  405780:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  405787:	80 38 00             	cmpb   $0x0,(%rax)
  40578a:	0f 85 73 01 00 00    	jne    405903 <main+0x1823>
  405790:	48 8b 85 38 f6 ff ff 	mov    -0x9c8(%rbp),%rax
  405797:	80 38 00             	cmpb   $0x0,(%rax)
  40579a:	0f 85 cc 01 00 00    	jne    40596c <main+0x188c>
  4057a0:	48 8b 85 40 f6 ff ff 	mov    -0x9c0(%rbp),%rax
  4057a7:	80 38 00             	cmpb   $0x0,(%rax)
  4057aa:	0f 85 f8 07 00 00    	jne    405fa8 <main+0x1ec8>
  4057b0:	48 8b 85 48 f6 ff ff 	mov    -0x9b8(%rbp),%rax
  4057b7:	0f b6 00             	movzbl (%rax),%eax
  4057ba:	84 c0                	test   %al,%al
  4057bc:	0f 85 36 08 00 00    	jne    405ff8 <main+0x1f18>
  4057c2:	48 8b 95 50 f6 ff ff 	mov    -0x9b0(%rbp),%rdx
  4057c9:	80 3a 00             	cmpb   $0x0,(%rdx)
  4057cc:	0f 85 76 08 00 00    	jne    406048 <main+0x1f68>
  4057d2:	48 8b 85 88 f6 ff ff 	mov    -0x978(%rbp),%rax
  4057d9:	0f b6 00             	movzbl (%rax),%eax
  4057dc:	84 c0                	test   %al,%al
  4057de:	0f 84 f1 01 00 00    	je     4059d5 <main+0x18f5>
  4057e4:	48 8b 95 98 f6 ff ff 	mov    -0x968(%rbp),%rdx
  4057eb:	48 8b 85 90 f6 ff ff 	mov    -0x970(%rbp),%rax
  4057f2:	8b 3a                	mov    (%rdx),%edi
  4057f4:	48 8b 95 18 f6 ff ff 	mov    -0x9e8(%rbp),%rdx
  4057fb:	8b 00                	mov    (%rax),%eax
  4057fd:	48 8b 32             	mov    (%rdx),%rsi
  405800:	48 8b 95 20 f6 ff ff 	mov    -0x9e0(%rbp),%rdx
  405807:	48 8b 0a             	mov    (%rdx),%rcx
  40580a:	48 8b 95 28 f6 ff ff 	mov    -0x9d8(%rbp),%rdx
  405811:	48 8b 12             	mov    (%rdx),%rdx
  405814:	c4 e1 f9 6e fa       	vmovq  %rdx,%xmm7
  405819:	c4 e3 c1 22 c1 01    	vpinsrq $0x1,%rcx,%xmm7,%xmm0
  40581f:	83 f8 0c             	cmp    $0xc,%eax
  405822:	0f 84 3b 09 00 00    	je     406163 <main+0x2083>
  405828:	83 f8 10             	cmp    $0x10,%eax
  40582b:	0f 84 07 09 00 00    	je     406138 <main+0x2058>
  405831:	89 bd 08 f5 ff ff    	mov    %edi,-0xaf8(%rbp)
  405837:	48 89 b5 00 f5 ff ff 	mov    %rsi,-0xb00(%rbp)
  40583e:	48 89 8d f8 f4 ff ff 	mov    %rcx,-0xb08(%rbp)
  405845:	48 89 95 f0 f4 ff ff 	mov    %rdx,-0xb10(%rbp)
  40584c:	31 c9                	xor    %ecx,%ecx
  40584e:	31 d2                	xor    %edx,%edx
  405850:	4c 89 fe             	mov    %r15,%rsi
  405853:	bf c0 ab 40 00       	mov    $0x40abc0,%edi
  405858:	e8 63 db ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40585d:	48 8b 85 98 f6 ff ff 	mov    -0x968(%rbp),%rax
  405864:	48 8b 95 18 f6 ff ff 	mov    -0x9e8(%rbp),%rdx
  40586b:	48 63 00             	movslq (%rax),%rax
  40586e:	48 0f af 02          	imul   (%rdx),%rax
  405872:	48 01 c0             	add    %rax,%rax
  405875:	0f 1f 00             	nopl   (%rax)
  405878:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40587c:	4c 89 fe             	mov    %r15,%rsi
  40587f:	bf 01 00 00 00       	mov    $0x1,%edi
  405884:	49 01 c4             	add    %rax,%r12
  405887:	4c 03 ad 78 f3 ff ff 	add    -0xc88(%rbp),%r13
  40588e:	c5 f9 7f 85 f0 f4 ff 	vmovdqa %xmm0,-0xb10(%rbp)
  405895:	ff 
  405896:	e8 05 da ff ff       	callq  4032a0 <clock_gettime@plt>
  40589b:	48 69 85 f0 f4 ff ff 	imul   $0x3b9aca00,-0xb10(%rbp),%rax
  4058a2:	00 ca 9a 3b 
  4058a6:	48 ff c3             	inc    %rbx
  4058a9:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4058ad:	48 03 85 f8 f4 ff ff 	add    -0xb08(%rbp),%rax
  4058b4:	49 39 c6             	cmp    %rax,%r14
  4058b7:	0f 86 3a 03 00 00    	jbe    405bf7 <main+0x1b17>
  4058bd:	48 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%rax
  4058c4:	80 38 00             	cmpb   $0x0,(%rax)
  4058c7:	0f 84 b3 fe ff ff    	je     405780 <main+0x16a0>
  4058cd:	48 8b 8d 08 f6 ff ff 	mov    -0x9f8(%rbp),%rcx
  4058d4:	b8 00 00 01 00       	mov    $0x10000,%eax
  4058d9:	48 8b 11             	mov    (%rcx),%rdx
  4058dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4058e0:	48 8b 12             	mov    (%rdx),%rdx
  4058e3:	48 89 11             	mov    %rdx,(%rcx)
  4058e6:	ff c8                	dec    %eax
  4058e8:	75 f6                	jne    4058e0 <main+0x1800>
  4058ea:	b8 00 00 01 00       	mov    $0x10000,%eax
  4058ef:	eb 87                	jmp    405878 <main+0x1798>
  4058f1:	84 c0                	test   %al,%al
  4058f3:	0f 85 f9 f1 ff ff    	jne    404af2 <main+0xa12>
  4058f9:	b9 40 00 00 00       	mov    $0x40,%ecx
  4058fe:	e9 5c f2 ff ff       	jmpq   404b5f <main+0xa7f>
  405903:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  40590a:	48 89 85 f0 f4 ff ff 	mov    %rax,-0xb10(%rbp)
  405911:	48 8d 85 18 f6 ff ff 	lea    -0x9e8(%rbp),%rax
  405918:	48 89 85 f8 f4 ff ff 	mov    %rax,-0xb08(%rbp)
  40591f:	48 8d 85 20 f6 ff ff 	lea    -0x9e0(%rbp),%rax
  405926:	48 89 85 00 f5 ff ff 	mov    %rax,-0xb00(%rbp)
  40592d:	48 8d 85 28 f6 ff ff 	lea    -0x9d8(%rbp),%rax
  405934:	48 89 85 08 f5 ff ff 	mov    %rax,-0xaf8(%rbp)
  40593b:	31 c9                	xor    %ecx,%ecx
  40593d:	48 8d 85 30 f6 ff ff 	lea    -0x9d0(%rbp),%rax
  405944:	31 d2                	xor    %edx,%edx
  405946:	4c 89 fe             	mov    %r15,%rsi
  405949:	bf 70 6c 40 00       	mov    $0x406c70,%edi
  40594e:	48 89 85 10 f5 ff ff 	mov    %rax,-0xaf0(%rbp)
  405955:	e8 66 da ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40595a:	48 8b 85 18 f6 ff ff 	mov    -0x9e8(%rbp),%rax
  405961:	48 8b 00             	mov    (%rax),%rax
  405964:	48 01 c0             	add    %rax,%rax
  405967:	e9 0c ff ff ff       	jmpq   405878 <main+0x1798>
  40596c:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  405973:	48 89 85 f0 f4 ff ff 	mov    %rax,-0xb10(%rbp)
  40597a:	48 8d 85 18 f6 ff ff 	lea    -0x9e8(%rbp),%rax
  405981:	48 89 85 f8 f4 ff ff 	mov    %rax,-0xb08(%rbp)
  405988:	48 8d 85 20 f6 ff ff 	lea    -0x9e0(%rbp),%rax
  40598f:	48 89 85 00 f5 ff ff 	mov    %rax,-0xb00(%rbp)
  405996:	48 8d 85 28 f6 ff ff 	lea    -0x9d8(%rbp),%rax
  40599d:	48 89 85 08 f5 ff ff 	mov    %rax,-0xaf8(%rbp)
  4059a4:	31 c9                	xor    %ecx,%ecx
  4059a6:	48 8d 85 30 f6 ff ff 	lea    -0x9d0(%rbp),%rax
  4059ad:	31 d2                	xor    %edx,%edx
  4059af:	4c 89 fe             	mov    %r15,%rsi
  4059b2:	bf 80 a6 40 00       	mov    $0x40a680,%edi
  4059b7:	48 89 85 10 f5 ff ff 	mov    %rax,-0xaf0(%rbp)
  4059be:	e8 fd d9 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  4059c3:	48 8b 85 18 f6 ff ff 	mov    -0x9e8(%rbp),%rax
  4059ca:	48 8b 00             	mov    (%rax),%rax
  4059cd:	48 01 c0             	add    %rax,%rax
  4059d0:	e9 a3 fe ff ff       	jmpq   405878 <main+0x1798>
  4059d5:	48 8d 95 a0 f6 ff ff 	lea    -0x960(%rbp),%rdx
  4059dc:	48 89 95 00 f5 ff ff 	mov    %rdx,-0xb00(%rbp)
  4059e3:	48 8d 95 a8 f6 ff ff 	lea    -0x958(%rbp),%rdx
  4059ea:	88 85 b4 f2 ff ff    	mov    %al,-0xd4c(%rbp)
  4059f0:	48 89 95 08 f5 ff ff 	mov    %rdx,-0xaf8(%rbp)
  4059f7:	c5 f9 6f bd d0 f2 ff 	vmovdqa -0xd30(%rbp),%xmm7
  4059fe:	ff 
  4059ff:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  405a06:	48 8d 95 c0 f6 ff ff 	lea    -0x940(%rbp),%rdx
  405a0d:	31 c9                	xor    %ecx,%ecx
  405a0f:	48 89 85 f0 f4 ff ff 	mov    %rax,-0xb10(%rbp)
  405a16:	48 89 95 20 f5 ff ff 	mov    %rdx,-0xae0(%rbp)
  405a1d:	48 8d 85 90 f6 ff ff 	lea    -0x970(%rbp),%rax
  405a24:	31 d2                	xor    %edx,%edx
  405a26:	4c 89 fe             	mov    %r15,%rsi
  405a29:	bf b0 71 40 00       	mov    $0x4071b0,%edi
  405a2e:	48 89 85 f8 f4 ff ff 	mov    %rax,-0xb08(%rbp)
  405a35:	c7 85 30 f5 ff ff 00 	movl   $0x0,-0xad0(%rbp)
  405a3c:	00 00 00 
  405a3f:	48 c7 85 28 f5 ff ff 	movq   $0x0,-0xad8(%rbp)
  405a46:	00 00 00 00 
  405a4a:	c5 f9 7f bd 10 f5 ff 	vmovdqa %xmm7,-0xaf0(%rbp)
  405a51:	ff 
  405a52:	e8 69 d9 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  405a57:	8b 95 30 f5 ff ff    	mov    -0xad0(%rbp),%edx
  405a5d:	c5 fb 10 8d 28 f5 ff 	vmovsd -0xad8(%rbp),%xmm1
  405a64:	ff 
  405a65:	48 8b 8d 70 f6 ff ff 	mov    -0x990(%rbp),%rcx
  405a6c:	85 d2                	test   %edx,%edx
  405a6e:	0f b6 85 b4 f2 ff ff 	movzbl -0xd4c(%rbp),%eax
  405a75:	c5 fb 11 09          	vmovsd %xmm1,(%rcx)
  405a79:	75 21                	jne    405a9c <main+0x19bc>
  405a7b:	c5 f1 54 05 7d ad 00 	vandpd 0xad7d(%rip),%xmm1,%xmm0        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405a82:	00 
  405a83:	c5 fb 10 15 85 ac 00 	vmovsd 0xac85(%rip),%xmm2        # 410710 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  405a8a:	00 
  405a8b:	c5 f9 2e d0          	vucomisd %xmm0,%xmm2
  405a8f:	72 0b                	jb     405a9c <main+0x19bc>
  405a91:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  405a95:	c5 f9 2f cc          	vcomisd %xmm4,%xmm1
  405a99:	0f 97 c0             	seta   %al
  405a9c:	48 8b 95 78 f6 ff ff 	mov    -0x988(%rbp),%rdx
  405aa3:	48 8b 8d c0 f6 ff ff 	mov    -0x940(%rbp),%rcx
  405aaa:	22 02                	and    (%rdx),%al
  405aac:	88 02                	mov    %al,(%rdx)
  405aae:	80 39 00             	cmpb   $0x0,(%rcx)
  405ab1:	75 0c                	jne    405abf <main+0x19df>
  405ab3:	48 8b b5 c8 f6 ff ff 	mov    -0x938(%rbp),%rsi
  405aba:	80 3e 00             	cmpb   $0x0,(%rsi)
  405abd:	74 3b                	je     405afa <main+0x1a1a>
  405abf:	48 8b b5 d0 f6 ff ff 	mov    -0x930(%rbp),%rsi
  405ac6:	c5 fb 10 1d 3a ac 00 	vmovsd 0xac3a(%rip),%xmm3        # 410708 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x148>
  405acd:	00 
  405ace:	c5 fb 10 06          	vmovsd (%rsi),%xmm0
  405ad2:	c5 f3 5c d0          	vsubsd %xmm0,%xmm1,%xmm2
  405ad6:	c5 f9 54 05 22 ad 00 	vandpd 0xad22(%rip),%xmm0,%xmm0        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405add:	00 
  405ade:	c5 fb 59 c3          	vmulsd %xmm3,%xmm0,%xmm0
  405ae2:	c5 e9 54 15 16 ad 00 	vandpd 0xad16(%rip),%xmm2,%xmm2        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405ae9:	00 
  405aea:	c5 fb 5f c3          	vmaxsd %xmm3,%xmm0,%xmm0
  405aee:	c5 f9 2f c2          	vcomisd %xmm2,%xmm0
  405af2:	40 0f 97 c6          	seta   %sil
  405af6:	21 f0                	and    %esi,%eax
  405af8:	88 02                	mov    %al,(%rdx)
  405afa:	48 8b bd b0 f6 ff ff 	mov    -0x950(%rbp),%rdi
  405b01:	48 8b 85 d8 f6 ff ff 	mov    -0x928(%rbp),%rax
  405b08:	80 3f 00             	cmpb   $0x0,(%rdi)
  405b0b:	48 63 00             	movslq (%rax),%rax
  405b0e:	74 3d                	je     405b4d <main+0x1a6d>
  405b10:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  405b14:	c5 db 2a c0          	vcvtsi2sd %eax,%xmm4,%xmm0
  405b18:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  405b1e:	c5 fb 59 05 8a ab 00 	vmulsd 0xab8a(%rip),%xmm0,%xmm0        # 4106b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  405b25:	00 
  405b26:	c5 fb 59 05 f2 ab 00 	vmulsd 0xabf2(%rip),%xmm0,%xmm0        # 410720 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  405b2d:	00 
  405b2e:	c5 fb 59 05 ba ab 00 	vmulsd 0xabba(%rip),%xmm0,%xmm0        # 4106f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  405b35:	00 
  405b36:	c5 fb 59 05 ea ab 00 	vmulsd 0xabea(%rip),%xmm0,%xmm0        # 410728 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  405b3d:	00 
  405b3e:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  405b42:	40 0f 9b c6          	setnp  %sil
  405b46:	41 0f 45 f0          	cmovne %r8d,%esi
  405b4a:	40 20 32             	and    %sil,(%rdx)
  405b4d:	48 8b b5 b8 f6 ff ff 	mov    -0x948(%rbp),%rsi
  405b54:	80 3e 00             	cmpb   $0x0,(%rsi)
  405b57:	74 41                	je     405b9a <main+0x1aba>
  405b59:	4c 8b 85 90 f6 ff ff 	mov    -0x970(%rbp),%r8
  405b60:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  405b64:	c4 c1 4b 2a 00       	vcvtsi2sdl (%r8),%xmm6,%xmm0
  405b69:	c5 cb 2a d0          	vcvtsi2sd %eax,%xmm6,%xmm2
  405b6d:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  405b73:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  405b77:	c5 fb 59 05 a1 ab 00 	vmulsd 0xaba1(%rip),%xmm0,%xmm0        # 410720 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  405b7e:	00 
  405b7f:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  405b83:	c5 fb 59 05 9d ab 00 	vmulsd 0xab9d(%rip),%xmm0,%xmm0        # 410728 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  405b8a:	00 
  405b8b:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  405b8f:	41 0f 9b c0          	setnp  %r8b
  405b93:	45 0f 45 c1          	cmovne %r9d,%r8d
  405b97:	44 20 02             	and    %r8b,(%rdx)
  405b9a:	4c 8b 85 a0 f6 ff ff 	mov    -0x960(%rbp),%r8
  405ba1:	ba 01 00 00 00       	mov    $0x1,%edx
  405ba6:	48 c1 e2 22          	shl    $0x22,%rdx
  405baa:	41 80 38 00          	cmpb   $0x0,(%r8)
  405bae:	75 3e                	jne    405bee <main+0x1b0e>
  405bb0:	4c 8b 85 a8 f6 ff ff 	mov    -0x958(%rbp),%r8
  405bb7:	ba 01 00 00 00       	mov    $0x1,%edx
  405bbc:	48 c1 e2 23          	shl    $0x23,%rdx
  405bc0:	41 80 38 00          	cmpb   $0x0,(%r8)
  405bc4:	75 28                	jne    405bee <main+0x1b0e>
  405bc6:	ba 51 25 02 00       	mov    $0x22551,%edx
  405bcb:	48 c1 e2 0f          	shl    $0xf,%rdx
  405bcf:	80 3f 00             	cmpb   $0x0,(%rdi)
  405bd2:	75 1a                	jne    405bee <main+0x1b0e>
  405bd4:	80 3e 00             	cmpb   $0x0,(%rsi)
  405bd7:	0f 84 f2 09 00 00    	je     4065cf <main+0x24ef>
  405bdd:	48 8b 95 90 f6 ff ff 	mov    -0x970(%rbp),%rdx
  405be4:	48 63 12             	movslq (%rdx),%rdx
  405be7:	48 69 d2 00 b0 71 0b 	imul   $0xb71b000,%rdx,%rdx
  405bee:	48 0f af c2          	imul   %rdx,%rax
  405bf2:	e9 81 fc ff ff       	jmpq   405878 <main+0x1798>
  405bf7:	48 8b b5 f0 f2 ff ff 	mov    -0xd10(%rbp),%rsi
  405bfe:	bf 01 00 00 00       	mov    $0x1,%edi
  405c03:	4c 8b bd e0 f2 ff ff 	mov    -0xd20(%rbp),%r15
  405c0a:	c5 f9 7f 85 f0 f4 ff 	vmovdqa %xmm0,-0xb10(%rbp)
  405c11:	ff 
  405c12:	e8 89 d6 ff ff       	callq  4032a0 <clock_gettime@plt>
  405c17:	48 69 85 f0 f4 ff ff 	imul   $0x3b9aca00,-0xb10(%rbp),%rax
  405c1e:	00 ca 9a 3b 
  405c22:	48 8b bd f0 f2 ff ff 	mov    -0xd10(%rbp),%rdi
  405c29:	4c 89 fe             	mov    %r15,%rsi
  405c2c:	48 03 85 f8 f4 ff ff 	add    -0xb08(%rbp),%rax
  405c33:	48 89 85 d0 f2 ff ff 	mov    %rax,-0xd30(%rbp)
  405c3a:	49 89 c6             	mov    %rax,%r14
  405c3d:	e8 7e 87 00 00       	callq  40e3c0 <_ZNK8Counters4readEv>
  405c42:	0f b6 85 f0 f4 ff ff 	movzbl -0xb10(%rbp),%eax
  405c49:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  405c4d:	88 85 e0 f2 ff ff    	mov    %al,-0xd20(%rbp)
  405c53:	4c 89 f0             	mov    %r14,%rax
  405c56:	48 2b 85 f8 f2 ff ff 	sub    -0xd08(%rbp),%rax
  405c5d:	62 f1 df 08 7b c0    	vcvtusi2sd %rax,%xmm4,%xmm0
  405c63:	83 bd 00 f3 ff ff 00 	cmpl   $0x0,-0xd00(%rbp)
  405c6a:	c5 fb 59 3d a6 aa 00 	vmulsd 0xaaa6(%rip),%xmm0,%xmm7        # 410718 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  405c71:	00 
  405c72:	c4 c1 f9 7e fe       	vmovq  %xmm7,%r14
  405c77:	74 1d                	je     405c96 <main+0x1bb6>
  405c79:	ba 01 00 00 00       	mov    $0x1,%edx
  405c7e:	48 8d b5 2b f3 ff ff 	lea    -0xcd5(%rbp),%rsi
  405c85:	bf 80 32 41 00       	mov    $0x413280,%edi
  405c8a:	c6 85 2b f3 ff ff 2c 	movb   $0x2c,-0xcd5(%rbp)
  405c91:	e8 6a d6 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405c96:	ba 13 00 00 00       	mov    $0x13,%edx
  405c9b:	be 27 03 41 00       	mov    $0x410327,%esi
  405ca0:	bf 80 32 41 00       	mov    $0x413280,%edi
  405ca5:	e8 56 d6 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405caa:	c4 c1 f9 6e c6       	vmovq  %r14,%xmm0
  405caf:	bf 80 32 41 00       	mov    $0x413280,%edi
  405cb4:	e8 57 d7 ff ff       	callq  403410 <_ZNSo9_M_insertIdEERSoT_@plt>
  405cb9:	ba 0c 00 00 00       	mov    $0xc,%edx
  405cbe:	be 3b 03 41 00       	mov    $0x41033b,%esi
  405cc3:	48 89 c7             	mov    %rax,%rdi
  405cc6:	49 89 c6             	mov    %rax,%r14
  405cc9:	e8 32 d6 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405cce:	48 8b b5 f8 f2 ff ff 	mov    -0xd08(%rbp),%rsi
  405cd5:	4c 89 f7             	mov    %r14,%rdi
  405cd8:	e8 13 d5 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  405cdd:	ba 0a 00 00 00       	mov    $0xa,%edx
  405ce2:	be 48 03 41 00       	mov    $0x410348,%esi
  405ce7:	48 89 c7             	mov    %rax,%rdi
  405cea:	49 89 c6             	mov    %rax,%r14
  405ced:	e8 0e d6 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405cf2:	48 8b b5 d0 f2 ff ff 	mov    -0xd30(%rbp),%rsi
  405cf9:	4c 89 f7             	mov    %r14,%rdi
  405cfc:	e8 ef d4 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  405d01:	ba 14 00 00 00       	mov    $0x14,%edx
  405d06:	be 53 03 41 00       	mov    $0x410353,%esi
  405d0b:	48 89 c7             	mov    %rax,%rdi
  405d0e:	49 89 c6             	mov    %rax,%r14
  405d11:	e8 ea d5 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405d16:	48 8b b5 e8 f2 ff ff 	mov    -0xd18(%rbp),%rsi
  405d1d:	4c 89 f7             	mov    %r14,%rdi
  405d20:	e8 cb d4 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  405d25:	ba 0e 00 00 00       	mov    $0xe,%edx
  405d2a:	be 68 03 41 00       	mov    $0x410368,%esi
  405d2f:	48 89 c7             	mov    %rax,%rdi
  405d32:	49 89 c6             	mov    %rax,%r14
  405d35:	e8 c6 d5 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405d3a:	31 f6                	xor    %esi,%esi
  405d3c:	80 bd 20 f3 ff ff 00 	cmpb   $0x0,-0xce0(%rbp)
  405d43:	75 0b                	jne    405d50 <main+0x1c70>
  405d45:	80 bd 21 f3 ff ff 00 	cmpb   $0x0,-0xcdf(%rbp)
  405d4c:	49 0f 44 f4          	cmove  %r12,%rsi
  405d50:	4c 89 f7             	mov    %r14,%rdi
  405d53:	e8 98 d4 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  405d58:	ba 11 00 00 00       	mov    $0x11,%edx
  405d5d:	be 77 03 41 00       	mov    $0x410377,%esi
  405d62:	48 89 c7             	mov    %rax,%rdi
  405d65:	49 89 c6             	mov    %rax,%r14
  405d68:	e8 93 d5 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405d6d:	80 bd 21 f3 ff ff 00 	cmpb   $0x0,-0xcdf(%rbp)
  405d74:	75 20                	jne    405d96 <main+0x1cb6>
  405d76:	80 bd 9f f2 ff ff 00 	cmpb   $0x0,-0xd61(%rbp)
  405d7d:	75 0c                	jne    405d8b <main+0x1cab>
  405d7f:	45 31 ed             	xor    %r13d,%r13d
  405d82:	80 bd 1f f3 ff ff 00 	cmpb   $0x0,-0xce1(%rbp)
  405d89:	74 0b                	je     405d96 <main+0x1cb6>
  405d8b:	48 0f af 9d c8 f2 ff 	imul   -0xd38(%rbp),%rbx
  405d92:	ff 
  405d93:	49 89 dd             	mov    %rbx,%r13
  405d96:	4c 89 ee             	mov    %r13,%rsi
  405d99:	4c 89 f7             	mov    %r14,%rdi
  405d9c:	e8 4f d4 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  405da1:	ba 09 00 00 00       	mov    $0x9,%edx
  405da6:	be 89 03 41 00       	mov    $0x410389,%esi
  405dab:	48 89 c7             	mov    %rax,%rdi
  405dae:	49 89 c5             	mov    %rax,%r13
  405db1:	e8 4a d5 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405db6:	31 c0                	xor    %eax,%eax
  405db8:	80 bd 20 f3 ff ff 00 	cmpb   $0x0,-0xce0(%rbp)
  405dbf:	4c 0f 44 e0          	cmove  %rax,%r12
  405dc3:	4c 89 ef             	mov    %r13,%rdi
  405dc6:	4c 89 e6             	mov    %r12,%rsi
  405dc9:	e8 22 d4 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  405dce:	80 bd a0 f4 ff ff 00 	cmpb   $0x0,-0xb60(%rbp)
  405dd5:	74 0d                	je     405de4 <main+0x1d04>
  405dd7:	80 bd e0 f2 ff ff 00 	cmpb   $0x0,-0xd20(%rbp)
  405dde:	0f 85 b0 03 00 00    	jne    406194 <main+0x20b4>
  405de4:	ba 01 00 00 00       	mov    $0x1,%edx
  405de9:	48 8d b5 60 f4 ff ff 	lea    -0xba0(%rbp),%rsi
  405df0:	bf 80 32 41 00       	mov    $0x413280,%edi
  405df5:	c6 85 60 f4 ff ff 7d 	movb   $0x7d,-0xba0(%rbp)
  405dfc:	e8 ff d4 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405e01:	ff 85 00 f3 ff ff    	incl   -0xd00(%rbp)
  405e07:	8b 85 00 f3 ff ff    	mov    -0xd00(%rbp),%eax
  405e0d:	3b 85 b8 f2 ff ff    	cmp    -0xd48(%rbp),%eax
  405e13:	0f 8c 5e f8 ff ff    	jl     405677 <main+0x1597>
  405e19:	83 bd c0 f3 ff ff 00 	cmpl   $0x0,-0xc40(%rbp)
  405e20:	78 7c                	js     405e9e <main+0x1dbe>
  405e22:	48 8b 9d f0 f2 ff ff 	mov    -0xd10(%rbp),%rbx
  405e29:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  405e2d:	48 89 de             	mov    %rbx,%rsi
  405e30:	bf 01 00 00 00       	mov    $0x1,%edi
  405e35:	c5 f9 7f 85 f0 f4 ff 	vmovdqa %xmm0,-0xb10(%rbp)
  405e3c:	ff 
  405e3d:	e8 5e d4 ff ff       	callq  4032a0 <clock_gettime@plt>
  405e42:	48 69 85 f0 f4 ff ff 	imul   $0x3b9aca00,-0xb10(%rbp),%rax
  405e49:	00 ca 9a 3b 
  405e4d:	be 11 04 41 00       	mov    $0x410411,%esi
  405e52:	48 8d bd c0 f3 ff ff 	lea    -0xc40(%rbp),%rdi
  405e59:	48 03 85 f8 f4 ff ff 	add    -0xb08(%rbp),%rax
  405e60:	48 89 85 c8 f3 ff ff 	mov    %rax,-0xc38(%rbp)
  405e67:	e8 84 80 00 00       	callq  40def0 <_ZN11PerfControl4sendEPKc>
  405e6c:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  405e70:	48 89 de             	mov    %rbx,%rsi
  405e73:	bf 01 00 00 00       	mov    $0x1,%edi
  405e78:	c5 f9 7f 85 f0 f4 ff 	vmovdqa %xmm0,-0xb10(%rbp)
  405e7f:	ff 
  405e80:	e8 1b d4 ff ff       	callq  4032a0 <clock_gettime@plt>
  405e85:	48 69 85 f0 f4 ff ff 	imul   $0x3b9aca00,-0xb10(%rbp),%rax
  405e8c:	00 ca 9a 3b 
  405e90:	48 03 85 f8 f4 ff ff 	add    -0xb08(%rbp),%rax
  405e97:	48 89 85 d0 f3 ff ff 	mov    %rax,-0xc30(%rbp)
  405e9e:	80 bd bc f2 ff ff 00 	cmpb   $0x0,-0xd44(%rbp)
  405ea5:	0f b6 9d 1f f3 ff ff 	movzbl -0xce1(%rbp),%ebx
  405eac:	75 11                	jne    405ebf <main+0x1ddf>
  405eae:	80 bd 9f f2 ff ff 00 	cmpb   $0x0,-0xd61(%rbp)
  405eb5:	75 08                	jne    405ebf <main+0x1ddf>
  405eb7:	84 db                	test   %bl,%bl
  405eb9:	0f 84 41 04 00 00    	je     406300 <main+0x2220>
  405ebf:	48 8b 8d 38 f3 ff ff 	mov    -0xcc8(%rbp),%rcx
  405ec6:	b8 01 00 00 00       	mov    $0x1,%eax
  405ecb:	48 89 ca             	mov    %rcx,%rdx
  405ece:	48 c1 ea 0a          	shr    $0xa,%rdx
  405ed2:	48 0f 44 d0          	cmove  %rax,%rdx
  405ed6:	4c 8b 85 48 f3 ff ff 	mov    -0xcb8(%rbp),%r8
  405edd:	8b b5 2c f3 ff ff    	mov    -0xcd4(%rbp),%esi
  405ee3:	4c 8b 8d 50 f3 ff ff 	mov    -0xcb0(%rbp),%r9
  405eea:	48 8b bd 40 f3 ff ff 	mov    -0xcc0(%rbp),%rdi
  405ef1:	44 0f b6 9d 2a f3 ff 	movzbl -0xcd6(%rbp),%r11d
  405ef8:	ff 
  405ef9:	c5 fb 10 35 ff a7 00 	vmovsd 0xa7ff(%rip),%xmm6        # 410700 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  405f00:	00 
  405f01:	c5 fb 10 2d ef a7 00 	vmovsd 0xa7ef(%rip),%xmm5        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  405f08:	00 
  405f09:	c5 7b 10 05 8f a7 00 	vmovsd 0xa78f(%rip),%xmm8        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  405f10:	00 
  405f11:	c5 fa 7e 1d e7 a8 00 	vmovq  0xa8e7(%rip),%xmm3        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405f18:	00 
  405f19:	c5 fb 10 25 ef a7 00 	vmovsd 0xa7ef(%rip),%xmm4        # 410710 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  405f20:	00 
  405f21:	c5 fb 10 3d 2f a8 00 	vmovsd 0xa82f(%rip),%xmm7        # 410758 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x198>
  405f28:	00 
  405f29:	44 0f b6 a5 bc f2 ff 	movzbl -0xd44(%rbp),%r12d
  405f30:	ff 
  405f31:	45 31 d2             	xor    %r10d,%r10d
  405f34:	31 c0                	xor    %eax,%eax
  405f36:	eb 44                	jmp    405f7c <main+0x1e9c>
  405f38:	c4 c2 b9 b9 04 c1    	vfmadd231sd (%r9,%rax,8),%xmm8,%xmm0
  405f3e:	c5 fb 10 0c c7       	vmovsd (%rdi,%rax,8),%xmm1
  405f43:	45 31 d2             	xor    %r10d,%r10d
  405f46:	c5 f1 54 d3          	vandpd %xmm3,%xmm1,%xmm2
  405f4a:	c5 f9 2e e2          	vucomisd %xmm2,%xmm4
  405f4e:	72 10                	jb     405f60 <main+0x1e80>
  405f50:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
  405f54:	c5 f9 54 c3          	vandpd %xmm3,%xmm0,%xmm0
  405f58:	c5 f9 2f f8          	vcomisd %xmm0,%xmm7
  405f5c:	41 0f 97 c2          	seta   %r10b
  405f60:	c5 f3 58 8d 70 f3 ff 	vaddsd -0xc90(%rbp),%xmm1,%xmm1
  405f67:	ff 
  405f68:	45 21 d3             	and    %r10d,%r11d
  405f6b:	48 01 d0             	add    %rdx,%rax
  405f6e:	c5 fb 11 8d 70 f3 ff 	vmovsd %xmm1,-0xc90(%rbp)
  405f75:	ff 
  405f76:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  405f7c:	48 39 c1             	cmp    %rax,%rcx
  405f7f:	0f 86 6f 03 00 00    	jbe    4062f4 <main+0x2214>
  405f85:	c4 c1 7b 10 04 c0    	vmovsd (%r8,%rax,8),%xmm0
  405f8b:	45 84 e4             	test   %r12b,%r12b
  405f8e:	75 a8                	jne    405f38 <main+0x1e58>
  405f90:	84 db                	test   %bl,%bl
  405f92:	74 aa                	je     405f3e <main+0x1e5e>
  405f94:	45 31 d2             	xor    %r10d,%r10d
  405f97:	eb 08                	jmp    405fa1 <main+0x1ec1>
  405f99:	c4 e2 d1 99 c6       	vfmadd132sd %xmm6,%xmm5,%xmm0
  405f9e:	41 ff c2             	inc    %r10d
  405fa1:	44 39 d6             	cmp    %r10d,%esi
  405fa4:	7f f3                	jg     405f99 <main+0x1eb9>
  405fa6:	eb 96                	jmp    405f3e <main+0x1e5e>
  405fa8:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  405faf:	48 89 85 f0 f4 ff ff 	mov    %rax,-0xb10(%rbp)
  405fb6:	48 8d 85 18 f6 ff ff 	lea    -0x9e8(%rbp),%rax
  405fbd:	48 89 85 f8 f4 ff ff 	mov    %rax,-0xb08(%rbp)
  405fc4:	48 8d 85 20 f6 ff ff 	lea    -0x9e0(%rbp),%rax
  405fcb:	48 89 85 00 f5 ff ff 	mov    %rax,-0xb00(%rbp)
  405fd2:	31 c9                	xor    %ecx,%ecx
  405fd4:	48 8d 85 28 f6 ff ff 	lea    -0x9d8(%rbp),%rax
  405fdb:	31 d2                	xor    %edx,%edx
  405fdd:	4c 89 fe             	mov    %r15,%rsi
  405fe0:	bf 40 6e 40 00       	mov    $0x406e40,%edi
  405fe5:	48 89 85 08 f5 ff ff 	mov    %rax,-0xaf8(%rbp)
  405fec:	e8 cf d3 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  405ff1:	31 c0                	xor    %eax,%eax
  405ff3:	e9 80 f8 ff ff       	jmpq   405878 <main+0x1798>
  405ff8:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  405fff:	48 89 85 f0 f4 ff ff 	mov    %rax,-0xb10(%rbp)
  406006:	48 8d 85 18 f6 ff ff 	lea    -0x9e8(%rbp),%rax
  40600d:	48 89 85 f8 f4 ff ff 	mov    %rax,-0xb08(%rbp)
  406014:	48 8d 85 20 f6 ff ff 	lea    -0x9e0(%rbp),%rax
  40601b:	48 89 85 00 f5 ff ff 	mov    %rax,-0xb00(%rbp)
  406022:	31 c9                	xor    %ecx,%ecx
  406024:	48 8d 85 28 f6 ff ff 	lea    -0x9d8(%rbp),%rax
  40602b:	31 d2                	xor    %edx,%edx
  40602d:	4c 89 fe             	mov    %r15,%rsi
  406030:	bf 30 a7 40 00       	mov    $0x40a730,%edi
  406035:	48 89 85 08 f5 ff ff 	mov    %rax,-0xaf8(%rbp)
  40603c:	e8 7f d3 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  406041:	31 c0                	xor    %eax,%eax
  406043:	e9 30 f8 ff ff       	jmpq   405878 <main+0x1798>
  406048:	c5 fd 6f b5 70 f2 ff 	vmovdqa -0xd90(%rbp),%ymm6
  40604f:	ff 
  406050:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  406054:	31 c9                	xor    %ecx,%ecx
  406056:	31 d2                	xor    %edx,%edx
  406058:	4c 89 fe             	mov    %r15,%rsi
  40605b:	bf 90 6f 40 00       	mov    $0x406f90,%edi
  406060:	88 85 b4 f2 ff ff    	mov    %al,-0xd4c(%rbp)
  406066:	48 c7 85 18 f5 ff ff 	movq   $0x0,-0xae8(%rbp)
  40606d:	00 00 00 00 
  406071:	4c 89 b5 f0 f4 ff ff 	mov    %r14,-0xb10(%rbp)
  406078:	c5 f9 29 85 20 f5 ff 	vmovapd %xmm0,-0xae0(%rbp)
  40607f:	ff 
  406080:	c5 fe 7f b5 f8 f4 ff 	vmovdqu %ymm6,-0xb08(%rbp)
  406087:	ff 
  406088:	c5 f8 77             	vzeroupper 
  40608b:	e8 30 d3 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  406090:	c5 fb 10 85 20 f5 ff 	vmovsd -0xae0(%rbp),%xmm0
  406097:	ff 
  406098:	c5 fb 10 1d 70 a6 00 	vmovsd 0xa670(%rip),%xmm3        # 410710 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  40609f:	00 
  4060a0:	c5 f9 54 15 58 a7 00 	vandpd 0xa758(%rip),%xmm0,%xmm2        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  4060a7:	00 
  4060a8:	48 8b 95 70 f6 ff ff 	mov    -0x990(%rbp),%rdx
  4060af:	c5 f9 2e da          	vucomisd %xmm2,%xmm3
  4060b3:	c5 fb 10 8d 28 f5 ff 	vmovsd -0xad8(%rbp),%xmm1
  4060ba:	ff 
  4060bb:	48 8b 8d 18 f5 ff ff 	mov    -0xae8(%rbp),%rcx
  4060c2:	0f b6 85 b4 f2 ff ff 	movzbl -0xd4c(%rbp),%eax
  4060c9:	c5 fb 11 02          	vmovsd %xmm0,(%rdx)
  4060cd:	72 23                	jb     4060f2 <main+0x2012>
  4060cf:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
  4060d3:	c5 f1 54 0d 25 a7 00 	vandpd 0xa725(%rip),%xmm1,%xmm1        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  4060da:	00 
  4060db:	c5 f3 59 0d 35 a6 00 	vmulsd 0xa635(%rip),%xmm1,%xmm1        # 410718 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  4060e2:	00 
  4060e3:	c5 f9 54 05 15 a7 00 	vandpd 0xa715(%rip),%xmm0,%xmm0        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  4060ea:	00 
  4060eb:	c5 f9 2f c8          	vcomisd %xmm0,%xmm1
  4060ef:	0f 93 c0             	setae  %al
  4060f2:	48 8b 95 78 f6 ff ff 	mov    -0x988(%rbp),%rdx
  4060f9:	20 02                	and    %al,(%rdx)
  4060fb:	48 8b 85 80 f6 ff ff 	mov    -0x980(%rbp),%rax
  406102:	48 89 08             	mov    %rcx,(%rax)
  406105:	31 c0                	xor    %eax,%eax
  406107:	e9 6c f7 ff ff       	jmpq   405878 <main+0x1798>
  40610c:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  406110:	c5 fb 2a c2          	vcvtsi2sd %edx,%xmm0,%xmm0
  406114:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  406119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406120:	c4 e2 e1 b9 85 e8 f2 	vfmadd231sd -0xd18(%rbp),%xmm3,%xmm0
  406127:	ff ff 
  406129:	ff c8                	dec    %eax
  40612b:	75 f3                	jne    406120 <main+0x2040>
  40612d:	62 b2 fd 08 b9 e4    	vfmadd231sd %xmm20,%xmm0,%xmm4
  406133:	e9 77 f0 ff ff       	jmpq   4051af <main+0x10cf>
  406138:	89 bd 08 f5 ff ff    	mov    %edi,-0xaf8(%rbp)
  40613e:	48 89 b5 00 f5 ff ff 	mov    %rsi,-0xb00(%rbp)
  406145:	31 c9                	xor    %ecx,%ecx
  406147:	31 d2                	xor    %edx,%edx
  406149:	4c 89 fe             	mov    %r15,%rsi
  40614c:	bf b0 a9 40 00       	mov    $0x40a9b0,%edi
  406151:	c5 f9 7f 85 f0 f4 ff 	vmovdqa %xmm0,-0xb10(%rbp)
  406158:	ff 
  406159:	e8 62 d2 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40615e:	e9 fa f6 ff ff       	jmpq   40585d <main+0x177d>
  406163:	89 bd 08 f5 ff ff    	mov    %edi,-0xaf8(%rbp)
  406169:	48 89 b5 00 f5 ff ff 	mov    %rsi,-0xb00(%rbp)
  406170:	48 89 8d f8 f4 ff ff 	mov    %rcx,-0xb08(%rbp)
  406177:	48 89 95 f0 f4 ff ff 	mov    %rdx,-0xb10(%rbp)
  40617e:	31 c9                	xor    %ecx,%ecx
  406180:	31 d2                	xor    %edx,%edx
  406182:	4c 89 fe             	mov    %r15,%rsi
  406185:	bf d0 a7 40 00       	mov    $0x40a7d0,%edi
  40618a:	e8 31 d2 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40618f:	e9 c9 f6 ff ff       	jmpq   40585d <main+0x177d>
  406194:	ba 0a 00 00 00       	mov    $0xa,%edx
  406199:	be 93 03 41 00       	mov    $0x410393,%esi
  40619e:	bf 80 32 41 00       	mov    $0x413280,%edi
  4061a3:	e8 58 d1 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4061a8:	c5 fb 10 85 f8 f4 ff 	vmovsd -0xb08(%rbp),%xmm0
  4061af:	ff 
  4061b0:	bf 80 32 41 00       	mov    $0x413280,%edi
  4061b5:	c5 fb 5c 85 a8 f4 ff 	vsubsd -0xb58(%rbp),%xmm0,%xmm0
  4061bc:	ff 
  4061bd:	e8 4e d2 ff ff       	callq  403410 <_ZNSo9_M_insertIdEERSoT_@plt>
  4061c2:	ba 13 00 00 00       	mov    $0x13,%edx
  4061c7:	be 9e 03 41 00       	mov    $0x41039e,%esi
  4061cc:	48 89 c7             	mov    %rax,%rdi
  4061cf:	49 89 c4             	mov    %rax,%r12
  4061d2:	e8 29 d1 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4061d7:	c5 fb 10 8d 00 f5 ff 	vmovsd -0xb00(%rbp),%xmm1
  4061de:	ff 
  4061df:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  4061e3:	c5 f9 2f e1          	vcomisd %xmm1,%xmm4
  4061e7:	c5 fb 10 05 c9 a5 00 	vmovsd 0xa5c9(%rip),%xmm0        # 4107b8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  4061ee:	00 
  4061ef:	77 08                	ja     4061f9 <main+0x2119>
  4061f1:	c5 f3 5c 85 b0 f4 ff 	vsubsd -0xb50(%rbp),%xmm1,%xmm0
  4061f8:	ff 
  4061f9:	4c 89 e7             	mov    %r12,%rdi
  4061fc:	e8 0f d2 ff ff       	callq  403410 <_ZNSo9_M_insertIdEERSoT_@plt>
  406201:	ba 11 00 00 00       	mov    $0x11,%edx
  406206:	be b2 03 41 00       	mov    $0x4103b2,%esi
  40620b:	48 89 c7             	mov    %rax,%rdi
  40620e:	49 89 c4             	mov    %rax,%r12
  406211:	e8 ea d0 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  406216:	c5 fb 10 85 08 f5 ff 	vmovsd -0xaf8(%rbp),%xmm0
  40621d:	ff 
  40621e:	4c 89 e7             	mov    %r12,%rdi
  406221:	c5 fb 5d 85 b8 f4 ff 	vminsd -0xb48(%rbp),%xmm0,%xmm0
  406228:	ff 
  406229:	e8 e2 d1 ff ff       	callq  403410 <_ZNSo9_M_insertIdEERSoT_@plt>
  40622e:	ba 13 00 00 00       	mov    $0x13,%edx
  406233:	be c4 03 41 00       	mov    $0x4103c4,%esi
  406238:	48 89 c7             	mov    %rax,%rdi
  40623b:	49 89 c4             	mov    %rax,%r12
  40623e:	e8 bd d0 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  406243:	8b b5 30 f5 ff ff    	mov    -0xad0(%rbp),%esi
  406249:	4c 89 e7             	mov    %r12,%rdi
  40624c:	e8 0f d2 ff ff       	callq  403460 <_ZNSolsEi@plt>
  406251:	c5 fb 10 85 c0 f4 ff 	vmovsd -0xb40(%rbp),%xmm0
  406258:	ff 
  406259:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  40625d:	c5 f9 2f c7          	vcomisd %xmm7,%xmm0
  406261:	c5 fb 10 8d 10 f5 ff 	vmovsd -0xaf0(%rbp),%xmm1
  406268:	ff 
  406269:	72 0a                	jb     406275 <main+0x2195>
  40626b:	c5 f9 2f cf          	vcomisd %xmm7,%xmm1
  40626f:	0f 83 4b 03 00 00    	jae    4065c0 <main+0x24e0>
  406275:	c5 fb 10 85 c8 f4 ff 	vmovsd -0xb38(%rbp),%xmm0
  40627c:	ff 
  40627d:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  406281:	c5 f9 2f c7          	vcomisd %xmm7,%xmm0
  406285:	c5 fb 10 8d 18 f5 ff 	vmovsd -0xae8(%rbp),%xmm1
  40628c:	ff 
  40628d:	72 0a                	jb     406299 <main+0x21b9>
  40628f:	c5 f9 2f cf          	vcomisd %xmm7,%xmm1
  406293:	0f 83 09 03 00 00    	jae    4065a2 <main+0x24c2>
  406299:	c5 fb 10 85 d0 f4 ff 	vmovsd -0xb30(%rbp),%xmm0
  4062a0:	ff 
  4062a1:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  4062a5:	c5 f9 2f c7          	vcomisd %xmm7,%xmm0
  4062a9:	c5 fb 10 8d 20 f5 ff 	vmovsd -0xae0(%rbp),%xmm1
  4062b0:	ff 
  4062b1:	72 0a                	jb     4062bd <main+0x21dd>
  4062b3:	c5 f9 2f cf          	vcomisd %xmm7,%xmm1
  4062b7:	0f 83 f4 02 00 00    	jae    4065b1 <main+0x24d1>
  4062bd:	c5 fb 10 85 d8 f4 ff 	vmovsd -0xb28(%rbp),%xmm0
  4062c4:	ff 
  4062c5:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  4062c9:	c5 f9 2f c4          	vcomisd %xmm4,%xmm0
  4062cd:	c5 fb 10 8d 28 f5 ff 	vmovsd -0xad8(%rbp),%xmm1
  4062d4:	ff 
  4062d5:	0f 82 09 fb ff ff    	jb     405de4 <main+0x1d04>
  4062db:	c5 f9 2f cc          	vcomisd %xmm4,%xmm1
  4062df:	0f 82 ff fa ff ff    	jb     405de4 <main+0x1d04>
  4062e5:	bf 00 04 41 00       	mov    $0x410400,%edi
  4062ea:	e8 a1 4f 00 00       	callq  40b290 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  4062ef:	e9 f0 fa ff ff       	jmpq   405de4 <main+0x1d04>
  4062f4:	45 84 d2             	test   %r10b,%r10b
  4062f7:	74 07                	je     406300 <main+0x2220>
  4062f9:	44 88 9d 2a f3 ff ff 	mov    %r11b,-0xcd6(%rbp)
  406300:	80 bd 20 f3 ff ff 00 	cmpb   $0x0,-0xce0(%rbp)
  406307:	74 57                	je     406360 <main+0x2280>
  406309:	48 8b 85 58 f3 ff ff 	mov    -0xca8(%rbp),%rax
  406310:	48 8b 9d a8 f2 ff ff 	mov    -0xd58(%rbp),%rbx
  406317:	0f b6 8d 2a f3 ff ff 	movzbl -0xcd6(%rbp),%ecx
  40631e:	31 d2                	xor    %edx,%edx
  406320:	48 39 d8             	cmp    %rbx,%rax
  406323:	72 17                	jb     40633c <main+0x225c>
  406325:	be 06 00 00 00       	mov    $0x6,%esi
  40632a:	c4 e2 c9 f7 95 38 f3 	shlx   %rsi,-0xcc8(%rbp),%rdx
  406331:	ff ff 
  406333:	48 01 da             	add    %rbx,%rdx
  406336:	48 39 d0             	cmp    %rdx,%rax
  406339:	0f 92 c2             	setb   %dl
  40633c:	48 2b 85 a8 f2 ff ff 	sub    -0xd58(%rbp),%rax
  406343:	48 c1 f8 06          	sar    $0x6,%rax
  406347:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  40634b:	c4 e1 cb 2a c0       	vcvtsi2sd %rax,%xmm6,%xmm0
  406350:	21 ca                	and    %ecx,%edx
  406352:	88 95 2a f3 ff ff    	mov    %dl,-0xcd6(%rbp)
  406358:	c5 fb 11 85 70 f3 ff 	vmovsd %xmm0,-0xc90(%rbp)
  40635f:	ff 
  406360:	ba 01 00 00 00       	mov    $0x1,%edx
  406365:	48 8d b5 80 f4 ff ff 	lea    -0xb80(%rbp),%rsi
  40636c:	bf 80 32 41 00       	mov    $0x413280,%edi
  406371:	c6 85 80 f4 ff ff 5d 	movb   $0x5d,-0xb80(%rbp)
  406378:	e8 83 cf ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40637d:	83 bd c0 f3 ff ff 00 	cmpl   $0x0,-0xc40(%rbp)
  406384:	78 6a                	js     4063f0 <main+0x2310>
  406386:	ba 16 00 00 00       	mov    $0x16,%edx
  40638b:	be 1a 04 41 00       	mov    $0x41041a,%esi
  406390:	bf 80 32 41 00       	mov    $0x413280,%edi
  406395:	e8 66 cf ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40639a:	48 8b b5 c8 f3 ff ff 	mov    -0xc38(%rbp),%rsi
  4063a1:	bf 80 32 41 00       	mov    $0x413280,%edi
  4063a6:	e8 45 ce ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  4063ab:	48 8b b5 a0 f2 ff ff 	mov    -0xd60(%rbp),%rsi
  4063b2:	48 89 c7             	mov    %rax,%rdi
  4063b5:	ba 01 00 00 00       	mov    $0x1,%edx
  4063ba:	c6 85 a0 f4 ff ff 2c 	movb   $0x2c,-0xb60(%rbp)
  4063c1:	e8 3a cf ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4063c6:	48 8b b5 d0 f3 ff ff 	mov    -0xc30(%rbp),%rsi
  4063cd:	48 89 c7             	mov    %rax,%rdi
  4063d0:	e8 1b ce ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  4063d5:	48 8b b5 f0 f2 ff ff 	mov    -0xd10(%rbp),%rsi
  4063dc:	48 89 c7             	mov    %rax,%rdi
  4063df:	ba 01 00 00 00       	mov    $0x1,%edx
  4063e4:	c6 85 f0 f4 ff ff 5d 	movb   $0x5d,-0xb10(%rbp)
  4063eb:	e8 10 cf ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4063f0:	ba 0c 00 00 00       	mov    $0xc,%edx
  4063f5:	be 31 04 41 00       	mov    $0x410431,%esi
  4063fa:	bf 80 32 41 00       	mov    $0x413280,%edi
  4063ff:	e8 fc ce ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  406404:	c5 fb 10 85 70 f3 ff 	vmovsd -0xc90(%rbp),%xmm0
  40640b:	ff 
  40640c:	bf 80 32 41 00       	mov    $0x413280,%edi
  406411:	e8 fa cf ff ff       	callq  403410 <_ZNSo9_M_insertIdEERSoT_@plt>
  406416:	ba 09 00 00 00       	mov    $0x9,%edx
  40641b:	be 3e 04 41 00       	mov    $0x41043e,%esi
  406420:	48 89 c7             	mov    %rax,%rdi
  406423:	49 89 c4             	mov    %rax,%r12
  406426:	e8 d5 ce ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40642b:	80 bd 2a f3 ff ff 00 	cmpb   $0x0,-0xcd6(%rbp)
  406432:	be 6a 01 41 00       	mov    $0x41016a,%esi
  406437:	b8 6f 01 41 00       	mov    $0x41016f,%eax
  40643c:	48 0f 44 f0          	cmove  %rax,%rsi
  406440:	4c 89 e7             	mov    %r12,%rdi
  406443:	e8 68 ce ff ff       	callq  4032b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  406448:	48 89 c7             	mov    %rax,%rdi
  40644b:	be 48 04 41 00       	mov    $0x410448,%esi
  406450:	e8 5b ce ff ff       	callq  4032b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  406455:	48 8b bd 40 f3 ff ff 	mov    -0xcc0(%rbp),%rdi
  40645c:	e8 bf ce ff ff       	callq  403320 <free@plt>
  406461:	48 8b bd 48 f3 ff ff 	mov    -0xcb8(%rbp),%rdi
  406468:	e8 b3 ce ff ff       	callq  403320 <free@plt>
  40646d:	48 8b bd 50 f3 ff ff 	mov    -0xcb0(%rbp),%rdi
  406474:	e8 a7 ce ff ff       	callq  403320 <free@plt>
  406479:	48 8b bd a8 f2 ff ff 	mov    -0xd58(%rbp),%rdi
  406480:	e8 9b ce ff ff       	callq  403320 <free@plt>
  406485:	48 8b 9d 80 f3 ff ff 	mov    -0xc80(%rbp),%rbx
  40648c:	4c 8b a5 88 f3 ff ff 	mov    -0xc78(%rbp),%r12
  406493:	eb 0c                	jmp    4064a1 <main+0x23c1>
  406495:	48 8b 3b             	mov    (%rbx),%rdi
  406498:	48 83 c3 08          	add    $0x8,%rbx
  40649c:	e8 7f ce ff ff       	callq  403320 <free@plt>
  4064a1:	49 39 dc             	cmp    %rbx,%r12
  4064a4:	75 ef                	jne    406495 <main+0x23b5>
  4064a6:	44 0f b6 a5 2a f3 ff 	movzbl -0xcd6(%rbp),%r12d
  4064ad:	ff 
  4064ae:	48 8b bd 40 f4 ff ff 	mov    -0xbc0(%rbp),%rdi
  4064b5:	41 83 f4 01          	xor    $0x1,%r12d
  4064b9:	48 8d 85 50 f4 ff ff 	lea    -0xbb0(%rbp),%rax
  4064c0:	45 0f b6 e4          	movzbl %r12b,%r12d
  4064c4:	48 39 c7             	cmp    %rax,%rdi
  4064c7:	74 10                	je     4064d9 <main+0x23f9>
  4064c9:	48 8b 85 50 f4 ff ff 	mov    -0xbb0(%rbp),%rax
  4064d0:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4064d4:	e8 f7 cd ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4064d9:	48 8b bd 20 f4 ff ff 	mov    -0xbe0(%rbp),%rdi
  4064e0:	48 8d 85 30 f4 ff ff 	lea    -0xbd0(%rbp),%rax
  4064e7:	48 39 c7             	cmp    %rax,%rdi
  4064ea:	74 10                	je     4064fc <main+0x241c>
  4064ec:	48 8b 85 30 f4 ff ff 	mov    -0xbd0(%rbp),%rax
  4064f3:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4064f7:	e8 d4 cd ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4064fc:	48 8b bd 00 f4 ff ff 	mov    -0xc00(%rbp),%rdi
  406503:	48 8d 85 10 f4 ff ff 	lea    -0xbf0(%rbp),%rax
  40650a:	48 39 c7             	cmp    %rax,%rdi
  40650d:	74 10                	je     40651f <main+0x243f>
  40650f:	48 8b 85 10 f4 ff ff 	mov    -0xbf0(%rbp),%rax
  406516:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40651a:	e8 b1 cd ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40651f:	48 8d bd c0 f3 ff ff 	lea    -0xc40(%rbp),%rdi
  406526:	e8 35 7c 00 00       	callq  40e160 <_ZN11PerfControlD1Ev>
  40652b:	48 8b bd a0 f3 ff ff 	mov    -0xc60(%rbp),%rdi
  406532:	48 8b b5 b0 f3 ff ff 	mov    -0xc50(%rbp),%rsi
  406539:	48 29 fe             	sub    %rdi,%rsi
  40653c:	48 85 ff             	test   %rdi,%rdi
  40653f:	74 05                	je     406546 <main+0x2466>
  406541:	e8 8a cd ff ff       	callq  4032d0 <_ZdlPvm@plt>
  406546:	48 8b bd 80 f3 ff ff 	mov    -0xc80(%rbp),%rdi
  40654d:	48 85 ff             	test   %rdi,%rdi
  406550:	74 0f                	je     406561 <main+0x2481>
  406552:	48 8b b5 90 f3 ff ff 	mov    -0xc70(%rbp),%rsi
  406559:	48 29 fe             	sub    %rdi,%rsi
  40655c:	e8 6f cd ff ff       	callq  4032d0 <_ZdlPvm@plt>
  406561:	4c 89 ff             	mov    %r15,%rdi
  406564:	e8 77 82 00 00       	callq  40e7e0 <_ZN8CountersD1Ev>
  406569:	e9 36 e0 ff ff       	jmpq   4045a4 <main+0x4c4>
  40656e:	48 85 f6             	test   %rsi,%rsi
  406571:	0f 85 90 e5 ff ff    	jne    404b07 <main+0xa27>
  406577:	48 c7 85 38 f3 ff ff 	movq   $0x0,-0xcc8(%rbp)
  40657e:	00 00 00 00 
  406582:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406588:	eb bc                	jmp    406546 <main+0x2466>
  40658a:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406590:	eb 99                	jmp    40652b <main+0x244b>
  406592:	48 c7 85 a8 f2 ff ff 	movq   $0x0,-0xd58(%rbp)
  406599:	00 00 00 00 
  40659d:	e9 2a ea ff ff       	jmpq   404fcc <main+0xeec>
  4065a2:	bf e5 03 41 00       	mov    $0x4103e5,%edi
  4065a7:	e8 e4 4c 00 00       	callq  40b290 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  4065ac:	e9 e8 fc ff ff       	jmpq   406299 <main+0x21b9>
  4065b1:	bf f0 03 41 00       	mov    $0x4103f0,%edi
  4065b6:	e8 d5 4c 00 00       	callq  40b290 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  4065bb:	e9 fd fc ff ff       	jmpq   4062bd <main+0x21dd>
  4065c0:	bf d8 03 41 00       	mov    $0x4103d8,%edi
  4065c5:	e8 c6 4c 00 00       	callq  40b290 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  4065ca:	e9 a6 fc ff ff       	jmpq   406275 <main+0x2195>
  4065cf:	80 39 01             	cmpb   $0x1,(%rcx)
  4065d2:	48 19 d2             	sbb    %rdx,%rdx
  4065d5:	48 81 e2 00 f0 aa dd 	and    $0xffffffffddaaf000,%rdx
  4065dc:	48 81 c2 00 20 aa 44 	add    $0x44aa2000,%rdx
  4065e3:	e9 06 f6 ff ff       	jmpq   405bee <main+0x1b0e>
  4065e8:	48 63 8d 34 f3 ff ff 	movslq -0xccc(%rbp),%rcx
  4065ef:	48 8b 85 c8 f2 ff ff 	mov    -0xd38(%rbp),%rax
  4065f6:	31 d2                	xor    %edx,%edx
  4065f8:	48 f7 f1             	div    %rcx
  4065fb:	48 25 00 fe ff ff    	and    $0xfffffffffffffe00,%rax
  406601:	e9 37 e7 ff ff       	jmpq   404d3d <main+0xc5d>
  406606:	be e6 01 41 00       	mov    $0x4101e6,%esi
  40660b:	48 8d bd c0 f3 ff ff 	lea    -0xc40(%rbp),%rdi
  406612:	e8 d9 78 00 00       	callq  40def0 <_ZN11PerfControl4sendEPKc>
  406617:	e9 55 ec ff ff       	jmpq   405271 <main+0x1191>
  40661c:	31 f6                	xor    %esi,%esi
  40661e:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  406625:	e8 06 47 00 00       	callq  40ad30 <_ZZ4mainENKUlmE_clEm>
  40662a:	31 f6                	xor    %esi,%esi
  40662c:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  406633:	e8 f8 46 00 00       	callq  40ad30 <_ZZ4mainENKUlmE_clEm>
  406638:	e9 41 ec ff ff       	jmpq   40527e <main+0x119e>
  40663d:	be ee 01 41 00       	mov    $0x4101ee,%esi
  406642:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  406649:	e8 b2 4c 00 00       	callq  40b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40664e:	e9 e9 ed ff ff       	jmpq   40543c <main+0x135c>
  406653:	be 01 02 41 00       	mov    $0x410201,%esi
  406658:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  40665f:	e8 9c 4c 00 00       	callq  40b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  406664:	e9 d3 ed ff ff       	jmpq   40543c <main+0x135c>
  406669:	8b b5 30 f3 ff ff    	mov    -0xcd0(%rbp),%esi
  40666f:	48 8d bd 60 f4 ff ff 	lea    -0xba0(%rbp),%rdi
  406676:	e8 35 76 00 00       	callq  40dcb0 <_ZNSt7__cxx119to_stringEi>
  40667b:	48 8d 95 60 f4 ff ff 	lea    -0xba0(%rbp),%rdx
  406682:	be 2f 02 41 00       	mov    $0x41022f,%esi
  406687:	48 8d bd 80 f4 ff ff 	lea    -0xb80(%rbp),%rdi
  40668e:	e8 1d 83 00 00       	callq  40e9b0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>
  406693:	ba 27 02 41 00       	mov    $0x410227,%edx
  406698:	48 8d b5 80 f4 ff ff 	lea    -0xb80(%rbp),%rsi
  40669f:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  4066a6:	e8 85 83 00 00       	callq  40ea30 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
  4066ab:	48 8b bd 80 f4 ff ff 	mov    -0xb80(%rbp),%rdi
  4066b2:	48 8d 85 90 f4 ff ff 	lea    -0xb70(%rbp),%rax
  4066b9:	48 39 c7             	cmp    %rax,%rdi
  4066bc:	74 10                	je     4066ce <main+0x25ee>
  4066be:	48 8b 85 90 f4 ff ff 	mov    -0xb70(%rbp),%rax
  4066c5:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4066c9:	e8 02 cc ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4066ce:	48 8b bd 60 f4 ff ff 	mov    -0xba0(%rbp),%rdi
  4066d5:	48 8d 85 70 f4 ff ff 	lea    -0xb90(%rbp),%rax
  4066dc:	48 39 c7             	cmp    %rax,%rdi
  4066df:	0f 84 57 ed ff ff    	je     40543c <main+0x135c>
  4066e5:	48 8b 85 70 f4 ff ff 	mov    -0xb90(%rbp),%rax
  4066ec:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4066f0:	e8 db cb ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4066f5:	e9 42 ed ff ff       	jmpq   40543c <main+0x135c>
  4066fa:	be 19 02 41 00       	mov    $0x410219,%esi
  4066ff:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  406706:	e8 f5 4b 00 00       	callq  40b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40670b:	e9 2c ed ff ff       	jmpq   40543c <main+0x135c>
  406710:	be 3c 02 41 00       	mov    $0x41023c,%esi
  406715:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  40671c:	e8 df 4b 00 00       	callq  40b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  406721:	e9 16 ed ff ff       	jmpq   40543c <main+0x135c>
  406726:	83 bd b4 f2 ff ff 00 	cmpl   $0x0,-0xd4c(%rbp)
  40672d:	75 7c                	jne    4067ab <main+0x26cb>
  40672f:	c6 85 bc f2 ff ff 00 	movb   $0x0,-0xd44(%rbp)
  406736:	b8 08 00 00 00       	mov    $0x8,%eax
  40673b:	e9 76 e2 ff ff       	jmpq   4049b6 <main+0x8d6>
  406740:	48 c7 85 00 f3 ff ff 	movq   $0x0,-0xd00(%rbp)
  406747:	00 00 00 00 
  40674b:	45 31 c0             	xor    %r8d,%r8d
  40674e:	31 ff                	xor    %edi,%edi
  406750:	e9 54 e7 ff ff       	jmpq   404ea9 <main+0xdc9>
  406755:	bf ae 01 41 00       	mov    $0x4101ae,%edi
  40675a:	e8 41 cc ff ff       	callq  4033a0 <_ZSt20__throw_out_of_rangePKc@plt>
  40675f:	bf ae 01 41 00       	mov    $0x4101ae,%edi
  406764:	e8 47 ca ff ff       	callq  4031b0 <_ZSt24__throw_invalid_argumentPKc@plt>
  406769:	bf 50 04 41 00       	mov    $0x410450,%edi
  40676e:	e8 8d ca ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  406773:	bf 50 04 41 00       	mov    $0x410450,%edi
  406778:	e8 83 ca ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40677d:	4c 89 ef             	mov    %r13,%rdi
  406780:	e9 74 db ff ff       	jmpq   4042f9 <main+0x219>
  406785:	bf 60 05 41 00       	mov    $0x410560,%edi
  40678a:	e8 e1 c9 ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40678f:	8b 9d b4 f2 ff ff    	mov    -0xd4c(%rbp),%ebx
  406795:	89 9d 30 f3 ff ff    	mov    %ebx,-0xcd0(%rbp)
  40679b:	85 c0                	test   %eax,%eax
  40679d:	0f 85 fb dd ff ff    	jne    40459e <main+0x4be>
  4067a3:	45 31 ed             	xor    %r13d,%r13d
  4067a6:	e9 f2 e3 ff ff       	jmpq   404b9d <main+0xabd>
  4067ab:	8b 9d b4 f2 ff ff    	mov    -0xd4c(%rbp),%ebx
  4067b1:	c6 85 bc f2 ff ff 00 	movb   $0x0,-0xd44(%rbp)
  4067b8:	89 9d 30 f3 ff ff    	mov    %ebx,-0xcd0(%rbp)
  4067be:	85 c0                	test   %eax,%eax
  4067c0:	0f 84 d7 e3 ff ff    	je     404b9d <main+0xabd>
  4067c6:	e9 fe e3 ff ff       	jmpq   404bc9 <main+0xae9>
  4067cb:	48 8d 85 a0 f4 ff ff 	lea    -0xb60(%rbp),%rax
  4067d2:	8b b5 30 f3 ff ff    	mov    -0xcd0(%rbp),%esi
  4067d8:	48 89 c7             	mov    %rax,%rdi
  4067db:	48 89 85 a0 f2 ff ff 	mov    %rax,-0xd60(%rbp)
  4067e2:	e8 c9 74 00 00       	callq  40dcb0 <_ZNSt7__cxx119to_stringEi>
  4067e7:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  4067ee:	48 8b 95 a0 f2 ff ff 	mov    -0xd60(%rbp),%rdx
  4067f5:	be 54 02 41 00       	mov    $0x410254,%esi
  4067fa:	48 89 c7             	mov    %rax,%rdi
  4067fd:	48 89 85 f0 f2 ff ff 	mov    %rax,-0xd10(%rbp)
  406804:	e8 a7 81 00 00       	callq  40e9b0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>
  406809:	48 8b b5 f0 f2 ff ff 	mov    -0xd10(%rbp),%rsi
  406810:	ba 5c 02 41 00       	mov    $0x41025c,%edx
  406815:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  40681c:	e8 0f 82 00 00       	callq  40ea30 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
  406821:	48 8b bd f0 f4 ff ff 	mov    -0xb10(%rbp),%rdi
  406828:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  40682f:	48 39 c7             	cmp    %rax,%rdi
  406832:	74 10                	je     406844 <main+0x2764>
  406834:	48 8b 85 00 f5 ff ff 	mov    -0xb00(%rbp),%rax
  40683b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40683f:	e8 8c ca ff ff       	callq  4032d0 <_ZdlPvm@plt>
  406844:	48 8b bd a0 f4 ff ff 	mov    -0xb60(%rbp),%rdi
  40684b:	48 8d 85 b0 f4 ff ff 	lea    -0xb50(%rbp),%rax
  406852:	48 39 c7             	cmp    %rax,%rdi
  406855:	0f 84 e1 eb ff ff    	je     40543c <main+0x135c>
  40685b:	48 8b 85 b0 f4 ff ff 	mov    -0xb50(%rbp),%rax
  406862:	48 8d 70 01          	lea    0x1(%rax),%rsi
  406866:	e8 65 ca ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40686b:	e9 cc eb ff ff       	jmpq   40543c <main+0x135c>
  406870:	be a8 04 41 00       	mov    $0x4104a8,%esi
  406875:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  40687c:	e8 7f 4a 00 00       	callq  40b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  406881:	e9 b6 eb ff ff       	jmpq   40543c <main+0x135c>
  406886:	bf 9d 01 41 00       	mov    $0x41019d,%edi
  40688b:	e8 10 cb ff ff       	callq  4033a0 <_ZSt20__throw_out_of_rangePKc@plt>
  406890:	bf 9d 01 41 00       	mov    $0x41019d,%edi
  406895:	e8 16 c9 ff ff       	callq  4031b0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40689a:	49 89 c5             	mov    %rax,%r13
  40689d:	49 89 d6             	mov    %rdx,%r14
  4068a0:	c5 f8 77             	vzeroupper 
  4068a3:	e9 8e d4 ff ff       	jmpq   403d36 <main.cold+0x1a>
  4068a8:	49 89 c5             	mov    %rax,%r13
  4068ab:	49 89 d6             	mov    %rdx,%r14
  4068ae:	c5 f8 77             	vzeroupper 
  4068b1:	e9 a8 d4 ff ff       	jmpq   403d5e <main.cold+0x42>
  4068b6:	48 89 c3             	mov    %rax,%rbx
  4068b9:	49 89 d4             	mov    %rdx,%r12
  4068bc:	e9 db d5 ff ff       	jmpq   403e9c <main.cold+0x180>
  4068c1:	48 89 c3             	mov    %rax,%rbx
  4068c4:	49 89 d6             	mov    %rdx,%r14
  4068c7:	c5 f8 77             	vzeroupper 
  4068ca:	e9 3b d5 ff ff       	jmpq   403e0a <main.cold+0xee>
  4068cf:	48 89 c3             	mov    %rax,%rbx
  4068d2:	49 89 d4             	mov    %rdx,%r12
  4068d5:	c5 f8 77             	vzeroupper 
  4068d8:	e9 d1 d4 ff ff       	jmpq   403dae <main.cold+0x92>
  4068dd:	48 89 c3             	mov    %rax,%rbx
  4068e0:	49 89 d4             	mov    %rdx,%r12
  4068e3:	c5 f8 77             	vzeroupper 
  4068e6:	e9 da d4 ff ff       	jmpq   403dc5 <main.cold+0xa9>
  4068eb:	48 89 c3             	mov    %rax,%rbx
  4068ee:	49 89 d6             	mov    %rdx,%r14
  4068f1:	e9 d5 d5 ff ff       	jmpq   403ecb <main.cold+0x1af>
  4068f6:	48 89 c3             	mov    %rax,%rbx
  4068f9:	49 89 d6             	mov    %rdx,%r14
  4068fc:	e9 15 d6 ff ff       	jmpq   403f16 <main.cold+0x1fa>
  406901:	e9 4a d6 ff ff       	jmpq   403f50 <main.cold+0x234>
  406906:	eb a0                	jmp    4068a8 <main+0x27c8>
  406908:	49 89 c5             	mov    %rax,%r13
  40690b:	49 89 d6             	mov    %rdx,%r14
  40690e:	e9 09 d4 ff ff       	jmpq   403d1c <main.cold>
  406913:	eb 93                	jmp    4068a8 <main+0x27c8>
  406915:	48 89 c3             	mov    %rax,%rbx
  406918:	49 89 d6             	mov    %rdx,%r14
  40691b:	c5 f8 77             	vzeroupper 
  40691e:	e9 ce d5 ff ff       	jmpq   403ef1 <main.cold+0x1d5>
  406923:	48 89 c7             	mov    %rax,%rdi
  406926:	49 89 d6             	mov    %rdx,%r14
  406929:	c5 f8 77             	vzeroupper 
  40692c:	e9 07 d5 ff ff       	jmpq   403e38 <main.cold+0x11c>
  406931:	49 89 c5             	mov    %rax,%r13
  406934:	49 89 d6             	mov    %rdx,%r14
  406937:	e9 22 d6 ff ff       	jmpq   403f5e <main.cold+0x242>
  40693c:	e9 67 ff ff ff       	jmpq   4068a8 <main+0x27c8>
  406941:	49 89 c5             	mov    %rax,%r13
  406944:	49 89 d6             	mov    %rdx,%r14
  406947:	e9 41 d6 ff ff       	jmpq   403f8d <main.cold+0x271>
  40694c:	49 89 c5             	mov    %rax,%r13
  40694f:	49 89 d6             	mov    %rdx,%r14
  406952:	e9 36 d6 ff ff       	jmpq   403f8d <main.cold+0x271>
  406957:	49 89 c5             	mov    %rax,%r13
  40695a:	49 89 d6             	mov    %rdx,%r14
  40695d:	e9 2b d6 ff ff       	jmpq   403f8d <main.cold+0x271>
  406962:	49 89 c5             	mov    %rax,%r13
  406965:	49 89 d6             	mov    %rdx,%r14
  406968:	e9 20 d6 ff ff       	jmpq   403f8d <main.cold+0x271>
  40696d:	48 89 c3             	mov    %rax,%rbx
  406970:	49 89 d6             	mov    %rdx,%r14
  406973:	e9 89 d6 ff ff       	jmpq   404001 <main.cold+0x2e5>
  406978:	49 89 c5             	mov    %rax,%r13
  40697b:	49 89 d6             	mov    %rdx,%r14
  40697e:	e9 0a d6 ff ff       	jmpq   403f8d <main.cold+0x271>
  406983:	48 89 c3             	mov    %rax,%rbx
  406986:	49 89 d6             	mov    %rdx,%r14
  406989:	e9 af d6 ff ff       	jmpq   40403d <main.cold+0x321>
  40698e:	48 89 c3             	mov    %rax,%rbx
  406991:	49 89 d6             	mov    %rdx,%r14
  406994:	c5 f8 77             	vzeroupper 
  406997:	e9 76 d4 ff ff       	jmpq   403e12 <main.cold+0xf6>
  40699c:	48 89 c3             	mov    %rax,%rbx
  40699f:	49 89 d6             	mov    %rdx,%r14
  4069a2:	e9 fa d6 ff ff       	jmpq   4040a1 <main.cold+0x385>
  4069a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4069ae:	00 00 

00000000004069b0 <_GLOBAL__sub_I__Z8clock_nsv>:
  4069b0:	48 83 ec 08          	sub    $0x8,%rsp
  4069b4:	bf b1 34 41 00       	mov    $0x4134b1,%edi
  4069b9:	e8 12 ca ff ff       	callq  4033d0 <_ZNSt8ios_base4InitC1Ev@plt>
  4069be:	ba 08 00 41 00       	mov    $0x410008,%edx
  4069c3:	be b1 34 41 00       	mov    $0x4134b1,%esi
  4069c8:	bf e0 34 40 00       	mov    $0x4034e0,%edi
  4069cd:	48 83 c4 08          	add    $0x8,%rsp
  4069d1:	e9 aa c8 ff ff       	jmpq   403280 <__cxa_atexit@plt>
  4069d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4069dd:	00 00 00 

00000000004069e0 <_start>:
  4069e0:	f3 0f 1e fa          	endbr64 
  4069e4:	31 ed                	xor    %ebp,%ebp
  4069e6:	49 89 d1             	mov    %rdx,%r9
  4069e9:	5e                   	pop    %rsi
  4069ea:	48 89 e2             	mov    %rsp,%rdx
  4069ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4069f1:	50                   	push   %rax
  4069f2:	54                   	push   %rsp
  4069f3:	45 31 c0             	xor    %r8d,%r8d
  4069f6:	31 c9                	xor    %ecx,%ecx
  4069f8:	48 c7 c7 e0 40 40 00 	mov    $0x4040e0,%rdi
  4069ff:	ff 15 c3 c5 00 00    	callq  *0xc5c3(%rip)        # 412fc8 <__libc_start_main@GLIBC_2.34>
  406a05:	f4                   	hlt    
  406a06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  406a0d:	00 00 00 

0000000000406a10 <_dl_relocate_static_pie>:
  406a10:	f3 0f 1e fa          	endbr64 
  406a14:	c3                   	retq   
  406a15:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  406a1c:	00 00 00 
  406a1f:	90                   	nop

0000000000406a20 <deregister_tm_clones>:
  406a20:	48 8d 3d 59 c8 00 00 	lea    0xc859(%rip),%rdi        # 413280 <_ZSt4cout@@GLIBCXX_3.4>
  406a27:	48 8d 05 52 c8 00 00 	lea    0xc852(%rip),%rax        # 413280 <_ZSt4cout@@GLIBCXX_3.4>
  406a2e:	48 39 f8             	cmp    %rdi,%rax
  406a31:	74 15                	je     406a48 <deregister_tm_clones+0x28>
  406a33:	48 8b 05 96 c5 00 00 	mov    0xc596(%rip),%rax        # 412fd0 <_ITM_deregisterTMCloneTable>
  406a3a:	48 85 c0             	test   %rax,%rax
  406a3d:	74 09                	je     406a48 <deregister_tm_clones+0x28>
  406a3f:	ff e0                	jmpq   *%rax
  406a41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406a48:	c3                   	retq   
  406a49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406a50 <register_tm_clones>:
  406a50:	48 8d 3d 29 c8 00 00 	lea    0xc829(%rip),%rdi        # 413280 <_ZSt4cout@@GLIBCXX_3.4>
  406a57:	48 8d 35 22 c8 00 00 	lea    0xc822(%rip),%rsi        # 413280 <_ZSt4cout@@GLIBCXX_3.4>
  406a5e:	48 29 fe             	sub    %rdi,%rsi
  406a61:	48 89 f0             	mov    %rsi,%rax
  406a64:	48 c1 ee 3f          	shr    $0x3f,%rsi
  406a68:	48 c1 f8 03          	sar    $0x3,%rax
  406a6c:	48 01 c6             	add    %rax,%rsi
  406a6f:	48 d1 fe             	sar    %rsi
  406a72:	74 14                	je     406a88 <register_tm_clones+0x38>
  406a74:	48 8b 05 65 c5 00 00 	mov    0xc565(%rip),%rax        # 412fe0 <_ITM_registerTMCloneTable>
  406a7b:	48 85 c0             	test   %rax,%rax
  406a7e:	74 08                	je     406a88 <register_tm_clones+0x38>
  406a80:	ff e0                	jmpq   *%rax
  406a82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406a88:	c3                   	retq   
  406a89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406a90 <__do_global_dtors_aux>:
  406a90:	f3 0f 1e fa          	endbr64 
  406a94:	80 3d 15 ca 00 00 00 	cmpb   $0x0,0xca15(%rip)        # 4134b0 <completed.0>
  406a9b:	75 13                	jne    406ab0 <__do_global_dtors_aux+0x20>
  406a9d:	55                   	push   %rbp
  406a9e:	48 89 e5             	mov    %rsp,%rbp
  406aa1:	e8 7a ff ff ff       	callq  406a20 <deregister_tm_clones>
  406aa6:	c6 05 03 ca 00 00 01 	movb   $0x1,0xca03(%rip)        # 4134b0 <completed.0>
  406aad:	5d                   	pop    %rbp
  406aae:	c3                   	retq   
  406aaf:	90                   	nop
  406ab0:	c3                   	retq   
  406ab1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  406ab8:	00 00 00 00 
  406abc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406ac0 <frame_dummy>:
  406ac0:	f3 0f 1e fa          	endbr64 
  406ac4:	eb 8a                	jmp    406a50 <register_tm_clones>
  406ac6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  406acd:	00 00 00 

0000000000406ad0 <main._omp_fn.1>:
  406ad0:	41 54                	push   %r12
  406ad2:	55                   	push   %rbp
  406ad3:	53                   	push   %rbx
  406ad4:	48 8b 07             	mov    (%rdi),%rax
  406ad7:	48 8b 18             	mov    (%rax),%rbx
  406ada:	48 85 db             	test   %rbx,%rbx
  406add:	0f 84 ef 00 00 00    	je     406bd2 <main._omp_fn.1+0x102>
  406ae3:	49 89 fc             	mov    %rdi,%r12
  406ae6:	e8 c5 c9 ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  406aeb:	89 c5                	mov    %eax,%ebp
  406aed:	e8 0e c9 ff ff       	callq  403400 <omp_get_thread_num@plt>
  406af2:	48 63 c8             	movslq %eax,%rcx
  406af5:	48 63 f5             	movslq %ebp,%rsi
  406af8:	48 89 d8             	mov    %rbx,%rax
  406afb:	31 d2                	xor    %edx,%edx
  406afd:	48 f7 f6             	div    %rsi
  406b00:	48 39 d1             	cmp    %rdx,%rcx
  406b03:	0f 82 d7 00 00 00    	jb     406be0 <main._omp_fn.1+0x110>
  406b09:	48 0f af c8          	imul   %rax,%rcx
  406b0d:	48 01 d1             	add    %rdx,%rcx
  406b10:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
  406b14:	48 39 f1             	cmp    %rsi,%rcx
  406b17:	0f 83 b5 00 00 00    	jae    406bd2 <main._omp_fn.1+0x102>
  406b1d:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  406b22:	c5 fb 10 0d 66 9b 00 	vmovsd 0x9b66(%rip),%xmm1        # 410690 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd0>
  406b29:	00 
  406b2a:	48 8b 38             	mov    (%rax),%rdi
  406b2d:	49 8b 44 24 10       	mov    0x10(%r12),%rax
  406b32:	c5 fb 10 1d 76 9c 00 	vmovsd 0x9c76(%rip),%xmm3        # 4107b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  406b39:	00 
  406b3a:	4c 8b 00             	mov    (%rax),%r8
  406b3d:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  406b42:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  406b46:	4c 8b 08             	mov    (%rax),%r9
  406b49:	4d 85 c9             	test   %r9,%r9
  406b4c:	0f 84 9e 00 00 00    	je     406bf0 <main._omp_fn.1+0x120>
  406b52:	c5 fb 10 25 3e 9b 00 	vmovsd 0x9b3e(%rip),%xmm4        # 410698 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  406b59:	00 
  406b5a:	49 bb f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r11
  406b61:	f0 f0 f0 
  406b64:	49 ba c5 4e ec c4 4e 	movabs $0x4ec4ec4ec4ec4ec5,%r10
  406b6b:	ec c4 4e 
  406b6e:	66 90                	xchg   %ax,%ax
  406b70:	48 89 c8             	mov    %rcx,%rax
  406b73:	49 f7 e3             	mul    %r11
  406b76:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  406b7d:	00 
  406b7e:	48 89 d0             	mov    %rdx,%rax
  406b81:	48 c1 e8 04          	shr    $0x4,%rax
  406b85:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  406b89:	48 01 c2             	add    %rax,%rdx
  406b8c:	48 89 c8             	mov    %rcx,%rax
  406b8f:	48 29 d0             	sub    %rdx,%rax
  406b92:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  406b97:	48 89 c8             	mov    %rcx,%rax
  406b9a:	49 f7 e2             	mul    %r10
  406b9d:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  406ba2:	48 c1 ea 02          	shr    $0x2,%rdx
  406ba6:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
  406baa:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
  406bae:	48 89 c8             	mov    %rcx,%rax
  406bb1:	48 29 d0             	sub    %rdx,%rax
  406bb4:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  406bba:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  406bbf:	c4 e2 d9 9d c1       	vfnmadd132sd %xmm1,%xmm4,%xmm0
  406bc4:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  406bca:	48 ff c1             	inc    %rcx
  406bcd:	48 39 ce             	cmp    %rcx,%rsi
  406bd0:	75 9e                	jne    406b70 <main._omp_fn.1+0xa0>
  406bd2:	5b                   	pop    %rbx
  406bd3:	5d                   	pop    %rbp
  406bd4:	41 5c                	pop    %r12
  406bd6:	c3                   	retq   
  406bd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  406bde:	00 00 
  406be0:	48 ff c0             	inc    %rax
  406be3:	31 d2                	xor    %edx,%edx
  406be5:	e9 1f ff ff ff       	jmpq   406b09 <main._omp_fn.1+0x39>
  406bea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406bf0:	49 b9 f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r9
  406bf7:	f0 f0 f0 
  406bfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406c00:	48 89 c8             	mov    %rcx,%rax
  406c03:	49 f7 e1             	mul    %r9
  406c06:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  406c0d:	00 
  406c0e:	48 89 d0             	mov    %rdx,%rax
  406c11:	48 c1 e8 04          	shr    $0x4,%rax
  406c15:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  406c19:	48 01 c2             	add    %rax,%rdx
  406c1c:	48 89 c8             	mov    %rcx,%rax
  406c1f:	48 29 d0             	sub    %rdx,%rax
  406c22:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  406c27:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  406c2c:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  406c32:	48 ff c1             	inc    %rcx
  406c35:	48 39 ce             	cmp    %rcx,%rsi
  406c38:	75 c6                	jne    406c00 <main._omp_fn.1+0x130>
  406c3a:	5b                   	pop    %rbx
  406c3b:	5d                   	pop    %rbp
  406c3c:	41 5c                	pop    %r12
  406c3e:	c3                   	retq   
  406c3f:	90                   	nop

0000000000406c40 <main._omp_fn.0>:
  406c40:	53                   	push   %rbx
  406c41:	48 89 fb             	mov    %rdi,%rbx
  406c44:	e8 17 c4 ff ff       	callq  403060 <GOMP_single_start@plt>
  406c49:	84 c0                	test   %al,%al
  406c4b:	74 0e                	je     406c5b <main._omp_fn.0+0x1b>
  406c4d:	e8 5e c8 ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  406c52:	41 89 c0             	mov    %eax,%r8d
  406c55:	48 8b 03             	mov    (%rbx),%rax
  406c58:	44 89 00             	mov    %r8d,(%rax)
  406c5b:	5b                   	pop    %rbx
  406c5c:	e9 2f c8 ff ff       	jmpq   403490 <GOMP_barrier@plt>
  406c61:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  406c68:	00 00 00 00 
  406c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406c70 <_ZZ4mainENKUlmE_clEm._omp_fn.0>:
  406c70:	55                   	push   %rbp
  406c71:	48 89 e5             	mov    %rsp,%rbp
  406c74:	41 55                	push   %r13
  406c76:	41 54                	push   %r12
  406c78:	53                   	push   %rbx
  406c79:	4c 8b 27             	mov    (%rdi),%r12
  406c7c:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  406c80:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  406c85:	4c 8b 28             	mov    (%rax),%r13
  406c88:	4d 85 ed             	test   %r13,%r13
  406c8b:	0f 84 42 01 00 00    	je     406dd3 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406c91:	e8 1a c8 ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  406c96:	89 c3                	mov    %eax,%ebx
  406c98:	e8 63 c7 ff ff       	callq  403400 <omp_get_thread_num@plt>
  406c9d:	48 63 c8             	movslq %eax,%rcx
  406ca0:	48 63 f3             	movslq %ebx,%rsi
  406ca3:	4c 89 e8             	mov    %r13,%rax
  406ca6:	31 d2                	xor    %edx,%edx
  406ca8:	48 f7 f6             	div    %rsi
  406cab:	48 39 d1             	cmp    %rdx,%rcx
  406cae:	0f 82 2c 01 00 00    	jb     406de0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x170>
  406cb4:	48 0f af c8          	imul   %rax,%rcx
  406cb8:	48 01 ca             	add    %rcx,%rdx
  406cbb:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  406cbf:	48 39 ca             	cmp    %rcx,%rdx
  406cc2:	0f 83 0b 01 00 00    	jae    406dd3 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406cc8:	4d 8b 44 24 20       	mov    0x20(%r12),%r8
  406ccd:	49 8b 7c 24 30       	mov    0x30(%r12),%rdi
  406cd2:	4d 8b 08             	mov    (%r8),%r9
  406cd5:	48 8b 3f             	mov    (%rdi),%rdi
  406cd8:	4c 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%r8
  406cdf:	00 
  406ce0:	49 8b 74 24 28       	mov    0x28(%r12),%rsi
  406ce5:	4f 8d 14 01          	lea    (%r9,%r8,1),%r10
  406ce9:	4d 8d 58 08          	lea    0x8(%r8),%r11
  406ced:	4e 8d 24 1f          	lea    (%rdi,%r11,1),%r12
  406cf1:	4c 89 d3             	mov    %r10,%rbx
  406cf4:	4c 29 e3             	sub    %r12,%rbx
  406cf7:	48 8b 36             	mov    (%rsi),%rsi
  406cfa:	48 83 fb 10          	cmp    $0x10,%rbx
  406cfe:	0f 97 c3             	seta   %bl
  406d01:	4d 89 d4             	mov    %r10,%r12
  406d04:	49 01 f3             	add    %rsi,%r11
  406d07:	4d 29 dc             	sub    %r11,%r12
  406d0a:	49 83 fc 10          	cmp    $0x10,%r12
  406d0e:	41 0f 97 c3          	seta   %r11b
  406d12:	44 84 db             	test   %r11b,%bl
  406d15:	0f 84 d5 00 00 00    	je     406df0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x180>
  406d1b:	48 83 f8 01          	cmp    $0x1,%rax
  406d1f:	0f 84 cb 00 00 00    	je     406df0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x180>
  406d25:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  406d29:	48 83 f9 02          	cmp    $0x2,%rcx
  406d2d:	0f 86 f2 00 00 00    	jbe    406e25 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1b5>
  406d33:	49 89 c3             	mov    %rax,%r11
  406d36:	49 c1 eb 02          	shr    $0x2,%r11
  406d3a:	c4 e2 7d 19 0d 5d 99 	vbroadcastsd 0x995d(%rip),%ymm1        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406d41:	00 00 
  406d43:	4a 8d 1c 06          	lea    (%rsi,%r8,1),%rbx
  406d47:	49 c1 e3 05          	shl    $0x5,%r11
  406d4b:	49 01 f8             	add    %rdi,%r8
  406d4e:	31 c9                	xor    %ecx,%ecx
  406d50:	c4 c1 7d 10 04 08    	vmovupd (%r8,%rcx,1),%ymm0
  406d56:	c4 e2 f5 a8 04 0b    	vfmadd213pd (%rbx,%rcx,1),%ymm1,%ymm0
  406d5c:	c4 c1 7d 11 04 0a    	vmovupd %ymm0,(%r10,%rcx,1)
  406d62:	48 83 c1 20          	add    $0x20,%rcx
  406d66:	49 39 cb             	cmp    %rcx,%r11
  406d69:	75 e5                	jne    406d50 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0xe0>
  406d6b:	49 89 c0             	mov    %rax,%r8
  406d6e:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
  406d72:	4c 01 c2             	add    %r8,%rdx
  406d75:	48 89 d1             	mov    %rdx,%rcx
  406d78:	4c 39 c0             	cmp    %r8,%rax
  406d7b:	0f 84 9f 00 00 00    	je     406e20 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1b0>
  406d81:	4c 29 c0             	sub    %r8,%rax
  406d84:	48 83 f8 01          	cmp    $0x1,%rax
  406d88:	0f 84 9f 00 00 00    	je     406e2d <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1bd>
  406d8e:	c5 f8 77             	vzeroupper 
  406d91:	c5 f9 10 04 d7       	vmovupd (%rdi,%rdx,8),%xmm0
  406d96:	c5 f9 10 1c d6       	vmovupd (%rsi,%rdx,8),%xmm3
  406d9b:	62 f2 e5 18 98 05 fb 	vfmadd132pd 0x98fb(%rip){1to2},%xmm3,%xmm0        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406da2:	98 00 00 
  406da5:	c4 c1 79 11 04 d1    	vmovupd %xmm0,(%r9,%rdx,8)
  406dab:	48 89 c2             	mov    %rax,%rdx
  406dae:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
  406db2:	48 01 d1             	add    %rdx,%rcx
  406db5:	48 39 d0             	cmp    %rdx,%rax
  406db8:	74 19                	je     406dd3 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406dba:	c5 fb 10 04 cf       	vmovsd (%rdi,%rcx,8),%xmm0
  406dbf:	c5 fb 10 14 ce       	vmovsd (%rsi,%rcx,8),%xmm2
  406dc4:	c4 e2 e9 99 05 d3 98 	vfmadd132sd 0x98d3(%rip),%xmm2,%xmm0        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406dcb:	00 00 
  406dcd:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  406dd3:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  406dd7:	5b                   	pop    %rbx
  406dd8:	41 5c                	pop    %r12
  406dda:	41 5d                	pop    %r13
  406ddc:	5d                   	pop    %rbp
  406ddd:	c3                   	retq   
  406dde:	66 90                	xchg   %ax,%ax
  406de0:	48 ff c0             	inc    %rax
  406de3:	31 d2                	xor    %edx,%edx
  406de5:	e9 ca fe ff ff       	jmpq   406cb4 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x44>
  406dea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406df0:	c5 fb 10 0d a8 98 00 	vmovsd 0x98a8(%rip),%xmm1        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406df7:	00 
  406df8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406dff:	00 
  406e00:	c5 fb 10 04 d7       	vmovsd (%rdi,%rdx,8),%xmm0
  406e05:	c4 e2 f1 a9 04 d6    	vfmadd213sd (%rsi,%rdx,8),%xmm1,%xmm0
  406e0b:	c4 c1 7b 11 04 d1    	vmovsd %xmm0,(%r9,%rdx,8)
  406e11:	48 ff c2             	inc    %rdx
  406e14:	48 39 d1             	cmp    %rdx,%rcx
  406e17:	75 e7                	jne    406e00 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x190>
  406e19:	eb b8                	jmp    406dd3 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406e1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406e20:	c5 f8 77             	vzeroupper 
  406e23:	eb ae                	jmp    406dd3 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406e25:	48 89 d1             	mov    %rdx,%rcx
  406e28:	e9 64 ff ff ff       	jmpq   406d91 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x121>
  406e2d:	c5 f8 77             	vzeroupper 
  406e30:	eb 88                	jmp    406dba <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x14a>
  406e32:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  406e39:	00 00 00 00 
  406e3d:	0f 1f 00             	nopl   (%rax)

0000000000406e40 <_ZZ4mainENKUlmE_clEm._omp_fn.2>:
  406e40:	55                   	push   %rbp
  406e41:	48 89 e5             	mov    %rsp,%rbp
  406e44:	41 55                	push   %r13
  406e46:	41 54                	push   %r12
  406e48:	53                   	push   %rbx
  406e49:	4c 8b 2f             	mov    (%rdi),%r13
  406e4c:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  406e50:	49 8b 45 18          	mov    0x18(%r13),%rax
  406e54:	4c 8b 20             	mov    (%rax),%r12
  406e57:	4d 85 e4             	test   %r12,%r12
  406e5a:	0f 84 e6 00 00 00    	je     406f46 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  406e60:	e8 4b c6 ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  406e65:	89 c3                	mov    %eax,%ebx
  406e67:	e8 94 c5 ff ff       	callq  403400 <omp_get_thread_num@plt>
  406e6c:	48 63 c8             	movslq %eax,%rcx
  406e6f:	48 63 f3             	movslq %ebx,%rsi
  406e72:	4c 89 e0             	mov    %r12,%rax
  406e75:	31 d2                	xor    %edx,%edx
  406e77:	48 f7 f6             	div    %rsi
  406e7a:	48 39 d1             	cmp    %rdx,%rcx
  406e7d:	0f 82 ed 00 00 00    	jb     406f70 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x130>
  406e83:	48 0f af c8          	imul   %rax,%rcx
  406e87:	48 01 ca             	add    %rcx,%rdx
  406e8a:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  406e8e:	48 39 ca             	cmp    %rcx,%rdx
  406e91:	0f 83 af 00 00 00    	jae    406f46 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  406e97:	49 8b 7d 20          	mov    0x20(%r13),%rdi
  406e9b:	49 8b 75 28          	mov    0x28(%r13),%rsi
  406e9f:	48 8b 3f             	mov    (%rdi),%rdi
  406ea2:	4c 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%r8
  406ea9:	00 
  406eaa:	48 8b 36             	mov    (%rsi),%rsi
  406ead:	4e 8d 14 07          	lea    (%rdi,%r8,1),%r10
  406eb1:	4e 8d 5c 06 08       	lea    0x8(%rsi,%r8,1),%r11
  406eb6:	4d 89 d1             	mov    %r10,%r9
  406eb9:	4d 29 d9             	sub    %r11,%r9
  406ebc:	49 83 f9 10          	cmp    $0x10,%r9
  406ec0:	0f 86 92 00 00 00    	jbe    406f58 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x118>
  406ec6:	48 83 f8 01          	cmp    $0x1,%rax
  406eca:	0f 84 88 00 00 00    	je     406f58 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x118>
  406ed0:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  406ed4:	48 83 f9 02          	cmp    $0x2,%rcx
  406ed8:	0f 86 a7 00 00 00    	jbe    406f85 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x145>
  406ede:	49 89 c1             	mov    %rax,%r9
  406ee1:	49 c1 e9 02          	shr    $0x2,%r9
  406ee5:	49 01 f0             	add    %rsi,%r8
  406ee8:	49 c1 e1 05          	shl    $0x5,%r9
  406eec:	31 c9                	xor    %ecx,%ecx
  406eee:	66 90                	xchg   %ax,%ax
  406ef0:	c4 c1 7d 10 0c 08    	vmovupd (%r8,%rcx,1),%ymm1
  406ef6:	c4 c1 7d 11 0c 0a    	vmovupd %ymm1,(%r10,%rcx,1)
  406efc:	48 83 c1 20          	add    $0x20,%rcx
  406f00:	49 39 c9             	cmp    %rcx,%r9
  406f03:	75 eb                	jne    406ef0 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0xb0>
  406f05:	49 89 c0             	mov    %rax,%r8
  406f08:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
  406f0c:	4c 01 c2             	add    %r8,%rdx
  406f0f:	48 89 d1             	mov    %rdx,%rcx
  406f12:	4c 39 c0             	cmp    %r8,%rax
  406f15:	74 69                	je     406f80 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x140>
  406f17:	4c 29 c0             	sub    %r8,%rax
  406f1a:	48 83 f8 01          	cmp    $0x1,%rax
  406f1e:	74 6a                	je     406f8a <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x14a>
  406f20:	c5 f8 77             	vzeroupper 
  406f23:	c5 f9 10 14 d6       	vmovupd (%rsi,%rdx,8),%xmm2
  406f28:	c5 f9 11 14 d7       	vmovupd %xmm2,(%rdi,%rdx,8)
  406f2d:	48 89 c2             	mov    %rax,%rdx
  406f30:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
  406f34:	48 01 d1             	add    %rdx,%rcx
  406f37:	48 39 d0             	cmp    %rdx,%rax
  406f3a:	74 0a                	je     406f46 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  406f3c:	c5 fb 10 04 ce       	vmovsd (%rsi,%rcx,8),%xmm0
  406f41:	c5 fb 11 04 cf       	vmovsd %xmm0,(%rdi,%rcx,8)
  406f46:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  406f4a:	5b                   	pop    %rbx
  406f4b:	41 5c                	pop    %r12
  406f4d:	41 5d                	pop    %r13
  406f4f:	5d                   	pop    %rbp
  406f50:	c3                   	retq   
  406f51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406f58:	c5 fb 10 04 d6       	vmovsd (%rsi,%rdx,8),%xmm0
  406f5d:	c5 fb 11 04 d7       	vmovsd %xmm0,(%rdi,%rdx,8)
  406f62:	48 ff c2             	inc    %rdx
  406f65:	48 39 d1             	cmp    %rdx,%rcx
  406f68:	75 ee                	jne    406f58 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x118>
  406f6a:	eb da                	jmp    406f46 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  406f6c:	0f 1f 40 00          	nopl   0x0(%rax)
  406f70:	48 ff c0             	inc    %rax
  406f73:	31 d2                	xor    %edx,%edx
  406f75:	e9 09 ff ff ff       	jmpq   406e83 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x43>
  406f7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406f80:	c5 f8 77             	vzeroupper 
  406f83:	eb c1                	jmp    406f46 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  406f85:	48 89 d1             	mov    %rdx,%rcx
  406f88:	eb 99                	jmp    406f23 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0xe3>
  406f8a:	c5 f8 77             	vzeroupper 
  406f8d:	eb ad                	jmp    406f3c <_ZZ4mainENKUlmE_clEm._omp_fn.2+0xfc>
  406f8f:	90                   	nop

0000000000406f90 <_ZZ4mainENKUlmE_clEm._omp_fn.4>:
  406f90:	55                   	push   %rbp
  406f91:	48 89 e5             	mov    %rsp,%rbp
  406f94:	41 57                	push   %r15
  406f96:	41 56                	push   %r14
  406f98:	41 55                	push   %r13
  406f9a:	41 54                	push   %r12
  406f9c:	53                   	push   %rbx
  406f9d:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  406fa1:	48 83 ec 40          	sub    $0x40,%rsp
  406fa5:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
  406fa9:	48 8b 07             	mov    (%rdi),%rax
  406fac:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  406fb1:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  406fb6:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  406fbb:	e8 40 c4 ff ff       	callq  403400 <omp_get_thread_num@plt>
  406fc0:	48 63 f0             	movslq %eax,%rsi
  406fc3:	48 8b 43 60          	mov    0x60(%rbx),%rax
  406fc7:	31 d2                	xor    %edx,%edx
  406fc9:	48 8b 08             	mov    (%rax),%rcx
  406fcc:	b8 00 00 40 00       	mov    $0x400000,%eax
  406fd1:	48 f7 f1             	div    %rcx
  406fd4:	48 89 34 24          	mov    %rsi,(%rsp)
  406fd8:	49 89 cf             	mov    %rcx,%r15
  406fdb:	49 c1 ef 03          	shr    $0x3,%r15
  406fdf:	ba 01 00 00 00       	mov    $0x1,%edx
  406fe4:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
  406fe9:	48 85 c0             	test   %rax,%rax
  406fec:	48 0f 45 d0          	cmovne %rax,%rdx
  406ff0:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406ff4:	49 89 d4             	mov    %rdx,%r12
  406ff7:	48 8b 00             	mov    (%rax),%rax
  406ffa:	49 8d 57 ff          	lea    -0x1(%r15),%rdx
  406ffe:	48 c1 ea 06          	shr    $0x6,%rdx
  407002:	4c 8b 2c f0          	mov    (%rax,%rsi,8),%r13
  407006:	48 ff c2             	inc    %rdx
  407009:	48 c1 e2 09          	shl    $0x9,%rdx
  40700d:	4e 8d 34 2a          	lea    (%rdx,%r13,1),%r14
  407011:	31 db                	xor    %ebx,%ebx
  407013:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407018:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  40701c:	62 f1 fd 48 28 f8    	vmovapd %zmm0,%zmm7
  407022:	62 f1 fd 48 28 f0    	vmovapd %zmm0,%zmm6
  407028:	62 f1 fd 48 28 d8    	vmovapd %zmm0,%zmm3
  40702e:	62 f1 fd 48 28 c8    	vmovapd %zmm0,%zmm1
  407034:	62 f1 fd 48 28 e8    	vmovapd %zmm0,%zmm5
  40703a:	62 f1 fd 48 28 e0    	vmovapd %zmm0,%zmm4
  407040:	62 f1 fd 48 28 d0    	vmovapd %zmm0,%zmm2
  407046:	31 c9                	xor    %ecx,%ecx
  407048:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40704f:	00 
  407050:	4c 89 e8             	mov    %r13,%rax
  407053:	4d 85 ff             	test   %r15,%r15
  407056:	74 4a                	je     4070a2 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x112>
  407058:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40705f:	00 
  407060:	62 f1 ed 48 58 10    	vaddpd (%rax),%zmm2,%zmm2
  407066:	62 f1 dd 48 58 60 01 	vaddpd 0x40(%rax),%zmm4,%zmm4
  40706d:	62 f1 d5 48 58 68 02 	vaddpd 0x80(%rax),%zmm5,%zmm5
  407074:	62 f1 f5 48 58 48 03 	vaddpd 0xc0(%rax),%zmm1,%zmm1
  40707b:	62 f1 e5 48 58 58 04 	vaddpd 0x100(%rax),%zmm3,%zmm3
  407082:	62 f1 cd 48 58 70 05 	vaddpd 0x140(%rax),%zmm6,%zmm6
  407089:	62 f1 c5 48 58 78 06 	vaddpd 0x180(%rax),%zmm7,%zmm7
  407090:	62 f1 fd 48 58 40 07 	vaddpd 0x1c0(%rax),%zmm0,%zmm0
  407097:	48 05 00 02 00 00    	add    $0x200,%rax
  40709d:	49 39 c6             	cmp    %rax,%r14
  4070a0:	75 be                	jne    407060 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0xd0>
  4070a2:	48 ff c1             	inc    %rcx
  4070a5:	4c 39 e1             	cmp    %r12,%rcx
  4070a8:	75 a6                	jne    407050 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0xc0>
  4070aa:	62 f1 fd 48 58 c7    	vaddpd %zmm7,%zmm0,%zmm0
  4070b0:	62 f1 e5 48 58 de    	vaddpd %zmm6,%zmm3,%zmm3
  4070b6:	62 f1 f5 48 58 cd    	vaddpd %zmm5,%zmm1,%zmm1
  4070bc:	62 f1 ed 48 58 d4    	vaddpd %zmm4,%zmm2,%zmm2
  4070c2:	62 f1 fd 48 58 c3    	vaddpd %zmm3,%zmm0,%zmm0
  4070c8:	48 01 cb             	add    %rcx,%rbx
  4070cb:	62 f1 f5 48 58 ca    	vaddpd %zmm2,%zmm1,%zmm1
  4070d1:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  4070d6:	bf 01 00 00 00       	mov    $0x1,%edi
  4070db:	62 f1 fd 48 58 c1    	vaddpd %zmm1,%zmm0,%zmm0
  4070e1:	62 f3 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm0,%ymm1
  4070e8:	c5 f5 58 c8          	vaddpd %ymm0,%ymm1,%ymm1
  4070ec:	62 f3 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm1,%xmm0
  4070f3:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  4070f7:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  4070fb:	c5 3b 58 c0          	vaddsd %xmm0,%xmm8,%xmm8
  4070ff:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  407103:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  407109:	c5 7b 11 44 24 20    	vmovsd %xmm8,0x20(%rsp)
  40710f:	c5 f8 77             	vzeroupper 
  407112:	e8 89 c1 ff ff       	callq  4032a0 <clock_gettime@plt>
  407117:	48 69 44 24 30 00 ca 	imul   $0x3b9aca00,0x30(%rsp),%rax
  40711e:	9a 3b 
  407120:	c5 7b 10 44 24 20    	vmovsd 0x20(%rsp),%xmm8
  407126:	48 03 44 24 38       	add    0x38(%rsp),%rax
  40712b:	48 39 44 24 18       	cmp    %rax,0x18(%rsp)
  407130:	0f 87 e2 fe ff ff    	ja     407018 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x88>
  407136:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  40713b:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  40713f:	48 8b 47 60          	mov    0x60(%rdi),%rax
  407143:	62 f1 ff 08 7b c3    	vcvtusi2sd %rbx,%xmm0,%xmm0
  407149:	4c 8b 20             	mov    (%rax),%r12
  40714c:	48 8b 47 68          	mov    0x68(%rdi),%rax
  407150:	4c 0f af e3          	imul   %rbx,%r12
  407154:	48 8b 00             	mov    (%rax),%rax
  407157:	48 8b 1c 24          	mov    (%rsp),%rbx
  40715b:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  40715f:	c5 fb 59 04 d8       	vmulsd (%rax,%rbx,8),%xmm0,%xmm0
  407164:	c5 b9 14 c0          	vunpcklpd %xmm0,%xmm8,%xmm0
  407168:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  40716c:	c5 f9 29 44 24 20    	vmovapd %xmm0,0x20(%rsp)
  407172:	e8 29 c0 ff ff       	callq  4031a0 <GOMP_atomic_start@plt>
  407177:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40717c:	c5 f9 28 44 24 20    	vmovapd 0x20(%rsp),%xmm0
  407182:	4c 01 60 28          	add    %r12,0x28(%rax)
  407186:	c5 f9 58 40 30       	vaddpd 0x30(%rax),%xmm0,%xmm0
  40718b:	c5 f9 11 40 30       	vmovupd %xmm0,0x30(%rax)
  407190:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  407194:	5b                   	pop    %rbx
  407195:	41 5c                	pop    %r12
  407197:	41 5d                	pop    %r13
  407199:	41 5e                	pop    %r14
  40719b:	41 5f                	pop    %r15
  40719d:	5d                   	pop    %rbp
  40719e:	e9 9d c0 ff ff       	jmpq   403240 <GOMP_atomic_end@plt>
  4071a3:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4071aa:	00 00 00 00 
  4071ae:	66 90                	xchg   %ax,%ax

00000000004071b0 <_ZZ4mainENKUlmE_clEm._omp_fn.5>:
  4071b0:	55                   	push   %rbp
  4071b1:	48 89 e5             	mov    %rsp,%rbp
  4071b4:	41 55                	push   %r13
  4071b6:	41 54                	push   %r12
  4071b8:	49 89 fc             	mov    %rdi,%r12
  4071bb:	53                   	push   %rbx
  4071bc:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  4071c0:	48 81 ec 80 19 00 00 	sub    $0x1980,%rsp
  4071c7:	48 8b 1f             	mov    (%rdi),%rbx
  4071ca:	48 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%rax
  4071d1:	80 38 00             	cmpb   $0x0,(%rax)
  4071d4:	75 10                	jne    4071e6 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x36>
  4071d6:	48 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%rax
  4071dd:	80 38 00             	cmpb   $0x0,(%rax)
  4071e0:	0f 84 7a 10 00 00    	je     408260 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x10b0>
  4071e6:	64 80 3c 25 f0 ff ff 	cmpb   $0x0,%fs:0xfffffffffffffff0
  4071ed:	ff 00 
  4071ef:	0f 84 b6 13 00 00    	je     4085ab <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x13fb>
  4071f5:	64 0f b6 04 25 f8 ff 	movzbl %fs:0xfffffffffffffff8,%eax
  4071fc:	ff ff 
  4071fe:	84 c0                	test   %al,%al
  407200:	75 39                	jne    40723b <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x8b>
  407202:	48 8b 1d 97 95 00 00 	mov    0x9597(%rip),%rbx        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  407209:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  40720f:	e8 8c bf ff ff       	callq  4031a0 <GOMP_atomic_start@plt>
  407214:	c4 e1 f9 6e f3       	vmovq  %rbx,%xmm6
  407219:	c4 c1 4b 58 44 24 38 	vaddsd 0x38(%r12),%xmm6,%xmm0
  407220:	45 09 6c 24 40       	or     %r13d,0x40(%r12)
  407225:	c4 c1 7b 11 44 24 38 	vmovsd %xmm0,0x38(%r12)
  40722c:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  407230:	5b                   	pop    %rbx
  407231:	41 5c                	pop    %r12
  407233:	41 5d                	pop    %r13
  407235:	5d                   	pop    %rbp
  407236:	e9 05 c0 ff ff       	jmpq   403240 <GOMP_atomic_end@plt>
  40723b:	48 8b 05 66 94 00 00 	mov    0x9466(%rip),%rax        # 4106a8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  407242:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  407246:	c5 f9 7f 84 24 50 01 	vmovdqa %xmm0,0x150(%rsp)
  40724d:	00 00 
  40724f:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  407256:	00 
  407257:	b8 10 10 00 00       	mov    $0x1010,%eax
  40725c:	c5 f9 7f 84 24 70 01 	vmovdqa %xmm0,0x170(%rsp)
  407263:	00 00 
  407265:	c5 f9 7f 84 24 40 01 	vmovdqa %xmm0,0x140(%rsp)
  40726c:	00 00 
  40726e:	c7 84 24 58 01 00 00 	movl   $0x400040,0x158(%rsp)
  407275:	40 00 40 00 
  407279:	c6 84 24 40 01 00 00 	movb   $0x1,0x140(%rsp)
  407280:	01 
  407281:	c7 84 24 70 01 00 00 	movl   $0x10101010,0x170(%rsp)
  407288:	10 10 10 10 
  40728c:	66 89 84 24 74 01 00 	mov    %ax,0x174(%rsp)
  407293:	00 
  407294:	c5 f9 7f 84 24 60 01 	vmovdqa %xmm0,0x160(%rsp)
  40729b:	00 00 
  40729d:	c4 e2 78 49 84 24 40 	ldtilecfg 0x140(%rsp)
  4072a4:	01 00 00 
  4072a7:	48 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%rax
  4072ae:	80 38 00             	cmpb   $0x0,(%rax)
  4072b1:	0f 84 26 13 00 00    	je     4085dd <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x142d>
  4072b7:	c4 e2 7d 79 05 32 95 	vpbroadcastw 0x9532(%rip),%ymm0        # 4107f2 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  4072be:	00 00 
  4072c0:	48 8d 94 24 80 01 00 	lea    0x180(%rsp),%rdx
  4072c7:	00 
  4072c8:	c5 fd 7f 84 24 80 01 	vmovdqa %ymm0,0x180(%rsp)
  4072cf:	00 00 
  4072d1:	c5 fd 7f 84 24 a0 01 	vmovdqa %ymm0,0x1a0(%rsp)
  4072d8:	00 00 
  4072da:	c5 fd 7f 84 24 c0 01 	vmovdqa %ymm0,0x1c0(%rsp)
  4072e1:	00 00 
  4072e3:	c5 fd 7f 84 24 e0 01 	vmovdqa %ymm0,0x1e0(%rsp)
  4072ea:	00 00 
  4072ec:	c5 fd 7f 84 24 00 02 	vmovdqa %ymm0,0x200(%rsp)
  4072f3:	00 00 
  4072f5:	c5 fd 7f 84 24 20 02 	vmovdqa %ymm0,0x220(%rsp)
  4072fc:	00 00 
  4072fe:	c5 fd 7f 84 24 40 02 	vmovdqa %ymm0,0x240(%rsp)
  407305:	00 00 
  407307:	c5 fd 7f 84 24 60 02 	vmovdqa %ymm0,0x260(%rsp)
  40730e:	00 00 
  407310:	c5 fd 7f 84 24 80 02 	vmovdqa %ymm0,0x280(%rsp)
  407317:	00 00 
  407319:	c5 fd 7f 84 24 a0 02 	vmovdqa %ymm0,0x2a0(%rsp)
  407320:	00 00 
  407322:	c5 fd 7f 84 24 c0 02 	vmovdqa %ymm0,0x2c0(%rsp)
  407329:	00 00 
  40732b:	c5 fd 7f 84 24 e0 02 	vmovdqa %ymm0,0x2e0(%rsp)
  407332:	00 00 
  407334:	c5 fd 7f 84 24 00 03 	vmovdqa %ymm0,0x300(%rsp)
  40733b:	00 00 
  40733d:	c5 fd 7f 84 24 20 03 	vmovdqa %ymm0,0x320(%rsp)
  407344:	00 00 
  407346:	c5 fd 7f 84 24 40 03 	vmovdqa %ymm0,0x340(%rsp)
  40734d:	00 00 
  40734f:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  407356:	00 00 
  407358:	c5 fd 7f 84 24 80 03 	vmovdqa %ymm0,0x380(%rsp)
  40735f:	00 00 
  407361:	c5 fd 7f 84 24 a0 03 	vmovdqa %ymm0,0x3a0(%rsp)
  407368:	00 00 
  40736a:	c5 fd 7f 84 24 c0 03 	vmovdqa %ymm0,0x3c0(%rsp)
  407371:	00 00 
  407373:	c5 fd 7f 84 24 e0 03 	vmovdqa %ymm0,0x3e0(%rsp)
  40737a:	00 00 
  40737c:	c5 fd 7f 84 24 00 04 	vmovdqa %ymm0,0x400(%rsp)
  407383:	00 00 
  407385:	c5 fd 7f 84 24 20 04 	vmovdqa %ymm0,0x420(%rsp)
  40738c:	00 00 
  40738e:	c5 fd 7f 84 24 40 04 	vmovdqa %ymm0,0x440(%rsp)
  407395:	00 00 
  407397:	c5 fd 7f 84 24 60 04 	vmovdqa %ymm0,0x460(%rsp)
  40739e:	00 00 
  4073a0:	c5 fd 7f 84 24 80 04 	vmovdqa %ymm0,0x480(%rsp)
  4073a7:	00 00 
  4073a9:	c5 fd 7f 84 24 a0 04 	vmovdqa %ymm0,0x4a0(%rsp)
  4073b0:	00 00 
  4073b2:	c5 fd 7f 84 24 c0 04 	vmovdqa %ymm0,0x4c0(%rsp)
  4073b9:	00 00 
  4073bb:	c5 fd 7f 84 24 e0 04 	vmovdqa %ymm0,0x4e0(%rsp)
  4073c2:	00 00 
  4073c4:	c5 fd 7f 84 24 00 05 	vmovdqa %ymm0,0x500(%rsp)
  4073cb:	00 00 
  4073cd:	c5 fd 7f 84 24 20 05 	vmovdqa %ymm0,0x520(%rsp)
  4073d4:	00 00 
  4073d6:	c5 fd 7f 84 24 40 05 	vmovdqa %ymm0,0x540(%rsp)
  4073dd:	00 00 
  4073df:	b8 40 00 00 00       	mov    $0x40,%eax
  4073e4:	c5 fd 7f 84 24 60 05 	vmovdqa %ymm0,0x560(%rsp)
  4073eb:	00 00 
  4073ed:	c5 fd 7f 84 24 80 05 	vmovdqa %ymm0,0x580(%rsp)
  4073f4:	00 00 
  4073f6:	c5 fd 7f 84 24 a0 05 	vmovdqa %ymm0,0x5a0(%rsp)
  4073fd:	00 00 
  4073ff:	c5 fd 7f 84 24 c0 05 	vmovdqa %ymm0,0x5c0(%rsp)
  407406:	00 00 
  407408:	c5 fd 7f 84 24 e0 05 	vmovdqa %ymm0,0x5e0(%rsp)
  40740f:	00 00 
  407411:	c5 fd 7f 84 24 00 06 	vmovdqa %ymm0,0x600(%rsp)
  407418:	00 00 
  40741a:	c5 fd 7f 84 24 20 06 	vmovdqa %ymm0,0x620(%rsp)
  407421:	00 00 
  407423:	c5 fd 7f 84 24 40 06 	vmovdqa %ymm0,0x640(%rsp)
  40742a:	00 00 
  40742c:	c5 fd 7f 84 24 60 06 	vmovdqa %ymm0,0x660(%rsp)
  407433:	00 00 
  407435:	c5 fd 7f 84 24 80 06 	vmovdqa %ymm0,0x680(%rsp)
  40743c:	00 00 
  40743e:	c5 fd 7f 84 24 a0 06 	vmovdqa %ymm0,0x6a0(%rsp)
  407445:	00 00 
  407447:	c5 fd 7f 84 24 c0 06 	vmovdqa %ymm0,0x6c0(%rsp)
  40744e:	00 00 
  407450:	c5 fd 7f 84 24 e0 06 	vmovdqa %ymm0,0x6e0(%rsp)
  407457:	00 00 
  407459:	c5 fd 7f 84 24 00 07 	vmovdqa %ymm0,0x700(%rsp)
  407460:	00 00 
  407462:	c5 fd 7f 84 24 20 07 	vmovdqa %ymm0,0x720(%rsp)
  407469:	00 00 
  40746b:	c5 fd 7f 84 24 40 07 	vmovdqa %ymm0,0x740(%rsp)
  407472:	00 00 
  407474:	c5 fd 7f 84 24 60 07 	vmovdqa %ymm0,0x760(%rsp)
  40747b:	00 00 
  40747d:	c5 fd 7f 84 24 80 07 	vmovdqa %ymm0,0x780(%rsp)
  407484:	00 00 
  407486:	c5 fd 7f 84 24 a0 07 	vmovdqa %ymm0,0x7a0(%rsp)
  40748d:	00 00 
  40748f:	c5 fd 7f 84 24 c0 07 	vmovdqa %ymm0,0x7c0(%rsp)
  407496:	00 00 
  407498:	c5 fd 7f 84 24 e0 07 	vmovdqa %ymm0,0x7e0(%rsp)
  40749f:	00 00 
  4074a1:	c5 fd 7f 84 24 00 08 	vmovdqa %ymm0,0x800(%rsp)
  4074a8:	00 00 
  4074aa:	c5 fd 7f 84 24 20 08 	vmovdqa %ymm0,0x820(%rsp)
  4074b1:	00 00 
  4074b3:	c5 fd 7f 84 24 40 08 	vmovdqa %ymm0,0x840(%rsp)
  4074ba:	00 00 
  4074bc:	c5 fd 7f 84 24 60 08 	vmovdqa %ymm0,0x860(%rsp)
  4074c3:	00 00 
  4074c5:	c5 fd 7f 84 24 80 08 	vmovdqa %ymm0,0x880(%rsp)
  4074cc:	00 00 
  4074ce:	c5 fd 7f 84 24 a0 08 	vmovdqa %ymm0,0x8a0(%rsp)
  4074d5:	00 00 
  4074d7:	c5 fd 7f 84 24 c0 08 	vmovdqa %ymm0,0x8c0(%rsp)
  4074de:	00 00 
  4074e0:	c5 fd 7f 84 24 e0 08 	vmovdqa %ymm0,0x8e0(%rsp)
  4074e7:	00 00 
  4074e9:	c5 fd 7f 84 24 00 09 	vmovdqa %ymm0,0x900(%rsp)
  4074f0:	00 00 
  4074f2:	c5 fd 7f 84 24 20 09 	vmovdqa %ymm0,0x920(%rsp)
  4074f9:	00 00 
  4074fb:	c5 fd 7f 84 24 40 09 	vmovdqa %ymm0,0x940(%rsp)
  407502:	00 00 
  407504:	c5 fd 7f 84 24 60 09 	vmovdqa %ymm0,0x960(%rsp)
  40750b:	00 00 
  40750d:	c4 e2 7b 4b 24 02    	tileloadd (%rdx,%rax,1),%tmm4
  407513:	48 8d 94 24 80 05 00 	lea    0x580(%rsp),%rdx
  40751a:	00 
  40751b:	c4 e2 7b 4b 2c 02    	tileloadd (%rdx,%rax,1),%tmm5
  407521:	ba 00 04 00 00       	mov    $0x400,%edx
  407526:	c4 e2 7b 49 c0       	tilezero %tmm0
  40752b:	c4 e2 7b 49 c8       	tilezero %tmm1
  407530:	c4 e2 7b 49 d0       	tilezero %tmm2
  407535:	c4 e2 7b 49 d8       	tilezero %tmm3
  40753a:	b8 00 01 00 00       	mov    $0x100,%eax
  40753f:	90                   	nop
  407540:	c4 e2 52 5c c4       	tdpbf16ps %tmm5,%tmm4,%tmm0
  407545:	c4 e2 52 5c cc       	tdpbf16ps %tmm5,%tmm4,%tmm1
  40754a:	c4 e2 52 5c d4       	tdpbf16ps %tmm5,%tmm4,%tmm2
  40754f:	c4 e2 52 5c dc       	tdpbf16ps %tmm5,%tmm4,%tmm3
  407554:	ff c8                	dec    %eax
  407556:	75 e8                	jne    407540 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x390>
  407558:	ff ca                	dec    %edx
  40755a:	75 ca                	jne    407526 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x376>
  40755c:	48 8d 8c 24 80 09 00 	lea    0x980(%rsp),%rcx
  407563:	00 
  407564:	b8 40 00 00 00       	mov    $0x40,%eax
  407569:	c4 e2 7a 4b 04 01    	tilestored %tmm0,(%rcx,%rax,1)
  40756f:	48 8d 94 24 80 0d 00 	lea    0xd80(%rsp),%rdx
  407576:	00 
  407577:	c4 e2 7a 4b 0c 02    	tilestored %tmm1,(%rdx,%rax,1)
  40757d:	48 8d 94 24 80 11 00 	lea    0x1180(%rsp),%rdx
  407584:	00 
  407585:	c4 e2 7a 4b 14 02    	tilestored %tmm2,(%rdx,%rax,1)
  40758b:	48 8d 94 24 80 15 00 	lea    0x1580(%rsp),%rdx
  407592:	00 
  407593:	c4 e2 7a 4b 1c 02    	tilestored %tmm3,(%rdx,%rax,1)
  407599:	62 61 7d 28 6f 05 dd 	vmovdqa32 0x91dd(%rip),%ymm24        # 410780 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  4075a0:	91 00 00 
  4075a3:	62 61 7d 28 6f 0d b3 	vmovdqa32 0x91b3(%rip),%ymm25        # 410760 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1a0>
  4075aa:	91 00 00 
  4075ad:	c4 e2 7d 58 3d ca 91 	vpbroadcastd 0x91ca(%rip),%ymm7        # 410780 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  4075b4:	00 00 
  4075b6:	48 8b 1d e3 91 00 00 	mov    0x91e3(%rip),%rbx        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  4075bd:	62 e2 7d 28 18 3d fd 	vbroadcastss 0x91fd(%rip),%ymm23        # 4107c4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x204>
  4075c4:	91 00 00 
  4075c7:	62 01 7d 28 6f d0    	vmovdqa32 %ymm24,%ymm26
  4075cd:	45 31 ed             	xor    %r13d,%r13d
  4075d0:	c5 fd 7f bc 24 20 01 	vmovdqa %ymm7,0x120(%rsp)
  4075d7:	00 00 
  4075d9:	62 01 7d 28 6f c1    	vmovdqa32 %ymm25,%ymm24
  4075df:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  4075e6:	48 8d 91 00 fc ff ff 	lea    -0x400(%rcx),%rdx
  4075ed:	62 01 25 00 ef db    	vpxord %xmm27,%xmm27,%xmm27
  4075f3:	c5 fc 28 72 20       	vmovaps 0x20(%rdx),%ymm6
  4075f8:	c5 fc 28 1a          	vmovaps (%rdx),%ymm3
  4075fc:	62 b3 7d 28 19 f4 01 	vextractf32x4 $0x1,%ymm6,%xmm20
  407603:	c5 fc 28 72 40       	vmovaps 0x40(%rdx),%ymm6
  407608:	62 b3 7d 28 19 dd 01 	vextractf32x4 $0x1,%ymm3,%xmm21
  40760f:	c4 e3 7d 19 f1 01    	vextractf128 $0x1,%ymm6,%xmm1
  407615:	c5 fc 28 72 60       	vmovaps 0x60(%rdx),%ymm6
  40761a:	c5 fc 28 9a 20 01 00 	vmovaps 0x120(%rdx),%ymm3
  407621:	00 
  407622:	c4 e3 7d 19 f0 01    	vextractf128 $0x1,%ymm6,%xmm0
  407628:	c5 fc 28 b2 80 00 00 	vmovaps 0x80(%rdx),%ymm6
  40762f:	00 
  407630:	c5 fc 5a c0          	vcvtps2pd %xmm0,%ymm0
  407634:	c4 c3 7d 19 f5 01    	vextractf128 $0x1,%ymm6,%xmm13
  40763a:	c5 fc 28 b2 a0 00 00 	vmovaps 0xa0(%rdx),%ymm6
  407641:	00 
  407642:	c5 fd 29 84 24 00 01 	vmovapd %ymm0,0x100(%rsp)
  407649:	00 00 
  40764b:	c4 c3 7d 19 f4 01    	vextractf128 $0x1,%ymm6,%xmm12
  407651:	c5 fc 28 b2 c0 00 00 	vmovaps 0xc0(%rdx),%ymm6
  407658:	00 
  407659:	c5 fc 28 82 a0 01 00 	vmovaps 0x1a0(%rdx),%ymm0
  407660:	00 
  407661:	c4 c3 7d 19 f1 01    	vextractf128 $0x1,%ymm6,%xmm9
  407667:	c4 e3 7d 19 dd 01    	vextractf128 $0x1,%ymm3,%xmm5
  40766d:	c5 fc 28 b2 e0 00 00 	vmovaps 0xe0(%rdx),%ymm6
  407674:	00 
  407675:	c5 fc 28 9a 40 01 00 	vmovaps 0x140(%rdx),%ymm3
  40767c:	00 
  40767d:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  407684:	62 61 7c 28 5a 72 02 	vcvtps2pd 0x20(%rdx),%ymm30
  40768b:	62 61 7c 28 5a 6a 04 	vcvtps2pd 0x40(%rdx),%ymm29
  407692:	c5 7c 5a b2 40 01 00 	vcvtps2pd 0x140(%rdx),%ymm14
  407699:	00 
  40769a:	62 e1 7c 28 5a 32    	vcvtps2pd (%rdx),%ymm22
  4076a0:	62 e1 7c 28 5a 5a 06 	vcvtps2pd 0x60(%rdx),%ymm19
  4076a7:	62 e1 7c 28 5a 52 08 	vcvtps2pd 0x80(%rdx),%ymm18
  4076ae:	62 e1 7c 28 5a 4a 0a 	vcvtps2pd 0xa0(%rdx),%ymm17
  4076b5:	62 e1 7c 28 5a 42 0c 	vcvtps2pd 0xc0(%rdx),%ymm16
  4076bc:	c5 7c 5a ba e0 00 00 	vcvtps2pd 0xe0(%rdx),%ymm15
  4076c3:	00 
  4076c4:	62 61 7c 28 5a 62 10 	vcvtps2pd 0x100(%rdx),%ymm28
  4076cb:	62 61 7c 28 5a 4a 12 	vcvtps2pd 0x120(%rdx),%ymm25
  4076d2:	c5 7c 5a 9a 60 01 00 	vcvtps2pd 0x160(%rdx),%ymm11
  4076d9:	00 
  4076da:	c5 7c 5a 92 80 01 00 	vcvtps2pd 0x180(%rdx),%ymm10
  4076e1:	00 
  4076e2:	c5 7c 5a 82 a0 01 00 	vcvtps2pd 0x1a0(%rdx),%ymm8
  4076e9:	00 
  4076ea:	c5 fc 28 92 80 01 00 	vmovaps 0x180(%rdx),%ymm2
  4076f1:	00 
  4076f2:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  4076f8:	c4 e3 7d 19 f7 01    	vextractf128 $0x1,%ymm6,%xmm7
  4076fe:	62 61 7c 28 5a 7a 1c 	vcvtps2pd 0x1c0(%rdx),%ymm31
  407705:	c5 fc 28 b2 00 01 00 	vmovaps 0x100(%rdx),%ymm6
  40770c:	00 
  40770d:	c4 e3 7d 19 dc 01    	vextractf128 $0x1,%ymm3,%xmm4
  407713:	c5 fd 29 44 24 40    	vmovapd %ymm0,0x40(%rsp)
  407719:	c5 fc 28 9a 60 01 00 	vmovaps 0x160(%rdx),%ymm3
  407720:	00 
  407721:	c5 fc 5a c9          	vcvtps2pd %xmm1,%ymm1
  407725:	c5 fd 29 8c 24 e0 00 	vmovapd %ymm1,0xe0(%rsp)
  40772c:	00 00 
  40772e:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0x60(%rsp)
  407735:	03 
  407736:	c5 fc 28 82 c0 01 00 	vmovaps 0x1c0(%rdx),%ymm0
  40773d:	00 
  40773e:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  407745:	07 
  407746:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  40774d:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  407753:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  40775a:	00 00 
  40775c:	c5 fc 28 82 e0 01 00 	vmovaps 0x1e0(%rdx),%ymm0
  407763:	00 
  407764:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407769:	62 61 7c 28 5a 7a 1e 	vcvtps2pd 0x1e0(%rdx),%ymm31
  407770:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xa0(%rsp)
  407777:	05 
  407778:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  40777f:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  407784:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  40778a:	c5 fd 29 84 24 c0 00 	vmovapd %ymm0,0xc0(%rsp)
  407791:	00 00 
  407793:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  407798:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  40779c:	62 b1 cd 00 15 ce    	vunpckhpd %xmm22,%xmm22,%xmm1
  4077a2:	62 a3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm22,%xmm22
  4077a9:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4077ad:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  4077b4:	07 
  4077b5:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  4077ba:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  4077bf:	62 61 fd 08 6e f8    	vmovq  %rax,%xmm31
  4077c5:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  4077ca:	62 91 f7 08 58 cf    	vaddsd %xmm31,%xmm1,%xmm1
  4077d0:	62 21 cd 00 15 fe    	vunpckhpd %xmm22,%xmm22,%xmm31
  4077d6:	62 a1 7c 28 5a ed    	vcvtps2pd %xmm21,%ymm21
  4077dc:	62 f1 87 00 58 c9    	vaddsd %xmm1,%xmm31,%xmm1
  4077e2:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  4077e9:	07 
  4077ea:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  4077ef:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  4077f4:	62 e1 fd 08 6e f0    	vmovq  %rax,%xmm22
  4077fa:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  4077ff:	62 b1 f7 08 58 ce    	vaddsd %xmm22,%xmm1,%xmm1
  407805:	62 21 d5 00 15 fd    	vunpckhpd %xmm21,%xmm21,%xmm31
  40780b:	62 a3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm21,%xmm21
  407812:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  407819:	07 
  40781a:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  40781f:	62 61 87 00 58 f9    	vaddsd %xmm1,%xmm31,%xmm31
  407825:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  40782a:	62 61 fd 08 13 74 24 	vmovlpd %xmm30,0x38(%rsp)
  407831:	07 
  407832:	62 01 f7 08 58 ff    	vaddsd %xmm31,%xmm1,%xmm31
  407838:	62 a1 d5 00 15 f5    	vunpckhpd %xmm21,%xmm21,%xmm22
  40783e:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407843:	62 81 cf 00 58 f7    	vaddsd %xmm31,%xmm22,%xmm22
  407849:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  40784e:	62 01 8d 00 15 fe    	vunpckhpd %xmm30,%xmm30,%xmm31
  407854:	62 a1 f7 08 58 f6    	vaddsd %xmm22,%xmm1,%xmm22
  40785a:	62 a1 7c 28 5a e4    	vcvtps2pd %xmm20,%ymm20
  407860:	c5 fd 28 8c 24 e0 00 	vmovapd 0xe0(%rsp),%ymm1
  407867:	00 00 
  407869:	62 21 87 00 58 fe    	vaddsd %xmm22,%xmm31,%xmm31
  40786f:	62 23 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm30,%xmm22
  407876:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  40787d:	07 
  40787e:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  407885:	07 
  407886:	62 a1 cd 00 15 f6    	vunpckhpd %xmm22,%xmm22,%xmm22
  40788c:	62 01 8f 00 58 f7    	vaddsd %xmm31,%xmm30,%xmm30
  407892:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  407899:	07 
  40789a:	62 61 ff 08 10 7c 24 	vmovsd 0x38(%rsp),%xmm31
  4078a1:	07 
  4078a2:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  4078a8:	62 21 dd 00 15 f4    	vunpckhpd %xmm20,%xmm20,%xmm30
  4078ae:	62 a3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm20,%xmm20
  4078b5:	62 a1 87 00 58 f6    	vaddsd %xmm22,%xmm31,%xmm22
  4078bb:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  4078c2:	07 
  4078c3:	62 a1 dd 00 15 ec    	vunpckhpd %xmm20,%xmm20,%xmm21
  4078c9:	62 21 8f 00 58 f6    	vaddsd %xmm22,%xmm30,%xmm30
  4078cf:	62 e1 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm22
  4078d6:	07 
  4078d7:	62 61 fd 08 13 6c 24 	vmovlpd %xmm29,0x38(%rsp)
  4078de:	07 
  4078df:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  4078e5:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  4078ec:	07 
  4078ed:	c5 f9 13 8c 24 e0 00 	vmovlpd %xmm1,0xe0(%rsp)
  4078f4:	00 00 
  4078f6:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  4078fc:	62 81 95 00 15 f5    	vunpckhpd %xmm29,%xmm29,%xmm22
  407902:	c4 41 7c 5a ed       	vcvtps2pd %xmm13,%ymm13
  407907:	62 a1 8f 00 58 ed    	vaddsd %xmm21,%xmm30,%xmm21
  40790d:	c4 41 7c 5a e4       	vcvtps2pd %xmm12,%ymm12
  407912:	c4 41 7c 5a c9       	vcvtps2pd %xmm9,%ymm9
  407917:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  40791d:	62 23 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm29,%xmm21
  407924:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  40792b:	07 
  40792c:	62 61 ff 08 10 6c 24 	vmovsd 0x38(%rsp),%xmm29
  407933:	07 
  407934:	62 a1 d5 00 15 ed    	vunpckhpd %xmm21,%xmm21,%xmm21
  40793a:	62 a1 97 00 58 f6    	vaddsd %xmm22,%xmm29,%xmm22
  407940:	62 61 ff 08 10 6c 24 	vmovsd 0xe0(%rsp),%xmm29
  407947:	1c 
  407948:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0xe0(%rsp)
  40794f:	1c 
  407950:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  407956:	62 e1 f5 08 15 f1    	vunpckhpd %xmm1,%xmm1,%xmm22
  40795c:	62 f3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm1,%xmm1
  407963:	62 a1 97 00 58 ed    	vaddsd %xmm21,%xmm29,%xmm21
  407969:	62 e1 f5 08 15 e1    	vunpckhpd %xmm1,%xmm1,%xmm20
  40796f:	c5 fc 5a ff          	vcvtps2pd %xmm7,%ymm7
  407973:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  407979:	c4 e3 7d 19 f6 01    	vextractf128 $0x1,%ymm6,%xmm6
  40797f:	c5 fc 5a f6          	vcvtps2pd %xmm6,%ymm6
  407983:	62 a1 f7 08 58 ee    	vaddsd %xmm22,%xmm1,%xmm21
  407989:	62 e1 ff 08 10 74 24 	vmovsd 0xe0(%rsp),%xmm22
  407990:	1c 
  407991:	c5 fc 5a ed          	vcvtps2pd %xmm5,%ymm5
  407995:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  40799b:	62 a1 e5 00 15 eb    	vunpckhpd %xmm19,%xmm19,%xmm21
  4079a1:	62 a3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm19,%xmm19
  4079a8:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  4079ae:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0xe0(%rsp)
  4079b5:	1c 
  4079b6:	62 e1 ff 08 10 74 24 	vmovsd 0xe0(%rsp),%xmm22
  4079bd:	1c 
  4079be:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  4079c4:	c5 fd 28 84 24 00 01 	vmovapd 0x100(%rsp),%ymm0
  4079cb:	00 00 
  4079cd:	62 a1 e5 00 15 e3    	vunpckhpd %xmm19,%xmm19,%xmm20
  4079d3:	62 a1 cf 00 58 ed    	vaddsd %xmm21,%xmm22,%xmm21
  4079d9:	c5 f9 13 84 24 00 01 	vmovlpd %xmm0,0x100(%rsp)
  4079e0:	00 00 
  4079e2:	62 e1 ff 08 10 74 24 	vmovsd 0x100(%rsp),%xmm22
  4079e9:	20 
  4079ea:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  4079f0:	62 e1 fd 08 15 e8    	vunpckhpd %xmm0,%xmm0,%xmm21
  4079f6:	62 f3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm0,%xmm0
  4079fd:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  407a03:	62 e1 fd 08 15 d8    	vunpckhpd %xmm0,%xmm0,%xmm19
  407a09:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x100(%rsp)
  407a10:	20 
  407a11:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  407a17:	c5 fc 5a e4          	vcvtps2pd %xmm4,%ymm4
  407a1b:	c4 e3 7d 19 db 01    	vextractf128 $0x1,%ymm3,%xmm3
  407a21:	62 a1 ff 08 58 e5    	vaddsd %xmm21,%xmm0,%xmm20
  407a27:	62 e1 ff 08 10 6c 24 	vmovsd 0x100(%rsp),%xmm21
  407a2e:	20 
  407a2f:	c5 fc 5a db          	vcvtps2pd %xmm3,%ymm3
  407a33:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  407a39:	62 a1 ed 00 15 e2    	vunpckhpd %xmm18,%xmm18,%xmm20
  407a3f:	62 a3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm18,%xmm18
  407a46:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  407a4c:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x100(%rsp)
  407a53:	20 
  407a54:	62 e1 ff 08 10 6c 24 	vmovsd 0x100(%rsp),%xmm21
  407a5b:	20 
  407a5c:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  407a62:	62 a1 ed 00 15 da    	vunpckhpd %xmm18,%xmm18,%xmm19
  407a68:	c5 79 13 ac 24 00 01 	vmovlpd %xmm13,0x100(%rsp)
  407a6f:	00 00 
  407a71:	62 a1 d7 00 58 e4    	vaddsd %xmm20,%xmm21,%xmm20
  407a77:	62 e1 ff 08 10 6c 24 	vmovsd 0x100(%rsp),%xmm21
  407a7e:	20 
  407a7f:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x100(%rsp)
  407a86:	20 
  407a87:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  407a8d:	62 c1 95 08 15 e5    	vunpckhpd %xmm13,%xmm13,%xmm20
  407a93:	62 53 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm13,%xmm13
  407a9a:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  407aa0:	62 c1 95 08 15 d5    	vunpckhpd %xmm13,%xmm13,%xmm18
  407aa6:	c4 e3 7d 19 d2 01    	vextractf128 $0x1,%ymm2,%xmm2
  407aac:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  407ab2:	c5 fc 5a d2          	vcvtps2pd %xmm2,%ymm2
  407ab6:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  407abd:	62 a1 97 08 58 dc    	vaddsd %xmm20,%xmm13,%xmm19
  407ac3:	62 e1 ff 08 10 64 24 	vmovsd 0x100(%rsp),%xmm20
  407aca:	20 
  407acb:	62 43 fd 28 19 cd 01 	vextractf64x2 $0x1,%ymm25,%xmm13
  407ad2:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  407ad8:	62 a1 f5 00 15 d9    	vunpckhpd %xmm17,%xmm17,%xmm19
  407ade:	62 a3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm17,%xmm17
  407ae5:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  407aeb:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x100(%rsp)
  407af2:	20 
  407af3:	62 e1 ff 08 10 64 24 	vmovsd 0x100(%rsp),%xmm20
  407afa:	20 
  407afb:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  407b01:	62 a1 f5 00 15 d1    	vunpckhpd %xmm17,%xmm17,%xmm18
  407b07:	c5 79 13 a4 24 00 01 	vmovlpd %xmm12,0x100(%rsp)
  407b0e:	00 00 
  407b10:	62 a1 df 00 58 db    	vaddsd %xmm19,%xmm20,%xmm19
  407b16:	62 e1 ff 08 10 64 24 	vmovsd 0x100(%rsp),%xmm20
  407b1d:	20 
  407b1e:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x100(%rsp)
  407b25:	20 
  407b26:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  407b2c:	62 c1 9d 08 15 dc    	vunpckhpd %xmm12,%xmm12,%xmm19
  407b32:	62 53 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm12,%xmm12
  407b39:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  407b3f:	62 c1 9d 08 15 cc    	vunpckhpd %xmm12,%xmm12,%xmm17
  407b45:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  407b4b:	62 a1 9f 08 58 d3    	vaddsd %xmm19,%xmm12,%xmm18
  407b51:	62 e1 ff 08 10 5c 24 	vmovsd 0x100(%rsp),%xmm19
  407b58:	20 
  407b59:	62 53 fd 28 19 f4 01 	vextractf64x2 $0x1,%ymm14,%xmm12
  407b60:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  407b66:	62 a1 fd 00 15 d0    	vunpckhpd %xmm16,%xmm16,%xmm18
  407b6c:	62 a3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm16,%xmm16
  407b73:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  407b79:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x100(%rsp)
  407b80:	20 
  407b81:	62 e1 ff 08 10 5c 24 	vmovsd 0x100(%rsp),%xmm19
  407b88:	20 
  407b89:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  407b8f:	62 a1 fd 00 15 c8    	vunpckhpd %xmm16,%xmm16,%xmm17
  407b95:	c5 79 13 8c 24 00 01 	vmovlpd %xmm9,0x100(%rsp)
  407b9c:	00 00 
  407b9e:	62 a1 e7 00 58 d2    	vaddsd %xmm18,%xmm19,%xmm18
  407ba4:	62 e1 ff 08 10 5c 24 	vmovsd 0x100(%rsp),%xmm19
  407bab:	20 
  407bac:	c5 79 13 bc 24 00 01 	vmovlpd %xmm15,0x100(%rsp)
  407bb3:	00 00 
  407bb5:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  407bbb:	62 c1 b5 08 15 d1    	vunpckhpd %xmm9,%xmm9,%xmm18
  407bc1:	62 53 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm9,%xmm9
  407bc8:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  407bce:	62 c1 b5 08 15 c1    	vunpckhpd %xmm9,%xmm9,%xmm16
  407bd4:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  407bda:	62 a1 b7 08 58 ca    	vaddsd %xmm18,%xmm9,%xmm17
  407be0:	62 e1 ff 08 10 54 24 	vmovsd 0x100(%rsp),%xmm18
  407be7:	20 
  407be8:	c5 f9 13 bc 24 00 01 	vmovlpd %xmm7,0x100(%rsp)
  407bef:	00 00 
  407bf1:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  407bf7:	62 c1 85 08 15 cf    	vunpckhpd %xmm15,%xmm15,%xmm17
  407bfd:	62 53 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm15,%xmm15
  407c04:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  407c0a:	62 e1 ff 08 10 54 24 	vmovsd 0x100(%rsp),%xmm18
  407c11:	20 
  407c12:	62 61 fd 08 13 64 24 	vmovlpd %xmm28,0x100(%rsp)
  407c19:	20 
  407c1a:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  407c20:	62 c1 85 08 15 c7    	vunpckhpd %xmm15,%xmm15,%xmm16
  407c26:	62 a1 87 08 58 c9    	vaddsd %xmm17,%xmm15,%xmm17
  407c2c:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  407c32:	62 e1 c5 08 15 cf    	vunpckhpd %xmm7,%xmm7,%xmm17
  407c38:	62 f3 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm7,%xmm7
  407c3f:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  407c45:	c5 41 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm15
  407c49:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  407c4f:	62 a1 c7 08 58 c1    	vaddsd %xmm17,%xmm7,%xmm16
  407c55:	62 e1 ff 08 10 4c 24 	vmovsd 0x100(%rsp),%xmm17
  407c5c:	20 
  407c5d:	c5 f9 13 b4 24 00 01 	vmovlpd %xmm6,0x100(%rsp)
  407c64:	00 00 
  407c66:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  407c6c:	62 81 9d 00 15 c4    	vunpckhpd %xmm28,%xmm28,%xmm16
  407c72:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  407c78:	62 e1 ff 08 10 4c 24 	vmovsd 0x100(%rsp),%xmm17
  407c7f:	20 
  407c80:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  407c86:	62 43 fd 28 19 e7 01 	vextractf64x2 $0x1,%ymm28,%xmm15
  407c8d:	62 a1 87 08 58 c0    	vaddsd %xmm16,%xmm15,%xmm16
  407c93:	c4 41 01 15 ff       	vunpckhpd %xmm15,%xmm15,%xmm15
  407c98:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  407c9e:	62 e1 cd 08 15 c6    	vunpckhpd %xmm6,%xmm6,%xmm16
  407ca4:	62 f3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm6,%xmm6
  407cab:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  407cb1:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  407cb7:	62 31 cf 08 58 f8    	vaddsd %xmm16,%xmm6,%xmm15
  407cbd:	c5 c9 15 f6          	vunpckhpd %xmm6,%xmm6,%xmm6
  407cc1:	c4 c1 4b 58 f7       	vaddsd %xmm15,%xmm6,%xmm6
  407cc6:	62 11 b5 00 15 f9    	vunpckhpd %xmm25,%xmm25,%xmm15
  407ccc:	62 f1 b7 00 58 f6    	vaddsd %xmm6,%xmm25,%xmm6
  407cd2:	c5 03 58 fe          	vaddsd %xmm6,%xmm15,%xmm15
  407cd6:	c4 c1 13 58 f7       	vaddsd %xmm15,%xmm13,%xmm6
  407cdb:	c4 41 11 15 ed       	vunpckhpd %xmm13,%xmm13,%xmm13
  407ce0:	c5 13 58 ee          	vaddsd %xmm6,%xmm13,%xmm13
  407ce4:	c5 d1 15 f5          	vunpckhpd %xmm5,%xmm5,%xmm6
  407ce8:	c4 41 53 58 ed       	vaddsd %xmm13,%xmm5,%xmm13
  407ced:	62 f3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm5,%xmm5
  407cf4:	c4 c1 4b 58 f5       	vaddsd %xmm13,%xmm6,%xmm6
  407cf9:	c5 d3 58 f6          	vaddsd %xmm6,%xmm5,%xmm6
  407cfd:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  407d01:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  407d05:	c4 c1 09 15 f6       	vunpckhpd %xmm14,%xmm14,%xmm6
  407d0a:	c5 8b 58 ed          	vaddsd %xmm5,%xmm14,%xmm5
  407d0e:	c5 cb 58 f5          	vaddsd %xmm5,%xmm6,%xmm6
  407d12:	c5 9b 58 ee          	vaddsd %xmm6,%xmm12,%xmm5
  407d16:	c4 41 19 15 e4       	vunpckhpd %xmm12,%xmm12,%xmm12
  407d1b:	c5 1b 58 e5          	vaddsd %xmm5,%xmm12,%xmm12
  407d1f:	c5 d9 15 ec          	vunpckhpd %xmm4,%xmm4,%xmm5
  407d23:	c4 c1 5b 58 f4       	vaddsd %xmm12,%xmm4,%xmm6
  407d28:	62 f3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm4,%xmm4
  407d2f:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  407d33:	c5 fd 28 74 24 40    	vmovapd 0x40(%rsp),%ymm6
  407d39:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  407d3d:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  407d41:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  407d48:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  407d4c:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  407d51:	c5 a3 58 ed          	vaddsd %xmm5,%xmm11,%xmm5
  407d55:	62 53 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm11,%xmm11
  407d5c:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  407d60:	c5 a3 58 ec          	vaddsd %xmm4,%xmm11,%xmm5
  407d64:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  407d69:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  407d6d:	c5 e1 15 eb          	vunpckhpd %xmm3,%xmm3,%xmm5
  407d71:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  407d75:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  407d79:	62 f3 fd 28 19 dc 01 	vextractf64x2 $0x1,%ymm3,%xmm4
  407d80:	c5 db 58 dd          	vaddsd %xmm5,%xmm4,%xmm3
  407d84:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  407d88:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  407d8c:	c4 c1 29 15 da       	vunpckhpd %xmm10,%xmm10,%xmm3
  407d91:	c5 ab 58 e4          	vaddsd %xmm4,%xmm10,%xmm4
  407d95:	62 53 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm10,%xmm10
  407d9c:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  407da0:	c5 ab 58 db          	vaddsd %xmm3,%xmm10,%xmm3
  407da4:	c4 41 29 15 d2       	vunpckhpd %xmm10,%xmm10,%xmm10
  407da9:	c5 2b 58 d3          	vaddsd %xmm3,%xmm10,%xmm10
  407dad:	c5 e9 15 da          	vunpckhpd %xmm2,%xmm2,%xmm3
  407db1:	c4 c1 6b 58 e2       	vaddsd %xmm10,%xmm2,%xmm4
  407db6:	62 f3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm2,%xmm2
  407dbd:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  407dc1:	c5 eb 58 db          	vaddsd %xmm3,%xmm2,%xmm3
  407dc5:	c5 e9 15 d2          	vunpckhpd %xmm2,%xmm2,%xmm2
  407dc9:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  407dcd:	c4 c1 39 15 d8       	vunpckhpd %xmm8,%xmm8,%xmm3
  407dd2:	c5 bb 58 d2          	vaddsd %xmm2,%xmm8,%xmm2
  407dd6:	62 53 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm8
  407ddd:	c4 41 39 15 c8       	vunpckhpd %xmm8,%xmm8,%xmm9
  407de2:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  407de6:	c5 bb 58 d3          	vaddsd %xmm3,%xmm8,%xmm2
  407dea:	c5 33 58 ca          	vaddsd %xmm2,%xmm9,%xmm9
  407dee:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  407df2:	c4 c1 4b 58 d9       	vaddsd %xmm9,%xmm6,%xmm3
  407df7:	c5 fd 28 74 24 60    	vmovapd 0x60(%rsp),%ymm6
  407dfd:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  407e01:	62 d3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm8
  407e08:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  407e0c:	c5 f1 15 c9          	vunpckhpd %xmm1,%xmm1,%xmm1
  407e10:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  407e14:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  407e18:	c5 cb 58 c9          	vaddsd %xmm1,%xmm6,%xmm1
  407e1c:	c5 fd 28 b4 24 80 00 	vmovapd 0x80(%rsp),%ymm6
  407e23:	00 00 
  407e25:	c5 fc 28 a2 00 fe ff 	vmovaps -0x200(%rdx),%ymm4
  407e2c:	ff 
  407e2d:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  407e31:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  407e38:	62 e1 7c 28 28 52 f2 	vmovaps -0x1c0(%rdx),%ymm18
  407e3f:	c5 bb 58 ca          	vaddsd %xmm2,%xmm8,%xmm1
  407e43:	c4 41 39 15 c0       	vunpckhpd %xmm8,%xmm8,%xmm8
  407e48:	c5 fc 28 aa 80 fe ff 	vmovaps -0x180(%rdx),%ymm5
  407e4f:	ff 
  407e50:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  407e54:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  407e58:	62 f2 3d 20 7f 62 f1 	vpermt2ps -0x1e0(%rdx),%ymm24,%ymm4
  407e5f:	c4 c1 4b 58 d0       	vaddsd %xmm8,%xmm6,%xmm2
  407e64:	c5 fd 28 b4 24 a0 00 	vmovapd 0xa0(%rsp),%ymm6
  407e6b:	00 00 
  407e6d:	c5 7c 28 ba c0 fe ff 	vmovaps -0x140(%rdx),%ymm15
  407e74:	ff 
  407e75:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  407e79:	62 f3 fd 28 19 f7 01 	vextractf64x2 $0x1,%ymm6,%xmm7
  407e80:	62 e2 3d 20 7f 52 f3 	vpermt2ps -0x1a0(%rdx),%ymm24,%ymm18
  407e87:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  407e8b:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  407e8f:	62 f2 3d 20 7f 6a f5 	vpermt2ps -0x160(%rdx),%ymm24,%ymm5
  407e96:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  407e9a:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  407e9e:	62 e1 7c 28 28 4a fa 	vmovaps -0xc0(%rdx),%ymm17
  407ea5:	c5 cb 58 c0          	vaddsd %xmm0,%xmm6,%xmm0
  407ea9:	c5 fd 28 b4 24 c0 00 	vmovapd 0xc0(%rsp),%ymm6
  407eb0:	00 00 
  407eb2:	c5 fc 28 52 80       	vmovaps -0x80(%rdx),%ymm2
  407eb7:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  407ebb:	c5 7c 28 ec          	vmovaps %ymm4,%ymm13
  407ebf:	62 72 3d 20 7f 7a f7 	vpermt2ps -0x120(%rdx),%ymm24,%ymm15
  407ec6:	c5 c3 58 c1          	vaddsd %xmm1,%xmm7,%xmm0
  407eca:	c5 c1 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm7
  407ece:	62 32 3d 20 7f ea    	vpermt2ps %ymm18,%ymm24,%ymm13
  407ed4:	c5 c3 58 f8          	vaddsd %xmm0,%xmm7,%xmm7
  407ed8:	c5 c9 15 c6          	vunpckhpd %xmm6,%xmm6,%xmm0
  407edc:	62 b2 2d 20 7f e2    	vpermt2ps %ymm18,%ymm26,%ymm4
  407ee2:	c5 cb 58 cf          	vaddsd %xmm7,%xmm6,%xmm1
  407ee6:	c5 7c 28 8a 40 fe ff 	vmovaps -0x1c0(%rdx),%ymm9
  407eed:	ff 
  407eee:	c5 fc 28 ba 80 fe ff 	vmovaps -0x180(%rdx),%ymm7
  407ef5:	ff 
  407ef6:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  407efa:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  407f01:	c5 7c 28 b2 c0 fe ff 	vmovaps -0x140(%rdx),%ymm14
  407f08:	ff 
  407f09:	c5 fb 58 d9          	vaddsd %xmm1,%xmm0,%xmm3
  407f0d:	c5 fc 28 8a 00 ff ff 	vmovaps -0x100(%rdx),%ymm1
  407f14:	ff 
  407f15:	c5 fc 28 b2 00 fe ff 	vmovaps -0x200(%rdx),%ymm6
  407f1c:	ff 
  407f1d:	62 f2 3d 20 7f 4a f9 	vpermt2ps -0xe0(%rdx),%ymm24,%ymm1
  407f24:	c5 7c 28 9a 00 ff ff 	vmovaps -0x100(%rdx),%ymm11
  407f2b:	ff 
  407f2c:	c5 7c 28 82 40 ff ff 	vmovaps -0xc0(%rdx),%ymm8
  407f33:	ff 
  407f34:	62 e1 7c 28 28 42 fc 	vmovaps -0x80(%rdx),%ymm16
  407f3b:	62 e1 7c 28 28 d5    	vmovaps %ymm5,%ymm18
  407f41:	c5 7c 28 62 c0       	vmovaps -0x40(%rdx),%ymm12
  407f46:	62 e2 3d 20 7f 4a fb 	vpermt2ps -0xa0(%rdx),%ymm24,%ymm17
  407f4d:	62 c2 3d 20 7f d7    	vpermt2ps %ymm15,%ymm24,%ymm18
  407f53:	62 d2 2d 20 7f ef    	vpermt2ps %ymm15,%ymm26,%ymm5
  407f59:	62 f2 3d 20 7f 52 fd 	vpermt2ps -0x60(%rdx),%ymm24,%ymm2
  407f60:	c5 7c 28 f9          	vmovaps %ymm1,%ymm15
  407f64:	62 72 2d 20 7f 4a f3 	vpermt2ps -0x1a0(%rdx),%ymm26,%ymm9
  407f6b:	62 72 2d 20 7f 72 f7 	vpermt2ps -0x120(%rdx),%ymm26,%ymm14
  407f72:	62 72 2d 20 7f 42 fb 	vpermt2ps -0xa0(%rdx),%ymm26,%ymm8
  407f79:	62 f2 2d 20 7f 72 f1 	vpermt2ps -0x1e0(%rdx),%ymm26,%ymm6
  407f80:	62 f2 2d 20 7f 7a f5 	vpermt2ps -0x160(%rdx),%ymm26,%ymm7
  407f87:	62 72 2d 20 7f 5a f9 	vpermt2ps -0xe0(%rdx),%ymm26,%ymm11
  407f8e:	62 e2 2d 20 7f 42 fd 	vpermt2ps -0x60(%rdx),%ymm26,%ymm16
  407f95:	62 32 3d 20 7f f9    	vpermt2ps %ymm17,%ymm24,%ymm15
  407f9b:	62 72 3d 20 7f 62 ff 	vpermt2ps -0x20(%rdx),%ymm24,%ymm12
  407fa2:	62 b2 2d 20 7f c9    	vpermt2ps %ymm17,%ymm26,%ymm1
  407fa8:	62 e1 7c 28 28 ca    	vmovaps %ymm2,%ymm17
  407fae:	62 c2 3d 20 7f cc    	vpermt2ps %ymm12,%ymm24,%ymm17
  407fb4:	62 d2 2d 20 7f d4    	vpermt2ps %ymm12,%ymm26,%ymm2
  407fba:	c5 7c 28 e6          	vmovaps %ymm6,%ymm12
  407fbe:	62 52 3d 20 7f e1    	vpermt2ps %ymm9,%ymm24,%ymm12
  407fc4:	62 d2 2d 20 7f f1    	vpermt2ps %ymm9,%ymm26,%ymm6
  407fca:	c5 7c 28 52 c0       	vmovaps -0x40(%rdx),%ymm10
  407fcf:	c5 7c 28 cf          	vmovaps %ymm7,%ymm9
  407fd3:	62 52 3d 20 7f ce    	vpermt2ps %ymm14,%ymm24,%ymm9
  407fd9:	62 d2 2d 20 7f fe    	vpermt2ps %ymm14,%ymm26,%ymm7
  407fdf:	c4 41 7c 28 f3       	vmovaps %ymm11,%ymm14
  407fe4:	62 72 2d 20 7f 52 ff 	vpermt2ps -0x20(%rdx),%ymm26,%ymm10
  407feb:	62 52 3d 20 7f f0    	vpermt2ps %ymm8,%ymm24,%ymm14
  407ff1:	62 52 2d 20 7f d8    	vpermt2ps %ymm8,%ymm26,%ymm11
  407ff7:	62 c1 7c 28 28 e7    	vmovaps %ymm15,%ymm20
  407ffd:	62 31 7c 28 28 c0    	vmovaps %ymm16,%ymm8
  408003:	62 52 3d 20 7f c2    	vpermt2ps %ymm10,%ymm24,%ymm8
  408009:	62 c2 2d 20 7f c2    	vpermt2ps %ymm10,%ymm26,%ymm16
  40800f:	62 a2 3d 20 7f e1    	vpermt2ps %ymm17,%ymm24,%ymm20
  408015:	62 32 2d 20 7f f9    	vpermt2ps %ymm17,%ymm26,%ymm15
  40801b:	c4 41 7c 28 d5       	vmovaps %ymm13,%ymm10
  408020:	62 c1 7c 28 28 cc    	vmovaps %ymm12,%ymm17
  408026:	62 c1 7c 28 28 de    	vmovaps %ymm14,%ymm19
  40802c:	62 32 3d 20 7f d2    	vpermt2ps %ymm18,%ymm24,%ymm10
  408032:	62 32 2d 20 7f ea    	vpermt2ps %ymm18,%ymm26,%ymm13
  408038:	62 c2 3d 20 7f c9    	vpermt2ps %ymm9,%ymm24,%ymm17
  40803e:	62 c2 3d 20 7f d8    	vpermt2ps %ymm8,%ymm24,%ymm19
  408044:	62 52 2d 20 7f f0    	vpermt2ps %ymm8,%ymm26,%ymm14
  40804a:	62 e1 7c 28 28 d1    	vmovaps %ymm1,%ymm18
  408050:	c5 7c 28 c6          	vmovaps %ymm6,%ymm8
  408054:	62 f2 2d 20 7f f7    	vpermt2ps %ymm7,%ymm26,%ymm6
  40805a:	62 f2 2d 20 7f ca    	vpermt2ps %ymm2,%ymm26,%ymm1
  408060:	62 e2 3d 20 7f d2    	vpermt2ps %ymm2,%ymm24,%ymm18
  408066:	c5 fc 28 d6          	vmovaps %ymm6,%ymm2
  40806a:	62 b1 7c 28 28 f1    	vmovaps %ymm17,%ymm6
  408070:	62 b2 3d 20 7f f3    	vpermt2ps %ymm19,%ymm24,%ymm6
  408076:	62 52 2d 20 7f e1    	vpermt2ps %ymm9,%ymm26,%ymm12
  40807c:	62 b1 4c 28 c2 cf 04 	vcmpneqps %ymm23,%ymm6,%k1
  408083:	c5 7c 28 cc          	vmovaps %ymm4,%ymm9
  408087:	c5 7c 29 d6          	vmovaps %ymm10,%ymm6
  40808b:	62 72 3d 20 7f cd    	vpermt2ps %ymm5,%ymm24,%ymm9
  408091:	62 b2 3d 20 7f f4    	vpermt2ps %ymm20,%ymm24,%ymm6
  408097:	62 b1 4c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm6,%k0
  40809e:	c5 7c 29 ce          	vmovaps %ymm9,%ymm6
  4080a2:	62 f2 2d 20 7f e5    	vpermt2ps %ymm5,%ymm26,%ymm4
  4080a8:	62 72 3d 20 7f c7    	vpermt2ps %ymm7,%ymm24,%ymm8
  4080ae:	c5 7c 29 dd          	vmovaps %ymm11,%ymm5
  4080b2:	62 b2 3d 20 7f f2    	vpermt2ps %ymm18,%ymm24,%ymm6
  4080b8:	62 b1 4c 28 c2 df 04 	vcmpneqps %ymm23,%ymm6,%k3
  4080bf:	62 b2 3d 20 7f e8    	vpermt2ps %ymm16,%ymm24,%ymm5
  4080c5:	c5 7c 29 c6          	vmovaps %ymm8,%ymm6
  4080c9:	62 f2 3d 20 7f f5    	vpermt2ps %ymm5,%ymm24,%ymm6
  4080cf:	62 b1 4c 28 c2 e7 04 	vcmpneqps %ymm23,%ymm6,%k4
  4080d6:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  4080da:	62 d2 3d 20 7f f7    	vpermt2ps %ymm15,%ymm24,%ymm6
  4080e0:	62 b1 4c 28 c2 ef 04 	vcmpneqps %ymm23,%ymm6,%k5
  4080e7:	c5 7c 29 e6          	vmovaps %ymm12,%ymm6
  4080eb:	62 d2 3d 20 7f f6    	vpermt2ps %ymm14,%ymm24,%ymm6
  4080f1:	62 b1 4c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm6,%k6
  4080f8:	c5 fc 28 f4          	vmovaps %ymm4,%ymm6
  4080fc:	62 f2 3d 20 7f f1    	vpermt2ps %ymm1,%ymm24,%ymm6
  408102:	62 b1 4c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm6,%k7
  408109:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  40810d:	c5 f9 93 c3          	kmovb  %k3,%eax
  408111:	62 32 2d 20 7f d8    	vpermt2ps %ymm16,%ymm26,%ymm11
  408117:	c5 fc 28 f2          	vmovaps %ymm2,%ymm6
  40811b:	c5 f9 93 f1          	kmovb  %k1,%esi
  40811f:	09 c6                	or     %eax,%esi
  408121:	62 d2 3d 20 7f f3    	vpermt2ps %ymm11,%ymm24,%ymm6
  408127:	c5 f9 93 c4          	kmovb  %k4,%eax
  40812b:	09 c6                	or     %eax,%esi
  40812d:	62 b1 4c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm6,%k2
  408134:	c5 f9 93 c5          	kmovb  %k5,%eax
  408138:	62 32 2d 20 7f d4    	vpermt2ps %ymm20,%ymm26,%ymm10
  40813e:	09 c6                	or     %eax,%esi
  408140:	62 b1 7c 28 28 f9    	vmovaps %ymm17,%ymm7
  408146:	c5 f9 93 c6          	kmovb  %k6,%eax
  40814a:	62 b1 2c 28 c2 df 04 	vcmpneqps %ymm23,%ymm10,%k3
  408151:	09 c6                	or     %eax,%esi
  408153:	62 b2 2d 20 7f fb    	vpermt2ps %ymm19,%ymm26,%ymm7
  408159:	c5 f9 93 c7          	kmovb  %k7,%eax
  40815d:	62 b1 44 28 c2 e7 04 	vcmpneqps %ymm23,%ymm7,%k4
  408164:	09 c6                	or     %eax,%esi
  408166:	62 32 2d 20 7f ca    	vpermt2ps %ymm18,%ymm26,%ymm9
  40816c:	c5 f9 93 c2          	kmovb  %k2,%eax
  408170:	62 72 2d 20 7f c5    	vpermt2ps %ymm5,%ymm26,%ymm8
  408176:	09 c6                	or     %eax,%esi
  408178:	62 b1 34 28 c2 ef 04 	vcmpneqps %ymm23,%ymm9,%k5
  40817f:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  408183:	c5 7c 29 e5          	vmovaps %ymm12,%ymm5
  408187:	c5 f9 93 c3          	kmovb  %k3,%eax
  40818b:	62 b1 3c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm8,%k6
  408192:	09 c6                	or     %eax,%esi
  408194:	62 d2 2d 20 7f f7    	vpermt2ps %ymm15,%ymm26,%ymm6
  40819a:	62 d2 2d 20 7f ee    	vpermt2ps %ymm14,%ymm26,%ymm5
  4081a0:	62 b1 54 28 c2 c7 04 	vcmpneqps %ymm23,%ymm5,%k0
  4081a7:	c5 f9 93 c4          	kmovb  %k4,%eax
  4081ab:	62 b1 4c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm6,%k7
  4081b2:	09 c6                	or     %eax,%esi
  4081b4:	62 f2 2d 20 7f e1    	vpermt2ps %ymm1,%ymm26,%ymm4
  4081ba:	c5 f9 93 c5          	kmovb  %k5,%eax
  4081be:	09 c6                	or     %eax,%esi
  4081c0:	62 b1 5c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm4,%k2
  4081c7:	c5 f9 93 c6          	kmovb  %k6,%eax
  4081cb:	62 d2 2d 20 7f d3    	vpermt2ps %ymm11,%ymm26,%ymm2
  4081d1:	09 c6                	or     %eax,%esi
  4081d3:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  4081d7:	c5 f9 93 c7          	kmovb  %k7,%eax
  4081db:	09 c6                	or     %eax,%esi
  4081dd:	c5 f9 93 c0          	kmovb  %k0,%eax
  4081e1:	62 b1 6c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm2,%k0
  4081e8:	09 c6                	or     %eax,%esi
  4081ea:	c5 fb 58 db          	vaddsd %xmm3,%xmm0,%xmm3
  4081ee:	c5 f9 93 c2          	kmovb  %k2,%eax
  4081f2:	09 c6                	or     %eax,%esi
  4081f4:	c5 f9 92 ce          	kmovb  %esi,%k1
  4081f8:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  4081fc:	62 f1 7d a9 6f 4c 24 	vmovdqa32 0x120(%rsp),%ymm1{%k1}{z}
  408203:	09 
  408204:	62 61 25 20 eb d9    	vpord  %ymm1,%ymm27,%ymm27
  40820a:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  40820f:	48 39 d1             	cmp    %rdx,%rcx
  408212:	0f 85 db f3 ff ff    	jne    4075f3 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x443>
  408218:	62 91 7d 08 6f cb    	vmovdqa32 %xmm27,%xmm1
  40821e:	62 63 7d 28 39 d8 01 	vextracti32x4 $0x1,%ymm27,%xmm0
  408225:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  408229:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  40822e:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  408232:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  408237:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  40823b:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  40823f:	41 09 c5             	or     %eax,%r13d
  408242:	48 8d 84 24 80 19 00 	lea    0x1980(%rsp),%rax
  408249:	00 
  40824a:	48 39 c1             	cmp    %rax,%rcx
  40824d:	0f 85 8c f3 ff ff    	jne    4075df <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x42f>
  408253:	c4 e2 78 49 c0       	tilerelease 
  408258:	c5 f8 77             	vzeroupper 
  40825b:	e9 af ef ff ff       	jmpq   40720f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  408260:	48 8b 83 b0 00 00 00 	mov    0xb0(%rbx),%rax
  408267:	80 38 00             	cmpb   $0x0,(%rax)
  40826a:	0f 84 d5 10 00 00    	je     409345 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2195>
  408270:	c5 e1 ef db          	vpxor  %xmm3,%xmm3,%xmm3
  408274:	62 f2 7d 48 58 05 7a 	vpbroadcastd 0x857a(%rip),%zmm0        # 4107f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x238>
  40827b:	85 00 00 
  40827e:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  408283:	62 f1 fd 48 6f e3    	vmovdqa64 %zmm3,%zmm4
  408289:	62 f1 fd 48 6f eb    	vmovdqa64 %zmm3,%zmm5
  40828f:	62 f1 fd 48 6f f3    	vmovdqa64 %zmm3,%zmm6
  408295:	62 f1 fd 48 6f cb    	vmovdqa64 %zmm3,%zmm1
  40829b:	62 f1 fd 48 6f fb    	vmovdqa64 %zmm3,%zmm7
  4082a1:	62 f1 fd 48 6f d3    	vmovdqa64 %zmm3,%zmm2
  4082a7:	62 71 fd 48 6f c3    	vmovdqa64 %zmm3,%zmm8
  4082ad:	62 71 fd 48 6f cb    	vmovdqa64 %zmm3,%zmm9
  4082b3:	62 71 fd 48 6f d3    	vmovdqa64 %zmm3,%zmm10
  4082b9:	62 71 fd 48 6f db    	vmovdqa64 %zmm3,%zmm11
  4082bf:	62 71 fd 48 6f e3    	vmovdqa64 %zmm3,%zmm12
  4082c5:	62 72 7d 48 50 e0    	vpdpbusd %zmm0,%zmm0,%zmm12
  4082cb:	62 72 7d 48 50 d8    	vpdpbusd %zmm0,%zmm0,%zmm11
  4082d1:	62 72 7d 48 50 d0    	vpdpbusd %zmm0,%zmm0,%zmm10
  4082d7:	62 72 7d 48 50 c8    	vpdpbusd %zmm0,%zmm0,%zmm9
  4082dd:	62 72 7d 48 50 c0    	vpdpbusd %zmm0,%zmm0,%zmm8
  4082e3:	62 f2 7d 48 50 d0    	vpdpbusd %zmm0,%zmm0,%zmm2
  4082e9:	62 f2 7d 48 50 f8    	vpdpbusd %zmm0,%zmm0,%zmm7
  4082ef:	62 f2 7d 48 50 c8    	vpdpbusd %zmm0,%zmm0,%zmm1
  4082f5:	62 f2 7d 48 50 f0    	vpdpbusd %zmm0,%zmm0,%zmm6
  4082fb:	62 f2 7d 48 50 e8    	vpdpbusd %zmm0,%zmm0,%zmm5
  408301:	62 f2 7d 48 50 e0    	vpdpbusd %zmm0,%zmm0,%zmm4
  408307:	62 f2 7d 48 50 d8    	vpdpbusd %zmm0,%zmm0,%zmm3
  40830d:	ff c8                	dec    %eax
  40830f:	75 b4                	jne    4082c5 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x1115>
  408311:	62 53 fd 48 3b e5 01 	vextracti64x4 $0x1,%zmm12,%ymm13
  408318:	c4 41 15 fe e4       	vpaddd %ymm12,%ymm13,%ymm12
  40831d:	62 53 fd 28 39 e5 01 	vextracti64x2 $0x1,%ymm12,%xmm13
  408324:	c4 41 19 fe e5       	vpaddd %xmm13,%xmm12,%xmm12
  408329:	c4 41 79 70 ec 4e    	vpshufd $0x4e,%xmm12,%xmm13
  40832f:	c4 41 11 fe e4       	vpaddd %xmm12,%xmm13,%xmm12
  408334:	c4 63 79 16 e2 01    	vpextrd $0x1,%xmm12,%edx
  40833a:	c5 79 7e e0          	vmovd  %xmm12,%eax
  40833e:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  408342:	01 d0                	add    %edx,%eax
  408344:	c5 7b 2a e0          	vcvtsi2sd %eax,%xmm0,%xmm12
  408348:	45 31 ed             	xor    %r13d,%r13d
  40834b:	c5 1b 58 2d 4d 84 00 	vaddsd 0x844d(%rip),%xmm12,%xmm13        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  408352:	00 
  408353:	62 53 fd 48 3b dc 01 	vextracti64x4 $0x1,%zmm11,%ymm12
  40835a:	c4 41 1d fe db       	vpaddd %ymm11,%ymm12,%ymm11
  40835f:	62 53 fd 28 39 dc 01 	vextracti64x2 $0x1,%ymm11,%xmm12
  408366:	c4 41 19 fe e3       	vpaddd %xmm11,%xmm12,%xmm12
  40836b:	c4 41 79 70 dc 4e    	vpshufd $0x4e,%xmm12,%xmm11
  408371:	c4 41 21 fe dc       	vpaddd %xmm12,%xmm11,%xmm11
  408376:	c5 79 7e da          	vmovd  %xmm11,%edx
  40837a:	c4 63 79 16 d8 01    	vpextrd $0x1,%xmm11,%eax
  408380:	01 d0                	add    %edx,%eax
  408382:	c5 7b 2a d8          	vcvtsi2sd %eax,%xmm0,%xmm11
  408386:	c4 41 23 58 ed       	vaddsd %xmm13,%xmm11,%xmm13
  40838b:	62 53 fd 48 3b d3 01 	vextracti64x4 $0x1,%zmm10,%ymm11
  408392:	c4 41 25 fe d2       	vpaddd %ymm10,%ymm11,%ymm10
  408397:	62 53 fd 28 39 d3 01 	vextracti64x2 $0x1,%ymm10,%xmm11
  40839e:	c4 41 21 fe da       	vpaddd %xmm10,%xmm11,%xmm11
  4083a3:	c4 41 79 70 d3 4e    	vpshufd $0x4e,%xmm11,%xmm10
  4083a9:	c4 41 29 fe d3       	vpaddd %xmm11,%xmm10,%xmm10
  4083ae:	c4 63 79 16 d2 01    	vpextrd $0x1,%xmm10,%edx
  4083b4:	c5 79 7e d0          	vmovd  %xmm10,%eax
  4083b8:	01 d0                	add    %edx,%eax
  4083ba:	c5 7b 2a d0          	vcvtsi2sd %eax,%xmm0,%xmm10
  4083be:	c4 41 2b 58 dd       	vaddsd %xmm13,%xmm10,%xmm11
  4083c3:	62 53 fd 48 3b ca 01 	vextracti64x4 $0x1,%zmm9,%ymm10
  4083ca:	c4 41 2d fe c9       	vpaddd %ymm9,%ymm10,%ymm9
  4083cf:	62 53 fd 28 39 ca 01 	vextracti64x2 $0x1,%ymm9,%xmm10
  4083d6:	c4 41 29 fe d1       	vpaddd %xmm9,%xmm10,%xmm10
  4083db:	c4 41 79 70 ca 4e    	vpshufd $0x4e,%xmm10,%xmm9
  4083e1:	c4 41 31 fe ca       	vpaddd %xmm10,%xmm9,%xmm9
  4083e6:	c5 79 7e ca          	vmovd  %xmm9,%edx
  4083ea:	c4 63 79 16 c8 01    	vpextrd $0x1,%xmm9,%eax
  4083f0:	01 d0                	add    %edx,%eax
  4083f2:	c5 7b 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm9
  4083f6:	c4 41 33 58 db       	vaddsd %xmm11,%xmm9,%xmm11
  4083fb:	62 53 fd 48 3b c1 01 	vextracti64x4 $0x1,%zmm8,%ymm9
  408402:	c4 41 35 fe c0       	vpaddd %ymm8,%ymm9,%ymm8
  408407:	62 53 fd 28 39 c1 01 	vextracti64x2 $0x1,%ymm8,%xmm9
  40840e:	c4 41 31 fe c8       	vpaddd %xmm8,%xmm9,%xmm9
  408413:	c4 41 79 70 c1 4e    	vpshufd $0x4e,%xmm9,%xmm8
  408419:	c4 41 39 fe c1       	vpaddd %xmm9,%xmm8,%xmm8
  40841e:	62 d3 fd 48 3b d1 01 	vextracti64x4 $0x1,%zmm2,%ymm9
  408425:	c4 c1 6d fe d1       	vpaddd %ymm9,%ymm2,%ymm2
  40842a:	62 d3 fd 28 39 d1 01 	vextracti64x2 $0x1,%ymm2,%xmm9
  408431:	c5 79 7e c2          	vmovd  %xmm8,%edx
  408435:	c5 31 fe ca          	vpaddd %xmm2,%xmm9,%xmm9
  408439:	c4 63 79 16 c0 01    	vpextrd $0x1,%xmm8,%eax
  40843f:	01 d0                	add    %edx,%eax
  408441:	c4 c1 79 70 d1 4e    	vpshufd $0x4e,%xmm9,%xmm2
  408447:	c4 c1 69 fe d1       	vpaddd %xmm9,%xmm2,%xmm2
  40844c:	c5 7b 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm8
  408450:	c5 f9 7e d2          	vmovd  %xmm2,%edx
  408454:	c4 e3 79 16 d0 01    	vpextrd $0x1,%xmm2,%eax
  40845a:	01 d0                	add    %edx,%eax
  40845c:	c5 fb 2a d0          	vcvtsi2sd %eax,%xmm0,%xmm2
  408460:	c4 41 3b 58 c3       	vaddsd %xmm11,%xmm8,%xmm8
  408465:	c4 41 6b 58 c0       	vaddsd %xmm8,%xmm2,%xmm8
  40846a:	62 f3 fd 48 3b fa 01 	vextracti64x4 $0x1,%zmm7,%ymm2
  408471:	c5 ed fe d7          	vpaddd %ymm7,%ymm2,%ymm2
  408475:	62 f3 fd 28 39 d7 01 	vextracti64x2 $0x1,%ymm2,%xmm7
  40847c:	c5 e9 fe d7          	vpaddd %xmm7,%xmm2,%xmm2
  408480:	c5 f9 70 fa 4e       	vpshufd $0x4e,%xmm2,%xmm7
  408485:	c5 c1 fe d2          	vpaddd %xmm2,%xmm7,%xmm2
  408489:	c5 f9 7e d2          	vmovd  %xmm2,%edx
  40848d:	c4 e3 79 16 d0 01    	vpextrd $0x1,%xmm2,%eax
  408493:	01 d0                	add    %edx,%eax
  408495:	c5 fb 2a d0          	vcvtsi2sd %eax,%xmm0,%xmm2
  408499:	c4 41 6b 58 c0       	vaddsd %xmm8,%xmm2,%xmm8
  40849e:	62 f3 fd 48 3b ca 01 	vextracti64x4 $0x1,%zmm1,%ymm2
  4084a5:	c5 f5 fe ca          	vpaddd %ymm2,%ymm1,%ymm1
  4084a9:	62 f3 fd 28 39 ca 01 	vextracti64x2 $0x1,%ymm1,%xmm2
  4084b0:	c5 f1 fe ca          	vpaddd %xmm2,%xmm1,%xmm1
  4084b4:	c5 f9 70 d1 4e       	vpshufd $0x4e,%xmm1,%xmm2
  4084b9:	c5 e9 fe c9          	vpaddd %xmm1,%xmm2,%xmm1
  4084bd:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  4084c1:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  4084c7:	01 d0                	add    %edx,%eax
  4084c9:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  4084cd:	c4 c1 73 58 d0       	vaddsd %xmm8,%xmm1,%xmm2
  4084d2:	62 f3 fd 48 3b f1 01 	vextracti64x4 $0x1,%zmm6,%ymm1
  4084d9:	c5 f5 fe ce          	vpaddd %ymm6,%ymm1,%ymm1
  4084dd:	62 f3 fd 28 39 ce 01 	vextracti64x2 $0x1,%ymm1,%xmm6
  4084e4:	c5 c9 fe f1          	vpaddd %xmm1,%xmm6,%xmm6
  4084e8:	c5 f9 70 ce 4e       	vpshufd $0x4e,%xmm6,%xmm1
  4084ed:	c5 f1 fe ce          	vpaddd %xmm6,%xmm1,%xmm1
  4084f1:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  4084f5:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  4084fb:	01 d0                	add    %edx,%eax
  4084fd:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  408501:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  408505:	62 f3 fd 48 3b e9 01 	vextracti64x4 $0x1,%zmm5,%ymm1
  40850c:	c5 f5 fe cd          	vpaddd %ymm5,%ymm1,%ymm1
  408510:	62 f3 fd 28 39 cd 01 	vextracti64x2 $0x1,%ymm1,%xmm5
  408517:	c5 d1 fe e9          	vpaddd %xmm1,%xmm5,%xmm5
  40851b:	c5 f9 70 cd 4e       	vpshufd $0x4e,%xmm5,%xmm1
  408520:	c5 f1 fe cd          	vpaddd %xmm5,%xmm1,%xmm1
  408524:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  408528:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  40852e:	01 d0                	add    %edx,%eax
  408530:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  408534:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  408538:	62 f3 fd 48 3b e1 01 	vextracti64x4 $0x1,%zmm4,%ymm1
  40853f:	c5 f5 fe cc          	vpaddd %ymm4,%ymm1,%ymm1
  408543:	62 f3 fd 28 39 cc 01 	vextracti64x2 $0x1,%ymm1,%xmm4
  40854a:	c5 d9 fe e1          	vpaddd %xmm1,%xmm4,%xmm4
  40854e:	c5 f9 70 cc 4e       	vpshufd $0x4e,%xmm4,%xmm1
  408553:	c5 f1 fe cc          	vpaddd %xmm4,%xmm1,%xmm1
  408557:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  40855b:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  408561:	01 d0                	add    %edx,%eax
  408563:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  408567:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40856b:	62 f3 fd 48 3b d9 01 	vextracti64x4 $0x1,%zmm3,%ymm1
  408572:	c5 f5 fe cb          	vpaddd %ymm3,%ymm1,%ymm1
  408576:	62 f3 fd 28 39 cb 01 	vextracti64x2 $0x1,%ymm1,%xmm3
  40857d:	c5 e1 fe d9          	vpaddd %xmm1,%xmm3,%xmm3
  408581:	c5 f9 70 cb 4e       	vpshufd $0x4e,%xmm3,%xmm1
  408586:	c5 f1 fe cb          	vpaddd %xmm3,%xmm1,%xmm1
  40858a:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  40858e:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  408594:	01 d0                	add    %edx,%eax
  408596:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  40859a:	c5 fb 58 f2          	vaddsd %xmm2,%xmm0,%xmm6
  40859e:	c4 e1 f9 7e f3       	vmovq  %xmm6,%rbx
  4085a3:	c5 f8 77             	vzeroupper 
  4085a6:	e9 64 ec ff ff       	jmpq   40720f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  4085ab:	31 c0                	xor    %eax,%eax
  4085ad:	ba 12 00 00 00       	mov    $0x12,%edx
  4085b2:	be 23 10 00 00       	mov    $0x1023,%esi
  4085b7:	bf 9e 00 00 00       	mov    $0x9e,%edi
  4085bc:	e8 8f aa ff ff       	callq  403050 <syscall@plt>
  4085c1:	48 85 c0             	test   %rax,%rax
  4085c4:	0f 94 c0             	sete   %al
  4085c7:	64 88 04 25 f8 ff ff 	mov    %al,%fs:0xfffffffffffffff8
  4085ce:	ff 
  4085cf:	64 c6 04 25 f0 ff ff 	movb   $0x1,%fs:0xfffffffffffffff0
  4085d6:	ff 01 
  4085d8:	e9 21 ec ff ff       	jmpq   4071fe <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x4e>
  4085dd:	48 8d 9c 24 80 01 00 	lea    0x180(%rsp),%rbx
  4085e4:	00 
  4085e5:	48 89 df             	mov    %rbx,%rdi
  4085e8:	ba 00 04 00 00       	mov    $0x400,%edx
  4085ed:	be 01 00 00 00       	mov    $0x1,%esi
  4085f2:	e8 99 ab ff ff       	callq  403190 <memset@plt>
  4085f7:	48 8d 8c 24 80 05 00 	lea    0x580(%rsp),%rcx
  4085fe:	00 
  4085ff:	48 89 cf             	mov    %rcx,%rdi
  408602:	ba 00 04 00 00       	mov    $0x400,%edx
  408607:	be 01 00 00 00       	mov    $0x1,%esi
  40860c:	e8 7f ab ff ff       	callq  403190 <memset@plt>
  408611:	48 89 c1             	mov    %rax,%rcx
  408614:	b8 40 00 00 00       	mov    $0x40,%eax
  408619:	c4 e2 7b 4b 24 03    	tileloadd (%rbx,%rax,1),%tmm4
  40861f:	c4 e2 7b 4b 2c 01    	tileloadd (%rcx,%rax,1),%tmm5
  408625:	ba 00 04 00 00       	mov    $0x400,%edx
  40862a:	c4 e2 7b 49 c0       	tilezero %tmm0
  40862f:	c4 e2 7b 49 c8       	tilezero %tmm1
  408634:	c4 e2 7b 49 d0       	tilezero %tmm2
  408639:	c4 e2 7b 49 d8       	tilezero %tmm3
  40863e:	b8 00 01 00 00       	mov    $0x100,%eax
  408643:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408648:	c4 e2 53 5e c4       	tdpbssd %tmm5,%tmm4,%tmm0
  40864d:	c4 e2 53 5e cc       	tdpbssd %tmm5,%tmm4,%tmm1
  408652:	c4 e2 53 5e d4       	tdpbssd %tmm5,%tmm4,%tmm2
  408657:	c4 e2 53 5e dc       	tdpbssd %tmm5,%tmm4,%tmm3
  40865c:	ff c8                	dec    %eax
  40865e:	75 e8                	jne    408648 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x1498>
  408660:	ff ca                	dec    %edx
  408662:	75 c6                	jne    40862a <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x147a>
  408664:	48 8d 8c 24 80 09 00 	lea    0x980(%rsp),%rcx
  40866b:	00 
  40866c:	b8 40 00 00 00       	mov    $0x40,%eax
  408671:	c4 e2 7a 4b 04 01    	tilestored %tmm0,(%rcx,%rax,1)
  408677:	48 8d 94 24 80 0d 00 	lea    0xd80(%rsp),%rdx
  40867e:	00 
  40867f:	c4 e2 7a 4b 0c 02    	tilestored %tmm1,(%rdx,%rax,1)
  408685:	48 8d 94 24 80 11 00 	lea    0x1180(%rsp),%rdx
  40868c:	00 
  40868d:	c4 e2 7a 4b 14 02    	tilestored %tmm2,(%rdx,%rax,1)
  408693:	48 8d 94 24 80 15 00 	lea    0x1580(%rsp),%rdx
  40869a:	00 
  40869b:	c4 e2 7a 4b 1c 02    	tilestored %tmm3,(%rdx,%rax,1)
  4086a1:	62 61 7d 28 6f 05 d5 	vmovdqa32 0x80d5(%rip),%ymm24        # 410780 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  4086a8:	80 00 00 
  4086ab:	62 61 7d 28 6f 0d ab 	vmovdqa32 0x80ab(%rip),%ymm25        # 410760 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1a0>
  4086b2:	80 00 00 
  4086b5:	c4 e2 7d 58 1d c2 80 	vpbroadcastd 0x80c2(%rip),%ymm3        # 410780 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  4086bc:	00 00 
  4086be:	48 8b 1d db 80 00 00 	mov    0x80db(%rip),%rbx        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  4086c5:	62 e2 7d 28 58 3d f1 	vpbroadcastd 0x80f1(%rip),%ymm23        # 4107c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x200>
  4086cc:	80 00 00 
  4086cf:	62 01 7d 28 6f d0    	vmovdqa32 %ymm24,%ymm26
  4086d5:	45 31 ed             	xor    %r13d,%r13d
  4086d8:	c5 fd 7f 9c 24 20 01 	vmovdqa %ymm3,0x120(%rsp)
  4086df:	00 00 
  4086e1:	62 01 7d 28 6f c1    	vmovdqa32 %ymm25,%ymm24
  4086e7:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  4086ee:	48 8d 91 00 fc ff ff 	lea    -0x400(%rcx),%rdx
  4086f5:	62 01 25 00 ef db    	vpxord %xmm27,%xmm27,%xmm27
  4086fb:	c5 fd 6f 32          	vmovdqa (%rdx),%ymm6
  4086ff:	c5 fd 6f 9a 20 01 00 	vmovdqa 0x120(%rdx),%ymm3
  408706:	00 
  408707:	62 b3 7d 28 39 f5 01 	vextracti32x4 $0x1,%ymm6,%xmm21
  40870e:	c5 fd 6f 72 40       	vmovdqa 0x40(%rdx),%ymm6
  408713:	c5 fd 6f 7a 20       	vmovdqa 0x20(%rdx),%ymm7
  408718:	c4 e3 7d 39 f1 01    	vextracti128 $0x1,%ymm6,%xmm1
  40871e:	c5 fd 6f 72 60       	vmovdqa 0x60(%rdx),%ymm6
  408723:	c4 e3 7d 39 dd 01    	vextracti128 $0x1,%ymm3,%xmm5
  408729:	c4 e3 7d 39 f0 01    	vextracti128 $0x1,%ymm6,%xmm0
  40872f:	c5 fd 6f b2 80 00 00 	vmovdqa 0x80(%rdx),%ymm6
  408736:	00 
  408737:	c5 fe e6 c0          	vcvtdq2pd %xmm0,%ymm0
  40873b:	c4 c3 7d 39 f5 01    	vextracti128 $0x1,%ymm6,%xmm13
  408741:	c5 fd 6f b2 a0 00 00 	vmovdqa 0xa0(%rdx),%ymm6
  408748:	00 
  408749:	c5 fd 29 44 24 60    	vmovapd %ymm0,0x60(%rsp)
  40874f:	c4 c3 7d 39 f4 01    	vextracti128 $0x1,%ymm6,%xmm12
  408755:	c5 fd 6f b2 c0 00 00 	vmovdqa 0xc0(%rdx),%ymm6
  40875c:	00 
  40875d:	c5 fd 6f 82 a0 01 00 	vmovdqa 0x1a0(%rdx),%ymm0
  408764:	00 
  408765:	c5 fd 6f 9a 40 01 00 	vmovdqa 0x140(%rdx),%ymm3
  40876c:	00 
  40876d:	c4 c3 7d 39 f1 01    	vextracti128 $0x1,%ymm6,%xmm9
  408773:	c5 fd 6f b2 e0 00 00 	vmovdqa 0xe0(%rdx),%ymm6
  40877a:	00 
  40877b:	62 93 7d 28 39 c7 01 	vextracti32x4 $0x1,%ymm0,%xmm31
  408782:	62 61 7e 28 e6 72 02 	vcvtdq2pd 0x20(%rdx),%ymm30
  408789:	62 61 7e 28 e6 6a 04 	vcvtdq2pd 0x40(%rdx),%ymm29
  408790:	c5 7e e6 b2 40 01 00 	vcvtdq2pd 0x140(%rdx),%ymm14
  408797:	00 
  408798:	62 e1 7e 28 e6 32    	vcvtdq2pd (%rdx),%ymm22
  40879e:	62 e1 7e 28 e6 5a 06 	vcvtdq2pd 0x60(%rdx),%ymm19
  4087a5:	62 e1 7e 28 e6 52 08 	vcvtdq2pd 0x80(%rdx),%ymm18
  4087ac:	62 e1 7e 28 e6 4a 0a 	vcvtdq2pd 0xa0(%rdx),%ymm17
  4087b3:	62 e1 7e 28 e6 42 0c 	vcvtdq2pd 0xc0(%rdx),%ymm16
  4087ba:	c5 7e e6 ba e0 00 00 	vcvtdq2pd 0xe0(%rdx),%ymm15
  4087c1:	00 
  4087c2:	62 61 7e 28 e6 62 10 	vcvtdq2pd 0x100(%rdx),%ymm28
  4087c9:	62 61 7e 28 e6 4a 12 	vcvtdq2pd 0x120(%rdx),%ymm25
  4087d0:	c5 7e e6 9a 60 01 00 	vcvtdq2pd 0x160(%rdx),%ymm11
  4087d7:	00 
  4087d8:	c5 7e e6 92 80 01 00 	vcvtdq2pd 0x180(%rdx),%ymm10
  4087df:	00 
  4087e0:	c5 7e e6 82 a0 01 00 	vcvtdq2pd 0x1a0(%rdx),%ymm8
  4087e7:	00 
  4087e8:	c5 fd 6f 92 80 01 00 	vmovdqa 0x180(%rdx),%ymm2
  4087ef:	00 
  4087f0:	62 91 7e 28 e6 c7    	vcvtdq2pd %xmm31,%ymm0
  4087f6:	62 b3 7d 28 39 fc 01 	vextracti32x4 $0x1,%ymm7,%xmm20
  4087fd:	62 61 7e 28 e6 7a 1c 	vcvtdq2pd 0x1c0(%rdx),%ymm31
  408804:	c4 e3 7d 39 f7 01    	vextracti128 $0x1,%ymm6,%xmm7
  40880a:	c4 e3 7d 39 dc 01    	vextracti128 $0x1,%ymm3,%xmm4
  408810:	c5 fd 6f b2 00 01 00 	vmovdqa 0x100(%rdx),%ymm6
  408817:	00 
  408818:	c5 fd 6f 9a 60 01 00 	vmovdqa 0x160(%rdx),%ymm3
  40881f:	00 
  408820:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  408827:	00 00 
  408829:	c5 fe e6 c9          	vcvtdq2pd %xmm1,%ymm1
  40882d:	c5 fd 29 4c 24 40    	vmovapd %ymm1,0x40(%rsp)
  408833:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xa0(%rsp)
  40883a:	05 
  40883b:	c5 fd 6f 82 c0 01 00 	vmovdqa 0x1c0(%rdx),%ymm0
  408842:	00 
  408843:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  40884a:	07 
  40884b:	62 93 7d 28 39 c7 01 	vextracti32x4 $0x1,%ymm0,%xmm31
  408852:	62 91 7e 28 e6 c7    	vcvtdq2pd %xmm31,%ymm0
  408858:	c5 fd 29 84 24 c0 00 	vmovapd %ymm0,0xc0(%rsp)
  40885f:	00 00 
  408861:	c5 fd 6f 82 e0 01 00 	vmovdqa 0x1e0(%rdx),%ymm0
  408868:	00 
  408869:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  40886e:	62 61 7e 28 e6 7a 1e 	vcvtdq2pd 0x1e0(%rdx),%ymm31
  408875:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xe0(%rsp)
  40887c:	07 
  40887d:	62 93 7d 28 39 c7 01 	vextracti32x4 $0x1,%ymm0,%xmm31
  408884:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  408889:	62 91 7e 28 e6 c7    	vcvtdq2pd %xmm31,%ymm0
  40888f:	c5 fd 29 84 24 00 01 	vmovapd %ymm0,0x100(%rsp)
  408896:	00 00 
  408898:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  40889d:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4088a1:	62 b1 cd 00 15 ce    	vunpckhpd %xmm22,%xmm22,%xmm1
  4088a7:	62 a3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm22,%xmm22
  4088ae:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4088b2:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  4088b9:	07 
  4088ba:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  4088bf:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  4088c4:	62 61 fd 08 6e f8    	vmovq  %rax,%xmm31
  4088ca:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  4088cf:	62 91 f7 08 58 cf    	vaddsd %xmm31,%xmm1,%xmm1
  4088d5:	62 21 cd 00 15 fe    	vunpckhpd %xmm22,%xmm22,%xmm31
  4088db:	62 a1 7e 28 e6 ed    	vcvtdq2pd %xmm21,%ymm21
  4088e1:	62 f1 87 00 58 c9    	vaddsd %xmm1,%xmm31,%xmm1
  4088e7:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  4088ee:	07 
  4088ef:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  4088f4:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  4088f9:	62 e1 fd 08 6e f0    	vmovq  %rax,%xmm22
  4088ff:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  408904:	62 b1 f7 08 58 ce    	vaddsd %xmm22,%xmm1,%xmm1
  40890a:	62 21 d5 00 15 fd    	vunpckhpd %xmm21,%xmm21,%xmm31
  408910:	62 a3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm21,%xmm21
  408917:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  40891e:	07 
  40891f:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  408924:	62 61 87 00 58 f9    	vaddsd %xmm1,%xmm31,%xmm31
  40892a:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  40892f:	62 61 fd 08 13 74 24 	vmovlpd %xmm30,0x38(%rsp)
  408936:	07 
  408937:	62 01 f7 08 58 ff    	vaddsd %xmm31,%xmm1,%xmm31
  40893d:	62 a1 d5 00 15 f5    	vunpckhpd %xmm21,%xmm21,%xmm22
  408943:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  408948:	62 81 cf 00 58 f7    	vaddsd %xmm31,%xmm22,%xmm22
  40894e:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  408953:	62 01 8d 00 15 fe    	vunpckhpd %xmm30,%xmm30,%xmm31
  408959:	62 a1 f7 08 58 f6    	vaddsd %xmm22,%xmm1,%xmm22
  40895f:	62 a1 7e 28 e6 e4    	vcvtdq2pd %xmm20,%ymm20
  408965:	c5 fd 28 4c 24 40    	vmovapd 0x40(%rsp),%ymm1
  40896b:	62 21 87 00 58 fe    	vaddsd %xmm22,%xmm31,%xmm31
  408971:	62 23 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm30,%xmm22
  408978:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  40897f:	07 
  408980:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  408987:	07 
  408988:	62 a1 cd 00 15 f6    	vunpckhpd %xmm22,%xmm22,%xmm22
  40898e:	62 01 8f 00 58 f7    	vaddsd %xmm31,%xmm30,%xmm30
  408994:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  40899b:	07 
  40899c:	62 61 ff 08 10 7c 24 	vmovsd 0x38(%rsp),%xmm31
  4089a3:	07 
  4089a4:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  4089aa:	62 21 dd 00 15 f4    	vunpckhpd %xmm20,%xmm20,%xmm30
  4089b0:	62 a3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm20,%xmm20
  4089b7:	62 a1 87 00 58 f6    	vaddsd %xmm22,%xmm31,%xmm22
  4089bd:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  4089c4:	07 
  4089c5:	62 a1 dd 00 15 ec    	vunpckhpd %xmm20,%xmm20,%xmm21
  4089cb:	62 21 8f 00 58 f6    	vaddsd %xmm22,%xmm30,%xmm30
  4089d1:	62 e1 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm22
  4089d8:	07 
  4089d9:	62 61 fd 08 13 6c 24 	vmovlpd %xmm29,0x38(%rsp)
  4089e0:	07 
  4089e1:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  4089e7:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  4089ee:	07 
  4089ef:	c5 f9 13 4c 24 40    	vmovlpd %xmm1,0x40(%rsp)
  4089f5:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  4089fb:	62 81 95 00 15 f5    	vunpckhpd %xmm29,%xmm29,%xmm22
  408a01:	c4 41 7e e6 ed       	vcvtdq2pd %xmm13,%ymm13
  408a06:	62 a1 8f 00 58 ed    	vaddsd %xmm21,%xmm30,%xmm21
  408a0c:	c4 41 7e e6 e4       	vcvtdq2pd %xmm12,%ymm12
  408a11:	c4 41 7e e6 c9       	vcvtdq2pd %xmm9,%ymm9
  408a16:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  408a1c:	62 23 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm29,%xmm21
  408a23:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  408a2a:	07 
  408a2b:	62 61 ff 08 10 6c 24 	vmovsd 0x38(%rsp),%xmm29
  408a32:	07 
  408a33:	62 a1 d5 00 15 ed    	vunpckhpd %xmm21,%xmm21,%xmm21
  408a39:	62 a1 97 00 58 f6    	vaddsd %xmm22,%xmm29,%xmm22
  408a3f:	62 61 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm29
  408a46:	08 
  408a47:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x40(%rsp)
  408a4e:	08 
  408a4f:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  408a55:	62 e1 f5 08 15 f1    	vunpckhpd %xmm1,%xmm1,%xmm22
  408a5b:	62 f3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm1,%xmm1
  408a62:	62 a1 97 00 58 ed    	vaddsd %xmm21,%xmm29,%xmm21
  408a68:	62 e1 f5 08 15 e1    	vunpckhpd %xmm1,%xmm1,%xmm20
  408a6e:	c5 fe e6 ff          	vcvtdq2pd %xmm7,%ymm7
  408a72:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  408a78:	c4 e3 7d 39 f6 01    	vextracti128 $0x1,%ymm6,%xmm6
  408a7e:	c5 fe e6 f6          	vcvtdq2pd %xmm6,%ymm6
  408a82:	62 a1 f7 08 58 ee    	vaddsd %xmm22,%xmm1,%xmm21
  408a88:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  408a8f:	08 
  408a90:	c5 fe e6 ed          	vcvtdq2pd %xmm5,%ymm5
  408a94:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  408a9a:	62 a1 e5 00 15 eb    	vunpckhpd %xmm19,%xmm19,%xmm21
  408aa0:	62 a3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm19,%xmm19
  408aa7:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  408aad:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x40(%rsp)
  408ab4:	08 
  408ab5:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  408abc:	08 
  408abd:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  408ac3:	c5 fd 28 44 24 60    	vmovapd 0x60(%rsp),%ymm0
  408ac9:	62 a1 e5 00 15 e3    	vunpckhpd %xmm19,%xmm19,%xmm20
  408acf:	62 a1 cf 00 58 ed    	vaddsd %xmm21,%xmm22,%xmm21
  408ad5:	c5 f9 13 44 24 60    	vmovlpd %xmm0,0x60(%rsp)
  408adb:	62 e1 ff 08 10 74 24 	vmovsd 0x60(%rsp),%xmm22
  408ae2:	0c 
  408ae3:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  408ae9:	62 e1 fd 08 15 e8    	vunpckhpd %xmm0,%xmm0,%xmm21
  408aef:	62 f3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm0,%xmm0
  408af6:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  408afc:	62 e1 fd 08 15 d8    	vunpckhpd %xmm0,%xmm0,%xmm19
  408b02:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x60(%rsp)
  408b09:	0c 
  408b0a:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  408b10:	c5 fe e6 e4          	vcvtdq2pd %xmm4,%ymm4
  408b14:	c4 e3 7d 39 db 01    	vextracti128 $0x1,%ymm3,%xmm3
  408b1a:	62 a1 ff 08 58 e5    	vaddsd %xmm21,%xmm0,%xmm20
  408b20:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  408b27:	0c 
  408b28:	c5 fe e6 db          	vcvtdq2pd %xmm3,%ymm3
  408b2c:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  408b32:	62 a1 ed 00 15 e2    	vunpckhpd %xmm18,%xmm18,%xmm20
  408b38:	62 a3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm18,%xmm18
  408b3f:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  408b45:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x60(%rsp)
  408b4c:	0c 
  408b4d:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  408b54:	0c 
  408b55:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  408b5b:	62 a1 ed 00 15 da    	vunpckhpd %xmm18,%xmm18,%xmm19
  408b61:	c5 79 13 6c 24 60    	vmovlpd %xmm13,0x60(%rsp)
  408b67:	62 a1 d7 00 58 e4    	vaddsd %xmm20,%xmm21,%xmm20
  408b6d:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  408b74:	0c 
  408b75:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x60(%rsp)
  408b7c:	0c 
  408b7d:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  408b83:	62 c1 95 08 15 e5    	vunpckhpd %xmm13,%xmm13,%xmm20
  408b89:	62 53 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm13,%xmm13
  408b90:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  408b96:	62 c1 95 08 15 d5    	vunpckhpd %xmm13,%xmm13,%xmm18
  408b9c:	c4 e3 7d 39 d2 01    	vextracti128 $0x1,%ymm2,%xmm2
  408ba2:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  408ba8:	c5 fe e6 d2          	vcvtdq2pd %xmm2,%ymm2
  408bac:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  408bb3:	62 a1 97 08 58 dc    	vaddsd %xmm20,%xmm13,%xmm19
  408bb9:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  408bc0:	0c 
  408bc1:	62 43 fd 28 19 cd 01 	vextractf64x2 $0x1,%ymm25,%xmm13
  408bc8:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  408bce:	62 a1 f5 00 15 d9    	vunpckhpd %xmm17,%xmm17,%xmm19
  408bd4:	62 a3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm17,%xmm17
  408bdb:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  408be1:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x60(%rsp)
  408be8:	0c 
  408be9:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  408bf0:	0c 
  408bf1:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  408bf7:	62 a1 f5 00 15 d1    	vunpckhpd %xmm17,%xmm17,%xmm18
  408bfd:	c5 79 13 64 24 60    	vmovlpd %xmm12,0x60(%rsp)
  408c03:	62 a1 df 00 58 db    	vaddsd %xmm19,%xmm20,%xmm19
  408c09:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  408c10:	0c 
  408c11:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x60(%rsp)
  408c18:	0c 
  408c19:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  408c1f:	62 c1 9d 08 15 dc    	vunpckhpd %xmm12,%xmm12,%xmm19
  408c25:	62 53 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm12,%xmm12
  408c2c:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  408c32:	62 c1 9d 08 15 cc    	vunpckhpd %xmm12,%xmm12,%xmm17
  408c38:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  408c3e:	62 a1 9f 08 58 d3    	vaddsd %xmm19,%xmm12,%xmm18
  408c44:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  408c4b:	0c 
  408c4c:	62 53 fd 28 19 f4 01 	vextractf64x2 $0x1,%ymm14,%xmm12
  408c53:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  408c59:	62 a1 fd 00 15 d0    	vunpckhpd %xmm16,%xmm16,%xmm18
  408c5f:	62 a3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm16,%xmm16
  408c66:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  408c6c:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x60(%rsp)
  408c73:	0c 
  408c74:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  408c7b:	0c 
  408c7c:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  408c82:	62 a1 fd 00 15 c8    	vunpckhpd %xmm16,%xmm16,%xmm17
  408c88:	c5 79 13 4c 24 60    	vmovlpd %xmm9,0x60(%rsp)
  408c8e:	62 a1 e7 00 58 d2    	vaddsd %xmm18,%xmm19,%xmm18
  408c94:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  408c9b:	0c 
  408c9c:	c5 79 13 7c 24 60    	vmovlpd %xmm15,0x60(%rsp)
  408ca2:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  408ca8:	62 c1 b5 08 15 d1    	vunpckhpd %xmm9,%xmm9,%xmm18
  408cae:	62 53 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm9,%xmm9
  408cb5:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  408cbb:	62 c1 b5 08 15 c1    	vunpckhpd %xmm9,%xmm9,%xmm16
  408cc1:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  408cc7:	62 a1 b7 08 58 ca    	vaddsd %xmm18,%xmm9,%xmm17
  408ccd:	62 e1 ff 08 10 54 24 	vmovsd 0x60(%rsp),%xmm18
  408cd4:	0c 
  408cd5:	c5 f9 13 7c 24 60    	vmovlpd %xmm7,0x60(%rsp)
  408cdb:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  408ce1:	62 c1 85 08 15 cf    	vunpckhpd %xmm15,%xmm15,%xmm17
  408ce7:	62 53 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm15,%xmm15
  408cee:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  408cf4:	62 e1 ff 08 10 54 24 	vmovsd 0x60(%rsp),%xmm18
  408cfb:	0c 
  408cfc:	62 61 fd 08 13 64 24 	vmovlpd %xmm28,0x60(%rsp)
  408d03:	0c 
  408d04:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  408d0a:	62 c1 85 08 15 c7    	vunpckhpd %xmm15,%xmm15,%xmm16
  408d10:	62 a1 87 08 58 c9    	vaddsd %xmm17,%xmm15,%xmm17
  408d16:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  408d1c:	62 e1 c5 08 15 cf    	vunpckhpd %xmm7,%xmm7,%xmm17
  408d22:	62 f3 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm7,%xmm7
  408d29:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  408d2f:	c5 41 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm15
  408d33:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  408d39:	62 a1 c7 08 58 c1    	vaddsd %xmm17,%xmm7,%xmm16
  408d3f:	62 e1 ff 08 10 4c 24 	vmovsd 0x60(%rsp),%xmm17
  408d46:	0c 
  408d47:	c5 f9 13 74 24 60    	vmovlpd %xmm6,0x60(%rsp)
  408d4d:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  408d53:	62 81 9d 00 15 c4    	vunpckhpd %xmm28,%xmm28,%xmm16
  408d59:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  408d5f:	62 e1 ff 08 10 4c 24 	vmovsd 0x60(%rsp),%xmm17
  408d66:	0c 
  408d67:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  408d6d:	62 43 fd 28 19 e7 01 	vextractf64x2 $0x1,%ymm28,%xmm15
  408d74:	62 a1 87 08 58 c0    	vaddsd %xmm16,%xmm15,%xmm16
  408d7a:	c4 41 01 15 ff       	vunpckhpd %xmm15,%xmm15,%xmm15
  408d7f:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  408d85:	62 e1 cd 08 15 c6    	vunpckhpd %xmm6,%xmm6,%xmm16
  408d8b:	62 f3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm6,%xmm6
  408d92:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  408d98:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  408d9e:	62 31 cf 08 58 f8    	vaddsd %xmm16,%xmm6,%xmm15
  408da4:	c5 c9 15 f6          	vunpckhpd %xmm6,%xmm6,%xmm6
  408da8:	c4 c1 4b 58 f7       	vaddsd %xmm15,%xmm6,%xmm6
  408dad:	62 11 b5 00 15 f9    	vunpckhpd %xmm25,%xmm25,%xmm15
  408db3:	62 f1 b7 00 58 f6    	vaddsd %xmm6,%xmm25,%xmm6
  408db9:	c5 03 58 fe          	vaddsd %xmm6,%xmm15,%xmm15
  408dbd:	c4 c1 13 58 f7       	vaddsd %xmm15,%xmm13,%xmm6
  408dc2:	c4 41 11 15 ed       	vunpckhpd %xmm13,%xmm13,%xmm13
  408dc7:	c5 13 58 ee          	vaddsd %xmm6,%xmm13,%xmm13
  408dcb:	c5 d1 15 f5          	vunpckhpd %xmm5,%xmm5,%xmm6
  408dcf:	c4 41 53 58 ed       	vaddsd %xmm13,%xmm5,%xmm13
  408dd4:	62 f3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm5,%xmm5
  408ddb:	c4 c1 4b 58 f5       	vaddsd %xmm13,%xmm6,%xmm6
  408de0:	c5 d3 58 f6          	vaddsd %xmm6,%xmm5,%xmm6
  408de4:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  408de8:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  408dec:	c4 c1 09 15 f6       	vunpckhpd %xmm14,%xmm14,%xmm6
  408df1:	c5 8b 58 ed          	vaddsd %xmm5,%xmm14,%xmm5
  408df5:	c5 cb 58 f5          	vaddsd %xmm5,%xmm6,%xmm6
  408df9:	c5 9b 58 ee          	vaddsd %xmm6,%xmm12,%xmm5
  408dfd:	c4 41 19 15 e4       	vunpckhpd %xmm12,%xmm12,%xmm12
  408e02:	c5 1b 58 e5          	vaddsd %xmm5,%xmm12,%xmm12
  408e06:	c5 d9 15 ec          	vunpckhpd %xmm4,%xmm4,%xmm5
  408e0a:	c4 c1 5b 58 f4       	vaddsd %xmm12,%xmm4,%xmm6
  408e0f:	62 f3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm4,%xmm4
  408e16:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  408e1a:	c5 fd 28 b4 24 80 00 	vmovapd 0x80(%rsp),%ymm6
  408e21:	00 00 
  408e23:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  408e27:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  408e2b:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  408e32:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  408e36:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  408e3b:	c5 a3 58 ed          	vaddsd %xmm5,%xmm11,%xmm5
  408e3f:	62 53 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm11,%xmm11
  408e46:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  408e4a:	c5 a3 58 ec          	vaddsd %xmm4,%xmm11,%xmm5
  408e4e:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  408e53:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  408e57:	c5 e1 15 eb          	vunpckhpd %xmm3,%xmm3,%xmm5
  408e5b:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  408e5f:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  408e63:	62 f3 fd 28 19 dc 01 	vextractf64x2 $0x1,%ymm3,%xmm4
  408e6a:	c5 db 58 dd          	vaddsd %xmm5,%xmm4,%xmm3
  408e6e:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  408e72:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  408e76:	c4 c1 29 15 da       	vunpckhpd %xmm10,%xmm10,%xmm3
  408e7b:	c5 ab 58 e4          	vaddsd %xmm4,%xmm10,%xmm4
  408e7f:	62 53 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm10,%xmm10
  408e86:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  408e8a:	c5 ab 58 db          	vaddsd %xmm3,%xmm10,%xmm3
  408e8e:	c4 41 29 15 d2       	vunpckhpd %xmm10,%xmm10,%xmm10
  408e93:	c5 2b 58 d3          	vaddsd %xmm3,%xmm10,%xmm10
  408e97:	c5 e9 15 da          	vunpckhpd %xmm2,%xmm2,%xmm3
  408e9b:	c4 c1 6b 58 e2       	vaddsd %xmm10,%xmm2,%xmm4
  408ea0:	62 f3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm2,%xmm2
  408ea7:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  408eab:	c5 eb 58 db          	vaddsd %xmm3,%xmm2,%xmm3
  408eaf:	c5 e9 15 d2          	vunpckhpd %xmm2,%xmm2,%xmm2
  408eb3:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  408eb7:	c4 c1 39 15 d8       	vunpckhpd %xmm8,%xmm8,%xmm3
  408ebc:	c5 bb 58 d2          	vaddsd %xmm2,%xmm8,%xmm2
  408ec0:	62 53 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm8
  408ec7:	c4 41 39 15 c8       	vunpckhpd %xmm8,%xmm8,%xmm9
  408ecc:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  408ed0:	c5 bb 58 d3          	vaddsd %xmm3,%xmm8,%xmm2
  408ed4:	c5 33 58 ca          	vaddsd %xmm2,%xmm9,%xmm9
  408ed8:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  408edc:	c4 c1 4b 58 d9       	vaddsd %xmm9,%xmm6,%xmm3
  408ee1:	c5 fd 28 b4 24 a0 00 	vmovapd 0xa0(%rsp),%ymm6
  408ee8:	00 00 
  408eea:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  408eee:	62 d3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm8
  408ef5:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  408ef9:	c5 f1 15 c9          	vunpckhpd %xmm1,%xmm1,%xmm1
  408efd:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  408f01:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  408f05:	c5 cb 58 c9          	vaddsd %xmm1,%xmm6,%xmm1
  408f09:	c5 fd 28 b4 24 c0 00 	vmovapd 0xc0(%rsp),%ymm6
  408f10:	00 00 
  408f12:	c5 fd 6f a2 00 fe ff 	vmovdqa -0x200(%rdx),%ymm4
  408f19:	ff 
  408f1a:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  408f1e:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  408f25:	62 e1 7d 28 6f 52 f2 	vmovdqa32 -0x1c0(%rdx),%ymm18
  408f2c:	c5 bb 58 ca          	vaddsd %xmm2,%xmm8,%xmm1
  408f30:	c4 41 39 15 c0       	vunpckhpd %xmm8,%xmm8,%xmm8
  408f35:	c5 fd 6f aa 80 fe ff 	vmovdqa -0x180(%rdx),%ymm5
  408f3c:	ff 
  408f3d:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  408f41:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  408f45:	62 f2 3d 20 7e 62 f1 	vpermt2d -0x1e0(%rdx),%ymm24,%ymm4
  408f4c:	c4 c1 4b 58 d0       	vaddsd %xmm8,%xmm6,%xmm2
  408f51:	c5 fd 28 b4 24 e0 00 	vmovapd 0xe0(%rsp),%ymm6
  408f58:	00 00 
  408f5a:	c5 7d 6f ba c0 fe ff 	vmovdqa -0x140(%rdx),%ymm15
  408f61:	ff 
  408f62:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  408f66:	62 f3 fd 28 19 f7 01 	vextractf64x2 $0x1,%ymm6,%xmm7
  408f6d:	62 e2 3d 20 7e 52 f3 	vpermt2d -0x1a0(%rdx),%ymm24,%ymm18
  408f74:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  408f78:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  408f7c:	62 f2 3d 20 7e 6a f5 	vpermt2d -0x160(%rdx),%ymm24,%ymm5
  408f83:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408f87:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  408f8b:	62 e1 7d 28 6f 4a fa 	vmovdqa32 -0xc0(%rdx),%ymm17
  408f92:	c5 cb 58 c0          	vaddsd %xmm0,%xmm6,%xmm0
  408f96:	c5 fd 28 b4 24 00 01 	vmovapd 0x100(%rsp),%ymm6
  408f9d:	00 00 
  408f9f:	c5 fd 6f 52 80       	vmovdqa -0x80(%rdx),%ymm2
  408fa4:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408fa8:	c5 7d 6f ec          	vmovdqa %ymm4,%ymm13
  408fac:	62 72 3d 20 7e 7a f7 	vpermt2d -0x120(%rdx),%ymm24,%ymm15
  408fb3:	c5 c3 58 c1          	vaddsd %xmm1,%xmm7,%xmm0
  408fb7:	c5 c1 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm7
  408fbb:	62 32 3d 20 7e ea    	vpermt2d %ymm18,%ymm24,%ymm13
  408fc1:	c5 c3 58 f8          	vaddsd %xmm0,%xmm7,%xmm7
  408fc5:	c5 c9 15 c6          	vunpckhpd %xmm6,%xmm6,%xmm0
  408fc9:	62 b2 2d 20 7e e2    	vpermt2d %ymm18,%ymm26,%ymm4
  408fcf:	c5 cb 58 cf          	vaddsd %xmm7,%xmm6,%xmm1
  408fd3:	c5 7d 6f 8a 40 fe ff 	vmovdqa -0x1c0(%rdx),%ymm9
  408fda:	ff 
  408fdb:	c5 fd 6f ba 80 fe ff 	vmovdqa -0x180(%rdx),%ymm7
  408fe2:	ff 
  408fe3:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  408fe7:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  408fee:	c5 7d 6f b2 c0 fe ff 	vmovdqa -0x140(%rdx),%ymm14
  408ff5:	ff 
  408ff6:	c5 fb 58 d9          	vaddsd %xmm1,%xmm0,%xmm3
  408ffa:	c5 fd 6f 8a 00 ff ff 	vmovdqa -0x100(%rdx),%ymm1
  409001:	ff 
  409002:	c5 fd 6f b2 00 fe ff 	vmovdqa -0x200(%rdx),%ymm6
  409009:	ff 
  40900a:	62 f2 3d 20 7e 4a f9 	vpermt2d -0xe0(%rdx),%ymm24,%ymm1
  409011:	c5 7d 6f 9a 00 ff ff 	vmovdqa -0x100(%rdx),%ymm11
  409018:	ff 
  409019:	c5 7d 6f 82 40 ff ff 	vmovdqa -0xc0(%rdx),%ymm8
  409020:	ff 
  409021:	62 e1 7d 28 6f 42 fc 	vmovdqa32 -0x80(%rdx),%ymm16
  409028:	62 e1 7d 28 6f d5    	vmovdqa32 %ymm5,%ymm18
  40902e:	c5 7d 6f 62 c0       	vmovdqa -0x40(%rdx),%ymm12
  409033:	62 e2 3d 20 7e 4a fb 	vpermt2d -0xa0(%rdx),%ymm24,%ymm17
  40903a:	62 c2 3d 20 7e d7    	vpermt2d %ymm15,%ymm24,%ymm18
  409040:	62 d2 2d 20 7e ef    	vpermt2d %ymm15,%ymm26,%ymm5
  409046:	62 f2 3d 20 7e 52 fd 	vpermt2d -0x60(%rdx),%ymm24,%ymm2
  40904d:	c5 7d 6f f9          	vmovdqa %ymm1,%ymm15
  409051:	62 72 2d 20 7e 4a f3 	vpermt2d -0x1a0(%rdx),%ymm26,%ymm9
  409058:	62 72 2d 20 7e 72 f7 	vpermt2d -0x120(%rdx),%ymm26,%ymm14
  40905f:	62 72 2d 20 7e 42 fb 	vpermt2d -0xa0(%rdx),%ymm26,%ymm8
  409066:	62 f2 2d 20 7e 72 f1 	vpermt2d -0x1e0(%rdx),%ymm26,%ymm6
  40906d:	62 f2 2d 20 7e 7a f5 	vpermt2d -0x160(%rdx),%ymm26,%ymm7
  409074:	62 72 2d 20 7e 5a f9 	vpermt2d -0xe0(%rdx),%ymm26,%ymm11
  40907b:	62 e2 2d 20 7e 42 fd 	vpermt2d -0x60(%rdx),%ymm26,%ymm16
  409082:	62 32 3d 20 7e f9    	vpermt2d %ymm17,%ymm24,%ymm15
  409088:	62 72 3d 20 7e 62 ff 	vpermt2d -0x20(%rdx),%ymm24,%ymm12
  40908f:	62 b2 2d 20 7e c9    	vpermt2d %ymm17,%ymm26,%ymm1
  409095:	62 e1 7d 28 6f ca    	vmovdqa32 %ymm2,%ymm17
  40909b:	62 c2 3d 20 7e cc    	vpermt2d %ymm12,%ymm24,%ymm17
  4090a1:	62 d2 2d 20 7e d4    	vpermt2d %ymm12,%ymm26,%ymm2
  4090a7:	c5 7d 6f e6          	vmovdqa %ymm6,%ymm12
  4090ab:	62 52 3d 20 7e e1    	vpermt2d %ymm9,%ymm24,%ymm12
  4090b1:	62 d2 2d 20 7e f1    	vpermt2d %ymm9,%ymm26,%ymm6
  4090b7:	c5 7d 6f 52 c0       	vmovdqa -0x40(%rdx),%ymm10
  4090bc:	c5 7d 6f cf          	vmovdqa %ymm7,%ymm9
  4090c0:	62 52 3d 20 7e ce    	vpermt2d %ymm14,%ymm24,%ymm9
  4090c6:	62 d2 2d 20 7e fe    	vpermt2d %ymm14,%ymm26,%ymm7
  4090cc:	c4 41 7d 6f f3       	vmovdqa %ymm11,%ymm14
  4090d1:	62 72 2d 20 7e 52 ff 	vpermt2d -0x20(%rdx),%ymm26,%ymm10
  4090d8:	62 52 3d 20 7e f0    	vpermt2d %ymm8,%ymm24,%ymm14
  4090de:	62 52 2d 20 7e d8    	vpermt2d %ymm8,%ymm26,%ymm11
  4090e4:	62 31 7d 28 6f c0    	vmovdqa32 %ymm16,%ymm8
  4090ea:	62 52 3d 20 7e c2    	vpermt2d %ymm10,%ymm24,%ymm8
  4090f0:	62 c2 2d 20 7e c2    	vpermt2d %ymm10,%ymm26,%ymm16
  4090f6:	62 c1 7d 28 6f de    	vmovdqa32 %ymm14,%ymm19
  4090fc:	c4 41 7d 6f d5       	vmovdqa %ymm13,%ymm10
  409101:	62 32 3d 20 7e d2    	vpermt2d %ymm18,%ymm24,%ymm10
  409107:	62 32 2d 20 7e ea    	vpermt2d %ymm18,%ymm26,%ymm13
  40910d:	62 c2 3d 20 7e d8    	vpermt2d %ymm8,%ymm24,%ymm19
  409113:	62 52 2d 20 7e f0    	vpermt2d %ymm8,%ymm26,%ymm14
  409119:	62 c1 7d 28 6f e7    	vmovdqa32 %ymm15,%ymm20
  40911f:	62 e1 7d 28 6f d1    	vmovdqa32 %ymm1,%ymm18
  409125:	c5 7d 6f c6          	vmovdqa %ymm6,%ymm8
  409129:	62 f2 2d 20 7e f7    	vpermt2d %ymm7,%ymm26,%ymm6
  40912f:	62 f2 2d 20 7e ca    	vpermt2d %ymm2,%ymm26,%ymm1
  409135:	62 a2 3d 20 7e e1    	vpermt2d %ymm17,%ymm24,%ymm20
  40913b:	62 32 2d 20 7e f9    	vpermt2d %ymm17,%ymm26,%ymm15
  409141:	62 e2 3d 20 7e d2    	vpermt2d %ymm2,%ymm24,%ymm18
  409147:	62 c1 7d 28 6f cc    	vmovdqa32 %ymm12,%ymm17
  40914d:	c5 fd 6f d6          	vmovdqa %ymm6,%ymm2
  409151:	c5 7d 7f d6          	vmovdqa %ymm10,%ymm6
  409155:	62 c2 3d 20 7e c9    	vpermt2d %ymm9,%ymm24,%ymm17
  40915b:	62 b2 3d 20 7e f4    	vpermt2d %ymm20,%ymm24,%ymm6
  409161:	62 52 2d 20 7e e1    	vpermt2d %ymm9,%ymm26,%ymm12
  409167:	62 b3 4d 28 1f cf 04 	vpcmpneqd %ymm23,%ymm6,%k1
  40916e:	c5 7d 6f cc          	vmovdqa %ymm4,%ymm9
  409172:	62 b1 7d 28 6f f1    	vmovdqa32 %ymm17,%ymm6
  409178:	62 72 3d 20 7e cd    	vpermt2d %ymm5,%ymm24,%ymm9
  40917e:	62 b2 3d 20 7e f3    	vpermt2d %ymm19,%ymm24,%ymm6
  409184:	62 b3 4d 28 1f c7 04 	vpcmpneqd %ymm23,%ymm6,%k0
  40918b:	c5 7d 7f ce          	vmovdqa %ymm9,%ymm6
  40918f:	62 f2 2d 20 7e e5    	vpermt2d %ymm5,%ymm26,%ymm4
  409195:	62 72 3d 20 7e c7    	vpermt2d %ymm7,%ymm24,%ymm8
  40919b:	c5 7d 7f dd          	vmovdqa %ymm11,%ymm5
  40919f:	62 b2 3d 20 7e f2    	vpermt2d %ymm18,%ymm24,%ymm6
  4091a5:	62 b3 4d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm6,%k2
  4091ac:	62 b2 3d 20 7e e8    	vpermt2d %ymm16,%ymm24,%ymm5
  4091b2:	c5 7d 7f c6          	vmovdqa %ymm8,%ymm6
  4091b6:	62 f2 3d 20 7e f5    	vpermt2d %ymm5,%ymm24,%ymm6
  4091bc:	62 b3 4d 28 1f df 04 	vpcmpneqd %ymm23,%ymm6,%k3
  4091c3:	c5 7d 7f ee          	vmovdqa %ymm13,%ymm6
  4091c7:	62 d2 3d 20 7e f7    	vpermt2d %ymm15,%ymm24,%ymm6
  4091cd:	62 b3 4d 28 1f e7 04 	vpcmpneqd %ymm23,%ymm6,%k4
  4091d4:	c5 7d 7f e6          	vmovdqa %ymm12,%ymm6
  4091d8:	62 d2 3d 20 7e f6    	vpermt2d %ymm14,%ymm24,%ymm6
  4091de:	62 b3 4d 28 1f ef 04 	vpcmpneqd %ymm23,%ymm6,%k5
  4091e5:	c5 fd 6f f4          	vmovdqa %ymm4,%ymm6
  4091e9:	62 f2 3d 20 7e f1    	vpermt2d %ymm1,%ymm24,%ymm6
  4091ef:	62 b3 4d 28 1f f7 04 	vpcmpneqd %ymm23,%ymm6,%k6
  4091f6:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  4091fa:	c5 f9 93 c2          	kmovb  %k2,%eax
  4091fe:	62 32 2d 20 7e d8    	vpermt2d %ymm16,%ymm26,%ymm11
  409204:	c5 fd 6f f2          	vmovdqa %ymm2,%ymm6
  409208:	c5 f9 93 f1          	kmovb  %k1,%esi
  40920c:	09 c6                	or     %eax,%esi
  40920e:	62 d2 3d 20 7e f3    	vpermt2d %ymm11,%ymm24,%ymm6
  409214:	c5 f9 93 c3          	kmovb  %k3,%eax
  409218:	09 c6                	or     %eax,%esi
  40921a:	62 b3 4d 28 1f ff 04 	vpcmpneqd %ymm23,%ymm6,%k7
  409221:	c5 f9 93 c4          	kmovb  %k4,%eax
  409225:	62 32 2d 20 7e d4    	vpermt2d %ymm20,%ymm26,%ymm10
  40922b:	09 c6                	or     %eax,%esi
  40922d:	62 b1 7d 28 6f f9    	vmovdqa32 %ymm17,%ymm7
  409233:	c5 f9 93 c5          	kmovb  %k5,%eax
  409237:	62 b3 2d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm10,%k2
  40923e:	09 c6                	or     %eax,%esi
  409240:	62 b2 2d 20 7e fb    	vpermt2d %ymm19,%ymm26,%ymm7
  409246:	c5 f9 93 c6          	kmovb  %k6,%eax
  40924a:	62 b3 45 28 1f df 04 	vpcmpneqd %ymm23,%ymm7,%k3
  409251:	09 c6                	or     %eax,%esi
  409253:	62 32 2d 20 7e ca    	vpermt2d %ymm18,%ymm26,%ymm9
  409259:	c5 f9 93 c7          	kmovb  %k7,%eax
  40925d:	62 72 2d 20 7e c5    	vpermt2d %ymm5,%ymm26,%ymm8
  409263:	09 c6                	or     %eax,%esi
  409265:	62 b3 35 28 1f e7 04 	vpcmpneqd %ymm23,%ymm9,%k4
  40926c:	c5 7d 7f ee          	vmovdqa %ymm13,%ymm6
  409270:	c5 f9 93 c2          	kmovb  %k2,%eax
  409274:	62 b3 3d 28 1f ef 04 	vpcmpneqd %ymm23,%ymm8,%k5
  40927b:	09 c6                	or     %eax,%esi
  40927d:	62 d2 2d 20 7e f7    	vpermt2d %ymm15,%ymm26,%ymm6
  409283:	c5 7d 7f e5          	vmovdqa %ymm12,%ymm5
  409287:	c5 f9 93 c3          	kmovb  %k3,%eax
  40928b:	62 b3 4d 28 1f f7 04 	vpcmpneqd %ymm23,%ymm6,%k6
  409292:	09 c6                	or     %eax,%esi
  409294:	62 d2 2d 20 7e ee    	vpermt2d %ymm14,%ymm26,%ymm5
  40929a:	62 f2 2d 20 7e e1    	vpermt2d %ymm1,%ymm26,%ymm4
  4092a0:	c5 f9 93 c4          	kmovb  %k4,%eax
  4092a4:	62 b3 55 28 1f ff 04 	vpcmpneqd %ymm23,%ymm5,%k7
  4092ab:	09 c6                	or     %eax,%esi
  4092ad:	62 b3 5d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm4,%k2
  4092b4:	c5 f9 93 c5          	kmovb  %k5,%eax
  4092b8:	62 d2 2d 20 7e d3    	vpermt2d %ymm11,%ymm26,%ymm2
  4092be:	09 c6                	or     %eax,%esi
  4092c0:	62 b3 6d 28 1f c7 04 	vpcmpneqd %ymm23,%ymm2,%k0
  4092c7:	c5 f9 93 c6          	kmovb  %k6,%eax
  4092cb:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  4092cf:	09 c6                	or     %eax,%esi
  4092d1:	c5 fb 58 db          	vaddsd %xmm3,%xmm0,%xmm3
  4092d5:	c5 f9 93 c7          	kmovb  %k7,%eax
  4092d9:	09 c6                	or     %eax,%esi
  4092db:	c5 f9 93 c2          	kmovb  %k2,%eax
  4092df:	09 c6                	or     %eax,%esi
  4092e1:	c5 f9 92 ce          	kmovb  %esi,%k1
  4092e5:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  4092e9:	62 f1 7d a9 6f 4c 24 	vmovdqa32 0x120(%rsp),%ymm1{%k1}{z}
  4092f0:	09 
  4092f1:	62 61 25 20 eb d9    	vpord  %ymm1,%ymm27,%ymm27
  4092f7:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  4092fc:	48 39 d1             	cmp    %rdx,%rcx
  4092ff:	0f 85 f6 f3 ff ff    	jne    4086fb <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x154b>
  409305:	62 91 7d 08 6f cb    	vmovdqa32 %xmm27,%xmm1
  40930b:	62 63 7d 28 39 d8 01 	vextracti32x4 $0x1,%ymm27,%xmm0
  409312:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  409316:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  40931b:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  40931f:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  409324:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  409328:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  40932c:	41 09 c5             	or     %eax,%r13d
  40932f:	48 8d 84 24 80 19 00 	lea    0x1980(%rsp),%rax
  409336:	00 
  409337:	48 39 c1             	cmp    %rax,%rcx
  40933a:	0f 85 a7 f3 ff ff    	jne    4086e7 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x1537>
  409340:	e9 0e ef ff ff       	jmpq   408253 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x10a3>
  409345:	48 8b 83 b8 00 00 00 	mov    0xb8(%rbx),%rax
  40934c:	80 38 00             	cmpb   $0x0,(%rax)
  40934f:	0f 85 7d 03 00 00    	jne    4096d2 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2522>
  409355:	48 8b 83 c0 00 00 00 	mov    0xc0(%rbx),%rax
  40935c:	80 38 00             	cmpb   $0x0,(%rax)
  40935f:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  409364:	0f 84 be 10 00 00    	je     40a428 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x3278>
  40936a:	62 f2 7d 48 18 05 7c 	vbroadcastss 0x747c(%rip),%zmm0        # 4107f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x230>
  409371:	74 00 00 
  409374:	62 f2 7d 48 18 15 4a 	vbroadcastss 0x744a(%rip),%zmm2        # 4107c8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x208>
  40937b:	74 00 00 
  40937e:	62 f2 7d 48 18 1d 44 	vbroadcastss 0x7444(%rip),%zmm3        # 4107cc <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x20c>
  409385:	74 00 00 
  409388:	62 f2 7d 48 18 25 3e 	vbroadcastss 0x743e(%rip),%zmm4        # 4107d0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x210>
  40938f:	74 00 00 
  409392:	62 f2 7d 48 18 2d 38 	vbroadcastss 0x7438(%rip),%zmm5        # 4107d4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x214>
  409399:	74 00 00 
  40939c:	62 f2 7d 48 18 35 32 	vbroadcastss 0x7432(%rip),%zmm6        # 4107d8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x218>
  4093a3:	74 00 00 
  4093a6:	62 f2 7d 48 18 3d 2c 	vbroadcastss 0x742c(%rip),%zmm7        # 4107dc <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x21c>
  4093ad:	74 00 00 
  4093b0:	62 72 7d 48 18 05 26 	vbroadcastss 0x7426(%rip),%zmm8        # 4107e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x220>
  4093b7:	74 00 00 
  4093ba:	62 72 7d 48 18 0d 20 	vbroadcastss 0x7420(%rip),%zmm9        # 4107e4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x224>
  4093c1:	74 00 00 
  4093c4:	62 72 7d 48 18 15 1a 	vbroadcastss 0x741a(%rip),%zmm10        # 4107e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x228>
  4093cb:	74 00 00 
  4093ce:	62 72 7d 48 18 1d 14 	vbroadcastss 0x7414(%rip),%zmm11        # 4107ec <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x22c>
  4093d5:	74 00 00 
  4093d8:	62 72 7d 48 18 25 ba 	vbroadcastss 0x72ba(%rip),%zmm12        # 41069c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xdc>
  4093df:	72 00 00 
  4093e2:	62 f2 7d 48 18 0d 08 	vbroadcastss 0x7408(%rip),%zmm1        # 4107f4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x234>
  4093e9:	74 00 00 
  4093ec:	62 71 7c 48 28 e8    	vmovaps %zmm0,%zmm13
  4093f2:	62 72 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm13
  4093f8:	62 72 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm12
  4093fe:	62 72 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm11
  409404:	62 72 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm10
  40940a:	62 72 75 48 98 c8    	vfmadd132ps %zmm0,%zmm1,%zmm9
  409410:	62 72 75 48 98 c0    	vfmadd132ps %zmm0,%zmm1,%zmm8
  409416:	62 f2 75 48 98 f8    	vfmadd132ps %zmm0,%zmm1,%zmm7
  40941c:	62 f2 75 48 98 f0    	vfmadd132ps %zmm0,%zmm1,%zmm6
  409422:	62 f2 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm5
  409428:	62 f2 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm4
  40942e:	62 f2 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm3
  409434:	62 f2 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm2
  40943a:	ff c8                	dec    %eax
  40943c:	75 b4                	jne    4093f2 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2242>
  40943e:	62 73 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm13,%ymm0
  409445:	c4 c1 7c 58 c5       	vaddps %ymm13,%ymm0,%ymm0
  40944a:	45 31 ed             	xor    %r13d,%r13d
  40944d:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  409453:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  409457:	c4 e3 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm1
  40945d:	c5 f0 58 c8          	vaddps %xmm0,%xmm1,%xmm1
  409461:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  409465:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  40946a:	c5 fa 58 c1          	vaddss %xmm1,%xmm0,%xmm0
  40946e:	62 73 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm12,%ymm1
  409475:	c4 c1 74 58 cc       	vaddps %ymm12,%ymm1,%ymm1
  40947a:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  40947e:	c5 fb 58 05 1a 73 00 	vaddsd 0x731a(%rip),%xmm0,%xmm0        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  409485:	00 
  409486:	c4 c3 7d 19 cc 01    	vextractf128 $0x1,%ymm1,%xmm12
  40948c:	c5 98 58 c9          	vaddps %xmm1,%xmm12,%xmm1
  409490:	c4 63 79 04 e1 4e    	vpermilps $0x4e,%xmm1,%xmm12
  409496:	c5 18 58 e1          	vaddps %xmm1,%xmm12,%xmm12
  40949a:	c5 78 29 e1          	vmovaps %xmm12,%xmm1
  40949e:	c4 41 18 c6 e4 55    	vshufps $0x55,%xmm12,%xmm12,%xmm12
  4094a4:	c4 c1 72 58 cc       	vaddss %xmm12,%xmm1,%xmm1
  4094a9:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4094ad:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4094b1:	62 73 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm11,%ymm0
  4094b8:	c4 c1 7c 58 c3       	vaddps %ymm11,%ymm0,%ymm0
  4094bd:	c4 c3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm11
  4094c3:	c5 a0 58 c0          	vaddps %xmm0,%xmm11,%xmm0
  4094c7:	c4 63 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm11
  4094cd:	c5 20 58 d8          	vaddps %xmm0,%xmm11,%xmm11
  4094d1:	c5 78 29 d8          	vmovaps %xmm11,%xmm0
  4094d5:	c4 41 20 c6 db 55    	vshufps $0x55,%xmm11,%xmm11,%xmm11
  4094db:	c4 c1 7a 58 c3       	vaddss %xmm11,%xmm0,%xmm0
  4094e0:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4094e4:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4094e8:	62 73 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm1
  4094ef:	c4 c1 74 58 ca       	vaddps %ymm10,%ymm1,%ymm1
  4094f4:	c4 c3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm10
  4094fa:	c5 a8 58 c9          	vaddps %xmm1,%xmm10,%xmm1
  4094fe:	c4 63 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm10
  409504:	c5 28 58 d1          	vaddps %xmm1,%xmm10,%xmm10
  409508:	c5 78 29 d1          	vmovaps %xmm10,%xmm1
  40950c:	c4 41 28 c6 d2 55    	vshufps $0x55,%xmm10,%xmm10,%xmm10
  409512:	c4 c1 72 58 ca       	vaddss %xmm10,%xmm1,%xmm1
  409517:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40951b:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40951f:	62 73 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm0
  409526:	c4 c1 7c 58 c1       	vaddps %ymm9,%ymm0,%ymm0
  40952b:	c4 c3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm9
  409531:	c5 b0 58 c0          	vaddps %xmm0,%xmm9,%xmm0
  409535:	c4 63 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm9
  40953b:	c5 30 58 c8          	vaddps %xmm0,%xmm9,%xmm9
  40953f:	c5 78 29 c8          	vmovaps %xmm9,%xmm0
  409543:	c4 41 30 c6 c9 55    	vshufps $0x55,%xmm9,%xmm9,%xmm9
  409549:	c4 c1 7a 58 c1       	vaddss %xmm9,%xmm0,%xmm0
  40954e:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409552:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  409556:	62 73 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm8,%ymm1
  40955d:	c4 c1 74 58 c8       	vaddps %ymm8,%ymm1,%ymm1
  409562:	c4 c3 7d 19 c8 01    	vextractf128 $0x1,%ymm1,%xmm8
  409568:	c5 b8 58 c9          	vaddps %xmm1,%xmm8,%xmm1
  40956c:	c4 63 79 04 c1 4e    	vpermilps $0x4e,%xmm1,%xmm8
  409572:	c5 38 58 c1          	vaddps %xmm1,%xmm8,%xmm8
  409576:	c5 78 29 c1          	vmovaps %xmm8,%xmm1
  40957a:	c4 41 38 c6 c0 55    	vshufps $0x55,%xmm8,%xmm8,%xmm8
  409580:	c4 c1 72 58 c8       	vaddss %xmm8,%xmm1,%xmm1
  409585:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409589:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40958d:	62 f3 fd 48 1b f8 01 	vextractf64x4 $0x1,%zmm7,%ymm0
  409594:	c5 fc 58 c7          	vaddps %ymm7,%ymm0,%ymm0
  409598:	c4 e3 7d 19 c7 01    	vextractf128 $0x1,%ymm0,%xmm7
  40959e:	c5 c0 58 c0          	vaddps %xmm0,%xmm7,%xmm0
  4095a2:	c4 e3 79 04 f8 4e    	vpermilps $0x4e,%xmm0,%xmm7
  4095a8:	c5 c0 58 f8          	vaddps %xmm0,%xmm7,%xmm7
  4095ac:	c5 f8 28 c7          	vmovaps %xmm7,%xmm0
  4095b0:	c5 c0 c6 ff 55       	vshufps $0x55,%xmm7,%xmm7,%xmm7
  4095b5:	c5 fa 58 c7          	vaddss %xmm7,%xmm0,%xmm0
  4095b9:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4095bd:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4095c1:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  4095c8:	c5 f4 58 ce          	vaddps %ymm6,%ymm1,%ymm1
  4095cc:	c4 e3 7d 19 ce 01    	vextractf128 $0x1,%ymm1,%xmm6
  4095d2:	c5 c8 58 c9          	vaddps %xmm1,%xmm6,%xmm1
  4095d6:	c4 e3 79 04 f1 4e    	vpermilps $0x4e,%xmm1,%xmm6
  4095dc:	c5 c8 58 f1          	vaddps %xmm1,%xmm6,%xmm6
  4095e0:	c5 f8 28 ce          	vmovaps %xmm6,%xmm1
  4095e4:	c5 c8 c6 f6 55       	vshufps $0x55,%xmm6,%xmm6,%xmm6
  4095e9:	c5 f2 58 ce          	vaddss %xmm6,%xmm1,%xmm1
  4095ed:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4095f1:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4095f5:	62 f3 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm5,%ymm0
  4095fc:	c5 fc 58 c5          	vaddps %ymm5,%ymm0,%ymm0
  409600:	c4 e3 7d 19 c5 01    	vextractf128 $0x1,%ymm0,%xmm5
  409606:	c5 d0 58 c0          	vaddps %xmm0,%xmm5,%xmm0
  40960a:	c4 e3 79 04 e8 4e    	vpermilps $0x4e,%xmm0,%xmm5
  409610:	c5 d0 58 e8          	vaddps %xmm0,%xmm5,%xmm5
  409614:	c5 f8 28 c5          	vmovaps %xmm5,%xmm0
  409618:	c5 d0 c6 ed 55       	vshufps $0x55,%xmm5,%xmm5,%xmm5
  40961d:	c5 fa 58 c5          	vaddss %xmm5,%xmm0,%xmm0
  409621:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409625:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  409629:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  409630:	c5 f4 58 cc          	vaddps %ymm4,%ymm1,%ymm1
  409634:	c4 e3 7d 19 cc 01    	vextractf128 $0x1,%ymm1,%xmm4
  40963a:	c5 d8 58 c9          	vaddps %xmm1,%xmm4,%xmm1
  40963e:	c4 e3 79 04 e1 4e    	vpermilps $0x4e,%xmm1,%xmm4
  409644:	c5 d8 58 e1          	vaddps %xmm1,%xmm4,%xmm4
  409648:	c5 f8 28 cc          	vmovaps %xmm4,%xmm1
  40964c:	c5 d8 c6 e4 55       	vshufps $0x55,%xmm4,%xmm4,%xmm4
  409651:	c5 f2 58 cc          	vaddss %xmm4,%xmm1,%xmm1
  409655:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409659:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40965d:	62 f3 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm3,%ymm0
  409664:	c5 fc 58 c3          	vaddps %ymm3,%ymm0,%ymm0
  409668:	c4 e3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm3
  40966e:	c5 e0 58 c0          	vaddps %xmm0,%xmm3,%xmm0
  409672:	c4 e3 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm3
  409678:	c5 e0 58 d8          	vaddps %xmm0,%xmm3,%xmm3
  40967c:	c5 f8 28 c3          	vmovaps %xmm3,%xmm0
  409680:	c5 e0 c6 db 55       	vshufps $0x55,%xmm3,%xmm3,%xmm3
  409685:	c5 fa 58 c3          	vaddss %xmm3,%xmm0,%xmm0
  409689:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  40968d:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  409691:	62 f3 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm2,%ymm1
  409698:	c5 f4 58 ca          	vaddps %ymm2,%ymm1,%ymm1
  40969c:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  4096a2:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  4096a6:	c4 e3 79 04 ca 4e    	vpermilps $0x4e,%xmm2,%xmm1
  4096ac:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
  4096b0:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
  4096b4:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  4096b9:	c5 ea 58 c9          	vaddss %xmm1,%xmm2,%xmm1
  4096bd:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4096c1:	c5 f3 58 f8          	vaddsd %xmm0,%xmm1,%xmm7
  4096c5:	c4 e1 f9 7e fb       	vmovq  %xmm7,%rbx
  4096ca:	c5 f8 77             	vzeroupper 
  4096cd:	e9 3d db ff ff       	jmpq   40720f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  4096d2:	48 8b 83 90 00 00 00 	mov    0x90(%rbx),%rax
  4096d9:	8b 00                	mov    (%rax),%eax
  4096db:	83 f8 06             	cmp    $0x6,%eax
  4096de:	0f 84 a1 01 00 00    	je     409885 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x26d5>
  4096e4:	83 f8 18             	cmp    $0x18,%eax
  4096e7:	0f 85 38 02 00 00    	jne    409925 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2775>
  4096ed:	31 f6                	xor    %esi,%esi
  4096ef:	ba 00 06 00 00       	mov    $0x600,%edx
  4096f4:	48 8d bc 24 80 09 00 	lea    0x980(%rsp),%rdi
  4096fb:	00 
  4096fc:	e8 8f 9a ff ff       	callq  403190 <memset@plt>
  409701:	62 f2 7d 48 79 0d e7 	vpbroadcastw 0x70e7(%rip),%zmm1        # 4107f2 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  409708:	70 00 00 
  40970b:	31 f6                	xor    %esi,%esi
  40970d:	48 8d 8c 24 80 0f 00 	lea    0xf80(%rsp),%rcx
  409714:	00 
  409715:	48 8d 94 24 80 09 00 	lea    0x980(%rsp),%rdx
  40971c:	00 
  40971d:	48 89 d0             	mov    %rdx,%rax
  409720:	62 f1 7c 48 28 00    	vmovaps (%rax),%zmm0
  409726:	48 83 c0 40          	add    $0x40,%rax
  40972a:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  409730:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  409736:	62 f1 7c 48 29 40 ff 	vmovaps %zmm0,-0x40(%rax)
  40973d:	48 39 c1             	cmp    %rax,%rcx
  409740:	75 de                	jne    409720 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2570>
  409742:	83 c6 02             	add    $0x2,%esi
  409745:	81 fe be c6 2d 00    	cmp    $0x2dc6be,%esi
  40974b:	75 c8                	jne    409715 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2565>
  40974d:	48 8d b4 24 80 09 00 	lea    0x980(%rsp),%rsi
  409754:	00 
  409755:	62 f1 7c 48 28 06    	vmovaps (%rsi),%zmm0
  40975b:	b8 02 00 00 00       	mov    $0x2,%eax
  409760:	eb 0b                	jmp    40976d <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x25bd>
  409762:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  409768:	b8 01 00 00 00       	mov    $0x1,%eax
  40976d:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  409773:	83 f8 01             	cmp    $0x1,%eax
  409776:	75 f0                	jne    409768 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x25b8>
  409778:	62 f1 7c 48 29 06    	vmovaps %zmm0,(%rsi)
  40977e:	48 83 c6 40          	add    $0x40,%rsi
  409782:	48 39 f1             	cmp    %rsi,%rcx
  409785:	75 ce                	jne    409755 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x25a5>
  409787:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  40978b:	c5 db 10 c4          	vmovsd %xmm4,%xmm4,%xmm0
  40978f:	c5 fc 28 12          	vmovaps (%rdx),%ymm2
  409793:	62 f1 7c 48 28 32    	vmovaps (%rdx),%zmm6
  409799:	c5 ea 5a ca          	vcvtss2sd %xmm2,%xmm2,%xmm1
  40979d:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  4097a1:	c5 e8 c6 ca 55       	vshufps $0x55,%xmm2,%xmm2,%xmm1
  4097a6:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4097aa:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4097ae:	c5 e8 15 c2          	vunpckhps %xmm2,%xmm2,%xmm0
  4097b2:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4097b6:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4097ba:	c5 e8 c6 ca ff       	vshufps $0xff,%xmm2,%xmm2,%xmm1
  4097bf:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4097c3:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4097c7:	c4 e3 7d 19 d0 01    	vextractf128 $0x1,%ymm2,%xmm0
  4097cd:	c5 fa 5a d0          	vcvtss2sd %xmm0,%xmm0,%xmm2
  4097d1:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
  4097d5:	c5 f8 c6 d0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm2
  4097da:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  4097de:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  4097e2:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  4097e6:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4097ea:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  4097ee:	c5 f8 c6 c0 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm0
  4097f3:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4097f7:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4097fb:	62 f3 7d 48 1b f1 01 	vextractf32x8 $0x1,%zmm6,%ymm1
  409802:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  409806:	c5 e3 58 d8          	vaddsd %xmm0,%xmm3,%xmm3
  40980a:	c5 f0 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm0
  40980f:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409813:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0
  409817:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  40981b:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40981f:	c5 e3 58 d8          	vaddsd %xmm0,%xmm3,%xmm3
  409823:	c5 f0 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm0
  409828:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  40982c:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0
  409830:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409836:	c5 f2 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm2
  40983a:	c5 eb 58 c0          	vaddsd %xmm0,%xmm2,%xmm0
  40983e:	c5 f0 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm2
  409843:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  409847:	c5 eb 58 d0          	vaddsd %xmm0,%xmm2,%xmm2
  40984b:	c5 f0 15 c1          	vunpckhps %xmm1,%xmm1,%xmm0
  40984f:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409853:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
  409857:	48 83 c2 40          	add    $0x40,%rdx
  40985b:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409860:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409864:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  409868:	48 39 d1             	cmp    %rdx,%rcx
  40986b:	0f 85 1e ff ff ff    	jne    40978f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x25df>
  409871:	c5 fb 58 fc          	vaddsd %xmm4,%xmm0,%xmm7
  409875:	45 31 ed             	xor    %r13d,%r13d
  409878:	c4 e1 f9 7e fb       	vmovq  %xmm7,%rbx
  40987d:	c5 f8 77             	vzeroupper 
  409880:	e9 8a d9 ff ff       	jmpq   40720f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  409885:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  409889:	62 f2 7d 48 79 0d 5f 	vpbroadcastw 0x6f5f(%rip),%zmm1        # 4107f2 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  409890:	6f 00 00 
  409893:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  409898:	62 f1 7c 48 28 d0    	vmovaps %zmm0,%zmm2
  40989e:	62 f1 7c 48 28 d8    	vmovaps %zmm0,%zmm3
  4098a4:	62 f1 7c 48 28 e0    	vmovaps %zmm0,%zmm4
  4098aa:	62 f1 7c 48 28 e8    	vmovaps %zmm0,%zmm5
  4098b0:	62 f1 7c 48 28 f8    	vmovaps %zmm0,%zmm7
  4098b6:	62 f2 76 48 52 f9    	vdpbf16ps %zmm1,%zmm1,%zmm7
  4098bc:	62 f2 76 48 52 e9    	vdpbf16ps %zmm1,%zmm1,%zmm5
  4098c2:	62 f2 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm4
  4098c8:	62 f2 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm3
  4098ce:	62 f2 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm2
  4098d4:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  4098da:	ff c8                	dec    %eax
  4098dc:	75 d8                	jne    4098b6 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2706>
  4098de:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  4098e2:	c5 42 5a cf          	vcvtss2sd %xmm7,%xmm7,%xmm9
  4098e6:	c5 33 58 ce          	vaddsd %xmm6,%xmm9,%xmm9
  4098ea:	c5 40 c6 d7 55       	vshufps $0x55,%xmm7,%xmm7,%xmm10
  4098ef:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  4098f4:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  4098f9:	c5 40 15 cf          	vunpckhps %xmm7,%xmm7,%xmm9
  4098fd:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409902:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409907:	c4 e3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm1
  40990d:	c5 40 c6 c7 ff       	vshufps $0xff,%xmm7,%xmm7,%xmm8
  409912:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409917:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  40991c:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  409920:	e9 4b 06 00 00       	jmpq   409f70 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2dc0>
  409925:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  409929:	62 f2 7d 48 79 0d bf 	vpbroadcastw 0x6ebf(%rip),%zmm1        # 4107f2 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  409930:	6e 00 00 
  409933:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  409938:	62 f1 7c 48 28 d0    	vmovaps %zmm0,%zmm2
  40993e:	62 f1 7c 48 28 d8    	vmovaps %zmm0,%zmm3
  409944:	62 f1 7c 48 28 e0    	vmovaps %zmm0,%zmm4
  40994a:	62 f1 7c 48 28 e8    	vmovaps %zmm0,%zmm5
  409950:	62 f1 7c 48 28 f8    	vmovaps %zmm0,%zmm7
  409956:	62 71 7c 48 28 c0    	vmovaps %zmm0,%zmm8
  40995c:	62 71 7c 48 28 c8    	vmovaps %zmm0,%zmm9
  409962:	62 71 7c 48 28 d0    	vmovaps %zmm0,%zmm10
  409968:	62 71 7c 48 28 d8    	vmovaps %zmm0,%zmm11
  40996e:	62 71 7c 48 28 e0    	vmovaps %zmm0,%zmm12
  409974:	62 71 7c 48 28 e8    	vmovaps %zmm0,%zmm13
  40997a:	62 72 76 48 52 e9    	vdpbf16ps %zmm1,%zmm1,%zmm13
  409980:	62 72 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm12
  409986:	62 72 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm11
  40998c:	62 72 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm10
  409992:	62 72 76 48 52 c9    	vdpbf16ps %zmm1,%zmm1,%zmm9
  409998:	62 72 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm8
  40999e:	62 f2 76 48 52 f9    	vdpbf16ps %zmm1,%zmm1,%zmm7
  4099a4:	62 f2 76 48 52 e9    	vdpbf16ps %zmm1,%zmm1,%zmm5
  4099aa:	62 f2 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm4
  4099b0:	62 f2 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm3
  4099b6:	62 f2 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm2
  4099bc:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  4099c2:	ff c8                	dec    %eax
  4099c4:	75 b4                	jne    40997a <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x27ca>
  4099c6:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  4099ca:	c4 41 12 5a fd       	vcvtss2sd %xmm13,%xmm13,%xmm15
  4099cf:	c5 03 58 fe          	vaddsd %xmm6,%xmm15,%xmm15
  4099d3:	62 c1 14 08 c6 c5 55 	vshufps $0x55,%xmm13,%xmm13,%xmm16
  4099da:	62 a1 7e 00 5a c0    	vcvtss2sd %xmm16,%xmm16,%xmm16
  4099e0:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4099e6:	c4 41 10 15 fd       	vunpckhps %xmm13,%xmm13,%xmm15
  4099eb:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  4099f0:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  4099f6:	c4 41 10 c6 f5 ff    	vshufps $0xff,%xmm13,%xmm13,%xmm14
  4099fc:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409a01:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  409a06:	c4 63 7d 19 e9 01    	vextractf128 $0x1,%ymm13,%xmm1
  409a0c:	c5 72 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm15
  409a10:	c4 41 03 58 fe       	vaddsd %xmm14,%xmm15,%xmm15
  409a15:	c5 70 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm14
  409a1a:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409a1f:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  409a24:	c5 70 15 f9          	vunpckhps %xmm1,%xmm1,%xmm15
  409a28:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  409a2d:	c4 41 03 58 fe       	vaddsd %xmm14,%xmm15,%xmm15
  409a32:	c5 70 c6 f1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm14
  409a37:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409a3c:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  409a41:	62 73 7d 48 1b e9 01 	vextractf32x8 $0x1,%zmm13,%ymm1
  409a48:	c5 72 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm15
  409a4c:	c4 41 03 58 f6       	vaddsd %xmm14,%xmm15,%xmm14
  409a51:	c5 70 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm15
  409a56:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  409a5b:	c4 41 03 58 fe       	vaddsd %xmm14,%xmm15,%xmm15
  409a60:	c5 70 15 f1          	vunpckhps %xmm1,%xmm1,%xmm14
  409a64:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409a69:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  409a6e:	c5 70 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm13
  409a73:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409a78:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  409a7d:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409a83:	c5 72 5a f1          	vcvtss2sd %xmm1,%xmm1,%xmm14
  409a87:	c4 41 0b 58 ed       	vaddsd %xmm13,%xmm14,%xmm13
  409a8c:	c5 70 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm14
  409a91:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409a96:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  409a9b:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  409a9f:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409aa4:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  409aa9:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409aae:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409ab2:	c4 c1 73 58 cd       	vaddsd %xmm13,%xmm1,%xmm1
  409ab7:	c4 41 1a 5a fc       	vcvtss2sd %xmm12,%xmm12,%xmm15
  409abc:	c4 41 18 c6 f4 ff    	vshufps $0xff,%xmm12,%xmm12,%xmm14
  409ac2:	c5 83 58 c9          	vaddsd %xmm1,%xmm15,%xmm1
  409ac6:	c4 41 18 c6 fc 55    	vshufps $0x55,%xmm12,%xmm12,%xmm15
  409acc:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  409ad1:	c5 03 58 f9          	vaddsd %xmm1,%xmm15,%xmm15
  409ad5:	c4 c1 18 15 cc       	vunpckhps %xmm12,%xmm12,%xmm1
  409ada:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409ade:	c4 c1 73 58 cf       	vaddsd %xmm15,%xmm1,%xmm1
  409ae3:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409ae8:	c5 0b 58 f1          	vaddsd %xmm1,%xmm14,%xmm14
  409aec:	c4 63 7d 19 e1 01    	vextractf128 $0x1,%ymm12,%xmm1
  409af2:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  409af6:	c4 41 13 58 f6       	vaddsd %xmm14,%xmm13,%xmm14
  409afb:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  409b00:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409b05:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  409b0a:	c5 70 15 f1          	vunpckhps %xmm1,%xmm1,%xmm14
  409b0e:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409b13:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  409b18:	c5 70 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm13
  409b1d:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409b22:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  409b27:	62 73 7d 48 1b e1 01 	vextractf32x8 $0x1,%zmm12,%ymm1
  409b2e:	c5 72 5a f1          	vcvtss2sd %xmm1,%xmm1,%xmm14
  409b32:	c4 41 0b 58 ed       	vaddsd %xmm13,%xmm14,%xmm13
  409b37:	c5 70 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm14
  409b3c:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409b41:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  409b46:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  409b4a:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409b4f:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  409b54:	c5 70 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm12
  409b59:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409b5e:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  409b63:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409b69:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  409b6d:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  409b72:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  409b77:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409b7c:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  409b81:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  409b85:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409b8a:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  409b8f:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409b94:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409b98:	c4 c1 73 58 cc       	vaddsd %xmm12,%xmm1,%xmm1
  409b9d:	c4 41 22 5a f3       	vcvtss2sd %xmm11,%xmm11,%xmm14
  409ba2:	c4 41 20 c6 eb ff    	vshufps $0xff,%xmm11,%xmm11,%xmm13
  409ba8:	c5 8b 58 c9          	vaddsd %xmm1,%xmm14,%xmm1
  409bac:	c4 41 20 c6 f3 55    	vshufps $0x55,%xmm11,%xmm11,%xmm14
  409bb2:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409bb7:	c5 0b 58 f1          	vaddsd %xmm1,%xmm14,%xmm14
  409bbb:	c4 c1 20 15 cb       	vunpckhps %xmm11,%xmm11,%xmm1
  409bc0:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409bc4:	c4 c1 73 58 ce       	vaddsd %xmm14,%xmm1,%xmm1
  409bc9:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409bce:	c5 13 58 e9          	vaddsd %xmm1,%xmm13,%xmm13
  409bd2:	c4 63 7d 19 d9 01    	vextractf128 $0x1,%ymm11,%xmm1
  409bd8:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  409bdc:	c4 41 1b 58 ed       	vaddsd %xmm13,%xmm12,%xmm13
  409be1:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  409be6:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409beb:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  409bf0:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  409bf4:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409bf9:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  409bfe:	c5 70 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm12
  409c03:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409c08:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  409c0d:	62 73 7d 48 1b d9 01 	vextractf32x8 $0x1,%zmm11,%ymm1
  409c14:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  409c18:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  409c1d:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  409c22:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409c27:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  409c2c:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  409c30:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409c35:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  409c3a:	c5 70 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm11
  409c3f:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409c44:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409c49:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409c4f:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  409c53:	c4 41 1b 58 db       	vaddsd %xmm11,%xmm12,%xmm11
  409c58:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  409c5d:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409c62:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  409c67:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  409c6b:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409c70:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409c75:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409c7a:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409c7e:	c4 c1 73 58 cb       	vaddsd %xmm11,%xmm1,%xmm1
  409c83:	c4 41 2a 5a ea       	vcvtss2sd %xmm10,%xmm10,%xmm13
  409c88:	c4 41 28 c6 e2 ff    	vshufps $0xff,%xmm10,%xmm10,%xmm12
  409c8e:	c5 93 58 c9          	vaddsd %xmm1,%xmm13,%xmm1
  409c92:	c4 41 28 c6 ea 55    	vshufps $0x55,%xmm10,%xmm10,%xmm13
  409c98:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409c9d:	c5 13 58 e9          	vaddsd %xmm1,%xmm13,%xmm13
  409ca1:	c4 c1 28 15 ca       	vunpckhps %xmm10,%xmm10,%xmm1
  409ca6:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409caa:	c4 c1 73 58 cd       	vaddsd %xmm13,%xmm1,%xmm1
  409caf:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409cb4:	c5 1b 58 e1          	vaddsd %xmm1,%xmm12,%xmm12
  409cb8:	c4 63 7d 19 d1 01    	vextractf128 $0x1,%ymm10,%xmm1
  409cbe:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  409cc2:	c4 41 23 58 e4       	vaddsd %xmm12,%xmm11,%xmm12
  409cc7:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  409ccc:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409cd1:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409cd6:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  409cda:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409cdf:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  409ce4:	c5 70 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm11
  409ce9:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409cee:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409cf3:	62 73 7d 48 1b d1 01 	vextractf32x8 $0x1,%zmm10,%ymm1
  409cfa:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  409cfe:	c4 41 1b 58 db       	vaddsd %xmm11,%xmm12,%xmm11
  409d03:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  409d08:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409d0d:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  409d12:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  409d16:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409d1b:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409d20:	c5 70 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm10
  409d25:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409d2a:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409d2f:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409d35:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  409d39:	c4 41 23 58 d2       	vaddsd %xmm10,%xmm11,%xmm10
  409d3e:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  409d43:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409d48:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  409d4d:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  409d51:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409d56:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409d5b:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409d60:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409d64:	c4 c1 73 58 ca       	vaddsd %xmm10,%xmm1,%xmm1
  409d69:	c4 41 32 5a e1       	vcvtss2sd %xmm9,%xmm9,%xmm12
  409d6e:	c4 41 30 c6 d9 ff    	vshufps $0xff,%xmm9,%xmm9,%xmm11
  409d74:	c5 9b 58 c9          	vaddsd %xmm1,%xmm12,%xmm1
  409d78:	c4 41 30 c6 e1 55    	vshufps $0x55,%xmm9,%xmm9,%xmm12
  409d7e:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409d83:	c5 1b 58 e1          	vaddsd %xmm1,%xmm12,%xmm12
  409d87:	c4 c1 30 15 c9       	vunpckhps %xmm9,%xmm9,%xmm1
  409d8c:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409d90:	c4 c1 73 58 cc       	vaddsd %xmm12,%xmm1,%xmm1
  409d95:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409d9a:	c5 23 58 d9          	vaddsd %xmm1,%xmm11,%xmm11
  409d9e:	c4 63 7d 19 c9 01    	vextractf128 $0x1,%ymm9,%xmm1
  409da4:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  409da8:	c4 41 2b 58 db       	vaddsd %xmm11,%xmm10,%xmm11
  409dad:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  409db2:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409db7:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409dbc:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  409dc0:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409dc5:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  409dca:	c5 70 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm10
  409dcf:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409dd4:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409dd9:	62 73 7d 48 1b c9 01 	vextractf32x8 $0x1,%zmm9,%ymm1
  409de0:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  409de4:	c4 41 23 58 d2       	vaddsd %xmm10,%xmm11,%xmm10
  409de9:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  409dee:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409df3:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  409df8:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  409dfc:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409e01:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409e06:	c5 70 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm9
  409e0b:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409e10:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409e15:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409e1b:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  409e1f:	c4 41 2b 58 c9       	vaddsd %xmm9,%xmm10,%xmm9
  409e24:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  409e29:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409e2e:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  409e33:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  409e37:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409e3c:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409e41:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409e46:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409e4a:	c4 c1 73 58 c9       	vaddsd %xmm9,%xmm1,%xmm1
  409e4f:	c4 41 3a 5a d8       	vcvtss2sd %xmm8,%xmm8,%xmm11
  409e54:	c4 41 38 c6 d0 ff    	vshufps $0xff,%xmm8,%xmm8,%xmm10
  409e5a:	c5 a3 58 c9          	vaddsd %xmm1,%xmm11,%xmm1
  409e5e:	c4 41 38 c6 d8 55    	vshufps $0x55,%xmm8,%xmm8,%xmm11
  409e64:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409e69:	c5 23 58 d9          	vaddsd %xmm1,%xmm11,%xmm11
  409e6d:	c4 c1 38 15 c8       	vunpckhps %xmm8,%xmm8,%xmm1
  409e72:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409e76:	c4 c1 73 58 cb       	vaddsd %xmm11,%xmm1,%xmm1
  409e7b:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409e80:	c5 2b 58 d1          	vaddsd %xmm1,%xmm10,%xmm10
  409e84:	c4 63 7d 19 c1 01    	vextractf128 $0x1,%ymm8,%xmm1
  409e8a:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  409e8e:	c4 41 33 58 d2       	vaddsd %xmm10,%xmm9,%xmm10
  409e93:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  409e98:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409e9d:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409ea2:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  409ea6:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409eab:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  409eb0:	c5 70 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm9
  409eb5:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409eba:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409ebf:	62 73 7d 48 1b c1 01 	vextractf32x8 $0x1,%zmm8,%ymm1
  409ec6:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  409eca:	c4 41 2b 58 c9       	vaddsd %xmm9,%xmm10,%xmm9
  409ecf:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  409ed4:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409ed9:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  409ede:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  409ee2:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409ee7:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409eec:	c5 70 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm8
  409ef1:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409ef6:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409efb:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409f01:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  409f05:	c4 41 33 58 c0       	vaddsd %xmm8,%xmm9,%xmm8
  409f0a:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  409f0f:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409f14:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409f19:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  409f1d:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409f22:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409f27:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409f2c:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409f30:	c4 c1 73 58 c8       	vaddsd %xmm8,%xmm1,%xmm1
  409f35:	c5 42 5a d7          	vcvtss2sd %xmm7,%xmm7,%xmm10
  409f39:	c5 40 c6 cf ff       	vshufps $0xff,%xmm7,%xmm7,%xmm9
  409f3e:	c5 ab 58 c9          	vaddsd %xmm1,%xmm10,%xmm1
  409f42:	c5 40 c6 d7 55       	vshufps $0x55,%xmm7,%xmm7,%xmm10
  409f47:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409f4c:	c5 2b 58 d1          	vaddsd %xmm1,%xmm10,%xmm10
  409f50:	c5 c0 15 cf          	vunpckhps %xmm7,%xmm7,%xmm1
  409f54:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409f58:	c4 c1 73 58 ca       	vaddsd %xmm10,%xmm1,%xmm1
  409f5d:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409f62:	c5 33 58 c9          	vaddsd %xmm1,%xmm9,%xmm9
  409f66:	c4 e3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm1
  409f6c:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  409f70:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409f75:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  409f7a:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409f7f:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409f84:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  409f88:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409f8d:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409f92:	c5 70 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm8
  409f97:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409f9c:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409fa1:	62 f3 7d 48 1b f9 01 	vextractf32x8 $0x1,%zmm7,%ymm1
  409fa8:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  409fac:	c4 41 33 58 c0       	vaddsd %xmm8,%xmm9,%xmm8
  409fb1:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  409fb6:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409fbb:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409fc0:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  409fc4:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409fc9:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409fce:	c5 f0 c6 f9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm7
  409fd3:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409fd7:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409fdc:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409fe2:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  409fe6:	c5 bb 58 ff          	vaddsd %xmm7,%xmm8,%xmm7
  409fea:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  409fef:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409ff4:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  409ff8:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  409ffc:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40a000:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  40a005:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40a00a:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a00e:	c5 f3 58 cf          	vaddsd %xmm7,%xmm1,%xmm1
  40a012:	c5 52 5a cd          	vcvtss2sd %xmm5,%xmm5,%xmm9
  40a016:	c5 50 c6 c5 ff       	vshufps $0xff,%xmm5,%xmm5,%xmm8
  40a01b:	c5 b3 58 c9          	vaddsd %xmm1,%xmm9,%xmm1
  40a01f:	c5 50 c6 cd 55       	vshufps $0x55,%xmm5,%xmm5,%xmm9
  40a024:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  40a029:	c5 33 58 c9          	vaddsd %xmm1,%xmm9,%xmm9
  40a02d:	c5 d0 15 cd          	vunpckhps %xmm5,%xmm5,%xmm1
  40a031:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a035:	c4 c1 73 58 c9       	vaddsd %xmm9,%xmm1,%xmm1
  40a03a:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  40a03f:	45 31 ed             	xor    %r13d,%r13d
  40a042:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  40a046:	c4 e3 7d 19 e9 01    	vextractf128 $0x1,%ymm5,%xmm1
  40a04c:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  40a050:	c4 41 43 58 c0       	vaddsd %xmm8,%xmm7,%xmm8
  40a055:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  40a05a:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40a05e:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  40a063:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  40a067:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  40a06c:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  40a070:	c5 f0 c6 f9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm7
  40a075:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40a079:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  40a07e:	62 f3 7d 48 1b e9 01 	vextractf32x8 $0x1,%zmm5,%ymm1
  40a085:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  40a089:	c5 bb 58 ff          	vaddsd %xmm7,%xmm8,%xmm7
  40a08d:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  40a092:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  40a097:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  40a09b:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  40a09f:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40a0a3:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  40a0a8:	c5 f0 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm5
  40a0ad:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a0b1:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  40a0b5:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  40a0bb:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  40a0bf:	c5 c3 58 ed          	vaddsd %xmm5,%xmm7,%xmm5
  40a0c3:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  40a0c8:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40a0cc:	c5 c3 58 fd          	vaddsd %xmm5,%xmm7,%xmm7
  40a0d0:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  40a0d4:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a0d8:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  40a0dc:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40a0e1:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a0e5:	c5 f3 58 cd          	vaddsd %xmm5,%xmm1,%xmm1
  40a0e9:	c5 5a 5a c4          	vcvtss2sd %xmm4,%xmm4,%xmm8
  40a0ed:	c5 d8 c6 fc ff       	vshufps $0xff,%xmm4,%xmm4,%xmm7
  40a0f2:	c5 bb 58 c9          	vaddsd %xmm1,%xmm8,%xmm1
  40a0f6:	c5 58 c6 c4 55       	vshufps $0x55,%xmm4,%xmm4,%xmm8
  40a0fb:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  40a100:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  40a104:	c5 d8 15 cc          	vunpckhps %xmm4,%xmm4,%xmm1
  40a108:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a10c:	c4 c1 73 58 c8       	vaddsd %xmm8,%xmm1,%xmm1
  40a111:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40a115:	c5 c3 58 f9          	vaddsd %xmm1,%xmm7,%xmm7
  40a119:	c4 e3 7d 19 e1 01    	vextractf128 $0x1,%ymm4,%xmm1
  40a11f:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  40a123:	c5 d3 58 ff          	vaddsd %xmm7,%xmm5,%xmm7
  40a127:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  40a12c:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a130:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  40a134:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  40a138:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40a13c:	c5 c3 58 fd          	vaddsd %xmm5,%xmm7,%xmm7
  40a140:	c5 f0 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm5
  40a145:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a149:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  40a14d:	62 f3 7d 48 1b e1 01 	vextractf32x8 $0x1,%zmm4,%ymm1
  40a154:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  40a158:	c5 c3 58 ed          	vaddsd %xmm5,%xmm7,%xmm5
  40a15c:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  40a161:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40a165:	c5 c3 58 fd          	vaddsd %xmm5,%xmm7,%xmm7
  40a169:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  40a16d:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a171:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  40a175:	c5 f0 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm4
  40a17a:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a17e:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40a182:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  40a188:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  40a18c:	c5 d3 58 e4          	vaddsd %xmm4,%xmm5,%xmm4
  40a190:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  40a195:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a199:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  40a19d:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  40a1a1:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a1a5:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40a1a9:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40a1ae:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a1b2:	c5 f3 58 cc          	vaddsd %xmm4,%xmm1,%xmm1
  40a1b6:	c5 e2 5a fb          	vcvtss2sd %xmm3,%xmm3,%xmm7
  40a1ba:	c5 e0 c6 eb ff       	vshufps $0xff,%xmm3,%xmm3,%xmm5
  40a1bf:	c5 c3 58 c9          	vaddsd %xmm1,%xmm7,%xmm1
  40a1c3:	c5 e0 c6 fb 55       	vshufps $0x55,%xmm3,%xmm3,%xmm7
  40a1c8:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40a1cc:	c5 c3 58 f9          	vaddsd %xmm1,%xmm7,%xmm7
  40a1d0:	c5 e0 15 cb          	vunpckhps %xmm3,%xmm3,%xmm1
  40a1d4:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a1d8:	c5 f3 58 cf          	vaddsd %xmm7,%xmm1,%xmm1
  40a1dc:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a1e0:	c5 d3 58 e9          	vaddsd %xmm1,%xmm5,%xmm5
  40a1e4:	c4 e3 7d 19 d9 01    	vextractf128 $0x1,%ymm3,%xmm1
  40a1ea:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  40a1ee:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  40a1f2:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  40a1f7:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a1fb:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40a1ff:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  40a203:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a207:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  40a20b:	c5 f0 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm4
  40a210:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a214:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40a218:	62 f3 7d 48 1b d9 01 	vextractf32x8 $0x1,%zmm3,%ymm1
  40a21f:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  40a223:	c5 d3 58 e4          	vaddsd %xmm4,%xmm5,%xmm4
  40a227:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  40a22c:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a230:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  40a234:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  40a238:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a23c:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40a240:	c5 f0 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm3
  40a245:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a249:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40a24d:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  40a253:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  40a257:	c5 db 58 db          	vaddsd %xmm3,%xmm4,%xmm3
  40a25b:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  40a260:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a264:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  40a268:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  40a26c:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a270:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40a274:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40a279:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a27d:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  40a281:	c5 ea 5a ea          	vcvtss2sd %xmm2,%xmm2,%xmm5
  40a285:	c5 e8 c6 e2 ff       	vshufps $0xff,%xmm2,%xmm2,%xmm4
  40a28a:	c5 d3 58 c9          	vaddsd %xmm1,%xmm5,%xmm1
  40a28e:	c5 e8 c6 ea 55       	vshufps $0x55,%xmm2,%xmm2,%xmm5
  40a293:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a297:	c5 d3 58 e9          	vaddsd %xmm1,%xmm5,%xmm5
  40a29b:	c5 e8 15 ca          	vunpckhps %xmm2,%xmm2,%xmm1
  40a29f:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a2a3:	c5 f3 58 cd          	vaddsd %xmm5,%xmm1,%xmm1
  40a2a7:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a2ab:	c5 db 58 e1          	vaddsd %xmm1,%xmm4,%xmm4
  40a2af:	c4 e3 7d 19 d1 01    	vextractf128 $0x1,%ymm2,%xmm1
  40a2b5:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  40a2b9:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  40a2bd:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  40a2c2:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a2c6:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40a2ca:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  40a2ce:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a2d2:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  40a2d6:	c5 f0 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm3
  40a2db:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a2df:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40a2e3:	62 f3 7d 48 1b d1 01 	vextractf32x8 $0x1,%zmm2,%ymm1
  40a2ea:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  40a2ee:	c5 db 58 db          	vaddsd %xmm3,%xmm4,%xmm3
  40a2f2:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  40a2f7:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a2fb:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  40a2ff:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  40a303:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a307:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40a30b:	c5 f0 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm2
  40a310:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  40a314:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40a318:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  40a31e:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  40a322:	c5 e3 58 d2          	vaddsd %xmm2,%xmm3,%xmm2
  40a326:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  40a32b:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a32f:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  40a333:	c5 f0 15 d1          	vunpckhps %xmm1,%xmm1,%xmm2
  40a337:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  40a33b:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40a33f:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40a344:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a348:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40a34c:	c5 fa 5a e0          	vcvtss2sd %xmm0,%xmm0,%xmm4
  40a350:	c5 f8 c6 d8 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm3
  40a355:	c5 db 58 c9          	vaddsd %xmm1,%xmm4,%xmm1
  40a359:	c5 f8 c6 e0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm4
  40a35e:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a362:	c5 db 58 e1          	vaddsd %xmm1,%xmm4,%xmm4
  40a366:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  40a36a:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a36e:	c5 f3 58 cc          	vaddsd %xmm4,%xmm1,%xmm1
  40a372:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a376:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  40a37a:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  40a380:	c5 f2 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm2
  40a384:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40a388:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  40a38d:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a391:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  40a395:	c5 f0 15 d1          	vunpckhps %xmm1,%xmm1,%xmm2
  40a399:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  40a39d:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40a3a1:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40a3a6:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a3aa:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40a3ae:	62 f3 7d 48 1b c0 01 	vextractf32x8 $0x1,%zmm0,%ymm0
  40a3b5:	c5 fa 5a d8          	vcvtss2sd %xmm0,%xmm0,%xmm3
  40a3b9:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  40a3bd:	c5 f8 c6 c8 55       	vshufps $0x55,%xmm0,%xmm0,%xmm1
  40a3c2:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a3c6:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  40a3ca:	c5 f8 15 d8          	vunpckhps %xmm0,%xmm0,%xmm3
  40a3ce:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a3d2:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  40a3d6:	c5 f8 c6 c8 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm1
  40a3db:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a3df:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  40a3e3:	c4 e3 7d 19 c0 01    	vextractf128 $0x1,%ymm0,%xmm0
  40a3e9:	c5 fa 5a d0          	vcvtss2sd %xmm0,%xmm0,%xmm2
  40a3ed:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
  40a3f1:	c5 f8 c6 d0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm2
  40a3f6:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  40a3fa:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  40a3fe:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  40a402:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a406:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40a40a:	c5 f8 c6 c0 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm0
  40a40f:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  40a413:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  40a417:	c5 f3 58 de          	vaddsd %xmm6,%xmm1,%xmm3
  40a41b:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  40a420:	c5 f8 77             	vzeroupper 
  40a423:	e9 e7 cd ff ff       	jmpq   40720f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  40a428:	62 f2 fd 48 19 0d 7e 	vbroadcastsd 0x637e(%rip),%zmm1        # 4107b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  40a42f:	63 00 00 
  40a432:	62 f2 fd 48 19 05 74 	vbroadcastsd 0x6274(%rip),%zmm0        # 4106b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  40a439:	62 00 00 
  40a43c:	62 f2 fd 48 19 1d 72 	vbroadcastsd 0x6272(%rip),%zmm3        # 4106b8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  40a443:	62 00 00 
  40a446:	62 f2 fd 48 19 25 70 	vbroadcastsd 0x6270(%rip),%zmm4        # 4106c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x100>
  40a44d:	62 00 00 
  40a450:	62 f2 fd 48 19 2d 6e 	vbroadcastsd 0x626e(%rip),%zmm5        # 4106c8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x108>
  40a457:	62 00 00 
  40a45a:	62 f2 fd 48 19 35 6c 	vbroadcastsd 0x626c(%rip),%zmm6        # 4106d0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x110>
  40a461:	62 00 00 
  40a464:	62 72 fd 48 19 05 6a 	vbroadcastsd 0x626a(%rip),%zmm8        # 4106d8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x118>
  40a46b:	62 00 00 
  40a46e:	62 72 fd 48 19 0d 68 	vbroadcastsd 0x6268(%rip),%zmm9        # 4106e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x120>
  40a475:	62 00 00 
  40a478:	62 72 fd 48 19 15 66 	vbroadcastsd 0x6266(%rip),%zmm10        # 4106e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x128>
  40a47f:	62 00 00 
  40a482:	62 72 fd 48 19 1d 64 	vbroadcastsd 0x6264(%rip),%zmm11        # 4106f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  40a489:	62 00 00 
  40a48c:	62 72 fd 48 19 25 0a 	vbroadcastsd 0x620a(%rip),%zmm12        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  40a493:	62 00 00 
  40a496:	62 72 fd 48 19 2d f8 	vbroadcastsd 0x61f8(%rip),%zmm13        # 410698 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  40a49d:	61 00 00 
  40a4a0:	62 f2 fd 48 19 15 4e 	vbroadcastsd 0x624e(%rip),%zmm2        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40a4a7:	62 00 00 
  40a4aa:	62 f1 fd 48 28 f9    	vmovapd %zmm1,%zmm7
  40a4b0:	62 f2 ed 48 98 f9    	vfmadd132pd %zmm1,%zmm2,%zmm7
  40a4b6:	62 72 ed 48 98 e9    	vfmadd132pd %zmm1,%zmm2,%zmm13
  40a4bc:	62 72 ed 48 98 e1    	vfmadd132pd %zmm1,%zmm2,%zmm12
  40a4c2:	62 72 ed 48 98 d9    	vfmadd132pd %zmm1,%zmm2,%zmm11
  40a4c8:	62 72 ed 48 98 d1    	vfmadd132pd %zmm1,%zmm2,%zmm10
  40a4ce:	62 72 ed 48 98 c9    	vfmadd132pd %zmm1,%zmm2,%zmm9
  40a4d4:	62 72 ed 48 98 c1    	vfmadd132pd %zmm1,%zmm2,%zmm8
  40a4da:	62 f2 ed 48 98 f1    	vfmadd132pd %zmm1,%zmm2,%zmm6
  40a4e0:	62 f2 ed 48 98 e9    	vfmadd132pd %zmm1,%zmm2,%zmm5
  40a4e6:	62 f2 ed 48 98 e1    	vfmadd132pd %zmm1,%zmm2,%zmm4
  40a4ec:	62 f2 ed 48 98 d9    	vfmadd132pd %zmm1,%zmm2,%zmm3
  40a4f2:	62 f2 ed 48 98 c1    	vfmadd132pd %zmm1,%zmm2,%zmm0
  40a4f8:	ff c8                	dec    %eax
  40a4fa:	75 b4                	jne    40a4b0 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x3300>
  40a4fc:	62 f3 fd 48 1b fa 01 	vextractf64x4 $0x1,%zmm7,%ymm2
  40a503:	c5 ed 58 d7          	vaddpd %ymm7,%ymm2,%ymm2
  40a507:	62 73 fd 48 1b ef 01 	vextractf64x4 $0x1,%zmm13,%ymm7
  40a50e:	c4 c1 45 58 fd       	vaddpd %ymm13,%ymm7,%ymm7
  40a513:	62 f3 fd 28 19 d1 01 	vextractf64x2 $0x1,%ymm2,%xmm1
  40a51a:	c5 f1 58 ca          	vaddpd %xmm2,%xmm1,%xmm1
  40a51e:	45 31 ed             	xor    %r13d,%r13d
  40a521:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a525:	c5 f3 58 15 73 62 00 	vaddsd 0x6273(%rip),%xmm1,%xmm2        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  40a52c:	00 
  40a52d:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a534:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a538:	62 73 fd 48 1b e7 01 	vextractf64x4 $0x1,%zmm12,%ymm7
  40a53f:	c4 c1 45 58 fc       	vaddpd %ymm12,%ymm7,%ymm7
  40a544:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a548:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a54c:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a553:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a557:	62 73 fd 48 1b df 01 	vextractf64x4 $0x1,%zmm11,%ymm7
  40a55e:	c4 c1 45 58 fb       	vaddpd %ymm11,%ymm7,%ymm7
  40a563:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a567:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a56b:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a572:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a576:	62 73 fd 48 1b d7 01 	vextractf64x4 $0x1,%zmm10,%ymm7
  40a57d:	c4 c1 45 58 fa       	vaddpd %ymm10,%ymm7,%ymm7
  40a582:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a586:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a58a:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a591:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a595:	62 73 fd 48 1b cf 01 	vextractf64x4 $0x1,%zmm9,%ymm7
  40a59c:	c4 c1 45 58 f9       	vaddpd %ymm9,%ymm7,%ymm7
  40a5a1:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a5a5:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a5a9:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a5b0:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a5b4:	62 73 fd 48 1b c7 01 	vextractf64x4 $0x1,%zmm8,%ymm7
  40a5bb:	c4 c1 45 58 f8       	vaddpd %ymm8,%ymm7,%ymm7
  40a5c0:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a5c4:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a5c8:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a5cf:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a5d3:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a5d7:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a5db:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  40a5e2:	c5 f5 58 f6          	vaddpd %ymm6,%ymm1,%ymm6
  40a5e6:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  40a5ed:	c5 f1 58 ce          	vaddpd %xmm6,%xmm1,%xmm1
  40a5f1:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a5f5:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a5f9:	62 f3 fd 48 1b e9 01 	vextractf64x4 $0x1,%zmm5,%ymm1
  40a600:	c5 f5 58 ed          	vaddpd %ymm5,%ymm1,%ymm5
  40a604:	62 f3 fd 28 19 e9 01 	vextractf64x2 $0x1,%ymm5,%xmm1
  40a60b:	c5 f1 58 cd          	vaddpd %xmm5,%xmm1,%xmm1
  40a60f:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a613:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a617:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  40a61e:	c5 f5 58 e4          	vaddpd %ymm4,%ymm1,%ymm4
  40a622:	62 f3 fd 28 19 e1 01 	vextractf64x2 $0x1,%ymm4,%xmm1
  40a629:	c5 f1 58 cc          	vaddpd %xmm4,%xmm1,%xmm1
  40a62d:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a631:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a635:	62 f3 fd 48 1b d9 01 	vextractf64x4 $0x1,%zmm3,%ymm1
  40a63c:	c5 f5 58 db          	vaddpd %ymm3,%ymm1,%ymm3
  40a640:	62 f3 fd 28 19 d9 01 	vextractf64x2 $0x1,%ymm3,%xmm1
  40a647:	c5 f1 58 cb          	vaddpd %xmm3,%xmm1,%xmm1
  40a64b:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a64f:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40a653:	62 f3 fd 48 1b c2 01 	vextractf64x4 $0x1,%zmm0,%ymm2
  40a65a:	c5 fd 58 c2          	vaddpd %ymm2,%ymm0,%ymm0
  40a65e:	62 f3 fd 28 19 c2 01 	vextractf64x2 $0x1,%ymm0,%xmm2
  40a665:	c5 f9 58 c2          	vaddpd %xmm2,%xmm0,%xmm0
  40a669:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  40a66d:	c5 fb 58 f1          	vaddsd %xmm1,%xmm0,%xmm6
  40a671:	c4 e1 f9 7e f3       	vmovq  %xmm6,%rbx
  40a676:	c5 f8 77             	vzeroupper 
  40a679:	e9 91 cb ff ff       	jmpq   40720f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  40a67e:	66 90                	xchg   %ax,%ax

000000000040a680 <_ZZ4mainENKUlmE_clEm._omp_fn.1>:
  40a680:	55                   	push   %rbp
  40a681:	48 89 e5             	mov    %rsp,%rbp
  40a684:	41 55                	push   %r13
  40a686:	4c 8b 2f             	mov    (%rdi),%r13
  40a689:	41 54                	push   %r12
  40a68b:	53                   	push   %rbx
  40a68c:	49 8b 45 18          	mov    0x18(%r13),%rax
  40a690:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a694:	48 8b 18             	mov    (%rax),%rbx
  40a697:	48 85 db             	test   %rbx,%rbx
  40a69a:	74 7a                	je     40a716 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x96>
  40a69c:	e8 0f 8e ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  40a6a1:	4c 63 e0             	movslq %eax,%r12
  40a6a4:	e8 57 8d ff ff       	callq  403400 <omp_get_thread_num@plt>
  40a6a9:	48 63 c8             	movslq %eax,%rcx
  40a6ac:	48 8d 43 07          	lea    0x7(%rbx),%rax
  40a6b0:	48 c1 e8 03          	shr    $0x3,%rax
  40a6b4:	31 d2                	xor    %edx,%edx
  40a6b6:	49 f7 f4             	div    %r12
  40a6b9:	48 39 d1             	cmp    %rdx,%rcx
  40a6bc:	72 6a                	jb     40a728 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0xa8>
  40a6be:	48 0f af c8          	imul   %rax,%rcx
  40a6c2:	48 01 ca             	add    %rcx,%rdx
  40a6c5:	48 01 d0             	add    %rdx,%rax
  40a6c8:	48 39 c2             	cmp    %rax,%rdx
  40a6cb:	73 49                	jae    40a716 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x96>
  40a6cd:	62 f2 fd 48 19 0d c9 	vbroadcastsd 0x5fc9(%rip),%zmm1        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  40a6d4:	5f 00 00 
  40a6d7:	48 c1 e2 03          	shl    $0x3,%rdx
  40a6db:	48 c1 e0 03          	shl    $0x3,%rax
  40a6df:	90                   	nop
  40a6e0:	49 8b 4d 30          	mov    0x30(%r13),%rcx
  40a6e4:	48 8b 31             	mov    (%rcx),%rsi
  40a6e7:	49 8b 4d 28          	mov    0x28(%r13),%rcx
  40a6eb:	62 f1 fd 48 28 04 d6 	vmovapd (%rsi,%rdx,8),%zmm0
  40a6f2:	48 8b 09             	mov    (%rcx),%rcx
  40a6f5:	62 f2 f5 48 a8 04 d1 	vfmadd213pd (%rcx,%rdx,8),%zmm1,%zmm0
  40a6fc:	49 8b 4d 20          	mov    0x20(%r13),%rcx
  40a700:	48 8b 09             	mov    (%rcx),%rcx
  40a703:	62 f1 fd 48 2b 04 d1 	vmovntpd %zmm0,(%rcx,%rdx,8)
  40a70a:	48 83 c2 08          	add    $0x8,%rdx
  40a70e:	48 39 d0             	cmp    %rdx,%rax
  40a711:	77 cd                	ja     40a6e0 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x60>
  40a713:	c5 f8 77             	vzeroupper 
  40a716:	0f ae f8             	sfence 
  40a719:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a71d:	5b                   	pop    %rbx
  40a71e:	41 5c                	pop    %r12
  40a720:	41 5d                	pop    %r13
  40a722:	5d                   	pop    %rbp
  40a723:	c3                   	retq   
  40a724:	0f 1f 40 00          	nopl   0x0(%rax)
  40a728:	48 ff c0             	inc    %rax
  40a72b:	31 d2                	xor    %edx,%edx
  40a72d:	eb 8f                	jmp    40a6be <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x3e>
  40a72f:	90                   	nop

000000000040a730 <_ZZ4mainENKUlmE_clEm._omp_fn.3>:
  40a730:	55                   	push   %rbp
  40a731:	48 89 e5             	mov    %rsp,%rbp
  40a734:	41 55                	push   %r13
  40a736:	4c 8b 2f             	mov    (%rdi),%r13
  40a739:	41 54                	push   %r12
  40a73b:	53                   	push   %rbx
  40a73c:	49 8b 45 18          	mov    0x18(%r13),%rax
  40a740:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a744:	48 8b 18             	mov    (%rax),%rbx
  40a747:	48 85 db             	test   %rbx,%rbx
  40a74a:	74 64                	je     40a7b0 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x80>
  40a74c:	e8 5f 8d ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  40a751:	4c 63 e0             	movslq %eax,%r12
  40a754:	e8 a7 8c ff ff       	callq  403400 <omp_get_thread_num@plt>
  40a759:	48 63 c8             	movslq %eax,%rcx
  40a75c:	48 8d 43 07          	lea    0x7(%rbx),%rax
  40a760:	48 c1 e8 03          	shr    $0x3,%rax
  40a764:	31 d2                	xor    %edx,%edx
  40a766:	49 f7 f4             	div    %r12
  40a769:	48 39 d1             	cmp    %rdx,%rcx
  40a76c:	72 52                	jb     40a7c0 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x90>
  40a76e:	48 0f af c8          	imul   %rax,%rcx
  40a772:	48 01 ca             	add    %rcx,%rdx
  40a775:	48 01 d0             	add    %rdx,%rax
  40a778:	48 39 c2             	cmp    %rax,%rdx
  40a77b:	73 33                	jae    40a7b0 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x80>
  40a77d:	48 c1 e2 03          	shl    $0x3,%rdx
  40a781:	48 c1 e0 03          	shl    $0x3,%rax
  40a785:	0f 1f 00             	nopl   (%rax)
  40a788:	49 8b 75 28          	mov    0x28(%r13),%rsi
  40a78c:	49 8b 4d 20          	mov    0x20(%r13),%rcx
  40a790:	48 8b 36             	mov    (%rsi),%rsi
  40a793:	48 8b 09             	mov    (%rcx),%rcx
  40a796:	62 f1 fd 48 28 04 d6 	vmovapd (%rsi,%rdx,8),%zmm0
  40a79d:	62 f1 fd 48 2b 04 d1 	vmovntpd %zmm0,(%rcx,%rdx,8)
  40a7a4:	48 83 c2 08          	add    $0x8,%rdx
  40a7a8:	48 39 d0             	cmp    %rdx,%rax
  40a7ab:	77 db                	ja     40a788 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x58>
  40a7ad:	c5 f8 77             	vzeroupper 
  40a7b0:	0f ae f8             	sfence 
  40a7b3:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a7b7:	5b                   	pop    %rbx
  40a7b8:	41 5c                	pop    %r12
  40a7ba:	41 5d                	pop    %r13
  40a7bc:	5d                   	pop    %rbp
  40a7bd:	c3                   	retq   
  40a7be:	66 90                	xchg   %ax,%ax
  40a7c0:	48 ff c0             	inc    %rax
  40a7c3:	31 d2                	xor    %edx,%edx
  40a7c5:	eb a7                	jmp    40a76e <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x3e>
  40a7c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40a7ce:	00 00 

000000000040a7d0 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0>:
  40a7d0:	55                   	push   %rbp
  40a7d1:	48 89 e5             	mov    %rsp,%rbp
  40a7d4:	41 55                	push   %r13
  40a7d6:	41 54                	push   %r12
  40a7d8:	53                   	push   %rbx
  40a7d9:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  40a7dd:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a7e1:	48 85 db             	test   %rbx,%rbx
  40a7e4:	0f 84 a5 01 00 00    	je     40a98f <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x1bf>
  40a7ea:	49 89 fd             	mov    %rdi,%r13
  40a7ed:	e8 be 8c ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  40a7f2:	4c 63 e0             	movslq %eax,%r12
  40a7f5:	e8 06 8c ff ff       	callq  403400 <omp_get_thread_num@plt>
  40a7fa:	48 63 c8             	movslq %eax,%rcx
  40a7fd:	48 ba ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rdx
  40a804:	aa aa aa 
  40a807:	48 8d 43 5f          	lea    0x5f(%rbx),%rax
  40a80b:	48 f7 e2             	mul    %rdx
  40a80e:	48 89 d0             	mov    %rdx,%rax
  40a811:	48 c1 e8 06          	shr    $0x6,%rax
  40a815:	31 d2                	xor    %edx,%edx
  40a817:	49 f7 f4             	div    %r12
  40a81a:	48 39 d1             	cmp    %rdx,%rcx
  40a81d:	0f 82 77 01 00 00    	jb     40a99a <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x1ca>
  40a823:	48 0f af c8          	imul   %rax,%rcx
  40a827:	48 01 ca             	add    %rcx,%rdx
  40a82a:	48 01 d0             	add    %rdx,%rax
  40a82d:	48 39 c2             	cmp    %rax,%rdx
  40a830:	0f 83 59 01 00 00    	jae    40a98f <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x1bf>
  40a836:	48 8d 14 52          	lea    (%rdx,%rdx,2),%rdx
  40a83a:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40a83e:	48 89 d7             	mov    %rdx,%rdi
  40a841:	4c 8d 04 40          	lea    (%rax,%rax,2),%r8
  40a845:	48 c1 e2 08          	shl    $0x8,%rdx
  40a849:	41 8b 75 18          	mov    0x18(%r13),%esi
  40a84d:	62 f2 fd 48 19 0d a9 	vbroadcastsd 0x5ea9(%rip),%zmm1        # 410700 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  40a854:	5e 00 00 
  40a857:	62 f2 fd 48 19 05 97 	vbroadcastsd 0x5e97(%rip),%zmm0        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40a85e:	5e 00 00 
  40a861:	48 01 d1             	add    %rdx,%rcx
  40a864:	48 c1 e7 05          	shl    $0x5,%rdi
  40a868:	49 c1 e0 05          	shl    $0x5,%r8
  40a86c:	49 03 55 08          	add    0x8(%r13),%rdx
  40a870:	62 71 fd 48 28 29    	vmovapd (%rcx),%zmm13
  40a876:	62 71 fd 48 28 61 01 	vmovapd 0x40(%rcx),%zmm12
  40a87d:	62 71 fd 48 28 59 02 	vmovapd 0x80(%rcx),%zmm11
  40a884:	62 71 fd 48 28 51 03 	vmovapd 0xc0(%rcx),%zmm10
  40a88b:	62 71 fd 48 28 49 04 	vmovapd 0x100(%rcx),%zmm9
  40a892:	62 71 fd 48 28 41 05 	vmovapd 0x140(%rcx),%zmm8
  40a899:	62 f1 fd 48 28 79 06 	vmovapd 0x180(%rcx),%zmm7
  40a8a0:	62 f1 fd 48 28 71 07 	vmovapd 0x1c0(%rcx),%zmm6
  40a8a7:	62 f1 fd 48 28 69 08 	vmovapd 0x200(%rcx),%zmm5
  40a8ae:	62 f1 fd 48 28 61 09 	vmovapd 0x240(%rcx),%zmm4
  40a8b5:	62 f1 fd 48 28 59 0a 	vmovapd 0x280(%rcx),%zmm3
  40a8bc:	62 f1 fd 48 28 51 0b 	vmovapd 0x2c0(%rcx),%zmm2
  40a8c3:	85 f6                	test   %esi,%esi
  40a8c5:	7e 57                	jle    40a91e <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x14e>
  40a8c7:	31 c0                	xor    %eax,%eax
  40a8c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40a8d0:	ff c0                	inc    %eax
  40a8d2:	62 72 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm13
  40a8d8:	62 72 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm12
  40a8de:	62 72 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm11
  40a8e4:	62 72 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm10
  40a8ea:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  40a8f0:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  40a8f6:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  40a8fc:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  40a902:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  40a908:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  40a90e:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  40a914:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  40a91a:	39 c6                	cmp    %eax,%esi
  40a91c:	75 b2                	jne    40a8d0 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x100>
  40a91e:	48 83 c7 60          	add    $0x60,%rdi
  40a922:	62 71 fd 48 29 2a    	vmovapd %zmm13,(%rdx)
  40a928:	62 71 fd 48 29 62 01 	vmovapd %zmm12,0x40(%rdx)
  40a92f:	62 71 fd 48 29 5a 02 	vmovapd %zmm11,0x80(%rdx)
  40a936:	62 71 fd 48 29 52 03 	vmovapd %zmm10,0xc0(%rdx)
  40a93d:	62 71 fd 48 29 4a 04 	vmovapd %zmm9,0x100(%rdx)
  40a944:	62 71 fd 48 29 42 05 	vmovapd %zmm8,0x140(%rdx)
  40a94b:	62 f1 fd 48 29 7a 06 	vmovapd %zmm7,0x180(%rdx)
  40a952:	62 f1 fd 48 29 72 07 	vmovapd %zmm6,0x1c0(%rdx)
  40a959:	62 f1 fd 48 29 6a 08 	vmovapd %zmm5,0x200(%rdx)
  40a960:	62 f1 fd 48 29 62 09 	vmovapd %zmm4,0x240(%rdx)
  40a967:	62 f1 fd 48 29 5a 0a 	vmovapd %zmm3,0x280(%rdx)
  40a96e:	62 f1 fd 48 29 52 0b 	vmovapd %zmm2,0x2c0(%rdx)
  40a975:	48 81 c1 00 03 00 00 	add    $0x300,%rcx
  40a97c:	48 81 c2 00 03 00 00 	add    $0x300,%rdx
  40a983:	49 39 f8             	cmp    %rdi,%r8
  40a986:	0f 87 e4 fe ff ff    	ja     40a870 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0xa0>
  40a98c:	c5 f8 77             	vzeroupper 
  40a98f:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a993:	5b                   	pop    %rbx
  40a994:	41 5c                	pop    %r12
  40a996:	41 5d                	pop    %r13
  40a998:	5d                   	pop    %rbp
  40a999:	c3                   	retq   
  40a99a:	48 ff c0             	inc    %rax
  40a99d:	31 d2                	xor    %edx,%edx
  40a99f:	e9 7f fe ff ff       	jmpq   40a823 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x53>
  40a9a4:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40a9ab:	00 00 00 00 
  40a9af:	90                   	nop

000000000040a9b0 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0>:
  40a9b0:	55                   	push   %rbp
  40a9b1:	48 89 e5             	mov    %rsp,%rbp
  40a9b4:	41 55                	push   %r13
  40a9b6:	41 54                	push   %r12
  40a9b8:	53                   	push   %rbx
  40a9b9:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  40a9bd:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a9c1:	48 85 db             	test   %rbx,%rbx
  40a9c4:	0f 84 e1 01 00 00    	je     40abab <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x1fb>
  40a9ca:	49 89 fc             	mov    %rdi,%r12
  40a9cd:	e8 de 8a ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  40a9d2:	41 89 c5             	mov    %eax,%r13d
  40a9d5:	e8 26 8a ff ff       	callq  403400 <omp_get_thread_num@plt>
  40a9da:	48 63 c8             	movslq %eax,%rcx
  40a9dd:	48 8d 43 7f          	lea    0x7f(%rbx),%rax
  40a9e1:	48 c1 e8 07          	shr    $0x7,%rax
  40a9e5:	49 63 f5             	movslq %r13d,%rsi
  40a9e8:	31 d2                	xor    %edx,%edx
  40a9ea:	48 f7 f6             	div    %rsi
  40a9ed:	48 39 d1             	cmp    %rdx,%rcx
  40a9f0:	0f 82 c0 01 00 00    	jb     40abb6 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x206>
  40a9f6:	48 0f af c8          	imul   %rax,%rcx
  40a9fa:	48 01 ca             	add    %rcx,%rdx
  40a9fd:	48 01 d0             	add    %rdx,%rax
  40aa00:	48 39 c2             	cmp    %rax,%rdx
  40aa03:	0f 83 a2 01 00 00    	jae    40abab <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x1fb>
  40aa09:	49 8b 0c 24          	mov    (%r12),%rcx
  40aa0d:	49 89 d0             	mov    %rdx,%r8
  40aa10:	48 c1 e0 07          	shl    $0x7,%rax
  40aa14:	48 c1 e2 0a          	shl    $0xa,%rdx
  40aa18:	41 8b 74 24 18       	mov    0x18(%r12),%esi
  40aa1d:	62 f2 fd 48 19 0d d9 	vbroadcastsd 0x5cd9(%rip),%zmm1        # 410700 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  40aa24:	5c 00 00 
  40aa27:	62 f2 fd 48 19 05 c7 	vbroadcastsd 0x5cc7(%rip),%zmm0        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40aa2e:	5c 00 00 
  40aa31:	48 01 d1             	add    %rdx,%rcx
  40aa34:	49 c1 e0 07          	shl    $0x7,%r8
  40aa38:	48 89 c7             	mov    %rax,%rdi
  40aa3b:	49 03 54 24 08       	add    0x8(%r12),%rdx
  40aa40:	62 e1 fd 48 28 09    	vmovapd (%rcx),%zmm17
  40aa46:	62 e1 fd 48 28 41 01 	vmovapd 0x40(%rcx),%zmm16
  40aa4d:	62 71 fd 48 28 79 02 	vmovapd 0x80(%rcx),%zmm15
  40aa54:	62 71 fd 48 28 71 03 	vmovapd 0xc0(%rcx),%zmm14
  40aa5b:	62 71 fd 48 28 69 04 	vmovapd 0x100(%rcx),%zmm13
  40aa62:	62 71 fd 48 28 61 05 	vmovapd 0x140(%rcx),%zmm12
  40aa69:	62 71 fd 48 28 59 06 	vmovapd 0x180(%rcx),%zmm11
  40aa70:	62 71 fd 48 28 51 07 	vmovapd 0x1c0(%rcx),%zmm10
  40aa77:	62 71 fd 48 28 49 08 	vmovapd 0x200(%rcx),%zmm9
  40aa7e:	62 71 fd 48 28 41 09 	vmovapd 0x240(%rcx),%zmm8
  40aa85:	62 f1 fd 48 28 79 0a 	vmovapd 0x280(%rcx),%zmm7
  40aa8c:	62 f1 fd 48 28 71 0b 	vmovapd 0x2c0(%rcx),%zmm6
  40aa93:	62 f1 fd 48 28 69 0c 	vmovapd 0x300(%rcx),%zmm5
  40aa9a:	62 f1 fd 48 28 61 0d 	vmovapd 0x340(%rcx),%zmm4
  40aaa1:	62 f1 fd 48 28 59 0e 	vmovapd 0x380(%rcx),%zmm3
  40aaa8:	62 f1 fd 48 28 51 0f 	vmovapd 0x3c0(%rcx),%zmm2
  40aaaf:	85 f6                	test   %esi,%esi
  40aab1:	7e 6b                	jle    40ab1e <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x16e>
  40aab3:	31 c0                	xor    %eax,%eax
  40aab5:	0f 1f 00             	nopl   (%rax)
  40aab8:	ff c0                	inc    %eax
  40aaba:	62 e2 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm17
  40aac0:	62 e2 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm16
  40aac6:	62 72 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm15
  40aacc:	62 72 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm14
  40aad2:	62 72 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm13
  40aad8:	62 72 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm12
  40aade:	62 72 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm11
  40aae4:	62 72 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm10
  40aaea:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  40aaf0:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  40aaf6:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  40aafc:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  40ab02:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  40ab08:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  40ab0e:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  40ab14:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  40ab1a:	39 c6                	cmp    %eax,%esi
  40ab1c:	75 9a                	jne    40aab8 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x108>
  40ab1e:	49 83 e8 80          	sub    $0xffffffffffffff80,%r8
  40ab22:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  40ab28:	62 e1 fd 48 29 42 01 	vmovapd %zmm16,0x40(%rdx)
  40ab2f:	62 71 fd 48 29 7a 02 	vmovapd %zmm15,0x80(%rdx)
  40ab36:	62 71 fd 48 29 72 03 	vmovapd %zmm14,0xc0(%rdx)
  40ab3d:	62 71 fd 48 29 6a 04 	vmovapd %zmm13,0x100(%rdx)
  40ab44:	62 71 fd 48 29 62 05 	vmovapd %zmm12,0x140(%rdx)
  40ab4b:	62 71 fd 48 29 5a 06 	vmovapd %zmm11,0x180(%rdx)
  40ab52:	62 71 fd 48 29 52 07 	vmovapd %zmm10,0x1c0(%rdx)
  40ab59:	62 71 fd 48 29 4a 08 	vmovapd %zmm9,0x200(%rdx)
  40ab60:	62 71 fd 48 29 42 09 	vmovapd %zmm8,0x240(%rdx)
  40ab67:	62 f1 fd 48 29 7a 0a 	vmovapd %zmm7,0x280(%rdx)
  40ab6e:	62 f1 fd 48 29 72 0b 	vmovapd %zmm6,0x2c0(%rdx)
  40ab75:	62 f1 fd 48 29 6a 0c 	vmovapd %zmm5,0x300(%rdx)
  40ab7c:	62 f1 fd 48 29 62 0d 	vmovapd %zmm4,0x340(%rdx)
  40ab83:	62 f1 fd 48 29 5a 0e 	vmovapd %zmm3,0x380(%rdx)
  40ab8a:	62 f1 fd 48 29 52 0f 	vmovapd %zmm2,0x3c0(%rdx)
  40ab91:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  40ab98:	48 81 c2 00 04 00 00 	add    $0x400,%rdx
  40ab9f:	4c 39 c7             	cmp    %r8,%rdi
  40aba2:	0f 87 98 fe ff ff    	ja     40aa40 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x90>
  40aba8:	c5 f8 77             	vzeroupper 
  40abab:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40abaf:	5b                   	pop    %rbx
  40abb0:	41 5c                	pop    %r12
  40abb2:	41 5d                	pop    %r13
  40abb4:	5d                   	pop    %rbp
  40abb5:	c3                   	retq   
  40abb6:	48 ff c0             	inc    %rax
  40abb9:	31 d2                	xor    %edx,%edx
  40abbb:	e9 36 fe ff ff       	jmpq   40a9f6 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x46>

000000000040abc0 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0>:
  40abc0:	55                   	push   %rbp
  40abc1:	48 89 e5             	mov    %rsp,%rbp
  40abc4:	41 55                	push   %r13
  40abc6:	41 54                	push   %r12
  40abc8:	53                   	push   %rbx
  40abc9:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  40abcd:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40abd1:	48 85 db             	test   %rbx,%rbx
  40abd4:	0f 84 41 01 00 00    	je     40ad1b <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x15b>
  40abda:	49 89 fd             	mov    %rdi,%r13
  40abdd:	e8 ce 88 ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  40abe2:	4c 63 e0             	movslq %eax,%r12
  40abe5:	e8 16 88 ff ff       	callq  403400 <omp_get_thread_num@plt>
  40abea:	48 63 c8             	movslq %eax,%rcx
  40abed:	48 8d 43 3f          	lea    0x3f(%rbx),%rax
  40abf1:	48 c1 e8 06          	shr    $0x6,%rax
  40abf5:	31 d2                	xor    %edx,%edx
  40abf7:	49 f7 f4             	div    %r12
  40abfa:	48 39 d1             	cmp    %rdx,%rcx
  40abfd:	0f 82 23 01 00 00    	jb     40ad26 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x166>
  40ac03:	48 0f af c8          	imul   %rax,%rcx
  40ac07:	48 01 ca             	add    %rcx,%rdx
  40ac0a:	48 01 d0             	add    %rdx,%rax
  40ac0d:	48 39 c2             	cmp    %rax,%rdx
  40ac10:	0f 83 05 01 00 00    	jae    40ad1b <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x15b>
  40ac16:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40ac1a:	49 89 d0             	mov    %rdx,%r8
  40ac1d:	48 c1 e0 06          	shl    $0x6,%rax
  40ac21:	48 c1 e2 09          	shl    $0x9,%rdx
  40ac25:	41 8b 75 18          	mov    0x18(%r13),%esi
  40ac29:	62 f2 fd 48 19 0d cd 	vbroadcastsd 0x5acd(%rip),%zmm1        # 410700 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  40ac30:	5a 00 00 
  40ac33:	62 f2 fd 48 19 05 bb 	vbroadcastsd 0x5abb(%rip),%zmm0        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40ac3a:	5a 00 00 
  40ac3d:	48 01 d1             	add    %rdx,%rcx
  40ac40:	49 c1 e0 06          	shl    $0x6,%r8
  40ac44:	48 89 c7             	mov    %rax,%rdi
  40ac47:	49 03 55 08          	add    0x8(%r13),%rdx
  40ac4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40ac50:	62 71 fd 48 28 09    	vmovapd (%rcx),%zmm9
  40ac56:	62 71 fd 48 28 41 01 	vmovapd 0x40(%rcx),%zmm8
  40ac5d:	62 f1 fd 48 28 79 02 	vmovapd 0x80(%rcx),%zmm7
  40ac64:	62 f1 fd 48 28 71 03 	vmovapd 0xc0(%rcx),%zmm6
  40ac6b:	62 f1 fd 48 28 69 04 	vmovapd 0x100(%rcx),%zmm5
  40ac72:	62 f1 fd 48 28 61 05 	vmovapd 0x140(%rcx),%zmm4
  40ac79:	62 f1 fd 48 28 59 06 	vmovapd 0x180(%rcx),%zmm3
  40ac80:	62 f1 fd 48 28 51 07 	vmovapd 0x1c0(%rcx),%zmm2
  40ac87:	85 f6                	test   %esi,%esi
  40ac89:	7e 3b                	jle    40acc6 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x106>
  40ac8b:	31 c0                	xor    %eax,%eax
  40ac8d:	0f 1f 00             	nopl   (%rax)
  40ac90:	ff c0                	inc    %eax
  40ac92:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  40ac98:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  40ac9e:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  40aca4:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  40acaa:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  40acb0:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  40acb6:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  40acbc:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  40acc2:	39 c6                	cmp    %eax,%esi
  40acc4:	75 ca                	jne    40ac90 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0xd0>
  40acc6:	49 83 c0 40          	add    $0x40,%r8
  40acca:	62 71 fd 48 29 0a    	vmovapd %zmm9,(%rdx)
  40acd0:	62 71 fd 48 29 42 01 	vmovapd %zmm8,0x40(%rdx)
  40acd7:	62 f1 fd 48 29 7a 02 	vmovapd %zmm7,0x80(%rdx)
  40acde:	62 f1 fd 48 29 72 03 	vmovapd %zmm6,0xc0(%rdx)
  40ace5:	62 f1 fd 48 29 6a 04 	vmovapd %zmm5,0x100(%rdx)
  40acec:	62 f1 fd 48 29 62 05 	vmovapd %zmm4,0x140(%rdx)
  40acf3:	62 f1 fd 48 29 5a 06 	vmovapd %zmm3,0x180(%rdx)
  40acfa:	62 f1 fd 48 29 52 07 	vmovapd %zmm2,0x1c0(%rdx)
  40ad01:	48 81 c1 00 02 00 00 	add    $0x200,%rcx
  40ad08:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  40ad0f:	4c 39 c7             	cmp    %r8,%rdi
  40ad12:	0f 87 38 ff ff ff    	ja     40ac50 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x90>
  40ad18:	c5 f8 77             	vzeroupper 
  40ad1b:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40ad1f:	5b                   	pop    %rbx
  40ad20:	41 5c                	pop    %r12
  40ad22:	41 5d                	pop    %r13
  40ad24:	5d                   	pop    %rbp
  40ad25:	c3                   	retq   
  40ad26:	48 ff c0             	inc    %rax
  40ad29:	31 d2                	xor    %edx,%edx
  40ad2b:	e9 d3 fe ff ff       	jmpq   40ac03 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x43>

000000000040ad30 <_ZZ4mainENKUlmE_clEm>:
  40ad30:	55                   	push   %rbp
  40ad31:	48 89 e5             	mov    %rsp,%rbp
  40ad34:	41 54                	push   %r12
  40ad36:	53                   	push   %rbx
  40ad37:	48 89 fb             	mov    %rdi,%rbx
  40ad3a:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40ad3e:	48 83 ec 60          	sub    $0x60,%rsp
  40ad42:	48 8b 07             	mov    (%rdi),%rax
  40ad45:	80 38 00             	cmpb   $0x0,(%rax)
  40ad48:	0f 85 d7 00 00 00    	jne    40ae25 <_ZZ4mainENKUlmE_clEm+0xf5>
  40ad4e:	48 8b 47 10          	mov    0x10(%rdi),%rax
  40ad52:	80 38 00             	cmpb   $0x0,(%rax)
  40ad55:	0f 85 42 03 00 00    	jne    40b09d <_ZZ4mainENKUlmE_clEm+0x36d>
  40ad5b:	48 8b 47 38          	mov    0x38(%rdi),%rax
  40ad5f:	80 38 00             	cmpb   $0x0,(%rax)
  40ad62:	0f 85 e8 00 00 00    	jne    40ae50 <_ZZ4mainENKUlmE_clEm+0x120>
  40ad68:	48 8b 47 40          	mov    0x40(%rdi),%rax
  40ad6c:	80 38 00             	cmpb   $0x0,(%rax)
  40ad6f:	0f 85 70 03 00 00    	jne    40b0e5 <_ZZ4mainENKUlmE_clEm+0x3b5>
  40ad75:	48 8b 47 48          	mov    0x48(%rdi),%rax
  40ad79:	44 0f b6 20          	movzbl (%rax),%r12d
  40ad7d:	45 84 e4             	test   %r12b,%r12b
  40ad80:	0f 85 96 03 00 00    	jne    40b11c <_ZZ4mainENKUlmE_clEm+0x3ec>
  40ad86:	48 8b 47 50          	mov    0x50(%rdi),%rax
  40ad8a:	80 38 00             	cmpb   $0x0,(%rax)
  40ad8d:	0f 85 c0 03 00 00    	jne    40b153 <_ZZ4mainENKUlmE_clEm+0x423>
  40ad93:	48 8b 87 88 00 00 00 	mov    0x88(%rdi),%rax
  40ad9a:	44 0f b6 20          	movzbl (%rax),%r12d
  40ad9e:	45 84 e4             	test   %r12b,%r12b
  40ada1:	0f 84 ee 00 00 00    	je     40ae95 <_ZZ4mainENKUlmE_clEm+0x165>
  40ada7:	48 8b 97 98 00 00 00 	mov    0x98(%rdi),%rdx
  40adae:	48 8b 87 90 00 00 00 	mov    0x90(%rdi),%rax
  40adb5:	8b 3a                	mov    (%rdx),%edi
  40adb7:	48 8b 53 18          	mov    0x18(%rbx),%rdx
  40adbb:	8b 00                	mov    (%rax),%eax
  40adbd:	48 8b 32             	mov    (%rdx),%rsi
  40adc0:	48 8b 53 20          	mov    0x20(%rbx),%rdx
  40adc4:	48 8b 0a             	mov    (%rdx),%rcx
  40adc7:	48 8b 53 28          	mov    0x28(%rbx),%rdx
  40adcb:	48 8b 12             	mov    (%rdx),%rdx
  40adce:	c4 e1 f9 6e ea       	vmovq  %rdx,%xmm5
  40add3:	c4 e3 d1 22 c1 01    	vpinsrq $0x1,%rcx,%xmm5,%xmm0
  40add9:	83 f8 0c             	cmp    $0xc,%eax
  40addc:	0f 84 42 04 00 00    	je     40b224 <_ZZ4mainENKUlmE_clEm+0x4f4>
  40ade2:	83 f8 10             	cmp    $0x10,%eax
  40ade5:	0f 84 61 04 00 00    	je     40b24c <_ZZ4mainENKUlmE_clEm+0x51c>
  40adeb:	89 7c 24 18          	mov    %edi,0x18(%rsp)
  40adef:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40adf4:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40adf9:	48 89 14 24          	mov    %rdx,(%rsp)
  40adfd:	31 c9                	xor    %ecx,%ecx
  40adff:	31 d2                	xor    %edx,%edx
  40ae01:	48 89 e6             	mov    %rsp,%rsi
  40ae04:	bf c0 ab 40 00       	mov    $0x40abc0,%edi
  40ae09:	e8 b2 85 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40ae0e:	48 8b 83 98 00 00 00 	mov    0x98(%rbx),%rax
  40ae15:	48 8b 53 18          	mov    0x18(%rbx),%rdx
  40ae19:	48 63 00             	movslq (%rax),%rax
  40ae1c:	48 0f af 02          	imul   (%rdx),%rax
  40ae20:	48 01 c0             	add    %rax,%rax
  40ae23:	eb 22                	jmp    40ae47 <_ZZ4mainENKUlmE_clEm+0x117>
  40ae25:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  40ae29:	b8 00 00 01 00       	mov    $0x10000,%eax
  40ae2e:	48 8b 11             	mov    (%rcx),%rdx
  40ae31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40ae38:	48 8b 12             	mov    (%rdx),%rdx
  40ae3b:	48 89 11             	mov    %rdx,(%rcx)
  40ae3e:	ff c8                	dec    %eax
  40ae40:	75 f6                	jne    40ae38 <_ZZ4mainENKUlmE_clEm+0x108>
  40ae42:	b8 00 00 01 00       	mov    $0x10000,%eax
  40ae47:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
  40ae4b:	5b                   	pop    %rbx
  40ae4c:	41 5c                	pop    %r12
  40ae4e:	5d                   	pop    %rbp
  40ae4f:	c3                   	retq   
  40ae50:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40ae54:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40ae59:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40ae5d:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40ae62:	48 8d 47 28          	lea    0x28(%rdi),%rax
  40ae66:	48 89 3c 24          	mov    %rdi,(%rsp)
  40ae6a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40ae6f:	31 c9                	xor    %ecx,%ecx
  40ae71:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40ae75:	31 d2                	xor    %edx,%edx
  40ae77:	48 89 e6             	mov    %rsp,%rsi
  40ae7a:	bf 80 a6 40 00       	mov    $0x40a680,%edi
  40ae7f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40ae84:	e8 37 85 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40ae89:	48 8b 43 18          	mov    0x18(%rbx),%rax
  40ae8d:	48 8b 00             	mov    (%rax),%rax
  40ae90:	48 01 c0             	add    %rax,%rax
  40ae93:	eb b2                	jmp    40ae47 <_ZZ4mainENKUlmE_clEm+0x117>
  40ae95:	48 8d 87 90 00 00 00 	lea    0x90(%rdi),%rax
  40ae9c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40aea1:	48 8d 87 a0 00 00 00 	lea    0xa0(%rdi),%rax
  40aea8:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40aead:	48 8d 87 a8 00 00 00 	lea    0xa8(%rdi),%rax
  40aeb4:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40aeb9:	48 8d 87 b0 00 00 00 	lea    0xb0(%rdi),%rax
  40aec0:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  40aec5:	48 8d 87 b8 00 00 00 	lea    0xb8(%rdi),%rax
  40aecc:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  40aed2:	48 89 3c 24          	mov    %rdi,(%rsp)
  40aed6:	48 8d 87 c0 00 00 00 	lea    0xc0(%rdi),%rax
  40aedd:	31 d2                	xor    %edx,%edx
  40aedf:	31 c9                	xor    %ecx,%ecx
  40aee1:	48 89 e6             	mov    %rsp,%rsi
  40aee4:	bf b0 71 40 00       	mov    $0x4071b0,%edi
  40aee9:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40aeee:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%rsp)
  40aef5:	00 
  40aef6:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  40aefd:	00 00 
  40aeff:	c5 f9 7f 44 24 20    	vmovdqa %xmm0,0x20(%rsp)
  40af05:	e8 b6 84 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40af0a:	8b 44 24 40          	mov    0x40(%rsp),%eax
  40af0e:	c5 fb 10 4c 24 38    	vmovsd 0x38(%rsp),%xmm1
  40af14:	48 8b 53 70          	mov    0x70(%rbx),%rdx
  40af18:	c5 fb 11 0a          	vmovsd %xmm1,(%rdx)
  40af1c:	85 c0                	test   %eax,%eax
  40af1e:	75 1a                	jne    40af3a <_ZZ4mainENKUlmE_clEm+0x20a>
  40af20:	c5 f1 54 05 d8 58 00 	vandpd 0x58d8(%rip),%xmm1,%xmm0        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40af27:	00 
  40af28:	c5 fb 10 15 e0 57 00 	vmovsd 0x57e0(%rip),%xmm2        # 410710 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  40af2f:	00 
  40af30:	c5 f9 2e d0          	vucomisd %xmm0,%xmm2
  40af34:	0f 83 d9 02 00 00    	jae    40b213 <_ZZ4mainENKUlmE_clEm+0x4e3>
  40af3a:	48 8b 53 78          	mov    0x78(%rbx),%rdx
  40af3e:	48 8b 8b c0 00 00 00 	mov    0xc0(%rbx),%rcx
  40af45:	44 22 22             	and    (%rdx),%r12b
  40af48:	44 88 22             	mov    %r12b,(%rdx)
  40af4b:	80 39 00             	cmpb   $0x0,(%rcx)
  40af4e:	0f 85 09 01 00 00    	jne    40b05d <_ZZ4mainENKUlmE_clEm+0x32d>
  40af54:	48 8b 83 c8 00 00 00 	mov    0xc8(%rbx),%rax
  40af5b:	80 38 00             	cmpb   $0x0,(%rax)
  40af5e:	0f 85 f9 00 00 00    	jne    40b05d <_ZZ4mainENKUlmE_clEm+0x32d>
  40af64:	48 8b b3 b0 00 00 00 	mov    0xb0(%rbx),%rsi
  40af6b:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
  40af72:	80 3e 00             	cmpb   $0x0,(%rsi)
  40af75:	48 63 00             	movslq (%rax),%rax
  40af78:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  40af7c:	74 39                	je     40afb7 <_ZZ4mainENKUlmE_clEm+0x287>
  40af7e:	c5 eb 2a c0          	vcvtsi2sd %eax,%xmm2,%xmm0
  40af82:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40af88:	c5 fb 59 05 20 57 00 	vmulsd 0x5720(%rip),%xmm0,%xmm0        # 4106b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  40af8f:	00 
  40af90:	c5 fb 59 05 88 57 00 	vmulsd 0x5788(%rip),%xmm0,%xmm0        # 410720 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  40af97:	00 
  40af98:	c5 fb 59 05 50 57 00 	vmulsd 0x5750(%rip),%xmm0,%xmm0        # 4106f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  40af9f:	00 
  40afa0:	c5 fb 59 05 80 57 00 	vmulsd 0x5780(%rip),%xmm0,%xmm0        # 410728 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  40afa7:	00 
  40afa8:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  40afac:	40 0f 9b c7          	setnp  %dil
  40afb0:	41 0f 45 f8          	cmovne %r8d,%edi
  40afb4:	40 20 3a             	and    %dil,(%rdx)
  40afb7:	48 8b bb b8 00 00 00 	mov    0xb8(%rbx),%rdi
  40afbe:	80 3f 00             	cmpb   $0x0,(%rdi)
  40afc1:	74 3d                	je     40b000 <_ZZ4mainENKUlmE_clEm+0x2d0>
  40afc3:	4c 8b 83 90 00 00 00 	mov    0x90(%rbx),%r8
  40afca:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40afd0:	c4 c1 6b 2a 00       	vcvtsi2sdl (%r8),%xmm2,%xmm0
  40afd5:	c5 eb 2a d0          	vcvtsi2sd %eax,%xmm2,%xmm2
  40afd9:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40afdd:	c5 fb 59 05 3b 57 00 	vmulsd 0x573b(%rip),%xmm0,%xmm0        # 410720 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  40afe4:	00 
  40afe5:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  40afe9:	c5 fb 59 05 37 57 00 	vmulsd 0x5737(%rip),%xmm0,%xmm0        # 410728 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  40aff0:	00 
  40aff1:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  40aff5:	41 0f 9b c0          	setnp  %r8b
  40aff9:	45 0f 45 c1          	cmovne %r9d,%r8d
  40affd:	44 20 02             	and    %r8b,(%rdx)
  40b000:	4c 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%r8
  40b007:	ba 01 00 00 00       	mov    $0x1,%edx
  40b00c:	48 c1 e2 22          	shl    $0x22,%rdx
  40b010:	41 80 38 00          	cmpb   $0x0,(%r8)
  40b014:	75 3e                	jne    40b054 <_ZZ4mainENKUlmE_clEm+0x324>
  40b016:	4c 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8
  40b01d:	ba 01 00 00 00       	mov    $0x1,%edx
  40b022:	48 c1 e2 23          	shl    $0x23,%rdx
  40b026:	41 80 38 00          	cmpb   $0x0,(%r8)
  40b02a:	75 28                	jne    40b054 <_ZZ4mainENKUlmE_clEm+0x324>
  40b02c:	ba 51 25 02 00       	mov    $0x22551,%edx
  40b031:	48 c1 e2 0f          	shl    $0xf,%rdx
  40b035:	80 3e 00             	cmpb   $0x0,(%rsi)
  40b038:	75 1a                	jne    40b054 <_ZZ4mainENKUlmE_clEm+0x324>
  40b03a:	80 3f 00             	cmpb   $0x0,(%rdi)
  40b03d:	0f 84 2d 02 00 00    	je     40b270 <_ZZ4mainENKUlmE_clEm+0x540>
  40b043:	48 8b 93 90 00 00 00 	mov    0x90(%rbx),%rdx
  40b04a:	48 63 12             	movslq (%rdx),%rdx
  40b04d:	48 69 d2 00 b0 71 0b 	imul   $0xb71b000,%rdx,%rdx
  40b054:	48 0f af c2          	imul   %rdx,%rax
  40b058:	e9 ea fd ff ff       	jmpq   40ae47 <_ZZ4mainENKUlmE_clEm+0x117>
  40b05d:	48 8b 83 d0 00 00 00 	mov    0xd0(%rbx),%rax
  40b064:	c5 fa 7e 1d 94 57 00 	vmovq  0x5794(%rip),%xmm3        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40b06b:	00 
  40b06c:	c5 fb 10 00          	vmovsd (%rax),%xmm0
  40b070:	c5 f3 5c d0          	vsubsd %xmm0,%xmm1,%xmm2
  40b074:	c5 f9 54 c3          	vandpd %xmm3,%xmm0,%xmm0
  40b078:	c5 e9 54 d3          	vandpd %xmm3,%xmm2,%xmm2
  40b07c:	c5 fb 10 1d 84 56 00 	vmovsd 0x5684(%rip),%xmm3        # 410708 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x148>
  40b083:	00 
  40b084:	c5 fb 59 c3          	vmulsd %xmm3,%xmm0,%xmm0
  40b088:	c5 fb 5f c3          	vmaxsd %xmm3,%xmm0,%xmm0
  40b08c:	c5 f9 2f c2          	vcomisd %xmm2,%xmm0
  40b090:	0f 97 c0             	seta   %al
  40b093:	44 21 e0             	and    %r12d,%eax
  40b096:	88 02                	mov    %al,(%rdx)
  40b098:	e9 c7 fe ff ff       	jmpq   40af64 <_ZZ4mainENKUlmE_clEm+0x234>
  40b09d:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40b0a1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40b0a6:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40b0aa:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40b0af:	48 8d 47 28          	lea    0x28(%rdi),%rax
  40b0b3:	48 89 3c 24          	mov    %rdi,(%rsp)
  40b0b7:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40b0bc:	31 c9                	xor    %ecx,%ecx
  40b0be:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40b0c2:	31 d2                	xor    %edx,%edx
  40b0c4:	48 89 e6             	mov    %rsp,%rsi
  40b0c7:	bf 70 6c 40 00       	mov    $0x406c70,%edi
  40b0cc:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40b0d1:	e8 ea 82 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40b0d6:	48 8b 43 18          	mov    0x18(%rbx),%rax
  40b0da:	48 8b 00             	mov    (%rax),%rax
  40b0dd:	48 01 c0             	add    %rax,%rax
  40b0e0:	e9 62 fd ff ff       	jmpq   40ae47 <_ZZ4mainENKUlmE_clEm+0x117>
  40b0e5:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40b0e9:	48 89 3c 24          	mov    %rdi,(%rsp)
  40b0ed:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40b0f2:	48 83 c3 28          	add    $0x28,%rbx
  40b0f6:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40b0fa:	31 c9                	xor    %ecx,%ecx
  40b0fc:	31 d2                	xor    %edx,%edx
  40b0fe:	48 89 e6             	mov    %rsp,%rsi
  40b101:	bf 40 6e 40 00       	mov    $0x406e40,%edi
  40b106:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40b10b:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  40b110:	e8 ab 82 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40b115:	31 c0                	xor    %eax,%eax
  40b117:	e9 2b fd ff ff       	jmpq   40ae47 <_ZZ4mainENKUlmE_clEm+0x117>
  40b11c:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40b120:	48 89 3c 24          	mov    %rdi,(%rsp)
  40b124:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40b129:	48 83 c3 28          	add    $0x28,%rbx
  40b12d:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40b131:	31 c9                	xor    %ecx,%ecx
  40b133:	31 d2                	xor    %edx,%edx
  40b135:	48 89 e6             	mov    %rsp,%rsi
  40b138:	bf 30 a7 40 00       	mov    $0x40a730,%edi
  40b13d:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40b142:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  40b147:	e8 74 82 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40b14c:	31 c0                	xor    %eax,%eax
  40b14e:	e9 f4 fc ff ff       	jmpq   40ae47 <_ZZ4mainENKUlmE_clEm+0x117>
  40b153:	48 8d 47 58          	lea    0x58(%rdi),%rax
  40b157:	48 8d 7f 60          	lea    0x60(%rdi),%rdi
  40b15b:	48 8d 53 68          	lea    0x68(%rbx),%rdx
  40b15f:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  40b163:	c4 e1 f9 6e cf       	vmovq  %rdi,%xmm1
  40b168:	c4 e1 f9 6e f3       	vmovq  %rbx,%xmm6
  40b16d:	c4 e3 f1 22 ca 01    	vpinsrq $0x1,%rdx,%xmm1,%xmm1
  40b173:	c5 f9 29 44 24 30    	vmovapd %xmm0,0x30(%rsp)
  40b179:	c4 e3 c9 22 c0 01    	vpinsrq $0x1,%rax,%xmm6,%xmm0
  40b17f:	48 89 34 24          	mov    %rsi,(%rsp)
  40b183:	c4 e3 7d 38 c1 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm0
  40b189:	31 c9                	xor    %ecx,%ecx
  40b18b:	31 d2                	xor    %edx,%edx
  40b18d:	48 89 e6             	mov    %rsp,%rsi
  40b190:	bf 90 6f 40 00       	mov    $0x406f90,%edi
  40b195:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  40b19c:	00 00 
  40b19e:	c5 fe 7f 44 24 08    	vmovdqu %ymm0,0x8(%rsp)
  40b1a4:	c5 f8 77             	vzeroupper 
  40b1a7:	e8 14 82 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40b1ac:	c5 fb 10 44 24 30    	vmovsd 0x30(%rsp),%xmm0
  40b1b2:	c5 fa 7e 0d 46 56 00 	vmovq  0x5646(%rip),%xmm1        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40b1b9:	00 
  40b1ba:	c5 fb 10 1d 4e 55 00 	vmovsd 0x554e(%rip),%xmm3        # 410710 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  40b1c1:	00 
  40b1c2:	c5 f9 54 d1          	vandpd %xmm1,%xmm0,%xmm2
  40b1c6:	c5 f9 2e da          	vucomisd %xmm2,%xmm3
  40b1ca:	48 8b 43 70          	mov    0x70(%rbx),%rax
  40b1ce:	c5 fb 10 64 24 38    	vmovsd 0x38(%rsp),%xmm4
  40b1d4:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
  40b1d9:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
  40b1dd:	72 1c                	jb     40b1fb <_ZZ4mainENKUlmE_clEm+0x4cb>
  40b1df:	c5 d9 54 d1          	vandpd %xmm1,%xmm4,%xmm2
  40b1e3:	c5 eb 59 15 2d 55 00 	vmulsd 0x552d(%rip),%xmm2,%xmm2        # 410718 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  40b1ea:	00 
  40b1eb:	c5 fb 5c c4          	vsubsd %xmm4,%xmm0,%xmm0
  40b1ef:	c5 f9 54 c1          	vandpd %xmm1,%xmm0,%xmm0
  40b1f3:	c5 f9 2f d0          	vcomisd %xmm0,%xmm2
  40b1f7:	41 0f 93 c4          	setae  %r12b
  40b1fb:	48 8b 43 78          	mov    0x78(%rbx),%rax
  40b1ff:	44 20 20             	and    %r12b,(%rax)
  40b202:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
  40b209:	48 89 10             	mov    %rdx,(%rax)
  40b20c:	31 c0                	xor    %eax,%eax
  40b20e:	e9 34 fc ff ff       	jmpq   40ae47 <_ZZ4mainENKUlmE_clEm+0x117>
  40b213:	c5 f9 2f 0d 85 55 00 	vcomisd 0x5585(%rip),%xmm1        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  40b21a:	00 
  40b21b:	41 0f 97 c4          	seta   %r12b
  40b21f:	e9 16 fd ff ff       	jmpq   40af3a <_ZZ4mainENKUlmE_clEm+0x20a>
  40b224:	89 7c 24 18          	mov    %edi,0x18(%rsp)
  40b228:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40b22d:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40b232:	48 89 14 24          	mov    %rdx,(%rsp)
  40b236:	31 c9                	xor    %ecx,%ecx
  40b238:	31 d2                	xor    %edx,%edx
  40b23a:	48 89 e6             	mov    %rsp,%rsi
  40b23d:	bf d0 a7 40 00       	mov    $0x40a7d0,%edi
  40b242:	e8 79 81 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40b247:	e9 c2 fb ff ff       	jmpq   40ae0e <_ZZ4mainENKUlmE_clEm+0xde>
  40b24c:	89 7c 24 18          	mov    %edi,0x18(%rsp)
  40b250:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40b255:	31 c9                	xor    %ecx,%ecx
  40b257:	31 d2                	xor    %edx,%edx
  40b259:	48 89 e6             	mov    %rsp,%rsi
  40b25c:	bf b0 a9 40 00       	mov    $0x40a9b0,%edi
  40b261:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  40b266:	e8 55 81 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40b26b:	e9 9e fb ff ff       	jmpq   40ae0e <_ZZ4mainENKUlmE_clEm+0xde>
  40b270:	80 39 01             	cmpb   $0x1,(%rcx)
  40b273:	48 19 d2             	sbb    %rdx,%rdx
  40b276:	48 81 e2 00 f0 aa dd 	and    $0xffffffffddaaf000,%rdx
  40b27d:	48 81 c2 00 20 aa 44 	add    $0x44aa2000,%rdx
  40b284:	e9 cb fd ff ff       	jmpq   40b054 <_ZZ4mainENKUlmE_clEm+0x324>
  40b289:	90                   	nop
  40b28a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000040b290 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>:
  40b290:	41 56                	push   %r14
  40b292:	ba 02 00 00 00       	mov    $0x2,%edx
  40b297:	be 10 00 41 00       	mov    $0x410010,%esi
  40b29c:	55                   	push   %rbp
  40b29d:	48 89 fd             	mov    %rdi,%rbp
  40b2a0:	bf 80 32 41 00       	mov    $0x413280,%edi
  40b2a5:	53                   	push   %rbx
  40b2a6:	c4 c1 f9 7e c6       	vmovq  %xmm0,%r14
  40b2ab:	c4 e1 f9 7e cb       	vmovq  %xmm1,%rbx
  40b2b0:	e8 4b 80 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40b2b5:	48 89 ef             	mov    %rbp,%rdi
  40b2b8:	e8 93 7e ff ff       	callq  403150 <strlen@plt>
  40b2bd:	48 89 c2             	mov    %rax,%rdx
  40b2c0:	48 89 ee             	mov    %rbp,%rsi
  40b2c3:	bf 80 32 41 00       	mov    $0x413280,%edi
  40b2c8:	e8 33 80 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40b2cd:	bf 80 32 41 00       	mov    $0x413280,%edi
  40b2d2:	ba 02 00 00 00       	mov    $0x2,%edx
  40b2d7:	be 45 04 41 00       	mov    $0x410445,%esi
  40b2dc:	e8 1f 80 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40b2e1:	c4 e1 f9 6e d3       	vmovq  %rbx,%xmm2
  40b2e6:	c4 c1 f9 6e de       	vmovq  %r14,%xmm3
  40b2eb:	5b                   	pop    %rbx
  40b2ec:	c5 eb 5c c3          	vsubsd %xmm3,%xmm2,%xmm0
  40b2f0:	5d                   	pop    %rbp
  40b2f1:	bf 80 32 41 00       	mov    $0x413280,%edi
  40b2f6:	41 5e                	pop    %r14
  40b2f8:	e9 13 81 ff ff       	jmpq   403410 <_ZNSo9_M_insertIdEERSoT_@plt>
  40b2fd:	90                   	nop
  40b2fe:	66 90                	xchg   %ax,%ax

000000000040b300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>:
  40b300:	41 55                	push   %r13
  40b302:	41 54                	push   %r12
  40b304:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  40b308:	55                   	push   %rbp
  40b309:	53                   	push   %rbx
  40b30a:	48 83 ec 18          	sub    $0x18,%rsp
  40b30e:	4c 89 27             	mov    %r12,(%rdi)
  40b311:	48 85 f6             	test   %rsi,%rsi
  40b314:	0f 84 8c 00 00 00    	je     40b3a6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0xa6>
  40b31a:	48 89 fb             	mov    %rdi,%rbx
  40b31d:	48 89 f7             	mov    %rsi,%rdi
  40b320:	48 89 f5             	mov    %rsi,%rbp
  40b323:	e8 28 7e ff ff       	callq  403150 <strlen@plt>
  40b328:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40b32d:	49 89 c5             	mov    %rax,%r13
  40b330:	48 83 f8 0f          	cmp    $0xf,%rax
  40b334:	77 3a                	ja     40b370 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x70>
  40b336:	48 83 f8 01          	cmp    $0x1,%rax
  40b33a:	75 24                	jne    40b360 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x60>
  40b33c:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
  40b340:	88 53 10             	mov    %dl,0x10(%rbx)
  40b343:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40b347:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
  40b34c:	48 83 c4 18          	add    $0x18,%rsp
  40b350:	5b                   	pop    %rbx
  40b351:	5d                   	pop    %rbp
  40b352:	41 5c                	pop    %r12
  40b354:	41 5d                	pop    %r13
  40b356:	c3                   	retq   
  40b357:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40b35e:	00 00 
  40b360:	48 85 c0             	test   %rax,%rax
  40b363:	74 de                	je     40b343 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  40b365:	eb 27                	jmp    40b38e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x8e>
  40b367:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40b36e:	00 00 
  40b370:	31 d2                	xor    %edx,%edx
  40b372:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  40b377:	48 89 df             	mov    %rbx,%rdi
  40b37a:	e8 01 81 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40b37f:	48 89 03             	mov    %rax,(%rbx)
  40b382:	49 89 c4             	mov    %rax,%r12
  40b385:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40b38a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40b38e:	4c 89 e7             	mov    %r12,%rdi
  40b391:	4c 89 ea             	mov    %r13,%rdx
  40b394:	48 89 ee             	mov    %rbp,%rsi
  40b397:	e8 d4 7e ff ff       	callq  403270 <memcpy@plt>
  40b39c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40b3a1:	4c 8b 23             	mov    (%rbx),%r12
  40b3a4:	eb 9d                	jmp    40b343 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  40b3a6:	bf 50 04 41 00       	mov    $0x410450,%edi
  40b3ab:	e8 50 7e ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>

000000000040b3b0 <_Z8clock_nsv>:
  40b3b0:	48 83 ec 18          	sub    $0x18,%rsp
  40b3b4:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40b3b8:	48 89 e6             	mov    %rsp,%rsi
  40b3bb:	bf 01 00 00 00       	mov    $0x1,%edi
  40b3c0:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  40b3c5:	e8 d6 7e ff ff       	callq  4032a0 <clock_gettime@plt>
  40b3ca:	48 69 04 24 00 ca 9a 	imul   $0x3b9aca00,(%rsp),%rax
  40b3d1:	3b 
  40b3d2:	48 03 44 24 08       	add    0x8(%rsp),%rax
  40b3d7:	48 83 c4 18          	add    $0x18,%rsp
  40b3db:	c3                   	retq   
  40b3dc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b3e0 <_Z9perf_openjmm>:
  40b3e0:	48 83 ec 58          	sub    $0x58,%rsp
  40b3e4:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40b3e8:	89 3c 24             	mov    %edi,(%rsp)
  40b3eb:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  40b3f0:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40b3f6:	48 89 e6             	mov    %rsp,%rsi
  40b3f9:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
  40b3fe:	45 31 c9             	xor    %r9d,%r9d
  40b401:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40b407:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40b40c:	31 d2                	xor    %edx,%edx
  40b40e:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40b413:	31 c0                	xor    %eax,%eax
  40b415:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40b41c:	00 00 
  40b41e:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40b425:	00 
  40b426:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40b42d:	00 00 
  40b42f:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40b436:	00 00 
  40b438:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40b43e:	e8 0d 7c ff ff       	callq  403050 <syscall@plt>
  40b443:	48 83 c4 58          	add    $0x58,%rsp
  40b447:	c3                   	retq   
  40b448:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40b44f:	00 

000000000040b450 <_Z11alloc_bytesmb>:
  40b450:	41 54                	push   %r12
  40b452:	55                   	push   %rbp
  40b453:	48 83 ec 08          	sub    $0x8,%rsp
  40b457:	48 81 ff ff ff 1f 00 	cmp    $0x1fffff,%rdi
  40b45e:	76 48                	jbe    40b4a8 <_Z11alloc_bytesmb+0x58>
  40b460:	40 84 f6             	test   %sil,%sil
  40b463:	74 43                	je     40b4a8 <_Z11alloc_bytesmb+0x58>
  40b465:	48 8d af ff ff 1f 00 	lea    0x1fffff(%rdi),%rbp
  40b46c:	48 81 e5 00 00 e0 ff 	and    $0xffffffffffe00000,%rbp
  40b473:	48 89 ee             	mov    %rbp,%rsi
  40b476:	bf 00 00 20 00       	mov    $0x200000,%edi
  40b47b:	e8 b0 7d ff ff       	callq  403230 <aligned_alloc@plt>
  40b480:	49 89 c4             	mov    %rax,%r12
  40b483:	48 85 c0             	test   %rax,%rax
  40b486:	74 49                	je     40b4d1 <_Z11alloc_bytesmb+0x81>
  40b488:	48 89 ee             	mov    %rbp,%rsi
  40b48b:	4c 89 e7             	mov    %r12,%rdi
  40b48e:	ba 0e 00 00 00       	mov    $0xe,%edx
  40b493:	e8 98 7e ff ff       	callq  403330 <madvise@plt>
  40b498:	48 83 c4 08          	add    $0x8,%rsp
  40b49c:	5d                   	pop    %rbp
  40b49d:	4c 89 e0             	mov    %r12,%rax
  40b4a0:	41 5c                	pop    %r12
  40b4a2:	c3                   	retq   
  40b4a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40b4a8:	48 8d 77 3f          	lea    0x3f(%rdi),%rsi
  40b4ac:	48 83 e6 c0          	and    $0xffffffffffffffc0,%rsi
  40b4b0:	bf 40 00 00 00       	mov    $0x40,%edi
  40b4b5:	e8 76 7d ff ff       	callq  403230 <aligned_alloc@plt>
  40b4ba:	49 89 c4             	mov    %rax,%r12
  40b4bd:	48 85 c0             	test   %rax,%rax
  40b4c0:	0f 84 2a 80 ff ff    	je     4034f0 <_Z11alloc_bytesmb.cold>
  40b4c6:	48 83 c4 08          	add    $0x8,%rsp
  40b4ca:	5d                   	pop    %rbp
  40b4cb:	4c 89 e0             	mov    %r12,%rax
  40b4ce:	41 5c                	pop    %r12
  40b4d0:	c3                   	retq   
  40b4d1:	e9 1a 80 ff ff       	jmpq   4034f0 <_Z11alloc_bytesmb.cold>
  40b4d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40b4dd:	00 00 00 

000000000040b4e0 <main._omp_fn.2>:
  40b4e0:	55                   	push   %rbp
  40b4e1:	48 89 fd             	mov    %rdi,%rbp
  40b4e4:	53                   	push   %rbx
  40b4e5:	48 83 ec 08          	sub    $0x8,%rsp
  40b4e9:	e8 12 7f ff ff       	callq  403400 <omp_get_thread_num@plt>
  40b4ee:	48 63 d8             	movslq %eax,%rbx
  40b4f1:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40b4f5:	0f b6 75 18          	movzbl 0x18(%rbp),%esi
  40b4f9:	48 8b 38             	mov    (%rax),%rdi
  40b4fc:	e8 4f ff ff ff       	callq  40b450 <_Z11alloc_bytesmb>
  40b501:	48 89 c6             	mov    %rax,%rsi
  40b504:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40b508:	48 8b 38             	mov    (%rax),%rdi
  40b50b:	48 c1 ef 03          	shr    $0x3,%rdi
  40b50f:	74 7f                	je     40b590 <main._omp_fn.2+0xb0>
  40b511:	c5 fb 10 1d 77 51 00 	vmovsd 0x5177(%rip),%xmm3        # 410690 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd0>
  40b518:	00 
  40b519:	c5 fb 10 15 8f 52 00 	vmovsd 0x528f(%rip),%xmm2        # 4107b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  40b520:	00 
  40b521:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
  40b525:	31 c9                	xor    %ecx,%ecx
  40b527:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  40b52b:	49 b8 f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r8
  40b532:	f0 f0 f0 
  40b535:	0f 1f 00             	nopl   (%rax)
  40b538:	48 89 c8             	mov    %rcx,%rax
  40b53b:	49 f7 e0             	mul    %r8
  40b53e:	48 89 d0             	mov    %rdx,%rax
  40b541:	48 c1 e8 04          	shr    $0x4,%rax
  40b545:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  40b549:	48 01 c2             	add    %rax,%rdx
  40b54c:	48 89 c8             	mov    %rcx,%rax
  40b54f:	48 29 d0             	sub    %rdx,%rax
  40b552:	c4 e1 db 2a c0       	vcvtsi2sd %rax,%xmm4,%xmm0
  40b557:	c4 e2 e9 99 c3       	vfmadd132sd %xmm3,%xmm2,%xmm0
  40b55c:	c5 fb 11 04 ce       	vmovsd %xmm0,(%rsi,%rcx,8)
  40b561:	48 ff c1             	inc    %rcx
  40b564:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40b568:	48 39 cf             	cmp    %rcx,%rdi
  40b56b:	75 cb                	jne    40b538 <main._omp_fn.2+0x58>
  40b56d:	48 8b 45 00          	mov    0x0(%rbp),%rax
  40b571:	48 8b 00             	mov    (%rax),%rax
  40b574:	48 89 34 d8          	mov    %rsi,(%rax,%rbx,8)
  40b578:	48 8b 45 08          	mov    0x8(%rbp),%rax
  40b57c:	48 8b 00             	mov    (%rax),%rax
  40b57f:	c5 fb 11 0c d8       	vmovsd %xmm1,(%rax,%rbx,8)
  40b584:	48 83 c4 08          	add    $0x8,%rsp
  40b588:	5b                   	pop    %rbx
  40b589:	5d                   	pop    %rbp
  40b58a:	c3                   	retq   
  40b58b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40b590:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  40b594:	eb d7                	jmp    40b56d <main._omp_fn.2+0x8d>
  40b596:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40b59d:	00 00 00 

000000000040b5a0 <_Z6windowid>:
  40b5a0:	55                   	push   %rbp
  40b5a1:	48 89 e5             	mov    %rsp,%rbp
  40b5a4:	41 57                	push   %r15
  40b5a6:	41 56                	push   %r14
  40b5a8:	41 55                	push   %r13
  40b5aa:	41 54                	push   %r12
  40b5ac:	41 89 fc             	mov    %edi,%r12d
  40b5af:	bf 25 00 41 00       	mov    $0x410025,%edi
  40b5b4:	53                   	push   %rbx
  40b5b5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40b5b9:	48 81 ec a0 03 00 00 	sub    $0x3a0,%rsp
  40b5c0:	e8 7b 7d ff ff       	callq  403340 <getenv@plt>
  40b5c5:	48 85 c0             	test   %rax,%rax
  40b5c8:	0f 84 0f 1c 00 00    	je     40d1dd <_Z6windowid+0x1c3d>
  40b5ce:	48 89 c7             	mov    %rax,%rdi
  40b5d1:	49 89 c5             	mov    %rax,%r13
  40b5d4:	e8 77 7b ff ff       	callq  403150 <strlen@plt>
  40b5d9:	48 8d 8c 24 00 01 00 	lea    0x100(%rsp),%rcx
  40b5e0:	00 
  40b5e1:	48 89 8c 24 f0 00 00 	mov    %rcx,0xf0(%rsp)
  40b5e8:	00 
  40b5e9:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b5f0:	00 
  40b5f1:	49 89 c6             	mov    %rax,%r14
  40b5f4:	48 83 f8 0f          	cmp    $0xf,%rax
  40b5f8:	0f 87 92 01 00 00    	ja     40b790 <_Z6windowid+0x1f0>
  40b5fe:	48 83 f8 01          	cmp    $0x1,%rax
  40b602:	0f 85 6a 1d 00 00    	jne    40d372 <_Z6windowid+0x1dd2>
  40b608:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40b60d:	88 94 24 00 01 00 00 	mov    %dl,0x100(%rsp)
  40b614:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40b61b:	00 
  40b61c:	48 89 84 24 f8 00 00 	mov    %rax,0xf8(%rsp)
  40b623:	00 
  40b624:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40b628:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  40b62f:	00 
  40b630:	e8 7b 7a ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40b635:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40b63c:	00 
  40b63d:	e8 1e 7c ff ff       	callq  403260 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40b642:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40b649:	00 
  40b64a:	e8 81 7b ff ff       	callq  4031d0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@plt>
  40b64f:	bf 1e 05 41 00       	mov    $0x41051e,%edi
  40b654:	e8 e7 7c ff ff       	callq  403340 <getenv@plt>
  40b659:	49 89 c5             	mov    %rax,%r13
  40b65c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b663:	00 
  40b664:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b66b:	00 
  40b66c:	4d 85 ed             	test   %r13,%r13
  40b66f:	0f 84 61 20 00 00    	je     40d6d6 <_Z6windowid+0x2136>
  40b675:	4c 89 ef             	mov    %r13,%rdi
  40b678:	e8 d3 7a ff ff       	callq  403150 <strlen@plt>
  40b67d:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b684:	00 
  40b685:	49 89 c6             	mov    %rax,%r14
  40b688:	48 83 f8 0f          	cmp    $0xf,%rax
  40b68c:	0f 87 86 1c 00 00    	ja     40d318 <_Z6windowid+0x1d78>
  40b692:	48 83 f8 01          	cmp    $0x1,%rax
  40b696:	0f 85 59 1c 00 00    	jne    40d2f5 <_Z6windowid+0x1d55>
  40b69c:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  40b6a3:	00 
  40b6a4:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40b6a9:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  40b6ae:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  40b6b5:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40b6bc:	00 
  40b6bd:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40b6c4:	00 
  40b6c5:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40b6c9:	e8 72 79 ff ff       	callq  403040 <__errno_location@plt>
  40b6ce:	48 8b 9c 24 80 01 00 	mov    0x180(%rsp),%rbx
  40b6d5:	00 
  40b6d6:	44 8b 28             	mov    (%rax),%r13d
  40b6d9:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40b6df:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40b6e4:	ba 0a 00 00 00       	mov    $0xa,%edx
  40b6e9:	48 89 df             	mov    %rbx,%rdi
  40b6ec:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  40b6f1:	e8 7a 7c ff ff       	callq  403370 <strtol@plt>
  40b6f6:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  40b6fb:	48 3b 9c 24 50 01 00 	cmp    0x150(%rsp),%rbx
  40b702:	00 
  40b703:	0f 84 d7 1f 00 00    	je     40d6e0 <_Z6windowid+0x2140>
  40b709:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b70e:	8b 10                	mov    (%rax),%edx
  40b710:	83 fa 22             	cmp    $0x22,%edx
  40b713:	0f 84 d1 1f 00 00    	je     40d6ea <_Z6windowid+0x214a>
  40b719:	b8 00 00 00 80       	mov    $0x80000000,%eax
  40b71e:	48 03 44 24 48       	add    0x48(%rsp),%rax
  40b723:	48 c1 e8 20          	shr    $0x20,%rax
  40b727:	0f 85 bd 1f 00 00    	jne    40d6ea <_Z6windowid+0x214a>
  40b72d:	85 d2                	test   %edx,%edx
  40b72f:	75 08                	jne    40b739 <_Z6windowid+0x199>
  40b731:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b736:	44 89 28             	mov    %r13d,(%rax)
  40b739:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40b740:	00 
  40b741:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b748:	00 
  40b749:	48 39 c7             	cmp    %rax,%rdi
  40b74c:	74 11                	je     40b75f <_Z6windowid+0x1bf>
  40b74e:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40b755:	00 
  40b756:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b75a:	e8 71 7b ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40b75f:	bf 86 00 41 00       	mov    $0x410086,%edi
  40b764:	e8 d7 7b ff ff       	callq  403340 <getenv@plt>
  40b769:	49 89 c5             	mov    %rax,%r13
  40b76c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b773:	00 
  40b774:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b77b:	00 
  40b77c:	4d 85 ed             	test   %r13,%r13
  40b77f:	75 61                	jne    40b7e2 <_Z6windowid+0x242>
  40b781:	bf 50 04 41 00       	mov    $0x410450,%edi
  40b786:	e8 75 7a ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40b78b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40b790:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40b797:	00 
  40b798:	31 d2                	xor    %edx,%edx
  40b79a:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40b7a1:	00 
  40b7a2:	e8 d9 7c ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40b7a7:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
  40b7ae:	00 
  40b7af:	48 89 c7             	mov    %rax,%rdi
  40b7b2:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40b7b9:	00 
  40b7ba:	48 89 84 24 00 01 00 	mov    %rax,0x100(%rsp)
  40b7c1:	00 
  40b7c2:	4c 89 f2             	mov    %r14,%rdx
  40b7c5:	4c 89 ee             	mov    %r13,%rsi
  40b7c8:	e8 a3 7a ff ff       	callq  403270 <memcpy@plt>
  40b7cd:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40b7d4:	00 
  40b7d5:	48 8b 94 24 f0 00 00 	mov    0xf0(%rsp),%rdx
  40b7dc:	00 
  40b7dd:	e9 3a fe ff ff       	jmpq   40b61c <_Z6windowid+0x7c>
  40b7e2:	4c 89 ef             	mov    %r13,%rdi
  40b7e5:	e8 66 79 ff ff       	callq  403150 <strlen@plt>
  40b7ea:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b7f1:	00 
  40b7f2:	49 89 c6             	mov    %rax,%r14
  40b7f5:	48 83 f8 0f          	cmp    $0xf,%rax
  40b7f9:	0f 87 91 1a 00 00    	ja     40d290 <_Z6windowid+0x1cf0>
  40b7ff:	48 83 f8 01          	cmp    $0x1,%rax
  40b803:	0f 85 d6 1a 00 00    	jne    40d2df <_Z6windowid+0x1d3f>
  40b809:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40b80e:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  40b815:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40b81c:	00 
  40b81d:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40b824:	00 
  40b825:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40b829:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b82e:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40b833:	4c 8b ac 24 80 01 00 	mov    0x180(%rsp),%r13
  40b83a:	00 
  40b83b:	8b 18                	mov    (%rax),%ebx
  40b83d:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40b843:	ba 0a 00 00 00       	mov    $0xa,%edx
  40b848:	4c 89 ef             	mov    %r13,%rdi
  40b84b:	e8 20 7b ff ff       	callq  403370 <strtol@plt>
  40b850:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40b855:	4c 3b ac 24 50 01 00 	cmp    0x150(%rsp),%r13
  40b85c:	00 
  40b85d:	0f 84 7d 1f 00 00    	je     40d7e0 <_Z6windowid+0x2240>
  40b863:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b868:	8b 10                	mov    (%rax),%edx
  40b86a:	83 fa 22             	cmp    $0x22,%edx
  40b86d:	0f 84 30 1e 00 00    	je     40d6a3 <_Z6windowid+0x2103>
  40b873:	b8 00 00 00 80       	mov    $0x80000000,%eax
  40b878:	48 03 44 24 28       	add    0x28(%rsp),%rax
  40b87d:	48 c1 e8 20          	shr    $0x20,%rax
  40b881:	0f 85 1c 1e 00 00    	jne    40d6a3 <_Z6windowid+0x2103>
  40b887:	85 d2                	test   %edx,%edx
  40b889:	75 07                	jne    40b892 <_Z6windowid+0x2f2>
  40b88b:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b890:	89 18                	mov    %ebx,(%rax)
  40b892:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40b899:	00 
  40b89a:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b8a1:	00 
  40b8a2:	48 39 c7             	cmp    %rax,%rdi
  40b8a5:	74 11                	je     40b8b8 <_Z6windowid+0x318>
  40b8a7:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40b8ae:	00 
  40b8af:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b8b3:	e8 18 7a ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40b8b8:	44 89 e0             	mov    %r12d,%eax
  40b8bb:	c1 f8 1f             	sar    $0x1f,%eax
  40b8be:	45 89 e5             	mov    %r12d,%r13d
  40b8c1:	41 31 c4             	xor    %eax,%r12d
  40b8c4:	41 29 c4             	sub    %eax,%r12d
  40b8c7:	41 c1 ed 1f          	shr    $0x1f,%r13d
  40b8cb:	41 83 fc 09          	cmp    $0x9,%r12d
  40b8cf:	0f 86 88 1d 00 00    	jbe    40d65d <_Z6windowid+0x20bd>
  40b8d5:	41 83 fc 63          	cmp    $0x63,%r12d
  40b8d9:	0f 86 88 1d 00 00    	jbe    40d667 <_Z6windowid+0x20c7>
  40b8df:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  40b8e6:	0f 86 85 1d 00 00    	jbe    40d671 <_Z6windowid+0x20d1>
  40b8ec:	44 89 e2             	mov    %r12d,%edx
  40b8ef:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  40b8f6:	0f 86 7f 1d 00 00    	jbe    40d67b <_Z6windowid+0x20db>
  40b8fc:	bb 01 00 00 00       	mov    $0x1,%ebx
  40b901:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  40b908:	c5 6d 34 
  40b90b:	eb 24                	jmp    40b931 <_Z6windowid+0x391>
  40b90d:	0f 1f 00             	nopl   (%rax)
  40b910:	83 fa 63             	cmp    $0x63,%edx
  40b913:	0f 86 44 1c 00 00    	jbe    40d55d <_Z6windowid+0x1fbd>
  40b919:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40b91f:	0f 86 30 1c 00 00    	jbe    40d555 <_Z6windowid+0x1fb5>
  40b925:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40b92b:	0f 86 34 1c 00 00    	jbe    40d565 <_Z6windowid+0x1fc5>
  40b931:	48 89 d0             	mov    %rdx,%rax
  40b934:	48 89 d1             	mov    %rdx,%rcx
  40b937:	48 f7 e6             	mul    %rsi
  40b93a:	89 d8                	mov    %ebx,%eax
  40b93c:	83 c3 04             	add    $0x4,%ebx
  40b93f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40b943:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40b94a:	77 c4                	ja     40b910 <_Z6windowid+0x370>
  40b94c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b953:	00 
  40b954:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  40b959:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40b95e:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b965:	00 
  40b966:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b96d:	00 
  40b96e:	e8 9d 79 ff ff       	callq  403310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40b973:	45 0f b6 ed          	movzbl %r13b,%r13d
  40b977:	4c 03 ac 24 80 01 00 	add    0x180(%rsp),%r13
  40b97e:	00 
  40b97f:	ff cb                	dec    %ebx
  40b981:	41 83 fc 63          	cmp    $0x63,%r12d
  40b985:	76 52                	jbe    40b9d9 <_Z6windowid+0x439>
  40b987:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40b98e:	00 00 
  40b990:	44 89 e2             	mov    %r12d,%edx
  40b993:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40b99a:	44 89 e0             	mov    %r12d,%eax
  40b99d:	48 c1 ea 25          	shr    $0x25,%rdx
  40b9a1:	6b ca 64             	imul   $0x64,%edx,%ecx
  40b9a4:	29 c8                	sub    %ecx,%eax
  40b9a6:	01 c0                	add    %eax,%eax
  40b9a8:	8d 70 01             	lea    0x1(%rax),%esi
  40b9ab:	0f b6 b6 c0 05 41 00 	movzbl 0x4105c0(%rsi),%esi
  40b9b2:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40b9b9:	44 89 e1             	mov    %r12d,%ecx
  40b9bc:	41 89 d4             	mov    %edx,%r12d
  40b9bf:	89 da                	mov    %ebx,%edx
  40b9c1:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  40b9c6:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40b9c9:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  40b9ce:	83 eb 02             	sub    $0x2,%ebx
  40b9d1:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  40b9d7:	77 b7                	ja     40b990 <_Z6windowid+0x3f0>
  40b9d9:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40b9de:	41 83 fc 09          	cmp    $0x9,%r12d
  40b9e2:	76 1c                	jbe    40ba00 <_Z6windowid+0x460>
  40b9e4:	45 01 e4             	add    %r12d,%r12d
  40b9e7:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40b9ec:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40b9f3:	41 88 45 01          	mov    %al,0x1(%r13)
  40b9f7:	41 0f b6 84 24 c0 05 	movzbl 0x4105c0(%r12),%eax
  40b9fe:	41 00 
  40ba00:	41 88 45 00          	mov    %al,0x0(%r13)
  40ba04:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  40ba0a:	b9 3b 00 41 00       	mov    $0x41003b,%ecx
  40ba0f:	31 d2                	xor    %edx,%edx
  40ba11:	31 f6                	xor    %esi,%esi
  40ba13:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40ba1a:	00 
  40ba1b:	e8 c0 79 ff ff       	callq  4033e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40ba20:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
  40ba27:	00 
  40ba28:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  40ba2d:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40ba31:	48 8b 08             	mov    (%rax),%rcx
  40ba34:	48 39 d1             	cmp    %rdx,%rcx
  40ba37:	0f 84 a1 1a 00 00    	je     40d4de <_Z6windowid+0x1f3e>
  40ba3d:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  40ba42:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40ba46:	48 89 8c 24 80 00 00 	mov    %rcx,0x80(%rsp)
  40ba4d:	00 
  40ba4e:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40ba52:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40ba56:	48 89 4c 24 78       	mov    %rcx,0x78(%rsp)
  40ba5b:	48 89 10             	mov    %rdx,(%rax)
  40ba5e:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40ba65:	00 
  40ba66:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40ba6d:	00 
  40ba6e:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40ba75:	00 
  40ba76:	48 39 c7             	cmp    %rax,%rdi
  40ba79:	74 11                	je     40ba8c <_Z6windowid+0x4ec>
  40ba7b:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40ba82:	00 
  40ba83:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40ba87:	e8 44 78 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40ba8c:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
  40ba91:	41 89 c5             	mov    %eax,%r13d
  40ba94:	41 89 c4             	mov    %eax,%r12d
  40ba97:	41 f7 dc             	neg    %r12d
  40ba9a:	41 c1 ed 1f          	shr    $0x1f,%r13d
  40ba9e:	48 85 c0             	test   %rax,%rax
  40baa1:	44 0f 49 e0          	cmovns %eax,%r12d
  40baa5:	41 83 fc 09          	cmp    $0x9,%r12d
  40baa9:	0f 86 ea 1b 00 00    	jbe    40d699 <_Z6windowid+0x20f9>
  40baaf:	41 83 fc 63          	cmp    $0x63,%r12d
  40bab3:	0f 86 9a 1b 00 00    	jbe    40d653 <_Z6windowid+0x20b3>
  40bab9:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  40bac0:	0f 86 bf 1b 00 00    	jbe    40d685 <_Z6windowid+0x20e5>
  40bac6:	44 89 e2             	mov    %r12d,%edx
  40bac9:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  40bad0:	0f 86 b9 1b 00 00    	jbe    40d68f <_Z6windowid+0x20ef>
  40bad6:	bb 01 00 00 00       	mov    $0x1,%ebx
  40badb:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  40bae2:	c5 6d 34 
  40bae5:	eb 2a                	jmp    40bb11 <_Z6windowid+0x571>
  40bae7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40baee:	00 00 
  40baf0:	83 fa 63             	cmp    $0x63,%edx
  40baf3:	0f 86 54 1a 00 00    	jbe    40d54d <_Z6windowid+0x1fad>
  40baf9:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40baff:	0f 86 40 1a 00 00    	jbe    40d545 <_Z6windowid+0x1fa5>
  40bb05:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40bb0b:	0f 86 5c 1a 00 00    	jbe    40d56d <_Z6windowid+0x1fcd>
  40bb11:	48 89 d0             	mov    %rdx,%rax
  40bb14:	48 89 d1             	mov    %rdx,%rcx
  40bb17:	48 f7 e6             	mul    %rsi
  40bb1a:	89 d8                	mov    %ebx,%eax
  40bb1c:	83 c3 04             	add    $0x4,%ebx
  40bb1f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40bb23:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40bb2a:	77 c4                	ja     40baf0 <_Z6windowid+0x550>
  40bb2c:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40bb33:	00 
  40bb34:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  40bb39:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40bb3e:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40bb45:	00 
  40bb46:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  40bb4d:	00 
  40bb4e:	e8 bd 77 ff ff       	callq  403310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40bb53:	45 0f b6 ed          	movzbl %r13b,%r13d
  40bb57:	4c 03 ac 24 b0 00 00 	add    0xb0(%rsp),%r13
  40bb5e:	00 
  40bb5f:	ff cb                	dec    %ebx
  40bb61:	41 83 fc 63          	cmp    $0x63,%r12d
  40bb65:	76 52                	jbe    40bbb9 <_Z6windowid+0x619>
  40bb67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40bb6e:	00 00 
  40bb70:	44 89 e2             	mov    %r12d,%edx
  40bb73:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40bb7a:	44 89 e0             	mov    %r12d,%eax
  40bb7d:	48 c1 ea 25          	shr    $0x25,%rdx
  40bb81:	6b ca 64             	imul   $0x64,%edx,%ecx
  40bb84:	29 c8                	sub    %ecx,%eax
  40bb86:	01 c0                	add    %eax,%eax
  40bb88:	8d 70 01             	lea    0x1(%rax),%esi
  40bb8b:	0f b6 b6 c0 05 41 00 	movzbl 0x4105c0(%rsi),%esi
  40bb92:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40bb99:	44 89 e1             	mov    %r12d,%ecx
  40bb9c:	41 89 d4             	mov    %edx,%r12d
  40bb9f:	89 da                	mov    %ebx,%edx
  40bba1:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  40bba6:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40bba9:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  40bbae:	83 eb 02             	sub    $0x2,%ebx
  40bbb1:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  40bbb7:	77 b7                	ja     40bb70 <_Z6windowid+0x5d0>
  40bbb9:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40bbbe:	41 83 fc 09          	cmp    $0x9,%r12d
  40bbc2:	76 1c                	jbe    40bbe0 <_Z6windowid+0x640>
  40bbc4:	45 01 e4             	add    %r12d,%r12d
  40bbc7:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40bbcc:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40bbd3:	41 88 45 01          	mov    %al,0x1(%r13)
  40bbd7:	41 0f b6 84 24 c0 05 	movzbl 0x4105c0(%r12),%eax
  40bbde:	41 00 
  40bbe0:	41 88 45 00          	mov    %al,0x0(%r13)
  40bbe4:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40bbeb:	00 
  40bbec:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40bbf3:	00 
  40bbf4:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40bbf9:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40bbfe:	4c 89 e8             	mov    %r13,%rax
  40bc01:	4c 01 e0             	add    %r12,%rax
  40bc04:	74 09                	je     40bc0f <_Z6windowid+0x66f>
  40bc06:	4d 85 ed             	test   %r13,%r13
  40bc09:	0f 84 db 1b 00 00    	je     40d7ea <_Z6windowid+0x224a>
  40bc0f:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40bc16:	00 
  40bc17:	49 83 fc 0f          	cmp    $0xf,%r12
  40bc1b:	0f 87 31 18 00 00    	ja     40d452 <_Z6windowid+0x1eb2>
  40bc21:	49 83 fc 01          	cmp    $0x1,%r12
  40bc25:	0f 85 11 18 00 00    	jne    40d43c <_Z6windowid+0x1e9c>
  40bc2b:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40bc30:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  40bc37:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40bc3e:	00 
  40bc3f:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  40bc46:	00 
  40bc47:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40bc4c:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40bc53:	ff ff 3f 
  40bc56:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  40bc5d:	00 
  40bc5e:	48 83 f8 05          	cmp    $0x5,%rax
  40bc62:	0f 86 5a 1b 00 00    	jbe    40d7c2 <_Z6windowid+0x2222>
  40bc68:	ba 06 00 00 00       	mov    $0x6,%edx
  40bc6d:	be 3f 00 41 00       	mov    $0x41003f,%esi
  40bc72:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40bc79:	00 
  40bc7a:	e8 71 74 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40bc7f:	4c 8b 8c 24 90 00 00 	mov    0x90(%rsp),%r9
  40bc86:	00 
  40bc87:	b8 0f 00 00 00       	mov    $0xf,%eax
  40bc8c:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  40bc93:	00 
  40bc94:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  40bc9b:	00 
  40bc9c:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  40bca3:	00 
  40bca4:	49 39 d9             	cmp    %rbx,%r9
  40bca7:	48 89 c7             	mov    %rax,%rdi
  40bcaa:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  40bcb1:	00 00 
  40bcb3:	49 8d 0c 10          	lea    (%r8,%rdx,1),%rcx
  40bcb7:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  40bcbe:	00 
  40bcbf:	48 39 f9             	cmp    %rdi,%rcx
  40bcc2:	76 1d                	jbe    40bce1 <_Z6windowid+0x741>
  40bcc4:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  40bccb:	00 
  40bccc:	48 39 de             	cmp    %rbx,%rsi
  40bccf:	48 0f 45 84 24 c0 00 	cmovne 0xc0(%rsp),%rax
  40bcd6:	00 00 
  40bcd8:	48 39 c1             	cmp    %rax,%rcx
  40bcdb:	0f 86 4b 18 00 00    	jbe    40d52c <_Z6windowid+0x1f8c>
  40bce1:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40bce8:	00 
  40bce9:	e8 02 74 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40bcee:	4c 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%r15
  40bcf5:	00 
  40bcf6:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40bcfd:	00 
  40bcfe:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40bd02:	48 8b 08             	mov    (%rax),%rcx
  40bd05:	48 39 d1             	cmp    %rdx,%rcx
  40bd08:	0f 84 bd 17 00 00    	je     40d4cb <_Z6windowid+0x1f2b>
  40bd0e:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  40bd15:	00 
  40bd16:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40bd1a:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  40bd21:	00 
  40bd22:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40bd26:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  40bd2d:	00 
  40bd2e:	48 89 10             	mov    %rdx,(%rax)
  40bd31:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40bd35:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40bd3c:	00 
  40bd3d:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40bd44:	00 
  40bd45:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40bd4c:	00 
  40bd4d:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40bd54:	00 
  40bd55:	4c 39 f8             	cmp    %r15,%rax
  40bd58:	0f 84 56 17 00 00    	je     40d4b4 <_Z6windowid+0x1f14>
  40bd5e:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40bd65:	00 
  40bd66:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40bd6d:	00 
  40bd6e:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40bd75:	00 
  40bd76:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40bd7d:	00 
  40bd7e:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40bd85:	00 
  40bd86:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
  40bd8d:	00 
  40bd8e:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40bd95:	00 
  40bd96:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40bd9d:	00 00 00 00 00 
  40bda2:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40bda9:	00 
  40bdaa:	e8 01 73 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40bdaf:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40bdb6:	00 
  40bdb7:	e8 a4 74 ff ff       	callq  403260 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40bdbc:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40bdc3:	00 
  40bdc4:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bdcb:	00 
  40bdcc:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40bdd3:	00 
  40bdd4:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40bddb:	00 
  40bddc:	4c 89 e8             	mov    %r13,%rax
  40bddf:	4c 01 e0             	add    %r12,%rax
  40bde2:	74 09                	je     40bded <_Z6windowid+0x84d>
  40bde4:	4d 85 ed             	test   %r13,%r13
  40bde7:	0f 84 e9 19 00 00    	je     40d7d6 <_Z6windowid+0x2236>
  40bded:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40bdf4:	00 
  40bdf5:	49 83 fc 0f          	cmp    $0xf,%r12
  40bdf9:	0f 87 ee 15 00 00    	ja     40d3ed <_Z6windowid+0x1e4d>
  40bdff:	49 83 fc 01          	cmp    $0x1,%r12
  40be03:	0f 85 ce 15 00 00    	jne    40d3d7 <_Z6windowid+0x1e37>
  40be09:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40be0e:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40be15:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40be1c:	00 
  40be1d:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40be24:	00 
  40be25:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40be2a:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40be31:	00 
  40be32:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40be39:	00 
  40be3a:	e8 81 76 ff ff       	callq  4034c0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40be3f:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40be44:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  40be4b:	00 
  40be4c:	e8 2f 72 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40be51:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40be58:	00 
  40be59:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40be60:	00 
  40be61:	e8 6a 72 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40be66:	31 c9                	xor    %ecx,%ecx
  40be68:	66 89 8c 24 58 03 00 	mov    %cx,0x358(%rsp)
  40be6f:	00 
  40be70:	48 8b 05 b1 6d 00 00 	mov    0x6db1(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40be77:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40be7b:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  40be82:	00 00 
  40be84:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40be8b:	00 
  40be8c:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40be93:	00 
  40be94:	48 03 78 e8          	add    -0x18(%rax),%rdi
  40be98:	48 8b 05 91 6d 00 00 	mov    0x6d91(%rip),%rax        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40be9f:	31 f6                	xor    %esi,%esi
  40bea1:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  40bea8:	00 90 2b 41 00 
  40bead:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  40beb4:	00 00 00 00 00 
  40beb9:	48 89 07             	mov    %rax,(%rdi)
  40bebc:	c5 f8 77             	vzeroupper 
  40bebf:	e8 9c 74 ff ff       	callq  403360 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40bec4:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40becb:	00 
  40becc:	48 c7 84 24 80 01 00 	movq   $0x412d28,0x180(%rsp)
  40bed3:	00 28 2d 41 00 
  40bed8:	48 c7 84 24 78 02 00 	movq   $0x412d50,0x278(%rsp)
  40bedf:	00 50 2d 41 00 
  40bee4:	e8 07 74 ff ff       	callq  4032f0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40bee9:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  40bef0:	00 
  40bef1:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40bef8:	00 
  40bef9:	e8 62 74 ff ff       	callq  403360 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40befe:	ba 10 00 00 00       	mov    $0x10,%edx
  40bf03:	4c 89 e6             	mov    %r12,%rsi
  40bf06:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40bf0d:	00 
  40bf0e:	e8 7d 73 ff ff       	callq  403290 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40bf13:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40bf1a:	00 
  40bf1b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bf22:	00 
  40bf23:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40bf27:	48 85 c0             	test   %rax,%rax
  40bf2a:	0f 84 74 15 00 00    	je     40d4a4 <_Z6windowid+0x1f04>
  40bf30:	31 f6                	xor    %esi,%esi
  40bf32:	e8 09 75 ff ff       	callq  403440 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40bf37:	ba 28 2d 41 00       	mov    $0x412d28,%edx
  40bf3c:	b8 a0 2c 41 00       	mov    $0x412ca0,%eax
  40bf41:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
  40bf46:	c4 e3 e9 22 c8 01    	vpinsrq $0x1,%rax,%xmm2,%xmm1
  40bf4c:	be 31 00 00 00       	mov    $0x31,%esi
  40bf51:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bf58:	00 
  40bf59:	c5 f9 7f 4c 24 10    	vmovdqa %xmm1,0x10(%rsp)
  40bf5f:	e8 cc 70 ff ff       	callq  403030 <_ZNSo3putEc@plt>
  40bf64:	c5 f9 6f 74 24 10    	vmovdqa 0x10(%rsp),%xmm6
  40bf6a:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40bf71:	00 
  40bf72:	48 c7 84 24 78 02 00 	movq   $0x412d50,0x278(%rsp)
  40bf79:	00 50 2d 41 00 
  40bf7e:	c5 f9 7f b4 24 80 01 	vmovdqa %xmm6,0x180(%rsp)
  40bf85:	00 00 
  40bf87:	e8 e4 70 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40bf8c:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  40bf93:	00 
  40bf94:	e8 07 75 ff ff       	callq  4034a0 <_ZNSt12__basic_fileIcED1Ev@plt>
  40bf99:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  40bfa0:	00 
  40bfa1:	48 c7 84 24 88 01 00 	movq   $0x412bb0,0x188(%rsp)
  40bfa8:	00 b0 2b 41 00 
  40bfad:	e8 ce 73 ff ff       	callq  403380 <_ZNSt6localeD1Ev@plt>
  40bfb2:	48 8b 05 6f 6c 00 00 	mov    0x6c6f(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40bfb9:	48 8b 0d 70 6c 00 00 	mov    0x6c70(%rip),%rcx        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40bfc0:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40bfc7:	00 
  40bfc8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40bfcc:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40bfd3:	00 
  40bfd4:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  40bfdb:	00 
  40bfdc:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  40bfe3:	00 90 2b 41 00 
  40bfe8:	e8 13 71 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40bfed:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40bff4:	00 
  40bff5:	48 85 f6             	test   %rsi,%rsi
  40bff8:	74 0d                	je     40c007 <_Z6windowid+0xa67>
  40bffa:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40c001:	00 
  40c002:	e8 99 70 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c007:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40c00e:	00 
  40c00f:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c016:	00 
  40c017:	48 39 c7             	cmp    %rax,%rdi
  40c01a:	74 11                	je     40c02d <_Z6windowid+0xa8d>
  40c01c:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40c023:	00 
  40c024:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c028:	e8 a3 72 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c02d:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  40c034:	00 
  40c035:	48 85 f6             	test   %rsi,%rsi
  40c038:	74 0d                	je     40c047 <_Z6windowid+0xaa7>
  40c03a:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40c041:	00 
  40c042:	e8 59 70 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c047:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  40c04e:	00 
  40c04f:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40c056:	00 
  40c057:	48 39 c7             	cmp    %rax,%rdi
  40c05a:	74 11                	je     40c06d <_Z6windowid+0xacd>
  40c05c:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  40c063:	00 
  40c064:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c068:	e8 63 72 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c06d:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40c074:	00 
  40c075:	4c 39 ff             	cmp    %r15,%rdi
  40c078:	74 11                	je     40c08b <_Z6windowid+0xaeb>
  40c07a:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40c081:	00 
  40c082:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c086:	e8 45 72 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c08b:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  40c092:	00 
  40c093:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40c09a:	00 
  40c09b:	48 39 c7             	cmp    %rax,%rdi
  40c09e:	74 11                	je     40c0b1 <_Z6windowid+0xb11>
  40c0a0:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40c0a7:	00 
  40c0a8:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c0ac:	e8 1f 72 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c0b1:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40c0b8:	00 
  40c0b9:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40c0c0:	00 
  40c0c1:	48 39 c7             	cmp    %rax,%rdi
  40c0c4:	74 11                	je     40c0d7 <_Z6windowid+0xb37>
  40c0c6:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  40c0cd:	00 
  40c0ce:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c0d2:	e8 f9 71 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c0d7:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40c0dc:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c0e3:	00 
  40c0e4:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40c0e9:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c0f0:	00 
  40c0f1:	4c 89 e8             	mov    %r13,%rax
  40c0f4:	4c 01 e0             	add    %r12,%rax
  40c0f7:	74 09                	je     40c102 <_Z6windowid+0xb62>
  40c0f9:	4d 85 ed             	test   %r13,%r13
  40c0fc:	0f 84 f2 15 00 00    	je     40d6f4 <_Z6windowid+0x2154>
  40c102:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40c109:	00 
  40c10a:	49 83 fc 0f          	cmp    $0xf,%r12
  40c10e:	0f 87 74 12 00 00    	ja     40d388 <_Z6windowid+0x1de8>
  40c114:	49 83 fc 01          	cmp    $0x1,%r12
  40c118:	0f 85 5c 11 00 00    	jne    40d27a <_Z6windowid+0x1cda>
  40c11e:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40c123:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40c12a:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c131:	00 
  40c132:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40c139:	00 
  40c13a:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c13f:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40c146:	ff ff 3f 
  40c149:	48 2b 84 24 58 01 00 	sub    0x158(%rsp),%rax
  40c150:	00 
  40c151:	48 83 f8 05          	cmp    $0x5,%rax
  40c155:	0f 86 a3 15 00 00    	jbe    40d6fe <_Z6windowid+0x215e>
  40c15b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c160:	ba 06 00 00 00       	mov    $0x6,%edx
  40c165:	be 46 00 41 00       	mov    $0x410046,%esi
  40c16a:	e8 81 6f ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40c16f:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c176:	00 
  40c177:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c17e:	00 
  40c17f:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c186:	00 
  40c187:	48 8d 8c 24 60 01 00 	lea    0x160(%rsp),%rcx
  40c18e:	00 
  40c18f:	48 39 c8             	cmp    %rcx,%rax
  40c192:	0f 84 59 13 00 00    	je     40d4f1 <_Z6windowid+0x1f51>
  40c198:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c19f:	00 
  40c1a0:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40c1a7:	00 
  40c1a8:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40c1af:	00 
  40c1b0:	48 8b 84 24 58 01 00 	mov    0x158(%rsp),%rax
  40c1b7:	00 
  40c1b8:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c1bf:	00 
  40c1c0:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40c1c7:	00 
  40c1c8:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c1cf:	00 
  40c1d0:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c1d7:	00 
  40c1d8:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
  40c1df:	00 00 00 00 00 
  40c1e4:	c6 84 24 60 01 00 00 	movb   $0x0,0x160(%rsp)
  40c1eb:	00 
  40c1ec:	e8 bf 6e ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40c1f1:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c1f8:	00 
  40c1f9:	e8 62 70 ff ff       	callq  403260 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40c1fe:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40c205:	00 
  40c206:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40c20d:	00 
  40c20e:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40c215:	00 
  40c216:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40c21d:	00 
  40c21e:	4c 89 e8             	mov    %r13,%rax
  40c221:	4c 01 e0             	add    %r12,%rax
  40c224:	74 09                	je     40c22f <_Z6windowid+0xc8f>
  40c226:	4d 85 ed             	test   %r13,%r13
  40c229:	0f 84 d9 14 00 00    	je     40d708 <_Z6windowid+0x2168>
  40c22f:	4c 89 a4 24 d0 00 00 	mov    %r12,0xd0(%rsp)
  40c236:	00 
  40c237:	49 83 fc 0f          	cmp    $0xf,%r12
  40c23b:	0f 87 e7 0f 00 00    	ja     40d228 <_Z6windowid+0x1c88>
  40c241:	49 83 fc 01          	cmp    $0x1,%r12
  40c245:	0f 85 c7 0f 00 00    	jne    40d212 <_Z6windowid+0x1c72>
  40c24b:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40c250:	88 84 24 30 01 00 00 	mov    %al,0x130(%rsp)
  40c257:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40c25e:	00 
  40c25f:	4c 89 a4 24 28 01 00 	mov    %r12,0x128(%rsp)
  40c266:	00 
  40c267:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c26c:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40c273:	00 
  40c274:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40c27b:	00 
  40c27c:	e8 3f 72 ff ff       	callq  4034c0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40c281:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c288:	00 
  40c289:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40c290:	00 
  40c291:	e8 ea 6d ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40c296:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40c29d:	00 
  40c29e:	48 85 f6             	test   %rsi,%rsi
  40c2a1:	74 0d                	je     40c2b0 <_Z6windowid+0xd10>
  40c2a3:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c2aa:	00 
  40c2ab:	e8 f0 6d ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c2b0:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40c2b7:	00 
  40c2b8:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c2bf:	00 
  40c2c0:	48 39 c7             	cmp    %rax,%rdi
  40c2c3:	74 11                	je     40c2d6 <_Z6windowid+0xd36>
  40c2c5:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40c2cc:	00 
  40c2cd:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c2d1:	e8 fa 6f ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c2d6:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40c2dd:	00 
  40c2de:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c2e5:	00 
  40c2e6:	48 39 c7             	cmp    %rax,%rdi
  40c2e9:	74 11                	je     40c2fc <_Z6windowid+0xd5c>
  40c2eb:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40c2f2:	00 
  40c2f3:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c2f7:	e8 d4 6f ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c2fc:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40c300:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c307:	00 
  40c308:	bf 01 00 00 00       	mov    $0x1,%edi
  40c30d:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40c314:	00 00 
  40c316:	e8 85 6f ff ff       	callq  4032a0 <clock_gettime@plt>
  40c31b:	48 69 94 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rdx
  40c322:	00 00 ca 9a 3b 
  40c327:	48 b8 00 b0 8e f0 1b 	movabs $0x1bf08eb000,%rax
  40c32e:	00 00 00 
  40c331:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40c338:	00 
  40c339:	48 01 d0             	add    %rdx,%rax
  40c33c:	48 83 7c 24 48 00    	cmpq   $0x0,0x48(%rsp)
  40c342:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40c347:	0f 85 dd 08 00 00    	jne    40cc2a <_Z6windowid+0x168a>
  40c34d:	8b 44 24 28          	mov    0x28(%rsp),%eax
  40c351:	49 bd 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%r13
  40c358:	c5 6d 34 
  40c35b:	ff c8                	dec    %eax
  40c35d:	89 44 24 40          	mov    %eax,0x40(%rsp)
  40c361:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40c368:	48 83 7c 24 28 00    	cmpq   $0x0,0x28(%rsp)
  40c36e:	0f 8e b0 04 00 00    	jle    40c824 <_Z6windowid+0x1284>
  40c374:	8b 44 24 40          	mov    0x40(%rsp),%eax
  40c378:	c6 44 24 47 01       	movb   $0x1,0x47(%rsp)
  40c37d:	48 ff c0             	inc    %rax
  40c380:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40c385:	41 be 01 00 00 00    	mov    $0x1,%r14d
  40c38b:	bb 01 00 00 00       	mov    $0x1,%ebx
  40c390:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40c397:	00 
  40c398:	89 de                	mov    %ebx,%esi
  40c39a:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40c39f:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40c3a6:	00 
  40c3a7:	44 89 74 24 48       	mov    %r14d,0x48(%rsp)
  40c3ac:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  40c3b3:	00 
  40c3b4:	45 8d 66 ff          	lea    -0x1(%r14),%r12d
  40c3b8:	e8 53 6f ff ff       	callq  403310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40c3bd:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
  40c3c4:	00 
  40c3c5:	ff cb                	dec    %ebx
  40c3c7:	41 83 fc 63          	cmp    $0x63,%r12d
  40c3cb:	76 49                	jbe    40c416 <_Z6windowid+0xe76>
  40c3cd:	0f 1f 00             	nopl   (%rax)
  40c3d0:	44 89 e2             	mov    %r12d,%edx
  40c3d3:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40c3da:	44 89 e0             	mov    %r12d,%eax
  40c3dd:	48 c1 ea 25          	shr    $0x25,%rdx
  40c3e1:	6b f2 64             	imul   $0x64,%edx,%esi
  40c3e4:	29 f0                	sub    %esi,%eax
  40c3e6:	01 c0                	add    %eax,%eax
  40c3e8:	8d 78 01             	lea    0x1(%rax),%edi
  40c3eb:	0f b6 bf c0 05 41 00 	movzbl 0x4105c0(%rdi),%edi
  40c3f2:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40c3f9:	44 89 e6             	mov    %r12d,%esi
  40c3fc:	41 89 d4             	mov    %edx,%r12d
  40c3ff:	89 da                	mov    %ebx,%edx
  40c401:	40 88 3c 11          	mov    %dil,(%rcx,%rdx,1)
  40c405:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40c408:	88 04 11             	mov    %al,(%rcx,%rdx,1)
  40c40b:	83 eb 02             	sub    $0x2,%ebx
  40c40e:	81 fe 0f 27 00 00    	cmp    $0x270f,%esi
  40c414:	77 ba                	ja     40c3d0 <_Z6windowid+0xe30>
  40c416:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40c41b:	41 83 fc 09          	cmp    $0x9,%r12d
  40c41f:	76 1b                	jbe    40c43c <_Z6windowid+0xe9c>
  40c421:	45 01 e4             	add    %r12d,%r12d
  40c424:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40c429:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40c430:	88 41 01             	mov    %al,0x1(%rcx)
  40c433:	41 0f b6 84 24 c0 05 	movzbl 0x4105c0(%r12),%eax
  40c43a:	41 00 
  40c43c:	88 01                	mov    %al,(%rcx)
  40c43e:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40c445:	00 
  40c446:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40c44d:	00 
  40c44e:	48 8b 5c 24 70       	mov    0x70(%rsp),%rbx
  40c453:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40c458:	48 89 d8             	mov    %rbx,%rax
  40c45b:	4c 01 e0             	add    %r12,%rax
  40c45e:	74 09                	je     40c469 <_Z6windowid+0xec9>
  40c460:	48 85 db             	test   %rbx,%rbx
  40c463:	0f 84 af 12 00 00    	je     40d718 <_Z6windowid+0x2178>
  40c469:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40c470:	00 
  40c471:	49 83 fc 0f          	cmp    $0xf,%r12
  40c475:	0f 87 95 08 00 00    	ja     40cd10 <_Z6windowid+0x1770>
  40c47b:	49 83 fc 01          	cmp    $0x1,%r12
  40c47f:	0f 85 4b 08 00 00    	jne    40ccd0 <_Z6windowid+0x1730>
  40c485:	0f b6 03             	movzbl (%rbx),%eax
  40c488:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  40c48f:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40c496:	00 
  40c497:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  40c49e:	00 
  40c49f:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c4a4:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40c4ab:	ff ff 3f 
  40c4ae:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  40c4b5:	00 
  40c4b6:	48 83 f8 05          	cmp    $0x5,%rax
  40c4ba:	0f 86 62 12 00 00    	jbe    40d722 <_Z6windowid+0x2182>
  40c4c0:	ba 06 00 00 00       	mov    $0x6,%edx
  40c4c5:	be 3f 00 41 00       	mov    $0x41003f,%esi
  40c4ca:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40c4d1:	00 
  40c4d2:	e8 19 6c ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40c4d7:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
  40c4de:	00 
  40c4df:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  40c4e6:	00 
  40c4e7:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  40c4ee:	00 
  40c4ef:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  40c4f6:	00 
  40c4f7:	48 39 d9             	cmp    %rbx,%rcx
  40c4fa:	bf 0f 00 00 00       	mov    $0xf,%edi
  40c4ff:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  40c506:	00 00 
  40c508:	49 8d 04 10          	lea    (%r8,%rdx,1),%rax
  40c50c:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  40c513:	00 
  40c514:	48 39 f8             	cmp    %rdi,%rax
  40c517:	76 22                	jbe    40c53b <_Z6windowid+0xf9b>
  40c519:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  40c520:	00 
  40c521:	48 39 de             	cmp    %rbx,%rsi
  40c524:	bf 0f 00 00 00       	mov    $0xf,%edi
  40c529:	48 0f 45 bc 24 c0 00 	cmovne 0xc0(%rsp),%rdi
  40c530:	00 00 
  40c532:	48 39 f8             	cmp    %rdi,%rax
  40c535:	0f 86 cd 08 00 00    	jbe    40ce08 <_Z6windowid+0x1868>
  40c53b:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40c542:	00 
  40c543:	e8 a8 6b ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40c548:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c54f:	00 
  40c550:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40c554:	48 8b 08             	mov    (%rax),%rcx
  40c557:	48 39 d1             	cmp    %rdx,%rcx
  40c55a:	0f 84 70 08 00 00    	je     40cdd0 <_Z6windowid+0x1830>
  40c560:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  40c567:	00 
  40c568:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40c56c:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  40c573:	00 
  40c574:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40c578:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  40c57f:	00 
  40c580:	48 89 10             	mov    %rdx,(%rax)
  40c583:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40c587:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40c58e:	00 
  40c58f:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c596:	00 
  40c597:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c59e:	00 
  40c59f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40c5a6:	00 
  40c5a7:	4c 39 f8             	cmp    %r15,%rax
  40c5aa:	0f 84 08 08 00 00    	je     40cdb8 <_Z6windowid+0x1818>
  40c5b0:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c5b7:	00 
  40c5b8:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40c5bf:	00 
  40c5c0:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40c5c7:	00 
  40c5c8:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40c5cf:	00 
  40c5d0:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40c5d7:	00 
  40c5d8:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  40c5df:	00 
  40c5e0:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c5e7:	00 
  40c5e8:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40c5ef:	00 00 00 00 00 
  40c5f4:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40c5fb:	00 
  40c5fc:	e8 af 6a ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40c601:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c606:	e8 55 6c ff ff       	callq  403260 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40c60b:	48 8b 9c 24 f0 00 00 	mov    0xf0(%rsp),%rbx
  40c612:	00 
  40c613:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c61a:	00 
  40c61b:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40c622:	00 
  40c623:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c62a:	00 
  40c62b:	48 89 d8             	mov    %rbx,%rax
  40c62e:	4c 01 e0             	add    %r12,%rax
  40c631:	74 09                	je     40c63c <_Z6windowid+0x109c>
  40c633:	48 85 db             	test   %rbx,%rbx
  40c636:	0f 84 f0 10 00 00    	je     40d72c <_Z6windowid+0x218c>
  40c63c:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  40c641:	49 83 fc 0f          	cmp    $0xf,%r12
  40c645:	0f 87 1d 07 00 00    	ja     40cd68 <_Z6windowid+0x17c8>
  40c64b:	49 83 fc 01          	cmp    $0x1,%r12
  40c64f:	0f 85 9b 06 00 00    	jne    40ccf0 <_Z6windowid+0x1750>
  40c655:	0f b6 03             	movzbl (%rbx),%eax
  40c658:	88 84 24 90 01 00 00 	mov    %al,0x190(%rsp)
  40c65f:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c666:	00 
  40c667:	4c 89 a4 24 88 01 00 	mov    %r12,0x188(%rsp)
  40c66e:	00 
  40c66f:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c674:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40c67b:	00 
  40c67c:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c683:	00 
  40c684:	e8 37 6e ff ff       	callq  4034c0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40c689:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40c68e:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c695:	00 
  40c696:	e8 e5 69 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40c69b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c6a2:	00 
  40c6a3:	e8 78 6a ff ff       	callq  403120 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  40c6a8:	ff c0                	inc    %eax
  40c6aa:	3c 01                	cmp    $0x1,%al
  40c6ac:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40c6b3:	00 
  40c6b4:	0f 97 c0             	seta   %al
  40c6b7:	20 44 24 47          	and    %al,0x47(%rsp)
  40c6bb:	48 85 f6             	test   %rsi,%rsi
  40c6be:	74 0d                	je     40c6cd <_Z6windowid+0x112d>
  40c6c0:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c6c7:	00 
  40c6c8:	e8 d3 69 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c6cd:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40c6d4:	00 
  40c6d5:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c6dc:	00 
  40c6dd:	48 39 c7             	cmp    %rax,%rdi
  40c6e0:	74 11                	je     40c6f3 <_Z6windowid+0x1153>
  40c6e2:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40c6e9:	00 
  40c6ea:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c6ee:	e8 dd 6b ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c6f3:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40c6fa:	00 
  40c6fb:	48 85 f6             	test   %rsi,%rsi
  40c6fe:	74 0d                	je     40c70d <_Z6windowid+0x116d>
  40c700:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40c707:	00 
  40c708:	e8 93 69 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c70d:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40c714:	00 
  40c715:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c71c:	00 
  40c71d:	48 39 c7             	cmp    %rax,%rdi
  40c720:	74 11                	je     40c733 <_Z6windowid+0x1193>
  40c722:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40c729:	00 
  40c72a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c72e:	e8 9d 6b ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c733:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40c73a:	00 
  40c73b:	4c 39 ff             	cmp    %r15,%rdi
  40c73e:	74 11                	je     40c751 <_Z6windowid+0x11b1>
  40c740:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40c747:	00 
  40c748:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c74c:	e8 7f 6b ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c751:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  40c758:	00 
  40c759:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40c760:	00 
  40c761:	48 39 c7             	cmp    %rax,%rdi
  40c764:	74 11                	je     40c777 <_Z6windowid+0x11d7>
  40c766:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40c76d:	00 
  40c76e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c772:	e8 59 6b ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c777:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40c77e:	00 
  40c77f:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40c786:	00 
  40c787:	48 39 c7             	cmp    %rax,%rdi
  40c78a:	74 11                	je     40c79d <_Z6windowid+0x11fd>
  40c78c:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  40c793:	00 
  40c794:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c798:	e8 33 6b ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c79d:	4c 39 74 24 38       	cmp    %r14,0x38(%rsp)
  40c7a2:	0f 84 b0 06 00 00    	je     40ce58 <_Z6windowid+0x18b8>
  40c7a8:	49 83 fe 09          	cmp    $0x9,%r14
  40c7ac:	0f 86 84 0f 00 00    	jbe    40d736 <_Z6windowid+0x2196>
  40c7b2:	8b 44 24 48          	mov    0x48(%rsp),%eax
  40c7b6:	83 f8 63             	cmp    $0x63,%eax
  40c7b9:	0f 86 f7 09 00 00    	jbe    40d1b6 <_Z6windowid+0x1c16>
  40c7bf:	3d e7 03 00 00       	cmp    $0x3e7,%eax
  40c7c4:	0f 86 06 0a 00 00    	jbe    40d1d0 <_Z6windowid+0x1c30>
  40c7ca:	3d 0f 27 00 00       	cmp    $0x270f,%eax
  40c7cf:	0f 86 ee 09 00 00    	jbe    40d1c3 <_Z6windowid+0x1c23>
  40c7d5:	4c 89 f2             	mov    %r14,%rdx
  40c7d8:	bb 01 00 00 00       	mov    $0x1,%ebx
  40c7dd:	eb 22                	jmp    40c801 <_Z6windowid+0x1261>
  40c7df:	90                   	nop
  40c7e0:	83 fa 63             	cmp    $0x63,%edx
  40c7e3:	0f 86 ff 05 00 00    	jbe    40cde8 <_Z6windowid+0x1848>
  40c7e9:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40c7ef:	0f 86 03 06 00 00    	jbe    40cdf8 <_Z6windowid+0x1858>
  40c7f5:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40c7fb:	0f 86 47 06 00 00    	jbe    40ce48 <_Z6windowid+0x18a8>
  40c801:	48 89 d0             	mov    %rdx,%rax
  40c804:	48 89 d1             	mov    %rdx,%rcx
  40c807:	49 f7 e5             	mul    %r13
  40c80a:	89 d8                	mov    %ebx,%eax
  40c80c:	83 c3 04             	add    $0x4,%ebx
  40c80f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40c813:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40c81a:	77 c4                	ja     40c7e0 <_Z6windowid+0x1240>
  40c81c:	49 ff c6             	inc    %r14
  40c81f:	e9 6c fb ff ff       	jmpq   40c390 <_Z6windowid+0xdf0>
  40c824:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40c829:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40c82e:	4c 89 e8             	mov    %r13,%rax
  40c831:	4c 01 e0             	add    %r12,%rax
  40c834:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c83b:	00 
  40c83c:	74 09                	je     40c847 <_Z6windowid+0x12a7>
  40c83e:	4d 85 ed             	test   %r13,%r13
  40c841:	0f 84 85 0f 00 00    	je     40d7cc <_Z6windowid+0x222c>
  40c847:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40c84e:	00 
  40c84f:	49 83 fc 0f          	cmp    $0xf,%r12
  40c853:	0f 87 81 0d 00 00    	ja     40d5da <_Z6windowid+0x203a>
  40c859:	49 83 fc 01          	cmp    $0x1,%r12
  40c85d:	0f 84 b5 0c 00 00    	je     40d518 <_Z6windowid+0x1f78>
  40c863:	4d 85 e4             	test   %r12,%r12
  40c866:	0f 85 55 0e 00 00    	jne    40d6c1 <_Z6windowid+0x2121>
  40c86c:	4c 89 f8             	mov    %r15,%rax
  40c86f:	4c 89 a4 24 d8 00 00 	mov    %r12,0xd8(%rsp)
  40c876:	00 
  40c877:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c87c:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40c883:	ff ff 3f 
  40c886:	48 2b 84 24 d8 00 00 	sub    0xd8(%rsp),%rax
  40c88d:	00 
  40c88e:	48 83 f8 03          	cmp    $0x3,%rax
  40c892:	0f 86 1f 0e 00 00    	jbe    40d6b7 <_Z6windowid+0x2117>
  40c898:	ba 04 00 00 00       	mov    $0x4,%edx
  40c89d:	be 6b 00 41 00       	mov    $0x41006b,%esi
  40c8a2:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  40c8a9:	00 
  40c8aa:	e8 41 68 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40c8af:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c8b6:	00 
  40c8b7:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c8be:	00 
  40c8bf:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40c8c6:	00 
  40c8c7:	4c 39 f8             	cmp    %r15,%rax
  40c8ca:	0f 84 6c 0d 00 00    	je     40d63c <_Z6windowid+0x209c>
  40c8d0:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c8d7:	00 
  40c8d8:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40c8df:	00 
  40c8e0:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40c8e7:	00 
  40c8e8:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40c8ef:	00 
  40c8f0:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c8f7:	00 
  40c8f8:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40c8ff:	00 
  40c900:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c907:	00 
  40c908:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40c90f:	00 00 00 00 00 
  40c914:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40c91b:	00 
  40c91c:	e8 8f 67 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40c921:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c928:	00 
  40c929:	e8 32 69 ff ff       	callq  403260 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40c92e:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40c935:	00 
  40c936:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c93d:	00 
  40c93e:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40c945:	00 
  40c946:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c94d:	00 
  40c94e:	4c 89 e8             	mov    %r13,%rax
  40c951:	4c 01 e0             	add    %r12,%rax
  40c954:	74 09                	je     40c95f <_Z6windowid+0x13bf>
  40c956:	4d 85 ed             	test   %r13,%r13
  40c959:	0f 84 4e 0d 00 00    	je     40d6ad <_Z6windowid+0x210d>
  40c95f:	4c 89 a4 24 b0 00 00 	mov    %r12,0xb0(%rsp)
  40c966:	00 
  40c967:	49 83 fc 0f          	cmp    $0xf,%r12
  40c96b:	0f 87 1a 0c 00 00    	ja     40d58b <_Z6windowid+0x1feb>
  40c971:	49 83 fc 01          	cmp    $0x1,%r12
  40c975:	0f 85 fa 0b 00 00    	jne    40d575 <_Z6windowid+0x1fd5>
  40c97b:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40c980:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40c987:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c98e:	00 
  40c98f:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40c996:	00 
  40c997:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c99c:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40c9a3:	00 
  40c9a4:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40c9ab:	00 
  40c9ac:	e8 0f 6b ff ff       	callq  4034c0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40c9b1:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c9b6:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c9bd:	00 
  40c9be:	e8 bd 66 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40c9c3:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40c9ca:	00 
  40c9cb:	48 85 f6             	test   %rsi,%rsi
  40c9ce:	74 0d                	je     40c9dd <_Z6windowid+0x143d>
  40c9d0:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c9d7:	00 
  40c9d8:	e8 c3 66 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c9dd:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40c9e4:	00 
  40c9e5:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c9ec:	00 
  40c9ed:	48 39 c7             	cmp    %rax,%rdi
  40c9f0:	74 11                	je     40ca03 <_Z6windowid+0x1463>
  40c9f2:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40c9f9:	00 
  40c9fa:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c9fe:	e8 cd 68 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40ca03:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40ca0a:	00 
  40ca0b:	4c 39 ff             	cmp    %r15,%rdi
  40ca0e:	74 11                	je     40ca21 <_Z6windowid+0x1481>
  40ca10:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40ca17:	00 
  40ca18:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40ca1c:	e8 af 68 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40ca21:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40ca28:	00 
  40ca29:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40ca30:	00 
  40ca31:	e8 9a 66 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40ca36:	31 d2                	xor    %edx,%edx
  40ca38:	66 89 94 24 58 03 00 	mov    %dx,0x358(%rsp)
  40ca3f:	00 
  40ca40:	48 8b 05 e1 61 00 00 	mov    0x61e1(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40ca47:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40ca4b:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  40ca52:	00 00 
  40ca54:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40ca5b:	00 
  40ca5c:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40ca63:	00 
  40ca64:	48 03 78 e8          	add    -0x18(%rax),%rdi
  40ca68:	48 8b 05 c1 61 00 00 	mov    0x61c1(%rip),%rax        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40ca6f:	31 f6                	xor    %esi,%esi
  40ca71:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  40ca78:	00 90 2b 41 00 
  40ca7d:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  40ca84:	00 00 00 00 00 
  40ca89:	48 89 07             	mov    %rax,(%rdi)
  40ca8c:	c5 f8 77             	vzeroupper 
  40ca8f:	e8 cc 68 ff ff       	callq  403360 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40ca94:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40ca9b:	00 
  40ca9c:	48 c7 84 24 80 01 00 	movq   $0x412d28,0x180(%rsp)
  40caa3:	00 28 2d 41 00 
  40caa8:	48 c7 84 24 78 02 00 	movq   $0x412d50,0x278(%rsp)
  40caaf:	00 50 2d 41 00 
  40cab4:	e8 37 68 ff ff       	callq  4032f0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40cab9:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  40cac0:	00 
  40cac1:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40cac8:	00 
  40cac9:	e8 92 68 ff ff       	callq  403360 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40cace:	ba 10 00 00 00       	mov    $0x10,%edx
  40cad3:	4c 89 e6             	mov    %r12,%rsi
  40cad6:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40cadd:	00 
  40cade:	e8 ad 67 ff ff       	callq  403290 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40cae3:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40caea:	00 
  40caeb:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40caf2:	00 
  40caf3:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40caf7:	48 85 c0             	test   %rax,%rax
  40cafa:	0f 84 2c 0b 00 00    	je     40d62c <_Z6windowid+0x208c>
  40cb00:	31 f6                	xor    %esi,%esi
  40cb02:	e8 39 69 ff ff       	callq  403440 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40cb07:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40cb0b:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  40cb12:	00 
  40cb13:	bf 01 00 00 00       	mov    $0x1,%edi
  40cb18:	c5 f9 7f 84 24 d0 00 	vmovdqa %xmm0,0xd0(%rsp)
  40cb1f:	00 00 
  40cb21:	e8 7a 67 ff ff       	callq  4032a0 <clock_gettime@plt>
  40cb26:	48 69 94 24 d0 00 00 	imul   $0x3b9aca00,0xd0(%rsp),%rdx
  40cb2d:	00 00 ca 9a 3b 
  40cb32:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40cb39:	00 
  40cb3a:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40cb41:	00 
  40cb42:	48 8d b4 02 80 b2 e6 	lea    0xee6b280(%rdx,%rax,1),%rsi
  40cb49:	0e 
  40cb4a:	e8 91 66 ff ff       	callq  4031e0 <_ZNSo9_M_insertIyEERSoT_@plt>
  40cb4f:	c5 f9 6f 7c 24 10    	vmovdqa 0x10(%rsp),%xmm7
  40cb55:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40cb5c:	00 
  40cb5d:	48 c7 84 24 78 02 00 	movq   $0x412d50,0x278(%rsp)
  40cb64:	00 50 2d 41 00 
  40cb69:	c5 f9 7f bc 24 80 01 	vmovdqa %xmm7,0x180(%rsp)
  40cb70:	00 00 
  40cb72:	e8 f9 64 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40cb77:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  40cb7e:	00 
  40cb7f:	e8 1c 69 ff ff       	callq  4034a0 <_ZNSt12__basic_fileIcED1Ev@plt>
  40cb84:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  40cb8b:	00 
  40cb8c:	48 c7 84 24 88 01 00 	movq   $0x412bb0,0x188(%rsp)
  40cb93:	00 b0 2b 41 00 
  40cb98:	e8 e3 67 ff ff       	callq  403380 <_ZNSt6localeD1Ev@plt>
  40cb9d:	48 8b 05 84 60 00 00 	mov    0x6084(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40cba4:	48 8b 0d 85 60 00 00 	mov    0x6085(%rip),%rcx        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40cbab:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40cbb2:	00 
  40cbb3:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40cbb7:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40cbbe:	00 
  40cbbf:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  40cbc6:	00 
  40cbc7:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  40cbce:	00 90 2b 41 00 
  40cbd3:	e8 28 65 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40cbd8:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40cbdd:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  40cbe4:	00 
  40cbe5:	e8 d6 65 ff ff       	callq  4031c0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@plt>
  40cbea:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40cbf1:	00 
  40cbf2:	48 85 f6             	test   %rsi,%rsi
  40cbf5:	74 0d                	je     40cc04 <_Z6windowid+0x1664>
  40cbf7:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40cbfe:	00 
  40cbff:	e8 9c 64 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40cc04:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40cc0b:	00 
  40cc0c:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40cc13:	00 
  40cc14:	48 39 c7             	cmp    %rax,%rdi
  40cc17:	74 11                	je     40cc2a <_Z6windowid+0x168a>
  40cc19:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40cc20:	00 
  40cc21:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40cc25:	e8 a6 66 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40cc2a:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40cc31:	00 
  40cc32:	e8 e9 64 ff ff       	callq  403120 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  40cc37:	ff c0                	inc    %eax
  40cc39:	3c 01                	cmp    $0x1,%al
  40cc3b:	0f 87 a7 02 00 00    	ja     40cee8 <_Z6windowid+0x1948>
  40cc41:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40cc45:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cc4c:	00 
  40cc4d:	bf 01 00 00 00       	mov    $0x1,%edi
  40cc52:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40cc59:	00 00 
  40cc5b:	e8 40 66 ff ff       	callq  4032a0 <clock_gettime@plt>
  40cc60:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40cc67:	00 00 ca 9a 3b 
  40cc6c:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40cc73:	00 
  40cc74:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  40cc79:	0f 82 11 70 ff ff    	jb     403c90 <_Z6windowid.cold+0x75e>
  40cc7f:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40cc86:	00 00 00 00 00 
  40cc8b:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  40cc92:	00 80 84 1e 00 
  40cc97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40cc9e:	00 00 
  40cca0:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cca7:	00 
  40cca8:	48 89 f7             	mov    %rsi,%rdi
  40ccab:	e8 30 64 ff ff       	callq  4030e0 <nanosleep@plt>
  40ccb0:	83 f8 ff             	cmp    $0xffffffff,%eax
  40ccb3:	0f 85 71 ff ff ff    	jne    40cc2a <_Z6windowid+0x168a>
  40ccb9:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40ccbe:	83 38 04             	cmpl   $0x4,(%rax)
  40ccc1:	74 dd                	je     40cca0 <_Z6windowid+0x1700>
  40ccc3:	e9 62 ff ff ff       	jmpq   40cc2a <_Z6windowid+0x168a>
  40ccc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40cccf:	00 
  40ccd0:	4d 85 e4             	test   %r12,%r12
  40ccd3:	0f 85 67 0a 00 00    	jne    40d740 <_Z6windowid+0x21a0>
  40ccd9:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40cce0:	00 
  40cce1:	e9 b1 f7 ff ff       	jmpq   40c497 <_Z6windowid+0xef7>
  40cce6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40cced:	00 00 00 
  40ccf0:	4d 85 e4             	test   %r12,%r12
  40ccf3:	0f 85 54 0a 00 00    	jne    40d74d <_Z6windowid+0x21ad>
  40ccf9:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40cd00:	00 
  40cd01:	e9 61 f9 ff ff       	jmpq   40c667 <_Z6windowid+0x10c7>
  40cd06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40cd0d:	00 00 00 
  40cd10:	31 d2                	xor    %edx,%edx
  40cd12:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cd19:	00 
  40cd1a:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40cd21:	00 
  40cd22:	e8 59 67 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40cd27:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40cd2e:	00 
  40cd2f:	48 89 c7             	mov    %rax,%rdi
  40cd32:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40cd39:	00 
  40cd3a:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  40cd41:	00 
  40cd42:	4c 89 e2             	mov    %r12,%rdx
  40cd45:	48 89 de             	mov    %rbx,%rsi
  40cd48:	e8 23 65 ff ff       	callq  403270 <memcpy@plt>
  40cd4d:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40cd54:	00 
  40cd55:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  40cd5c:	00 
  40cd5d:	e9 35 f7 ff ff       	jmpq   40c497 <_Z6windowid+0xef7>
  40cd62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40cd68:	31 d2                	xor    %edx,%edx
  40cd6a:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
  40cd6f:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40cd76:	00 
  40cd77:	e8 04 67 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40cd7c:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40cd83:	00 
  40cd84:	48 89 c7             	mov    %rax,%rdi
  40cd87:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  40cd8c:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40cd93:	00 
  40cd94:	4c 89 e2             	mov    %r12,%rdx
  40cd97:	48 89 de             	mov    %rbx,%rsi
  40cd9a:	e8 d1 64 ff ff       	callq  403270 <memcpy@plt>
  40cd9f:	4c 8b 64 24 68       	mov    0x68(%rsp),%r12
  40cda4:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40cdab:	00 
  40cdac:	e9 b6 f8 ff ff       	jmpq   40c667 <_Z6windowid+0x10c7>
  40cdb1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40cdb8:	c5 f9 6f 9c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm3
  40cdbf:	00 00 
  40cdc1:	c5 f9 7f 9c 24 60 01 	vmovdqa %xmm3,0x160(%rsp)
  40cdc8:	00 00 
  40cdca:	e9 f9 f7 ff ff       	jmpq   40c5c8 <_Z6windowid+0x1028>
  40cdcf:	90                   	nop
  40cdd0:	c5 fa 6f 60 10       	vmovdqu 0x10(%rax),%xmm4
  40cdd5:	c5 f9 7f a4 24 e0 00 	vmovdqa %xmm4,0xe0(%rsp)
  40cddc:	00 00 
  40cdde:	e9 91 f7 ff ff       	jmpq   40c574 <_Z6windowid+0xfd4>
  40cde3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40cde8:	8d 58 05             	lea    0x5(%rax),%ebx
  40cdeb:	49 ff c6             	inc    %r14
  40cdee:	e9 9d f5 ff ff       	jmpq   40c390 <_Z6windowid+0xdf0>
  40cdf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40cdf8:	8d 58 06             	lea    0x6(%rax),%ebx
  40cdfb:	49 ff c6             	inc    %r14
  40cdfe:	e9 8d f5 ff ff       	jmpq   40c390 <_Z6windowid+0xdf0>
  40ce03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40ce08:	31 d2                	xor    %edx,%edx
  40ce0a:	31 f6                	xor    %esi,%esi
  40ce0c:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40ce13:	00 
  40ce14:	e8 c7 65 ff ff       	callq  4033e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40ce19:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40ce20:	00 
  40ce21:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40ce25:	48 8b 08             	mov    (%rax),%rcx
  40ce28:	48 39 d1             	cmp    %rdx,%rcx
  40ce2b:	0f 85 2f f7 ff ff    	jne    40c560 <_Z6windowid+0xfc0>
  40ce31:	c5 fa 6f 68 10       	vmovdqu 0x10(%rax),%xmm5
  40ce36:	c5 f9 7f ac 24 e0 00 	vmovdqa %xmm5,0xe0(%rsp)
  40ce3d:	00 00 
  40ce3f:	e9 30 f7 ff ff       	jmpq   40c574 <_Z6windowid+0xfd4>
  40ce44:	0f 1f 40 00          	nopl   0x0(%rax)
  40ce48:	8d 58 07             	lea    0x7(%rax),%ebx
  40ce4b:	49 ff c6             	inc    %r14
  40ce4e:	e9 3d f5 ff ff       	jmpq   40c390 <_Z6windowid+0xdf0>
  40ce53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40ce58:	80 7c 24 47 00       	cmpb   $0x0,0x47(%rsp)
  40ce5d:	0f 85 c1 f9 ff ff    	jne    40c824 <_Z6windowid+0x1284>
  40ce63:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40ce67:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40ce6e:	00 
  40ce6f:	bf 01 00 00 00       	mov    $0x1,%edi
  40ce74:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40ce7b:	00 00 
  40ce7d:	e8 1e 64 ff ff       	callq  4032a0 <clock_gettime@plt>
  40ce82:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40ce89:	00 00 ca 9a 3b 
  40ce8e:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40ce95:	00 
  40ce96:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  40ce9b:	0f 82 9d 6c ff ff    	jb     403b3e <_Z6windowid.cold+0x60c>
  40cea1:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40cea8:	00 00 00 00 00 
  40cead:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  40ceb4:	00 80 84 1e 00 
  40ceb9:	eb 13                	jmp    40cece <_Z6windowid+0x192e>
  40cebb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40cec0:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40cec5:	83 38 04             	cmpl   $0x4,(%rax)
  40cec8:	0f 85 9a f4 ff ff    	jne    40c368 <_Z6windowid+0xdc8>
  40cece:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40ced5:	00 
  40ced6:	48 89 f7             	mov    %rsi,%rdi
  40ced9:	e8 02 62 ff ff       	callq  4030e0 <nanosleep@plt>
  40cede:	83 f8 ff             	cmp    $0xffffffff,%eax
  40cee1:	74 dd                	je     40cec0 <_Z6windowid+0x1920>
  40cee3:	e9 80 f4 ff ff       	jmpq   40c368 <_Z6windowid+0xdc8>
  40cee8:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40ceef:	00 
  40cef0:	4c 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13
  40cef7:	00 
  40cef8:	e8 d3 61 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40cefd:	31 c0                	xor    %eax,%eax
  40ceff:	66 89 84 24 60 03 00 	mov    %ax,0x360(%rsp)
  40cf06:	00 
  40cf07:	48 8b 1d 6a 5e 00 00 	mov    0x5e6a(%rip),%rbx        # 412d78 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40cf0e:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40cf12:	c5 fe 7f 84 24 68 03 	vmovdqu %ymm0,0x368(%rsp)
  40cf19:	00 00 
  40cf1b:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  40cf1f:	4c 8b 25 5a 5e 00 00 	mov    0x5e5a(%rip),%r12        # 412d80 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40cf26:	48 c7 84 24 80 02 00 	movq   $0x412b90,0x280(%rsp)
  40cf2d:	00 90 2b 41 00 
  40cf32:	48 c7 84 24 58 03 00 	movq   $0x0,0x358(%rsp)
  40cf39:	00 00 00 00 00 
  40cf3e:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  40cf45:	00 
  40cf46:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  40cf4d:	00 
  40cf4e:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  40cf55:	00 00 00 00 00 
  40cf5a:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40cf61:	00 
  40cf62:	31 f6                	xor    %esi,%esi
  40cf64:	48 03 7b e8          	add    -0x18(%rbx),%rdi
  40cf68:	c5 f8 77             	vzeroupper 
  40cf6b:	e8 f0 63 ff ff       	callq  403360 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40cf70:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40cf77:	00 
  40cf78:	48 c7 84 24 80 01 00 	movq   $0x412c58,0x180(%rsp)
  40cf7f:	00 58 2c 41 00 
  40cf84:	48 c7 84 24 80 02 00 	movq   $0x412c80,0x280(%rsp)
  40cf8b:	00 80 2c 41 00 
  40cf90:	e8 5b 63 ff ff       	callq  4032f0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40cf95:	48 8d b4 24 90 01 00 	lea    0x190(%rsp),%rsi
  40cf9c:	00 
  40cf9d:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40cfa4:	00 
  40cfa5:	e8 b6 63 ff ff       	callq  403360 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40cfaa:	ba 08 00 00 00       	mov    $0x8,%edx
  40cfaf:	4c 89 ee             	mov    %r13,%rsi
  40cfb2:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40cfb9:	00 
  40cfba:	e8 d1 62 ff ff       	callq  403290 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40cfbf:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40cfc6:	00 
  40cfc7:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40cfce:	00 
  40cfcf:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40cfd3:	48 85 c0             	test   %rax,%rax
  40cfd6:	0f 84 2c 05 00 00    	je     40d508 <_Z6windowid+0x1f68>
  40cfdc:	31 f6                	xor    %esi,%esi
  40cfde:	e8 5d 64 ff ff       	callq  403440 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40cfe3:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40cfe8:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40cfef:	00 
  40cff0:	e8 8b 61 ff ff       	callq  403180 <_ZNSi10_M_extractImEERSiRT_@plt>
  40cff5:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40cffc:	00 
  40cffd:	48 c7 84 24 80 01 00 	movq   $0x412c58,0x180(%rsp)
  40d004:	00 58 2c 41 00 
  40d009:	48 c7 84 24 80 02 00 	movq   $0x412c80,0x280(%rsp)
  40d010:	00 80 2c 41 00 
  40d015:	48 c7 84 24 90 01 00 	movq   $0x412ca0,0x190(%rsp)
  40d01c:	00 a0 2c 41 00 
  40d021:	e8 4a 60 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40d026:	48 8d bc 24 f8 01 00 	lea    0x1f8(%rsp),%rdi
  40d02d:	00 
  40d02e:	e8 6d 64 ff ff       	callq  4034a0 <_ZNSt12__basic_fileIcED1Ev@plt>
  40d033:	48 8d bc 24 c8 01 00 	lea    0x1c8(%rsp),%rdi
  40d03a:	00 
  40d03b:	48 c7 84 24 90 01 00 	movq   $0x412bb0,0x190(%rsp)
  40d042:	00 b0 2b 41 00 
  40d047:	e8 34 63 ff ff       	callq  403380 <_ZNSt6localeD1Ev@plt>
  40d04c:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  40d050:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40d057:	00 
  40d058:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  40d05f:	00 
  40d060:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  40d067:	00 
  40d068:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  40d06f:	00 00 00 00 00 
  40d074:	48 c7 84 24 80 02 00 	movq   $0x412b90,0x280(%rsp)
  40d07b:	00 90 2b 41 00 
  40d080:	e8 7b 60 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40d085:	0f 1f 00             	nopl   (%rax)
  40d088:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d08c:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40d093:	00 
  40d094:	bf 01 00 00 00       	mov    $0x1,%edi
  40d099:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40d0a0:	00 00 
  40d0a2:	e8 f9 61 ff ff       	callq  4032a0 <clock_gettime@plt>
  40d0a7:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40d0ae:	00 00 ca 9a 3b 
  40d0b3:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40d0ba:	00 
  40d0bb:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40d0c2:	00 
  40d0c3:	49 39 c4             	cmp    %rax,%r12
  40d0c6:	76 39                	jbe    40d101 <_Z6windowid+0x1b61>
  40d0c8:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40d0cf:	00 00 00 00 00 
  40d0d4:	48 c7 84 24 88 01 00 	movq   $0x4e20,0x188(%rsp)
  40d0db:	00 20 4e 00 00 
  40d0e0:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40d0e7:	00 
  40d0e8:	48 89 f7             	mov    %rsi,%rdi
  40d0eb:	e8 f0 5f ff ff       	callq  4030e0 <nanosleep@plt>
  40d0f0:	83 f8 ff             	cmp    $0xffffffff,%eax
  40d0f3:	75 93                	jne    40d088 <_Z6windowid+0x1ae8>
  40d0f5:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40d0fa:	83 38 04             	cmpl   $0x4,(%rax)
  40d0fd:	74 e1                	je     40d0e0 <_Z6windowid+0x1b40>
  40d0ff:	eb 87                	jmp    40d088 <_Z6windowid+0x1ae8>
  40d101:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  40d108:	00 
  40d109:	48 85 f6             	test   %rsi,%rsi
  40d10c:	74 0d                	je     40d11b <_Z6windowid+0x1b7b>
  40d10e:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40d115:	00 
  40d116:	e8 85 5f ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40d11b:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  40d122:	00 
  40d123:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40d12a:	00 
  40d12b:	48 39 c7             	cmp    %rax,%rdi
  40d12e:	74 11                	je     40d141 <_Z6windowid+0x1ba1>
  40d130:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  40d137:	00 
  40d138:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40d13c:	e8 8f 61 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40d141:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  40d146:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  40d14d:	00 
  40d14e:	48 39 c7             	cmp    %rax,%rdi
  40d151:	74 11                	je     40d164 <_Z6windowid+0x1bc4>
  40d153:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  40d15a:	00 
  40d15b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40d15f:	e8 6c 61 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40d164:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
  40d16b:	00 
  40d16c:	48 85 f6             	test   %rsi,%rsi
  40d16f:	74 0d                	je     40d17e <_Z6windowid+0x1bde>
  40d171:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  40d178:	00 
  40d179:	e8 22 5f ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40d17e:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  40d185:	00 
  40d186:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  40d18d:	00 
  40d18e:	48 39 c7             	cmp    %rax,%rdi
  40d191:	74 11                	je     40d1a4 <_Z6windowid+0x1c04>
  40d193:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  40d19a:	00 
  40d19b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40d19f:	e8 2c 61 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40d1a4:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  40d1a8:	5b                   	pop    %rbx
  40d1a9:	4c 89 e0             	mov    %r12,%rax
  40d1ac:	41 5c                	pop    %r12
  40d1ae:	41 5d                	pop    %r13
  40d1b0:	41 5e                	pop    %r14
  40d1b2:	41 5f                	pop    %r15
  40d1b4:	5d                   	pop    %rbp
  40d1b5:	c3                   	retq   
  40d1b6:	bb 02 00 00 00       	mov    $0x2,%ebx
  40d1bb:	49 ff c6             	inc    %r14
  40d1be:	e9 cd f1 ff ff       	jmpq   40c390 <_Z6windowid+0xdf0>
  40d1c3:	bb 04 00 00 00       	mov    $0x4,%ebx
  40d1c8:	49 ff c6             	inc    %r14
  40d1cb:	e9 c0 f1 ff ff       	jmpq   40c390 <_Z6windowid+0xdf0>
  40d1d0:	bb 03 00 00 00       	mov    $0x3,%ebx
  40d1d5:	49 ff c6             	inc    %r14
  40d1d8:	e9 b3 f1 ff ff       	jmpq   40c390 <_Z6windowid+0xdf0>
  40d1dd:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d1e1:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40d1e8:	00 
  40d1e9:	bf 01 00 00 00       	mov    $0x1,%edi
  40d1ee:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40d1f5:	00 00 
  40d1f7:	e8 a4 60 ff ff       	callq  4032a0 <clock_gettime@plt>
  40d1fc:	4c 69 a4 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%r12
  40d203:	00 00 ca 9a 3b 
  40d208:	4c 03 a4 24 88 01 00 	add    0x188(%rsp),%r12
  40d20f:	00 
  40d210:	eb 92                	jmp    40d1a4 <_Z6windowid+0x1c04>
  40d212:	4d 85 e4             	test   %r12,%r12
  40d215:	0f 85 3f 05 00 00    	jne    40d75a <_Z6windowid+0x21ba>
  40d21b:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40d222:	00 
  40d223:	e9 37 f0 ff ff       	jmpq   40c25f <_Z6windowid+0xcbf>
  40d228:	31 d2                	xor    %edx,%edx
  40d22a:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  40d231:	00 
  40d232:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40d239:	00 
  40d23a:	e8 41 62 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d23f:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40d246:	00 
  40d247:	48 89 c7             	mov    %rax,%rdi
  40d24a:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40d251:	00 
  40d252:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40d259:	00 
  40d25a:	4c 89 e2             	mov    %r12,%rdx
  40d25d:	4c 89 ee             	mov    %r13,%rsi
  40d260:	e8 0b 60 ff ff       	callq  403270 <memcpy@plt>
  40d265:	4c 8b a4 24 d0 00 00 	mov    0xd0(%rsp),%r12
  40d26c:	00 
  40d26d:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  40d274:	00 
  40d275:	e9 e5 ef ff ff       	jmpq   40c25f <_Z6windowid+0xcbf>
  40d27a:	4d 85 e4             	test   %r12,%r12
  40d27d:	0f 85 e4 04 00 00    	jne    40d767 <_Z6windowid+0x21c7>
  40d283:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40d28a:	00 
  40d28b:	e9 a2 ee ff ff       	jmpq   40c132 <_Z6windowid+0xb92>
  40d290:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40d295:	31 d2                	xor    %edx,%edx
  40d297:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40d29e:	00 
  40d29f:	e8 dc 61 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d2a4:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40d2ab:	00 
  40d2ac:	48 89 c7             	mov    %rax,%rdi
  40d2af:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d2b6:	00 
  40d2b7:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40d2be:	00 
  40d2bf:	4c 89 f2             	mov    %r14,%rdx
  40d2c2:	4c 89 ee             	mov    %r13,%rsi
  40d2c5:	e8 a6 5f ff ff       	callq  403270 <memcpy@plt>
  40d2ca:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d2d1:	00 
  40d2d2:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40d2d9:	00 
  40d2da:	e9 3e e5 ff ff       	jmpq   40b81d <_Z6windowid+0x27d>
  40d2df:	4d 85 f6             	test   %r14,%r14
  40d2e2:	0f 85 8c 04 00 00    	jne    40d774 <_Z6windowid+0x21d4>
  40d2e8:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40d2ef:	00 
  40d2f0:	e9 28 e5 ff ff       	jmpq   40b81d <_Z6windowid+0x27d>
  40d2f5:	48 85 c0             	test   %rax,%rax
  40d2f8:	0f 85 83 04 00 00    	jne    40d781 <_Z6windowid+0x21e1>
  40d2fe:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  40d305:	00 
  40d306:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  40d30b:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40d312:	00 
  40d313:	e9 a5 e3 ff ff       	jmpq   40b6bd <_Z6windowid+0x11d>
  40d318:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  40d31f:	00 
  40d320:	31 d2                	xor    %edx,%edx
  40d322:	48 89 c6             	mov    %rax,%rsi
  40d325:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40d32c:	00 
  40d32d:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40d332:	e8 49 61 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d337:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40d33e:	00 
  40d33f:	48 89 c7             	mov    %rax,%rdi
  40d342:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d349:	00 
  40d34a:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40d351:	00 
  40d352:	4c 89 f2             	mov    %r14,%rdx
  40d355:	4c 89 ee             	mov    %r13,%rsi
  40d358:	e8 13 5f ff ff       	callq  403270 <memcpy@plt>
  40d35d:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d364:	00 
  40d365:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40d36c:	00 
  40d36d:	e9 4b e3 ff ff       	jmpq   40b6bd <_Z6windowid+0x11d>
  40d372:	48 85 c0             	test   %rax,%rax
  40d375:	0f 85 20 04 00 00    	jne    40d79b <_Z6windowid+0x21fb>
  40d37b:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40d382:	00 
  40d383:	e9 94 e2 ff ff       	jmpq   40b61c <_Z6windowid+0x7c>
  40d388:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40d38d:	31 d2                	xor    %edx,%edx
  40d38f:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40d396:	00 
  40d397:	e8 e4 60 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d39c:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40d3a3:	00 
  40d3a4:	48 89 c7             	mov    %rax,%rdi
  40d3a7:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40d3ae:	00 
  40d3af:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40d3b6:	00 
  40d3b7:	4c 89 e2             	mov    %r12,%rdx
  40d3ba:	4c 89 ee             	mov    %r13,%rsi
  40d3bd:	e8 ae 5e ff ff       	callq  403270 <memcpy@plt>
  40d3c2:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40d3c9:	00 
  40d3ca:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d3d1:	00 
  40d3d2:	e9 5b ed ff ff       	jmpq   40c132 <_Z6windowid+0xb92>
  40d3d7:	4d 85 e4             	test   %r12,%r12
  40d3da:	0f 85 c8 03 00 00    	jne    40d7a8 <_Z6windowid+0x2208>
  40d3e0:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40d3e7:	00 
  40d3e8:	e9 30 ea ff ff       	jmpq   40be1d <_Z6windowid+0x87d>
  40d3ed:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40d3f2:	31 d2                	xor    %edx,%edx
  40d3f4:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40d3fb:	00 
  40d3fc:	e8 7f 60 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d401:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40d408:	00 
  40d409:	48 89 c7             	mov    %rax,%rdi
  40d40c:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40d413:	00 
  40d414:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40d41b:	00 
  40d41c:	4c 89 e2             	mov    %r12,%rdx
  40d41f:	4c 89 ee             	mov    %r13,%rsi
  40d422:	e8 49 5e ff ff       	callq  403270 <memcpy@plt>
  40d427:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40d42e:	00 
  40d42f:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d436:	00 
  40d437:	e9 e1 e9 ff ff       	jmpq   40be1d <_Z6windowid+0x87d>
  40d43c:	4d 85 e4             	test   %r12,%r12
  40d43f:	0f 85 70 03 00 00    	jne    40d7b5 <_Z6windowid+0x2215>
  40d445:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40d44c:	00 
  40d44d:	e9 ed e7 ff ff       	jmpq   40bc3f <_Z6windowid+0x69f>
  40d452:	31 d2                	xor    %edx,%edx
  40d454:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40d45b:	00 
  40d45c:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40d463:	00 
  40d464:	e8 17 60 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d469:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40d470:	00 
  40d471:	48 89 c7             	mov    %rax,%rdi
  40d474:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40d47b:	00 
  40d47c:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  40d483:	00 
  40d484:	4c 89 e2             	mov    %r12,%rdx
  40d487:	4c 89 ee             	mov    %r13,%rsi
  40d48a:	e8 e1 5d ff ff       	callq  403270 <memcpy@plt>
  40d48f:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40d496:	00 
  40d497:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  40d49e:	00 
  40d49f:	e9 9b e7 ff ff       	jmpq   40bc3f <_Z6windowid+0x69f>
  40d4a4:	8b 77 20             	mov    0x20(%rdi),%esi
  40d4a7:	83 ce 04             	or     $0x4,%esi
  40d4aa:	e8 91 5f ff ff       	callq  403440 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40d4af:	e9 83 ea ff ff       	jmpq   40bf37 <_Z6windowid+0x997>
  40d4b4:	c5 f9 6f 8c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm1
  40d4bb:	00 00 
  40d4bd:	c5 f9 7f 8c 24 30 01 	vmovdqa %xmm1,0x130(%rsp)
  40d4c4:	00 00 
  40d4c6:	e9 ab e8 ff ff       	jmpq   40bd76 <_Z6windowid+0x7d6>
  40d4cb:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  40d4d0:	c5 f9 7f bc 24 e0 00 	vmovdqa %xmm7,0xe0(%rsp)
  40d4d7:	00 00 
  40d4d9:	e9 44 e8 ff ff       	jmpq   40bd22 <_Z6windowid+0x782>
  40d4de:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  40d4e3:	c5 f9 7f bc 24 80 00 	vmovdqa %xmm7,0x80(%rsp)
  40d4ea:	00 00 
  40d4ec:	e9 5d e5 ff ff       	jmpq   40ba4e <_Z6windowid+0x4ae>
  40d4f1:	c5 f9 6f 94 24 60 01 	vmovdqa 0x160(%rsp),%xmm2
  40d4f8:	00 00 
  40d4fa:	c5 f9 7f 94 24 90 01 	vmovdqa %xmm2,0x190(%rsp)
  40d501:	00 00 
  40d503:	e9 a8 ec ff ff       	jmpq   40c1b0 <_Z6windowid+0xc10>
  40d508:	8b 77 20             	mov    0x20(%rdi),%esi
  40d50b:	83 ce 04             	or     $0x4,%esi
  40d50e:	e8 2d 5f ff ff       	callq  403440 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40d513:	e9 cb fa ff ff       	jmpq   40cfe3 <_Z6windowid+0x1a43>
  40d518:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40d51d:	88 84 24 e0 00 00 00 	mov    %al,0xe0(%rsp)
  40d524:	4c 89 f8             	mov    %r15,%rax
  40d527:	e9 43 f3 ff ff       	jmpq   40c86f <_Z6windowid+0x12cf>
  40d52c:	4c 89 c9             	mov    %r9,%rcx
  40d52f:	31 d2                	xor    %edx,%edx
  40d531:	31 f6                	xor    %esi,%esi
  40d533:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40d53a:	00 
  40d53b:	e8 a0 5e ff ff       	callq  4033e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40d540:	e9 a9 e7 ff ff       	jmpq   40bcee <_Z6windowid+0x74e>
  40d545:	8d 58 06             	lea    0x6(%rax),%ebx
  40d548:	e9 df e5 ff ff       	jmpq   40bb2c <_Z6windowid+0x58c>
  40d54d:	8d 58 05             	lea    0x5(%rax),%ebx
  40d550:	e9 d7 e5 ff ff       	jmpq   40bb2c <_Z6windowid+0x58c>
  40d555:	8d 58 06             	lea    0x6(%rax),%ebx
  40d558:	e9 ef e3 ff ff       	jmpq   40b94c <_Z6windowid+0x3ac>
  40d55d:	8d 58 05             	lea    0x5(%rax),%ebx
  40d560:	e9 e7 e3 ff ff       	jmpq   40b94c <_Z6windowid+0x3ac>
  40d565:	8d 58 07             	lea    0x7(%rax),%ebx
  40d568:	e9 df e3 ff ff       	jmpq   40b94c <_Z6windowid+0x3ac>
  40d56d:	8d 58 07             	lea    0x7(%rax),%ebx
  40d570:	e9 b7 e5 ff ff       	jmpq   40bb2c <_Z6windowid+0x58c>
  40d575:	4d 85 e4             	test   %r12,%r12
  40d578:	0f 85 4b 01 00 00    	jne    40d6c9 <_Z6windowid+0x2129>
  40d57e:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40d585:	00 
  40d586:	e9 04 f4 ff ff       	jmpq   40c98f <_Z6windowid+0x13ef>
  40d58b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40d590:	31 d2                	xor    %edx,%edx
  40d592:	48 8d b4 24 b0 00 00 	lea    0xb0(%rsp),%rsi
  40d599:	00 
  40d59a:	e8 e1 5e ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d59f:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40d5a6:	00 
  40d5a7:	48 89 c7             	mov    %rax,%rdi
  40d5aa:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
  40d5b1:	00 
  40d5b2:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40d5b9:	00 
  40d5ba:	4c 89 e2             	mov    %r12,%rdx
  40d5bd:	4c 89 ee             	mov    %r13,%rsi
  40d5c0:	e8 ab 5c ff ff       	callq  403270 <memcpy@plt>
  40d5c5:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
  40d5cc:	00 
  40d5cd:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d5d4:	00 
  40d5d5:	e9 b5 f3 ff ff       	jmpq   40c98f <_Z6windowid+0x13ef>
  40d5da:	31 d2                	xor    %edx,%edx
  40d5dc:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40d5e3:	00 
  40d5e4:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  40d5eb:	00 
  40d5ec:	e8 8f 5e ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d5f1:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
  40d5f8:	00 
  40d5f9:	48 89 c7             	mov    %rax,%rdi
  40d5fc:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40d603:	00 
  40d604:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
  40d60b:	00 
  40d60c:	4c 89 e2             	mov    %r12,%rdx
  40d60f:	4c 89 ee             	mov    %r13,%rsi
  40d612:	e8 59 5c ff ff       	callq  403270 <memcpy@plt>
  40d617:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40d61e:	00 
  40d61f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40d626:	00 
  40d627:	e9 43 f2 ff ff       	jmpq   40c86f <_Z6windowid+0x12cf>
  40d62c:	8b 77 20             	mov    0x20(%rdi),%esi
  40d62f:	83 ce 04             	or     $0x4,%esi
  40d632:	e8 09 5e ff ff       	callq  403440 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40d637:	e9 cb f4 ff ff       	jmpq   40cb07 <_Z6windowid+0x1567>
  40d63c:	c5 f9 6f b4 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm6
  40d643:	00 00 
  40d645:	c5 f9 7f b4 24 90 01 	vmovdqa %xmm6,0x190(%rsp)
  40d64c:	00 00 
  40d64e:	e9 95 f2 ff ff       	jmpq   40c8e8 <_Z6windowid+0x1348>
  40d653:	bb 02 00 00 00       	mov    $0x2,%ebx
  40d658:	e9 cf e4 ff ff       	jmpq   40bb2c <_Z6windowid+0x58c>
  40d65d:	bb 01 00 00 00       	mov    $0x1,%ebx
  40d662:	e9 e5 e2 ff ff       	jmpq   40b94c <_Z6windowid+0x3ac>
  40d667:	bb 02 00 00 00       	mov    $0x2,%ebx
  40d66c:	e9 db e2 ff ff       	jmpq   40b94c <_Z6windowid+0x3ac>
  40d671:	bb 03 00 00 00       	mov    $0x3,%ebx
  40d676:	e9 d1 e2 ff ff       	jmpq   40b94c <_Z6windowid+0x3ac>
  40d67b:	bb 04 00 00 00       	mov    $0x4,%ebx
  40d680:	e9 c7 e2 ff ff       	jmpq   40b94c <_Z6windowid+0x3ac>
  40d685:	bb 03 00 00 00       	mov    $0x3,%ebx
  40d68a:	e9 9d e4 ff ff       	jmpq   40bb2c <_Z6windowid+0x58c>
  40d68f:	bb 04 00 00 00       	mov    $0x4,%ebx
  40d694:	e9 93 e4 ff ff       	jmpq   40bb2c <_Z6windowid+0x58c>
  40d699:	bb 01 00 00 00       	mov    $0x1,%ebx
  40d69e:	e9 89 e4 ff ff       	jmpq   40bb2c <_Z6windowid+0x58c>
  40d6a3:	bf 36 00 41 00       	mov    $0x410036,%edi
  40d6a8:	e8 f3 5c ff ff       	callq  4033a0 <_ZSt20__throw_out_of_rangePKc@plt>
  40d6ad:	bf 50 04 41 00       	mov    $0x410450,%edi
  40d6b2:	e8 49 5b ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d6b7:	bf 91 05 41 00       	mov    $0x410591,%edi
  40d6bc:	e8 af 5a ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40d6c1:	4c 89 ff             	mov    %r15,%rdi
  40d6c4:	e9 43 ff ff ff       	jmpq   40d60c <_Z6windowid+0x206c>
  40d6c9:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40d6d0:	00 
  40d6d1:	e9 e4 fe ff ff       	jmpq   40d5ba <_Z6windowid+0x201a>
  40d6d6:	bf 50 04 41 00       	mov    $0x410450,%edi
  40d6db:	e8 20 5b ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d6e0:	bf 36 00 41 00       	mov    $0x410036,%edi
  40d6e5:	e8 c6 5a ff ff       	callq  4031b0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40d6ea:	bf 36 00 41 00       	mov    $0x410036,%edi
  40d6ef:	e8 ac 5c ff ff       	callq  4033a0 <_ZSt20__throw_out_of_rangePKc@plt>
  40d6f4:	bf 50 04 41 00       	mov    $0x410450,%edi
  40d6f9:	e8 02 5b ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d6fe:	bf 91 05 41 00       	mov    $0x410591,%edi
  40d703:	e8 68 5a ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40d708:	bf 50 04 41 00       	mov    $0x410450,%edi
  40d70d:	e8 ee 5a ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d712:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40d718:	bf 50 04 41 00       	mov    $0x410450,%edi
  40d71d:	e8 de 5a ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d722:	bf 91 05 41 00       	mov    $0x410591,%edi
  40d727:	e8 44 5a ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40d72c:	bf 50 04 41 00       	mov    $0x410450,%edi
  40d731:	e8 ca 5a ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d736:	bb 01 00 00 00       	mov    $0x1,%ebx
  40d73b:	e9 dc f0 ff ff       	jmpq   40c81c <_Z6windowid+0x127c>
  40d740:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40d747:	00 
  40d748:	e9 f5 f5 ff ff       	jmpq   40cd42 <_Z6windowid+0x17a2>
  40d74d:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40d754:	00 
  40d755:	e9 3a f6 ff ff       	jmpq   40cd94 <_Z6windowid+0x17f4>
  40d75a:	48 8d bc 24 30 01 00 	lea    0x130(%rsp),%rdi
  40d761:	00 
  40d762:	e9 f3 fa ff ff       	jmpq   40d25a <_Z6windowid+0x1cba>
  40d767:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40d76e:	00 
  40d76f:	e9 43 fc ff ff       	jmpq   40d3b7 <_Z6windowid+0x1e17>
  40d774:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40d77b:	00 
  40d77c:	e9 3e fb ff ff       	jmpq   40d2bf <_Z6windowid+0x1d1f>
  40d781:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  40d788:	00 
  40d789:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40d78e:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40d795:	00 
  40d796:	e9 b7 fb ff ff       	jmpq   40d352 <_Z6windowid+0x1db2>
  40d79b:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40d7a2:	00 
  40d7a3:	e9 1a e0 ff ff       	jmpq   40b7c2 <_Z6windowid+0x222>
  40d7a8:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40d7af:	00 
  40d7b0:	e9 67 fc ff ff       	jmpq   40d41c <_Z6windowid+0x1e7c>
  40d7b5:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40d7bc:	00 
  40d7bd:	e9 c2 fc ff ff       	jmpq   40d484 <_Z6windowid+0x1ee4>
  40d7c2:	bf 91 05 41 00       	mov    $0x410591,%edi
  40d7c7:	e8 a4 59 ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40d7cc:	bf 50 04 41 00       	mov    $0x410450,%edi
  40d7d1:	e8 2a 5a ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d7d6:	bf 50 04 41 00       	mov    $0x410450,%edi
  40d7db:	e8 20 5a ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d7e0:	bf 36 00 41 00       	mov    $0x410036,%edi
  40d7e5:	e8 c6 59 ff ff       	callq  4031b0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40d7ea:	bf 50 04 41 00       	mov    $0x410450,%edi
  40d7ef:	e8 0c 5a ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d7f4:	48 89 c3             	mov    %rax,%rbx
  40d7f7:	e9 36 5d ff ff       	jmpq   403532 <_Z6windowid.cold>
  40d7fc:	48 89 c3             	mov    %rax,%rbx
  40d7ff:	c5 f8 77             	vzeroupper 
  40d802:	e9 a7 5d ff ff       	jmpq   4035ae <_Z6windowid.cold+0x7c>
  40d807:	48 89 c3             	mov    %rax,%rbx
  40d80a:	e9 ee 5d ff ff       	jmpq   4035fd <_Z6windowid.cold+0xcb>
  40d80f:	48 89 c3             	mov    %rax,%rbx
  40d812:	e9 20 5e ff ff       	jmpq   403637 <_Z6windowid.cold+0x105>
  40d817:	48 89 c3             	mov    %rax,%rbx
  40d81a:	c5 f8 77             	vzeroupper 
  40d81d:	e9 32 5e ff ff       	jmpq   403654 <_Z6windowid.cold+0x122>
  40d822:	48 89 c3             	mov    %rax,%rbx
  40d825:	e9 57 5d ff ff       	jmpq   403581 <_Z6windowid.cold+0x4f>
  40d82a:	49 89 c4             	mov    %rax,%r12
  40d82d:	e9 66 5e ff ff       	jmpq   403698 <_Z6windowid.cold+0x166>
  40d832:	48 89 c3             	mov    %rax,%rbx
  40d835:	c5 f8 77             	vzeroupper 
  40d838:	e9 b5 5e ff ff       	jmpq   4036f2 <_Z6windowid.cold+0x1c0>
  40d83d:	48 89 c3             	mov    %rax,%rbx
  40d840:	e9 9d 5e ff ff       	jmpq   4036e2 <_Z6windowid.cold+0x1b0>
  40d845:	48 89 c3             	mov    %rax,%rbx
  40d848:	e9 6a 5f ff ff       	jmpq   4037b7 <_Z6windowid.cold+0x285>
  40d84d:	49 89 c4             	mov    %rax,%r12
  40d850:	e9 77 5f ff ff       	jmpq   4037cc <_Z6windowid.cold+0x29a>
  40d855:	48 89 c3             	mov    %rax,%rbx
  40d858:	c5 f8 77             	vzeroupper 
  40d85b:	e9 0c 5d ff ff       	jmpq   40356c <_Z6windowid.cold+0x3a>
  40d860:	48 89 c3             	mov    %rax,%rbx
  40d863:	c5 f8 77             	vzeroupper 
  40d866:	e9 1d 5f ff ff       	jmpq   403788 <_Z6windowid.cold+0x256>
  40d86b:	49 89 c4             	mov    %rax,%r12
  40d86e:	c5 f8 77             	vzeroupper 
  40d871:	e9 73 5f ff ff       	jmpq   4037e9 <_Z6windowid.cold+0x2b7>
  40d876:	48 89 c3             	mov    %rax,%rbx
  40d879:	e9 9e 5f ff ff       	jmpq   40381c <_Z6windowid.cold+0x2ea>
  40d87e:	48 89 c3             	mov    %rax,%rbx
  40d881:	c5 f8 77             	vzeroupper 
  40d884:	e9 8b 5e ff ff       	jmpq   403714 <_Z6windowid.cold+0x1e2>
  40d889:	48 89 c3             	mov    %rax,%rbx
  40d88c:	c5 f8 77             	vzeroupper 
  40d88f:	e9 09 60 ff ff       	jmpq   40389d <_Z6windowid.cold+0x36b>
  40d894:	48 89 c3             	mov    %rax,%rbx
  40d897:	e9 b6 5f ff ff       	jmpq   403852 <_Z6windowid.cold+0x320>
  40d89c:	48 89 c7             	mov    %rax,%rdi
  40d89f:	e9 08 60 ff ff       	jmpq   4038ac <_Z6windowid.cold+0x37a>
  40d8a4:	48 89 c3             	mov    %rax,%rbx
  40d8a7:	c5 f8 77             	vzeroupper 
  40d8aa:	e9 d5 5f ff ff       	jmpq   403884 <_Z6windowid.cold+0x352>
  40d8af:	48 89 c3             	mov    %rax,%rbx
  40d8b2:	c5 f8 77             	vzeroupper 
  40d8b5:	e9 a8 5f ff ff       	jmpq   403862 <_Z6windowid.cold+0x330>
  40d8ba:	48 89 c3             	mov    %rax,%rbx
  40d8bd:	e9 fc 5f ff ff       	jmpq   4038be <_Z6windowid.cold+0x38c>
  40d8c2:	48 89 c3             	mov    %rax,%rbx
  40d8c5:	e9 06 60 ff ff       	jmpq   4038d0 <_Z6windowid.cold+0x39e>
  40d8ca:	48 89 c3             	mov    %rax,%rbx
  40d8cd:	e9 10 60 ff ff       	jmpq   4038e2 <_Z6windowid.cold+0x3b0>
  40d8d2:	48 89 c3             	mov    %rax,%rbx
  40d8d5:	c5 f8 77             	vzeroupper 
  40d8d8:	e9 f8 5c ff ff       	jmpq   4035d5 <_Z6windowid.cold+0xa3>
  40d8dd:	48 89 c3             	mov    %rax,%rbx
  40d8e0:	e9 2b 60 ff ff       	jmpq   403910 <_Z6windowid.cold+0x3de>
  40d8e5:	48 89 c3             	mov    %rax,%rbx
  40d8e8:	c5 f8 77             	vzeroupper 
  40d8eb:	e9 72 5e ff ff       	jmpq   403762 <_Z6windowid.cold+0x230>
  40d8f0:	48 89 c3             	mov    %rax,%rbx
  40d8f3:	c5 f8 77             	vzeroupper 
  40d8f6:	e9 32 60 ff ff       	jmpq   40392d <_Z6windowid.cold+0x3fb>
  40d8fb:	48 89 c3             	mov    %rax,%rbx
  40d8fe:	e9 66 60 ff ff       	jmpq   403969 <_Z6windowid.cold+0x437>
  40d903:	48 89 c3             	mov    %rax,%rbx
  40d906:	e9 70 60 ff ff       	jmpq   40397b <_Z6windowid.cold+0x449>
  40d90b:	48 89 c3             	mov    %rax,%rbx
  40d90e:	e9 c0 60 ff ff       	jmpq   4039d3 <_Z6windowid.cold+0x4a1>
  40d913:	48 89 c3             	mov    %rax,%rbx
  40d916:	c5 f8 77             	vzeroupper 
  40d919:	e9 45 61 ff ff       	jmpq   403a63 <_Z6windowid.cold+0x531>
  40d91e:	48 89 c3             	mov    %rax,%rbx
  40d921:	c5 f8 77             	vzeroupper 
  40d924:	e9 8a 61 ff ff       	jmpq   403ab3 <_Z6windowid.cold+0x581>
  40d929:	48 89 c3             	mov    %rax,%rbx
  40d92c:	e9 61 61 ff ff       	jmpq   403a92 <_Z6windowid.cold+0x560>
  40d931:	48 89 c3             	mov    %rax,%rbx
  40d934:	e9 a9 61 ff ff       	jmpq   403ae2 <_Z6windowid.cold+0x5b0>
  40d939:	e9 f5 61 ff ff       	jmpq   403b33 <_Z6windowid.cold+0x601>
  40d93e:	48 89 c3             	mov    %rax,%rbx
  40d941:	c5 f8 77             	vzeroupper 
  40d944:	e9 a9 61 ff ff       	jmpq   403af2 <_Z6windowid.cold+0x5c0>
  40d949:	48 89 c3             	mov    %rax,%rbx
  40d94c:	c5 f8 77             	vzeroupper 
  40d94f:	e9 e3 5d ff ff       	jmpq   403737 <_Z6windowid.cold+0x205>
  40d954:	48 89 c3             	mov    %rax,%rbx
  40d957:	e9 93 63 ff ff       	jmpq   403cef <_Z6windowid.cold+0x7bd>
  40d95c:	48 89 c3             	mov    %rax,%rbx
  40d95f:	e9 8b 63 ff ff       	jmpq   403cef <_Z6windowid.cold+0x7bd>
  40d964:	48 89 c3             	mov    %rax,%rbx
  40d967:	c5 f8 77             	vzeroupper 
  40d96a:	e9 cc 60 ff ff       	jmpq   403a3b <_Z6windowid.cold+0x509>
  40d96f:	48 89 c3             	mov    %rax,%rbx
  40d972:	c5 f8 77             	vzeroupper 
  40d975:	e9 39 62 ff ff       	jmpq   403bb3 <_Z6windowid.cold+0x681>
  40d97a:	c5 f8 77             	vzeroupper 
  40d97d:	e9 0e 62 ff ff       	jmpq   403b90 <_Z6windowid.cold+0x65e>
  40d982:	49 89 c5             	mov    %rax,%r13
  40d985:	e9 f3 61 ff ff       	jmpq   403b7d <_Z6windowid.cold+0x64b>
  40d98a:	48 89 c3             	mov    %rax,%rbx
  40d98d:	e9 3f 62 ff ff       	jmpq   403bd1 <_Z6windowid.cold+0x69f>
  40d992:	48 89 c7             	mov    %rax,%rdi
  40d995:	e9 4c 62 ff ff       	jmpq   403be6 <_Z6windowid.cold+0x6b4>
  40d99a:	48 89 c7             	mov    %rax,%rdi
  40d99d:	e9 56 62 ff ff       	jmpq   403bf8 <_Z6windowid.cold+0x6c6>
  40d9a2:	48 89 c3             	mov    %rax,%rbx
  40d9a5:	e9 60 62 ff ff       	jmpq   403c0a <_Z6windowid.cold+0x6d8>
  40d9aa:	48 89 c3             	mov    %rax,%rbx
  40d9ad:	c5 f8 77             	vzeroupper 
  40d9b0:	e9 a4 62 ff ff       	jmpq   403c59 <_Z6windowid.cold+0x727>
  40d9b5:	48 89 c3             	mov    %rax,%rbx
  40d9b8:	e9 04 63 ff ff       	jmpq   403cc1 <_Z6windowid.cold+0x78f>
  40d9bd:	48 89 c3             	mov    %rax,%rbx
  40d9c0:	e9 49 60 ff ff       	jmpq   403a0e <_Z6windowid.cold+0x4dc>
  40d9c5:	48 89 c3             	mov    %rax,%rbx
  40d9c8:	e9 6b 62 ff ff       	jmpq   403c38 <_Z6windowid.cold+0x706>
  40d9cd:	48 89 c3             	mov    %rax,%rbx
  40d9d0:	c5 f8 77             	vzeroupper 
  40d9d3:	e9 cc 5f ff ff       	jmpq   4039a4 <_Z6windowid.cold+0x472>
  40d9d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40d9df:	00 

000000000040d9e0 <_ZN8Counters4openEi._omp_fn.0>:
  40d9e0:	55                   	push   %rbp
  40d9e1:	48 89 fd             	mov    %rdi,%rbp
  40d9e4:	53                   	push   %rbx
  40d9e5:	48 83 ec 58          	sub    $0x58,%rsp
  40d9e9:	e8 12 5a ff ff       	callq  403400 <omp_get_thread_num@plt>
  40d9ee:	48 63 d8             	movslq %eax,%rbx
  40d9f1:	39 5d 08             	cmp    %ebx,0x8(%rbp)
  40d9f4:	7f 0a                	jg     40da00 <_ZN8Counters4openEi._omp_fn.0+0x20>
  40d9f6:	48 83 c4 58          	add    $0x58,%rsp
  40d9fa:	5b                   	pop    %rbx
  40d9fb:	5d                   	pop    %rbp
  40d9fc:	c3                   	retq   
  40d9fd:	0f 1f 00             	nopl   (%rax)
  40da00:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
  40da04:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40da08:	48 89 e6             	mov    %rsp,%rsi
  40da0b:	45 31 c9             	xor    %r9d,%r9d
  40da0e:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40da14:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40da19:	31 d2                	xor    %edx,%edx
  40da1b:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40da20:	31 c0                	xor    %eax,%eax
  40da22:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40da28:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40da2e:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40da35:	00 00 
  40da37:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40da3e:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40da45:	00 
  40da46:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40da4d:	00 00 
  40da4f:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40da56:	00 00 
  40da58:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40da5f:	00 00 
  40da61:	e8 ea 55 ff ff       	callq  403050 <syscall@plt>
  40da66:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  40da6a:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40da6e:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40da71:	48 89 e6             	mov    %rsp,%rsi
  40da74:	45 31 c9             	xor    %r9d,%r9d
  40da77:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40da7d:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40da82:	31 d2                	xor    %edx,%edx
  40da84:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40da89:	31 c0                	xor    %eax,%eax
  40da8b:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40da91:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40da97:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40da9e:	00 00 
  40daa0:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  40daa7:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40daae:	00 
  40daaf:	48 c7 44 24 08 b7 02 	movq   $0x2b7,0x8(%rsp)
  40dab6:	00 00 
  40dab8:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40dabf:	00 00 
  40dac1:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40dac8:	00 00 
  40daca:	e8 81 55 ff ff       	callq  403050 <syscall@plt>
  40dacf:	48 8b 55 18          	mov    0x18(%rbp),%rdx
  40dad3:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40dad7:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40dada:	48 89 e6             	mov    %rsp,%rsi
  40dadd:	45 31 c9             	xor    %r9d,%r9d
  40dae0:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40dae6:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40daeb:	31 d2                	xor    %edx,%edx
  40daed:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40daf2:	31 c0                	xor    %eax,%eax
  40daf4:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40dafa:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40db00:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40db07:	00 00 
  40db09:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40db10:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40db17:	00 
  40db18:	48 c7 44 24 08 01 00 	movq   $0x1,0x8(%rsp)
  40db1f:	00 00 
  40db21:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40db28:	00 00 
  40db2a:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40db31:	00 00 
  40db33:	e8 18 55 ff ff       	callq  403050 <syscall@plt>
  40db38:	48 8b 55 30          	mov    0x30(%rbp),%rdx
  40db3c:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40db40:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40db43:	48 89 e6             	mov    %rsp,%rsi
  40db46:	45 31 c9             	xor    %r9d,%r9d
  40db49:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40db4f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40db54:	31 d2                	xor    %edx,%edx
  40db56:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40db5b:	31 c0                	xor    %eax,%eax
  40db5d:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40db63:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40db69:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40db70:	00 00 
  40db72:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40db79:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40db80:	00 
  40db81:	48 c7 44 24 08 09 00 	movq   $0x9,0x8(%rsp)
  40db88:	00 00 
  40db8a:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40db91:	00 00 
  40db93:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40db9a:	00 00 
  40db9c:	e8 af 54 ff ff       	callq  403050 <syscall@plt>
  40dba1:	48 8b 55 48          	mov    0x48(%rbp),%rdx
  40dba5:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40dba9:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40dbac:	48 b8 77 04 00 3c 07 	movabs $0x73c000477,%rax
  40dbb3:	00 00 00 
  40dbb6:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40dbbc:	48 89 e6             	mov    %rsp,%rsi
  40dbbf:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40dbc4:	45 31 c9             	xor    %r9d,%r9d
  40dbc7:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40dbcd:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40dbd2:	31 d2                	xor    %edx,%edx
  40dbd4:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40dbd9:	31 c0                	xor    %eax,%eax
  40dbdb:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40dbe1:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40dbe8:	00 00 
  40dbea:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  40dbf1:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40dbf8:	00 
  40dbf9:	48 c7 44 24 08 2a 01 	movq   $0x12a,0x8(%rsp)
  40dc00:	00 00 
  40dc02:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40dc09:	00 00 
  40dc0b:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40dc12:	00 00 
  40dc14:	e8 37 54 ff ff       	callq  403050 <syscall@plt>
  40dc19:	48 8b 55 60          	mov    0x60(%rbp),%rdx
  40dc1d:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40dc21:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40dc24:	48 b8 22 08 f8 bf 0f 	movabs $0xfbff80822,%rax
  40dc2b:	00 00 00 
  40dc2e:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40dc34:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40dc3a:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40dc3f:	48 89 e6             	mov    %rsp,%rsi
  40dc42:	45 31 c9             	xor    %r9d,%r9d
  40dc45:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40dc4a:	31 d2                	xor    %edx,%edx
  40dc4c:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40dc51:	31 c0                	xor    %eax,%eax
  40dc53:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40dc5a:	00 00 
  40dc5c:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  40dc63:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40dc6a:	00 
  40dc6b:	48 c7 44 24 08 2b 01 	movq   $0x12b,0x8(%rsp)
  40dc72:	00 00 
  40dc74:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40dc7b:	00 00 
  40dc7d:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40dc84:	00 00 
  40dc86:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40dc8c:	e8 bf 53 ff ff       	callq  403050 <syscall@plt>
  40dc91:	49 89 c0             	mov    %rax,%r8
  40dc94:	48 8b 45 78          	mov    0x78(%rbp),%rax
  40dc98:	44 89 04 98          	mov    %r8d,(%rax,%rbx,4)
  40dc9c:	48 83 c4 58          	add    $0x58,%rsp
  40dca0:	5b                   	pop    %rbx
  40dca1:	5d                   	pop    %rbp
  40dca2:	c3                   	retq   
  40dca3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40dcaa:	00 00 00 
  40dcad:	0f 1f 00             	nopl   (%rax)

000000000040dcb0 <_ZNSt7__cxx119to_stringEi>:
  40dcb0:	41 56                	push   %r14
  40dcb2:	89 f0                	mov    %esi,%eax
  40dcb4:	c1 f8 1f             	sar    $0x1f,%eax
  40dcb7:	41 55                	push   %r13
  40dcb9:	41 89 f6             	mov    %esi,%r14d
  40dcbc:	49 89 fd             	mov    %rdi,%r13
  40dcbf:	41 54                	push   %r12
  40dcc1:	41 c1 ee 1f          	shr    $0x1f,%r14d
  40dcc5:	55                   	push   %rbp
  40dcc6:	89 f5                	mov    %esi,%ebp
  40dcc8:	31 c5                	xor    %eax,%ebp
  40dcca:	29 c5                	sub    %eax,%ebp
  40dccc:	53                   	push   %rbx
  40dccd:	83 fd 09             	cmp    $0x9,%ebp
  40dcd0:	0f 86 86 01 00 00    	jbe    40de5c <_ZNSt7__cxx119to_stringEi+0x1ac>
  40dcd6:	83 fd 63             	cmp    $0x63,%ebp
  40dcd9:	0f 86 9f 01 00 00    	jbe    40de7e <_ZNSt7__cxx119to_stringEi+0x1ce>
  40dcdf:	81 fd e7 03 00 00    	cmp    $0x3e7,%ebp
  40dce5:	0f 86 b3 01 00 00    	jbe    40de9e <_ZNSt7__cxx119to_stringEi+0x1ee>
  40dceb:	89 eb                	mov    %ebp,%ebx
  40dced:	48 89 da             	mov    %rbx,%rdx
  40dcf0:	81 fd 0f 27 00 00    	cmp    $0x270f,%ebp
  40dcf6:	0f 86 92 01 00 00    	jbe    40de8e <_ZNSt7__cxx119to_stringEi+0x1de>
  40dcfc:	b9 01 00 00 00       	mov    $0x1,%ecx
  40dd01:	48 bf 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rdi
  40dd08:	c5 6d 34 
  40dd0b:	eb 24                	jmp    40dd31 <_ZNSt7__cxx119to_stringEi+0x81>
  40dd0d:	0f 1f 00             	nopl   (%rax)
  40dd10:	83 fa 63             	cmp    $0x63,%edx
  40dd13:	0f 86 c7 00 00 00    	jbe    40dde0 <_ZNSt7__cxx119to_stringEi+0x130>
  40dd19:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40dd1f:	0f 86 1b 01 00 00    	jbe    40de40 <_ZNSt7__cxx119to_stringEi+0x190>
  40dd25:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40dd2b:	0f 86 1f 01 00 00    	jbe    40de50 <_ZNSt7__cxx119to_stringEi+0x1a0>
  40dd31:	48 89 d0             	mov    %rdx,%rax
  40dd34:	48 89 d6             	mov    %rdx,%rsi
  40dd37:	48 f7 e7             	mul    %rdi
  40dd3a:	89 c8                	mov    %ecx,%eax
  40dd3c:	83 c1 04             	add    $0x4,%ecx
  40dd3f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40dd43:	48 81 fe 9f 86 01 00 	cmp    $0x1869f,%rsi
  40dd4a:	77 c4                	ja     40dd10 <_ZNSt7__cxx119to_stringEi+0x60>
  40dd4c:	44 8d 60 03          	lea    0x3(%rax),%r12d
  40dd50:	49 8d 45 10          	lea    0x10(%r13),%rax
  40dd54:	49 89 45 00          	mov    %rax,0x0(%r13)
  40dd58:	41 8d 34 0e          	lea    (%r14,%rcx,1),%esi
  40dd5c:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40dd61:	4c 89 ef             	mov    %r13,%rdi
  40dd64:	e8 a7 55 ff ff       	callq  403310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40dd69:	41 0f b6 ce          	movzbl %r14b,%ecx
  40dd6d:	49 03 4d 00          	add    0x0(%r13),%rcx
  40dd71:	eb 07                	jmp    40dd7a <_ZNSt7__cxx119to_stringEi+0xca>
  40dd73:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40dd78:	89 eb                	mov    %ebp,%ebx
  40dd7a:	48 69 d3 1f 85 eb 51 	imul   $0x51eb851f,%rbx,%rdx
  40dd81:	89 e8                	mov    %ebp,%eax
  40dd83:	48 c1 ea 25          	shr    $0x25,%rdx
  40dd87:	6b f2 64             	imul   $0x64,%edx,%esi
  40dd8a:	29 f0                	sub    %esi,%eax
  40dd8c:	01 c0                	add    %eax,%eax
  40dd8e:	8d 78 01             	lea    0x1(%rax),%edi
  40dd91:	0f b6 bf c0 05 41 00 	movzbl 0x4105c0(%rdi),%edi
  40dd98:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40dd9f:	89 ee                	mov    %ebp,%esi
  40dda1:	89 d5                	mov    %edx,%ebp
  40dda3:	44 89 e2             	mov    %r12d,%edx
  40dda6:	40 88 3c 11          	mov    %dil,(%rcx,%rdx,1)
  40ddaa:	41 8d 54 24 ff       	lea    -0x1(%r12),%edx
  40ddaf:	88 04 11             	mov    %al,(%rcx,%rdx,1)
  40ddb2:	41 83 ec 02          	sub    $0x2,%r12d
  40ddb6:	81 fe 0f 27 00 00    	cmp    $0x270f,%esi
  40ddbc:	77 ba                	ja     40dd78 <_ZNSt7__cxx119to_stringEi+0xc8>
  40ddbe:	81 fe e7 03 00 00    	cmp    $0x3e7,%esi
  40ddc4:	77 4c                	ja     40de12 <_ZNSt7__cxx119to_stringEi+0x162>
  40ddc6:	83 c5 30             	add    $0x30,%ebp
  40ddc9:	40 88 29             	mov    %bpl,(%rcx)
  40ddcc:	4c 89 e8             	mov    %r13,%rax
  40ddcf:	5b                   	pop    %rbx
  40ddd0:	5d                   	pop    %rbp
  40ddd1:	41 5c                	pop    %r12
  40ddd3:	41 5d                	pop    %r13
  40ddd5:	41 5e                	pop    %r14
  40ddd7:	c3                   	retq   
  40ddd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40dddf:	00 
  40dde0:	83 c0 05             	add    $0x5,%eax
  40dde3:	41 89 cc             	mov    %ecx,%r12d
  40dde6:	49 8d 55 10          	lea    0x10(%r13),%rdx
  40ddea:	49 89 55 00          	mov    %rdx,0x0(%r13)
  40ddee:	41 8d 34 06          	lea    (%r14,%rax,1),%esi
  40ddf2:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40ddf7:	4c 89 ef             	mov    %r13,%rdi
  40ddfa:	e8 11 55 ff ff       	callq  403310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40ddff:	41 0f b6 ce          	movzbl %r14b,%ecx
  40de03:	49 03 4d 00          	add    0x0(%r13),%rcx
  40de07:	89 eb                	mov    %ebp,%ebx
  40de09:	83 fd 63             	cmp    $0x63,%ebp
  40de0c:	0f 87 68 ff ff ff    	ja     40dd7a <_ZNSt7__cxx119to_stringEi+0xca>
  40de12:	01 ed                	add    %ebp,%ebp
  40de14:	8d 45 01             	lea    0x1(%rbp),%eax
  40de17:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40de1e:	0f b6 ad c0 05 41 00 	movzbl 0x4105c0(%rbp),%ebp
  40de25:	88 41 01             	mov    %al,0x1(%rcx)
  40de28:	40 88 29             	mov    %bpl,(%rcx)
  40de2b:	4c 89 e8             	mov    %r13,%rax
  40de2e:	5b                   	pop    %rbx
  40de2f:	5d                   	pop    %rbp
  40de30:	41 5c                	pop    %r12
  40de32:	41 5d                	pop    %r13
  40de34:	41 5e                	pop    %r14
  40de36:	c3                   	retq   
  40de37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40de3e:	00 00 
  40de40:	8d 48 06             	lea    0x6(%rax),%ecx
  40de43:	44 8d 60 05          	lea    0x5(%rax),%r12d
  40de47:	e9 04 ff ff ff       	jmpq   40dd50 <_ZNSt7__cxx119to_stringEi+0xa0>
  40de4c:	0f 1f 40 00          	nopl   0x0(%rax)
  40de50:	8d 48 07             	lea    0x7(%rax),%ecx
  40de53:	44 8d 60 06          	lea    0x6(%rax),%r12d
  40de57:	e9 f4 fe ff ff       	jmpq   40dd50 <_ZNSt7__cxx119to_stringEi+0xa0>
  40de5c:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40de60:	48 89 07             	mov    %rax,(%rdi)
  40de63:	41 8d 76 01          	lea    0x1(%r14),%esi
  40de67:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40de6c:	e8 9f 54 ff ff       	callq  403310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40de71:	41 0f b6 ce          	movzbl %r14b,%ecx
  40de75:	49 03 4d 00          	add    0x0(%r13),%rcx
  40de79:	e9 48 ff ff ff       	jmpq   40ddc6 <_ZNSt7__cxx119to_stringEi+0x116>
  40de7e:	b8 02 00 00 00       	mov    $0x2,%eax
  40de83:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  40de89:	e9 58 ff ff ff       	jmpq   40dde6 <_ZNSt7__cxx119to_stringEi+0x136>
  40de8e:	41 bc 03 00 00 00    	mov    $0x3,%r12d
  40de94:	b9 04 00 00 00       	mov    $0x4,%ecx
  40de99:	e9 b2 fe ff ff       	jmpq   40dd50 <_ZNSt7__cxx119to_stringEi+0xa0>
  40de9e:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  40dea4:	b9 03 00 00 00       	mov    $0x3,%ecx
  40dea9:	89 eb                	mov    %ebp,%ebx
  40deab:	e9 a0 fe ff ff       	jmpq   40dd50 <_ZNSt7__cxx119to_stringEi+0xa0>

000000000040deb0 <_ZNSt10filesystem7__cxx114pathD1Ev>:
  40deb0:	53                   	push   %rbx
  40deb1:	48 89 fb             	mov    %rdi,%rbx
  40deb4:	48 8b 77 20          	mov    0x20(%rdi),%rsi
  40deb8:	48 85 f6             	test   %rsi,%rsi
  40debb:	74 09                	je     40dec6 <_ZNSt10filesystem7__cxx114pathD1Ev+0x16>
  40debd:	48 8d 7f 20          	lea    0x20(%rdi),%rdi
  40dec1:	e8 da 51 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40dec6:	48 8b 3b             	mov    (%rbx),%rdi
  40dec9:	48 8d 43 10          	lea    0x10(%rbx),%rax
  40decd:	48 39 c7             	cmp    %rax,%rdi
  40ded0:	74 0e                	je     40dee0 <_ZNSt10filesystem7__cxx114pathD1Ev+0x30>
  40ded2:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40ded6:	5b                   	pop    %rbx
  40ded7:	48 ff c6             	inc    %rsi
  40deda:	e9 f1 53 ff ff       	jmpq   4032d0 <_ZdlPvm@plt>
  40dedf:	90                   	nop
  40dee0:	5b                   	pop    %rbx
  40dee1:	c3                   	retq   
  40dee2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40dee9:	00 00 00 
  40deec:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040def0 <_ZN11PerfControl4sendEPKc>:
  40def0:	55                   	push   %rbp
  40def1:	48 89 f5             	mov    %rsi,%rbp
  40def4:	53                   	push   %rbx
  40def5:	48 89 fb             	mov    %rdi,%rbx
  40def8:	48 89 f7             	mov    %rsi,%rdi
  40defb:	48 83 ec 18          	sub    $0x18,%rsp
  40deff:	e8 4c 52 ff ff       	callq  403150 <strlen@plt>
  40df04:	8b 3b                	mov    (%rbx),%edi
  40df06:	48 89 c2             	mov    %rax,%rdx
  40df09:	48 89 ee             	mov    %rbp,%rsi
  40df0c:	e8 ff 51 ff ff       	callq  403110 <write@plt>
  40df11:	48 85 c0             	test   %rax,%rax
  40df14:	78 30                	js     40df46 <_ZN11PerfControl4sendEPKc+0x56>
  40df16:	c6 44 24 0f 00       	movb   $0x0,0xf(%rsp)
  40df1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40df20:	8b 7b 04             	mov    0x4(%rbx),%edi
  40df23:	ba 01 00 00 00       	mov    $0x1,%edx
  40df28:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40df2d:	e8 5e 54 ff ff       	callq  403390 <read@plt>
  40df32:	48 83 f8 01          	cmp    $0x1,%rax
  40df36:	75 3a                	jne    40df72 <_ZN11PerfControl4sendEPKc+0x82>
  40df38:	80 7c 24 0f 0a       	cmpb   $0xa,0xf(%rsp)
  40df3d:	75 e1                	jne    40df20 <_ZN11PerfControl4sendEPKc+0x30>
  40df3f:	48 83 c4 18          	add    $0x18,%rsp
  40df43:	5b                   	pop    %rbx
  40df44:	5d                   	pop    %rbp
  40df45:	c3                   	retq   
  40df46:	bf 10 00 00 00       	mov    $0x10,%edi
  40df4b:	e8 10 52 ff ff       	callq  403160 <__cxa_allocate_exception@plt>
  40df50:	48 89 c7             	mov    %rax,%rdi
  40df53:	be ca 04 41 00       	mov    $0x4104ca,%esi
  40df58:	48 89 c5             	mov    %rax,%rbp
  40df5b:	e8 d0 51 ff ff       	callq  403130 <_ZNSt13runtime_errorC1EPKc@plt>
  40df60:	ba e0 32 40 00       	mov    $0x4032e0,%edx
  40df65:	be a0 2d 41 00       	mov    $0x412da0,%esi
  40df6a:	48 89 ef             	mov    %rbp,%rdi
  40df6d:	e8 de 54 ff ff       	callq  403450 <__cxa_throw@plt>
  40df72:	bf 10 00 00 00       	mov    $0x10,%edi
  40df77:	e8 e4 51 ff ff       	callq  403160 <__cxa_allocate_exception@plt>
  40df7c:	48 89 c7             	mov    %rax,%rdi
  40df7f:	be e4 04 41 00       	mov    $0x4104e4,%esi
  40df84:	48 89 c5             	mov    %rax,%rbp
  40df87:	e8 a4 51 ff ff       	callq  403130 <_ZNSt13runtime_errorC1EPKc@plt>
  40df8c:	eb d2                	jmp    40df60 <_ZN11PerfControl4sendEPKc+0x70>
  40df8e:	48 89 c3             	mov    %rax,%rbx
  40df91:	eb 02                	jmp    40df95 <_ZN11PerfControl4sendEPKc+0xa5>
  40df93:	eb f9                	jmp    40df8e <_ZN11PerfControl4sendEPKc+0x9e>
  40df95:	48 89 ef             	mov    %rbp,%rdi
  40df98:	c5 f8 77             	vzeroupper 
  40df9b:	e8 70 52 ff ff       	callq  403210 <__cxa_free_exception@plt>
  40dfa0:	48 89 df             	mov    %rbx,%rdi
  40dfa3:	e8 c8 54 ff ff       	callq  403470 <_Unwind_Resume@plt>
  40dfa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40dfaf:	00 

000000000040dfb0 <_ZN11PerfControlC1Ev>:
  40dfb0:	41 57                	push   %r15
  40dfb2:	41 56                	push   %r14
  40dfb4:	41 55                	push   %r13
  40dfb6:	41 54                	push   %r12
  40dfb8:	55                   	push   %rbp
  40dfb9:	53                   	push   %rbx
  40dfba:	48 89 fb             	mov    %rdi,%rbx
  40dfbd:	48 83 ec 38          	sub    $0x38,%rsp
  40dfc1:	48 c7 07 ff ff ff ff 	movq   $0xffffffffffffffff,(%rdi)
  40dfc8:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
  40dfcf:	00 
  40dfd0:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40dfd7:	00 
  40dfd8:	bf fc 04 41 00       	mov    $0x4104fc,%edi
  40dfdd:	e8 5e 53 ff ff       	callq  403340 <getenv@plt>
  40dfe2:	bf 0d 05 41 00       	mov    $0x41050d,%edi
  40dfe7:	48 89 c5             	mov    %rax,%rbp
  40dfea:	e8 51 53 ff ff       	callq  403340 <getenv@plt>
  40dfef:	bf 1e 05 41 00       	mov    $0x41051e,%edi
  40dff4:	49 89 c4             	mov    %rax,%r12
  40dff7:	e8 44 53 ff ff       	callq  403340 <getenv@plt>
  40dffc:	48 85 ed             	test   %rbp,%rbp
  40dfff:	74 0b                	je     40e00c <_ZN11PerfControlC1Ev+0x5c>
  40e001:	4d 85 e4             	test   %r12,%r12
  40e004:	74 06                	je     40e00c <_ZN11PerfControlC1Ev+0x5c>
  40e006:	80 7d 00 00          	cmpb   $0x0,0x0(%rbp)
  40e00a:	75 14                	jne    40e020 <_ZN11PerfControlC1Ev+0x70>
  40e00c:	48 83 c4 38          	add    $0x38,%rsp
  40e010:	5b                   	pop    %rbx
  40e011:	5d                   	pop    %rbp
  40e012:	41 5c                	pop    %r12
  40e014:	41 5d                	pop    %r13
  40e016:	41 5e                	pop    %r14
  40e018:	41 5f                	pop    %r15
  40e01a:	c3                   	retq   
  40e01b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40e020:	49 89 c5             	mov    %rax,%r13
  40e023:	48 85 c0             	test   %rax,%rax
  40e026:	74 76                	je     40e09e <_ZN11PerfControlC1Ev+0xee>
  40e028:	4c 8d 74 24 20       	lea    0x20(%rsp),%r14
  40e02d:	48 89 c7             	mov    %rax,%rdi
  40e030:	4c 89 74 24 10       	mov    %r14,0x10(%rsp)
  40e035:	e8 16 51 ff ff       	callq  403150 <strlen@plt>
  40e03a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40e03f:	49 89 c7             	mov    %rax,%r15
  40e042:	48 83 f8 0f          	cmp    $0xf,%rax
  40e046:	0f 87 bc 00 00 00    	ja     40e108 <_ZN11PerfControlC1Ev+0x158>
  40e04c:	48 83 f8 01          	cmp    $0x1,%rax
  40e050:	0f 85 a2 00 00 00    	jne    40e0f8 <_ZN11PerfControlC1Ev+0x148>
  40e056:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40e05b:	88 54 24 20          	mov    %dl,0x20(%rsp)
  40e05f:	4c 89 f2             	mov    %r14,%rdx
  40e062:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40e067:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40e06b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40e070:	be 32 05 41 00       	mov    $0x410532,%esi
  40e075:	e8 46 50 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40e07a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  40e07f:	41 89 c5             	mov    %eax,%r13d
  40e082:	4c 39 f7             	cmp    %r14,%rdi
  40e085:	74 0e                	je     40e095 <_ZN11PerfControlC1Ev+0xe5>
  40e087:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e08c:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40e090:	e8 3b 52 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40e095:	45 85 ed             	test   %r13d,%r13d
  40e098:	0f 85 6e ff ff ff    	jne    40e00c <_ZN11PerfControlC1Ev+0x5c>
  40e09e:	be 01 00 00 00       	mov    $0x1,%esi
  40e0a3:	48 89 ef             	mov    %rbp,%rdi
  40e0a6:	31 c0                	xor    %eax,%eax
  40e0a8:	e8 73 51 ff ff       	callq  403220 <open@plt>
  40e0ad:	89 03                	mov    %eax,(%rbx)
  40e0af:	31 f6                	xor    %esi,%esi
  40e0b1:	31 c0                	xor    %eax,%eax
  40e0b3:	4c 89 e7             	mov    %r12,%rdi
  40e0b6:	e8 65 51 ff ff       	callq  403220 <open@plt>
  40e0bb:	89 43 04             	mov    %eax,0x4(%rbx)
  40e0be:	0b 03                	or     (%rbx),%eax
  40e0c0:	0f 89 46 ff ff ff    	jns    40e00c <_ZN11PerfControlC1Ev+0x5c>
  40e0c6:	bf 10 00 00 00       	mov    $0x10,%edi
  40e0cb:	e8 90 50 ff ff       	callq  403160 <__cxa_allocate_exception@plt>
  40e0d0:	48 89 c7             	mov    %rax,%rdi
  40e0d3:	be 38 05 41 00       	mov    $0x410538,%esi
  40e0d8:	48 89 c5             	mov    %rax,%rbp
  40e0db:	e8 50 50 ff ff       	callq  403130 <_ZNSt13runtime_errorC1EPKc@plt>
  40e0e0:	ba e0 32 40 00       	mov    $0x4032e0,%edx
  40e0e5:	be a0 2d 41 00       	mov    $0x412da0,%esi
  40e0ea:	48 89 ef             	mov    %rbp,%rdi
  40e0ed:	e8 5e 53 ff ff       	callq  403450 <__cxa_throw@plt>
  40e0f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40e0f8:	48 85 c0             	test   %rax,%rax
  40e0fb:	75 48                	jne    40e145 <_ZN11PerfControlC1Ev+0x195>
  40e0fd:	4c 89 f2             	mov    %r14,%rdx
  40e100:	e9 5d ff ff ff       	jmpq   40e062 <_ZN11PerfControlC1Ev+0xb2>
  40e105:	0f 1f 00             	nopl   (%rax)
  40e108:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40e10d:	31 d2                	xor    %edx,%edx
  40e10f:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  40e114:	e8 67 53 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40e119:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40e11e:	48 89 c7             	mov    %rax,%rdi
  40e121:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40e126:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40e12b:	4c 89 fa             	mov    %r15,%rdx
  40e12e:	4c 89 ee             	mov    %r13,%rsi
  40e131:	e8 3a 51 ff ff       	callq  403270 <memcpy@plt>
  40e136:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40e13b:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  40e140:	e9 1d ff ff ff       	jmpq   40e062 <_ZN11PerfControlC1Ev+0xb2>
  40e145:	4c 89 f7             	mov    %r14,%rdi
  40e148:	eb e1                	jmp    40e12b <_ZN11PerfControlC1Ev+0x17b>
  40e14a:	49 89 c4             	mov    %rax,%r12
  40e14d:	48 89 ef             	mov    %rbp,%rdi
  40e150:	c5 f8 77             	vzeroupper 
  40e153:	e8 b8 50 ff ff       	callq  403210 <__cxa_free_exception@plt>
  40e158:	4c 89 e7             	mov    %r12,%rdi
  40e15b:	e8 10 53 ff ff       	callq  403470 <_Unwind_Resume@plt>

000000000040e160 <_ZN11PerfControlD1Ev>:
  40e160:	53                   	push   %rbx
  40e161:	48 89 fb             	mov    %rdi,%rbx
  40e164:	8b 3f                	mov    (%rdi),%edi
  40e166:	85 ff                	test   %edi,%edi
  40e168:	78 05                	js     40e16f <_ZN11PerfControlD1Ev+0xf>
  40e16a:	e8 61 53 ff ff       	callq  4034d0 <close@plt>
  40e16f:	8b 7b 04             	mov    0x4(%rbx),%edi
  40e172:	85 ff                	test   %edi,%edi
  40e174:	79 0a                	jns    40e180 <_ZN11PerfControlD1Ev+0x20>
  40e176:	5b                   	pop    %rbx
  40e177:	c3                   	retq   
  40e178:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40e17f:	00 
  40e180:	e8 4b 53 ff ff       	callq  4034d0 <close@plt>
  40e185:	5b                   	pop    %rbx
  40e186:	c3                   	retq   
  40e187:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40e18e:	00 00 

000000000040e190 <_ZN8Counters4openEi>:
  40e190:	41 57                	push   %r15
  40e192:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40e196:	41 56                	push   %r14
  40e198:	49 89 fe             	mov    %rdi,%r14
  40e19b:	41 55                	push   %r13
  40e19d:	41 54                	push   %r12
  40e19f:	55                   	push   %rbp
  40e1a0:	48 89 fd             	mov    %rdi,%rbp
  40e1a3:	53                   	push   %rbx
  40e1a4:	48 63 de             	movslq %esi,%rbx
  40e1a7:	4c 8d 24 9d 00 00 00 	lea    0x0(,%rbx,4),%r12
  40e1ae:	00 
  40e1af:	48 83 ec 48          	sub    $0x48,%rsp
  40e1b3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40e1b8:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40e1bc:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40e1c1:	48 8d 47 48          	lea    0x48(%rdi),%rax
  40e1c5:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40e1ca:	48 8d 47 60          	lea    0x60(%rdi),%rax
  40e1ce:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  40e1d3:	48 8d 47 78          	lea    0x78(%rdi),%rax
  40e1d7:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  40e1dd:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  40e1e1:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
  40e1e6:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40e1ec:	4c 8d 7c 24 18       	lea    0x18(%rsp),%r15
  40e1f1:	eb 5a                	jmp    40e24d <_ZN8Counters4openEi+0xbd>
  40e1f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40e1f8:	4c 39 ef             	cmp    %r13,%rdi
  40e1fb:	74 12                	je     40e20f <_ZN8Counters4openEi+0x7f>
  40e1fd:	be ff 00 00 00       	mov    $0xff,%esi
  40e202:	4c 89 14 24          	mov    %r10,(%rsp)
  40e206:	e8 85 4f ff ff       	callq  403190 <memset@plt>
  40e20b:	4c 8b 14 24          	mov    (%rsp),%r10
  40e20f:	48 89 da             	mov    %rbx,%rdx
  40e212:	4c 29 d2             	sub    %r10,%rdx
  40e215:	48 c1 e2 02          	shl    $0x2,%rdx
  40e219:	4d 8d 54 15 00       	lea    0x0(%r13,%rdx,1),%r10
  40e21e:	4d 39 d5             	cmp    %r10,%r13
  40e221:	74 15                	je     40e238 <_ZN8Counters4openEi+0xa8>
  40e223:	be ff 00 00 00       	mov    $0xff,%esi
  40e228:	4c 89 ef             	mov    %r13,%rdi
  40e22b:	4c 89 14 24          	mov    %r10,(%rsp)
  40e22f:	e8 5c 4f ff ff       	callq  403190 <memset@plt>
  40e234:	4c 8b 14 24          	mov    (%rsp),%r10
  40e238:	4d 89 56 08          	mov    %r10,0x8(%r14)
  40e23c:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40e241:	4c 39 f8             	cmp    %r15,%rax
  40e244:	74 72                	je     40e2b8 <_ZN8Counters4openEi+0x128>
  40e246:	4d 8b 37             	mov    (%r15),%r14
  40e249:	49 83 c7 08          	add    $0x8,%r15
  40e24d:	49 8b 3e             	mov    (%r14),%rdi
  40e250:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40e254:	48 29 fe             	sub    %rdi,%rsi
  40e257:	48 89 f0             	mov    %rsi,%rax
  40e25a:	48 c1 f8 02          	sar    $0x2,%rax
  40e25e:	48 39 c3             	cmp    %rax,%rbx
  40e261:	0f 87 b9 00 00 00    	ja     40e320 <_ZN8Counters4openEi+0x190>
  40e267:	4d 8b 6e 08          	mov    0x8(%r14),%r13
  40e26b:	4c 89 ea             	mov    %r13,%rdx
  40e26e:	48 29 fa             	sub    %rdi,%rdx
  40e271:	49 89 d2             	mov    %rdx,%r10
  40e274:	49 c1 fa 02          	sar    $0x2,%r10
  40e278:	4c 39 d3             	cmp    %r10,%rbx
  40e27b:	0f 87 77 ff ff ff    	ja     40e1f8 <_ZN8Counters4openEi+0x68>
  40e281:	49 89 fa             	mov    %rdi,%r10
  40e284:	48 85 db             	test   %rbx,%rbx
  40e287:	74 1d                	je     40e2a6 <_ZN8Counters4openEi+0x116>
  40e289:	4d 01 e2             	add    %r12,%r10
  40e28c:	4c 39 d7             	cmp    %r10,%rdi
  40e28f:	74 15                	je     40e2a6 <_ZN8Counters4openEi+0x116>
  40e291:	4c 89 e2             	mov    %r12,%rdx
  40e294:	be ff 00 00 00       	mov    $0xff,%esi
  40e299:	4c 89 14 24          	mov    %r10,(%rsp)
  40e29d:	e8 ee 4e ff ff       	callq  403190 <memset@plt>
  40e2a2:	4c 8b 14 24          	mov    (%rsp),%r10
  40e2a6:	4d 39 d5             	cmp    %r10,%r13
  40e2a9:	75 8d                	jne    40e238 <_ZN8Counters4openEi+0xa8>
  40e2ab:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40e2b0:	4c 39 f8             	cmp    %r15,%rax
  40e2b3:	75 91                	jne    40e246 <_ZN8Counters4openEi+0xb6>
  40e2b5:	0f 1f 00             	nopl   (%rax)
  40e2b8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40e2bc:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e2c1:	89 c2                	mov    %eax,%edx
  40e2c3:	31 c9                	xor    %ecx,%ecx
  40e2c5:	bf e0 d9 40 00       	mov    $0x40d9e0,%edi
  40e2ca:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
  40e2cf:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40e2d3:	e8 e8 50 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40e2d8:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  40e2dc:	48 8b 75 08          	mov    0x8(%rbp),%rsi
  40e2e0:	c6 85 90 00 00 00 01 	movb   $0x1,0x90(%rbp)
  40e2e7:	48 39 d6             	cmp    %rdx,%rsi
  40e2ea:	74 24                	je     40e310 <_ZN8Counters4openEi+0x180>
  40e2ec:	b9 01 00 00 00       	mov    $0x1,%ecx
  40e2f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40e2f8:	8b 02                	mov    (%rdx),%eax
  40e2fa:	48 83 c2 04          	add    $0x4,%rdx
  40e2fe:	f7 d0                	not    %eax
  40e300:	c1 e8 1f             	shr    $0x1f,%eax
  40e303:	21 c1                	and    %eax,%ecx
  40e305:	48 39 f2             	cmp    %rsi,%rdx
  40e308:	75 ee                	jne    40e2f8 <_ZN8Counters4openEi+0x168>
  40e30a:	88 8d 90 00 00 00    	mov    %cl,0x90(%rbp)
  40e310:	48 83 c4 48          	add    $0x48,%rsp
  40e314:	5b                   	pop    %rbx
  40e315:	5d                   	pop    %rbp
  40e316:	41 5c                	pop    %r12
  40e318:	41 5d                	pop    %r13
  40e31a:	41 5e                	pop    %r14
  40e31c:	41 5f                	pop    %r15
  40e31e:	c3                   	retq   
  40e31f:	90                   	nop
  40e320:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
  40e327:	ff ff 1f 
  40e32a:	48 39 c3             	cmp    %rax,%rbx
  40e32d:	77 7b                	ja     40e3aa <_ZN8Counters4openEi+0x21a>
  40e32f:	48 85 db             	test   %rbx,%rbx
  40e332:	74 5c                	je     40e390 <_ZN8Counters4openEi+0x200>
  40e334:	4c 89 e7             	mov    %r12,%rdi
  40e337:	e8 84 4f ff ff       	callq  4032c0 <_Znwm@plt>
  40e33c:	4e 8d 2c 20          	lea    (%rax,%r12,1),%r13
  40e340:	49 89 c2             	mov    %rax,%r10
  40e343:	49 39 c5             	cmp    %rax,%r13
  40e346:	74 53                	je     40e39b <_ZN8Counters4openEi+0x20b>
  40e348:	be ff 00 00 00       	mov    $0xff,%esi
  40e34d:	48 89 c7             	mov    %rax,%rdi
  40e350:	4c 89 e2             	mov    %r12,%rdx
  40e353:	e8 38 4e ff ff       	callq  403190 <memset@plt>
  40e358:	49 8b 3e             	mov    (%r14),%rdi
  40e35b:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40e35f:	49 89 c2             	mov    %rax,%r10
  40e362:	48 29 fe             	sub    %rdi,%rsi
  40e365:	4c 89 e8             	mov    %r13,%rax
  40e368:	c4 c1 f9 6e ca       	vmovq  %r10,%xmm1
  40e36d:	c4 c3 f1 22 c5 01    	vpinsrq $0x1,%r13,%xmm1,%xmm0
  40e373:	49 89 46 10          	mov    %rax,0x10(%r14)
  40e377:	c4 c1 7a 7f 06       	vmovdqu %xmm0,(%r14)
  40e37c:	48 85 ff             	test   %rdi,%rdi
  40e37f:	0f 84 b7 fe ff ff    	je     40e23c <_ZN8Counters4openEi+0xac>
  40e385:	e8 46 4f ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40e38a:	e9 ad fe ff ff       	jmpq   40e23c <_ZN8Counters4openEi+0xac>
  40e38f:	90                   	nop
  40e390:	4c 89 e0             	mov    %r12,%rax
  40e393:	45 31 d2             	xor    %r10d,%r10d
  40e396:	45 31 ed             	xor    %r13d,%r13d
  40e399:	eb cd                	jmp    40e368 <_ZN8Counters4openEi+0x1d8>
  40e39b:	49 8b 3e             	mov    (%r14),%rdi
  40e39e:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40e3a2:	4c 89 e8             	mov    %r13,%rax
  40e3a5:	48 29 fe             	sub    %rdi,%rsi
  40e3a8:	eb be                	jmp    40e368 <_ZN8Counters4openEi+0x1d8>
  40e3aa:	bf 60 05 41 00       	mov    $0x410560,%edi
  40e3af:	e8 bc 4d ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40e3b4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40e3bb:	00 00 00 
  40e3be:	66 90                	xchg   %ax,%ax

000000000040e3c0 <_ZNK8Counters4readEv>:
  40e3c0:	55                   	push   %rbp
  40e3c1:	48 89 e5             	mov    %rsp,%rbp
  40e3c4:	41 57                	push   %r15
  40e3c6:	41 56                	push   %r14
  40e3c8:	41 55                	push   %r13
  40e3ca:	41 54                	push   %r12
  40e3cc:	49 89 fc             	mov    %rdi,%r12
  40e3cf:	53                   	push   %rbx
  40e3d0:	48 83 ec 38          	sub    $0x38,%rsp
  40e3d4:	c5 fd 28 05 c4 23 00 	vmovapd 0x23c4(%rip),%ymm0        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  40e3db:	00 
  40e3dc:	48 8b 05 d5 23 00 00 	mov    0x23d5(%rip),%rax        # 4107b8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  40e3e3:	44 0f b6 b6 90 00 00 	movzbl 0x90(%rsi),%r14d
  40e3ea:	00 
  40e3eb:	c5 fd 11 47 08       	vmovupd %ymm0,0x8(%rdi)
  40e3f0:	c6 07 00             	movb   $0x0,(%rdi)
  40e3f3:	c5 fb 12 05 bd 23 00 	vmovddup 0x23bd(%rip),%xmm0        # 4107b8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  40e3fa:	00 
  40e3fb:	48 89 47 38          	mov    %rax,0x38(%rdi)
  40e3ff:	c7 47 40 00 00 00 00 	movl   $0x0,0x40(%rdi)
  40e406:	c5 f9 11 47 28       	vmovupd %xmm0,0x28(%rdi)
  40e40b:	45 84 f6             	test   %r14b,%r14b
  40e40e:	0f 84 44 01 00 00    	je     40e558 <_ZNK8Counters4readEv+0x198>
  40e414:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
  40e418:	48 8b 16             	mov    (%rsi),%rdx
  40e41b:	48 89 c8             	mov    %rcx,%rax
  40e41e:	48 29 d0             	sub    %rdx,%rax
  40e421:	48 c1 f8 02          	sar    $0x2,%rax
  40e425:	c6 07 01             	movb   $0x1,(%rdi)
  40e428:	89 47 40             	mov    %eax,0x40(%rdi)
  40e42b:	48 89 f3             	mov    %rsi,%rbx
  40e42e:	48 39 d1             	cmp    %rdx,%rcx
  40e431:	0f 84 8c 03 00 00    	je     40e7c3 <_ZNK8Counters4readEv+0x403>
  40e437:	45 31 ff             	xor    %r15d,%r15d
  40e43a:	c5 f8 77             	vzeroupper 
  40e43d:	eb 1e                	jmp    40e45d <_ZNK8Counters4readEv+0x9d>
  40e43f:	90                   	nop
  40e440:	45 31 f6             	xor    %r14d,%r14d
  40e443:	48 8b 13             	mov    (%rbx),%rdx
  40e446:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40e44a:	49 ff c7             	inc    %r15
  40e44d:	48 29 d0             	sub    %rdx,%rax
  40e450:	48 c1 f8 02          	sar    $0x2,%rax
  40e454:	49 39 c7             	cmp    %rax,%r15
  40e457:	0f 83 23 01 00 00    	jae    40e580 <_ZNK8Counters4readEv+0x1c0>
  40e45d:	42 8b 3c ba          	mov    (%rdx,%r15,4),%edi
  40e461:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e466:	ba 18 00 00 00       	mov    $0x18,%edx
  40e46b:	4e 8d 2c bd 00 00 00 	lea    0x0(,%r15,4),%r13
  40e472:	00 
  40e473:	e8 18 4f ff ff       	callq  403390 <read@plt>
  40e478:	48 83 f8 18          	cmp    $0x18,%rax
  40e47c:	0f 85 ee 00 00 00    	jne    40e570 <_ZNK8Counters4readEv+0x1b0>
  40e482:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e487:	48 85 c0             	test   %rax,%rax
  40e48a:	0f 84 e0 00 00 00    	je     40e570 <_ZNK8Counters4readEv+0x1b0>
  40e490:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e494:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e49a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  40e49f:	ba 01 00 00 00       	mov    $0x1,%edx
  40e4a4:	48 85 c0             	test   %rax,%rax
  40e4a7:	48 0f 45 d0          	cmovne %rax,%rdx
  40e4ab:	62 f1 f7 08 7b d8    	vcvtusi2sd %rax,%xmm1,%xmm3
  40e4b1:	62 f1 f7 08 7b c2    	vcvtusi2sd %rdx,%xmm1,%xmm0
  40e4b7:	48 8b 43 18          	mov    0x18(%rbx),%rax
  40e4bb:	42 8b 3c 28          	mov    (%rax,%r13,1),%edi
  40e4bf:	c5 eb 5e c0          	vdivsd %xmm0,%xmm2,%xmm0
  40e4c3:	c4 c1 7b 5d 44 24 18 	vminsd 0x18(%r12),%xmm0,%xmm0
  40e4ca:	c4 c1 7b 11 44 24 18 	vmovsd %xmm0,0x18(%r12)
  40e4d1:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e4d8:	02 
  40e4d9:	c5 fb 59 c3          	vmulsd %xmm3,%xmm0,%xmm0
  40e4dd:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e4e1:	c4 c1 7b 58 44 24 08 	vaddsd 0x8(%r12),%xmm0,%xmm0
  40e4e8:	c4 c1 7b 11 44 24 08 	vmovsd %xmm0,0x8(%r12)
  40e4ef:	85 ff                	test   %edi,%edi
  40e4f1:	0f 88 49 ff ff ff    	js     40e440 <_ZNK8Counters4readEv+0x80>
  40e4f7:	ba 18 00 00 00       	mov    $0x18,%edx
  40e4fc:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e501:	e8 8a 4e ff ff       	callq  403390 <read@plt>
  40e506:	48 83 f8 18          	cmp    $0x18,%rax
  40e50a:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e50e:	0f 85 2c ff ff ff    	jne    40e440 <_ZNK8Counters4readEv+0x80>
  40e514:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e519:	48 85 c0             	test   %rax,%rax
  40e51c:	0f 84 1e ff ff ff    	je     40e440 <_ZNK8Counters4readEv+0x80>
  40e522:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e529:	03 
  40e52a:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e531:	02 
  40e532:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e536:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e53c:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e540:	c4 c1 7b 58 44 24 10 	vaddsd 0x10(%r12),%xmm0,%xmm0
  40e547:	c4 c1 7b 11 44 24 10 	vmovsd %xmm0,0x10(%r12)
  40e54e:	e9 f0 fe ff ff       	jmpq   40e443 <_ZNK8Counters4readEv+0x83>
  40e553:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40e558:	c5 f8 77             	vzeroupper 
  40e55b:	48 83 c4 38          	add    $0x38,%rsp
  40e55f:	5b                   	pop    %rbx
  40e560:	4c 89 e0             	mov    %r12,%rax
  40e563:	41 5c                	pop    %r12
  40e565:	41 5d                	pop    %r13
  40e567:	41 5e                	pop    %r14
  40e569:	41 5f                	pop    %r15
  40e56b:	5d                   	pop    %rbp
  40e56c:	c3                   	retq   
  40e56d:	0f 1f 00             	nopl   (%rax)
  40e570:	41 c6 04 24 00       	movb   $0x0,(%r12)
  40e575:	eb e4                	jmp    40e55b <_ZNK8Counters4readEv+0x19b>
  40e577:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40e57e:	00 00 
  40e580:	45 84 f6             	test   %r14b,%r14b
  40e583:	75 0c                	jne    40e591 <_ZNK8Counters4readEv+0x1d1>
  40e585:	48 8b 05 2c 22 00 00 	mov    0x222c(%rip),%rax        # 4107b8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  40e58c:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  40e591:	4c 8b 7b 30          	mov    0x30(%rbx),%r15
  40e595:	4c 8b 73 38          	mov    0x38(%rbx),%r14
  40e599:	4d 39 f7             	cmp    %r14,%r15
  40e59c:	0f 84 29 02 00 00    	je     40e7cb <_ZNK8Counters4readEv+0x40b>
  40e5a2:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  40e5a6:	c5 fb 11 64 24 08    	vmovsd %xmm4,0x8(%rsp)
  40e5ac:	c4 c1 f9 7e e5       	vmovq  %xmm4,%r13
  40e5b1:	eb 5d                	jmp    40e610 <_ZNK8Counters4readEv+0x250>
  40e5b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40e5b8:	ba 18 00 00 00       	mov    $0x18,%edx
  40e5bd:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e5c2:	e8 c9 4d ff ff       	callq  403390 <read@plt>
  40e5c7:	48 83 f8 18          	cmp    $0x18,%rax
  40e5cb:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e5cf:	75 46                	jne    40e617 <_ZNK8Counters4readEv+0x257>
  40e5d1:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e5d6:	48 85 c0             	test   %rax,%rax
  40e5d9:	74 3c                	je     40e617 <_ZNK8Counters4readEv+0x257>
  40e5db:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e5e2:	03 
  40e5e3:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e5ea:	02 
  40e5eb:	c4 c1 f9 6e ed       	vmovq  %r13,%xmm5
  40e5f0:	49 83 c7 04          	add    $0x4,%r15
  40e5f4:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e5f8:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e5fe:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e602:	c5 d3 58 e0          	vaddsd %xmm0,%xmm5,%xmm4
  40e606:	c4 c1 f9 7e e5       	vmovq  %xmm4,%r13
  40e60b:	4d 39 fe             	cmp    %r15,%r14
  40e60e:	74 11                	je     40e621 <_ZNK8Counters4readEv+0x261>
  40e610:	41 8b 3f             	mov    (%r15),%edi
  40e613:	85 ff                	test   %edi,%edi
  40e615:	79 a1                	jns    40e5b8 <_ZNK8Counters4readEv+0x1f8>
  40e617:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40e61e:	00 f0 bf 
  40e621:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
  40e625:	4c 8b 73 50          	mov    0x50(%rbx),%r14
  40e629:	4d 89 6c 24 20       	mov    %r13,0x20(%r12)
  40e62e:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  40e633:	4d 39 f7             	cmp    %r14,%r15
  40e636:	75 60                	jne    40e698 <_ZNK8Counters4readEv+0x2d8>
  40e638:	eb 6f                	jmp    40e6a9 <_ZNK8Counters4readEv+0x2e9>
  40e63a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40e640:	ba 18 00 00 00       	mov    $0x18,%edx
  40e645:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e64a:	e8 41 4d ff ff       	callq  403390 <read@plt>
  40e64f:	48 83 f8 18          	cmp    $0x18,%rax
  40e653:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e657:	75 46                	jne    40e69f <_ZNK8Counters4readEv+0x2df>
  40e659:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e65e:	48 85 c0             	test   %rax,%rax
  40e661:	74 3c                	je     40e69f <_ZNK8Counters4readEv+0x2df>
  40e663:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e66a:	03 
  40e66b:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e672:	02 
  40e673:	c4 c1 f9 6e fd       	vmovq  %r13,%xmm7
  40e678:	49 83 c7 04          	add    $0x4,%r15
  40e67c:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e680:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e686:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e68a:	c5 c3 58 f0          	vaddsd %xmm0,%xmm7,%xmm6
  40e68e:	c4 c1 f9 7e f5       	vmovq  %xmm6,%r13
  40e693:	4d 39 fe             	cmp    %r15,%r14
  40e696:	74 11                	je     40e6a9 <_ZNK8Counters4readEv+0x2e9>
  40e698:	41 8b 3f             	mov    (%r15),%edi
  40e69b:	85 ff                	test   %edi,%edi
  40e69d:	79 a1                	jns    40e640 <_ZNK8Counters4readEv+0x280>
  40e69f:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40e6a6:	00 f0 bf 
  40e6a9:	4c 8b 7b 60          	mov    0x60(%rbx),%r15
  40e6ad:	4c 8b 73 68          	mov    0x68(%rbx),%r14
  40e6b1:	4d 89 6c 24 28       	mov    %r13,0x28(%r12)
  40e6b6:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  40e6bb:	4d 39 f7             	cmp    %r14,%r15
  40e6be:	75 60                	jne    40e720 <_ZNK8Counters4readEv+0x360>
  40e6c0:	eb 6f                	jmp    40e731 <_ZNK8Counters4readEv+0x371>
  40e6c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40e6c8:	ba 18 00 00 00       	mov    $0x18,%edx
  40e6cd:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e6d2:	e8 b9 4c ff ff       	callq  403390 <read@plt>
  40e6d7:	48 83 f8 18          	cmp    $0x18,%rax
  40e6db:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e6df:	75 46                	jne    40e727 <_ZNK8Counters4readEv+0x367>
  40e6e1:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e6e6:	48 85 c0             	test   %rax,%rax
  40e6e9:	74 3c                	je     40e727 <_ZNK8Counters4readEv+0x367>
  40e6eb:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e6f2:	03 
  40e6f3:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e6fa:	02 
  40e6fb:	c4 c1 f9 6e ed       	vmovq  %r13,%xmm5
  40e700:	49 83 c7 04          	add    $0x4,%r15
  40e704:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e708:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e70e:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e712:	c5 d3 58 e0          	vaddsd %xmm0,%xmm5,%xmm4
  40e716:	c4 c1 f9 7e e5       	vmovq  %xmm4,%r13
  40e71b:	4d 39 fe             	cmp    %r15,%r14
  40e71e:	74 11                	je     40e731 <_ZNK8Counters4readEv+0x371>
  40e720:	41 8b 3f             	mov    (%r15),%edi
  40e723:	85 ff                	test   %edi,%edi
  40e725:	79 a1                	jns    40e6c8 <_ZNK8Counters4readEv+0x308>
  40e727:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40e72e:	00 f0 bf 
  40e731:	4c 8b 73 78          	mov    0x78(%rbx),%r14
  40e735:	48 8b 9b 80 00 00 00 	mov    0x80(%rbx),%rbx
  40e73c:	4d 89 6c 24 30       	mov    %r13,0x30(%r12)
  40e741:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  40e746:	49 39 de             	cmp    %rbx,%r14
  40e749:	75 5d                	jne    40e7a8 <_ZNK8Counters4readEv+0x3e8>
  40e74b:	eb 6c                	jmp    40e7b9 <_ZNK8Counters4readEv+0x3f9>
  40e74d:	0f 1f 00             	nopl   (%rax)
  40e750:	ba 18 00 00 00       	mov    $0x18,%edx
  40e755:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e75a:	e8 31 4c ff ff       	callq  403390 <read@plt>
  40e75f:	48 83 f8 18          	cmp    $0x18,%rax
  40e763:	75 4a                	jne    40e7af <_ZNK8Counters4readEv+0x3ef>
  40e765:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e76a:	48 85 c0             	test   %rax,%rax
  40e76d:	74 40                	je     40e7af <_ZNK8Counters4readEv+0x3ef>
  40e76f:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e773:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e77a:	03 
  40e77b:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e782:	02 
  40e783:	c4 c1 f9 6e fd       	vmovq  %r13,%xmm7
  40e788:	49 83 c6 04          	add    $0x4,%r14
  40e78c:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e790:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e796:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e79a:	c5 c3 58 f0          	vaddsd %xmm0,%xmm7,%xmm6
  40e79e:	c4 c1 f9 7e f5       	vmovq  %xmm6,%r13
  40e7a3:	4c 39 f3             	cmp    %r14,%rbx
  40e7a6:	74 11                	je     40e7b9 <_ZNK8Counters4readEv+0x3f9>
  40e7a8:	41 8b 3e             	mov    (%r14),%edi
  40e7ab:	85 ff                	test   %edi,%edi
  40e7ad:	79 a1                	jns    40e750 <_ZNK8Counters4readEv+0x390>
  40e7af:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40e7b6:	00 f0 bf 
  40e7b9:	4d 89 6c 24 38       	mov    %r13,0x38(%r12)
  40e7be:	e9 98 fd ff ff       	jmpq   40e55b <_ZNK8Counters4readEv+0x19b>
  40e7c3:	c5 f8 77             	vzeroupper 
  40e7c6:	e9 c6 fd ff ff       	jmpq   40e591 <_ZNK8Counters4readEv+0x1d1>
  40e7cb:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
  40e7cf:	c5 fb 11 6c 24 08    	vmovsd %xmm5,0x8(%rsp)
  40e7d5:	c4 c1 f9 7e ed       	vmovq  %xmm5,%r13
  40e7da:	e9 42 fe ff ff       	jmpq   40e621 <_ZNK8Counters4readEv+0x261>
  40e7df:	90                   	nop

000000000040e7e0 <_ZN8CountersD1Ev>:
  40e7e0:	41 56                	push   %r14
  40e7e2:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40e7e6:	41 55                	push   %r13
  40e7e8:	49 89 fd             	mov    %rdi,%r13
  40e7eb:	41 54                	push   %r12
  40e7ed:	55                   	push   %rbp
  40e7ee:	53                   	push   %rbx
  40e7ef:	48 83 ec 30          	sub    $0x30,%rsp
  40e7f3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40e7f8:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40e7fc:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40e801:	48 8d 47 48          	lea    0x48(%rdi),%rax
  40e805:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40e80a:	48 8d 47 60          	lea    0x60(%rdi),%rax
  40e80e:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  40e813:	48 89 3c 24          	mov    %rdi,(%rsp)
  40e817:	48 8d 47 78          	lea    0x78(%rdi),%rax
  40e81b:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  40e821:	c5 f9 7f 44 24 20    	vmovdqa %xmm0,0x20(%rsp)
  40e827:	49 89 e4             	mov    %rsp,%r12
  40e82a:	4c 8d 74 24 30       	lea    0x30(%rsp),%r14
  40e82f:	90                   	nop
  40e830:	49 8b 04 24          	mov    (%r12),%rax
  40e834:	48 8b 18             	mov    (%rax),%rbx
  40e837:	48 8b 68 08          	mov    0x8(%rax),%rbp
  40e83b:	48 39 dd             	cmp    %rbx,%rbp
  40e83e:	74 14                	je     40e854 <_ZN8CountersD1Ev+0x74>
  40e840:	8b 3b                	mov    (%rbx),%edi
  40e842:	85 ff                	test   %edi,%edi
  40e844:	78 05                	js     40e84b <_ZN8CountersD1Ev+0x6b>
  40e846:	e8 85 4c ff ff       	callq  4034d0 <close@plt>
  40e84b:	48 83 c3 04          	add    $0x4,%rbx
  40e84f:	48 39 dd             	cmp    %rbx,%rbp
  40e852:	75 ec                	jne    40e840 <_ZN8CountersD1Ev+0x60>
  40e854:	49 83 c4 08          	add    $0x8,%r12
  40e858:	4d 39 e6             	cmp    %r12,%r14
  40e85b:	75 d3                	jne    40e830 <_ZN8CountersD1Ev+0x50>
  40e85d:	49 8b 7d 78          	mov    0x78(%r13),%rdi
  40e861:	48 85 ff             	test   %rdi,%rdi
  40e864:	74 0f                	je     40e875 <_ZN8CountersD1Ev+0x95>
  40e866:	49 8b b5 88 00 00 00 	mov    0x88(%r13),%rsi
  40e86d:	48 29 fe             	sub    %rdi,%rsi
  40e870:	e8 5b 4a ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40e875:	49 8b 7d 60          	mov    0x60(%r13),%rdi
  40e879:	48 85 ff             	test   %rdi,%rdi
  40e87c:	74 0c                	je     40e88a <_ZN8CountersD1Ev+0xaa>
  40e87e:	49 8b 75 70          	mov    0x70(%r13),%rsi
  40e882:	48 29 fe             	sub    %rdi,%rsi
  40e885:	e8 46 4a ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40e88a:	49 8b 7d 48          	mov    0x48(%r13),%rdi
  40e88e:	48 85 ff             	test   %rdi,%rdi
  40e891:	74 0c                	je     40e89f <_ZN8CountersD1Ev+0xbf>
  40e893:	49 8b 75 58          	mov    0x58(%r13),%rsi
  40e897:	48 29 fe             	sub    %rdi,%rsi
  40e89a:	e8 31 4a ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40e89f:	49 8b 7d 30          	mov    0x30(%r13),%rdi
  40e8a3:	48 85 ff             	test   %rdi,%rdi
  40e8a6:	74 0c                	je     40e8b4 <_ZN8CountersD1Ev+0xd4>
  40e8a8:	49 8b 75 40          	mov    0x40(%r13),%rsi
  40e8ac:	48 29 fe             	sub    %rdi,%rsi
  40e8af:	e8 1c 4a ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40e8b4:	49 8b 7d 18          	mov    0x18(%r13),%rdi
  40e8b8:	48 85 ff             	test   %rdi,%rdi
  40e8bb:	74 0c                	je     40e8c9 <_ZN8CountersD1Ev+0xe9>
  40e8bd:	49 8b 75 28          	mov    0x28(%r13),%rsi
  40e8c1:	48 29 fe             	sub    %rdi,%rsi
  40e8c4:	e8 07 4a ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40e8c9:	49 8b 7d 00          	mov    0x0(%r13),%rdi
  40e8cd:	48 85 ff             	test   %rdi,%rdi
  40e8d0:	74 18                	je     40e8ea <_ZN8CountersD1Ev+0x10a>
  40e8d2:	49 8b 75 10          	mov    0x10(%r13),%rsi
  40e8d6:	48 83 c4 30          	add    $0x30,%rsp
  40e8da:	5b                   	pop    %rbx
  40e8db:	5d                   	pop    %rbp
  40e8dc:	41 5c                	pop    %r12
  40e8de:	41 5d                	pop    %r13
  40e8e0:	48 29 fe             	sub    %rdi,%rsi
  40e8e3:	41 5e                	pop    %r14
  40e8e5:	e9 e6 49 ff ff       	jmpq   4032d0 <_ZdlPvm@plt>
  40e8ea:	48 83 c4 30          	add    $0x30,%rsp
  40e8ee:	5b                   	pop    %rbx
  40e8ef:	5d                   	pop    %rbp
  40e8f0:	41 5c                	pop    %r12
  40e8f2:	41 5d                	pop    %r13
  40e8f4:	41 5e                	pop    %r14
  40e8f6:	c3                   	retq   
  40e8f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40e8fe:	00 00 

000000000040e900 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>:
  40e900:	41 57                	push   %r15
  40e902:	49 89 ff             	mov    %rdi,%r15
  40e905:	41 56                	push   %r14
  40e907:	41 55                	push   %r13
  40e909:	49 89 f5             	mov    %rsi,%r13
  40e90c:	41 54                	push   %r12
  40e90e:	49 89 cc             	mov    %rcx,%r12
  40e911:	55                   	push   %rbp
  40e912:	48 89 d5             	mov    %rdx,%rbp
  40e915:	53                   	push   %rbx
  40e916:	48 83 ec 28          	sub    $0x28,%rsp
  40e91a:	44 89 44 24 0c       	mov    %r8d,0xc(%rsp)
  40e91f:	e8 1c 47 ff ff       	callq  403040 <__errno_location@plt>
  40e924:	44 8b 30             	mov    (%rax),%r14d
  40e927:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40e92d:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  40e931:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  40e936:	48 89 ef             	mov    %rbp,%rdi
  40e939:	48 89 c3             	mov    %rax,%rbx
  40e93c:	41 ff d7             	callq  *%r15
  40e93f:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40e944:	48 39 e9             	cmp    %rbp,%rcx
  40e947:	74 3f                	je     40e988 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x88>
  40e949:	8b 33                	mov    (%rbx),%esi
  40e94b:	83 fe 22             	cmp    $0x22,%esi
  40e94e:	74 30                	je     40e980 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  40e950:	ba 00 00 00 80       	mov    $0x80000000,%edx
  40e955:	48 01 c2             	add    %rax,%rdx
  40e958:	48 c1 ea 20          	shr    $0x20,%rdx
  40e95c:	75 22                	jne    40e980 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  40e95e:	4d 85 e4             	test   %r12,%r12
  40e961:	74 07                	je     40e96a <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x6a>
  40e963:	48 29 e9             	sub    %rbp,%rcx
  40e966:	49 89 0c 24          	mov    %rcx,(%r12)
  40e96a:	85 f6                	test   %esi,%esi
  40e96c:	75 03                	jne    40e971 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x71>
  40e96e:	44 89 33             	mov    %r14d,(%rbx)
  40e971:	48 83 c4 28          	add    $0x28,%rsp
  40e975:	5b                   	pop    %rbx
  40e976:	5d                   	pop    %rbp
  40e977:	41 5c                	pop    %r12
  40e979:	41 5d                	pop    %r13
  40e97b:	41 5e                	pop    %r14
  40e97d:	41 5f                	pop    %r15
  40e97f:	c3                   	retq   
  40e980:	4c 89 ef             	mov    %r13,%rdi
  40e983:	e8 18 4a ff ff       	callq  4033a0 <_ZSt20__throw_out_of_rangePKc@plt>
  40e988:	4c 89 ef             	mov    %r13,%rdi
  40e98b:	e8 20 48 ff ff       	callq  4031b0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40e990:	48 89 c7             	mov    %rax,%rdi
  40e993:	83 3b 00             	cmpl   $0x0,(%rbx)
  40e996:	75 03                	jne    40e99b <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x9b>
  40e998:	44 89 33             	mov    %r14d,(%rbx)
  40e99b:	c5 f8 77             	vzeroupper 
  40e99e:	e8 cd 4a ff ff       	callq  403470 <_Unwind_Resume@plt>
  40e9a3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40e9aa:	00 00 00 
  40e9ad:	0f 1f 00             	nopl   (%rax)

000000000040e9b0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>:
  40e9b0:	41 55                	push   %r13
  40e9b2:	49 89 f5             	mov    %rsi,%r13
  40e9b5:	41 54                	push   %r12
  40e9b7:	49 89 fc             	mov    %rdi,%r12
  40e9ba:	48 89 f7             	mov    %rsi,%rdi
  40e9bd:	55                   	push   %rbp
  40e9be:	48 89 d5             	mov    %rdx,%rbp
  40e9c1:	e8 8a 47 ff ff       	callq  403150 <strlen@plt>
  40e9c6:	49 89 c0             	mov    %rax,%r8
  40e9c9:	4c 89 e9             	mov    %r13,%rcx
  40e9cc:	31 d2                	xor    %edx,%edx
  40e9ce:	31 f6                	xor    %esi,%esi
  40e9d0:	48 89 ef             	mov    %rbp,%rdi
  40e9d3:	e8 08 4a ff ff       	callq  4033e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40e9d8:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
  40e9dd:	49 89 14 24          	mov    %rdx,(%r12)
  40e9e1:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40e9e5:	48 8b 08             	mov    (%rax),%rcx
  40e9e8:	48 39 d1             	cmp    %rdx,%rcx
  40e9eb:	74 33                	je     40ea20 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_+0x70>
  40e9ed:	49 89 0c 24          	mov    %rcx,(%r12)
  40e9f1:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40e9f5:	49 89 4c 24 10       	mov    %rcx,0x10(%r12)
  40e9fa:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40e9fe:	48 89 10             	mov    %rdx,(%rax)
  40ea01:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40ea08:	00 
  40ea09:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
  40ea0e:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40ea12:	4c 89 e0             	mov    %r12,%rax
  40ea15:	5d                   	pop    %rbp
  40ea16:	41 5c                	pop    %r12
  40ea18:	41 5d                	pop    %r13
  40ea1a:	c3                   	retq   
  40ea1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40ea20:	c5 fa 6f 40 10       	vmovdqu 0x10(%rax),%xmm0
  40ea25:	c4 c1 7a 7f 44 24 10 	vmovdqu %xmm0,0x10(%r12)
  40ea2c:	eb cc                	jmp    40e9fa <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_+0x4a>
  40ea2e:	66 90                	xchg   %ax,%ax

000000000040ea30 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>:
  40ea30:	41 55                	push   %r13
  40ea32:	49 89 d5             	mov    %rdx,%r13
  40ea35:	41 54                	push   %r12
  40ea37:	49 89 fc             	mov    %rdi,%r12
  40ea3a:	48 89 d7             	mov    %rdx,%rdi
  40ea3d:	55                   	push   %rbp
  40ea3e:	48 89 f5             	mov    %rsi,%rbp
  40ea41:	e8 0a 47 ff ff       	callq  403150 <strlen@plt>
  40ea46:	48 89 c2             	mov    %rax,%rdx
  40ea49:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40ea50:	ff ff 3f 
  40ea53:	48 2b 45 08          	sub    0x8(%rbp),%rax
  40ea57:	48 39 c2             	cmp    %rax,%rdx
  40ea5a:	77 62                	ja     40eabe <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_+0x8e>
  40ea5c:	4c 89 ee             	mov    %r13,%rsi
  40ea5f:	48 89 ef             	mov    %rbp,%rdi
  40ea62:	e8 89 46 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40ea67:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
  40ea6c:	49 89 14 24          	mov    %rdx,(%r12)
  40ea70:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40ea74:	48 8b 08             	mov    (%rax),%rcx
  40ea77:	48 39 d1             	cmp    %rdx,%rcx
  40ea7a:	74 34                	je     40eab0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_+0x80>
  40ea7c:	49 89 0c 24          	mov    %rcx,(%r12)
  40ea80:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40ea84:	49 89 4c 24 10       	mov    %rcx,0x10(%r12)
  40ea89:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40ea8d:	48 89 10             	mov    %rdx,(%rax)
  40ea90:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40ea97:	00 
  40ea98:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
  40ea9d:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40eaa1:	4c 89 e0             	mov    %r12,%rax
  40eaa4:	5d                   	pop    %rbp
  40eaa5:	41 5c                	pop    %r12
  40eaa7:	41 5d                	pop    %r13
  40eaa9:	c3                   	retq   
  40eaaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40eab0:	c5 fa 6f 40 10       	vmovdqu 0x10(%rax),%xmm0
  40eab5:	c4 c1 7a 7f 44 24 10 	vmovdqu %xmm0,0x10(%r12)
  40eabc:	eb cb                	jmp    40ea89 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_+0x59>
  40eabe:	bf 91 05 41 00       	mov    $0x410591,%edi
  40eac3:	e8 a8 46 ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40eac8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40eacf:	00 

000000000040ead0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_>:
  40ead0:	55                   	push   %rbp
  40ead1:	48 89 f0             	mov    %rsi,%rax
  40ead4:	48 89 e5             	mov    %rsp,%rbp
  40ead7:	41 55                	push   %r13
  40ead9:	41 54                	push   %r12
  40eadb:	49 89 d4             	mov    %rdx,%r12
  40eade:	53                   	push   %rbx
  40eadf:	48 89 fb             	mov    %rdi,%rbx
  40eae2:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40eae6:	48 8b 3f             	mov    (%rdi),%rdi
  40eae9:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40eaed:	48 29 fe             	sub    %rdi,%rsi
  40eaf0:	48 89 f2             	mov    %rsi,%rdx
  40eaf3:	48 c1 fa 03          	sar    $0x3,%rdx
  40eaf7:	48 39 c2             	cmp    %rax,%rdx
  40eafa:	0f 82 c8 01 00 00    	jb     40ecc8 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1f8>
  40eb00:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  40eb04:	48 89 ce             	mov    %rcx,%rsi
  40eb07:	48 29 fe             	sub    %rdi,%rsi
  40eb0a:	48 c1 fe 03          	sar    $0x3,%rsi
  40eb0e:	48 39 f0             	cmp    %rsi,%rax
  40eb11:	0f 86 09 01 00 00    	jbe    40ec20 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x150>
  40eb17:	4d 8b 0c 24          	mov    (%r12),%r9
  40eb1b:	48 39 cf             	cmp    %rcx,%rdi
  40eb1e:	74 6e                	je     40eb8e <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xbe>
  40eb20:	4c 8d 41 f8          	lea    -0x8(%rcx),%r8
  40eb24:	49 29 f8             	sub    %rdi,%r8
  40eb27:	4d 89 c2             	mov    %r8,%r10
  40eb2a:	49 c1 ea 03          	shr    $0x3,%r10
  40eb2e:	48 89 fa             	mov    %rdi,%rdx
  40eb31:	49 ff c2             	inc    %r10
  40eb34:	49 83 f8 10          	cmp    $0x10,%r8
  40eb38:	76 33                	jbe    40eb6d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x9d>
  40eb3a:	4d 89 d0             	mov    %r10,%r8
  40eb3d:	49 c1 e8 02          	shr    $0x2,%r8
  40eb41:	49 c1 e0 05          	shl    $0x5,%r8
  40eb45:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40eb4b:	49 01 f8             	add    %rdi,%r8
  40eb4e:	66 90                	xchg   %ax,%ax
  40eb50:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40eb54:	48 83 c2 20          	add    $0x20,%rdx
  40eb58:	49 39 d0             	cmp    %rdx,%r8
  40eb5b:	75 f3                	jne    40eb50 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x80>
  40eb5d:	4c 89 d2             	mov    %r10,%rdx
  40eb60:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  40eb64:	48 8d 3c d7          	lea    (%rdi,%rdx,8),%rdi
  40eb68:	49 39 d2             	cmp    %rdx,%r10
  40eb6b:	74 1d                	je     40eb8a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40eb6d:	48 8d 57 08          	lea    0x8(%rdi),%rdx
  40eb71:	4c 89 0f             	mov    %r9,(%rdi)
  40eb74:	48 39 d1             	cmp    %rdx,%rcx
  40eb77:	74 11                	je     40eb8a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40eb79:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40eb7d:	4c 89 4f 08          	mov    %r9,0x8(%rdi)
  40eb81:	48 39 d1             	cmp    %rdx,%rcx
  40eb84:	74 04                	je     40eb8a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40eb86:	4c 89 4f 10          	mov    %r9,0x10(%rdi)
  40eb8a:	4d 8b 0c 24          	mov    (%r12),%r9
  40eb8e:	48 29 f0             	sub    %rsi,%rax
  40eb91:	48 c1 e0 03          	shl    $0x3,%rax
  40eb95:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
  40eb99:	48 39 f9             	cmp    %rdi,%rcx
  40eb9c:	74 6c                	je     40ec0a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40eb9e:	48 83 e8 08          	sub    $0x8,%rax
  40eba2:	48 89 c6             	mov    %rax,%rsi
  40eba5:	48 c1 ee 03          	shr    $0x3,%rsi
  40eba9:	48 89 ca             	mov    %rcx,%rdx
  40ebac:	48 ff c6             	inc    %rsi
  40ebaf:	48 83 f8 10          	cmp    $0x10,%rax
  40ebb3:	76 38                	jbe    40ebed <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x11d>
  40ebb5:	48 89 f0             	mov    %rsi,%rax
  40ebb8:	48 c1 e8 02          	shr    $0x2,%rax
  40ebbc:	48 c1 e0 05          	shl    $0x5,%rax
  40ebc0:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40ebc6:	48 01 c8             	add    %rcx,%rax
  40ebc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40ebd0:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40ebd4:	48 83 c2 20          	add    $0x20,%rdx
  40ebd8:	48 39 d0             	cmp    %rdx,%rax
  40ebdb:	75 f3                	jne    40ebd0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x100>
  40ebdd:	48 89 f0             	mov    %rsi,%rax
  40ebe0:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40ebe4:	48 8d 0c c1          	lea    (%rcx,%rax,8),%rcx
  40ebe8:	48 39 c6             	cmp    %rax,%rsi
  40ebeb:	74 1d                	je     40ec0a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40ebed:	48 8d 41 08          	lea    0x8(%rcx),%rax
  40ebf1:	4c 89 09             	mov    %r9,(%rcx)
  40ebf4:	48 39 c7             	cmp    %rax,%rdi
  40ebf7:	74 11                	je     40ec0a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40ebf9:	48 8d 41 10          	lea    0x10(%rcx),%rax
  40ebfd:	4c 89 49 08          	mov    %r9,0x8(%rcx)
  40ec01:	48 39 c7             	cmp    %rax,%rdi
  40ec04:	74 04                	je     40ec0a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40ec06:	4c 89 49 10          	mov    %r9,0x10(%rcx)
  40ec0a:	48 89 7b 08          	mov    %rdi,0x8(%rbx)
  40ec0e:	c5 f8 77             	vzeroupper 
  40ec11:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40ec15:	5b                   	pop    %rbx
  40ec16:	41 5c                	pop    %r12
  40ec18:	41 5d                	pop    %r13
  40ec1a:	5d                   	pop    %rbp
  40ec1b:	c3                   	retq   
  40ec1c:	0f 1f 40 00          	nopl   0x0(%rax)
  40ec20:	48 89 fe             	mov    %rdi,%rsi
  40ec23:	48 85 c0             	test   %rax,%rax
  40ec26:	0f 84 85 00 00 00    	je     40ecb1 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40ec2c:	48 c1 e0 03          	shl    $0x3,%rax
  40ec30:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
  40ec34:	4d 8b 0c 24          	mov    (%r12),%r9
  40ec38:	48 39 f7             	cmp    %rsi,%rdi
  40ec3b:	74 74                	je     40ecb1 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40ec3d:	48 83 e8 08          	sub    $0x8,%rax
  40ec41:	49 89 c0             	mov    %rax,%r8
  40ec44:	49 c1 e8 03          	shr    $0x3,%r8
  40ec48:	48 89 fa             	mov    %rdi,%rdx
  40ec4b:	49 ff c0             	inc    %r8
  40ec4e:	48 83 f8 10          	cmp    $0x10,%rax
  40ec52:	76 40                	jbe    40ec94 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1c4>
  40ec54:	4c 89 c0             	mov    %r8,%rax
  40ec57:	48 c1 e8 02          	shr    $0x2,%rax
  40ec5b:	48 c1 e0 05          	shl    $0x5,%rax
  40ec5f:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40ec65:	48 01 f8             	add    %rdi,%rax
  40ec68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40ec6f:	00 
  40ec70:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40ec74:	48 83 c2 20          	add    $0x20,%rdx
  40ec78:	48 39 d0             	cmp    %rdx,%rax
  40ec7b:	75 f3                	jne    40ec70 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1a0>
  40ec7d:	4c 89 c0             	mov    %r8,%rax
  40ec80:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40ec84:	48 8d 3c c7          	lea    (%rdi,%rax,8),%rdi
  40ec88:	49 39 c0             	cmp    %rax,%r8
  40ec8b:	0f 84 1f 01 00 00    	je     40edb0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2e0>
  40ec91:	c5 f8 77             	vzeroupper 
  40ec94:	48 8d 47 08          	lea    0x8(%rdi),%rax
  40ec98:	4c 89 0f             	mov    %r9,(%rdi)
  40ec9b:	48 39 c6             	cmp    %rax,%rsi
  40ec9e:	74 11                	je     40ecb1 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40eca0:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40eca4:	4c 89 4f 08          	mov    %r9,0x8(%rdi)
  40eca8:	48 39 c6             	cmp    %rax,%rsi
  40ecab:	74 04                	je     40ecb1 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40ecad:	4c 89 4f 10          	mov    %r9,0x10(%rdi)
  40ecb1:	48 39 f1             	cmp    %rsi,%rcx
  40ecb4:	74 04                	je     40ecba <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1ea>
  40ecb6:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  40ecba:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40ecbe:	5b                   	pop    %rbx
  40ecbf:	41 5c                	pop    %r12
  40ecc1:	41 5d                	pop    %r13
  40ecc3:	5d                   	pop    %rbp
  40ecc4:	c3                   	retq   
  40ecc5:	0f 1f 00             	nopl   (%rax)
  40ecc8:	48 89 c1             	mov    %rax,%rcx
  40eccb:	48 c1 e9 3c          	shr    $0x3c,%rcx
  40eccf:	0f 85 f0 00 00 00    	jne    40edc5 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2f5>
  40ecd5:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  40ecdc:	00 
  40ecdd:	48 85 c0             	test   %rax,%rax
  40ece0:	0f 84 c2 00 00 00    	je     40eda8 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2d8>
  40ece6:	4c 89 ef             	mov    %r13,%rdi
  40ece9:	e8 d2 45 ff ff       	callq  4032c0 <_Znwm@plt>
  40ecee:	4e 8d 04 28          	lea    (%rax,%r13,1),%r8
  40ecf2:	49 8b 3c 24          	mov    (%r12),%rdi
  40ecf6:	48 89 c2             	mov    %rax,%rdx
  40ecf9:	49 39 c0             	cmp    %rax,%r8
  40ecfc:	74 6f                	je     40ed6d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40ecfe:	49 83 ed 08          	sub    $0x8,%r13
  40ed02:	4c 89 ee             	mov    %r13,%rsi
  40ed05:	48 c1 ee 03          	shr    $0x3,%rsi
  40ed09:	48 ff c6             	inc    %rsi
  40ed0c:	49 83 fd 10          	cmp    $0x10,%r13
  40ed10:	76 3e                	jbe    40ed50 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x280>
  40ed12:	48 89 f1             	mov    %rsi,%rcx
  40ed15:	48 c1 e9 02          	shr    $0x2,%rcx
  40ed19:	48 c1 e1 05          	shl    $0x5,%rcx
  40ed1d:	62 f2 fd 28 7c c7    	vpbroadcastq %rdi,%ymm0
  40ed23:	48 01 c1             	add    %rax,%rcx
  40ed26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40ed2d:	00 00 00 
  40ed30:	c5 fe 7f 00          	vmovdqu %ymm0,(%rax)
  40ed34:	48 83 c0 20          	add    $0x20,%rax
  40ed38:	48 39 c1             	cmp    %rax,%rcx
  40ed3b:	75 f3                	jne    40ed30 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x260>
  40ed3d:	48 89 f1             	mov    %rsi,%rcx
  40ed40:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
  40ed44:	48 8d 04 ca          	lea    (%rdx,%rcx,8),%rax
  40ed48:	48 39 f1             	cmp    %rsi,%rcx
  40ed4b:	74 73                	je     40edc0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2f0>
  40ed4d:	c5 f8 77             	vzeroupper 
  40ed50:	48 8d 48 08          	lea    0x8(%rax),%rcx
  40ed54:	48 89 38             	mov    %rdi,(%rax)
  40ed57:	49 39 c8             	cmp    %rcx,%r8
  40ed5a:	74 11                	je     40ed6d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40ed5c:	48 8d 48 10          	lea    0x10(%rax),%rcx
  40ed60:	48 89 78 08          	mov    %rdi,0x8(%rax)
  40ed64:	49 39 c8             	cmp    %rcx,%r8
  40ed67:	74 04                	je     40ed6d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40ed69:	48 89 78 10          	mov    %rdi,0x10(%rax)
  40ed6d:	48 8b 3b             	mov    (%rbx),%rdi
  40ed70:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40ed74:	48 29 fe             	sub    %rdi,%rsi
  40ed77:	c4 e1 f9 6e ca       	vmovq  %rdx,%xmm1
  40ed7c:	c4 c3 f1 22 c0 01    	vpinsrq $0x1,%r8,%xmm1,%xmm0
  40ed82:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  40ed86:	c5 fa 7f 03          	vmovdqu %xmm0,(%rbx)
  40ed8a:	48 85 ff             	test   %rdi,%rdi
  40ed8d:	0f 84 27 ff ff ff    	je     40ecba <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1ea>
  40ed93:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40ed97:	5b                   	pop    %rbx
  40ed98:	41 5c                	pop    %r12
  40ed9a:	41 5d                	pop    %r13
  40ed9c:	5d                   	pop    %rbp
  40ed9d:	e9 2e 45 ff ff       	jmpq   4032d0 <_ZdlPvm@plt>
  40eda2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40eda8:	31 d2                	xor    %edx,%edx
  40edaa:	45 31 c0             	xor    %r8d,%r8d
  40edad:	eb c8                	jmp    40ed77 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2a7>
  40edaf:	90                   	nop
  40edb0:	c5 f8 77             	vzeroupper 
  40edb3:	e9 f9 fe ff ff       	jmpq   40ecb1 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40edb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40edbf:	00 
  40edc0:	c5 f8 77             	vzeroupper 
  40edc3:	eb a8                	jmp    40ed6d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40edc5:	bf 60 05 41 00       	mov    $0x410560,%edi
  40edca:	e8 a1 43 ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40edcf:	90                   	nop

000000000040edd0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd>:
  40edd0:	55                   	push   %rbp
  40edd1:	48 89 f0             	mov    %rsi,%rax
  40edd4:	48 89 e5             	mov    %rsp,%rbp
  40edd7:	41 55                	push   %r13
  40edd9:	41 54                	push   %r12
  40eddb:	49 89 d4             	mov    %rdx,%r12
  40edde:	53                   	push   %rbx
  40eddf:	48 89 fb             	mov    %rdi,%rbx
  40ede2:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40ede6:	48 8b 3f             	mov    (%rdi),%rdi
  40ede9:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40eded:	48 29 fe             	sub    %rdi,%rsi
  40edf0:	48 89 f2             	mov    %rsi,%rdx
  40edf3:	48 c1 fa 03          	sar    $0x3,%rdx
  40edf7:	48 39 c2             	cmp    %rax,%rdx
  40edfa:	0f 82 d0 01 00 00    	jb     40efd0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x200>
  40ee00:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  40ee04:	48 89 ce             	mov    %rcx,%rsi
  40ee07:	48 29 fe             	sub    %rdi,%rsi
  40ee0a:	48 c1 fe 03          	sar    $0x3,%rsi
  40ee0e:	48 39 f0             	cmp    %rsi,%rax
  40ee11:	0f 86 09 01 00 00    	jbe    40ef20 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x150>
  40ee17:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  40ee1d:	48 39 cf             	cmp    %rcx,%rdi
  40ee20:	74 71                	je     40ee93 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xc3>
  40ee22:	4c 8d 41 f8          	lea    -0x8(%rcx),%r8
  40ee26:	49 29 f8             	sub    %rdi,%r8
  40ee29:	4d 89 c1             	mov    %r8,%r9
  40ee2c:	49 c1 e9 03          	shr    $0x3,%r9
  40ee30:	48 89 fa             	mov    %rdi,%rdx
  40ee33:	49 ff c1             	inc    %r9
  40ee36:	49 83 f8 10          	cmp    $0x10,%r8
  40ee3a:	76 31                	jbe    40ee6d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x9d>
  40ee3c:	4d 89 c8             	mov    %r9,%r8
  40ee3f:	49 c1 e8 02          	shr    $0x2,%r8
  40ee43:	49 c1 e0 05          	shl    $0x5,%r8
  40ee47:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  40ee4c:	49 01 f8             	add    %rdi,%r8
  40ee4f:	90                   	nop
  40ee50:	c5 fd 11 0a          	vmovupd %ymm1,(%rdx)
  40ee54:	48 83 c2 20          	add    $0x20,%rdx
  40ee58:	49 39 d0             	cmp    %rdx,%r8
  40ee5b:	75 f3                	jne    40ee50 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x80>
  40ee5d:	4c 89 ca             	mov    %r9,%rdx
  40ee60:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  40ee64:	48 8d 3c d7          	lea    (%rdi,%rdx,8),%rdi
  40ee68:	49 39 d1             	cmp    %rdx,%r9
  40ee6b:	74 20                	je     40ee8d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40ee6d:	48 8d 57 08          	lea    0x8(%rdi),%rdx
  40ee71:	c5 fb 11 07          	vmovsd %xmm0,(%rdi)
  40ee75:	48 39 d1             	cmp    %rdx,%rcx
  40ee78:	74 13                	je     40ee8d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40ee7a:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40ee7e:	c5 fb 11 47 08       	vmovsd %xmm0,0x8(%rdi)
  40ee83:	48 39 d1             	cmp    %rdx,%rcx
  40ee86:	74 05                	je     40ee8d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40ee88:	c5 fb 11 47 10       	vmovsd %xmm0,0x10(%rdi)
  40ee8d:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  40ee93:	48 29 f0             	sub    %rsi,%rax
  40ee96:	48 c1 e0 03          	shl    $0x3,%rax
  40ee9a:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
  40ee9e:	48 39 f9             	cmp    %rdi,%rcx
  40eea1:	74 6a                	je     40ef0d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40eea3:	48 83 e8 08          	sub    $0x8,%rax
  40eea7:	48 89 c6             	mov    %rax,%rsi
  40eeaa:	48 c1 ee 03          	shr    $0x3,%rsi
  40eeae:	48 89 ca             	mov    %rcx,%rdx
  40eeb1:	48 ff c6             	inc    %rsi
  40eeb4:	48 83 f8 10          	cmp    $0x10,%rax
  40eeb8:	76 33                	jbe    40eeed <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x11d>
  40eeba:	48 89 f0             	mov    %rsi,%rax
  40eebd:	48 c1 e8 02          	shr    $0x2,%rax
  40eec1:	48 c1 e0 05          	shl    $0x5,%rax
  40eec5:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  40eeca:	48 01 c8             	add    %rcx,%rax
  40eecd:	0f 1f 00             	nopl   (%rax)
  40eed0:	c5 fd 11 0a          	vmovupd %ymm1,(%rdx)
  40eed4:	48 83 c2 20          	add    $0x20,%rdx
  40eed8:	48 39 d0             	cmp    %rdx,%rax
  40eedb:	75 f3                	jne    40eed0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x100>
  40eedd:	48 89 f0             	mov    %rsi,%rax
  40eee0:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40eee4:	48 8d 0c c1          	lea    (%rcx,%rax,8),%rcx
  40eee8:	48 39 c6             	cmp    %rax,%rsi
  40eeeb:	74 20                	je     40ef0d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40eeed:	48 8d 41 08          	lea    0x8(%rcx),%rax
  40eef1:	c5 fb 11 01          	vmovsd %xmm0,(%rcx)
  40eef5:	48 39 c7             	cmp    %rax,%rdi
  40eef8:	74 13                	je     40ef0d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40eefa:	48 8d 41 10          	lea    0x10(%rcx),%rax
  40eefe:	c5 fb 11 41 08       	vmovsd %xmm0,0x8(%rcx)
  40ef03:	48 39 c7             	cmp    %rax,%rdi
  40ef06:	74 05                	je     40ef0d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40ef08:	c5 fb 11 41 10       	vmovsd %xmm0,0x10(%rcx)
  40ef0d:	48 89 7b 08          	mov    %rdi,0x8(%rbx)
  40ef11:	c5 f8 77             	vzeroupper 
  40ef14:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40ef18:	5b                   	pop    %rbx
  40ef19:	41 5c                	pop    %r12
  40ef1b:	41 5d                	pop    %r13
  40ef1d:	5d                   	pop    %rbp
  40ef1e:	c3                   	retq   
  40ef1f:	90                   	nop
  40ef20:	48 89 fe             	mov    %rdi,%rsi
  40ef23:	48 85 c0             	test   %rax,%rax
  40ef26:	0f 84 88 00 00 00    	je     40efb4 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40ef2c:	48 c1 e0 03          	shl    $0x3,%rax
  40ef30:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
  40ef34:	c4 c1 7b 10 0c 24    	vmovsd (%r12),%xmm1
  40ef3a:	48 39 f7             	cmp    %rsi,%rdi
  40ef3d:	74 75                	je     40efb4 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40ef3f:	48 83 e8 08          	sub    $0x8,%rax
  40ef43:	49 89 c0             	mov    %rax,%r8
  40ef46:	49 c1 e8 03          	shr    $0x3,%r8
  40ef4a:	48 89 fa             	mov    %rdi,%rdx
  40ef4d:	49 ff c0             	inc    %r8
  40ef50:	48 83 f8 10          	cmp    $0x10,%rax
  40ef54:	76 3e                	jbe    40ef94 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1c4>
  40ef56:	4c 89 c0             	mov    %r8,%rax
  40ef59:	48 c1 e8 02          	shr    $0x2,%rax
  40ef5d:	48 c1 e0 05          	shl    $0x5,%rax
  40ef61:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  40ef66:	48 01 f8             	add    %rdi,%rax
  40ef69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40ef70:	c5 fd 11 02          	vmovupd %ymm0,(%rdx)
  40ef74:	48 83 c2 20          	add    $0x20,%rdx
  40ef78:	48 39 d0             	cmp    %rdx,%rax
  40ef7b:	75 f3                	jne    40ef70 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1a0>
  40ef7d:	4c 89 c0             	mov    %r8,%rax
  40ef80:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40ef84:	48 8d 3c c7          	lea    (%rdi,%rax,8),%rdi
  40ef88:	49 39 c0             	cmp    %rax,%r8
  40ef8b:	0f 84 1f 01 00 00    	je     40f0b0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2e0>
  40ef91:	c5 f8 77             	vzeroupper 
  40ef94:	48 8d 47 08          	lea    0x8(%rdi),%rax
  40ef98:	c5 fb 11 0f          	vmovsd %xmm1,(%rdi)
  40ef9c:	48 39 c6             	cmp    %rax,%rsi
  40ef9f:	74 13                	je     40efb4 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40efa1:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40efa5:	c5 fb 11 4f 08       	vmovsd %xmm1,0x8(%rdi)
  40efaa:	48 39 c6             	cmp    %rax,%rsi
  40efad:	74 05                	je     40efb4 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40efaf:	c5 fb 11 4f 10       	vmovsd %xmm1,0x10(%rdi)
  40efb4:	48 39 f1             	cmp    %rsi,%rcx
  40efb7:	74 04                	je     40efbd <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1ed>
  40efb9:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  40efbd:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40efc1:	5b                   	pop    %rbx
  40efc2:	41 5c                	pop    %r12
  40efc4:	41 5d                	pop    %r13
  40efc6:	5d                   	pop    %rbp
  40efc7:	c3                   	retq   
  40efc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40efcf:	00 
  40efd0:	48 89 c1             	mov    %rax,%rcx
  40efd3:	48 c1 e9 3c          	shr    $0x3c,%rcx
  40efd7:	0f 85 e8 00 00 00    	jne    40f0c5 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2f5>
  40efdd:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  40efe4:	00 
  40efe5:	48 85 c0             	test   %rax,%rax
  40efe8:	0f 84 ba 00 00 00    	je     40f0a8 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2d8>
  40efee:	4c 89 ef             	mov    %r13,%rdi
  40eff1:	e8 ca 42 ff ff       	callq  4032c0 <_Znwm@plt>
  40eff6:	4e 8d 04 28          	lea    (%rax,%r13,1),%r8
  40effa:	c4 c1 7b 10 0c 24    	vmovsd (%r12),%xmm1
  40f000:	48 89 c2             	mov    %rax,%rdx
  40f003:	49 39 c0             	cmp    %rax,%r8
  40f006:	74 68                	je     40f070 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40f008:	49 83 ed 08          	sub    $0x8,%r13
  40f00c:	4c 89 ee             	mov    %r13,%rsi
  40f00f:	48 c1 ee 03          	shr    $0x3,%rsi
  40f013:	48 ff c6             	inc    %rsi
  40f016:	49 83 fd 10          	cmp    $0x10,%r13
  40f01a:	76 34                	jbe    40f050 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x280>
  40f01c:	48 89 f1             	mov    %rsi,%rcx
  40f01f:	48 c1 e9 02          	shr    $0x2,%rcx
  40f023:	48 c1 e1 05          	shl    $0x5,%rcx
  40f027:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  40f02c:	48 01 c1             	add    %rax,%rcx
  40f02f:	90                   	nop
  40f030:	c5 fd 11 00          	vmovupd %ymm0,(%rax)
  40f034:	48 83 c0 20          	add    $0x20,%rax
  40f038:	48 39 c1             	cmp    %rax,%rcx
  40f03b:	75 f3                	jne    40f030 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x260>
  40f03d:	48 89 f1             	mov    %rsi,%rcx
  40f040:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
  40f044:	48 8d 04 ca          	lea    (%rdx,%rcx,8),%rax
  40f048:	48 39 f1             	cmp    %rsi,%rcx
  40f04b:	74 73                	je     40f0c0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2f0>
  40f04d:	c5 f8 77             	vzeroupper 
  40f050:	48 8d 48 08          	lea    0x8(%rax),%rcx
  40f054:	c5 fb 11 08          	vmovsd %xmm1,(%rax)
  40f058:	49 39 c8             	cmp    %rcx,%r8
  40f05b:	74 13                	je     40f070 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40f05d:	48 8d 48 10          	lea    0x10(%rax),%rcx
  40f061:	c5 fb 11 48 08       	vmovsd %xmm1,0x8(%rax)
  40f066:	49 39 c8             	cmp    %rcx,%r8
  40f069:	74 05                	je     40f070 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40f06b:	c5 fb 11 48 10       	vmovsd %xmm1,0x10(%rax)
  40f070:	48 8b 3b             	mov    (%rbx),%rdi
  40f073:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40f077:	48 29 fe             	sub    %rdi,%rsi
  40f07a:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
  40f07f:	c4 c3 e9 22 c0 01    	vpinsrq $0x1,%r8,%xmm2,%xmm0
  40f085:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  40f089:	c5 fa 7f 03          	vmovdqu %xmm0,(%rbx)
  40f08d:	48 85 ff             	test   %rdi,%rdi
  40f090:	0f 84 27 ff ff ff    	je     40efbd <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1ed>
  40f096:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40f09a:	5b                   	pop    %rbx
  40f09b:	41 5c                	pop    %r12
  40f09d:	41 5d                	pop    %r13
  40f09f:	5d                   	pop    %rbp
  40f0a0:	e9 2b 42 ff ff       	jmpq   4032d0 <_ZdlPvm@plt>
  40f0a5:	0f 1f 00             	nopl   (%rax)
  40f0a8:	31 d2                	xor    %edx,%edx
  40f0aa:	45 31 c0             	xor    %r8d,%r8d
  40f0ad:	eb cb                	jmp    40f07a <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2aa>
  40f0af:	90                   	nop
  40f0b0:	c5 f8 77             	vzeroupper 
  40f0b3:	e9 fc fe ff ff       	jmpq   40efb4 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40f0b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40f0bf:	00 
  40f0c0:	c5 f8 77             	vzeroupper 
  40f0c3:	eb ab                	jmp    40f070 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40f0c5:	bf 60 05 41 00       	mov    $0x410560,%edi
  40f0ca:	e8 a1 40 ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40f0cf:	90                   	nop

000000000040f0d0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>:
  40f0d0:	c4 e2 7d 59 1d 57 16 	vpbroadcastq 0x1657(%rip),%ymm3        # 410730 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  40f0d7:	00 00 
  40f0d9:	c4 e2 7d 59 25 56 16 	vpbroadcastq 0x1656(%rip),%ymm4        # 410738 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  40f0e0:	00 00 
  40f0e2:	c4 e2 7d 59 2d 55 16 	vpbroadcastq 0x1655(%rip),%ymm5        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x180>
  40f0e9:	00 00 
  40f0eb:	c4 e2 7d 59 35 54 16 	vpbroadcastq 0x1654(%rip),%ymm6        # 410748 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x188>
  40f0f2:	00 00 
  40f0f4:	48 89 f8             	mov    %rdi,%rax
  40f0f7:	48 8d 8f e0 04 00 00 	lea    0x4e0(%rdi),%rcx
  40f0fe:	48 89 fa             	mov    %rdi,%rdx
  40f101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40f108:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  40f10d:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  40f111:	48 83 c2 20          	add    $0x20,%rdx
  40f115:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  40f119:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  40f11e:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  40f122:	c5 f5 ef 8a c0 04 00 	vpxor  0x4c0(%rdx),%ymm1,%ymm1
  40f129:	00 
  40f12a:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  40f130:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  40f134:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  40f13a:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  40f13f:	48 39 ca             	cmp    %rcx,%rdx
  40f142:	75 c4                	jne    40f108 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x38>
  40f144:	48 8d 88 a0 09 00 00 	lea    0x9a0(%rax),%rcx
  40f14b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40f150:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  40f155:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  40f159:	48 83 c2 20          	add    $0x20,%rdx
  40f15d:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  40f161:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  40f166:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  40f16a:	c5 f5 ef 8a 00 fb ff 	vpxor  -0x500(%rdx),%ymm1,%ymm1
  40f171:	ff 
  40f172:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  40f178:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  40f17c:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  40f182:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  40f187:	48 39 d1             	cmp    %rdx,%rcx
  40f18a:	75 c4                	jne    40f150 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x80>
  40f18c:	c4 e2 79 59 05 9b 15 	vpbroadcastq 0x159b(%rip),%xmm0        # 410730 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  40f193:	00 00 
  40f195:	c4 e2 79 59 0d 9a 15 	vpbroadcastq 0x159a(%rip),%xmm1        # 410738 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  40f19c:	00 00 
  40f19e:	c5 f9 db 80 a0 09 00 	vpand  0x9a0(%rax),%xmm0,%xmm0
  40f1a5:	00 
  40f1a6:	c5 f1 db 88 a8 09 00 	vpand  0x9a8(%rax),%xmm1,%xmm1
  40f1ad:	00 
  40f1ae:	48 8b b0 b8 09 00 00 	mov    0x9b8(%rax),%rsi
  40f1b5:	48 8b 90 b0 09 00 00 	mov    0x9b0(%rax),%rdx
  40f1bc:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  40f1c0:	48 89 f1             	mov    %rsi,%rcx
  40f1c3:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
  40f1c9:	c5 f1 73 d0 01       	vpsrlq $0x1,%xmm0,%xmm1
  40f1ce:	48 81 e2 00 00 00 80 	and    $0xffffffff80000000,%rdx
  40f1d5:	62 f1 fd 18 db 05 61 	vpandq 0x1561(%rip){1to2},%xmm0,%xmm0        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x180>
  40f1dc:	15 00 00 
  40f1df:	c5 f1 ef 88 c0 04 00 	vpxor  0x4c0(%rax),%xmm1,%xmm1
  40f1e6:	00 
  40f1e7:	48 09 ca             	or     %rcx,%rdx
  40f1ea:	62 f2 fe 08 27 c8    	vptestnmq %xmm0,%xmm0,%k1
  40f1f0:	48 89 d1             	mov    %rdx,%rcx
  40f1f3:	48 d1 e9             	shr    %rcx
  40f1f6:	62 f1 f5 18 ef 15 48 	vpxorq 0x1548(%rip){1to2},%xmm1,%xmm2        # 410748 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x188>
  40f1fd:	15 00 00 
  40f200:	62 f2 ed 09 64 c1    	vpblendmq %xmm1,%xmm2,%xmm0{%k1}
  40f206:	48 33 88 d0 04 00 00 	xor    0x4d0(%rax),%rcx
  40f20d:	83 e2 01             	and    $0x1,%edx
  40f210:	c5 fa 7f 80 a0 09 00 	vmovdqu %xmm0,0x9a0(%rax)
  40f217:	00 
  40f218:	74 0d                	je     40f227 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x157>
  40f21a:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  40f221:	6f 02 b5 
  40f224:	48 31 d1             	xor    %rdx,%rcx
  40f227:	48 8b 10             	mov    (%rax),%rdx
  40f22a:	48 81 e6 00 00 00 80 	and    $0xffffffff80000000,%rsi
  40f231:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
  40f237:	48 09 f2             	or     %rsi,%rdx
  40f23a:	48 89 88 b0 09 00 00 	mov    %rcx,0x9b0(%rax)
  40f241:	48 89 d1             	mov    %rdx,%rcx
  40f244:	48 d1 e9             	shr    %rcx
  40f247:	48 33 88 d8 04 00 00 	xor    0x4d8(%rax),%rcx
  40f24e:	83 e2 01             	and    $0x1,%edx
  40f251:	74 0d                	je     40f260 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x190>
  40f253:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  40f25a:	6f 02 b5 
  40f25d:	48 31 d1             	xor    %rdx,%rcx
  40f260:	48 89 88 b8 09 00 00 	mov    %rcx,0x9b8(%rax)
  40f267:	48 c7 80 c0 09 00 00 	movq   $0x0,0x9c0(%rax)
  40f26e:	00 00 00 00 
  40f272:	c5 f8 77             	vzeroupper 
  40f275:	c3                   	retq   
  40f276:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40f27d:	00 00 00 

000000000040f280 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>:
  40f280:	41 57                	push   %r15
  40f282:	41 56                	push   %r14
  40f284:	41 55                	push   %r13
  40f286:	41 54                	push   %r12
  40f288:	55                   	push   %rbp
  40f289:	53                   	push   %rbx
  40f28a:	48 83 ec 28          	sub    $0x28,%rsp
  40f28e:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  40f293:	48 39 fe             	cmp    %rdi,%rsi
  40f296:	0f 84 99 01 00 00    	je     40f435 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40f29c:	48 89 f1             	mov    %rsi,%rcx
  40f29f:	48 29 f9             	sub    %rdi,%rcx
  40f2a2:	48 c1 f9 03          	sar    $0x3,%rcx
  40f2a6:	48 89 c8             	mov    %rcx,%rax
  40f2a9:	48 89 d3             	mov    %rdx,%rbx
  40f2ac:	48 f7 e1             	mul    %rcx
  40f2af:	48 89 fd             	mov    %rdi,%rbp
  40f2b2:	4c 8d 6f 08          	lea    0x8(%rdi),%r13
  40f2b6:	0f 90 c0             	seto   %al
  40f2b9:	0f b6 c0             	movzbl %al,%eax
  40f2bc:	48 85 c0             	test   %rax,%rax
  40f2bf:	0f 84 1b 02 00 00    	je     40f4e0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x260>
  40f2c5:	4c 3b 6c 24 08       	cmp    0x8(%rsp),%r13
  40f2ca:	0f 84 65 01 00 00    	je     40f435 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40f2d0:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40f2d7:	55 55 55 
  40f2da:	49 bc 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r12
  40f2e1:	7f d6 71 
  40f2e4:	49 bf 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r15
  40f2eb:	ee f7 ff 
  40f2ee:	66 90                	xchg   %ax,%ax
  40f2f0:	4c 89 e8             	mov    %r13,%rax
  40f2f3:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  40f2fa:	48 29 e8             	sub    %rbp,%rax
  40f2fd:	48 c1 f8 03          	sar    $0x3,%rax
  40f301:	48 89 d1             	mov    %rdx,%rcx
  40f304:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40f308:	0f 84 3a 01 00 00    	je     40f448 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1c8>
  40f30e:	4c 8d 70 01          	lea    0x1(%rax),%r14
  40f312:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  40f319:	0f 87 79 01 00 00    	ja     40f498 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x218>
  40f31f:	48 8b 34 d3          	mov    (%rbx,%rdx,8),%rsi
  40f323:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
  40f327:	48 89 f2             	mov    %rsi,%rdx
  40f32a:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40f32e:	4c 21 ca             	and    %r9,%rdx
  40f331:	48 31 d6             	xor    %rdx,%rsi
  40f334:	48 89 f2             	mov    %rsi,%rdx
  40f337:	48 c1 e2 11          	shl    $0x11,%rdx
  40f33b:	4c 21 e2             	and    %r12,%rdx
  40f33e:	48 31 d6             	xor    %rdx,%rsi
  40f341:	48 89 f2             	mov    %rsi,%rdx
  40f344:	48 c1 e2 25          	shl    $0x25,%rdx
  40f348:	4c 21 fa             	and    %r15,%rdx
  40f34b:	48 31 d6             	xor    %rdx,%rsi
  40f34e:	48 89 f2             	mov    %rsi,%rdx
  40f351:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40f355:	48 31 d6             	xor    %rdx,%rsi
  40f358:	48 89 f2             	mov    %rsi,%rdx
  40f35b:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  40f360:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40f367:	49 39 f6             	cmp    %rsi,%r14
  40f36a:	0f 86 a0 00 00 00    	jbe    40f410 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40f370:	48 f7 d0             	not    %rax
  40f373:	31 d2                	xor    %edx,%edx
  40f375:	49 f7 f6             	div    %r14
  40f378:	49 89 d0             	mov    %rdx,%r8
  40f37b:	48 39 d6             	cmp    %rdx,%rsi
  40f37e:	72 55                	jb     40f3d5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x155>
  40f380:	e9 8b 00 00 00       	jmpq   40f410 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40f385:	0f 1f 00             	nopl   (%rax)
  40f388:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40f38c:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40f390:	48 89 f0             	mov    %rsi,%rax
  40f393:	48 c1 e8 1d          	shr    $0x1d,%rax
  40f397:	4c 21 c8             	and    %r9,%rax
  40f39a:	48 31 c6             	xor    %rax,%rsi
  40f39d:	48 89 f0             	mov    %rsi,%rax
  40f3a0:	48 c1 e0 11          	shl    $0x11,%rax
  40f3a4:	4c 21 e0             	and    %r12,%rax
  40f3a7:	48 31 c6             	xor    %rax,%rsi
  40f3aa:	48 89 f0             	mov    %rsi,%rax
  40f3ad:	48 c1 e0 25          	shl    $0x25,%rax
  40f3b1:	4c 21 f8             	and    %r15,%rax
  40f3b4:	48 31 c6             	xor    %rax,%rsi
  40f3b7:	48 89 f0             	mov    %rsi,%rax
  40f3ba:	48 c1 e8 2b          	shr    $0x2b,%rax
  40f3be:	48 31 c6             	xor    %rax,%rsi
  40f3c1:	48 89 f2             	mov    %rsi,%rdx
  40f3c4:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  40f3c9:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40f3d0:	49 39 f0             	cmp    %rsi,%r8
  40f3d3:	76 3b                	jbe    40f410 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40f3d5:	48 89 c8             	mov    %rcx,%rax
  40f3d8:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  40f3df:	76 a7                	jbe    40f388 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  40f3e1:	48 89 df             	mov    %rbx,%rdi
  40f3e4:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  40f3e9:	e8 e2 fc ff ff       	callq  40f0d0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f3ee:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f3f5:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  40f3fa:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40f401:	55 55 55 
  40f404:	eb 82                	jmp    40f388 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  40f406:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40f40d:	00 00 00 
  40f410:	48 89 f8             	mov    %rdi,%rax
  40f413:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  40f418:	48 8b 08             	mov    (%rax),%rcx
  40f41b:	49 8b 55 00          	mov    0x0(%r13),%rdx
  40f41f:	49 89 4d 00          	mov    %rcx,0x0(%r13)
  40f423:	49 83 c5 08          	add    $0x8,%r13
  40f427:	48 89 10             	mov    %rdx,(%rax)
  40f42a:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40f42f:	0f 85 bb fe ff ff    	jne    40f2f0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x70>
  40f435:	48 83 c4 28          	add    $0x28,%rsp
  40f439:	5b                   	pop    %rbx
  40f43a:	5d                   	pop    %rbp
  40f43b:	41 5c                	pop    %r12
  40f43d:	41 5d                	pop    %r13
  40f43f:	41 5e                	pop    %r14
  40f441:	41 5f                	pop    %r15
  40f443:	c3                   	retq   
  40f444:	0f 1f 40 00          	nopl   0x0(%rax)
  40f448:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  40f44f:	77 6f                	ja     40f4c0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x240>
  40f451:	48 8d 41 01          	lea    0x1(%rcx),%rax
  40f455:	48 89 83 c0 09 00 00 	mov    %rax,0x9c0(%rbx)
  40f45c:	48 8b 04 cb          	mov    (%rbx,%rcx,8),%rax
  40f460:	48 89 c2             	mov    %rax,%rdx
  40f463:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40f467:	4c 21 ca             	and    %r9,%rdx
  40f46a:	48 31 d0             	xor    %rdx,%rax
  40f46d:	48 89 c2             	mov    %rax,%rdx
  40f470:	48 c1 e2 11          	shl    $0x11,%rdx
  40f474:	4c 21 e2             	and    %r12,%rdx
  40f477:	48 31 d0             	xor    %rdx,%rax
  40f47a:	48 89 c2             	mov    %rax,%rdx
  40f47d:	48 c1 e2 25          	shl    $0x25,%rdx
  40f481:	4c 21 fa             	and    %r15,%rdx
  40f484:	48 31 d0             	xor    %rdx,%rax
  40f487:	48 89 c2             	mov    %rax,%rdx
  40f48a:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40f48e:	48 31 d0             	xor    %rdx,%rax
  40f491:	eb 80                	jmp    40f413 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x193>
  40f493:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40f498:	48 89 df             	mov    %rbx,%rdi
  40f49b:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40f4a0:	e8 2b fc ff ff       	callq  40f0d0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f4a5:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  40f4ac:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40f4b1:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40f4b8:	55 55 55 
  40f4bb:	e9 5f fe ff ff       	jmpq   40f31f <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x9f>
  40f4c0:	48 89 df             	mov    %rbx,%rdi
  40f4c3:	e8 08 fc ff ff       	callq  40f0d0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f4c8:	48 8b 8b c0 09 00 00 	mov    0x9c0(%rbx),%rcx
  40f4cf:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40f4d6:	55 55 55 
  40f4d9:	e9 73 ff ff ff       	jmpq   40f451 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1d1>
  40f4de:	66 90                	xchg   %ax,%ax
  40f4e0:	83 e1 01             	and    $0x1,%ecx
  40f4e3:	0f 84 35 02 00 00    	je     40f71e <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x49e>
  40f4e9:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40f4ee:	0f 84 41 ff ff ff    	je     40f435 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40f4f4:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40f4fb:	55 55 55 
  40f4fe:	49 be 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r14
  40f505:	7f d6 71 
  40f508:	49 bc 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r12
  40f50f:	ee f7 ff 
  40f512:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40f518:	4d 89 ef             	mov    %r13,%r15
  40f51b:	49 29 ef             	sub    %rbp,%r15
  40f51e:	49 c1 ff 03          	sar    $0x3,%r15
  40f522:	49 8d 47 02          	lea    0x2(%r15),%rax
  40f526:	49 ff c7             	inc    %r15
  40f529:	4c 0f af f8          	imul   %rax,%r15
  40f52d:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40f532:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f539:	4d 85 ff             	test   %r15,%r15
  40f53c:	0f 84 46 01 00 00    	je     40f688 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x408>
  40f542:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40f548:	0f 87 8a 01 00 00    	ja     40f6d8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x458>
  40f54e:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40f552:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40f556:	48 89 f0             	mov    %rsi,%rax
  40f559:	48 c1 e8 1d          	shr    $0x1d,%rax
  40f55d:	4c 21 d0             	and    %r10,%rax
  40f560:	48 31 c6             	xor    %rax,%rsi
  40f563:	48 89 f0             	mov    %rsi,%rax
  40f566:	48 c1 e0 11          	shl    $0x11,%rax
  40f56a:	4c 21 f0             	and    %r14,%rax
  40f56d:	48 31 c6             	xor    %rax,%rsi
  40f570:	48 89 f0             	mov    %rsi,%rax
  40f573:	48 c1 e0 25          	shl    $0x25,%rax
  40f577:	4c 21 e0             	and    %r12,%rax
  40f57a:	48 31 c6             	xor    %rax,%rsi
  40f57d:	48 89 f0             	mov    %rsi,%rax
  40f580:	48 c1 e8 2b          	shr    $0x2b,%rax
  40f584:	48 31 c6             	xor    %rax,%rsi
  40f587:	48 89 f2             	mov    %rsi,%rdx
  40f58a:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40f58f:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40f596:	49 39 f7             	cmp    %rsi,%r15
  40f599:	0f 86 a1 00 00 00    	jbe    40f640 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40f59f:	4c 89 f8             	mov    %r15,%rax
  40f5a2:	48 f7 d8             	neg    %rax
  40f5a5:	31 d2                	xor    %edx,%edx
  40f5a7:	49 f7 f7             	div    %r15
  40f5aa:	49 89 d0             	mov    %rdx,%r8
  40f5ad:	48 39 d6             	cmp    %rdx,%rsi
  40f5b0:	72 5b                	jb     40f60d <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x38d>
  40f5b2:	e9 89 00 00 00       	jmpq   40f640 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40f5b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40f5be:	00 00 
  40f5c0:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40f5c4:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40f5c8:	48 89 f0             	mov    %rsi,%rax
  40f5cb:	48 c1 e8 1d          	shr    $0x1d,%rax
  40f5cf:	4c 21 d0             	and    %r10,%rax
  40f5d2:	48 31 c6             	xor    %rax,%rsi
  40f5d5:	48 89 f0             	mov    %rsi,%rax
  40f5d8:	48 c1 e0 11          	shl    $0x11,%rax
  40f5dc:	4c 21 f0             	and    %r14,%rax
  40f5df:	48 31 c6             	xor    %rax,%rsi
  40f5e2:	48 89 f0             	mov    %rsi,%rax
  40f5e5:	48 c1 e0 25          	shl    $0x25,%rax
  40f5e9:	4c 21 e0             	and    %r12,%rax
  40f5ec:	48 31 c6             	xor    %rax,%rsi
  40f5ef:	48 89 f0             	mov    %rsi,%rax
  40f5f2:	48 c1 e8 2b          	shr    $0x2b,%rax
  40f5f6:	48 31 c6             	xor    %rax,%rsi
  40f5f9:	48 89 f2             	mov    %rsi,%rdx
  40f5fc:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40f601:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40f608:	49 39 f0             	cmp    %rsi,%r8
  40f60b:	76 33                	jbe    40f640 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40f60d:	48 89 c8             	mov    %rcx,%rax
  40f610:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  40f617:	76 a7                	jbe    40f5c0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40f619:	48 89 df             	mov    %rbx,%rdi
  40f61c:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  40f621:	e8 aa fa ff ff       	callq  40f0d0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f626:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f62d:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  40f632:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40f639:	55 55 55 
  40f63c:	eb 82                	jmp    40f5c0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40f63e:	66 90                	xchg   %ax,%ax
  40f640:	48 89 f8             	mov    %rdi,%rax
  40f643:	31 d2                	xor    %edx,%edx
  40f645:	48 f7 74 24 10       	divq   0x10(%rsp)
  40f64a:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40f64e:	49 83 c5 10          	add    $0x10,%r13
  40f652:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  40f657:	48 8b 30             	mov    (%rax),%rsi
  40f65a:	49 89 75 f0          	mov    %rsi,-0x10(%r13)
  40f65e:	48 89 08             	mov    %rcx,(%rax)
  40f661:	48 8d 44 d5 00       	lea    0x0(%rbp,%rdx,8),%rax
  40f666:	48 8b 08             	mov    (%rax),%rcx
  40f669:	49 8b 55 f8          	mov    -0x8(%r13),%rdx
  40f66d:	49 89 4d f8          	mov    %rcx,-0x8(%r13)
  40f671:	48 89 10             	mov    %rdx,(%rax)
  40f674:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40f679:	0f 85 99 fe ff ff    	jne    40f518 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x298>
  40f67f:	e9 b1 fd ff ff       	jmpq   40f435 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40f684:	0f 1f 40 00          	nopl   0x0(%rax)
  40f688:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40f68e:	77 70                	ja     40f700 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x480>
  40f690:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40f694:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40f698:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40f69f:	48 89 c2             	mov    %rax,%rdx
  40f6a2:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40f6a6:	4c 21 d2             	and    %r10,%rdx
  40f6a9:	48 31 d0             	xor    %rdx,%rax
  40f6ac:	48 89 c2             	mov    %rax,%rdx
  40f6af:	48 c1 e2 11          	shl    $0x11,%rdx
  40f6b3:	4c 21 f2             	and    %r14,%rdx
  40f6b6:	48 31 d0             	xor    %rdx,%rax
  40f6b9:	48 89 c2             	mov    %rax,%rdx
  40f6bc:	48 c1 e2 25          	shl    $0x25,%rdx
  40f6c0:	4c 21 e2             	and    %r12,%rdx
  40f6c3:	48 31 d0             	xor    %rdx,%rax
  40f6c6:	48 89 c2             	mov    %rax,%rdx
  40f6c9:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40f6cd:	48 31 d0             	xor    %rdx,%rax
  40f6d0:	e9 6e ff ff ff       	jmpq   40f643 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c3>
  40f6d5:	0f 1f 00             	nopl   (%rax)
  40f6d8:	48 89 df             	mov    %rbx,%rdi
  40f6db:	e8 f0 f9 ff ff       	callq  40f0d0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f6e0:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f6e7:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40f6ee:	55 55 55 
  40f6f1:	e9 58 fe ff ff       	jmpq   40f54e <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x2ce>
  40f6f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40f6fd:	00 00 00 
  40f700:	48 89 df             	mov    %rbx,%rdi
  40f703:	e8 c8 f9 ff ff       	callq  40f0d0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f708:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f70f:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40f716:	55 55 55 
  40f719:	e9 72 ff ff ff       	jmpq   40f690 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x410>
  40f71e:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f725:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40f72b:	0f 87 81 00 00 00    	ja     40f7b2 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x532>
  40f731:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40f735:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40f739:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40f740:	48 89 c2             	mov    %rax,%rdx
  40f743:	48 b9 55 55 55 55 55 	movabs $0x5555555555555555,%rcx
  40f74a:	55 55 55 
  40f74d:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40f751:	48 21 ca             	and    %rcx,%rdx
  40f754:	48 31 d0             	xor    %rdx,%rax
  40f757:	48 89 c2             	mov    %rax,%rdx
  40f75a:	48 b9 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%rcx
  40f761:	7f d6 71 
  40f764:	48 c1 e2 11          	shl    $0x11,%rdx
  40f768:	48 21 ca             	and    %rcx,%rdx
  40f76b:	48 31 d0             	xor    %rdx,%rax
  40f76e:	48 89 c2             	mov    %rax,%rdx
  40f771:	48 b9 00 00 00 00 e0 	movabs $0xfff7eee000000000,%rcx
  40f778:	ee f7 ff 
  40f77b:	48 c1 e2 25          	shl    $0x25,%rdx
  40f77f:	48 21 ca             	and    %rcx,%rdx
  40f782:	48 31 d0             	xor    %rdx,%rax
  40f785:	48 89 c2             	mov    %rax,%rdx
  40f788:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40f78c:	48 31 d0             	xor    %rdx,%rax
  40f78f:	31 ff                	xor    %edi,%edi
  40f791:	48 0f a4 c7 01       	shld   $0x1,%rax,%rdi
  40f796:	48 8d 44 fd 00       	lea    0x0(%rbp,%rdi,8),%rax
  40f79b:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  40f79f:	48 8b 08             	mov    (%rax),%rcx
  40f7a2:	4c 8d 6d 10          	lea    0x10(%rbp),%r13
  40f7a6:	48 89 4d 08          	mov    %rcx,0x8(%rbp)
  40f7aa:	48 89 10             	mov    %rdx,(%rax)
  40f7ad:	e9 37 fd ff ff       	jmpq   40f4e9 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x269>
  40f7b2:	48 89 df             	mov    %rbx,%rdi
  40f7b5:	e8 16 f9 ff ff       	callq  40f0d0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f7ba:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f7c1:	e9 6b ff ff ff       	jmpq   40f731 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x4b1>

Disassembly of section .fini:

000000000040f7c8 <_fini>:
  40f7c8:	f3 0f 1e fa          	endbr64 
  40f7cc:	48 83 ec 08          	sub    $0x8,%rsp
  40f7d0:	48 83 c4 08          	add    $0x8,%rsp
  40f7d4:	c3                   	retq   
