
/lpor1/store_0/usr/user/hw-bench-thesis-results/flat-thesis-20261011T182042Z/build/hardware:     file format elf64-x86-64


Disassembly of section .init:

0000000000403000 <_init>:
  403000:	f3 0f 1e fa          	endbr64 
  403004:	48 83 ec 08          	sub    $0x8,%rsp
  403008:	48 8b 05 c9 af 00 00 	mov    0xafc9(%rip),%rax        # 40dfd8 <__gmon_start__>
  40300f:	48 85 c0             	test   %rax,%rax
  403012:	74 02                	je     403016 <_init+0x16>
  403014:	ff d0                	callq  *%rax
  403016:	48 83 c4 08          	add    $0x8,%rsp
  40301a:	c3                   	retq   

Disassembly of section .plt:

0000000000403020 <.plt>:
  403020:	ff 35 e2 af 00 00    	pushq  0xafe2(%rip)        # 40e008 <_GLOBAL_OFFSET_TABLE_+0x8>
  403026:	ff 25 e4 af 00 00    	jmpq   *0xafe4(%rip)        # 40e010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40302c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403030 <_ZNSo3putEc@plt>:
  403030:	ff 25 e2 af 00 00    	jmpq   *0xafe2(%rip)        # 40e018 <_ZNSo3putEc@GLIBCXX_3.4>
  403036:	68 00 00 00 00       	pushq  $0x0
  40303b:	e9 e0 ff ff ff       	jmpq   403020 <.plt>

0000000000403040 <__errno_location@plt>:
  403040:	ff 25 da af 00 00    	jmpq   *0xafda(%rip)        # 40e020 <__errno_location@GLIBC_2.2.5>
  403046:	68 01 00 00 00       	pushq  $0x1
  40304b:	e9 d0 ff ff ff       	jmpq   403020 <.plt>

0000000000403050 <syscall@plt>:
  403050:	ff 25 d2 af 00 00    	jmpq   *0xafd2(%rip)        # 40e028 <syscall@GLIBC_2.2.5>
  403056:	68 02 00 00 00       	pushq  $0x2
  40305b:	e9 c0 ff ff ff       	jmpq   403020 <.plt>

0000000000403060 <GOMP_single_start@plt>:
  403060:	ff 25 ca af 00 00    	jmpq   *0xafca(%rip)        # 40e030 <GOMP_single_start@GOMP_1.0>
  403066:	68 03 00 00 00       	pushq  $0x3
  40306b:	e9 b0 ff ff ff       	jmpq   403020 <.plt>

0000000000403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>:
  403070:	ff 25 c2 af 00 00    	jmpq   *0xafc2(%rip)        # 40e038 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@GLIBCXX_3.4>
  403076:	68 04 00 00 00       	pushq  $0x4
  40307b:	e9 a0 ff ff ff       	jmpq   403020 <.plt>

0000000000403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>:
  403080:	ff 25 ba af 00 00    	jmpq   *0xafba(%rip)        # 40e040 <_ZNSt10filesystem7__cxx114pathdVERKS1_@GLIBCXX_3.4.26>
  403086:	68 05 00 00 00       	pushq  $0x5
  40308b:	e9 90 ff ff ff       	jmpq   403020 <.plt>

0000000000403090 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>:
  403090:	ff 25 b2 af 00 00    	jmpq   *0xafb2(%rip)        # 40e048 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  403096:	68 06 00 00 00       	pushq  $0x6
  40309b:	e9 80 ff ff ff       	jmpq   403020 <.plt>

00000000004030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>:
  4030a0:	ff 25 aa af 00 00    	jmpq   *0xafaa(%rip)        # 40e050 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@GLIBCXX_3.4.26>
  4030a6:	68 07 00 00 00       	pushq  $0x7
  4030ab:	e9 70 ff ff ff       	jmpq   403020 <.plt>

00000000004030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>:
  4030b0:	ff 25 a2 af 00 00    	jmpq   *0xafa2(%rip)        # 40e058 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@GLIBCXX_3.4.26>
  4030b6:	68 08 00 00 00       	pushq  $0x8
  4030bb:	e9 60 ff ff ff       	jmpq   403020 <.plt>

00000000004030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>:
  4030c0:	ff 25 9a af 00 00    	jmpq   *0xaf9a(%rip)        # 40e060 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@GLIBCXX_3.4.21>
  4030c6:	68 09 00 00 00       	pushq  $0x9
  4030cb:	e9 50 ff ff ff       	jmpq   403020 <.plt>

00000000004030d0 <_ZNSt8ios_baseC2Ev@plt>:
  4030d0:	ff 25 92 af 00 00    	jmpq   *0xaf92(%rip)        # 40e068 <_ZNSt8ios_baseC2Ev@GLIBCXX_3.4>
  4030d6:	68 0a 00 00 00       	pushq  $0xa
  4030db:	e9 40 ff ff ff       	jmpq   403020 <.plt>

00000000004030e0 <nanosleep@plt>:
  4030e0:	ff 25 8a af 00 00    	jmpq   *0xaf8a(%rip)        # 40e070 <nanosleep@GLIBC_2.2.5>
  4030e6:	68 0b 00 00 00       	pushq  $0xb
  4030eb:	e9 30 ff ff ff       	jmpq   403020 <.plt>

00000000004030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>:
  4030f0:	ff 25 82 af 00 00    	jmpq   *0xaf82(%rip)        # 40e078 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@GLIBCXX_3.4.21>
  4030f6:	68 0c 00 00 00       	pushq  $0xc
  4030fb:	e9 20 ff ff ff       	jmpq   403020 <.plt>

0000000000403100 <_ZNSt8ios_baseD2Ev@plt>:
  403100:	ff 25 7a af 00 00    	jmpq   *0xaf7a(%rip)        # 40e080 <_ZNSt8ios_baseD2Ev@GLIBCXX_3.4>
  403106:	68 0d 00 00 00       	pushq  $0xd
  40310b:	e9 10 ff ff ff       	jmpq   403020 <.plt>

0000000000403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>:
  403110:	ff 25 72 af 00 00    	jmpq   *0xaf72(%rip)        # 40e088 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@GLIBCXX_3.4.26>
  403116:	68 0e 00 00 00       	pushq  $0xe
  40311b:	e9 00 ff ff ff       	jmpq   403020 <.plt>

0000000000403120 <_ZNSt13runtime_errorC1EPKc@plt>:
  403120:	ff 25 6a af 00 00    	jmpq   *0xaf6a(%rip)        # 40e090 <_ZNSt13runtime_errorC1EPKc@GLIBCXX_3.4.21>
  403126:	68 0f 00 00 00       	pushq  $0xf
  40312b:	e9 f0 fe ff ff       	jmpq   403020 <.plt>

0000000000403130 <__cxa_begin_catch@plt>:
  403130:	ff 25 62 af 00 00    	jmpq   *0xaf62(%rip)        # 40e098 <__cxa_begin_catch@CXXABI_1.3>
  403136:	68 10 00 00 00       	pushq  $0x10
  40313b:	e9 e0 fe ff ff       	jmpq   403020 <.plt>

0000000000403140 <strlen@plt>:
  403140:	ff 25 5a af 00 00    	jmpq   *0xaf5a(%rip)        # 40e0a0 <strlen@GLIBC_2.2.5>
  403146:	68 11 00 00 00       	pushq  $0x11
  40314b:	e9 d0 fe ff ff       	jmpq   403020 <.plt>

0000000000403150 <__cxa_allocate_exception@plt>:
  403150:	ff 25 52 af 00 00    	jmpq   *0xaf52(%rip)        # 40e0a8 <__cxa_allocate_exception@CXXABI_1.3>
  403156:	68 12 00 00 00       	pushq  $0x12
  40315b:	e9 c0 fe ff ff       	jmpq   403020 <.plt>

0000000000403160 <_ZSt20__throw_length_errorPKc@plt>:
  403160:	ff 25 4a af 00 00    	jmpq   *0xaf4a(%rip)        # 40e0b0 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
  403166:	68 13 00 00 00       	pushq  $0x13
  40316b:	e9 b0 fe ff ff       	jmpq   403020 <.plt>

0000000000403170 <_ZNSi10_M_extractImEERSiRT_@plt>:
  403170:	ff 25 42 af 00 00    	jmpq   *0xaf42(%rip)        # 40e0b8 <_ZNSi10_M_extractImEERSiRT_@GLIBCXX_3.4.9>
  403176:	68 14 00 00 00       	pushq  $0x14
  40317b:	e9 a0 fe ff ff       	jmpq   403020 <.plt>

0000000000403180 <memset@plt>:
  403180:	ff 25 3a af 00 00    	jmpq   *0xaf3a(%rip)        # 40e0c0 <memset@GLIBC_2.2.5>
  403186:	68 15 00 00 00       	pushq  $0x15
  40318b:	e9 90 fe ff ff       	jmpq   403020 <.plt>

0000000000403190 <GOMP_atomic_start@plt>:
  403190:	ff 25 32 af 00 00    	jmpq   *0xaf32(%rip)        # 40e0c8 <GOMP_atomic_start@GOMP_1.0>
  403196:	68 16 00 00 00       	pushq  $0x16
  40319b:	e9 80 fe ff ff       	jmpq   403020 <.plt>

00000000004031a0 <_ZSt24__throw_invalid_argumentPKc@plt>:
  4031a0:	ff 25 2a af 00 00    	jmpq   *0xaf2a(%rip)        # 40e0d0 <_ZSt24__throw_invalid_argumentPKc@GLIBCXX_3.4>
  4031a6:	68 17 00 00 00       	pushq  $0x17
  4031ab:	e9 70 fe ff ff       	jmpq   403020 <.plt>

00000000004031b0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@plt>:
  4031b0:	ff 25 22 af 00 00    	jmpq   *0xaf22(%rip)        # 40e0d8 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@GLIBCXX_3.4.26>
  4031b6:	68 18 00 00 00       	pushq  $0x18
  4031bb:	e9 60 fe ff ff       	jmpq   403020 <.plt>

00000000004031c0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@plt>:
  4031c0:	ff 25 1a af 00 00    	jmpq   *0xaf1a(%rip)        # 40e0e0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@GLIBCXX_3.4.26>
  4031c6:	68 19 00 00 00       	pushq  $0x19
  4031cb:	e9 50 fe ff ff       	jmpq   403020 <.plt>

00000000004031d0 <_ZNSo9_M_insertIyEERSoT_@plt>:
  4031d0:	ff 25 12 af 00 00    	jmpq   *0xaf12(%rip)        # 40e0e8 <_ZNSo9_M_insertIyEERSoT_@GLIBCXX_3.4.9>
  4031d6:	68 1a 00 00 00       	pushq  $0x1a
  4031db:	e9 40 fe ff ff       	jmpq   403020 <.plt>

00000000004031e0 <_ZNSo9_M_insertImEERSoT_@plt>:
  4031e0:	ff 25 0a af 00 00    	jmpq   *0xaf0a(%rip)        # 40e0f0 <_ZNSo9_M_insertImEERSoT_@GLIBCXX_3.4.9>
  4031e6:	68 1b 00 00 00       	pushq  $0x1b
  4031eb:	e9 30 fe ff ff       	jmpq   403020 <.plt>

00000000004031f0 <_ZSt19__throw_logic_errorPKc@plt>:
  4031f0:	ff 25 02 af 00 00    	jmpq   *0xaf02(%rip)        # 40e0f8 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
  4031f6:	68 1c 00 00 00       	pushq  $0x1c
  4031fb:	e9 20 fe ff ff       	jmpq   403020 <.plt>

0000000000403200 <__cxa_free_exception@plt>:
  403200:	ff 25 fa ae 00 00    	jmpq   *0xaefa(%rip)        # 40e100 <__cxa_free_exception@CXXABI_1.3>
  403206:	68 1d 00 00 00       	pushq  $0x1d
  40320b:	e9 10 fe ff ff       	jmpq   403020 <.plt>

0000000000403210 <aligned_alloc@plt>:
  403210:	ff 25 f2 ae 00 00    	jmpq   *0xaef2(%rip)        # 40e108 <aligned_alloc@GLIBC_2.16>
  403216:	68 1e 00 00 00       	pushq  $0x1e
  40321b:	e9 00 fe ff ff       	jmpq   403020 <.plt>

0000000000403220 <GOMP_atomic_end@plt>:
  403220:	ff 25 ea ae 00 00    	jmpq   *0xaeea(%rip)        # 40e110 <GOMP_atomic_end@GOMP_1.0>
  403226:	68 1f 00 00 00       	pushq  $0x1f
  40322b:	e9 f0 fd ff ff       	jmpq   403020 <.plt>

0000000000403230 <strtod@plt>:
  403230:	ff 25 e2 ae 00 00    	jmpq   *0xaee2(%rip)        # 40e118 <strtod@GLIBC_2.2.5>
  403236:	68 20 00 00 00       	pushq  $0x20
  40323b:	e9 e0 fd ff ff       	jmpq   403020 <.plt>

0000000000403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>:
  403240:	ff 25 da ae 00 00    	jmpq   *0xaeda(%rip)        # 40e120 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@GLIBCXX_3.4.26>
  403246:	68 21 00 00 00       	pushq  $0x21
  40324b:	e9 d0 fd ff ff       	jmpq   403020 <.plt>

0000000000403250 <memcpy@plt>:
  403250:	ff 25 d2 ae 00 00    	jmpq   *0xaed2(%rip)        # 40e128 <memcpy@GLIBC_2.14>
  403256:	68 22 00 00 00       	pushq  $0x22
  40325b:	e9 c0 fd ff ff       	jmpq   403020 <.plt>

0000000000403260 <__cxa_atexit@plt>:
  403260:	ff 25 ca ae 00 00    	jmpq   *0xaeca(%rip)        # 40e130 <__cxa_atexit@GLIBC_2.2.5>
  403266:	68 23 00 00 00       	pushq  $0x23
  40326b:	e9 b0 fd ff ff       	jmpq   403020 <.plt>

0000000000403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>:
  403270:	ff 25 c2 ae 00 00    	jmpq   *0xaec2(%rip)        # 40e138 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@GLIBCXX_3.4>
  403276:	68 24 00 00 00       	pushq  $0x24
  40327b:	e9 a0 fd ff ff       	jmpq   403020 <.plt>

0000000000403280 <clock_gettime@plt>:
  403280:	ff 25 ba ae 00 00    	jmpq   *0xaeba(%rip)        # 40e140 <clock_gettime@GLIBC_2.17>
  403286:	68 25 00 00 00       	pushq  $0x25
  40328b:	e9 90 fd ff ff       	jmpq   403020 <.plt>

0000000000403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  403290:	ff 25 b2 ae 00 00    	jmpq   *0xaeb2(%rip)        # 40e148 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  403296:	68 26 00 00 00       	pushq  $0x26
  40329b:	e9 80 fd ff ff       	jmpq   403020 <.plt>

00000000004032a0 <_Znwm@plt>:
  4032a0:	ff 25 aa ae 00 00    	jmpq   *0xaeaa(%rip)        # 40e150 <_Znwm@GLIBCXX_3.4>
  4032a6:	68 27 00 00 00       	pushq  $0x27
  4032ab:	e9 70 fd ff ff       	jmpq   403020 <.plt>

00000000004032b0 <_ZdlPvm@plt>:
  4032b0:	ff 25 a2 ae 00 00    	jmpq   *0xaea2(%rip)        # 40e158 <_ZdlPvm@CXXABI_1.3.9>
  4032b6:	68 28 00 00 00       	pushq  $0x28
  4032bb:	e9 60 fd ff ff       	jmpq   403020 <.plt>

00000000004032c0 <_ZNSt13runtime_errorD1Ev@plt>:
  4032c0:	ff 25 9a ae 00 00    	jmpq   *0xae9a(%rip)        # 40e160 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
  4032c6:	68 29 00 00 00       	pushq  $0x29
  4032cb:	e9 50 fd ff ff       	jmpq   403020 <.plt>

00000000004032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>:
  4032d0:	ff 25 92 ae 00 00    	jmpq   *0xae92(%rip)        # 40e168 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@GLIBCXX_3.4>
  4032d6:	68 2a 00 00 00       	pushq  $0x2a
  4032db:	e9 40 fd ff ff       	jmpq   403020 <.plt>

00000000004032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
  4032e0:	ff 25 8a ae 00 00    	jmpq   *0xae8a(%rip)        # 40e170 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
  4032e6:	68 2b 00 00 00       	pushq  $0x2b
  4032eb:	e9 30 fd ff ff       	jmpq   403020 <.plt>

00000000004032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>:
  4032f0:	ff 25 82 ae 00 00    	jmpq   *0xae82(%rip)        # 40e178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@GLIBCXX_3.4.21>
  4032f6:	68 2c 00 00 00       	pushq  $0x2c
  4032fb:	e9 20 fd ff ff       	jmpq   403020 <.plt>

0000000000403300 <free@plt>:
  403300:	ff 25 7a ae 00 00    	jmpq   *0xae7a(%rip)        # 40e180 <free@GLIBC_2.2.5>
  403306:	68 2d 00 00 00       	pushq  $0x2d
  40330b:	e9 10 fd ff ff       	jmpq   403020 <.plt>

0000000000403310 <getenv@plt>:
  403310:	ff 25 72 ae 00 00    	jmpq   *0xae72(%rip)        # 40e188 <getenv@GLIBC_2.2.5>
  403316:	68 2e 00 00 00       	pushq  $0x2e
  40331b:	e9 00 fd ff ff       	jmpq   403020 <.plt>

0000000000403320 <strtoull@plt>:
  403320:	ff 25 6a ae 00 00    	jmpq   *0xae6a(%rip)        # 40e190 <strtoull@GLIBC_2.2.5>
  403326:	68 2f 00 00 00       	pushq  $0x2f
  40332b:	e9 f0 fc ff ff       	jmpq   403020 <.plt>

0000000000403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>:
  403330:	ff 25 62 ae 00 00    	jmpq   *0xae62(%rip)        # 40e198 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@GLIBCXX_3.4>
  403336:	68 30 00 00 00       	pushq  $0x30
  40333b:	e9 e0 fc ff ff       	jmpq   403020 <.plt>

0000000000403340 <strtol@plt>:
  403340:	ff 25 5a ae 00 00    	jmpq   *0xae5a(%rip)        # 40e1a0 <strtol@GLIBC_2.2.5>
  403346:	68 31 00 00 00       	pushq  $0x31
  40334b:	e9 d0 fc ff ff       	jmpq   403020 <.plt>

0000000000403350 <_ZNSt6localeD1Ev@plt>:
  403350:	ff 25 52 ae 00 00    	jmpq   *0xae52(%rip)        # 40e1a8 <_ZNSt6localeD1Ev@GLIBCXX_3.4>
  403356:	68 32 00 00 00       	pushq  $0x32
  40335b:	e9 c0 fc ff ff       	jmpq   403020 <.plt>

0000000000403360 <_ZSt20__throw_out_of_rangePKc@plt>:
  403360:	ff 25 4a ae 00 00    	jmpq   *0xae4a(%rip)        # 40e1b0 <_ZSt20__throw_out_of_rangePKc@GLIBCXX_3.4>
  403366:	68 33 00 00 00       	pushq  $0x33
  40336b:	e9 b0 fc ff ff       	jmpq   403020 <.plt>

0000000000403370 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>:
  403370:	ff 25 42 ae 00 00    	jmpq   *0xae42(%rip)        # 40e1b8 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  403376:	68 34 00 00 00       	pushq  $0x34
  40337b:	e9 a0 fc ff ff       	jmpq   403020 <.plt>

0000000000403380 <GOMP_parallel@plt>:
  403380:	ff 25 3a ae 00 00    	jmpq   *0xae3a(%rip)        # 40e1c0 <GOMP_parallel@GOMP_4.0>
  403386:	68 35 00 00 00       	pushq  $0x35
  40338b:	e9 90 fc ff ff       	jmpq   403020 <.plt>

0000000000403390 <_ZNSt8ios_base4InitC1Ev@plt>:
  403390:	ff 25 32 ae 00 00    	jmpq   *0xae32(%rip)        # 40e1c8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  403396:	68 36 00 00 00       	pushq  $0x36
  40339b:	e9 80 fc ff ff       	jmpq   403020 <.plt>

00000000004033a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>:
  4033a0:	ff 25 2a ae 00 00    	jmpq   *0xae2a(%rip)        # 40e1d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@GLIBCXX_3.4.21>
  4033a6:	68 37 00 00 00       	pushq  $0x37
  4033ab:	e9 70 fc ff ff       	jmpq   403020 <.plt>

00000000004033b0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>:
  4033b0:	ff 25 22 ae 00 00    	jmpq   *0xae22(%rip)        # 40e1d8 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  4033b6:	68 38 00 00 00       	pushq  $0x38
  4033bb:	e9 60 fc ff ff       	jmpq   403020 <.plt>

00000000004033c0 <omp_get_thread_num@plt>:
  4033c0:	ff 25 1a ae 00 00    	jmpq   *0xae1a(%rip)        # 40e1e0 <omp_get_thread_num@OMP_1.0>
  4033c6:	68 39 00 00 00       	pushq  $0x39
  4033cb:	e9 50 fc ff ff       	jmpq   403020 <.plt>

00000000004033d0 <_ZNSo9_M_insertIdEERSoT_@plt>:
  4033d0:	ff 25 12 ae 00 00    	jmpq   *0xae12(%rip)        # 40e1e8 <_ZNSo9_M_insertIdEERSoT_@GLIBCXX_3.4.9>
  4033d6:	68 3a 00 00 00       	pushq  $0x3a
  4033db:	e9 40 fc ff ff       	jmpq   403020 <.plt>

00000000004033e0 <__cxa_end_catch@plt>:
  4033e0:	ff 25 0a ae 00 00    	jmpq   *0xae0a(%rip)        # 40e1f0 <__cxa_end_catch@CXXABI_1.3>
  4033e6:	68 3b 00 00 00       	pushq  $0x3b
  4033eb:	e9 30 fc ff ff       	jmpq   403020 <.plt>

00000000004033f0 <__gxx_personality_v0@plt>:
  4033f0:	ff 25 02 ae 00 00    	jmpq   *0xae02(%rip)        # 40e1f8 <__gxx_personality_v0@CXXABI_1.3>
  4033f6:	68 3c 00 00 00       	pushq  $0x3c
  4033fb:	e9 20 fc ff ff       	jmpq   403020 <.plt>

0000000000403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>:
  403400:	ff 25 fa ad 00 00    	jmpq   *0xadfa(%rip)        # 40e200 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@GLIBCXX_3.4>
  403406:	68 3d 00 00 00       	pushq  $0x3d
  40340b:	e9 10 fc ff ff       	jmpq   403020 <.plt>

0000000000403410 <__cxa_throw@plt>:
  403410:	ff 25 f2 ad 00 00    	jmpq   *0xadf2(%rip)        # 40e208 <__cxa_throw@CXXABI_1.3>
  403416:	68 3e 00 00 00       	pushq  $0x3e
  40341b:	e9 00 fc ff ff       	jmpq   403020 <.plt>

0000000000403420 <_ZNSolsEi@plt>:
  403420:	ff 25 ea ad 00 00    	jmpq   *0xadea(%rip)        # 40e210 <_ZNSolsEi@GLIBCXX_3.4>
  403426:	68 3f 00 00 00       	pushq  $0x3f
  40342b:	e9 f0 fb ff ff       	jmpq   403020 <.plt>

0000000000403430 <_Unwind_Resume@plt>:
  403430:	ff 25 e2 ad 00 00    	jmpq   *0xade2(%rip)        # 40e218 <_Unwind_Resume@GCC_3.0>
  403436:	68 40 00 00 00       	pushq  $0x40
  40343b:	e9 e0 fb ff ff       	jmpq   403020 <.plt>

0000000000403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>:
  403440:	ff 25 da ad 00 00    	jmpq   *0xadda(%rip)        # 40e220 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@GLIBCXX_3.4.21>
  403446:	68 41 00 00 00       	pushq  $0x41
  40344b:	e9 d0 fb ff ff       	jmpq   403020 <.plt>

0000000000403450 <GOMP_barrier@plt>:
  403450:	ff 25 d2 ad 00 00    	jmpq   *0xadd2(%rip)        # 40e228 <GOMP_barrier@GOMP_1.0>
  403456:	68 42 00 00 00       	pushq  $0x42
  40345b:	e9 c0 fb ff ff       	jmpq   403020 <.plt>

0000000000403460 <_ZNSt12__basic_fileIcED1Ev@plt>:
  403460:	ff 25 ca ad 00 00    	jmpq   *0xadca(%rip)        # 40e230 <_ZNSt12__basic_fileIcED1Ev@GLIBCXX_3.4>
  403466:	68 43 00 00 00       	pushq  $0x43
  40346b:	e9 b0 fb ff ff       	jmpq   403020 <.plt>

0000000000403470 <omp_get_num_threads@plt>:
  403470:	ff 25 c2 ad 00 00    	jmpq   *0xadc2(%rip)        # 40e238 <omp_get_num_threads@OMP_1.0>
  403476:	68 44 00 00 00       	pushq  $0x44
  40347b:	e9 a0 fb ff ff       	jmpq   403020 <.plt>

0000000000403480 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>:
  403480:	ff 25 ba ad 00 00    	jmpq   *0xadba(%rip)        # 40e240 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@GLIBCXX_3.4.26>
  403486:	68 45 00 00 00       	pushq  $0x45
  40348b:	e9 90 fb ff ff       	jmpq   403020 <.plt>

0000000000403490 <_ZNSt8ios_base4InitD1Ev@plt>:
  403490:	ff 25 b2 ad 00 00    	jmpq   *0xadb2(%rip)        # 40e248 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  403496:	68 46 00 00 00       	pushq  $0x46
  40349b:	e9 80 fb ff ff       	jmpq   403020 <.plt>

Disassembly of section .text:

00000000004034a0 <_Z6windowid.cold>:
  4034a0:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  4034a5:	83 38 00             	cmpl   $0x0,(%rax)
  4034a8:	75 03                	jne    4034ad <_Z6windowid.cold+0xd>
  4034aa:	44 89 28             	mov    %r13d,(%rax)
  4034ad:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  4034b4:	00 
  4034b5:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4034bc:	00 
  4034bd:	48 39 c7             	cmp    %rax,%rdi
  4034c0:	0f 84 30 01 00 00    	je     4035f6 <_Z6windowid.cold+0x156>
  4034c6:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  4034cd:	00 
  4034ce:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4034d2:	c5 f8 77             	vzeroupper 
  4034d5:	e8 d6 fd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4034da:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  4034e1:	00 
  4034e2:	e8 99 65 00 00       	callq  409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4034e7:	48 89 df             	mov    %rbx,%rdi
  4034ea:	e8 41 ff ff ff       	callq  403430 <_Unwind_Resume@plt>
  4034ef:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  4034f6:	00 
  4034f7:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  4034fe:	00 
  4034ff:	48 39 c7             	cmp    %rax,%rdi
  403502:	0f 84 3b 01 00 00    	je     403643 <_Z6windowid.cold+0x1a3>
  403508:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40350f:	00 
  403510:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403514:	c5 f8 77             	vzeroupper 
  403517:	e8 94 fd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40351c:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403523:	00 
  403524:	e8 57 65 00 00       	callq  409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403529:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  403530:	00 
  403531:	4c 39 ff             	cmp    %r15,%rdi
  403534:	75 5c                	jne    403592 <_Z6windowid.cold+0xf2>
  403536:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40353d:	00 
  40353e:	e8 3d 65 00 00       	callq  409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403543:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  403548:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  40354f:	00 
  403550:	48 39 c7             	cmp    %rax,%rdi
  403553:	74 85                	je     4034da <_Z6windowid.cold+0x3a>
  403555:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  40355c:	00 
  40355d:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403561:	e8 4a fd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403566:	e9 6f ff ff ff       	jmpq   4034da <_Z6windowid.cold+0x3a>
  40356b:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  403572:	00 
  403573:	4c 39 ff             	cmp    %r15,%rdi
  403576:	0f 84 82 00 00 00    	je     4035fe <_Z6windowid.cold+0x15e>
  40357c:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  403583:	00 
  403584:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403588:	c5 f8 77             	vzeroupper 
  40358b:	e8 20 fd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403590:	eb a4                	jmp    403536 <_Z6windowid.cold+0x96>
  403592:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  403599:	00 
  40359a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40359e:	e8 0d fd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4035a3:	eb 91                	jmp    403536 <_Z6windowid.cold+0x96>
  4035a5:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  4035ac:	00 
  4035ad:	48 85 f6             	test   %rsi,%rsi
  4035b0:	74 3f                	je     4035f1 <_Z6windowid.cold+0x151>
  4035b2:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  4035b9:	00 
  4035ba:	c5 f8 77             	vzeroupper 
  4035bd:	e8 de fa ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  4035c2:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  4035c9:	00 
  4035ca:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4035d1:	00 
  4035d2:	48 39 c7             	cmp    %rax,%rdi
  4035d5:	0f 84 4e ff ff ff    	je     403529 <_Z6windowid.cold+0x89>
  4035db:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  4035e2:	00 
  4035e3:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4035e7:	e8 c4 fc ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4035ec:	e9 38 ff ff ff       	jmpq   403529 <_Z6windowid.cold+0x89>
  4035f1:	c5 f8 77             	vzeroupper 
  4035f4:	eb cc                	jmp    4035c2 <_Z6windowid.cold+0x122>
  4035f6:	c5 f8 77             	vzeroupper 
  4035f9:	e9 dc fe ff ff       	jmpq   4034da <_Z6windowid.cold+0x3a>
  4035fe:	c5 f8 77             	vzeroupper 
  403601:	e9 30 ff ff ff       	jmpq   403536 <_Z6windowid.cold+0x96>
  403606:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40360b:	83 38 00             	cmpl   $0x0,(%rax)
  40360e:	75 02                	jne    403612 <_Z6windowid.cold+0x172>
  403610:	89 18                	mov    %ebx,(%rax)
  403612:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  403619:	00 
  40361a:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  403621:	00 
  403622:	48 39 c7             	cmp    %rax,%rdi
  403625:	74 24                	je     40364b <_Z6windowid.cold+0x1ab>
  403627:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40362e:	00 
  40362f:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403633:	c5 f8 77             	vzeroupper 
  403636:	e8 75 fc ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40363b:	4c 89 e3             	mov    %r12,%rbx
  40363e:	e9 97 fe ff ff       	jmpq   4034da <_Z6windowid.cold+0x3a>
  403643:	c5 f8 77             	vzeroupper 
  403646:	e9 d1 fe ff ff       	jmpq   40351c <_Z6windowid.cold+0x7c>
  40364b:	c5 f8 77             	vzeroupper 
  40364e:	eb eb                	jmp    40363b <_Z6windowid.cold+0x19b>
  403650:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  403657:	00 
  403658:	c5 f8 77             	vzeroupper 
  40365b:	e8 50 fd ff ff       	callq  4033b0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>
  403660:	48 8b 05 c1 a5 00 00 	mov    0xa5c1(%rip),%rax        # 40dc28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  403667:	48 8b 0d c2 a5 00 00 	mov    0xa5c2(%rip),%rcx        # 40dc30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40366e:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  403675:	00 
  403676:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40367a:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  403681:	00 
  403682:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  403689:	00 
  40368a:	48 c7 84 24 78 02 00 	movq   $0x40db90,0x278(%rsp)
  403691:	00 90 db 40 00 
  403696:	e8 65 fa ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40369b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4036a0:	e8 db 63 00 00       	callq  409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4036a5:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  4036ac:	00 
  4036ad:	e8 ce 63 00 00       	callq  409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4036b2:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  4036b9:	00 
  4036ba:	4c 39 ff             	cmp    %r15,%rdi
  4036bd:	74 11                	je     4036d0 <_Z6windowid.cold+0x230>
  4036bf:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  4036c6:	00 
  4036c7:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4036cb:	e8 e0 fb ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4036d0:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  4036d7:	00 
  4036d8:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  4036df:	00 
  4036e0:	48 39 c7             	cmp    %rax,%rdi
  4036e3:	74 11                	je     4036f6 <_Z6windowid.cold+0x256>
  4036e5:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  4036ec:	00 
  4036ed:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4036f1:	e8 ba fb ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4036f6:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  4036fd:	00 
  4036fe:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  403705:	00 
  403706:	48 39 c7             	cmp    %rax,%rdi
  403709:	0f 84 34 fe ff ff    	je     403543 <_Z6windowid.cold+0xa3>
  40370f:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  403716:	00 
  403717:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40371b:	e8 90 fb ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403720:	e9 1e fe ff ff       	jmpq   403543 <_Z6windowid.cold+0xa3>
  403725:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40372c:	00 
  40372d:	c5 f8 77             	vzeroupper 
  403730:	e8 3b fc ff ff       	callq  403370 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>
  403735:	e9 61 ff ff ff       	jmpq   40369b <_Z6windowid.cold+0x1fb>
  40373a:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
  403741:	00 
  403742:	48 85 f6             	test   %rsi,%rsi
  403745:	74 3e                	je     403785 <_Z6windowid.cold+0x2e5>
  403747:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  40374e:	00 
  40374f:	c5 f8 77             	vzeroupper 
  403752:	e8 49 f9 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  403757:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  40375e:	00 
  40375f:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  403766:	00 
  403767:	48 39 c7             	cmp    %rax,%rdi
  40376a:	74 11                	je     40377d <_Z6windowid.cold+0x2dd>
  40376c:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  403773:	00 
  403774:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403778:	e8 33 fb ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40377d:	4c 89 e7             	mov    %r12,%rdi
  403780:	e8 ab fc ff ff       	callq  403430 <_Unwind_Resume@plt>
  403785:	c5 f8 77             	vzeroupper 
  403788:	eb cd                	jmp    403757 <_Z6windowid.cold+0x2b7>
  40378a:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  403791:	00 
  403792:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  403799:	00 
  40379a:	48 39 c7             	cmp    %rax,%rdi
  40379d:	74 19                	je     4037b8 <_Z6windowid.cold+0x318>
  40379f:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  4037a6:	00 
  4037a7:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4037ab:	c5 f8 77             	vzeroupper 
  4037ae:	e8 fd fa ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4037b3:	e9 22 fd ff ff       	jmpq   4034da <_Z6windowid.cold+0x3a>
  4037b8:	c5 f8 77             	vzeroupper 
  4037bb:	e9 1a fd ff ff       	jmpq   4034da <_Z6windowid.cold+0x3a>
  4037c0:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  4037c7:	00 
  4037c8:	c5 f8 77             	vzeroupper 
  4037cb:	e8 e0 fb ff ff       	callq  4033b0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>
  4037d0:	48 8b 05 51 a4 00 00 	mov    0xa451(%rip),%rax        # 40dc28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  4037d7:	48 8b 0d 52 a4 00 00 	mov    0xa452(%rip),%rcx        # 40dc30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  4037de:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4037e5:	00 
  4037e6:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  4037ea:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  4037f1:	00 
  4037f2:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  4037f9:	00 
  4037fa:	48 c7 84 24 78 02 00 	movq   $0x40db90,0x278(%rsp)
  403801:	00 90 db 40 00 
  403806:	e8 f5 f8 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40380b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  403810:	e8 6b 62 00 00       	callq  409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403815:	e9 1c fd ff ff       	jmpq   403536 <_Z6windowid.cold+0x96>
  40381a:	c5 f8 77             	vzeroupper 
  40381d:	e8 0e f9 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403822:	e8 b9 fb ff ff       	callq  4033e0 <__cxa_end_catch@plt>
  403827:	e9 eb 53 00 00       	jmpq   408c17 <_Z6windowid+0x15d7>
  40382c:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  403831:	c5 f8 77             	vzeroupper 
  403834:	e8 47 62 00 00       	callq  409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403839:	e9 de fc ff ff       	jmpq   40351c <_Z6windowid.cold+0x7c>
  40383e:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403845:	00 
  403846:	c5 f8 77             	vzeroupper 
  403849:	e8 22 fb ff ff       	callq  403370 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>
  40384e:	eb bb                	jmp    40380b <_Z6windowid.cold+0x36b>
  403850:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  403857:	00 
  403858:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40385f:	00 
  403860:	48 39 c7             	cmp    %rax,%rdi
  403863:	74 65                	je     4038ca <_Z6windowid.cold+0x42a>
  403865:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40386c:	00 
  40386d:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403871:	c5 f8 77             	vzeroupper 
  403874:	e8 37 fa ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403879:	e9 78 fe ff ff       	jmpq   4036f6 <_Z6windowid.cold+0x256>
  40387e:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  403885:	00 
  403886:	48 85 f6             	test   %rsi,%rsi
  403889:	74 47                	je     4038d2 <_Z6windowid.cold+0x432>
  40388b:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  403892:	00 
  403893:	c5 f8 77             	vzeroupper 
  403896:	e8 05 f8 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40389b:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  4038a2:	00 
  4038a3:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4038aa:	00 
  4038ab:	48 39 c7             	cmp    %rax,%rdi
  4038ae:	0f 84 fe fd ff ff    	je     4036b2 <_Z6windowid.cold+0x212>
  4038b4:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  4038bb:	00 
  4038bc:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4038c0:	e8 eb f9 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4038c5:	e9 e8 fd ff ff       	jmpq   4036b2 <_Z6windowid.cold+0x212>
  4038ca:	c5 f8 77             	vzeroupper 
  4038cd:	e9 24 fe ff ff       	jmpq   4036f6 <_Z6windowid.cold+0x256>
  4038d2:	c5 f8 77             	vzeroupper 
  4038d5:	eb c4                	jmp    40389b <_Z6windowid.cold+0x3fb>
  4038d7:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4038dc:	c5 f8 77             	vzeroupper 
  4038df:	e8 9c 61 00 00       	callq  409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4038e4:	e9 bc fd ff ff       	jmpq   4036a5 <_Z6windowid.cold+0x205>
  4038e9:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  4038f0:	00 
  4038f1:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  4038f8:	00 
  4038f9:	48 39 c7             	cmp    %rax,%rdi
  4038fc:	74 71                	je     40396f <_Z6windowid.cold+0x4cf>
  4038fe:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  403905:	00 
  403906:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40390a:	c5 f8 77             	vzeroupper 
  40390d:	e8 9e f9 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403912:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  403919:	00 
  40391a:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  403921:	00 
  403922:	48 39 c7             	cmp    %rax,%rdi
  403925:	0f 84 0b fc ff ff    	je     403536 <_Z6windowid.cold+0x96>
  40392b:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  403932:	00 
  403933:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403937:	e8 74 f9 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40393c:	e9 f5 fb ff ff       	jmpq   403536 <_Z6windowid.cold+0x96>
  403941:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403948:	00 
  403949:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403950:	00 
  403951:	48 39 c7             	cmp    %rax,%rdi
  403954:	74 1e                	je     403974 <_Z6windowid.cold+0x4d4>
  403956:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40395d:	00 
  40395e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403962:	c5 f8 77             	vzeroupper 
  403965:	e8 46 f9 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40396a:	e9 36 fd ff ff       	jmpq   4036a5 <_Z6windowid.cold+0x205>
  40396f:	c5 f8 77             	vzeroupper 
  403972:	eb 9e                	jmp    403912 <_Z6windowid.cold+0x472>
  403974:	c5 f8 77             	vzeroupper 
  403977:	e9 29 fd ff ff       	jmpq   4036a5 <_Z6windowid.cold+0x205>
  40397c:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  403983:	00 
  403984:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40398b:	00 
  40398c:	48 39 c7             	cmp    %rax,%rdi
  40398f:	0f 84 e5 02 00 00    	je     403c7a <_Z6windowid.cold+0x7da>
  403995:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40399c:	00 
  40399d:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4039a1:	c5 f8 77             	vzeroupper 
  4039a4:	e8 07 f9 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4039a9:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4039ae:	e8 cd 60 00 00       	callq  409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4039b3:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  4039ba:	00 
  4039bb:	4c 39 ff             	cmp    %r15,%rdi
  4039be:	74 11                	je     4039d1 <_Z6windowid.cold+0x531>
  4039c0:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  4039c7:	00 
  4039c8:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4039cc:	e8 df f8 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4039d1:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  4039d8:	00 
  4039d9:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  4039e0:	00 
  4039e1:	48 39 c7             	cmp    %rax,%rdi
  4039e4:	0f 84 28 ff ff ff    	je     403912 <_Z6windowid.cold+0x472>
  4039ea:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  4039f1:	00 
  4039f2:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4039f6:	e8 b5 f8 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4039fb:	e9 12 ff ff ff       	jmpq   403912 <_Z6windowid.cold+0x472>
  403a00:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  403a07:	00 
  403a08:	48 85 f6             	test   %rsi,%rsi
  403a0b:	0f 84 8b 00 00 00    	je     403a9c <_Z6windowid.cold+0x5fc>
  403a11:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  403a18:	00 
  403a19:	c5 f8 77             	vzeroupper 
  403a1c:	e8 7f f6 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  403a21:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403a28:	00 
  403a29:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403a30:	00 
  403a31:	48 39 c7             	cmp    %rax,%rdi
  403a34:	0f 84 79 ff ff ff    	je     4039b3 <_Z6windowid.cold+0x513>
  403a3a:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403a41:	00 
  403a42:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403a46:	e8 65 f8 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403a4b:	e9 63 ff ff ff       	jmpq   4039b3 <_Z6windowid.cold+0x513>
  403a50:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  403a57:	00 
  403a58:	c5 f8 77             	vzeroupper 
  403a5b:	e8 20 60 00 00       	callq  409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403a60:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403a67:	00 
  403a68:	e8 13 60 00 00       	callq  409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403a6d:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403a74:	00 
  403a75:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403a7c:	00 
  403a7d:	48 39 c7             	cmp    %rax,%rdi
  403a80:	0f 84 bd fa ff ff    	je     403543 <_Z6windowid.cold+0xa3>
  403a86:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403a8d:	00 
  403a8e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403a92:	e8 19 f8 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403a97:	e9 a7 fa ff ff       	jmpq   403543 <_Z6windowid.cold+0xa3>
  403a9c:	c5 f8 77             	vzeroupper 
  403a9f:	eb 80                	jmp    403a21 <_Z6windowid.cold+0x581>
  403aa1:	48 89 c3             	mov    %rax,%rbx
  403aa4:	c5 f8 77             	vzeroupper 
  403aa7:	e9 8a fa ff ff       	jmpq   403536 <_Z6windowid.cold+0x96>
  403aac:	bf 10 00 00 00       	mov    $0x10,%edi
  403ab1:	e8 9a f6 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403ab6:	48 89 c7             	mov    %rax,%rdi
  403ab9:	be b5 b0 40 00       	mov    $0x40b0b5,%esi
  403abe:	49 89 c4             	mov    %rax,%r12
  403ac1:	e8 5a f6 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403ac6:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403acb:	be a0 dd 40 00       	mov    $0x40dda0,%esi
  403ad0:	4c 89 e7             	mov    %r12,%rdi
  403ad3:	e8 38 f9 ff ff       	callq  403410 <__cxa_throw@plt>
  403ad8:	48 89 c3             	mov    %rax,%rbx
  403adb:	4c 89 e7             	mov    %r12,%rdi
  403ade:	c5 f8 77             	vzeroupper 
  403ae1:	e8 1a f7 ff ff       	callq  403200 <__cxa_free_exception@plt>
  403ae6:	e9 4b fa ff ff       	jmpq   403536 <_Z6windowid.cold+0x96>
  403aeb:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  403af2:	00 
  403af3:	c5 f8 77             	vzeroupper 
  403af6:	e8 b5 f8 ff ff       	callq  4033b0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>
  403afb:	4c 89 e8             	mov    %r13,%rax
  403afe:	48 8b 53 e8          	mov    -0x18(%rbx),%rdx
  403b02:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  403b09:	00 
  403b0a:	4c 89 a4 14 80 01 00 	mov    %r12,0x180(%rsp,%rdx,1)
  403b11:	00 
  403b12:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  403b19:	00 00 00 00 00 
  403b1e:	48 89 c3             	mov    %rax,%rbx
  403b21:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  403b28:	00 
  403b29:	48 c7 84 24 80 02 00 	movq   $0x40db90,0x280(%rsp)
  403b30:	00 90 db 40 00 
  403b35:	e8 c6 f5 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  403b3a:	e9 f7 f9 ff ff       	jmpq   403536 <_Z6windowid.cold+0x96>
  403b3f:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403b46:	00 
  403b47:	c5 f8 77             	vzeroupper 
  403b4a:	e8 41 f5 ff ff       	callq  403090 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>
  403b4f:	e9 e2 f9 ff ff       	jmpq   403536 <_Z6windowid.cold+0x96>
  403b54:	c5 f8 77             	vzeroupper 
  403b57:	e8 d4 f5 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403b5c:	e8 7f f8 ff ff       	callq  4033e0 <__cxa_end_catch@plt>
  403b61:	e9 60 55 00 00       	jmpq   4090c6 <_Z6windowid+0x1a86>
  403b66:	c5 f8 77             	vzeroupper 
  403b69:	e8 c2 f5 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403b6e:	e8 6d f8 ff ff       	callq  4033e0 <__cxa_end_catch@plt>
  403b73:	e9 b4 44 00 00       	jmpq   40802c <_Z6windowid+0x9ec>
  403b78:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  403b7f:	00 
  403b80:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  403b87:	00 
  403b88:	48 39 c7             	cmp    %rax,%rdi
  403b8b:	74 69                	je     403bf6 <_Z6windowid.cold+0x756>
  403b8d:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  403b94:	00 
  403b95:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403b99:	c5 f8 77             	vzeroupper 
  403b9c:	e8 0f f7 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403ba1:	e9 ba fe ff ff       	jmpq   403a60 <_Z6windowid.cold+0x5c0>
  403ba6:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  403bad:	00 
  403bae:	48 85 f6             	test   %rsi,%rsi
  403bb1:	0f 84 cb 00 00 00    	je     403c82 <_Z6windowid.cold+0x7e2>
  403bb7:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  403bbe:	00 
  403bbf:	c5 f8 77             	vzeroupper 
  403bc2:	e8 d9 f4 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  403bc7:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  403bce:	00 
  403bcf:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  403bd6:	00 
  403bd7:	48 39 c7             	cmp    %rax,%rdi
  403bda:	0f 84 8d fe ff ff    	je     403a6d <_Z6windowid.cold+0x5cd>
  403be0:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  403be7:	00 
  403be8:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403bec:	e8 bf f6 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403bf1:	e9 77 fe ff ff       	jmpq   403a6d <_Z6windowid.cold+0x5cd>
  403bf6:	c5 f8 77             	vzeroupper 
  403bf9:	e9 62 fe ff ff       	jmpq   403a60 <_Z6windowid.cold+0x5c0>
  403bfe:	bf 10 00 00 00       	mov    $0x10,%edi
  403c03:	e8 48 f5 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403c08:	48 89 c7             	mov    %rax,%rdi
  403c0b:	be d8 b0 40 00       	mov    $0x40b0d8,%esi
  403c10:	49 89 c4             	mov    %rax,%r12
  403c13:	e8 08 f5 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403c18:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403c1d:	be a0 dd 40 00       	mov    $0x40dda0,%esi
  403c22:	4c 89 e7             	mov    %r12,%rdi
  403c25:	e8 e6 f7 ff ff       	callq  403410 <__cxa_throw@plt>
  403c2a:	e9 a9 fe ff ff       	jmpq   403ad8 <_Z6windowid.cold+0x638>
  403c2f:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403c36:	00 
  403c37:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403c3e:	00 
  403c3f:	48 39 c7             	cmp    %rax,%rdi
  403c42:	74 2e                	je     403c72 <_Z6windowid.cold+0x7d2>
  403c44:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403c4b:	00 
  403c4c:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403c50:	c5 f8 77             	vzeroupper 
  403c53:	e8 58 f6 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403c58:	e9 e6 f8 ff ff       	jmpq   403543 <_Z6windowid.cold+0xa3>
  403c5d:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403c64:	00 
  403c65:	c5 f8 77             	vzeroupper 
  403c68:	e8 13 5e 00 00       	callq  409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403c6d:	e9 37 fd ff ff       	jmpq   4039a9 <_Z6windowid.cold+0x509>
  403c72:	c5 f8 77             	vzeroupper 
  403c75:	e9 c9 f8 ff ff       	jmpq   403543 <_Z6windowid.cold+0xa3>
  403c7a:	c5 f8 77             	vzeroupper 
  403c7d:	e9 27 fd ff ff       	jmpq   4039a9 <_Z6windowid.cold+0x509>
  403c82:	c5 f8 77             	vzeroupper 
  403c85:	e9 3d ff ff ff       	jmpq   403bc7 <_Z6windowid.cold+0x727>

0000000000403c8a <main.cold>:
  403c8a:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  403c8f:	75 08                	jne    403c99 <main.cold+0xf>
  403c91:	8b 44 24 48          	mov    0x48(%rsp),%eax
  403c95:	41 89 04 24          	mov    %eax,(%r12)
  403c99:	48 8b bc 24 60 01 00 	mov    0x160(%rsp),%rdi
  403ca0:	00 
  403ca1:	4c 39 ef             	cmp    %r13,%rdi
  403ca4:	0f 84 b9 00 00 00    	je     403d63 <main.cold+0xd9>
  403caa:	48 8b 84 24 70 01 00 	mov    0x170(%rsp),%rax
  403cb1:	00 
  403cb2:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403cb6:	c5 f8 77             	vzeroupper 
  403cb9:	e8 f2 f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403cbe:	48 8b bc 24 30 01 00 	mov    0x130(%rsp),%rdi
  403cc5:	00 
  403cc6:	48 39 ef             	cmp    %rbp,%rdi
  403cc9:	74 11                	je     403cdc <main.cold+0x52>
  403ccb:	48 8b 84 24 40 01 00 	mov    0x140(%rsp),%rax
  403cd2:	00 
  403cd3:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403cd7:	e8 d4 f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403cdc:	4c 89 f5             	mov    %r14,%rbp
  403cdf:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  403ce6:	00 
  403ce7:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  403cee:	00 
  403cef:	48 39 c7             	cmp    %rax,%rdi
  403cf2:	74 11                	je     403d05 <main.cold+0x7b>
  403cf4:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  403cfb:	00 
  403cfc:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d00:	e8 ab f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403d05:	48 89 df             	mov    %rbx,%rdi
  403d08:	48 ff cd             	dec    %rbp
  403d0b:	75 5e                	jne    403d6b <main.cold+0xe1>
  403d0d:	e8 1e f4 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403d12:	48 89 c7             	mov    %rax,%rdi
  403d15:	48 8b 00             	mov    (%rax),%rax
  403d18:	ff 50 10             	callq  *0x10(%rax)
  403d1b:	48 89 c6             	mov    %rax,%rsi
  403d1e:	bf a0 e3 40 00       	mov    $0x40e3a0,%edi
  403d23:	e8 68 f5 ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  403d28:	48 89 c7             	mov    %rax,%rdi
  403d2b:	ba 01 00 00 00       	mov    $0x1,%edx
  403d30:	48 8d b4 24 60 01 00 	lea    0x160(%rsp),%rsi
  403d37:	00 
  403d38:	c6 84 24 60 01 00 00 	movb   $0xa,0x160(%rsp)
  403d3f:	0a 
  403d40:	e8 9b f5 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  403d45:	e8 96 f6 ff ff       	callq  4033e0 <__cxa_end_catch@plt>
  403d4a:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  403d50:	e9 07 04 00 00       	jmpq   40415c <main+0x20c>
  403d55:	48 89 c3             	mov    %rax,%rbx
  403d58:	48 89 d5             	mov    %rdx,%rbp
  403d5b:	c5 f8 77             	vzeroupper 
  403d5e:	e9 7c ff ff ff       	jmpq   403cdf <main.cold+0x55>
  403d63:	c5 f8 77             	vzeroupper 
  403d66:	e9 53 ff ff ff       	jmpq   403cbe <main.cold+0x34>
  403d6b:	e8 c0 f6 ff ff       	callq  403430 <_Unwind_Resume@plt>
  403d70:	48 89 c5             	mov    %rax,%rbp
  403d73:	c5 f8 77             	vzeroupper 
  403d76:	e8 65 f6 ff ff       	callq  4033e0 <__cxa_end_catch@plt>
  403d7b:	48 89 ef             	mov    %rbp,%rdi
  403d7e:	e8 ad f6 ff ff       	callq  403430 <_Unwind_Resume@plt>
  403d83:	48 8b bc 24 60 01 00 	mov    0x160(%rsp),%rdi
  403d8a:	00 
  403d8b:	48 8d 84 24 70 01 00 	lea    0x170(%rsp),%rax
  403d92:	00 
  403d93:	48 39 c7             	cmp    %rax,%rdi
  403d96:	74 47                	je     403ddf <main.cold+0x155>
  403d98:	48 8b 84 24 70 01 00 	mov    0x170(%rsp),%rax
  403d9f:	00 
  403da0:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403da4:	c5 f8 77             	vzeroupper 
  403da7:	e8 04 f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403dac:	e9 0d ff ff ff       	jmpq   403cbe <main.cold+0x34>
  403db1:	48 8b bc 24 60 01 00 	mov    0x160(%rsp),%rdi
  403db8:	00 
  403db9:	48 8d 84 24 70 01 00 	lea    0x170(%rsp),%rax
  403dc0:	00 
  403dc1:	48 39 c7             	cmp    %rax,%rdi
  403dc4:	74 21                	je     403de7 <main.cold+0x15d>
  403dc6:	48 8b 84 24 70 01 00 	mov    0x170(%rsp),%rax
  403dcd:	00 
  403dce:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403dd2:	c5 f8 77             	vzeroupper 
  403dd5:	e8 d6 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403dda:	e9 df fe ff ff       	jmpq   403cbe <main.cold+0x34>
  403ddf:	c5 f8 77             	vzeroupper 
  403de2:	e9 d7 fe ff ff       	jmpq   403cbe <main.cold+0x34>
  403de7:	c5 f8 77             	vzeroupper 
  403dea:	e9 cf fe ff ff       	jmpq   403cbe <main.cold+0x34>
  403def:	bf 10 00 00 00       	mov    $0x10,%edi
  403df4:	e8 57 f3 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403df9:	48 89 c7             	mov    %rax,%rdi
  403dfc:	be f4 b1 40 00       	mov    $0x40b1f4,%esi
  403e01:	49 89 c4             	mov    %rax,%r12
  403e04:	e8 17 f3 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403e09:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403e0e:	be a0 dd 40 00       	mov    $0x40dda0,%esi
  403e13:	4c 89 e7             	mov    %r12,%rdi
  403e16:	e8 f5 f5 ff ff       	callq  403410 <__cxa_throw@plt>
  403e1b:	bf 10 00 00 00       	mov    $0x10,%edi
  403e20:	e8 2b f3 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403e25:	48 89 c7             	mov    %rax,%rdi
  403e28:	be 40 b0 40 00       	mov    $0x40b040,%esi
  403e2d:	49 89 c4             	mov    %rax,%r12
  403e30:	e8 eb f2 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403e35:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403e3a:	be a0 dd 40 00       	mov    $0x40dda0,%esi
  403e3f:	4c 89 e7             	mov    %r12,%rdi
  403e42:	e8 c9 f5 ff ff       	callq  403410 <__cxa_throw@plt>
  403e47:	48 8b bc 24 10 01 00 	mov    0x110(%rsp),%rdi
  403e4e:	00 
  403e4f:	48 8d 84 24 20 01 00 	lea    0x120(%rsp),%rax
  403e56:	00 
  403e57:	48 39 c7             	cmp    %rax,%rdi
  403e5a:	74 69                	je     403ec5 <main.cold+0x23b>
  403e5c:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  403e63:	00 
  403e64:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e68:	c5 f8 77             	vzeroupper 
  403e6b:	e8 40 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e70:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  403e77:	00 
  403e78:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  403e7f:	00 
  403e80:	48 39 c7             	cmp    %rax,%rdi
  403e83:	74 11                	je     403e96 <main.cold+0x20c>
  403e85:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  403e8c:	00 
  403e8d:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e91:	e8 1a f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e96:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  403e9d:	00 
  403e9e:	48 8d 84 24 e0 00 00 	lea    0xe0(%rsp),%rax
  403ea5:	00 
  403ea6:	48 39 c7             	cmp    %rax,%rdi
  403ea9:	0f 84 30 fe ff ff    	je     403cdf <main.cold+0x55>
  403eaf:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  403eb6:	00 
  403eb7:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403ebb:	e8 f0 f3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403ec0:	e9 1a fe ff ff       	jmpq   403cdf <main.cold+0x55>
  403ec5:	c5 f8 77             	vzeroupper 
  403ec8:	eb a6                	jmp    403e70 <main.cold+0x1e6>
  403eca:	bf 10 00 00 00       	mov    $0x10,%edi
  403ecf:	e8 7c f2 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403ed4:	48 89 c7             	mov    %rax,%rdi
  403ed7:	be f4 b1 40 00       	mov    $0x40b1f4,%esi
  403edc:	49 89 c4             	mov    %rax,%r12
  403edf:	e8 3c f2 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403ee4:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403ee9:	be a0 dd 40 00       	mov    $0x40dda0,%esi
  403eee:	4c 89 e7             	mov    %r12,%rdi
  403ef1:	e8 1a f5 ff ff       	callq  403410 <__cxa_throw@plt>
  403ef6:	48 89 c3             	mov    %rax,%rbx
  403ef9:	48 89 d5             	mov    %rdx,%rbp
  403efc:	4c 89 e7             	mov    %r12,%rdi
  403eff:	c5 f8 77             	vzeroupper 
  403f02:	e8 f9 f2 ff ff       	callq  403200 <__cxa_free_exception@plt>
  403f07:	e9 d3 fd ff ff       	jmpq   403cdf <main.cold+0x55>
  403f0c:	eb e8                	jmp    403ef6 <main.cold+0x26c>
  403f0e:	eb e6                	jmp    403ef6 <main.cold+0x26c>
  403f10:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  403f15:	75 08                	jne    403f1f <main.cold+0x295>
  403f17:	8b 44 24 48          	mov    0x48(%rsp),%eax
  403f1b:	41 89 04 24          	mov    %eax,(%r12)
  403f1f:	48 8b bc 24 60 01 00 	mov    0x160(%rsp),%rdi
  403f26:	00 
  403f27:	4c 39 ef             	cmp    %r13,%rdi
  403f2a:	74 19                	je     403f45 <main.cold+0x2bb>
  403f2c:	48 8b 84 24 70 01 00 	mov    0x170(%rsp),%rax
  403f33:	00 
  403f34:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403f38:	c5 f8 77             	vzeroupper 
  403f3b:	e8 70 f3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403f40:	e9 79 fd ff ff       	jmpq   403cbe <main.cold+0x34>
  403f45:	c5 f8 77             	vzeroupper 
  403f48:	e9 71 fd ff ff       	jmpq   403cbe <main.cold+0x34>
  403f4d:	0f 1f 00             	nopl   (%rax)

0000000000403f50 <main>:
  403f50:	41 57                	push   %r15
  403f52:	41 56                	push   %r14
  403f54:	41 55                	push   %r13
  403f56:	41 54                	push   %r12
  403f58:	55                   	push   %rbp
  403f59:	89 fd                	mov    %edi,%ebp
  403f5b:	53                   	push   %rbx
  403f5c:	48 89 f3             	mov    %rsi,%rbx
  403f5f:	be 0a b1 40 00       	mov    $0x40b10a,%esi
  403f64:	48 81 ec 38 0b 00 00 	sub    $0xb38,%rsp
  403f6b:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  403f72:	00 
  403f73:	e8 e8 35 00 00       	callq  407560 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  403f78:	c7 44 24 70 01 00 00 	movl   $0x1,0x70(%rsp)
  403f7f:	00 
  403f80:	83 fd 01             	cmp    $0x1,%ebp
  403f83:	0f 8e 44 06 00 00    	jle    4045cd <main+0x67d>
  403f89:	8d 45 fe             	lea    -0x2(%rbp),%eax
  403f8c:	d1 e8                	shr    %eax
  403f8e:	48 c1 e0 04          	shl    $0x4,%rax
  403f92:	48 8d 44 03 10       	lea    0x10(%rbx,%rax,1),%rax
  403f97:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  403f9c:	8d 45 ff             	lea    -0x1(%rbp),%eax
  403f9f:	d1 e8                	shr    %eax
  403fa1:	48 c1 e0 04          	shl    $0x4,%rax
  403fa5:	48 01 d8             	add    %rbx,%rax
  403fa8:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  403fad:	48 b8 00 00 00 00 02 	movabs $0x200000000,%rax
  403fb4:	00 00 00 
  403fb7:	c5 fb 10 35 39 74 00 	vmovsd 0x7439(%rip),%xmm6        # 40b3f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  403fbe:	00 
  403fbf:	c7 44 24 5c 05 00 00 	movl   $0x5,0x5c(%rsp)
  403fc6:	00 
  403fc7:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  403fcc:	c5 fb 11 34 24       	vmovsd %xmm6,(%rsp)
  403fd1:	c5 fb 11 74 24 50    	vmovsd %xmm6,0x50(%rsp)
  403fd7:	4c 8d b4 24 30 01 00 	lea    0x130(%rsp),%r14
  403fde:	00 
  403fdf:	48 8d ac 24 40 01 00 	lea    0x140(%rsp),%rbp
  403fe6:	00 
  403fe7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  403fee:	00 00 
  403ff0:	4c 8b 63 08          	mov    0x8(%rbx),%r12
  403ff4:	48 89 ac 24 30 01 00 	mov    %rbp,0x130(%rsp)
  403ffb:	00 
  403ffc:	4d 85 e4             	test   %r12,%r12
  403fff:	0f 84 c4 15 00 00    	je     4055c9 <main+0x1679>
  404005:	4c 89 e7             	mov    %r12,%rdi
  404008:	e8 33 f1 ff ff       	callq  403140 <strlen@plt>
  40400d:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  404014:	00 
  404015:	49 89 c5             	mov    %rax,%r13
  404018:	48 83 f8 0f          	cmp    $0xf,%rax
  40401c:	0f 87 96 02 00 00    	ja     4042b8 <main+0x368>
  404022:	48 83 f8 01          	cmp    $0x1,%rax
  404026:	0f 85 74 02 00 00    	jne    4042a0 <main+0x350>
  40402c:	41 0f b6 14 24       	movzbl (%r12),%edx
  404031:	88 94 24 40 01 00 00 	mov    %dl,0x140(%rsp)
  404038:	48 89 ea             	mov    %rbp,%rdx
  40403b:	48 89 84 24 38 01 00 	mov    %rax,0x138(%rsp)
  404042:	00 
  404043:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  404047:	48 3b 5c 24 10       	cmp    0x10(%rsp),%rbx
  40404c:	0f 84 54 05 00 00    	je     4045a6 <main+0x656>
  404052:	be b5 b1 40 00       	mov    $0x40b1b5,%esi
  404057:	4c 89 f7             	mov    %r14,%rdi
  40405a:	e8 61 f0 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40405f:	85 c0                	test   %eax,%eax
  404061:	0f 85 11 01 00 00    	jne    404178 <main+0x228>
  404067:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  40406b:	4c 89 e7             	mov    %r12,%rdi
  40406e:	e8 cd f0 ff ff       	callq  403140 <strlen@plt>
  404073:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  40407a:	00 
  40407b:	49 89 c0             	mov    %rax,%r8
  40407e:	4c 89 e1             	mov    %r12,%rcx
  404081:	31 f6                	xor    %esi,%esi
  404083:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40408a:	00 
  40408b:	e8 10 f3 ff ff       	callq  4033a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  404090:	48 8b bc 24 30 01 00 	mov    0x130(%rsp),%rdi
  404097:	00 
  404098:	48 39 ef             	cmp    %rbp,%rdi
  40409b:	0f 84 e7 01 00 00    	je     404288 <main+0x338>
  4040a1:	48 8b 84 24 40 01 00 	mov    0x140(%rsp),%rax
  4040a8:	00 
  4040a9:	48 83 c3 10          	add    $0x10,%rbx
  4040ad:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4040b1:	e8 fa f1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4040b6:	48 39 5c 24 20       	cmp    %rbx,0x20(%rsp)
  4040bb:	0f 85 2f ff ff ff    	jne    403ff0 <main+0xa0>
  4040c1:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  4040c5:	c5 f9 2f 44 24 50    	vcomisd 0x50(%rsp),%xmm0
  4040cb:	73 63                	jae    404130 <main+0x1e0>
  4040cd:	83 7c 24 5c 00       	cmpl   $0x0,0x5c(%rsp)
  4040d2:	7e 5c                	jle    404130 <main+0x1e0>
  4040d4:	4c 8d 7c 24 78       	lea    0x78(%rsp),%r15
  4040d9:	48 8d 9c 24 80 00 00 	lea    0x80(%rsp),%rbx
  4040e0:	00 
  4040e1:	c4 c1 f9 6e ef       	vmovq  %r15,%xmm5
  4040e6:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
  4040ed:	00 
  4040ee:	c4 e3 d1 22 eb 01    	vpinsrq $0x1,%rbx,%xmm5,%xmm5
  4040f4:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  4040f9:	c5 f9 7f 6c 24 10    	vmovdqa %xmm5,0x10(%rsp)
  4040ff:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
  404104:	8b 44 24 70          	mov    0x70(%rsp),%eax
  404108:	4c 8d a4 24 90 00 00 	lea    0x90(%rsp),%r12
  40410f:	00 
  404110:	c4 c3 d1 22 e4 01    	vpinsrq $0x1,%r12,%xmm5,%xmm4
  404116:	ff c8                	dec    %eax
  404118:	c5 f9 7f 64 24 20    	vmovdqa %xmm4,0x20(%rsp)
  40411e:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  404123:	0f 86 11 05 00 00    	jbe    40463a <main+0x6ea>
  404129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404130:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  404136:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40413d:	00 
  40413e:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  404145:	00 
  404146:	48 39 c7             	cmp    %rax,%rdi
  404149:	74 11                	je     40415c <main+0x20c>
  40414b:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  404152:	00 
  404153:	48 8d 70 01          	lea    0x1(%rax),%rsi
  404157:	e8 54 f1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40415c:	48 81 c4 38 0b 00 00 	add    $0xb38,%rsp
  404163:	5b                   	pop    %rbx
  404164:	5d                   	pop    %rbp
  404165:	44 89 e0             	mov    %r12d,%eax
  404168:	41 5c                	pop    %r12
  40416a:	41 5d                	pop    %r13
  40416c:	41 5e                	pop    %r14
  40416e:	41 5f                	pop    %r15
  404170:	c3                   	retq   
  404171:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404178:	be bc b1 40 00       	mov    $0x40b1bc,%esi
  40417d:	4c 89 f7             	mov    %r14,%rdi
  404180:	e8 3b ef ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404185:	85 c0                	test   %eax,%eax
  404187:	0f 85 7b 01 00 00    	jne    404308 <main+0x3b8>
  40418d:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  404191:	4c 8d ac 24 70 01 00 	lea    0x170(%rsp),%r13
  404198:	00 
  404199:	4c 89 ac 24 60 01 00 	mov    %r13,0x160(%rsp)
  4041a0:	00 
  4041a1:	4d 85 e4             	test   %r12,%r12
  4041a4:	0f 84 ec 13 00 00    	je     405596 <main+0x1646>
  4041aa:	4c 89 e7             	mov    %r12,%rdi
  4041ad:	e8 8e ef ff ff       	callq  403140 <strlen@plt>
  4041b2:	48 89 84 24 10 01 00 	mov    %rax,0x110(%rsp)
  4041b9:	00 
  4041ba:	49 89 c7             	mov    %rax,%r15
  4041bd:	48 83 f8 0f          	cmp    $0xf,%rax
  4041c1:	0f 87 b9 02 00 00    	ja     404480 <main+0x530>
  4041c7:	48 83 f8 01          	cmp    $0x1,%rax
  4041cb:	0f 85 8f 02 00 00    	jne    404460 <main+0x510>
  4041d1:	48 8d 8c 24 10 01 00 	lea    0x110(%rsp),%rcx
  4041d8:	00 
  4041d9:	41 0f b6 14 24       	movzbl (%r12),%edx
  4041de:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  4041e3:	88 94 24 70 01 00 00 	mov    %dl,0x170(%rsp)
  4041ea:	4c 89 ea             	mov    %r13,%rdx
  4041ed:	48 89 84 24 68 01 00 	mov    %rax,0x168(%rsp)
  4041f4:	00 
  4041f5:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4041f9:	e8 42 ee ff ff       	callq  403040 <__errno_location@plt>
  4041fe:	49 89 c4             	mov    %rax,%r12
  404201:	4c 8b bc 24 60 01 00 	mov    0x160(%rsp),%r15
  404208:	00 
  404209:	8b 00                	mov    (%rax),%eax
  40420b:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  404212:	00 
  404213:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  404218:	ba 0a 00 00 00       	mov    $0xa,%edx
  40421d:	4c 89 ff             	mov    %r15,%rdi
  404220:	89 44 24 48          	mov    %eax,0x48(%rsp)
  404224:	e8 f7 f0 ff ff       	callq  403320 <strtoull@plt>
  404229:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  40422e:	4c 3b bc 24 10 01 00 	cmp    0x110(%rsp),%r15
  404235:	00 
  404236:	0f 84 6e 13 00 00    	je     4055aa <main+0x165a>
  40423c:	41 8b 04 24          	mov    (%r12),%eax
  404240:	83 f8 22             	cmp    $0x22,%eax
  404243:	0f 84 57 13 00 00    	je     4055a0 <main+0x1650>
  404249:	85 c0                	test   %eax,%eax
  40424b:	75 08                	jne    404255 <main+0x305>
  40424d:	8b 44 24 48          	mov    0x48(%rsp),%eax
  404251:	41 89 04 24          	mov    %eax,(%r12)
  404255:	48 8b bc 24 60 01 00 	mov    0x160(%rsp),%rdi
  40425c:	00 
  40425d:	4c 39 ef             	cmp    %r13,%rdi
  404260:	0f 84 2a fe ff ff    	je     404090 <main+0x140>
  404266:	48 8b 84 24 70 01 00 	mov    0x170(%rsp),%rax
  40426d:	00 
  40426e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  404272:	e8 39 f0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  404277:	48 8b bc 24 30 01 00 	mov    0x130(%rsp),%rdi
  40427e:	00 
  40427f:	48 39 ef             	cmp    %rbp,%rdi
  404282:	0f 85 19 fe ff ff    	jne    4040a1 <main+0x151>
  404288:	48 83 c3 10          	add    $0x10,%rbx
  40428c:	48 39 5c 24 20       	cmp    %rbx,0x20(%rsp)
  404291:	0f 85 59 fd ff ff    	jne    403ff0 <main+0xa0>
  404297:	e9 25 fe ff ff       	jmpq   4040c1 <main+0x171>
  40429c:	0f 1f 40 00          	nopl   0x0(%rax)
  4042a0:	48 85 c0             	test   %rax,%rax
  4042a3:	0f 85 3e 13 00 00    	jne    4055e7 <main+0x1697>
  4042a9:	48 89 ea             	mov    %rbp,%rdx
  4042ac:	e9 8a fd ff ff       	jmpq   40403b <main+0xeb>
  4042b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4042b8:	31 d2                	xor    %edx,%edx
  4042ba:	48 8d b4 24 60 01 00 	lea    0x160(%rsp),%rsi
  4042c1:	00 
  4042c2:	4c 89 f7             	mov    %r14,%rdi
  4042c5:	e8 76 f1 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4042ca:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  4042d1:	00 
  4042d2:	48 89 c7             	mov    %rax,%rdi
  4042d5:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  4042dc:	00 
  4042dd:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
  4042e4:	00 
  4042e5:	4c 89 ea             	mov    %r13,%rdx
  4042e8:	4c 89 e6             	mov    %r12,%rsi
  4042eb:	e8 60 ef ff ff       	callq  403250 <memcpy@plt>
  4042f0:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  4042f7:	00 
  4042f8:	48 8b 94 24 30 01 00 	mov    0x130(%rsp),%rdx
  4042ff:	00 
  404300:	e9 36 fd ff ff       	jmpq   40403b <main+0xeb>
  404305:	0f 1f 00             	nopl   (%rax)
  404308:	be cb b1 40 00       	mov    $0x40b1cb,%esi
  40430d:	4c 89 f7             	mov    %r14,%rdi
  404310:	e8 ab ed ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404315:	85 c0                	test   %eax,%eax
  404317:	0f 85 d3 00 00 00    	jne    4043f0 <main+0x4a0>
  40431d:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  404321:	4c 8d ac 24 70 01 00 	lea    0x170(%rsp),%r13
  404328:	00 
  404329:	4c 89 ac 24 60 01 00 	mov    %r13,0x160(%rsp)
  404330:	00 
  404331:	4d 85 e4             	test   %r12,%r12
  404334:	0f 84 a3 12 00 00    	je     4055dd <main+0x168d>
  40433a:	4c 89 e7             	mov    %r12,%rdi
  40433d:	e8 fe ed ff ff       	callq  403140 <strlen@plt>
  404342:	48 89 84 24 10 01 00 	mov    %rax,0x110(%rsp)
  404349:	00 
  40434a:	49 89 c7             	mov    %rax,%r15
  40434d:	48 83 f8 0f          	cmp    $0xf,%rax
  404351:	0f 87 05 02 00 00    	ja     40455c <main+0x60c>
  404357:	48 83 f8 01          	cmp    $0x1,%rax
  40435b:	0f 85 e0 01 00 00    	jne    404541 <main+0x5f1>
  404361:	41 0f b6 04 24       	movzbl (%r12),%eax
  404366:	88 84 24 70 01 00 00 	mov    %al,0x170(%rsp)
  40436d:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  404374:	00 
  404375:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40437a:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
  404381:	00 
  404382:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
  404389:	00 
  40438a:	48 89 84 24 68 01 00 	mov    %rax,0x168(%rsp)
  404391:	00 
  404392:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  404396:	e8 a5 ec ff ff       	callq  403040 <__errno_location@plt>
  40439b:	49 89 c4             	mov    %rax,%r12
  40439e:	4c 8b bc 24 60 01 00 	mov    0x160(%rsp),%r15
  4043a5:	00 
  4043a6:	8b 00                	mov    (%rax),%eax
  4043a8:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  4043af:	00 
  4043b0:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  4043b5:	4c 89 ff             	mov    %r15,%rdi
  4043b8:	89 44 24 48          	mov    %eax,0x48(%rsp)
  4043bc:	e8 6f ee ff ff       	callq  403230 <strtod@plt>
  4043c1:	c5 fb 11 44 24 50    	vmovsd %xmm0,0x50(%rsp)
  4043c7:	4c 3b bc 24 10 01 00 	cmp    0x110(%rsp),%r15
  4043ce:	00 
  4043cf:	0f 84 fe 11 00 00    	je     4055d3 <main+0x1683>
  4043d5:	41 8b 04 24          	mov    (%r12),%eax
  4043d9:	83 f8 22             	cmp    $0x22,%eax
  4043dc:	0f 85 67 fe ff ff    	jne    404249 <main+0x2f9>
  4043e2:	bf d5 b1 40 00       	mov    $0x40b1d5,%edi
  4043e7:	e8 74 ef ff ff       	callq  403360 <_ZSt20__throw_out_of_rangePKc@plt>
  4043ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4043f0:	be da b1 40 00       	mov    $0x40b1da,%esi
  4043f5:	4c 89 f7             	mov    %r14,%rdi
  4043f8:	e8 c3 ec ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4043fd:	85 c0                	test   %eax,%eax
  4043ff:	0f 85 d5 00 00 00    	jne    4044da <main+0x58a>
  404405:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  404409:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  404410:	00 
  404411:	e8 4a 31 00 00       	callq  407560 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404416:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
  40441d:	00 
  40441e:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  404424:	31 c9                	xor    %ecx,%ecx
  404426:	be 89 b0 40 00       	mov    $0x40b089,%esi
  40442b:	bf 40 33 40 00       	mov    $0x403340,%edi
  404430:	e8 8b 56 00 00       	callq  409ac0 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  404435:	48 8b bc 24 60 01 00 	mov    0x160(%rsp),%rdi
  40443c:	00 
  40443d:	89 44 24 5c          	mov    %eax,0x5c(%rsp)
  404441:	48 8d 84 24 70 01 00 	lea    0x170(%rsp),%rax
  404448:	00 
  404449:	48 39 c7             	cmp    %rax,%rdi
  40444c:	0f 85 14 fe ff ff    	jne    404266 <main+0x316>
  404452:	e9 39 fc ff ff       	jmpq   404090 <main+0x140>
  404457:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40445e:	00 00 
  404460:	48 85 c0             	test   %rax,%rax
  404463:	0f 85 4b 11 00 00    	jne    4055b4 <main+0x1664>
  404469:	48 8d 8c 24 10 01 00 	lea    0x110(%rsp),%rcx
  404470:	00 
  404471:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  404476:	4c 89 ea             	mov    %r13,%rdx
  404479:	e9 6f fd ff ff       	jmpq   4041ed <main+0x29d>
  40447e:	66 90                	xchg   %ax,%ax
  404480:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  404487:	00 
  404488:	31 d2                	xor    %edx,%edx
  40448a:	48 89 c6             	mov    %rax,%rsi
  40448d:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  404494:	00 
  404495:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40449a:	e8 a1 ef ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40449f:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  4044a6:	00 
  4044a7:	48 89 c7             	mov    %rax,%rdi
  4044aa:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
  4044b1:	00 
  4044b2:	48 89 84 24 70 01 00 	mov    %rax,0x170(%rsp)
  4044b9:	00 
  4044ba:	4c 89 fa             	mov    %r15,%rdx
  4044bd:	4c 89 e6             	mov    %r12,%rsi
  4044c0:	e8 8b ed ff ff       	callq  403250 <memcpy@plt>
  4044c5:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
  4044cc:	00 
  4044cd:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
  4044d4:	00 
  4044d5:	e9 13 fd ff ff       	jmpq   4041ed <main+0x29d>
  4044da:	be e8 b1 40 00       	mov    $0x40b1e8,%esi
  4044df:	4c 89 f7             	mov    %r14,%rdi
  4044e2:	e8 d9 eb ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4044e7:	85 c0                	test   %eax,%eax
  4044e9:	0f 85 b7 00 00 00    	jne    4045a6 <main+0x656>
  4044ef:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  4044f3:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  4044fa:	00 
  4044fb:	e8 60 30 00 00       	callq  407560 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404500:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
  404507:	00 
  404508:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  40450e:	31 c9                	xor    %ecx,%ecx
  404510:	be 89 b0 40 00       	mov    $0x40b089,%esi
  404515:	bf 40 33 40 00       	mov    $0x403340,%edi
  40451a:	e8 a1 55 00 00       	callq  409ac0 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  40451f:	48 8b bc 24 60 01 00 	mov    0x160(%rsp),%rdi
  404526:	00 
  404527:	89 44 24 70          	mov    %eax,0x70(%rsp)
  40452b:	48 8d 84 24 70 01 00 	lea    0x170(%rsp),%rax
  404532:	00 
  404533:	48 39 c7             	cmp    %rax,%rdi
  404536:	0f 85 2a fd ff ff    	jne    404266 <main+0x316>
  40453c:	e9 4f fb ff ff       	jmpq   404090 <main+0x140>
  404541:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  404548:	00 
  404549:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40454e:	4d 85 ff             	test   %r15,%r15
  404551:	0f 84 23 fe ff ff    	je     40437a <main+0x42a>
  404557:	4c 89 ef             	mov    %r13,%rdi
  40455a:	eb 3a                	jmp    404596 <main+0x646>
  40455c:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  404563:	00 
  404564:	31 d2                	xor    %edx,%edx
  404566:	48 89 c6             	mov    %rax,%rsi
  404569:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  404570:	00 
  404571:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  404576:	e8 c5 ee ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40457b:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  404582:	00 
  404583:	48 89 c7             	mov    %rax,%rdi
  404586:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
  40458d:	00 
  40458e:	48 89 84 24 70 01 00 	mov    %rax,0x170(%rsp)
  404595:	00 
  404596:	4c 89 fa             	mov    %r15,%rdx
  404599:	4c 89 e6             	mov    %r12,%rsi
  40459c:	e8 af ec ff ff       	callq  403250 <memcpy@plt>
  4045a1:	e9 d4 fd ff ff       	jmpq   40437a <main+0x42a>
  4045a6:	48 8b bc 24 30 01 00 	mov    0x130(%rsp),%rdi
  4045ad:	00 
  4045ae:	48 39 ef             	cmp    %rbp,%rdi
  4045b1:	0f 84 79 fb ff ff    	je     404130 <main+0x1e0>
  4045b7:	48 8b 84 24 40 01 00 	mov    0x140(%rsp),%rax
  4045be:	00 
  4045bf:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4045c3:	e8 e8 ec ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4045c8:	e9 63 fb ff ff       	jmpq   404130 <main+0x1e0>
  4045cd:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
  4045d4:	00 
  4045d5:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
  4045da:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  4045df:	b8 01 00 00 00       	mov    $0x1,%eax
  4045e4:	4c 8d 7c 24 78       	lea    0x78(%rsp),%r15
  4045e9:	4c 8d a4 24 90 00 00 	lea    0x90(%rsp),%r12
  4045f0:	00 
  4045f1:	48 c1 e0 21          	shl    $0x21,%rax
  4045f5:	c4 c3 d1 22 e4 01    	vpinsrq $0x1,%r12,%xmm5,%xmm4
  4045fb:	48 8d 9c 24 80 00 00 	lea    0x80(%rsp),%rbx
  404602:	00 
  404603:	c5 fb 10 2d ed 6d 00 	vmovsd 0x6ded(%rip),%xmm5        # 40b3f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  40460a:	00 
  40460b:	c4 c1 f9 6e f7       	vmovq  %r15,%xmm6
  404610:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  404615:	c7 44 24 5c 05 00 00 	movl   $0x5,0x5c(%rsp)
  40461c:	00 
  40461d:	c4 e3 c9 22 fb 01    	vpinsrq $0x1,%rbx,%xmm6,%xmm7
  404623:	c5 f9 7f 7c 24 10    	vmovdqa %xmm7,0x10(%rsp)
  404629:	c5 f9 7f 64 24 20    	vmovdqa %xmm4,0x20(%rsp)
  40462f:	c5 fb 11 2c 24       	vmovsd %xmm5,(%rsp)
  404634:	c5 fb 11 6c 24 50    	vmovsd %xmm5,0x50(%rsp)
  40463a:	be 0a b1 40 00       	mov    $0x40b10a,%esi
  40463f:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  404646:	00 
  404647:	e8 74 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40464c:	85 c0                	test   %eax,%eax
  40464e:	be 25 b1 40 00       	mov    $0x40b125,%esi
  404653:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40465a:	00 
  40465b:	0f 94 44 24 68       	sete   0x68(%rsp)
  404660:	e8 5b ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404665:	85 c0                	test   %eax,%eax
  404667:	be ec b1 40 00       	mov    $0x40b1ec,%esi
  40466c:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  404673:	00 
  404674:	0f 94 44 24 69       	sete   0x69(%rsp)
  404679:	e8 42 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40467e:	85 c0                	test   %eax,%eax
  404680:	be 47 b1 40 00       	mov    $0x40b147,%esi
  404685:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40468c:	00 
  40468d:	0f 94 44 24 6a       	sete   0x6a(%rsp)
  404692:	e8 29 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404697:	85 c0                	test   %eax,%eax
  404699:	be 42 b1 40 00       	mov    $0x40b142,%esi
  40469e:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  4046a5:	00 
  4046a6:	0f 94 44 24 6b       	sete   0x6b(%rsp)
  4046ab:	e8 10 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4046b0:	85 c0                	test   %eax,%eax
  4046b2:	be 4c b1 40 00       	mov    $0x40b14c,%esi
  4046b7:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  4046be:	00 
  4046bf:	0f 94 44 24 6c       	sete   0x6c(%rsp)
  4046c4:	e8 f7 e9 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4046c9:	85 c0                	test   %eax,%eax
  4046cb:	0f 94 c0             	sete   %al
  4046ce:	80 7c 24 68 00       	cmpb   $0x0,0x68(%rsp)
  4046d3:	88 44 24 6d          	mov    %al,0x6d(%rsp)
  4046d7:	75 24                	jne    4046fd <main+0x7ad>
  4046d9:	80 7c 24 69 00       	cmpb   $0x0,0x69(%rsp)
  4046de:	75 1d                	jne    4046fd <main+0x7ad>
  4046e0:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  4046e5:	75 16                	jne    4046fd <main+0x7ad>
  4046e7:	80 7c 24 6b 00       	cmpb   $0x0,0x6b(%rsp)
  4046ec:	75 0f                	jne    4046fd <main+0x7ad>
  4046ee:	80 7c 24 6c 00       	cmpb   $0x0,0x6c(%rsp)
  4046f3:	75 08                	jne    4046fd <main+0x7ad>
  4046f5:	84 c0                	test   %al,%al
  4046f7:	0f 84 33 fa ff ff    	je     404130 <main+0x1e0>
  4046fd:	48 8d 44 24 74       	lea    0x74(%rsp),%rax
  404702:	31 c9                	xor    %ecx,%ecx
  404704:	31 d2                	xor    %edx,%edx
  404706:	48 8d b4 24 60 01 00 	lea    0x160(%rsp),%rsi
  40470d:	00 
  40470e:	bf 00 59 40 00       	mov    $0x405900,%edi
  404713:	c7 44 24 74 00 00 00 	movl   $0x0,0x74(%rsp)
  40471a:	00 
  40471b:	c6 44 24 6e 01       	movb   $0x1,0x6e(%rsp)
  404720:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  404727:	00 
  404728:	e8 53 ec ff ff       	callq  403380 <GOMP_parallel@plt>
  40472d:	80 7c 24 68 00       	cmpb   $0x0,0x68(%rsp)
  404732:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
  404739:	00 00 
  40473b:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
  404742:	00 00 00 00 00 
  404747:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
  40474e:	00 00 00 00 00 
  404753:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
  40475a:	00 00 00 00 00 
  40475f:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
  404766:	00 00 00 00 00 
  40476b:	0f 85 40 08 00 00    	jne    404fb1 <main+0x1061>
  404771:	80 7c 24 69 00       	cmpb   $0x0,0x69(%rsp)
  404776:	0f 84 a0 00 00 00    	je     40481c <main+0x8cc>
  40477c:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
  404781:	48 c1 ed 04          	shr    $0x4,%rbp
  404785:	48 83 e5 c0          	and    $0xffffffffffffffc0,%rbp
  404789:	48 89 6c 24 78       	mov    %rbp,0x78(%rsp)
  40478e:	0f 84 9c f9 ff ff    	je     404130 <main+0x1e0>
  404794:	48 8d 34 ed 00 00 00 	lea    0x0(,%rbp,8),%rsi
  40479b:	00 
  40479c:	bf 40 00 00 00       	mov    $0x40,%edi
  4047a1:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
  4047a6:	e8 65 ea ff ff       	callq  403210 <aligned_alloc@plt>
  4047ab:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  4047b0:	bf 40 00 00 00       	mov    $0x40,%edi
  4047b5:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
  4047bc:	00 
  4047bd:	49 89 c5             	mov    %rax,%r13
  4047c0:	e8 4b ea ff ff       	callq  403210 <aligned_alloc@plt>
  4047c5:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  4047cc:	00 
  4047cd:	4d 85 ed             	test   %r13,%r13
  4047d0:	0f 84 f4 f6 ff ff    	je     403eca <main.cold+0x240>
  4047d6:	48 85 c0             	test   %rax,%rax
  4047d9:	0f 84 eb f6 ff ff    	je     403eca <main.cold+0x240>
  4047df:	48 c1 e5 04          	shl    $0x4,%rbp
  4047e3:	48 89 6c 24 40       	mov    %rbp,0x40(%rsp)
  4047e8:	c5 f9 6f 6c 24 10    	vmovdqa 0x10(%rsp),%xmm5
  4047ee:	c5 f9 6f 64 24 20    	vmovdqa 0x20(%rsp),%xmm4
  4047f4:	31 c9                	xor    %ecx,%ecx
  4047f6:	31 d2                	xor    %edx,%edx
  4047f8:	48 8d b4 24 60 01 00 	lea    0x160(%rsp),%rsi
  4047ff:	00 
  404800:	bf 90 57 40 00       	mov    $0x405790,%edi
  404805:	c5 f9 7f ac 24 60 01 	vmovdqa %xmm5,0x160(%rsp)
  40480c:	00 00 
  40480e:	c5 f9 7f a4 24 70 01 	vmovdqa %xmm4,0x170(%rsp)
  404815:	00 00 
  404817:	e8 64 eb ff ff       	callq  403380 <GOMP_parallel@plt>
  40481c:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  404821:	0f 84 42 0d 00 00    	je     405569 <main+0x1619>
  404827:	83 7c 24 74 01       	cmpl   $0x1,0x74(%rsp)
  40482c:	0f 85 e9 f5 ff ff    	jne    403e1b <main.cold+0x191>
  404832:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
  404837:	48 c1 ed 06          	shr    $0x6,%rbp
  40483b:	48 89 6c 24 78       	mov    %rbp,0x78(%rsp)
  404840:	48 83 fd 01          	cmp    $0x1,%rbp
  404844:	0f 86 e6 f8 ff ff    	jbe    404130 <main+0x1e0>
  40484a:	48 89 e8             	mov    %rbp,%rax
  40484d:	48 c1 e0 06          	shl    $0x6,%rax
  404851:	48 89 c6             	mov    %rax,%rsi
  404854:	bf 40 00 00 00       	mov    $0x40,%edi
  404859:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  40485e:	e8 ad e9 ff ff       	callq  403210 <aligned_alloc@plt>
  404863:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  404868:	48 85 c0             	test   %rax,%rax
  40486b:	0f 84 7e f5 ff ff    	je     403def <main.cold+0x165>
  404871:	4c 8d 2c ed 00 00 00 	lea    0x0(,%rbp,8),%r13
  404878:	00 
  404879:	4c 89 ef             	mov    %r13,%rdi
  40487c:	e8 1f ea ff ff       	callq  4032a0 <_Znwm@plt>
  404881:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  404888:	4e 8d 0c 28          	lea    (%rax,%r13,1),%r9
  40488c:	49 8d 55 f8          	lea    -0x8(%r13),%rdx
  404890:	48 8d 78 08          	lea    0x8(%rax),%rdi
  404894:	31 f6                	xor    %esi,%esi
  404896:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
  40489b:	49 89 c6             	mov    %rax,%r14
  40489e:	e8 dd e8 ff ff       	callq  403180 <memset@plt>
  4048a3:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
  4048a8:	31 c0                	xor    %eax,%eax
  4048aa:	49 89 04 c6          	mov    %rax,(%r14,%rax,8)
  4048ae:	48 ff c0             	inc    %rax
  4048b1:	48 39 c5             	cmp    %rax,%rbp
  4048b4:	75 f4                	jne    4048aa <main+0x95a>
  4048b6:	48 c7 84 24 60 01 00 	movq   $0x7,0x160(%rsp)
  4048bd:	00 07 00 00 00 
  4048c2:	b8 07 00 00 00       	mov    $0x7,%eax
  4048c7:	b9 01 00 00 00       	mov    $0x1,%ecx
  4048cc:	48 be 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rsi
  4048d3:	f4 51 58 
  4048d6:	48 89 c2             	mov    %rax,%rdx
  4048d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4048e0:	48 89 d0             	mov    %rdx,%rax
  4048e3:	48 c1 e8 3e          	shr    $0x3e,%rax
  4048e7:	48 31 d0             	xor    %rdx,%rax
  4048ea:	48 0f af c6          	imul   %rsi,%rax
  4048ee:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  4048f2:	48 89 94 cc 60 01 00 	mov    %rdx,0x160(%rsp,%rcx,8)
  4048f9:	00 
  4048fa:	48 ff c1             	inc    %rcx
  4048fd:	48 81 f9 38 01 00 00 	cmp    $0x138,%rcx
  404904:	75 da                	jne    4048e0 <main+0x990>
  404906:	4c 89 ce             	mov    %r9,%rsi
  404909:	48 8d 94 24 60 01 00 	lea    0x160(%rsp),%rdx
  404910:	00 
  404911:	4c 89 f7             	mov    %r14,%rdi
  404914:	48 c7 84 24 20 0b 00 	movq   $0x138,0xb20(%rsp)
  40491b:	00 38 01 00 00 
  404920:	e8 fb 53 00 00       	callq  409d20 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>
  404925:	48 8b 74 24 78       	mov    0x78(%rsp),%rsi
  40492a:	31 c9                	xor    %ecx,%ecx
  40492c:	eb 2b                	jmp    404959 <main+0xa09>
  40492e:	48 ff c1             	inc    %rcx
  404931:	b8 06 00 00 00       	mov    $0x6,%eax
  404936:	c4 c2 f9 f7 7c ce f8 	shlx   %rax,-0x8(%r14,%rcx,8),%rdi
  40493d:	31 d2                	xor    %edx,%edx
  40493f:	48 89 c8             	mov    %rcx,%rax
  404942:	48 f7 f6             	div    %rsi
  404945:	49 8b 04 d6          	mov    (%r14,%rdx,8),%rax
  404949:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  40494e:	48 c1 e0 06          	shl    $0x6,%rax
  404952:	48 01 d0             	add    %rdx,%rax
  404955:	48 89 04 3a          	mov    %rax,(%rdx,%rdi,1)
  404959:	48 39 ce             	cmp    %rcx,%rsi
  40495c:	75 d0                	jne    40492e <main+0x9de>
  40495e:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  404963:	4c 89 ee             	mov    %r13,%rsi
  404966:	4c 89 f7             	mov    %r14,%rdi
  404969:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
  404970:	00 
  404971:	e8 3a e9 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  404976:	48 8b 4c 24 78       	mov    0x78(%rsp),%rcx
  40497b:	31 c0                	xor    %eax,%eax
  40497d:	eb 0e                	jmp    40498d <main+0xa3d>
  40497f:	48 8b 12             	mov    (%rdx),%rdx
  404982:	48 ff c0             	inc    %rax
  404985:	48 89 94 24 98 00 00 	mov    %rdx,0x98(%rsp)
  40498c:	00 
  40498d:	48 8b 94 24 98 00 00 	mov    0x98(%rsp),%rdx
  404994:	00 
  404995:	48 39 c1             	cmp    %rax,%rcx
  404998:	75 e5                	jne    40497f <main+0xa2f>
  40499a:	48 39 54 24 38       	cmp    %rdx,0x38(%rsp)
  40499f:	0f 94 c0             	sete   %al
  4049a2:	20 44 24 6e          	and    %al,0x6e(%rsp)
  4049a6:	48 8d 44 24 6a       	lea    0x6a(%rsp),%rax
  4049ab:	c4 61 f9 6e d8       	vmovq  %rax,%xmm11
  4049b0:	48 8d 84 24 98 00 00 	lea    0x98(%rsp),%rax
  4049b7:	00 
  4049b8:	c4 63 a1 22 d8 01    	vpinsrq $0x1,%rax,%xmm11,%xmm11
  4049be:	48 8d 44 24 68       	lea    0x68(%rsp),%rax
  4049c3:	c4 61 f9 6e d0       	vmovq  %rax,%xmm10
  4049c8:	c4 c1 f9 6e f4       	vmovq  %r12,%xmm6
  4049cd:	48 8d 44 24 69       	lea    0x69(%rsp),%rax
  4049d2:	c4 63 c9 22 c8 01    	vpinsrq $0x1,%rax,%xmm6,%xmm9
  4049d8:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
  4049dd:	c4 61 f9 6e c0       	vmovq  %rax,%xmm8
  4049e2:	48 8d 44 24 6d       	lea    0x6d(%rsp),%rax
  4049e7:	c4 e1 f9 6e fb       	vmovq  %rbx,%xmm7
  4049ec:	c4 63 b9 22 c0 01    	vpinsrq $0x1,%rax,%xmm8,%xmm8
  4049f2:	48 8d 44 24 6b       	lea    0x6b(%rsp),%rax
  4049f7:	c4 63 c1 22 74 24 48 	vpinsrq $0x1,0x48(%rsp),%xmm7,%xmm14
  4049fe:	01 
  4049ff:	c4 e1 f9 6e f8       	vmovq  %rax,%xmm7
  404a04:	48 8d 84 24 a8 00 00 	lea    0xa8(%rsp),%rax
  404a0b:	00 
  404a0c:	c4 e3 c1 22 f8 01    	vpinsrq $0x1,%rax,%xmm7,%xmm7
  404a12:	48 8d 44 24 6e       	lea    0x6e(%rsp),%rax
  404a17:	c4 e1 f9 6e f0       	vmovq  %rax,%xmm6
  404a1c:	48 8d 44 24 6c       	lea    0x6c(%rsp),%rax
  404a21:	c4 e3 c9 22 f0 01    	vpinsrq $0x1,%rax,%xmm6,%xmm6
  404a27:	0f b6 4c 24 6b       	movzbl 0x6b(%rsp),%ecx
  404a2c:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  404a33:	00 
  404a34:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
  404a39:	48 8d 44 24 74       	lea    0x74(%rsp),%rax
  404a3e:	48 c7 84 24 a0 00 00 	movq   $0x0,0xa0(%rsp)
  404a45:	00 00 00 00 00 
  404a4a:	c4 43 a9 22 d7 01    	vpinsrq $0x1,%r15,%xmm10,%xmm10
  404a50:	c4 e3 d1 22 e8 01    	vpinsrq $0x1,%rax,%xmm5,%xmm5
  404a56:	84 c9                	test   %cl,%cl
  404a58:	75 0b                	jne    404a65 <main+0xb15>
  404a5a:	80 7c 24 6c 00       	cmpb   $0x0,0x6c(%rsp)
  404a5f:	0f 84 7d 00 00 00    	je     404ae2 <main+0xb92>
  404a65:	c5 fb 10 1d ab 69 00 	vmovsd 0x69ab(%rip),%xmm3        # 40b418 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  404a6c:	00 
  404a6d:	c5 7b 10 2d d3 69 00 	vmovsd 0x69d3(%rip),%xmm13        # 40b448 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x128>
  404a74:	00 
  404a75:	c5 fa 10 15 cb 6a 00 	vmovss 0x6acb(%rip),%xmm2        # 40b548 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x228>
  404a7c:	00 
  404a7d:	c5 fa 10 0d c7 6a 00 	vmovss 0x6ac7(%rip),%xmm1        # 40b54c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x22c>
  404a84:	00 
  404a85:	c5 7a 10 25 c7 6a 00 	vmovss 0x6ac7(%rip),%xmm12        # 40b554 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x234>
  404a8c:	00 
  404a8d:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  404a91:	31 d2                	xor    %edx,%edx
  404a93:	ff c2                	inc    %edx
  404a95:	84 c9                	test   %cl,%cl
  404a97:	0f 84 29 09 00 00    	je     4053c6 <main+0x1476>
  404a9d:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  404aa1:	c5 fa 2a c2          	vcvtsi2ss %edx,%xmm0,%xmm0
  404aa5:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  404aaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404ab0:	c4 e2 69 b9 c1       	vfmadd231ss %xmm1,%xmm2,%xmm0
  404ab5:	ff c8                	dec    %eax
  404ab7:	75 f7                	jne    404ab0 <main+0xb60>
  404ab9:	c4 c1 7a 59 c4       	vmulss %xmm12,%xmm0,%xmm0
  404abe:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  404ac2:	c5 db 58 e0          	vaddsd %xmm0,%xmm4,%xmm4
  404ac6:	83 fa 0c             	cmp    $0xc,%edx
  404ac9:	75 c8                	jne    404a93 <main+0xb43>
  404acb:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  404acf:	c5 e3 2a 44 24 74    	vcvtsi2sdl 0x74(%rsp),%xmm3,%xmm0
  404ad5:	c5 fb 59 c4          	vmulsd %xmm4,%xmm0,%xmm0
  404ad9:	c5 fb 11 84 24 a0 00 	vmovsd %xmm0,0xa0(%rsp)
  404ae0:	00 00 
  404ae2:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  404ae7:	48 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%rsp)
  404aee:	00 00 00 00 00 
  404af3:	c5 79 7f 9c 24 60 01 	vmovdqa %xmm11,0x160(%rsp)
  404afa:	00 00 
  404afc:	c5 79 7f 94 24 70 01 	vmovdqa %xmm10,0x170(%rsp)
  404b03:	00 00 
  404b05:	c5 79 7f b4 24 80 01 	vmovdqa %xmm14,0x180(%rsp)
  404b0c:	00 00 
  404b0e:	c5 79 7f 8c 24 90 01 	vmovdqa %xmm9,0x190(%rsp)
  404b15:	00 00 
  404b17:	c5 79 7f 84 24 a0 01 	vmovdqa %xmm8,0x1a0(%rsp)
  404b1e:	00 00 
  404b20:	c5 f9 7f bc 24 b0 01 	vmovdqa %xmm7,0x1b0(%rsp)
  404b27:	00 00 
  404b29:	c5 f9 7f b4 24 c0 01 	vmovdqa %xmm6,0x1c0(%rsp)
  404b30:	00 00 
  404b32:	c5 f9 7f ac 24 d0 01 	vmovdqa %xmm5,0x1d0(%rsp)
  404b39:	00 00 
  404b3b:	0f 84 36 0a 00 00    	je     405577 <main+0x1627>
  404b41:	80 7c 24 68 00       	cmpb   $0x0,0x68(%rsp)
  404b46:	be 03 b1 40 00       	mov    $0x40b103,%esi
  404b4b:	75 2b                	jne    404b78 <main+0xc28>
  404b4d:	80 7c 24 69 00       	cmpb   $0x0,0x69(%rsp)
  404b52:	be 1c b1 40 00       	mov    $0x40b11c,%esi
  404b57:	75 1f                	jne    404b78 <main+0xc28>
  404b59:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  404b5e:	be 2b b1 40 00       	mov    $0x40b12b,%esi
  404b63:	75 13                	jne    404b78 <main+0xc28>
  404b65:	80 7c 24 6d 00       	cmpb   $0x0,0x6d(%rsp)
  404b6a:	be 39 b1 40 00       	mov    $0x40b139,%esi
  404b6f:	b8 10 b1 40 00       	mov    $0x40b110,%eax
  404b74:	48 0f 44 f0          	cmove  %rax,%rsi
  404b78:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  404b7f:	00 
  404b80:	e8 db 29 00 00       	callq  407560 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404b85:	80 7c 24 68 00       	cmpb   $0x0,0x68(%rsp)
  404b8a:	be 08 b3 40 00       	mov    $0x40b308,%esi
  404b8f:	75 26                	jne    404bb7 <main+0xc67>
  404b91:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  404b96:	75 1f                	jne    404bb7 <main+0xc67>
  404b98:	80 7c 24 6d 00       	cmpb   $0x0,0x6d(%rsp)
  404b9d:	be 4c b1 40 00       	mov    $0x40b14c,%esi
  404ba2:	75 13                	jne    404bb7 <main+0xc67>
  404ba4:	80 7c 24 6b 00       	cmpb   $0x0,0x6b(%rsp)
  404ba9:	be 47 b1 40 00       	mov    $0x40b147,%esi
  404bae:	b8 42 b1 40 00       	mov    $0x40b142,%eax
  404bb3:	48 0f 44 f0          	cmove  %rax,%rsi
  404bb7:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  404bbe:	00 
  404bbf:	e8 9c 29 00 00       	callq  407560 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404bc4:	80 7c 24 6d 00       	cmpb   $0x0,0x6d(%rsp)
  404bc9:	be 51 b1 40 00       	mov    $0x40b151,%esi
  404bce:	75 1f                	jne    404bef <main+0xc9f>
  404bd0:	80 7c 24 69 00       	cmpb   $0x0,0x69(%rsp)
  404bd5:	be 72 b1 40 00       	mov    $0x40b172,%esi
  404bda:	75 13                	jne    404bef <main+0xc9f>
  404bdc:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  404be1:	be 8e b1 40 00       	mov    $0x40b18e,%esi
  404be6:	b8 64 b1 40 00       	mov    $0x40b164,%eax
  404beb:	48 0f 44 f0          	cmove  %rax,%rsi
  404bef:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  404bf6:	00 
  404bf7:	e8 64 29 00 00       	callq  407560 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404bfc:	48 8b 05 7d 96 00 00 	mov    0x967d(%rip),%rax        # 40e280 <_ZSt4cout@@GLIBCXX_3.4>
  404c03:	ba 0e 00 00 00       	mov    $0xe,%edx
  404c08:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  404c0c:	be 06 b2 40 00       	mov    $0x40b206,%esi
  404c11:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  404c16:	48 c7 80 88 e2 40 00 	movq   $0xf,0x40e288(%rax)
  404c1d:	0f 00 00 00 
  404c21:	e8 ba e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404c26:	48 8b 94 24 d8 00 00 	mov    0xd8(%rsp),%rdx
  404c2d:	00 
  404c2e:	48 8b b4 24 d0 00 00 	mov    0xd0(%rsp),%rsi
  404c35:	00 
  404c36:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  404c3b:	e8 a0 e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404c40:	ba 0c 00 00 00       	mov    $0xc,%edx
  404c45:	be 15 b2 40 00       	mov    $0x40b215,%esi
  404c4a:	48 89 c7             	mov    %rax,%rdi
  404c4d:	48 89 c5             	mov    %rax,%rbp
  404c50:	e8 8b e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404c55:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  404c5c:	00 
  404c5d:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  404c64:	00 
  404c65:	48 89 ef             	mov    %rbp,%rdi
  404c68:	e8 73 e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404c6d:	ba 0b 00 00 00       	mov    $0xb,%edx
  404c72:	be 22 b2 40 00       	mov    $0x40b222,%esi
  404c77:	48 89 c7             	mov    %rax,%rdi
  404c7a:	48 89 c5             	mov    %rax,%rbp
  404c7d:	e8 5e e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404c82:	48 8b 94 24 f8 00 00 	mov    0xf8(%rsp),%rdx
  404c89:	00 
  404c8a:	48 8b b4 24 f0 00 00 	mov    0xf0(%rsp),%rsi
  404c91:	00 
  404c92:	48 89 ef             	mov    %rbp,%rdi
  404c95:	e8 46 e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404c9a:	ba 14 00 00 00       	mov    $0x14,%edx
  404c9f:	be 2e b2 40 00       	mov    $0x40b22e,%esi
  404ca4:	48 89 c7             	mov    %rax,%rdi
  404ca7:	48 89 c5             	mov    %rax,%rbp
  404caa:	e8 31 e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404caf:	48 8b 94 24 18 01 00 	mov    0x118(%rsp),%rdx
  404cb6:	00 
  404cb7:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
  404cbe:	00 
  404cbf:	48 89 ef             	mov    %rbp,%rdi
  404cc2:	e8 19 e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404cc7:	ba 0c 00 00 00       	mov    $0xc,%edx
  404ccc:	be 43 b2 40 00       	mov    $0x40b243,%esi
  404cd1:	48 89 c7             	mov    %rax,%rdi
  404cd4:	48 89 c5             	mov    %rax,%rbp
  404cd7:	e8 04 e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404cdc:	8b 74 24 74          	mov    0x74(%rsp),%esi
  404ce0:	48 89 ef             	mov    %rbp,%rdi
  404ce3:	e8 38 e7 ff ff       	callq  403420 <_ZNSolsEi@plt>
  404ce8:	ba 15 00 00 00       	mov    $0x15,%edx
  404ced:	be 50 b2 40 00       	mov    $0x40b250,%esi
  404cf2:	48 89 c7             	mov    %rax,%rdi
  404cf5:	48 89 c5             	mov    %rax,%rbp
  404cf8:	e8 e3 e5 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404cfd:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  404d02:	80 7c 24 68 00       	cmpb   $0x0,0x68(%rsp)
  404d07:	48 89 c6             	mov    %rax,%rsi
  404d0a:	75 12                	jne    404d1e <main+0xdce>
  404d0c:	80 7c 24 69 00       	cmpb   $0x0,0x69(%rsp)
  404d11:	75 0b                	jne    404d1e <main+0xdce>
  404d13:	31 f6                	xor    %esi,%esi
  404d15:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  404d1a:	48 0f 45 f0          	cmovne %rax,%rsi
  404d1e:	48 89 ef             	mov    %rbp,%rdi
  404d21:	e8 ba e4 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  404d26:	ba 05 00 00 00       	mov    $0x5,%edx
  404d2b:	be 66 b2 40 00       	mov    $0x40b266,%esi
  404d30:	48 89 c7             	mov    %rax,%rdi
  404d33:	48 89 c5             	mov    %rax,%rbp
  404d36:	e8 a5 e5 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404d3b:	8b 74 24 70          	mov    0x70(%rsp),%esi
  404d3f:	48 89 ef             	mov    %rbp,%rdi
  404d42:	e8 d9 e6 ff ff       	callq  403420 <_ZNSolsEi@plt>
  404d47:	48 89 c7             	mov    %rax,%rdi
  404d4a:	be 6c b2 40 00       	mov    $0x40b26c,%esi
  404d4f:	e8 3c e5 ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  404d54:	45 31 ff             	xor    %r15d,%r15d
  404d57:	c5 fb 10 44 24 50    	vmovsd 0x50(%rsp),%xmm0
  404d5d:	44 89 ff             	mov    %r15d,%edi
  404d60:	e8 db 28 00 00       	callq  407640 <_Z6windowid>
  404d65:	c5 fb 10 6c 24 50    	vmovsd 0x50(%rsp),%xmm5
  404d6b:	48 8d 9c 24 60 01 00 	lea    0x160(%rsp),%rbx
  404d72:	00 
  404d73:	c5 d3 59 05 25 67 00 	vmulsd 0x6725(%rip),%xmm5,%xmm0        # 40b4a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x180>
  404d7a:	00 
  404d7b:	c4 e1 f9 6e f3       	vmovq  %rbx,%xmm6
  404d80:	4c 8d b4 24 30 01 00 	lea    0x130(%rsp),%r14
  404d87:	00 
  404d88:	48 8d 9c 24 a8 01 00 	lea    0x1a8(%rsp),%rbx
  404d8f:	00 
  404d90:	c4 e3 c9 22 fb 01    	vpinsrq $0x1,%rbx,%xmm6,%xmm7
  404d96:	62 71 ff 08 78 e0    	vcvttsd2usi %xmm0,%r12
  404d9c:	4c 89 f6             	mov    %r14,%rsi
  404d9f:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  404da3:	bf 01 00 00 00       	mov    $0x1,%edi
  404da8:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  404dad:	c5 f9 7f 3c 24       	vmovdqa %xmm7,(%rsp)
  404db2:	49 01 c4             	add    %rax,%r12
  404db5:	c5 f9 7f 84 24 30 01 	vmovdqa %xmm0,0x130(%rsp)
  404dbc:	00 00 
  404dbe:	e8 bd e4 ff ff       	callq  403280 <clock_gettime@plt>
  404dc3:	48 69 84 24 30 01 00 	imul   $0x3b9aca00,0x130(%rsp),%rax
  404dca:	00 00 ca 9a 3b 
  404dcf:	31 db                	xor    %ebx,%ebx
  404dd1:	31 ed                	xor    %ebp,%ebp
  404dd3:	48 03 84 24 38 01 00 	add    0x138(%rsp),%rax
  404dda:	00 
  404ddb:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  404de0:	e9 90 01 00 00       	jmpq   404f75 <main+0x1025>
  404de5:	0f 1f 00             	nopl   (%rax)
  404de8:	48 8b 84 24 70 01 00 	mov    0x170(%rsp),%rax
  404def:	00 
  404df0:	80 38 00             	cmpb   $0x0,(%rax)
  404df3:	0f 85 d7 02 00 00    	jne    4050d0 <main+0x1180>
  404df9:	48 8b 84 24 98 01 00 	mov    0x198(%rsp),%rax
  404e00:	00 
  404e01:	44 0f b6 28          	movzbl (%rax),%r13d
  404e05:	45 84 ed             	test   %r13b,%r13b
  404e08:	0f 85 42 02 00 00    	jne    405050 <main+0x1100>
  404e0e:	c5 f9 6f 3c 24       	vmovdqa (%rsp),%xmm7
  404e13:	48 8d 84 24 b0 01 00 	lea    0x1b0(%rsp),%rax
  404e1a:	00 
  404e1b:	31 d2                	xor    %edx,%edx
  404e1d:	31 c9                	xor    %ecx,%ecx
  404e1f:	4c 89 f6             	mov    %r14,%rsi
  404e22:	bf f0 5c 40 00       	mov    $0x405cf0,%edi
  404e27:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
  404e2e:	00 
  404e2f:	c7 84 24 50 01 00 00 	movl   $0x0,0x150(%rsp)
  404e36:	00 00 00 00 
  404e3a:	48 c7 84 24 48 01 00 	movq   $0x0,0x148(%rsp)
  404e41:	00 00 00 00 00 
  404e46:	c5 f9 7f bc 24 30 01 	vmovdqa %xmm7,0x130(%rsp)
  404e4d:	00 00 
  404e4f:	e8 2c e5 ff ff       	callq  403380 <GOMP_parallel@plt>
  404e54:	8b 84 24 50 01 00 00 	mov    0x150(%rsp),%eax
  404e5b:	c5 fb 10 8c 24 48 01 	vmovsd 0x148(%rsp),%xmm1
  404e62:	00 00 
  404e64:	48 8b 94 24 b8 01 00 	mov    0x1b8(%rsp),%rdx
  404e6b:	00 
  404e6c:	c5 fb 11 0a          	vmovsd %xmm1,(%rdx)
  404e70:	85 c0                	test   %eax,%eax
  404e72:	75 22                	jne    404e96 <main+0xf46>
  404e74:	c5 f1 54 05 e4 66 00 	vandpd 0x66e4(%rip),%xmm1,%xmm0        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  404e7b:	00 
  404e7c:	c5 fb 10 15 f4 65 00 	vmovsd 0x65f4(%rip),%xmm2        # 40b478 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  404e83:	00 
  404e84:	c5 f9 2e d0          	vucomisd %xmm0,%xmm2
  404e88:	72 0c                	jb     404e96 <main+0xf46>
  404e8a:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  404e8e:	c5 f9 2f cc          	vcomisd %xmm4,%xmm1
  404e92:	41 0f 97 c5          	seta   %r13b
  404e96:	48 8b 84 24 c0 01 00 	mov    0x1c0(%rsp),%rax
  404e9d:	00 
  404e9e:	48 8b 8c 24 b0 01 00 	mov    0x1b0(%rsp),%rcx
  404ea5:	00 
  404ea6:	44 22 28             	and    (%rax),%r13b
  404ea9:	44 88 28             	mov    %r13b,(%rax)
  404eac:	80 39 00             	cmpb   $0x0,(%rcx)
  404eaf:	75 0d                	jne    404ebe <main+0xf6e>
  404eb1:	48 8b 94 24 c8 01 00 	mov    0x1c8(%rsp),%rdx
  404eb8:	00 
  404eb9:	80 3a 00             	cmpb   $0x0,(%rdx)
  404ebc:	74 3c                	je     404efa <main+0xfaa>
  404ebe:	48 8b 94 24 d0 01 00 	mov    0x1d0(%rsp),%rdx
  404ec5:	00 
  404ec6:	c5 fb 10 02          	vmovsd (%rdx),%xmm0
  404eca:	c5 f3 5c c8          	vsubsd %xmm0,%xmm1,%xmm1
  404ece:	c5 f9 54 05 8a 66 00 	vandpd 0x668a(%rip),%xmm0,%xmm0        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  404ed5:	00 
  404ed6:	c5 fb 59 05 92 65 00 	vmulsd 0x6592(%rip),%xmm0,%xmm0        # 40b470 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  404edd:	00 
  404ede:	c5 f1 54 0d 7a 66 00 	vandpd 0x667a(%rip),%xmm1,%xmm1        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  404ee5:	00 
  404ee6:	c5 fb 5f 05 82 65 00 	vmaxsd 0x6582(%rip),%xmm0,%xmm0        # 40b470 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  404eed:	00 
  404eee:	c5 f9 2f c1          	vcomisd %xmm1,%xmm0
  404ef2:	0f 97 c2             	seta   %dl
  404ef5:	44 21 ea             	and    %r13d,%edx
  404ef8:	88 10                	mov    %dl,(%rax)
  404efa:	48 8b b4 24 a8 01 00 	mov    0x1a8(%rsp),%rsi
  404f01:	00 
  404f02:	48 8b 84 24 d8 01 00 	mov    0x1d8(%rsp),%rax
  404f09:	00 
  404f0a:	80 3e 00             	cmpb   $0x0,(%rsi)
  404f0d:	48 63 00             	movslq (%rax),%rax
  404f10:	48 ba 00 00 00 00 04 	movabs $0x400000000,%rdx
  404f17:	00 00 00 
  404f1a:	75 14                	jne    404f30 <main+0xfe0>
  404f1c:	80 39 01             	cmpb   $0x1,(%rcx)
  404f1f:	48 19 d2             	sbb    %rdx,%rdx
  404f22:	48 81 e2 00 f0 aa dd 	and    $0xffffffffddaaf000,%rdx
  404f29:	48 81 c2 00 20 aa 44 	add    $0x44aa2000,%rdx
  404f30:	48 0f af c2          	imul   %rdx,%rax
  404f34:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  404f38:	4c 89 f6             	mov    %r14,%rsi
  404f3b:	bf 01 00 00 00       	mov    $0x1,%edi
  404f40:	48 01 c5             	add    %rax,%rbp
  404f43:	c5 f9 7f 84 24 30 01 	vmovdqa %xmm0,0x130(%rsp)
  404f4a:	00 00 
  404f4c:	e8 2f e3 ff ff       	callq  403280 <clock_gettime@plt>
  404f51:	48 69 84 24 30 01 00 	imul   $0x3b9aca00,0x130(%rsp),%rax
  404f58:	00 00 ca 9a 3b 
  404f5d:	48 ff c3             	inc    %rbx
  404f60:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  404f64:	48 03 84 24 38 01 00 	add    0x138(%rsp),%rax
  404f6b:	00 
  404f6c:	49 39 c4             	cmp    %rax,%r12
  404f6f:	0f 86 cf 01 00 00    	jbe    405144 <main+0x11f4>
  404f75:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  404f7c:	00 
  404f7d:	80 38 00             	cmpb   $0x0,(%rax)
  404f80:	0f 84 62 fe ff ff    	je     404de8 <main+0xe98>
  404f86:	48 8b 8c 24 68 01 00 	mov    0x168(%rsp),%rcx
  404f8d:	00 
  404f8e:	b8 00 00 01 00       	mov    $0x10000,%eax
  404f93:	48 8b 11             	mov    (%rcx),%rdx
  404f96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404f9d:	00 00 00 
  404fa0:	48 8b 12             	mov    (%rdx),%rdx
  404fa3:	48 89 11             	mov    %rdx,(%rcx)
  404fa6:	ff c8                	dec    %eax
  404fa8:	75 f6                	jne    404fa0 <main+0x1050>
  404faa:	b8 00 00 01 00       	mov    $0x10000,%eax
  404faf:	eb 83                	jmp    404f34 <main+0xfe4>
  404fb1:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  404fb6:	31 d2                	xor    %edx,%edx
  404fb8:	b9 18 00 00 00       	mov    $0x18,%ecx
  404fbd:	48 f7 f1             	div    %rcx
  404fc0:	48 83 e0 c0          	and    $0xffffffffffffffc0,%rax
  404fc4:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  404fc9:	0f 84 61 f1 ff ff    	je     404130 <main+0x1e0>
  404fcf:	48 6b c8 18          	imul   $0x18,%rax,%rcx
  404fd3:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
  404fda:	00 
  404fdb:	48 89 ee             	mov    %rbp,%rsi
  404fde:	bf 40 00 00 00       	mov    $0x40,%edi
  404fe3:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
  404fe8:	e8 23 e2 ff ff       	callq  403210 <aligned_alloc@plt>
  404fed:	48 89 ee             	mov    %rbp,%rsi
  404ff0:	bf 40 00 00 00       	mov    $0x40,%edi
  404ff5:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
  404ffc:	00 
  404ffd:	49 89 c5             	mov    %rax,%r13
  405000:	e8 0b e2 ff ff       	callq  403210 <aligned_alloc@plt>
  405005:	48 89 ee             	mov    %rbp,%rsi
  405008:	bf 40 00 00 00       	mov    $0x40,%edi
  40500d:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  405014:	00 
  405015:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40501a:	e8 f1 e1 ff ff       	callq  403210 <aligned_alloc@plt>
  40501f:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  405024:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40502b:	00 
  40502c:	48 85 d2             	test   %rdx,%rdx
  40502f:	0f 84 95 ee ff ff    	je     403eca <main.cold+0x240>
  405035:	4d 85 ed             	test   %r13,%r13
  405038:	0f 84 0c 06 00 00    	je     40564a <main+0x16fa>
  40503e:	48 85 c0             	test   %rax,%rax
  405041:	0f 85 a1 f7 ff ff    	jne    4047e8 <main+0x898>
  405047:	e9 7e ee ff ff       	jmpq   403eca <main.cold+0x240>
  40504c:	0f 1f 40 00          	nopl   0x0(%rax)
  405050:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  405057:	00 
  405058:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40505f:	00 
  405060:	48 8d 84 24 78 01 00 	lea    0x178(%rsp),%rax
  405067:	00 
  405068:	48 89 84 24 38 01 00 	mov    %rax,0x138(%rsp)
  40506f:	00 
  405070:	48 8d 84 24 80 01 00 	lea    0x180(%rsp),%rax
  405077:	00 
  405078:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
  40507f:	00 
  405080:	48 8d 84 24 88 01 00 	lea    0x188(%rsp),%rax
  405087:	00 
  405088:	48 89 84 24 48 01 00 	mov    %rax,0x148(%rsp)
  40508f:	00 
  405090:	31 d2                	xor    %edx,%edx
  405092:	48 8d 84 24 a0 01 00 	lea    0x1a0(%rsp),%rax
  405099:	00 
  40509a:	31 c9                	xor    %ecx,%ecx
  40509c:	4c 89 f6             	mov    %r14,%rsi
  40509f:	bf 00 5b 40 00       	mov    $0x405b00,%edi
  4050a4:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  4050ab:	00 
  4050ac:	e8 cf e2 ff ff       	callq  403380 <GOMP_parallel@plt>
  4050b1:	48 8b 84 24 a0 01 00 	mov    0x1a0(%rsp),%rax
  4050b8:	00 
  4050b9:	48 8b 94 24 78 01 00 	mov    0x178(%rsp),%rdx
  4050c0:	00 
  4050c1:	48 63 00             	movslq (%rax),%rax
  4050c4:	48 0f af 02          	imul   (%rdx),%rax
  4050c8:	48 01 c0             	add    %rax,%rax
  4050cb:	e9 64 fe ff ff       	jmpq   404f34 <main+0xfe4>
  4050d0:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  4050d7:	00 
  4050d8:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  4050df:	00 
  4050e0:	48 8d 84 24 78 01 00 	lea    0x178(%rsp),%rax
  4050e7:	00 
  4050e8:	48 89 84 24 38 01 00 	mov    %rax,0x138(%rsp)
  4050ef:	00 
  4050f0:	48 8d 84 24 80 01 00 	lea    0x180(%rsp),%rax
  4050f7:	00 
  4050f8:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
  4050ff:	00 
  405100:	48 8d 84 24 88 01 00 	lea    0x188(%rsp),%rax
  405107:	00 
  405108:	48 89 84 24 48 01 00 	mov    %rax,0x148(%rsp)
  40510f:	00 
  405110:	31 c9                	xor    %ecx,%ecx
  405112:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  405119:	00 
  40511a:	31 d2                	xor    %edx,%edx
  40511c:	4c 89 f6             	mov    %r14,%rsi
  40511f:	bf 30 59 40 00       	mov    $0x405930,%edi
  405124:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40512b:	00 
  40512c:	e8 4f e2 ff ff       	callq  403380 <GOMP_parallel@plt>
  405131:	48 8b 84 24 78 01 00 	mov    0x178(%rsp),%rax
  405138:	00 
  405139:	48 8b 00             	mov    (%rax),%rax
  40513c:	48 01 c0             	add    %rax,%rax
  40513f:	e9 f0 fd ff ff       	jmpq   404f34 <main+0xfe4>
  405144:	4c 89 f6             	mov    %r14,%rsi
  405147:	bf 01 00 00 00       	mov    $0x1,%edi
  40514c:	c5 f9 7f 84 24 30 01 	vmovdqa %xmm0,0x130(%rsp)
  405153:	00 00 
  405155:	e8 26 e1 ff ff       	callq  403280 <clock_gettime@plt>
  40515a:	4c 69 ac 24 30 01 00 	imul   $0x3b9aca00,0x130(%rsp),%r13
  405161:	00 00 ca 9a 3b 
  405166:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  40516a:	4c 03 ac 24 38 01 00 	add    0x138(%rsp),%r13
  405171:	00 
  405172:	4c 89 e8             	mov    %r13,%rax
  405175:	48 2b 44 24 10       	sub    0x10(%rsp),%rax
  40517a:	62 f1 df 08 7b c0    	vcvtusi2sd %rax,%xmm4,%xmm0
  405180:	c5 fb 59 2d 20 63 00 	vmulsd 0x6320(%rip),%xmm0,%xmm5        # 40b4a8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x188>
  405187:	00 
  405188:	c4 c1 f9 7e ec       	vmovq  %xmm5,%r12
  40518d:	45 85 ff             	test   %r15d,%r15d
  405190:	74 19                	je     4051ab <main+0x125b>
  405192:	ba 01 00 00 00       	mov    $0x1,%edx
  405197:	48 8d 74 24 6f       	lea    0x6f(%rsp),%rsi
  40519c:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  4051a1:	c6 44 24 6f 2c       	movb   $0x2c,0x6f(%rsp)
  4051a6:	e8 35 e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4051ab:	ba 13 00 00 00       	mov    $0x13,%edx
  4051b0:	be 82 b2 40 00       	mov    $0x40b282,%esi
  4051b5:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  4051ba:	e8 21 e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4051bf:	c4 c1 f9 6e c4       	vmovq  %r12,%xmm0
  4051c4:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  4051c9:	e8 02 e2 ff ff       	callq  4033d0 <_ZNSo9_M_insertIdEERSoT_@plt>
  4051ce:	ba 0c 00 00 00       	mov    $0xc,%edx
  4051d3:	be 96 b2 40 00       	mov    $0x40b296,%esi
  4051d8:	48 89 c7             	mov    %rax,%rdi
  4051db:	49 89 c4             	mov    %rax,%r12
  4051de:	e8 fd e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4051e3:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  4051e8:	4c 89 e7             	mov    %r12,%rdi
  4051eb:	e8 f0 df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  4051f0:	ba 0a 00 00 00       	mov    $0xa,%edx
  4051f5:	be a3 b2 40 00       	mov    $0x40b2a3,%esi
  4051fa:	48 89 c7             	mov    %rax,%rdi
  4051fd:	49 89 c4             	mov    %rax,%r12
  405200:	e8 db e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405205:	4c 89 ee             	mov    %r13,%rsi
  405208:	4c 89 e7             	mov    %r12,%rdi
  40520b:	e8 d0 df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405210:	ba 14 00 00 00       	mov    $0x14,%edx
  405215:	be ae b2 40 00       	mov    $0x40b2ae,%esi
  40521a:	48 89 c7             	mov    %rax,%rdi
  40521d:	49 89 c4             	mov    %rax,%r12
  405220:	e8 bb e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405225:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  40522a:	4c 89 e7             	mov    %r12,%rdi
  40522d:	e8 ae df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405232:	ba 0e 00 00 00       	mov    $0xe,%edx
  405237:	be c3 b2 40 00       	mov    $0x40b2c3,%esi
  40523c:	48 89 c7             	mov    %rax,%rdi
  40523f:	49 89 c4             	mov    %rax,%r12
  405242:	e8 99 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405247:	31 f6                	xor    %esi,%esi
  405249:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  40524e:	48 0f 44 f5          	cmove  %rbp,%rsi
  405252:	4c 89 e7             	mov    %r12,%rdi
  405255:	e8 86 df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  40525a:	ba 11 00 00 00       	mov    $0x11,%edx
  40525f:	be d2 b2 40 00       	mov    $0x40b2d2,%esi
  405264:	48 89 c7             	mov    %rax,%rdi
  405267:	49 89 c4             	mov    %rax,%r12
  40526a:	e8 71 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40526f:	80 7c 24 68 00       	cmpb   $0x0,0x68(%rsp)
  405274:	75 09                	jne    40527f <main+0x132f>
  405276:	31 f6                	xor    %esi,%esi
  405278:	80 7c 24 69 00       	cmpb   $0x0,0x69(%rsp)
  40527d:	74 09                	je     405288 <main+0x1338>
  40527f:	48 0f af 5c 24 40    	imul   0x40(%rsp),%rbx
  405285:	48 89 de             	mov    %rbx,%rsi
  405288:	4c 89 e7             	mov    %r12,%rdi
  40528b:	e8 50 df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405290:	ba 09 00 00 00       	mov    $0x9,%edx
  405295:	be e4 b2 40 00       	mov    $0x40b2e4,%esi
  40529a:	48 89 c7             	mov    %rax,%rdi
  40529d:	49 89 c4             	mov    %rax,%r12
  4052a0:	e8 3b e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4052a5:	31 c0                	xor    %eax,%eax
  4052a7:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  4052ac:	48 0f 44 e8          	cmove  %rax,%rbp
  4052b0:	4c 89 e7             	mov    %r12,%rdi
  4052b3:	48 89 ee             	mov    %rbp,%rsi
  4052b6:	e8 25 df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  4052bb:	48 89 c7             	mov    %rax,%rdi
  4052be:	ba 01 00 00 00       	mov    $0x1,%edx
  4052c3:	4c 89 f6             	mov    %r14,%rsi
  4052c6:	c6 84 24 30 01 00 00 	movb   $0x7d,0x130(%rsp)
  4052cd:	7d 
  4052ce:	e8 0d e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4052d3:	41 ff c7             	inc    %r15d
  4052d6:	44 3b 7c 24 5c       	cmp    0x5c(%rsp),%r15d
  4052db:	0f 8c 76 fa ff ff    	jl     404d57 <main+0xe07>
  4052e1:	0f b6 5c 24 68       	movzbl 0x68(%rsp),%ebx
  4052e6:	84 db                	test   %bl,%bl
  4052e8:	75 0b                	jne    4052f5 <main+0x13a5>
  4052ea:	80 7c 24 69 00       	cmpb   $0x0,0x69(%rsp)
  4052ef:	0f 84 00 01 00 00    	je     4053f5 <main+0x14a5>
  4052f5:	4c 8b 44 24 78       	mov    0x78(%rsp),%r8
  4052fa:	b8 01 00 00 00       	mov    $0x1,%eax
  4052ff:	4c 89 c7             	mov    %r8,%rdi
  405302:	48 c1 ef 0a          	shr    $0xa,%rdi
  405306:	48 0f 44 f8          	cmove  %rax,%rdi
  40530a:	4c 8b 94 24 88 00 00 	mov    0x88(%rsp),%r10
  405311:	00 
  405312:	8b 4c 24 70          	mov    0x70(%rsp),%ecx
  405316:	4c 8b 9c 24 90 00 00 	mov    0x90(%rsp),%r11
  40531d:	00 
  40531e:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
  405325:	00 
  405326:	0f b6 74 24 6e       	movzbl 0x6e(%rsp),%esi
  40532b:	c5 fb 10 3d d5 60 00 	vmovsd 0x60d5(%rip),%xmm7        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405332:	00 
  405333:	c5 fb 10 1d dd 60 00 	vmovsd 0x60dd(%rip),%xmm3        # 40b418 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  40533a:	00 
  40533b:	c5 fb 10 15 cd 60 00 	vmovsd 0x60cd(%rip),%xmm2        # 40b410 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  405342:	00 
  405343:	c5 fa 7e 2d 15 62 00 	vmovq  0x6215(%rip),%xmm5        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40534a:	00 
  40534b:	c5 fb 10 35 25 61 00 	vmovsd 0x6125(%rip),%xmm6        # 40b478 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  405352:	00 
  405353:	c5 7b 10 05 55 61 00 	vmovsd 0x6155(%rip),%xmm8        # 40b4b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x190>
  40535a:	00 
  40535b:	31 c0                	xor    %eax,%eax
  40535d:	31 d2                	xor    %edx,%edx
  40535f:	eb 43                	jmp    4053a4 <main+0x1454>
  405361:	c4 c2 c1 b9 04 d3    	vfmadd231sd (%r11,%rdx,8),%xmm7,%xmm0
  405367:	c4 c1 7b 10 0c d1    	vmovsd (%r9,%rdx,8),%xmm1
  40536d:	31 c0                	xor    %eax,%eax
  40536f:	c5 f1 54 e5          	vandpd %xmm5,%xmm1,%xmm4
  405373:	c5 f9 2e f4          	vucomisd %xmm4,%xmm6
  405377:	72 0f                	jb     405388 <main+0x1438>
  405379:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
  40537d:	c5 f9 54 c5          	vandpd %xmm5,%xmm0,%xmm0
  405381:	c5 79 2f c0          	vcomisd %xmm0,%xmm8
  405385:	0f 97 c0             	seta   %al
  405388:	c5 f3 58 8c 24 a8 00 	vaddsd 0xa8(%rsp),%xmm1,%xmm1
  40538f:	00 00 
  405391:	21 c6                	and    %eax,%esi
  405393:	48 01 fa             	add    %rdi,%rdx
  405396:	c5 fb 11 8c 24 a8 00 	vmovsd %xmm1,0xa8(%rsp)
  40539d:	00 00 
  40539f:	b8 01 00 00 00       	mov    $0x1,%eax
  4053a4:	49 39 d0             	cmp    %rdx,%r8
  4053a7:	76 43                	jbe    4053ec <main+0x149c>
  4053a9:	c4 c1 7b 10 04 d2    	vmovsd (%r10,%rdx,8),%xmm0
  4053af:	84 db                	test   %bl,%bl
  4053b1:	75 ae                	jne    405361 <main+0x1411>
  4053b3:	31 c0                	xor    %eax,%eax
  4053b5:	85 c9                	test   %ecx,%ecx
  4053b7:	7e ae                	jle    405367 <main+0x1417>
  4053b9:	ff c0                	inc    %eax
  4053bb:	c4 e2 e1 99 c2       	vfmadd132sd %xmm2,%xmm3,%xmm0
  4053c0:	39 c8                	cmp    %ecx,%eax
  4053c2:	75 f5                	jne    4053b9 <main+0x1469>
  4053c4:	eb a1                	jmp    405367 <main+0x1417>
  4053c6:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  4053ca:	c5 fb 2a c2          	vcvtsi2sd %edx,%xmm0,%xmm0
  4053ce:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  4053d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4053d8:	c4 e2 e1 b9 04 24    	vfmadd231sd (%rsp),%xmm3,%xmm0
  4053de:	ff c8                	dec    %eax
  4053e0:	75 f6                	jne    4053d8 <main+0x1488>
  4053e2:	c4 c2 f9 b9 e5       	vfmadd231sd %xmm13,%xmm0,%xmm4
  4053e7:	e9 da f6 ff ff       	jmpq   404ac6 <main+0xb76>
  4053ec:	84 c0                	test   %al,%al
  4053ee:	74 05                	je     4053f5 <main+0x14a5>
  4053f0:	40 88 74 24 6e       	mov    %sil,0x6e(%rsp)
  4053f5:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  4053fa:	74 4f                	je     40544b <main+0x14fb>
  4053fc:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
  405403:	00 
  405404:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
  405409:	0f b6 4c 24 6e       	movzbl 0x6e(%rsp),%ecx
  40540e:	31 d2                	xor    %edx,%edx
  405410:	48 39 d8             	cmp    %rbx,%rax
  405413:	72 15                	jb     40542a <main+0x14da>
  405415:	be 06 00 00 00       	mov    $0x6,%esi
  40541a:	c4 e2 c9 f7 54 24 78 	shlx   %rsi,0x78(%rsp),%rdx
  405421:	48 01 da             	add    %rbx,%rdx
  405424:	48 39 d0             	cmp    %rdx,%rax
  405427:	0f 92 c2             	setb   %dl
  40542a:	48 2b 44 24 38       	sub    0x38(%rsp),%rax
  40542f:	48 c1 f8 06          	sar    $0x6,%rax
  405433:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
  405437:	c4 e1 d3 2a c0       	vcvtsi2sd %rax,%xmm5,%xmm0
  40543c:	21 ca                	and    %ecx,%edx
  40543e:	88 54 24 6e          	mov    %dl,0x6e(%rsp)
  405442:	c5 fb 11 84 24 a8 00 	vmovsd %xmm0,0xa8(%rsp)
  405449:	00 00 
  40544b:	ba 0d 00 00 00       	mov    $0xd,%edx
  405450:	be ee b2 40 00       	mov    $0x40b2ee,%esi
  405455:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  40545a:	e8 81 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40545f:	c5 fb 10 84 24 a8 00 	vmovsd 0xa8(%rsp),%xmm0
  405466:	00 00 
  405468:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  40546d:	e8 5e df ff ff       	callq  4033d0 <_ZNSo9_M_insertIdEERSoT_@plt>
  405472:	ba 09 00 00 00       	mov    $0x9,%edx
  405477:	be fc b2 40 00       	mov    $0x40b2fc,%esi
  40547c:	48 89 c7             	mov    %rax,%rdi
  40547f:	48 89 c5             	mov    %rax,%rbp
  405482:	e8 59 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405487:	80 7c 24 6e 00       	cmpb   $0x0,0x6e(%rsp)
  40548c:	be aa b1 40 00       	mov    $0x40b1aa,%esi
  405491:	b8 af b1 40 00       	mov    $0x40b1af,%eax
  405496:	48 0f 44 f0          	cmove  %rax,%rsi
  40549a:	48 89 ef             	mov    %rbp,%rdi
  40549d:	e8 ee dd ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4054a2:	48 89 c7             	mov    %rax,%rdi
  4054a5:	be 06 b3 40 00       	mov    $0x40b306,%esi
  4054aa:	e8 e1 dd ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4054af:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
  4054b6:	00 
  4054b7:	e8 44 de ff ff       	callq  403300 <free@plt>
  4054bc:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  4054c3:	00 
  4054c4:	e8 37 de ff ff       	callq  403300 <free@plt>
  4054c9:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  4054d0:	00 
  4054d1:	e8 2a de ff ff       	callq  403300 <free@plt>
  4054d6:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  4054db:	e8 20 de ff ff       	callq  403300 <free@plt>
  4054e0:	44 0f b6 64 24 6e    	movzbl 0x6e(%rsp),%r12d
  4054e6:	48 8b bc 24 10 01 00 	mov    0x110(%rsp),%rdi
  4054ed:	00 
  4054ee:	41 83 f4 01          	xor    $0x1,%r12d
  4054f2:	48 8d 84 24 20 01 00 	lea    0x120(%rsp),%rax
  4054f9:	00 
  4054fa:	45 0f b6 e4          	movzbl %r12b,%r12d
  4054fe:	48 39 c7             	cmp    %rax,%rdi
  405501:	74 11                	je     405514 <main+0x15c4>
  405503:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  40550a:	00 
  40550b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40550f:	e8 9c dd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405514:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  40551b:	00 
  40551c:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  405523:	00 
  405524:	48 39 c7             	cmp    %rax,%rdi
  405527:	74 11                	je     40553a <main+0x15ea>
  405529:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  405530:	00 
  405531:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405535:	e8 76 dd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40553a:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  405541:	00 
  405542:	48 8d 84 24 e0 00 00 	lea    0xe0(%rsp),%rax
  405549:	00 
  40554a:	48 39 c7             	cmp    %rax,%rdi
  40554d:	0f 84 e3 eb ff ff    	je     404136 <main+0x1e6>
  405553:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40555a:	00 
  40555b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40555f:	e8 4c dd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405564:	e9 cd eb ff ff       	jmpq   404136 <main+0x1e6>
  405569:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  405570:	00 00 
  405572:	e9 2f f4 ff ff       	jmpq   4049a6 <main+0xa56>
  405577:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40557e:	00 
  40557f:	e8 cc 1d 00 00       	callq  407350 <_ZZ4mainENKUlvE_clEv>
  405584:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40558b:	00 
  40558c:	e8 bf 1d 00 00       	callq  407350 <_ZZ4mainENKUlvE_clEv>
  405591:	e9 ab f5 ff ff       	jmpq   404b41 <main+0xbf1>
  405596:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  40559b:	e8 50 dc ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4055a0:	bf c4 b1 40 00       	mov    $0x40b1c4,%edi
  4055a5:	e8 b6 dd ff ff       	callq  403360 <_ZSt20__throw_out_of_rangePKc@plt>
  4055aa:	bf c4 b1 40 00       	mov    $0x40b1c4,%edi
  4055af:	e8 ec db ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  4055b4:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  4055bb:	00 
  4055bc:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  4055c1:	4c 89 ef             	mov    %r13,%rdi
  4055c4:	e9 f1 ee ff ff       	jmpq   4044ba <main+0x56a>
  4055c9:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4055ce:	e8 1d dc ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4055d3:	bf d5 b1 40 00       	mov    $0x40b1d5,%edi
  4055d8:	e8 c3 db ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  4055dd:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4055e2:	e8 09 dc ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4055e7:	48 89 ef             	mov    %rbp,%rdi
  4055ea:	e9 f6 ec ff ff       	jmpq   4042e5 <main+0x395>
  4055ef:	48 89 c3             	mov    %rax,%rbx
  4055f2:	49 89 d6             	mov    %rdx,%r14
  4055f5:	e9 90 e6 ff ff       	jmpq   403c8a <main.cold>
  4055fa:	e9 56 e7 ff ff       	jmpq   403d55 <main.cold+0xcb>
  4055ff:	48 89 c3             	mov    %rax,%rbx
  405602:	49 89 d6             	mov    %rdx,%r14
  405605:	e9 a7 e7 ff ff       	jmpq   403db1 <main.cold+0x127>
  40560a:	48 89 c7             	mov    %rax,%rdi
  40560d:	48 89 d5             	mov    %rdx,%rbp
  405610:	c5 f8 77             	vzeroupper 
  405613:	e9 f0 e6 ff ff       	jmpq   403d08 <main.cold+0x7e>
  405618:	48 89 c3             	mov    %rax,%rbx
  40561b:	49 89 d6             	mov    %rdx,%r14
  40561e:	e9 60 e7 ff ff       	jmpq   403d83 <main.cold+0xf9>
  405623:	48 89 c3             	mov    %rax,%rbx
  405626:	49 89 d6             	mov    %rdx,%r14
  405629:	c5 f8 77             	vzeroupper 
  40562c:	e9 8d e6 ff ff       	jmpq   403cbe <main.cold+0x34>
  405631:	48 89 c3             	mov    %rax,%rbx
  405634:	48 89 d5             	mov    %rdx,%rbp
  405637:	e9 0b e8 ff ff       	jmpq   403e47 <main.cold+0x1bd>
  40563c:	48 89 c3             	mov    %rax,%rbx
  40563f:	48 89 d5             	mov    %rdx,%rbp
  405642:	c5 f8 77             	vzeroupper 
  405645:	e9 26 e8 ff ff       	jmpq   403e70 <main.cold+0x1e6>
  40564a:	e9 7b e8 ff ff       	jmpq   403eca <main.cold+0x240>
  40564f:	48 89 c3             	mov    %rax,%rbx
  405652:	48 89 d5             	mov    %rdx,%rbp
  405655:	c5 f8 77             	vzeroupper 
  405658:	e9 39 e8 ff ff       	jmpq   403e96 <main.cold+0x20c>
  40565d:	48 89 c3             	mov    %rax,%rbx
  405660:	49 89 d6             	mov    %rdx,%r14
  405663:	e9 a8 e8 ff ff       	jmpq   403f10 <main.cold+0x286>
  405668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40566f:	00 

0000000000405670 <_GLOBAL__sub_I__Z8clock_nsv>:
  405670:	48 83 ec 08          	sub    $0x8,%rsp
  405674:	bf b1 e4 40 00       	mov    $0x40e4b1,%edi
  405679:	e8 12 dd ff ff       	callq  403390 <_ZNSt8ios_base4InitC1Ev@plt>
  40567e:	ba 08 b0 40 00       	mov    $0x40b008,%edx
  405683:	be b1 e4 40 00       	mov    $0x40e4b1,%esi
  405688:	bf 90 34 40 00       	mov    $0x403490,%edi
  40568d:	48 83 c4 08          	add    $0x8,%rsp
  405691:	e9 ca db ff ff       	jmpq   403260 <__cxa_atexit@plt>
  405696:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40569d:	00 00 00 

00000000004056a0 <_start>:
  4056a0:	f3 0f 1e fa          	endbr64 
  4056a4:	31 ed                	xor    %ebp,%ebp
  4056a6:	49 89 d1             	mov    %rdx,%r9
  4056a9:	5e                   	pop    %rsi
  4056aa:	48 89 e2             	mov    %rsp,%rdx
  4056ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4056b1:	50                   	push   %rax
  4056b2:	54                   	push   %rsp
  4056b3:	45 31 c0             	xor    %r8d,%r8d
  4056b6:	31 c9                	xor    %ecx,%ecx
  4056b8:	48 c7 c7 50 3f 40 00 	mov    $0x403f50,%rdi
  4056bf:	ff 15 03 89 00 00    	callq  *0x8903(%rip)        # 40dfc8 <__libc_start_main@GLIBC_2.34>
  4056c5:	f4                   	hlt    
  4056c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4056cd:	00 00 00 

00000000004056d0 <_dl_relocate_static_pie>:
  4056d0:	f3 0f 1e fa          	endbr64 
  4056d4:	c3                   	retq   
  4056d5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4056dc:	00 00 00 
  4056df:	90                   	nop

00000000004056e0 <deregister_tm_clones>:
  4056e0:	48 8d 3d 71 8b 00 00 	lea    0x8b71(%rip),%rdi        # 40e258 <__TMC_END__>
  4056e7:	48 8d 05 6a 8b 00 00 	lea    0x8b6a(%rip),%rax        # 40e258 <__TMC_END__>
  4056ee:	48 39 f8             	cmp    %rdi,%rax
  4056f1:	74 15                	je     405708 <deregister_tm_clones+0x28>
  4056f3:	48 8b 05 d6 88 00 00 	mov    0x88d6(%rip),%rax        # 40dfd0 <_ITM_deregisterTMCloneTable>
  4056fa:	48 85 c0             	test   %rax,%rax
  4056fd:	74 09                	je     405708 <deregister_tm_clones+0x28>
  4056ff:	ff e0                	jmpq   *%rax
  405701:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405708:	c3                   	retq   
  405709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405710 <register_tm_clones>:
  405710:	48 8d 3d 41 8b 00 00 	lea    0x8b41(%rip),%rdi        # 40e258 <__TMC_END__>
  405717:	48 8d 35 3a 8b 00 00 	lea    0x8b3a(%rip),%rsi        # 40e258 <__TMC_END__>
  40571e:	48 29 fe             	sub    %rdi,%rsi
  405721:	48 89 f0             	mov    %rsi,%rax
  405724:	48 c1 ee 3f          	shr    $0x3f,%rsi
  405728:	48 c1 f8 03          	sar    $0x3,%rax
  40572c:	48 01 c6             	add    %rax,%rsi
  40572f:	48 d1 fe             	sar    %rsi
  405732:	74 14                	je     405748 <register_tm_clones+0x38>
  405734:	48 8b 05 a5 88 00 00 	mov    0x88a5(%rip),%rax        # 40dfe0 <_ITM_registerTMCloneTable>
  40573b:	48 85 c0             	test   %rax,%rax
  40573e:	74 08                	je     405748 <register_tm_clones+0x38>
  405740:	ff e0                	jmpq   *%rax
  405742:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405748:	c3                   	retq   
  405749:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405750 <__do_global_dtors_aux>:
  405750:	f3 0f 1e fa          	endbr64 
  405754:	80 3d 55 8d 00 00 00 	cmpb   $0x0,0x8d55(%rip)        # 40e4b0 <completed.0>
  40575b:	75 13                	jne    405770 <__do_global_dtors_aux+0x20>
  40575d:	55                   	push   %rbp
  40575e:	48 89 e5             	mov    %rsp,%rbp
  405761:	e8 7a ff ff ff       	callq  4056e0 <deregister_tm_clones>
  405766:	c6 05 43 8d 00 00 01 	movb   $0x1,0x8d43(%rip)        # 40e4b0 <completed.0>
  40576d:	5d                   	pop    %rbp
  40576e:	c3                   	retq   
  40576f:	90                   	nop
  405770:	c3                   	retq   
  405771:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  405778:	00 00 00 00 
  40577c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405780 <frame_dummy>:
  405780:	f3 0f 1e fa          	endbr64 
  405784:	eb 8a                	jmp    405710 <register_tm_clones>
  405786:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40578d:	00 00 00 

0000000000405790 <main._omp_fn.1>:
  405790:	41 54                	push   %r12
  405792:	55                   	push   %rbp
  405793:	53                   	push   %rbx
  405794:	48 8b 07             	mov    (%rdi),%rax
  405797:	48 8b 18             	mov    (%rax),%rbx
  40579a:	48 85 db             	test   %rbx,%rbx
  40579d:	0f 84 ef 00 00 00    	je     405892 <main._omp_fn.1+0x102>
  4057a3:	49 89 fc             	mov    %rdi,%r12
  4057a6:	e8 c5 dc ff ff       	callq  403470 <omp_get_num_threads@plt>
  4057ab:	89 c5                	mov    %eax,%ebp
  4057ad:	e8 0e dc ff ff       	callq  4033c0 <omp_get_thread_num@plt>
  4057b2:	48 63 c8             	movslq %eax,%rcx
  4057b5:	48 63 f5             	movslq %ebp,%rsi
  4057b8:	48 89 d8             	mov    %rbx,%rax
  4057bb:	31 d2                	xor    %edx,%edx
  4057bd:	48 f7 f6             	div    %rsi
  4057c0:	48 39 d1             	cmp    %rdx,%rcx
  4057c3:	0f 82 d7 00 00 00    	jb     4058a0 <main._omp_fn.1+0x110>
  4057c9:	48 0f af c8          	imul   %rax,%rcx
  4057cd:	48 01 d1             	add    %rdx,%rcx
  4057d0:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
  4057d4:	48 39 f1             	cmp    %rsi,%rcx
  4057d7:	0f 83 b5 00 00 00    	jae    405892 <main._omp_fn.1+0x102>
  4057dd:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  4057e2:	c5 fb 10 0d 06 5c 00 	vmovsd 0x5c06(%rip),%xmm1        # 40b3f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd0>
  4057e9:	00 
  4057ea:	48 8b 38             	mov    (%rax),%rdi
  4057ed:	49 8b 44 24 10       	mov    0x10(%r12),%rax
  4057f2:	c5 fb 10 1d fe 5b 00 	vmovsd 0x5bfe(%rip),%xmm3        # 40b3f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  4057f9:	00 
  4057fa:	4c 8b 00             	mov    (%rax),%r8
  4057fd:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  405802:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  405806:	4c 8b 08             	mov    (%rax),%r9
  405809:	4d 85 c9             	test   %r9,%r9
  40580c:	0f 84 9e 00 00 00    	je     4058b0 <main._omp_fn.1+0x120>
  405812:	c5 fb 10 25 e6 5b 00 	vmovsd 0x5be6(%rip),%xmm4        # 40b400 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  405819:	00 
  40581a:	49 bb f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r11
  405821:	f0 f0 f0 
  405824:	49 ba c5 4e ec c4 4e 	movabs $0x4ec4ec4ec4ec4ec5,%r10
  40582b:	ec c4 4e 
  40582e:	66 90                	xchg   %ax,%ax
  405830:	48 89 c8             	mov    %rcx,%rax
  405833:	49 f7 e3             	mul    %r11
  405836:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  40583d:	00 
  40583e:	48 89 d0             	mov    %rdx,%rax
  405841:	48 c1 e8 04          	shr    $0x4,%rax
  405845:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  405849:	48 01 c2             	add    %rax,%rdx
  40584c:	48 89 c8             	mov    %rcx,%rax
  40584f:	48 29 d0             	sub    %rdx,%rax
  405852:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  405857:	48 89 c8             	mov    %rcx,%rax
  40585a:	49 f7 e2             	mul    %r10
  40585d:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  405862:	48 c1 ea 02          	shr    $0x2,%rdx
  405866:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
  40586a:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
  40586e:	48 89 c8             	mov    %rcx,%rax
  405871:	48 29 d0             	sub    %rdx,%rax
  405874:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  40587a:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  40587f:	c4 e2 d9 9d c1       	vfnmadd132sd %xmm1,%xmm4,%xmm0
  405884:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  40588a:	48 ff c1             	inc    %rcx
  40588d:	48 39 ce             	cmp    %rcx,%rsi
  405890:	75 9e                	jne    405830 <main._omp_fn.1+0xa0>
  405892:	5b                   	pop    %rbx
  405893:	5d                   	pop    %rbp
  405894:	41 5c                	pop    %r12
  405896:	c3                   	retq   
  405897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40589e:	00 00 
  4058a0:	48 ff c0             	inc    %rax
  4058a3:	31 d2                	xor    %edx,%edx
  4058a5:	e9 1f ff ff ff       	jmpq   4057c9 <main._omp_fn.1+0x39>
  4058aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4058b0:	49 b9 f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r9
  4058b7:	f0 f0 f0 
  4058ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4058c0:	48 89 c8             	mov    %rcx,%rax
  4058c3:	49 f7 e1             	mul    %r9
  4058c6:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  4058cd:	00 
  4058ce:	48 89 d0             	mov    %rdx,%rax
  4058d1:	48 c1 e8 04          	shr    $0x4,%rax
  4058d5:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  4058d9:	48 01 c2             	add    %rax,%rdx
  4058dc:	48 89 c8             	mov    %rcx,%rax
  4058df:	48 29 d0             	sub    %rdx,%rax
  4058e2:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  4058e7:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  4058ec:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  4058f2:	48 ff c1             	inc    %rcx
  4058f5:	48 39 ce             	cmp    %rcx,%rsi
  4058f8:	75 c6                	jne    4058c0 <main._omp_fn.1+0x130>
  4058fa:	5b                   	pop    %rbx
  4058fb:	5d                   	pop    %rbp
  4058fc:	41 5c                	pop    %r12
  4058fe:	c3                   	retq   
  4058ff:	90                   	nop

0000000000405900 <main._omp_fn.0>:
  405900:	53                   	push   %rbx
  405901:	48 89 fb             	mov    %rdi,%rbx
  405904:	e8 57 d7 ff ff       	callq  403060 <GOMP_single_start@plt>
  405909:	84 c0                	test   %al,%al
  40590b:	74 0e                	je     40591b <main._omp_fn.0+0x1b>
  40590d:	e8 5e db ff ff       	callq  403470 <omp_get_num_threads@plt>
  405912:	41 89 c0             	mov    %eax,%r8d
  405915:	48 8b 03             	mov    (%rbx),%rax
  405918:	44 89 00             	mov    %r8d,(%rax)
  40591b:	5b                   	pop    %rbx
  40591c:	e9 2f db ff ff       	jmpq   403450 <GOMP_barrier@plt>
  405921:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  405928:	00 00 00 00 
  40592c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405930 <_ZZ4mainENKUlvE_clEv._omp_fn.0>:
  405930:	55                   	push   %rbp
  405931:	48 89 e5             	mov    %rsp,%rbp
  405934:	41 55                	push   %r13
  405936:	41 54                	push   %r12
  405938:	53                   	push   %rbx
  405939:	4c 8b 27             	mov    (%rdi),%r12
  40593c:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  405940:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  405945:	4c 8b 28             	mov    (%rax),%r13
  405948:	4d 85 ed             	test   %r13,%r13
  40594b:	0f 84 42 01 00 00    	je     405a93 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405951:	e8 1a db ff ff       	callq  403470 <omp_get_num_threads@plt>
  405956:	89 c3                	mov    %eax,%ebx
  405958:	e8 63 da ff ff       	callq  4033c0 <omp_get_thread_num@plt>
  40595d:	48 63 c8             	movslq %eax,%rcx
  405960:	48 63 f3             	movslq %ebx,%rsi
  405963:	4c 89 e8             	mov    %r13,%rax
  405966:	31 d2                	xor    %edx,%edx
  405968:	48 f7 f6             	div    %rsi
  40596b:	48 39 d1             	cmp    %rdx,%rcx
  40596e:	0f 82 2c 01 00 00    	jb     405aa0 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x170>
  405974:	48 0f af c8          	imul   %rax,%rcx
  405978:	48 01 ca             	add    %rcx,%rdx
  40597b:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  40597f:	48 39 ca             	cmp    %rcx,%rdx
  405982:	0f 83 0b 01 00 00    	jae    405a93 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405988:	4d 8b 44 24 20       	mov    0x20(%r12),%r8
  40598d:	49 8b 7c 24 30       	mov    0x30(%r12),%rdi
  405992:	4d 8b 08             	mov    (%r8),%r9
  405995:	48 8b 3f             	mov    (%rdi),%rdi
  405998:	4c 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%r8
  40599f:	00 
  4059a0:	49 8b 74 24 28       	mov    0x28(%r12),%rsi
  4059a5:	4f 8d 14 01          	lea    (%r9,%r8,1),%r10
  4059a9:	4d 8d 58 08          	lea    0x8(%r8),%r11
  4059ad:	4e 8d 24 1f          	lea    (%rdi,%r11,1),%r12
  4059b1:	4c 89 d3             	mov    %r10,%rbx
  4059b4:	4c 29 e3             	sub    %r12,%rbx
  4059b7:	48 8b 36             	mov    (%rsi),%rsi
  4059ba:	48 83 fb 10          	cmp    $0x10,%rbx
  4059be:	0f 97 c3             	seta   %bl
  4059c1:	4d 89 d4             	mov    %r10,%r12
  4059c4:	49 01 f3             	add    %rsi,%r11
  4059c7:	4d 29 dc             	sub    %r11,%r12
  4059ca:	49 83 fc 10          	cmp    $0x10,%r12
  4059ce:	41 0f 97 c3          	seta   %r11b
  4059d2:	44 84 db             	test   %r11b,%bl
  4059d5:	0f 84 d5 00 00 00    	je     405ab0 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x180>
  4059db:	48 83 f8 01          	cmp    $0x1,%rax
  4059df:	0f 84 cb 00 00 00    	je     405ab0 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x180>
  4059e5:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  4059e9:	48 83 f9 02          	cmp    $0x2,%rcx
  4059ed:	0f 86 f2 00 00 00    	jbe    405ae5 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x1b5>
  4059f3:	49 89 c3             	mov    %rax,%r11
  4059f6:	49 c1 eb 02          	shr    $0x2,%r11
  4059fa:	c4 e2 7d 19 0d 05 5a 	vbroadcastsd 0x5a05(%rip),%ymm1        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405a01:	00 00 
  405a03:	4a 8d 1c 06          	lea    (%rsi,%r8,1),%rbx
  405a07:	49 c1 e3 05          	shl    $0x5,%r11
  405a0b:	49 01 f8             	add    %rdi,%r8
  405a0e:	31 c9                	xor    %ecx,%ecx
  405a10:	c4 c1 7d 10 04 08    	vmovupd (%r8,%rcx,1),%ymm0
  405a16:	c4 e2 f5 a8 04 0b    	vfmadd213pd (%rbx,%rcx,1),%ymm1,%ymm0
  405a1c:	c4 c1 7d 11 04 0a    	vmovupd %ymm0,(%r10,%rcx,1)
  405a22:	48 83 c1 20          	add    $0x20,%rcx
  405a26:	49 39 cb             	cmp    %rcx,%r11
  405a29:	75 e5                	jne    405a10 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0xe0>
  405a2b:	49 89 c0             	mov    %rax,%r8
  405a2e:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
  405a32:	4c 01 c2             	add    %r8,%rdx
  405a35:	48 89 d1             	mov    %rdx,%rcx
  405a38:	4c 39 c0             	cmp    %r8,%rax
  405a3b:	0f 84 9f 00 00 00    	je     405ae0 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x1b0>
  405a41:	4c 29 c0             	sub    %r8,%rax
  405a44:	48 83 f8 01          	cmp    $0x1,%rax
  405a48:	0f 84 9f 00 00 00    	je     405aed <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x1bd>
  405a4e:	c5 f8 77             	vzeroupper 
  405a51:	c5 f9 10 04 d7       	vmovupd (%rdi,%rdx,8),%xmm0
  405a56:	c5 f9 10 1c d6       	vmovupd (%rsi,%rdx,8),%xmm3
  405a5b:	62 f2 e5 18 98 05 a3 	vfmadd132pd 0x59a3(%rip){1to2},%xmm3,%xmm0        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405a62:	59 00 00 
  405a65:	c4 c1 79 11 04 d1    	vmovupd %xmm0,(%r9,%rdx,8)
  405a6b:	48 89 c2             	mov    %rax,%rdx
  405a6e:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
  405a72:	48 01 d1             	add    %rdx,%rcx
  405a75:	48 39 d0             	cmp    %rdx,%rax
  405a78:	74 19                	je     405a93 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405a7a:	c5 fb 10 04 cf       	vmovsd (%rdi,%rcx,8),%xmm0
  405a7f:	c5 fb 10 14 ce       	vmovsd (%rsi,%rcx,8),%xmm2
  405a84:	c4 e2 e9 99 05 7b 59 	vfmadd132sd 0x597b(%rip),%xmm2,%xmm0        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405a8b:	00 00 
  405a8d:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  405a93:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  405a97:	5b                   	pop    %rbx
  405a98:	41 5c                	pop    %r12
  405a9a:	41 5d                	pop    %r13
  405a9c:	5d                   	pop    %rbp
  405a9d:	c3                   	retq   
  405a9e:	66 90                	xchg   %ax,%ax
  405aa0:	48 ff c0             	inc    %rax
  405aa3:	31 d2                	xor    %edx,%edx
  405aa5:	e9 ca fe ff ff       	jmpq   405974 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x44>
  405aaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405ab0:	c5 fb 10 0d 50 59 00 	vmovsd 0x5950(%rip),%xmm1        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405ab7:	00 
  405ab8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405abf:	00 
  405ac0:	c5 fb 10 04 d7       	vmovsd (%rdi,%rdx,8),%xmm0
  405ac5:	c4 e2 f1 a9 04 d6    	vfmadd213sd (%rsi,%rdx,8),%xmm1,%xmm0
  405acb:	c4 c1 7b 11 04 d1    	vmovsd %xmm0,(%r9,%rdx,8)
  405ad1:	48 ff c2             	inc    %rdx
  405ad4:	48 39 d1             	cmp    %rdx,%rcx
  405ad7:	75 e7                	jne    405ac0 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x190>
  405ad9:	eb b8                	jmp    405a93 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405adb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405ae0:	c5 f8 77             	vzeroupper 
  405ae3:	eb ae                	jmp    405a93 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405ae5:	48 89 d1             	mov    %rdx,%rcx
  405ae8:	e9 64 ff ff ff       	jmpq   405a51 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x121>
  405aed:	c5 f8 77             	vzeroupper 
  405af0:	eb 88                	jmp    405a7a <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x14a>
  405af2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  405af9:	00 00 00 00 
  405afd:	0f 1f 00             	nopl   (%rax)

0000000000405b00 <_ZZ4mainENKUlvE_clEv._omp_fn.1>:
  405b00:	55                   	push   %rbp
  405b01:	48 89 e5             	mov    %rsp,%rbp
  405b04:	41 56                	push   %r14
  405b06:	41 55                	push   %r13
  405b08:	41 54                	push   %r12
  405b0a:	53                   	push   %rbx
  405b0b:	4c 8b 27             	mov    (%rdi),%r12
  405b0e:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  405b12:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  405b17:	48 8b 18             	mov    (%rax),%rbx
  405b1a:	48 85 db             	test   %rbx,%rbx
  405b1d:	0f 84 b2 01 00 00    	je     405cd5 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x1d5>
  405b23:	e8 48 d9 ff ff       	callq  403470 <omp_get_num_threads@plt>
  405b28:	4c 63 e8             	movslq %eax,%r13
  405b2b:	e8 90 d8 ff ff       	callq  4033c0 <omp_get_thread_num@plt>
  405b30:	48 63 c8             	movslq %eax,%rcx
  405b33:	48 8d 43 3f          	lea    0x3f(%rbx),%rax
  405b37:	48 c1 e8 06          	shr    $0x6,%rax
  405b3b:	31 d2                	xor    %edx,%edx
  405b3d:	49 f7 f5             	div    %r13
  405b40:	48 39 d1             	cmp    %rdx,%rcx
  405b43:	0f 82 99 01 00 00    	jb     405ce2 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x1e2>
  405b49:	48 0f af c8          	imul   %rax,%rcx
  405b4d:	48 01 ca             	add    %rcx,%rdx
  405b50:	48 01 d0             	add    %rdx,%rax
  405b53:	48 39 c2             	cmp    %rax,%rdx
  405b56:	0f 83 79 01 00 00    	jae    405cd5 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x1d5>
  405b5c:	48 89 d7             	mov    %rdx,%rdi
  405b5f:	48 c1 e0 06          	shl    $0x6,%rax
  405b63:	62 f2 fd 48 19 0d a3 	vbroadcastsd 0x58a3(%rip),%zmm1        # 40b410 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  405b6a:	58 00 00 
  405b6d:	62 f2 fd 48 19 05 a1 	vbroadcastsd 0x58a1(%rip),%zmm0        # 40b418 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  405b74:	58 00 00 
  405b77:	48 c1 e7 06          	shl    $0x6,%rdi
  405b7b:	48 89 c6             	mov    %rax,%rsi
  405b7e:	48 c1 e2 09          	shl    $0x9,%rdx
  405b82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405b88:	49 8b 44 24 28       	mov    0x28(%r12),%rax
  405b8d:	4c 8d 72 40          	lea    0x40(%rdx),%r14
  405b91:	48 8b 00             	mov    (%rax),%rax
  405b94:	4c 8d aa 80 00 00 00 	lea    0x80(%rdx),%r13
  405b9b:	62 71 fd 48 28 0c 10 	vmovapd (%rax,%rdx,1),%zmm9
  405ba2:	62 71 fd 48 28 44 10 	vmovapd 0x40(%rax,%rdx,1),%zmm8
  405ba9:	01 
  405baa:	62 f1 fd 48 28 7c 10 	vmovapd 0x80(%rax,%rdx,1),%zmm7
  405bb1:	02 
  405bb2:	62 f1 fd 48 28 74 10 	vmovapd 0xc0(%rax,%rdx,1),%zmm6
  405bb9:	03 
  405bba:	62 f1 fd 48 28 6c 10 	vmovapd 0x100(%rax,%rdx,1),%zmm5
  405bc1:	04 
  405bc2:	62 f1 fd 48 28 64 10 	vmovapd 0x140(%rax,%rdx,1),%zmm4
  405bc9:	05 
  405bca:	62 f1 fd 48 28 5c 10 	vmovapd 0x180(%rax,%rdx,1),%zmm3
  405bd1:	06 
  405bd2:	62 f1 fd 48 28 54 10 	vmovapd 0x1c0(%rax,%rdx,1),%zmm2
  405bd9:	07 
  405bda:	49 8b 44 24 40       	mov    0x40(%r12),%rax
  405bdf:	48 8d 9a c0 00 00 00 	lea    0xc0(%rdx),%rbx
  405be6:	8b 08                	mov    (%rax),%ecx
  405be8:	4c 8d 9a 00 01 00 00 	lea    0x100(%rdx),%r11
  405bef:	4c 8d 92 40 01 00 00 	lea    0x140(%rdx),%r10
  405bf6:	4c 8d 8a 80 01 00 00 	lea    0x180(%rdx),%r9
  405bfd:	4c 8d 82 c0 01 00 00 	lea    0x1c0(%rdx),%r8
  405c04:	85 c9                	test   %ecx,%ecx
  405c06:	7e 3e                	jle    405c46 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x146>
  405c08:	31 c0                	xor    %eax,%eax
  405c0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405c10:	ff c0                	inc    %eax
  405c12:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  405c18:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  405c1e:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  405c24:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  405c2a:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  405c30:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  405c36:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  405c3c:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  405c42:	39 c8                	cmp    %ecx,%eax
  405c44:	75 ca                	jne    405c10 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x110>
  405c46:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c4b:	48 83 c7 40          	add    $0x40,%rdi
  405c4f:	48 8b 00             	mov    (%rax),%rax
  405c52:	62 71 fd 48 29 0c 10 	vmovapd %zmm9,(%rax,%rdx,1)
  405c59:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c5e:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  405c65:	48 8b 00             	mov    (%rax),%rax
  405c68:	62 31 fd 48 29 04 30 	vmovapd %zmm8,(%rax,%r14,1)
  405c6f:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c74:	48 8b 00             	mov    (%rax),%rax
  405c77:	62 b1 fd 48 29 3c 28 	vmovapd %zmm7,(%rax,%r13,1)
  405c7e:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c83:	48 8b 00             	mov    (%rax),%rax
  405c86:	62 f1 fd 48 29 34 18 	vmovapd %zmm6,(%rax,%rbx,1)
  405c8d:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c92:	48 8b 00             	mov    (%rax),%rax
  405c95:	62 b1 fd 48 29 2c 18 	vmovapd %zmm5,(%rax,%r11,1)
  405c9c:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405ca1:	48 8b 00             	mov    (%rax),%rax
  405ca4:	62 b1 fd 48 29 24 10 	vmovapd %zmm4,(%rax,%r10,1)
  405cab:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405cb0:	48 8b 00             	mov    (%rax),%rax
  405cb3:	62 b1 fd 48 29 1c 08 	vmovapd %zmm3,(%rax,%r9,1)
  405cba:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405cbf:	48 8b 00             	mov    (%rax),%rax
  405cc2:	62 b1 fd 48 29 14 00 	vmovapd %zmm2,(%rax,%r8,1)
  405cc9:	48 39 fe             	cmp    %rdi,%rsi
  405ccc:	0f 87 b6 fe ff ff    	ja     405b88 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x88>
  405cd2:	c5 f8 77             	vzeroupper 
  405cd5:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  405cd9:	5b                   	pop    %rbx
  405cda:	41 5c                	pop    %r12
  405cdc:	41 5d                	pop    %r13
  405cde:	41 5e                	pop    %r14
  405ce0:	5d                   	pop    %rbp
  405ce1:	c3                   	retq   
  405ce2:	48 ff c0             	inc    %rax
  405ce5:	31 d2                	xor    %edx,%edx
  405ce7:	e9 5d fe ff ff       	jmpq   405b49 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x49>
  405cec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405cf0 <_ZZ4mainENKUlvE_clEv._omp_fn.2>:
  405cf0:	55                   	push   %rbp
  405cf1:	48 89 e5             	mov    %rsp,%rbp
  405cf4:	41 55                	push   %r13
  405cf6:	41 54                	push   %r12
  405cf8:	49 89 fc             	mov    %rdi,%r12
  405cfb:	53                   	push   %rbx
  405cfc:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  405d00:	48 81 ec 40 19 00 00 	sub    $0x1940,%rsp
  405d07:	48 8b 07             	mov    (%rdi),%rax
  405d0a:	48 8b 50 48          	mov    0x48(%rax),%rdx
  405d0e:	80 3a 00             	cmpb   $0x0,(%rdx)
  405d11:	74 59                	je     405d6c <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x7c>
  405d13:	64 80 3c 25 f0 ff ff 	cmpb   $0x0,%fs:0xfffffffffffffff0
  405d1a:	ff 00 
  405d1c:	0f 84 f3 15 00 00    	je     407315 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x1625>
  405d22:	64 0f b6 04 25 f8 ff 	movzbl %fs:0xfffffffffffffff8,%eax
  405d29:	ff ff 
  405d2b:	84 c0                	test   %al,%al
  405d2d:	0f 85 a6 02 00 00    	jne    405fd9 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x2e9>
  405d33:	48 8b 1d 2e 58 00 00 	mov    0x582e(%rip),%rbx        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  405d3a:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  405d40:	e8 4b d4 ff ff       	callq  403190 <GOMP_atomic_start@plt>
  405d45:	c4 e1 f9 6e eb       	vmovq  %rbx,%xmm5
  405d4a:	c4 c1 53 58 44 24 18 	vaddsd 0x18(%r12),%xmm5,%xmm0
  405d51:	45 09 6c 24 20       	or     %r13d,0x20(%r12)
  405d56:	c4 c1 7b 11 44 24 18 	vmovsd %xmm0,0x18(%r12)
  405d5d:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  405d61:	5b                   	pop    %rbx
  405d62:	41 5c                	pop    %r12
  405d64:	41 5d                	pop    %r13
  405d66:	5d                   	pop    %rbp
  405d67:	e9 b4 d4 ff ff       	jmpq   403220 <GOMP_atomic_end@plt>
  405d6c:	48 8b 40 50          	mov    0x50(%rax),%rax
  405d70:	80 38 00             	cmpb   $0x0,(%rax)
  405d73:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  405d78:	0f 85 3d 12 00 00    	jne    406fbb <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x12cb>
  405d7e:	62 f2 fd 48 19 05 70 	vbroadcastsd 0x5670(%rip),%zmm0        # 40b3f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  405d85:	56 00 00 
  405d88:	62 f2 fd 48 19 15 96 	vbroadcastsd 0x5696(%rip),%zmm2        # 40b428 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x108>
  405d8f:	56 00 00 
  405d92:	62 f2 fd 48 19 1d 94 	vbroadcastsd 0x5694(%rip),%zmm3        # 40b430 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x110>
  405d99:	56 00 00 
  405d9c:	62 f2 fd 48 19 25 92 	vbroadcastsd 0x5692(%rip),%zmm4        # 40b438 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x118>
  405da3:	56 00 00 
  405da6:	62 f2 fd 48 19 2d 90 	vbroadcastsd 0x5690(%rip),%zmm5        # 40b440 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x120>
  405dad:	56 00 00 
  405db0:	62 f2 fd 48 19 35 8e 	vbroadcastsd 0x568e(%rip),%zmm6        # 40b448 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x128>
  405db7:	56 00 00 
  405dba:	62 f2 fd 48 19 3d 8c 	vbroadcastsd 0x568c(%rip),%zmm7        # 40b450 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  405dc1:	56 00 00 
  405dc4:	62 72 fd 48 19 05 8a 	vbroadcastsd 0x568a(%rip),%zmm8        # 40b458 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  405dcb:	56 00 00 
  405dce:	62 72 fd 48 19 0d 88 	vbroadcastsd 0x5688(%rip),%zmm9        # 40b460 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  405dd5:	56 00 00 
  405dd8:	62 72 fd 48 19 15 86 	vbroadcastsd 0x5686(%rip),%zmm10        # 40b468 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x148>
  405ddf:	56 00 00 
  405de2:	62 72 fd 48 19 1d 1c 	vbroadcastsd 0x561c(%rip),%zmm11        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405de9:	56 00 00 
  405dec:	62 72 fd 48 19 25 0a 	vbroadcastsd 0x560a(%rip),%zmm12        # 40b400 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  405df3:	56 00 00 
  405df6:	62 f2 fd 48 19 0d 18 	vbroadcastsd 0x5618(%rip),%zmm1        # 40b418 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  405dfd:	56 00 00 
  405e00:	62 71 fd 48 28 e8    	vmovapd %zmm0,%zmm13
  405e06:	62 72 f5 48 98 e8    	vfmadd132pd %zmm0,%zmm1,%zmm13
  405e0c:	62 72 f5 48 98 e0    	vfmadd132pd %zmm0,%zmm1,%zmm12
  405e12:	62 72 f5 48 98 d8    	vfmadd132pd %zmm0,%zmm1,%zmm11
  405e18:	62 72 f5 48 98 d0    	vfmadd132pd %zmm0,%zmm1,%zmm10
  405e1e:	62 72 f5 48 98 c8    	vfmadd132pd %zmm0,%zmm1,%zmm9
  405e24:	62 72 f5 48 98 c0    	vfmadd132pd %zmm0,%zmm1,%zmm8
  405e2a:	62 f2 f5 48 98 f8    	vfmadd132pd %zmm0,%zmm1,%zmm7
  405e30:	62 f2 f5 48 98 f0    	vfmadd132pd %zmm0,%zmm1,%zmm6
  405e36:	62 f2 f5 48 98 e8    	vfmadd132pd %zmm0,%zmm1,%zmm5
  405e3c:	62 f2 f5 48 98 e0    	vfmadd132pd %zmm0,%zmm1,%zmm4
  405e42:	62 f2 f5 48 98 d8    	vfmadd132pd %zmm0,%zmm1,%zmm3
  405e48:	62 f2 f5 48 98 d0    	vfmadd132pd %zmm0,%zmm1,%zmm2
  405e4e:	ff c8                	dec    %eax
  405e50:	75 b4                	jne    405e06 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x116>
  405e52:	62 73 fd 48 1b e9 01 	vextractf64x4 $0x1,%zmm13,%ymm1
  405e59:	c4 c1 75 58 cd       	vaddpd %ymm13,%ymm1,%ymm1
  405e5e:	45 31 ed             	xor    %r13d,%r13d
  405e61:	62 f3 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm1,%xmm0
  405e68:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  405e6c:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405e70:	c5 fb 58 0d f0 56 00 	vaddsd 0x56f0(%rip),%xmm0,%xmm1        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  405e77:	00 
  405e78:	62 73 fd 48 1b e0 01 	vextractf64x4 $0x1,%zmm12,%ymm0
  405e7f:	c4 41 7d 58 e4       	vaddpd %ymm12,%ymm0,%ymm12
  405e84:	62 73 fd 28 19 e0 01 	vextractf64x2 $0x1,%ymm12,%xmm0
  405e8b:	c4 c1 79 58 c4       	vaddpd %xmm12,%xmm0,%xmm0
  405e90:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405e94:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405e98:	62 73 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm11,%ymm0
  405e9f:	c4 41 7d 58 db       	vaddpd %ymm11,%ymm0,%ymm11
  405ea4:	62 73 fd 28 19 d8 01 	vextractf64x2 $0x1,%ymm11,%xmm0
  405eab:	c4 c1 79 58 c3       	vaddpd %xmm11,%xmm0,%xmm0
  405eb0:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405eb4:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405eb8:	62 73 fd 48 1b d0 01 	vextractf64x4 $0x1,%zmm10,%ymm0
  405ebf:	c4 41 7d 58 d2       	vaddpd %ymm10,%ymm0,%ymm10
  405ec4:	62 73 fd 28 19 d0 01 	vextractf64x2 $0x1,%ymm10,%xmm0
  405ecb:	c4 c1 79 58 c2       	vaddpd %xmm10,%xmm0,%xmm0
  405ed0:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405ed4:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405ed8:	62 73 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm0
  405edf:	c4 41 7d 58 c9       	vaddpd %ymm9,%ymm0,%ymm9
  405ee4:	62 73 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm9,%xmm0
  405eeb:	c4 c1 79 58 c1       	vaddpd %xmm9,%xmm0,%xmm0
  405ef0:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405ef4:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405ef8:	62 73 fd 48 1b c0 01 	vextractf64x4 $0x1,%zmm8,%ymm0
  405eff:	c4 41 7d 58 c0       	vaddpd %ymm8,%ymm0,%ymm8
  405f04:	62 73 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm0
  405f0b:	c4 c1 79 58 c0       	vaddpd %xmm8,%xmm0,%xmm0
  405f10:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405f14:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405f18:	62 f3 fd 48 1b f8 01 	vextractf64x4 $0x1,%zmm7,%ymm0
  405f1f:	c5 fd 58 ff          	vaddpd %ymm7,%ymm0,%ymm7
  405f23:	62 f3 fd 28 19 f8 01 	vextractf64x2 $0x1,%ymm7,%xmm0
  405f2a:	c5 f9 58 c7          	vaddpd %xmm7,%xmm0,%xmm0
  405f2e:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405f32:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405f36:	62 f3 fd 48 1b f0 01 	vextractf64x4 $0x1,%zmm6,%ymm0
  405f3d:	c5 fd 58 f6          	vaddpd %ymm6,%ymm0,%ymm6
  405f41:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  405f48:	c5 f9 58 c6          	vaddpd %xmm6,%xmm0,%xmm0
  405f4c:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405f50:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405f54:	62 f3 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm5,%ymm0
  405f5b:	c5 fd 58 ed          	vaddpd %ymm5,%ymm0,%ymm5
  405f5f:	62 f3 fd 28 19 e8 01 	vextractf64x2 $0x1,%ymm5,%xmm0
  405f66:	c5 f9 58 c5          	vaddpd %xmm5,%xmm0,%xmm0
  405f6a:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405f6e:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405f72:	62 f3 fd 48 1b e0 01 	vextractf64x4 $0x1,%zmm4,%ymm0
  405f79:	c5 fd 58 e4          	vaddpd %ymm4,%ymm0,%ymm4
  405f7d:	62 f3 fd 28 19 e0 01 	vextractf64x2 $0x1,%ymm4,%xmm0
  405f84:	c5 f9 58 c4          	vaddpd %xmm4,%xmm0,%xmm0
  405f88:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405f8c:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405f90:	62 f3 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm3,%ymm0
  405f97:	c5 fd 58 db          	vaddpd %ymm3,%ymm0,%ymm3
  405f9b:	62 f3 fd 28 19 d8 01 	vextractf64x2 $0x1,%ymm3,%xmm0
  405fa2:	c5 f9 58 c3          	vaddpd %xmm3,%xmm0,%xmm0
  405fa6:	62 f3 fd 48 1b d3 01 	vextractf64x4 $0x1,%zmm2,%ymm3
  405fad:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405fb1:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405fb5:	c5 ed 58 c3          	vaddpd %ymm3,%ymm2,%ymm0
  405fb9:	62 f3 fd 28 19 c2 01 	vextractf64x2 $0x1,%ymm0,%xmm2
  405fc0:	c5 f9 58 c2          	vaddpd %xmm2,%xmm0,%xmm0
  405fc4:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405fc8:	c5 fb 58 e9          	vaddsd %xmm1,%xmm0,%xmm5
  405fcc:	c4 e1 f9 7e eb       	vmovq  %xmm5,%rbx
  405fd1:	c5 f8 77             	vzeroupper 
  405fd4:	e9 67 fd ff ff       	jmpq   405d40 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x50>
  405fd9:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  405fdd:	48 8b 05 3c 54 00 00 	mov    0x543c(%rip),%rax        # 40b420 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x100>
  405fe4:	c5 f9 7f 84 24 10 01 	vmovdqa %xmm0,0x110(%rsp)
  405feb:	00 00 
  405fed:	c5 f9 7f 84 24 30 01 	vmovdqa %xmm0,0x130(%rsp)
  405ff4:	00 00 
  405ff6:	c5 f9 7f 84 24 00 01 	vmovdqa %xmm0,0x100(%rsp)
  405ffd:	00 00 
  405fff:	c5 f9 7f 84 24 20 01 	vmovdqa %xmm0,0x120(%rsp)
  406006:	00 00 
  406008:	c4 e2 7d 79 05 39 55 	vpbroadcastw 0x5539(%rip),%ymm0        # 40b54a <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x22a>
  40600f:	00 00 
  406011:	48 89 84 24 10 01 00 	mov    %rax,0x110(%rsp)
  406018:	00 
  406019:	b8 10 10 00 00       	mov    $0x1010,%eax
  40601e:	c6 84 24 00 01 00 00 	movb   $0x1,0x100(%rsp)
  406025:	01 
  406026:	c7 84 24 18 01 00 00 	movl   $0x400040,0x118(%rsp)
  40602d:	40 00 40 00 
  406031:	c7 84 24 30 01 00 00 	movl   $0x10101010,0x130(%rsp)
  406038:	10 10 10 10 
  40603c:	66 89 84 24 34 01 00 	mov    %ax,0x134(%rsp)
  406043:	00 
  406044:	c5 fd 7f 84 24 40 01 	vmovdqa %ymm0,0x140(%rsp)
  40604b:	00 00 
  40604d:	c5 fd 7f 84 24 60 01 	vmovdqa %ymm0,0x160(%rsp)
  406054:	00 00 
  406056:	c5 fd 7f 84 24 80 01 	vmovdqa %ymm0,0x180(%rsp)
  40605d:	00 00 
  40605f:	c5 fd 7f 84 24 a0 01 	vmovdqa %ymm0,0x1a0(%rsp)
  406066:	00 00 
  406068:	c5 fd 7f 84 24 c0 01 	vmovdqa %ymm0,0x1c0(%rsp)
  40606f:	00 00 
  406071:	c5 fd 7f 84 24 e0 01 	vmovdqa %ymm0,0x1e0(%rsp)
  406078:	00 00 
  40607a:	c5 fd 7f 84 24 00 02 	vmovdqa %ymm0,0x200(%rsp)
  406081:	00 00 
  406083:	c5 fd 7f 84 24 20 02 	vmovdqa %ymm0,0x220(%rsp)
  40608a:	00 00 
  40608c:	c5 fd 7f 84 24 40 02 	vmovdqa %ymm0,0x240(%rsp)
  406093:	00 00 
  406095:	c5 fd 7f 84 24 60 02 	vmovdqa %ymm0,0x260(%rsp)
  40609c:	00 00 
  40609e:	c5 fd 7f 84 24 80 02 	vmovdqa %ymm0,0x280(%rsp)
  4060a5:	00 00 
  4060a7:	c5 fd 7f 84 24 a0 02 	vmovdqa %ymm0,0x2a0(%rsp)
  4060ae:	00 00 
  4060b0:	c5 fd 7f 84 24 c0 02 	vmovdqa %ymm0,0x2c0(%rsp)
  4060b7:	00 00 
  4060b9:	c5 fd 7f 84 24 e0 02 	vmovdqa %ymm0,0x2e0(%rsp)
  4060c0:	00 00 
  4060c2:	c5 fd 7f 84 24 00 03 	vmovdqa %ymm0,0x300(%rsp)
  4060c9:	00 00 
  4060cb:	c5 fd 7f 84 24 20 03 	vmovdqa %ymm0,0x320(%rsp)
  4060d2:	00 00 
  4060d4:	c5 fd 7f 84 24 40 03 	vmovdqa %ymm0,0x340(%rsp)
  4060db:	00 00 
  4060dd:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  4060e4:	00 00 
  4060e6:	c5 fd 7f 84 24 80 03 	vmovdqa %ymm0,0x380(%rsp)
  4060ed:	00 00 
  4060ef:	c5 fd 7f 84 24 a0 03 	vmovdqa %ymm0,0x3a0(%rsp)
  4060f6:	00 00 
  4060f8:	c5 fd 7f 84 24 c0 03 	vmovdqa %ymm0,0x3c0(%rsp)
  4060ff:	00 00 
  406101:	c5 fd 7f 84 24 e0 03 	vmovdqa %ymm0,0x3e0(%rsp)
  406108:	00 00 
  40610a:	c5 fd 7f 84 24 00 04 	vmovdqa %ymm0,0x400(%rsp)
  406111:	00 00 
  406113:	c5 fd 7f 84 24 20 04 	vmovdqa %ymm0,0x420(%rsp)
  40611a:	00 00 
  40611c:	c5 fd 7f 84 24 40 04 	vmovdqa %ymm0,0x440(%rsp)
  406123:	00 00 
  406125:	c5 fd 7f 84 24 60 04 	vmovdqa %ymm0,0x460(%rsp)
  40612c:	00 00 
  40612e:	c5 fd 7f 84 24 80 04 	vmovdqa %ymm0,0x480(%rsp)
  406135:	00 00 
  406137:	c5 fd 7f 84 24 a0 04 	vmovdqa %ymm0,0x4a0(%rsp)
  40613e:	00 00 
  406140:	c5 fd 7f 84 24 c0 04 	vmovdqa %ymm0,0x4c0(%rsp)
  406147:	00 00 
  406149:	c5 fd 7f 84 24 e0 04 	vmovdqa %ymm0,0x4e0(%rsp)
  406150:	00 00 
  406152:	c5 fd 7f 84 24 00 05 	vmovdqa %ymm0,0x500(%rsp)
  406159:	00 00 
  40615b:	c5 fd 7f 84 24 20 05 	vmovdqa %ymm0,0x520(%rsp)
  406162:	00 00 
  406164:	c5 fd 7f 84 24 40 05 	vmovdqa %ymm0,0x540(%rsp)
  40616b:	00 00 
  40616d:	c5 fd 7f 84 24 60 05 	vmovdqa %ymm0,0x560(%rsp)
  406174:	00 00 
  406176:	c5 fd 7f 84 24 80 05 	vmovdqa %ymm0,0x580(%rsp)
  40617d:	00 00 
  40617f:	c5 fd 7f 84 24 a0 05 	vmovdqa %ymm0,0x5a0(%rsp)
  406186:	00 00 
  406188:	c5 fd 7f 84 24 c0 05 	vmovdqa %ymm0,0x5c0(%rsp)
  40618f:	00 00 
  406191:	c5 fd 7f 84 24 e0 05 	vmovdqa %ymm0,0x5e0(%rsp)
  406198:	00 00 
  40619a:	c5 fd 7f 84 24 00 06 	vmovdqa %ymm0,0x600(%rsp)
  4061a1:	00 00 
  4061a3:	c5 fd 7f 84 24 20 06 	vmovdqa %ymm0,0x620(%rsp)
  4061aa:	00 00 
  4061ac:	c5 fd 7f 84 24 40 06 	vmovdqa %ymm0,0x640(%rsp)
  4061b3:	00 00 
  4061b5:	c5 fd 7f 84 24 60 06 	vmovdqa %ymm0,0x660(%rsp)
  4061bc:	00 00 
  4061be:	c5 fd 7f 84 24 80 06 	vmovdqa %ymm0,0x680(%rsp)
  4061c5:	00 00 
  4061c7:	c5 fd 7f 84 24 a0 06 	vmovdqa %ymm0,0x6a0(%rsp)
  4061ce:	00 00 
  4061d0:	c5 fd 7f 84 24 c0 06 	vmovdqa %ymm0,0x6c0(%rsp)
  4061d7:	00 00 
  4061d9:	c5 fd 7f 84 24 e0 06 	vmovdqa %ymm0,0x6e0(%rsp)
  4061e0:	00 00 
  4061e2:	c5 fd 7f 84 24 00 07 	vmovdqa %ymm0,0x700(%rsp)
  4061e9:	00 00 
  4061eb:	c5 fd 7f 84 24 20 07 	vmovdqa %ymm0,0x720(%rsp)
  4061f2:	00 00 
  4061f4:	c5 fd 7f 84 24 40 07 	vmovdqa %ymm0,0x740(%rsp)
  4061fb:	00 00 
  4061fd:	c5 fd 7f 84 24 60 07 	vmovdqa %ymm0,0x760(%rsp)
  406204:	00 00 
  406206:	c5 fd 7f 84 24 80 07 	vmovdqa %ymm0,0x780(%rsp)
  40620d:	00 00 
  40620f:	c5 fd 7f 84 24 a0 07 	vmovdqa %ymm0,0x7a0(%rsp)
  406216:	00 00 
  406218:	c5 fd 7f 84 24 c0 07 	vmovdqa %ymm0,0x7c0(%rsp)
  40621f:	00 00 
  406221:	c5 fd 7f 84 24 e0 07 	vmovdqa %ymm0,0x7e0(%rsp)
  406228:	00 00 
  40622a:	c5 fd 7f 84 24 00 08 	vmovdqa %ymm0,0x800(%rsp)
  406231:	00 00 
  406233:	c5 fd 7f 84 24 20 08 	vmovdqa %ymm0,0x820(%rsp)
  40623a:	00 00 
  40623c:	c5 fd 7f 84 24 40 08 	vmovdqa %ymm0,0x840(%rsp)
  406243:	00 00 
  406245:	c5 fd 7f 84 24 60 08 	vmovdqa %ymm0,0x860(%rsp)
  40624c:	00 00 
  40624e:	c5 fd 7f 84 24 80 08 	vmovdqa %ymm0,0x880(%rsp)
  406255:	00 00 
  406257:	c5 fd 7f 84 24 a0 08 	vmovdqa %ymm0,0x8a0(%rsp)
  40625e:	00 00 
  406260:	c5 fd 7f 84 24 c0 08 	vmovdqa %ymm0,0x8c0(%rsp)
  406267:	00 00 
  406269:	c5 fd 7f 84 24 e0 08 	vmovdqa %ymm0,0x8e0(%rsp)
  406270:	00 00 
  406272:	c5 fd 7f 84 24 00 09 	vmovdqa %ymm0,0x900(%rsp)
  406279:	00 00 
  40627b:	c5 fd 7f 84 24 20 09 	vmovdqa %ymm0,0x920(%rsp)
  406282:	00 00 
  406284:	c4 e2 78 49 84 24 00 	ldtilecfg 0x100(%rsp)
  40628b:	01 00 00 
  40628e:	b8 40 00 00 00       	mov    $0x40,%eax
  406293:	48 8d 94 24 40 01 00 	lea    0x140(%rsp),%rdx
  40629a:	00 
  40629b:	c4 e2 7b 4b 24 02    	tileloadd (%rdx,%rax,1),%tmm4
  4062a1:	48 8d 94 24 40 05 00 	lea    0x540(%rsp),%rdx
  4062a8:	00 
  4062a9:	c4 e2 7b 4b 2c 02    	tileloadd (%rdx,%rax,1),%tmm5
  4062af:	ba 00 04 00 00       	mov    $0x400,%edx
  4062b4:	0f 1f 40 00          	nopl   0x0(%rax)
  4062b8:	c4 e2 7b 49 c0       	tilezero %tmm0
  4062bd:	c4 e2 7b 49 c8       	tilezero %tmm1
  4062c2:	c4 e2 7b 49 d0       	tilezero %tmm2
  4062c7:	c4 e2 7b 49 d8       	tilezero %tmm3
  4062cc:	b8 00 01 00 00       	mov    $0x100,%eax
  4062d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4062d8:	c4 e2 52 5c c4       	tdpbf16ps %tmm5,%tmm4,%tmm0
  4062dd:	c4 e2 52 5c cc       	tdpbf16ps %tmm5,%tmm4,%tmm1
  4062e2:	c4 e2 52 5c d4       	tdpbf16ps %tmm5,%tmm4,%tmm2
  4062e7:	c4 e2 52 5c dc       	tdpbf16ps %tmm5,%tmm4,%tmm3
  4062ec:	ff c8                	dec    %eax
  4062ee:	75 e8                	jne    4062d8 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x5e8>
  4062f0:	ff ca                	dec    %edx
  4062f2:	75 c4                	jne    4062b8 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x5c8>
  4062f4:	48 8d 94 24 40 09 00 	lea    0x940(%rsp),%rdx
  4062fb:	00 
  4062fc:	b8 40 00 00 00       	mov    $0x40,%eax
  406301:	c4 e2 7a 4b 04 02    	tilestored %tmm0,(%rdx,%rax,1)
  406307:	48 8d 8c 24 40 0d 00 	lea    0xd40(%rsp),%rcx
  40630e:	00 
  40630f:	c4 e2 7a 4b 0c 01    	tilestored %tmm1,(%rcx,%rax,1)
  406315:	48 8d 8c 24 40 11 00 	lea    0x1140(%rsp),%rcx
  40631c:	00 
  40631d:	c4 e2 7a 4b 14 01    	tilestored %tmm2,(%rcx,%rax,1)
  406323:	48 8d 8c 24 40 15 00 	lea    0x1540(%rsp),%rcx
  40632a:	00 
  40632b:	c4 e2 7a 4b 1c 01    	tilestored %tmm3,(%rcx,%rax,1)
  406331:	48 8b 1d 30 52 00 00 	mov    0x5230(%rip),%rbx        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  406338:	62 61 7d 28 6f 0d 7e 	vmovdqa32 0x517e(%rip),%ymm25        # 40b4c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1a0>
  40633f:	51 00 00 
  406342:	62 61 7d 28 6f 05 94 	vmovdqa32 0x5194(%rip),%ymm24        # 40b4e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  406349:	51 00 00 
  40634c:	62 e2 7d 28 18 3d fa 	vbroadcastss 0x51fa(%rip),%ymm23        # 40b550 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x230>
  406353:	51 00 00 
  406356:	45 31 ed             	xor    %r13d,%r13d
  406359:	48 81 c2 00 04 00 00 	add    $0x400,%rdx
  406360:	48 8d 82 00 fc ff ff 	lea    -0x400(%rdx),%rax
  406367:	62 01 2d 00 ef d2    	vpxord %xmm26,%xmm26,%xmm26
  40636d:	c5 fc 28 78 20       	vmovaps 0x20(%rax),%ymm7
  406372:	c5 fc 28 28          	vmovaps (%rax),%ymm5
  406376:	62 b3 7d 28 19 fc 01 	vextractf32x4 $0x1,%ymm7,%xmm20
  40637d:	c5 fc 28 78 40       	vmovaps 0x40(%rax),%ymm7
  406382:	c5 fc 28 b0 00 01 00 	vmovaps 0x100(%rax),%ymm6
  406389:	00 
  40638a:	c4 e3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm1
  406390:	c5 fc 28 78 60       	vmovaps 0x60(%rax),%ymm7
  406395:	c5 fc 5a c1          	vcvtps2pd %xmm1,%ymm0
  406399:	62 b3 7d 28 19 ed 01 	vextractf32x4 $0x1,%ymm5,%xmm21
  4063a0:	c5 fd 29 44 24 20    	vmovapd %ymm0,0x20(%rsp)
  4063a6:	c4 e3 7d 19 f5 01    	vextractf128 $0x1,%ymm6,%xmm5
  4063ac:	c4 e3 7d 19 f8 01    	vextractf128 $0x1,%ymm7,%xmm0
  4063b2:	c5 fc 28 b0 20 01 00 	vmovaps 0x120(%rax),%ymm6
  4063b9:	00 
  4063ba:	c5 fc 28 b8 80 00 00 	vmovaps 0x80(%rax),%ymm7
  4063c1:	00 
  4063c2:	c4 e3 7d 19 f4 01    	vextractf128 $0x1,%ymm6,%xmm4
  4063c8:	c4 c3 7d 19 fc 01    	vextractf128 $0x1,%ymm7,%xmm12
  4063ce:	c5 fc 28 b0 40 01 00 	vmovaps 0x140(%rax),%ymm6
  4063d5:	00 
  4063d6:	c5 fc 28 b8 a0 00 00 	vmovaps 0xa0(%rax),%ymm7
  4063dd:	00 
  4063de:	c5 fc 5a c8          	vcvtps2pd %xmm0,%ymm1
  4063e2:	c5 fc 28 80 a0 01 00 	vmovaps 0x1a0(%rax),%ymm0
  4063e9:	00 
  4063ea:	c4 c3 7d 19 fb 01    	vextractf128 $0x1,%ymm7,%xmm11
  4063f0:	c4 e3 7d 19 f3 01    	vextractf128 $0x1,%ymm6,%xmm3
  4063f6:	c5 fc 28 b8 c0 00 00 	vmovaps 0xc0(%rax),%ymm7
  4063fd:	00 
  4063fe:	c5 fc 28 b0 60 01 00 	vmovaps 0x160(%rax),%ymm6
  406405:	00 
  406406:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  40640d:	62 61 7c 28 5a 70 02 	vcvtps2pd 0x20(%rax),%ymm30
  406414:	62 61 7c 28 5a 68 04 	vcvtps2pd 0x40(%rax),%ymm29
  40641b:	c5 7c 5a b0 40 01 00 	vcvtps2pd 0x140(%rax),%ymm14
  406422:	00 
  406423:	c5 7c 5a 90 80 01 00 	vcvtps2pd 0x180(%rax),%ymm10
  40642a:	00 
  40642b:	62 e1 7c 28 5a 30    	vcvtps2pd (%rax),%ymm22
  406431:	62 e1 7c 28 5a 58 06 	vcvtps2pd 0x60(%rax),%ymm19
  406438:	62 e1 7c 28 5a 50 08 	vcvtps2pd 0x80(%rax),%ymm18
  40643f:	62 e1 7c 28 5a 48 0a 	vcvtps2pd 0xa0(%rax),%ymm17
  406446:	62 e1 7c 28 5a 40 0c 	vcvtps2pd 0xc0(%rax),%ymm16
  40644d:	c5 7c 5a b8 e0 00 00 	vcvtps2pd 0xe0(%rax),%ymm15
  406454:	00 
  406455:	62 61 7c 28 5a 60 10 	vcvtps2pd 0x100(%rax),%ymm28
  40645c:	62 61 7c 28 5a 58 12 	vcvtps2pd 0x120(%rax),%ymm27
  406463:	c5 7c 5a a8 60 01 00 	vcvtps2pd 0x160(%rax),%ymm13
  40646a:	00 
  40646b:	c5 7c 5a 80 a0 01 00 	vcvtps2pd 0x1a0(%rax),%ymm8
  406472:	00 
  406473:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  406479:	c5 fd 29 4c 24 40    	vmovapd %ymm1,0x40(%rsp)
  40647f:	62 61 7c 28 5a 78 1c 	vcvtps2pd 0x1c0(%rax),%ymm31
  406486:	c4 c3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm9
  40648c:	c4 e3 7d 19 f2 01    	vextractf128 $0x1,%ymm6,%xmm2
  406492:	c5 fc 28 b8 e0 00 00 	vmovaps 0xe0(%rax),%ymm7
  406499:	00 
  40649a:	c5 fc 28 b0 80 01 00 	vmovaps 0x180(%rax),%ymm6
  4064a1:	00 
  4064a2:	c5 fd 29 44 24 60    	vmovapd %ymm0,0x60(%rsp)
  4064a8:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0x80(%rsp)
  4064af:	04 
  4064b0:	c5 fc 28 80 c0 01 00 	vmovaps 0x1c0(%rax),%ymm0
  4064b7:	00 
  4064b8:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x18(%rsp)
  4064bf:	03 
  4064c0:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  4064c7:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  4064cd:	c5 fd 29 84 24 a0 00 	vmovapd %ymm0,0xa0(%rsp)
  4064d4:	00 00 
  4064d6:	c5 fc 28 80 e0 01 00 	vmovaps 0x1e0(%rax),%ymm0
  4064dd:	00 
  4064de:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4064e3:	62 61 7c 28 5a 78 1e 	vcvtps2pd 0x1e0(%rax),%ymm31
  4064ea:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xc0(%rsp)
  4064f1:	06 
  4064f2:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  4064f9:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
  4064fe:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  406504:	c5 fd 29 84 24 e0 00 	vmovapd %ymm0,0xe0(%rsp)
  40650b:	00 00 
  40650d:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  406512:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406516:	62 b1 cd 00 15 ce    	vunpckhpd %xmm22,%xmm22,%xmm1
  40651c:	62 a3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm22,%xmm22
  406523:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  406527:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x18(%rsp)
  40652e:	03 
  40652f:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  406534:	c4 e1 f9 7e cb       	vmovq  %xmm1,%rbx
  406539:	62 61 fd 08 6e fb    	vmovq  %rbx,%xmm31
  40653f:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
  406544:	62 91 f7 08 58 cf    	vaddsd %xmm31,%xmm1,%xmm1
  40654a:	62 21 cd 00 15 fe    	vunpckhpd %xmm22,%xmm22,%xmm31
  406550:	62 a1 7c 28 5a ed    	vcvtps2pd %xmm21,%ymm21
  406556:	62 f1 87 00 58 c9    	vaddsd %xmm1,%xmm31,%xmm1
  40655c:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x18(%rsp)
  406563:	03 
  406564:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  406569:	c4 e1 f9 7e c9       	vmovq  %xmm1,%rcx
  40656e:	62 e1 fd 08 6e f1    	vmovq  %rcx,%xmm22
  406574:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  406579:	62 b1 f7 08 58 ce    	vaddsd %xmm22,%xmm1,%xmm1
  40657f:	62 21 d5 00 15 fd    	vunpckhpd %xmm21,%xmm21,%xmm31
  406585:	62 a3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm21,%xmm21
  40658c:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x18(%rsp)
  406593:	03 
  406594:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  406599:	62 61 87 00 58 f9    	vaddsd %xmm1,%xmm31,%xmm31
  40659f:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
  4065a4:	62 61 fd 08 13 74 24 	vmovlpd %xmm30,0x18(%rsp)
  4065ab:	03 
  4065ac:	62 01 f7 08 58 ff    	vaddsd %xmm31,%xmm1,%xmm31
  4065b2:	62 a1 d5 00 15 f5    	vunpckhpd %xmm21,%xmm21,%xmm22
  4065b8:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4065bd:	62 81 cf 00 58 f7    	vaddsd %xmm31,%xmm22,%xmm22
  4065c3:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
  4065c8:	62 01 8d 00 15 fe    	vunpckhpd %xmm30,%xmm30,%xmm31
  4065ce:	62 a1 f7 08 58 f6    	vaddsd %xmm22,%xmm1,%xmm22
  4065d4:	62 a1 7c 28 5a e4    	vcvtps2pd %xmm20,%ymm20
  4065da:	c5 fd 28 44 24 20    	vmovapd 0x20(%rsp),%ymm0
  4065e0:	62 21 87 00 58 fe    	vaddsd %xmm22,%xmm31,%xmm31
  4065e6:	62 23 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm30,%xmm22
  4065ed:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x18(%rsp)
  4065f4:	03 
  4065f5:	62 61 ff 08 10 74 24 	vmovsd 0x18(%rsp),%xmm30
  4065fc:	03 
  4065fd:	62 a1 cd 00 15 f6    	vunpckhpd %xmm22,%xmm22,%xmm22
  406603:	62 01 8f 00 58 f7    	vaddsd %xmm31,%xmm30,%xmm30
  406609:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x18(%rsp)
  406610:	03 
  406611:	62 61 ff 08 10 7c 24 	vmovsd 0x18(%rsp),%xmm31
  406618:	03 
  406619:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  40661f:	62 21 dd 00 15 f4    	vunpckhpd %xmm20,%xmm20,%xmm30
  406625:	62 a3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm20,%xmm20
  40662c:	62 a1 87 00 58 f6    	vaddsd %xmm22,%xmm31,%xmm22
  406632:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x18(%rsp)
  406639:	03 
  40663a:	62 a1 dd 00 15 ec    	vunpckhpd %xmm20,%xmm20,%xmm21
  406640:	62 21 8f 00 58 f6    	vaddsd %xmm22,%xmm30,%xmm30
  406646:	62 e1 ff 08 10 74 24 	vmovsd 0x18(%rsp),%xmm22
  40664d:	03 
  40664e:	62 61 fd 08 13 6c 24 	vmovlpd %xmm29,0x18(%rsp)
  406655:	03 
  406656:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  40665c:	62 61 ff 08 10 74 24 	vmovsd 0x18(%rsp),%xmm30
  406663:	03 
  406664:	c5 f9 13 44 24 20    	vmovlpd %xmm0,0x20(%rsp)
  40666a:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  406670:	62 81 95 00 15 f5    	vunpckhpd %xmm29,%xmm29,%xmm22
  406676:	62 f3 fd 28 19 c1 01 	vextractf64x2 $0x1,%ymm0,%xmm1
  40667d:	62 a1 8f 00 58 ed    	vaddsd %xmm21,%xmm30,%xmm21
  406683:	62 e1 f5 08 15 e1    	vunpckhpd %xmm1,%xmm1,%xmm20
  406689:	c4 41 7c 5a e4       	vcvtps2pd %xmm12,%ymm12
  40668e:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  406694:	62 23 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm29,%xmm21
  40669b:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x18(%rsp)
  4066a2:	03 
  4066a3:	62 61 ff 08 10 6c 24 	vmovsd 0x18(%rsp),%xmm29
  4066aa:	03 
  4066ab:	62 a1 d5 00 15 ed    	vunpckhpd %xmm21,%xmm21,%xmm21
  4066b1:	62 a1 97 00 58 f6    	vaddsd %xmm22,%xmm29,%xmm22
  4066b7:	62 61 ff 08 10 6c 24 	vmovsd 0x20(%rsp),%xmm29
  4066be:	04 
  4066bf:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x20(%rsp)
  4066c6:	04 
  4066c7:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  4066cd:	62 e1 fd 08 15 f0    	vunpckhpd %xmm0,%xmm0,%xmm22
  4066d3:	c4 41 7c 5a db       	vcvtps2pd %xmm11,%ymm11
  4066d8:	62 a1 97 00 58 ed    	vaddsd %xmm21,%xmm29,%xmm21
  4066de:	c4 41 7c 5a c9       	vcvtps2pd %xmm9,%ymm9
  4066e3:	c4 e3 7d 19 ff 01    	vextractf128 $0x1,%ymm7,%xmm7
  4066e9:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  4066ef:	c5 fc 5a ff          	vcvtps2pd %xmm7,%ymm7
  4066f3:	c5 fc 5a ed          	vcvtps2pd %xmm5,%ymm5
  4066f7:	62 a1 f7 08 58 ee    	vaddsd %xmm22,%xmm1,%xmm21
  4066fd:	62 e1 ff 08 10 74 24 	vmovsd 0x20(%rsp),%xmm22
  406704:	04 
  406705:	c5 fc 5a e4          	vcvtps2pd %xmm4,%ymm4
  406709:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  40670f:	62 a1 e5 00 15 eb    	vunpckhpd %xmm19,%xmm19,%xmm21
  406715:	62 a3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm19,%xmm19
  40671c:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  406722:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x20(%rsp)
  406729:	04 
  40672a:	62 e1 ff 08 10 74 24 	vmovsd 0x20(%rsp),%xmm22
  406731:	04 
  406732:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  406738:	c5 fd 28 4c 24 40    	vmovapd 0x40(%rsp),%ymm1
  40673e:	62 a1 e5 00 15 e3    	vunpckhpd %xmm19,%xmm19,%xmm20
  406744:	62 a1 cf 00 58 ed    	vaddsd %xmm21,%xmm22,%xmm21
  40674a:	c5 f9 13 4c 24 40    	vmovlpd %xmm1,0x40(%rsp)
  406750:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  406757:	08 
  406758:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  40675e:	62 e1 f5 08 15 e9    	vunpckhpd %xmm1,%xmm1,%xmm21
  406764:	62 f3 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm1,%xmm0
  40676b:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  406771:	62 e1 fd 08 15 d8    	vunpckhpd %xmm0,%xmm0,%xmm19
  406777:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x40(%rsp)
  40677e:	08 
  40677f:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  406785:	c5 fc 5a db          	vcvtps2pd %xmm3,%ymm3
  406789:	c5 fc 5a d2          	vcvtps2pd %xmm2,%ymm2
  40678d:	62 a1 ff 08 58 e5    	vaddsd %xmm21,%xmm0,%xmm20
  406793:	62 e1 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm21
  40679a:	08 
  40679b:	c4 e3 7d 19 f6 01    	vextractf128 $0x1,%ymm6,%xmm6
  4067a1:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  4067a7:	62 a1 ed 00 15 e2    	vunpckhpd %xmm18,%xmm18,%xmm20
  4067ad:	62 a3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm18,%xmm18
  4067b4:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  4067ba:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x40(%rsp)
  4067c1:	08 
  4067c2:	62 e1 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm21
  4067c9:	08 
  4067ca:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  4067d0:	62 a1 ed 00 15 da    	vunpckhpd %xmm18,%xmm18,%xmm19
  4067d6:	c5 79 13 64 24 40    	vmovlpd %xmm12,0x40(%rsp)
  4067dc:	62 a1 d7 00 58 e4    	vaddsd %xmm20,%xmm21,%xmm20
  4067e2:	62 e1 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm21
  4067e9:	08 
  4067ea:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x40(%rsp)
  4067f1:	08 
  4067f2:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  4067f8:	62 c1 9d 08 15 e4    	vunpckhpd %xmm12,%xmm12,%xmm20
  4067fe:	62 53 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm12,%xmm12
  406805:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  40680b:	62 c1 9d 08 15 d4    	vunpckhpd %xmm12,%xmm12,%xmm18
  406811:	c5 fc 5a f6          	vcvtps2pd %xmm6,%ymm6
  406815:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  40681b:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  406822:	48 05 00 02 00 00    	add    $0x200,%rax
  406828:	62 a1 9f 08 58 dc    	vaddsd %xmm20,%xmm12,%xmm19
  40682e:	62 e1 ff 08 10 64 24 	vmovsd 0x40(%rsp),%xmm20
  406835:	08 
  406836:	62 43 fd 28 19 dc 01 	vextractf64x2 $0x1,%ymm27,%xmm12
  40683d:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  406843:	62 a1 f5 00 15 d9    	vunpckhpd %xmm17,%xmm17,%xmm19
  406849:	62 a3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm17,%xmm17
  406850:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  406856:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x40(%rsp)
  40685d:	08 
  40685e:	62 e1 ff 08 10 64 24 	vmovsd 0x40(%rsp),%xmm20
  406865:	08 
  406866:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  40686c:	62 a1 f5 00 15 d1    	vunpckhpd %xmm17,%xmm17,%xmm18
  406872:	c5 79 13 5c 24 40    	vmovlpd %xmm11,0x40(%rsp)
  406878:	62 a1 df 00 58 db    	vaddsd %xmm19,%xmm20,%xmm19
  40687e:	62 e1 ff 08 10 64 24 	vmovsd 0x40(%rsp),%xmm20
  406885:	08 
  406886:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x40(%rsp)
  40688d:	08 
  40688e:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  406894:	62 c1 a5 08 15 db    	vunpckhpd %xmm11,%xmm11,%xmm19
  40689a:	62 53 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm11,%xmm11
  4068a1:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  4068a7:	62 c1 a5 08 15 cb    	vunpckhpd %xmm11,%xmm11,%xmm17
  4068ad:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  4068b3:	62 a1 a7 08 58 d3    	vaddsd %xmm19,%xmm11,%xmm18
  4068b9:	62 e1 ff 08 10 5c 24 	vmovsd 0x40(%rsp),%xmm19
  4068c0:	08 
  4068c1:	62 53 fd 28 19 f3 01 	vextractf64x2 $0x1,%ymm14,%xmm11
  4068c8:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  4068ce:	62 a1 fd 00 15 d0    	vunpckhpd %xmm16,%xmm16,%xmm18
  4068d4:	62 a3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm16,%xmm16
  4068db:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  4068e1:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x40(%rsp)
  4068e8:	08 
  4068e9:	62 e1 ff 08 10 5c 24 	vmovsd 0x40(%rsp),%xmm19
  4068f0:	08 
  4068f1:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  4068f7:	62 a1 fd 00 15 c8    	vunpckhpd %xmm16,%xmm16,%xmm17
  4068fd:	c5 79 13 4c 24 40    	vmovlpd %xmm9,0x40(%rsp)
  406903:	62 a1 e7 00 58 d2    	vaddsd %xmm18,%xmm19,%xmm18
  406909:	62 e1 ff 08 10 5c 24 	vmovsd 0x40(%rsp),%xmm19
  406910:	08 
  406911:	c5 79 13 7c 24 40    	vmovlpd %xmm15,0x40(%rsp)
  406917:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  40691d:	62 c1 b5 08 15 d1    	vunpckhpd %xmm9,%xmm9,%xmm18
  406923:	62 53 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm9,%xmm9
  40692a:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  406930:	62 c1 b5 08 15 c1    	vunpckhpd %xmm9,%xmm9,%xmm16
  406936:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  40693c:	62 a1 b7 08 58 ca    	vaddsd %xmm18,%xmm9,%xmm17
  406942:	62 e1 ff 08 10 54 24 	vmovsd 0x40(%rsp),%xmm18
  406949:	08 
  40694a:	c5 f9 13 7c 24 40    	vmovlpd %xmm7,0x40(%rsp)
  406950:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  406956:	62 c1 85 08 15 cf    	vunpckhpd %xmm15,%xmm15,%xmm17
  40695c:	62 53 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm15,%xmm15
  406963:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  406969:	62 e1 ff 08 10 54 24 	vmovsd 0x40(%rsp),%xmm18
  406970:	08 
  406971:	62 61 fd 08 13 64 24 	vmovlpd %xmm28,0x40(%rsp)
  406978:	08 
  406979:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  40697f:	62 c1 85 08 15 c7    	vunpckhpd %xmm15,%xmm15,%xmm16
  406985:	62 53 fd 28 19 d1 01 	vextractf64x2 $0x1,%ymm10,%xmm9
  40698c:	62 a1 87 08 58 c9    	vaddsd %xmm17,%xmm15,%xmm17
  406992:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  406998:	62 e1 c5 08 15 cf    	vunpckhpd %xmm7,%xmm7,%xmm17
  40699e:	62 f3 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm7,%xmm7
  4069a5:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  4069ab:	c5 41 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm15
  4069af:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  4069b5:	62 a1 c7 08 58 c1    	vaddsd %xmm17,%xmm7,%xmm16
  4069bb:	62 e1 ff 08 10 4c 24 	vmovsd 0x40(%rsp),%xmm17
  4069c2:	08 
  4069c3:	c5 f9 13 6c 24 40    	vmovlpd %xmm5,0x40(%rsp)
  4069c9:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  4069cf:	62 81 9d 00 15 c4    	vunpckhpd %xmm28,%xmm28,%xmm16
  4069d5:	c5 fd 28 7c 24 60    	vmovapd 0x60(%rsp),%ymm7
  4069db:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  4069e1:	62 e1 ff 08 10 4c 24 	vmovsd 0x40(%rsp),%xmm17
  4069e8:	08 
  4069e9:	62 f3 fd 28 19 f8 01 	vextractf64x2 $0x1,%ymm7,%xmm0
  4069f0:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4069f6:	62 43 fd 28 19 e7 01 	vextractf64x2 $0x1,%ymm28,%xmm15
  4069fd:	62 a1 87 08 58 c0    	vaddsd %xmm16,%xmm15,%xmm16
  406a03:	c4 41 01 15 ff       	vunpckhpd %xmm15,%xmm15,%xmm15
  406a08:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  406a0e:	62 e1 d5 08 15 c5    	vunpckhpd %xmm5,%xmm5,%xmm16
  406a14:	62 f3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm5,%xmm5
  406a1b:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  406a21:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  406a27:	62 31 d7 08 58 f8    	vaddsd %xmm16,%xmm5,%xmm15
  406a2d:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  406a31:	c4 c1 53 58 ef       	vaddsd %xmm15,%xmm5,%xmm5
  406a36:	62 11 a5 00 15 fb    	vunpckhpd %xmm27,%xmm27,%xmm15
  406a3c:	62 f1 a7 00 58 ed    	vaddsd %xmm5,%xmm27,%xmm5
  406a42:	c5 03 58 fd          	vaddsd %xmm5,%xmm15,%xmm15
  406a46:	c4 c1 1b 58 ef       	vaddsd %xmm15,%xmm12,%xmm5
  406a4b:	c4 41 19 15 e4       	vunpckhpd %xmm12,%xmm12,%xmm12
  406a50:	c5 1b 58 e5          	vaddsd %xmm5,%xmm12,%xmm12
  406a54:	c5 d9 15 ec          	vunpckhpd %xmm4,%xmm4,%xmm5
  406a58:	c4 41 5b 58 e4       	vaddsd %xmm12,%xmm4,%xmm12
  406a5d:	62 f3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm4,%xmm4
  406a64:	c4 c1 53 58 ec       	vaddsd %xmm12,%xmm5,%xmm5
  406a69:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  406a6d:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  406a71:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  406a75:	c4 c1 09 15 ee       	vunpckhpd %xmm14,%xmm14,%xmm5
  406a7a:	c5 8b 58 e4          	vaddsd %xmm4,%xmm14,%xmm4
  406a7e:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  406a82:	c5 a3 58 e5          	vaddsd %xmm5,%xmm11,%xmm4
  406a86:	c4 41 21 15 db       	vunpckhpd %xmm11,%xmm11,%xmm11
  406a8b:	c5 23 58 dc          	vaddsd %xmm4,%xmm11,%xmm11
  406a8f:	c5 e1 15 e3          	vunpckhpd %xmm3,%xmm3,%xmm4
  406a93:	c4 c1 63 58 eb       	vaddsd %xmm11,%xmm3,%xmm5
  406a98:	62 f3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm3,%xmm3
  406a9f:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  406aa3:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  406aa7:	c5 e1 15 db          	vunpckhpd %xmm3,%xmm3,%xmm3
  406aab:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  406aaf:	c4 c1 11 15 dd       	vunpckhpd %xmm13,%xmm13,%xmm3
  406ab4:	c5 93 58 e4          	vaddsd %xmm4,%xmm13,%xmm4
  406ab8:	62 53 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm13,%xmm13
  406abf:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  406ac3:	c5 93 58 e3          	vaddsd %xmm3,%xmm13,%xmm4
  406ac7:	c4 c1 11 15 dd       	vunpckhpd %xmm13,%xmm13,%xmm3
  406acc:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  406ad0:	c5 e9 15 e2          	vunpckhpd %xmm2,%xmm2,%xmm4
  406ad4:	c5 eb 58 db          	vaddsd %xmm3,%xmm2,%xmm3
  406ad8:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  406adc:	62 f3 fd 28 19 d3 01 	vextractf64x2 $0x1,%ymm2,%xmm3
  406ae3:	c5 e3 58 d4          	vaddsd %xmm4,%xmm3,%xmm2
  406ae7:	c5 e1 15 db          	vunpckhpd %xmm3,%xmm3,%xmm3
  406aeb:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  406aef:	c4 c1 29 15 d2       	vunpckhpd %xmm10,%xmm10,%xmm2
  406af4:	c5 ab 58 db          	vaddsd %xmm3,%xmm10,%xmm3
  406af8:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  406afc:	c5 b3 58 d2          	vaddsd %xmm2,%xmm9,%xmm2
  406b00:	c4 41 31 15 c9       	vunpckhpd %xmm9,%xmm9,%xmm9
  406b05:	c5 33 58 ca          	vaddsd %xmm2,%xmm9,%xmm9
  406b09:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  406b0d:	c4 c1 4b 58 d9       	vaddsd %xmm9,%xmm6,%xmm3
  406b12:	c5 fd 28 b4 24 80 00 	vmovapd 0x80(%rsp),%ymm6
  406b19:	00 00 
  406b1b:	c5 fd 28 ac 24 a0 00 	vmovapd 0xa0(%rsp),%ymm5
  406b22:	00 00 
  406b24:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  406b28:	c5 fc 28 98 00 fe ff 	vmovaps -0x200(%rax),%ymm3
  406b2f:	ff 
  406b30:	62 e1 7c 28 28 50 f2 	vmovaps -0x1c0(%rax),%ymm18
  406b37:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  406b3b:	c5 f1 15 c9          	vunpckhpd %xmm1,%xmm1,%xmm1
  406b3f:	c5 fc 28 a0 80 fe ff 	vmovaps -0x180(%rax),%ymm4
  406b46:	ff 
  406b47:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  406b4b:	c4 c1 39 15 d0       	vunpckhpd %xmm8,%xmm8,%xmm2
  406b50:	62 f2 35 20 7f 58 f1 	vpermt2ps -0x1e0(%rax),%ymm25,%ymm3
  406b57:	c5 bb 58 c9          	vaddsd %xmm1,%xmm8,%xmm1
  406b5b:	62 53 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm8
  406b62:	c5 7c 28 b8 c0 fe ff 	vmovaps -0x140(%rax),%ymm15
  406b69:	ff 
  406b6a:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  406b6e:	62 e2 35 20 7f 50 f3 	vpermt2ps -0x1a0(%rax),%ymm25,%ymm18
  406b75:	62 f2 35 20 7f 60 f5 	vpermt2ps -0x160(%rax),%ymm25,%ymm4
  406b7c:	c5 bb 58 ca          	vaddsd %xmm2,%xmm8,%xmm1
  406b80:	c4 41 39 15 c0       	vunpckhpd %xmm8,%xmm8,%xmm8
  406b85:	62 e1 7c 28 28 48 fa 	vmovaps -0xc0(%rax),%ymm17
  406b8c:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  406b90:	c5 c1 15 cf          	vunpckhpd %xmm7,%xmm7,%xmm1
  406b94:	62 72 35 20 7f 78 f7 	vpermt2ps -0x120(%rax),%ymm25,%ymm15
  406b9b:	c4 c1 43 58 d0       	vaddsd %xmm8,%xmm7,%xmm2
  406ba0:	62 f3 fd 28 19 f7 01 	vextractf64x2 $0x1,%ymm6,%xmm7
  406ba7:	c5 7c 28 88 40 fe ff 	vmovaps -0x1c0(%rax),%ymm9
  406bae:	ff 
  406baf:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  406bb3:	c5 fc 28 50 80       	vmovaps -0x80(%rax),%ymm2
  406bb8:	c5 7c 28 b0 c0 fe ff 	vmovaps -0x140(%rax),%ymm14
  406bbf:	ff 
  406bc0:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  406bc4:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  406bc8:	c5 7c 28 98 00 ff ff 	vmovaps -0x100(%rax),%ymm11
  406bcf:	ff 
  406bd0:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406bd4:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  406bd8:	c5 7c 28 80 40 ff ff 	vmovaps -0xc0(%rax),%ymm8
  406bdf:	ff 
  406be0:	c5 cb 58 c0          	vaddsd %xmm0,%xmm6,%xmm0
  406be4:	62 f3 fd 28 19 ee 01 	vextractf64x2 $0x1,%ymm5,%xmm6
  406beb:	62 e1 7c 28 28 40 fc 	vmovaps -0x80(%rax),%ymm16
  406bf2:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  406bf6:	c5 7c 28 60 c0       	vmovaps -0x40(%rax),%ymm12
  406bfb:	62 e2 35 20 7f 48 fb 	vpermt2ps -0xa0(%rax),%ymm25,%ymm17
  406c02:	c5 c3 58 c1          	vaddsd %xmm1,%xmm7,%xmm0
  406c06:	c5 c1 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm7
  406c0a:	62 f2 35 20 7f 50 fd 	vpermt2ps -0x60(%rax),%ymm25,%ymm2
  406c11:	c5 c3 58 f8          	vaddsd %xmm0,%xmm7,%xmm7
  406c15:	c5 d1 15 c5          	vunpckhpd %xmm5,%xmm5,%xmm0
  406c19:	62 72 3d 20 7f 48 f3 	vpermt2ps -0x1a0(%rax),%ymm24,%ymm9
  406c20:	c5 d3 58 cf          	vaddsd %xmm7,%xmm5,%xmm1
  406c24:	c5 fd 28 bc 24 c0 00 	vmovapd 0xc0(%rsp),%ymm7
  406c2b:	00 00 
  406c2d:	62 72 3d 20 7f 70 f7 	vpermt2ps -0x120(%rax),%ymm24,%ymm14
  406c34:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406c38:	62 d3 fd 28 19 fd 01 	vextractf64x2 $0x1,%ymm7,%xmm13
  406c3f:	62 72 3d 20 7f 40 fb 	vpermt2ps -0xa0(%rax),%ymm24,%ymm8
  406c46:	c5 cb 58 c8          	vaddsd %xmm0,%xmm6,%xmm1
  406c4a:	c5 c9 15 f6          	vunpckhpd %xmm6,%xmm6,%xmm6
  406c4e:	c5 c1 15 c7          	vunpckhpd %xmm7,%xmm7,%xmm0
  406c52:	c5 f3 58 ce          	vaddsd %xmm6,%xmm1,%xmm1
  406c56:	c5 fd 28 b4 24 e0 00 	vmovapd 0xe0(%rsp),%ymm6
  406c5d:	00 00 
  406c5f:	62 72 3d 20 7f 58 f9 	vpermt2ps -0xe0(%rax),%ymm24,%ymm11
  406c66:	c5 c3 58 c9          	vaddsd %xmm1,%xmm7,%xmm1
  406c6a:	62 f3 fd 28 19 f5 01 	vextractf64x2 $0x1,%ymm6,%xmm5
  406c71:	c5 fc 28 b8 80 fe ff 	vmovaps -0x180(%rax),%ymm7
  406c78:	ff 
  406c79:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406c7d:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  406c81:	62 f2 3d 20 7f 78 f5 	vpermt2ps -0x160(%rax),%ymm24,%ymm7
  406c88:	c4 c1 7b 58 c5       	vaddsd %xmm13,%xmm0,%xmm0
  406c8d:	c4 41 11 15 ed       	vunpckhpd %xmm13,%xmm13,%xmm13
  406c92:	62 e2 3d 20 7f 40 fd 	vpermt2ps -0x60(%rax),%ymm24,%ymm16
  406c99:	c4 c1 7b 58 c5       	vaddsd %xmm13,%xmm0,%xmm0
  406c9e:	c5 7c 28 eb          	vmovaps %ymm3,%ymm13
  406ca2:	62 32 35 20 7f ea    	vpermt2ps %ymm18,%ymm25,%ymm13
  406ca8:	c5 fb 58 c6          	vaddsd %xmm6,%xmm0,%xmm0
  406cac:	62 b2 3d 20 7f da    	vpermt2ps %ymm18,%ymm24,%ymm3
  406cb2:	c5 fc 28 b0 00 fe ff 	vmovaps -0x200(%rax),%ymm6
  406cb9:	ff 
  406cba:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406cbe:	c5 fc 28 88 00 ff ff 	vmovaps -0x100(%rax),%ymm1
  406cc5:	ff 
  406cc6:	62 e1 7c 28 28 d4    	vmovaps %ymm4,%ymm18
  406ccc:	62 f2 35 20 7f 48 f9 	vpermt2ps -0xe0(%rax),%ymm25,%ymm1
  406cd3:	62 c2 35 20 7f d7    	vpermt2ps %ymm15,%ymm25,%ymm18
  406cd9:	62 d2 3d 20 7f e7    	vpermt2ps %ymm15,%ymm24,%ymm4
  406cdf:	c5 7c 28 f9          	vmovaps %ymm1,%ymm15
  406ce3:	62 f2 3d 20 7f 70 f1 	vpermt2ps -0x1e0(%rax),%ymm24,%ymm6
  406cea:	62 32 35 20 7f f9    	vpermt2ps %ymm17,%ymm25,%ymm15
  406cf0:	62 72 35 20 7f 60 ff 	vpermt2ps -0x20(%rax),%ymm25,%ymm12
  406cf7:	62 b2 3d 20 7f c9    	vpermt2ps %ymm17,%ymm24,%ymm1
  406cfd:	62 e1 7c 28 28 ca    	vmovaps %ymm2,%ymm17
  406d03:	62 c2 35 20 7f cc    	vpermt2ps %ymm12,%ymm25,%ymm17
  406d09:	62 d2 3d 20 7f d4    	vpermt2ps %ymm12,%ymm24,%ymm2
  406d0f:	c5 7c 28 e6          	vmovaps %ymm6,%ymm12
  406d13:	62 52 35 20 7f e1    	vpermt2ps %ymm9,%ymm25,%ymm12
  406d19:	62 d2 3d 20 7f f1    	vpermt2ps %ymm9,%ymm24,%ymm6
  406d1f:	c5 7c 28 50 c0       	vmovaps -0x40(%rax),%ymm10
  406d24:	c5 7c 28 cf          	vmovaps %ymm7,%ymm9
  406d28:	62 52 35 20 7f ce    	vpermt2ps %ymm14,%ymm25,%ymm9
  406d2e:	62 d2 3d 20 7f fe    	vpermt2ps %ymm14,%ymm24,%ymm7
  406d34:	c4 41 7c 28 f3       	vmovaps %ymm11,%ymm14
  406d39:	62 72 3d 20 7f 50 ff 	vpermt2ps -0x20(%rax),%ymm24,%ymm10
  406d40:	62 52 35 20 7f f0    	vpermt2ps %ymm8,%ymm25,%ymm14
  406d46:	62 52 3d 20 7f d8    	vpermt2ps %ymm8,%ymm24,%ymm11
  406d4c:	62 31 7c 28 28 c0    	vmovaps %ymm16,%ymm8
  406d52:	62 52 35 20 7f c2    	vpermt2ps %ymm10,%ymm25,%ymm8
  406d58:	62 c2 3d 20 7f c2    	vpermt2ps %ymm10,%ymm24,%ymm16
  406d5e:	62 c1 7c 28 28 de    	vmovaps %ymm14,%ymm19
  406d64:	c4 41 7c 28 d5       	vmovaps %ymm13,%ymm10
  406d69:	62 32 35 20 7f d2    	vpermt2ps %ymm18,%ymm25,%ymm10
  406d6f:	62 32 3d 20 7f ea    	vpermt2ps %ymm18,%ymm24,%ymm13
  406d75:	62 c2 35 20 7f d8    	vpermt2ps %ymm8,%ymm25,%ymm19
  406d7b:	62 52 3d 20 7f f0    	vpermt2ps %ymm8,%ymm24,%ymm14
  406d81:	62 c1 7c 28 28 e7    	vmovaps %ymm15,%ymm20
  406d87:	62 e1 7c 28 28 d1    	vmovaps %ymm1,%ymm18
  406d8d:	c5 7c 28 c6          	vmovaps %ymm6,%ymm8
  406d91:	62 f2 3d 20 7f f7    	vpermt2ps %ymm7,%ymm24,%ymm6
  406d97:	62 f2 3d 20 7f ca    	vpermt2ps %ymm2,%ymm24,%ymm1
  406d9d:	62 a2 35 20 7f e1    	vpermt2ps %ymm17,%ymm25,%ymm20
  406da3:	62 32 3d 20 7f f9    	vpermt2ps %ymm17,%ymm24,%ymm15
  406da9:	62 e2 35 20 7f d2    	vpermt2ps %ymm2,%ymm25,%ymm18
  406daf:	62 c1 7c 28 28 cc    	vmovaps %ymm12,%ymm17
  406db5:	c5 fc 28 d6          	vmovaps %ymm6,%ymm2
  406db9:	c5 7c 29 d6          	vmovaps %ymm10,%ymm6
  406dbd:	62 c2 35 20 7f c9    	vpermt2ps %ymm9,%ymm25,%ymm17
  406dc3:	62 b2 35 20 7f f4    	vpermt2ps %ymm20,%ymm25,%ymm6
  406dc9:	62 52 3d 20 7f e1    	vpermt2ps %ymm9,%ymm24,%ymm12
  406dcf:	62 b1 4c 28 c2 cf 04 	vcmpneqps %ymm23,%ymm6,%k1
  406dd6:	c5 7c 28 cb          	vmovaps %ymm3,%ymm9
  406dda:	62 b1 7c 28 28 f1    	vmovaps %ymm17,%ymm6
  406de0:	62 72 35 20 7f cc    	vpermt2ps %ymm4,%ymm25,%ymm9
  406de6:	62 b2 35 20 7f f3    	vpermt2ps %ymm19,%ymm25,%ymm6
  406dec:	62 b1 4c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm6,%k0
  406df3:	c5 7c 29 ce          	vmovaps %ymm9,%ymm6
  406df7:	62 f2 3d 20 7f dc    	vpermt2ps %ymm4,%ymm24,%ymm3
  406dfd:	62 72 35 20 7f c7    	vpermt2ps %ymm7,%ymm25,%ymm8
  406e03:	c5 7c 29 dc          	vmovaps %ymm11,%ymm4
  406e07:	62 b2 35 20 7f f2    	vpermt2ps %ymm18,%ymm25,%ymm6
  406e0d:	62 b1 4c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm6,%k2
  406e14:	62 b2 35 20 7f e0    	vpermt2ps %ymm16,%ymm25,%ymm4
  406e1a:	c5 7c 29 c6          	vmovaps %ymm8,%ymm6
  406e1e:	62 f2 35 20 7f f4    	vpermt2ps %ymm4,%ymm25,%ymm6
  406e24:	62 b1 4c 28 c2 df 04 	vcmpneqps %ymm23,%ymm6,%k3
  406e2b:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  406e2f:	62 d2 35 20 7f f7    	vpermt2ps %ymm15,%ymm25,%ymm6
  406e35:	62 b1 4c 28 c2 e7 04 	vcmpneqps %ymm23,%ymm6,%k4
  406e3c:	c5 7c 29 e6          	vmovaps %ymm12,%ymm6
  406e40:	62 d2 35 20 7f f6    	vpermt2ps %ymm14,%ymm25,%ymm6
  406e46:	62 b1 4c 28 c2 ef 04 	vcmpneqps %ymm23,%ymm6,%k5
  406e4d:	c5 fc 28 f3          	vmovaps %ymm3,%ymm6
  406e51:	62 f2 35 20 7f f1    	vpermt2ps %ymm1,%ymm25,%ymm6
  406e57:	62 b1 4c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm6,%k6
  406e5e:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  406e62:	c5 f9 93 ca          	kmovb  %k2,%ecx
  406e66:	62 32 3d 20 7f d8    	vpermt2ps %ymm16,%ymm24,%ymm11
  406e6c:	c5 fc 28 f2          	vmovaps %ymm2,%ymm6
  406e70:	c5 f9 93 f1          	kmovb  %k1,%esi
  406e74:	09 ce                	or     %ecx,%esi
  406e76:	62 d2 35 20 7f f3    	vpermt2ps %ymm11,%ymm25,%ymm6
  406e7c:	c5 f9 93 cb          	kmovb  %k3,%ecx
  406e80:	09 ce                	or     %ecx,%esi
  406e82:	62 b1 4c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm6,%k7
  406e89:	c5 f9 93 cc          	kmovb  %k4,%ecx
  406e8d:	62 32 3d 20 7f d4    	vpermt2ps %ymm20,%ymm24,%ymm10
  406e93:	09 ce                	or     %ecx,%esi
  406e95:	62 b1 7c 28 28 f9    	vmovaps %ymm17,%ymm7
  406e9b:	c5 f9 93 cd          	kmovb  %k5,%ecx
  406e9f:	62 b1 2c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm10,%k2
  406ea6:	09 ce                	or     %ecx,%esi
  406ea8:	62 b2 3d 20 7f fb    	vpermt2ps %ymm19,%ymm24,%ymm7
  406eae:	c5 f9 93 ce          	kmovb  %k6,%ecx
  406eb2:	62 b1 44 28 c2 df 04 	vcmpneqps %ymm23,%ymm7,%k3
  406eb9:	09 ce                	or     %ecx,%esi
  406ebb:	62 32 3d 20 7f ca    	vpermt2ps %ymm18,%ymm24,%ymm9
  406ec1:	c5 f9 93 cf          	kmovb  %k7,%ecx
  406ec5:	62 72 3d 20 7f c4    	vpermt2ps %ymm4,%ymm24,%ymm8
  406ecb:	09 ce                	or     %ecx,%esi
  406ecd:	62 b1 34 28 c2 e7 04 	vcmpneqps %ymm23,%ymm9,%k4
  406ed4:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  406ed8:	c5 f9 93 ca          	kmovb  %k2,%ecx
  406edc:	62 b1 3c 28 c2 ef 04 	vcmpneqps %ymm23,%ymm8,%k5
  406ee3:	09 ce                	or     %ecx,%esi
  406ee5:	62 d2 3d 20 7f f7    	vpermt2ps %ymm15,%ymm24,%ymm6
  406eeb:	c5 7c 29 e4          	vmovaps %ymm12,%ymm4
  406eef:	62 f2 3d 20 7f d9    	vpermt2ps %ymm1,%ymm24,%ymm3
  406ef5:	c5 f9 93 cb          	kmovb  %k3,%ecx
  406ef9:	62 b1 4c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm6,%k6
  406f00:	09 ce                	or     %ecx,%esi
  406f02:	62 d2 3d 20 7f e6    	vpermt2ps %ymm14,%ymm24,%ymm4
  406f08:	62 b1 64 28 c2 c7 04 	vcmpneqps %ymm23,%ymm3,%k0
  406f0f:	c5 f9 93 cc          	kmovb  %k4,%ecx
  406f13:	62 b1 5c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm4,%k7
  406f1a:	09 ce                	or     %ecx,%esi
  406f1c:	c5 fb 58 c5          	vaddsd %xmm5,%xmm0,%xmm0
  406f20:	c5 f9 93 cd          	kmovb  %k5,%ecx
  406f24:	09 ce                	or     %ecx,%esi
  406f26:	62 d2 3d 20 7f d3    	vpermt2ps %ymm11,%ymm24,%ymm2
  406f2c:	c5 f9 93 ce          	kmovb  %k6,%ecx
  406f30:	09 ce                	or     %ecx,%esi
  406f32:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  406f36:	c5 f9 93 cf          	kmovb  %k7,%ecx
  406f3a:	09 ce                	or     %ecx,%esi
  406f3c:	c5 f9 93 c8          	kmovb  %k0,%ecx
  406f40:	62 b1 6c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm2,%k0
  406f47:	c5 d3 58 e8          	vaddsd %xmm0,%xmm5,%xmm5
  406f4b:	09 ce                	or     %ecx,%esi
  406f4d:	c5 f9 92 ce          	kmovb  %esi,%k1
  406f51:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  406f55:	62 f1 7d a9 6f 0d a1 	vmovdqa32 0x45a1(%rip),%ymm1{%k1}{z}        # 40b500 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  406f5c:	45 00 00 
  406f5f:	62 61 2d 20 eb d1    	vpord  %ymm1,%ymm26,%ymm26
  406f65:	c4 e1 f9 7e eb       	vmovq  %xmm5,%rbx
  406f6a:	48 39 c2             	cmp    %rax,%rdx
  406f6d:	0f 85 fa f3 ff ff    	jne    40636d <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x67d>
  406f73:	62 63 7d 28 39 d1 01 	vextracti32x4 $0x1,%ymm26,%xmm1
  406f7a:	62 91 7d 08 6f c2    	vmovdqa32 %xmm26,%xmm0
  406f80:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  406f84:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  406f89:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  406f8d:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  406f92:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  406f96:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  406f9a:	41 09 c5             	or     %eax,%r13d
  406f9d:	48 8d 84 24 40 19 00 	lea    0x1940(%rsp),%rax
  406fa4:	00 
  406fa5:	48 39 c2             	cmp    %rax,%rdx
  406fa8:	0f 85 ab f3 ff ff    	jne    406359 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x669>
  406fae:	c4 e2 78 49 c0       	tilerelease 
  406fb3:	c5 f8 77             	vzeroupper 
  406fb6:	e9 85 ed ff ff       	jmpq   405d40 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x50>
  406fbb:	62 f2 7d 48 18 05 83 	vbroadcastss 0x4583(%rip),%zmm0        # 40b548 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x228>
  406fc2:	45 00 00 
  406fc5:	62 f2 7d 48 18 25 51 	vbroadcastss 0x4551(%rip),%zmm4        # 40b520 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x200>
  406fcc:	45 00 00 
  406fcf:	62 f2 7d 48 18 2d 4b 	vbroadcastss 0x454b(%rip),%zmm5        # 40b524 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x204>
  406fd6:	45 00 00 
  406fd9:	62 f2 7d 48 18 35 45 	vbroadcastss 0x4545(%rip),%zmm6        # 40b528 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x208>
  406fe0:	45 00 00 
  406fe3:	62 f2 7d 48 18 3d 3f 	vbroadcastss 0x453f(%rip),%zmm7        # 40b52c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x20c>
  406fea:	45 00 00 
  406fed:	62 72 7d 48 18 05 39 	vbroadcastss 0x4539(%rip),%zmm8        # 40b530 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x210>
  406ff4:	45 00 00 
  406ff7:	62 72 7d 48 18 0d 33 	vbroadcastss 0x4533(%rip),%zmm9        # 40b534 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x214>
  406ffe:	45 00 00 
  407001:	62 72 7d 48 18 15 2d 	vbroadcastss 0x452d(%rip),%zmm10        # 40b538 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x218>
  407008:	45 00 00 
  40700b:	62 72 7d 48 18 1d 27 	vbroadcastss 0x4527(%rip),%zmm11        # 40b53c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x21c>
  407012:	45 00 00 
  407015:	62 f2 7d 48 18 15 21 	vbroadcastss 0x4521(%rip),%zmm2        # 40b540 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x220>
  40701c:	45 00 00 
  40701f:	62 72 7d 48 18 25 1b 	vbroadcastss 0x451b(%rip),%zmm12        # 40b544 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x224>
  407026:	45 00 00 
  407029:	62 72 7d 48 18 2d d1 	vbroadcastss 0x43d1(%rip),%zmm13        # 40b404 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe4>
  407030:	43 00 00 
  407033:	62 f2 7d 48 18 0d 0f 	vbroadcastss 0x450f(%rip),%zmm1        # 40b54c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x22c>
  40703a:	45 00 00 
  40703d:	62 f1 7c 48 28 d8    	vmovaps %zmm0,%zmm3
  407043:	62 f2 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm3
  407049:	62 72 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm13
  40704f:	62 72 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm12
  407055:	62 f2 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm2
  40705b:	62 72 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm11
  407061:	62 72 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm10
  407067:	62 72 75 48 98 c8    	vfmadd132ps %zmm0,%zmm1,%zmm9
  40706d:	62 72 75 48 98 c0    	vfmadd132ps %zmm0,%zmm1,%zmm8
  407073:	62 f2 75 48 98 f8    	vfmadd132ps %zmm0,%zmm1,%zmm7
  407079:	62 f2 75 48 98 f0    	vfmadd132ps %zmm0,%zmm1,%zmm6
  40707f:	62 f2 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm5
  407085:	62 f2 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm4
  40708b:	ff c8                	dec    %eax
  40708d:	75 b4                	jne    407043 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x1353>
  40708f:	62 f3 fd 48 1b d9 01 	vextractf64x4 $0x1,%zmm3,%ymm1
  407096:	c5 e4 58 c1          	vaddps %ymm1,%ymm3,%ymm0
  40709a:	45 31 ed             	xor    %r13d,%r13d
  40709d:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  4070a3:	c5 f0 58 c8          	vaddps %xmm0,%xmm1,%xmm1
  4070a7:	c4 e3 79 04 c1 4e    	vpermilps $0x4e,%xmm1,%xmm0
  4070ad:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
  4070b1:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
  4070b5:	c5 f8 c6 c0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm0
  4070ba:	c5 f2 58 c8          	vaddss %xmm0,%xmm1,%xmm1
  4070be:	62 73 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm13,%ymm0
  4070c5:	c4 c1 7c 58 c5       	vaddps %ymm13,%ymm0,%ymm0
  4070ca:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4070ce:	c5 f3 58 0d 92 44 00 	vaddsd 0x4492(%rip),%xmm1,%xmm1        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  4070d5:	00 
  4070d6:	c4 e3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm3
  4070dc:	c5 f8 58 c3          	vaddps %xmm3,%xmm0,%xmm0
  4070e0:	c4 e3 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm3
  4070e6:	c5 e0 58 d8          	vaddps %xmm0,%xmm3,%xmm3
  4070ea:	c5 e0 c6 c3 55       	vshufps $0x55,%xmm3,%xmm3,%xmm0
  4070ef:	c5 fa 58 c3          	vaddss %xmm3,%xmm0,%xmm0
  4070f3:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4070f7:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4070fb:	62 73 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm12,%ymm1
  407102:	c4 c1 74 58 cc       	vaddps %ymm12,%ymm1,%ymm1
  407107:	c4 e3 7d 19 cb 01    	vextractf128 $0x1,%ymm1,%xmm3
  40710d:	c5 e0 58 d9          	vaddps %xmm1,%xmm3,%xmm3
  407111:	c4 e3 79 04 cb 4e    	vpermilps $0x4e,%xmm3,%xmm1
  407117:	c5 f0 58 cb          	vaddps %xmm3,%xmm1,%xmm1
  40711b:	c5 f8 28 d9          	vmovaps %xmm1,%xmm3
  40711f:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  407124:	c5 e2 58 d9          	vaddss %xmm1,%xmm3,%xmm3
  407128:	62 f3 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm2,%ymm1
  40712f:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  407133:	c5 e3 58 d8          	vaddsd %xmm0,%xmm3,%xmm3
  407137:	c5 ec 58 c1          	vaddps %ymm1,%ymm2,%ymm0
  40713b:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  407141:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
  407145:	c4 e3 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm1
  40714b:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  40714f:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
  407153:	c5 f8 c6 c0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm0
  407158:	c5 f2 58 c8          	vaddss %xmm0,%xmm1,%xmm1
  40715c:	62 73 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm11,%ymm0
  407163:	c4 c1 7c 58 c3       	vaddps %ymm11,%ymm0,%ymm0
  407168:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40716c:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  407170:	c4 e3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm2
  407176:	c5 e8 58 c0          	vaddps %xmm0,%xmm2,%xmm0
  40717a:	c4 e3 79 04 d0 4e    	vpermilps $0x4e,%xmm0,%xmm2
  407180:	c5 e8 58 d0          	vaddps %xmm0,%xmm2,%xmm2
  407184:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
  407188:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  40718d:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  407191:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  407195:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  407199:	62 73 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm1
  4071a0:	c4 c1 74 58 ca       	vaddps %ymm10,%ymm1,%ymm1
  4071a5:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  4071ab:	c5 e8 58 c9          	vaddps %xmm1,%xmm2,%xmm1
  4071af:	c4 e3 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm2
  4071b5:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  4071b9:	c5 f8 28 ca          	vmovaps %xmm2,%xmm1
  4071bd:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  4071c2:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
  4071c6:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4071ca:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4071ce:	62 73 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm0
  4071d5:	c4 c1 7c 58 c1       	vaddps %ymm9,%ymm0,%ymm0
  4071da:	c4 e3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm2
  4071e0:	c5 e8 58 c0          	vaddps %xmm0,%xmm2,%xmm0
  4071e4:	c4 e3 79 04 d0 4e    	vpermilps $0x4e,%xmm0,%xmm2
  4071ea:	c5 e8 58 d0          	vaddps %xmm0,%xmm2,%xmm2
  4071ee:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
  4071f2:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  4071f7:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  4071fb:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4071ff:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  407203:	62 73 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm8,%ymm1
  40720a:	c4 c1 74 58 c8       	vaddps %ymm8,%ymm1,%ymm1
  40720f:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  407215:	c5 e8 58 c9          	vaddps %xmm1,%xmm2,%xmm1
  407219:	c4 e3 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm2
  40721f:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  407223:	c5 f8 28 ca          	vmovaps %xmm2,%xmm1
  407227:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  40722c:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
  407230:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  407234:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  407238:	62 f3 fd 48 1b f8 01 	vextractf64x4 $0x1,%zmm7,%ymm0
  40723f:	c5 fc 58 c7          	vaddps %ymm7,%ymm0,%ymm0
  407243:	c4 e3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm2
  407249:	c5 e8 58 c0          	vaddps %xmm0,%xmm2,%xmm0
  40724d:	c4 e3 79 04 d0 4e    	vpermilps $0x4e,%xmm0,%xmm2
  407253:	c5 e8 58 d0          	vaddps %xmm0,%xmm2,%xmm2
  407257:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
  40725b:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  407260:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  407264:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  407268:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  40726c:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  407273:	c5 f4 58 ce          	vaddps %ymm6,%ymm1,%ymm1
  407277:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  40727d:	c5 e8 58 c9          	vaddps %xmm1,%xmm2,%xmm1
  407281:	c4 e3 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm2
  407287:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  40728b:	c5 f8 28 ca          	vmovaps %xmm2,%xmm1
  40728f:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  407294:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
  407298:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40729c:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4072a0:	62 f3 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm5,%ymm0
  4072a7:	c5 fc 58 c5          	vaddps %ymm5,%ymm0,%ymm0
  4072ab:	c4 e3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm2
  4072b1:	c5 e8 58 c0          	vaddps %xmm0,%xmm2,%xmm0
  4072b5:	c4 e3 79 04 d0 4e    	vpermilps $0x4e,%xmm0,%xmm2
  4072bb:	c5 e8 58 d0          	vaddps %xmm0,%xmm2,%xmm2
  4072bf:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
  4072c3:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  4072c8:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  4072cc:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4072d0:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4072d4:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  4072db:	c5 f4 58 cc          	vaddps %ymm4,%ymm1,%ymm1
  4072df:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  4072e5:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  4072e9:	c4 e3 79 04 ca 4e    	vpermilps $0x4e,%xmm2,%xmm1
  4072ef:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
  4072f3:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
  4072f7:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  4072fc:	c5 ea 58 c9          	vaddss %xmm1,%xmm2,%xmm1
  407300:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  407304:	c5 f3 58 f8          	vaddsd %xmm0,%xmm1,%xmm7
  407308:	c4 e1 f9 7e fb       	vmovq  %xmm7,%rbx
  40730d:	c5 f8 77             	vzeroupper 
  407310:	e9 2b ea ff ff       	jmpq   405d40 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x50>
  407315:	31 c0                	xor    %eax,%eax
  407317:	ba 12 00 00 00       	mov    $0x12,%edx
  40731c:	be 23 10 00 00       	mov    $0x1023,%esi
  407321:	bf 9e 00 00 00       	mov    $0x9e,%edi
  407326:	e8 25 bd ff ff       	callq  403050 <syscall@plt>
  40732b:	48 85 c0             	test   %rax,%rax
  40732e:	0f 94 c0             	sete   %al
  407331:	64 88 04 25 f8 ff ff 	mov    %al,%fs:0xfffffffffffffff8
  407338:	ff 
  407339:	64 c6 04 25 f0 ff ff 	movb   $0x1,%fs:0xfffffffffffffff0
  407340:	ff 01 
  407342:	e9 e4 e9 ff ff       	jmpq   405d2b <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x3b>
  407347:	90                   	nop
  407348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40734f:	00 

0000000000407350 <_ZZ4mainENKUlvE_clEv>:
  407350:	55                   	push   %rbp
  407351:	53                   	push   %rbx
  407352:	48 89 fb             	mov    %rdi,%rbx
  407355:	48 83 ec 38          	sub    $0x38,%rsp
  407359:	48 8b 07             	mov    (%rdi),%rax
  40735c:	80 38 00             	cmpb   $0x0,(%rax)
  40735f:	0f 85 71 01 00 00    	jne    4074d6 <_ZZ4mainENKUlvE_clEv+0x186>
  407365:	48 8b 47 10          	mov    0x10(%rdi),%rax
  407369:	80 38 00             	cmpb   $0x0,(%rax)
  40736c:	0f 85 98 01 00 00    	jne    40750a <_ZZ4mainENKUlvE_clEv+0x1ba>
  407372:	48 8b 47 38          	mov    0x38(%rdi),%rax
  407376:	0f b6 28             	movzbl (%rax),%ebp
  407379:	40 84 ed             	test   %bpl,%bpl
  40737c:	0f 85 c6 00 00 00    	jne    407448 <_ZZ4mainENKUlvE_clEv+0xf8>
  407382:	48 8d 47 48          	lea    0x48(%rdi),%rax
  407386:	c4 e1 f9 6e df       	vmovq  %rdi,%xmm3
  40738b:	c4 e3 e1 22 c0 01    	vpinsrq $0x1,%rax,%xmm3,%xmm0
  407391:	31 d2                	xor    %edx,%edx
  407393:	48 8d 47 50          	lea    0x50(%rdi),%rax
  407397:	31 c9                	xor    %ecx,%ecx
  407399:	48 89 e6             	mov    %rsp,%rsi
  40739c:	bf f0 5c 40 00       	mov    $0x405cf0,%edi
  4073a1:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  4073a6:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%rsp)
  4073ad:	00 
  4073ae:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
  4073b5:	00 00 
  4073b7:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  4073bc:	e8 bf bf ff ff       	callq  403380 <GOMP_parallel@plt>
  4073c1:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4073c5:	c5 fb 10 4c 24 18    	vmovsd 0x18(%rsp),%xmm1
  4073cb:	48 8b 53 58          	mov    0x58(%rbx),%rdx
  4073cf:	c5 fb 11 0a          	vmovsd %xmm1,(%rdx)
  4073d3:	85 c0                	test   %eax,%eax
  4073d5:	75 1a                	jne    4073f1 <_ZZ4mainENKUlvE_clEv+0xa1>
  4073d7:	c5 f1 54 05 81 41 00 	vandpd 0x4181(%rip),%xmm1,%xmm0        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  4073de:	00 
  4073df:	c5 fb 10 15 91 40 00 	vmovsd 0x4091(%rip),%xmm2        # 40b478 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  4073e6:	00 
  4073e7:	c5 f9 2e d0          	vucomisd %xmm0,%xmm2
  4073eb:	0f 83 08 01 00 00    	jae    4074f9 <_ZZ4mainENKUlvE_clEv+0x1a9>
  4073f1:	48 8b 43 60          	mov    0x60(%rbx),%rax
  4073f5:	48 8b 4b 50          	mov    0x50(%rbx),%rcx
  4073f9:	40 22 28             	and    (%rax),%bpl
  4073fc:	40 88 28             	mov    %bpl,(%rax)
  4073ff:	80 39 00             	cmpb   $0x0,(%rcx)
  407402:	0f 85 92 00 00 00    	jne    40749a <_ZZ4mainENKUlvE_clEv+0x14a>
  407408:	48 8b 53 68          	mov    0x68(%rbx),%rdx
  40740c:	80 3a 00             	cmpb   $0x0,(%rdx)
  40740f:	0f 85 85 00 00 00    	jne    40749a <_ZZ4mainENKUlvE_clEv+0x14a>
  407415:	48 8b 73 48          	mov    0x48(%rbx),%rsi
  407419:	48 8b 43 78          	mov    0x78(%rbx),%rax
  40741d:	ba 01 00 00 00       	mov    $0x1,%edx
  407422:	48 c1 e2 22          	shl    $0x22,%rdx
  407426:	80 3e 00             	cmpb   $0x0,(%rsi)
  407429:	48 63 00             	movslq (%rax),%rax
  40742c:	75 14                	jne    407442 <_ZZ4mainENKUlvE_clEv+0xf2>
  40742e:	80 39 01             	cmpb   $0x1,(%rcx)
  407431:	48 19 d2             	sbb    %rdx,%rdx
  407434:	48 81 e2 00 f0 aa dd 	and    $0xffffffffddaaf000,%rdx
  40743b:	48 81 c2 00 20 aa 44 	add    $0x44aa2000,%rdx
  407442:	48 0f af c2          	imul   %rdx,%rax
  407446:	eb 4b                	jmp    407493 <_ZZ4mainENKUlvE_clEv+0x143>
  407448:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40744c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  407451:	48 8d 47 20          	lea    0x20(%rdi),%rax
  407455:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40745a:	48 8d 47 28          	lea    0x28(%rdi),%rax
  40745e:	48 89 3c 24          	mov    %rdi,(%rsp)
  407462:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  407467:	31 d2                	xor    %edx,%edx
  407469:	48 8d 47 40          	lea    0x40(%rdi),%rax
  40746d:	31 c9                	xor    %ecx,%ecx
  40746f:	48 89 e6             	mov    %rsp,%rsi
  407472:	bf 00 5b 40 00       	mov    $0x405b00,%edi
  407477:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40747c:	e8 ff be ff ff       	callq  403380 <GOMP_parallel@plt>
  407481:	48 8b 43 40          	mov    0x40(%rbx),%rax
  407485:	48 8b 53 18          	mov    0x18(%rbx),%rdx
  407489:	48 63 00             	movslq (%rax),%rax
  40748c:	48 0f af 02          	imul   (%rdx),%rax
  407490:	48 01 c0             	add    %rax,%rax
  407493:	48 83 c4 38          	add    $0x38,%rsp
  407497:	5b                   	pop    %rbx
  407498:	5d                   	pop    %rbp
  407499:	c3                   	retq   
  40749a:	48 8b 53 70          	mov    0x70(%rbx),%rdx
  40749e:	c5 fa 7e 15 ba 40 00 	vmovq  0x40ba(%rip),%xmm2        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  4074a5:	00 
  4074a6:	c5 fb 10 02          	vmovsd (%rdx),%xmm0
  4074aa:	c5 f3 5c c8          	vsubsd %xmm0,%xmm1,%xmm1
  4074ae:	c5 f9 54 c2          	vandpd %xmm2,%xmm0,%xmm0
  4074b2:	c5 f1 54 ca          	vandpd %xmm2,%xmm1,%xmm1
  4074b6:	c5 fb 10 15 b2 3f 00 	vmovsd 0x3fb2(%rip),%xmm2        # 40b470 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  4074bd:	00 
  4074be:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  4074c2:	c5 fb 5f c2          	vmaxsd %xmm2,%xmm0,%xmm0
  4074c6:	c5 f9 2f c1          	vcomisd %xmm1,%xmm0
  4074ca:	0f 97 c2             	seta   %dl
  4074cd:	21 ea                	and    %ebp,%edx
  4074cf:	88 10                	mov    %dl,(%rax)
  4074d1:	e9 3f ff ff ff       	jmpq   407415 <_ZZ4mainENKUlvE_clEv+0xc5>
  4074d6:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  4074da:	b8 00 00 01 00       	mov    $0x10000,%eax
  4074df:	48 8b 11             	mov    (%rcx),%rdx
  4074e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4074e8:	48 8b 12             	mov    (%rdx),%rdx
  4074eb:	48 89 11             	mov    %rdx,(%rcx)
  4074ee:	ff c8                	dec    %eax
  4074f0:	75 f6                	jne    4074e8 <_ZZ4mainENKUlvE_clEv+0x198>
  4074f2:	b8 00 00 01 00       	mov    $0x10000,%eax
  4074f7:	eb 9a                	jmp    407493 <_ZZ4mainENKUlvE_clEv+0x143>
  4074f9:	c5 f9 2f 0d 67 40 00 	vcomisd 0x4067(%rip),%xmm1        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  407500:	00 
  407501:	40 0f 97 c5          	seta   %bpl
  407505:	e9 e7 fe ff ff       	jmpq   4073f1 <_ZZ4mainENKUlvE_clEv+0xa1>
  40750a:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40750e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  407513:	48 8d 47 20          	lea    0x20(%rdi),%rax
  407517:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40751c:	48 8d 47 28          	lea    0x28(%rdi),%rax
  407520:	48 89 3c 24          	mov    %rdi,(%rsp)
  407524:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  407529:	31 c9                	xor    %ecx,%ecx
  40752b:	48 8d 47 30          	lea    0x30(%rdi),%rax
  40752f:	31 d2                	xor    %edx,%edx
  407531:	48 89 e6             	mov    %rsp,%rsi
  407534:	bf 30 59 40 00       	mov    $0x405930,%edi
  407539:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40753e:	e8 3d be ff ff       	callq  403380 <GOMP_parallel@plt>
  407543:	48 8b 43 18          	mov    0x18(%rbx),%rax
  407547:	48 8b 00             	mov    (%rax),%rax
  40754a:	48 01 c0             	add    %rax,%rax
  40754d:	e9 41 ff ff ff       	jmpq   407493 <_ZZ4mainENKUlvE_clEv+0x143>
  407552:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  407559:	00 00 00 00 
  40755d:	0f 1f 00             	nopl   (%rax)

0000000000407560 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>:
  407560:	41 55                	push   %r13
  407562:	41 54                	push   %r12
  407564:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  407568:	55                   	push   %rbp
  407569:	53                   	push   %rbx
  40756a:	48 83 ec 18          	sub    $0x18,%rsp
  40756e:	4c 89 27             	mov    %r12,(%rdi)
  407571:	48 85 f6             	test   %rsi,%rsi
  407574:	0f 84 8c 00 00 00    	je     407606 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0xa6>
  40757a:	48 89 fb             	mov    %rdi,%rbx
  40757d:	48 89 f7             	mov    %rsi,%rdi
  407580:	48 89 f5             	mov    %rsi,%rbp
  407583:	e8 b8 bb ff ff       	callq  403140 <strlen@plt>
  407588:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40758d:	49 89 c5             	mov    %rax,%r13
  407590:	48 83 f8 0f          	cmp    $0xf,%rax
  407594:	77 3a                	ja     4075d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x70>
  407596:	48 83 f8 01          	cmp    $0x1,%rax
  40759a:	75 24                	jne    4075c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x60>
  40759c:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
  4075a0:	88 53 10             	mov    %dl,0x10(%rbx)
  4075a3:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4075a7:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
  4075ac:	48 83 c4 18          	add    $0x18,%rsp
  4075b0:	5b                   	pop    %rbx
  4075b1:	5d                   	pop    %rbp
  4075b2:	41 5c                	pop    %r12
  4075b4:	41 5d                	pop    %r13
  4075b6:	c3                   	retq   
  4075b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4075be:	00 00 
  4075c0:	48 85 c0             	test   %rax,%rax
  4075c3:	74 de                	je     4075a3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  4075c5:	eb 27                	jmp    4075ee <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x8e>
  4075c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4075ce:	00 00 
  4075d0:	31 d2                	xor    %edx,%edx
  4075d2:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  4075d7:	48 89 df             	mov    %rbx,%rdi
  4075da:	e8 61 be ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4075df:	48 89 03             	mov    %rax,(%rbx)
  4075e2:	49 89 c4             	mov    %rax,%r12
  4075e5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4075ea:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4075ee:	4c 89 e7             	mov    %r12,%rdi
  4075f1:	4c 89 ea             	mov    %r13,%rdx
  4075f4:	48 89 ee             	mov    %rbp,%rsi
  4075f7:	e8 54 bc ff ff       	callq  403250 <memcpy@plt>
  4075fc:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  407601:	4c 8b 23             	mov    (%rbx),%r12
  407604:	eb 9d                	jmp    4075a3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  407606:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  40760b:	e8 e0 bb ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>

0000000000407610 <_Z8clock_nsv>:
  407610:	48 83 ec 18          	sub    $0x18,%rsp
  407614:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  407618:	48 89 e6             	mov    %rsp,%rsi
  40761b:	bf 01 00 00 00       	mov    $0x1,%edi
  407620:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  407625:	e8 56 bc ff ff       	callq  403280 <clock_gettime@plt>
  40762a:	48 69 04 24 00 ca 9a 	imul   $0x3b9aca00,(%rsp),%rax
  407631:	3b 
  407632:	48 03 44 24 08       	add    0x8(%rsp),%rax
  407637:	48 83 c4 18          	add    $0x18,%rsp
  40763b:	c3                   	retq   
  40763c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000407640 <_Z6windowid>:
  407640:	55                   	push   %rbp
  407641:	48 89 e5             	mov    %rsp,%rbp
  407644:	41 57                	push   %r15
  407646:	41 56                	push   %r14
  407648:	41 55                	push   %r13
  40764a:	41 54                	push   %r12
  40764c:	41 89 fc             	mov    %edi,%r12d
  40764f:	bf 64 b0 40 00       	mov    $0x40b064,%edi
  407654:	53                   	push   %rbx
  407655:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  407659:	48 81 ec a0 03 00 00 	sub    $0x3a0,%rsp
  407660:	e8 ab bc ff ff       	callq  403310 <getenv@plt>
  407665:	48 85 c0             	test   %rax,%rax
  407668:	0f 84 0f 1c 00 00    	je     40927d <_Z6windowid+0x1c3d>
  40766e:	48 89 c7             	mov    %rax,%rdi
  407671:	49 89 c5             	mov    %rax,%r13
  407674:	e8 c7 ba ff ff       	callq  403140 <strlen@plt>
  407679:	48 8d 8c 24 00 01 00 	lea    0x100(%rsp),%rcx
  407680:	00 
  407681:	48 89 8c 24 f0 00 00 	mov    %rcx,0xf0(%rsp)
  407688:	00 
  407689:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  407690:	00 
  407691:	49 89 c6             	mov    %rax,%r14
  407694:	48 83 f8 0f          	cmp    $0xf,%rax
  407698:	0f 87 92 01 00 00    	ja     407830 <_Z6windowid+0x1f0>
  40769e:	48 83 f8 01          	cmp    $0x1,%rax
  4076a2:	0f 85 6a 1d 00 00    	jne    409412 <_Z6windowid+0x1dd2>
  4076a8:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  4076ad:	88 94 24 00 01 00 00 	mov    %dl,0x100(%rsp)
  4076b4:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  4076bb:	00 
  4076bc:	48 89 84 24 f8 00 00 	mov    %rax,0xf8(%rsp)
  4076c3:	00 
  4076c4:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4076c8:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  4076cf:	00 
  4076d0:	e8 db b9 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  4076d5:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  4076dc:	00 
  4076dd:	e8 5e bb ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  4076e2:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  4076e9:	00 
  4076ea:	e8 d1 ba ff ff       	callq  4031c0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@plt>
  4076ef:	bf 75 b0 40 00       	mov    $0x40b075,%edi
  4076f4:	e8 17 bc ff ff       	callq  403310 <getenv@plt>
  4076f9:	49 89 c5             	mov    %rax,%r13
  4076fc:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  407703:	00 
  407704:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40770b:	00 
  40770c:	4d 85 ed             	test   %r13,%r13
  40770f:	0f 84 61 20 00 00    	je     409776 <_Z6windowid+0x2136>
  407715:	4c 89 ef             	mov    %r13,%rdi
  407718:	e8 23 ba ff ff       	callq  403140 <strlen@plt>
  40771d:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  407724:	00 
  407725:	49 89 c6             	mov    %rax,%r14
  407728:	48 83 f8 0f          	cmp    $0xf,%rax
  40772c:	0f 87 86 1c 00 00    	ja     4093b8 <_Z6windowid+0x1d78>
  407732:	48 83 f8 01          	cmp    $0x1,%rax
  407736:	0f 85 59 1c 00 00    	jne    409395 <_Z6windowid+0x1d55>
  40773c:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  407743:	00 
  407744:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  407749:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  40774e:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  407755:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40775c:	00 
  40775d:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  407764:	00 
  407765:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  407769:	e8 d2 b8 ff ff       	callq  403040 <__errno_location@plt>
  40776e:	48 8b 9c 24 80 01 00 	mov    0x180(%rsp),%rbx
  407775:	00 
  407776:	44 8b 28             	mov    (%rax),%r13d
  407779:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40777f:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  407784:	ba 0a 00 00 00       	mov    $0xa,%edx
  407789:	48 89 df             	mov    %rbx,%rdi
  40778c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  407791:	e8 aa bb ff ff       	callq  403340 <strtol@plt>
  407796:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  40779b:	48 3b 9c 24 50 01 00 	cmp    0x150(%rsp),%rbx
  4077a2:	00 
  4077a3:	0f 84 d7 1f 00 00    	je     409780 <_Z6windowid+0x2140>
  4077a9:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  4077ae:	8b 10                	mov    (%rax),%edx
  4077b0:	83 fa 22             	cmp    $0x22,%edx
  4077b3:	0f 84 d1 1f 00 00    	je     40978a <_Z6windowid+0x214a>
  4077b9:	b8 00 00 00 80       	mov    $0x80000000,%eax
  4077be:	48 03 44 24 48       	add    0x48(%rsp),%rax
  4077c3:	48 c1 e8 20          	shr    $0x20,%rax
  4077c7:	0f 85 bd 1f 00 00    	jne    40978a <_Z6windowid+0x214a>
  4077cd:	85 d2                	test   %edx,%edx
  4077cf:	75 08                	jne    4077d9 <_Z6windowid+0x199>
  4077d1:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  4077d6:	44 89 28             	mov    %r13d,(%rax)
  4077d9:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  4077e0:	00 
  4077e1:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4077e8:	00 
  4077e9:	48 39 c7             	cmp    %rax,%rdi
  4077ec:	74 11                	je     4077ff <_Z6windowid+0x1bf>
  4077ee:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  4077f5:	00 
  4077f6:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4077fa:	e8 b1 ba ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4077ff:	bf ee b0 40 00       	mov    $0x40b0ee,%edi
  407804:	e8 07 bb ff ff       	callq  403310 <getenv@plt>
  407809:	49 89 c5             	mov    %rax,%r13
  40780c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  407813:	00 
  407814:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40781b:	00 
  40781c:	4d 85 ed             	test   %r13,%r13
  40781f:	75 61                	jne    407882 <_Z6windowid+0x242>
  407821:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  407826:	e8 c5 b9 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40782b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407830:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  407837:	00 
  407838:	31 d2                	xor    %edx,%edx
  40783a:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  407841:	00 
  407842:	e8 f9 bb ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  407847:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
  40784e:	00 
  40784f:	48 89 c7             	mov    %rax,%rdi
  407852:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  407859:	00 
  40785a:	48 89 84 24 00 01 00 	mov    %rax,0x100(%rsp)
  407861:	00 
  407862:	4c 89 f2             	mov    %r14,%rdx
  407865:	4c 89 ee             	mov    %r13,%rsi
  407868:	e8 e3 b9 ff ff       	callq  403250 <memcpy@plt>
  40786d:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  407874:	00 
  407875:	48 8b 94 24 f0 00 00 	mov    0xf0(%rsp),%rdx
  40787c:	00 
  40787d:	e9 3a fe ff ff       	jmpq   4076bc <_Z6windowid+0x7c>
  407882:	4c 89 ef             	mov    %r13,%rdi
  407885:	e8 b6 b8 ff ff       	callq  403140 <strlen@plt>
  40788a:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  407891:	00 
  407892:	49 89 c6             	mov    %rax,%r14
  407895:	48 83 f8 0f          	cmp    $0xf,%rax
  407899:	0f 87 91 1a 00 00    	ja     409330 <_Z6windowid+0x1cf0>
  40789f:	48 83 f8 01          	cmp    $0x1,%rax
  4078a3:	0f 85 d6 1a 00 00    	jne    40937f <_Z6windowid+0x1d3f>
  4078a9:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  4078ae:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  4078b5:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  4078bc:	00 
  4078bd:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  4078c4:	00 
  4078c5:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4078c9:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  4078ce:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  4078d3:	4c 8b ac 24 80 01 00 	mov    0x180(%rsp),%r13
  4078da:	00 
  4078db:	8b 18                	mov    (%rax),%ebx
  4078dd:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4078e3:	ba 0a 00 00 00       	mov    $0xa,%edx
  4078e8:	4c 89 ef             	mov    %r13,%rdi
  4078eb:	e8 50 ba ff ff       	callq  403340 <strtol@plt>
  4078f0:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4078f5:	4c 3b ac 24 50 01 00 	cmp    0x150(%rsp),%r13
  4078fc:	00 
  4078fd:	0f 84 7d 1f 00 00    	je     409880 <_Z6windowid+0x2240>
  407903:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  407908:	8b 10                	mov    (%rax),%edx
  40790a:	83 fa 22             	cmp    $0x22,%edx
  40790d:	0f 84 30 1e 00 00    	je     409743 <_Z6windowid+0x2103>
  407913:	b8 00 00 00 80       	mov    $0x80000000,%eax
  407918:	48 03 44 24 28       	add    0x28(%rsp),%rax
  40791d:	48 c1 e8 20          	shr    $0x20,%rax
  407921:	0f 85 1c 1e 00 00    	jne    409743 <_Z6windowid+0x2103>
  407927:	85 d2                	test   %edx,%edx
  407929:	75 07                	jne    407932 <_Z6windowid+0x2f2>
  40792b:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  407930:	89 18                	mov    %ebx,(%rax)
  407932:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  407939:	00 
  40793a:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  407941:	00 
  407942:	48 39 c7             	cmp    %rax,%rdi
  407945:	74 11                	je     407958 <_Z6windowid+0x318>
  407947:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40794e:	00 
  40794f:	48 8d 70 01          	lea    0x1(%rax),%rsi
  407953:	e8 58 b9 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  407958:	44 89 e0             	mov    %r12d,%eax
  40795b:	c1 f8 1f             	sar    $0x1f,%eax
  40795e:	45 89 e5             	mov    %r12d,%r13d
  407961:	41 31 c4             	xor    %eax,%r12d
  407964:	41 29 c4             	sub    %eax,%r12d
  407967:	41 c1 ed 1f          	shr    $0x1f,%r13d
  40796b:	41 83 fc 09          	cmp    $0x9,%r12d
  40796f:	0f 86 88 1d 00 00    	jbe    4096fd <_Z6windowid+0x20bd>
  407975:	41 83 fc 63          	cmp    $0x63,%r12d
  407979:	0f 86 88 1d 00 00    	jbe    409707 <_Z6windowid+0x20c7>
  40797f:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  407986:	0f 86 85 1d 00 00    	jbe    409711 <_Z6windowid+0x20d1>
  40798c:	44 89 e2             	mov    %r12d,%edx
  40798f:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  407996:	0f 86 7f 1d 00 00    	jbe    40971b <_Z6windowid+0x20db>
  40799c:	bb 01 00 00 00       	mov    $0x1,%ebx
  4079a1:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  4079a8:	c5 6d 34 
  4079ab:	eb 24                	jmp    4079d1 <_Z6windowid+0x391>
  4079ad:	0f 1f 00             	nopl   (%rax)
  4079b0:	83 fa 63             	cmp    $0x63,%edx
  4079b3:	0f 86 44 1c 00 00    	jbe    4095fd <_Z6windowid+0x1fbd>
  4079b9:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  4079bf:	0f 86 30 1c 00 00    	jbe    4095f5 <_Z6windowid+0x1fb5>
  4079c5:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  4079cb:	0f 86 34 1c 00 00    	jbe    409605 <_Z6windowid+0x1fc5>
  4079d1:	48 89 d0             	mov    %rdx,%rax
  4079d4:	48 89 d1             	mov    %rdx,%rcx
  4079d7:	48 f7 e6             	mul    %rsi
  4079da:	89 d8                	mov    %ebx,%eax
  4079dc:	83 c3 04             	add    $0x4,%ebx
  4079df:	48 c1 ea 0b          	shr    $0xb,%rdx
  4079e3:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  4079ea:	77 c4                	ja     4079b0 <_Z6windowid+0x370>
  4079ec:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4079f3:	00 
  4079f4:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  4079f9:	ba 2d 00 00 00       	mov    $0x2d,%edx
  4079fe:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  407a05:	00 
  407a06:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  407a0d:	00 
  407a0e:	e8 dd b8 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  407a13:	45 0f b6 ed          	movzbl %r13b,%r13d
  407a17:	4c 03 ac 24 80 01 00 	add    0x180(%rsp),%r13
  407a1e:	00 
  407a1f:	ff cb                	dec    %ebx
  407a21:	41 83 fc 63          	cmp    $0x63,%r12d
  407a25:	76 52                	jbe    407a79 <_Z6windowid+0x439>
  407a27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  407a2e:	00 00 
  407a30:	44 89 e2             	mov    %r12d,%edx
  407a33:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  407a3a:	44 89 e0             	mov    %r12d,%eax
  407a3d:	48 c1 ea 25          	shr    $0x25,%rdx
  407a41:	6b ca 64             	imul   $0x64,%edx,%ecx
  407a44:	29 c8                	sub    %ecx,%eax
  407a46:	01 c0                	add    %eax,%eax
  407a48:	8d 70 01             	lea    0x1(%rax),%esi
  407a4b:	0f b6 b6 20 b3 40 00 	movzbl 0x40b320(%rsi),%esi
  407a52:	0f b6 80 20 b3 40 00 	movzbl 0x40b320(%rax),%eax
  407a59:	44 89 e1             	mov    %r12d,%ecx
  407a5c:	41 89 d4             	mov    %edx,%r12d
  407a5f:	89 da                	mov    %ebx,%edx
  407a61:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  407a66:	8d 53 ff             	lea    -0x1(%rbx),%edx
  407a69:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  407a6e:	83 eb 02             	sub    $0x2,%ebx
  407a71:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  407a77:	77 b7                	ja     407a30 <_Z6windowid+0x3f0>
  407a79:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  407a7e:	41 83 fc 09          	cmp    $0x9,%r12d
  407a82:	76 1c                	jbe    407aa0 <_Z6windowid+0x460>
  407a84:	45 01 e4             	add    %r12d,%r12d
  407a87:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  407a8c:	0f b6 80 20 b3 40 00 	movzbl 0x40b320(%rax),%eax
  407a93:	41 88 45 01          	mov    %al,0x1(%r13)
  407a97:	41 0f b6 84 24 20 b3 	movzbl 0x40b320(%r12),%eax
  407a9e:	40 00 
  407aa0:	41 88 45 00          	mov    %al,0x0(%r13)
  407aa4:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  407aaa:	b9 8e b0 40 00       	mov    $0x40b08e,%ecx
  407aaf:	31 d2                	xor    %edx,%edx
  407ab1:	31 f6                	xor    %esi,%esi
  407ab3:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  407aba:	00 
  407abb:	e8 e0 b8 ff ff       	callq  4033a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  407ac0:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
  407ac7:	00 
  407ac8:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  407acd:	48 8d 50 10          	lea    0x10(%rax),%rdx
  407ad1:	48 8b 08             	mov    (%rax),%rcx
  407ad4:	48 39 d1             	cmp    %rdx,%rcx
  407ad7:	0f 84 a1 1a 00 00    	je     40957e <_Z6windowid+0x1f3e>
  407add:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  407ae2:	48 8b 48 10          	mov    0x10(%rax),%rcx
  407ae6:	48 89 8c 24 80 00 00 	mov    %rcx,0x80(%rsp)
  407aed:	00 
  407aee:	48 8b 48 08          	mov    0x8(%rax),%rcx
  407af2:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  407af6:	48 89 4c 24 78       	mov    %rcx,0x78(%rsp)
  407afb:	48 89 10             	mov    %rdx,(%rax)
  407afe:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  407b05:	00 
  407b06:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  407b0d:	00 
  407b0e:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  407b15:	00 
  407b16:	48 39 c7             	cmp    %rax,%rdi
  407b19:	74 11                	je     407b2c <_Z6windowid+0x4ec>
  407b1b:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  407b22:	00 
  407b23:	48 8d 70 01          	lea    0x1(%rax),%rsi
  407b27:	e8 84 b7 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  407b2c:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
  407b31:	41 89 c5             	mov    %eax,%r13d
  407b34:	41 89 c4             	mov    %eax,%r12d
  407b37:	41 f7 dc             	neg    %r12d
  407b3a:	41 c1 ed 1f          	shr    $0x1f,%r13d
  407b3e:	48 85 c0             	test   %rax,%rax
  407b41:	44 0f 49 e0          	cmovns %eax,%r12d
  407b45:	41 83 fc 09          	cmp    $0x9,%r12d
  407b49:	0f 86 ea 1b 00 00    	jbe    409739 <_Z6windowid+0x20f9>
  407b4f:	41 83 fc 63          	cmp    $0x63,%r12d
  407b53:	0f 86 9a 1b 00 00    	jbe    4096f3 <_Z6windowid+0x20b3>
  407b59:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  407b60:	0f 86 bf 1b 00 00    	jbe    409725 <_Z6windowid+0x20e5>
  407b66:	44 89 e2             	mov    %r12d,%edx
  407b69:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  407b70:	0f 86 b9 1b 00 00    	jbe    40972f <_Z6windowid+0x20ef>
  407b76:	bb 01 00 00 00       	mov    $0x1,%ebx
  407b7b:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  407b82:	c5 6d 34 
  407b85:	eb 2a                	jmp    407bb1 <_Z6windowid+0x571>
  407b87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  407b8e:	00 00 
  407b90:	83 fa 63             	cmp    $0x63,%edx
  407b93:	0f 86 54 1a 00 00    	jbe    4095ed <_Z6windowid+0x1fad>
  407b99:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  407b9f:	0f 86 40 1a 00 00    	jbe    4095e5 <_Z6windowid+0x1fa5>
  407ba5:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  407bab:	0f 86 5c 1a 00 00    	jbe    40960d <_Z6windowid+0x1fcd>
  407bb1:	48 89 d0             	mov    %rdx,%rax
  407bb4:	48 89 d1             	mov    %rdx,%rcx
  407bb7:	48 f7 e6             	mul    %rsi
  407bba:	89 d8                	mov    %ebx,%eax
  407bbc:	83 c3 04             	add    $0x4,%ebx
  407bbf:	48 c1 ea 0b          	shr    $0xb,%rdx
  407bc3:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  407bca:	77 c4                	ja     407b90 <_Z6windowid+0x550>
  407bcc:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  407bd3:	00 
  407bd4:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  407bd9:	ba 2d 00 00 00       	mov    $0x2d,%edx
  407bde:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  407be5:	00 
  407be6:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  407bed:	00 
  407bee:	e8 fd b6 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  407bf3:	45 0f b6 ed          	movzbl %r13b,%r13d
  407bf7:	4c 03 ac 24 b0 00 00 	add    0xb0(%rsp),%r13
  407bfe:	00 
  407bff:	ff cb                	dec    %ebx
  407c01:	41 83 fc 63          	cmp    $0x63,%r12d
  407c05:	76 52                	jbe    407c59 <_Z6windowid+0x619>
  407c07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  407c0e:	00 00 
  407c10:	44 89 e2             	mov    %r12d,%edx
  407c13:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  407c1a:	44 89 e0             	mov    %r12d,%eax
  407c1d:	48 c1 ea 25          	shr    $0x25,%rdx
  407c21:	6b ca 64             	imul   $0x64,%edx,%ecx
  407c24:	29 c8                	sub    %ecx,%eax
  407c26:	01 c0                	add    %eax,%eax
  407c28:	8d 70 01             	lea    0x1(%rax),%esi
  407c2b:	0f b6 b6 20 b3 40 00 	movzbl 0x40b320(%rsi),%esi
  407c32:	0f b6 80 20 b3 40 00 	movzbl 0x40b320(%rax),%eax
  407c39:	44 89 e1             	mov    %r12d,%ecx
  407c3c:	41 89 d4             	mov    %edx,%r12d
  407c3f:	89 da                	mov    %ebx,%edx
  407c41:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  407c46:	8d 53 ff             	lea    -0x1(%rbx),%edx
  407c49:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  407c4e:	83 eb 02             	sub    $0x2,%ebx
  407c51:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  407c57:	77 b7                	ja     407c10 <_Z6windowid+0x5d0>
  407c59:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  407c5e:	41 83 fc 09          	cmp    $0x9,%r12d
  407c62:	76 1c                	jbe    407c80 <_Z6windowid+0x640>
  407c64:	45 01 e4             	add    %r12d,%r12d
  407c67:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  407c6c:	0f b6 80 20 b3 40 00 	movzbl 0x40b320(%rax),%eax
  407c73:	41 88 45 01          	mov    %al,0x1(%r13)
  407c77:	41 0f b6 84 24 20 b3 	movzbl 0x40b320(%r12),%eax
  407c7e:	40 00 
  407c80:	41 88 45 00          	mov    %al,0x0(%r13)
  407c84:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  407c8b:	00 
  407c8c:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  407c93:	00 
  407c94:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  407c99:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  407c9e:	4c 89 e8             	mov    %r13,%rax
  407ca1:	4c 01 e0             	add    %r12,%rax
  407ca4:	74 09                	je     407caf <_Z6windowid+0x66f>
  407ca6:	4d 85 ed             	test   %r13,%r13
  407ca9:	0f 84 db 1b 00 00    	je     40988a <_Z6windowid+0x224a>
  407caf:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  407cb6:	00 
  407cb7:	49 83 fc 0f          	cmp    $0xf,%r12
  407cbb:	0f 87 31 18 00 00    	ja     4094f2 <_Z6windowid+0x1eb2>
  407cc1:	49 83 fc 01          	cmp    $0x1,%r12
  407cc5:	0f 85 11 18 00 00    	jne    4094dc <_Z6windowid+0x1e9c>
  407ccb:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  407cd0:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  407cd7:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  407cde:	00 
  407cdf:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  407ce6:	00 
  407ce7:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  407cec:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  407cf3:	ff ff 3f 
  407cf6:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  407cfd:	00 
  407cfe:	48 83 f8 05          	cmp    $0x5,%rax
  407d02:	0f 86 5a 1b 00 00    	jbe    409862 <_Z6windowid+0x2222>
  407d08:	ba 06 00 00 00       	mov    $0x6,%edx
  407d0d:	be a7 b0 40 00       	mov    $0x40b0a7,%esi
  407d12:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  407d19:	00 
  407d1a:	e8 d1 b3 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  407d1f:	4c 8b 8c 24 90 00 00 	mov    0x90(%rsp),%r9
  407d26:	00 
  407d27:	b8 0f 00 00 00       	mov    $0xf,%eax
  407d2c:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  407d33:	00 
  407d34:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  407d3b:	00 
  407d3c:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  407d43:	00 
  407d44:	49 39 d9             	cmp    %rbx,%r9
  407d47:	48 89 c7             	mov    %rax,%rdi
  407d4a:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  407d51:	00 00 
  407d53:	49 8d 0c 10          	lea    (%r8,%rdx,1),%rcx
  407d57:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  407d5e:	00 
  407d5f:	48 39 f9             	cmp    %rdi,%rcx
  407d62:	76 1d                	jbe    407d81 <_Z6windowid+0x741>
  407d64:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  407d6b:	00 
  407d6c:	48 39 de             	cmp    %rbx,%rsi
  407d6f:	48 0f 45 84 24 c0 00 	cmovne 0xc0(%rsp),%rax
  407d76:	00 00 
  407d78:	48 39 c1             	cmp    %rax,%rcx
  407d7b:	0f 86 4b 18 00 00    	jbe    4095cc <_Z6windowid+0x1f8c>
  407d81:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  407d88:	00 
  407d89:	e8 62 b3 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  407d8e:	4c 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%r15
  407d95:	00 
  407d96:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  407d9d:	00 
  407d9e:	48 8d 50 10          	lea    0x10(%rax),%rdx
  407da2:	48 8b 08             	mov    (%rax),%rcx
  407da5:	48 39 d1             	cmp    %rdx,%rcx
  407da8:	0f 84 bd 17 00 00    	je     40956b <_Z6windowid+0x1f2b>
  407dae:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  407db5:	00 
  407db6:	48 8b 48 10          	mov    0x10(%rax),%rcx
  407dba:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  407dc1:	00 
  407dc2:	48 8b 48 08          	mov    0x8(%rax),%rcx
  407dc6:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  407dcd:	00 
  407dce:	48 89 10             	mov    %rdx,(%rax)
  407dd1:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  407dd5:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  407ddc:	00 
  407ddd:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  407de4:	00 
  407de5:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  407dec:	00 
  407ded:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  407df4:	00 
  407df5:	4c 39 f8             	cmp    %r15,%rax
  407df8:	0f 84 56 17 00 00    	je     409554 <_Z6windowid+0x1f14>
  407dfe:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  407e05:	00 
  407e06:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  407e0d:	00 
  407e0e:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  407e15:	00 
  407e16:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  407e1d:	00 
  407e1e:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  407e25:	00 
  407e26:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
  407e2d:	00 
  407e2e:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  407e35:	00 
  407e36:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  407e3d:	00 00 00 00 00 
  407e42:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  407e49:	00 
  407e4a:	e8 61 b2 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  407e4f:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  407e56:	00 
  407e57:	e8 e4 b3 ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  407e5c:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  407e63:	00 
  407e64:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  407e6b:	00 
  407e6c:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  407e73:	00 
  407e74:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  407e7b:	00 
  407e7c:	4c 89 e8             	mov    %r13,%rax
  407e7f:	4c 01 e0             	add    %r12,%rax
  407e82:	74 09                	je     407e8d <_Z6windowid+0x84d>
  407e84:	4d 85 ed             	test   %r13,%r13
  407e87:	0f 84 e9 19 00 00    	je     409876 <_Z6windowid+0x2236>
  407e8d:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  407e94:	00 
  407e95:	49 83 fc 0f          	cmp    $0xf,%r12
  407e99:	0f 87 ee 15 00 00    	ja     40948d <_Z6windowid+0x1e4d>
  407e9f:	49 83 fc 01          	cmp    $0x1,%r12
  407ea3:	0f 85 ce 15 00 00    	jne    409477 <_Z6windowid+0x1e37>
  407ea9:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  407eae:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  407eb5:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  407ebc:	00 
  407ebd:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  407ec4:	00 
  407ec5:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  407eca:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  407ed1:	00 
  407ed2:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  407ed9:	00 
  407eda:	e8 a1 b5 ff ff       	callq  403480 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  407edf:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  407ee4:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  407eeb:	00 
  407eec:	e8 8f b1 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  407ef1:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  407ef8:	00 
  407ef9:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  407f00:	00 
  407f01:	e8 ca b1 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  407f06:	31 c9                	xor    %ecx,%ecx
  407f08:	66 89 8c 24 58 03 00 	mov    %cx,0x358(%rsp)
  407f0f:	00 
  407f10:	48 8b 05 11 5d 00 00 	mov    0x5d11(%rip),%rax        # 40dc28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  407f17:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  407f1b:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  407f22:	00 00 
  407f24:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  407f2b:	00 
  407f2c:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  407f33:	00 
  407f34:	48 03 78 e8          	add    -0x18(%rax),%rdi
  407f38:	48 8b 05 f1 5c 00 00 	mov    0x5cf1(%rip),%rax        # 40dc30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  407f3f:	31 f6                	xor    %esi,%esi
  407f41:	48 c7 84 24 78 02 00 	movq   $0x40db90,0x278(%rsp)
  407f48:	00 90 db 40 00 
  407f4d:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  407f54:	00 00 00 00 00 
  407f59:	48 89 07             	mov    %rax,(%rdi)
  407f5c:	c5 f8 77             	vzeroupper 
  407f5f:	e8 cc b3 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  407f64:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  407f6b:	00 
  407f6c:	48 c7 84 24 80 01 00 	movq   $0x40dd28,0x180(%rsp)
  407f73:	00 28 dd 40 00 
  407f78:	48 c7 84 24 78 02 00 	movq   $0x40dd50,0x278(%rsp)
  407f7f:	00 50 dd 40 00 
  407f84:	e8 47 b3 ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  407f89:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  407f90:	00 
  407f91:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  407f98:	00 
  407f99:	e8 92 b3 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  407f9e:	ba 10 00 00 00       	mov    $0x10,%edx
  407fa3:	4c 89 e6             	mov    %r12,%rsi
  407fa6:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  407fad:	00 
  407fae:	e8 bd b2 ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  407fb3:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  407fba:	00 
  407fbb:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  407fc2:	00 
  407fc3:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  407fc7:	48 85 c0             	test   %rax,%rax
  407fca:	0f 84 74 15 00 00    	je     409544 <_Z6windowid+0x1f04>
  407fd0:	31 f6                	xor    %esi,%esi
  407fd2:	e8 29 b4 ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  407fd7:	ba 28 dd 40 00       	mov    $0x40dd28,%edx
  407fdc:	b8 a0 dc 40 00       	mov    $0x40dca0,%eax
  407fe1:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
  407fe6:	c4 e3 e9 22 c8 01    	vpinsrq $0x1,%rax,%xmm2,%xmm1
  407fec:	be 31 00 00 00       	mov    $0x31,%esi
  407ff1:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  407ff8:	00 
  407ff9:	c5 f9 7f 4c 24 10    	vmovdqa %xmm1,0x10(%rsp)
  407fff:	e8 2c b0 ff ff       	callq  403030 <_ZNSo3putEc@plt>
  408004:	c5 f9 6f 74 24 10    	vmovdqa 0x10(%rsp),%xmm6
  40800a:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  408011:	00 
  408012:	48 c7 84 24 78 02 00 	movq   $0x40dd50,0x278(%rsp)
  408019:	00 50 dd 40 00 
  40801e:	c5 f9 7f b4 24 80 01 	vmovdqa %xmm6,0x180(%rsp)
  408025:	00 00 
  408027:	e8 44 b0 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40802c:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  408033:	00 
  408034:	e8 27 b4 ff ff       	callq  403460 <_ZNSt12__basic_fileIcED1Ev@plt>
  408039:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  408040:	00 
  408041:	48 c7 84 24 88 01 00 	movq   $0x40dbb0,0x188(%rsp)
  408048:	00 b0 db 40 00 
  40804d:	e8 fe b2 ff ff       	callq  403350 <_ZNSt6localeD1Ev@plt>
  408052:	48 8b 05 cf 5b 00 00 	mov    0x5bcf(%rip),%rax        # 40dc28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  408059:	48 8b 0d d0 5b 00 00 	mov    0x5bd0(%rip),%rcx        # 40dc30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  408060:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408067:	00 
  408068:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40806c:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  408073:	00 
  408074:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  40807b:	00 
  40807c:	48 c7 84 24 78 02 00 	movq   $0x40db90,0x278(%rsp)
  408083:	00 90 db 40 00 
  408088:	e8 73 b0 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40808d:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  408094:	00 
  408095:	48 85 f6             	test   %rsi,%rsi
  408098:	74 0d                	je     4080a7 <_Z6windowid+0xa67>
  40809a:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  4080a1:	00 
  4080a2:	e8 f9 af ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  4080a7:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  4080ae:	00 
  4080af:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  4080b6:	00 
  4080b7:	48 39 c7             	cmp    %rax,%rdi
  4080ba:	74 11                	je     4080cd <_Z6windowid+0xa8d>
  4080bc:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  4080c3:	00 
  4080c4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4080c8:	e8 e3 b1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4080cd:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  4080d4:	00 
  4080d5:	48 85 f6             	test   %rsi,%rsi
  4080d8:	74 0d                	je     4080e7 <_Z6windowid+0xaa7>
  4080da:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  4080e1:	00 
  4080e2:	e8 b9 af ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  4080e7:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  4080ee:	00 
  4080ef:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4080f6:	00 
  4080f7:	48 39 c7             	cmp    %rax,%rdi
  4080fa:	74 11                	je     40810d <_Z6windowid+0xacd>
  4080fc:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  408103:	00 
  408104:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408108:	e8 a3 b1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40810d:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  408114:	00 
  408115:	4c 39 ff             	cmp    %r15,%rdi
  408118:	74 11                	je     40812b <_Z6windowid+0xaeb>
  40811a:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  408121:	00 
  408122:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408126:	e8 85 b1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40812b:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  408132:	00 
  408133:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40813a:	00 
  40813b:	48 39 c7             	cmp    %rax,%rdi
  40813e:	74 11                	je     408151 <_Z6windowid+0xb11>
  408140:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  408147:	00 
  408148:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40814c:	e8 5f b1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408151:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  408158:	00 
  408159:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  408160:	00 
  408161:	48 39 c7             	cmp    %rax,%rdi
  408164:	74 11                	je     408177 <_Z6windowid+0xb37>
  408166:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  40816d:	00 
  40816e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408172:	e8 39 b1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408177:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40817c:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408183:	00 
  408184:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  408189:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  408190:	00 
  408191:	4c 89 e8             	mov    %r13,%rax
  408194:	4c 01 e0             	add    %r12,%rax
  408197:	74 09                	je     4081a2 <_Z6windowid+0xb62>
  408199:	4d 85 ed             	test   %r13,%r13
  40819c:	0f 84 f2 15 00 00    	je     409794 <_Z6windowid+0x2154>
  4081a2:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  4081a9:	00 
  4081aa:	49 83 fc 0f          	cmp    $0xf,%r12
  4081ae:	0f 87 74 12 00 00    	ja     409428 <_Z6windowid+0x1de8>
  4081b4:	49 83 fc 01          	cmp    $0x1,%r12
  4081b8:	0f 85 5c 11 00 00    	jne    40931a <_Z6windowid+0x1cda>
  4081be:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  4081c3:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  4081ca:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  4081d1:	00 
  4081d2:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  4081d9:	00 
  4081da:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  4081df:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  4081e6:	ff ff 3f 
  4081e9:	48 2b 84 24 58 01 00 	sub    0x158(%rsp),%rax
  4081f0:	00 
  4081f1:	48 83 f8 05          	cmp    $0x5,%rax
  4081f5:	0f 86 a3 15 00 00    	jbe    40979e <_Z6windowid+0x215e>
  4081fb:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  408200:	ba 06 00 00 00       	mov    $0x6,%edx
  408205:	be ae b0 40 00       	mov    $0x40b0ae,%esi
  40820a:	e8 e1 ae ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40820f:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  408216:	00 
  408217:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40821e:	00 
  40821f:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  408226:	00 
  408227:	48 8d 8c 24 60 01 00 	lea    0x160(%rsp),%rcx
  40822e:	00 
  40822f:	48 39 c8             	cmp    %rcx,%rax
  408232:	0f 84 59 13 00 00    	je     409591 <_Z6windowid+0x1f51>
  408238:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40823f:	00 
  408240:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  408247:	00 
  408248:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40824f:	00 
  408250:	48 8b 84 24 58 01 00 	mov    0x158(%rsp),%rax
  408257:	00 
  408258:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40825f:	00 
  408260:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  408267:	00 
  408268:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40826f:	00 
  408270:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  408277:	00 
  408278:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
  40827f:	00 00 00 00 00 
  408284:	c6 84 24 60 01 00 00 	movb   $0x0,0x160(%rsp)
  40828b:	00 
  40828c:	e8 1f ae ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  408291:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408298:	00 
  408299:	e8 a2 af ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40829e:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  4082a5:	00 
  4082a6:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4082ad:	00 
  4082ae:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  4082b5:	00 
  4082b6:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  4082bd:	00 
  4082be:	4c 89 e8             	mov    %r13,%rax
  4082c1:	4c 01 e0             	add    %r12,%rax
  4082c4:	74 09                	je     4082cf <_Z6windowid+0xc8f>
  4082c6:	4d 85 ed             	test   %r13,%r13
  4082c9:	0f 84 d9 14 00 00    	je     4097a8 <_Z6windowid+0x2168>
  4082cf:	4c 89 a4 24 d0 00 00 	mov    %r12,0xd0(%rsp)
  4082d6:	00 
  4082d7:	49 83 fc 0f          	cmp    $0xf,%r12
  4082db:	0f 87 e7 0f 00 00    	ja     4092c8 <_Z6windowid+0x1c88>
  4082e1:	49 83 fc 01          	cmp    $0x1,%r12
  4082e5:	0f 85 c7 0f 00 00    	jne    4092b2 <_Z6windowid+0x1c72>
  4082eb:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  4082f0:	88 84 24 30 01 00 00 	mov    %al,0x130(%rsp)
  4082f7:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4082fe:	00 
  4082ff:	4c 89 a4 24 28 01 00 	mov    %r12,0x128(%rsp)
  408306:	00 
  408307:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40830c:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  408313:	00 
  408314:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40831b:	00 
  40831c:	e8 5f b1 ff ff       	callq  403480 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  408321:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408328:	00 
  408329:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  408330:	00 
  408331:	e8 4a ad ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  408336:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40833d:	00 
  40833e:	48 85 f6             	test   %rsi,%rsi
  408341:	74 0d                	je     408350 <_Z6windowid+0xd10>
  408343:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40834a:	00 
  40834b:	e8 50 ad ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  408350:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  408357:	00 
  408358:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40835f:	00 
  408360:	48 39 c7             	cmp    %rax,%rdi
  408363:	74 11                	je     408376 <_Z6windowid+0xd36>
  408365:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40836c:	00 
  40836d:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408371:	e8 3a af ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408376:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40837d:	00 
  40837e:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408385:	00 
  408386:	48 39 c7             	cmp    %rax,%rdi
  408389:	74 11                	je     40839c <_Z6windowid+0xd5c>
  40838b:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  408392:	00 
  408393:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408397:	e8 14 af ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40839c:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4083a0:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  4083a7:	00 
  4083a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4083ad:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  4083b4:	00 00 
  4083b6:	e8 c5 ae ff ff       	callq  403280 <clock_gettime@plt>
  4083bb:	48 69 94 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rdx
  4083c2:	00 00 ca 9a 3b 
  4083c7:	48 b8 00 b0 8e f0 1b 	movabs $0x1bf08eb000,%rax
  4083ce:	00 00 00 
  4083d1:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  4083d8:	00 
  4083d9:	48 01 d0             	add    %rdx,%rax
  4083dc:	48 83 7c 24 48 00    	cmpq   $0x0,0x48(%rsp)
  4083e2:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4083e7:	0f 85 dd 08 00 00    	jne    408cca <_Z6windowid+0x168a>
  4083ed:	8b 44 24 28          	mov    0x28(%rsp),%eax
  4083f1:	49 bd 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%r13
  4083f8:	c5 6d 34 
  4083fb:	ff c8                	dec    %eax
  4083fd:	89 44 24 40          	mov    %eax,0x40(%rsp)
  408401:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  408408:	48 83 7c 24 28 00    	cmpq   $0x0,0x28(%rsp)
  40840e:	0f 8e b0 04 00 00    	jle    4088c4 <_Z6windowid+0x1284>
  408414:	8b 44 24 40          	mov    0x40(%rsp),%eax
  408418:	c6 44 24 47 01       	movb   $0x1,0x47(%rsp)
  40841d:	48 ff c0             	inc    %rax
  408420:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  408425:	41 be 01 00 00 00    	mov    $0x1,%r14d
  40842b:	bb 01 00 00 00       	mov    $0x1,%ebx
  408430:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  408437:	00 
  408438:	89 de                	mov    %ebx,%esi
  40843a:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40843f:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  408446:	00 
  408447:	44 89 74 24 48       	mov    %r14d,0x48(%rsp)
  40844c:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  408453:	00 
  408454:	45 8d 66 ff          	lea    -0x1(%r14),%r12d
  408458:	e8 93 ae ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40845d:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
  408464:	00 
  408465:	ff cb                	dec    %ebx
  408467:	41 83 fc 63          	cmp    $0x63,%r12d
  40846b:	76 49                	jbe    4084b6 <_Z6windowid+0xe76>
  40846d:	0f 1f 00             	nopl   (%rax)
  408470:	44 89 e2             	mov    %r12d,%edx
  408473:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40847a:	44 89 e0             	mov    %r12d,%eax
  40847d:	48 c1 ea 25          	shr    $0x25,%rdx
  408481:	6b f2 64             	imul   $0x64,%edx,%esi
  408484:	29 f0                	sub    %esi,%eax
  408486:	01 c0                	add    %eax,%eax
  408488:	8d 78 01             	lea    0x1(%rax),%edi
  40848b:	0f b6 bf 20 b3 40 00 	movzbl 0x40b320(%rdi),%edi
  408492:	0f b6 80 20 b3 40 00 	movzbl 0x40b320(%rax),%eax
  408499:	44 89 e6             	mov    %r12d,%esi
  40849c:	41 89 d4             	mov    %edx,%r12d
  40849f:	89 da                	mov    %ebx,%edx
  4084a1:	40 88 3c 11          	mov    %dil,(%rcx,%rdx,1)
  4084a5:	8d 53 ff             	lea    -0x1(%rbx),%edx
  4084a8:	88 04 11             	mov    %al,(%rcx,%rdx,1)
  4084ab:	83 eb 02             	sub    $0x2,%ebx
  4084ae:	81 fe 0f 27 00 00    	cmp    $0x270f,%esi
  4084b4:	77 ba                	ja     408470 <_Z6windowid+0xe30>
  4084b6:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  4084bb:	41 83 fc 09          	cmp    $0x9,%r12d
  4084bf:	76 1b                	jbe    4084dc <_Z6windowid+0xe9c>
  4084c1:	45 01 e4             	add    %r12d,%r12d
  4084c4:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  4084c9:	0f b6 80 20 b3 40 00 	movzbl 0x40b320(%rax),%eax
  4084d0:	88 41 01             	mov    %al,0x1(%rcx)
  4084d3:	41 0f b6 84 24 20 b3 	movzbl 0x40b320(%r12),%eax
  4084da:	40 00 
  4084dc:	88 01                	mov    %al,(%rcx)
  4084de:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  4084e5:	00 
  4084e6:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  4084ed:	00 
  4084ee:	48 8b 5c 24 70       	mov    0x70(%rsp),%rbx
  4084f3:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  4084f8:	48 89 d8             	mov    %rbx,%rax
  4084fb:	4c 01 e0             	add    %r12,%rax
  4084fe:	74 09                	je     408509 <_Z6windowid+0xec9>
  408500:	48 85 db             	test   %rbx,%rbx
  408503:	0f 84 af 12 00 00    	je     4097b8 <_Z6windowid+0x2178>
  408509:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  408510:	00 
  408511:	49 83 fc 0f          	cmp    $0xf,%r12
  408515:	0f 87 95 08 00 00    	ja     408db0 <_Z6windowid+0x1770>
  40851b:	49 83 fc 01          	cmp    $0x1,%r12
  40851f:	0f 85 4b 08 00 00    	jne    408d70 <_Z6windowid+0x1730>
  408525:	0f b6 03             	movzbl (%rbx),%eax
  408528:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  40852f:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  408536:	00 
  408537:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  40853e:	00 
  40853f:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  408544:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40854b:	ff ff 3f 
  40854e:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  408555:	00 
  408556:	48 83 f8 05          	cmp    $0x5,%rax
  40855a:	0f 86 62 12 00 00    	jbe    4097c2 <_Z6windowid+0x2182>
  408560:	ba 06 00 00 00       	mov    $0x6,%edx
  408565:	be a7 b0 40 00       	mov    $0x40b0a7,%esi
  40856a:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  408571:	00 
  408572:	e8 79 ab ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  408577:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
  40857e:	00 
  40857f:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  408586:	00 
  408587:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  40858e:	00 
  40858f:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  408596:	00 
  408597:	48 39 d9             	cmp    %rbx,%rcx
  40859a:	bf 0f 00 00 00       	mov    $0xf,%edi
  40859f:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  4085a6:	00 00 
  4085a8:	49 8d 04 10          	lea    (%r8,%rdx,1),%rax
  4085ac:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  4085b3:	00 
  4085b4:	48 39 f8             	cmp    %rdi,%rax
  4085b7:	76 22                	jbe    4085db <_Z6windowid+0xf9b>
  4085b9:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  4085c0:	00 
  4085c1:	48 39 de             	cmp    %rbx,%rsi
  4085c4:	bf 0f 00 00 00       	mov    $0xf,%edi
  4085c9:	48 0f 45 bc 24 c0 00 	cmovne 0xc0(%rsp),%rdi
  4085d0:	00 00 
  4085d2:	48 39 f8             	cmp    %rdi,%rax
  4085d5:	0f 86 cd 08 00 00    	jbe    408ea8 <_Z6windowid+0x1868>
  4085db:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  4085e2:	00 
  4085e3:	e8 08 ab ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  4085e8:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  4085ef:	00 
  4085f0:	48 8d 50 10          	lea    0x10(%rax),%rdx
  4085f4:	48 8b 08             	mov    (%rax),%rcx
  4085f7:	48 39 d1             	cmp    %rdx,%rcx
  4085fa:	0f 84 70 08 00 00    	je     408e70 <_Z6windowid+0x1830>
  408600:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  408607:	00 
  408608:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40860c:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  408613:	00 
  408614:	48 8b 48 08          	mov    0x8(%rax),%rcx
  408618:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  40861f:	00 
  408620:	48 89 10             	mov    %rdx,(%rax)
  408623:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  408627:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40862e:	00 
  40862f:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408636:	00 
  408637:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40863e:	00 
  40863f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  408646:	00 
  408647:	4c 39 f8             	cmp    %r15,%rax
  40864a:	0f 84 08 08 00 00    	je     408e58 <_Z6windowid+0x1818>
  408650:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  408657:	00 
  408658:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40865f:	00 
  408660:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  408667:	00 
  408668:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40866f:	00 
  408670:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  408677:	00 
  408678:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  40867f:	00 
  408680:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  408687:	00 
  408688:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40868f:	00 00 00 00 00 
  408694:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40869b:	00 
  40869c:	e8 0f aa ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  4086a1:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4086a6:	e8 95 ab ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  4086ab:	48 8b 9c 24 f0 00 00 	mov    0xf0(%rsp),%rbx
  4086b2:	00 
  4086b3:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4086ba:	00 
  4086bb:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  4086c2:	00 
  4086c3:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4086ca:	00 
  4086cb:	48 89 d8             	mov    %rbx,%rax
  4086ce:	4c 01 e0             	add    %r12,%rax
  4086d1:	74 09                	je     4086dc <_Z6windowid+0x109c>
  4086d3:	48 85 db             	test   %rbx,%rbx
  4086d6:	0f 84 f0 10 00 00    	je     4097cc <_Z6windowid+0x218c>
  4086dc:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  4086e1:	49 83 fc 0f          	cmp    $0xf,%r12
  4086e5:	0f 87 1d 07 00 00    	ja     408e08 <_Z6windowid+0x17c8>
  4086eb:	49 83 fc 01          	cmp    $0x1,%r12
  4086ef:	0f 85 9b 06 00 00    	jne    408d90 <_Z6windowid+0x1750>
  4086f5:	0f b6 03             	movzbl (%rbx),%eax
  4086f8:	88 84 24 90 01 00 00 	mov    %al,0x190(%rsp)
  4086ff:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  408706:	00 
  408707:	4c 89 a4 24 88 01 00 	mov    %r12,0x188(%rsp)
  40870e:	00 
  40870f:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  408714:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40871b:	00 
  40871c:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  408723:	00 
  408724:	e8 57 ad ff ff       	callq  403480 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  408729:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40872e:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408735:	00 
  408736:	e8 45 a9 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40873b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408742:	00 
  408743:	e8 c8 a9 ff ff       	callq  403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  408748:	ff c0                	inc    %eax
  40874a:	3c 01                	cmp    $0x1,%al
  40874c:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  408753:	00 
  408754:	0f 97 c0             	seta   %al
  408757:	20 44 24 47          	and    %al,0x47(%rsp)
  40875b:	48 85 f6             	test   %rsi,%rsi
  40875e:	74 0d                	je     40876d <_Z6windowid+0x112d>
  408760:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  408767:	00 
  408768:	e8 33 a9 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40876d:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  408774:	00 
  408775:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40877c:	00 
  40877d:	48 39 c7             	cmp    %rax,%rdi
  408780:	74 11                	je     408793 <_Z6windowid+0x1153>
  408782:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  408789:	00 
  40878a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40878e:	e8 1d ab ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408793:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40879a:	00 
  40879b:	48 85 f6             	test   %rsi,%rsi
  40879e:	74 0d                	je     4087ad <_Z6windowid+0x116d>
  4087a0:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  4087a7:	00 
  4087a8:	e8 f3 a8 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  4087ad:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  4087b4:	00 
  4087b5:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  4087bc:	00 
  4087bd:	48 39 c7             	cmp    %rax,%rdi
  4087c0:	74 11                	je     4087d3 <_Z6windowid+0x1193>
  4087c2:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  4087c9:	00 
  4087ca:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4087ce:	e8 dd aa ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4087d3:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  4087da:	00 
  4087db:	4c 39 ff             	cmp    %r15,%rdi
  4087de:	74 11                	je     4087f1 <_Z6windowid+0x11b1>
  4087e0:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  4087e7:	00 
  4087e8:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4087ec:	e8 bf aa ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4087f1:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  4087f8:	00 
  4087f9:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  408800:	00 
  408801:	48 39 c7             	cmp    %rax,%rdi
  408804:	74 11                	je     408817 <_Z6windowid+0x11d7>
  408806:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40880d:	00 
  40880e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408812:	e8 99 aa ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408817:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40881e:	00 
  40881f:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  408826:	00 
  408827:	48 39 c7             	cmp    %rax,%rdi
  40882a:	74 11                	je     40883d <_Z6windowid+0x11fd>
  40882c:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  408833:	00 
  408834:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408838:	e8 73 aa ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40883d:	4c 39 74 24 38       	cmp    %r14,0x38(%rsp)
  408842:	0f 84 b0 06 00 00    	je     408ef8 <_Z6windowid+0x18b8>
  408848:	49 83 fe 09          	cmp    $0x9,%r14
  40884c:	0f 86 84 0f 00 00    	jbe    4097d6 <_Z6windowid+0x2196>
  408852:	8b 44 24 48          	mov    0x48(%rsp),%eax
  408856:	83 f8 63             	cmp    $0x63,%eax
  408859:	0f 86 f7 09 00 00    	jbe    409256 <_Z6windowid+0x1c16>
  40885f:	3d e7 03 00 00       	cmp    $0x3e7,%eax
  408864:	0f 86 06 0a 00 00    	jbe    409270 <_Z6windowid+0x1c30>
  40886a:	3d 0f 27 00 00       	cmp    $0x270f,%eax
  40886f:	0f 86 ee 09 00 00    	jbe    409263 <_Z6windowid+0x1c23>
  408875:	4c 89 f2             	mov    %r14,%rdx
  408878:	bb 01 00 00 00       	mov    $0x1,%ebx
  40887d:	eb 22                	jmp    4088a1 <_Z6windowid+0x1261>
  40887f:	90                   	nop
  408880:	83 fa 63             	cmp    $0x63,%edx
  408883:	0f 86 ff 05 00 00    	jbe    408e88 <_Z6windowid+0x1848>
  408889:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40888f:	0f 86 03 06 00 00    	jbe    408e98 <_Z6windowid+0x1858>
  408895:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40889b:	0f 86 47 06 00 00    	jbe    408ee8 <_Z6windowid+0x18a8>
  4088a1:	48 89 d0             	mov    %rdx,%rax
  4088a4:	48 89 d1             	mov    %rdx,%rcx
  4088a7:	49 f7 e5             	mul    %r13
  4088aa:	89 d8                	mov    %ebx,%eax
  4088ac:	83 c3 04             	add    $0x4,%ebx
  4088af:	48 c1 ea 0b          	shr    $0xb,%rdx
  4088b3:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  4088ba:	77 c4                	ja     408880 <_Z6windowid+0x1240>
  4088bc:	49 ff c6             	inc    %r14
  4088bf:	e9 6c fb ff ff       	jmpq   408430 <_Z6windowid+0xdf0>
  4088c4:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  4088c9:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  4088ce:	4c 89 e8             	mov    %r13,%rax
  4088d1:	4c 01 e0             	add    %r12,%rax
  4088d4:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  4088db:	00 
  4088dc:	74 09                	je     4088e7 <_Z6windowid+0x12a7>
  4088de:	4d 85 ed             	test   %r13,%r13
  4088e1:	0f 84 85 0f 00 00    	je     40986c <_Z6windowid+0x222c>
  4088e7:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  4088ee:	00 
  4088ef:	49 83 fc 0f          	cmp    $0xf,%r12
  4088f3:	0f 87 81 0d 00 00    	ja     40967a <_Z6windowid+0x203a>
  4088f9:	49 83 fc 01          	cmp    $0x1,%r12
  4088fd:	0f 84 b5 0c 00 00    	je     4095b8 <_Z6windowid+0x1f78>
  408903:	4d 85 e4             	test   %r12,%r12
  408906:	0f 85 55 0e 00 00    	jne    409761 <_Z6windowid+0x2121>
  40890c:	4c 89 f8             	mov    %r15,%rax
  40890f:	4c 89 a4 24 d8 00 00 	mov    %r12,0xd8(%rsp)
  408916:	00 
  408917:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40891c:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  408923:	ff ff 3f 
  408926:	48 2b 84 24 d8 00 00 	sub    0xd8(%rsp),%rax
  40892d:	00 
  40892e:	48 83 f8 03          	cmp    $0x3,%rax
  408932:	0f 86 1f 0e 00 00    	jbe    409757 <_Z6windowid+0x2117>
  408938:	ba 04 00 00 00       	mov    $0x4,%edx
  40893d:	be d3 b0 40 00       	mov    $0x40b0d3,%esi
  408942:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  408949:	00 
  40894a:	e8 a1 a7 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40894f:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  408956:	00 
  408957:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40895e:	00 
  40895f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  408966:	00 
  408967:	4c 39 f8             	cmp    %r15,%rax
  40896a:	0f 84 6c 0d 00 00    	je     4096dc <_Z6windowid+0x209c>
  408970:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408977:	00 
  408978:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40897f:	00 
  408980:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  408987:	00 
  408988:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40898f:	00 
  408990:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  408997:	00 
  408998:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40899f:	00 
  4089a0:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  4089a7:	00 
  4089a8:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  4089af:	00 00 00 00 00 
  4089b4:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  4089bb:	00 
  4089bc:	e8 ef a6 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  4089c1:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  4089c8:	00 
  4089c9:	e8 72 a8 ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  4089ce:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  4089d5:	00 
  4089d6:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  4089dd:	00 
  4089de:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  4089e5:	00 
  4089e6:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  4089ed:	00 
  4089ee:	4c 89 e8             	mov    %r13,%rax
  4089f1:	4c 01 e0             	add    %r12,%rax
  4089f4:	74 09                	je     4089ff <_Z6windowid+0x13bf>
  4089f6:	4d 85 ed             	test   %r13,%r13
  4089f9:	0f 84 4e 0d 00 00    	je     40974d <_Z6windowid+0x210d>
  4089ff:	4c 89 a4 24 b0 00 00 	mov    %r12,0xb0(%rsp)
  408a06:	00 
  408a07:	49 83 fc 0f          	cmp    $0xf,%r12
  408a0b:	0f 87 1a 0c 00 00    	ja     40962b <_Z6windowid+0x1feb>
  408a11:	49 83 fc 01          	cmp    $0x1,%r12
  408a15:	0f 85 fa 0b 00 00    	jne    409615 <_Z6windowid+0x1fd5>
  408a1b:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  408a20:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  408a27:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408a2e:	00 
  408a2f:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  408a36:	00 
  408a37:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  408a3c:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  408a43:	00 
  408a44:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  408a4b:	00 
  408a4c:	e8 2f aa ff ff       	callq  403480 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  408a51:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  408a56:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408a5d:	00 
  408a5e:	e8 1d a6 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  408a63:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  408a6a:	00 
  408a6b:	48 85 f6             	test   %rsi,%rsi
  408a6e:	74 0d                	je     408a7d <_Z6windowid+0x143d>
  408a70:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  408a77:	00 
  408a78:	e8 23 a6 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  408a7d:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  408a84:	00 
  408a85:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  408a8c:	00 
  408a8d:	48 39 c7             	cmp    %rax,%rdi
  408a90:	74 11                	je     408aa3 <_Z6windowid+0x1463>
  408a92:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  408a99:	00 
  408a9a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408a9e:	e8 0d a8 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408aa3:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  408aaa:	00 
  408aab:	4c 39 ff             	cmp    %r15,%rdi
  408aae:	74 11                	je     408ac1 <_Z6windowid+0x1481>
  408ab0:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  408ab7:	00 
  408ab8:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408abc:	e8 ef a7 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408ac1:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  408ac8:	00 
  408ac9:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  408ad0:	00 
  408ad1:	e8 fa a5 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  408ad6:	31 d2                	xor    %edx,%edx
  408ad8:	66 89 94 24 58 03 00 	mov    %dx,0x358(%rsp)
  408adf:	00 
  408ae0:	48 8b 05 41 51 00 00 	mov    0x5141(%rip),%rax        # 40dc28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  408ae7:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408aeb:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  408af2:	00 00 
  408af4:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408afb:	00 
  408afc:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408b03:	00 
  408b04:	48 03 78 e8          	add    -0x18(%rax),%rdi
  408b08:	48 8b 05 21 51 00 00 	mov    0x5121(%rip),%rax        # 40dc30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  408b0f:	31 f6                	xor    %esi,%esi
  408b11:	48 c7 84 24 78 02 00 	movq   $0x40db90,0x278(%rsp)
  408b18:	00 90 db 40 00 
  408b1d:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  408b24:	00 00 00 00 00 
  408b29:	48 89 07             	mov    %rax,(%rdi)
  408b2c:	c5 f8 77             	vzeroupper 
  408b2f:	e8 fc a7 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  408b34:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  408b3b:	00 
  408b3c:	48 c7 84 24 80 01 00 	movq   $0x40dd28,0x180(%rsp)
  408b43:	00 28 dd 40 00 
  408b48:	48 c7 84 24 78 02 00 	movq   $0x40dd50,0x278(%rsp)
  408b4f:	00 50 dd 40 00 
  408b54:	e8 77 a7 ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  408b59:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  408b60:	00 
  408b61:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  408b68:	00 
  408b69:	e8 c2 a7 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  408b6e:	ba 10 00 00 00       	mov    $0x10,%edx
  408b73:	4c 89 e6             	mov    %r12,%rsi
  408b76:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  408b7d:	00 
  408b7e:	e8 ed a6 ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  408b83:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  408b8a:	00 
  408b8b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408b92:	00 
  408b93:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  408b97:	48 85 c0             	test   %rax,%rax
  408b9a:	0f 84 2c 0b 00 00    	je     4096cc <_Z6windowid+0x208c>
  408ba0:	31 f6                	xor    %esi,%esi
  408ba2:	e8 59 a8 ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  408ba7:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408bab:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  408bb2:	00 
  408bb3:	bf 01 00 00 00       	mov    $0x1,%edi
  408bb8:	c5 f9 7f 84 24 d0 00 	vmovdqa %xmm0,0xd0(%rsp)
  408bbf:	00 00 
  408bc1:	e8 ba a6 ff ff       	callq  403280 <clock_gettime@plt>
  408bc6:	48 69 94 24 d0 00 00 	imul   $0x3b9aca00,0xd0(%rsp),%rdx
  408bcd:	00 00 ca 9a 3b 
  408bd2:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  408bd9:	00 
  408bda:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408be1:	00 
  408be2:	48 8d b4 02 80 b2 e6 	lea    0xee6b280(%rdx,%rax,1),%rsi
  408be9:	0e 
  408bea:	e8 e1 a5 ff ff       	callq  4031d0 <_ZNSo9_M_insertIyEERSoT_@plt>
  408bef:	c5 f9 6f 7c 24 10    	vmovdqa 0x10(%rsp),%xmm7
  408bf5:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  408bfc:	00 
  408bfd:	48 c7 84 24 78 02 00 	movq   $0x40dd50,0x278(%rsp)
  408c04:	00 50 dd 40 00 
  408c09:	c5 f9 7f bc 24 80 01 	vmovdqa %xmm7,0x180(%rsp)
  408c10:	00 00 
  408c12:	e8 59 a4 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  408c17:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  408c1e:	00 
  408c1f:	e8 3c a8 ff ff       	callq  403460 <_ZNSt12__basic_fileIcED1Ev@plt>
  408c24:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  408c2b:	00 
  408c2c:	48 c7 84 24 88 01 00 	movq   $0x40dbb0,0x188(%rsp)
  408c33:	00 b0 db 40 00 
  408c38:	e8 13 a7 ff ff       	callq  403350 <_ZNSt6localeD1Ev@plt>
  408c3d:	48 8b 05 e4 4f 00 00 	mov    0x4fe4(%rip),%rax        # 40dc28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  408c44:	48 8b 0d e5 4f 00 00 	mov    0x4fe5(%rip),%rcx        # 40dc30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  408c4b:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408c52:	00 
  408c53:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  408c57:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  408c5e:	00 
  408c5f:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  408c66:	00 
  408c67:	48 c7 84 24 78 02 00 	movq   $0x40db90,0x278(%rsp)
  408c6e:	00 90 db 40 00 
  408c73:	e8 88 a4 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  408c78:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  408c7d:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  408c84:	00 
  408c85:	e8 26 a5 ff ff       	callq  4031b0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@plt>
  408c8a:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  408c91:	00 
  408c92:	48 85 f6             	test   %rsi,%rsi
  408c95:	74 0d                	je     408ca4 <_Z6windowid+0x1664>
  408c97:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  408c9e:	00 
  408c9f:	e8 fc a3 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  408ca4:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  408cab:	00 
  408cac:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408cb3:	00 
  408cb4:	48 39 c7             	cmp    %rax,%rdi
  408cb7:	74 11                	je     408cca <_Z6windowid+0x168a>
  408cb9:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  408cc0:	00 
  408cc1:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408cc5:	e8 e6 a5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408cca:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  408cd1:	00 
  408cd2:	e8 39 a4 ff ff       	callq  403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  408cd7:	ff c0                	inc    %eax
  408cd9:	3c 01                	cmp    $0x1,%al
  408cdb:	0f 87 a7 02 00 00    	ja     408f88 <_Z6windowid+0x1948>
  408ce1:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408ce5:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408cec:	00 
  408ced:	bf 01 00 00 00       	mov    $0x1,%edi
  408cf2:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  408cf9:	00 00 
  408cfb:	e8 80 a5 ff ff       	callq  403280 <clock_gettime@plt>
  408d00:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  408d07:	00 00 ca 9a 3b 
  408d0c:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  408d13:	00 
  408d14:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  408d19:	0f 82 df ae ff ff    	jb     403bfe <_Z6windowid.cold+0x75e>
  408d1f:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  408d26:	00 00 00 00 00 
  408d2b:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  408d32:	00 80 84 1e 00 
  408d37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  408d3e:	00 00 
  408d40:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408d47:	00 
  408d48:	48 89 f7             	mov    %rsi,%rdi
  408d4b:	e8 90 a3 ff ff       	callq  4030e0 <nanosleep@plt>
  408d50:	83 f8 ff             	cmp    $0xffffffff,%eax
  408d53:	0f 85 71 ff ff ff    	jne    408cca <_Z6windowid+0x168a>
  408d59:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  408d5e:	83 38 04             	cmpl   $0x4,(%rax)
  408d61:	74 dd                	je     408d40 <_Z6windowid+0x1700>
  408d63:	e9 62 ff ff ff       	jmpq   408cca <_Z6windowid+0x168a>
  408d68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  408d6f:	00 
  408d70:	4d 85 e4             	test   %r12,%r12
  408d73:	0f 85 67 0a 00 00    	jne    4097e0 <_Z6windowid+0x21a0>
  408d79:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  408d80:	00 
  408d81:	e9 b1 f7 ff ff       	jmpq   408537 <_Z6windowid+0xef7>
  408d86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408d8d:	00 00 00 
  408d90:	4d 85 e4             	test   %r12,%r12
  408d93:	0f 85 54 0a 00 00    	jne    4097ed <_Z6windowid+0x21ad>
  408d99:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  408da0:	00 
  408da1:	e9 61 f9 ff ff       	jmpq   408707 <_Z6windowid+0x10c7>
  408da6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408dad:	00 00 00 
  408db0:	31 d2                	xor    %edx,%edx
  408db2:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408db9:	00 
  408dba:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  408dc1:	00 
  408dc2:	e8 79 a6 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  408dc7:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  408dce:	00 
  408dcf:	48 89 c7             	mov    %rax,%rdi
  408dd2:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  408dd9:	00 
  408dda:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  408de1:	00 
  408de2:	4c 89 e2             	mov    %r12,%rdx
  408de5:	48 89 de             	mov    %rbx,%rsi
  408de8:	e8 63 a4 ff ff       	callq  403250 <memcpy@plt>
  408ded:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  408df4:	00 
  408df5:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  408dfc:	00 
  408dfd:	e9 35 f7 ff ff       	jmpq   408537 <_Z6windowid+0xef7>
  408e02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408e08:	31 d2                	xor    %edx,%edx
  408e0a:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
  408e0f:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408e16:	00 
  408e17:	e8 24 a6 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  408e1c:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408e23:	00 
  408e24:	48 89 c7             	mov    %rax,%rdi
  408e27:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  408e2c:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  408e33:	00 
  408e34:	4c 89 e2             	mov    %r12,%rdx
  408e37:	48 89 de             	mov    %rbx,%rsi
  408e3a:	e8 11 a4 ff ff       	callq  403250 <memcpy@plt>
  408e3f:	4c 8b 64 24 68       	mov    0x68(%rsp),%r12
  408e44:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  408e4b:	00 
  408e4c:	e9 b6 f8 ff ff       	jmpq   408707 <_Z6windowid+0x10c7>
  408e51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  408e58:	c5 f9 6f 9c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm3
  408e5f:	00 00 
  408e61:	c5 f9 7f 9c 24 60 01 	vmovdqa %xmm3,0x160(%rsp)
  408e68:	00 00 
  408e6a:	e9 f9 f7 ff ff       	jmpq   408668 <_Z6windowid+0x1028>
  408e6f:	90                   	nop
  408e70:	c5 fa 6f 60 10       	vmovdqu 0x10(%rax),%xmm4
  408e75:	c5 f9 7f a4 24 e0 00 	vmovdqa %xmm4,0xe0(%rsp)
  408e7c:	00 00 
  408e7e:	e9 91 f7 ff ff       	jmpq   408614 <_Z6windowid+0xfd4>
  408e83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408e88:	8d 58 05             	lea    0x5(%rax),%ebx
  408e8b:	49 ff c6             	inc    %r14
  408e8e:	e9 9d f5 ff ff       	jmpq   408430 <_Z6windowid+0xdf0>
  408e93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408e98:	8d 58 06             	lea    0x6(%rax),%ebx
  408e9b:	49 ff c6             	inc    %r14
  408e9e:	e9 8d f5 ff ff       	jmpq   408430 <_Z6windowid+0xdf0>
  408ea3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408ea8:	31 d2                	xor    %edx,%edx
  408eaa:	31 f6                	xor    %esi,%esi
  408eac:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  408eb3:	00 
  408eb4:	e8 e7 a4 ff ff       	callq  4033a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  408eb9:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  408ec0:	00 
  408ec1:	48 8d 50 10          	lea    0x10(%rax),%rdx
  408ec5:	48 8b 08             	mov    (%rax),%rcx
  408ec8:	48 39 d1             	cmp    %rdx,%rcx
  408ecb:	0f 85 2f f7 ff ff    	jne    408600 <_Z6windowid+0xfc0>
  408ed1:	c5 fa 6f 68 10       	vmovdqu 0x10(%rax),%xmm5
  408ed6:	c5 f9 7f ac 24 e0 00 	vmovdqa %xmm5,0xe0(%rsp)
  408edd:	00 00 
  408edf:	e9 30 f7 ff ff       	jmpq   408614 <_Z6windowid+0xfd4>
  408ee4:	0f 1f 40 00          	nopl   0x0(%rax)
  408ee8:	8d 58 07             	lea    0x7(%rax),%ebx
  408eeb:	49 ff c6             	inc    %r14
  408eee:	e9 3d f5 ff ff       	jmpq   408430 <_Z6windowid+0xdf0>
  408ef3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408ef8:	80 7c 24 47 00       	cmpb   $0x0,0x47(%rsp)
  408efd:	0f 85 c1 f9 ff ff    	jne    4088c4 <_Z6windowid+0x1284>
  408f03:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408f07:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408f0e:	00 
  408f0f:	bf 01 00 00 00       	mov    $0x1,%edi
  408f14:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  408f1b:	00 00 
  408f1d:	e8 5e a3 ff ff       	callq  403280 <clock_gettime@plt>
  408f22:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  408f29:	00 00 ca 9a 3b 
  408f2e:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  408f35:	00 
  408f36:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  408f3b:	0f 82 6b ab ff ff    	jb     403aac <_Z6windowid.cold+0x60c>
  408f41:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  408f48:	00 00 00 00 00 
  408f4d:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  408f54:	00 80 84 1e 00 
  408f59:	eb 13                	jmp    408f6e <_Z6windowid+0x192e>
  408f5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408f60:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  408f65:	83 38 04             	cmpl   $0x4,(%rax)
  408f68:	0f 85 9a f4 ff ff    	jne    408408 <_Z6windowid+0xdc8>
  408f6e:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408f75:	00 
  408f76:	48 89 f7             	mov    %rsi,%rdi
  408f79:	e8 62 a1 ff ff       	callq  4030e0 <nanosleep@plt>
  408f7e:	83 f8 ff             	cmp    $0xffffffff,%eax
  408f81:	74 dd                	je     408f60 <_Z6windowid+0x1920>
  408f83:	e9 80 f4 ff ff       	jmpq   408408 <_Z6windowid+0xdc8>
  408f88:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  408f8f:	00 
  408f90:	4c 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13
  408f97:	00 
  408f98:	e8 33 a1 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  408f9d:	31 c0                	xor    %eax,%eax
  408f9f:	66 89 84 24 60 03 00 	mov    %ax,0x360(%rsp)
  408fa6:	00 
  408fa7:	48 8b 1d ca 4d 00 00 	mov    0x4dca(%rip),%rbx        # 40dd78 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  408fae:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408fb2:	c5 fe 7f 84 24 68 03 	vmovdqu %ymm0,0x368(%rsp)
  408fb9:	00 00 
  408fbb:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  408fbf:	4c 8b 25 ba 4d 00 00 	mov    0x4dba(%rip),%r12        # 40dd80 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  408fc6:	48 c7 84 24 80 02 00 	movq   $0x40db90,0x280(%rsp)
  408fcd:	00 90 db 40 00 
  408fd2:	48 c7 84 24 58 03 00 	movq   $0x0,0x358(%rsp)
  408fd9:	00 00 00 00 00 
  408fde:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  408fe5:	00 
  408fe6:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  408fed:	00 
  408fee:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  408ff5:	00 00 00 00 00 
  408ffa:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  409001:	00 
  409002:	31 f6                	xor    %esi,%esi
  409004:	48 03 7b e8          	add    -0x18(%rbx),%rdi
  409008:	c5 f8 77             	vzeroupper 
  40900b:	e8 20 a3 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  409010:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  409017:	00 
  409018:	48 c7 84 24 80 01 00 	movq   $0x40dc58,0x180(%rsp)
  40901f:	00 58 dc 40 00 
  409024:	48 c7 84 24 80 02 00 	movq   $0x40dc80,0x280(%rsp)
  40902b:	00 80 dc 40 00 
  409030:	e8 9b a2 ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  409035:	48 8d b4 24 90 01 00 	lea    0x190(%rsp),%rsi
  40903c:	00 
  40903d:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  409044:	00 
  409045:	e8 e6 a2 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40904a:	ba 08 00 00 00       	mov    $0x8,%edx
  40904f:	4c 89 ee             	mov    %r13,%rsi
  409052:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  409059:	00 
  40905a:	e8 11 a2 ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40905f:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  409066:	00 
  409067:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40906e:	00 
  40906f:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  409073:	48 85 c0             	test   %rax,%rax
  409076:	0f 84 2c 05 00 00    	je     4095a8 <_Z6windowid+0x1f68>
  40907c:	31 f6                	xor    %esi,%esi
  40907e:	e8 7d a3 ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  409083:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  409088:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40908f:	00 
  409090:	e8 db a0 ff ff       	callq  403170 <_ZNSi10_M_extractImEERSiRT_@plt>
  409095:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40909c:	00 
  40909d:	48 c7 84 24 80 01 00 	movq   $0x40dc58,0x180(%rsp)
  4090a4:	00 58 dc 40 00 
  4090a9:	48 c7 84 24 80 02 00 	movq   $0x40dc80,0x280(%rsp)
  4090b0:	00 80 dc 40 00 
  4090b5:	48 c7 84 24 90 01 00 	movq   $0x40dca0,0x190(%rsp)
  4090bc:	00 a0 dc 40 00 
  4090c1:	e8 aa 9f ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  4090c6:	48 8d bc 24 f8 01 00 	lea    0x1f8(%rsp),%rdi
  4090cd:	00 
  4090ce:	e8 8d a3 ff ff       	callq  403460 <_ZNSt12__basic_fileIcED1Ev@plt>
  4090d3:	48 8d bc 24 c8 01 00 	lea    0x1c8(%rsp),%rdi
  4090da:	00 
  4090db:	48 c7 84 24 90 01 00 	movq   $0x40dbb0,0x190(%rsp)
  4090e2:	00 b0 db 40 00 
  4090e7:	e8 64 a2 ff ff       	callq  403350 <_ZNSt6localeD1Ev@plt>
  4090ec:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  4090f0:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  4090f7:	00 
  4090f8:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  4090ff:	00 
  409100:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  409107:	00 
  409108:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  40910f:	00 00 00 00 00 
  409114:	48 c7 84 24 80 02 00 	movq   $0x40db90,0x280(%rsp)
  40911b:	00 90 db 40 00 
  409120:	e8 db 9f ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  409125:	0f 1f 00             	nopl   (%rax)
  409128:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40912c:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409133:	00 
  409134:	bf 01 00 00 00       	mov    $0x1,%edi
  409139:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  409140:	00 00 
  409142:	e8 39 a1 ff ff       	callq  403280 <clock_gettime@plt>
  409147:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40914e:	00 00 ca 9a 3b 
  409153:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40915a:	00 
  40915b:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  409162:	00 
  409163:	49 39 c4             	cmp    %rax,%r12
  409166:	76 39                	jbe    4091a1 <_Z6windowid+0x1b61>
  409168:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40916f:	00 00 00 00 00 
  409174:	48 c7 84 24 88 01 00 	movq   $0x4e20,0x188(%rsp)
  40917b:	00 20 4e 00 00 
  409180:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409187:	00 
  409188:	48 89 f7             	mov    %rsi,%rdi
  40918b:	e8 50 9f ff ff       	callq  4030e0 <nanosleep@plt>
  409190:	83 f8 ff             	cmp    $0xffffffff,%eax
  409193:	75 93                	jne    409128 <_Z6windowid+0x1ae8>
  409195:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40919a:	83 38 04             	cmpl   $0x4,(%rax)
  40919d:	74 e1                	je     409180 <_Z6windowid+0x1b40>
  40919f:	eb 87                	jmp    409128 <_Z6windowid+0x1ae8>
  4091a1:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  4091a8:	00 
  4091a9:	48 85 f6             	test   %rsi,%rsi
  4091ac:	74 0d                	je     4091bb <_Z6windowid+0x1b7b>
  4091ae:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  4091b5:	00 
  4091b6:	e8 e5 9e ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  4091bb:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  4091c2:	00 
  4091c3:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4091ca:	00 
  4091cb:	48 39 c7             	cmp    %rax,%rdi
  4091ce:	74 11                	je     4091e1 <_Z6windowid+0x1ba1>
  4091d0:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  4091d7:	00 
  4091d8:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4091dc:	e8 cf a0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4091e1:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  4091e6:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  4091ed:	00 
  4091ee:	48 39 c7             	cmp    %rax,%rdi
  4091f1:	74 11                	je     409204 <_Z6windowid+0x1bc4>
  4091f3:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  4091fa:	00 
  4091fb:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4091ff:	e8 ac a0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  409204:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
  40920b:	00 
  40920c:	48 85 f6             	test   %rsi,%rsi
  40920f:	74 0d                	je     40921e <_Z6windowid+0x1bde>
  409211:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  409218:	00 
  409219:	e8 82 9e ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40921e:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  409225:	00 
  409226:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  40922d:	00 
  40922e:	48 39 c7             	cmp    %rax,%rdi
  409231:	74 11                	je     409244 <_Z6windowid+0x1c04>
  409233:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  40923a:	00 
  40923b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40923f:	e8 6c a0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  409244:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  409248:	5b                   	pop    %rbx
  409249:	4c 89 e0             	mov    %r12,%rax
  40924c:	41 5c                	pop    %r12
  40924e:	41 5d                	pop    %r13
  409250:	41 5e                	pop    %r14
  409252:	41 5f                	pop    %r15
  409254:	5d                   	pop    %rbp
  409255:	c3                   	retq   
  409256:	bb 02 00 00 00       	mov    $0x2,%ebx
  40925b:	49 ff c6             	inc    %r14
  40925e:	e9 cd f1 ff ff       	jmpq   408430 <_Z6windowid+0xdf0>
  409263:	bb 04 00 00 00       	mov    $0x4,%ebx
  409268:	49 ff c6             	inc    %r14
  40926b:	e9 c0 f1 ff ff       	jmpq   408430 <_Z6windowid+0xdf0>
  409270:	bb 03 00 00 00       	mov    $0x3,%ebx
  409275:	49 ff c6             	inc    %r14
  409278:	e9 b3 f1 ff ff       	jmpq   408430 <_Z6windowid+0xdf0>
  40927d:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  409281:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409288:	00 
  409289:	bf 01 00 00 00       	mov    $0x1,%edi
  40928e:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  409295:	00 00 
  409297:	e8 e4 9f ff ff       	callq  403280 <clock_gettime@plt>
  40929c:	4c 69 a4 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%r12
  4092a3:	00 00 ca 9a 3b 
  4092a8:	4c 03 a4 24 88 01 00 	add    0x188(%rsp),%r12
  4092af:	00 
  4092b0:	eb 92                	jmp    409244 <_Z6windowid+0x1c04>
  4092b2:	4d 85 e4             	test   %r12,%r12
  4092b5:	0f 85 3f 05 00 00    	jne    4097fa <_Z6windowid+0x21ba>
  4092bb:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4092c2:	00 
  4092c3:	e9 37 f0 ff ff       	jmpq   4082ff <_Z6windowid+0xcbf>
  4092c8:	31 d2                	xor    %edx,%edx
  4092ca:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  4092d1:	00 
  4092d2:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  4092d9:	00 
  4092da:	e8 61 a1 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4092df:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  4092e6:	00 
  4092e7:	48 89 c7             	mov    %rax,%rdi
  4092ea:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  4092f1:	00 
  4092f2:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  4092f9:	00 
  4092fa:	4c 89 e2             	mov    %r12,%rdx
  4092fd:	4c 89 ee             	mov    %r13,%rsi
  409300:	e8 4b 9f ff ff       	callq  403250 <memcpy@plt>
  409305:	4c 8b a4 24 d0 00 00 	mov    0xd0(%rsp),%r12
  40930c:	00 
  40930d:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  409314:	00 
  409315:	e9 e5 ef ff ff       	jmpq   4082ff <_Z6windowid+0xcbf>
  40931a:	4d 85 e4             	test   %r12,%r12
  40931d:	0f 85 e4 04 00 00    	jne    409807 <_Z6windowid+0x21c7>
  409323:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40932a:	00 
  40932b:	e9 a2 ee ff ff       	jmpq   4081d2 <_Z6windowid+0xb92>
  409330:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  409335:	31 d2                	xor    %edx,%edx
  409337:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40933e:	00 
  40933f:	e8 fc a0 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  409344:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40934b:	00 
  40934c:	48 89 c7             	mov    %rax,%rdi
  40934f:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  409356:	00 
  409357:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40935e:	00 
  40935f:	4c 89 f2             	mov    %r14,%rdx
  409362:	4c 89 ee             	mov    %r13,%rsi
  409365:	e8 e6 9e ff ff       	callq  403250 <memcpy@plt>
  40936a:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  409371:	00 
  409372:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  409379:	00 
  40937a:	e9 3e e5 ff ff       	jmpq   4078bd <_Z6windowid+0x27d>
  40937f:	4d 85 f6             	test   %r14,%r14
  409382:	0f 85 8c 04 00 00    	jne    409814 <_Z6windowid+0x21d4>
  409388:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40938f:	00 
  409390:	e9 28 e5 ff ff       	jmpq   4078bd <_Z6windowid+0x27d>
  409395:	48 85 c0             	test   %rax,%rax
  409398:	0f 85 83 04 00 00    	jne    409821 <_Z6windowid+0x21e1>
  40939e:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  4093a5:	00 
  4093a6:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  4093ab:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  4093b2:	00 
  4093b3:	e9 a5 e3 ff ff       	jmpq   40775d <_Z6windowid+0x11d>
  4093b8:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  4093bf:	00 
  4093c0:	31 d2                	xor    %edx,%edx
  4093c2:	48 89 c6             	mov    %rax,%rsi
  4093c5:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  4093cc:	00 
  4093cd:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  4093d2:	e8 69 a0 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4093d7:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4093de:	00 
  4093df:	48 89 c7             	mov    %rax,%rdi
  4093e2:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  4093e9:	00 
  4093ea:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  4093f1:	00 
  4093f2:	4c 89 f2             	mov    %r14,%rdx
  4093f5:	4c 89 ee             	mov    %r13,%rsi
  4093f8:	e8 53 9e ff ff       	callq  403250 <memcpy@plt>
  4093fd:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  409404:	00 
  409405:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40940c:	00 
  40940d:	e9 4b e3 ff ff       	jmpq   40775d <_Z6windowid+0x11d>
  409412:	48 85 c0             	test   %rax,%rax
  409415:	0f 85 20 04 00 00    	jne    40983b <_Z6windowid+0x21fb>
  40941b:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  409422:	00 
  409423:	e9 94 e2 ff ff       	jmpq   4076bc <_Z6windowid+0x7c>
  409428:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40942d:	31 d2                	xor    %edx,%edx
  40942f:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409436:	00 
  409437:	e8 04 a0 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40943c:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  409443:	00 
  409444:	48 89 c7             	mov    %rax,%rdi
  409447:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40944e:	00 
  40944f:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  409456:	00 
  409457:	4c 89 e2             	mov    %r12,%rdx
  40945a:	4c 89 ee             	mov    %r13,%rsi
  40945d:	e8 ee 9d ff ff       	callq  403250 <memcpy@plt>
  409462:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  409469:	00 
  40946a:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  409471:	00 
  409472:	e9 5b ed ff ff       	jmpq   4081d2 <_Z6windowid+0xb92>
  409477:	4d 85 e4             	test   %r12,%r12
  40947a:	0f 85 c8 03 00 00    	jne    409848 <_Z6windowid+0x2208>
  409480:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  409487:	00 
  409488:	e9 30 ea ff ff       	jmpq   407ebd <_Z6windowid+0x87d>
  40948d:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  409492:	31 d2                	xor    %edx,%edx
  409494:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40949b:	00 
  40949c:	e8 9f 9f ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4094a1:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  4094a8:	00 
  4094a9:	48 89 c7             	mov    %rax,%rdi
  4094ac:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  4094b3:	00 
  4094b4:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  4094bb:	00 
  4094bc:	4c 89 e2             	mov    %r12,%rdx
  4094bf:	4c 89 ee             	mov    %r13,%rsi
  4094c2:	e8 89 9d ff ff       	callq  403250 <memcpy@plt>
  4094c7:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  4094ce:	00 
  4094cf:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  4094d6:	00 
  4094d7:	e9 e1 e9 ff ff       	jmpq   407ebd <_Z6windowid+0x87d>
  4094dc:	4d 85 e4             	test   %r12,%r12
  4094df:	0f 85 70 03 00 00    	jne    409855 <_Z6windowid+0x2215>
  4094e5:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  4094ec:	00 
  4094ed:	e9 ed e7 ff ff       	jmpq   407cdf <_Z6windowid+0x69f>
  4094f2:	31 d2                	xor    %edx,%edx
  4094f4:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  4094fb:	00 
  4094fc:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  409503:	00 
  409504:	e8 37 9f ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  409509:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  409510:	00 
  409511:	48 89 c7             	mov    %rax,%rdi
  409514:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40951b:	00 
  40951c:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  409523:	00 
  409524:	4c 89 e2             	mov    %r12,%rdx
  409527:	4c 89 ee             	mov    %r13,%rsi
  40952a:	e8 21 9d ff ff       	callq  403250 <memcpy@plt>
  40952f:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  409536:	00 
  409537:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  40953e:	00 
  40953f:	e9 9b e7 ff ff       	jmpq   407cdf <_Z6windowid+0x69f>
  409544:	8b 77 20             	mov    0x20(%rdi),%esi
  409547:	83 ce 04             	or     $0x4,%esi
  40954a:	e8 b1 9e ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40954f:	e9 83 ea ff ff       	jmpq   407fd7 <_Z6windowid+0x997>
  409554:	c5 f9 6f 8c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm1
  40955b:	00 00 
  40955d:	c5 f9 7f 8c 24 30 01 	vmovdqa %xmm1,0x130(%rsp)
  409564:	00 00 
  409566:	e9 ab e8 ff ff       	jmpq   407e16 <_Z6windowid+0x7d6>
  40956b:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  409570:	c5 f9 7f bc 24 e0 00 	vmovdqa %xmm7,0xe0(%rsp)
  409577:	00 00 
  409579:	e9 44 e8 ff ff       	jmpq   407dc2 <_Z6windowid+0x782>
  40957e:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  409583:	c5 f9 7f bc 24 80 00 	vmovdqa %xmm7,0x80(%rsp)
  40958a:	00 00 
  40958c:	e9 5d e5 ff ff       	jmpq   407aee <_Z6windowid+0x4ae>
  409591:	c5 f9 6f 94 24 60 01 	vmovdqa 0x160(%rsp),%xmm2
  409598:	00 00 
  40959a:	c5 f9 7f 94 24 90 01 	vmovdqa %xmm2,0x190(%rsp)
  4095a1:	00 00 
  4095a3:	e9 a8 ec ff ff       	jmpq   408250 <_Z6windowid+0xc10>
  4095a8:	8b 77 20             	mov    0x20(%rdi),%esi
  4095ab:	83 ce 04             	or     $0x4,%esi
  4095ae:	e8 4d 9e ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  4095b3:	e9 cb fa ff ff       	jmpq   409083 <_Z6windowid+0x1a43>
  4095b8:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  4095bd:	88 84 24 e0 00 00 00 	mov    %al,0xe0(%rsp)
  4095c4:	4c 89 f8             	mov    %r15,%rax
  4095c7:	e9 43 f3 ff ff       	jmpq   40890f <_Z6windowid+0x12cf>
  4095cc:	4c 89 c9             	mov    %r9,%rcx
  4095cf:	31 d2                	xor    %edx,%edx
  4095d1:	31 f6                	xor    %esi,%esi
  4095d3:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  4095da:	00 
  4095db:	e8 c0 9d ff ff       	callq  4033a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  4095e0:	e9 a9 e7 ff ff       	jmpq   407d8e <_Z6windowid+0x74e>
  4095e5:	8d 58 06             	lea    0x6(%rax),%ebx
  4095e8:	e9 df e5 ff ff       	jmpq   407bcc <_Z6windowid+0x58c>
  4095ed:	8d 58 05             	lea    0x5(%rax),%ebx
  4095f0:	e9 d7 e5 ff ff       	jmpq   407bcc <_Z6windowid+0x58c>
  4095f5:	8d 58 06             	lea    0x6(%rax),%ebx
  4095f8:	e9 ef e3 ff ff       	jmpq   4079ec <_Z6windowid+0x3ac>
  4095fd:	8d 58 05             	lea    0x5(%rax),%ebx
  409600:	e9 e7 e3 ff ff       	jmpq   4079ec <_Z6windowid+0x3ac>
  409605:	8d 58 07             	lea    0x7(%rax),%ebx
  409608:	e9 df e3 ff ff       	jmpq   4079ec <_Z6windowid+0x3ac>
  40960d:	8d 58 07             	lea    0x7(%rax),%ebx
  409610:	e9 b7 e5 ff ff       	jmpq   407bcc <_Z6windowid+0x58c>
  409615:	4d 85 e4             	test   %r12,%r12
  409618:	0f 85 4b 01 00 00    	jne    409769 <_Z6windowid+0x2129>
  40961e:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  409625:	00 
  409626:	e9 04 f4 ff ff       	jmpq   408a2f <_Z6windowid+0x13ef>
  40962b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  409630:	31 d2                	xor    %edx,%edx
  409632:	48 8d b4 24 b0 00 00 	lea    0xb0(%rsp),%rsi
  409639:	00 
  40963a:	e8 01 9e ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40963f:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  409646:	00 
  409647:	48 89 c7             	mov    %rax,%rdi
  40964a:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
  409651:	00 
  409652:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  409659:	00 
  40965a:	4c 89 e2             	mov    %r12,%rdx
  40965d:	4c 89 ee             	mov    %r13,%rsi
  409660:	e8 eb 9b ff ff       	callq  403250 <memcpy@plt>
  409665:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
  40966c:	00 
  40966d:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  409674:	00 
  409675:	e9 b5 f3 ff ff       	jmpq   408a2f <_Z6windowid+0x13ef>
  40967a:	31 d2                	xor    %edx,%edx
  40967c:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409683:	00 
  409684:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  40968b:	00 
  40968c:	e8 af 9d ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  409691:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
  409698:	00 
  409699:	48 89 c7             	mov    %rax,%rdi
  40969c:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  4096a3:	00 
  4096a4:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
  4096ab:	00 
  4096ac:	4c 89 e2             	mov    %r12,%rdx
  4096af:	4c 89 ee             	mov    %r13,%rsi
  4096b2:	e8 99 9b ff ff       	callq  403250 <memcpy@plt>
  4096b7:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  4096be:	00 
  4096bf:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  4096c6:	00 
  4096c7:	e9 43 f2 ff ff       	jmpq   40890f <_Z6windowid+0x12cf>
  4096cc:	8b 77 20             	mov    0x20(%rdi),%esi
  4096cf:	83 ce 04             	or     $0x4,%esi
  4096d2:	e8 29 9d ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  4096d7:	e9 cb f4 ff ff       	jmpq   408ba7 <_Z6windowid+0x1567>
  4096dc:	c5 f9 6f b4 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm6
  4096e3:	00 00 
  4096e5:	c5 f9 7f b4 24 90 01 	vmovdqa %xmm6,0x190(%rsp)
  4096ec:	00 00 
  4096ee:	e9 95 f2 ff ff       	jmpq   408988 <_Z6windowid+0x1348>
  4096f3:	bb 02 00 00 00       	mov    $0x2,%ebx
  4096f8:	e9 cf e4 ff ff       	jmpq   407bcc <_Z6windowid+0x58c>
  4096fd:	bb 01 00 00 00       	mov    $0x1,%ebx
  409702:	e9 e5 e2 ff ff       	jmpq   4079ec <_Z6windowid+0x3ac>
  409707:	bb 02 00 00 00       	mov    $0x2,%ebx
  40970c:	e9 db e2 ff ff       	jmpq   4079ec <_Z6windowid+0x3ac>
  409711:	bb 03 00 00 00       	mov    $0x3,%ebx
  409716:	e9 d1 e2 ff ff       	jmpq   4079ec <_Z6windowid+0x3ac>
  40971b:	bb 04 00 00 00       	mov    $0x4,%ebx
  409720:	e9 c7 e2 ff ff       	jmpq   4079ec <_Z6windowid+0x3ac>
  409725:	bb 03 00 00 00       	mov    $0x3,%ebx
  40972a:	e9 9d e4 ff ff       	jmpq   407bcc <_Z6windowid+0x58c>
  40972f:	bb 04 00 00 00       	mov    $0x4,%ebx
  409734:	e9 93 e4 ff ff       	jmpq   407bcc <_Z6windowid+0x58c>
  409739:	bb 01 00 00 00       	mov    $0x1,%ebx
  40973e:	e9 89 e4 ff ff       	jmpq   407bcc <_Z6windowid+0x58c>
  409743:	bf 89 b0 40 00       	mov    $0x40b089,%edi
  409748:	e8 13 9c ff ff       	callq  403360 <_ZSt20__throw_out_of_rangePKc@plt>
  40974d:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  409752:	e8 99 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  409757:	bf 92 b0 40 00       	mov    $0x40b092,%edi
  40975c:	e8 ff 99 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  409761:	4c 89 ff             	mov    %r15,%rdi
  409764:	e9 43 ff ff ff       	jmpq   4096ac <_Z6windowid+0x206c>
  409769:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  409770:	00 
  409771:	e9 e4 fe ff ff       	jmpq   40965a <_Z6windowid+0x201a>
  409776:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  40977b:	e8 70 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  409780:	bf 89 b0 40 00       	mov    $0x40b089,%edi
  409785:	e8 16 9a ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40978a:	bf 89 b0 40 00       	mov    $0x40b089,%edi
  40978f:	e8 cc 9b ff ff       	callq  403360 <_ZSt20__throw_out_of_rangePKc@plt>
  409794:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  409799:	e8 52 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40979e:	bf 92 b0 40 00       	mov    $0x40b092,%edi
  4097a3:	e8 b8 99 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  4097a8:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4097ad:	e8 3e 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4097b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4097b8:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4097bd:	e8 2e 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4097c2:	bf 92 b0 40 00       	mov    $0x40b092,%edi
  4097c7:	e8 94 99 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  4097cc:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4097d1:	e8 1a 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4097d6:	bb 01 00 00 00       	mov    $0x1,%ebx
  4097db:	e9 dc f0 ff ff       	jmpq   4088bc <_Z6windowid+0x127c>
  4097e0:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  4097e7:	00 
  4097e8:	e9 f5 f5 ff ff       	jmpq   408de2 <_Z6windowid+0x17a2>
  4097ed:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  4097f4:	00 
  4097f5:	e9 3a f6 ff ff       	jmpq   408e34 <_Z6windowid+0x17f4>
  4097fa:	48 8d bc 24 30 01 00 	lea    0x130(%rsp),%rdi
  409801:	00 
  409802:	e9 f3 fa ff ff       	jmpq   4092fa <_Z6windowid+0x1cba>
  409807:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40980e:	00 
  40980f:	e9 43 fc ff ff       	jmpq   409457 <_Z6windowid+0x1e17>
  409814:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40981b:	00 
  40981c:	e9 3e fb ff ff       	jmpq   40935f <_Z6windowid+0x1d1f>
  409821:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  409828:	00 
  409829:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40982e:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  409835:	00 
  409836:	e9 b7 fb ff ff       	jmpq   4093f2 <_Z6windowid+0x1db2>
  40983b:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  409842:	00 
  409843:	e9 1a e0 ff ff       	jmpq   407862 <_Z6windowid+0x222>
  409848:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40984f:	00 
  409850:	e9 67 fc ff ff       	jmpq   4094bc <_Z6windowid+0x1e7c>
  409855:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40985c:	00 
  40985d:	e9 c2 fc ff ff       	jmpq   409524 <_Z6windowid+0x1ee4>
  409862:	bf 92 b0 40 00       	mov    $0x40b092,%edi
  409867:	e8 f4 98 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40986c:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  409871:	e8 7a 99 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  409876:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  40987b:	e8 70 99 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  409880:	bf 89 b0 40 00       	mov    $0x40b089,%edi
  409885:	e8 16 99 ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40988a:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  40988f:	e8 5c 99 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  409894:	48 89 c3             	mov    %rax,%rbx
  409897:	e9 04 9c ff ff       	jmpq   4034a0 <_Z6windowid.cold>
  40989c:	48 89 c3             	mov    %rax,%rbx
  40989f:	c5 f8 77             	vzeroupper 
  4098a2:	e9 75 9c ff ff       	jmpq   40351c <_Z6windowid.cold+0x7c>
  4098a7:	48 89 c3             	mov    %rax,%rbx
  4098aa:	e9 bc 9c ff ff       	jmpq   40356b <_Z6windowid.cold+0xcb>
  4098af:	48 89 c3             	mov    %rax,%rbx
  4098b2:	e9 ee 9c ff ff       	jmpq   4035a5 <_Z6windowid.cold+0x105>
  4098b7:	48 89 c3             	mov    %rax,%rbx
  4098ba:	c5 f8 77             	vzeroupper 
  4098bd:	e9 00 9d ff ff       	jmpq   4035c2 <_Z6windowid.cold+0x122>
  4098c2:	48 89 c3             	mov    %rax,%rbx
  4098c5:	e9 25 9c ff ff       	jmpq   4034ef <_Z6windowid.cold+0x4f>
  4098ca:	49 89 c4             	mov    %rax,%r12
  4098cd:	e9 34 9d ff ff       	jmpq   403606 <_Z6windowid.cold+0x166>
  4098d2:	48 89 c3             	mov    %rax,%rbx
  4098d5:	c5 f8 77             	vzeroupper 
  4098d8:	e9 83 9d ff ff       	jmpq   403660 <_Z6windowid.cold+0x1c0>
  4098dd:	48 89 c3             	mov    %rax,%rbx
  4098e0:	e9 6b 9d ff ff       	jmpq   403650 <_Z6windowid.cold+0x1b0>
  4098e5:	48 89 c3             	mov    %rax,%rbx
  4098e8:	e9 38 9e ff ff       	jmpq   403725 <_Z6windowid.cold+0x285>
  4098ed:	49 89 c4             	mov    %rax,%r12
  4098f0:	e9 45 9e ff ff       	jmpq   40373a <_Z6windowid.cold+0x29a>
  4098f5:	48 89 c3             	mov    %rax,%rbx
  4098f8:	c5 f8 77             	vzeroupper 
  4098fb:	e9 da 9b ff ff       	jmpq   4034da <_Z6windowid.cold+0x3a>
  409900:	48 89 c3             	mov    %rax,%rbx
  409903:	c5 f8 77             	vzeroupper 
  409906:	e9 eb 9d ff ff       	jmpq   4036f6 <_Z6windowid.cold+0x256>
  40990b:	49 89 c4             	mov    %rax,%r12
  40990e:	c5 f8 77             	vzeroupper 
  409911:	e9 41 9e ff ff       	jmpq   403757 <_Z6windowid.cold+0x2b7>
  409916:	48 89 c3             	mov    %rax,%rbx
  409919:	e9 6c 9e ff ff       	jmpq   40378a <_Z6windowid.cold+0x2ea>
  40991e:	48 89 c3             	mov    %rax,%rbx
  409921:	c5 f8 77             	vzeroupper 
  409924:	e9 59 9d ff ff       	jmpq   403682 <_Z6windowid.cold+0x1e2>
  409929:	48 89 c3             	mov    %rax,%rbx
  40992c:	c5 f8 77             	vzeroupper 
  40992f:	e9 d7 9e ff ff       	jmpq   40380b <_Z6windowid.cold+0x36b>
  409934:	48 89 c3             	mov    %rax,%rbx
  409937:	e9 84 9e ff ff       	jmpq   4037c0 <_Z6windowid.cold+0x320>
  40993c:	48 89 c7             	mov    %rax,%rdi
  40993f:	e9 d6 9e ff ff       	jmpq   40381a <_Z6windowid.cold+0x37a>
  409944:	48 89 c3             	mov    %rax,%rbx
  409947:	c5 f8 77             	vzeroupper 
  40994a:	e9 a3 9e ff ff       	jmpq   4037f2 <_Z6windowid.cold+0x352>
  40994f:	48 89 c3             	mov    %rax,%rbx
  409952:	c5 f8 77             	vzeroupper 
  409955:	e9 76 9e ff ff       	jmpq   4037d0 <_Z6windowid.cold+0x330>
  40995a:	48 89 c3             	mov    %rax,%rbx
  40995d:	e9 ca 9e ff ff       	jmpq   40382c <_Z6windowid.cold+0x38c>
  409962:	48 89 c3             	mov    %rax,%rbx
  409965:	e9 d4 9e ff ff       	jmpq   40383e <_Z6windowid.cold+0x39e>
  40996a:	48 89 c3             	mov    %rax,%rbx
  40996d:	e9 de 9e ff ff       	jmpq   403850 <_Z6windowid.cold+0x3b0>
  409972:	48 89 c3             	mov    %rax,%rbx
  409975:	c5 f8 77             	vzeroupper 
  409978:	e9 c6 9b ff ff       	jmpq   403543 <_Z6windowid.cold+0xa3>
  40997d:	48 89 c3             	mov    %rax,%rbx
  409980:	e9 f9 9e ff ff       	jmpq   40387e <_Z6windowid.cold+0x3de>
  409985:	48 89 c3             	mov    %rax,%rbx
  409988:	c5 f8 77             	vzeroupper 
  40998b:	e9 40 9d ff ff       	jmpq   4036d0 <_Z6windowid.cold+0x230>
  409990:	48 89 c3             	mov    %rax,%rbx
  409993:	c5 f8 77             	vzeroupper 
  409996:	e9 00 9f ff ff       	jmpq   40389b <_Z6windowid.cold+0x3fb>
  40999b:	48 89 c3             	mov    %rax,%rbx
  40999e:	e9 34 9f ff ff       	jmpq   4038d7 <_Z6windowid.cold+0x437>
  4099a3:	48 89 c3             	mov    %rax,%rbx
  4099a6:	e9 3e 9f ff ff       	jmpq   4038e9 <_Z6windowid.cold+0x449>
  4099ab:	48 89 c3             	mov    %rax,%rbx
  4099ae:	e9 8e 9f ff ff       	jmpq   403941 <_Z6windowid.cold+0x4a1>
  4099b3:	48 89 c3             	mov    %rax,%rbx
  4099b6:	c5 f8 77             	vzeroupper 
  4099b9:	e9 13 a0 ff ff       	jmpq   4039d1 <_Z6windowid.cold+0x531>
  4099be:	48 89 c3             	mov    %rax,%rbx
  4099c1:	c5 f8 77             	vzeroupper 
  4099c4:	e9 58 a0 ff ff       	jmpq   403a21 <_Z6windowid.cold+0x581>
  4099c9:	48 89 c3             	mov    %rax,%rbx
  4099cc:	e9 2f a0 ff ff       	jmpq   403a00 <_Z6windowid.cold+0x560>
  4099d1:	48 89 c3             	mov    %rax,%rbx
  4099d4:	e9 77 a0 ff ff       	jmpq   403a50 <_Z6windowid.cold+0x5b0>
  4099d9:	e9 c3 a0 ff ff       	jmpq   403aa1 <_Z6windowid.cold+0x601>
  4099de:	48 89 c3             	mov    %rax,%rbx
  4099e1:	c5 f8 77             	vzeroupper 
  4099e4:	e9 77 a0 ff ff       	jmpq   403a60 <_Z6windowid.cold+0x5c0>
  4099e9:	48 89 c3             	mov    %rax,%rbx
  4099ec:	c5 f8 77             	vzeroupper 
  4099ef:	e9 b1 9c ff ff       	jmpq   4036a5 <_Z6windowid.cold+0x205>
  4099f4:	48 89 c3             	mov    %rax,%rbx
  4099f7:	e9 61 a2 ff ff       	jmpq   403c5d <_Z6windowid.cold+0x7bd>
  4099fc:	48 89 c3             	mov    %rax,%rbx
  4099ff:	e9 59 a2 ff ff       	jmpq   403c5d <_Z6windowid.cold+0x7bd>
  409a04:	48 89 c3             	mov    %rax,%rbx
  409a07:	c5 f8 77             	vzeroupper 
  409a0a:	e9 9a 9f ff ff       	jmpq   4039a9 <_Z6windowid.cold+0x509>
  409a0f:	48 89 c3             	mov    %rax,%rbx
  409a12:	c5 f8 77             	vzeroupper 
  409a15:	e9 07 a1 ff ff       	jmpq   403b21 <_Z6windowid.cold+0x681>
  409a1a:	c5 f8 77             	vzeroupper 
  409a1d:	e9 dc a0 ff ff       	jmpq   403afe <_Z6windowid.cold+0x65e>
  409a22:	49 89 c5             	mov    %rax,%r13
  409a25:	e9 c1 a0 ff ff       	jmpq   403aeb <_Z6windowid.cold+0x64b>
  409a2a:	48 89 c3             	mov    %rax,%rbx
  409a2d:	e9 0d a1 ff ff       	jmpq   403b3f <_Z6windowid.cold+0x69f>
  409a32:	48 89 c7             	mov    %rax,%rdi
  409a35:	e9 1a a1 ff ff       	jmpq   403b54 <_Z6windowid.cold+0x6b4>
  409a3a:	48 89 c7             	mov    %rax,%rdi
  409a3d:	e9 24 a1 ff ff       	jmpq   403b66 <_Z6windowid.cold+0x6c6>
  409a42:	48 89 c3             	mov    %rax,%rbx
  409a45:	e9 2e a1 ff ff       	jmpq   403b78 <_Z6windowid.cold+0x6d8>
  409a4a:	48 89 c3             	mov    %rax,%rbx
  409a4d:	c5 f8 77             	vzeroupper 
  409a50:	e9 72 a1 ff ff       	jmpq   403bc7 <_Z6windowid.cold+0x727>
  409a55:	48 89 c3             	mov    %rax,%rbx
  409a58:	e9 d2 a1 ff ff       	jmpq   403c2f <_Z6windowid.cold+0x78f>
  409a5d:	48 89 c3             	mov    %rax,%rbx
  409a60:	e9 17 9f ff ff       	jmpq   40397c <_Z6windowid.cold+0x4dc>
  409a65:	48 89 c3             	mov    %rax,%rbx
  409a68:	e9 39 a1 ff ff       	jmpq   403ba6 <_Z6windowid.cold+0x706>
  409a6d:	48 89 c3             	mov    %rax,%rbx
  409a70:	c5 f8 77             	vzeroupper 
  409a73:	e9 9a 9e ff ff       	jmpq   403912 <_Z6windowid.cold+0x472>
  409a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  409a7f:	00 

0000000000409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>:
  409a80:	53                   	push   %rbx
  409a81:	48 89 fb             	mov    %rdi,%rbx
  409a84:	48 8b 77 20          	mov    0x20(%rdi),%rsi
  409a88:	48 85 f6             	test   %rsi,%rsi
  409a8b:	74 09                	je     409a96 <_ZNSt10filesystem7__cxx114pathD1Ev+0x16>
  409a8d:	48 8d 7f 20          	lea    0x20(%rdi),%rdi
  409a91:	e8 0a 96 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  409a96:	48 8b 3b             	mov    (%rbx),%rdi
  409a99:	48 8d 43 10          	lea    0x10(%rbx),%rax
  409a9d:	48 39 c7             	cmp    %rax,%rdi
  409aa0:	74 0e                	je     409ab0 <_ZNSt10filesystem7__cxx114pathD1Ev+0x30>
  409aa2:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  409aa6:	5b                   	pop    %rbx
  409aa7:	48 ff c6             	inc    %rsi
  409aaa:	e9 01 98 ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  409aaf:	90                   	nop
  409ab0:	5b                   	pop    %rbx
  409ab1:	c3                   	retq   
  409ab2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409ab9:	00 00 00 
  409abc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000409ac0 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>:
  409ac0:	41 57                	push   %r15
  409ac2:	49 89 ff             	mov    %rdi,%r15
  409ac5:	41 56                	push   %r14
  409ac7:	41 55                	push   %r13
  409ac9:	49 89 f5             	mov    %rsi,%r13
  409acc:	41 54                	push   %r12
  409ace:	49 89 cc             	mov    %rcx,%r12
  409ad1:	55                   	push   %rbp
  409ad2:	48 89 d5             	mov    %rdx,%rbp
  409ad5:	53                   	push   %rbx
  409ad6:	48 83 ec 28          	sub    $0x28,%rsp
  409ada:	44 89 44 24 0c       	mov    %r8d,0xc(%rsp)
  409adf:	e8 5c 95 ff ff       	callq  403040 <__errno_location@plt>
  409ae4:	44 8b 30             	mov    (%rax),%r14d
  409ae7:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  409aed:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  409af1:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  409af6:	48 89 ef             	mov    %rbp,%rdi
  409af9:	48 89 c3             	mov    %rax,%rbx
  409afc:	41 ff d7             	callq  *%r15
  409aff:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  409b04:	48 39 e9             	cmp    %rbp,%rcx
  409b07:	74 3f                	je     409b48 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x88>
  409b09:	8b 33                	mov    (%rbx),%esi
  409b0b:	83 fe 22             	cmp    $0x22,%esi
  409b0e:	74 30                	je     409b40 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  409b10:	ba 00 00 00 80       	mov    $0x80000000,%edx
  409b15:	48 01 c2             	add    %rax,%rdx
  409b18:	48 c1 ea 20          	shr    $0x20,%rdx
  409b1c:	75 22                	jne    409b40 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  409b1e:	4d 85 e4             	test   %r12,%r12
  409b21:	74 07                	je     409b2a <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x6a>
  409b23:	48 29 e9             	sub    %rbp,%rcx
  409b26:	49 89 0c 24          	mov    %rcx,(%r12)
  409b2a:	85 f6                	test   %esi,%esi
  409b2c:	75 03                	jne    409b31 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x71>
  409b2e:	44 89 33             	mov    %r14d,(%rbx)
  409b31:	48 83 c4 28          	add    $0x28,%rsp
  409b35:	5b                   	pop    %rbx
  409b36:	5d                   	pop    %rbp
  409b37:	41 5c                	pop    %r12
  409b39:	41 5d                	pop    %r13
  409b3b:	41 5e                	pop    %r14
  409b3d:	41 5f                	pop    %r15
  409b3f:	c3                   	retq   
  409b40:	4c 89 ef             	mov    %r13,%rdi
  409b43:	e8 18 98 ff ff       	callq  403360 <_ZSt20__throw_out_of_rangePKc@plt>
  409b48:	4c 89 ef             	mov    %r13,%rdi
  409b4b:	e8 50 96 ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  409b50:	48 89 c7             	mov    %rax,%rdi
  409b53:	83 3b 00             	cmpl   $0x0,(%rbx)
  409b56:	75 03                	jne    409b5b <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x9b>
  409b58:	44 89 33             	mov    %r14d,(%rbx)
  409b5b:	c5 f8 77             	vzeroupper 
  409b5e:	e8 cd 98 ff ff       	callq  403430 <_Unwind_Resume@plt>
  409b63:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409b6a:	00 00 00 
  409b6d:	0f 1f 00             	nopl   (%rax)

0000000000409b70 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>:
  409b70:	c4 e2 7d 59 1d 07 19 	vpbroadcastq 0x1907(%rip),%ymm3        # 40b480 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  409b77:	00 00 
  409b79:	c4 e2 7d 59 25 06 19 	vpbroadcastq 0x1906(%rip),%ymm4        # 40b488 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  409b80:	00 00 
  409b82:	c4 e2 7d 59 2d 05 19 	vpbroadcastq 0x1905(%rip),%ymm5        # 40b490 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  409b89:	00 00 
  409b8b:	c4 e2 7d 59 35 04 19 	vpbroadcastq 0x1904(%rip),%ymm6        # 40b498 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  409b92:	00 00 
  409b94:	48 89 f8             	mov    %rdi,%rax
  409b97:	48 8d 8f e0 04 00 00 	lea    0x4e0(%rdi),%rcx
  409b9e:	48 89 fa             	mov    %rdi,%rdx
  409ba1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  409ba8:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  409bad:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  409bb1:	48 83 c2 20          	add    $0x20,%rdx
  409bb5:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  409bb9:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  409bbe:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  409bc2:	c5 f5 ef 8a c0 04 00 	vpxor  0x4c0(%rdx),%ymm1,%ymm1
  409bc9:	00 
  409bca:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  409bd0:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  409bd4:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  409bda:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  409bdf:	48 39 ca             	cmp    %rcx,%rdx
  409be2:	75 c4                	jne    409ba8 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x38>
  409be4:	48 8d 88 a0 09 00 00 	lea    0x9a0(%rax),%rcx
  409beb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  409bf0:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  409bf5:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  409bf9:	48 83 c2 20          	add    $0x20,%rdx
  409bfd:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  409c01:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  409c06:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  409c0a:	c5 f5 ef 8a 00 fb ff 	vpxor  -0x500(%rdx),%ymm1,%ymm1
  409c11:	ff 
  409c12:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  409c18:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  409c1c:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  409c22:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  409c27:	48 39 d1             	cmp    %rdx,%rcx
  409c2a:	75 c4                	jne    409bf0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x80>
  409c2c:	c4 e2 79 59 05 4b 18 	vpbroadcastq 0x184b(%rip),%xmm0        # 40b480 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  409c33:	00 00 
  409c35:	c4 e2 79 59 0d 4a 18 	vpbroadcastq 0x184a(%rip),%xmm1        # 40b488 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  409c3c:	00 00 
  409c3e:	c5 f9 db 80 a0 09 00 	vpand  0x9a0(%rax),%xmm0,%xmm0
  409c45:	00 
  409c46:	c5 f1 db 88 a8 09 00 	vpand  0x9a8(%rax),%xmm1,%xmm1
  409c4d:	00 
  409c4e:	48 8b b0 b8 09 00 00 	mov    0x9b8(%rax),%rsi
  409c55:	48 8b 90 b0 09 00 00 	mov    0x9b0(%rax),%rdx
  409c5c:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  409c60:	48 89 f1             	mov    %rsi,%rcx
  409c63:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
  409c69:	c5 f1 73 d0 01       	vpsrlq $0x1,%xmm0,%xmm1
  409c6e:	48 81 e2 00 00 00 80 	and    $0xffffffff80000000,%rdx
  409c75:	62 f1 fd 18 db 05 11 	vpandq 0x1811(%rip){1to2},%xmm0,%xmm0        # 40b490 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  409c7c:	18 00 00 
  409c7f:	c5 f1 ef 88 c0 04 00 	vpxor  0x4c0(%rax),%xmm1,%xmm1
  409c86:	00 
  409c87:	48 09 ca             	or     %rcx,%rdx
  409c8a:	62 f2 fe 08 27 c8    	vptestnmq %xmm0,%xmm0,%k1
  409c90:	48 89 d1             	mov    %rdx,%rcx
  409c93:	48 d1 e9             	shr    %rcx
  409c96:	62 f1 f5 18 ef 15 f8 	vpxorq 0x17f8(%rip){1to2},%xmm1,%xmm2        # 40b498 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  409c9d:	17 00 00 
  409ca0:	62 f2 ed 09 64 c1    	vpblendmq %xmm1,%xmm2,%xmm0{%k1}
  409ca6:	48 33 88 d0 04 00 00 	xor    0x4d0(%rax),%rcx
  409cad:	83 e2 01             	and    $0x1,%edx
  409cb0:	c5 fa 7f 80 a0 09 00 	vmovdqu %xmm0,0x9a0(%rax)
  409cb7:	00 
  409cb8:	74 0d                	je     409cc7 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x157>
  409cba:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  409cc1:	6f 02 b5 
  409cc4:	48 31 d1             	xor    %rdx,%rcx
  409cc7:	48 8b 10             	mov    (%rax),%rdx
  409cca:	48 81 e6 00 00 00 80 	and    $0xffffffff80000000,%rsi
  409cd1:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
  409cd7:	48 09 f2             	or     %rsi,%rdx
  409cda:	48 89 88 b0 09 00 00 	mov    %rcx,0x9b0(%rax)
  409ce1:	48 89 d1             	mov    %rdx,%rcx
  409ce4:	48 d1 e9             	shr    %rcx
  409ce7:	48 33 88 d8 04 00 00 	xor    0x4d8(%rax),%rcx
  409cee:	83 e2 01             	and    $0x1,%edx
  409cf1:	74 0d                	je     409d00 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x190>
  409cf3:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  409cfa:	6f 02 b5 
  409cfd:	48 31 d1             	xor    %rdx,%rcx
  409d00:	48 89 88 b8 09 00 00 	mov    %rcx,0x9b8(%rax)
  409d07:	48 c7 80 c0 09 00 00 	movq   $0x0,0x9c0(%rax)
  409d0e:	00 00 00 00 
  409d12:	c5 f8 77             	vzeroupper 
  409d15:	c3                   	retq   
  409d16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409d1d:	00 00 00 

0000000000409d20 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>:
  409d20:	41 57                	push   %r15
  409d22:	41 56                	push   %r14
  409d24:	41 55                	push   %r13
  409d26:	41 54                	push   %r12
  409d28:	55                   	push   %rbp
  409d29:	53                   	push   %rbx
  409d2a:	48 83 ec 28          	sub    $0x28,%rsp
  409d2e:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  409d33:	48 39 fe             	cmp    %rdi,%rsi
  409d36:	0f 84 99 01 00 00    	je     409ed5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  409d3c:	48 89 f1             	mov    %rsi,%rcx
  409d3f:	48 29 f9             	sub    %rdi,%rcx
  409d42:	48 c1 f9 03          	sar    $0x3,%rcx
  409d46:	48 89 c8             	mov    %rcx,%rax
  409d49:	48 89 d3             	mov    %rdx,%rbx
  409d4c:	48 f7 e1             	mul    %rcx
  409d4f:	48 89 fd             	mov    %rdi,%rbp
  409d52:	4c 8d 6f 08          	lea    0x8(%rdi),%r13
  409d56:	0f 90 c0             	seto   %al
  409d59:	0f b6 c0             	movzbl %al,%eax
  409d5c:	48 85 c0             	test   %rax,%rax
  409d5f:	0f 84 1b 02 00 00    	je     409f80 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x260>
  409d65:	4c 3b 6c 24 08       	cmp    0x8(%rsp),%r13
  409d6a:	0f 84 65 01 00 00    	je     409ed5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  409d70:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  409d77:	55 55 55 
  409d7a:	49 bc 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r12
  409d81:	7f d6 71 
  409d84:	49 bf 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r15
  409d8b:	ee f7 ff 
  409d8e:	66 90                	xchg   %ax,%ax
  409d90:	4c 89 e8             	mov    %r13,%rax
  409d93:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  409d9a:	48 29 e8             	sub    %rbp,%rax
  409d9d:	48 c1 f8 03          	sar    $0x3,%rax
  409da1:	48 89 d1             	mov    %rdx,%rcx
  409da4:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  409da8:	0f 84 3a 01 00 00    	je     409ee8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1c8>
  409dae:	4c 8d 70 01          	lea    0x1(%rax),%r14
  409db2:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  409db9:	0f 87 79 01 00 00    	ja     409f38 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x218>
  409dbf:	48 8b 34 d3          	mov    (%rbx,%rdx,8),%rsi
  409dc3:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
  409dc7:	48 89 f2             	mov    %rsi,%rdx
  409dca:	48 c1 ea 1d          	shr    $0x1d,%rdx
  409dce:	4c 21 ca             	and    %r9,%rdx
  409dd1:	48 31 d6             	xor    %rdx,%rsi
  409dd4:	48 89 f2             	mov    %rsi,%rdx
  409dd7:	48 c1 e2 11          	shl    $0x11,%rdx
  409ddb:	4c 21 e2             	and    %r12,%rdx
  409dde:	48 31 d6             	xor    %rdx,%rsi
  409de1:	48 89 f2             	mov    %rsi,%rdx
  409de4:	48 c1 e2 25          	shl    $0x25,%rdx
  409de8:	4c 21 fa             	and    %r15,%rdx
  409deb:	48 31 d6             	xor    %rdx,%rsi
  409dee:	48 89 f2             	mov    %rsi,%rdx
  409df1:	48 c1 ea 2b          	shr    $0x2b,%rdx
  409df5:	48 31 d6             	xor    %rdx,%rsi
  409df8:	48 89 f2             	mov    %rsi,%rdx
  409dfb:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  409e00:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  409e07:	49 39 f6             	cmp    %rsi,%r14
  409e0a:	0f 86 a0 00 00 00    	jbe    409eb0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  409e10:	48 f7 d0             	not    %rax
  409e13:	31 d2                	xor    %edx,%edx
  409e15:	49 f7 f6             	div    %r14
  409e18:	49 89 d0             	mov    %rdx,%r8
  409e1b:	48 39 d6             	cmp    %rdx,%rsi
  409e1e:	72 55                	jb     409e75 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x155>
  409e20:	e9 8b 00 00 00       	jmpq   409eb0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  409e25:	0f 1f 00             	nopl   (%rax)
  409e28:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  409e2c:	48 8d 48 01          	lea    0x1(%rax),%rcx
  409e30:	48 89 f0             	mov    %rsi,%rax
  409e33:	48 c1 e8 1d          	shr    $0x1d,%rax
  409e37:	4c 21 c8             	and    %r9,%rax
  409e3a:	48 31 c6             	xor    %rax,%rsi
  409e3d:	48 89 f0             	mov    %rsi,%rax
  409e40:	48 c1 e0 11          	shl    $0x11,%rax
  409e44:	4c 21 e0             	and    %r12,%rax
  409e47:	48 31 c6             	xor    %rax,%rsi
  409e4a:	48 89 f0             	mov    %rsi,%rax
  409e4d:	48 c1 e0 25          	shl    $0x25,%rax
  409e51:	4c 21 f8             	and    %r15,%rax
  409e54:	48 31 c6             	xor    %rax,%rsi
  409e57:	48 89 f0             	mov    %rsi,%rax
  409e5a:	48 c1 e8 2b          	shr    $0x2b,%rax
  409e5e:	48 31 c6             	xor    %rax,%rsi
  409e61:	48 89 f2             	mov    %rsi,%rdx
  409e64:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  409e69:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  409e70:	49 39 f0             	cmp    %rsi,%r8
  409e73:	76 3b                	jbe    409eb0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  409e75:	48 89 c8             	mov    %rcx,%rax
  409e78:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  409e7f:	76 a7                	jbe    409e28 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  409e81:	48 89 df             	mov    %rbx,%rdi
  409e84:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  409e89:	e8 e2 fc ff ff       	callq  409b70 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  409e8e:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  409e95:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  409e9a:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  409ea1:	55 55 55 
  409ea4:	eb 82                	jmp    409e28 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  409ea6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409ead:	00 00 00 
  409eb0:	48 89 f8             	mov    %rdi,%rax
  409eb3:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  409eb8:	48 8b 08             	mov    (%rax),%rcx
  409ebb:	49 8b 55 00          	mov    0x0(%r13),%rdx
  409ebf:	49 89 4d 00          	mov    %rcx,0x0(%r13)
  409ec3:	49 83 c5 08          	add    $0x8,%r13
  409ec7:	48 89 10             	mov    %rdx,(%rax)
  409eca:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  409ecf:	0f 85 bb fe ff ff    	jne    409d90 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x70>
  409ed5:	48 83 c4 28          	add    $0x28,%rsp
  409ed9:	5b                   	pop    %rbx
  409eda:	5d                   	pop    %rbp
  409edb:	41 5c                	pop    %r12
  409edd:	41 5d                	pop    %r13
  409edf:	41 5e                	pop    %r14
  409ee1:	41 5f                	pop    %r15
  409ee3:	c3                   	retq   
  409ee4:	0f 1f 40 00          	nopl   0x0(%rax)
  409ee8:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  409eef:	77 6f                	ja     409f60 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x240>
  409ef1:	48 8d 41 01          	lea    0x1(%rcx),%rax
  409ef5:	48 89 83 c0 09 00 00 	mov    %rax,0x9c0(%rbx)
  409efc:	48 8b 04 cb          	mov    (%rbx,%rcx,8),%rax
  409f00:	48 89 c2             	mov    %rax,%rdx
  409f03:	48 c1 ea 1d          	shr    $0x1d,%rdx
  409f07:	4c 21 ca             	and    %r9,%rdx
  409f0a:	48 31 d0             	xor    %rdx,%rax
  409f0d:	48 89 c2             	mov    %rax,%rdx
  409f10:	48 c1 e2 11          	shl    $0x11,%rdx
  409f14:	4c 21 e2             	and    %r12,%rdx
  409f17:	48 31 d0             	xor    %rdx,%rax
  409f1a:	48 89 c2             	mov    %rax,%rdx
  409f1d:	48 c1 e2 25          	shl    $0x25,%rdx
  409f21:	4c 21 fa             	and    %r15,%rdx
  409f24:	48 31 d0             	xor    %rdx,%rax
  409f27:	48 89 c2             	mov    %rax,%rdx
  409f2a:	48 c1 ea 2b          	shr    $0x2b,%rdx
  409f2e:	48 31 d0             	xor    %rdx,%rax
  409f31:	eb 80                	jmp    409eb3 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x193>
  409f33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  409f38:	48 89 df             	mov    %rbx,%rdi
  409f3b:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  409f40:	e8 2b fc ff ff       	callq  409b70 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  409f45:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  409f4c:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  409f51:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  409f58:	55 55 55 
  409f5b:	e9 5f fe ff ff       	jmpq   409dbf <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x9f>
  409f60:	48 89 df             	mov    %rbx,%rdi
  409f63:	e8 08 fc ff ff       	callq  409b70 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  409f68:	48 8b 8b c0 09 00 00 	mov    0x9c0(%rbx),%rcx
  409f6f:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  409f76:	55 55 55 
  409f79:	e9 73 ff ff ff       	jmpq   409ef1 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1d1>
  409f7e:	66 90                	xchg   %ax,%ax
  409f80:	83 e1 01             	and    $0x1,%ecx
  409f83:	0f 84 35 02 00 00    	je     40a1be <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x49e>
  409f89:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  409f8e:	0f 84 41 ff ff ff    	je     409ed5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  409f94:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  409f9b:	55 55 55 
  409f9e:	49 be 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r14
  409fa5:	7f d6 71 
  409fa8:	49 bc 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r12
  409faf:	ee f7 ff 
  409fb2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  409fb8:	4d 89 ef             	mov    %r13,%r15
  409fbb:	49 29 ef             	sub    %rbp,%r15
  409fbe:	49 c1 ff 03          	sar    $0x3,%r15
  409fc2:	49 8d 47 02          	lea    0x2(%r15),%rax
  409fc6:	49 ff c7             	inc    %r15
  409fc9:	4c 0f af f8          	imul   %rax,%r15
  409fcd:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  409fd2:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  409fd9:	4d 85 ff             	test   %r15,%r15
  409fdc:	0f 84 46 01 00 00    	je     40a128 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x408>
  409fe2:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  409fe8:	0f 87 8a 01 00 00    	ja     40a178 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x458>
  409fee:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  409ff2:	48 8d 48 01          	lea    0x1(%rax),%rcx
  409ff6:	48 89 f0             	mov    %rsi,%rax
  409ff9:	48 c1 e8 1d          	shr    $0x1d,%rax
  409ffd:	4c 21 d0             	and    %r10,%rax
  40a000:	48 31 c6             	xor    %rax,%rsi
  40a003:	48 89 f0             	mov    %rsi,%rax
  40a006:	48 c1 e0 11          	shl    $0x11,%rax
  40a00a:	4c 21 f0             	and    %r14,%rax
  40a00d:	48 31 c6             	xor    %rax,%rsi
  40a010:	48 89 f0             	mov    %rsi,%rax
  40a013:	48 c1 e0 25          	shl    $0x25,%rax
  40a017:	4c 21 e0             	and    %r12,%rax
  40a01a:	48 31 c6             	xor    %rax,%rsi
  40a01d:	48 89 f0             	mov    %rsi,%rax
  40a020:	48 c1 e8 2b          	shr    $0x2b,%rax
  40a024:	48 31 c6             	xor    %rax,%rsi
  40a027:	48 89 f2             	mov    %rsi,%rdx
  40a02a:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40a02f:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40a036:	49 39 f7             	cmp    %rsi,%r15
  40a039:	0f 86 a1 00 00 00    	jbe    40a0e0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40a03f:	4c 89 f8             	mov    %r15,%rax
  40a042:	48 f7 d8             	neg    %rax
  40a045:	31 d2                	xor    %edx,%edx
  40a047:	49 f7 f7             	div    %r15
  40a04a:	49 89 d0             	mov    %rdx,%r8
  40a04d:	48 39 d6             	cmp    %rdx,%rsi
  40a050:	72 5b                	jb     40a0ad <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x38d>
  40a052:	e9 89 00 00 00       	jmpq   40a0e0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40a057:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40a05e:	00 00 
  40a060:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40a064:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40a068:	48 89 f0             	mov    %rsi,%rax
  40a06b:	48 c1 e8 1d          	shr    $0x1d,%rax
  40a06f:	4c 21 d0             	and    %r10,%rax
  40a072:	48 31 c6             	xor    %rax,%rsi
  40a075:	48 89 f0             	mov    %rsi,%rax
  40a078:	48 c1 e0 11          	shl    $0x11,%rax
  40a07c:	4c 21 f0             	and    %r14,%rax
  40a07f:	48 31 c6             	xor    %rax,%rsi
  40a082:	48 89 f0             	mov    %rsi,%rax
  40a085:	48 c1 e0 25          	shl    $0x25,%rax
  40a089:	4c 21 e0             	and    %r12,%rax
  40a08c:	48 31 c6             	xor    %rax,%rsi
  40a08f:	48 89 f0             	mov    %rsi,%rax
  40a092:	48 c1 e8 2b          	shr    $0x2b,%rax
  40a096:	48 31 c6             	xor    %rax,%rsi
  40a099:	48 89 f2             	mov    %rsi,%rdx
  40a09c:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40a0a1:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40a0a8:	49 39 f0             	cmp    %rsi,%r8
  40a0ab:	76 33                	jbe    40a0e0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40a0ad:	48 89 c8             	mov    %rcx,%rax
  40a0b0:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  40a0b7:	76 a7                	jbe    40a060 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40a0b9:	48 89 df             	mov    %rbx,%rdi
  40a0bc:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  40a0c1:	e8 aa fa ff ff       	callq  409b70 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40a0c6:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40a0cd:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  40a0d2:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40a0d9:	55 55 55 
  40a0dc:	eb 82                	jmp    40a060 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40a0de:	66 90                	xchg   %ax,%ax
  40a0e0:	48 89 f8             	mov    %rdi,%rax
  40a0e3:	31 d2                	xor    %edx,%edx
  40a0e5:	48 f7 74 24 10       	divq   0x10(%rsp)
  40a0ea:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40a0ee:	49 83 c5 10          	add    $0x10,%r13
  40a0f2:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  40a0f7:	48 8b 30             	mov    (%rax),%rsi
  40a0fa:	49 89 75 f0          	mov    %rsi,-0x10(%r13)
  40a0fe:	48 89 08             	mov    %rcx,(%rax)
  40a101:	48 8d 44 d5 00       	lea    0x0(%rbp,%rdx,8),%rax
  40a106:	48 8b 08             	mov    (%rax),%rcx
  40a109:	49 8b 55 f8          	mov    -0x8(%r13),%rdx
  40a10d:	49 89 4d f8          	mov    %rcx,-0x8(%r13)
  40a111:	48 89 10             	mov    %rdx,(%rax)
  40a114:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40a119:	0f 85 99 fe ff ff    	jne    409fb8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x298>
  40a11f:	e9 b1 fd ff ff       	jmpq   409ed5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40a124:	0f 1f 40 00          	nopl   0x0(%rax)
  40a128:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40a12e:	77 70                	ja     40a1a0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x480>
  40a130:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40a134:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40a138:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40a13f:	48 89 c2             	mov    %rax,%rdx
  40a142:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40a146:	4c 21 d2             	and    %r10,%rdx
  40a149:	48 31 d0             	xor    %rdx,%rax
  40a14c:	48 89 c2             	mov    %rax,%rdx
  40a14f:	48 c1 e2 11          	shl    $0x11,%rdx
  40a153:	4c 21 f2             	and    %r14,%rdx
  40a156:	48 31 d0             	xor    %rdx,%rax
  40a159:	48 89 c2             	mov    %rax,%rdx
  40a15c:	48 c1 e2 25          	shl    $0x25,%rdx
  40a160:	4c 21 e2             	and    %r12,%rdx
  40a163:	48 31 d0             	xor    %rdx,%rax
  40a166:	48 89 c2             	mov    %rax,%rdx
  40a169:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40a16d:	48 31 d0             	xor    %rdx,%rax
  40a170:	e9 6e ff ff ff       	jmpq   40a0e3 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c3>
  40a175:	0f 1f 00             	nopl   (%rax)
  40a178:	48 89 df             	mov    %rbx,%rdi
  40a17b:	e8 f0 f9 ff ff       	callq  409b70 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40a180:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40a187:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40a18e:	55 55 55 
  40a191:	e9 58 fe ff ff       	jmpq   409fee <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x2ce>
  40a196:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a19d:	00 00 00 
  40a1a0:	48 89 df             	mov    %rbx,%rdi
  40a1a3:	e8 c8 f9 ff ff       	callq  409b70 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40a1a8:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40a1af:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40a1b6:	55 55 55 
  40a1b9:	e9 72 ff ff ff       	jmpq   40a130 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x410>
  40a1be:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40a1c5:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40a1cb:	0f 87 81 00 00 00    	ja     40a252 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x532>
  40a1d1:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40a1d5:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40a1d9:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40a1e0:	48 89 c2             	mov    %rax,%rdx
  40a1e3:	48 b9 55 55 55 55 55 	movabs $0x5555555555555555,%rcx
  40a1ea:	55 55 55 
  40a1ed:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40a1f1:	48 21 ca             	and    %rcx,%rdx
  40a1f4:	48 31 d0             	xor    %rdx,%rax
  40a1f7:	48 89 c2             	mov    %rax,%rdx
  40a1fa:	48 b9 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%rcx
  40a201:	7f d6 71 
  40a204:	48 c1 e2 11          	shl    $0x11,%rdx
  40a208:	48 21 ca             	and    %rcx,%rdx
  40a20b:	48 31 d0             	xor    %rdx,%rax
  40a20e:	48 89 c2             	mov    %rax,%rdx
  40a211:	48 b9 00 00 00 00 e0 	movabs $0xfff7eee000000000,%rcx
  40a218:	ee f7 ff 
  40a21b:	48 c1 e2 25          	shl    $0x25,%rdx
  40a21f:	48 21 ca             	and    %rcx,%rdx
  40a222:	48 31 d0             	xor    %rdx,%rax
  40a225:	48 89 c2             	mov    %rax,%rdx
  40a228:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40a22c:	48 31 d0             	xor    %rdx,%rax
  40a22f:	31 ff                	xor    %edi,%edi
  40a231:	48 0f a4 c7 01       	shld   $0x1,%rax,%rdi
  40a236:	48 8d 44 fd 00       	lea    0x0(%rbp,%rdi,8),%rax
  40a23b:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  40a23f:	48 8b 08             	mov    (%rax),%rcx
  40a242:	4c 8d 6d 10          	lea    0x10(%rbp),%r13
  40a246:	48 89 4d 08          	mov    %rcx,0x8(%rbp)
  40a24a:	48 89 10             	mov    %rdx,(%rax)
  40a24d:	e9 37 fd ff ff       	jmpq   409f89 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x269>
  40a252:	48 89 df             	mov    %rbx,%rdi
  40a255:	e8 16 f9 ff ff       	callq  409b70 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40a25a:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40a261:	e9 6b ff ff ff       	jmpq   40a1d1 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x4b1>

Disassembly of section .fini:

000000000040a268 <_fini>:
  40a268:	f3 0f 1e fa          	endbr64 
  40a26c:	48 83 ec 08          	sub    $0x8,%rsp
  40a270:	48 83 c4 08          	add    $0x8,%rsp
  40a274:	c3                   	retq   
