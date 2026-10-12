
/lpor1/store_0/usr/user/hw-bench-thesis-results/flat-thesis-20261011T180753Z/build/hardware:     file format elf64-x86-64


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
  4034e2:	e8 79 65 00 00       	callq  409a60 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403524:	e8 37 65 00 00       	callq  409a60 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403529:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  403530:	00 
  403531:	4c 39 ff             	cmp    %r15,%rdi
  403534:	75 5c                	jne    403592 <_Z6windowid.cold+0xf2>
  403536:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40353d:	00 
  40353e:	e8 1d 65 00 00       	callq  409a60 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  4036a0:	e8 bb 63 00 00       	callq  409a60 <_ZNSt10filesystem7__cxx114pathD1Ev>
  4036a5:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  4036ac:	00 
  4036ad:	e8 ae 63 00 00       	callq  409a60 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403810:	e8 4b 62 00 00       	callq  409a60 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403815:	e9 1c fd ff ff       	jmpq   403536 <_Z6windowid.cold+0x96>
  40381a:	c5 f8 77             	vzeroupper 
  40381d:	e8 0e f9 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403822:	e8 b9 fb ff ff       	callq  4033e0 <__cxa_end_catch@plt>
  403827:	e9 cb 53 00 00       	jmpq   408bf7 <_Z6windowid+0x15d7>
  40382c:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  403831:	c5 f8 77             	vzeroupper 
  403834:	e8 27 62 00 00       	callq  409a60 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  4038df:	e8 7c 61 00 00       	callq  409a60 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  4039ae:	e8 ad 60 00 00       	callq  409a60 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403a5b:	e8 00 60 00 00       	callq  409a60 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403a60:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403a67:	00 
  403a68:	e8 f3 5f 00 00       	callq  409a60 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403b61:	e9 40 55 00 00       	jmpq   4090a6 <_Z6windowid+0x1a86>
  403b66:	c5 f8 77             	vzeroupper 
  403b69:	e8 c2 f5 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403b6e:	e8 6d f8 ff ff       	callq  4033e0 <__cxa_end_catch@plt>
  403b73:	e9 94 44 00 00       	jmpq   40800c <_Z6windowid+0x9ec>
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
  403c68:	e8 f3 5d 00 00       	callq  409a60 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403f73:	e8 c8 35 00 00       	callq  407540 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
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
  403fff:	0f 84 bc 15 00 00    	je     4055c1 <main+0x1671>
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
  4041a4:	0f 84 e4 13 00 00    	je     40558e <main+0x163e>
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
  404236:	0f 84 66 13 00 00    	je     4055a2 <main+0x1652>
  40423c:	41 8b 04 24          	mov    (%r12),%eax
  404240:	83 f8 22             	cmp    $0x22,%eax
  404243:	0f 84 4f 13 00 00    	je     405598 <main+0x1648>
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
  4042a3:	0f 85 36 13 00 00    	jne    4055df <main+0x168f>
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
  404334:	0f 84 9b 12 00 00    	je     4055d5 <main+0x1685>
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
  4043cf:	0f 84 f6 11 00 00    	je     4055cb <main+0x167b>
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
  404411:	e8 2a 31 00 00       	callq  407540 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404416:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
  40441d:	00 
  40441e:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  404424:	31 c9                	xor    %ecx,%ecx
  404426:	be 89 b0 40 00       	mov    $0x40b089,%esi
  40442b:	bf 40 33 40 00       	mov    $0x403340,%edi
  404430:	e8 6b 56 00 00       	callq  409aa0 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
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
  404463:	0f 85 43 11 00 00    	jne    4055ac <main+0x165c>
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
  4044fb:	e8 40 30 00 00       	callq  407540 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404500:	48 8b 94 24 60 01 00 	mov    0x160(%rsp),%rdx
  404507:	00 
  404508:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  40450e:	31 c9                	xor    %ecx,%ecx
  404510:	be 89 b0 40 00       	mov    $0x40b089,%esi
  404515:	bf 40 33 40 00       	mov    $0x403340,%edi
  40451a:	e8 81 55 00 00       	callq  409aa0 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
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
  40470e:	bf f0 58 40 00       	mov    $0x4058f0,%edi
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
  40476b:	0f 85 38 08 00 00    	jne    404fa9 <main+0x1059>
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
  404800:	bf 80 57 40 00       	mov    $0x405780,%edi
  404805:	c5 f9 7f ac 24 60 01 	vmovdqa %xmm5,0x160(%rsp)
  40480c:	00 00 
  40480e:	c5 f9 7f a4 24 70 01 	vmovdqa %xmm4,0x170(%rsp)
  404815:	00 00 
  404817:	e8 64 eb ff ff       	callq  403380 <GOMP_parallel@plt>
  40481c:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  404821:	0f 84 3a 0d 00 00    	je     405561 <main+0x1611>
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
  404920:	e8 db 53 00 00       	callq  409d00 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>
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
  404a97:	0f 84 21 09 00 00    	je     4053be <main+0x146e>
  404a9d:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  404aa1:	c5 fa 2a c2          	vcvtsi2ss %edx,%xmm0,%xmm0
  404aa5:	b8 a0 86 01 00       	mov    $0x186a0,%eax
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
  404b3b:	0f 84 2e 0a 00 00    	je     40556f <main+0x161f>
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
  404b80:	e8 bb 29 00 00       	callq  407540 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
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
  404bbf:	e8 7c 29 00 00       	callq  407540 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
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
  404bf7:	e8 44 29 00 00       	callq  407540 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
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
  404d60:	e8 bb 28 00 00       	callq  407620 <_Z6windowid>
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
  404de0:	e9 8b 01 00 00       	jmpq   404f70 <main+0x1020>
  404de5:	0f 1f 00             	nopl   (%rax)
  404de8:	48 8b 84 24 70 01 00 	mov    0x170(%rsp),%rax
  404def:	00 
  404df0:	80 38 00             	cmpb   $0x0,(%rax)
  404df3:	0f 85 cf 02 00 00    	jne    4050c8 <main+0x1178>
  404df9:	48 8b 84 24 98 01 00 	mov    0x198(%rsp),%rax
  404e00:	00 
  404e01:	44 0f b6 28          	movzbl (%rax),%r13d
  404e05:	45 84 ed             	test   %r13b,%r13b
  404e08:	0f 85 3a 02 00 00    	jne    405048 <main+0x10f8>
  404e0e:	c5 f9 6f 3c 24       	vmovdqa (%rsp),%xmm7
  404e13:	48 8d 84 24 b0 01 00 	lea    0x1b0(%rsp),%rax
  404e1a:	00 
  404e1b:	31 d2                	xor    %edx,%edx
  404e1d:	31 c9                	xor    %ecx,%ecx
  404e1f:	4c 89 f6             	mov    %r14,%rsi
  404e22:	bf e0 5c 40 00       	mov    $0x405ce0,%edi
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
  404f10:	ba 00 00 00 40       	mov    $0x40000000,%edx
  404f15:	75 14                	jne    404f2b <main+0xfdb>
  404f17:	80 39 01             	cmpb   $0x1,(%rcx)
  404f1a:	48 19 d2             	sbb    %rdx,%rdx
  404f1d:	48 81 e2 00 08 db fe 	and    $0xfffffffffedb0800,%rdx
  404f24:	48 81 c2 00 f0 49 02 	add    $0x249f000,%rdx
  404f2b:	48 0f af c2          	imul   %rdx,%rax
  404f2f:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  404f33:	4c 89 f6             	mov    %r14,%rsi
  404f36:	bf 01 00 00 00       	mov    $0x1,%edi
  404f3b:	48 01 c5             	add    %rax,%rbp
  404f3e:	c5 f9 7f 84 24 30 01 	vmovdqa %xmm0,0x130(%rsp)
  404f45:	00 00 
  404f47:	e8 34 e3 ff ff       	callq  403280 <clock_gettime@plt>
  404f4c:	48 69 84 24 30 01 00 	imul   $0x3b9aca00,0x130(%rsp),%rax
  404f53:	00 00 ca 9a 3b 
  404f58:	48 ff c3             	inc    %rbx
  404f5b:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  404f5f:	48 03 84 24 38 01 00 	add    0x138(%rsp),%rax
  404f66:	00 
  404f67:	49 39 c4             	cmp    %rax,%r12
  404f6a:	0f 86 cc 01 00 00    	jbe    40513c <main+0x11ec>
  404f70:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  404f77:	00 
  404f78:	80 38 00             	cmpb   $0x0,(%rax)
  404f7b:	0f 84 67 fe ff ff    	je     404de8 <main+0xe98>
  404f81:	48 8b 8c 24 68 01 00 	mov    0x168(%rsp),%rcx
  404f88:	00 
  404f89:	b8 00 00 01 00       	mov    $0x10000,%eax
  404f8e:	48 8b 11             	mov    (%rcx),%rdx
  404f91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404f98:	48 8b 12             	mov    (%rdx),%rdx
  404f9b:	48 89 11             	mov    %rdx,(%rcx)
  404f9e:	ff c8                	dec    %eax
  404fa0:	75 f6                	jne    404f98 <main+0x1048>
  404fa2:	b8 00 00 01 00       	mov    $0x10000,%eax
  404fa7:	eb 86                	jmp    404f2f <main+0xfdf>
  404fa9:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  404fae:	31 d2                	xor    %edx,%edx
  404fb0:	b9 18 00 00 00       	mov    $0x18,%ecx
  404fb5:	48 f7 f1             	div    %rcx
  404fb8:	48 83 e0 c0          	and    $0xffffffffffffffc0,%rax
  404fbc:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  404fc1:	0f 84 69 f1 ff ff    	je     404130 <main+0x1e0>
  404fc7:	48 6b c8 18          	imul   $0x18,%rax,%rcx
  404fcb:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
  404fd2:	00 
  404fd3:	48 89 ee             	mov    %rbp,%rsi
  404fd6:	bf 40 00 00 00       	mov    $0x40,%edi
  404fdb:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
  404fe0:	e8 2b e2 ff ff       	callq  403210 <aligned_alloc@plt>
  404fe5:	48 89 ee             	mov    %rbp,%rsi
  404fe8:	bf 40 00 00 00       	mov    $0x40,%edi
  404fed:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
  404ff4:	00 
  404ff5:	49 89 c5             	mov    %rax,%r13
  404ff8:	e8 13 e2 ff ff       	callq  403210 <aligned_alloc@plt>
  404ffd:	48 89 ee             	mov    %rbp,%rsi
  405000:	bf 40 00 00 00       	mov    $0x40,%edi
  405005:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  40500c:	00 
  40500d:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  405012:	e8 f9 e1 ff ff       	callq  403210 <aligned_alloc@plt>
  405017:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  40501c:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  405023:	00 
  405024:	48 85 d2             	test   %rdx,%rdx
  405027:	0f 84 9d ee ff ff    	je     403eca <main.cold+0x240>
  40502d:	4d 85 ed             	test   %r13,%r13
  405030:	0f 84 0c 06 00 00    	je     405642 <main+0x16f2>
  405036:	48 85 c0             	test   %rax,%rax
  405039:	0f 85 a9 f7 ff ff    	jne    4047e8 <main+0x898>
  40503f:	e9 86 ee ff ff       	jmpq   403eca <main.cold+0x240>
  405044:	0f 1f 40 00          	nopl   0x0(%rax)
  405048:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40504f:	00 
  405050:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  405057:	00 
  405058:	48 8d 84 24 78 01 00 	lea    0x178(%rsp),%rax
  40505f:	00 
  405060:	48 89 84 24 38 01 00 	mov    %rax,0x138(%rsp)
  405067:	00 
  405068:	48 8d 84 24 80 01 00 	lea    0x180(%rsp),%rax
  40506f:	00 
  405070:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
  405077:	00 
  405078:	48 8d 84 24 88 01 00 	lea    0x188(%rsp),%rax
  40507f:	00 
  405080:	48 89 84 24 48 01 00 	mov    %rax,0x148(%rsp)
  405087:	00 
  405088:	31 d2                	xor    %edx,%edx
  40508a:	48 8d 84 24 a0 01 00 	lea    0x1a0(%rsp),%rax
  405091:	00 
  405092:	31 c9                	xor    %ecx,%ecx
  405094:	4c 89 f6             	mov    %r14,%rsi
  405097:	bf f0 5a 40 00       	mov    $0x405af0,%edi
  40509c:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  4050a3:	00 
  4050a4:	e8 d7 e2 ff ff       	callq  403380 <GOMP_parallel@plt>
  4050a9:	48 8b 84 24 a0 01 00 	mov    0x1a0(%rsp),%rax
  4050b0:	00 
  4050b1:	48 8b 94 24 78 01 00 	mov    0x178(%rsp),%rdx
  4050b8:	00 
  4050b9:	48 63 00             	movslq (%rax),%rax
  4050bc:	48 0f af 02          	imul   (%rdx),%rax
  4050c0:	48 01 c0             	add    %rax,%rax
  4050c3:	e9 67 fe ff ff       	jmpq   404f2f <main+0xfdf>
  4050c8:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  4050cf:	00 
  4050d0:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  4050d7:	00 
  4050d8:	48 8d 84 24 78 01 00 	lea    0x178(%rsp),%rax
  4050df:	00 
  4050e0:	48 89 84 24 38 01 00 	mov    %rax,0x138(%rsp)
  4050e7:	00 
  4050e8:	48 8d 84 24 80 01 00 	lea    0x180(%rsp),%rax
  4050ef:	00 
  4050f0:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
  4050f7:	00 
  4050f8:	48 8d 84 24 88 01 00 	lea    0x188(%rsp),%rax
  4050ff:	00 
  405100:	48 89 84 24 48 01 00 	mov    %rax,0x148(%rsp)
  405107:	00 
  405108:	31 c9                	xor    %ecx,%ecx
  40510a:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  405111:	00 
  405112:	31 d2                	xor    %edx,%edx
  405114:	4c 89 f6             	mov    %r14,%rsi
  405117:	bf 20 59 40 00       	mov    $0x405920,%edi
  40511c:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  405123:	00 
  405124:	e8 57 e2 ff ff       	callq  403380 <GOMP_parallel@plt>
  405129:	48 8b 84 24 78 01 00 	mov    0x178(%rsp),%rax
  405130:	00 
  405131:	48 8b 00             	mov    (%rax),%rax
  405134:	48 01 c0             	add    %rax,%rax
  405137:	e9 f3 fd ff ff       	jmpq   404f2f <main+0xfdf>
  40513c:	4c 89 f6             	mov    %r14,%rsi
  40513f:	bf 01 00 00 00       	mov    $0x1,%edi
  405144:	c5 f9 7f 84 24 30 01 	vmovdqa %xmm0,0x130(%rsp)
  40514b:	00 00 
  40514d:	e8 2e e1 ff ff       	callq  403280 <clock_gettime@plt>
  405152:	4c 69 ac 24 30 01 00 	imul   $0x3b9aca00,0x130(%rsp),%r13
  405159:	00 00 ca 9a 3b 
  40515e:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  405162:	4c 03 ac 24 38 01 00 	add    0x138(%rsp),%r13
  405169:	00 
  40516a:	4c 89 e8             	mov    %r13,%rax
  40516d:	48 2b 44 24 10       	sub    0x10(%rsp),%rax
  405172:	62 f1 df 08 7b c0    	vcvtusi2sd %rax,%xmm4,%xmm0
  405178:	c5 fb 59 2d 28 63 00 	vmulsd 0x6328(%rip),%xmm0,%xmm5        # 40b4a8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x188>
  40517f:	00 
  405180:	c4 c1 f9 7e ec       	vmovq  %xmm5,%r12
  405185:	45 85 ff             	test   %r15d,%r15d
  405188:	74 19                	je     4051a3 <main+0x1253>
  40518a:	ba 01 00 00 00       	mov    $0x1,%edx
  40518f:	48 8d 74 24 6f       	lea    0x6f(%rsp),%rsi
  405194:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  405199:	c6 44 24 6f 2c       	movb   $0x2c,0x6f(%rsp)
  40519e:	e8 3d e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4051a3:	ba 13 00 00 00       	mov    $0x13,%edx
  4051a8:	be 82 b2 40 00       	mov    $0x40b282,%esi
  4051ad:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  4051b2:	e8 29 e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4051b7:	c4 c1 f9 6e c4       	vmovq  %r12,%xmm0
  4051bc:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  4051c1:	e8 0a e2 ff ff       	callq  4033d0 <_ZNSo9_M_insertIdEERSoT_@plt>
  4051c6:	ba 0c 00 00 00       	mov    $0xc,%edx
  4051cb:	be 96 b2 40 00       	mov    $0x40b296,%esi
  4051d0:	48 89 c7             	mov    %rax,%rdi
  4051d3:	49 89 c4             	mov    %rax,%r12
  4051d6:	e8 05 e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4051db:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  4051e0:	4c 89 e7             	mov    %r12,%rdi
  4051e3:	e8 f8 df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  4051e8:	ba 0a 00 00 00       	mov    $0xa,%edx
  4051ed:	be a3 b2 40 00       	mov    $0x40b2a3,%esi
  4051f2:	48 89 c7             	mov    %rax,%rdi
  4051f5:	49 89 c4             	mov    %rax,%r12
  4051f8:	e8 e3 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4051fd:	4c 89 ee             	mov    %r13,%rsi
  405200:	4c 89 e7             	mov    %r12,%rdi
  405203:	e8 d8 df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405208:	ba 14 00 00 00       	mov    $0x14,%edx
  40520d:	be ae b2 40 00       	mov    $0x40b2ae,%esi
  405212:	48 89 c7             	mov    %rax,%rdi
  405215:	49 89 c4             	mov    %rax,%r12
  405218:	e8 c3 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40521d:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  405222:	4c 89 e7             	mov    %r12,%rdi
  405225:	e8 b6 df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  40522a:	ba 0e 00 00 00       	mov    $0xe,%edx
  40522f:	be c3 b2 40 00       	mov    $0x40b2c3,%esi
  405234:	48 89 c7             	mov    %rax,%rdi
  405237:	49 89 c4             	mov    %rax,%r12
  40523a:	e8 a1 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40523f:	31 f6                	xor    %esi,%esi
  405241:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  405246:	48 0f 44 f5          	cmove  %rbp,%rsi
  40524a:	4c 89 e7             	mov    %r12,%rdi
  40524d:	e8 8e df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405252:	ba 11 00 00 00       	mov    $0x11,%edx
  405257:	be d2 b2 40 00       	mov    $0x40b2d2,%esi
  40525c:	48 89 c7             	mov    %rax,%rdi
  40525f:	49 89 c4             	mov    %rax,%r12
  405262:	e8 79 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405267:	80 7c 24 68 00       	cmpb   $0x0,0x68(%rsp)
  40526c:	75 09                	jne    405277 <main+0x1327>
  40526e:	31 f6                	xor    %esi,%esi
  405270:	80 7c 24 69 00       	cmpb   $0x0,0x69(%rsp)
  405275:	74 09                	je     405280 <main+0x1330>
  405277:	48 0f af 5c 24 40    	imul   0x40(%rsp),%rbx
  40527d:	48 89 de             	mov    %rbx,%rsi
  405280:	4c 89 e7             	mov    %r12,%rdi
  405283:	e8 58 df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405288:	ba 09 00 00 00       	mov    $0x9,%edx
  40528d:	be e4 b2 40 00       	mov    $0x40b2e4,%esi
  405292:	48 89 c7             	mov    %rax,%rdi
  405295:	49 89 c4             	mov    %rax,%r12
  405298:	e8 43 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40529d:	31 c0                	xor    %eax,%eax
  40529f:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  4052a4:	48 0f 44 e8          	cmove  %rax,%rbp
  4052a8:	4c 89 e7             	mov    %r12,%rdi
  4052ab:	48 89 ee             	mov    %rbp,%rsi
  4052ae:	e8 2d df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  4052b3:	48 89 c7             	mov    %rax,%rdi
  4052b6:	ba 01 00 00 00       	mov    $0x1,%edx
  4052bb:	4c 89 f6             	mov    %r14,%rsi
  4052be:	c6 84 24 30 01 00 00 	movb   $0x7d,0x130(%rsp)
  4052c5:	7d 
  4052c6:	e8 15 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4052cb:	41 ff c7             	inc    %r15d
  4052ce:	44 3b 7c 24 5c       	cmp    0x5c(%rsp),%r15d
  4052d3:	0f 8c 7e fa ff ff    	jl     404d57 <main+0xe07>
  4052d9:	0f b6 5c 24 68       	movzbl 0x68(%rsp),%ebx
  4052de:	84 db                	test   %bl,%bl
  4052e0:	75 0b                	jne    4052ed <main+0x139d>
  4052e2:	80 7c 24 69 00       	cmpb   $0x0,0x69(%rsp)
  4052e7:	0f 84 00 01 00 00    	je     4053ed <main+0x149d>
  4052ed:	4c 8b 44 24 78       	mov    0x78(%rsp),%r8
  4052f2:	b8 01 00 00 00       	mov    $0x1,%eax
  4052f7:	4c 89 c7             	mov    %r8,%rdi
  4052fa:	48 c1 ef 0a          	shr    $0xa,%rdi
  4052fe:	48 0f 44 f8          	cmove  %rax,%rdi
  405302:	4c 8b 94 24 88 00 00 	mov    0x88(%rsp),%r10
  405309:	00 
  40530a:	8b 4c 24 70          	mov    0x70(%rsp),%ecx
  40530e:	4c 8b 9c 24 90 00 00 	mov    0x90(%rsp),%r11
  405315:	00 
  405316:	4c 8b 8c 24 80 00 00 	mov    0x80(%rsp),%r9
  40531d:	00 
  40531e:	0f b6 74 24 6e       	movzbl 0x6e(%rsp),%esi
  405323:	c5 fb 10 3d dd 60 00 	vmovsd 0x60dd(%rip),%xmm7        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  40532a:	00 
  40532b:	c5 fb 10 1d e5 60 00 	vmovsd 0x60e5(%rip),%xmm3        # 40b418 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  405332:	00 
  405333:	c5 fb 10 15 d5 60 00 	vmovsd 0x60d5(%rip),%xmm2        # 40b410 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  40533a:	00 
  40533b:	c5 fa 7e 2d 1d 62 00 	vmovq  0x621d(%rip),%xmm5        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405342:	00 
  405343:	c5 fb 10 35 2d 61 00 	vmovsd 0x612d(%rip),%xmm6        # 40b478 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  40534a:	00 
  40534b:	c5 7b 10 05 5d 61 00 	vmovsd 0x615d(%rip),%xmm8        # 40b4b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x190>
  405352:	00 
  405353:	31 c0                	xor    %eax,%eax
  405355:	31 d2                	xor    %edx,%edx
  405357:	eb 43                	jmp    40539c <main+0x144c>
  405359:	c4 c2 c1 b9 04 d3    	vfmadd231sd (%r11,%rdx,8),%xmm7,%xmm0
  40535f:	c4 c1 7b 10 0c d1    	vmovsd (%r9,%rdx,8),%xmm1
  405365:	31 c0                	xor    %eax,%eax
  405367:	c5 f1 54 e5          	vandpd %xmm5,%xmm1,%xmm4
  40536b:	c5 f9 2e f4          	vucomisd %xmm4,%xmm6
  40536f:	72 0f                	jb     405380 <main+0x1430>
  405371:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
  405375:	c5 f9 54 c5          	vandpd %xmm5,%xmm0,%xmm0
  405379:	c5 79 2f c0          	vcomisd %xmm0,%xmm8
  40537d:	0f 97 c0             	seta   %al
  405380:	c5 f3 58 8c 24 a8 00 	vaddsd 0xa8(%rsp),%xmm1,%xmm1
  405387:	00 00 
  405389:	21 c6                	and    %eax,%esi
  40538b:	48 01 fa             	add    %rdi,%rdx
  40538e:	c5 fb 11 8c 24 a8 00 	vmovsd %xmm1,0xa8(%rsp)
  405395:	00 00 
  405397:	b8 01 00 00 00       	mov    $0x1,%eax
  40539c:	49 39 d0             	cmp    %rdx,%r8
  40539f:	76 43                	jbe    4053e4 <main+0x1494>
  4053a1:	c4 c1 7b 10 04 d2    	vmovsd (%r10,%rdx,8),%xmm0
  4053a7:	84 db                	test   %bl,%bl
  4053a9:	75 ae                	jne    405359 <main+0x1409>
  4053ab:	31 c0                	xor    %eax,%eax
  4053ad:	85 c9                	test   %ecx,%ecx
  4053af:	7e ae                	jle    40535f <main+0x140f>
  4053b1:	ff c0                	inc    %eax
  4053b3:	c4 e2 e1 99 c2       	vfmadd132sd %xmm2,%xmm3,%xmm0
  4053b8:	39 c8                	cmp    %ecx,%eax
  4053ba:	75 f5                	jne    4053b1 <main+0x1461>
  4053bc:	eb a1                	jmp    40535f <main+0x140f>
  4053be:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  4053c2:	c5 fb 2a c2          	vcvtsi2sd %edx,%xmm0,%xmm0
  4053c6:	b8 a0 86 01 00       	mov    $0x186a0,%eax
  4053cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4053d0:	c4 e2 e1 b9 04 24    	vfmadd231sd (%rsp),%xmm3,%xmm0
  4053d6:	ff c8                	dec    %eax
  4053d8:	75 f6                	jne    4053d0 <main+0x1480>
  4053da:	c4 c2 f9 b9 e5       	vfmadd231sd %xmm13,%xmm0,%xmm4
  4053df:	e9 e2 f6 ff ff       	jmpq   404ac6 <main+0xb76>
  4053e4:	84 c0                	test   %al,%al
  4053e6:	74 05                	je     4053ed <main+0x149d>
  4053e8:	40 88 74 24 6e       	mov    %sil,0x6e(%rsp)
  4053ed:	80 7c 24 6a 00       	cmpb   $0x0,0x6a(%rsp)
  4053f2:	74 4f                	je     405443 <main+0x14f3>
  4053f4:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
  4053fb:	00 
  4053fc:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
  405401:	0f b6 4c 24 6e       	movzbl 0x6e(%rsp),%ecx
  405406:	31 d2                	xor    %edx,%edx
  405408:	48 39 d8             	cmp    %rbx,%rax
  40540b:	72 15                	jb     405422 <main+0x14d2>
  40540d:	be 06 00 00 00       	mov    $0x6,%esi
  405412:	c4 e2 c9 f7 54 24 78 	shlx   %rsi,0x78(%rsp),%rdx
  405419:	48 01 da             	add    %rbx,%rdx
  40541c:	48 39 d0             	cmp    %rdx,%rax
  40541f:	0f 92 c2             	setb   %dl
  405422:	48 2b 44 24 38       	sub    0x38(%rsp),%rax
  405427:	48 c1 f8 06          	sar    $0x6,%rax
  40542b:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
  40542f:	c4 e1 d3 2a c0       	vcvtsi2sd %rax,%xmm5,%xmm0
  405434:	21 ca                	and    %ecx,%edx
  405436:	88 54 24 6e          	mov    %dl,0x6e(%rsp)
  40543a:	c5 fb 11 84 24 a8 00 	vmovsd %xmm0,0xa8(%rsp)
  405441:	00 00 
  405443:	ba 0d 00 00 00       	mov    $0xd,%edx
  405448:	be ee b2 40 00       	mov    $0x40b2ee,%esi
  40544d:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  405452:	e8 89 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405457:	c5 fb 10 84 24 a8 00 	vmovsd 0xa8(%rsp),%xmm0
  40545e:	00 00 
  405460:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  405465:	e8 66 df ff ff       	callq  4033d0 <_ZNSo9_M_insertIdEERSoT_@plt>
  40546a:	ba 09 00 00 00       	mov    $0x9,%edx
  40546f:	be fc b2 40 00       	mov    $0x40b2fc,%esi
  405474:	48 89 c7             	mov    %rax,%rdi
  405477:	48 89 c5             	mov    %rax,%rbp
  40547a:	e8 61 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40547f:	80 7c 24 6e 00       	cmpb   $0x0,0x6e(%rsp)
  405484:	be aa b1 40 00       	mov    $0x40b1aa,%esi
  405489:	b8 af b1 40 00       	mov    $0x40b1af,%eax
  40548e:	48 0f 44 f0          	cmove  %rax,%rsi
  405492:	48 89 ef             	mov    %rbp,%rdi
  405495:	e8 f6 dd ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40549a:	48 89 c7             	mov    %rax,%rdi
  40549d:	be 06 b3 40 00       	mov    $0x40b306,%esi
  4054a2:	e8 e9 dd ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4054a7:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
  4054ae:	00 
  4054af:	e8 4c de ff ff       	callq  403300 <free@plt>
  4054b4:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  4054bb:	00 
  4054bc:	e8 3f de ff ff       	callq  403300 <free@plt>
  4054c1:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  4054c8:	00 
  4054c9:	e8 32 de ff ff       	callq  403300 <free@plt>
  4054ce:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  4054d3:	e8 28 de ff ff       	callq  403300 <free@plt>
  4054d8:	44 0f b6 64 24 6e    	movzbl 0x6e(%rsp),%r12d
  4054de:	48 8b bc 24 10 01 00 	mov    0x110(%rsp),%rdi
  4054e5:	00 
  4054e6:	41 83 f4 01          	xor    $0x1,%r12d
  4054ea:	48 8d 84 24 20 01 00 	lea    0x120(%rsp),%rax
  4054f1:	00 
  4054f2:	45 0f b6 e4          	movzbl %r12b,%r12d
  4054f6:	48 39 c7             	cmp    %rax,%rdi
  4054f9:	74 11                	je     40550c <main+0x15bc>
  4054fb:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  405502:	00 
  405503:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405507:	e8 a4 dd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40550c:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  405513:	00 
  405514:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  40551b:	00 
  40551c:	48 39 c7             	cmp    %rax,%rdi
  40551f:	74 11                	je     405532 <main+0x15e2>
  405521:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  405528:	00 
  405529:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40552d:	e8 7e dd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405532:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  405539:	00 
  40553a:	48 8d 84 24 e0 00 00 	lea    0xe0(%rsp),%rax
  405541:	00 
  405542:	48 39 c7             	cmp    %rax,%rdi
  405545:	0f 84 eb eb ff ff    	je     404136 <main+0x1e6>
  40554b:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  405552:	00 
  405553:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405557:	e8 54 dd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40555c:	e9 d5 eb ff ff       	jmpq   404136 <main+0x1e6>
  405561:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  405568:	00 00 
  40556a:	e9 37 f4 ff ff       	jmpq   4049a6 <main+0xa56>
  40556f:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  405576:	00 
  405577:	e8 c4 1d 00 00       	callq  407340 <_ZZ4mainENKUlvE_clEv>
  40557c:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  405583:	00 
  405584:	e8 b7 1d 00 00       	callq  407340 <_ZZ4mainENKUlvE_clEv>
  405589:	e9 b3 f5 ff ff       	jmpq   404b41 <main+0xbf1>
  40558e:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  405593:	e8 58 dc ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  405598:	bf c4 b1 40 00       	mov    $0x40b1c4,%edi
  40559d:	e8 be dd ff ff       	callq  403360 <_ZSt20__throw_out_of_rangePKc@plt>
  4055a2:	bf c4 b1 40 00       	mov    $0x40b1c4,%edi
  4055a7:	e8 f4 db ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  4055ac:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  4055b3:	00 
  4055b4:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  4055b9:	4c 89 ef             	mov    %r13,%rdi
  4055bc:	e9 f9 ee ff ff       	jmpq   4044ba <main+0x56a>
  4055c1:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4055c6:	e8 25 dc ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4055cb:	bf d5 b1 40 00       	mov    $0x40b1d5,%edi
  4055d0:	e8 cb db ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  4055d5:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4055da:	e8 11 dc ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4055df:	48 89 ef             	mov    %rbp,%rdi
  4055e2:	e9 fe ec ff ff       	jmpq   4042e5 <main+0x395>
  4055e7:	48 89 c3             	mov    %rax,%rbx
  4055ea:	49 89 d6             	mov    %rdx,%r14
  4055ed:	e9 98 e6 ff ff       	jmpq   403c8a <main.cold>
  4055f2:	e9 5e e7 ff ff       	jmpq   403d55 <main.cold+0xcb>
  4055f7:	48 89 c3             	mov    %rax,%rbx
  4055fa:	49 89 d6             	mov    %rdx,%r14
  4055fd:	e9 af e7 ff ff       	jmpq   403db1 <main.cold+0x127>
  405602:	48 89 c7             	mov    %rax,%rdi
  405605:	48 89 d5             	mov    %rdx,%rbp
  405608:	c5 f8 77             	vzeroupper 
  40560b:	e9 f8 e6 ff ff       	jmpq   403d08 <main.cold+0x7e>
  405610:	48 89 c3             	mov    %rax,%rbx
  405613:	49 89 d6             	mov    %rdx,%r14
  405616:	e9 68 e7 ff ff       	jmpq   403d83 <main.cold+0xf9>
  40561b:	48 89 c3             	mov    %rax,%rbx
  40561e:	49 89 d6             	mov    %rdx,%r14
  405621:	c5 f8 77             	vzeroupper 
  405624:	e9 95 e6 ff ff       	jmpq   403cbe <main.cold+0x34>
  405629:	48 89 c3             	mov    %rax,%rbx
  40562c:	48 89 d5             	mov    %rdx,%rbp
  40562f:	e9 13 e8 ff ff       	jmpq   403e47 <main.cold+0x1bd>
  405634:	48 89 c3             	mov    %rax,%rbx
  405637:	48 89 d5             	mov    %rdx,%rbp
  40563a:	c5 f8 77             	vzeroupper 
  40563d:	e9 2e e8 ff ff       	jmpq   403e70 <main.cold+0x1e6>
  405642:	e9 83 e8 ff ff       	jmpq   403eca <main.cold+0x240>
  405647:	48 89 c3             	mov    %rax,%rbx
  40564a:	48 89 d5             	mov    %rdx,%rbp
  40564d:	c5 f8 77             	vzeroupper 
  405650:	e9 41 e8 ff ff       	jmpq   403e96 <main.cold+0x20c>
  405655:	48 89 c3             	mov    %rax,%rbx
  405658:	49 89 d6             	mov    %rdx,%r14
  40565b:	e9 b0 e8 ff ff       	jmpq   403f10 <main.cold+0x286>

0000000000405660 <_GLOBAL__sub_I__Z8clock_nsv>:
  405660:	48 83 ec 08          	sub    $0x8,%rsp
  405664:	bf b1 e4 40 00       	mov    $0x40e4b1,%edi
  405669:	e8 22 dd ff ff       	callq  403390 <_ZNSt8ios_base4InitC1Ev@plt>
  40566e:	ba 08 b0 40 00       	mov    $0x40b008,%edx
  405673:	be b1 e4 40 00       	mov    $0x40e4b1,%esi
  405678:	bf 90 34 40 00       	mov    $0x403490,%edi
  40567d:	48 83 c4 08          	add    $0x8,%rsp
  405681:	e9 da db ff ff       	jmpq   403260 <__cxa_atexit@plt>
  405686:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40568d:	00 00 00 

0000000000405690 <_start>:
  405690:	f3 0f 1e fa          	endbr64 
  405694:	31 ed                	xor    %ebp,%ebp
  405696:	49 89 d1             	mov    %rdx,%r9
  405699:	5e                   	pop    %rsi
  40569a:	48 89 e2             	mov    %rsp,%rdx
  40569d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4056a1:	50                   	push   %rax
  4056a2:	54                   	push   %rsp
  4056a3:	45 31 c0             	xor    %r8d,%r8d
  4056a6:	31 c9                	xor    %ecx,%ecx
  4056a8:	48 c7 c7 50 3f 40 00 	mov    $0x403f50,%rdi
  4056af:	ff 15 13 89 00 00    	callq  *0x8913(%rip)        # 40dfc8 <__libc_start_main@GLIBC_2.34>
  4056b5:	f4                   	hlt    
  4056b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4056bd:	00 00 00 

00000000004056c0 <_dl_relocate_static_pie>:
  4056c0:	f3 0f 1e fa          	endbr64 
  4056c4:	c3                   	retq   
  4056c5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4056cc:	00 00 00 
  4056cf:	90                   	nop

