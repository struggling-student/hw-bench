
/lpor1/store_0/usr/user/hw-bench-thesis-results/cache-udual-20261031T192325Z/build/hardware:     file format elf64-x86-64


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
  403574:	e8 47 a4 00 00       	callq  40d9c0 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  4035b6:	e8 05 a4 00 00       	callq  40d9c0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4035bb:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  4035c2:	00 
  4035c3:	4c 39 ff             	cmp    %r15,%rdi
  4035c6:	75 5c                	jne    403624 <_Z6windowid.cold+0xf2>
  4035c8:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  4035cf:	00 
  4035d0:	e8 eb a3 00 00       	callq  40d9c0 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403732:	e8 89 a2 00 00       	callq  40d9c0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403737:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40373e:	00 
  40373f:	e8 7c a2 00 00       	callq  40d9c0 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  4038a2:	e8 19 a1 00 00       	callq  40d9c0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4038a7:	e9 1c fd ff ff       	jmpq   4035c8 <_Z6windowid.cold+0x96>
  4038ac:	c5 f8 77             	vzeroupper 
  4038af:	e8 8c f8 ff ff       	callq  403140 <__cxa_begin_catch@plt>
  4038b4:	e8 67 fb ff ff       	callq  403420 <__cxa_end_catch@plt>
  4038b9:	e9 c9 8d 00 00       	jmpq   40c687 <_Z6windowid+0x15d7>
  4038be:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4038c3:	c5 f8 77             	vzeroupper 
  4038c6:	e8 f5 a0 00 00       	callq  40d9c0 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403971:	e8 4a a0 00 00       	callq  40d9c0 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403a40:	e8 7b 9f 00 00       	callq  40d9c0 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403aed:	e8 ce 9e 00 00       	callq  40d9c0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403af2:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403af9:	00 
  403afa:	e8 c1 9e 00 00       	callq  40d9c0 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403bf3:	e9 3e 8f 00 00       	jmpq   40cb36 <_Z6windowid+0x1a86>
  403bf8:	c5 f8 77             	vzeroupper 
  403bfb:	e8 40 f5 ff ff       	callq  403140 <__cxa_begin_catch@plt>
  403c00:	e8 1b f8 ff ff       	callq  403420 <__cxa_end_catch@plt>
  403c05:	e9 92 7e 00 00       	jmpq   40ba9c <_Z6windowid+0x9ec>
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
  403cfa:	e8 c1 9c 00 00       	callq  40d9c0 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403cff:	e9 37 fd ff ff       	jmpq   403a3b <_Z6windowid.cold+0x509>
  403d04:	c5 f8 77             	vzeroupper 
  403d07:	e9 c9 f8 ff ff       	jmpq   4035d5 <_Z6windowid.cold+0xa3>
  403d0c:	c5 f8 77             	vzeroupper 
  403d0f:	e9 27 fd ff ff       	jmpq   403a3b <_Z6windowid.cold+0x509>
  403d14:	c5 f8 77             	vzeroupper 
  403d17:	e9 3d ff ff ff       	jmpq   403c59 <_Z6windowid.cold+0x727>

0000000000403d1c <main.cold>:
  403d1c:	45 31 e4             	xor    %r12d,%r12d
  403d1f:	c5 f8 77             	vzeroupper 
  403d22:	45 84 e4             	test   %r12b,%r12b
  403d25:	74 23                	je     403d4a <main.cold+0x2e>
  403d27:	48 8b bd 70 f4 ff ff 	mov    -0xb90(%rbp),%rdi
  403d2e:	48 8d 85 80 f4 ff ff 	lea    -0xb80(%rbp),%rax
  403d35:	48 39 c7             	cmp    %rax,%rdi
  403d38:	74 10                	je     403d4a <main.cold+0x2e>
  403d3a:	48 8b 85 80 f4 ff ff 	mov    -0xb80(%rbp),%rax
  403d41:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d45:	e8 86 f5 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403d4a:	4c 89 eb             	mov    %r13,%rbx
  403d4d:	4d 89 f4             	mov    %r14,%r12
  403d50:	48 8b bd 30 f4 ff ff 	mov    -0xbd0(%rbp),%rdi
  403d57:	48 8d 85 40 f4 ff ff 	lea    -0xbc0(%rbp),%rax
  403d5e:	48 39 c7             	cmp    %rax,%rdi
  403d61:	74 10                	je     403d73 <main.cold+0x57>
  403d63:	48 8b 85 40 f4 ff ff 	mov    -0xbc0(%rbp),%rax
  403d6a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d6e:	e8 5d f5 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403d73:	48 8b bd 10 f4 ff ff 	mov    -0xbf0(%rbp),%rdi
  403d7a:	48 8d 85 20 f4 ff ff 	lea    -0xbe0(%rbp),%rax
  403d81:	48 39 c7             	cmp    %rax,%rdi
  403d84:	0f 85 23 01 00 00    	jne    403ead <main.cold+0x191>
  403d8a:	48 8d bd d0 f3 ff ff 	lea    -0xc30(%rbp),%rdi
  403d91:	e8 da 9e 00 00       	callq  40dc70 <_ZN11PerfControlD1Ev>
  403d96:	48 8b bd b0 f3 ff ff 	mov    -0xc50(%rbp),%rdi
  403d9d:	48 8b b5 c0 f3 ff ff 	mov    -0xc40(%rbp),%rsi
  403da4:	48 29 fe             	sub    %rdi,%rsi
  403da7:	48 85 ff             	test   %rdi,%rdi
  403daa:	74 05                	je     403db1 <main.cold+0x95>
  403dac:	e8 1f f5 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403db1:	48 8b bd 90 f3 ff ff 	mov    -0xc70(%rbp),%rdi
  403db8:	48 8b b5 a0 f3 ff ff 	mov    -0xc60(%rbp),%rsi
  403dbf:	48 29 fe             	sub    %rdi,%rsi
  403dc2:	48 85 ff             	test   %rdi,%rdi
  403dc5:	74 05                	je     403dcc <main.cold+0xb0>
  403dc7:	e8 04 f5 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403dcc:	4d 89 e6             	mov    %r12,%r14
  403dcf:	4c 89 ff             	mov    %r15,%rdi
  403dd2:	e8 19 a5 00 00       	callq  40e2f0 <_ZN8CountersD1Ev>
  403dd7:	48 8b bd f0 f3 ff ff 	mov    -0xc10(%rbp),%rdi
  403dde:	48 8d 85 00 f4 ff ff 	lea    -0xc00(%rbp),%rax
  403de5:	48 39 c7             	cmp    %rax,%rdi
  403de8:	74 10                	je     403dfa <main.cold+0xde>
  403dea:	48 8b 85 00 f4 ff ff 	mov    -0xc00(%rbp),%rax
  403df1:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403df5:	e8 d6 f4 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403dfa:	48 89 df             	mov    %rbx,%rdi
  403dfd:	49 ff ce             	dec    %r14
  403e00:	0f 85 f5 00 00 00    	jne    403efb <main.cold+0x1df>
  403e06:	e8 35 f3 ff ff       	callq  403140 <__cxa_begin_catch@plt>
  403e0b:	48 89 c7             	mov    %rax,%rdi
  403e0e:	48 8b 00             	mov    (%rax),%rax
  403e11:	ff 50 10             	callq  *0x10(%rax)
  403e14:	48 89 c6             	mov    %rax,%rsi
  403e17:	bf a0 33 41 00       	mov    $0x4133a0,%edi
  403e1c:	e8 8f f4 ff ff       	callq  4032b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  403e21:	48 89 c7             	mov    %rax,%rdi
  403e24:	ba 01 00 00 00       	mov    $0x1,%edx
  403e29:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  403e30:	c6 85 00 f6 ff ff 0a 	movb   $0xa,-0xa00(%rbp)
  403e37:	e8 c4 f4 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  403e3c:	e8 df f5 ff ff       	callq  403420 <__cxa_end_catch@plt>
  403e41:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  403e47:	e9 8f 07 00 00       	jmpq   4045db <main+0x4eb>
  403e4c:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  403e51:	75 0a                	jne    403e5d <main.cold+0x141>
  403e53:	8b 85 e8 f2 ff ff    	mov    -0xd18(%rbp),%eax
  403e59:	41 89 04 24          	mov    %eax,(%r12)
  403e5d:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  403e64:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  403e6b:	48 39 c7             	cmp    %rax,%rdi
  403e6e:	74 38                	je     403ea8 <main.cold+0x18c>
  403e70:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  403e77:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e7b:	c5 f8 77             	vzeroupper 
  403e7e:	e8 4d f4 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403e83:	48 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%rdi
  403e8a:	4c 39 ef             	cmp    %r13,%rdi
  403e8d:	0f 84 44 ff ff ff    	je     403dd7 <main.cold+0xbb>
  403e93:	48 8b 85 60 f5 ff ff 	mov    -0xaa0(%rbp),%rax
  403e9a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e9e:	e8 2d f4 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403ea3:	e9 2f ff ff ff       	jmpq   403dd7 <main.cold+0xbb>
  403ea8:	c5 f8 77             	vzeroupper 
  403eab:	eb d6                	jmp    403e83 <main.cold+0x167>
  403ead:	48 8b 85 20 f4 ff ff 	mov    -0xbe0(%rbp),%rax
  403eb4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403eb8:	e8 13 f4 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403ebd:	e9 c8 fe ff ff       	jmpq   403d8a <main.cold+0x6e>
  403ec2:	48 8b bd 50 f4 ff ff 	mov    -0xbb0(%rbp),%rdi
  403ec9:	48 8d 85 60 f4 ff ff 	lea    -0xba0(%rbp),%rax
  403ed0:	48 39 c7             	cmp    %rax,%rdi
  403ed3:	74 2b                	je     403f00 <main.cold+0x1e4>
  403ed5:	48 8b 85 60 f4 ff ff 	mov    -0xba0(%rbp),%rax
  403edc:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403ee0:	c5 f8 77             	vzeroupper 
  403ee3:	e8 e8 f3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403ee8:	e9 63 fe ff ff       	jmpq   403d50 <main.cold+0x34>
  403eed:	48 89 c3             	mov    %rax,%rbx
  403ef0:	49 89 d4             	mov    %rdx,%r12
  403ef3:	c5 f8 77             	vzeroupper 
  403ef6:	e9 9b fe ff ff       	jmpq   403d96 <main.cold+0x7a>
  403efb:	e8 70 f5 ff ff       	callq  403470 <_Unwind_Resume@plt>
  403f00:	c5 f8 77             	vzeroupper 
  403f03:	e9 48 fe ff ff       	jmpq   403d50 <main.cold+0x34>
  403f08:	49 89 c4             	mov    %rax,%r12
  403f0b:	c5 f8 77             	vzeroupper 
  403f0e:	e8 0d f5 ff ff       	callq  403420 <__cxa_end_catch@plt>
  403f13:	4c 89 e7             	mov    %r12,%rdi
  403f16:	e8 55 f5 ff ff       	callq  403470 <_Unwind_Resume@plt>
  403f1b:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  403f22:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  403f29:	48 39 c7             	cmp    %rax,%rdi
  403f2c:	74 43                	je     403f71 <main.cold+0x255>
  403f2e:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  403f35:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403f39:	c5 f8 77             	vzeroupper 
  403f3c:	e8 8f f3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403f41:	e9 3d ff ff ff       	jmpq   403e83 <main.cold+0x167>
  403f46:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  403f4d:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  403f54:	48 39 c7             	cmp    %rax,%rdi
  403f57:	74 20                	je     403f79 <main.cold+0x25d>
  403f59:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  403f60:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403f64:	c5 f8 77             	vzeroupper 
  403f67:	e8 64 f3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403f6c:	e9 12 ff ff ff       	jmpq   403e83 <main.cold+0x167>
  403f71:	c5 f8 77             	vzeroupper 
  403f74:	e9 0a ff ff ff       	jmpq   403e83 <main.cold+0x167>
  403f79:	c5 f8 77             	vzeroupper 
  403f7c:	e9 02 ff ff ff       	jmpq   403e83 <main.cold+0x167>
  403f81:	48 8b bd 00 f5 ff ff 	mov    -0xb00(%rbp),%rdi
  403f88:	48 8d 85 10 f5 ff ff 	lea    -0xaf0(%rbp),%rax
  403f8f:	48 39 c7             	cmp    %rax,%rdi
  403f92:	74 52                	je     403fe6 <main.cold+0x2ca>
  403f94:	48 8b 85 10 f5 ff ff 	mov    -0xaf0(%rbp),%rax
  403f9b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403f9f:	c5 f8 77             	vzeroupper 
  403fa2:	e8 29 f3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403fa7:	45 31 e4             	xor    %r12d,%r12d
  403faa:	84 db                	test   %bl,%bl
  403fac:	0f 84 70 fd ff ff    	je     403d22 <main.cold+0x6>
  403fb2:	48 8b bd b0 f4 ff ff 	mov    -0xb50(%rbp),%rdi
  403fb9:	48 8d 85 c0 f4 ff ff 	lea    -0xb40(%rbp),%rax
  403fc0:	48 39 c7             	cmp    %rax,%rdi
  403fc3:	0f 84 59 fd ff ff    	je     403d22 <main.cold+0x6>
  403fc9:	48 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%rax
  403fd0:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403fd4:	e8 f7 f2 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  403fd9:	e9 44 fd ff ff       	jmpq   403d22 <main.cold+0x6>
  403fde:	45 31 e4             	xor    %r12d,%r12d
  403fe1:	c5 f8 77             	vzeroupper 
  403fe4:	eb c4                	jmp    403faa <main.cold+0x28e>
  403fe6:	c5 f8 77             	vzeroupper 
  403fe9:	eb bc                	jmp    403fa7 <main.cold+0x28b>
  403feb:	45 84 e4             	test   %r12b,%r12b
  403fee:	74 2b                	je     40401b <main.cold+0x2ff>
  403ff0:	48 8b bd 90 f4 ff ff 	mov    -0xb70(%rbp),%rdi
  403ff7:	48 8d 85 a0 f4 ff ff 	lea    -0xb60(%rbp),%rax
  403ffe:	48 39 c7             	cmp    %rax,%rdi
  404001:	74 20                	je     404023 <main.cold+0x307>
  404003:	48 8b 85 a0 f4 ff ff 	mov    -0xb60(%rbp),%rax
  40400a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40400e:	c5 f8 77             	vzeroupper 
  404011:	e8 ba f2 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  404016:	e9 07 fd ff ff       	jmpq   403d22 <main.cold+0x6>
  40401b:	c5 f8 77             	vzeroupper 
  40401e:	e9 27 fd ff ff       	jmpq   403d4a <main.cold+0x2e>
  404023:	c5 f8 77             	vzeroupper 
  404026:	e9 f7 fc ff ff       	jmpq   403d22 <main.cold+0x6>
  40402b:	bf 10 00 00 00       	mov    $0x10,%edi
  404030:	e8 2b f1 ff ff       	callq  403160 <__cxa_allocate_exception@plt>
  404035:	48 89 c7             	mov    %rax,%rdi
  404038:	be 90 04 41 00       	mov    $0x410490,%esi
  40403d:	49 89 c5             	mov    %rax,%r13
  404040:	e8 eb f0 ff ff       	callq  403130 <_ZNSt13runtime_errorC1EPKc@plt>
  404045:	ba e0 32 40 00       	mov    $0x4032e0,%edx
  40404a:	be a0 2d 41 00       	mov    $0x412da0,%esi
  40404f:	4c 89 ef             	mov    %r13,%rdi
  404052:	e8 f9 f3 ff ff       	callq  403450 <__cxa_throw@plt>
  404057:	48 89 c3             	mov    %rax,%rbx
  40405a:	49 89 d4             	mov    %rdx,%r12
  40405d:	4c 89 ef             	mov    %r13,%rdi
  404060:	c5 f8 77             	vzeroupper 
  404063:	e8 a8 f1 ff ff       	callq  403210 <__cxa_free_exception@plt>
  404068:	e9 29 fd ff ff       	jmpq   403d96 <main.cold+0x7a>
  40406d:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  404072:	75 0a                	jne    40407e <main.cold+0x362>
  404074:	8b 85 00 f3 ff ff    	mov    -0xd00(%rbp),%eax
  40407a:	41 89 04 24          	mov    %eax,(%r12)
  40407e:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  404085:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  40408c:	48 39 c7             	cmp    %rax,%rdi
  40408f:	74 4b                	je     4040dc <main.cold+0x3c0>
  404091:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  404098:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40409c:	c5 f8 77             	vzeroupper 
  40409f:	e8 2c f2 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4040a4:	e9 da fd ff ff       	jmpq   403e83 <main.cold+0x167>
  4040a9:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  4040b0:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  4040b7:	48 39 c7             	cmp    %rax,%rdi
  4040ba:	74 18                	je     4040d4 <main.cold+0x3b8>
  4040bc:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  4040c3:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4040c7:	c5 f8 77             	vzeroupper 
  4040ca:	e8 01 f2 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4040cf:	e9 af fd ff ff       	jmpq   403e83 <main.cold+0x167>
  4040d4:	c5 f8 77             	vzeroupper 
  4040d7:	e9 a7 fd ff ff       	jmpq   403e83 <main.cold+0x167>
  4040dc:	c5 f8 77             	vzeroupper 
  4040df:	e9 9f fd ff ff       	jmpq   403e83 <main.cold+0x167>
  4040e4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4040eb:	00 00 00 
  4040ee:	66 90                	xchg   %ax,%ax

00000000004040f0 <main>:
  4040f0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  4040f5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  4040f9:	41 ff 72 f8          	pushq  -0x8(%r10)
  4040fd:	55                   	push   %rbp
  4040fe:	48 89 e5             	mov    %rsp,%rbp
  404101:	41 57                	push   %r15
  404103:	41 56                	push   %r14
  404105:	41 55                	push   %r13
  404107:	41 54                	push   %r12
  404109:	41 52                	push   %r10
  40410b:	53                   	push   %rbx
  40410c:	89 fb                	mov    %edi,%ebx
  40410e:	48 81 ec 20 0d 00 00 	sub    $0xd20,%rsp
  404115:	89 bd 10 f3 ff ff    	mov    %edi,-0xcf0(%rbp)
  40411b:	48 89 b5 08 f3 ff ff 	mov    %rsi,-0xcf8(%rbp)
  404122:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  404129:	be b3 00 41 00       	mov    $0x4100b3,%esi
  40412e:	e8 dd 6c 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404133:	c7 85 3c f3 ff ff 01 	movl   $0x1,-0xcc4(%rbp)
  40413a:	00 00 00 
  40413d:	83 fb 01             	cmp    $0x1,%ebx
  404140:	0f 8e 05 06 00 00    	jle    40474b <main+0x65b>
  404146:	c5 fb 10 2d 62 c6 00 	vmovsd 0xc662(%rip),%xmm5        # 4107b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  40414d:	00 
  40414e:	48 b8 00 00 00 00 02 	movabs $0x200000000,%rax
  404155:	00 00 00 
  404158:	c6 85 ef f2 ff ff 00 	movb   $0x0,-0xd11(%rbp)
  40415f:	c6 85 f0 f2 ff ff 00 	movb   $0x0,-0xd10(%rbp)
  404166:	c7 85 c8 f2 ff ff 00 	movl   $0x0,-0xd38(%rbp)
  40416d:	00 00 00 
  404170:	c7 85 d4 f2 ff ff 05 	movl   $0x5,-0xd2c(%rbp)
  404177:	00 00 00 
  40417a:	48 89 85 d8 f2 ff ff 	mov    %rax,-0xd28(%rbp)
  404181:	bb 01 00 00 00       	mov    $0x1,%ebx
  404186:	c5 fb 11 ad f8 f2 ff 	vmovsd %xmm5,-0xd08(%rbp)
  40418d:	ff 
  40418e:	c5 fb 11 ad e0 f2 ff 	vmovsd %xmm5,-0xd20(%rbp)
  404195:	ff 
  404196:	4c 8d bd 50 f5 ff ff 	lea    -0xab0(%rbp),%r15
  40419d:	4c 8d ad 60 f5 ff ff 	lea    -0xaa0(%rbp),%r13
  4041a4:	e9 a1 00 00 00       	jmpq   40424a <main+0x15a>
  4041a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4041b0:	be 87 01 41 00       	mov    $0x410187,%esi
  4041b5:	4c 89 ff             	mov    %r15,%rdi
  4041b8:	e8 03 ef ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4041bd:	85 c0                	test   %eax,%eax
  4041bf:	0f 84 6b 01 00 00    	je     404330 <main+0x240>
  4041c5:	ff c3                	inc    %ebx
  4041c7:	39 9d 10 f3 ff ff    	cmp    %ebx,-0xcf0(%rbp)
  4041cd:	0f 8e f4 04 00 00    	jle    4046c7 <main+0x5d7>
  4041d3:	be 93 01 41 00       	mov    $0x410193,%esi
  4041d8:	4c 89 ff             	mov    %r15,%rdi
  4041db:	e8 e0 ee ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4041e0:	85 c0                	test   %eax,%eax
  4041e2:	0f 85 58 01 00 00    	jne    404340 <main+0x250>
  4041e8:	48 8b 8d 00 f3 ff ff 	mov    -0xd00(%rbp),%rcx
  4041ef:	48 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%rax
  4041f6:	4c 8b 64 08 08       	mov    0x8(%rax,%rcx,1),%r12
  4041fb:	4c 89 e7             	mov    %r12,%rdi
  4041fe:	e8 4d ef ff ff       	callq  403150 <strlen@plt>
  404203:	48 8b 95 f8 f3 ff ff 	mov    -0xc08(%rbp),%rdx
  40420a:	49 89 c0             	mov    %rax,%r8
  40420d:	4c 89 e1             	mov    %r12,%rcx
  404210:	31 f6                	xor    %esi,%esi
  404212:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  404219:	e8 c2 f1 ff ff       	callq  4033e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40421e:	66 90                	xchg   %ax,%ax
  404220:	48 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%rdi
  404227:	4c 39 ef             	cmp    %r13,%rdi
  40422a:	74 10                	je     40423c <main+0x14c>
  40422c:	48 8b 85 60 f5 ff ff 	mov    -0xaa0(%rbp),%rax
  404233:	48 8d 70 01          	lea    0x1(%rax),%rsi
  404237:	e8 94 f0 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40423c:	ff c3                	inc    %ebx
  40423e:	39 9d 10 f3 ff ff    	cmp    %ebx,-0xcf0(%rbp)
  404244:	0f 8e 3e 03 00 00    	jle    404588 <main+0x498>
  40424a:	48 63 c3             	movslq %ebx,%rax
  40424d:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
  404254:	00 
  404255:	48 89 8d 00 f3 ff ff 	mov    %rcx,-0xd00(%rbp)
  40425c:	48 8b 8d 08 f3 ff ff 	mov    -0xcf8(%rbp),%rcx
  404263:	4c 89 ad 50 f5 ff ff 	mov    %r13,-0xab0(%rbp)
  40426a:	4c 8b 24 c1          	mov    (%rcx,%rax,8),%r12
  40426e:	4d 85 e4             	test   %r12,%r12
  404271:	0f 84 2c 1f 00 00    	je     4061a3 <main+0x20b3>
  404277:	4c 89 e7             	mov    %r12,%rdi
  40427a:	e8 d1 ee ff ff       	callq  403150 <strlen@plt>
  40427f:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  404286:	49 89 c6             	mov    %rax,%r14
  404289:	48 83 f8 0f          	cmp    $0xf,%rax
  40428d:	77 51                	ja     4042e0 <main+0x1f0>
  40428f:	48 83 f8 01          	cmp    $0x1,%rax
  404293:	75 3b                	jne    4042d0 <main+0x1e0>
  404295:	41 0f b6 14 24       	movzbl (%r12),%edx
  40429a:	88 95 60 f5 ff ff    	mov    %dl,-0xaa0(%rbp)
  4042a0:	4c 89 ea             	mov    %r13,%rdx
  4042a3:	48 89 85 58 f5 ff ff 	mov    %rax,-0xaa8(%rbp)
  4042aa:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4042ae:	be 7a 01 41 00       	mov    $0x41017a,%esi
  4042b3:	4c 89 ff             	mov    %r15,%rdi
  4042b6:	e8 05 ee ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4042bb:	85 c0                	test   %eax,%eax
  4042bd:	0f 85 ed fe ff ff    	jne    4041b0 <main+0xc0>
  4042c3:	c6 85 f0 f2 ff ff 01 	movb   $0x1,-0xd10(%rbp)
  4042ca:	e9 51 ff ff ff       	jmpq   404220 <main+0x130>
  4042cf:	90                   	nop
  4042d0:	48 85 c0             	test   %rax,%rax
  4042d3:	0f 85 fb 1f 00 00    	jne    4062d4 <main+0x21e4>
  4042d9:	4c 89 ea             	mov    %r13,%rdx
  4042dc:	eb c5                	jmp    4042a3 <main+0x1b3>
  4042de:	66 90                	xchg   %ax,%ax
  4042e0:	31 d2                	xor    %edx,%edx
  4042e2:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  4042e9:	4c 89 ff             	mov    %r15,%rdi
  4042ec:	e8 8f f1 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4042f1:	48 89 85 50 f5 ff ff 	mov    %rax,-0xab0(%rbp)
  4042f8:	48 89 c7             	mov    %rax,%rdi
  4042fb:	48 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%rax
  404302:	48 89 85 60 f5 ff ff 	mov    %rax,-0xaa0(%rbp)
  404309:	4c 89 f2             	mov    %r14,%rdx
  40430c:	4c 89 e6             	mov    %r12,%rsi
  40430f:	e8 5c ef ff ff       	callq  403270 <memcpy@plt>
  404314:	48 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%rax
  40431b:	48 8b 95 50 f5 ff ff 	mov    -0xab0(%rbp),%rdx
  404322:	e9 7c ff ff ff       	jmpq   4042a3 <main+0x1b3>
  404327:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40432e:	00 00 
  404330:	c6 85 ef f2 ff ff 01 	movb   $0x1,-0xd11(%rbp)
  404337:	e9 e4 fe ff ff       	jmpq   404220 <main+0x130>
  40433c:	0f 1f 40 00          	nopl   0x0(%rax)
  404340:	be 9a 01 41 00       	mov    $0x41019a,%esi
  404345:	4c 89 ff             	mov    %r15,%rdi
  404348:	e8 73 ed ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40434d:	85 c0                	test   %eax,%eax
  40434f:	0f 85 13 01 00 00    	jne    404468 <main+0x378>
  404355:	48 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%rax
  40435c:	48 8b 95 00 f3 ff ff 	mov    -0xd00(%rbp),%rdx
  404363:	4c 8b 74 10 08       	mov    0x8(%rax,%rdx,1),%r14
  404368:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  40436f:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  404376:	4d 85 f6             	test   %r14,%r14
  404379:	0f 84 67 1f 00 00    	je     4062e6 <main+0x21f6>
  40437f:	4c 89 f7             	mov    %r14,%rdi
  404382:	e8 c9 ed ff ff       	callq  403150 <strlen@plt>
  404387:	48 89 85 00 f5 ff ff 	mov    %rax,-0xb00(%rbp)
  40438e:	49 89 c4             	mov    %rax,%r12
  404391:	48 83 f8 0f          	cmp    $0xf,%rax
  404395:	0f 87 7b 02 00 00    	ja     404616 <main+0x526>
  40439b:	48 83 f8 01          	cmp    $0x1,%rax
  40439f:	0f 85 51 02 00 00    	jne    4045f6 <main+0x506>
  4043a5:	41 0f b6 06          	movzbl (%r14),%eax
  4043a9:	88 85 10 f6 ff ff    	mov    %al,-0x9f0(%rbp)
  4043af:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  4043b6:	48 89 85 00 f3 ff ff 	mov    %rax,-0xd00(%rbp)
  4043bd:	48 8b 85 00 f5 ff ff 	mov    -0xb00(%rbp),%rax
  4043c4:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  4043cb:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  4043d2:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4043d6:	e8 65 ec ff ff       	callq  403040 <__errno_location@plt>
  4043db:	49 89 c4             	mov    %rax,%r12
  4043de:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  4043e5:	8b 00                	mov    (%rax),%eax
  4043e7:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  4043ee:	00 
  4043ef:	48 8b b5 00 f3 ff ff 	mov    -0xd00(%rbp),%rsi
  4043f6:	ba 0a 00 00 00       	mov    $0xa,%edx
  4043fb:	4c 89 f7             	mov    %r14,%rdi
  4043fe:	89 85 e8 f2 ff ff    	mov    %eax,-0xd18(%rbp)
  404404:	e8 47 ef ff ff       	callq  403350 <strtoull@plt>
  404409:	48 89 85 d8 f2 ff ff 	mov    %rax,-0xd28(%rbp)
  404410:	4c 3b b5 00 f5 ff ff 	cmp    -0xb00(%rbp),%r14
  404417:	0f 84 bf 1e 00 00    	je     4062dc <main+0x21ec>
  40441d:	41 8b 04 24          	mov    (%r12),%eax
  404421:	83 f8 22             	cmp    $0x22,%eax
  404424:	0f 84 c6 1e 00 00    	je     4062f0 <main+0x2200>
  40442a:	85 c0                	test   %eax,%eax
  40442c:	75 0a                	jne    404438 <main+0x348>
  40442e:	8b 85 e8 f2 ff ff    	mov    -0xd18(%rbp),%eax
  404434:	41 89 04 24          	mov    %eax,(%r12)
  404438:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  40443f:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404446:	48 39 c7             	cmp    %rax,%rdi
  404449:	0f 84 d1 fd ff ff    	je     404220 <main+0x130>
  40444f:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  404456:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40445a:	e8 71 ee ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40445f:	e9 bc fd ff ff       	jmpq   404220 <main+0x130>
  404464:	0f 1f 40 00          	nopl   0x0(%rax)
  404468:	be a9 01 41 00       	mov    $0x4101a9,%esi
  40446d:	4c 89 ff             	mov    %r15,%rdi
  404470:	e8 4b ec ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404475:	85 c0                	test   %eax,%eax
  404477:	0f 85 93 00 00 00    	jne    404510 <main+0x420>
  40447d:	48 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%rax
  404484:	48 8b 95 00 f3 ff ff 	mov    -0xd00(%rbp),%rdx
  40448b:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404492:	48 8b 74 10 08       	mov    0x8(%rax,%rdx,1),%rsi
  404497:	e8 74 69 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40449c:	e8 9f eb ff ff       	callq  403040 <__errno_location@plt>
  4044a1:	49 89 c4             	mov    %rax,%r12
  4044a4:	8b 00                	mov    (%rax),%eax
  4044a6:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  4044ad:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  4044b4:	00 
  4044b5:	89 85 00 f3 ff ff    	mov    %eax,-0xd00(%rbp)
  4044bb:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  4044c2:	48 89 c6             	mov    %rax,%rsi
  4044c5:	4c 89 f7             	mov    %r14,%rdi
  4044c8:	e8 83 ed ff ff       	callq  403250 <strtod@plt>
  4044cd:	c5 fb 11 85 e0 f2 ff 	vmovsd %xmm0,-0xd20(%rbp)
  4044d4:	ff 
  4044d5:	4c 3b b5 00 f5 ff ff 	cmp    -0xb00(%rbp),%r14
  4044dc:	0f 84 0d 1d 00 00    	je     4061ef <main+0x20ff>
  4044e2:	41 8b 04 24          	mov    (%r12),%eax
  4044e6:	83 f8 22             	cmp    $0x22,%eax
  4044e9:	0f 84 f6 1c 00 00    	je     4061e5 <main+0x20f5>
  4044ef:	85 c0                	test   %eax,%eax
  4044f1:	0f 85 41 ff ff ff    	jne    404438 <main+0x348>
  4044f7:	8b 85 00 f3 ff ff    	mov    -0xd00(%rbp),%eax
  4044fd:	41 89 04 24          	mov    %eax,(%r12)
  404501:	e9 32 ff ff ff       	jmpq   404438 <main+0x348>
  404506:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40450d:	00 00 00 
  404510:	be b8 01 41 00       	mov    $0x4101b8,%esi
  404515:	4c 89 ff             	mov    %r15,%rdi
  404518:	e8 a3 eb ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40451d:	85 c0                	test   %eax,%eax
  40451f:	0f 85 38 01 00 00    	jne    40465d <main+0x56d>
  404525:	48 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%rax
  40452c:	48 8b 95 00 f3 ff ff 	mov    -0xd00(%rbp),%rdx
  404533:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  40453a:	48 8b 74 10 08       	mov    0x8(%rax,%rdx,1),%rsi
  40453f:	e8 cc 68 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404544:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  40454b:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  404551:	31 c9                	xor    %ecx,%ecx
  404553:	be 36 00 41 00       	mov    $0x410036,%esi
  404558:	bf 70 33 40 00       	mov    $0x403370,%edi
  40455d:	e8 ae 9e 00 00       	callq  40e410 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  404562:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  404569:	89 85 d4 f2 ff ff    	mov    %eax,-0xd2c(%rbp)
  40456f:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404576:	48 39 c7             	cmp    %rax,%rdi
  404579:	0f 85 d0 fe ff ff    	jne    40444f <main+0x35f>
  40457f:	e9 9c fc ff ff       	jmpq   404220 <main+0x130>
  404584:	0f 1f 40 00          	nopl   0x0(%rax)
  404588:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  40458c:	c5 f9 2f 85 e0 f2 ff 	vcomisd -0xd20(%rbp),%xmm0
  404593:	ff 
  404594:	73 1c                	jae    4045b2 <main+0x4c2>
  404596:	83 bd d4 f2 ff ff 00 	cmpl   $0x0,-0xd2c(%rbp)
  40459d:	7e 13                	jle    4045b2 <main+0x4c2>
  40459f:	8b 85 3c f3 ff ff    	mov    -0xcc4(%rbp),%eax
  4045a5:	ff c8                	dec    %eax
  4045a7:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4045ac:	0f 86 e3 01 00 00    	jbe    404795 <main+0x6a5>
  4045b2:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  4045b8:	48 8b bd f0 f3 ff ff 	mov    -0xc10(%rbp),%rdi
  4045bf:	48 8d 85 00 f4 ff ff 	lea    -0xc00(%rbp),%rax
  4045c6:	48 39 c7             	cmp    %rax,%rdi
  4045c9:	74 10                	je     4045db <main+0x4eb>
  4045cb:	48 8b 85 00 f4 ff ff 	mov    -0xc00(%rbp),%rax
  4045d2:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4045d6:	e8 f5 ec ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4045db:	48 81 c4 20 0d 00 00 	add    $0xd20,%rsp
  4045e2:	5b                   	pop    %rbx
  4045e3:	41 5a                	pop    %r10
  4045e5:	44 89 e0             	mov    %r12d,%eax
  4045e8:	41 5c                	pop    %r12
  4045ea:	41 5d                	pop    %r13
  4045ec:	41 5e                	pop    %r14
  4045ee:	41 5f                	pop    %r15
  4045f0:	5d                   	pop    %rbp
  4045f1:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  4045f5:	c3                   	retq   
  4045f6:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  4045fd:	48 89 85 00 f3 ff ff 	mov    %rax,-0xd00(%rbp)
  404604:	4d 85 e4             	test   %r12,%r12
  404607:	0f 84 b0 fd ff ff    	je     4043bd <main+0x2cd>
  40460d:	48 8d bd 10 f6 ff ff 	lea    -0x9f0(%rbp),%rdi
  404614:	eb 37                	jmp    40464d <main+0x55d>
  404616:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  40461d:	31 d2                	xor    %edx,%edx
  40461f:	48 89 c6             	mov    %rax,%rsi
  404622:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404629:	48 89 85 00 f3 ff ff 	mov    %rax,-0xd00(%rbp)
  404630:	e8 4b ee ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  404635:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  40463c:	48 89 c7             	mov    %rax,%rdi
  40463f:	48 8b 85 00 f5 ff ff 	mov    -0xb00(%rbp),%rax
  404646:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  40464d:	4c 89 e2             	mov    %r12,%rdx
  404650:	4c 89 f6             	mov    %r14,%rsi
  404653:	e8 18 ec ff ff       	callq  403270 <memcpy@plt>
  404658:	e9 60 fd ff ff       	jmpq   4043bd <main+0x2cd>
  40465d:	be c6 01 41 00       	mov    $0x4101c6,%esi
  404662:	4c 89 ff             	mov    %r15,%rdi
  404665:	e8 56 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40466a:	85 c0                	test   %eax,%eax
  40466c:	74 7e                	je     4046ec <main+0x5fc>
  40466e:	be ca 01 41 00       	mov    $0x4101ca,%esi
  404673:	4c 89 ff             	mov    %r15,%rdi
  404676:	e8 45 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40467b:	85 c0                	test   %eax,%eax
  40467d:	75 48                	jne    4046c7 <main+0x5d7>
  40467f:	48 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%rax
  404686:	48 8b 95 00 f3 ff ff 	mov    -0xd00(%rbp),%rdx
  40468d:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404694:	48 8b 74 10 08       	mov    0x8(%rax,%rdx,1),%rsi
  404699:	e8 72 67 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40469e:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  4046a5:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  4046ab:	31 c9                	xor    %ecx,%ecx
  4046ad:	be 36 00 41 00       	mov    $0x410036,%esi
  4046b2:	bf 70 33 40 00       	mov    $0x403370,%edi
  4046b7:	e8 54 9d 00 00       	callq  40e410 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  4046bc:	89 85 c8 f2 ff ff    	mov    %eax,-0xd38(%rbp)
  4046c2:	e9 71 fd ff ff       	jmpq   404438 <main+0x348>
  4046c7:	48 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%rdi
  4046ce:	4c 39 ef             	cmp    %r13,%rdi
  4046d1:	0f 84 db fe ff ff    	je     4045b2 <main+0x4c2>
  4046d7:	48 8b 85 60 f5 ff ff 	mov    -0xaa0(%rbp),%rax
  4046de:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4046e2:	e8 e9 eb ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4046e7:	e9 c6 fe ff ff       	jmpq   4045b2 <main+0x4c2>
  4046ec:	48 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%rax
  4046f3:	48 8b 8d 00 f3 ff ff 	mov    -0xd00(%rbp),%rcx
  4046fa:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404701:	48 8b 74 08 08       	mov    0x8(%rax,%rcx,1),%rsi
  404706:	e8 05 67 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40470b:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  404712:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  404718:	31 c9                	xor    %ecx,%ecx
  40471a:	be 36 00 41 00       	mov    $0x410036,%esi
  40471f:	bf 70 33 40 00       	mov    $0x403370,%edi
  404724:	e8 e7 9c 00 00       	callq  40e410 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  404729:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  404730:	89 85 3c f3 ff ff    	mov    %eax,-0xcc4(%rbp)
  404736:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  40473d:	48 39 c7             	cmp    %rax,%rdi
  404740:	0f 85 09 fd ff ff    	jne    40444f <main+0x35f>
  404746:	e9 d5 fa ff ff       	jmpq   404220 <main+0x130>
  40474b:	b8 01 00 00 00       	mov    $0x1,%eax
  404750:	48 c1 e0 21          	shl    $0x21,%rax
  404754:	c5 fb 10 35 54 c0 00 	vmovsd 0xc054(%rip),%xmm6        # 4107b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  40475b:	00 
  40475c:	c6 85 ef f2 ff ff 00 	movb   $0x0,-0xd11(%rbp)
  404763:	c7 85 d4 f2 ff ff 05 	movl   $0x5,-0xd2c(%rbp)
  40476a:	00 00 00 
  40476d:	c7 85 c8 f2 ff ff 00 	movl   $0x0,-0xd38(%rbp)
  404774:	00 00 00 
  404777:	48 89 85 d8 f2 ff ff 	mov    %rax,-0xd28(%rbp)
  40477e:	c6 85 f0 f2 ff ff 00 	movb   $0x0,-0xd10(%rbp)
  404785:	c5 fb 11 b5 f8 f2 ff 	vmovsd %xmm6,-0xd08(%rbp)
  40478c:	ff 
  40478d:	c5 fb 11 b5 e0 f2 ff 	vmovsd %xmm6,-0xd20(%rbp)
  404794:	ff 
  404795:	be b3 00 41 00       	mov    $0x4100b3,%esi
  40479a:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  4047a1:	e8 1a e9 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047a6:	85 c0                	test   %eax,%eax
  4047a8:	be c0 00 41 00       	mov    $0x4100c0,%esi
  4047ad:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  4047b4:	0f 94 85 2c f3 ff ff 	sete   -0xcd4(%rbp)
  4047bb:	e8 00 e9 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047c0:	85 c0                	test   %eax,%eax
  4047c2:	be f9 00 41 00       	mov    $0x4100f9,%esi
  4047c7:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  4047ce:	0f 94 85 2d f3 ff ff 	sete   -0xcd3(%rbp)
  4047d5:	e8 e6 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047da:	85 c0                	test   %eax,%eax
  4047dc:	be d3 01 41 00       	mov    $0x4101d3,%esi
  4047e1:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  4047e8:	0f 94 85 2e f3 ff ff 	sete   -0xcd2(%rbp)
  4047ef:	e8 cc e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047f4:	85 c0                	test   %eax,%eax
  4047f6:	be eb 00 41 00       	mov    $0x4100eb,%esi
  4047fb:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  404802:	0f 94 85 2f f3 ff ff 	sete   -0xcd1(%rbp)
  404809:	e8 b2 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40480e:	85 c0                	test   %eax,%eax
  404810:	be d0 00 41 00       	mov    $0x4100d0,%esi
  404815:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  40481c:	0f 94 85 30 f3 ff ff 	sete   -0xcd0(%rbp)
  404823:	e8 98 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404828:	85 c0                	test   %eax,%eax
  40482a:	be dc 00 41 00       	mov    $0x4100dc,%esi
  40482f:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  404836:	0f 94 85 31 f3 ff ff 	sete   -0xccf(%rbp)
  40483d:	e8 7e e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404842:	85 c0                	test   %eax,%eax
  404844:	be 36 01 41 00       	mov    $0x410136,%esi
  404849:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  404850:	0f 94 85 32 f3 ff ff 	sete   -0xcce(%rbp)
  404857:	e8 64 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40485c:	85 c0                	test   %eax,%eax
  40485e:	be 3b 01 41 00       	mov    $0x41013b,%esi
  404863:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  40486a:	0f 94 85 33 f3 ff ff 	sete   -0xccd(%rbp)
  404871:	e8 4a e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404876:	85 c0                	test   %eax,%eax
  404878:	be e6 01 41 00       	mov    $0x4101e6,%esi
  40487d:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  404884:	0f 94 85 34 f3 ff ff 	sete   -0xccc(%rbp)
  40488b:	e8 30 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404890:	85 c0                	test   %eax,%eax
  404892:	be 40 01 41 00       	mov    $0x410140,%esi
  404897:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  40489e:	0f 94 85 35 f3 ff ff 	sete   -0xccb(%rbp)
  4048a5:	e8 16 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4048aa:	85 c0                	test   %eax,%eax
  4048ac:	be db 01 41 00       	mov    $0x4101db,%esi
  4048b1:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  4048b8:	0f 94 85 36 f3 ff ff 	sete   -0xcca(%rbp)
  4048bf:	e8 fc e7 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4048c4:	85 c0                	test   %eax,%eax
  4048c6:	be e0 01 41 00       	mov    $0x4101e0,%esi
  4048cb:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  4048d2:	0f 94 85 37 f3 ff ff 	sete   -0xcc9(%rbp)
  4048d9:	e8 e2 e7 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4048de:	85 c0                	test   %eax,%eax
  4048e0:	be 9b 00 41 00       	mov    $0x41009b,%esi
  4048e5:	48 8d bd f0 f3 ff ff 	lea    -0xc10(%rbp),%rdi
  4048ec:	0f 94 85 38 f3 ff ff 	sete   -0xcc8(%rbp)
  4048f3:	e8 c8 e7 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4048f8:	85 c0                	test   %eax,%eax
  4048fa:	0f b6 85 2c f3 ff ff 	movzbl -0xcd4(%rbp),%eax
  404901:	0f 94 c2             	sete   %dl
  404904:	88 95 39 f3 ff ff    	mov    %dl,-0xcc7(%rbp)
  40490a:	84 c0                	test   %al,%al
  40490c:	0f 85 a7 00 00 00    	jne    4049b9 <main+0x8c9>
  404912:	80 bd 2d f3 ff ff 00 	cmpb   $0x0,-0xcd3(%rbp)
  404919:	0f 85 9a 00 00 00    	jne    4049b9 <main+0x8c9>
  40491f:	80 bd 31 f3 ff ff 00 	cmpb   $0x0,-0xccf(%rbp)
  404926:	0f 85 8d 00 00 00    	jne    4049b9 <main+0x8c9>
  40492c:	80 bd 32 f3 ff ff 00 	cmpb   $0x0,-0xcce(%rbp)
  404933:	0f 85 80 00 00 00    	jne    4049b9 <main+0x8c9>
  404939:	0f b6 85 2e f3 ff ff 	movzbl -0xcd2(%rbp),%eax
  404940:	88 85 d2 f2 ff ff    	mov    %al,-0xd2e(%rbp)
  404946:	84 c0                	test   %al,%al
  404948:	0f 85 76 17 00 00    	jne    4060c4 <main+0x1fd4>
  40494e:	80 bd 2f f3 ff ff 00 	cmpb   $0x0,-0xcd1(%rbp)
  404955:	75 47                	jne    40499e <main+0x8ae>
  404957:	80 bd 30 f3 ff ff 00 	cmpb   $0x0,-0xcd0(%rbp)
  40495e:	75 3e                	jne    40499e <main+0x8ae>
  404960:	80 bd 33 f3 ff ff 00 	cmpb   $0x0,-0xccd(%rbp)
  404967:	75 35                	jne    40499e <main+0x8ae>
  404969:	80 bd 34 f3 ff ff 00 	cmpb   $0x0,-0xccc(%rbp)
  404970:	75 2c                	jne    40499e <main+0x8ae>
  404972:	80 bd 35 f3 ff ff 00 	cmpb   $0x0,-0xccb(%rbp)
  404979:	75 23                	jne    40499e <main+0x8ae>
  40497b:	80 bd 36 f3 ff ff 00 	cmpb   $0x0,-0xcca(%rbp)
  404982:	75 1a                	jne    40499e <main+0x8ae>
  404984:	80 bd 37 f3 ff ff 00 	cmpb   $0x0,-0xcc9(%rbp)
  40498b:	75 11                	jne    40499e <main+0x8ae>
  40498d:	80 bd 38 f3 ff ff 00 	cmpb   $0x0,-0xcc8(%rbp)
  404994:	75 08                	jne    40499e <main+0x8ae>
  404996:	84 d2                	test   %dl,%dl
  404998:	0f 84 14 fc ff ff    	je     4045b2 <main+0x4c2>
  40499e:	83 bd c8 f2 ff ff 00 	cmpl   $0x0,-0xd38(%rbp)
  4049a5:	0f 85 02 18 00 00    	jne    4061ad <main+0x20bd>
  4049ab:	c6 85 e8 f2 ff ff 00 	movb   $0x0,-0xd18(%rbp)
  4049b2:	b8 0c 00 00 00       	mov    $0xc,%eax
  4049b7:	eb 3b                	jmp    4049f4 <main+0x904>
  4049b9:	0a 85 2d f3 ff ff    	or     -0xcd3(%rbp),%al
  4049bf:	88 85 e8 f2 ff ff    	mov    %al,-0xd18(%rbp)
  4049c5:	0f b6 85 31 f3 ff ff 	movzbl -0xccf(%rbp),%eax
  4049cc:	0a 85 32 f3 ff ff    	or     -0xcce(%rbp),%al
  4049d2:	83 bd c8 f2 ff ff 00 	cmpl   $0x0,-0xd38(%rbp)
  4049d9:	88 85 d2 f2 ff ff    	mov    %al,-0xd2e(%rbp)
  4049df:	0f 85 02 11 00 00    	jne    405ae7 <main+0x19f7>
  4049e5:	80 bd 2e f3 ff ff 01 	cmpb   $0x1,-0xcd2(%rbp)
  4049ec:	19 c0                	sbb    %eax,%eax
  4049ee:	83 e0 04             	and    $0x4,%eax
  4049f1:	83 c0 08             	add    $0x8,%eax
  4049f4:	89 85 40 f3 ff ff    	mov    %eax,-0xcc0(%rbp)
  4049fa:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  404a01:	4c 8d ad 44 f3 ff ff 	lea    -0xcbc(%rbp),%r13
  404a08:	31 c9                	xor    %ecx,%ecx
  404a0a:	31 d2                	xor    %edx,%edx
  404a0c:	bf b0 66 40 00       	mov    $0x4066b0,%edi
  404a11:	c7 85 44 f3 ff ff 00 	movl   $0x0,-0xcbc(%rbp)
  404a18:	00 00 00 
  404a1b:	c6 85 3a f3 ff ff 01 	movb   $0x1,-0xcc6(%rbp)
  404a22:	4c 89 ad 00 f6 ff ff 	mov    %r13,-0xa00(%rbp)
  404a29:	4c 8d bd 50 f5 ff ff 	lea    -0xab0(%rbp),%r15
  404a30:	e8 8b e9 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  404a35:	8b b5 44 f3 ff ff    	mov    -0xcbc(%rbp),%esi
  404a3b:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  404a3f:	4c 89 ff             	mov    %r15,%rdi
  404a42:	48 c7 85 d0 f5 ff ff 	movq   $0x0,-0xa30(%rbp)
  404a49:	00 00 00 00 
  404a4d:	48 c7 85 d8 f5 ff ff 	movq   $0x0,-0xa28(%rbp)
  404a54:	00 00 00 00 
  404a58:	c6 85 e0 f5 ff ff 00 	movb   $0x0,-0xa20(%rbp)
  404a5f:	c5 fd 7f 85 50 f5 ff 	vmovdqa %ymm0,-0xab0(%rbp)
  404a66:	ff 
  404a67:	c5 fd 7f 85 70 f5 ff 	vmovdqa %ymm0,-0xa90(%rbp)
  404a6e:	ff 
  404a6f:	c5 fd 7f 85 90 f5 ff 	vmovdqa %ymm0,-0xa70(%rbp)
  404a76:	ff 
  404a77:	c5 fd 7f 85 b0 f5 ff 	vmovdqa %ymm0,-0xa50(%rbp)
  404a7e:	ff 
  404a7f:	c5 f8 77             	vzeroupper 
  404a82:	e8 19 92 00 00       	callq  40dca0 <_ZN8Counters4openEi>
  404a87:	80 bd e8 f2 ff ff 00 	cmpb   $0x0,-0xd18(%rbp)
  404a8e:	48 c7 85 48 f3 ff ff 	movq   $0x0,-0xcb8(%rbp)
  404a95:	00 00 00 00 
  404a99:	48 c7 85 50 f3 ff ff 	movq   $0x0,-0xcb0(%rbp)
  404aa0:	00 00 00 00 
  404aa4:	48 c7 85 58 f3 ff ff 	movq   $0x0,-0xca8(%rbp)
  404aab:	00 00 00 00 
  404aaf:	48 c7 85 60 f3 ff ff 	movq   $0x0,-0xca0(%rbp)
  404ab6:	00 00 00 00 
  404aba:	48 c7 85 68 f3 ff ff 	movq   $0x0,-0xc98(%rbp)
  404ac1:	00 00 00 00 
  404ac5:	48 c7 85 90 f3 ff ff 	movq   $0x0,-0xc70(%rbp)
  404acc:	00 00 00 00 
  404ad0:	48 c7 85 98 f3 ff ff 	movq   $0x0,-0xc68(%rbp)
  404ad7:	00 00 00 00 
  404adb:	48 c7 85 a0 f3 ff ff 	movq   $0x0,-0xc60(%rbp)
  404ae2:	00 00 00 00 
  404ae6:	48 c7 85 b0 f3 ff ff 	movq   $0x0,-0xc50(%rbp)
  404aed:	00 00 00 00 
  404af1:	48 c7 85 b8 f3 ff ff 	movq   $0x0,-0xc48(%rbp)
  404af8:	00 00 00 00 
  404afc:	48 c7 85 c0 f3 ff ff 	movq   $0x0,-0xc40(%rbp)
  404b03:	00 00 00 00 
  404b07:	48 c7 85 70 f3 ff ff 	movq   $0x0,-0xc90(%rbp)
  404b0e:	00 00 00 00 
  404b12:	0f b6 85 2e f3 ff ff 	movzbl -0xcd2(%rbp),%eax
  404b19:	0f 85 2b 10 00 00    	jne    405b4a <main+0x1a5a>
  404b1f:	80 bd d2 f2 ff ff 00 	cmpb   $0x0,-0xd2e(%rbp)
  404b26:	0f 85 5f 10 00 00    	jne    405b8b <main+0x1a9b>
  404b2c:	84 c0                	test   %al,%al
  404b2e:	0f 84 66 01 00 00    	je     404c9a <main+0xbaa>
  404b34:	8b 85 40 f3 ff ff    	mov    -0xcc0(%rbp),%eax
  404b3a:	c1 e0 03             	shl    $0x3,%eax
  404b3d:	48 63 f0             	movslq %eax,%rsi
  404b40:	0f 89 63 14 00 00    	jns    405fa9 <main+0x1eb9>
  404b46:	48 f7 de             	neg    %rsi
  404b49:	31 d2                	xor    %edx,%edx
  404b4b:	f3 48 0f bc d6       	tzcnt  %rsi,%rdx
  404b50:	b9 06 00 00 00       	mov    $0x6,%ecx
  404b55:	39 ca                	cmp    %ecx,%edx
  404b57:	0f 4e ca             	cmovle %edx,%ecx
  404b5a:	c4 e2 eb f7 c6       	shrx   %rdx,%rsi,%rax
  404b5f:	89 cf                	mov    %ecx,%edi
  404b61:	ba 01 00 00 00       	mov    $0x1,%edx
  404b66:	eb 0c                	jmp    404b74 <main+0xa84>
  404b68:	31 c9                	xor    %ecx,%ecx
  404b6a:	f3 48 0f bc c8       	tzcnt  %rax,%rcx
  404b6f:	c4 e2 f3 f7 c0       	shrx   %rcx,%rax,%rax
  404b74:	48 39 c2             	cmp    %rax,%rdx
  404b77:	76 02                	jbe    404b7b <main+0xa8b>
  404b79:	48 92                	xchg   %rax,%rdx
  404b7b:	48 29 d0             	sub    %rdx,%rax
  404b7e:	75 e8                	jne    404b68 <main+0xa78>
  404b80:	c4 e2 c1 f7 ca       	shlx   %rdi,%rdx,%rcx
  404b85:	b8 40 00 00 00       	mov    $0x40,%eax
  404b8a:	31 d2                	xor    %edx,%edx
  404b8c:	48 f7 f1             	div    %rcx
  404b8f:	48 0f af c6          	imul   %rsi,%rax
  404b93:	80 bd e8 f2 ff ff 00 	cmpb   $0x0,-0xd18(%rbp)
  404b9a:	48 89 c1             	mov    %rax,%rcx
  404b9d:	0f 85 b4 0f 00 00    	jne    405b57 <main+0x1a67>
  404ba3:	48 8b 85 d8 f2 ff ff 	mov    -0xd28(%rbp),%rax
  404baa:	31 d2                	xor    %edx,%edx
  404bac:	48 c1 e8 04          	shr    $0x4,%rax
  404bb0:	48 f7 f1             	div    %rcx
  404bb3:	48 0f af c1          	imul   %rcx,%rax
  404bb7:	48 89 85 48 f3 ff ff 	mov    %rax,-0xcb8(%rbp)
  404bbe:	48 85 c0             	test   %rax,%rax
  404bc1:	0f 84 f6 13 00 00    	je     405fbd <main+0x1ecd>
  404bc7:	ba 02 00 00 00       	mov    $0x2,%edx
  404bcc:	48 0f af d0          	imul   %rax,%rdx
  404bd0:	44 0f b6 a5 ef f2 ff 	movzbl -0xd11(%rbp),%r12d
  404bd7:	ff 
  404bd8:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  404bdf:	00 
  404be0:	48 8d 1c d5 00 00 00 	lea    0x0(,%rdx,8),%rbx
  404be7:	00 
  404be8:	44 89 e6             	mov    %r12d,%esi
  404beb:	48 89 9d d8 f2 ff ff 	mov    %rbx,-0xd28(%rbp)
  404bf2:	e8 69 63 00 00       	callq  40af60 <_Z11alloc_bytesmb>
  404bf7:	48 89 85 50 f3 ff ff 	mov    %rax,-0xcb0(%rbp)
  404bfe:	48 8b 85 48 f3 ff ff 	mov    -0xcb8(%rbp),%rax
  404c05:	44 89 e6             	mov    %r12d,%esi
  404c08:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  404c0f:	00 
  404c10:	e8 4b 63 00 00       	callq  40af60 <_Z11alloc_bytesmb>
  404c15:	80 bd e8 f2 ff ff 00 	cmpb   $0x0,-0xd18(%rbp)
  404c1c:	48 89 85 58 f3 ff ff 	mov    %rax,-0xca8(%rbp)
  404c23:	74 1e                	je     404c43 <main+0xb53>
  404c25:	48 8b 85 48 f3 ff ff 	mov    -0xcb8(%rbp),%rax
  404c2c:	44 89 e6             	mov    %r12d,%esi
  404c2f:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  404c36:	00 
  404c37:	e8 24 63 00 00       	callq  40af60 <_Z11alloc_bytesmb>
  404c3c:	48 89 85 60 f3 ff ff 	mov    %rax,-0xca0(%rbp)
  404c43:	48 8d 85 48 f3 ff ff 	lea    -0xcb8(%rbp),%rax
  404c4a:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  404c4f:	48 8d 85 50 f3 ff ff 	lea    -0xcb0(%rbp),%rax
  404c56:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  404c5c:	48 8d 85 58 f3 ff ff 	lea    -0xca8(%rbp),%rax
  404c63:	c5 f9 7f 85 00 f6 ff 	vmovdqa %xmm0,-0xa00(%rbp)
  404c6a:	ff 
  404c6b:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  404c70:	48 8d 85 60 f3 ff ff 	lea    -0xca0(%rbp),%rax
  404c77:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  404c7d:	31 c9                	xor    %ecx,%ecx
  404c7f:	31 d2                	xor    %edx,%edx
  404c81:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  404c88:	bf 40 65 40 00       	mov    $0x406540,%edi
  404c8d:	c5 f9 7f 85 10 f6 ff 	vmovdqa %xmm0,-0x9f0(%rbp)
  404c94:	ff 
  404c95:	e8 26 e7 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  404c9a:	48 8d 9d 90 f3 ff ff 	lea    -0xc70(%rbp),%rbx
  404ca1:	4c 8d b5 b0 f3 ff ff 	lea    -0xc50(%rbp),%r14
  404ca8:	c4 e1 f9 6e fb       	vmovq  %rbx,%xmm7
  404cad:	c4 c3 c1 22 fe 01    	vpinsrq $0x1,%r14,%xmm7,%xmm7
  404cb3:	80 bd 30 f3 ff ff 00 	cmpb   $0x0,-0xcd0(%rbp)
  404cba:	c5 f9 7f bd 10 f3 ff 	vmovdqa %xmm7,-0xcf0(%rbp)
  404cc1:	ff 
  404cc2:	0f 84 ba 00 00 00    	je     404d82 <main+0xc92>
  404cc8:	80 bd f0 f2 ff ff 00 	cmpb   $0x0,-0xd10(%rbp)
  404ccf:	0f 84 2d 13 00 00    	je     406002 <main+0x1f12>
  404cd5:	48 8b 85 d8 f2 ff ff 	mov    -0xd28(%rbp),%rax
  404cdc:	48 25 00 fe ff ff    	and    $0xfffffffffffffe00,%rax
  404ce2:	48 89 85 70 f3 ff ff 	mov    %rax,-0xc90(%rbp)
  404ce9:	48 3d ff 01 00 00    	cmp    $0x1ff,%rax
  404cef:	0f 86 ac 12 00 00    	jbe    405fa1 <main+0x1eb1>
  404cf5:	48 63 b5 44 f3 ff ff 	movslq -0xcbc(%rbp),%rsi
  404cfc:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  404d03:	48 0f af c6          	imul   %rsi,%rax
  404d07:	48 89 df             	mov    %rbx,%rdi
  404d0a:	48 c7 85 00 f6 ff ff 	movq   $0x0,-0xa00(%rbp)
  404d11:	00 00 00 00 
  404d15:	48 89 85 d8 f2 ff ff 	mov    %rax,-0xd28(%rbp)
  404d1c:	e8 bf 98 00 00       	callq  40e5e0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_>
  404d21:	48 63 b5 44 f3 ff ff 	movslq -0xcbc(%rbp),%rsi
  404d28:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  404d2f:	4c 89 f7             	mov    %r14,%rdi
  404d32:	48 c7 85 00 f6 ff ff 	movq   $0x0,-0xa00(%rbp)
  404d39:	00 00 00 00 
  404d3d:	e8 9e 9b 00 00       	callq  40e8e0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd>
  404d42:	0f b6 85 ef f2 ff ff 	movzbl -0xd11(%rbp),%eax
  404d49:	c5 f9 6f bd 10 f3 ff 	vmovdqa -0xcf0(%rbp),%xmm7
  404d50:	ff 
  404d51:	88 85 18 f6 ff ff    	mov    %al,-0x9e8(%rbp)
  404d57:	31 c9                	xor    %ecx,%ecx
  404d59:	48 8d 85 70 f3 ff ff 	lea    -0xc90(%rbp),%rax
  404d60:	31 d2                	xor    %edx,%edx
  404d62:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  404d69:	bf f0 af 40 00       	mov    $0x40aff0,%edi
  404d6e:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  404d75:	c5 f9 7f bd 00 f6 ff 	vmovdqa %xmm7,-0xa00(%rbp)
  404d7c:	ff 
  404d7d:	e8 3e e6 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  404d82:	80 bd 2f f3 ff ff 00 	cmpb   $0x0,-0xcd1(%rbp)
  404d89:	0f 84 63 12 00 00    	je     405ff2 <main+0x1f02>
  404d8f:	83 bd 44 f3 ff ff 01 	cmpl   $0x1,-0xcbc(%rbp)
  404d96:	0f 85 8f f2 ff ff    	jne    40402b <main.cold+0x30f>
  404d9c:	48 8b 85 d8 f2 ff ff 	mov    -0xd28(%rbp),%rax
  404da3:	48 c1 e8 06          	shr    $0x6,%rax
  404da7:	48 89 85 48 f3 ff ff 	mov    %rax,-0xcb8(%rbp)
  404dae:	48 83 f8 01          	cmp    $0x1,%rax
  404db2:	0f 86 e9 11 00 00    	jbe    405fa1 <main+0x1eb1>
  404db8:	48 c1 e0 06          	shl    $0x6,%rax
  404dbc:	0f b6 b5 ef f2 ff ff 	movzbl -0xd11(%rbp),%esi
  404dc3:	48 89 c7             	mov    %rax,%rdi
  404dc6:	48 89 85 d8 f2 ff ff 	mov    %rax,-0xd28(%rbp)
  404dcd:	e8 8e 61 00 00       	callq  40af60 <_Z11alloc_bytesmb>
  404dd2:	4c 8b a5 48 f3 ff ff 	mov    -0xcb8(%rbp),%r12
  404dd9:	48 89 85 c0 f2 ff ff 	mov    %rax,-0xd40(%rbp)
  404de0:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
  404de7:	ff ff 0f 
  404dea:	49 39 c4             	cmp    %rax,%r12
  404ded:	0f 87 06 14 00 00    	ja     4061f9 <main+0x2109>
  404df3:	4a 8d 04 e5 00 00 00 	lea    0x0(,%r12,8),%rax
  404dfa:	00 
  404dfb:	4d 85 e4             	test   %r12,%r12
  404dfe:	0f 84 7f 12 00 00    	je     406083 <main+0x1f93>
  404e04:	48 89 c7             	mov    %rax,%rdi
  404e07:	48 89 85 10 f3 ff ff 	mov    %rax,-0xcf0(%rbp)
  404e0e:	e8 ad e4 ff ff       	callq  4032c0 <_Znwm@plt>
  404e13:	49 89 c0             	mov    %rax,%r8
  404e16:	48 8b 85 10 f3 ff ff 	mov    -0xcf0(%rbp),%rax
  404e1d:	49 ff cc             	dec    %r12
  404e20:	49 8d 14 00          	lea    (%r8,%rax,1),%rdx
  404e24:	48 89 95 10 f3 ff ff 	mov    %rdx,-0xcf0(%rbp)
  404e2b:	49 c7 00 00 00 00 00 	movq   $0x0,(%r8)
  404e32:	49 8d 78 08          	lea    0x8(%r8),%rdi
  404e36:	74 23                	je     404e5b <main+0xd6b>
  404e38:	48 83 e8 08          	sub    $0x8,%rax
  404e3c:	48 89 c2             	mov    %rax,%rdx
  404e3f:	31 f6                	xor    %esi,%esi
  404e41:	4c 89 85 08 f3 ff ff 	mov    %r8,-0xcf8(%rbp)
  404e48:	e8 43 e3 ff ff       	callq  403190 <memset@plt>
  404e4d:	48 8b bd 10 f3 ff ff 	mov    -0xcf0(%rbp),%rdi
  404e54:	4c 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%r8
  404e5b:	48 89 fa             	mov    %rdi,%rdx
  404e5e:	4c 29 c2             	sub    %r8,%rdx
  404e61:	48 c1 ea 03          	shr    $0x3,%rdx
  404e65:	31 c0                	xor    %eax,%eax
  404e67:	eb 07                	jmp    404e70 <main+0xd80>
  404e69:	49 89 04 c0          	mov    %rax,(%r8,%rax,8)
  404e6d:	48 ff c0             	inc    %rax
  404e70:	48 39 c2             	cmp    %rax,%rdx
  404e73:	75 f4                	jne    404e69 <main+0xd79>
  404e75:	48 c7 85 00 f6 ff ff 	movq   $0x7,-0xa00(%rbp)
  404e7c:	07 00 00 00 
  404e80:	b8 07 00 00 00       	mov    $0x7,%eax
  404e85:	b9 01 00 00 00       	mov    $0x1,%ecx
  404e8a:	48 be 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rsi
  404e91:	f4 51 58 
  404e94:	48 89 c2             	mov    %rax,%rdx
  404e97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404e9e:	00 00 
  404ea0:	48 89 d0             	mov    %rdx,%rax
  404ea3:	48 c1 e8 3e          	shr    $0x3e,%rax
  404ea7:	48 31 d0             	xor    %rdx,%rax
  404eaa:	48 0f af c6          	imul   %rsi,%rax
  404eae:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  404eb2:	48 89 94 cd 00 f6 ff 	mov    %rdx,-0xa00(%rbp,%rcx,8)
  404eb9:	ff 
  404eba:	48 ff c1             	inc    %rcx
  404ebd:	48 81 f9 38 01 00 00 	cmp    $0x138,%rcx
  404ec4:	75 da                	jne    404ea0 <main+0xdb0>
  404ec6:	48 89 fe             	mov    %rdi,%rsi
  404ec9:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  404ed0:	4c 89 c7             	mov    %r8,%rdi
  404ed3:	4c 89 85 08 f3 ff ff 	mov    %r8,-0xcf8(%rbp)
  404eda:	48 c7 45 c0 38 01 00 	movq   $0x138,-0x40(%rbp)
  404ee1:	00 
  404ee2:	e8 a9 9e 00 00       	callq  40ed90 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>
  404ee7:	48 8b b5 48 f3 ff ff 	mov    -0xcb8(%rbp),%rsi
  404eee:	4c 8b 8d c0 f2 ff ff 	mov    -0xd40(%rbp),%r9
  404ef5:	4c 8b 85 08 f3 ff ff 	mov    -0xcf8(%rbp),%r8
  404efc:	31 c9                	xor    %ecx,%ecx
  404efe:	eb 26                	jmp    404f26 <main+0xe36>
  404f00:	48 ff c1             	inc    %rcx
  404f03:	b8 06 00 00 00       	mov    $0x6,%eax
  404f08:	c4 c2 f9 f7 7c c8 f8 	shlx   %rax,-0x8(%r8,%rcx,8),%rdi
  404f0f:	31 d2                	xor    %edx,%edx
  404f11:	48 89 c8             	mov    %rcx,%rax
  404f14:	48 f7 f6             	div    %rsi
  404f17:	49 8b 04 d0          	mov    (%r8,%rdx,8),%rax
  404f1b:	48 c1 e0 06          	shl    $0x6,%rax
  404f1f:	4c 01 c8             	add    %r9,%rax
  404f22:	49 89 04 39          	mov    %rax,(%r9,%rdi,1)
  404f26:	48 39 ce             	cmp    %rcx,%rsi
  404f29:	75 d5                	jne    404f00 <main+0xe10>
  404f2b:	48 8b 85 c0 f2 ff ff 	mov    -0xd40(%rbp),%rax
  404f32:	48 89 85 68 f3 ff ff 	mov    %rax,-0xc98(%rbp)
  404f39:	4d 85 c0             	test   %r8,%r8
  404f3c:	74 19                	je     404f57 <main+0xe67>
  404f3e:	48 8b b5 10 f3 ff ff 	mov    -0xcf0(%rbp),%rsi
  404f45:	4c 89 c7             	mov    %r8,%rdi
  404f48:	4c 29 c6             	sub    %r8,%rsi
  404f4b:	e8 80 e3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  404f50:	48 8b b5 48 f3 ff ff 	mov    -0xcb8(%rbp),%rsi
  404f57:	31 c0                	xor    %eax,%eax
  404f59:	eb 0d                	jmp    404f68 <main+0xe78>
  404f5b:	48 8b 12             	mov    (%rdx),%rdx
  404f5e:	48 ff c0             	inc    %rax
  404f61:	48 89 95 68 f3 ff ff 	mov    %rdx,-0xc98(%rbp)
  404f68:	48 8b 95 68 f3 ff ff 	mov    -0xc98(%rbp),%rdx
  404f6f:	48 39 c6             	cmp    %rax,%rsi
  404f72:	75 e7                	jne    404f5b <main+0xe6b>
  404f74:	48 39 95 c0 f2 ff ff 	cmp    %rdx,-0xd40(%rbp)
  404f7b:	0f 94 c0             	sete   %al
  404f7e:	20 85 3a f3 ff ff    	and    %al,-0xcc6(%rbp)
  404f84:	48 8d 85 39 f3 ff ff 	lea    -0xcc7(%rbp),%rax
  404f8b:	62 e1 fd 08 6e e0    	vmovq  %rax,%xmm20
  404f91:	48 8d 85 2f f3 ff ff 	lea    -0xcd1(%rbp),%rax
  404f98:	62 e3 dd 00 22 e0 01 	vpinsrq $0x1,%rax,%xmm20,%xmm20
  404f9f:	48 8d 85 68 f3 ff ff 	lea    -0xc98(%rbp),%rax
  404fa6:	62 e1 fd 08 6e d8    	vmovq  %rax,%xmm19
  404fac:	48 8d 85 2c f3 ff ff 	lea    -0xcd4(%rbp),%rax
  404fb3:	62 e3 e5 00 22 d8 01 	vpinsrq $0x1,%rax,%xmm19,%xmm19
  404fba:	48 8d 85 48 f3 ff ff 	lea    -0xcb8(%rbp),%rax
  404fc1:	62 e1 fd 08 6e d0    	vmovq  %rax,%xmm18
  404fc7:	48 8d 85 50 f3 ff ff 	lea    -0xcb0(%rbp),%rax
  404fce:	62 e3 ed 00 22 d0 01 	vpinsrq $0x1,%rax,%xmm18,%xmm18
  404fd5:	48 8d 85 58 f3 ff ff 	lea    -0xca8(%rbp),%rax
  404fdc:	62 e1 fd 08 6e c8    	vmovq  %rax,%xmm17
  404fe2:	48 8d 85 60 f3 ff ff 	lea    -0xca0(%rbp),%rax
  404fe9:	62 e3 f5 00 22 c8 01 	vpinsrq $0x1,%rax,%xmm17,%xmm17
  404ff0:	48 8d 85 2d f3 ff ff 	lea    -0xcd3(%rbp),%rax
  404ff7:	62 e1 fd 08 6e c0    	vmovq  %rax,%xmm16
  404ffd:	48 8d 85 31 f3 ff ff 	lea    -0xccf(%rbp),%rax
  405004:	62 e3 fd 00 22 c0 01 	vpinsrq $0x1,%rax,%xmm16,%xmm16
  40500b:	48 8d 85 32 f3 ff ff 	lea    -0xcce(%rbp),%rax
  405012:	c4 61 f9 6e f8       	vmovq  %rax,%xmm15
  405017:	48 8d 85 30 f3 ff ff 	lea    -0xcd0(%rbp),%rax
  40501e:	c4 63 81 22 f8 01    	vpinsrq $0x1,%rax,%xmm15,%xmm15
  405024:	c4 e1 f9 6e f3       	vmovq  %rbx,%xmm6
  405029:	48 8d 85 70 f3 ff ff 	lea    -0xc90(%rbp),%rax
  405030:	c4 c1 f9 6e fe       	vmovq  %r14,%xmm7
  405035:	c4 63 c9 22 f0 01    	vpinsrq $0x1,%rax,%xmm6,%xmm14
  40503b:	48 8d 85 80 f3 ff ff 	lea    -0xc80(%rbp),%rax
  405042:	c4 63 c1 22 e8 01    	vpinsrq $0x1,%rax,%xmm7,%xmm13
  405048:	48 8d 85 3a f3 ff ff 	lea    -0xcc6(%rbp),%rax
  40504f:	c4 61 f9 6e e0       	vmovq  %rax,%xmm12
  405054:	48 8d 85 88 f3 ff ff 	lea    -0xc78(%rbp),%rax
  40505b:	c4 63 99 22 e0 01    	vpinsrq $0x1,%rax,%xmm12,%xmm12
  405061:	48 8d 85 2e f3 ff ff 	lea    -0xcd2(%rbp),%rax
  405068:	c4 61 f9 6e d8       	vmovq  %rax,%xmm11
  40506d:	48 8d 85 40 f3 ff ff 	lea    -0xcc0(%rbp),%rax
  405074:	c4 63 a1 22 d8 01    	vpinsrq $0x1,%rax,%xmm11,%xmm11
  40507a:	48 8d 85 3c f3 ff ff 	lea    -0xcc4(%rbp),%rax
  405081:	c4 61 f9 6e d0       	vmovq  %rax,%xmm10
  405086:	48 8d 85 35 f3 ff ff 	lea    -0xccb(%rbp),%rax
  40508d:	c4 63 a9 22 d0 01    	vpinsrq $0x1,%rax,%xmm10,%xmm10
  405093:	48 8d 85 36 f3 ff ff 	lea    -0xcca(%rbp),%rax
  40509a:	c4 61 f9 6e c8       	vmovq  %rax,%xmm9
  40509f:	48 8d 85 37 f3 ff ff 	lea    -0xcc9(%rbp),%rax
  4050a6:	c4 63 b1 22 c8 01    	vpinsrq $0x1,%rax,%xmm9,%xmm9
  4050ac:	48 8d 85 38 f3 ff ff 	lea    -0xcc8(%rbp),%rax
  4050b3:	c4 61 f9 6e c0       	vmovq  %rax,%xmm8
  4050b8:	48 8d 85 33 f3 ff ff 	lea    -0xccd(%rbp),%rax
  4050bf:	c4 63 b9 22 c0 01    	vpinsrq $0x1,%rax,%xmm8,%xmm8
  4050c5:	0f b6 8d 33 f3 ff ff 	movzbl -0xccd(%rbp),%ecx
  4050cc:	48 8d 85 34 f3 ff ff 	lea    -0xccc(%rbp),%rax
  4050d3:	c4 e1 f9 6e f8       	vmovq  %rax,%xmm7
  4050d8:	48 8d 85 78 f3 ff ff 	lea    -0xc88(%rbp),%rax
  4050df:	48 c7 85 78 f3 ff ff 	movq   $0x0,-0xc88(%rbp)
  4050e6:	00 00 00 00 
  4050ea:	c4 e3 c1 22 f8 01    	vpinsrq $0x1,%rax,%xmm7,%xmm7
  4050f0:	84 c9                	test   %cl,%cl
  4050f2:	75 09                	jne    4050fd <main+0x100d>
  4050f4:	80 bd 34 f3 ff ff 00 	cmpb   $0x0,-0xccc(%rbp)
  4050fb:	74 7d                	je     40517a <main+0x108a>
  4050fd:	c5 fb 10 1d f3 b5 00 	vmovsd 0xb5f3(%rip),%xmm3        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  405104:	00 
  405105:	c5 fb 10 35 c3 b5 00 	vmovsd 0xb5c3(%rip),%xmm6        # 4106d0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x110>
  40510c:	00 
  40510d:	c5 fa 10 15 db b6 00 	vmovss 0xb6db(%rip),%xmm2        # 4107f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x230>
  405114:	00 
  405115:	c5 fa 10 0d d7 b6 00 	vmovss 0xb6d7(%rip),%xmm1        # 4107f4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x234>
  40511c:	00 
  40511d:	c5 fa 10 2d d7 b6 00 	vmovss 0xb6d7(%rip),%xmm5        # 4107fc <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x23c>
  405124:	00 
  405125:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  405129:	31 d2                	xor    %edx,%edx
  40512b:	ff c2                	inc    %edx
  40512d:	84 c9                	test   %cl,%cl
  40512f:	0f 84 68 0a 00 00    	je     405b9d <main+0x1aad>
  405135:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  405139:	c5 fa 2a c2          	vcvtsi2ss %edx,%xmm0,%xmm0
  40513d:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  405142:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405148:	c4 e2 69 b9 c1       	vfmadd231ss %xmm1,%xmm2,%xmm0
  40514d:	ff c8                	dec    %eax
  40514f:	75 f7                	jne    405148 <main+0x1058>
  405151:	c5 fa 59 c5          	vmulss %xmm5,%xmm0,%xmm0
  405155:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  405159:	c5 db 58 e0          	vaddsd %xmm0,%xmm4,%xmm4
  40515d:	83 fa 0c             	cmp    $0xc,%edx
  405160:	75 c9                	jne    40512b <main+0x103b>
  405162:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  405166:	c5 cb 2a 85 44 f3 ff 	vcvtsi2sdl -0xcbc(%rbp),%xmm6,%xmm0
  40516d:	ff 
  40516e:	c5 fb 59 c4          	vmulsd %xmm4,%xmm0,%xmm0
  405172:	c5 fb 11 85 78 f3 ff 	vmovsd %xmm0,-0xc88(%rbp)
  405179:	ff 
  40517a:	48 8d bd d0 f3 ff ff 	lea    -0xc30(%rbp),%rdi
  405181:	48 c7 85 80 f3 ff ff 	movq   $0x0,-0xc80(%rbp)
  405188:	00 00 00 00 
  40518c:	48 c7 85 88 f3 ff ff 	movq   $0x0,-0xc78(%rbp)
  405193:	00 00 00 00 
  405197:	4c 89 ad e0 f6 ff ff 	mov    %r13,-0x920(%rbp)
  40519e:	62 e1 fd 08 7f a5 00 	vmovdqa64 %xmm20,-0xa00(%rbp)
  4051a5:	f6 ff ff 
  4051a8:	62 e1 fd 08 7f 9d 10 	vmovdqa64 %xmm19,-0x9f0(%rbp)
  4051af:	f6 ff ff 
  4051b2:	62 e1 fd 08 7f 95 20 	vmovdqa64 %xmm18,-0x9e0(%rbp)
  4051b9:	f6 ff ff 
  4051bc:	62 e1 fd 08 7f 8d 30 	vmovdqa64 %xmm17,-0x9d0(%rbp)
  4051c3:	f6 ff ff 
  4051c6:	62 e1 fd 08 7f 85 40 	vmovdqa64 %xmm16,-0x9c0(%rbp)
  4051cd:	f6 ff ff 
  4051d0:	c5 79 7f bd 50 f6 ff 	vmovdqa %xmm15,-0x9b0(%rbp)
  4051d7:	ff 
  4051d8:	c5 79 7f b5 60 f6 ff 	vmovdqa %xmm14,-0x9a0(%rbp)
  4051df:	ff 
  4051e0:	c5 79 7f ad 70 f6 ff 	vmovdqa %xmm13,-0x990(%rbp)
  4051e7:	ff 
  4051e8:	c5 79 7f a5 80 f6 ff 	vmovdqa %xmm12,-0x980(%rbp)
  4051ef:	ff 
  4051f0:	c5 79 7f 9d 90 f6 ff 	vmovdqa %xmm11,-0x970(%rbp)
  4051f7:	ff 
  4051f8:	c5 79 7f 95 a0 f6 ff 	vmovdqa %xmm10,-0x960(%rbp)
  4051ff:	ff 
  405200:	c5 79 7f 8d b0 f6 ff 	vmovdqa %xmm9,-0x950(%rbp)
  405207:	ff 
  405208:	c5 79 7f 85 c0 f6 ff 	vmovdqa %xmm8,-0x940(%rbp)
  40520f:	ff 
  405210:	c5 f9 7f bd d0 f6 ff 	vmovdqa %xmm7,-0x930(%rbp)
  405217:	ff 
  405218:	e8 a3 88 00 00       	callq  40dac0 <_ZN11PerfControlC1Ev>
  40521d:	83 bd d0 f3 ff ff 00 	cmpl   $0x0,-0xc30(%rbp)
  405224:	0f 89 f6 0d 00 00    	jns    406020 <main+0x1f30>
  40522a:	80 bd 2f f3 ff ff 00 	cmpb   $0x0,-0xcd1(%rbp)
  405231:	0f 84 ff 0d 00 00    	je     406036 <main+0x1f46>
  405237:	80 bd 39 f3 ff ff 00 	cmpb   $0x0,-0xcc7(%rbp)
  40523e:	be 9b 00 41 00       	mov    $0x41009b,%esi
  405243:	0f 85 a9 00 00 00    	jne    4052f2 <main+0x1202>
  405249:	80 bd 2c f3 ff ff 00 	cmpb   $0x0,-0xcd4(%rbp)
  405250:	be ac 00 41 00       	mov    $0x4100ac,%esi
  405255:	0f 85 97 00 00 00    	jne    4052f2 <main+0x1202>
  40525b:	80 bd 2d f3 ff ff 00 	cmpb   $0x0,-0xcd3(%rbp)
  405262:	be b9 00 41 00       	mov    $0x4100b9,%esi
  405267:	0f 85 85 00 00 00    	jne    4052f2 <main+0x1202>
  40526d:	80 bd 31 f3 ff ff 00 	cmpb   $0x0,-0xccf(%rbp)
  405274:	be c9 00 41 00       	mov    $0x4100c9,%esi
  405279:	75 77                	jne    4052f2 <main+0x1202>
  40527b:	80 bd 32 f3 ff ff 00 	cmpb   $0x0,-0xcce(%rbp)
  405282:	be d5 00 41 00       	mov    $0x4100d5,%esi
  405287:	75 69                	jne    4052f2 <main+0x1202>
  405289:	80 bd 30 f3 ff ff 00 	cmpb   $0x0,-0xcd0(%rbp)
  405290:	be e4 00 41 00       	mov    $0x4100e4,%esi
  405295:	75 5b                	jne    4052f2 <main+0x1202>
  405297:	80 bd 2e f3 ff ff 00 	cmpb   $0x0,-0xcd2(%rbp)
  40529e:	be f0 00 41 00       	mov    $0x4100f0,%esi
  4052a3:	75 4d                	jne    4052f2 <main+0x1202>
  4052a5:	80 bd 2f f3 ff ff 00 	cmpb   $0x0,-0xcd1(%rbp)
  4052ac:	be ff 00 41 00       	mov    $0x4100ff,%esi
  4052b1:	75 3f                	jne    4052f2 <main+0x1202>
  4052b3:	80 bd 35 f3 ff ff 00 	cmpb   $0x0,-0xccb(%rbp)
  4052ba:	be 12 01 41 00       	mov    $0x410112,%esi
  4052bf:	75 31                	jne    4052f2 <main+0x1202>
  4052c1:	80 bd 36 f3 ff ff 00 	cmpb   $0x0,-0xcca(%rbp)
  4052c8:	be 0d 01 41 00       	mov    $0x41010d,%esi
  4052cd:	75 23                	jne    4052f2 <main+0x1202>
  4052cf:	80 bd 37 f3 ff ff 00 	cmpb   $0x0,-0xcc9(%rbp)
  4052d6:	be 1b 01 41 00       	mov    $0x41011b,%esi
  4052db:	75 15                	jne    4052f2 <main+0x1202>
  4052dd:	80 bd 38 f3 ff ff 00 	cmpb   $0x0,-0xcc8(%rbp)
  4052e4:	be 25 01 41 00       	mov    $0x410125,%esi
  4052e9:	b8 a0 00 41 00       	mov    $0x4100a0,%eax
  4052ee:	48 0f 44 f0          	cmove  %rax,%rsi
  4052f2:	48 8d bd 10 f4 ff ff 	lea    -0xbf0(%rbp),%rdi
  4052f9:	e8 12 5b 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4052fe:	0f b6 85 d2 f2 ff ff 	movzbl -0xd2e(%rbp),%eax
  405305:	be f2 01 41 00       	mov    $0x4101f2,%esi
  40530a:	0a 85 e8 f2 ff ff    	or     -0xd18(%rbp),%al
  405310:	88 85 d3 f2 ff ff    	mov    %al,-0xd2d(%rbp)
  405316:	75 5e                	jne    405376 <main+0x1286>
  405318:	80 bd 2f f3 ff ff 00 	cmpb   $0x0,-0xcd1(%rbp)
  40531f:	75 55                	jne    405376 <main+0x1286>
  405321:	80 bd 30 f3 ff ff 00 	cmpb   $0x0,-0xcd0(%rbp)
  405328:	75 4c                	jne    405376 <main+0x1286>
  40532a:	80 bd 39 f3 ff ff 00 	cmpb   $0x0,-0xcc7(%rbp)
  405331:	75 43                	jne    405376 <main+0x1286>
  405333:	80 bd 35 f3 ff ff 00 	cmpb   $0x0,-0xccb(%rbp)
  40533a:	be e6 01 41 00       	mov    $0x4101e6,%esi
  40533f:	75 35                	jne    405376 <main+0x1286>
  405341:	80 bd 38 f3 ff ff 00 	cmpb   $0x0,-0xcc8(%rbp)
  405348:	75 2c                	jne    405376 <main+0x1286>
  40534a:	80 bd 36 f3 ff ff 00 	cmpb   $0x0,-0xcca(%rbp)
  405351:	be 40 01 41 00       	mov    $0x410140,%esi
  405356:	75 1e                	jne    405376 <main+0x1286>
  405358:	80 bd 37 f3 ff ff 00 	cmpb   $0x0,-0xcc9(%rbp)
  40535f:	75 15                	jne    405376 <main+0x1286>
  405361:	80 bd 33 f3 ff ff 00 	cmpb   $0x0,-0xccd(%rbp)
  405368:	be 36 01 41 00       	mov    $0x410136,%esi
  40536d:	b8 3b 01 41 00       	mov    $0x41013b,%eax
  405372:	48 0f 44 f0          	cmove  %rax,%rsi
  405376:	48 8d bd 30 f4 ff ff 	lea    -0xbd0(%rbp),%rdi
  40537d:	e8 8e 5a 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  405382:	80 bd 35 f3 ff ff 00 	cmpb   $0x0,-0xccb(%rbp)
  405389:	0f 85 c8 0c 00 00    	jne    406057 <main+0x1f67>
  40538f:	44 0f b6 a5 36 f3 ff 	movzbl -0xcca(%rbp),%r12d
  405396:	ff 
  405397:	45 84 e4             	test   %r12b,%r12b
  40539a:	0f 85 cd 0c 00 00    	jne    40606d <main+0x1f7d>
  4053a0:	80 bd 37 f3 ff ff 00 	cmpb   $0x0,-0xcc9(%rbp)
  4053a7:	0f 85 01 0d 00 00    	jne    4060ae <main+0x1fbe>
  4053ad:	44 0f b6 a5 38 f3 ff 	movzbl -0xcc8(%rbp),%r12d
  4053b4:	ff 
  4053b5:	45 84 e4             	test   %r12b,%r12b
  4053b8:	0f 85 2b 0d 00 00    	jne    4060e9 <main+0x1ff9>
  4053be:	80 bd 2d f3 ff ff 00 	cmpb   $0x0,-0xcd3(%rbp)
  4053c5:	0f 85 cd 0c 00 00    	jne    406098 <main+0x1fa8>
  4053cb:	80 bd 32 f3 ff ff 00 	cmpb   $0x0,-0xcce(%rbp)
  4053d2:	0f 85 c0 0c 00 00    	jne    406098 <main+0x1fa8>
  4053d8:	80 bd 39 f3 ff ff 00 	cmpb   $0x0,-0xcc7(%rbp)
  4053df:	0f 85 1e 0e 00 00    	jne    406203 <main+0x2113>
  4053e5:	80 bd 30 f3 ff ff 00 	cmpb   $0x0,-0xcd0(%rbp)
  4053ec:	0f 85 cc 0e 00 00    	jne    4062be <main+0x21ce>
  4053f2:	0f b6 9d 2e f3 ff ff 	movzbl -0xcd2(%rbp),%ebx
  4053f9:	84 db                	test   %bl,%bl
  4053fb:	0f 85 18 0e 00 00    	jne    406219 <main+0x2129>
  405401:	80 bd 2f f3 ff ff 00 	cmpb   $0x0,-0xcd1(%rbp)
  405408:	be 45 01 41 00       	mov    $0x410145,%esi
  40540d:	b8 61 01 41 00       	mov    $0x410161,%eax
  405412:	48 0f 44 f0          	cmove  %rax,%rsi
  405416:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  40541d:	e8 ee 59 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  405422:	0f b6 9d d3 f2 ff ff 	movzbl -0xd2d(%rbp),%ebx
  405429:	84 db                	test   %bl,%bl
  40542b:	75 1d                	jne    40544a <main+0x135a>
  40542d:	0f b6 9d 2e f3 ff ff 	movzbl -0xcd2(%rbp),%ebx
  405434:	84 db                	test   %bl,%bl
  405436:	75 12                	jne    40544a <main+0x135a>
  405438:	0f b6 9d 2f f3 ff ff 	movzbl -0xcd1(%rbp),%ebx
  40543f:	84 db                	test   %bl,%bl
  405441:	75 07                	jne    40544a <main+0x135a>
  405443:	0f b6 9d 30 f3 ff ff 	movzbl -0xcd0(%rbp),%ebx
  40544a:	48 8b 05 2f de 00 00 	mov    0xde2f(%rip),%rax        # 413280 <_ZSt4cout@@GLIBCXX_3.4>
  405451:	ba 0e 00 00 00       	mov    $0xe,%edx
  405456:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40545a:	be 80 02 41 00       	mov    $0x410280,%esi
  40545f:	bf 80 32 41 00       	mov    $0x413280,%edi
  405464:	48 c7 80 88 32 41 00 	movq   $0xf,0x413288(%rax)
  40546b:	0f 00 00 00 
  40546f:	e8 8c de ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405474:	48 8b 95 18 f4 ff ff 	mov    -0xbe8(%rbp),%rdx
  40547b:	48 8b b5 10 f4 ff ff 	mov    -0xbf0(%rbp),%rsi
  405482:	bf 80 32 41 00       	mov    $0x413280,%edi
  405487:	e8 74 de ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40548c:	ba 0c 00 00 00       	mov    $0xc,%edx
  405491:	be 8f 02 41 00       	mov    $0x41028f,%esi
  405496:	48 89 c7             	mov    %rax,%rdi
  405499:	49 89 c4             	mov    %rax,%r12
  40549c:	e8 5f de ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054a1:	48 8b 95 f8 f3 ff ff 	mov    -0xc08(%rbp),%rdx
  4054a8:	48 8b b5 f0 f3 ff ff 	mov    -0xc10(%rbp),%rsi
  4054af:	4c 89 e7             	mov    %r12,%rdi
  4054b2:	e8 49 de ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054b7:	ba 0b 00 00 00       	mov    $0xb,%edx
  4054bc:	be 9c 02 41 00       	mov    $0x41029c,%esi
  4054c1:	48 89 c7             	mov    %rax,%rdi
  4054c4:	49 89 c4             	mov    %rax,%r12
  4054c7:	e8 34 de ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054cc:	48 8b 95 38 f4 ff ff 	mov    -0xbc8(%rbp),%rdx
  4054d3:	48 8b b5 30 f4 ff ff 	mov    -0xbd0(%rbp),%rsi
  4054da:	4c 89 e7             	mov    %r12,%rdi
  4054dd:	e8 1e de ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054e2:	ba 14 00 00 00       	mov    $0x14,%edx
  4054e7:	be a8 02 41 00       	mov    $0x4102a8,%esi
  4054ec:	48 89 c7             	mov    %rax,%rdi
  4054ef:	49 89 c4             	mov    %rax,%r12
  4054f2:	e8 09 de ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054f7:	48 8b 95 58 f4 ff ff 	mov    -0xba8(%rbp),%rdx
  4054fe:	48 8b b5 50 f4 ff ff 	mov    -0xbb0(%rbp),%rsi
  405505:	4c 89 e7             	mov    %r12,%rdi
  405508:	e8 f3 dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40550d:	ba 0c 00 00 00       	mov    $0xc,%edx
  405512:	be bd 02 41 00       	mov    $0x4102bd,%esi
  405517:	48 89 c7             	mov    %rax,%rdi
  40551a:	49 89 c4             	mov    %rax,%r12
  40551d:	e8 de dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405522:	8b b5 44 f3 ff ff    	mov    -0xcbc(%rbp),%esi
  405528:	4c 89 e7             	mov    %r12,%rdi
  40552b:	e8 30 df ff ff       	callq  403460 <_ZNSolsEi@plt>
  405530:	ba 15 00 00 00       	mov    $0x15,%edx
  405535:	be ca 02 41 00       	mov    $0x4102ca,%esi
  40553a:	48 89 c7             	mov    %rax,%rdi
  40553d:	49 89 c4             	mov    %rax,%r12
  405540:	e8 bb dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405545:	31 f6                	xor    %esi,%esi
  405547:	84 db                	test   %bl,%bl
  405549:	48 0f 45 b5 d8 f2 ff 	cmovne -0xd28(%rbp),%rsi
  405550:	ff 
  405551:	4c 89 e7             	mov    %r12,%rdi
  405554:	e8 97 dc ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  405559:	ba 14 00 00 00       	mov    $0x14,%edx
  40555e:	be e0 02 41 00       	mov    $0x4102e0,%esi
  405563:	48 89 c7             	mov    %rax,%rdi
  405566:	49 89 c4             	mov    %rax,%r12
  405569:	e8 92 dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40556e:	48 8b b5 70 f3 ff ff 	mov    -0xc90(%rbp),%rsi
  405575:	4c 89 e7             	mov    %r12,%rdi
  405578:	e8 73 dc ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  40557d:	ba 0d 00 00 00       	mov    $0xd,%edx
  405582:	be f5 02 41 00       	mov    $0x4102f5,%esi
  405587:	48 89 c7             	mov    %rax,%rdi
  40558a:	49 89 c4             	mov    %rax,%r12
  40558d:	e8 6e dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405592:	0f b6 b5 ef f2 ff ff 	movzbl -0xd11(%rbp),%esi
  405599:	4c 89 e7             	mov    %r12,%rdi
  40559c:	e8 bf de ff ff       	callq  403460 <_ZNSolsEi@plt>
  4055a1:	ba 05 00 00 00       	mov    $0x5,%edx
  4055a6:	be 03 03 41 00       	mov    $0x410303,%esi
  4055ab:	48 89 c7             	mov    %rax,%rdi
  4055ae:	49 89 c4             	mov    %rax,%r12
  4055b1:	e8 4a dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4055b6:	8b b5 3c f3 ff ff    	mov    -0xcc4(%rbp),%esi
  4055bc:	4c 89 e7             	mov    %r12,%rdi
  4055bf:	e8 9c de ff ff       	callq  403460 <_ZNSolsEi@plt>
  4055c4:	ba 0a 00 00 00       	mov    $0xa,%edx
  4055c9:	be 09 03 41 00       	mov    $0x410309,%esi
  4055ce:	48 89 c7             	mov    %rax,%rdi
  4055d1:	49 89 c4             	mov    %rax,%r12
  4055d4:	e8 27 dd ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4055d9:	80 bd 2e f3 ff ff 00 	cmpb   $0x0,-0xcd2(%rbp)
  4055e0:	75 0b                	jne    4055ed <main+0x14fd>
  4055e2:	31 f6                	xor    %esi,%esi
  4055e4:	80 bd 38 f3 ff ff 00 	cmpb   $0x0,-0xcc8(%rbp)
  4055eb:	74 06                	je     4055f3 <main+0x1503>
  4055ed:	8b b5 40 f3 ff ff    	mov    -0xcc0(%rbp),%esi
  4055f3:	4c 89 e7             	mov    %r12,%rdi
  4055f6:	e8 65 de ff ff       	callq  403460 <_ZNSolsEi@plt>
  4055fb:	ba 0c 00 00 00       	mov    $0xc,%edx
  405600:	be 14 03 41 00       	mov    $0x410314,%esi
  405605:	48 89 c7             	mov    %rax,%rdi
  405608:	49 89 c4             	mov    %rax,%r12
  40560b:	e8 f0 dc ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405610:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  405617:	4c 89 fe             	mov    %r15,%rsi
  40561a:	48 89 c7             	mov    %rax,%rdi
  40561d:	48 89 85 00 f3 ff ff 	mov    %rax,-0xd00(%rbp)
  405624:	e8 a7 88 00 00       	callq  40ded0 <_ZNK8Counters4readEv>
  405629:	80 bd 00 f5 ff ff 00 	cmpb   $0x0,-0xb00(%rbp)
  405630:	be 6f 01 41 00       	mov    $0x41016f,%esi
  405635:	b8 74 01 41 00       	mov    $0x410174,%eax
  40563a:	48 0f 44 f0          	cmove  %rax,%rsi
  40563e:	4c 89 e7             	mov    %r12,%rdi
  405641:	e8 6a dc ff ff       	callq  4032b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  405646:	48 89 c7             	mov    %rax,%rdi
  405649:	be 21 03 41 00       	mov    $0x410321,%esi
  40564e:	e8 5d dc ff ff       	callq  4032b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  405653:	c7 85 08 f3 ff ff 00 	movl   $0x0,-0xcf8(%rbp)
  40565a:	00 00 00 
  40565d:	c5 fb 10 85 e0 f2 ff 	vmovsd -0xd20(%rbp),%xmm0
  405664:	ff 
  405665:	8b bd 08 f3 ff ff    	mov    -0xcf8(%rbp),%edi
  40566b:	e8 40 5a 00 00       	callq  40b0b0 <_Z6windowid>
  405670:	c5 fb 10 3d d8 b0 00 	vmovsd 0xb0d8(%rip),%xmm7        # 410750 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x190>
  405677:	00 
  405678:	48 89 85 f0 f2 ff ff 	mov    %rax,-0xd10(%rbp)
  40567f:	c5 c3 59 85 e0 f2 ff 	vmulsd -0xd20(%rbp),%xmm7,%xmm0
  405686:	ff 
  405687:	4c 89 fe             	mov    %r15,%rsi
  40568a:	62 f1 ff 08 78 d8    	vcvttsd2usi %xmm0,%rbx
  405690:	48 01 c3             	add    %rax,%rbx
  405693:	48 8d 85 b0 f4 ff ff 	lea    -0xb50(%rbp),%rax
  40569a:	48 89 c7             	mov    %rax,%rdi
  40569d:	48 89 85 c8 f2 ff ff 	mov    %rax,-0xd38(%rbp)
  4056a4:	e8 27 88 00 00       	callq  40ded0 <_ZNK8Counters4readEv>
  4056a9:	48 8b b5 00 f3 ff ff 	mov    -0xd00(%rbp),%rsi
  4056b0:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4056b4:	bf 01 00 00 00       	mov    $0x1,%edi
  4056b9:	c5 f9 7f 85 00 f5 ff 	vmovdqa %xmm0,-0xb00(%rbp)
  4056c0:	ff 
  4056c1:	e8 da db ff ff       	callq  4032a0 <clock_gettime@plt>
  4056c6:	48 69 85 00 f5 ff ff 	imul   $0x3b9aca00,-0xb00(%rbp),%rax
  4056cd:	00 ca 9a 3b 
  4056d1:	48 c7 85 10 f3 ff ff 	movq   $0x0,-0xcf0(%rbp)
  4056d8:	00 00 00 00 
  4056dc:	45 31 ed             	xor    %r13d,%r13d
  4056df:	48 03 85 08 f5 ff ff 	add    -0xaf8(%rbp),%rax
  4056e6:	48 89 85 f8 f2 ff ff 	mov    %rax,-0xd08(%rbp)
  4056ed:	45 31 e4             	xor    %r12d,%r12d
  4056f0:	48 89 de             	mov    %rbx,%rsi
  4056f3:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  4056fa:	e8 a1 50 00 00       	callq  40a7a0 <_ZZ4mainENKUlmE_clEm>
  4056ff:	48 8b b5 00 f3 ff ff 	mov    -0xd00(%rbp),%rsi
  405706:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40570a:	bf 01 00 00 00       	mov    $0x1,%edi
  40570f:	48 ff 85 10 f3 ff ff 	incq   -0xcf0(%rbp)
  405716:	49 01 c4             	add    %rax,%r12
  405719:	4c 03 ad 88 f3 ff ff 	add    -0xc78(%rbp),%r13
  405720:	c5 f9 7f 85 00 f5 ff 	vmovdqa %xmm0,-0xb00(%rbp)
  405727:	ff 
  405728:	e8 73 db ff ff       	callq  4032a0 <clock_gettime@plt>
  40572d:	48 69 85 00 f5 ff ff 	imul   $0x3b9aca00,-0xb00(%rbp),%rax
  405734:	00 ca 9a 3b 
  405738:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40573c:	48 03 85 08 f5 ff ff 	add    -0xaf8(%rbp),%rax
  405743:	48 39 c3             	cmp    %rax,%rbx
  405746:	77 a8                	ja     4056f0 <main+0x1600>
  405748:	4c 8b b5 00 f3 ff ff 	mov    -0xd00(%rbp),%r14
  40574f:	bf 01 00 00 00       	mov    $0x1,%edi
  405754:	4c 89 f6             	mov    %r14,%rsi
  405757:	c5 f9 7f 85 00 f5 ff 	vmovdqa %xmm0,-0xb00(%rbp)
  40575e:	ff 
  40575f:	e8 3c db ff ff       	callq  4032a0 <clock_gettime@plt>
  405764:	48 69 9d 00 f5 ff ff 	imul   $0x3b9aca00,-0xb00(%rbp),%rbx
  40576b:	00 ca 9a 3b 
  40576f:	4c 89 fe             	mov    %r15,%rsi
  405772:	4c 89 f7             	mov    %r14,%rdi
  405775:	48 03 9d 08 f5 ff ff 	add    -0xaf8(%rbp),%rbx
  40577c:	e8 4f 87 00 00       	callq  40ded0 <_ZNK8Counters4readEv>
  405781:	0f b6 85 00 f5 ff ff 	movzbl -0xb00(%rbp),%eax
  405788:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  40578c:	88 85 ef f2 ff ff    	mov    %al,-0xd11(%rbp)
  405792:	48 89 d8             	mov    %rbx,%rax
  405795:	48 2b 85 f8 f2 ff ff 	sub    -0xd08(%rbp),%rax
  40579c:	62 f1 c7 08 7b c0    	vcvtusi2sd %rax,%xmm7,%xmm0
  4057a2:	83 bd 08 f3 ff ff 00 	cmpl   $0x0,-0xcf8(%rbp)
  4057a9:	c5 fb 59 25 67 af 00 	vmulsd 0xaf67(%rip),%xmm0,%xmm4        # 410718 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  4057b0:	00 
  4057b1:	c4 c1 f9 7e e6       	vmovq  %xmm4,%r14
  4057b6:	74 1d                	je     4057d5 <main+0x16e5>
  4057b8:	ba 01 00 00 00       	mov    $0x1,%edx
  4057bd:	48 8d b5 3b f3 ff ff 	lea    -0xcc5(%rbp),%rsi
  4057c4:	bf 80 32 41 00       	mov    $0x413280,%edi
  4057c9:	c6 85 3b f3 ff ff 2c 	movb   $0x2c,-0xcc5(%rbp)
  4057d0:	e8 2b db ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4057d5:	ba 13 00 00 00       	mov    $0x13,%edx
  4057da:	be 37 03 41 00       	mov    $0x410337,%esi
  4057df:	bf 80 32 41 00       	mov    $0x413280,%edi
  4057e4:	e8 17 db ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4057e9:	c4 c1 f9 6e c6       	vmovq  %r14,%xmm0
  4057ee:	bf 80 32 41 00       	mov    $0x413280,%edi
  4057f3:	e8 18 dc ff ff       	callq  403410 <_ZNSo9_M_insertIdEERSoT_@plt>
  4057f8:	ba 0c 00 00 00       	mov    $0xc,%edx
  4057fd:	be 4b 03 41 00       	mov    $0x41034b,%esi
  405802:	48 89 c7             	mov    %rax,%rdi
  405805:	49 89 c6             	mov    %rax,%r14
  405808:	e8 f3 da ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40580d:	48 8b b5 f8 f2 ff ff 	mov    -0xd08(%rbp),%rsi
  405814:	4c 89 f7             	mov    %r14,%rdi
  405817:	e8 d4 d9 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  40581c:	ba 0a 00 00 00       	mov    $0xa,%edx
  405821:	be 58 03 41 00       	mov    $0x410358,%esi
  405826:	48 89 c7             	mov    %rax,%rdi
  405829:	49 89 c6             	mov    %rax,%r14
  40582c:	e8 cf da ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405831:	48 89 de             	mov    %rbx,%rsi
  405834:	4c 89 f7             	mov    %r14,%rdi
  405837:	e8 b4 d9 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  40583c:	ba 14 00 00 00       	mov    $0x14,%edx
  405841:	be 63 03 41 00       	mov    $0x410363,%esi
  405846:	48 89 c7             	mov    %rax,%rdi
  405849:	49 89 c6             	mov    %rax,%r14
  40584c:	e8 af da ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405851:	48 8b b5 f0 f2 ff ff 	mov    -0xd10(%rbp),%rsi
  405858:	4c 89 f7             	mov    %r14,%rdi
  40585b:	e8 90 d9 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  405860:	ba 0e 00 00 00       	mov    $0xe,%edx
  405865:	be 78 03 41 00       	mov    $0x410378,%esi
  40586a:	48 89 c7             	mov    %rax,%rdi
  40586d:	49 89 c6             	mov    %rax,%r14
  405870:	e8 8b da ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405875:	31 f6                	xor    %esi,%esi
  405877:	80 bd 2f f3 ff ff 00 	cmpb   $0x0,-0xcd1(%rbp)
  40587e:	75 0b                	jne    40588b <main+0x179b>
  405880:	80 bd 30 f3 ff ff 00 	cmpb   $0x0,-0xcd0(%rbp)
  405887:	49 0f 44 f4          	cmove  %r12,%rsi
  40588b:	4c 89 f7             	mov    %r14,%rdi
  40588e:	e8 5d d9 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  405893:	ba 11 00 00 00       	mov    $0x11,%edx
  405898:	be 87 03 41 00       	mov    $0x410387,%esi
  40589d:	48 89 c7             	mov    %rax,%rdi
  4058a0:	49 89 c6             	mov    %rax,%r14
  4058a3:	e8 58 da ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4058a8:	80 bd 30 f3 ff ff 00 	cmpb   $0x0,-0xcd0(%rbp)
  4058af:	75 24                	jne    4058d5 <main+0x17e5>
  4058b1:	80 bd d3 f2 ff ff 00 	cmpb   $0x0,-0xd2d(%rbp)
  4058b8:	75 0c                	jne    4058c6 <main+0x17d6>
  4058ba:	45 31 ed             	xor    %r13d,%r13d
  4058bd:	80 bd 2e f3 ff ff 00 	cmpb   $0x0,-0xcd2(%rbp)
  4058c4:	74 0f                	je     4058d5 <main+0x17e5>
  4058c6:	4c 8b ad 10 f3 ff ff 	mov    -0xcf0(%rbp),%r13
  4058cd:	4c 0f af ad d8 f2 ff 	imul   -0xd28(%rbp),%r13
  4058d4:	ff 
  4058d5:	4c 89 ee             	mov    %r13,%rsi
  4058d8:	4c 89 f7             	mov    %r14,%rdi
  4058db:	e8 10 d9 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  4058e0:	ba 09 00 00 00       	mov    $0x9,%edx
  4058e5:	be 99 03 41 00       	mov    $0x410399,%esi
  4058ea:	48 89 c7             	mov    %rax,%rdi
  4058ed:	49 89 c5             	mov    %rax,%r13
  4058f0:	e8 0b da ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4058f5:	31 c0                	xor    %eax,%eax
  4058f7:	80 bd 2f f3 ff ff 00 	cmpb   $0x0,-0xcd1(%rbp)
  4058fe:	4c 0f 44 e0          	cmove  %rax,%r12
  405902:	4c 89 ef             	mov    %r13,%rdi
  405905:	4c 89 e6             	mov    %r12,%rsi
  405908:	e8 e3 d8 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  40590d:	80 bd b0 f4 ff ff 00 	cmpb   $0x0,-0xb50(%rbp)
  405914:	74 0d                	je     405923 <main+0x1833>
  405916:	80 bd ef f2 ff ff 00 	cmpb   $0x0,-0xd11(%rbp)
  40591d:	0f 85 a4 02 00 00    	jne    405bc7 <main+0x1ad7>
  405923:	ba 01 00 00 00       	mov    $0x1,%edx
  405928:	48 8d b5 70 f4 ff ff 	lea    -0xb90(%rbp),%rsi
  40592f:	bf 80 32 41 00       	mov    $0x413280,%edi
  405934:	c6 85 70 f4 ff ff 7d 	movb   $0x7d,-0xb90(%rbp)
  40593b:	e8 c0 d9 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405940:	ff 85 08 f3 ff ff    	incl   -0xcf8(%rbp)
  405946:	8b 85 08 f3 ff ff    	mov    -0xcf8(%rbp),%eax
  40594c:	3b 85 d4 f2 ff ff    	cmp    -0xd2c(%rbp),%eax
  405952:	0f 8c 05 fd ff ff    	jl     40565d <main+0x156d>
  405958:	83 bd d0 f3 ff ff 00 	cmpl   $0x0,-0xc30(%rbp)
  40595f:	78 7c                	js     4059dd <main+0x18ed>
  405961:	48 8b 9d 00 f3 ff ff 	mov    -0xd00(%rbp),%rbx
  405968:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40596c:	48 89 de             	mov    %rbx,%rsi
  40596f:	bf 01 00 00 00       	mov    $0x1,%edi
  405974:	c5 f9 7f 85 00 f5 ff 	vmovdqa %xmm0,-0xb00(%rbp)
  40597b:	ff 
  40597c:	e8 1f d9 ff ff       	callq  4032a0 <clock_gettime@plt>
  405981:	48 69 85 00 f5 ff ff 	imul   $0x3b9aca00,-0xb00(%rbp),%rax
  405988:	00 ca 9a 3b 
  40598c:	be 21 04 41 00       	mov    $0x410421,%esi
  405991:	48 8d bd d0 f3 ff ff 	lea    -0xc30(%rbp),%rdi
  405998:	48 03 85 08 f5 ff ff 	add    -0xaf8(%rbp),%rax
  40599f:	48 89 85 d8 f3 ff ff 	mov    %rax,-0xc28(%rbp)
  4059a6:	e8 55 80 00 00       	callq  40da00 <_ZN11PerfControl4sendEPKc>
  4059ab:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4059af:	48 89 de             	mov    %rbx,%rsi
  4059b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4059b7:	c5 f9 7f 85 00 f5 ff 	vmovdqa %xmm0,-0xb00(%rbp)
  4059be:	ff 
  4059bf:	e8 dc d8 ff ff       	callq  4032a0 <clock_gettime@plt>
  4059c4:	48 69 85 00 f5 ff ff 	imul   $0x3b9aca00,-0xb00(%rbp),%rax
  4059cb:	00 ca 9a 3b 
  4059cf:	48 03 85 08 f5 ff ff 	add    -0xaf8(%rbp),%rax
  4059d6:	48 89 85 e0 f3 ff ff 	mov    %rax,-0xc20(%rbp)
  4059dd:	80 bd e8 f2 ff ff 00 	cmpb   $0x0,-0xd18(%rbp)
  4059e4:	0f b6 9d 2e f3 ff ff 	movzbl -0xcd2(%rbp),%ebx
  4059eb:	75 11                	jne    4059fe <main+0x190e>
  4059ed:	80 bd d2 f2 ff ff 00 	cmpb   $0x0,-0xd2e(%rbp)
  4059f4:	75 08                	jne    4059fe <main+0x190e>
  4059f6:	84 db                	test   %bl,%bl
  4059f8:	0f 84 35 03 00 00    	je     405d33 <main+0x1c43>
  4059fe:	48 8b b5 48 f3 ff ff 	mov    -0xcb8(%rbp),%rsi
  405a05:	b8 01 00 00 00       	mov    $0x1,%eax
  405a0a:	48 89 f1             	mov    %rsi,%rcx
  405a0d:	48 c1 e9 0a          	shr    $0xa,%rcx
  405a11:	48 0f 44 c8          	cmove  %rax,%rcx
  405a15:	4c 8b 85 58 f3 ff ff 	mov    -0xca8(%rbp),%r8
  405a1c:	8b 95 3c f3 ff ff    	mov    -0xcc4(%rbp),%edx
  405a22:	4c 8b 8d 60 f3 ff ff 	mov    -0xca0(%rbp),%r9
  405a29:	48 8b bd 50 f3 ff ff 	mov    -0xcb0(%rbp),%rdi
  405a30:	44 0f b6 9d 3a f3 ff 	movzbl -0xcc6(%rbp),%r11d
  405a37:	ff 
  405a38:	c5 fb 10 2d c0 ac 00 	vmovsd 0xacc0(%rip),%xmm5        # 410700 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  405a3f:	00 
  405a40:	c5 fb 10 25 b0 ac 00 	vmovsd 0xacb0(%rip),%xmm4        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  405a47:	00 
  405a48:	c5 7b 10 05 50 ac 00 	vmovsd 0xac50(%rip),%xmm8        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  405a4f:	00 
  405a50:	c5 fa 7e 1d a8 ad 00 	vmovq  0xada8(%rip),%xmm3        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405a57:	00 
  405a58:	c5 fb 10 35 b0 ac 00 	vmovsd 0xacb0(%rip),%xmm6        # 410710 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  405a5f:	00 
  405a60:	c5 fb 10 3d f0 ac 00 	vmovsd 0xacf0(%rip),%xmm7        # 410758 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x198>
  405a67:	00 
  405a68:	44 0f b6 a5 e8 f2 ff 	movzbl -0xd18(%rbp),%r12d
  405a6f:	ff 
  405a70:	45 31 d2             	xor    %r10d,%r10d
  405a73:	31 c0                	xor    %eax,%eax
  405a75:	eb 44                	jmp    405abb <main+0x19cb>
  405a77:	c4 c2 b9 b9 04 c1    	vfmadd231sd (%r9,%rax,8),%xmm8,%xmm0
  405a7d:	c5 fb 10 0c c7       	vmovsd (%rdi,%rax,8),%xmm1
  405a82:	45 31 d2             	xor    %r10d,%r10d
  405a85:	c5 f1 54 d3          	vandpd %xmm3,%xmm1,%xmm2
  405a89:	c5 f9 2e f2          	vucomisd %xmm2,%xmm6
  405a8d:	72 10                	jb     405a9f <main+0x19af>
  405a8f:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
  405a93:	c5 f9 54 c3          	vandpd %xmm3,%xmm0,%xmm0
  405a97:	c5 f9 2f f8          	vcomisd %xmm0,%xmm7
  405a9b:	41 0f 97 c2          	seta   %r10b
  405a9f:	c5 f3 58 8d 80 f3 ff 	vaddsd -0xc80(%rbp),%xmm1,%xmm1
  405aa6:	ff 
  405aa7:	45 21 d3             	and    %r10d,%r11d
  405aaa:	48 01 c8             	add    %rcx,%rax
  405aad:	c5 fb 11 8d 80 f3 ff 	vmovsd %xmm1,-0xc80(%rbp)
  405ab4:	ff 
  405ab5:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  405abb:	48 39 c6             	cmp    %rax,%rsi
  405abe:	0f 86 63 02 00 00    	jbe    405d27 <main+0x1c37>
  405ac4:	c4 c1 7b 10 04 c0    	vmovsd (%r8,%rax,8),%xmm0
  405aca:	45 84 e4             	test   %r12b,%r12b
  405acd:	75 a8                	jne    405a77 <main+0x1987>
  405acf:	84 db                	test   %bl,%bl
  405ad1:	74 aa                	je     405a7d <main+0x198d>
  405ad3:	45 31 d2             	xor    %r10d,%r10d
  405ad6:	eb 08                	jmp    405ae0 <main+0x19f0>
  405ad8:	c4 e2 d9 99 c5       	vfmadd132sd %xmm5,%xmm4,%xmm0
  405add:	41 ff c2             	inc    %r10d
  405ae0:	44 39 d2             	cmp    %r10d,%edx
  405ae3:	7f f3                	jg     405ad8 <main+0x19e8>
  405ae5:	eb 96                	jmp    405a7d <main+0x198d>
  405ae7:	8b 85 c8 f2 ff ff    	mov    -0xd38(%rbp),%eax
  405aed:	80 bd 38 f3 ff ff 00 	cmpb   $0x0,-0xcc8(%rbp)
  405af4:	89 85 40 f3 ff ff    	mov    %eax,-0xcc0(%rbp)
  405afa:	74 1f                	je     405b1b <main+0x1a2b>
  405afc:	8b 9d c8 f2 ff ff    	mov    -0xd38(%rbp),%ebx
  405b02:	83 fb 18             	cmp    $0x18,%ebx
  405b05:	77 14                	ja     405b1b <main+0x1a2b>
  405b07:	48 c7 c0 bf ef ff fe 	mov    $0xfffffffffeffefbf,%rax
  405b0e:	c4 e2 e2 f7 c0       	sarx   %rbx,%rax,%rax
  405b13:	a8 01                	test   $0x1,%al
  405b15:	0f 84 df ee ff ff    	je     4049fa <main+0x90a>
  405b1b:	80 bd 2e f3 ff ff 00 	cmpb   $0x0,-0xcd2(%rbp)
  405b22:	0f 84 8a ea ff ff    	je     4045b2 <main+0x4c2>
  405b28:	8b 9d c8 f2 ff ff    	mov    -0xd38(%rbp),%ebx
  405b2e:	89 d8                	mov    %ebx,%eax
  405b30:	83 e0 fb             	and    $0xfffffffb,%eax
  405b33:	83 f8 08             	cmp    $0x8,%eax
  405b36:	0f 84 be ee ff ff    	je     4049fa <main+0x90a>
  405b3c:	83 fb 10             	cmp    $0x10,%ebx
  405b3f:	0f 84 b5 ee ff ff    	je     4049fa <main+0x90a>
  405b45:	e9 68 ea ff ff       	jmpq   4045b2 <main+0x4c2>
  405b4a:	b9 40 00 00 00       	mov    $0x40,%ecx
  405b4f:	84 c0                	test   %al,%al
  405b51:	0f 85 dd ef ff ff    	jne    404b34 <main+0xa44>
  405b57:	48 8b 85 d8 f2 ff ff 	mov    -0xd28(%rbp),%rax
  405b5e:	be 18 00 00 00       	mov    $0x18,%esi
  405b63:	31 d2                	xor    %edx,%edx
  405b65:	48 f7 f6             	div    %rsi
  405b68:	31 d2                	xor    %edx,%edx
  405b6a:	48 f7 f1             	div    %rcx
  405b6d:	48 0f af c1          	imul   %rcx,%rax
  405b71:	48 89 85 48 f3 ff ff 	mov    %rax,-0xcb8(%rbp)
  405b78:	48 85 c0             	test   %rax,%rax
  405b7b:	0f 84 3c 04 00 00    	je     405fbd <main+0x1ecd>
  405b81:	ba 03 00 00 00       	mov    $0x3,%edx
  405b86:	e9 41 f0 ff ff       	jmpq   404bcc <main+0xadc>
  405b8b:	84 c0                	test   %al,%al
  405b8d:	0f 85 a1 ef ff ff    	jne    404b34 <main+0xa44>
  405b93:	b9 40 00 00 00       	mov    $0x40,%ecx
  405b98:	e9 06 f0 ff ff       	jmpq   404ba3 <main+0xab3>
  405b9d:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  405ba1:	c5 fb 2a c2          	vcvtsi2sd %edx,%xmm0,%xmm0
  405ba5:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  405baa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405bb0:	c4 e2 e1 b9 85 f8 f2 	vfmadd231sd -0xd08(%rbp),%xmm3,%xmm0
  405bb7:	ff ff 
  405bb9:	ff c8                	dec    %eax
  405bbb:	75 f3                	jne    405bb0 <main+0x1ac0>
  405bbd:	c4 e2 f9 b9 e6       	vfmadd231sd %xmm6,%xmm0,%xmm4
  405bc2:	e9 96 f5 ff ff       	jmpq   40515d <main+0x106d>
  405bc7:	ba 0a 00 00 00       	mov    $0xa,%edx
  405bcc:	be a3 03 41 00       	mov    $0x4103a3,%esi
  405bd1:	bf 80 32 41 00       	mov    $0x413280,%edi
  405bd6:	e8 25 d7 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405bdb:	c5 fb 10 85 08 f5 ff 	vmovsd -0xaf8(%rbp),%xmm0
  405be2:	ff 
  405be3:	bf 80 32 41 00       	mov    $0x413280,%edi
  405be8:	c5 fb 5c 85 b8 f4 ff 	vsubsd -0xb48(%rbp),%xmm0,%xmm0
  405bef:	ff 
  405bf0:	e8 1b d8 ff ff       	callq  403410 <_ZNSo9_M_insertIdEERSoT_@plt>
  405bf5:	ba 13 00 00 00       	mov    $0x13,%edx
  405bfa:	be ae 03 41 00       	mov    $0x4103ae,%esi
  405bff:	48 89 c7             	mov    %rax,%rdi
  405c02:	49 89 c4             	mov    %rax,%r12
  405c05:	e8 f6 d6 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405c0a:	c5 fb 10 8d 10 f5 ff 	vmovsd -0xaf0(%rbp),%xmm1
  405c11:	ff 
  405c12:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  405c16:	c5 f9 2f e1          	vcomisd %xmm1,%xmm4
  405c1a:	c5 fb 10 05 96 ab 00 	vmovsd 0xab96(%rip),%xmm0        # 4107b8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  405c21:	00 
  405c22:	77 08                	ja     405c2c <main+0x1b3c>
  405c24:	c5 f3 5c 85 c0 f4 ff 	vsubsd -0xb40(%rbp),%xmm1,%xmm0
  405c2b:	ff 
  405c2c:	4c 89 e7             	mov    %r12,%rdi
  405c2f:	e8 dc d7 ff ff       	callq  403410 <_ZNSo9_M_insertIdEERSoT_@plt>
  405c34:	ba 11 00 00 00       	mov    $0x11,%edx
  405c39:	be c2 03 41 00       	mov    $0x4103c2,%esi
  405c3e:	48 89 c7             	mov    %rax,%rdi
  405c41:	49 89 c4             	mov    %rax,%r12
  405c44:	e8 b7 d6 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405c49:	c5 fb 10 85 18 f5 ff 	vmovsd -0xae8(%rbp),%xmm0
  405c50:	ff 
  405c51:	4c 89 e7             	mov    %r12,%rdi
  405c54:	c5 fb 5d 85 c8 f4 ff 	vminsd -0xb38(%rbp),%xmm0,%xmm0
  405c5b:	ff 
  405c5c:	e8 af d7 ff ff       	callq  403410 <_ZNSo9_M_insertIdEERSoT_@plt>
  405c61:	ba 13 00 00 00       	mov    $0x13,%edx
  405c66:	be d4 03 41 00       	mov    $0x4103d4,%esi
  405c6b:	48 89 c7             	mov    %rax,%rdi
  405c6e:	49 89 c4             	mov    %rax,%r12
  405c71:	e8 8a d6 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405c76:	8b b5 40 f5 ff ff    	mov    -0xac0(%rbp),%esi
  405c7c:	4c 89 e7             	mov    %r12,%rdi
  405c7f:	e8 dc d7 ff ff       	callq  403460 <_ZNSolsEi@plt>
  405c84:	c5 fb 10 85 d0 f4 ff 	vmovsd -0xb30(%rbp),%xmm0
  405c8b:	ff 
  405c8c:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  405c90:	c5 f9 2f c6          	vcomisd %xmm6,%xmm0
  405c94:	c5 fb 10 8d 20 f5 ff 	vmovsd -0xae0(%rbp),%xmm1
  405c9b:	ff 
  405c9c:	72 0a                	jb     405ca8 <main+0x1bb8>
  405c9e:	c5 f9 2f ce          	vcomisd %xmm6,%xmm1
  405ca2:	0f 83 3b 03 00 00    	jae    405fe3 <main+0x1ef3>
  405ca8:	c5 fb 10 85 d8 f4 ff 	vmovsd -0xb28(%rbp),%xmm0
  405caf:	ff 
  405cb0:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  405cb4:	c5 f9 2f c7          	vcomisd %xmm7,%xmm0
  405cb8:	c5 fb 10 8d 28 f5 ff 	vmovsd -0xad8(%rbp),%xmm1
  405cbf:	ff 
  405cc0:	72 0a                	jb     405ccc <main+0x1bdc>
  405cc2:	c5 f9 2f cf          	vcomisd %xmm7,%xmm1
  405cc6:	0f 83 f9 02 00 00    	jae    405fc5 <main+0x1ed5>
  405ccc:	c5 fb 10 85 e0 f4 ff 	vmovsd -0xb20(%rbp),%xmm0
  405cd3:	ff 
  405cd4:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  405cd8:	c5 f9 2f c6          	vcomisd %xmm6,%xmm0
  405cdc:	c5 fb 10 8d 30 f5 ff 	vmovsd -0xad0(%rbp),%xmm1
  405ce3:	ff 
  405ce4:	72 0a                	jb     405cf0 <main+0x1c00>
  405ce6:	c5 f9 2f ce          	vcomisd %xmm6,%xmm1
  405cea:	0f 83 e4 02 00 00    	jae    405fd4 <main+0x1ee4>
  405cf0:	c5 fb 10 85 e8 f4 ff 	vmovsd -0xb18(%rbp),%xmm0
  405cf7:	ff 
  405cf8:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  405cfc:	c5 f9 2f c7          	vcomisd %xmm7,%xmm0
  405d00:	c5 fb 10 8d 38 f5 ff 	vmovsd -0xac8(%rbp),%xmm1
  405d07:	ff 
  405d08:	0f 82 15 fc ff ff    	jb     405923 <main+0x1833>
  405d0e:	c5 f9 2f cf          	vcomisd %xmm7,%xmm1
  405d12:	0f 82 0b fc ff ff    	jb     405923 <main+0x1833>
  405d18:	bf 10 04 41 00       	mov    $0x410410,%edi
  405d1d:	e8 7e 50 00 00       	callq  40ada0 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  405d22:	e9 fc fb ff ff       	jmpq   405923 <main+0x1833>
  405d27:	45 84 d2             	test   %r10b,%r10b
  405d2a:	74 07                	je     405d33 <main+0x1c43>
  405d2c:	44 88 9d 3a f3 ff ff 	mov    %r11b,-0xcc6(%rbp)
  405d33:	80 bd 2f f3 ff ff 00 	cmpb   $0x0,-0xcd1(%rbp)
  405d3a:	74 57                	je     405d93 <main+0x1ca3>
  405d3c:	48 8b 85 68 f3 ff ff 	mov    -0xc98(%rbp),%rax
  405d43:	48 8b 9d c0 f2 ff ff 	mov    -0xd40(%rbp),%rbx
  405d4a:	0f b6 8d 3a f3 ff ff 	movzbl -0xcc6(%rbp),%ecx
  405d51:	31 d2                	xor    %edx,%edx
  405d53:	48 39 d8             	cmp    %rbx,%rax
  405d56:	72 17                	jb     405d6f <main+0x1c7f>
  405d58:	ba 06 00 00 00       	mov    $0x6,%edx
  405d5d:	c4 e2 e9 f7 95 48 f3 	shlx   %rdx,-0xcb8(%rbp),%rdx
  405d64:	ff ff 
  405d66:	48 01 da             	add    %rbx,%rdx
  405d69:	48 39 d0             	cmp    %rdx,%rax
  405d6c:	0f 92 c2             	setb   %dl
  405d6f:	48 2b 85 c0 f2 ff ff 	sub    -0xd40(%rbp),%rax
  405d76:	48 c1 f8 06          	sar    $0x6,%rax
  405d7a:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  405d7e:	c4 e1 db 2a c0       	vcvtsi2sd %rax,%xmm4,%xmm0
  405d83:	21 ca                	and    %ecx,%edx
  405d85:	88 95 3a f3 ff ff    	mov    %dl,-0xcc6(%rbp)
  405d8b:	c5 fb 11 85 80 f3 ff 	vmovsd %xmm0,-0xc80(%rbp)
  405d92:	ff 
  405d93:	ba 01 00 00 00       	mov    $0x1,%edx
  405d98:	48 8d b5 90 f4 ff ff 	lea    -0xb70(%rbp),%rsi
  405d9f:	bf 80 32 41 00       	mov    $0x413280,%edi
  405da4:	c6 85 90 f4 ff ff 5d 	movb   $0x5d,-0xb70(%rbp)
  405dab:	e8 50 d5 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405db0:	83 bd d0 f3 ff ff 00 	cmpl   $0x0,-0xc30(%rbp)
  405db7:	78 6a                	js     405e23 <main+0x1d33>
  405db9:	ba 16 00 00 00       	mov    $0x16,%edx
  405dbe:	be 2a 04 41 00       	mov    $0x41042a,%esi
  405dc3:	bf 80 32 41 00       	mov    $0x413280,%edi
  405dc8:	e8 33 d5 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405dcd:	48 8b b5 d8 f3 ff ff 	mov    -0xc28(%rbp),%rsi
  405dd4:	bf 80 32 41 00       	mov    $0x413280,%edi
  405dd9:	e8 12 d4 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  405dde:	48 8b b5 c8 f2 ff ff 	mov    -0xd38(%rbp),%rsi
  405de5:	48 89 c7             	mov    %rax,%rdi
  405de8:	ba 01 00 00 00       	mov    $0x1,%edx
  405ded:	c6 85 b0 f4 ff ff 2c 	movb   $0x2c,-0xb50(%rbp)
  405df4:	e8 07 d5 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405df9:	48 8b b5 e0 f3 ff ff 	mov    -0xc20(%rbp),%rsi
  405e00:	48 89 c7             	mov    %rax,%rdi
  405e03:	e8 e8 d3 ff ff       	callq  4031f0 <_ZNSo9_M_insertImEERSoT_@plt>
  405e08:	48 8b b5 00 f3 ff ff 	mov    -0xd00(%rbp),%rsi
  405e0f:	48 89 c7             	mov    %rax,%rdi
  405e12:	ba 01 00 00 00       	mov    $0x1,%edx
  405e17:	c6 85 00 f5 ff ff 5d 	movb   $0x5d,-0xb00(%rbp)
  405e1e:	e8 dd d4 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405e23:	ba 0c 00 00 00       	mov    $0xc,%edx
  405e28:	be 41 04 41 00       	mov    $0x410441,%esi
  405e2d:	bf 80 32 41 00       	mov    $0x413280,%edi
  405e32:	e8 c9 d4 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405e37:	c5 fb 10 85 80 f3 ff 	vmovsd -0xc80(%rbp),%xmm0
  405e3e:	ff 
  405e3f:	bf 80 32 41 00       	mov    $0x413280,%edi
  405e44:	e8 c7 d5 ff ff       	callq  403410 <_ZNSo9_M_insertIdEERSoT_@plt>
  405e49:	ba 09 00 00 00       	mov    $0x9,%edx
  405e4e:	be 4e 04 41 00       	mov    $0x41044e,%esi
  405e53:	48 89 c7             	mov    %rax,%rdi
  405e56:	49 89 c4             	mov    %rax,%r12
  405e59:	e8 a2 d4 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405e5e:	80 bd 3a f3 ff ff 00 	cmpb   $0x0,-0xcc6(%rbp)
  405e65:	be 6f 01 41 00       	mov    $0x41016f,%esi
  405e6a:	b8 74 01 41 00       	mov    $0x410174,%eax
  405e6f:	48 0f 44 f0          	cmove  %rax,%rsi
  405e73:	4c 89 e7             	mov    %r12,%rdi
  405e76:	e8 35 d4 ff ff       	callq  4032b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  405e7b:	48 89 c7             	mov    %rax,%rdi
  405e7e:	be 58 04 41 00       	mov    $0x410458,%esi
  405e83:	e8 28 d4 ff ff       	callq  4032b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  405e88:	48 8b bd 50 f3 ff ff 	mov    -0xcb0(%rbp),%rdi
  405e8f:	e8 8c d4 ff ff       	callq  403320 <free@plt>
  405e94:	48 8b bd 58 f3 ff ff 	mov    -0xca8(%rbp),%rdi
  405e9b:	e8 80 d4 ff ff       	callq  403320 <free@plt>
  405ea0:	48 8b bd 60 f3 ff ff 	mov    -0xca0(%rbp),%rdi
  405ea7:	e8 74 d4 ff ff       	callq  403320 <free@plt>
  405eac:	48 8b bd c0 f2 ff ff 	mov    -0xd40(%rbp),%rdi
  405eb3:	e8 68 d4 ff ff       	callq  403320 <free@plt>
  405eb8:	48 8b 9d 90 f3 ff ff 	mov    -0xc70(%rbp),%rbx
  405ebf:	4c 8b a5 98 f3 ff ff 	mov    -0xc68(%rbp),%r12
  405ec6:	eb 0c                	jmp    405ed4 <main+0x1de4>
  405ec8:	48 8b 3b             	mov    (%rbx),%rdi
  405ecb:	48 83 c3 08          	add    $0x8,%rbx
  405ecf:	e8 4c d4 ff ff       	callq  403320 <free@plt>
  405ed4:	49 39 dc             	cmp    %rbx,%r12
  405ed7:	75 ef                	jne    405ec8 <main+0x1dd8>
  405ed9:	44 0f b6 a5 3a f3 ff 	movzbl -0xcc6(%rbp),%r12d
  405ee0:	ff 
  405ee1:	48 8b bd 50 f4 ff ff 	mov    -0xbb0(%rbp),%rdi
  405ee8:	41 83 f4 01          	xor    $0x1,%r12d
  405eec:	48 8d 85 60 f4 ff ff 	lea    -0xba0(%rbp),%rax
  405ef3:	45 0f b6 e4          	movzbl %r12b,%r12d
  405ef7:	48 39 c7             	cmp    %rax,%rdi
  405efa:	74 10                	je     405f0c <main+0x1e1c>
  405efc:	48 8b 85 60 f4 ff ff 	mov    -0xba0(%rbp),%rax
  405f03:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405f07:	e8 c4 d3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  405f0c:	48 8b bd 30 f4 ff ff 	mov    -0xbd0(%rbp),%rdi
  405f13:	48 8d 85 40 f4 ff ff 	lea    -0xbc0(%rbp),%rax
  405f1a:	48 39 c7             	cmp    %rax,%rdi
  405f1d:	74 10                	je     405f2f <main+0x1e3f>
  405f1f:	48 8b 85 40 f4 ff ff 	mov    -0xbc0(%rbp),%rax
  405f26:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405f2a:	e8 a1 d3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  405f2f:	48 8b bd 10 f4 ff ff 	mov    -0xbf0(%rbp),%rdi
  405f36:	48 8d 85 20 f4 ff ff 	lea    -0xbe0(%rbp),%rax
  405f3d:	48 39 c7             	cmp    %rax,%rdi
  405f40:	74 10                	je     405f52 <main+0x1e62>
  405f42:	48 8b 85 20 f4 ff ff 	mov    -0xbe0(%rbp),%rax
  405f49:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405f4d:	e8 7e d3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  405f52:	48 8d bd d0 f3 ff ff 	lea    -0xc30(%rbp),%rdi
  405f59:	e8 12 7d 00 00       	callq  40dc70 <_ZN11PerfControlD1Ev>
  405f5e:	48 8b bd b0 f3 ff ff 	mov    -0xc50(%rbp),%rdi
  405f65:	48 8b b5 c0 f3 ff ff 	mov    -0xc40(%rbp),%rsi
  405f6c:	48 29 fe             	sub    %rdi,%rsi
  405f6f:	48 85 ff             	test   %rdi,%rdi
  405f72:	74 05                	je     405f79 <main+0x1e89>
  405f74:	e8 57 d3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  405f79:	48 8b bd 90 f3 ff ff 	mov    -0xc70(%rbp),%rdi
  405f80:	48 85 ff             	test   %rdi,%rdi
  405f83:	74 0f                	je     405f94 <main+0x1ea4>
  405f85:	48 8b b5 a0 f3 ff ff 	mov    -0xc60(%rbp),%rsi
  405f8c:	48 29 fe             	sub    %rdi,%rsi
  405f8f:	e8 3c d3 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  405f94:	4c 89 ff             	mov    %r15,%rdi
  405f97:	e8 54 83 00 00       	callq  40e2f0 <_ZN8CountersD1Ev>
  405f9c:	e9 17 e6 ff ff       	jmpq   4045b8 <main+0x4c8>
  405fa1:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  405fa7:	eb b5                	jmp    405f5e <main+0x1e6e>
  405fa9:	48 85 f6             	test   %rsi,%rsi
  405fac:	0f 85 97 eb ff ff    	jne    404b49 <main+0xa59>
  405fb2:	48 c7 85 48 f3 ff ff 	movq   $0x0,-0xcb8(%rbp)
  405fb9:	00 00 00 00 
  405fbd:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  405fc3:	eb b4                	jmp    405f79 <main+0x1e89>
  405fc5:	bf f5 03 41 00       	mov    $0x4103f5,%edi
  405fca:	e8 d1 4d 00 00       	callq  40ada0 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  405fcf:	e9 f8 fc ff ff       	jmpq   405ccc <main+0x1bdc>
  405fd4:	bf 00 04 41 00       	mov    $0x410400,%edi
  405fd9:	e8 c2 4d 00 00       	callq  40ada0 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  405fde:	e9 0d fd ff ff       	jmpq   405cf0 <main+0x1c00>
  405fe3:	bf e8 03 41 00       	mov    $0x4103e8,%edi
  405fe8:	e8 b3 4d 00 00       	callq  40ada0 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  405fed:	e9 b6 fc ff ff       	jmpq   405ca8 <main+0x1bb8>
  405ff2:	48 c7 85 c0 f2 ff ff 	movq   $0x0,-0xd40(%rbp)
  405ff9:	00 00 00 00 
  405ffd:	e9 82 ef ff ff       	jmpq   404f84 <main+0xe94>
  406002:	48 63 8d 44 f3 ff ff 	movslq -0xcbc(%rbp),%rcx
  406009:	48 8b 85 d8 f2 ff ff 	mov    -0xd28(%rbp),%rax
  406010:	31 d2                	xor    %edx,%edx
  406012:	48 f7 f1             	div    %rcx
  406015:	48 25 00 fe ff ff    	and    $0xfffffffffffffe00,%rax
  40601b:	e9 c2 ec ff ff       	jmpq   404ce2 <main+0xbf2>
  406020:	be eb 01 41 00       	mov    $0x4101eb,%esi
  406025:	48 8d bd d0 f3 ff ff 	lea    -0xc30(%rbp),%rdi
  40602c:	e8 cf 79 00 00       	callq  40da00 <_ZN11PerfControl4sendEPKc>
  406031:	e9 f4 f1 ff ff       	jmpq   40522a <main+0x113a>
  406036:	31 f6                	xor    %esi,%esi
  406038:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  40603f:	e8 5c 47 00 00       	callq  40a7a0 <_ZZ4mainENKUlmE_clEm>
  406044:	31 f6                	xor    %esi,%esi
  406046:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  40604d:	e8 4e 47 00 00       	callq  40a7a0 <_ZZ4mainENKUlmE_clEm>
  406052:	e9 e0 f1 ff ff       	jmpq   405237 <main+0x1147>
  406057:	be f3 01 41 00       	mov    $0x4101f3,%esi
  40605c:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  406063:	e8 a8 4d 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  406068:	e9 b5 f3 ff ff       	jmpq   405422 <main+0x1332>
  40606d:	be 06 02 41 00       	mov    $0x410206,%esi
  406072:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  406079:	e8 92 4d 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40607e:	e9 9f f3 ff ff       	jmpq   405422 <main+0x1332>
  406083:	48 c7 85 10 f3 ff ff 	movq   $0x0,-0xcf0(%rbp)
  40608a:	00 00 00 00 
  40608e:	45 31 c0             	xor    %r8d,%r8d
  406091:	31 ff                	xor    %edi,%edi
  406093:	e9 c3 ed ff ff       	jmpq   404e5b <main+0xd6b>
  406098:	be 41 02 41 00       	mov    $0x410241,%esi
  40609d:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  4060a4:	e8 67 4d 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4060a9:	e9 74 f3 ff ff       	jmpq   405422 <main+0x1332>
  4060ae:	be 1e 02 41 00       	mov    $0x41021e,%esi
  4060b3:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  4060ba:	e8 51 4d 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4060bf:	e9 5e f3 ff ff       	jmpq   405422 <main+0x1332>
  4060c4:	83 bd c8 f2 ff ff 00 	cmpl   $0x0,-0xd38(%rbp)
  4060cb:	0f 85 a9 00 00 00    	jne    40617a <main+0x208a>
  4060d1:	c6 85 d2 f2 ff ff 00 	movb   $0x0,-0xd2e(%rbp)
  4060d8:	c6 85 e8 f2 ff ff 00 	movb   $0x0,-0xd18(%rbp)
  4060df:	b8 08 00 00 00       	mov    $0x8,%eax
  4060e4:	e9 0b e9 ff ff       	jmpq   4049f4 <main+0x904>
  4060e9:	8b b5 40 f3 ff ff    	mov    -0xcc0(%rbp),%esi
  4060ef:	48 8d bd 70 f4 ff ff 	lea    -0xb90(%rbp),%rdi
  4060f6:	e8 c5 76 00 00       	callq  40d7c0 <_ZNSt7__cxx119to_stringEi>
  4060fb:	48 8d 95 70 f4 ff ff 	lea    -0xb90(%rbp),%rdx
  406102:	be 34 02 41 00       	mov    $0x410234,%esi
  406107:	48 8d bd 90 f4 ff ff 	lea    -0xb70(%rbp),%rdi
  40610e:	e8 ad 83 00 00       	callq  40e4c0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>
  406113:	ba 2c 02 41 00       	mov    $0x41022c,%edx
  406118:	48 8d b5 90 f4 ff ff 	lea    -0xb70(%rbp),%rsi
  40611f:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  406126:	e8 15 84 00 00       	callq  40e540 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
  40612b:	48 8b bd 90 f4 ff ff 	mov    -0xb70(%rbp),%rdi
  406132:	48 8d 85 a0 f4 ff ff 	lea    -0xb60(%rbp),%rax
  406139:	48 39 c7             	cmp    %rax,%rdi
  40613c:	74 10                	je     40614e <main+0x205e>
  40613e:	48 8b 85 a0 f4 ff ff 	mov    -0xb60(%rbp),%rax
  406145:	48 8d 70 01          	lea    0x1(%rax),%rsi
  406149:	e8 82 d1 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40614e:	48 8b bd 70 f4 ff ff 	mov    -0xb90(%rbp),%rdi
  406155:	48 8d 85 80 f4 ff ff 	lea    -0xb80(%rbp),%rax
  40615c:	48 39 c7             	cmp    %rax,%rdi
  40615f:	0f 84 bd f2 ff ff    	je     405422 <main+0x1332>
  406165:	48 8b 85 80 f4 ff ff 	mov    -0xb80(%rbp),%rax
  40616c:	48 8d 70 01          	lea    0x1(%rax),%rsi
  406170:	e8 5b d1 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  406175:	e9 a8 f2 ff ff       	jmpq   405422 <main+0x1332>
  40617a:	8b 85 c8 f2 ff ff    	mov    -0xd38(%rbp),%eax
  406180:	89 85 40 f3 ff ff    	mov    %eax,-0xcc0(%rbp)
  406186:	0f b6 85 38 f3 ff ff 	movzbl -0xcc8(%rbp),%eax
  40618d:	88 85 e8 f2 ff ff    	mov    %al,-0xd18(%rbp)
  406193:	84 c0                	test   %al,%al
  406195:	75 3b                	jne    4061d2 <main+0x20e2>
  406197:	c6 85 d2 f2 ff ff 00 	movb   $0x0,-0xd2e(%rbp)
  40619e:	e9 85 f9 ff ff       	jmpq   405b28 <main+0x1a38>
  4061a3:	bf 60 04 41 00       	mov    $0x410460,%edi
  4061a8:	e8 53 d0 ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  4061ad:	8b 85 c8 f2 ff ff    	mov    -0xd38(%rbp),%eax
  4061b3:	80 bd 38 f3 ff ff 00 	cmpb   $0x0,-0xcc8(%rbp)
  4061ba:	89 85 40 f3 ff ff    	mov    %eax,-0xcc0(%rbp)
  4061c0:	0f 84 ec e3 ff ff    	je     4045b2 <main+0x4c2>
  4061c6:	c6 85 e8 f2 ff ff 00 	movb   $0x0,-0xd18(%rbp)
  4061cd:	e9 2a f9 ff ff       	jmpq   405afc <main+0x1a0c>
  4061d2:	c6 85 e8 f2 ff ff 00 	movb   $0x0,-0xd18(%rbp)
  4061d9:	c6 85 d2 f2 ff ff 00 	movb   $0x0,-0xd2e(%rbp)
  4061e0:	e9 17 f9 ff ff       	jmpq   405afc <main+0x1a0c>
  4061e5:	bf b3 01 41 00       	mov    $0x4101b3,%edi
  4061ea:	e8 b1 d1 ff ff       	callq  4033a0 <_ZSt20__throw_out_of_rangePKc@plt>
  4061ef:	bf b3 01 41 00       	mov    $0x4101b3,%edi
  4061f4:	e8 b7 cf ff ff       	callq  4031b0 <_ZSt24__throw_invalid_argumentPKc@plt>
  4061f9:	bf 70 05 41 00       	mov    $0x410570,%edi
  4061fe:	e8 6d cf ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  406203:	be 59 02 41 00       	mov    $0x410259,%esi
  406208:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  40620f:	e8 fc 4b 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  406214:	e9 09 f2 ff ff       	jmpq   405422 <main+0x1332>
  406219:	48 8d 85 b0 f4 ff ff 	lea    -0xb50(%rbp),%rax
  406220:	8b b5 40 f3 ff ff    	mov    -0xcc0(%rbp),%esi
  406226:	48 89 c7             	mov    %rax,%rdi
  406229:	48 89 85 c8 f2 ff ff 	mov    %rax,-0xd38(%rbp)
  406230:	e8 8b 75 00 00       	callq  40d7c0 <_ZNSt7__cxx119to_stringEi>
  406235:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  40623c:	48 8b 95 c8 f2 ff ff 	mov    -0xd38(%rbp),%rdx
  406243:	be 64 02 41 00       	mov    $0x410264,%esi
  406248:	48 89 c7             	mov    %rax,%rdi
  40624b:	48 89 85 00 f3 ff ff 	mov    %rax,-0xd00(%rbp)
  406252:	e8 69 82 00 00       	callq  40e4c0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>
  406257:	48 8b b5 00 f3 ff ff 	mov    -0xd00(%rbp),%rsi
  40625e:	ba 6c 02 41 00       	mov    $0x41026c,%edx
  406263:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  40626a:	e8 d1 82 00 00       	callq  40e540 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
  40626f:	48 8b bd 00 f5 ff ff 	mov    -0xb00(%rbp),%rdi
  406276:	48 8d 85 10 f5 ff ff 	lea    -0xaf0(%rbp),%rax
  40627d:	48 39 c7             	cmp    %rax,%rdi
  406280:	74 10                	je     406292 <main+0x21a2>
  406282:	48 8b 85 10 f5 ff ff 	mov    -0xaf0(%rbp),%rax
  406289:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40628d:	e8 3e d0 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  406292:	48 8b bd b0 f4 ff ff 	mov    -0xb50(%rbp),%rdi
  406299:	48 8d 85 c0 f4 ff ff 	lea    -0xb40(%rbp),%rax
  4062a0:	48 39 c7             	cmp    %rax,%rdi
  4062a3:	0f 84 79 f1 ff ff    	je     405422 <main+0x1332>
  4062a9:	48 8b 85 c0 f4 ff ff 	mov    -0xb40(%rbp),%rax
  4062b0:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4062b4:	e8 17 d0 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  4062b9:	e9 64 f1 ff ff       	jmpq   405422 <main+0x1332>
  4062be:	be b8 04 41 00       	mov    $0x4104b8,%esi
  4062c3:	48 8d bd 50 f4 ff ff 	lea    -0xbb0(%rbp),%rdi
  4062ca:	e8 41 4b 00 00       	callq  40ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4062cf:	e9 4e f1 ff ff       	jmpq   405422 <main+0x1332>
  4062d4:	4c 89 ef             	mov    %r13,%rdi
  4062d7:	e9 2d e0 ff ff       	jmpq   404309 <main+0x219>
  4062dc:	bf a2 01 41 00       	mov    $0x4101a2,%edi
  4062e1:	e8 ca ce ff ff       	callq  4031b0 <_ZSt24__throw_invalid_argumentPKc@plt>
  4062e6:	bf 60 04 41 00       	mov    $0x410460,%edi
  4062eb:	e8 10 cf ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  4062f0:	bf a2 01 41 00       	mov    $0x4101a2,%edi
  4062f5:	e8 a6 d0 ff ff       	callq  4033a0 <_ZSt20__throw_out_of_rangePKc@plt>
  4062fa:	49 89 c5             	mov    %rax,%r13
  4062fd:	49 89 d6             	mov    %rdx,%r14
  406300:	e9 17 da ff ff       	jmpq   403d1c <main.cold>
  406305:	49 89 c5             	mov    %rax,%r13
  406308:	49 89 d6             	mov    %rdx,%r14
  40630b:	e9 0c da ff ff       	jmpq   403d1c <main.cold>
  406310:	48 89 c3             	mov    %rax,%rbx
  406313:	49 89 d6             	mov    %rdx,%r14
  406316:	e9 31 db ff ff       	jmpq   403e4c <main.cold+0x130>
  40631b:	48 89 c3             	mov    %rax,%rbx
  40631e:	49 89 d4             	mov    %rdx,%r12
  406321:	e9 9c db ff ff       	jmpq   403ec2 <main.cold+0x1a6>
  406326:	49 89 c5             	mov    %rax,%r13
  406329:	49 89 d6             	mov    %rdx,%r14
  40632c:	e9 eb d9 ff ff       	jmpq   403d1c <main.cold>
  406331:	e9 b7 db ff ff       	jmpq   403eed <main.cold+0x1d1>
  406336:	48 89 c3             	mov    %rax,%rbx
  406339:	49 89 d6             	mov    %rdx,%r14
  40633c:	c5 f8 77             	vzeroupper 
  40633f:	e9 8b da ff ff       	jmpq   403dcf <main.cold+0xb3>
  406344:	48 89 c3             	mov    %rax,%rbx
  406347:	49 89 d4             	mov    %rdx,%r12
  40634a:	c5 f8 77             	vzeroupper 
  40634d:	e9 21 da ff ff       	jmpq   403d73 <main.cold+0x57>
  406352:	48 89 c3             	mov    %rax,%rbx
  406355:	49 89 d4             	mov    %rdx,%r12
  406358:	c5 f8 77             	vzeroupper 
  40635b:	e9 2a da ff ff       	jmpq   403d8a <main.cold+0x6e>
  406360:	48 89 c3             	mov    %rax,%rbx
  406363:	49 89 d6             	mov    %rdx,%r14
  406366:	e9 db db ff ff       	jmpq   403f46 <main.cold+0x22a>
  40636b:	48 89 c3             	mov    %rax,%rbx
  40636e:	49 89 d6             	mov    %rdx,%r14
  406371:	e9 a5 db ff ff       	jmpq   403f1b <main.cold+0x1ff>
  406376:	49 89 c5             	mov    %rax,%r13
  406379:	49 89 d6             	mov    %rdx,%r14
  40637c:	e9 00 dc ff ff       	jmpq   403f81 <main.cold+0x265>
  406381:	49 89 c5             	mov    %rax,%r13
  406384:	49 89 d6             	mov    %rdx,%r14
  406387:	e9 52 dc ff ff       	jmpq   403fde <main.cold+0x2c2>
  40638c:	48 89 c3             	mov    %rax,%rbx
  40638f:	49 89 d6             	mov    %rdx,%r14
  406392:	e9 d6 dc ff ff       	jmpq   40406d <main.cold+0x351>
  406397:	48 89 c3             	mov    %rax,%rbx
  40639a:	49 89 d6             	mov    %rdx,%r14
  40639d:	c5 f8 77             	vzeroupper 
  4063a0:	e9 32 da ff ff       	jmpq   403dd7 <main.cold+0xbb>
  4063a5:	49 89 c5             	mov    %rax,%r13
  4063a8:	49 89 d6             	mov    %rdx,%r14
  4063ab:	e9 3b dc ff ff       	jmpq   403feb <main.cold+0x2cf>
  4063b0:	49 89 c5             	mov    %rax,%r13
  4063b3:	49 89 d6             	mov    %rdx,%r14
  4063b6:	c5 f8 77             	vzeroupper 
  4063b9:	e9 64 d9 ff ff       	jmpq   403d22 <main.cold+0x6>
  4063be:	49 89 c5             	mov    %rax,%r13
  4063c1:	49 89 d6             	mov    %rdx,%r14
  4063c4:	e9 53 d9 ff ff       	jmpq   403d1c <main.cold>
  4063c9:	eb e5                	jmp    4063b0 <main+0x22c0>
  4063cb:	eb e3                	jmp    4063b0 <main+0x22c0>
  4063cd:	49 89 c5             	mov    %rax,%r13
  4063d0:	49 89 d6             	mov    %rdx,%r14
  4063d3:	e9 44 d9 ff ff       	jmpq   403d1c <main.cold>
  4063d8:	49 89 c5             	mov    %rax,%r13
  4063db:	49 89 d6             	mov    %rdx,%r14
  4063de:	e9 39 d9 ff ff       	jmpq   403d1c <main.cold>
  4063e3:	49 89 c5             	mov    %rax,%r13
  4063e6:	49 89 d6             	mov    %rdx,%r14
  4063e9:	e9 2e d9 ff ff       	jmpq   403d1c <main.cold>
  4063ee:	48 89 c3             	mov    %rax,%rbx
  4063f1:	49 89 d6             	mov    %rdx,%r14
  4063f4:	c5 f8 77             	vzeroupper 
  4063f7:	e9 87 da ff ff       	jmpq   403e83 <main.cold+0x167>
  4063fc:	48 89 c7             	mov    %rax,%rdi
  4063ff:	49 89 d6             	mov    %rdx,%r14
  406402:	c5 f8 77             	vzeroupper 
  406405:	e9 f3 d9 ff ff       	jmpq   403dfd <main.cold+0xe1>
  40640a:	48 89 c3             	mov    %rax,%rbx
  40640d:	49 89 d6             	mov    %rdx,%r14
  406410:	e9 94 dc ff ff       	jmpq   4040a9 <main.cold+0x38d>
  406415:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40641c:	00 00 00 00 

0000000000406420 <_GLOBAL__sub_I__Z8clock_nsv>:
  406420:	48 83 ec 08          	sub    $0x8,%rsp
  406424:	bf b1 34 41 00       	mov    $0x4134b1,%edi
  406429:	e8 a2 cf ff ff       	callq  4033d0 <_ZNSt8ios_base4InitC1Ev@plt>
  40642e:	ba 08 00 41 00       	mov    $0x410008,%edx
  406433:	be b1 34 41 00       	mov    $0x4134b1,%esi
  406438:	bf e0 34 40 00       	mov    $0x4034e0,%edi
  40643d:	48 83 c4 08          	add    $0x8,%rsp
  406441:	e9 3a ce ff ff       	jmpq   403280 <__cxa_atexit@plt>
  406446:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40644d:	00 00 00 

0000000000406450 <_start>:
  406450:	f3 0f 1e fa          	endbr64 
  406454:	31 ed                	xor    %ebp,%ebp
  406456:	49 89 d1             	mov    %rdx,%r9
  406459:	5e                   	pop    %rsi
  40645a:	48 89 e2             	mov    %rsp,%rdx
  40645d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  406461:	50                   	push   %rax
  406462:	54                   	push   %rsp
  406463:	45 31 c0             	xor    %r8d,%r8d
  406466:	31 c9                	xor    %ecx,%ecx
  406468:	48 c7 c7 f0 40 40 00 	mov    $0x4040f0,%rdi
  40646f:	ff 15 53 cb 00 00    	callq  *0xcb53(%rip)        # 412fc8 <__libc_start_main@GLIBC_2.34>
  406475:	f4                   	hlt    
  406476:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40647d:	00 00 00 

0000000000406480 <_dl_relocate_static_pie>:
  406480:	f3 0f 1e fa          	endbr64 
  406484:	c3                   	retq   
  406485:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40648c:	00 00 00 
  40648f:	90                   	nop

0000000000406490 <deregister_tm_clones>:
  406490:	48 8d 3d e9 cd 00 00 	lea    0xcde9(%rip),%rdi        # 413280 <_ZSt4cout@@GLIBCXX_3.4>
  406497:	48 8d 05 e2 cd 00 00 	lea    0xcde2(%rip),%rax        # 413280 <_ZSt4cout@@GLIBCXX_3.4>
  40649e:	48 39 f8             	cmp    %rdi,%rax
  4064a1:	74 15                	je     4064b8 <deregister_tm_clones+0x28>
  4064a3:	48 8b 05 26 cb 00 00 	mov    0xcb26(%rip),%rax        # 412fd0 <_ITM_deregisterTMCloneTable>
  4064aa:	48 85 c0             	test   %rax,%rax
  4064ad:	74 09                	je     4064b8 <deregister_tm_clones+0x28>
  4064af:	ff e0                	jmpq   *%rax
  4064b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4064b8:	c3                   	retq   
  4064b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004064c0 <register_tm_clones>:
  4064c0:	48 8d 3d b9 cd 00 00 	lea    0xcdb9(%rip),%rdi        # 413280 <_ZSt4cout@@GLIBCXX_3.4>
  4064c7:	48 8d 35 b2 cd 00 00 	lea    0xcdb2(%rip),%rsi        # 413280 <_ZSt4cout@@GLIBCXX_3.4>
  4064ce:	48 29 fe             	sub    %rdi,%rsi
  4064d1:	48 89 f0             	mov    %rsi,%rax
  4064d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4064d8:	48 c1 f8 03          	sar    $0x3,%rax
  4064dc:	48 01 c6             	add    %rax,%rsi
  4064df:	48 d1 fe             	sar    %rsi
  4064e2:	74 14                	je     4064f8 <register_tm_clones+0x38>
  4064e4:	48 8b 05 f5 ca 00 00 	mov    0xcaf5(%rip),%rax        # 412fe0 <_ITM_registerTMCloneTable>
  4064eb:	48 85 c0             	test   %rax,%rax
  4064ee:	74 08                	je     4064f8 <register_tm_clones+0x38>
  4064f0:	ff e0                	jmpq   *%rax
  4064f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4064f8:	c3                   	retq   
  4064f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406500 <__do_global_dtors_aux>:
  406500:	f3 0f 1e fa          	endbr64 
  406504:	80 3d a5 cf 00 00 00 	cmpb   $0x0,0xcfa5(%rip)        # 4134b0 <completed.0>
  40650b:	75 13                	jne    406520 <__do_global_dtors_aux+0x20>
  40650d:	55                   	push   %rbp
  40650e:	48 89 e5             	mov    %rsp,%rbp
  406511:	e8 7a ff ff ff       	callq  406490 <deregister_tm_clones>
  406516:	c6 05 93 cf 00 00 01 	movb   $0x1,0xcf93(%rip)        # 4134b0 <completed.0>
  40651d:	5d                   	pop    %rbp
  40651e:	c3                   	retq   
  40651f:	90                   	nop
  406520:	c3                   	retq   
  406521:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  406528:	00 00 00 00 
  40652c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406530 <frame_dummy>:
  406530:	f3 0f 1e fa          	endbr64 
  406534:	eb 8a                	jmp    4064c0 <register_tm_clones>
  406536:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40653d:	00 00 00 

0000000000406540 <main._omp_fn.1>:
  406540:	41 54                	push   %r12
  406542:	55                   	push   %rbp
  406543:	53                   	push   %rbx
  406544:	48 8b 07             	mov    (%rdi),%rax
  406547:	48 8b 18             	mov    (%rax),%rbx
  40654a:	48 85 db             	test   %rbx,%rbx
  40654d:	0f 84 ef 00 00 00    	je     406642 <main._omp_fn.1+0x102>
  406553:	49 89 fc             	mov    %rdi,%r12
  406556:	e8 55 cf ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  40655b:	89 c5                	mov    %eax,%ebp
  40655d:	e8 9e ce ff ff       	callq  403400 <omp_get_thread_num@plt>
  406562:	48 63 c8             	movslq %eax,%rcx
  406565:	48 63 f5             	movslq %ebp,%rsi
  406568:	48 89 d8             	mov    %rbx,%rax
  40656b:	31 d2                	xor    %edx,%edx
  40656d:	48 f7 f6             	div    %rsi
  406570:	48 39 d1             	cmp    %rdx,%rcx
  406573:	0f 82 d7 00 00 00    	jb     406650 <main._omp_fn.1+0x110>
  406579:	48 0f af c8          	imul   %rax,%rcx
  40657d:	48 01 d1             	add    %rdx,%rcx
  406580:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
  406584:	48 39 f1             	cmp    %rsi,%rcx
  406587:	0f 83 b5 00 00 00    	jae    406642 <main._omp_fn.1+0x102>
  40658d:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  406592:	c5 fb 10 0d f6 a0 00 	vmovsd 0xa0f6(%rip),%xmm1        # 410690 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd0>
  406599:	00 
  40659a:	48 8b 38             	mov    (%rax),%rdi
  40659d:	49 8b 44 24 10       	mov    0x10(%r12),%rax
  4065a2:	c5 fb 10 1d 06 a2 00 	vmovsd 0xa206(%rip),%xmm3        # 4107b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  4065a9:	00 
  4065aa:	4c 8b 00             	mov    (%rax),%r8
  4065ad:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  4065b2:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  4065b6:	4c 8b 08             	mov    (%rax),%r9
  4065b9:	4d 85 c9             	test   %r9,%r9
  4065bc:	0f 84 9e 00 00 00    	je     406660 <main._omp_fn.1+0x120>
  4065c2:	c5 fb 10 25 ce a0 00 	vmovsd 0xa0ce(%rip),%xmm4        # 410698 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  4065c9:	00 
  4065ca:	49 bb f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r11
  4065d1:	f0 f0 f0 
  4065d4:	49 ba c5 4e ec c4 4e 	movabs $0x4ec4ec4ec4ec4ec5,%r10
  4065db:	ec c4 4e 
  4065de:	66 90                	xchg   %ax,%ax
  4065e0:	48 89 c8             	mov    %rcx,%rax
  4065e3:	49 f7 e3             	mul    %r11
  4065e6:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  4065ed:	00 
  4065ee:	48 89 d0             	mov    %rdx,%rax
  4065f1:	48 c1 e8 04          	shr    $0x4,%rax
  4065f5:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  4065f9:	48 01 c2             	add    %rax,%rdx
  4065fc:	48 89 c8             	mov    %rcx,%rax
  4065ff:	48 29 d0             	sub    %rdx,%rax
  406602:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  406607:	48 89 c8             	mov    %rcx,%rax
  40660a:	49 f7 e2             	mul    %r10
  40660d:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  406612:	48 c1 ea 02          	shr    $0x2,%rdx
  406616:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
  40661a:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
  40661e:	48 89 c8             	mov    %rcx,%rax
  406621:	48 29 d0             	sub    %rdx,%rax
  406624:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  40662a:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  40662f:	c4 e2 d9 9d c1       	vfnmadd132sd %xmm1,%xmm4,%xmm0
  406634:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  40663a:	48 ff c1             	inc    %rcx
  40663d:	48 39 ce             	cmp    %rcx,%rsi
  406640:	75 9e                	jne    4065e0 <main._omp_fn.1+0xa0>
  406642:	5b                   	pop    %rbx
  406643:	5d                   	pop    %rbp
  406644:	41 5c                	pop    %r12
  406646:	c3                   	retq   
  406647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40664e:	00 00 
  406650:	48 ff c0             	inc    %rax
  406653:	31 d2                	xor    %edx,%edx
  406655:	e9 1f ff ff ff       	jmpq   406579 <main._omp_fn.1+0x39>
  40665a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406660:	49 b9 f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r9
  406667:	f0 f0 f0 
  40666a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406670:	48 89 c8             	mov    %rcx,%rax
  406673:	49 f7 e1             	mul    %r9
  406676:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  40667d:	00 
  40667e:	48 89 d0             	mov    %rdx,%rax
  406681:	48 c1 e8 04          	shr    $0x4,%rax
  406685:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  406689:	48 01 c2             	add    %rax,%rdx
  40668c:	48 89 c8             	mov    %rcx,%rax
  40668f:	48 29 d0             	sub    %rdx,%rax
  406692:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  406697:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  40669c:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  4066a2:	48 ff c1             	inc    %rcx
  4066a5:	48 39 ce             	cmp    %rcx,%rsi
  4066a8:	75 c6                	jne    406670 <main._omp_fn.1+0x130>
  4066aa:	5b                   	pop    %rbx
  4066ab:	5d                   	pop    %rbp
  4066ac:	41 5c                	pop    %r12
  4066ae:	c3                   	retq   
  4066af:	90                   	nop

00000000004066b0 <main._omp_fn.0>:
  4066b0:	53                   	push   %rbx
  4066b1:	48 89 fb             	mov    %rdi,%rbx
  4066b4:	e8 a7 c9 ff ff       	callq  403060 <GOMP_single_start@plt>
  4066b9:	84 c0                	test   %al,%al
  4066bb:	74 0e                	je     4066cb <main._omp_fn.0+0x1b>
  4066bd:	e8 ee cd ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  4066c2:	41 89 c0             	mov    %eax,%r8d
  4066c5:	48 8b 03             	mov    (%rbx),%rax
  4066c8:	44 89 00             	mov    %r8d,(%rax)
  4066cb:	5b                   	pop    %rbx
  4066cc:	e9 bf cd ff ff       	jmpq   403490 <GOMP_barrier@plt>
  4066d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4066d8:	00 00 00 00 
  4066dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004066e0 <_ZZ4mainENKUlmE_clEm._omp_fn.0>:
  4066e0:	55                   	push   %rbp
  4066e1:	48 89 e5             	mov    %rsp,%rbp
  4066e4:	41 55                	push   %r13
  4066e6:	41 54                	push   %r12
  4066e8:	53                   	push   %rbx
  4066e9:	4c 8b 27             	mov    (%rdi),%r12
  4066ec:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  4066f0:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  4066f5:	4c 8b 28             	mov    (%rax),%r13
  4066f8:	4d 85 ed             	test   %r13,%r13
  4066fb:	0f 84 42 01 00 00    	je     406843 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406701:	e8 aa cd ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  406706:	89 c3                	mov    %eax,%ebx
  406708:	e8 f3 cc ff ff       	callq  403400 <omp_get_thread_num@plt>
  40670d:	48 63 c8             	movslq %eax,%rcx
  406710:	48 63 f3             	movslq %ebx,%rsi
  406713:	4c 89 e8             	mov    %r13,%rax
  406716:	31 d2                	xor    %edx,%edx
  406718:	48 f7 f6             	div    %rsi
  40671b:	48 39 d1             	cmp    %rdx,%rcx
  40671e:	0f 82 2c 01 00 00    	jb     406850 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x170>
  406724:	48 0f af c8          	imul   %rax,%rcx
  406728:	48 01 ca             	add    %rcx,%rdx
  40672b:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  40672f:	48 39 ca             	cmp    %rcx,%rdx
  406732:	0f 83 0b 01 00 00    	jae    406843 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406738:	4d 8b 44 24 28       	mov    0x28(%r12),%r8
  40673d:	49 8b 7c 24 38       	mov    0x38(%r12),%rdi
  406742:	4d 8b 08             	mov    (%r8),%r9
  406745:	48 8b 3f             	mov    (%rdi),%rdi
  406748:	4c 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%r8
  40674f:	00 
  406750:	49 8b 74 24 30       	mov    0x30(%r12),%rsi
  406755:	4f 8d 14 01          	lea    (%r9,%r8,1),%r10
  406759:	4d 8d 58 08          	lea    0x8(%r8),%r11
  40675d:	4e 8d 24 1f          	lea    (%rdi,%r11,1),%r12
  406761:	4c 89 d3             	mov    %r10,%rbx
  406764:	4c 29 e3             	sub    %r12,%rbx
  406767:	48 8b 36             	mov    (%rsi),%rsi
  40676a:	48 83 fb 10          	cmp    $0x10,%rbx
  40676e:	0f 97 c3             	seta   %bl
  406771:	4d 89 d4             	mov    %r10,%r12
  406774:	49 01 f3             	add    %rsi,%r11
  406777:	4d 29 dc             	sub    %r11,%r12
  40677a:	49 83 fc 10          	cmp    $0x10,%r12
  40677e:	41 0f 97 c3          	seta   %r11b
  406782:	44 84 db             	test   %r11b,%bl
  406785:	0f 84 d5 00 00 00    	je     406860 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x180>
  40678b:	48 83 f8 01          	cmp    $0x1,%rax
  40678f:	0f 84 cb 00 00 00    	je     406860 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x180>
  406795:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  406799:	48 83 f9 02          	cmp    $0x2,%rcx
  40679d:	0f 86 f2 00 00 00    	jbe    406895 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1b5>
  4067a3:	49 89 c3             	mov    %rax,%r11
  4067a6:	49 c1 eb 02          	shr    $0x2,%r11
  4067aa:	c4 e2 7d 19 0d ed 9e 	vbroadcastsd 0x9eed(%rip),%ymm1        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  4067b1:	00 00 
  4067b3:	4a 8d 1c 06          	lea    (%rsi,%r8,1),%rbx
  4067b7:	49 c1 e3 05          	shl    $0x5,%r11
  4067bb:	49 01 f8             	add    %rdi,%r8
  4067be:	31 c9                	xor    %ecx,%ecx
  4067c0:	c4 c1 7d 10 04 08    	vmovupd (%r8,%rcx,1),%ymm0
  4067c6:	c4 e2 f5 a8 04 0b    	vfmadd213pd (%rbx,%rcx,1),%ymm1,%ymm0
  4067cc:	c4 c1 7d 11 04 0a    	vmovupd %ymm0,(%r10,%rcx,1)
  4067d2:	48 83 c1 20          	add    $0x20,%rcx
  4067d6:	49 39 cb             	cmp    %rcx,%r11
  4067d9:	75 e5                	jne    4067c0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0xe0>
  4067db:	49 89 c0             	mov    %rax,%r8
  4067de:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
  4067e2:	4c 01 c2             	add    %r8,%rdx
  4067e5:	48 89 d1             	mov    %rdx,%rcx
  4067e8:	4c 39 c0             	cmp    %r8,%rax
  4067eb:	0f 84 9f 00 00 00    	je     406890 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1b0>
  4067f1:	4c 29 c0             	sub    %r8,%rax
  4067f4:	48 83 f8 01          	cmp    $0x1,%rax
  4067f8:	0f 84 9f 00 00 00    	je     40689d <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1bd>
  4067fe:	c5 f8 77             	vzeroupper 
  406801:	c5 f9 10 04 d7       	vmovupd (%rdi,%rdx,8),%xmm0
  406806:	c5 f9 10 1c d6       	vmovupd (%rsi,%rdx,8),%xmm3
  40680b:	62 f2 e5 18 98 05 8b 	vfmadd132pd 0x9e8b(%rip){1to2},%xmm3,%xmm0        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406812:	9e 00 00 
  406815:	c4 c1 79 11 04 d1    	vmovupd %xmm0,(%r9,%rdx,8)
  40681b:	48 89 c2             	mov    %rax,%rdx
  40681e:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
  406822:	48 01 d1             	add    %rdx,%rcx
  406825:	48 39 d0             	cmp    %rdx,%rax
  406828:	74 19                	je     406843 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  40682a:	c5 fb 10 04 cf       	vmovsd (%rdi,%rcx,8),%xmm0
  40682f:	c5 fb 10 14 ce       	vmovsd (%rsi,%rcx,8),%xmm2
  406834:	c4 e2 e9 99 05 63 9e 	vfmadd132sd 0x9e63(%rip),%xmm2,%xmm0        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  40683b:	00 00 
  40683d:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  406843:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  406847:	5b                   	pop    %rbx
  406848:	41 5c                	pop    %r12
  40684a:	41 5d                	pop    %r13
  40684c:	5d                   	pop    %rbp
  40684d:	c3                   	retq   
  40684e:	66 90                	xchg   %ax,%ax
  406850:	48 ff c0             	inc    %rax
  406853:	31 d2                	xor    %edx,%edx
  406855:	e9 ca fe ff ff       	jmpq   406724 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x44>
  40685a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406860:	c5 fb 10 0d 38 9e 00 	vmovsd 0x9e38(%rip),%xmm1        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406867:	00 
  406868:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40686f:	00 
  406870:	c5 fb 10 04 d7       	vmovsd (%rdi,%rdx,8),%xmm0
  406875:	c4 e2 f1 a9 04 d6    	vfmadd213sd (%rsi,%rdx,8),%xmm1,%xmm0
  40687b:	c4 c1 7b 11 04 d1    	vmovsd %xmm0,(%r9,%rdx,8)
  406881:	48 ff c2             	inc    %rdx
  406884:	48 39 d1             	cmp    %rdx,%rcx
  406887:	75 e7                	jne    406870 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x190>
  406889:	eb b8                	jmp    406843 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  40688b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406890:	c5 f8 77             	vzeroupper 
  406893:	eb ae                	jmp    406843 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406895:	48 89 d1             	mov    %rdx,%rcx
  406898:	e9 64 ff ff ff       	jmpq   406801 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x121>
  40689d:	c5 f8 77             	vzeroupper 
  4068a0:	eb 88                	jmp    40682a <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x14a>
  4068a2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4068a9:	00 00 00 00 
  4068ad:	0f 1f 00             	nopl   (%rax)

00000000004068b0 <_ZZ4mainENKUlmE_clEm._omp_fn.2>:
  4068b0:	55                   	push   %rbp
  4068b1:	48 89 e5             	mov    %rsp,%rbp
  4068b4:	41 55                	push   %r13
  4068b6:	41 54                	push   %r12
  4068b8:	53                   	push   %rbx
  4068b9:	4c 8b 2f             	mov    (%rdi),%r13
  4068bc:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  4068c0:	49 8b 45 20          	mov    0x20(%r13),%rax
  4068c4:	4c 8b 20             	mov    (%rax),%r12
  4068c7:	4d 85 e4             	test   %r12,%r12
  4068ca:	0f 84 e6 00 00 00    	je     4069b6 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  4068d0:	e8 db cb ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  4068d5:	89 c3                	mov    %eax,%ebx
  4068d7:	e8 24 cb ff ff       	callq  403400 <omp_get_thread_num@plt>
  4068dc:	48 63 c8             	movslq %eax,%rcx
  4068df:	48 63 f3             	movslq %ebx,%rsi
  4068e2:	4c 89 e0             	mov    %r12,%rax
  4068e5:	31 d2                	xor    %edx,%edx
  4068e7:	48 f7 f6             	div    %rsi
  4068ea:	48 39 d1             	cmp    %rdx,%rcx
  4068ed:	0f 82 ed 00 00 00    	jb     4069e0 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x130>
  4068f3:	48 0f af c8          	imul   %rax,%rcx
  4068f7:	48 01 ca             	add    %rcx,%rdx
  4068fa:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  4068fe:	48 39 ca             	cmp    %rcx,%rdx
  406901:	0f 83 af 00 00 00    	jae    4069b6 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  406907:	49 8b 7d 28          	mov    0x28(%r13),%rdi
  40690b:	49 8b 75 30          	mov    0x30(%r13),%rsi
  40690f:	48 8b 3f             	mov    (%rdi),%rdi
  406912:	4c 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%r8
  406919:	00 
  40691a:	48 8b 36             	mov    (%rsi),%rsi
  40691d:	4e 8d 14 07          	lea    (%rdi,%r8,1),%r10
  406921:	4e 8d 5c 06 08       	lea    0x8(%rsi,%r8,1),%r11
  406926:	4d 89 d1             	mov    %r10,%r9
  406929:	4d 29 d9             	sub    %r11,%r9
  40692c:	49 83 f9 10          	cmp    $0x10,%r9
  406930:	0f 86 92 00 00 00    	jbe    4069c8 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x118>
  406936:	48 83 f8 01          	cmp    $0x1,%rax
  40693a:	0f 84 88 00 00 00    	je     4069c8 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x118>
  406940:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  406944:	48 83 f9 02          	cmp    $0x2,%rcx
  406948:	0f 86 a7 00 00 00    	jbe    4069f5 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x145>
  40694e:	49 89 c1             	mov    %rax,%r9
  406951:	49 c1 e9 02          	shr    $0x2,%r9
  406955:	49 01 f0             	add    %rsi,%r8
  406958:	49 c1 e1 05          	shl    $0x5,%r9
  40695c:	31 c9                	xor    %ecx,%ecx
  40695e:	66 90                	xchg   %ax,%ax
  406960:	c4 c1 7d 10 0c 08    	vmovupd (%r8,%rcx,1),%ymm1
  406966:	c4 c1 7d 11 0c 0a    	vmovupd %ymm1,(%r10,%rcx,1)
  40696c:	48 83 c1 20          	add    $0x20,%rcx
  406970:	49 39 c9             	cmp    %rcx,%r9
  406973:	75 eb                	jne    406960 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0xb0>
  406975:	49 89 c0             	mov    %rax,%r8
  406978:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
  40697c:	4c 01 c2             	add    %r8,%rdx
  40697f:	48 89 d1             	mov    %rdx,%rcx
  406982:	4c 39 c0             	cmp    %r8,%rax
  406985:	74 69                	je     4069f0 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x140>
  406987:	4c 29 c0             	sub    %r8,%rax
  40698a:	48 83 f8 01          	cmp    $0x1,%rax
  40698e:	74 6a                	je     4069fa <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x14a>
  406990:	c5 f8 77             	vzeroupper 
  406993:	c5 f9 10 14 d6       	vmovupd (%rsi,%rdx,8),%xmm2
  406998:	c5 f9 11 14 d7       	vmovupd %xmm2,(%rdi,%rdx,8)
  40699d:	48 89 c2             	mov    %rax,%rdx
  4069a0:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
  4069a4:	48 01 d1             	add    %rdx,%rcx
  4069a7:	48 39 d0             	cmp    %rdx,%rax
  4069aa:	74 0a                	je     4069b6 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  4069ac:	c5 fb 10 04 ce       	vmovsd (%rsi,%rcx,8),%xmm0
  4069b1:	c5 fb 11 04 cf       	vmovsd %xmm0,(%rdi,%rcx,8)
  4069b6:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  4069ba:	5b                   	pop    %rbx
  4069bb:	41 5c                	pop    %r12
  4069bd:	41 5d                	pop    %r13
  4069bf:	5d                   	pop    %rbp
  4069c0:	c3                   	retq   
  4069c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4069c8:	c5 fb 10 04 d6       	vmovsd (%rsi,%rdx,8),%xmm0
  4069cd:	c5 fb 11 04 d7       	vmovsd %xmm0,(%rdi,%rdx,8)
  4069d2:	48 ff c2             	inc    %rdx
  4069d5:	48 39 d1             	cmp    %rdx,%rcx
  4069d8:	75 ee                	jne    4069c8 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x118>
  4069da:	eb da                	jmp    4069b6 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  4069dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4069e0:	48 ff c0             	inc    %rax
  4069e3:	31 d2                	xor    %edx,%edx
  4069e5:	e9 09 ff ff ff       	jmpq   4068f3 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x43>
  4069ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4069f0:	c5 f8 77             	vzeroupper 
  4069f3:	eb c1                	jmp    4069b6 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  4069f5:	48 89 d1             	mov    %rdx,%rcx
  4069f8:	eb 99                	jmp    406993 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0xe3>
  4069fa:	c5 f8 77             	vzeroupper 
  4069fd:	eb ad                	jmp    4069ac <_ZZ4mainENKUlmE_clEm._omp_fn.2+0xfc>
  4069ff:	90                   	nop

0000000000406a00 <_ZZ4mainENKUlmE_clEm._omp_fn.4>:
  406a00:	55                   	push   %rbp
  406a01:	48 89 e5             	mov    %rsp,%rbp
  406a04:	41 57                	push   %r15
  406a06:	41 56                	push   %r14
  406a08:	41 55                	push   %r13
  406a0a:	41 54                	push   %r12
  406a0c:	53                   	push   %rbx
  406a0d:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  406a11:	48 83 ec 40          	sub    $0x40,%rsp
  406a15:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
  406a19:	48 8b 07             	mov    (%rdi),%rax
  406a1c:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  406a21:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  406a26:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  406a2b:	e8 d0 c9 ff ff       	callq  403400 <omp_get_thread_num@plt>
  406a30:	48 63 f0             	movslq %eax,%rsi
  406a33:	48 8b 43 68          	mov    0x68(%rbx),%rax
  406a37:	31 d2                	xor    %edx,%edx
  406a39:	48 8b 08             	mov    (%rax),%rcx
  406a3c:	b8 00 00 40 00       	mov    $0x400000,%eax
  406a41:	48 f7 f1             	div    %rcx
  406a44:	48 89 34 24          	mov    %rsi,(%rsp)
  406a48:	49 89 cf             	mov    %rcx,%r15
  406a4b:	49 c1 ef 03          	shr    $0x3,%r15
  406a4f:	ba 01 00 00 00       	mov    $0x1,%edx
  406a54:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
  406a59:	48 85 c0             	test   %rax,%rax
  406a5c:	48 0f 45 d0          	cmovne %rax,%rdx
  406a60:	48 8b 43 60          	mov    0x60(%rbx),%rax
  406a64:	49 89 d4             	mov    %rdx,%r12
  406a67:	48 8b 00             	mov    (%rax),%rax
  406a6a:	49 8d 57 ff          	lea    -0x1(%r15),%rdx
  406a6e:	48 c1 ea 06          	shr    $0x6,%rdx
  406a72:	4c 8b 2c f0          	mov    (%rax,%rsi,8),%r13
  406a76:	48 ff c2             	inc    %rdx
  406a79:	48 c1 e2 09          	shl    $0x9,%rdx
  406a7d:	4e 8d 34 2a          	lea    (%rdx,%r13,1),%r14
  406a81:	31 db                	xor    %ebx,%ebx
  406a83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406a88:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  406a8c:	62 f1 fd 48 28 f8    	vmovapd %zmm0,%zmm7
  406a92:	62 f1 fd 48 28 f0    	vmovapd %zmm0,%zmm6
  406a98:	62 f1 fd 48 28 d8    	vmovapd %zmm0,%zmm3
  406a9e:	62 f1 fd 48 28 c8    	vmovapd %zmm0,%zmm1
  406aa4:	62 f1 fd 48 28 e8    	vmovapd %zmm0,%zmm5
  406aaa:	62 f1 fd 48 28 e0    	vmovapd %zmm0,%zmm4
  406ab0:	62 f1 fd 48 28 d0    	vmovapd %zmm0,%zmm2
  406ab6:	31 c9                	xor    %ecx,%ecx
  406ab8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406abf:	00 
  406ac0:	4c 89 e8             	mov    %r13,%rax
  406ac3:	4d 85 ff             	test   %r15,%r15
  406ac6:	74 4a                	je     406b12 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x112>
  406ac8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406acf:	00 
  406ad0:	62 f1 ed 48 58 10    	vaddpd (%rax),%zmm2,%zmm2
  406ad6:	62 f1 dd 48 58 60 01 	vaddpd 0x40(%rax),%zmm4,%zmm4
  406add:	62 f1 d5 48 58 68 02 	vaddpd 0x80(%rax),%zmm5,%zmm5
  406ae4:	62 f1 f5 48 58 48 03 	vaddpd 0xc0(%rax),%zmm1,%zmm1
  406aeb:	62 f1 e5 48 58 58 04 	vaddpd 0x100(%rax),%zmm3,%zmm3
  406af2:	62 f1 cd 48 58 70 05 	vaddpd 0x140(%rax),%zmm6,%zmm6
  406af9:	62 f1 c5 48 58 78 06 	vaddpd 0x180(%rax),%zmm7,%zmm7
  406b00:	62 f1 fd 48 58 40 07 	vaddpd 0x1c0(%rax),%zmm0,%zmm0
  406b07:	48 05 00 02 00 00    	add    $0x200,%rax
  406b0d:	49 39 c6             	cmp    %rax,%r14
  406b10:	75 be                	jne    406ad0 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0xd0>
  406b12:	48 ff c1             	inc    %rcx
  406b15:	4c 39 e1             	cmp    %r12,%rcx
  406b18:	75 a6                	jne    406ac0 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0xc0>
  406b1a:	62 f1 fd 48 58 c7    	vaddpd %zmm7,%zmm0,%zmm0
  406b20:	62 f1 e5 48 58 de    	vaddpd %zmm6,%zmm3,%zmm3
  406b26:	62 f1 f5 48 58 cd    	vaddpd %zmm5,%zmm1,%zmm1
  406b2c:	62 f1 ed 48 58 d4    	vaddpd %zmm4,%zmm2,%zmm2
  406b32:	62 f1 fd 48 58 c3    	vaddpd %zmm3,%zmm0,%zmm0
  406b38:	48 01 cb             	add    %rcx,%rbx
  406b3b:	62 f1 f5 48 58 ca    	vaddpd %zmm2,%zmm1,%zmm1
  406b41:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  406b46:	bf 01 00 00 00       	mov    $0x1,%edi
  406b4b:	62 f1 fd 48 58 c1    	vaddpd %zmm1,%zmm0,%zmm0
  406b51:	62 f3 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm0,%ymm1
  406b58:	c5 f5 58 c8          	vaddpd %ymm0,%ymm1,%ymm1
  406b5c:	62 f3 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm1,%xmm0
  406b63:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  406b67:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  406b6b:	c5 3b 58 c0          	vaddsd %xmm0,%xmm8,%xmm8
  406b6f:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  406b73:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  406b79:	c5 7b 11 44 24 20    	vmovsd %xmm8,0x20(%rsp)
  406b7f:	c5 f8 77             	vzeroupper 
  406b82:	e8 19 c7 ff ff       	callq  4032a0 <clock_gettime@plt>
  406b87:	48 69 44 24 30 00 ca 	imul   $0x3b9aca00,0x30(%rsp),%rax
  406b8e:	9a 3b 
  406b90:	c5 7b 10 44 24 20    	vmovsd 0x20(%rsp),%xmm8
  406b96:	48 03 44 24 38       	add    0x38(%rsp),%rax
  406b9b:	48 39 44 24 18       	cmp    %rax,0x18(%rsp)
  406ba0:	0f 87 e2 fe ff ff    	ja     406a88 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x88>
  406ba6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  406bab:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  406baf:	48 8b 47 68          	mov    0x68(%rdi),%rax
  406bb3:	62 f1 ff 08 7b c3    	vcvtusi2sd %rbx,%xmm0,%xmm0
  406bb9:	4c 8b 20             	mov    (%rax),%r12
  406bbc:	48 8b 47 70          	mov    0x70(%rdi),%rax
  406bc0:	4c 0f af e3          	imul   %rbx,%r12
  406bc4:	48 8b 00             	mov    (%rax),%rax
  406bc7:	48 8b 1c 24          	mov    (%rsp),%rbx
  406bcb:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  406bcf:	c5 fb 59 04 d8       	vmulsd (%rax,%rbx,8),%xmm0,%xmm0
  406bd4:	c5 b9 14 c0          	vunpcklpd %xmm0,%xmm8,%xmm0
  406bd8:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  406bdc:	c5 f9 29 44 24 20    	vmovapd %xmm0,0x20(%rsp)
  406be2:	e8 b9 c5 ff ff       	callq  4031a0 <GOMP_atomic_start@plt>
  406be7:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  406bec:	c5 f9 28 44 24 20    	vmovapd 0x20(%rsp),%xmm0
  406bf2:	4c 01 60 28          	add    %r12,0x28(%rax)
  406bf6:	c5 f9 58 40 30       	vaddpd 0x30(%rax),%xmm0,%xmm0
  406bfb:	c5 f9 11 40 30       	vmovupd %xmm0,0x30(%rax)
  406c00:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  406c04:	5b                   	pop    %rbx
  406c05:	41 5c                	pop    %r12
  406c07:	41 5d                	pop    %r13
  406c09:	41 5e                	pop    %r14
  406c0b:	41 5f                	pop    %r15
  406c0d:	5d                   	pop    %rbp
  406c0e:	e9 2d c6 ff ff       	jmpq   403240 <GOMP_atomic_end@plt>
  406c13:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  406c1a:	00 00 00 00 
  406c1e:	66 90                	xchg   %ax,%ax

0000000000406c20 <_ZZ4mainENKUlmE_clEm._omp_fn.5>:
  406c20:	55                   	push   %rbp
  406c21:	48 89 e5             	mov    %rsp,%rbp
  406c24:	41 55                	push   %r13
  406c26:	41 54                	push   %r12
  406c28:	49 89 fc             	mov    %rdi,%r12
  406c2b:	53                   	push   %rbx
  406c2c:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  406c30:	48 81 ec 80 19 00 00 	sub    $0x1980,%rsp
  406c37:	48 8b 1f             	mov    (%rdi),%rbx
  406c3a:	48 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%rax
  406c41:	80 38 00             	cmpb   $0x0,(%rax)
  406c44:	75 10                	jne    406c56 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x36>
  406c46:	48 8b 83 b0 00 00 00 	mov    0xb0(%rbx),%rax
  406c4d:	80 38 00             	cmpb   $0x0,(%rax)
  406c50:	0f 84 7a 10 00 00    	je     407cd0 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x10b0>
  406c56:	64 80 3c 25 f0 ff ff 	cmpb   $0x0,%fs:0xfffffffffffffff0
  406c5d:	ff 00 
  406c5f:	0f 84 b6 13 00 00    	je     40801b <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x13fb>
  406c65:	64 0f b6 04 25 f8 ff 	movzbl %fs:0xfffffffffffffff8,%eax
  406c6c:	ff ff 
  406c6e:	84 c0                	test   %al,%al
  406c70:	75 39                	jne    406cab <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x8b>
  406c72:	48 8b 1d 27 9b 00 00 	mov    0x9b27(%rip),%rbx        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  406c79:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  406c7f:	e8 1c c5 ff ff       	callq  4031a0 <GOMP_atomic_start@plt>
  406c84:	c4 e1 f9 6e f3       	vmovq  %rbx,%xmm6
  406c89:	c4 c1 4b 58 44 24 38 	vaddsd 0x38(%r12),%xmm6,%xmm0
  406c90:	45 09 6c 24 40       	or     %r13d,0x40(%r12)
  406c95:	c4 c1 7b 11 44 24 38 	vmovsd %xmm0,0x38(%r12)
  406c9c:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  406ca0:	5b                   	pop    %rbx
  406ca1:	41 5c                	pop    %r12
  406ca3:	41 5d                	pop    %r13
  406ca5:	5d                   	pop    %rbp
  406ca6:	e9 95 c5 ff ff       	jmpq   403240 <GOMP_atomic_end@plt>
  406cab:	48 8b 05 f6 99 00 00 	mov    0x99f6(%rip),%rax        # 4106a8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  406cb2:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  406cb6:	c5 f9 7f 84 24 50 01 	vmovdqa %xmm0,0x150(%rsp)
  406cbd:	00 00 
  406cbf:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  406cc6:	00 
  406cc7:	b8 10 10 00 00       	mov    $0x1010,%eax
  406ccc:	c5 f9 7f 84 24 70 01 	vmovdqa %xmm0,0x170(%rsp)
  406cd3:	00 00 
  406cd5:	c5 f9 7f 84 24 40 01 	vmovdqa %xmm0,0x140(%rsp)
  406cdc:	00 00 
  406cde:	c7 84 24 58 01 00 00 	movl   $0x400040,0x158(%rsp)
  406ce5:	40 00 40 00 
  406ce9:	c6 84 24 40 01 00 00 	movb   $0x1,0x140(%rsp)
  406cf0:	01 
  406cf1:	c7 84 24 70 01 00 00 	movl   $0x10101010,0x170(%rsp)
  406cf8:	10 10 10 10 
  406cfc:	66 89 84 24 74 01 00 	mov    %ax,0x174(%rsp)
  406d03:	00 
  406d04:	c5 f9 7f 84 24 60 01 	vmovdqa %xmm0,0x160(%rsp)
  406d0b:	00 00 
  406d0d:	c4 e2 78 49 84 24 40 	ldtilecfg 0x140(%rsp)
  406d14:	01 00 00 
  406d17:	48 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%rax
  406d1e:	80 38 00             	cmpb   $0x0,(%rax)
  406d21:	0f 84 26 13 00 00    	je     40804d <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x142d>
  406d27:	c4 e2 7d 79 05 c2 9a 	vpbroadcastw 0x9ac2(%rip),%ymm0        # 4107f2 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  406d2e:	00 00 
  406d30:	48 8d 94 24 80 01 00 	lea    0x180(%rsp),%rdx
  406d37:	00 
  406d38:	c5 fd 7f 84 24 80 01 	vmovdqa %ymm0,0x180(%rsp)
  406d3f:	00 00 
  406d41:	c5 fd 7f 84 24 a0 01 	vmovdqa %ymm0,0x1a0(%rsp)
  406d48:	00 00 
  406d4a:	c5 fd 7f 84 24 c0 01 	vmovdqa %ymm0,0x1c0(%rsp)
  406d51:	00 00 
  406d53:	c5 fd 7f 84 24 e0 01 	vmovdqa %ymm0,0x1e0(%rsp)
  406d5a:	00 00 
  406d5c:	c5 fd 7f 84 24 00 02 	vmovdqa %ymm0,0x200(%rsp)
  406d63:	00 00 
  406d65:	c5 fd 7f 84 24 20 02 	vmovdqa %ymm0,0x220(%rsp)
  406d6c:	00 00 
  406d6e:	c5 fd 7f 84 24 40 02 	vmovdqa %ymm0,0x240(%rsp)
  406d75:	00 00 
  406d77:	c5 fd 7f 84 24 60 02 	vmovdqa %ymm0,0x260(%rsp)
  406d7e:	00 00 
  406d80:	c5 fd 7f 84 24 80 02 	vmovdqa %ymm0,0x280(%rsp)
  406d87:	00 00 
  406d89:	c5 fd 7f 84 24 a0 02 	vmovdqa %ymm0,0x2a0(%rsp)
  406d90:	00 00 
  406d92:	c5 fd 7f 84 24 c0 02 	vmovdqa %ymm0,0x2c0(%rsp)
  406d99:	00 00 
  406d9b:	c5 fd 7f 84 24 e0 02 	vmovdqa %ymm0,0x2e0(%rsp)
  406da2:	00 00 
  406da4:	c5 fd 7f 84 24 00 03 	vmovdqa %ymm0,0x300(%rsp)
  406dab:	00 00 
  406dad:	c5 fd 7f 84 24 20 03 	vmovdqa %ymm0,0x320(%rsp)
  406db4:	00 00 
  406db6:	c5 fd 7f 84 24 40 03 	vmovdqa %ymm0,0x340(%rsp)
  406dbd:	00 00 
  406dbf:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  406dc6:	00 00 
  406dc8:	c5 fd 7f 84 24 80 03 	vmovdqa %ymm0,0x380(%rsp)
  406dcf:	00 00 
  406dd1:	c5 fd 7f 84 24 a0 03 	vmovdqa %ymm0,0x3a0(%rsp)
  406dd8:	00 00 
  406dda:	c5 fd 7f 84 24 c0 03 	vmovdqa %ymm0,0x3c0(%rsp)
  406de1:	00 00 
  406de3:	c5 fd 7f 84 24 e0 03 	vmovdqa %ymm0,0x3e0(%rsp)
  406dea:	00 00 
  406dec:	c5 fd 7f 84 24 00 04 	vmovdqa %ymm0,0x400(%rsp)
  406df3:	00 00 
  406df5:	c5 fd 7f 84 24 20 04 	vmovdqa %ymm0,0x420(%rsp)
  406dfc:	00 00 
  406dfe:	c5 fd 7f 84 24 40 04 	vmovdqa %ymm0,0x440(%rsp)
  406e05:	00 00 
  406e07:	c5 fd 7f 84 24 60 04 	vmovdqa %ymm0,0x460(%rsp)
  406e0e:	00 00 
  406e10:	c5 fd 7f 84 24 80 04 	vmovdqa %ymm0,0x480(%rsp)
  406e17:	00 00 
  406e19:	c5 fd 7f 84 24 a0 04 	vmovdqa %ymm0,0x4a0(%rsp)
  406e20:	00 00 
  406e22:	c5 fd 7f 84 24 c0 04 	vmovdqa %ymm0,0x4c0(%rsp)
  406e29:	00 00 
  406e2b:	c5 fd 7f 84 24 e0 04 	vmovdqa %ymm0,0x4e0(%rsp)
  406e32:	00 00 
  406e34:	c5 fd 7f 84 24 00 05 	vmovdqa %ymm0,0x500(%rsp)
  406e3b:	00 00 
  406e3d:	c5 fd 7f 84 24 20 05 	vmovdqa %ymm0,0x520(%rsp)
  406e44:	00 00 
  406e46:	c5 fd 7f 84 24 40 05 	vmovdqa %ymm0,0x540(%rsp)
  406e4d:	00 00 
  406e4f:	b8 40 00 00 00       	mov    $0x40,%eax
  406e54:	c5 fd 7f 84 24 60 05 	vmovdqa %ymm0,0x560(%rsp)
  406e5b:	00 00 
  406e5d:	c5 fd 7f 84 24 80 05 	vmovdqa %ymm0,0x580(%rsp)
  406e64:	00 00 
  406e66:	c5 fd 7f 84 24 a0 05 	vmovdqa %ymm0,0x5a0(%rsp)
  406e6d:	00 00 
  406e6f:	c5 fd 7f 84 24 c0 05 	vmovdqa %ymm0,0x5c0(%rsp)
  406e76:	00 00 
  406e78:	c5 fd 7f 84 24 e0 05 	vmovdqa %ymm0,0x5e0(%rsp)
  406e7f:	00 00 
  406e81:	c5 fd 7f 84 24 00 06 	vmovdqa %ymm0,0x600(%rsp)
  406e88:	00 00 
  406e8a:	c5 fd 7f 84 24 20 06 	vmovdqa %ymm0,0x620(%rsp)
  406e91:	00 00 
  406e93:	c5 fd 7f 84 24 40 06 	vmovdqa %ymm0,0x640(%rsp)
  406e9a:	00 00 
  406e9c:	c5 fd 7f 84 24 60 06 	vmovdqa %ymm0,0x660(%rsp)
  406ea3:	00 00 
  406ea5:	c5 fd 7f 84 24 80 06 	vmovdqa %ymm0,0x680(%rsp)
  406eac:	00 00 
  406eae:	c5 fd 7f 84 24 a0 06 	vmovdqa %ymm0,0x6a0(%rsp)
  406eb5:	00 00 
  406eb7:	c5 fd 7f 84 24 c0 06 	vmovdqa %ymm0,0x6c0(%rsp)
  406ebe:	00 00 
  406ec0:	c5 fd 7f 84 24 e0 06 	vmovdqa %ymm0,0x6e0(%rsp)
  406ec7:	00 00 
  406ec9:	c5 fd 7f 84 24 00 07 	vmovdqa %ymm0,0x700(%rsp)
  406ed0:	00 00 
  406ed2:	c5 fd 7f 84 24 20 07 	vmovdqa %ymm0,0x720(%rsp)
  406ed9:	00 00 
  406edb:	c5 fd 7f 84 24 40 07 	vmovdqa %ymm0,0x740(%rsp)
  406ee2:	00 00 
  406ee4:	c5 fd 7f 84 24 60 07 	vmovdqa %ymm0,0x760(%rsp)
  406eeb:	00 00 
  406eed:	c5 fd 7f 84 24 80 07 	vmovdqa %ymm0,0x780(%rsp)
  406ef4:	00 00 
  406ef6:	c5 fd 7f 84 24 a0 07 	vmovdqa %ymm0,0x7a0(%rsp)
  406efd:	00 00 
  406eff:	c5 fd 7f 84 24 c0 07 	vmovdqa %ymm0,0x7c0(%rsp)
  406f06:	00 00 
  406f08:	c5 fd 7f 84 24 e0 07 	vmovdqa %ymm0,0x7e0(%rsp)
  406f0f:	00 00 
  406f11:	c5 fd 7f 84 24 00 08 	vmovdqa %ymm0,0x800(%rsp)
  406f18:	00 00 
  406f1a:	c5 fd 7f 84 24 20 08 	vmovdqa %ymm0,0x820(%rsp)
  406f21:	00 00 
  406f23:	c5 fd 7f 84 24 40 08 	vmovdqa %ymm0,0x840(%rsp)
  406f2a:	00 00 
  406f2c:	c5 fd 7f 84 24 60 08 	vmovdqa %ymm0,0x860(%rsp)
  406f33:	00 00 
  406f35:	c5 fd 7f 84 24 80 08 	vmovdqa %ymm0,0x880(%rsp)
  406f3c:	00 00 
  406f3e:	c5 fd 7f 84 24 a0 08 	vmovdqa %ymm0,0x8a0(%rsp)
  406f45:	00 00 
  406f47:	c5 fd 7f 84 24 c0 08 	vmovdqa %ymm0,0x8c0(%rsp)
  406f4e:	00 00 
  406f50:	c5 fd 7f 84 24 e0 08 	vmovdqa %ymm0,0x8e0(%rsp)
  406f57:	00 00 
  406f59:	c5 fd 7f 84 24 00 09 	vmovdqa %ymm0,0x900(%rsp)
  406f60:	00 00 
  406f62:	c5 fd 7f 84 24 20 09 	vmovdqa %ymm0,0x920(%rsp)
  406f69:	00 00 
  406f6b:	c5 fd 7f 84 24 40 09 	vmovdqa %ymm0,0x940(%rsp)
  406f72:	00 00 
  406f74:	c5 fd 7f 84 24 60 09 	vmovdqa %ymm0,0x960(%rsp)
  406f7b:	00 00 
  406f7d:	c4 e2 7b 4b 24 02    	tileloadd (%rdx,%rax,1),%tmm4
  406f83:	48 8d 94 24 80 05 00 	lea    0x580(%rsp),%rdx
  406f8a:	00 
  406f8b:	c4 e2 7b 4b 2c 02    	tileloadd (%rdx,%rax,1),%tmm5
  406f91:	ba 00 04 00 00       	mov    $0x400,%edx
  406f96:	c4 e2 7b 49 c0       	tilezero %tmm0
  406f9b:	c4 e2 7b 49 c8       	tilezero %tmm1
  406fa0:	c4 e2 7b 49 d0       	tilezero %tmm2
  406fa5:	c4 e2 7b 49 d8       	tilezero %tmm3
  406faa:	b8 00 01 00 00       	mov    $0x100,%eax
  406faf:	90                   	nop
  406fb0:	c4 e2 52 5c c4       	tdpbf16ps %tmm5,%tmm4,%tmm0
  406fb5:	c4 e2 52 5c cc       	tdpbf16ps %tmm5,%tmm4,%tmm1
  406fba:	c4 e2 52 5c d4       	tdpbf16ps %tmm5,%tmm4,%tmm2
  406fbf:	c4 e2 52 5c dc       	tdpbf16ps %tmm5,%tmm4,%tmm3
  406fc4:	ff c8                	dec    %eax
  406fc6:	75 e8                	jne    406fb0 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x390>
  406fc8:	ff ca                	dec    %edx
  406fca:	75 ca                	jne    406f96 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x376>
  406fcc:	48 8d 8c 24 80 09 00 	lea    0x980(%rsp),%rcx
  406fd3:	00 
  406fd4:	b8 40 00 00 00       	mov    $0x40,%eax
  406fd9:	c4 e2 7a 4b 04 01    	tilestored %tmm0,(%rcx,%rax,1)
  406fdf:	48 8d 94 24 80 0d 00 	lea    0xd80(%rsp),%rdx
  406fe6:	00 
  406fe7:	c4 e2 7a 4b 0c 02    	tilestored %tmm1,(%rdx,%rax,1)
  406fed:	48 8d 94 24 80 11 00 	lea    0x1180(%rsp),%rdx
  406ff4:	00 
  406ff5:	c4 e2 7a 4b 14 02    	tilestored %tmm2,(%rdx,%rax,1)
  406ffb:	48 8d 94 24 80 15 00 	lea    0x1580(%rsp),%rdx
  407002:	00 
  407003:	c4 e2 7a 4b 1c 02    	tilestored %tmm3,(%rdx,%rax,1)
  407009:	62 61 7d 28 6f 05 6d 	vmovdqa32 0x976d(%rip),%ymm24        # 410780 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  407010:	97 00 00 
  407013:	62 61 7d 28 6f 0d 43 	vmovdqa32 0x9743(%rip),%ymm25        # 410760 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1a0>
  40701a:	97 00 00 
  40701d:	c4 e2 7d 58 3d 5a 97 	vpbroadcastd 0x975a(%rip),%ymm7        # 410780 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  407024:	00 00 
  407026:	48 8b 1d 73 97 00 00 	mov    0x9773(%rip),%rbx        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  40702d:	62 e2 7d 28 18 3d 8d 	vbroadcastss 0x978d(%rip),%ymm23        # 4107c4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x204>
  407034:	97 00 00 
  407037:	62 01 7d 28 6f d0    	vmovdqa32 %ymm24,%ymm26
  40703d:	45 31 ed             	xor    %r13d,%r13d
  407040:	c5 fd 7f bc 24 20 01 	vmovdqa %ymm7,0x120(%rsp)
  407047:	00 00 
  407049:	62 01 7d 28 6f c1    	vmovdqa32 %ymm25,%ymm24
  40704f:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  407056:	48 8d 91 00 fc ff ff 	lea    -0x400(%rcx),%rdx
  40705d:	62 01 25 00 ef db    	vpxord %xmm27,%xmm27,%xmm27
  407063:	c5 fc 28 72 20       	vmovaps 0x20(%rdx),%ymm6
  407068:	c5 fc 28 1a          	vmovaps (%rdx),%ymm3
  40706c:	62 b3 7d 28 19 f4 01 	vextractf32x4 $0x1,%ymm6,%xmm20
  407073:	c5 fc 28 72 40       	vmovaps 0x40(%rdx),%ymm6
  407078:	62 b3 7d 28 19 dd 01 	vextractf32x4 $0x1,%ymm3,%xmm21
  40707f:	c4 e3 7d 19 f1 01    	vextractf128 $0x1,%ymm6,%xmm1
  407085:	c5 fc 28 72 60       	vmovaps 0x60(%rdx),%ymm6
  40708a:	c5 fc 28 9a 20 01 00 	vmovaps 0x120(%rdx),%ymm3
  407091:	00 
  407092:	c4 e3 7d 19 f0 01    	vextractf128 $0x1,%ymm6,%xmm0
  407098:	c5 fc 28 b2 80 00 00 	vmovaps 0x80(%rdx),%ymm6
  40709f:	00 
  4070a0:	c5 fc 5a c0          	vcvtps2pd %xmm0,%ymm0
  4070a4:	c4 c3 7d 19 f5 01    	vextractf128 $0x1,%ymm6,%xmm13
  4070aa:	c5 fc 28 b2 a0 00 00 	vmovaps 0xa0(%rdx),%ymm6
  4070b1:	00 
  4070b2:	c5 fd 29 84 24 00 01 	vmovapd %ymm0,0x100(%rsp)
  4070b9:	00 00 
  4070bb:	c4 c3 7d 19 f4 01    	vextractf128 $0x1,%ymm6,%xmm12
  4070c1:	c5 fc 28 b2 c0 00 00 	vmovaps 0xc0(%rdx),%ymm6
  4070c8:	00 
  4070c9:	c5 fc 28 82 a0 01 00 	vmovaps 0x1a0(%rdx),%ymm0
  4070d0:	00 
  4070d1:	c4 c3 7d 19 f1 01    	vextractf128 $0x1,%ymm6,%xmm9
  4070d7:	c4 e3 7d 19 dd 01    	vextractf128 $0x1,%ymm3,%xmm5
  4070dd:	c5 fc 28 b2 e0 00 00 	vmovaps 0xe0(%rdx),%ymm6
  4070e4:	00 
  4070e5:	c5 fc 28 9a 40 01 00 	vmovaps 0x140(%rdx),%ymm3
  4070ec:	00 
  4070ed:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  4070f4:	62 61 7c 28 5a 72 02 	vcvtps2pd 0x20(%rdx),%ymm30
  4070fb:	62 61 7c 28 5a 6a 04 	vcvtps2pd 0x40(%rdx),%ymm29
  407102:	c5 7c 5a b2 40 01 00 	vcvtps2pd 0x140(%rdx),%ymm14
  407109:	00 
  40710a:	62 e1 7c 28 5a 32    	vcvtps2pd (%rdx),%ymm22
  407110:	62 e1 7c 28 5a 5a 06 	vcvtps2pd 0x60(%rdx),%ymm19
  407117:	62 e1 7c 28 5a 52 08 	vcvtps2pd 0x80(%rdx),%ymm18
  40711e:	62 e1 7c 28 5a 4a 0a 	vcvtps2pd 0xa0(%rdx),%ymm17
  407125:	62 e1 7c 28 5a 42 0c 	vcvtps2pd 0xc0(%rdx),%ymm16
  40712c:	c5 7c 5a ba e0 00 00 	vcvtps2pd 0xe0(%rdx),%ymm15
  407133:	00 
  407134:	62 61 7c 28 5a 62 10 	vcvtps2pd 0x100(%rdx),%ymm28
  40713b:	62 61 7c 28 5a 4a 12 	vcvtps2pd 0x120(%rdx),%ymm25
  407142:	c5 7c 5a 9a 60 01 00 	vcvtps2pd 0x160(%rdx),%ymm11
  407149:	00 
  40714a:	c5 7c 5a 92 80 01 00 	vcvtps2pd 0x180(%rdx),%ymm10
  407151:	00 
  407152:	c5 7c 5a 82 a0 01 00 	vcvtps2pd 0x1a0(%rdx),%ymm8
  407159:	00 
  40715a:	c5 fc 28 92 80 01 00 	vmovaps 0x180(%rdx),%ymm2
  407161:	00 
  407162:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  407168:	c4 e3 7d 19 f7 01    	vextractf128 $0x1,%ymm6,%xmm7
  40716e:	62 61 7c 28 5a 7a 1c 	vcvtps2pd 0x1c0(%rdx),%ymm31
  407175:	c5 fc 28 b2 00 01 00 	vmovaps 0x100(%rdx),%ymm6
  40717c:	00 
  40717d:	c4 e3 7d 19 dc 01    	vextractf128 $0x1,%ymm3,%xmm4
  407183:	c5 fd 29 44 24 40    	vmovapd %ymm0,0x40(%rsp)
  407189:	c5 fc 28 9a 60 01 00 	vmovaps 0x160(%rdx),%ymm3
  407190:	00 
  407191:	c5 fc 5a c9          	vcvtps2pd %xmm1,%ymm1
  407195:	c5 fd 29 8c 24 e0 00 	vmovapd %ymm1,0xe0(%rsp)
  40719c:	00 00 
  40719e:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0x60(%rsp)
  4071a5:	03 
  4071a6:	c5 fc 28 82 c0 01 00 	vmovaps 0x1c0(%rdx),%ymm0
  4071ad:	00 
  4071ae:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  4071b5:	07 
  4071b6:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  4071bd:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  4071c3:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  4071ca:	00 00 
  4071cc:	c5 fc 28 82 e0 01 00 	vmovaps 0x1e0(%rdx),%ymm0
  4071d3:	00 
  4071d4:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  4071d9:	62 61 7c 28 5a 7a 1e 	vcvtps2pd 0x1e0(%rdx),%ymm31
  4071e0:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xa0(%rsp)
  4071e7:	05 
  4071e8:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  4071ef:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  4071f4:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  4071fa:	c5 fd 29 84 24 c0 00 	vmovapd %ymm0,0xc0(%rsp)
  407201:	00 00 
  407203:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  407208:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  40720c:	62 b1 cd 00 15 ce    	vunpckhpd %xmm22,%xmm22,%xmm1
  407212:	62 a3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm22,%xmm22
  407219:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40721d:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  407224:	07 
  407225:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  40722a:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  40722f:	62 61 fd 08 6e f8    	vmovq  %rax,%xmm31
  407235:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  40723a:	62 91 f7 08 58 cf    	vaddsd %xmm31,%xmm1,%xmm1
  407240:	62 21 cd 00 15 fe    	vunpckhpd %xmm22,%xmm22,%xmm31
  407246:	62 a1 7c 28 5a ed    	vcvtps2pd %xmm21,%ymm21
  40724c:	62 f1 87 00 58 c9    	vaddsd %xmm1,%xmm31,%xmm1
  407252:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  407259:	07 
  40725a:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  40725f:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  407264:	62 e1 fd 08 6e f0    	vmovq  %rax,%xmm22
  40726a:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  40726f:	62 b1 f7 08 58 ce    	vaddsd %xmm22,%xmm1,%xmm1
  407275:	62 21 d5 00 15 fd    	vunpckhpd %xmm21,%xmm21,%xmm31
  40727b:	62 a3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm21,%xmm21
  407282:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  407289:	07 
  40728a:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  40728f:	62 61 87 00 58 f9    	vaddsd %xmm1,%xmm31,%xmm31
  407295:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  40729a:	62 61 fd 08 13 74 24 	vmovlpd %xmm30,0x38(%rsp)
  4072a1:	07 
  4072a2:	62 01 f7 08 58 ff    	vaddsd %xmm31,%xmm1,%xmm31
  4072a8:	62 a1 d5 00 15 f5    	vunpckhpd %xmm21,%xmm21,%xmm22
  4072ae:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  4072b3:	62 81 cf 00 58 f7    	vaddsd %xmm31,%xmm22,%xmm22
  4072b9:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  4072be:	62 01 8d 00 15 fe    	vunpckhpd %xmm30,%xmm30,%xmm31
  4072c4:	62 a1 f7 08 58 f6    	vaddsd %xmm22,%xmm1,%xmm22
  4072ca:	62 a1 7c 28 5a e4    	vcvtps2pd %xmm20,%ymm20
  4072d0:	c5 fd 28 8c 24 e0 00 	vmovapd 0xe0(%rsp),%ymm1
  4072d7:	00 00 
  4072d9:	62 21 87 00 58 fe    	vaddsd %xmm22,%xmm31,%xmm31
  4072df:	62 23 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm30,%xmm22
  4072e6:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  4072ed:	07 
  4072ee:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  4072f5:	07 
  4072f6:	62 a1 cd 00 15 f6    	vunpckhpd %xmm22,%xmm22,%xmm22
  4072fc:	62 01 8f 00 58 f7    	vaddsd %xmm31,%xmm30,%xmm30
  407302:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  407309:	07 
  40730a:	62 61 ff 08 10 7c 24 	vmovsd 0x38(%rsp),%xmm31
  407311:	07 
  407312:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  407318:	62 21 dd 00 15 f4    	vunpckhpd %xmm20,%xmm20,%xmm30
  40731e:	62 a3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm20,%xmm20
  407325:	62 a1 87 00 58 f6    	vaddsd %xmm22,%xmm31,%xmm22
  40732b:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  407332:	07 
  407333:	62 a1 dd 00 15 ec    	vunpckhpd %xmm20,%xmm20,%xmm21
  407339:	62 21 8f 00 58 f6    	vaddsd %xmm22,%xmm30,%xmm30
  40733f:	62 e1 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm22
  407346:	07 
  407347:	62 61 fd 08 13 6c 24 	vmovlpd %xmm29,0x38(%rsp)
  40734e:	07 
  40734f:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  407355:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  40735c:	07 
  40735d:	c5 f9 13 8c 24 e0 00 	vmovlpd %xmm1,0xe0(%rsp)
  407364:	00 00 
  407366:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  40736c:	62 81 95 00 15 f5    	vunpckhpd %xmm29,%xmm29,%xmm22
  407372:	c4 41 7c 5a ed       	vcvtps2pd %xmm13,%ymm13
  407377:	62 a1 8f 00 58 ed    	vaddsd %xmm21,%xmm30,%xmm21
  40737d:	c4 41 7c 5a e4       	vcvtps2pd %xmm12,%ymm12
  407382:	c4 41 7c 5a c9       	vcvtps2pd %xmm9,%ymm9
  407387:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  40738d:	62 23 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm29,%xmm21
  407394:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  40739b:	07 
  40739c:	62 61 ff 08 10 6c 24 	vmovsd 0x38(%rsp),%xmm29
  4073a3:	07 
  4073a4:	62 a1 d5 00 15 ed    	vunpckhpd %xmm21,%xmm21,%xmm21
  4073aa:	62 a1 97 00 58 f6    	vaddsd %xmm22,%xmm29,%xmm22
  4073b0:	62 61 ff 08 10 6c 24 	vmovsd 0xe0(%rsp),%xmm29
  4073b7:	1c 
  4073b8:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0xe0(%rsp)
  4073bf:	1c 
  4073c0:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  4073c6:	62 e1 f5 08 15 f1    	vunpckhpd %xmm1,%xmm1,%xmm22
  4073cc:	62 f3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm1,%xmm1
  4073d3:	62 a1 97 00 58 ed    	vaddsd %xmm21,%xmm29,%xmm21
  4073d9:	62 e1 f5 08 15 e1    	vunpckhpd %xmm1,%xmm1,%xmm20
  4073df:	c5 fc 5a ff          	vcvtps2pd %xmm7,%ymm7
  4073e3:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  4073e9:	c4 e3 7d 19 f6 01    	vextractf128 $0x1,%ymm6,%xmm6
  4073ef:	c5 fc 5a f6          	vcvtps2pd %xmm6,%ymm6
  4073f3:	62 a1 f7 08 58 ee    	vaddsd %xmm22,%xmm1,%xmm21
  4073f9:	62 e1 ff 08 10 74 24 	vmovsd 0xe0(%rsp),%xmm22
  407400:	1c 
  407401:	c5 fc 5a ed          	vcvtps2pd %xmm5,%ymm5
  407405:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  40740b:	62 a1 e5 00 15 eb    	vunpckhpd %xmm19,%xmm19,%xmm21
  407411:	62 a3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm19,%xmm19
  407418:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  40741e:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0xe0(%rsp)
  407425:	1c 
  407426:	62 e1 ff 08 10 74 24 	vmovsd 0xe0(%rsp),%xmm22
  40742d:	1c 
  40742e:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  407434:	c5 fd 28 84 24 00 01 	vmovapd 0x100(%rsp),%ymm0
  40743b:	00 00 
  40743d:	62 a1 e5 00 15 e3    	vunpckhpd %xmm19,%xmm19,%xmm20
  407443:	62 a1 cf 00 58 ed    	vaddsd %xmm21,%xmm22,%xmm21
  407449:	c5 f9 13 84 24 00 01 	vmovlpd %xmm0,0x100(%rsp)
  407450:	00 00 
  407452:	62 e1 ff 08 10 74 24 	vmovsd 0x100(%rsp),%xmm22
  407459:	20 
  40745a:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  407460:	62 e1 fd 08 15 e8    	vunpckhpd %xmm0,%xmm0,%xmm21
  407466:	62 f3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm0,%xmm0
  40746d:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  407473:	62 e1 fd 08 15 d8    	vunpckhpd %xmm0,%xmm0,%xmm19
  407479:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x100(%rsp)
  407480:	20 
  407481:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  407487:	c5 fc 5a e4          	vcvtps2pd %xmm4,%ymm4
  40748b:	c4 e3 7d 19 db 01    	vextractf128 $0x1,%ymm3,%xmm3
  407491:	62 a1 ff 08 58 e5    	vaddsd %xmm21,%xmm0,%xmm20
  407497:	62 e1 ff 08 10 6c 24 	vmovsd 0x100(%rsp),%xmm21
  40749e:	20 
  40749f:	c5 fc 5a db          	vcvtps2pd %xmm3,%ymm3
  4074a3:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  4074a9:	62 a1 ed 00 15 e2    	vunpckhpd %xmm18,%xmm18,%xmm20
  4074af:	62 a3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm18,%xmm18
  4074b6:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  4074bc:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x100(%rsp)
  4074c3:	20 
  4074c4:	62 e1 ff 08 10 6c 24 	vmovsd 0x100(%rsp),%xmm21
  4074cb:	20 
  4074cc:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  4074d2:	62 a1 ed 00 15 da    	vunpckhpd %xmm18,%xmm18,%xmm19
  4074d8:	c5 79 13 ac 24 00 01 	vmovlpd %xmm13,0x100(%rsp)
  4074df:	00 00 
  4074e1:	62 a1 d7 00 58 e4    	vaddsd %xmm20,%xmm21,%xmm20
  4074e7:	62 e1 ff 08 10 6c 24 	vmovsd 0x100(%rsp),%xmm21
  4074ee:	20 
  4074ef:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x100(%rsp)
  4074f6:	20 
  4074f7:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  4074fd:	62 c1 95 08 15 e5    	vunpckhpd %xmm13,%xmm13,%xmm20
  407503:	62 53 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm13,%xmm13
  40750a:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  407510:	62 c1 95 08 15 d5    	vunpckhpd %xmm13,%xmm13,%xmm18
  407516:	c4 e3 7d 19 d2 01    	vextractf128 $0x1,%ymm2,%xmm2
  40751c:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  407522:	c5 fc 5a d2          	vcvtps2pd %xmm2,%ymm2
  407526:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  40752d:	62 a1 97 08 58 dc    	vaddsd %xmm20,%xmm13,%xmm19
  407533:	62 e1 ff 08 10 64 24 	vmovsd 0x100(%rsp),%xmm20
  40753a:	20 
  40753b:	62 43 fd 28 19 cd 01 	vextractf64x2 $0x1,%ymm25,%xmm13
  407542:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  407548:	62 a1 f5 00 15 d9    	vunpckhpd %xmm17,%xmm17,%xmm19
  40754e:	62 a3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm17,%xmm17
  407555:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  40755b:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x100(%rsp)
  407562:	20 
  407563:	62 e1 ff 08 10 64 24 	vmovsd 0x100(%rsp),%xmm20
  40756a:	20 
  40756b:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  407571:	62 a1 f5 00 15 d1    	vunpckhpd %xmm17,%xmm17,%xmm18
  407577:	c5 79 13 a4 24 00 01 	vmovlpd %xmm12,0x100(%rsp)
  40757e:	00 00 
  407580:	62 a1 df 00 58 db    	vaddsd %xmm19,%xmm20,%xmm19
  407586:	62 e1 ff 08 10 64 24 	vmovsd 0x100(%rsp),%xmm20
  40758d:	20 
  40758e:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x100(%rsp)
  407595:	20 
  407596:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  40759c:	62 c1 9d 08 15 dc    	vunpckhpd %xmm12,%xmm12,%xmm19
  4075a2:	62 53 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm12,%xmm12
  4075a9:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  4075af:	62 c1 9d 08 15 cc    	vunpckhpd %xmm12,%xmm12,%xmm17
  4075b5:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  4075bb:	62 a1 9f 08 58 d3    	vaddsd %xmm19,%xmm12,%xmm18
  4075c1:	62 e1 ff 08 10 5c 24 	vmovsd 0x100(%rsp),%xmm19
  4075c8:	20 
  4075c9:	62 53 fd 28 19 f4 01 	vextractf64x2 $0x1,%ymm14,%xmm12
  4075d0:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  4075d6:	62 a1 fd 00 15 d0    	vunpckhpd %xmm16,%xmm16,%xmm18
  4075dc:	62 a3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm16,%xmm16
  4075e3:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  4075e9:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x100(%rsp)
  4075f0:	20 
  4075f1:	62 e1 ff 08 10 5c 24 	vmovsd 0x100(%rsp),%xmm19
  4075f8:	20 
  4075f9:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  4075ff:	62 a1 fd 00 15 c8    	vunpckhpd %xmm16,%xmm16,%xmm17
  407605:	c5 79 13 8c 24 00 01 	vmovlpd %xmm9,0x100(%rsp)
  40760c:	00 00 
  40760e:	62 a1 e7 00 58 d2    	vaddsd %xmm18,%xmm19,%xmm18
  407614:	62 e1 ff 08 10 5c 24 	vmovsd 0x100(%rsp),%xmm19
  40761b:	20 
  40761c:	c5 79 13 bc 24 00 01 	vmovlpd %xmm15,0x100(%rsp)
  407623:	00 00 
  407625:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  40762b:	62 c1 b5 08 15 d1    	vunpckhpd %xmm9,%xmm9,%xmm18
  407631:	62 53 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm9,%xmm9
  407638:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  40763e:	62 c1 b5 08 15 c1    	vunpckhpd %xmm9,%xmm9,%xmm16
  407644:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  40764a:	62 a1 b7 08 58 ca    	vaddsd %xmm18,%xmm9,%xmm17
  407650:	62 e1 ff 08 10 54 24 	vmovsd 0x100(%rsp),%xmm18
  407657:	20 
  407658:	c5 f9 13 bc 24 00 01 	vmovlpd %xmm7,0x100(%rsp)
  40765f:	00 00 
  407661:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  407667:	62 c1 85 08 15 cf    	vunpckhpd %xmm15,%xmm15,%xmm17
  40766d:	62 53 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm15,%xmm15
  407674:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  40767a:	62 e1 ff 08 10 54 24 	vmovsd 0x100(%rsp),%xmm18
  407681:	20 
  407682:	62 61 fd 08 13 64 24 	vmovlpd %xmm28,0x100(%rsp)
  407689:	20 
  40768a:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  407690:	62 c1 85 08 15 c7    	vunpckhpd %xmm15,%xmm15,%xmm16
  407696:	62 a1 87 08 58 c9    	vaddsd %xmm17,%xmm15,%xmm17
  40769c:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  4076a2:	62 e1 c5 08 15 cf    	vunpckhpd %xmm7,%xmm7,%xmm17
  4076a8:	62 f3 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm7,%xmm7
  4076af:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  4076b5:	c5 41 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm15
  4076b9:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  4076bf:	62 a1 c7 08 58 c1    	vaddsd %xmm17,%xmm7,%xmm16
  4076c5:	62 e1 ff 08 10 4c 24 	vmovsd 0x100(%rsp),%xmm17
  4076cc:	20 
  4076cd:	c5 f9 13 b4 24 00 01 	vmovlpd %xmm6,0x100(%rsp)
  4076d4:	00 00 
  4076d6:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  4076dc:	62 81 9d 00 15 c4    	vunpckhpd %xmm28,%xmm28,%xmm16
  4076e2:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  4076e8:	62 e1 ff 08 10 4c 24 	vmovsd 0x100(%rsp),%xmm17
  4076ef:	20 
  4076f0:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4076f6:	62 43 fd 28 19 e7 01 	vextractf64x2 $0x1,%ymm28,%xmm15
  4076fd:	62 a1 87 08 58 c0    	vaddsd %xmm16,%xmm15,%xmm16
  407703:	c4 41 01 15 ff       	vunpckhpd %xmm15,%xmm15,%xmm15
  407708:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  40770e:	62 e1 cd 08 15 c6    	vunpckhpd %xmm6,%xmm6,%xmm16
  407714:	62 f3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm6,%xmm6
  40771b:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  407721:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  407727:	62 31 cf 08 58 f8    	vaddsd %xmm16,%xmm6,%xmm15
  40772d:	c5 c9 15 f6          	vunpckhpd %xmm6,%xmm6,%xmm6
  407731:	c4 c1 4b 58 f7       	vaddsd %xmm15,%xmm6,%xmm6
  407736:	62 11 b5 00 15 f9    	vunpckhpd %xmm25,%xmm25,%xmm15
  40773c:	62 f1 b7 00 58 f6    	vaddsd %xmm6,%xmm25,%xmm6
  407742:	c5 03 58 fe          	vaddsd %xmm6,%xmm15,%xmm15
  407746:	c4 c1 13 58 f7       	vaddsd %xmm15,%xmm13,%xmm6
  40774b:	c4 41 11 15 ed       	vunpckhpd %xmm13,%xmm13,%xmm13
  407750:	c5 13 58 ee          	vaddsd %xmm6,%xmm13,%xmm13
  407754:	c5 d1 15 f5          	vunpckhpd %xmm5,%xmm5,%xmm6
  407758:	c4 41 53 58 ed       	vaddsd %xmm13,%xmm5,%xmm13
  40775d:	62 f3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm5,%xmm5
  407764:	c4 c1 4b 58 f5       	vaddsd %xmm13,%xmm6,%xmm6
  407769:	c5 d3 58 f6          	vaddsd %xmm6,%xmm5,%xmm6
  40776d:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  407771:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  407775:	c4 c1 09 15 f6       	vunpckhpd %xmm14,%xmm14,%xmm6
  40777a:	c5 8b 58 ed          	vaddsd %xmm5,%xmm14,%xmm5
  40777e:	c5 cb 58 f5          	vaddsd %xmm5,%xmm6,%xmm6
  407782:	c5 9b 58 ee          	vaddsd %xmm6,%xmm12,%xmm5
  407786:	c4 41 19 15 e4       	vunpckhpd %xmm12,%xmm12,%xmm12
  40778b:	c5 1b 58 e5          	vaddsd %xmm5,%xmm12,%xmm12
  40778f:	c5 d9 15 ec          	vunpckhpd %xmm4,%xmm4,%xmm5
  407793:	c4 c1 5b 58 f4       	vaddsd %xmm12,%xmm4,%xmm6
  407798:	62 f3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm4,%xmm4
  40779f:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  4077a3:	c5 fd 28 74 24 40    	vmovapd 0x40(%rsp),%ymm6
  4077a9:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  4077ad:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  4077b1:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  4077b8:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  4077bc:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  4077c1:	c5 a3 58 ed          	vaddsd %xmm5,%xmm11,%xmm5
  4077c5:	62 53 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm11,%xmm11
  4077cc:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  4077d0:	c5 a3 58 ec          	vaddsd %xmm4,%xmm11,%xmm5
  4077d4:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  4077d9:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  4077dd:	c5 e1 15 eb          	vunpckhpd %xmm3,%xmm3,%xmm5
  4077e1:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  4077e5:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  4077e9:	62 f3 fd 28 19 dc 01 	vextractf64x2 $0x1,%ymm3,%xmm4
  4077f0:	c5 db 58 dd          	vaddsd %xmm5,%xmm4,%xmm3
  4077f4:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  4077f8:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  4077fc:	c4 c1 29 15 da       	vunpckhpd %xmm10,%xmm10,%xmm3
  407801:	c5 ab 58 e4          	vaddsd %xmm4,%xmm10,%xmm4
  407805:	62 53 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm10,%xmm10
  40780c:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  407810:	c5 ab 58 db          	vaddsd %xmm3,%xmm10,%xmm3
  407814:	c4 41 29 15 d2       	vunpckhpd %xmm10,%xmm10,%xmm10
  407819:	c5 2b 58 d3          	vaddsd %xmm3,%xmm10,%xmm10
  40781d:	c5 e9 15 da          	vunpckhpd %xmm2,%xmm2,%xmm3
  407821:	c4 c1 6b 58 e2       	vaddsd %xmm10,%xmm2,%xmm4
  407826:	62 f3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm2,%xmm2
  40782d:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  407831:	c5 eb 58 db          	vaddsd %xmm3,%xmm2,%xmm3
  407835:	c5 e9 15 d2          	vunpckhpd %xmm2,%xmm2,%xmm2
  407839:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40783d:	c4 c1 39 15 d8       	vunpckhpd %xmm8,%xmm8,%xmm3
  407842:	c5 bb 58 d2          	vaddsd %xmm2,%xmm8,%xmm2
  407846:	62 53 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm8
  40784d:	c4 41 39 15 c8       	vunpckhpd %xmm8,%xmm8,%xmm9
  407852:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  407856:	c5 bb 58 d3          	vaddsd %xmm3,%xmm8,%xmm2
  40785a:	c5 33 58 ca          	vaddsd %xmm2,%xmm9,%xmm9
  40785e:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  407862:	c4 c1 4b 58 d9       	vaddsd %xmm9,%xmm6,%xmm3
  407867:	c5 fd 28 74 24 60    	vmovapd 0x60(%rsp),%ymm6
  40786d:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  407871:	62 d3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm8
  407878:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40787c:	c5 f1 15 c9          	vunpckhpd %xmm1,%xmm1,%xmm1
  407880:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  407884:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  407888:	c5 cb 58 c9          	vaddsd %xmm1,%xmm6,%xmm1
  40788c:	c5 fd 28 b4 24 80 00 	vmovapd 0x80(%rsp),%ymm6
  407893:	00 00 
  407895:	c5 fc 28 a2 00 fe ff 	vmovaps -0x200(%rdx),%ymm4
  40789c:	ff 
  40789d:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  4078a1:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  4078a8:	62 e1 7c 28 28 52 f2 	vmovaps -0x1c0(%rdx),%ymm18
  4078af:	c5 bb 58 ca          	vaddsd %xmm2,%xmm8,%xmm1
  4078b3:	c4 41 39 15 c0       	vunpckhpd %xmm8,%xmm8,%xmm8
  4078b8:	c5 fc 28 aa 80 fe ff 	vmovaps -0x180(%rdx),%ymm5
  4078bf:	ff 
  4078c0:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  4078c4:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  4078c8:	62 f2 3d 20 7f 62 f1 	vpermt2ps -0x1e0(%rdx),%ymm24,%ymm4
  4078cf:	c4 c1 4b 58 d0       	vaddsd %xmm8,%xmm6,%xmm2
  4078d4:	c5 fd 28 b4 24 a0 00 	vmovapd 0xa0(%rsp),%ymm6
  4078db:	00 00 
  4078dd:	c5 7c 28 ba c0 fe ff 	vmovaps -0x140(%rdx),%ymm15
  4078e4:	ff 
  4078e5:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  4078e9:	62 f3 fd 28 19 f7 01 	vextractf64x2 $0x1,%ymm6,%xmm7
  4078f0:	62 e2 3d 20 7f 52 f3 	vpermt2ps -0x1a0(%rdx),%ymm24,%ymm18
  4078f7:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  4078fb:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  4078ff:	62 f2 3d 20 7f 6a f5 	vpermt2ps -0x160(%rdx),%ymm24,%ymm5
  407906:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  40790a:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  40790e:	62 e1 7c 28 28 4a fa 	vmovaps -0xc0(%rdx),%ymm17
  407915:	c5 cb 58 c0          	vaddsd %xmm0,%xmm6,%xmm0
  407919:	c5 fd 28 b4 24 c0 00 	vmovapd 0xc0(%rsp),%ymm6
  407920:	00 00 
  407922:	c5 fc 28 52 80       	vmovaps -0x80(%rdx),%ymm2
  407927:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40792b:	c5 7c 28 ec          	vmovaps %ymm4,%ymm13
  40792f:	62 72 3d 20 7f 7a f7 	vpermt2ps -0x120(%rdx),%ymm24,%ymm15
  407936:	c5 c3 58 c1          	vaddsd %xmm1,%xmm7,%xmm0
  40793a:	c5 c1 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm7
  40793e:	62 32 3d 20 7f ea    	vpermt2ps %ymm18,%ymm24,%ymm13
  407944:	c5 c3 58 f8          	vaddsd %xmm0,%xmm7,%xmm7
  407948:	c5 c9 15 c6          	vunpckhpd %xmm6,%xmm6,%xmm0
  40794c:	62 b2 2d 20 7f e2    	vpermt2ps %ymm18,%ymm26,%ymm4
  407952:	c5 cb 58 cf          	vaddsd %xmm7,%xmm6,%xmm1
  407956:	c5 7c 28 8a 40 fe ff 	vmovaps -0x1c0(%rdx),%ymm9
  40795d:	ff 
  40795e:	c5 fc 28 ba 80 fe ff 	vmovaps -0x180(%rdx),%ymm7
  407965:	ff 
  407966:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  40796a:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  407971:	c5 7c 28 b2 c0 fe ff 	vmovaps -0x140(%rdx),%ymm14
  407978:	ff 
  407979:	c5 fb 58 d9          	vaddsd %xmm1,%xmm0,%xmm3
  40797d:	c5 fc 28 8a 00 ff ff 	vmovaps -0x100(%rdx),%ymm1
  407984:	ff 
  407985:	c5 fc 28 b2 00 fe ff 	vmovaps -0x200(%rdx),%ymm6
  40798c:	ff 
  40798d:	62 f2 3d 20 7f 4a f9 	vpermt2ps -0xe0(%rdx),%ymm24,%ymm1
  407994:	c5 7c 28 9a 00 ff ff 	vmovaps -0x100(%rdx),%ymm11
  40799b:	ff 
  40799c:	c5 7c 28 82 40 ff ff 	vmovaps -0xc0(%rdx),%ymm8
  4079a3:	ff 
  4079a4:	62 e1 7c 28 28 42 fc 	vmovaps -0x80(%rdx),%ymm16
  4079ab:	62 e1 7c 28 28 d5    	vmovaps %ymm5,%ymm18
  4079b1:	c5 7c 28 62 c0       	vmovaps -0x40(%rdx),%ymm12
  4079b6:	62 e2 3d 20 7f 4a fb 	vpermt2ps -0xa0(%rdx),%ymm24,%ymm17
  4079bd:	62 c2 3d 20 7f d7    	vpermt2ps %ymm15,%ymm24,%ymm18
  4079c3:	62 d2 2d 20 7f ef    	vpermt2ps %ymm15,%ymm26,%ymm5
  4079c9:	62 f2 3d 20 7f 52 fd 	vpermt2ps -0x60(%rdx),%ymm24,%ymm2
  4079d0:	c5 7c 28 f9          	vmovaps %ymm1,%ymm15
  4079d4:	62 72 2d 20 7f 4a f3 	vpermt2ps -0x1a0(%rdx),%ymm26,%ymm9
  4079db:	62 72 2d 20 7f 72 f7 	vpermt2ps -0x120(%rdx),%ymm26,%ymm14
  4079e2:	62 72 2d 20 7f 42 fb 	vpermt2ps -0xa0(%rdx),%ymm26,%ymm8
  4079e9:	62 f2 2d 20 7f 72 f1 	vpermt2ps -0x1e0(%rdx),%ymm26,%ymm6
  4079f0:	62 f2 2d 20 7f 7a f5 	vpermt2ps -0x160(%rdx),%ymm26,%ymm7
  4079f7:	62 72 2d 20 7f 5a f9 	vpermt2ps -0xe0(%rdx),%ymm26,%ymm11
  4079fe:	62 e2 2d 20 7f 42 fd 	vpermt2ps -0x60(%rdx),%ymm26,%ymm16
  407a05:	62 32 3d 20 7f f9    	vpermt2ps %ymm17,%ymm24,%ymm15
  407a0b:	62 72 3d 20 7f 62 ff 	vpermt2ps -0x20(%rdx),%ymm24,%ymm12
  407a12:	62 b2 2d 20 7f c9    	vpermt2ps %ymm17,%ymm26,%ymm1
  407a18:	62 e1 7c 28 28 ca    	vmovaps %ymm2,%ymm17
  407a1e:	62 c2 3d 20 7f cc    	vpermt2ps %ymm12,%ymm24,%ymm17
  407a24:	62 d2 2d 20 7f d4    	vpermt2ps %ymm12,%ymm26,%ymm2
  407a2a:	c5 7c 28 e6          	vmovaps %ymm6,%ymm12
  407a2e:	62 52 3d 20 7f e1    	vpermt2ps %ymm9,%ymm24,%ymm12
  407a34:	62 d2 2d 20 7f f1    	vpermt2ps %ymm9,%ymm26,%ymm6
  407a3a:	c5 7c 28 52 c0       	vmovaps -0x40(%rdx),%ymm10
  407a3f:	c5 7c 28 cf          	vmovaps %ymm7,%ymm9
  407a43:	62 52 3d 20 7f ce    	vpermt2ps %ymm14,%ymm24,%ymm9
  407a49:	62 d2 2d 20 7f fe    	vpermt2ps %ymm14,%ymm26,%ymm7
  407a4f:	c4 41 7c 28 f3       	vmovaps %ymm11,%ymm14
  407a54:	62 72 2d 20 7f 52 ff 	vpermt2ps -0x20(%rdx),%ymm26,%ymm10
  407a5b:	62 52 3d 20 7f f0    	vpermt2ps %ymm8,%ymm24,%ymm14
  407a61:	62 52 2d 20 7f d8    	vpermt2ps %ymm8,%ymm26,%ymm11
  407a67:	62 c1 7c 28 28 e7    	vmovaps %ymm15,%ymm20
  407a6d:	62 31 7c 28 28 c0    	vmovaps %ymm16,%ymm8
  407a73:	62 52 3d 20 7f c2    	vpermt2ps %ymm10,%ymm24,%ymm8
  407a79:	62 c2 2d 20 7f c2    	vpermt2ps %ymm10,%ymm26,%ymm16
  407a7f:	62 a2 3d 20 7f e1    	vpermt2ps %ymm17,%ymm24,%ymm20
  407a85:	62 32 2d 20 7f f9    	vpermt2ps %ymm17,%ymm26,%ymm15
  407a8b:	c4 41 7c 28 d5       	vmovaps %ymm13,%ymm10
  407a90:	62 c1 7c 28 28 cc    	vmovaps %ymm12,%ymm17
  407a96:	62 c1 7c 28 28 de    	vmovaps %ymm14,%ymm19
  407a9c:	62 32 3d 20 7f d2    	vpermt2ps %ymm18,%ymm24,%ymm10
  407aa2:	62 32 2d 20 7f ea    	vpermt2ps %ymm18,%ymm26,%ymm13
  407aa8:	62 c2 3d 20 7f c9    	vpermt2ps %ymm9,%ymm24,%ymm17
  407aae:	62 c2 3d 20 7f d8    	vpermt2ps %ymm8,%ymm24,%ymm19
  407ab4:	62 52 2d 20 7f f0    	vpermt2ps %ymm8,%ymm26,%ymm14
  407aba:	62 e1 7c 28 28 d1    	vmovaps %ymm1,%ymm18
  407ac0:	c5 7c 28 c6          	vmovaps %ymm6,%ymm8
  407ac4:	62 f2 2d 20 7f f7    	vpermt2ps %ymm7,%ymm26,%ymm6
  407aca:	62 f2 2d 20 7f ca    	vpermt2ps %ymm2,%ymm26,%ymm1
  407ad0:	62 e2 3d 20 7f d2    	vpermt2ps %ymm2,%ymm24,%ymm18
  407ad6:	c5 fc 28 d6          	vmovaps %ymm6,%ymm2
  407ada:	62 b1 7c 28 28 f1    	vmovaps %ymm17,%ymm6
  407ae0:	62 b2 3d 20 7f f3    	vpermt2ps %ymm19,%ymm24,%ymm6
  407ae6:	62 52 2d 20 7f e1    	vpermt2ps %ymm9,%ymm26,%ymm12
  407aec:	62 b1 4c 28 c2 cf 04 	vcmpneqps %ymm23,%ymm6,%k1
  407af3:	c5 7c 28 cc          	vmovaps %ymm4,%ymm9
  407af7:	c5 7c 29 d6          	vmovaps %ymm10,%ymm6
  407afb:	62 72 3d 20 7f cd    	vpermt2ps %ymm5,%ymm24,%ymm9
  407b01:	62 b2 3d 20 7f f4    	vpermt2ps %ymm20,%ymm24,%ymm6
  407b07:	62 b1 4c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm6,%k0
  407b0e:	c5 7c 29 ce          	vmovaps %ymm9,%ymm6
  407b12:	62 f2 2d 20 7f e5    	vpermt2ps %ymm5,%ymm26,%ymm4
  407b18:	62 72 3d 20 7f c7    	vpermt2ps %ymm7,%ymm24,%ymm8
  407b1e:	c5 7c 29 dd          	vmovaps %ymm11,%ymm5
  407b22:	62 b2 3d 20 7f f2    	vpermt2ps %ymm18,%ymm24,%ymm6
  407b28:	62 b1 4c 28 c2 df 04 	vcmpneqps %ymm23,%ymm6,%k3
  407b2f:	62 b2 3d 20 7f e8    	vpermt2ps %ymm16,%ymm24,%ymm5
  407b35:	c5 7c 29 c6          	vmovaps %ymm8,%ymm6
  407b39:	62 f2 3d 20 7f f5    	vpermt2ps %ymm5,%ymm24,%ymm6
  407b3f:	62 b1 4c 28 c2 e7 04 	vcmpneqps %ymm23,%ymm6,%k4
  407b46:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  407b4a:	62 d2 3d 20 7f f7    	vpermt2ps %ymm15,%ymm24,%ymm6
  407b50:	62 b1 4c 28 c2 ef 04 	vcmpneqps %ymm23,%ymm6,%k5
  407b57:	c5 7c 29 e6          	vmovaps %ymm12,%ymm6
  407b5b:	62 d2 3d 20 7f f6    	vpermt2ps %ymm14,%ymm24,%ymm6
  407b61:	62 b1 4c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm6,%k6
  407b68:	c5 fc 28 f4          	vmovaps %ymm4,%ymm6
  407b6c:	62 f2 3d 20 7f f1    	vpermt2ps %ymm1,%ymm24,%ymm6
  407b72:	62 b1 4c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm6,%k7
  407b79:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  407b7d:	c5 f9 93 c3          	kmovb  %k3,%eax
  407b81:	62 32 2d 20 7f d8    	vpermt2ps %ymm16,%ymm26,%ymm11
  407b87:	c5 fc 28 f2          	vmovaps %ymm2,%ymm6
  407b8b:	c5 f9 93 f1          	kmovb  %k1,%esi
  407b8f:	09 c6                	or     %eax,%esi
  407b91:	62 d2 3d 20 7f f3    	vpermt2ps %ymm11,%ymm24,%ymm6
  407b97:	c5 f9 93 c4          	kmovb  %k4,%eax
  407b9b:	09 c6                	or     %eax,%esi
  407b9d:	62 b1 4c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm6,%k2
  407ba4:	c5 f9 93 c5          	kmovb  %k5,%eax
  407ba8:	62 32 2d 20 7f d4    	vpermt2ps %ymm20,%ymm26,%ymm10
  407bae:	09 c6                	or     %eax,%esi
  407bb0:	62 b1 7c 28 28 f9    	vmovaps %ymm17,%ymm7
  407bb6:	c5 f9 93 c6          	kmovb  %k6,%eax
  407bba:	62 b1 2c 28 c2 df 04 	vcmpneqps %ymm23,%ymm10,%k3
  407bc1:	09 c6                	or     %eax,%esi
  407bc3:	62 b2 2d 20 7f fb    	vpermt2ps %ymm19,%ymm26,%ymm7
  407bc9:	c5 f9 93 c7          	kmovb  %k7,%eax
  407bcd:	62 b1 44 28 c2 e7 04 	vcmpneqps %ymm23,%ymm7,%k4
  407bd4:	09 c6                	or     %eax,%esi
  407bd6:	62 32 2d 20 7f ca    	vpermt2ps %ymm18,%ymm26,%ymm9
  407bdc:	c5 f9 93 c2          	kmovb  %k2,%eax
  407be0:	62 72 2d 20 7f c5    	vpermt2ps %ymm5,%ymm26,%ymm8
  407be6:	09 c6                	or     %eax,%esi
  407be8:	62 b1 34 28 c2 ef 04 	vcmpneqps %ymm23,%ymm9,%k5
  407bef:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  407bf3:	c5 7c 29 e5          	vmovaps %ymm12,%ymm5
  407bf7:	c5 f9 93 c3          	kmovb  %k3,%eax
  407bfb:	62 b1 3c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm8,%k6
  407c02:	09 c6                	or     %eax,%esi
  407c04:	62 d2 2d 20 7f f7    	vpermt2ps %ymm15,%ymm26,%ymm6
  407c0a:	62 d2 2d 20 7f ee    	vpermt2ps %ymm14,%ymm26,%ymm5
  407c10:	62 b1 54 28 c2 c7 04 	vcmpneqps %ymm23,%ymm5,%k0
  407c17:	c5 f9 93 c4          	kmovb  %k4,%eax
  407c1b:	62 b1 4c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm6,%k7
  407c22:	09 c6                	or     %eax,%esi
  407c24:	62 f2 2d 20 7f e1    	vpermt2ps %ymm1,%ymm26,%ymm4
  407c2a:	c5 f9 93 c5          	kmovb  %k5,%eax
  407c2e:	09 c6                	or     %eax,%esi
  407c30:	62 b1 5c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm4,%k2
  407c37:	c5 f9 93 c6          	kmovb  %k6,%eax
  407c3b:	62 d2 2d 20 7f d3    	vpermt2ps %ymm11,%ymm26,%ymm2
  407c41:	09 c6                	or     %eax,%esi
  407c43:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  407c47:	c5 f9 93 c7          	kmovb  %k7,%eax
  407c4b:	09 c6                	or     %eax,%esi
  407c4d:	c5 f9 93 c0          	kmovb  %k0,%eax
  407c51:	62 b1 6c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm2,%k0
  407c58:	09 c6                	or     %eax,%esi
  407c5a:	c5 fb 58 db          	vaddsd %xmm3,%xmm0,%xmm3
  407c5e:	c5 f9 93 c2          	kmovb  %k2,%eax
  407c62:	09 c6                	or     %eax,%esi
  407c64:	c5 f9 92 ce          	kmovb  %esi,%k1
  407c68:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  407c6c:	62 f1 7d a9 6f 4c 24 	vmovdqa32 0x120(%rsp),%ymm1{%k1}{z}
  407c73:	09 
  407c74:	62 61 25 20 eb d9    	vpord  %ymm1,%ymm27,%ymm27
  407c7a:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  407c7f:	48 39 d1             	cmp    %rdx,%rcx
  407c82:	0f 85 db f3 ff ff    	jne    407063 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x443>
  407c88:	62 91 7d 08 6f cb    	vmovdqa32 %xmm27,%xmm1
  407c8e:	62 63 7d 28 39 d8 01 	vextracti32x4 $0x1,%ymm27,%xmm0
  407c95:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  407c99:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  407c9e:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  407ca2:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  407ca7:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  407cab:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  407caf:	41 09 c5             	or     %eax,%r13d
  407cb2:	48 8d 84 24 80 19 00 	lea    0x1980(%rsp),%rax
  407cb9:	00 
  407cba:	48 39 c1             	cmp    %rax,%rcx
  407cbd:	0f 85 8c f3 ff ff    	jne    40704f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x42f>
  407cc3:	c4 e2 78 49 c0       	tilerelease 
  407cc8:	c5 f8 77             	vzeroupper 
  407ccb:	e9 af ef ff ff       	jmpq   406c7f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  407cd0:	48 8b 83 b8 00 00 00 	mov    0xb8(%rbx),%rax
  407cd7:	80 38 00             	cmpb   $0x0,(%rax)
  407cda:	0f 84 d5 10 00 00    	je     408db5 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2195>
  407ce0:	c5 e1 ef db          	vpxor  %xmm3,%xmm3,%xmm3
  407ce4:	62 f2 7d 48 58 05 0a 	vpbroadcastd 0x8b0a(%rip),%zmm0        # 4107f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x238>
  407ceb:	8b 00 00 
  407cee:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  407cf3:	62 f1 fd 48 6f e3    	vmovdqa64 %zmm3,%zmm4
  407cf9:	62 f1 fd 48 6f eb    	vmovdqa64 %zmm3,%zmm5
  407cff:	62 f1 fd 48 6f f3    	vmovdqa64 %zmm3,%zmm6
  407d05:	62 f1 fd 48 6f cb    	vmovdqa64 %zmm3,%zmm1
  407d0b:	62 f1 fd 48 6f fb    	vmovdqa64 %zmm3,%zmm7
  407d11:	62 f1 fd 48 6f d3    	vmovdqa64 %zmm3,%zmm2
  407d17:	62 71 fd 48 6f c3    	vmovdqa64 %zmm3,%zmm8
  407d1d:	62 71 fd 48 6f cb    	vmovdqa64 %zmm3,%zmm9
  407d23:	62 71 fd 48 6f d3    	vmovdqa64 %zmm3,%zmm10
  407d29:	62 71 fd 48 6f db    	vmovdqa64 %zmm3,%zmm11
  407d2f:	62 71 fd 48 6f e3    	vmovdqa64 %zmm3,%zmm12
  407d35:	62 72 7d 48 50 e0    	vpdpbusd %zmm0,%zmm0,%zmm12
  407d3b:	62 72 7d 48 50 d8    	vpdpbusd %zmm0,%zmm0,%zmm11
  407d41:	62 72 7d 48 50 d0    	vpdpbusd %zmm0,%zmm0,%zmm10
  407d47:	62 72 7d 48 50 c8    	vpdpbusd %zmm0,%zmm0,%zmm9
  407d4d:	62 72 7d 48 50 c0    	vpdpbusd %zmm0,%zmm0,%zmm8
  407d53:	62 f2 7d 48 50 d0    	vpdpbusd %zmm0,%zmm0,%zmm2
  407d59:	62 f2 7d 48 50 f8    	vpdpbusd %zmm0,%zmm0,%zmm7
  407d5f:	62 f2 7d 48 50 c8    	vpdpbusd %zmm0,%zmm0,%zmm1
  407d65:	62 f2 7d 48 50 f0    	vpdpbusd %zmm0,%zmm0,%zmm6
  407d6b:	62 f2 7d 48 50 e8    	vpdpbusd %zmm0,%zmm0,%zmm5
  407d71:	62 f2 7d 48 50 e0    	vpdpbusd %zmm0,%zmm0,%zmm4
  407d77:	62 f2 7d 48 50 d8    	vpdpbusd %zmm0,%zmm0,%zmm3
  407d7d:	ff c8                	dec    %eax
  407d7f:	75 b4                	jne    407d35 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x1115>
  407d81:	62 53 fd 48 3b e5 01 	vextracti64x4 $0x1,%zmm12,%ymm13
  407d88:	c4 41 15 fe e4       	vpaddd %ymm12,%ymm13,%ymm12
  407d8d:	62 53 fd 28 39 e5 01 	vextracti64x2 $0x1,%ymm12,%xmm13
  407d94:	c4 41 19 fe e5       	vpaddd %xmm13,%xmm12,%xmm12
  407d99:	c4 41 79 70 ec 4e    	vpshufd $0x4e,%xmm12,%xmm13
  407d9f:	c4 41 11 fe e4       	vpaddd %xmm12,%xmm13,%xmm12
  407da4:	c4 63 79 16 e2 01    	vpextrd $0x1,%xmm12,%edx
  407daa:	c5 79 7e e0          	vmovd  %xmm12,%eax
  407dae:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  407db2:	01 d0                	add    %edx,%eax
  407db4:	c5 7b 2a e0          	vcvtsi2sd %eax,%xmm0,%xmm12
  407db8:	45 31 ed             	xor    %r13d,%r13d
  407dbb:	c5 1b 58 2d dd 89 00 	vaddsd 0x89dd(%rip),%xmm12,%xmm13        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  407dc2:	00 
  407dc3:	62 53 fd 48 3b dc 01 	vextracti64x4 $0x1,%zmm11,%ymm12
  407dca:	c4 41 1d fe db       	vpaddd %ymm11,%ymm12,%ymm11
  407dcf:	62 53 fd 28 39 dc 01 	vextracti64x2 $0x1,%ymm11,%xmm12
  407dd6:	c4 41 19 fe e3       	vpaddd %xmm11,%xmm12,%xmm12
  407ddb:	c4 41 79 70 dc 4e    	vpshufd $0x4e,%xmm12,%xmm11
  407de1:	c4 41 21 fe dc       	vpaddd %xmm12,%xmm11,%xmm11
  407de6:	c5 79 7e da          	vmovd  %xmm11,%edx
  407dea:	c4 63 79 16 d8 01    	vpextrd $0x1,%xmm11,%eax
  407df0:	01 d0                	add    %edx,%eax
  407df2:	c5 7b 2a d8          	vcvtsi2sd %eax,%xmm0,%xmm11
  407df6:	c4 41 23 58 ed       	vaddsd %xmm13,%xmm11,%xmm13
  407dfb:	62 53 fd 48 3b d3 01 	vextracti64x4 $0x1,%zmm10,%ymm11
  407e02:	c4 41 25 fe d2       	vpaddd %ymm10,%ymm11,%ymm10
  407e07:	62 53 fd 28 39 d3 01 	vextracti64x2 $0x1,%ymm10,%xmm11
  407e0e:	c4 41 21 fe da       	vpaddd %xmm10,%xmm11,%xmm11
  407e13:	c4 41 79 70 d3 4e    	vpshufd $0x4e,%xmm11,%xmm10
  407e19:	c4 41 29 fe d3       	vpaddd %xmm11,%xmm10,%xmm10
  407e1e:	c4 63 79 16 d2 01    	vpextrd $0x1,%xmm10,%edx
  407e24:	c5 79 7e d0          	vmovd  %xmm10,%eax
  407e28:	01 d0                	add    %edx,%eax
  407e2a:	c5 7b 2a d0          	vcvtsi2sd %eax,%xmm0,%xmm10
  407e2e:	c4 41 2b 58 dd       	vaddsd %xmm13,%xmm10,%xmm11
  407e33:	62 53 fd 48 3b ca 01 	vextracti64x4 $0x1,%zmm9,%ymm10
  407e3a:	c4 41 2d fe c9       	vpaddd %ymm9,%ymm10,%ymm9
  407e3f:	62 53 fd 28 39 ca 01 	vextracti64x2 $0x1,%ymm9,%xmm10
  407e46:	c4 41 29 fe d1       	vpaddd %xmm9,%xmm10,%xmm10
  407e4b:	c4 41 79 70 ca 4e    	vpshufd $0x4e,%xmm10,%xmm9
  407e51:	c4 41 31 fe ca       	vpaddd %xmm10,%xmm9,%xmm9
  407e56:	c5 79 7e ca          	vmovd  %xmm9,%edx
  407e5a:	c4 63 79 16 c8 01    	vpextrd $0x1,%xmm9,%eax
  407e60:	01 d0                	add    %edx,%eax
  407e62:	c5 7b 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm9
  407e66:	c4 41 33 58 db       	vaddsd %xmm11,%xmm9,%xmm11
  407e6b:	62 53 fd 48 3b c1 01 	vextracti64x4 $0x1,%zmm8,%ymm9
  407e72:	c4 41 35 fe c0       	vpaddd %ymm8,%ymm9,%ymm8
  407e77:	62 53 fd 28 39 c1 01 	vextracti64x2 $0x1,%ymm8,%xmm9
  407e7e:	c4 41 31 fe c8       	vpaddd %xmm8,%xmm9,%xmm9
  407e83:	c4 41 79 70 c1 4e    	vpshufd $0x4e,%xmm9,%xmm8
  407e89:	c4 41 39 fe c1       	vpaddd %xmm9,%xmm8,%xmm8
  407e8e:	62 d3 fd 48 3b d1 01 	vextracti64x4 $0x1,%zmm2,%ymm9
  407e95:	c4 c1 6d fe d1       	vpaddd %ymm9,%ymm2,%ymm2
  407e9a:	62 d3 fd 28 39 d1 01 	vextracti64x2 $0x1,%ymm2,%xmm9
  407ea1:	c5 79 7e c2          	vmovd  %xmm8,%edx
  407ea5:	c5 31 fe ca          	vpaddd %xmm2,%xmm9,%xmm9
  407ea9:	c4 63 79 16 c0 01    	vpextrd $0x1,%xmm8,%eax
  407eaf:	01 d0                	add    %edx,%eax
  407eb1:	c4 c1 79 70 d1 4e    	vpshufd $0x4e,%xmm9,%xmm2
  407eb7:	c4 c1 69 fe d1       	vpaddd %xmm9,%xmm2,%xmm2
  407ebc:	c5 7b 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm8
  407ec0:	c5 f9 7e d2          	vmovd  %xmm2,%edx
  407ec4:	c4 e3 79 16 d0 01    	vpextrd $0x1,%xmm2,%eax
  407eca:	01 d0                	add    %edx,%eax
  407ecc:	c5 fb 2a d0          	vcvtsi2sd %eax,%xmm0,%xmm2
  407ed0:	c4 41 3b 58 c3       	vaddsd %xmm11,%xmm8,%xmm8
  407ed5:	c4 41 6b 58 c0       	vaddsd %xmm8,%xmm2,%xmm8
  407eda:	62 f3 fd 48 3b fa 01 	vextracti64x4 $0x1,%zmm7,%ymm2
  407ee1:	c5 ed fe d7          	vpaddd %ymm7,%ymm2,%ymm2
  407ee5:	62 f3 fd 28 39 d7 01 	vextracti64x2 $0x1,%ymm2,%xmm7
  407eec:	c5 e9 fe d7          	vpaddd %xmm7,%xmm2,%xmm2
  407ef0:	c5 f9 70 fa 4e       	vpshufd $0x4e,%xmm2,%xmm7
  407ef5:	c5 c1 fe d2          	vpaddd %xmm2,%xmm7,%xmm2
  407ef9:	c5 f9 7e d2          	vmovd  %xmm2,%edx
  407efd:	c4 e3 79 16 d0 01    	vpextrd $0x1,%xmm2,%eax
  407f03:	01 d0                	add    %edx,%eax
  407f05:	c5 fb 2a d0          	vcvtsi2sd %eax,%xmm0,%xmm2
  407f09:	c4 41 6b 58 c0       	vaddsd %xmm8,%xmm2,%xmm8
  407f0e:	62 f3 fd 48 3b ca 01 	vextracti64x4 $0x1,%zmm1,%ymm2
  407f15:	c5 f5 fe ca          	vpaddd %ymm2,%ymm1,%ymm1
  407f19:	62 f3 fd 28 39 ca 01 	vextracti64x2 $0x1,%ymm1,%xmm2
  407f20:	c5 f1 fe ca          	vpaddd %xmm2,%xmm1,%xmm1
  407f24:	c5 f9 70 d1 4e       	vpshufd $0x4e,%xmm1,%xmm2
  407f29:	c5 e9 fe c9          	vpaddd %xmm1,%xmm2,%xmm1
  407f2d:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407f31:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407f37:	01 d0                	add    %edx,%eax
  407f39:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407f3d:	c4 c1 73 58 d0       	vaddsd %xmm8,%xmm1,%xmm2
  407f42:	62 f3 fd 48 3b f1 01 	vextracti64x4 $0x1,%zmm6,%ymm1
  407f49:	c5 f5 fe ce          	vpaddd %ymm6,%ymm1,%ymm1
  407f4d:	62 f3 fd 28 39 ce 01 	vextracti64x2 $0x1,%ymm1,%xmm6
  407f54:	c5 c9 fe f1          	vpaddd %xmm1,%xmm6,%xmm6
  407f58:	c5 f9 70 ce 4e       	vpshufd $0x4e,%xmm6,%xmm1
  407f5d:	c5 f1 fe ce          	vpaddd %xmm6,%xmm1,%xmm1
  407f61:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407f65:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407f6b:	01 d0                	add    %edx,%eax
  407f6d:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407f71:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  407f75:	62 f3 fd 48 3b e9 01 	vextracti64x4 $0x1,%zmm5,%ymm1
  407f7c:	c5 f5 fe cd          	vpaddd %ymm5,%ymm1,%ymm1
  407f80:	62 f3 fd 28 39 cd 01 	vextracti64x2 $0x1,%ymm1,%xmm5
  407f87:	c5 d1 fe e9          	vpaddd %xmm1,%xmm5,%xmm5
  407f8b:	c5 f9 70 cd 4e       	vpshufd $0x4e,%xmm5,%xmm1
  407f90:	c5 f1 fe cd          	vpaddd %xmm5,%xmm1,%xmm1
  407f94:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407f98:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407f9e:	01 d0                	add    %edx,%eax
  407fa0:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407fa4:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  407fa8:	62 f3 fd 48 3b e1 01 	vextracti64x4 $0x1,%zmm4,%ymm1
  407faf:	c5 f5 fe cc          	vpaddd %ymm4,%ymm1,%ymm1
  407fb3:	62 f3 fd 28 39 cc 01 	vextracti64x2 $0x1,%ymm1,%xmm4
  407fba:	c5 d9 fe e1          	vpaddd %xmm1,%xmm4,%xmm4
  407fbe:	c5 f9 70 cc 4e       	vpshufd $0x4e,%xmm4,%xmm1
  407fc3:	c5 f1 fe cc          	vpaddd %xmm4,%xmm1,%xmm1
  407fc7:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407fcb:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407fd1:	01 d0                	add    %edx,%eax
  407fd3:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407fd7:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  407fdb:	62 f3 fd 48 3b d9 01 	vextracti64x4 $0x1,%zmm3,%ymm1
  407fe2:	c5 f5 fe cb          	vpaddd %ymm3,%ymm1,%ymm1
  407fe6:	62 f3 fd 28 39 cb 01 	vextracti64x2 $0x1,%ymm1,%xmm3
  407fed:	c5 e1 fe d9          	vpaddd %xmm1,%xmm3,%xmm3
  407ff1:	c5 f9 70 cb 4e       	vpshufd $0x4e,%xmm3,%xmm1
  407ff6:	c5 f1 fe cb          	vpaddd %xmm3,%xmm1,%xmm1
  407ffa:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407ffe:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  408004:	01 d0                	add    %edx,%eax
  408006:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  40800a:	c5 fb 58 f2          	vaddsd %xmm2,%xmm0,%xmm6
  40800e:	c4 e1 f9 7e f3       	vmovq  %xmm6,%rbx
  408013:	c5 f8 77             	vzeroupper 
  408016:	e9 64 ec ff ff       	jmpq   406c7f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  40801b:	31 c0                	xor    %eax,%eax
  40801d:	ba 12 00 00 00       	mov    $0x12,%edx
  408022:	be 23 10 00 00       	mov    $0x1023,%esi
  408027:	bf 9e 00 00 00       	mov    $0x9e,%edi
  40802c:	e8 1f b0 ff ff       	callq  403050 <syscall@plt>
  408031:	48 85 c0             	test   %rax,%rax
  408034:	0f 94 c0             	sete   %al
  408037:	64 88 04 25 f8 ff ff 	mov    %al,%fs:0xfffffffffffffff8
  40803e:	ff 
  40803f:	64 c6 04 25 f0 ff ff 	movb   $0x1,%fs:0xfffffffffffffff0
  408046:	ff 01 
  408048:	e9 21 ec ff ff       	jmpq   406c6e <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x4e>
  40804d:	48 8d 9c 24 80 01 00 	lea    0x180(%rsp),%rbx
  408054:	00 
  408055:	48 89 df             	mov    %rbx,%rdi
  408058:	ba 00 04 00 00       	mov    $0x400,%edx
  40805d:	be 01 00 00 00       	mov    $0x1,%esi
  408062:	e8 29 b1 ff ff       	callq  403190 <memset@plt>
  408067:	48 8d 8c 24 80 05 00 	lea    0x580(%rsp),%rcx
  40806e:	00 
  40806f:	48 89 cf             	mov    %rcx,%rdi
  408072:	ba 00 04 00 00       	mov    $0x400,%edx
  408077:	be 01 00 00 00       	mov    $0x1,%esi
  40807c:	e8 0f b1 ff ff       	callq  403190 <memset@plt>
  408081:	48 89 c1             	mov    %rax,%rcx
  408084:	b8 40 00 00 00       	mov    $0x40,%eax
  408089:	c4 e2 7b 4b 24 03    	tileloadd (%rbx,%rax,1),%tmm4
  40808f:	c4 e2 7b 4b 2c 01    	tileloadd (%rcx,%rax,1),%tmm5
  408095:	ba 00 04 00 00       	mov    $0x400,%edx
  40809a:	c4 e2 7b 49 c0       	tilezero %tmm0
  40809f:	c4 e2 7b 49 c8       	tilezero %tmm1
  4080a4:	c4 e2 7b 49 d0       	tilezero %tmm2
  4080a9:	c4 e2 7b 49 d8       	tilezero %tmm3
  4080ae:	b8 00 01 00 00       	mov    $0x100,%eax
  4080b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4080b8:	c4 e2 53 5e c4       	tdpbssd %tmm5,%tmm4,%tmm0
  4080bd:	c4 e2 53 5e cc       	tdpbssd %tmm5,%tmm4,%tmm1
  4080c2:	c4 e2 53 5e d4       	tdpbssd %tmm5,%tmm4,%tmm2
  4080c7:	c4 e2 53 5e dc       	tdpbssd %tmm5,%tmm4,%tmm3
  4080cc:	ff c8                	dec    %eax
  4080ce:	75 e8                	jne    4080b8 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x1498>
  4080d0:	ff ca                	dec    %edx
  4080d2:	75 c6                	jne    40809a <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x147a>
  4080d4:	48 8d 8c 24 80 09 00 	lea    0x980(%rsp),%rcx
  4080db:	00 
  4080dc:	b8 40 00 00 00       	mov    $0x40,%eax
  4080e1:	c4 e2 7a 4b 04 01    	tilestored %tmm0,(%rcx,%rax,1)
  4080e7:	48 8d 94 24 80 0d 00 	lea    0xd80(%rsp),%rdx
  4080ee:	00 
  4080ef:	c4 e2 7a 4b 0c 02    	tilestored %tmm1,(%rdx,%rax,1)
  4080f5:	48 8d 94 24 80 11 00 	lea    0x1180(%rsp),%rdx
  4080fc:	00 
  4080fd:	c4 e2 7a 4b 14 02    	tilestored %tmm2,(%rdx,%rax,1)
  408103:	48 8d 94 24 80 15 00 	lea    0x1580(%rsp),%rdx
  40810a:	00 
  40810b:	c4 e2 7a 4b 1c 02    	tilestored %tmm3,(%rdx,%rax,1)
  408111:	62 61 7d 28 6f 05 65 	vmovdqa32 0x8665(%rip),%ymm24        # 410780 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  408118:	86 00 00 
  40811b:	62 61 7d 28 6f 0d 3b 	vmovdqa32 0x863b(%rip),%ymm25        # 410760 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1a0>
  408122:	86 00 00 
  408125:	c4 e2 7d 58 1d 52 86 	vpbroadcastd 0x8652(%rip),%ymm3        # 410780 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  40812c:	00 00 
  40812e:	48 8b 1d 6b 86 00 00 	mov    0x866b(%rip),%rbx        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  408135:	62 e2 7d 28 58 3d 81 	vpbroadcastd 0x8681(%rip),%ymm23        # 4107c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x200>
  40813c:	86 00 00 
  40813f:	62 01 7d 28 6f d0    	vmovdqa32 %ymm24,%ymm26
  408145:	45 31 ed             	xor    %r13d,%r13d
  408148:	c5 fd 7f 9c 24 20 01 	vmovdqa %ymm3,0x120(%rsp)
  40814f:	00 00 
  408151:	62 01 7d 28 6f c1    	vmovdqa32 %ymm25,%ymm24
  408157:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  40815e:	48 8d 91 00 fc ff ff 	lea    -0x400(%rcx),%rdx
  408165:	62 01 25 00 ef db    	vpxord %xmm27,%xmm27,%xmm27
  40816b:	c5 fd 6f 32          	vmovdqa (%rdx),%ymm6
  40816f:	c5 fd 6f 9a 20 01 00 	vmovdqa 0x120(%rdx),%ymm3
  408176:	00 
  408177:	62 b3 7d 28 39 f5 01 	vextracti32x4 $0x1,%ymm6,%xmm21
  40817e:	c5 fd 6f 72 40       	vmovdqa 0x40(%rdx),%ymm6
  408183:	c5 fd 6f 7a 20       	vmovdqa 0x20(%rdx),%ymm7
  408188:	c4 e3 7d 39 f1 01    	vextracti128 $0x1,%ymm6,%xmm1
  40818e:	c5 fd 6f 72 60       	vmovdqa 0x60(%rdx),%ymm6
  408193:	c4 e3 7d 39 dd 01    	vextracti128 $0x1,%ymm3,%xmm5
  408199:	c4 e3 7d 39 f0 01    	vextracti128 $0x1,%ymm6,%xmm0
  40819f:	c5 fd 6f b2 80 00 00 	vmovdqa 0x80(%rdx),%ymm6
  4081a6:	00 
  4081a7:	c5 fe e6 c0          	vcvtdq2pd %xmm0,%ymm0
  4081ab:	c4 c3 7d 39 f5 01    	vextracti128 $0x1,%ymm6,%xmm13
  4081b1:	c5 fd 6f b2 a0 00 00 	vmovdqa 0xa0(%rdx),%ymm6
  4081b8:	00 
  4081b9:	c5 fd 29 44 24 60    	vmovapd %ymm0,0x60(%rsp)
  4081bf:	c4 c3 7d 39 f4 01    	vextracti128 $0x1,%ymm6,%xmm12
  4081c5:	c5 fd 6f b2 c0 00 00 	vmovdqa 0xc0(%rdx),%ymm6
  4081cc:	00 
  4081cd:	c5 fd 6f 82 a0 01 00 	vmovdqa 0x1a0(%rdx),%ymm0
  4081d4:	00 
  4081d5:	c5 fd 6f 9a 40 01 00 	vmovdqa 0x140(%rdx),%ymm3
  4081dc:	00 
  4081dd:	c4 c3 7d 39 f1 01    	vextracti128 $0x1,%ymm6,%xmm9
  4081e3:	c5 fd 6f b2 e0 00 00 	vmovdqa 0xe0(%rdx),%ymm6
  4081ea:	00 
  4081eb:	62 93 7d 28 39 c7 01 	vextracti32x4 $0x1,%ymm0,%xmm31
  4081f2:	62 61 7e 28 e6 72 02 	vcvtdq2pd 0x20(%rdx),%ymm30
  4081f9:	62 61 7e 28 e6 6a 04 	vcvtdq2pd 0x40(%rdx),%ymm29
  408200:	c5 7e e6 b2 40 01 00 	vcvtdq2pd 0x140(%rdx),%ymm14
  408207:	00 
  408208:	62 e1 7e 28 e6 32    	vcvtdq2pd (%rdx),%ymm22
  40820e:	62 e1 7e 28 e6 5a 06 	vcvtdq2pd 0x60(%rdx),%ymm19
  408215:	62 e1 7e 28 e6 52 08 	vcvtdq2pd 0x80(%rdx),%ymm18
  40821c:	62 e1 7e 28 e6 4a 0a 	vcvtdq2pd 0xa0(%rdx),%ymm17
  408223:	62 e1 7e 28 e6 42 0c 	vcvtdq2pd 0xc0(%rdx),%ymm16
  40822a:	c5 7e e6 ba e0 00 00 	vcvtdq2pd 0xe0(%rdx),%ymm15
  408231:	00 
  408232:	62 61 7e 28 e6 62 10 	vcvtdq2pd 0x100(%rdx),%ymm28
  408239:	62 61 7e 28 e6 4a 12 	vcvtdq2pd 0x120(%rdx),%ymm25
  408240:	c5 7e e6 9a 60 01 00 	vcvtdq2pd 0x160(%rdx),%ymm11
  408247:	00 
  408248:	c5 7e e6 92 80 01 00 	vcvtdq2pd 0x180(%rdx),%ymm10
  40824f:	00 
  408250:	c5 7e e6 82 a0 01 00 	vcvtdq2pd 0x1a0(%rdx),%ymm8
  408257:	00 
  408258:	c5 fd 6f 92 80 01 00 	vmovdqa 0x180(%rdx),%ymm2
  40825f:	00 
  408260:	62 91 7e 28 e6 c7    	vcvtdq2pd %xmm31,%ymm0
  408266:	62 b3 7d 28 39 fc 01 	vextracti32x4 $0x1,%ymm7,%xmm20
  40826d:	62 61 7e 28 e6 7a 1c 	vcvtdq2pd 0x1c0(%rdx),%ymm31
  408274:	c4 e3 7d 39 f7 01    	vextracti128 $0x1,%ymm6,%xmm7
  40827a:	c4 e3 7d 39 dc 01    	vextracti128 $0x1,%ymm3,%xmm4
  408280:	c5 fd 6f b2 00 01 00 	vmovdqa 0x100(%rdx),%ymm6
  408287:	00 
  408288:	c5 fd 6f 9a 60 01 00 	vmovdqa 0x160(%rdx),%ymm3
  40828f:	00 
  408290:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  408297:	00 00 
  408299:	c5 fe e6 c9          	vcvtdq2pd %xmm1,%ymm1
  40829d:	c5 fd 29 4c 24 40    	vmovapd %ymm1,0x40(%rsp)
  4082a3:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xa0(%rsp)
  4082aa:	05 
  4082ab:	c5 fd 6f 82 c0 01 00 	vmovdqa 0x1c0(%rdx),%ymm0
  4082b2:	00 
  4082b3:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  4082ba:	07 
  4082bb:	62 93 7d 28 39 c7 01 	vextracti32x4 $0x1,%ymm0,%xmm31
  4082c2:	62 91 7e 28 e6 c7    	vcvtdq2pd %xmm31,%ymm0
  4082c8:	c5 fd 29 84 24 c0 00 	vmovapd %ymm0,0xc0(%rsp)
  4082cf:	00 00 
  4082d1:	c5 fd 6f 82 e0 01 00 	vmovdqa 0x1e0(%rdx),%ymm0
  4082d8:	00 
  4082d9:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  4082de:	62 61 7e 28 e6 7a 1e 	vcvtdq2pd 0x1e0(%rdx),%ymm31
  4082e5:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xe0(%rsp)
  4082ec:	07 
  4082ed:	62 93 7d 28 39 c7 01 	vextracti32x4 $0x1,%ymm0,%xmm31
  4082f4:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  4082f9:	62 91 7e 28 e6 c7    	vcvtdq2pd %xmm31,%ymm0
  4082ff:	c5 fd 29 84 24 00 01 	vmovapd %ymm0,0x100(%rsp)
  408306:	00 00 
  408308:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  40830d:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408311:	62 b1 cd 00 15 ce    	vunpckhpd %xmm22,%xmm22,%xmm1
  408317:	62 a3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm22,%xmm22
  40831e:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408322:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  408329:	07 
  40832a:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  40832f:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  408334:	62 61 fd 08 6e f8    	vmovq  %rax,%xmm31
  40833a:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  40833f:	62 91 f7 08 58 cf    	vaddsd %xmm31,%xmm1,%xmm1
  408345:	62 21 cd 00 15 fe    	vunpckhpd %xmm22,%xmm22,%xmm31
  40834b:	62 a1 7e 28 e6 ed    	vcvtdq2pd %xmm21,%ymm21
  408351:	62 f1 87 00 58 c9    	vaddsd %xmm1,%xmm31,%xmm1
  408357:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  40835e:	07 
  40835f:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  408364:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  408369:	62 e1 fd 08 6e f0    	vmovq  %rax,%xmm22
  40836f:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  408374:	62 b1 f7 08 58 ce    	vaddsd %xmm22,%xmm1,%xmm1
  40837a:	62 21 d5 00 15 fd    	vunpckhpd %xmm21,%xmm21,%xmm31
  408380:	62 a3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm21,%xmm21
  408387:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  40838e:	07 
  40838f:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  408394:	62 61 87 00 58 f9    	vaddsd %xmm1,%xmm31,%xmm31
  40839a:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  40839f:	62 61 fd 08 13 74 24 	vmovlpd %xmm30,0x38(%rsp)
  4083a6:	07 
  4083a7:	62 01 f7 08 58 ff    	vaddsd %xmm31,%xmm1,%xmm31
  4083ad:	62 a1 d5 00 15 f5    	vunpckhpd %xmm21,%xmm21,%xmm22
  4083b3:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  4083b8:	62 81 cf 00 58 f7    	vaddsd %xmm31,%xmm22,%xmm22
  4083be:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  4083c3:	62 01 8d 00 15 fe    	vunpckhpd %xmm30,%xmm30,%xmm31
  4083c9:	62 a1 f7 08 58 f6    	vaddsd %xmm22,%xmm1,%xmm22
  4083cf:	62 a1 7e 28 e6 e4    	vcvtdq2pd %xmm20,%ymm20
  4083d5:	c5 fd 28 4c 24 40    	vmovapd 0x40(%rsp),%ymm1
  4083db:	62 21 87 00 58 fe    	vaddsd %xmm22,%xmm31,%xmm31
  4083e1:	62 23 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm30,%xmm22
  4083e8:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  4083ef:	07 
  4083f0:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  4083f7:	07 
  4083f8:	62 a1 cd 00 15 f6    	vunpckhpd %xmm22,%xmm22,%xmm22
  4083fe:	62 01 8f 00 58 f7    	vaddsd %xmm31,%xmm30,%xmm30
  408404:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  40840b:	07 
  40840c:	62 61 ff 08 10 7c 24 	vmovsd 0x38(%rsp),%xmm31
  408413:	07 
  408414:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  40841a:	62 21 dd 00 15 f4    	vunpckhpd %xmm20,%xmm20,%xmm30
  408420:	62 a3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm20,%xmm20
  408427:	62 a1 87 00 58 f6    	vaddsd %xmm22,%xmm31,%xmm22
  40842d:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  408434:	07 
  408435:	62 a1 dd 00 15 ec    	vunpckhpd %xmm20,%xmm20,%xmm21
  40843b:	62 21 8f 00 58 f6    	vaddsd %xmm22,%xmm30,%xmm30
  408441:	62 e1 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm22
  408448:	07 
  408449:	62 61 fd 08 13 6c 24 	vmovlpd %xmm29,0x38(%rsp)
  408450:	07 
  408451:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  408457:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  40845e:	07 
  40845f:	c5 f9 13 4c 24 40    	vmovlpd %xmm1,0x40(%rsp)
  408465:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  40846b:	62 81 95 00 15 f5    	vunpckhpd %xmm29,%xmm29,%xmm22
  408471:	c4 41 7e e6 ed       	vcvtdq2pd %xmm13,%ymm13
  408476:	62 a1 8f 00 58 ed    	vaddsd %xmm21,%xmm30,%xmm21
  40847c:	c4 41 7e e6 e4       	vcvtdq2pd %xmm12,%ymm12
  408481:	c4 41 7e e6 c9       	vcvtdq2pd %xmm9,%ymm9
  408486:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  40848c:	62 23 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm29,%xmm21
  408493:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  40849a:	07 
  40849b:	62 61 ff 08 10 6c 24 	vmovsd 0x38(%rsp),%xmm29
  4084a2:	07 
  4084a3:	62 a1 d5 00 15 ed    	vunpckhpd %xmm21,%xmm21,%xmm21
  4084a9:	62 a1 97 00 58 f6    	vaddsd %xmm22,%xmm29,%xmm22
  4084af:	62 61 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm29
  4084b6:	08 
  4084b7:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x40(%rsp)
  4084be:	08 
  4084bf:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  4084c5:	62 e1 f5 08 15 f1    	vunpckhpd %xmm1,%xmm1,%xmm22
  4084cb:	62 f3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm1,%xmm1
  4084d2:	62 a1 97 00 58 ed    	vaddsd %xmm21,%xmm29,%xmm21
  4084d8:	62 e1 f5 08 15 e1    	vunpckhpd %xmm1,%xmm1,%xmm20
  4084de:	c5 fe e6 ff          	vcvtdq2pd %xmm7,%ymm7
  4084e2:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  4084e8:	c4 e3 7d 39 f6 01    	vextracti128 $0x1,%ymm6,%xmm6
  4084ee:	c5 fe e6 f6          	vcvtdq2pd %xmm6,%ymm6
  4084f2:	62 a1 f7 08 58 ee    	vaddsd %xmm22,%xmm1,%xmm21
  4084f8:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  4084ff:	08 
  408500:	c5 fe e6 ed          	vcvtdq2pd %xmm5,%ymm5
  408504:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  40850a:	62 a1 e5 00 15 eb    	vunpckhpd %xmm19,%xmm19,%xmm21
  408510:	62 a3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm19,%xmm19
  408517:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  40851d:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x40(%rsp)
  408524:	08 
  408525:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  40852c:	08 
  40852d:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  408533:	c5 fd 28 44 24 60    	vmovapd 0x60(%rsp),%ymm0
  408539:	62 a1 e5 00 15 e3    	vunpckhpd %xmm19,%xmm19,%xmm20
  40853f:	62 a1 cf 00 58 ed    	vaddsd %xmm21,%xmm22,%xmm21
  408545:	c5 f9 13 44 24 60    	vmovlpd %xmm0,0x60(%rsp)
  40854b:	62 e1 ff 08 10 74 24 	vmovsd 0x60(%rsp),%xmm22
  408552:	0c 
  408553:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  408559:	62 e1 fd 08 15 e8    	vunpckhpd %xmm0,%xmm0,%xmm21
  40855f:	62 f3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm0,%xmm0
  408566:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  40856c:	62 e1 fd 08 15 d8    	vunpckhpd %xmm0,%xmm0,%xmm19
  408572:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x60(%rsp)
  408579:	0c 
  40857a:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  408580:	c5 fe e6 e4          	vcvtdq2pd %xmm4,%ymm4
  408584:	c4 e3 7d 39 db 01    	vextracti128 $0x1,%ymm3,%xmm3
  40858a:	62 a1 ff 08 58 e5    	vaddsd %xmm21,%xmm0,%xmm20
  408590:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  408597:	0c 
  408598:	c5 fe e6 db          	vcvtdq2pd %xmm3,%ymm3
  40859c:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  4085a2:	62 a1 ed 00 15 e2    	vunpckhpd %xmm18,%xmm18,%xmm20
  4085a8:	62 a3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm18,%xmm18
  4085af:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  4085b5:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x60(%rsp)
  4085bc:	0c 
  4085bd:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  4085c4:	0c 
  4085c5:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  4085cb:	62 a1 ed 00 15 da    	vunpckhpd %xmm18,%xmm18,%xmm19
  4085d1:	c5 79 13 6c 24 60    	vmovlpd %xmm13,0x60(%rsp)
  4085d7:	62 a1 d7 00 58 e4    	vaddsd %xmm20,%xmm21,%xmm20
  4085dd:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  4085e4:	0c 
  4085e5:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x60(%rsp)
  4085ec:	0c 
  4085ed:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  4085f3:	62 c1 95 08 15 e5    	vunpckhpd %xmm13,%xmm13,%xmm20
  4085f9:	62 53 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm13,%xmm13
  408600:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  408606:	62 c1 95 08 15 d5    	vunpckhpd %xmm13,%xmm13,%xmm18
  40860c:	c4 e3 7d 39 d2 01    	vextracti128 $0x1,%ymm2,%xmm2
  408612:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  408618:	c5 fe e6 d2          	vcvtdq2pd %xmm2,%ymm2
  40861c:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  408623:	62 a1 97 08 58 dc    	vaddsd %xmm20,%xmm13,%xmm19
  408629:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  408630:	0c 
  408631:	62 43 fd 28 19 cd 01 	vextractf64x2 $0x1,%ymm25,%xmm13
  408638:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  40863e:	62 a1 f5 00 15 d9    	vunpckhpd %xmm17,%xmm17,%xmm19
  408644:	62 a3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm17,%xmm17
  40864b:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  408651:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x60(%rsp)
  408658:	0c 
  408659:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  408660:	0c 
  408661:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  408667:	62 a1 f5 00 15 d1    	vunpckhpd %xmm17,%xmm17,%xmm18
  40866d:	c5 79 13 64 24 60    	vmovlpd %xmm12,0x60(%rsp)
  408673:	62 a1 df 00 58 db    	vaddsd %xmm19,%xmm20,%xmm19
  408679:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  408680:	0c 
  408681:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x60(%rsp)
  408688:	0c 
  408689:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  40868f:	62 c1 9d 08 15 dc    	vunpckhpd %xmm12,%xmm12,%xmm19
  408695:	62 53 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm12,%xmm12
  40869c:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  4086a2:	62 c1 9d 08 15 cc    	vunpckhpd %xmm12,%xmm12,%xmm17
  4086a8:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  4086ae:	62 a1 9f 08 58 d3    	vaddsd %xmm19,%xmm12,%xmm18
  4086b4:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  4086bb:	0c 
  4086bc:	62 53 fd 28 19 f4 01 	vextractf64x2 $0x1,%ymm14,%xmm12
  4086c3:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  4086c9:	62 a1 fd 00 15 d0    	vunpckhpd %xmm16,%xmm16,%xmm18
  4086cf:	62 a3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm16,%xmm16
  4086d6:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  4086dc:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x60(%rsp)
  4086e3:	0c 
  4086e4:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  4086eb:	0c 
  4086ec:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  4086f2:	62 a1 fd 00 15 c8    	vunpckhpd %xmm16,%xmm16,%xmm17
  4086f8:	c5 79 13 4c 24 60    	vmovlpd %xmm9,0x60(%rsp)
  4086fe:	62 a1 e7 00 58 d2    	vaddsd %xmm18,%xmm19,%xmm18
  408704:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  40870b:	0c 
  40870c:	c5 79 13 7c 24 60    	vmovlpd %xmm15,0x60(%rsp)
  408712:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  408718:	62 c1 b5 08 15 d1    	vunpckhpd %xmm9,%xmm9,%xmm18
  40871e:	62 53 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm9,%xmm9
  408725:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  40872b:	62 c1 b5 08 15 c1    	vunpckhpd %xmm9,%xmm9,%xmm16
  408731:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  408737:	62 a1 b7 08 58 ca    	vaddsd %xmm18,%xmm9,%xmm17
  40873d:	62 e1 ff 08 10 54 24 	vmovsd 0x60(%rsp),%xmm18
  408744:	0c 
  408745:	c5 f9 13 7c 24 60    	vmovlpd %xmm7,0x60(%rsp)
  40874b:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  408751:	62 c1 85 08 15 cf    	vunpckhpd %xmm15,%xmm15,%xmm17
  408757:	62 53 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm15,%xmm15
  40875e:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  408764:	62 e1 ff 08 10 54 24 	vmovsd 0x60(%rsp),%xmm18
  40876b:	0c 
  40876c:	62 61 fd 08 13 64 24 	vmovlpd %xmm28,0x60(%rsp)
  408773:	0c 
  408774:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  40877a:	62 c1 85 08 15 c7    	vunpckhpd %xmm15,%xmm15,%xmm16
  408780:	62 a1 87 08 58 c9    	vaddsd %xmm17,%xmm15,%xmm17
  408786:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  40878c:	62 e1 c5 08 15 cf    	vunpckhpd %xmm7,%xmm7,%xmm17
  408792:	62 f3 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm7,%xmm7
  408799:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  40879f:	c5 41 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm15
  4087a3:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  4087a9:	62 a1 c7 08 58 c1    	vaddsd %xmm17,%xmm7,%xmm16
  4087af:	62 e1 ff 08 10 4c 24 	vmovsd 0x60(%rsp),%xmm17
  4087b6:	0c 
  4087b7:	c5 f9 13 74 24 60    	vmovlpd %xmm6,0x60(%rsp)
  4087bd:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  4087c3:	62 81 9d 00 15 c4    	vunpckhpd %xmm28,%xmm28,%xmm16
  4087c9:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  4087cf:	62 e1 ff 08 10 4c 24 	vmovsd 0x60(%rsp),%xmm17
  4087d6:	0c 
  4087d7:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4087dd:	62 43 fd 28 19 e7 01 	vextractf64x2 $0x1,%ymm28,%xmm15
  4087e4:	62 a1 87 08 58 c0    	vaddsd %xmm16,%xmm15,%xmm16
  4087ea:	c4 41 01 15 ff       	vunpckhpd %xmm15,%xmm15,%xmm15
  4087ef:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  4087f5:	62 e1 cd 08 15 c6    	vunpckhpd %xmm6,%xmm6,%xmm16
  4087fb:	62 f3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm6,%xmm6
  408802:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  408808:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  40880e:	62 31 cf 08 58 f8    	vaddsd %xmm16,%xmm6,%xmm15
  408814:	c5 c9 15 f6          	vunpckhpd %xmm6,%xmm6,%xmm6
  408818:	c4 c1 4b 58 f7       	vaddsd %xmm15,%xmm6,%xmm6
  40881d:	62 11 b5 00 15 f9    	vunpckhpd %xmm25,%xmm25,%xmm15
  408823:	62 f1 b7 00 58 f6    	vaddsd %xmm6,%xmm25,%xmm6
  408829:	c5 03 58 fe          	vaddsd %xmm6,%xmm15,%xmm15
  40882d:	c4 c1 13 58 f7       	vaddsd %xmm15,%xmm13,%xmm6
  408832:	c4 41 11 15 ed       	vunpckhpd %xmm13,%xmm13,%xmm13
  408837:	c5 13 58 ee          	vaddsd %xmm6,%xmm13,%xmm13
  40883b:	c5 d1 15 f5          	vunpckhpd %xmm5,%xmm5,%xmm6
  40883f:	c4 41 53 58 ed       	vaddsd %xmm13,%xmm5,%xmm13
  408844:	62 f3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm5,%xmm5
  40884b:	c4 c1 4b 58 f5       	vaddsd %xmm13,%xmm6,%xmm6
  408850:	c5 d3 58 f6          	vaddsd %xmm6,%xmm5,%xmm6
  408854:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  408858:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  40885c:	c4 c1 09 15 f6       	vunpckhpd %xmm14,%xmm14,%xmm6
  408861:	c5 8b 58 ed          	vaddsd %xmm5,%xmm14,%xmm5
  408865:	c5 cb 58 f5          	vaddsd %xmm5,%xmm6,%xmm6
  408869:	c5 9b 58 ee          	vaddsd %xmm6,%xmm12,%xmm5
  40886d:	c4 41 19 15 e4       	vunpckhpd %xmm12,%xmm12,%xmm12
  408872:	c5 1b 58 e5          	vaddsd %xmm5,%xmm12,%xmm12
  408876:	c5 d9 15 ec          	vunpckhpd %xmm4,%xmm4,%xmm5
  40887a:	c4 c1 5b 58 f4       	vaddsd %xmm12,%xmm4,%xmm6
  40887f:	62 f3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm4,%xmm4
  408886:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  40888a:	c5 fd 28 b4 24 80 00 	vmovapd 0x80(%rsp),%ymm6
  408891:	00 00 
  408893:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  408897:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  40889b:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  4088a2:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  4088a6:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  4088ab:	c5 a3 58 ed          	vaddsd %xmm5,%xmm11,%xmm5
  4088af:	62 53 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm11,%xmm11
  4088b6:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  4088ba:	c5 a3 58 ec          	vaddsd %xmm4,%xmm11,%xmm5
  4088be:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  4088c3:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  4088c7:	c5 e1 15 eb          	vunpckhpd %xmm3,%xmm3,%xmm5
  4088cb:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  4088cf:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  4088d3:	62 f3 fd 28 19 dc 01 	vextractf64x2 $0x1,%ymm3,%xmm4
  4088da:	c5 db 58 dd          	vaddsd %xmm5,%xmm4,%xmm3
  4088de:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  4088e2:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  4088e6:	c4 c1 29 15 da       	vunpckhpd %xmm10,%xmm10,%xmm3
  4088eb:	c5 ab 58 e4          	vaddsd %xmm4,%xmm10,%xmm4
  4088ef:	62 53 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm10,%xmm10
  4088f6:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  4088fa:	c5 ab 58 db          	vaddsd %xmm3,%xmm10,%xmm3
  4088fe:	c4 41 29 15 d2       	vunpckhpd %xmm10,%xmm10,%xmm10
  408903:	c5 2b 58 d3          	vaddsd %xmm3,%xmm10,%xmm10
  408907:	c5 e9 15 da          	vunpckhpd %xmm2,%xmm2,%xmm3
  40890b:	c4 c1 6b 58 e2       	vaddsd %xmm10,%xmm2,%xmm4
  408910:	62 f3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm2,%xmm2
  408917:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40891b:	c5 eb 58 db          	vaddsd %xmm3,%xmm2,%xmm3
  40891f:	c5 e9 15 d2          	vunpckhpd %xmm2,%xmm2,%xmm2
  408923:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  408927:	c4 c1 39 15 d8       	vunpckhpd %xmm8,%xmm8,%xmm3
  40892c:	c5 bb 58 d2          	vaddsd %xmm2,%xmm8,%xmm2
  408930:	62 53 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm8
  408937:	c4 41 39 15 c8       	vunpckhpd %xmm8,%xmm8,%xmm9
  40893c:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  408940:	c5 bb 58 d3          	vaddsd %xmm3,%xmm8,%xmm2
  408944:	c5 33 58 ca          	vaddsd %xmm2,%xmm9,%xmm9
  408948:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  40894c:	c4 c1 4b 58 d9       	vaddsd %xmm9,%xmm6,%xmm3
  408951:	c5 fd 28 b4 24 a0 00 	vmovapd 0xa0(%rsp),%ymm6
  408958:	00 00 
  40895a:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40895e:	62 d3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm8
  408965:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  408969:	c5 f1 15 c9          	vunpckhpd %xmm1,%xmm1,%xmm1
  40896d:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  408971:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  408975:	c5 cb 58 c9          	vaddsd %xmm1,%xmm6,%xmm1
  408979:	c5 fd 28 b4 24 c0 00 	vmovapd 0xc0(%rsp),%ymm6
  408980:	00 00 
  408982:	c5 fd 6f a2 00 fe ff 	vmovdqa -0x200(%rdx),%ymm4
  408989:	ff 
  40898a:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  40898e:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  408995:	62 e1 7d 28 6f 52 f2 	vmovdqa32 -0x1c0(%rdx),%ymm18
  40899c:	c5 bb 58 ca          	vaddsd %xmm2,%xmm8,%xmm1
  4089a0:	c4 41 39 15 c0       	vunpckhpd %xmm8,%xmm8,%xmm8
  4089a5:	c5 fd 6f aa 80 fe ff 	vmovdqa -0x180(%rdx),%ymm5
  4089ac:	ff 
  4089ad:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  4089b1:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  4089b5:	62 f2 3d 20 7e 62 f1 	vpermt2d -0x1e0(%rdx),%ymm24,%ymm4
  4089bc:	c4 c1 4b 58 d0       	vaddsd %xmm8,%xmm6,%xmm2
  4089c1:	c5 fd 28 b4 24 e0 00 	vmovapd 0xe0(%rsp),%ymm6
  4089c8:	00 00 
  4089ca:	c5 7d 6f ba c0 fe ff 	vmovdqa -0x140(%rdx),%ymm15
  4089d1:	ff 
  4089d2:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  4089d6:	62 f3 fd 28 19 f7 01 	vextractf64x2 $0x1,%ymm6,%xmm7
  4089dd:	62 e2 3d 20 7e 52 f3 	vpermt2d -0x1a0(%rdx),%ymm24,%ymm18
  4089e4:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  4089e8:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  4089ec:	62 f2 3d 20 7e 6a f5 	vpermt2d -0x160(%rdx),%ymm24,%ymm5
  4089f3:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4089f7:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  4089fb:	62 e1 7d 28 6f 4a fa 	vmovdqa32 -0xc0(%rdx),%ymm17
  408a02:	c5 cb 58 c0          	vaddsd %xmm0,%xmm6,%xmm0
  408a06:	c5 fd 28 b4 24 00 01 	vmovapd 0x100(%rsp),%ymm6
  408a0d:	00 00 
  408a0f:	c5 fd 6f 52 80       	vmovdqa -0x80(%rdx),%ymm2
  408a14:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408a18:	c5 7d 6f ec          	vmovdqa %ymm4,%ymm13
  408a1c:	62 72 3d 20 7e 7a f7 	vpermt2d -0x120(%rdx),%ymm24,%ymm15
  408a23:	c5 c3 58 c1          	vaddsd %xmm1,%xmm7,%xmm0
  408a27:	c5 c1 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm7
  408a2b:	62 32 3d 20 7e ea    	vpermt2d %ymm18,%ymm24,%ymm13
  408a31:	c5 c3 58 f8          	vaddsd %xmm0,%xmm7,%xmm7
  408a35:	c5 c9 15 c6          	vunpckhpd %xmm6,%xmm6,%xmm0
  408a39:	62 b2 2d 20 7e e2    	vpermt2d %ymm18,%ymm26,%ymm4
  408a3f:	c5 cb 58 cf          	vaddsd %xmm7,%xmm6,%xmm1
  408a43:	c5 7d 6f 8a 40 fe ff 	vmovdqa -0x1c0(%rdx),%ymm9
  408a4a:	ff 
  408a4b:	c5 fd 6f ba 80 fe ff 	vmovdqa -0x180(%rdx),%ymm7
  408a52:	ff 
  408a53:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  408a57:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  408a5e:	c5 7d 6f b2 c0 fe ff 	vmovdqa -0x140(%rdx),%ymm14
  408a65:	ff 
  408a66:	c5 fb 58 d9          	vaddsd %xmm1,%xmm0,%xmm3
  408a6a:	c5 fd 6f 8a 00 ff ff 	vmovdqa -0x100(%rdx),%ymm1
  408a71:	ff 
  408a72:	c5 fd 6f b2 00 fe ff 	vmovdqa -0x200(%rdx),%ymm6
  408a79:	ff 
  408a7a:	62 f2 3d 20 7e 4a f9 	vpermt2d -0xe0(%rdx),%ymm24,%ymm1
  408a81:	c5 7d 6f 9a 00 ff ff 	vmovdqa -0x100(%rdx),%ymm11
  408a88:	ff 
  408a89:	c5 7d 6f 82 40 ff ff 	vmovdqa -0xc0(%rdx),%ymm8
  408a90:	ff 
  408a91:	62 e1 7d 28 6f 42 fc 	vmovdqa32 -0x80(%rdx),%ymm16
  408a98:	62 e1 7d 28 6f d5    	vmovdqa32 %ymm5,%ymm18
  408a9e:	c5 7d 6f 62 c0       	vmovdqa -0x40(%rdx),%ymm12
  408aa3:	62 e2 3d 20 7e 4a fb 	vpermt2d -0xa0(%rdx),%ymm24,%ymm17
  408aaa:	62 c2 3d 20 7e d7    	vpermt2d %ymm15,%ymm24,%ymm18
  408ab0:	62 d2 2d 20 7e ef    	vpermt2d %ymm15,%ymm26,%ymm5
  408ab6:	62 f2 3d 20 7e 52 fd 	vpermt2d -0x60(%rdx),%ymm24,%ymm2
  408abd:	c5 7d 6f f9          	vmovdqa %ymm1,%ymm15
  408ac1:	62 72 2d 20 7e 4a f3 	vpermt2d -0x1a0(%rdx),%ymm26,%ymm9
  408ac8:	62 72 2d 20 7e 72 f7 	vpermt2d -0x120(%rdx),%ymm26,%ymm14
  408acf:	62 72 2d 20 7e 42 fb 	vpermt2d -0xa0(%rdx),%ymm26,%ymm8
  408ad6:	62 f2 2d 20 7e 72 f1 	vpermt2d -0x1e0(%rdx),%ymm26,%ymm6
  408add:	62 f2 2d 20 7e 7a f5 	vpermt2d -0x160(%rdx),%ymm26,%ymm7
  408ae4:	62 72 2d 20 7e 5a f9 	vpermt2d -0xe0(%rdx),%ymm26,%ymm11
  408aeb:	62 e2 2d 20 7e 42 fd 	vpermt2d -0x60(%rdx),%ymm26,%ymm16
  408af2:	62 32 3d 20 7e f9    	vpermt2d %ymm17,%ymm24,%ymm15
  408af8:	62 72 3d 20 7e 62 ff 	vpermt2d -0x20(%rdx),%ymm24,%ymm12
  408aff:	62 b2 2d 20 7e c9    	vpermt2d %ymm17,%ymm26,%ymm1
  408b05:	62 e1 7d 28 6f ca    	vmovdqa32 %ymm2,%ymm17
  408b0b:	62 c2 3d 20 7e cc    	vpermt2d %ymm12,%ymm24,%ymm17
  408b11:	62 d2 2d 20 7e d4    	vpermt2d %ymm12,%ymm26,%ymm2
  408b17:	c5 7d 6f e6          	vmovdqa %ymm6,%ymm12
  408b1b:	62 52 3d 20 7e e1    	vpermt2d %ymm9,%ymm24,%ymm12
  408b21:	62 d2 2d 20 7e f1    	vpermt2d %ymm9,%ymm26,%ymm6
  408b27:	c5 7d 6f 52 c0       	vmovdqa -0x40(%rdx),%ymm10
  408b2c:	c5 7d 6f cf          	vmovdqa %ymm7,%ymm9
  408b30:	62 52 3d 20 7e ce    	vpermt2d %ymm14,%ymm24,%ymm9
  408b36:	62 d2 2d 20 7e fe    	vpermt2d %ymm14,%ymm26,%ymm7
  408b3c:	c4 41 7d 6f f3       	vmovdqa %ymm11,%ymm14
  408b41:	62 72 2d 20 7e 52 ff 	vpermt2d -0x20(%rdx),%ymm26,%ymm10
  408b48:	62 52 3d 20 7e f0    	vpermt2d %ymm8,%ymm24,%ymm14
  408b4e:	62 52 2d 20 7e d8    	vpermt2d %ymm8,%ymm26,%ymm11
  408b54:	62 31 7d 28 6f c0    	vmovdqa32 %ymm16,%ymm8
  408b5a:	62 52 3d 20 7e c2    	vpermt2d %ymm10,%ymm24,%ymm8
  408b60:	62 c2 2d 20 7e c2    	vpermt2d %ymm10,%ymm26,%ymm16
  408b66:	62 c1 7d 28 6f de    	vmovdqa32 %ymm14,%ymm19
  408b6c:	c4 41 7d 6f d5       	vmovdqa %ymm13,%ymm10
  408b71:	62 32 3d 20 7e d2    	vpermt2d %ymm18,%ymm24,%ymm10
  408b77:	62 32 2d 20 7e ea    	vpermt2d %ymm18,%ymm26,%ymm13
  408b7d:	62 c2 3d 20 7e d8    	vpermt2d %ymm8,%ymm24,%ymm19
  408b83:	62 52 2d 20 7e f0    	vpermt2d %ymm8,%ymm26,%ymm14
  408b89:	62 c1 7d 28 6f e7    	vmovdqa32 %ymm15,%ymm20
  408b8f:	62 e1 7d 28 6f d1    	vmovdqa32 %ymm1,%ymm18
  408b95:	c5 7d 6f c6          	vmovdqa %ymm6,%ymm8
  408b99:	62 f2 2d 20 7e f7    	vpermt2d %ymm7,%ymm26,%ymm6
  408b9f:	62 f2 2d 20 7e ca    	vpermt2d %ymm2,%ymm26,%ymm1
  408ba5:	62 a2 3d 20 7e e1    	vpermt2d %ymm17,%ymm24,%ymm20
  408bab:	62 32 2d 20 7e f9    	vpermt2d %ymm17,%ymm26,%ymm15
  408bb1:	62 e2 3d 20 7e d2    	vpermt2d %ymm2,%ymm24,%ymm18
  408bb7:	62 c1 7d 28 6f cc    	vmovdqa32 %ymm12,%ymm17
  408bbd:	c5 fd 6f d6          	vmovdqa %ymm6,%ymm2
  408bc1:	c5 7d 7f d6          	vmovdqa %ymm10,%ymm6
  408bc5:	62 c2 3d 20 7e c9    	vpermt2d %ymm9,%ymm24,%ymm17
  408bcb:	62 b2 3d 20 7e f4    	vpermt2d %ymm20,%ymm24,%ymm6
  408bd1:	62 52 2d 20 7e e1    	vpermt2d %ymm9,%ymm26,%ymm12
  408bd7:	62 b3 4d 28 1f cf 04 	vpcmpneqd %ymm23,%ymm6,%k1
  408bde:	c5 7d 6f cc          	vmovdqa %ymm4,%ymm9
  408be2:	62 b1 7d 28 6f f1    	vmovdqa32 %ymm17,%ymm6
  408be8:	62 72 3d 20 7e cd    	vpermt2d %ymm5,%ymm24,%ymm9
  408bee:	62 b2 3d 20 7e f3    	vpermt2d %ymm19,%ymm24,%ymm6
  408bf4:	62 b3 4d 28 1f c7 04 	vpcmpneqd %ymm23,%ymm6,%k0
  408bfb:	c5 7d 7f ce          	vmovdqa %ymm9,%ymm6
  408bff:	62 f2 2d 20 7e e5    	vpermt2d %ymm5,%ymm26,%ymm4
  408c05:	62 72 3d 20 7e c7    	vpermt2d %ymm7,%ymm24,%ymm8
  408c0b:	c5 7d 7f dd          	vmovdqa %ymm11,%ymm5
  408c0f:	62 b2 3d 20 7e f2    	vpermt2d %ymm18,%ymm24,%ymm6
  408c15:	62 b3 4d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm6,%k2
  408c1c:	62 b2 3d 20 7e e8    	vpermt2d %ymm16,%ymm24,%ymm5
  408c22:	c5 7d 7f c6          	vmovdqa %ymm8,%ymm6
  408c26:	62 f2 3d 20 7e f5    	vpermt2d %ymm5,%ymm24,%ymm6
  408c2c:	62 b3 4d 28 1f df 04 	vpcmpneqd %ymm23,%ymm6,%k3
  408c33:	c5 7d 7f ee          	vmovdqa %ymm13,%ymm6
  408c37:	62 d2 3d 20 7e f7    	vpermt2d %ymm15,%ymm24,%ymm6
  408c3d:	62 b3 4d 28 1f e7 04 	vpcmpneqd %ymm23,%ymm6,%k4
  408c44:	c5 7d 7f e6          	vmovdqa %ymm12,%ymm6
  408c48:	62 d2 3d 20 7e f6    	vpermt2d %ymm14,%ymm24,%ymm6
  408c4e:	62 b3 4d 28 1f ef 04 	vpcmpneqd %ymm23,%ymm6,%k5
  408c55:	c5 fd 6f f4          	vmovdqa %ymm4,%ymm6
  408c59:	62 f2 3d 20 7e f1    	vpermt2d %ymm1,%ymm24,%ymm6
  408c5f:	62 b3 4d 28 1f f7 04 	vpcmpneqd %ymm23,%ymm6,%k6
  408c66:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  408c6a:	c5 f9 93 c2          	kmovb  %k2,%eax
  408c6e:	62 32 2d 20 7e d8    	vpermt2d %ymm16,%ymm26,%ymm11
  408c74:	c5 fd 6f f2          	vmovdqa %ymm2,%ymm6
  408c78:	c5 f9 93 f1          	kmovb  %k1,%esi
  408c7c:	09 c6                	or     %eax,%esi
  408c7e:	62 d2 3d 20 7e f3    	vpermt2d %ymm11,%ymm24,%ymm6
  408c84:	c5 f9 93 c3          	kmovb  %k3,%eax
  408c88:	09 c6                	or     %eax,%esi
  408c8a:	62 b3 4d 28 1f ff 04 	vpcmpneqd %ymm23,%ymm6,%k7
  408c91:	c5 f9 93 c4          	kmovb  %k4,%eax
  408c95:	62 32 2d 20 7e d4    	vpermt2d %ymm20,%ymm26,%ymm10
  408c9b:	09 c6                	or     %eax,%esi
  408c9d:	62 b1 7d 28 6f f9    	vmovdqa32 %ymm17,%ymm7
  408ca3:	c5 f9 93 c5          	kmovb  %k5,%eax
  408ca7:	62 b3 2d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm10,%k2
  408cae:	09 c6                	or     %eax,%esi
  408cb0:	62 b2 2d 20 7e fb    	vpermt2d %ymm19,%ymm26,%ymm7
  408cb6:	c5 f9 93 c6          	kmovb  %k6,%eax
  408cba:	62 b3 45 28 1f df 04 	vpcmpneqd %ymm23,%ymm7,%k3
  408cc1:	09 c6                	or     %eax,%esi
  408cc3:	62 32 2d 20 7e ca    	vpermt2d %ymm18,%ymm26,%ymm9
  408cc9:	c5 f9 93 c7          	kmovb  %k7,%eax
  408ccd:	62 72 2d 20 7e c5    	vpermt2d %ymm5,%ymm26,%ymm8
  408cd3:	09 c6                	or     %eax,%esi
  408cd5:	62 b3 35 28 1f e7 04 	vpcmpneqd %ymm23,%ymm9,%k4
  408cdc:	c5 7d 7f ee          	vmovdqa %ymm13,%ymm6
  408ce0:	c5 f9 93 c2          	kmovb  %k2,%eax
  408ce4:	62 b3 3d 28 1f ef 04 	vpcmpneqd %ymm23,%ymm8,%k5
  408ceb:	09 c6                	or     %eax,%esi
  408ced:	62 d2 2d 20 7e f7    	vpermt2d %ymm15,%ymm26,%ymm6
  408cf3:	c5 7d 7f e5          	vmovdqa %ymm12,%ymm5
  408cf7:	c5 f9 93 c3          	kmovb  %k3,%eax
  408cfb:	62 b3 4d 28 1f f7 04 	vpcmpneqd %ymm23,%ymm6,%k6
  408d02:	09 c6                	or     %eax,%esi
  408d04:	62 d2 2d 20 7e ee    	vpermt2d %ymm14,%ymm26,%ymm5
  408d0a:	62 f2 2d 20 7e e1    	vpermt2d %ymm1,%ymm26,%ymm4
  408d10:	c5 f9 93 c4          	kmovb  %k4,%eax
  408d14:	62 b3 55 28 1f ff 04 	vpcmpneqd %ymm23,%ymm5,%k7
  408d1b:	09 c6                	or     %eax,%esi
  408d1d:	62 b3 5d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm4,%k2
  408d24:	c5 f9 93 c5          	kmovb  %k5,%eax
  408d28:	62 d2 2d 20 7e d3    	vpermt2d %ymm11,%ymm26,%ymm2
  408d2e:	09 c6                	or     %eax,%esi
  408d30:	62 b3 6d 28 1f c7 04 	vpcmpneqd %ymm23,%ymm2,%k0
  408d37:	c5 f9 93 c6          	kmovb  %k6,%eax
  408d3b:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  408d3f:	09 c6                	or     %eax,%esi
  408d41:	c5 fb 58 db          	vaddsd %xmm3,%xmm0,%xmm3
  408d45:	c5 f9 93 c7          	kmovb  %k7,%eax
  408d49:	09 c6                	or     %eax,%esi
  408d4b:	c5 f9 93 c2          	kmovb  %k2,%eax
  408d4f:	09 c6                	or     %eax,%esi
  408d51:	c5 f9 92 ce          	kmovb  %esi,%k1
  408d55:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  408d59:	62 f1 7d a9 6f 4c 24 	vmovdqa32 0x120(%rsp),%ymm1{%k1}{z}
  408d60:	09 
  408d61:	62 61 25 20 eb d9    	vpord  %ymm1,%ymm27,%ymm27
  408d67:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  408d6c:	48 39 d1             	cmp    %rdx,%rcx
  408d6f:	0f 85 f6 f3 ff ff    	jne    40816b <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x154b>
  408d75:	62 91 7d 08 6f cb    	vmovdqa32 %xmm27,%xmm1
  408d7b:	62 63 7d 28 39 d8 01 	vextracti32x4 $0x1,%ymm27,%xmm0
  408d82:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  408d86:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  408d8b:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  408d8f:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  408d94:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  408d98:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  408d9c:	41 09 c5             	or     %eax,%r13d
  408d9f:	48 8d 84 24 80 19 00 	lea    0x1980(%rsp),%rax
  408da6:	00 
  408da7:	48 39 c1             	cmp    %rax,%rcx
  408daa:	0f 85 a7 f3 ff ff    	jne    408157 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x1537>
  408db0:	e9 0e ef ff ff       	jmpq   407cc3 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x10a3>
  408db5:	48 8b 83 c0 00 00 00 	mov    0xc0(%rbx),%rax
  408dbc:	80 38 00             	cmpb   $0x0,(%rax)
  408dbf:	0f 85 7d 03 00 00    	jne    409142 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2522>
  408dc5:	48 8b 83 c8 00 00 00 	mov    0xc8(%rbx),%rax
  408dcc:	80 38 00             	cmpb   $0x0,(%rax)
  408dcf:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  408dd4:	0f 84 be 10 00 00    	je     409e98 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x3278>
  408dda:	62 f2 7d 48 18 05 0c 	vbroadcastss 0x7a0c(%rip),%zmm0        # 4107f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x230>
  408de1:	7a 00 00 
  408de4:	62 f2 7d 48 18 15 da 	vbroadcastss 0x79da(%rip),%zmm2        # 4107c8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x208>
  408deb:	79 00 00 
  408dee:	62 f2 7d 48 18 1d d4 	vbroadcastss 0x79d4(%rip),%zmm3        # 4107cc <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x20c>
  408df5:	79 00 00 
  408df8:	62 f2 7d 48 18 25 ce 	vbroadcastss 0x79ce(%rip),%zmm4        # 4107d0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x210>
  408dff:	79 00 00 
  408e02:	62 f2 7d 48 18 2d c8 	vbroadcastss 0x79c8(%rip),%zmm5        # 4107d4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x214>
  408e09:	79 00 00 
  408e0c:	62 f2 7d 48 18 35 c2 	vbroadcastss 0x79c2(%rip),%zmm6        # 4107d8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x218>
  408e13:	79 00 00 
  408e16:	62 f2 7d 48 18 3d bc 	vbroadcastss 0x79bc(%rip),%zmm7        # 4107dc <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x21c>
  408e1d:	79 00 00 
  408e20:	62 72 7d 48 18 05 b6 	vbroadcastss 0x79b6(%rip),%zmm8        # 4107e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x220>
  408e27:	79 00 00 
  408e2a:	62 72 7d 48 18 0d b0 	vbroadcastss 0x79b0(%rip),%zmm9        # 4107e4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x224>
  408e31:	79 00 00 
  408e34:	62 72 7d 48 18 15 aa 	vbroadcastss 0x79aa(%rip),%zmm10        # 4107e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x228>
  408e3b:	79 00 00 
  408e3e:	62 72 7d 48 18 1d a4 	vbroadcastss 0x79a4(%rip),%zmm11        # 4107ec <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x22c>
  408e45:	79 00 00 
  408e48:	62 72 7d 48 18 25 4a 	vbroadcastss 0x784a(%rip),%zmm12        # 41069c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xdc>
  408e4f:	78 00 00 
  408e52:	62 f2 7d 48 18 0d 98 	vbroadcastss 0x7998(%rip),%zmm1        # 4107f4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x234>
  408e59:	79 00 00 
  408e5c:	62 71 7c 48 28 e8    	vmovaps %zmm0,%zmm13
  408e62:	62 72 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm13
  408e68:	62 72 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm12
  408e6e:	62 72 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm11
  408e74:	62 72 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm10
  408e7a:	62 72 75 48 98 c8    	vfmadd132ps %zmm0,%zmm1,%zmm9
  408e80:	62 72 75 48 98 c0    	vfmadd132ps %zmm0,%zmm1,%zmm8
  408e86:	62 f2 75 48 98 f8    	vfmadd132ps %zmm0,%zmm1,%zmm7
  408e8c:	62 f2 75 48 98 f0    	vfmadd132ps %zmm0,%zmm1,%zmm6
  408e92:	62 f2 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm5
  408e98:	62 f2 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm4
  408e9e:	62 f2 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm3
  408ea4:	62 f2 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm2
  408eaa:	ff c8                	dec    %eax
  408eac:	75 b4                	jne    408e62 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2242>
  408eae:	62 73 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm13,%ymm0
  408eb5:	c4 c1 7c 58 c5       	vaddps %ymm13,%ymm0,%ymm0
  408eba:	45 31 ed             	xor    %r13d,%r13d
  408ebd:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  408ec3:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  408ec7:	c4 e3 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm1
  408ecd:	c5 f0 58 c8          	vaddps %xmm0,%xmm1,%xmm1
  408ed1:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  408ed5:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  408eda:	c5 fa 58 c1          	vaddss %xmm1,%xmm0,%xmm0
  408ede:	62 73 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm12,%ymm1
  408ee5:	c4 c1 74 58 cc       	vaddps %ymm12,%ymm1,%ymm1
  408eea:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408eee:	c5 fb 58 05 aa 78 00 	vaddsd 0x78aa(%rip),%xmm0,%xmm0        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  408ef5:	00 
  408ef6:	c4 c3 7d 19 cc 01    	vextractf128 $0x1,%ymm1,%xmm12
  408efc:	c5 98 58 c9          	vaddps %xmm1,%xmm12,%xmm1
  408f00:	c4 63 79 04 e1 4e    	vpermilps $0x4e,%xmm1,%xmm12
  408f06:	c5 18 58 e1          	vaddps %xmm1,%xmm12,%xmm12
  408f0a:	c5 78 29 e1          	vmovaps %xmm12,%xmm1
  408f0e:	c4 41 18 c6 e4 55    	vshufps $0x55,%xmm12,%xmm12,%xmm12
  408f14:	c4 c1 72 58 cc       	vaddss %xmm12,%xmm1,%xmm1
  408f19:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408f1d:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408f21:	62 73 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm11,%ymm0
  408f28:	c4 c1 7c 58 c3       	vaddps %ymm11,%ymm0,%ymm0
  408f2d:	c4 c3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm11
  408f33:	c5 a0 58 c0          	vaddps %xmm0,%xmm11,%xmm0
  408f37:	c4 63 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm11
  408f3d:	c5 20 58 d8          	vaddps %xmm0,%xmm11,%xmm11
  408f41:	c5 78 29 d8          	vmovaps %xmm11,%xmm0
  408f45:	c4 41 20 c6 db 55    	vshufps $0x55,%xmm11,%xmm11,%xmm11
  408f4b:	c4 c1 7a 58 c3       	vaddss %xmm11,%xmm0,%xmm0
  408f50:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408f54:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408f58:	62 73 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm1
  408f5f:	c4 c1 74 58 ca       	vaddps %ymm10,%ymm1,%ymm1
  408f64:	c4 c3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm10
  408f6a:	c5 a8 58 c9          	vaddps %xmm1,%xmm10,%xmm1
  408f6e:	c4 63 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm10
  408f74:	c5 28 58 d1          	vaddps %xmm1,%xmm10,%xmm10
  408f78:	c5 78 29 d1          	vmovaps %xmm10,%xmm1
  408f7c:	c4 41 28 c6 d2 55    	vshufps $0x55,%xmm10,%xmm10,%xmm10
  408f82:	c4 c1 72 58 ca       	vaddss %xmm10,%xmm1,%xmm1
  408f87:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408f8b:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408f8f:	62 73 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm0
  408f96:	c4 c1 7c 58 c1       	vaddps %ymm9,%ymm0,%ymm0
  408f9b:	c4 c3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm9
  408fa1:	c5 b0 58 c0          	vaddps %xmm0,%xmm9,%xmm0
  408fa5:	c4 63 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm9
  408fab:	c5 30 58 c8          	vaddps %xmm0,%xmm9,%xmm9
  408faf:	c5 78 29 c8          	vmovaps %xmm9,%xmm0
  408fb3:	c4 41 30 c6 c9 55    	vshufps $0x55,%xmm9,%xmm9,%xmm9
  408fb9:	c4 c1 7a 58 c1       	vaddss %xmm9,%xmm0,%xmm0
  408fbe:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408fc2:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408fc6:	62 73 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm8,%ymm1
  408fcd:	c4 c1 74 58 c8       	vaddps %ymm8,%ymm1,%ymm1
  408fd2:	c4 c3 7d 19 c8 01    	vextractf128 $0x1,%ymm1,%xmm8
  408fd8:	c5 b8 58 c9          	vaddps %xmm1,%xmm8,%xmm1
  408fdc:	c4 63 79 04 c1 4e    	vpermilps $0x4e,%xmm1,%xmm8
  408fe2:	c5 38 58 c1          	vaddps %xmm1,%xmm8,%xmm8
  408fe6:	c5 78 29 c1          	vmovaps %xmm8,%xmm1
  408fea:	c4 41 38 c6 c0 55    	vshufps $0x55,%xmm8,%xmm8,%xmm8
  408ff0:	c4 c1 72 58 c8       	vaddss %xmm8,%xmm1,%xmm1
  408ff5:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408ff9:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408ffd:	62 f3 fd 48 1b f8 01 	vextractf64x4 $0x1,%zmm7,%ymm0
  409004:	c5 fc 58 c7          	vaddps %ymm7,%ymm0,%ymm0
  409008:	c4 e3 7d 19 c7 01    	vextractf128 $0x1,%ymm0,%xmm7
  40900e:	c5 c0 58 c0          	vaddps %xmm0,%xmm7,%xmm0
  409012:	c4 e3 79 04 f8 4e    	vpermilps $0x4e,%xmm0,%xmm7
  409018:	c5 c0 58 f8          	vaddps %xmm0,%xmm7,%xmm7
  40901c:	c5 f8 28 c7          	vmovaps %xmm7,%xmm0
  409020:	c5 c0 c6 ff 55       	vshufps $0x55,%xmm7,%xmm7,%xmm7
  409025:	c5 fa 58 c7          	vaddss %xmm7,%xmm0,%xmm0
  409029:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  40902d:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  409031:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  409038:	c5 f4 58 ce          	vaddps %ymm6,%ymm1,%ymm1
  40903c:	c4 e3 7d 19 ce 01    	vextractf128 $0x1,%ymm1,%xmm6
  409042:	c5 c8 58 c9          	vaddps %xmm1,%xmm6,%xmm1
  409046:	c4 e3 79 04 f1 4e    	vpermilps $0x4e,%xmm1,%xmm6
  40904c:	c5 c8 58 f1          	vaddps %xmm1,%xmm6,%xmm6
  409050:	c5 f8 28 ce          	vmovaps %xmm6,%xmm1
  409054:	c5 c8 c6 f6 55       	vshufps $0x55,%xmm6,%xmm6,%xmm6
  409059:	c5 f2 58 ce          	vaddss %xmm6,%xmm1,%xmm1
  40905d:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409061:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  409065:	62 f3 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm5,%ymm0
  40906c:	c5 fc 58 c5          	vaddps %ymm5,%ymm0,%ymm0
  409070:	c4 e3 7d 19 c5 01    	vextractf128 $0x1,%ymm0,%xmm5
  409076:	c5 d0 58 c0          	vaddps %xmm0,%xmm5,%xmm0
  40907a:	c4 e3 79 04 e8 4e    	vpermilps $0x4e,%xmm0,%xmm5
  409080:	c5 d0 58 e8          	vaddps %xmm0,%xmm5,%xmm5
  409084:	c5 f8 28 c5          	vmovaps %xmm5,%xmm0
  409088:	c5 d0 c6 ed 55       	vshufps $0x55,%xmm5,%xmm5,%xmm5
  40908d:	c5 fa 58 c5          	vaddss %xmm5,%xmm0,%xmm0
  409091:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409095:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  409099:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  4090a0:	c5 f4 58 cc          	vaddps %ymm4,%ymm1,%ymm1
  4090a4:	c4 e3 7d 19 cc 01    	vextractf128 $0x1,%ymm1,%xmm4
  4090aa:	c5 d8 58 c9          	vaddps %xmm1,%xmm4,%xmm1
  4090ae:	c4 e3 79 04 e1 4e    	vpermilps $0x4e,%xmm1,%xmm4
  4090b4:	c5 d8 58 e1          	vaddps %xmm1,%xmm4,%xmm4
  4090b8:	c5 f8 28 cc          	vmovaps %xmm4,%xmm1
  4090bc:	c5 d8 c6 e4 55       	vshufps $0x55,%xmm4,%xmm4,%xmm4
  4090c1:	c5 f2 58 cc          	vaddss %xmm4,%xmm1,%xmm1
  4090c5:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4090c9:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4090cd:	62 f3 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm3,%ymm0
  4090d4:	c5 fc 58 c3          	vaddps %ymm3,%ymm0,%ymm0
  4090d8:	c4 e3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm3
  4090de:	c5 e0 58 c0          	vaddps %xmm0,%xmm3,%xmm0
  4090e2:	c4 e3 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm3
  4090e8:	c5 e0 58 d8          	vaddps %xmm0,%xmm3,%xmm3
  4090ec:	c5 f8 28 c3          	vmovaps %xmm3,%xmm0
  4090f0:	c5 e0 c6 db 55       	vshufps $0x55,%xmm3,%xmm3,%xmm3
  4090f5:	c5 fa 58 c3          	vaddss %xmm3,%xmm0,%xmm0
  4090f9:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4090fd:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  409101:	62 f3 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm2,%ymm1
  409108:	c5 f4 58 ca          	vaddps %ymm2,%ymm1,%ymm1
  40910c:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  409112:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  409116:	c4 e3 79 04 ca 4e    	vpermilps $0x4e,%xmm2,%xmm1
  40911c:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
  409120:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
  409124:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  409129:	c5 ea 58 c9          	vaddss %xmm1,%xmm2,%xmm1
  40912d:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409131:	c5 f3 58 f8          	vaddsd %xmm0,%xmm1,%xmm7
  409135:	c4 e1 f9 7e fb       	vmovq  %xmm7,%rbx
  40913a:	c5 f8 77             	vzeroupper 
  40913d:	e9 3d db ff ff       	jmpq   406c7f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  409142:	48 8b 83 98 00 00 00 	mov    0x98(%rbx),%rax
  409149:	8b 00                	mov    (%rax),%eax
  40914b:	83 f8 06             	cmp    $0x6,%eax
  40914e:	0f 84 a1 01 00 00    	je     4092f5 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x26d5>
  409154:	83 f8 18             	cmp    $0x18,%eax
  409157:	0f 85 38 02 00 00    	jne    409395 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2775>
  40915d:	31 f6                	xor    %esi,%esi
  40915f:	ba 00 06 00 00       	mov    $0x600,%edx
  409164:	48 8d bc 24 80 09 00 	lea    0x980(%rsp),%rdi
  40916b:	00 
  40916c:	e8 1f a0 ff ff       	callq  403190 <memset@plt>
  409171:	62 f2 7d 48 79 0d 77 	vpbroadcastw 0x7677(%rip),%zmm1        # 4107f2 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  409178:	76 00 00 
  40917b:	31 f6                	xor    %esi,%esi
  40917d:	48 8d 8c 24 80 0f 00 	lea    0xf80(%rsp),%rcx
  409184:	00 
  409185:	48 8d 94 24 80 09 00 	lea    0x980(%rsp),%rdx
  40918c:	00 
  40918d:	48 89 d0             	mov    %rdx,%rax
  409190:	62 f1 7c 48 28 00    	vmovaps (%rax),%zmm0
  409196:	48 83 c0 40          	add    $0x40,%rax
  40919a:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  4091a0:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  4091a6:	62 f1 7c 48 29 40 ff 	vmovaps %zmm0,-0x40(%rax)
  4091ad:	48 39 c1             	cmp    %rax,%rcx
  4091b0:	75 de                	jne    409190 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2570>
  4091b2:	83 c6 02             	add    $0x2,%esi
  4091b5:	81 fe be c6 2d 00    	cmp    $0x2dc6be,%esi
  4091bb:	75 c8                	jne    409185 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2565>
  4091bd:	48 8d b4 24 80 09 00 	lea    0x980(%rsp),%rsi
  4091c4:	00 
  4091c5:	62 f1 7c 48 28 06    	vmovaps (%rsi),%zmm0
  4091cb:	b8 02 00 00 00       	mov    $0x2,%eax
  4091d0:	eb 0b                	jmp    4091dd <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x25bd>
  4091d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4091d8:	b8 01 00 00 00       	mov    $0x1,%eax
  4091dd:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  4091e3:	83 f8 01             	cmp    $0x1,%eax
  4091e6:	75 f0                	jne    4091d8 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x25b8>
  4091e8:	62 f1 7c 48 29 06    	vmovaps %zmm0,(%rsi)
  4091ee:	48 83 c6 40          	add    $0x40,%rsi
  4091f2:	48 39 f1             	cmp    %rsi,%rcx
  4091f5:	75 ce                	jne    4091c5 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x25a5>
  4091f7:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  4091fb:	c5 db 10 c4          	vmovsd %xmm4,%xmm4,%xmm0
  4091ff:	c5 fc 28 12          	vmovaps (%rdx),%ymm2
  409203:	62 f1 7c 48 28 32    	vmovaps (%rdx),%zmm6
  409209:	c5 ea 5a ca          	vcvtss2sd %xmm2,%xmm2,%xmm1
  40920d:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  409211:	c5 e8 c6 ca 55       	vshufps $0x55,%xmm2,%xmm2,%xmm1
  409216:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40921a:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40921e:	c5 e8 15 c2          	vunpckhps %xmm2,%xmm2,%xmm0
  409222:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409226:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  40922a:	c5 e8 c6 ca ff       	vshufps $0xff,%xmm2,%xmm2,%xmm1
  40922f:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409233:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  409237:	c4 e3 7d 19 d0 01    	vextractf128 $0x1,%ymm2,%xmm0
  40923d:	c5 fa 5a d0          	vcvtss2sd %xmm0,%xmm0,%xmm2
  409241:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
  409245:	c5 f8 c6 d0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm2
  40924a:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  40924e:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  409252:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  409256:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40925a:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40925e:	c5 f8 c6 c0 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm0
  409263:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409267:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  40926b:	62 f3 7d 48 1b f1 01 	vextractf32x8 $0x1,%zmm6,%ymm1
  409272:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  409276:	c5 e3 58 d8          	vaddsd %xmm0,%xmm3,%xmm3
  40927a:	c5 f0 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm0
  40927f:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409283:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0
  409287:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  40928b:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40928f:	c5 e3 58 d8          	vaddsd %xmm0,%xmm3,%xmm3
  409293:	c5 f0 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm0
  409298:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  40929c:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0
  4092a0:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4092a6:	c5 f2 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm2
  4092aa:	c5 eb 58 c0          	vaddsd %xmm0,%xmm2,%xmm0
  4092ae:	c5 f0 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm2
  4092b3:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  4092b7:	c5 eb 58 d0          	vaddsd %xmm0,%xmm2,%xmm2
  4092bb:	c5 f0 15 c1          	vunpckhps %xmm1,%xmm1,%xmm0
  4092bf:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4092c3:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
  4092c7:	48 83 c2 40          	add    $0x40,%rdx
  4092cb:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  4092d0:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4092d4:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  4092d8:	48 39 d1             	cmp    %rdx,%rcx
  4092db:	0f 85 1e ff ff ff    	jne    4091ff <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x25df>
  4092e1:	c5 fb 58 fc          	vaddsd %xmm4,%xmm0,%xmm7
  4092e5:	45 31 ed             	xor    %r13d,%r13d
  4092e8:	c4 e1 f9 7e fb       	vmovq  %xmm7,%rbx
  4092ed:	c5 f8 77             	vzeroupper 
  4092f0:	e9 8a d9 ff ff       	jmpq   406c7f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  4092f5:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  4092f9:	62 f2 7d 48 79 0d ef 	vpbroadcastw 0x74ef(%rip),%zmm1        # 4107f2 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  409300:	74 00 00 
  409303:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  409308:	62 f1 7c 48 28 d0    	vmovaps %zmm0,%zmm2
  40930e:	62 f1 7c 48 28 d8    	vmovaps %zmm0,%zmm3
  409314:	62 f1 7c 48 28 e0    	vmovaps %zmm0,%zmm4
  40931a:	62 f1 7c 48 28 e8    	vmovaps %zmm0,%zmm5
  409320:	62 f1 7c 48 28 f8    	vmovaps %zmm0,%zmm7
  409326:	62 f2 76 48 52 f9    	vdpbf16ps %zmm1,%zmm1,%zmm7
  40932c:	62 f2 76 48 52 e9    	vdpbf16ps %zmm1,%zmm1,%zmm5
  409332:	62 f2 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm4
  409338:	62 f2 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm3
  40933e:	62 f2 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm2
  409344:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  40934a:	ff c8                	dec    %eax
  40934c:	75 d8                	jne    409326 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2706>
  40934e:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  409352:	c5 42 5a cf          	vcvtss2sd %xmm7,%xmm7,%xmm9
  409356:	c5 33 58 ce          	vaddsd %xmm6,%xmm9,%xmm9
  40935a:	c5 40 c6 d7 55       	vshufps $0x55,%xmm7,%xmm7,%xmm10
  40935f:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409364:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  409369:	c5 40 15 cf          	vunpckhps %xmm7,%xmm7,%xmm9
  40936d:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409372:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409377:	c4 e3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm1
  40937d:	c5 40 c6 c7 ff       	vshufps $0xff,%xmm7,%xmm7,%xmm8
  409382:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409387:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  40938c:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  409390:	e9 4b 06 00 00       	jmpq   4099e0 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2dc0>
  409395:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  409399:	62 f2 7d 48 79 0d 4f 	vpbroadcastw 0x744f(%rip),%zmm1        # 4107f2 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  4093a0:	74 00 00 
  4093a3:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  4093a8:	62 f1 7c 48 28 d0    	vmovaps %zmm0,%zmm2
  4093ae:	62 f1 7c 48 28 d8    	vmovaps %zmm0,%zmm3
  4093b4:	62 f1 7c 48 28 e0    	vmovaps %zmm0,%zmm4
  4093ba:	62 f1 7c 48 28 e8    	vmovaps %zmm0,%zmm5
  4093c0:	62 f1 7c 48 28 f8    	vmovaps %zmm0,%zmm7
  4093c6:	62 71 7c 48 28 c0    	vmovaps %zmm0,%zmm8
  4093cc:	62 71 7c 48 28 c8    	vmovaps %zmm0,%zmm9
  4093d2:	62 71 7c 48 28 d0    	vmovaps %zmm0,%zmm10
  4093d8:	62 71 7c 48 28 d8    	vmovaps %zmm0,%zmm11
  4093de:	62 71 7c 48 28 e0    	vmovaps %zmm0,%zmm12
  4093e4:	62 71 7c 48 28 e8    	vmovaps %zmm0,%zmm13
  4093ea:	62 72 76 48 52 e9    	vdpbf16ps %zmm1,%zmm1,%zmm13
  4093f0:	62 72 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm12
  4093f6:	62 72 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm11
  4093fc:	62 72 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm10
  409402:	62 72 76 48 52 c9    	vdpbf16ps %zmm1,%zmm1,%zmm9
  409408:	62 72 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm8
  40940e:	62 f2 76 48 52 f9    	vdpbf16ps %zmm1,%zmm1,%zmm7
  409414:	62 f2 76 48 52 e9    	vdpbf16ps %zmm1,%zmm1,%zmm5
  40941a:	62 f2 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm4
  409420:	62 f2 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm3
  409426:	62 f2 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm2
  40942c:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  409432:	ff c8                	dec    %eax
  409434:	75 b4                	jne    4093ea <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x27ca>
  409436:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  40943a:	c4 41 12 5a fd       	vcvtss2sd %xmm13,%xmm13,%xmm15
  40943f:	c5 03 58 fe          	vaddsd %xmm6,%xmm15,%xmm15
  409443:	62 c1 14 08 c6 c5 55 	vshufps $0x55,%xmm13,%xmm13,%xmm16
  40944a:	62 a1 7e 00 5a c0    	vcvtss2sd %xmm16,%xmm16,%xmm16
  409450:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  409456:	c4 41 10 15 fd       	vunpckhps %xmm13,%xmm13,%xmm15
  40945b:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  409460:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  409466:	c4 41 10 c6 f5 ff    	vshufps $0xff,%xmm13,%xmm13,%xmm14
  40946c:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409471:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  409476:	c4 63 7d 19 e9 01    	vextractf128 $0x1,%ymm13,%xmm1
  40947c:	c5 72 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm15
  409480:	c4 41 03 58 fe       	vaddsd %xmm14,%xmm15,%xmm15
  409485:	c5 70 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm14
  40948a:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  40948f:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  409494:	c5 70 15 f9          	vunpckhps %xmm1,%xmm1,%xmm15
  409498:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  40949d:	c4 41 03 58 fe       	vaddsd %xmm14,%xmm15,%xmm15
  4094a2:	c5 70 c6 f1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm14
  4094a7:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  4094ac:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  4094b1:	62 73 7d 48 1b e9 01 	vextractf32x8 $0x1,%zmm13,%ymm1
  4094b8:	c5 72 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm15
  4094bc:	c4 41 03 58 f6       	vaddsd %xmm14,%xmm15,%xmm14
  4094c1:	c5 70 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm15
  4094c6:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  4094cb:	c4 41 03 58 fe       	vaddsd %xmm14,%xmm15,%xmm15
  4094d0:	c5 70 15 f1          	vunpckhps %xmm1,%xmm1,%xmm14
  4094d4:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  4094d9:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  4094de:	c5 70 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm13
  4094e3:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  4094e8:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  4094ed:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4094f3:	c5 72 5a f1          	vcvtss2sd %xmm1,%xmm1,%xmm14
  4094f7:	c4 41 0b 58 ed       	vaddsd %xmm13,%xmm14,%xmm13
  4094fc:	c5 70 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm14
  409501:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409506:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  40950b:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  40950f:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409514:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  409519:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40951e:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409522:	c4 c1 73 58 cd       	vaddsd %xmm13,%xmm1,%xmm1
  409527:	c4 41 1a 5a fc       	vcvtss2sd %xmm12,%xmm12,%xmm15
  40952c:	c4 41 18 c6 f4 ff    	vshufps $0xff,%xmm12,%xmm12,%xmm14
  409532:	c5 83 58 c9          	vaddsd %xmm1,%xmm15,%xmm1
  409536:	c4 41 18 c6 fc 55    	vshufps $0x55,%xmm12,%xmm12,%xmm15
  40953c:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  409541:	c5 03 58 f9          	vaddsd %xmm1,%xmm15,%xmm15
  409545:	c4 c1 18 15 cc       	vunpckhps %xmm12,%xmm12,%xmm1
  40954a:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40954e:	c4 c1 73 58 cf       	vaddsd %xmm15,%xmm1,%xmm1
  409553:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409558:	c5 0b 58 f1          	vaddsd %xmm1,%xmm14,%xmm14
  40955c:	c4 63 7d 19 e1 01    	vextractf128 $0x1,%ymm12,%xmm1
  409562:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  409566:	c4 41 13 58 f6       	vaddsd %xmm14,%xmm13,%xmm14
  40956b:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  409570:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409575:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  40957a:	c5 70 15 f1          	vunpckhps %xmm1,%xmm1,%xmm14
  40957e:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409583:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  409588:	c5 70 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm13
  40958d:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409592:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  409597:	62 73 7d 48 1b e1 01 	vextractf32x8 $0x1,%zmm12,%ymm1
  40959e:	c5 72 5a f1          	vcvtss2sd %xmm1,%xmm1,%xmm14
  4095a2:	c4 41 0b 58 ed       	vaddsd %xmm13,%xmm14,%xmm13
  4095a7:	c5 70 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm14
  4095ac:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  4095b1:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  4095b6:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  4095ba:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  4095bf:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  4095c4:	c5 70 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm12
  4095c9:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  4095ce:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  4095d3:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4095d9:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  4095dd:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  4095e2:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  4095e7:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  4095ec:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  4095f1:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  4095f5:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  4095fa:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  4095ff:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409604:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409608:	c4 c1 73 58 cc       	vaddsd %xmm12,%xmm1,%xmm1
  40960d:	c4 41 22 5a f3       	vcvtss2sd %xmm11,%xmm11,%xmm14
  409612:	c4 41 20 c6 eb ff    	vshufps $0xff,%xmm11,%xmm11,%xmm13
  409618:	c5 8b 58 c9          	vaddsd %xmm1,%xmm14,%xmm1
  40961c:	c4 41 20 c6 f3 55    	vshufps $0x55,%xmm11,%xmm11,%xmm14
  409622:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409627:	c5 0b 58 f1          	vaddsd %xmm1,%xmm14,%xmm14
  40962b:	c4 c1 20 15 cb       	vunpckhps %xmm11,%xmm11,%xmm1
  409630:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409634:	c4 c1 73 58 ce       	vaddsd %xmm14,%xmm1,%xmm1
  409639:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  40963e:	c5 13 58 e9          	vaddsd %xmm1,%xmm13,%xmm13
  409642:	c4 63 7d 19 d9 01    	vextractf128 $0x1,%ymm11,%xmm1
  409648:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  40964c:	c4 41 1b 58 ed       	vaddsd %xmm13,%xmm12,%xmm13
  409651:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  409656:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  40965b:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  409660:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  409664:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409669:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  40966e:	c5 70 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm12
  409673:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409678:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  40967d:	62 73 7d 48 1b d9 01 	vextractf32x8 $0x1,%zmm11,%ymm1
  409684:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  409688:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  40968d:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  409692:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409697:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  40969c:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  4096a0:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  4096a5:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  4096aa:	c5 70 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm11
  4096af:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  4096b4:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  4096b9:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4096bf:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  4096c3:	c4 41 1b 58 db       	vaddsd %xmm11,%xmm12,%xmm11
  4096c8:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  4096cd:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  4096d2:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  4096d7:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  4096db:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  4096e0:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  4096e5:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  4096ea:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4096ee:	c4 c1 73 58 cb       	vaddsd %xmm11,%xmm1,%xmm1
  4096f3:	c4 41 2a 5a ea       	vcvtss2sd %xmm10,%xmm10,%xmm13
  4096f8:	c4 41 28 c6 e2 ff    	vshufps $0xff,%xmm10,%xmm10,%xmm12
  4096fe:	c5 93 58 c9          	vaddsd %xmm1,%xmm13,%xmm1
  409702:	c4 41 28 c6 ea 55    	vshufps $0x55,%xmm10,%xmm10,%xmm13
  409708:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  40970d:	c5 13 58 e9          	vaddsd %xmm1,%xmm13,%xmm13
  409711:	c4 c1 28 15 ca       	vunpckhps %xmm10,%xmm10,%xmm1
  409716:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40971a:	c4 c1 73 58 cd       	vaddsd %xmm13,%xmm1,%xmm1
  40971f:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409724:	c5 1b 58 e1          	vaddsd %xmm1,%xmm12,%xmm12
  409728:	c4 63 7d 19 d1 01    	vextractf128 $0x1,%ymm10,%xmm1
  40972e:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  409732:	c4 41 23 58 e4       	vaddsd %xmm12,%xmm11,%xmm12
  409737:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  40973c:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409741:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409746:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  40974a:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  40974f:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  409754:	c5 70 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm11
  409759:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  40975e:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409763:	62 73 7d 48 1b d1 01 	vextractf32x8 $0x1,%zmm10,%ymm1
  40976a:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  40976e:	c4 41 1b 58 db       	vaddsd %xmm11,%xmm12,%xmm11
  409773:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  409778:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  40977d:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  409782:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  409786:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  40978b:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409790:	c5 70 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm10
  409795:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  40979a:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  40979f:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4097a5:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  4097a9:	c4 41 23 58 d2       	vaddsd %xmm10,%xmm11,%xmm10
  4097ae:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  4097b3:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  4097b8:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  4097bd:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  4097c1:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  4097c6:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  4097cb:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  4097d0:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4097d4:	c4 c1 73 58 ca       	vaddsd %xmm10,%xmm1,%xmm1
  4097d9:	c4 41 32 5a e1       	vcvtss2sd %xmm9,%xmm9,%xmm12
  4097de:	c4 41 30 c6 d9 ff    	vshufps $0xff,%xmm9,%xmm9,%xmm11
  4097e4:	c5 9b 58 c9          	vaddsd %xmm1,%xmm12,%xmm1
  4097e8:	c4 41 30 c6 e1 55    	vshufps $0x55,%xmm9,%xmm9,%xmm12
  4097ee:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  4097f3:	c5 1b 58 e1          	vaddsd %xmm1,%xmm12,%xmm12
  4097f7:	c4 c1 30 15 c9       	vunpckhps %xmm9,%xmm9,%xmm1
  4097fc:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409800:	c4 c1 73 58 cc       	vaddsd %xmm12,%xmm1,%xmm1
  409805:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  40980a:	c5 23 58 d9          	vaddsd %xmm1,%xmm11,%xmm11
  40980e:	c4 63 7d 19 c9 01    	vextractf128 $0x1,%ymm9,%xmm1
  409814:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  409818:	c4 41 2b 58 db       	vaddsd %xmm11,%xmm10,%xmm11
  40981d:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  409822:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409827:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  40982c:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  409830:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409835:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  40983a:	c5 70 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm10
  40983f:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409844:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409849:	62 73 7d 48 1b c9 01 	vextractf32x8 $0x1,%zmm9,%ymm1
  409850:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  409854:	c4 41 23 58 d2       	vaddsd %xmm10,%xmm11,%xmm10
  409859:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  40985e:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409863:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  409868:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  40986c:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409871:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409876:	c5 70 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm9
  40987b:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409880:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409885:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  40988b:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  40988f:	c4 41 2b 58 c9       	vaddsd %xmm9,%xmm10,%xmm9
  409894:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  409899:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  40989e:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  4098a3:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  4098a7:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  4098ac:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  4098b1:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  4098b6:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4098ba:	c4 c1 73 58 c9       	vaddsd %xmm9,%xmm1,%xmm1
  4098bf:	c4 41 3a 5a d8       	vcvtss2sd %xmm8,%xmm8,%xmm11
  4098c4:	c4 41 38 c6 d0 ff    	vshufps $0xff,%xmm8,%xmm8,%xmm10
  4098ca:	c5 a3 58 c9          	vaddsd %xmm1,%xmm11,%xmm1
  4098ce:	c4 41 38 c6 d8 55    	vshufps $0x55,%xmm8,%xmm8,%xmm11
  4098d4:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  4098d9:	c5 23 58 d9          	vaddsd %xmm1,%xmm11,%xmm11
  4098dd:	c4 c1 38 15 c8       	vunpckhps %xmm8,%xmm8,%xmm1
  4098e2:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4098e6:	c4 c1 73 58 cb       	vaddsd %xmm11,%xmm1,%xmm1
  4098eb:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  4098f0:	c5 2b 58 d1          	vaddsd %xmm1,%xmm10,%xmm10
  4098f4:	c4 63 7d 19 c1 01    	vextractf128 $0x1,%ymm8,%xmm1
  4098fa:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  4098fe:	c4 41 33 58 d2       	vaddsd %xmm10,%xmm9,%xmm10
  409903:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  409908:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  40990d:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409912:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  409916:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  40991b:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  409920:	c5 70 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm9
  409925:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  40992a:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  40992f:	62 73 7d 48 1b c1 01 	vextractf32x8 $0x1,%zmm8,%ymm1
  409936:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  40993a:	c4 41 2b 58 c9       	vaddsd %xmm9,%xmm10,%xmm9
  40993f:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  409944:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409949:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  40994e:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  409952:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409957:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  40995c:	c5 70 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm8
  409961:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409966:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  40996b:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409971:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  409975:	c4 41 33 58 c0       	vaddsd %xmm8,%xmm9,%xmm8
  40997a:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  40997f:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409984:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409989:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  40998d:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409992:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409997:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40999c:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4099a0:	c4 c1 73 58 c8       	vaddsd %xmm8,%xmm1,%xmm1
  4099a5:	c5 42 5a d7          	vcvtss2sd %xmm7,%xmm7,%xmm10
  4099a9:	c5 40 c6 cf ff       	vshufps $0xff,%xmm7,%xmm7,%xmm9
  4099ae:	c5 ab 58 c9          	vaddsd %xmm1,%xmm10,%xmm1
  4099b2:	c5 40 c6 d7 55       	vshufps $0x55,%xmm7,%xmm7,%xmm10
  4099b7:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  4099bc:	c5 2b 58 d1          	vaddsd %xmm1,%xmm10,%xmm10
  4099c0:	c5 c0 15 cf          	vunpckhps %xmm7,%xmm7,%xmm1
  4099c4:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4099c8:	c4 c1 73 58 ca       	vaddsd %xmm10,%xmm1,%xmm1
  4099cd:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  4099d2:	c5 33 58 c9          	vaddsd %xmm1,%xmm9,%xmm9
  4099d6:	c4 e3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm1
  4099dc:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  4099e0:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  4099e5:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  4099ea:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  4099ef:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  4099f4:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  4099f8:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  4099fd:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409a02:	c5 70 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm8
  409a07:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409a0c:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409a11:	62 f3 7d 48 1b f9 01 	vextractf32x8 $0x1,%zmm7,%ymm1
  409a18:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  409a1c:	c4 41 33 58 c0       	vaddsd %xmm8,%xmm9,%xmm8
  409a21:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  409a26:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409a2b:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409a30:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  409a34:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409a39:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409a3e:	c5 f0 c6 f9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm7
  409a43:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409a47:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409a4c:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409a52:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  409a56:	c5 bb 58 ff          	vaddsd %xmm7,%xmm8,%xmm7
  409a5a:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  409a5f:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409a64:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  409a68:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  409a6c:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409a70:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409a75:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409a7a:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409a7e:	c5 f3 58 cf          	vaddsd %xmm7,%xmm1,%xmm1
  409a82:	c5 52 5a cd          	vcvtss2sd %xmm5,%xmm5,%xmm9
  409a86:	c5 50 c6 c5 ff       	vshufps $0xff,%xmm5,%xmm5,%xmm8
  409a8b:	c5 b3 58 c9          	vaddsd %xmm1,%xmm9,%xmm1
  409a8f:	c5 50 c6 cd 55       	vshufps $0x55,%xmm5,%xmm5,%xmm9
  409a94:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409a99:	c5 33 58 c9          	vaddsd %xmm1,%xmm9,%xmm9
  409a9d:	c5 d0 15 cd          	vunpckhps %xmm5,%xmm5,%xmm1
  409aa1:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409aa5:	c4 c1 73 58 c9       	vaddsd %xmm9,%xmm1,%xmm1
  409aaa:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409aaf:	45 31 ed             	xor    %r13d,%r13d
  409ab2:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  409ab6:	c4 e3 7d 19 e9 01    	vextractf128 $0x1,%ymm5,%xmm1
  409abc:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  409ac0:	c4 41 43 58 c0       	vaddsd %xmm8,%xmm7,%xmm8
  409ac5:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  409aca:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409ace:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409ad3:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  409ad7:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409adc:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  409ae0:	c5 f0 c6 f9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm7
  409ae5:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409ae9:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409aee:	62 f3 7d 48 1b e9 01 	vextractf32x8 $0x1,%zmm5,%ymm1
  409af5:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  409af9:	c5 bb 58 ff          	vaddsd %xmm7,%xmm8,%xmm7
  409afd:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  409b02:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409b07:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  409b0b:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  409b0f:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409b13:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409b18:	c5 f0 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm5
  409b1d:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409b21:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  409b25:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409b2b:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  409b2f:	c5 c3 58 ed          	vaddsd %xmm5,%xmm7,%xmm5
  409b33:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  409b38:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409b3c:	c5 c3 58 fd          	vaddsd %xmm5,%xmm7,%xmm7
  409b40:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  409b44:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409b48:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  409b4c:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409b51:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409b55:	c5 f3 58 cd          	vaddsd %xmm5,%xmm1,%xmm1
  409b59:	c5 5a 5a c4          	vcvtss2sd %xmm4,%xmm4,%xmm8
  409b5d:	c5 d8 c6 fc ff       	vshufps $0xff,%xmm4,%xmm4,%xmm7
  409b62:	c5 bb 58 c9          	vaddsd %xmm1,%xmm8,%xmm1
  409b66:	c5 58 c6 c4 55       	vshufps $0x55,%xmm4,%xmm4,%xmm8
  409b6b:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409b70:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  409b74:	c5 d8 15 cc          	vunpckhps %xmm4,%xmm4,%xmm1
  409b78:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409b7c:	c4 c1 73 58 c8       	vaddsd %xmm8,%xmm1,%xmm1
  409b81:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409b85:	c5 c3 58 f9          	vaddsd %xmm1,%xmm7,%xmm7
  409b89:	c4 e3 7d 19 e1 01    	vextractf128 $0x1,%ymm4,%xmm1
  409b8f:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  409b93:	c5 d3 58 ff          	vaddsd %xmm7,%xmm5,%xmm7
  409b97:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  409b9c:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409ba0:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  409ba4:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  409ba8:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409bac:	c5 c3 58 fd          	vaddsd %xmm5,%xmm7,%xmm7
  409bb0:	c5 f0 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm5
  409bb5:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409bb9:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  409bbd:	62 f3 7d 48 1b e1 01 	vextractf32x8 $0x1,%zmm4,%ymm1
  409bc4:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  409bc8:	c5 c3 58 ed          	vaddsd %xmm5,%xmm7,%xmm5
  409bcc:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  409bd1:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409bd5:	c5 c3 58 fd          	vaddsd %xmm5,%xmm7,%xmm7
  409bd9:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  409bdd:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409be1:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  409be5:	c5 f0 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm4
  409bea:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409bee:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  409bf2:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409bf8:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  409bfc:	c5 d3 58 e4          	vaddsd %xmm4,%xmm5,%xmm4
  409c00:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  409c05:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409c09:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  409c0d:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  409c11:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409c15:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  409c19:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409c1e:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409c22:	c5 f3 58 cc          	vaddsd %xmm4,%xmm1,%xmm1
  409c26:	c5 e2 5a fb          	vcvtss2sd %xmm3,%xmm3,%xmm7
  409c2a:	c5 e0 c6 eb ff       	vshufps $0xff,%xmm3,%xmm3,%xmm5
  409c2f:	c5 c3 58 c9          	vaddsd %xmm1,%xmm7,%xmm1
  409c33:	c5 e0 c6 fb 55       	vshufps $0x55,%xmm3,%xmm3,%xmm7
  409c38:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409c3c:	c5 c3 58 f9          	vaddsd %xmm1,%xmm7,%xmm7
  409c40:	c5 e0 15 cb          	vunpckhps %xmm3,%xmm3,%xmm1
  409c44:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409c48:	c5 f3 58 cf          	vaddsd %xmm7,%xmm1,%xmm1
  409c4c:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409c50:	c5 d3 58 e9          	vaddsd %xmm1,%xmm5,%xmm5
  409c54:	c4 e3 7d 19 d9 01    	vextractf128 $0x1,%ymm3,%xmm1
  409c5a:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  409c5e:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  409c62:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  409c67:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409c6b:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  409c6f:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  409c73:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409c77:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  409c7b:	c5 f0 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm4
  409c80:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409c84:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  409c88:	62 f3 7d 48 1b d9 01 	vextractf32x8 $0x1,%zmm3,%ymm1
  409c8f:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  409c93:	c5 d3 58 e4          	vaddsd %xmm4,%xmm5,%xmm4
  409c97:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  409c9c:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409ca0:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  409ca4:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  409ca8:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409cac:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  409cb0:	c5 f0 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm3
  409cb5:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409cb9:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  409cbd:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409cc3:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  409cc7:	c5 db 58 db          	vaddsd %xmm3,%xmm4,%xmm3
  409ccb:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  409cd0:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409cd4:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  409cd8:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  409cdc:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409ce0:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  409ce4:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409ce9:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409ced:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  409cf1:	c5 ea 5a ea          	vcvtss2sd %xmm2,%xmm2,%xmm5
  409cf5:	c5 e8 c6 e2 ff       	vshufps $0xff,%xmm2,%xmm2,%xmm4
  409cfa:	c5 d3 58 c9          	vaddsd %xmm1,%xmm5,%xmm1
  409cfe:	c5 e8 c6 ea 55       	vshufps $0x55,%xmm2,%xmm2,%xmm5
  409d03:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409d07:	c5 d3 58 e9          	vaddsd %xmm1,%xmm5,%xmm5
  409d0b:	c5 e8 15 ca          	vunpckhps %xmm2,%xmm2,%xmm1
  409d0f:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409d13:	c5 f3 58 cd          	vaddsd %xmm5,%xmm1,%xmm1
  409d17:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409d1b:	c5 db 58 e1          	vaddsd %xmm1,%xmm4,%xmm4
  409d1f:	c4 e3 7d 19 d1 01    	vextractf128 $0x1,%ymm2,%xmm1
  409d25:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  409d29:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  409d2d:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  409d32:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409d36:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  409d3a:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  409d3e:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409d42:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  409d46:	c5 f0 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm3
  409d4b:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409d4f:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  409d53:	62 f3 7d 48 1b d1 01 	vextractf32x8 $0x1,%zmm2,%ymm1
  409d5a:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  409d5e:	c5 db 58 db          	vaddsd %xmm3,%xmm4,%xmm3
  409d62:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  409d67:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409d6b:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  409d6f:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  409d73:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409d77:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  409d7b:	c5 f0 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm2
  409d80:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  409d84:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  409d88:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409d8e:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  409d92:	c5 e3 58 d2          	vaddsd %xmm2,%xmm3,%xmm2
  409d96:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  409d9b:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409d9f:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  409da3:	c5 f0 15 d1          	vunpckhps %xmm1,%xmm1,%xmm2
  409da7:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  409dab:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  409daf:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409db4:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409db8:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  409dbc:	c5 fa 5a e0          	vcvtss2sd %xmm0,%xmm0,%xmm4
  409dc0:	c5 f8 c6 d8 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm3
  409dc5:	c5 db 58 c9          	vaddsd %xmm1,%xmm4,%xmm1
  409dc9:	c5 f8 c6 e0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm4
  409dce:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409dd2:	c5 db 58 e1          	vaddsd %xmm1,%xmm4,%xmm4
  409dd6:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  409dda:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409dde:	c5 f3 58 cc          	vaddsd %xmm4,%xmm1,%xmm1
  409de2:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409de6:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  409dea:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  409df0:	c5 f2 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm2
  409df4:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  409df8:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  409dfd:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409e01:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  409e05:	c5 f0 15 d1          	vunpckhps %xmm1,%xmm1,%xmm2
  409e09:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  409e0d:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  409e11:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409e16:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409e1a:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  409e1e:	62 f3 7d 48 1b c0 01 	vextractf32x8 $0x1,%zmm0,%ymm0
  409e25:	c5 fa 5a d8          	vcvtss2sd %xmm0,%xmm0,%xmm3
  409e29:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  409e2d:	c5 f8 c6 c8 55       	vshufps $0x55,%xmm0,%xmm0,%xmm1
  409e32:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409e36:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  409e3a:	c5 f8 15 d8          	vunpckhps %xmm0,%xmm0,%xmm3
  409e3e:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409e42:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  409e46:	c5 f8 c6 c8 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm1
  409e4b:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409e4f:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  409e53:	c4 e3 7d 19 c0 01    	vextractf128 $0x1,%ymm0,%xmm0
  409e59:	c5 fa 5a d0          	vcvtss2sd %xmm0,%xmm0,%xmm2
  409e5d:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
  409e61:	c5 f8 c6 d0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm2
  409e66:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  409e6a:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  409e6e:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  409e72:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409e76:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  409e7a:	c5 f8 c6 c0 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm0
  409e7f:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409e83:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  409e87:	c5 f3 58 de          	vaddsd %xmm6,%xmm1,%xmm3
  409e8b:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  409e90:	c5 f8 77             	vzeroupper 
  409e93:	e9 e7 cd ff ff       	jmpq   406c7f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  409e98:	62 f2 fd 48 19 0d 0e 	vbroadcastsd 0x690e(%rip),%zmm1        # 4107b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  409e9f:	69 00 00 
  409ea2:	62 f2 fd 48 19 05 04 	vbroadcastsd 0x6804(%rip),%zmm0        # 4106b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  409ea9:	68 00 00 
  409eac:	62 f2 fd 48 19 1d 02 	vbroadcastsd 0x6802(%rip),%zmm3        # 4106b8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  409eb3:	68 00 00 
  409eb6:	62 f2 fd 48 19 25 00 	vbroadcastsd 0x6800(%rip),%zmm4        # 4106c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x100>
  409ebd:	68 00 00 
  409ec0:	62 f2 fd 48 19 2d fe 	vbroadcastsd 0x67fe(%rip),%zmm5        # 4106c8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x108>
  409ec7:	67 00 00 
  409eca:	62 f2 fd 48 19 35 fc 	vbroadcastsd 0x67fc(%rip),%zmm6        # 4106d0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x110>
  409ed1:	67 00 00 
  409ed4:	62 72 fd 48 19 05 fa 	vbroadcastsd 0x67fa(%rip),%zmm8        # 4106d8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x118>
  409edb:	67 00 00 
  409ede:	62 72 fd 48 19 0d f8 	vbroadcastsd 0x67f8(%rip),%zmm9        # 4106e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x120>
  409ee5:	67 00 00 
  409ee8:	62 72 fd 48 19 15 f6 	vbroadcastsd 0x67f6(%rip),%zmm10        # 4106e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x128>
  409eef:	67 00 00 
  409ef2:	62 72 fd 48 19 1d f4 	vbroadcastsd 0x67f4(%rip),%zmm11        # 4106f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  409ef9:	67 00 00 
  409efc:	62 72 fd 48 19 25 9a 	vbroadcastsd 0x679a(%rip),%zmm12        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  409f03:	67 00 00 
  409f06:	62 72 fd 48 19 2d 88 	vbroadcastsd 0x6788(%rip),%zmm13        # 410698 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  409f0d:	67 00 00 
  409f10:	62 f2 fd 48 19 15 de 	vbroadcastsd 0x67de(%rip),%zmm2        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  409f17:	67 00 00 
  409f1a:	62 f1 fd 48 28 f9    	vmovapd %zmm1,%zmm7
  409f20:	62 f2 ed 48 98 f9    	vfmadd132pd %zmm1,%zmm2,%zmm7
  409f26:	62 72 ed 48 98 e9    	vfmadd132pd %zmm1,%zmm2,%zmm13
  409f2c:	62 72 ed 48 98 e1    	vfmadd132pd %zmm1,%zmm2,%zmm12
  409f32:	62 72 ed 48 98 d9    	vfmadd132pd %zmm1,%zmm2,%zmm11
  409f38:	62 72 ed 48 98 d1    	vfmadd132pd %zmm1,%zmm2,%zmm10
  409f3e:	62 72 ed 48 98 c9    	vfmadd132pd %zmm1,%zmm2,%zmm9
  409f44:	62 72 ed 48 98 c1    	vfmadd132pd %zmm1,%zmm2,%zmm8
  409f4a:	62 f2 ed 48 98 f1    	vfmadd132pd %zmm1,%zmm2,%zmm6
  409f50:	62 f2 ed 48 98 e9    	vfmadd132pd %zmm1,%zmm2,%zmm5
  409f56:	62 f2 ed 48 98 e1    	vfmadd132pd %zmm1,%zmm2,%zmm4
  409f5c:	62 f2 ed 48 98 d9    	vfmadd132pd %zmm1,%zmm2,%zmm3
  409f62:	62 f2 ed 48 98 c1    	vfmadd132pd %zmm1,%zmm2,%zmm0
  409f68:	ff c8                	dec    %eax
  409f6a:	75 b4                	jne    409f20 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x3300>
  409f6c:	62 f3 fd 48 1b fa 01 	vextractf64x4 $0x1,%zmm7,%ymm2
  409f73:	c5 ed 58 d7          	vaddpd %ymm7,%ymm2,%ymm2
  409f77:	62 73 fd 48 1b ef 01 	vextractf64x4 $0x1,%zmm13,%ymm7
  409f7e:	c4 c1 45 58 fd       	vaddpd %ymm13,%ymm7,%ymm7
  409f83:	62 f3 fd 28 19 d1 01 	vextractf64x2 $0x1,%ymm2,%xmm1
  409f8a:	c5 f1 58 ca          	vaddpd %xmm2,%xmm1,%xmm1
  409f8e:	45 31 ed             	xor    %r13d,%r13d
  409f91:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409f95:	c5 f3 58 15 03 68 00 	vaddsd 0x6803(%rip),%xmm1,%xmm2        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  409f9c:	00 
  409f9d:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409fa4:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  409fa8:	62 73 fd 48 1b e7 01 	vextractf64x4 $0x1,%zmm12,%ymm7
  409faf:	c4 c1 45 58 fc       	vaddpd %ymm12,%ymm7,%ymm7
  409fb4:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409fb8:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409fbc:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409fc3:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  409fc7:	62 73 fd 48 1b df 01 	vextractf64x4 $0x1,%zmm11,%ymm7
  409fce:	c4 c1 45 58 fb       	vaddpd %ymm11,%ymm7,%ymm7
  409fd3:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409fd7:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409fdb:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409fe2:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  409fe6:	62 73 fd 48 1b d7 01 	vextractf64x4 $0x1,%zmm10,%ymm7
  409fed:	c4 c1 45 58 fa       	vaddpd %ymm10,%ymm7,%ymm7
  409ff2:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409ff6:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409ffa:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a001:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a005:	62 73 fd 48 1b cf 01 	vextractf64x4 $0x1,%zmm9,%ymm7
  40a00c:	c4 c1 45 58 f9       	vaddpd %ymm9,%ymm7,%ymm7
  40a011:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a015:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a019:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a020:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a024:	62 73 fd 48 1b c7 01 	vextractf64x4 $0x1,%zmm8,%ymm7
  40a02b:	c4 c1 45 58 f8       	vaddpd %ymm8,%ymm7,%ymm7
  40a030:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a034:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a038:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a03f:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a043:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a047:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a04b:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  40a052:	c5 f5 58 f6          	vaddpd %ymm6,%ymm1,%ymm6
  40a056:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  40a05d:	c5 f1 58 ce          	vaddpd %xmm6,%xmm1,%xmm1
  40a061:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a065:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a069:	62 f3 fd 48 1b e9 01 	vextractf64x4 $0x1,%zmm5,%ymm1
  40a070:	c5 f5 58 ed          	vaddpd %ymm5,%ymm1,%ymm5
  40a074:	62 f3 fd 28 19 e9 01 	vextractf64x2 $0x1,%ymm5,%xmm1
  40a07b:	c5 f1 58 cd          	vaddpd %xmm5,%xmm1,%xmm1
  40a07f:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a083:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a087:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  40a08e:	c5 f5 58 e4          	vaddpd %ymm4,%ymm1,%ymm4
  40a092:	62 f3 fd 28 19 e1 01 	vextractf64x2 $0x1,%ymm4,%xmm1
  40a099:	c5 f1 58 cc          	vaddpd %xmm4,%xmm1,%xmm1
  40a09d:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a0a1:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a0a5:	62 f3 fd 48 1b d9 01 	vextractf64x4 $0x1,%zmm3,%ymm1
  40a0ac:	c5 f5 58 db          	vaddpd %ymm3,%ymm1,%ymm3
  40a0b0:	62 f3 fd 28 19 d9 01 	vextractf64x2 $0x1,%ymm3,%xmm1
  40a0b7:	c5 f1 58 cb          	vaddpd %xmm3,%xmm1,%xmm1
  40a0bb:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a0bf:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40a0c3:	62 f3 fd 48 1b c2 01 	vextractf64x4 $0x1,%zmm0,%ymm2
  40a0ca:	c5 fd 58 c2          	vaddpd %ymm2,%ymm0,%ymm0
  40a0ce:	62 f3 fd 28 19 c2 01 	vextractf64x2 $0x1,%ymm0,%xmm2
  40a0d5:	c5 f9 58 c2          	vaddpd %xmm2,%xmm0,%xmm0
  40a0d9:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  40a0dd:	c5 fb 58 f1          	vaddsd %xmm1,%xmm0,%xmm6
  40a0e1:	c4 e1 f9 7e f3       	vmovq  %xmm6,%rbx
  40a0e6:	c5 f8 77             	vzeroupper 
  40a0e9:	e9 91 cb ff ff       	jmpq   406c7f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  40a0ee:	66 90                	xchg   %ax,%ax

000000000040a0f0 <_ZZ4mainENKUlmE_clEm._omp_fn.1>:
  40a0f0:	55                   	push   %rbp
  40a0f1:	48 89 e5             	mov    %rsp,%rbp
  40a0f4:	41 55                	push   %r13
  40a0f6:	4c 8b 2f             	mov    (%rdi),%r13
  40a0f9:	41 54                	push   %r12
  40a0fb:	53                   	push   %rbx
  40a0fc:	49 8b 45 20          	mov    0x20(%r13),%rax
  40a100:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a104:	48 8b 18             	mov    (%rax),%rbx
  40a107:	48 85 db             	test   %rbx,%rbx
  40a10a:	74 7a                	je     40a186 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x96>
  40a10c:	e8 9f 93 ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  40a111:	4c 63 e0             	movslq %eax,%r12
  40a114:	e8 e7 92 ff ff       	callq  403400 <omp_get_thread_num@plt>
  40a119:	48 63 c8             	movslq %eax,%rcx
  40a11c:	48 8d 43 07          	lea    0x7(%rbx),%rax
  40a120:	48 c1 e8 03          	shr    $0x3,%rax
  40a124:	31 d2                	xor    %edx,%edx
  40a126:	49 f7 f4             	div    %r12
  40a129:	48 39 d1             	cmp    %rdx,%rcx
  40a12c:	72 6a                	jb     40a198 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0xa8>
  40a12e:	48 0f af c8          	imul   %rax,%rcx
  40a132:	48 01 ca             	add    %rcx,%rdx
  40a135:	48 01 d0             	add    %rdx,%rax
  40a138:	48 39 c2             	cmp    %rax,%rdx
  40a13b:	73 49                	jae    40a186 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x96>
  40a13d:	62 f2 fd 48 19 0d 59 	vbroadcastsd 0x6559(%rip),%zmm1        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  40a144:	65 00 00 
  40a147:	48 c1 e2 03          	shl    $0x3,%rdx
  40a14b:	48 c1 e0 03          	shl    $0x3,%rax
  40a14f:	90                   	nop
  40a150:	49 8b 4d 38          	mov    0x38(%r13),%rcx
  40a154:	48 8b 31             	mov    (%rcx),%rsi
  40a157:	49 8b 4d 30          	mov    0x30(%r13),%rcx
  40a15b:	62 f1 fd 48 28 04 d6 	vmovapd (%rsi,%rdx,8),%zmm0
  40a162:	48 8b 09             	mov    (%rcx),%rcx
  40a165:	62 f2 f5 48 a8 04 d1 	vfmadd213pd (%rcx,%rdx,8),%zmm1,%zmm0
  40a16c:	49 8b 4d 28          	mov    0x28(%r13),%rcx
  40a170:	48 8b 09             	mov    (%rcx),%rcx
  40a173:	62 f1 fd 48 2b 04 d1 	vmovntpd %zmm0,(%rcx,%rdx,8)
  40a17a:	48 83 c2 08          	add    $0x8,%rdx
  40a17e:	48 39 d0             	cmp    %rdx,%rax
  40a181:	77 cd                	ja     40a150 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x60>
  40a183:	c5 f8 77             	vzeroupper 
  40a186:	0f ae f8             	sfence 
  40a189:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a18d:	5b                   	pop    %rbx
  40a18e:	41 5c                	pop    %r12
  40a190:	41 5d                	pop    %r13
  40a192:	5d                   	pop    %rbp
  40a193:	c3                   	retq   
  40a194:	0f 1f 40 00          	nopl   0x0(%rax)
  40a198:	48 ff c0             	inc    %rax
  40a19b:	31 d2                	xor    %edx,%edx
  40a19d:	eb 8f                	jmp    40a12e <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x3e>
  40a19f:	90                   	nop

000000000040a1a0 <_ZZ4mainENKUlmE_clEm._omp_fn.3>:
  40a1a0:	55                   	push   %rbp
  40a1a1:	48 89 e5             	mov    %rsp,%rbp
  40a1a4:	41 55                	push   %r13
  40a1a6:	4c 8b 2f             	mov    (%rdi),%r13
  40a1a9:	41 54                	push   %r12
  40a1ab:	53                   	push   %rbx
  40a1ac:	49 8b 45 20          	mov    0x20(%r13),%rax
  40a1b0:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a1b4:	48 8b 18             	mov    (%rax),%rbx
  40a1b7:	48 85 db             	test   %rbx,%rbx
  40a1ba:	74 64                	je     40a220 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x80>
  40a1bc:	e8 ef 92 ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  40a1c1:	4c 63 e0             	movslq %eax,%r12
  40a1c4:	e8 37 92 ff ff       	callq  403400 <omp_get_thread_num@plt>
  40a1c9:	48 63 c8             	movslq %eax,%rcx
  40a1cc:	48 8d 43 07          	lea    0x7(%rbx),%rax
  40a1d0:	48 c1 e8 03          	shr    $0x3,%rax
  40a1d4:	31 d2                	xor    %edx,%edx
  40a1d6:	49 f7 f4             	div    %r12
  40a1d9:	48 39 d1             	cmp    %rdx,%rcx
  40a1dc:	72 52                	jb     40a230 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x90>
  40a1de:	48 0f af c8          	imul   %rax,%rcx
  40a1e2:	48 01 ca             	add    %rcx,%rdx
  40a1e5:	48 01 d0             	add    %rdx,%rax
  40a1e8:	48 39 c2             	cmp    %rax,%rdx
  40a1eb:	73 33                	jae    40a220 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x80>
  40a1ed:	48 c1 e2 03          	shl    $0x3,%rdx
  40a1f1:	48 c1 e0 03          	shl    $0x3,%rax
  40a1f5:	0f 1f 00             	nopl   (%rax)
  40a1f8:	49 8b 75 30          	mov    0x30(%r13),%rsi
  40a1fc:	49 8b 4d 28          	mov    0x28(%r13),%rcx
  40a200:	48 8b 36             	mov    (%rsi),%rsi
  40a203:	48 8b 09             	mov    (%rcx),%rcx
  40a206:	62 f1 fd 48 28 04 d6 	vmovapd (%rsi,%rdx,8),%zmm0
  40a20d:	62 f1 fd 48 2b 04 d1 	vmovntpd %zmm0,(%rcx,%rdx,8)
  40a214:	48 83 c2 08          	add    $0x8,%rdx
  40a218:	48 39 d0             	cmp    %rdx,%rax
  40a21b:	77 db                	ja     40a1f8 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x58>
  40a21d:	c5 f8 77             	vzeroupper 
  40a220:	0f ae f8             	sfence 
  40a223:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a227:	5b                   	pop    %rbx
  40a228:	41 5c                	pop    %r12
  40a22a:	41 5d                	pop    %r13
  40a22c:	5d                   	pop    %rbp
  40a22d:	c3                   	retq   
  40a22e:	66 90                	xchg   %ax,%ax
  40a230:	48 ff c0             	inc    %rax
  40a233:	31 d2                	xor    %edx,%edx
  40a235:	eb a7                	jmp    40a1de <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x3e>
  40a237:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40a23e:	00 00 

000000000040a240 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0>:
  40a240:	55                   	push   %rbp
  40a241:	48 89 e5             	mov    %rsp,%rbp
  40a244:	41 55                	push   %r13
  40a246:	41 54                	push   %r12
  40a248:	53                   	push   %rbx
  40a249:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  40a24d:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a251:	48 85 db             	test   %rbx,%rbx
  40a254:	0f 84 a5 01 00 00    	je     40a3ff <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x1bf>
  40a25a:	49 89 fd             	mov    %rdi,%r13
  40a25d:	e8 4e 92 ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  40a262:	4c 63 e0             	movslq %eax,%r12
  40a265:	e8 96 91 ff ff       	callq  403400 <omp_get_thread_num@plt>
  40a26a:	48 63 c8             	movslq %eax,%rcx
  40a26d:	48 ba ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rdx
  40a274:	aa aa aa 
  40a277:	48 8d 43 5f          	lea    0x5f(%rbx),%rax
  40a27b:	48 f7 e2             	mul    %rdx
  40a27e:	48 89 d0             	mov    %rdx,%rax
  40a281:	48 c1 e8 06          	shr    $0x6,%rax
  40a285:	31 d2                	xor    %edx,%edx
  40a287:	49 f7 f4             	div    %r12
  40a28a:	48 39 d1             	cmp    %rdx,%rcx
  40a28d:	0f 82 77 01 00 00    	jb     40a40a <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x1ca>
  40a293:	48 0f af c8          	imul   %rax,%rcx
  40a297:	48 01 ca             	add    %rcx,%rdx
  40a29a:	48 01 d0             	add    %rdx,%rax
  40a29d:	48 39 c2             	cmp    %rax,%rdx
  40a2a0:	0f 83 59 01 00 00    	jae    40a3ff <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x1bf>
  40a2a6:	48 8d 14 52          	lea    (%rdx,%rdx,2),%rdx
  40a2aa:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40a2ae:	48 89 d7             	mov    %rdx,%rdi
  40a2b1:	4c 8d 04 40          	lea    (%rax,%rax,2),%r8
  40a2b5:	48 c1 e2 08          	shl    $0x8,%rdx
  40a2b9:	41 8b 75 18          	mov    0x18(%r13),%esi
  40a2bd:	62 f2 fd 48 19 0d 39 	vbroadcastsd 0x6439(%rip),%zmm1        # 410700 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  40a2c4:	64 00 00 
  40a2c7:	62 f2 fd 48 19 05 27 	vbroadcastsd 0x6427(%rip),%zmm0        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40a2ce:	64 00 00 
  40a2d1:	48 01 d1             	add    %rdx,%rcx
  40a2d4:	48 c1 e7 05          	shl    $0x5,%rdi
  40a2d8:	49 c1 e0 05          	shl    $0x5,%r8
  40a2dc:	49 03 55 08          	add    0x8(%r13),%rdx
  40a2e0:	62 71 fd 48 28 29    	vmovapd (%rcx),%zmm13
  40a2e6:	62 71 fd 48 28 61 01 	vmovapd 0x40(%rcx),%zmm12
  40a2ed:	62 71 fd 48 28 59 02 	vmovapd 0x80(%rcx),%zmm11
  40a2f4:	62 71 fd 48 28 51 03 	vmovapd 0xc0(%rcx),%zmm10
  40a2fb:	62 71 fd 48 28 49 04 	vmovapd 0x100(%rcx),%zmm9
  40a302:	62 71 fd 48 28 41 05 	vmovapd 0x140(%rcx),%zmm8
  40a309:	62 f1 fd 48 28 79 06 	vmovapd 0x180(%rcx),%zmm7
  40a310:	62 f1 fd 48 28 71 07 	vmovapd 0x1c0(%rcx),%zmm6
  40a317:	62 f1 fd 48 28 69 08 	vmovapd 0x200(%rcx),%zmm5
  40a31e:	62 f1 fd 48 28 61 09 	vmovapd 0x240(%rcx),%zmm4
  40a325:	62 f1 fd 48 28 59 0a 	vmovapd 0x280(%rcx),%zmm3
  40a32c:	62 f1 fd 48 28 51 0b 	vmovapd 0x2c0(%rcx),%zmm2
  40a333:	85 f6                	test   %esi,%esi
  40a335:	7e 57                	jle    40a38e <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x14e>
  40a337:	31 c0                	xor    %eax,%eax
  40a339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40a340:	ff c0                	inc    %eax
  40a342:	62 72 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm13
  40a348:	62 72 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm12
  40a34e:	62 72 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm11
  40a354:	62 72 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm10
  40a35a:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  40a360:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  40a366:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  40a36c:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  40a372:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  40a378:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  40a37e:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  40a384:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  40a38a:	39 c6                	cmp    %eax,%esi
  40a38c:	75 b2                	jne    40a340 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x100>
  40a38e:	48 83 c7 60          	add    $0x60,%rdi
  40a392:	62 71 fd 48 29 2a    	vmovapd %zmm13,(%rdx)
  40a398:	62 71 fd 48 29 62 01 	vmovapd %zmm12,0x40(%rdx)
  40a39f:	62 71 fd 48 29 5a 02 	vmovapd %zmm11,0x80(%rdx)
  40a3a6:	62 71 fd 48 29 52 03 	vmovapd %zmm10,0xc0(%rdx)
  40a3ad:	62 71 fd 48 29 4a 04 	vmovapd %zmm9,0x100(%rdx)
  40a3b4:	62 71 fd 48 29 42 05 	vmovapd %zmm8,0x140(%rdx)
  40a3bb:	62 f1 fd 48 29 7a 06 	vmovapd %zmm7,0x180(%rdx)
  40a3c2:	62 f1 fd 48 29 72 07 	vmovapd %zmm6,0x1c0(%rdx)
  40a3c9:	62 f1 fd 48 29 6a 08 	vmovapd %zmm5,0x200(%rdx)
  40a3d0:	62 f1 fd 48 29 62 09 	vmovapd %zmm4,0x240(%rdx)
  40a3d7:	62 f1 fd 48 29 5a 0a 	vmovapd %zmm3,0x280(%rdx)
  40a3de:	62 f1 fd 48 29 52 0b 	vmovapd %zmm2,0x2c0(%rdx)
  40a3e5:	48 81 c1 00 03 00 00 	add    $0x300,%rcx
  40a3ec:	48 81 c2 00 03 00 00 	add    $0x300,%rdx
  40a3f3:	49 39 f8             	cmp    %rdi,%r8
  40a3f6:	0f 87 e4 fe ff ff    	ja     40a2e0 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0xa0>
  40a3fc:	c5 f8 77             	vzeroupper 
  40a3ff:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a403:	5b                   	pop    %rbx
  40a404:	41 5c                	pop    %r12
  40a406:	41 5d                	pop    %r13
  40a408:	5d                   	pop    %rbp
  40a409:	c3                   	retq   
  40a40a:	48 ff c0             	inc    %rax
  40a40d:	31 d2                	xor    %edx,%edx
  40a40f:	e9 7f fe ff ff       	jmpq   40a293 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x53>
  40a414:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40a41b:	00 00 00 00 
  40a41f:	90                   	nop

000000000040a420 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0>:
  40a420:	55                   	push   %rbp
  40a421:	48 89 e5             	mov    %rsp,%rbp
  40a424:	41 55                	push   %r13
  40a426:	41 54                	push   %r12
  40a428:	53                   	push   %rbx
  40a429:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  40a42d:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a431:	48 85 db             	test   %rbx,%rbx
  40a434:	0f 84 e1 01 00 00    	je     40a61b <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x1fb>
  40a43a:	49 89 fc             	mov    %rdi,%r12
  40a43d:	e8 6e 90 ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  40a442:	41 89 c5             	mov    %eax,%r13d
  40a445:	e8 b6 8f ff ff       	callq  403400 <omp_get_thread_num@plt>
  40a44a:	48 63 c8             	movslq %eax,%rcx
  40a44d:	48 8d 43 7f          	lea    0x7f(%rbx),%rax
  40a451:	48 c1 e8 07          	shr    $0x7,%rax
  40a455:	49 63 f5             	movslq %r13d,%rsi
  40a458:	31 d2                	xor    %edx,%edx
  40a45a:	48 f7 f6             	div    %rsi
  40a45d:	48 39 d1             	cmp    %rdx,%rcx
  40a460:	0f 82 c0 01 00 00    	jb     40a626 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x206>
  40a466:	48 0f af c8          	imul   %rax,%rcx
  40a46a:	48 01 ca             	add    %rcx,%rdx
  40a46d:	48 01 d0             	add    %rdx,%rax
  40a470:	48 39 c2             	cmp    %rax,%rdx
  40a473:	0f 83 a2 01 00 00    	jae    40a61b <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x1fb>
  40a479:	49 8b 0c 24          	mov    (%r12),%rcx
  40a47d:	49 89 d0             	mov    %rdx,%r8
  40a480:	48 c1 e0 07          	shl    $0x7,%rax
  40a484:	48 c1 e2 0a          	shl    $0xa,%rdx
  40a488:	41 8b 74 24 18       	mov    0x18(%r12),%esi
  40a48d:	62 f2 fd 48 19 0d 69 	vbroadcastsd 0x6269(%rip),%zmm1        # 410700 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  40a494:	62 00 00 
  40a497:	62 f2 fd 48 19 05 57 	vbroadcastsd 0x6257(%rip),%zmm0        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40a49e:	62 00 00 
  40a4a1:	48 01 d1             	add    %rdx,%rcx
  40a4a4:	49 c1 e0 07          	shl    $0x7,%r8
  40a4a8:	48 89 c7             	mov    %rax,%rdi
  40a4ab:	49 03 54 24 08       	add    0x8(%r12),%rdx
  40a4b0:	62 e1 fd 48 28 09    	vmovapd (%rcx),%zmm17
  40a4b6:	62 e1 fd 48 28 41 01 	vmovapd 0x40(%rcx),%zmm16
  40a4bd:	62 71 fd 48 28 79 02 	vmovapd 0x80(%rcx),%zmm15
  40a4c4:	62 71 fd 48 28 71 03 	vmovapd 0xc0(%rcx),%zmm14
  40a4cb:	62 71 fd 48 28 69 04 	vmovapd 0x100(%rcx),%zmm13
  40a4d2:	62 71 fd 48 28 61 05 	vmovapd 0x140(%rcx),%zmm12
  40a4d9:	62 71 fd 48 28 59 06 	vmovapd 0x180(%rcx),%zmm11
  40a4e0:	62 71 fd 48 28 51 07 	vmovapd 0x1c0(%rcx),%zmm10
  40a4e7:	62 71 fd 48 28 49 08 	vmovapd 0x200(%rcx),%zmm9
  40a4ee:	62 71 fd 48 28 41 09 	vmovapd 0x240(%rcx),%zmm8
  40a4f5:	62 f1 fd 48 28 79 0a 	vmovapd 0x280(%rcx),%zmm7
  40a4fc:	62 f1 fd 48 28 71 0b 	vmovapd 0x2c0(%rcx),%zmm6
  40a503:	62 f1 fd 48 28 69 0c 	vmovapd 0x300(%rcx),%zmm5
  40a50a:	62 f1 fd 48 28 61 0d 	vmovapd 0x340(%rcx),%zmm4
  40a511:	62 f1 fd 48 28 59 0e 	vmovapd 0x380(%rcx),%zmm3
  40a518:	62 f1 fd 48 28 51 0f 	vmovapd 0x3c0(%rcx),%zmm2
  40a51f:	85 f6                	test   %esi,%esi
  40a521:	7e 6b                	jle    40a58e <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x16e>
  40a523:	31 c0                	xor    %eax,%eax
  40a525:	0f 1f 00             	nopl   (%rax)
  40a528:	ff c0                	inc    %eax
  40a52a:	62 e2 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm17
  40a530:	62 e2 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm16
  40a536:	62 72 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm15
  40a53c:	62 72 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm14
  40a542:	62 72 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm13
  40a548:	62 72 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm12
  40a54e:	62 72 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm11
  40a554:	62 72 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm10
  40a55a:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  40a560:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  40a566:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  40a56c:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  40a572:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  40a578:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  40a57e:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  40a584:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  40a58a:	39 c6                	cmp    %eax,%esi
  40a58c:	75 9a                	jne    40a528 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x108>
  40a58e:	49 83 e8 80          	sub    $0xffffffffffffff80,%r8
  40a592:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  40a598:	62 e1 fd 48 29 42 01 	vmovapd %zmm16,0x40(%rdx)
  40a59f:	62 71 fd 48 29 7a 02 	vmovapd %zmm15,0x80(%rdx)
  40a5a6:	62 71 fd 48 29 72 03 	vmovapd %zmm14,0xc0(%rdx)
  40a5ad:	62 71 fd 48 29 6a 04 	vmovapd %zmm13,0x100(%rdx)
  40a5b4:	62 71 fd 48 29 62 05 	vmovapd %zmm12,0x140(%rdx)
  40a5bb:	62 71 fd 48 29 5a 06 	vmovapd %zmm11,0x180(%rdx)
  40a5c2:	62 71 fd 48 29 52 07 	vmovapd %zmm10,0x1c0(%rdx)
  40a5c9:	62 71 fd 48 29 4a 08 	vmovapd %zmm9,0x200(%rdx)
  40a5d0:	62 71 fd 48 29 42 09 	vmovapd %zmm8,0x240(%rdx)
  40a5d7:	62 f1 fd 48 29 7a 0a 	vmovapd %zmm7,0x280(%rdx)
  40a5de:	62 f1 fd 48 29 72 0b 	vmovapd %zmm6,0x2c0(%rdx)
  40a5e5:	62 f1 fd 48 29 6a 0c 	vmovapd %zmm5,0x300(%rdx)
  40a5ec:	62 f1 fd 48 29 62 0d 	vmovapd %zmm4,0x340(%rdx)
  40a5f3:	62 f1 fd 48 29 5a 0e 	vmovapd %zmm3,0x380(%rdx)
  40a5fa:	62 f1 fd 48 29 52 0f 	vmovapd %zmm2,0x3c0(%rdx)
  40a601:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  40a608:	48 81 c2 00 04 00 00 	add    $0x400,%rdx
  40a60f:	4c 39 c7             	cmp    %r8,%rdi
  40a612:	0f 87 98 fe ff ff    	ja     40a4b0 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x90>
  40a618:	c5 f8 77             	vzeroupper 
  40a61b:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a61f:	5b                   	pop    %rbx
  40a620:	41 5c                	pop    %r12
  40a622:	41 5d                	pop    %r13
  40a624:	5d                   	pop    %rbp
  40a625:	c3                   	retq   
  40a626:	48 ff c0             	inc    %rax
  40a629:	31 d2                	xor    %edx,%edx
  40a62b:	e9 36 fe ff ff       	jmpq   40a466 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x46>

000000000040a630 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0>:
  40a630:	55                   	push   %rbp
  40a631:	48 89 e5             	mov    %rsp,%rbp
  40a634:	41 55                	push   %r13
  40a636:	41 54                	push   %r12
  40a638:	53                   	push   %rbx
  40a639:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  40a63d:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a641:	48 85 db             	test   %rbx,%rbx
  40a644:	0f 84 41 01 00 00    	je     40a78b <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x15b>
  40a64a:	49 89 fd             	mov    %rdi,%r13
  40a64d:	e8 5e 8e ff ff       	callq  4034b0 <omp_get_num_threads@plt>
  40a652:	4c 63 e0             	movslq %eax,%r12
  40a655:	e8 a6 8d ff ff       	callq  403400 <omp_get_thread_num@plt>
  40a65a:	48 63 c8             	movslq %eax,%rcx
  40a65d:	48 8d 43 3f          	lea    0x3f(%rbx),%rax
  40a661:	48 c1 e8 06          	shr    $0x6,%rax
  40a665:	31 d2                	xor    %edx,%edx
  40a667:	49 f7 f4             	div    %r12
  40a66a:	48 39 d1             	cmp    %rdx,%rcx
  40a66d:	0f 82 23 01 00 00    	jb     40a796 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x166>
  40a673:	48 0f af c8          	imul   %rax,%rcx
  40a677:	48 01 ca             	add    %rcx,%rdx
  40a67a:	48 01 d0             	add    %rdx,%rax
  40a67d:	48 39 c2             	cmp    %rax,%rdx
  40a680:	0f 83 05 01 00 00    	jae    40a78b <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x15b>
  40a686:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40a68a:	49 89 d0             	mov    %rdx,%r8
  40a68d:	48 c1 e0 06          	shl    $0x6,%rax
  40a691:	48 c1 e2 09          	shl    $0x9,%rdx
  40a695:	41 8b 75 18          	mov    0x18(%r13),%esi
  40a699:	62 f2 fd 48 19 0d 5d 	vbroadcastsd 0x605d(%rip),%zmm1        # 410700 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  40a6a0:	60 00 00 
  40a6a3:	62 f2 fd 48 19 05 4b 	vbroadcastsd 0x604b(%rip),%zmm0        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40a6aa:	60 00 00 
  40a6ad:	48 01 d1             	add    %rdx,%rcx
  40a6b0:	49 c1 e0 06          	shl    $0x6,%r8
  40a6b4:	48 89 c7             	mov    %rax,%rdi
  40a6b7:	49 03 55 08          	add    0x8(%r13),%rdx
  40a6bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40a6c0:	62 71 fd 48 28 09    	vmovapd (%rcx),%zmm9
  40a6c6:	62 71 fd 48 28 41 01 	vmovapd 0x40(%rcx),%zmm8
  40a6cd:	62 f1 fd 48 28 79 02 	vmovapd 0x80(%rcx),%zmm7
  40a6d4:	62 f1 fd 48 28 71 03 	vmovapd 0xc0(%rcx),%zmm6
  40a6db:	62 f1 fd 48 28 69 04 	vmovapd 0x100(%rcx),%zmm5
  40a6e2:	62 f1 fd 48 28 61 05 	vmovapd 0x140(%rcx),%zmm4
  40a6e9:	62 f1 fd 48 28 59 06 	vmovapd 0x180(%rcx),%zmm3
  40a6f0:	62 f1 fd 48 28 51 07 	vmovapd 0x1c0(%rcx),%zmm2
  40a6f7:	85 f6                	test   %esi,%esi
  40a6f9:	7e 3b                	jle    40a736 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x106>
  40a6fb:	31 c0                	xor    %eax,%eax
  40a6fd:	0f 1f 00             	nopl   (%rax)
  40a700:	ff c0                	inc    %eax
  40a702:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  40a708:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  40a70e:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  40a714:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  40a71a:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  40a720:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  40a726:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  40a72c:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  40a732:	39 c6                	cmp    %eax,%esi
  40a734:	75 ca                	jne    40a700 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0xd0>
  40a736:	49 83 c0 40          	add    $0x40,%r8
  40a73a:	62 71 fd 48 29 0a    	vmovapd %zmm9,(%rdx)
  40a740:	62 71 fd 48 29 42 01 	vmovapd %zmm8,0x40(%rdx)
  40a747:	62 f1 fd 48 29 7a 02 	vmovapd %zmm7,0x80(%rdx)
  40a74e:	62 f1 fd 48 29 72 03 	vmovapd %zmm6,0xc0(%rdx)
  40a755:	62 f1 fd 48 29 6a 04 	vmovapd %zmm5,0x100(%rdx)
  40a75c:	62 f1 fd 48 29 62 05 	vmovapd %zmm4,0x140(%rdx)
  40a763:	62 f1 fd 48 29 5a 06 	vmovapd %zmm3,0x180(%rdx)
  40a76a:	62 f1 fd 48 29 52 07 	vmovapd %zmm2,0x1c0(%rdx)
  40a771:	48 81 c1 00 02 00 00 	add    $0x200,%rcx
  40a778:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  40a77f:	4c 39 c7             	cmp    %r8,%rdi
  40a782:	0f 87 38 ff ff ff    	ja     40a6c0 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x90>
  40a788:	c5 f8 77             	vzeroupper 
  40a78b:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a78f:	5b                   	pop    %rbx
  40a790:	41 5c                	pop    %r12
  40a792:	41 5d                	pop    %r13
  40a794:	5d                   	pop    %rbp
  40a795:	c3                   	retq   
  40a796:	48 ff c0             	inc    %rax
  40a799:	31 d2                	xor    %edx,%edx
  40a79b:	e9 d3 fe ff ff       	jmpq   40a673 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x43>

000000000040a7a0 <_ZZ4mainENKUlmE_clEm>:
  40a7a0:	55                   	push   %rbp
  40a7a1:	48 89 e5             	mov    %rsp,%rbp
  40a7a4:	41 55                	push   %r13
  40a7a6:	41 54                	push   %r12
  40a7a8:	53                   	push   %rbx
  40a7a9:	48 89 f3             	mov    %rsi,%rbx
  40a7ac:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40a7b0:	48 83 ec 60          	sub    $0x60,%rsp
  40a7b4:	48 8b 07             	mov    (%rdi),%rax
  40a7b7:	80 38 00             	cmpb   $0x0,(%rax)
  40a7ba:	0f 85 f0 00 00 00    	jne    40a8b0 <_ZZ4mainENKUlmE_clEm+0x110>
  40a7c0:	48 8b 47 08          	mov    0x8(%rdi),%rax
  40a7c4:	49 89 fc             	mov    %rdi,%r12
  40a7c7:	80 38 00             	cmpb   $0x0,(%rax)
  40a7ca:	0f 85 5c 02 00 00    	jne    40aa2c <_ZZ4mainENKUlmE_clEm+0x28c>
  40a7d0:	48 8b 47 18          	mov    0x18(%rdi),%rax
  40a7d4:	80 38 00             	cmpb   $0x0,(%rax)
  40a7d7:	0f 85 00 02 00 00    	jne    40a9dd <_ZZ4mainENKUlmE_clEm+0x23d>
  40a7dd:	48 8b 47 40          	mov    0x40(%rdi),%rax
  40a7e1:	80 38 00             	cmpb   $0x0,(%rax)
  40a7e4:	0f 85 70 02 00 00    	jne    40aa5a <_ZZ4mainENKUlmE_clEm+0x2ba>
  40a7ea:	48 8b 47 48          	mov    0x48(%rdi),%rax
  40a7ee:	80 38 00             	cmpb   $0x0,(%rax)
  40a7f1:	0f 85 b6 04 00 00    	jne    40acad <_ZZ4mainENKUlmE_clEm+0x50d>
  40a7f7:	48 8b 47 50          	mov    0x50(%rdi),%rax
  40a7fb:	44 0f b6 28          	movzbl (%rax),%r13d
  40a7ff:	45 84 ed             	test   %r13b,%r13b
  40a802:	0f 85 dc 04 00 00    	jne    40ace4 <_ZZ4mainENKUlmE_clEm+0x544>
  40a808:	48 8b 47 58          	mov    0x58(%rdi),%rax
  40a80c:	80 38 00             	cmpb   $0x0,(%rax)
  40a80f:	0f 85 f7 00 00 00    	jne    40a90c <_ZZ4mainENKUlmE_clEm+0x16c>
  40a815:	48 8b 87 90 00 00 00 	mov    0x90(%rdi),%rax
  40a81c:	0f b6 18             	movzbl (%rax),%ebx
  40a81f:	84 db                	test   %bl,%bl
  40a821:	0f 84 7c 02 00 00    	je     40aaa3 <_ZZ4mainENKUlmE_clEm+0x303>
  40a827:	48 8b 97 a0 00 00 00 	mov    0xa0(%rdi),%rdx
  40a82e:	48 8b 87 98 00 00 00 	mov    0x98(%rdi),%rax
  40a835:	8b 3a                	mov    (%rdx),%edi
  40a837:	49 8b 54 24 20       	mov    0x20(%r12),%rdx
  40a83c:	8b 00                	mov    (%rax),%eax
  40a83e:	48 8b 32             	mov    (%rdx),%rsi
  40a841:	49 8b 54 24 28       	mov    0x28(%r12),%rdx
  40a846:	48 8b 0a             	mov    (%rdx),%rcx
  40a849:	49 8b 54 24 30       	mov    0x30(%r12),%rdx
  40a84e:	48 8b 12             	mov    (%rdx),%rdx
  40a851:	c4 e1 f9 6e ea       	vmovq  %rdx,%xmm5
  40a856:	c4 e3 d1 22 c1 01    	vpinsrq $0x1,%rcx,%xmm5,%xmm0
  40a85c:	83 f8 0c             	cmp    $0xc,%eax
  40a85f:	0f 84 f4 04 00 00    	je     40ad59 <_ZZ4mainENKUlmE_clEm+0x5b9>
  40a865:	83 f8 10             	cmp    $0x10,%eax
  40a868:	0f 85 ad 04 00 00    	jne    40ad1b <_ZZ4mainENKUlmE_clEm+0x57b>
  40a86e:	89 7c 24 18          	mov    %edi,0x18(%rsp)
  40a872:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40a877:	31 c9                	xor    %ecx,%ecx
  40a879:	31 d2                	xor    %edx,%edx
  40a87b:	48 89 e6             	mov    %rsp,%rsi
  40a87e:	bf 20 a4 40 00       	mov    $0x40a420,%edi
  40a883:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  40a888:	e8 33 8b ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40a88d:	49 8b 84 24 a0 00 00 	mov    0xa0(%r12),%rax
  40a894:	00 
  40a895:	49 8b 54 24 20       	mov    0x20(%r12),%rdx
  40a89a:	48 63 00             	movslq (%rax),%rax
  40a89d:	48 0f af 02          	imul   (%rdx),%rax
  40a8a1:	48 01 c0             	add    %rax,%rax
  40a8a4:	e9 29 01 00 00       	jmpq   40a9d2 <_ZZ4mainENKUlmE_clEm+0x232>
  40a8a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40a8b0:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40a8b4:	48 89 e6             	mov    %rsp,%rsi
  40a8b7:	bf 01 00 00 00       	mov    $0x1,%edi
  40a8bc:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  40a8c1:	e8 da 89 ff ff       	callq  4032a0 <clock_gettime@plt>
  40a8c6:	48 69 04 24 00 ca 9a 	imul   $0x3b9aca00,(%rsp),%rax
  40a8cd:	3b 
  40a8ce:	48 03 44 24 08       	add    0x8(%rsp),%rax
  40a8d3:	48 39 c3             	cmp    %rax,%rbx
  40a8d6:	0f 86 f4 00 00 00    	jbe    40a9d0 <_ZZ4mainENKUlmE_clEm+0x230>
  40a8dc:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  40a8e3:	00 
  40a8e4:	48 c7 44 24 08 40 4b 	movq   $0x4c4b40,0x8(%rsp)
  40a8eb:	4c 00 
  40a8ed:	0f 1f 00             	nopl   (%rax)
  40a8f0:	48 89 e6             	mov    %rsp,%rsi
  40a8f3:	48 89 e7             	mov    %rsp,%rdi
  40a8f6:	e8 e5 87 ff ff       	callq  4030e0 <nanosleep@plt>
  40a8fb:	83 f8 ff             	cmp    $0xffffffff,%eax
  40a8fe:	75 b0                	jne    40a8b0 <_ZZ4mainENKUlmE_clEm+0x110>
  40a900:	e8 3b 87 ff ff       	callq  403040 <__errno_location@plt>
  40a905:	83 38 04             	cmpl   $0x4,(%rax)
  40a908:	74 e6                	je     40a8f0 <_ZZ4mainENKUlmE_clEm+0x150>
  40a90a:	eb a4                	jmp    40a8b0 <_ZZ4mainENKUlmE_clEm+0x110>
  40a90c:	48 8d 5f 68          	lea    0x68(%rdi),%rbx
  40a910:	48 8d 47 60          	lea    0x60(%rdi),%rax
  40a914:	48 8d 57 70          	lea    0x70(%rdi),%rdx
  40a918:	c4 e1 f9 6e f7       	vmovq  %rdi,%xmm6
  40a91d:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  40a921:	c4 e1 f9 6e cb       	vmovq  %rbx,%xmm1
  40a926:	c4 e3 f1 22 ca 01    	vpinsrq $0x1,%rdx,%xmm1,%xmm1
  40a92c:	c5 f9 29 44 24 30    	vmovapd %xmm0,0x30(%rsp)
  40a932:	c4 e3 c9 22 c0 01    	vpinsrq $0x1,%rax,%xmm6,%xmm0
  40a938:	48 89 34 24          	mov    %rsi,(%rsp)
  40a93c:	c4 e3 7d 38 c1 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm0
  40a942:	31 c9                	xor    %ecx,%ecx
  40a944:	31 d2                	xor    %edx,%edx
  40a946:	48 89 e6             	mov    %rsp,%rsi
  40a949:	bf 00 6a 40 00       	mov    $0x406a00,%edi
  40a94e:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  40a955:	00 00 
  40a957:	c5 fe 7f 44 24 08    	vmovdqu %ymm0,0x8(%rsp)
  40a95d:	c5 f8 77             	vzeroupper 
  40a960:	e8 5b 8a ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40a965:	c5 fb 10 44 24 30    	vmovsd 0x30(%rsp),%xmm0
  40a96b:	c5 fa 7e 0d 8d 5e 00 	vmovq  0x5e8d(%rip),%xmm1        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40a972:	00 
  40a973:	c5 fb 10 25 95 5d 00 	vmovsd 0x5d95(%rip),%xmm4        # 410710 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  40a97a:	00 
  40a97b:	c5 f9 54 d1          	vandpd %xmm1,%xmm0,%xmm2
  40a97f:	c5 f9 2e e2          	vucomisd %xmm2,%xmm4
  40a983:	49 8b 44 24 78       	mov    0x78(%r12),%rax
  40a988:	c5 fb 10 5c 24 38    	vmovsd 0x38(%rsp),%xmm3
  40a98e:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
  40a993:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
  40a997:	72 1c                	jb     40a9b5 <_ZZ4mainENKUlmE_clEm+0x215>
  40a999:	c5 e1 54 d1          	vandpd %xmm1,%xmm3,%xmm2
  40a99d:	c5 eb 59 15 73 5d 00 	vmulsd 0x5d73(%rip),%xmm2,%xmm2        # 410718 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  40a9a4:	00 
  40a9a5:	c5 fb 5c c3          	vsubsd %xmm3,%xmm0,%xmm0
  40a9a9:	c5 f9 54 c1          	vandpd %xmm1,%xmm0,%xmm0
  40a9ad:	c5 f9 2f d0          	vcomisd %xmm0,%xmm2
  40a9b1:	41 0f 93 c5          	setae  %r13b
  40a9b5:	49 8b 84 24 80 00 00 	mov    0x80(%r12),%rax
  40a9bc:	00 
  40a9bd:	44 20 28             	and    %r13b,(%rax)
  40a9c0:	49 8b 84 24 88 00 00 	mov    0x88(%r12),%rax
  40a9c7:	00 
  40a9c8:	48 89 10             	mov    %rdx,(%rax)
  40a9cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40a9d0:	31 c0                	xor    %eax,%eax
  40a9d2:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a9d6:	5b                   	pop    %rbx
  40a9d7:	41 5c                	pop    %r12
  40a9d9:	41 5d                	pop    %r13
  40a9db:	5d                   	pop    %rbp
  40a9dc:	c3                   	retq   
  40a9dd:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40a9e1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40a9e6:	48 8d 47 28          	lea    0x28(%rdi),%rax
  40a9ea:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40a9ef:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40a9f3:	48 89 3c 24          	mov    %rdi,(%rsp)
  40a9f7:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40a9fc:	48 89 e6             	mov    %rsp,%rsi
  40a9ff:	48 8d 47 38          	lea    0x38(%rdi),%rax
  40aa03:	31 c9                	xor    %ecx,%ecx
  40aa05:	31 d2                	xor    %edx,%edx
  40aa07:	bf e0 66 40 00       	mov    $0x4066e0,%edi
  40aa0c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40aa11:	e8 aa 89 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40aa16:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  40aa1b:	48 8b 00             	mov    (%rax),%rax
  40aa1e:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40aa22:	5b                   	pop    %rbx
  40aa23:	41 5c                	pop    %r12
  40aa25:	41 5d                	pop    %r13
  40aa27:	48 01 c0             	add    %rax,%rax
  40aa2a:	5d                   	pop    %rbp
  40aa2b:	c3                   	retq   
  40aa2c:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
  40aa30:	b8 00 00 01 00       	mov    $0x10000,%eax
  40aa35:	48 8b 11             	mov    (%rcx),%rdx
  40aa38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40aa3f:	00 
  40aa40:	48 8b 12             	mov    (%rdx),%rdx
  40aa43:	48 89 11             	mov    %rdx,(%rcx)
  40aa46:	ff c8                	dec    %eax
  40aa48:	75 f6                	jne    40aa40 <_ZZ4mainENKUlmE_clEm+0x2a0>
  40aa4a:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40aa4e:	5b                   	pop    %rbx
  40aa4f:	41 5c                	pop    %r12
  40aa51:	41 5d                	pop    %r13
  40aa53:	b8 00 00 01 00       	mov    $0x10000,%eax
  40aa58:	5d                   	pop    %rbp
  40aa59:	c3                   	retq   
  40aa5a:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40aa5e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40aa63:	48 8d 47 28          	lea    0x28(%rdi),%rax
  40aa67:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40aa6c:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40aa70:	48 89 3c 24          	mov    %rdi,(%rsp)
  40aa74:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40aa79:	31 c9                	xor    %ecx,%ecx
  40aa7b:	48 8d 47 38          	lea    0x38(%rdi),%rax
  40aa7f:	31 d2                	xor    %edx,%edx
  40aa81:	48 89 e6             	mov    %rsp,%rsi
  40aa84:	bf f0 a0 40 00       	mov    $0x40a0f0,%edi
  40aa89:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40aa8e:	e8 2d 89 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40aa93:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  40aa98:	48 8b 00             	mov    (%rax),%rax
  40aa9b:	48 01 c0             	add    %rax,%rax
  40aa9e:	e9 2f ff ff ff       	jmpq   40a9d2 <_ZZ4mainENKUlmE_clEm+0x232>
  40aaa3:	48 8d 87 98 00 00 00 	lea    0x98(%rdi),%rax
  40aaaa:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40aaaf:	48 8d 87 a8 00 00 00 	lea    0xa8(%rdi),%rax
  40aab6:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40aabb:	48 8d 87 b0 00 00 00 	lea    0xb0(%rdi),%rax
  40aac2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40aac7:	48 8d 87 b8 00 00 00 	lea    0xb8(%rdi),%rax
  40aace:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  40aad3:	48 8d 87 c0 00 00 00 	lea    0xc0(%rdi),%rax
  40aada:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  40aae0:	48 89 3c 24          	mov    %rdi,(%rsp)
  40aae4:	48 8d 87 c8 00 00 00 	lea    0xc8(%rdi),%rax
  40aaeb:	31 d2                	xor    %edx,%edx
  40aaed:	31 c9                	xor    %ecx,%ecx
  40aaef:	48 89 e6             	mov    %rsp,%rsi
  40aaf2:	bf 20 6c 40 00       	mov    $0x406c20,%edi
  40aaf7:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40aafc:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%rsp)
  40ab03:	00 
  40ab04:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  40ab0b:	00 00 
  40ab0d:	c5 f9 7f 44 24 20    	vmovdqa %xmm0,0x20(%rsp)
  40ab13:	e8 a8 88 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40ab18:	8b 44 24 40          	mov    0x40(%rsp),%eax
  40ab1c:	c5 fb 10 4c 24 38    	vmovsd 0x38(%rsp),%xmm1
  40ab22:	49 8b 54 24 78       	mov    0x78(%r12),%rdx
  40ab27:	c5 fb 11 0a          	vmovsd %xmm1,(%rdx)
  40ab2b:	85 c0                	test   %eax,%eax
  40ab2d:	75 21                	jne    40ab50 <_ZZ4mainENKUlmE_clEm+0x3b0>
  40ab2f:	c5 f1 54 05 c9 5c 00 	vandpd 0x5cc9(%rip),%xmm1,%xmm0        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40ab36:	00 
  40ab37:	c5 fb 10 15 d1 5b 00 	vmovsd 0x5bd1(%rip),%xmm2        # 410710 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  40ab3e:	00 
  40ab3f:	c5 f9 2e d0          	vucomisd %xmm0,%xmm2
  40ab43:	72 0b                	jb     40ab50 <_ZZ4mainENKUlmE_clEm+0x3b0>
  40ab45:	c5 f9 2f 0d 53 5c 00 	vcomisd 0x5c53(%rip),%xmm1        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  40ab4c:	00 
  40ab4d:	0f 97 c3             	seta   %bl
  40ab50:	49 8b b4 24 80 00 00 	mov    0x80(%r12),%rsi
  40ab57:	00 
  40ab58:	49 8b 8c 24 c8 00 00 	mov    0xc8(%r12),%rcx
  40ab5f:	00 
  40ab60:	22 1e                	and    (%rsi),%bl
  40ab62:	88 1e                	mov    %bl,(%rsi)
  40ab64:	80 39 00             	cmpb   $0x0,(%rcx)
  40ab67:	0f 84 d6 01 00 00    	je     40ad43 <_ZZ4mainENKUlmE_clEm+0x5a3>
  40ab6d:	49 8b 84 24 d8 00 00 	mov    0xd8(%r12),%rax
  40ab74:	00 
  40ab75:	c5 fa 7e 1d 83 5c 00 	vmovq  0x5c83(%rip),%xmm3        # 410800 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40ab7c:	00 
  40ab7d:	c5 fb 10 00          	vmovsd (%rax),%xmm0
  40ab81:	c5 f3 5c d0          	vsubsd %xmm0,%xmm1,%xmm2
  40ab85:	c5 f9 54 c3          	vandpd %xmm3,%xmm0,%xmm0
  40ab89:	c5 e9 54 d3          	vandpd %xmm3,%xmm2,%xmm2
  40ab8d:	c5 fb 10 1d 73 5b 00 	vmovsd 0x5b73(%rip),%xmm3        # 410708 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x148>
  40ab94:	00 
  40ab95:	c5 fb 59 c3          	vmulsd %xmm3,%xmm0,%xmm0
  40ab99:	c5 fb 5f c3          	vmaxsd %xmm3,%xmm0,%xmm0
  40ab9d:	c5 f9 2f c2          	vcomisd %xmm2,%xmm0
  40aba1:	0f 97 c0             	seta   %al
  40aba4:	21 c3                	and    %eax,%ebx
  40aba6:	88 1e                	mov    %bl,(%rsi)
  40aba8:	49 8b bc 24 b8 00 00 	mov    0xb8(%r12),%rdi
  40abaf:	00 
  40abb0:	49 8b 84 24 e0 00 00 	mov    0xe0(%r12),%rax
  40abb7:	00 
  40abb8:	80 3f 00             	cmpb   $0x0,(%rdi)
  40abbb:	48 63 00             	movslq (%rax),%rax
  40abbe:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  40abc2:	74 3b                	je     40abff <_ZZ4mainENKUlmE_clEm+0x45f>
  40abc4:	c5 eb 2a c0          	vcvtsi2sd %eax,%xmm2,%xmm0
  40abc8:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40abce:	c5 fb 59 05 da 5a 00 	vmulsd 0x5ada(%rip),%xmm0,%xmm0        # 4106b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  40abd5:	00 
  40abd6:	c5 fb 59 05 42 5b 00 	vmulsd 0x5b42(%rip),%xmm0,%xmm0        # 410720 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  40abdd:	00 
  40abde:	c5 fb 59 05 0a 5b 00 	vmulsd 0x5b0a(%rip),%xmm0,%xmm0        # 4106f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  40abe5:	00 
  40abe6:	c5 fb 59 05 3a 5b 00 	vmulsd 0x5b3a(%rip),%xmm0,%xmm0        # 410728 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  40abed:	00 
  40abee:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  40abf2:	41 0f 9b c0          	setnp  %r8b
  40abf6:	45 0f 45 c1          	cmovne %r9d,%r8d
  40abfa:	44 21 c3             	and    %r8d,%ebx
  40abfd:	88 1e                	mov    %bl,(%rsi)
  40abff:	4d 8b 84 24 c0 00 00 	mov    0xc0(%r12),%r8
  40ac06:	00 
  40ac07:	41 80 38 00          	cmpb   $0x0,(%r8)
  40ac0b:	74 3e                	je     40ac4b <_ZZ4mainENKUlmE_clEm+0x4ab>
  40ac0d:	4d 8b 8c 24 98 00 00 	mov    0x98(%r12),%r9
  40ac14:	00 
  40ac15:	ba 00 00 00 00       	mov    $0x0,%edx
  40ac1a:	c4 c1 6b 2a 01       	vcvtsi2sdl (%r9),%xmm2,%xmm0
  40ac1f:	c5 eb 2a d0          	vcvtsi2sd %eax,%xmm2,%xmm2
  40ac23:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40ac27:	c5 fb 59 05 f1 5a 00 	vmulsd 0x5af1(%rip),%xmm0,%xmm0        # 410720 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  40ac2e:	00 
  40ac2f:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  40ac33:	c5 fb 59 05 ed 5a 00 	vmulsd 0x5aed(%rip),%xmm0,%xmm0        # 410728 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  40ac3a:	00 
  40ac3b:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  40ac3f:	41 0f 9b c1          	setnp  %r9b
  40ac43:	41 0f 44 d1          	cmove  %r9d,%edx
  40ac47:	21 da                	and    %ebx,%edx
  40ac49:	88 16                	mov    %dl,(%rsi)
  40ac4b:	49 8b b4 24 a8 00 00 	mov    0xa8(%r12),%rsi
  40ac52:	00 
  40ac53:	48 ba 00 00 00 00 04 	movabs $0x400000000,%rdx
  40ac5a:	00 00 00 
  40ac5d:	80 3e 00             	cmpb   $0x0,(%rsi)
  40ac60:	75 42                	jne    40aca4 <_ZZ4mainENKUlmE_clEm+0x504>
  40ac62:	49 8b b4 24 b0 00 00 	mov    0xb0(%r12),%rsi
  40ac69:	00 
  40ac6a:	48 ba 00 00 00 00 08 	movabs $0x800000000,%rdx
  40ac71:	00 00 00 
  40ac74:	80 3e 00             	cmpb   $0x0,(%rsi)
  40ac77:	75 2b                	jne    40aca4 <_ZZ4mainENKUlmE_clEm+0x504>
  40ac79:	80 3f 00             	cmpb   $0x0,(%rdi)
  40ac7c:	48 ba 00 80 a8 12 01 	movabs $0x112a88000,%rdx
  40ac83:	00 00 00 
  40ac86:	75 1c                	jne    40aca4 <_ZZ4mainENKUlmE_clEm+0x504>
  40ac88:	41 80 38 00          	cmpb   $0x0,(%r8)
  40ac8c:	0f 84 ef 00 00 00    	je     40ad81 <_ZZ4mainENKUlmE_clEm+0x5e1>
  40ac92:	49 8b 94 24 98 00 00 	mov    0x98(%r12),%rdx
  40ac99:	00 
  40ac9a:	48 63 12             	movslq (%rdx),%rdx
  40ac9d:	48 69 d2 00 b0 71 0b 	imul   $0xb71b000,%rdx,%rdx
  40aca4:	48 0f af c2          	imul   %rdx,%rax
  40aca8:	e9 25 fd ff ff       	jmpq   40a9d2 <_ZZ4mainENKUlmE_clEm+0x232>
  40acad:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40acb1:	48 89 3c 24          	mov    %rdi,(%rsp)
  40acb5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40acba:	49 83 c4 30          	add    $0x30,%r12
  40acbe:	48 8d 47 28          	lea    0x28(%rdi),%rax
  40acc2:	31 c9                	xor    %ecx,%ecx
  40acc4:	31 d2                	xor    %edx,%edx
  40acc6:	48 89 e6             	mov    %rsp,%rsi
  40acc9:	bf b0 68 40 00       	mov    $0x4068b0,%edi
  40acce:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40acd3:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  40acd8:	e8 e3 86 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40acdd:	31 c0                	xor    %eax,%eax
  40acdf:	e9 ee fc ff ff       	jmpq   40a9d2 <_ZZ4mainENKUlmE_clEm+0x232>
  40ace4:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40ace8:	48 89 3c 24          	mov    %rdi,(%rsp)
  40acec:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40acf1:	49 83 c4 30          	add    $0x30,%r12
  40acf5:	48 8d 47 28          	lea    0x28(%rdi),%rax
  40acf9:	31 c9                	xor    %ecx,%ecx
  40acfb:	31 d2                	xor    %edx,%edx
  40acfd:	48 89 e6             	mov    %rsp,%rsi
  40ad00:	bf a0 a1 40 00       	mov    $0x40a1a0,%edi
  40ad05:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40ad0a:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
  40ad0f:	e8 ac 86 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40ad14:	31 c0                	xor    %eax,%eax
  40ad16:	e9 b7 fc ff ff       	jmpq   40a9d2 <_ZZ4mainENKUlmE_clEm+0x232>
  40ad1b:	89 7c 24 18          	mov    %edi,0x18(%rsp)
  40ad1f:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40ad24:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40ad29:	48 89 14 24          	mov    %rdx,(%rsp)
  40ad2d:	31 c9                	xor    %ecx,%ecx
  40ad2f:	31 d2                	xor    %edx,%edx
  40ad31:	48 89 e6             	mov    %rsp,%rsi
  40ad34:	bf 30 a6 40 00       	mov    $0x40a630,%edi
  40ad39:	e8 82 86 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40ad3e:	e9 4a fb ff ff       	jmpq   40a88d <_ZZ4mainENKUlmE_clEm+0xed>
  40ad43:	49 8b 84 24 d0 00 00 	mov    0xd0(%r12),%rax
  40ad4a:	00 
  40ad4b:	80 38 00             	cmpb   $0x0,(%rax)
  40ad4e:	0f 84 54 fe ff ff    	je     40aba8 <_ZZ4mainENKUlmE_clEm+0x408>
  40ad54:	e9 14 fe ff ff       	jmpq   40ab6d <_ZZ4mainENKUlmE_clEm+0x3cd>
  40ad59:	89 7c 24 18          	mov    %edi,0x18(%rsp)
  40ad5d:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40ad62:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40ad67:	48 89 14 24          	mov    %rdx,(%rsp)
  40ad6b:	31 c9                	xor    %ecx,%ecx
  40ad6d:	31 d2                	xor    %edx,%edx
  40ad6f:	48 89 e6             	mov    %rsp,%rsi
  40ad72:	bf 40 a2 40 00       	mov    $0x40a240,%edi
  40ad77:	e8 44 86 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40ad7c:	e9 0c fb ff ff       	jmpq   40a88d <_ZZ4mainENKUlmE_clEm+0xed>
  40ad81:	80 39 01             	cmpb   $0x1,(%rcx)
  40ad84:	48 19 d2             	sbb    %rdx,%rdx
  40ad87:	48 81 e2 00 f0 aa dd 	and    $0xffffffffddaaf000,%rdx
  40ad8e:	48 81 c2 00 20 aa 44 	add    $0x44aa2000,%rdx
  40ad95:	e9 0a ff ff ff       	jmpq   40aca4 <_ZZ4mainENKUlmE_clEm+0x504>
  40ad9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000040ada0 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>:
  40ada0:	41 56                	push   %r14
  40ada2:	ba 02 00 00 00       	mov    $0x2,%edx
  40ada7:	be 10 00 41 00       	mov    $0x410010,%esi
  40adac:	55                   	push   %rbp
  40adad:	48 89 fd             	mov    %rdi,%rbp
  40adb0:	bf 80 32 41 00       	mov    $0x413280,%edi
  40adb5:	53                   	push   %rbx
  40adb6:	c4 c1 f9 7e c6       	vmovq  %xmm0,%r14
  40adbb:	c4 e1 f9 7e cb       	vmovq  %xmm1,%rbx
  40adc0:	e8 3b 85 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40adc5:	48 89 ef             	mov    %rbp,%rdi
  40adc8:	e8 83 83 ff ff       	callq  403150 <strlen@plt>
  40adcd:	48 89 c2             	mov    %rax,%rdx
  40add0:	48 89 ee             	mov    %rbp,%rsi
  40add3:	bf 80 32 41 00       	mov    $0x413280,%edi
  40add8:	e8 23 85 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40addd:	bf 80 32 41 00       	mov    $0x413280,%edi
  40ade2:	ba 02 00 00 00       	mov    $0x2,%edx
  40ade7:	be 55 04 41 00       	mov    $0x410455,%esi
  40adec:	e8 0f 85 ff ff       	callq  403300 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40adf1:	c4 e1 f9 6e d3       	vmovq  %rbx,%xmm2
  40adf6:	c4 c1 f9 6e de       	vmovq  %r14,%xmm3
  40adfb:	5b                   	pop    %rbx
  40adfc:	c5 eb 5c c3          	vsubsd %xmm3,%xmm2,%xmm0
  40ae00:	5d                   	pop    %rbp
  40ae01:	bf 80 32 41 00       	mov    $0x413280,%edi
  40ae06:	41 5e                	pop    %r14
  40ae08:	e9 03 86 ff ff       	jmpq   403410 <_ZNSo9_M_insertIdEERSoT_@plt>
  40ae0d:	90                   	nop
  40ae0e:	66 90                	xchg   %ax,%ax

000000000040ae10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>:
  40ae10:	41 55                	push   %r13
  40ae12:	41 54                	push   %r12
  40ae14:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  40ae18:	55                   	push   %rbp
  40ae19:	53                   	push   %rbx
  40ae1a:	48 83 ec 18          	sub    $0x18,%rsp
  40ae1e:	4c 89 27             	mov    %r12,(%rdi)
  40ae21:	48 85 f6             	test   %rsi,%rsi
  40ae24:	0f 84 8c 00 00 00    	je     40aeb6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0xa6>
  40ae2a:	48 89 fb             	mov    %rdi,%rbx
  40ae2d:	48 89 f7             	mov    %rsi,%rdi
  40ae30:	48 89 f5             	mov    %rsi,%rbp
  40ae33:	e8 18 83 ff ff       	callq  403150 <strlen@plt>
  40ae38:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40ae3d:	49 89 c5             	mov    %rax,%r13
  40ae40:	48 83 f8 0f          	cmp    $0xf,%rax
  40ae44:	77 3a                	ja     40ae80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x70>
  40ae46:	48 83 f8 01          	cmp    $0x1,%rax
  40ae4a:	75 24                	jne    40ae70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x60>
  40ae4c:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
  40ae50:	88 53 10             	mov    %dl,0x10(%rbx)
  40ae53:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40ae57:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
  40ae5c:	48 83 c4 18          	add    $0x18,%rsp
  40ae60:	5b                   	pop    %rbx
  40ae61:	5d                   	pop    %rbp
  40ae62:	41 5c                	pop    %r12
  40ae64:	41 5d                	pop    %r13
  40ae66:	c3                   	retq   
  40ae67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40ae6e:	00 00 
  40ae70:	48 85 c0             	test   %rax,%rax
  40ae73:	74 de                	je     40ae53 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  40ae75:	eb 27                	jmp    40ae9e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x8e>
  40ae77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40ae7e:	00 00 
  40ae80:	31 d2                	xor    %edx,%edx
  40ae82:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  40ae87:	48 89 df             	mov    %rbx,%rdi
  40ae8a:	e8 f1 85 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40ae8f:	48 89 03             	mov    %rax,(%rbx)
  40ae92:	49 89 c4             	mov    %rax,%r12
  40ae95:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40ae9a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40ae9e:	4c 89 e7             	mov    %r12,%rdi
  40aea1:	4c 89 ea             	mov    %r13,%rdx
  40aea4:	48 89 ee             	mov    %rbp,%rsi
  40aea7:	e8 c4 83 ff ff       	callq  403270 <memcpy@plt>
  40aeac:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40aeb1:	4c 8b 23             	mov    (%rbx),%r12
  40aeb4:	eb 9d                	jmp    40ae53 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  40aeb6:	bf 60 04 41 00       	mov    $0x410460,%edi
  40aebb:	e8 40 83 ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>

000000000040aec0 <_Z8clock_nsv>:
  40aec0:	48 83 ec 18          	sub    $0x18,%rsp
  40aec4:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40aec8:	48 89 e6             	mov    %rsp,%rsi
  40aecb:	bf 01 00 00 00       	mov    $0x1,%edi
  40aed0:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  40aed5:	e8 c6 83 ff ff       	callq  4032a0 <clock_gettime@plt>
  40aeda:	48 69 04 24 00 ca 9a 	imul   $0x3b9aca00,(%rsp),%rax
  40aee1:	3b 
  40aee2:	48 03 44 24 08       	add    0x8(%rsp),%rax
  40aee7:	48 83 c4 18          	add    $0x18,%rsp
  40aeeb:	c3                   	retq   
  40aeec:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040aef0 <_Z9perf_openjmm>:
  40aef0:	48 83 ec 58          	sub    $0x58,%rsp
  40aef4:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40aef8:	89 3c 24             	mov    %edi,(%rsp)
  40aefb:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  40af00:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40af06:	48 89 e6             	mov    %rsp,%rsi
  40af09:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
  40af0e:	45 31 c9             	xor    %r9d,%r9d
  40af11:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40af17:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40af1c:	31 d2                	xor    %edx,%edx
  40af1e:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40af23:	31 c0                	xor    %eax,%eax
  40af25:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40af2c:	00 00 
  40af2e:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40af35:	00 
  40af36:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40af3d:	00 00 
  40af3f:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40af46:	00 00 
  40af48:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40af4e:	e8 fd 80 ff ff       	callq  403050 <syscall@plt>
  40af53:	48 83 c4 58          	add    $0x58,%rsp
  40af57:	c3                   	retq   
  40af58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40af5f:	00 

000000000040af60 <_Z11alloc_bytesmb>:
  40af60:	41 54                	push   %r12
  40af62:	55                   	push   %rbp
  40af63:	48 83 ec 08          	sub    $0x8,%rsp
  40af67:	48 81 ff ff ff 1f 00 	cmp    $0x1fffff,%rdi
  40af6e:	76 48                	jbe    40afb8 <_Z11alloc_bytesmb+0x58>
  40af70:	40 84 f6             	test   %sil,%sil
  40af73:	74 43                	je     40afb8 <_Z11alloc_bytesmb+0x58>
  40af75:	48 8d af ff ff 1f 00 	lea    0x1fffff(%rdi),%rbp
  40af7c:	48 81 e5 00 00 e0 ff 	and    $0xffffffffffe00000,%rbp
  40af83:	48 89 ee             	mov    %rbp,%rsi
  40af86:	bf 00 00 20 00       	mov    $0x200000,%edi
  40af8b:	e8 a0 82 ff ff       	callq  403230 <aligned_alloc@plt>
  40af90:	49 89 c4             	mov    %rax,%r12
  40af93:	48 85 c0             	test   %rax,%rax
  40af96:	74 49                	je     40afe1 <_Z11alloc_bytesmb+0x81>
  40af98:	48 89 ee             	mov    %rbp,%rsi
  40af9b:	4c 89 e7             	mov    %r12,%rdi
  40af9e:	ba 0e 00 00 00       	mov    $0xe,%edx
  40afa3:	e8 88 83 ff ff       	callq  403330 <madvise@plt>
  40afa8:	48 83 c4 08          	add    $0x8,%rsp
  40afac:	5d                   	pop    %rbp
  40afad:	4c 89 e0             	mov    %r12,%rax
  40afb0:	41 5c                	pop    %r12
  40afb2:	c3                   	retq   
  40afb3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40afb8:	48 8d 77 3f          	lea    0x3f(%rdi),%rsi
  40afbc:	48 83 e6 c0          	and    $0xffffffffffffffc0,%rsi
  40afc0:	bf 40 00 00 00       	mov    $0x40,%edi
  40afc5:	e8 66 82 ff ff       	callq  403230 <aligned_alloc@plt>
  40afca:	49 89 c4             	mov    %rax,%r12
  40afcd:	48 85 c0             	test   %rax,%rax
  40afd0:	0f 84 1a 85 ff ff    	je     4034f0 <_Z11alloc_bytesmb.cold>
  40afd6:	48 83 c4 08          	add    $0x8,%rsp
  40afda:	5d                   	pop    %rbp
  40afdb:	4c 89 e0             	mov    %r12,%rax
  40afde:	41 5c                	pop    %r12
  40afe0:	c3                   	retq   
  40afe1:	e9 0a 85 ff ff       	jmpq   4034f0 <_Z11alloc_bytesmb.cold>
  40afe6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40afed:	00 00 00 

000000000040aff0 <main._omp_fn.2>:
  40aff0:	55                   	push   %rbp
  40aff1:	48 89 fd             	mov    %rdi,%rbp
  40aff4:	53                   	push   %rbx
  40aff5:	48 83 ec 08          	sub    $0x8,%rsp
  40aff9:	e8 02 84 ff ff       	callq  403400 <omp_get_thread_num@plt>
  40affe:	48 63 d8             	movslq %eax,%rbx
  40b001:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40b005:	0f b6 75 18          	movzbl 0x18(%rbp),%esi
  40b009:	48 8b 38             	mov    (%rax),%rdi
  40b00c:	e8 4f ff ff ff       	callq  40af60 <_Z11alloc_bytesmb>
  40b011:	48 89 c6             	mov    %rax,%rsi
  40b014:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40b018:	48 8b 38             	mov    (%rax),%rdi
  40b01b:	48 c1 ef 03          	shr    $0x3,%rdi
  40b01f:	74 7f                	je     40b0a0 <main._omp_fn.2+0xb0>
  40b021:	c5 fb 10 1d 67 56 00 	vmovsd 0x5667(%rip),%xmm3        # 410690 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd0>
  40b028:	00 
  40b029:	c5 fb 10 15 7f 57 00 	vmovsd 0x577f(%rip),%xmm2        # 4107b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  40b030:	00 
  40b031:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
  40b035:	31 c9                	xor    %ecx,%ecx
  40b037:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  40b03b:	49 b8 f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r8
  40b042:	f0 f0 f0 
  40b045:	0f 1f 00             	nopl   (%rax)
  40b048:	48 89 c8             	mov    %rcx,%rax
  40b04b:	49 f7 e0             	mul    %r8
  40b04e:	48 89 d0             	mov    %rdx,%rax
  40b051:	48 c1 e8 04          	shr    $0x4,%rax
  40b055:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  40b059:	48 01 c2             	add    %rax,%rdx
  40b05c:	48 89 c8             	mov    %rcx,%rax
  40b05f:	48 29 d0             	sub    %rdx,%rax
  40b062:	c4 e1 db 2a c0       	vcvtsi2sd %rax,%xmm4,%xmm0
  40b067:	c4 e2 e9 99 c3       	vfmadd132sd %xmm3,%xmm2,%xmm0
  40b06c:	c5 fb 11 04 ce       	vmovsd %xmm0,(%rsi,%rcx,8)
  40b071:	48 ff c1             	inc    %rcx
  40b074:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40b078:	48 39 cf             	cmp    %rcx,%rdi
  40b07b:	75 cb                	jne    40b048 <main._omp_fn.2+0x58>
  40b07d:	48 8b 45 00          	mov    0x0(%rbp),%rax
  40b081:	48 8b 00             	mov    (%rax),%rax
  40b084:	48 89 34 d8          	mov    %rsi,(%rax,%rbx,8)
  40b088:	48 8b 45 08          	mov    0x8(%rbp),%rax
  40b08c:	48 8b 00             	mov    (%rax),%rax
  40b08f:	c5 fb 11 0c d8       	vmovsd %xmm1,(%rax,%rbx,8)
  40b094:	48 83 c4 08          	add    $0x8,%rsp
  40b098:	5b                   	pop    %rbx
  40b099:	5d                   	pop    %rbp
  40b09a:	c3                   	retq   
  40b09b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40b0a0:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  40b0a4:	eb d7                	jmp    40b07d <main._omp_fn.2+0x8d>
  40b0a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40b0ad:	00 00 00 

000000000040b0b0 <_Z6windowid>:
  40b0b0:	55                   	push   %rbp
  40b0b1:	48 89 e5             	mov    %rsp,%rbp
  40b0b4:	41 57                	push   %r15
  40b0b6:	41 56                	push   %r14
  40b0b8:	41 55                	push   %r13
  40b0ba:	41 54                	push   %r12
  40b0bc:	41 89 fc             	mov    %edi,%r12d
  40b0bf:	bf 25 00 41 00       	mov    $0x410025,%edi
  40b0c4:	53                   	push   %rbx
  40b0c5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40b0c9:	48 81 ec a0 03 00 00 	sub    $0x3a0,%rsp
  40b0d0:	e8 6b 82 ff ff       	callq  403340 <getenv@plt>
  40b0d5:	48 85 c0             	test   %rax,%rax
  40b0d8:	0f 84 0f 1c 00 00    	je     40cced <_Z6windowid+0x1c3d>
  40b0de:	48 89 c7             	mov    %rax,%rdi
  40b0e1:	49 89 c5             	mov    %rax,%r13
  40b0e4:	e8 67 80 ff ff       	callq  403150 <strlen@plt>
  40b0e9:	48 8d 8c 24 00 01 00 	lea    0x100(%rsp),%rcx
  40b0f0:	00 
  40b0f1:	48 89 8c 24 f0 00 00 	mov    %rcx,0xf0(%rsp)
  40b0f8:	00 
  40b0f9:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b100:	00 
  40b101:	49 89 c6             	mov    %rax,%r14
  40b104:	48 83 f8 0f          	cmp    $0xf,%rax
  40b108:	0f 87 92 01 00 00    	ja     40b2a0 <_Z6windowid+0x1f0>
  40b10e:	48 83 f8 01          	cmp    $0x1,%rax
  40b112:	0f 85 6a 1d 00 00    	jne    40ce82 <_Z6windowid+0x1dd2>
  40b118:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40b11d:	88 94 24 00 01 00 00 	mov    %dl,0x100(%rsp)
  40b124:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40b12b:	00 
  40b12c:	48 89 84 24 f8 00 00 	mov    %rax,0xf8(%rsp)
  40b133:	00 
  40b134:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40b138:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  40b13f:	00 
  40b140:	e8 6b 7f ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40b145:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40b14c:	00 
  40b14d:	e8 0e 81 ff ff       	callq  403260 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40b152:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40b159:	00 
  40b15a:	e8 71 80 ff ff       	callq  4031d0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@plt>
  40b15f:	bf 2e 05 41 00       	mov    $0x41052e,%edi
  40b164:	e8 d7 81 ff ff       	callq  403340 <getenv@plt>
  40b169:	49 89 c5             	mov    %rax,%r13
  40b16c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b173:	00 
  40b174:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b17b:	00 
  40b17c:	4d 85 ed             	test   %r13,%r13
  40b17f:	0f 84 61 20 00 00    	je     40d1e6 <_Z6windowid+0x2136>
  40b185:	4c 89 ef             	mov    %r13,%rdi
  40b188:	e8 c3 7f ff ff       	callq  403150 <strlen@plt>
  40b18d:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b194:	00 
  40b195:	49 89 c6             	mov    %rax,%r14
  40b198:	48 83 f8 0f          	cmp    $0xf,%rax
  40b19c:	0f 87 86 1c 00 00    	ja     40ce28 <_Z6windowid+0x1d78>
  40b1a2:	48 83 f8 01          	cmp    $0x1,%rax
  40b1a6:	0f 85 59 1c 00 00    	jne    40ce05 <_Z6windowid+0x1d55>
  40b1ac:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  40b1b3:	00 
  40b1b4:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40b1b9:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  40b1be:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  40b1c5:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40b1cc:	00 
  40b1cd:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40b1d4:	00 
  40b1d5:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40b1d9:	e8 62 7e ff ff       	callq  403040 <__errno_location@plt>
  40b1de:	48 8b 9c 24 80 01 00 	mov    0x180(%rsp),%rbx
  40b1e5:	00 
  40b1e6:	44 8b 28             	mov    (%rax),%r13d
  40b1e9:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40b1ef:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40b1f4:	ba 0a 00 00 00       	mov    $0xa,%edx
  40b1f9:	48 89 df             	mov    %rbx,%rdi
  40b1fc:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  40b201:	e8 6a 81 ff ff       	callq  403370 <strtol@plt>
  40b206:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  40b20b:	48 3b 9c 24 50 01 00 	cmp    0x150(%rsp),%rbx
  40b212:	00 
  40b213:	0f 84 d7 1f 00 00    	je     40d1f0 <_Z6windowid+0x2140>
  40b219:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b21e:	8b 10                	mov    (%rax),%edx
  40b220:	83 fa 22             	cmp    $0x22,%edx
  40b223:	0f 84 d1 1f 00 00    	je     40d1fa <_Z6windowid+0x214a>
  40b229:	b8 00 00 00 80       	mov    $0x80000000,%eax
  40b22e:	48 03 44 24 48       	add    0x48(%rsp),%rax
  40b233:	48 c1 e8 20          	shr    $0x20,%rax
  40b237:	0f 85 bd 1f 00 00    	jne    40d1fa <_Z6windowid+0x214a>
  40b23d:	85 d2                	test   %edx,%edx
  40b23f:	75 08                	jne    40b249 <_Z6windowid+0x199>
  40b241:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b246:	44 89 28             	mov    %r13d,(%rax)
  40b249:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40b250:	00 
  40b251:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b258:	00 
  40b259:	48 39 c7             	cmp    %rax,%rdi
  40b25c:	74 11                	je     40b26f <_Z6windowid+0x1bf>
  40b25e:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40b265:	00 
  40b266:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b26a:	e8 61 80 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40b26f:	bf 86 00 41 00       	mov    $0x410086,%edi
  40b274:	e8 c7 80 ff ff       	callq  403340 <getenv@plt>
  40b279:	49 89 c5             	mov    %rax,%r13
  40b27c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b283:	00 
  40b284:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b28b:	00 
  40b28c:	4d 85 ed             	test   %r13,%r13
  40b28f:	75 61                	jne    40b2f2 <_Z6windowid+0x242>
  40b291:	bf 60 04 41 00       	mov    $0x410460,%edi
  40b296:	e8 65 7f ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40b29b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40b2a0:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40b2a7:	00 
  40b2a8:	31 d2                	xor    %edx,%edx
  40b2aa:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40b2b1:	00 
  40b2b2:	e8 c9 81 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40b2b7:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
  40b2be:	00 
  40b2bf:	48 89 c7             	mov    %rax,%rdi
  40b2c2:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40b2c9:	00 
  40b2ca:	48 89 84 24 00 01 00 	mov    %rax,0x100(%rsp)
  40b2d1:	00 
  40b2d2:	4c 89 f2             	mov    %r14,%rdx
  40b2d5:	4c 89 ee             	mov    %r13,%rsi
  40b2d8:	e8 93 7f ff ff       	callq  403270 <memcpy@plt>
  40b2dd:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40b2e4:	00 
  40b2e5:	48 8b 94 24 f0 00 00 	mov    0xf0(%rsp),%rdx
  40b2ec:	00 
  40b2ed:	e9 3a fe ff ff       	jmpq   40b12c <_Z6windowid+0x7c>
  40b2f2:	4c 89 ef             	mov    %r13,%rdi
  40b2f5:	e8 56 7e ff ff       	callq  403150 <strlen@plt>
  40b2fa:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b301:	00 
  40b302:	49 89 c6             	mov    %rax,%r14
  40b305:	48 83 f8 0f          	cmp    $0xf,%rax
  40b309:	0f 87 91 1a 00 00    	ja     40cda0 <_Z6windowid+0x1cf0>
  40b30f:	48 83 f8 01          	cmp    $0x1,%rax
  40b313:	0f 85 d6 1a 00 00    	jne    40cdef <_Z6windowid+0x1d3f>
  40b319:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40b31e:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  40b325:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40b32c:	00 
  40b32d:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40b334:	00 
  40b335:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40b339:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b33e:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40b343:	4c 8b ac 24 80 01 00 	mov    0x180(%rsp),%r13
  40b34a:	00 
  40b34b:	8b 18                	mov    (%rax),%ebx
  40b34d:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40b353:	ba 0a 00 00 00       	mov    $0xa,%edx
  40b358:	4c 89 ef             	mov    %r13,%rdi
  40b35b:	e8 10 80 ff ff       	callq  403370 <strtol@plt>
  40b360:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40b365:	4c 3b ac 24 50 01 00 	cmp    0x150(%rsp),%r13
  40b36c:	00 
  40b36d:	0f 84 7d 1f 00 00    	je     40d2f0 <_Z6windowid+0x2240>
  40b373:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b378:	8b 10                	mov    (%rax),%edx
  40b37a:	83 fa 22             	cmp    $0x22,%edx
  40b37d:	0f 84 30 1e 00 00    	je     40d1b3 <_Z6windowid+0x2103>
  40b383:	b8 00 00 00 80       	mov    $0x80000000,%eax
  40b388:	48 03 44 24 28       	add    0x28(%rsp),%rax
  40b38d:	48 c1 e8 20          	shr    $0x20,%rax
  40b391:	0f 85 1c 1e 00 00    	jne    40d1b3 <_Z6windowid+0x2103>
  40b397:	85 d2                	test   %edx,%edx
  40b399:	75 07                	jne    40b3a2 <_Z6windowid+0x2f2>
  40b39b:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b3a0:	89 18                	mov    %ebx,(%rax)
  40b3a2:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40b3a9:	00 
  40b3aa:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b3b1:	00 
  40b3b2:	48 39 c7             	cmp    %rax,%rdi
  40b3b5:	74 11                	je     40b3c8 <_Z6windowid+0x318>
  40b3b7:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40b3be:	00 
  40b3bf:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b3c3:	e8 08 7f ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40b3c8:	44 89 e0             	mov    %r12d,%eax
  40b3cb:	c1 f8 1f             	sar    $0x1f,%eax
  40b3ce:	45 89 e5             	mov    %r12d,%r13d
  40b3d1:	41 31 c4             	xor    %eax,%r12d
  40b3d4:	41 29 c4             	sub    %eax,%r12d
  40b3d7:	41 c1 ed 1f          	shr    $0x1f,%r13d
  40b3db:	41 83 fc 09          	cmp    $0x9,%r12d
  40b3df:	0f 86 88 1d 00 00    	jbe    40d16d <_Z6windowid+0x20bd>
  40b3e5:	41 83 fc 63          	cmp    $0x63,%r12d
  40b3e9:	0f 86 88 1d 00 00    	jbe    40d177 <_Z6windowid+0x20c7>
  40b3ef:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  40b3f6:	0f 86 85 1d 00 00    	jbe    40d181 <_Z6windowid+0x20d1>
  40b3fc:	44 89 e2             	mov    %r12d,%edx
  40b3ff:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  40b406:	0f 86 7f 1d 00 00    	jbe    40d18b <_Z6windowid+0x20db>
  40b40c:	bb 01 00 00 00       	mov    $0x1,%ebx
  40b411:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  40b418:	c5 6d 34 
  40b41b:	eb 24                	jmp    40b441 <_Z6windowid+0x391>
  40b41d:	0f 1f 00             	nopl   (%rax)
  40b420:	83 fa 63             	cmp    $0x63,%edx
  40b423:	0f 86 44 1c 00 00    	jbe    40d06d <_Z6windowid+0x1fbd>
  40b429:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40b42f:	0f 86 30 1c 00 00    	jbe    40d065 <_Z6windowid+0x1fb5>
  40b435:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40b43b:	0f 86 34 1c 00 00    	jbe    40d075 <_Z6windowid+0x1fc5>
  40b441:	48 89 d0             	mov    %rdx,%rax
  40b444:	48 89 d1             	mov    %rdx,%rcx
  40b447:	48 f7 e6             	mul    %rsi
  40b44a:	89 d8                	mov    %ebx,%eax
  40b44c:	83 c3 04             	add    $0x4,%ebx
  40b44f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40b453:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40b45a:	77 c4                	ja     40b420 <_Z6windowid+0x370>
  40b45c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b463:	00 
  40b464:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  40b469:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40b46e:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b475:	00 
  40b476:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b47d:	00 
  40b47e:	e8 8d 7e ff ff       	callq  403310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40b483:	45 0f b6 ed          	movzbl %r13b,%r13d
  40b487:	4c 03 ac 24 80 01 00 	add    0x180(%rsp),%r13
  40b48e:	00 
  40b48f:	ff cb                	dec    %ebx
  40b491:	41 83 fc 63          	cmp    $0x63,%r12d
  40b495:	76 52                	jbe    40b4e9 <_Z6windowid+0x439>
  40b497:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40b49e:	00 00 
  40b4a0:	44 89 e2             	mov    %r12d,%edx
  40b4a3:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40b4aa:	44 89 e0             	mov    %r12d,%eax
  40b4ad:	48 c1 ea 25          	shr    $0x25,%rdx
  40b4b1:	6b ca 64             	imul   $0x64,%edx,%ecx
  40b4b4:	29 c8                	sub    %ecx,%eax
  40b4b6:	01 c0                	add    %eax,%eax
  40b4b8:	8d 70 01             	lea    0x1(%rax),%esi
  40b4bb:	0f b6 b6 c0 05 41 00 	movzbl 0x4105c0(%rsi),%esi
  40b4c2:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40b4c9:	44 89 e1             	mov    %r12d,%ecx
  40b4cc:	41 89 d4             	mov    %edx,%r12d
  40b4cf:	89 da                	mov    %ebx,%edx
  40b4d1:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  40b4d6:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40b4d9:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  40b4de:	83 eb 02             	sub    $0x2,%ebx
  40b4e1:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  40b4e7:	77 b7                	ja     40b4a0 <_Z6windowid+0x3f0>
  40b4e9:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40b4ee:	41 83 fc 09          	cmp    $0x9,%r12d
  40b4f2:	76 1c                	jbe    40b510 <_Z6windowid+0x460>
  40b4f4:	45 01 e4             	add    %r12d,%r12d
  40b4f7:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40b4fc:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40b503:	41 88 45 01          	mov    %al,0x1(%r13)
  40b507:	41 0f b6 84 24 c0 05 	movzbl 0x4105c0(%r12),%eax
  40b50e:	41 00 
  40b510:	41 88 45 00          	mov    %al,0x0(%r13)
  40b514:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  40b51a:	b9 3b 00 41 00       	mov    $0x41003b,%ecx
  40b51f:	31 d2                	xor    %edx,%edx
  40b521:	31 f6                	xor    %esi,%esi
  40b523:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b52a:	00 
  40b52b:	e8 b0 7e ff ff       	callq  4033e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40b530:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
  40b537:	00 
  40b538:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  40b53d:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40b541:	48 8b 08             	mov    (%rax),%rcx
  40b544:	48 39 d1             	cmp    %rdx,%rcx
  40b547:	0f 84 a1 1a 00 00    	je     40cfee <_Z6windowid+0x1f3e>
  40b54d:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  40b552:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40b556:	48 89 8c 24 80 00 00 	mov    %rcx,0x80(%rsp)
  40b55d:	00 
  40b55e:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40b562:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40b566:	48 89 4c 24 78       	mov    %rcx,0x78(%rsp)
  40b56b:	48 89 10             	mov    %rdx,(%rax)
  40b56e:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40b575:	00 
  40b576:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b57d:	00 
  40b57e:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40b585:	00 
  40b586:	48 39 c7             	cmp    %rax,%rdi
  40b589:	74 11                	je     40b59c <_Z6windowid+0x4ec>
  40b58b:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40b592:	00 
  40b593:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b597:	e8 34 7d ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40b59c:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
  40b5a1:	41 89 c5             	mov    %eax,%r13d
  40b5a4:	41 89 c4             	mov    %eax,%r12d
  40b5a7:	41 f7 dc             	neg    %r12d
  40b5aa:	41 c1 ed 1f          	shr    $0x1f,%r13d
  40b5ae:	48 85 c0             	test   %rax,%rax
  40b5b1:	44 0f 49 e0          	cmovns %eax,%r12d
  40b5b5:	41 83 fc 09          	cmp    $0x9,%r12d
  40b5b9:	0f 86 ea 1b 00 00    	jbe    40d1a9 <_Z6windowid+0x20f9>
  40b5bf:	41 83 fc 63          	cmp    $0x63,%r12d
  40b5c3:	0f 86 9a 1b 00 00    	jbe    40d163 <_Z6windowid+0x20b3>
  40b5c9:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  40b5d0:	0f 86 bf 1b 00 00    	jbe    40d195 <_Z6windowid+0x20e5>
  40b5d6:	44 89 e2             	mov    %r12d,%edx
  40b5d9:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  40b5e0:	0f 86 b9 1b 00 00    	jbe    40d19f <_Z6windowid+0x20ef>
  40b5e6:	bb 01 00 00 00       	mov    $0x1,%ebx
  40b5eb:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  40b5f2:	c5 6d 34 
  40b5f5:	eb 2a                	jmp    40b621 <_Z6windowid+0x571>
  40b5f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40b5fe:	00 00 
  40b600:	83 fa 63             	cmp    $0x63,%edx
  40b603:	0f 86 54 1a 00 00    	jbe    40d05d <_Z6windowid+0x1fad>
  40b609:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40b60f:	0f 86 40 1a 00 00    	jbe    40d055 <_Z6windowid+0x1fa5>
  40b615:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40b61b:	0f 86 5c 1a 00 00    	jbe    40d07d <_Z6windowid+0x1fcd>
  40b621:	48 89 d0             	mov    %rdx,%rax
  40b624:	48 89 d1             	mov    %rdx,%rcx
  40b627:	48 f7 e6             	mul    %rsi
  40b62a:	89 d8                	mov    %ebx,%eax
  40b62c:	83 c3 04             	add    $0x4,%ebx
  40b62f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40b633:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40b63a:	77 c4                	ja     40b600 <_Z6windowid+0x550>
  40b63c:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40b643:	00 
  40b644:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  40b649:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40b64e:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40b655:	00 
  40b656:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  40b65d:	00 
  40b65e:	e8 ad 7c ff ff       	callq  403310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40b663:	45 0f b6 ed          	movzbl %r13b,%r13d
  40b667:	4c 03 ac 24 b0 00 00 	add    0xb0(%rsp),%r13
  40b66e:	00 
  40b66f:	ff cb                	dec    %ebx
  40b671:	41 83 fc 63          	cmp    $0x63,%r12d
  40b675:	76 52                	jbe    40b6c9 <_Z6windowid+0x619>
  40b677:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40b67e:	00 00 
  40b680:	44 89 e2             	mov    %r12d,%edx
  40b683:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40b68a:	44 89 e0             	mov    %r12d,%eax
  40b68d:	48 c1 ea 25          	shr    $0x25,%rdx
  40b691:	6b ca 64             	imul   $0x64,%edx,%ecx
  40b694:	29 c8                	sub    %ecx,%eax
  40b696:	01 c0                	add    %eax,%eax
  40b698:	8d 70 01             	lea    0x1(%rax),%esi
  40b69b:	0f b6 b6 c0 05 41 00 	movzbl 0x4105c0(%rsi),%esi
  40b6a2:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40b6a9:	44 89 e1             	mov    %r12d,%ecx
  40b6ac:	41 89 d4             	mov    %edx,%r12d
  40b6af:	89 da                	mov    %ebx,%edx
  40b6b1:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  40b6b6:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40b6b9:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  40b6be:	83 eb 02             	sub    $0x2,%ebx
  40b6c1:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  40b6c7:	77 b7                	ja     40b680 <_Z6windowid+0x5d0>
  40b6c9:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40b6ce:	41 83 fc 09          	cmp    $0x9,%r12d
  40b6d2:	76 1c                	jbe    40b6f0 <_Z6windowid+0x640>
  40b6d4:	45 01 e4             	add    %r12d,%r12d
  40b6d7:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40b6dc:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40b6e3:	41 88 45 01          	mov    %al,0x1(%r13)
  40b6e7:	41 0f b6 84 24 c0 05 	movzbl 0x4105c0(%r12),%eax
  40b6ee:	41 00 
  40b6f0:	41 88 45 00          	mov    %al,0x0(%r13)
  40b6f4:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40b6fb:	00 
  40b6fc:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40b703:	00 
  40b704:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40b709:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40b70e:	4c 89 e8             	mov    %r13,%rax
  40b711:	4c 01 e0             	add    %r12,%rax
  40b714:	74 09                	je     40b71f <_Z6windowid+0x66f>
  40b716:	4d 85 ed             	test   %r13,%r13
  40b719:	0f 84 db 1b 00 00    	je     40d2fa <_Z6windowid+0x224a>
  40b71f:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40b726:	00 
  40b727:	49 83 fc 0f          	cmp    $0xf,%r12
  40b72b:	0f 87 31 18 00 00    	ja     40cf62 <_Z6windowid+0x1eb2>
  40b731:	49 83 fc 01          	cmp    $0x1,%r12
  40b735:	0f 85 11 18 00 00    	jne    40cf4c <_Z6windowid+0x1e9c>
  40b73b:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40b740:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  40b747:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40b74e:	00 
  40b74f:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  40b756:	00 
  40b757:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40b75c:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40b763:	ff ff 3f 
  40b766:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  40b76d:	00 
  40b76e:	48 83 f8 05          	cmp    $0x5,%rax
  40b772:	0f 86 5a 1b 00 00    	jbe    40d2d2 <_Z6windowid+0x2222>
  40b778:	ba 06 00 00 00       	mov    $0x6,%edx
  40b77d:	be 3f 00 41 00       	mov    $0x41003f,%esi
  40b782:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40b789:	00 
  40b78a:	e8 61 79 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40b78f:	4c 8b 8c 24 90 00 00 	mov    0x90(%rsp),%r9
  40b796:	00 
  40b797:	b8 0f 00 00 00       	mov    $0xf,%eax
  40b79c:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  40b7a3:	00 
  40b7a4:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  40b7ab:	00 
  40b7ac:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  40b7b3:	00 
  40b7b4:	49 39 d9             	cmp    %rbx,%r9
  40b7b7:	48 89 c7             	mov    %rax,%rdi
  40b7ba:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  40b7c1:	00 00 
  40b7c3:	49 8d 0c 10          	lea    (%r8,%rdx,1),%rcx
  40b7c7:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  40b7ce:	00 
  40b7cf:	48 39 f9             	cmp    %rdi,%rcx
  40b7d2:	76 1d                	jbe    40b7f1 <_Z6windowid+0x741>
  40b7d4:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  40b7db:	00 
  40b7dc:	48 39 de             	cmp    %rbx,%rsi
  40b7df:	48 0f 45 84 24 c0 00 	cmovne 0xc0(%rsp),%rax
  40b7e6:	00 00 
  40b7e8:	48 39 c1             	cmp    %rax,%rcx
  40b7eb:	0f 86 4b 18 00 00    	jbe    40d03c <_Z6windowid+0x1f8c>
  40b7f1:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40b7f8:	00 
  40b7f9:	e8 f2 78 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40b7fe:	4c 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%r15
  40b805:	00 
  40b806:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40b80d:	00 
  40b80e:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40b812:	48 8b 08             	mov    (%rax),%rcx
  40b815:	48 39 d1             	cmp    %rdx,%rcx
  40b818:	0f 84 bd 17 00 00    	je     40cfdb <_Z6windowid+0x1f2b>
  40b81e:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  40b825:	00 
  40b826:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40b82a:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  40b831:	00 
  40b832:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40b836:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  40b83d:	00 
  40b83e:	48 89 10             	mov    %rdx,(%rax)
  40b841:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40b845:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40b84c:	00 
  40b84d:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40b854:	00 
  40b855:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40b85c:	00 
  40b85d:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40b864:	00 
  40b865:	4c 39 f8             	cmp    %r15,%rax
  40b868:	0f 84 56 17 00 00    	je     40cfc4 <_Z6windowid+0x1f14>
  40b86e:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40b875:	00 
  40b876:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40b87d:	00 
  40b87e:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40b885:	00 
  40b886:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40b88d:	00 
  40b88e:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40b895:	00 
  40b896:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
  40b89d:	00 
  40b89e:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40b8a5:	00 
  40b8a6:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40b8ad:	00 00 00 00 00 
  40b8b2:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40b8b9:	00 
  40b8ba:	e8 f1 77 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40b8bf:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40b8c6:	00 
  40b8c7:	e8 94 79 ff ff       	callq  403260 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40b8cc:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40b8d3:	00 
  40b8d4:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b8db:	00 
  40b8dc:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40b8e3:	00 
  40b8e4:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b8eb:	00 
  40b8ec:	4c 89 e8             	mov    %r13,%rax
  40b8ef:	4c 01 e0             	add    %r12,%rax
  40b8f2:	74 09                	je     40b8fd <_Z6windowid+0x84d>
  40b8f4:	4d 85 ed             	test   %r13,%r13
  40b8f7:	0f 84 e9 19 00 00    	je     40d2e6 <_Z6windowid+0x2236>
  40b8fd:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40b904:	00 
  40b905:	49 83 fc 0f          	cmp    $0xf,%r12
  40b909:	0f 87 ee 15 00 00    	ja     40cefd <_Z6windowid+0x1e4d>
  40b90f:	49 83 fc 01          	cmp    $0x1,%r12
  40b913:	0f 85 ce 15 00 00    	jne    40cee7 <_Z6windowid+0x1e37>
  40b919:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40b91e:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40b925:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b92c:	00 
  40b92d:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40b934:	00 
  40b935:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40b93a:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40b941:	00 
  40b942:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40b949:	00 
  40b94a:	e8 71 7b ff ff       	callq  4034c0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40b94f:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40b954:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  40b95b:	00 
  40b95c:	e8 1f 77 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40b961:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40b968:	00 
  40b969:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40b970:	00 
  40b971:	e8 5a 77 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40b976:	31 c9                	xor    %ecx,%ecx
  40b978:	66 89 8c 24 58 03 00 	mov    %cx,0x358(%rsp)
  40b97f:	00 
  40b980:	48 8b 05 a1 72 00 00 	mov    0x72a1(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40b987:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40b98b:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  40b992:	00 00 
  40b994:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b99b:	00 
  40b99c:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b9a3:	00 
  40b9a4:	48 03 78 e8          	add    -0x18(%rax),%rdi
  40b9a8:	48 8b 05 81 72 00 00 	mov    0x7281(%rip),%rax        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40b9af:	31 f6                	xor    %esi,%esi
  40b9b1:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  40b9b8:	00 90 2b 41 00 
  40b9bd:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  40b9c4:	00 00 00 00 00 
  40b9c9:	48 89 07             	mov    %rax,(%rdi)
  40b9cc:	c5 f8 77             	vzeroupper 
  40b9cf:	e8 8c 79 ff ff       	callq  403360 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40b9d4:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40b9db:	00 
  40b9dc:	48 c7 84 24 80 01 00 	movq   $0x412d28,0x180(%rsp)
  40b9e3:	00 28 2d 41 00 
  40b9e8:	48 c7 84 24 78 02 00 	movq   $0x412d50,0x278(%rsp)
  40b9ef:	00 50 2d 41 00 
  40b9f4:	e8 f7 78 ff ff       	callq  4032f0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40b9f9:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  40ba00:	00 
  40ba01:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40ba08:	00 
  40ba09:	e8 52 79 ff ff       	callq  403360 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40ba0e:	ba 10 00 00 00       	mov    $0x10,%edx
  40ba13:	4c 89 e6             	mov    %r12,%rsi
  40ba16:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40ba1d:	00 
  40ba1e:	e8 6d 78 ff ff       	callq  403290 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40ba23:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40ba2a:	00 
  40ba2b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40ba32:	00 
  40ba33:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40ba37:	48 85 c0             	test   %rax,%rax
  40ba3a:	0f 84 74 15 00 00    	je     40cfb4 <_Z6windowid+0x1f04>
  40ba40:	31 f6                	xor    %esi,%esi
  40ba42:	e8 f9 79 ff ff       	callq  403440 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40ba47:	ba 28 2d 41 00       	mov    $0x412d28,%edx
  40ba4c:	b8 a0 2c 41 00       	mov    $0x412ca0,%eax
  40ba51:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
  40ba56:	c4 e3 e9 22 c8 01    	vpinsrq $0x1,%rax,%xmm2,%xmm1
  40ba5c:	be 31 00 00 00       	mov    $0x31,%esi
  40ba61:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40ba68:	00 
  40ba69:	c5 f9 7f 4c 24 10    	vmovdqa %xmm1,0x10(%rsp)
  40ba6f:	e8 bc 75 ff ff       	callq  403030 <_ZNSo3putEc@plt>
  40ba74:	c5 f9 6f 74 24 10    	vmovdqa 0x10(%rsp),%xmm6
  40ba7a:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40ba81:	00 
  40ba82:	48 c7 84 24 78 02 00 	movq   $0x412d50,0x278(%rsp)
  40ba89:	00 50 2d 41 00 
  40ba8e:	c5 f9 7f b4 24 80 01 	vmovdqa %xmm6,0x180(%rsp)
  40ba95:	00 00 
  40ba97:	e8 d4 75 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40ba9c:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  40baa3:	00 
  40baa4:	e8 f7 79 ff ff       	callq  4034a0 <_ZNSt12__basic_fileIcED1Ev@plt>
  40baa9:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  40bab0:	00 
  40bab1:	48 c7 84 24 88 01 00 	movq   $0x412bb0,0x188(%rsp)
  40bab8:	00 b0 2b 41 00 
  40babd:	e8 be 78 ff ff       	callq  403380 <_ZNSt6localeD1Ev@plt>
  40bac2:	48 8b 05 5f 71 00 00 	mov    0x715f(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40bac9:	48 8b 0d 60 71 00 00 	mov    0x7160(%rip),%rcx        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40bad0:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40bad7:	00 
  40bad8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40badc:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40bae3:	00 
  40bae4:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  40baeb:	00 
  40baec:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  40baf3:	00 90 2b 41 00 
  40baf8:	e8 03 76 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40bafd:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40bb04:	00 
  40bb05:	48 85 f6             	test   %rsi,%rsi
  40bb08:	74 0d                	je     40bb17 <_Z6windowid+0xa67>
  40bb0a:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40bb11:	00 
  40bb12:	e8 89 75 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40bb17:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40bb1e:	00 
  40bb1f:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bb26:	00 
  40bb27:	48 39 c7             	cmp    %rax,%rdi
  40bb2a:	74 11                	je     40bb3d <_Z6windowid+0xa8d>
  40bb2c:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40bb33:	00 
  40bb34:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bb38:	e8 93 77 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40bb3d:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  40bb44:	00 
  40bb45:	48 85 f6             	test   %rsi,%rsi
  40bb48:	74 0d                	je     40bb57 <_Z6windowid+0xaa7>
  40bb4a:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40bb51:	00 
  40bb52:	e8 49 75 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40bb57:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  40bb5e:	00 
  40bb5f:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40bb66:	00 
  40bb67:	48 39 c7             	cmp    %rax,%rdi
  40bb6a:	74 11                	je     40bb7d <_Z6windowid+0xacd>
  40bb6c:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  40bb73:	00 
  40bb74:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bb78:	e8 53 77 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40bb7d:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40bb84:	00 
  40bb85:	4c 39 ff             	cmp    %r15,%rdi
  40bb88:	74 11                	je     40bb9b <_Z6windowid+0xaeb>
  40bb8a:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40bb91:	00 
  40bb92:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bb96:	e8 35 77 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40bb9b:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  40bba2:	00 
  40bba3:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40bbaa:	00 
  40bbab:	48 39 c7             	cmp    %rax,%rdi
  40bbae:	74 11                	je     40bbc1 <_Z6windowid+0xb11>
  40bbb0:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40bbb7:	00 
  40bbb8:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bbbc:	e8 0f 77 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40bbc1:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40bbc8:	00 
  40bbc9:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40bbd0:	00 
  40bbd1:	48 39 c7             	cmp    %rax,%rdi
  40bbd4:	74 11                	je     40bbe7 <_Z6windowid+0xb37>
  40bbd6:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  40bbdd:	00 
  40bbde:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bbe2:	e8 e9 76 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40bbe7:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40bbec:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bbf3:	00 
  40bbf4:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40bbf9:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40bc00:	00 
  40bc01:	4c 89 e8             	mov    %r13,%rax
  40bc04:	4c 01 e0             	add    %r12,%rax
  40bc07:	74 09                	je     40bc12 <_Z6windowid+0xb62>
  40bc09:	4d 85 ed             	test   %r13,%r13
  40bc0c:	0f 84 f2 15 00 00    	je     40d204 <_Z6windowid+0x2154>
  40bc12:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40bc19:	00 
  40bc1a:	49 83 fc 0f          	cmp    $0xf,%r12
  40bc1e:	0f 87 74 12 00 00    	ja     40ce98 <_Z6windowid+0x1de8>
  40bc24:	49 83 fc 01          	cmp    $0x1,%r12
  40bc28:	0f 85 5c 11 00 00    	jne    40cd8a <_Z6windowid+0x1cda>
  40bc2e:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40bc33:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40bc3a:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bc41:	00 
  40bc42:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40bc49:	00 
  40bc4a:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40bc4f:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40bc56:	ff ff 3f 
  40bc59:	48 2b 84 24 58 01 00 	sub    0x158(%rsp),%rax
  40bc60:	00 
  40bc61:	48 83 f8 05          	cmp    $0x5,%rax
  40bc65:	0f 86 a3 15 00 00    	jbe    40d20e <_Z6windowid+0x215e>
  40bc6b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40bc70:	ba 06 00 00 00       	mov    $0x6,%edx
  40bc75:	be 46 00 41 00       	mov    $0x410046,%esi
  40bc7a:	e8 71 74 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40bc7f:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40bc86:	00 
  40bc87:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40bc8e:	00 
  40bc8f:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40bc96:	00 
  40bc97:	48 8d 8c 24 60 01 00 	lea    0x160(%rsp),%rcx
  40bc9e:	00 
  40bc9f:	48 39 c8             	cmp    %rcx,%rax
  40bca2:	0f 84 59 13 00 00    	je     40d001 <_Z6windowid+0x1f51>
  40bca8:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40bcaf:	00 
  40bcb0:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40bcb7:	00 
  40bcb8:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40bcbf:	00 
  40bcc0:	48 8b 84 24 58 01 00 	mov    0x158(%rsp),%rax
  40bcc7:	00 
  40bcc8:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40bccf:	00 
  40bcd0:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40bcd7:	00 
  40bcd8:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bcdf:	00 
  40bce0:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40bce7:	00 
  40bce8:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
  40bcef:	00 00 00 00 00 
  40bcf4:	c6 84 24 60 01 00 00 	movb   $0x0,0x160(%rsp)
  40bcfb:	00 
  40bcfc:	e8 af 73 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40bd01:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bd08:	00 
  40bd09:	e8 52 75 ff ff       	callq  403260 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40bd0e:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40bd15:	00 
  40bd16:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40bd1d:	00 
  40bd1e:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40bd25:	00 
  40bd26:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40bd2d:	00 
  40bd2e:	4c 89 e8             	mov    %r13,%rax
  40bd31:	4c 01 e0             	add    %r12,%rax
  40bd34:	74 09                	je     40bd3f <_Z6windowid+0xc8f>
  40bd36:	4d 85 ed             	test   %r13,%r13
  40bd39:	0f 84 d9 14 00 00    	je     40d218 <_Z6windowid+0x2168>
  40bd3f:	4c 89 a4 24 d0 00 00 	mov    %r12,0xd0(%rsp)
  40bd46:	00 
  40bd47:	49 83 fc 0f          	cmp    $0xf,%r12
  40bd4b:	0f 87 e7 0f 00 00    	ja     40cd38 <_Z6windowid+0x1c88>
  40bd51:	49 83 fc 01          	cmp    $0x1,%r12
  40bd55:	0f 85 c7 0f 00 00    	jne    40cd22 <_Z6windowid+0x1c72>
  40bd5b:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40bd60:	88 84 24 30 01 00 00 	mov    %al,0x130(%rsp)
  40bd67:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40bd6e:	00 
  40bd6f:	4c 89 a4 24 28 01 00 	mov    %r12,0x128(%rsp)
  40bd76:	00 
  40bd77:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40bd7c:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40bd83:	00 
  40bd84:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40bd8b:	00 
  40bd8c:	e8 2f 77 ff ff       	callq  4034c0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40bd91:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40bd98:	00 
  40bd99:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40bda0:	00 
  40bda1:	e8 da 72 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40bda6:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40bdad:	00 
  40bdae:	48 85 f6             	test   %rsi,%rsi
  40bdb1:	74 0d                	je     40bdc0 <_Z6windowid+0xd10>
  40bdb3:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40bdba:	00 
  40bdbb:	e8 e0 72 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40bdc0:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40bdc7:	00 
  40bdc8:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40bdcf:	00 
  40bdd0:	48 39 c7             	cmp    %rax,%rdi
  40bdd3:	74 11                	je     40bde6 <_Z6windowid+0xd36>
  40bdd5:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40bddc:	00 
  40bddd:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bde1:	e8 ea 74 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40bde6:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40bded:	00 
  40bdee:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bdf5:	00 
  40bdf6:	48 39 c7             	cmp    %rax,%rdi
  40bdf9:	74 11                	je     40be0c <_Z6windowid+0xd5c>
  40bdfb:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40be02:	00 
  40be03:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40be07:	e8 c4 74 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40be0c:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40be10:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40be17:	00 
  40be18:	bf 01 00 00 00       	mov    $0x1,%edi
  40be1d:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40be24:	00 00 
  40be26:	e8 75 74 ff ff       	callq  4032a0 <clock_gettime@plt>
  40be2b:	48 69 94 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rdx
  40be32:	00 00 ca 9a 3b 
  40be37:	48 b8 00 b0 8e f0 1b 	movabs $0x1bf08eb000,%rax
  40be3e:	00 00 00 
  40be41:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40be48:	00 
  40be49:	48 01 d0             	add    %rdx,%rax
  40be4c:	48 83 7c 24 48 00    	cmpq   $0x0,0x48(%rsp)
  40be52:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40be57:	0f 85 dd 08 00 00    	jne    40c73a <_Z6windowid+0x168a>
  40be5d:	8b 44 24 28          	mov    0x28(%rsp),%eax
  40be61:	49 bd 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%r13
  40be68:	c5 6d 34 
  40be6b:	ff c8                	dec    %eax
  40be6d:	89 44 24 40          	mov    %eax,0x40(%rsp)
  40be71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40be78:	48 83 7c 24 28 00    	cmpq   $0x0,0x28(%rsp)
  40be7e:	0f 8e b0 04 00 00    	jle    40c334 <_Z6windowid+0x1284>
  40be84:	8b 44 24 40          	mov    0x40(%rsp),%eax
  40be88:	c6 44 24 47 01       	movb   $0x1,0x47(%rsp)
  40be8d:	48 ff c0             	inc    %rax
  40be90:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40be95:	41 be 01 00 00 00    	mov    $0x1,%r14d
  40be9b:	bb 01 00 00 00       	mov    $0x1,%ebx
  40bea0:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40bea7:	00 
  40bea8:	89 de                	mov    %ebx,%esi
  40beaa:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40beaf:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40beb6:	00 
  40beb7:	44 89 74 24 48       	mov    %r14d,0x48(%rsp)
  40bebc:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  40bec3:	00 
  40bec4:	45 8d 66 ff          	lea    -0x1(%r14),%r12d
  40bec8:	e8 43 74 ff ff       	callq  403310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40becd:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
  40bed4:	00 
  40bed5:	ff cb                	dec    %ebx
  40bed7:	41 83 fc 63          	cmp    $0x63,%r12d
  40bedb:	76 49                	jbe    40bf26 <_Z6windowid+0xe76>
  40bedd:	0f 1f 00             	nopl   (%rax)
  40bee0:	44 89 e2             	mov    %r12d,%edx
  40bee3:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40beea:	44 89 e0             	mov    %r12d,%eax
  40beed:	48 c1 ea 25          	shr    $0x25,%rdx
  40bef1:	6b f2 64             	imul   $0x64,%edx,%esi
  40bef4:	29 f0                	sub    %esi,%eax
  40bef6:	01 c0                	add    %eax,%eax
  40bef8:	8d 78 01             	lea    0x1(%rax),%edi
  40befb:	0f b6 bf c0 05 41 00 	movzbl 0x4105c0(%rdi),%edi
  40bf02:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40bf09:	44 89 e6             	mov    %r12d,%esi
  40bf0c:	41 89 d4             	mov    %edx,%r12d
  40bf0f:	89 da                	mov    %ebx,%edx
  40bf11:	40 88 3c 11          	mov    %dil,(%rcx,%rdx,1)
  40bf15:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40bf18:	88 04 11             	mov    %al,(%rcx,%rdx,1)
  40bf1b:	83 eb 02             	sub    $0x2,%ebx
  40bf1e:	81 fe 0f 27 00 00    	cmp    $0x270f,%esi
  40bf24:	77 ba                	ja     40bee0 <_Z6windowid+0xe30>
  40bf26:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40bf2b:	41 83 fc 09          	cmp    $0x9,%r12d
  40bf2f:	76 1b                	jbe    40bf4c <_Z6windowid+0xe9c>
  40bf31:	45 01 e4             	add    %r12d,%r12d
  40bf34:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40bf39:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40bf40:	88 41 01             	mov    %al,0x1(%rcx)
  40bf43:	41 0f b6 84 24 c0 05 	movzbl 0x4105c0(%r12),%eax
  40bf4a:	41 00 
  40bf4c:	88 01                	mov    %al,(%rcx)
  40bf4e:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40bf55:	00 
  40bf56:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40bf5d:	00 
  40bf5e:	48 8b 5c 24 70       	mov    0x70(%rsp),%rbx
  40bf63:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40bf68:	48 89 d8             	mov    %rbx,%rax
  40bf6b:	4c 01 e0             	add    %r12,%rax
  40bf6e:	74 09                	je     40bf79 <_Z6windowid+0xec9>
  40bf70:	48 85 db             	test   %rbx,%rbx
  40bf73:	0f 84 af 12 00 00    	je     40d228 <_Z6windowid+0x2178>
  40bf79:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40bf80:	00 
  40bf81:	49 83 fc 0f          	cmp    $0xf,%r12
  40bf85:	0f 87 95 08 00 00    	ja     40c820 <_Z6windowid+0x1770>
  40bf8b:	49 83 fc 01          	cmp    $0x1,%r12
  40bf8f:	0f 85 4b 08 00 00    	jne    40c7e0 <_Z6windowid+0x1730>
  40bf95:	0f b6 03             	movzbl (%rbx),%eax
  40bf98:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  40bf9f:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40bfa6:	00 
  40bfa7:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  40bfae:	00 
  40bfaf:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40bfb4:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40bfbb:	ff ff 3f 
  40bfbe:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  40bfc5:	00 
  40bfc6:	48 83 f8 05          	cmp    $0x5,%rax
  40bfca:	0f 86 62 12 00 00    	jbe    40d232 <_Z6windowid+0x2182>
  40bfd0:	ba 06 00 00 00       	mov    $0x6,%edx
  40bfd5:	be 3f 00 41 00       	mov    $0x41003f,%esi
  40bfda:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40bfe1:	00 
  40bfe2:	e8 09 71 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40bfe7:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
  40bfee:	00 
  40bfef:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  40bff6:	00 
  40bff7:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  40bffe:	00 
  40bfff:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  40c006:	00 
  40c007:	48 39 d9             	cmp    %rbx,%rcx
  40c00a:	bf 0f 00 00 00       	mov    $0xf,%edi
  40c00f:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  40c016:	00 00 
  40c018:	49 8d 04 10          	lea    (%r8,%rdx,1),%rax
  40c01c:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  40c023:	00 
  40c024:	48 39 f8             	cmp    %rdi,%rax
  40c027:	76 22                	jbe    40c04b <_Z6windowid+0xf9b>
  40c029:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  40c030:	00 
  40c031:	48 39 de             	cmp    %rbx,%rsi
  40c034:	bf 0f 00 00 00       	mov    $0xf,%edi
  40c039:	48 0f 45 bc 24 c0 00 	cmovne 0xc0(%rsp),%rdi
  40c040:	00 00 
  40c042:	48 39 f8             	cmp    %rdi,%rax
  40c045:	0f 86 cd 08 00 00    	jbe    40c918 <_Z6windowid+0x1868>
  40c04b:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40c052:	00 
  40c053:	e8 98 70 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40c058:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c05f:	00 
  40c060:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40c064:	48 8b 08             	mov    (%rax),%rcx
  40c067:	48 39 d1             	cmp    %rdx,%rcx
  40c06a:	0f 84 70 08 00 00    	je     40c8e0 <_Z6windowid+0x1830>
  40c070:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  40c077:	00 
  40c078:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40c07c:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  40c083:	00 
  40c084:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40c088:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  40c08f:	00 
  40c090:	48 89 10             	mov    %rdx,(%rax)
  40c093:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40c097:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40c09e:	00 
  40c09f:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c0a6:	00 
  40c0a7:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c0ae:	00 
  40c0af:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40c0b6:	00 
  40c0b7:	4c 39 f8             	cmp    %r15,%rax
  40c0ba:	0f 84 08 08 00 00    	je     40c8c8 <_Z6windowid+0x1818>
  40c0c0:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c0c7:	00 
  40c0c8:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40c0cf:	00 
  40c0d0:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40c0d7:	00 
  40c0d8:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40c0df:	00 
  40c0e0:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40c0e7:	00 
  40c0e8:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  40c0ef:	00 
  40c0f0:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c0f7:	00 
  40c0f8:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40c0ff:	00 00 00 00 00 
  40c104:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40c10b:	00 
  40c10c:	e8 9f 6f ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40c111:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c116:	e8 45 71 ff ff       	callq  403260 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40c11b:	48 8b 9c 24 f0 00 00 	mov    0xf0(%rsp),%rbx
  40c122:	00 
  40c123:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c12a:	00 
  40c12b:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40c132:	00 
  40c133:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c13a:	00 
  40c13b:	48 89 d8             	mov    %rbx,%rax
  40c13e:	4c 01 e0             	add    %r12,%rax
  40c141:	74 09                	je     40c14c <_Z6windowid+0x109c>
  40c143:	48 85 db             	test   %rbx,%rbx
  40c146:	0f 84 f0 10 00 00    	je     40d23c <_Z6windowid+0x218c>
  40c14c:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  40c151:	49 83 fc 0f          	cmp    $0xf,%r12
  40c155:	0f 87 1d 07 00 00    	ja     40c878 <_Z6windowid+0x17c8>
  40c15b:	49 83 fc 01          	cmp    $0x1,%r12
  40c15f:	0f 85 9b 06 00 00    	jne    40c800 <_Z6windowid+0x1750>
  40c165:	0f b6 03             	movzbl (%rbx),%eax
  40c168:	88 84 24 90 01 00 00 	mov    %al,0x190(%rsp)
  40c16f:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c176:	00 
  40c177:	4c 89 a4 24 88 01 00 	mov    %r12,0x188(%rsp)
  40c17e:	00 
  40c17f:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c184:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40c18b:	00 
  40c18c:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c193:	00 
  40c194:	e8 27 73 ff ff       	callq  4034c0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40c199:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40c19e:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c1a5:	00 
  40c1a6:	e8 d5 6e ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40c1ab:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c1b2:	00 
  40c1b3:	e8 68 6f ff ff       	callq  403120 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  40c1b8:	ff c0                	inc    %eax
  40c1ba:	3c 01                	cmp    $0x1,%al
  40c1bc:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40c1c3:	00 
  40c1c4:	0f 97 c0             	seta   %al
  40c1c7:	20 44 24 47          	and    %al,0x47(%rsp)
  40c1cb:	48 85 f6             	test   %rsi,%rsi
  40c1ce:	74 0d                	je     40c1dd <_Z6windowid+0x112d>
  40c1d0:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c1d7:	00 
  40c1d8:	e8 c3 6e ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c1dd:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40c1e4:	00 
  40c1e5:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c1ec:	00 
  40c1ed:	48 39 c7             	cmp    %rax,%rdi
  40c1f0:	74 11                	je     40c203 <_Z6windowid+0x1153>
  40c1f2:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40c1f9:	00 
  40c1fa:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c1fe:	e8 cd 70 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c203:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40c20a:	00 
  40c20b:	48 85 f6             	test   %rsi,%rsi
  40c20e:	74 0d                	je     40c21d <_Z6windowid+0x116d>
  40c210:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40c217:	00 
  40c218:	e8 83 6e ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c21d:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40c224:	00 
  40c225:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c22c:	00 
  40c22d:	48 39 c7             	cmp    %rax,%rdi
  40c230:	74 11                	je     40c243 <_Z6windowid+0x1193>
  40c232:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40c239:	00 
  40c23a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c23e:	e8 8d 70 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c243:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40c24a:	00 
  40c24b:	4c 39 ff             	cmp    %r15,%rdi
  40c24e:	74 11                	je     40c261 <_Z6windowid+0x11b1>
  40c250:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40c257:	00 
  40c258:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c25c:	e8 6f 70 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c261:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  40c268:	00 
  40c269:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40c270:	00 
  40c271:	48 39 c7             	cmp    %rax,%rdi
  40c274:	74 11                	je     40c287 <_Z6windowid+0x11d7>
  40c276:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40c27d:	00 
  40c27e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c282:	e8 49 70 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c287:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40c28e:	00 
  40c28f:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40c296:	00 
  40c297:	48 39 c7             	cmp    %rax,%rdi
  40c29a:	74 11                	je     40c2ad <_Z6windowid+0x11fd>
  40c29c:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  40c2a3:	00 
  40c2a4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c2a8:	e8 23 70 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c2ad:	4c 39 74 24 38       	cmp    %r14,0x38(%rsp)
  40c2b2:	0f 84 b0 06 00 00    	je     40c968 <_Z6windowid+0x18b8>
  40c2b8:	49 83 fe 09          	cmp    $0x9,%r14
  40c2bc:	0f 86 84 0f 00 00    	jbe    40d246 <_Z6windowid+0x2196>
  40c2c2:	8b 44 24 48          	mov    0x48(%rsp),%eax
  40c2c6:	83 f8 63             	cmp    $0x63,%eax
  40c2c9:	0f 86 f7 09 00 00    	jbe    40ccc6 <_Z6windowid+0x1c16>
  40c2cf:	3d e7 03 00 00       	cmp    $0x3e7,%eax
  40c2d4:	0f 86 06 0a 00 00    	jbe    40cce0 <_Z6windowid+0x1c30>
  40c2da:	3d 0f 27 00 00       	cmp    $0x270f,%eax
  40c2df:	0f 86 ee 09 00 00    	jbe    40ccd3 <_Z6windowid+0x1c23>
  40c2e5:	4c 89 f2             	mov    %r14,%rdx
  40c2e8:	bb 01 00 00 00       	mov    $0x1,%ebx
  40c2ed:	eb 22                	jmp    40c311 <_Z6windowid+0x1261>
  40c2ef:	90                   	nop
  40c2f0:	83 fa 63             	cmp    $0x63,%edx
  40c2f3:	0f 86 ff 05 00 00    	jbe    40c8f8 <_Z6windowid+0x1848>
  40c2f9:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40c2ff:	0f 86 03 06 00 00    	jbe    40c908 <_Z6windowid+0x1858>
  40c305:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40c30b:	0f 86 47 06 00 00    	jbe    40c958 <_Z6windowid+0x18a8>
  40c311:	48 89 d0             	mov    %rdx,%rax
  40c314:	48 89 d1             	mov    %rdx,%rcx
  40c317:	49 f7 e5             	mul    %r13
  40c31a:	89 d8                	mov    %ebx,%eax
  40c31c:	83 c3 04             	add    $0x4,%ebx
  40c31f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40c323:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40c32a:	77 c4                	ja     40c2f0 <_Z6windowid+0x1240>
  40c32c:	49 ff c6             	inc    %r14
  40c32f:	e9 6c fb ff ff       	jmpq   40bea0 <_Z6windowid+0xdf0>
  40c334:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40c339:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40c33e:	4c 89 e8             	mov    %r13,%rax
  40c341:	4c 01 e0             	add    %r12,%rax
  40c344:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c34b:	00 
  40c34c:	74 09                	je     40c357 <_Z6windowid+0x12a7>
  40c34e:	4d 85 ed             	test   %r13,%r13
  40c351:	0f 84 85 0f 00 00    	je     40d2dc <_Z6windowid+0x222c>
  40c357:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40c35e:	00 
  40c35f:	49 83 fc 0f          	cmp    $0xf,%r12
  40c363:	0f 87 81 0d 00 00    	ja     40d0ea <_Z6windowid+0x203a>
  40c369:	49 83 fc 01          	cmp    $0x1,%r12
  40c36d:	0f 84 b5 0c 00 00    	je     40d028 <_Z6windowid+0x1f78>
  40c373:	4d 85 e4             	test   %r12,%r12
  40c376:	0f 85 55 0e 00 00    	jne    40d1d1 <_Z6windowid+0x2121>
  40c37c:	4c 89 f8             	mov    %r15,%rax
  40c37f:	4c 89 a4 24 d8 00 00 	mov    %r12,0xd8(%rsp)
  40c386:	00 
  40c387:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c38c:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40c393:	ff ff 3f 
  40c396:	48 2b 84 24 d8 00 00 	sub    0xd8(%rsp),%rax
  40c39d:	00 
  40c39e:	48 83 f8 03          	cmp    $0x3,%rax
  40c3a2:	0f 86 1f 0e 00 00    	jbe    40d1c7 <_Z6windowid+0x2117>
  40c3a8:	ba 04 00 00 00       	mov    $0x4,%edx
  40c3ad:	be 6b 00 41 00       	mov    $0x41006b,%esi
  40c3b2:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  40c3b9:	00 
  40c3ba:	e8 31 6d ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40c3bf:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c3c6:	00 
  40c3c7:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c3ce:	00 
  40c3cf:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40c3d6:	00 
  40c3d7:	4c 39 f8             	cmp    %r15,%rax
  40c3da:	0f 84 6c 0d 00 00    	je     40d14c <_Z6windowid+0x209c>
  40c3e0:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c3e7:	00 
  40c3e8:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40c3ef:	00 
  40c3f0:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40c3f7:	00 
  40c3f8:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40c3ff:	00 
  40c400:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c407:	00 
  40c408:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40c40f:	00 
  40c410:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c417:	00 
  40c418:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40c41f:	00 00 00 00 00 
  40c424:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40c42b:	00 
  40c42c:	e8 7f 6c ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40c431:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c438:	00 
  40c439:	e8 22 6e ff ff       	callq  403260 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40c43e:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40c445:	00 
  40c446:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c44d:	00 
  40c44e:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40c455:	00 
  40c456:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c45d:	00 
  40c45e:	4c 89 e8             	mov    %r13,%rax
  40c461:	4c 01 e0             	add    %r12,%rax
  40c464:	74 09                	je     40c46f <_Z6windowid+0x13bf>
  40c466:	4d 85 ed             	test   %r13,%r13
  40c469:	0f 84 4e 0d 00 00    	je     40d1bd <_Z6windowid+0x210d>
  40c46f:	4c 89 a4 24 b0 00 00 	mov    %r12,0xb0(%rsp)
  40c476:	00 
  40c477:	49 83 fc 0f          	cmp    $0xf,%r12
  40c47b:	0f 87 1a 0c 00 00    	ja     40d09b <_Z6windowid+0x1feb>
  40c481:	49 83 fc 01          	cmp    $0x1,%r12
  40c485:	0f 85 fa 0b 00 00    	jne    40d085 <_Z6windowid+0x1fd5>
  40c48b:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40c490:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40c497:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c49e:	00 
  40c49f:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40c4a6:	00 
  40c4a7:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c4ac:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40c4b3:	00 
  40c4b4:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40c4bb:	00 
  40c4bc:	e8 ff 6f ff ff       	callq  4034c0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40c4c1:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c4c6:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c4cd:	00 
  40c4ce:	e8 ad 6b ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40c4d3:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40c4da:	00 
  40c4db:	48 85 f6             	test   %rsi,%rsi
  40c4de:	74 0d                	je     40c4ed <_Z6windowid+0x143d>
  40c4e0:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c4e7:	00 
  40c4e8:	e8 b3 6b ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c4ed:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40c4f4:	00 
  40c4f5:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c4fc:	00 
  40c4fd:	48 39 c7             	cmp    %rax,%rdi
  40c500:	74 11                	je     40c513 <_Z6windowid+0x1463>
  40c502:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40c509:	00 
  40c50a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c50e:	e8 bd 6d ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c513:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40c51a:	00 
  40c51b:	4c 39 ff             	cmp    %r15,%rdi
  40c51e:	74 11                	je     40c531 <_Z6windowid+0x1481>
  40c520:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40c527:	00 
  40c528:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c52c:	e8 9f 6d ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c531:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40c538:	00 
  40c539:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40c540:	00 
  40c541:	e8 8a 6b ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40c546:	31 d2                	xor    %edx,%edx
  40c548:	66 89 94 24 58 03 00 	mov    %dx,0x358(%rsp)
  40c54f:	00 
  40c550:	48 8b 05 d1 66 00 00 	mov    0x66d1(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40c557:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40c55b:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  40c562:	00 00 
  40c564:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c56b:	00 
  40c56c:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c573:	00 
  40c574:	48 03 78 e8          	add    -0x18(%rax),%rdi
  40c578:	48 8b 05 b1 66 00 00 	mov    0x66b1(%rip),%rax        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40c57f:	31 f6                	xor    %esi,%esi
  40c581:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  40c588:	00 90 2b 41 00 
  40c58d:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  40c594:	00 00 00 00 00 
  40c599:	48 89 07             	mov    %rax,(%rdi)
  40c59c:	c5 f8 77             	vzeroupper 
  40c59f:	e8 bc 6d ff ff       	callq  403360 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40c5a4:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40c5ab:	00 
  40c5ac:	48 c7 84 24 80 01 00 	movq   $0x412d28,0x180(%rsp)
  40c5b3:	00 28 2d 41 00 
  40c5b8:	48 c7 84 24 78 02 00 	movq   $0x412d50,0x278(%rsp)
  40c5bf:	00 50 2d 41 00 
  40c5c4:	e8 27 6d ff ff       	callq  4032f0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40c5c9:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  40c5d0:	00 
  40c5d1:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40c5d8:	00 
  40c5d9:	e8 82 6d ff ff       	callq  403360 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40c5de:	ba 10 00 00 00       	mov    $0x10,%edx
  40c5e3:	4c 89 e6             	mov    %r12,%rsi
  40c5e6:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40c5ed:	00 
  40c5ee:	e8 9d 6c ff ff       	callq  403290 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40c5f3:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40c5fa:	00 
  40c5fb:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c602:	00 
  40c603:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40c607:	48 85 c0             	test   %rax,%rax
  40c60a:	0f 84 2c 0b 00 00    	je     40d13c <_Z6windowid+0x208c>
  40c610:	31 f6                	xor    %esi,%esi
  40c612:	e8 29 6e ff ff       	callq  403440 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40c617:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40c61b:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  40c622:	00 
  40c623:	bf 01 00 00 00       	mov    $0x1,%edi
  40c628:	c5 f9 7f 84 24 d0 00 	vmovdqa %xmm0,0xd0(%rsp)
  40c62f:	00 00 
  40c631:	e8 6a 6c ff ff       	callq  4032a0 <clock_gettime@plt>
  40c636:	48 69 94 24 d0 00 00 	imul   $0x3b9aca00,0xd0(%rsp),%rdx
  40c63d:	00 00 ca 9a 3b 
  40c642:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40c649:	00 
  40c64a:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c651:	00 
  40c652:	48 8d b4 02 80 b2 e6 	lea    0xee6b280(%rdx,%rax,1),%rsi
  40c659:	0e 
  40c65a:	e8 81 6b ff ff       	callq  4031e0 <_ZNSo9_M_insertIyEERSoT_@plt>
  40c65f:	c5 f9 6f 7c 24 10    	vmovdqa 0x10(%rsp),%xmm7
  40c665:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40c66c:	00 
  40c66d:	48 c7 84 24 78 02 00 	movq   $0x412d50,0x278(%rsp)
  40c674:	00 50 2d 41 00 
  40c679:	c5 f9 7f bc 24 80 01 	vmovdqa %xmm7,0x180(%rsp)
  40c680:	00 00 
  40c682:	e8 e9 69 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40c687:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  40c68e:	00 
  40c68f:	e8 0c 6e ff ff       	callq  4034a0 <_ZNSt12__basic_fileIcED1Ev@plt>
  40c694:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  40c69b:	00 
  40c69c:	48 c7 84 24 88 01 00 	movq   $0x412bb0,0x188(%rsp)
  40c6a3:	00 b0 2b 41 00 
  40c6a8:	e8 d3 6c ff ff       	callq  403380 <_ZNSt6localeD1Ev@plt>
  40c6ad:	48 8b 05 74 65 00 00 	mov    0x6574(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40c6b4:	48 8b 0d 75 65 00 00 	mov    0x6575(%rip),%rcx        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40c6bb:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c6c2:	00 
  40c6c3:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40c6c7:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40c6ce:	00 
  40c6cf:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  40c6d6:	00 
  40c6d7:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  40c6de:	00 90 2b 41 00 
  40c6e3:	e8 18 6a ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40c6e8:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c6ed:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  40c6f4:	00 
  40c6f5:	e8 c6 6a ff ff       	callq  4031c0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@plt>
  40c6fa:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40c701:	00 
  40c702:	48 85 f6             	test   %rsi,%rsi
  40c705:	74 0d                	je     40c714 <_Z6windowid+0x1664>
  40c707:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40c70e:	00 
  40c70f:	e8 8c 69 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c714:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40c71b:	00 
  40c71c:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c723:	00 
  40c724:	48 39 c7             	cmp    %rax,%rdi
  40c727:	74 11                	je     40c73a <_Z6windowid+0x168a>
  40c729:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40c730:	00 
  40c731:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c735:	e8 96 6b ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40c73a:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40c741:	00 
  40c742:	e8 d9 69 ff ff       	callq  403120 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  40c747:	ff c0                	inc    %eax
  40c749:	3c 01                	cmp    $0x1,%al
  40c74b:	0f 87 a7 02 00 00    	ja     40c9f8 <_Z6windowid+0x1948>
  40c751:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40c755:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c75c:	00 
  40c75d:	bf 01 00 00 00       	mov    $0x1,%edi
  40c762:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40c769:	00 00 
  40c76b:	e8 30 6b ff ff       	callq  4032a0 <clock_gettime@plt>
  40c770:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40c777:	00 00 ca 9a 3b 
  40c77c:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40c783:	00 
  40c784:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  40c789:	0f 82 01 75 ff ff    	jb     403c90 <_Z6windowid.cold+0x75e>
  40c78f:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40c796:	00 00 00 00 00 
  40c79b:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  40c7a2:	00 80 84 1e 00 
  40c7a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40c7ae:	00 00 
  40c7b0:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c7b7:	00 
  40c7b8:	48 89 f7             	mov    %rsi,%rdi
  40c7bb:	e8 20 69 ff ff       	callq  4030e0 <nanosleep@plt>
  40c7c0:	83 f8 ff             	cmp    $0xffffffff,%eax
  40c7c3:	0f 85 71 ff ff ff    	jne    40c73a <_Z6windowid+0x168a>
  40c7c9:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40c7ce:	83 38 04             	cmpl   $0x4,(%rax)
  40c7d1:	74 dd                	je     40c7b0 <_Z6windowid+0x1700>
  40c7d3:	e9 62 ff ff ff       	jmpq   40c73a <_Z6windowid+0x168a>
  40c7d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40c7df:	00 
  40c7e0:	4d 85 e4             	test   %r12,%r12
  40c7e3:	0f 85 67 0a 00 00    	jne    40d250 <_Z6windowid+0x21a0>
  40c7e9:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40c7f0:	00 
  40c7f1:	e9 b1 f7 ff ff       	jmpq   40bfa7 <_Z6windowid+0xef7>
  40c7f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40c7fd:	00 00 00 
  40c800:	4d 85 e4             	test   %r12,%r12
  40c803:	0f 85 54 0a 00 00    	jne    40d25d <_Z6windowid+0x21ad>
  40c809:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c810:	00 
  40c811:	e9 61 f9 ff ff       	jmpq   40c177 <_Z6windowid+0x10c7>
  40c816:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40c81d:	00 00 00 
  40c820:	31 d2                	xor    %edx,%edx
  40c822:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c829:	00 
  40c82a:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40c831:	00 
  40c832:	e8 49 6c ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c837:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40c83e:	00 
  40c83f:	48 89 c7             	mov    %rax,%rdi
  40c842:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40c849:	00 
  40c84a:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  40c851:	00 
  40c852:	4c 89 e2             	mov    %r12,%rdx
  40c855:	48 89 de             	mov    %rbx,%rsi
  40c858:	e8 13 6a ff ff       	callq  403270 <memcpy@plt>
  40c85d:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40c864:	00 
  40c865:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  40c86c:	00 
  40c86d:	e9 35 f7 ff ff       	jmpq   40bfa7 <_Z6windowid+0xef7>
  40c872:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40c878:	31 d2                	xor    %edx,%edx
  40c87a:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
  40c87f:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c886:	00 
  40c887:	e8 f4 6b ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c88c:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c893:	00 
  40c894:	48 89 c7             	mov    %rax,%rdi
  40c897:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  40c89c:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40c8a3:	00 
  40c8a4:	4c 89 e2             	mov    %r12,%rdx
  40c8a7:	48 89 de             	mov    %rbx,%rsi
  40c8aa:	e8 c1 69 ff ff       	callq  403270 <memcpy@plt>
  40c8af:	4c 8b 64 24 68       	mov    0x68(%rsp),%r12
  40c8b4:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40c8bb:	00 
  40c8bc:	e9 b6 f8 ff ff       	jmpq   40c177 <_Z6windowid+0x10c7>
  40c8c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40c8c8:	c5 f9 6f 9c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm3
  40c8cf:	00 00 
  40c8d1:	c5 f9 7f 9c 24 60 01 	vmovdqa %xmm3,0x160(%rsp)
  40c8d8:	00 00 
  40c8da:	e9 f9 f7 ff ff       	jmpq   40c0d8 <_Z6windowid+0x1028>
  40c8df:	90                   	nop
  40c8e0:	c5 fa 6f 60 10       	vmovdqu 0x10(%rax),%xmm4
  40c8e5:	c5 f9 7f a4 24 e0 00 	vmovdqa %xmm4,0xe0(%rsp)
  40c8ec:	00 00 
  40c8ee:	e9 91 f7 ff ff       	jmpq   40c084 <_Z6windowid+0xfd4>
  40c8f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40c8f8:	8d 58 05             	lea    0x5(%rax),%ebx
  40c8fb:	49 ff c6             	inc    %r14
  40c8fe:	e9 9d f5 ff ff       	jmpq   40bea0 <_Z6windowid+0xdf0>
  40c903:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40c908:	8d 58 06             	lea    0x6(%rax),%ebx
  40c90b:	49 ff c6             	inc    %r14
  40c90e:	e9 8d f5 ff ff       	jmpq   40bea0 <_Z6windowid+0xdf0>
  40c913:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40c918:	31 d2                	xor    %edx,%edx
  40c91a:	31 f6                	xor    %esi,%esi
  40c91c:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40c923:	00 
  40c924:	e8 b7 6a ff ff       	callq  4033e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40c929:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c930:	00 
  40c931:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40c935:	48 8b 08             	mov    (%rax),%rcx
  40c938:	48 39 d1             	cmp    %rdx,%rcx
  40c93b:	0f 85 2f f7 ff ff    	jne    40c070 <_Z6windowid+0xfc0>
  40c941:	c5 fa 6f 68 10       	vmovdqu 0x10(%rax),%xmm5
  40c946:	c5 f9 7f ac 24 e0 00 	vmovdqa %xmm5,0xe0(%rsp)
  40c94d:	00 00 
  40c94f:	e9 30 f7 ff ff       	jmpq   40c084 <_Z6windowid+0xfd4>
  40c954:	0f 1f 40 00          	nopl   0x0(%rax)
  40c958:	8d 58 07             	lea    0x7(%rax),%ebx
  40c95b:	49 ff c6             	inc    %r14
  40c95e:	e9 3d f5 ff ff       	jmpq   40bea0 <_Z6windowid+0xdf0>
  40c963:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40c968:	80 7c 24 47 00       	cmpb   $0x0,0x47(%rsp)
  40c96d:	0f 85 c1 f9 ff ff    	jne    40c334 <_Z6windowid+0x1284>
  40c973:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40c977:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c97e:	00 
  40c97f:	bf 01 00 00 00       	mov    $0x1,%edi
  40c984:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40c98b:	00 00 
  40c98d:	e8 0e 69 ff ff       	callq  4032a0 <clock_gettime@plt>
  40c992:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40c999:	00 00 ca 9a 3b 
  40c99e:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40c9a5:	00 
  40c9a6:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  40c9ab:	0f 82 8d 71 ff ff    	jb     403b3e <_Z6windowid.cold+0x60c>
  40c9b1:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40c9b8:	00 00 00 00 00 
  40c9bd:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  40c9c4:	00 80 84 1e 00 
  40c9c9:	eb 13                	jmp    40c9de <_Z6windowid+0x192e>
  40c9cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40c9d0:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40c9d5:	83 38 04             	cmpl   $0x4,(%rax)
  40c9d8:	0f 85 9a f4 ff ff    	jne    40be78 <_Z6windowid+0xdc8>
  40c9de:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c9e5:	00 
  40c9e6:	48 89 f7             	mov    %rsi,%rdi
  40c9e9:	e8 f2 66 ff ff       	callq  4030e0 <nanosleep@plt>
  40c9ee:	83 f8 ff             	cmp    $0xffffffff,%eax
  40c9f1:	74 dd                	je     40c9d0 <_Z6windowid+0x1920>
  40c9f3:	e9 80 f4 ff ff       	jmpq   40be78 <_Z6windowid+0xdc8>
  40c9f8:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40c9ff:	00 
  40ca00:	4c 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13
  40ca07:	00 
  40ca08:	e8 c3 66 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40ca0d:	31 c0                	xor    %eax,%eax
  40ca0f:	66 89 84 24 60 03 00 	mov    %ax,0x360(%rsp)
  40ca16:	00 
  40ca17:	48 8b 1d 5a 63 00 00 	mov    0x635a(%rip),%rbx        # 412d78 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40ca1e:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40ca22:	c5 fe 7f 84 24 68 03 	vmovdqu %ymm0,0x368(%rsp)
  40ca29:	00 00 
  40ca2b:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  40ca2f:	4c 8b 25 4a 63 00 00 	mov    0x634a(%rip),%r12        # 412d80 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40ca36:	48 c7 84 24 80 02 00 	movq   $0x412b90,0x280(%rsp)
  40ca3d:	00 90 2b 41 00 
  40ca42:	48 c7 84 24 58 03 00 	movq   $0x0,0x358(%rsp)
  40ca49:	00 00 00 00 00 
  40ca4e:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  40ca55:	00 
  40ca56:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  40ca5d:	00 
  40ca5e:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  40ca65:	00 00 00 00 00 
  40ca6a:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40ca71:	00 
  40ca72:	31 f6                	xor    %esi,%esi
  40ca74:	48 03 7b e8          	add    -0x18(%rbx),%rdi
  40ca78:	c5 f8 77             	vzeroupper 
  40ca7b:	e8 e0 68 ff ff       	callq  403360 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40ca80:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40ca87:	00 
  40ca88:	48 c7 84 24 80 01 00 	movq   $0x412c58,0x180(%rsp)
  40ca8f:	00 58 2c 41 00 
  40ca94:	48 c7 84 24 80 02 00 	movq   $0x412c80,0x280(%rsp)
  40ca9b:	00 80 2c 41 00 
  40caa0:	e8 4b 68 ff ff       	callq  4032f0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40caa5:	48 8d b4 24 90 01 00 	lea    0x190(%rsp),%rsi
  40caac:	00 
  40caad:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40cab4:	00 
  40cab5:	e8 a6 68 ff ff       	callq  403360 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40caba:	ba 08 00 00 00       	mov    $0x8,%edx
  40cabf:	4c 89 ee             	mov    %r13,%rsi
  40cac2:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40cac9:	00 
  40caca:	e8 c1 67 ff ff       	callq  403290 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40cacf:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40cad6:	00 
  40cad7:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40cade:	00 
  40cadf:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40cae3:	48 85 c0             	test   %rax,%rax
  40cae6:	0f 84 2c 05 00 00    	je     40d018 <_Z6windowid+0x1f68>
  40caec:	31 f6                	xor    %esi,%esi
  40caee:	e8 4d 69 ff ff       	callq  403440 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40caf3:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40caf8:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40caff:	00 
  40cb00:	e8 7b 66 ff ff       	callq  403180 <_ZNSi10_M_extractImEERSiRT_@plt>
  40cb05:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40cb0c:	00 
  40cb0d:	48 c7 84 24 80 01 00 	movq   $0x412c58,0x180(%rsp)
  40cb14:	00 58 2c 41 00 
  40cb19:	48 c7 84 24 80 02 00 	movq   $0x412c80,0x280(%rsp)
  40cb20:	00 80 2c 41 00 
  40cb25:	48 c7 84 24 90 01 00 	movq   $0x412ca0,0x190(%rsp)
  40cb2c:	00 a0 2c 41 00 
  40cb31:	e8 3a 65 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40cb36:	48 8d bc 24 f8 01 00 	lea    0x1f8(%rsp),%rdi
  40cb3d:	00 
  40cb3e:	e8 5d 69 ff ff       	callq  4034a0 <_ZNSt12__basic_fileIcED1Ev@plt>
  40cb43:	48 8d bc 24 c8 01 00 	lea    0x1c8(%rsp),%rdi
  40cb4a:	00 
  40cb4b:	48 c7 84 24 90 01 00 	movq   $0x412bb0,0x190(%rsp)
  40cb52:	00 b0 2b 41 00 
  40cb57:	e8 24 68 ff ff       	callq  403380 <_ZNSt6localeD1Ev@plt>
  40cb5c:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  40cb60:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40cb67:	00 
  40cb68:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  40cb6f:	00 
  40cb70:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  40cb77:	00 
  40cb78:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  40cb7f:	00 00 00 00 00 
  40cb84:	48 c7 84 24 80 02 00 	movq   $0x412b90,0x280(%rsp)
  40cb8b:	00 90 2b 41 00 
  40cb90:	e8 6b 65 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40cb95:	0f 1f 00             	nopl   (%rax)
  40cb98:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40cb9c:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cba3:	00 
  40cba4:	bf 01 00 00 00       	mov    $0x1,%edi
  40cba9:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40cbb0:	00 00 
  40cbb2:	e8 e9 66 ff ff       	callq  4032a0 <clock_gettime@plt>
  40cbb7:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40cbbe:	00 00 ca 9a 3b 
  40cbc3:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40cbca:	00 
  40cbcb:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40cbd2:	00 
  40cbd3:	49 39 c4             	cmp    %rax,%r12
  40cbd6:	76 39                	jbe    40cc11 <_Z6windowid+0x1b61>
  40cbd8:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40cbdf:	00 00 00 00 00 
  40cbe4:	48 c7 84 24 88 01 00 	movq   $0x4e20,0x188(%rsp)
  40cbeb:	00 20 4e 00 00 
  40cbf0:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cbf7:	00 
  40cbf8:	48 89 f7             	mov    %rsi,%rdi
  40cbfb:	e8 e0 64 ff ff       	callq  4030e0 <nanosleep@plt>
  40cc00:	83 f8 ff             	cmp    $0xffffffff,%eax
  40cc03:	75 93                	jne    40cb98 <_Z6windowid+0x1ae8>
  40cc05:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40cc0a:	83 38 04             	cmpl   $0x4,(%rax)
  40cc0d:	74 e1                	je     40cbf0 <_Z6windowid+0x1b40>
  40cc0f:	eb 87                	jmp    40cb98 <_Z6windowid+0x1ae8>
  40cc11:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  40cc18:	00 
  40cc19:	48 85 f6             	test   %rsi,%rsi
  40cc1c:	74 0d                	je     40cc2b <_Z6windowid+0x1b7b>
  40cc1e:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40cc25:	00 
  40cc26:	e8 75 64 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40cc2b:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  40cc32:	00 
  40cc33:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40cc3a:	00 
  40cc3b:	48 39 c7             	cmp    %rax,%rdi
  40cc3e:	74 11                	je     40cc51 <_Z6windowid+0x1ba1>
  40cc40:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  40cc47:	00 
  40cc48:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40cc4c:	e8 7f 66 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40cc51:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  40cc56:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  40cc5d:	00 
  40cc5e:	48 39 c7             	cmp    %rax,%rdi
  40cc61:	74 11                	je     40cc74 <_Z6windowid+0x1bc4>
  40cc63:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  40cc6a:	00 
  40cc6b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40cc6f:	e8 5c 66 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40cc74:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
  40cc7b:	00 
  40cc7c:	48 85 f6             	test   %rsi,%rsi
  40cc7f:	74 0d                	je     40cc8e <_Z6windowid+0x1bde>
  40cc81:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  40cc88:	00 
  40cc89:	e8 12 64 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40cc8e:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  40cc95:	00 
  40cc96:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  40cc9d:	00 
  40cc9e:	48 39 c7             	cmp    %rax,%rdi
  40cca1:	74 11                	je     40ccb4 <_Z6windowid+0x1c04>
  40cca3:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  40ccaa:	00 
  40ccab:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40ccaf:	e8 1c 66 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40ccb4:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  40ccb8:	5b                   	pop    %rbx
  40ccb9:	4c 89 e0             	mov    %r12,%rax
  40ccbc:	41 5c                	pop    %r12
  40ccbe:	41 5d                	pop    %r13
  40ccc0:	41 5e                	pop    %r14
  40ccc2:	41 5f                	pop    %r15
  40ccc4:	5d                   	pop    %rbp
  40ccc5:	c3                   	retq   
  40ccc6:	bb 02 00 00 00       	mov    $0x2,%ebx
  40cccb:	49 ff c6             	inc    %r14
  40ccce:	e9 cd f1 ff ff       	jmpq   40bea0 <_Z6windowid+0xdf0>
  40ccd3:	bb 04 00 00 00       	mov    $0x4,%ebx
  40ccd8:	49 ff c6             	inc    %r14
  40ccdb:	e9 c0 f1 ff ff       	jmpq   40bea0 <_Z6windowid+0xdf0>
  40cce0:	bb 03 00 00 00       	mov    $0x3,%ebx
  40cce5:	49 ff c6             	inc    %r14
  40cce8:	e9 b3 f1 ff ff       	jmpq   40bea0 <_Z6windowid+0xdf0>
  40cced:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40ccf1:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40ccf8:	00 
  40ccf9:	bf 01 00 00 00       	mov    $0x1,%edi
  40ccfe:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40cd05:	00 00 
  40cd07:	e8 94 65 ff ff       	callq  4032a0 <clock_gettime@plt>
  40cd0c:	4c 69 a4 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%r12
  40cd13:	00 00 ca 9a 3b 
  40cd18:	4c 03 a4 24 88 01 00 	add    0x188(%rsp),%r12
  40cd1f:	00 
  40cd20:	eb 92                	jmp    40ccb4 <_Z6windowid+0x1c04>
  40cd22:	4d 85 e4             	test   %r12,%r12
  40cd25:	0f 85 3f 05 00 00    	jne    40d26a <_Z6windowid+0x21ba>
  40cd2b:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40cd32:	00 
  40cd33:	e9 37 f0 ff ff       	jmpq   40bd6f <_Z6windowid+0xcbf>
  40cd38:	31 d2                	xor    %edx,%edx
  40cd3a:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  40cd41:	00 
  40cd42:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40cd49:	00 
  40cd4a:	e8 31 67 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40cd4f:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40cd56:	00 
  40cd57:	48 89 c7             	mov    %rax,%rdi
  40cd5a:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40cd61:	00 
  40cd62:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40cd69:	00 
  40cd6a:	4c 89 e2             	mov    %r12,%rdx
  40cd6d:	4c 89 ee             	mov    %r13,%rsi
  40cd70:	e8 fb 64 ff ff       	callq  403270 <memcpy@plt>
  40cd75:	4c 8b a4 24 d0 00 00 	mov    0xd0(%rsp),%r12
  40cd7c:	00 
  40cd7d:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  40cd84:	00 
  40cd85:	e9 e5 ef ff ff       	jmpq   40bd6f <_Z6windowid+0xcbf>
  40cd8a:	4d 85 e4             	test   %r12,%r12
  40cd8d:	0f 85 e4 04 00 00    	jne    40d277 <_Z6windowid+0x21c7>
  40cd93:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40cd9a:	00 
  40cd9b:	e9 a2 ee ff ff       	jmpq   40bc42 <_Z6windowid+0xb92>
  40cda0:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40cda5:	31 d2                	xor    %edx,%edx
  40cda7:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40cdae:	00 
  40cdaf:	e8 cc 66 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40cdb4:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40cdbb:	00 
  40cdbc:	48 89 c7             	mov    %rax,%rdi
  40cdbf:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40cdc6:	00 
  40cdc7:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40cdce:	00 
  40cdcf:	4c 89 f2             	mov    %r14,%rdx
  40cdd2:	4c 89 ee             	mov    %r13,%rsi
  40cdd5:	e8 96 64 ff ff       	callq  403270 <memcpy@plt>
  40cdda:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40cde1:	00 
  40cde2:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40cde9:	00 
  40cdea:	e9 3e e5 ff ff       	jmpq   40b32d <_Z6windowid+0x27d>
  40cdef:	4d 85 f6             	test   %r14,%r14
  40cdf2:	0f 85 8c 04 00 00    	jne    40d284 <_Z6windowid+0x21d4>
  40cdf8:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40cdff:	00 
  40ce00:	e9 28 e5 ff ff       	jmpq   40b32d <_Z6windowid+0x27d>
  40ce05:	48 85 c0             	test   %rax,%rax
  40ce08:	0f 85 83 04 00 00    	jne    40d291 <_Z6windowid+0x21e1>
  40ce0e:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  40ce15:	00 
  40ce16:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  40ce1b:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40ce22:	00 
  40ce23:	e9 a5 e3 ff ff       	jmpq   40b1cd <_Z6windowid+0x11d>
  40ce28:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  40ce2f:	00 
  40ce30:	31 d2                	xor    %edx,%edx
  40ce32:	48 89 c6             	mov    %rax,%rsi
  40ce35:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40ce3c:	00 
  40ce3d:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40ce42:	e8 39 66 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40ce47:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40ce4e:	00 
  40ce4f:	48 89 c7             	mov    %rax,%rdi
  40ce52:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40ce59:	00 
  40ce5a:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40ce61:	00 
  40ce62:	4c 89 f2             	mov    %r14,%rdx
  40ce65:	4c 89 ee             	mov    %r13,%rsi
  40ce68:	e8 03 64 ff ff       	callq  403270 <memcpy@plt>
  40ce6d:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40ce74:	00 
  40ce75:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40ce7c:	00 
  40ce7d:	e9 4b e3 ff ff       	jmpq   40b1cd <_Z6windowid+0x11d>
  40ce82:	48 85 c0             	test   %rax,%rax
  40ce85:	0f 85 20 04 00 00    	jne    40d2ab <_Z6windowid+0x21fb>
  40ce8b:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40ce92:	00 
  40ce93:	e9 94 e2 ff ff       	jmpq   40b12c <_Z6windowid+0x7c>
  40ce98:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40ce9d:	31 d2                	xor    %edx,%edx
  40ce9f:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cea6:	00 
  40cea7:	e8 d4 65 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40ceac:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40ceb3:	00 
  40ceb4:	48 89 c7             	mov    %rax,%rdi
  40ceb7:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40cebe:	00 
  40cebf:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40cec6:	00 
  40cec7:	4c 89 e2             	mov    %r12,%rdx
  40ceca:	4c 89 ee             	mov    %r13,%rsi
  40cecd:	e8 9e 63 ff ff       	callq  403270 <memcpy@plt>
  40ced2:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40ced9:	00 
  40ceda:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40cee1:	00 
  40cee2:	e9 5b ed ff ff       	jmpq   40bc42 <_Z6windowid+0xb92>
  40cee7:	4d 85 e4             	test   %r12,%r12
  40ceea:	0f 85 c8 03 00 00    	jne    40d2b8 <_Z6windowid+0x2208>
  40cef0:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40cef7:	00 
  40cef8:	e9 30 ea ff ff       	jmpq   40b92d <_Z6windowid+0x87d>
  40cefd:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40cf02:	31 d2                	xor    %edx,%edx
  40cf04:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cf0b:	00 
  40cf0c:	e8 6f 65 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40cf11:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40cf18:	00 
  40cf19:	48 89 c7             	mov    %rax,%rdi
  40cf1c:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40cf23:	00 
  40cf24:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40cf2b:	00 
  40cf2c:	4c 89 e2             	mov    %r12,%rdx
  40cf2f:	4c 89 ee             	mov    %r13,%rsi
  40cf32:	e8 39 63 ff ff       	callq  403270 <memcpy@plt>
  40cf37:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40cf3e:	00 
  40cf3f:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40cf46:	00 
  40cf47:	e9 e1 e9 ff ff       	jmpq   40b92d <_Z6windowid+0x87d>
  40cf4c:	4d 85 e4             	test   %r12,%r12
  40cf4f:	0f 85 70 03 00 00    	jne    40d2c5 <_Z6windowid+0x2215>
  40cf55:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40cf5c:	00 
  40cf5d:	e9 ed e7 ff ff       	jmpq   40b74f <_Z6windowid+0x69f>
  40cf62:	31 d2                	xor    %edx,%edx
  40cf64:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cf6b:	00 
  40cf6c:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40cf73:	00 
  40cf74:	e8 07 65 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40cf79:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40cf80:	00 
  40cf81:	48 89 c7             	mov    %rax,%rdi
  40cf84:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40cf8b:	00 
  40cf8c:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  40cf93:	00 
  40cf94:	4c 89 e2             	mov    %r12,%rdx
  40cf97:	4c 89 ee             	mov    %r13,%rsi
  40cf9a:	e8 d1 62 ff ff       	callq  403270 <memcpy@plt>
  40cf9f:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40cfa6:	00 
  40cfa7:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  40cfae:	00 
  40cfaf:	e9 9b e7 ff ff       	jmpq   40b74f <_Z6windowid+0x69f>
  40cfb4:	8b 77 20             	mov    0x20(%rdi),%esi
  40cfb7:	83 ce 04             	or     $0x4,%esi
  40cfba:	e8 81 64 ff ff       	callq  403440 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40cfbf:	e9 83 ea ff ff       	jmpq   40ba47 <_Z6windowid+0x997>
  40cfc4:	c5 f9 6f 8c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm1
  40cfcb:	00 00 
  40cfcd:	c5 f9 7f 8c 24 30 01 	vmovdqa %xmm1,0x130(%rsp)
  40cfd4:	00 00 
  40cfd6:	e9 ab e8 ff ff       	jmpq   40b886 <_Z6windowid+0x7d6>
  40cfdb:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  40cfe0:	c5 f9 7f bc 24 e0 00 	vmovdqa %xmm7,0xe0(%rsp)
  40cfe7:	00 00 
  40cfe9:	e9 44 e8 ff ff       	jmpq   40b832 <_Z6windowid+0x782>
  40cfee:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  40cff3:	c5 f9 7f bc 24 80 00 	vmovdqa %xmm7,0x80(%rsp)
  40cffa:	00 00 
  40cffc:	e9 5d e5 ff ff       	jmpq   40b55e <_Z6windowid+0x4ae>
  40d001:	c5 f9 6f 94 24 60 01 	vmovdqa 0x160(%rsp),%xmm2
  40d008:	00 00 
  40d00a:	c5 f9 7f 94 24 90 01 	vmovdqa %xmm2,0x190(%rsp)
  40d011:	00 00 
  40d013:	e9 a8 ec ff ff       	jmpq   40bcc0 <_Z6windowid+0xc10>
  40d018:	8b 77 20             	mov    0x20(%rdi),%esi
  40d01b:	83 ce 04             	or     $0x4,%esi
  40d01e:	e8 1d 64 ff ff       	callq  403440 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40d023:	e9 cb fa ff ff       	jmpq   40caf3 <_Z6windowid+0x1a43>
  40d028:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40d02d:	88 84 24 e0 00 00 00 	mov    %al,0xe0(%rsp)
  40d034:	4c 89 f8             	mov    %r15,%rax
  40d037:	e9 43 f3 ff ff       	jmpq   40c37f <_Z6windowid+0x12cf>
  40d03c:	4c 89 c9             	mov    %r9,%rcx
  40d03f:	31 d2                	xor    %edx,%edx
  40d041:	31 f6                	xor    %esi,%esi
  40d043:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40d04a:	00 
  40d04b:	e8 90 63 ff ff       	callq  4033e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40d050:	e9 a9 e7 ff ff       	jmpq   40b7fe <_Z6windowid+0x74e>
  40d055:	8d 58 06             	lea    0x6(%rax),%ebx
  40d058:	e9 df e5 ff ff       	jmpq   40b63c <_Z6windowid+0x58c>
  40d05d:	8d 58 05             	lea    0x5(%rax),%ebx
  40d060:	e9 d7 e5 ff ff       	jmpq   40b63c <_Z6windowid+0x58c>
  40d065:	8d 58 06             	lea    0x6(%rax),%ebx
  40d068:	e9 ef e3 ff ff       	jmpq   40b45c <_Z6windowid+0x3ac>
  40d06d:	8d 58 05             	lea    0x5(%rax),%ebx
  40d070:	e9 e7 e3 ff ff       	jmpq   40b45c <_Z6windowid+0x3ac>
  40d075:	8d 58 07             	lea    0x7(%rax),%ebx
  40d078:	e9 df e3 ff ff       	jmpq   40b45c <_Z6windowid+0x3ac>
  40d07d:	8d 58 07             	lea    0x7(%rax),%ebx
  40d080:	e9 b7 e5 ff ff       	jmpq   40b63c <_Z6windowid+0x58c>
  40d085:	4d 85 e4             	test   %r12,%r12
  40d088:	0f 85 4b 01 00 00    	jne    40d1d9 <_Z6windowid+0x2129>
  40d08e:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40d095:	00 
  40d096:	e9 04 f4 ff ff       	jmpq   40c49f <_Z6windowid+0x13ef>
  40d09b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40d0a0:	31 d2                	xor    %edx,%edx
  40d0a2:	48 8d b4 24 b0 00 00 	lea    0xb0(%rsp),%rsi
  40d0a9:	00 
  40d0aa:	e8 d1 63 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d0af:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40d0b6:	00 
  40d0b7:	48 89 c7             	mov    %rax,%rdi
  40d0ba:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
  40d0c1:	00 
  40d0c2:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40d0c9:	00 
  40d0ca:	4c 89 e2             	mov    %r12,%rdx
  40d0cd:	4c 89 ee             	mov    %r13,%rsi
  40d0d0:	e8 9b 61 ff ff       	callq  403270 <memcpy@plt>
  40d0d5:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
  40d0dc:	00 
  40d0dd:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d0e4:	00 
  40d0e5:	e9 b5 f3 ff ff       	jmpq   40c49f <_Z6windowid+0x13ef>
  40d0ea:	31 d2                	xor    %edx,%edx
  40d0ec:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40d0f3:	00 
  40d0f4:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  40d0fb:	00 
  40d0fc:	e8 7f 63 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d101:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
  40d108:	00 
  40d109:	48 89 c7             	mov    %rax,%rdi
  40d10c:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40d113:	00 
  40d114:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
  40d11b:	00 
  40d11c:	4c 89 e2             	mov    %r12,%rdx
  40d11f:	4c 89 ee             	mov    %r13,%rsi
  40d122:	e8 49 61 ff ff       	callq  403270 <memcpy@plt>
  40d127:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40d12e:	00 
  40d12f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40d136:	00 
  40d137:	e9 43 f2 ff ff       	jmpq   40c37f <_Z6windowid+0x12cf>
  40d13c:	8b 77 20             	mov    0x20(%rdi),%esi
  40d13f:	83 ce 04             	or     $0x4,%esi
  40d142:	e8 f9 62 ff ff       	callq  403440 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40d147:	e9 cb f4 ff ff       	jmpq   40c617 <_Z6windowid+0x1567>
  40d14c:	c5 f9 6f b4 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm6
  40d153:	00 00 
  40d155:	c5 f9 7f b4 24 90 01 	vmovdqa %xmm6,0x190(%rsp)
  40d15c:	00 00 
  40d15e:	e9 95 f2 ff ff       	jmpq   40c3f8 <_Z6windowid+0x1348>
  40d163:	bb 02 00 00 00       	mov    $0x2,%ebx
  40d168:	e9 cf e4 ff ff       	jmpq   40b63c <_Z6windowid+0x58c>
  40d16d:	bb 01 00 00 00       	mov    $0x1,%ebx
  40d172:	e9 e5 e2 ff ff       	jmpq   40b45c <_Z6windowid+0x3ac>
  40d177:	bb 02 00 00 00       	mov    $0x2,%ebx
  40d17c:	e9 db e2 ff ff       	jmpq   40b45c <_Z6windowid+0x3ac>
  40d181:	bb 03 00 00 00       	mov    $0x3,%ebx
  40d186:	e9 d1 e2 ff ff       	jmpq   40b45c <_Z6windowid+0x3ac>
  40d18b:	bb 04 00 00 00       	mov    $0x4,%ebx
  40d190:	e9 c7 e2 ff ff       	jmpq   40b45c <_Z6windowid+0x3ac>
  40d195:	bb 03 00 00 00       	mov    $0x3,%ebx
  40d19a:	e9 9d e4 ff ff       	jmpq   40b63c <_Z6windowid+0x58c>
  40d19f:	bb 04 00 00 00       	mov    $0x4,%ebx
  40d1a4:	e9 93 e4 ff ff       	jmpq   40b63c <_Z6windowid+0x58c>
  40d1a9:	bb 01 00 00 00       	mov    $0x1,%ebx
  40d1ae:	e9 89 e4 ff ff       	jmpq   40b63c <_Z6windowid+0x58c>
  40d1b3:	bf 36 00 41 00       	mov    $0x410036,%edi
  40d1b8:	e8 e3 61 ff ff       	callq  4033a0 <_ZSt20__throw_out_of_rangePKc@plt>
  40d1bd:	bf 60 04 41 00       	mov    $0x410460,%edi
  40d1c2:	e8 39 60 ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d1c7:	bf a1 05 41 00       	mov    $0x4105a1,%edi
  40d1cc:	e8 9f 5f ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40d1d1:	4c 89 ff             	mov    %r15,%rdi
  40d1d4:	e9 43 ff ff ff       	jmpq   40d11c <_Z6windowid+0x206c>
  40d1d9:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40d1e0:	00 
  40d1e1:	e9 e4 fe ff ff       	jmpq   40d0ca <_Z6windowid+0x201a>
  40d1e6:	bf 60 04 41 00       	mov    $0x410460,%edi
  40d1eb:	e8 10 60 ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d1f0:	bf 36 00 41 00       	mov    $0x410036,%edi
  40d1f5:	e8 b6 5f ff ff       	callq  4031b0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40d1fa:	bf 36 00 41 00       	mov    $0x410036,%edi
  40d1ff:	e8 9c 61 ff ff       	callq  4033a0 <_ZSt20__throw_out_of_rangePKc@plt>
  40d204:	bf 60 04 41 00       	mov    $0x410460,%edi
  40d209:	e8 f2 5f ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d20e:	bf a1 05 41 00       	mov    $0x4105a1,%edi
  40d213:	e8 58 5f ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40d218:	bf 60 04 41 00       	mov    $0x410460,%edi
  40d21d:	e8 de 5f ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d222:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40d228:	bf 60 04 41 00       	mov    $0x410460,%edi
  40d22d:	e8 ce 5f ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d232:	bf a1 05 41 00       	mov    $0x4105a1,%edi
  40d237:	e8 34 5f ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40d23c:	bf 60 04 41 00       	mov    $0x410460,%edi
  40d241:	e8 ba 5f ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d246:	bb 01 00 00 00       	mov    $0x1,%ebx
  40d24b:	e9 dc f0 ff ff       	jmpq   40c32c <_Z6windowid+0x127c>
  40d250:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40d257:	00 
  40d258:	e9 f5 f5 ff ff       	jmpq   40c852 <_Z6windowid+0x17a2>
  40d25d:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40d264:	00 
  40d265:	e9 3a f6 ff ff       	jmpq   40c8a4 <_Z6windowid+0x17f4>
  40d26a:	48 8d bc 24 30 01 00 	lea    0x130(%rsp),%rdi
  40d271:	00 
  40d272:	e9 f3 fa ff ff       	jmpq   40cd6a <_Z6windowid+0x1cba>
  40d277:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40d27e:	00 
  40d27f:	e9 43 fc ff ff       	jmpq   40cec7 <_Z6windowid+0x1e17>
  40d284:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40d28b:	00 
  40d28c:	e9 3e fb ff ff       	jmpq   40cdcf <_Z6windowid+0x1d1f>
  40d291:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  40d298:	00 
  40d299:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40d29e:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40d2a5:	00 
  40d2a6:	e9 b7 fb ff ff       	jmpq   40ce62 <_Z6windowid+0x1db2>
  40d2ab:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40d2b2:	00 
  40d2b3:	e9 1a e0 ff ff       	jmpq   40b2d2 <_Z6windowid+0x222>
  40d2b8:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40d2bf:	00 
  40d2c0:	e9 67 fc ff ff       	jmpq   40cf2c <_Z6windowid+0x1e7c>
  40d2c5:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40d2cc:	00 
  40d2cd:	e9 c2 fc ff ff       	jmpq   40cf94 <_Z6windowid+0x1ee4>
  40d2d2:	bf a1 05 41 00       	mov    $0x4105a1,%edi
  40d2d7:	e8 94 5e ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40d2dc:	bf 60 04 41 00       	mov    $0x410460,%edi
  40d2e1:	e8 1a 5f ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d2e6:	bf 60 04 41 00       	mov    $0x410460,%edi
  40d2eb:	e8 10 5f ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d2f0:	bf 36 00 41 00       	mov    $0x410036,%edi
  40d2f5:	e8 b6 5e ff ff       	callq  4031b0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40d2fa:	bf 60 04 41 00       	mov    $0x410460,%edi
  40d2ff:	e8 fc 5e ff ff       	callq  403200 <_ZSt19__throw_logic_errorPKc@plt>
  40d304:	48 89 c3             	mov    %rax,%rbx
  40d307:	e9 26 62 ff ff       	jmpq   403532 <_Z6windowid.cold>
  40d30c:	48 89 c3             	mov    %rax,%rbx
  40d30f:	c5 f8 77             	vzeroupper 
  40d312:	e9 97 62 ff ff       	jmpq   4035ae <_Z6windowid.cold+0x7c>
  40d317:	48 89 c3             	mov    %rax,%rbx
  40d31a:	e9 de 62 ff ff       	jmpq   4035fd <_Z6windowid.cold+0xcb>
  40d31f:	48 89 c3             	mov    %rax,%rbx
  40d322:	e9 10 63 ff ff       	jmpq   403637 <_Z6windowid.cold+0x105>
  40d327:	48 89 c3             	mov    %rax,%rbx
  40d32a:	c5 f8 77             	vzeroupper 
  40d32d:	e9 22 63 ff ff       	jmpq   403654 <_Z6windowid.cold+0x122>
  40d332:	48 89 c3             	mov    %rax,%rbx
  40d335:	e9 47 62 ff ff       	jmpq   403581 <_Z6windowid.cold+0x4f>
  40d33a:	49 89 c4             	mov    %rax,%r12
  40d33d:	e9 56 63 ff ff       	jmpq   403698 <_Z6windowid.cold+0x166>
  40d342:	48 89 c3             	mov    %rax,%rbx
  40d345:	c5 f8 77             	vzeroupper 
  40d348:	e9 a5 63 ff ff       	jmpq   4036f2 <_Z6windowid.cold+0x1c0>
  40d34d:	48 89 c3             	mov    %rax,%rbx
  40d350:	e9 8d 63 ff ff       	jmpq   4036e2 <_Z6windowid.cold+0x1b0>
  40d355:	48 89 c3             	mov    %rax,%rbx
  40d358:	e9 5a 64 ff ff       	jmpq   4037b7 <_Z6windowid.cold+0x285>
  40d35d:	49 89 c4             	mov    %rax,%r12
  40d360:	e9 67 64 ff ff       	jmpq   4037cc <_Z6windowid.cold+0x29a>
  40d365:	48 89 c3             	mov    %rax,%rbx
  40d368:	c5 f8 77             	vzeroupper 
  40d36b:	e9 fc 61 ff ff       	jmpq   40356c <_Z6windowid.cold+0x3a>
  40d370:	48 89 c3             	mov    %rax,%rbx
  40d373:	c5 f8 77             	vzeroupper 
  40d376:	e9 0d 64 ff ff       	jmpq   403788 <_Z6windowid.cold+0x256>
  40d37b:	49 89 c4             	mov    %rax,%r12
  40d37e:	c5 f8 77             	vzeroupper 
  40d381:	e9 63 64 ff ff       	jmpq   4037e9 <_Z6windowid.cold+0x2b7>
  40d386:	48 89 c3             	mov    %rax,%rbx
  40d389:	e9 8e 64 ff ff       	jmpq   40381c <_Z6windowid.cold+0x2ea>
  40d38e:	48 89 c3             	mov    %rax,%rbx
  40d391:	c5 f8 77             	vzeroupper 
  40d394:	e9 7b 63 ff ff       	jmpq   403714 <_Z6windowid.cold+0x1e2>
  40d399:	48 89 c3             	mov    %rax,%rbx
  40d39c:	c5 f8 77             	vzeroupper 
  40d39f:	e9 f9 64 ff ff       	jmpq   40389d <_Z6windowid.cold+0x36b>
  40d3a4:	48 89 c3             	mov    %rax,%rbx
  40d3a7:	e9 a6 64 ff ff       	jmpq   403852 <_Z6windowid.cold+0x320>
  40d3ac:	48 89 c7             	mov    %rax,%rdi
  40d3af:	e9 f8 64 ff ff       	jmpq   4038ac <_Z6windowid.cold+0x37a>
  40d3b4:	48 89 c3             	mov    %rax,%rbx
  40d3b7:	c5 f8 77             	vzeroupper 
  40d3ba:	e9 c5 64 ff ff       	jmpq   403884 <_Z6windowid.cold+0x352>
  40d3bf:	48 89 c3             	mov    %rax,%rbx
  40d3c2:	c5 f8 77             	vzeroupper 
  40d3c5:	e9 98 64 ff ff       	jmpq   403862 <_Z6windowid.cold+0x330>
  40d3ca:	48 89 c3             	mov    %rax,%rbx
  40d3cd:	e9 ec 64 ff ff       	jmpq   4038be <_Z6windowid.cold+0x38c>
  40d3d2:	48 89 c3             	mov    %rax,%rbx
  40d3d5:	e9 f6 64 ff ff       	jmpq   4038d0 <_Z6windowid.cold+0x39e>
  40d3da:	48 89 c3             	mov    %rax,%rbx
  40d3dd:	e9 00 65 ff ff       	jmpq   4038e2 <_Z6windowid.cold+0x3b0>
  40d3e2:	48 89 c3             	mov    %rax,%rbx
  40d3e5:	c5 f8 77             	vzeroupper 
  40d3e8:	e9 e8 61 ff ff       	jmpq   4035d5 <_Z6windowid.cold+0xa3>
  40d3ed:	48 89 c3             	mov    %rax,%rbx
  40d3f0:	e9 1b 65 ff ff       	jmpq   403910 <_Z6windowid.cold+0x3de>
  40d3f5:	48 89 c3             	mov    %rax,%rbx
  40d3f8:	c5 f8 77             	vzeroupper 
  40d3fb:	e9 62 63 ff ff       	jmpq   403762 <_Z6windowid.cold+0x230>
  40d400:	48 89 c3             	mov    %rax,%rbx
  40d403:	c5 f8 77             	vzeroupper 
  40d406:	e9 22 65 ff ff       	jmpq   40392d <_Z6windowid.cold+0x3fb>
  40d40b:	48 89 c3             	mov    %rax,%rbx
  40d40e:	e9 56 65 ff ff       	jmpq   403969 <_Z6windowid.cold+0x437>
  40d413:	48 89 c3             	mov    %rax,%rbx
  40d416:	e9 60 65 ff ff       	jmpq   40397b <_Z6windowid.cold+0x449>
  40d41b:	48 89 c3             	mov    %rax,%rbx
  40d41e:	e9 b0 65 ff ff       	jmpq   4039d3 <_Z6windowid.cold+0x4a1>
  40d423:	48 89 c3             	mov    %rax,%rbx
  40d426:	c5 f8 77             	vzeroupper 
  40d429:	e9 35 66 ff ff       	jmpq   403a63 <_Z6windowid.cold+0x531>
  40d42e:	48 89 c3             	mov    %rax,%rbx
  40d431:	c5 f8 77             	vzeroupper 
  40d434:	e9 7a 66 ff ff       	jmpq   403ab3 <_Z6windowid.cold+0x581>
  40d439:	48 89 c3             	mov    %rax,%rbx
  40d43c:	e9 51 66 ff ff       	jmpq   403a92 <_Z6windowid.cold+0x560>
  40d441:	48 89 c3             	mov    %rax,%rbx
  40d444:	e9 99 66 ff ff       	jmpq   403ae2 <_Z6windowid.cold+0x5b0>
  40d449:	e9 e5 66 ff ff       	jmpq   403b33 <_Z6windowid.cold+0x601>
  40d44e:	48 89 c3             	mov    %rax,%rbx
  40d451:	c5 f8 77             	vzeroupper 
  40d454:	e9 99 66 ff ff       	jmpq   403af2 <_Z6windowid.cold+0x5c0>
  40d459:	48 89 c3             	mov    %rax,%rbx
  40d45c:	c5 f8 77             	vzeroupper 
  40d45f:	e9 d3 62 ff ff       	jmpq   403737 <_Z6windowid.cold+0x205>
  40d464:	48 89 c3             	mov    %rax,%rbx
  40d467:	e9 83 68 ff ff       	jmpq   403cef <_Z6windowid.cold+0x7bd>
  40d46c:	48 89 c3             	mov    %rax,%rbx
  40d46f:	e9 7b 68 ff ff       	jmpq   403cef <_Z6windowid.cold+0x7bd>
  40d474:	48 89 c3             	mov    %rax,%rbx
  40d477:	c5 f8 77             	vzeroupper 
  40d47a:	e9 bc 65 ff ff       	jmpq   403a3b <_Z6windowid.cold+0x509>
  40d47f:	48 89 c3             	mov    %rax,%rbx
  40d482:	c5 f8 77             	vzeroupper 
  40d485:	e9 29 67 ff ff       	jmpq   403bb3 <_Z6windowid.cold+0x681>
  40d48a:	c5 f8 77             	vzeroupper 
  40d48d:	e9 fe 66 ff ff       	jmpq   403b90 <_Z6windowid.cold+0x65e>
  40d492:	49 89 c5             	mov    %rax,%r13
  40d495:	e9 e3 66 ff ff       	jmpq   403b7d <_Z6windowid.cold+0x64b>
  40d49a:	48 89 c3             	mov    %rax,%rbx
  40d49d:	e9 2f 67 ff ff       	jmpq   403bd1 <_Z6windowid.cold+0x69f>
  40d4a2:	48 89 c7             	mov    %rax,%rdi
  40d4a5:	e9 3c 67 ff ff       	jmpq   403be6 <_Z6windowid.cold+0x6b4>
  40d4aa:	48 89 c7             	mov    %rax,%rdi
  40d4ad:	e9 46 67 ff ff       	jmpq   403bf8 <_Z6windowid.cold+0x6c6>
  40d4b2:	48 89 c3             	mov    %rax,%rbx
  40d4b5:	e9 50 67 ff ff       	jmpq   403c0a <_Z6windowid.cold+0x6d8>
  40d4ba:	48 89 c3             	mov    %rax,%rbx
  40d4bd:	c5 f8 77             	vzeroupper 
  40d4c0:	e9 94 67 ff ff       	jmpq   403c59 <_Z6windowid.cold+0x727>
  40d4c5:	48 89 c3             	mov    %rax,%rbx
  40d4c8:	e9 f4 67 ff ff       	jmpq   403cc1 <_Z6windowid.cold+0x78f>
  40d4cd:	48 89 c3             	mov    %rax,%rbx
  40d4d0:	e9 39 65 ff ff       	jmpq   403a0e <_Z6windowid.cold+0x4dc>
  40d4d5:	48 89 c3             	mov    %rax,%rbx
  40d4d8:	e9 5b 67 ff ff       	jmpq   403c38 <_Z6windowid.cold+0x706>
  40d4dd:	48 89 c3             	mov    %rax,%rbx
  40d4e0:	c5 f8 77             	vzeroupper 
  40d4e3:	e9 bc 64 ff ff       	jmpq   4039a4 <_Z6windowid.cold+0x472>
  40d4e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40d4ef:	00 

000000000040d4f0 <_ZN8Counters4openEi._omp_fn.0>:
  40d4f0:	55                   	push   %rbp
  40d4f1:	48 89 fd             	mov    %rdi,%rbp
  40d4f4:	53                   	push   %rbx
  40d4f5:	48 83 ec 58          	sub    $0x58,%rsp
  40d4f9:	e8 02 5f ff ff       	callq  403400 <omp_get_thread_num@plt>
  40d4fe:	48 63 d8             	movslq %eax,%rbx
  40d501:	39 5d 08             	cmp    %ebx,0x8(%rbp)
  40d504:	7f 0a                	jg     40d510 <_ZN8Counters4openEi._omp_fn.0+0x20>
  40d506:	48 83 c4 58          	add    $0x58,%rsp
  40d50a:	5b                   	pop    %rbx
  40d50b:	5d                   	pop    %rbp
  40d50c:	c3                   	retq   
  40d50d:	0f 1f 00             	nopl   (%rax)
  40d510:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
  40d514:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d518:	48 89 e6             	mov    %rsp,%rsi
  40d51b:	45 31 c9             	xor    %r9d,%r9d
  40d51e:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40d524:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40d529:	31 d2                	xor    %edx,%edx
  40d52b:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40d530:	31 c0                	xor    %eax,%eax
  40d532:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40d538:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40d53e:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40d545:	00 00 
  40d547:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40d54e:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40d555:	00 
  40d556:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40d55d:	00 00 
  40d55f:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40d566:	00 00 
  40d568:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40d56f:	00 00 
  40d571:	e8 da 5a ff ff       	callq  403050 <syscall@plt>
  40d576:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  40d57a:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d57e:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40d581:	48 89 e6             	mov    %rsp,%rsi
  40d584:	45 31 c9             	xor    %r9d,%r9d
  40d587:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40d58d:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40d592:	31 d2                	xor    %edx,%edx
  40d594:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40d599:	31 c0                	xor    %eax,%eax
  40d59b:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40d5a1:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40d5a7:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40d5ae:	00 00 
  40d5b0:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  40d5b7:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40d5be:	00 
  40d5bf:	48 c7 44 24 08 b7 02 	movq   $0x2b7,0x8(%rsp)
  40d5c6:	00 00 
  40d5c8:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40d5cf:	00 00 
  40d5d1:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40d5d8:	00 00 
  40d5da:	e8 71 5a ff ff       	callq  403050 <syscall@plt>
  40d5df:	48 8b 55 18          	mov    0x18(%rbp),%rdx
  40d5e3:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d5e7:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40d5ea:	48 89 e6             	mov    %rsp,%rsi
  40d5ed:	45 31 c9             	xor    %r9d,%r9d
  40d5f0:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40d5f6:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40d5fb:	31 d2                	xor    %edx,%edx
  40d5fd:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40d602:	31 c0                	xor    %eax,%eax
  40d604:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40d60a:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40d610:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40d617:	00 00 
  40d619:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40d620:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40d627:	00 
  40d628:	48 c7 44 24 08 01 00 	movq   $0x1,0x8(%rsp)
  40d62f:	00 00 
  40d631:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40d638:	00 00 
  40d63a:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40d641:	00 00 
  40d643:	e8 08 5a ff ff       	callq  403050 <syscall@plt>
  40d648:	48 8b 55 30          	mov    0x30(%rbp),%rdx
  40d64c:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d650:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40d653:	48 89 e6             	mov    %rsp,%rsi
  40d656:	45 31 c9             	xor    %r9d,%r9d
  40d659:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40d65f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40d664:	31 d2                	xor    %edx,%edx
  40d666:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40d66b:	31 c0                	xor    %eax,%eax
  40d66d:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40d673:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40d679:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40d680:	00 00 
  40d682:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40d689:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40d690:	00 
  40d691:	48 c7 44 24 08 09 00 	movq   $0x9,0x8(%rsp)
  40d698:	00 00 
  40d69a:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40d6a1:	00 00 
  40d6a3:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40d6aa:	00 00 
  40d6ac:	e8 9f 59 ff ff       	callq  403050 <syscall@plt>
  40d6b1:	48 8b 55 48          	mov    0x48(%rbp),%rdx
  40d6b5:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d6b9:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40d6bc:	48 b8 77 04 00 3c 07 	movabs $0x73c000477,%rax
  40d6c3:	00 00 00 
  40d6c6:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40d6cc:	48 89 e6             	mov    %rsp,%rsi
  40d6cf:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40d6d4:	45 31 c9             	xor    %r9d,%r9d
  40d6d7:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40d6dd:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40d6e2:	31 d2                	xor    %edx,%edx
  40d6e4:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40d6e9:	31 c0                	xor    %eax,%eax
  40d6eb:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40d6f1:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40d6f8:	00 00 
  40d6fa:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  40d701:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40d708:	00 
  40d709:	48 c7 44 24 08 2a 01 	movq   $0x12a,0x8(%rsp)
  40d710:	00 00 
  40d712:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40d719:	00 00 
  40d71b:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40d722:	00 00 
  40d724:	e8 27 59 ff ff       	callq  403050 <syscall@plt>
  40d729:	48 8b 55 60          	mov    0x60(%rbp),%rdx
  40d72d:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d731:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40d734:	48 b8 22 08 f8 bf 0f 	movabs $0xfbff80822,%rax
  40d73b:	00 00 00 
  40d73e:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40d744:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40d74a:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40d74f:	48 89 e6             	mov    %rsp,%rsi
  40d752:	45 31 c9             	xor    %r9d,%r9d
  40d755:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40d75a:	31 d2                	xor    %edx,%edx
  40d75c:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40d761:	31 c0                	xor    %eax,%eax
  40d763:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40d76a:	00 00 
  40d76c:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  40d773:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40d77a:	00 
  40d77b:	48 c7 44 24 08 2b 01 	movq   $0x12b,0x8(%rsp)
  40d782:	00 00 
  40d784:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40d78b:	00 00 
  40d78d:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40d794:	00 00 
  40d796:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40d79c:	e8 af 58 ff ff       	callq  403050 <syscall@plt>
  40d7a1:	49 89 c0             	mov    %rax,%r8
  40d7a4:	48 8b 45 78          	mov    0x78(%rbp),%rax
  40d7a8:	44 89 04 98          	mov    %r8d,(%rax,%rbx,4)
  40d7ac:	48 83 c4 58          	add    $0x58,%rsp
  40d7b0:	5b                   	pop    %rbx
  40d7b1:	5d                   	pop    %rbp
  40d7b2:	c3                   	retq   
  40d7b3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40d7ba:	00 00 00 
  40d7bd:	0f 1f 00             	nopl   (%rax)

000000000040d7c0 <_ZNSt7__cxx119to_stringEi>:
  40d7c0:	41 56                	push   %r14
  40d7c2:	89 f0                	mov    %esi,%eax
  40d7c4:	c1 f8 1f             	sar    $0x1f,%eax
  40d7c7:	41 55                	push   %r13
  40d7c9:	41 89 f6             	mov    %esi,%r14d
  40d7cc:	49 89 fd             	mov    %rdi,%r13
  40d7cf:	41 54                	push   %r12
  40d7d1:	41 c1 ee 1f          	shr    $0x1f,%r14d
  40d7d5:	55                   	push   %rbp
  40d7d6:	89 f5                	mov    %esi,%ebp
  40d7d8:	31 c5                	xor    %eax,%ebp
  40d7da:	29 c5                	sub    %eax,%ebp
  40d7dc:	53                   	push   %rbx
  40d7dd:	83 fd 09             	cmp    $0x9,%ebp
  40d7e0:	0f 86 86 01 00 00    	jbe    40d96c <_ZNSt7__cxx119to_stringEi+0x1ac>
  40d7e6:	83 fd 63             	cmp    $0x63,%ebp
  40d7e9:	0f 86 9f 01 00 00    	jbe    40d98e <_ZNSt7__cxx119to_stringEi+0x1ce>
  40d7ef:	81 fd e7 03 00 00    	cmp    $0x3e7,%ebp
  40d7f5:	0f 86 b3 01 00 00    	jbe    40d9ae <_ZNSt7__cxx119to_stringEi+0x1ee>
  40d7fb:	89 eb                	mov    %ebp,%ebx
  40d7fd:	48 89 da             	mov    %rbx,%rdx
  40d800:	81 fd 0f 27 00 00    	cmp    $0x270f,%ebp
  40d806:	0f 86 92 01 00 00    	jbe    40d99e <_ZNSt7__cxx119to_stringEi+0x1de>
  40d80c:	b9 01 00 00 00       	mov    $0x1,%ecx
  40d811:	48 bf 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rdi
  40d818:	c5 6d 34 
  40d81b:	eb 24                	jmp    40d841 <_ZNSt7__cxx119to_stringEi+0x81>
  40d81d:	0f 1f 00             	nopl   (%rax)
  40d820:	83 fa 63             	cmp    $0x63,%edx
  40d823:	0f 86 c7 00 00 00    	jbe    40d8f0 <_ZNSt7__cxx119to_stringEi+0x130>
  40d829:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40d82f:	0f 86 1b 01 00 00    	jbe    40d950 <_ZNSt7__cxx119to_stringEi+0x190>
  40d835:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40d83b:	0f 86 1f 01 00 00    	jbe    40d960 <_ZNSt7__cxx119to_stringEi+0x1a0>
  40d841:	48 89 d0             	mov    %rdx,%rax
  40d844:	48 89 d6             	mov    %rdx,%rsi
  40d847:	48 f7 e7             	mul    %rdi
  40d84a:	89 c8                	mov    %ecx,%eax
  40d84c:	83 c1 04             	add    $0x4,%ecx
  40d84f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40d853:	48 81 fe 9f 86 01 00 	cmp    $0x1869f,%rsi
  40d85a:	77 c4                	ja     40d820 <_ZNSt7__cxx119to_stringEi+0x60>
  40d85c:	44 8d 60 03          	lea    0x3(%rax),%r12d
  40d860:	49 8d 45 10          	lea    0x10(%r13),%rax
  40d864:	49 89 45 00          	mov    %rax,0x0(%r13)
  40d868:	41 8d 34 0e          	lea    (%r14,%rcx,1),%esi
  40d86c:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40d871:	4c 89 ef             	mov    %r13,%rdi
  40d874:	e8 97 5a ff ff       	callq  403310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40d879:	41 0f b6 ce          	movzbl %r14b,%ecx
  40d87d:	49 03 4d 00          	add    0x0(%r13),%rcx
  40d881:	eb 07                	jmp    40d88a <_ZNSt7__cxx119to_stringEi+0xca>
  40d883:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40d888:	89 eb                	mov    %ebp,%ebx
  40d88a:	48 69 d3 1f 85 eb 51 	imul   $0x51eb851f,%rbx,%rdx
  40d891:	89 e8                	mov    %ebp,%eax
  40d893:	48 c1 ea 25          	shr    $0x25,%rdx
  40d897:	6b f2 64             	imul   $0x64,%edx,%esi
  40d89a:	29 f0                	sub    %esi,%eax
  40d89c:	01 c0                	add    %eax,%eax
  40d89e:	8d 78 01             	lea    0x1(%rax),%edi
  40d8a1:	0f b6 bf c0 05 41 00 	movzbl 0x4105c0(%rdi),%edi
  40d8a8:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40d8af:	89 ee                	mov    %ebp,%esi
  40d8b1:	89 d5                	mov    %edx,%ebp
  40d8b3:	44 89 e2             	mov    %r12d,%edx
  40d8b6:	40 88 3c 11          	mov    %dil,(%rcx,%rdx,1)
  40d8ba:	41 8d 54 24 ff       	lea    -0x1(%r12),%edx
  40d8bf:	88 04 11             	mov    %al,(%rcx,%rdx,1)
  40d8c2:	41 83 ec 02          	sub    $0x2,%r12d
  40d8c6:	81 fe 0f 27 00 00    	cmp    $0x270f,%esi
  40d8cc:	77 ba                	ja     40d888 <_ZNSt7__cxx119to_stringEi+0xc8>
  40d8ce:	81 fe e7 03 00 00    	cmp    $0x3e7,%esi
  40d8d4:	77 4c                	ja     40d922 <_ZNSt7__cxx119to_stringEi+0x162>
  40d8d6:	83 c5 30             	add    $0x30,%ebp
  40d8d9:	40 88 29             	mov    %bpl,(%rcx)
  40d8dc:	4c 89 e8             	mov    %r13,%rax
  40d8df:	5b                   	pop    %rbx
  40d8e0:	5d                   	pop    %rbp
  40d8e1:	41 5c                	pop    %r12
  40d8e3:	41 5d                	pop    %r13
  40d8e5:	41 5e                	pop    %r14
  40d8e7:	c3                   	retq   
  40d8e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40d8ef:	00 
  40d8f0:	83 c0 05             	add    $0x5,%eax
  40d8f3:	41 89 cc             	mov    %ecx,%r12d
  40d8f6:	49 8d 55 10          	lea    0x10(%r13),%rdx
  40d8fa:	49 89 55 00          	mov    %rdx,0x0(%r13)
  40d8fe:	41 8d 34 06          	lea    (%r14,%rax,1),%esi
  40d902:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40d907:	4c 89 ef             	mov    %r13,%rdi
  40d90a:	e8 01 5a ff ff       	callq  403310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40d90f:	41 0f b6 ce          	movzbl %r14b,%ecx
  40d913:	49 03 4d 00          	add    0x0(%r13),%rcx
  40d917:	89 eb                	mov    %ebp,%ebx
  40d919:	83 fd 63             	cmp    $0x63,%ebp
  40d91c:	0f 87 68 ff ff ff    	ja     40d88a <_ZNSt7__cxx119to_stringEi+0xca>
  40d922:	01 ed                	add    %ebp,%ebp
  40d924:	8d 45 01             	lea    0x1(%rbp),%eax
  40d927:	0f b6 80 c0 05 41 00 	movzbl 0x4105c0(%rax),%eax
  40d92e:	0f b6 ad c0 05 41 00 	movzbl 0x4105c0(%rbp),%ebp
  40d935:	88 41 01             	mov    %al,0x1(%rcx)
  40d938:	40 88 29             	mov    %bpl,(%rcx)
  40d93b:	4c 89 e8             	mov    %r13,%rax
  40d93e:	5b                   	pop    %rbx
  40d93f:	5d                   	pop    %rbp
  40d940:	41 5c                	pop    %r12
  40d942:	41 5d                	pop    %r13
  40d944:	41 5e                	pop    %r14
  40d946:	c3                   	retq   
  40d947:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40d94e:	00 00 
  40d950:	8d 48 06             	lea    0x6(%rax),%ecx
  40d953:	44 8d 60 05          	lea    0x5(%rax),%r12d
  40d957:	e9 04 ff ff ff       	jmpq   40d860 <_ZNSt7__cxx119to_stringEi+0xa0>
  40d95c:	0f 1f 40 00          	nopl   0x0(%rax)
  40d960:	8d 48 07             	lea    0x7(%rax),%ecx
  40d963:	44 8d 60 06          	lea    0x6(%rax),%r12d
  40d967:	e9 f4 fe ff ff       	jmpq   40d860 <_ZNSt7__cxx119to_stringEi+0xa0>
  40d96c:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40d970:	48 89 07             	mov    %rax,(%rdi)
  40d973:	41 8d 76 01          	lea    0x1(%r14),%esi
  40d977:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40d97c:	e8 8f 59 ff ff       	callq  403310 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40d981:	41 0f b6 ce          	movzbl %r14b,%ecx
  40d985:	49 03 4d 00          	add    0x0(%r13),%rcx
  40d989:	e9 48 ff ff ff       	jmpq   40d8d6 <_ZNSt7__cxx119to_stringEi+0x116>
  40d98e:	b8 02 00 00 00       	mov    $0x2,%eax
  40d993:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  40d999:	e9 58 ff ff ff       	jmpq   40d8f6 <_ZNSt7__cxx119to_stringEi+0x136>
  40d99e:	41 bc 03 00 00 00    	mov    $0x3,%r12d
  40d9a4:	b9 04 00 00 00       	mov    $0x4,%ecx
  40d9a9:	e9 b2 fe ff ff       	jmpq   40d860 <_ZNSt7__cxx119to_stringEi+0xa0>
  40d9ae:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  40d9b4:	b9 03 00 00 00       	mov    $0x3,%ecx
  40d9b9:	89 eb                	mov    %ebp,%ebx
  40d9bb:	e9 a0 fe ff ff       	jmpq   40d860 <_ZNSt7__cxx119to_stringEi+0xa0>

000000000040d9c0 <_ZNSt10filesystem7__cxx114pathD1Ev>:
  40d9c0:	53                   	push   %rbx
  40d9c1:	48 89 fb             	mov    %rdi,%rbx
  40d9c4:	48 8b 77 20          	mov    0x20(%rdi),%rsi
  40d9c8:	48 85 f6             	test   %rsi,%rsi
  40d9cb:	74 09                	je     40d9d6 <_ZNSt10filesystem7__cxx114pathD1Ev+0x16>
  40d9cd:	48 8d 7f 20          	lea    0x20(%rdi),%rdi
  40d9d1:	e8 ca 56 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40d9d6:	48 8b 3b             	mov    (%rbx),%rdi
  40d9d9:	48 8d 43 10          	lea    0x10(%rbx),%rax
  40d9dd:	48 39 c7             	cmp    %rax,%rdi
  40d9e0:	74 0e                	je     40d9f0 <_ZNSt10filesystem7__cxx114pathD1Ev+0x30>
  40d9e2:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40d9e6:	5b                   	pop    %rbx
  40d9e7:	48 ff c6             	inc    %rsi
  40d9ea:	e9 e1 58 ff ff       	jmpq   4032d0 <_ZdlPvm@plt>
  40d9ef:	90                   	nop
  40d9f0:	5b                   	pop    %rbx
  40d9f1:	c3                   	retq   
  40d9f2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40d9f9:	00 00 00 
  40d9fc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040da00 <_ZN11PerfControl4sendEPKc>:
  40da00:	55                   	push   %rbp
  40da01:	48 89 f5             	mov    %rsi,%rbp
  40da04:	53                   	push   %rbx
  40da05:	48 89 fb             	mov    %rdi,%rbx
  40da08:	48 89 f7             	mov    %rsi,%rdi
  40da0b:	48 83 ec 18          	sub    $0x18,%rsp
  40da0f:	e8 3c 57 ff ff       	callq  403150 <strlen@plt>
  40da14:	8b 3b                	mov    (%rbx),%edi
  40da16:	48 89 c2             	mov    %rax,%rdx
  40da19:	48 89 ee             	mov    %rbp,%rsi
  40da1c:	e8 ef 56 ff ff       	callq  403110 <write@plt>
  40da21:	48 85 c0             	test   %rax,%rax
  40da24:	78 30                	js     40da56 <_ZN11PerfControl4sendEPKc+0x56>
  40da26:	c6 44 24 0f 00       	movb   $0x0,0xf(%rsp)
  40da2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40da30:	8b 7b 04             	mov    0x4(%rbx),%edi
  40da33:	ba 01 00 00 00       	mov    $0x1,%edx
  40da38:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40da3d:	e8 4e 59 ff ff       	callq  403390 <read@plt>
  40da42:	48 83 f8 01          	cmp    $0x1,%rax
  40da46:	75 3a                	jne    40da82 <_ZN11PerfControl4sendEPKc+0x82>
  40da48:	80 7c 24 0f 0a       	cmpb   $0xa,0xf(%rsp)
  40da4d:	75 e1                	jne    40da30 <_ZN11PerfControl4sendEPKc+0x30>
  40da4f:	48 83 c4 18          	add    $0x18,%rsp
  40da53:	5b                   	pop    %rbx
  40da54:	5d                   	pop    %rbp
  40da55:	c3                   	retq   
  40da56:	bf 10 00 00 00       	mov    $0x10,%edi
  40da5b:	e8 00 57 ff ff       	callq  403160 <__cxa_allocate_exception@plt>
  40da60:	48 89 c7             	mov    %rax,%rdi
  40da63:	be da 04 41 00       	mov    $0x4104da,%esi
  40da68:	48 89 c5             	mov    %rax,%rbp
  40da6b:	e8 c0 56 ff ff       	callq  403130 <_ZNSt13runtime_errorC1EPKc@plt>
  40da70:	ba e0 32 40 00       	mov    $0x4032e0,%edx
  40da75:	be a0 2d 41 00       	mov    $0x412da0,%esi
  40da7a:	48 89 ef             	mov    %rbp,%rdi
  40da7d:	e8 ce 59 ff ff       	callq  403450 <__cxa_throw@plt>
  40da82:	bf 10 00 00 00       	mov    $0x10,%edi
  40da87:	e8 d4 56 ff ff       	callq  403160 <__cxa_allocate_exception@plt>
  40da8c:	48 89 c7             	mov    %rax,%rdi
  40da8f:	be f4 04 41 00       	mov    $0x4104f4,%esi
  40da94:	48 89 c5             	mov    %rax,%rbp
  40da97:	e8 94 56 ff ff       	callq  403130 <_ZNSt13runtime_errorC1EPKc@plt>
  40da9c:	eb d2                	jmp    40da70 <_ZN11PerfControl4sendEPKc+0x70>
  40da9e:	48 89 c3             	mov    %rax,%rbx
  40daa1:	eb 02                	jmp    40daa5 <_ZN11PerfControl4sendEPKc+0xa5>
  40daa3:	eb f9                	jmp    40da9e <_ZN11PerfControl4sendEPKc+0x9e>
  40daa5:	48 89 ef             	mov    %rbp,%rdi
  40daa8:	c5 f8 77             	vzeroupper 
  40daab:	e8 60 57 ff ff       	callq  403210 <__cxa_free_exception@plt>
  40dab0:	48 89 df             	mov    %rbx,%rdi
  40dab3:	e8 b8 59 ff ff       	callq  403470 <_Unwind_Resume@plt>
  40dab8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40dabf:	00 

000000000040dac0 <_ZN11PerfControlC1Ev>:
  40dac0:	41 57                	push   %r15
  40dac2:	41 56                	push   %r14
  40dac4:	41 55                	push   %r13
  40dac6:	41 54                	push   %r12
  40dac8:	55                   	push   %rbp
  40dac9:	53                   	push   %rbx
  40daca:	48 89 fb             	mov    %rdi,%rbx
  40dacd:	48 83 ec 38          	sub    $0x38,%rsp
  40dad1:	48 c7 07 ff ff ff ff 	movq   $0xffffffffffffffff,(%rdi)
  40dad8:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
  40dadf:	00 
  40dae0:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40dae7:	00 
  40dae8:	bf 0c 05 41 00       	mov    $0x41050c,%edi
  40daed:	e8 4e 58 ff ff       	callq  403340 <getenv@plt>
  40daf2:	bf 1d 05 41 00       	mov    $0x41051d,%edi
  40daf7:	48 89 c5             	mov    %rax,%rbp
  40dafa:	e8 41 58 ff ff       	callq  403340 <getenv@plt>
  40daff:	bf 2e 05 41 00       	mov    $0x41052e,%edi
  40db04:	49 89 c4             	mov    %rax,%r12
  40db07:	e8 34 58 ff ff       	callq  403340 <getenv@plt>
  40db0c:	48 85 ed             	test   %rbp,%rbp
  40db0f:	74 0b                	je     40db1c <_ZN11PerfControlC1Ev+0x5c>
  40db11:	4d 85 e4             	test   %r12,%r12
  40db14:	74 06                	je     40db1c <_ZN11PerfControlC1Ev+0x5c>
  40db16:	80 7d 00 00          	cmpb   $0x0,0x0(%rbp)
  40db1a:	75 14                	jne    40db30 <_ZN11PerfControlC1Ev+0x70>
  40db1c:	48 83 c4 38          	add    $0x38,%rsp
  40db20:	5b                   	pop    %rbx
  40db21:	5d                   	pop    %rbp
  40db22:	41 5c                	pop    %r12
  40db24:	41 5d                	pop    %r13
  40db26:	41 5e                	pop    %r14
  40db28:	41 5f                	pop    %r15
  40db2a:	c3                   	retq   
  40db2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40db30:	49 89 c5             	mov    %rax,%r13
  40db33:	48 85 c0             	test   %rax,%rax
  40db36:	74 76                	je     40dbae <_ZN11PerfControlC1Ev+0xee>
  40db38:	4c 8d 74 24 20       	lea    0x20(%rsp),%r14
  40db3d:	48 89 c7             	mov    %rax,%rdi
  40db40:	4c 89 74 24 10       	mov    %r14,0x10(%rsp)
  40db45:	e8 06 56 ff ff       	callq  403150 <strlen@plt>
  40db4a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40db4f:	49 89 c7             	mov    %rax,%r15
  40db52:	48 83 f8 0f          	cmp    $0xf,%rax
  40db56:	0f 87 bc 00 00 00    	ja     40dc18 <_ZN11PerfControlC1Ev+0x158>
  40db5c:	48 83 f8 01          	cmp    $0x1,%rax
  40db60:	0f 85 a2 00 00 00    	jne    40dc08 <_ZN11PerfControlC1Ev+0x148>
  40db66:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40db6b:	88 54 24 20          	mov    %dl,0x20(%rsp)
  40db6f:	4c 89 f2             	mov    %r14,%rdx
  40db72:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40db77:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40db7b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40db80:	be 42 05 41 00       	mov    $0x410542,%esi
  40db85:	e8 36 55 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40db8a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  40db8f:	41 89 c5             	mov    %eax,%r13d
  40db92:	4c 39 f7             	cmp    %r14,%rdi
  40db95:	74 0e                	je     40dba5 <_ZN11PerfControlC1Ev+0xe5>
  40db97:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40db9c:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40dba0:	e8 2b 57 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40dba5:	45 85 ed             	test   %r13d,%r13d
  40dba8:	0f 85 6e ff ff ff    	jne    40db1c <_ZN11PerfControlC1Ev+0x5c>
  40dbae:	be 01 00 00 00       	mov    $0x1,%esi
  40dbb3:	48 89 ef             	mov    %rbp,%rdi
  40dbb6:	31 c0                	xor    %eax,%eax
  40dbb8:	e8 63 56 ff ff       	callq  403220 <open@plt>
  40dbbd:	89 03                	mov    %eax,(%rbx)
  40dbbf:	31 f6                	xor    %esi,%esi
  40dbc1:	31 c0                	xor    %eax,%eax
  40dbc3:	4c 89 e7             	mov    %r12,%rdi
  40dbc6:	e8 55 56 ff ff       	callq  403220 <open@plt>
  40dbcb:	89 43 04             	mov    %eax,0x4(%rbx)
  40dbce:	0b 03                	or     (%rbx),%eax
  40dbd0:	0f 89 46 ff ff ff    	jns    40db1c <_ZN11PerfControlC1Ev+0x5c>
  40dbd6:	bf 10 00 00 00       	mov    $0x10,%edi
  40dbdb:	e8 80 55 ff ff       	callq  403160 <__cxa_allocate_exception@plt>
  40dbe0:	48 89 c7             	mov    %rax,%rdi
  40dbe3:	be 48 05 41 00       	mov    $0x410548,%esi
  40dbe8:	48 89 c5             	mov    %rax,%rbp
  40dbeb:	e8 40 55 ff ff       	callq  403130 <_ZNSt13runtime_errorC1EPKc@plt>
  40dbf0:	ba e0 32 40 00       	mov    $0x4032e0,%edx
  40dbf5:	be a0 2d 41 00       	mov    $0x412da0,%esi
  40dbfa:	48 89 ef             	mov    %rbp,%rdi
  40dbfd:	e8 4e 58 ff ff       	callq  403450 <__cxa_throw@plt>
  40dc02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40dc08:	48 85 c0             	test   %rax,%rax
  40dc0b:	75 48                	jne    40dc55 <_ZN11PerfControlC1Ev+0x195>
  40dc0d:	4c 89 f2             	mov    %r14,%rdx
  40dc10:	e9 5d ff ff ff       	jmpq   40db72 <_ZN11PerfControlC1Ev+0xb2>
  40dc15:	0f 1f 00             	nopl   (%rax)
  40dc18:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40dc1d:	31 d2                	xor    %edx,%edx
  40dc1f:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  40dc24:	e8 57 58 ff ff       	callq  403480 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40dc29:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40dc2e:	48 89 c7             	mov    %rax,%rdi
  40dc31:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40dc36:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40dc3b:	4c 89 fa             	mov    %r15,%rdx
  40dc3e:	4c 89 ee             	mov    %r13,%rsi
  40dc41:	e8 2a 56 ff ff       	callq  403270 <memcpy@plt>
  40dc46:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40dc4b:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  40dc50:	e9 1d ff ff ff       	jmpq   40db72 <_ZN11PerfControlC1Ev+0xb2>
  40dc55:	4c 89 f7             	mov    %r14,%rdi
  40dc58:	eb e1                	jmp    40dc3b <_ZN11PerfControlC1Ev+0x17b>
  40dc5a:	49 89 c4             	mov    %rax,%r12
  40dc5d:	48 89 ef             	mov    %rbp,%rdi
  40dc60:	c5 f8 77             	vzeroupper 
  40dc63:	e8 a8 55 ff ff       	callq  403210 <__cxa_free_exception@plt>
  40dc68:	4c 89 e7             	mov    %r12,%rdi
  40dc6b:	e8 00 58 ff ff       	callq  403470 <_Unwind_Resume@plt>

000000000040dc70 <_ZN11PerfControlD1Ev>:
  40dc70:	53                   	push   %rbx
  40dc71:	48 89 fb             	mov    %rdi,%rbx
  40dc74:	8b 3f                	mov    (%rdi),%edi
  40dc76:	85 ff                	test   %edi,%edi
  40dc78:	78 05                	js     40dc7f <_ZN11PerfControlD1Ev+0xf>
  40dc7a:	e8 51 58 ff ff       	callq  4034d0 <close@plt>
  40dc7f:	8b 7b 04             	mov    0x4(%rbx),%edi
  40dc82:	85 ff                	test   %edi,%edi
  40dc84:	79 0a                	jns    40dc90 <_ZN11PerfControlD1Ev+0x20>
  40dc86:	5b                   	pop    %rbx
  40dc87:	c3                   	retq   
  40dc88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40dc8f:	00 
  40dc90:	e8 3b 58 ff ff       	callq  4034d0 <close@plt>
  40dc95:	5b                   	pop    %rbx
  40dc96:	c3                   	retq   
  40dc97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40dc9e:	00 00 

000000000040dca0 <_ZN8Counters4openEi>:
  40dca0:	41 57                	push   %r15
  40dca2:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40dca6:	41 56                	push   %r14
  40dca8:	49 89 fe             	mov    %rdi,%r14
  40dcab:	41 55                	push   %r13
  40dcad:	41 54                	push   %r12
  40dcaf:	55                   	push   %rbp
  40dcb0:	48 89 fd             	mov    %rdi,%rbp
  40dcb3:	53                   	push   %rbx
  40dcb4:	48 63 de             	movslq %esi,%rbx
  40dcb7:	4c 8d 24 9d 00 00 00 	lea    0x0(,%rbx,4),%r12
  40dcbe:	00 
  40dcbf:	48 83 ec 48          	sub    $0x48,%rsp
  40dcc3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40dcc8:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40dccc:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40dcd1:	48 8d 47 48          	lea    0x48(%rdi),%rax
  40dcd5:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40dcda:	48 8d 47 60          	lea    0x60(%rdi),%rax
  40dcde:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  40dce3:	48 8d 47 78          	lea    0x78(%rdi),%rax
  40dce7:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  40dced:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  40dcf1:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
  40dcf6:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40dcfc:	4c 8d 7c 24 18       	lea    0x18(%rsp),%r15
  40dd01:	eb 5a                	jmp    40dd5d <_ZN8Counters4openEi+0xbd>
  40dd03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40dd08:	4c 39 ef             	cmp    %r13,%rdi
  40dd0b:	74 12                	je     40dd1f <_ZN8Counters4openEi+0x7f>
  40dd0d:	be ff 00 00 00       	mov    $0xff,%esi
  40dd12:	4c 89 14 24          	mov    %r10,(%rsp)
  40dd16:	e8 75 54 ff ff       	callq  403190 <memset@plt>
  40dd1b:	4c 8b 14 24          	mov    (%rsp),%r10
  40dd1f:	48 89 da             	mov    %rbx,%rdx
  40dd22:	4c 29 d2             	sub    %r10,%rdx
  40dd25:	48 c1 e2 02          	shl    $0x2,%rdx
  40dd29:	4d 8d 54 15 00       	lea    0x0(%r13,%rdx,1),%r10
  40dd2e:	4d 39 d5             	cmp    %r10,%r13
  40dd31:	74 15                	je     40dd48 <_ZN8Counters4openEi+0xa8>
  40dd33:	be ff 00 00 00       	mov    $0xff,%esi
  40dd38:	4c 89 ef             	mov    %r13,%rdi
  40dd3b:	4c 89 14 24          	mov    %r10,(%rsp)
  40dd3f:	e8 4c 54 ff ff       	callq  403190 <memset@plt>
  40dd44:	4c 8b 14 24          	mov    (%rsp),%r10
  40dd48:	4d 89 56 08          	mov    %r10,0x8(%r14)
  40dd4c:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40dd51:	4c 39 f8             	cmp    %r15,%rax
  40dd54:	74 72                	je     40ddc8 <_ZN8Counters4openEi+0x128>
  40dd56:	4d 8b 37             	mov    (%r15),%r14
  40dd59:	49 83 c7 08          	add    $0x8,%r15
  40dd5d:	49 8b 3e             	mov    (%r14),%rdi
  40dd60:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40dd64:	48 29 fe             	sub    %rdi,%rsi
  40dd67:	48 89 f0             	mov    %rsi,%rax
  40dd6a:	48 c1 f8 02          	sar    $0x2,%rax
  40dd6e:	48 39 c3             	cmp    %rax,%rbx
  40dd71:	0f 87 b9 00 00 00    	ja     40de30 <_ZN8Counters4openEi+0x190>
  40dd77:	4d 8b 6e 08          	mov    0x8(%r14),%r13
  40dd7b:	4c 89 ea             	mov    %r13,%rdx
  40dd7e:	48 29 fa             	sub    %rdi,%rdx
  40dd81:	49 89 d2             	mov    %rdx,%r10
  40dd84:	49 c1 fa 02          	sar    $0x2,%r10
  40dd88:	4c 39 d3             	cmp    %r10,%rbx
  40dd8b:	0f 87 77 ff ff ff    	ja     40dd08 <_ZN8Counters4openEi+0x68>
  40dd91:	49 89 fa             	mov    %rdi,%r10
  40dd94:	48 85 db             	test   %rbx,%rbx
  40dd97:	74 1d                	je     40ddb6 <_ZN8Counters4openEi+0x116>
  40dd99:	4d 01 e2             	add    %r12,%r10
  40dd9c:	4c 39 d7             	cmp    %r10,%rdi
  40dd9f:	74 15                	je     40ddb6 <_ZN8Counters4openEi+0x116>
  40dda1:	4c 89 e2             	mov    %r12,%rdx
  40dda4:	be ff 00 00 00       	mov    $0xff,%esi
  40dda9:	4c 89 14 24          	mov    %r10,(%rsp)
  40ddad:	e8 de 53 ff ff       	callq  403190 <memset@plt>
  40ddb2:	4c 8b 14 24          	mov    (%rsp),%r10
  40ddb6:	4d 39 d5             	cmp    %r10,%r13
  40ddb9:	75 8d                	jne    40dd48 <_ZN8Counters4openEi+0xa8>
  40ddbb:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40ddc0:	4c 39 f8             	cmp    %r15,%rax
  40ddc3:	75 91                	jne    40dd56 <_ZN8Counters4openEi+0xb6>
  40ddc5:	0f 1f 00             	nopl   (%rax)
  40ddc8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40ddcc:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40ddd1:	89 c2                	mov    %eax,%edx
  40ddd3:	31 c9                	xor    %ecx,%ecx
  40ddd5:	bf f0 d4 40 00       	mov    $0x40d4f0,%edi
  40ddda:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
  40dddf:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40dde3:	e8 d8 55 ff ff       	callq  4033c0 <GOMP_parallel@plt>
  40dde8:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  40ddec:	48 8b 75 08          	mov    0x8(%rbp),%rsi
  40ddf0:	c6 85 90 00 00 00 01 	movb   $0x1,0x90(%rbp)
  40ddf7:	48 39 d6             	cmp    %rdx,%rsi
  40ddfa:	74 24                	je     40de20 <_ZN8Counters4openEi+0x180>
  40ddfc:	b9 01 00 00 00       	mov    $0x1,%ecx
  40de01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40de08:	8b 02                	mov    (%rdx),%eax
  40de0a:	48 83 c2 04          	add    $0x4,%rdx
  40de0e:	f7 d0                	not    %eax
  40de10:	c1 e8 1f             	shr    $0x1f,%eax
  40de13:	21 c1                	and    %eax,%ecx
  40de15:	48 39 f2             	cmp    %rsi,%rdx
  40de18:	75 ee                	jne    40de08 <_ZN8Counters4openEi+0x168>
  40de1a:	88 8d 90 00 00 00    	mov    %cl,0x90(%rbp)
  40de20:	48 83 c4 48          	add    $0x48,%rsp
  40de24:	5b                   	pop    %rbx
  40de25:	5d                   	pop    %rbp
  40de26:	41 5c                	pop    %r12
  40de28:	41 5d                	pop    %r13
  40de2a:	41 5e                	pop    %r14
  40de2c:	41 5f                	pop    %r15
  40de2e:	c3                   	retq   
  40de2f:	90                   	nop
  40de30:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
  40de37:	ff ff 1f 
  40de3a:	48 39 c3             	cmp    %rax,%rbx
  40de3d:	77 7b                	ja     40deba <_ZN8Counters4openEi+0x21a>
  40de3f:	48 85 db             	test   %rbx,%rbx
  40de42:	74 5c                	je     40dea0 <_ZN8Counters4openEi+0x200>
  40de44:	4c 89 e7             	mov    %r12,%rdi
  40de47:	e8 74 54 ff ff       	callq  4032c0 <_Znwm@plt>
  40de4c:	4e 8d 2c 20          	lea    (%rax,%r12,1),%r13
  40de50:	49 89 c2             	mov    %rax,%r10
  40de53:	49 39 c5             	cmp    %rax,%r13
  40de56:	74 53                	je     40deab <_ZN8Counters4openEi+0x20b>
  40de58:	be ff 00 00 00       	mov    $0xff,%esi
  40de5d:	48 89 c7             	mov    %rax,%rdi
  40de60:	4c 89 e2             	mov    %r12,%rdx
  40de63:	e8 28 53 ff ff       	callq  403190 <memset@plt>
  40de68:	49 8b 3e             	mov    (%r14),%rdi
  40de6b:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40de6f:	49 89 c2             	mov    %rax,%r10
  40de72:	48 29 fe             	sub    %rdi,%rsi
  40de75:	4c 89 e8             	mov    %r13,%rax
  40de78:	c4 c1 f9 6e ca       	vmovq  %r10,%xmm1
  40de7d:	c4 c3 f1 22 c5 01    	vpinsrq $0x1,%r13,%xmm1,%xmm0
  40de83:	49 89 46 10          	mov    %rax,0x10(%r14)
  40de87:	c4 c1 7a 7f 06       	vmovdqu %xmm0,(%r14)
  40de8c:	48 85 ff             	test   %rdi,%rdi
  40de8f:	0f 84 b7 fe ff ff    	je     40dd4c <_ZN8Counters4openEi+0xac>
  40de95:	e8 36 54 ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40de9a:	e9 ad fe ff ff       	jmpq   40dd4c <_ZN8Counters4openEi+0xac>
  40de9f:	90                   	nop
  40dea0:	4c 89 e0             	mov    %r12,%rax
  40dea3:	45 31 d2             	xor    %r10d,%r10d
  40dea6:	45 31 ed             	xor    %r13d,%r13d
  40dea9:	eb cd                	jmp    40de78 <_ZN8Counters4openEi+0x1d8>
  40deab:	49 8b 3e             	mov    (%r14),%rdi
  40deae:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40deb2:	4c 89 e8             	mov    %r13,%rax
  40deb5:	48 29 fe             	sub    %rdi,%rsi
  40deb8:	eb be                	jmp    40de78 <_ZN8Counters4openEi+0x1d8>
  40deba:	bf 70 05 41 00       	mov    $0x410570,%edi
  40debf:	e8 ac 52 ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40dec4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40decb:	00 00 00 
  40dece:	66 90                	xchg   %ax,%ax

000000000040ded0 <_ZNK8Counters4readEv>:
  40ded0:	55                   	push   %rbp
  40ded1:	48 89 e5             	mov    %rsp,%rbp
  40ded4:	41 57                	push   %r15
  40ded6:	41 56                	push   %r14
  40ded8:	41 55                	push   %r13
  40deda:	41 54                	push   %r12
  40dedc:	49 89 fc             	mov    %rdi,%r12
  40dedf:	53                   	push   %rbx
  40dee0:	48 83 ec 38          	sub    $0x38,%rsp
  40dee4:	c5 fd 28 05 b4 28 00 	vmovapd 0x28b4(%rip),%ymm0        # 4107a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  40deeb:	00 
  40deec:	48 8b 05 c5 28 00 00 	mov    0x28c5(%rip),%rax        # 4107b8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  40def3:	44 0f b6 b6 90 00 00 	movzbl 0x90(%rsi),%r14d
  40defa:	00 
  40defb:	c5 fd 11 47 08       	vmovupd %ymm0,0x8(%rdi)
  40df00:	c6 07 00             	movb   $0x0,(%rdi)
  40df03:	c5 fb 12 05 ad 28 00 	vmovddup 0x28ad(%rip),%xmm0        # 4107b8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  40df0a:	00 
  40df0b:	48 89 47 38          	mov    %rax,0x38(%rdi)
  40df0f:	c7 47 40 00 00 00 00 	movl   $0x0,0x40(%rdi)
  40df16:	c5 f9 11 47 28       	vmovupd %xmm0,0x28(%rdi)
  40df1b:	45 84 f6             	test   %r14b,%r14b
  40df1e:	0f 84 44 01 00 00    	je     40e068 <_ZNK8Counters4readEv+0x198>
  40df24:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
  40df28:	48 8b 16             	mov    (%rsi),%rdx
  40df2b:	48 89 c8             	mov    %rcx,%rax
  40df2e:	48 29 d0             	sub    %rdx,%rax
  40df31:	48 c1 f8 02          	sar    $0x2,%rax
  40df35:	c6 07 01             	movb   $0x1,(%rdi)
  40df38:	89 47 40             	mov    %eax,0x40(%rdi)
  40df3b:	48 89 f3             	mov    %rsi,%rbx
  40df3e:	48 39 d1             	cmp    %rdx,%rcx
  40df41:	0f 84 8c 03 00 00    	je     40e2d3 <_ZNK8Counters4readEv+0x403>
  40df47:	45 31 ff             	xor    %r15d,%r15d
  40df4a:	c5 f8 77             	vzeroupper 
  40df4d:	eb 1e                	jmp    40df6d <_ZNK8Counters4readEv+0x9d>
  40df4f:	90                   	nop
  40df50:	45 31 f6             	xor    %r14d,%r14d
  40df53:	48 8b 13             	mov    (%rbx),%rdx
  40df56:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40df5a:	49 ff c7             	inc    %r15
  40df5d:	48 29 d0             	sub    %rdx,%rax
  40df60:	48 c1 f8 02          	sar    $0x2,%rax
  40df64:	49 39 c7             	cmp    %rax,%r15
  40df67:	0f 83 23 01 00 00    	jae    40e090 <_ZNK8Counters4readEv+0x1c0>
  40df6d:	42 8b 3c ba          	mov    (%rdx,%r15,4),%edi
  40df71:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40df76:	ba 18 00 00 00       	mov    $0x18,%edx
  40df7b:	4e 8d 2c bd 00 00 00 	lea    0x0(,%r15,4),%r13
  40df82:	00 
  40df83:	e8 08 54 ff ff       	callq  403390 <read@plt>
  40df88:	48 83 f8 18          	cmp    $0x18,%rax
  40df8c:	0f 85 ee 00 00 00    	jne    40e080 <_ZNK8Counters4readEv+0x1b0>
  40df92:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40df97:	48 85 c0             	test   %rax,%rax
  40df9a:	0f 84 e0 00 00 00    	je     40e080 <_ZNK8Counters4readEv+0x1b0>
  40dfa0:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40dfa4:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40dfaa:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  40dfaf:	ba 01 00 00 00       	mov    $0x1,%edx
  40dfb4:	48 85 c0             	test   %rax,%rax
  40dfb7:	48 0f 45 d0          	cmovne %rax,%rdx
  40dfbb:	62 f1 f7 08 7b d8    	vcvtusi2sd %rax,%xmm1,%xmm3
  40dfc1:	62 f1 f7 08 7b c2    	vcvtusi2sd %rdx,%xmm1,%xmm0
  40dfc7:	48 8b 43 18          	mov    0x18(%rbx),%rax
  40dfcb:	42 8b 3c 28          	mov    (%rax,%r13,1),%edi
  40dfcf:	c5 eb 5e c0          	vdivsd %xmm0,%xmm2,%xmm0
  40dfd3:	c4 c1 7b 5d 44 24 18 	vminsd 0x18(%r12),%xmm0,%xmm0
  40dfda:	c4 c1 7b 11 44 24 18 	vmovsd %xmm0,0x18(%r12)
  40dfe1:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40dfe8:	02 
  40dfe9:	c5 fb 59 c3          	vmulsd %xmm3,%xmm0,%xmm0
  40dfed:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40dff1:	c4 c1 7b 58 44 24 08 	vaddsd 0x8(%r12),%xmm0,%xmm0
  40dff8:	c4 c1 7b 11 44 24 08 	vmovsd %xmm0,0x8(%r12)
  40dfff:	85 ff                	test   %edi,%edi
  40e001:	0f 88 49 ff ff ff    	js     40df50 <_ZNK8Counters4readEv+0x80>
  40e007:	ba 18 00 00 00       	mov    $0x18,%edx
  40e00c:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e011:	e8 7a 53 ff ff       	callq  403390 <read@plt>
  40e016:	48 83 f8 18          	cmp    $0x18,%rax
  40e01a:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e01e:	0f 85 2c ff ff ff    	jne    40df50 <_ZNK8Counters4readEv+0x80>
  40e024:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e029:	48 85 c0             	test   %rax,%rax
  40e02c:	0f 84 1e ff ff ff    	je     40df50 <_ZNK8Counters4readEv+0x80>
  40e032:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e039:	03 
  40e03a:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e041:	02 
  40e042:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e046:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e04c:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e050:	c4 c1 7b 58 44 24 10 	vaddsd 0x10(%r12),%xmm0,%xmm0
  40e057:	c4 c1 7b 11 44 24 10 	vmovsd %xmm0,0x10(%r12)
  40e05e:	e9 f0 fe ff ff       	jmpq   40df53 <_ZNK8Counters4readEv+0x83>
  40e063:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40e068:	c5 f8 77             	vzeroupper 
  40e06b:	48 83 c4 38          	add    $0x38,%rsp
  40e06f:	5b                   	pop    %rbx
  40e070:	4c 89 e0             	mov    %r12,%rax
  40e073:	41 5c                	pop    %r12
  40e075:	41 5d                	pop    %r13
  40e077:	41 5e                	pop    %r14
  40e079:	41 5f                	pop    %r15
  40e07b:	5d                   	pop    %rbp
  40e07c:	c3                   	retq   
  40e07d:	0f 1f 00             	nopl   (%rax)
  40e080:	41 c6 04 24 00       	movb   $0x0,(%r12)
  40e085:	eb e4                	jmp    40e06b <_ZNK8Counters4readEv+0x19b>
  40e087:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40e08e:	00 00 
  40e090:	45 84 f6             	test   %r14b,%r14b
  40e093:	75 0c                	jne    40e0a1 <_ZNK8Counters4readEv+0x1d1>
  40e095:	48 8b 05 1c 27 00 00 	mov    0x271c(%rip),%rax        # 4107b8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  40e09c:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  40e0a1:	4c 8b 7b 30          	mov    0x30(%rbx),%r15
  40e0a5:	4c 8b 73 38          	mov    0x38(%rbx),%r14
  40e0a9:	4d 39 f7             	cmp    %r14,%r15
  40e0ac:	0f 84 29 02 00 00    	je     40e2db <_ZNK8Counters4readEv+0x40b>
  40e0b2:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  40e0b6:	c5 fb 11 64 24 08    	vmovsd %xmm4,0x8(%rsp)
  40e0bc:	c4 c1 f9 7e e5       	vmovq  %xmm4,%r13
  40e0c1:	eb 5d                	jmp    40e120 <_ZNK8Counters4readEv+0x250>
  40e0c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40e0c8:	ba 18 00 00 00       	mov    $0x18,%edx
  40e0cd:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e0d2:	e8 b9 52 ff ff       	callq  403390 <read@plt>
  40e0d7:	48 83 f8 18          	cmp    $0x18,%rax
  40e0db:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e0df:	75 46                	jne    40e127 <_ZNK8Counters4readEv+0x257>
  40e0e1:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e0e6:	48 85 c0             	test   %rax,%rax
  40e0e9:	74 3c                	je     40e127 <_ZNK8Counters4readEv+0x257>
  40e0eb:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e0f2:	03 
  40e0f3:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e0fa:	02 
  40e0fb:	c4 c1 f9 6e ed       	vmovq  %r13,%xmm5
  40e100:	49 83 c7 04          	add    $0x4,%r15
  40e104:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e108:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e10e:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e112:	c5 d3 58 e0          	vaddsd %xmm0,%xmm5,%xmm4
  40e116:	c4 c1 f9 7e e5       	vmovq  %xmm4,%r13
  40e11b:	4d 39 fe             	cmp    %r15,%r14
  40e11e:	74 11                	je     40e131 <_ZNK8Counters4readEv+0x261>
  40e120:	41 8b 3f             	mov    (%r15),%edi
  40e123:	85 ff                	test   %edi,%edi
  40e125:	79 a1                	jns    40e0c8 <_ZNK8Counters4readEv+0x1f8>
  40e127:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40e12e:	00 f0 bf 
  40e131:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
  40e135:	4c 8b 73 50          	mov    0x50(%rbx),%r14
  40e139:	4d 89 6c 24 20       	mov    %r13,0x20(%r12)
  40e13e:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  40e143:	4d 39 f7             	cmp    %r14,%r15
  40e146:	75 60                	jne    40e1a8 <_ZNK8Counters4readEv+0x2d8>
  40e148:	eb 6f                	jmp    40e1b9 <_ZNK8Counters4readEv+0x2e9>
  40e14a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40e150:	ba 18 00 00 00       	mov    $0x18,%edx
  40e155:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e15a:	e8 31 52 ff ff       	callq  403390 <read@plt>
  40e15f:	48 83 f8 18          	cmp    $0x18,%rax
  40e163:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e167:	75 46                	jne    40e1af <_ZNK8Counters4readEv+0x2df>
  40e169:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e16e:	48 85 c0             	test   %rax,%rax
  40e171:	74 3c                	je     40e1af <_ZNK8Counters4readEv+0x2df>
  40e173:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e17a:	03 
  40e17b:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e182:	02 
  40e183:	c4 c1 f9 6e fd       	vmovq  %r13,%xmm7
  40e188:	49 83 c7 04          	add    $0x4,%r15
  40e18c:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e190:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e196:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e19a:	c5 c3 58 f0          	vaddsd %xmm0,%xmm7,%xmm6
  40e19e:	c4 c1 f9 7e f5       	vmovq  %xmm6,%r13
  40e1a3:	4d 39 fe             	cmp    %r15,%r14
  40e1a6:	74 11                	je     40e1b9 <_ZNK8Counters4readEv+0x2e9>
  40e1a8:	41 8b 3f             	mov    (%r15),%edi
  40e1ab:	85 ff                	test   %edi,%edi
  40e1ad:	79 a1                	jns    40e150 <_ZNK8Counters4readEv+0x280>
  40e1af:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40e1b6:	00 f0 bf 
  40e1b9:	4c 8b 7b 60          	mov    0x60(%rbx),%r15
  40e1bd:	4c 8b 73 68          	mov    0x68(%rbx),%r14
  40e1c1:	4d 89 6c 24 28       	mov    %r13,0x28(%r12)
  40e1c6:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  40e1cb:	4d 39 f7             	cmp    %r14,%r15
  40e1ce:	75 60                	jne    40e230 <_ZNK8Counters4readEv+0x360>
  40e1d0:	eb 6f                	jmp    40e241 <_ZNK8Counters4readEv+0x371>
  40e1d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40e1d8:	ba 18 00 00 00       	mov    $0x18,%edx
  40e1dd:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e1e2:	e8 a9 51 ff ff       	callq  403390 <read@plt>
  40e1e7:	48 83 f8 18          	cmp    $0x18,%rax
  40e1eb:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e1ef:	75 46                	jne    40e237 <_ZNK8Counters4readEv+0x367>
  40e1f1:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e1f6:	48 85 c0             	test   %rax,%rax
  40e1f9:	74 3c                	je     40e237 <_ZNK8Counters4readEv+0x367>
  40e1fb:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e202:	03 
  40e203:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e20a:	02 
  40e20b:	c4 c1 f9 6e ed       	vmovq  %r13,%xmm5
  40e210:	49 83 c7 04          	add    $0x4,%r15
  40e214:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e218:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e21e:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e222:	c5 d3 58 e0          	vaddsd %xmm0,%xmm5,%xmm4
  40e226:	c4 c1 f9 7e e5       	vmovq  %xmm4,%r13
  40e22b:	4d 39 fe             	cmp    %r15,%r14
  40e22e:	74 11                	je     40e241 <_ZNK8Counters4readEv+0x371>
  40e230:	41 8b 3f             	mov    (%r15),%edi
  40e233:	85 ff                	test   %edi,%edi
  40e235:	79 a1                	jns    40e1d8 <_ZNK8Counters4readEv+0x308>
  40e237:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40e23e:	00 f0 bf 
  40e241:	4c 8b 73 78          	mov    0x78(%rbx),%r14
  40e245:	48 8b 9b 80 00 00 00 	mov    0x80(%rbx),%rbx
  40e24c:	4d 89 6c 24 30       	mov    %r13,0x30(%r12)
  40e251:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  40e256:	49 39 de             	cmp    %rbx,%r14
  40e259:	75 5d                	jne    40e2b8 <_ZNK8Counters4readEv+0x3e8>
  40e25b:	eb 6c                	jmp    40e2c9 <_ZNK8Counters4readEv+0x3f9>
  40e25d:	0f 1f 00             	nopl   (%rax)
  40e260:	ba 18 00 00 00       	mov    $0x18,%edx
  40e265:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e26a:	e8 21 51 ff ff       	callq  403390 <read@plt>
  40e26f:	48 83 f8 18          	cmp    $0x18,%rax
  40e273:	75 4a                	jne    40e2bf <_ZNK8Counters4readEv+0x3ef>
  40e275:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e27a:	48 85 c0             	test   %rax,%rax
  40e27d:	74 40                	je     40e2bf <_ZNK8Counters4readEv+0x3ef>
  40e27f:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e283:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e28a:	03 
  40e28b:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e292:	02 
  40e293:	c4 c1 f9 6e fd       	vmovq  %r13,%xmm7
  40e298:	49 83 c6 04          	add    $0x4,%r14
  40e29c:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e2a0:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e2a6:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e2aa:	c5 c3 58 f0          	vaddsd %xmm0,%xmm7,%xmm6
  40e2ae:	c4 c1 f9 7e f5       	vmovq  %xmm6,%r13
  40e2b3:	4c 39 f3             	cmp    %r14,%rbx
  40e2b6:	74 11                	je     40e2c9 <_ZNK8Counters4readEv+0x3f9>
  40e2b8:	41 8b 3e             	mov    (%r14),%edi
  40e2bb:	85 ff                	test   %edi,%edi
  40e2bd:	79 a1                	jns    40e260 <_ZNK8Counters4readEv+0x390>
  40e2bf:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40e2c6:	00 f0 bf 
  40e2c9:	4d 89 6c 24 38       	mov    %r13,0x38(%r12)
  40e2ce:	e9 98 fd ff ff       	jmpq   40e06b <_ZNK8Counters4readEv+0x19b>
  40e2d3:	c5 f8 77             	vzeroupper 
  40e2d6:	e9 c6 fd ff ff       	jmpq   40e0a1 <_ZNK8Counters4readEv+0x1d1>
  40e2db:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
  40e2df:	c5 fb 11 6c 24 08    	vmovsd %xmm5,0x8(%rsp)
  40e2e5:	c4 c1 f9 7e ed       	vmovq  %xmm5,%r13
  40e2ea:	e9 42 fe ff ff       	jmpq   40e131 <_ZNK8Counters4readEv+0x261>
  40e2ef:	90                   	nop

000000000040e2f0 <_ZN8CountersD1Ev>:
  40e2f0:	41 56                	push   %r14
  40e2f2:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40e2f6:	41 55                	push   %r13
  40e2f8:	49 89 fd             	mov    %rdi,%r13
  40e2fb:	41 54                	push   %r12
  40e2fd:	55                   	push   %rbp
  40e2fe:	53                   	push   %rbx
  40e2ff:	48 83 ec 30          	sub    $0x30,%rsp
  40e303:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40e308:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40e30c:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40e311:	48 8d 47 48          	lea    0x48(%rdi),%rax
  40e315:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40e31a:	48 8d 47 60          	lea    0x60(%rdi),%rax
  40e31e:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  40e323:	48 89 3c 24          	mov    %rdi,(%rsp)
  40e327:	48 8d 47 78          	lea    0x78(%rdi),%rax
  40e32b:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  40e331:	c5 f9 7f 44 24 20    	vmovdqa %xmm0,0x20(%rsp)
  40e337:	49 89 e4             	mov    %rsp,%r12
  40e33a:	4c 8d 74 24 30       	lea    0x30(%rsp),%r14
  40e33f:	90                   	nop
  40e340:	49 8b 04 24          	mov    (%r12),%rax
  40e344:	48 8b 18             	mov    (%rax),%rbx
  40e347:	48 8b 68 08          	mov    0x8(%rax),%rbp
  40e34b:	48 39 dd             	cmp    %rbx,%rbp
  40e34e:	74 14                	je     40e364 <_ZN8CountersD1Ev+0x74>
  40e350:	8b 3b                	mov    (%rbx),%edi
  40e352:	85 ff                	test   %edi,%edi
  40e354:	78 05                	js     40e35b <_ZN8CountersD1Ev+0x6b>
  40e356:	e8 75 51 ff ff       	callq  4034d0 <close@plt>
  40e35b:	48 83 c3 04          	add    $0x4,%rbx
  40e35f:	48 39 dd             	cmp    %rbx,%rbp
  40e362:	75 ec                	jne    40e350 <_ZN8CountersD1Ev+0x60>
  40e364:	49 83 c4 08          	add    $0x8,%r12
  40e368:	4d 39 e6             	cmp    %r12,%r14
  40e36b:	75 d3                	jne    40e340 <_ZN8CountersD1Ev+0x50>
  40e36d:	49 8b 7d 78          	mov    0x78(%r13),%rdi
  40e371:	48 85 ff             	test   %rdi,%rdi
  40e374:	74 0f                	je     40e385 <_ZN8CountersD1Ev+0x95>
  40e376:	49 8b b5 88 00 00 00 	mov    0x88(%r13),%rsi
  40e37d:	48 29 fe             	sub    %rdi,%rsi
  40e380:	e8 4b 4f ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40e385:	49 8b 7d 60          	mov    0x60(%r13),%rdi
  40e389:	48 85 ff             	test   %rdi,%rdi
  40e38c:	74 0c                	je     40e39a <_ZN8CountersD1Ev+0xaa>
  40e38e:	49 8b 75 70          	mov    0x70(%r13),%rsi
  40e392:	48 29 fe             	sub    %rdi,%rsi
  40e395:	e8 36 4f ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40e39a:	49 8b 7d 48          	mov    0x48(%r13),%rdi
  40e39e:	48 85 ff             	test   %rdi,%rdi
  40e3a1:	74 0c                	je     40e3af <_ZN8CountersD1Ev+0xbf>
  40e3a3:	49 8b 75 58          	mov    0x58(%r13),%rsi
  40e3a7:	48 29 fe             	sub    %rdi,%rsi
  40e3aa:	e8 21 4f ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40e3af:	49 8b 7d 30          	mov    0x30(%r13),%rdi
  40e3b3:	48 85 ff             	test   %rdi,%rdi
  40e3b6:	74 0c                	je     40e3c4 <_ZN8CountersD1Ev+0xd4>
  40e3b8:	49 8b 75 40          	mov    0x40(%r13),%rsi
  40e3bc:	48 29 fe             	sub    %rdi,%rsi
  40e3bf:	e8 0c 4f ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40e3c4:	49 8b 7d 18          	mov    0x18(%r13),%rdi
  40e3c8:	48 85 ff             	test   %rdi,%rdi
  40e3cb:	74 0c                	je     40e3d9 <_ZN8CountersD1Ev+0xe9>
  40e3cd:	49 8b 75 28          	mov    0x28(%r13),%rsi
  40e3d1:	48 29 fe             	sub    %rdi,%rsi
  40e3d4:	e8 f7 4e ff ff       	callq  4032d0 <_ZdlPvm@plt>
  40e3d9:	49 8b 7d 00          	mov    0x0(%r13),%rdi
  40e3dd:	48 85 ff             	test   %rdi,%rdi
  40e3e0:	74 18                	je     40e3fa <_ZN8CountersD1Ev+0x10a>
  40e3e2:	49 8b 75 10          	mov    0x10(%r13),%rsi
  40e3e6:	48 83 c4 30          	add    $0x30,%rsp
  40e3ea:	5b                   	pop    %rbx
  40e3eb:	5d                   	pop    %rbp
  40e3ec:	41 5c                	pop    %r12
  40e3ee:	41 5d                	pop    %r13
  40e3f0:	48 29 fe             	sub    %rdi,%rsi
  40e3f3:	41 5e                	pop    %r14
  40e3f5:	e9 d6 4e ff ff       	jmpq   4032d0 <_ZdlPvm@plt>
  40e3fa:	48 83 c4 30          	add    $0x30,%rsp
  40e3fe:	5b                   	pop    %rbx
  40e3ff:	5d                   	pop    %rbp
  40e400:	41 5c                	pop    %r12
  40e402:	41 5d                	pop    %r13
  40e404:	41 5e                	pop    %r14
  40e406:	c3                   	retq   
  40e407:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40e40e:	00 00 

000000000040e410 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>:
  40e410:	41 57                	push   %r15
  40e412:	49 89 ff             	mov    %rdi,%r15
  40e415:	41 56                	push   %r14
  40e417:	41 55                	push   %r13
  40e419:	49 89 f5             	mov    %rsi,%r13
  40e41c:	41 54                	push   %r12
  40e41e:	49 89 cc             	mov    %rcx,%r12
  40e421:	55                   	push   %rbp
  40e422:	48 89 d5             	mov    %rdx,%rbp
  40e425:	53                   	push   %rbx
  40e426:	48 83 ec 28          	sub    $0x28,%rsp
  40e42a:	44 89 44 24 0c       	mov    %r8d,0xc(%rsp)
  40e42f:	e8 0c 4c ff ff       	callq  403040 <__errno_location@plt>
  40e434:	44 8b 30             	mov    (%rax),%r14d
  40e437:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40e43d:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  40e441:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  40e446:	48 89 ef             	mov    %rbp,%rdi
  40e449:	48 89 c3             	mov    %rax,%rbx
  40e44c:	41 ff d7             	callq  *%r15
  40e44f:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40e454:	48 39 e9             	cmp    %rbp,%rcx
  40e457:	74 3f                	je     40e498 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x88>
  40e459:	8b 33                	mov    (%rbx),%esi
  40e45b:	83 fe 22             	cmp    $0x22,%esi
  40e45e:	74 30                	je     40e490 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  40e460:	ba 00 00 00 80       	mov    $0x80000000,%edx
  40e465:	48 01 c2             	add    %rax,%rdx
  40e468:	48 c1 ea 20          	shr    $0x20,%rdx
  40e46c:	75 22                	jne    40e490 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  40e46e:	4d 85 e4             	test   %r12,%r12
  40e471:	74 07                	je     40e47a <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x6a>
  40e473:	48 29 e9             	sub    %rbp,%rcx
  40e476:	49 89 0c 24          	mov    %rcx,(%r12)
  40e47a:	85 f6                	test   %esi,%esi
  40e47c:	75 03                	jne    40e481 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x71>
  40e47e:	44 89 33             	mov    %r14d,(%rbx)
  40e481:	48 83 c4 28          	add    $0x28,%rsp
  40e485:	5b                   	pop    %rbx
  40e486:	5d                   	pop    %rbp
  40e487:	41 5c                	pop    %r12
  40e489:	41 5d                	pop    %r13
  40e48b:	41 5e                	pop    %r14
  40e48d:	41 5f                	pop    %r15
  40e48f:	c3                   	retq   
  40e490:	4c 89 ef             	mov    %r13,%rdi
  40e493:	e8 08 4f ff ff       	callq  4033a0 <_ZSt20__throw_out_of_rangePKc@plt>
  40e498:	4c 89 ef             	mov    %r13,%rdi
  40e49b:	e8 10 4d ff ff       	callq  4031b0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40e4a0:	48 89 c7             	mov    %rax,%rdi
  40e4a3:	83 3b 00             	cmpl   $0x0,(%rbx)
  40e4a6:	75 03                	jne    40e4ab <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x9b>
  40e4a8:	44 89 33             	mov    %r14d,(%rbx)
  40e4ab:	c5 f8 77             	vzeroupper 
  40e4ae:	e8 bd 4f ff ff       	callq  403470 <_Unwind_Resume@plt>
  40e4b3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40e4ba:	00 00 00 
  40e4bd:	0f 1f 00             	nopl   (%rax)

000000000040e4c0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>:
  40e4c0:	41 55                	push   %r13
  40e4c2:	49 89 f5             	mov    %rsi,%r13
  40e4c5:	41 54                	push   %r12
  40e4c7:	49 89 fc             	mov    %rdi,%r12
  40e4ca:	48 89 f7             	mov    %rsi,%rdi
  40e4cd:	55                   	push   %rbp
  40e4ce:	48 89 d5             	mov    %rdx,%rbp
  40e4d1:	e8 7a 4c ff ff       	callq  403150 <strlen@plt>
  40e4d6:	49 89 c0             	mov    %rax,%r8
  40e4d9:	4c 89 e9             	mov    %r13,%rcx
  40e4dc:	31 d2                	xor    %edx,%edx
  40e4de:	31 f6                	xor    %esi,%esi
  40e4e0:	48 89 ef             	mov    %rbp,%rdi
  40e4e3:	e8 f8 4e ff ff       	callq  4033e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40e4e8:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
  40e4ed:	49 89 14 24          	mov    %rdx,(%r12)
  40e4f1:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40e4f5:	48 8b 08             	mov    (%rax),%rcx
  40e4f8:	48 39 d1             	cmp    %rdx,%rcx
  40e4fb:	74 33                	je     40e530 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_+0x70>
  40e4fd:	49 89 0c 24          	mov    %rcx,(%r12)
  40e501:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40e505:	49 89 4c 24 10       	mov    %rcx,0x10(%r12)
  40e50a:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40e50e:	48 89 10             	mov    %rdx,(%rax)
  40e511:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40e518:	00 
  40e519:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
  40e51e:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40e522:	4c 89 e0             	mov    %r12,%rax
  40e525:	5d                   	pop    %rbp
  40e526:	41 5c                	pop    %r12
  40e528:	41 5d                	pop    %r13
  40e52a:	c3                   	retq   
  40e52b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40e530:	c5 fa 6f 40 10       	vmovdqu 0x10(%rax),%xmm0
  40e535:	c4 c1 7a 7f 44 24 10 	vmovdqu %xmm0,0x10(%r12)
  40e53c:	eb cc                	jmp    40e50a <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_+0x4a>
  40e53e:	66 90                	xchg   %ax,%ax

000000000040e540 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>:
  40e540:	41 55                	push   %r13
  40e542:	49 89 d5             	mov    %rdx,%r13
  40e545:	41 54                	push   %r12
  40e547:	49 89 fc             	mov    %rdi,%r12
  40e54a:	48 89 d7             	mov    %rdx,%rdi
  40e54d:	55                   	push   %rbp
  40e54e:	48 89 f5             	mov    %rsi,%rbp
  40e551:	e8 fa 4b ff ff       	callq  403150 <strlen@plt>
  40e556:	48 89 c2             	mov    %rax,%rdx
  40e559:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40e560:	ff ff 3f 
  40e563:	48 2b 45 08          	sub    0x8(%rbp),%rax
  40e567:	48 39 c2             	cmp    %rax,%rdx
  40e56a:	77 62                	ja     40e5ce <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_+0x8e>
  40e56c:	4c 89 ee             	mov    %r13,%rsi
  40e56f:	48 89 ef             	mov    %rbp,%rdi
  40e572:	e8 79 4b ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40e577:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
  40e57c:	49 89 14 24          	mov    %rdx,(%r12)
  40e580:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40e584:	48 8b 08             	mov    (%rax),%rcx
  40e587:	48 39 d1             	cmp    %rdx,%rcx
  40e58a:	74 34                	je     40e5c0 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_+0x80>
  40e58c:	49 89 0c 24          	mov    %rcx,(%r12)
  40e590:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40e594:	49 89 4c 24 10       	mov    %rcx,0x10(%r12)
  40e599:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40e59d:	48 89 10             	mov    %rdx,(%rax)
  40e5a0:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40e5a7:	00 
  40e5a8:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
  40e5ad:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40e5b1:	4c 89 e0             	mov    %r12,%rax
  40e5b4:	5d                   	pop    %rbp
  40e5b5:	41 5c                	pop    %r12
  40e5b7:	41 5d                	pop    %r13
  40e5b9:	c3                   	retq   
  40e5ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40e5c0:	c5 fa 6f 40 10       	vmovdqu 0x10(%rax),%xmm0
  40e5c5:	c4 c1 7a 7f 44 24 10 	vmovdqu %xmm0,0x10(%r12)
  40e5cc:	eb cb                	jmp    40e599 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_+0x59>
  40e5ce:	bf a1 05 41 00       	mov    $0x4105a1,%edi
  40e5d3:	e8 98 4b ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40e5d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40e5df:	00 

000000000040e5e0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_>:
  40e5e0:	55                   	push   %rbp
  40e5e1:	48 89 f0             	mov    %rsi,%rax
  40e5e4:	48 89 e5             	mov    %rsp,%rbp
  40e5e7:	41 55                	push   %r13
  40e5e9:	41 54                	push   %r12
  40e5eb:	49 89 d4             	mov    %rdx,%r12
  40e5ee:	53                   	push   %rbx
  40e5ef:	48 89 fb             	mov    %rdi,%rbx
  40e5f2:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40e5f6:	48 8b 3f             	mov    (%rdi),%rdi
  40e5f9:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40e5fd:	48 29 fe             	sub    %rdi,%rsi
  40e600:	48 89 f2             	mov    %rsi,%rdx
  40e603:	48 c1 fa 03          	sar    $0x3,%rdx
  40e607:	48 39 c2             	cmp    %rax,%rdx
  40e60a:	0f 82 c8 01 00 00    	jb     40e7d8 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1f8>
  40e610:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  40e614:	48 89 ce             	mov    %rcx,%rsi
  40e617:	48 29 fe             	sub    %rdi,%rsi
  40e61a:	48 c1 fe 03          	sar    $0x3,%rsi
  40e61e:	48 39 f0             	cmp    %rsi,%rax
  40e621:	0f 86 09 01 00 00    	jbe    40e730 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x150>
  40e627:	4d 8b 0c 24          	mov    (%r12),%r9
  40e62b:	48 39 cf             	cmp    %rcx,%rdi
  40e62e:	74 6e                	je     40e69e <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xbe>
  40e630:	4c 8d 41 f8          	lea    -0x8(%rcx),%r8
  40e634:	49 29 f8             	sub    %rdi,%r8
  40e637:	4d 89 c2             	mov    %r8,%r10
  40e63a:	49 c1 ea 03          	shr    $0x3,%r10
  40e63e:	48 89 fa             	mov    %rdi,%rdx
  40e641:	49 ff c2             	inc    %r10
  40e644:	49 83 f8 10          	cmp    $0x10,%r8
  40e648:	76 33                	jbe    40e67d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x9d>
  40e64a:	4d 89 d0             	mov    %r10,%r8
  40e64d:	49 c1 e8 02          	shr    $0x2,%r8
  40e651:	49 c1 e0 05          	shl    $0x5,%r8
  40e655:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40e65b:	49 01 f8             	add    %rdi,%r8
  40e65e:	66 90                	xchg   %ax,%ax
  40e660:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40e664:	48 83 c2 20          	add    $0x20,%rdx
  40e668:	49 39 d0             	cmp    %rdx,%r8
  40e66b:	75 f3                	jne    40e660 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x80>
  40e66d:	4c 89 d2             	mov    %r10,%rdx
  40e670:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  40e674:	48 8d 3c d7          	lea    (%rdi,%rdx,8),%rdi
  40e678:	49 39 d2             	cmp    %rdx,%r10
  40e67b:	74 1d                	je     40e69a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40e67d:	48 8d 57 08          	lea    0x8(%rdi),%rdx
  40e681:	4c 89 0f             	mov    %r9,(%rdi)
  40e684:	48 39 d1             	cmp    %rdx,%rcx
  40e687:	74 11                	je     40e69a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40e689:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40e68d:	4c 89 4f 08          	mov    %r9,0x8(%rdi)
  40e691:	48 39 d1             	cmp    %rdx,%rcx
  40e694:	74 04                	je     40e69a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40e696:	4c 89 4f 10          	mov    %r9,0x10(%rdi)
  40e69a:	4d 8b 0c 24          	mov    (%r12),%r9
  40e69e:	48 29 f0             	sub    %rsi,%rax
  40e6a1:	48 c1 e0 03          	shl    $0x3,%rax
  40e6a5:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
  40e6a9:	48 39 f9             	cmp    %rdi,%rcx
  40e6ac:	74 6c                	je     40e71a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40e6ae:	48 83 e8 08          	sub    $0x8,%rax
  40e6b2:	48 89 c6             	mov    %rax,%rsi
  40e6b5:	48 c1 ee 03          	shr    $0x3,%rsi
  40e6b9:	48 89 ca             	mov    %rcx,%rdx
  40e6bc:	48 ff c6             	inc    %rsi
  40e6bf:	48 83 f8 10          	cmp    $0x10,%rax
  40e6c3:	76 38                	jbe    40e6fd <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x11d>
  40e6c5:	48 89 f0             	mov    %rsi,%rax
  40e6c8:	48 c1 e8 02          	shr    $0x2,%rax
  40e6cc:	48 c1 e0 05          	shl    $0x5,%rax
  40e6d0:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40e6d6:	48 01 c8             	add    %rcx,%rax
  40e6d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40e6e0:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40e6e4:	48 83 c2 20          	add    $0x20,%rdx
  40e6e8:	48 39 d0             	cmp    %rdx,%rax
  40e6eb:	75 f3                	jne    40e6e0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x100>
  40e6ed:	48 89 f0             	mov    %rsi,%rax
  40e6f0:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40e6f4:	48 8d 0c c1          	lea    (%rcx,%rax,8),%rcx
  40e6f8:	48 39 c6             	cmp    %rax,%rsi
  40e6fb:	74 1d                	je     40e71a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40e6fd:	48 8d 41 08          	lea    0x8(%rcx),%rax
  40e701:	4c 89 09             	mov    %r9,(%rcx)
  40e704:	48 39 c7             	cmp    %rax,%rdi
  40e707:	74 11                	je     40e71a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40e709:	48 8d 41 10          	lea    0x10(%rcx),%rax
  40e70d:	4c 89 49 08          	mov    %r9,0x8(%rcx)
  40e711:	48 39 c7             	cmp    %rax,%rdi
  40e714:	74 04                	je     40e71a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40e716:	4c 89 49 10          	mov    %r9,0x10(%rcx)
  40e71a:	48 89 7b 08          	mov    %rdi,0x8(%rbx)
  40e71e:	c5 f8 77             	vzeroupper 
  40e721:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40e725:	5b                   	pop    %rbx
  40e726:	41 5c                	pop    %r12
  40e728:	41 5d                	pop    %r13
  40e72a:	5d                   	pop    %rbp
  40e72b:	c3                   	retq   
  40e72c:	0f 1f 40 00          	nopl   0x0(%rax)
  40e730:	48 89 fe             	mov    %rdi,%rsi
  40e733:	48 85 c0             	test   %rax,%rax
  40e736:	0f 84 85 00 00 00    	je     40e7c1 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40e73c:	48 c1 e0 03          	shl    $0x3,%rax
  40e740:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
  40e744:	4d 8b 0c 24          	mov    (%r12),%r9
  40e748:	48 39 f7             	cmp    %rsi,%rdi
  40e74b:	74 74                	je     40e7c1 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40e74d:	48 83 e8 08          	sub    $0x8,%rax
  40e751:	49 89 c0             	mov    %rax,%r8
  40e754:	49 c1 e8 03          	shr    $0x3,%r8
  40e758:	48 89 fa             	mov    %rdi,%rdx
  40e75b:	49 ff c0             	inc    %r8
  40e75e:	48 83 f8 10          	cmp    $0x10,%rax
  40e762:	76 40                	jbe    40e7a4 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1c4>
  40e764:	4c 89 c0             	mov    %r8,%rax
  40e767:	48 c1 e8 02          	shr    $0x2,%rax
  40e76b:	48 c1 e0 05          	shl    $0x5,%rax
  40e76f:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40e775:	48 01 f8             	add    %rdi,%rax
  40e778:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40e77f:	00 
  40e780:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40e784:	48 83 c2 20          	add    $0x20,%rdx
  40e788:	48 39 d0             	cmp    %rdx,%rax
  40e78b:	75 f3                	jne    40e780 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1a0>
  40e78d:	4c 89 c0             	mov    %r8,%rax
  40e790:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40e794:	48 8d 3c c7          	lea    (%rdi,%rax,8),%rdi
  40e798:	49 39 c0             	cmp    %rax,%r8
  40e79b:	0f 84 1f 01 00 00    	je     40e8c0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2e0>
  40e7a1:	c5 f8 77             	vzeroupper 
  40e7a4:	48 8d 47 08          	lea    0x8(%rdi),%rax
  40e7a8:	4c 89 0f             	mov    %r9,(%rdi)
  40e7ab:	48 39 c6             	cmp    %rax,%rsi
  40e7ae:	74 11                	je     40e7c1 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40e7b0:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40e7b4:	4c 89 4f 08          	mov    %r9,0x8(%rdi)
  40e7b8:	48 39 c6             	cmp    %rax,%rsi
  40e7bb:	74 04                	je     40e7c1 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40e7bd:	4c 89 4f 10          	mov    %r9,0x10(%rdi)
  40e7c1:	48 39 f1             	cmp    %rsi,%rcx
  40e7c4:	74 04                	je     40e7ca <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1ea>
  40e7c6:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  40e7ca:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40e7ce:	5b                   	pop    %rbx
  40e7cf:	41 5c                	pop    %r12
  40e7d1:	41 5d                	pop    %r13
  40e7d3:	5d                   	pop    %rbp
  40e7d4:	c3                   	retq   
  40e7d5:	0f 1f 00             	nopl   (%rax)
  40e7d8:	48 89 c1             	mov    %rax,%rcx
  40e7db:	48 c1 e9 3c          	shr    $0x3c,%rcx
  40e7df:	0f 85 f0 00 00 00    	jne    40e8d5 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2f5>
  40e7e5:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  40e7ec:	00 
  40e7ed:	48 85 c0             	test   %rax,%rax
  40e7f0:	0f 84 c2 00 00 00    	je     40e8b8 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2d8>
  40e7f6:	4c 89 ef             	mov    %r13,%rdi
  40e7f9:	e8 c2 4a ff ff       	callq  4032c0 <_Znwm@plt>
  40e7fe:	4e 8d 04 28          	lea    (%rax,%r13,1),%r8
  40e802:	49 8b 3c 24          	mov    (%r12),%rdi
  40e806:	48 89 c2             	mov    %rax,%rdx
  40e809:	49 39 c0             	cmp    %rax,%r8
  40e80c:	74 6f                	je     40e87d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40e80e:	49 83 ed 08          	sub    $0x8,%r13
  40e812:	4c 89 ee             	mov    %r13,%rsi
  40e815:	48 c1 ee 03          	shr    $0x3,%rsi
  40e819:	48 ff c6             	inc    %rsi
  40e81c:	49 83 fd 10          	cmp    $0x10,%r13
  40e820:	76 3e                	jbe    40e860 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x280>
  40e822:	48 89 f1             	mov    %rsi,%rcx
  40e825:	48 c1 e9 02          	shr    $0x2,%rcx
  40e829:	48 c1 e1 05          	shl    $0x5,%rcx
  40e82d:	62 f2 fd 28 7c c7    	vpbroadcastq %rdi,%ymm0
  40e833:	48 01 c1             	add    %rax,%rcx
  40e836:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40e83d:	00 00 00 
  40e840:	c5 fe 7f 00          	vmovdqu %ymm0,(%rax)
  40e844:	48 83 c0 20          	add    $0x20,%rax
  40e848:	48 39 c1             	cmp    %rax,%rcx
  40e84b:	75 f3                	jne    40e840 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x260>
  40e84d:	48 89 f1             	mov    %rsi,%rcx
  40e850:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
  40e854:	48 8d 04 ca          	lea    (%rdx,%rcx,8),%rax
  40e858:	48 39 f1             	cmp    %rsi,%rcx
  40e85b:	74 73                	je     40e8d0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2f0>
  40e85d:	c5 f8 77             	vzeroupper 
  40e860:	48 8d 48 08          	lea    0x8(%rax),%rcx
  40e864:	48 89 38             	mov    %rdi,(%rax)
  40e867:	49 39 c8             	cmp    %rcx,%r8
  40e86a:	74 11                	je     40e87d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40e86c:	48 8d 48 10          	lea    0x10(%rax),%rcx
  40e870:	48 89 78 08          	mov    %rdi,0x8(%rax)
  40e874:	49 39 c8             	cmp    %rcx,%r8
  40e877:	74 04                	je     40e87d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40e879:	48 89 78 10          	mov    %rdi,0x10(%rax)
  40e87d:	48 8b 3b             	mov    (%rbx),%rdi
  40e880:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40e884:	48 29 fe             	sub    %rdi,%rsi
  40e887:	c4 e1 f9 6e ca       	vmovq  %rdx,%xmm1
  40e88c:	c4 c3 f1 22 c0 01    	vpinsrq $0x1,%r8,%xmm1,%xmm0
  40e892:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  40e896:	c5 fa 7f 03          	vmovdqu %xmm0,(%rbx)
  40e89a:	48 85 ff             	test   %rdi,%rdi
  40e89d:	0f 84 27 ff ff ff    	je     40e7ca <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1ea>
  40e8a3:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40e8a7:	5b                   	pop    %rbx
  40e8a8:	41 5c                	pop    %r12
  40e8aa:	41 5d                	pop    %r13
  40e8ac:	5d                   	pop    %rbp
  40e8ad:	e9 1e 4a ff ff       	jmpq   4032d0 <_ZdlPvm@plt>
  40e8b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40e8b8:	31 d2                	xor    %edx,%edx
  40e8ba:	45 31 c0             	xor    %r8d,%r8d
  40e8bd:	eb c8                	jmp    40e887 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2a7>
  40e8bf:	90                   	nop
  40e8c0:	c5 f8 77             	vzeroupper 
  40e8c3:	e9 f9 fe ff ff       	jmpq   40e7c1 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40e8c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40e8cf:	00 
  40e8d0:	c5 f8 77             	vzeroupper 
  40e8d3:	eb a8                	jmp    40e87d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40e8d5:	bf 70 05 41 00       	mov    $0x410570,%edi
  40e8da:	e8 91 48 ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40e8df:	90                   	nop

000000000040e8e0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd>:
  40e8e0:	55                   	push   %rbp
  40e8e1:	48 89 f0             	mov    %rsi,%rax
  40e8e4:	48 89 e5             	mov    %rsp,%rbp
  40e8e7:	41 55                	push   %r13
  40e8e9:	41 54                	push   %r12
  40e8eb:	49 89 d4             	mov    %rdx,%r12
  40e8ee:	53                   	push   %rbx
  40e8ef:	48 89 fb             	mov    %rdi,%rbx
  40e8f2:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40e8f6:	48 8b 3f             	mov    (%rdi),%rdi
  40e8f9:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40e8fd:	48 29 fe             	sub    %rdi,%rsi
  40e900:	48 89 f2             	mov    %rsi,%rdx
  40e903:	48 c1 fa 03          	sar    $0x3,%rdx
  40e907:	48 39 c2             	cmp    %rax,%rdx
  40e90a:	0f 82 d0 01 00 00    	jb     40eae0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x200>
  40e910:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  40e914:	48 89 ce             	mov    %rcx,%rsi
  40e917:	48 29 fe             	sub    %rdi,%rsi
  40e91a:	48 c1 fe 03          	sar    $0x3,%rsi
  40e91e:	48 39 f0             	cmp    %rsi,%rax
  40e921:	0f 86 09 01 00 00    	jbe    40ea30 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x150>
  40e927:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  40e92d:	48 39 cf             	cmp    %rcx,%rdi
  40e930:	74 71                	je     40e9a3 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xc3>
  40e932:	4c 8d 41 f8          	lea    -0x8(%rcx),%r8
  40e936:	49 29 f8             	sub    %rdi,%r8
  40e939:	4d 89 c1             	mov    %r8,%r9
  40e93c:	49 c1 e9 03          	shr    $0x3,%r9
  40e940:	48 89 fa             	mov    %rdi,%rdx
  40e943:	49 ff c1             	inc    %r9
  40e946:	49 83 f8 10          	cmp    $0x10,%r8
  40e94a:	76 31                	jbe    40e97d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x9d>
  40e94c:	4d 89 c8             	mov    %r9,%r8
  40e94f:	49 c1 e8 02          	shr    $0x2,%r8
  40e953:	49 c1 e0 05          	shl    $0x5,%r8
  40e957:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  40e95c:	49 01 f8             	add    %rdi,%r8
  40e95f:	90                   	nop
  40e960:	c5 fd 11 0a          	vmovupd %ymm1,(%rdx)
  40e964:	48 83 c2 20          	add    $0x20,%rdx
  40e968:	49 39 d0             	cmp    %rdx,%r8
  40e96b:	75 f3                	jne    40e960 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x80>
  40e96d:	4c 89 ca             	mov    %r9,%rdx
  40e970:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  40e974:	48 8d 3c d7          	lea    (%rdi,%rdx,8),%rdi
  40e978:	49 39 d1             	cmp    %rdx,%r9
  40e97b:	74 20                	je     40e99d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40e97d:	48 8d 57 08          	lea    0x8(%rdi),%rdx
  40e981:	c5 fb 11 07          	vmovsd %xmm0,(%rdi)
  40e985:	48 39 d1             	cmp    %rdx,%rcx
  40e988:	74 13                	je     40e99d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40e98a:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40e98e:	c5 fb 11 47 08       	vmovsd %xmm0,0x8(%rdi)
  40e993:	48 39 d1             	cmp    %rdx,%rcx
  40e996:	74 05                	je     40e99d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40e998:	c5 fb 11 47 10       	vmovsd %xmm0,0x10(%rdi)
  40e99d:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  40e9a3:	48 29 f0             	sub    %rsi,%rax
  40e9a6:	48 c1 e0 03          	shl    $0x3,%rax
  40e9aa:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
  40e9ae:	48 39 f9             	cmp    %rdi,%rcx
  40e9b1:	74 6a                	je     40ea1d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40e9b3:	48 83 e8 08          	sub    $0x8,%rax
  40e9b7:	48 89 c6             	mov    %rax,%rsi
  40e9ba:	48 c1 ee 03          	shr    $0x3,%rsi
  40e9be:	48 89 ca             	mov    %rcx,%rdx
  40e9c1:	48 ff c6             	inc    %rsi
  40e9c4:	48 83 f8 10          	cmp    $0x10,%rax
  40e9c8:	76 33                	jbe    40e9fd <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x11d>
  40e9ca:	48 89 f0             	mov    %rsi,%rax
  40e9cd:	48 c1 e8 02          	shr    $0x2,%rax
  40e9d1:	48 c1 e0 05          	shl    $0x5,%rax
  40e9d5:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  40e9da:	48 01 c8             	add    %rcx,%rax
  40e9dd:	0f 1f 00             	nopl   (%rax)
  40e9e0:	c5 fd 11 0a          	vmovupd %ymm1,(%rdx)
  40e9e4:	48 83 c2 20          	add    $0x20,%rdx
  40e9e8:	48 39 d0             	cmp    %rdx,%rax
  40e9eb:	75 f3                	jne    40e9e0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x100>
  40e9ed:	48 89 f0             	mov    %rsi,%rax
  40e9f0:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40e9f4:	48 8d 0c c1          	lea    (%rcx,%rax,8),%rcx
  40e9f8:	48 39 c6             	cmp    %rax,%rsi
  40e9fb:	74 20                	je     40ea1d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40e9fd:	48 8d 41 08          	lea    0x8(%rcx),%rax
  40ea01:	c5 fb 11 01          	vmovsd %xmm0,(%rcx)
  40ea05:	48 39 c7             	cmp    %rax,%rdi
  40ea08:	74 13                	je     40ea1d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40ea0a:	48 8d 41 10          	lea    0x10(%rcx),%rax
  40ea0e:	c5 fb 11 41 08       	vmovsd %xmm0,0x8(%rcx)
  40ea13:	48 39 c7             	cmp    %rax,%rdi
  40ea16:	74 05                	je     40ea1d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40ea18:	c5 fb 11 41 10       	vmovsd %xmm0,0x10(%rcx)
  40ea1d:	48 89 7b 08          	mov    %rdi,0x8(%rbx)
  40ea21:	c5 f8 77             	vzeroupper 
  40ea24:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40ea28:	5b                   	pop    %rbx
  40ea29:	41 5c                	pop    %r12
  40ea2b:	41 5d                	pop    %r13
  40ea2d:	5d                   	pop    %rbp
  40ea2e:	c3                   	retq   
  40ea2f:	90                   	nop
  40ea30:	48 89 fe             	mov    %rdi,%rsi
  40ea33:	48 85 c0             	test   %rax,%rax
  40ea36:	0f 84 88 00 00 00    	je     40eac4 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40ea3c:	48 c1 e0 03          	shl    $0x3,%rax
  40ea40:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
  40ea44:	c4 c1 7b 10 0c 24    	vmovsd (%r12),%xmm1
  40ea4a:	48 39 f7             	cmp    %rsi,%rdi
  40ea4d:	74 75                	je     40eac4 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40ea4f:	48 83 e8 08          	sub    $0x8,%rax
  40ea53:	49 89 c0             	mov    %rax,%r8
  40ea56:	49 c1 e8 03          	shr    $0x3,%r8
  40ea5a:	48 89 fa             	mov    %rdi,%rdx
  40ea5d:	49 ff c0             	inc    %r8
  40ea60:	48 83 f8 10          	cmp    $0x10,%rax
  40ea64:	76 3e                	jbe    40eaa4 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1c4>
  40ea66:	4c 89 c0             	mov    %r8,%rax
  40ea69:	48 c1 e8 02          	shr    $0x2,%rax
  40ea6d:	48 c1 e0 05          	shl    $0x5,%rax
  40ea71:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  40ea76:	48 01 f8             	add    %rdi,%rax
  40ea79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40ea80:	c5 fd 11 02          	vmovupd %ymm0,(%rdx)
  40ea84:	48 83 c2 20          	add    $0x20,%rdx
  40ea88:	48 39 d0             	cmp    %rdx,%rax
  40ea8b:	75 f3                	jne    40ea80 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1a0>
  40ea8d:	4c 89 c0             	mov    %r8,%rax
  40ea90:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40ea94:	48 8d 3c c7          	lea    (%rdi,%rax,8),%rdi
  40ea98:	49 39 c0             	cmp    %rax,%r8
  40ea9b:	0f 84 1f 01 00 00    	je     40ebc0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2e0>
  40eaa1:	c5 f8 77             	vzeroupper 
  40eaa4:	48 8d 47 08          	lea    0x8(%rdi),%rax
  40eaa8:	c5 fb 11 0f          	vmovsd %xmm1,(%rdi)
  40eaac:	48 39 c6             	cmp    %rax,%rsi
  40eaaf:	74 13                	je     40eac4 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40eab1:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40eab5:	c5 fb 11 4f 08       	vmovsd %xmm1,0x8(%rdi)
  40eaba:	48 39 c6             	cmp    %rax,%rsi
  40eabd:	74 05                	je     40eac4 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40eabf:	c5 fb 11 4f 10       	vmovsd %xmm1,0x10(%rdi)
  40eac4:	48 39 f1             	cmp    %rsi,%rcx
  40eac7:	74 04                	je     40eacd <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1ed>
  40eac9:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  40eacd:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40ead1:	5b                   	pop    %rbx
  40ead2:	41 5c                	pop    %r12
  40ead4:	41 5d                	pop    %r13
  40ead6:	5d                   	pop    %rbp
  40ead7:	c3                   	retq   
  40ead8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40eadf:	00 
  40eae0:	48 89 c1             	mov    %rax,%rcx
  40eae3:	48 c1 e9 3c          	shr    $0x3c,%rcx
  40eae7:	0f 85 e8 00 00 00    	jne    40ebd5 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2f5>
  40eaed:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  40eaf4:	00 
  40eaf5:	48 85 c0             	test   %rax,%rax
  40eaf8:	0f 84 ba 00 00 00    	je     40ebb8 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2d8>
  40eafe:	4c 89 ef             	mov    %r13,%rdi
  40eb01:	e8 ba 47 ff ff       	callq  4032c0 <_Znwm@plt>
  40eb06:	4e 8d 04 28          	lea    (%rax,%r13,1),%r8
  40eb0a:	c4 c1 7b 10 0c 24    	vmovsd (%r12),%xmm1
  40eb10:	48 89 c2             	mov    %rax,%rdx
  40eb13:	49 39 c0             	cmp    %rax,%r8
  40eb16:	74 68                	je     40eb80 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40eb18:	49 83 ed 08          	sub    $0x8,%r13
  40eb1c:	4c 89 ee             	mov    %r13,%rsi
  40eb1f:	48 c1 ee 03          	shr    $0x3,%rsi
  40eb23:	48 ff c6             	inc    %rsi
  40eb26:	49 83 fd 10          	cmp    $0x10,%r13
  40eb2a:	76 34                	jbe    40eb60 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x280>
  40eb2c:	48 89 f1             	mov    %rsi,%rcx
  40eb2f:	48 c1 e9 02          	shr    $0x2,%rcx
  40eb33:	48 c1 e1 05          	shl    $0x5,%rcx
  40eb37:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  40eb3c:	48 01 c1             	add    %rax,%rcx
  40eb3f:	90                   	nop
  40eb40:	c5 fd 11 00          	vmovupd %ymm0,(%rax)
  40eb44:	48 83 c0 20          	add    $0x20,%rax
  40eb48:	48 39 c1             	cmp    %rax,%rcx
  40eb4b:	75 f3                	jne    40eb40 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x260>
  40eb4d:	48 89 f1             	mov    %rsi,%rcx
  40eb50:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
  40eb54:	48 8d 04 ca          	lea    (%rdx,%rcx,8),%rax
  40eb58:	48 39 f1             	cmp    %rsi,%rcx
  40eb5b:	74 73                	je     40ebd0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2f0>
  40eb5d:	c5 f8 77             	vzeroupper 
  40eb60:	48 8d 48 08          	lea    0x8(%rax),%rcx
  40eb64:	c5 fb 11 08          	vmovsd %xmm1,(%rax)
  40eb68:	49 39 c8             	cmp    %rcx,%r8
  40eb6b:	74 13                	je     40eb80 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40eb6d:	48 8d 48 10          	lea    0x10(%rax),%rcx
  40eb71:	c5 fb 11 48 08       	vmovsd %xmm1,0x8(%rax)
  40eb76:	49 39 c8             	cmp    %rcx,%r8
  40eb79:	74 05                	je     40eb80 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40eb7b:	c5 fb 11 48 10       	vmovsd %xmm1,0x10(%rax)
  40eb80:	48 8b 3b             	mov    (%rbx),%rdi
  40eb83:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40eb87:	48 29 fe             	sub    %rdi,%rsi
  40eb8a:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
  40eb8f:	c4 c3 e9 22 c0 01    	vpinsrq $0x1,%r8,%xmm2,%xmm0
  40eb95:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  40eb99:	c5 fa 7f 03          	vmovdqu %xmm0,(%rbx)
  40eb9d:	48 85 ff             	test   %rdi,%rdi
  40eba0:	0f 84 27 ff ff ff    	je     40eacd <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1ed>
  40eba6:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40ebaa:	5b                   	pop    %rbx
  40ebab:	41 5c                	pop    %r12
  40ebad:	41 5d                	pop    %r13
  40ebaf:	5d                   	pop    %rbp
  40ebb0:	e9 1b 47 ff ff       	jmpq   4032d0 <_ZdlPvm@plt>
  40ebb5:	0f 1f 00             	nopl   (%rax)
  40ebb8:	31 d2                	xor    %edx,%edx
  40ebba:	45 31 c0             	xor    %r8d,%r8d
  40ebbd:	eb cb                	jmp    40eb8a <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2aa>
  40ebbf:	90                   	nop
  40ebc0:	c5 f8 77             	vzeroupper 
  40ebc3:	e9 fc fe ff ff       	jmpq   40eac4 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40ebc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40ebcf:	00 
  40ebd0:	c5 f8 77             	vzeroupper 
  40ebd3:	eb ab                	jmp    40eb80 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40ebd5:	bf 70 05 41 00       	mov    $0x410570,%edi
  40ebda:	e8 91 45 ff ff       	callq  403170 <_ZSt20__throw_length_errorPKc@plt>
  40ebdf:	90                   	nop

000000000040ebe0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>:
  40ebe0:	c4 e2 7d 59 1d 47 1b 	vpbroadcastq 0x1b47(%rip),%ymm3        # 410730 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  40ebe7:	00 00 
  40ebe9:	c4 e2 7d 59 25 46 1b 	vpbroadcastq 0x1b46(%rip),%ymm4        # 410738 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  40ebf0:	00 00 
  40ebf2:	c4 e2 7d 59 2d 45 1b 	vpbroadcastq 0x1b45(%rip),%ymm5        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x180>
  40ebf9:	00 00 
  40ebfb:	c4 e2 7d 59 35 44 1b 	vpbroadcastq 0x1b44(%rip),%ymm6        # 410748 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x188>
  40ec02:	00 00 
  40ec04:	48 89 f8             	mov    %rdi,%rax
  40ec07:	48 8d 8f e0 04 00 00 	lea    0x4e0(%rdi),%rcx
  40ec0e:	48 89 fa             	mov    %rdi,%rdx
  40ec11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40ec18:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  40ec1d:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  40ec21:	48 83 c2 20          	add    $0x20,%rdx
  40ec25:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  40ec29:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  40ec2e:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  40ec32:	c5 f5 ef 8a c0 04 00 	vpxor  0x4c0(%rdx),%ymm1,%ymm1
  40ec39:	00 
  40ec3a:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  40ec40:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  40ec44:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  40ec4a:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  40ec4f:	48 39 ca             	cmp    %rcx,%rdx
  40ec52:	75 c4                	jne    40ec18 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x38>
  40ec54:	48 8d 88 a0 09 00 00 	lea    0x9a0(%rax),%rcx
  40ec5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40ec60:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  40ec65:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  40ec69:	48 83 c2 20          	add    $0x20,%rdx
  40ec6d:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  40ec71:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  40ec76:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  40ec7a:	c5 f5 ef 8a 00 fb ff 	vpxor  -0x500(%rdx),%ymm1,%ymm1
  40ec81:	ff 
  40ec82:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  40ec88:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  40ec8c:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  40ec92:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  40ec97:	48 39 d1             	cmp    %rdx,%rcx
  40ec9a:	75 c4                	jne    40ec60 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x80>
  40ec9c:	c4 e2 79 59 05 8b 1a 	vpbroadcastq 0x1a8b(%rip),%xmm0        # 410730 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  40eca3:	00 00 
  40eca5:	c4 e2 79 59 0d 8a 1a 	vpbroadcastq 0x1a8a(%rip),%xmm1        # 410738 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  40ecac:	00 00 
  40ecae:	c5 f9 db 80 a0 09 00 	vpand  0x9a0(%rax),%xmm0,%xmm0
  40ecb5:	00 
  40ecb6:	c5 f1 db 88 a8 09 00 	vpand  0x9a8(%rax),%xmm1,%xmm1
  40ecbd:	00 
  40ecbe:	48 8b b0 b8 09 00 00 	mov    0x9b8(%rax),%rsi
  40ecc5:	48 8b 90 b0 09 00 00 	mov    0x9b0(%rax),%rdx
  40eccc:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  40ecd0:	48 89 f1             	mov    %rsi,%rcx
  40ecd3:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
  40ecd9:	c5 f1 73 d0 01       	vpsrlq $0x1,%xmm0,%xmm1
  40ecde:	48 81 e2 00 00 00 80 	and    $0xffffffff80000000,%rdx
  40ece5:	62 f1 fd 18 db 05 51 	vpandq 0x1a51(%rip){1to2},%xmm0,%xmm0        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x180>
  40ecec:	1a 00 00 
  40ecef:	c5 f1 ef 88 c0 04 00 	vpxor  0x4c0(%rax),%xmm1,%xmm1
  40ecf6:	00 
  40ecf7:	48 09 ca             	or     %rcx,%rdx
  40ecfa:	62 f2 fe 08 27 c8    	vptestnmq %xmm0,%xmm0,%k1
  40ed00:	48 89 d1             	mov    %rdx,%rcx
  40ed03:	48 d1 e9             	shr    %rcx
  40ed06:	62 f1 f5 18 ef 15 38 	vpxorq 0x1a38(%rip){1to2},%xmm1,%xmm2        # 410748 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x188>
  40ed0d:	1a 00 00 
  40ed10:	62 f2 ed 09 64 c1    	vpblendmq %xmm1,%xmm2,%xmm0{%k1}
  40ed16:	48 33 88 d0 04 00 00 	xor    0x4d0(%rax),%rcx
  40ed1d:	83 e2 01             	and    $0x1,%edx
  40ed20:	c5 fa 7f 80 a0 09 00 	vmovdqu %xmm0,0x9a0(%rax)
  40ed27:	00 
  40ed28:	74 0d                	je     40ed37 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x157>
  40ed2a:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  40ed31:	6f 02 b5 
  40ed34:	48 31 d1             	xor    %rdx,%rcx
  40ed37:	48 8b 10             	mov    (%rax),%rdx
  40ed3a:	48 81 e6 00 00 00 80 	and    $0xffffffff80000000,%rsi
  40ed41:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
  40ed47:	48 09 f2             	or     %rsi,%rdx
  40ed4a:	48 89 88 b0 09 00 00 	mov    %rcx,0x9b0(%rax)
  40ed51:	48 89 d1             	mov    %rdx,%rcx
  40ed54:	48 d1 e9             	shr    %rcx
  40ed57:	48 33 88 d8 04 00 00 	xor    0x4d8(%rax),%rcx
  40ed5e:	83 e2 01             	and    $0x1,%edx
  40ed61:	74 0d                	je     40ed70 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x190>
  40ed63:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  40ed6a:	6f 02 b5 
  40ed6d:	48 31 d1             	xor    %rdx,%rcx
  40ed70:	48 89 88 b8 09 00 00 	mov    %rcx,0x9b8(%rax)
  40ed77:	48 c7 80 c0 09 00 00 	movq   $0x0,0x9c0(%rax)
  40ed7e:	00 00 00 00 
  40ed82:	c5 f8 77             	vzeroupper 
  40ed85:	c3                   	retq   
  40ed86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40ed8d:	00 00 00 

000000000040ed90 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>:
  40ed90:	41 57                	push   %r15
  40ed92:	41 56                	push   %r14
  40ed94:	41 55                	push   %r13
  40ed96:	41 54                	push   %r12
  40ed98:	55                   	push   %rbp
  40ed99:	53                   	push   %rbx
  40ed9a:	48 83 ec 28          	sub    $0x28,%rsp
  40ed9e:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  40eda3:	48 39 fe             	cmp    %rdi,%rsi
  40eda6:	0f 84 99 01 00 00    	je     40ef45 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40edac:	48 89 f1             	mov    %rsi,%rcx
  40edaf:	48 29 f9             	sub    %rdi,%rcx
  40edb2:	48 c1 f9 03          	sar    $0x3,%rcx
  40edb6:	48 89 c8             	mov    %rcx,%rax
  40edb9:	48 89 d3             	mov    %rdx,%rbx
  40edbc:	48 f7 e1             	mul    %rcx
  40edbf:	48 89 fd             	mov    %rdi,%rbp
  40edc2:	4c 8d 6f 08          	lea    0x8(%rdi),%r13
  40edc6:	0f 90 c0             	seto   %al
  40edc9:	0f b6 c0             	movzbl %al,%eax
  40edcc:	48 85 c0             	test   %rax,%rax
  40edcf:	0f 84 1b 02 00 00    	je     40eff0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x260>
  40edd5:	4c 3b 6c 24 08       	cmp    0x8(%rsp),%r13
  40edda:	0f 84 65 01 00 00    	je     40ef45 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40ede0:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40ede7:	55 55 55 
  40edea:	49 bc 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r12
  40edf1:	7f d6 71 
  40edf4:	49 bf 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r15
  40edfb:	ee f7 ff 
  40edfe:	66 90                	xchg   %ax,%ax
  40ee00:	4c 89 e8             	mov    %r13,%rax
  40ee03:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  40ee0a:	48 29 e8             	sub    %rbp,%rax
  40ee0d:	48 c1 f8 03          	sar    $0x3,%rax
  40ee11:	48 89 d1             	mov    %rdx,%rcx
  40ee14:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40ee18:	0f 84 3a 01 00 00    	je     40ef58 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1c8>
  40ee1e:	4c 8d 70 01          	lea    0x1(%rax),%r14
  40ee22:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  40ee29:	0f 87 79 01 00 00    	ja     40efa8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x218>
  40ee2f:	48 8b 34 d3          	mov    (%rbx,%rdx,8),%rsi
  40ee33:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
  40ee37:	48 89 f2             	mov    %rsi,%rdx
  40ee3a:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40ee3e:	4c 21 ca             	and    %r9,%rdx
  40ee41:	48 31 d6             	xor    %rdx,%rsi
  40ee44:	48 89 f2             	mov    %rsi,%rdx
  40ee47:	48 c1 e2 11          	shl    $0x11,%rdx
  40ee4b:	4c 21 e2             	and    %r12,%rdx
  40ee4e:	48 31 d6             	xor    %rdx,%rsi
  40ee51:	48 89 f2             	mov    %rsi,%rdx
  40ee54:	48 c1 e2 25          	shl    $0x25,%rdx
  40ee58:	4c 21 fa             	and    %r15,%rdx
  40ee5b:	48 31 d6             	xor    %rdx,%rsi
  40ee5e:	48 89 f2             	mov    %rsi,%rdx
  40ee61:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40ee65:	48 31 d6             	xor    %rdx,%rsi
  40ee68:	48 89 f2             	mov    %rsi,%rdx
  40ee6b:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  40ee70:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40ee77:	49 39 f6             	cmp    %rsi,%r14
  40ee7a:	0f 86 a0 00 00 00    	jbe    40ef20 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40ee80:	48 f7 d0             	not    %rax
  40ee83:	31 d2                	xor    %edx,%edx
  40ee85:	49 f7 f6             	div    %r14
  40ee88:	49 89 d0             	mov    %rdx,%r8
  40ee8b:	48 39 d6             	cmp    %rdx,%rsi
  40ee8e:	72 55                	jb     40eee5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x155>
  40ee90:	e9 8b 00 00 00       	jmpq   40ef20 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40ee95:	0f 1f 00             	nopl   (%rax)
  40ee98:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40ee9c:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40eea0:	48 89 f0             	mov    %rsi,%rax
  40eea3:	48 c1 e8 1d          	shr    $0x1d,%rax
  40eea7:	4c 21 c8             	and    %r9,%rax
  40eeaa:	48 31 c6             	xor    %rax,%rsi
  40eead:	48 89 f0             	mov    %rsi,%rax
  40eeb0:	48 c1 e0 11          	shl    $0x11,%rax
  40eeb4:	4c 21 e0             	and    %r12,%rax
  40eeb7:	48 31 c6             	xor    %rax,%rsi
  40eeba:	48 89 f0             	mov    %rsi,%rax
  40eebd:	48 c1 e0 25          	shl    $0x25,%rax
  40eec1:	4c 21 f8             	and    %r15,%rax
  40eec4:	48 31 c6             	xor    %rax,%rsi
  40eec7:	48 89 f0             	mov    %rsi,%rax
  40eeca:	48 c1 e8 2b          	shr    $0x2b,%rax
  40eece:	48 31 c6             	xor    %rax,%rsi
  40eed1:	48 89 f2             	mov    %rsi,%rdx
  40eed4:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  40eed9:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40eee0:	49 39 f0             	cmp    %rsi,%r8
  40eee3:	76 3b                	jbe    40ef20 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40eee5:	48 89 c8             	mov    %rcx,%rax
  40eee8:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  40eeef:	76 a7                	jbe    40ee98 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  40eef1:	48 89 df             	mov    %rbx,%rdi
  40eef4:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  40eef9:	e8 e2 fc ff ff       	callq  40ebe0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40eefe:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40ef05:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  40ef0a:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40ef11:	55 55 55 
  40ef14:	eb 82                	jmp    40ee98 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  40ef16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40ef1d:	00 00 00 
  40ef20:	48 89 f8             	mov    %rdi,%rax
  40ef23:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  40ef28:	48 8b 08             	mov    (%rax),%rcx
  40ef2b:	49 8b 55 00          	mov    0x0(%r13),%rdx
  40ef2f:	49 89 4d 00          	mov    %rcx,0x0(%r13)
  40ef33:	49 83 c5 08          	add    $0x8,%r13
  40ef37:	48 89 10             	mov    %rdx,(%rax)
  40ef3a:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40ef3f:	0f 85 bb fe ff ff    	jne    40ee00 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x70>
  40ef45:	48 83 c4 28          	add    $0x28,%rsp
  40ef49:	5b                   	pop    %rbx
  40ef4a:	5d                   	pop    %rbp
  40ef4b:	41 5c                	pop    %r12
  40ef4d:	41 5d                	pop    %r13
  40ef4f:	41 5e                	pop    %r14
  40ef51:	41 5f                	pop    %r15
  40ef53:	c3                   	retq   
  40ef54:	0f 1f 40 00          	nopl   0x0(%rax)
  40ef58:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  40ef5f:	77 6f                	ja     40efd0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x240>
  40ef61:	48 8d 41 01          	lea    0x1(%rcx),%rax
  40ef65:	48 89 83 c0 09 00 00 	mov    %rax,0x9c0(%rbx)
  40ef6c:	48 8b 04 cb          	mov    (%rbx,%rcx,8),%rax
  40ef70:	48 89 c2             	mov    %rax,%rdx
  40ef73:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40ef77:	4c 21 ca             	and    %r9,%rdx
  40ef7a:	48 31 d0             	xor    %rdx,%rax
  40ef7d:	48 89 c2             	mov    %rax,%rdx
  40ef80:	48 c1 e2 11          	shl    $0x11,%rdx
  40ef84:	4c 21 e2             	and    %r12,%rdx
  40ef87:	48 31 d0             	xor    %rdx,%rax
  40ef8a:	48 89 c2             	mov    %rax,%rdx
  40ef8d:	48 c1 e2 25          	shl    $0x25,%rdx
  40ef91:	4c 21 fa             	and    %r15,%rdx
  40ef94:	48 31 d0             	xor    %rdx,%rax
  40ef97:	48 89 c2             	mov    %rax,%rdx
  40ef9a:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40ef9e:	48 31 d0             	xor    %rdx,%rax
  40efa1:	eb 80                	jmp    40ef23 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x193>
  40efa3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40efa8:	48 89 df             	mov    %rbx,%rdi
  40efab:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40efb0:	e8 2b fc ff ff       	callq  40ebe0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40efb5:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  40efbc:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40efc1:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40efc8:	55 55 55 
  40efcb:	e9 5f fe ff ff       	jmpq   40ee2f <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x9f>
  40efd0:	48 89 df             	mov    %rbx,%rdi
  40efd3:	e8 08 fc ff ff       	callq  40ebe0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40efd8:	48 8b 8b c0 09 00 00 	mov    0x9c0(%rbx),%rcx
  40efdf:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40efe6:	55 55 55 
  40efe9:	e9 73 ff ff ff       	jmpq   40ef61 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1d1>
  40efee:	66 90                	xchg   %ax,%ax
  40eff0:	83 e1 01             	and    $0x1,%ecx
  40eff3:	0f 84 35 02 00 00    	je     40f22e <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x49e>
  40eff9:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40effe:	0f 84 41 ff ff ff    	je     40ef45 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40f004:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40f00b:	55 55 55 
  40f00e:	49 be 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r14
  40f015:	7f d6 71 
  40f018:	49 bc 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r12
  40f01f:	ee f7 ff 
  40f022:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40f028:	4d 89 ef             	mov    %r13,%r15
  40f02b:	49 29 ef             	sub    %rbp,%r15
  40f02e:	49 c1 ff 03          	sar    $0x3,%r15
  40f032:	49 8d 47 02          	lea    0x2(%r15),%rax
  40f036:	49 ff c7             	inc    %r15
  40f039:	4c 0f af f8          	imul   %rax,%r15
  40f03d:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40f042:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f049:	4d 85 ff             	test   %r15,%r15
  40f04c:	0f 84 46 01 00 00    	je     40f198 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x408>
  40f052:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40f058:	0f 87 8a 01 00 00    	ja     40f1e8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x458>
  40f05e:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40f062:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40f066:	48 89 f0             	mov    %rsi,%rax
  40f069:	48 c1 e8 1d          	shr    $0x1d,%rax
  40f06d:	4c 21 d0             	and    %r10,%rax
  40f070:	48 31 c6             	xor    %rax,%rsi
  40f073:	48 89 f0             	mov    %rsi,%rax
  40f076:	48 c1 e0 11          	shl    $0x11,%rax
  40f07a:	4c 21 f0             	and    %r14,%rax
  40f07d:	48 31 c6             	xor    %rax,%rsi
  40f080:	48 89 f0             	mov    %rsi,%rax
  40f083:	48 c1 e0 25          	shl    $0x25,%rax
  40f087:	4c 21 e0             	and    %r12,%rax
  40f08a:	48 31 c6             	xor    %rax,%rsi
  40f08d:	48 89 f0             	mov    %rsi,%rax
  40f090:	48 c1 e8 2b          	shr    $0x2b,%rax
  40f094:	48 31 c6             	xor    %rax,%rsi
  40f097:	48 89 f2             	mov    %rsi,%rdx
  40f09a:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40f09f:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40f0a6:	49 39 f7             	cmp    %rsi,%r15
  40f0a9:	0f 86 a1 00 00 00    	jbe    40f150 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40f0af:	4c 89 f8             	mov    %r15,%rax
  40f0b2:	48 f7 d8             	neg    %rax
  40f0b5:	31 d2                	xor    %edx,%edx
  40f0b7:	49 f7 f7             	div    %r15
  40f0ba:	49 89 d0             	mov    %rdx,%r8
  40f0bd:	48 39 d6             	cmp    %rdx,%rsi
  40f0c0:	72 5b                	jb     40f11d <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x38d>
  40f0c2:	e9 89 00 00 00       	jmpq   40f150 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40f0c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40f0ce:	00 00 
  40f0d0:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40f0d4:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40f0d8:	48 89 f0             	mov    %rsi,%rax
  40f0db:	48 c1 e8 1d          	shr    $0x1d,%rax
  40f0df:	4c 21 d0             	and    %r10,%rax
  40f0e2:	48 31 c6             	xor    %rax,%rsi
  40f0e5:	48 89 f0             	mov    %rsi,%rax
  40f0e8:	48 c1 e0 11          	shl    $0x11,%rax
  40f0ec:	4c 21 f0             	and    %r14,%rax
  40f0ef:	48 31 c6             	xor    %rax,%rsi
  40f0f2:	48 89 f0             	mov    %rsi,%rax
  40f0f5:	48 c1 e0 25          	shl    $0x25,%rax
  40f0f9:	4c 21 e0             	and    %r12,%rax
  40f0fc:	48 31 c6             	xor    %rax,%rsi
  40f0ff:	48 89 f0             	mov    %rsi,%rax
  40f102:	48 c1 e8 2b          	shr    $0x2b,%rax
  40f106:	48 31 c6             	xor    %rax,%rsi
  40f109:	48 89 f2             	mov    %rsi,%rdx
  40f10c:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40f111:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40f118:	49 39 f0             	cmp    %rsi,%r8
  40f11b:	76 33                	jbe    40f150 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40f11d:	48 89 c8             	mov    %rcx,%rax
  40f120:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  40f127:	76 a7                	jbe    40f0d0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40f129:	48 89 df             	mov    %rbx,%rdi
  40f12c:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  40f131:	e8 aa fa ff ff       	callq  40ebe0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f136:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f13d:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  40f142:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40f149:	55 55 55 
  40f14c:	eb 82                	jmp    40f0d0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40f14e:	66 90                	xchg   %ax,%ax
  40f150:	48 89 f8             	mov    %rdi,%rax
  40f153:	31 d2                	xor    %edx,%edx
  40f155:	48 f7 74 24 10       	divq   0x10(%rsp)
  40f15a:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40f15e:	49 83 c5 10          	add    $0x10,%r13
  40f162:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  40f167:	48 8b 30             	mov    (%rax),%rsi
  40f16a:	49 89 75 f0          	mov    %rsi,-0x10(%r13)
  40f16e:	48 89 08             	mov    %rcx,(%rax)
  40f171:	48 8d 44 d5 00       	lea    0x0(%rbp,%rdx,8),%rax
  40f176:	48 8b 08             	mov    (%rax),%rcx
  40f179:	49 8b 55 f8          	mov    -0x8(%r13),%rdx
  40f17d:	49 89 4d f8          	mov    %rcx,-0x8(%r13)
  40f181:	48 89 10             	mov    %rdx,(%rax)
  40f184:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40f189:	0f 85 99 fe ff ff    	jne    40f028 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x298>
  40f18f:	e9 b1 fd ff ff       	jmpq   40ef45 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40f194:	0f 1f 40 00          	nopl   0x0(%rax)
  40f198:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40f19e:	77 70                	ja     40f210 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x480>
  40f1a0:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40f1a4:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40f1a8:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40f1af:	48 89 c2             	mov    %rax,%rdx
  40f1b2:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40f1b6:	4c 21 d2             	and    %r10,%rdx
  40f1b9:	48 31 d0             	xor    %rdx,%rax
  40f1bc:	48 89 c2             	mov    %rax,%rdx
  40f1bf:	48 c1 e2 11          	shl    $0x11,%rdx
  40f1c3:	4c 21 f2             	and    %r14,%rdx
  40f1c6:	48 31 d0             	xor    %rdx,%rax
  40f1c9:	48 89 c2             	mov    %rax,%rdx
  40f1cc:	48 c1 e2 25          	shl    $0x25,%rdx
  40f1d0:	4c 21 e2             	and    %r12,%rdx
  40f1d3:	48 31 d0             	xor    %rdx,%rax
  40f1d6:	48 89 c2             	mov    %rax,%rdx
  40f1d9:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40f1dd:	48 31 d0             	xor    %rdx,%rax
  40f1e0:	e9 6e ff ff ff       	jmpq   40f153 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c3>
  40f1e5:	0f 1f 00             	nopl   (%rax)
  40f1e8:	48 89 df             	mov    %rbx,%rdi
  40f1eb:	e8 f0 f9 ff ff       	callq  40ebe0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f1f0:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f1f7:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40f1fe:	55 55 55 
  40f201:	e9 58 fe ff ff       	jmpq   40f05e <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x2ce>
  40f206:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40f20d:	00 00 00 
  40f210:	48 89 df             	mov    %rbx,%rdi
  40f213:	e8 c8 f9 ff ff       	callq  40ebe0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f218:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f21f:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40f226:	55 55 55 
  40f229:	e9 72 ff ff ff       	jmpq   40f1a0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x410>
  40f22e:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f235:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40f23b:	0f 87 81 00 00 00    	ja     40f2c2 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x532>
  40f241:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40f245:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40f249:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40f250:	48 89 c2             	mov    %rax,%rdx
  40f253:	48 b9 55 55 55 55 55 	movabs $0x5555555555555555,%rcx
  40f25a:	55 55 55 
  40f25d:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40f261:	48 21 ca             	and    %rcx,%rdx
  40f264:	48 31 d0             	xor    %rdx,%rax
  40f267:	48 89 c2             	mov    %rax,%rdx
  40f26a:	48 b9 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%rcx
  40f271:	7f d6 71 
  40f274:	48 c1 e2 11          	shl    $0x11,%rdx
  40f278:	48 21 ca             	and    %rcx,%rdx
  40f27b:	48 31 d0             	xor    %rdx,%rax
  40f27e:	48 89 c2             	mov    %rax,%rdx
  40f281:	48 b9 00 00 00 00 e0 	movabs $0xfff7eee000000000,%rcx
  40f288:	ee f7 ff 
  40f28b:	48 c1 e2 25          	shl    $0x25,%rdx
  40f28f:	48 21 ca             	and    %rcx,%rdx
  40f292:	48 31 d0             	xor    %rdx,%rax
  40f295:	48 89 c2             	mov    %rax,%rdx
  40f298:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40f29c:	48 31 d0             	xor    %rdx,%rax
  40f29f:	31 ff                	xor    %edi,%edi
  40f2a1:	48 0f a4 c7 01       	shld   $0x1,%rax,%rdi
  40f2a6:	48 8d 44 fd 00       	lea    0x0(%rbp,%rdi,8),%rax
  40f2ab:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  40f2af:	48 8b 08             	mov    (%rax),%rcx
  40f2b2:	4c 8d 6d 10          	lea    0x10(%rbp),%r13
  40f2b6:	48 89 4d 08          	mov    %rcx,0x8(%rbp)
  40f2ba:	48 89 10             	mov    %rdx,(%rax)
  40f2bd:	e9 37 fd ff ff       	jmpq   40eff9 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x269>
  40f2c2:	48 89 df             	mov    %rbx,%rdi
  40f2c5:	e8 16 f9 ff ff       	callq  40ebe0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f2ca:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f2d1:	e9 6b ff ff ff       	jmpq   40f241 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x4b1>

Disassembly of section .fini:

000000000040f2d8 <_fini>:
  40f2d8:	f3 0f 1e fa          	endbr64 
  40f2dc:	48 83 ec 08          	sub    $0x8,%rsp
  40f2e0:	48 83 c4 08          	add    $0x8,%rsp
  40f2e4:	c3                   	retq   
