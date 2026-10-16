
/lpor1/store_0/usr/user/hw-bench-thesis-results/flat-flatfar-20261016T121759Z/build/hardware:     file format elf64-x86-64


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

0000000000403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>:
  403110:	ff 25 72 ff 00 00    	jmpq   *0xff72(%rip)        # 413088 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@GLIBCXX_3.4.26>
  403116:	68 0e 00 00 00       	pushq  $0xe
  40311b:	e9 00 ff ff ff       	jmpq   403020 <.plt>

0000000000403120 <_ZNSt13runtime_errorC1EPKc@plt>:
  403120:	ff 25 6a ff 00 00    	jmpq   *0xff6a(%rip)        # 413090 <_ZNSt13runtime_errorC1EPKc@GLIBCXX_3.4.21>
  403126:	68 0f 00 00 00       	pushq  $0xf
  40312b:	e9 f0 fe ff ff       	jmpq   403020 <.plt>

0000000000403130 <__cxa_begin_catch@plt>:
  403130:	ff 25 62 ff 00 00    	jmpq   *0xff62(%rip)        # 413098 <__cxa_begin_catch@CXXABI_1.3>
  403136:	68 10 00 00 00       	pushq  $0x10
  40313b:	e9 e0 fe ff ff       	jmpq   403020 <.plt>

0000000000403140 <strlen@plt>:
  403140:	ff 25 5a ff 00 00    	jmpq   *0xff5a(%rip)        # 4130a0 <strlen@GLIBC_2.2.5>
  403146:	68 11 00 00 00       	pushq  $0x11
  40314b:	e9 d0 fe ff ff       	jmpq   403020 <.plt>

0000000000403150 <__cxa_allocate_exception@plt>:
  403150:	ff 25 52 ff 00 00    	jmpq   *0xff52(%rip)        # 4130a8 <__cxa_allocate_exception@CXXABI_1.3>
  403156:	68 12 00 00 00       	pushq  $0x12
  40315b:	e9 c0 fe ff ff       	jmpq   403020 <.plt>

0000000000403160 <_ZSt20__throw_length_errorPKc@plt>:
  403160:	ff 25 4a ff 00 00    	jmpq   *0xff4a(%rip)        # 4130b0 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
  403166:	68 13 00 00 00       	pushq  $0x13
  40316b:	e9 b0 fe ff ff       	jmpq   403020 <.plt>

0000000000403170 <_ZNSi10_M_extractImEERSiRT_@plt>:
  403170:	ff 25 42 ff 00 00    	jmpq   *0xff42(%rip)        # 4130b8 <_ZNSi10_M_extractImEERSiRT_@GLIBCXX_3.4.9>
  403176:	68 14 00 00 00       	pushq  $0x14
  40317b:	e9 a0 fe ff ff       	jmpq   403020 <.plt>

0000000000403180 <memset@plt>:
  403180:	ff 25 3a ff 00 00    	jmpq   *0xff3a(%rip)        # 4130c0 <memset@GLIBC_2.2.5>
  403186:	68 15 00 00 00       	pushq  $0x15
  40318b:	e9 90 fe ff ff       	jmpq   403020 <.plt>

0000000000403190 <GOMP_atomic_start@plt>:
  403190:	ff 25 32 ff 00 00    	jmpq   *0xff32(%rip)        # 4130c8 <GOMP_atomic_start@GOMP_1.0>
  403196:	68 16 00 00 00       	pushq  $0x16
  40319b:	e9 80 fe ff ff       	jmpq   403020 <.plt>

00000000004031a0 <_ZSt24__throw_invalid_argumentPKc@plt>:
  4031a0:	ff 25 2a ff 00 00    	jmpq   *0xff2a(%rip)        # 4130d0 <_ZSt24__throw_invalid_argumentPKc@GLIBCXX_3.4>
  4031a6:	68 17 00 00 00       	pushq  $0x17
  4031ab:	e9 70 fe ff ff       	jmpq   403020 <.plt>

00000000004031b0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@plt>:
  4031b0:	ff 25 22 ff 00 00    	jmpq   *0xff22(%rip)        # 4130d8 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@GLIBCXX_3.4.26>
  4031b6:	68 18 00 00 00       	pushq  $0x18
  4031bb:	e9 60 fe ff ff       	jmpq   403020 <.plt>

00000000004031c0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@plt>:
  4031c0:	ff 25 1a ff 00 00    	jmpq   *0xff1a(%rip)        # 4130e0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@GLIBCXX_3.4.26>
  4031c6:	68 19 00 00 00       	pushq  $0x19
  4031cb:	e9 50 fe ff ff       	jmpq   403020 <.plt>

00000000004031d0 <_ZNSo9_M_insertIyEERSoT_@plt>:
  4031d0:	ff 25 12 ff 00 00    	jmpq   *0xff12(%rip)        # 4130e8 <_ZNSo9_M_insertIyEERSoT_@GLIBCXX_3.4.9>
  4031d6:	68 1a 00 00 00       	pushq  $0x1a
  4031db:	e9 40 fe ff ff       	jmpq   403020 <.plt>

00000000004031e0 <_ZNSo9_M_insertImEERSoT_@plt>:
  4031e0:	ff 25 0a ff 00 00    	jmpq   *0xff0a(%rip)        # 4130f0 <_ZNSo9_M_insertImEERSoT_@GLIBCXX_3.4.9>
  4031e6:	68 1b 00 00 00       	pushq  $0x1b
  4031eb:	e9 30 fe ff ff       	jmpq   403020 <.plt>

00000000004031f0 <_ZSt19__throw_logic_errorPKc@plt>:
  4031f0:	ff 25 02 ff 00 00    	jmpq   *0xff02(%rip)        # 4130f8 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
  4031f6:	68 1c 00 00 00       	pushq  $0x1c
  4031fb:	e9 20 fe ff ff       	jmpq   403020 <.plt>

0000000000403200 <__cxa_free_exception@plt>:
  403200:	ff 25 fa fe 00 00    	jmpq   *0xfefa(%rip)        # 413100 <__cxa_free_exception@CXXABI_1.3>
  403206:	68 1d 00 00 00       	pushq  $0x1d
  40320b:	e9 10 fe ff ff       	jmpq   403020 <.plt>

0000000000403210 <aligned_alloc@plt>:
  403210:	ff 25 f2 fe 00 00    	jmpq   *0xfef2(%rip)        # 413108 <aligned_alloc@GLIBC_2.16>
  403216:	68 1e 00 00 00       	pushq  $0x1e
  40321b:	e9 00 fe ff ff       	jmpq   403020 <.plt>

0000000000403220 <GOMP_atomic_end@plt>:
  403220:	ff 25 ea fe 00 00    	jmpq   *0xfeea(%rip)        # 413110 <GOMP_atomic_end@GOMP_1.0>
  403226:	68 1f 00 00 00       	pushq  $0x1f
  40322b:	e9 f0 fd ff ff       	jmpq   403020 <.plt>

0000000000403230 <strtod@plt>:
  403230:	ff 25 e2 fe 00 00    	jmpq   *0xfee2(%rip)        # 413118 <strtod@GLIBC_2.2.5>
  403236:	68 20 00 00 00       	pushq  $0x20
  40323b:	e9 e0 fd ff ff       	jmpq   403020 <.plt>

0000000000403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>:
  403240:	ff 25 da fe 00 00    	jmpq   *0xfeda(%rip)        # 413120 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@GLIBCXX_3.4.26>
  403246:	68 21 00 00 00       	pushq  $0x21
  40324b:	e9 d0 fd ff ff       	jmpq   403020 <.plt>

0000000000403250 <memcpy@plt>:
  403250:	ff 25 d2 fe 00 00    	jmpq   *0xfed2(%rip)        # 413128 <memcpy@GLIBC_2.14>
  403256:	68 22 00 00 00       	pushq  $0x22
  40325b:	e9 c0 fd ff ff       	jmpq   403020 <.plt>

0000000000403260 <__cxa_atexit@plt>:
  403260:	ff 25 ca fe 00 00    	jmpq   *0xfeca(%rip)        # 413130 <__cxa_atexit@GLIBC_2.2.5>
  403266:	68 23 00 00 00       	pushq  $0x23
  40326b:	e9 b0 fd ff ff       	jmpq   403020 <.plt>

0000000000403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>:
  403270:	ff 25 c2 fe 00 00    	jmpq   *0xfec2(%rip)        # 413138 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@GLIBCXX_3.4>
  403276:	68 24 00 00 00       	pushq  $0x24
  40327b:	e9 a0 fd ff ff       	jmpq   403020 <.plt>

0000000000403280 <clock_gettime@plt>:
  403280:	ff 25 ba fe 00 00    	jmpq   *0xfeba(%rip)        # 413140 <clock_gettime@GLIBC_2.17>
  403286:	68 25 00 00 00       	pushq  $0x25
  40328b:	e9 90 fd ff ff       	jmpq   403020 <.plt>

0000000000403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  403290:	ff 25 b2 fe 00 00    	jmpq   *0xfeb2(%rip)        # 413148 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  403296:	68 26 00 00 00       	pushq  $0x26
  40329b:	e9 80 fd ff ff       	jmpq   403020 <.plt>

00000000004032a0 <_Znwm@plt>:
  4032a0:	ff 25 aa fe 00 00    	jmpq   *0xfeaa(%rip)        # 413150 <_Znwm@GLIBCXX_3.4>
  4032a6:	68 27 00 00 00       	pushq  $0x27
  4032ab:	e9 70 fd ff ff       	jmpq   403020 <.plt>

00000000004032b0 <_ZdlPvm@plt>:
  4032b0:	ff 25 a2 fe 00 00    	jmpq   *0xfea2(%rip)        # 413158 <_ZdlPvm@CXXABI_1.3.9>
  4032b6:	68 28 00 00 00       	pushq  $0x28
  4032bb:	e9 60 fd ff ff       	jmpq   403020 <.plt>

00000000004032c0 <_ZNSt13runtime_errorD1Ev@plt>:
  4032c0:	ff 25 9a fe 00 00    	jmpq   *0xfe9a(%rip)        # 413160 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
  4032c6:	68 29 00 00 00       	pushq  $0x29
  4032cb:	e9 50 fd ff ff       	jmpq   403020 <.plt>

00000000004032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>:
  4032d0:	ff 25 92 fe 00 00    	jmpq   *0xfe92(%rip)        # 413168 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@GLIBCXX_3.4>
  4032d6:	68 2a 00 00 00       	pushq  $0x2a
  4032db:	e9 40 fd ff ff       	jmpq   403020 <.plt>

00000000004032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
  4032e0:	ff 25 8a fe 00 00    	jmpq   *0xfe8a(%rip)        # 413170 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
  4032e6:	68 2b 00 00 00       	pushq  $0x2b
  4032eb:	e9 30 fd ff ff       	jmpq   403020 <.plt>

00000000004032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>:
  4032f0:	ff 25 82 fe 00 00    	jmpq   *0xfe82(%rip)        # 413178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@GLIBCXX_3.4.21>
  4032f6:	68 2c 00 00 00       	pushq  $0x2c
  4032fb:	e9 20 fd ff ff       	jmpq   403020 <.plt>

0000000000403300 <free@plt>:
  403300:	ff 25 7a fe 00 00    	jmpq   *0xfe7a(%rip)        # 413180 <free@GLIBC_2.2.5>
  403306:	68 2d 00 00 00       	pushq  $0x2d
  40330b:	e9 10 fd ff ff       	jmpq   403020 <.plt>

0000000000403310 <madvise@plt>:
  403310:	ff 25 72 fe 00 00    	jmpq   *0xfe72(%rip)        # 413188 <madvise@GLIBC_2.2.5>
  403316:	68 2e 00 00 00       	pushq  $0x2e
  40331b:	e9 00 fd ff ff       	jmpq   403020 <.plt>

0000000000403320 <getenv@plt>:
  403320:	ff 25 6a fe 00 00    	jmpq   *0xfe6a(%rip)        # 413190 <getenv@GLIBC_2.2.5>
  403326:	68 2f 00 00 00       	pushq  $0x2f
  40332b:	e9 f0 fc ff ff       	jmpq   403020 <.plt>

0000000000403330 <strtoull@plt>:
  403330:	ff 25 62 fe 00 00    	jmpq   *0xfe62(%rip)        # 413198 <strtoull@GLIBC_2.2.5>
  403336:	68 30 00 00 00       	pushq  $0x30
  40333b:	e9 e0 fc ff ff       	jmpq   403020 <.plt>

0000000000403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>:
  403340:	ff 25 5a fe 00 00    	jmpq   *0xfe5a(%rip)        # 4131a0 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@GLIBCXX_3.4>
  403346:	68 31 00 00 00       	pushq  $0x31
  40334b:	e9 d0 fc ff ff       	jmpq   403020 <.plt>

0000000000403350 <strtol@plt>:
  403350:	ff 25 52 fe 00 00    	jmpq   *0xfe52(%rip)        # 4131a8 <strtol@GLIBC_2.2.5>
  403356:	68 32 00 00 00       	pushq  $0x32
  40335b:	e9 c0 fc ff ff       	jmpq   403020 <.plt>

0000000000403360 <_ZNSt6localeD1Ev@plt>:
  403360:	ff 25 4a fe 00 00    	jmpq   *0xfe4a(%rip)        # 4131b0 <_ZNSt6localeD1Ev@GLIBCXX_3.4>
  403366:	68 33 00 00 00       	pushq  $0x33
  40336b:	e9 b0 fc ff ff       	jmpq   403020 <.plt>

0000000000403370 <read@plt>:
  403370:	ff 25 42 fe 00 00    	jmpq   *0xfe42(%rip)        # 4131b8 <read@GLIBC_2.2.5>
  403376:	68 34 00 00 00       	pushq  $0x34
  40337b:	e9 a0 fc ff ff       	jmpq   403020 <.plt>

0000000000403380 <_ZSt20__throw_out_of_rangePKc@plt>:
  403380:	ff 25 3a fe 00 00    	jmpq   *0xfe3a(%rip)        # 4131c0 <_ZSt20__throw_out_of_rangePKc@GLIBCXX_3.4>
  403386:	68 35 00 00 00       	pushq  $0x35
  40338b:	e9 90 fc ff ff       	jmpq   403020 <.plt>

0000000000403390 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>:
  403390:	ff 25 32 fe 00 00    	jmpq   *0xfe32(%rip)        # 4131c8 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  403396:	68 36 00 00 00       	pushq  $0x36
  40339b:	e9 80 fc ff ff       	jmpq   403020 <.plt>

00000000004033a0 <GOMP_parallel@plt>:
  4033a0:	ff 25 2a fe 00 00    	jmpq   *0xfe2a(%rip)        # 4131d0 <GOMP_parallel@GOMP_4.0>
  4033a6:	68 37 00 00 00       	pushq  $0x37
  4033ab:	e9 70 fc ff ff       	jmpq   403020 <.plt>

00000000004033b0 <_ZNSt8ios_base4InitC1Ev@plt>:
  4033b0:	ff 25 22 fe 00 00    	jmpq   *0xfe22(%rip)        # 4131d8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  4033b6:	68 38 00 00 00       	pushq  $0x38
  4033bb:	e9 60 fc ff ff       	jmpq   403020 <.plt>

00000000004033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>:
  4033c0:	ff 25 1a fe 00 00    	jmpq   *0xfe1a(%rip)        # 4131e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@GLIBCXX_3.4.21>
  4033c6:	68 39 00 00 00       	pushq  $0x39
  4033cb:	e9 50 fc ff ff       	jmpq   403020 <.plt>

00000000004033d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>:
  4033d0:	ff 25 12 fe 00 00    	jmpq   *0xfe12(%rip)        # 4131e8 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  4033d6:	68 3a 00 00 00       	pushq  $0x3a
  4033db:	e9 40 fc ff ff       	jmpq   403020 <.plt>

00000000004033e0 <omp_get_thread_num@plt>:
  4033e0:	ff 25 0a fe 00 00    	jmpq   *0xfe0a(%rip)        # 4131f0 <omp_get_thread_num@OMP_1.0>
  4033e6:	68 3b 00 00 00       	pushq  $0x3b
  4033eb:	e9 30 fc ff ff       	jmpq   403020 <.plt>

00000000004033f0 <_ZNSo9_M_insertIdEERSoT_@plt>:
  4033f0:	ff 25 02 fe 00 00    	jmpq   *0xfe02(%rip)        # 4131f8 <_ZNSo9_M_insertIdEERSoT_@GLIBCXX_3.4.9>
  4033f6:	68 3c 00 00 00       	pushq  $0x3c
  4033fb:	e9 20 fc ff ff       	jmpq   403020 <.plt>

0000000000403400 <__cxa_end_catch@plt>:
  403400:	ff 25 fa fd 00 00    	jmpq   *0xfdfa(%rip)        # 413200 <__cxa_end_catch@CXXABI_1.3>
  403406:	68 3d 00 00 00       	pushq  $0x3d
  40340b:	e9 10 fc ff ff       	jmpq   403020 <.plt>

0000000000403410 <__gxx_personality_v0@plt>:
  403410:	ff 25 f2 fd 00 00    	jmpq   *0xfdf2(%rip)        # 413208 <__gxx_personality_v0@CXXABI_1.3>
  403416:	68 3e 00 00 00       	pushq  $0x3e
  40341b:	e9 00 fc ff ff       	jmpq   403020 <.plt>

0000000000403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>:
  403420:	ff 25 ea fd 00 00    	jmpq   *0xfdea(%rip)        # 413210 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@GLIBCXX_3.4>
  403426:	68 3f 00 00 00       	pushq  $0x3f
  40342b:	e9 f0 fb ff ff       	jmpq   403020 <.plt>

0000000000403430 <__cxa_throw@plt>:
  403430:	ff 25 e2 fd 00 00    	jmpq   *0xfde2(%rip)        # 413218 <__cxa_throw@CXXABI_1.3>
  403436:	68 40 00 00 00       	pushq  $0x40
  40343b:	e9 e0 fb ff ff       	jmpq   403020 <.plt>

0000000000403440 <_ZNSolsEi@plt>:
  403440:	ff 25 da fd 00 00    	jmpq   *0xfdda(%rip)        # 413220 <_ZNSolsEi@GLIBCXX_3.4>
  403446:	68 41 00 00 00       	pushq  $0x41
  40344b:	e9 d0 fb ff ff       	jmpq   403020 <.plt>

0000000000403450 <_Unwind_Resume@plt>:
  403450:	ff 25 d2 fd 00 00    	jmpq   *0xfdd2(%rip)        # 413228 <_Unwind_Resume@GCC_3.0>
  403456:	68 42 00 00 00       	pushq  $0x42
  40345b:	e9 c0 fb ff ff       	jmpq   403020 <.plt>

0000000000403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>:
  403460:	ff 25 ca fd 00 00    	jmpq   *0xfdca(%rip)        # 413230 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@GLIBCXX_3.4.21>
  403466:	68 43 00 00 00       	pushq  $0x43
  40346b:	e9 b0 fb ff ff       	jmpq   403020 <.plt>

0000000000403470 <GOMP_barrier@plt>:
  403470:	ff 25 c2 fd 00 00    	jmpq   *0xfdc2(%rip)        # 413238 <GOMP_barrier@GOMP_1.0>
  403476:	68 44 00 00 00       	pushq  $0x44
  40347b:	e9 a0 fb ff ff       	jmpq   403020 <.plt>

0000000000403480 <_ZNSt12__basic_fileIcED1Ev@plt>:
  403480:	ff 25 ba fd 00 00    	jmpq   *0xfdba(%rip)        # 413240 <_ZNSt12__basic_fileIcED1Ev@GLIBCXX_3.4>
  403486:	68 45 00 00 00       	pushq  $0x45
  40348b:	e9 90 fb ff ff       	jmpq   403020 <.plt>

0000000000403490 <omp_get_num_threads@plt>:
  403490:	ff 25 b2 fd 00 00    	jmpq   *0xfdb2(%rip)        # 413248 <omp_get_num_threads@OMP_1.0>
  403496:	68 46 00 00 00       	pushq  $0x46
  40349b:	e9 80 fb ff ff       	jmpq   403020 <.plt>

00000000004034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>:
  4034a0:	ff 25 aa fd 00 00    	jmpq   *0xfdaa(%rip)        # 413250 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@GLIBCXX_3.4.26>
  4034a6:	68 47 00 00 00       	pushq  $0x47
  4034ab:	e9 70 fb ff ff       	jmpq   403020 <.plt>

00000000004034b0 <close@plt>:
  4034b0:	ff 25 a2 fd 00 00    	jmpq   *0xfda2(%rip)        # 413258 <close@GLIBC_2.2.5>
  4034b6:	68 48 00 00 00       	pushq  $0x48
  4034bb:	e9 60 fb ff ff       	jmpq   403020 <.plt>

00000000004034c0 <_ZNSt8ios_base4InitD1Ev@plt>:
  4034c0:	ff 25 9a fd 00 00    	jmpq   *0xfd9a(%rip)        # 413260 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  4034c6:	68 49 00 00 00       	pushq  $0x49
  4034cb:	e9 50 fb ff ff       	jmpq   403020 <.plt>

Disassembly of section .text:

00000000004034d0 <_Z11alloc_bytesmb.cold>:
  4034d0:	bf 10 00 00 00       	mov    $0x10,%edi
  4034d5:	e8 76 fc ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  4034da:	48 89 c7             	mov    %rax,%rdi
  4034dd:	be 13 00 41 00       	mov    $0x410013,%esi
  4034e2:	48 89 c5             	mov    %rax,%rbp
  4034e5:	e8 36 fc ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  4034ea:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  4034ef:	be a0 2d 41 00       	mov    $0x412da0,%esi
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
  403554:	e8 d7 a7 00 00       	callq  40dd30 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403596:	e8 95 a7 00 00       	callq  40dd30 <_ZNSt10filesystem7__cxx114pathD1Ev>
  40359b:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  4035a2:	00 
  4035a3:	4c 39 ff             	cmp    %r15,%rdi
  4035a6:	75 5c                	jne    403604 <_Z6windowid.cold+0xf2>
  4035a8:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  4035af:	00 
  4035b0:	e8 7b a7 00 00       	callq  40dd30 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  4036d2:	48 8b 05 4f f5 00 00 	mov    0xf54f(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  4036d9:	48 8b 0d 50 f5 00 00 	mov    0xf550(%rip),%rcx        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  4036e0:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4036e7:	00 
  4036e8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  4036ec:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  4036f3:	00 
  4036f4:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  4036fb:	00 
  4036fc:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  403703:	00 90 2b 41 00 
  403708:	e8 f3 f9 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40370d:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  403712:	e8 19 a6 00 00       	callq  40dd30 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403717:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40371e:	00 
  40371f:	e8 0c a6 00 00       	callq  40dd30 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403842:	48 8b 05 df f3 00 00 	mov    0xf3df(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  403849:	48 8b 0d e0 f3 00 00 	mov    0xf3e0(%rip),%rcx        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  403850:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  403857:	00 
  403858:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40385c:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  403863:	00 
  403864:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40386b:	00 
  40386c:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  403873:	00 90 2b 41 00 
  403878:	e8 83 f8 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40387d:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  403882:	e8 a9 a4 00 00       	callq  40dd30 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403887:	e9 1c fd ff ff       	jmpq   4035a8 <_Z6windowid.cold+0x96>
  40388c:	c5 f8 77             	vzeroupper 
  40388f:	e8 9c f8 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403894:	e8 67 fb ff ff       	callq  403400 <__cxa_end_catch@plt>
  403899:	e9 59 91 00 00       	jmpq   40c9f7 <_Z6windowid+0x15d7>
  40389e:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4038a3:	c5 f8 77             	vzeroupper 
  4038a6:	e8 85 a4 00 00       	callq  40dd30 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403951:	e8 da a3 00 00       	callq  40dd30 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403a20:	e8 0b a3 00 00       	callq  40dd30 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403acd:	e8 5e a2 00 00       	callq  40dd30 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403ad2:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403ad9:	00 
  403ada:	e8 51 a2 00 00       	callq  40dd30 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403b2b:	be 61 00 41 00       	mov    $0x410061,%esi
  403b30:	49 89 c4             	mov    %rax,%r12
  403b33:	e8 e8 f5 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403b38:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403b3d:	be a0 2d 41 00       	mov    $0x412da0,%esi
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
  403b9b:	48 c7 84 24 80 02 00 	movq   $0x412b90,0x280(%rsp)
  403ba2:	00 90 2b 41 00 
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
  403bd3:	e9 ce 92 00 00       	jmpq   40cea6 <_Z6windowid+0x1a86>
  403bd8:	c5 f8 77             	vzeroupper 
  403bdb:	e8 50 f5 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403be0:	e8 1b f8 ff ff       	callq  403400 <__cxa_end_catch@plt>
  403be5:	e9 22 82 00 00       	jmpq   40be0c <_Z6windowid+0x9ec>
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
  403c7d:	be 84 00 41 00       	mov    $0x410084,%esi
  403c82:	49 89 c4             	mov    %rax,%r12
  403c85:	e8 96 f4 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403c8a:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403c8f:	be a0 2d 41 00       	mov    $0x412da0,%esi
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
  403cda:	e8 51 a0 00 00       	callq  40dd30 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403cdf:	e9 37 fd ff ff       	jmpq   403a1b <_Z6windowid.cold+0x509>
  403ce4:	c5 f8 77             	vzeroupper 
  403ce7:	e9 c9 f8 ff ff       	jmpq   4035b5 <_Z6windowid.cold+0xa3>
  403cec:	c5 f8 77             	vzeroupper 
  403cef:	e9 27 fd ff ff       	jmpq   403a1b <_Z6windowid.cold+0x509>
  403cf4:	c5 f8 77             	vzeroupper 
  403cf7:	e9 3d ff ff ff       	jmpq   403c39 <_Z6windowid.cold+0x727>

0000000000403cfc <main.cold>:
  403cfc:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  403d01:	0f 84 88 03 00 00    	je     40408f <main.cold+0x393>
  403d07:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  403d0e:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  403d15:	48 39 c7             	cmp    %rax,%rdi
  403d18:	0f 84 80 03 00 00    	je     40409e <main.cold+0x3a2>
  403d1e:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  403d25:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d29:	c5 f8 77             	vzeroupper 
  403d2c:	e8 7f f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403d31:	48 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%rdi
  403d38:	4c 39 ef             	cmp    %r13,%rdi
  403d3b:	74 10                	je     403d4d <main.cold+0x51>
  403d3d:	48 8b 85 60 f5 ff ff 	mov    -0xaa0(%rbp),%rax
  403d44:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d48:	e8 63 f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403d4d:	48 8b bd e0 f3 ff ff 	mov    -0xc20(%rbp),%rdi
  403d54:	48 8d 85 f0 f3 ff ff 	lea    -0xc10(%rbp),%rax
  403d5b:	48 39 c7             	cmp    %rax,%rdi
  403d5e:	74 10                	je     403d70 <main.cold+0x74>
  403d60:	48 8b 85 f0 f3 ff ff 	mov    -0xc10(%rbp),%rax
  403d67:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d6b:	e8 40 f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403d70:	48 89 df             	mov    %rbx,%rdi
  403d73:	49 ff ce             	dec    %r14
  403d76:	0f 85 77 01 00 00    	jne    403ef3 <main.cold+0x1f7>
  403d7c:	e8 af f3 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403d81:	48 89 c7             	mov    %rax,%rdi
  403d84:	48 8b 00             	mov    (%rax),%rax
  403d87:	ff 50 10             	callq  *0x10(%rax)
  403d8a:	48 89 c6             	mov    %rax,%rsi
  403d8d:	bf a0 33 41 00       	mov    $0x4133a0,%edi
  403d92:	e8 f9 f4 ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  403d97:	48 89 c7             	mov    %rax,%rdi
  403d9a:	ba 01 00 00 00       	mov    $0x1,%edx
  403d9f:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  403da6:	c6 85 00 f6 ff ff 0a 	movb   $0xa,-0xa00(%rbp)
  403dad:	e8 2e f5 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  403db2:	e8 49 f6 ff ff       	callq  403400 <__cxa_end_catch@plt>
  403db7:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  403dbd:	e9 e5 07 00 00       	jmpq   4045a7 <main+0x4e7>
  403dc2:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  403dc9:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  403dd0:	48 39 c7             	cmp    %rax,%rdi
  403dd3:	0f 84 1f 01 00 00    	je     403ef8 <main.cold+0x1fc>
  403dd9:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  403de0:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403de4:	c5 f8 77             	vzeroupper 
  403de7:	e8 c4 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403dec:	e9 40 ff ff ff       	jmpq   403d31 <main.cold+0x35>
  403df1:	31 db                	xor    %ebx,%ebx
  403df3:	c5 f8 77             	vzeroupper 
  403df6:	84 db                	test   %bl,%bl
  403df8:	74 23                	je     403e1d <main.cold+0x121>
  403dfa:	48 8b bd 60 f4 ff ff 	mov    -0xba0(%rbp),%rdi
  403e01:	48 8d 85 70 f4 ff ff 	lea    -0xb90(%rbp),%rax
  403e08:	48 39 c7             	cmp    %rax,%rdi
  403e0b:	74 10                	je     403e1d <main.cold+0x121>
  403e0d:	48 8b 85 70 f4 ff ff 	mov    -0xb90(%rbp),%rax
  403e14:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e18:	e8 93 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e1d:	4c 89 eb             	mov    %r13,%rbx
  403e20:	4d 89 f4             	mov    %r14,%r12
  403e23:	48 8b bd 20 f4 ff ff 	mov    -0xbe0(%rbp),%rdi
  403e2a:	48 8d 85 30 f4 ff ff 	lea    -0xbd0(%rbp),%rax
  403e31:	48 39 c7             	cmp    %rax,%rdi
  403e34:	74 10                	je     403e46 <main.cold+0x14a>
  403e36:	48 8b 85 30 f4 ff ff 	mov    -0xbd0(%rbp),%rax
  403e3d:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e41:	e8 6a f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e46:	48 8b bd 00 f4 ff ff 	mov    -0xc00(%rbp),%rdi
  403e4d:	48 8d 85 10 f4 ff ff 	lea    -0xbf0(%rbp),%rax
  403e54:	48 39 c7             	cmp    %rax,%rdi
  403e57:	74 10                	je     403e69 <main.cold+0x16d>
  403e59:	48 8b 85 10 f4 ff ff 	mov    -0xbf0(%rbp),%rax
  403e60:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e64:	e8 47 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e69:	48 8b bd c0 f3 ff ff 	mov    -0xc40(%rbp),%rdi
  403e70:	48 8b b5 d0 f3 ff ff 	mov    -0xc30(%rbp),%rsi
  403e77:	48 29 fe             	sub    %rdi,%rsi
  403e7a:	48 85 ff             	test   %rdi,%rdi
  403e7d:	74 05                	je     403e84 <main.cold+0x188>
  403e7f:	e8 2c f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e84:	48 8b bd a0 f3 ff ff 	mov    -0xc60(%rbp),%rdi
  403e8b:	48 8b b5 b0 f3 ff ff 	mov    -0xc50(%rbp),%rsi
  403e92:	48 29 fe             	sub    %rdi,%rsi
  403e95:	48 85 ff             	test   %rdi,%rdi
  403e98:	74 05                	je     403e9f <main.cold+0x1a3>
  403e9a:	e8 11 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e9f:	4d 89 e6             	mov    %r12,%r14
  403ea2:	4c 89 ff             	mov    %r15,%rdi
  403ea5:	e8 16 a5 00 00       	callq  40e3c0 <_ZN8CountersD1Ev>
  403eaa:	e9 9e fe ff ff       	jmpq   403d4d <main.cold+0x51>
  403eaf:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  403eb4:	75 0a                	jne    403ec0 <main.cold+0x1c4>
  403eb6:	8b 85 10 f3 ff ff    	mov    -0xcf0(%rbp),%eax
  403ebc:	41 89 04 24          	mov    %eax,(%r12)
  403ec0:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  403ec7:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  403ece:	48 39 c7             	cmp    %rax,%rdi
  403ed1:	74 18                	je     403eeb <main.cold+0x1ef>
  403ed3:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  403eda:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403ede:	c5 f8 77             	vzeroupper 
  403ee1:	e8 ca f3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403ee6:	e9 46 fe ff ff       	jmpq   403d31 <main.cold+0x35>
  403eeb:	c5 f8 77             	vzeroupper 
  403eee:	e9 3e fe ff ff       	jmpq   403d31 <main.cold+0x35>
  403ef3:	e8 58 f5 ff ff       	callq  403450 <_Unwind_Resume@plt>
  403ef8:	c5 f8 77             	vzeroupper 
  403efb:	e9 31 fe ff ff       	jmpq   403d31 <main.cold+0x35>
  403f00:	49 89 c4             	mov    %rax,%r12
  403f03:	c5 f8 77             	vzeroupper 
  403f06:	e8 f5 f4 ff ff       	callq  403400 <__cxa_end_catch@plt>
  403f0b:	4c 89 e7             	mov    %r12,%rdi
  403f0e:	e8 3d f5 ff ff       	callq  403450 <_Unwind_Resume@plt>
  403f13:	48 8b bd f0 f4 ff ff 	mov    -0xb10(%rbp),%rdi
  403f1a:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  403f21:	48 39 c7             	cmp    %rax,%rdi
  403f24:	75 64                	jne    403f8a <main.cold+0x28e>
  403f26:	c5 f8 77             	vzeroupper 
  403f29:	45 84 e4             	test   %r12b,%r12b
  403f2c:	0f 84 c4 fe ff ff    	je     403df6 <main.cold+0xfa>
  403f32:	48 8b bd a0 f4 ff ff 	mov    -0xb60(%rbp),%rdi
  403f39:	48 8d 85 b0 f4 ff ff 	lea    -0xb50(%rbp),%rax
  403f40:	48 39 c7             	cmp    %rax,%rdi
  403f43:	0f 84 ad fe ff ff    	je     403df6 <main.cold+0xfa>
  403f49:	48 8b 85 b0 f4 ff ff 	mov    -0xb50(%rbp),%rax
  403f50:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403f54:	e8 57 f3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403f59:	e9 98 fe ff ff       	jmpq   403df6 <main.cold+0xfa>
  403f5e:	bf 10 00 00 00       	mov    $0x10,%edi
  403f63:	e8 e8 f1 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403f68:	48 89 c7             	mov    %rax,%rdi
  403f6b:	be 68 04 41 00       	mov    $0x410468,%esi
  403f70:	49 89 c5             	mov    %rax,%r13
  403f73:	e8 a8 f1 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403f78:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403f7d:	be a0 2d 41 00       	mov    $0x412da0,%esi
  403f82:	4c 89 ef             	mov    %r13,%rdi
  403f85:	e8 a6 f4 ff ff       	callq  403430 <__cxa_throw@plt>
  403f8a:	48 8b 85 00 f5 ff ff 	mov    -0xb00(%rbp),%rax
  403f91:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403f95:	c5 f8 77             	vzeroupper 
  403f98:	e8 13 f3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403f9d:	eb 8a                	jmp    403f29 <main.cold+0x22d>
  403f9f:	48 89 c3             	mov    %rax,%rbx
  403fa2:	49 89 d4             	mov    %rdx,%r12
  403fa5:	c5 f8 77             	vzeroupper 
  403fa8:	e9 bc fe ff ff       	jmpq   403e69 <main.cold+0x16d>
  403fad:	48 89 c3             	mov    %rax,%rbx
  403fb0:	49 89 d4             	mov    %rdx,%r12
  403fb3:	4c 89 ef             	mov    %r13,%rdi
  403fb6:	c5 f8 77             	vzeroupper 
  403fb9:	e8 42 f2 ff ff       	callq  403200 <__cxa_free_exception@plt>
  403fbe:	e9 a6 fe ff ff       	jmpq   403e69 <main.cold+0x16d>
  403fc3:	48 8b bd 40 f4 ff ff 	mov    -0xbc0(%rbp),%rdi
  403fca:	48 8d 85 50 f4 ff ff 	lea    -0xbb0(%rbp),%rax
  403fd1:	48 39 c7             	cmp    %rax,%rdi
  403fd4:	0f 84 cc 00 00 00    	je     4040a6 <main.cold+0x3aa>
  403fda:	48 8b 85 50 f4 ff ff 	mov    -0xbb0(%rbp),%rax
  403fe1:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403fe5:	c5 f8 77             	vzeroupper 
  403fe8:	e8 c3 f2 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403fed:	e9 31 fe ff ff       	jmpq   403e23 <main.cold+0x127>
  403ff2:	84 db                	test   %bl,%bl
  403ff4:	0f 84 b4 00 00 00    	je     4040ae <main.cold+0x3b2>
  403ffa:	48 8b bd 80 f4 ff ff 	mov    -0xb80(%rbp),%rdi
  404001:	48 8d 85 90 f4 ff ff 	lea    -0xb70(%rbp),%rax
  404008:	48 39 c7             	cmp    %rax,%rdi
  40400b:	0f 84 a5 00 00 00    	je     4040b6 <main.cold+0x3ba>
  404011:	48 8b 85 90 f4 ff ff 	mov    -0xb70(%rbp),%rax
  404018:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40401c:	c5 f8 77             	vzeroupper 
  40401f:	e8 8c f2 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  404024:	e9 cd fd ff ff       	jmpq   403df6 <main.cold+0xfa>
  404029:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  404030:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404037:	48 39 c7             	cmp    %rax,%rdi
  40403a:	74 43                	je     40407f <main.cold+0x383>
  40403c:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  404043:	48 8d 70 01          	lea    0x1(%rax),%rsi
  404047:	c5 f8 77             	vzeroupper 
  40404a:	e8 61 f2 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40404f:	e9 dd fc ff ff       	jmpq   403d31 <main.cold+0x35>
  404054:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  40405b:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404062:	48 39 c7             	cmp    %rax,%rdi
  404065:	74 20                	je     404087 <main.cold+0x38b>
  404067:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  40406e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  404072:	c5 f8 77             	vzeroupper 
  404075:	e8 36 f2 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40407a:	e9 b2 fc ff ff       	jmpq   403d31 <main.cold+0x35>
  40407f:	c5 f8 77             	vzeroupper 
  404082:	e9 aa fc ff ff       	jmpq   403d31 <main.cold+0x35>
  404087:	c5 f8 77             	vzeroupper 
  40408a:	e9 a2 fc ff ff       	jmpq   403d31 <main.cold+0x35>
  40408f:	8b 85 dc f2 ff ff    	mov    -0xd24(%rbp),%eax
  404095:	41 89 04 24          	mov    %eax,(%r12)
  404099:	e9 69 fc ff ff       	jmpq   403d07 <main.cold+0xb>
  40409e:	c5 f8 77             	vzeroupper 
  4040a1:	e9 8b fc ff ff       	jmpq   403d31 <main.cold+0x35>
  4040a6:	c5 f8 77             	vzeroupper 
  4040a9:	e9 75 fd ff ff       	jmpq   403e23 <main.cold+0x127>
  4040ae:	c5 f8 77             	vzeroupper 
  4040b1:	e9 67 fd ff ff       	jmpq   403e1d <main.cold+0x121>
  4040b6:	c5 f8 77             	vzeroupper 
  4040b9:	e9 38 fd ff ff       	jmpq   403df6 <main.cold+0xfa>
  4040be:	66 90                	xchg   %ax,%ax

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
  4040de:	48 81 ec 40 0d 00 00 	sub    $0xd40,%rsp
  4040e5:	89 bd 20 f3 ff ff    	mov    %edi,-0xce0(%rbp)
  4040eb:	48 89 b5 18 f3 ff ff 	mov    %rsi,-0xce8(%rbp)
  4040f2:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  4040f9:	be b6 00 41 00       	mov    $0x4100b6,%esi
  4040fe:	e8 7d 70 00 00       	callq  40b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404103:	c7 85 4c f3 ff ff 01 	movl   $0x1,-0xcb4(%rbp)
  40410a:	00 00 00 
  40410d:	83 fb 01             	cmp    $0x1,%ebx
  404110:	0f 8e 01 06 00 00    	jle    404717 <main+0x657>
  404116:	c5 fb 10 2d d2 c5 00 	vmovsd 0xc5d2(%rip),%xmm5        # 4106f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  40411d:	00 
  40411e:	48 b8 00 00 00 00 02 	movabs $0x200000000,%rax
  404125:	00 00 00 
  404128:	c6 85 00 f3 ff ff 00 	movb   $0x0,-0xd00(%rbp)
  40412f:	c6 85 f0 f2 ff ff 00 	movb   $0x0,-0xd10(%rbp)
  404136:	c7 85 d4 f2 ff ff 00 	movl   $0x0,-0xd2c(%rbp)
  40413d:	00 00 00 
  404140:	c7 85 d8 f2 ff ff 05 	movl   $0x5,-0xd28(%rbp)
  404147:	00 00 00 
  40414a:	48 89 85 e8 f2 ff ff 	mov    %rax,-0xd18(%rbp)
  404151:	bb 01 00 00 00       	mov    $0x1,%ebx
  404156:	c5 fb 11 ad 08 f3 ff 	vmovsd %xmm5,-0xcf8(%rbp)
  40415d:	ff 
  40415e:	c5 fb 11 ad e0 f2 ff 	vmovsd %xmm5,-0xd20(%rbp)
  404165:	ff 
  404166:	4c 8d bd 50 f5 ff ff 	lea    -0xab0(%rbp),%r15
  40416d:	4c 8d ad 60 f5 ff ff 	lea    -0xaa0(%rbp),%r13
  404174:	e9 a1 00 00 00       	jmpq   40421a <main+0x15a>
  404179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404180:	be 96 01 41 00       	mov    $0x410196,%esi
  404185:	4c 89 ff             	mov    %r15,%rdi
  404188:	e8 33 ef ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40418d:	85 c0                	test   %eax,%eax
  40418f:	0f 84 6b 01 00 00    	je     404300 <main+0x240>
  404195:	ff c3                	inc    %ebx
  404197:	39 9d 20 f3 ff ff    	cmp    %ebx,-0xce0(%rbp)
  40419d:	0f 8e f0 04 00 00    	jle    404693 <main+0x5d3>
  4041a3:	be a2 01 41 00       	mov    $0x4101a2,%esi
  4041a8:	4c 89 ff             	mov    %r15,%rdi
  4041ab:	e8 10 ef ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4041b0:	85 c0                	test   %eax,%eax
  4041b2:	0f 85 58 01 00 00    	jne    404310 <main+0x250>
  4041b8:	48 8b b5 10 f3 ff ff 	mov    -0xcf0(%rbp),%rsi
  4041bf:	48 8b 85 18 f3 ff ff 	mov    -0xce8(%rbp),%rax
  4041c6:	4c 8b 64 30 08       	mov    0x8(%rax,%rsi,1),%r12
  4041cb:	4c 89 e7             	mov    %r12,%rdi
  4041ce:	e8 6d ef ff ff       	callq  403140 <strlen@plt>
  4041d3:	48 8b 95 e8 f3 ff ff 	mov    -0xc18(%rbp),%rdx
  4041da:	49 89 c0             	mov    %rax,%r8
  4041dd:	4c 89 e1             	mov    %r12,%rcx
  4041e0:	31 f6                	xor    %esi,%esi
  4041e2:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  4041e9:	e8 d2 f1 ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  4041ee:	66 90                	xchg   %ax,%ax
  4041f0:	48 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%rdi
  4041f7:	4c 39 ef             	cmp    %r13,%rdi
  4041fa:	74 10                	je     40420c <main+0x14c>
  4041fc:	48 8b 85 60 f5 ff ff 	mov    -0xaa0(%rbp),%rax
  404203:	48 8d 70 01          	lea    0x1(%rax),%rsi
  404207:	e8 a4 f0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40420c:	ff c3                	inc    %ebx
  40420e:	39 9d 20 f3 ff ff    	cmp    %ebx,-0xce0(%rbp)
  404214:	0f 8e 3a 03 00 00    	jle    404554 <main+0x494>
  40421a:	48 63 c3             	movslq %ebx,%rax
  40421d:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
  404224:	00 
  404225:	48 89 8d 10 f3 ff ff 	mov    %rcx,-0xcf0(%rbp)
  40422c:	48 8b 8d 18 f3 ff ff 	mov    -0xce8(%rbp),%rcx
  404233:	4c 89 ad 50 f5 ff ff 	mov    %r13,-0xab0(%rbp)
  40423a:	4c 8b 24 c1          	mov    (%rcx,%rax,8),%r12
  40423e:	4d 85 e4             	test   %r12,%r12
  404241:	0f 84 a6 24 00 00    	je     4066ed <main+0x262d>
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
  40427e:	be 89 01 41 00       	mov    $0x410189,%esi
  404283:	4c 89 ff             	mov    %r15,%rdi
  404286:	e8 35 ee ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40428b:	85 c0                	test   %eax,%eax
  40428d:	0f 85 ed fe ff ff    	jne    404180 <main+0xc0>
  404293:	c6 85 f0 f2 ff ff 01 	movb   $0x1,-0xd10(%rbp)
  40429a:	e9 51 ff ff ff       	jmpq   4041f0 <main+0x130>
  40429f:	90                   	nop
  4042a0:	48 85 c0             	test   %rax,%rax
  4042a3:	0f 85 4e 24 00 00    	jne    4066f7 <main+0x2637>
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
  404300:	c6 85 00 f3 ff ff 01 	movb   $0x1,-0xd00(%rbp)
  404307:	e9 e4 fe ff ff       	jmpq   4041f0 <main+0x130>
  40430c:	0f 1f 40 00          	nopl   0x0(%rax)
  404310:	be a9 01 41 00       	mov    $0x4101a9,%esi
  404315:	4c 89 ff             	mov    %r15,%rdi
  404318:	e8 a3 ed ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40431d:	85 c0                	test   %eax,%eax
  40431f:	0f 85 13 01 00 00    	jne    404438 <main+0x378>
  404325:	48 8b 85 18 f3 ff ff 	mov    -0xce8(%rbp),%rax
  40432c:	48 8b b5 10 f3 ff ff 	mov    -0xcf0(%rbp),%rsi
  404333:	4c 8b 74 30 08       	mov    0x8(%rax,%rsi,1),%r14
  404338:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  40433f:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  404346:	4d 85 f6             	test   %r14,%r14
  404349:	0f 84 94 23 00 00    	je     4066e3 <main+0x2623>
  40434f:	4c 89 f7             	mov    %r14,%rdi
  404352:	e8 e9 ed ff ff       	callq  403140 <strlen@plt>
  404357:	48 89 85 f0 f4 ff ff 	mov    %rax,-0xb10(%rbp)
  40435e:	49 89 c4             	mov    %rax,%r12
  404361:	48 83 f8 0f          	cmp    $0xf,%rax
  404365:	0f 87 77 02 00 00    	ja     4045e2 <main+0x522>
  40436b:	48 83 f8 01          	cmp    $0x1,%rax
  40436f:	0f 85 4d 02 00 00    	jne    4045c2 <main+0x502>
  404375:	41 0f b6 06          	movzbl (%r14),%eax
  404379:	88 85 10 f6 ff ff    	mov    %al,-0x9f0(%rbp)
  40437f:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  404386:	48 89 85 10 f3 ff ff 	mov    %rax,-0xcf0(%rbp)
  40438d:	48 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%rax
  404394:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  40439b:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  4043a2:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4043a6:	e8 95 ec ff ff       	callq  403040 <__errno_location@plt>
  4043ab:	49 89 c4             	mov    %rax,%r12
  4043ae:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  4043b5:	8b 00                	mov    (%rax),%eax
  4043b7:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  4043be:	00 
  4043bf:	48 8b b5 10 f3 ff ff 	mov    -0xcf0(%rbp),%rsi
  4043c6:	ba 0a 00 00 00       	mov    $0xa,%edx
  4043cb:	4c 89 f7             	mov    %r14,%rdi
  4043ce:	89 85 dc f2 ff ff    	mov    %eax,-0xd24(%rbp)
  4043d4:	e8 57 ef ff ff       	callq  403330 <strtoull@plt>
  4043d9:	48 89 85 e8 f2 ff ff 	mov    %rax,-0xd18(%rbp)
  4043e0:	4c 3b b5 f0 f4 ff ff 	cmp    -0xb10(%rbp),%r14
  4043e7:	0f 84 51 22 00 00    	je     40663e <main+0x257e>
  4043ed:	41 8b 04 24          	mov    (%r12),%eax
  4043f1:	83 f8 22             	cmp    $0x22,%eax
  4043f4:	0f 84 3a 22 00 00    	je     406634 <main+0x2574>
  4043fa:	85 c0                	test   %eax,%eax
  4043fc:	75 0a                	jne    404408 <main+0x348>
  4043fe:	8b 85 dc f2 ff ff    	mov    -0xd24(%rbp),%eax
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
  404438:	be b8 01 41 00       	mov    $0x4101b8,%esi
  40443d:	4c 89 ff             	mov    %r15,%rdi
  404440:	e8 7b ec ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404445:	85 c0                	test   %eax,%eax
  404447:	0f 85 93 00 00 00    	jne    4044e0 <main+0x420>
  40444d:	48 8b 85 18 f3 ff ff 	mov    -0xce8(%rbp),%rax
  404454:	48 8b b5 10 f3 ff ff 	mov    -0xcf0(%rbp),%rsi
  40445b:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404462:	48 8b 74 30 08       	mov    0x8(%rax,%rsi,1),%rsi
  404467:	e8 14 6d 00 00       	callq  40b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40446c:	e8 cf eb ff ff       	callq  403040 <__errno_location@plt>
  404471:	49 89 c4             	mov    %rax,%r12
  404474:	8b 00                	mov    (%rax),%eax
  404476:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  40447d:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  404484:	00 
  404485:	89 85 10 f3 ff ff    	mov    %eax,-0xcf0(%rbp)
  40448b:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  404492:	48 89 c6             	mov    %rax,%rsi
  404495:	4c 89 f7             	mov    %r14,%rdi
  404498:	e8 93 ed ff ff       	callq  403230 <strtod@plt>
  40449d:	c5 fb 11 85 e0 f2 ff 	vmovsd %xmm0,-0xd20(%rbp)
  4044a4:	ff 
  4044a5:	4c 3b b5 f0 f4 ff ff 	cmp    -0xb10(%rbp),%r14
  4044ac:	0f 84 78 21 00 00    	je     40662a <main+0x256a>
  4044b2:	41 8b 04 24          	mov    (%r12),%eax
  4044b6:	83 f8 22             	cmp    $0x22,%eax
  4044b9:	0f 84 61 21 00 00    	je     406620 <main+0x2560>
  4044bf:	85 c0                	test   %eax,%eax
  4044c1:	0f 85 41 ff ff ff    	jne    404408 <main+0x348>
  4044c7:	8b 85 10 f3 ff ff    	mov    -0xcf0(%rbp),%eax
  4044cd:	41 89 04 24          	mov    %eax,(%r12)
  4044d1:	e9 32 ff ff ff       	jmpq   404408 <main+0x348>
  4044d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4044dd:	00 00 00 
  4044e0:	be c7 01 41 00       	mov    $0x4101c7,%esi
  4044e5:	4c 89 ff             	mov    %r15,%rdi
  4044e8:	e8 d3 eb ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4044ed:	85 c0                	test   %eax,%eax
  4044ef:	0f 85 34 01 00 00    	jne    404629 <main+0x569>
  4044f5:	48 8b 85 18 f3 ff ff 	mov    -0xce8(%rbp),%rax
  4044fc:	48 8b b5 10 f3 ff ff 	mov    -0xcf0(%rbp),%rsi
  404503:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  40450a:	48 8b 74 30 08       	mov    0x8(%rax,%rsi,1),%rsi
  40450f:	e8 6c 6c 00 00       	callq  40b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404514:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  40451b:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  404521:	31 c9                	xor    %ecx,%ecx
  404523:	be 4a 00 41 00       	mov    $0x41004a,%esi
  404528:	bf 50 33 40 00       	mov    $0x403350,%edi
  40452d:	e8 ae 9f 00 00       	callq  40e4e0 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  404532:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  404539:	89 85 d8 f2 ff ff    	mov    %eax,-0xd28(%rbp)
  40453f:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404546:	48 39 c7             	cmp    %rax,%rdi
  404549:	0f 85 d0 fe ff ff    	jne    40441f <main+0x35f>
  40454f:	e9 9c fc ff ff       	jmpq   4041f0 <main+0x130>
  404554:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  404558:	c5 f9 2f 85 e0 f2 ff 	vcomisd -0xd20(%rbp),%xmm0
  40455f:	ff 
  404560:	73 1c                	jae    40457e <main+0x4be>
  404562:	83 bd d8 f2 ff ff 00 	cmpl   $0x0,-0xd28(%rbp)
  404569:	7e 13                	jle    40457e <main+0x4be>
  40456b:	8b 85 4c f3 ff ff    	mov    -0xcb4(%rbp),%eax
  404571:	ff c8                	dec    %eax
  404573:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  404578:	0f 86 e3 01 00 00    	jbe    404761 <main+0x6a1>
  40457e:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  404584:	48 8b bd e0 f3 ff ff 	mov    -0xc20(%rbp),%rdi
  40458b:	48 8d 85 f0 f3 ff ff 	lea    -0xc10(%rbp),%rax
  404592:	48 39 c7             	cmp    %rax,%rdi
  404595:	74 10                	je     4045a7 <main+0x4e7>
  404597:	48 8b 85 f0 f3 ff ff 	mov    -0xc10(%rbp),%rax
  40459e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4045a2:	e8 09 ed ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4045a7:	48 81 c4 40 0d 00 00 	add    $0xd40,%rsp
  4045ae:	5b                   	pop    %rbx
  4045af:	41 5a                	pop    %r10
  4045b1:	44 89 e0             	mov    %r12d,%eax
  4045b4:	41 5c                	pop    %r12
  4045b6:	41 5d                	pop    %r13
  4045b8:	41 5e                	pop    %r14
  4045ba:	41 5f                	pop    %r15
  4045bc:	5d                   	pop    %rbp
  4045bd:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  4045c1:	c3                   	retq   
  4045c2:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  4045c9:	48 89 85 10 f3 ff ff 	mov    %rax,-0xcf0(%rbp)
  4045d0:	4d 85 e4             	test   %r12,%r12
  4045d3:	0f 84 b4 fd ff ff    	je     40438d <main+0x2cd>
  4045d9:	48 8d bd 10 f6 ff ff 	lea    -0x9f0(%rbp),%rdi
  4045e0:	eb 37                	jmp    404619 <main+0x559>
  4045e2:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  4045e9:	31 d2                	xor    %edx,%edx
  4045eb:	48 89 c6             	mov    %rax,%rsi
  4045ee:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  4045f5:	48 89 85 10 f3 ff ff 	mov    %rax,-0xcf0(%rbp)
  4045fc:	e8 5f ee ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  404601:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  404608:	48 89 c7             	mov    %rax,%rdi
  40460b:	48 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%rax
  404612:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  404619:	4c 89 e2             	mov    %r12,%rdx
  40461c:	4c 89 f6             	mov    %r14,%rsi
  40461f:	e8 2c ec ff ff       	callq  403250 <memcpy@plt>
  404624:	e9 64 fd ff ff       	jmpq   40438d <main+0x2cd>
  404629:	be d5 01 41 00       	mov    $0x4101d5,%esi
  40462e:	4c 89 ff             	mov    %r15,%rdi
  404631:	e8 8a ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404636:	85 c0                	test   %eax,%eax
  404638:	74 7e                	je     4046b8 <main+0x5f8>
  40463a:	be d9 01 41 00       	mov    $0x4101d9,%esi
  40463f:	4c 89 ff             	mov    %r15,%rdi
  404642:	e8 79 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404647:	85 c0                	test   %eax,%eax
  404649:	75 48                	jne    404693 <main+0x5d3>
  40464b:	48 8b 85 18 f3 ff ff 	mov    -0xce8(%rbp),%rax
  404652:	48 8b b5 10 f3 ff ff 	mov    -0xcf0(%rbp),%rsi
  404659:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404660:	48 8b 74 30 08       	mov    0x8(%rax,%rsi,1),%rsi
  404665:	e8 16 6b 00 00       	callq  40b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40466a:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  404671:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  404677:	31 c9                	xor    %ecx,%ecx
  404679:	be 4a 00 41 00       	mov    $0x41004a,%esi
  40467e:	bf 50 33 40 00       	mov    $0x403350,%edi
  404683:	e8 58 9e 00 00       	callq  40e4e0 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  404688:	89 85 d4 f2 ff ff    	mov    %eax,-0xd2c(%rbp)
  40468e:	e9 75 fd ff ff       	jmpq   404408 <main+0x348>
  404693:	48 8b bd 50 f5 ff ff 	mov    -0xab0(%rbp),%rdi
  40469a:	4c 39 ef             	cmp    %r13,%rdi
  40469d:	0f 84 db fe ff ff    	je     40457e <main+0x4be>
  4046a3:	48 8b 85 60 f5 ff ff 	mov    -0xaa0(%rbp),%rax
  4046aa:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4046ae:	e8 fd eb ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4046b3:	e9 c6 fe ff ff       	jmpq   40457e <main+0x4be>
  4046b8:	48 8b 85 18 f3 ff ff 	mov    -0xce8(%rbp),%rax
  4046bf:	48 8b b5 10 f3 ff ff 	mov    -0xcf0(%rbp),%rsi
  4046c6:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  4046cd:	48 8b 74 30 08       	mov    0x8(%rax,%rsi,1),%rsi
  4046d2:	e8 a9 6a 00 00       	callq  40b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4046d7:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  4046de:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  4046e4:	31 c9                	xor    %ecx,%ecx
  4046e6:	be 4a 00 41 00       	mov    $0x41004a,%esi
  4046eb:	bf 50 33 40 00       	mov    $0x403350,%edi
  4046f0:	e8 eb 9d 00 00       	callq  40e4e0 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  4046f5:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  4046fc:	89 85 4c f3 ff ff    	mov    %eax,-0xcb4(%rbp)
  404702:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404709:	48 39 c7             	cmp    %rax,%rdi
  40470c:	0f 85 0d fd ff ff    	jne    40441f <main+0x35f>
  404712:	e9 d9 fa ff ff       	jmpq   4041f0 <main+0x130>
  404717:	b8 01 00 00 00       	mov    $0x1,%eax
  40471c:	48 c1 e0 21          	shl    $0x21,%rax
  404720:	c5 fb 10 3d c8 bf 00 	vmovsd 0xbfc8(%rip),%xmm7        # 4106f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  404727:	00 
  404728:	c7 85 d8 f2 ff ff 05 	movl   $0x5,-0xd28(%rbp)
  40472f:	00 00 00 
  404732:	48 89 85 e8 f2 ff ff 	mov    %rax,-0xd18(%rbp)
  404739:	c6 85 00 f3 ff ff 00 	movb   $0x0,-0xd00(%rbp)
  404740:	c6 85 f0 f2 ff ff 00 	movb   $0x0,-0xd10(%rbp)
  404747:	c7 85 d4 f2 ff ff 00 	movl   $0x0,-0xd2c(%rbp)
  40474e:	00 00 00 
  404751:	c5 fb 11 bd 08 f3 ff 	vmovsd %xmm7,-0xcf8(%rbp)
  404758:	ff 
  404759:	c5 fb 11 bd e0 f2 ff 	vmovsd %xmm7,-0xd20(%rbp)
  404760:	ff 
  404761:	be b6 00 41 00       	mov    $0x4100b6,%esi
  404766:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  40476d:	e8 4e e9 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404772:	85 c0                	test   %eax,%eax
  404774:	be cf 00 41 00       	mov    $0x4100cf,%esi
  404779:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  404780:	0f 94 85 3e f3 ff ff 	sete   -0xcc2(%rbp)
  404787:	e8 34 e9 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40478c:	85 c0                	test   %eax,%eax
  40478e:	be 08 01 41 00       	mov    $0x410108,%esi
  404793:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  40479a:	0f 94 85 3f f3 ff ff 	sete   -0xcc1(%rbp)
  4047a1:	e8 1a e9 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047a6:	85 c0                	test   %eax,%eax
  4047a8:	be e2 01 41 00       	mov    $0x4101e2,%esi
  4047ad:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  4047b4:	0f 94 85 40 f3 ff ff 	sete   -0xcc0(%rbp)
  4047bb:	e8 00 e9 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047c0:	85 c0                	test   %eax,%eax
  4047c2:	be fa 00 41 00       	mov    $0x4100fa,%esi
  4047c7:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  4047ce:	0f 94 85 41 f3 ff ff 	sete   -0xcbf(%rbp)
  4047d5:	e8 e6 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047da:	85 c0                	test   %eax,%eax
  4047dc:	be df 00 41 00       	mov    $0x4100df,%esi
  4047e1:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  4047e8:	0f 94 85 42 f3 ff ff 	sete   -0xcbe(%rbp)
  4047ef:	e8 cc e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4047f4:	85 c0                	test   %eax,%eax
  4047f6:	be eb 00 41 00       	mov    $0x4100eb,%esi
  4047fb:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  404802:	0f 94 85 43 f3 ff ff 	sete   -0xcbd(%rbp)
  404809:	e8 b2 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40480e:	85 c0                	test   %eax,%eax
  404810:	be 4a 01 41 00       	mov    $0x41014a,%esi
  404815:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  40481c:	0f 94 85 44 f3 ff ff 	sete   -0xcbc(%rbp)
  404823:	e8 98 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404828:	85 c0                	test   %eax,%eax
  40482a:	be 45 01 41 00       	mov    $0x410145,%esi
  40482f:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  404836:	0f 94 85 45 f3 ff ff 	sete   -0xcbb(%rbp)
  40483d:	e8 7e e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404842:	85 c0                	test   %eax,%eax
  404844:	be f5 01 41 00       	mov    $0x4101f5,%esi
  404849:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  404850:	0f 94 85 46 f3 ff ff 	sete   -0xcba(%rbp)
  404857:	e8 64 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40485c:	85 c0                	test   %eax,%eax
  40485e:	be 4f 01 41 00       	mov    $0x41014f,%esi
  404863:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  40486a:	0f 94 85 47 f3 ff ff 	sete   -0xcb9(%rbp)
  404871:	e8 4a e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404876:	85 c0                	test   %eax,%eax
  404878:	be ea 01 41 00       	mov    $0x4101ea,%esi
  40487d:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  404884:	0f 94 85 48 f3 ff ff 	sete   -0xcb8(%rbp)
  40488b:	e8 30 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404890:	85 c0                	test   %eax,%eax
  404892:	be ef 01 41 00       	mov    $0x4101ef,%esi
  404897:	48 8d bd e0 f3 ff ff 	lea    -0xc20(%rbp),%rdi
  40489e:	0f 94 85 49 f3 ff ff 	sete   -0xcb7(%rbp)
  4048a5:	e8 16 e8 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4048aa:	85 c0                	test   %eax,%eax
  4048ac:	0f b6 95 3e f3 ff ff 	movzbl -0xcc2(%rbp),%edx
  4048b3:	0f 94 c1             	sete   %cl
  4048b6:	88 8d 4a f3 ff ff    	mov    %cl,-0xcb6(%rbp)
  4048bc:	84 d2                	test   %dl,%dl
  4048be:	0f 85 9a 00 00 00    	jne    40495e <main+0x89e>
  4048c4:	80 bd 3f f3 ff ff 00 	cmpb   $0x0,-0xcc1(%rbp)
  4048cb:	0f 85 8d 00 00 00    	jne    40495e <main+0x89e>
  4048d1:	80 bd 43 f3 ff ff 00 	cmpb   $0x0,-0xcbd(%rbp)
  4048d8:	0f 85 80 00 00 00    	jne    40495e <main+0x89e>
  4048de:	44 0f b6 ad 44 f3 ff 	movzbl -0xcbc(%rbp),%r13d
  4048e5:	ff 
  4048e6:	45 84 ed             	test   %r13b,%r13b
  4048e9:	75 73                	jne    40495e <main+0x89e>
  4048eb:	0f b6 9d 40 f3 ff ff 	movzbl -0xcc0(%rbp),%ebx
  4048f2:	88 9d dc f2 ff ff    	mov    %bl,-0xd24(%rbp)
  4048f8:	84 db                	test   %bl,%bl
  4048fa:	0f 85 2f 1c 00 00    	jne    40652f <main+0x246f>
  404900:	80 bd 41 f3 ff ff 00 	cmpb   $0x0,-0xcbf(%rbp)
  404907:	75 3e                	jne    404947 <main+0x887>
  404909:	80 bd 42 f3 ff ff 00 	cmpb   $0x0,-0xcbe(%rbp)
  404910:	75 35                	jne    404947 <main+0x887>
  404912:	80 bd 45 f3 ff ff 00 	cmpb   $0x0,-0xcbb(%rbp)
  404919:	75 2c                	jne    404947 <main+0x887>
  40491b:	80 bd 46 f3 ff ff 00 	cmpb   $0x0,-0xcba(%rbp)
  404922:	75 23                	jne    404947 <main+0x887>
  404924:	80 bd 47 f3 ff ff 00 	cmpb   $0x0,-0xcb9(%rbp)
  40492b:	75 1a                	jne    404947 <main+0x887>
  40492d:	80 bd 48 f3 ff ff 00 	cmpb   $0x0,-0xcb8(%rbp)
  404934:	75 11                	jne    404947 <main+0x887>
  404936:	80 bd 49 f3 ff ff 00 	cmpb   $0x0,-0xcb7(%rbp)
  40493d:	75 08                	jne    404947 <main+0x887>
  40493f:	84 c9                	test   %cl,%cl
  404941:	0f 84 37 fc ff ff    	je     40457e <main+0x4be>
  404947:	83 bd d4 f2 ff ff 00 	cmpl   $0x0,-0xd2c(%rbp)
  40494e:	0f 85 b5 1d 00 00    	jne    406709 <main+0x2649>
  404954:	45 31 ed             	xor    %r13d,%r13d
  404957:	b8 0c 00 00 00       	mov    $0xc,%eax
  40495c:	eb 38                	jmp    404996 <main+0x8d6>
  40495e:	0a 95 3f f3 ff ff    	or     -0xcc1(%rbp),%dl
  404964:	88 95 dc f2 ff ff    	mov    %dl,-0xd24(%rbp)
  40496a:	0f b6 95 43 f3 ff ff 	movzbl -0xcbd(%rbp),%edx
  404971:	0b 95 44 f3 ff ff    	or     -0xcbc(%rbp),%edx
  404977:	83 bd d4 f2 ff ff 00 	cmpl   $0x0,-0xd2c(%rbp)
  40497e:	41 89 d5             	mov    %edx,%r13d
  404981:	0f 85 df 01 00 00    	jne    404b66 <main+0xaa6>
  404987:	80 bd 40 f3 ff ff 01 	cmpb   $0x1,-0xcc0(%rbp)
  40498e:	19 c0                	sbb    %eax,%eax
  404990:	83 e0 04             	and    $0x4,%eax
  404993:	83 c0 08             	add    $0x8,%eax
  404996:	89 85 50 f3 ff ff    	mov    %eax,-0xcb0(%rbp)
  40499c:	48 8d 85 54 f3 ff ff 	lea    -0xcac(%rbp),%rax
  4049a3:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  4049aa:	31 c9                	xor    %ecx,%ecx
  4049ac:	31 d2                	xor    %edx,%edx
  4049ae:	bf c0 6a 40 00       	mov    $0x406ac0,%edi
  4049b3:	c7 85 54 f3 ff ff 00 	movl   $0x0,-0xcac(%rbp)
  4049ba:	00 00 00 
  4049bd:	c6 85 4b f3 ff ff 01 	movb   $0x1,-0xcb5(%rbp)
  4049c4:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  4049cb:	4c 8d bd 50 f5 ff ff 	lea    -0xab0(%rbp),%r15
  4049d2:	e8 c9 e9 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  4049d7:	8b b5 54 f3 ff ff    	mov    -0xcac(%rbp),%esi
  4049dd:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4049e1:	4c 89 ff             	mov    %r15,%rdi
  4049e4:	48 c7 85 d0 f5 ff ff 	movq   $0x0,-0xa30(%rbp)
  4049eb:	00 00 00 00 
  4049ef:	48 c7 85 d8 f5 ff ff 	movq   $0x0,-0xa28(%rbp)
  4049f6:	00 00 00 00 
  4049fa:	c6 85 e0 f5 ff ff 00 	movb   $0x0,-0xa20(%rbp)
  404a01:	c5 fd 7f 85 50 f5 ff 	vmovdqa %ymm0,-0xab0(%rbp)
  404a08:	ff 
  404a09:	c5 fd 7f 85 70 f5 ff 	vmovdqa %ymm0,-0xa90(%rbp)
  404a10:	ff 
  404a11:	c5 fd 7f 85 90 f5 ff 	vmovdqa %ymm0,-0xa70(%rbp)
  404a18:	ff 
  404a19:	c5 fd 7f 85 b0 f5 ff 	vmovdqa %ymm0,-0xa50(%rbp)
  404a20:	ff 
  404a21:	c5 f8 77             	vzeroupper 
  404a24:	e8 47 93 00 00       	callq  40dd70 <_ZN8Counters4openEi>
  404a29:	80 bd dc f2 ff ff 00 	cmpb   $0x0,-0xd24(%rbp)
  404a30:	48 c7 85 58 f3 ff ff 	movq   $0x0,-0xca8(%rbp)
  404a37:	00 00 00 00 
  404a3b:	48 c7 85 60 f3 ff ff 	movq   $0x0,-0xca0(%rbp)
  404a42:	00 00 00 00 
  404a46:	48 c7 85 68 f3 ff ff 	movq   $0x0,-0xc98(%rbp)
  404a4d:	00 00 00 00 
  404a51:	48 c7 85 70 f3 ff ff 	movq   $0x0,-0xc90(%rbp)
  404a58:	00 00 00 00 
  404a5c:	48 c7 85 78 f3 ff ff 	movq   $0x0,-0xc88(%rbp)
  404a63:	00 00 00 00 
  404a67:	48 c7 85 a0 f3 ff ff 	movq   $0x0,-0xc60(%rbp)
  404a6e:	00 00 00 00 
  404a72:	48 c7 85 a8 f3 ff ff 	movq   $0x0,-0xc58(%rbp)
  404a79:	00 00 00 00 
  404a7d:	48 c7 85 b0 f3 ff ff 	movq   $0x0,-0xc50(%rbp)
  404a84:	00 00 00 00 
  404a88:	48 c7 85 c0 f3 ff ff 	movq   $0x0,-0xc40(%rbp)
  404a8f:	00 00 00 00 
  404a93:	48 c7 85 c8 f3 ff ff 	movq   $0x0,-0xc38(%rbp)
  404a9a:	00 00 00 00 
  404a9e:	48 c7 85 d0 f3 ff ff 	movq   $0x0,-0xc30(%rbp)
  404aa5:	00 00 00 00 
  404aa9:	48 c7 85 80 f3 ff ff 	movq   $0x0,-0xc80(%rbp)
  404ab0:	00 00 00 00 
  404ab4:	0f b6 85 40 f3 ff ff 	movzbl -0xcc0(%rbp),%eax
  404abb:	0f 85 e8 00 00 00    	jne    404ba9 <main+0xae9>
  404ac1:	45 84 ed             	test   %r13b,%r13b
  404ac4:	0f 85 0a 0e 00 00    	jne    4058d4 <main+0x1814>
  404aca:	84 c0                	test   %al,%al
  404acc:	0f 84 e1 01 00 00    	je     404cb3 <main+0xbf3>
  404ad2:	8b 85 50 f3 ff ff    	mov    -0xcb0(%rbp),%eax
  404ad8:	c1 e0 03             	shl    $0x3,%eax
  404adb:	48 63 f0             	movslq %eax,%rsi
  404ade:	0f 89 4e 19 00 00    	jns    406432 <main+0x2372>
  404ae4:	48 f7 de             	neg    %rsi
  404ae7:	31 d2                	xor    %edx,%edx
  404ae9:	f3 48 0f bc d6       	tzcnt  %rsi,%rdx
  404aee:	b9 06 00 00 00       	mov    $0x6,%ecx
  404af3:	39 ca                	cmp    %ecx,%edx
  404af5:	0f 4e ca             	cmovle %edx,%ecx
  404af8:	c4 e2 eb f7 c6       	shrx   %rdx,%rsi,%rax
  404afd:	ba 01 00 00 00       	mov    $0x1,%edx
  404b02:	eb 0c                	jmp    404b10 <main+0xa50>
  404b04:	31 ff                	xor    %edi,%edi
  404b06:	f3 48 0f bc f8       	tzcnt  %rax,%rdi
  404b0b:	c4 e2 c3 f7 c0       	shrx   %rdi,%rax,%rax
  404b10:	48 39 c2             	cmp    %rax,%rdx
  404b13:	76 02                	jbe    404b17 <main+0xa57>
  404b15:	48 92                	xchg   %rax,%rdx
  404b17:	48 29 d0             	sub    %rdx,%rax
  404b1a:	75 e8                	jne    404b04 <main+0xa44>
  404b1c:	c4 e2 f1 f7 ca       	shlx   %rcx,%rdx,%rcx
  404b21:	b8 40 00 00 00       	mov    $0x40,%eax
  404b26:	31 d2                	xor    %edx,%edx
  404b28:	48 f7 f1             	div    %rcx
  404b2b:	48 0f af c6          	imul   %rsi,%rax
  404b2f:	80 bd dc f2 ff ff 00 	cmpb   $0x0,-0xd24(%rbp)
  404b36:	48 89 c1             	mov    %rax,%rcx
  404b39:	75 7b                	jne    404bb6 <main+0xaf6>
  404b3b:	48 8b 85 e8 f2 ff ff 	mov    -0xd18(%rbp),%rax
  404b42:	31 d2                	xor    %edx,%edx
  404b44:	48 c1 e8 04          	shr    $0x4,%rax
  404b48:	48 f7 f1             	div    %rcx
  404b4b:	48 0f af c1          	imul   %rcx,%rax
  404b4f:	48 89 85 58 f3 ff ff 	mov    %rax,-0xca8(%rbp)
  404b56:	48 85 c0             	test   %rax,%rax
  404b59:	0f 84 e7 18 00 00    	je     406446 <main+0x2386>
  404b5f:	ba 02 00 00 00       	mov    $0x2,%edx
  404b64:	eb 7f                	jmp    404be5 <main+0xb25>
  404b66:	8b 9d d4 f2 ff ff    	mov    -0xd2c(%rbp),%ebx
  404b6c:	89 9d 50 f3 ff ff    	mov    %ebx,-0xcb0(%rbp)
  404b72:	85 c0                	test   %eax,%eax
  404b74:	0f 84 32 0d 00 00    	je     4058ac <main+0x17ec>
  404b7a:	80 bd 40 f3 ff ff 00 	cmpb   $0x0,-0xcc0(%rbp)
  404b81:	0f 84 f7 f9 ff ff    	je     40457e <main+0x4be>
  404b87:	8b 9d d4 f2 ff ff    	mov    -0xd2c(%rbp),%ebx
  404b8d:	89 d8                	mov    %ebx,%eax
  404b8f:	83 e0 fb             	and    $0xfffffffb,%eax
  404b92:	83 f8 08             	cmp    $0x8,%eax
  404b95:	0f 84 01 fe ff ff    	je     40499c <main+0x8dc>
  404b9b:	83 fb 10             	cmp    $0x10,%ebx
  404b9e:	0f 84 f8 fd ff ff    	je     40499c <main+0x8dc>
  404ba4:	e9 d5 f9 ff ff       	jmpq   40457e <main+0x4be>
  404ba9:	b9 40 00 00 00       	mov    $0x40,%ecx
  404bae:	84 c0                	test   %al,%al
  404bb0:	0f 85 1c ff ff ff    	jne    404ad2 <main+0xa12>
  404bb6:	48 8b 85 e8 f2 ff ff 	mov    -0xd18(%rbp),%rax
  404bbd:	be 18 00 00 00       	mov    $0x18,%esi
  404bc2:	31 d2                	xor    %edx,%edx
  404bc4:	48 f7 f6             	div    %rsi
  404bc7:	31 d2                	xor    %edx,%edx
  404bc9:	48 f7 f1             	div    %rcx
  404bcc:	48 0f af c1          	imul   %rcx,%rax
  404bd0:	48 89 85 58 f3 ff ff 	mov    %rax,-0xca8(%rbp)
  404bd7:	48 85 c0             	test   %rax,%rax
  404bda:	0f 84 66 18 00 00    	je     406446 <main+0x2386>
  404be0:	ba 03 00 00 00       	mov    $0x3,%edx
  404be5:	48 0f af d0          	imul   %rax,%rdx
  404be9:	44 0f b6 a5 00 f3 ff 	movzbl -0xd00(%rbp),%r12d
  404bf0:	ff 
  404bf1:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  404bf8:	00 
  404bf9:	48 8d 1c d5 00 00 00 	lea    0x0(,%rdx,8),%rbx
  404c00:	00 
  404c01:	44 89 e6             	mov    %r12d,%esi
  404c04:	48 89 9d e8 f2 ff ff 	mov    %rbx,-0xd18(%rbp)
  404c0b:	e8 c0 66 00 00       	callq  40b2d0 <_Z11alloc_bytesmb>
  404c10:	48 89 85 60 f3 ff ff 	mov    %rax,-0xca0(%rbp)
  404c17:	48 8b 85 58 f3 ff ff 	mov    -0xca8(%rbp),%rax
  404c1e:	44 89 e6             	mov    %r12d,%esi
  404c21:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  404c28:	00 
  404c29:	e8 a2 66 00 00       	callq  40b2d0 <_Z11alloc_bytesmb>
  404c2e:	80 bd dc f2 ff ff 00 	cmpb   $0x0,-0xd24(%rbp)
  404c35:	48 89 85 68 f3 ff ff 	mov    %rax,-0xc98(%rbp)
  404c3c:	74 1e                	je     404c5c <main+0xb9c>
  404c3e:	48 8b 85 58 f3 ff ff 	mov    -0xca8(%rbp),%rax
  404c45:	44 89 e6             	mov    %r12d,%esi
  404c48:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  404c4f:	00 
  404c50:	e8 7b 66 00 00       	callq  40b2d0 <_Z11alloc_bytesmb>
  404c55:	48 89 85 70 f3 ff ff 	mov    %rax,-0xc90(%rbp)
  404c5c:	48 8d 85 58 f3 ff ff 	lea    -0xca8(%rbp),%rax
  404c63:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  404c68:	48 8d 85 60 f3 ff ff 	lea    -0xca0(%rbp),%rax
  404c6f:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  404c75:	48 8d 85 68 f3 ff ff 	lea    -0xc98(%rbp),%rax
  404c7c:	c5 f9 7f 85 00 f6 ff 	vmovdqa %xmm0,-0xa00(%rbp)
  404c83:	ff 
  404c84:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  404c89:	48 8d 85 70 f3 ff ff 	lea    -0xc90(%rbp),%rax
  404c90:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  404c96:	31 c9                	xor    %ecx,%ecx
  404c98:	31 d2                	xor    %edx,%edx
  404c9a:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  404ca1:	bf 50 69 40 00       	mov    $0x406950,%edi
  404ca6:	c5 f9 7f 85 10 f6 ff 	vmovdqa %xmm0,-0x9f0(%rbp)
  404cad:	ff 
  404cae:	e8 ed e6 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  404cb3:	48 8d 85 a0 f3 ff ff 	lea    -0xc60(%rbp),%rax
  404cba:	4c 8d b5 c0 f3 ff ff 	lea    -0xc40(%rbp),%r14
  404cc1:	c4 e1 f9 6e f0       	vmovq  %rax,%xmm6
  404cc6:	c4 c3 c9 22 ee 01    	vpinsrq $0x1,%r14,%xmm6,%xmm5
  404ccc:	80 bd 42 f3 ff ff 00 	cmpb   $0x0,-0xcbe(%rbp)
  404cd3:	c5 f9 7f ad 20 f3 ff 	vmovdqa %xmm5,-0xce0(%rbp)
  404cda:	ff 
  404cdb:	0f 84 be 00 00 00    	je     404d9f <main+0xcdf>
  404ce1:	80 bd f0 f2 ff ff 00 	cmpb   $0x0,-0xd10(%rbp)
  404ce8:	0f 84 c1 17 00 00    	je     4064af <main+0x23ef>
  404cee:	48 8b 85 e8 f2 ff ff 	mov    -0xd18(%rbp),%rax
  404cf5:	48 25 00 fe ff ff    	and    $0xfffffffffffffe00,%rax
  404cfb:	48 89 85 80 f3 ff ff 	mov    %rax,-0xc80(%rbp)
  404d02:	48 3d ff 01 00 00    	cmp    $0x1ff,%rax
  404d08:	0f 86 7d 17 00 00    	jbe    40648b <main+0x23cb>
  404d0e:	48 63 b5 54 f3 ff ff 	movslq -0xcac(%rbp),%rsi
  404d15:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  404d1c:	48 0f af c6          	imul   %rsi,%rax
  404d20:	48 8d bd a0 f3 ff ff 	lea    -0xc60(%rbp),%rdi
  404d27:	48 c7 85 00 f6 ff ff 	movq   $0x0,-0xa00(%rbp)
  404d2e:	00 00 00 00 
  404d32:	48 89 85 e8 f2 ff ff 	mov    %rax,-0xd18(%rbp)
  404d39:	e8 72 99 00 00       	callq  40e6b0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_>
  404d3e:	48 63 b5 54 f3 ff ff 	movslq -0xcac(%rbp),%rsi
  404d45:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  404d4c:	4c 89 f7             	mov    %r14,%rdi
  404d4f:	48 c7 85 00 f6 ff ff 	movq   $0x0,-0xa00(%rbp)
  404d56:	00 00 00 00 
  404d5a:	e8 51 9c 00 00       	callq  40e9b0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd>
  404d5f:	0f b6 85 00 f3 ff ff 	movzbl -0xd00(%rbp),%eax
  404d66:	c5 f9 6f a5 20 f3 ff 	vmovdqa -0xce0(%rbp),%xmm4
  404d6d:	ff 
  404d6e:	88 85 18 f6 ff ff    	mov    %al,-0x9e8(%rbp)
  404d74:	31 c9                	xor    %ecx,%ecx
  404d76:	48 8d 85 80 f3 ff ff 	lea    -0xc80(%rbp),%rax
  404d7d:	31 d2                	xor    %edx,%edx
  404d7f:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  404d86:	bf 60 b3 40 00       	mov    $0x40b360,%edi
  404d8b:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  404d92:	c5 f9 7f a5 00 f6 ff 	vmovdqa %xmm4,-0xa00(%rbp)
  404d99:	ff 
  404d9a:	e8 01 e6 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  404d9f:	80 bd 41 f3 ff ff 00 	cmpb   $0x0,-0xcbf(%rbp)
  404da6:	0f 84 cf 16 00 00    	je     40647b <main+0x23bb>
  404dac:	83 bd 54 f3 ff ff 01 	cmpl   $0x1,-0xcac(%rbp)
  404db3:	0f 85 a5 f1 ff ff    	jne    403f5e <main.cold+0x262>
  404db9:	48 8b 85 e8 f2 ff ff 	mov    -0xd18(%rbp),%rax
  404dc0:	48 c1 e8 06          	shr    $0x6,%rax
  404dc4:	48 89 85 58 f3 ff ff 	mov    %rax,-0xca8(%rbp)
  404dcb:	48 83 f8 01          	cmp    $0x1,%rax
  404dcf:	0f 86 b6 16 00 00    	jbe    40648b <main+0x23cb>
  404dd5:	48 c1 e0 06          	shl    $0x6,%rax
  404dd9:	0f b6 b5 00 f3 ff ff 	movzbl -0xd00(%rbp),%esi
  404de0:	48 89 c7             	mov    %rax,%rdi
  404de3:	48 89 85 e8 f2 ff ff 	mov    %rax,-0xd18(%rbp)
  404dea:	e8 e1 64 00 00       	callq  40b2d0 <_Z11alloc_bytesmb>
  404def:	4c 8b a5 58 f3 ff ff 	mov    -0xca8(%rbp),%r12
  404df6:	48 89 85 c8 f2 ff ff 	mov    %rax,-0xd38(%rbp)
  404dfd:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
  404e04:	ff ff 0f 
  404e07:	49 39 c4             	cmp    %rax,%r12
  404e0a:	0f 87 ef 18 00 00    	ja     4066ff <main+0x263f>
  404e10:	4a 8d 1c e5 00 00 00 	lea    0x0(,%r12,8),%rbx
  404e17:	00 
  404e18:	4d 85 e4             	test   %r12,%r12
  404e1b:	0f 84 f9 16 00 00    	je     40651a <main+0x245a>
  404e21:	48 89 df             	mov    %rbx,%rdi
  404e24:	e8 77 e4 ff ff       	callq  4032a0 <_Znwm@plt>
  404e29:	49 89 c0             	mov    %rax,%r8
  404e2c:	49 ff cc             	dec    %r12
  404e2f:	48 8d 04 18          	lea    (%rax,%rbx,1),%rax
  404e33:	48 89 85 20 f3 ff ff 	mov    %rax,-0xce0(%rbp)
  404e3a:	49 c7 00 00 00 00 00 	movq   $0x0,(%r8)
  404e41:	49 8d 78 08          	lea    0x8(%r8),%rdi
  404e45:	74 20                	je     404e67 <main+0xda7>
  404e47:	48 8d 53 f8          	lea    -0x8(%rbx),%rdx
  404e4b:	31 f6                	xor    %esi,%esi
  404e4d:	4c 89 85 18 f3 ff ff 	mov    %r8,-0xce8(%rbp)
  404e54:	e8 27 e3 ff ff       	callq  403180 <memset@plt>
  404e59:	48 8b bd 20 f3 ff ff 	mov    -0xce0(%rbp),%rdi
  404e60:	4c 8b 85 18 f3 ff ff 	mov    -0xce8(%rbp),%r8
  404e67:	48 89 fa             	mov    %rdi,%rdx
  404e6a:	4c 29 c2             	sub    %r8,%rdx
  404e6d:	48 c1 ea 03          	shr    $0x3,%rdx
  404e71:	31 c0                	xor    %eax,%eax
  404e73:	eb 07                	jmp    404e7c <main+0xdbc>
  404e75:	49 89 04 c0          	mov    %rax,(%r8,%rax,8)
  404e79:	48 ff c0             	inc    %rax
  404e7c:	48 39 c2             	cmp    %rax,%rdx
  404e7f:	75 f4                	jne    404e75 <main+0xdb5>
  404e81:	48 c7 85 00 f6 ff ff 	movq   $0x7,-0xa00(%rbp)
  404e88:	07 00 00 00 
  404e8c:	b8 07 00 00 00       	mov    $0x7,%eax
  404e91:	b9 01 00 00 00       	mov    $0x1,%ecx
  404e96:	48 be 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rsi
  404e9d:	f4 51 58 
  404ea0:	48 89 c2             	mov    %rax,%rdx
  404ea3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404ea8:	48 89 d0             	mov    %rdx,%rax
  404eab:	48 c1 e8 3e          	shr    $0x3e,%rax
  404eaf:	48 31 d0             	xor    %rdx,%rax
  404eb2:	48 0f af c6          	imul   %rsi,%rax
  404eb6:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  404eba:	48 89 94 cd 00 f6 ff 	mov    %rdx,-0xa00(%rbp,%rcx,8)
  404ec1:	ff 
  404ec2:	48 ff c1             	inc    %rcx
  404ec5:	48 81 f9 38 01 00 00 	cmp    $0x138,%rcx
  404ecc:	75 da                	jne    404ea8 <main+0xde8>
  404ece:	48 89 fe             	mov    %rdi,%rsi
  404ed1:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  404ed8:	4c 89 c7             	mov    %r8,%rdi
  404edb:	4c 89 85 18 f3 ff ff 	mov    %r8,-0xce8(%rbp)
  404ee2:	48 c7 45 c0 38 01 00 	movq   $0x138,-0x40(%rbp)
  404ee9:	00 
  404eea:	e8 71 9f 00 00       	callq  40ee60 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>
  404eef:	48 8b 8d 58 f3 ff ff 	mov    -0xca8(%rbp),%rcx
  404ef6:	4c 8b 85 18 f3 ff ff 	mov    -0xce8(%rbp),%r8
  404efd:	31 f6                	xor    %esi,%esi
  404eff:	eb 2d                	jmp    404f2e <main+0xe6e>
  404f01:	48 ff c6             	inc    %rsi
  404f04:	b8 06 00 00 00       	mov    $0x6,%eax
  404f09:	c4 c2 f9 f7 7c f0 f8 	shlx   %rax,-0x8(%r8,%rsi,8),%rdi
  404f10:	31 d2                	xor    %edx,%edx
  404f12:	48 89 f0             	mov    %rsi,%rax
  404f15:	48 f7 f1             	div    %rcx
  404f18:	48 8b 9d c8 f2 ff ff 	mov    -0xd38(%rbp),%rbx
  404f1f:	49 8b 04 d0          	mov    (%r8,%rdx,8),%rax
  404f23:	48 c1 e0 06          	shl    $0x6,%rax
  404f27:	48 01 d8             	add    %rbx,%rax
  404f2a:	48 89 04 3b          	mov    %rax,(%rbx,%rdi,1)
  404f2e:	48 39 f1             	cmp    %rsi,%rcx
  404f31:	75 ce                	jne    404f01 <main+0xe41>
  404f33:	48 8b 85 c8 f2 ff ff 	mov    -0xd38(%rbp),%rax
  404f3a:	48 89 85 78 f3 ff ff 	mov    %rax,-0xc88(%rbp)
  404f41:	4d 85 c0             	test   %r8,%r8
  404f44:	74 19                	je     404f5f <main+0xe9f>
  404f46:	48 8b b5 20 f3 ff ff 	mov    -0xce0(%rbp),%rsi
  404f4d:	4c 89 c7             	mov    %r8,%rdi
  404f50:	4c 29 c6             	sub    %r8,%rsi
  404f53:	e8 58 e3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  404f58:	48 8b 8d 58 f3 ff ff 	mov    -0xca8(%rbp),%rcx
  404f5f:	31 c0                	xor    %eax,%eax
  404f61:	eb 0d                	jmp    404f70 <main+0xeb0>
  404f63:	48 8b 12             	mov    (%rdx),%rdx
  404f66:	48 ff c0             	inc    %rax
  404f69:	48 89 95 78 f3 ff ff 	mov    %rdx,-0xc88(%rbp)
  404f70:	48 8b 95 78 f3 ff ff 	mov    -0xc88(%rbp),%rdx
  404f77:	48 39 c1             	cmp    %rax,%rcx
  404f7a:	75 e7                	jne    404f63 <main+0xea3>
  404f7c:	48 39 95 c8 f2 ff ff 	cmp    %rdx,-0xd38(%rbp)
  404f83:	0f 94 c0             	sete   %al
  404f86:	20 85 4b f3 ff ff    	and    %al,-0xcb5(%rbp)
  404f8c:	48 8d 85 41 f3 ff ff 	lea    -0xcbf(%rbp),%rax
  404f93:	62 e1 fd 08 6e d0    	vmovq  %rax,%xmm18
  404f99:	48 8d 85 78 f3 ff ff 	lea    -0xc88(%rbp),%rax
  404fa0:	62 e3 ed 00 22 d0 01 	vpinsrq $0x1,%rax,%xmm18,%xmm18
  404fa7:	48 8d 85 3e f3 ff ff 	lea    -0xcc2(%rbp),%rax
  404fae:	62 e1 fd 08 6e c8    	vmovq  %rax,%xmm17
  404fb4:	48 8d 85 58 f3 ff ff 	lea    -0xca8(%rbp),%rax
  404fbb:	62 e3 f5 00 22 c8 01 	vpinsrq $0x1,%rax,%xmm17,%xmm17
  404fc2:	48 8d 85 60 f3 ff ff 	lea    -0xca0(%rbp),%rax
  404fc9:	62 e1 fd 08 6e c0    	vmovq  %rax,%xmm16
  404fcf:	48 8d 85 68 f3 ff ff 	lea    -0xc98(%rbp),%rax
  404fd6:	62 e3 fd 00 22 c0 01 	vpinsrq $0x1,%rax,%xmm16,%xmm16
  404fdd:	48 8d 85 70 f3 ff ff 	lea    -0xc90(%rbp),%rax
  404fe4:	c4 61 f9 6e f8       	vmovq  %rax,%xmm15
  404fe9:	48 8d 85 3f f3 ff ff 	lea    -0xcc1(%rbp),%rax
  404ff0:	c4 63 81 22 f8 01    	vpinsrq $0x1,%rax,%xmm15,%xmm15
  404ff6:	48 8d 85 43 f3 ff ff 	lea    -0xcbd(%rbp),%rax
  404ffd:	c4 61 f9 6e f0       	vmovq  %rax,%xmm14
  405002:	48 8d 85 44 f3 ff ff 	lea    -0xcbc(%rbp),%rax
  405009:	c4 63 89 22 f0 01    	vpinsrq $0x1,%rax,%xmm14,%xmm14
  40500f:	48 8d 85 42 f3 ff ff 	lea    -0xcbe(%rbp),%rax
  405016:	c4 61 f9 6e e8       	vmovq  %rax,%xmm13
  40501b:	48 8d 85 a0 f3 ff ff 	lea    -0xc60(%rbp),%rax
  405022:	c4 63 91 22 e8 01    	vpinsrq $0x1,%rax,%xmm13,%xmm13
  405028:	48 8d 85 80 f3 ff ff 	lea    -0xc80(%rbp),%rax
  40502f:	c4 61 f9 6e e0       	vmovq  %rax,%xmm12
  405034:	48 8d 85 90 f3 ff ff 	lea    -0xc70(%rbp),%rax
  40503b:	c4 61 f9 6e d8       	vmovq  %rax,%xmm11
  405040:	48 8d 85 4b f3 ff ff 	lea    -0xcb5(%rbp),%rax
  405047:	c4 63 a1 22 d8 01    	vpinsrq $0x1,%rax,%xmm11,%xmm11
  40504d:	48 8d 85 98 f3 ff ff 	lea    -0xc68(%rbp),%rax
  405054:	c4 61 f9 6e d0       	vmovq  %rax,%xmm10
  405059:	48 8d 85 40 f3 ff ff 	lea    -0xcc0(%rbp),%rax
  405060:	c4 63 a9 22 d0 01    	vpinsrq $0x1,%rax,%xmm10,%xmm10
  405066:	48 8d 85 50 f3 ff ff 	lea    -0xcb0(%rbp),%rax
  40506d:	c4 61 f9 6e c8       	vmovq  %rax,%xmm9
  405072:	48 8d 85 4c f3 ff ff 	lea    -0xcb4(%rbp),%rax
  405079:	c4 63 b1 22 c8 01    	vpinsrq $0x1,%rax,%xmm9,%xmm9
  40507f:	48 8d 85 47 f3 ff ff 	lea    -0xcb9(%rbp),%rax
  405086:	c4 61 f9 6e c0       	vmovq  %rax,%xmm8
  40508b:	48 8d 85 48 f3 ff ff 	lea    -0xcb8(%rbp),%rax
  405092:	c4 63 b9 22 c0 01    	vpinsrq $0x1,%rax,%xmm8,%xmm8
  405098:	48 8d 85 49 f3 ff ff 	lea    -0xcb7(%rbp),%rax
  40509f:	c4 e1 f9 6e f8       	vmovq  %rax,%xmm7
  4050a4:	48 8d 85 4a f3 ff ff 	lea    -0xcb6(%rbp),%rax
  4050ab:	c4 e3 c1 22 f8 01    	vpinsrq $0x1,%rax,%xmm7,%xmm7
  4050b1:	48 8d 85 45 f3 ff ff 	lea    -0xcbb(%rbp),%rax
  4050b8:	c4 e1 f9 6e f0       	vmovq  %rax,%xmm6
  4050bd:	48 8d 85 46 f3 ff ff 	lea    -0xcba(%rbp),%rax
  4050c4:	c4 e3 c9 22 f0 01    	vpinsrq $0x1,%rax,%xmm6,%xmm6
  4050ca:	0f b6 8d 45 f3 ff ff 	movzbl -0xcbb(%rbp),%ecx
  4050d1:	48 8d 85 88 f3 ff ff 	lea    -0xc78(%rbp),%rax
  4050d8:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
  4050dd:	48 8d 85 54 f3 ff ff 	lea    -0xcac(%rbp),%rax
  4050e4:	48 c7 85 88 f3 ff ff 	movq   $0x0,-0xc78(%rbp)
  4050eb:	00 00 00 00 
  4050ef:	c4 43 99 22 e6 01    	vpinsrq $0x1,%r14,%xmm12,%xmm12
  4050f5:	c4 e3 d1 22 e8 01    	vpinsrq $0x1,%rax,%xmm5,%xmm5
  4050fb:	84 c9                	test   %cl,%cl
  4050fd:	75 0d                	jne    40510c <main+0x104c>
  4050ff:	80 bd 46 f3 ff ff 00 	cmpb   $0x0,-0xcba(%rbp)
  405106:	0f 84 80 00 00 00    	je     40518c <main+0x10cc>
  40510c:	c5 fb 10 1d 24 b5 00 	vmovsd 0xb524(%rip),%xmm3        # 410638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  405113:	00 
  405114:	62 e1 ff 08 10 25 f2 	vmovsd 0xb4f2(%rip),%xmm20        # 410610 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x110>
  40511b:	b4 00 00 
  40511e:	c5 fa 10 15 0a b6 00 	vmovss 0xb60a(%rip),%xmm2        # 410730 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x230>
  405125:	00 
  405126:	c5 fa 10 0d 06 b6 00 	vmovss 0xb606(%rip),%xmm1        # 410734 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x234>
  40512d:	00 
  40512e:	62 e1 7e 08 10 1d 04 	vmovss 0xb604(%rip),%xmm19        # 41073c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x23c>
  405135:	b6 00 00 
  405138:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  40513c:	31 d2                	xor    %edx,%edx
  40513e:	ff c2                	inc    %edx
  405140:	84 c9                	test   %cl,%cl
  405142:	0f 84 22 0f 00 00    	je     40606a <main+0x1faa>
  405148:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  40514c:	c5 fa 2a c2          	vcvtsi2ss %edx,%xmm0,%xmm0
  405150:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  405155:	0f 1f 00             	nopl   (%rax)
  405158:	c4 e2 69 b9 c1       	vfmadd231ss %xmm1,%xmm2,%xmm0
  40515d:	ff c8                	dec    %eax
  40515f:	75 f7                	jne    405158 <main+0x1098>
  405161:	62 b1 7e 08 59 c3    	vmulss %xmm19,%xmm0,%xmm0
  405167:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  40516b:	c5 db 58 e0          	vaddsd %xmm0,%xmm4,%xmm4
  40516f:	83 fa 0c             	cmp    $0xc,%edx
  405172:	75 ca                	jne    40513e <main+0x107e>
  405174:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  405178:	c5 e3 2a 85 54 f3 ff 	vcvtsi2sdl -0xcac(%rbp),%xmm3,%xmm0
  40517f:	ff 
  405180:	c5 fb 59 c4          	vmulsd %xmm4,%xmm0,%xmm0
  405184:	c5 fb 11 85 88 f3 ff 	vmovsd %xmm0,-0xc78(%rbp)
  40518b:	ff 
  40518c:	80 bd 41 f3 ff ff 00 	cmpb   $0x0,-0xcbf(%rbp)
  405193:	48 c7 85 90 f3 ff ff 	movq   $0x0,-0xc70(%rbp)
  40519a:	00 00 00 00 
  40519e:	48 c7 85 98 f3 ff ff 	movq   $0x0,-0xc68(%rbp)
  4051a5:	00 00 00 00 
  4051a9:	62 e1 fd 08 7f 95 00 	vmovdqa64 %xmm18,-0xa00(%rbp)
  4051b0:	f6 ff ff 
  4051b3:	62 e1 fd 08 7f 8d 10 	vmovdqa64 %xmm17,-0x9f0(%rbp)
  4051ba:	f6 ff ff 
  4051bd:	62 e1 fd 08 7f 85 20 	vmovdqa64 %xmm16,-0x9e0(%rbp)
  4051c4:	f6 ff ff 
  4051c7:	c5 79 7f bd 30 f6 ff 	vmovdqa %xmm15,-0x9d0(%rbp)
  4051ce:	ff 
  4051cf:	c5 79 7f b5 40 f6 ff 	vmovdqa %xmm14,-0x9c0(%rbp)
  4051d6:	ff 
  4051d7:	c5 79 7f ad 50 f6 ff 	vmovdqa %xmm13,-0x9b0(%rbp)
  4051de:	ff 
  4051df:	c5 79 7f a5 60 f6 ff 	vmovdqa %xmm12,-0x9a0(%rbp)
  4051e6:	ff 
  4051e7:	c5 79 7f 9d 70 f6 ff 	vmovdqa %xmm11,-0x990(%rbp)
  4051ee:	ff 
  4051ef:	c5 79 7f 95 80 f6 ff 	vmovdqa %xmm10,-0x980(%rbp)
  4051f6:	ff 
  4051f7:	c5 79 7f 8d 90 f6 ff 	vmovdqa %xmm9,-0x970(%rbp)
  4051fe:	ff 
  4051ff:	c5 79 7f 85 a0 f6 ff 	vmovdqa %xmm8,-0x960(%rbp)
  405206:	ff 
  405207:	c5 f9 7f bd b0 f6 ff 	vmovdqa %xmm7,-0x950(%rbp)
  40520e:	ff 
  40520f:	c5 f9 7f b5 c0 f6 ff 	vmovdqa %xmm6,-0x940(%rbp)
  405216:	ff 
  405217:	c5 f9 7f ad d0 f6 ff 	vmovdqa %xmm5,-0x930(%rbp)
  40521e:	ff 
  40521f:	0f 84 be 12 00 00    	je     4064e3 <main+0x2423>
  405225:	80 bd 3e f3 ff ff 00 	cmpb   $0x0,-0xcc2(%rbp)
  40522c:	be af 00 41 00       	mov    $0x4100af,%esi
  405231:	0f 85 97 00 00 00    	jne    4052ce <main+0x120e>
  405237:	80 bd 3f f3 ff ff 00 	cmpb   $0x0,-0xcc1(%rbp)
  40523e:	be c8 00 41 00       	mov    $0x4100c8,%esi
  405243:	0f 85 85 00 00 00    	jne    4052ce <main+0x120e>
  405249:	80 bd 43 f3 ff ff 00 	cmpb   $0x0,-0xcbd(%rbp)
  405250:	be d8 00 41 00       	mov    $0x4100d8,%esi
  405255:	75 77                	jne    4052ce <main+0x120e>
  405257:	80 bd 44 f3 ff ff 00 	cmpb   $0x0,-0xcbc(%rbp)
  40525e:	be e4 00 41 00       	mov    $0x4100e4,%esi
  405263:	75 69                	jne    4052ce <main+0x120e>
  405265:	80 bd 42 f3 ff ff 00 	cmpb   $0x0,-0xcbe(%rbp)
  40526c:	be f3 00 41 00       	mov    $0x4100f3,%esi
  405271:	75 5b                	jne    4052ce <main+0x120e>
  405273:	80 bd 40 f3 ff ff 00 	cmpb   $0x0,-0xcc0(%rbp)
  40527a:	be ff 00 41 00       	mov    $0x4100ff,%esi
  40527f:	75 4d                	jne    4052ce <main+0x120e>
  405281:	80 bd 41 f3 ff ff 00 	cmpb   $0x0,-0xcbf(%rbp)
  405288:	be 0e 01 41 00       	mov    $0x41010e,%esi
  40528d:	75 3f                	jne    4052ce <main+0x120e>
  40528f:	80 bd 47 f3 ff ff 00 	cmpb   $0x0,-0xcb9(%rbp)
  405296:	be 21 01 41 00       	mov    $0x410121,%esi
  40529b:	75 31                	jne    4052ce <main+0x120e>
  40529d:	80 bd 48 f3 ff ff 00 	cmpb   $0x0,-0xcb8(%rbp)
  4052a4:	be 1c 01 41 00       	mov    $0x41011c,%esi
  4052a9:	75 23                	jne    4052ce <main+0x120e>
  4052ab:	80 bd 49 f3 ff ff 00 	cmpb   $0x0,-0xcb7(%rbp)
  4052b2:	be 2a 01 41 00       	mov    $0x41012a,%esi
  4052b7:	75 15                	jne    4052ce <main+0x120e>
  4052b9:	80 bd 4a f3 ff ff 00 	cmpb   $0x0,-0xcb6(%rbp)
  4052c0:	be 34 01 41 00       	mov    $0x410134,%esi
  4052c5:	b8 bc 00 41 00       	mov    $0x4100bc,%eax
  4052ca:	48 0f 44 f0          	cmove  %rax,%rsi
  4052ce:	48 8d bd 00 f4 ff ff 	lea    -0xc00(%rbp),%rdi
  4052d5:	e8 a6 5e 00 00       	callq  40b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4052da:	44 0a ad dc f2 ff ff 	or     -0xd24(%rbp),%r13b
  4052e1:	44 88 ad c7 f2 ff ff 	mov    %r13b,-0xd39(%rbp)
  4052e8:	be 37 04 41 00       	mov    $0x410437,%esi
  4052ed:	75 55                	jne    405344 <main+0x1284>
  4052ef:	80 bd 41 f3 ff ff 00 	cmpb   $0x0,-0xcbf(%rbp)
  4052f6:	75 4c                	jne    405344 <main+0x1284>
  4052f8:	80 bd 42 f3 ff ff 00 	cmpb   $0x0,-0xcbe(%rbp)
  4052ff:	75 43                	jne    405344 <main+0x1284>
  405301:	80 bd 47 f3 ff ff 00 	cmpb   $0x0,-0xcb9(%rbp)
  405308:	be f5 01 41 00       	mov    $0x4101f5,%esi
  40530d:	75 35                	jne    405344 <main+0x1284>
  40530f:	80 bd 4a f3 ff ff 00 	cmpb   $0x0,-0xcb6(%rbp)
  405316:	75 2c                	jne    405344 <main+0x1284>
  405318:	80 bd 48 f3 ff ff 00 	cmpb   $0x0,-0xcb8(%rbp)
  40531f:	be 4f 01 41 00       	mov    $0x41014f,%esi
  405324:	75 1e                	jne    405344 <main+0x1284>
  405326:	80 bd 49 f3 ff ff 00 	cmpb   $0x0,-0xcb7(%rbp)
  40532d:	75 15                	jne    405344 <main+0x1284>
  40532f:	80 bd 45 f3 ff ff 00 	cmpb   $0x0,-0xcbb(%rbp)
  405336:	be 4a 01 41 00       	mov    $0x41014a,%esi
  40533b:	b8 45 01 41 00       	mov    $0x410145,%eax
  405340:	48 0f 44 f0          	cmove  %rax,%rsi
  405344:	48 8d bd 20 f4 ff ff 	lea    -0xbe0(%rbp),%rdi
  40534b:	e8 30 5e 00 00       	callq  40b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  405350:	80 bd 47 f3 ff ff 00 	cmpb   $0x0,-0xcb9(%rbp)
  405357:	0f 85 70 11 00 00    	jne    4064cd <main+0x240d>
  40535d:	0f b6 9d 48 f3 ff ff 	movzbl -0xcb8(%rbp),%ebx
  405364:	84 db                	test   %bl,%bl
  405366:	0f 85 98 11 00 00    	jne    406504 <main+0x2444>
  40536c:	80 bd 49 f3 ff ff 00 	cmpb   $0x0,-0xcb7(%rbp)
  405373:	0f 85 7b 12 00 00    	jne    4065f4 <main+0x2534>
  405379:	0f b6 9d 4a f3 ff ff 	movzbl -0xcb6(%rbp),%ebx
  405380:	84 db                	test   %bl,%bl
  405382:	0f 85 db 11 00 00    	jne    406563 <main+0x24a3>
  405388:	80 bd 3f f3 ff ff 00 	cmpb   $0x0,-0xcc1(%rbp)
  40538f:	0f 85 b8 11 00 00    	jne    40654d <main+0x248d>
  405395:	80 bd 44 f3 ff ff 00 	cmpb   $0x0,-0xcbc(%rbp)
  40539c:	0f 85 ab 11 00 00    	jne    40654d <main+0x248d>
  4053a2:	0f b6 9d 42 f3 ff ff 	movzbl -0xcbe(%rbp),%ebx
  4053a9:	84 db                	test   %bl,%bl
  4053ab:	0f 85 59 12 00 00    	jne    40660a <main+0x254a>
  4053b1:	44 0f b6 a5 40 f3 ff 	movzbl -0xcc0(%rbp),%r12d
  4053b8:	ff 
  4053b9:	45 84 e4             	test   %r12b,%r12b
  4053bc:	0f 85 86 12 00 00    	jne    406648 <main+0x2588>
  4053c2:	80 bd 41 f3 ff ff 00 	cmpb   $0x0,-0xcbf(%rbp)
  4053c9:	be 54 01 41 00       	mov    $0x410154,%esi
  4053ce:	b8 70 01 41 00       	mov    $0x410170,%eax
  4053d3:	48 0f 44 f0          	cmove  %rax,%rsi
  4053d7:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  4053de:	e8 9d 5d 00 00       	callq  40b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4053e3:	0f b6 9d c7 f2 ff ff 	movzbl -0xd39(%rbp),%ebx
  4053ea:	84 db                	test   %bl,%bl
  4053ec:	75 1d                	jne    40540b <main+0x134b>
  4053ee:	0f b6 9d 40 f3 ff ff 	movzbl -0xcc0(%rbp),%ebx
  4053f5:	84 db                	test   %bl,%bl
  4053f7:	75 12                	jne    40540b <main+0x134b>
  4053f9:	0f b6 9d 41 f3 ff ff 	movzbl -0xcbf(%rbp),%ebx
  405400:	84 db                	test   %bl,%bl
  405402:	75 07                	jne    40540b <main+0x134b>
  405404:	0f b6 9d 42 f3 ff ff 	movzbl -0xcbe(%rbp),%ebx
  40540b:	48 8b 05 6e de 00 00 	mov    0xde6e(%rip),%rax        # 413280 <_ZSt4cout@@GLIBCXX_3.4>
  405412:	ba 0e 00 00 00       	mov    $0xe,%edx
  405417:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40541b:	be 7c 02 41 00       	mov    $0x41027c,%esi
  405420:	bf 80 32 41 00       	mov    $0x413280,%edi
  405425:	48 c7 80 88 32 41 00 	movq   $0xf,0x413288(%rax)
  40542c:	0f 00 00 00 
  405430:	e8 ab de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405435:	48 8b 95 08 f4 ff ff 	mov    -0xbf8(%rbp),%rdx
  40543c:	48 8b b5 00 f4 ff ff 	mov    -0xc00(%rbp),%rsi
  405443:	bf 80 32 41 00       	mov    $0x413280,%edi
  405448:	e8 93 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40544d:	ba 0c 00 00 00       	mov    $0xc,%edx
  405452:	be 8b 02 41 00       	mov    $0x41028b,%esi
  405457:	48 89 c7             	mov    %rax,%rdi
  40545a:	49 89 c4             	mov    %rax,%r12
  40545d:	e8 7e de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405462:	48 8b 95 e8 f3 ff ff 	mov    -0xc18(%rbp),%rdx
  405469:	48 8b b5 e0 f3 ff ff 	mov    -0xc20(%rbp),%rsi
  405470:	4c 89 e7             	mov    %r12,%rdi
  405473:	e8 68 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405478:	ba 0b 00 00 00       	mov    $0xb,%edx
  40547d:	be 98 02 41 00       	mov    $0x410298,%esi
  405482:	48 89 c7             	mov    %rax,%rdi
  405485:	49 89 c4             	mov    %rax,%r12
  405488:	e8 53 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40548d:	48 8b 95 28 f4 ff ff 	mov    -0xbd8(%rbp),%rdx
  405494:	48 8b b5 20 f4 ff ff 	mov    -0xbe0(%rbp),%rsi
  40549b:	4c 89 e7             	mov    %r12,%rdi
  40549e:	e8 3d de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054a3:	ba 14 00 00 00       	mov    $0x14,%edx
  4054a8:	be a4 02 41 00       	mov    $0x4102a4,%esi
  4054ad:	48 89 c7             	mov    %rax,%rdi
  4054b0:	49 89 c4             	mov    %rax,%r12
  4054b3:	e8 28 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054b8:	48 8b 95 48 f4 ff ff 	mov    -0xbb8(%rbp),%rdx
  4054bf:	48 8b b5 40 f4 ff ff 	mov    -0xbc0(%rbp),%rsi
  4054c6:	4c 89 e7             	mov    %r12,%rdi
  4054c9:	e8 12 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054ce:	ba 0c 00 00 00       	mov    $0xc,%edx
  4054d3:	be b9 02 41 00       	mov    $0x4102b9,%esi
  4054d8:	48 89 c7             	mov    %rax,%rdi
  4054db:	49 89 c4             	mov    %rax,%r12
  4054de:	e8 fd dd ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4054e3:	8b b5 54 f3 ff ff    	mov    -0xcac(%rbp),%esi
  4054e9:	4c 89 e7             	mov    %r12,%rdi
  4054ec:	e8 4f df ff ff       	callq  403440 <_ZNSolsEi@plt>
  4054f1:	ba 15 00 00 00       	mov    $0x15,%edx
  4054f6:	be c6 02 41 00       	mov    $0x4102c6,%esi
  4054fb:	48 89 c7             	mov    %rax,%rdi
  4054fe:	49 89 c4             	mov    %rax,%r12
  405501:	e8 da dd ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405506:	31 f6                	xor    %esi,%esi
  405508:	84 db                	test   %bl,%bl
  40550a:	48 0f 45 b5 e8 f2 ff 	cmovne -0xd18(%rbp),%rsi
  405511:	ff 
  405512:	4c 89 e7             	mov    %r12,%rdi
  405515:	e8 c6 dc ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  40551a:	ba 14 00 00 00       	mov    $0x14,%edx
  40551f:	be dc 02 41 00       	mov    $0x4102dc,%esi
  405524:	48 89 c7             	mov    %rax,%rdi
  405527:	49 89 c4             	mov    %rax,%r12
  40552a:	e8 b1 dd ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40552f:	48 8b b5 80 f3 ff ff 	mov    -0xc80(%rbp),%rsi
  405536:	4c 89 e7             	mov    %r12,%rdi
  405539:	e8 a2 dc ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  40553e:	ba 0d 00 00 00       	mov    $0xd,%edx
  405543:	be f1 02 41 00       	mov    $0x4102f1,%esi
  405548:	48 89 c7             	mov    %rax,%rdi
  40554b:	49 89 c4             	mov    %rax,%r12
  40554e:	e8 8d dd ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405553:	0f b6 b5 00 f3 ff ff 	movzbl -0xd00(%rbp),%esi
  40555a:	4c 89 e7             	mov    %r12,%rdi
  40555d:	e8 de de ff ff       	callq  403440 <_ZNSolsEi@plt>
  405562:	ba 05 00 00 00       	mov    $0x5,%edx
  405567:	be ff 02 41 00       	mov    $0x4102ff,%esi
  40556c:	48 89 c7             	mov    %rax,%rdi
  40556f:	49 89 c4             	mov    %rax,%r12
  405572:	e8 69 dd ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405577:	8b b5 4c f3 ff ff    	mov    -0xcb4(%rbp),%esi
  40557d:	4c 89 e7             	mov    %r12,%rdi
  405580:	e8 bb de ff ff       	callq  403440 <_ZNSolsEi@plt>
  405585:	ba 0a 00 00 00       	mov    $0xa,%edx
  40558a:	be 05 03 41 00       	mov    $0x410305,%esi
  40558f:	48 89 c7             	mov    %rax,%rdi
  405592:	49 89 c4             	mov    %rax,%r12
  405595:	e8 46 dd ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40559a:	80 bd 40 f3 ff ff 00 	cmpb   $0x0,-0xcc0(%rbp)
  4055a1:	75 0b                	jne    4055ae <main+0x14ee>
  4055a3:	31 f6                	xor    %esi,%esi
  4055a5:	80 bd 4a f3 ff ff 00 	cmpb   $0x0,-0xcb6(%rbp)
  4055ac:	74 06                	je     4055b4 <main+0x14f4>
  4055ae:	8b b5 50 f3 ff ff    	mov    -0xcb0(%rbp),%esi
  4055b4:	4c 89 e7             	mov    %r12,%rdi
  4055b7:	e8 84 de ff ff       	callq  403440 <_ZNSolsEi@plt>
  4055bc:	ba 0c 00 00 00       	mov    $0xc,%edx
  4055c1:	be 10 03 41 00       	mov    $0x410310,%esi
  4055c6:	48 89 c7             	mov    %rax,%rdi
  4055c9:	49 89 c4             	mov    %rax,%r12
  4055cc:	e8 0f dd ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4055d1:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  4055d8:	4c 89 fe             	mov    %r15,%rsi
  4055db:	48 89 c7             	mov    %rax,%rdi
  4055de:	48 89 85 10 f3 ff ff 	mov    %rax,-0xcf0(%rbp)
  4055e5:	e8 b6 89 00 00       	callq  40dfa0 <_ZNK8Counters4readEv>
  4055ea:	80 bd f0 f4 ff ff 00 	cmpb   $0x0,-0xb10(%rbp)
  4055f1:	be 7e 01 41 00       	mov    $0x41017e,%esi
  4055f6:	b8 83 01 41 00       	mov    $0x410183,%eax
  4055fb:	48 0f 44 f0          	cmove  %rax,%rsi
  4055ff:	4c 89 e7             	mov    %r12,%rdi
  405602:	e8 89 dc ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  405607:	48 89 c7             	mov    %rax,%rdi
  40560a:	be 1d 03 41 00       	mov    $0x41031d,%esi
  40560f:	e8 7c dc ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  405614:	c7 85 20 f3 ff ff 00 	movl   $0x0,-0xce0(%rbp)
  40561b:	00 00 00 
  40561e:	c5 fb 10 85 e0 f2 ff 	vmovsd -0xd20(%rbp),%xmm0
  405625:	ff 
  405626:	8b bd 20 f3 ff ff    	mov    -0xce0(%rbp),%edi
  40562c:	e8 ef 5d 00 00       	callq  40b420 <_Z6windowid>
  405631:	c5 fb 10 a5 e0 f2 ff 	vmovsd -0xd20(%rbp),%xmm4
  405638:	ff 
  405639:	48 89 c3             	mov    %rax,%rbx
  40563c:	c5 db 59 05 4c b0 00 	vmulsd 0xb04c(%rip),%xmm4,%xmm0        # 410690 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x190>
  405643:	00 
  405644:	48 89 85 08 f3 ff ff 	mov    %rax,-0xcf8(%rbp)
  40564b:	4c 89 fe             	mov    %r15,%rsi
  40564e:	48 8d bd a0 f4 ff ff 	lea    -0xb60(%rbp),%rdi
  405655:	62 f1 ff 08 78 c0    	vcvttsd2usi %xmm0,%rax
  40565b:	4c 8d 34 18          	lea    (%rax,%rbx,1),%r14
  40565f:	e8 3c 89 00 00       	callq  40dfa0 <_ZNK8Counters4readEv>
  405664:	48 8d 9d 60 f6 ff ff 	lea    -0x9a0(%rbp),%rbx
  40566b:	48 8d 95 68 f6 ff ff 	lea    -0x998(%rbp),%rdx
  405672:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  405677:	48 8d 9d 00 f6 ff ff 	lea    -0xa00(%rbp),%rbx
  40567e:	48 8d 85 58 f6 ff ff 	lea    -0x9a8(%rbp),%rax
  405685:	c4 e3 f9 22 c2 01    	vpinsrq $0x1,%rdx,%xmm0,%xmm0
  40568b:	c4 e1 f9 6e fb       	vmovq  %rbx,%xmm7
  405690:	48 8d 95 b0 f6 ff ff 	lea    -0x950(%rbp),%rdx
  405697:	c4 e3 c1 22 c8 01    	vpinsrq $0x1,%rax,%xmm7,%xmm1
  40569d:	c4 e1 f9 6e e2       	vmovq  %rdx,%xmm4
  4056a2:	48 8d 85 b8 f6 ff ff 	lea    -0x948(%rbp),%rax
  4056a9:	48 8b b5 10 f3 ff ff 	mov    -0xcf0(%rbp),%rsi
  4056b0:	c4 e3 75 38 e8 01    	vinserti128 $0x1,%xmm0,%ymm1,%ymm5
  4056b6:	c4 e3 d9 22 f0 01    	vpinsrq $0x1,%rax,%xmm4,%xmm6
  4056bc:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4056c0:	bf 01 00 00 00       	mov    $0x1,%edi
  4056c5:	c5 fd 7f ad 90 f2 ff 	vmovdqa %ymm5,-0xd70(%rbp)
  4056cc:	ff 
  4056cd:	c5 f9 7f b5 f0 f2 ff 	vmovdqa %xmm6,-0xd10(%rbp)
  4056d4:	ff 
  4056d5:	c5 f9 7f 85 f0 f4 ff 	vmovdqa %xmm0,-0xb10(%rbp)
  4056dc:	ff 
  4056dd:	c5 f8 77             	vzeroupper 
  4056e0:	e8 9b db ff ff       	callq  403280 <clock_gettime@plt>
  4056e5:	48 69 85 f0 f4 ff ff 	imul   $0x3b9aca00,-0xb10(%rbp),%rax
  4056ec:	00 ca 9a 3b 
  4056f0:	4c 89 bd 00 f3 ff ff 	mov    %r15,-0xd00(%rbp)
  4056f7:	45 31 ed             	xor    %r13d,%r13d
  4056fa:	48 03 85 f8 f4 ff ff 	add    -0xb08(%rbp),%rax
  405701:	48 89 85 18 f3 ff ff 	mov    %rax,-0xce8(%rbp)
  405708:	4c 8b bd 10 f3 ff ff 	mov    -0xcf0(%rbp),%r15
  40570f:	31 db                	xor    %ebx,%ebx
  405711:	45 31 e4             	xor    %r12d,%r12d
  405714:	e9 44 01 00 00       	jmpq   40585d <main+0x179d>
  405719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405720:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  405727:	80 38 00             	cmpb   $0x0,(%rax)
  40572a:	0f 85 b6 01 00 00    	jne    4058e6 <main+0x1826>
  405730:	48 8b 85 38 f6 ff ff 	mov    -0x9c8(%rbp),%rax
  405737:	80 38 00             	cmpb   $0x0,(%rax)
  40573a:	0f 85 0f 02 00 00    	jne    40594f <main+0x188f>
  405740:	48 8b 85 40 f6 ff ff 	mov    -0x9c0(%rbp),%rax
  405747:	80 38 00             	cmpb   $0x0,(%rax)
  40574a:	0f 85 b6 07 00 00    	jne    405f06 <main+0x1e46>
  405750:	48 8b 85 48 f6 ff ff 	mov    -0x9b8(%rbp),%rax
  405757:	0f b6 00             	movzbl (%rax),%eax
  40575a:	84 c0                	test   %al,%al
  40575c:	0f 85 f4 07 00 00    	jne    405f56 <main+0x1e96>
  405762:	48 8b 95 50 f6 ff ff 	mov    -0x9b0(%rbp),%rdx
  405769:	80 3a 00             	cmpb   $0x0,(%rdx)
  40576c:	0f 85 34 08 00 00    	jne    405fa6 <main+0x1ee6>
  405772:	48 8b 85 88 f6 ff ff 	mov    -0x978(%rbp),%rax
  405779:	0f b6 00             	movzbl (%rax),%eax
  40577c:	84 c0                	test   %al,%al
  40577e:	0f 84 34 02 00 00    	je     4059b8 <main+0x18f8>
  405784:	48 8b 95 98 f6 ff ff 	mov    -0x968(%rbp),%rdx
  40578b:	48 8b 85 90 f6 ff ff 	mov    -0x970(%rbp),%rax
  405792:	8b 3a                	mov    (%rdx),%edi
  405794:	48 8b 95 18 f6 ff ff 	mov    -0x9e8(%rbp),%rdx
  40579b:	8b 00                	mov    (%rax),%eax
  40579d:	48 8b 32             	mov    (%rdx),%rsi
  4057a0:	48 8b 95 20 f6 ff ff 	mov    -0x9e0(%rbp),%rdx
  4057a7:	48 8b 0a             	mov    (%rdx),%rcx
  4057aa:	48 8b 95 28 f6 ff ff 	mov    -0x9d8(%rbp),%rdx
  4057b1:	48 8b 12             	mov    (%rdx),%rdx
  4057b4:	c4 e1 f9 6e fa       	vmovq  %rdx,%xmm7
  4057b9:	c4 e3 c1 22 c1 01    	vpinsrq $0x1,%rcx,%xmm7,%xmm0
  4057bf:	83 f8 0c             	cmp    $0xc,%eax
  4057c2:	0f 84 fb 08 00 00    	je     4060c3 <main+0x2003>
  4057c8:	83 f8 10             	cmp    $0x10,%eax
  4057cb:	0f 84 c7 08 00 00    	je     406098 <main+0x1fd8>
  4057d1:	89 bd 08 f5 ff ff    	mov    %edi,-0xaf8(%rbp)
  4057d7:	48 89 b5 00 f5 ff ff 	mov    %rsi,-0xb00(%rbp)
  4057de:	48 89 8d f8 f4 ff ff 	mov    %rcx,-0xb08(%rbp)
  4057e5:	48 89 95 f0 f4 ff ff 	mov    %rdx,-0xb10(%rbp)
  4057ec:	31 c9                	xor    %ecx,%ecx
  4057ee:	31 d2                	xor    %edx,%edx
  4057f0:	4c 89 fe             	mov    %r15,%rsi
  4057f3:	bf 40 aa 40 00       	mov    $0x40aa40,%edi
  4057f8:	e8 a3 db ff ff       	callq  4033a0 <GOMP_parallel@plt>
  4057fd:	48 8b 85 98 f6 ff ff 	mov    -0x968(%rbp),%rax
  405804:	48 8b 95 18 f6 ff ff 	mov    -0x9e8(%rbp),%rdx
  40580b:	48 63 00             	movslq (%rax),%rax
  40580e:	48 0f af 02          	imul   (%rdx),%rax
  405812:	48 01 c0             	add    %rax,%rax
  405815:	0f 1f 00             	nopl   (%rax)
  405818:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40581c:	4c 89 fe             	mov    %r15,%rsi
  40581f:	bf 01 00 00 00       	mov    $0x1,%edi
  405824:	49 01 c4             	add    %rax,%r12
  405827:	4c 03 ad 98 f3 ff ff 	add    -0xc68(%rbp),%r13
  40582e:	c5 f9 7f 85 f0 f4 ff 	vmovdqa %xmm0,-0xb10(%rbp)
  405835:	ff 
  405836:	e8 45 da ff ff       	callq  403280 <clock_gettime@plt>
  40583b:	48 69 85 f0 f4 ff ff 	imul   $0x3b9aca00,-0xb10(%rbp),%rax
  405842:	00 ca 9a 3b 
  405846:	48 ff c3             	inc    %rbx
  405849:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40584d:	48 03 85 f8 f4 ff ff 	add    -0xb08(%rbp),%rax
  405854:	49 39 c6             	cmp    %rax,%r14
  405857:	0f 86 7d 03 00 00    	jbe    405bda <main+0x1b1a>
  40585d:	48 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%rax
  405864:	80 38 00             	cmpb   $0x0,(%rax)
  405867:	0f 84 b3 fe ff ff    	je     405720 <main+0x1660>
  40586d:	48 8b 8d 08 f6 ff ff 	mov    -0x9f8(%rbp),%rcx
  405874:	b8 00 00 01 00       	mov    $0x10000,%eax
  405879:	48 8b 11             	mov    (%rcx),%rdx
  40587c:	0f 1f 40 00          	nopl   0x0(%rax)
  405880:	48 8b 12             	mov    (%rdx),%rdx
  405883:	48 89 11             	mov    %rdx,(%rcx)
  405886:	ff c8                	dec    %eax
  405888:	75 f6                	jne    405880 <main+0x17c0>
  40588a:	b8 00 00 01 00       	mov    $0x10000,%eax
  40588f:	eb 87                	jmp    405818 <main+0x1758>
  405891:	8b 9d d4 f2 ff ff    	mov    -0xd2c(%rbp),%ebx
  405897:	c6 85 dc f2 ff ff 00 	movb   $0x0,-0xd24(%rbp)
  40589e:	89 9d 50 f3 ff ff    	mov    %ebx,-0xcb0(%rbp)
  4058a4:	85 c0                	test   %eax,%eax
  4058a6:	0f 85 db f2 ff ff    	jne    404b87 <main+0xac7>
  4058ac:	8b 9d d4 f2 ff ff    	mov    -0xd2c(%rbp),%ebx
  4058b2:	83 fb 18             	cmp    $0x18,%ebx
  4058b5:	0f 87 bf f2 ff ff    	ja     404b7a <main+0xaba>
  4058bb:	48 c7 c0 bf ef ff fe 	mov    $0xfffffffffeffefbf,%rax
  4058c2:	c4 e2 e2 f7 c0       	sarx   %rbx,%rax,%rax
  4058c7:	a8 01                	test   $0x1,%al
  4058c9:	0f 84 cd f0 ff ff    	je     40499c <main+0x8dc>
  4058cf:	e9 a6 f2 ff ff       	jmpq   404b7a <main+0xaba>
  4058d4:	84 c0                	test   %al,%al
  4058d6:	0f 85 f6 f1 ff ff    	jne    404ad2 <main+0xa12>
  4058dc:	b9 40 00 00 00       	mov    $0x40,%ecx
  4058e1:	e9 55 f2 ff ff       	jmpq   404b3b <main+0xa7b>
  4058e6:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  4058ed:	48 89 85 f0 f4 ff ff 	mov    %rax,-0xb10(%rbp)
  4058f4:	48 8d 85 18 f6 ff ff 	lea    -0x9e8(%rbp),%rax
  4058fb:	48 89 85 f8 f4 ff ff 	mov    %rax,-0xb08(%rbp)
  405902:	48 8d 85 20 f6 ff ff 	lea    -0x9e0(%rbp),%rax
  405909:	48 89 85 00 f5 ff ff 	mov    %rax,-0xb00(%rbp)
  405910:	48 8d 85 28 f6 ff ff 	lea    -0x9d8(%rbp),%rax
  405917:	48 89 85 08 f5 ff ff 	mov    %rax,-0xaf8(%rbp)
  40591e:	31 c9                	xor    %ecx,%ecx
  405920:	48 8d 85 30 f6 ff ff 	lea    -0x9d0(%rbp),%rax
  405927:	31 d2                	xor    %edx,%edx
  405929:	4c 89 fe             	mov    %r15,%rsi
  40592c:	bf f0 6a 40 00       	mov    $0x406af0,%edi
  405931:	48 89 85 10 f5 ff ff 	mov    %rax,-0xaf0(%rbp)
  405938:	e8 63 da ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40593d:	48 8b 85 18 f6 ff ff 	mov    -0x9e8(%rbp),%rax
  405944:	48 8b 00             	mov    (%rax),%rax
  405947:	48 01 c0             	add    %rax,%rax
  40594a:	e9 c9 fe ff ff       	jmpq   405818 <main+0x1758>
  40594f:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  405956:	48 89 85 f0 f4 ff ff 	mov    %rax,-0xb10(%rbp)
  40595d:	48 8d 85 18 f6 ff ff 	lea    -0x9e8(%rbp),%rax
  405964:	48 89 85 f8 f4 ff ff 	mov    %rax,-0xb08(%rbp)
  40596b:	48 8d 85 20 f6 ff ff 	lea    -0x9e0(%rbp),%rax
  405972:	48 89 85 00 f5 ff ff 	mov    %rax,-0xb00(%rbp)
  405979:	48 8d 85 28 f6 ff ff 	lea    -0x9d8(%rbp),%rax
  405980:	48 89 85 08 f5 ff ff 	mov    %rax,-0xaf8(%rbp)
  405987:	31 c9                	xor    %ecx,%ecx
  405989:	48 8d 85 30 f6 ff ff 	lea    -0x9d0(%rbp),%rax
  405990:	31 d2                	xor    %edx,%edx
  405992:	4c 89 fe             	mov    %r15,%rsi
  405995:	bf 00 a5 40 00       	mov    $0x40a500,%edi
  40599a:	48 89 85 10 f5 ff ff 	mov    %rax,-0xaf0(%rbp)
  4059a1:	e8 fa d9 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  4059a6:	48 8b 85 18 f6 ff ff 	mov    -0x9e8(%rbp),%rax
  4059ad:	48 8b 00             	mov    (%rax),%rax
  4059b0:	48 01 c0             	add    %rax,%rax
  4059b3:	e9 60 fe ff ff       	jmpq   405818 <main+0x1758>
  4059b8:	48 8d 95 a0 f6 ff ff 	lea    -0x960(%rbp),%rdx
  4059bf:	48 89 95 00 f5 ff ff 	mov    %rdx,-0xb00(%rbp)
  4059c6:	48 8d 95 a8 f6 ff ff 	lea    -0x958(%rbp),%rdx
  4059cd:	88 85 d4 f2 ff ff    	mov    %al,-0xd2c(%rbp)
  4059d3:	48 89 95 08 f5 ff ff 	mov    %rdx,-0xaf8(%rbp)
  4059da:	c5 f9 6f bd f0 f2 ff 	vmovdqa -0xd10(%rbp),%xmm7
  4059e1:	ff 
  4059e2:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  4059e9:	48 8d 95 c0 f6 ff ff 	lea    -0x940(%rbp),%rdx
  4059f0:	31 c9                	xor    %ecx,%ecx
  4059f2:	48 89 85 f0 f4 ff ff 	mov    %rax,-0xb10(%rbp)
  4059f9:	48 89 95 20 f5 ff ff 	mov    %rdx,-0xae0(%rbp)
  405a00:	48 8d 85 90 f6 ff ff 	lea    -0x970(%rbp),%rax
  405a07:	31 d2                	xor    %edx,%edx
  405a09:	4c 89 fe             	mov    %r15,%rsi
  405a0c:	bf 30 70 40 00       	mov    $0x407030,%edi
  405a11:	48 89 85 f8 f4 ff ff 	mov    %rax,-0xb08(%rbp)
  405a18:	c7 85 30 f5 ff ff 00 	movl   $0x0,-0xad0(%rbp)
  405a1f:	00 00 00 
  405a22:	48 c7 85 28 f5 ff ff 	movq   $0x0,-0xad8(%rbp)
  405a29:	00 00 00 00 
  405a2d:	c5 f9 7f bd 10 f5 ff 	vmovdqa %xmm7,-0xaf0(%rbp)
  405a34:	ff 
  405a35:	e8 66 d9 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  405a3a:	8b 95 30 f5 ff ff    	mov    -0xad0(%rbp),%edx
  405a40:	c5 fb 10 8d 28 f5 ff 	vmovsd -0xad8(%rbp),%xmm1
  405a47:	ff 
  405a48:	48 8b 8d 70 f6 ff ff 	mov    -0x990(%rbp),%rcx
  405a4f:	85 d2                	test   %edx,%edx
  405a51:	0f b6 85 d4 f2 ff ff 	movzbl -0xd2c(%rbp),%eax
  405a58:	c5 fb 11 09          	vmovsd %xmm1,(%rcx)
  405a5c:	75 21                	jne    405a7f <main+0x19bf>
  405a5e:	c5 f1 54 05 da ac 00 	vandpd 0xacda(%rip),%xmm1,%xmm0        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405a65:	00 
  405a66:	c5 fb 10 15 e2 ab 00 	vmovsd 0xabe2(%rip),%xmm2        # 410650 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  405a6d:	00 
  405a6e:	c5 f9 2e d0          	vucomisd %xmm0,%xmm2
  405a72:	72 0b                	jb     405a7f <main+0x19bf>
  405a74:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  405a78:	c5 f9 2f cc          	vcomisd %xmm4,%xmm1
  405a7c:	0f 97 c0             	seta   %al
  405a7f:	48 8b 95 78 f6 ff ff 	mov    -0x988(%rbp),%rdx
  405a86:	48 8b 8d c0 f6 ff ff 	mov    -0x940(%rbp),%rcx
  405a8d:	22 02                	and    (%rdx),%al
  405a8f:	88 02                	mov    %al,(%rdx)
  405a91:	80 39 00             	cmpb   $0x0,(%rcx)
  405a94:	75 0c                	jne    405aa2 <main+0x19e2>
  405a96:	48 8b b5 c8 f6 ff ff 	mov    -0x938(%rbp),%rsi
  405a9d:	80 3e 00             	cmpb   $0x0,(%rsi)
  405aa0:	74 3b                	je     405add <main+0x1a1d>
  405aa2:	48 8b b5 d0 f6 ff ff 	mov    -0x930(%rbp),%rsi
  405aa9:	c5 fb 10 1d 97 ab 00 	vmovsd 0xab97(%rip),%xmm3        # 410648 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x148>
  405ab0:	00 
  405ab1:	c5 fb 10 06          	vmovsd (%rsi),%xmm0
  405ab5:	c5 f3 5c d0          	vsubsd %xmm0,%xmm1,%xmm2
  405ab9:	c5 f9 54 05 7f ac 00 	vandpd 0xac7f(%rip),%xmm0,%xmm0        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405ac0:	00 
  405ac1:	c5 fb 59 c3          	vmulsd %xmm3,%xmm0,%xmm0
  405ac5:	c5 e9 54 15 73 ac 00 	vandpd 0xac73(%rip),%xmm2,%xmm2        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405acc:	00 
  405acd:	c5 fb 5f c3          	vmaxsd %xmm3,%xmm0,%xmm0
  405ad1:	c5 f9 2f c2          	vcomisd %xmm2,%xmm0
  405ad5:	40 0f 97 c6          	seta   %sil
  405ad9:	21 f0                	and    %esi,%eax
  405adb:	88 02                	mov    %al,(%rdx)
  405add:	48 8b bd b0 f6 ff ff 	mov    -0x950(%rbp),%rdi
  405ae4:	48 8b 85 d8 f6 ff ff 	mov    -0x928(%rbp),%rax
  405aeb:	80 3f 00             	cmpb   $0x0,(%rdi)
  405aee:	48 63 00             	movslq (%rax),%rax
  405af1:	74 3d                	je     405b30 <main+0x1a70>
  405af3:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  405af7:	c5 db 2a c0          	vcvtsi2sd %eax,%xmm4,%xmm0
  405afb:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  405b01:	c5 fb 59 05 e7 aa 00 	vmulsd 0xaae7(%rip),%xmm0,%xmm0        # 4105f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  405b08:	00 
  405b09:	c5 fb 59 05 4f ab 00 	vmulsd 0xab4f(%rip),%xmm0,%xmm0        # 410660 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  405b10:	00 
  405b11:	c5 fb 59 05 17 ab 00 	vmulsd 0xab17(%rip),%xmm0,%xmm0        # 410630 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  405b18:	00 
  405b19:	c5 fb 59 05 47 ab 00 	vmulsd 0xab47(%rip),%xmm0,%xmm0        # 410668 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  405b20:	00 
  405b21:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  405b25:	40 0f 9b c6          	setnp  %sil
  405b29:	41 0f 45 f0          	cmovne %r8d,%esi
  405b2d:	40 20 32             	and    %sil,(%rdx)
  405b30:	48 8b b5 b8 f6 ff ff 	mov    -0x948(%rbp),%rsi
  405b37:	80 3e 00             	cmpb   $0x0,(%rsi)
  405b3a:	74 41                	je     405b7d <main+0x1abd>
  405b3c:	4c 8b 85 90 f6 ff ff 	mov    -0x970(%rbp),%r8
  405b43:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  405b47:	c4 c1 4b 2a 00       	vcvtsi2sdl (%r8),%xmm6,%xmm0
  405b4c:	c5 cb 2a d0          	vcvtsi2sd %eax,%xmm6,%xmm2
  405b50:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  405b56:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  405b5a:	c5 fb 59 05 fe aa 00 	vmulsd 0xaafe(%rip),%xmm0,%xmm0        # 410660 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  405b61:	00 
  405b62:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  405b66:	c5 fb 59 05 fa aa 00 	vmulsd 0xaafa(%rip),%xmm0,%xmm0        # 410668 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  405b6d:	00 
  405b6e:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  405b72:	41 0f 9b c0          	setnp  %r8b
  405b76:	45 0f 45 c1          	cmovne %r9d,%r8d
  405b7a:	44 20 02             	and    %r8b,(%rdx)
  405b7d:	4c 8b 85 a0 f6 ff ff 	mov    -0x960(%rbp),%r8
  405b84:	ba 01 00 00 00       	mov    $0x1,%edx
  405b89:	48 c1 e2 22          	shl    $0x22,%rdx
  405b8d:	41 80 38 00          	cmpb   $0x0,(%r8)
  405b91:	75 3e                	jne    405bd1 <main+0x1b11>
  405b93:	4c 8b 85 a8 f6 ff ff 	mov    -0x958(%rbp),%r8
  405b9a:	ba 01 00 00 00       	mov    $0x1,%edx
  405b9f:	48 c1 e2 23          	shl    $0x23,%rdx
  405ba3:	41 80 38 00          	cmpb   $0x0,(%r8)
  405ba7:	75 28                	jne    405bd1 <main+0x1b11>
  405ba9:	ba 51 25 02 00       	mov    $0x22551,%edx
  405bae:	48 c1 e2 0f          	shl    $0xf,%rdx
  405bb2:	80 3f 00             	cmpb   $0x0,(%rdi)
  405bb5:	75 1a                	jne    405bd1 <main+0x1b11>
  405bb7:	80 3e 00             	cmpb   $0x0,(%rsi)
  405bba:	0f 84 d6 08 00 00    	je     406496 <main+0x23d6>
  405bc0:	48 8b 95 90 f6 ff ff 	mov    -0x970(%rbp),%rdx
  405bc7:	48 63 12             	movslq (%rdx),%rdx
  405bca:	48 69 d2 00 b0 71 0b 	imul   $0xb71b000,%rdx,%rdx
  405bd1:	48 0f af c2          	imul   %rdx,%rax
  405bd5:	e9 3e fc ff ff       	jmpq   405818 <main+0x1758>
  405bda:	48 8b b5 10 f3 ff ff 	mov    -0xcf0(%rbp),%rsi
  405be1:	bf 01 00 00 00       	mov    $0x1,%edi
  405be6:	4c 8b bd 00 f3 ff ff 	mov    -0xd00(%rbp),%r15
  405bed:	c5 f9 7f 85 f0 f4 ff 	vmovdqa %xmm0,-0xb10(%rbp)
  405bf4:	ff 
  405bf5:	e8 86 d6 ff ff       	callq  403280 <clock_gettime@plt>
  405bfa:	48 69 85 f0 f4 ff ff 	imul   $0x3b9aca00,-0xb10(%rbp),%rax
  405c01:	00 ca 9a 3b 
  405c05:	48 8b bd 10 f3 ff ff 	mov    -0xcf0(%rbp),%rdi
  405c0c:	4c 89 fe             	mov    %r15,%rsi
  405c0f:	48 03 85 f8 f4 ff ff 	add    -0xb08(%rbp),%rax
  405c16:	48 89 85 f0 f2 ff ff 	mov    %rax,-0xd10(%rbp)
  405c1d:	49 89 c6             	mov    %rax,%r14
  405c20:	e8 7b 83 00 00       	callq  40dfa0 <_ZNK8Counters4readEv>
  405c25:	0f b6 85 f0 f4 ff ff 	movzbl -0xb10(%rbp),%eax
  405c2c:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  405c30:	88 85 00 f3 ff ff    	mov    %al,-0xd00(%rbp)
  405c36:	4c 89 f0             	mov    %r14,%rax
  405c39:	48 2b 85 18 f3 ff ff 	sub    -0xce8(%rbp),%rax
  405c40:	62 f1 df 08 7b c0    	vcvtusi2sd %rax,%xmm4,%xmm0
  405c46:	83 bd 20 f3 ff ff 00 	cmpl   $0x0,-0xce0(%rbp)
  405c4d:	c5 fb 59 3d 03 aa 00 	vmulsd 0xaa03(%rip),%xmm0,%xmm7        # 410658 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  405c54:	00 
  405c55:	c4 c1 f9 7e fe       	vmovq  %xmm7,%r14
  405c5a:	74 1d                	je     405c79 <main+0x1bb9>
  405c5c:	ba 01 00 00 00       	mov    $0x1,%edx
  405c61:	48 8d b5 60 f4 ff ff 	lea    -0xba0(%rbp),%rsi
  405c68:	bf 80 32 41 00       	mov    $0x413280,%edi
  405c6d:	c6 85 60 f4 ff ff 2c 	movb   $0x2c,-0xba0(%rbp)
  405c74:	e8 67 d6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405c79:	ba 13 00 00 00       	mov    $0x13,%edx
  405c7e:	be 33 03 41 00       	mov    $0x410333,%esi
  405c83:	bf 80 32 41 00       	mov    $0x413280,%edi
  405c88:	e8 53 d6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405c8d:	c4 c1 f9 6e c6       	vmovq  %r14,%xmm0
  405c92:	bf 80 32 41 00       	mov    $0x413280,%edi
  405c97:	e8 54 d7 ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  405c9c:	ba 0c 00 00 00       	mov    $0xc,%edx
  405ca1:	be 47 03 41 00       	mov    $0x410347,%esi
  405ca6:	48 89 c7             	mov    %rax,%rdi
  405ca9:	49 89 c6             	mov    %rax,%r14
  405cac:	e8 2f d6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405cb1:	48 8b b5 18 f3 ff ff 	mov    -0xce8(%rbp),%rsi
  405cb8:	4c 89 f7             	mov    %r14,%rdi
  405cbb:	e8 20 d5 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405cc0:	ba 0a 00 00 00       	mov    $0xa,%edx
  405cc5:	be 54 03 41 00       	mov    $0x410354,%esi
  405cca:	48 89 c7             	mov    %rax,%rdi
  405ccd:	49 89 c6             	mov    %rax,%r14
  405cd0:	e8 0b d6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405cd5:	48 8b b5 f0 f2 ff ff 	mov    -0xd10(%rbp),%rsi
  405cdc:	4c 89 f7             	mov    %r14,%rdi
  405cdf:	e8 fc d4 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405ce4:	ba 14 00 00 00       	mov    $0x14,%edx
  405ce9:	be 5f 03 41 00       	mov    $0x41035f,%esi
  405cee:	48 89 c7             	mov    %rax,%rdi
  405cf1:	49 89 c6             	mov    %rax,%r14
  405cf4:	e8 e7 d5 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405cf9:	48 8b b5 08 f3 ff ff 	mov    -0xcf8(%rbp),%rsi
  405d00:	4c 89 f7             	mov    %r14,%rdi
  405d03:	e8 d8 d4 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405d08:	ba 0e 00 00 00       	mov    $0xe,%edx
  405d0d:	be 74 03 41 00       	mov    $0x410374,%esi
  405d12:	48 89 c7             	mov    %rax,%rdi
  405d15:	49 89 c6             	mov    %rax,%r14
  405d18:	e8 c3 d5 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405d1d:	31 f6                	xor    %esi,%esi
  405d1f:	80 bd 41 f3 ff ff 00 	cmpb   $0x0,-0xcbf(%rbp)
  405d26:	75 0b                	jne    405d33 <main+0x1c73>
  405d28:	80 bd 42 f3 ff ff 00 	cmpb   $0x0,-0xcbe(%rbp)
  405d2f:	49 0f 44 f4          	cmove  %r12,%rsi
  405d33:	4c 89 f7             	mov    %r14,%rdi
  405d36:	e8 a5 d4 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405d3b:	ba 11 00 00 00       	mov    $0x11,%edx
  405d40:	be 83 03 41 00       	mov    $0x410383,%esi
  405d45:	48 89 c7             	mov    %rax,%rdi
  405d48:	49 89 c6             	mov    %rax,%r14
  405d4b:	e8 90 d5 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405d50:	80 bd 42 f3 ff ff 00 	cmpb   $0x0,-0xcbe(%rbp)
  405d57:	75 20                	jne    405d79 <main+0x1cb9>
  405d59:	80 bd c7 f2 ff ff 00 	cmpb   $0x0,-0xd39(%rbp)
  405d60:	75 0c                	jne    405d6e <main+0x1cae>
  405d62:	45 31 ed             	xor    %r13d,%r13d
  405d65:	80 bd 40 f3 ff ff 00 	cmpb   $0x0,-0xcc0(%rbp)
  405d6c:	74 0b                	je     405d79 <main+0x1cb9>
  405d6e:	48 0f af 9d e8 f2 ff 	imul   -0xd18(%rbp),%rbx
  405d75:	ff 
  405d76:	49 89 dd             	mov    %rbx,%r13
  405d79:	4c 89 ee             	mov    %r13,%rsi
  405d7c:	4c 89 f7             	mov    %r14,%rdi
  405d7f:	e8 5c d4 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405d84:	ba 09 00 00 00       	mov    $0x9,%edx
  405d89:	be 95 03 41 00       	mov    $0x410395,%esi
  405d8e:	48 89 c7             	mov    %rax,%rdi
  405d91:	49 89 c5             	mov    %rax,%r13
  405d94:	e8 47 d5 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405d99:	31 c0                	xor    %eax,%eax
  405d9b:	80 bd 41 f3 ff ff 00 	cmpb   $0x0,-0xcbf(%rbp)
  405da2:	4c 0f 44 e0          	cmove  %rax,%r12
  405da6:	4c 89 ef             	mov    %r13,%rdi
  405da9:	4c 89 e6             	mov    %r12,%rsi
  405dac:	e8 2f d4 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405db1:	80 bd a0 f4 ff ff 00 	cmpb   $0x0,-0xb60(%rbp)
  405db8:	74 0d                	je     405dc7 <main+0x1d07>
  405dba:	80 bd 00 f3 ff ff 00 	cmpb   $0x0,-0xd00(%rbp)
  405dc1:	0f 85 2d 03 00 00    	jne    4060f4 <main+0x2034>
  405dc7:	ba 01 00 00 00       	mov    $0x1,%edx
  405dcc:	48 8d b5 80 f4 ff ff 	lea    -0xb80(%rbp),%rsi
  405dd3:	bf 80 32 41 00       	mov    $0x413280,%edi
  405dd8:	c6 85 80 f4 ff ff 7d 	movb   $0x7d,-0xb80(%rbp)
  405ddf:	e8 fc d4 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405de4:	ff 85 20 f3 ff ff    	incl   -0xce0(%rbp)
  405dea:	8b 85 20 f3 ff ff    	mov    -0xce0(%rbp),%eax
  405df0:	3b 85 d8 f2 ff ff    	cmp    -0xd28(%rbp),%eax
  405df6:	0f 8c 22 f8 ff ff    	jl     40561e <main+0x155e>
  405dfc:	80 bd dc f2 ff ff 00 	cmpb   $0x0,-0xd24(%rbp)
  405e03:	0f b6 9d 40 f3 ff ff 	movzbl -0xcc0(%rbp),%ebx
  405e0a:	75 11                	jne    405e1d <main+0x1d5d>
  405e0c:	80 bd c7 f2 ff ff 00 	cmpb   $0x0,-0xd39(%rbp)
  405e13:	75 08                	jne    405e1d <main+0x1d5d>
  405e15:	84 db                	test   %bl,%bl
  405e17:	0f 84 43 04 00 00    	je     406260 <main+0x21a0>
  405e1d:	48 8b 8d 58 f3 ff ff 	mov    -0xca8(%rbp),%rcx
  405e24:	b8 01 00 00 00       	mov    $0x1,%eax
  405e29:	48 89 ca             	mov    %rcx,%rdx
  405e2c:	48 c1 ea 0a          	shr    $0xa,%rdx
  405e30:	48 0f 44 d0          	cmove  %rax,%rdx
  405e34:	4c 8b 85 68 f3 ff ff 	mov    -0xc98(%rbp),%r8
  405e3b:	8b b5 4c f3 ff ff    	mov    -0xcb4(%rbp),%esi
  405e41:	4c 8b 8d 70 f3 ff ff 	mov    -0xc90(%rbp),%r9
  405e48:	48 8b bd 60 f3 ff ff 	mov    -0xca0(%rbp),%rdi
  405e4f:	44 0f b6 9d 4b f3 ff 	movzbl -0xcb5(%rbp),%r11d
  405e56:	ff 
  405e57:	c5 fb 10 35 e1 a7 00 	vmovsd 0xa7e1(%rip),%xmm6        # 410640 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  405e5e:	00 
  405e5f:	c5 fb 10 2d d1 a7 00 	vmovsd 0xa7d1(%rip),%xmm5        # 410638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  405e66:	00 
  405e67:	c5 7b 10 05 71 a7 00 	vmovsd 0xa771(%rip),%xmm8        # 4105e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  405e6e:	00 
  405e6f:	c5 fa 7e 1d c9 a8 00 	vmovq  0xa8c9(%rip),%xmm3        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405e76:	00 
  405e77:	c5 fb 10 25 d1 a7 00 	vmovsd 0xa7d1(%rip),%xmm4        # 410650 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  405e7e:	00 
  405e7f:	c5 fb 10 3d 11 a8 00 	vmovsd 0xa811(%rip),%xmm7        # 410698 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x198>
  405e86:	00 
  405e87:	44 0f b6 a5 dc f2 ff 	movzbl -0xd24(%rbp),%r12d
  405e8e:	ff 
  405e8f:	45 31 d2             	xor    %r10d,%r10d
  405e92:	31 c0                	xor    %eax,%eax
  405e94:	eb 44                	jmp    405eda <main+0x1e1a>
  405e96:	c4 c2 b9 b9 04 c1    	vfmadd231sd (%r9,%rax,8),%xmm8,%xmm0
  405e9c:	c5 fb 10 0c c7       	vmovsd (%rdi,%rax,8),%xmm1
  405ea1:	45 31 d2             	xor    %r10d,%r10d
  405ea4:	c5 f1 54 d3          	vandpd %xmm3,%xmm1,%xmm2
  405ea8:	c5 f9 2e e2          	vucomisd %xmm2,%xmm4
  405eac:	72 10                	jb     405ebe <main+0x1dfe>
  405eae:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
  405eb2:	c5 f9 54 c3          	vandpd %xmm3,%xmm0,%xmm0
  405eb6:	c5 f9 2f f8          	vcomisd %xmm0,%xmm7
  405eba:	41 0f 97 c2          	seta   %r10b
  405ebe:	c5 f3 58 8d 90 f3 ff 	vaddsd -0xc70(%rbp),%xmm1,%xmm1
  405ec5:	ff 
  405ec6:	45 21 d3             	and    %r10d,%r11d
  405ec9:	48 01 d0             	add    %rdx,%rax
  405ecc:	c5 fb 11 8d 90 f3 ff 	vmovsd %xmm1,-0xc70(%rbp)
  405ed3:	ff 
  405ed4:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  405eda:	48 39 c1             	cmp    %rax,%rcx
  405edd:	0f 86 71 03 00 00    	jbe    406254 <main+0x2194>
  405ee3:	c4 c1 7b 10 04 c0    	vmovsd (%r8,%rax,8),%xmm0
  405ee9:	45 84 e4             	test   %r12b,%r12b
  405eec:	75 a8                	jne    405e96 <main+0x1dd6>
  405eee:	84 db                	test   %bl,%bl
  405ef0:	74 aa                	je     405e9c <main+0x1ddc>
  405ef2:	45 31 d2             	xor    %r10d,%r10d
  405ef5:	eb 08                	jmp    405eff <main+0x1e3f>
  405ef7:	c4 e2 d1 99 c6       	vfmadd132sd %xmm6,%xmm5,%xmm0
  405efc:	41 ff c2             	inc    %r10d
  405eff:	44 39 d6             	cmp    %r10d,%esi
  405f02:	7f f3                	jg     405ef7 <main+0x1e37>
  405f04:	eb 96                	jmp    405e9c <main+0x1ddc>
  405f06:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  405f0d:	48 89 85 f0 f4 ff ff 	mov    %rax,-0xb10(%rbp)
  405f14:	48 8d 85 18 f6 ff ff 	lea    -0x9e8(%rbp),%rax
  405f1b:	48 89 85 f8 f4 ff ff 	mov    %rax,-0xb08(%rbp)
  405f22:	48 8d 85 20 f6 ff ff 	lea    -0x9e0(%rbp),%rax
  405f29:	48 89 85 00 f5 ff ff 	mov    %rax,-0xb00(%rbp)
  405f30:	31 c9                	xor    %ecx,%ecx
  405f32:	48 8d 85 28 f6 ff ff 	lea    -0x9d8(%rbp),%rax
  405f39:	31 d2                	xor    %edx,%edx
  405f3b:	4c 89 fe             	mov    %r15,%rsi
  405f3e:	bf c0 6c 40 00       	mov    $0x406cc0,%edi
  405f43:	48 89 85 08 f5 ff ff 	mov    %rax,-0xaf8(%rbp)
  405f4a:	e8 51 d4 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  405f4f:	31 c0                	xor    %eax,%eax
  405f51:	e9 c2 f8 ff ff       	jmpq   405818 <main+0x1758>
  405f56:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  405f5d:	48 89 85 f0 f4 ff ff 	mov    %rax,-0xb10(%rbp)
  405f64:	48 8d 85 18 f6 ff ff 	lea    -0x9e8(%rbp),%rax
  405f6b:	48 89 85 f8 f4 ff ff 	mov    %rax,-0xb08(%rbp)
  405f72:	48 8d 85 20 f6 ff ff 	lea    -0x9e0(%rbp),%rax
  405f79:	48 89 85 00 f5 ff ff 	mov    %rax,-0xb00(%rbp)
  405f80:	31 c9                	xor    %ecx,%ecx
  405f82:	48 8d 85 28 f6 ff ff 	lea    -0x9d8(%rbp),%rax
  405f89:	31 d2                	xor    %edx,%edx
  405f8b:	4c 89 fe             	mov    %r15,%rsi
  405f8e:	bf b0 a5 40 00       	mov    $0x40a5b0,%edi
  405f93:	48 89 85 08 f5 ff ff 	mov    %rax,-0xaf8(%rbp)
  405f9a:	e8 01 d4 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  405f9f:	31 c0                	xor    %eax,%eax
  405fa1:	e9 72 f8 ff ff       	jmpq   405818 <main+0x1758>
  405fa6:	c5 fd 6f b5 90 f2 ff 	vmovdqa -0xd70(%rbp),%ymm6
  405fad:	ff 
  405fae:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  405fb2:	31 c9                	xor    %ecx,%ecx
  405fb4:	31 d2                	xor    %edx,%edx
  405fb6:	4c 89 fe             	mov    %r15,%rsi
  405fb9:	bf 10 6e 40 00       	mov    $0x406e10,%edi
  405fbe:	88 85 d4 f2 ff ff    	mov    %al,-0xd2c(%rbp)
  405fc4:	48 c7 85 18 f5 ff ff 	movq   $0x0,-0xae8(%rbp)
  405fcb:	00 00 00 00 
  405fcf:	4c 89 b5 f0 f4 ff ff 	mov    %r14,-0xb10(%rbp)
  405fd6:	c5 f9 29 85 20 f5 ff 	vmovapd %xmm0,-0xae0(%rbp)
  405fdd:	ff 
  405fde:	c5 fe 7f b5 f8 f4 ff 	vmovdqu %ymm6,-0xb08(%rbp)
  405fe5:	ff 
  405fe6:	c5 f8 77             	vzeroupper 
  405fe9:	e8 b2 d3 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  405fee:	c5 fb 10 85 20 f5 ff 	vmovsd -0xae0(%rbp),%xmm0
  405ff5:	ff 
  405ff6:	c5 fb 10 1d 52 a6 00 	vmovsd 0xa652(%rip),%xmm3        # 410650 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  405ffd:	00 
  405ffe:	c5 f9 54 15 3a a7 00 	vandpd 0xa73a(%rip),%xmm0,%xmm2        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  406005:	00 
  406006:	48 8b 95 70 f6 ff ff 	mov    -0x990(%rbp),%rdx
  40600d:	c5 f9 2e da          	vucomisd %xmm2,%xmm3
  406011:	c5 fb 10 8d 28 f5 ff 	vmovsd -0xad8(%rbp),%xmm1
  406018:	ff 
  406019:	48 8b 8d 18 f5 ff ff 	mov    -0xae8(%rbp),%rcx
  406020:	0f b6 85 d4 f2 ff ff 	movzbl -0xd2c(%rbp),%eax
  406027:	c5 fb 11 02          	vmovsd %xmm0,(%rdx)
  40602b:	72 23                	jb     406050 <main+0x1f90>
  40602d:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
  406031:	c5 f1 54 0d 07 a7 00 	vandpd 0xa707(%rip),%xmm1,%xmm1        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  406038:	00 
  406039:	c5 f3 59 0d 17 a6 00 	vmulsd 0xa617(%rip),%xmm1,%xmm1        # 410658 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  406040:	00 
  406041:	c5 f9 54 05 f7 a6 00 	vandpd 0xa6f7(%rip),%xmm0,%xmm0        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  406048:	00 
  406049:	c5 f9 2f c8          	vcomisd %xmm0,%xmm1
  40604d:	0f 93 c0             	setae  %al
  406050:	48 8b 95 78 f6 ff ff 	mov    -0x988(%rbp),%rdx
  406057:	20 02                	and    %al,(%rdx)
  406059:	48 8b 85 80 f6 ff ff 	mov    -0x980(%rbp),%rax
  406060:	48 89 08             	mov    %rcx,(%rax)
  406063:	31 c0                	xor    %eax,%eax
  406065:	e9 ae f7 ff ff       	jmpq   405818 <main+0x1758>
  40606a:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  40606e:	c5 fb 2a c2          	vcvtsi2sd %edx,%xmm0,%xmm0
  406072:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  406077:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40607e:	00 00 
  406080:	c4 e2 e1 b9 85 08 f3 	vfmadd231sd -0xcf8(%rbp),%xmm3,%xmm0
  406087:	ff ff 
  406089:	ff c8                	dec    %eax
  40608b:	75 f3                	jne    406080 <main+0x1fc0>
  40608d:	62 b2 fd 08 b9 e4    	vfmadd231sd %xmm20,%xmm0,%xmm4
  406093:	e9 d7 f0 ff ff       	jmpq   40516f <main+0x10af>
  406098:	89 bd 08 f5 ff ff    	mov    %edi,-0xaf8(%rbp)
  40609e:	48 89 b5 00 f5 ff ff 	mov    %rsi,-0xb00(%rbp)
  4060a5:	31 c9                	xor    %ecx,%ecx
  4060a7:	31 d2                	xor    %edx,%edx
  4060a9:	4c 89 fe             	mov    %r15,%rsi
  4060ac:	bf 30 a8 40 00       	mov    $0x40a830,%edi
  4060b1:	c5 f9 7f 85 f0 f4 ff 	vmovdqa %xmm0,-0xb10(%rbp)
  4060b8:	ff 
  4060b9:	e8 e2 d2 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  4060be:	e9 3a f7 ff ff       	jmpq   4057fd <main+0x173d>
  4060c3:	89 bd 08 f5 ff ff    	mov    %edi,-0xaf8(%rbp)
  4060c9:	48 89 b5 00 f5 ff ff 	mov    %rsi,-0xb00(%rbp)
  4060d0:	48 89 8d f8 f4 ff ff 	mov    %rcx,-0xb08(%rbp)
  4060d7:	48 89 95 f0 f4 ff ff 	mov    %rdx,-0xb10(%rbp)
  4060de:	31 c9                	xor    %ecx,%ecx
  4060e0:	31 d2                	xor    %edx,%edx
  4060e2:	4c 89 fe             	mov    %r15,%rsi
  4060e5:	bf 50 a6 40 00       	mov    $0x40a650,%edi
  4060ea:	e8 b1 d2 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  4060ef:	e9 09 f7 ff ff       	jmpq   4057fd <main+0x173d>
  4060f4:	ba 0a 00 00 00       	mov    $0xa,%edx
  4060f9:	be 9f 03 41 00       	mov    $0x41039f,%esi
  4060fe:	bf 80 32 41 00       	mov    $0x413280,%edi
  406103:	e8 d8 d1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  406108:	c5 fb 10 85 f8 f4 ff 	vmovsd -0xb08(%rbp),%xmm0
  40610f:	ff 
  406110:	bf 80 32 41 00       	mov    $0x413280,%edi
  406115:	c5 fb 5c 85 a8 f4 ff 	vsubsd -0xb58(%rbp),%xmm0,%xmm0
  40611c:	ff 
  40611d:	e8 ce d2 ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  406122:	ba 13 00 00 00       	mov    $0x13,%edx
  406127:	be aa 03 41 00       	mov    $0x4103aa,%esi
  40612c:	48 89 c7             	mov    %rax,%rdi
  40612f:	49 89 c4             	mov    %rax,%r12
  406132:	e8 a9 d1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  406137:	c5 fb 10 8d 00 f5 ff 	vmovsd -0xb00(%rbp),%xmm1
  40613e:	ff 
  40613f:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  406143:	c5 f9 2f e1          	vcomisd %xmm1,%xmm4
  406147:	c5 fb 10 05 a9 a5 00 	vmovsd 0xa5a9(%rip),%xmm0        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  40614e:	00 
  40614f:	77 08                	ja     406159 <main+0x2099>
  406151:	c5 f3 5c 85 b0 f4 ff 	vsubsd -0xb50(%rbp),%xmm1,%xmm0
  406158:	ff 
  406159:	4c 89 e7             	mov    %r12,%rdi
  40615c:	e8 8f d2 ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  406161:	ba 11 00 00 00       	mov    $0x11,%edx
  406166:	be be 03 41 00       	mov    $0x4103be,%esi
  40616b:	48 89 c7             	mov    %rax,%rdi
  40616e:	49 89 c4             	mov    %rax,%r12
  406171:	e8 6a d1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  406176:	c5 fb 10 85 08 f5 ff 	vmovsd -0xaf8(%rbp),%xmm0
  40617d:	ff 
  40617e:	4c 89 e7             	mov    %r12,%rdi
  406181:	c5 fb 5d 85 b8 f4 ff 	vminsd -0xb48(%rbp),%xmm0,%xmm0
  406188:	ff 
  406189:	e8 62 d2 ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  40618e:	ba 13 00 00 00       	mov    $0x13,%edx
  406193:	be d0 03 41 00       	mov    $0x4103d0,%esi
  406198:	48 89 c7             	mov    %rax,%rdi
  40619b:	49 89 c4             	mov    %rax,%r12
  40619e:	e8 3d d1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4061a3:	8b b5 30 f5 ff ff    	mov    -0xad0(%rbp),%esi
  4061a9:	4c 89 e7             	mov    %r12,%rdi
  4061ac:	e8 8f d2 ff ff       	callq  403440 <_ZNSolsEi@plt>
  4061b1:	c5 fb 10 85 c0 f4 ff 	vmovsd -0xb40(%rbp),%xmm0
  4061b8:	ff 
  4061b9:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  4061bd:	c5 f9 2f c7          	vcomisd %xmm7,%xmm0
  4061c1:	c5 fb 10 8d 10 f5 ff 	vmovsd -0xaf0(%rbp),%xmm1
  4061c8:	ff 
  4061c9:	72 0a                	jb     4061d5 <main+0x2115>
  4061cb:	c5 f9 2f cf          	vcomisd %xmm7,%xmm1
  4061cf:	0f 83 79 02 00 00    	jae    40644e <main+0x238e>
  4061d5:	c5 fb 10 85 c8 f4 ff 	vmovsd -0xb38(%rbp),%xmm0
  4061dc:	ff 
  4061dd:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  4061e1:	c5 f9 2f c7          	vcomisd %xmm7,%xmm0
  4061e5:	c5 fb 10 8d 18 f5 ff 	vmovsd -0xae8(%rbp),%xmm1
  4061ec:	ff 
  4061ed:	72 0a                	jb     4061f9 <main+0x2139>
  4061ef:	c5 f9 2f cf          	vcomisd %xmm7,%xmm1
  4061f3:	0f 83 64 02 00 00    	jae    40645d <main+0x239d>
  4061f9:	c5 fb 10 85 d0 f4 ff 	vmovsd -0xb30(%rbp),%xmm0
  406200:	ff 
  406201:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  406205:	c5 f9 2f c7          	vcomisd %xmm7,%xmm0
  406209:	c5 fb 10 8d 20 f5 ff 	vmovsd -0xae0(%rbp),%xmm1
  406210:	ff 
  406211:	72 0a                	jb     40621d <main+0x215d>
  406213:	c5 f9 2f cf          	vcomisd %xmm7,%xmm1
  406217:	0f 83 4f 02 00 00    	jae    40646c <main+0x23ac>
  40621d:	c5 fb 10 85 d8 f4 ff 	vmovsd -0xb28(%rbp),%xmm0
  406224:	ff 
  406225:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  406229:	c5 f9 2f c4          	vcomisd %xmm4,%xmm0
  40622d:	c5 fb 10 8d 28 f5 ff 	vmovsd -0xad8(%rbp),%xmm1
  406234:	ff 
  406235:	0f 82 8c fb ff ff    	jb     405dc7 <main+0x1d07>
  40623b:	c5 f9 2f cc          	vcomisd %xmm4,%xmm1
  40623f:	0f 82 82 fb ff ff    	jb     405dc7 <main+0x1d07>
  406245:	bf 0c 04 41 00       	mov    $0x41040c,%edi
  40624a:	e8 c1 4e 00 00       	callq  40b110 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  40624f:	e9 73 fb ff ff       	jmpq   405dc7 <main+0x1d07>
  406254:	45 84 d2             	test   %r10b,%r10b
  406257:	74 07                	je     406260 <main+0x21a0>
  406259:	44 88 9d 4b f3 ff ff 	mov    %r11b,-0xcb5(%rbp)
  406260:	80 bd 41 f3 ff ff 00 	cmpb   $0x0,-0xcbf(%rbp)
  406267:	74 57                	je     4062c0 <main+0x2200>
  406269:	48 8b 85 78 f3 ff ff 	mov    -0xc88(%rbp),%rax
  406270:	48 8b 9d c8 f2 ff ff 	mov    -0xd38(%rbp),%rbx
  406277:	0f b6 8d 4b f3 ff ff 	movzbl -0xcb5(%rbp),%ecx
  40627e:	31 d2                	xor    %edx,%edx
  406280:	48 39 d8             	cmp    %rbx,%rax
  406283:	72 17                	jb     40629c <main+0x21dc>
  406285:	be 06 00 00 00       	mov    $0x6,%esi
  40628a:	c4 e2 c9 f7 95 58 f3 	shlx   %rsi,-0xca8(%rbp),%rdx
  406291:	ff ff 
  406293:	48 01 da             	add    %rbx,%rdx
  406296:	48 39 d0             	cmp    %rdx,%rax
  406299:	0f 92 c2             	setb   %dl
  40629c:	48 2b 85 c8 f2 ff ff 	sub    -0xd38(%rbp),%rax
  4062a3:	48 c1 f8 06          	sar    $0x6,%rax
  4062a7:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  4062ab:	c4 e1 cb 2a c0       	vcvtsi2sd %rax,%xmm6,%xmm0
  4062b0:	21 ca                	and    %ecx,%edx
  4062b2:	88 95 4b f3 ff ff    	mov    %dl,-0xcb5(%rbp)
  4062b8:	c5 fb 11 85 90 f3 ff 	vmovsd %xmm0,-0xc70(%rbp)
  4062bf:	ff 
  4062c0:	ba 0d 00 00 00       	mov    $0xd,%edx
  4062c5:	be 1d 04 41 00       	mov    $0x41041d,%esi
  4062ca:	bf 80 32 41 00       	mov    $0x413280,%edi
  4062cf:	e8 0c d0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4062d4:	c5 fb 10 85 90 f3 ff 	vmovsd -0xc70(%rbp),%xmm0
  4062db:	ff 
  4062dc:	bf 80 32 41 00       	mov    $0x413280,%edi
  4062e1:	e8 0a d1 ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  4062e6:	ba 09 00 00 00       	mov    $0x9,%edx
  4062eb:	be 2b 04 41 00       	mov    $0x41042b,%esi
  4062f0:	48 89 c7             	mov    %rax,%rdi
  4062f3:	49 89 c4             	mov    %rax,%r12
  4062f6:	e8 e5 cf ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4062fb:	80 bd 4b f3 ff ff 00 	cmpb   $0x0,-0xcb5(%rbp)
  406302:	be 7e 01 41 00       	mov    $0x41017e,%esi
  406307:	b8 83 01 41 00       	mov    $0x410183,%eax
  40630c:	48 0f 44 f0          	cmove  %rax,%rsi
  406310:	4c 89 e7             	mov    %r12,%rdi
  406313:	e8 78 cf ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  406318:	48 89 c7             	mov    %rax,%rdi
  40631b:	be 35 04 41 00       	mov    $0x410435,%esi
  406320:	e8 6b cf ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  406325:	48 8b bd 60 f3 ff ff 	mov    -0xca0(%rbp),%rdi
  40632c:	e8 cf cf ff ff       	callq  403300 <free@plt>
  406331:	48 8b bd 68 f3 ff ff 	mov    -0xc98(%rbp),%rdi
  406338:	e8 c3 cf ff ff       	callq  403300 <free@plt>
  40633d:	48 8b bd 70 f3 ff ff 	mov    -0xc90(%rbp),%rdi
  406344:	e8 b7 cf ff ff       	callq  403300 <free@plt>
  406349:	48 8b bd c8 f2 ff ff 	mov    -0xd38(%rbp),%rdi
  406350:	e8 ab cf ff ff       	callq  403300 <free@plt>
  406355:	48 8b 9d a0 f3 ff ff 	mov    -0xc60(%rbp),%rbx
  40635c:	4c 8b a5 a8 f3 ff ff 	mov    -0xc58(%rbp),%r12
  406363:	eb 0c                	jmp    406371 <main+0x22b1>
  406365:	48 8b 3b             	mov    (%rbx),%rdi
  406368:	48 83 c3 08          	add    $0x8,%rbx
  40636c:	e8 8f cf ff ff       	callq  403300 <free@plt>
  406371:	49 39 dc             	cmp    %rbx,%r12
  406374:	75 ef                	jne    406365 <main+0x22a5>
  406376:	44 0f b6 a5 4b f3 ff 	movzbl -0xcb5(%rbp),%r12d
  40637d:	ff 
  40637e:	48 8b bd 40 f4 ff ff 	mov    -0xbc0(%rbp),%rdi
  406385:	41 83 f4 01          	xor    $0x1,%r12d
  406389:	48 8d 85 50 f4 ff ff 	lea    -0xbb0(%rbp),%rax
  406390:	45 0f b6 e4          	movzbl %r12b,%r12d
  406394:	48 39 c7             	cmp    %rax,%rdi
  406397:	74 10                	je     4063a9 <main+0x22e9>
  406399:	48 8b 85 50 f4 ff ff 	mov    -0xbb0(%rbp),%rax
  4063a0:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4063a4:	e8 07 cf ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4063a9:	48 8b bd 20 f4 ff ff 	mov    -0xbe0(%rbp),%rdi
  4063b0:	48 8d 85 30 f4 ff ff 	lea    -0xbd0(%rbp),%rax
  4063b7:	48 39 c7             	cmp    %rax,%rdi
  4063ba:	74 10                	je     4063cc <main+0x230c>
  4063bc:	48 8b 85 30 f4 ff ff 	mov    -0xbd0(%rbp),%rax
  4063c3:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4063c7:	e8 e4 ce ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4063cc:	48 8b bd 00 f4 ff ff 	mov    -0xc00(%rbp),%rdi
  4063d3:	48 8d 85 10 f4 ff ff 	lea    -0xbf0(%rbp),%rax
  4063da:	48 39 c7             	cmp    %rax,%rdi
  4063dd:	74 10                	je     4063ef <main+0x232f>
  4063df:	48 8b 85 10 f4 ff ff 	mov    -0xbf0(%rbp),%rax
  4063e6:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4063ea:	e8 c1 ce ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4063ef:	48 8b bd c0 f3 ff ff 	mov    -0xc40(%rbp),%rdi
  4063f6:	48 8b b5 d0 f3 ff ff 	mov    -0xc30(%rbp),%rsi
  4063fd:	48 29 fe             	sub    %rdi,%rsi
  406400:	48 85 ff             	test   %rdi,%rdi
  406403:	74 05                	je     40640a <main+0x234a>
  406405:	e8 a6 ce ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40640a:	48 8b bd a0 f3 ff ff 	mov    -0xc60(%rbp),%rdi
  406411:	48 85 ff             	test   %rdi,%rdi
  406414:	74 0f                	je     406425 <main+0x2365>
  406416:	48 8b b5 b0 f3 ff ff 	mov    -0xc50(%rbp),%rsi
  40641d:	48 29 fe             	sub    %rdi,%rsi
  406420:	e8 8b ce ff ff       	callq  4032b0 <_ZdlPvm@plt>
  406425:	4c 89 ff             	mov    %r15,%rdi
  406428:	e8 93 7f 00 00       	callq  40e3c0 <_ZN8CountersD1Ev>
  40642d:	e9 52 e1 ff ff       	jmpq   404584 <main+0x4c4>
  406432:	48 85 f6             	test   %rsi,%rsi
  406435:	0f 85 ac e6 ff ff    	jne    404ae7 <main+0xa27>
  40643b:	48 c7 85 58 f3 ff ff 	movq   $0x0,-0xca8(%rbp)
  406442:	00 00 00 00 
  406446:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  40644c:	eb bc                	jmp    40640a <main+0x234a>
  40644e:	bf e4 03 41 00       	mov    $0x4103e4,%edi
  406453:	e8 b8 4c 00 00       	callq  40b110 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  406458:	e9 78 fd ff ff       	jmpq   4061d5 <main+0x2115>
  40645d:	bf f1 03 41 00       	mov    $0x4103f1,%edi
  406462:	e8 a9 4c 00 00       	callq  40b110 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  406467:	e9 8d fd ff ff       	jmpq   4061f9 <main+0x2139>
  40646c:	bf fc 03 41 00       	mov    $0x4103fc,%edi
  406471:	e8 9a 4c 00 00       	callq  40b110 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>
  406476:	e9 a2 fd ff ff       	jmpq   40621d <main+0x215d>
  40647b:	48 c7 85 c8 f2 ff ff 	movq   $0x0,-0xd38(%rbp)
  406482:	00 00 00 00 
  406486:	e9 01 eb ff ff       	jmpq   404f8c <main+0xecc>
  40648b:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  406491:	e9 59 ff ff ff       	jmpq   4063ef <main+0x232f>
  406496:	80 39 01             	cmpb   $0x1,(%rcx)
  406499:	48 19 d2             	sbb    %rdx,%rdx
  40649c:	48 81 e2 00 f0 aa dd 	and    $0xffffffffddaaf000,%rdx
  4064a3:	48 81 c2 00 20 aa 44 	add    $0x44aa2000,%rdx
  4064aa:	e9 22 f7 ff ff       	jmpq   405bd1 <main+0x1b11>
  4064af:	48 63 8d 54 f3 ff ff 	movslq -0xcac(%rbp),%rcx
  4064b6:	48 8b 85 e8 f2 ff ff 	mov    -0xd18(%rbp),%rax
  4064bd:	31 d2                	xor    %edx,%edx
  4064bf:	48 f7 f1             	div    %rcx
  4064c2:	48 25 00 fe ff ff    	and    $0xfffffffffffffe00,%rax
  4064c8:	e9 2e e8 ff ff       	jmpq   404cfb <main+0xc3b>
  4064cd:	be fa 01 41 00       	mov    $0x4101fa,%esi
  4064d2:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  4064d9:	e8 a2 4c 00 00       	callq  40b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4064de:	e9 00 ef ff ff       	jmpq   4053e3 <main+0x1323>
  4064e3:	31 f6                	xor    %esi,%esi
  4064e5:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  4064ec:	e8 bf 46 00 00       	callq  40abb0 <_ZZ4mainENKUlmE_clEm>
  4064f1:	31 f6                	xor    %esi,%esi
  4064f3:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  4064fa:	e8 b1 46 00 00       	callq  40abb0 <_ZZ4mainENKUlmE_clEm>
  4064ff:	e9 21 ed ff ff       	jmpq   405225 <main+0x1165>
  406504:	be 0d 02 41 00       	mov    $0x41020d,%esi
  406509:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  406510:	e8 6b 4c 00 00       	callq  40b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  406515:	e9 c9 ee ff ff       	jmpq   4053e3 <main+0x1323>
  40651a:	48 c7 85 20 f3 ff ff 	movq   $0x0,-0xce0(%rbp)
  406521:	00 00 00 00 
  406525:	45 31 c0             	xor    %r8d,%r8d
  406528:	31 ff                	xor    %edi,%edi
  40652a:	e9 38 e9 ff ff       	jmpq   404e67 <main+0xda7>
  40652f:	83 bd d4 f2 ff ff 00 	cmpl   $0x0,-0xd2c(%rbp)
  406536:	0f 85 55 f3 ff ff    	jne    405891 <main+0x17d1>
  40653c:	c6 85 dc f2 ff ff 00 	movb   $0x0,-0xd24(%rbp)
  406543:	b8 08 00 00 00       	mov    $0x8,%eax
  406548:	e9 49 e4 ff ff       	jmpq   404996 <main+0x8d6>
  40654d:	be 48 02 41 00       	mov    $0x410248,%esi
  406552:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  406559:	e8 22 4c 00 00       	callq  40b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40655e:	e9 80 ee ff ff       	jmpq   4053e3 <main+0x1323>
  406563:	8b b5 50 f3 ff ff    	mov    -0xcb0(%rbp),%esi
  406569:	48 8d bd 60 f4 ff ff 	lea    -0xba0(%rbp),%rdi
  406570:	e8 bb 75 00 00       	callq  40db30 <_ZNSt7__cxx119to_stringEi>
  406575:	48 8d 95 60 f4 ff ff 	lea    -0xba0(%rbp),%rdx
  40657c:	be 3b 02 41 00       	mov    $0x41023b,%esi
  406581:	48 8d bd 80 f4 ff ff 	lea    -0xb80(%rbp),%rdi
  406588:	e8 03 80 00 00       	callq  40e590 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>
  40658d:	ba 33 02 41 00       	mov    $0x410233,%edx
  406592:	48 8d b5 80 f4 ff ff 	lea    -0xb80(%rbp),%rsi
  406599:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  4065a0:	e8 6b 80 00 00       	callq  40e610 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
  4065a5:	48 8b bd 80 f4 ff ff 	mov    -0xb80(%rbp),%rdi
  4065ac:	48 8d 85 90 f4 ff ff 	lea    -0xb70(%rbp),%rax
  4065b3:	48 39 c7             	cmp    %rax,%rdi
  4065b6:	74 10                	je     4065c8 <main+0x2508>
  4065b8:	48 8b 85 90 f4 ff ff 	mov    -0xb70(%rbp),%rax
  4065bf:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4065c3:	e8 e8 cc ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4065c8:	48 8b bd 60 f4 ff ff 	mov    -0xba0(%rbp),%rdi
  4065cf:	48 8d 85 70 f4 ff ff 	lea    -0xb90(%rbp),%rax
  4065d6:	48 39 c7             	cmp    %rax,%rdi
  4065d9:	0f 84 04 ee ff ff    	je     4053e3 <main+0x1323>
  4065df:	48 8b 85 70 f4 ff ff 	mov    -0xb90(%rbp),%rax
  4065e6:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4065ea:	e8 c1 cc ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4065ef:	e9 ef ed ff ff       	jmpq   4053e3 <main+0x1323>
  4065f4:	be 25 02 41 00       	mov    $0x410225,%esi
  4065f9:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  406600:	e8 7b 4b 00 00       	callq  40b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  406605:	e9 d9 ed ff ff       	jmpq   4053e3 <main+0x1323>
  40660a:	be 90 04 41 00       	mov    $0x410490,%esi
  40660f:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  406616:	e8 65 4b 00 00       	callq  40b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40661b:	e9 c3 ed ff ff       	jmpq   4053e3 <main+0x1323>
  406620:	bf c2 01 41 00       	mov    $0x4101c2,%edi
  406625:	e8 56 cd ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  40662a:	bf c2 01 41 00       	mov    $0x4101c2,%edi
  40662f:	e8 6c cb ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  406634:	bf b1 01 41 00       	mov    $0x4101b1,%edi
  406639:	e8 42 cd ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  40663e:	bf b1 01 41 00       	mov    $0x4101b1,%edi
  406643:	e8 58 cb ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  406648:	8b b5 50 f3 ff ff    	mov    -0xcb0(%rbp),%esi
  40664e:	48 8d bd a0 f4 ff ff 	lea    -0xb60(%rbp),%rdi
  406655:	e8 d6 74 00 00       	callq  40db30 <_ZNSt7__cxx119to_stringEi>
  40665a:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  406661:	48 8d 95 a0 f4 ff ff 	lea    -0xb60(%rbp),%rdx
  406668:	be 60 02 41 00       	mov    $0x410260,%esi
  40666d:	48 89 c7             	mov    %rax,%rdi
  406670:	48 89 85 10 f3 ff ff 	mov    %rax,-0xcf0(%rbp)
  406677:	e8 14 7f 00 00       	callq  40e590 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>
  40667c:	48 8b b5 10 f3 ff ff 	mov    -0xcf0(%rbp),%rsi
  406683:	ba 68 02 41 00       	mov    $0x410268,%edx
  406688:	48 8d bd 40 f4 ff ff 	lea    -0xbc0(%rbp),%rdi
  40668f:	e8 7c 7f 00 00       	callq  40e610 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
  406694:	48 8b bd f0 f4 ff ff 	mov    -0xb10(%rbp),%rdi
  40669b:	48 8d 85 00 f5 ff ff 	lea    -0xb00(%rbp),%rax
  4066a2:	48 39 c7             	cmp    %rax,%rdi
  4066a5:	74 10                	je     4066b7 <main+0x25f7>
  4066a7:	48 8b 85 00 f5 ff ff 	mov    -0xb00(%rbp),%rax
  4066ae:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4066b2:	e8 f9 cb ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4066b7:	48 8b bd a0 f4 ff ff 	mov    -0xb60(%rbp),%rdi
  4066be:	48 8d 85 b0 f4 ff ff 	lea    -0xb50(%rbp),%rax
  4066c5:	48 39 c7             	cmp    %rax,%rdi
  4066c8:	0f 84 15 ed ff ff    	je     4053e3 <main+0x1323>
  4066ce:	48 8b 85 b0 f4 ff ff 	mov    -0xb50(%rbp),%rax
  4066d5:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4066d9:	e8 d2 cb ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4066de:	e9 00 ed ff ff       	jmpq   4053e3 <main+0x1323>
  4066e3:	bf 38 04 41 00       	mov    $0x410438,%edi
  4066e8:	e8 03 cb ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4066ed:	bf 38 04 41 00       	mov    $0x410438,%edi
  4066f2:	e8 f9 ca ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4066f7:	4c 89 ef             	mov    %r13,%rdi
  4066fa:	e9 da db ff ff       	jmpq   4042d9 <main+0x219>
  4066ff:	bf b8 04 41 00       	mov    $0x4104b8,%edi
  406704:	e8 57 ca ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  406709:	8b 9d d4 f2 ff ff    	mov    -0xd2c(%rbp),%ebx
  40670f:	89 9d 50 f3 ff ff    	mov    %ebx,-0xcb0(%rbp)
  406715:	85 c0                	test   %eax,%eax
  406717:	0f 85 61 de ff ff    	jne    40457e <main+0x4be>
  40671d:	45 31 ed             	xor    %r13d,%r13d
  406720:	e9 87 f1 ff ff       	jmpq   4058ac <main+0x17ec>
  406725:	49 89 c5             	mov    %rax,%r13
  406728:	49 89 d6             	mov    %rdx,%r14
  40672b:	e9 c1 d6 ff ff       	jmpq   403df1 <main.cold+0xf5>
  406730:	49 89 c5             	mov    %rax,%r13
  406733:	49 89 d6             	mov    %rdx,%r14
  406736:	c5 f8 77             	vzeroupper 
  406739:	e9 b8 d6 ff ff       	jmpq   403df6 <main.cold+0xfa>
  40673e:	48 89 c3             	mov    %rax,%rbx
  406741:	49 89 d6             	mov    %rdx,%r14
  406744:	c5 f8 77             	vzeroupper 
  406747:	e9 e5 d5 ff ff       	jmpq   403d31 <main.cold+0x35>
  40674c:	eb e2                	jmp    406730 <main+0x2670>
  40674e:	48 89 c3             	mov    %rax,%rbx
  406751:	49 89 d6             	mov    %rdx,%r14
  406754:	c5 f8 77             	vzeroupper 
  406757:	e9 f1 d5 ff ff       	jmpq   403d4d <main.cold+0x51>
  40675c:	48 89 c3             	mov    %rax,%rbx
  40675f:	49 89 d6             	mov    %rdx,%r14
  406762:	e9 5b d6 ff ff       	jmpq   403dc2 <main.cold+0xc6>
  406767:	49 89 c5             	mov    %rax,%r13
  40676a:	49 89 d6             	mov    %rdx,%r14
  40676d:	e9 7f d6 ff ff       	jmpq   403df1 <main.cold+0xf5>
  406772:	48 89 c7             	mov    %rax,%rdi
  406775:	49 89 d6             	mov    %rdx,%r14
  406778:	c5 f8 77             	vzeroupper 
  40677b:	e9 f3 d5 ff ff       	jmpq   403d73 <main.cold+0x77>
  406780:	48 89 c3             	mov    %rax,%rbx
  406783:	49 89 d6             	mov    %rdx,%r14
  406786:	e9 24 d7 ff ff       	jmpq   403eaf <main.cold+0x1b3>
  40678b:	49 89 c5             	mov    %rax,%r13
  40678e:	49 89 d6             	mov    %rdx,%r14
  406791:	c5 f8 77             	vzeroupper 
  406794:	e9 90 d7 ff ff       	jmpq   403f29 <main.cold+0x22d>
  406799:	eb 95                	jmp    406730 <main+0x2670>
  40679b:	49 89 c5             	mov    %rax,%r13
  40679e:	49 89 d6             	mov    %rdx,%r14
  4067a1:	e9 6d d7 ff ff       	jmpq   403f13 <main.cold+0x217>
  4067a6:	48 89 c3             	mov    %rax,%rbx
  4067a9:	49 89 d4             	mov    %rdx,%r12
  4067ac:	c5 f8 77             	vzeroupper 
  4067af:	e9 92 d6 ff ff       	jmpq   403e46 <main.cold+0x14a>
  4067b4:	49 89 c5             	mov    %rax,%r13
  4067b7:	49 89 d6             	mov    %rdx,%r14
  4067ba:	e9 32 d6 ff ff       	jmpq   403df1 <main.cold+0xf5>
  4067bf:	48 89 c3             	mov    %rax,%rbx
  4067c2:	49 89 d4             	mov    %rdx,%r12
  4067c5:	e9 f9 d7 ff ff       	jmpq   403fc3 <main.cold+0x2c7>
  4067ca:	e9 d0 d7 ff ff       	jmpq   403f9f <main.cold+0x2a3>
  4067cf:	48 89 c3             	mov    %rax,%rbx
  4067d2:	49 89 d6             	mov    %rdx,%r14
  4067d5:	e9 22 d5 ff ff       	jmpq   403cfc <main.cold>
  4067da:	49 89 c5             	mov    %rax,%r13
  4067dd:	49 89 d6             	mov    %rdx,%r14
  4067e0:	e9 0c d6 ff ff       	jmpq   403df1 <main.cold+0xf5>
  4067e5:	49 89 c5             	mov    %rax,%r13
  4067e8:	49 89 d6             	mov    %rdx,%r14
  4067eb:	e9 02 d8 ff ff       	jmpq   403ff2 <main.cold+0x2f6>
  4067f0:	e9 3b ff ff ff       	jmpq   406730 <main+0x2670>
  4067f5:	48 89 c3             	mov    %rax,%rbx
  4067f8:	49 89 d6             	mov    %rdx,%r14
  4067fb:	e9 29 d8 ff ff       	jmpq   404029 <main.cold+0x32d>
  406800:	48 89 c3             	mov    %rax,%rbx
  406803:	49 89 d6             	mov    %rdx,%r14
  406806:	e9 49 d8 ff ff       	jmpq   404054 <main.cold+0x358>
  40680b:	49 89 c5             	mov    %rax,%r13
  40680e:	49 89 d6             	mov    %rdx,%r14
  406811:	e9 db d5 ff ff       	jmpq   403df1 <main.cold+0xf5>
  406816:	48 89 c3             	mov    %rax,%rbx
  406819:	49 89 d6             	mov    %rdx,%r14
  40681c:	c5 f8 77             	vzeroupper 
  40681f:	e9 7e d6 ff ff       	jmpq   403ea2 <main.cold+0x1a6>
  406824:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40682b:	00 00 00 00 
  40682f:	90                   	nop

0000000000406830 <_GLOBAL__sub_I__Z8clock_nsv>:
  406830:	48 83 ec 08          	sub    $0x8,%rsp
  406834:	bf b1 34 41 00       	mov    $0x4134b1,%edi
  406839:	e8 72 cb ff ff       	callq  4033b0 <_ZNSt8ios_base4InitC1Ev@plt>
  40683e:	ba 08 00 41 00       	mov    $0x410008,%edx
  406843:	be b1 34 41 00       	mov    $0x4134b1,%esi
  406848:	bf c0 34 40 00       	mov    $0x4034c0,%edi
  40684d:	48 83 c4 08          	add    $0x8,%rsp
  406851:	e9 0a ca ff ff       	jmpq   403260 <__cxa_atexit@plt>
  406856:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40685d:	00 00 00 

0000000000406860 <_start>:
  406860:	f3 0f 1e fa          	endbr64 
  406864:	31 ed                	xor    %ebp,%ebp
  406866:	49 89 d1             	mov    %rdx,%r9
  406869:	5e                   	pop    %rsi
  40686a:	48 89 e2             	mov    %rsp,%rdx
  40686d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  406871:	50                   	push   %rax
  406872:	54                   	push   %rsp
  406873:	45 31 c0             	xor    %r8d,%r8d
  406876:	31 c9                	xor    %ecx,%ecx
  406878:	48 c7 c7 c0 40 40 00 	mov    $0x4040c0,%rdi
  40687f:	ff 15 43 c7 00 00    	callq  *0xc743(%rip)        # 412fc8 <__libc_start_main@GLIBC_2.34>
  406885:	f4                   	hlt    
  406886:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40688d:	00 00 00 

0000000000406890 <_dl_relocate_static_pie>:
  406890:	f3 0f 1e fa          	endbr64 
  406894:	c3                   	retq   
  406895:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40689c:	00 00 00 
  40689f:	90                   	nop

00000000004068a0 <deregister_tm_clones>:
  4068a0:	48 8d 3d c9 c9 00 00 	lea    0xc9c9(%rip),%rdi        # 413270 <__TMC_END__>
  4068a7:	48 8d 05 c2 c9 00 00 	lea    0xc9c2(%rip),%rax        # 413270 <__TMC_END__>
  4068ae:	48 39 f8             	cmp    %rdi,%rax
  4068b1:	74 15                	je     4068c8 <deregister_tm_clones+0x28>
  4068b3:	48 8b 05 16 c7 00 00 	mov    0xc716(%rip),%rax        # 412fd0 <_ITM_deregisterTMCloneTable>
  4068ba:	48 85 c0             	test   %rax,%rax
  4068bd:	74 09                	je     4068c8 <deregister_tm_clones+0x28>
  4068bf:	ff e0                	jmpq   *%rax
  4068c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4068c8:	c3                   	retq   
  4068c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004068d0 <register_tm_clones>:
  4068d0:	48 8d 3d 99 c9 00 00 	lea    0xc999(%rip),%rdi        # 413270 <__TMC_END__>
  4068d7:	48 8d 35 92 c9 00 00 	lea    0xc992(%rip),%rsi        # 413270 <__TMC_END__>
  4068de:	48 29 fe             	sub    %rdi,%rsi
  4068e1:	48 89 f0             	mov    %rsi,%rax
  4068e4:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4068e8:	48 c1 f8 03          	sar    $0x3,%rax
  4068ec:	48 01 c6             	add    %rax,%rsi
  4068ef:	48 d1 fe             	sar    %rsi
  4068f2:	74 14                	je     406908 <register_tm_clones+0x38>
  4068f4:	48 8b 05 e5 c6 00 00 	mov    0xc6e5(%rip),%rax        # 412fe0 <_ITM_registerTMCloneTable>
  4068fb:	48 85 c0             	test   %rax,%rax
  4068fe:	74 08                	je     406908 <register_tm_clones+0x38>
  406900:	ff e0                	jmpq   *%rax
  406902:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406908:	c3                   	retq   
  406909:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406910 <__do_global_dtors_aux>:
  406910:	f3 0f 1e fa          	endbr64 
  406914:	80 3d 95 cb 00 00 00 	cmpb   $0x0,0xcb95(%rip)        # 4134b0 <completed.0>
  40691b:	75 13                	jne    406930 <__do_global_dtors_aux+0x20>
  40691d:	55                   	push   %rbp
  40691e:	48 89 e5             	mov    %rsp,%rbp
  406921:	e8 7a ff ff ff       	callq  4068a0 <deregister_tm_clones>
  406926:	c6 05 83 cb 00 00 01 	movb   $0x1,0xcb83(%rip)        # 4134b0 <completed.0>
  40692d:	5d                   	pop    %rbp
  40692e:	c3                   	retq   
  40692f:	90                   	nop
  406930:	c3                   	retq   
  406931:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  406938:	00 00 00 00 
  40693c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406940 <frame_dummy>:
  406940:	f3 0f 1e fa          	endbr64 
  406944:	eb 8a                	jmp    4068d0 <register_tm_clones>
  406946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40694d:	00 00 00 

0000000000406950 <main._omp_fn.1>:
  406950:	41 54                	push   %r12
  406952:	55                   	push   %rbp
  406953:	53                   	push   %rbx
  406954:	48 8b 07             	mov    (%rdi),%rax
  406957:	48 8b 18             	mov    (%rax),%rbx
  40695a:	48 85 db             	test   %rbx,%rbx
  40695d:	0f 84 ef 00 00 00    	je     406a52 <main._omp_fn.1+0x102>
  406963:	49 89 fc             	mov    %rdi,%r12
  406966:	e8 25 cb ff ff       	callq  403490 <omp_get_num_threads@plt>
  40696b:	89 c5                	mov    %eax,%ebp
  40696d:	e8 6e ca ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  406972:	48 63 c8             	movslq %eax,%rcx
  406975:	48 63 f5             	movslq %ebp,%rsi
  406978:	48 89 d8             	mov    %rbx,%rax
  40697b:	31 d2                	xor    %edx,%edx
  40697d:	48 f7 f6             	div    %rsi
  406980:	48 39 d1             	cmp    %rdx,%rcx
  406983:	0f 82 d7 00 00 00    	jb     406a60 <main._omp_fn.1+0x110>
  406989:	48 0f af c8          	imul   %rax,%rcx
  40698d:	48 01 d1             	add    %rdx,%rcx
  406990:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
  406994:	48 39 f1             	cmp    %rsi,%rcx
  406997:	0f 83 b5 00 00 00    	jae    406a52 <main._omp_fn.1+0x102>
  40699d:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  4069a2:	c5 fb 10 0d 26 9c 00 	vmovsd 0x9c26(%rip),%xmm1        # 4105d0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd0>
  4069a9:	00 
  4069aa:	48 8b 38             	mov    (%rax),%rdi
  4069ad:	49 8b 44 24 10       	mov    0x10(%r12),%rax
  4069b2:	c5 fb 10 1d 36 9d 00 	vmovsd 0x9d36(%rip),%xmm3        # 4106f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  4069b9:	00 
  4069ba:	4c 8b 00             	mov    (%rax),%r8
  4069bd:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  4069c2:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  4069c6:	4c 8b 08             	mov    (%rax),%r9
  4069c9:	4d 85 c9             	test   %r9,%r9
  4069cc:	0f 84 9e 00 00 00    	je     406a70 <main._omp_fn.1+0x120>
  4069d2:	c5 fb 10 25 fe 9b 00 	vmovsd 0x9bfe(%rip),%xmm4        # 4105d8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  4069d9:	00 
  4069da:	49 bb f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r11
  4069e1:	f0 f0 f0 
  4069e4:	49 ba c5 4e ec c4 4e 	movabs $0x4ec4ec4ec4ec4ec5,%r10
  4069eb:	ec c4 4e 
  4069ee:	66 90                	xchg   %ax,%ax
  4069f0:	48 89 c8             	mov    %rcx,%rax
  4069f3:	49 f7 e3             	mul    %r11
  4069f6:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  4069fd:	00 
  4069fe:	48 89 d0             	mov    %rdx,%rax
  406a01:	48 c1 e8 04          	shr    $0x4,%rax
  406a05:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  406a09:	48 01 c2             	add    %rax,%rdx
  406a0c:	48 89 c8             	mov    %rcx,%rax
  406a0f:	48 29 d0             	sub    %rdx,%rax
  406a12:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  406a17:	48 89 c8             	mov    %rcx,%rax
  406a1a:	49 f7 e2             	mul    %r10
  406a1d:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  406a22:	48 c1 ea 02          	shr    $0x2,%rdx
  406a26:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
  406a2a:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
  406a2e:	48 89 c8             	mov    %rcx,%rax
  406a31:	48 29 d0             	sub    %rdx,%rax
  406a34:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  406a3a:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  406a3f:	c4 e2 d9 9d c1       	vfnmadd132sd %xmm1,%xmm4,%xmm0
  406a44:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  406a4a:	48 ff c1             	inc    %rcx
  406a4d:	48 39 ce             	cmp    %rcx,%rsi
  406a50:	75 9e                	jne    4069f0 <main._omp_fn.1+0xa0>
  406a52:	5b                   	pop    %rbx
  406a53:	5d                   	pop    %rbp
  406a54:	41 5c                	pop    %r12
  406a56:	c3                   	retq   
  406a57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  406a5e:	00 00 
  406a60:	48 ff c0             	inc    %rax
  406a63:	31 d2                	xor    %edx,%edx
  406a65:	e9 1f ff ff ff       	jmpq   406989 <main._omp_fn.1+0x39>
  406a6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406a70:	49 b9 f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r9
  406a77:	f0 f0 f0 
  406a7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406a80:	48 89 c8             	mov    %rcx,%rax
  406a83:	49 f7 e1             	mul    %r9
  406a86:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  406a8d:	00 
  406a8e:	48 89 d0             	mov    %rdx,%rax
  406a91:	48 c1 e8 04          	shr    $0x4,%rax
  406a95:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  406a99:	48 01 c2             	add    %rax,%rdx
  406a9c:	48 89 c8             	mov    %rcx,%rax
  406a9f:	48 29 d0             	sub    %rdx,%rax
  406aa2:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  406aa7:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  406aac:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  406ab2:	48 ff c1             	inc    %rcx
  406ab5:	48 39 ce             	cmp    %rcx,%rsi
  406ab8:	75 c6                	jne    406a80 <main._omp_fn.1+0x130>
  406aba:	5b                   	pop    %rbx
  406abb:	5d                   	pop    %rbp
  406abc:	41 5c                	pop    %r12
  406abe:	c3                   	retq   
  406abf:	90                   	nop

0000000000406ac0 <main._omp_fn.0>:
  406ac0:	53                   	push   %rbx
  406ac1:	48 89 fb             	mov    %rdi,%rbx
  406ac4:	e8 97 c5 ff ff       	callq  403060 <GOMP_single_start@plt>
  406ac9:	84 c0                	test   %al,%al
  406acb:	74 0e                	je     406adb <main._omp_fn.0+0x1b>
  406acd:	e8 be c9 ff ff       	callq  403490 <omp_get_num_threads@plt>
  406ad2:	41 89 c0             	mov    %eax,%r8d
  406ad5:	48 8b 03             	mov    (%rbx),%rax
  406ad8:	44 89 00             	mov    %r8d,(%rax)
  406adb:	5b                   	pop    %rbx
  406adc:	e9 8f c9 ff ff       	jmpq   403470 <GOMP_barrier@plt>
  406ae1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  406ae8:	00 00 00 00 
  406aec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406af0 <_ZZ4mainENKUlmE_clEm._omp_fn.0>:
  406af0:	55                   	push   %rbp
  406af1:	48 89 e5             	mov    %rsp,%rbp
  406af4:	41 55                	push   %r13
  406af6:	41 54                	push   %r12
  406af8:	53                   	push   %rbx
  406af9:	4c 8b 27             	mov    (%rdi),%r12
  406afc:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  406b00:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  406b05:	4c 8b 28             	mov    (%rax),%r13
  406b08:	4d 85 ed             	test   %r13,%r13
  406b0b:	0f 84 42 01 00 00    	je     406c53 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406b11:	e8 7a c9 ff ff       	callq  403490 <omp_get_num_threads@plt>
  406b16:	89 c3                	mov    %eax,%ebx
  406b18:	e8 c3 c8 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  406b1d:	48 63 c8             	movslq %eax,%rcx
  406b20:	48 63 f3             	movslq %ebx,%rsi
  406b23:	4c 89 e8             	mov    %r13,%rax
  406b26:	31 d2                	xor    %edx,%edx
  406b28:	48 f7 f6             	div    %rsi
  406b2b:	48 39 d1             	cmp    %rdx,%rcx
  406b2e:	0f 82 2c 01 00 00    	jb     406c60 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x170>
  406b34:	48 0f af c8          	imul   %rax,%rcx
  406b38:	48 01 ca             	add    %rcx,%rdx
  406b3b:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  406b3f:	48 39 ca             	cmp    %rcx,%rdx
  406b42:	0f 83 0b 01 00 00    	jae    406c53 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406b48:	4d 8b 44 24 20       	mov    0x20(%r12),%r8
  406b4d:	49 8b 7c 24 30       	mov    0x30(%r12),%rdi
  406b52:	4d 8b 08             	mov    (%r8),%r9
  406b55:	48 8b 3f             	mov    (%rdi),%rdi
  406b58:	4c 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%r8
  406b5f:	00 
  406b60:	49 8b 74 24 28       	mov    0x28(%r12),%rsi
  406b65:	4f 8d 14 01          	lea    (%r9,%r8,1),%r10
  406b69:	4d 8d 58 08          	lea    0x8(%r8),%r11
  406b6d:	4e 8d 24 1f          	lea    (%rdi,%r11,1),%r12
  406b71:	4c 89 d3             	mov    %r10,%rbx
  406b74:	4c 29 e3             	sub    %r12,%rbx
  406b77:	48 8b 36             	mov    (%rsi),%rsi
  406b7a:	48 83 fb 10          	cmp    $0x10,%rbx
  406b7e:	0f 97 c3             	seta   %bl
  406b81:	4d 89 d4             	mov    %r10,%r12
  406b84:	49 01 f3             	add    %rsi,%r11
  406b87:	4d 29 dc             	sub    %r11,%r12
  406b8a:	49 83 fc 10          	cmp    $0x10,%r12
  406b8e:	41 0f 97 c3          	seta   %r11b
  406b92:	44 84 db             	test   %r11b,%bl
  406b95:	0f 84 d5 00 00 00    	je     406c70 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x180>
  406b9b:	48 83 f8 01          	cmp    $0x1,%rax
  406b9f:	0f 84 cb 00 00 00    	je     406c70 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x180>
  406ba5:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  406ba9:	48 83 f9 02          	cmp    $0x2,%rcx
  406bad:	0f 86 f2 00 00 00    	jbe    406ca5 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1b5>
  406bb3:	49 89 c3             	mov    %rax,%r11
  406bb6:	49 c1 eb 02          	shr    $0x2,%r11
  406bba:	c4 e2 7d 19 0d 1d 9a 	vbroadcastsd 0x9a1d(%rip),%ymm1        # 4105e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406bc1:	00 00 
  406bc3:	4a 8d 1c 06          	lea    (%rsi,%r8,1),%rbx
  406bc7:	49 c1 e3 05          	shl    $0x5,%r11
  406bcb:	49 01 f8             	add    %rdi,%r8
  406bce:	31 c9                	xor    %ecx,%ecx
  406bd0:	c4 c1 7d 10 04 08    	vmovupd (%r8,%rcx,1),%ymm0
  406bd6:	c4 e2 f5 a8 04 0b    	vfmadd213pd (%rbx,%rcx,1),%ymm1,%ymm0
  406bdc:	c4 c1 7d 11 04 0a    	vmovupd %ymm0,(%r10,%rcx,1)
  406be2:	48 83 c1 20          	add    $0x20,%rcx
  406be6:	49 39 cb             	cmp    %rcx,%r11
  406be9:	75 e5                	jne    406bd0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0xe0>
  406beb:	49 89 c0             	mov    %rax,%r8
  406bee:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
  406bf2:	4c 01 c2             	add    %r8,%rdx
  406bf5:	48 89 d1             	mov    %rdx,%rcx
  406bf8:	4c 39 c0             	cmp    %r8,%rax
  406bfb:	0f 84 9f 00 00 00    	je     406ca0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1b0>
  406c01:	4c 29 c0             	sub    %r8,%rax
  406c04:	48 83 f8 01          	cmp    $0x1,%rax
  406c08:	0f 84 9f 00 00 00    	je     406cad <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1bd>
  406c0e:	c5 f8 77             	vzeroupper 
  406c11:	c5 f9 10 04 d7       	vmovupd (%rdi,%rdx,8),%xmm0
  406c16:	c5 f9 10 1c d6       	vmovupd (%rsi,%rdx,8),%xmm3
  406c1b:	62 f2 e5 18 98 05 bb 	vfmadd132pd 0x99bb(%rip){1to2},%xmm3,%xmm0        # 4105e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406c22:	99 00 00 
  406c25:	c4 c1 79 11 04 d1    	vmovupd %xmm0,(%r9,%rdx,8)
  406c2b:	48 89 c2             	mov    %rax,%rdx
  406c2e:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
  406c32:	48 01 d1             	add    %rdx,%rcx
  406c35:	48 39 d0             	cmp    %rdx,%rax
  406c38:	74 19                	je     406c53 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406c3a:	c5 fb 10 04 cf       	vmovsd (%rdi,%rcx,8),%xmm0
  406c3f:	c5 fb 10 14 ce       	vmovsd (%rsi,%rcx,8),%xmm2
  406c44:	c4 e2 e9 99 05 93 99 	vfmadd132sd 0x9993(%rip),%xmm2,%xmm0        # 4105e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406c4b:	00 00 
  406c4d:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  406c53:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  406c57:	5b                   	pop    %rbx
  406c58:	41 5c                	pop    %r12
  406c5a:	41 5d                	pop    %r13
  406c5c:	5d                   	pop    %rbp
  406c5d:	c3                   	retq   
  406c5e:	66 90                	xchg   %ax,%ax
  406c60:	48 ff c0             	inc    %rax
  406c63:	31 d2                	xor    %edx,%edx
  406c65:	e9 ca fe ff ff       	jmpq   406b34 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x44>
  406c6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406c70:	c5 fb 10 0d 68 99 00 	vmovsd 0x9968(%rip),%xmm1        # 4105e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406c77:	00 
  406c78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406c7f:	00 
  406c80:	c5 fb 10 04 d7       	vmovsd (%rdi,%rdx,8),%xmm0
  406c85:	c4 e2 f1 a9 04 d6    	vfmadd213sd (%rsi,%rdx,8),%xmm1,%xmm0
  406c8b:	c4 c1 7b 11 04 d1    	vmovsd %xmm0,(%r9,%rdx,8)
  406c91:	48 ff c2             	inc    %rdx
  406c94:	48 39 d1             	cmp    %rdx,%rcx
  406c97:	75 e7                	jne    406c80 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x190>
  406c99:	eb b8                	jmp    406c53 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406c9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406ca0:	c5 f8 77             	vzeroupper 
  406ca3:	eb ae                	jmp    406c53 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406ca5:	48 89 d1             	mov    %rdx,%rcx
  406ca8:	e9 64 ff ff ff       	jmpq   406c11 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x121>
  406cad:	c5 f8 77             	vzeroupper 
  406cb0:	eb 88                	jmp    406c3a <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x14a>
  406cb2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  406cb9:	00 00 00 00 
  406cbd:	0f 1f 00             	nopl   (%rax)

0000000000406cc0 <_ZZ4mainENKUlmE_clEm._omp_fn.2>:
  406cc0:	55                   	push   %rbp
  406cc1:	48 89 e5             	mov    %rsp,%rbp
  406cc4:	41 55                	push   %r13
  406cc6:	41 54                	push   %r12
  406cc8:	53                   	push   %rbx
  406cc9:	4c 8b 2f             	mov    (%rdi),%r13
  406ccc:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  406cd0:	49 8b 45 18          	mov    0x18(%r13),%rax
  406cd4:	4c 8b 20             	mov    (%rax),%r12
  406cd7:	4d 85 e4             	test   %r12,%r12
  406cda:	0f 84 e6 00 00 00    	je     406dc6 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  406ce0:	e8 ab c7 ff ff       	callq  403490 <omp_get_num_threads@plt>
  406ce5:	89 c3                	mov    %eax,%ebx
  406ce7:	e8 f4 c6 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  406cec:	48 63 c8             	movslq %eax,%rcx
  406cef:	48 63 f3             	movslq %ebx,%rsi
  406cf2:	4c 89 e0             	mov    %r12,%rax
  406cf5:	31 d2                	xor    %edx,%edx
  406cf7:	48 f7 f6             	div    %rsi
  406cfa:	48 39 d1             	cmp    %rdx,%rcx
  406cfd:	0f 82 ed 00 00 00    	jb     406df0 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x130>
  406d03:	48 0f af c8          	imul   %rax,%rcx
  406d07:	48 01 ca             	add    %rcx,%rdx
  406d0a:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  406d0e:	48 39 ca             	cmp    %rcx,%rdx
  406d11:	0f 83 af 00 00 00    	jae    406dc6 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  406d17:	49 8b 7d 20          	mov    0x20(%r13),%rdi
  406d1b:	49 8b 75 28          	mov    0x28(%r13),%rsi
  406d1f:	48 8b 3f             	mov    (%rdi),%rdi
  406d22:	4c 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%r8
  406d29:	00 
  406d2a:	48 8b 36             	mov    (%rsi),%rsi
  406d2d:	4e 8d 14 07          	lea    (%rdi,%r8,1),%r10
  406d31:	4e 8d 5c 06 08       	lea    0x8(%rsi,%r8,1),%r11
  406d36:	4d 89 d1             	mov    %r10,%r9
  406d39:	4d 29 d9             	sub    %r11,%r9
  406d3c:	49 83 f9 10          	cmp    $0x10,%r9
  406d40:	0f 86 92 00 00 00    	jbe    406dd8 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x118>
  406d46:	48 83 f8 01          	cmp    $0x1,%rax
  406d4a:	0f 84 88 00 00 00    	je     406dd8 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x118>
  406d50:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  406d54:	48 83 f9 02          	cmp    $0x2,%rcx
  406d58:	0f 86 a7 00 00 00    	jbe    406e05 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x145>
  406d5e:	49 89 c1             	mov    %rax,%r9
  406d61:	49 c1 e9 02          	shr    $0x2,%r9
  406d65:	49 01 f0             	add    %rsi,%r8
  406d68:	49 c1 e1 05          	shl    $0x5,%r9
  406d6c:	31 c9                	xor    %ecx,%ecx
  406d6e:	66 90                	xchg   %ax,%ax
  406d70:	c4 c1 7d 10 0c 08    	vmovupd (%r8,%rcx,1),%ymm1
  406d76:	c4 c1 7d 11 0c 0a    	vmovupd %ymm1,(%r10,%rcx,1)
  406d7c:	48 83 c1 20          	add    $0x20,%rcx
  406d80:	49 39 c9             	cmp    %rcx,%r9
  406d83:	75 eb                	jne    406d70 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0xb0>
  406d85:	49 89 c0             	mov    %rax,%r8
  406d88:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
  406d8c:	4c 01 c2             	add    %r8,%rdx
  406d8f:	48 89 d1             	mov    %rdx,%rcx
  406d92:	4c 39 c0             	cmp    %r8,%rax
  406d95:	74 69                	je     406e00 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x140>
  406d97:	4c 29 c0             	sub    %r8,%rax
  406d9a:	48 83 f8 01          	cmp    $0x1,%rax
  406d9e:	74 6a                	je     406e0a <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x14a>
  406da0:	c5 f8 77             	vzeroupper 
  406da3:	c5 f9 10 14 d6       	vmovupd (%rsi,%rdx,8),%xmm2
  406da8:	c5 f9 11 14 d7       	vmovupd %xmm2,(%rdi,%rdx,8)
  406dad:	48 89 c2             	mov    %rax,%rdx
  406db0:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
  406db4:	48 01 d1             	add    %rdx,%rcx
  406db7:	48 39 d0             	cmp    %rdx,%rax
  406dba:	74 0a                	je     406dc6 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  406dbc:	c5 fb 10 04 ce       	vmovsd (%rsi,%rcx,8),%xmm0
  406dc1:	c5 fb 11 04 cf       	vmovsd %xmm0,(%rdi,%rcx,8)
  406dc6:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  406dca:	5b                   	pop    %rbx
  406dcb:	41 5c                	pop    %r12
  406dcd:	41 5d                	pop    %r13
  406dcf:	5d                   	pop    %rbp
  406dd0:	c3                   	retq   
  406dd1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406dd8:	c5 fb 10 04 d6       	vmovsd (%rsi,%rdx,8),%xmm0
  406ddd:	c5 fb 11 04 d7       	vmovsd %xmm0,(%rdi,%rdx,8)
  406de2:	48 ff c2             	inc    %rdx
  406de5:	48 39 d1             	cmp    %rdx,%rcx
  406de8:	75 ee                	jne    406dd8 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x118>
  406dea:	eb da                	jmp    406dc6 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  406dec:	0f 1f 40 00          	nopl   0x0(%rax)
  406df0:	48 ff c0             	inc    %rax
  406df3:	31 d2                	xor    %edx,%edx
  406df5:	e9 09 ff ff ff       	jmpq   406d03 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x43>
  406dfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406e00:	c5 f8 77             	vzeroupper 
  406e03:	eb c1                	jmp    406dc6 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x106>
  406e05:	48 89 d1             	mov    %rdx,%rcx
  406e08:	eb 99                	jmp    406da3 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0xe3>
  406e0a:	c5 f8 77             	vzeroupper 
  406e0d:	eb ad                	jmp    406dbc <_ZZ4mainENKUlmE_clEm._omp_fn.2+0xfc>
  406e0f:	90                   	nop

0000000000406e10 <_ZZ4mainENKUlmE_clEm._omp_fn.4>:
  406e10:	55                   	push   %rbp
  406e11:	48 89 e5             	mov    %rsp,%rbp
  406e14:	41 57                	push   %r15
  406e16:	41 56                	push   %r14
  406e18:	41 55                	push   %r13
  406e1a:	41 54                	push   %r12
  406e1c:	53                   	push   %rbx
  406e1d:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  406e21:	48 83 ec 40          	sub    $0x40,%rsp
  406e25:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
  406e29:	48 8b 07             	mov    (%rdi),%rax
  406e2c:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  406e31:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  406e36:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  406e3b:	e8 a0 c5 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  406e40:	48 63 f0             	movslq %eax,%rsi
  406e43:	48 8b 43 60          	mov    0x60(%rbx),%rax
  406e47:	31 d2                	xor    %edx,%edx
  406e49:	48 8b 08             	mov    (%rax),%rcx
  406e4c:	b8 00 00 40 00       	mov    $0x400000,%eax
  406e51:	48 f7 f1             	div    %rcx
  406e54:	48 89 34 24          	mov    %rsi,(%rsp)
  406e58:	49 89 cf             	mov    %rcx,%r15
  406e5b:	49 c1 ef 03          	shr    $0x3,%r15
  406e5f:	ba 01 00 00 00       	mov    $0x1,%edx
  406e64:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
  406e69:	48 85 c0             	test   %rax,%rax
  406e6c:	48 0f 45 d0          	cmovne %rax,%rdx
  406e70:	48 8b 43 58          	mov    0x58(%rbx),%rax
  406e74:	49 89 d4             	mov    %rdx,%r12
  406e77:	48 8b 00             	mov    (%rax),%rax
  406e7a:	49 8d 57 ff          	lea    -0x1(%r15),%rdx
  406e7e:	48 c1 ea 06          	shr    $0x6,%rdx
  406e82:	4c 8b 2c f0          	mov    (%rax,%rsi,8),%r13
  406e86:	48 ff c2             	inc    %rdx
  406e89:	48 c1 e2 09          	shl    $0x9,%rdx
  406e8d:	4e 8d 34 2a          	lea    (%rdx,%r13,1),%r14
  406e91:	31 db                	xor    %ebx,%ebx
  406e93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406e98:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  406e9c:	62 f1 fd 48 28 f8    	vmovapd %zmm0,%zmm7
  406ea2:	62 f1 fd 48 28 f0    	vmovapd %zmm0,%zmm6
  406ea8:	62 f1 fd 48 28 d8    	vmovapd %zmm0,%zmm3
  406eae:	62 f1 fd 48 28 c8    	vmovapd %zmm0,%zmm1
  406eb4:	62 f1 fd 48 28 e8    	vmovapd %zmm0,%zmm5
  406eba:	62 f1 fd 48 28 e0    	vmovapd %zmm0,%zmm4
  406ec0:	62 f1 fd 48 28 d0    	vmovapd %zmm0,%zmm2
  406ec6:	31 c9                	xor    %ecx,%ecx
  406ec8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406ecf:	00 
  406ed0:	4c 89 e8             	mov    %r13,%rax
  406ed3:	4d 85 ff             	test   %r15,%r15
  406ed6:	74 4a                	je     406f22 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x112>
  406ed8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406edf:	00 
  406ee0:	62 f1 ed 48 58 10    	vaddpd (%rax),%zmm2,%zmm2
  406ee6:	62 f1 dd 48 58 60 01 	vaddpd 0x40(%rax),%zmm4,%zmm4
  406eed:	62 f1 d5 48 58 68 02 	vaddpd 0x80(%rax),%zmm5,%zmm5
  406ef4:	62 f1 f5 48 58 48 03 	vaddpd 0xc0(%rax),%zmm1,%zmm1
  406efb:	62 f1 e5 48 58 58 04 	vaddpd 0x100(%rax),%zmm3,%zmm3
  406f02:	62 f1 cd 48 58 70 05 	vaddpd 0x140(%rax),%zmm6,%zmm6
  406f09:	62 f1 c5 48 58 78 06 	vaddpd 0x180(%rax),%zmm7,%zmm7
  406f10:	62 f1 fd 48 58 40 07 	vaddpd 0x1c0(%rax),%zmm0,%zmm0
  406f17:	48 05 00 02 00 00    	add    $0x200,%rax
  406f1d:	49 39 c6             	cmp    %rax,%r14
  406f20:	75 be                	jne    406ee0 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0xd0>
  406f22:	48 ff c1             	inc    %rcx
  406f25:	4c 39 e1             	cmp    %r12,%rcx
  406f28:	75 a6                	jne    406ed0 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0xc0>
  406f2a:	62 f1 fd 48 58 c7    	vaddpd %zmm7,%zmm0,%zmm0
  406f30:	62 f1 e5 48 58 de    	vaddpd %zmm6,%zmm3,%zmm3
  406f36:	62 f1 f5 48 58 cd    	vaddpd %zmm5,%zmm1,%zmm1
  406f3c:	62 f1 ed 48 58 d4    	vaddpd %zmm4,%zmm2,%zmm2
  406f42:	62 f1 fd 48 58 c3    	vaddpd %zmm3,%zmm0,%zmm0
  406f48:	48 01 cb             	add    %rcx,%rbx
  406f4b:	62 f1 f5 48 58 ca    	vaddpd %zmm2,%zmm1,%zmm1
  406f51:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  406f56:	bf 01 00 00 00       	mov    $0x1,%edi
  406f5b:	62 f1 fd 48 58 c1    	vaddpd %zmm1,%zmm0,%zmm0
  406f61:	62 f3 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm0,%ymm1
  406f68:	c5 f5 58 c8          	vaddpd %ymm0,%ymm1,%ymm1
  406f6c:	62 f3 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm1,%xmm0
  406f73:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  406f77:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  406f7b:	c5 3b 58 c0          	vaddsd %xmm0,%xmm8,%xmm8
  406f7f:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  406f83:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  406f89:	c5 7b 11 44 24 20    	vmovsd %xmm8,0x20(%rsp)
  406f8f:	c5 f8 77             	vzeroupper 
  406f92:	e8 e9 c2 ff ff       	callq  403280 <clock_gettime@plt>
  406f97:	48 69 44 24 30 00 ca 	imul   $0x3b9aca00,0x30(%rsp),%rax
  406f9e:	9a 3b 
  406fa0:	c5 7b 10 44 24 20    	vmovsd 0x20(%rsp),%xmm8
  406fa6:	48 03 44 24 38       	add    0x38(%rsp),%rax
  406fab:	48 39 44 24 18       	cmp    %rax,0x18(%rsp)
  406fb0:	0f 87 e2 fe ff ff    	ja     406e98 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x88>
  406fb6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  406fbb:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  406fbf:	48 8b 47 60          	mov    0x60(%rdi),%rax
  406fc3:	62 f1 ff 08 7b c3    	vcvtusi2sd %rbx,%xmm0,%xmm0
  406fc9:	4c 8b 20             	mov    (%rax),%r12
  406fcc:	48 8b 47 68          	mov    0x68(%rdi),%rax
  406fd0:	4c 0f af e3          	imul   %rbx,%r12
  406fd4:	48 8b 00             	mov    (%rax),%rax
  406fd7:	48 8b 1c 24          	mov    (%rsp),%rbx
  406fdb:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  406fdf:	c5 fb 59 04 d8       	vmulsd (%rax,%rbx,8),%xmm0,%xmm0
  406fe4:	c5 b9 14 c0          	vunpcklpd %xmm0,%xmm8,%xmm0
  406fe8:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  406fec:	c5 f9 29 44 24 20    	vmovapd %xmm0,0x20(%rsp)
  406ff2:	e8 99 c1 ff ff       	callq  403190 <GOMP_atomic_start@plt>
  406ff7:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  406ffc:	c5 f9 28 44 24 20    	vmovapd 0x20(%rsp),%xmm0
  407002:	4c 01 60 28          	add    %r12,0x28(%rax)
  407006:	c5 f9 58 40 30       	vaddpd 0x30(%rax),%xmm0,%xmm0
  40700b:	c5 f9 11 40 30       	vmovupd %xmm0,0x30(%rax)
  407010:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  407014:	5b                   	pop    %rbx
  407015:	41 5c                	pop    %r12
  407017:	41 5d                	pop    %r13
  407019:	41 5e                	pop    %r14
  40701b:	41 5f                	pop    %r15
  40701d:	5d                   	pop    %rbp
  40701e:	e9 fd c1 ff ff       	jmpq   403220 <GOMP_atomic_end@plt>
  407023:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40702a:	00 00 00 00 
  40702e:	66 90                	xchg   %ax,%ax

0000000000407030 <_ZZ4mainENKUlmE_clEm._omp_fn.5>:
  407030:	55                   	push   %rbp
  407031:	48 89 e5             	mov    %rsp,%rbp
  407034:	41 55                	push   %r13
  407036:	41 54                	push   %r12
  407038:	49 89 fc             	mov    %rdi,%r12
  40703b:	53                   	push   %rbx
  40703c:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  407040:	48 81 ec 80 19 00 00 	sub    $0x1980,%rsp
  407047:	48 8b 1f             	mov    (%rdi),%rbx
  40704a:	48 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%rax
  407051:	80 38 00             	cmpb   $0x0,(%rax)
  407054:	75 10                	jne    407066 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x36>
  407056:	48 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%rax
  40705d:	80 38 00             	cmpb   $0x0,(%rax)
  407060:	0f 84 7a 10 00 00    	je     4080e0 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x10b0>
  407066:	64 80 3c 25 f0 ff ff 	cmpb   $0x0,%fs:0xfffffffffffffff0
  40706d:	ff 00 
  40706f:	0f 84 b6 13 00 00    	je     40842b <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x13fb>
  407075:	64 0f b6 04 25 f8 ff 	movzbl %fs:0xfffffffffffffff8,%eax
  40707c:	ff ff 
  40707e:	84 c0                	test   %al,%al
  407080:	75 39                	jne    4070bb <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x8b>
  407082:	48 8b 1d 57 96 00 00 	mov    0x9657(%rip),%rbx        # 4106e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  407089:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  40708f:	e8 fc c0 ff ff       	callq  403190 <GOMP_atomic_start@plt>
  407094:	c4 e1 f9 6e f3       	vmovq  %rbx,%xmm6
  407099:	c4 c1 4b 58 44 24 38 	vaddsd 0x38(%r12),%xmm6,%xmm0
  4070a0:	45 09 6c 24 40       	or     %r13d,0x40(%r12)
  4070a5:	c4 c1 7b 11 44 24 38 	vmovsd %xmm0,0x38(%r12)
  4070ac:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  4070b0:	5b                   	pop    %rbx
  4070b1:	41 5c                	pop    %r12
  4070b3:	41 5d                	pop    %r13
  4070b5:	5d                   	pop    %rbp
  4070b6:	e9 65 c1 ff ff       	jmpq   403220 <GOMP_atomic_end@plt>
  4070bb:	48 8b 05 26 95 00 00 	mov    0x9526(%rip),%rax        # 4105e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  4070c2:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4070c6:	c5 f9 7f 84 24 50 01 	vmovdqa %xmm0,0x150(%rsp)
  4070cd:	00 00 
  4070cf:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  4070d6:	00 
  4070d7:	b8 10 10 00 00       	mov    $0x1010,%eax
  4070dc:	c5 f9 7f 84 24 70 01 	vmovdqa %xmm0,0x170(%rsp)
  4070e3:	00 00 
  4070e5:	c5 f9 7f 84 24 40 01 	vmovdqa %xmm0,0x140(%rsp)
  4070ec:	00 00 
  4070ee:	c7 84 24 58 01 00 00 	movl   $0x400040,0x158(%rsp)
  4070f5:	40 00 40 00 
  4070f9:	c6 84 24 40 01 00 00 	movb   $0x1,0x140(%rsp)
  407100:	01 
  407101:	c7 84 24 70 01 00 00 	movl   $0x10101010,0x170(%rsp)
  407108:	10 10 10 10 
  40710c:	66 89 84 24 74 01 00 	mov    %ax,0x174(%rsp)
  407113:	00 
  407114:	c5 f9 7f 84 24 60 01 	vmovdqa %xmm0,0x160(%rsp)
  40711b:	00 00 
  40711d:	c4 e2 78 49 84 24 40 	ldtilecfg 0x140(%rsp)
  407124:	01 00 00 
  407127:	48 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%rax
  40712e:	80 38 00             	cmpb   $0x0,(%rax)
  407131:	0f 84 26 13 00 00    	je     40845d <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x142d>
  407137:	c4 e2 7d 79 05 f2 95 	vpbroadcastw 0x95f2(%rip),%ymm0        # 410732 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  40713e:	00 00 
  407140:	48 8d 94 24 80 01 00 	lea    0x180(%rsp),%rdx
  407147:	00 
  407148:	c5 fd 7f 84 24 80 01 	vmovdqa %ymm0,0x180(%rsp)
  40714f:	00 00 
  407151:	c5 fd 7f 84 24 a0 01 	vmovdqa %ymm0,0x1a0(%rsp)
  407158:	00 00 
  40715a:	c5 fd 7f 84 24 c0 01 	vmovdqa %ymm0,0x1c0(%rsp)
  407161:	00 00 
  407163:	c5 fd 7f 84 24 e0 01 	vmovdqa %ymm0,0x1e0(%rsp)
  40716a:	00 00 
  40716c:	c5 fd 7f 84 24 00 02 	vmovdqa %ymm0,0x200(%rsp)
  407173:	00 00 
  407175:	c5 fd 7f 84 24 20 02 	vmovdqa %ymm0,0x220(%rsp)
  40717c:	00 00 
  40717e:	c5 fd 7f 84 24 40 02 	vmovdqa %ymm0,0x240(%rsp)
  407185:	00 00 
  407187:	c5 fd 7f 84 24 60 02 	vmovdqa %ymm0,0x260(%rsp)
  40718e:	00 00 
  407190:	c5 fd 7f 84 24 80 02 	vmovdqa %ymm0,0x280(%rsp)
  407197:	00 00 
  407199:	c5 fd 7f 84 24 a0 02 	vmovdqa %ymm0,0x2a0(%rsp)
  4071a0:	00 00 
  4071a2:	c5 fd 7f 84 24 c0 02 	vmovdqa %ymm0,0x2c0(%rsp)
  4071a9:	00 00 
  4071ab:	c5 fd 7f 84 24 e0 02 	vmovdqa %ymm0,0x2e0(%rsp)
  4071b2:	00 00 
  4071b4:	c5 fd 7f 84 24 00 03 	vmovdqa %ymm0,0x300(%rsp)
  4071bb:	00 00 
  4071bd:	c5 fd 7f 84 24 20 03 	vmovdqa %ymm0,0x320(%rsp)
  4071c4:	00 00 
  4071c6:	c5 fd 7f 84 24 40 03 	vmovdqa %ymm0,0x340(%rsp)
  4071cd:	00 00 
  4071cf:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  4071d6:	00 00 
  4071d8:	c5 fd 7f 84 24 80 03 	vmovdqa %ymm0,0x380(%rsp)
  4071df:	00 00 
  4071e1:	c5 fd 7f 84 24 a0 03 	vmovdqa %ymm0,0x3a0(%rsp)
  4071e8:	00 00 
  4071ea:	c5 fd 7f 84 24 c0 03 	vmovdqa %ymm0,0x3c0(%rsp)
  4071f1:	00 00 
  4071f3:	c5 fd 7f 84 24 e0 03 	vmovdqa %ymm0,0x3e0(%rsp)
  4071fa:	00 00 
  4071fc:	c5 fd 7f 84 24 00 04 	vmovdqa %ymm0,0x400(%rsp)
  407203:	00 00 
  407205:	c5 fd 7f 84 24 20 04 	vmovdqa %ymm0,0x420(%rsp)
  40720c:	00 00 
  40720e:	c5 fd 7f 84 24 40 04 	vmovdqa %ymm0,0x440(%rsp)
  407215:	00 00 
  407217:	c5 fd 7f 84 24 60 04 	vmovdqa %ymm0,0x460(%rsp)
  40721e:	00 00 
  407220:	c5 fd 7f 84 24 80 04 	vmovdqa %ymm0,0x480(%rsp)
  407227:	00 00 
  407229:	c5 fd 7f 84 24 a0 04 	vmovdqa %ymm0,0x4a0(%rsp)
  407230:	00 00 
  407232:	c5 fd 7f 84 24 c0 04 	vmovdqa %ymm0,0x4c0(%rsp)
  407239:	00 00 
  40723b:	c5 fd 7f 84 24 e0 04 	vmovdqa %ymm0,0x4e0(%rsp)
  407242:	00 00 
  407244:	c5 fd 7f 84 24 00 05 	vmovdqa %ymm0,0x500(%rsp)
  40724b:	00 00 
  40724d:	c5 fd 7f 84 24 20 05 	vmovdqa %ymm0,0x520(%rsp)
  407254:	00 00 
  407256:	c5 fd 7f 84 24 40 05 	vmovdqa %ymm0,0x540(%rsp)
  40725d:	00 00 
  40725f:	b8 40 00 00 00       	mov    $0x40,%eax
  407264:	c5 fd 7f 84 24 60 05 	vmovdqa %ymm0,0x560(%rsp)
  40726b:	00 00 
  40726d:	c5 fd 7f 84 24 80 05 	vmovdqa %ymm0,0x580(%rsp)
  407274:	00 00 
  407276:	c5 fd 7f 84 24 a0 05 	vmovdqa %ymm0,0x5a0(%rsp)
  40727d:	00 00 
  40727f:	c5 fd 7f 84 24 c0 05 	vmovdqa %ymm0,0x5c0(%rsp)
  407286:	00 00 
  407288:	c5 fd 7f 84 24 e0 05 	vmovdqa %ymm0,0x5e0(%rsp)
  40728f:	00 00 
  407291:	c5 fd 7f 84 24 00 06 	vmovdqa %ymm0,0x600(%rsp)
  407298:	00 00 
  40729a:	c5 fd 7f 84 24 20 06 	vmovdqa %ymm0,0x620(%rsp)
  4072a1:	00 00 
  4072a3:	c5 fd 7f 84 24 40 06 	vmovdqa %ymm0,0x640(%rsp)
  4072aa:	00 00 
  4072ac:	c5 fd 7f 84 24 60 06 	vmovdqa %ymm0,0x660(%rsp)
  4072b3:	00 00 
  4072b5:	c5 fd 7f 84 24 80 06 	vmovdqa %ymm0,0x680(%rsp)
  4072bc:	00 00 
  4072be:	c5 fd 7f 84 24 a0 06 	vmovdqa %ymm0,0x6a0(%rsp)
  4072c5:	00 00 
  4072c7:	c5 fd 7f 84 24 c0 06 	vmovdqa %ymm0,0x6c0(%rsp)
  4072ce:	00 00 
  4072d0:	c5 fd 7f 84 24 e0 06 	vmovdqa %ymm0,0x6e0(%rsp)
  4072d7:	00 00 
  4072d9:	c5 fd 7f 84 24 00 07 	vmovdqa %ymm0,0x700(%rsp)
  4072e0:	00 00 
  4072e2:	c5 fd 7f 84 24 20 07 	vmovdqa %ymm0,0x720(%rsp)
  4072e9:	00 00 
  4072eb:	c5 fd 7f 84 24 40 07 	vmovdqa %ymm0,0x740(%rsp)
  4072f2:	00 00 
  4072f4:	c5 fd 7f 84 24 60 07 	vmovdqa %ymm0,0x760(%rsp)
  4072fb:	00 00 
  4072fd:	c5 fd 7f 84 24 80 07 	vmovdqa %ymm0,0x780(%rsp)
  407304:	00 00 
  407306:	c5 fd 7f 84 24 a0 07 	vmovdqa %ymm0,0x7a0(%rsp)
  40730d:	00 00 
  40730f:	c5 fd 7f 84 24 c0 07 	vmovdqa %ymm0,0x7c0(%rsp)
  407316:	00 00 
  407318:	c5 fd 7f 84 24 e0 07 	vmovdqa %ymm0,0x7e0(%rsp)
  40731f:	00 00 
  407321:	c5 fd 7f 84 24 00 08 	vmovdqa %ymm0,0x800(%rsp)
  407328:	00 00 
  40732a:	c5 fd 7f 84 24 20 08 	vmovdqa %ymm0,0x820(%rsp)
  407331:	00 00 
  407333:	c5 fd 7f 84 24 40 08 	vmovdqa %ymm0,0x840(%rsp)
  40733a:	00 00 
  40733c:	c5 fd 7f 84 24 60 08 	vmovdqa %ymm0,0x860(%rsp)
  407343:	00 00 
  407345:	c5 fd 7f 84 24 80 08 	vmovdqa %ymm0,0x880(%rsp)
  40734c:	00 00 
  40734e:	c5 fd 7f 84 24 a0 08 	vmovdqa %ymm0,0x8a0(%rsp)
  407355:	00 00 
  407357:	c5 fd 7f 84 24 c0 08 	vmovdqa %ymm0,0x8c0(%rsp)
  40735e:	00 00 
  407360:	c5 fd 7f 84 24 e0 08 	vmovdqa %ymm0,0x8e0(%rsp)
  407367:	00 00 
  407369:	c5 fd 7f 84 24 00 09 	vmovdqa %ymm0,0x900(%rsp)
  407370:	00 00 
  407372:	c5 fd 7f 84 24 20 09 	vmovdqa %ymm0,0x920(%rsp)
  407379:	00 00 
  40737b:	c5 fd 7f 84 24 40 09 	vmovdqa %ymm0,0x940(%rsp)
  407382:	00 00 
  407384:	c5 fd 7f 84 24 60 09 	vmovdqa %ymm0,0x960(%rsp)
  40738b:	00 00 
  40738d:	c4 e2 7b 4b 24 02    	tileloadd (%rdx,%rax,1),%tmm4
  407393:	48 8d 94 24 80 05 00 	lea    0x580(%rsp),%rdx
  40739a:	00 
  40739b:	c4 e2 7b 4b 2c 02    	tileloadd (%rdx,%rax,1),%tmm5
  4073a1:	ba 00 04 00 00       	mov    $0x400,%edx
  4073a6:	c4 e2 7b 49 c0       	tilezero %tmm0
  4073ab:	c4 e2 7b 49 c8       	tilezero %tmm1
  4073b0:	c4 e2 7b 49 d0       	tilezero %tmm2
  4073b5:	c4 e2 7b 49 d8       	tilezero %tmm3
  4073ba:	b8 00 01 00 00       	mov    $0x100,%eax
  4073bf:	90                   	nop
  4073c0:	c4 e2 52 5c c4       	tdpbf16ps %tmm5,%tmm4,%tmm0
  4073c5:	c4 e2 52 5c cc       	tdpbf16ps %tmm5,%tmm4,%tmm1
  4073ca:	c4 e2 52 5c d4       	tdpbf16ps %tmm5,%tmm4,%tmm2
  4073cf:	c4 e2 52 5c dc       	tdpbf16ps %tmm5,%tmm4,%tmm3
  4073d4:	ff c8                	dec    %eax
  4073d6:	75 e8                	jne    4073c0 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x390>
  4073d8:	ff ca                	dec    %edx
  4073da:	75 ca                	jne    4073a6 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x376>
  4073dc:	48 8d 8c 24 80 09 00 	lea    0x980(%rsp),%rcx
  4073e3:	00 
  4073e4:	b8 40 00 00 00       	mov    $0x40,%eax
  4073e9:	c4 e2 7a 4b 04 01    	tilestored %tmm0,(%rcx,%rax,1)
  4073ef:	48 8d 94 24 80 0d 00 	lea    0xd80(%rsp),%rdx
  4073f6:	00 
  4073f7:	c4 e2 7a 4b 0c 02    	tilestored %tmm1,(%rdx,%rax,1)
  4073fd:	48 8d 94 24 80 11 00 	lea    0x1180(%rsp),%rdx
  407404:	00 
  407405:	c4 e2 7a 4b 14 02    	tilestored %tmm2,(%rdx,%rax,1)
  40740b:	48 8d 94 24 80 15 00 	lea    0x1580(%rsp),%rdx
  407412:	00 
  407413:	c4 e2 7a 4b 1c 02    	tilestored %tmm3,(%rdx,%rax,1)
  407419:	62 61 7d 28 6f 05 9d 	vmovdqa32 0x929d(%rip),%ymm24        # 4106c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  407420:	92 00 00 
  407423:	62 61 7d 28 6f 0d 73 	vmovdqa32 0x9273(%rip),%ymm25        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1a0>
  40742a:	92 00 00 
  40742d:	c4 e2 7d 58 3d 8a 92 	vpbroadcastd 0x928a(%rip),%ymm7        # 4106c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  407434:	00 00 
  407436:	48 8b 1d a3 92 00 00 	mov    0x92a3(%rip),%rbx        # 4106e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  40743d:	62 e2 7d 28 18 3d bd 	vbroadcastss 0x92bd(%rip),%ymm23        # 410704 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x204>
  407444:	92 00 00 
  407447:	62 01 7d 28 6f d0    	vmovdqa32 %ymm24,%ymm26
  40744d:	45 31 ed             	xor    %r13d,%r13d
  407450:	c5 fd 7f bc 24 20 01 	vmovdqa %ymm7,0x120(%rsp)
  407457:	00 00 
  407459:	62 01 7d 28 6f c1    	vmovdqa32 %ymm25,%ymm24
  40745f:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  407466:	48 8d 91 00 fc ff ff 	lea    -0x400(%rcx),%rdx
  40746d:	62 01 25 00 ef db    	vpxord %xmm27,%xmm27,%xmm27
  407473:	c5 fc 28 72 20       	vmovaps 0x20(%rdx),%ymm6
  407478:	c5 fc 28 1a          	vmovaps (%rdx),%ymm3
  40747c:	62 b3 7d 28 19 f4 01 	vextractf32x4 $0x1,%ymm6,%xmm20
  407483:	c5 fc 28 72 40       	vmovaps 0x40(%rdx),%ymm6
  407488:	62 b3 7d 28 19 dd 01 	vextractf32x4 $0x1,%ymm3,%xmm21
  40748f:	c4 e3 7d 19 f1 01    	vextractf128 $0x1,%ymm6,%xmm1
  407495:	c5 fc 28 72 60       	vmovaps 0x60(%rdx),%ymm6
  40749a:	c5 fc 28 9a 20 01 00 	vmovaps 0x120(%rdx),%ymm3
  4074a1:	00 
  4074a2:	c4 e3 7d 19 f0 01    	vextractf128 $0x1,%ymm6,%xmm0
  4074a8:	c5 fc 28 b2 80 00 00 	vmovaps 0x80(%rdx),%ymm6
  4074af:	00 
  4074b0:	c5 fc 5a c0          	vcvtps2pd %xmm0,%ymm0
  4074b4:	c4 c3 7d 19 f5 01    	vextractf128 $0x1,%ymm6,%xmm13
  4074ba:	c5 fc 28 b2 a0 00 00 	vmovaps 0xa0(%rdx),%ymm6
  4074c1:	00 
  4074c2:	c5 fd 29 84 24 00 01 	vmovapd %ymm0,0x100(%rsp)
  4074c9:	00 00 
  4074cb:	c4 c3 7d 19 f4 01    	vextractf128 $0x1,%ymm6,%xmm12
  4074d1:	c5 fc 28 b2 c0 00 00 	vmovaps 0xc0(%rdx),%ymm6
  4074d8:	00 
  4074d9:	c5 fc 28 82 a0 01 00 	vmovaps 0x1a0(%rdx),%ymm0
  4074e0:	00 
  4074e1:	c4 c3 7d 19 f1 01    	vextractf128 $0x1,%ymm6,%xmm9
  4074e7:	c4 e3 7d 19 dd 01    	vextractf128 $0x1,%ymm3,%xmm5
  4074ed:	c5 fc 28 b2 e0 00 00 	vmovaps 0xe0(%rdx),%ymm6
  4074f4:	00 
  4074f5:	c5 fc 28 9a 40 01 00 	vmovaps 0x140(%rdx),%ymm3
  4074fc:	00 
  4074fd:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  407504:	62 61 7c 28 5a 72 02 	vcvtps2pd 0x20(%rdx),%ymm30
  40750b:	62 61 7c 28 5a 6a 04 	vcvtps2pd 0x40(%rdx),%ymm29
  407512:	c5 7c 5a b2 40 01 00 	vcvtps2pd 0x140(%rdx),%ymm14
  407519:	00 
  40751a:	62 e1 7c 28 5a 32    	vcvtps2pd (%rdx),%ymm22
  407520:	62 e1 7c 28 5a 5a 06 	vcvtps2pd 0x60(%rdx),%ymm19
  407527:	62 e1 7c 28 5a 52 08 	vcvtps2pd 0x80(%rdx),%ymm18
  40752e:	62 e1 7c 28 5a 4a 0a 	vcvtps2pd 0xa0(%rdx),%ymm17
  407535:	62 e1 7c 28 5a 42 0c 	vcvtps2pd 0xc0(%rdx),%ymm16
  40753c:	c5 7c 5a ba e0 00 00 	vcvtps2pd 0xe0(%rdx),%ymm15
  407543:	00 
  407544:	62 61 7c 28 5a 62 10 	vcvtps2pd 0x100(%rdx),%ymm28
  40754b:	62 61 7c 28 5a 4a 12 	vcvtps2pd 0x120(%rdx),%ymm25
  407552:	c5 7c 5a 9a 60 01 00 	vcvtps2pd 0x160(%rdx),%ymm11
  407559:	00 
  40755a:	c5 7c 5a 92 80 01 00 	vcvtps2pd 0x180(%rdx),%ymm10
  407561:	00 
  407562:	c5 7c 5a 82 a0 01 00 	vcvtps2pd 0x1a0(%rdx),%ymm8
  407569:	00 
  40756a:	c5 fc 28 92 80 01 00 	vmovaps 0x180(%rdx),%ymm2
  407571:	00 
  407572:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  407578:	c4 e3 7d 19 f7 01    	vextractf128 $0x1,%ymm6,%xmm7
  40757e:	62 61 7c 28 5a 7a 1c 	vcvtps2pd 0x1c0(%rdx),%ymm31
  407585:	c5 fc 28 b2 00 01 00 	vmovaps 0x100(%rdx),%ymm6
  40758c:	00 
  40758d:	c4 e3 7d 19 dc 01    	vextractf128 $0x1,%ymm3,%xmm4
  407593:	c5 fd 29 44 24 40    	vmovapd %ymm0,0x40(%rsp)
  407599:	c5 fc 28 9a 60 01 00 	vmovaps 0x160(%rdx),%ymm3
  4075a0:	00 
  4075a1:	c5 fc 5a c9          	vcvtps2pd %xmm1,%ymm1
  4075a5:	c5 fd 29 8c 24 e0 00 	vmovapd %ymm1,0xe0(%rsp)
  4075ac:	00 00 
  4075ae:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0x60(%rsp)
  4075b5:	03 
  4075b6:	c5 fc 28 82 c0 01 00 	vmovaps 0x1c0(%rdx),%ymm0
  4075bd:	00 
  4075be:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  4075c5:	07 
  4075c6:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  4075cd:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  4075d3:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  4075da:	00 00 
  4075dc:	c5 fc 28 82 e0 01 00 	vmovaps 0x1e0(%rdx),%ymm0
  4075e3:	00 
  4075e4:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  4075e9:	62 61 7c 28 5a 7a 1e 	vcvtps2pd 0x1e0(%rdx),%ymm31
  4075f0:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xa0(%rsp)
  4075f7:	05 
  4075f8:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  4075ff:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  407604:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  40760a:	c5 fd 29 84 24 c0 00 	vmovapd %ymm0,0xc0(%rsp)
  407611:	00 00 
  407613:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  407618:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  40761c:	62 b1 cd 00 15 ce    	vunpckhpd %xmm22,%xmm22,%xmm1
  407622:	62 a3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm22,%xmm22
  407629:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40762d:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  407634:	07 
  407635:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  40763a:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  40763f:	62 61 fd 08 6e f8    	vmovq  %rax,%xmm31
  407645:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  40764a:	62 91 f7 08 58 cf    	vaddsd %xmm31,%xmm1,%xmm1
  407650:	62 21 cd 00 15 fe    	vunpckhpd %xmm22,%xmm22,%xmm31
  407656:	62 a1 7c 28 5a ed    	vcvtps2pd %xmm21,%ymm21
  40765c:	62 f1 87 00 58 c9    	vaddsd %xmm1,%xmm31,%xmm1
  407662:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  407669:	07 
  40766a:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  40766f:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  407674:	62 e1 fd 08 6e f0    	vmovq  %rax,%xmm22
  40767a:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  40767f:	62 b1 f7 08 58 ce    	vaddsd %xmm22,%xmm1,%xmm1
  407685:	62 21 d5 00 15 fd    	vunpckhpd %xmm21,%xmm21,%xmm31
  40768b:	62 a3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm21,%xmm21
  407692:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  407699:	07 
  40769a:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  40769f:	62 61 87 00 58 f9    	vaddsd %xmm1,%xmm31,%xmm31
  4076a5:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  4076aa:	62 61 fd 08 13 74 24 	vmovlpd %xmm30,0x38(%rsp)
  4076b1:	07 
  4076b2:	62 01 f7 08 58 ff    	vaddsd %xmm31,%xmm1,%xmm31
  4076b8:	62 a1 d5 00 15 f5    	vunpckhpd %xmm21,%xmm21,%xmm22
  4076be:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  4076c3:	62 81 cf 00 58 f7    	vaddsd %xmm31,%xmm22,%xmm22
  4076c9:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  4076ce:	62 01 8d 00 15 fe    	vunpckhpd %xmm30,%xmm30,%xmm31
  4076d4:	62 a1 f7 08 58 f6    	vaddsd %xmm22,%xmm1,%xmm22
  4076da:	62 a1 7c 28 5a e4    	vcvtps2pd %xmm20,%ymm20
  4076e0:	c5 fd 28 8c 24 e0 00 	vmovapd 0xe0(%rsp),%ymm1
  4076e7:	00 00 
  4076e9:	62 21 87 00 58 fe    	vaddsd %xmm22,%xmm31,%xmm31
  4076ef:	62 23 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm30,%xmm22
  4076f6:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  4076fd:	07 
  4076fe:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  407705:	07 
  407706:	62 a1 cd 00 15 f6    	vunpckhpd %xmm22,%xmm22,%xmm22
  40770c:	62 01 8f 00 58 f7    	vaddsd %xmm31,%xmm30,%xmm30
  407712:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  407719:	07 
  40771a:	62 61 ff 08 10 7c 24 	vmovsd 0x38(%rsp),%xmm31
  407721:	07 
  407722:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  407728:	62 21 dd 00 15 f4    	vunpckhpd %xmm20,%xmm20,%xmm30
  40772e:	62 a3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm20,%xmm20
  407735:	62 a1 87 00 58 f6    	vaddsd %xmm22,%xmm31,%xmm22
  40773b:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  407742:	07 
  407743:	62 a1 dd 00 15 ec    	vunpckhpd %xmm20,%xmm20,%xmm21
  407749:	62 21 8f 00 58 f6    	vaddsd %xmm22,%xmm30,%xmm30
  40774f:	62 e1 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm22
  407756:	07 
  407757:	62 61 fd 08 13 6c 24 	vmovlpd %xmm29,0x38(%rsp)
  40775e:	07 
  40775f:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  407765:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  40776c:	07 
  40776d:	c5 f9 13 8c 24 e0 00 	vmovlpd %xmm1,0xe0(%rsp)
  407774:	00 00 
  407776:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  40777c:	62 81 95 00 15 f5    	vunpckhpd %xmm29,%xmm29,%xmm22
  407782:	c4 41 7c 5a ed       	vcvtps2pd %xmm13,%ymm13
  407787:	62 a1 8f 00 58 ed    	vaddsd %xmm21,%xmm30,%xmm21
  40778d:	c4 41 7c 5a e4       	vcvtps2pd %xmm12,%ymm12
  407792:	c4 41 7c 5a c9       	vcvtps2pd %xmm9,%ymm9
  407797:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  40779d:	62 23 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm29,%xmm21
  4077a4:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  4077ab:	07 
  4077ac:	62 61 ff 08 10 6c 24 	vmovsd 0x38(%rsp),%xmm29
  4077b3:	07 
  4077b4:	62 a1 d5 00 15 ed    	vunpckhpd %xmm21,%xmm21,%xmm21
  4077ba:	62 a1 97 00 58 f6    	vaddsd %xmm22,%xmm29,%xmm22
  4077c0:	62 61 ff 08 10 6c 24 	vmovsd 0xe0(%rsp),%xmm29
  4077c7:	1c 
  4077c8:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0xe0(%rsp)
  4077cf:	1c 
  4077d0:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  4077d6:	62 e1 f5 08 15 f1    	vunpckhpd %xmm1,%xmm1,%xmm22
  4077dc:	62 f3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm1,%xmm1
  4077e3:	62 a1 97 00 58 ed    	vaddsd %xmm21,%xmm29,%xmm21
  4077e9:	62 e1 f5 08 15 e1    	vunpckhpd %xmm1,%xmm1,%xmm20
  4077ef:	c5 fc 5a ff          	vcvtps2pd %xmm7,%ymm7
  4077f3:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  4077f9:	c4 e3 7d 19 f6 01    	vextractf128 $0x1,%ymm6,%xmm6
  4077ff:	c5 fc 5a f6          	vcvtps2pd %xmm6,%ymm6
  407803:	62 a1 f7 08 58 ee    	vaddsd %xmm22,%xmm1,%xmm21
  407809:	62 e1 ff 08 10 74 24 	vmovsd 0xe0(%rsp),%xmm22
  407810:	1c 
  407811:	c5 fc 5a ed          	vcvtps2pd %xmm5,%ymm5
  407815:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  40781b:	62 a1 e5 00 15 eb    	vunpckhpd %xmm19,%xmm19,%xmm21
  407821:	62 a3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm19,%xmm19
  407828:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  40782e:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0xe0(%rsp)
  407835:	1c 
  407836:	62 e1 ff 08 10 74 24 	vmovsd 0xe0(%rsp),%xmm22
  40783d:	1c 
  40783e:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  407844:	c5 fd 28 84 24 00 01 	vmovapd 0x100(%rsp),%ymm0
  40784b:	00 00 
  40784d:	62 a1 e5 00 15 e3    	vunpckhpd %xmm19,%xmm19,%xmm20
  407853:	62 a1 cf 00 58 ed    	vaddsd %xmm21,%xmm22,%xmm21
  407859:	c5 f9 13 84 24 00 01 	vmovlpd %xmm0,0x100(%rsp)
  407860:	00 00 
  407862:	62 e1 ff 08 10 74 24 	vmovsd 0x100(%rsp),%xmm22
  407869:	20 
  40786a:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  407870:	62 e1 fd 08 15 e8    	vunpckhpd %xmm0,%xmm0,%xmm21
  407876:	62 f3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm0,%xmm0
  40787d:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  407883:	62 e1 fd 08 15 d8    	vunpckhpd %xmm0,%xmm0,%xmm19
  407889:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x100(%rsp)
  407890:	20 
  407891:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  407897:	c5 fc 5a e4          	vcvtps2pd %xmm4,%ymm4
  40789b:	c4 e3 7d 19 db 01    	vextractf128 $0x1,%ymm3,%xmm3
  4078a1:	62 a1 ff 08 58 e5    	vaddsd %xmm21,%xmm0,%xmm20
  4078a7:	62 e1 ff 08 10 6c 24 	vmovsd 0x100(%rsp),%xmm21
  4078ae:	20 
  4078af:	c5 fc 5a db          	vcvtps2pd %xmm3,%ymm3
  4078b3:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  4078b9:	62 a1 ed 00 15 e2    	vunpckhpd %xmm18,%xmm18,%xmm20
  4078bf:	62 a3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm18,%xmm18
  4078c6:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  4078cc:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x100(%rsp)
  4078d3:	20 
  4078d4:	62 e1 ff 08 10 6c 24 	vmovsd 0x100(%rsp),%xmm21
  4078db:	20 
  4078dc:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  4078e2:	62 a1 ed 00 15 da    	vunpckhpd %xmm18,%xmm18,%xmm19
  4078e8:	c5 79 13 ac 24 00 01 	vmovlpd %xmm13,0x100(%rsp)
  4078ef:	00 00 
  4078f1:	62 a1 d7 00 58 e4    	vaddsd %xmm20,%xmm21,%xmm20
  4078f7:	62 e1 ff 08 10 6c 24 	vmovsd 0x100(%rsp),%xmm21
  4078fe:	20 
  4078ff:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x100(%rsp)
  407906:	20 
  407907:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  40790d:	62 c1 95 08 15 e5    	vunpckhpd %xmm13,%xmm13,%xmm20
  407913:	62 53 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm13,%xmm13
  40791a:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  407920:	62 c1 95 08 15 d5    	vunpckhpd %xmm13,%xmm13,%xmm18
  407926:	c4 e3 7d 19 d2 01    	vextractf128 $0x1,%ymm2,%xmm2
  40792c:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  407932:	c5 fc 5a d2          	vcvtps2pd %xmm2,%ymm2
  407936:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  40793d:	62 a1 97 08 58 dc    	vaddsd %xmm20,%xmm13,%xmm19
  407943:	62 e1 ff 08 10 64 24 	vmovsd 0x100(%rsp),%xmm20
  40794a:	20 
  40794b:	62 43 fd 28 19 cd 01 	vextractf64x2 $0x1,%ymm25,%xmm13
  407952:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  407958:	62 a1 f5 00 15 d9    	vunpckhpd %xmm17,%xmm17,%xmm19
  40795e:	62 a3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm17,%xmm17
  407965:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  40796b:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x100(%rsp)
  407972:	20 
  407973:	62 e1 ff 08 10 64 24 	vmovsd 0x100(%rsp),%xmm20
  40797a:	20 
  40797b:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  407981:	62 a1 f5 00 15 d1    	vunpckhpd %xmm17,%xmm17,%xmm18
  407987:	c5 79 13 a4 24 00 01 	vmovlpd %xmm12,0x100(%rsp)
  40798e:	00 00 
  407990:	62 a1 df 00 58 db    	vaddsd %xmm19,%xmm20,%xmm19
  407996:	62 e1 ff 08 10 64 24 	vmovsd 0x100(%rsp),%xmm20
  40799d:	20 
  40799e:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x100(%rsp)
  4079a5:	20 
  4079a6:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  4079ac:	62 c1 9d 08 15 dc    	vunpckhpd %xmm12,%xmm12,%xmm19
  4079b2:	62 53 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm12,%xmm12
  4079b9:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  4079bf:	62 c1 9d 08 15 cc    	vunpckhpd %xmm12,%xmm12,%xmm17
  4079c5:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  4079cb:	62 a1 9f 08 58 d3    	vaddsd %xmm19,%xmm12,%xmm18
  4079d1:	62 e1 ff 08 10 5c 24 	vmovsd 0x100(%rsp),%xmm19
  4079d8:	20 
  4079d9:	62 53 fd 28 19 f4 01 	vextractf64x2 $0x1,%ymm14,%xmm12
  4079e0:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  4079e6:	62 a1 fd 00 15 d0    	vunpckhpd %xmm16,%xmm16,%xmm18
  4079ec:	62 a3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm16,%xmm16
  4079f3:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  4079f9:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x100(%rsp)
  407a00:	20 
  407a01:	62 e1 ff 08 10 5c 24 	vmovsd 0x100(%rsp),%xmm19
  407a08:	20 
  407a09:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  407a0f:	62 a1 fd 00 15 c8    	vunpckhpd %xmm16,%xmm16,%xmm17
  407a15:	c5 79 13 8c 24 00 01 	vmovlpd %xmm9,0x100(%rsp)
  407a1c:	00 00 
  407a1e:	62 a1 e7 00 58 d2    	vaddsd %xmm18,%xmm19,%xmm18
  407a24:	62 e1 ff 08 10 5c 24 	vmovsd 0x100(%rsp),%xmm19
  407a2b:	20 
  407a2c:	c5 79 13 bc 24 00 01 	vmovlpd %xmm15,0x100(%rsp)
  407a33:	00 00 
  407a35:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  407a3b:	62 c1 b5 08 15 d1    	vunpckhpd %xmm9,%xmm9,%xmm18
  407a41:	62 53 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm9,%xmm9
  407a48:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  407a4e:	62 c1 b5 08 15 c1    	vunpckhpd %xmm9,%xmm9,%xmm16
  407a54:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  407a5a:	62 a1 b7 08 58 ca    	vaddsd %xmm18,%xmm9,%xmm17
  407a60:	62 e1 ff 08 10 54 24 	vmovsd 0x100(%rsp),%xmm18
  407a67:	20 
  407a68:	c5 f9 13 bc 24 00 01 	vmovlpd %xmm7,0x100(%rsp)
  407a6f:	00 00 
  407a71:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  407a77:	62 c1 85 08 15 cf    	vunpckhpd %xmm15,%xmm15,%xmm17
  407a7d:	62 53 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm15,%xmm15
  407a84:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  407a8a:	62 e1 ff 08 10 54 24 	vmovsd 0x100(%rsp),%xmm18
  407a91:	20 
  407a92:	62 61 fd 08 13 64 24 	vmovlpd %xmm28,0x100(%rsp)
  407a99:	20 
  407a9a:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  407aa0:	62 c1 85 08 15 c7    	vunpckhpd %xmm15,%xmm15,%xmm16
  407aa6:	62 a1 87 08 58 c9    	vaddsd %xmm17,%xmm15,%xmm17
  407aac:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  407ab2:	62 e1 c5 08 15 cf    	vunpckhpd %xmm7,%xmm7,%xmm17
  407ab8:	62 f3 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm7,%xmm7
  407abf:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  407ac5:	c5 41 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm15
  407ac9:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  407acf:	62 a1 c7 08 58 c1    	vaddsd %xmm17,%xmm7,%xmm16
  407ad5:	62 e1 ff 08 10 4c 24 	vmovsd 0x100(%rsp),%xmm17
  407adc:	20 
  407add:	c5 f9 13 b4 24 00 01 	vmovlpd %xmm6,0x100(%rsp)
  407ae4:	00 00 
  407ae6:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  407aec:	62 81 9d 00 15 c4    	vunpckhpd %xmm28,%xmm28,%xmm16
  407af2:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  407af8:	62 e1 ff 08 10 4c 24 	vmovsd 0x100(%rsp),%xmm17
  407aff:	20 
  407b00:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  407b06:	62 43 fd 28 19 e7 01 	vextractf64x2 $0x1,%ymm28,%xmm15
  407b0d:	62 a1 87 08 58 c0    	vaddsd %xmm16,%xmm15,%xmm16
  407b13:	c4 41 01 15 ff       	vunpckhpd %xmm15,%xmm15,%xmm15
  407b18:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  407b1e:	62 e1 cd 08 15 c6    	vunpckhpd %xmm6,%xmm6,%xmm16
  407b24:	62 f3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm6,%xmm6
  407b2b:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  407b31:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  407b37:	62 31 cf 08 58 f8    	vaddsd %xmm16,%xmm6,%xmm15
  407b3d:	c5 c9 15 f6          	vunpckhpd %xmm6,%xmm6,%xmm6
  407b41:	c4 c1 4b 58 f7       	vaddsd %xmm15,%xmm6,%xmm6
  407b46:	62 11 b5 00 15 f9    	vunpckhpd %xmm25,%xmm25,%xmm15
  407b4c:	62 f1 b7 00 58 f6    	vaddsd %xmm6,%xmm25,%xmm6
  407b52:	c5 03 58 fe          	vaddsd %xmm6,%xmm15,%xmm15
  407b56:	c4 c1 13 58 f7       	vaddsd %xmm15,%xmm13,%xmm6
  407b5b:	c4 41 11 15 ed       	vunpckhpd %xmm13,%xmm13,%xmm13
  407b60:	c5 13 58 ee          	vaddsd %xmm6,%xmm13,%xmm13
  407b64:	c5 d1 15 f5          	vunpckhpd %xmm5,%xmm5,%xmm6
  407b68:	c4 41 53 58 ed       	vaddsd %xmm13,%xmm5,%xmm13
  407b6d:	62 f3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm5,%xmm5
  407b74:	c4 c1 4b 58 f5       	vaddsd %xmm13,%xmm6,%xmm6
  407b79:	c5 d3 58 f6          	vaddsd %xmm6,%xmm5,%xmm6
  407b7d:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  407b81:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  407b85:	c4 c1 09 15 f6       	vunpckhpd %xmm14,%xmm14,%xmm6
  407b8a:	c5 8b 58 ed          	vaddsd %xmm5,%xmm14,%xmm5
  407b8e:	c5 cb 58 f5          	vaddsd %xmm5,%xmm6,%xmm6
  407b92:	c5 9b 58 ee          	vaddsd %xmm6,%xmm12,%xmm5
  407b96:	c4 41 19 15 e4       	vunpckhpd %xmm12,%xmm12,%xmm12
  407b9b:	c5 1b 58 e5          	vaddsd %xmm5,%xmm12,%xmm12
  407b9f:	c5 d9 15 ec          	vunpckhpd %xmm4,%xmm4,%xmm5
  407ba3:	c4 c1 5b 58 f4       	vaddsd %xmm12,%xmm4,%xmm6
  407ba8:	62 f3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm4,%xmm4
  407baf:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  407bb3:	c5 fd 28 74 24 40    	vmovapd 0x40(%rsp),%ymm6
  407bb9:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  407bbd:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  407bc1:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  407bc8:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  407bcc:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  407bd1:	c5 a3 58 ed          	vaddsd %xmm5,%xmm11,%xmm5
  407bd5:	62 53 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm11,%xmm11
  407bdc:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  407be0:	c5 a3 58 ec          	vaddsd %xmm4,%xmm11,%xmm5
  407be4:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  407be9:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  407bed:	c5 e1 15 eb          	vunpckhpd %xmm3,%xmm3,%xmm5
  407bf1:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  407bf5:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  407bf9:	62 f3 fd 28 19 dc 01 	vextractf64x2 $0x1,%ymm3,%xmm4
  407c00:	c5 db 58 dd          	vaddsd %xmm5,%xmm4,%xmm3
  407c04:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  407c08:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  407c0c:	c4 c1 29 15 da       	vunpckhpd %xmm10,%xmm10,%xmm3
  407c11:	c5 ab 58 e4          	vaddsd %xmm4,%xmm10,%xmm4
  407c15:	62 53 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm10,%xmm10
  407c1c:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  407c20:	c5 ab 58 db          	vaddsd %xmm3,%xmm10,%xmm3
  407c24:	c4 41 29 15 d2       	vunpckhpd %xmm10,%xmm10,%xmm10
  407c29:	c5 2b 58 d3          	vaddsd %xmm3,%xmm10,%xmm10
  407c2d:	c5 e9 15 da          	vunpckhpd %xmm2,%xmm2,%xmm3
  407c31:	c4 c1 6b 58 e2       	vaddsd %xmm10,%xmm2,%xmm4
  407c36:	62 f3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm2,%xmm2
  407c3d:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  407c41:	c5 eb 58 db          	vaddsd %xmm3,%xmm2,%xmm3
  407c45:	c5 e9 15 d2          	vunpckhpd %xmm2,%xmm2,%xmm2
  407c49:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  407c4d:	c4 c1 39 15 d8       	vunpckhpd %xmm8,%xmm8,%xmm3
  407c52:	c5 bb 58 d2          	vaddsd %xmm2,%xmm8,%xmm2
  407c56:	62 53 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm8
  407c5d:	c4 41 39 15 c8       	vunpckhpd %xmm8,%xmm8,%xmm9
  407c62:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  407c66:	c5 bb 58 d3          	vaddsd %xmm3,%xmm8,%xmm2
  407c6a:	c5 33 58 ca          	vaddsd %xmm2,%xmm9,%xmm9
  407c6e:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  407c72:	c4 c1 4b 58 d9       	vaddsd %xmm9,%xmm6,%xmm3
  407c77:	c5 fd 28 74 24 60    	vmovapd 0x60(%rsp),%ymm6
  407c7d:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  407c81:	62 d3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm8
  407c88:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  407c8c:	c5 f1 15 c9          	vunpckhpd %xmm1,%xmm1,%xmm1
  407c90:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  407c94:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  407c98:	c5 cb 58 c9          	vaddsd %xmm1,%xmm6,%xmm1
  407c9c:	c5 fd 28 b4 24 80 00 	vmovapd 0x80(%rsp),%ymm6
  407ca3:	00 00 
  407ca5:	c5 fc 28 a2 00 fe ff 	vmovaps -0x200(%rdx),%ymm4
  407cac:	ff 
  407cad:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  407cb1:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  407cb8:	62 e1 7c 28 28 52 f2 	vmovaps -0x1c0(%rdx),%ymm18
  407cbf:	c5 bb 58 ca          	vaddsd %xmm2,%xmm8,%xmm1
  407cc3:	c4 41 39 15 c0       	vunpckhpd %xmm8,%xmm8,%xmm8
  407cc8:	c5 fc 28 aa 80 fe ff 	vmovaps -0x180(%rdx),%ymm5
  407ccf:	ff 
  407cd0:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  407cd4:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  407cd8:	62 f2 3d 20 7f 62 f1 	vpermt2ps -0x1e0(%rdx),%ymm24,%ymm4
  407cdf:	c4 c1 4b 58 d0       	vaddsd %xmm8,%xmm6,%xmm2
  407ce4:	c5 fd 28 b4 24 a0 00 	vmovapd 0xa0(%rsp),%ymm6
  407ceb:	00 00 
  407ced:	c5 7c 28 ba c0 fe ff 	vmovaps -0x140(%rdx),%ymm15
  407cf4:	ff 
  407cf5:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  407cf9:	62 f3 fd 28 19 f7 01 	vextractf64x2 $0x1,%ymm6,%xmm7
  407d00:	62 e2 3d 20 7f 52 f3 	vpermt2ps -0x1a0(%rdx),%ymm24,%ymm18
  407d07:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  407d0b:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  407d0f:	62 f2 3d 20 7f 6a f5 	vpermt2ps -0x160(%rdx),%ymm24,%ymm5
  407d16:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  407d1a:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  407d1e:	62 e1 7c 28 28 4a fa 	vmovaps -0xc0(%rdx),%ymm17
  407d25:	c5 cb 58 c0          	vaddsd %xmm0,%xmm6,%xmm0
  407d29:	c5 fd 28 b4 24 c0 00 	vmovapd 0xc0(%rsp),%ymm6
  407d30:	00 00 
  407d32:	c5 fc 28 52 80       	vmovaps -0x80(%rdx),%ymm2
  407d37:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  407d3b:	c5 7c 28 ec          	vmovaps %ymm4,%ymm13
  407d3f:	62 72 3d 20 7f 7a f7 	vpermt2ps -0x120(%rdx),%ymm24,%ymm15
  407d46:	c5 c3 58 c1          	vaddsd %xmm1,%xmm7,%xmm0
  407d4a:	c5 c1 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm7
  407d4e:	62 32 3d 20 7f ea    	vpermt2ps %ymm18,%ymm24,%ymm13
  407d54:	c5 c3 58 f8          	vaddsd %xmm0,%xmm7,%xmm7
  407d58:	c5 c9 15 c6          	vunpckhpd %xmm6,%xmm6,%xmm0
  407d5c:	62 b2 2d 20 7f e2    	vpermt2ps %ymm18,%ymm26,%ymm4
  407d62:	c5 cb 58 cf          	vaddsd %xmm7,%xmm6,%xmm1
  407d66:	c5 7c 28 8a 40 fe ff 	vmovaps -0x1c0(%rdx),%ymm9
  407d6d:	ff 
  407d6e:	c5 fc 28 ba 80 fe ff 	vmovaps -0x180(%rdx),%ymm7
  407d75:	ff 
  407d76:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  407d7a:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  407d81:	c5 7c 28 b2 c0 fe ff 	vmovaps -0x140(%rdx),%ymm14
  407d88:	ff 
  407d89:	c5 fb 58 d9          	vaddsd %xmm1,%xmm0,%xmm3
  407d8d:	c5 fc 28 8a 00 ff ff 	vmovaps -0x100(%rdx),%ymm1
  407d94:	ff 
  407d95:	c5 fc 28 b2 00 fe ff 	vmovaps -0x200(%rdx),%ymm6
  407d9c:	ff 
  407d9d:	62 f2 3d 20 7f 4a f9 	vpermt2ps -0xe0(%rdx),%ymm24,%ymm1
  407da4:	c5 7c 28 9a 00 ff ff 	vmovaps -0x100(%rdx),%ymm11
  407dab:	ff 
  407dac:	c5 7c 28 82 40 ff ff 	vmovaps -0xc0(%rdx),%ymm8
  407db3:	ff 
  407db4:	62 e1 7c 28 28 42 fc 	vmovaps -0x80(%rdx),%ymm16
  407dbb:	62 e1 7c 28 28 d5    	vmovaps %ymm5,%ymm18
  407dc1:	c5 7c 28 62 c0       	vmovaps -0x40(%rdx),%ymm12
  407dc6:	62 e2 3d 20 7f 4a fb 	vpermt2ps -0xa0(%rdx),%ymm24,%ymm17
  407dcd:	62 c2 3d 20 7f d7    	vpermt2ps %ymm15,%ymm24,%ymm18
  407dd3:	62 d2 2d 20 7f ef    	vpermt2ps %ymm15,%ymm26,%ymm5
  407dd9:	62 f2 3d 20 7f 52 fd 	vpermt2ps -0x60(%rdx),%ymm24,%ymm2
  407de0:	c5 7c 28 f9          	vmovaps %ymm1,%ymm15
  407de4:	62 72 2d 20 7f 4a f3 	vpermt2ps -0x1a0(%rdx),%ymm26,%ymm9
  407deb:	62 72 2d 20 7f 72 f7 	vpermt2ps -0x120(%rdx),%ymm26,%ymm14
  407df2:	62 72 2d 20 7f 42 fb 	vpermt2ps -0xa0(%rdx),%ymm26,%ymm8
  407df9:	62 f2 2d 20 7f 72 f1 	vpermt2ps -0x1e0(%rdx),%ymm26,%ymm6
  407e00:	62 f2 2d 20 7f 7a f5 	vpermt2ps -0x160(%rdx),%ymm26,%ymm7
  407e07:	62 72 2d 20 7f 5a f9 	vpermt2ps -0xe0(%rdx),%ymm26,%ymm11
  407e0e:	62 e2 2d 20 7f 42 fd 	vpermt2ps -0x60(%rdx),%ymm26,%ymm16
  407e15:	62 32 3d 20 7f f9    	vpermt2ps %ymm17,%ymm24,%ymm15
  407e1b:	62 72 3d 20 7f 62 ff 	vpermt2ps -0x20(%rdx),%ymm24,%ymm12
  407e22:	62 b2 2d 20 7f c9    	vpermt2ps %ymm17,%ymm26,%ymm1
  407e28:	62 e1 7c 28 28 ca    	vmovaps %ymm2,%ymm17
  407e2e:	62 c2 3d 20 7f cc    	vpermt2ps %ymm12,%ymm24,%ymm17
  407e34:	62 d2 2d 20 7f d4    	vpermt2ps %ymm12,%ymm26,%ymm2
  407e3a:	c5 7c 28 e6          	vmovaps %ymm6,%ymm12
  407e3e:	62 52 3d 20 7f e1    	vpermt2ps %ymm9,%ymm24,%ymm12
  407e44:	62 d2 2d 20 7f f1    	vpermt2ps %ymm9,%ymm26,%ymm6
  407e4a:	c5 7c 28 52 c0       	vmovaps -0x40(%rdx),%ymm10
  407e4f:	c5 7c 28 cf          	vmovaps %ymm7,%ymm9
  407e53:	62 52 3d 20 7f ce    	vpermt2ps %ymm14,%ymm24,%ymm9
  407e59:	62 d2 2d 20 7f fe    	vpermt2ps %ymm14,%ymm26,%ymm7
  407e5f:	c4 41 7c 28 f3       	vmovaps %ymm11,%ymm14
  407e64:	62 72 2d 20 7f 52 ff 	vpermt2ps -0x20(%rdx),%ymm26,%ymm10
  407e6b:	62 52 3d 20 7f f0    	vpermt2ps %ymm8,%ymm24,%ymm14
  407e71:	62 52 2d 20 7f d8    	vpermt2ps %ymm8,%ymm26,%ymm11
  407e77:	62 c1 7c 28 28 e7    	vmovaps %ymm15,%ymm20
  407e7d:	62 31 7c 28 28 c0    	vmovaps %ymm16,%ymm8
  407e83:	62 52 3d 20 7f c2    	vpermt2ps %ymm10,%ymm24,%ymm8
  407e89:	62 c2 2d 20 7f c2    	vpermt2ps %ymm10,%ymm26,%ymm16
  407e8f:	62 a2 3d 20 7f e1    	vpermt2ps %ymm17,%ymm24,%ymm20
  407e95:	62 32 2d 20 7f f9    	vpermt2ps %ymm17,%ymm26,%ymm15
  407e9b:	c4 41 7c 28 d5       	vmovaps %ymm13,%ymm10
  407ea0:	62 c1 7c 28 28 cc    	vmovaps %ymm12,%ymm17
  407ea6:	62 c1 7c 28 28 de    	vmovaps %ymm14,%ymm19
  407eac:	62 32 3d 20 7f d2    	vpermt2ps %ymm18,%ymm24,%ymm10
  407eb2:	62 32 2d 20 7f ea    	vpermt2ps %ymm18,%ymm26,%ymm13
  407eb8:	62 c2 3d 20 7f c9    	vpermt2ps %ymm9,%ymm24,%ymm17
  407ebe:	62 c2 3d 20 7f d8    	vpermt2ps %ymm8,%ymm24,%ymm19
  407ec4:	62 52 2d 20 7f f0    	vpermt2ps %ymm8,%ymm26,%ymm14
  407eca:	62 e1 7c 28 28 d1    	vmovaps %ymm1,%ymm18
  407ed0:	c5 7c 28 c6          	vmovaps %ymm6,%ymm8
  407ed4:	62 f2 2d 20 7f f7    	vpermt2ps %ymm7,%ymm26,%ymm6
  407eda:	62 f2 2d 20 7f ca    	vpermt2ps %ymm2,%ymm26,%ymm1
  407ee0:	62 e2 3d 20 7f d2    	vpermt2ps %ymm2,%ymm24,%ymm18
  407ee6:	c5 fc 28 d6          	vmovaps %ymm6,%ymm2
  407eea:	62 b1 7c 28 28 f1    	vmovaps %ymm17,%ymm6
  407ef0:	62 b2 3d 20 7f f3    	vpermt2ps %ymm19,%ymm24,%ymm6
  407ef6:	62 52 2d 20 7f e1    	vpermt2ps %ymm9,%ymm26,%ymm12
  407efc:	62 b1 4c 28 c2 cf 04 	vcmpneqps %ymm23,%ymm6,%k1
  407f03:	c5 7c 28 cc          	vmovaps %ymm4,%ymm9
  407f07:	c5 7c 29 d6          	vmovaps %ymm10,%ymm6
  407f0b:	62 72 3d 20 7f cd    	vpermt2ps %ymm5,%ymm24,%ymm9
  407f11:	62 b2 3d 20 7f f4    	vpermt2ps %ymm20,%ymm24,%ymm6
  407f17:	62 b1 4c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm6,%k0
  407f1e:	c5 7c 29 ce          	vmovaps %ymm9,%ymm6
  407f22:	62 f2 2d 20 7f e5    	vpermt2ps %ymm5,%ymm26,%ymm4
  407f28:	62 72 3d 20 7f c7    	vpermt2ps %ymm7,%ymm24,%ymm8
  407f2e:	c5 7c 29 dd          	vmovaps %ymm11,%ymm5
  407f32:	62 b2 3d 20 7f f2    	vpermt2ps %ymm18,%ymm24,%ymm6
  407f38:	62 b1 4c 28 c2 df 04 	vcmpneqps %ymm23,%ymm6,%k3
  407f3f:	62 b2 3d 20 7f e8    	vpermt2ps %ymm16,%ymm24,%ymm5
  407f45:	c5 7c 29 c6          	vmovaps %ymm8,%ymm6
  407f49:	62 f2 3d 20 7f f5    	vpermt2ps %ymm5,%ymm24,%ymm6
  407f4f:	62 b1 4c 28 c2 e7 04 	vcmpneqps %ymm23,%ymm6,%k4
  407f56:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  407f5a:	62 d2 3d 20 7f f7    	vpermt2ps %ymm15,%ymm24,%ymm6
  407f60:	62 b1 4c 28 c2 ef 04 	vcmpneqps %ymm23,%ymm6,%k5
  407f67:	c5 7c 29 e6          	vmovaps %ymm12,%ymm6
  407f6b:	62 d2 3d 20 7f f6    	vpermt2ps %ymm14,%ymm24,%ymm6
  407f71:	62 b1 4c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm6,%k6
  407f78:	c5 fc 28 f4          	vmovaps %ymm4,%ymm6
  407f7c:	62 f2 3d 20 7f f1    	vpermt2ps %ymm1,%ymm24,%ymm6
  407f82:	62 b1 4c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm6,%k7
  407f89:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  407f8d:	c5 f9 93 c3          	kmovb  %k3,%eax
  407f91:	62 32 2d 20 7f d8    	vpermt2ps %ymm16,%ymm26,%ymm11
  407f97:	c5 fc 28 f2          	vmovaps %ymm2,%ymm6
  407f9b:	c5 f9 93 f1          	kmovb  %k1,%esi
  407f9f:	09 c6                	or     %eax,%esi
  407fa1:	62 d2 3d 20 7f f3    	vpermt2ps %ymm11,%ymm24,%ymm6
  407fa7:	c5 f9 93 c4          	kmovb  %k4,%eax
  407fab:	09 c6                	or     %eax,%esi
  407fad:	62 b1 4c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm6,%k2
  407fb4:	c5 f9 93 c5          	kmovb  %k5,%eax
  407fb8:	62 32 2d 20 7f d4    	vpermt2ps %ymm20,%ymm26,%ymm10
  407fbe:	09 c6                	or     %eax,%esi
  407fc0:	62 b1 7c 28 28 f9    	vmovaps %ymm17,%ymm7
  407fc6:	c5 f9 93 c6          	kmovb  %k6,%eax
  407fca:	62 b1 2c 28 c2 df 04 	vcmpneqps %ymm23,%ymm10,%k3
  407fd1:	09 c6                	or     %eax,%esi
  407fd3:	62 b2 2d 20 7f fb    	vpermt2ps %ymm19,%ymm26,%ymm7
  407fd9:	c5 f9 93 c7          	kmovb  %k7,%eax
  407fdd:	62 b1 44 28 c2 e7 04 	vcmpneqps %ymm23,%ymm7,%k4
  407fe4:	09 c6                	or     %eax,%esi
  407fe6:	62 32 2d 20 7f ca    	vpermt2ps %ymm18,%ymm26,%ymm9
  407fec:	c5 f9 93 c2          	kmovb  %k2,%eax
  407ff0:	62 72 2d 20 7f c5    	vpermt2ps %ymm5,%ymm26,%ymm8
  407ff6:	09 c6                	or     %eax,%esi
  407ff8:	62 b1 34 28 c2 ef 04 	vcmpneqps %ymm23,%ymm9,%k5
  407fff:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  408003:	c5 7c 29 e5          	vmovaps %ymm12,%ymm5
  408007:	c5 f9 93 c3          	kmovb  %k3,%eax
  40800b:	62 b1 3c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm8,%k6
  408012:	09 c6                	or     %eax,%esi
  408014:	62 d2 2d 20 7f f7    	vpermt2ps %ymm15,%ymm26,%ymm6
  40801a:	62 d2 2d 20 7f ee    	vpermt2ps %ymm14,%ymm26,%ymm5
  408020:	62 b1 54 28 c2 c7 04 	vcmpneqps %ymm23,%ymm5,%k0
  408027:	c5 f9 93 c4          	kmovb  %k4,%eax
  40802b:	62 b1 4c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm6,%k7
  408032:	09 c6                	or     %eax,%esi
  408034:	62 f2 2d 20 7f e1    	vpermt2ps %ymm1,%ymm26,%ymm4
  40803a:	c5 f9 93 c5          	kmovb  %k5,%eax
  40803e:	09 c6                	or     %eax,%esi
  408040:	62 b1 5c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm4,%k2
  408047:	c5 f9 93 c6          	kmovb  %k6,%eax
  40804b:	62 d2 2d 20 7f d3    	vpermt2ps %ymm11,%ymm26,%ymm2
  408051:	09 c6                	or     %eax,%esi
  408053:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  408057:	c5 f9 93 c7          	kmovb  %k7,%eax
  40805b:	09 c6                	or     %eax,%esi
  40805d:	c5 f9 93 c0          	kmovb  %k0,%eax
  408061:	62 b1 6c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm2,%k0
  408068:	09 c6                	or     %eax,%esi
  40806a:	c5 fb 58 db          	vaddsd %xmm3,%xmm0,%xmm3
  40806e:	c5 f9 93 c2          	kmovb  %k2,%eax
  408072:	09 c6                	or     %eax,%esi
  408074:	c5 f9 92 ce          	kmovb  %esi,%k1
  408078:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  40807c:	62 f1 7d a9 6f 4c 24 	vmovdqa32 0x120(%rsp),%ymm1{%k1}{z}
  408083:	09 
  408084:	62 61 25 20 eb d9    	vpord  %ymm1,%ymm27,%ymm27
  40808a:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  40808f:	48 39 d1             	cmp    %rdx,%rcx
  408092:	0f 85 db f3 ff ff    	jne    407473 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x443>
  408098:	62 91 7d 08 6f cb    	vmovdqa32 %xmm27,%xmm1
  40809e:	62 63 7d 28 39 d8 01 	vextracti32x4 $0x1,%ymm27,%xmm0
  4080a5:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  4080a9:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  4080ae:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  4080b2:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  4080b7:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  4080bb:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  4080bf:	41 09 c5             	or     %eax,%r13d
  4080c2:	48 8d 84 24 80 19 00 	lea    0x1980(%rsp),%rax
  4080c9:	00 
  4080ca:	48 39 c1             	cmp    %rax,%rcx
  4080cd:	0f 85 8c f3 ff ff    	jne    40745f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x42f>
  4080d3:	c4 e2 78 49 c0       	tilerelease 
  4080d8:	c5 f8 77             	vzeroupper 
  4080db:	e9 af ef ff ff       	jmpq   40708f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  4080e0:	48 8b 83 b0 00 00 00 	mov    0xb0(%rbx),%rax
  4080e7:	80 38 00             	cmpb   $0x0,(%rax)
  4080ea:	0f 84 d5 10 00 00    	je     4091c5 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2195>
  4080f0:	c5 e1 ef db          	vpxor  %xmm3,%xmm3,%xmm3
  4080f4:	62 f2 7d 48 58 05 3a 	vpbroadcastd 0x863a(%rip),%zmm0        # 410738 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x238>
  4080fb:	86 00 00 
  4080fe:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  408103:	62 f1 fd 48 6f e3    	vmovdqa64 %zmm3,%zmm4
  408109:	62 f1 fd 48 6f eb    	vmovdqa64 %zmm3,%zmm5
  40810f:	62 f1 fd 48 6f f3    	vmovdqa64 %zmm3,%zmm6
  408115:	62 f1 fd 48 6f cb    	vmovdqa64 %zmm3,%zmm1
  40811b:	62 f1 fd 48 6f fb    	vmovdqa64 %zmm3,%zmm7
  408121:	62 f1 fd 48 6f d3    	vmovdqa64 %zmm3,%zmm2
  408127:	62 71 fd 48 6f c3    	vmovdqa64 %zmm3,%zmm8
  40812d:	62 71 fd 48 6f cb    	vmovdqa64 %zmm3,%zmm9
  408133:	62 71 fd 48 6f d3    	vmovdqa64 %zmm3,%zmm10
  408139:	62 71 fd 48 6f db    	vmovdqa64 %zmm3,%zmm11
  40813f:	62 71 fd 48 6f e3    	vmovdqa64 %zmm3,%zmm12
  408145:	62 72 7d 48 50 e0    	vpdpbusd %zmm0,%zmm0,%zmm12
  40814b:	62 72 7d 48 50 d8    	vpdpbusd %zmm0,%zmm0,%zmm11
  408151:	62 72 7d 48 50 d0    	vpdpbusd %zmm0,%zmm0,%zmm10
  408157:	62 72 7d 48 50 c8    	vpdpbusd %zmm0,%zmm0,%zmm9
  40815d:	62 72 7d 48 50 c0    	vpdpbusd %zmm0,%zmm0,%zmm8
  408163:	62 f2 7d 48 50 d0    	vpdpbusd %zmm0,%zmm0,%zmm2
  408169:	62 f2 7d 48 50 f8    	vpdpbusd %zmm0,%zmm0,%zmm7
  40816f:	62 f2 7d 48 50 c8    	vpdpbusd %zmm0,%zmm0,%zmm1
  408175:	62 f2 7d 48 50 f0    	vpdpbusd %zmm0,%zmm0,%zmm6
  40817b:	62 f2 7d 48 50 e8    	vpdpbusd %zmm0,%zmm0,%zmm5
  408181:	62 f2 7d 48 50 e0    	vpdpbusd %zmm0,%zmm0,%zmm4
  408187:	62 f2 7d 48 50 d8    	vpdpbusd %zmm0,%zmm0,%zmm3
  40818d:	ff c8                	dec    %eax
  40818f:	75 b4                	jne    408145 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x1115>
  408191:	62 53 fd 48 3b e5 01 	vextracti64x4 $0x1,%zmm12,%ymm13
  408198:	c4 41 15 fe e4       	vpaddd %ymm12,%ymm13,%ymm12
  40819d:	62 53 fd 28 39 e5 01 	vextracti64x2 $0x1,%ymm12,%xmm13
  4081a4:	c4 41 19 fe e5       	vpaddd %xmm13,%xmm12,%xmm12
  4081a9:	c4 41 79 70 ec 4e    	vpshufd $0x4e,%xmm12,%xmm13
  4081af:	c4 41 11 fe e4       	vpaddd %xmm12,%xmm13,%xmm12
  4081b4:	c4 63 79 16 e2 01    	vpextrd $0x1,%xmm12,%edx
  4081ba:	c5 79 7e e0          	vmovd  %xmm12,%eax
  4081be:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  4081c2:	01 d0                	add    %edx,%eax
  4081c4:	c5 7b 2a e0          	vcvtsi2sd %eax,%xmm0,%xmm12
  4081c8:	45 31 ed             	xor    %r13d,%r13d
  4081cb:	c5 1b 58 2d 0d 85 00 	vaddsd 0x850d(%rip),%xmm12,%xmm13        # 4106e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  4081d2:	00 
  4081d3:	62 53 fd 48 3b dc 01 	vextracti64x4 $0x1,%zmm11,%ymm12
  4081da:	c4 41 1d fe db       	vpaddd %ymm11,%ymm12,%ymm11
  4081df:	62 53 fd 28 39 dc 01 	vextracti64x2 $0x1,%ymm11,%xmm12
  4081e6:	c4 41 19 fe e3       	vpaddd %xmm11,%xmm12,%xmm12
  4081eb:	c4 41 79 70 dc 4e    	vpshufd $0x4e,%xmm12,%xmm11
  4081f1:	c4 41 21 fe dc       	vpaddd %xmm12,%xmm11,%xmm11
  4081f6:	c5 79 7e da          	vmovd  %xmm11,%edx
  4081fa:	c4 63 79 16 d8 01    	vpextrd $0x1,%xmm11,%eax
  408200:	01 d0                	add    %edx,%eax
  408202:	c5 7b 2a d8          	vcvtsi2sd %eax,%xmm0,%xmm11
  408206:	c4 41 23 58 ed       	vaddsd %xmm13,%xmm11,%xmm13
  40820b:	62 53 fd 48 3b d3 01 	vextracti64x4 $0x1,%zmm10,%ymm11
  408212:	c4 41 25 fe d2       	vpaddd %ymm10,%ymm11,%ymm10
  408217:	62 53 fd 28 39 d3 01 	vextracti64x2 $0x1,%ymm10,%xmm11
  40821e:	c4 41 21 fe da       	vpaddd %xmm10,%xmm11,%xmm11
  408223:	c4 41 79 70 d3 4e    	vpshufd $0x4e,%xmm11,%xmm10
  408229:	c4 41 29 fe d3       	vpaddd %xmm11,%xmm10,%xmm10
  40822e:	c4 63 79 16 d2 01    	vpextrd $0x1,%xmm10,%edx
  408234:	c5 79 7e d0          	vmovd  %xmm10,%eax
  408238:	01 d0                	add    %edx,%eax
  40823a:	c5 7b 2a d0          	vcvtsi2sd %eax,%xmm0,%xmm10
  40823e:	c4 41 2b 58 dd       	vaddsd %xmm13,%xmm10,%xmm11
  408243:	62 53 fd 48 3b ca 01 	vextracti64x4 $0x1,%zmm9,%ymm10
  40824a:	c4 41 2d fe c9       	vpaddd %ymm9,%ymm10,%ymm9
  40824f:	62 53 fd 28 39 ca 01 	vextracti64x2 $0x1,%ymm9,%xmm10
  408256:	c4 41 29 fe d1       	vpaddd %xmm9,%xmm10,%xmm10
  40825b:	c4 41 79 70 ca 4e    	vpshufd $0x4e,%xmm10,%xmm9
  408261:	c4 41 31 fe ca       	vpaddd %xmm10,%xmm9,%xmm9
  408266:	c5 79 7e ca          	vmovd  %xmm9,%edx
  40826a:	c4 63 79 16 c8 01    	vpextrd $0x1,%xmm9,%eax
  408270:	01 d0                	add    %edx,%eax
  408272:	c5 7b 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm9
  408276:	c4 41 33 58 db       	vaddsd %xmm11,%xmm9,%xmm11
  40827b:	62 53 fd 48 3b c1 01 	vextracti64x4 $0x1,%zmm8,%ymm9
  408282:	c4 41 35 fe c0       	vpaddd %ymm8,%ymm9,%ymm8
  408287:	62 53 fd 28 39 c1 01 	vextracti64x2 $0x1,%ymm8,%xmm9
  40828e:	c4 41 31 fe c8       	vpaddd %xmm8,%xmm9,%xmm9
  408293:	c4 41 79 70 c1 4e    	vpshufd $0x4e,%xmm9,%xmm8
  408299:	c4 41 39 fe c1       	vpaddd %xmm9,%xmm8,%xmm8
  40829e:	62 d3 fd 48 3b d1 01 	vextracti64x4 $0x1,%zmm2,%ymm9
  4082a5:	c4 c1 6d fe d1       	vpaddd %ymm9,%ymm2,%ymm2
  4082aa:	62 d3 fd 28 39 d1 01 	vextracti64x2 $0x1,%ymm2,%xmm9
  4082b1:	c5 79 7e c2          	vmovd  %xmm8,%edx
  4082b5:	c5 31 fe ca          	vpaddd %xmm2,%xmm9,%xmm9
  4082b9:	c4 63 79 16 c0 01    	vpextrd $0x1,%xmm8,%eax
  4082bf:	01 d0                	add    %edx,%eax
  4082c1:	c4 c1 79 70 d1 4e    	vpshufd $0x4e,%xmm9,%xmm2
  4082c7:	c4 c1 69 fe d1       	vpaddd %xmm9,%xmm2,%xmm2
  4082cc:	c5 7b 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm8
  4082d0:	c5 f9 7e d2          	vmovd  %xmm2,%edx
  4082d4:	c4 e3 79 16 d0 01    	vpextrd $0x1,%xmm2,%eax
  4082da:	01 d0                	add    %edx,%eax
  4082dc:	c5 fb 2a d0          	vcvtsi2sd %eax,%xmm0,%xmm2
  4082e0:	c4 41 3b 58 c3       	vaddsd %xmm11,%xmm8,%xmm8
  4082e5:	c4 41 6b 58 c0       	vaddsd %xmm8,%xmm2,%xmm8
  4082ea:	62 f3 fd 48 3b fa 01 	vextracti64x4 $0x1,%zmm7,%ymm2
  4082f1:	c5 ed fe d7          	vpaddd %ymm7,%ymm2,%ymm2
  4082f5:	62 f3 fd 28 39 d7 01 	vextracti64x2 $0x1,%ymm2,%xmm7
  4082fc:	c5 e9 fe d7          	vpaddd %xmm7,%xmm2,%xmm2
  408300:	c5 f9 70 fa 4e       	vpshufd $0x4e,%xmm2,%xmm7
  408305:	c5 c1 fe d2          	vpaddd %xmm2,%xmm7,%xmm2
  408309:	c5 f9 7e d2          	vmovd  %xmm2,%edx
  40830d:	c4 e3 79 16 d0 01    	vpextrd $0x1,%xmm2,%eax
  408313:	01 d0                	add    %edx,%eax
  408315:	c5 fb 2a d0          	vcvtsi2sd %eax,%xmm0,%xmm2
  408319:	c4 41 6b 58 c0       	vaddsd %xmm8,%xmm2,%xmm8
  40831e:	62 f3 fd 48 3b ca 01 	vextracti64x4 $0x1,%zmm1,%ymm2
  408325:	c5 f5 fe ca          	vpaddd %ymm2,%ymm1,%ymm1
  408329:	62 f3 fd 28 39 ca 01 	vextracti64x2 $0x1,%ymm1,%xmm2
  408330:	c5 f1 fe ca          	vpaddd %xmm2,%xmm1,%xmm1
  408334:	c5 f9 70 d1 4e       	vpshufd $0x4e,%xmm1,%xmm2
  408339:	c5 e9 fe c9          	vpaddd %xmm1,%xmm2,%xmm1
  40833d:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  408341:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  408347:	01 d0                	add    %edx,%eax
  408349:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  40834d:	c4 c1 73 58 d0       	vaddsd %xmm8,%xmm1,%xmm2
  408352:	62 f3 fd 48 3b f1 01 	vextracti64x4 $0x1,%zmm6,%ymm1
  408359:	c5 f5 fe ce          	vpaddd %ymm6,%ymm1,%ymm1
  40835d:	62 f3 fd 28 39 ce 01 	vextracti64x2 $0x1,%ymm1,%xmm6
  408364:	c5 c9 fe f1          	vpaddd %xmm1,%xmm6,%xmm6
  408368:	c5 f9 70 ce 4e       	vpshufd $0x4e,%xmm6,%xmm1
  40836d:	c5 f1 fe ce          	vpaddd %xmm6,%xmm1,%xmm1
  408371:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  408375:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  40837b:	01 d0                	add    %edx,%eax
  40837d:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  408381:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  408385:	62 f3 fd 48 3b e9 01 	vextracti64x4 $0x1,%zmm5,%ymm1
  40838c:	c5 f5 fe cd          	vpaddd %ymm5,%ymm1,%ymm1
  408390:	62 f3 fd 28 39 cd 01 	vextracti64x2 $0x1,%ymm1,%xmm5
  408397:	c5 d1 fe e9          	vpaddd %xmm1,%xmm5,%xmm5
  40839b:	c5 f9 70 cd 4e       	vpshufd $0x4e,%xmm5,%xmm1
  4083a0:	c5 f1 fe cd          	vpaddd %xmm5,%xmm1,%xmm1
  4083a4:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  4083a8:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  4083ae:	01 d0                	add    %edx,%eax
  4083b0:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  4083b4:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  4083b8:	62 f3 fd 48 3b e1 01 	vextracti64x4 $0x1,%zmm4,%ymm1
  4083bf:	c5 f5 fe cc          	vpaddd %ymm4,%ymm1,%ymm1
  4083c3:	62 f3 fd 28 39 cc 01 	vextracti64x2 $0x1,%ymm1,%xmm4
  4083ca:	c5 d9 fe e1          	vpaddd %xmm1,%xmm4,%xmm4
  4083ce:	c5 f9 70 cc 4e       	vpshufd $0x4e,%xmm4,%xmm1
  4083d3:	c5 f1 fe cc          	vpaddd %xmm4,%xmm1,%xmm1
  4083d7:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  4083db:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  4083e1:	01 d0                	add    %edx,%eax
  4083e3:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  4083e7:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  4083eb:	62 f3 fd 48 3b d9 01 	vextracti64x4 $0x1,%zmm3,%ymm1
  4083f2:	c5 f5 fe cb          	vpaddd %ymm3,%ymm1,%ymm1
  4083f6:	62 f3 fd 28 39 cb 01 	vextracti64x2 $0x1,%ymm1,%xmm3
  4083fd:	c5 e1 fe d9          	vpaddd %xmm1,%xmm3,%xmm3
  408401:	c5 f9 70 cb 4e       	vpshufd $0x4e,%xmm3,%xmm1
  408406:	c5 f1 fe cb          	vpaddd %xmm3,%xmm1,%xmm1
  40840a:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  40840e:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  408414:	01 d0                	add    %edx,%eax
  408416:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  40841a:	c5 fb 58 f2          	vaddsd %xmm2,%xmm0,%xmm6
  40841e:	c4 e1 f9 7e f3       	vmovq  %xmm6,%rbx
  408423:	c5 f8 77             	vzeroupper 
  408426:	e9 64 ec ff ff       	jmpq   40708f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  40842b:	31 c0                	xor    %eax,%eax
  40842d:	ba 12 00 00 00       	mov    $0x12,%edx
  408432:	be 23 10 00 00       	mov    $0x1023,%esi
  408437:	bf 9e 00 00 00       	mov    $0x9e,%edi
  40843c:	e8 0f ac ff ff       	callq  403050 <syscall@plt>
  408441:	48 85 c0             	test   %rax,%rax
  408444:	0f 94 c0             	sete   %al
  408447:	64 88 04 25 f8 ff ff 	mov    %al,%fs:0xfffffffffffffff8
  40844e:	ff 
  40844f:	64 c6 04 25 f0 ff ff 	movb   $0x1,%fs:0xfffffffffffffff0
  408456:	ff 01 
  408458:	e9 21 ec ff ff       	jmpq   40707e <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x4e>
  40845d:	48 8d 9c 24 80 01 00 	lea    0x180(%rsp),%rbx
  408464:	00 
  408465:	48 89 df             	mov    %rbx,%rdi
  408468:	ba 00 04 00 00       	mov    $0x400,%edx
  40846d:	be 01 00 00 00       	mov    $0x1,%esi
  408472:	e8 09 ad ff ff       	callq  403180 <memset@plt>
  408477:	48 8d 8c 24 80 05 00 	lea    0x580(%rsp),%rcx
  40847e:	00 
  40847f:	48 89 cf             	mov    %rcx,%rdi
  408482:	ba 00 04 00 00       	mov    $0x400,%edx
  408487:	be 01 00 00 00       	mov    $0x1,%esi
  40848c:	e8 ef ac ff ff       	callq  403180 <memset@plt>
  408491:	48 89 c1             	mov    %rax,%rcx
  408494:	b8 40 00 00 00       	mov    $0x40,%eax
  408499:	c4 e2 7b 4b 24 03    	tileloadd (%rbx,%rax,1),%tmm4
  40849f:	c4 e2 7b 4b 2c 01    	tileloadd (%rcx,%rax,1),%tmm5
  4084a5:	ba 00 04 00 00       	mov    $0x400,%edx
  4084aa:	c4 e2 7b 49 c0       	tilezero %tmm0
  4084af:	c4 e2 7b 49 c8       	tilezero %tmm1
  4084b4:	c4 e2 7b 49 d0       	tilezero %tmm2
  4084b9:	c4 e2 7b 49 d8       	tilezero %tmm3
  4084be:	b8 00 01 00 00       	mov    $0x100,%eax
  4084c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4084c8:	c4 e2 53 5e c4       	tdpbssd %tmm5,%tmm4,%tmm0
  4084cd:	c4 e2 53 5e cc       	tdpbssd %tmm5,%tmm4,%tmm1
  4084d2:	c4 e2 53 5e d4       	tdpbssd %tmm5,%tmm4,%tmm2
  4084d7:	c4 e2 53 5e dc       	tdpbssd %tmm5,%tmm4,%tmm3
  4084dc:	ff c8                	dec    %eax
  4084de:	75 e8                	jne    4084c8 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x1498>
  4084e0:	ff ca                	dec    %edx
  4084e2:	75 c6                	jne    4084aa <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x147a>
  4084e4:	48 8d 8c 24 80 09 00 	lea    0x980(%rsp),%rcx
  4084eb:	00 
  4084ec:	b8 40 00 00 00       	mov    $0x40,%eax
  4084f1:	c4 e2 7a 4b 04 01    	tilestored %tmm0,(%rcx,%rax,1)
  4084f7:	48 8d 94 24 80 0d 00 	lea    0xd80(%rsp),%rdx
  4084fe:	00 
  4084ff:	c4 e2 7a 4b 0c 02    	tilestored %tmm1,(%rdx,%rax,1)
  408505:	48 8d 94 24 80 11 00 	lea    0x1180(%rsp),%rdx
  40850c:	00 
  40850d:	c4 e2 7a 4b 14 02    	tilestored %tmm2,(%rdx,%rax,1)
  408513:	48 8d 94 24 80 15 00 	lea    0x1580(%rsp),%rdx
  40851a:	00 
  40851b:	c4 e2 7a 4b 1c 02    	tilestored %tmm3,(%rdx,%rax,1)
  408521:	62 61 7d 28 6f 05 95 	vmovdqa32 0x8195(%rip),%ymm24        # 4106c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  408528:	81 00 00 
  40852b:	62 61 7d 28 6f 0d 6b 	vmovdqa32 0x816b(%rip),%ymm25        # 4106a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1a0>
  408532:	81 00 00 
  408535:	c4 e2 7d 58 1d 82 81 	vpbroadcastd 0x8182(%rip),%ymm3        # 4106c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  40853c:	00 00 
  40853e:	48 8b 1d 9b 81 00 00 	mov    0x819b(%rip),%rbx        # 4106e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  408545:	62 e2 7d 28 58 3d b1 	vpbroadcastd 0x81b1(%rip),%ymm23        # 410700 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x200>
  40854c:	81 00 00 
  40854f:	62 01 7d 28 6f d0    	vmovdqa32 %ymm24,%ymm26
  408555:	45 31 ed             	xor    %r13d,%r13d
  408558:	c5 fd 7f 9c 24 20 01 	vmovdqa %ymm3,0x120(%rsp)
  40855f:	00 00 
  408561:	62 01 7d 28 6f c1    	vmovdqa32 %ymm25,%ymm24
  408567:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  40856e:	48 8d 91 00 fc ff ff 	lea    -0x400(%rcx),%rdx
  408575:	62 01 25 00 ef db    	vpxord %xmm27,%xmm27,%xmm27
  40857b:	c5 fd 6f 32          	vmovdqa (%rdx),%ymm6
  40857f:	c5 fd 6f 9a 20 01 00 	vmovdqa 0x120(%rdx),%ymm3
  408586:	00 
  408587:	62 b3 7d 28 39 f5 01 	vextracti32x4 $0x1,%ymm6,%xmm21
  40858e:	c5 fd 6f 72 40       	vmovdqa 0x40(%rdx),%ymm6
  408593:	c5 fd 6f 7a 20       	vmovdqa 0x20(%rdx),%ymm7
  408598:	c4 e3 7d 39 f1 01    	vextracti128 $0x1,%ymm6,%xmm1
  40859e:	c5 fd 6f 72 60       	vmovdqa 0x60(%rdx),%ymm6
  4085a3:	c4 e3 7d 39 dd 01    	vextracti128 $0x1,%ymm3,%xmm5
  4085a9:	c4 e3 7d 39 f0 01    	vextracti128 $0x1,%ymm6,%xmm0
  4085af:	c5 fd 6f b2 80 00 00 	vmovdqa 0x80(%rdx),%ymm6
  4085b6:	00 
  4085b7:	c5 fe e6 c0          	vcvtdq2pd %xmm0,%ymm0
  4085bb:	c4 c3 7d 39 f5 01    	vextracti128 $0x1,%ymm6,%xmm13
  4085c1:	c5 fd 6f b2 a0 00 00 	vmovdqa 0xa0(%rdx),%ymm6
  4085c8:	00 
  4085c9:	c5 fd 29 44 24 60    	vmovapd %ymm0,0x60(%rsp)
  4085cf:	c4 c3 7d 39 f4 01    	vextracti128 $0x1,%ymm6,%xmm12
  4085d5:	c5 fd 6f b2 c0 00 00 	vmovdqa 0xc0(%rdx),%ymm6
  4085dc:	00 
  4085dd:	c5 fd 6f 82 a0 01 00 	vmovdqa 0x1a0(%rdx),%ymm0
  4085e4:	00 
  4085e5:	c5 fd 6f 9a 40 01 00 	vmovdqa 0x140(%rdx),%ymm3
  4085ec:	00 
  4085ed:	c4 c3 7d 39 f1 01    	vextracti128 $0x1,%ymm6,%xmm9
  4085f3:	c5 fd 6f b2 e0 00 00 	vmovdqa 0xe0(%rdx),%ymm6
  4085fa:	00 
  4085fb:	62 93 7d 28 39 c7 01 	vextracti32x4 $0x1,%ymm0,%xmm31
  408602:	62 61 7e 28 e6 72 02 	vcvtdq2pd 0x20(%rdx),%ymm30
  408609:	62 61 7e 28 e6 6a 04 	vcvtdq2pd 0x40(%rdx),%ymm29
  408610:	c5 7e e6 b2 40 01 00 	vcvtdq2pd 0x140(%rdx),%ymm14
  408617:	00 
  408618:	62 e1 7e 28 e6 32    	vcvtdq2pd (%rdx),%ymm22
  40861e:	62 e1 7e 28 e6 5a 06 	vcvtdq2pd 0x60(%rdx),%ymm19
  408625:	62 e1 7e 28 e6 52 08 	vcvtdq2pd 0x80(%rdx),%ymm18
  40862c:	62 e1 7e 28 e6 4a 0a 	vcvtdq2pd 0xa0(%rdx),%ymm17
  408633:	62 e1 7e 28 e6 42 0c 	vcvtdq2pd 0xc0(%rdx),%ymm16
  40863a:	c5 7e e6 ba e0 00 00 	vcvtdq2pd 0xe0(%rdx),%ymm15
  408641:	00 
  408642:	62 61 7e 28 e6 62 10 	vcvtdq2pd 0x100(%rdx),%ymm28
  408649:	62 61 7e 28 e6 4a 12 	vcvtdq2pd 0x120(%rdx),%ymm25
  408650:	c5 7e e6 9a 60 01 00 	vcvtdq2pd 0x160(%rdx),%ymm11
  408657:	00 
  408658:	c5 7e e6 92 80 01 00 	vcvtdq2pd 0x180(%rdx),%ymm10
  40865f:	00 
  408660:	c5 7e e6 82 a0 01 00 	vcvtdq2pd 0x1a0(%rdx),%ymm8
  408667:	00 
  408668:	c5 fd 6f 92 80 01 00 	vmovdqa 0x180(%rdx),%ymm2
  40866f:	00 
  408670:	62 91 7e 28 e6 c7    	vcvtdq2pd %xmm31,%ymm0
  408676:	62 b3 7d 28 39 fc 01 	vextracti32x4 $0x1,%ymm7,%xmm20
  40867d:	62 61 7e 28 e6 7a 1c 	vcvtdq2pd 0x1c0(%rdx),%ymm31
  408684:	c4 e3 7d 39 f7 01    	vextracti128 $0x1,%ymm6,%xmm7
  40868a:	c4 e3 7d 39 dc 01    	vextracti128 $0x1,%ymm3,%xmm4
  408690:	c5 fd 6f b2 00 01 00 	vmovdqa 0x100(%rdx),%ymm6
  408697:	00 
  408698:	c5 fd 6f 9a 60 01 00 	vmovdqa 0x160(%rdx),%ymm3
  40869f:	00 
  4086a0:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  4086a7:	00 00 
  4086a9:	c5 fe e6 c9          	vcvtdq2pd %xmm1,%ymm1
  4086ad:	c5 fd 29 4c 24 40    	vmovapd %ymm1,0x40(%rsp)
  4086b3:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xa0(%rsp)
  4086ba:	05 
  4086bb:	c5 fd 6f 82 c0 01 00 	vmovdqa 0x1c0(%rdx),%ymm0
  4086c2:	00 
  4086c3:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  4086ca:	07 
  4086cb:	62 93 7d 28 39 c7 01 	vextracti32x4 $0x1,%ymm0,%xmm31
  4086d2:	62 91 7e 28 e6 c7    	vcvtdq2pd %xmm31,%ymm0
  4086d8:	c5 fd 29 84 24 c0 00 	vmovapd %ymm0,0xc0(%rsp)
  4086df:	00 00 
  4086e1:	c5 fd 6f 82 e0 01 00 	vmovdqa 0x1e0(%rdx),%ymm0
  4086e8:	00 
  4086e9:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  4086ee:	62 61 7e 28 e6 7a 1e 	vcvtdq2pd 0x1e0(%rdx),%ymm31
  4086f5:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xe0(%rsp)
  4086fc:	07 
  4086fd:	62 93 7d 28 39 c7 01 	vextracti32x4 $0x1,%ymm0,%xmm31
  408704:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  408709:	62 91 7e 28 e6 c7    	vcvtdq2pd %xmm31,%ymm0
  40870f:	c5 fd 29 84 24 00 01 	vmovapd %ymm0,0x100(%rsp)
  408716:	00 00 
  408718:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  40871d:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408721:	62 b1 cd 00 15 ce    	vunpckhpd %xmm22,%xmm22,%xmm1
  408727:	62 a3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm22,%xmm22
  40872e:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408732:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  408739:	07 
  40873a:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  40873f:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  408744:	62 61 fd 08 6e f8    	vmovq  %rax,%xmm31
  40874a:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  40874f:	62 91 f7 08 58 cf    	vaddsd %xmm31,%xmm1,%xmm1
  408755:	62 21 cd 00 15 fe    	vunpckhpd %xmm22,%xmm22,%xmm31
  40875b:	62 a1 7e 28 e6 ed    	vcvtdq2pd %xmm21,%ymm21
  408761:	62 f1 87 00 58 c9    	vaddsd %xmm1,%xmm31,%xmm1
  408767:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  40876e:	07 
  40876f:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  408774:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  408779:	62 e1 fd 08 6e f0    	vmovq  %rax,%xmm22
  40877f:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  408784:	62 b1 f7 08 58 ce    	vaddsd %xmm22,%xmm1,%xmm1
  40878a:	62 21 d5 00 15 fd    	vunpckhpd %xmm21,%xmm21,%xmm31
  408790:	62 a3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm21,%xmm21
  408797:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  40879e:	07 
  40879f:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  4087a4:	62 61 87 00 58 f9    	vaddsd %xmm1,%xmm31,%xmm31
  4087aa:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  4087af:	62 61 fd 08 13 74 24 	vmovlpd %xmm30,0x38(%rsp)
  4087b6:	07 
  4087b7:	62 01 f7 08 58 ff    	vaddsd %xmm31,%xmm1,%xmm31
  4087bd:	62 a1 d5 00 15 f5    	vunpckhpd %xmm21,%xmm21,%xmm22
  4087c3:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  4087c8:	62 81 cf 00 58 f7    	vaddsd %xmm31,%xmm22,%xmm22
  4087ce:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  4087d3:	62 01 8d 00 15 fe    	vunpckhpd %xmm30,%xmm30,%xmm31
  4087d9:	62 a1 f7 08 58 f6    	vaddsd %xmm22,%xmm1,%xmm22
  4087df:	62 a1 7e 28 e6 e4    	vcvtdq2pd %xmm20,%ymm20
  4087e5:	c5 fd 28 4c 24 40    	vmovapd 0x40(%rsp),%ymm1
  4087eb:	62 21 87 00 58 fe    	vaddsd %xmm22,%xmm31,%xmm31
  4087f1:	62 23 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm30,%xmm22
  4087f8:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  4087ff:	07 
  408800:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  408807:	07 
  408808:	62 a1 cd 00 15 f6    	vunpckhpd %xmm22,%xmm22,%xmm22
  40880e:	62 01 8f 00 58 f7    	vaddsd %xmm31,%xmm30,%xmm30
  408814:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  40881b:	07 
  40881c:	62 61 ff 08 10 7c 24 	vmovsd 0x38(%rsp),%xmm31
  408823:	07 
  408824:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  40882a:	62 21 dd 00 15 f4    	vunpckhpd %xmm20,%xmm20,%xmm30
  408830:	62 a3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm20,%xmm20
  408837:	62 a1 87 00 58 f6    	vaddsd %xmm22,%xmm31,%xmm22
  40883d:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  408844:	07 
  408845:	62 a1 dd 00 15 ec    	vunpckhpd %xmm20,%xmm20,%xmm21
  40884b:	62 21 8f 00 58 f6    	vaddsd %xmm22,%xmm30,%xmm30
  408851:	62 e1 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm22
  408858:	07 
  408859:	62 61 fd 08 13 6c 24 	vmovlpd %xmm29,0x38(%rsp)
  408860:	07 
  408861:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  408867:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  40886e:	07 
  40886f:	c5 f9 13 4c 24 40    	vmovlpd %xmm1,0x40(%rsp)
  408875:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  40887b:	62 81 95 00 15 f5    	vunpckhpd %xmm29,%xmm29,%xmm22
  408881:	c4 41 7e e6 ed       	vcvtdq2pd %xmm13,%ymm13
  408886:	62 a1 8f 00 58 ed    	vaddsd %xmm21,%xmm30,%xmm21
  40888c:	c4 41 7e e6 e4       	vcvtdq2pd %xmm12,%ymm12
  408891:	c4 41 7e e6 c9       	vcvtdq2pd %xmm9,%ymm9
  408896:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  40889c:	62 23 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm29,%xmm21
  4088a3:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  4088aa:	07 
  4088ab:	62 61 ff 08 10 6c 24 	vmovsd 0x38(%rsp),%xmm29
  4088b2:	07 
  4088b3:	62 a1 d5 00 15 ed    	vunpckhpd %xmm21,%xmm21,%xmm21
  4088b9:	62 a1 97 00 58 f6    	vaddsd %xmm22,%xmm29,%xmm22
  4088bf:	62 61 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm29
  4088c6:	08 
  4088c7:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x40(%rsp)
  4088ce:	08 
  4088cf:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  4088d5:	62 e1 f5 08 15 f1    	vunpckhpd %xmm1,%xmm1,%xmm22
  4088db:	62 f3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm1,%xmm1
  4088e2:	62 a1 97 00 58 ed    	vaddsd %xmm21,%xmm29,%xmm21
  4088e8:	62 e1 f5 08 15 e1    	vunpckhpd %xmm1,%xmm1,%xmm20
  4088ee:	c5 fe e6 ff          	vcvtdq2pd %xmm7,%ymm7
  4088f2:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  4088f8:	c4 e3 7d 39 f6 01    	vextracti128 $0x1,%ymm6,%xmm6
  4088fe:	c5 fe e6 f6          	vcvtdq2pd %xmm6,%ymm6
  408902:	62 a1 f7 08 58 ee    	vaddsd %xmm22,%xmm1,%xmm21
  408908:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  40890f:	08 
  408910:	c5 fe e6 ed          	vcvtdq2pd %xmm5,%ymm5
  408914:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  40891a:	62 a1 e5 00 15 eb    	vunpckhpd %xmm19,%xmm19,%xmm21
  408920:	62 a3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm19,%xmm19
  408927:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  40892d:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x40(%rsp)
  408934:	08 
  408935:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  40893c:	08 
  40893d:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  408943:	c5 fd 28 44 24 60    	vmovapd 0x60(%rsp),%ymm0
  408949:	62 a1 e5 00 15 e3    	vunpckhpd %xmm19,%xmm19,%xmm20
  40894f:	62 a1 cf 00 58 ed    	vaddsd %xmm21,%xmm22,%xmm21
  408955:	c5 f9 13 44 24 60    	vmovlpd %xmm0,0x60(%rsp)
  40895b:	62 e1 ff 08 10 74 24 	vmovsd 0x60(%rsp),%xmm22
  408962:	0c 
  408963:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  408969:	62 e1 fd 08 15 e8    	vunpckhpd %xmm0,%xmm0,%xmm21
  40896f:	62 f3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm0,%xmm0
  408976:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  40897c:	62 e1 fd 08 15 d8    	vunpckhpd %xmm0,%xmm0,%xmm19
  408982:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x60(%rsp)
  408989:	0c 
  40898a:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  408990:	c5 fe e6 e4          	vcvtdq2pd %xmm4,%ymm4
  408994:	c4 e3 7d 39 db 01    	vextracti128 $0x1,%ymm3,%xmm3
  40899a:	62 a1 ff 08 58 e5    	vaddsd %xmm21,%xmm0,%xmm20
  4089a0:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  4089a7:	0c 
  4089a8:	c5 fe e6 db          	vcvtdq2pd %xmm3,%ymm3
  4089ac:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  4089b2:	62 a1 ed 00 15 e2    	vunpckhpd %xmm18,%xmm18,%xmm20
  4089b8:	62 a3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm18,%xmm18
  4089bf:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  4089c5:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x60(%rsp)
  4089cc:	0c 
  4089cd:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  4089d4:	0c 
  4089d5:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  4089db:	62 a1 ed 00 15 da    	vunpckhpd %xmm18,%xmm18,%xmm19
  4089e1:	c5 79 13 6c 24 60    	vmovlpd %xmm13,0x60(%rsp)
  4089e7:	62 a1 d7 00 58 e4    	vaddsd %xmm20,%xmm21,%xmm20
  4089ed:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  4089f4:	0c 
  4089f5:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x60(%rsp)
  4089fc:	0c 
  4089fd:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  408a03:	62 c1 95 08 15 e5    	vunpckhpd %xmm13,%xmm13,%xmm20
  408a09:	62 53 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm13,%xmm13
  408a10:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  408a16:	62 c1 95 08 15 d5    	vunpckhpd %xmm13,%xmm13,%xmm18
  408a1c:	c4 e3 7d 39 d2 01    	vextracti128 $0x1,%ymm2,%xmm2
  408a22:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  408a28:	c5 fe e6 d2          	vcvtdq2pd %xmm2,%ymm2
  408a2c:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  408a33:	62 a1 97 08 58 dc    	vaddsd %xmm20,%xmm13,%xmm19
  408a39:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  408a40:	0c 
  408a41:	62 43 fd 28 19 cd 01 	vextractf64x2 $0x1,%ymm25,%xmm13
  408a48:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  408a4e:	62 a1 f5 00 15 d9    	vunpckhpd %xmm17,%xmm17,%xmm19
  408a54:	62 a3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm17,%xmm17
  408a5b:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  408a61:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x60(%rsp)
  408a68:	0c 
  408a69:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  408a70:	0c 
  408a71:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  408a77:	62 a1 f5 00 15 d1    	vunpckhpd %xmm17,%xmm17,%xmm18
  408a7d:	c5 79 13 64 24 60    	vmovlpd %xmm12,0x60(%rsp)
  408a83:	62 a1 df 00 58 db    	vaddsd %xmm19,%xmm20,%xmm19
  408a89:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  408a90:	0c 
  408a91:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x60(%rsp)
  408a98:	0c 
  408a99:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  408a9f:	62 c1 9d 08 15 dc    	vunpckhpd %xmm12,%xmm12,%xmm19
  408aa5:	62 53 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm12,%xmm12
  408aac:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  408ab2:	62 c1 9d 08 15 cc    	vunpckhpd %xmm12,%xmm12,%xmm17
  408ab8:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  408abe:	62 a1 9f 08 58 d3    	vaddsd %xmm19,%xmm12,%xmm18
  408ac4:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  408acb:	0c 
  408acc:	62 53 fd 28 19 f4 01 	vextractf64x2 $0x1,%ymm14,%xmm12
  408ad3:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  408ad9:	62 a1 fd 00 15 d0    	vunpckhpd %xmm16,%xmm16,%xmm18
  408adf:	62 a3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm16,%xmm16
  408ae6:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  408aec:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x60(%rsp)
  408af3:	0c 
  408af4:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  408afb:	0c 
  408afc:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  408b02:	62 a1 fd 00 15 c8    	vunpckhpd %xmm16,%xmm16,%xmm17
  408b08:	c5 79 13 4c 24 60    	vmovlpd %xmm9,0x60(%rsp)
  408b0e:	62 a1 e7 00 58 d2    	vaddsd %xmm18,%xmm19,%xmm18
  408b14:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  408b1b:	0c 
  408b1c:	c5 79 13 7c 24 60    	vmovlpd %xmm15,0x60(%rsp)
  408b22:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  408b28:	62 c1 b5 08 15 d1    	vunpckhpd %xmm9,%xmm9,%xmm18
  408b2e:	62 53 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm9,%xmm9
  408b35:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  408b3b:	62 c1 b5 08 15 c1    	vunpckhpd %xmm9,%xmm9,%xmm16
  408b41:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  408b47:	62 a1 b7 08 58 ca    	vaddsd %xmm18,%xmm9,%xmm17
  408b4d:	62 e1 ff 08 10 54 24 	vmovsd 0x60(%rsp),%xmm18
  408b54:	0c 
  408b55:	c5 f9 13 7c 24 60    	vmovlpd %xmm7,0x60(%rsp)
  408b5b:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  408b61:	62 c1 85 08 15 cf    	vunpckhpd %xmm15,%xmm15,%xmm17
  408b67:	62 53 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm15,%xmm15
  408b6e:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  408b74:	62 e1 ff 08 10 54 24 	vmovsd 0x60(%rsp),%xmm18
  408b7b:	0c 
  408b7c:	62 61 fd 08 13 64 24 	vmovlpd %xmm28,0x60(%rsp)
  408b83:	0c 
  408b84:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  408b8a:	62 c1 85 08 15 c7    	vunpckhpd %xmm15,%xmm15,%xmm16
  408b90:	62 a1 87 08 58 c9    	vaddsd %xmm17,%xmm15,%xmm17
  408b96:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  408b9c:	62 e1 c5 08 15 cf    	vunpckhpd %xmm7,%xmm7,%xmm17
  408ba2:	62 f3 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm7,%xmm7
  408ba9:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  408baf:	c5 41 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm15
  408bb3:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  408bb9:	62 a1 c7 08 58 c1    	vaddsd %xmm17,%xmm7,%xmm16
  408bbf:	62 e1 ff 08 10 4c 24 	vmovsd 0x60(%rsp),%xmm17
  408bc6:	0c 
  408bc7:	c5 f9 13 74 24 60    	vmovlpd %xmm6,0x60(%rsp)
  408bcd:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  408bd3:	62 81 9d 00 15 c4    	vunpckhpd %xmm28,%xmm28,%xmm16
  408bd9:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  408bdf:	62 e1 ff 08 10 4c 24 	vmovsd 0x60(%rsp),%xmm17
  408be6:	0c 
  408be7:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  408bed:	62 43 fd 28 19 e7 01 	vextractf64x2 $0x1,%ymm28,%xmm15
  408bf4:	62 a1 87 08 58 c0    	vaddsd %xmm16,%xmm15,%xmm16
  408bfa:	c4 41 01 15 ff       	vunpckhpd %xmm15,%xmm15,%xmm15
  408bff:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  408c05:	62 e1 cd 08 15 c6    	vunpckhpd %xmm6,%xmm6,%xmm16
  408c0b:	62 f3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm6,%xmm6
  408c12:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  408c18:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  408c1e:	62 31 cf 08 58 f8    	vaddsd %xmm16,%xmm6,%xmm15
  408c24:	c5 c9 15 f6          	vunpckhpd %xmm6,%xmm6,%xmm6
  408c28:	c4 c1 4b 58 f7       	vaddsd %xmm15,%xmm6,%xmm6
  408c2d:	62 11 b5 00 15 f9    	vunpckhpd %xmm25,%xmm25,%xmm15
  408c33:	62 f1 b7 00 58 f6    	vaddsd %xmm6,%xmm25,%xmm6
  408c39:	c5 03 58 fe          	vaddsd %xmm6,%xmm15,%xmm15
  408c3d:	c4 c1 13 58 f7       	vaddsd %xmm15,%xmm13,%xmm6
  408c42:	c4 41 11 15 ed       	vunpckhpd %xmm13,%xmm13,%xmm13
  408c47:	c5 13 58 ee          	vaddsd %xmm6,%xmm13,%xmm13
  408c4b:	c5 d1 15 f5          	vunpckhpd %xmm5,%xmm5,%xmm6
  408c4f:	c4 41 53 58 ed       	vaddsd %xmm13,%xmm5,%xmm13
  408c54:	62 f3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm5,%xmm5
  408c5b:	c4 c1 4b 58 f5       	vaddsd %xmm13,%xmm6,%xmm6
  408c60:	c5 d3 58 f6          	vaddsd %xmm6,%xmm5,%xmm6
  408c64:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  408c68:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  408c6c:	c4 c1 09 15 f6       	vunpckhpd %xmm14,%xmm14,%xmm6
  408c71:	c5 8b 58 ed          	vaddsd %xmm5,%xmm14,%xmm5
  408c75:	c5 cb 58 f5          	vaddsd %xmm5,%xmm6,%xmm6
  408c79:	c5 9b 58 ee          	vaddsd %xmm6,%xmm12,%xmm5
  408c7d:	c4 41 19 15 e4       	vunpckhpd %xmm12,%xmm12,%xmm12
  408c82:	c5 1b 58 e5          	vaddsd %xmm5,%xmm12,%xmm12
  408c86:	c5 d9 15 ec          	vunpckhpd %xmm4,%xmm4,%xmm5
  408c8a:	c4 c1 5b 58 f4       	vaddsd %xmm12,%xmm4,%xmm6
  408c8f:	62 f3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm4,%xmm4
  408c96:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  408c9a:	c5 fd 28 b4 24 80 00 	vmovapd 0x80(%rsp),%ymm6
  408ca1:	00 00 
  408ca3:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  408ca7:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  408cab:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  408cb2:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  408cb6:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  408cbb:	c5 a3 58 ed          	vaddsd %xmm5,%xmm11,%xmm5
  408cbf:	62 53 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm11,%xmm11
  408cc6:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  408cca:	c5 a3 58 ec          	vaddsd %xmm4,%xmm11,%xmm5
  408cce:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  408cd3:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  408cd7:	c5 e1 15 eb          	vunpckhpd %xmm3,%xmm3,%xmm5
  408cdb:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  408cdf:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  408ce3:	62 f3 fd 28 19 dc 01 	vextractf64x2 $0x1,%ymm3,%xmm4
  408cea:	c5 db 58 dd          	vaddsd %xmm5,%xmm4,%xmm3
  408cee:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  408cf2:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  408cf6:	c4 c1 29 15 da       	vunpckhpd %xmm10,%xmm10,%xmm3
  408cfb:	c5 ab 58 e4          	vaddsd %xmm4,%xmm10,%xmm4
  408cff:	62 53 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm10,%xmm10
  408d06:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  408d0a:	c5 ab 58 db          	vaddsd %xmm3,%xmm10,%xmm3
  408d0e:	c4 41 29 15 d2       	vunpckhpd %xmm10,%xmm10,%xmm10
  408d13:	c5 2b 58 d3          	vaddsd %xmm3,%xmm10,%xmm10
  408d17:	c5 e9 15 da          	vunpckhpd %xmm2,%xmm2,%xmm3
  408d1b:	c4 c1 6b 58 e2       	vaddsd %xmm10,%xmm2,%xmm4
  408d20:	62 f3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm2,%xmm2
  408d27:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  408d2b:	c5 eb 58 db          	vaddsd %xmm3,%xmm2,%xmm3
  408d2f:	c5 e9 15 d2          	vunpckhpd %xmm2,%xmm2,%xmm2
  408d33:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  408d37:	c4 c1 39 15 d8       	vunpckhpd %xmm8,%xmm8,%xmm3
  408d3c:	c5 bb 58 d2          	vaddsd %xmm2,%xmm8,%xmm2
  408d40:	62 53 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm8
  408d47:	c4 41 39 15 c8       	vunpckhpd %xmm8,%xmm8,%xmm9
  408d4c:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  408d50:	c5 bb 58 d3          	vaddsd %xmm3,%xmm8,%xmm2
  408d54:	c5 33 58 ca          	vaddsd %xmm2,%xmm9,%xmm9
  408d58:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  408d5c:	c4 c1 4b 58 d9       	vaddsd %xmm9,%xmm6,%xmm3
  408d61:	c5 fd 28 b4 24 a0 00 	vmovapd 0xa0(%rsp),%ymm6
  408d68:	00 00 
  408d6a:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  408d6e:	62 d3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm8
  408d75:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  408d79:	c5 f1 15 c9          	vunpckhpd %xmm1,%xmm1,%xmm1
  408d7d:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  408d81:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  408d85:	c5 cb 58 c9          	vaddsd %xmm1,%xmm6,%xmm1
  408d89:	c5 fd 28 b4 24 c0 00 	vmovapd 0xc0(%rsp),%ymm6
  408d90:	00 00 
  408d92:	c5 fd 6f a2 00 fe ff 	vmovdqa -0x200(%rdx),%ymm4
  408d99:	ff 
  408d9a:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  408d9e:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  408da5:	62 e1 7d 28 6f 52 f2 	vmovdqa32 -0x1c0(%rdx),%ymm18
  408dac:	c5 bb 58 ca          	vaddsd %xmm2,%xmm8,%xmm1
  408db0:	c4 41 39 15 c0       	vunpckhpd %xmm8,%xmm8,%xmm8
  408db5:	c5 fd 6f aa 80 fe ff 	vmovdqa -0x180(%rdx),%ymm5
  408dbc:	ff 
  408dbd:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  408dc1:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  408dc5:	62 f2 3d 20 7e 62 f1 	vpermt2d -0x1e0(%rdx),%ymm24,%ymm4
  408dcc:	c4 c1 4b 58 d0       	vaddsd %xmm8,%xmm6,%xmm2
  408dd1:	c5 fd 28 b4 24 e0 00 	vmovapd 0xe0(%rsp),%ymm6
  408dd8:	00 00 
  408dda:	c5 7d 6f ba c0 fe ff 	vmovdqa -0x140(%rdx),%ymm15
  408de1:	ff 
  408de2:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  408de6:	62 f3 fd 28 19 f7 01 	vextractf64x2 $0x1,%ymm6,%xmm7
  408ded:	62 e2 3d 20 7e 52 f3 	vpermt2d -0x1a0(%rdx),%ymm24,%ymm18
  408df4:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  408df8:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  408dfc:	62 f2 3d 20 7e 6a f5 	vpermt2d -0x160(%rdx),%ymm24,%ymm5
  408e03:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408e07:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  408e0b:	62 e1 7d 28 6f 4a fa 	vmovdqa32 -0xc0(%rdx),%ymm17
  408e12:	c5 cb 58 c0          	vaddsd %xmm0,%xmm6,%xmm0
  408e16:	c5 fd 28 b4 24 00 01 	vmovapd 0x100(%rsp),%ymm6
  408e1d:	00 00 
  408e1f:	c5 fd 6f 52 80       	vmovdqa -0x80(%rdx),%ymm2
  408e24:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408e28:	c5 7d 6f ec          	vmovdqa %ymm4,%ymm13
  408e2c:	62 72 3d 20 7e 7a f7 	vpermt2d -0x120(%rdx),%ymm24,%ymm15
  408e33:	c5 c3 58 c1          	vaddsd %xmm1,%xmm7,%xmm0
  408e37:	c5 c1 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm7
  408e3b:	62 32 3d 20 7e ea    	vpermt2d %ymm18,%ymm24,%ymm13
  408e41:	c5 c3 58 f8          	vaddsd %xmm0,%xmm7,%xmm7
  408e45:	c5 c9 15 c6          	vunpckhpd %xmm6,%xmm6,%xmm0
  408e49:	62 b2 2d 20 7e e2    	vpermt2d %ymm18,%ymm26,%ymm4
  408e4f:	c5 cb 58 cf          	vaddsd %xmm7,%xmm6,%xmm1
  408e53:	c5 7d 6f 8a 40 fe ff 	vmovdqa -0x1c0(%rdx),%ymm9
  408e5a:	ff 
  408e5b:	c5 fd 6f ba 80 fe ff 	vmovdqa -0x180(%rdx),%ymm7
  408e62:	ff 
  408e63:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  408e67:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  408e6e:	c5 7d 6f b2 c0 fe ff 	vmovdqa -0x140(%rdx),%ymm14
  408e75:	ff 
  408e76:	c5 fb 58 d9          	vaddsd %xmm1,%xmm0,%xmm3
  408e7a:	c5 fd 6f 8a 00 ff ff 	vmovdqa -0x100(%rdx),%ymm1
  408e81:	ff 
  408e82:	c5 fd 6f b2 00 fe ff 	vmovdqa -0x200(%rdx),%ymm6
  408e89:	ff 
  408e8a:	62 f2 3d 20 7e 4a f9 	vpermt2d -0xe0(%rdx),%ymm24,%ymm1
  408e91:	c5 7d 6f 9a 00 ff ff 	vmovdqa -0x100(%rdx),%ymm11
  408e98:	ff 
  408e99:	c5 7d 6f 82 40 ff ff 	vmovdqa -0xc0(%rdx),%ymm8
  408ea0:	ff 
  408ea1:	62 e1 7d 28 6f 42 fc 	vmovdqa32 -0x80(%rdx),%ymm16
  408ea8:	62 e1 7d 28 6f d5    	vmovdqa32 %ymm5,%ymm18
  408eae:	c5 7d 6f 62 c0       	vmovdqa -0x40(%rdx),%ymm12
  408eb3:	62 e2 3d 20 7e 4a fb 	vpermt2d -0xa0(%rdx),%ymm24,%ymm17
  408eba:	62 c2 3d 20 7e d7    	vpermt2d %ymm15,%ymm24,%ymm18
  408ec0:	62 d2 2d 20 7e ef    	vpermt2d %ymm15,%ymm26,%ymm5
  408ec6:	62 f2 3d 20 7e 52 fd 	vpermt2d -0x60(%rdx),%ymm24,%ymm2
  408ecd:	c5 7d 6f f9          	vmovdqa %ymm1,%ymm15
  408ed1:	62 72 2d 20 7e 4a f3 	vpermt2d -0x1a0(%rdx),%ymm26,%ymm9
  408ed8:	62 72 2d 20 7e 72 f7 	vpermt2d -0x120(%rdx),%ymm26,%ymm14
  408edf:	62 72 2d 20 7e 42 fb 	vpermt2d -0xa0(%rdx),%ymm26,%ymm8
  408ee6:	62 f2 2d 20 7e 72 f1 	vpermt2d -0x1e0(%rdx),%ymm26,%ymm6
  408eed:	62 f2 2d 20 7e 7a f5 	vpermt2d -0x160(%rdx),%ymm26,%ymm7
  408ef4:	62 72 2d 20 7e 5a f9 	vpermt2d -0xe0(%rdx),%ymm26,%ymm11
  408efb:	62 e2 2d 20 7e 42 fd 	vpermt2d -0x60(%rdx),%ymm26,%ymm16
  408f02:	62 32 3d 20 7e f9    	vpermt2d %ymm17,%ymm24,%ymm15
  408f08:	62 72 3d 20 7e 62 ff 	vpermt2d -0x20(%rdx),%ymm24,%ymm12
  408f0f:	62 b2 2d 20 7e c9    	vpermt2d %ymm17,%ymm26,%ymm1
  408f15:	62 e1 7d 28 6f ca    	vmovdqa32 %ymm2,%ymm17
  408f1b:	62 c2 3d 20 7e cc    	vpermt2d %ymm12,%ymm24,%ymm17
  408f21:	62 d2 2d 20 7e d4    	vpermt2d %ymm12,%ymm26,%ymm2
  408f27:	c5 7d 6f e6          	vmovdqa %ymm6,%ymm12
  408f2b:	62 52 3d 20 7e e1    	vpermt2d %ymm9,%ymm24,%ymm12
  408f31:	62 d2 2d 20 7e f1    	vpermt2d %ymm9,%ymm26,%ymm6
  408f37:	c5 7d 6f 52 c0       	vmovdqa -0x40(%rdx),%ymm10
  408f3c:	c5 7d 6f cf          	vmovdqa %ymm7,%ymm9
  408f40:	62 52 3d 20 7e ce    	vpermt2d %ymm14,%ymm24,%ymm9
  408f46:	62 d2 2d 20 7e fe    	vpermt2d %ymm14,%ymm26,%ymm7
  408f4c:	c4 41 7d 6f f3       	vmovdqa %ymm11,%ymm14
  408f51:	62 72 2d 20 7e 52 ff 	vpermt2d -0x20(%rdx),%ymm26,%ymm10
  408f58:	62 52 3d 20 7e f0    	vpermt2d %ymm8,%ymm24,%ymm14
  408f5e:	62 52 2d 20 7e d8    	vpermt2d %ymm8,%ymm26,%ymm11
  408f64:	62 31 7d 28 6f c0    	vmovdqa32 %ymm16,%ymm8
  408f6a:	62 52 3d 20 7e c2    	vpermt2d %ymm10,%ymm24,%ymm8
  408f70:	62 c2 2d 20 7e c2    	vpermt2d %ymm10,%ymm26,%ymm16
  408f76:	62 c1 7d 28 6f de    	vmovdqa32 %ymm14,%ymm19
  408f7c:	c4 41 7d 6f d5       	vmovdqa %ymm13,%ymm10
  408f81:	62 32 3d 20 7e d2    	vpermt2d %ymm18,%ymm24,%ymm10
  408f87:	62 32 2d 20 7e ea    	vpermt2d %ymm18,%ymm26,%ymm13
  408f8d:	62 c2 3d 20 7e d8    	vpermt2d %ymm8,%ymm24,%ymm19
  408f93:	62 52 2d 20 7e f0    	vpermt2d %ymm8,%ymm26,%ymm14
  408f99:	62 c1 7d 28 6f e7    	vmovdqa32 %ymm15,%ymm20
  408f9f:	62 e1 7d 28 6f d1    	vmovdqa32 %ymm1,%ymm18
  408fa5:	c5 7d 6f c6          	vmovdqa %ymm6,%ymm8
  408fa9:	62 f2 2d 20 7e f7    	vpermt2d %ymm7,%ymm26,%ymm6
  408faf:	62 f2 2d 20 7e ca    	vpermt2d %ymm2,%ymm26,%ymm1
  408fb5:	62 a2 3d 20 7e e1    	vpermt2d %ymm17,%ymm24,%ymm20
  408fbb:	62 32 2d 20 7e f9    	vpermt2d %ymm17,%ymm26,%ymm15
  408fc1:	62 e2 3d 20 7e d2    	vpermt2d %ymm2,%ymm24,%ymm18
  408fc7:	62 c1 7d 28 6f cc    	vmovdqa32 %ymm12,%ymm17
  408fcd:	c5 fd 6f d6          	vmovdqa %ymm6,%ymm2
  408fd1:	c5 7d 7f d6          	vmovdqa %ymm10,%ymm6
  408fd5:	62 c2 3d 20 7e c9    	vpermt2d %ymm9,%ymm24,%ymm17
  408fdb:	62 b2 3d 20 7e f4    	vpermt2d %ymm20,%ymm24,%ymm6
  408fe1:	62 52 2d 20 7e e1    	vpermt2d %ymm9,%ymm26,%ymm12
  408fe7:	62 b3 4d 28 1f cf 04 	vpcmpneqd %ymm23,%ymm6,%k1
  408fee:	c5 7d 6f cc          	vmovdqa %ymm4,%ymm9
  408ff2:	62 b1 7d 28 6f f1    	vmovdqa32 %ymm17,%ymm6
  408ff8:	62 72 3d 20 7e cd    	vpermt2d %ymm5,%ymm24,%ymm9
  408ffe:	62 b2 3d 20 7e f3    	vpermt2d %ymm19,%ymm24,%ymm6
  409004:	62 b3 4d 28 1f c7 04 	vpcmpneqd %ymm23,%ymm6,%k0
  40900b:	c5 7d 7f ce          	vmovdqa %ymm9,%ymm6
  40900f:	62 f2 2d 20 7e e5    	vpermt2d %ymm5,%ymm26,%ymm4
  409015:	62 72 3d 20 7e c7    	vpermt2d %ymm7,%ymm24,%ymm8
  40901b:	c5 7d 7f dd          	vmovdqa %ymm11,%ymm5
  40901f:	62 b2 3d 20 7e f2    	vpermt2d %ymm18,%ymm24,%ymm6
  409025:	62 b3 4d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm6,%k2
  40902c:	62 b2 3d 20 7e e8    	vpermt2d %ymm16,%ymm24,%ymm5
  409032:	c5 7d 7f c6          	vmovdqa %ymm8,%ymm6
  409036:	62 f2 3d 20 7e f5    	vpermt2d %ymm5,%ymm24,%ymm6
  40903c:	62 b3 4d 28 1f df 04 	vpcmpneqd %ymm23,%ymm6,%k3
  409043:	c5 7d 7f ee          	vmovdqa %ymm13,%ymm6
  409047:	62 d2 3d 20 7e f7    	vpermt2d %ymm15,%ymm24,%ymm6
  40904d:	62 b3 4d 28 1f e7 04 	vpcmpneqd %ymm23,%ymm6,%k4
  409054:	c5 7d 7f e6          	vmovdqa %ymm12,%ymm6
  409058:	62 d2 3d 20 7e f6    	vpermt2d %ymm14,%ymm24,%ymm6
  40905e:	62 b3 4d 28 1f ef 04 	vpcmpneqd %ymm23,%ymm6,%k5
  409065:	c5 fd 6f f4          	vmovdqa %ymm4,%ymm6
  409069:	62 f2 3d 20 7e f1    	vpermt2d %ymm1,%ymm24,%ymm6
  40906f:	62 b3 4d 28 1f f7 04 	vpcmpneqd %ymm23,%ymm6,%k6
  409076:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  40907a:	c5 f9 93 c2          	kmovb  %k2,%eax
  40907e:	62 32 2d 20 7e d8    	vpermt2d %ymm16,%ymm26,%ymm11
  409084:	c5 fd 6f f2          	vmovdqa %ymm2,%ymm6
  409088:	c5 f9 93 f1          	kmovb  %k1,%esi
  40908c:	09 c6                	or     %eax,%esi
  40908e:	62 d2 3d 20 7e f3    	vpermt2d %ymm11,%ymm24,%ymm6
  409094:	c5 f9 93 c3          	kmovb  %k3,%eax
  409098:	09 c6                	or     %eax,%esi
  40909a:	62 b3 4d 28 1f ff 04 	vpcmpneqd %ymm23,%ymm6,%k7
  4090a1:	c5 f9 93 c4          	kmovb  %k4,%eax
  4090a5:	62 32 2d 20 7e d4    	vpermt2d %ymm20,%ymm26,%ymm10
  4090ab:	09 c6                	or     %eax,%esi
  4090ad:	62 b1 7d 28 6f f9    	vmovdqa32 %ymm17,%ymm7
  4090b3:	c5 f9 93 c5          	kmovb  %k5,%eax
  4090b7:	62 b3 2d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm10,%k2
  4090be:	09 c6                	or     %eax,%esi
  4090c0:	62 b2 2d 20 7e fb    	vpermt2d %ymm19,%ymm26,%ymm7
  4090c6:	c5 f9 93 c6          	kmovb  %k6,%eax
  4090ca:	62 b3 45 28 1f df 04 	vpcmpneqd %ymm23,%ymm7,%k3
  4090d1:	09 c6                	or     %eax,%esi
  4090d3:	62 32 2d 20 7e ca    	vpermt2d %ymm18,%ymm26,%ymm9
  4090d9:	c5 f9 93 c7          	kmovb  %k7,%eax
  4090dd:	62 72 2d 20 7e c5    	vpermt2d %ymm5,%ymm26,%ymm8
  4090e3:	09 c6                	or     %eax,%esi
  4090e5:	62 b3 35 28 1f e7 04 	vpcmpneqd %ymm23,%ymm9,%k4
  4090ec:	c5 7d 7f ee          	vmovdqa %ymm13,%ymm6
  4090f0:	c5 f9 93 c2          	kmovb  %k2,%eax
  4090f4:	62 b3 3d 28 1f ef 04 	vpcmpneqd %ymm23,%ymm8,%k5
  4090fb:	09 c6                	or     %eax,%esi
  4090fd:	62 d2 2d 20 7e f7    	vpermt2d %ymm15,%ymm26,%ymm6
  409103:	c5 7d 7f e5          	vmovdqa %ymm12,%ymm5
  409107:	c5 f9 93 c3          	kmovb  %k3,%eax
  40910b:	62 b3 4d 28 1f f7 04 	vpcmpneqd %ymm23,%ymm6,%k6
  409112:	09 c6                	or     %eax,%esi
  409114:	62 d2 2d 20 7e ee    	vpermt2d %ymm14,%ymm26,%ymm5
  40911a:	62 f2 2d 20 7e e1    	vpermt2d %ymm1,%ymm26,%ymm4
  409120:	c5 f9 93 c4          	kmovb  %k4,%eax
  409124:	62 b3 55 28 1f ff 04 	vpcmpneqd %ymm23,%ymm5,%k7
  40912b:	09 c6                	or     %eax,%esi
  40912d:	62 b3 5d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm4,%k2
  409134:	c5 f9 93 c5          	kmovb  %k5,%eax
  409138:	62 d2 2d 20 7e d3    	vpermt2d %ymm11,%ymm26,%ymm2
  40913e:	09 c6                	or     %eax,%esi
  409140:	62 b3 6d 28 1f c7 04 	vpcmpneqd %ymm23,%ymm2,%k0
  409147:	c5 f9 93 c6          	kmovb  %k6,%eax
  40914b:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  40914f:	09 c6                	or     %eax,%esi
  409151:	c5 fb 58 db          	vaddsd %xmm3,%xmm0,%xmm3
  409155:	c5 f9 93 c7          	kmovb  %k7,%eax
  409159:	09 c6                	or     %eax,%esi
  40915b:	c5 f9 93 c2          	kmovb  %k2,%eax
  40915f:	09 c6                	or     %eax,%esi
  409161:	c5 f9 92 ce          	kmovb  %esi,%k1
  409165:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  409169:	62 f1 7d a9 6f 4c 24 	vmovdqa32 0x120(%rsp),%ymm1{%k1}{z}
  409170:	09 
  409171:	62 61 25 20 eb d9    	vpord  %ymm1,%ymm27,%ymm27
  409177:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  40917c:	48 39 d1             	cmp    %rdx,%rcx
  40917f:	0f 85 f6 f3 ff ff    	jne    40857b <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x154b>
  409185:	62 91 7d 08 6f cb    	vmovdqa32 %xmm27,%xmm1
  40918b:	62 63 7d 28 39 d8 01 	vextracti32x4 $0x1,%ymm27,%xmm0
  409192:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  409196:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  40919b:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  40919f:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  4091a4:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  4091a8:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  4091ac:	41 09 c5             	or     %eax,%r13d
  4091af:	48 8d 84 24 80 19 00 	lea    0x1980(%rsp),%rax
  4091b6:	00 
  4091b7:	48 39 c1             	cmp    %rax,%rcx
  4091ba:	0f 85 a7 f3 ff ff    	jne    408567 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x1537>
  4091c0:	e9 0e ef ff ff       	jmpq   4080d3 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x10a3>
  4091c5:	48 8b 83 b8 00 00 00 	mov    0xb8(%rbx),%rax
  4091cc:	80 38 00             	cmpb   $0x0,(%rax)
  4091cf:	0f 85 7d 03 00 00    	jne    409552 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2522>
  4091d5:	48 8b 83 c0 00 00 00 	mov    0xc0(%rbx),%rax
  4091dc:	80 38 00             	cmpb   $0x0,(%rax)
  4091df:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  4091e4:	0f 84 be 10 00 00    	je     40a2a8 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x3278>
  4091ea:	62 f2 7d 48 18 05 3c 	vbroadcastss 0x753c(%rip),%zmm0        # 410730 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x230>
  4091f1:	75 00 00 
  4091f4:	62 f2 7d 48 18 15 0a 	vbroadcastss 0x750a(%rip),%zmm2        # 410708 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x208>
  4091fb:	75 00 00 
  4091fe:	62 f2 7d 48 18 1d 04 	vbroadcastss 0x7504(%rip),%zmm3        # 41070c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x20c>
  409205:	75 00 00 
  409208:	62 f2 7d 48 18 25 fe 	vbroadcastss 0x74fe(%rip),%zmm4        # 410710 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x210>
  40920f:	74 00 00 
  409212:	62 f2 7d 48 18 2d f8 	vbroadcastss 0x74f8(%rip),%zmm5        # 410714 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x214>
  409219:	74 00 00 
  40921c:	62 f2 7d 48 18 35 f2 	vbroadcastss 0x74f2(%rip),%zmm6        # 410718 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x218>
  409223:	74 00 00 
  409226:	62 f2 7d 48 18 3d ec 	vbroadcastss 0x74ec(%rip),%zmm7        # 41071c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x21c>
  40922d:	74 00 00 
  409230:	62 72 7d 48 18 05 e6 	vbroadcastss 0x74e6(%rip),%zmm8        # 410720 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x220>
  409237:	74 00 00 
  40923a:	62 72 7d 48 18 0d e0 	vbroadcastss 0x74e0(%rip),%zmm9        # 410724 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x224>
  409241:	74 00 00 
  409244:	62 72 7d 48 18 15 da 	vbroadcastss 0x74da(%rip),%zmm10        # 410728 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x228>
  40924b:	74 00 00 
  40924e:	62 72 7d 48 18 1d d4 	vbroadcastss 0x74d4(%rip),%zmm11        # 41072c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x22c>
  409255:	74 00 00 
  409258:	62 72 7d 48 18 25 7a 	vbroadcastss 0x737a(%rip),%zmm12        # 4105dc <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xdc>
  40925f:	73 00 00 
  409262:	62 f2 7d 48 18 0d c8 	vbroadcastss 0x74c8(%rip),%zmm1        # 410734 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x234>
  409269:	74 00 00 
  40926c:	62 71 7c 48 28 e8    	vmovaps %zmm0,%zmm13
  409272:	62 72 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm13
  409278:	62 72 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm12
  40927e:	62 72 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm11
  409284:	62 72 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm10
  40928a:	62 72 75 48 98 c8    	vfmadd132ps %zmm0,%zmm1,%zmm9
  409290:	62 72 75 48 98 c0    	vfmadd132ps %zmm0,%zmm1,%zmm8
  409296:	62 f2 75 48 98 f8    	vfmadd132ps %zmm0,%zmm1,%zmm7
  40929c:	62 f2 75 48 98 f0    	vfmadd132ps %zmm0,%zmm1,%zmm6
  4092a2:	62 f2 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm5
  4092a8:	62 f2 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm4
  4092ae:	62 f2 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm3
  4092b4:	62 f2 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm2
  4092ba:	ff c8                	dec    %eax
  4092bc:	75 b4                	jne    409272 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2242>
  4092be:	62 73 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm13,%ymm0
  4092c5:	c4 c1 7c 58 c5       	vaddps %ymm13,%ymm0,%ymm0
  4092ca:	45 31 ed             	xor    %r13d,%r13d
  4092cd:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  4092d3:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  4092d7:	c4 e3 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm1
  4092dd:	c5 f0 58 c8          	vaddps %xmm0,%xmm1,%xmm1
  4092e1:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  4092e5:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  4092ea:	c5 fa 58 c1          	vaddss %xmm1,%xmm0,%xmm0
  4092ee:	62 73 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm12,%ymm1
  4092f5:	c4 c1 74 58 cc       	vaddps %ymm12,%ymm1,%ymm1
  4092fa:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4092fe:	c5 fb 58 05 da 73 00 	vaddsd 0x73da(%rip),%xmm0,%xmm0        # 4106e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  409305:	00 
  409306:	c4 c3 7d 19 cc 01    	vextractf128 $0x1,%ymm1,%xmm12
  40930c:	c5 98 58 c9          	vaddps %xmm1,%xmm12,%xmm1
  409310:	c4 63 79 04 e1 4e    	vpermilps $0x4e,%xmm1,%xmm12
  409316:	c5 18 58 e1          	vaddps %xmm1,%xmm12,%xmm12
  40931a:	c5 78 29 e1          	vmovaps %xmm12,%xmm1
  40931e:	c4 41 18 c6 e4 55    	vshufps $0x55,%xmm12,%xmm12,%xmm12
  409324:	c4 c1 72 58 cc       	vaddss %xmm12,%xmm1,%xmm1
  409329:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40932d:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  409331:	62 73 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm11,%ymm0
  409338:	c4 c1 7c 58 c3       	vaddps %ymm11,%ymm0,%ymm0
  40933d:	c4 c3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm11
  409343:	c5 a0 58 c0          	vaddps %xmm0,%xmm11,%xmm0
  409347:	c4 63 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm11
  40934d:	c5 20 58 d8          	vaddps %xmm0,%xmm11,%xmm11
  409351:	c5 78 29 d8          	vmovaps %xmm11,%xmm0
  409355:	c4 41 20 c6 db 55    	vshufps $0x55,%xmm11,%xmm11,%xmm11
  40935b:	c4 c1 7a 58 c3       	vaddss %xmm11,%xmm0,%xmm0
  409360:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409364:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  409368:	62 73 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm1
  40936f:	c4 c1 74 58 ca       	vaddps %ymm10,%ymm1,%ymm1
  409374:	c4 c3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm10
  40937a:	c5 a8 58 c9          	vaddps %xmm1,%xmm10,%xmm1
  40937e:	c4 63 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm10
  409384:	c5 28 58 d1          	vaddps %xmm1,%xmm10,%xmm10
  409388:	c5 78 29 d1          	vmovaps %xmm10,%xmm1
  40938c:	c4 41 28 c6 d2 55    	vshufps $0x55,%xmm10,%xmm10,%xmm10
  409392:	c4 c1 72 58 ca       	vaddss %xmm10,%xmm1,%xmm1
  409397:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40939b:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40939f:	62 73 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm0
  4093a6:	c4 c1 7c 58 c1       	vaddps %ymm9,%ymm0,%ymm0
  4093ab:	c4 c3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm9
  4093b1:	c5 b0 58 c0          	vaddps %xmm0,%xmm9,%xmm0
  4093b5:	c4 63 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm9
  4093bb:	c5 30 58 c8          	vaddps %xmm0,%xmm9,%xmm9
  4093bf:	c5 78 29 c8          	vmovaps %xmm9,%xmm0
  4093c3:	c4 41 30 c6 c9 55    	vshufps $0x55,%xmm9,%xmm9,%xmm9
  4093c9:	c4 c1 7a 58 c1       	vaddss %xmm9,%xmm0,%xmm0
  4093ce:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4093d2:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4093d6:	62 73 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm8,%ymm1
  4093dd:	c4 c1 74 58 c8       	vaddps %ymm8,%ymm1,%ymm1
  4093e2:	c4 c3 7d 19 c8 01    	vextractf128 $0x1,%ymm1,%xmm8
  4093e8:	c5 b8 58 c9          	vaddps %xmm1,%xmm8,%xmm1
  4093ec:	c4 63 79 04 c1 4e    	vpermilps $0x4e,%xmm1,%xmm8
  4093f2:	c5 38 58 c1          	vaddps %xmm1,%xmm8,%xmm8
  4093f6:	c5 78 29 c1          	vmovaps %xmm8,%xmm1
  4093fa:	c4 41 38 c6 c0 55    	vshufps $0x55,%xmm8,%xmm8,%xmm8
  409400:	c4 c1 72 58 c8       	vaddss %xmm8,%xmm1,%xmm1
  409405:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409409:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40940d:	62 f3 fd 48 1b f8 01 	vextractf64x4 $0x1,%zmm7,%ymm0
  409414:	c5 fc 58 c7          	vaddps %ymm7,%ymm0,%ymm0
  409418:	c4 e3 7d 19 c7 01    	vextractf128 $0x1,%ymm0,%xmm7
  40941e:	c5 c0 58 c0          	vaddps %xmm0,%xmm7,%xmm0
  409422:	c4 e3 79 04 f8 4e    	vpermilps $0x4e,%xmm0,%xmm7
  409428:	c5 c0 58 f8          	vaddps %xmm0,%xmm7,%xmm7
  40942c:	c5 f8 28 c7          	vmovaps %xmm7,%xmm0
  409430:	c5 c0 c6 ff 55       	vshufps $0x55,%xmm7,%xmm7,%xmm7
  409435:	c5 fa 58 c7          	vaddss %xmm7,%xmm0,%xmm0
  409439:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  40943d:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  409441:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  409448:	c5 f4 58 ce          	vaddps %ymm6,%ymm1,%ymm1
  40944c:	c4 e3 7d 19 ce 01    	vextractf128 $0x1,%ymm1,%xmm6
  409452:	c5 c8 58 c9          	vaddps %xmm1,%xmm6,%xmm1
  409456:	c4 e3 79 04 f1 4e    	vpermilps $0x4e,%xmm1,%xmm6
  40945c:	c5 c8 58 f1          	vaddps %xmm1,%xmm6,%xmm6
  409460:	c5 f8 28 ce          	vmovaps %xmm6,%xmm1
  409464:	c5 c8 c6 f6 55       	vshufps $0x55,%xmm6,%xmm6,%xmm6
  409469:	c5 f2 58 ce          	vaddss %xmm6,%xmm1,%xmm1
  40946d:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409471:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  409475:	62 f3 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm5,%ymm0
  40947c:	c5 fc 58 c5          	vaddps %ymm5,%ymm0,%ymm0
  409480:	c4 e3 7d 19 c5 01    	vextractf128 $0x1,%ymm0,%xmm5
  409486:	c5 d0 58 c0          	vaddps %xmm0,%xmm5,%xmm0
  40948a:	c4 e3 79 04 e8 4e    	vpermilps $0x4e,%xmm0,%xmm5
  409490:	c5 d0 58 e8          	vaddps %xmm0,%xmm5,%xmm5
  409494:	c5 f8 28 c5          	vmovaps %xmm5,%xmm0
  409498:	c5 d0 c6 ed 55       	vshufps $0x55,%xmm5,%xmm5,%xmm5
  40949d:	c5 fa 58 c5          	vaddss %xmm5,%xmm0,%xmm0
  4094a1:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4094a5:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4094a9:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  4094b0:	c5 f4 58 cc          	vaddps %ymm4,%ymm1,%ymm1
  4094b4:	c4 e3 7d 19 cc 01    	vextractf128 $0x1,%ymm1,%xmm4
  4094ba:	c5 d8 58 c9          	vaddps %xmm1,%xmm4,%xmm1
  4094be:	c4 e3 79 04 e1 4e    	vpermilps $0x4e,%xmm1,%xmm4
  4094c4:	c5 d8 58 e1          	vaddps %xmm1,%xmm4,%xmm4
  4094c8:	c5 f8 28 cc          	vmovaps %xmm4,%xmm1
  4094cc:	c5 d8 c6 e4 55       	vshufps $0x55,%xmm4,%xmm4,%xmm4
  4094d1:	c5 f2 58 cc          	vaddss %xmm4,%xmm1,%xmm1
  4094d5:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4094d9:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4094dd:	62 f3 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm3,%ymm0
  4094e4:	c5 fc 58 c3          	vaddps %ymm3,%ymm0,%ymm0
  4094e8:	c4 e3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm3
  4094ee:	c5 e0 58 c0          	vaddps %xmm0,%xmm3,%xmm0
  4094f2:	c4 e3 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm3
  4094f8:	c5 e0 58 d8          	vaddps %xmm0,%xmm3,%xmm3
  4094fc:	c5 f8 28 c3          	vmovaps %xmm3,%xmm0
  409500:	c5 e0 c6 db 55       	vshufps $0x55,%xmm3,%xmm3,%xmm3
  409505:	c5 fa 58 c3          	vaddss %xmm3,%xmm0,%xmm0
  409509:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  40950d:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  409511:	62 f3 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm2,%ymm1
  409518:	c5 f4 58 ca          	vaddps %ymm2,%ymm1,%ymm1
  40951c:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  409522:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  409526:	c4 e3 79 04 ca 4e    	vpermilps $0x4e,%xmm2,%xmm1
  40952c:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
  409530:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
  409534:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  409539:	c5 ea 58 c9          	vaddss %xmm1,%xmm2,%xmm1
  40953d:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409541:	c5 f3 58 f8          	vaddsd %xmm0,%xmm1,%xmm7
  409545:	c4 e1 f9 7e fb       	vmovq  %xmm7,%rbx
  40954a:	c5 f8 77             	vzeroupper 
  40954d:	e9 3d db ff ff       	jmpq   40708f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  409552:	48 8b 83 90 00 00 00 	mov    0x90(%rbx),%rax
  409559:	8b 00                	mov    (%rax),%eax
  40955b:	83 f8 06             	cmp    $0x6,%eax
  40955e:	0f 84 a1 01 00 00    	je     409705 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x26d5>
  409564:	83 f8 18             	cmp    $0x18,%eax
  409567:	0f 85 38 02 00 00    	jne    4097a5 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2775>
  40956d:	31 f6                	xor    %esi,%esi
  40956f:	ba 00 06 00 00       	mov    $0x600,%edx
  409574:	48 8d bc 24 80 09 00 	lea    0x980(%rsp),%rdi
  40957b:	00 
  40957c:	e8 ff 9b ff ff       	callq  403180 <memset@plt>
  409581:	62 f2 7d 48 79 0d a7 	vpbroadcastw 0x71a7(%rip),%zmm1        # 410732 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  409588:	71 00 00 
  40958b:	31 f6                	xor    %esi,%esi
  40958d:	48 8d 8c 24 80 0f 00 	lea    0xf80(%rsp),%rcx
  409594:	00 
  409595:	48 8d 94 24 80 09 00 	lea    0x980(%rsp),%rdx
  40959c:	00 
  40959d:	48 89 d0             	mov    %rdx,%rax
  4095a0:	62 f1 7c 48 28 00    	vmovaps (%rax),%zmm0
  4095a6:	48 83 c0 40          	add    $0x40,%rax
  4095aa:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  4095b0:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  4095b6:	62 f1 7c 48 29 40 ff 	vmovaps %zmm0,-0x40(%rax)
  4095bd:	48 39 c1             	cmp    %rax,%rcx
  4095c0:	75 de                	jne    4095a0 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2570>
  4095c2:	83 c6 02             	add    $0x2,%esi
  4095c5:	81 fe be c6 2d 00    	cmp    $0x2dc6be,%esi
  4095cb:	75 c8                	jne    409595 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2565>
  4095cd:	48 8d b4 24 80 09 00 	lea    0x980(%rsp),%rsi
  4095d4:	00 
  4095d5:	62 f1 7c 48 28 06    	vmovaps (%rsi),%zmm0
  4095db:	b8 02 00 00 00       	mov    $0x2,%eax
  4095e0:	eb 0b                	jmp    4095ed <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x25bd>
  4095e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4095e8:	b8 01 00 00 00       	mov    $0x1,%eax
  4095ed:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  4095f3:	83 f8 01             	cmp    $0x1,%eax
  4095f6:	75 f0                	jne    4095e8 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x25b8>
  4095f8:	62 f1 7c 48 29 06    	vmovaps %zmm0,(%rsi)
  4095fe:	48 83 c6 40          	add    $0x40,%rsi
  409602:	48 39 f1             	cmp    %rsi,%rcx
  409605:	75 ce                	jne    4095d5 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x25a5>
  409607:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  40960b:	c5 db 10 c4          	vmovsd %xmm4,%xmm4,%xmm0
  40960f:	c5 fc 28 12          	vmovaps (%rdx),%ymm2
  409613:	62 f1 7c 48 28 32    	vmovaps (%rdx),%zmm6
  409619:	c5 ea 5a ca          	vcvtss2sd %xmm2,%xmm2,%xmm1
  40961d:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  409621:	c5 e8 c6 ca 55       	vshufps $0x55,%xmm2,%xmm2,%xmm1
  409626:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40962a:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40962e:	c5 e8 15 c2          	vunpckhps %xmm2,%xmm2,%xmm0
  409632:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409636:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  40963a:	c5 e8 c6 ca ff       	vshufps $0xff,%xmm2,%xmm2,%xmm1
  40963f:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409643:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  409647:	c4 e3 7d 19 d0 01    	vextractf128 $0x1,%ymm2,%xmm0
  40964d:	c5 fa 5a d0          	vcvtss2sd %xmm0,%xmm0,%xmm2
  409651:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
  409655:	c5 f8 c6 d0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm2
  40965a:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  40965e:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  409662:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  409666:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40966a:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40966e:	c5 f8 c6 c0 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm0
  409673:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409677:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  40967b:	62 f3 7d 48 1b f1 01 	vextractf32x8 $0x1,%zmm6,%ymm1
  409682:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  409686:	c5 e3 58 d8          	vaddsd %xmm0,%xmm3,%xmm3
  40968a:	c5 f0 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm0
  40968f:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  409693:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0
  409697:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  40969b:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40969f:	c5 e3 58 d8          	vaddsd %xmm0,%xmm3,%xmm3
  4096a3:	c5 f0 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm0
  4096a8:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4096ac:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0
  4096b0:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4096b6:	c5 f2 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm2
  4096ba:	c5 eb 58 c0          	vaddsd %xmm0,%xmm2,%xmm0
  4096be:	c5 f0 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm2
  4096c3:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  4096c7:	c5 eb 58 d0          	vaddsd %xmm0,%xmm2,%xmm2
  4096cb:	c5 f0 15 c1          	vunpckhps %xmm1,%xmm1,%xmm0
  4096cf:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4096d3:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
  4096d7:	48 83 c2 40          	add    $0x40,%rdx
  4096db:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  4096e0:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4096e4:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  4096e8:	48 39 d1             	cmp    %rdx,%rcx
  4096eb:	0f 85 1e ff ff ff    	jne    40960f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x25df>
  4096f1:	c5 fb 58 fc          	vaddsd %xmm4,%xmm0,%xmm7
  4096f5:	45 31 ed             	xor    %r13d,%r13d
  4096f8:	c4 e1 f9 7e fb       	vmovq  %xmm7,%rbx
  4096fd:	c5 f8 77             	vzeroupper 
  409700:	e9 8a d9 ff ff       	jmpq   40708f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  409705:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  409709:	62 f2 7d 48 79 0d 1f 	vpbroadcastw 0x701f(%rip),%zmm1        # 410732 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  409710:	70 00 00 
  409713:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  409718:	62 f1 7c 48 28 d0    	vmovaps %zmm0,%zmm2
  40971e:	62 f1 7c 48 28 d8    	vmovaps %zmm0,%zmm3
  409724:	62 f1 7c 48 28 e0    	vmovaps %zmm0,%zmm4
  40972a:	62 f1 7c 48 28 e8    	vmovaps %zmm0,%zmm5
  409730:	62 f1 7c 48 28 f8    	vmovaps %zmm0,%zmm7
  409736:	62 f2 76 48 52 f9    	vdpbf16ps %zmm1,%zmm1,%zmm7
  40973c:	62 f2 76 48 52 e9    	vdpbf16ps %zmm1,%zmm1,%zmm5
  409742:	62 f2 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm4
  409748:	62 f2 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm3
  40974e:	62 f2 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm2
  409754:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  40975a:	ff c8                	dec    %eax
  40975c:	75 d8                	jne    409736 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2706>
  40975e:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  409762:	c5 42 5a cf          	vcvtss2sd %xmm7,%xmm7,%xmm9
  409766:	c5 33 58 ce          	vaddsd %xmm6,%xmm9,%xmm9
  40976a:	c5 40 c6 d7 55       	vshufps $0x55,%xmm7,%xmm7,%xmm10
  40976f:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409774:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  409779:	c5 40 15 cf          	vunpckhps %xmm7,%xmm7,%xmm9
  40977d:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409782:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409787:	c4 e3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm1
  40978d:	c5 40 c6 c7 ff       	vshufps $0xff,%xmm7,%xmm7,%xmm8
  409792:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409797:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  40979c:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  4097a0:	e9 4b 06 00 00       	jmpq   409df0 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x2dc0>
  4097a5:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  4097a9:	62 f2 7d 48 79 0d 7f 	vpbroadcastw 0x6f7f(%rip),%zmm1        # 410732 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  4097b0:	6f 00 00 
  4097b3:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  4097b8:	62 f1 7c 48 28 d0    	vmovaps %zmm0,%zmm2
  4097be:	62 f1 7c 48 28 d8    	vmovaps %zmm0,%zmm3
  4097c4:	62 f1 7c 48 28 e0    	vmovaps %zmm0,%zmm4
  4097ca:	62 f1 7c 48 28 e8    	vmovaps %zmm0,%zmm5
  4097d0:	62 f1 7c 48 28 f8    	vmovaps %zmm0,%zmm7
  4097d6:	62 71 7c 48 28 c0    	vmovaps %zmm0,%zmm8
  4097dc:	62 71 7c 48 28 c8    	vmovaps %zmm0,%zmm9
  4097e2:	62 71 7c 48 28 d0    	vmovaps %zmm0,%zmm10
  4097e8:	62 71 7c 48 28 d8    	vmovaps %zmm0,%zmm11
  4097ee:	62 71 7c 48 28 e0    	vmovaps %zmm0,%zmm12
  4097f4:	62 71 7c 48 28 e8    	vmovaps %zmm0,%zmm13
  4097fa:	62 72 76 48 52 e9    	vdpbf16ps %zmm1,%zmm1,%zmm13
  409800:	62 72 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm12
  409806:	62 72 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm11
  40980c:	62 72 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm10
  409812:	62 72 76 48 52 c9    	vdpbf16ps %zmm1,%zmm1,%zmm9
  409818:	62 72 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm8
  40981e:	62 f2 76 48 52 f9    	vdpbf16ps %zmm1,%zmm1,%zmm7
  409824:	62 f2 76 48 52 e9    	vdpbf16ps %zmm1,%zmm1,%zmm5
  40982a:	62 f2 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm4
  409830:	62 f2 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm3
  409836:	62 f2 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm2
  40983c:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  409842:	ff c8                	dec    %eax
  409844:	75 b4                	jne    4097fa <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x27ca>
  409846:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  40984a:	c4 41 12 5a fd       	vcvtss2sd %xmm13,%xmm13,%xmm15
  40984f:	c5 03 58 fe          	vaddsd %xmm6,%xmm15,%xmm15
  409853:	62 c1 14 08 c6 c5 55 	vshufps $0x55,%xmm13,%xmm13,%xmm16
  40985a:	62 a1 7e 00 5a c0    	vcvtss2sd %xmm16,%xmm16,%xmm16
  409860:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  409866:	c4 41 10 15 fd       	vunpckhps %xmm13,%xmm13,%xmm15
  40986b:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  409870:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  409876:	c4 41 10 c6 f5 ff    	vshufps $0xff,%xmm13,%xmm13,%xmm14
  40987c:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409881:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  409886:	c4 63 7d 19 e9 01    	vextractf128 $0x1,%ymm13,%xmm1
  40988c:	c5 72 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm15
  409890:	c4 41 03 58 fe       	vaddsd %xmm14,%xmm15,%xmm15
  409895:	c5 70 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm14
  40989a:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  40989f:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  4098a4:	c5 70 15 f9          	vunpckhps %xmm1,%xmm1,%xmm15
  4098a8:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  4098ad:	c4 41 03 58 fe       	vaddsd %xmm14,%xmm15,%xmm15
  4098b2:	c5 70 c6 f1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm14
  4098b7:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  4098bc:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  4098c1:	62 73 7d 48 1b e9 01 	vextractf32x8 $0x1,%zmm13,%ymm1
  4098c8:	c5 72 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm15
  4098cc:	c4 41 03 58 f6       	vaddsd %xmm14,%xmm15,%xmm14
  4098d1:	c5 70 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm15
  4098d6:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  4098db:	c4 41 03 58 fe       	vaddsd %xmm14,%xmm15,%xmm15
  4098e0:	c5 70 15 f1          	vunpckhps %xmm1,%xmm1,%xmm14
  4098e4:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  4098e9:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  4098ee:	c5 70 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm13
  4098f3:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  4098f8:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  4098fd:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409903:	c5 72 5a f1          	vcvtss2sd %xmm1,%xmm1,%xmm14
  409907:	c4 41 0b 58 ed       	vaddsd %xmm13,%xmm14,%xmm13
  40990c:	c5 70 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm14
  409911:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409916:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  40991b:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  40991f:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409924:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  409929:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40992e:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409932:	c4 c1 73 58 cd       	vaddsd %xmm13,%xmm1,%xmm1
  409937:	c4 41 1a 5a fc       	vcvtss2sd %xmm12,%xmm12,%xmm15
  40993c:	c4 41 18 c6 f4 ff    	vshufps $0xff,%xmm12,%xmm12,%xmm14
  409942:	c5 83 58 c9          	vaddsd %xmm1,%xmm15,%xmm1
  409946:	c4 41 18 c6 fc 55    	vshufps $0x55,%xmm12,%xmm12,%xmm15
  40994c:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  409951:	c5 03 58 f9          	vaddsd %xmm1,%xmm15,%xmm15
  409955:	c4 c1 18 15 cc       	vunpckhps %xmm12,%xmm12,%xmm1
  40995a:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40995e:	c4 c1 73 58 cf       	vaddsd %xmm15,%xmm1,%xmm1
  409963:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409968:	c5 0b 58 f1          	vaddsd %xmm1,%xmm14,%xmm14
  40996c:	c4 63 7d 19 e1 01    	vextractf128 $0x1,%ymm12,%xmm1
  409972:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  409976:	c4 41 13 58 f6       	vaddsd %xmm14,%xmm13,%xmm14
  40997b:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  409980:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409985:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  40998a:	c5 70 15 f1          	vunpckhps %xmm1,%xmm1,%xmm14
  40998e:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409993:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  409998:	c5 70 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm13
  40999d:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  4099a2:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  4099a7:	62 73 7d 48 1b e1 01 	vextractf32x8 $0x1,%zmm12,%ymm1
  4099ae:	c5 72 5a f1          	vcvtss2sd %xmm1,%xmm1,%xmm14
  4099b2:	c4 41 0b 58 ed       	vaddsd %xmm13,%xmm14,%xmm13
  4099b7:	c5 70 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm14
  4099bc:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  4099c1:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  4099c6:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  4099ca:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  4099cf:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  4099d4:	c5 70 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm12
  4099d9:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  4099de:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  4099e3:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4099e9:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  4099ed:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  4099f2:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  4099f7:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  4099fc:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  409a01:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  409a05:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409a0a:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  409a0f:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409a14:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409a18:	c4 c1 73 58 cc       	vaddsd %xmm12,%xmm1,%xmm1
  409a1d:	c4 41 22 5a f3       	vcvtss2sd %xmm11,%xmm11,%xmm14
  409a22:	c4 41 20 c6 eb ff    	vshufps $0xff,%xmm11,%xmm11,%xmm13
  409a28:	c5 8b 58 c9          	vaddsd %xmm1,%xmm14,%xmm1
  409a2c:	c4 41 20 c6 f3 55    	vshufps $0x55,%xmm11,%xmm11,%xmm14
  409a32:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  409a37:	c5 0b 58 f1          	vaddsd %xmm1,%xmm14,%xmm14
  409a3b:	c4 c1 20 15 cb       	vunpckhps %xmm11,%xmm11,%xmm1
  409a40:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409a44:	c4 c1 73 58 ce       	vaddsd %xmm14,%xmm1,%xmm1
  409a49:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409a4e:	c5 13 58 e9          	vaddsd %xmm1,%xmm13,%xmm13
  409a52:	c4 63 7d 19 d9 01    	vextractf128 $0x1,%ymm11,%xmm1
  409a58:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  409a5c:	c4 41 1b 58 ed       	vaddsd %xmm13,%xmm12,%xmm13
  409a61:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  409a66:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409a6b:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  409a70:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  409a74:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409a79:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  409a7e:	c5 70 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm12
  409a83:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409a88:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  409a8d:	62 73 7d 48 1b d9 01 	vextractf32x8 $0x1,%zmm11,%ymm1
  409a94:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  409a98:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  409a9d:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  409aa2:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409aa7:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  409aac:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  409ab0:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409ab5:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  409aba:	c5 70 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm11
  409abf:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409ac4:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409ac9:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409acf:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  409ad3:	c4 41 1b 58 db       	vaddsd %xmm11,%xmm12,%xmm11
  409ad8:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  409add:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409ae2:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  409ae7:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  409aeb:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409af0:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409af5:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409afa:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409afe:	c4 c1 73 58 cb       	vaddsd %xmm11,%xmm1,%xmm1
  409b03:	c4 41 2a 5a ea       	vcvtss2sd %xmm10,%xmm10,%xmm13
  409b08:	c4 41 28 c6 e2 ff    	vshufps $0xff,%xmm10,%xmm10,%xmm12
  409b0e:	c5 93 58 c9          	vaddsd %xmm1,%xmm13,%xmm1
  409b12:	c4 41 28 c6 ea 55    	vshufps $0x55,%xmm10,%xmm10,%xmm13
  409b18:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  409b1d:	c5 13 58 e9          	vaddsd %xmm1,%xmm13,%xmm13
  409b21:	c4 c1 28 15 ca       	vunpckhps %xmm10,%xmm10,%xmm1
  409b26:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409b2a:	c4 c1 73 58 cd       	vaddsd %xmm13,%xmm1,%xmm1
  409b2f:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409b34:	c5 1b 58 e1          	vaddsd %xmm1,%xmm12,%xmm12
  409b38:	c4 63 7d 19 d1 01    	vextractf128 $0x1,%ymm10,%xmm1
  409b3e:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  409b42:	c4 41 23 58 e4       	vaddsd %xmm12,%xmm11,%xmm12
  409b47:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  409b4c:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409b51:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409b56:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  409b5a:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409b5f:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  409b64:	c5 70 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm11
  409b69:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409b6e:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409b73:	62 73 7d 48 1b d1 01 	vextractf32x8 $0x1,%zmm10,%ymm1
  409b7a:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  409b7e:	c4 41 1b 58 db       	vaddsd %xmm11,%xmm12,%xmm11
  409b83:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  409b88:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409b8d:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  409b92:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  409b96:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409b9b:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409ba0:	c5 70 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm10
  409ba5:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409baa:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409baf:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409bb5:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  409bb9:	c4 41 23 58 d2       	vaddsd %xmm10,%xmm11,%xmm10
  409bbe:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  409bc3:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409bc8:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  409bcd:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  409bd1:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409bd6:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409bdb:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409be0:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409be4:	c4 c1 73 58 ca       	vaddsd %xmm10,%xmm1,%xmm1
  409be9:	c4 41 32 5a e1       	vcvtss2sd %xmm9,%xmm9,%xmm12
  409bee:	c4 41 30 c6 d9 ff    	vshufps $0xff,%xmm9,%xmm9,%xmm11
  409bf4:	c5 9b 58 c9          	vaddsd %xmm1,%xmm12,%xmm1
  409bf8:	c4 41 30 c6 e1 55    	vshufps $0x55,%xmm9,%xmm9,%xmm12
  409bfe:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409c03:	c5 1b 58 e1          	vaddsd %xmm1,%xmm12,%xmm12
  409c07:	c4 c1 30 15 c9       	vunpckhps %xmm9,%xmm9,%xmm1
  409c0c:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409c10:	c4 c1 73 58 cc       	vaddsd %xmm12,%xmm1,%xmm1
  409c15:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409c1a:	c5 23 58 d9          	vaddsd %xmm1,%xmm11,%xmm11
  409c1e:	c4 63 7d 19 c9 01    	vextractf128 $0x1,%ymm9,%xmm1
  409c24:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  409c28:	c4 41 2b 58 db       	vaddsd %xmm11,%xmm10,%xmm11
  409c2d:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  409c32:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409c37:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409c3c:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  409c40:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409c45:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  409c4a:	c5 70 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm10
  409c4f:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409c54:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409c59:	62 73 7d 48 1b c9 01 	vextractf32x8 $0x1,%zmm9,%ymm1
  409c60:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  409c64:	c4 41 23 58 d2       	vaddsd %xmm10,%xmm11,%xmm10
  409c69:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  409c6e:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409c73:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  409c78:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  409c7c:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409c81:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409c86:	c5 70 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm9
  409c8b:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409c90:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409c95:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409c9b:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  409c9f:	c4 41 2b 58 c9       	vaddsd %xmm9,%xmm10,%xmm9
  409ca4:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  409ca9:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409cae:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  409cb3:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  409cb7:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409cbc:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409cc1:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409cc6:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409cca:	c4 c1 73 58 c9       	vaddsd %xmm9,%xmm1,%xmm1
  409ccf:	c4 41 3a 5a d8       	vcvtss2sd %xmm8,%xmm8,%xmm11
  409cd4:	c4 41 38 c6 d0 ff    	vshufps $0xff,%xmm8,%xmm8,%xmm10
  409cda:	c5 a3 58 c9          	vaddsd %xmm1,%xmm11,%xmm1
  409cde:	c4 41 38 c6 d8 55    	vshufps $0x55,%xmm8,%xmm8,%xmm11
  409ce4:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409ce9:	c5 23 58 d9          	vaddsd %xmm1,%xmm11,%xmm11
  409ced:	c4 c1 38 15 c8       	vunpckhps %xmm8,%xmm8,%xmm1
  409cf2:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409cf6:	c4 c1 73 58 cb       	vaddsd %xmm11,%xmm1,%xmm1
  409cfb:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409d00:	c5 2b 58 d1          	vaddsd %xmm1,%xmm10,%xmm10
  409d04:	c4 63 7d 19 c1 01    	vextractf128 $0x1,%ymm8,%xmm1
  409d0a:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  409d0e:	c4 41 33 58 d2       	vaddsd %xmm10,%xmm9,%xmm10
  409d13:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  409d18:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409d1d:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409d22:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  409d26:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409d2b:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  409d30:	c5 70 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm9
  409d35:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409d3a:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409d3f:	62 73 7d 48 1b c1 01 	vextractf32x8 $0x1,%zmm8,%ymm1
  409d46:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  409d4a:	c4 41 2b 58 c9       	vaddsd %xmm9,%xmm10,%xmm9
  409d4f:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  409d54:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409d59:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  409d5e:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  409d62:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409d67:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409d6c:	c5 70 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm8
  409d71:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409d76:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409d7b:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409d81:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  409d85:	c4 41 33 58 c0       	vaddsd %xmm8,%xmm9,%xmm8
  409d8a:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  409d8f:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409d94:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409d99:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  409d9d:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409da2:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409da7:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409dac:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409db0:	c4 c1 73 58 c8       	vaddsd %xmm8,%xmm1,%xmm1
  409db5:	c5 42 5a d7          	vcvtss2sd %xmm7,%xmm7,%xmm10
  409db9:	c5 40 c6 cf ff       	vshufps $0xff,%xmm7,%xmm7,%xmm9
  409dbe:	c5 ab 58 c9          	vaddsd %xmm1,%xmm10,%xmm1
  409dc2:	c5 40 c6 d7 55       	vshufps $0x55,%xmm7,%xmm7,%xmm10
  409dc7:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409dcc:	c5 2b 58 d1          	vaddsd %xmm1,%xmm10,%xmm10
  409dd0:	c5 c0 15 cf          	vunpckhps %xmm7,%xmm7,%xmm1
  409dd4:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409dd8:	c4 c1 73 58 ca       	vaddsd %xmm10,%xmm1,%xmm1
  409ddd:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409de2:	c5 33 58 c9          	vaddsd %xmm1,%xmm9,%xmm9
  409de6:	c4 e3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm1
  409dec:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  409df0:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409df5:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  409dfa:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409dff:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409e04:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  409e08:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409e0d:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409e12:	c5 70 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm8
  409e17:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409e1c:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409e21:	62 f3 7d 48 1b f9 01 	vextractf32x8 $0x1,%zmm7,%ymm1
  409e28:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  409e2c:	c4 41 33 58 c0       	vaddsd %xmm8,%xmm9,%xmm8
  409e31:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  409e36:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409e3b:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409e40:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  409e44:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409e49:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409e4e:	c5 f0 c6 f9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm7
  409e53:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409e57:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409e5c:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409e62:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  409e66:	c5 bb 58 ff          	vaddsd %xmm7,%xmm8,%xmm7
  409e6a:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  409e6f:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409e74:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  409e78:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  409e7c:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409e80:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409e85:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409e8a:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409e8e:	c5 f3 58 cf          	vaddsd %xmm7,%xmm1,%xmm1
  409e92:	c5 52 5a cd          	vcvtss2sd %xmm5,%xmm5,%xmm9
  409e96:	c5 50 c6 c5 ff       	vshufps $0xff,%xmm5,%xmm5,%xmm8
  409e9b:	c5 b3 58 c9          	vaddsd %xmm1,%xmm9,%xmm1
  409e9f:	c5 50 c6 cd 55       	vshufps $0x55,%xmm5,%xmm5,%xmm9
  409ea4:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409ea9:	c5 33 58 c9          	vaddsd %xmm1,%xmm9,%xmm9
  409ead:	c5 d0 15 cd          	vunpckhps %xmm5,%xmm5,%xmm1
  409eb1:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409eb5:	c4 c1 73 58 c9       	vaddsd %xmm9,%xmm1,%xmm1
  409eba:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409ebf:	45 31 ed             	xor    %r13d,%r13d
  409ec2:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  409ec6:	c4 e3 7d 19 e9 01    	vextractf128 $0x1,%ymm5,%xmm1
  409ecc:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  409ed0:	c4 41 43 58 c0       	vaddsd %xmm8,%xmm7,%xmm8
  409ed5:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  409eda:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409ede:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409ee3:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  409ee7:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409eec:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  409ef0:	c5 f0 c6 f9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm7
  409ef5:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409ef9:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409efe:	62 f3 7d 48 1b e9 01 	vextractf32x8 $0x1,%zmm5,%ymm1
  409f05:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  409f09:	c5 bb 58 ff          	vaddsd %xmm7,%xmm8,%xmm7
  409f0d:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  409f12:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409f17:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  409f1b:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  409f1f:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409f23:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409f28:	c5 f0 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm5
  409f2d:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409f31:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  409f35:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409f3b:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  409f3f:	c5 c3 58 ed          	vaddsd %xmm5,%xmm7,%xmm5
  409f43:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  409f48:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409f4c:	c5 c3 58 fd          	vaddsd %xmm5,%xmm7,%xmm7
  409f50:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  409f54:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409f58:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  409f5c:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409f61:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409f65:	c5 f3 58 cd          	vaddsd %xmm5,%xmm1,%xmm1
  409f69:	c5 5a 5a c4          	vcvtss2sd %xmm4,%xmm4,%xmm8
  409f6d:	c5 d8 c6 fc ff       	vshufps $0xff,%xmm4,%xmm4,%xmm7
  409f72:	c5 bb 58 c9          	vaddsd %xmm1,%xmm8,%xmm1
  409f76:	c5 58 c6 c4 55       	vshufps $0x55,%xmm4,%xmm4,%xmm8
  409f7b:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409f80:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  409f84:	c5 d8 15 cc          	vunpckhps %xmm4,%xmm4,%xmm1
  409f88:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409f8c:	c4 c1 73 58 c8       	vaddsd %xmm8,%xmm1,%xmm1
  409f91:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409f95:	c5 c3 58 f9          	vaddsd %xmm1,%xmm7,%xmm7
  409f99:	c4 e3 7d 19 e1 01    	vextractf128 $0x1,%ymm4,%xmm1
  409f9f:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  409fa3:	c5 d3 58 ff          	vaddsd %xmm7,%xmm5,%xmm7
  409fa7:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  409fac:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409fb0:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  409fb4:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  409fb8:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409fbc:	c5 c3 58 fd          	vaddsd %xmm5,%xmm7,%xmm7
  409fc0:	c5 f0 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm5
  409fc5:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409fc9:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  409fcd:	62 f3 7d 48 1b e1 01 	vextractf32x8 $0x1,%zmm4,%ymm1
  409fd4:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  409fd8:	c5 c3 58 ed          	vaddsd %xmm5,%xmm7,%xmm5
  409fdc:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  409fe1:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409fe5:	c5 c3 58 fd          	vaddsd %xmm5,%xmm7,%xmm7
  409fe9:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  409fed:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409ff1:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
  409ff5:	c5 f0 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm4
  409ffa:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409ffe:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40a002:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  40a008:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  40a00c:	c5 d3 58 e4          	vaddsd %xmm4,%xmm5,%xmm4
  40a010:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  40a015:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a019:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  40a01d:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  40a021:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a025:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40a029:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40a02e:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a032:	c5 f3 58 cc          	vaddsd %xmm4,%xmm1,%xmm1
  40a036:	c5 e2 5a fb          	vcvtss2sd %xmm3,%xmm3,%xmm7
  40a03a:	c5 e0 c6 eb ff       	vshufps $0xff,%xmm3,%xmm3,%xmm5
  40a03f:	c5 c3 58 c9          	vaddsd %xmm1,%xmm7,%xmm1
  40a043:	c5 e0 c6 fb 55       	vshufps $0x55,%xmm3,%xmm3,%xmm7
  40a048:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40a04c:	c5 c3 58 f9          	vaddsd %xmm1,%xmm7,%xmm7
  40a050:	c5 e0 15 cb          	vunpckhps %xmm3,%xmm3,%xmm1
  40a054:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a058:	c5 f3 58 cf          	vaddsd %xmm7,%xmm1,%xmm1
  40a05c:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a060:	c5 d3 58 e9          	vaddsd %xmm1,%xmm5,%xmm5
  40a064:	c4 e3 7d 19 d9 01    	vextractf128 $0x1,%ymm3,%xmm1
  40a06a:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  40a06e:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  40a072:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  40a077:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a07b:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40a07f:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  40a083:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a087:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  40a08b:	c5 f0 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm4
  40a090:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a094:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40a098:	62 f3 7d 48 1b d9 01 	vextractf32x8 $0x1,%zmm3,%ymm1
  40a09f:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  40a0a3:	c5 d3 58 e4          	vaddsd %xmm4,%xmm5,%xmm4
  40a0a7:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  40a0ac:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a0b0:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  40a0b4:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  40a0b8:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a0bc:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40a0c0:	c5 f0 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm3
  40a0c5:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a0c9:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40a0cd:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  40a0d3:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  40a0d7:	c5 db 58 db          	vaddsd %xmm3,%xmm4,%xmm3
  40a0db:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  40a0e0:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a0e4:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  40a0e8:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  40a0ec:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a0f0:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40a0f4:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40a0f9:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a0fd:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  40a101:	c5 ea 5a ea          	vcvtss2sd %xmm2,%xmm2,%xmm5
  40a105:	c5 e8 c6 e2 ff       	vshufps $0xff,%xmm2,%xmm2,%xmm4
  40a10a:	c5 d3 58 c9          	vaddsd %xmm1,%xmm5,%xmm1
  40a10e:	c5 e8 c6 ea 55       	vshufps $0x55,%xmm2,%xmm2,%xmm5
  40a113:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40a117:	c5 d3 58 e9          	vaddsd %xmm1,%xmm5,%xmm5
  40a11b:	c5 e8 15 ca          	vunpckhps %xmm2,%xmm2,%xmm1
  40a11f:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a123:	c5 f3 58 cd          	vaddsd %xmm5,%xmm1,%xmm1
  40a127:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a12b:	c5 db 58 e1          	vaddsd %xmm1,%xmm4,%xmm4
  40a12f:	c4 e3 7d 19 d1 01    	vextractf128 $0x1,%ymm2,%xmm1
  40a135:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  40a139:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  40a13d:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  40a142:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a146:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40a14a:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  40a14e:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a152:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  40a156:	c5 f0 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm3
  40a15b:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a15f:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40a163:	62 f3 7d 48 1b d1 01 	vextractf32x8 $0x1,%zmm2,%ymm1
  40a16a:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  40a16e:	c5 db 58 db          	vaddsd %xmm3,%xmm4,%xmm3
  40a172:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  40a177:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a17b:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  40a17f:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  40a183:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a187:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40a18b:	c5 f0 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm2
  40a190:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  40a194:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40a198:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  40a19e:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  40a1a2:	c5 e3 58 d2          	vaddsd %xmm2,%xmm3,%xmm2
  40a1a6:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  40a1ab:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a1af:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  40a1b3:	c5 f0 15 d1          	vunpckhps %xmm1,%xmm1,%xmm2
  40a1b7:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  40a1bb:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40a1bf:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40a1c4:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a1c8:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40a1cc:	c5 fa 5a e0          	vcvtss2sd %xmm0,%xmm0,%xmm4
  40a1d0:	c5 f8 c6 d8 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm3
  40a1d5:	c5 db 58 c9          	vaddsd %xmm1,%xmm4,%xmm1
  40a1d9:	c5 f8 c6 e0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm4
  40a1de:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40a1e2:	c5 db 58 e1          	vaddsd %xmm1,%xmm4,%xmm4
  40a1e6:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  40a1ea:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a1ee:	c5 f3 58 cc          	vaddsd %xmm4,%xmm1,%xmm1
  40a1f2:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a1f6:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  40a1fa:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  40a200:	c5 f2 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm2
  40a204:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40a208:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  40a20d:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a211:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  40a215:	c5 f0 15 d1          	vunpckhps %xmm1,%xmm1,%xmm2
  40a219:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  40a21d:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40a221:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40a226:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a22a:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40a22e:	62 f3 7d 48 1b c0 01 	vextractf32x8 $0x1,%zmm0,%ymm0
  40a235:	c5 fa 5a d8          	vcvtss2sd %xmm0,%xmm0,%xmm3
  40a239:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  40a23d:	c5 f8 c6 c8 55       	vshufps $0x55,%xmm0,%xmm0,%xmm1
  40a242:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a246:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  40a24a:	c5 f8 15 d8          	vunpckhps %xmm0,%xmm0,%xmm3
  40a24e:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40a252:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  40a256:	c5 f8 c6 c8 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm1
  40a25b:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a25f:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  40a263:	c4 e3 7d 19 c0 01    	vextractf128 $0x1,%ymm0,%xmm0
  40a269:	c5 fa 5a d0          	vcvtss2sd %xmm0,%xmm0,%xmm2
  40a26d:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
  40a271:	c5 f8 c6 d0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm2
  40a276:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  40a27a:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  40a27e:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  40a282:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40a286:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40a28a:	c5 f8 c6 c0 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm0
  40a28f:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  40a293:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  40a297:	c5 f3 58 de          	vaddsd %xmm6,%xmm1,%xmm3
  40a29b:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  40a2a0:	c5 f8 77             	vzeroupper 
  40a2a3:	e9 e7 cd ff ff       	jmpq   40708f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  40a2a8:	62 f2 fd 48 19 0d 3e 	vbroadcastsd 0x643e(%rip),%zmm1        # 4106f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  40a2af:	64 00 00 
  40a2b2:	62 f2 fd 48 19 05 34 	vbroadcastsd 0x6334(%rip),%zmm0        # 4105f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  40a2b9:	63 00 00 
  40a2bc:	62 f2 fd 48 19 1d 32 	vbroadcastsd 0x6332(%rip),%zmm3        # 4105f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  40a2c3:	63 00 00 
  40a2c6:	62 f2 fd 48 19 25 30 	vbroadcastsd 0x6330(%rip),%zmm4        # 410600 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x100>
  40a2cd:	63 00 00 
  40a2d0:	62 f2 fd 48 19 2d 2e 	vbroadcastsd 0x632e(%rip),%zmm5        # 410608 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x108>
  40a2d7:	63 00 00 
  40a2da:	62 f2 fd 48 19 35 2c 	vbroadcastsd 0x632c(%rip),%zmm6        # 410610 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x110>
  40a2e1:	63 00 00 
  40a2e4:	62 72 fd 48 19 05 2a 	vbroadcastsd 0x632a(%rip),%zmm8        # 410618 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x118>
  40a2eb:	63 00 00 
  40a2ee:	62 72 fd 48 19 0d 28 	vbroadcastsd 0x6328(%rip),%zmm9        # 410620 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x120>
  40a2f5:	63 00 00 
  40a2f8:	62 72 fd 48 19 15 26 	vbroadcastsd 0x6326(%rip),%zmm10        # 410628 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x128>
  40a2ff:	63 00 00 
  40a302:	62 72 fd 48 19 1d 24 	vbroadcastsd 0x6324(%rip),%zmm11        # 410630 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  40a309:	63 00 00 
  40a30c:	62 72 fd 48 19 25 ca 	vbroadcastsd 0x62ca(%rip),%zmm12        # 4105e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  40a313:	62 00 00 
  40a316:	62 72 fd 48 19 2d b8 	vbroadcastsd 0x62b8(%rip),%zmm13        # 4105d8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  40a31d:	62 00 00 
  40a320:	62 f2 fd 48 19 15 0e 	vbroadcastsd 0x630e(%rip),%zmm2        # 410638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40a327:	63 00 00 
  40a32a:	62 f1 fd 48 28 f9    	vmovapd %zmm1,%zmm7
  40a330:	62 f2 ed 48 98 f9    	vfmadd132pd %zmm1,%zmm2,%zmm7
  40a336:	62 72 ed 48 98 e9    	vfmadd132pd %zmm1,%zmm2,%zmm13
  40a33c:	62 72 ed 48 98 e1    	vfmadd132pd %zmm1,%zmm2,%zmm12
  40a342:	62 72 ed 48 98 d9    	vfmadd132pd %zmm1,%zmm2,%zmm11
  40a348:	62 72 ed 48 98 d1    	vfmadd132pd %zmm1,%zmm2,%zmm10
  40a34e:	62 72 ed 48 98 c9    	vfmadd132pd %zmm1,%zmm2,%zmm9
  40a354:	62 72 ed 48 98 c1    	vfmadd132pd %zmm1,%zmm2,%zmm8
  40a35a:	62 f2 ed 48 98 f1    	vfmadd132pd %zmm1,%zmm2,%zmm6
  40a360:	62 f2 ed 48 98 e9    	vfmadd132pd %zmm1,%zmm2,%zmm5
  40a366:	62 f2 ed 48 98 e1    	vfmadd132pd %zmm1,%zmm2,%zmm4
  40a36c:	62 f2 ed 48 98 d9    	vfmadd132pd %zmm1,%zmm2,%zmm3
  40a372:	62 f2 ed 48 98 c1    	vfmadd132pd %zmm1,%zmm2,%zmm0
  40a378:	ff c8                	dec    %eax
  40a37a:	75 b4                	jne    40a330 <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x3300>
  40a37c:	62 f3 fd 48 1b fa 01 	vextractf64x4 $0x1,%zmm7,%ymm2
  40a383:	c5 ed 58 d7          	vaddpd %ymm7,%ymm2,%ymm2
  40a387:	62 73 fd 48 1b ef 01 	vextractf64x4 $0x1,%zmm13,%ymm7
  40a38e:	c4 c1 45 58 fd       	vaddpd %ymm13,%ymm7,%ymm7
  40a393:	62 f3 fd 28 19 d1 01 	vextractf64x2 $0x1,%ymm2,%xmm1
  40a39a:	c5 f1 58 ca          	vaddpd %xmm2,%xmm1,%xmm1
  40a39e:	45 31 ed             	xor    %r13d,%r13d
  40a3a1:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a3a5:	c5 f3 58 15 33 63 00 	vaddsd 0x6333(%rip),%xmm1,%xmm2        # 4106e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  40a3ac:	00 
  40a3ad:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a3b4:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a3b8:	62 73 fd 48 1b e7 01 	vextractf64x4 $0x1,%zmm12,%ymm7
  40a3bf:	c4 c1 45 58 fc       	vaddpd %ymm12,%ymm7,%ymm7
  40a3c4:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a3c8:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a3cc:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a3d3:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a3d7:	62 73 fd 48 1b df 01 	vextractf64x4 $0x1,%zmm11,%ymm7
  40a3de:	c4 c1 45 58 fb       	vaddpd %ymm11,%ymm7,%ymm7
  40a3e3:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a3e7:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a3eb:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a3f2:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a3f6:	62 73 fd 48 1b d7 01 	vextractf64x4 $0x1,%zmm10,%ymm7
  40a3fd:	c4 c1 45 58 fa       	vaddpd %ymm10,%ymm7,%ymm7
  40a402:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a406:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a40a:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a411:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a415:	62 73 fd 48 1b cf 01 	vextractf64x4 $0x1,%zmm9,%ymm7
  40a41c:	c4 c1 45 58 f9       	vaddpd %ymm9,%ymm7,%ymm7
  40a421:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a425:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a429:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a430:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a434:	62 73 fd 48 1b c7 01 	vextractf64x4 $0x1,%zmm8,%ymm7
  40a43b:	c4 c1 45 58 f8       	vaddpd %ymm8,%ymm7,%ymm7
  40a440:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a444:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a448:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  40a44f:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40a453:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a457:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a45b:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  40a462:	c5 f5 58 f6          	vaddpd %ymm6,%ymm1,%ymm6
  40a466:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  40a46d:	c5 f1 58 ce          	vaddpd %xmm6,%xmm1,%xmm1
  40a471:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a475:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a479:	62 f3 fd 48 1b e9 01 	vextractf64x4 $0x1,%zmm5,%ymm1
  40a480:	c5 f5 58 ed          	vaddpd %ymm5,%ymm1,%ymm5
  40a484:	62 f3 fd 28 19 e9 01 	vextractf64x2 $0x1,%ymm5,%xmm1
  40a48b:	c5 f1 58 cd          	vaddpd %xmm5,%xmm1,%xmm1
  40a48f:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a493:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a497:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  40a49e:	c5 f5 58 e4          	vaddpd %ymm4,%ymm1,%ymm4
  40a4a2:	62 f3 fd 28 19 e1 01 	vextractf64x2 $0x1,%ymm4,%xmm1
  40a4a9:	c5 f1 58 cc          	vaddpd %xmm4,%xmm1,%xmm1
  40a4ad:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a4b1:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40a4b5:	62 f3 fd 48 1b d9 01 	vextractf64x4 $0x1,%zmm3,%ymm1
  40a4bc:	c5 f5 58 db          	vaddpd %ymm3,%ymm1,%ymm3
  40a4c0:	62 f3 fd 28 19 d9 01 	vextractf64x2 $0x1,%ymm3,%xmm1
  40a4c7:	c5 f1 58 cb          	vaddpd %xmm3,%xmm1,%xmm1
  40a4cb:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40a4cf:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40a4d3:	62 f3 fd 48 1b c2 01 	vextractf64x4 $0x1,%zmm0,%ymm2
  40a4da:	c5 fd 58 c2          	vaddpd %ymm2,%ymm0,%ymm0
  40a4de:	62 f3 fd 28 19 c2 01 	vextractf64x2 $0x1,%ymm0,%xmm2
  40a4e5:	c5 f9 58 c2          	vaddpd %xmm2,%xmm0,%xmm0
  40a4e9:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  40a4ed:	c5 fb 58 f1          	vaddsd %xmm1,%xmm0,%xmm6
  40a4f1:	c4 e1 f9 7e f3       	vmovq  %xmm6,%rbx
  40a4f6:	c5 f8 77             	vzeroupper 
  40a4f9:	e9 91 cb ff ff       	jmpq   40708f <_ZZ4mainENKUlmE_clEm._omp_fn.5+0x5f>
  40a4fe:	66 90                	xchg   %ax,%ax

000000000040a500 <_ZZ4mainENKUlmE_clEm._omp_fn.1>:
  40a500:	55                   	push   %rbp
  40a501:	48 89 e5             	mov    %rsp,%rbp
  40a504:	41 55                	push   %r13
  40a506:	4c 8b 2f             	mov    (%rdi),%r13
  40a509:	41 54                	push   %r12
  40a50b:	53                   	push   %rbx
  40a50c:	49 8b 45 18          	mov    0x18(%r13),%rax
  40a510:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a514:	48 8b 18             	mov    (%rax),%rbx
  40a517:	48 85 db             	test   %rbx,%rbx
  40a51a:	74 7a                	je     40a596 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x96>
  40a51c:	e8 6f 8f ff ff       	callq  403490 <omp_get_num_threads@plt>
  40a521:	4c 63 e0             	movslq %eax,%r12
  40a524:	e8 b7 8e ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40a529:	48 63 c8             	movslq %eax,%rcx
  40a52c:	48 8d 43 07          	lea    0x7(%rbx),%rax
  40a530:	48 c1 e8 03          	shr    $0x3,%rax
  40a534:	31 d2                	xor    %edx,%edx
  40a536:	49 f7 f4             	div    %r12
  40a539:	48 39 d1             	cmp    %rdx,%rcx
  40a53c:	72 6a                	jb     40a5a8 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0xa8>
  40a53e:	48 0f af c8          	imul   %rax,%rcx
  40a542:	48 01 ca             	add    %rcx,%rdx
  40a545:	48 01 d0             	add    %rdx,%rax
  40a548:	48 39 c2             	cmp    %rax,%rdx
  40a54b:	73 49                	jae    40a596 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x96>
  40a54d:	62 f2 fd 48 19 0d 89 	vbroadcastsd 0x6089(%rip),%zmm1        # 4105e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  40a554:	60 00 00 
  40a557:	48 c1 e2 03          	shl    $0x3,%rdx
  40a55b:	48 c1 e0 03          	shl    $0x3,%rax
  40a55f:	90                   	nop
  40a560:	49 8b 4d 30          	mov    0x30(%r13),%rcx
  40a564:	48 8b 31             	mov    (%rcx),%rsi
  40a567:	49 8b 4d 28          	mov    0x28(%r13),%rcx
  40a56b:	62 f1 fd 48 28 04 d6 	vmovapd (%rsi,%rdx,8),%zmm0
  40a572:	48 8b 09             	mov    (%rcx),%rcx
  40a575:	62 f2 f5 48 a8 04 d1 	vfmadd213pd (%rcx,%rdx,8),%zmm1,%zmm0
  40a57c:	49 8b 4d 20          	mov    0x20(%r13),%rcx
  40a580:	48 8b 09             	mov    (%rcx),%rcx
  40a583:	62 f1 fd 48 2b 04 d1 	vmovntpd %zmm0,(%rcx,%rdx,8)
  40a58a:	48 83 c2 08          	add    $0x8,%rdx
  40a58e:	48 39 d0             	cmp    %rdx,%rax
  40a591:	77 cd                	ja     40a560 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x60>
  40a593:	c5 f8 77             	vzeroupper 
  40a596:	0f ae f8             	sfence 
  40a599:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a59d:	5b                   	pop    %rbx
  40a59e:	41 5c                	pop    %r12
  40a5a0:	41 5d                	pop    %r13
  40a5a2:	5d                   	pop    %rbp
  40a5a3:	c3                   	retq   
  40a5a4:	0f 1f 40 00          	nopl   0x0(%rax)
  40a5a8:	48 ff c0             	inc    %rax
  40a5ab:	31 d2                	xor    %edx,%edx
  40a5ad:	eb 8f                	jmp    40a53e <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x3e>
  40a5af:	90                   	nop

000000000040a5b0 <_ZZ4mainENKUlmE_clEm._omp_fn.3>:
  40a5b0:	55                   	push   %rbp
  40a5b1:	48 89 e5             	mov    %rsp,%rbp
  40a5b4:	41 55                	push   %r13
  40a5b6:	4c 8b 2f             	mov    (%rdi),%r13
  40a5b9:	41 54                	push   %r12
  40a5bb:	53                   	push   %rbx
  40a5bc:	49 8b 45 18          	mov    0x18(%r13),%rax
  40a5c0:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a5c4:	48 8b 18             	mov    (%rax),%rbx
  40a5c7:	48 85 db             	test   %rbx,%rbx
  40a5ca:	74 64                	je     40a630 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x80>
  40a5cc:	e8 bf 8e ff ff       	callq  403490 <omp_get_num_threads@plt>
  40a5d1:	4c 63 e0             	movslq %eax,%r12
  40a5d4:	e8 07 8e ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40a5d9:	48 63 c8             	movslq %eax,%rcx
  40a5dc:	48 8d 43 07          	lea    0x7(%rbx),%rax
  40a5e0:	48 c1 e8 03          	shr    $0x3,%rax
  40a5e4:	31 d2                	xor    %edx,%edx
  40a5e6:	49 f7 f4             	div    %r12
  40a5e9:	48 39 d1             	cmp    %rdx,%rcx
  40a5ec:	72 52                	jb     40a640 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x90>
  40a5ee:	48 0f af c8          	imul   %rax,%rcx
  40a5f2:	48 01 ca             	add    %rcx,%rdx
  40a5f5:	48 01 d0             	add    %rdx,%rax
  40a5f8:	48 39 c2             	cmp    %rax,%rdx
  40a5fb:	73 33                	jae    40a630 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x80>
  40a5fd:	48 c1 e2 03          	shl    $0x3,%rdx
  40a601:	48 c1 e0 03          	shl    $0x3,%rax
  40a605:	0f 1f 00             	nopl   (%rax)
  40a608:	49 8b 75 28          	mov    0x28(%r13),%rsi
  40a60c:	49 8b 4d 20          	mov    0x20(%r13),%rcx
  40a610:	48 8b 36             	mov    (%rsi),%rsi
  40a613:	48 8b 09             	mov    (%rcx),%rcx
  40a616:	62 f1 fd 48 28 04 d6 	vmovapd (%rsi,%rdx,8),%zmm0
  40a61d:	62 f1 fd 48 2b 04 d1 	vmovntpd %zmm0,(%rcx,%rdx,8)
  40a624:	48 83 c2 08          	add    $0x8,%rdx
  40a628:	48 39 d0             	cmp    %rdx,%rax
  40a62b:	77 db                	ja     40a608 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x58>
  40a62d:	c5 f8 77             	vzeroupper 
  40a630:	0f ae f8             	sfence 
  40a633:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a637:	5b                   	pop    %rbx
  40a638:	41 5c                	pop    %r12
  40a63a:	41 5d                	pop    %r13
  40a63c:	5d                   	pop    %rbp
  40a63d:	c3                   	retq   
  40a63e:	66 90                	xchg   %ax,%ax
  40a640:	48 ff c0             	inc    %rax
  40a643:	31 d2                	xor    %edx,%edx
  40a645:	eb a7                	jmp    40a5ee <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x3e>
  40a647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40a64e:	00 00 

000000000040a650 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0>:
  40a650:	55                   	push   %rbp
  40a651:	48 89 e5             	mov    %rsp,%rbp
  40a654:	41 55                	push   %r13
  40a656:	41 54                	push   %r12
  40a658:	53                   	push   %rbx
  40a659:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  40a65d:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a661:	48 85 db             	test   %rbx,%rbx
  40a664:	0f 84 a5 01 00 00    	je     40a80f <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x1bf>
  40a66a:	49 89 fd             	mov    %rdi,%r13
  40a66d:	e8 1e 8e ff ff       	callq  403490 <omp_get_num_threads@plt>
  40a672:	4c 63 e0             	movslq %eax,%r12
  40a675:	e8 66 8d ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40a67a:	48 63 c8             	movslq %eax,%rcx
  40a67d:	48 ba ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rdx
  40a684:	aa aa aa 
  40a687:	48 8d 43 5f          	lea    0x5f(%rbx),%rax
  40a68b:	48 f7 e2             	mul    %rdx
  40a68e:	48 89 d0             	mov    %rdx,%rax
  40a691:	48 c1 e8 06          	shr    $0x6,%rax
  40a695:	31 d2                	xor    %edx,%edx
  40a697:	49 f7 f4             	div    %r12
  40a69a:	48 39 d1             	cmp    %rdx,%rcx
  40a69d:	0f 82 77 01 00 00    	jb     40a81a <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x1ca>
  40a6a3:	48 0f af c8          	imul   %rax,%rcx
  40a6a7:	48 01 ca             	add    %rcx,%rdx
  40a6aa:	48 01 d0             	add    %rdx,%rax
  40a6ad:	48 39 c2             	cmp    %rax,%rdx
  40a6b0:	0f 83 59 01 00 00    	jae    40a80f <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x1bf>
  40a6b6:	48 8d 14 52          	lea    (%rdx,%rdx,2),%rdx
  40a6ba:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40a6be:	48 89 d7             	mov    %rdx,%rdi
  40a6c1:	4c 8d 04 40          	lea    (%rax,%rax,2),%r8
  40a6c5:	48 c1 e2 08          	shl    $0x8,%rdx
  40a6c9:	41 8b 75 18          	mov    0x18(%r13),%esi
  40a6cd:	62 f2 fd 48 19 0d 69 	vbroadcastsd 0x5f69(%rip),%zmm1        # 410640 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  40a6d4:	5f 00 00 
  40a6d7:	62 f2 fd 48 19 05 57 	vbroadcastsd 0x5f57(%rip),%zmm0        # 410638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40a6de:	5f 00 00 
  40a6e1:	48 01 d1             	add    %rdx,%rcx
  40a6e4:	48 c1 e7 05          	shl    $0x5,%rdi
  40a6e8:	49 c1 e0 05          	shl    $0x5,%r8
  40a6ec:	49 03 55 08          	add    0x8(%r13),%rdx
  40a6f0:	62 71 fd 48 28 29    	vmovapd (%rcx),%zmm13
  40a6f6:	62 71 fd 48 28 61 01 	vmovapd 0x40(%rcx),%zmm12
  40a6fd:	62 71 fd 48 28 59 02 	vmovapd 0x80(%rcx),%zmm11
  40a704:	62 71 fd 48 28 51 03 	vmovapd 0xc0(%rcx),%zmm10
  40a70b:	62 71 fd 48 28 49 04 	vmovapd 0x100(%rcx),%zmm9
  40a712:	62 71 fd 48 28 41 05 	vmovapd 0x140(%rcx),%zmm8
  40a719:	62 f1 fd 48 28 79 06 	vmovapd 0x180(%rcx),%zmm7
  40a720:	62 f1 fd 48 28 71 07 	vmovapd 0x1c0(%rcx),%zmm6
  40a727:	62 f1 fd 48 28 69 08 	vmovapd 0x200(%rcx),%zmm5
  40a72e:	62 f1 fd 48 28 61 09 	vmovapd 0x240(%rcx),%zmm4
  40a735:	62 f1 fd 48 28 59 0a 	vmovapd 0x280(%rcx),%zmm3
  40a73c:	62 f1 fd 48 28 51 0b 	vmovapd 0x2c0(%rcx),%zmm2
  40a743:	85 f6                	test   %esi,%esi
  40a745:	7e 57                	jle    40a79e <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x14e>
  40a747:	31 c0                	xor    %eax,%eax
  40a749:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40a750:	ff c0                	inc    %eax
  40a752:	62 72 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm13
  40a758:	62 72 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm12
  40a75e:	62 72 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm11
  40a764:	62 72 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm10
  40a76a:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  40a770:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  40a776:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  40a77c:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  40a782:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  40a788:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  40a78e:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  40a794:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  40a79a:	39 c6                	cmp    %eax,%esi
  40a79c:	75 b2                	jne    40a750 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x100>
  40a79e:	48 83 c7 60          	add    $0x60,%rdi
  40a7a2:	62 71 fd 48 29 2a    	vmovapd %zmm13,(%rdx)
  40a7a8:	62 71 fd 48 29 62 01 	vmovapd %zmm12,0x40(%rdx)
  40a7af:	62 71 fd 48 29 5a 02 	vmovapd %zmm11,0x80(%rdx)
  40a7b6:	62 71 fd 48 29 52 03 	vmovapd %zmm10,0xc0(%rdx)
  40a7bd:	62 71 fd 48 29 4a 04 	vmovapd %zmm9,0x100(%rdx)
  40a7c4:	62 71 fd 48 29 42 05 	vmovapd %zmm8,0x140(%rdx)
  40a7cb:	62 f1 fd 48 29 7a 06 	vmovapd %zmm7,0x180(%rdx)
  40a7d2:	62 f1 fd 48 29 72 07 	vmovapd %zmm6,0x1c0(%rdx)
  40a7d9:	62 f1 fd 48 29 6a 08 	vmovapd %zmm5,0x200(%rdx)
  40a7e0:	62 f1 fd 48 29 62 09 	vmovapd %zmm4,0x240(%rdx)
  40a7e7:	62 f1 fd 48 29 5a 0a 	vmovapd %zmm3,0x280(%rdx)
  40a7ee:	62 f1 fd 48 29 52 0b 	vmovapd %zmm2,0x2c0(%rdx)
  40a7f5:	48 81 c1 00 03 00 00 	add    $0x300,%rcx
  40a7fc:	48 81 c2 00 03 00 00 	add    $0x300,%rdx
  40a803:	49 39 f8             	cmp    %rdi,%r8
  40a806:	0f 87 e4 fe ff ff    	ja     40a6f0 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0xa0>
  40a80c:	c5 f8 77             	vzeroupper 
  40a80f:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40a813:	5b                   	pop    %rbx
  40a814:	41 5c                	pop    %r12
  40a816:	41 5d                	pop    %r13
  40a818:	5d                   	pop    %rbp
  40a819:	c3                   	retq   
  40a81a:	48 ff c0             	inc    %rax
  40a81d:	31 d2                	xor    %edx,%edx
  40a81f:	e9 7f fe ff ff       	jmpq   40a6a3 <_Z11sweep_blockILi12EEvPKdPdmi._omp_fn.0+0x53>
  40a824:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40a82b:	00 00 00 00 
  40a82f:	90                   	nop

000000000040a830 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0>:
  40a830:	55                   	push   %rbp
  40a831:	48 89 e5             	mov    %rsp,%rbp
  40a834:	41 55                	push   %r13
  40a836:	41 54                	push   %r12
  40a838:	53                   	push   %rbx
  40a839:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  40a83d:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40a841:	48 85 db             	test   %rbx,%rbx
  40a844:	0f 84 e1 01 00 00    	je     40aa2b <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x1fb>
  40a84a:	49 89 fc             	mov    %rdi,%r12
  40a84d:	e8 3e 8c ff ff       	callq  403490 <omp_get_num_threads@plt>
  40a852:	41 89 c5             	mov    %eax,%r13d
  40a855:	e8 86 8b ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40a85a:	48 63 c8             	movslq %eax,%rcx
  40a85d:	48 8d 43 7f          	lea    0x7f(%rbx),%rax
  40a861:	48 c1 e8 07          	shr    $0x7,%rax
  40a865:	49 63 f5             	movslq %r13d,%rsi
  40a868:	31 d2                	xor    %edx,%edx
  40a86a:	48 f7 f6             	div    %rsi
  40a86d:	48 39 d1             	cmp    %rdx,%rcx
  40a870:	0f 82 c0 01 00 00    	jb     40aa36 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x206>
  40a876:	48 0f af c8          	imul   %rax,%rcx
  40a87a:	48 01 ca             	add    %rcx,%rdx
  40a87d:	48 01 d0             	add    %rdx,%rax
  40a880:	48 39 c2             	cmp    %rax,%rdx
  40a883:	0f 83 a2 01 00 00    	jae    40aa2b <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x1fb>
  40a889:	49 8b 0c 24          	mov    (%r12),%rcx
  40a88d:	49 89 d0             	mov    %rdx,%r8
  40a890:	48 c1 e0 07          	shl    $0x7,%rax
  40a894:	48 c1 e2 0a          	shl    $0xa,%rdx
  40a898:	41 8b 74 24 18       	mov    0x18(%r12),%esi
  40a89d:	62 f2 fd 48 19 0d 99 	vbroadcastsd 0x5d99(%rip),%zmm1        # 410640 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  40a8a4:	5d 00 00 
  40a8a7:	62 f2 fd 48 19 05 87 	vbroadcastsd 0x5d87(%rip),%zmm0        # 410638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40a8ae:	5d 00 00 
  40a8b1:	48 01 d1             	add    %rdx,%rcx
  40a8b4:	49 c1 e0 07          	shl    $0x7,%r8
  40a8b8:	48 89 c7             	mov    %rax,%rdi
  40a8bb:	49 03 54 24 08       	add    0x8(%r12),%rdx
  40a8c0:	62 e1 fd 48 28 09    	vmovapd (%rcx),%zmm17
  40a8c6:	62 e1 fd 48 28 41 01 	vmovapd 0x40(%rcx),%zmm16
  40a8cd:	62 71 fd 48 28 79 02 	vmovapd 0x80(%rcx),%zmm15
  40a8d4:	62 71 fd 48 28 71 03 	vmovapd 0xc0(%rcx),%zmm14
  40a8db:	62 71 fd 48 28 69 04 	vmovapd 0x100(%rcx),%zmm13
  40a8e2:	62 71 fd 48 28 61 05 	vmovapd 0x140(%rcx),%zmm12
  40a8e9:	62 71 fd 48 28 59 06 	vmovapd 0x180(%rcx),%zmm11
  40a8f0:	62 71 fd 48 28 51 07 	vmovapd 0x1c0(%rcx),%zmm10
  40a8f7:	62 71 fd 48 28 49 08 	vmovapd 0x200(%rcx),%zmm9
  40a8fe:	62 71 fd 48 28 41 09 	vmovapd 0x240(%rcx),%zmm8
  40a905:	62 f1 fd 48 28 79 0a 	vmovapd 0x280(%rcx),%zmm7
  40a90c:	62 f1 fd 48 28 71 0b 	vmovapd 0x2c0(%rcx),%zmm6
  40a913:	62 f1 fd 48 28 69 0c 	vmovapd 0x300(%rcx),%zmm5
  40a91a:	62 f1 fd 48 28 61 0d 	vmovapd 0x340(%rcx),%zmm4
  40a921:	62 f1 fd 48 28 59 0e 	vmovapd 0x380(%rcx),%zmm3
  40a928:	62 f1 fd 48 28 51 0f 	vmovapd 0x3c0(%rcx),%zmm2
  40a92f:	85 f6                	test   %esi,%esi
  40a931:	7e 6b                	jle    40a99e <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x16e>
  40a933:	31 c0                	xor    %eax,%eax
  40a935:	0f 1f 00             	nopl   (%rax)
  40a938:	ff c0                	inc    %eax
  40a93a:	62 e2 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm17
  40a940:	62 e2 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm16
  40a946:	62 72 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm15
  40a94c:	62 72 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm14
  40a952:	62 72 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm13
  40a958:	62 72 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm12
  40a95e:	62 72 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm11
  40a964:	62 72 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm10
  40a96a:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  40a970:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  40a976:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  40a97c:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  40a982:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  40a988:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  40a98e:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  40a994:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  40a99a:	39 c6                	cmp    %eax,%esi
  40a99c:	75 9a                	jne    40a938 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x108>
  40a99e:	49 83 e8 80          	sub    $0xffffffffffffff80,%r8
  40a9a2:	62 e1 fd 48 29 0a    	vmovapd %zmm17,(%rdx)
  40a9a8:	62 e1 fd 48 29 42 01 	vmovapd %zmm16,0x40(%rdx)
  40a9af:	62 71 fd 48 29 7a 02 	vmovapd %zmm15,0x80(%rdx)
  40a9b6:	62 71 fd 48 29 72 03 	vmovapd %zmm14,0xc0(%rdx)
  40a9bd:	62 71 fd 48 29 6a 04 	vmovapd %zmm13,0x100(%rdx)
  40a9c4:	62 71 fd 48 29 62 05 	vmovapd %zmm12,0x140(%rdx)
  40a9cb:	62 71 fd 48 29 5a 06 	vmovapd %zmm11,0x180(%rdx)
  40a9d2:	62 71 fd 48 29 52 07 	vmovapd %zmm10,0x1c0(%rdx)
  40a9d9:	62 71 fd 48 29 4a 08 	vmovapd %zmm9,0x200(%rdx)
  40a9e0:	62 71 fd 48 29 42 09 	vmovapd %zmm8,0x240(%rdx)
  40a9e7:	62 f1 fd 48 29 7a 0a 	vmovapd %zmm7,0x280(%rdx)
  40a9ee:	62 f1 fd 48 29 72 0b 	vmovapd %zmm6,0x2c0(%rdx)
  40a9f5:	62 f1 fd 48 29 6a 0c 	vmovapd %zmm5,0x300(%rdx)
  40a9fc:	62 f1 fd 48 29 62 0d 	vmovapd %zmm4,0x340(%rdx)
  40aa03:	62 f1 fd 48 29 5a 0e 	vmovapd %zmm3,0x380(%rdx)
  40aa0a:	62 f1 fd 48 29 52 0f 	vmovapd %zmm2,0x3c0(%rdx)
  40aa11:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  40aa18:	48 81 c2 00 04 00 00 	add    $0x400,%rdx
  40aa1f:	4c 39 c7             	cmp    %r8,%rdi
  40aa22:	0f 87 98 fe ff ff    	ja     40a8c0 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x90>
  40aa28:	c5 f8 77             	vzeroupper 
  40aa2b:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40aa2f:	5b                   	pop    %rbx
  40aa30:	41 5c                	pop    %r12
  40aa32:	41 5d                	pop    %r13
  40aa34:	5d                   	pop    %rbp
  40aa35:	c3                   	retq   
  40aa36:	48 ff c0             	inc    %rax
  40aa39:	31 d2                	xor    %edx,%edx
  40aa3b:	e9 36 fe ff ff       	jmpq   40a876 <_Z11sweep_blockILi16EEvPKdPdmi._omp_fn.0+0x46>

000000000040aa40 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0>:
  40aa40:	55                   	push   %rbp
  40aa41:	48 89 e5             	mov    %rsp,%rbp
  40aa44:	41 55                	push   %r13
  40aa46:	41 54                	push   %r12
  40aa48:	53                   	push   %rbx
  40aa49:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  40aa4d:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40aa51:	48 85 db             	test   %rbx,%rbx
  40aa54:	0f 84 41 01 00 00    	je     40ab9b <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x15b>
  40aa5a:	49 89 fd             	mov    %rdi,%r13
  40aa5d:	e8 2e 8a ff ff       	callq  403490 <omp_get_num_threads@plt>
  40aa62:	4c 63 e0             	movslq %eax,%r12
  40aa65:	e8 76 89 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40aa6a:	48 63 c8             	movslq %eax,%rcx
  40aa6d:	48 8d 43 3f          	lea    0x3f(%rbx),%rax
  40aa71:	48 c1 e8 06          	shr    $0x6,%rax
  40aa75:	31 d2                	xor    %edx,%edx
  40aa77:	49 f7 f4             	div    %r12
  40aa7a:	48 39 d1             	cmp    %rdx,%rcx
  40aa7d:	0f 82 23 01 00 00    	jb     40aba6 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x166>
  40aa83:	48 0f af c8          	imul   %rax,%rcx
  40aa87:	48 01 ca             	add    %rcx,%rdx
  40aa8a:	48 01 d0             	add    %rdx,%rax
  40aa8d:	48 39 c2             	cmp    %rax,%rdx
  40aa90:	0f 83 05 01 00 00    	jae    40ab9b <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x15b>
  40aa96:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40aa9a:	49 89 d0             	mov    %rdx,%r8
  40aa9d:	48 c1 e0 06          	shl    $0x6,%rax
  40aaa1:	48 c1 e2 09          	shl    $0x9,%rdx
  40aaa5:	41 8b 75 18          	mov    0x18(%r13),%esi
  40aaa9:	62 f2 fd 48 19 0d 8d 	vbroadcastsd 0x5b8d(%rip),%zmm1        # 410640 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  40aab0:	5b 00 00 
  40aab3:	62 f2 fd 48 19 05 7b 	vbroadcastsd 0x5b7b(%rip),%zmm0        # 410638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40aaba:	5b 00 00 
  40aabd:	48 01 d1             	add    %rdx,%rcx
  40aac0:	49 c1 e0 06          	shl    $0x6,%r8
  40aac4:	48 89 c7             	mov    %rax,%rdi
  40aac7:	49 03 55 08          	add    0x8(%r13),%rdx
  40aacb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40aad0:	62 71 fd 48 28 09    	vmovapd (%rcx),%zmm9
  40aad6:	62 71 fd 48 28 41 01 	vmovapd 0x40(%rcx),%zmm8
  40aadd:	62 f1 fd 48 28 79 02 	vmovapd 0x80(%rcx),%zmm7
  40aae4:	62 f1 fd 48 28 71 03 	vmovapd 0xc0(%rcx),%zmm6
  40aaeb:	62 f1 fd 48 28 69 04 	vmovapd 0x100(%rcx),%zmm5
  40aaf2:	62 f1 fd 48 28 61 05 	vmovapd 0x140(%rcx),%zmm4
  40aaf9:	62 f1 fd 48 28 59 06 	vmovapd 0x180(%rcx),%zmm3
  40ab00:	62 f1 fd 48 28 51 07 	vmovapd 0x1c0(%rcx),%zmm2
  40ab07:	85 f6                	test   %esi,%esi
  40ab09:	7e 3b                	jle    40ab46 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x106>
  40ab0b:	31 c0                	xor    %eax,%eax
  40ab0d:	0f 1f 00             	nopl   (%rax)
  40ab10:	ff c0                	inc    %eax
  40ab12:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  40ab18:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  40ab1e:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  40ab24:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  40ab2a:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  40ab30:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  40ab36:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  40ab3c:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  40ab42:	39 c6                	cmp    %eax,%esi
  40ab44:	75 ca                	jne    40ab10 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0xd0>
  40ab46:	49 83 c0 40          	add    $0x40,%r8
  40ab4a:	62 71 fd 48 29 0a    	vmovapd %zmm9,(%rdx)
  40ab50:	62 71 fd 48 29 42 01 	vmovapd %zmm8,0x40(%rdx)
  40ab57:	62 f1 fd 48 29 7a 02 	vmovapd %zmm7,0x80(%rdx)
  40ab5e:	62 f1 fd 48 29 72 03 	vmovapd %zmm6,0xc0(%rdx)
  40ab65:	62 f1 fd 48 29 6a 04 	vmovapd %zmm5,0x100(%rdx)
  40ab6c:	62 f1 fd 48 29 62 05 	vmovapd %zmm4,0x140(%rdx)
  40ab73:	62 f1 fd 48 29 5a 06 	vmovapd %zmm3,0x180(%rdx)
  40ab7a:	62 f1 fd 48 29 52 07 	vmovapd %zmm2,0x1c0(%rdx)
  40ab81:	48 81 c1 00 02 00 00 	add    $0x200,%rcx
  40ab88:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  40ab8f:	4c 39 c7             	cmp    %r8,%rdi
  40ab92:	0f 87 38 ff ff ff    	ja     40aad0 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x90>
  40ab98:	c5 f8 77             	vzeroupper 
  40ab9b:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40ab9f:	5b                   	pop    %rbx
  40aba0:	41 5c                	pop    %r12
  40aba2:	41 5d                	pop    %r13
  40aba4:	5d                   	pop    %rbp
  40aba5:	c3                   	retq   
  40aba6:	48 ff c0             	inc    %rax
  40aba9:	31 d2                	xor    %edx,%edx
  40abab:	e9 d3 fe ff ff       	jmpq   40aa83 <_Z11sweep_blockILi8EEvPKdPdmi._omp_fn.0+0x43>

000000000040abb0 <_ZZ4mainENKUlmE_clEm>:
  40abb0:	55                   	push   %rbp
  40abb1:	48 89 e5             	mov    %rsp,%rbp
  40abb4:	41 54                	push   %r12
  40abb6:	53                   	push   %rbx
  40abb7:	48 89 fb             	mov    %rdi,%rbx
  40abba:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40abbe:	48 83 ec 60          	sub    $0x60,%rsp
  40abc2:	48 8b 07             	mov    (%rdi),%rax
  40abc5:	80 38 00             	cmpb   $0x0,(%rax)
  40abc8:	0f 85 d7 00 00 00    	jne    40aca5 <_ZZ4mainENKUlmE_clEm+0xf5>
  40abce:	48 8b 47 10          	mov    0x10(%rdi),%rax
  40abd2:	80 38 00             	cmpb   $0x0,(%rax)
  40abd5:	0f 85 42 03 00 00    	jne    40af1d <_ZZ4mainENKUlmE_clEm+0x36d>
  40abdb:	48 8b 47 38          	mov    0x38(%rdi),%rax
  40abdf:	80 38 00             	cmpb   $0x0,(%rax)
  40abe2:	0f 85 e8 00 00 00    	jne    40acd0 <_ZZ4mainENKUlmE_clEm+0x120>
  40abe8:	48 8b 47 40          	mov    0x40(%rdi),%rax
  40abec:	80 38 00             	cmpb   $0x0,(%rax)
  40abef:	0f 85 70 03 00 00    	jne    40af65 <_ZZ4mainENKUlmE_clEm+0x3b5>
  40abf5:	48 8b 47 48          	mov    0x48(%rdi),%rax
  40abf9:	44 0f b6 20          	movzbl (%rax),%r12d
  40abfd:	45 84 e4             	test   %r12b,%r12b
  40ac00:	0f 85 96 03 00 00    	jne    40af9c <_ZZ4mainENKUlmE_clEm+0x3ec>
  40ac06:	48 8b 47 50          	mov    0x50(%rdi),%rax
  40ac0a:	80 38 00             	cmpb   $0x0,(%rax)
  40ac0d:	0f 85 c0 03 00 00    	jne    40afd3 <_ZZ4mainENKUlmE_clEm+0x423>
  40ac13:	48 8b 87 88 00 00 00 	mov    0x88(%rdi),%rax
  40ac1a:	44 0f b6 20          	movzbl (%rax),%r12d
  40ac1e:	45 84 e4             	test   %r12b,%r12b
  40ac21:	0f 84 ee 00 00 00    	je     40ad15 <_ZZ4mainENKUlmE_clEm+0x165>
  40ac27:	48 8b 97 98 00 00 00 	mov    0x98(%rdi),%rdx
  40ac2e:	48 8b 87 90 00 00 00 	mov    0x90(%rdi),%rax
  40ac35:	8b 3a                	mov    (%rdx),%edi
  40ac37:	48 8b 53 18          	mov    0x18(%rbx),%rdx
  40ac3b:	8b 00                	mov    (%rax),%eax
  40ac3d:	48 8b 32             	mov    (%rdx),%rsi
  40ac40:	48 8b 53 20          	mov    0x20(%rbx),%rdx
  40ac44:	48 8b 0a             	mov    (%rdx),%rcx
  40ac47:	48 8b 53 28          	mov    0x28(%rbx),%rdx
  40ac4b:	48 8b 12             	mov    (%rdx),%rdx
  40ac4e:	c4 e1 f9 6e ea       	vmovq  %rdx,%xmm5
  40ac53:	c4 e3 d1 22 c1 01    	vpinsrq $0x1,%rcx,%xmm5,%xmm0
  40ac59:	83 f8 0c             	cmp    $0xc,%eax
  40ac5c:	0f 84 42 04 00 00    	je     40b0a4 <_ZZ4mainENKUlmE_clEm+0x4f4>
  40ac62:	83 f8 10             	cmp    $0x10,%eax
  40ac65:	0f 84 61 04 00 00    	je     40b0cc <_ZZ4mainENKUlmE_clEm+0x51c>
  40ac6b:	89 7c 24 18          	mov    %edi,0x18(%rsp)
  40ac6f:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40ac74:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40ac79:	48 89 14 24          	mov    %rdx,(%rsp)
  40ac7d:	31 c9                	xor    %ecx,%ecx
  40ac7f:	31 d2                	xor    %edx,%edx
  40ac81:	48 89 e6             	mov    %rsp,%rsi
  40ac84:	bf 40 aa 40 00       	mov    $0x40aa40,%edi
  40ac89:	e8 12 87 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40ac8e:	48 8b 83 98 00 00 00 	mov    0x98(%rbx),%rax
  40ac95:	48 8b 53 18          	mov    0x18(%rbx),%rdx
  40ac99:	48 63 00             	movslq (%rax),%rax
  40ac9c:	48 0f af 02          	imul   (%rdx),%rax
  40aca0:	48 01 c0             	add    %rax,%rax
  40aca3:	eb 22                	jmp    40acc7 <_ZZ4mainENKUlmE_clEm+0x117>
  40aca5:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  40aca9:	b8 00 00 01 00       	mov    $0x10000,%eax
  40acae:	48 8b 11             	mov    (%rcx),%rdx
  40acb1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40acb8:	48 8b 12             	mov    (%rdx),%rdx
  40acbb:	48 89 11             	mov    %rdx,(%rcx)
  40acbe:	ff c8                	dec    %eax
  40acc0:	75 f6                	jne    40acb8 <_ZZ4mainENKUlmE_clEm+0x108>
  40acc2:	b8 00 00 01 00       	mov    $0x10000,%eax
  40acc7:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
  40accb:	5b                   	pop    %rbx
  40accc:	41 5c                	pop    %r12
  40acce:	5d                   	pop    %rbp
  40accf:	c3                   	retq   
  40acd0:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40acd4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40acd9:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40acdd:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40ace2:	48 8d 47 28          	lea    0x28(%rdi),%rax
  40ace6:	48 89 3c 24          	mov    %rdi,(%rsp)
  40acea:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40acef:	31 c9                	xor    %ecx,%ecx
  40acf1:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40acf5:	31 d2                	xor    %edx,%edx
  40acf7:	48 89 e6             	mov    %rsp,%rsi
  40acfa:	bf 00 a5 40 00       	mov    $0x40a500,%edi
  40acff:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40ad04:	e8 97 86 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40ad09:	48 8b 43 18          	mov    0x18(%rbx),%rax
  40ad0d:	48 8b 00             	mov    (%rax),%rax
  40ad10:	48 01 c0             	add    %rax,%rax
  40ad13:	eb b2                	jmp    40acc7 <_ZZ4mainENKUlmE_clEm+0x117>
  40ad15:	48 8d 87 90 00 00 00 	lea    0x90(%rdi),%rax
  40ad1c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40ad21:	48 8d 87 a0 00 00 00 	lea    0xa0(%rdi),%rax
  40ad28:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40ad2d:	48 8d 87 a8 00 00 00 	lea    0xa8(%rdi),%rax
  40ad34:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40ad39:	48 8d 87 b0 00 00 00 	lea    0xb0(%rdi),%rax
  40ad40:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  40ad45:	48 8d 87 b8 00 00 00 	lea    0xb8(%rdi),%rax
  40ad4c:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  40ad52:	48 89 3c 24          	mov    %rdi,(%rsp)
  40ad56:	48 8d 87 c0 00 00 00 	lea    0xc0(%rdi),%rax
  40ad5d:	31 d2                	xor    %edx,%edx
  40ad5f:	31 c9                	xor    %ecx,%ecx
  40ad61:	48 89 e6             	mov    %rsp,%rsi
  40ad64:	bf 30 70 40 00       	mov    $0x407030,%edi
  40ad69:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40ad6e:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%rsp)
  40ad75:	00 
  40ad76:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  40ad7d:	00 00 
  40ad7f:	c5 f9 7f 44 24 20    	vmovdqa %xmm0,0x20(%rsp)
  40ad85:	e8 16 86 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40ad8a:	8b 44 24 40          	mov    0x40(%rsp),%eax
  40ad8e:	c5 fb 10 4c 24 38    	vmovsd 0x38(%rsp),%xmm1
  40ad94:	48 8b 53 70          	mov    0x70(%rbx),%rdx
  40ad98:	c5 fb 11 0a          	vmovsd %xmm1,(%rdx)
  40ad9c:	85 c0                	test   %eax,%eax
  40ad9e:	75 1a                	jne    40adba <_ZZ4mainENKUlmE_clEm+0x20a>
  40ada0:	c5 f1 54 05 98 59 00 	vandpd 0x5998(%rip),%xmm1,%xmm0        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40ada7:	00 
  40ada8:	c5 fb 10 15 a0 58 00 	vmovsd 0x58a0(%rip),%xmm2        # 410650 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  40adaf:	00 
  40adb0:	c5 f9 2e d0          	vucomisd %xmm0,%xmm2
  40adb4:	0f 83 d9 02 00 00    	jae    40b093 <_ZZ4mainENKUlmE_clEm+0x4e3>
  40adba:	48 8b 53 78          	mov    0x78(%rbx),%rdx
  40adbe:	48 8b 8b c0 00 00 00 	mov    0xc0(%rbx),%rcx
  40adc5:	44 22 22             	and    (%rdx),%r12b
  40adc8:	44 88 22             	mov    %r12b,(%rdx)
  40adcb:	80 39 00             	cmpb   $0x0,(%rcx)
  40adce:	0f 85 09 01 00 00    	jne    40aedd <_ZZ4mainENKUlmE_clEm+0x32d>
  40add4:	48 8b 83 c8 00 00 00 	mov    0xc8(%rbx),%rax
  40addb:	80 38 00             	cmpb   $0x0,(%rax)
  40adde:	0f 85 f9 00 00 00    	jne    40aedd <_ZZ4mainENKUlmE_clEm+0x32d>
  40ade4:	48 8b b3 b0 00 00 00 	mov    0xb0(%rbx),%rsi
  40adeb:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
  40adf2:	80 3e 00             	cmpb   $0x0,(%rsi)
  40adf5:	48 63 00             	movslq (%rax),%rax
  40adf8:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  40adfc:	74 39                	je     40ae37 <_ZZ4mainENKUlmE_clEm+0x287>
  40adfe:	c5 eb 2a c0          	vcvtsi2sd %eax,%xmm2,%xmm0
  40ae02:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40ae08:	c5 fb 59 05 e0 57 00 	vmulsd 0x57e0(%rip),%xmm0,%xmm0        # 4105f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  40ae0f:	00 
  40ae10:	c5 fb 59 05 48 58 00 	vmulsd 0x5848(%rip),%xmm0,%xmm0        # 410660 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  40ae17:	00 
  40ae18:	c5 fb 59 05 10 58 00 	vmulsd 0x5810(%rip),%xmm0,%xmm0        # 410630 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  40ae1f:	00 
  40ae20:	c5 fb 59 05 40 58 00 	vmulsd 0x5840(%rip),%xmm0,%xmm0        # 410668 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  40ae27:	00 
  40ae28:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  40ae2c:	40 0f 9b c7          	setnp  %dil
  40ae30:	41 0f 45 f8          	cmovne %r8d,%edi
  40ae34:	40 20 3a             	and    %dil,(%rdx)
  40ae37:	48 8b bb b8 00 00 00 	mov    0xb8(%rbx),%rdi
  40ae3e:	80 3f 00             	cmpb   $0x0,(%rdi)
  40ae41:	74 3d                	je     40ae80 <_ZZ4mainENKUlmE_clEm+0x2d0>
  40ae43:	4c 8b 83 90 00 00 00 	mov    0x90(%rbx),%r8
  40ae4a:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40ae50:	c4 c1 6b 2a 00       	vcvtsi2sdl (%r8),%xmm2,%xmm0
  40ae55:	c5 eb 2a d0          	vcvtsi2sd %eax,%xmm2,%xmm2
  40ae59:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40ae5d:	c5 fb 59 05 fb 57 00 	vmulsd 0x57fb(%rip),%xmm0,%xmm0        # 410660 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  40ae64:	00 
  40ae65:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  40ae69:	c5 fb 59 05 f7 57 00 	vmulsd 0x57f7(%rip),%xmm0,%xmm0        # 410668 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  40ae70:	00 
  40ae71:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  40ae75:	41 0f 9b c0          	setnp  %r8b
  40ae79:	45 0f 45 c1          	cmovne %r9d,%r8d
  40ae7d:	44 20 02             	and    %r8b,(%rdx)
  40ae80:	4c 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%r8
  40ae87:	ba 01 00 00 00       	mov    $0x1,%edx
  40ae8c:	48 c1 e2 22          	shl    $0x22,%rdx
  40ae90:	41 80 38 00          	cmpb   $0x0,(%r8)
  40ae94:	75 3e                	jne    40aed4 <_ZZ4mainENKUlmE_clEm+0x324>
  40ae96:	4c 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8
  40ae9d:	ba 01 00 00 00       	mov    $0x1,%edx
  40aea2:	48 c1 e2 23          	shl    $0x23,%rdx
  40aea6:	41 80 38 00          	cmpb   $0x0,(%r8)
  40aeaa:	75 28                	jne    40aed4 <_ZZ4mainENKUlmE_clEm+0x324>
  40aeac:	ba 51 25 02 00       	mov    $0x22551,%edx
  40aeb1:	48 c1 e2 0f          	shl    $0xf,%rdx
  40aeb5:	80 3e 00             	cmpb   $0x0,(%rsi)
  40aeb8:	75 1a                	jne    40aed4 <_ZZ4mainENKUlmE_clEm+0x324>
  40aeba:	80 3f 00             	cmpb   $0x0,(%rdi)
  40aebd:	0f 84 2d 02 00 00    	je     40b0f0 <_ZZ4mainENKUlmE_clEm+0x540>
  40aec3:	48 8b 93 90 00 00 00 	mov    0x90(%rbx),%rdx
  40aeca:	48 63 12             	movslq (%rdx),%rdx
  40aecd:	48 69 d2 00 b0 71 0b 	imul   $0xb71b000,%rdx,%rdx
  40aed4:	48 0f af c2          	imul   %rdx,%rax
  40aed8:	e9 ea fd ff ff       	jmpq   40acc7 <_ZZ4mainENKUlmE_clEm+0x117>
  40aedd:	48 8b 83 d0 00 00 00 	mov    0xd0(%rbx),%rax
  40aee4:	c5 fa 7e 1d 54 58 00 	vmovq  0x5854(%rip),%xmm3        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40aeeb:	00 
  40aeec:	c5 fb 10 00          	vmovsd (%rax),%xmm0
  40aef0:	c5 f3 5c d0          	vsubsd %xmm0,%xmm1,%xmm2
  40aef4:	c5 f9 54 c3          	vandpd %xmm3,%xmm0,%xmm0
  40aef8:	c5 e9 54 d3          	vandpd %xmm3,%xmm2,%xmm2
  40aefc:	c5 fb 10 1d 44 57 00 	vmovsd 0x5744(%rip),%xmm3        # 410648 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x148>
  40af03:	00 
  40af04:	c5 fb 59 c3          	vmulsd %xmm3,%xmm0,%xmm0
  40af08:	c5 fb 5f c3          	vmaxsd %xmm3,%xmm0,%xmm0
  40af0c:	c5 f9 2f c2          	vcomisd %xmm2,%xmm0
  40af10:	0f 97 c0             	seta   %al
  40af13:	44 21 e0             	and    %r12d,%eax
  40af16:	88 02                	mov    %al,(%rdx)
  40af18:	e9 c7 fe ff ff       	jmpq   40ade4 <_ZZ4mainENKUlmE_clEm+0x234>
  40af1d:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40af21:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40af26:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40af2a:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40af2f:	48 8d 47 28          	lea    0x28(%rdi),%rax
  40af33:	48 89 3c 24          	mov    %rdi,(%rsp)
  40af37:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40af3c:	31 c9                	xor    %ecx,%ecx
  40af3e:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40af42:	31 d2                	xor    %edx,%edx
  40af44:	48 89 e6             	mov    %rsp,%rsi
  40af47:	bf f0 6a 40 00       	mov    $0x406af0,%edi
  40af4c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40af51:	e8 4a 84 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40af56:	48 8b 43 18          	mov    0x18(%rbx),%rax
  40af5a:	48 8b 00             	mov    (%rax),%rax
  40af5d:	48 01 c0             	add    %rax,%rax
  40af60:	e9 62 fd ff ff       	jmpq   40acc7 <_ZZ4mainENKUlmE_clEm+0x117>
  40af65:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40af69:	48 89 3c 24          	mov    %rdi,(%rsp)
  40af6d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40af72:	48 83 c3 28          	add    $0x28,%rbx
  40af76:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40af7a:	31 c9                	xor    %ecx,%ecx
  40af7c:	31 d2                	xor    %edx,%edx
  40af7e:	48 89 e6             	mov    %rsp,%rsi
  40af81:	bf c0 6c 40 00       	mov    $0x406cc0,%edi
  40af86:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40af8b:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  40af90:	e8 0b 84 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40af95:	31 c0                	xor    %eax,%eax
  40af97:	e9 2b fd ff ff       	jmpq   40acc7 <_ZZ4mainENKUlmE_clEm+0x117>
  40af9c:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40afa0:	48 89 3c 24          	mov    %rdi,(%rsp)
  40afa4:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40afa9:	48 83 c3 28          	add    $0x28,%rbx
  40afad:	48 8d 47 20          	lea    0x20(%rdi),%rax
  40afb1:	31 c9                	xor    %ecx,%ecx
  40afb3:	31 d2                	xor    %edx,%edx
  40afb5:	48 89 e6             	mov    %rsp,%rsi
  40afb8:	bf b0 a5 40 00       	mov    $0x40a5b0,%edi
  40afbd:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40afc2:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  40afc7:	e8 d4 83 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40afcc:	31 c0                	xor    %eax,%eax
  40afce:	e9 f4 fc ff ff       	jmpq   40acc7 <_ZZ4mainENKUlmE_clEm+0x117>
  40afd3:	48 8d 47 58          	lea    0x58(%rdi),%rax
  40afd7:	48 8d 7f 60          	lea    0x60(%rdi),%rdi
  40afdb:	48 8d 53 68          	lea    0x68(%rbx),%rdx
  40afdf:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  40afe3:	c4 e1 f9 6e cf       	vmovq  %rdi,%xmm1
  40afe8:	c4 e1 f9 6e f3       	vmovq  %rbx,%xmm6
  40afed:	c4 e3 f1 22 ca 01    	vpinsrq $0x1,%rdx,%xmm1,%xmm1
  40aff3:	c5 f9 29 44 24 30    	vmovapd %xmm0,0x30(%rsp)
  40aff9:	c4 e3 c9 22 c0 01    	vpinsrq $0x1,%rax,%xmm6,%xmm0
  40afff:	48 89 34 24          	mov    %rsi,(%rsp)
  40b003:	c4 e3 7d 38 c1 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm0
  40b009:	31 c9                	xor    %ecx,%ecx
  40b00b:	31 d2                	xor    %edx,%edx
  40b00d:	48 89 e6             	mov    %rsp,%rsi
  40b010:	bf 10 6e 40 00       	mov    $0x406e10,%edi
  40b015:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  40b01c:	00 00 
  40b01e:	c5 fe 7f 44 24 08    	vmovdqu %ymm0,0x8(%rsp)
  40b024:	c5 f8 77             	vzeroupper 
  40b027:	e8 74 83 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40b02c:	c5 fb 10 44 24 30    	vmovsd 0x30(%rsp),%xmm0
  40b032:	c5 fa 7e 0d 06 57 00 	vmovq  0x5706(%rip),%xmm1        # 410740 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40b039:	00 
  40b03a:	c5 fb 10 1d 0e 56 00 	vmovsd 0x560e(%rip),%xmm3        # 410650 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  40b041:	00 
  40b042:	c5 f9 54 d1          	vandpd %xmm1,%xmm0,%xmm2
  40b046:	c5 f9 2e da          	vucomisd %xmm2,%xmm3
  40b04a:	48 8b 43 70          	mov    0x70(%rbx),%rax
  40b04e:	c5 fb 10 64 24 38    	vmovsd 0x38(%rsp),%xmm4
  40b054:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
  40b059:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
  40b05d:	72 1c                	jb     40b07b <_ZZ4mainENKUlmE_clEm+0x4cb>
  40b05f:	c5 d9 54 d1          	vandpd %xmm1,%xmm4,%xmm2
  40b063:	c5 eb 59 15 ed 55 00 	vmulsd 0x55ed(%rip),%xmm2,%xmm2        # 410658 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  40b06a:	00 
  40b06b:	c5 fb 5c c4          	vsubsd %xmm4,%xmm0,%xmm0
  40b06f:	c5 f9 54 c1          	vandpd %xmm1,%xmm0,%xmm0
  40b073:	c5 f9 2f d0          	vcomisd %xmm0,%xmm2
  40b077:	41 0f 93 c4          	setae  %r12b
  40b07b:	48 8b 43 78          	mov    0x78(%rbx),%rax
  40b07f:	44 20 20             	and    %r12b,(%rax)
  40b082:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
  40b089:	48 89 10             	mov    %rdx,(%rax)
  40b08c:	31 c0                	xor    %eax,%eax
  40b08e:	e9 34 fc ff ff       	jmpq   40acc7 <_ZZ4mainENKUlmE_clEm+0x117>
  40b093:	c5 f9 2f 0d 45 56 00 	vcomisd 0x5645(%rip),%xmm1        # 4106e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  40b09a:	00 
  40b09b:	41 0f 97 c4          	seta   %r12b
  40b09f:	e9 16 fd ff ff       	jmpq   40adba <_ZZ4mainENKUlmE_clEm+0x20a>
  40b0a4:	89 7c 24 18          	mov    %edi,0x18(%rsp)
  40b0a8:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40b0ad:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40b0b2:	48 89 14 24          	mov    %rdx,(%rsp)
  40b0b6:	31 c9                	xor    %ecx,%ecx
  40b0b8:	31 d2                	xor    %edx,%edx
  40b0ba:	48 89 e6             	mov    %rsp,%rsi
  40b0bd:	bf 50 a6 40 00       	mov    $0x40a650,%edi
  40b0c2:	e8 d9 82 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40b0c7:	e9 c2 fb ff ff       	jmpq   40ac8e <_ZZ4mainENKUlmE_clEm+0xde>
  40b0cc:	89 7c 24 18          	mov    %edi,0x18(%rsp)
  40b0d0:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40b0d5:	31 c9                	xor    %ecx,%ecx
  40b0d7:	31 d2                	xor    %edx,%edx
  40b0d9:	48 89 e6             	mov    %rsp,%rsi
  40b0dc:	bf 30 a8 40 00       	mov    $0x40a830,%edi
  40b0e1:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  40b0e6:	e8 b5 82 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40b0eb:	e9 9e fb ff ff       	jmpq   40ac8e <_ZZ4mainENKUlmE_clEm+0xde>
  40b0f0:	80 39 01             	cmpb   $0x1,(%rcx)
  40b0f3:	48 19 d2             	sbb    %rdx,%rdx
  40b0f6:	48 81 e2 00 f0 aa dd 	and    $0xffffffffddaaf000,%rdx
  40b0fd:	48 81 c2 00 20 aa 44 	add    $0x44aa2000,%rdx
  40b104:	e9 cb fd ff ff       	jmpq   40aed4 <_ZZ4mainENKUlmE_clEm+0x324>
  40b109:	90                   	nop
  40b10a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000040b110 <_ZZ4mainENKUlPKcddE0_clES0_dd.part.0>:
  40b110:	41 56                	push   %r14
  40b112:	ba 02 00 00 00       	mov    $0x2,%edx
  40b117:	be 10 00 41 00       	mov    $0x410010,%esi
  40b11c:	55                   	push   %rbp
  40b11d:	48 89 fd             	mov    %rdi,%rbp
  40b120:	bf 80 32 41 00       	mov    $0x413280,%edi
  40b125:	53                   	push   %rbx
  40b126:	c4 c1 f9 7e c6       	vmovq  %xmm0,%r14
  40b12b:	c4 e1 f9 7e cb       	vmovq  %xmm1,%rbx
  40b130:	e8 ab 81 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40b135:	48 89 ef             	mov    %rbp,%rdi
  40b138:	e8 03 80 ff ff       	callq  403140 <strlen@plt>
  40b13d:	48 89 c2             	mov    %rax,%rdx
  40b140:	48 89 ee             	mov    %rbp,%rsi
  40b143:	bf 80 32 41 00       	mov    $0x413280,%edi
  40b148:	e8 93 81 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40b14d:	bf 80 32 41 00       	mov    $0x413280,%edi
  40b152:	ba 02 00 00 00       	mov    $0x2,%edx
  40b157:	be 32 04 41 00       	mov    $0x410432,%esi
  40b15c:	e8 7f 81 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40b161:	c4 e1 f9 6e d3       	vmovq  %rbx,%xmm2
  40b166:	c4 c1 f9 6e de       	vmovq  %r14,%xmm3
  40b16b:	5b                   	pop    %rbx
  40b16c:	c5 eb 5c c3          	vsubsd %xmm3,%xmm2,%xmm0
  40b170:	5d                   	pop    %rbp
  40b171:	bf 80 32 41 00       	mov    $0x413280,%edi
  40b176:	41 5e                	pop    %r14
  40b178:	e9 73 82 ff ff       	jmpq   4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  40b17d:	90                   	nop
  40b17e:	66 90                	xchg   %ax,%ax

000000000040b180 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>:
  40b180:	41 55                	push   %r13
  40b182:	41 54                	push   %r12
  40b184:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  40b188:	55                   	push   %rbp
  40b189:	53                   	push   %rbx
  40b18a:	48 83 ec 18          	sub    $0x18,%rsp
  40b18e:	4c 89 27             	mov    %r12,(%rdi)
  40b191:	48 85 f6             	test   %rsi,%rsi
  40b194:	0f 84 8c 00 00 00    	je     40b226 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0xa6>
  40b19a:	48 89 fb             	mov    %rdi,%rbx
  40b19d:	48 89 f7             	mov    %rsi,%rdi
  40b1a0:	48 89 f5             	mov    %rsi,%rbp
  40b1a3:	e8 98 7f ff ff       	callq  403140 <strlen@plt>
  40b1a8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40b1ad:	49 89 c5             	mov    %rax,%r13
  40b1b0:	48 83 f8 0f          	cmp    $0xf,%rax
  40b1b4:	77 3a                	ja     40b1f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x70>
  40b1b6:	48 83 f8 01          	cmp    $0x1,%rax
  40b1ba:	75 24                	jne    40b1e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x60>
  40b1bc:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
  40b1c0:	88 53 10             	mov    %dl,0x10(%rbx)
  40b1c3:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40b1c7:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
  40b1cc:	48 83 c4 18          	add    $0x18,%rsp
  40b1d0:	5b                   	pop    %rbx
  40b1d1:	5d                   	pop    %rbp
  40b1d2:	41 5c                	pop    %r12
  40b1d4:	41 5d                	pop    %r13
  40b1d6:	c3                   	retq   
  40b1d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40b1de:	00 00 
  40b1e0:	48 85 c0             	test   %rax,%rax
  40b1e3:	74 de                	je     40b1c3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  40b1e5:	eb 27                	jmp    40b20e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x8e>
  40b1e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40b1ee:	00 00 
  40b1f0:	31 d2                	xor    %edx,%edx
  40b1f2:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  40b1f7:	48 89 df             	mov    %rbx,%rdi
  40b1fa:	e8 61 82 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40b1ff:	48 89 03             	mov    %rax,(%rbx)
  40b202:	49 89 c4             	mov    %rax,%r12
  40b205:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40b20a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40b20e:	4c 89 e7             	mov    %r12,%rdi
  40b211:	4c 89 ea             	mov    %r13,%rdx
  40b214:	48 89 ee             	mov    %rbp,%rsi
  40b217:	e8 34 80 ff ff       	callq  403250 <memcpy@plt>
  40b21c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40b221:	4c 8b 23             	mov    (%rbx),%r12
  40b224:	eb 9d                	jmp    40b1c3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  40b226:	bf 38 04 41 00       	mov    $0x410438,%edi
  40b22b:	e8 c0 7f ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>

000000000040b230 <_Z8clock_nsv>:
  40b230:	48 83 ec 18          	sub    $0x18,%rsp
  40b234:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40b238:	48 89 e6             	mov    %rsp,%rsi
  40b23b:	bf 01 00 00 00       	mov    $0x1,%edi
  40b240:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  40b245:	e8 36 80 ff ff       	callq  403280 <clock_gettime@plt>
  40b24a:	48 69 04 24 00 ca 9a 	imul   $0x3b9aca00,(%rsp),%rax
  40b251:	3b 
  40b252:	48 03 44 24 08       	add    0x8(%rsp),%rax
  40b257:	48 83 c4 18          	add    $0x18,%rsp
  40b25b:	c3                   	retq   
  40b25c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b260 <_Z9perf_openjmm>:
  40b260:	48 83 ec 58          	sub    $0x58,%rsp
  40b264:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40b268:	89 3c 24             	mov    %edi,(%rsp)
  40b26b:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  40b270:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40b276:	48 89 e6             	mov    %rsp,%rsi
  40b279:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
  40b27e:	45 31 c9             	xor    %r9d,%r9d
  40b281:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40b287:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40b28c:	31 d2                	xor    %edx,%edx
  40b28e:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40b293:	31 c0                	xor    %eax,%eax
  40b295:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40b29c:	00 00 
  40b29e:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40b2a5:	00 
  40b2a6:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40b2ad:	00 00 
  40b2af:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40b2b6:	00 00 
  40b2b8:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40b2be:	e8 8d 7d ff ff       	callq  403050 <syscall@plt>
  40b2c3:	48 83 c4 58          	add    $0x58,%rsp
  40b2c7:	c3                   	retq   
  40b2c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40b2cf:	00 

000000000040b2d0 <_Z11alloc_bytesmb>:
  40b2d0:	41 54                	push   %r12
  40b2d2:	55                   	push   %rbp
  40b2d3:	48 83 ec 08          	sub    $0x8,%rsp
  40b2d7:	48 81 ff ff ff 1f 00 	cmp    $0x1fffff,%rdi
  40b2de:	76 48                	jbe    40b328 <_Z11alloc_bytesmb+0x58>
  40b2e0:	40 84 f6             	test   %sil,%sil
  40b2e3:	74 43                	je     40b328 <_Z11alloc_bytesmb+0x58>
  40b2e5:	48 8d af ff ff 1f 00 	lea    0x1fffff(%rdi),%rbp
  40b2ec:	48 81 e5 00 00 e0 ff 	and    $0xffffffffffe00000,%rbp
  40b2f3:	48 89 ee             	mov    %rbp,%rsi
  40b2f6:	bf 00 00 20 00       	mov    $0x200000,%edi
  40b2fb:	e8 10 7f ff ff       	callq  403210 <aligned_alloc@plt>
  40b300:	49 89 c4             	mov    %rax,%r12
  40b303:	48 85 c0             	test   %rax,%rax
  40b306:	74 49                	je     40b351 <_Z11alloc_bytesmb+0x81>
  40b308:	48 89 ee             	mov    %rbp,%rsi
  40b30b:	4c 89 e7             	mov    %r12,%rdi
  40b30e:	ba 0e 00 00 00       	mov    $0xe,%edx
  40b313:	e8 f8 7f ff ff       	callq  403310 <madvise@plt>
  40b318:	48 83 c4 08          	add    $0x8,%rsp
  40b31c:	5d                   	pop    %rbp
  40b31d:	4c 89 e0             	mov    %r12,%rax
  40b320:	41 5c                	pop    %r12
  40b322:	c3                   	retq   
  40b323:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40b328:	48 8d 77 3f          	lea    0x3f(%rdi),%rsi
  40b32c:	48 83 e6 c0          	and    $0xffffffffffffffc0,%rsi
  40b330:	bf 40 00 00 00       	mov    $0x40,%edi
  40b335:	e8 d6 7e ff ff       	callq  403210 <aligned_alloc@plt>
  40b33a:	49 89 c4             	mov    %rax,%r12
  40b33d:	48 85 c0             	test   %rax,%rax
  40b340:	0f 84 8a 81 ff ff    	je     4034d0 <_Z11alloc_bytesmb.cold>
  40b346:	48 83 c4 08          	add    $0x8,%rsp
  40b34a:	5d                   	pop    %rbp
  40b34b:	4c 89 e0             	mov    %r12,%rax
  40b34e:	41 5c                	pop    %r12
  40b350:	c3                   	retq   
  40b351:	e9 7a 81 ff ff       	jmpq   4034d0 <_Z11alloc_bytesmb.cold>
  40b356:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40b35d:	00 00 00 

000000000040b360 <main._omp_fn.2>:
  40b360:	55                   	push   %rbp
  40b361:	48 89 fd             	mov    %rdi,%rbp
  40b364:	53                   	push   %rbx
  40b365:	48 83 ec 08          	sub    $0x8,%rsp
  40b369:	e8 72 80 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40b36e:	48 63 d8             	movslq %eax,%rbx
  40b371:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40b375:	0f b6 75 18          	movzbl 0x18(%rbp),%esi
  40b379:	48 8b 38             	mov    (%rax),%rdi
  40b37c:	e8 4f ff ff ff       	callq  40b2d0 <_Z11alloc_bytesmb>
  40b381:	48 89 c6             	mov    %rax,%rsi
  40b384:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40b388:	48 8b 38             	mov    (%rax),%rdi
  40b38b:	48 c1 ef 03          	shr    $0x3,%rdi
  40b38f:	74 7f                	je     40b410 <main._omp_fn.2+0xb0>
  40b391:	c5 fb 10 1d 37 52 00 	vmovsd 0x5237(%rip),%xmm3        # 4105d0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd0>
  40b398:	00 
  40b399:	c5 fb 10 15 4f 53 00 	vmovsd 0x534f(%rip),%xmm2        # 4106f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f0>
  40b3a0:	00 
  40b3a1:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
  40b3a5:	31 c9                	xor    %ecx,%ecx
  40b3a7:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  40b3ab:	49 b8 f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r8
  40b3b2:	f0 f0 f0 
  40b3b5:	0f 1f 00             	nopl   (%rax)
  40b3b8:	48 89 c8             	mov    %rcx,%rax
  40b3bb:	49 f7 e0             	mul    %r8
  40b3be:	48 89 d0             	mov    %rdx,%rax
  40b3c1:	48 c1 e8 04          	shr    $0x4,%rax
  40b3c5:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  40b3c9:	48 01 c2             	add    %rax,%rdx
  40b3cc:	48 89 c8             	mov    %rcx,%rax
  40b3cf:	48 29 d0             	sub    %rdx,%rax
  40b3d2:	c4 e1 db 2a c0       	vcvtsi2sd %rax,%xmm4,%xmm0
  40b3d7:	c4 e2 e9 99 c3       	vfmadd132sd %xmm3,%xmm2,%xmm0
  40b3dc:	c5 fb 11 04 ce       	vmovsd %xmm0,(%rsi,%rcx,8)
  40b3e1:	48 ff c1             	inc    %rcx
  40b3e4:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40b3e8:	48 39 cf             	cmp    %rcx,%rdi
  40b3eb:	75 cb                	jne    40b3b8 <main._omp_fn.2+0x58>
  40b3ed:	48 8b 45 00          	mov    0x0(%rbp),%rax
  40b3f1:	48 8b 00             	mov    (%rax),%rax
  40b3f4:	48 89 34 d8          	mov    %rsi,(%rax,%rbx,8)
  40b3f8:	48 8b 45 08          	mov    0x8(%rbp),%rax
  40b3fc:	48 8b 00             	mov    (%rax),%rax
  40b3ff:	c5 fb 11 0c d8       	vmovsd %xmm1,(%rax,%rbx,8)
  40b404:	48 83 c4 08          	add    $0x8,%rsp
  40b408:	5b                   	pop    %rbx
  40b409:	5d                   	pop    %rbp
  40b40a:	c3                   	retq   
  40b40b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40b410:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  40b414:	eb d7                	jmp    40b3ed <main._omp_fn.2+0x8d>
  40b416:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40b41d:	00 00 00 

000000000040b420 <_Z6windowid>:
  40b420:	55                   	push   %rbp
  40b421:	48 89 e5             	mov    %rsp,%rbp
  40b424:	41 57                	push   %r15
  40b426:	41 56                	push   %r14
  40b428:	41 55                	push   %r13
  40b42a:	41 54                	push   %r12
  40b42c:	41 89 fc             	mov    %edi,%r12d
  40b42f:	bf 25 00 41 00       	mov    $0x410025,%edi
  40b434:	53                   	push   %rbx
  40b435:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40b439:	48 81 ec a0 03 00 00 	sub    $0x3a0,%rsp
  40b440:	e8 db 7e ff ff       	callq  403320 <getenv@plt>
  40b445:	48 85 c0             	test   %rax,%rax
  40b448:	0f 84 0f 1c 00 00    	je     40d05d <_Z6windowid+0x1c3d>
  40b44e:	48 89 c7             	mov    %rax,%rdi
  40b451:	49 89 c5             	mov    %rax,%r13
  40b454:	e8 e7 7c ff ff       	callq  403140 <strlen@plt>
  40b459:	48 8d 8c 24 00 01 00 	lea    0x100(%rsp),%rcx
  40b460:	00 
  40b461:	48 89 8c 24 f0 00 00 	mov    %rcx,0xf0(%rsp)
  40b468:	00 
  40b469:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b470:	00 
  40b471:	49 89 c6             	mov    %rax,%r14
  40b474:	48 83 f8 0f          	cmp    $0xf,%rax
  40b478:	0f 87 92 01 00 00    	ja     40b610 <_Z6windowid+0x1f0>
  40b47e:	48 83 f8 01          	cmp    $0x1,%rax
  40b482:	0f 85 6a 1d 00 00    	jne    40d1f2 <_Z6windowid+0x1dd2>
  40b488:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40b48d:	88 94 24 00 01 00 00 	mov    %dl,0x100(%rsp)
  40b494:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40b49b:	00 
  40b49c:	48 89 84 24 f8 00 00 	mov    %rax,0xf8(%rsp)
  40b4a3:	00 
  40b4a4:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40b4a8:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  40b4af:	00 
  40b4b0:	e8 fb 7b ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40b4b5:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40b4bc:	00 
  40b4bd:	e8 7e 7d ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40b4c2:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40b4c9:	00 
  40b4ca:	e8 f1 7c ff ff       	callq  4031c0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@plt>
  40b4cf:	bf 36 00 41 00       	mov    $0x410036,%edi
  40b4d4:	e8 47 7e ff ff       	callq  403320 <getenv@plt>
  40b4d9:	49 89 c5             	mov    %rax,%r13
  40b4dc:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b4e3:	00 
  40b4e4:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b4eb:	00 
  40b4ec:	4d 85 ed             	test   %r13,%r13
  40b4ef:	0f 84 61 20 00 00    	je     40d556 <_Z6windowid+0x2136>
  40b4f5:	4c 89 ef             	mov    %r13,%rdi
  40b4f8:	e8 43 7c ff ff       	callq  403140 <strlen@plt>
  40b4fd:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b504:	00 
  40b505:	49 89 c6             	mov    %rax,%r14
  40b508:	48 83 f8 0f          	cmp    $0xf,%rax
  40b50c:	0f 87 86 1c 00 00    	ja     40d198 <_Z6windowid+0x1d78>
  40b512:	48 83 f8 01          	cmp    $0x1,%rax
  40b516:	0f 85 59 1c 00 00    	jne    40d175 <_Z6windowid+0x1d55>
  40b51c:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  40b523:	00 
  40b524:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40b529:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  40b52e:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  40b535:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40b53c:	00 
  40b53d:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40b544:	00 
  40b545:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40b549:	e8 f2 7a ff ff       	callq  403040 <__errno_location@plt>
  40b54e:	48 8b 9c 24 80 01 00 	mov    0x180(%rsp),%rbx
  40b555:	00 
  40b556:	44 8b 28             	mov    (%rax),%r13d
  40b559:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40b55f:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40b564:	ba 0a 00 00 00       	mov    $0xa,%edx
  40b569:	48 89 df             	mov    %rbx,%rdi
  40b56c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  40b571:	e8 da 7d ff ff       	callq  403350 <strtol@plt>
  40b576:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  40b57b:	48 3b 9c 24 50 01 00 	cmp    0x150(%rsp),%rbx
  40b582:	00 
  40b583:	0f 84 d7 1f 00 00    	je     40d560 <_Z6windowid+0x2140>
  40b589:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b58e:	8b 10                	mov    (%rax),%edx
  40b590:	83 fa 22             	cmp    $0x22,%edx
  40b593:	0f 84 d1 1f 00 00    	je     40d56a <_Z6windowid+0x214a>
  40b599:	b8 00 00 00 80       	mov    $0x80000000,%eax
  40b59e:	48 03 44 24 48       	add    0x48(%rsp),%rax
  40b5a3:	48 c1 e8 20          	shr    $0x20,%rax
  40b5a7:	0f 85 bd 1f 00 00    	jne    40d56a <_Z6windowid+0x214a>
  40b5ad:	85 d2                	test   %edx,%edx
  40b5af:	75 08                	jne    40b5b9 <_Z6windowid+0x199>
  40b5b1:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b5b6:	44 89 28             	mov    %r13d,(%rax)
  40b5b9:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40b5c0:	00 
  40b5c1:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b5c8:	00 
  40b5c9:	48 39 c7             	cmp    %rax,%rdi
  40b5cc:	74 11                	je     40b5df <_Z6windowid+0x1bf>
  40b5ce:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40b5d5:	00 
  40b5d6:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b5da:	e8 d1 7c ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b5df:	bf 9a 00 41 00       	mov    $0x41009a,%edi
  40b5e4:	e8 37 7d ff ff       	callq  403320 <getenv@plt>
  40b5e9:	49 89 c5             	mov    %rax,%r13
  40b5ec:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b5f3:	00 
  40b5f4:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b5fb:	00 
  40b5fc:	4d 85 ed             	test   %r13,%r13
  40b5ff:	75 61                	jne    40b662 <_Z6windowid+0x242>
  40b601:	bf 38 04 41 00       	mov    $0x410438,%edi
  40b606:	e8 e5 7b ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40b60b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40b610:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40b617:	00 
  40b618:	31 d2                	xor    %edx,%edx
  40b61a:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40b621:	00 
  40b622:	e8 39 7e ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40b627:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
  40b62e:	00 
  40b62f:	48 89 c7             	mov    %rax,%rdi
  40b632:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40b639:	00 
  40b63a:	48 89 84 24 00 01 00 	mov    %rax,0x100(%rsp)
  40b641:	00 
  40b642:	4c 89 f2             	mov    %r14,%rdx
  40b645:	4c 89 ee             	mov    %r13,%rsi
  40b648:	e8 03 7c ff ff       	callq  403250 <memcpy@plt>
  40b64d:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40b654:	00 
  40b655:	48 8b 94 24 f0 00 00 	mov    0xf0(%rsp),%rdx
  40b65c:	00 
  40b65d:	e9 3a fe ff ff       	jmpq   40b49c <_Z6windowid+0x7c>
  40b662:	4c 89 ef             	mov    %r13,%rdi
  40b665:	e8 d6 7a ff ff       	callq  403140 <strlen@plt>
  40b66a:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b671:	00 
  40b672:	49 89 c6             	mov    %rax,%r14
  40b675:	48 83 f8 0f          	cmp    $0xf,%rax
  40b679:	0f 87 91 1a 00 00    	ja     40d110 <_Z6windowid+0x1cf0>
  40b67f:	48 83 f8 01          	cmp    $0x1,%rax
  40b683:	0f 85 d6 1a 00 00    	jne    40d15f <_Z6windowid+0x1d3f>
  40b689:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40b68e:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  40b695:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40b69c:	00 
  40b69d:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40b6a4:	00 
  40b6a5:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40b6a9:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b6ae:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40b6b3:	4c 8b ac 24 80 01 00 	mov    0x180(%rsp),%r13
  40b6ba:	00 
  40b6bb:	8b 18                	mov    (%rax),%ebx
  40b6bd:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40b6c3:	ba 0a 00 00 00       	mov    $0xa,%edx
  40b6c8:	4c 89 ef             	mov    %r13,%rdi
  40b6cb:	e8 80 7c ff ff       	callq  403350 <strtol@plt>
  40b6d0:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40b6d5:	4c 3b ac 24 50 01 00 	cmp    0x150(%rsp),%r13
  40b6dc:	00 
  40b6dd:	0f 84 7d 1f 00 00    	je     40d660 <_Z6windowid+0x2240>
  40b6e3:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b6e8:	8b 10                	mov    (%rax),%edx
  40b6ea:	83 fa 22             	cmp    $0x22,%edx
  40b6ed:	0f 84 30 1e 00 00    	je     40d523 <_Z6windowid+0x2103>
  40b6f3:	b8 00 00 00 80       	mov    $0x80000000,%eax
  40b6f8:	48 03 44 24 28       	add    0x28(%rsp),%rax
  40b6fd:	48 c1 e8 20          	shr    $0x20,%rax
  40b701:	0f 85 1c 1e 00 00    	jne    40d523 <_Z6windowid+0x2103>
  40b707:	85 d2                	test   %edx,%edx
  40b709:	75 07                	jne    40b712 <_Z6windowid+0x2f2>
  40b70b:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b710:	89 18                	mov    %ebx,(%rax)
  40b712:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40b719:	00 
  40b71a:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b721:	00 
  40b722:	48 39 c7             	cmp    %rax,%rdi
  40b725:	74 11                	je     40b738 <_Z6windowid+0x318>
  40b727:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40b72e:	00 
  40b72f:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b733:	e8 78 7b ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b738:	44 89 e0             	mov    %r12d,%eax
  40b73b:	c1 f8 1f             	sar    $0x1f,%eax
  40b73e:	45 89 e5             	mov    %r12d,%r13d
  40b741:	41 31 c4             	xor    %eax,%r12d
  40b744:	41 29 c4             	sub    %eax,%r12d
  40b747:	41 c1 ed 1f          	shr    $0x1f,%r13d
  40b74b:	41 83 fc 09          	cmp    $0x9,%r12d
  40b74f:	0f 86 88 1d 00 00    	jbe    40d4dd <_Z6windowid+0x20bd>
  40b755:	41 83 fc 63          	cmp    $0x63,%r12d
  40b759:	0f 86 88 1d 00 00    	jbe    40d4e7 <_Z6windowid+0x20c7>
  40b75f:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  40b766:	0f 86 85 1d 00 00    	jbe    40d4f1 <_Z6windowid+0x20d1>
  40b76c:	44 89 e2             	mov    %r12d,%edx
  40b76f:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  40b776:	0f 86 7f 1d 00 00    	jbe    40d4fb <_Z6windowid+0x20db>
  40b77c:	bb 01 00 00 00       	mov    $0x1,%ebx
  40b781:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  40b788:	c5 6d 34 
  40b78b:	eb 24                	jmp    40b7b1 <_Z6windowid+0x391>
  40b78d:	0f 1f 00             	nopl   (%rax)
  40b790:	83 fa 63             	cmp    $0x63,%edx
  40b793:	0f 86 44 1c 00 00    	jbe    40d3dd <_Z6windowid+0x1fbd>
  40b799:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40b79f:	0f 86 30 1c 00 00    	jbe    40d3d5 <_Z6windowid+0x1fb5>
  40b7a5:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40b7ab:	0f 86 34 1c 00 00    	jbe    40d3e5 <_Z6windowid+0x1fc5>
  40b7b1:	48 89 d0             	mov    %rdx,%rax
  40b7b4:	48 89 d1             	mov    %rdx,%rcx
  40b7b7:	48 f7 e6             	mul    %rsi
  40b7ba:	89 d8                	mov    %ebx,%eax
  40b7bc:	83 c3 04             	add    $0x4,%ebx
  40b7bf:	48 c1 ea 0b          	shr    $0xb,%rdx
  40b7c3:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40b7ca:	77 c4                	ja     40b790 <_Z6windowid+0x370>
  40b7cc:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b7d3:	00 
  40b7d4:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  40b7d9:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40b7de:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b7e5:	00 
  40b7e6:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b7ed:	00 
  40b7ee:	e8 fd 7a ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40b7f3:	45 0f b6 ed          	movzbl %r13b,%r13d
  40b7f7:	4c 03 ac 24 80 01 00 	add    0x180(%rsp),%r13
  40b7fe:	00 
  40b7ff:	ff cb                	dec    %ebx
  40b801:	41 83 fc 63          	cmp    $0x63,%r12d
  40b805:	76 52                	jbe    40b859 <_Z6windowid+0x439>
  40b807:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40b80e:	00 00 
  40b810:	44 89 e2             	mov    %r12d,%edx
  40b813:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40b81a:	44 89 e0             	mov    %r12d,%eax
  40b81d:	48 c1 ea 25          	shr    $0x25,%rdx
  40b821:	6b ca 64             	imul   $0x64,%edx,%ecx
  40b824:	29 c8                	sub    %ecx,%eax
  40b826:	01 c0                	add    %eax,%eax
  40b828:	8d 70 01             	lea    0x1(%rax),%esi
  40b82b:	0f b6 b6 00 05 41 00 	movzbl 0x410500(%rsi),%esi
  40b832:	0f b6 80 00 05 41 00 	movzbl 0x410500(%rax),%eax
  40b839:	44 89 e1             	mov    %r12d,%ecx
  40b83c:	41 89 d4             	mov    %edx,%r12d
  40b83f:	89 da                	mov    %ebx,%edx
  40b841:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  40b846:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40b849:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  40b84e:	83 eb 02             	sub    $0x2,%ebx
  40b851:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  40b857:	77 b7                	ja     40b810 <_Z6windowid+0x3f0>
  40b859:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40b85e:	41 83 fc 09          	cmp    $0x9,%r12d
  40b862:	76 1c                	jbe    40b880 <_Z6windowid+0x460>
  40b864:	45 01 e4             	add    %r12d,%r12d
  40b867:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40b86c:	0f b6 80 00 05 41 00 	movzbl 0x410500(%rax),%eax
  40b873:	41 88 45 01          	mov    %al,0x1(%r13)
  40b877:	41 0f b6 84 24 00 05 	movzbl 0x410500(%r12),%eax
  40b87e:	41 00 
  40b880:	41 88 45 00          	mov    %al,0x0(%r13)
  40b884:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  40b88a:	b9 4f 00 41 00       	mov    $0x41004f,%ecx
  40b88f:	31 d2                	xor    %edx,%edx
  40b891:	31 f6                	xor    %esi,%esi
  40b893:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b89a:	00 
  40b89b:	e8 20 7b ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40b8a0:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
  40b8a7:	00 
  40b8a8:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  40b8ad:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40b8b1:	48 8b 08             	mov    (%rax),%rcx
  40b8b4:	48 39 d1             	cmp    %rdx,%rcx
  40b8b7:	0f 84 a1 1a 00 00    	je     40d35e <_Z6windowid+0x1f3e>
  40b8bd:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  40b8c2:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40b8c6:	48 89 8c 24 80 00 00 	mov    %rcx,0x80(%rsp)
  40b8cd:	00 
  40b8ce:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40b8d2:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40b8d6:	48 89 4c 24 78       	mov    %rcx,0x78(%rsp)
  40b8db:	48 89 10             	mov    %rdx,(%rax)
  40b8de:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40b8e5:	00 
  40b8e6:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b8ed:	00 
  40b8ee:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40b8f5:	00 
  40b8f6:	48 39 c7             	cmp    %rax,%rdi
  40b8f9:	74 11                	je     40b90c <_Z6windowid+0x4ec>
  40b8fb:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40b902:	00 
  40b903:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b907:	e8 a4 79 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b90c:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
  40b911:	41 89 c5             	mov    %eax,%r13d
  40b914:	41 89 c4             	mov    %eax,%r12d
  40b917:	41 f7 dc             	neg    %r12d
  40b91a:	41 c1 ed 1f          	shr    $0x1f,%r13d
  40b91e:	48 85 c0             	test   %rax,%rax
  40b921:	44 0f 49 e0          	cmovns %eax,%r12d
  40b925:	41 83 fc 09          	cmp    $0x9,%r12d
  40b929:	0f 86 ea 1b 00 00    	jbe    40d519 <_Z6windowid+0x20f9>
  40b92f:	41 83 fc 63          	cmp    $0x63,%r12d
  40b933:	0f 86 9a 1b 00 00    	jbe    40d4d3 <_Z6windowid+0x20b3>
  40b939:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  40b940:	0f 86 bf 1b 00 00    	jbe    40d505 <_Z6windowid+0x20e5>
  40b946:	44 89 e2             	mov    %r12d,%edx
  40b949:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  40b950:	0f 86 b9 1b 00 00    	jbe    40d50f <_Z6windowid+0x20ef>
  40b956:	bb 01 00 00 00       	mov    $0x1,%ebx
  40b95b:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  40b962:	c5 6d 34 
  40b965:	eb 2a                	jmp    40b991 <_Z6windowid+0x571>
  40b967:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40b96e:	00 00 
  40b970:	83 fa 63             	cmp    $0x63,%edx
  40b973:	0f 86 54 1a 00 00    	jbe    40d3cd <_Z6windowid+0x1fad>
  40b979:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40b97f:	0f 86 40 1a 00 00    	jbe    40d3c5 <_Z6windowid+0x1fa5>
  40b985:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40b98b:	0f 86 5c 1a 00 00    	jbe    40d3ed <_Z6windowid+0x1fcd>
  40b991:	48 89 d0             	mov    %rdx,%rax
  40b994:	48 89 d1             	mov    %rdx,%rcx
  40b997:	48 f7 e6             	mul    %rsi
  40b99a:	89 d8                	mov    %ebx,%eax
  40b99c:	83 c3 04             	add    $0x4,%ebx
  40b99f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40b9a3:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40b9aa:	77 c4                	ja     40b970 <_Z6windowid+0x550>
  40b9ac:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40b9b3:	00 
  40b9b4:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  40b9b9:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40b9be:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40b9c5:	00 
  40b9c6:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  40b9cd:	00 
  40b9ce:	e8 1d 79 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40b9d3:	45 0f b6 ed          	movzbl %r13b,%r13d
  40b9d7:	4c 03 ac 24 b0 00 00 	add    0xb0(%rsp),%r13
  40b9de:	00 
  40b9df:	ff cb                	dec    %ebx
  40b9e1:	41 83 fc 63          	cmp    $0x63,%r12d
  40b9e5:	76 52                	jbe    40ba39 <_Z6windowid+0x619>
  40b9e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40b9ee:	00 00 
  40b9f0:	44 89 e2             	mov    %r12d,%edx
  40b9f3:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40b9fa:	44 89 e0             	mov    %r12d,%eax
  40b9fd:	48 c1 ea 25          	shr    $0x25,%rdx
  40ba01:	6b ca 64             	imul   $0x64,%edx,%ecx
  40ba04:	29 c8                	sub    %ecx,%eax
  40ba06:	01 c0                	add    %eax,%eax
  40ba08:	8d 70 01             	lea    0x1(%rax),%esi
  40ba0b:	0f b6 b6 00 05 41 00 	movzbl 0x410500(%rsi),%esi
  40ba12:	0f b6 80 00 05 41 00 	movzbl 0x410500(%rax),%eax
  40ba19:	44 89 e1             	mov    %r12d,%ecx
  40ba1c:	41 89 d4             	mov    %edx,%r12d
  40ba1f:	89 da                	mov    %ebx,%edx
  40ba21:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  40ba26:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40ba29:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  40ba2e:	83 eb 02             	sub    $0x2,%ebx
  40ba31:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  40ba37:	77 b7                	ja     40b9f0 <_Z6windowid+0x5d0>
  40ba39:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40ba3e:	41 83 fc 09          	cmp    $0x9,%r12d
  40ba42:	76 1c                	jbe    40ba60 <_Z6windowid+0x640>
  40ba44:	45 01 e4             	add    %r12d,%r12d
  40ba47:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40ba4c:	0f b6 80 00 05 41 00 	movzbl 0x410500(%rax),%eax
  40ba53:	41 88 45 01          	mov    %al,0x1(%r13)
  40ba57:	41 0f b6 84 24 00 05 	movzbl 0x410500(%r12),%eax
  40ba5e:	41 00 
  40ba60:	41 88 45 00          	mov    %al,0x0(%r13)
  40ba64:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40ba6b:	00 
  40ba6c:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40ba73:	00 
  40ba74:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40ba79:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40ba7e:	4c 89 e8             	mov    %r13,%rax
  40ba81:	4c 01 e0             	add    %r12,%rax
  40ba84:	74 09                	je     40ba8f <_Z6windowid+0x66f>
  40ba86:	4d 85 ed             	test   %r13,%r13
  40ba89:	0f 84 db 1b 00 00    	je     40d66a <_Z6windowid+0x224a>
  40ba8f:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40ba96:	00 
  40ba97:	49 83 fc 0f          	cmp    $0xf,%r12
  40ba9b:	0f 87 31 18 00 00    	ja     40d2d2 <_Z6windowid+0x1eb2>
  40baa1:	49 83 fc 01          	cmp    $0x1,%r12
  40baa5:	0f 85 11 18 00 00    	jne    40d2bc <_Z6windowid+0x1e9c>
  40baab:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40bab0:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  40bab7:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40babe:	00 
  40babf:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  40bac6:	00 
  40bac7:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40bacc:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40bad3:	ff ff 3f 
  40bad6:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  40badd:	00 
  40bade:	48 83 f8 05          	cmp    $0x5,%rax
  40bae2:	0f 86 5a 1b 00 00    	jbe    40d642 <_Z6windowid+0x2222>
  40bae8:	ba 06 00 00 00       	mov    $0x6,%edx
  40baed:	be 53 00 41 00       	mov    $0x410053,%esi
  40baf2:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40baf9:	00 
  40bafa:	e8 f1 75 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40baff:	4c 8b 8c 24 90 00 00 	mov    0x90(%rsp),%r9
  40bb06:	00 
  40bb07:	b8 0f 00 00 00       	mov    $0xf,%eax
  40bb0c:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  40bb13:	00 
  40bb14:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  40bb1b:	00 
  40bb1c:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  40bb23:	00 
  40bb24:	49 39 d9             	cmp    %rbx,%r9
  40bb27:	48 89 c7             	mov    %rax,%rdi
  40bb2a:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  40bb31:	00 00 
  40bb33:	49 8d 0c 10          	lea    (%r8,%rdx,1),%rcx
  40bb37:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  40bb3e:	00 
  40bb3f:	48 39 f9             	cmp    %rdi,%rcx
  40bb42:	76 1d                	jbe    40bb61 <_Z6windowid+0x741>
  40bb44:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  40bb4b:	00 
  40bb4c:	48 39 de             	cmp    %rbx,%rsi
  40bb4f:	48 0f 45 84 24 c0 00 	cmovne 0xc0(%rsp),%rax
  40bb56:	00 00 
  40bb58:	48 39 c1             	cmp    %rax,%rcx
  40bb5b:	0f 86 4b 18 00 00    	jbe    40d3ac <_Z6windowid+0x1f8c>
  40bb61:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40bb68:	00 
  40bb69:	e8 82 75 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40bb6e:	4c 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%r15
  40bb75:	00 
  40bb76:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40bb7d:	00 
  40bb7e:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40bb82:	48 8b 08             	mov    (%rax),%rcx
  40bb85:	48 39 d1             	cmp    %rdx,%rcx
  40bb88:	0f 84 bd 17 00 00    	je     40d34b <_Z6windowid+0x1f2b>
  40bb8e:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  40bb95:	00 
  40bb96:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40bb9a:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  40bba1:	00 
  40bba2:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40bba6:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  40bbad:	00 
  40bbae:	48 89 10             	mov    %rdx,(%rax)
  40bbb1:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40bbb5:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40bbbc:	00 
  40bbbd:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40bbc4:	00 
  40bbc5:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40bbcc:	00 
  40bbcd:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40bbd4:	00 
  40bbd5:	4c 39 f8             	cmp    %r15,%rax
  40bbd8:	0f 84 56 17 00 00    	je     40d334 <_Z6windowid+0x1f14>
  40bbde:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40bbe5:	00 
  40bbe6:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40bbed:	00 
  40bbee:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40bbf5:	00 
  40bbf6:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40bbfd:	00 
  40bbfe:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40bc05:	00 
  40bc06:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
  40bc0d:	00 
  40bc0e:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40bc15:	00 
  40bc16:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40bc1d:	00 00 00 00 00 
  40bc22:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40bc29:	00 
  40bc2a:	e8 81 74 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40bc2f:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40bc36:	00 
  40bc37:	e8 04 76 ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40bc3c:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40bc43:	00 
  40bc44:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bc4b:	00 
  40bc4c:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40bc53:	00 
  40bc54:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40bc5b:	00 
  40bc5c:	4c 89 e8             	mov    %r13,%rax
  40bc5f:	4c 01 e0             	add    %r12,%rax
  40bc62:	74 09                	je     40bc6d <_Z6windowid+0x84d>
  40bc64:	4d 85 ed             	test   %r13,%r13
  40bc67:	0f 84 e9 19 00 00    	je     40d656 <_Z6windowid+0x2236>
  40bc6d:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40bc74:	00 
  40bc75:	49 83 fc 0f          	cmp    $0xf,%r12
  40bc79:	0f 87 ee 15 00 00    	ja     40d26d <_Z6windowid+0x1e4d>
  40bc7f:	49 83 fc 01          	cmp    $0x1,%r12
  40bc83:	0f 85 ce 15 00 00    	jne    40d257 <_Z6windowid+0x1e37>
  40bc89:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40bc8e:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40bc95:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bc9c:	00 
  40bc9d:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40bca4:	00 
  40bca5:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40bcaa:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40bcb1:	00 
  40bcb2:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40bcb9:	00 
  40bcba:	e8 e1 77 ff ff       	callq  4034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40bcbf:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40bcc4:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  40bccb:	00 
  40bccc:	e8 af 73 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40bcd1:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40bcd8:	00 
  40bcd9:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40bce0:	00 
  40bce1:	e8 ea 73 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40bce6:	31 c9                	xor    %ecx,%ecx
  40bce8:	66 89 8c 24 58 03 00 	mov    %cx,0x358(%rsp)
  40bcef:	00 
  40bcf0:	48 8b 05 31 6f 00 00 	mov    0x6f31(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40bcf7:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40bcfb:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  40bd02:	00 00 
  40bd04:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bd0b:	00 
  40bd0c:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40bd13:	00 
  40bd14:	48 03 78 e8          	add    -0x18(%rax),%rdi
  40bd18:	48 8b 05 11 6f 00 00 	mov    0x6f11(%rip),%rax        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40bd1f:	31 f6                	xor    %esi,%esi
  40bd21:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  40bd28:	00 90 2b 41 00 
  40bd2d:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  40bd34:	00 00 00 00 00 
  40bd39:	48 89 07             	mov    %rax,(%rdi)
  40bd3c:	c5 f8 77             	vzeroupper 
  40bd3f:	e8 fc 75 ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40bd44:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40bd4b:	00 
  40bd4c:	48 c7 84 24 80 01 00 	movq   $0x412d28,0x180(%rsp)
  40bd53:	00 28 2d 41 00 
  40bd58:	48 c7 84 24 78 02 00 	movq   $0x412d50,0x278(%rsp)
  40bd5f:	00 50 2d 41 00 
  40bd64:	e8 67 75 ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40bd69:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  40bd70:	00 
  40bd71:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40bd78:	00 
  40bd79:	e8 c2 75 ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40bd7e:	ba 10 00 00 00       	mov    $0x10,%edx
  40bd83:	4c 89 e6             	mov    %r12,%rsi
  40bd86:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40bd8d:	00 
  40bd8e:	e8 dd 74 ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40bd93:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40bd9a:	00 
  40bd9b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bda2:	00 
  40bda3:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40bda7:	48 85 c0             	test   %rax,%rax
  40bdaa:	0f 84 74 15 00 00    	je     40d324 <_Z6windowid+0x1f04>
  40bdb0:	31 f6                	xor    %esi,%esi
  40bdb2:	e8 69 76 ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40bdb7:	ba 28 2d 41 00       	mov    $0x412d28,%edx
  40bdbc:	b8 a0 2c 41 00       	mov    $0x412ca0,%eax
  40bdc1:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
  40bdc6:	c4 e3 e9 22 c8 01    	vpinsrq $0x1,%rax,%xmm2,%xmm1
  40bdcc:	be 31 00 00 00       	mov    $0x31,%esi
  40bdd1:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bdd8:	00 
  40bdd9:	c5 f9 7f 4c 24 10    	vmovdqa %xmm1,0x10(%rsp)
  40bddf:	e8 4c 72 ff ff       	callq  403030 <_ZNSo3putEc@plt>
  40bde4:	c5 f9 6f 74 24 10    	vmovdqa 0x10(%rsp),%xmm6
  40bdea:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40bdf1:	00 
  40bdf2:	48 c7 84 24 78 02 00 	movq   $0x412d50,0x278(%rsp)
  40bdf9:	00 50 2d 41 00 
  40bdfe:	c5 f9 7f b4 24 80 01 	vmovdqa %xmm6,0x180(%rsp)
  40be05:	00 00 
  40be07:	e8 64 72 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40be0c:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  40be13:	00 
  40be14:	e8 67 76 ff ff       	callq  403480 <_ZNSt12__basic_fileIcED1Ev@plt>
  40be19:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  40be20:	00 
  40be21:	48 c7 84 24 88 01 00 	movq   $0x412bb0,0x188(%rsp)
  40be28:	00 b0 2b 41 00 
  40be2d:	e8 2e 75 ff ff       	callq  403360 <_ZNSt6localeD1Ev@plt>
  40be32:	48 8b 05 ef 6d 00 00 	mov    0x6def(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40be39:	48 8b 0d f0 6d 00 00 	mov    0x6df0(%rip),%rcx        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40be40:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40be47:	00 
  40be48:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40be4c:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40be53:	00 
  40be54:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  40be5b:	00 
  40be5c:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  40be63:	00 90 2b 41 00 
  40be68:	e8 93 72 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40be6d:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40be74:	00 
  40be75:	48 85 f6             	test   %rsi,%rsi
  40be78:	74 0d                	je     40be87 <_Z6windowid+0xa67>
  40be7a:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40be81:	00 
  40be82:	e8 19 72 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40be87:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40be8e:	00 
  40be8f:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40be96:	00 
  40be97:	48 39 c7             	cmp    %rax,%rdi
  40be9a:	74 11                	je     40bead <_Z6windowid+0xa8d>
  40be9c:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40bea3:	00 
  40bea4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bea8:	e8 03 74 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40bead:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  40beb4:	00 
  40beb5:	48 85 f6             	test   %rsi,%rsi
  40beb8:	74 0d                	je     40bec7 <_Z6windowid+0xaa7>
  40beba:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40bec1:	00 
  40bec2:	e8 d9 71 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40bec7:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  40bece:	00 
  40becf:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40bed6:	00 
  40bed7:	48 39 c7             	cmp    %rax,%rdi
  40beda:	74 11                	je     40beed <_Z6windowid+0xacd>
  40bedc:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  40bee3:	00 
  40bee4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bee8:	e8 c3 73 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40beed:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40bef4:	00 
  40bef5:	4c 39 ff             	cmp    %r15,%rdi
  40bef8:	74 11                	je     40bf0b <_Z6windowid+0xaeb>
  40befa:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40bf01:	00 
  40bf02:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bf06:	e8 a5 73 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40bf0b:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  40bf12:	00 
  40bf13:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40bf1a:	00 
  40bf1b:	48 39 c7             	cmp    %rax,%rdi
  40bf1e:	74 11                	je     40bf31 <_Z6windowid+0xb11>
  40bf20:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40bf27:	00 
  40bf28:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bf2c:	e8 7f 73 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40bf31:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40bf38:	00 
  40bf39:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40bf40:	00 
  40bf41:	48 39 c7             	cmp    %rax,%rdi
  40bf44:	74 11                	je     40bf57 <_Z6windowid+0xb37>
  40bf46:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  40bf4d:	00 
  40bf4e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40bf52:	e8 59 73 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40bf57:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40bf5c:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bf63:	00 
  40bf64:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40bf69:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40bf70:	00 
  40bf71:	4c 89 e8             	mov    %r13,%rax
  40bf74:	4c 01 e0             	add    %r12,%rax
  40bf77:	74 09                	je     40bf82 <_Z6windowid+0xb62>
  40bf79:	4d 85 ed             	test   %r13,%r13
  40bf7c:	0f 84 f2 15 00 00    	je     40d574 <_Z6windowid+0x2154>
  40bf82:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40bf89:	00 
  40bf8a:	49 83 fc 0f          	cmp    $0xf,%r12
  40bf8e:	0f 87 74 12 00 00    	ja     40d208 <_Z6windowid+0x1de8>
  40bf94:	49 83 fc 01          	cmp    $0x1,%r12
  40bf98:	0f 85 5c 11 00 00    	jne    40d0fa <_Z6windowid+0x1cda>
  40bf9e:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40bfa3:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40bfaa:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bfb1:	00 
  40bfb2:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40bfb9:	00 
  40bfba:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40bfbf:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40bfc6:	ff ff 3f 
  40bfc9:	48 2b 84 24 58 01 00 	sub    0x158(%rsp),%rax
  40bfd0:	00 
  40bfd1:	48 83 f8 05          	cmp    $0x5,%rax
  40bfd5:	0f 86 a3 15 00 00    	jbe    40d57e <_Z6windowid+0x215e>
  40bfdb:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40bfe0:	ba 06 00 00 00       	mov    $0x6,%edx
  40bfe5:	be 5a 00 41 00       	mov    $0x41005a,%esi
  40bfea:	e8 01 71 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40bfef:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40bff6:	00 
  40bff7:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40bffe:	00 
  40bfff:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c006:	00 
  40c007:	48 8d 8c 24 60 01 00 	lea    0x160(%rsp),%rcx
  40c00e:	00 
  40c00f:	48 39 c8             	cmp    %rcx,%rax
  40c012:	0f 84 59 13 00 00    	je     40d371 <_Z6windowid+0x1f51>
  40c018:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c01f:	00 
  40c020:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40c027:	00 
  40c028:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40c02f:	00 
  40c030:	48 8b 84 24 58 01 00 	mov    0x158(%rsp),%rax
  40c037:	00 
  40c038:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c03f:	00 
  40c040:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40c047:	00 
  40c048:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c04f:	00 
  40c050:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c057:	00 
  40c058:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
  40c05f:	00 00 00 00 00 
  40c064:	c6 84 24 60 01 00 00 	movb   $0x0,0x160(%rsp)
  40c06b:	00 
  40c06c:	e8 3f 70 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40c071:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c078:	00 
  40c079:	e8 c2 71 ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40c07e:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40c085:	00 
  40c086:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40c08d:	00 
  40c08e:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40c095:	00 
  40c096:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40c09d:	00 
  40c09e:	4c 89 e8             	mov    %r13,%rax
  40c0a1:	4c 01 e0             	add    %r12,%rax
  40c0a4:	74 09                	je     40c0af <_Z6windowid+0xc8f>
  40c0a6:	4d 85 ed             	test   %r13,%r13
  40c0a9:	0f 84 d9 14 00 00    	je     40d588 <_Z6windowid+0x2168>
  40c0af:	4c 89 a4 24 d0 00 00 	mov    %r12,0xd0(%rsp)
  40c0b6:	00 
  40c0b7:	49 83 fc 0f          	cmp    $0xf,%r12
  40c0bb:	0f 87 e7 0f 00 00    	ja     40d0a8 <_Z6windowid+0x1c88>
  40c0c1:	49 83 fc 01          	cmp    $0x1,%r12
  40c0c5:	0f 85 c7 0f 00 00    	jne    40d092 <_Z6windowid+0x1c72>
  40c0cb:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40c0d0:	88 84 24 30 01 00 00 	mov    %al,0x130(%rsp)
  40c0d7:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40c0de:	00 
  40c0df:	4c 89 a4 24 28 01 00 	mov    %r12,0x128(%rsp)
  40c0e6:	00 
  40c0e7:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c0ec:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40c0f3:	00 
  40c0f4:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40c0fb:	00 
  40c0fc:	e8 9f 73 ff ff       	callq  4034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40c101:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c108:	00 
  40c109:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40c110:	00 
  40c111:	e8 6a 6f ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40c116:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40c11d:	00 
  40c11e:	48 85 f6             	test   %rsi,%rsi
  40c121:	74 0d                	je     40c130 <_Z6windowid+0xd10>
  40c123:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c12a:	00 
  40c12b:	e8 70 6f ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c130:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40c137:	00 
  40c138:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c13f:	00 
  40c140:	48 39 c7             	cmp    %rax,%rdi
  40c143:	74 11                	je     40c156 <_Z6windowid+0xd36>
  40c145:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40c14c:	00 
  40c14d:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c151:	e8 5a 71 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c156:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40c15d:	00 
  40c15e:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c165:	00 
  40c166:	48 39 c7             	cmp    %rax,%rdi
  40c169:	74 11                	je     40c17c <_Z6windowid+0xd5c>
  40c16b:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40c172:	00 
  40c173:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c177:	e8 34 71 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c17c:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40c180:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c187:	00 
  40c188:	bf 01 00 00 00       	mov    $0x1,%edi
  40c18d:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40c194:	00 00 
  40c196:	e8 e5 70 ff ff       	callq  403280 <clock_gettime@plt>
  40c19b:	48 69 94 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rdx
  40c1a2:	00 00 ca 9a 3b 
  40c1a7:	48 b8 00 b0 8e f0 1b 	movabs $0x1bf08eb000,%rax
  40c1ae:	00 00 00 
  40c1b1:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40c1b8:	00 
  40c1b9:	48 01 d0             	add    %rdx,%rax
  40c1bc:	48 83 7c 24 48 00    	cmpq   $0x0,0x48(%rsp)
  40c1c2:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40c1c7:	0f 85 dd 08 00 00    	jne    40caaa <_Z6windowid+0x168a>
  40c1cd:	8b 44 24 28          	mov    0x28(%rsp),%eax
  40c1d1:	49 bd 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%r13
  40c1d8:	c5 6d 34 
  40c1db:	ff c8                	dec    %eax
  40c1dd:	89 44 24 40          	mov    %eax,0x40(%rsp)
  40c1e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40c1e8:	48 83 7c 24 28 00    	cmpq   $0x0,0x28(%rsp)
  40c1ee:	0f 8e b0 04 00 00    	jle    40c6a4 <_Z6windowid+0x1284>
  40c1f4:	8b 44 24 40          	mov    0x40(%rsp),%eax
  40c1f8:	c6 44 24 47 01       	movb   $0x1,0x47(%rsp)
  40c1fd:	48 ff c0             	inc    %rax
  40c200:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40c205:	41 be 01 00 00 00    	mov    $0x1,%r14d
  40c20b:	bb 01 00 00 00       	mov    $0x1,%ebx
  40c210:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40c217:	00 
  40c218:	89 de                	mov    %ebx,%esi
  40c21a:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40c21f:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40c226:	00 
  40c227:	44 89 74 24 48       	mov    %r14d,0x48(%rsp)
  40c22c:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  40c233:	00 
  40c234:	45 8d 66 ff          	lea    -0x1(%r14),%r12d
  40c238:	e8 b3 70 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40c23d:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
  40c244:	00 
  40c245:	ff cb                	dec    %ebx
  40c247:	41 83 fc 63          	cmp    $0x63,%r12d
  40c24b:	76 49                	jbe    40c296 <_Z6windowid+0xe76>
  40c24d:	0f 1f 00             	nopl   (%rax)
  40c250:	44 89 e2             	mov    %r12d,%edx
  40c253:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40c25a:	44 89 e0             	mov    %r12d,%eax
  40c25d:	48 c1 ea 25          	shr    $0x25,%rdx
  40c261:	6b f2 64             	imul   $0x64,%edx,%esi
  40c264:	29 f0                	sub    %esi,%eax
  40c266:	01 c0                	add    %eax,%eax
  40c268:	8d 78 01             	lea    0x1(%rax),%edi
  40c26b:	0f b6 bf 00 05 41 00 	movzbl 0x410500(%rdi),%edi
  40c272:	0f b6 80 00 05 41 00 	movzbl 0x410500(%rax),%eax
  40c279:	44 89 e6             	mov    %r12d,%esi
  40c27c:	41 89 d4             	mov    %edx,%r12d
  40c27f:	89 da                	mov    %ebx,%edx
  40c281:	40 88 3c 11          	mov    %dil,(%rcx,%rdx,1)
  40c285:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40c288:	88 04 11             	mov    %al,(%rcx,%rdx,1)
  40c28b:	83 eb 02             	sub    $0x2,%ebx
  40c28e:	81 fe 0f 27 00 00    	cmp    $0x270f,%esi
  40c294:	77 ba                	ja     40c250 <_Z6windowid+0xe30>
  40c296:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40c29b:	41 83 fc 09          	cmp    $0x9,%r12d
  40c29f:	76 1b                	jbe    40c2bc <_Z6windowid+0xe9c>
  40c2a1:	45 01 e4             	add    %r12d,%r12d
  40c2a4:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40c2a9:	0f b6 80 00 05 41 00 	movzbl 0x410500(%rax),%eax
  40c2b0:	88 41 01             	mov    %al,0x1(%rcx)
  40c2b3:	41 0f b6 84 24 00 05 	movzbl 0x410500(%r12),%eax
  40c2ba:	41 00 
  40c2bc:	88 01                	mov    %al,(%rcx)
  40c2be:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40c2c5:	00 
  40c2c6:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40c2cd:	00 
  40c2ce:	48 8b 5c 24 70       	mov    0x70(%rsp),%rbx
  40c2d3:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40c2d8:	48 89 d8             	mov    %rbx,%rax
  40c2db:	4c 01 e0             	add    %r12,%rax
  40c2de:	74 09                	je     40c2e9 <_Z6windowid+0xec9>
  40c2e0:	48 85 db             	test   %rbx,%rbx
  40c2e3:	0f 84 af 12 00 00    	je     40d598 <_Z6windowid+0x2178>
  40c2e9:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40c2f0:	00 
  40c2f1:	49 83 fc 0f          	cmp    $0xf,%r12
  40c2f5:	0f 87 95 08 00 00    	ja     40cb90 <_Z6windowid+0x1770>
  40c2fb:	49 83 fc 01          	cmp    $0x1,%r12
  40c2ff:	0f 85 4b 08 00 00    	jne    40cb50 <_Z6windowid+0x1730>
  40c305:	0f b6 03             	movzbl (%rbx),%eax
  40c308:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  40c30f:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40c316:	00 
  40c317:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  40c31e:	00 
  40c31f:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c324:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40c32b:	ff ff 3f 
  40c32e:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  40c335:	00 
  40c336:	48 83 f8 05          	cmp    $0x5,%rax
  40c33a:	0f 86 62 12 00 00    	jbe    40d5a2 <_Z6windowid+0x2182>
  40c340:	ba 06 00 00 00       	mov    $0x6,%edx
  40c345:	be 53 00 41 00       	mov    $0x410053,%esi
  40c34a:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40c351:	00 
  40c352:	e8 99 6d ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40c357:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
  40c35e:	00 
  40c35f:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  40c366:	00 
  40c367:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  40c36e:	00 
  40c36f:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  40c376:	00 
  40c377:	48 39 d9             	cmp    %rbx,%rcx
  40c37a:	bf 0f 00 00 00       	mov    $0xf,%edi
  40c37f:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  40c386:	00 00 
  40c388:	49 8d 04 10          	lea    (%r8,%rdx,1),%rax
  40c38c:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  40c393:	00 
  40c394:	48 39 f8             	cmp    %rdi,%rax
  40c397:	76 22                	jbe    40c3bb <_Z6windowid+0xf9b>
  40c399:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  40c3a0:	00 
  40c3a1:	48 39 de             	cmp    %rbx,%rsi
  40c3a4:	bf 0f 00 00 00       	mov    $0xf,%edi
  40c3a9:	48 0f 45 bc 24 c0 00 	cmovne 0xc0(%rsp),%rdi
  40c3b0:	00 00 
  40c3b2:	48 39 f8             	cmp    %rdi,%rax
  40c3b5:	0f 86 cd 08 00 00    	jbe    40cc88 <_Z6windowid+0x1868>
  40c3bb:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40c3c2:	00 
  40c3c3:	e8 28 6d ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40c3c8:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c3cf:	00 
  40c3d0:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40c3d4:	48 8b 08             	mov    (%rax),%rcx
  40c3d7:	48 39 d1             	cmp    %rdx,%rcx
  40c3da:	0f 84 70 08 00 00    	je     40cc50 <_Z6windowid+0x1830>
  40c3e0:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  40c3e7:	00 
  40c3e8:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40c3ec:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  40c3f3:	00 
  40c3f4:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40c3f8:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  40c3ff:	00 
  40c400:	48 89 10             	mov    %rdx,(%rax)
  40c403:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40c407:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40c40e:	00 
  40c40f:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c416:	00 
  40c417:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c41e:	00 
  40c41f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40c426:	00 
  40c427:	4c 39 f8             	cmp    %r15,%rax
  40c42a:	0f 84 08 08 00 00    	je     40cc38 <_Z6windowid+0x1818>
  40c430:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c437:	00 
  40c438:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40c43f:	00 
  40c440:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40c447:	00 
  40c448:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40c44f:	00 
  40c450:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40c457:	00 
  40c458:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  40c45f:	00 
  40c460:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c467:	00 
  40c468:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40c46f:	00 00 00 00 00 
  40c474:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40c47b:	00 
  40c47c:	e8 2f 6c ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40c481:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c486:	e8 b5 6d ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40c48b:	48 8b 9c 24 f0 00 00 	mov    0xf0(%rsp),%rbx
  40c492:	00 
  40c493:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c49a:	00 
  40c49b:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40c4a2:	00 
  40c4a3:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c4aa:	00 
  40c4ab:	48 89 d8             	mov    %rbx,%rax
  40c4ae:	4c 01 e0             	add    %r12,%rax
  40c4b1:	74 09                	je     40c4bc <_Z6windowid+0x109c>
  40c4b3:	48 85 db             	test   %rbx,%rbx
  40c4b6:	0f 84 f0 10 00 00    	je     40d5ac <_Z6windowid+0x218c>
  40c4bc:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  40c4c1:	49 83 fc 0f          	cmp    $0xf,%r12
  40c4c5:	0f 87 1d 07 00 00    	ja     40cbe8 <_Z6windowid+0x17c8>
  40c4cb:	49 83 fc 01          	cmp    $0x1,%r12
  40c4cf:	0f 85 9b 06 00 00    	jne    40cb70 <_Z6windowid+0x1750>
  40c4d5:	0f b6 03             	movzbl (%rbx),%eax
  40c4d8:	88 84 24 90 01 00 00 	mov    %al,0x190(%rsp)
  40c4df:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c4e6:	00 
  40c4e7:	4c 89 a4 24 88 01 00 	mov    %r12,0x188(%rsp)
  40c4ee:	00 
  40c4ef:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c4f4:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40c4fb:	00 
  40c4fc:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c503:	00 
  40c504:	e8 97 6f ff ff       	callq  4034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40c509:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40c50e:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c515:	00 
  40c516:	e8 65 6b ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40c51b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c522:	00 
  40c523:	e8 e8 6b ff ff       	callq  403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  40c528:	ff c0                	inc    %eax
  40c52a:	3c 01                	cmp    $0x1,%al
  40c52c:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40c533:	00 
  40c534:	0f 97 c0             	seta   %al
  40c537:	20 44 24 47          	and    %al,0x47(%rsp)
  40c53b:	48 85 f6             	test   %rsi,%rsi
  40c53e:	74 0d                	je     40c54d <_Z6windowid+0x112d>
  40c540:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c547:	00 
  40c548:	e8 53 6b ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c54d:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40c554:	00 
  40c555:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c55c:	00 
  40c55d:	48 39 c7             	cmp    %rax,%rdi
  40c560:	74 11                	je     40c573 <_Z6windowid+0x1153>
  40c562:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40c569:	00 
  40c56a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c56e:	e8 3d 6d ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c573:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40c57a:	00 
  40c57b:	48 85 f6             	test   %rsi,%rsi
  40c57e:	74 0d                	je     40c58d <_Z6windowid+0x116d>
  40c580:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40c587:	00 
  40c588:	e8 13 6b ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c58d:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40c594:	00 
  40c595:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c59c:	00 
  40c59d:	48 39 c7             	cmp    %rax,%rdi
  40c5a0:	74 11                	je     40c5b3 <_Z6windowid+0x1193>
  40c5a2:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40c5a9:	00 
  40c5aa:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c5ae:	e8 fd 6c ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c5b3:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40c5ba:	00 
  40c5bb:	4c 39 ff             	cmp    %r15,%rdi
  40c5be:	74 11                	je     40c5d1 <_Z6windowid+0x11b1>
  40c5c0:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40c5c7:	00 
  40c5c8:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c5cc:	e8 df 6c ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c5d1:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  40c5d8:	00 
  40c5d9:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40c5e0:	00 
  40c5e1:	48 39 c7             	cmp    %rax,%rdi
  40c5e4:	74 11                	je     40c5f7 <_Z6windowid+0x11d7>
  40c5e6:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40c5ed:	00 
  40c5ee:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c5f2:	e8 b9 6c ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c5f7:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40c5fe:	00 
  40c5ff:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40c606:	00 
  40c607:	48 39 c7             	cmp    %rax,%rdi
  40c60a:	74 11                	je     40c61d <_Z6windowid+0x11fd>
  40c60c:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  40c613:	00 
  40c614:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c618:	e8 93 6c ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c61d:	4c 39 74 24 38       	cmp    %r14,0x38(%rsp)
  40c622:	0f 84 b0 06 00 00    	je     40ccd8 <_Z6windowid+0x18b8>
  40c628:	49 83 fe 09          	cmp    $0x9,%r14
  40c62c:	0f 86 84 0f 00 00    	jbe    40d5b6 <_Z6windowid+0x2196>
  40c632:	8b 44 24 48          	mov    0x48(%rsp),%eax
  40c636:	83 f8 63             	cmp    $0x63,%eax
  40c639:	0f 86 f7 09 00 00    	jbe    40d036 <_Z6windowid+0x1c16>
  40c63f:	3d e7 03 00 00       	cmp    $0x3e7,%eax
  40c644:	0f 86 06 0a 00 00    	jbe    40d050 <_Z6windowid+0x1c30>
  40c64a:	3d 0f 27 00 00       	cmp    $0x270f,%eax
  40c64f:	0f 86 ee 09 00 00    	jbe    40d043 <_Z6windowid+0x1c23>
  40c655:	4c 89 f2             	mov    %r14,%rdx
  40c658:	bb 01 00 00 00       	mov    $0x1,%ebx
  40c65d:	eb 22                	jmp    40c681 <_Z6windowid+0x1261>
  40c65f:	90                   	nop
  40c660:	83 fa 63             	cmp    $0x63,%edx
  40c663:	0f 86 ff 05 00 00    	jbe    40cc68 <_Z6windowid+0x1848>
  40c669:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40c66f:	0f 86 03 06 00 00    	jbe    40cc78 <_Z6windowid+0x1858>
  40c675:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40c67b:	0f 86 47 06 00 00    	jbe    40ccc8 <_Z6windowid+0x18a8>
  40c681:	48 89 d0             	mov    %rdx,%rax
  40c684:	48 89 d1             	mov    %rdx,%rcx
  40c687:	49 f7 e5             	mul    %r13
  40c68a:	89 d8                	mov    %ebx,%eax
  40c68c:	83 c3 04             	add    $0x4,%ebx
  40c68f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40c693:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40c69a:	77 c4                	ja     40c660 <_Z6windowid+0x1240>
  40c69c:	49 ff c6             	inc    %r14
  40c69f:	e9 6c fb ff ff       	jmpq   40c210 <_Z6windowid+0xdf0>
  40c6a4:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40c6a9:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40c6ae:	4c 89 e8             	mov    %r13,%rax
  40c6b1:	4c 01 e0             	add    %r12,%rax
  40c6b4:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c6bb:	00 
  40c6bc:	74 09                	je     40c6c7 <_Z6windowid+0x12a7>
  40c6be:	4d 85 ed             	test   %r13,%r13
  40c6c1:	0f 84 85 0f 00 00    	je     40d64c <_Z6windowid+0x222c>
  40c6c7:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40c6ce:	00 
  40c6cf:	49 83 fc 0f          	cmp    $0xf,%r12
  40c6d3:	0f 87 81 0d 00 00    	ja     40d45a <_Z6windowid+0x203a>
  40c6d9:	49 83 fc 01          	cmp    $0x1,%r12
  40c6dd:	0f 84 b5 0c 00 00    	je     40d398 <_Z6windowid+0x1f78>
  40c6e3:	4d 85 e4             	test   %r12,%r12
  40c6e6:	0f 85 55 0e 00 00    	jne    40d541 <_Z6windowid+0x2121>
  40c6ec:	4c 89 f8             	mov    %r15,%rax
  40c6ef:	4c 89 a4 24 d8 00 00 	mov    %r12,0xd8(%rsp)
  40c6f6:	00 
  40c6f7:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c6fc:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40c703:	ff ff 3f 
  40c706:	48 2b 84 24 d8 00 00 	sub    0xd8(%rsp),%rax
  40c70d:	00 
  40c70e:	48 83 f8 03          	cmp    $0x3,%rax
  40c712:	0f 86 1f 0e 00 00    	jbe    40d537 <_Z6windowid+0x2117>
  40c718:	ba 04 00 00 00       	mov    $0x4,%edx
  40c71d:	be 7f 00 41 00       	mov    $0x41007f,%esi
  40c722:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  40c729:	00 
  40c72a:	e8 c1 69 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40c72f:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c736:	00 
  40c737:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c73e:	00 
  40c73f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40c746:	00 
  40c747:	4c 39 f8             	cmp    %r15,%rax
  40c74a:	0f 84 6c 0d 00 00    	je     40d4bc <_Z6windowid+0x209c>
  40c750:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c757:	00 
  40c758:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40c75f:	00 
  40c760:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40c767:	00 
  40c768:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40c76f:	00 
  40c770:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c777:	00 
  40c778:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40c77f:	00 
  40c780:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40c787:	00 
  40c788:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40c78f:	00 00 00 00 00 
  40c794:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40c79b:	00 
  40c79c:	e8 0f 69 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40c7a1:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c7a8:	00 
  40c7a9:	e8 92 6a ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40c7ae:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40c7b5:	00 
  40c7b6:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c7bd:	00 
  40c7be:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40c7c5:	00 
  40c7c6:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c7cd:	00 
  40c7ce:	4c 89 e8             	mov    %r13,%rax
  40c7d1:	4c 01 e0             	add    %r12,%rax
  40c7d4:	74 09                	je     40c7df <_Z6windowid+0x13bf>
  40c7d6:	4d 85 ed             	test   %r13,%r13
  40c7d9:	0f 84 4e 0d 00 00    	je     40d52d <_Z6windowid+0x210d>
  40c7df:	4c 89 a4 24 b0 00 00 	mov    %r12,0xb0(%rsp)
  40c7e6:	00 
  40c7e7:	49 83 fc 0f          	cmp    $0xf,%r12
  40c7eb:	0f 87 1a 0c 00 00    	ja     40d40b <_Z6windowid+0x1feb>
  40c7f1:	49 83 fc 01          	cmp    $0x1,%r12
  40c7f5:	0f 85 fa 0b 00 00    	jne    40d3f5 <_Z6windowid+0x1fd5>
  40c7fb:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40c800:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40c807:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c80e:	00 
  40c80f:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40c816:	00 
  40c817:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40c81c:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40c823:	00 
  40c824:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40c82b:	00 
  40c82c:	e8 6f 6c ff ff       	callq  4034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40c831:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c836:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c83d:	00 
  40c83e:	e8 3d 68 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40c843:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40c84a:	00 
  40c84b:	48 85 f6             	test   %rsi,%rsi
  40c84e:	74 0d                	je     40c85d <_Z6windowid+0x143d>
  40c850:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40c857:	00 
  40c858:	e8 43 68 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c85d:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40c864:	00 
  40c865:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40c86c:	00 
  40c86d:	48 39 c7             	cmp    %rax,%rdi
  40c870:	74 11                	je     40c883 <_Z6windowid+0x1463>
  40c872:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40c879:	00 
  40c87a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c87e:	e8 2d 6a ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c883:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40c88a:	00 
  40c88b:	4c 39 ff             	cmp    %r15,%rdi
  40c88e:	74 11                	je     40c8a1 <_Z6windowid+0x1481>
  40c890:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40c897:	00 
  40c898:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40c89c:	e8 0f 6a ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c8a1:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40c8a8:	00 
  40c8a9:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40c8b0:	00 
  40c8b1:	e8 1a 68 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40c8b6:	31 d2                	xor    %edx,%edx
  40c8b8:	66 89 94 24 58 03 00 	mov    %dx,0x358(%rsp)
  40c8bf:	00 
  40c8c0:	48 8b 05 61 63 00 00 	mov    0x6361(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40c8c7:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40c8cb:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  40c8d2:	00 00 
  40c8d4:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c8db:	00 
  40c8dc:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c8e3:	00 
  40c8e4:	48 03 78 e8          	add    -0x18(%rax),%rdi
  40c8e8:	48 8b 05 41 63 00 00 	mov    0x6341(%rip),%rax        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40c8ef:	31 f6                	xor    %esi,%esi
  40c8f1:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  40c8f8:	00 90 2b 41 00 
  40c8fd:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  40c904:	00 00 00 00 00 
  40c909:	48 89 07             	mov    %rax,(%rdi)
  40c90c:	c5 f8 77             	vzeroupper 
  40c90f:	e8 2c 6a ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40c914:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40c91b:	00 
  40c91c:	48 c7 84 24 80 01 00 	movq   $0x412d28,0x180(%rsp)
  40c923:	00 28 2d 41 00 
  40c928:	48 c7 84 24 78 02 00 	movq   $0x412d50,0x278(%rsp)
  40c92f:	00 50 2d 41 00 
  40c934:	e8 97 69 ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40c939:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  40c940:	00 
  40c941:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40c948:	00 
  40c949:	e8 f2 69 ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40c94e:	ba 10 00 00 00       	mov    $0x10,%edx
  40c953:	4c 89 e6             	mov    %r12,%rsi
  40c956:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40c95d:	00 
  40c95e:	e8 0d 69 ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40c963:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40c96a:	00 
  40c96b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c972:	00 
  40c973:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40c977:	48 85 c0             	test   %rax,%rax
  40c97a:	0f 84 2c 0b 00 00    	je     40d4ac <_Z6windowid+0x208c>
  40c980:	31 f6                	xor    %esi,%esi
  40c982:	e8 99 6a ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40c987:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40c98b:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  40c992:	00 
  40c993:	bf 01 00 00 00       	mov    $0x1,%edi
  40c998:	c5 f9 7f 84 24 d0 00 	vmovdqa %xmm0,0xd0(%rsp)
  40c99f:	00 00 
  40c9a1:	e8 da 68 ff ff       	callq  403280 <clock_gettime@plt>
  40c9a6:	48 69 94 24 d0 00 00 	imul   $0x3b9aca00,0xd0(%rsp),%rdx
  40c9ad:	00 00 ca 9a 3b 
  40c9b2:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40c9b9:	00 
  40c9ba:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c9c1:	00 
  40c9c2:	48 8d b4 02 80 b2 e6 	lea    0xee6b280(%rdx,%rax,1),%rsi
  40c9c9:	0e 
  40c9ca:	e8 01 68 ff ff       	callq  4031d0 <_ZNSo9_M_insertIyEERSoT_@plt>
  40c9cf:	c5 f9 6f 7c 24 10    	vmovdqa 0x10(%rsp),%xmm7
  40c9d5:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40c9dc:	00 
  40c9dd:	48 c7 84 24 78 02 00 	movq   $0x412d50,0x278(%rsp)
  40c9e4:	00 50 2d 41 00 
  40c9e9:	c5 f9 7f bc 24 80 01 	vmovdqa %xmm7,0x180(%rsp)
  40c9f0:	00 00 
  40c9f2:	e8 79 66 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40c9f7:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  40c9fe:	00 
  40c9ff:	e8 7c 6a ff ff       	callq  403480 <_ZNSt12__basic_fileIcED1Ev@plt>
  40ca04:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  40ca0b:	00 
  40ca0c:	48 c7 84 24 88 01 00 	movq   $0x412bb0,0x188(%rsp)
  40ca13:	00 b0 2b 41 00 
  40ca18:	e8 43 69 ff ff       	callq  403360 <_ZNSt6localeD1Ev@plt>
  40ca1d:	48 8b 05 04 62 00 00 	mov    0x6204(%rip),%rax        # 412c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40ca24:	48 8b 0d 05 62 00 00 	mov    0x6205(%rip),%rcx        # 412c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40ca2b:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40ca32:	00 
  40ca33:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40ca37:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40ca3e:	00 
  40ca3f:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  40ca46:	00 
  40ca47:	48 c7 84 24 78 02 00 	movq   $0x412b90,0x278(%rsp)
  40ca4e:	00 90 2b 41 00 
  40ca53:	e8 a8 66 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40ca58:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40ca5d:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  40ca64:	00 
  40ca65:	e8 46 67 ff ff       	callq  4031b0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@plt>
  40ca6a:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40ca71:	00 
  40ca72:	48 85 f6             	test   %rsi,%rsi
  40ca75:	74 0d                	je     40ca84 <_Z6windowid+0x1664>
  40ca77:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40ca7e:	00 
  40ca7f:	e8 1c 66 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40ca84:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40ca8b:	00 
  40ca8c:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40ca93:	00 
  40ca94:	48 39 c7             	cmp    %rax,%rdi
  40ca97:	74 11                	je     40caaa <_Z6windowid+0x168a>
  40ca99:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40caa0:	00 
  40caa1:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40caa5:	e8 06 68 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40caaa:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40cab1:	00 
  40cab2:	e8 59 66 ff ff       	callq  403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  40cab7:	ff c0                	inc    %eax
  40cab9:	3c 01                	cmp    $0x1,%al
  40cabb:	0f 87 a7 02 00 00    	ja     40cd68 <_Z6windowid+0x1948>
  40cac1:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40cac5:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cacc:	00 
  40cacd:	bf 01 00 00 00       	mov    $0x1,%edi
  40cad2:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40cad9:	00 00 
  40cadb:	e8 a0 67 ff ff       	callq  403280 <clock_gettime@plt>
  40cae0:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40cae7:	00 00 ca 9a 3b 
  40caec:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40caf3:	00 
  40caf4:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  40caf9:	0f 82 71 71 ff ff    	jb     403c70 <_Z6windowid.cold+0x75e>
  40caff:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40cb06:	00 00 00 00 00 
  40cb0b:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  40cb12:	00 80 84 1e 00 
  40cb17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40cb1e:	00 00 
  40cb20:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cb27:	00 
  40cb28:	48 89 f7             	mov    %rsi,%rdi
  40cb2b:	e8 b0 65 ff ff       	callq  4030e0 <nanosleep@plt>
  40cb30:	83 f8 ff             	cmp    $0xffffffff,%eax
  40cb33:	0f 85 71 ff ff ff    	jne    40caaa <_Z6windowid+0x168a>
  40cb39:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40cb3e:	83 38 04             	cmpl   $0x4,(%rax)
  40cb41:	74 dd                	je     40cb20 <_Z6windowid+0x1700>
  40cb43:	e9 62 ff ff ff       	jmpq   40caaa <_Z6windowid+0x168a>
  40cb48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40cb4f:	00 
  40cb50:	4d 85 e4             	test   %r12,%r12
  40cb53:	0f 85 67 0a 00 00    	jne    40d5c0 <_Z6windowid+0x21a0>
  40cb59:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40cb60:	00 
  40cb61:	e9 b1 f7 ff ff       	jmpq   40c317 <_Z6windowid+0xef7>
  40cb66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40cb6d:	00 00 00 
  40cb70:	4d 85 e4             	test   %r12,%r12
  40cb73:	0f 85 54 0a 00 00    	jne    40d5cd <_Z6windowid+0x21ad>
  40cb79:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40cb80:	00 
  40cb81:	e9 61 f9 ff ff       	jmpq   40c4e7 <_Z6windowid+0x10c7>
  40cb86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40cb8d:	00 00 00 
  40cb90:	31 d2                	xor    %edx,%edx
  40cb92:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cb99:	00 
  40cb9a:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40cba1:	00 
  40cba2:	e8 b9 68 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40cba7:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40cbae:	00 
  40cbaf:	48 89 c7             	mov    %rax,%rdi
  40cbb2:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40cbb9:	00 
  40cbba:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  40cbc1:	00 
  40cbc2:	4c 89 e2             	mov    %r12,%rdx
  40cbc5:	48 89 de             	mov    %rbx,%rsi
  40cbc8:	e8 83 66 ff ff       	callq  403250 <memcpy@plt>
  40cbcd:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40cbd4:	00 
  40cbd5:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  40cbdc:	00 
  40cbdd:	e9 35 f7 ff ff       	jmpq   40c317 <_Z6windowid+0xef7>
  40cbe2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40cbe8:	31 d2                	xor    %edx,%edx
  40cbea:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
  40cbef:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40cbf6:	00 
  40cbf7:	e8 64 68 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40cbfc:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40cc03:	00 
  40cc04:	48 89 c7             	mov    %rax,%rdi
  40cc07:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  40cc0c:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40cc13:	00 
  40cc14:	4c 89 e2             	mov    %r12,%rdx
  40cc17:	48 89 de             	mov    %rbx,%rsi
  40cc1a:	e8 31 66 ff ff       	callq  403250 <memcpy@plt>
  40cc1f:	4c 8b 64 24 68       	mov    0x68(%rsp),%r12
  40cc24:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40cc2b:	00 
  40cc2c:	e9 b6 f8 ff ff       	jmpq   40c4e7 <_Z6windowid+0x10c7>
  40cc31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40cc38:	c5 f9 6f 9c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm3
  40cc3f:	00 00 
  40cc41:	c5 f9 7f 9c 24 60 01 	vmovdqa %xmm3,0x160(%rsp)
  40cc48:	00 00 
  40cc4a:	e9 f9 f7 ff ff       	jmpq   40c448 <_Z6windowid+0x1028>
  40cc4f:	90                   	nop
  40cc50:	c5 fa 6f 60 10       	vmovdqu 0x10(%rax),%xmm4
  40cc55:	c5 f9 7f a4 24 e0 00 	vmovdqa %xmm4,0xe0(%rsp)
  40cc5c:	00 00 
  40cc5e:	e9 91 f7 ff ff       	jmpq   40c3f4 <_Z6windowid+0xfd4>
  40cc63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40cc68:	8d 58 05             	lea    0x5(%rax),%ebx
  40cc6b:	49 ff c6             	inc    %r14
  40cc6e:	e9 9d f5 ff ff       	jmpq   40c210 <_Z6windowid+0xdf0>
  40cc73:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40cc78:	8d 58 06             	lea    0x6(%rax),%ebx
  40cc7b:	49 ff c6             	inc    %r14
  40cc7e:	e9 8d f5 ff ff       	jmpq   40c210 <_Z6windowid+0xdf0>
  40cc83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40cc88:	31 d2                	xor    %edx,%edx
  40cc8a:	31 f6                	xor    %esi,%esi
  40cc8c:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40cc93:	00 
  40cc94:	e8 27 67 ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40cc99:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40cca0:	00 
  40cca1:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40cca5:	48 8b 08             	mov    (%rax),%rcx
  40cca8:	48 39 d1             	cmp    %rdx,%rcx
  40ccab:	0f 85 2f f7 ff ff    	jne    40c3e0 <_Z6windowid+0xfc0>
  40ccb1:	c5 fa 6f 68 10       	vmovdqu 0x10(%rax),%xmm5
  40ccb6:	c5 f9 7f ac 24 e0 00 	vmovdqa %xmm5,0xe0(%rsp)
  40ccbd:	00 00 
  40ccbf:	e9 30 f7 ff ff       	jmpq   40c3f4 <_Z6windowid+0xfd4>
  40ccc4:	0f 1f 40 00          	nopl   0x0(%rax)
  40ccc8:	8d 58 07             	lea    0x7(%rax),%ebx
  40cccb:	49 ff c6             	inc    %r14
  40ccce:	e9 3d f5 ff ff       	jmpq   40c210 <_Z6windowid+0xdf0>
  40ccd3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40ccd8:	80 7c 24 47 00       	cmpb   $0x0,0x47(%rsp)
  40ccdd:	0f 85 c1 f9 ff ff    	jne    40c6a4 <_Z6windowid+0x1284>
  40cce3:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40cce7:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40ccee:	00 
  40ccef:	bf 01 00 00 00       	mov    $0x1,%edi
  40ccf4:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40ccfb:	00 00 
  40ccfd:	e8 7e 65 ff ff       	callq  403280 <clock_gettime@plt>
  40cd02:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40cd09:	00 00 ca 9a 3b 
  40cd0e:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40cd15:	00 
  40cd16:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  40cd1b:	0f 82 fd 6d ff ff    	jb     403b1e <_Z6windowid.cold+0x60c>
  40cd21:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40cd28:	00 00 00 00 00 
  40cd2d:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  40cd34:	00 80 84 1e 00 
  40cd39:	eb 13                	jmp    40cd4e <_Z6windowid+0x192e>
  40cd3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40cd40:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40cd45:	83 38 04             	cmpl   $0x4,(%rax)
  40cd48:	0f 85 9a f4 ff ff    	jne    40c1e8 <_Z6windowid+0xdc8>
  40cd4e:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cd55:	00 
  40cd56:	48 89 f7             	mov    %rsi,%rdi
  40cd59:	e8 82 63 ff ff       	callq  4030e0 <nanosleep@plt>
  40cd5e:	83 f8 ff             	cmp    $0xffffffff,%eax
  40cd61:	74 dd                	je     40cd40 <_Z6windowid+0x1920>
  40cd63:	e9 80 f4 ff ff       	jmpq   40c1e8 <_Z6windowid+0xdc8>
  40cd68:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40cd6f:	00 
  40cd70:	4c 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13
  40cd77:	00 
  40cd78:	e8 53 63 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40cd7d:	31 c0                	xor    %eax,%eax
  40cd7f:	66 89 84 24 60 03 00 	mov    %ax,0x360(%rsp)
  40cd86:	00 
  40cd87:	48 8b 1d ea 5f 00 00 	mov    0x5fea(%rip),%rbx        # 412d78 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40cd8e:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40cd92:	c5 fe 7f 84 24 68 03 	vmovdqu %ymm0,0x368(%rsp)
  40cd99:	00 00 
  40cd9b:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  40cd9f:	4c 8b 25 da 5f 00 00 	mov    0x5fda(%rip),%r12        # 412d80 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40cda6:	48 c7 84 24 80 02 00 	movq   $0x412b90,0x280(%rsp)
  40cdad:	00 90 2b 41 00 
  40cdb2:	48 c7 84 24 58 03 00 	movq   $0x0,0x358(%rsp)
  40cdb9:	00 00 00 00 00 
  40cdbe:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  40cdc5:	00 
  40cdc6:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  40cdcd:	00 
  40cdce:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  40cdd5:	00 00 00 00 00 
  40cdda:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40cde1:	00 
  40cde2:	31 f6                	xor    %esi,%esi
  40cde4:	48 03 7b e8          	add    -0x18(%rbx),%rdi
  40cde8:	c5 f8 77             	vzeroupper 
  40cdeb:	e8 50 65 ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40cdf0:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40cdf7:	00 
  40cdf8:	48 c7 84 24 80 01 00 	movq   $0x412c58,0x180(%rsp)
  40cdff:	00 58 2c 41 00 
  40ce04:	48 c7 84 24 80 02 00 	movq   $0x412c80,0x280(%rsp)
  40ce0b:	00 80 2c 41 00 
  40ce10:	e8 bb 64 ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40ce15:	48 8d b4 24 90 01 00 	lea    0x190(%rsp),%rsi
  40ce1c:	00 
  40ce1d:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40ce24:	00 
  40ce25:	e8 16 65 ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40ce2a:	ba 08 00 00 00       	mov    $0x8,%edx
  40ce2f:	4c 89 ee             	mov    %r13,%rsi
  40ce32:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40ce39:	00 
  40ce3a:	e8 31 64 ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40ce3f:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40ce46:	00 
  40ce47:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40ce4e:	00 
  40ce4f:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40ce53:	48 85 c0             	test   %rax,%rax
  40ce56:	0f 84 2c 05 00 00    	je     40d388 <_Z6windowid+0x1f68>
  40ce5c:	31 f6                	xor    %esi,%esi
  40ce5e:	e8 bd 65 ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40ce63:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40ce68:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40ce6f:	00 
  40ce70:	e8 fb 62 ff ff       	callq  403170 <_ZNSi10_M_extractImEERSiRT_@plt>
  40ce75:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40ce7c:	00 
  40ce7d:	48 c7 84 24 80 01 00 	movq   $0x412c58,0x180(%rsp)
  40ce84:	00 58 2c 41 00 
  40ce89:	48 c7 84 24 80 02 00 	movq   $0x412c80,0x280(%rsp)
  40ce90:	00 80 2c 41 00 
  40ce95:	48 c7 84 24 90 01 00 	movq   $0x412ca0,0x190(%rsp)
  40ce9c:	00 a0 2c 41 00 
  40cea1:	e8 ca 61 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40cea6:	48 8d bc 24 f8 01 00 	lea    0x1f8(%rsp),%rdi
  40cead:	00 
  40ceae:	e8 cd 65 ff ff       	callq  403480 <_ZNSt12__basic_fileIcED1Ev@plt>
  40ceb3:	48 8d bc 24 c8 01 00 	lea    0x1c8(%rsp),%rdi
  40ceba:	00 
  40cebb:	48 c7 84 24 90 01 00 	movq   $0x412bb0,0x190(%rsp)
  40cec2:	00 b0 2b 41 00 
  40cec7:	e8 94 64 ff ff       	callq  403360 <_ZNSt6localeD1Ev@plt>
  40cecc:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  40ced0:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40ced7:	00 
  40ced8:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  40cedf:	00 
  40cee0:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  40cee7:	00 
  40cee8:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  40ceef:	00 00 00 00 00 
  40cef4:	48 c7 84 24 80 02 00 	movq   $0x412b90,0x280(%rsp)
  40cefb:	00 90 2b 41 00 
  40cf00:	e8 fb 61 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40cf05:	0f 1f 00             	nopl   (%rax)
  40cf08:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40cf0c:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cf13:	00 
  40cf14:	bf 01 00 00 00       	mov    $0x1,%edi
  40cf19:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40cf20:	00 00 
  40cf22:	e8 59 63 ff ff       	callq  403280 <clock_gettime@plt>
  40cf27:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40cf2e:	00 00 ca 9a 3b 
  40cf33:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40cf3a:	00 
  40cf3b:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40cf42:	00 
  40cf43:	49 39 c4             	cmp    %rax,%r12
  40cf46:	76 39                	jbe    40cf81 <_Z6windowid+0x1b61>
  40cf48:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40cf4f:	00 00 00 00 00 
  40cf54:	48 c7 84 24 88 01 00 	movq   $0x4e20,0x188(%rsp)
  40cf5b:	00 20 4e 00 00 
  40cf60:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40cf67:	00 
  40cf68:	48 89 f7             	mov    %rsi,%rdi
  40cf6b:	e8 70 61 ff ff       	callq  4030e0 <nanosleep@plt>
  40cf70:	83 f8 ff             	cmp    $0xffffffff,%eax
  40cf73:	75 93                	jne    40cf08 <_Z6windowid+0x1ae8>
  40cf75:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40cf7a:	83 38 04             	cmpl   $0x4,(%rax)
  40cf7d:	74 e1                	je     40cf60 <_Z6windowid+0x1b40>
  40cf7f:	eb 87                	jmp    40cf08 <_Z6windowid+0x1ae8>
  40cf81:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  40cf88:	00 
  40cf89:	48 85 f6             	test   %rsi,%rsi
  40cf8c:	74 0d                	je     40cf9b <_Z6windowid+0x1b7b>
  40cf8e:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40cf95:	00 
  40cf96:	e8 05 61 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40cf9b:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  40cfa2:	00 
  40cfa3:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40cfaa:	00 
  40cfab:	48 39 c7             	cmp    %rax,%rdi
  40cfae:	74 11                	je     40cfc1 <_Z6windowid+0x1ba1>
  40cfb0:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  40cfb7:	00 
  40cfb8:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40cfbc:	e8 ef 62 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40cfc1:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  40cfc6:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  40cfcd:	00 
  40cfce:	48 39 c7             	cmp    %rax,%rdi
  40cfd1:	74 11                	je     40cfe4 <_Z6windowid+0x1bc4>
  40cfd3:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  40cfda:	00 
  40cfdb:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40cfdf:	e8 cc 62 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40cfe4:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
  40cfeb:	00 
  40cfec:	48 85 f6             	test   %rsi,%rsi
  40cfef:	74 0d                	je     40cffe <_Z6windowid+0x1bde>
  40cff1:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  40cff8:	00 
  40cff9:	e8 a2 60 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40cffe:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  40d005:	00 
  40d006:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  40d00d:	00 
  40d00e:	48 39 c7             	cmp    %rax,%rdi
  40d011:	74 11                	je     40d024 <_Z6windowid+0x1c04>
  40d013:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  40d01a:	00 
  40d01b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40d01f:	e8 8c 62 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40d024:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  40d028:	5b                   	pop    %rbx
  40d029:	4c 89 e0             	mov    %r12,%rax
  40d02c:	41 5c                	pop    %r12
  40d02e:	41 5d                	pop    %r13
  40d030:	41 5e                	pop    %r14
  40d032:	41 5f                	pop    %r15
  40d034:	5d                   	pop    %rbp
  40d035:	c3                   	retq   
  40d036:	bb 02 00 00 00       	mov    $0x2,%ebx
  40d03b:	49 ff c6             	inc    %r14
  40d03e:	e9 cd f1 ff ff       	jmpq   40c210 <_Z6windowid+0xdf0>
  40d043:	bb 04 00 00 00       	mov    $0x4,%ebx
  40d048:	49 ff c6             	inc    %r14
  40d04b:	e9 c0 f1 ff ff       	jmpq   40c210 <_Z6windowid+0xdf0>
  40d050:	bb 03 00 00 00       	mov    $0x3,%ebx
  40d055:	49 ff c6             	inc    %r14
  40d058:	e9 b3 f1 ff ff       	jmpq   40c210 <_Z6windowid+0xdf0>
  40d05d:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d061:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40d068:	00 
  40d069:	bf 01 00 00 00       	mov    $0x1,%edi
  40d06e:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40d075:	00 00 
  40d077:	e8 04 62 ff ff       	callq  403280 <clock_gettime@plt>
  40d07c:	4c 69 a4 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%r12
  40d083:	00 00 ca 9a 3b 
  40d088:	4c 03 a4 24 88 01 00 	add    0x188(%rsp),%r12
  40d08f:	00 
  40d090:	eb 92                	jmp    40d024 <_Z6windowid+0x1c04>
  40d092:	4d 85 e4             	test   %r12,%r12
  40d095:	0f 85 3f 05 00 00    	jne    40d5da <_Z6windowid+0x21ba>
  40d09b:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40d0a2:	00 
  40d0a3:	e9 37 f0 ff ff       	jmpq   40c0df <_Z6windowid+0xcbf>
  40d0a8:	31 d2                	xor    %edx,%edx
  40d0aa:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  40d0b1:	00 
  40d0b2:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40d0b9:	00 
  40d0ba:	e8 a1 63 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d0bf:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40d0c6:	00 
  40d0c7:	48 89 c7             	mov    %rax,%rdi
  40d0ca:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40d0d1:	00 
  40d0d2:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40d0d9:	00 
  40d0da:	4c 89 e2             	mov    %r12,%rdx
  40d0dd:	4c 89 ee             	mov    %r13,%rsi
  40d0e0:	e8 6b 61 ff ff       	callq  403250 <memcpy@plt>
  40d0e5:	4c 8b a4 24 d0 00 00 	mov    0xd0(%rsp),%r12
  40d0ec:	00 
  40d0ed:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  40d0f4:	00 
  40d0f5:	e9 e5 ef ff ff       	jmpq   40c0df <_Z6windowid+0xcbf>
  40d0fa:	4d 85 e4             	test   %r12,%r12
  40d0fd:	0f 85 e4 04 00 00    	jne    40d5e7 <_Z6windowid+0x21c7>
  40d103:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40d10a:	00 
  40d10b:	e9 a2 ee ff ff       	jmpq   40bfb2 <_Z6windowid+0xb92>
  40d110:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40d115:	31 d2                	xor    %edx,%edx
  40d117:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40d11e:	00 
  40d11f:	e8 3c 63 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d124:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40d12b:	00 
  40d12c:	48 89 c7             	mov    %rax,%rdi
  40d12f:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d136:	00 
  40d137:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40d13e:	00 
  40d13f:	4c 89 f2             	mov    %r14,%rdx
  40d142:	4c 89 ee             	mov    %r13,%rsi
  40d145:	e8 06 61 ff ff       	callq  403250 <memcpy@plt>
  40d14a:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d151:	00 
  40d152:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40d159:	00 
  40d15a:	e9 3e e5 ff ff       	jmpq   40b69d <_Z6windowid+0x27d>
  40d15f:	4d 85 f6             	test   %r14,%r14
  40d162:	0f 85 8c 04 00 00    	jne    40d5f4 <_Z6windowid+0x21d4>
  40d168:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40d16f:	00 
  40d170:	e9 28 e5 ff ff       	jmpq   40b69d <_Z6windowid+0x27d>
  40d175:	48 85 c0             	test   %rax,%rax
  40d178:	0f 85 83 04 00 00    	jne    40d601 <_Z6windowid+0x21e1>
  40d17e:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  40d185:	00 
  40d186:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  40d18b:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40d192:	00 
  40d193:	e9 a5 e3 ff ff       	jmpq   40b53d <_Z6windowid+0x11d>
  40d198:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  40d19f:	00 
  40d1a0:	31 d2                	xor    %edx,%edx
  40d1a2:	48 89 c6             	mov    %rax,%rsi
  40d1a5:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40d1ac:	00 
  40d1ad:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40d1b2:	e8 a9 62 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d1b7:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40d1be:	00 
  40d1bf:	48 89 c7             	mov    %rax,%rdi
  40d1c2:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d1c9:	00 
  40d1ca:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40d1d1:	00 
  40d1d2:	4c 89 f2             	mov    %r14,%rdx
  40d1d5:	4c 89 ee             	mov    %r13,%rsi
  40d1d8:	e8 73 60 ff ff       	callq  403250 <memcpy@plt>
  40d1dd:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d1e4:	00 
  40d1e5:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40d1ec:	00 
  40d1ed:	e9 4b e3 ff ff       	jmpq   40b53d <_Z6windowid+0x11d>
  40d1f2:	48 85 c0             	test   %rax,%rax
  40d1f5:	0f 85 20 04 00 00    	jne    40d61b <_Z6windowid+0x21fb>
  40d1fb:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40d202:	00 
  40d203:	e9 94 e2 ff ff       	jmpq   40b49c <_Z6windowid+0x7c>
  40d208:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40d20d:	31 d2                	xor    %edx,%edx
  40d20f:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40d216:	00 
  40d217:	e8 44 62 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d21c:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40d223:	00 
  40d224:	48 89 c7             	mov    %rax,%rdi
  40d227:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40d22e:	00 
  40d22f:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40d236:	00 
  40d237:	4c 89 e2             	mov    %r12,%rdx
  40d23a:	4c 89 ee             	mov    %r13,%rsi
  40d23d:	e8 0e 60 ff ff       	callq  403250 <memcpy@plt>
  40d242:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40d249:	00 
  40d24a:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d251:	00 
  40d252:	e9 5b ed ff ff       	jmpq   40bfb2 <_Z6windowid+0xb92>
  40d257:	4d 85 e4             	test   %r12,%r12
  40d25a:	0f 85 c8 03 00 00    	jne    40d628 <_Z6windowid+0x2208>
  40d260:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40d267:	00 
  40d268:	e9 30 ea ff ff       	jmpq   40bc9d <_Z6windowid+0x87d>
  40d26d:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40d272:	31 d2                	xor    %edx,%edx
  40d274:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40d27b:	00 
  40d27c:	e8 df 61 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d281:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40d288:	00 
  40d289:	48 89 c7             	mov    %rax,%rdi
  40d28c:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40d293:	00 
  40d294:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40d29b:	00 
  40d29c:	4c 89 e2             	mov    %r12,%rdx
  40d29f:	4c 89 ee             	mov    %r13,%rsi
  40d2a2:	e8 a9 5f ff ff       	callq  403250 <memcpy@plt>
  40d2a7:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40d2ae:	00 
  40d2af:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d2b6:	00 
  40d2b7:	e9 e1 e9 ff ff       	jmpq   40bc9d <_Z6windowid+0x87d>
  40d2bc:	4d 85 e4             	test   %r12,%r12
  40d2bf:	0f 85 70 03 00 00    	jne    40d635 <_Z6windowid+0x2215>
  40d2c5:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40d2cc:	00 
  40d2cd:	e9 ed e7 ff ff       	jmpq   40babf <_Z6windowid+0x69f>
  40d2d2:	31 d2                	xor    %edx,%edx
  40d2d4:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40d2db:	00 
  40d2dc:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40d2e3:	00 
  40d2e4:	e8 77 61 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d2e9:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40d2f0:	00 
  40d2f1:	48 89 c7             	mov    %rax,%rdi
  40d2f4:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40d2fb:	00 
  40d2fc:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  40d303:	00 
  40d304:	4c 89 e2             	mov    %r12,%rdx
  40d307:	4c 89 ee             	mov    %r13,%rsi
  40d30a:	e8 41 5f ff ff       	callq  403250 <memcpy@plt>
  40d30f:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40d316:	00 
  40d317:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  40d31e:	00 
  40d31f:	e9 9b e7 ff ff       	jmpq   40babf <_Z6windowid+0x69f>
  40d324:	8b 77 20             	mov    0x20(%rdi),%esi
  40d327:	83 ce 04             	or     $0x4,%esi
  40d32a:	e8 f1 60 ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40d32f:	e9 83 ea ff ff       	jmpq   40bdb7 <_Z6windowid+0x997>
  40d334:	c5 f9 6f 8c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm1
  40d33b:	00 00 
  40d33d:	c5 f9 7f 8c 24 30 01 	vmovdqa %xmm1,0x130(%rsp)
  40d344:	00 00 
  40d346:	e9 ab e8 ff ff       	jmpq   40bbf6 <_Z6windowid+0x7d6>
  40d34b:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  40d350:	c5 f9 7f bc 24 e0 00 	vmovdqa %xmm7,0xe0(%rsp)
  40d357:	00 00 
  40d359:	e9 44 e8 ff ff       	jmpq   40bba2 <_Z6windowid+0x782>
  40d35e:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  40d363:	c5 f9 7f bc 24 80 00 	vmovdqa %xmm7,0x80(%rsp)
  40d36a:	00 00 
  40d36c:	e9 5d e5 ff ff       	jmpq   40b8ce <_Z6windowid+0x4ae>
  40d371:	c5 f9 6f 94 24 60 01 	vmovdqa 0x160(%rsp),%xmm2
  40d378:	00 00 
  40d37a:	c5 f9 7f 94 24 90 01 	vmovdqa %xmm2,0x190(%rsp)
  40d381:	00 00 
  40d383:	e9 a8 ec ff ff       	jmpq   40c030 <_Z6windowid+0xc10>
  40d388:	8b 77 20             	mov    0x20(%rdi),%esi
  40d38b:	83 ce 04             	or     $0x4,%esi
  40d38e:	e8 8d 60 ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40d393:	e9 cb fa ff ff       	jmpq   40ce63 <_Z6windowid+0x1a43>
  40d398:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40d39d:	88 84 24 e0 00 00 00 	mov    %al,0xe0(%rsp)
  40d3a4:	4c 89 f8             	mov    %r15,%rax
  40d3a7:	e9 43 f3 ff ff       	jmpq   40c6ef <_Z6windowid+0x12cf>
  40d3ac:	4c 89 c9             	mov    %r9,%rcx
  40d3af:	31 d2                	xor    %edx,%edx
  40d3b1:	31 f6                	xor    %esi,%esi
  40d3b3:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40d3ba:	00 
  40d3bb:	e8 00 60 ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40d3c0:	e9 a9 e7 ff ff       	jmpq   40bb6e <_Z6windowid+0x74e>
  40d3c5:	8d 58 06             	lea    0x6(%rax),%ebx
  40d3c8:	e9 df e5 ff ff       	jmpq   40b9ac <_Z6windowid+0x58c>
  40d3cd:	8d 58 05             	lea    0x5(%rax),%ebx
  40d3d0:	e9 d7 e5 ff ff       	jmpq   40b9ac <_Z6windowid+0x58c>
  40d3d5:	8d 58 06             	lea    0x6(%rax),%ebx
  40d3d8:	e9 ef e3 ff ff       	jmpq   40b7cc <_Z6windowid+0x3ac>
  40d3dd:	8d 58 05             	lea    0x5(%rax),%ebx
  40d3e0:	e9 e7 e3 ff ff       	jmpq   40b7cc <_Z6windowid+0x3ac>
  40d3e5:	8d 58 07             	lea    0x7(%rax),%ebx
  40d3e8:	e9 df e3 ff ff       	jmpq   40b7cc <_Z6windowid+0x3ac>
  40d3ed:	8d 58 07             	lea    0x7(%rax),%ebx
  40d3f0:	e9 b7 e5 ff ff       	jmpq   40b9ac <_Z6windowid+0x58c>
  40d3f5:	4d 85 e4             	test   %r12,%r12
  40d3f8:	0f 85 4b 01 00 00    	jne    40d549 <_Z6windowid+0x2129>
  40d3fe:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40d405:	00 
  40d406:	e9 04 f4 ff ff       	jmpq   40c80f <_Z6windowid+0x13ef>
  40d40b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40d410:	31 d2                	xor    %edx,%edx
  40d412:	48 8d b4 24 b0 00 00 	lea    0xb0(%rsp),%rsi
  40d419:	00 
  40d41a:	e8 41 60 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d41f:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40d426:	00 
  40d427:	48 89 c7             	mov    %rax,%rdi
  40d42a:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
  40d431:	00 
  40d432:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40d439:	00 
  40d43a:	4c 89 e2             	mov    %r12,%rdx
  40d43d:	4c 89 ee             	mov    %r13,%rsi
  40d440:	e8 0b 5e ff ff       	callq  403250 <memcpy@plt>
  40d445:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
  40d44c:	00 
  40d44d:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40d454:	00 
  40d455:	e9 b5 f3 ff ff       	jmpq   40c80f <_Z6windowid+0x13ef>
  40d45a:	31 d2                	xor    %edx,%edx
  40d45c:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40d463:	00 
  40d464:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  40d46b:	00 
  40d46c:	e8 ef 5f ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40d471:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
  40d478:	00 
  40d479:	48 89 c7             	mov    %rax,%rdi
  40d47c:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40d483:	00 
  40d484:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
  40d48b:	00 
  40d48c:	4c 89 e2             	mov    %r12,%rdx
  40d48f:	4c 89 ee             	mov    %r13,%rsi
  40d492:	e8 b9 5d ff ff       	callq  403250 <memcpy@plt>
  40d497:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40d49e:	00 
  40d49f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40d4a6:	00 
  40d4a7:	e9 43 f2 ff ff       	jmpq   40c6ef <_Z6windowid+0x12cf>
  40d4ac:	8b 77 20             	mov    0x20(%rdi),%esi
  40d4af:	83 ce 04             	or     $0x4,%esi
  40d4b2:	e8 69 5f ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40d4b7:	e9 cb f4 ff ff       	jmpq   40c987 <_Z6windowid+0x1567>
  40d4bc:	c5 f9 6f b4 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm6
  40d4c3:	00 00 
  40d4c5:	c5 f9 7f b4 24 90 01 	vmovdqa %xmm6,0x190(%rsp)
  40d4cc:	00 00 
  40d4ce:	e9 95 f2 ff ff       	jmpq   40c768 <_Z6windowid+0x1348>
  40d4d3:	bb 02 00 00 00       	mov    $0x2,%ebx
  40d4d8:	e9 cf e4 ff ff       	jmpq   40b9ac <_Z6windowid+0x58c>
  40d4dd:	bb 01 00 00 00       	mov    $0x1,%ebx
  40d4e2:	e9 e5 e2 ff ff       	jmpq   40b7cc <_Z6windowid+0x3ac>
  40d4e7:	bb 02 00 00 00       	mov    $0x2,%ebx
  40d4ec:	e9 db e2 ff ff       	jmpq   40b7cc <_Z6windowid+0x3ac>
  40d4f1:	bb 03 00 00 00       	mov    $0x3,%ebx
  40d4f6:	e9 d1 e2 ff ff       	jmpq   40b7cc <_Z6windowid+0x3ac>
  40d4fb:	bb 04 00 00 00       	mov    $0x4,%ebx
  40d500:	e9 c7 e2 ff ff       	jmpq   40b7cc <_Z6windowid+0x3ac>
  40d505:	bb 03 00 00 00       	mov    $0x3,%ebx
  40d50a:	e9 9d e4 ff ff       	jmpq   40b9ac <_Z6windowid+0x58c>
  40d50f:	bb 04 00 00 00       	mov    $0x4,%ebx
  40d514:	e9 93 e4 ff ff       	jmpq   40b9ac <_Z6windowid+0x58c>
  40d519:	bb 01 00 00 00       	mov    $0x1,%ebx
  40d51e:	e9 89 e4 ff ff       	jmpq   40b9ac <_Z6windowid+0x58c>
  40d523:	bf 4a 00 41 00       	mov    $0x41004a,%edi
  40d528:	e8 53 5e ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  40d52d:	bf 38 04 41 00       	mov    $0x410438,%edi
  40d532:	e8 b9 5c ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40d537:	bf e9 04 41 00       	mov    $0x4104e9,%edi
  40d53c:	e8 1f 5c ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40d541:	4c 89 ff             	mov    %r15,%rdi
  40d544:	e9 43 ff ff ff       	jmpq   40d48c <_Z6windowid+0x206c>
  40d549:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40d550:	00 
  40d551:	e9 e4 fe ff ff       	jmpq   40d43a <_Z6windowid+0x201a>
  40d556:	bf 38 04 41 00       	mov    $0x410438,%edi
  40d55b:	e8 90 5c ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40d560:	bf 4a 00 41 00       	mov    $0x41004a,%edi
  40d565:	e8 36 5c ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40d56a:	bf 4a 00 41 00       	mov    $0x41004a,%edi
  40d56f:	e8 0c 5e ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  40d574:	bf 38 04 41 00       	mov    $0x410438,%edi
  40d579:	e8 72 5c ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40d57e:	bf e9 04 41 00       	mov    $0x4104e9,%edi
  40d583:	e8 d8 5b ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40d588:	bf 38 04 41 00       	mov    $0x410438,%edi
  40d58d:	e8 5e 5c ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40d592:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40d598:	bf 38 04 41 00       	mov    $0x410438,%edi
  40d59d:	e8 4e 5c ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40d5a2:	bf e9 04 41 00       	mov    $0x4104e9,%edi
  40d5a7:	e8 b4 5b ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40d5ac:	bf 38 04 41 00       	mov    $0x410438,%edi
  40d5b1:	e8 3a 5c ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40d5b6:	bb 01 00 00 00       	mov    $0x1,%ebx
  40d5bb:	e9 dc f0 ff ff       	jmpq   40c69c <_Z6windowid+0x127c>
  40d5c0:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40d5c7:	00 
  40d5c8:	e9 f5 f5 ff ff       	jmpq   40cbc2 <_Z6windowid+0x17a2>
  40d5cd:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40d5d4:	00 
  40d5d5:	e9 3a f6 ff ff       	jmpq   40cc14 <_Z6windowid+0x17f4>
  40d5da:	48 8d bc 24 30 01 00 	lea    0x130(%rsp),%rdi
  40d5e1:	00 
  40d5e2:	e9 f3 fa ff ff       	jmpq   40d0da <_Z6windowid+0x1cba>
  40d5e7:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40d5ee:	00 
  40d5ef:	e9 43 fc ff ff       	jmpq   40d237 <_Z6windowid+0x1e17>
  40d5f4:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40d5fb:	00 
  40d5fc:	e9 3e fb ff ff       	jmpq   40d13f <_Z6windowid+0x1d1f>
  40d601:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  40d608:	00 
  40d609:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40d60e:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40d615:	00 
  40d616:	e9 b7 fb ff ff       	jmpq   40d1d2 <_Z6windowid+0x1db2>
  40d61b:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40d622:	00 
  40d623:	e9 1a e0 ff ff       	jmpq   40b642 <_Z6windowid+0x222>
  40d628:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40d62f:	00 
  40d630:	e9 67 fc ff ff       	jmpq   40d29c <_Z6windowid+0x1e7c>
  40d635:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40d63c:	00 
  40d63d:	e9 c2 fc ff ff       	jmpq   40d304 <_Z6windowid+0x1ee4>
  40d642:	bf e9 04 41 00       	mov    $0x4104e9,%edi
  40d647:	e8 14 5b ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40d64c:	bf 38 04 41 00       	mov    $0x410438,%edi
  40d651:	e8 9a 5b ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40d656:	bf 38 04 41 00       	mov    $0x410438,%edi
  40d65b:	e8 90 5b ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40d660:	bf 4a 00 41 00       	mov    $0x41004a,%edi
  40d665:	e8 36 5b ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40d66a:	bf 38 04 41 00       	mov    $0x410438,%edi
  40d66f:	e8 7c 5b ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40d674:	48 89 c3             	mov    %rax,%rbx
  40d677:	e9 96 5e ff ff       	jmpq   403512 <_Z6windowid.cold>
  40d67c:	48 89 c3             	mov    %rax,%rbx
  40d67f:	c5 f8 77             	vzeroupper 
  40d682:	e9 07 5f ff ff       	jmpq   40358e <_Z6windowid.cold+0x7c>
  40d687:	48 89 c3             	mov    %rax,%rbx
  40d68a:	e9 4e 5f ff ff       	jmpq   4035dd <_Z6windowid.cold+0xcb>
  40d68f:	48 89 c3             	mov    %rax,%rbx
  40d692:	e9 80 5f ff ff       	jmpq   403617 <_Z6windowid.cold+0x105>
  40d697:	48 89 c3             	mov    %rax,%rbx
  40d69a:	c5 f8 77             	vzeroupper 
  40d69d:	e9 92 5f ff ff       	jmpq   403634 <_Z6windowid.cold+0x122>
  40d6a2:	48 89 c3             	mov    %rax,%rbx
  40d6a5:	e9 b7 5e ff ff       	jmpq   403561 <_Z6windowid.cold+0x4f>
  40d6aa:	49 89 c4             	mov    %rax,%r12
  40d6ad:	e9 c6 5f ff ff       	jmpq   403678 <_Z6windowid.cold+0x166>
  40d6b2:	48 89 c3             	mov    %rax,%rbx
  40d6b5:	c5 f8 77             	vzeroupper 
  40d6b8:	e9 15 60 ff ff       	jmpq   4036d2 <_Z6windowid.cold+0x1c0>
  40d6bd:	48 89 c3             	mov    %rax,%rbx
  40d6c0:	e9 fd 5f ff ff       	jmpq   4036c2 <_Z6windowid.cold+0x1b0>
  40d6c5:	48 89 c3             	mov    %rax,%rbx
  40d6c8:	e9 ca 60 ff ff       	jmpq   403797 <_Z6windowid.cold+0x285>
  40d6cd:	49 89 c4             	mov    %rax,%r12
  40d6d0:	e9 d7 60 ff ff       	jmpq   4037ac <_Z6windowid.cold+0x29a>
  40d6d5:	48 89 c3             	mov    %rax,%rbx
  40d6d8:	c5 f8 77             	vzeroupper 
  40d6db:	e9 6c 5e ff ff       	jmpq   40354c <_Z6windowid.cold+0x3a>
  40d6e0:	48 89 c3             	mov    %rax,%rbx
  40d6e3:	c5 f8 77             	vzeroupper 
  40d6e6:	e9 7d 60 ff ff       	jmpq   403768 <_Z6windowid.cold+0x256>
  40d6eb:	49 89 c4             	mov    %rax,%r12
  40d6ee:	c5 f8 77             	vzeroupper 
  40d6f1:	e9 d3 60 ff ff       	jmpq   4037c9 <_Z6windowid.cold+0x2b7>
  40d6f6:	48 89 c3             	mov    %rax,%rbx
  40d6f9:	e9 fe 60 ff ff       	jmpq   4037fc <_Z6windowid.cold+0x2ea>
  40d6fe:	48 89 c3             	mov    %rax,%rbx
  40d701:	c5 f8 77             	vzeroupper 
  40d704:	e9 eb 5f ff ff       	jmpq   4036f4 <_Z6windowid.cold+0x1e2>
  40d709:	48 89 c3             	mov    %rax,%rbx
  40d70c:	c5 f8 77             	vzeroupper 
  40d70f:	e9 69 61 ff ff       	jmpq   40387d <_Z6windowid.cold+0x36b>
  40d714:	48 89 c3             	mov    %rax,%rbx
  40d717:	e9 16 61 ff ff       	jmpq   403832 <_Z6windowid.cold+0x320>
  40d71c:	48 89 c7             	mov    %rax,%rdi
  40d71f:	e9 68 61 ff ff       	jmpq   40388c <_Z6windowid.cold+0x37a>
  40d724:	48 89 c3             	mov    %rax,%rbx
  40d727:	c5 f8 77             	vzeroupper 
  40d72a:	e9 35 61 ff ff       	jmpq   403864 <_Z6windowid.cold+0x352>
  40d72f:	48 89 c3             	mov    %rax,%rbx
  40d732:	c5 f8 77             	vzeroupper 
  40d735:	e9 08 61 ff ff       	jmpq   403842 <_Z6windowid.cold+0x330>
  40d73a:	48 89 c3             	mov    %rax,%rbx
  40d73d:	e9 5c 61 ff ff       	jmpq   40389e <_Z6windowid.cold+0x38c>
  40d742:	48 89 c3             	mov    %rax,%rbx
  40d745:	e9 66 61 ff ff       	jmpq   4038b0 <_Z6windowid.cold+0x39e>
  40d74a:	48 89 c3             	mov    %rax,%rbx
  40d74d:	e9 70 61 ff ff       	jmpq   4038c2 <_Z6windowid.cold+0x3b0>
  40d752:	48 89 c3             	mov    %rax,%rbx
  40d755:	c5 f8 77             	vzeroupper 
  40d758:	e9 58 5e ff ff       	jmpq   4035b5 <_Z6windowid.cold+0xa3>
  40d75d:	48 89 c3             	mov    %rax,%rbx
  40d760:	e9 8b 61 ff ff       	jmpq   4038f0 <_Z6windowid.cold+0x3de>
  40d765:	48 89 c3             	mov    %rax,%rbx
  40d768:	c5 f8 77             	vzeroupper 
  40d76b:	e9 d2 5f ff ff       	jmpq   403742 <_Z6windowid.cold+0x230>
  40d770:	48 89 c3             	mov    %rax,%rbx
  40d773:	c5 f8 77             	vzeroupper 
  40d776:	e9 92 61 ff ff       	jmpq   40390d <_Z6windowid.cold+0x3fb>
  40d77b:	48 89 c3             	mov    %rax,%rbx
  40d77e:	e9 c6 61 ff ff       	jmpq   403949 <_Z6windowid.cold+0x437>
  40d783:	48 89 c3             	mov    %rax,%rbx
  40d786:	e9 d0 61 ff ff       	jmpq   40395b <_Z6windowid.cold+0x449>
  40d78b:	48 89 c3             	mov    %rax,%rbx
  40d78e:	e9 20 62 ff ff       	jmpq   4039b3 <_Z6windowid.cold+0x4a1>
  40d793:	48 89 c3             	mov    %rax,%rbx
  40d796:	c5 f8 77             	vzeroupper 
  40d799:	e9 a5 62 ff ff       	jmpq   403a43 <_Z6windowid.cold+0x531>
  40d79e:	48 89 c3             	mov    %rax,%rbx
  40d7a1:	c5 f8 77             	vzeroupper 
  40d7a4:	e9 ea 62 ff ff       	jmpq   403a93 <_Z6windowid.cold+0x581>
  40d7a9:	48 89 c3             	mov    %rax,%rbx
  40d7ac:	e9 c1 62 ff ff       	jmpq   403a72 <_Z6windowid.cold+0x560>
  40d7b1:	48 89 c3             	mov    %rax,%rbx
  40d7b4:	e9 09 63 ff ff       	jmpq   403ac2 <_Z6windowid.cold+0x5b0>
  40d7b9:	e9 55 63 ff ff       	jmpq   403b13 <_Z6windowid.cold+0x601>
  40d7be:	48 89 c3             	mov    %rax,%rbx
  40d7c1:	c5 f8 77             	vzeroupper 
  40d7c4:	e9 09 63 ff ff       	jmpq   403ad2 <_Z6windowid.cold+0x5c0>
  40d7c9:	48 89 c3             	mov    %rax,%rbx
  40d7cc:	c5 f8 77             	vzeroupper 
  40d7cf:	e9 43 5f ff ff       	jmpq   403717 <_Z6windowid.cold+0x205>
  40d7d4:	48 89 c3             	mov    %rax,%rbx
  40d7d7:	e9 f3 64 ff ff       	jmpq   403ccf <_Z6windowid.cold+0x7bd>
  40d7dc:	48 89 c3             	mov    %rax,%rbx
  40d7df:	e9 eb 64 ff ff       	jmpq   403ccf <_Z6windowid.cold+0x7bd>
  40d7e4:	48 89 c3             	mov    %rax,%rbx
  40d7e7:	c5 f8 77             	vzeroupper 
  40d7ea:	e9 2c 62 ff ff       	jmpq   403a1b <_Z6windowid.cold+0x509>
  40d7ef:	48 89 c3             	mov    %rax,%rbx
  40d7f2:	c5 f8 77             	vzeroupper 
  40d7f5:	e9 99 63 ff ff       	jmpq   403b93 <_Z6windowid.cold+0x681>
  40d7fa:	c5 f8 77             	vzeroupper 
  40d7fd:	e9 6e 63 ff ff       	jmpq   403b70 <_Z6windowid.cold+0x65e>
  40d802:	49 89 c5             	mov    %rax,%r13
  40d805:	e9 53 63 ff ff       	jmpq   403b5d <_Z6windowid.cold+0x64b>
  40d80a:	48 89 c3             	mov    %rax,%rbx
  40d80d:	e9 9f 63 ff ff       	jmpq   403bb1 <_Z6windowid.cold+0x69f>
  40d812:	48 89 c7             	mov    %rax,%rdi
  40d815:	e9 ac 63 ff ff       	jmpq   403bc6 <_Z6windowid.cold+0x6b4>
  40d81a:	48 89 c7             	mov    %rax,%rdi
  40d81d:	e9 b6 63 ff ff       	jmpq   403bd8 <_Z6windowid.cold+0x6c6>
  40d822:	48 89 c3             	mov    %rax,%rbx
  40d825:	e9 c0 63 ff ff       	jmpq   403bea <_Z6windowid.cold+0x6d8>
  40d82a:	48 89 c3             	mov    %rax,%rbx
  40d82d:	c5 f8 77             	vzeroupper 
  40d830:	e9 04 64 ff ff       	jmpq   403c39 <_Z6windowid.cold+0x727>
  40d835:	48 89 c3             	mov    %rax,%rbx
  40d838:	e9 64 64 ff ff       	jmpq   403ca1 <_Z6windowid.cold+0x78f>
  40d83d:	48 89 c3             	mov    %rax,%rbx
  40d840:	e9 a9 61 ff ff       	jmpq   4039ee <_Z6windowid.cold+0x4dc>
  40d845:	48 89 c3             	mov    %rax,%rbx
  40d848:	e9 cb 63 ff ff       	jmpq   403c18 <_Z6windowid.cold+0x706>
  40d84d:	48 89 c3             	mov    %rax,%rbx
  40d850:	c5 f8 77             	vzeroupper 
  40d853:	e9 2c 61 ff ff       	jmpq   403984 <_Z6windowid.cold+0x472>
  40d858:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40d85f:	00 

000000000040d860 <_ZN8Counters4openEi._omp_fn.0>:
  40d860:	55                   	push   %rbp
  40d861:	48 89 fd             	mov    %rdi,%rbp
  40d864:	53                   	push   %rbx
  40d865:	48 83 ec 58          	sub    $0x58,%rsp
  40d869:	e8 72 5b ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40d86e:	48 63 d8             	movslq %eax,%rbx
  40d871:	39 5d 08             	cmp    %ebx,0x8(%rbp)
  40d874:	7f 0a                	jg     40d880 <_ZN8Counters4openEi._omp_fn.0+0x20>
  40d876:	48 83 c4 58          	add    $0x58,%rsp
  40d87a:	5b                   	pop    %rbx
  40d87b:	5d                   	pop    %rbp
  40d87c:	c3                   	retq   
  40d87d:	0f 1f 00             	nopl   (%rax)
  40d880:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
  40d884:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d888:	48 89 e6             	mov    %rsp,%rsi
  40d88b:	45 31 c9             	xor    %r9d,%r9d
  40d88e:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40d894:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40d899:	31 d2                	xor    %edx,%edx
  40d89b:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40d8a0:	31 c0                	xor    %eax,%eax
  40d8a2:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40d8a8:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40d8ae:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40d8b5:	00 00 
  40d8b7:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40d8be:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40d8c5:	00 
  40d8c6:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40d8cd:	00 00 
  40d8cf:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40d8d6:	00 00 
  40d8d8:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40d8df:	00 00 
  40d8e1:	e8 6a 57 ff ff       	callq  403050 <syscall@plt>
  40d8e6:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  40d8ea:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d8ee:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40d8f1:	48 89 e6             	mov    %rsp,%rsi
  40d8f4:	45 31 c9             	xor    %r9d,%r9d
  40d8f7:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40d8fd:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40d902:	31 d2                	xor    %edx,%edx
  40d904:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40d909:	31 c0                	xor    %eax,%eax
  40d90b:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40d911:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40d917:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40d91e:	00 00 
  40d920:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  40d927:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40d92e:	00 
  40d92f:	48 c7 44 24 08 b7 02 	movq   $0x2b7,0x8(%rsp)
  40d936:	00 00 
  40d938:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40d93f:	00 00 
  40d941:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40d948:	00 00 
  40d94a:	e8 01 57 ff ff       	callq  403050 <syscall@plt>
  40d94f:	48 8b 55 18          	mov    0x18(%rbp),%rdx
  40d953:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d957:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40d95a:	48 89 e6             	mov    %rsp,%rsi
  40d95d:	45 31 c9             	xor    %r9d,%r9d
  40d960:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40d966:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40d96b:	31 d2                	xor    %edx,%edx
  40d96d:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40d972:	31 c0                	xor    %eax,%eax
  40d974:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40d97a:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40d980:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40d987:	00 00 
  40d989:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40d990:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40d997:	00 
  40d998:	48 c7 44 24 08 01 00 	movq   $0x1,0x8(%rsp)
  40d99f:	00 00 
  40d9a1:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40d9a8:	00 00 
  40d9aa:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40d9b1:	00 00 
  40d9b3:	e8 98 56 ff ff       	callq  403050 <syscall@plt>
  40d9b8:	48 8b 55 30          	mov    0x30(%rbp),%rdx
  40d9bc:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40d9c0:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40d9c3:	48 89 e6             	mov    %rsp,%rsi
  40d9c6:	45 31 c9             	xor    %r9d,%r9d
  40d9c9:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40d9cf:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40d9d4:	31 d2                	xor    %edx,%edx
  40d9d6:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40d9db:	31 c0                	xor    %eax,%eax
  40d9dd:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40d9e3:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40d9e9:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40d9f0:	00 00 
  40d9f2:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40d9f9:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40da00:	00 
  40da01:	48 c7 44 24 08 09 00 	movq   $0x9,0x8(%rsp)
  40da08:	00 00 
  40da0a:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40da11:	00 00 
  40da13:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40da1a:	00 00 
  40da1c:	e8 2f 56 ff ff       	callq  403050 <syscall@plt>
  40da21:	48 8b 55 48          	mov    0x48(%rbp),%rdx
  40da25:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40da29:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40da2c:	48 b8 77 04 00 3c 07 	movabs $0x73c000477,%rax
  40da33:	00 00 00 
  40da36:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40da3c:	48 89 e6             	mov    %rsp,%rsi
  40da3f:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40da44:	45 31 c9             	xor    %r9d,%r9d
  40da47:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40da4d:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40da52:	31 d2                	xor    %edx,%edx
  40da54:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40da59:	31 c0                	xor    %eax,%eax
  40da5b:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40da61:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40da68:	00 00 
  40da6a:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  40da71:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40da78:	00 
  40da79:	48 c7 44 24 08 2a 01 	movq   $0x12a,0x8(%rsp)
  40da80:	00 00 
  40da82:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40da89:	00 00 
  40da8b:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40da92:	00 00 
  40da94:	e8 b7 55 ff ff       	callq  403050 <syscall@plt>
  40da99:	48 8b 55 60          	mov    0x60(%rbp),%rdx
  40da9d:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40daa1:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40daa4:	48 b8 22 08 f8 bf 0f 	movabs $0xfbff80822,%rax
  40daab:	00 00 00 
  40daae:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40dab4:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40daba:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40dabf:	48 89 e6             	mov    %rsp,%rsi
  40dac2:	45 31 c9             	xor    %r9d,%r9d
  40dac5:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40daca:	31 d2                	xor    %edx,%edx
  40dacc:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40dad1:	31 c0                	xor    %eax,%eax
  40dad3:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40dada:	00 00 
  40dadc:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  40dae3:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40daea:	00 
  40daeb:	48 c7 44 24 08 2b 01 	movq   $0x12b,0x8(%rsp)
  40daf2:	00 00 
  40daf4:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40dafb:	00 00 
  40dafd:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40db04:	00 00 
  40db06:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40db0c:	e8 3f 55 ff ff       	callq  403050 <syscall@plt>
  40db11:	49 89 c0             	mov    %rax,%r8
  40db14:	48 8b 45 78          	mov    0x78(%rbp),%rax
  40db18:	44 89 04 98          	mov    %r8d,(%rax,%rbx,4)
  40db1c:	48 83 c4 58          	add    $0x58,%rsp
  40db20:	5b                   	pop    %rbx
  40db21:	5d                   	pop    %rbp
  40db22:	c3                   	retq   
  40db23:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40db2a:	00 00 00 
  40db2d:	0f 1f 00             	nopl   (%rax)

000000000040db30 <_ZNSt7__cxx119to_stringEi>:
  40db30:	41 56                	push   %r14
  40db32:	89 f0                	mov    %esi,%eax
  40db34:	c1 f8 1f             	sar    $0x1f,%eax
  40db37:	41 55                	push   %r13
  40db39:	41 89 f6             	mov    %esi,%r14d
  40db3c:	49 89 fd             	mov    %rdi,%r13
  40db3f:	41 54                	push   %r12
  40db41:	41 c1 ee 1f          	shr    $0x1f,%r14d
  40db45:	55                   	push   %rbp
  40db46:	89 f5                	mov    %esi,%ebp
  40db48:	31 c5                	xor    %eax,%ebp
  40db4a:	29 c5                	sub    %eax,%ebp
  40db4c:	53                   	push   %rbx
  40db4d:	83 fd 09             	cmp    $0x9,%ebp
  40db50:	0f 86 86 01 00 00    	jbe    40dcdc <_ZNSt7__cxx119to_stringEi+0x1ac>
  40db56:	83 fd 63             	cmp    $0x63,%ebp
  40db59:	0f 86 9f 01 00 00    	jbe    40dcfe <_ZNSt7__cxx119to_stringEi+0x1ce>
  40db5f:	81 fd e7 03 00 00    	cmp    $0x3e7,%ebp
  40db65:	0f 86 b3 01 00 00    	jbe    40dd1e <_ZNSt7__cxx119to_stringEi+0x1ee>
  40db6b:	89 eb                	mov    %ebp,%ebx
  40db6d:	48 89 da             	mov    %rbx,%rdx
  40db70:	81 fd 0f 27 00 00    	cmp    $0x270f,%ebp
  40db76:	0f 86 92 01 00 00    	jbe    40dd0e <_ZNSt7__cxx119to_stringEi+0x1de>
  40db7c:	b9 01 00 00 00       	mov    $0x1,%ecx
  40db81:	48 bf 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rdi
  40db88:	c5 6d 34 
  40db8b:	eb 24                	jmp    40dbb1 <_ZNSt7__cxx119to_stringEi+0x81>
  40db8d:	0f 1f 00             	nopl   (%rax)
  40db90:	83 fa 63             	cmp    $0x63,%edx
  40db93:	0f 86 c7 00 00 00    	jbe    40dc60 <_ZNSt7__cxx119to_stringEi+0x130>
  40db99:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40db9f:	0f 86 1b 01 00 00    	jbe    40dcc0 <_ZNSt7__cxx119to_stringEi+0x190>
  40dba5:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40dbab:	0f 86 1f 01 00 00    	jbe    40dcd0 <_ZNSt7__cxx119to_stringEi+0x1a0>
  40dbb1:	48 89 d0             	mov    %rdx,%rax
  40dbb4:	48 89 d6             	mov    %rdx,%rsi
  40dbb7:	48 f7 e7             	mul    %rdi
  40dbba:	89 c8                	mov    %ecx,%eax
  40dbbc:	83 c1 04             	add    $0x4,%ecx
  40dbbf:	48 c1 ea 0b          	shr    $0xb,%rdx
  40dbc3:	48 81 fe 9f 86 01 00 	cmp    $0x1869f,%rsi
  40dbca:	77 c4                	ja     40db90 <_ZNSt7__cxx119to_stringEi+0x60>
  40dbcc:	44 8d 60 03          	lea    0x3(%rax),%r12d
  40dbd0:	49 8d 45 10          	lea    0x10(%r13),%rax
  40dbd4:	49 89 45 00          	mov    %rax,0x0(%r13)
  40dbd8:	41 8d 34 0e          	lea    (%r14,%rcx,1),%esi
  40dbdc:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40dbe1:	4c 89 ef             	mov    %r13,%rdi
  40dbe4:	e8 07 57 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40dbe9:	41 0f b6 ce          	movzbl %r14b,%ecx
  40dbed:	49 03 4d 00          	add    0x0(%r13),%rcx
  40dbf1:	eb 07                	jmp    40dbfa <_ZNSt7__cxx119to_stringEi+0xca>
  40dbf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40dbf8:	89 eb                	mov    %ebp,%ebx
  40dbfa:	48 69 d3 1f 85 eb 51 	imul   $0x51eb851f,%rbx,%rdx
  40dc01:	89 e8                	mov    %ebp,%eax
  40dc03:	48 c1 ea 25          	shr    $0x25,%rdx
  40dc07:	6b f2 64             	imul   $0x64,%edx,%esi
  40dc0a:	29 f0                	sub    %esi,%eax
  40dc0c:	01 c0                	add    %eax,%eax
  40dc0e:	8d 78 01             	lea    0x1(%rax),%edi
  40dc11:	0f b6 bf 00 05 41 00 	movzbl 0x410500(%rdi),%edi
  40dc18:	0f b6 80 00 05 41 00 	movzbl 0x410500(%rax),%eax
  40dc1f:	89 ee                	mov    %ebp,%esi
  40dc21:	89 d5                	mov    %edx,%ebp
  40dc23:	44 89 e2             	mov    %r12d,%edx
  40dc26:	40 88 3c 11          	mov    %dil,(%rcx,%rdx,1)
  40dc2a:	41 8d 54 24 ff       	lea    -0x1(%r12),%edx
  40dc2f:	88 04 11             	mov    %al,(%rcx,%rdx,1)
  40dc32:	41 83 ec 02          	sub    $0x2,%r12d
  40dc36:	81 fe 0f 27 00 00    	cmp    $0x270f,%esi
  40dc3c:	77 ba                	ja     40dbf8 <_ZNSt7__cxx119to_stringEi+0xc8>
  40dc3e:	81 fe e7 03 00 00    	cmp    $0x3e7,%esi
  40dc44:	77 4c                	ja     40dc92 <_ZNSt7__cxx119to_stringEi+0x162>
  40dc46:	83 c5 30             	add    $0x30,%ebp
  40dc49:	40 88 29             	mov    %bpl,(%rcx)
  40dc4c:	4c 89 e8             	mov    %r13,%rax
  40dc4f:	5b                   	pop    %rbx
  40dc50:	5d                   	pop    %rbp
  40dc51:	41 5c                	pop    %r12
  40dc53:	41 5d                	pop    %r13
  40dc55:	41 5e                	pop    %r14
  40dc57:	c3                   	retq   
  40dc58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40dc5f:	00 
  40dc60:	83 c0 05             	add    $0x5,%eax
  40dc63:	41 89 cc             	mov    %ecx,%r12d
  40dc66:	49 8d 55 10          	lea    0x10(%r13),%rdx
  40dc6a:	49 89 55 00          	mov    %rdx,0x0(%r13)
  40dc6e:	41 8d 34 06          	lea    (%r14,%rax,1),%esi
  40dc72:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40dc77:	4c 89 ef             	mov    %r13,%rdi
  40dc7a:	e8 71 56 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40dc7f:	41 0f b6 ce          	movzbl %r14b,%ecx
  40dc83:	49 03 4d 00          	add    0x0(%r13),%rcx
  40dc87:	89 eb                	mov    %ebp,%ebx
  40dc89:	83 fd 63             	cmp    $0x63,%ebp
  40dc8c:	0f 87 68 ff ff ff    	ja     40dbfa <_ZNSt7__cxx119to_stringEi+0xca>
  40dc92:	01 ed                	add    %ebp,%ebp
  40dc94:	8d 45 01             	lea    0x1(%rbp),%eax
  40dc97:	0f b6 80 00 05 41 00 	movzbl 0x410500(%rax),%eax
  40dc9e:	0f b6 ad 00 05 41 00 	movzbl 0x410500(%rbp),%ebp
  40dca5:	88 41 01             	mov    %al,0x1(%rcx)
  40dca8:	40 88 29             	mov    %bpl,(%rcx)
  40dcab:	4c 89 e8             	mov    %r13,%rax
  40dcae:	5b                   	pop    %rbx
  40dcaf:	5d                   	pop    %rbp
  40dcb0:	41 5c                	pop    %r12
  40dcb2:	41 5d                	pop    %r13
  40dcb4:	41 5e                	pop    %r14
  40dcb6:	c3                   	retq   
  40dcb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40dcbe:	00 00 
  40dcc0:	8d 48 06             	lea    0x6(%rax),%ecx
  40dcc3:	44 8d 60 05          	lea    0x5(%rax),%r12d
  40dcc7:	e9 04 ff ff ff       	jmpq   40dbd0 <_ZNSt7__cxx119to_stringEi+0xa0>
  40dccc:	0f 1f 40 00          	nopl   0x0(%rax)
  40dcd0:	8d 48 07             	lea    0x7(%rax),%ecx
  40dcd3:	44 8d 60 06          	lea    0x6(%rax),%r12d
  40dcd7:	e9 f4 fe ff ff       	jmpq   40dbd0 <_ZNSt7__cxx119to_stringEi+0xa0>
  40dcdc:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40dce0:	48 89 07             	mov    %rax,(%rdi)
  40dce3:	41 8d 76 01          	lea    0x1(%r14),%esi
  40dce7:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40dcec:	e8 ff 55 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40dcf1:	41 0f b6 ce          	movzbl %r14b,%ecx
  40dcf5:	49 03 4d 00          	add    0x0(%r13),%rcx
  40dcf9:	e9 48 ff ff ff       	jmpq   40dc46 <_ZNSt7__cxx119to_stringEi+0x116>
  40dcfe:	b8 02 00 00 00       	mov    $0x2,%eax
  40dd03:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  40dd09:	e9 58 ff ff ff       	jmpq   40dc66 <_ZNSt7__cxx119to_stringEi+0x136>
  40dd0e:	41 bc 03 00 00 00    	mov    $0x3,%r12d
  40dd14:	b9 04 00 00 00       	mov    $0x4,%ecx
  40dd19:	e9 b2 fe ff ff       	jmpq   40dbd0 <_ZNSt7__cxx119to_stringEi+0xa0>
  40dd1e:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  40dd24:	b9 03 00 00 00       	mov    $0x3,%ecx
  40dd29:	89 eb                	mov    %ebp,%ebx
  40dd2b:	e9 a0 fe ff ff       	jmpq   40dbd0 <_ZNSt7__cxx119to_stringEi+0xa0>

000000000040dd30 <_ZNSt10filesystem7__cxx114pathD1Ev>:
  40dd30:	53                   	push   %rbx
  40dd31:	48 89 fb             	mov    %rdi,%rbx
  40dd34:	48 8b 77 20          	mov    0x20(%rdi),%rsi
  40dd38:	48 85 f6             	test   %rsi,%rsi
  40dd3b:	74 09                	je     40dd46 <_ZNSt10filesystem7__cxx114pathD1Ev+0x16>
  40dd3d:	48 8d 7f 20          	lea    0x20(%rdi),%rdi
  40dd41:	e8 5a 53 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40dd46:	48 8b 3b             	mov    (%rbx),%rdi
  40dd49:	48 8d 43 10          	lea    0x10(%rbx),%rax
  40dd4d:	48 39 c7             	cmp    %rax,%rdi
  40dd50:	74 0e                	je     40dd60 <_ZNSt10filesystem7__cxx114pathD1Ev+0x30>
  40dd52:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40dd56:	5b                   	pop    %rbx
  40dd57:	48 ff c6             	inc    %rsi
  40dd5a:	e9 51 55 ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  40dd5f:	90                   	nop
  40dd60:	5b                   	pop    %rbx
  40dd61:	c3                   	retq   
  40dd62:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40dd69:	00 00 00 
  40dd6c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040dd70 <_ZN8Counters4openEi>:
  40dd70:	41 57                	push   %r15
  40dd72:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40dd76:	41 56                	push   %r14
  40dd78:	49 89 fe             	mov    %rdi,%r14
  40dd7b:	41 55                	push   %r13
  40dd7d:	41 54                	push   %r12
  40dd7f:	55                   	push   %rbp
  40dd80:	48 89 fd             	mov    %rdi,%rbp
  40dd83:	53                   	push   %rbx
  40dd84:	48 63 de             	movslq %esi,%rbx
  40dd87:	4c 8d 24 9d 00 00 00 	lea    0x0(,%rbx,4),%r12
  40dd8e:	00 
  40dd8f:	48 83 ec 48          	sub    $0x48,%rsp
  40dd93:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40dd98:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40dd9c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40dda1:	48 8d 47 48          	lea    0x48(%rdi),%rax
  40dda5:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40ddaa:	48 8d 47 60          	lea    0x60(%rdi),%rax
  40ddae:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  40ddb3:	48 8d 47 78          	lea    0x78(%rdi),%rax
  40ddb7:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  40ddbd:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  40ddc1:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
  40ddc6:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40ddcc:	4c 8d 7c 24 18       	lea    0x18(%rsp),%r15
  40ddd1:	eb 5a                	jmp    40de2d <_ZN8Counters4openEi+0xbd>
  40ddd3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40ddd8:	4c 39 ef             	cmp    %r13,%rdi
  40dddb:	74 12                	je     40ddef <_ZN8Counters4openEi+0x7f>
  40dddd:	be ff 00 00 00       	mov    $0xff,%esi
  40dde2:	4c 89 14 24          	mov    %r10,(%rsp)
  40dde6:	e8 95 53 ff ff       	callq  403180 <memset@plt>
  40ddeb:	4c 8b 14 24          	mov    (%rsp),%r10
  40ddef:	48 89 da             	mov    %rbx,%rdx
  40ddf2:	4c 29 d2             	sub    %r10,%rdx
  40ddf5:	48 c1 e2 02          	shl    $0x2,%rdx
  40ddf9:	4d 8d 54 15 00       	lea    0x0(%r13,%rdx,1),%r10
  40ddfe:	4d 39 d5             	cmp    %r10,%r13
  40de01:	74 15                	je     40de18 <_ZN8Counters4openEi+0xa8>
  40de03:	be ff 00 00 00       	mov    $0xff,%esi
  40de08:	4c 89 ef             	mov    %r13,%rdi
  40de0b:	4c 89 14 24          	mov    %r10,(%rsp)
  40de0f:	e8 6c 53 ff ff       	callq  403180 <memset@plt>
  40de14:	4c 8b 14 24          	mov    (%rsp),%r10
  40de18:	4d 89 56 08          	mov    %r10,0x8(%r14)
  40de1c:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40de21:	4c 39 f8             	cmp    %r15,%rax
  40de24:	74 72                	je     40de98 <_ZN8Counters4openEi+0x128>
  40de26:	4d 8b 37             	mov    (%r15),%r14
  40de29:	49 83 c7 08          	add    $0x8,%r15
  40de2d:	49 8b 3e             	mov    (%r14),%rdi
  40de30:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40de34:	48 29 fe             	sub    %rdi,%rsi
  40de37:	48 89 f0             	mov    %rsi,%rax
  40de3a:	48 c1 f8 02          	sar    $0x2,%rax
  40de3e:	48 39 c3             	cmp    %rax,%rbx
  40de41:	0f 87 b9 00 00 00    	ja     40df00 <_ZN8Counters4openEi+0x190>
  40de47:	4d 8b 6e 08          	mov    0x8(%r14),%r13
  40de4b:	4c 89 ea             	mov    %r13,%rdx
  40de4e:	48 29 fa             	sub    %rdi,%rdx
  40de51:	49 89 d2             	mov    %rdx,%r10
  40de54:	49 c1 fa 02          	sar    $0x2,%r10
  40de58:	4c 39 d3             	cmp    %r10,%rbx
  40de5b:	0f 87 77 ff ff ff    	ja     40ddd8 <_ZN8Counters4openEi+0x68>
  40de61:	49 89 fa             	mov    %rdi,%r10
  40de64:	48 85 db             	test   %rbx,%rbx
  40de67:	74 1d                	je     40de86 <_ZN8Counters4openEi+0x116>
  40de69:	4d 01 e2             	add    %r12,%r10
  40de6c:	4c 39 d7             	cmp    %r10,%rdi
  40de6f:	74 15                	je     40de86 <_ZN8Counters4openEi+0x116>
  40de71:	4c 89 e2             	mov    %r12,%rdx
  40de74:	be ff 00 00 00       	mov    $0xff,%esi
  40de79:	4c 89 14 24          	mov    %r10,(%rsp)
  40de7d:	e8 fe 52 ff ff       	callq  403180 <memset@plt>
  40de82:	4c 8b 14 24          	mov    (%rsp),%r10
  40de86:	4d 39 d5             	cmp    %r10,%r13
  40de89:	75 8d                	jne    40de18 <_ZN8Counters4openEi+0xa8>
  40de8b:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40de90:	4c 39 f8             	cmp    %r15,%rax
  40de93:	75 91                	jne    40de26 <_ZN8Counters4openEi+0xb6>
  40de95:	0f 1f 00             	nopl   (%rax)
  40de98:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40de9c:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40dea1:	89 c2                	mov    %eax,%edx
  40dea3:	31 c9                	xor    %ecx,%ecx
  40dea5:	bf 60 d8 40 00       	mov    $0x40d860,%edi
  40deaa:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
  40deaf:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40deb3:	e8 e8 54 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40deb8:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  40debc:	48 8b 75 08          	mov    0x8(%rbp),%rsi
  40dec0:	c6 85 90 00 00 00 01 	movb   $0x1,0x90(%rbp)
  40dec7:	48 39 d6             	cmp    %rdx,%rsi
  40deca:	74 24                	je     40def0 <_ZN8Counters4openEi+0x180>
  40decc:	b9 01 00 00 00       	mov    $0x1,%ecx
  40ded1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40ded8:	8b 02                	mov    (%rdx),%eax
  40deda:	48 83 c2 04          	add    $0x4,%rdx
  40dede:	f7 d0                	not    %eax
  40dee0:	c1 e8 1f             	shr    $0x1f,%eax
  40dee3:	21 c1                	and    %eax,%ecx
  40dee5:	48 39 f2             	cmp    %rsi,%rdx
  40dee8:	75 ee                	jne    40ded8 <_ZN8Counters4openEi+0x168>
  40deea:	88 8d 90 00 00 00    	mov    %cl,0x90(%rbp)
  40def0:	48 83 c4 48          	add    $0x48,%rsp
  40def4:	5b                   	pop    %rbx
  40def5:	5d                   	pop    %rbp
  40def6:	41 5c                	pop    %r12
  40def8:	41 5d                	pop    %r13
  40defa:	41 5e                	pop    %r14
  40defc:	41 5f                	pop    %r15
  40defe:	c3                   	retq   
  40deff:	90                   	nop
  40df00:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
  40df07:	ff ff 1f 
  40df0a:	48 39 c3             	cmp    %rax,%rbx
  40df0d:	77 7b                	ja     40df8a <_ZN8Counters4openEi+0x21a>
  40df0f:	48 85 db             	test   %rbx,%rbx
  40df12:	74 5c                	je     40df70 <_ZN8Counters4openEi+0x200>
  40df14:	4c 89 e7             	mov    %r12,%rdi
  40df17:	e8 84 53 ff ff       	callq  4032a0 <_Znwm@plt>
  40df1c:	4e 8d 2c 20          	lea    (%rax,%r12,1),%r13
  40df20:	49 89 c2             	mov    %rax,%r10
  40df23:	49 39 c5             	cmp    %rax,%r13
  40df26:	74 53                	je     40df7b <_ZN8Counters4openEi+0x20b>
  40df28:	be ff 00 00 00       	mov    $0xff,%esi
  40df2d:	48 89 c7             	mov    %rax,%rdi
  40df30:	4c 89 e2             	mov    %r12,%rdx
  40df33:	e8 48 52 ff ff       	callq  403180 <memset@plt>
  40df38:	49 8b 3e             	mov    (%r14),%rdi
  40df3b:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40df3f:	49 89 c2             	mov    %rax,%r10
  40df42:	48 29 fe             	sub    %rdi,%rsi
  40df45:	4c 89 e8             	mov    %r13,%rax
  40df48:	c4 c1 f9 6e ca       	vmovq  %r10,%xmm1
  40df4d:	c4 c3 f1 22 c5 01    	vpinsrq $0x1,%r13,%xmm1,%xmm0
  40df53:	49 89 46 10          	mov    %rax,0x10(%r14)
  40df57:	c4 c1 7a 7f 06       	vmovdqu %xmm0,(%r14)
  40df5c:	48 85 ff             	test   %rdi,%rdi
  40df5f:	0f 84 b7 fe ff ff    	je     40de1c <_ZN8Counters4openEi+0xac>
  40df65:	e8 46 53 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40df6a:	e9 ad fe ff ff       	jmpq   40de1c <_ZN8Counters4openEi+0xac>
  40df6f:	90                   	nop
  40df70:	4c 89 e0             	mov    %r12,%rax
  40df73:	45 31 d2             	xor    %r10d,%r10d
  40df76:	45 31 ed             	xor    %r13d,%r13d
  40df79:	eb cd                	jmp    40df48 <_ZN8Counters4openEi+0x1d8>
  40df7b:	49 8b 3e             	mov    (%r14),%rdi
  40df7e:	49 8b 76 10          	mov    0x10(%r14),%rsi
  40df82:	4c 89 e8             	mov    %r13,%rax
  40df85:	48 29 fe             	sub    %rdi,%rsi
  40df88:	eb be                	jmp    40df48 <_ZN8Counters4openEi+0x1d8>
  40df8a:	bf b8 04 41 00       	mov    $0x4104b8,%edi
  40df8f:	e8 cc 51 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40df94:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40df9b:	00 00 00 
  40df9e:	66 90                	xchg   %ax,%ax

000000000040dfa0 <_ZNK8Counters4readEv>:
  40dfa0:	55                   	push   %rbp
  40dfa1:	48 89 e5             	mov    %rsp,%rbp
  40dfa4:	41 57                	push   %r15
  40dfa6:	41 56                	push   %r14
  40dfa8:	41 55                	push   %r13
  40dfaa:	41 54                	push   %r12
  40dfac:	49 89 fc             	mov    %rdi,%r12
  40dfaf:	53                   	push   %rbx
  40dfb0:	48 83 ec 38          	sub    $0x38,%rsp
  40dfb4:	c5 fd 28 05 24 27 00 	vmovapd 0x2724(%rip),%ymm0        # 4106e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  40dfbb:	00 
  40dfbc:	48 8b 05 35 27 00 00 	mov    0x2735(%rip),%rax        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  40dfc3:	44 0f b6 b6 90 00 00 	movzbl 0x90(%rsi),%r14d
  40dfca:	00 
  40dfcb:	c5 fd 11 47 08       	vmovupd %ymm0,0x8(%rdi)
  40dfd0:	c6 07 00             	movb   $0x0,(%rdi)
  40dfd3:	c5 fb 12 05 1d 27 00 	vmovddup 0x271d(%rip),%xmm0        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  40dfda:	00 
  40dfdb:	48 89 47 38          	mov    %rax,0x38(%rdi)
  40dfdf:	c7 47 40 00 00 00 00 	movl   $0x0,0x40(%rdi)
  40dfe6:	c5 f9 11 47 28       	vmovupd %xmm0,0x28(%rdi)
  40dfeb:	45 84 f6             	test   %r14b,%r14b
  40dfee:	0f 84 44 01 00 00    	je     40e138 <_ZNK8Counters4readEv+0x198>
  40dff4:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
  40dff8:	48 8b 16             	mov    (%rsi),%rdx
  40dffb:	48 89 c8             	mov    %rcx,%rax
  40dffe:	48 29 d0             	sub    %rdx,%rax
  40e001:	48 c1 f8 02          	sar    $0x2,%rax
  40e005:	c6 07 01             	movb   $0x1,(%rdi)
  40e008:	89 47 40             	mov    %eax,0x40(%rdi)
  40e00b:	48 89 f3             	mov    %rsi,%rbx
  40e00e:	48 39 d1             	cmp    %rdx,%rcx
  40e011:	0f 84 8c 03 00 00    	je     40e3a3 <_ZNK8Counters4readEv+0x403>
  40e017:	45 31 ff             	xor    %r15d,%r15d
  40e01a:	c5 f8 77             	vzeroupper 
  40e01d:	eb 1e                	jmp    40e03d <_ZNK8Counters4readEv+0x9d>
  40e01f:	90                   	nop
  40e020:	45 31 f6             	xor    %r14d,%r14d
  40e023:	48 8b 13             	mov    (%rbx),%rdx
  40e026:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40e02a:	49 ff c7             	inc    %r15
  40e02d:	48 29 d0             	sub    %rdx,%rax
  40e030:	48 c1 f8 02          	sar    $0x2,%rax
  40e034:	49 39 c7             	cmp    %rax,%r15
  40e037:	0f 83 23 01 00 00    	jae    40e160 <_ZNK8Counters4readEv+0x1c0>
  40e03d:	42 8b 3c ba          	mov    (%rdx,%r15,4),%edi
  40e041:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e046:	ba 18 00 00 00       	mov    $0x18,%edx
  40e04b:	4e 8d 2c bd 00 00 00 	lea    0x0(,%r15,4),%r13
  40e052:	00 
  40e053:	e8 18 53 ff ff       	callq  403370 <read@plt>
  40e058:	48 83 f8 18          	cmp    $0x18,%rax
  40e05c:	0f 85 ee 00 00 00    	jne    40e150 <_ZNK8Counters4readEv+0x1b0>
  40e062:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e067:	48 85 c0             	test   %rax,%rax
  40e06a:	0f 84 e0 00 00 00    	je     40e150 <_ZNK8Counters4readEv+0x1b0>
  40e070:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e074:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e07a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  40e07f:	ba 01 00 00 00       	mov    $0x1,%edx
  40e084:	48 85 c0             	test   %rax,%rax
  40e087:	48 0f 45 d0          	cmovne %rax,%rdx
  40e08b:	62 f1 f7 08 7b d8    	vcvtusi2sd %rax,%xmm1,%xmm3
  40e091:	62 f1 f7 08 7b c2    	vcvtusi2sd %rdx,%xmm1,%xmm0
  40e097:	48 8b 43 18          	mov    0x18(%rbx),%rax
  40e09b:	42 8b 3c 28          	mov    (%rax,%r13,1),%edi
  40e09f:	c5 eb 5e c0          	vdivsd %xmm0,%xmm2,%xmm0
  40e0a3:	c4 c1 7b 5d 44 24 18 	vminsd 0x18(%r12),%xmm0,%xmm0
  40e0aa:	c4 c1 7b 11 44 24 18 	vmovsd %xmm0,0x18(%r12)
  40e0b1:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e0b8:	02 
  40e0b9:	c5 fb 59 c3          	vmulsd %xmm3,%xmm0,%xmm0
  40e0bd:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e0c1:	c4 c1 7b 58 44 24 08 	vaddsd 0x8(%r12),%xmm0,%xmm0
  40e0c8:	c4 c1 7b 11 44 24 08 	vmovsd %xmm0,0x8(%r12)
  40e0cf:	85 ff                	test   %edi,%edi
  40e0d1:	0f 88 49 ff ff ff    	js     40e020 <_ZNK8Counters4readEv+0x80>
  40e0d7:	ba 18 00 00 00       	mov    $0x18,%edx
  40e0dc:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e0e1:	e8 8a 52 ff ff       	callq  403370 <read@plt>
  40e0e6:	48 83 f8 18          	cmp    $0x18,%rax
  40e0ea:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e0ee:	0f 85 2c ff ff ff    	jne    40e020 <_ZNK8Counters4readEv+0x80>
  40e0f4:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e0f9:	48 85 c0             	test   %rax,%rax
  40e0fc:	0f 84 1e ff ff ff    	je     40e020 <_ZNK8Counters4readEv+0x80>
  40e102:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e109:	03 
  40e10a:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e111:	02 
  40e112:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e116:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e11c:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e120:	c4 c1 7b 58 44 24 10 	vaddsd 0x10(%r12),%xmm0,%xmm0
  40e127:	c4 c1 7b 11 44 24 10 	vmovsd %xmm0,0x10(%r12)
  40e12e:	e9 f0 fe ff ff       	jmpq   40e023 <_ZNK8Counters4readEv+0x83>
  40e133:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40e138:	c5 f8 77             	vzeroupper 
  40e13b:	48 83 c4 38          	add    $0x38,%rsp
  40e13f:	5b                   	pop    %rbx
  40e140:	4c 89 e0             	mov    %r12,%rax
  40e143:	41 5c                	pop    %r12
  40e145:	41 5d                	pop    %r13
  40e147:	41 5e                	pop    %r14
  40e149:	41 5f                	pop    %r15
  40e14b:	5d                   	pop    %rbp
  40e14c:	c3                   	retq   
  40e14d:	0f 1f 00             	nopl   (%rax)
  40e150:	41 c6 04 24 00       	movb   $0x0,(%r12)
  40e155:	eb e4                	jmp    40e13b <_ZNK8Counters4readEv+0x19b>
  40e157:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40e15e:	00 00 
  40e160:	45 84 f6             	test   %r14b,%r14b
  40e163:	75 0c                	jne    40e171 <_ZNK8Counters4readEv+0x1d1>
  40e165:	48 8b 05 8c 25 00 00 	mov    0x258c(%rip),%rax        # 4106f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1f8>
  40e16c:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  40e171:	4c 8b 7b 30          	mov    0x30(%rbx),%r15
  40e175:	4c 8b 73 38          	mov    0x38(%rbx),%r14
  40e179:	4d 39 f7             	cmp    %r14,%r15
  40e17c:	0f 84 29 02 00 00    	je     40e3ab <_ZNK8Counters4readEv+0x40b>
  40e182:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  40e186:	c5 fb 11 64 24 08    	vmovsd %xmm4,0x8(%rsp)
  40e18c:	c4 c1 f9 7e e5       	vmovq  %xmm4,%r13
  40e191:	eb 5d                	jmp    40e1f0 <_ZNK8Counters4readEv+0x250>
  40e193:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40e198:	ba 18 00 00 00       	mov    $0x18,%edx
  40e19d:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e1a2:	e8 c9 51 ff ff       	callq  403370 <read@plt>
  40e1a7:	48 83 f8 18          	cmp    $0x18,%rax
  40e1ab:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e1af:	75 46                	jne    40e1f7 <_ZNK8Counters4readEv+0x257>
  40e1b1:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e1b6:	48 85 c0             	test   %rax,%rax
  40e1b9:	74 3c                	je     40e1f7 <_ZNK8Counters4readEv+0x257>
  40e1bb:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e1c2:	03 
  40e1c3:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e1ca:	02 
  40e1cb:	c4 c1 f9 6e ed       	vmovq  %r13,%xmm5
  40e1d0:	49 83 c7 04          	add    $0x4,%r15
  40e1d4:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e1d8:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e1de:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e1e2:	c5 d3 58 e0          	vaddsd %xmm0,%xmm5,%xmm4
  40e1e6:	c4 c1 f9 7e e5       	vmovq  %xmm4,%r13
  40e1eb:	4d 39 fe             	cmp    %r15,%r14
  40e1ee:	74 11                	je     40e201 <_ZNK8Counters4readEv+0x261>
  40e1f0:	41 8b 3f             	mov    (%r15),%edi
  40e1f3:	85 ff                	test   %edi,%edi
  40e1f5:	79 a1                	jns    40e198 <_ZNK8Counters4readEv+0x1f8>
  40e1f7:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40e1fe:	00 f0 bf 
  40e201:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
  40e205:	4c 8b 73 50          	mov    0x50(%rbx),%r14
  40e209:	4d 89 6c 24 20       	mov    %r13,0x20(%r12)
  40e20e:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  40e213:	4d 39 f7             	cmp    %r14,%r15
  40e216:	75 60                	jne    40e278 <_ZNK8Counters4readEv+0x2d8>
  40e218:	eb 6f                	jmp    40e289 <_ZNK8Counters4readEv+0x2e9>
  40e21a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40e220:	ba 18 00 00 00       	mov    $0x18,%edx
  40e225:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e22a:	e8 41 51 ff ff       	callq  403370 <read@plt>
  40e22f:	48 83 f8 18          	cmp    $0x18,%rax
  40e233:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e237:	75 46                	jne    40e27f <_ZNK8Counters4readEv+0x2df>
  40e239:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e23e:	48 85 c0             	test   %rax,%rax
  40e241:	74 3c                	je     40e27f <_ZNK8Counters4readEv+0x2df>
  40e243:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e24a:	03 
  40e24b:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e252:	02 
  40e253:	c4 c1 f9 6e fd       	vmovq  %r13,%xmm7
  40e258:	49 83 c7 04          	add    $0x4,%r15
  40e25c:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e260:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e266:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e26a:	c5 c3 58 f0          	vaddsd %xmm0,%xmm7,%xmm6
  40e26e:	c4 c1 f9 7e f5       	vmovq  %xmm6,%r13
  40e273:	4d 39 fe             	cmp    %r15,%r14
  40e276:	74 11                	je     40e289 <_ZNK8Counters4readEv+0x2e9>
  40e278:	41 8b 3f             	mov    (%r15),%edi
  40e27b:	85 ff                	test   %edi,%edi
  40e27d:	79 a1                	jns    40e220 <_ZNK8Counters4readEv+0x280>
  40e27f:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40e286:	00 f0 bf 
  40e289:	4c 8b 7b 60          	mov    0x60(%rbx),%r15
  40e28d:	4c 8b 73 68          	mov    0x68(%rbx),%r14
  40e291:	4d 89 6c 24 28       	mov    %r13,0x28(%r12)
  40e296:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  40e29b:	4d 39 f7             	cmp    %r14,%r15
  40e29e:	75 60                	jne    40e300 <_ZNK8Counters4readEv+0x360>
  40e2a0:	eb 6f                	jmp    40e311 <_ZNK8Counters4readEv+0x371>
  40e2a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40e2a8:	ba 18 00 00 00       	mov    $0x18,%edx
  40e2ad:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e2b2:	e8 b9 50 ff ff       	callq  403370 <read@plt>
  40e2b7:	48 83 f8 18          	cmp    $0x18,%rax
  40e2bb:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e2bf:	75 46                	jne    40e307 <_ZNK8Counters4readEv+0x367>
  40e2c1:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e2c6:	48 85 c0             	test   %rax,%rax
  40e2c9:	74 3c                	je     40e307 <_ZNK8Counters4readEv+0x367>
  40e2cb:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e2d2:	03 
  40e2d3:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e2da:	02 
  40e2db:	c4 c1 f9 6e ed       	vmovq  %r13,%xmm5
  40e2e0:	49 83 c7 04          	add    $0x4,%r15
  40e2e4:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e2e8:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e2ee:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e2f2:	c5 d3 58 e0          	vaddsd %xmm0,%xmm5,%xmm4
  40e2f6:	c4 c1 f9 7e e5       	vmovq  %xmm4,%r13
  40e2fb:	4d 39 fe             	cmp    %r15,%r14
  40e2fe:	74 11                	je     40e311 <_ZNK8Counters4readEv+0x371>
  40e300:	41 8b 3f             	mov    (%r15),%edi
  40e303:	85 ff                	test   %edi,%edi
  40e305:	79 a1                	jns    40e2a8 <_ZNK8Counters4readEv+0x308>
  40e307:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40e30e:	00 f0 bf 
  40e311:	4c 8b 73 78          	mov    0x78(%rbx),%r14
  40e315:	48 8b 9b 80 00 00 00 	mov    0x80(%rbx),%rbx
  40e31c:	4d 89 6c 24 30       	mov    %r13,0x30(%r12)
  40e321:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
  40e326:	49 39 de             	cmp    %rbx,%r14
  40e329:	75 5d                	jne    40e388 <_ZNK8Counters4readEv+0x3e8>
  40e32b:	eb 6c                	jmp    40e399 <_ZNK8Counters4readEv+0x3f9>
  40e32d:	0f 1f 00             	nopl   (%rax)
  40e330:	ba 18 00 00 00       	mov    $0x18,%edx
  40e335:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40e33a:	e8 31 50 ff ff       	callq  403370 <read@plt>
  40e33f:	48 83 f8 18          	cmp    $0x18,%rax
  40e343:	75 4a                	jne    40e38f <_ZNK8Counters4readEv+0x3ef>
  40e345:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40e34a:	48 85 c0             	test   %rax,%rax
  40e34d:	74 40                	je     40e38f <_ZNK8Counters4readEv+0x3ef>
  40e34f:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  40e353:	62 f1 f7 08 7b 54 24 	vcvtusi2sdq 0x18(%rsp),%xmm1,%xmm2
  40e35a:	03 
  40e35b:	62 f1 f7 08 7b 44 24 	vcvtusi2sdq 0x10(%rsp),%xmm1,%xmm0
  40e362:	02 
  40e363:	c4 c1 f9 6e fd       	vmovq  %r13,%xmm7
  40e368:	49 83 c6 04          	add    $0x4,%r14
  40e36c:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  40e370:	62 f1 f7 08 7b d0    	vcvtusi2sd %rax,%xmm1,%xmm2
  40e376:	c5 fb 5e c2          	vdivsd %xmm2,%xmm0,%xmm0
  40e37a:	c5 c3 58 f0          	vaddsd %xmm0,%xmm7,%xmm6
  40e37e:	c4 c1 f9 7e f5       	vmovq  %xmm6,%r13
  40e383:	4c 39 f3             	cmp    %r14,%rbx
  40e386:	74 11                	je     40e399 <_ZNK8Counters4readEv+0x3f9>
  40e388:	41 8b 3e             	mov    (%r14),%edi
  40e38b:	85 ff                	test   %edi,%edi
  40e38d:	79 a1                	jns    40e330 <_ZNK8Counters4readEv+0x390>
  40e38f:	49 bd 00 00 00 00 00 	movabs $0xbff0000000000000,%r13
  40e396:	00 f0 bf 
  40e399:	4d 89 6c 24 38       	mov    %r13,0x38(%r12)
  40e39e:	e9 98 fd ff ff       	jmpq   40e13b <_ZNK8Counters4readEv+0x19b>
  40e3a3:	c5 f8 77             	vzeroupper 
  40e3a6:	e9 c6 fd ff ff       	jmpq   40e171 <_ZNK8Counters4readEv+0x1d1>
  40e3ab:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
  40e3af:	c5 fb 11 6c 24 08    	vmovsd %xmm5,0x8(%rsp)
  40e3b5:	c4 c1 f9 7e ed       	vmovq  %xmm5,%r13
  40e3ba:	e9 42 fe ff ff       	jmpq   40e201 <_ZNK8Counters4readEv+0x261>
  40e3bf:	90                   	nop

000000000040e3c0 <_ZN8CountersD1Ev>:
  40e3c0:	41 56                	push   %r14
  40e3c2:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40e3c6:	41 55                	push   %r13
  40e3c8:	49 89 fd             	mov    %rdi,%r13
  40e3cb:	41 54                	push   %r12
  40e3cd:	55                   	push   %rbp
  40e3ce:	53                   	push   %rbx
  40e3cf:	48 83 ec 30          	sub    $0x30,%rsp
  40e3d3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40e3d8:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40e3dc:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40e3e1:	48 8d 47 48          	lea    0x48(%rdi),%rax
  40e3e5:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40e3ea:	48 8d 47 60          	lea    0x60(%rdi),%rax
  40e3ee:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  40e3f3:	48 89 3c 24          	mov    %rdi,(%rsp)
  40e3f7:	48 8d 47 78          	lea    0x78(%rdi),%rax
  40e3fb:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  40e401:	c5 f9 7f 44 24 20    	vmovdqa %xmm0,0x20(%rsp)
  40e407:	49 89 e4             	mov    %rsp,%r12
  40e40a:	4c 8d 74 24 30       	lea    0x30(%rsp),%r14
  40e40f:	90                   	nop
  40e410:	49 8b 04 24          	mov    (%r12),%rax
  40e414:	48 8b 18             	mov    (%rax),%rbx
  40e417:	48 8b 68 08          	mov    0x8(%rax),%rbp
  40e41b:	48 39 dd             	cmp    %rbx,%rbp
  40e41e:	74 14                	je     40e434 <_ZN8CountersD1Ev+0x74>
  40e420:	8b 3b                	mov    (%rbx),%edi
  40e422:	85 ff                	test   %edi,%edi
  40e424:	78 05                	js     40e42b <_ZN8CountersD1Ev+0x6b>
  40e426:	e8 85 50 ff ff       	callq  4034b0 <close@plt>
  40e42b:	48 83 c3 04          	add    $0x4,%rbx
  40e42f:	48 39 dd             	cmp    %rbx,%rbp
  40e432:	75 ec                	jne    40e420 <_ZN8CountersD1Ev+0x60>
  40e434:	49 83 c4 08          	add    $0x8,%r12
  40e438:	4d 39 e6             	cmp    %r12,%r14
  40e43b:	75 d3                	jne    40e410 <_ZN8CountersD1Ev+0x50>
  40e43d:	49 8b 7d 78          	mov    0x78(%r13),%rdi
  40e441:	48 85 ff             	test   %rdi,%rdi
  40e444:	74 0f                	je     40e455 <_ZN8CountersD1Ev+0x95>
  40e446:	49 8b b5 88 00 00 00 	mov    0x88(%r13),%rsi
  40e44d:	48 29 fe             	sub    %rdi,%rsi
  40e450:	e8 5b 4e ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40e455:	49 8b 7d 60          	mov    0x60(%r13),%rdi
  40e459:	48 85 ff             	test   %rdi,%rdi
  40e45c:	74 0c                	je     40e46a <_ZN8CountersD1Ev+0xaa>
  40e45e:	49 8b 75 70          	mov    0x70(%r13),%rsi
  40e462:	48 29 fe             	sub    %rdi,%rsi
  40e465:	e8 46 4e ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40e46a:	49 8b 7d 48          	mov    0x48(%r13),%rdi
  40e46e:	48 85 ff             	test   %rdi,%rdi
  40e471:	74 0c                	je     40e47f <_ZN8CountersD1Ev+0xbf>
  40e473:	49 8b 75 58          	mov    0x58(%r13),%rsi
  40e477:	48 29 fe             	sub    %rdi,%rsi
  40e47a:	e8 31 4e ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40e47f:	49 8b 7d 30          	mov    0x30(%r13),%rdi
  40e483:	48 85 ff             	test   %rdi,%rdi
  40e486:	74 0c                	je     40e494 <_ZN8CountersD1Ev+0xd4>
  40e488:	49 8b 75 40          	mov    0x40(%r13),%rsi
  40e48c:	48 29 fe             	sub    %rdi,%rsi
  40e48f:	e8 1c 4e ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40e494:	49 8b 7d 18          	mov    0x18(%r13),%rdi
  40e498:	48 85 ff             	test   %rdi,%rdi
  40e49b:	74 0c                	je     40e4a9 <_ZN8CountersD1Ev+0xe9>
  40e49d:	49 8b 75 28          	mov    0x28(%r13),%rsi
  40e4a1:	48 29 fe             	sub    %rdi,%rsi
  40e4a4:	e8 07 4e ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40e4a9:	49 8b 7d 00          	mov    0x0(%r13),%rdi
  40e4ad:	48 85 ff             	test   %rdi,%rdi
  40e4b0:	74 18                	je     40e4ca <_ZN8CountersD1Ev+0x10a>
  40e4b2:	49 8b 75 10          	mov    0x10(%r13),%rsi
  40e4b6:	48 83 c4 30          	add    $0x30,%rsp
  40e4ba:	5b                   	pop    %rbx
  40e4bb:	5d                   	pop    %rbp
  40e4bc:	41 5c                	pop    %r12
  40e4be:	41 5d                	pop    %r13
  40e4c0:	48 29 fe             	sub    %rdi,%rsi
  40e4c3:	41 5e                	pop    %r14
  40e4c5:	e9 e6 4d ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  40e4ca:	48 83 c4 30          	add    $0x30,%rsp
  40e4ce:	5b                   	pop    %rbx
  40e4cf:	5d                   	pop    %rbp
  40e4d0:	41 5c                	pop    %r12
  40e4d2:	41 5d                	pop    %r13
  40e4d4:	41 5e                	pop    %r14
  40e4d6:	c3                   	retq   
  40e4d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40e4de:	00 00 

000000000040e4e0 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>:
  40e4e0:	41 57                	push   %r15
  40e4e2:	49 89 ff             	mov    %rdi,%r15
  40e4e5:	41 56                	push   %r14
  40e4e7:	41 55                	push   %r13
  40e4e9:	49 89 f5             	mov    %rsi,%r13
  40e4ec:	41 54                	push   %r12
  40e4ee:	49 89 cc             	mov    %rcx,%r12
  40e4f1:	55                   	push   %rbp
  40e4f2:	48 89 d5             	mov    %rdx,%rbp
  40e4f5:	53                   	push   %rbx
  40e4f6:	48 83 ec 28          	sub    $0x28,%rsp
  40e4fa:	44 89 44 24 0c       	mov    %r8d,0xc(%rsp)
  40e4ff:	e8 3c 4b ff ff       	callq  403040 <__errno_location@plt>
  40e504:	44 8b 30             	mov    (%rax),%r14d
  40e507:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40e50d:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  40e511:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  40e516:	48 89 ef             	mov    %rbp,%rdi
  40e519:	48 89 c3             	mov    %rax,%rbx
  40e51c:	41 ff d7             	callq  *%r15
  40e51f:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40e524:	48 39 e9             	cmp    %rbp,%rcx
  40e527:	74 3f                	je     40e568 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x88>
  40e529:	8b 33                	mov    (%rbx),%esi
  40e52b:	83 fe 22             	cmp    $0x22,%esi
  40e52e:	74 30                	je     40e560 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  40e530:	ba 00 00 00 80       	mov    $0x80000000,%edx
  40e535:	48 01 c2             	add    %rax,%rdx
  40e538:	48 c1 ea 20          	shr    $0x20,%rdx
  40e53c:	75 22                	jne    40e560 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  40e53e:	4d 85 e4             	test   %r12,%r12
  40e541:	74 07                	je     40e54a <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x6a>
  40e543:	48 29 e9             	sub    %rbp,%rcx
  40e546:	49 89 0c 24          	mov    %rcx,(%r12)
  40e54a:	85 f6                	test   %esi,%esi
  40e54c:	75 03                	jne    40e551 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x71>
  40e54e:	44 89 33             	mov    %r14d,(%rbx)
  40e551:	48 83 c4 28          	add    $0x28,%rsp
  40e555:	5b                   	pop    %rbx
  40e556:	5d                   	pop    %rbp
  40e557:	41 5c                	pop    %r12
  40e559:	41 5d                	pop    %r13
  40e55b:	41 5e                	pop    %r14
  40e55d:	41 5f                	pop    %r15
  40e55f:	c3                   	retq   
  40e560:	4c 89 ef             	mov    %r13,%rdi
  40e563:	e8 18 4e ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  40e568:	4c 89 ef             	mov    %r13,%rdi
  40e56b:	e8 30 4c ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40e570:	48 89 c7             	mov    %rax,%rdi
  40e573:	83 3b 00             	cmpl   $0x0,(%rbx)
  40e576:	75 03                	jne    40e57b <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x9b>
  40e578:	44 89 33             	mov    %r14d,(%rbx)
  40e57b:	c5 f8 77             	vzeroupper 
  40e57e:	e8 cd 4e ff ff       	callq  403450 <_Unwind_Resume@plt>
  40e583:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40e58a:	00 00 00 
  40e58d:	0f 1f 00             	nopl   (%rax)

000000000040e590 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>:
  40e590:	41 55                	push   %r13
  40e592:	49 89 f5             	mov    %rsi,%r13
  40e595:	41 54                	push   %r12
  40e597:	49 89 fc             	mov    %rdi,%r12
  40e59a:	48 89 f7             	mov    %rsi,%rdi
  40e59d:	55                   	push   %rbp
  40e59e:	48 89 d5             	mov    %rdx,%rbp
  40e5a1:	e8 9a 4b ff ff       	callq  403140 <strlen@plt>
  40e5a6:	49 89 c0             	mov    %rax,%r8
  40e5a9:	4c 89 e9             	mov    %r13,%rcx
  40e5ac:	31 d2                	xor    %edx,%edx
  40e5ae:	31 f6                	xor    %esi,%esi
  40e5b0:	48 89 ef             	mov    %rbp,%rdi
  40e5b3:	e8 08 4e ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40e5b8:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
  40e5bd:	49 89 14 24          	mov    %rdx,(%r12)
  40e5c1:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40e5c5:	48 8b 08             	mov    (%rax),%rcx
  40e5c8:	48 39 d1             	cmp    %rdx,%rcx
  40e5cb:	74 33                	je     40e600 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_+0x70>
  40e5cd:	49 89 0c 24          	mov    %rcx,(%r12)
  40e5d1:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40e5d5:	49 89 4c 24 10       	mov    %rcx,0x10(%r12)
  40e5da:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40e5de:	48 89 10             	mov    %rdx,(%rax)
  40e5e1:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40e5e8:	00 
  40e5e9:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
  40e5ee:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40e5f2:	4c 89 e0             	mov    %r12,%rax
  40e5f5:	5d                   	pop    %rbp
  40e5f6:	41 5c                	pop    %r12
  40e5f8:	41 5d                	pop    %r13
  40e5fa:	c3                   	retq   
  40e5fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40e600:	c5 fa 6f 40 10       	vmovdqu 0x10(%rax),%xmm0
  40e605:	c4 c1 7a 7f 44 24 10 	vmovdqu %xmm0,0x10(%r12)
  40e60c:	eb cc                	jmp    40e5da <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_+0x4a>
  40e60e:	66 90                	xchg   %ax,%ax

000000000040e610 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>:
  40e610:	41 55                	push   %r13
  40e612:	49 89 d5             	mov    %rdx,%r13
  40e615:	41 54                	push   %r12
  40e617:	49 89 fc             	mov    %rdi,%r12
  40e61a:	48 89 d7             	mov    %rdx,%rdi
  40e61d:	55                   	push   %rbp
  40e61e:	48 89 f5             	mov    %rsi,%rbp
  40e621:	e8 1a 4b ff ff       	callq  403140 <strlen@plt>
  40e626:	48 89 c2             	mov    %rax,%rdx
  40e629:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40e630:	ff ff 3f 
  40e633:	48 2b 45 08          	sub    0x8(%rbp),%rax
  40e637:	48 39 c2             	cmp    %rax,%rdx
  40e63a:	77 62                	ja     40e69e <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_+0x8e>
  40e63c:	4c 89 ee             	mov    %r13,%rsi
  40e63f:	48 89 ef             	mov    %rbp,%rdi
  40e642:	e8 a9 4a ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40e647:	49 8d 54 24 10       	lea    0x10(%r12),%rdx
  40e64c:	49 89 14 24          	mov    %rdx,(%r12)
  40e650:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40e654:	48 8b 08             	mov    (%rax),%rcx
  40e657:	48 39 d1             	cmp    %rdx,%rcx
  40e65a:	74 34                	je     40e690 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_+0x80>
  40e65c:	49 89 0c 24          	mov    %rcx,(%r12)
  40e660:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40e664:	49 89 4c 24 10       	mov    %rcx,0x10(%r12)
  40e669:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40e66d:	48 89 10             	mov    %rdx,(%rax)
  40e670:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40e677:	00 
  40e678:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
  40e67d:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40e681:	4c 89 e0             	mov    %r12,%rax
  40e684:	5d                   	pop    %rbp
  40e685:	41 5c                	pop    %r12
  40e687:	41 5d                	pop    %r13
  40e689:	c3                   	retq   
  40e68a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40e690:	c5 fa 6f 40 10       	vmovdqu 0x10(%rax),%xmm0
  40e695:	c4 c1 7a 7f 44 24 10 	vmovdqu %xmm0,0x10(%r12)
  40e69c:	eb cb                	jmp    40e669 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_+0x59>
  40e69e:	bf e9 04 41 00       	mov    $0x4104e9,%edi
  40e6a3:	e8 b8 4a ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40e6a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40e6af:	00 

000000000040e6b0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_>:
  40e6b0:	55                   	push   %rbp
  40e6b1:	48 89 f0             	mov    %rsi,%rax
  40e6b4:	48 89 e5             	mov    %rsp,%rbp
  40e6b7:	41 55                	push   %r13
  40e6b9:	41 54                	push   %r12
  40e6bb:	49 89 d4             	mov    %rdx,%r12
  40e6be:	53                   	push   %rbx
  40e6bf:	48 89 fb             	mov    %rdi,%rbx
  40e6c2:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40e6c6:	48 8b 3f             	mov    (%rdi),%rdi
  40e6c9:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40e6cd:	48 29 fe             	sub    %rdi,%rsi
  40e6d0:	48 89 f2             	mov    %rsi,%rdx
  40e6d3:	48 c1 fa 03          	sar    $0x3,%rdx
  40e6d7:	48 39 c2             	cmp    %rax,%rdx
  40e6da:	0f 82 c8 01 00 00    	jb     40e8a8 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1f8>
  40e6e0:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  40e6e4:	48 89 ce             	mov    %rcx,%rsi
  40e6e7:	48 29 fe             	sub    %rdi,%rsi
  40e6ea:	48 c1 fe 03          	sar    $0x3,%rsi
  40e6ee:	48 39 f0             	cmp    %rsi,%rax
  40e6f1:	0f 86 09 01 00 00    	jbe    40e800 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x150>
  40e6f7:	4d 8b 0c 24          	mov    (%r12),%r9
  40e6fb:	48 39 cf             	cmp    %rcx,%rdi
  40e6fe:	74 6e                	je     40e76e <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xbe>
  40e700:	4c 8d 41 f8          	lea    -0x8(%rcx),%r8
  40e704:	49 29 f8             	sub    %rdi,%r8
  40e707:	4d 89 c2             	mov    %r8,%r10
  40e70a:	49 c1 ea 03          	shr    $0x3,%r10
  40e70e:	48 89 fa             	mov    %rdi,%rdx
  40e711:	49 ff c2             	inc    %r10
  40e714:	49 83 f8 10          	cmp    $0x10,%r8
  40e718:	76 33                	jbe    40e74d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x9d>
  40e71a:	4d 89 d0             	mov    %r10,%r8
  40e71d:	49 c1 e8 02          	shr    $0x2,%r8
  40e721:	49 c1 e0 05          	shl    $0x5,%r8
  40e725:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40e72b:	49 01 f8             	add    %rdi,%r8
  40e72e:	66 90                	xchg   %ax,%ax
  40e730:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40e734:	48 83 c2 20          	add    $0x20,%rdx
  40e738:	49 39 d0             	cmp    %rdx,%r8
  40e73b:	75 f3                	jne    40e730 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x80>
  40e73d:	4c 89 d2             	mov    %r10,%rdx
  40e740:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  40e744:	48 8d 3c d7          	lea    (%rdi,%rdx,8),%rdi
  40e748:	49 39 d2             	cmp    %rdx,%r10
  40e74b:	74 1d                	je     40e76a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40e74d:	48 8d 57 08          	lea    0x8(%rdi),%rdx
  40e751:	4c 89 0f             	mov    %r9,(%rdi)
  40e754:	48 39 d1             	cmp    %rdx,%rcx
  40e757:	74 11                	je     40e76a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40e759:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40e75d:	4c 89 4f 08          	mov    %r9,0x8(%rdi)
  40e761:	48 39 d1             	cmp    %rdx,%rcx
  40e764:	74 04                	je     40e76a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40e766:	4c 89 4f 10          	mov    %r9,0x10(%rdi)
  40e76a:	4d 8b 0c 24          	mov    (%r12),%r9
  40e76e:	48 29 f0             	sub    %rsi,%rax
  40e771:	48 c1 e0 03          	shl    $0x3,%rax
  40e775:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
  40e779:	48 39 f9             	cmp    %rdi,%rcx
  40e77c:	74 6c                	je     40e7ea <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40e77e:	48 83 e8 08          	sub    $0x8,%rax
  40e782:	48 89 c6             	mov    %rax,%rsi
  40e785:	48 c1 ee 03          	shr    $0x3,%rsi
  40e789:	48 89 ca             	mov    %rcx,%rdx
  40e78c:	48 ff c6             	inc    %rsi
  40e78f:	48 83 f8 10          	cmp    $0x10,%rax
  40e793:	76 38                	jbe    40e7cd <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x11d>
  40e795:	48 89 f0             	mov    %rsi,%rax
  40e798:	48 c1 e8 02          	shr    $0x2,%rax
  40e79c:	48 c1 e0 05          	shl    $0x5,%rax
  40e7a0:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40e7a6:	48 01 c8             	add    %rcx,%rax
  40e7a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40e7b0:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40e7b4:	48 83 c2 20          	add    $0x20,%rdx
  40e7b8:	48 39 d0             	cmp    %rdx,%rax
  40e7bb:	75 f3                	jne    40e7b0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x100>
  40e7bd:	48 89 f0             	mov    %rsi,%rax
  40e7c0:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40e7c4:	48 8d 0c c1          	lea    (%rcx,%rax,8),%rcx
  40e7c8:	48 39 c6             	cmp    %rax,%rsi
  40e7cb:	74 1d                	je     40e7ea <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40e7cd:	48 8d 41 08          	lea    0x8(%rcx),%rax
  40e7d1:	4c 89 09             	mov    %r9,(%rcx)
  40e7d4:	48 39 c7             	cmp    %rax,%rdi
  40e7d7:	74 11                	je     40e7ea <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40e7d9:	48 8d 41 10          	lea    0x10(%rcx),%rax
  40e7dd:	4c 89 49 08          	mov    %r9,0x8(%rcx)
  40e7e1:	48 39 c7             	cmp    %rax,%rdi
  40e7e4:	74 04                	je     40e7ea <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40e7e6:	4c 89 49 10          	mov    %r9,0x10(%rcx)
  40e7ea:	48 89 7b 08          	mov    %rdi,0x8(%rbx)
  40e7ee:	c5 f8 77             	vzeroupper 
  40e7f1:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40e7f5:	5b                   	pop    %rbx
  40e7f6:	41 5c                	pop    %r12
  40e7f8:	41 5d                	pop    %r13
  40e7fa:	5d                   	pop    %rbp
  40e7fb:	c3                   	retq   
  40e7fc:	0f 1f 40 00          	nopl   0x0(%rax)
  40e800:	48 89 fe             	mov    %rdi,%rsi
  40e803:	48 85 c0             	test   %rax,%rax
  40e806:	0f 84 85 00 00 00    	je     40e891 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40e80c:	48 c1 e0 03          	shl    $0x3,%rax
  40e810:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
  40e814:	4d 8b 0c 24          	mov    (%r12),%r9
  40e818:	48 39 f7             	cmp    %rsi,%rdi
  40e81b:	74 74                	je     40e891 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40e81d:	48 83 e8 08          	sub    $0x8,%rax
  40e821:	49 89 c0             	mov    %rax,%r8
  40e824:	49 c1 e8 03          	shr    $0x3,%r8
  40e828:	48 89 fa             	mov    %rdi,%rdx
  40e82b:	49 ff c0             	inc    %r8
  40e82e:	48 83 f8 10          	cmp    $0x10,%rax
  40e832:	76 40                	jbe    40e874 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1c4>
  40e834:	4c 89 c0             	mov    %r8,%rax
  40e837:	48 c1 e8 02          	shr    $0x2,%rax
  40e83b:	48 c1 e0 05          	shl    $0x5,%rax
  40e83f:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40e845:	48 01 f8             	add    %rdi,%rax
  40e848:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40e84f:	00 
  40e850:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40e854:	48 83 c2 20          	add    $0x20,%rdx
  40e858:	48 39 d0             	cmp    %rdx,%rax
  40e85b:	75 f3                	jne    40e850 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1a0>
  40e85d:	4c 89 c0             	mov    %r8,%rax
  40e860:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40e864:	48 8d 3c c7          	lea    (%rdi,%rax,8),%rdi
  40e868:	49 39 c0             	cmp    %rax,%r8
  40e86b:	0f 84 1f 01 00 00    	je     40e990 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2e0>
  40e871:	c5 f8 77             	vzeroupper 
  40e874:	48 8d 47 08          	lea    0x8(%rdi),%rax
  40e878:	4c 89 0f             	mov    %r9,(%rdi)
  40e87b:	48 39 c6             	cmp    %rax,%rsi
  40e87e:	74 11                	je     40e891 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40e880:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40e884:	4c 89 4f 08          	mov    %r9,0x8(%rdi)
  40e888:	48 39 c6             	cmp    %rax,%rsi
  40e88b:	74 04                	je     40e891 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40e88d:	4c 89 4f 10          	mov    %r9,0x10(%rdi)
  40e891:	48 39 f1             	cmp    %rsi,%rcx
  40e894:	74 04                	je     40e89a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1ea>
  40e896:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  40e89a:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40e89e:	5b                   	pop    %rbx
  40e89f:	41 5c                	pop    %r12
  40e8a1:	41 5d                	pop    %r13
  40e8a3:	5d                   	pop    %rbp
  40e8a4:	c3                   	retq   
  40e8a5:	0f 1f 00             	nopl   (%rax)
  40e8a8:	48 89 c1             	mov    %rax,%rcx
  40e8ab:	48 c1 e9 3c          	shr    $0x3c,%rcx
  40e8af:	0f 85 f0 00 00 00    	jne    40e9a5 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2f5>
  40e8b5:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  40e8bc:	00 
  40e8bd:	48 85 c0             	test   %rax,%rax
  40e8c0:	0f 84 c2 00 00 00    	je     40e988 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2d8>
  40e8c6:	4c 89 ef             	mov    %r13,%rdi
  40e8c9:	e8 d2 49 ff ff       	callq  4032a0 <_Znwm@plt>
  40e8ce:	4e 8d 04 28          	lea    (%rax,%r13,1),%r8
  40e8d2:	49 8b 3c 24          	mov    (%r12),%rdi
  40e8d6:	48 89 c2             	mov    %rax,%rdx
  40e8d9:	49 39 c0             	cmp    %rax,%r8
  40e8dc:	74 6f                	je     40e94d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40e8de:	49 83 ed 08          	sub    $0x8,%r13
  40e8e2:	4c 89 ee             	mov    %r13,%rsi
  40e8e5:	48 c1 ee 03          	shr    $0x3,%rsi
  40e8e9:	48 ff c6             	inc    %rsi
  40e8ec:	49 83 fd 10          	cmp    $0x10,%r13
  40e8f0:	76 3e                	jbe    40e930 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x280>
  40e8f2:	48 89 f1             	mov    %rsi,%rcx
  40e8f5:	48 c1 e9 02          	shr    $0x2,%rcx
  40e8f9:	48 c1 e1 05          	shl    $0x5,%rcx
  40e8fd:	62 f2 fd 28 7c c7    	vpbroadcastq %rdi,%ymm0
  40e903:	48 01 c1             	add    %rax,%rcx
  40e906:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40e90d:	00 00 00 
  40e910:	c5 fe 7f 00          	vmovdqu %ymm0,(%rax)
  40e914:	48 83 c0 20          	add    $0x20,%rax
  40e918:	48 39 c1             	cmp    %rax,%rcx
  40e91b:	75 f3                	jne    40e910 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x260>
  40e91d:	48 89 f1             	mov    %rsi,%rcx
  40e920:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
  40e924:	48 8d 04 ca          	lea    (%rdx,%rcx,8),%rax
  40e928:	48 39 f1             	cmp    %rsi,%rcx
  40e92b:	74 73                	je     40e9a0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2f0>
  40e92d:	c5 f8 77             	vzeroupper 
  40e930:	48 8d 48 08          	lea    0x8(%rax),%rcx
  40e934:	48 89 38             	mov    %rdi,(%rax)
  40e937:	49 39 c8             	cmp    %rcx,%r8
  40e93a:	74 11                	je     40e94d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40e93c:	48 8d 48 10          	lea    0x10(%rax),%rcx
  40e940:	48 89 78 08          	mov    %rdi,0x8(%rax)
  40e944:	49 39 c8             	cmp    %rcx,%r8
  40e947:	74 04                	je     40e94d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40e949:	48 89 78 10          	mov    %rdi,0x10(%rax)
  40e94d:	48 8b 3b             	mov    (%rbx),%rdi
  40e950:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40e954:	48 29 fe             	sub    %rdi,%rsi
  40e957:	c4 e1 f9 6e ca       	vmovq  %rdx,%xmm1
  40e95c:	c4 c3 f1 22 c0 01    	vpinsrq $0x1,%r8,%xmm1,%xmm0
  40e962:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  40e966:	c5 fa 7f 03          	vmovdqu %xmm0,(%rbx)
  40e96a:	48 85 ff             	test   %rdi,%rdi
  40e96d:	0f 84 27 ff ff ff    	je     40e89a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1ea>
  40e973:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40e977:	5b                   	pop    %rbx
  40e978:	41 5c                	pop    %r12
  40e97a:	41 5d                	pop    %r13
  40e97c:	5d                   	pop    %rbp
  40e97d:	e9 2e 49 ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  40e982:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40e988:	31 d2                	xor    %edx,%edx
  40e98a:	45 31 c0             	xor    %r8d,%r8d
  40e98d:	eb c8                	jmp    40e957 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2a7>
  40e98f:	90                   	nop
  40e990:	c5 f8 77             	vzeroupper 
  40e993:	e9 f9 fe ff ff       	jmpq   40e891 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40e998:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40e99f:	00 
  40e9a0:	c5 f8 77             	vzeroupper 
  40e9a3:	eb a8                	jmp    40e94d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40e9a5:	bf b8 04 41 00       	mov    $0x4104b8,%edi
  40e9aa:	e8 b1 47 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40e9af:	90                   	nop

000000000040e9b0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd>:
  40e9b0:	55                   	push   %rbp
  40e9b1:	48 89 f0             	mov    %rsi,%rax
  40e9b4:	48 89 e5             	mov    %rsp,%rbp
  40e9b7:	41 55                	push   %r13
  40e9b9:	41 54                	push   %r12
  40e9bb:	49 89 d4             	mov    %rdx,%r12
  40e9be:	53                   	push   %rbx
  40e9bf:	48 89 fb             	mov    %rdi,%rbx
  40e9c2:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40e9c6:	48 8b 3f             	mov    (%rdi),%rdi
  40e9c9:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40e9cd:	48 29 fe             	sub    %rdi,%rsi
  40e9d0:	48 89 f2             	mov    %rsi,%rdx
  40e9d3:	48 c1 fa 03          	sar    $0x3,%rdx
  40e9d7:	48 39 c2             	cmp    %rax,%rdx
  40e9da:	0f 82 d0 01 00 00    	jb     40ebb0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x200>
  40e9e0:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  40e9e4:	48 89 ce             	mov    %rcx,%rsi
  40e9e7:	48 29 fe             	sub    %rdi,%rsi
  40e9ea:	48 c1 fe 03          	sar    $0x3,%rsi
  40e9ee:	48 39 f0             	cmp    %rsi,%rax
  40e9f1:	0f 86 09 01 00 00    	jbe    40eb00 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x150>
  40e9f7:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  40e9fd:	48 39 cf             	cmp    %rcx,%rdi
  40ea00:	74 71                	je     40ea73 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xc3>
  40ea02:	4c 8d 41 f8          	lea    -0x8(%rcx),%r8
  40ea06:	49 29 f8             	sub    %rdi,%r8
  40ea09:	4d 89 c1             	mov    %r8,%r9
  40ea0c:	49 c1 e9 03          	shr    $0x3,%r9
  40ea10:	48 89 fa             	mov    %rdi,%rdx
  40ea13:	49 ff c1             	inc    %r9
  40ea16:	49 83 f8 10          	cmp    $0x10,%r8
  40ea1a:	76 31                	jbe    40ea4d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x9d>
  40ea1c:	4d 89 c8             	mov    %r9,%r8
  40ea1f:	49 c1 e8 02          	shr    $0x2,%r8
  40ea23:	49 c1 e0 05          	shl    $0x5,%r8
  40ea27:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  40ea2c:	49 01 f8             	add    %rdi,%r8
  40ea2f:	90                   	nop
  40ea30:	c5 fd 11 0a          	vmovupd %ymm1,(%rdx)
  40ea34:	48 83 c2 20          	add    $0x20,%rdx
  40ea38:	49 39 d0             	cmp    %rdx,%r8
  40ea3b:	75 f3                	jne    40ea30 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x80>
  40ea3d:	4c 89 ca             	mov    %r9,%rdx
  40ea40:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  40ea44:	48 8d 3c d7          	lea    (%rdi,%rdx,8),%rdi
  40ea48:	49 39 d1             	cmp    %rdx,%r9
  40ea4b:	74 20                	je     40ea6d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40ea4d:	48 8d 57 08          	lea    0x8(%rdi),%rdx
  40ea51:	c5 fb 11 07          	vmovsd %xmm0,(%rdi)
  40ea55:	48 39 d1             	cmp    %rdx,%rcx
  40ea58:	74 13                	je     40ea6d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40ea5a:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40ea5e:	c5 fb 11 47 08       	vmovsd %xmm0,0x8(%rdi)
  40ea63:	48 39 d1             	cmp    %rdx,%rcx
  40ea66:	74 05                	je     40ea6d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40ea68:	c5 fb 11 47 10       	vmovsd %xmm0,0x10(%rdi)
  40ea6d:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  40ea73:	48 29 f0             	sub    %rsi,%rax
  40ea76:	48 c1 e0 03          	shl    $0x3,%rax
  40ea7a:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
  40ea7e:	48 39 f9             	cmp    %rdi,%rcx
  40ea81:	74 6a                	je     40eaed <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40ea83:	48 83 e8 08          	sub    $0x8,%rax
  40ea87:	48 89 c6             	mov    %rax,%rsi
  40ea8a:	48 c1 ee 03          	shr    $0x3,%rsi
  40ea8e:	48 89 ca             	mov    %rcx,%rdx
  40ea91:	48 ff c6             	inc    %rsi
  40ea94:	48 83 f8 10          	cmp    $0x10,%rax
  40ea98:	76 33                	jbe    40eacd <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x11d>
  40ea9a:	48 89 f0             	mov    %rsi,%rax
  40ea9d:	48 c1 e8 02          	shr    $0x2,%rax
  40eaa1:	48 c1 e0 05          	shl    $0x5,%rax
  40eaa5:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  40eaaa:	48 01 c8             	add    %rcx,%rax
  40eaad:	0f 1f 00             	nopl   (%rax)
  40eab0:	c5 fd 11 0a          	vmovupd %ymm1,(%rdx)
  40eab4:	48 83 c2 20          	add    $0x20,%rdx
  40eab8:	48 39 d0             	cmp    %rdx,%rax
  40eabb:	75 f3                	jne    40eab0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x100>
  40eabd:	48 89 f0             	mov    %rsi,%rax
  40eac0:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40eac4:	48 8d 0c c1          	lea    (%rcx,%rax,8),%rcx
  40eac8:	48 39 c6             	cmp    %rax,%rsi
  40eacb:	74 20                	je     40eaed <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40eacd:	48 8d 41 08          	lea    0x8(%rcx),%rax
  40ead1:	c5 fb 11 01          	vmovsd %xmm0,(%rcx)
  40ead5:	48 39 c7             	cmp    %rax,%rdi
  40ead8:	74 13                	je     40eaed <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40eada:	48 8d 41 10          	lea    0x10(%rcx),%rax
  40eade:	c5 fb 11 41 08       	vmovsd %xmm0,0x8(%rcx)
  40eae3:	48 39 c7             	cmp    %rax,%rdi
  40eae6:	74 05                	je     40eaed <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40eae8:	c5 fb 11 41 10       	vmovsd %xmm0,0x10(%rcx)
  40eaed:	48 89 7b 08          	mov    %rdi,0x8(%rbx)
  40eaf1:	c5 f8 77             	vzeroupper 
  40eaf4:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40eaf8:	5b                   	pop    %rbx
  40eaf9:	41 5c                	pop    %r12
  40eafb:	41 5d                	pop    %r13
  40eafd:	5d                   	pop    %rbp
  40eafe:	c3                   	retq   
  40eaff:	90                   	nop
  40eb00:	48 89 fe             	mov    %rdi,%rsi
  40eb03:	48 85 c0             	test   %rax,%rax
  40eb06:	0f 84 88 00 00 00    	je     40eb94 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40eb0c:	48 c1 e0 03          	shl    $0x3,%rax
  40eb10:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
  40eb14:	c4 c1 7b 10 0c 24    	vmovsd (%r12),%xmm1
  40eb1a:	48 39 f7             	cmp    %rsi,%rdi
  40eb1d:	74 75                	je     40eb94 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40eb1f:	48 83 e8 08          	sub    $0x8,%rax
  40eb23:	49 89 c0             	mov    %rax,%r8
  40eb26:	49 c1 e8 03          	shr    $0x3,%r8
  40eb2a:	48 89 fa             	mov    %rdi,%rdx
  40eb2d:	49 ff c0             	inc    %r8
  40eb30:	48 83 f8 10          	cmp    $0x10,%rax
  40eb34:	76 3e                	jbe    40eb74 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1c4>
  40eb36:	4c 89 c0             	mov    %r8,%rax
  40eb39:	48 c1 e8 02          	shr    $0x2,%rax
  40eb3d:	48 c1 e0 05          	shl    $0x5,%rax
  40eb41:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  40eb46:	48 01 f8             	add    %rdi,%rax
  40eb49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40eb50:	c5 fd 11 02          	vmovupd %ymm0,(%rdx)
  40eb54:	48 83 c2 20          	add    $0x20,%rdx
  40eb58:	48 39 d0             	cmp    %rdx,%rax
  40eb5b:	75 f3                	jne    40eb50 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1a0>
  40eb5d:	4c 89 c0             	mov    %r8,%rax
  40eb60:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40eb64:	48 8d 3c c7          	lea    (%rdi,%rax,8),%rdi
  40eb68:	49 39 c0             	cmp    %rax,%r8
  40eb6b:	0f 84 1f 01 00 00    	je     40ec90 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2e0>
  40eb71:	c5 f8 77             	vzeroupper 
  40eb74:	48 8d 47 08          	lea    0x8(%rdi),%rax
  40eb78:	c5 fb 11 0f          	vmovsd %xmm1,(%rdi)
  40eb7c:	48 39 c6             	cmp    %rax,%rsi
  40eb7f:	74 13                	je     40eb94 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40eb81:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40eb85:	c5 fb 11 4f 08       	vmovsd %xmm1,0x8(%rdi)
  40eb8a:	48 39 c6             	cmp    %rax,%rsi
  40eb8d:	74 05                	je     40eb94 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40eb8f:	c5 fb 11 4f 10       	vmovsd %xmm1,0x10(%rdi)
  40eb94:	48 39 f1             	cmp    %rsi,%rcx
  40eb97:	74 04                	je     40eb9d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1ed>
  40eb99:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  40eb9d:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40eba1:	5b                   	pop    %rbx
  40eba2:	41 5c                	pop    %r12
  40eba4:	41 5d                	pop    %r13
  40eba6:	5d                   	pop    %rbp
  40eba7:	c3                   	retq   
  40eba8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40ebaf:	00 
  40ebb0:	48 89 c1             	mov    %rax,%rcx
  40ebb3:	48 c1 e9 3c          	shr    $0x3c,%rcx
  40ebb7:	0f 85 e8 00 00 00    	jne    40eca5 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2f5>
  40ebbd:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  40ebc4:	00 
  40ebc5:	48 85 c0             	test   %rax,%rax
  40ebc8:	0f 84 ba 00 00 00    	je     40ec88 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2d8>
  40ebce:	4c 89 ef             	mov    %r13,%rdi
  40ebd1:	e8 ca 46 ff ff       	callq  4032a0 <_Znwm@plt>
  40ebd6:	4e 8d 04 28          	lea    (%rax,%r13,1),%r8
  40ebda:	c4 c1 7b 10 0c 24    	vmovsd (%r12),%xmm1
  40ebe0:	48 89 c2             	mov    %rax,%rdx
  40ebe3:	49 39 c0             	cmp    %rax,%r8
  40ebe6:	74 68                	je     40ec50 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40ebe8:	49 83 ed 08          	sub    $0x8,%r13
  40ebec:	4c 89 ee             	mov    %r13,%rsi
  40ebef:	48 c1 ee 03          	shr    $0x3,%rsi
  40ebf3:	48 ff c6             	inc    %rsi
  40ebf6:	49 83 fd 10          	cmp    $0x10,%r13
  40ebfa:	76 34                	jbe    40ec30 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x280>
  40ebfc:	48 89 f1             	mov    %rsi,%rcx
  40ebff:	48 c1 e9 02          	shr    $0x2,%rcx
  40ec03:	48 c1 e1 05          	shl    $0x5,%rcx
  40ec07:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  40ec0c:	48 01 c1             	add    %rax,%rcx
  40ec0f:	90                   	nop
  40ec10:	c5 fd 11 00          	vmovupd %ymm0,(%rax)
  40ec14:	48 83 c0 20          	add    $0x20,%rax
  40ec18:	48 39 c1             	cmp    %rax,%rcx
  40ec1b:	75 f3                	jne    40ec10 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x260>
  40ec1d:	48 89 f1             	mov    %rsi,%rcx
  40ec20:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
  40ec24:	48 8d 04 ca          	lea    (%rdx,%rcx,8),%rax
  40ec28:	48 39 f1             	cmp    %rsi,%rcx
  40ec2b:	74 73                	je     40eca0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2f0>
  40ec2d:	c5 f8 77             	vzeroupper 
  40ec30:	48 8d 48 08          	lea    0x8(%rax),%rcx
  40ec34:	c5 fb 11 08          	vmovsd %xmm1,(%rax)
  40ec38:	49 39 c8             	cmp    %rcx,%r8
  40ec3b:	74 13                	je     40ec50 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40ec3d:	48 8d 48 10          	lea    0x10(%rax),%rcx
  40ec41:	c5 fb 11 48 08       	vmovsd %xmm1,0x8(%rax)
  40ec46:	49 39 c8             	cmp    %rcx,%r8
  40ec49:	74 05                	je     40ec50 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40ec4b:	c5 fb 11 48 10       	vmovsd %xmm1,0x10(%rax)
  40ec50:	48 8b 3b             	mov    (%rbx),%rdi
  40ec53:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40ec57:	48 29 fe             	sub    %rdi,%rsi
  40ec5a:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
  40ec5f:	c4 c3 e9 22 c0 01    	vpinsrq $0x1,%r8,%xmm2,%xmm0
  40ec65:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  40ec69:	c5 fa 7f 03          	vmovdqu %xmm0,(%rbx)
  40ec6d:	48 85 ff             	test   %rdi,%rdi
  40ec70:	0f 84 27 ff ff ff    	je     40eb9d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1ed>
  40ec76:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40ec7a:	5b                   	pop    %rbx
  40ec7b:	41 5c                	pop    %r12
  40ec7d:	41 5d                	pop    %r13
  40ec7f:	5d                   	pop    %rbp
  40ec80:	e9 2b 46 ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  40ec85:	0f 1f 00             	nopl   (%rax)
  40ec88:	31 d2                	xor    %edx,%edx
  40ec8a:	45 31 c0             	xor    %r8d,%r8d
  40ec8d:	eb cb                	jmp    40ec5a <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2aa>
  40ec8f:	90                   	nop
  40ec90:	c5 f8 77             	vzeroupper 
  40ec93:	e9 fc fe ff ff       	jmpq   40eb94 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40ec98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40ec9f:	00 
  40eca0:	c5 f8 77             	vzeroupper 
  40eca3:	eb ab                	jmp    40ec50 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40eca5:	bf b8 04 41 00       	mov    $0x4104b8,%edi
  40ecaa:	e8 b1 44 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40ecaf:	90                   	nop

000000000040ecb0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>:
  40ecb0:	c4 e2 7d 59 1d b7 19 	vpbroadcastq 0x19b7(%rip),%ymm3        # 410670 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  40ecb7:	00 00 
  40ecb9:	c4 e2 7d 59 25 b6 19 	vpbroadcastq 0x19b6(%rip),%ymm4        # 410678 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  40ecc0:	00 00 
  40ecc2:	c4 e2 7d 59 2d b5 19 	vpbroadcastq 0x19b5(%rip),%ymm5        # 410680 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x180>
  40ecc9:	00 00 
  40eccb:	c4 e2 7d 59 35 b4 19 	vpbroadcastq 0x19b4(%rip),%ymm6        # 410688 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x188>
  40ecd2:	00 00 
  40ecd4:	48 89 f8             	mov    %rdi,%rax
  40ecd7:	48 8d 8f e0 04 00 00 	lea    0x4e0(%rdi),%rcx
  40ecde:	48 89 fa             	mov    %rdi,%rdx
  40ece1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40ece8:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  40eced:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  40ecf1:	48 83 c2 20          	add    $0x20,%rdx
  40ecf5:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  40ecf9:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  40ecfe:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  40ed02:	c5 f5 ef 8a c0 04 00 	vpxor  0x4c0(%rdx),%ymm1,%ymm1
  40ed09:	00 
  40ed0a:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  40ed10:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  40ed14:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  40ed1a:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  40ed1f:	48 39 ca             	cmp    %rcx,%rdx
  40ed22:	75 c4                	jne    40ece8 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x38>
  40ed24:	48 8d 88 a0 09 00 00 	lea    0x9a0(%rax),%rcx
  40ed2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40ed30:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  40ed35:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  40ed39:	48 83 c2 20          	add    $0x20,%rdx
  40ed3d:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  40ed41:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  40ed46:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  40ed4a:	c5 f5 ef 8a 00 fb ff 	vpxor  -0x500(%rdx),%ymm1,%ymm1
  40ed51:	ff 
  40ed52:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  40ed58:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  40ed5c:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  40ed62:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  40ed67:	48 39 d1             	cmp    %rdx,%rcx
  40ed6a:	75 c4                	jne    40ed30 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x80>
  40ed6c:	c4 e2 79 59 05 fb 18 	vpbroadcastq 0x18fb(%rip),%xmm0        # 410670 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  40ed73:	00 00 
  40ed75:	c4 e2 79 59 0d fa 18 	vpbroadcastq 0x18fa(%rip),%xmm1        # 410678 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  40ed7c:	00 00 
  40ed7e:	c5 f9 db 80 a0 09 00 	vpand  0x9a0(%rax),%xmm0,%xmm0
  40ed85:	00 
  40ed86:	c5 f1 db 88 a8 09 00 	vpand  0x9a8(%rax),%xmm1,%xmm1
  40ed8d:	00 
  40ed8e:	48 8b b0 b8 09 00 00 	mov    0x9b8(%rax),%rsi
  40ed95:	48 8b 90 b0 09 00 00 	mov    0x9b0(%rax),%rdx
  40ed9c:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  40eda0:	48 89 f1             	mov    %rsi,%rcx
  40eda3:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
  40eda9:	c5 f1 73 d0 01       	vpsrlq $0x1,%xmm0,%xmm1
  40edae:	48 81 e2 00 00 00 80 	and    $0xffffffff80000000,%rdx
  40edb5:	62 f1 fd 18 db 05 c1 	vpandq 0x18c1(%rip){1to2},%xmm0,%xmm0        # 410680 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x180>
  40edbc:	18 00 00 
  40edbf:	c5 f1 ef 88 c0 04 00 	vpxor  0x4c0(%rax),%xmm1,%xmm1
  40edc6:	00 
  40edc7:	48 09 ca             	or     %rcx,%rdx
  40edca:	62 f2 fe 08 27 c8    	vptestnmq %xmm0,%xmm0,%k1
  40edd0:	48 89 d1             	mov    %rdx,%rcx
  40edd3:	48 d1 e9             	shr    %rcx
  40edd6:	62 f1 f5 18 ef 15 a8 	vpxorq 0x18a8(%rip){1to2},%xmm1,%xmm2        # 410688 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x188>
  40eddd:	18 00 00 
  40ede0:	62 f2 ed 09 64 c1    	vpblendmq %xmm1,%xmm2,%xmm0{%k1}
  40ede6:	48 33 88 d0 04 00 00 	xor    0x4d0(%rax),%rcx
  40eded:	83 e2 01             	and    $0x1,%edx
  40edf0:	c5 fa 7f 80 a0 09 00 	vmovdqu %xmm0,0x9a0(%rax)
  40edf7:	00 
  40edf8:	74 0d                	je     40ee07 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x157>
  40edfa:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  40ee01:	6f 02 b5 
  40ee04:	48 31 d1             	xor    %rdx,%rcx
  40ee07:	48 8b 10             	mov    (%rax),%rdx
  40ee0a:	48 81 e6 00 00 00 80 	and    $0xffffffff80000000,%rsi
  40ee11:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
  40ee17:	48 09 f2             	or     %rsi,%rdx
  40ee1a:	48 89 88 b0 09 00 00 	mov    %rcx,0x9b0(%rax)
  40ee21:	48 89 d1             	mov    %rdx,%rcx
  40ee24:	48 d1 e9             	shr    %rcx
  40ee27:	48 33 88 d8 04 00 00 	xor    0x4d8(%rax),%rcx
  40ee2e:	83 e2 01             	and    $0x1,%edx
  40ee31:	74 0d                	je     40ee40 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x190>
  40ee33:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  40ee3a:	6f 02 b5 
  40ee3d:	48 31 d1             	xor    %rdx,%rcx
  40ee40:	48 89 88 b8 09 00 00 	mov    %rcx,0x9b8(%rax)
  40ee47:	48 c7 80 c0 09 00 00 	movq   $0x0,0x9c0(%rax)
  40ee4e:	00 00 00 00 
  40ee52:	c5 f8 77             	vzeroupper 
  40ee55:	c3                   	retq   
  40ee56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40ee5d:	00 00 00 

000000000040ee60 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>:
  40ee60:	41 57                	push   %r15
  40ee62:	41 56                	push   %r14
  40ee64:	41 55                	push   %r13
  40ee66:	41 54                	push   %r12
  40ee68:	55                   	push   %rbp
  40ee69:	53                   	push   %rbx
  40ee6a:	48 83 ec 28          	sub    $0x28,%rsp
  40ee6e:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  40ee73:	48 39 fe             	cmp    %rdi,%rsi
  40ee76:	0f 84 99 01 00 00    	je     40f015 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40ee7c:	48 89 f1             	mov    %rsi,%rcx
  40ee7f:	48 29 f9             	sub    %rdi,%rcx
  40ee82:	48 c1 f9 03          	sar    $0x3,%rcx
  40ee86:	48 89 c8             	mov    %rcx,%rax
  40ee89:	48 89 d3             	mov    %rdx,%rbx
  40ee8c:	48 f7 e1             	mul    %rcx
  40ee8f:	48 89 fd             	mov    %rdi,%rbp
  40ee92:	4c 8d 6f 08          	lea    0x8(%rdi),%r13
  40ee96:	0f 90 c0             	seto   %al
  40ee99:	0f b6 c0             	movzbl %al,%eax
  40ee9c:	48 85 c0             	test   %rax,%rax
  40ee9f:	0f 84 1b 02 00 00    	je     40f0c0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x260>
  40eea5:	4c 3b 6c 24 08       	cmp    0x8(%rsp),%r13
  40eeaa:	0f 84 65 01 00 00    	je     40f015 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40eeb0:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40eeb7:	55 55 55 
  40eeba:	49 bc 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r12
  40eec1:	7f d6 71 
  40eec4:	49 bf 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r15
  40eecb:	ee f7 ff 
  40eece:	66 90                	xchg   %ax,%ax
  40eed0:	4c 89 e8             	mov    %r13,%rax
  40eed3:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  40eeda:	48 29 e8             	sub    %rbp,%rax
  40eedd:	48 c1 f8 03          	sar    $0x3,%rax
  40eee1:	48 89 d1             	mov    %rdx,%rcx
  40eee4:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40eee8:	0f 84 3a 01 00 00    	je     40f028 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1c8>
  40eeee:	4c 8d 70 01          	lea    0x1(%rax),%r14
  40eef2:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  40eef9:	0f 87 79 01 00 00    	ja     40f078 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x218>
  40eeff:	48 8b 34 d3          	mov    (%rbx,%rdx,8),%rsi
  40ef03:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
  40ef07:	48 89 f2             	mov    %rsi,%rdx
  40ef0a:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40ef0e:	4c 21 ca             	and    %r9,%rdx
  40ef11:	48 31 d6             	xor    %rdx,%rsi
  40ef14:	48 89 f2             	mov    %rsi,%rdx
  40ef17:	48 c1 e2 11          	shl    $0x11,%rdx
  40ef1b:	4c 21 e2             	and    %r12,%rdx
  40ef1e:	48 31 d6             	xor    %rdx,%rsi
  40ef21:	48 89 f2             	mov    %rsi,%rdx
  40ef24:	48 c1 e2 25          	shl    $0x25,%rdx
  40ef28:	4c 21 fa             	and    %r15,%rdx
  40ef2b:	48 31 d6             	xor    %rdx,%rsi
  40ef2e:	48 89 f2             	mov    %rsi,%rdx
  40ef31:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40ef35:	48 31 d6             	xor    %rdx,%rsi
  40ef38:	48 89 f2             	mov    %rsi,%rdx
  40ef3b:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  40ef40:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40ef47:	49 39 f6             	cmp    %rsi,%r14
  40ef4a:	0f 86 a0 00 00 00    	jbe    40eff0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40ef50:	48 f7 d0             	not    %rax
  40ef53:	31 d2                	xor    %edx,%edx
  40ef55:	49 f7 f6             	div    %r14
  40ef58:	49 89 d0             	mov    %rdx,%r8
  40ef5b:	48 39 d6             	cmp    %rdx,%rsi
  40ef5e:	72 55                	jb     40efb5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x155>
  40ef60:	e9 8b 00 00 00       	jmpq   40eff0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40ef65:	0f 1f 00             	nopl   (%rax)
  40ef68:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40ef6c:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40ef70:	48 89 f0             	mov    %rsi,%rax
  40ef73:	48 c1 e8 1d          	shr    $0x1d,%rax
  40ef77:	4c 21 c8             	and    %r9,%rax
  40ef7a:	48 31 c6             	xor    %rax,%rsi
  40ef7d:	48 89 f0             	mov    %rsi,%rax
  40ef80:	48 c1 e0 11          	shl    $0x11,%rax
  40ef84:	4c 21 e0             	and    %r12,%rax
  40ef87:	48 31 c6             	xor    %rax,%rsi
  40ef8a:	48 89 f0             	mov    %rsi,%rax
  40ef8d:	48 c1 e0 25          	shl    $0x25,%rax
  40ef91:	4c 21 f8             	and    %r15,%rax
  40ef94:	48 31 c6             	xor    %rax,%rsi
  40ef97:	48 89 f0             	mov    %rsi,%rax
  40ef9a:	48 c1 e8 2b          	shr    $0x2b,%rax
  40ef9e:	48 31 c6             	xor    %rax,%rsi
  40efa1:	48 89 f2             	mov    %rsi,%rdx
  40efa4:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  40efa9:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40efb0:	49 39 f0             	cmp    %rsi,%r8
  40efb3:	76 3b                	jbe    40eff0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40efb5:	48 89 c8             	mov    %rcx,%rax
  40efb8:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  40efbf:	76 a7                	jbe    40ef68 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  40efc1:	48 89 df             	mov    %rbx,%rdi
  40efc4:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  40efc9:	e8 e2 fc ff ff       	callq  40ecb0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40efce:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40efd5:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  40efda:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40efe1:	55 55 55 
  40efe4:	eb 82                	jmp    40ef68 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  40efe6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40efed:	00 00 00 
  40eff0:	48 89 f8             	mov    %rdi,%rax
  40eff3:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  40eff8:	48 8b 08             	mov    (%rax),%rcx
  40effb:	49 8b 55 00          	mov    0x0(%r13),%rdx
  40efff:	49 89 4d 00          	mov    %rcx,0x0(%r13)
  40f003:	49 83 c5 08          	add    $0x8,%r13
  40f007:	48 89 10             	mov    %rdx,(%rax)
  40f00a:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40f00f:	0f 85 bb fe ff ff    	jne    40eed0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x70>
  40f015:	48 83 c4 28          	add    $0x28,%rsp
  40f019:	5b                   	pop    %rbx
  40f01a:	5d                   	pop    %rbp
  40f01b:	41 5c                	pop    %r12
  40f01d:	41 5d                	pop    %r13
  40f01f:	41 5e                	pop    %r14
  40f021:	41 5f                	pop    %r15
  40f023:	c3                   	retq   
  40f024:	0f 1f 40 00          	nopl   0x0(%rax)
  40f028:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  40f02f:	77 6f                	ja     40f0a0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x240>
  40f031:	48 8d 41 01          	lea    0x1(%rcx),%rax
  40f035:	48 89 83 c0 09 00 00 	mov    %rax,0x9c0(%rbx)
  40f03c:	48 8b 04 cb          	mov    (%rbx,%rcx,8),%rax
  40f040:	48 89 c2             	mov    %rax,%rdx
  40f043:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40f047:	4c 21 ca             	and    %r9,%rdx
  40f04a:	48 31 d0             	xor    %rdx,%rax
  40f04d:	48 89 c2             	mov    %rax,%rdx
  40f050:	48 c1 e2 11          	shl    $0x11,%rdx
  40f054:	4c 21 e2             	and    %r12,%rdx
  40f057:	48 31 d0             	xor    %rdx,%rax
  40f05a:	48 89 c2             	mov    %rax,%rdx
  40f05d:	48 c1 e2 25          	shl    $0x25,%rdx
  40f061:	4c 21 fa             	and    %r15,%rdx
  40f064:	48 31 d0             	xor    %rdx,%rax
  40f067:	48 89 c2             	mov    %rax,%rdx
  40f06a:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40f06e:	48 31 d0             	xor    %rdx,%rax
  40f071:	eb 80                	jmp    40eff3 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x193>
  40f073:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40f078:	48 89 df             	mov    %rbx,%rdi
  40f07b:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40f080:	e8 2b fc ff ff       	callq  40ecb0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f085:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  40f08c:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40f091:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40f098:	55 55 55 
  40f09b:	e9 5f fe ff ff       	jmpq   40eeff <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x9f>
  40f0a0:	48 89 df             	mov    %rbx,%rdi
  40f0a3:	e8 08 fc ff ff       	callq  40ecb0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f0a8:	48 8b 8b c0 09 00 00 	mov    0x9c0(%rbx),%rcx
  40f0af:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40f0b6:	55 55 55 
  40f0b9:	e9 73 ff ff ff       	jmpq   40f031 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1d1>
  40f0be:	66 90                	xchg   %ax,%ax
  40f0c0:	83 e1 01             	and    $0x1,%ecx
  40f0c3:	0f 84 35 02 00 00    	je     40f2fe <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x49e>
  40f0c9:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40f0ce:	0f 84 41 ff ff ff    	je     40f015 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40f0d4:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40f0db:	55 55 55 
  40f0de:	49 be 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r14
  40f0e5:	7f d6 71 
  40f0e8:	49 bc 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r12
  40f0ef:	ee f7 ff 
  40f0f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40f0f8:	4d 89 ef             	mov    %r13,%r15
  40f0fb:	49 29 ef             	sub    %rbp,%r15
  40f0fe:	49 c1 ff 03          	sar    $0x3,%r15
  40f102:	49 8d 47 02          	lea    0x2(%r15),%rax
  40f106:	49 ff c7             	inc    %r15
  40f109:	4c 0f af f8          	imul   %rax,%r15
  40f10d:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40f112:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f119:	4d 85 ff             	test   %r15,%r15
  40f11c:	0f 84 46 01 00 00    	je     40f268 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x408>
  40f122:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40f128:	0f 87 8a 01 00 00    	ja     40f2b8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x458>
  40f12e:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40f132:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40f136:	48 89 f0             	mov    %rsi,%rax
  40f139:	48 c1 e8 1d          	shr    $0x1d,%rax
  40f13d:	4c 21 d0             	and    %r10,%rax
  40f140:	48 31 c6             	xor    %rax,%rsi
  40f143:	48 89 f0             	mov    %rsi,%rax
  40f146:	48 c1 e0 11          	shl    $0x11,%rax
  40f14a:	4c 21 f0             	and    %r14,%rax
  40f14d:	48 31 c6             	xor    %rax,%rsi
  40f150:	48 89 f0             	mov    %rsi,%rax
  40f153:	48 c1 e0 25          	shl    $0x25,%rax
  40f157:	4c 21 e0             	and    %r12,%rax
  40f15a:	48 31 c6             	xor    %rax,%rsi
  40f15d:	48 89 f0             	mov    %rsi,%rax
  40f160:	48 c1 e8 2b          	shr    $0x2b,%rax
  40f164:	48 31 c6             	xor    %rax,%rsi
  40f167:	48 89 f2             	mov    %rsi,%rdx
  40f16a:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40f16f:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40f176:	49 39 f7             	cmp    %rsi,%r15
  40f179:	0f 86 a1 00 00 00    	jbe    40f220 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40f17f:	4c 89 f8             	mov    %r15,%rax
  40f182:	48 f7 d8             	neg    %rax
  40f185:	31 d2                	xor    %edx,%edx
  40f187:	49 f7 f7             	div    %r15
  40f18a:	49 89 d0             	mov    %rdx,%r8
  40f18d:	48 39 d6             	cmp    %rdx,%rsi
  40f190:	72 5b                	jb     40f1ed <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x38d>
  40f192:	e9 89 00 00 00       	jmpq   40f220 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40f197:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40f19e:	00 00 
  40f1a0:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40f1a4:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40f1a8:	48 89 f0             	mov    %rsi,%rax
  40f1ab:	48 c1 e8 1d          	shr    $0x1d,%rax
  40f1af:	4c 21 d0             	and    %r10,%rax
  40f1b2:	48 31 c6             	xor    %rax,%rsi
  40f1b5:	48 89 f0             	mov    %rsi,%rax
  40f1b8:	48 c1 e0 11          	shl    $0x11,%rax
  40f1bc:	4c 21 f0             	and    %r14,%rax
  40f1bf:	48 31 c6             	xor    %rax,%rsi
  40f1c2:	48 89 f0             	mov    %rsi,%rax
  40f1c5:	48 c1 e0 25          	shl    $0x25,%rax
  40f1c9:	4c 21 e0             	and    %r12,%rax
  40f1cc:	48 31 c6             	xor    %rax,%rsi
  40f1cf:	48 89 f0             	mov    %rsi,%rax
  40f1d2:	48 c1 e8 2b          	shr    $0x2b,%rax
  40f1d6:	48 31 c6             	xor    %rax,%rsi
  40f1d9:	48 89 f2             	mov    %rsi,%rdx
  40f1dc:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40f1e1:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40f1e8:	49 39 f0             	cmp    %rsi,%r8
  40f1eb:	76 33                	jbe    40f220 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40f1ed:	48 89 c8             	mov    %rcx,%rax
  40f1f0:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  40f1f7:	76 a7                	jbe    40f1a0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40f1f9:	48 89 df             	mov    %rbx,%rdi
  40f1fc:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  40f201:	e8 aa fa ff ff       	callq  40ecb0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f206:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f20d:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  40f212:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40f219:	55 55 55 
  40f21c:	eb 82                	jmp    40f1a0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40f21e:	66 90                	xchg   %ax,%ax
  40f220:	48 89 f8             	mov    %rdi,%rax
  40f223:	31 d2                	xor    %edx,%edx
  40f225:	48 f7 74 24 10       	divq   0x10(%rsp)
  40f22a:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40f22e:	49 83 c5 10          	add    $0x10,%r13
  40f232:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  40f237:	48 8b 30             	mov    (%rax),%rsi
  40f23a:	49 89 75 f0          	mov    %rsi,-0x10(%r13)
  40f23e:	48 89 08             	mov    %rcx,(%rax)
  40f241:	48 8d 44 d5 00       	lea    0x0(%rbp,%rdx,8),%rax
  40f246:	48 8b 08             	mov    (%rax),%rcx
  40f249:	49 8b 55 f8          	mov    -0x8(%r13),%rdx
  40f24d:	49 89 4d f8          	mov    %rcx,-0x8(%r13)
  40f251:	48 89 10             	mov    %rdx,(%rax)
  40f254:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40f259:	0f 85 99 fe ff ff    	jne    40f0f8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x298>
  40f25f:	e9 b1 fd ff ff       	jmpq   40f015 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40f264:	0f 1f 40 00          	nopl   0x0(%rax)
  40f268:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40f26e:	77 70                	ja     40f2e0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x480>
  40f270:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40f274:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40f278:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40f27f:	48 89 c2             	mov    %rax,%rdx
  40f282:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40f286:	4c 21 d2             	and    %r10,%rdx
  40f289:	48 31 d0             	xor    %rdx,%rax
  40f28c:	48 89 c2             	mov    %rax,%rdx
  40f28f:	48 c1 e2 11          	shl    $0x11,%rdx
  40f293:	4c 21 f2             	and    %r14,%rdx
  40f296:	48 31 d0             	xor    %rdx,%rax
  40f299:	48 89 c2             	mov    %rax,%rdx
  40f29c:	48 c1 e2 25          	shl    $0x25,%rdx
  40f2a0:	4c 21 e2             	and    %r12,%rdx
  40f2a3:	48 31 d0             	xor    %rdx,%rax
  40f2a6:	48 89 c2             	mov    %rax,%rdx
  40f2a9:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40f2ad:	48 31 d0             	xor    %rdx,%rax
  40f2b0:	e9 6e ff ff ff       	jmpq   40f223 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c3>
  40f2b5:	0f 1f 00             	nopl   (%rax)
  40f2b8:	48 89 df             	mov    %rbx,%rdi
  40f2bb:	e8 f0 f9 ff ff       	callq  40ecb0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f2c0:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f2c7:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40f2ce:	55 55 55 
  40f2d1:	e9 58 fe ff ff       	jmpq   40f12e <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x2ce>
  40f2d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40f2dd:	00 00 00 
  40f2e0:	48 89 df             	mov    %rbx,%rdi
  40f2e3:	e8 c8 f9 ff ff       	callq  40ecb0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f2e8:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f2ef:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40f2f6:	55 55 55 
  40f2f9:	e9 72 ff ff ff       	jmpq   40f270 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x410>
  40f2fe:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f305:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40f30b:	0f 87 81 00 00 00    	ja     40f392 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x532>
  40f311:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40f315:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40f319:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40f320:	48 89 c2             	mov    %rax,%rdx
  40f323:	48 b9 55 55 55 55 55 	movabs $0x5555555555555555,%rcx
  40f32a:	55 55 55 
  40f32d:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40f331:	48 21 ca             	and    %rcx,%rdx
  40f334:	48 31 d0             	xor    %rdx,%rax
  40f337:	48 89 c2             	mov    %rax,%rdx
  40f33a:	48 b9 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%rcx
  40f341:	7f d6 71 
  40f344:	48 c1 e2 11          	shl    $0x11,%rdx
  40f348:	48 21 ca             	and    %rcx,%rdx
  40f34b:	48 31 d0             	xor    %rdx,%rax
  40f34e:	48 89 c2             	mov    %rax,%rdx
  40f351:	48 b9 00 00 00 00 e0 	movabs $0xfff7eee000000000,%rcx
  40f358:	ee f7 ff 
  40f35b:	48 c1 e2 25          	shl    $0x25,%rdx
  40f35f:	48 21 ca             	and    %rcx,%rdx
  40f362:	48 31 d0             	xor    %rdx,%rax
  40f365:	48 89 c2             	mov    %rax,%rdx
  40f368:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40f36c:	48 31 d0             	xor    %rdx,%rax
  40f36f:	31 ff                	xor    %edi,%edi
  40f371:	48 0f a4 c7 01       	shld   $0x1,%rax,%rdi
  40f376:	48 8d 44 fd 00       	lea    0x0(%rbp,%rdi,8),%rax
  40f37b:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  40f37f:	48 8b 08             	mov    (%rax),%rcx
  40f382:	4c 8d 6d 10          	lea    0x10(%rbp),%r13
  40f386:	48 89 4d 08          	mov    %rcx,0x8(%rbp)
  40f38a:	48 89 10             	mov    %rdx,(%rax)
  40f38d:	e9 37 fd ff ff       	jmpq   40f0c9 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x269>
  40f392:	48 89 df             	mov    %rbx,%rdi
  40f395:	e8 16 f9 ff ff       	callq  40ecb0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40f39a:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40f3a1:	e9 6b ff ff ff       	jmpq   40f311 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x4b1>

Disassembly of section .fini:

000000000040f3a8 <_fini>:
  40f3a8:	f3 0f 1e fa          	endbr64 
  40f3ac:	48 83 ec 08          	sub    $0x8,%rsp
  40f3b0:	48 83 c4 08          	add    $0x8,%rsp
  40f3b4:	c3                   	retq   