00000000004056d0 <deregister_tm_clones>:
  4056d0:	48 8d 3d 81 8b 00 00 	lea    0x8b81(%rip),%rdi        # 40e258 <__TMC_END__>
  4056d7:	48 8d 05 7a 8b 00 00 	lea    0x8b7a(%rip),%rax        # 40e258 <__TMC_END__>
  4056de:	48 39 f8             	cmp    %rdi,%rax
  4056e1:	74 15                	je     4056f8 <deregister_tm_clones+0x28>
  4056e3:	48 8b 05 e6 88 00 00 	mov    0x88e6(%rip),%rax        # 40dfd0 <_ITM_deregisterTMCloneTable>
  4056ea:	48 85 c0             	test   %rax,%rax
  4056ed:	74 09                	je     4056f8 <deregister_tm_clones+0x28>
  4056ef:	ff e0                	jmpq   *%rax
  4056f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4056f8:	c3                   	retq   
  4056f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405700 <register_tm_clones>:
  405700:	48 8d 3d 51 8b 00 00 	lea    0x8b51(%rip),%rdi        # 40e258 <__TMC_END__>
  405707:	48 8d 35 4a 8b 00 00 	lea    0x8b4a(%rip),%rsi        # 40e258 <__TMC_END__>
  40570e:	48 29 fe             	sub    %rdi,%rsi
  405711:	48 89 f0             	mov    %rsi,%rax
  405714:	48 c1 ee 3f          	shr    $0x3f,%rsi
  405718:	48 c1 f8 03          	sar    $0x3,%rax
  40571c:	48 01 c6             	add    %rax,%rsi
  40571f:	48 d1 fe             	sar    %rsi
  405722:	74 14                	je     405738 <register_tm_clones+0x38>
  405724:	48 8b 05 b5 88 00 00 	mov    0x88b5(%rip),%rax        # 40dfe0 <_ITM_registerTMCloneTable>
  40572b:	48 85 c0             	test   %rax,%rax
  40572e:	74 08                	je     405738 <register_tm_clones+0x38>
  405730:	ff e0                	jmpq   *%rax
  405732:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405738:	c3                   	retq   
  405739:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405740 <__do_global_dtors_aux>:
  405740:	f3 0f 1e fa          	endbr64 
  405744:	80 3d 65 8d 00 00 00 	cmpb   $0x0,0x8d65(%rip)        # 40e4b0 <completed.0>
  40574b:	75 13                	jne    405760 <__do_global_dtors_aux+0x20>
  40574d:	55                   	push   %rbp
  40574e:	48 89 e5             	mov    %rsp,%rbp
  405751:	e8 7a ff ff ff       	callq  4056d0 <deregister_tm_clones>
  405756:	c6 05 53 8d 00 00 01 	movb   $0x1,0x8d53(%rip)        # 40e4b0 <completed.0>
  40575d:	5d                   	pop    %rbp
  40575e:	c3                   	retq   
  40575f:	90                   	nop
  405760:	c3                   	retq   
  405761:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  405768:	00 00 00 00 
  40576c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405770 <frame_dummy>:
  405770:	f3 0f 1e fa          	endbr64 
  405774:	eb 8a                	jmp    405700 <register_tm_clones>
  405776:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40577d:	00 00 00 

0000000000405780 <main._omp_fn.1>:
  405780:	41 54                	push   %r12
  405782:	55                   	push   %rbp
  405783:	53                   	push   %rbx
  405784:	48 8b 07             	mov    (%rdi),%rax
  405787:	48 8b 18             	mov    (%rax),%rbx
  40578a:	48 85 db             	test   %rbx,%rbx
  40578d:	0f 84 ef 00 00 00    	je     405882 <main._omp_fn.1+0x102>
  405793:	49 89 fc             	mov    %rdi,%r12
  405796:	e8 d5 dc ff ff       	callq  403470 <omp_get_num_threads@plt>
  40579b:	89 c5                	mov    %eax,%ebp
  40579d:	e8 1e dc ff ff       	callq  4033c0 <omp_get_thread_num@plt>
  4057a2:	48 63 c8             	movslq %eax,%rcx
  4057a5:	48 63 f5             	movslq %ebp,%rsi
  4057a8:	48 89 d8             	mov    %rbx,%rax
  4057ab:	31 d2                	xor    %edx,%edx
  4057ad:	48 f7 f6             	div    %rsi
  4057b0:	48 39 d1             	cmp    %rdx,%rcx
  4057b3:	0f 82 d7 00 00 00    	jb     405890 <main._omp_fn.1+0x110>
  4057b9:	48 0f af c8          	imul   %rax,%rcx
  4057bd:	48 01 d1             	add    %rdx,%rcx
  4057c0:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
  4057c4:	48 39 f1             	cmp    %rsi,%rcx
  4057c7:	0f 83 b5 00 00 00    	jae    405882 <main._omp_fn.1+0x102>
  4057cd:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  4057d2:	c5 fb 10 0d 16 5c 00 	vmovsd 0x5c16(%rip),%xmm1        # 40b3f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd0>
  4057d9:	00 
  4057da:	48 8b 38             	mov    (%rax),%rdi
  4057dd:	49 8b 44 24 10       	mov    0x10(%r12),%rax
  4057e2:	c5 fb 10 1d 0e 5c 00 	vmovsd 0x5c0e(%rip),%xmm3        # 40b3f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  4057e9:	00 
  4057ea:	4c 8b 00             	mov    (%rax),%r8
  4057ed:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  4057f2:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  4057f6:	4c 8b 08             	mov    (%rax),%r9
  4057f9:	4d 85 c9             	test   %r9,%r9
  4057fc:	0f 84 9e 00 00 00    	je     4058a0 <main._omp_fn.1+0x120>
  405802:	c5 fb 10 25 f6 5b 00 	vmovsd 0x5bf6(%rip),%xmm4        # 40b400 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  405809:	00 
  40580a:	49 bb f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r11
  405811:	f0 f0 f0 
  405814:	49 ba c5 4e ec c4 4e 	movabs $0x4ec4ec4ec4ec4ec5,%r10
  40581b:	ec c4 4e 
  40581e:	66 90                	xchg   %ax,%ax
  405820:	48 89 c8             	mov    %rcx,%rax
  405823:	49 f7 e3             	mul    %r11
  405826:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  40582d:	00 
  40582e:	48 89 d0             	mov    %rdx,%rax
  405831:	48 c1 e8 04          	shr    $0x4,%rax
  405835:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  405839:	48 01 c2             	add    %rax,%rdx
  40583c:	48 89 c8             	mov    %rcx,%rax
  40583f:	48 29 d0             	sub    %rdx,%rax
  405842:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  405847:	48 89 c8             	mov    %rcx,%rax
  40584a:	49 f7 e2             	mul    %r10
  40584d:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  405852:	48 c1 ea 02          	shr    $0x2,%rdx
  405856:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
  40585a:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
  40585e:	48 89 c8             	mov    %rcx,%rax
  405861:	48 29 d0             	sub    %rdx,%rax
  405864:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  40586a:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  40586f:	c4 e2 d9 9d c1       	vfnmadd132sd %xmm1,%xmm4,%xmm0
  405874:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  40587a:	48 ff c1             	inc    %rcx
  40587d:	48 39 ce             	cmp    %rcx,%rsi
  405880:	75 9e                	jne    405820 <main._omp_fn.1+0xa0>
  405882:	5b                   	pop    %rbx
  405883:	5d                   	pop    %rbp
  405884:	41 5c                	pop    %r12
  405886:	c3                   	retq   
  405887:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40588e:	00 00 
  405890:	48 ff c0             	inc    %rax
  405893:	31 d2                	xor    %edx,%edx
  405895:	e9 1f ff ff ff       	jmpq   4057b9 <main._omp_fn.1+0x39>
  40589a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4058a0:	49 b9 f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r9
  4058a7:	f0 f0 f0 
  4058aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4058b0:	48 89 c8             	mov    %rcx,%rax
  4058b3:	49 f7 e1             	mul    %r9
  4058b6:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  4058bd:	00 
  4058be:	48 89 d0             	mov    %rdx,%rax
  4058c1:	48 c1 e8 04          	shr    $0x4,%rax
  4058c5:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  4058c9:	48 01 c2             	add    %rax,%rdx
  4058cc:	48 89 c8             	mov    %rcx,%rax
  4058cf:	48 29 d0             	sub    %rdx,%rax
  4058d2:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  4058d7:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  4058dc:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  4058e2:	48 ff c1             	inc    %rcx
  4058e5:	48 39 ce             	cmp    %rcx,%rsi
  4058e8:	75 c6                	jne    4058b0 <main._omp_fn.1+0x130>
  4058ea:	5b                   	pop    %rbx
  4058eb:	5d                   	pop    %rbp
  4058ec:	41 5c                	pop    %r12
  4058ee:	c3                   	retq   
  4058ef:	90                   	nop

00000000004058f0 <main._omp_fn.0>:
  4058f0:	53                   	push   %rbx
  4058f1:	48 89 fb             	mov    %rdi,%rbx
  4058f4:	e8 67 d7 ff ff       	callq  403060 <GOMP_single_start@plt>
  4058f9:	84 c0                	test   %al,%al
  4058fb:	74 0e                	je     40590b <main._omp_fn.0+0x1b>
  4058fd:	e8 6e db ff ff       	callq  403470 <omp_get_num_threads@plt>
  405902:	41 89 c0             	mov    %eax,%r8d
  405905:	48 8b 03             	mov    (%rbx),%rax
  405908:	44 89 00             	mov    %r8d,(%rax)
  40590b:	5b                   	pop    %rbx
  40590c:	e9 3f db ff ff       	jmpq   403450 <GOMP_barrier@plt>
  405911:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  405918:	00 00 00 00 
  40591c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405920 <_ZZ4mainENKUlvE_clEv._omp_fn.0>:
  405920:	55                   	push   %rbp
  405921:	48 89 e5             	mov    %rsp,%rbp
  405924:	41 55                	push   %r13
  405926:	41 54                	push   %r12
  405928:	53                   	push   %rbx
  405929:	4c 8b 27             	mov    (%rdi),%r12
  40592c:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  405930:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  405935:	4c 8b 28             	mov    (%rax),%r13
  405938:	4d 85 ed             	test   %r13,%r13
  40593b:	0f 84 42 01 00 00    	je     405a83 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405941:	e8 2a db ff ff       	callq  403470 <omp_get_num_threads@plt>
  405946:	89 c3                	mov    %eax,%ebx
  405948:	e8 73 da ff ff       	callq  4033c0 <omp_get_thread_num@plt>
  40594d:	48 63 c8             	movslq %eax,%rcx
  405950:	48 63 f3             	movslq %ebx,%rsi
  405953:	4c 89 e8             	mov    %r13,%rax
  405956:	31 d2                	xor    %edx,%edx
  405958:	48 f7 f6             	div    %rsi
  40595b:	48 39 d1             	cmp    %rdx,%rcx
  40595e:	0f 82 2c 01 00 00    	jb     405a90 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x170>
  405964:	48 0f af c8          	imul   %rax,%rcx
  405968:	48 01 ca             	add    %rcx,%rdx
  40596b:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  40596f:	48 39 ca             	cmp    %rcx,%rdx
  405972:	0f 83 0b 01 00 00    	jae    405a83 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405978:	4d 8b 44 24 20       	mov    0x20(%r12),%r8
  40597d:	49 8b 7c 24 30       	mov    0x30(%r12),%rdi
  405982:	4d 8b 08             	mov    (%r8),%r9
  405985:	48 8b 3f             	mov    (%rdi),%rdi
  405988:	4c 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%r8
  40598f:	00 
  405990:	49 8b 74 24 28       	mov    0x28(%r12),%rsi
  405995:	4f 8d 14 01          	lea    (%r9,%r8,1),%r10
  405999:	4d 8d 58 08          	lea    0x8(%r8),%r11
  40599d:	4e 8d 24 1f          	lea    (%rdi,%r11,1),%r12
  4059a1:	4c 89 d3             	mov    %r10,%rbx
  4059a4:	4c 29 e3             	sub    %r12,%rbx
  4059a7:	48 8b 36             	mov    (%rsi),%rsi
  4059aa:	48 83 fb 10          	cmp    $0x10,%rbx
  4059ae:	0f 97 c3             	seta   %bl
  4059b1:	4d 89 d4             	mov    %r10,%r12
  4059b4:	49 01 f3             	add    %rsi,%r11
  4059b7:	4d 29 dc             	sub    %r11,%r12
  4059ba:	49 83 fc 10          	cmp    $0x10,%r12
  4059be:	41 0f 97 c3          	seta   %r11b
  4059c2:	44 84 db             	test   %r11b,%bl
  4059c5:	0f 84 d5 00 00 00    	je     405aa0 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x180>
  4059cb:	48 83 f8 01          	cmp    $0x1,%rax
  4059cf:	0f 84 cb 00 00 00    	je     405aa0 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x180>
  4059d5:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  4059d9:	48 83 f9 02          	cmp    $0x2,%rcx
  4059dd:	0f 86 f2 00 00 00    	jbe    405ad5 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x1b5>
  4059e3:	49 89 c3             	mov    %rax,%r11
  4059e6:	49 c1 eb 02          	shr    $0x2,%r11
  4059ea:	c4 e2 7d 19 0d 15 5a 	vbroadcastsd 0x5a15(%rip),%ymm1        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  4059f1:	00 00 
  4059f3:	4a 8d 1c 06          	lea    (%rsi,%r8,1),%rbx
  4059f7:	49 c1 e3 05          	shl    $0x5,%r11
  4059fb:	49 01 f8             	add    %rdi,%r8
  4059fe:	31 c9                	xor    %ecx,%ecx
  405a00:	c4 c1 7d 10 04 08    	vmovupd (%r8,%rcx,1),%ymm0
  405a06:	c4 e2 f5 a8 04 0b    	vfmadd213pd (%rbx,%rcx,1),%ymm1,%ymm0
  405a0c:	c4 c1 7d 11 04 0a    	vmovupd %ymm0,(%r10,%rcx,1)
  405a12:	48 83 c1 20          	add    $0x20,%rcx
  405a16:	49 39 cb             	cmp    %rcx,%r11
  405a19:	75 e5                	jne    405a00 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0xe0>
  405a1b:	49 89 c0             	mov    %rax,%r8
  405a1e:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
  405a22:	4c 01 c2             	add    %r8,%rdx
  405a25:	48 89 d1             	mov    %rdx,%rcx
  405a28:	4c 39 c0             	cmp    %r8,%rax
  405a2b:	0f 84 9f 00 00 00    	je     405ad0 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x1b0>
  405a31:	4c 29 c0             	sub    %r8,%rax
  405a34:	48 83 f8 01          	cmp    $0x1,%rax
  405a38:	0f 84 9f 00 00 00    	je     405add <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x1bd>
  405a3e:	c5 f8 77             	vzeroupper 
  405a41:	c5 f9 10 04 d7       	vmovupd (%rdi,%rdx,8),%xmm0
  405a46:	c5 f9 10 1c d6       	vmovupd (%rsi,%rdx,8),%xmm3
  405a4b:	62 f2 e5 18 98 05 b3 	vfmadd132pd 0x59b3(%rip){1to2},%xmm3,%xmm0        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405a52:	59 00 00 
  405a55:	c4 c1 79 11 04 d1    	vmovupd %xmm0,(%r9,%rdx,8)
  405a5b:	48 89 c2             	mov    %rax,%rdx
  405a5e:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
  405a62:	48 01 d1             	add    %rdx,%rcx
  405a65:	48 39 d0             	cmp    %rdx,%rax
  405a68:	74 19                	je     405a83 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405a6a:	c5 fb 10 04 cf       	vmovsd (%rdi,%rcx,8),%xmm0
  405a6f:	c5 fb 10 14 ce       	vmovsd (%rsi,%rcx,8),%xmm2
  405a74:	c4 e2 e9 99 05 8b 59 	vfmadd132sd 0x598b(%rip),%xmm2,%xmm0        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405a7b:	00 00 
  405a7d:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  405a83:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  405a87:	5b                   	pop    %rbx
  405a88:	41 5c                	pop    %r12
  405a8a:	41 5d                	pop    %r13
  405a8c:	5d                   	pop    %rbp
  405a8d:	c3                   	retq   
  405a8e:	66 90                	xchg   %ax,%ax
  405a90:	48 ff c0             	inc    %rax
  405a93:	31 d2                	xor    %edx,%edx
  405a95:	e9 ca fe ff ff       	jmpq   405964 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x44>
  405a9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405aa0:	c5 fb 10 0d 60 59 00 	vmovsd 0x5960(%rip),%xmm1        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405aa7:	00 
  405aa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405aaf:	00 
  405ab0:	c5 fb 10 04 d7       	vmovsd (%rdi,%rdx,8),%xmm0
  405ab5:	c4 e2 f1 a9 04 d6    	vfmadd213sd (%rsi,%rdx,8),%xmm1,%xmm0
  405abb:	c4 c1 7b 11 04 d1    	vmovsd %xmm0,(%r9,%rdx,8)
  405ac1:	48 ff c2             	inc    %rdx
  405ac4:	48 39 d1             	cmp    %rdx,%rcx
  405ac7:	75 e7                	jne    405ab0 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x190>
  405ac9:	eb b8                	jmp    405a83 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405acb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405ad0:	c5 f8 77             	vzeroupper 
  405ad3:	eb ae                	jmp    405a83 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405ad5:	48 89 d1             	mov    %rdx,%rcx
  405ad8:	e9 64 ff ff ff       	jmpq   405a41 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x121>
  405add:	c5 f8 77             	vzeroupper 
  405ae0:	eb 88                	jmp    405a6a <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x14a>
  405ae2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  405ae9:	00 00 00 00 
  405aed:	0f 1f 00             	nopl   (%rax)

0000000000405af0 <_ZZ4mainENKUlvE_clEv._omp_fn.1>:
  405af0:	55                   	push   %rbp
  405af1:	48 89 e5             	mov    %rsp,%rbp
  405af4:	41 56                	push   %r14
  405af6:	41 55                	push   %r13
  405af8:	41 54                	push   %r12
  405afa:	53                   	push   %rbx
  405afb:	4c 8b 27             	mov    (%rdi),%r12
  405afe:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  405b02:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  405b07:	48 8b 18             	mov    (%rax),%rbx
  405b0a:	48 85 db             	test   %rbx,%rbx
  405b0d:	0f 84 b2 01 00 00    	je     405cc5 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x1d5>
  405b13:	e8 58 d9 ff ff       	callq  403470 <omp_get_num_threads@plt>
  405b18:	4c 63 e8             	movslq %eax,%r13
  405b1b:	e8 a0 d8 ff ff       	callq  4033c0 <omp_get_thread_num@plt>
  405b20:	48 63 c8             	movslq %eax,%rcx
  405b23:	48 8d 43 3f          	lea    0x3f(%rbx),%rax
  405b27:	48 c1 e8 06          	shr    $0x6,%rax
  405b2b:	31 d2                	xor    %edx,%edx
  405b2d:	49 f7 f5             	div    %r13
  405b30:	48 39 d1             	cmp    %rdx,%rcx
  405b33:	0f 82 99 01 00 00    	jb     405cd2 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x1e2>
  405b39:	48 0f af c8          	imul   %rax,%rcx
  405b3d:	48 01 ca             	add    %rcx,%rdx
  405b40:	48 01 d0             	add    %rdx,%rax
  405b43:	48 39 c2             	cmp    %rax,%rdx
  405b46:	0f 83 79 01 00 00    	jae    405cc5 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x1d5>
  405b4c:	48 89 d7             	mov    %rdx,%rdi
  405b4f:	48 c1 e0 06          	shl    $0x6,%rax
  405b53:	62 f2 fd 48 19 0d b3 	vbroadcastsd 0x58b3(%rip),%zmm1        # 40b410 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  405b5a:	58 00 00 
  405b5d:	62 f2 fd 48 19 05 b1 	vbroadcastsd 0x58b1(%rip),%zmm0        # 40b418 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  405b64:	58 00 00 
  405b67:	48 c1 e7 06          	shl    $0x6,%rdi
  405b6b:	48 89 c6             	mov    %rax,%rsi
  405b6e:	48 c1 e2 09          	shl    $0x9,%rdx
  405b72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405b78:	49 8b 44 24 28       	mov    0x28(%r12),%rax
  405b7d:	4c 8d 72 40          	lea    0x40(%rdx),%r14
  405b81:	48 8b 00             	mov    (%rax),%rax
  405b84:	4c 8d aa 80 00 00 00 	lea    0x80(%rdx),%r13
  405b8b:	62 71 fd 48 28 0c 10 	vmovapd (%rax,%rdx,1),%zmm9
  405b92:	62 71 fd 48 28 44 10 	vmovapd 0x40(%rax,%rdx,1),%zmm8
  405b99:	01 
  405b9a:	62 f1 fd 48 28 7c 10 	vmovapd 0x80(%rax,%rdx,1),%zmm7
  405ba1:	02 
  405ba2:	62 f1 fd 48 28 74 10 	vmovapd 0xc0(%rax,%rdx,1),%zmm6
  405ba9:	03 
  405baa:	62 f1 fd 48 28 6c 10 	vmovapd 0x100(%rax,%rdx,1),%zmm5
  405bb1:	04 
  405bb2:	62 f1 fd 48 28 64 10 	vmovapd 0x140(%rax,%rdx,1),%zmm4
  405bb9:	05 
  405bba:	62 f1 fd 48 28 5c 10 	vmovapd 0x180(%rax,%rdx,1),%zmm3
  405bc1:	06 
  405bc2:	62 f1 fd 48 28 54 10 	vmovapd 0x1c0(%rax,%rdx,1),%zmm2
  405bc9:	07 
  405bca:	49 8b 44 24 40       	mov    0x40(%r12),%rax
  405bcf:	48 8d 9a c0 00 00 00 	lea    0xc0(%rdx),%rbx
  405bd6:	8b 08                	mov    (%rax),%ecx
  405bd8:	4c 8d 9a 00 01 00 00 	lea    0x100(%rdx),%r11
  405bdf:	4c 8d 92 40 01 00 00 	lea    0x140(%rdx),%r10
  405be6:	4c 8d 8a 80 01 00 00 	lea    0x180(%rdx),%r9
  405bed:	4c 8d 82 c0 01 00 00 	lea    0x1c0(%rdx),%r8
  405bf4:	85 c9                	test   %ecx,%ecx
  405bf6:	7e 3e                	jle    405c36 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x146>
  405bf8:	31 c0                	xor    %eax,%eax
  405bfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405c00:	ff c0                	inc    %eax
  405c02:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  405c08:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  405c0e:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  405c14:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  405c1a:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  405c20:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  405c26:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  405c2c:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  405c32:	39 c8                	cmp    %ecx,%eax
  405c34:	75 ca                	jne    405c00 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x110>
  405c36:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c3b:	48 83 c7 40          	add    $0x40,%rdi
  405c3f:	48 8b 00             	mov    (%rax),%rax
  405c42:	62 71 fd 48 29 0c 10 	vmovapd %zmm9,(%rax,%rdx,1)
  405c49:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c4e:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  405c55:	48 8b 00             	mov    (%rax),%rax
  405c58:	62 31 fd 48 29 04 30 	vmovapd %zmm8,(%rax,%r14,1)
  405c5f:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c64:	48 8b 00             	mov    (%rax),%rax
  405c67:	62 b1 fd 48 29 3c 28 	vmovapd %zmm7,(%rax,%r13,1)
  405c6e:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c73:	48 8b 00             	mov    (%rax),%rax
  405c76:	62 f1 fd 48 29 34 18 	vmovapd %zmm6,(%rax,%rbx,1)
  405c7d:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c82:	48 8b 00             	mov    (%rax),%rax
  405c85:	62 b1 fd 48 29 2c 18 	vmovapd %zmm5,(%rax,%r11,1)
  405c8c:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c91:	48 8b 00             	mov    (%rax),%rax
  405c94:	62 b1 fd 48 29 24 10 	vmovapd %zmm4,(%rax,%r10,1)
  405c9b:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405ca0:	48 8b 00             	mov    (%rax),%rax
  405ca3:	62 b1 fd 48 29 1c 08 	vmovapd %zmm3,(%rax,%r9,1)
  405caa:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405caf:	48 8b 00             	mov    (%rax),%rax
  405cb2:	62 b1 fd 48 29 14 00 	vmovapd %zmm2,(%rax,%r8,1)
  405cb9:	48 39 fe             	cmp    %rdi,%rsi
  405cbc:	0f 87 b6 fe ff ff    	ja     405b78 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x88>
  405cc2:	c5 f8 77             	vzeroupper 
  405cc5:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  405cc9:	5b                   	pop    %rbx
  405cca:	41 5c                	pop    %r12
  405ccc:	41 5d                	pop    %r13
  405cce:	41 5e                	pop    %r14
  405cd0:	5d                   	pop    %rbp
  405cd1:	c3                   	retq   
  405cd2:	48 ff c0             	inc    %rax
  405cd5:	31 d2                	xor    %edx,%edx
  405cd7:	e9 5d fe ff ff       	jmpq   405b39 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x49>
  405cdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405ce0 <_ZZ4mainENKUlvE_clEv._omp_fn.2>:
  405ce0:	55                   	push   %rbp
  405ce1:	48 89 e5             	mov    %rsp,%rbp
  405ce4:	41 55                	push   %r13
  405ce6:	41 54                	push   %r12
  405ce8:	49 89 fc             	mov    %rdi,%r12
  405ceb:	53                   	push   %rbx
  405cec:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  405cf0:	48 81 ec 40 19 00 00 	sub    $0x1940,%rsp
  405cf7:	48 8b 07             	mov    (%rdi),%rax
  405cfa:	48 8b 50 48          	mov    0x48(%rax),%rdx
  405cfe:	80 3a 00             	cmpb   $0x0,(%rdx)
  405d01:	74 32                	je     405d35 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x55>
  405d03:	64 80 3c 25 f0 ff ff 	cmpb   $0x0,%fs:0xfffffffffffffff0
  405d0a:	ff 00 
  405d0c:	0f 84 f9 15 00 00    	je     40730b <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x162b>
  405d12:	64 0f b6 04 25 f8 ff 	movzbl %fs:0xfffffffffffffff8,%eax
  405d19:	ff ff 
  405d1b:	84 c0                	test   %al,%al
  405d1d:	0f 85 07 06 00 00    	jne    40632a <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x64a>
  405d23:	48 8b 1d 3e 58 00 00 	mov    0x583e(%rip),%rbx        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  405d2a:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  405d30:	e9 c9 05 00 00       	jmpq   4062fe <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x61e>
  405d35:	48 8b 40 50          	mov    0x50(%rax),%rax
  405d39:	80 38 00             	cmpb   $0x0,(%rax)
  405d3c:	b8 a0 86 01 00       	mov    $0x186a0,%eax
  405d41:	0f 84 5b 03 00 00    	je     4060a2 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x3c2>
  405d47:	62 f2 7d 48 18 05 f7 	vbroadcastss 0x57f7(%rip),%zmm0        # 40b548 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x228>
  405d4e:	57 00 00 
  405d51:	62 f2 7d 48 18 25 c5 	vbroadcastss 0x57c5(%rip),%zmm4        # 40b520 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x200>
  405d58:	57 00 00 
  405d5b:	62 f2 7d 48 18 2d bf 	vbroadcastss 0x57bf(%rip),%zmm5        # 40b524 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x204>
  405d62:	57 00 00 
  405d65:	62 f2 7d 48 18 35 b9 	vbroadcastss 0x57b9(%rip),%zmm6        # 40b528 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x208>
  405d6c:	57 00 00 
  405d6f:	62 f2 7d 48 18 3d b3 	vbroadcastss 0x57b3(%rip),%zmm7        # 40b52c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x20c>
  405d76:	57 00 00 
  405d79:	62 72 7d 48 18 05 ad 	vbroadcastss 0x57ad(%rip),%zmm8        # 40b530 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x210>
  405d80:	57 00 00 
  405d83:	62 72 7d 48 18 0d a7 	vbroadcastss 0x57a7(%rip),%zmm9        # 40b534 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x214>
  405d8a:	57 00 00 
  405d8d:	62 72 7d 48 18 15 a1 	vbroadcastss 0x57a1(%rip),%zmm10        # 40b538 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x218>
  405d94:	57 00 00 
  405d97:	62 72 7d 48 18 1d 9b 	vbroadcastss 0x579b(%rip),%zmm11        # 40b53c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x21c>
  405d9e:	57 00 00 
  405da1:	62 f2 7d 48 18 15 95 	vbroadcastss 0x5795(%rip),%zmm2        # 40b540 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x220>
  405da8:	57 00 00 
  405dab:	62 72 7d 48 18 25 8f 	vbroadcastss 0x578f(%rip),%zmm12        # 40b544 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x224>
  405db2:	57 00 00 
  405db5:	62 72 7d 48 18 2d 45 	vbroadcastss 0x5645(%rip),%zmm13        # 40b404 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe4>
  405dbc:	56 00 00 
  405dbf:	62 f2 7d 48 18 0d 83 	vbroadcastss 0x5783(%rip),%zmm1        # 40b54c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x22c>
  405dc6:	57 00 00 
  405dc9:	62 f1 7c 48 28 d8    	vmovaps %zmm0,%zmm3
  405dcf:	90                   	nop
  405dd0:	62 f2 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm3
  405dd6:	62 72 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm13
  405ddc:	62 72 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm12
  405de2:	62 f2 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm2
  405de8:	62 72 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm11
  405dee:	62 72 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm10
  405df4:	62 72 75 48 98 c8    	vfmadd132ps %zmm0,%zmm1,%zmm9
  405dfa:	62 72 75 48 98 c0    	vfmadd132ps %zmm0,%zmm1,%zmm8
  405e00:	62 f2 75 48 98 f8    	vfmadd132ps %zmm0,%zmm1,%zmm7
  405e06:	62 f2 75 48 98 f0    	vfmadd132ps %zmm0,%zmm1,%zmm6
  405e0c:	62 f2 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm5
  405e12:	62 f2 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm4
  405e18:	ff c8                	dec    %eax
  405e1a:	75 b4                	jne    405dd0 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0xf0>
  405e1c:	62 f3 fd 48 1b d9 01 	vextractf64x4 $0x1,%zmm3,%ymm1
  405e23:	c5 e4 58 c1          	vaddps %ymm1,%ymm3,%ymm0
  405e27:	45 31 ed             	xor    %r13d,%r13d
  405e2a:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  405e30:	c5 f0 58 c8          	vaddps %xmm0,%xmm1,%xmm1
  405e34:	c4 e3 79 04 c1 4e    	vpermilps $0x4e,%xmm1,%xmm0
  405e3a:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
  405e3e:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
  405e42:	c5 f8 c6 c0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm0
  405e47:	c5 f2 58 c8          	vaddss %xmm0,%xmm1,%xmm1
  405e4b:	62 73 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm13,%ymm0
  405e52:	c4 c1 7c 58 c5       	vaddps %ymm13,%ymm0,%ymm0
  405e57:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  405e5b:	c5 f3 58 0d 05 57 00 	vaddsd 0x5705(%rip),%xmm1,%xmm1        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  405e62:	00 
  405e63:	c4 e3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm3
  405e69:	c5 f8 58 c3          	vaddps %xmm3,%xmm0,%xmm0
  405e6d:	c4 e3 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm3
  405e73:	c5 e0 58 d8          	vaddps %xmm0,%xmm3,%xmm3
  405e77:	c5 e0 c6 c3 55       	vshufps $0x55,%xmm3,%xmm3,%xmm0
  405e7c:	c5 fa 58 c3          	vaddss %xmm3,%xmm0,%xmm0
  405e80:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  405e84:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  405e88:	62 73 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm12,%ymm1
  405e8f:	c4 c1 74 58 cc       	vaddps %ymm12,%ymm1,%ymm1
  405e94:	c4 e3 7d 19 cb 01    	vextractf128 $0x1,%ymm1,%xmm3
  405e9a:	c5 e0 58 d9          	vaddps %xmm1,%xmm3,%xmm3
  405e9e:	c4 e3 79 04 cb 4e    	vpermilps $0x4e,%xmm3,%xmm1
  405ea4:	c5 f0 58 cb          	vaddps %xmm3,%xmm1,%xmm1
  405ea8:	c5 f8 28 d9          	vmovaps %xmm1,%xmm3
  405eac:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  405eb1:	c5 e2 58 d9          	vaddss %xmm1,%xmm3,%xmm3
  405eb5:	62 f3 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm2,%ymm1
  405ebc:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  405ec0:	c5 e3 58 d8          	vaddsd %xmm0,%xmm3,%xmm3
  405ec4:	c5 ec 58 c1          	vaddps %ymm1,%ymm2,%ymm0
  405ec8:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  405ece:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
  405ed2:	c4 e3 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm1
  405ed8:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  405edc:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
  405ee0:	c5 f8 c6 c0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm0
  405ee5:	c5 f2 58 c8          	vaddss %xmm0,%xmm1,%xmm1
  405ee9:	62 73 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm11,%ymm0
  405ef0:	c4 c1 7c 58 c3       	vaddps %ymm11,%ymm0,%ymm0
  405ef5:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  405ef9:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  405efd:	c4 e3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm2
  405f03:	c5 e8 58 c0          	vaddps %xmm0,%xmm2,%xmm0
  405f07:	c4 e3 79 04 d0 4e    	vpermilps $0x4e,%xmm0,%xmm2
  405f0d:	c5 e8 58 d0          	vaddps %xmm0,%xmm2,%xmm2
  405f11:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
  405f15:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  405f1a:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  405f1e:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  405f22:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  405f26:	62 73 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm1
  405f2d:	c4 c1 74 58 ca       	vaddps %ymm10,%ymm1,%ymm1
  405f32:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  405f38:	c5 e8 58 c9          	vaddps %xmm1,%xmm2,%xmm1
  405f3c:	c4 e3 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm2
  405f42:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  405f46:	c5 f8 28 ca          	vmovaps %xmm2,%xmm1
  405f4a:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  405f4f:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
  405f53:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  405f57:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  405f5b:	62 73 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm0
  405f62:	c4 c1 7c 58 c1       	vaddps %ymm9,%ymm0,%ymm0
  405f67:	c4 e3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm2
  405f6d:	c5 e8 58 c0          	vaddps %xmm0,%xmm2,%xmm0
  405f71:	c4 e3 79 04 d0 4e    	vpermilps $0x4e,%xmm0,%xmm2
  405f77:	c5 e8 58 d0          	vaddps %xmm0,%xmm2,%xmm2
  405f7b:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
  405f7f:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  405f84:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  405f88:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  405f8c:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  405f90:	62 73 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm8,%ymm1
  405f97:	c4 c1 74 58 c8       	vaddps %ymm8,%ymm1,%ymm1
  405f9c:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  405fa2:	c5 e8 58 c9          	vaddps %xmm1,%xmm2,%xmm1
  405fa6:	c4 e3 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm2
  405fac:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  405fb0:	c5 f8 28 ca          	vmovaps %xmm2,%xmm1
  405fb4:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  405fb9:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
  405fbd:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  405fc1:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  405fc5:	62 f3 fd 48 1b f8 01 	vextractf64x4 $0x1,%zmm7,%ymm0
  405fcc:	c5 fc 58 c7          	vaddps %ymm7,%ymm0,%ymm0
  405fd0:	c4 e3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm2
  405fd6:	c5 e8 58 c0          	vaddps %xmm0,%xmm2,%xmm0
  405fda:	c4 e3 79 04 d0 4e    	vpermilps $0x4e,%xmm0,%xmm2
  405fe0:	c5 e8 58 d0          	vaddps %xmm0,%xmm2,%xmm2
  405fe4:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
  405fe8:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  405fed:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  405ff1:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  405ff5:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  405ff9:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  406000:	c5 f4 58 ce          	vaddps %ymm6,%ymm1,%ymm1
  406004:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  40600a:	c5 e8 58 c9          	vaddps %xmm1,%xmm2,%xmm1
  40600e:	c4 e3 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm2
  406014:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  406018:	c5 f8 28 ca          	vmovaps %xmm2,%xmm1
  40601c:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  406021:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
  406025:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  406029:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40602d:	62 f3 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm5,%ymm0
  406034:	c5 fc 58 c5          	vaddps %ymm5,%ymm0,%ymm0
  406038:	c4 e3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm2
  40603e:	c5 e8 58 c0          	vaddps %xmm0,%xmm2,%xmm0
  406042:	c4 e3 79 04 d0 4e    	vpermilps $0x4e,%xmm0,%xmm2
  406048:	c5 e8 58 d0          	vaddps %xmm0,%xmm2,%xmm2
  40604c:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
  406050:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  406055:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  406059:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  40605d:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406061:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  406068:	c5 f4 58 cc          	vaddps %ymm4,%ymm1,%ymm1
  40606c:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  406072:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  406076:	c4 e3 79 04 ca 4e    	vpermilps $0x4e,%xmm2,%xmm1
  40607c:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
  406080:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
  406084:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  406089:	c5 ea 58 c9          	vaddss %xmm1,%xmm2,%xmm1
  40608d:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  406091:	c5 f3 58 f8          	vaddsd %xmm0,%xmm1,%xmm7
  406095:	c4 e1 f9 7e fb       	vmovq  %xmm7,%rbx
  40609a:	c5 f8 77             	vzeroupper 
  40609d:	e9 5c 02 00 00       	jmpq   4062fe <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x61e>
  4060a2:	62 f2 fd 48 19 05 4c 	vbroadcastsd 0x534c(%rip),%zmm0        # 40b3f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  4060a9:	53 00 00 
  4060ac:	62 f2 fd 48 19 15 72 	vbroadcastsd 0x5372(%rip),%zmm2        # 40b428 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x108>
  4060b3:	53 00 00 
  4060b6:	62 f2 fd 48 19 1d 70 	vbroadcastsd 0x5370(%rip),%zmm3        # 40b430 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x110>
  4060bd:	53 00 00 
  4060c0:	62 f2 fd 48 19 25 6e 	vbroadcastsd 0x536e(%rip),%zmm4        # 40b438 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x118>
  4060c7:	53 00 00 
  4060ca:	62 f2 fd 48 19 2d 6c 	vbroadcastsd 0x536c(%rip),%zmm5        # 40b440 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x120>
  4060d1:	53 00 00 
  4060d4:	62 f2 fd 48 19 35 6a 	vbroadcastsd 0x536a(%rip),%zmm6        # 40b448 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x128>
  4060db:	53 00 00 
  4060de:	62 f2 fd 48 19 3d 68 	vbroadcastsd 0x5368(%rip),%zmm7        # 40b450 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  4060e5:	53 00 00 
  4060e8:	62 72 fd 48 19 05 66 	vbroadcastsd 0x5366(%rip),%zmm8        # 40b458 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  4060ef:	53 00 00 
  4060f2:	62 72 fd 48 19 0d 64 	vbroadcastsd 0x5364(%rip),%zmm9        # 40b460 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  4060f9:	53 00 00 
  4060fc:	62 72 fd 48 19 15 62 	vbroadcastsd 0x5362(%rip),%zmm10        # 40b468 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x148>
  406103:	53 00 00 
  406106:	62 72 fd 48 19 1d f8 	vbroadcastsd 0x52f8(%rip),%zmm11        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  40610d:	52 00 00 
  406110:	62 72 fd 48 19 25 e6 	vbroadcastsd 0x52e6(%rip),%zmm12        # 40b400 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406117:	52 00 00 
  40611a:	62 f2 fd 48 19 0d f4 	vbroadcastsd 0x52f4(%rip),%zmm1        # 40b418 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  406121:	52 00 00 
  406124:	62 71 fd 48 28 e8    	vmovapd %zmm0,%zmm13
  40612a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406130:	62 72 f5 48 98 e8    	vfmadd132pd %zmm0,%zmm1,%zmm13
  406136:	62 72 f5 48 98 e0    	vfmadd132pd %zmm0,%zmm1,%zmm12
  40613c:	62 72 f5 48 98 d8    	vfmadd132pd %zmm0,%zmm1,%zmm11
  406142:	62 72 f5 48 98 d0    	vfmadd132pd %zmm0,%zmm1,%zmm10
  406148:	62 72 f5 48 98 c8    	vfmadd132pd %zmm0,%zmm1,%zmm9
  40614e:	62 72 f5 48 98 c0    	vfmadd132pd %zmm0,%zmm1,%zmm8
  406154:	62 f2 f5 48 98 f8    	vfmadd132pd %zmm0,%zmm1,%zmm7
  40615a:	62 f2 f5 48 98 f0    	vfmadd132pd %zmm0,%zmm1,%zmm6
  406160:	62 f2 f5 48 98 e8    	vfmadd132pd %zmm0,%zmm1,%zmm5
  406166:	62 f2 f5 48 98 e0    	vfmadd132pd %zmm0,%zmm1,%zmm4
  40616c:	62 f2 f5 48 98 d8    	vfmadd132pd %zmm0,%zmm1,%zmm3
  406172:	62 f2 f5 48 98 d0    	vfmadd132pd %zmm0,%zmm1,%zmm2
  406178:	ff c8                	dec    %eax
  40617a:	75 b4                	jne    406130 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x450>
  40617c:	62 73 fd 48 1b e9 01 	vextractf64x4 $0x1,%zmm13,%ymm1
  406183:	c4 c1 75 58 cd       	vaddpd %ymm13,%ymm1,%ymm1
  406188:	45 31 ed             	xor    %r13d,%r13d
  40618b:	62 f3 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm1,%xmm0
  406192:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  406196:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  40619a:	c5 fb 58 0d c6 53 00 	vaddsd 0x53c6(%rip),%xmm0,%xmm1        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  4061a1:	00 
  4061a2:	62 73 fd 48 1b e0 01 	vextractf64x4 $0x1,%zmm12,%ymm0
  4061a9:	c4 41 7d 58 e4       	vaddpd %ymm12,%ymm0,%ymm12
  4061ae:	62 73 fd 28 19 e0 01 	vextractf64x2 $0x1,%ymm12,%xmm0
  4061b5:	c4 c1 79 58 c4       	vaddpd %xmm12,%xmm0,%xmm0
  4061ba:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  4061be:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  4061c2:	62 73 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm11,%ymm0
  4061c9:	c4 41 7d 58 db       	vaddpd %ymm11,%ymm0,%ymm11
  4061ce:	62 73 fd 28 19 d8 01 	vextractf64x2 $0x1,%ymm11,%xmm0
  4061d5:	c4 c1 79 58 c3       	vaddpd %xmm11,%xmm0,%xmm0
  4061da:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  4061de:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  4061e2:	62 73 fd 48 1b d0 01 	vextractf64x4 $0x1,%zmm10,%ymm0
  4061e9:	c4 41 7d 58 d2       	vaddpd %ymm10,%ymm0,%ymm10
  4061ee:	62 73 fd 28 19 d0 01 	vextractf64x2 $0x1,%ymm10,%xmm0
  4061f5:	c4 c1 79 58 c2       	vaddpd %xmm10,%xmm0,%xmm0
  4061fa:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  4061fe:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  406202:	62 73 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm0
  406209:	c4 41 7d 58 c9       	vaddpd %ymm9,%ymm0,%ymm9
  40620e:	62 73 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm9,%xmm0
  406215:	c4 c1 79 58 c1       	vaddpd %xmm9,%xmm0,%xmm0
  40621a:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  40621e:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  406222:	62 73 fd 48 1b c0 01 	vextractf64x4 $0x1,%zmm8,%ymm0
  406229:	c4 41 7d 58 c0       	vaddpd %ymm8,%ymm0,%ymm8
  40622e:	62 73 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm0
  406235:	c4 c1 79 58 c0       	vaddpd %xmm8,%xmm0,%xmm0
  40623a:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  40623e:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  406242:	62 f3 fd 48 1b f8 01 	vextractf64x4 $0x1,%zmm7,%ymm0
  406249:	c5 fd 58 ff          	vaddpd %ymm7,%ymm0,%ymm7
  40624d:	62 f3 fd 28 19 f8 01 	vextractf64x2 $0x1,%ymm7,%xmm0
  406254:	c5 f9 58 c7          	vaddpd %xmm7,%xmm0,%xmm0
  406258:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  40625c:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  406260:	62 f3 fd 48 1b f0 01 	vextractf64x4 $0x1,%zmm6,%ymm0
  406267:	c5 fd 58 f6          	vaddpd %ymm6,%ymm0,%ymm6
  40626b:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  406272:	c5 f9 58 c6          	vaddpd %xmm6,%xmm0,%xmm0
  406276:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  40627a:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  40627e:	62 f3 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm5,%ymm0
  406285:	c5 fd 58 ed          	vaddpd %ymm5,%ymm0,%ymm5
  406289:	62 f3 fd 28 19 e8 01 	vextractf64x2 $0x1,%ymm5,%xmm0
  406290:	c5 f9 58 c5          	vaddpd %xmm5,%xmm0,%xmm0
  406294:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  406298:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  40629c:	62 f3 fd 48 1b e0 01 	vextractf64x4 $0x1,%zmm4,%ymm0
  4062a3:	c5 fd 58 e4          	vaddpd %ymm4,%ymm0,%ymm4
  4062a7:	62 f3 fd 28 19 e0 01 	vextractf64x2 $0x1,%ymm4,%xmm0
  4062ae:	c5 f9 58 c4          	vaddpd %xmm4,%xmm0,%xmm0
  4062b2:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  4062b6:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  4062ba:	62 f3 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm3,%ymm0
  4062c1:	c5 fd 58 db          	vaddpd %ymm3,%ymm0,%ymm3
  4062c5:	62 f3 fd 28 19 d8 01 	vextractf64x2 $0x1,%ymm3,%xmm0
  4062cc:	c5 f9 58 c3          	vaddpd %xmm3,%xmm0,%xmm0
  4062d0:	62 f3 fd 48 1b d3 01 	vextractf64x4 $0x1,%zmm2,%ymm3
  4062d7:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  4062db:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  4062df:	c5 ed 58 c3          	vaddpd %ymm3,%ymm2,%ymm0
  4062e3:	62 f3 fd 28 19 c2 01 	vextractf64x2 $0x1,%ymm0,%xmm2
  4062ea:	c5 f9 58 c2          	vaddpd %xmm2,%xmm0,%xmm0
  4062ee:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  4062f2:	c5 fb 58 e9          	vaddsd %xmm1,%xmm0,%xmm5
  4062f6:	c4 e1 f9 7e eb       	vmovq  %xmm5,%rbx
  4062fb:	c5 f8 77             	vzeroupper 
  4062fe:	e8 8d ce ff ff       	callq  403190 <GOMP_atomic_start@plt>
  406303:	c4 e1 f9 6e eb       	vmovq  %rbx,%xmm5
  406308:	c4 c1 53 58 44 24 18 	vaddsd 0x18(%r12),%xmm5,%xmm0
  40630f:	45 09 6c 24 20       	or     %r13d,0x20(%r12)
  406314:	c4 c1 7b 11 44 24 18 	vmovsd %xmm0,0x18(%r12)
  40631b:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40631f:	5b                   	pop    %rbx
  406320:	41 5c                	pop    %r12
  406322:	41 5d                	pop    %r13
  406324:	5d                   	pop    %rbp
  406325:	e9 f6 ce ff ff       	jmpq   403220 <GOMP_atomic_end@plt>
  40632a:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40632e:	48 8b 05 eb 50 00 00 	mov    0x50eb(%rip),%rax        # 40b420 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x100>
  406335:	c5 f9 7f 84 24 10 01 	vmovdqa %xmm0,0x110(%rsp)
  40633c:	00 00 
  40633e:	c5 f9 7f 84 24 30 01 	vmovdqa %xmm0,0x130(%rsp)
  406345:	00 00 
  406347:	c5 f9 7f 84 24 00 01 	vmovdqa %xmm0,0x100(%rsp)
  40634e:	00 00 
  406350:	c5 f9 7f 84 24 20 01 	vmovdqa %xmm0,0x120(%rsp)
  406357:	00 00 
  406359:	c4 e2 7d 79 05 e8 51 	vpbroadcastw 0x51e8(%rip),%ymm0        # 40b54a <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x22a>
  406360:	00 00 
  406362:	48 89 84 24 10 01 00 	mov    %rax,0x110(%rsp)
  406369:	00 
  40636a:	b8 10 10 00 00       	mov    $0x1010,%eax
  40636f:	c6 84 24 00 01 00 00 	movb   $0x1,0x100(%rsp)
  406376:	01 
  406377:	c7 84 24 18 01 00 00 	movl   $0x400040,0x118(%rsp)
  40637e:	40 00 40 00 
  406382:	c7 84 24 30 01 00 00 	movl   $0x10101010,0x130(%rsp)
  406389:	10 10 10 10 
  40638d:	66 89 84 24 34 01 00 	mov    %ax,0x134(%rsp)
  406394:	00 
  406395:	c5 fd 7f 84 24 40 01 	vmovdqa %ymm0,0x140(%rsp)
  40639c:	00 00 
  40639e:	c5 fd 7f 84 24 60 01 	vmovdqa %ymm0,0x160(%rsp)
  4063a5:	00 00 
  4063a7:	c5 fd 7f 84 24 80 01 	vmovdqa %ymm0,0x180(%rsp)
  4063ae:	00 00 
  4063b0:	c5 fd 7f 84 24 a0 01 	vmovdqa %ymm0,0x1a0(%rsp)
  4063b7:	00 00 
  4063b9:	c5 fd 7f 84 24 c0 01 	vmovdqa %ymm0,0x1c0(%rsp)
  4063c0:	00 00 
  4063c2:	c5 fd 7f 84 24 e0 01 	vmovdqa %ymm0,0x1e0(%rsp)
  4063c9:	00 00 
  4063cb:	c5 fd 7f 84 24 00 02 	vmovdqa %ymm0,0x200(%rsp)
  4063d2:	00 00 
  4063d4:	c5 fd 7f 84 24 20 02 	vmovdqa %ymm0,0x220(%rsp)
  4063db:	00 00 
  4063dd:	c5 fd 7f 84 24 40 02 	vmovdqa %ymm0,0x240(%rsp)
  4063e4:	00 00 
  4063e6:	c5 fd 7f 84 24 60 02 	vmovdqa %ymm0,0x260(%rsp)
  4063ed:	00 00 
  4063ef:	c5 fd 7f 84 24 80 02 	vmovdqa %ymm0,0x280(%rsp)
  4063f6:	00 00 
  4063f8:	c5 fd 7f 84 24 a0 02 	vmovdqa %ymm0,0x2a0(%rsp)
  4063ff:	00 00 
  406401:	c5 fd 7f 84 24 c0 02 	vmovdqa %ymm0,0x2c0(%rsp)
  406408:	00 00 
  40640a:	c5 fd 7f 84 24 e0 02 	vmovdqa %ymm0,0x2e0(%rsp)
  406411:	00 00 
  406413:	c5 fd 7f 84 24 00 03 	vmovdqa %ymm0,0x300(%rsp)
  40641a:	00 00 
  40641c:	c5 fd 7f 84 24 20 03 	vmovdqa %ymm0,0x320(%rsp)
  406423:	00 00 
  406425:	c5 fd 7f 84 24 40 03 	vmovdqa %ymm0,0x340(%rsp)
  40642c:	00 00 
  40642e:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  406435:	00 00 
  406437:	c5 fd 7f 84 24 80 03 	vmovdqa %ymm0,0x380(%rsp)
  40643e:	00 00 
  406440:	c5 fd 7f 84 24 a0 03 	vmovdqa %ymm0,0x3a0(%rsp)
  406447:	00 00 
  406449:	c5 fd 7f 84 24 c0 03 	vmovdqa %ymm0,0x3c0(%rsp)
  406450:	00 00 
  406452:	c5 fd 7f 84 24 e0 03 	vmovdqa %ymm0,0x3e0(%rsp)
  406459:	00 00 
  40645b:	c5 fd 7f 84 24 00 04 	vmovdqa %ymm0,0x400(%rsp)
  406462:	00 00 
  406464:	c5 fd 7f 84 24 20 04 	vmovdqa %ymm0,0x420(%rsp)
  40646b:	00 00 
  40646d:	c5 fd 7f 84 24 40 04 	vmovdqa %ymm0,0x440(%rsp)
  406474:	00 00 
  406476:	c5 fd 7f 84 24 60 04 	vmovdqa %ymm0,0x460(%rsp)
  40647d:	00 00 
  40647f:	c5 fd 7f 84 24 80 04 	vmovdqa %ymm0,0x480(%rsp)
  406486:	00 00 
  406488:	c5 fd 7f 84 24 a0 04 	vmovdqa %ymm0,0x4a0(%rsp)
  40648f:	00 00 
  406491:	c5 fd 7f 84 24 c0 04 	vmovdqa %ymm0,0x4c0(%rsp)
  406498:	00 00 
  40649a:	c5 fd 7f 84 24 e0 04 	vmovdqa %ymm0,0x4e0(%rsp)
  4064a1:	00 00 
  4064a3:	c5 fd 7f 84 24 00 05 	vmovdqa %ymm0,0x500(%rsp)
  4064aa:	00 00 
  4064ac:	c5 fd 7f 84 24 20 05 	vmovdqa %ymm0,0x520(%rsp)
  4064b3:	00 00 
  4064b5:	c5 fd 7f 84 24 40 05 	vmovdqa %ymm0,0x540(%rsp)
  4064bc:	00 00 
  4064be:	c5 fd 7f 84 24 60 05 	vmovdqa %ymm0,0x560(%rsp)
  4064c5:	00 00 
  4064c7:	c5 fd 7f 84 24 80 05 	vmovdqa %ymm0,0x580(%rsp)
  4064ce:	00 00 
  4064d0:	c5 fd 7f 84 24 a0 05 	vmovdqa %ymm0,0x5a0(%rsp)
  4064d7:	00 00 
  4064d9:	c5 fd 7f 84 24 c0 05 	vmovdqa %ymm0,0x5c0(%rsp)
  4064e0:	00 00 
  4064e2:	c5 fd 7f 84 24 e0 05 	vmovdqa %ymm0,0x5e0(%rsp)
  4064e9:	00 00 
  4064eb:	c5 fd 7f 84 24 00 06 	vmovdqa %ymm0,0x600(%rsp)
  4064f2:	00 00 
  4064f4:	c5 fd 7f 84 24 20 06 	vmovdqa %ymm0,0x620(%rsp)
  4064fb:	00 00 
  4064fd:	c5 fd 7f 84 24 40 06 	vmovdqa %ymm0,0x640(%rsp)
  406504:	00 00 
  406506:	c5 fd 7f 84 24 60 06 	vmovdqa %ymm0,0x660(%rsp)
  40650d:	00 00 
  40650f:	c5 fd 7f 84 24 80 06 	vmovdqa %ymm0,0x680(%rsp)
  406516:	00 00 
  406518:	c5 fd 7f 84 24 a0 06 	vmovdqa %ymm0,0x6a0(%rsp)
  40651f:	00 00 
  406521:	c5 fd 7f 84 24 c0 06 	vmovdqa %ymm0,0x6c0(%rsp)
  406528:	00 00 
  40652a:	c5 fd 7f 84 24 e0 06 	vmovdqa %ymm0,0x6e0(%rsp)
  406531:	00 00 
  406533:	c5 fd 7f 84 24 00 07 	vmovdqa %ymm0,0x700(%rsp)
  40653a:	00 00 
  40653c:	c5 fd 7f 84 24 20 07 	vmovdqa %ymm0,0x720(%rsp)
  406543:	00 00 
  406545:	c5 fd 7f 84 24 40 07 	vmovdqa %ymm0,0x740(%rsp)
  40654c:	00 00 
  40654e:	c5 fd 7f 84 24 60 07 	vmovdqa %ymm0,0x760(%rsp)
  406555:	00 00 
  406557:	c5 fd 7f 84 24 80 07 	vmovdqa %ymm0,0x780(%rsp)
  40655e:	00 00 
  406560:	c5 fd 7f 84 24 a0 07 	vmovdqa %ymm0,0x7a0(%rsp)
  406567:	00 00 
  406569:	c5 fd 7f 84 24 c0 07 	vmovdqa %ymm0,0x7c0(%rsp)
  406570:	00 00 
  406572:	c5 fd 7f 84 24 e0 07 	vmovdqa %ymm0,0x7e0(%rsp)
  406579:	00 00 
  40657b:	c5 fd 7f 84 24 00 08 	vmovdqa %ymm0,0x800(%rsp)
  406582:	00 00 
  406584:	c5 fd 7f 84 24 20 08 	vmovdqa %ymm0,0x820(%rsp)
  40658b:	00 00 
  40658d:	c5 fd 7f 84 24 40 08 	vmovdqa %ymm0,0x840(%rsp)
  406594:	00 00 
  406596:	c5 fd 7f 84 24 60 08 	vmovdqa %ymm0,0x860(%rsp)
  40659d:	00 00 
  40659f:	c5 fd 7f 84 24 80 08 	vmovdqa %ymm0,0x880(%rsp)
  4065a6:	00 00 
  4065a8:	c5 fd 7f 84 24 a0 08 	vmovdqa %ymm0,0x8a0(%rsp)
  4065af:	00 00 
  4065b1:	c5 fd 7f 84 24 c0 08 	vmovdqa %ymm0,0x8c0(%rsp)
  4065b8:	00 00 
  4065ba:	c5 fd 7f 84 24 e0 08 	vmovdqa %ymm0,0x8e0(%rsp)
  4065c1:	00 00 
  4065c3:	c5 fd 7f 84 24 00 09 	vmovdqa %ymm0,0x900(%rsp)
  4065ca:	00 00 
  4065cc:	c5 fd 7f 84 24 20 09 	vmovdqa %ymm0,0x920(%rsp)
  4065d3:	00 00 
  4065d5:	c4 e2 78 49 84 24 00 	ldtilecfg 0x100(%rsp)
  4065dc:	01 00 00 
  4065df:	b8 40 00 00 00       	mov    $0x40,%eax
  4065e4:	48 8d 94 24 40 01 00 	lea    0x140(%rsp),%rdx
  4065eb:	00 
  4065ec:	c4 e2 7b 4b 24 02    	tileloadd (%rdx,%rax,1),%tmm4
  4065f2:	48 8d 94 24 40 05 00 	lea    0x540(%rsp),%rdx
  4065f9:	00 
  4065fa:	c4 e2 7b 4b 2c 02    	tileloadd (%rdx,%rax,1),%tmm5
  406600:	ba 40 00 00 00       	mov    $0x40,%edx
  406605:	0f 1f 00             	nopl   (%rax)
  406608:	c4 e2 7b 49 c0       	tilezero %tmm0
  40660d:	c4 e2 7b 49 c8       	tilezero %tmm1
  406612:	c4 e2 7b 49 d0       	tilezero %tmm2
  406617:	c4 e2 7b 49 d8       	tilezero %tmm3
  40661c:	b8 00 01 00 00       	mov    $0x100,%eax
  406621:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406628:	c4 e2 52 5c c4       	tdpbf16ps %tmm5,%tmm4,%tmm0
  40662d:	c4 e2 52 5c cc       	tdpbf16ps %tmm5,%tmm4,%tmm1
  406632:	c4 e2 52 5c d4       	tdpbf16ps %tmm5,%tmm4,%tmm2
  406637:	c4 e2 52 5c dc       	tdpbf16ps %tmm5,%tmm4,%tmm3
  40663c:	ff c8                	dec    %eax
  40663e:	75 e8                	jne    406628 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x948>
  406640:	ff ca                	dec    %edx
  406642:	75 c4                	jne    406608 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x928>
  406644:	48 8d 94 24 40 09 00 	lea    0x940(%rsp),%rdx
  40664b:	00 
  40664c:	b8 40 00 00 00       	mov    $0x40,%eax
  406651:	c4 e2 7a 4b 04 02    	tilestored %tmm0,(%rdx,%rax,1)
  406657:	48 8d 8c 24 40 0d 00 	lea    0xd40(%rsp),%rcx
  40665e:	00 
  40665f:	c4 e2 7a 4b 0c 01    	tilestored %tmm1,(%rcx,%rax,1)
  406665:	48 8d 8c 24 40 11 00 	lea    0x1140(%rsp),%rcx
  40666c:	00 
  40666d:	c4 e2 7a 4b 14 01    	tilestored %tmm2,(%rcx,%rax,1)
  406673:	48 8d 8c 24 40 15 00 	lea    0x1540(%rsp),%rcx
  40667a:	00 
  40667b:	c4 e2 7a 4b 1c 01    	tilestored %tmm3,(%rcx,%rax,1)
  406681:	48 8b 1d e0 4e 00 00 	mov    0x4ee0(%rip),%rbx        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  406688:	62 61 7d 28 6f 0d 2e 	vmovdqa32 0x4e2e(%rip),%ymm25        # 40b4c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1a0>
  40668f:	4e 00 00 
  406692:	62 61 7d 28 6f 05 44 	vmovdqa32 0x4e44(%rip),%ymm24        # 40b4e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  406699:	4e 00 00 
  40669c:	62 e2 7d 28 18 3d aa 	vbroadcastss 0x4eaa(%rip),%ymm23        # 40b550 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x230>
  4066a3:	4e 00 00 
  4066a6:	45 31 ed             	xor    %r13d,%r13d
  4066a9:	48 81 c2 00 04 00 00 	add    $0x400,%rdx
  4066b0:	48 8d 82 00 fc ff ff 	lea    -0x400(%rdx),%rax
  4066b7:	62 01 2d 00 ef d2    	vpxord %xmm26,%xmm26,%xmm26
  4066bd:	c5 fc 28 78 20       	vmovaps 0x20(%rax),%ymm7
  4066c2:	c5 fc 28 28          	vmovaps (%rax),%ymm5
  4066c6:	62 b3 7d 28 19 fc 01 	vextractf32x4 $0x1,%ymm7,%xmm20
  4066cd:	c5 fc 28 78 40       	vmovaps 0x40(%rax),%ymm7
  4066d2:	c5 fc 28 b0 00 01 00 	vmovaps 0x100(%rax),%ymm6
  4066d9:	00 
  4066da:	c4 e3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm1
  4066e0:	c5 fc 28 78 60       	vmovaps 0x60(%rax),%ymm7
  4066e5:	c5 fc 5a c1          	vcvtps2pd %xmm1,%ymm0
  4066e9:	62 b3 7d 28 19 ed 01 	vextractf32x4 $0x1,%ymm5,%xmm21
  4066f0:	c5 fd 29 44 24 20    	vmovapd %ymm0,0x20(%rsp)
  4066f6:	c4 e3 7d 19 f5 01    	vextractf128 $0x1,%ymm6,%xmm5
  4066fc:	c4 e3 7d 19 f8 01    	vextractf128 $0x1,%ymm7,%xmm0
  406702:	c5 fc 28 b0 20 01 00 	vmovaps 0x120(%rax),%ymm6
  406709:	00 
  40670a:	c5 fc 28 b8 80 00 00 	vmovaps 0x80(%rax),%ymm7
  406711:	00 
  406712:	c4 e3 7d 19 f4 01    	vextractf128 $0x1,%ymm6,%xmm4
  406718:	c4 c3 7d 19 fc 01    	vextractf128 $0x1,%ymm7,%xmm12
  40671e:	c5 fc 28 b0 40 01 00 	vmovaps 0x140(%rax),%ymm6
  406725:	00 
  406726:	c5 fc 28 b8 a0 00 00 	vmovaps 0xa0(%rax),%ymm7
  40672d:	00 
  40672e:	c5 fc 5a c8          	vcvtps2pd %xmm0,%ymm1
  406732:	c5 fc 28 80 a0 01 00 	vmovaps 0x1a0(%rax),%ymm0
  406739:	00 
  40673a:	c4 c3 7d 19 fb 01    	vextractf128 $0x1,%ymm7,%xmm11
  406740:	c4 e3 7d 19 f3 01    	vextractf128 $0x1,%ymm6,%xmm3
  406746:	c5 fc 28 b8 c0 00 00 	vmovaps 0xc0(%rax),%ymm7
  40674d:	00 
  40674e:	c5 fc 28 b0 60 01 00 	vmovaps 0x160(%rax),%ymm6
  406755:	00 
  406756:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  40675d:	62 61 7c 28 5a 70 02 	vcvtps2pd 0x20(%rax),%ymm30
  406764:	62 61 7c 28 5a 68 04 	vcvtps2pd 0x40(%rax),%ymm29
  40676b:	c5 7c 5a b0 40 01 00 	vcvtps2pd 0x140(%rax),%ymm14
  406772:	00 
  406773:	c5 7c 5a 90 80 01 00 	vcvtps2pd 0x180(%rax),%ymm10
  40677a:	00 
  40677b:	62 e1 7c 28 5a 30    	vcvtps2pd (%rax),%ymm22
  406781:	62 e1 7c 28 5a 58 06 	vcvtps2pd 0x60(%rax),%ymm19
  406788:	62 e1 7c 28 5a 50 08 	vcvtps2pd 0x80(%rax),%ymm18
  40678f:	62 e1 7c 28 5a 48 0a 	vcvtps2pd 0xa0(%rax),%ymm17
  406796:	62 e1 7c 28 5a 40 0c 	vcvtps2pd 0xc0(%rax),%ymm16
  40679d:	c5 7c 5a b8 e0 00 00 	vcvtps2pd 0xe0(%rax),%ymm15
  4067a4:	00 
  4067a5:	62 61 7c 28 5a 60 10 	vcvtps2pd 0x100(%rax),%ymm28
  4067ac:	62 61 7c 28 5a 58 12 	vcvtps2pd 0x120(%rax),%ymm27
  4067b3:	c5 7c 5a a8 60 01 00 	vcvtps2pd 0x160(%rax),%ymm13
  4067ba:	00 
  4067bb:	c5 7c 5a 80 a0 01 00 	vcvtps2pd 0x1a0(%rax),%ymm8
  4067c2:	00 
  4067c3:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  4067c9:	c5 fd 29 4c 24 40    	vmovapd %ymm1,0x40(%rsp)
  4067cf:	62 61 7c 28 5a 78 1c 	vcvtps2pd 0x1c0(%rax),%ymm31
  4067d6:	c4 c3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm9
  4067dc:	c4 e3 7d 19 f2 01    	vextractf128 $0x1,%ymm6,%xmm2
  4067e2:	c5 fc 28 b8 e0 00 00 	vmovaps 0xe0(%rax),%ymm7
  4067e9:	00 
  4067ea:	c5 fc 28 b0 80 01 00 	vmovaps 0x180(%rax),%ymm6
  4067f1:	00 
  4067f2:	c5 fd 29 44 24 60    	vmovapd %ymm0,0x60(%rsp)
  4067f8:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0x80(%rsp)
  4067ff:	04 
  406800:	c5 fc 28 80 c0 01 00 	vmovaps 0x1c0(%rax),%ymm0
  406807:	00 
  406808:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x18(%rsp)
  40680f:	03 
  406810:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  406817:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  40681d:	c5 fd 29 84 24 a0 00 	vmovapd %ymm0,0xa0(%rsp)
  406824:	00 00 
  406826:	c5 fc 28 80 e0 01 00 	vmovaps 0x1e0(%rax),%ymm0
  40682d:	00 
  40682e:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  406833:	62 61 7c 28 5a 78 1e 	vcvtps2pd 0x1e0(%rax),%ymm31
  40683a:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xc0(%rsp)
  406841:	06 
  406842:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  406849:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
  40684e:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  406854:	c5 fd 29 84 24 e0 00 	vmovapd %ymm0,0xe0(%rsp)
  40685b:	00 00 
  40685d:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  406862:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406866:	62 b1 cd 00 15 ce    	vunpckhpd %xmm22,%xmm22,%xmm1
  40686c:	62 a3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm22,%xmm22
  406873:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  406877:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x18(%rsp)
  40687e:	03 
  40687f:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  406884:	c4 e1 f9 7e cb       	vmovq  %xmm1,%rbx
  406889:	62 61 fd 08 6e fb    	vmovq  %rbx,%xmm31
  40688f:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
  406894:	62 91 f7 08 58 cf    	vaddsd %xmm31,%xmm1,%xmm1
  40689a:	62 21 cd 00 15 fe    	vunpckhpd %xmm22,%xmm22,%xmm31
  4068a0:	62 a1 7c 28 5a ed    	vcvtps2pd %xmm21,%ymm21
  4068a6:	62 f1 87 00 58 c9    	vaddsd %xmm1,%xmm31,%xmm1
  4068ac:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x18(%rsp)
  4068b3:	03 
  4068b4:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  4068b9:	c4 e1 f9 7e c9       	vmovq  %xmm1,%rcx
  4068be:	62 e1 fd 08 6e f1    	vmovq  %rcx,%xmm22
  4068c4:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  4068c9:	62 b1 f7 08 58 ce    	vaddsd %xmm22,%xmm1,%xmm1
  4068cf:	62 21 d5 00 15 fd    	vunpckhpd %xmm21,%xmm21,%xmm31
  4068d5:	62 a3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm21,%xmm21
  4068dc:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x18(%rsp)
  4068e3:	03 
  4068e4:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4068e9:	62 61 87 00 58 f9    	vaddsd %xmm1,%xmm31,%xmm31
  4068ef:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
  4068f4:	62 61 fd 08 13 74 24 	vmovlpd %xmm30,0x18(%rsp)
  4068fb:	03 
  4068fc:	62 01 f7 08 58 ff    	vaddsd %xmm31,%xmm1,%xmm31
  406902:	62 a1 d5 00 15 f5    	vunpckhpd %xmm21,%xmm21,%xmm22
  406908:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40690d:	62 81 cf 00 58 f7    	vaddsd %xmm31,%xmm22,%xmm22
  406913:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
  406918:	62 01 8d 00 15 fe    	vunpckhpd %xmm30,%xmm30,%xmm31
  40691e:	62 a1 f7 08 58 f6    	vaddsd %xmm22,%xmm1,%xmm22
  406924:	62 a1 7c 28 5a e4    	vcvtps2pd %xmm20,%ymm20
  40692a:	c5 fd 28 44 24 20    	vmovapd 0x20(%rsp),%ymm0
  406930:	62 21 87 00 58 fe    	vaddsd %xmm22,%xmm31,%xmm31
  406936:	62 23 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm30,%xmm22
  40693d:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x18(%rsp)
  406944:	03 
  406945:	62 61 ff 08 10 74 24 	vmovsd 0x18(%rsp),%xmm30
  40694c:	03 
  40694d:	62 a1 cd 00 15 f6    	vunpckhpd %xmm22,%xmm22,%xmm22
  406953:	62 01 8f 00 58 f7    	vaddsd %xmm31,%xmm30,%xmm30
  406959:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x18(%rsp)
  406960:	03 
  406961:	62 61 ff 08 10 7c 24 	vmovsd 0x18(%rsp),%xmm31
  406968:	03 
  406969:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  40696f:	62 21 dd 00 15 f4    	vunpckhpd %xmm20,%xmm20,%xmm30
  406975:	62 a3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm20,%xmm20
  40697c:	62 a1 87 00 58 f6    	vaddsd %xmm22,%xmm31,%xmm22
  406982:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x18(%rsp)
  406989:	03 
  40698a:	62 a1 dd 00 15 ec    	vunpckhpd %xmm20,%xmm20,%xmm21
  406990:	62 21 8f 00 58 f6    	vaddsd %xmm22,%xmm30,%xmm30
  406996:	62 e1 ff 08 10 74 24 	vmovsd 0x18(%rsp),%xmm22
  40699d:	03 
  40699e:	62 61 fd 08 13 6c 24 	vmovlpd %xmm29,0x18(%rsp)
  4069a5:	03 
  4069a6:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  4069ac:	62 61 ff 08 10 74 24 	vmovsd 0x18(%rsp),%xmm30
  4069b3:	03 
  4069b4:	c5 f9 13 44 24 20    	vmovlpd %xmm0,0x20(%rsp)
  4069ba:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  4069c0:	62 81 95 00 15 f5    	vunpckhpd %xmm29,%xmm29,%xmm22
  4069c6:	62 f3 fd 28 19 c1 01 	vextractf64x2 $0x1,%ymm0,%xmm1
  4069cd:	62 a1 8f 00 58 ed    	vaddsd %xmm21,%xmm30,%xmm21
  4069d3:	62 e1 f5 08 15 e1    	vunpckhpd %xmm1,%xmm1,%xmm20
  4069d9:	c4 41 7c 5a e4       	vcvtps2pd %xmm12,%ymm12
  4069de:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  4069e4:	62 23 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm29,%xmm21
  4069eb:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x18(%rsp)
  4069f2:	03 
  4069f3:	62 61 ff 08 10 6c 24 	vmovsd 0x18(%rsp),%xmm29
  4069fa:	03 
  4069fb:	62 a1 d5 00 15 ed    	vunpckhpd %xmm21,%xmm21,%xmm21
  406a01:	62 a1 97 00 58 f6    	vaddsd %xmm22,%xmm29,%xmm22
  406a07:	62 61 ff 08 10 6c 24 	vmovsd 0x20(%rsp),%xmm29
  406a0e:	04 
  406a0f:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x20(%rsp)
  406a16:	04 
  406a17:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  406a1d:	62 e1 fd 08 15 f0    	vunpckhpd %xmm0,%xmm0,%xmm22
  406a23:	c4 41 7c 5a db       	vcvtps2pd %xmm11,%ymm11
  406a28:	62 a1 97 00 58 ed    	vaddsd %xmm21,%xmm29,%xmm21
  406a2e:	c4 41 7c 5a c9       	vcvtps2pd %xmm9,%ymm9
  406a33:	c4 e3 7d 19 ff 01    	vextractf128 $0x1,%ymm7,%xmm7
  406a39:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  406a3f:	c5 fc 5a ff          	vcvtps2pd %xmm7,%ymm7
  406a43:	c5 fc 5a ed          	vcvtps2pd %xmm5,%ymm5
  406a47:	62 a1 f7 08 58 ee    	vaddsd %xmm22,%xmm1,%xmm21
  406a4d:	62 e1 ff 08 10 74 24 	vmovsd 0x20(%rsp),%xmm22
  406a54:	04 
  406a55:	c5 fc 5a e4          	vcvtps2pd %xmm4,%ymm4
  406a59:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  406a5f:	62 a1 e5 00 15 eb    	vunpckhpd %xmm19,%xmm19,%xmm21
  406a65:	62 a3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm19,%xmm19
  406a6c:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  406a72:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x20(%rsp)
  406a79:	04 
  406a7a:	62 e1 ff 08 10 74 24 	vmovsd 0x20(%rsp),%xmm22
  406a81:	04 
  406a82:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  406a88:	c5 fd 28 4c 24 40    	vmovapd 0x40(%rsp),%ymm1
  406a8e:	62 a1 e5 00 15 e3    	vunpckhpd %xmm19,%xmm19,%xmm20
  406a94:	62 a1 cf 00 58 ed    	vaddsd %xmm21,%xmm22,%xmm21
  406a9a:	c5 f9 13 4c 24 40    	vmovlpd %xmm1,0x40(%rsp)
  406aa0:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  406aa7:	08 
  406aa8:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  406aae:	62 e1 f5 08 15 e9    	vunpckhpd %xmm1,%xmm1,%xmm21
  406ab4:	62 f3 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm1,%xmm0
  406abb:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  406ac1:	62 e1 fd 08 15 d8    	vunpckhpd %xmm0,%xmm0,%xmm19
  406ac7:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x40(%rsp)
  406ace:	08 
  406acf:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  406ad5:	c5 fc 5a db          	vcvtps2pd %xmm3,%ymm3
  406ad9:	c5 fc 5a d2          	vcvtps2pd %xmm2,%ymm2
  406add:	62 a1 ff 08 58 e5    	vaddsd %xmm21,%xmm0,%xmm20
  406ae3:	62 e1 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm21
  406aea:	08 
  406aeb:	c4 e3 7d 19 f6 01    	vextractf128 $0x1,%ymm6,%xmm6
  406af1:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  406af7:	62 a1 ed 00 15 e2    	vunpckhpd %xmm18,%xmm18,%xmm20
  406afd:	62 a3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm18,%xmm18
  406b04:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  406b0a:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x40(%rsp)
  406b11:	08 
  406b12:	62 e1 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm21
  406b19:	08 
  406b1a:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  406b20:	62 a1 ed 00 15 da    	vunpckhpd %xmm18,%xmm18,%xmm19
  406b26:	c5 79 13 64 24 40    	vmovlpd %xmm12,0x40(%rsp)
  406b2c:	62 a1 d7 00 58 e4    	vaddsd %xmm20,%xmm21,%xmm20
  406b32:	62 e1 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm21
  406b39:	08 
  406b3a:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x40(%rsp)
  406b41:	08 
  406b42:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  406b48:	62 c1 9d 08 15 e4    	vunpckhpd %xmm12,%xmm12,%xmm20
  406b4e:	62 53 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm12,%xmm12
  406b55:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  406b5b:	62 c1 9d 08 15 d4    	vunpckhpd %xmm12,%xmm12,%xmm18
  406b61:	c5 fc 5a f6          	vcvtps2pd %xmm6,%ymm6
  406b65:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  406b6b:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  406b72:	48 05 00 02 00 00    	add    $0x200,%rax
  406b78:	62 a1 9f 08 58 dc    	vaddsd %xmm20,%xmm12,%xmm19
  406b7e:	62 e1 ff 08 10 64 24 	vmovsd 0x40(%rsp),%xmm20
  406b85:	08 
  406b86:	62 43 fd 28 19 dc 01 	vextractf64x2 $0x1,%ymm27,%xmm12
  406b8d:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  406b93:	62 a1 f5 00 15 d9    	vunpckhpd %xmm17,%xmm17,%xmm19
  406b99:	62 a3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm17,%xmm17
  406ba0:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  406ba6:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x40(%rsp)
  406bad:	08 
  406bae:	62 e1 ff 08 10 64 24 	vmovsd 0x40(%rsp),%xmm20
  406bb5:	08 
  406bb6:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  406bbc:	62 a1 f5 00 15 d1    	vunpckhpd %xmm17,%xmm17,%xmm18
  406bc2:	c5 79 13 5c 24 40    	vmovlpd %xmm11,0x40(%rsp)
  406bc8:	62 a1 df 00 58 db    	vaddsd %xmm19,%xmm20,%xmm19
  406bce:	62 e1 ff 08 10 64 24 	vmovsd 0x40(%rsp),%xmm20
  406bd5:	08 
  406bd6:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x40(%rsp)
  406bdd:	08 
  406bde:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  406be4:	62 c1 a5 08 15 db    	vunpckhpd %xmm11,%xmm11,%xmm19
  406bea:	62 53 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm11,%xmm11
  406bf1:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  406bf7:	62 c1 a5 08 15 cb    	vunpckhpd %xmm11,%xmm11,%xmm17
  406bfd:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  406c03:	62 a1 a7 08 58 d3    	vaddsd %xmm19,%xmm11,%xmm18
  406c09:	62 e1 ff 08 10 5c 24 	vmovsd 0x40(%rsp),%xmm19
  406c10:	08 
  406c11:	62 53 fd 28 19 f3 01 	vextractf64x2 $0x1,%ymm14,%xmm11
  406c18:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  406c1e:	62 a1 fd 00 15 d0    	vunpckhpd %xmm16,%xmm16,%xmm18
  406c24:	62 a3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm16,%xmm16
  406c2b:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  406c31:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x40(%rsp)
  406c38:	08 
  406c39:	62 e1 ff 08 10 5c 24 	vmovsd 0x40(%rsp),%xmm19
  406c40:	08 
  406c41:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  406c47:	62 a1 fd 00 15 c8    	vunpckhpd %xmm16,%xmm16,%xmm17
  406c4d:	c5 79 13 4c 24 40    	vmovlpd %xmm9,0x40(%rsp)
  406c53:	62 a1 e7 00 58 d2    	vaddsd %xmm18,%xmm19,%xmm18
  406c59:	62 e1 ff 08 10 5c 24 	vmovsd 0x40(%rsp),%xmm19
  406c60:	08 
  406c61:	c5 79 13 7c 24 40    	vmovlpd %xmm15,0x40(%rsp)
  406c67:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  406c6d:	62 c1 b5 08 15 d1    	vunpckhpd %xmm9,%xmm9,%xmm18
  406c73:	62 53 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm9,%xmm9
  406c7a:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  406c80:	62 c1 b5 08 15 c1    	vunpckhpd %xmm9,%xmm9,%xmm16
  406c86:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  406c8c:	62 a1 b7 08 58 ca    	vaddsd %xmm18,%xmm9,%xmm17
  406c92:	62 e1 ff 08 10 54 24 	vmovsd 0x40(%rsp),%xmm18
  406c99:	08 
  406c9a:	c5 f9 13 7c 24 40    	vmovlpd %xmm7,0x40(%rsp)
  406ca0:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  406ca6:	62 c1 85 08 15 cf    	vunpckhpd %xmm15,%xmm15,%xmm17
  406cac:	62 53 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm15,%xmm15
  406cb3:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  406cb9:	62 e1 ff 08 10 54 24 	vmovsd 0x40(%rsp),%xmm18
  406cc0:	08 
  406cc1:	62 61 fd 08 13 64 24 	vmovlpd %xmm28,0x40(%rsp)
  406cc8:	08 
  406cc9:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  406ccf:	62 c1 85 08 15 c7    	vunpckhpd %xmm15,%xmm15,%xmm16
  406cd5:	62 53 fd 28 19 d1 01 	vextractf64x2 $0x1,%ymm10,%xmm9
  406cdc:	62 a1 87 08 58 c9    	vaddsd %xmm17,%xmm15,%xmm17
  406ce2:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  406ce8:	62 e1 c5 08 15 cf    	vunpckhpd %xmm7,%xmm7,%xmm17
  406cee:	62 f3 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm7,%xmm7
  406cf5:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  406cfb:	c5 41 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm15
  406cff:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  406d05:	62 a1 c7 08 58 c1    	vaddsd %xmm17,%xmm7,%xmm16
  406d0b:	62 e1 ff 08 10 4c 24 	vmovsd 0x40(%rsp),%xmm17
  406d12:	08 
  406d13:	c5 f9 13 6c 24 40    	vmovlpd %xmm5,0x40(%rsp)
  406d19:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  406d1f:	62 81 9d 00 15 c4    	vunpckhpd %xmm28,%xmm28,%xmm16
  406d25:	c5 fd 28 7c 24 60    	vmovapd 0x60(%rsp),%ymm7
  406d2b:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  406d31:	62 e1 ff 08 10 4c 24 	vmovsd 0x40(%rsp),%xmm17
  406d38:	08 
  406d39:	62 f3 fd 28 19 f8 01 	vextractf64x2 $0x1,%ymm7,%xmm0
  406d40:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  406d46:	62 43 fd 28 19 e7 01 	vextractf64x2 $0x1,%ymm28,%xmm15
  406d4d:	62 a1 87 08 58 c0    	vaddsd %xmm16,%xmm15,%xmm16
  406d53:	c4 41 01 15 ff       	vunpckhpd %xmm15,%xmm15,%xmm15
  406d58:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  406d5e:	62 e1 d5 08 15 c5    	vunpckhpd %xmm5,%xmm5,%xmm16
  406d64:	62 f3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm5,%xmm5
  406d6b:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  406d71:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  406d77:	62 31 d7 08 58 f8    	vaddsd %xmm16,%xmm5,%xmm15
  406d7d:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  406d81:	c4 c1 53 58 ef       	vaddsd %xmm15,%xmm5,%xmm5
  406d86:	62 11 a5 00 15 fb    	vunpckhpd %xmm27,%xmm27,%xmm15
  406d8c:	62 f1 a7 00 58 ed    	vaddsd %xmm5,%xmm27,%xmm5
  406d92:	c5 03 58 fd          	vaddsd %xmm5,%xmm15,%xmm15
  406d96:	c4 c1 1b 58 ef       	vaddsd %xmm15,%xmm12,%xmm5
  406d9b:	c4 41 19 15 e4       	vunpckhpd %xmm12,%xmm12,%xmm12
  406da0:	c5 1b 58 e5          	vaddsd %xmm5,%xmm12,%xmm12
  406da4:	c5 d9 15 ec          	vunpckhpd %xmm4,%xmm4,%xmm5
  406da8:	c4 41 5b 58 e4       	vaddsd %xmm12,%xmm4,%xmm12
  406dad:	62 f3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm4,%xmm4
  406db4:	c4 c1 53 58 ec       	vaddsd %xmm12,%xmm5,%xmm5
  406db9:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  406dbd:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  406dc1:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  406dc5:	c4 c1 09 15 ee       	vunpckhpd %xmm14,%xmm14,%xmm5
  406dca:	c5 8b 58 e4          	vaddsd %xmm4,%xmm14,%xmm4
  406dce:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  406dd2:	c5 a3 58 e5          	vaddsd %xmm5,%xmm11,%xmm4
  406dd6:	c4 41 21 15 db       	vunpckhpd %xmm11,%xmm11,%xmm11
  406ddb:	c5 23 58 dc          	vaddsd %xmm4,%xmm11,%xmm11
  406ddf:	c5 e1 15 e3          	vunpckhpd %xmm3,%xmm3,%xmm4
  406de3:	c4 c1 63 58 eb       	vaddsd %xmm11,%xmm3,%xmm5
  406de8:	62 f3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm3,%xmm3
  406def:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  406df3:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  406df7:	c5 e1 15 db          	vunpckhpd %xmm3,%xmm3,%xmm3
  406dfb:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  406dff:	c4 c1 11 15 dd       	vunpckhpd %xmm13,%xmm13,%xmm3
  406e04:	c5 93 58 e4          	vaddsd %xmm4,%xmm13,%xmm4
  406e08:	62 53 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm13,%xmm13
  406e0f:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  406e13:	c5 93 58 e3          	vaddsd %xmm3,%xmm13,%xmm4
  406e17:	c4 c1 11 15 dd       	vunpckhpd %xmm13,%xmm13,%xmm3
  406e1c:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  406e20:	c5 e9 15 e2          	vunpckhpd %xmm2,%xmm2,%xmm4
  406e24:	c5 eb 58 db          	vaddsd %xmm3,%xmm2,%xmm3
  406e28:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  406e2c:	62 f3 fd 28 19 d3 01 	vextractf64x2 $0x1,%ymm2,%xmm3
  406e33:	c5 e3 58 d4          	vaddsd %xmm4,%xmm3,%xmm2
  406e37:	c5 e1 15 db          	vunpckhpd %xmm3,%xmm3,%xmm3
  406e3b:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  406e3f:	c4 c1 29 15 d2       	vunpckhpd %xmm10,%xmm10,%xmm2
  406e44:	c5 ab 58 db          	vaddsd %xmm3,%xmm10,%xmm3
  406e48:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  406e4c:	c5 b3 58 d2          	vaddsd %xmm2,%xmm9,%xmm2
  406e50:	c4 41 31 15 c9       	vunpckhpd %xmm9,%xmm9,%xmm9
  406e55:	c5 33 58 ca          	vaddsd %xmm2,%xmm9,%xmm9
  406e59:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  406e5d:	c4 c1 4b 58 d9       	vaddsd %xmm9,%xmm6,%xmm3
  406e62:	c5 fd 28 b4 24 80 00 	vmovapd 0x80(%rsp),%ymm6
  406e69:	00 00 
  406e6b:	c5 fd 28 ac 24 a0 00 	vmovapd 0xa0(%rsp),%ymm5
  406e72:	00 00 
  406e74:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  406e78:	c5 fc 28 98 00 fe ff 	vmovaps -0x200(%rax),%ymm3
  406e7f:	ff 
  406e80:	62 e1 7c 28 28 50 f2 	vmovaps -0x1c0(%rax),%ymm18
  406e87:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  406e8b:	c5 f1 15 c9          	vunpckhpd %xmm1,%xmm1,%xmm1
  406e8f:	c5 fc 28 a0 80 fe ff 	vmovaps -0x180(%rax),%ymm4
  406e96:	ff 
  406e97:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  406e9b:	c4 c1 39 15 d0       	vunpckhpd %xmm8,%xmm8,%xmm2
  406ea0:	62 f2 35 20 7f 58 f1 	vpermt2ps -0x1e0(%rax),%ymm25,%ymm3
  406ea7:	c5 bb 58 c9          	vaddsd %xmm1,%xmm8,%xmm1
  406eab:	62 53 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm8
  406eb2:	c5 7c 28 b8 c0 fe ff 	vmovaps -0x140(%rax),%ymm15
  406eb9:	ff 
  406eba:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  406ebe:	62 e2 35 20 7f 50 f3 	vpermt2ps -0x1a0(%rax),%ymm25,%ymm18
  406ec5:	62 f2 35 20 7f 60 f5 	vpermt2ps -0x160(%rax),%ymm25,%ymm4
  406ecc:	c5 bb 58 ca          	vaddsd %xmm2,%xmm8,%xmm1
  406ed0:	c4 41 39 15 c0       	vunpckhpd %xmm8,%xmm8,%xmm8
  406ed5:	62 e1 7c 28 28 48 fa 	vmovaps -0xc0(%rax),%ymm17
  406edc:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  406ee0:	c5 c1 15 cf          	vunpckhpd %xmm7,%xmm7,%xmm1
  406ee4:	62 72 35 20 7f 78 f7 	vpermt2ps -0x120(%rax),%ymm25,%ymm15
  406eeb:	c4 c1 43 58 d0       	vaddsd %xmm8,%xmm7,%xmm2
  406ef0:	62 f3 fd 28 19 f7 01 	vextractf64x2 $0x1,%ymm6,%xmm7
  406ef7:	c5 7c 28 88 40 fe ff 	vmovaps -0x1c0(%rax),%ymm9
  406efe:	ff 
  406eff:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  406f03:	c5 fc 28 50 80       	vmovaps -0x80(%rax),%ymm2
  406f08:	c5 7c 28 b0 c0 fe ff 	vmovaps -0x140(%rax),%ymm14
  406f0f:	ff 
  406f10:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  406f14:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  406f18:	c5 7c 28 98 00 ff ff 	vmovaps -0x100(%rax),%ymm11
  406f1f:	ff 
  406f20:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406f24:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  406f28:	c5 7c 28 80 40 ff ff 	vmovaps -0xc0(%rax),%ymm8
  406f2f:	ff 
  406f30:	c5 cb 58 c0          	vaddsd %xmm0,%xmm6,%xmm0
  406f34:	62 f3 fd 28 19 ee 01 	vextractf64x2 $0x1,%ymm5,%xmm6
  406f3b:	62 e1 7c 28 28 40 fc 	vmovaps -0x80(%rax),%ymm16
  406f42:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  406f46:	c5 7c 28 60 c0       	vmovaps -0x40(%rax),%ymm12
  406f4b:	62 e2 35 20 7f 48 fb 	vpermt2ps -0xa0(%rax),%ymm25,%ymm17
  406f52:	c5 c3 58 c1          	vaddsd %xmm1,%xmm7,%xmm0
  406f56:	c5 c1 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm7
  406f5a:	62 f2 35 20 7f 50 fd 	vpermt2ps -0x60(%rax),%ymm25,%ymm2
  406f61:	c5 c3 58 f8          	vaddsd %xmm0,%xmm7,%xmm7
  406f65:	c5 d1 15 c5          	vunpckhpd %xmm5,%xmm5,%xmm0
  406f69:	62 72 3d 20 7f 48 f3 	vpermt2ps -0x1a0(%rax),%ymm24,%ymm9
  406f70:	c5 d3 58 cf          	vaddsd %xmm7,%xmm5,%xmm1
  406f74:	c5 fd 28 bc 24 c0 00 	vmovapd 0xc0(%rsp),%ymm7
  406f7b:	00 00 
  406f7d:	62 72 3d 20 7f 70 f7 	vpermt2ps -0x120(%rax),%ymm24,%ymm14
  406f84:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406f88:	62 d3 fd 28 19 fd 01 	vextractf64x2 $0x1,%ymm7,%xmm13
  406f8f:	62 72 3d 20 7f 40 fb 	vpermt2ps -0xa0(%rax),%ymm24,%ymm8
  406f96:	c5 cb 58 c8          	vaddsd %xmm0,%xmm6,%xmm1
  406f9a:	c5 c9 15 f6          	vunpckhpd %xmm6,%xmm6,%xmm6
  406f9e:	c5 c1 15 c7          	vunpckhpd %xmm7,%xmm7,%xmm0
  406fa2:	c5 f3 58 ce          	vaddsd %xmm6,%xmm1,%xmm1
  406fa6:	c5 fd 28 b4 24 e0 00 	vmovapd 0xe0(%rsp),%ymm6
  406fad:	00 00 
  406faf:	62 72 3d 20 7f 58 f9 	vpermt2ps -0xe0(%rax),%ymm24,%ymm11
  406fb6:	c5 c3 58 c9          	vaddsd %xmm1,%xmm7,%xmm1
  406fba:	62 f3 fd 28 19 f5 01 	vextractf64x2 $0x1,%ymm6,%xmm5
  406fc1:	c5 fc 28 b8 80 fe ff 	vmovaps -0x180(%rax),%ymm7
  406fc8:	ff 
  406fc9:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406fcd:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  406fd1:	62 f2 3d 20 7f 78 f5 	vpermt2ps -0x160(%rax),%ymm24,%ymm7
  406fd8:	c4 c1 7b 58 c5       	vaddsd %xmm13,%xmm0,%xmm0
  406fdd:	c4 41 11 15 ed       	vunpckhpd %xmm13,%xmm13,%xmm13
  406fe2:	62 e2 3d 20 7f 40 fd 	vpermt2ps -0x60(%rax),%ymm24,%ymm16
  406fe9:	c4 c1 7b 58 c5       	vaddsd %xmm13,%xmm0,%xmm0
  406fee:	c5 7c 28 eb          	vmovaps %ymm3,%ymm13
  406ff2:	62 32 35 20 7f ea    	vpermt2ps %ymm18,%ymm25,%ymm13
  406ff8:	c5 fb 58 c6          	vaddsd %xmm6,%xmm0,%xmm0
  406ffc:	62 b2 3d 20 7f da    	vpermt2ps %ymm18,%ymm24,%ymm3
  407002:	c5 fc 28 b0 00 fe ff 	vmovaps -0x200(%rax),%ymm6
  407009:	ff 
  40700a:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  40700e:	c5 fc 28 88 00 ff ff 	vmovaps -0x100(%rax),%ymm1
  407015:	ff 
  407016:	62 e1 7c 28 28 d4    	vmovaps %ymm4,%ymm18
  40701c:	62 f2 35 20 7f 48 f9 	vpermt2ps -0xe0(%rax),%ymm25,%ymm1
  407023:	62 c2 35 20 7f d7    	vpermt2ps %ymm15,%ymm25,%ymm18
  407029:	62 d2 3d 20 7f e7    	vpermt2ps %ymm15,%ymm24,%ymm4
  40702f:	c5 7c 28 f9          	vmovaps %ymm1,%ymm15
  407033:	62 f2 3d 20 7f 70 f1 	vpermt2ps -0x1e0(%rax),%ymm24,%ymm6
  40703a:	62 32 35 20 7f f9    	vpermt2ps %ymm17,%ymm25,%ymm15
  407040:	62 72 35 20 7f 60 ff 	vpermt2ps -0x20(%rax),%ymm25,%ymm12
  407047:	62 b2 3d 20 7f c9    	vpermt2ps %ymm17,%ymm24,%ymm1
  40704d:	62 e1 7c 28 28 ca    	vmovaps %ymm2,%ymm17
  407053:	62 c2 35 20 7f cc    	vpermt2ps %ymm12,%ymm25,%ymm17
  407059:	62 d2 3d 20 7f d4    	vpermt2ps %ymm12,%ymm24,%ymm2
  40705f:	c5 7c 28 e6          	vmovaps %ymm6,%ymm12
  407063:	62 52 35 20 7f e1    	vpermt2ps %ymm9,%ymm25,%ymm12
  407069:	62 d2 3d 20 7f f1    	vpermt2ps %ymm9,%ymm24,%ymm6
  40706f:	c5 7c 28 50 c0       	vmovaps -0x40(%rax),%ymm10
  407074:	c5 7c 28 cf          	vmovaps %ymm7,%ymm9
  407078:	62 52 35 20 7f ce    	vpermt2ps %ymm14,%ymm25,%ymm9
  40707e:	62 d2 3d 20 7f fe    	vpermt2ps %ymm14,%ymm24,%ymm7
  407084:	c4 41 7c 28 f3       	vmovaps %ymm11,%ymm14
  407089:	62 72 3d 20 7f 50 ff 	vpermt2ps -0x20(%rax),%ymm24,%ymm10
  407090:	62 52 35 20 7f f0    	vpermt2ps %ymm8,%ymm25,%ymm14
  407096:	62 52 3d 20 7f d8    	vpermt2ps %ymm8,%ymm24,%ymm11
  40709c:	62 31 7c 28 28 c0    	vmovaps %ymm16,%ymm8
  4070a2:	62 52 35 20 7f c2    	vpermt2ps %ymm10,%ymm25,%ymm8
  4070a8:	62 c2 3d 20 7f c2    	vpermt2ps %ymm10,%ymm24,%ymm16
  4070ae:	62 c1 7c 28 28 de    	vmovaps %ymm14,%ymm19
  4070b4:	c4 41 7c 28 d5       	vmovaps %ymm13,%ymm10
  4070b9:	62 32 35 20 7f d2    	vpermt2ps %ymm18,%ymm25,%ymm10
  4070bf:	62 32 3d 20 7f ea    	vpermt2ps %ymm18,%ymm24,%ymm13
  4070c5:	62 c2 35 20 7f d8    	vpermt2ps %ymm8,%ymm25,%ymm19
  4070cb:	62 52 3d 20 7f f0    	vpermt2ps %ymm8,%ymm24,%ymm14
  4070d1:	62 c1 7c 28 28 e7    	vmovaps %ymm15,%ymm20
  4070d7:	62 e1 7c 28 28 d1    	vmovaps %ymm1,%ymm18
  4070dd:	c5 7c 28 c6          	vmovaps %ymm6,%ymm8
  4070e1:	62 f2 3d 20 7f f7    	vpermt2ps %ymm7,%ymm24,%ymm6
  4070e7:	62 f2 3d 20 7f ca    	vpermt2ps %ymm2,%ymm24,%ymm1
  4070ed:	62 a2 35 20 7f e1    	vpermt2ps %ymm17,%ymm25,%ymm20
  4070f3:	62 32 3d 20 7f f9    	vpermt2ps %ymm17,%ymm24,%ymm15
  4070f9:	62 e2 35 20 7f d2    	vpermt2ps %ymm2,%ymm25,%ymm18
  4070ff:	62 c1 7c 28 28 cc    	vmovaps %ymm12,%ymm17
  407105:	c5 fc 28 d6          	vmovaps %ymm6,%ymm2
  407109:	c5 7c 29 d6          	vmovaps %ymm10,%ymm6
  40710d:	62 c2 35 20 7f c9    	vpermt2ps %ymm9,%ymm25,%ymm17
  407113:	62 b2 35 20 7f f4    	vpermt2ps %ymm20,%ymm25,%ymm6
  407119:	62 52 3d 20 7f e1    	vpermt2ps %ymm9,%ymm24,%ymm12
  40711f:	62 b1 4c 28 c2 cf 04 	vcmpneqps %ymm23,%ymm6,%k1
  407126:	c5 7c 28 cb          	vmovaps %ymm3,%ymm9
  40712a:	62 b1 7c 28 28 f1    	vmovaps %ymm17,%ymm6
  407130:	62 72 35 20 7f cc    	vpermt2ps %ymm4,%ymm25,%ymm9
  407136:	62 b2 35 20 7f f3    	vpermt2ps %ymm19,%ymm25,%ymm6
  40713c:	62 b1 4c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm6,%k0
  407143:	c5 7c 29 ce          	vmovaps %ymm9,%ymm6
  407147:	62 f2 3d 20 7f dc    	vpermt2ps %ymm4,%ymm24,%ymm3
  40714d:	62 72 35 20 7f c7    	vpermt2ps %ymm7,%ymm25,%ymm8
  407153:	c5 7c 29 dc          	vmovaps %ymm11,%ymm4
  407157:	62 b2 35 20 7f f2    	vpermt2ps %ymm18,%ymm25,%ymm6
  40715d:	62 b1 4c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm6,%k2
  407164:	62 b2 35 20 7f e0    	vpermt2ps %ymm16,%ymm25,%ymm4
  40716a:	c5 7c 29 c6          	vmovaps %ymm8,%ymm6
  40716e:	62 f2 35 20 7f f4    	vpermt2ps %ymm4,%ymm25,%ymm6
  407174:	62 b1 4c 28 c2 df 04 	vcmpneqps %ymm23,%ymm6,%k3
  40717b:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  40717f:	62 d2 35 20 7f f7    	vpermt2ps %ymm15,%ymm25,%ymm6
  407185:	62 b1 4c 28 c2 e7 04 	vcmpneqps %ymm23,%ymm6,%k4
  40718c:	c5 7c 29 e6          	vmovaps %ymm12,%ymm6
  407190:	62 d2 35 20 7f f6    	vpermt2ps %ymm14,%ymm25,%ymm6
  407196:	62 b1 4c 28 c2 ef 04 	vcmpneqps %ymm23,%ymm6,%k5
  40719d:	c5 fc 28 f3          	vmovaps %ymm3,%ymm6
  4071a1:	62 f2 35 20 7f f1    	vpermt2ps %ymm1,%ymm25,%ymm6
  4071a7:	62 b1 4c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm6,%k6
  4071ae:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  4071b2:	c5 f9 93 ca          	kmovb  %k2,%ecx
  4071b6:	62 32 3d 20 7f d8    	vpermt2ps %ymm16,%ymm24,%ymm11
  4071bc:	c5 fc 28 f2          	vmovaps %ymm2,%ymm6
  4071c0:	c5 f9 93 f1          	kmovb  %k1,%esi
  4071c4:	09 ce                	or     %ecx,%esi
  4071c6:	62 d2 35 20 7f f3    	vpermt2ps %ymm11,%ymm25,%ymm6
  4071cc:	c5 f9 93 cb          	kmovb  %k3,%ecx
  4071d0:	09 ce                	or     %ecx,%esi
  4071d2:	62 b1 4c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm6,%k7
  4071d9:	c5 f9 93 cc          	kmovb  %k4,%ecx
  4071dd:	62 32 3d 20 7f d4    	vpermt2ps %ymm20,%ymm24,%ymm10
  4071e3:	09 ce                	or     %ecx,%esi
  4071e5:	62 b1 7c 28 28 f9    	vmovaps %ymm17,%ymm7
  4071eb:	c5 f9 93 cd          	kmovb  %k5,%ecx
  4071ef:	62 b1 2c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm10,%k2
  4071f6:	09 ce                	or     %ecx,%esi
  4071f8:	62 b2 3d 20 7f fb    	vpermt2ps %ymm19,%ymm24,%ymm7
  4071fe:	c5 f9 93 ce          	kmovb  %k6,%ecx
  407202:	62 b1 44 28 c2 df 04 	vcmpneqps %ymm23,%ymm7,%k3
  407209:	09 ce                	or     %ecx,%esi
  40720b:	62 32 3d 20 7f ca    	vpermt2ps %ymm18,%ymm24,%ymm9
  407211:	c5 f9 93 cf          	kmovb  %k7,%ecx
  407215:	62 72 3d 20 7f c4    	vpermt2ps %ymm4,%ymm24,%ymm8
  40721b:	09 ce                	or     %ecx,%esi
  40721d:	62 b1 34 28 c2 e7 04 	vcmpneqps %ymm23,%ymm9,%k4
  407224:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  407228:	c5 f9 93 ca          	kmovb  %k2,%ecx
  40722c:	62 b1 3c 28 c2 ef 04 	vcmpneqps %ymm23,%ymm8,%k5
  407233:	09 ce                	or     %ecx,%esi
  407235:	62 d2 3d 20 7f f7    	vpermt2ps %ymm15,%ymm24,%ymm6
  40723b:	c5 7c 29 e4          	vmovaps %ymm12,%ymm4
  40723f:	62 f2 3d 20 7f d9    	vpermt2ps %ymm1,%ymm24,%ymm3
  407245:	c5 f9 93 cb          	kmovb  %k3,%ecx
  407249:	62 b1 4c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm6,%k6
  407250:	09 ce                	or     %ecx,%esi
  407252:	62 d2 3d 20 7f e6    	vpermt2ps %ymm14,%ymm24,%ymm4
  407258:	62 b1 64 28 c2 c7 04 	vcmpneqps %ymm23,%ymm3,%k0
  40725f:	c5 f9 93 cc          	kmovb  %k4,%ecx
  407263:	62 b1 5c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm4,%k7
  40726a:	09 ce                	or     %ecx,%esi
  40726c:	c5 fb 58 c5          	vaddsd %xmm5,%xmm0,%xmm0
  407270:	c5 f9 93 cd          	kmovb  %k5,%ecx
  407274:	09 ce                	or     %ecx,%esi
  407276:	62 d2 3d 20 7f d3    	vpermt2ps %ymm11,%ymm24,%ymm2
  40727c:	c5 f9 93 ce          	kmovb  %k6,%ecx
  407280:	09 ce                	or     %ecx,%esi
  407282:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  407286:	c5 f9 93 cf          	kmovb  %k7,%ecx
  40728a:	09 ce                	or     %ecx,%esi
  40728c:	c5 f9 93 c8          	kmovb  %k0,%ecx
  407290:	62 b1 6c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm2,%k0
  407297:	c5 d3 58 e8          	vaddsd %xmm0,%xmm5,%xmm5
  40729b:	09 ce                	or     %ecx,%esi
  40729d:	c5 f9 92 ce          	kmovb  %esi,%k1
  4072a1:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  4072a5:	62 f1 7d a9 6f 0d 51 	vmovdqa32 0x4251(%rip),%ymm1{%k1}{z}        # 40b500 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  4072ac:	42 00 00 
  4072af:	62 61 2d 20 eb d1    	vpord  %ymm1,%ymm26,%ymm26
  4072b5:	c4 e1 f9 7e eb       	vmovq  %xmm5,%rbx
  4072ba:	48 39 c2             	cmp    %rax,%rdx
  4072bd:	0f 85 fa f3 ff ff    	jne    4066bd <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x9dd>
  4072c3:	62 63 7d 28 39 d1 01 	vextracti32x4 $0x1,%ymm26,%xmm1
  4072ca:	62 91 7d 08 6f c2    	vmovdqa32 %xmm26,%xmm0
  4072d0:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  4072d4:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  4072d9:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  4072dd:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  4072e2:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  4072e6:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  4072ea:	41 09 c5             	or     %eax,%r13d
  4072ed:	48 8d 84 24 40 19 00 	lea    0x1940(%rsp),%rax
  4072f4:	00 
  4072f5:	48 39 c2             	cmp    %rax,%rdx
  4072f8:	0f 85 ab f3 ff ff    	jne    4066a9 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x9c9>
  4072fe:	c4 e2 78 49 c0       	tilerelease 
  407303:	c5 f8 77             	vzeroupper 
  407306:	e9 f3 ef ff ff       	jmpq   4062fe <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x61e>
  40730b:	31 c0                	xor    %eax,%eax
  40730d:	ba 12 00 00 00       	mov    $0x12,%edx
  407312:	be 23 10 00 00       	mov    $0x1023,%esi
  407317:	bf 9e 00 00 00       	mov    $0x9e,%edi
  40731c:	e8 2f bd ff ff       	callq  403050 <syscall@plt>
  407321:	48 85 c0             	test   %rax,%rax
  407324:	0f 94 c0             	sete   %al
  407327:	64 88 04 25 f8 ff ff 	mov    %al,%fs:0xfffffffffffffff8
  40732e:	ff 
  40732f:	64 c6 04 25 f0 ff ff 	movb   $0x1,%fs:0xfffffffffffffff0
  407336:	ff 01 
  407338:	e9 de e9 ff ff       	jmpq   405d1b <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x3b>
  40733d:	90                   	nop
  40733e:	66 90                	xchg   %ax,%ax

0000000000407340 <_ZZ4mainENKUlvE_clEv>:
  407340:	55                   	push   %rbp
  407341:	53                   	push   %rbx
  407342:	48 89 fb             	mov    %rdi,%rbx
  407345:	48 83 ec 38          	sub    $0x38,%rsp
  407349:	48 8b 07             	mov    (%rdi),%rax
  40734c:	80 38 00             	cmpb   $0x0,(%rax)
  40734f:	0f 85 6d 01 00 00    	jne    4074c2 <_ZZ4mainENKUlvE_clEv+0x182>
  407355:	48 8b 47 10          	mov    0x10(%rdi),%rax
  407359:	80 38 00             	cmpb   $0x0,(%rax)
  40735c:	0f 85 90 01 00 00    	jne    4074f2 <_ZZ4mainENKUlvE_clEv+0x1b2>
  407362:	48 8b 47 38          	mov    0x38(%rdi),%rax
  407366:	0f b6 28             	movzbl (%rax),%ebp
  407369:	40 84 ed             	test   %bpl,%bpl
  40736c:	0f 85 c2 00 00 00    	jne    407434 <_ZZ4mainENKUlvE_clEv+0xf4>
  407372:	48 8d 47 48          	lea    0x48(%rdi),%rax
  407376:	c4 e1 f9 6e df       	vmovq  %rdi,%xmm3
  40737b:	c4 e3 e1 22 c0 01    	vpinsrq $0x1,%rax,%xmm3,%xmm0
  407381:	31 d2                	xor    %edx,%edx
  407383:	48 8d 47 50          	lea    0x50(%rdi),%rax
  407387:	31 c9                	xor    %ecx,%ecx
  407389:	48 89 e6             	mov    %rsp,%rsi
  40738c:	bf e0 5c 40 00       	mov    $0x405ce0,%edi
  407391:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  407396:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%rsp)
  40739d:	00 
  40739e:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
  4073a5:	00 00 
  4073a7:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  4073ac:	e8 cf bf ff ff       	callq  403380 <GOMP_parallel@plt>
  4073b1:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4073b5:	c5 fb 10 4c 24 18    	vmovsd 0x18(%rsp),%xmm1
  4073bb:	48 8b 53 58          	mov    0x58(%rbx),%rdx
  4073bf:	c5 fb 11 0a          	vmovsd %xmm1,(%rdx)
  4073c3:	85 c0                	test   %eax,%eax
  4073c5:	75 1a                	jne    4073e1 <_ZZ4mainENKUlvE_clEv+0xa1>
  4073c7:	c5 f1 54 05 91 41 00 	vandpd 0x4191(%rip),%xmm1,%xmm0        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  4073ce:	00 
  4073cf:	c5 fb 10 15 a1 40 00 	vmovsd 0x40a1(%rip),%xmm2        # 40b478 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  4073d6:	00 
  4073d7:	c5 f9 2e d0          	vucomisd %xmm0,%xmm2
  4073db:	0f 83 00 01 00 00    	jae    4074e1 <_ZZ4mainENKUlvE_clEv+0x1a1>
  4073e1:	48 8b 43 60          	mov    0x60(%rbx),%rax
  4073e5:	48 8b 4b 50          	mov    0x50(%rbx),%rcx
  4073e9:	40 22 28             	and    (%rax),%bpl
  4073ec:	40 88 28             	mov    %bpl,(%rax)
  4073ef:	80 39 00             	cmpb   $0x0,(%rcx)
  4073f2:	0f 85 8e 00 00 00    	jne    407486 <_ZZ4mainENKUlvE_clEv+0x146>
  4073f8:	48 8b 53 68          	mov    0x68(%rbx),%rdx
  4073fc:	80 3a 00             	cmpb   $0x0,(%rdx)
  4073ff:	0f 85 81 00 00 00    	jne    407486 <_ZZ4mainENKUlvE_clEv+0x146>
  407405:	48 8b 73 48          	mov    0x48(%rbx),%rsi
  407409:	48 8b 43 78          	mov    0x78(%rbx),%rax
  40740d:	80 3e 00             	cmpb   $0x0,(%rsi)
  407410:	48 63 00             	movslq (%rax),%rax
  407413:	ba 00 00 00 40       	mov    $0x40000000,%edx
  407418:	75 14                	jne    40742e <_ZZ4mainENKUlvE_clEv+0xee>
  40741a:	80 39 01             	cmpb   $0x1,(%rcx)
  40741d:	48 19 d2             	sbb    %rdx,%rdx
  407420:	48 81 e2 00 08 db fe 	and    $0xfffffffffedb0800,%rdx
  407427:	48 81 c2 00 f0 49 02 	add    $0x249f000,%rdx
  40742e:	48 0f af c2          	imul   %rdx,%rax
  407432:	eb 4b                	jmp    40747f <_ZZ4mainENKUlvE_clEv+0x13f>
  407434:	48 8d 47 18          	lea    0x18(%rdi),%rax
  407438:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40743d:	48 8d 47 20          	lea    0x20(%rdi),%rax
  407441:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  407446:	48 8d 47 28          	lea    0x28(%rdi),%rax
  40744a:	48 89 3c 24          	mov    %rdi,(%rsp)
  40744e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  407453:	31 d2                	xor    %edx,%edx
  407455:	48 8d 47 40          	lea    0x40(%rdi),%rax
  407459:	31 c9                	xor    %ecx,%ecx
  40745b:	48 89 e6             	mov    %rsp,%rsi
  40745e:	bf f0 5a 40 00       	mov    $0x405af0,%edi
  407463:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  407468:	e8 13 bf ff ff       	callq  403380 <GOMP_parallel@plt>
  40746d:	48 8b 43 40          	mov    0x40(%rbx),%rax
  407471:	48 8b 53 18          	mov    0x18(%rbx),%rdx
  407475:	48 63 00             	movslq (%rax),%rax
  407478:	48 0f af 02          	imul   (%rdx),%rax
  40747c:	48 01 c0             	add    %rax,%rax
  40747f:	48 83 c4 38          	add    $0x38,%rsp
  407483:	5b                   	pop    %rbx
  407484:	5d                   	pop    %rbp
  407485:	c3                   	retq   
  407486:	48 8b 53 70          	mov    0x70(%rbx),%rdx
  40748a:	c5 fa 7e 15 ce 40 00 	vmovq  0x40ce(%rip),%xmm2        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  407491:	00 
  407492:	c5 fb 10 02          	vmovsd (%rdx),%xmm0
  407496:	c5 f3 5c c8          	vsubsd %xmm0,%xmm1,%xmm1
  40749a:	c5 f9 54 c2          	vandpd %xmm2,%xmm0,%xmm0
  40749e:	c5 f1 54 ca          	vandpd %xmm2,%xmm1,%xmm1
  4074a2:	c5 fb 10 15 c6 3f 00 	vmovsd 0x3fc6(%rip),%xmm2        # 40b470 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  4074a9:	00 
  4074aa:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  4074ae:	c5 fb 5f c2          	vmaxsd %xmm2,%xmm0,%xmm0
  4074b2:	c5 f9 2f c1          	vcomisd %xmm1,%xmm0
  4074b6:	0f 97 c2             	seta   %dl
  4074b9:	21 ea                	and    %ebp,%edx
  4074bb:	88 10                	mov    %dl,(%rax)
  4074bd:	e9 43 ff ff ff       	jmpq   407405 <_ZZ4mainENKUlvE_clEv+0xc5>
  4074c2:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  4074c6:	b8 00 00 01 00       	mov    $0x10000,%eax
  4074cb:	48 8b 11             	mov    (%rcx),%rdx
  4074ce:	66 90                	xchg   %ax,%ax
  4074d0:	48 8b 12             	mov    (%rdx),%rdx
  4074d3:	48 89 11             	mov    %rdx,(%rcx)
  4074d6:	ff c8                	dec    %eax
  4074d8:	75 f6                	jne    4074d0 <_ZZ4mainENKUlvE_clEv+0x190>
  4074da:	b8 00 00 01 00       	mov    $0x10000,%eax
  4074df:	eb 9e                	jmp    40747f <_ZZ4mainENKUlvE_clEv+0x13f>
  4074e1:	c5 f9 2f 0d 7f 40 00 	vcomisd 0x407f(%rip),%xmm1        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  4074e8:	00 
  4074e9:	40 0f 97 c5          	seta   %bpl
  4074ed:	e9 ef fe ff ff       	jmpq   4073e1 <_ZZ4mainENKUlvE_clEv+0xa1>
  4074f2:	48 8d 47 18          	lea    0x18(%rdi),%rax
  4074f6:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4074fb:	48 8d 47 20          	lea    0x20(%rdi),%rax
  4074ff:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  407504:	48 8d 47 28          	lea    0x28(%rdi),%rax
  407508:	48 89 3c 24          	mov    %rdi,(%rsp)
  40750c:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  407511:	31 c9                	xor    %ecx,%ecx
  407513:	48 8d 47 30          	lea    0x30(%rdi),%rax
  407517:	31 d2                	xor    %edx,%edx
  407519:	48 89 e6             	mov    %rsp,%rsi
  40751c:	bf 20 59 40 00       	mov    $0x405920,%edi
  407521:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  407526:	e8 55 be ff ff       	callq  403380 <GOMP_parallel@plt>
  40752b:	48 8b 43 18          	mov    0x18(%rbx),%rax
  40752f:	48 8b 00             	mov    (%rax),%rax
  407532:	48 01 c0             	add    %rax,%rax
  407535:	e9 45 ff ff ff       	jmpq   40747f <_ZZ4mainENKUlvE_clEv+0x13f>
  40753a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000407540 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>:
  407540:	41 55                	push   %r13
  407542:	41 54                	push   %r12
  407544:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  407548:	55                   	push   %rbp
  407549:	53                   	push   %rbx
  40754a:	48 83 ec 18          	sub    $0x18,%rsp
  40754e:	4c 89 27             	mov    %r12,(%rdi)
  407551:	48 85 f6             	test   %rsi,%rsi
  407554:	0f 84 8c 00 00 00    	je     4075e6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0xa6>
  40755a:	48 89 fb             	mov    %rdi,%rbx
  40755d:	48 89 f7             	mov    %rsi,%rdi
  407560:	48 89 f5             	mov    %rsi,%rbp
  407563:	e8 d8 bb ff ff       	callq  403140 <strlen@plt>
  407568:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40756d:	49 89 c5             	mov    %rax,%r13
  407570:	48 83 f8 0f          	cmp    $0xf,%rax
  407574:	77 3a                	ja     4075b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x70>
  407576:	48 83 f8 01          	cmp    $0x1,%rax
  40757a:	75 24                	jne    4075a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x60>
  40757c:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
  407580:	88 53 10             	mov    %dl,0x10(%rbx)
  407583:	48 89 43 08          	mov    %rax,0x8(%rbx)
  407587:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
  40758c:	48 83 c4 18          	add    $0x18,%rsp
  407590:	5b                   	pop    %rbx
  407591:	5d                   	pop    %rbp
  407592:	41 5c                	pop    %r12
  407594:	41 5d                	pop    %r13
  407596:	c3                   	retq   
  407597:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40759e:	00 00 
  4075a0:	48 85 c0             	test   %rax,%rax
  4075a3:	74 de                	je     407583 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  4075a5:	eb 27                	jmp    4075ce <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x8e>
  4075a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4075ae:	00 00 
  4075b0:	31 d2                	xor    %edx,%edx
  4075b2:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  4075b7:	48 89 df             	mov    %rbx,%rdi
  4075ba:	e8 81 be ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4075bf:	48 89 03             	mov    %rax,(%rbx)
  4075c2:	49 89 c4             	mov    %rax,%r12
  4075c5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4075ca:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4075ce:	4c 89 e7             	mov    %r12,%rdi
  4075d1:	4c 89 ea             	mov    %r13,%rdx
  4075d4:	48 89 ee             	mov    %rbp,%rsi
  4075d7:	e8 74 bc ff ff       	callq  403250 <memcpy@plt>
  4075dc:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4075e1:	4c 8b 23             	mov    (%rbx),%r12
  4075e4:	eb 9d                	jmp    407583 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  4075e6:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4075eb:	e8 00 bc ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>

00000000004075f0 <_Z8clock_nsv>:
  4075f0:	48 83 ec 18          	sub    $0x18,%rsp
  4075f4:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4075f8:	48 89 e6             	mov    %rsp,%rsi
  4075fb:	bf 01 00 00 00       	mov    $0x1,%edi
  407600:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  407605:	e8 76 bc ff ff       	callq  403280 <clock_gettime@plt>
  40760a:	48 69 04 24 00 ca 9a 	imul   $0x3b9aca00,(%rsp),%rax
  407611:	3b 
  407612:	48 03 44 24 08       	add    0x8(%rsp),%rax
  407617:	48 83 c4 18          	add    $0x18,%rsp
  40761b:	c3                   	retq   
  40761c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000407620 <_Z6windowid>:
  407620:	55                   	push   %rbp
  407621:	48 89 e5             	mov    %rsp,%rbp
  407624:	41 57                	push   %r15
  407626:	41 56                	push   %r14
  407628:	41 55                	push   %r13
  40762a:	41 54                	push   %r12
  40762c:	41 89 fc             	mov    %edi,%r12d
  40762f:	bf 64 b0 40 00       	mov    $0x40b064,%edi
  407634:	53                   	push   %rbx
  407635:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  407639:	48 81 ec a0 03 00 00 	sub    $0x3a0,%rsp
  407640:	e8 cb bc ff ff       	callq  403310 <getenv@plt>
  407645:	48 85 c0             	test   %rax,%rax
  407648:	0f 84 0f 1c 00 00    	je     40925d <_Z6windowid+0x1c3d>
  40764e:	48 89 c7             	mov    %rax,%rdi
  407651:	49 89 c5             	mov    %rax,%r13
  407654:	e8 e7 ba ff ff       	callq  403140 <strlen@plt>
  407659:	48 8d 8c 24 00 01 00 	lea    0x100(%rsp),%rcx
  407660:	00 
  407661:	48 89 8c 24 f0 00 00 	mov    %rcx,0xf0(%rsp)
  407668:	00 
  407669:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  407670:	00 
  407671:	49 89 c6             	mov    %rax,%r14
  407674:	48 83 f8 0f          	cmp    $0xf,%rax
  407678:	0f 87 92 01 00 00    	ja     407810 <_Z6windowid+0x1f0>
  40767e:	48 83 f8 01          	cmp    $0x1,%rax
  407682:	0f 85 6a 1d 00 00    	jne    4093f2 <_Z6windowid+0x1dd2>
  407688:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40768d:	88 94 24 00 01 00 00 	mov    %dl,0x100(%rsp)
  407694:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40769b:	00 
  40769c:	48 89 84 24 f8 00 00 	mov    %rax,0xf8(%rsp)
  4076a3:	00 
  4076a4:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4076a8:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  4076af:	00 
  4076b0:	e8 fb b9 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  4076b5:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  4076bc:	00 
  4076bd:	e8 7e bb ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  4076c2:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  4076c9:	00 
  4076ca:	e8 f1 ba ff ff       	callq  4031c0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@plt>
  4076cf:	bf 75 b0 40 00       	mov    $0x40b075,%edi
  4076d4:	e8 37 bc ff ff       	callq  403310 <getenv@plt>
  4076d9:	49 89 c5             	mov    %rax,%r13
  4076dc:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4076e3:	00 
  4076e4:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4076eb:	00 
  4076ec:	4d 85 ed             	test   %r13,%r13
  4076ef:	0f 84 61 20 00 00    	je     409756 <_Z6windowid+0x2136>
  4076f5:	4c 89 ef             	mov    %r13,%rdi
  4076f8:	e8 43 ba ff ff       	callq  403140 <strlen@plt>
  4076fd:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  407704:	00 
  407705:	49 89 c6             	mov    %rax,%r14
  407708:	48 83 f8 0f          	cmp    $0xf,%rax
  40770c:	0f 87 86 1c 00 00    	ja     409398 <_Z6windowid+0x1d78>
  407712:	48 83 f8 01          	cmp    $0x1,%rax
  407716:	0f 85 59 1c 00 00    	jne    409375 <_Z6windowid+0x1d55>
  40771c:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  407723:	00 
  407724:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  407729:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  40772e:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  407735:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40773c:	00 
  40773d:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  407744:	00 
  407745:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  407749:	e8 f2 b8 ff ff       	callq  403040 <__errno_location@plt>
  40774e:	48 8b 9c 24 80 01 00 	mov    0x180(%rsp),%rbx
  407755:	00 
  407756:	44 8b 28             	mov    (%rax),%r13d
  407759:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40775f:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  407764:	ba 0a 00 00 00       	mov    $0xa,%edx
  407769:	48 89 df             	mov    %rbx,%rdi
  40776c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  407771:	e8 ca bb ff ff       	callq  403340 <strtol@plt>
  407776:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  40777b:	48 3b 9c 24 50 01 00 	cmp    0x150(%rsp),%rbx
  407782:	00 
  407783:	0f 84 d7 1f 00 00    	je     409760 <_Z6windowid+0x2140>
  407789:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40778e:	8b 10                	mov    (%rax),%edx
  407790:	83 fa 22             	cmp    $0x22,%edx
  407793:	0f 84 d1 1f 00 00    	je     40976a <_Z6windowid+0x214a>
  407799:	b8 00 00 00 80       	mov    $0x80000000,%eax
  40779e:	48 03 44 24 48       	add    0x48(%rsp),%rax
  4077a3:	48 c1 e8 20          	shr    $0x20,%rax
  4077a7:	0f 85 bd 1f 00 00    	jne    40976a <_Z6windowid+0x214a>
  4077ad:	85 d2                	test   %edx,%edx
  4077af:	75 08                	jne    4077b9 <_Z6windowid+0x199>
  4077b1:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  4077b6:	44 89 28             	mov    %r13d,(%rax)
  4077b9:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  4077c0:	00 
  4077c1:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4077c8:	00 
  4077c9:	48 39 c7             	cmp    %rax,%rdi
  4077cc:	74 11                	je     4077df <_Z6windowid+0x1bf>
  4077ce:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  4077d5:	00 
  4077d6:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4077da:	e8 d1 ba ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4077df:	bf ee b0 40 00       	mov    $0x40b0ee,%edi
  4077e4:	e8 27 bb ff ff       	callq  403310 <getenv@plt>
  4077e9:	49 89 c5             	mov    %rax,%r13
  4077ec:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4077f3:	00 
  4077f4:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4077fb:	00 
  4077fc:	4d 85 ed             	test   %r13,%r13
  4077ff:	75 61                	jne    407862 <_Z6windowid+0x242>
  407801:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  407806:	e8 e5 b9 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40780b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407810:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  407817:	00 
  407818:	31 d2                	xor    %edx,%edx
  40781a:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  407821:	00 
  407822:	e8 19 bc ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  407827:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
  40782e:	00 
  40782f:	48 89 c7             	mov    %rax,%rdi
  407832:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  407839:	00 
  40783a:	48 89 84 24 00 01 00 	mov    %rax,0x100(%rsp)
  407841:	00 
  407842:	4c 89 f2             	mov    %r14,%rdx
  407845:	4c 89 ee             	mov    %r13,%rsi
  407848:	e8 03 ba ff ff       	callq  403250 <memcpy@plt>
  40784d:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  407854:	00 
  407855:	48 8b 94 24 f0 00 00 	mov    0xf0(%rsp),%rdx
  40785c:	00 
  40785d:	e9 3a fe ff ff       	jmpq   40769c <_Z6windowid+0x7c>
  407862:	4c 89 ef             	mov    %r13,%rdi
  407865:	e8 d6 b8 ff ff       	callq  403140 <strlen@plt>
  40786a:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  407871:	00 
  407872:	49 89 c6             	mov    %rax,%r14
  407875:	48 83 f8 0f          	cmp    $0xf,%rax
  407879:	0f 87 91 1a 00 00    	ja     409310 <_Z6windowid+0x1cf0>
  40787f:	48 83 f8 01          	cmp    $0x1,%rax
  407883:	0f 85 d6 1a 00 00    	jne    40935f <_Z6windowid+0x1d3f>
  407889:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40788e:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  407895:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40789c:	00 
  40789d:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  4078a4:	00 
  4078a5:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4078a9:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  4078ae:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  4078b3:	4c 8b ac 24 80 01 00 	mov    0x180(%rsp),%r13
  4078ba:	00 
  4078bb:	8b 18                	mov    (%rax),%ebx
  4078bd:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4078c3:	ba 0a 00 00 00       	mov    $0xa,%edx
  4078c8:	4c 89 ef             	mov    %r13,%rdi
  4078cb:	e8 70 ba ff ff       	callq  403340 <strtol@plt>
  4078d0:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4078d5:	4c 3b ac 24 50 01 00 	cmp    0x150(%rsp),%r13
  4078dc:	00 
  4078dd:	0f 84 7d 1f 00 00    	je     409860 <_Z6windowid+0x2240>
  4078e3:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  4078e8:	8b 10                	mov    (%rax),%edx
  4078ea:	83 fa 22             	cmp    $0x22,%edx
  4078ed:	0f 84 30 1e 00 00    	je     409723 <_Z6windowid+0x2103>
  4078f3:	b8 00 00 00 80       	mov    $0x80000000,%eax
  4078f8:	48 03 44 24 28       	add    0x28(%rsp),%rax
  4078fd:	48 c1 e8 20          	shr    $0x20,%rax
  407901:	0f 85 1c 1e 00 00    	jne    409723 <_Z6windowid+0x2103>
  407907:	85 d2                	test   %edx,%edx
  407909:	75 07                	jne    407912 <_Z6windowid+0x2f2>
  40790b:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  407910:	89 18                	mov    %ebx,(%rax)
  407912:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  407919:	00 
  40791a:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  407921:	00 
  407922:	48 39 c7             	cmp    %rax,%rdi
  407925:	74 11                	je     407938 <_Z6windowid+0x318>
  407927:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40792e:	00 
  40792f:	48 8d 70 01          	lea    0x1(%rax),%rsi
  407933:	e8 78 b9 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  407938:	44 89 e0             	mov    %r12d,%eax
  40793b:	c1 f8 1f             	sar    $0x1f,%eax
  40793e:	45 89 e5             	mov    %r12d,%r13d
  407941:	41 31 c4             	xor    %eax,%r12d
  407944:	41 29 c4             	sub    %eax,%r12d
  407947:	41 c1 ed 1f          	shr    $0x1f,%r13d
  40794b:	41 83 fc 09          	cmp    $0x9,%r12d
  40794f:	0f 86 88 1d 00 00    	jbe    4096dd <_Z6windowid+0x20bd>
  407955:	41 83 fc 63          	cmp    $0x63,%r12d
  407959:	0f 86 88 1d 00 00    	jbe    4096e7 <_Z6windowid+0x20c7>
  40795f:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  407966:	0f 86 85 1d 00 00    	jbe    4096f1 <_Z6windowid+0x20d1>
  40796c:	44 89 e2             	mov    %r12d,%edx
  40796f:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  407976:	0f 86 7f 1d 00 00    	jbe    4096fb <_Z6windowid+0x20db>
  40797c:	bb 01 00 00 00       	mov    $0x1,%ebx
  407981:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  407988:	c5 6d 34 
  40798b:	eb 24                	jmp    4079b1 <_Z6windowid+0x391>
  40798d:	0f 1f 00             	nopl   (%rax)
  407990:	83 fa 63             	cmp    $0x63,%edx
  407993:	0f 86 44 1c 00 00    	jbe    4095dd <_Z6windowid+0x1fbd>
  407999:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40799f:	0f 86 30 1c 00 00    	jbe    4095d5 <_Z6windowid+0x1fb5>
  4079a5:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  4079ab:	0f 86 34 1c 00 00    	jbe    4095e5 <_Z6windowid+0x1fc5>
  4079b1:	48 89 d0             	mov    %rdx,%rax
  4079b4:	48 89 d1             	mov    %rdx,%rcx
  4079b7:	48 f7 e6             	mul    %rsi
  4079ba:	89 d8                	mov    %ebx,%eax
  4079bc:	83 c3 04             	add    $0x4,%ebx
  4079bf:	48 c1 ea 0b          	shr    $0xb,%rdx
  4079c3:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  4079ca:	77 c4                	ja     407990 <_Z6windowid+0x370>
  4079cc:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4079d3:	00 
  4079d4:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  4079d9:	ba 2d 00 00 00       	mov    $0x2d,%edx
  4079de:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  4079e5:	00 
  4079e6:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4079ed:	00 
  4079ee:	e8 fd b8 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  4079f3:	45 0f b6 ed          	movzbl %r13b,%r13d
  4079f7:	4c 03 ac 24 80 01 00 	add    0x180(%rsp),%r13
  4079fe:	00 
  4079ff:	ff cb                	dec    %ebx
  407a01:	41 83 fc 63          	cmp    $0x63,%r12d
  407a05:	76 52                	jbe    407a59 <_Z6windowid+0x439>
  407a07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  407a0e:	00 00 
  407a10:	44 89 e2             	mov    %r12d,%edx
  407a13:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  407a1a:	44 89 e0             	mov    %r12d,%eax
  407a1d:	48 c1 ea 25          	shr    $0x25,%rdx
  407a21:	6b ca 64             	imul   $0x64,%edx,%ecx
  407a24:	29 c8                	sub    %ecx,%eax
  407a26:	01 c0                	add    %eax,%eax
  407a28:	8d 70 01             	lea    0x1(%rax),%esi
  407a2b:	0f b6 b6 20 b3 40 00 	movzbl 0x40b320(%rsi),%esi
  407a32:	0f b6 80 20 b3 40 00 	movzbl 0x40b320(%rax),%eax
  407a39:	44 89 e1             	mov    %r12d,%ecx
  407a3c:	41 89 d4             	mov    %edx,%r12d
  407a3f:	89 da                	mov    %ebx,%edx
  407a41:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  407a46:	8d 53 ff             	lea    -0x1(%rbx),%edx
  407a49:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  407a4e:	83 eb 02             	sub    $0x2,%ebx
  407a51:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  407a57:	77 b7                	ja     407a10 <_Z6windowid+0x3f0>
  407a59:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  407a5e:	41 83 fc 09          	cmp    $0x9,%r12d
  407a62:	76 1c                	jbe    407a80 <_Z6windowid+0x460>
  407a64:	45 01 e4             	add    %r12d,%r12d
  407a67:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  407a6c:	0f b6 80 20 b3 40 00 	movzbl 0x40b320(%rax),%eax
  407a73:	41 88 45 01          	mov    %al,0x1(%r13)
  407a77:	41 0f b6 84 24 20 b3 	movzbl 0x40b320(%r12),%eax
  407a7e:	40 00 
  407a80:	41 88 45 00          	mov    %al,0x0(%r13)
  407a84:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  407a8a:	b9 8e b0 40 00       	mov    $0x40b08e,%ecx
  407a8f:	31 d2                	xor    %edx,%edx
  407a91:	31 f6                	xor    %esi,%esi
  407a93:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  407a9a:	00 
  407a9b:	e8 00 b9 ff ff       	callq  4033a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  407aa0:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
  407aa7:	00 
  407aa8:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  407aad:	48 8d 50 10          	lea    0x10(%rax),%rdx
  407ab1:	48 8b 08             	mov    (%rax),%rcx
  407ab4:	48 39 d1             	cmp    %rdx,%rcx
  407ab7:	0f 84 a1 1a 00 00    	je     40955e <_Z6windowid+0x1f3e>
  407abd:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  407ac2:	48 8b 48 10          	mov    0x10(%rax),%rcx
  407ac6:	48 89 8c 24 80 00 00 	mov    %rcx,0x80(%rsp)
  407acd:	00 
  407ace:	48 8b 48 08          	mov    0x8(%rax),%rcx
  407ad2:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  407ad6:	48 89 4c 24 78       	mov    %rcx,0x78(%rsp)
  407adb:	48 89 10             	mov    %rdx,(%rax)
  407ade:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  407ae5:	00 
  407ae6:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  407aed:	00 
  407aee:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  407af5:	00 
  407af6:	48 39 c7             	cmp    %rax,%rdi
  407af9:	74 11                	je     407b0c <_Z6windowid+0x4ec>
  407afb:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  407b02:	00 
  407b03:	48 8d 70 01          	lea    0x1(%rax),%rsi
  407b07:	e8 a4 b7 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  407b0c:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
  407b11:	41 89 c5             	mov    %eax,%r13d
  407b14:	41 89 c4             	mov    %eax,%r12d
  407b17:	41 f7 dc             	neg    %r12d
  407b1a:	41 c1 ed 1f          	shr    $0x1f,%r13d
  407b1e:	48 85 c0             	test   %rax,%rax
  407b21:	44 0f 49 e0          	cmovns %eax,%r12d
  407b25:	41 83 fc 09          	cmp    $0x9,%r12d
  407b29:	0f 86 ea 1b 00 00    	jbe    409719 <_Z6windowid+0x20f9>
  407b2f:	41 83 fc 63          	cmp    $0x63,%r12d
  407b33:	0f 86 9a 1b 00 00    	jbe    4096d3 <_Z6windowid+0x20b3>
  407b39:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  407b40:	0f 86 bf 1b 00 00    	jbe    409705 <_Z6windowid+0x20e5>
  407b46:	44 89 e2             	mov    %r12d,%edx
  407b49:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  407b50:	0f 86 b9 1b 00 00    	jbe    40970f <_Z6windowid+0x20ef>
  407b56:	bb 01 00 00 00       	mov    $0x1,%ebx
  407b5b:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  407b62:	c5 6d 34 
  407b65:	eb 2a                	jmp    407b91 <_Z6windowid+0x571>
  407b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  407b6e:	00 00 
  407b70:	83 fa 63             	cmp    $0x63,%edx
  407b73:	0f 86 54 1a 00 00    	jbe    4095cd <_Z6windowid+0x1fad>
  407b79:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  407b7f:	0f 86 40 1a 00 00    	jbe    4095c5 <_Z6windowid+0x1fa5>
  407b85:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  407b8b:	0f 86 5c 1a 00 00    	jbe    4095ed <_Z6windowid+0x1fcd>
  407b91:	48 89 d0             	mov    %rdx,%rax
  407b94:	48 89 d1             	mov    %rdx,%rcx
  407b97:	48 f7 e6             	mul    %rsi
  407b9a:	89 d8                	mov    %ebx,%eax
  407b9c:	83 c3 04             	add    $0x4,%ebx
  407b9f:	48 c1 ea 0b          	shr    $0xb,%rdx
  407ba3:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  407baa:	77 c4                	ja     407b70 <_Z6windowid+0x550>
  407bac:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  407bb3:	00 
  407bb4:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  407bb9:	ba 2d 00 00 00       	mov    $0x2d,%edx
  407bbe:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  407bc5:	00 
  407bc6:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  407bcd:	00 
  407bce:	e8 1d b7 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  407bd3:	45 0f b6 ed          	movzbl %r13b,%r13d
  407bd7:	4c 03 ac 24 b0 00 00 	add    0xb0(%rsp),%r13
  407bde:	00 
  407bdf:	ff cb                	dec    %ebx
  407be1:	41 83 fc 63          	cmp    $0x63,%r12d
  407be5:	76 52                	jbe    407c39 <_Z6windowid+0x619>
  407be7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  407bee:	00 00 
  407bf0:	44 89 e2             	mov    %r12d,%edx
  407bf3:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  407bfa:	44 89 e0             	mov    %r12d,%eax
  407bfd:	48 c1 ea 25          	shr    $0x25,%rdx
  407c01:	6b ca 64             	imul   $0x64,%edx,%ecx
  407c04:	29 c8                	sub    %ecx,%eax
  407c06:	01 c0                	add    %eax,%eax
  407c08:	8d 70 01             	lea    0x1(%rax),%esi
  407c0b:	0f b6 b6 20 b3 40 00 	movzbl 0x40b320(%rsi),%esi
  407c12:	0f b6 80 20 b3 40 00 	movzbl 0x40b320(%rax),%eax
  407c19:	44 89 e1             	mov    %r12d,%ecx
  407c1c:	41 89 d4             	mov    %edx,%r12d
  407c1f:	89 da                	mov    %ebx,%edx
  407c21:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  407c26:	8d 53 ff             	lea    -0x1(%rbx),%edx
  407c29:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  407c2e:	83 eb 02             	sub    $0x2,%ebx
  407c31:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  407c37:	77 b7                	ja     407bf0 <_Z6windowid+0x5d0>
  407c39:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  407c3e:	41 83 fc 09          	cmp    $0x9,%r12d
  407c42:	76 1c                	jbe    407c60 <_Z6windowid+0x640>
  407c44:	45 01 e4             	add    %r12d,%r12d
  407c47:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  407c4c:	0f b6 80 20 b3 40 00 	movzbl 0x40b320(%rax),%eax
  407c53:	41 88 45 01          	mov    %al,0x1(%r13)
  407c57:	41 0f b6 84 24 20 b3 	movzbl 0x40b320(%r12),%eax
  407c5e:	40 00 
  407c60:	41 88 45 00          	mov    %al,0x0(%r13)
  407c64:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  407c6b:	00 
  407c6c:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  407c73:	00 
  407c74:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  407c79:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  407c7e:	4c 89 e8             	mov    %r13,%rax
  407c81:	4c 01 e0             	add    %r12,%rax
  407c84:	74 09                	je     407c8f <_Z6windowid+0x66f>
  407c86:	4d 85 ed             	test   %r13,%r13
  407c89:	0f 84 db 1b 00 00    	je     40986a <_Z6windowid+0x224a>
  407c8f:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  407c96:	00 
  407c97:	49 83 fc 0f          	cmp    $0xf,%r12
  407c9b:	0f 87 31 18 00 00    	ja     4094d2 <_Z6windowid+0x1eb2>
  407ca1:	49 83 fc 01          	cmp    $0x1,%r12
  407ca5:	0f 85 11 18 00 00    	jne    4094bc <_Z6windowid+0x1e9c>
  407cab:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  407cb0:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  407cb7:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  407cbe:	00 
  407cbf:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  407cc6:	00 
  407cc7:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  407ccc:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  407cd3:	ff ff 3f 
  407cd6:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  407cdd:	00 
  407cde:	48 83 f8 05          	cmp    $0x5,%rax
  407ce2:	0f 86 5a 1b 00 00    	jbe    409842 <_Z6windowid+0x2222>
  407ce8:	ba 06 00 00 00       	mov    $0x6,%edx
  407ced:	be a7 b0 40 00       	mov    $0x40b0a7,%esi
  407cf2:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  407cf9:	00 
  407cfa:	e8 f1 b3 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  407cff:	4c 8b 8c 24 90 00 00 	mov    0x90(%rsp),%r9
  407d06:	00 
  407d07:	b8 0f 00 00 00       	mov    $0xf,%eax
  407d0c:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  407d13:	00 
  407d14:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  407d1b:	00 
  407d1c:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  407d23:	00 
  407d24:	49 39 d9             	cmp    %rbx,%r9
  407d27:	48 89 c7             	mov    %rax,%rdi
  407d2a:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  407d31:	00 00 
  407d33:	49 8d 0c 10          	lea    (%r8,%rdx,1),%rcx
  407d37:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  407d3e:	00 
  407d3f:	48 39 f9             	cmp    %rdi,%rcx
  407d42:	76 1d                	jbe    407d61 <_Z6windowid+0x741>
  407d44:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  407d4b:	00 
  407d4c:	48 39 de             	cmp    %rbx,%rsi
  407d4f:	48 0f 45 84 24 c0 00 	cmovne 0xc0(%rsp),%rax
  407d56:	00 00 
  407d58:	48 39 c1             	cmp    %rax,%rcx
  407d5b:	0f 86 4b 18 00 00    	jbe    4095ac <_Z6windowid+0x1f8c>
  407d61:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  407d68:	00 
  407d69:	e8 82 b3 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  407d6e:	4c 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%r15
  407d75:	00 
  407d76:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  407d7d:	00 
  407d7e:	48 8d 50 10          	lea    0x10(%rax),%rdx
  407d82:	48 8b 08             	mov    (%rax),%rcx
  407d85:	48 39 d1             	cmp    %rdx,%rcx
  407d88:	0f 84 bd 17 00 00    	je     40954b <_Z6windowid+0x1f2b>
  407d8e:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  407d95:	00 
  407d96:	48 8b 48 10          	mov    0x10(%rax),%rcx
  407d9a:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  407da1:	00 
  407da2:	48 8b 48 08          	mov    0x8(%rax),%rcx
  407da6:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  407dad:	00 
  407dae:	48 89 10             	mov    %rdx,(%rax)
  407db1:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  407db5:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  407dbc:	00 
  407dbd:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  407dc4:	00 
  407dc5:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  407dcc:	00 
  407dcd:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  407dd4:	00 
  407dd5:	4c 39 f8             	cmp    %r15,%rax
  407dd8:	0f 84 56 17 00 00    	je     409534 <_Z6windowid+0x1f14>
  407dde:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  407de5:	00 
  407de6:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  407ded:	00 
  407dee:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  407df5:	00 
  407df6:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  407dfd:	00 
  407dfe:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  407e05:	00 
  407e06:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
  407e0d:	00 
  407e0e:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  407e15:	00 
  407e16:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  407e1d:	00 00 00 00 00 
  407e22:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  407e29:	00 
  407e2a:	e8 81 b2 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  407e2f:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  407e36:	00 
  407e37:	e8 04 b4 ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  407e3c:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  407e43:	00 
  407e44:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  407e4b:	00 
  407e4c:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  407e53:	00 
  407e54:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  407e5b:	00 
  407e5c:	4c 89 e8             	mov    %r13,%rax
  407e5f:	4c 01 e0             	add    %r12,%rax
  407e62:	74 09                	je     407e6d <_Z6windowid+0x84d>
  407e64:	4d 85 ed             	test   %r13,%r13
  407e67:	0f 84 e9 19 00 00    	je     409856 <_Z6windowid+0x2236>
  407e6d:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  407e74:	00 
  407e75:	49 83 fc 0f          	cmp    $0xf,%r12
  407e79:	0f 87 ee 15 00 00    	ja     40946d <_Z6windowid+0x1e4d>
  407e7f:	49 83 fc 01          	cmp    $0x1,%r12
  407e83:	0f 85 ce 15 00 00    	jne    409457 <_Z6windowid+0x1e37>
  407e89:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  407e8e:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  407e95:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  407e9c:	00 
  407e9d:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  407ea4:	00 
  407ea5:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  407eaa:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  407eb1:	00 
  407eb2:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  407eb9:	00 
  407eba:	e8 c1 b5 ff ff       	callq  403480 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  407ebf:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  407ec4:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  407ecb:	00 
  407ecc:	e8 af b1 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  407ed1:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  407ed8:	00 
  407ed9:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  407ee0:	00 
  407ee1:	e8 ea b1 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  407ee6:	31 c9                	xor    %ecx,%ecx
  407ee8:	66 89 8c 24 58 03 00 	mov    %cx,0x358(%rsp)
  407eef:	00 
  407ef0:	48 8b 05 31 5d 00 00 	mov    0x5d31(%rip),%rax        # 40dc28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  407ef7:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  407efb:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  407f02:	00 00 
  407f04:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  407f0b:	00 
  407f0c:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  407f13:	00 
  407f14:	48 03 78 e8          	add    -0x18(%rax),%rdi
  407f18:	48 8b 05 11 5d 00 00 	mov    0x5d11(%rip),%rax        # 40dc30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  407f1f:	31 f6                	xor    %esi,%esi
  407f21:	48 c7 84 24 78 02 00 	movq   $0x40db90,0x278(%rsp)
  407f28:	00 90 db 40 00 
  407f2d:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  407f34:	00 00 00 00 00 
  407f39:	48 89 07             	mov    %rax,(%rdi)
  407f3c:	c5 f8 77             	vzeroupper 
  407f3f:	e8 ec b3 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  407f44:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  407f4b:	00 
  407f4c:	48 c7 84 24 80 01 00 	movq   $0x40dd28,0x180(%rsp)
  407f53:	00 28 dd 40 00 
  407f58:	48 c7 84 24 78 02 00 	movq   $0x40dd50,0x278(%rsp)
  407f5f:	00 50 dd 40 00 
  407f64:	e8 67 b3 ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  407f69:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  407f70:	00 
  407f71:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  407f78:	00 
  407f79:	e8 b2 b3 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  407f7e:	ba 10 00 00 00       	mov    $0x10,%edx
  407f83:	4c 89 e6             	mov    %r12,%rsi
  407f86:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  407f8d:	00 
  407f8e:	e8 dd b2 ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  407f93:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  407f9a:	00 
  407f9b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  407fa2:	00 
  407fa3:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  407fa7:	48 85 c0             	test   %rax,%rax
  407faa:	0f 84 74 15 00 00    	je     409524 <_Z6windowid+0x1f04>
  407fb0:	31 f6                	xor    %esi,%esi
  407fb2:	e8 49 b4 ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  407fb7:	ba 28 dd 40 00       	mov    $0x40dd28,%edx
  407fbc:	b8 a0 dc 40 00       	mov    $0x40dca0,%eax
  407fc1:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
  407fc6:	c4 e3 e9 22 c8 01    	vpinsrq $0x1,%rax,%xmm2,%xmm1
  407fcc:	be 31 00 00 00       	mov    $0x31,%esi
  407fd1:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  407fd8:	00 
  407fd9:	c5 f9 7f 4c 24 10    	vmovdqa %xmm1,0x10(%rsp)
  407fdf:	e8 4c b0 ff ff       	callq  403030 <_ZNSo3putEc@plt>
  407fe4:	c5 f9 6f 74 24 10    	vmovdqa 0x10(%rsp),%xmm6
  407fea:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  407ff1:	00 
  407ff2:	48 c7 84 24 78 02 00 	movq   $0x40dd50,0x278(%rsp)
  407ff9:	00 50 dd 40 00 
  407ffe:	c5 f9 7f b4 24 80 01 	vmovdqa %xmm6,0x180(%rsp)
  408005:	00 00 
  408007:	e8 64 b0 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40800c:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  408013:	00 
  408014:	e8 47 b4 ff ff       	callq  403460 <_ZNSt12__basic_fileIcED1Ev@plt>
  408019:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  408020:	00 
  408021:	48 c7 84 24 88 01 00 	movq   $0x40dbb0,0x188(%rsp)
  408028:	00 b0 db 40 00 
  40802d:	e8 1e b3 ff ff       	callq  403350 <_ZNSt6localeD1Ev@plt>
  408032:	48 8b 05 ef 5b 00 00 	mov    0x5bef(%rip),%rax        # 40dc28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  408039:	48 8b 0d f0 5b 00 00 	mov    0x5bf0(%rip),%rcx        # 40dc30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  408040:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408047:	00 
  408048:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40804c:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  408053:	00 
  408054:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  40805b:	00 
  40805c:	48 c7 84 24 78 02 00 	movq   $0x40db90,0x278(%rsp)
  408063:	00 90 db 40 00 
  408068:	e8 93 b0 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40806d:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  408074:	00 
  408075:	48 85 f6             	test   %rsi,%rsi
  408078:	74 0d                	je     408087 <_Z6windowid+0xa67>
  40807a:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  408081:	00 
  408082:	e8 19 b0 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  408087:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40808e:	00 
  40808f:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408096:	00 
  408097:	48 39 c7             	cmp    %rax,%rdi
  40809a:	74 11                	je     4080ad <_Z6windowid+0xa8d>
  40809c:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  4080a3:	00 
  4080a4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4080a8:	e8 03 b2 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4080ad:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  4080b4:	00 
  4080b5:	48 85 f6             	test   %rsi,%rsi
  4080b8:	74 0d                	je     4080c7 <_Z6windowid+0xaa7>
  4080ba:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  4080c1:	00 
  4080c2:	e8 d9 af ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  4080c7:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  4080ce:	00 
  4080cf:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4080d6:	00 
  4080d7:	48 39 c7             	cmp    %rax,%rdi
  4080da:	74 11                	je     4080ed <_Z6windowid+0xacd>
  4080dc:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  4080e3:	00 
  4080e4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4080e8:	e8 c3 b1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4080ed:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  4080f4:	00 
  4080f5:	4c 39 ff             	cmp    %r15,%rdi
  4080f8:	74 11                	je     40810b <_Z6windowid+0xaeb>
  4080fa:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  408101:	00 
  408102:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408106:	e8 a5 b1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40810b:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  408112:	00 
  408113:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40811a:	00 
  40811b:	48 39 c7             	cmp    %rax,%rdi
  40811e:	74 11                	je     408131 <_Z6windowid+0xb11>
  408120:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  408127:	00 
  408128:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40812c:	e8 7f b1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408131:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  408138:	00 
  408139:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  408140:	00 
  408141:	48 39 c7             	cmp    %rax,%rdi
  408144:	74 11                	je     408157 <_Z6windowid+0xb37>
  408146:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  40814d:	00 
  40814e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408152:	e8 59 b1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408157:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40815c:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408163:	00 
  408164:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  408169:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  408170:	00 
  408171:	4c 89 e8             	mov    %r13,%rax
  408174:	4c 01 e0             	add    %r12,%rax
  408177:	74 09                	je     408182 <_Z6windowid+0xb62>
  408179:	4d 85 ed             	test   %r13,%r13
  40817c:	0f 84 f2 15 00 00    	je     409774 <_Z6windowid+0x2154>
  408182:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  408189:	00 
  40818a:	49 83 fc 0f          	cmp    $0xf,%r12
  40818e:	0f 87 74 12 00 00    	ja     409408 <_Z6windowid+0x1de8>
  408194:	49 83 fc 01          	cmp    $0x1,%r12
  408198:	0f 85 5c 11 00 00    	jne    4092fa <_Z6windowid+0x1cda>
  40819e:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  4081a3:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  4081aa:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  4081b1:	00 
  4081b2:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  4081b9:	00 
  4081ba:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  4081bf:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  4081c6:	ff ff 3f 
  4081c9:	48 2b 84 24 58 01 00 	sub    0x158(%rsp),%rax
  4081d0:	00 
  4081d1:	48 83 f8 05          	cmp    $0x5,%rax
  4081d5:	0f 86 a3 15 00 00    	jbe    40977e <_Z6windowid+0x215e>
  4081db:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4081e0:	ba 06 00 00 00       	mov    $0x6,%edx
  4081e5:	be ae b0 40 00       	mov    $0x40b0ae,%esi
  4081ea:	e8 01 af ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  4081ef:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4081f6:	00 
  4081f7:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4081fe:	00 
  4081ff:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  408206:	00 
  408207:	48 8d 8c 24 60 01 00 	lea    0x160(%rsp),%rcx
  40820e:	00 
  40820f:	48 39 c8             	cmp    %rcx,%rax
  408212:	0f 84 59 13 00 00    	je     409571 <_Z6windowid+0x1f51>
  408218:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40821f:	00 
  408220:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  408227:	00 
  408228:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40822f:	00 
  408230:	48 8b 84 24 58 01 00 	mov    0x158(%rsp),%rax
  408237:	00 
  408238:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40823f:	00 
  408240:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  408247:	00 
  408248:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40824f:	00 
  408250:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  408257:	00 
  408258:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
  40825f:	00 00 00 00 00 
  408264:	c6 84 24 60 01 00 00 	movb   $0x0,0x160(%rsp)
  40826b:	00 
  40826c:	e8 3f ae ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  408271:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408278:	00 
  408279:	e8 c2 af ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40827e:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  408285:	00 
  408286:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40828d:	00 
  40828e:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  408295:	00 
  408296:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40829d:	00 
  40829e:	4c 89 e8             	mov    %r13,%rax
  4082a1:	4c 01 e0             	add    %r12,%rax
  4082a4:	74 09                	je     4082af <_Z6windowid+0xc8f>
  4082a6:	4d 85 ed             	test   %r13,%r13
  4082a9:	0f 84 d9 14 00 00    	je     409788 <_Z6windowid+0x2168>
  4082af:	4c 89 a4 24 d0 00 00 	mov    %r12,0xd0(%rsp)
  4082b6:	00 
  4082b7:	49 83 fc 0f          	cmp    $0xf,%r12
  4082bb:	0f 87 e7 0f 00 00    	ja     4092a8 <_Z6windowid+0x1c88>
  4082c1:	49 83 fc 01          	cmp    $0x1,%r12
  4082c5:	0f 85 c7 0f 00 00    	jne    409292 <_Z6windowid+0x1c72>
  4082cb:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  4082d0:	88 84 24 30 01 00 00 	mov    %al,0x130(%rsp)
  4082d7:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4082de:	00 
  4082df:	4c 89 a4 24 28 01 00 	mov    %r12,0x128(%rsp)
  4082e6:	00 
  4082e7:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  4082ec:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  4082f3:	00 
  4082f4:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  4082fb:	00 
  4082fc:	e8 7f b1 ff ff       	callq  403480 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  408301:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408308:	00 
  408309:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  408310:	00 
  408311:	e8 6a ad ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  408316:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40831d:	00 
  40831e:	48 85 f6             	test   %rsi,%rsi
  408321:	74 0d                	je     408330 <_Z6windowid+0xd10>
  408323:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40832a:	00 
  40832b:	e8 70 ad ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  408330:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  408337:	00 
  408338:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40833f:	00 
  408340:	48 39 c7             	cmp    %rax,%rdi
  408343:	74 11                	je     408356 <_Z6windowid+0xd36>
  408345:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40834c:	00 
  40834d:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408351:	e8 5a af ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408356:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40835d:	00 
  40835e:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408365:	00 
  408366:	48 39 c7             	cmp    %rax,%rdi
  408369:	74 11                	je     40837c <_Z6windowid+0xd5c>
  40836b:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  408372:	00 
  408373:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408377:	e8 34 af ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40837c:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408380:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408387:	00 
  408388:	bf 01 00 00 00       	mov    $0x1,%edi
  40838d:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  408394:	00 00 
  408396:	e8 e5 ae ff ff       	callq  403280 <clock_gettime@plt>
  40839b:	48 69 94 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rdx
  4083a2:	00 00 ca 9a 3b 
  4083a7:	48 b8 00 b0 8e f0 1b 	movabs $0x1bf08eb000,%rax
  4083ae:	00 00 00 
  4083b1:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  4083b8:	00 
  4083b9:	48 01 d0             	add    %rdx,%rax
  4083bc:	48 83 7c 24 48 00    	cmpq   $0x0,0x48(%rsp)
  4083c2:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4083c7:	0f 85 dd 08 00 00    	jne    408caa <_Z6windowid+0x168a>
  4083cd:	8b 44 24 28          	mov    0x28(%rsp),%eax
  4083d1:	49 bd 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%r13
  4083d8:	c5 6d 34 
  4083db:	ff c8                	dec    %eax
  4083dd:	89 44 24 40          	mov    %eax,0x40(%rsp)
  4083e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4083e8:	48 83 7c 24 28 00    	cmpq   $0x0,0x28(%rsp)
  4083ee:	0f 8e b0 04 00 00    	jle    4088a4 <_Z6windowid+0x1284>
  4083f4:	8b 44 24 40          	mov    0x40(%rsp),%eax
  4083f8:	c6 44 24 47 01       	movb   $0x1,0x47(%rsp)
  4083fd:	48 ff c0             	inc    %rax
  408400:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  408405:	41 be 01 00 00 00    	mov    $0x1,%r14d
  40840b:	bb 01 00 00 00       	mov    $0x1,%ebx
  408410:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  408417:	00 
  408418:	89 de                	mov    %ebx,%esi
  40841a:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40841f:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  408426:	00 
  408427:	44 89 74 24 48       	mov    %r14d,0x48(%rsp)
  40842c:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  408433:	00 
  408434:	45 8d 66 ff          	lea    -0x1(%r14),%r12d
  408438:	e8 b3 ae ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40843d:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
  408444:	00 
  408445:	ff cb                	dec    %ebx
  408447:	41 83 fc 63          	cmp    $0x63,%r12d
  40844b:	76 49                	jbe    408496 <_Z6windowid+0xe76>
  40844d:	0f 1f 00             	nopl   (%rax)
  408450:	44 89 e2             	mov    %r12d,%edx
  408453:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40845a:	44 89 e0             	mov    %r12d,%eax
  40845d:	48 c1 ea 25          	shr    $0x25,%rdx
  408461:	6b f2 64             	imul   $0x64,%edx,%esi
  408464:	29 f0                	sub    %esi,%eax
  408466:	01 c0                	add    %eax,%eax
  408468:	8d 78 01             	lea    0x1(%rax),%edi
  40846b:	0f b6 bf 20 b3 40 00 	movzbl 0x40b320(%rdi),%edi
  408472:	0f b6 80 20 b3 40 00 	movzbl 0x40b320(%rax),%eax
  408479:	44 89 e6             	mov    %r12d,%esi
  40847c:	41 89 d4             	mov    %edx,%r12d
  40847f:	89 da                	mov    %ebx,%edx
  408481:	40 88 3c 11          	mov    %dil,(%rcx,%rdx,1)
  408485:	8d 53 ff             	lea    -0x1(%rbx),%edx
  408488:	88 04 11             	mov    %al,(%rcx,%rdx,1)
  40848b:	83 eb 02             	sub    $0x2,%ebx
  40848e:	81 fe 0f 27 00 00    	cmp    $0x270f,%esi
  408494:	77 ba                	ja     408450 <_Z6windowid+0xe30>
  408496:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40849b:	41 83 fc 09          	cmp    $0x9,%r12d
  40849f:	76 1b                	jbe    4084bc <_Z6windowid+0xe9c>
  4084a1:	45 01 e4             	add    %r12d,%r12d
  4084a4:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  4084a9:	0f b6 80 20 b3 40 00 	movzbl 0x40b320(%rax),%eax
  4084b0:	88 41 01             	mov    %al,0x1(%rcx)
  4084b3:	41 0f b6 84 24 20 b3 	movzbl 0x40b320(%r12),%eax
  4084ba:	40 00 
  4084bc:	88 01                	mov    %al,(%rcx)
  4084be:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  4084c5:	00 
  4084c6:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  4084cd:	00 
  4084ce:	48 8b 5c 24 70       	mov    0x70(%rsp),%rbx
  4084d3:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  4084d8:	48 89 d8             	mov    %rbx,%rax
  4084db:	4c 01 e0             	add    %r12,%rax
  4084de:	74 09                	je     4084e9 <_Z6windowid+0xec9>
  4084e0:	48 85 db             	test   %rbx,%rbx
  4084e3:	0f 84 af 12 00 00    	je     409798 <_Z6windowid+0x2178>
  4084e9:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  4084f0:	00 
  4084f1:	49 83 fc 0f          	cmp    $0xf,%r12
  4084f5:	0f 87 95 08 00 00    	ja     408d90 <_Z6windowid+0x1770>
  4084fb:	49 83 fc 01          	cmp    $0x1,%r12
  4084ff:	0f 85 4b 08 00 00    	jne    408d50 <_Z6windowid+0x1730>
  408505:	0f b6 03             	movzbl (%rbx),%eax
  408508:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  40850f:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  408516:	00 
  408517:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  40851e:	00 
  40851f:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  408524:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40852b:	ff ff 3f 
  40852e:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  408535:	00 
  408536:	48 83 f8 05          	cmp    $0x5,%rax
  40853a:	0f 86 62 12 00 00    	jbe    4097a2 <_Z6windowid+0x2182>
  408540:	ba 06 00 00 00       	mov    $0x6,%edx
  408545:	be a7 b0 40 00       	mov    $0x40b0a7,%esi
  40854a:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  408551:	00 
  408552:	e8 99 ab ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  408557:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
  40855e:	00 
  40855f:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  408566:	00 
  408567:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  40856e:	00 
  40856f:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  408576:	00 
  408577:	48 39 d9             	cmp    %rbx,%rcx
  40857a:	bf 0f 00 00 00       	mov    $0xf,%edi
  40857f:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  408586:	00 00 
  408588:	49 8d 04 10          	lea    (%r8,%rdx,1),%rax
  40858c:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  408593:	00 
  408594:	48 39 f8             	cmp    %rdi,%rax
  408597:	76 22                	jbe    4085bb <_Z6windowid+0xf9b>
  408599:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  4085a0:	00 
  4085a1:	48 39 de             	cmp    %rbx,%rsi
  4085a4:	bf 0f 00 00 00       	mov    $0xf,%edi
  4085a9:	48 0f 45 bc 24 c0 00 	cmovne 0xc0(%rsp),%rdi
  4085b0:	00 00 
  4085b2:	48 39 f8             	cmp    %rdi,%rax
  4085b5:	0f 86 cd 08 00 00    	jbe    408e88 <_Z6windowid+0x1868>
  4085bb:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  4085c2:	00 
  4085c3:	e8 28 ab ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  4085c8:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  4085cf:	00 
  4085d0:	48 8d 50 10          	lea    0x10(%rax),%rdx
  4085d4:	48 8b 08             	mov    (%rax),%rcx
  4085d7:	48 39 d1             	cmp    %rdx,%rcx
  4085da:	0f 84 70 08 00 00    	je     408e50 <_Z6windowid+0x1830>
  4085e0:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  4085e7:	00 
  4085e8:	48 8b 48 10          	mov    0x10(%rax),%rcx
  4085ec:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  4085f3:	00 
  4085f4:	48 8b 48 08          	mov    0x8(%rax),%rcx
  4085f8:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  4085ff:	00 
  408600:	48 89 10             	mov    %rdx,(%rax)
  408603:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  408607:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40860e:	00 
  40860f:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408616:	00 
  408617:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40861e:	00 
  40861f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  408626:	00 
  408627:	4c 39 f8             	cmp    %r15,%rax
  40862a:	0f 84 08 08 00 00    	je     408e38 <_Z6windowid+0x1818>
  408630:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  408637:	00 
  408638:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40863f:	00 
  408640:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  408647:	00 
  408648:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40864f:	00 
  408650:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  408657:	00 
  408658:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  40865f:	00 
  408660:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  408667:	00 
  408668:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40866f:	00 00 00 00 00 
  408674:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40867b:	00 
  40867c:	e8 2f aa ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  408681:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  408686:	e8 b5 ab ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40868b:	48 8b 9c 24 f0 00 00 	mov    0xf0(%rsp),%rbx
  408692:	00 
  408693:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40869a:	00 
  40869b:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  4086a2:	00 
  4086a3:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4086aa:	00 
  4086ab:	48 89 d8             	mov    %rbx,%rax
  4086ae:	4c 01 e0             	add    %r12,%rax
  4086b1:	74 09                	je     4086bc <_Z6windowid+0x109c>
  4086b3:	48 85 db             	test   %rbx,%rbx
  4086b6:	0f 84 f0 10 00 00    	je     4097ac <_Z6windowid+0x218c>
  4086bc:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  4086c1:	49 83 fc 0f          	cmp    $0xf,%r12
  4086c5:	0f 87 1d 07 00 00    	ja     408de8 <_Z6windowid+0x17c8>
  4086cb:	49 83 fc 01          	cmp    $0x1,%r12
  4086cf:	0f 85 9b 06 00 00    	jne    408d70 <_Z6windowid+0x1750>
  4086d5:	0f b6 03             	movzbl (%rbx),%eax
  4086d8:	88 84 24 90 01 00 00 	mov    %al,0x190(%rsp)
  4086df:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4086e6:	00 
  4086e7:	4c 89 a4 24 88 01 00 	mov    %r12,0x188(%rsp)
  4086ee:	00 
  4086ef:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  4086f4:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  4086fb:	00 
  4086fc:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  408703:	00 
  408704:	e8 77 ad ff ff       	callq  403480 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  408709:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40870e:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408715:	00 
  408716:	e8 65 a9 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40871b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408722:	00 
  408723:	e8 e8 a9 ff ff       	callq  403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  408728:	ff c0                	inc    %eax
  40872a:	3c 01                	cmp    $0x1,%al
  40872c:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  408733:	00 
  408734:	0f 97 c0             	seta   %al
  408737:	20 44 24 47          	and    %al,0x47(%rsp)
  40873b:	48 85 f6             	test   %rsi,%rsi
  40873e:	74 0d                	je     40874d <_Z6windowid+0x112d>
  408740:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  408747:	00 
  408748:	e8 53 a9 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40874d:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  408754:	00 
  408755:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40875c:	00 
  40875d:	48 39 c7             	cmp    %rax,%rdi
  408760:	74 11                	je     408773 <_Z6windowid+0x1153>
  408762:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  408769:	00 
  40876a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40876e:	e8 3d ab ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408773:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40877a:	00 
  40877b:	48 85 f6             	test   %rsi,%rsi
  40877e:	74 0d                	je     40878d <_Z6windowid+0x116d>
  408780:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  408787:	00 
  408788:	e8 13 a9 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40878d:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  408794:	00 
  408795:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40879c:	00 
  40879d:	48 39 c7             	cmp    %rax,%rdi
  4087a0:	74 11                	je     4087b3 <_Z6windowid+0x1193>
  4087a2:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  4087a9:	00 
  4087aa:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4087ae:	e8 fd aa ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4087b3:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  4087ba:	00 
  4087bb:	4c 39 ff             	cmp    %r15,%rdi
  4087be:	74 11                	je     4087d1 <_Z6windowid+0x11b1>
  4087c0:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  4087c7:	00 
  4087c8:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4087cc:	e8 df aa ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4087d1:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  4087d8:	00 
  4087d9:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  4087e0:	00 
  4087e1:	48 39 c7             	cmp    %rax,%rdi
  4087e4:	74 11                	je     4087f7 <_Z6windowid+0x11d7>
  4087e6:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  4087ed:	00 
  4087ee:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4087f2:	e8 b9 aa ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4087f7:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  4087fe:	00 
  4087ff:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  408806:	00 
  408807:	48 39 c7             	cmp    %rax,%rdi
  40880a:	74 11                	je     40881d <_Z6windowid+0x11fd>
  40880c:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  408813:	00 
  408814:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408818:	e8 93 aa ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40881d:	4c 39 74 24 38       	cmp    %r14,0x38(%rsp)
  408822:	0f 84 b0 06 00 00    	je     408ed8 <_Z6windowid+0x18b8>
  408828:	49 83 fe 09          	cmp    $0x9,%r14
  40882c:	0f 86 84 0f 00 00    	jbe    4097b6 <_Z6windowid+0x2196>
  408832:	8b 44 24 48          	mov    0x48(%rsp),%eax
  408836:	83 f8 63             	cmp    $0x63,%eax
  408839:	0f 86 f7 09 00 00    	jbe    409236 <_Z6windowid+0x1c16>
  40883f:	3d e7 03 00 00       	cmp    $0x3e7,%eax
  408844:	0f 86 06 0a 00 00    	jbe    409250 <_Z6windowid+0x1c30>
  40884a:	3d 0f 27 00 00       	cmp    $0x270f,%eax
  40884f:	0f 86 ee 09 00 00    	jbe    409243 <_Z6windowid+0x1c23>
  408855:	4c 89 f2             	mov    %r14,%rdx
  408858:	bb 01 00 00 00       	mov    $0x1,%ebx
  40885d:	eb 22                	jmp    408881 <_Z6windowid+0x1261>
  40885f:	90                   	nop
  408860:	83 fa 63             	cmp    $0x63,%edx
  408863:	0f 86 ff 05 00 00    	jbe    408e68 <_Z6windowid+0x1848>
  408869:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40886f:	0f 86 03 06 00 00    	jbe    408e78 <_Z6windowid+0x1858>
  408875:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40887b:	0f 86 47 06 00 00    	jbe    408ec8 <_Z6windowid+0x18a8>
  408881:	48 89 d0             	mov    %rdx,%rax
  408884:	48 89 d1             	mov    %rdx,%rcx
  408887:	49 f7 e5             	mul    %r13
  40888a:	89 d8                	mov    %ebx,%eax
  40888c:	83 c3 04             	add    $0x4,%ebx
  40888f:	48 c1 ea 0b          	shr    $0xb,%rdx
  408893:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40889a:	77 c4                	ja     408860 <_Z6windowid+0x1240>
  40889c:	49 ff c6             	inc    %r14
  40889f:	e9 6c fb ff ff       	jmpq   408410 <_Z6windowid+0xdf0>
  4088a4:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  4088a9:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  4088ae:	4c 89 e8             	mov    %r13,%rax
  4088b1:	4c 01 e0             	add    %r12,%rax
  4088b4:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  4088bb:	00 
  4088bc:	74 09                	je     4088c7 <_Z6windowid+0x12a7>
  4088be:	4d 85 ed             	test   %r13,%r13
  4088c1:	0f 84 85 0f 00 00    	je     40984c <_Z6windowid+0x222c>
  4088c7:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  4088ce:	00 
  4088cf:	49 83 fc 0f          	cmp    $0xf,%r12
  4088d3:	0f 87 81 0d 00 00    	ja     40965a <_Z6windowid+0x203a>
  4088d9:	49 83 fc 01          	cmp    $0x1,%r12
  4088dd:	0f 84 b5 0c 00 00    	je     409598 <_Z6windowid+0x1f78>
  4088e3:	4d 85 e4             	test   %r12,%r12
  4088e6:	0f 85 55 0e 00 00    	jne    409741 <_Z6windowid+0x2121>
  4088ec:	4c 89 f8             	mov    %r15,%rax
  4088ef:	4c 89 a4 24 d8 00 00 	mov    %r12,0xd8(%rsp)
  4088f6:	00 
  4088f7:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  4088fc:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  408903:	ff ff 3f 
  408906:	48 2b 84 24 d8 00 00 	sub    0xd8(%rsp),%rax
  40890d:	00 
  40890e:	48 83 f8 03          	cmp    $0x3,%rax
  408912:	0f 86 1f 0e 00 00    	jbe    409737 <_Z6windowid+0x2117>
  408918:	ba 04 00 00 00       	mov    $0x4,%edx
  40891d:	be d3 b0 40 00       	mov    $0x40b0d3,%esi
  408922:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  408929:	00 
  40892a:	e8 c1 a7 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40892f:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  408936:	00 
  408937:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40893e:	00 
  40893f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  408946:	00 
  408947:	4c 39 f8             	cmp    %r15,%rax
  40894a:	0f 84 6c 0d 00 00    	je     4096bc <_Z6windowid+0x209c>
  408950:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408957:	00 
  408958:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40895f:	00 
  408960:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  408967:	00 
  408968:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40896f:	00 
  408970:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  408977:	00 
  408978:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40897f:	00 
  408980:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  408987:	00 
  408988:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40898f:	00 00 00 00 00 
  408994:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40899b:	00 
  40899c:	e8 0f a7 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  4089a1:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  4089a8:	00 
  4089a9:	e8 92 a8 ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  4089ae:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  4089b5:	00 
  4089b6:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  4089bd:	00 
  4089be:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  4089c5:	00 
  4089c6:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  4089cd:	00 
  4089ce:	4c 89 e8             	mov    %r13,%rax
  4089d1:	4c 01 e0             	add    %r12,%rax
  4089d4:	74 09                	je     4089df <_Z6windowid+0x13bf>
  4089d6:	4d 85 ed             	test   %r13,%r13
  4089d9:	0f 84 4e 0d 00 00    	je     40972d <_Z6windowid+0x210d>
  4089df:	4c 89 a4 24 b0 00 00 	mov    %r12,0xb0(%rsp)
  4089e6:	00 
  4089e7:	49 83 fc 0f          	cmp    $0xf,%r12
  4089eb:	0f 87 1a 0c 00 00    	ja     40960b <_Z6windowid+0x1feb>
  4089f1:	49 83 fc 01          	cmp    $0x1,%r12
  4089f5:	0f 85 fa 0b 00 00    	jne    4095f5 <_Z6windowid+0x1fd5>
  4089fb:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  408a00:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  408a07:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408a0e:	00 
  408a0f:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  408a16:	00 
  408a17:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  408a1c:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  408a23:	00 
  408a24:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  408a2b:	00 
  408a2c:	e8 4f aa ff ff       	callq  403480 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  408a31:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  408a36:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408a3d:	00 
  408a3e:	e8 3d a6 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  408a43:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  408a4a:	00 
  408a4b:	48 85 f6             	test   %rsi,%rsi
  408a4e:	74 0d                	je     408a5d <_Z6windowid+0x143d>
  408a50:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  408a57:	00 
  408a58:	e8 43 a6 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  408a5d:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  408a64:	00 
  408a65:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  408a6c:	00 
  408a6d:	48 39 c7             	cmp    %rax,%rdi
  408a70:	74 11                	je     408a83 <_Z6windowid+0x1463>
  408a72:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  408a79:	00 
  408a7a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408a7e:	e8 2d a8 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408a83:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  408a8a:	00 
  408a8b:	4c 39 ff             	cmp    %r15,%rdi
  408a8e:	74 11                	je     408aa1 <_Z6windowid+0x1481>
  408a90:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  408a97:	00 
  408a98:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408a9c:	e8 0f a8 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408aa1:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  408aa8:	00 
  408aa9:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  408ab0:	00 
  408ab1:	e8 1a a6 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  408ab6:	31 d2                	xor    %edx,%edx
  408ab8:	66 89 94 24 58 03 00 	mov    %dx,0x358(%rsp)
  408abf:	00 
  408ac0:	48 8b 05 61 51 00 00 	mov    0x5161(%rip),%rax        # 40dc28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  408ac7:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408acb:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  408ad2:	00 00 
  408ad4:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408adb:	00 
  408adc:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408ae3:	00 
  408ae4:	48 03 78 e8          	add    -0x18(%rax),%rdi
  408ae8:	48 8b 05 41 51 00 00 	mov    0x5141(%rip),%rax        # 40dc30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  408aef:	31 f6                	xor    %esi,%esi
  408af1:	48 c7 84 24 78 02 00 	movq   $0x40db90,0x278(%rsp)
  408af8:	00 90 db 40 00 
  408afd:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  408b04:	00 00 00 00 00 
  408b09:	48 89 07             	mov    %rax,(%rdi)
  408b0c:	c5 f8 77             	vzeroupper 
  408b0f:	e8 1c a8 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  408b14:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  408b1b:	00 
  408b1c:	48 c7 84 24 80 01 00 	movq   $0x40dd28,0x180(%rsp)
  408b23:	00 28 dd 40 00 
  408b28:	48 c7 84 24 78 02 00 	movq   $0x40dd50,0x278(%rsp)
  408b2f:	00 50 dd 40 00 
  408b34:	e8 97 a7 ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  408b39:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  408b40:	00 
  408b41:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  408b48:	00 
  408b49:	e8 e2 a7 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  408b4e:	ba 10 00 00 00       	mov    $0x10,%edx
  408b53:	4c 89 e6             	mov    %r12,%rsi
  408b56:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  408b5d:	00 
  408b5e:	e8 0d a7 ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  408b63:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  408b6a:	00 
  408b6b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408b72:	00 
  408b73:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  408b77:	48 85 c0             	test   %rax,%rax
  408b7a:	0f 84 2c 0b 00 00    	je     4096ac <_Z6windowid+0x208c>
  408b80:	31 f6                	xor    %esi,%esi
  408b82:	e8 79 a8 ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  408b87:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408b8b:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  408b92:	00 
  408b93:	bf 01 00 00 00       	mov    $0x1,%edi
  408b98:	c5 f9 7f 84 24 d0 00 	vmovdqa %xmm0,0xd0(%rsp)
  408b9f:	00 00 
  408ba1:	e8 da a6 ff ff       	callq  403280 <clock_gettime@plt>
  408ba6:	48 69 94 24 d0 00 00 	imul   $0x3b9aca00,0xd0(%rsp),%rdx
  408bad:	00 00 ca 9a 3b 
  408bb2:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  408bb9:	00 
  408bba:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408bc1:	00 
  408bc2:	48 8d b4 02 80 b2 e6 	lea    0xee6b280(%rdx,%rax,1),%rsi
  408bc9:	0e 
  408bca:	e8 01 a6 ff ff       	callq  4031d0 <_ZNSo9_M_insertIyEERSoT_@plt>
  408bcf:	c5 f9 6f 7c 24 10    	vmovdqa 0x10(%rsp),%xmm7
  408bd5:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  408bdc:	00 
  408bdd:	48 c7 84 24 78 02 00 	movq   $0x40dd50,0x278(%rsp)
  408be4:	00 50 dd 40 00 
  408be9:	c5 f9 7f bc 24 80 01 	vmovdqa %xmm7,0x180(%rsp)
  408bf0:	00 00 
  408bf2:	e8 79 a4 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  408bf7:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  408bfe:	00 
  408bff:	e8 5c a8 ff ff       	callq  403460 <_ZNSt12__basic_fileIcED1Ev@plt>
  408c04:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  408c0b:	00 
  408c0c:	48 c7 84 24 88 01 00 	movq   $0x40dbb0,0x188(%rsp)
  408c13:	00 b0 db 40 00 
  408c18:	e8 33 a7 ff ff       	callq  403350 <_ZNSt6localeD1Ev@plt>
  408c1d:	48 8b 05 04 50 00 00 	mov    0x5004(%rip),%rax        # 40dc28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  408c24:	48 8b 0d 05 50 00 00 	mov    0x5005(%rip),%rcx        # 40dc30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  408c2b:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408c32:	00 
  408c33:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  408c37:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  408c3e:	00 
  408c3f:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  408c46:	00 
  408c47:	48 c7 84 24 78 02 00 	movq   $0x40db90,0x278(%rsp)
  408c4e:	00 90 db 40 00 
  408c53:	e8 a8 a4 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  408c58:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  408c5d:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  408c64:	00 
  408c65:	e8 46 a5 ff ff       	callq  4031b0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@plt>
  408c6a:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  408c71:	00 
  408c72:	48 85 f6             	test   %rsi,%rsi
  408c75:	74 0d                	je     408c84 <_Z6windowid+0x1664>
  408c77:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  408c7e:	00 
  408c7f:	e8 1c a4 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  408c84:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  408c8b:	00 
  408c8c:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408c93:	00 
  408c94:	48 39 c7             	cmp    %rax,%rdi
  408c97:	74 11                	je     408caa <_Z6windowid+0x168a>
  408c99:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  408ca0:	00 
  408ca1:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408ca5:	e8 06 a6 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408caa:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  408cb1:	00 
  408cb2:	e8 59 a4 ff ff       	callq  403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  408cb7:	ff c0                	inc    %eax
  408cb9:	3c 01                	cmp    $0x1,%al
  408cbb:	0f 87 a7 02 00 00    	ja     408f68 <_Z6windowid+0x1948>
  408cc1:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408cc5:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408ccc:	00 
  408ccd:	bf 01 00 00 00       	mov    $0x1,%edi
  408cd2:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  408cd9:	00 00 
  408cdb:	e8 a0 a5 ff ff       	callq  403280 <clock_gettime@plt>
  408ce0:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  408ce7:	00 00 ca 9a 3b 
  408cec:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  408cf3:	00 
  408cf4:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  408cf9:	0f 82 ff ae ff ff    	jb     403bfe <_Z6windowid.cold+0x75e>
  408cff:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  408d06:	00 00 00 00 00 
  408d0b:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  408d12:	00 80 84 1e 00 
  408d17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  408d1e:	00 00 
  408d20:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408d27:	00 
  408d28:	48 89 f7             	mov    %rsi,%rdi
  408d2b:	e8 b0 a3 ff ff       	callq  4030e0 <nanosleep@plt>
  408d30:	83 f8 ff             	cmp    $0xffffffff,%eax
  408d33:	0f 85 71 ff ff ff    	jne    408caa <_Z6windowid+0x168a>
  408d39:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  408d3e:	83 38 04             	cmpl   $0x4,(%rax)
  408d41:	74 dd                	je     408d20 <_Z6windowid+0x1700>
  408d43:	e9 62 ff ff ff       	jmpq   408caa <_Z6windowid+0x168a>
  408d48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  408d4f:	00 
  408d50:	4d 85 e4             	test   %r12,%r12
  408d53:	0f 85 67 0a 00 00    	jne    4097c0 <_Z6windowid+0x21a0>
  408d59:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  408d60:	00 
  408d61:	e9 b1 f7 ff ff       	jmpq   408517 <_Z6windowid+0xef7>
  408d66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408d6d:	00 00 00 
  408d70:	4d 85 e4             	test   %r12,%r12
  408d73:	0f 85 54 0a 00 00    	jne    4097cd <_Z6windowid+0x21ad>
  408d79:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  408d80:	00 
  408d81:	e9 61 f9 ff ff       	jmpq   4086e7 <_Z6windowid+0x10c7>
  408d86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408d8d:	00 00 00 
  408d90:	31 d2                	xor    %edx,%edx
  408d92:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408d99:	00 
  408d9a:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  408da1:	00 
  408da2:	e8 99 a6 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  408da7:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  408dae:	00 
  408daf:	48 89 c7             	mov    %rax,%rdi
  408db2:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  408db9:	00 
  408dba:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  408dc1:	00 
  408dc2:	4c 89 e2             	mov    %r12,%rdx
  408dc5:	48 89 de             	mov    %rbx,%rsi
  408dc8:	e8 83 a4 ff ff       	callq  403250 <memcpy@plt>
  408dcd:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  408dd4:	00 
  408dd5:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  408ddc:	00 
  408ddd:	e9 35 f7 ff ff       	jmpq   408517 <_Z6windowid+0xef7>
  408de2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408de8:	31 d2                	xor    %edx,%edx
  408dea:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
  408def:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408df6:	00 
  408df7:	e8 44 a6 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  408dfc:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408e03:	00 
  408e04:	48 89 c7             	mov    %rax,%rdi
  408e07:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  408e0c:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  408e13:	00 
  408e14:	4c 89 e2             	mov    %r12,%rdx
  408e17:	48 89 de             	mov    %rbx,%rsi
  408e1a:	e8 31 a4 ff ff       	callq  403250 <memcpy@plt>
  408e1f:	4c 8b 64 24 68       	mov    0x68(%rsp),%r12
  408e24:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  408e2b:	00 
  408e2c:	e9 b6 f8 ff ff       	jmpq   4086e7 <_Z6windowid+0x10c7>
  408e31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  408e38:	c5 f9 6f 9c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm3
  408e3f:	00 00 
  408e41:	c5 f9 7f 9c 24 60 01 	vmovdqa %xmm3,0x160(%rsp)
  408e48:	00 00 
  408e4a:	e9 f9 f7 ff ff       	jmpq   408648 <_Z6windowid+0x1028>
  408e4f:	90                   	nop
  408e50:	c5 fa 6f 60 10       	vmovdqu 0x10(%rax),%xmm4
  408e55:	c5 f9 7f a4 24 e0 00 	vmovdqa %xmm4,0xe0(%rsp)
  408e5c:	00 00 
  408e5e:	e9 91 f7 ff ff       	jmpq   4085f4 <_Z6windowid+0xfd4>
  408e63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408e68:	8d 58 05             	lea    0x5(%rax),%ebx
  408e6b:	49 ff c6             	inc    %r14
  408e6e:	e9 9d f5 ff ff       	jmpq   408410 <_Z6windowid+0xdf0>
  408e73:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408e78:	8d 58 06             	lea    0x6(%rax),%ebx
  408e7b:	49 ff c6             	inc    %r14
  408e7e:	e9 8d f5 ff ff       	jmpq   408410 <_Z6windowid+0xdf0>
  408e83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408e88:	31 d2                	xor    %edx,%edx
  408e8a:	31 f6                	xor    %esi,%esi
  408e8c:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  408e93:	00 
  408e94:	e8 07 a5 ff ff       	callq  4033a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  408e99:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  408ea0:	00 
  408ea1:	48 8d 50 10          	lea    0x10(%rax),%rdx
  408ea5:	48 8b 08             	mov    (%rax),%rcx
  408ea8:	48 39 d1             	cmp    %rdx,%rcx
  408eab:	0f 85 2f f7 ff ff    	jne    4085e0 <_Z6windowid+0xfc0>
  408eb1:	c5 fa 6f 68 10       	vmovdqu 0x10(%rax),%xmm5
  408eb6:	c5 f9 7f ac 24 e0 00 	vmovdqa %xmm5,0xe0(%rsp)
  408ebd:	00 00 
  408ebf:	e9 30 f7 ff ff       	jmpq   4085f4 <_Z6windowid+0xfd4>
  408ec4:	0f 1f 40 00          	nopl   0x0(%rax)
  408ec8:	8d 58 07             	lea    0x7(%rax),%ebx
  408ecb:	49 ff c6             	inc    %r14
  408ece:	e9 3d f5 ff ff       	jmpq   408410 <_Z6windowid+0xdf0>
  408ed3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408ed8:	80 7c 24 47 00       	cmpb   $0x0,0x47(%rsp)
  408edd:	0f 85 c1 f9 ff ff    	jne    4088a4 <_Z6windowid+0x1284>
  408ee3:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408ee7:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408eee:	00 
  408eef:	bf 01 00 00 00       	mov    $0x1,%edi
  408ef4:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  408efb:	00 00 
  408efd:	e8 7e a3 ff ff       	callq  403280 <clock_gettime@plt>
  408f02:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  408f09:	00 00 ca 9a 3b 
  408f0e:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  408f15:	00 
  408f16:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  408f1b:	0f 82 8b ab ff ff    	jb     403aac <_Z6windowid.cold+0x60c>
  408f21:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  408f28:	00 00 00 00 00 
  408f2d:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  408f34:	00 80 84 1e 00 
  408f39:	eb 13                	jmp    408f4e <_Z6windowid+0x192e>
  408f3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408f40:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  408f45:	83 38 04             	cmpl   $0x4,(%rax)
  408f48:	0f 85 9a f4 ff ff    	jne    4083e8 <_Z6windowid+0xdc8>
  408f4e:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408f55:	00 
  408f56:	48 89 f7             	mov    %rsi,%rdi
  408f59:	e8 82 a1 ff ff       	callq  4030e0 <nanosleep@plt>
  408f5e:	83 f8 ff             	cmp    $0xffffffff,%eax
  408f61:	74 dd                	je     408f40 <_Z6windowid+0x1920>
  408f63:	e9 80 f4 ff ff       	jmpq   4083e8 <_Z6windowid+0xdc8>
  408f68:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  408f6f:	00 
  408f70:	4c 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13
  408f77:	00 
  408f78:	e8 53 a1 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  408f7d:	31 c0                	xor    %eax,%eax
  408f7f:	66 89 84 24 60 03 00 	mov    %ax,0x360(%rsp)
  408f86:	00 
  408f87:	48 8b 1d ea 4d 00 00 	mov    0x4dea(%rip),%rbx        # 40dd78 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  408f8e:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408f92:	c5 fe 7f 84 24 68 03 	vmovdqu %ymm0,0x368(%rsp)
  408f99:	00 00 
  408f9b:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  408f9f:	4c 8b 25 da 4d 00 00 	mov    0x4dda(%rip),%r12        # 40dd80 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  408fa6:	48 c7 84 24 80 02 00 	movq   $0x40db90,0x280(%rsp)
  408fad:	00 90 db 40 00 
  408fb2:	48 c7 84 24 58 03 00 	movq   $0x0,0x358(%rsp)
  408fb9:	00 00 00 00 00 
  408fbe:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  408fc5:	00 
  408fc6:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  408fcd:	00 
  408fce:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  408fd5:	00 00 00 00 00 
  408fda:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408fe1:	00 
  408fe2:	31 f6                	xor    %esi,%esi
  408fe4:	48 03 7b e8          	add    -0x18(%rbx),%rdi
  408fe8:	c5 f8 77             	vzeroupper 
  408feb:	e8 40 a3 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  408ff0:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  408ff7:	00 
  408ff8:	48 c7 84 24 80 01 00 	movq   $0x40dc58,0x180(%rsp)
  408fff:	00 58 dc 40 00 
  409004:	48 c7 84 24 80 02 00 	movq   $0x40dc80,0x280(%rsp)
  40900b:	00 80 dc 40 00 
  409010:	e8 bb a2 ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  409015:	48 8d b4 24 90 01 00 	lea    0x190(%rsp),%rsi
  40901c:	00 
  40901d:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  409024:	00 
  409025:	e8 06 a3 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40902a:	ba 08 00 00 00       	mov    $0x8,%edx
  40902f:	4c 89 ee             	mov    %r13,%rsi
  409032:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  409039:	00 
  40903a:	e8 31 a2 ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40903f:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  409046:	00 
  409047:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40904e:	00 
  40904f:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  409053:	48 85 c0             	test   %rax,%rax
  409056:	0f 84 2c 05 00 00    	je     409588 <_Z6windowid+0x1f68>
  40905c:	31 f6                	xor    %esi,%esi
  40905e:	e8 9d a3 ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  409063:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  409068:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40906f:	00 
  409070:	e8 fb a0 ff ff       	callq  403170 <_ZNSi10_M_extractImEERSiRT_@plt>
  409075:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40907c:	00 
  40907d:	48 c7 84 24 80 01 00 	movq   $0x40dc58,0x180(%rsp)
  409084:	00 58 dc 40 00 
  409089:	48 c7 84 24 80 02 00 	movq   $0x40dc80,0x280(%rsp)
  409090:	00 80 dc 40 00 
  409095:	48 c7 84 24 90 01 00 	movq   $0x40dca0,0x190(%rsp)
  40909c:	00 a0 dc 40 00 
  4090a1:	e8 ca 9f ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  4090a6:	48 8d bc 24 f8 01 00 	lea    0x1f8(%rsp),%rdi
  4090ad:	00 
  4090ae:	e8 ad a3 ff ff       	callq  403460 <_ZNSt12__basic_fileIcED1Ev@plt>
  4090b3:	48 8d bc 24 c8 01 00 	lea    0x1c8(%rsp),%rdi
  4090ba:	00 
  4090bb:	48 c7 84 24 90 01 00 	movq   $0x40dbb0,0x190(%rsp)
  4090c2:	00 b0 db 40 00 
  4090c7:	e8 84 a2 ff ff       	callq  403350 <_ZNSt6localeD1Ev@plt>
  4090cc:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  4090d0:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  4090d7:	00 
  4090d8:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  4090df:	00 
  4090e0:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  4090e7:	00 
  4090e8:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  4090ef:	00 00 00 00 00 
  4090f4:	48 c7 84 24 80 02 00 	movq   $0x40db90,0x280(%rsp)
  4090fb:	00 90 db 40 00 
  409100:	e8 fb 9f ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  409105:	0f 1f 00             	nopl   (%rax)
  409108:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40910c:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409113:	00 
  409114:	bf 01 00 00 00       	mov    $0x1,%edi
  409119:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  409120:	00 00 
  409122:	e8 59 a1 ff ff       	callq  403280 <clock_gettime@plt>
  409127:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40912e:	00 00 ca 9a 3b 
  409133:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40913a:	00 
  40913b:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  409142:	00 
  409143:	49 39 c4             	cmp    %rax,%r12
  409146:	76 39                	jbe    409181 <_Z6windowid+0x1b61>
  409148:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40914f:	00 00 00 00 00 
  409154:	48 c7 84 24 88 01 00 	movq   $0x4e20,0x188(%rsp)
  40915b:	00 20 4e 00 00 
  409160:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409167:	00 
  409168:	48 89 f7             	mov    %rsi,%rdi
  40916b:	e8 70 9f ff ff       	callq  4030e0 <nanosleep@plt>
  409170:	83 f8 ff             	cmp    $0xffffffff,%eax
  409173:	75 93                	jne    409108 <_Z6windowid+0x1ae8>
  409175:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40917a:	83 38 04             	cmpl   $0x4,(%rax)
  40917d:	74 e1                	je     409160 <_Z6windowid+0x1b40>
  40917f:	eb 87                	jmp    409108 <_Z6windowid+0x1ae8>
  409181:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  409188:	00 
  409189:	48 85 f6             	test   %rsi,%rsi
  40918c:	74 0d                	je     40919b <_Z6windowid+0x1b7b>
  40918e:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  409195:	00 
  409196:	e8 05 9f ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40919b:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  4091a2:	00 
  4091a3:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4091aa:	00 
  4091ab:	48 39 c7             	cmp    %rax,%rdi
  4091ae:	74 11                	je     4091c1 <_Z6windowid+0x1ba1>
  4091b0:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  4091b7:	00 
  4091b8:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4091bc:	e8 ef a0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4091c1:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  4091c6:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  4091cd:	00 
  4091ce:	48 39 c7             	cmp    %rax,%rdi
  4091d1:	74 11                	je     4091e4 <_Z6windowid+0x1bc4>
  4091d3:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  4091da:	00 
  4091db:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4091df:	e8 cc a0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4091e4:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
  4091eb:	00 
  4091ec:	48 85 f6             	test   %rsi,%rsi
  4091ef:	74 0d                	je     4091fe <_Z6windowid+0x1bde>
  4091f1:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  4091f8:	00 
  4091f9:	e8 a2 9e ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  4091fe:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  409205:	00 
  409206:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  40920d:	00 
  40920e:	48 39 c7             	cmp    %rax,%rdi
  409211:	74 11                	je     409224 <_Z6windowid+0x1c04>
  409213:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  40921a:	00 
  40921b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40921f:	e8 8c a0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  409224:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  409228:	5b                   	pop    %rbx
  409229:	4c 89 e0             	mov    %r12,%rax
  40922c:	41 5c                	pop    %r12
  40922e:	41 5d                	pop    %r13
  409230:	41 5e                	pop    %r14
  409232:	41 5f                	pop    %r15
  409234:	5d                   	pop    %rbp
  409235:	c3                   	retq   
  409236:	bb 02 00 00 00       	mov    $0x2,%ebx
  40923b:	49 ff c6             	inc    %r14
  40923e:	e9 cd f1 ff ff       	jmpq   408410 <_Z6windowid+0xdf0>
  409243:	bb 04 00 00 00       	mov    $0x4,%ebx
  409248:	49 ff c6             	inc    %r14
  40924b:	e9 c0 f1 ff ff       	jmpq   408410 <_Z6windowid+0xdf0>
  409250:	bb 03 00 00 00       	mov    $0x3,%ebx
  409255:	49 ff c6             	inc    %r14
  409258:	e9 b3 f1 ff ff       	jmpq   408410 <_Z6windowid+0xdf0>
  40925d:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  409261:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409268:	00 
  409269:	bf 01 00 00 00       	mov    $0x1,%edi
  40926e:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  409275:	00 00 
  409277:	e8 04 a0 ff ff       	callq  403280 <clock_gettime@plt>
  40927c:	4c 69 a4 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%r12
  409283:	00 00 ca 9a 3b 
  409288:	4c 03 a4 24 88 01 00 	add    0x188(%rsp),%r12
  40928f:	00 
  409290:	eb 92                	jmp    409224 <_Z6windowid+0x1c04>
  409292:	4d 85 e4             	test   %r12,%r12
  409295:	0f 85 3f 05 00 00    	jne    4097da <_Z6windowid+0x21ba>
  40929b:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4092a2:	00 
  4092a3:	e9 37 f0 ff ff       	jmpq   4082df <_Z6windowid+0xcbf>
  4092a8:	31 d2                	xor    %edx,%edx
  4092aa:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  4092b1:	00 
  4092b2:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  4092b9:	00 
  4092ba:	e8 81 a1 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4092bf:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  4092c6:	00 
  4092c7:	48 89 c7             	mov    %rax,%rdi
  4092ca:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  4092d1:	00 
  4092d2:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  4092d9:	00 
  4092da:	4c 89 e2             	mov    %r12,%rdx
  4092dd:	4c 89 ee             	mov    %r13,%rsi
  4092e0:	e8 6b 9f ff ff       	callq  403250 <memcpy@plt>
  4092e5:	4c 8b a4 24 d0 00 00 	mov    0xd0(%rsp),%r12
  4092ec:	00 
  4092ed:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  4092f4:	00 
  4092f5:	e9 e5 ef ff ff       	jmpq   4082df <_Z6windowid+0xcbf>
  4092fa:	4d 85 e4             	test   %r12,%r12
  4092fd:	0f 85 e4 04 00 00    	jne    4097e7 <_Z6windowid+0x21c7>
  409303:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40930a:	00 
  40930b:	e9 a2 ee ff ff       	jmpq   4081b2 <_Z6windowid+0xb92>
  409310:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  409315:	31 d2                	xor    %edx,%edx
  409317:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40931e:	00 
  40931f:	e8 1c a1 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  409324:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40932b:	00 
  40932c:	48 89 c7             	mov    %rax,%rdi
  40932f:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  409336:	00 
  409337:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40933e:	00 
  40933f:	4c 89 f2             	mov    %r14,%rdx
  409342:	4c 89 ee             	mov    %r13,%rsi
  409345:	e8 06 9f ff ff       	callq  403250 <memcpy@plt>
  40934a:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  409351:	00 
  409352:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  409359:	00 
  40935a:	e9 3e e5 ff ff       	jmpq   40789d <_Z6windowid+0x27d>
  40935f:	4d 85 f6             	test   %r14,%r14
  409362:	0f 85 8c 04 00 00    	jne    4097f4 <_Z6windowid+0x21d4>
  409368:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40936f:	00 
  409370:	e9 28 e5 ff ff       	jmpq   40789d <_Z6windowid+0x27d>
  409375:	48 85 c0             	test   %rax,%rax
  409378:	0f 85 83 04 00 00    	jne    409801 <_Z6windowid+0x21e1>
  40937e:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  409385:	00 
  409386:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  40938b:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  409392:	00 
  409393:	e9 a5 e3 ff ff       	jmpq   40773d <_Z6windowid+0x11d>
  409398:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  40939f:	00 
  4093a0:	31 d2                	xor    %edx,%edx
  4093a2:	48 89 c6             	mov    %rax,%rsi
  4093a5:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  4093ac:	00 
  4093ad:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  4093b2:	e8 89 a0 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4093b7:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4093be:	00 
  4093bf:	48 89 c7             	mov    %rax,%rdi
  4093c2:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  4093c9:	00 
  4093ca:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  4093d1:	00 
  4093d2:	4c 89 f2             	mov    %r14,%rdx
  4093d5:	4c 89 ee             	mov    %r13,%rsi
  4093d8:	e8 73 9e ff ff       	callq  403250 <memcpy@plt>
  4093dd:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  4093e4:	00 
  4093e5:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  4093ec:	00 
  4093ed:	e9 4b e3 ff ff       	jmpq   40773d <_Z6windowid+0x11d>
  4093f2:	48 85 c0             	test   %rax,%rax
  4093f5:	0f 85 20 04 00 00    	jne    40981b <_Z6windowid+0x21fb>
  4093fb:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  409402:	00 
  409403:	e9 94 e2 ff ff       	jmpq   40769c <_Z6windowid+0x7c>
  409408:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40940d:	31 d2                	xor    %edx,%edx
  40940f:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409416:	00 
  409417:	e8 24 a0 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40941c:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  409423:	00 
  409424:	48 89 c7             	mov    %rax,%rdi
  409427:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40942e:	00 
  40942f:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  409436:	00 
  409437:	4c 89 e2             	mov    %r12,%rdx
  40943a:	4c 89 ee             	mov    %r13,%rsi
  40943d:	e8 0e 9e ff ff       	callq  403250 <memcpy@plt>
  409442:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  409449:	00 
  40944a:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  409451:	00 
  409452:	e9 5b ed ff ff       	jmpq   4081b2 <_Z6windowid+0xb92>
  409457:	4d 85 e4             	test   %r12,%r12
  40945a:	0f 85 c8 03 00 00    	jne    409828 <_Z6windowid+0x2208>
  409460:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  409467:	00 
  409468:	e9 30 ea ff ff       	jmpq   407e9d <_Z6windowid+0x87d>
  40946d:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  409472:	31 d2                	xor    %edx,%edx
  409474:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40947b:	00 
  40947c:	e8 bf 9f ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  409481:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  409488:	00 
  409489:	48 89 c7             	mov    %rax,%rdi
  40948c:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  409493:	00 
  409494:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40949b:	00 
  40949c:	4c 89 e2             	mov    %r12,%rdx
  40949f:	4c 89 ee             	mov    %r13,%rsi
  4094a2:	e8 a9 9d ff ff       	callq  403250 <memcpy@plt>
  4094a7:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  4094ae:	00 
  4094af:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  4094b6:	00 
  4094b7:	e9 e1 e9 ff ff       	jmpq   407e9d <_Z6windowid+0x87d>
  4094bc:	4d 85 e4             	test   %r12,%r12
  4094bf:	0f 85 70 03 00 00    	jne    409835 <_Z6windowid+0x2215>
  4094c5:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  4094cc:	00 
  4094cd:	e9 ed e7 ff ff       	jmpq   407cbf <_Z6windowid+0x69f>
  4094d2:	31 d2                	xor    %edx,%edx
  4094d4:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  4094db:	00 
  4094dc:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  4094e3:	00 
  4094e4:	e8 57 9f ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4094e9:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  4094f0:	00 
  4094f1:	48 89 c7             	mov    %rax,%rdi
  4094f4:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  4094fb:	00 
  4094fc:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  409503:	00 
  409504:	4c 89 e2             	mov    %r12,%rdx
  409507:	4c 89 ee             	mov    %r13,%rsi
  40950a:	e8 41 9d ff ff       	callq  403250 <memcpy@plt>
  40950f:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  409516:	00 
  409517:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  40951e:	00 
  40951f:	e9 9b e7 ff ff       	jmpq   407cbf <_Z6windowid+0x69f>
  409524:	8b 77 20             	mov    0x20(%rdi),%esi
  409527:	83 ce 04             	or     $0x4,%esi
  40952a:	e8 d1 9e ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40952f:	e9 83 ea ff ff       	jmpq   407fb7 <_Z6windowid+0x997>
  409534:	c5 f9 6f 8c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm1
  40953b:	00 00 
  40953d:	c5 f9 7f 8c 24 30 01 	vmovdqa %xmm1,0x130(%rsp)
  409544:	00 00 
  409546:	e9 ab e8 ff ff       	jmpq   407df6 <_Z6windowid+0x7d6>
  40954b:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  409550:	c5 f9 7f bc 24 e0 00 	vmovdqa %xmm7,0xe0(%rsp)
  409557:	00 00 
  409559:	e9 44 e8 ff ff       	jmpq   407da2 <_Z6windowid+0x782>
  40955e:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  409563:	c5 f9 7f bc 24 80 00 	vmovdqa %xmm7,0x80(%rsp)
  40956a:	00 00 
  40956c:	e9 5d e5 ff ff       	jmpq   407ace <_Z6windowid+0x4ae>
  409571:	c5 f9 6f 94 24 60 01 	vmovdqa 0x160(%rsp),%xmm2
  409578:	00 00 
  40957a:	c5 f9 7f 94 24 90 01 	vmovdqa %xmm2,0x190(%rsp)
  409581:	00 00 
  409583:	e9 a8 ec ff ff       	jmpq   408230 <_Z6windowid+0xc10>
  409588:	8b 77 20             	mov    0x20(%rdi),%esi
  40958b:	83 ce 04             	or     $0x4,%esi
  40958e:	e8 6d 9e ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  409593:	e9 cb fa ff ff       	jmpq   409063 <_Z6windowid+0x1a43>
  409598:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40959d:	88 84 24 e0 00 00 00 	mov    %al,0xe0(%rsp)
  4095a4:	4c 89 f8             	mov    %r15,%rax
  4095a7:	e9 43 f3 ff ff       	jmpq   4088ef <_Z6windowid+0x12cf>
  4095ac:	4c 89 c9             	mov    %r9,%rcx
  4095af:	31 d2                	xor    %edx,%edx
  4095b1:	31 f6                	xor    %esi,%esi
  4095b3:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  4095ba:	00 
  4095bb:	e8 e0 9d ff ff       	callq  4033a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  4095c0:	e9 a9 e7 ff ff       	jmpq   407d6e <_Z6windowid+0x74e>
  4095c5:	8d 58 06             	lea    0x6(%rax),%ebx
  4095c8:	e9 df e5 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  4095cd:	8d 58 05             	lea    0x5(%rax),%ebx
  4095d0:	e9 d7 e5 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  4095d5:	8d 58 06             	lea    0x6(%rax),%ebx
  4095d8:	e9 ef e3 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  4095dd:	8d 58 05             	lea    0x5(%rax),%ebx
  4095e0:	e9 e7 e3 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  4095e5:	8d 58 07             	lea    0x7(%rax),%ebx
  4095e8:	e9 df e3 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  4095ed:	8d 58 07             	lea    0x7(%rax),%ebx
  4095f0:	e9 b7 e5 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  4095f5:	4d 85 e4             	test   %r12,%r12
  4095f8:	0f 85 4b 01 00 00    	jne    409749 <_Z6windowid+0x2129>
  4095fe:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  409605:	00 
  409606:	e9 04 f4 ff ff       	jmpq   408a0f <_Z6windowid+0x13ef>
  40960b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  409610:	31 d2                	xor    %edx,%edx
  409612:	48 8d b4 24 b0 00 00 	lea    0xb0(%rsp),%rsi
  409619:	00 
  40961a:	e8 21 9e ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40961f:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  409626:	00 
  409627:	48 89 c7             	mov    %rax,%rdi
  40962a:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
  409631:	00 
  409632:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  409639:	00 
  40963a:	4c 89 e2             	mov    %r12,%rdx
  40963d:	4c 89 ee             	mov    %r13,%rsi
  409640:	e8 0b 9c ff ff       	callq  403250 <memcpy@plt>
  409645:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
  40964c:	00 
  40964d:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  409654:	00 
  409655:	e9 b5 f3 ff ff       	jmpq   408a0f <_Z6windowid+0x13ef>
  40965a:	31 d2                	xor    %edx,%edx
  40965c:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409663:	00 
  409664:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  40966b:	00 
  40966c:	e8 cf 9d ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  409671:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
  409678:	00 
  409679:	48 89 c7             	mov    %rax,%rdi
  40967c:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  409683:	00 
  409684:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
  40968b:	00 
  40968c:	4c 89 e2             	mov    %r12,%rdx
  40968f:	4c 89 ee             	mov    %r13,%rsi
  409692:	e8 b9 9b ff ff       	callq  403250 <memcpy@plt>
  409697:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40969e:	00 
  40969f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  4096a6:	00 
  4096a7:	e9 43 f2 ff ff       	jmpq   4088ef <_Z6windowid+0x12cf>
  4096ac:	8b 77 20             	mov    0x20(%rdi),%esi
  4096af:	83 ce 04             	or     $0x4,%esi
  4096b2:	e8 49 9d ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  4096b7:	e9 cb f4 ff ff       	jmpq   408b87 <_Z6windowid+0x1567>
  4096bc:	c5 f9 6f b4 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm6
  4096c3:	00 00 
  4096c5:	c5 f9 7f b4 24 90 01 	vmovdqa %xmm6,0x190(%rsp)
  4096cc:	00 00 
  4096ce:	e9 95 f2 ff ff       	jmpq   408968 <_Z6windowid+0x1348>
  4096d3:	bb 02 00 00 00       	mov    $0x2,%ebx
  4096d8:	e9 cf e4 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  4096dd:	bb 01 00 00 00       	mov    $0x1,%ebx
  4096e2:	e9 e5 e2 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  4096e7:	bb 02 00 00 00       	mov    $0x2,%ebx
  4096ec:	e9 db e2 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  4096f1:	bb 03 00 00 00       	mov    $0x3,%ebx
  4096f6:	e9 d1 e2 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  4096fb:	bb 04 00 00 00       	mov    $0x4,%ebx
  409700:	e9 c7 e2 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  409705:	bb 03 00 00 00       	mov    $0x3,%ebx
  40970a:	e9 9d e4 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  40970f:	bb 04 00 00 00       	mov    $0x4,%ebx
  409714:	e9 93 e4 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  409719:	bb 01 00 00 00       	mov    $0x1,%ebx
  40971e:	e9 89 e4 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  409723:	bf 89 b0 40 00       	mov    $0x40b089,%edi
  409728:	e8 33 9c ff ff       	callq  403360 <_ZSt20__throw_out_of_rangePKc@plt>
  40972d:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  409732:	e8 b9 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  409737:	bf 92 b0 40 00       	mov    $0x40b092,%edi
  40973c:	e8 1f 9a ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  409741:	4c 89 ff             	mov    %r15,%rdi
  409744:	e9 43 ff ff ff       	jmpq   40968c <_Z6windowid+0x206c>
  409749:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  409750:	00 
  409751:	e9 e4 fe ff ff       	jmpq   40963a <_Z6windowid+0x201a>
  409756:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  40975b:	e8 90 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  409760:	bf 89 b0 40 00       	mov    $0x40b089,%edi
  409765:	e8 36 9a ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40976a:	bf 89 b0 40 00       	mov    $0x40b089,%edi
  40976f:	e8 ec 9b ff ff       	callq  403360 <_ZSt20__throw_out_of_rangePKc@plt>
  409774:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  409779:	e8 72 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40977e:	bf 92 b0 40 00       	mov    $0x40b092,%edi
  409783:	e8 d8 99 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  409788:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  40978d:	e8 5e 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  409792:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  409798:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  40979d:	e8 4e 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4097a2:	bf 92 b0 40 00       	mov    $0x40b092,%edi
  4097a7:	e8 b4 99 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  4097ac:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4097b1:	e8 3a 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4097b6:	bb 01 00 00 00       	mov    $0x1,%ebx
  4097bb:	e9 dc f0 ff ff       	jmpq   40889c <_Z6windowid+0x127c>
  4097c0:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  4097c7:	00 
  4097c8:	e9 f5 f5 ff ff       	jmpq   408dc2 <_Z6windowid+0x17a2>
  4097cd:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  4097d4:	00 
  4097d5:	e9 3a f6 ff ff       	jmpq   408e14 <_Z6windowid+0x17f4>
  4097da:	48 8d bc 24 30 01 00 	lea    0x130(%rsp),%rdi
  4097e1:	00 
  4097e2:	e9 f3 fa ff ff       	jmpq   4092da <_Z6windowid+0x1cba>
  4097e7:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  4097ee:	00 
  4097ef:	e9 43 fc ff ff       	jmpq   409437 <_Z6windowid+0x1e17>
  4097f4:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  4097fb:	00 
  4097fc:	e9 3e fb ff ff       	jmpq   40933f <_Z6windowid+0x1d1f>
  409801:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  409808:	00 
  409809:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40980e:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  409815:	00 
  409816:	e9 b7 fb ff ff       	jmpq   4093d2 <_Z6windowid+0x1db2>
  40981b:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  409822:	00 
  409823:	e9 1a e0 ff ff       	jmpq   407842 <_Z6windowid+0x222>
  409828:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40982f:	00 
  409830:	e9 67 fc ff ff       	jmpq   40949c <_Z6windowid+0x1e7c>
  409835:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40983c:	00 
  40983d:	e9 c2 fc ff ff       	jmpq   409504 <_Z6windowid+0x1ee4>
  409842:	bf 92 b0 40 00       	mov    $0x40b092,%edi
  409847:	e8 14 99 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40984c:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  409851:	e8 9a 99 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  409856:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  40985b:	e8 90 99 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  409860:	bf 89 b0 40 00       	mov    $0x40b089,%edi
  409865:	e8 36 99 ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40986a:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  40986f:	e8 7c 99 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  409874:	48 89 c3             	mov    %rax,%rbx
  409877:	e9 24 9c ff ff       	jmpq   4034a0 <_Z6windowid.cold>
  40987c:	48 89 c3             	mov    %rax,%rbx
  40987f:	c5 f8 77             	vzeroupper 
  409882:	e9 95 9c ff ff       	jmpq   40351c <_Z6windowid.cold+0x7c>
  409887:	48 89 c3             	mov    %rax,%rbx
  40988a:	e9 dc 9c ff ff       	jmpq   40356b <_Z6windowid.cold+0xcb>
  40988f:	48 89 c3             	mov    %rax,%rbx
  409892:	e9 0e 9d ff ff       	jmpq   4035a5 <_Z6windowid.cold+0x105>
  409897:	48 89 c3             	mov    %rax,%rbx
  40989a:	c5 f8 77             	vzeroupper 
  40989d:	e9 20 9d ff ff       	jmpq   4035c2 <_Z6windowid.cold+0x122>
  4098a2:	48 89 c3             	mov    %rax,%rbx
  4098a5:	e9 45 9c ff ff       	jmpq   4034ef <_Z6windowid.cold+0x4f>
  4098aa:	49 89 c4             	mov    %rax,%r12
  4098ad:	e9 54 9d ff ff       	jmpq   403606 <_Z6windowid.cold+0x166>
  4098b2:	48 89 c3             	mov    %rax,%rbx
  4098b5:	c5 f8 77             	vzeroupper 
  4098b8:	e9 a3 9d ff ff       	jmpq   403660 <_Z6windowid.cold+0x1c0>
  4098bd:	48 89 c3             	mov    %rax,%rbx
  4098c0:	e9 8b 9d ff ff       	jmpq   403650 <_Z6windowid.cold+0x1b0>
  4098c5:	48 89 c3             	mov    %rax,%rbx
  4098c8:	e9 58 9e ff ff       	jmpq   403725 <_Z6windowid.cold+0x285>
  4098cd:	49 89 c4             	mov    %rax,%r12
  4098d0:	e9 65 9e ff ff       	jmpq   40373a <_Z6windowid.cold+0x29a>
  4098d5:	48 89 c3             	mov    %rax,%rbx
  4098d8:	c5 f8 77             	vzeroupper 
  4098db:	e9 fa 9b ff ff       	jmpq   4034da <_Z6windowid.cold+0x3a>
  4098e0:	48 89 c3             	mov    %rax,%rbx
  4098e3:	c5 f8 77             	vzeroupper 
  4098e6:	e9 0b 9e ff ff       	jmpq   4036f6 <_Z6windowid.cold+0x256>
  4098eb:	49 89 c4             	mov    %rax,%r12
  4098ee:	c5 f8 77             	vzeroupper 
  4098f1:	e9 61 9e ff ff       	jmpq   403757 <_Z6windowid.cold+0x2b7>
  4098f6:	48 89 c3             	mov    %rax,%rbx
  4098f9:	e9 8c 9e ff ff       	jmpq   40378a <_Z6windowid.cold+0x2ea>
  4098fe:	48 89 c3             	mov    %rax,%rbx
  409901:	c5 f8 77             	vzeroupper 
  409904:	e9 79 9d ff ff       	jmpq   403682 <_Z6windowid.cold+0x1e2>
  409909:	48 89 c3             	mov    %rax,%rbx
  40990c:	c5 f8 77             	vzeroupper 
  40990f:	e9 f7 9e ff ff       	jmpq   40380b <_Z6windowid.cold+0x36b>
  409914:	48 89 c3             	mov    %rax,%rbx
  409917:	e9 a4 9e ff ff       	jmpq   4037c0 <_Z6windowid.cold+0x320>
  40991c:	48 89 c7             	mov    %rax,%rdi
  40991f:	e9 f6 9e ff ff       	jmpq   40381a <_Z6windowid.cold+0x37a>
  409924:	48 89 c3             	mov    %rax,%rbx
  409927:	c5 f8 77             	vzeroupper 
  40992a:	e9 c3 9e ff ff       	jmpq   4037f2 <_Z6windowid.cold+0x352>
  40992f:	48 89 c3             	mov    %rax,%rbx
  409932:	c5 f8 77             	vzeroupper 
  409935:	e9 96 9e ff ff       	jmpq   4037d0 <_Z6windowid.cold+0x330>
  40993a:	48 89 c3             	mov    %rax,%rbx
  40993d:	e9 ea 9e ff ff       	jmpq   40382c <_Z6windowid.cold+0x38c>
  409942:	48 89 c3             	mov    %rax,%rbx
  409945:	e9 f4 9e ff ff       	jmpq   40383e <_Z6windowid.cold+0x39e>
  40994a:	48 89 c3             	mov    %rax,%rbx
  40994d:	e9 fe 9e ff ff       	jmpq   403850 <_Z6windowid.cold+0x3b0>
  409952:	48 89 c3             	mov    %rax,%rbx
  409955:	c5 f8 77             	vzeroupper 
  409958:	e9 e6 9b ff ff       	jmpq   403543 <_Z6windowid.cold+0xa3>
  40995d:	48 89 c3             	mov    %rax,%rbx
  409960:	e9 19 9f ff ff       	jmpq   40387e <_Z6windowid.cold+0x3de>
  409965:	48 89 c3             	mov    %rax,%rbx
  409968:	c5 f8 77             	vzeroupper 
  40996b:	e9 60 9d ff ff       	jmpq   4036d0 <_Z6windowid.cold+0x230>
  409970:	48 89 c3             	mov    %rax,%rbx
  409973:	c5 f8 77             	vzeroupper 
  409976:	e9 20 9f ff ff       	jmpq   40389b <_Z6windowid.cold+0x3fb>
  40997b:	48 89 c3             	mov    %rax,%rbx
  40997e:	e9 54 9f ff ff       	jmpq   4038d7 <_Z6windowid.cold+0x437>
  409983:	48 89 c3             	mov    %rax,%rbx
  409986:	e9 5e 9f ff ff       	jmpq   4038e9 <_Z6windowid.cold+0x449>
  40998b:	48 89 c3             	mov    %rax,%rbx
  40998e:	e9 ae 9f ff ff       	jmpq   403941 <_Z6windowid.cold+0x4a1>
  409993:	48 89 c3             	mov    %rax,%rbx
  409996:	c5 f8 77             	vzeroupper 
  409999:	e9 33 a0 ff ff       	jmpq   4039d1 <_Z6windowid.cold+0x531>
  40999e:	48 89 c3             	mov    %rax,%rbx
  4099a1:	c5 f8 77             	vzeroupper 
  4099a4:	e9 78 a0 ff ff       	jmpq   403a21 <_Z6windowid.cold+0x581>
  4099a9:	48 89 c3             	mov    %rax,%rbx
  4099ac:	e9 4f a0 ff ff       	jmpq   403a00 <_Z6windowid.cold+0x560>
  4099b1:	48 89 c3             	mov    %rax,%rbx
  4099b4:	e9 97 a0 ff ff       	jmpq   403a50 <_Z6windowid.cold+0x5b0>
  4099b9:	e9 e3 a0 ff ff       	jmpq   403aa1 <_Z6windowid.cold+0x601>
  4099be:	48 89 c3             	mov    %rax,%rbx
  4099c1:	c5 f8 77             	vzeroupper 
  4099c4:	e9 97 a0 ff ff       	jmpq   403a60 <_Z6windowid.cold+0x5c0>
  4099c9:	48 89 c3             	mov    %rax,%rbx
  4099cc:	c5 f8 77             	vzeroupper 
  4099cf:	e9 d1 9c ff ff       	jmpq   4036a5 <_Z6windowid.cold+0x205>
  4099d4:	48 89 c3             	mov    %rax,%rbx
  4099d7:	e9 81 a2 ff ff       	jmpq   403c5d <_Z6windowid.cold+0x7bd>
  4099dc:	48 89 c3             	mov    %rax,%rbx
  4099df:	e9 79 a2 ff ff       	jmpq   403c5d <_Z6windowid.cold+0x7bd>
  4099e4:	48 89 c3             	mov    %rax,%rbx
  4099e7:	c5 f8 77             	vzeroupper 
  4099ea:	e9 ba 9f ff ff       	jmpq   4039a9 <_Z6windowid.cold+0x509>
  4099ef:	48 89 c3             	mov    %rax,%rbx
  4099f2:	c5 f8 77             	vzeroupper 
  4099f5:	e9 27 a1 ff ff       	jmpq   403b21 <_Z6windowid.cold+0x681>
  4099fa:	c5 f8 77             	vzeroupper 
  4099fd:	e9 fc a0 ff ff       	jmpq   403afe <_Z6windowid.cold+0x65e>
  409a02:	49 89 c5             	mov    %rax,%r13
  409a05:	e9 e1 a0 ff ff       	jmpq   403aeb <_Z6windowid.cold+0x64b>
  409a0a:	48 89 c3             	mov    %rax,%rbx
  409a0d:	e9 2d a1 ff ff       	jmpq   403b3f <_Z6windowid.cold+0x69f>
  409a12:	48 89 c7             	mov    %rax,%rdi
  409a15:	e9 3a a1 ff ff       	jmpq   403b54 <_Z6windowid.cold+0x6b4>
  409a1a:	48 89 c7             	mov    %rax,%rdi
  409a1d:	e9 44 a1 ff ff       	jmpq   403b66 <_Z6windowid.cold+0x6c6>
  409a22:	48 89 c3             	mov    %rax,%rbx
  409a25:	e9 4e a1 ff ff       	jmpq   403b78 <_Z6windowid.cold+0x6d8>
  409a2a:	48 89 c3             	mov    %rax,%rbx
  409a2d:	c5 f8 77             	vzeroupper 
  409a30:	e9 92 a1 ff ff       	jmpq   403bc7 <_Z6windowid.cold+0x727>
  409a35:	48 89 c3             	mov    %rax,%rbx
  409a38:	e9 f2 a1 ff ff       	jmpq   403c2f <_Z6windowid.cold+0x78f>
  409a3d:	48 89 c3             	mov    %rax,%rbx
  409a40:	e9 37 9f ff ff       	jmpq   40397c <_Z6windowid.cold+0x4dc>
  409a45:	48 89 c3             	mov    %rax,%rbx
  409a48:	e9 59 a1 ff ff       	jmpq   403ba6 <_Z6windowid.cold+0x706>
  409a4d:	48 89 c3             	mov    %rax,%rbx
  409a50:	c5 f8 77             	vzeroupper 
  409a53:	e9 ba 9e ff ff       	jmpq   403912 <_Z6windowid.cold+0x472>
  409a58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  409a5f:	00 

0000000000409a60 <_ZNSt10filesystem7__cxx114pathD1Ev>:
  409a60:	53                   	push   %rbx
  409a61:	48 89 fb             	mov    %rdi,%rbx
  409a64:	48 8b 77 20          	mov    0x20(%rdi),%rsi
  409a68:	48 85 f6             	test   %rsi,%rsi
  409a6b:	74 09                	je     409a76 <_ZNSt10filesystem7__cxx114pathD1Ev+0x16>
  409a6d:	48 8d 7f 20          	lea    0x20(%rdi),%rdi
  409a71:	e8 2a 96 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  409a76:	48 8b 3b             	mov    (%rbx),%rdi
  409a79:	48 8d 43 10          	lea    0x10(%rbx),%rax
  409a7d:	48 39 c7             	cmp    %rax,%rdi
  409a80:	74 0e                	je     409a90 <_ZNSt10filesystem7__cxx114pathD1Ev+0x30>
  409a82:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  409a86:	5b                   	pop    %rbx
  409a87:	48 ff c6             	inc    %rsi
  409a8a:	e9 21 98 ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  409a8f:	90                   	nop
  409a90:	5b                   	pop    %rbx
  409a91:	c3                   	retq   
  409a92:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409a99:	00 00 00 
  409a9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000409aa0 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>:
  409aa0:	41 57                	push   %r15
  409aa2:	49 89 ff             	mov    %rdi,%r15
  409aa5:	41 56                	push   %r14
  409aa7:	41 55                	push   %r13
  409aa9:	49 89 f5             	mov    %rsi,%r13
  409aac:	41 54                	push   %r12
  409aae:	49 89 cc             	mov    %rcx,%r12
  409ab1:	55                   	push   %rbp
  409ab2:	48 89 d5             	mov    %rdx,%rbp
  409ab5:	53                   	push   %rbx
  409ab6:	48 83 ec 28          	sub    $0x28,%rsp
  409aba:	44 89 44 24 0c       	mov    %r8d,0xc(%rsp)
  409abf:	e8 7c 95 ff ff       	callq  403040 <__errno_location@plt>
  409ac4:	44 8b 30             	mov    (%rax),%r14d
  409ac7:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  409acd:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  409ad1:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  409ad6:	48 89 ef             	mov    %rbp,%rdi
  409ad9:	48 89 c3             	mov    %rax,%rbx
  409adc:	41 ff d7             	callq  *%r15
  409adf:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  409ae4:	48 39 e9             	cmp    %rbp,%rcx
  409ae7:	74 3f                	je     409b28 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x88>
  409ae9:	8b 33                	mov    (%rbx),%esi
  409aeb:	83 fe 22             	cmp    $0x22,%esi
  409aee:	74 30                	je     409b20 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  409af0:	ba 00 00 00 80       	mov    $0x80000000,%edx
  409af5:	48 01 c2             	add    %rax,%rdx
  409af8:	48 c1 ea 20          	shr    $0x20,%rdx
  409afc:	75 22                	jne    409b20 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  409afe:	4d 85 e4             	test   %r12,%r12
  409b01:	74 07                	je     409b0a <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x6a>
  409b03:	48 29 e9             	sub    %rbp,%rcx
  409b06:	49 89 0c 24          	mov    %rcx,(%r12)
  409b0a:	85 f6                	test   %esi,%esi
  409b0c:	75 03                	jne    409b11 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x71>
  409b0e:	44 89 33             	mov    %r14d,(%rbx)
  409b11:	48 83 c4 28          	add    $0x28,%rsp
  409b15:	5b                   	pop    %rbx
  409b16:	5d                   	pop    %rbp
  409b17:	41 5c                	pop    %r12
  409b19:	41 5d                	pop    %r13
  409b1b:	41 5e                	pop    %r14
  409b1d:	41 5f                	pop    %r15
  409b1f:	c3                   	retq   
  409b20:	4c 89 ef             	mov    %r13,%rdi
  409b23:	e8 38 98 ff ff       	callq  403360 <_ZSt20__throw_out_of_rangePKc@plt>
  409b28:	4c 89 ef             	mov    %r13,%rdi
  409b2b:	e8 70 96 ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  409b30:	48 89 c7             	mov    %rax,%rdi
  409b33:	83 3b 00             	cmpl   $0x0,(%rbx)
  409b36:	75 03                	jne    409b3b <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x9b>
  409b38:	44 89 33             	mov    %r14d,(%rbx)
  409b3b:	c5 f8 77             	vzeroupper 
  409b3e:	e8 ed 98 ff ff       	callq  403430 <_Unwind_Resume@plt>
  409b43:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409b4a:	00 00 00 
  409b4d:	0f 1f 00             	nopl   (%rax)

0000000000409b50 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>:
  409b50:	c4 e2 7d 59 1d 27 19 	vpbroadcastq 0x1927(%rip),%ymm3        # 40b480 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  409b57:	00 00 
  409b59:	c4 e2 7d 59 25 26 19 	vpbroadcastq 0x1926(%rip),%ymm4        # 40b488 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  409b60:	00 00 
  409b62:	c4 e2 7d 59 2d 25 19 	vpbroadcastq 0x1925(%rip),%ymm5        # 40b490 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  409b69:	00 00 
  409b6b:	c4 e2 7d 59 35 24 19 	vpbroadcastq 0x1924(%rip),%ymm6        # 40b498 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  409b72:	00 00 
  409b74:	48 89 f8             	mov    %rdi,%rax
  409b77:	48 8d 8f e0 04 00 00 	lea    0x4e0(%rdi),%rcx
  409b7e:	48 89 fa             	mov    %rdi,%rdx
  409b81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  409b88:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  409b8d:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  409b91:	48 83 c2 20          	add    $0x20,%rdx
  409b95:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  409b99:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  409b9e:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  409ba2:	c5 f5 ef 8a c0 04 00 	vpxor  0x4c0(%rdx),%ymm1,%ymm1
  409ba9:	00 
  409baa:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  409bb0:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  409bb4:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  409bba:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  409bbf:	48 39 ca             	cmp    %rcx,%rdx
  409bc2:	75 c4                	jne    409b88 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x38>
  409bc4:	48 8d 88 a0 09 00 00 	lea    0x9a0(%rax),%rcx
  409bcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  409bd0:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  409bd5:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  409bd9:	48 83 c2 20          	add    $0x20,%rdx
  409bdd:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  409be1:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  409be6:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  409bea:	c5 f5 ef 8a 00 fb ff 	vpxor  -0x500(%rdx),%ymm1,%ymm1
  409bf1:	ff 
  409bf2:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  409bf8:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  409bfc:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  409c02:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  409c07:	48 39 d1             	cmp    %rdx,%rcx
  409c0a:	75 c4                	jne    409bd0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x80>
  409c0c:	c4 e2 79 59 05 6b 18 	vpbroadcastq 0x186b(%rip),%xmm0        # 40b480 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  409c13:	00 00 
  409c15:	c4 e2 79 59 0d 6a 18 	vpbroadcastq 0x186a(%rip),%xmm1        # 40b488 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  409c1c:	00 00 
  409c1e:	c5 f9 db 80 a0 09 00 	vpand  0x9a0(%rax),%xmm0,%xmm0
  409c25:	00 
  409c26:	c5 f1 db 88 a8 09 00 	vpand  0x9a8(%rax),%xmm1,%xmm1
  409c2d:	00 
  409c2e:	48 8b b0 b8 09 00 00 	mov    0x9b8(%rax),%rsi
  409c35:	48 8b 90 b0 09 00 00 	mov    0x9b0(%rax),%rdx
  409c3c:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  409c40:	48 89 f1             	mov    %rsi,%rcx
  409c43:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
  409c49:	c5 f1 73 d0 01       	vpsrlq $0x1,%xmm0,%xmm1
  409c4e:	48 81 e2 00 00 00 80 	and    $0xffffffff80000000,%rdx
  409c55:	62 f1 fd 18 db 05 31 	vpandq 0x1831(%rip){1to2},%xmm0,%xmm0        # 40b490 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  409c5c:	18 00 00 
  409c5f:	c5 f1 ef 88 c0 04 00 	vpxor  0x4c0(%rax),%xmm1,%xmm1
  409c66:	00 
  409c67:	48 09 ca             	or     %rcx,%rdx
  409c6a:	62 f2 fe 08 27 c8    	vptestnmq %xmm0,%xmm0,%k1
  409c70:	48 89 d1             	mov    %rdx,%rcx
  409c73:	48 d1 e9             	shr    %rcx
  409c76:	62 f1 f5 18 ef 15 18 	vpxorq 0x1818(%rip){1to2},%xmm1,%xmm2        # 40b498 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  409c7d:	18 00 00 
  409c80:	62 f2 ed 09 64 c1    	vpblendmq %xmm1,%xmm2,%xmm0{%k1}
  409c86:	48 33 88 d0 04 00 00 	xor    0x4d0(%rax),%rcx
  409c8d:	83 e2 01             	and    $0x1,%edx
  409c90:	c5 fa 7f 80 a0 09 00 	vmovdqu %xmm0,0x9a0(%rax)
  409c97:	00 
  409c98:	74 0d                	je     409ca7 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x157>
  409c9a:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  409ca1:	6f 02 b5 
  409ca4:	48 31 d1             	xor    %rdx,%rcx
  409ca7:	48 8b 10             	mov    (%rax),%rdx
  409caa:	48 81 e6 00 00 00 80 	and    $0xffffffff80000000,%rsi
  409cb1:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
  409cb7:	48 09 f2             	or     %rsi,%rdx
  409cba:	48 89 88 b0 09 00 00 	mov    %rcx,0x9b0(%rax)
  409cc1:	48 89 d1             	mov    %rdx,%rcx
  409cc4:	48 d1 e9             	shr    %rcx
  409cc7:	48 33 88 d8 04 00 00 	xor    0x4d8(%rax),%rcx
  409cce:	83 e2 01             	and    $0x1,%edx
  409cd1:	74 0d                	je     409ce0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x190>
  409cd3:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  409cda:	6f 02 b5 
  409cdd:	48 31 d1             	xor    %rdx,%rcx
  409ce0:	48 89 88 b8 09 00 00 	mov    %rcx,0x9b8(%rax)
  409ce7:	48 c7 80 c0 09 00 00 	movq   $0x0,0x9c0(%rax)
  409cee:	00 00 00 00 
  409cf2:	c5 f8 77             	vzeroupper 
  409cf5:	c3                   	retq   
  409cf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409cfd:	00 00 00 

0000000000409d00 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>:
  409d00:	41 57                	push   %r15
  409d02:	41 56                	push   %r14
  409d04:	41 55                	push   %r13
  409d06:	41 54                	push   %r12
  409d08:	55                   	push   %rbp
  409d09:	53                   	push   %rbx
  409d0a:	48 83 ec 28          	sub    $0x28,%rsp
  409d0e:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  409d13:	48 39 fe             	cmp    %rdi,%rsi
  409d16:	0f 84 99 01 00 00    	je     409eb5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  409d1c:	48 89 f1             	mov    %rsi,%rcx
  409d1f:	48 29 f9             	sub    %rdi,%rcx
  409d22:	48 c1 f9 03          	sar    $0x3,%rcx
  409d26:	48 89 c8             	mov    %rcx,%rax
  409d29:	48 89 d3             	mov    %rdx,%rbx
  409d2c:	48 f7 e1             	mul    %rcx
  409d2f:	48 89 fd             	mov    %rdi,%rbp
  409d32:	4c 8d 6f 08          	lea    0x8(%rdi),%r13
  409d36:	0f 90 c0             	seto   %al
  409d39:	0f b6 c0             	movzbl %al,%eax
  409d3c:	48 85 c0             	test   %rax,%rax
  409d3f:	0f 84 1b 02 00 00    	je     409f60 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x260>
  409d45:	4c 3b 6c 24 08       	cmp    0x8(%rsp),%r13
  409d4a:	0f 84 65 01 00 00    	je     409eb5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  409d50:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  409d57:	55 55 55 
  409d5a:	49 bc 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r12
  409d61:	7f d6 71 
  409d64:	49 bf 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r15
  409d6b:	ee f7 ff 
  409d6e:	66 90                	xchg   %ax,%ax
  409d70:	4c 89 e8             	mov    %r13,%rax
  409d73:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  409d7a:	48 29 e8             	sub    %rbp,%rax
  409d7d:	48 c1 f8 03          	sar    $0x3,%rax
  409d81:	48 89 d1             	mov    %rdx,%rcx
  409d84:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  409d88:	0f 84 3a 01 00 00    	je     409ec8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1c8>
  409d8e:	4c 8d 70 01          	lea    0x1(%rax),%r14
  409d92:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  409d99:	0f 87 79 01 00 00    	ja     409f18 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x218>
  409d9f:	48 8b 34 d3          	mov    (%rbx,%rdx,8),%rsi
  409da3:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
  409da7:	48 89 f2             	mov    %rsi,%rdx
  409daa:	48 c1 ea 1d          	shr    $0x1d,%rdx
  409dae:	4c 21 ca             	and    %r9,%rdx
  409db1:	48 31 d6             	xor    %rdx,%rsi
  409db4:	48 89 f2             	mov    %rsi,%rdx
  409db7:	48 c1 e2 11          	shl    $0x11,%rdx
  409dbb:	4c 21 e2             	and    %r12,%rdx
  409dbe:	48 31 d6             	xor    %rdx,%rsi
  409dc1:	48 89 f2             	mov    %rsi,%rdx
  409dc4:	48 c1 e2 25          	shl    $0x25,%rdx
  409dc8:	4c 21 fa             	and    %r15,%rdx
  409dcb:	48 31 d6             	xor    %rdx,%rsi
  409dce:	48 89 f2             	mov    %rsi,%rdx
  409dd1:	48 c1 ea 2b          	shr    $0x2b,%rdx
  409dd5:	48 31 d6             	xor    %rdx,%rsi
  409dd8:	48 89 f2             	mov    %rsi,%rdx
  409ddb:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  409de0:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  409de7:	49 39 f6             	cmp    %rsi,%r14
  409dea:	0f 86 a0 00 00 00    	jbe    409e90 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  409df0:	48 f7 d0             	not    %rax
  409df3:	31 d2                	xor    %edx,%edx
  409df5:	49 f7 f6             	div    %r14
  409df8:	49 89 d0             	mov    %rdx,%r8
  409dfb:	48 39 d6             	cmp    %rdx,%rsi
  409dfe:	72 55                	jb     409e55 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x155>
  409e00:	e9 8b 00 00 00       	jmpq   409e90 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  409e05:	0f 1f 00             	nopl   (%rax)
  409e08:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  409e0c:	48 8d 48 01          	lea    0x1(%rax),%rcx
  409e10:	48 89 f0             	mov    %rsi,%rax
  409e13:	48 c1 e8 1d          	shr    $0x1d,%rax
  409e17:	4c 21 c8             	and    %r9,%rax
  409e1a:	48 31 c6             	xor    %rax,%rsi
  409e1d:	48 89 f0             	mov    %rsi,%rax
  409e20:	48 c1 e0 11          	shl    $0x11,%rax
  409e24:	4c 21 e0             	and    %r12,%rax
  409e27:	48 31 c6             	xor    %rax,%rsi
  409e2a:	48 89 f0             	mov    %rsi,%rax
  409e2d:	48 c1 e0 25          	shl    $0x25,%rax
  409e31:	4c 21 f8             	and    %r15,%rax
  409e34:	48 31 c6             	xor    %rax,%rsi
  409e37:	48 89 f0             	mov    %rsi,%rax
  409e3a:	48 c1 e8 2b          	shr    $0x2b,%rax
  409e3e:	48 31 c6             	xor    %rax,%rsi
  409e41:	48 89 f2             	mov    %rsi,%rdx
  409e44:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  409e49:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  409e50:	49 39 f0             	cmp    %rsi,%r8
  409e53:	76 3b                	jbe    409e90 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  409e55:	48 89 c8             	mov    %rcx,%rax
  409e58:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  409e5f:	76 a7                	jbe    409e08 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  409e61:	48 89 df             	mov    %rbx,%rdi
  409e64:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  409e69:	e8 e2 fc ff ff       	callq  409b50 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  409e6e:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  409e75:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  409e7a:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  409e81:	55 55 55 
  409e84:	eb 82                	jmp    409e08 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  409e86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409e8d:	00 00 00 
  409e90:	48 89 f8             	mov    %rdi,%rax
  409e93:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  409e98:	48 8b 08             	mov    (%rax),%rcx
  409e9b:	49 8b 55 00          	mov    0x0(%r13),%rdx
  409e9f:	49 89 4d 00          	mov    %rcx,0x0(%r13)
  409ea3:	49 83 c5 08          	add    $0x8,%r13
  409ea7:	48 89 10             	mov    %rdx,(%rax)
  409eaa:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  409eaf:	0f 85 bb fe ff ff    	jne    409d70 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x70>
  409eb5:	48 83 c4 28          	add    $0x28,%rsp
  409eb9:	5b                   	pop    %rbx
  409eba:	5d                   	pop    %rbp
  409ebb:	41 5c                	pop    %r12
  409ebd:	41 5d                	pop    %r13
  409ebf:	41 5e                	pop    %r14
  409ec1:	41 5f                	pop    %r15
  409ec3:	c3                   	retq   
  409ec4:	0f 1f 40 00          	nopl   0x0(%rax)
  409ec8:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  409ecf:	77 6f                	ja     409f40 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x240>
  409ed1:	48 8d 41 01          	lea    0x1(%rcx),%rax
  409ed5:	48 89 83 c0 09 00 00 	mov    %rax,0x9c0(%rbx)
  409edc:	48 8b 04 cb          	mov    (%rbx,%rcx,8),%rax
  409ee0:	48 89 c2             	mov    %rax,%rdx
  409ee3:	48 c1 ea 1d          	shr    $0x1d,%rdx
  409ee7:	4c 21 ca             	and    %r9,%rdx
  409eea:	48 31 d0             	xor    %rdx,%rax
  409eed:	48 89 c2             	mov    %rax,%rdx
  409ef0:	48 c1 e2 11          	shl    $0x11,%rdx
  409ef4:	4c 21 e2             	and    %r12,%rdx
  409ef7:	48 31 d0             	xor    %rdx,%rax
  409efa:	48 89 c2             	mov    %rax,%rdx
  409efd:	48 c1 e2 25          	shl    $0x25,%rdx
  409f01:	4c 21 fa             	and    %r15,%rdx
  409f04:	48 31 d0             	xor    %rdx,%rax
  409f07:	48 89 c2             	mov    %rax,%rdx
  409f0a:	48 c1 ea 2b          	shr    $0x2b,%rdx
  409f0e:	48 31 d0             	xor    %rdx,%rax
  409f11:	eb 80                	jmp    409e93 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x193>
  409f13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  409f18:	48 89 df             	mov    %rbx,%rdi
  409f1b:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  409f20:	e8 2b fc ff ff       	callq  409b50 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  409f25:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  409f2c:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  409f31:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  409f38:	55 55 55 
  409f3b:	e9 5f fe ff ff       	jmpq   409d9f <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x9f>
  409f40:	48 89 df             	mov    %rbx,%rdi
  409f43:	e8 08 fc ff ff       	callq  409b50 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  409f48:	48 8b 8b c0 09 00 00 	mov    0x9c0(%rbx),%rcx
  409f4f:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  409f56:	55 55 55 
  409f59:	e9 73 ff ff ff       	jmpq   409ed1 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1d1>
  409f5e:	66 90                	xchg   %ax,%ax
  409f60:	83 e1 01             	and    $0x1,%ecx
  409f63:	0f 84 35 02 00 00    	je     40a19e <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x49e>
  409f69:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  409f6e:	0f 84 41 ff ff ff    	je     409eb5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  409f74:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  409f7b:	55 55 55 
  409f7e:	49 be 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r14
  409f85:	7f d6 71 
  409f88:	49 bc 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r12
  409f8f:	ee f7 ff 
  409f92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  409f98:	4d 89 ef             	mov    %r13,%r15
  409f9b:	49 29 ef             	sub    %rbp,%r15
  409f9e:	49 c1 ff 03          	sar    $0x3,%r15
  409fa2:	49 8d 47 02          	lea    0x2(%r15),%rax
  409fa6:	49 ff c7             	inc    %r15
  409fa9:	4c 0f af f8          	imul   %rax,%r15
  409fad:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  409fb2:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  409fb9:	4d 85 ff             	test   %r15,%r15
  409fbc:	0f 84 46 01 00 00    	je     40a108 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x408>
  409fc2:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  409fc8:	0f 87 8a 01 00 00    	ja     40a158 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x458>
  409fce:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  409fd2:	48 8d 48 01          	lea    0x1(%rax),%rcx
  409fd6:	48 89 f0             	mov    %rsi,%rax
  409fd9:	48 c1 e8 1d          	shr    $0x1d,%rax
  409fdd:	4c 21 d0             	and    %r10,%rax
  409fe0:	48 31 c6             	xor    %rax,%rsi
  409fe3:	48 89 f0             	mov    %rsi,%rax
  409fe6:	48 c1 e0 11          	shl    $0x11,%rax
  409fea:	4c 21 f0             	and    %r14,%rax
  409fed:	48 31 c6             	xor    %rax,%rsi
  409ff0:	48 89 f0             	mov    %rsi,%rax
  409ff3:	48 c1 e0 25          	shl    $0x25,%rax
  409ff7:	4c 21 e0             	and    %r12,%rax
  409ffa:	48 31 c6             	xor    %rax,%rsi
  409ffd:	48 89 f0             	mov    %rsi,%rax
  40a000:	48 c1 e8 2b          	shr    $0x2b,%rax
  40a004:	48 31 c6             	xor    %rax,%rsi
  40a007:	48 89 f2             	mov    %rsi,%rdx
  40a00a:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40a00f:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40a016:	49 39 f7             	cmp    %rsi,%r15
  40a019:	0f 86 a1 00 00 00    	jbe    40a0c0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40a01f:	4c 89 f8             	mov    %r15,%rax
  40a022:	48 f7 d8             	neg    %rax
  40a025:	31 d2                	xor    %edx,%edx
  40a027:	49 f7 f7             	div    %r15
  40a02a:	49 89 d0             	mov    %rdx,%r8
  40a02d:	48 39 d6             	cmp    %rdx,%rsi
  40a030:	72 5b                	jb     40a08d <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x38d>
  40a032:	e9 89 00 00 00       	jmpq   40a0c0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40a037:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40a03e:	00 00 
  40a040:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40a044:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40a048:	48 89 f0             	mov    %rsi,%rax
  40a04b:	48 c1 e8 1d          	shr    $0x1d,%rax
  40a04f:	4c 21 d0             	and    %r10,%rax
  40a052:	48 31 c6             	xor    %rax,%rsi
  40a055:	48 89 f0             	mov    %rsi,%rax
  40a058:	48 c1 e0 11          	shl    $0x11,%rax
  40a05c:	4c 21 f0             	and    %r14,%rax
  40a05f:	48 31 c6             	xor    %rax,%rsi
  40a062:	48 89 f0             	mov    %rsi,%rax
  40a065:	48 c1 e0 25          	shl    $0x25,%rax
  40a069:	4c 21 e0             	and    %r12,%rax
  40a06c:	48 31 c6             	xor    %rax,%rsi
  40a06f:	48 89 f0             	mov    %rsi,%rax
  40a072:	48 c1 e8 2b          	shr    $0x2b,%rax
  40a076:	48 31 c6             	xor    %rax,%rsi
  40a079:	48 89 f2             	mov    %rsi,%rdx
  40a07c:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40a081:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40a088:	49 39 f0             	cmp    %rsi,%r8
  40a08b:	76 33                	jbe    40a0c0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40a08d:	48 89 c8             	mov    %rcx,%rax
  40a090:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  40a097:	76 a7                	jbe    40a040 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40a099:	48 89 df             	mov    %rbx,%rdi
  40a09c:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  40a0a1:	e8 aa fa ff ff       	callq  409b50 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40a0a6:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40a0ad:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  40a0b2:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40a0b9:	55 55 55 
  40a0bc:	eb 82                	jmp    40a040 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40a0be:	66 90                	xchg   %ax,%ax
  40a0c0:	48 89 f8             	mov    %rdi,%rax
  40a0c3:	31 d2                	xor    %edx,%edx
  40a0c5:	48 f7 74 24 10       	divq   0x10(%rsp)
  40a0ca:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40a0ce:	49 83 c5 10          	add    $0x10,%r13
  40a0d2:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  40a0d7:	48 8b 30             	mov    (%rax),%rsi
  40a0da:	49 89 75 f0          	mov    %rsi,-0x10(%r13)
  40a0de:	48 89 08             	mov    %rcx,(%rax)
  40a0e1:	48 8d 44 d5 00       	lea    0x0(%rbp,%rdx,8),%rax
  40a0e6:	48 8b 08             	mov    (%rax),%rcx
  40a0e9:	49 8b 55 f8          	mov    -0x8(%r13),%rdx
  40a0ed:	49 89 4d f8          	mov    %rcx,-0x8(%r13)
  40a0f1:	48 89 10             	mov    %rdx,(%rax)
  40a0f4:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40a0f9:	0f 85 99 fe ff ff    	jne    409f98 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x298>
  40a0ff:	e9 b1 fd ff ff       	jmpq   409eb5 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40a104:	0f 1f 40 00          	nopl   0x0(%rax)
  40a108:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40a10e:	77 70                	ja     40a180 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x480>
  40a110:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40a114:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40a118:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40a11f:	48 89 c2             	mov    %rax,%rdx
  40a122:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40a126:	4c 21 d2             	and    %r10,%rdx
  40a129:	48 31 d0             	xor    %rdx,%rax
  40a12c:	48 89 c2             	mov    %rax,%rdx
  40a12f:	48 c1 e2 11          	shl    $0x11,%rdx
  40a133:	4c 21 f2             	and    %r14,%rdx
  40a136:	48 31 d0             	xor    %rdx,%rax
  40a139:	48 89 c2             	mov    %rax,%rdx
  40a13c:	48 c1 e2 25          	shl    $0x25,%rdx
  40a140:	4c 21 e2             	and    %r12,%rdx
  40a143:	48 31 d0             	xor    %rdx,%rax
  40a146:	48 89 c2             	mov    %rax,%rdx
  40a149:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40a14d:	48 31 d0             	xor    %rdx,%rax
  40a150:	e9 6e ff ff ff       	jmpq   40a0c3 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c3>
  40a155:	0f 1f 00             	nopl   (%rax)
  40a158:	48 89 df             	mov    %rbx,%rdi
  40a15b:	e8 f0 f9 ff ff       	callq  409b50 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40a160:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40a167:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40a16e:	55 55 55 
  40a171:	e9 58 fe ff ff       	jmpq   409fce <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x2ce>
  40a176:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a17d:	00 00 00 
  40a180:	48 89 df             	mov    %rbx,%rdi
  40a183:	e8 c8 f9 ff ff       	callq  409b50 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40a188:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40a18f:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40a196:	55 55 55 
  40a199:	e9 72 ff ff ff       	jmpq   40a110 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x410>
  40a19e:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40a1a5:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40a1ab:	0f 87 81 00 00 00    	ja     40a232 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x532>
  40a1b1:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40a1b5:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40a1b9:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40a1c0:	48 89 c2             	mov    %rax,%rdx
  40a1c3:	48 b9 55 55 55 55 55 	movabs $0x5555555555555555,%rcx
  40a1ca:	55 55 55 
  40a1cd:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40a1d1:	48 21 ca             	and    %rcx,%rdx
  40a1d4:	48 31 d0             	xor    %rdx,%rax
  40a1d7:	48 89 c2             	mov    %rax,%rdx
  40a1da:	48 b9 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%rcx
  40a1e1:	7f d6 71 
  40a1e4:	48 c1 e2 11          	shl    $0x11,%rdx
  40a1e8:	48 21 ca             	and    %rcx,%rdx
  40a1eb:	48 31 d0             	xor    %rdx,%rax
  40a1ee:	48 89 c2             	mov    %rax,%rdx
  40a1f1:	48 b9 00 00 00 00 e0 	movabs $0xfff7eee000000000,%rcx
  40a1f8:	ee f7 ff 
  40a1fb:	48 c1 e2 25          	shl    $0x25,%rdx
  40a1ff:	48 21 ca             	and    %rcx,%rdx
  40a202:	48 31 d0             	xor    %rdx,%rax
  40a205:	48 89 c2             	mov    %rax,%rdx
  40a208:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40a20c:	48 31 d0             	xor    %rdx,%rax
  40a20f:	31 ff                	xor    %edi,%edi
  40a211:	48 0f a4 c7 01       	shld   $0x1,%rax,%rdi
  40a216:	48 8d 44 fd 00       	lea    0x0(%rbp,%rdi,8),%rax
  40a21b:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  40a21f:	48 8b 08             	mov    (%rax),%rcx
  40a222:	4c 8d 6d 10          	lea    0x10(%rbp),%r13
  40a226:	48 89 4d 08          	mov    %rcx,0x8(%rbp)
  40a22a:	48 89 10             	mov    %rdx,(%rax)
  40a22d:	e9 37 fd ff ff       	jmpq   409f69 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x269>
  40a232:	48 89 df             	mov    %rbx,%rdi
  40a235:	e8 16 f9 ff ff       	callq  409b50 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40a23a:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40a241:	e9 6b ff ff ff       	jmpq   40a1b1 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x4b1>

Disassembly of section .fini:

000000000040a248 <_fini>:
  40a248:	f3 0f 1e fa          	endbr64 
  40a24c:	48 83 ec 08          	sub    $0x8,%rsp
  40a250:	48 83 c4 08          	add    $0x8,%rsp
  40a254:	c3                   	retq   
