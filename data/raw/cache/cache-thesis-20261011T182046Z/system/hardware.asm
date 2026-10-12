
/lpor1/store_0/usr/user/hw-bench-thesis-results/cache-thesis-20261011T182046Z/build/hardware:     file format elf64-x86-64


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
  403827:	e9 04 56 00 00       	jmpq   408e30 <_Z6windowid+0x1810>
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
  40398f:	0f 84 e2 02 00 00    	je     403c77 <_Z6windowid.cold+0x7d7>
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
  403ad8:	bf 10 00 00 00       	mov    $0x10,%edi
  403add:	e8 6e f6 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403ae2:	48 89 c7             	mov    %rax,%rdi
  403ae5:	be d8 b0 40 00       	mov    $0x40b0d8,%esi
  403aea:	49 89 c4             	mov    %rax,%r12
  403aed:	e8 2e f6 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403af2:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403af7:	be a0 dd 40 00       	mov    $0x40dda0,%esi
  403afc:	4c 89 e7             	mov    %r12,%rdi
  403aff:	e8 0c f9 ff ff       	callq  403410 <__cxa_throw@plt>
  403b04:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  403b0b:	00 
  403b0c:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  403b13:	00 
  403b14:	48 39 c7             	cmp    %rax,%rdi
  403b17:	74 69                	je     403b82 <_Z6windowid.cold+0x6e2>
  403b19:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  403b20:	00 
  403b21:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403b25:	c5 f8 77             	vzeroupper 
  403b28:	e8 83 f7 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403b2d:	e9 2e ff ff ff       	jmpq   403a60 <_Z6windowid.cold+0x5c0>
  403b32:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  403b39:	00 
  403b3a:	48 85 f6             	test   %rsi,%rsi
  403b3d:	0f 84 3c 01 00 00    	je     403c7f <_Z6windowid.cold+0x7df>
  403b43:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  403b4a:	00 
  403b4b:	c5 f8 77             	vzeroupper 
  403b4e:	e8 4d f5 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  403b53:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  403b5a:	00 
  403b5b:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  403b62:	00 
  403b63:	48 39 c7             	cmp    %rax,%rdi
  403b66:	0f 84 01 ff ff ff    	je     403a6d <_Z6windowid.cold+0x5cd>
  403b6c:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  403b73:	00 
  403b74:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403b78:	e8 33 f7 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403b7d:	e9 eb fe ff ff       	jmpq   403a6d <_Z6windowid.cold+0x5cd>
  403b82:	c5 f8 77             	vzeroupper 
  403b85:	e9 d6 fe ff ff       	jmpq   403a60 <_Z6windowid.cold+0x5c0>
  403b8a:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  403b91:	00 
  403b92:	c5 f8 77             	vzeroupper 
  403b95:	e8 16 f8 ff ff       	callq  4033b0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>
  403b9a:	4c 89 e8             	mov    %r13,%rax
  403b9d:	48 8b 53 e8          	mov    -0x18(%rbx),%rdx
  403ba1:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  403ba8:	00 
  403ba9:	4c 89 a4 14 80 01 00 	mov    %r12,0x180(%rsp,%rdx,1)
  403bb0:	00 
  403bb1:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  403bb8:	00 00 00 00 00 
  403bbd:	48 89 c3             	mov    %rax,%rbx
  403bc0:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  403bc7:	00 
  403bc8:	48 c7 84 24 80 02 00 	movq   $0x40db90,0x280(%rsp)
  403bcf:	00 90 db 40 00 
  403bd4:	e8 27 f5 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  403bd9:	e9 58 f9 ff ff       	jmpq   403536 <_Z6windowid.cold+0x96>
  403bde:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403be5:	00 
  403be6:	c5 f8 77             	vzeroupper 
  403be9:	e8 a2 f4 ff ff       	callq  403090 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>
  403bee:	e9 43 f9 ff ff       	jmpq   403536 <_Z6windowid.cold+0x96>
  403bf3:	c5 f8 77             	vzeroupper 
  403bf6:	e8 35 f5 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403bfb:	e8 e0 f7 ff ff       	callq  4033e0 <__cxa_end_catch@plt>
  403c00:	e9 c1 54 00 00       	jmpq   4090c6 <_Z6windowid+0x1aa6>
  403c05:	c5 f8 77             	vzeroupper 
  403c08:	e8 23 f5 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403c0d:	e8 ce f7 ff ff       	callq  4033e0 <__cxa_end_catch@plt>
  403c12:	e9 f5 43 00 00       	jmpq   40800c <_Z6windowid+0x9ec>
  403c17:	48 89 c3             	mov    %rax,%rbx
  403c1a:	4c 89 e7             	mov    %r12,%rdi
  403c1d:	c5 f8 77             	vzeroupper 
  403c20:	e8 db f5 ff ff       	callq  403200 <__cxa_free_exception@plt>
  403c25:	e9 0c f9 ff ff       	jmpq   403536 <_Z6windowid.cold+0x96>
  403c2a:	eb eb                	jmp    403c17 <_Z6windowid.cold+0x777>
  403c2c:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403c33:	00 
  403c34:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403c3b:	00 
  403c3c:	48 39 c7             	cmp    %rax,%rdi
  403c3f:	74 2e                	je     403c6f <_Z6windowid.cold+0x7cf>
  403c41:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403c48:	00 
  403c49:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403c4d:	c5 f8 77             	vzeroupper 
  403c50:	e8 5b f6 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403c55:	e9 e9 f8 ff ff       	jmpq   403543 <_Z6windowid.cold+0xa3>
  403c5a:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403c61:	00 
  403c62:	c5 f8 77             	vzeroupper 
  403c65:	e8 16 5e 00 00       	callq  409a80 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403c6a:	e9 3a fd ff ff       	jmpq   4039a9 <_Z6windowid.cold+0x509>
  403c6f:	c5 f8 77             	vzeroupper 
  403c72:	e9 cc f8 ff ff       	jmpq   403543 <_Z6windowid.cold+0xa3>
  403c77:	c5 f8 77             	vzeroupper 
  403c7a:	e9 2a fd ff ff       	jmpq   4039a9 <_Z6windowid.cold+0x509>
  403c7f:	c5 f8 77             	vzeroupper 
  403c82:	e9 cc fe ff ff       	jmpq   403b53 <_Z6windowid.cold+0x6b3>

0000000000403c87 <main.cold>:
  403c87:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  403c8c:	75 08                	jne    403c96 <main.cold+0xf>
  403c8e:	8b 44 24 38          	mov    0x38(%rsp),%eax
  403c92:	41 89 04 24          	mov    %eax,(%r12)
  403c96:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403c9d:	00 
  403c9e:	4c 39 ef             	cmp    %r13,%rdi
  403ca1:	0f 84 b9 00 00 00    	je     403d60 <main.cold+0xd9>
  403ca7:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403cae:	00 
  403caf:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403cb3:	c5 f8 77             	vzeroupper 
  403cb6:	e8 f5 f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403cbb:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  403cc2:	00 
  403cc3:	48 39 ef             	cmp    %rbp,%rdi
  403cc6:	74 11                	je     403cd9 <main.cold+0x52>
  403cc8:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  403ccf:	00 
  403cd0:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403cd4:	e8 d7 f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403cd9:	4c 89 f5             	mov    %r14,%rbp
  403cdc:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
  403ce3:	00 
  403ce4:	48 8d 84 24 b0 00 00 	lea    0xb0(%rsp),%rax
  403ceb:	00 
  403cec:	48 39 c7             	cmp    %rax,%rdi
  403cef:	74 11                	je     403d02 <main.cold+0x7b>
  403cf1:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
  403cf8:	00 
  403cf9:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403cfd:	e8 ae f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403d02:	48 89 df             	mov    %rbx,%rdi
  403d05:	48 ff cd             	dec    %rbp
  403d08:	75 5e                	jne    403d68 <main.cold+0xe1>
  403d0a:	e8 21 f4 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403d0f:	48 89 c7             	mov    %rax,%rdi
  403d12:	48 8b 00             	mov    (%rax),%rax
  403d15:	ff 50 10             	callq  *0x10(%rax)
  403d18:	48 89 c6             	mov    %rax,%rsi
  403d1b:	bf a0 e3 40 00       	mov    $0x40e3a0,%edi
  403d20:	e8 6b f5 ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  403d25:	48 89 c7             	mov    %rax,%rdi
  403d28:	ba 01 00 00 00       	mov    $0x1,%edx
  403d2d:	48 8d b4 24 50 01 00 	lea    0x150(%rsp),%rsi
  403d34:	00 
  403d35:	c6 84 24 50 01 00 00 	movb   $0xa,0x150(%rsp)
  403d3c:	0a 
  403d3d:	e8 9e f5 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  403d42:	e8 99 f6 ff ff       	callq  4033e0 <__cxa_end_catch@plt>
  403d47:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  403d4d:	e9 02 04 00 00       	jmpq   404154 <main+0x204>
  403d52:	48 89 c3             	mov    %rax,%rbx
  403d55:	48 89 d5             	mov    %rdx,%rbp
  403d58:	c5 f8 77             	vzeroupper 
  403d5b:	e9 7c ff ff ff       	jmpq   403cdc <main.cold+0x55>
  403d60:	c5 f8 77             	vzeroupper 
  403d63:	e9 53 ff ff ff       	jmpq   403cbb <main.cold+0x34>
  403d68:	e8 c3 f6 ff ff       	callq  403430 <_Unwind_Resume@plt>
  403d6d:	48 89 c5             	mov    %rax,%rbp
  403d70:	c5 f8 77             	vzeroupper 
  403d73:	e8 68 f6 ff ff       	callq  4033e0 <__cxa_end_catch@plt>
  403d78:	48 89 ef             	mov    %rbp,%rdi
  403d7b:	e8 b0 f6 ff ff       	callq  403430 <_Unwind_Resume@plt>
  403d80:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403d87:	00 
  403d88:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403d8f:	00 
  403d90:	48 39 c7             	cmp    %rax,%rdi
  403d93:	74 47                	je     403ddc <main.cold+0x155>
  403d95:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403d9c:	00 
  403d9d:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403da1:	c5 f8 77             	vzeroupper 
  403da4:	e8 07 f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403da9:	e9 0d ff ff ff       	jmpq   403cbb <main.cold+0x34>
  403dae:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403db5:	00 
  403db6:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  403dbd:	00 
  403dbe:	48 39 c7             	cmp    %rax,%rdi
  403dc1:	74 21                	je     403de4 <main.cold+0x15d>
  403dc3:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403dca:	00 
  403dcb:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403dcf:	c5 f8 77             	vzeroupper 
  403dd2:	e8 d9 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403dd7:	e9 df fe ff ff       	jmpq   403cbb <main.cold+0x34>
  403ddc:	c5 f8 77             	vzeroupper 
  403ddf:	e9 d7 fe ff ff       	jmpq   403cbb <main.cold+0x34>
  403de4:	c5 f8 77             	vzeroupper 
  403de7:	e9 cf fe ff ff       	jmpq   403cbb <main.cold+0x34>
  403dec:	bf 10 00 00 00       	mov    $0x10,%edi
  403df1:	e8 5a f3 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403df6:	48 89 c7             	mov    %rax,%rdi
  403df9:	be f4 b1 40 00       	mov    $0x40b1f4,%esi
  403dfe:	49 89 c4             	mov    %rax,%r12
  403e01:	e8 1a f3 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403e06:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403e0b:	be a0 dd 40 00       	mov    $0x40dda0,%esi
  403e10:	4c 89 e7             	mov    %r12,%rdi
  403e13:	e8 f8 f5 ff ff       	callq  403410 <__cxa_throw@plt>
  403e18:	bf 10 00 00 00       	mov    $0x10,%edi
  403e1d:	e8 2e f3 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403e22:	48 89 c7             	mov    %rax,%rdi
  403e25:	be 40 b0 40 00       	mov    $0x40b040,%esi
  403e2a:	49 89 c4             	mov    %rax,%r12
  403e2d:	e8 ee f2 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403e32:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403e37:	be a0 dd 40 00       	mov    $0x40dda0,%esi
  403e3c:	4c 89 e7             	mov    %r12,%rdi
  403e3f:	e8 cc f5 ff ff       	callq  403410 <__cxa_throw@plt>
  403e44:	48 8b bc 24 00 01 00 	mov    0x100(%rsp),%rdi
  403e4b:	00 
  403e4c:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  403e53:	00 
  403e54:	48 39 c7             	cmp    %rax,%rdi
  403e57:	74 69                	je     403ec2 <main.cold+0x23b>
  403e59:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
  403e60:	00 
  403e61:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e65:	c5 f8 77             	vzeroupper 
  403e68:	e8 43 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e6d:	48 8b bc 24 e0 00 00 	mov    0xe0(%rsp),%rdi
  403e74:	00 
  403e75:	48 8d 84 24 f0 00 00 	lea    0xf0(%rsp),%rax
  403e7c:	00 
  403e7d:	48 39 c7             	cmp    %rax,%rdi
  403e80:	74 11                	je     403e93 <main.cold+0x20c>
  403e82:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
  403e89:	00 
  403e8a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e8e:	e8 1d f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e93:	48 8b bc 24 c0 00 00 	mov    0xc0(%rsp),%rdi
  403e9a:	00 
  403e9b:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
  403ea2:	00 
  403ea3:	48 39 c7             	cmp    %rax,%rdi
  403ea6:	0f 84 30 fe ff ff    	je     403cdc <main.cold+0x55>
  403eac:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  403eb3:	00 
  403eb4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403eb8:	e8 f3 f3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403ebd:	e9 1a fe ff ff       	jmpq   403cdc <main.cold+0x55>
  403ec2:	c5 f8 77             	vzeroupper 
  403ec5:	eb a6                	jmp    403e6d <main.cold+0x1e6>
  403ec7:	bf 10 00 00 00       	mov    $0x10,%edi
  403ecc:	e8 7f f2 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403ed1:	48 89 c7             	mov    %rax,%rdi
  403ed4:	be f4 b1 40 00       	mov    $0x40b1f4,%esi
  403ed9:	49 89 c4             	mov    %rax,%r12
  403edc:	e8 3f f2 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403ee1:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403ee6:	be a0 dd 40 00       	mov    $0x40dda0,%esi
  403eeb:	4c 89 e7             	mov    %r12,%rdi
  403eee:	e8 1d f5 ff ff       	callq  403410 <__cxa_throw@plt>
  403ef3:	48 89 c3             	mov    %rax,%rbx
  403ef6:	48 89 d5             	mov    %rdx,%rbp
  403ef9:	4c 89 e7             	mov    %r12,%rdi
  403efc:	c5 f8 77             	vzeroupper 
  403eff:	e8 fc f2 ff ff       	callq  403200 <__cxa_free_exception@plt>
  403f04:	e9 d3 fd ff ff       	jmpq   403cdc <main.cold+0x55>
  403f09:	eb e8                	jmp    403ef3 <main.cold+0x26c>
  403f0b:	eb e6                	jmp    403ef3 <main.cold+0x26c>
  403f0d:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  403f12:	75 08                	jne    403f1c <main.cold+0x295>
  403f14:	8b 44 24 38          	mov    0x38(%rsp),%eax
  403f18:	41 89 04 24          	mov    %eax,(%r12)
  403f1c:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  403f23:	00 
  403f24:	4c 39 ef             	cmp    %r13,%rdi
  403f27:	74 19                	je     403f42 <main.cold+0x2bb>
  403f29:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  403f30:	00 
  403f31:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403f35:	c5 f8 77             	vzeroupper 
  403f38:	e8 73 f3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403f3d:	e9 79 fd ff ff       	jmpq   403cbb <main.cold+0x34>
  403f42:	c5 f8 77             	vzeroupper 
  403f45:	e9 71 fd ff ff       	jmpq   403cbb <main.cold+0x34>
  403f4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

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
  403f64:	48 81 ec 28 0b 00 00 	sub    $0xb28,%rsp
  403f6b:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  403f72:	00 
  403f73:	e8 b8 35 00 00       	callq  407530 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  403f78:	c7 44 24 60 01 00 00 	movl   $0x1,0x60(%rsp)
  403f7f:	00 
  403f80:	83 fd 01             	cmp    $0x1,%ebp
  403f83:	0f 8e 34 06 00 00    	jle    4045bd <main+0x66d>
  403f89:	8d 45 fe             	lea    -0x2(%rbp),%eax
  403f8c:	d1 e8                	shr    %eax
  403f8e:	48 c1 e0 04          	shl    $0x4,%rax
  403f92:	48 8d 44 03 10       	lea    0x10(%rbx,%rax,1),%rax
  403f97:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  403f9c:	8d 45 ff             	lea    -0x1(%rbp),%eax
  403f9f:	d1 e8                	shr    %eax
  403fa1:	48 c1 e0 04          	shl    $0x4,%rax
  403fa5:	48 01 d8             	add    %rbx,%rax
  403fa8:	48 89 04 24          	mov    %rax,(%rsp)
  403fac:	48 b8 00 00 00 00 02 	movabs $0x200000000,%rax
  403fb3:	00 00 00 
  403fb6:	c5 fb 10 35 3a 74 00 	vmovsd 0x743a(%rip),%xmm6        # 40b3f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  403fbd:	00 
  403fbe:	c7 44 24 4c 05 00 00 	movl   $0x5,0x4c(%rsp)
  403fc5:	00 
  403fc6:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  403fcb:	c5 fb 11 74 24 20    	vmovsd %xmm6,0x20(%rsp)
  403fd1:	c5 fb 11 74 24 40    	vmovsd %xmm6,0x40(%rsp)
  403fd7:	4c 8d b4 24 20 01 00 	lea    0x120(%rsp),%r14
  403fde:	00 
  403fdf:	48 8d ac 24 30 01 00 	lea    0x130(%rsp),%rbp
  403fe6:	00 
  403fe7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  403fee:	00 00 
  403ff0:	4c 8b 63 08          	mov    0x8(%rbx),%r12
  403ff4:	48 89 ac 24 20 01 00 	mov    %rbp,0x120(%rsp)
  403ffb:	00 
  403ffc:	4d 85 e4             	test   %r12,%r12
  403fff:	0f 84 8d 15 00 00    	je     405592 <main+0x1642>
  404005:	4c 89 e7             	mov    %r12,%rdi
  404008:	e8 33 f1 ff ff       	callq  403140 <strlen@plt>
  40400d:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  404014:	00 
  404015:	49 89 c5             	mov    %rax,%r13
  404018:	48 83 f8 0f          	cmp    $0xf,%rax
  40401c:	0f 87 8e 02 00 00    	ja     4042b0 <main+0x360>
  404022:	48 83 f8 01          	cmp    $0x1,%rax
  404026:	0f 85 6c 02 00 00    	jne    404298 <main+0x348>
  40402c:	41 0f b6 14 24       	movzbl (%r12),%edx
  404031:	88 94 24 30 01 00 00 	mov    %dl,0x130(%rsp)
  404038:	48 89 ea             	mov    %rbp,%rdx
  40403b:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
  404042:	00 
  404043:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  404047:	48 3b 1c 24          	cmp    (%rsp),%rbx
  40404b:	0f 84 45 05 00 00    	je     404596 <main+0x646>
  404051:	be b5 b1 40 00       	mov    $0x40b1b5,%esi
  404056:	4c 89 f7             	mov    %r14,%rdi
  404059:	e8 62 f0 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40405e:	85 c0                	test   %eax,%eax
  404060:	0f 85 0a 01 00 00    	jne    404170 <main+0x220>
  404066:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  40406a:	4c 89 e7             	mov    %r12,%rdi
  40406d:	e8 ce f0 ff ff       	callq  403140 <strlen@plt>
  404072:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
  404079:	00 
  40407a:	49 89 c0             	mov    %rax,%r8
  40407d:	4c 89 e1             	mov    %r12,%rcx
  404080:	31 f6                	xor    %esi,%esi
  404082:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  404089:	00 
  40408a:	e8 11 f3 ff ff       	callq  4033a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40408f:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  404096:	00 
  404097:	48 39 ef             	cmp    %rbp,%rdi
  40409a:	0f 84 e0 01 00 00    	je     404280 <main+0x330>
  4040a0:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  4040a7:	00 
  4040a8:	48 83 c3 10          	add    $0x10,%rbx
  4040ac:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4040b0:	e8 fb f1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4040b5:	48 39 5c 24 10       	cmp    %rbx,0x10(%rsp)
  4040ba:	0f 85 30 ff ff ff    	jne    403ff0 <main+0xa0>
  4040c0:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  4040c4:	c5 f9 2f 44 24 40    	vcomisd 0x40(%rsp),%xmm0
  4040ca:	73 5c                	jae    404128 <main+0x1d8>
  4040cc:	83 7c 24 4c 00       	cmpl   $0x0,0x4c(%rsp)
  4040d1:	7e 55                	jle    404128 <main+0x1d8>
  4040d3:	4c 8d 74 24 68       	lea    0x68(%rsp),%r14
  4040d8:	48 8d 5c 24 70       	lea    0x70(%rsp),%rbx
  4040dd:	c4 c1 f9 6e ee       	vmovq  %r14,%xmm5
  4040e2:	48 8d 44 24 78       	lea    0x78(%rsp),%rax
  4040e7:	c4 e3 d1 22 eb 01    	vpinsrq $0x1,%rbx,%xmm5,%xmm5
  4040ed:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4040f2:	c5 f9 7f 2c 24       	vmovdqa %xmm5,(%rsp)
  4040f7:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
  4040fc:	8b 44 24 60          	mov    0x60(%rsp),%eax
  404100:	4c 8d a4 24 80 00 00 	lea    0x80(%rsp),%r12
  404107:	00 
  404108:	c4 c3 d1 22 e4 01    	vpinsrq $0x1,%r12,%xmm5,%xmm4
  40410e:	ff c8                	dec    %eax
  404110:	c5 f9 7f 64 24 10    	vmovdqa %xmm4,0x10(%rsp)
  404116:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  40411b:	0f 86 03 05 00 00    	jbe    404624 <main+0x6d4>
  404121:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404128:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  40412e:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
  404135:	00 
  404136:	48 8d 84 24 b0 00 00 	lea    0xb0(%rsp),%rax
  40413d:	00 
  40413e:	48 39 c7             	cmp    %rax,%rdi
  404141:	74 11                	je     404154 <main+0x204>
  404143:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
  40414a:	00 
  40414b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40414f:	e8 5c f1 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  404154:	48 81 c4 28 0b 00 00 	add    $0xb28,%rsp
  40415b:	5b                   	pop    %rbx
  40415c:	5d                   	pop    %rbp
  40415d:	44 89 e0             	mov    %r12d,%eax
  404160:	41 5c                	pop    %r12
  404162:	41 5d                	pop    %r13
  404164:	41 5e                	pop    %r14
  404166:	41 5f                	pop    %r15
  404168:	c3                   	retq   
  404169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404170:	be bc b1 40 00       	mov    $0x40b1bc,%esi
  404175:	4c 89 f7             	mov    %r14,%rdi
  404178:	e8 43 ef ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40417d:	85 c0                	test   %eax,%eax
  40417f:	0f 85 7b 01 00 00    	jne    404300 <main+0x3b0>
  404185:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  404189:	4c 8d ac 24 60 01 00 	lea    0x160(%rsp),%r13
  404190:	00 
  404191:	4c 89 ac 24 50 01 00 	mov    %r13,0x150(%rsp)
  404198:	00 
  404199:	4d 85 e4             	test   %r12,%r12
  40419c:	0f 84 bd 13 00 00    	je     40555f <main+0x160f>
  4041a2:	4c 89 e7             	mov    %r12,%rdi
  4041a5:	e8 96 ef ff ff       	callq  403140 <strlen@plt>
  4041aa:	48 89 84 24 00 01 00 	mov    %rax,0x100(%rsp)
  4041b1:	00 
  4041b2:	49 89 c7             	mov    %rax,%r15
  4041b5:	48 83 f8 0f          	cmp    $0xf,%rax
  4041b9:	0f 87 b1 02 00 00    	ja     404470 <main+0x520>
  4041bf:	48 83 f8 01          	cmp    $0x1,%rax
  4041c3:	0f 85 87 02 00 00    	jne    404450 <main+0x500>
  4041c9:	48 8d 8c 24 00 01 00 	lea    0x100(%rsp),%rcx
  4041d0:	00 
  4041d1:	41 0f b6 14 24       	movzbl (%r12),%edx
  4041d6:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
  4041db:	88 94 24 60 01 00 00 	mov    %dl,0x160(%rsp)
  4041e2:	4c 89 ea             	mov    %r13,%rdx
  4041e5:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  4041ec:	00 
  4041ed:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4041f1:	e8 4a ee ff ff       	callq  403040 <__errno_location@plt>
  4041f6:	49 89 c4             	mov    %rax,%r12
  4041f9:	4c 8b bc 24 50 01 00 	mov    0x150(%rsp),%r15
  404200:	00 
  404201:	8b 00                	mov    (%rax),%eax
  404203:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  40420a:	00 
  40420b:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  404210:	ba 0a 00 00 00       	mov    $0xa,%edx
  404215:	4c 89 ff             	mov    %r15,%rdi
  404218:	89 44 24 38          	mov    %eax,0x38(%rsp)
  40421c:	e8 ff f0 ff ff       	callq  403320 <strtoull@plt>
  404221:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  404226:	4c 3b bc 24 00 01 00 	cmp    0x100(%rsp),%r15
  40422d:	00 
  40422e:	0f 84 3f 13 00 00    	je     405573 <main+0x1623>
  404234:	41 8b 04 24          	mov    (%r12),%eax
  404238:	83 f8 22             	cmp    $0x22,%eax
  40423b:	0f 84 28 13 00 00    	je     405569 <main+0x1619>
  404241:	85 c0                	test   %eax,%eax
  404243:	75 08                	jne    40424d <main+0x2fd>
  404245:	8b 44 24 38          	mov    0x38(%rsp),%eax
  404249:	41 89 04 24          	mov    %eax,(%r12)
  40424d:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  404254:	00 
  404255:	4c 39 ef             	cmp    %r13,%rdi
  404258:	0f 84 31 fe ff ff    	je     40408f <main+0x13f>
  40425e:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  404265:	00 
  404266:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40426a:	e8 41 f0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40426f:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  404276:	00 
  404277:	48 39 ef             	cmp    %rbp,%rdi
  40427a:	0f 85 20 fe ff ff    	jne    4040a0 <main+0x150>
  404280:	48 83 c3 10          	add    $0x10,%rbx
  404284:	48 39 5c 24 10       	cmp    %rbx,0x10(%rsp)
  404289:	0f 85 61 fd ff ff    	jne    403ff0 <main+0xa0>
  40428f:	e9 2c fe ff ff       	jmpq   4040c0 <main+0x170>
  404294:	0f 1f 40 00          	nopl   0x0(%rax)
  404298:	48 85 c0             	test   %rax,%rax
  40429b:	0f 85 0f 13 00 00    	jne    4055b0 <main+0x1660>
  4042a1:	48 89 ea             	mov    %rbp,%rdx
  4042a4:	e9 92 fd ff ff       	jmpq   40403b <main+0xeb>
  4042a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4042b0:	31 d2                	xor    %edx,%edx
  4042b2:	48 8d b4 24 50 01 00 	lea    0x150(%rsp),%rsi
  4042b9:	00 
  4042ba:	4c 89 f7             	mov    %r14,%rdi
  4042bd:	e8 7e f1 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4042c2:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  4042c9:	00 
  4042ca:	48 89 c7             	mov    %rax,%rdi
  4042cd:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  4042d4:	00 
  4042d5:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  4042dc:	00 
  4042dd:	4c 89 ea             	mov    %r13,%rdx
  4042e0:	4c 89 e6             	mov    %r12,%rsi
  4042e3:	e8 68 ef ff ff       	callq  403250 <memcpy@plt>
  4042e8:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  4042ef:	00 
  4042f0:	48 8b 94 24 20 01 00 	mov    0x120(%rsp),%rdx
  4042f7:	00 
  4042f8:	e9 3e fd ff ff       	jmpq   40403b <main+0xeb>
  4042fd:	0f 1f 00             	nopl   (%rax)
  404300:	be cb b1 40 00       	mov    $0x40b1cb,%esi
  404305:	4c 89 f7             	mov    %r14,%rdi
  404308:	e8 b3 ed ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40430d:	85 c0                	test   %eax,%eax
  40430f:	0f 85 d3 00 00 00    	jne    4043e8 <main+0x498>
  404315:	4c 8b 63 10          	mov    0x10(%rbx),%r12
  404319:	4c 8d ac 24 60 01 00 	lea    0x160(%rsp),%r13
  404320:	00 
  404321:	4c 89 ac 24 50 01 00 	mov    %r13,0x150(%rsp)
  404328:	00 
  404329:	4d 85 e4             	test   %r12,%r12
  40432c:	0f 84 74 12 00 00    	je     4055a6 <main+0x1656>
  404332:	4c 89 e7             	mov    %r12,%rdi
  404335:	e8 06 ee ff ff       	callq  403140 <strlen@plt>
  40433a:	48 89 84 24 00 01 00 	mov    %rax,0x100(%rsp)
  404341:	00 
  404342:	49 89 c7             	mov    %rax,%r15
  404345:	48 83 f8 0f          	cmp    $0xf,%rax
  404349:	0f 87 fd 01 00 00    	ja     40454c <main+0x5fc>
  40434f:	48 83 f8 01          	cmp    $0x1,%rax
  404353:	0f 85 d8 01 00 00    	jne    404531 <main+0x5e1>
  404359:	41 0f b6 04 24       	movzbl (%r12),%eax
  40435e:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  404365:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  40436c:	00 
  40436d:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  404372:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  404379:	00 
  40437a:	48 8b 94 24 50 01 00 	mov    0x150(%rsp),%rdx
  404381:	00 
  404382:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  404389:	00 
  40438a:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40438e:	e8 ad ec ff ff       	callq  403040 <__errno_location@plt>
  404393:	49 89 c4             	mov    %rax,%r12
  404396:	4c 8b bc 24 50 01 00 	mov    0x150(%rsp),%r15
  40439d:	00 
  40439e:	8b 00                	mov    (%rax),%eax
  4043a0:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  4043a7:	00 
  4043a8:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  4043ad:	4c 89 ff             	mov    %r15,%rdi
  4043b0:	89 44 24 38          	mov    %eax,0x38(%rsp)
  4043b4:	e8 77 ee ff ff       	callq  403230 <strtod@plt>
  4043b9:	c5 fb 11 44 24 40    	vmovsd %xmm0,0x40(%rsp)
  4043bf:	4c 3b bc 24 00 01 00 	cmp    0x100(%rsp),%r15
  4043c6:	00 
  4043c7:	0f 84 cf 11 00 00    	je     40559c <main+0x164c>
  4043cd:	41 8b 04 24          	mov    (%r12),%eax
  4043d1:	83 f8 22             	cmp    $0x22,%eax
  4043d4:	0f 85 67 fe ff ff    	jne    404241 <main+0x2f1>
  4043da:	bf d5 b1 40 00       	mov    $0x40b1d5,%edi
  4043df:	e8 7c ef ff ff       	callq  403360 <_ZSt20__throw_out_of_rangePKc@plt>
  4043e4:	0f 1f 40 00          	nopl   0x0(%rax)
  4043e8:	be da b1 40 00       	mov    $0x40b1da,%esi
  4043ed:	4c 89 f7             	mov    %r14,%rdi
  4043f0:	e8 cb ec ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4043f5:	85 c0                	test   %eax,%eax
  4043f7:	0f 85 cd 00 00 00    	jne    4044ca <main+0x57a>
  4043fd:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  404401:	48 8d bc 24 50 01 00 	lea    0x150(%rsp),%rdi
  404408:	00 
  404409:	e8 22 31 00 00       	callq  407530 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40440e:	48 8b 94 24 50 01 00 	mov    0x150(%rsp),%rdx
  404415:	00 
  404416:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  40441c:	31 c9                	xor    %ecx,%ecx
  40441e:	be 89 b0 40 00       	mov    $0x40b089,%esi
  404423:	bf 40 33 40 00       	mov    $0x403340,%edi
  404428:	e8 93 56 00 00       	callq  409ac0 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  40442d:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  404434:	00 
  404435:	89 44 24 4c          	mov    %eax,0x4c(%rsp)
  404439:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  404440:	00 
  404441:	48 39 c7             	cmp    %rax,%rdi
  404444:	0f 85 14 fe ff ff    	jne    40425e <main+0x30e>
  40444a:	e9 40 fc ff ff       	jmpq   40408f <main+0x13f>
  40444f:	90                   	nop
  404450:	48 85 c0             	test   %rax,%rax
  404453:	0f 85 24 11 00 00    	jne    40557d <main+0x162d>
  404459:	48 8d 8c 24 00 01 00 	lea    0x100(%rsp),%rcx
  404460:	00 
  404461:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
  404466:	4c 89 ea             	mov    %r13,%rdx
  404469:	e9 77 fd ff ff       	jmpq   4041e5 <main+0x295>
  40446e:	66 90                	xchg   %ax,%ax
  404470:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  404477:	00 
  404478:	31 d2                	xor    %edx,%edx
  40447a:	48 89 c6             	mov    %rax,%rsi
  40447d:	48 8d bc 24 50 01 00 	lea    0x150(%rsp),%rdi
  404484:	00 
  404485:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40448a:	e8 b1 ef ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40448f:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  404496:	00 
  404497:	48 89 c7             	mov    %rax,%rdi
  40449a:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  4044a1:	00 
  4044a2:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  4044a9:	00 
  4044aa:	4c 89 fa             	mov    %r15,%rdx
  4044ad:	4c 89 e6             	mov    %r12,%rsi
  4044b0:	e8 9b ed ff ff       	callq  403250 <memcpy@plt>
  4044b5:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  4044bc:	00 
  4044bd:	48 8b 94 24 50 01 00 	mov    0x150(%rsp),%rdx
  4044c4:	00 
  4044c5:	e9 1b fd ff ff       	jmpq   4041e5 <main+0x295>
  4044ca:	be e8 b1 40 00       	mov    $0x40b1e8,%esi
  4044cf:	4c 89 f7             	mov    %r14,%rdi
  4044d2:	e8 e9 eb ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4044d7:	85 c0                	test   %eax,%eax
  4044d9:	0f 85 b7 00 00 00    	jne    404596 <main+0x646>
  4044df:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  4044e3:	48 8d bc 24 50 01 00 	lea    0x150(%rsp),%rdi
  4044ea:	00 
  4044eb:	e8 40 30 00 00       	callq  407530 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4044f0:	48 8b 94 24 50 01 00 	mov    0x150(%rsp),%rdx
  4044f7:	00 
  4044f8:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  4044fe:	31 c9                	xor    %ecx,%ecx
  404500:	be 89 b0 40 00       	mov    $0x40b089,%esi
  404505:	bf 40 33 40 00       	mov    $0x403340,%edi
  40450a:	e8 b1 55 00 00       	callq  409ac0 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  40450f:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  404516:	00 
  404517:	89 44 24 60          	mov    %eax,0x60(%rsp)
  40451b:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  404522:	00 
  404523:	48 39 c7             	cmp    %rax,%rdi
  404526:	0f 85 32 fd ff ff    	jne    40425e <main+0x30e>
  40452c:	e9 5e fb ff ff       	jmpq   40408f <main+0x13f>
  404531:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  404538:	00 
  404539:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40453e:	4d 85 ff             	test   %r15,%r15
  404541:	0f 84 2b fe ff ff    	je     404372 <main+0x422>
  404547:	4c 89 ef             	mov    %r13,%rdi
  40454a:	eb 3a                	jmp    404586 <main+0x636>
  40454c:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  404553:	00 
  404554:	31 d2                	xor    %edx,%edx
  404556:	48 89 c6             	mov    %rax,%rsi
  404559:	48 8d bc 24 50 01 00 	lea    0x150(%rsp),%rdi
  404560:	00 
  404561:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  404566:	e8 d5 ee ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40456b:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  404572:	00 
  404573:	48 89 c7             	mov    %rax,%rdi
  404576:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  40457d:	00 
  40457e:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  404585:	00 
  404586:	4c 89 fa             	mov    %r15,%rdx
  404589:	4c 89 e6             	mov    %r12,%rsi
  40458c:	e8 bf ec ff ff       	callq  403250 <memcpy@plt>
  404591:	e9 dc fd ff ff       	jmpq   404372 <main+0x422>
  404596:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  40459d:	00 
  40459e:	48 39 ef             	cmp    %rbp,%rdi
  4045a1:	0f 84 81 fb ff ff    	je     404128 <main+0x1d8>
  4045a7:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  4045ae:	00 
  4045af:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4045b3:	e8 f8 ec ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4045b8:	e9 6b fb ff ff       	jmpq   404128 <main+0x1d8>
  4045bd:	48 8d 44 24 78       	lea    0x78(%rsp),%rax
  4045c2:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
  4045c7:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4045cc:	b8 01 00 00 00       	mov    $0x1,%eax
  4045d1:	4c 8d 74 24 68       	lea    0x68(%rsp),%r14
  4045d6:	4c 8d a4 24 80 00 00 	lea    0x80(%rsp),%r12
  4045dd:	00 
  4045de:	48 c1 e0 21          	shl    $0x21,%rax
  4045e2:	c4 c3 d1 22 e4 01    	vpinsrq $0x1,%r12,%xmm5,%xmm4
  4045e8:	48 8d 5c 24 70       	lea    0x70(%rsp),%rbx
  4045ed:	c5 fb 10 2d 03 6e 00 	vmovsd 0x6e03(%rip),%xmm5        # 40b3f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  4045f4:	00 
  4045f5:	c4 c1 f9 6e f6       	vmovq  %r14,%xmm6
  4045fa:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4045ff:	c7 44 24 4c 05 00 00 	movl   $0x5,0x4c(%rsp)
  404606:	00 
  404607:	c4 e3 c9 22 fb 01    	vpinsrq $0x1,%rbx,%xmm6,%xmm7
  40460d:	c5 f9 7f 3c 24       	vmovdqa %xmm7,(%rsp)
  404612:	c5 f9 7f 64 24 10    	vmovdqa %xmm4,0x10(%rsp)
  404618:	c5 fb 11 6c 24 20    	vmovsd %xmm5,0x20(%rsp)
  40461e:	c5 fb 11 6c 24 40    	vmovsd %xmm5,0x40(%rsp)
  404624:	be 0a b1 40 00       	mov    $0x40b10a,%esi
  404629:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  404630:	00 
  404631:	e8 8a ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404636:	85 c0                	test   %eax,%eax
  404638:	be 25 b1 40 00       	mov    $0x40b125,%esi
  40463d:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  404644:	00 
  404645:	0f 94 44 24 58       	sete   0x58(%rsp)
  40464a:	e8 71 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40464f:	85 c0                	test   %eax,%eax
  404651:	be ec b1 40 00       	mov    $0x40b1ec,%esi
  404656:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40465d:	00 
  40465e:	0f 94 44 24 59       	sete   0x59(%rsp)
  404663:	e8 58 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404668:	85 c0                	test   %eax,%eax
  40466a:	be 47 b1 40 00       	mov    $0x40b147,%esi
  40466f:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  404676:	00 
  404677:	0f 94 44 24 5a       	sete   0x5a(%rsp)
  40467c:	e8 3f ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404681:	85 c0                	test   %eax,%eax
  404683:	be 42 b1 40 00       	mov    $0x40b142,%esi
  404688:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40468f:	00 
  404690:	0f 94 44 24 5b       	sete   0x5b(%rsp)
  404695:	e8 26 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40469a:	85 c0                	test   %eax,%eax
  40469c:	be 4c b1 40 00       	mov    $0x40b14c,%esi
  4046a1:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  4046a8:	00 
  4046a9:	0f 94 44 24 5c       	sete   0x5c(%rsp)
  4046ae:	e8 0d ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4046b3:	85 c0                	test   %eax,%eax
  4046b5:	0f 94 c0             	sete   %al
  4046b8:	80 7c 24 58 00       	cmpb   $0x0,0x58(%rsp)
  4046bd:	88 44 24 5d          	mov    %al,0x5d(%rsp)
  4046c1:	75 24                	jne    4046e7 <main+0x797>
  4046c3:	80 7c 24 59 00       	cmpb   $0x0,0x59(%rsp)
  4046c8:	75 1d                	jne    4046e7 <main+0x797>
  4046ca:	80 7c 24 5a 00       	cmpb   $0x0,0x5a(%rsp)
  4046cf:	75 16                	jne    4046e7 <main+0x797>
  4046d1:	80 7c 24 5b 00       	cmpb   $0x0,0x5b(%rsp)
  4046d6:	75 0f                	jne    4046e7 <main+0x797>
  4046d8:	80 7c 24 5c 00       	cmpb   $0x0,0x5c(%rsp)
  4046dd:	75 08                	jne    4046e7 <main+0x797>
  4046df:	84 c0                	test   %al,%al
  4046e1:	0f 84 41 fa ff ff    	je     404128 <main+0x1d8>
  4046e7:	4c 8d bc 24 50 01 00 	lea    0x150(%rsp),%r15
  4046ee:	00 
  4046ef:	48 8d 44 24 64       	lea    0x64(%rsp),%rax
  4046f4:	31 c9                	xor    %ecx,%ecx
  4046f6:	31 d2                	xor    %edx,%edx
  4046f8:	4c 89 fe             	mov    %r15,%rsi
  4046fb:	bf d0 58 40 00       	mov    $0x4058d0,%edi
  404700:	c7 44 24 64 00 00 00 	movl   $0x0,0x64(%rsp)
  404707:	00 
  404708:	c6 44 24 5e 01       	movb   $0x1,0x5e(%rsp)
  40470d:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  404714:	00 
  404715:	e8 66 ec ff ff       	callq  403380 <GOMP_parallel@plt>
  40471a:	80 7c 24 58 00       	cmpb   $0x0,0x58(%rsp)
  40471f:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
  404726:	00 00 
  404728:	48 c7 44 24 70 00 00 	movq   $0x0,0x70(%rsp)
  40472f:	00 00 
  404731:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
  404738:	00 00 
  40473a:	48 c7 84 24 80 00 00 	movq   $0x0,0x80(%rsp)
  404741:	00 00 00 00 00 
  404746:	48 c7 84 24 88 00 00 	movq   $0x0,0x88(%rsp)
  40474d:	00 00 00 00 00 
  404752:	0f 85 39 08 00 00    	jne    404f91 <main+0x1041>
  404758:	80 7c 24 59 00       	cmpb   $0x0,0x59(%rsp)
  40475d:	0f 84 94 00 00 00    	je     4047f7 <main+0x8a7>
  404763:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
  404768:	48 c1 ed 04          	shr    $0x4,%rbp
  40476c:	48 83 e5 c0          	and    $0xffffffffffffffc0,%rbp
  404770:	48 89 6c 24 68       	mov    %rbp,0x68(%rsp)
  404775:	0f 84 ad f9 ff ff    	je     404128 <main+0x1d8>
  40477b:	48 8d 34 ed 00 00 00 	lea    0x0(,%rbp,8),%rsi
  404782:	00 
  404783:	bf 40 00 00 00       	mov    $0x40,%edi
  404788:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  40478d:	e8 7e ea ff ff       	callq  403210 <aligned_alloc@plt>
  404792:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  404797:	bf 40 00 00 00       	mov    $0x40,%edi
  40479c:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  4047a1:	49 89 c5             	mov    %rax,%r13
  4047a4:	e8 67 ea ff ff       	callq  403210 <aligned_alloc@plt>
  4047a9:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  4047ae:	4d 85 ed             	test   %r13,%r13
  4047b1:	0f 84 10 f7 ff ff    	je     403ec7 <main.cold+0x240>
  4047b7:	48 85 c0             	test   %rax,%rax
  4047ba:	0f 84 07 f7 ff ff    	je     403ec7 <main.cold+0x240>
  4047c0:	48 c1 e5 04          	shl    $0x4,%rbp
  4047c4:	48 89 6c 24 30       	mov    %rbp,0x30(%rsp)
  4047c9:	c5 f9 6f 2c 24       	vmovdqa (%rsp),%xmm5
  4047ce:	c5 f9 6f 64 24 10    	vmovdqa 0x10(%rsp),%xmm4
  4047d4:	31 c9                	xor    %ecx,%ecx
  4047d6:	31 d2                	xor    %edx,%edx
  4047d8:	4c 89 fe             	mov    %r15,%rsi
  4047db:	bf 60 57 40 00       	mov    $0x405760,%edi
  4047e0:	c5 f9 7f ac 24 50 01 	vmovdqa %xmm5,0x150(%rsp)
  4047e7:	00 00 
  4047e9:	c5 f9 7f a4 24 60 01 	vmovdqa %xmm4,0x160(%rsp)
  4047f0:	00 00 
  4047f2:	e8 89 eb ff ff       	callq  403380 <GOMP_parallel@plt>
  4047f7:	80 7c 24 5a 00       	cmpb   $0x0,0x5a(%rsp)
  4047fc:	0f 84 3a 0d 00 00    	je     40553c <main+0x15ec>
  404802:	83 7c 24 64 01       	cmpl   $0x1,0x64(%rsp)
  404807:	0f 85 0b f6 ff ff    	jne    403e18 <main.cold+0x191>
  40480d:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
  404812:	48 c1 ed 06          	shr    $0x6,%rbp
  404816:	48 89 6c 24 68       	mov    %rbp,0x68(%rsp)
  40481b:	48 83 fd 01          	cmp    $0x1,%rbp
  40481f:	0f 86 03 f9 ff ff    	jbe    404128 <main+0x1d8>
  404825:	48 89 e8             	mov    %rbp,%rax
  404828:	48 c1 e0 06          	shl    $0x6,%rax
  40482c:	48 89 c6             	mov    %rax,%rsi
  40482f:	bf 40 00 00 00       	mov    $0x40,%edi
  404834:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  404839:	e8 d2 e9 ff ff       	callq  403210 <aligned_alloc@plt>
  40483e:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  404843:	48 85 c0             	test   %rax,%rax
  404846:	0f 84 a0 f5 ff ff    	je     403dec <main.cold+0x165>
  40484c:	4c 8d 2c ed 00 00 00 	lea    0x0(,%rbp,8),%r13
  404853:	00 
  404854:	4c 89 ef             	mov    %r13,%rdi
  404857:	e8 44 ea ff ff       	callq  4032a0 <_Znwm@plt>
  40485c:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  404863:	4e 8d 0c 28          	lea    (%rax,%r13,1),%r9
  404867:	49 8d 55 f8          	lea    -0x8(%r13),%rdx
  40486b:	48 8d 78 08          	lea    0x8(%rax),%rdi
  40486f:	31 f6                	xor    %esi,%esi
  404871:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
  404876:	48 89 04 24          	mov    %rax,(%rsp)
  40487a:	e8 01 e9 ff ff       	callq  403180 <memset@plt>
  40487f:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
  404884:	4c 8b 04 24          	mov    (%rsp),%r8
  404888:	31 c0                	xor    %eax,%eax
  40488a:	49 89 04 c0          	mov    %rax,(%r8,%rax,8)
  40488e:	48 ff c0             	inc    %rax
  404891:	48 39 c5             	cmp    %rax,%rbp
  404894:	75 f4                	jne    40488a <main+0x93a>
  404896:	48 c7 84 24 50 01 00 	movq   $0x7,0x150(%rsp)
  40489d:	00 07 00 00 00 
  4048a2:	b8 07 00 00 00       	mov    $0x7,%eax
  4048a7:	b9 01 00 00 00       	mov    $0x1,%ecx
  4048ac:	48 be 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rsi
  4048b3:	f4 51 58 
  4048b6:	48 89 c2             	mov    %rax,%rdx
  4048b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4048c0:	48 89 d0             	mov    %rdx,%rax
  4048c3:	48 c1 e8 3e          	shr    $0x3e,%rax
  4048c7:	48 31 d0             	xor    %rdx,%rax
  4048ca:	48 0f af c6          	imul   %rsi,%rax
  4048ce:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  4048d2:	49 89 14 cf          	mov    %rdx,(%r15,%rcx,8)
  4048d6:	48 ff c1             	inc    %rcx
  4048d9:	48 81 f9 38 01 00 00 	cmp    $0x138,%rcx
  4048e0:	75 de                	jne    4048c0 <main+0x970>
  4048e2:	4c 89 ce             	mov    %r9,%rsi
  4048e5:	4c 89 c7             	mov    %r8,%rdi
  4048e8:	4c 89 fa             	mov    %r15,%rdx
  4048eb:	4c 89 04 24          	mov    %r8,(%rsp)
  4048ef:	48 c7 84 24 10 0b 00 	movq   $0x138,0xb10(%rsp)
  4048f6:	00 38 01 00 00 
  4048fb:	e8 20 54 00 00       	callq  409d20 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>
  404900:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
  404905:	4c 8b 04 24          	mov    (%rsp),%r8
  404909:	31 c9                	xor    %ecx,%ecx
  40490b:	eb 2b                	jmp    404938 <main+0x9e8>
  40490d:	48 ff c1             	inc    %rcx
  404910:	b8 06 00 00 00       	mov    $0x6,%eax
  404915:	c4 c2 f9 f7 7c c8 f8 	shlx   %rax,-0x8(%r8,%rcx,8),%rdi
  40491c:	31 d2                	xor    %edx,%edx
  40491e:	48 89 c8             	mov    %rcx,%rax
  404921:	48 f7 f6             	div    %rsi
  404924:	49 8b 04 d0          	mov    (%r8,%rdx,8),%rax
  404928:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  40492d:	48 c1 e0 06          	shl    $0x6,%rax
  404931:	48 01 d0             	add    %rdx,%rax
  404934:	48 89 04 3a          	mov    %rax,(%rdx,%rdi,1)
  404938:	48 39 ce             	cmp    %rcx,%rsi
  40493b:	75 d0                	jne    40490d <main+0x9bd>
  40493d:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  404942:	4c 89 ee             	mov    %r13,%rsi
  404945:	4c 89 c7             	mov    %r8,%rdi
  404948:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  40494f:	00 
  404950:	e8 5b e9 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  404955:	48 8b 4c 24 68       	mov    0x68(%rsp),%rcx
  40495a:	31 c0                	xor    %eax,%eax
  40495c:	eb 0e                	jmp    40496c <main+0xa1c>
  40495e:	48 8b 12             	mov    (%rdx),%rdx
  404961:	48 ff c0             	inc    %rax
  404964:	48 89 94 24 88 00 00 	mov    %rdx,0x88(%rsp)
  40496b:	00 
  40496c:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
  404973:	00 
  404974:	48 39 c1             	cmp    %rax,%rcx
  404977:	75 e5                	jne    40495e <main+0xa0e>
  404979:	48 39 54 24 38       	cmp    %rdx,0x38(%rsp)
  40497e:	0f 94 c0             	sete   %al
  404981:	20 44 24 5e          	and    %al,0x5e(%rsp)
  404985:	48 8d 44 24 5a       	lea    0x5a(%rsp),%rax
  40498a:	c4 61 f9 6e d8       	vmovq  %rax,%xmm11
  40498f:	48 8d 84 24 88 00 00 	lea    0x88(%rsp),%rax
  404996:	00 
  404997:	c4 63 a1 22 d8 01    	vpinsrq $0x1,%rax,%xmm11,%xmm11
  40499d:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  4049a2:	c4 61 f9 6e d0       	vmovq  %rax,%xmm10
  4049a7:	c4 c1 f9 6e f4       	vmovq  %r12,%xmm6
  4049ac:	48 8d 44 24 59       	lea    0x59(%rsp),%rax
  4049b1:	c4 63 c9 22 c8 01    	vpinsrq $0x1,%rax,%xmm6,%xmm9
  4049b7:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
  4049bc:	c4 61 f9 6e c0       	vmovq  %rax,%xmm8
  4049c1:	48 8d 44 24 5d       	lea    0x5d(%rsp),%rax
  4049c6:	c4 e1 f9 6e fb       	vmovq  %rbx,%xmm7
  4049cb:	c4 63 b9 22 c0 01    	vpinsrq $0x1,%rax,%xmm8,%xmm8
  4049d1:	48 8d 44 24 5b       	lea    0x5b(%rsp),%rax
  4049d6:	c4 63 c1 22 74 24 28 	vpinsrq $0x1,0x28(%rsp),%xmm7,%xmm14
  4049dd:	01 
  4049de:	c4 e1 f9 6e f8       	vmovq  %rax,%xmm7
  4049e3:	48 8d 84 24 98 00 00 	lea    0x98(%rsp),%rax
  4049ea:	00 
  4049eb:	c4 e3 c1 22 f8 01    	vpinsrq $0x1,%rax,%xmm7,%xmm7
  4049f1:	48 8d 44 24 5e       	lea    0x5e(%rsp),%rax
  4049f6:	c4 e1 f9 6e f0       	vmovq  %rax,%xmm6
  4049fb:	48 8d 44 24 5c       	lea    0x5c(%rsp),%rax
  404a00:	c4 e3 c9 22 f0 01    	vpinsrq $0x1,%rax,%xmm6,%xmm6
  404a06:	0f b6 4c 24 5b       	movzbl 0x5b(%rsp),%ecx
  404a0b:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
  404a12:	00 
  404a13:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
  404a18:	48 8d 44 24 64       	lea    0x64(%rsp),%rax
  404a1d:	48 c7 84 24 90 00 00 	movq   $0x0,0x90(%rsp)
  404a24:	00 00 00 00 00 
  404a29:	c4 43 a9 22 d6 01    	vpinsrq $0x1,%r14,%xmm10,%xmm10
  404a2f:	c4 e3 d1 22 e8 01    	vpinsrq $0x1,%rax,%xmm5,%xmm5
  404a35:	84 c9                	test   %cl,%cl
  404a37:	75 07                	jne    404a40 <main+0xaf0>
  404a39:	80 7c 24 5c 00       	cmpb   $0x0,0x5c(%rsp)
  404a3e:	74 7a                	je     404aba <main+0xb6a>
  404a40:	c5 fb 10 1d d0 69 00 	vmovsd 0x69d0(%rip),%xmm3        # 40b418 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  404a47:	00 
  404a48:	c5 7b 10 2d f8 69 00 	vmovsd 0x69f8(%rip),%xmm13        # 40b448 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x128>
  404a4f:	00 
  404a50:	c5 fa 10 15 f0 6a 00 	vmovss 0x6af0(%rip),%xmm2        # 40b548 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x228>
  404a57:	00 
  404a58:	c5 fa 10 0d ec 6a 00 	vmovss 0x6aec(%rip),%xmm1        # 40b54c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x22c>
  404a5f:	00 
  404a60:	c5 7a 10 25 ec 6a 00 	vmovss 0x6aec(%rip),%xmm12        # 40b554 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x234>
  404a67:	00 
  404a68:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  404a6c:	31 d2                	xor    %edx,%edx
  404a6e:	ff c2                	inc    %edx
  404a70:	84 c9                	test   %cl,%cl
  404a72:	0f 84 25 09 00 00    	je     40539d <main+0x144d>
  404a78:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  404a7c:	c5 fa 2a c2          	vcvtsi2ss %edx,%xmm0,%xmm0
  404a80:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  404a85:	0f 1f 00             	nopl   (%rax)
  404a88:	c4 e2 69 b9 c1       	vfmadd231ss %xmm1,%xmm2,%xmm0
  404a8d:	ff c8                	dec    %eax
  404a8f:	75 f7                	jne    404a88 <main+0xb38>
  404a91:	c4 c1 7a 59 c4       	vmulss %xmm12,%xmm0,%xmm0
  404a96:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  404a9a:	c5 db 58 e0          	vaddsd %xmm0,%xmm4,%xmm4
  404a9e:	83 fa 0c             	cmp    $0xc,%edx
  404aa1:	75 cb                	jne    404a6e <main+0xb1e>
  404aa3:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  404aa7:	c5 e3 2a 44 24 64    	vcvtsi2sdl 0x64(%rsp),%xmm3,%xmm0
  404aad:	c5 fb 59 c4          	vmulsd %xmm4,%xmm0,%xmm0
  404ab1:	c5 fb 11 84 24 90 00 	vmovsd %xmm0,0x90(%rsp)
  404ab8:	00 00 
  404aba:	80 7c 24 5a 00       	cmpb   $0x0,0x5a(%rsp)
  404abf:	48 c7 84 24 98 00 00 	movq   $0x0,0x98(%rsp)
  404ac6:	00 00 00 00 00 
  404acb:	c5 79 7f 9c 24 50 01 	vmovdqa %xmm11,0x150(%rsp)
  404ad2:	00 00 
  404ad4:	c5 79 7f 94 24 60 01 	vmovdqa %xmm10,0x160(%rsp)
  404adb:	00 00 
  404add:	c5 79 7f b4 24 70 01 	vmovdqa %xmm14,0x170(%rsp)
  404ae4:	00 00 
  404ae6:	c5 79 7f 8c 24 80 01 	vmovdqa %xmm9,0x180(%rsp)
  404aed:	00 00 
  404aef:	c5 79 7f 84 24 90 01 	vmovdqa %xmm8,0x190(%rsp)
  404af6:	00 00 
  404af8:	c5 f9 7f bc 24 a0 01 	vmovdqa %xmm7,0x1a0(%rsp)
  404aff:	00 00 
  404b01:	c5 f9 7f b4 24 b0 01 	vmovdqa %xmm6,0x1b0(%rsp)
  404b08:	00 00 
  404b0a:	c5 f9 7f ac 24 c0 01 	vmovdqa %xmm5,0x1c0(%rsp)
  404b11:	00 00 
  404b13:	0f 84 31 0a 00 00    	je     40554a <main+0x15fa>
  404b19:	80 7c 24 58 00       	cmpb   $0x0,0x58(%rsp)
  404b1e:	be 03 b1 40 00       	mov    $0x40b103,%esi
  404b23:	75 2b                	jne    404b50 <main+0xc00>
  404b25:	80 7c 24 59 00       	cmpb   $0x0,0x59(%rsp)
  404b2a:	be 1c b1 40 00       	mov    $0x40b11c,%esi
  404b2f:	75 1f                	jne    404b50 <main+0xc00>
  404b31:	80 7c 24 5a 00       	cmpb   $0x0,0x5a(%rsp)
  404b36:	be 2b b1 40 00       	mov    $0x40b12b,%esi
  404b3b:	75 13                	jne    404b50 <main+0xc00>
  404b3d:	80 7c 24 5d 00       	cmpb   $0x0,0x5d(%rsp)
  404b42:	be 39 b1 40 00       	mov    $0x40b139,%esi
  404b47:	b8 10 b1 40 00       	mov    $0x40b110,%eax
  404b4c:	48 0f 44 f0          	cmove  %rax,%rsi
  404b50:	48 8d bc 24 c0 00 00 	lea    0xc0(%rsp),%rdi
  404b57:	00 
  404b58:	e8 d3 29 00 00       	callq  407530 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404b5d:	80 7c 24 58 00       	cmpb   $0x0,0x58(%rsp)
  404b62:	be 08 b3 40 00       	mov    $0x40b308,%esi
  404b67:	75 26                	jne    404b8f <main+0xc3f>
  404b69:	80 7c 24 5a 00       	cmpb   $0x0,0x5a(%rsp)
  404b6e:	75 1f                	jne    404b8f <main+0xc3f>
  404b70:	80 7c 24 5d 00       	cmpb   $0x0,0x5d(%rsp)
  404b75:	be 4c b1 40 00       	mov    $0x40b14c,%esi
  404b7a:	75 13                	jne    404b8f <main+0xc3f>
  404b7c:	80 7c 24 5b 00       	cmpb   $0x0,0x5b(%rsp)
  404b81:	be 47 b1 40 00       	mov    $0x40b147,%esi
  404b86:	b8 42 b1 40 00       	mov    $0x40b142,%eax
  404b8b:	48 0f 44 f0          	cmove  %rax,%rsi
  404b8f:	48 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%rdi
  404b96:	00 
  404b97:	e8 94 29 00 00       	callq  407530 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404b9c:	80 7c 24 5d 00       	cmpb   $0x0,0x5d(%rsp)
  404ba1:	be 51 b1 40 00       	mov    $0x40b151,%esi
  404ba6:	75 1f                	jne    404bc7 <main+0xc77>
  404ba8:	80 7c 24 59 00       	cmpb   $0x0,0x59(%rsp)
  404bad:	be 72 b1 40 00       	mov    $0x40b172,%esi
  404bb2:	75 13                	jne    404bc7 <main+0xc77>
  404bb4:	80 7c 24 5a 00       	cmpb   $0x0,0x5a(%rsp)
  404bb9:	be 8e b1 40 00       	mov    $0x40b18e,%esi
  404bbe:	b8 64 b1 40 00       	mov    $0x40b164,%eax
  404bc3:	48 0f 44 f0          	cmove  %rax,%rsi
  404bc7:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  404bce:	00 
  404bcf:	e8 5c 29 00 00       	callq  407530 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404bd4:	48 8b 05 a5 96 00 00 	mov    0x96a5(%rip),%rax        # 40e280 <_ZSt4cout@@GLIBCXX_3.4>
  404bdb:	ba 0e 00 00 00       	mov    $0xe,%edx
  404be0:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  404be4:	be 06 b2 40 00       	mov    $0x40b206,%esi
  404be9:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  404bee:	48 c7 80 88 e2 40 00 	movq   $0xf,0x40e288(%rax)
  404bf5:	0f 00 00 00 
  404bf9:	e8 e2 e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404bfe:	48 8b 94 24 c8 00 00 	mov    0xc8(%rsp),%rdx
  404c05:	00 
  404c06:	48 8b b4 24 c0 00 00 	mov    0xc0(%rsp),%rsi
  404c0d:	00 
  404c0e:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  404c13:	e8 c8 e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404c18:	ba 0c 00 00 00       	mov    $0xc,%edx
  404c1d:	be 15 b2 40 00       	mov    $0x40b215,%esi
  404c22:	48 89 c7             	mov    %rax,%rdi
  404c25:	48 89 c5             	mov    %rax,%rbp
  404c28:	e8 b3 e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404c2d:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
  404c34:	00 
  404c35:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
  404c3c:	00 
  404c3d:	48 89 ef             	mov    %rbp,%rdi
  404c40:	e8 9b e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404c45:	ba 0b 00 00 00       	mov    $0xb,%edx
  404c4a:	be 22 b2 40 00       	mov    $0x40b222,%esi
  404c4f:	48 89 c7             	mov    %rax,%rdi
  404c52:	48 89 c5             	mov    %rax,%rbp
  404c55:	e8 86 e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404c5a:	48 8b 94 24 e8 00 00 	mov    0xe8(%rsp),%rdx
  404c61:	00 
  404c62:	48 8b b4 24 e0 00 00 	mov    0xe0(%rsp),%rsi
  404c69:	00 
  404c6a:	48 89 ef             	mov    %rbp,%rdi
  404c6d:	e8 6e e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404c72:	ba 14 00 00 00       	mov    $0x14,%edx
  404c77:	be 2e b2 40 00       	mov    $0x40b22e,%esi
  404c7c:	48 89 c7             	mov    %rax,%rdi
  404c7f:	48 89 c5             	mov    %rax,%rbp
  404c82:	e8 59 e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404c87:	48 8b 94 24 08 01 00 	mov    0x108(%rsp),%rdx
  404c8e:	00 
  404c8f:	48 8b b4 24 00 01 00 	mov    0x100(%rsp),%rsi
  404c96:	00 
  404c97:	48 89 ef             	mov    %rbp,%rdi
  404c9a:	e8 41 e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404c9f:	ba 0c 00 00 00       	mov    $0xc,%edx
  404ca4:	be 43 b2 40 00       	mov    $0x40b243,%esi
  404ca9:	48 89 c7             	mov    %rax,%rdi
  404cac:	48 89 c5             	mov    %rax,%rbp
  404caf:	e8 2c e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404cb4:	8b 74 24 64          	mov    0x64(%rsp),%esi
  404cb8:	48 89 ef             	mov    %rbp,%rdi
  404cbb:	e8 60 e7 ff ff       	callq  403420 <_ZNSolsEi@plt>
  404cc0:	ba 15 00 00 00       	mov    $0x15,%edx
  404cc5:	be 50 b2 40 00       	mov    $0x40b250,%esi
  404cca:	48 89 c7             	mov    %rax,%rdi
  404ccd:	48 89 c5             	mov    %rax,%rbp
  404cd0:	e8 0b e6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404cd5:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  404cda:	80 7c 24 58 00       	cmpb   $0x0,0x58(%rsp)
  404cdf:	48 89 c6             	mov    %rax,%rsi
  404ce2:	75 12                	jne    404cf6 <main+0xda6>
  404ce4:	80 7c 24 59 00       	cmpb   $0x0,0x59(%rsp)
  404ce9:	75 0b                	jne    404cf6 <main+0xda6>
  404ceb:	31 f6                	xor    %esi,%esi
  404ced:	80 7c 24 5a 00       	cmpb   $0x0,0x5a(%rsp)
  404cf2:	48 0f 45 f0          	cmovne %rax,%rsi
  404cf6:	48 89 ef             	mov    %rbp,%rdi
  404cf9:	e8 e2 e4 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  404cfe:	ba 05 00 00 00       	mov    $0x5,%edx
  404d03:	be 66 b2 40 00       	mov    $0x40b266,%esi
  404d08:	48 89 c7             	mov    %rax,%rdi
  404d0b:	48 89 c5             	mov    %rax,%rbp
  404d0e:	e8 cd e5 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404d13:	8b 74 24 60          	mov    0x60(%rsp),%esi
  404d17:	48 89 ef             	mov    %rbp,%rdi
  404d1a:	e8 01 e7 ff ff       	callq  403420 <_ZNSolsEi@plt>
  404d1f:	48 89 c7             	mov    %rax,%rdi
  404d22:	be 6c b2 40 00       	mov    $0x40b26c,%esi
  404d27:	e8 64 e5 ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  404d2c:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%rsp)
  404d33:	00 
  404d34:	c5 fb 10 44 24 40    	vmovsd 0x40(%rsp),%xmm0
  404d3a:	8b 7c 24 20          	mov    0x20(%rsp),%edi
  404d3e:	e8 dd 28 00 00       	callq  407620 <_Z6windowid>
  404d43:	c5 fb 10 6c 24 40    	vmovsd 0x40(%rsp),%xmm5
  404d49:	48 89 c3             	mov    %rax,%rbx
  404d4c:	c5 d3 59 05 4c 67 00 	vmulsd 0x674c(%rip),%xmm5,%xmm0        # 40b4a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x180>
  404d53:	00 
  404d54:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  404d59:	c4 c1 f9 6e f7       	vmovq  %r15,%xmm6
  404d5e:	48 8d 84 24 98 01 00 	lea    0x198(%rsp),%rax
  404d65:	00 
  404d66:	c4 e3 c9 22 f8 01    	vpinsrq $0x1,%rax,%xmm6,%xmm7
  404d6c:	62 f1 ff 08 78 c0    	vcvttsd2usi %xmm0,%rax
  404d72:	4c 8d b4 24 20 01 00 	lea    0x120(%rsp),%r14
  404d79:	00 
  404d7a:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  404d7e:	4c 89 f6             	mov    %r14,%rsi
  404d81:	bf 01 00 00 00       	mov    $0x1,%edi
  404d86:	4c 8d 24 18          	lea    (%rax,%rbx,1),%r12
  404d8a:	c5 f9 7f 3c 24       	vmovdqa %xmm7,(%rsp)
  404d8f:	c5 f9 7f 84 24 20 01 	vmovdqa %xmm0,0x120(%rsp)
  404d96:	00 00 
  404d98:	e8 e3 e4 ff ff       	callq  403280 <clock_gettime@plt>
  404d9d:	b8 eb 08 bf 01       	mov    $0x1bf08eb,%eax
  404da2:	48 c1 e0 0a          	shl    $0xa,%rax
  404da6:	48 0f af 84 24 20 01 	imul   0x120(%rsp),%rax
  404dad:	00 00 
  404daf:	31 db                	xor    %ebx,%ebx
  404db1:	31 ed                	xor    %ebp,%ebp
  404db3:	48 03 84 24 28 01 00 	add    0x128(%rsp),%rax
  404dba:	00 
  404dbb:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  404dc0:	e9 97 01 00 00       	jmpq   404f5c <main+0x100c>
  404dc5:	0f 1f 00             	nopl   (%rax)
  404dc8:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  404dcf:	00 
  404dd0:	80 38 00             	cmpb   $0x0,(%rax)
  404dd3:	0f 85 cf 02 00 00    	jne    4050a8 <main+0x1158>
  404dd9:	48 8b 84 24 88 01 00 	mov    0x188(%rsp),%rax
  404de0:	00 
  404de1:	44 0f b6 28          	movzbl (%rax),%r13d
  404de5:	45 84 ed             	test   %r13b,%r13b
  404de8:	0f 85 42 02 00 00    	jne    405030 <main+0x10e0>
  404dee:	c5 f9 6f 3c 24       	vmovdqa (%rsp),%xmm7
  404df3:	48 8d 84 24 a0 01 00 	lea    0x1a0(%rsp),%rax
  404dfa:	00 
  404dfb:	31 d2                	xor    %edx,%edx
  404dfd:	31 c9                	xor    %ecx,%ecx
  404dff:	4c 89 f6             	mov    %r14,%rsi
  404e02:	bf c0 5c 40 00       	mov    $0x405cc0,%edi
  404e07:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  404e0e:	00 
  404e0f:	c7 84 24 40 01 00 00 	movl   $0x0,0x140(%rsp)
  404e16:	00 00 00 00 
  404e1a:	48 c7 84 24 38 01 00 	movq   $0x0,0x138(%rsp)
  404e21:	00 00 00 00 00 
  404e26:	c5 f9 7f bc 24 20 01 	vmovdqa %xmm7,0x120(%rsp)
  404e2d:	00 00 
  404e2f:	e8 4c e5 ff ff       	callq  403380 <GOMP_parallel@plt>
  404e34:	8b 84 24 40 01 00 00 	mov    0x140(%rsp),%eax
  404e3b:	c5 fb 10 8c 24 38 01 	vmovsd 0x138(%rsp),%xmm1
  404e42:	00 00 
  404e44:	48 8b 94 24 a8 01 00 	mov    0x1a8(%rsp),%rdx
  404e4b:	00 
  404e4c:	c5 fb 11 0a          	vmovsd %xmm1,(%rdx)
  404e50:	85 c0                	test   %eax,%eax
  404e52:	75 22                	jne    404e76 <main+0xf26>
  404e54:	c5 f1 54 05 04 67 00 	vandpd 0x6704(%rip),%xmm1,%xmm0        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  404e5b:	00 
  404e5c:	c5 fb 10 15 14 66 00 	vmovsd 0x6614(%rip),%xmm2        # 40b478 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  404e63:	00 
  404e64:	c5 f9 2e d0          	vucomisd %xmm0,%xmm2
  404e68:	72 0c                	jb     404e76 <main+0xf26>
  404e6a:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  404e6e:	c5 f9 2f cc          	vcomisd %xmm4,%xmm1
  404e72:	41 0f 97 c5          	seta   %r13b
  404e76:	48 8b 84 24 b0 01 00 	mov    0x1b0(%rsp),%rax
  404e7d:	00 
  404e7e:	48 8b 8c 24 a0 01 00 	mov    0x1a0(%rsp),%rcx
  404e85:	00 
  404e86:	44 22 28             	and    (%rax),%r13b
  404e89:	44 88 28             	mov    %r13b,(%rax)
  404e8c:	80 39 00             	cmpb   $0x0,(%rcx)
  404e8f:	75 0d                	jne    404e9e <main+0xf4e>
  404e91:	48 8b 94 24 b8 01 00 	mov    0x1b8(%rsp),%rdx
  404e98:	00 
  404e99:	80 3a 00             	cmpb   $0x0,(%rdx)
  404e9c:	74 3c                	je     404eda <main+0xf8a>
  404e9e:	48 8b 94 24 c0 01 00 	mov    0x1c0(%rsp),%rdx
  404ea5:	00 
  404ea6:	c5 fb 10 15 c2 65 00 	vmovsd 0x65c2(%rip),%xmm2        # 40b470 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  404ead:	00 
  404eae:	c5 fb 10 02          	vmovsd (%rdx),%xmm0
  404eb2:	c5 f3 5c c8          	vsubsd %xmm0,%xmm1,%xmm1
  404eb6:	c5 f9 54 05 a2 66 00 	vandpd 0x66a2(%rip),%xmm0,%xmm0        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  404ebd:	00 
  404ebe:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  404ec2:	c5 f1 54 0d 96 66 00 	vandpd 0x6696(%rip),%xmm1,%xmm1        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  404ec9:	00 
  404eca:	c5 fb 5f c2          	vmaxsd %xmm2,%xmm0,%xmm0
  404ece:	c5 f9 2f c1          	vcomisd %xmm1,%xmm0
  404ed2:	0f 97 c2             	seta   %dl
  404ed5:	44 21 ea             	and    %r13d,%edx
  404ed8:	88 10                	mov    %dl,(%rax)
  404eda:	48 8b b4 24 98 01 00 	mov    0x198(%rsp),%rsi
  404ee1:	00 
  404ee2:	48 8b 84 24 c8 01 00 	mov    0x1c8(%rsp),%rax
  404ee9:	00 
  404eea:	80 3e 00             	cmpb   $0x0,(%rsi)
  404eed:	48 63 00             	movslq (%rax),%rax
  404ef0:	48 ba 00 00 00 00 04 	movabs $0x400000000,%rdx
  404ef7:	00 00 00 
  404efa:	75 14                	jne    404f10 <main+0xfc0>
  404efc:	80 39 01             	cmpb   $0x1,(%rcx)
  404eff:	48 19 d2             	sbb    %rdx,%rdx
  404f02:	48 81 e2 00 f0 aa dd 	and    $0xffffffffddaaf000,%rdx
  404f09:	48 81 c2 00 20 aa 44 	add    $0x44aa2000,%rdx
  404f10:	48 0f af c2          	imul   %rdx,%rax
  404f14:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  404f18:	4c 89 f6             	mov    %r14,%rsi
  404f1b:	bf 01 00 00 00       	mov    $0x1,%edi
  404f20:	48 01 c5             	add    %rax,%rbp
  404f23:	c5 f9 7f 84 24 20 01 	vmovdqa %xmm0,0x120(%rsp)
  404f2a:	00 00 
  404f2c:	e8 4f e3 ff ff       	callq  403280 <clock_gettime@plt>
  404f31:	48 b8 00 ac 23 fc 06 	movabs $0x6fc23ac00,%rax
  404f38:	00 00 00 
  404f3b:	48 0f af 84 24 20 01 	imul   0x120(%rsp),%rax
  404f42:	00 00 
  404f44:	48 ff c3             	inc    %rbx
  404f47:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  404f4b:	48 03 84 24 28 01 00 	add    0x128(%rsp),%rax
  404f52:	00 
  404f53:	49 39 c4             	cmp    %rax,%r12
  404f56:	0f 86 b8 01 00 00    	jbe    405114 <main+0x11c4>
  404f5c:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  404f63:	00 
  404f64:	80 38 00             	cmpb   $0x0,(%rax)
  404f67:	0f 84 5b fe ff ff    	je     404dc8 <main+0xe78>
  404f6d:	48 8b 8c 24 58 01 00 	mov    0x158(%rsp),%rcx
  404f74:	00 
  404f75:	b8 00 00 01 00       	mov    $0x10000,%eax
  404f7a:	48 8b 11             	mov    (%rcx),%rdx
  404f7d:	0f 1f 00             	nopl   (%rax)
  404f80:	48 8b 12             	mov    (%rdx),%rdx
  404f83:	48 89 11             	mov    %rdx,(%rcx)
  404f86:	ff c8                	dec    %eax
  404f88:	75 f6                	jne    404f80 <main+0x1030>
  404f8a:	b8 00 00 01 00       	mov    $0x10000,%eax
  404f8f:	eb 83                	jmp    404f14 <main+0xfc4>
  404f91:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  404f96:	31 d2                	xor    %edx,%edx
  404f98:	b9 18 00 00 00       	mov    $0x18,%ecx
  404f9d:	48 f7 f1             	div    %rcx
  404fa0:	48 83 e0 c0          	and    $0xffffffffffffffc0,%rax
  404fa4:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  404fa9:	0f 84 79 f1 ff ff    	je     404128 <main+0x1d8>
  404faf:	48 6b c8 18          	imul   $0x18,%rax,%rcx
  404fb3:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
  404fba:	00 
  404fbb:	48 89 ee             	mov    %rbp,%rsi
  404fbe:	bf 40 00 00 00       	mov    $0x40,%edi
  404fc3:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
  404fc8:	e8 43 e2 ff ff       	callq  403210 <aligned_alloc@plt>
  404fcd:	48 89 ee             	mov    %rbp,%rsi
  404fd0:	bf 40 00 00 00       	mov    $0x40,%edi
  404fd5:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  404fda:	49 89 c5             	mov    %rax,%r13
  404fdd:	e8 2e e2 ff ff       	callq  403210 <aligned_alloc@plt>
  404fe2:	48 89 ee             	mov    %rbp,%rsi
  404fe5:	bf 40 00 00 00       	mov    $0x40,%edi
  404fea:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  404fef:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  404ff4:	e8 17 e2 ff ff       	callq  403210 <aligned_alloc@plt>
  404ff9:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  404ffe:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
  405005:	00 
  405006:	48 85 d2             	test   %rdx,%rdx
  405009:	0f 84 b8 ee ff ff    	je     403ec7 <main.cold+0x240>
  40500f:	4d 85 ed             	test   %r13,%r13
  405012:	0f 84 fb 05 00 00    	je     405613 <main+0x16c3>
  405018:	48 85 c0             	test   %rax,%rax
  40501b:	0f 85 a8 f7 ff ff    	jne    4047c9 <main+0x879>
  405021:	e9 a1 ee ff ff       	jmpq   403ec7 <main.cold+0x240>
  405026:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40502d:	00 00 00 
  405030:	48 8d 84 24 68 01 00 	lea    0x168(%rsp),%rax
  405037:	00 
  405038:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
  40503f:	00 
  405040:	48 8d 84 24 70 01 00 	lea    0x170(%rsp),%rax
  405047:	00 
  405048:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40504f:	00 
  405050:	48 8d 84 24 78 01 00 	lea    0x178(%rsp),%rax
  405057:	00 
  405058:	48 89 84 24 38 01 00 	mov    %rax,0x138(%rsp)
  40505f:	00 
  405060:	31 d2                	xor    %edx,%edx
  405062:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  405069:	00 
  40506a:	31 c9                	xor    %ecx,%ecx
  40506c:	4c 89 f6             	mov    %r14,%rsi
  40506f:	bf d0 5a 40 00       	mov    $0x405ad0,%edi
  405074:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
  40507b:	00 
  40507c:	4c 89 bc 24 20 01 00 	mov    %r15,0x120(%rsp)
  405083:	00 
  405084:	e8 f7 e2 ff ff       	callq  403380 <GOMP_parallel@plt>
  405089:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  405090:	00 
  405091:	48 8b 94 24 68 01 00 	mov    0x168(%rsp),%rdx
  405098:	00 
  405099:	48 63 00             	movslq (%rax),%rax
  40509c:	48 0f af 02          	imul   (%rdx),%rax
  4050a0:	48 01 c0             	add    %rax,%rax
  4050a3:	e9 6c fe ff ff       	jmpq   404f14 <main+0xfc4>
  4050a8:	48 8d 84 24 68 01 00 	lea    0x168(%rsp),%rax
  4050af:	00 
  4050b0:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
  4050b7:	00 
  4050b8:	48 8d 84 24 70 01 00 	lea    0x170(%rsp),%rax
  4050bf:	00 
  4050c0:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  4050c7:	00 
  4050c8:	48 8d 84 24 78 01 00 	lea    0x178(%rsp),%rax
  4050cf:	00 
  4050d0:	48 89 84 24 38 01 00 	mov    %rax,0x138(%rsp)
  4050d7:	00 
  4050d8:	31 c9                	xor    %ecx,%ecx
  4050da:	48 8d 84 24 80 01 00 	lea    0x180(%rsp),%rax
  4050e1:	00 
  4050e2:	31 d2                	xor    %edx,%edx
  4050e4:	4c 89 f6             	mov    %r14,%rsi
  4050e7:	bf 00 59 40 00       	mov    $0x405900,%edi
  4050ec:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
  4050f3:	00 
  4050f4:	4c 89 bc 24 20 01 00 	mov    %r15,0x120(%rsp)
  4050fb:	00 
  4050fc:	e8 7f e2 ff ff       	callq  403380 <GOMP_parallel@plt>
  405101:	48 8b 84 24 68 01 00 	mov    0x168(%rsp),%rax
  405108:	00 
  405109:	48 8b 00             	mov    (%rax),%rax
  40510c:	48 01 c0             	add    %rax,%rax
  40510f:	e9 00 fe ff ff       	jmpq   404f14 <main+0xfc4>
  405114:	4c 89 f6             	mov    %r14,%rsi
  405117:	bf 01 00 00 00       	mov    $0x1,%edi
  40511c:	49 bd 00 ac 23 fc 06 	movabs $0x6fc23ac00,%r13
  405123:	00 00 00 
  405126:	c5 f9 7f 84 24 20 01 	vmovdqa %xmm0,0x120(%rsp)
  40512d:	00 00 
  40512f:	e8 4c e1 ff ff       	callq  403280 <clock_gettime@plt>
  405134:	4c 0f af ac 24 20 01 	imul   0x120(%rsp),%r13
  40513b:	00 00 
  40513d:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  405141:	4c 03 ac 24 28 01 00 	add    0x128(%rsp),%r13
  405148:	00 
  405149:	4c 89 e8             	mov    %r13,%rax
  40514c:	48 2b 44 24 10       	sub    0x10(%rsp),%rax
  405151:	62 f1 df 08 7b c0    	vcvtusi2sd %rax,%xmm4,%xmm0
  405157:	83 7c 24 20 00       	cmpl   $0x0,0x20(%rsp)
  40515c:	c5 fb 59 2d 44 63 00 	vmulsd 0x6344(%rip),%xmm0,%xmm5        # 40b4a8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x188>
  405163:	00 
  405164:	c4 c1 f9 7e ec       	vmovq  %xmm5,%r12
  405169:	74 19                	je     405184 <main+0x1234>
  40516b:	ba 01 00 00 00       	mov    $0x1,%edx
  405170:	48 8d 74 24 5f       	lea    0x5f(%rsp),%rsi
  405175:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  40517a:	c6 44 24 5f 2c       	movb   $0x2c,0x5f(%rsp)
  40517f:	e8 5c e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405184:	ba 13 00 00 00       	mov    $0x13,%edx
  405189:	be 82 b2 40 00       	mov    $0x40b282,%esi
  40518e:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  405193:	e8 48 e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405198:	c4 c1 f9 6e c4       	vmovq  %r12,%xmm0
  40519d:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  4051a2:	e8 29 e2 ff ff       	callq  4033d0 <_ZNSo9_M_insertIdEERSoT_@plt>
  4051a7:	ba 0c 00 00 00       	mov    $0xc,%edx
  4051ac:	be 96 b2 40 00       	mov    $0x40b296,%esi
  4051b1:	48 89 c7             	mov    %rax,%rdi
  4051b4:	49 89 c4             	mov    %rax,%r12
  4051b7:	e8 24 e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4051bc:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  4051c1:	4c 89 e7             	mov    %r12,%rdi
  4051c4:	e8 17 e0 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  4051c9:	ba 0a 00 00 00       	mov    $0xa,%edx
  4051ce:	be a3 b2 40 00       	mov    $0x40b2a3,%esi
  4051d3:	48 89 c7             	mov    %rax,%rdi
  4051d6:	49 89 c4             	mov    %rax,%r12
  4051d9:	e8 02 e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4051de:	4c 89 ee             	mov    %r13,%rsi
  4051e1:	4c 89 e7             	mov    %r12,%rdi
  4051e4:	e8 f7 df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  4051e9:	ba 14 00 00 00       	mov    $0x14,%edx
  4051ee:	be ae b2 40 00       	mov    $0x40b2ae,%esi
  4051f3:	48 89 c7             	mov    %rax,%rdi
  4051f6:	49 89 c4             	mov    %rax,%r12
  4051f9:	e8 e2 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4051fe:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  405203:	4c 89 e7             	mov    %r12,%rdi
  405206:	e8 d5 df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  40520b:	ba 0e 00 00 00       	mov    $0xe,%edx
  405210:	be c3 b2 40 00       	mov    $0x40b2c3,%esi
  405215:	48 89 c7             	mov    %rax,%rdi
  405218:	49 89 c4             	mov    %rax,%r12
  40521b:	e8 c0 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405220:	31 f6                	xor    %esi,%esi
  405222:	80 7c 24 5a 00       	cmpb   $0x0,0x5a(%rsp)
  405227:	48 0f 44 f5          	cmove  %rbp,%rsi
  40522b:	4c 89 e7             	mov    %r12,%rdi
  40522e:	e8 ad df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405233:	ba 11 00 00 00       	mov    $0x11,%edx
  405238:	be d2 b2 40 00       	mov    $0x40b2d2,%esi
  40523d:	48 89 c7             	mov    %rax,%rdi
  405240:	49 89 c4             	mov    %rax,%r12
  405243:	e8 98 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405248:	80 7c 24 58 00       	cmpb   $0x0,0x58(%rsp)
  40524d:	75 09                	jne    405258 <main+0x1308>
  40524f:	31 f6                	xor    %esi,%esi
  405251:	80 7c 24 59 00       	cmpb   $0x0,0x59(%rsp)
  405256:	74 09                	je     405261 <main+0x1311>
  405258:	48 0f af 5c 24 30    	imul   0x30(%rsp),%rbx
  40525e:	48 89 de             	mov    %rbx,%rsi
  405261:	4c 89 e7             	mov    %r12,%rdi
  405264:	e8 77 df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405269:	ba 09 00 00 00       	mov    $0x9,%edx
  40526e:	be e4 b2 40 00       	mov    $0x40b2e4,%esi
  405273:	48 89 c7             	mov    %rax,%rdi
  405276:	49 89 c4             	mov    %rax,%r12
  405279:	e8 62 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40527e:	31 c0                	xor    %eax,%eax
  405280:	80 7c 24 5a 00       	cmpb   $0x0,0x5a(%rsp)
  405285:	48 0f 44 e8          	cmove  %rax,%rbp
  405289:	4c 89 e7             	mov    %r12,%rdi
  40528c:	48 89 ee             	mov    %rbp,%rsi
  40528f:	e8 4c df ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405294:	48 89 c7             	mov    %rax,%rdi
  405297:	ba 01 00 00 00       	mov    $0x1,%edx
  40529c:	4c 89 f6             	mov    %r14,%rsi
  40529f:	c6 84 24 20 01 00 00 	movb   $0x7d,0x120(%rsp)
  4052a6:	7d 
  4052a7:	e8 34 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4052ac:	ff 44 24 20          	incl   0x20(%rsp)
  4052b0:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4052b4:	3b 44 24 4c          	cmp    0x4c(%rsp),%eax
  4052b8:	0f 8c 76 fa ff ff    	jl     404d34 <main+0xde4>
  4052be:	0f b6 5c 24 58       	movzbl 0x58(%rsp),%ebx
  4052c3:	84 db                	test   %bl,%bl
  4052c5:	75 0b                	jne    4052d2 <main+0x1382>
  4052c7:	80 7c 24 59 00       	cmpb   $0x0,0x59(%rsp)
  4052cc:	0f 84 fc 00 00 00    	je     4053ce <main+0x147e>
  4052d2:	4c 8b 44 24 68       	mov    0x68(%rsp),%r8
  4052d7:	b8 01 00 00 00       	mov    $0x1,%eax
  4052dc:	4c 89 c7             	mov    %r8,%rdi
  4052df:	48 c1 ef 0a          	shr    $0xa,%rdi
  4052e3:	48 0f 44 f8          	cmove  %rax,%rdi
  4052e7:	4c 8b 54 24 78       	mov    0x78(%rsp),%r10
  4052ec:	8b 4c 24 60          	mov    0x60(%rsp),%ecx
  4052f0:	4c 8b 9c 24 80 00 00 	mov    0x80(%rsp),%r11
  4052f7:	00 
  4052f8:	4c 8b 4c 24 70       	mov    0x70(%rsp),%r9
  4052fd:	0f b6 74 24 5e       	movzbl 0x5e(%rsp),%esi
  405302:	c5 fb 10 3d fe 60 00 	vmovsd 0x60fe(%rip),%xmm7        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405309:	00 
  40530a:	c5 fb 10 1d 06 61 00 	vmovsd 0x6106(%rip),%xmm3        # 40b418 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  405311:	00 
  405312:	c5 fb 10 15 f6 60 00 	vmovsd 0x60f6(%rip),%xmm2        # 40b410 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  405319:	00 
  40531a:	c5 fa 7e 2d 3e 62 00 	vmovq  0x623e(%rip),%xmm5        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405321:	00 
  405322:	c5 fb 10 35 4e 61 00 	vmovsd 0x614e(%rip),%xmm6        # 40b478 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  405329:	00 
  40532a:	c5 7b 10 05 7e 61 00 	vmovsd 0x617e(%rip),%xmm8        # 40b4b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x190>
  405331:	00 
  405332:	31 c0                	xor    %eax,%eax
  405334:	31 d2                	xor    %edx,%edx
  405336:	eb 43                	jmp    40537b <main+0x142b>
  405338:	c4 c2 c1 b9 04 d3    	vfmadd231sd (%r11,%rdx,8),%xmm7,%xmm0
  40533e:	c4 c1 7b 10 0c d1    	vmovsd (%r9,%rdx,8),%xmm1
  405344:	31 c0                	xor    %eax,%eax
  405346:	c5 f1 54 e5          	vandpd %xmm5,%xmm1,%xmm4
  40534a:	c5 f9 2e f4          	vucomisd %xmm4,%xmm6
  40534e:	72 0f                	jb     40535f <main+0x140f>
  405350:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
  405354:	c5 f9 54 c5          	vandpd %xmm5,%xmm0,%xmm0
  405358:	c5 79 2f c0          	vcomisd %xmm0,%xmm8
  40535c:	0f 97 c0             	seta   %al
  40535f:	c5 f3 58 8c 24 98 00 	vaddsd 0x98(%rsp),%xmm1,%xmm1
  405366:	00 00 
  405368:	21 c6                	and    %eax,%esi
  40536a:	48 01 fa             	add    %rdi,%rdx
  40536d:	c5 fb 11 8c 24 98 00 	vmovsd %xmm1,0x98(%rsp)
  405374:	00 00 
  405376:	b8 01 00 00 00       	mov    $0x1,%eax
  40537b:	49 39 d0             	cmp    %rdx,%r8
  40537e:	76 45                	jbe    4053c5 <main+0x1475>
  405380:	c4 c1 7b 10 04 d2    	vmovsd (%r10,%rdx,8),%xmm0
  405386:	84 db                	test   %bl,%bl
  405388:	75 ae                	jne    405338 <main+0x13e8>
  40538a:	31 c0                	xor    %eax,%eax
  40538c:	85 c9                	test   %ecx,%ecx
  40538e:	7e ae                	jle    40533e <main+0x13ee>
  405390:	ff c0                	inc    %eax
  405392:	c4 e2 e1 99 c2       	vfmadd132sd %xmm2,%xmm3,%xmm0
  405397:	39 c8                	cmp    %ecx,%eax
  405399:	75 f5                	jne    405390 <main+0x1440>
  40539b:	eb a1                	jmp    40533e <main+0x13ee>
  40539d:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  4053a1:	c5 fb 2a c2          	vcvtsi2sd %edx,%xmm0,%xmm0
  4053a5:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  4053aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4053b0:	c4 e2 e1 b9 44 24 20 	vfmadd231sd 0x20(%rsp),%xmm3,%xmm0
  4053b7:	ff c8                	dec    %eax
  4053b9:	75 f5                	jne    4053b0 <main+0x1460>
  4053bb:	c4 c2 f9 b9 e5       	vfmadd231sd %xmm13,%xmm0,%xmm4
  4053c0:	e9 d9 f6 ff ff       	jmpq   404a9e <main+0xb4e>
  4053c5:	84 c0                	test   %al,%al
  4053c7:	74 05                	je     4053ce <main+0x147e>
  4053c9:	40 88 74 24 5e       	mov    %sil,0x5e(%rsp)
  4053ce:	80 7c 24 5a 00       	cmpb   $0x0,0x5a(%rsp)
  4053d3:	74 4f                	je     405424 <main+0x14d4>
  4053d5:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
  4053dc:	00 
  4053dd:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
  4053e2:	0f b6 4c 24 5e       	movzbl 0x5e(%rsp),%ecx
  4053e7:	31 d2                	xor    %edx,%edx
  4053e9:	48 39 d8             	cmp    %rbx,%rax
  4053ec:	72 15                	jb     405403 <main+0x14b3>
  4053ee:	be 06 00 00 00       	mov    $0x6,%esi
  4053f3:	c4 e2 c9 f7 54 24 68 	shlx   %rsi,0x68(%rsp),%rdx
  4053fa:	48 01 da             	add    %rbx,%rdx
  4053fd:	48 39 d0             	cmp    %rdx,%rax
  405400:	0f 92 c2             	setb   %dl
  405403:	48 2b 44 24 38       	sub    0x38(%rsp),%rax
  405408:	48 c1 f8 06          	sar    $0x6,%rax
  40540c:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
  405410:	c4 e1 d3 2a c0       	vcvtsi2sd %rax,%xmm5,%xmm0
  405415:	21 ca                	and    %ecx,%edx
  405417:	88 54 24 5e          	mov    %dl,0x5e(%rsp)
  40541b:	c5 fb 11 84 24 98 00 	vmovsd %xmm0,0x98(%rsp)
  405422:	00 00 
  405424:	ba 0d 00 00 00       	mov    $0xd,%edx
  405429:	be ee b2 40 00       	mov    $0x40b2ee,%esi
  40542e:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  405433:	e8 a8 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405438:	c5 fb 10 84 24 98 00 	vmovsd 0x98(%rsp),%xmm0
  40543f:	00 00 
  405441:	bf 80 e2 40 00       	mov    $0x40e280,%edi
  405446:	e8 85 df ff ff       	callq  4033d0 <_ZNSo9_M_insertIdEERSoT_@plt>
  40544b:	ba 09 00 00 00       	mov    $0x9,%edx
  405450:	be fc b2 40 00       	mov    $0x40b2fc,%esi
  405455:	48 89 c7             	mov    %rax,%rdi
  405458:	48 89 c5             	mov    %rax,%rbp
  40545b:	e8 80 de ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405460:	80 7c 24 5e 00       	cmpb   $0x0,0x5e(%rsp)
  405465:	be aa b1 40 00       	mov    $0x40b1aa,%esi
  40546a:	b8 af b1 40 00       	mov    $0x40b1af,%eax
  40546f:	48 0f 44 f0          	cmove  %rax,%rsi
  405473:	48 89 ef             	mov    %rbp,%rdi
  405476:	e8 15 de ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40547b:	48 89 c7             	mov    %rax,%rdi
  40547e:	be 06 b3 40 00       	mov    $0x40b306,%esi
  405483:	e8 08 de ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  405488:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  40548d:	e8 6e de ff ff       	callq  403300 <free@plt>
  405492:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
  405497:	e8 64 de ff ff       	callq  403300 <free@plt>
  40549c:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
  4054a3:	00 
  4054a4:	e8 57 de ff ff       	callq  403300 <free@plt>
  4054a9:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  4054ae:	e8 4d de ff ff       	callq  403300 <free@plt>
  4054b3:	44 0f b6 64 24 5e    	movzbl 0x5e(%rsp),%r12d
  4054b9:	48 8b bc 24 00 01 00 	mov    0x100(%rsp),%rdi
  4054c0:	00 
  4054c1:	41 83 f4 01          	xor    $0x1,%r12d
  4054c5:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  4054cc:	00 
  4054cd:	45 0f b6 e4          	movzbl %r12b,%r12d
  4054d1:	48 39 c7             	cmp    %rax,%rdi
  4054d4:	74 11                	je     4054e7 <main+0x1597>
  4054d6:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
  4054dd:	00 
  4054de:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4054e2:	e8 c9 dd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4054e7:	48 8b bc 24 e0 00 00 	mov    0xe0(%rsp),%rdi
  4054ee:	00 
  4054ef:	48 8d 84 24 f0 00 00 	lea    0xf0(%rsp),%rax
  4054f6:	00 
  4054f7:	48 39 c7             	cmp    %rax,%rdi
  4054fa:	74 11                	je     40550d <main+0x15bd>
  4054fc:	48 8b 84 24 f0 00 00 	mov    0xf0(%rsp),%rax
  405503:	00 
  405504:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405508:	e8 a3 dd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40550d:	48 8b bc 24 c0 00 00 	mov    0xc0(%rsp),%rdi
  405514:	00 
  405515:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
  40551c:	00 
  40551d:	48 39 c7             	cmp    %rax,%rdi
  405520:	0f 84 08 ec ff ff    	je     40412e <main+0x1de>
  405526:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40552d:	00 
  40552e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405532:	e8 79 dd ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405537:	e9 f2 eb ff ff       	jmpq   40412e <main+0x1de>
  40553c:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  405543:	00 00 
  405545:	e9 3b f4 ff ff       	jmpq   404985 <main+0xa35>
  40554a:	4c 89 ff             	mov    %r15,%rdi
  40554d:	e8 ce 1d 00 00       	callq  407320 <_ZZ4mainENKUlvE_clEv>
  405552:	4c 89 ff             	mov    %r15,%rdi
  405555:	e8 c6 1d 00 00       	callq  407320 <_ZZ4mainENKUlvE_clEv>
  40555a:	e9 ba f5 ff ff       	jmpq   404b19 <main+0xbc9>
  40555f:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  405564:	e8 87 dc ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  405569:	bf c4 b1 40 00       	mov    $0x40b1c4,%edi
  40556e:	e8 ed dd ff ff       	callq  403360 <_ZSt20__throw_out_of_rangePKc@plt>
  405573:	bf c4 b1 40 00       	mov    $0x40b1c4,%edi
  405578:	e8 23 dc ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40557d:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  405584:	00 
  405585:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40558a:	4c 89 ef             	mov    %r13,%rdi
  40558d:	e9 18 ef ff ff       	jmpq   4044aa <main+0x55a>
  405592:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  405597:	e8 54 dc ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40559c:	bf d5 b1 40 00       	mov    $0x40b1d5,%edi
  4055a1:	e8 fa db ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  4055a6:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4055ab:	e8 40 dc ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4055b0:	48 89 ef             	mov    %rbp,%rdi
  4055b3:	e9 25 ed ff ff       	jmpq   4042dd <main+0x38d>
  4055b8:	48 89 c3             	mov    %rax,%rbx
  4055bb:	49 89 d6             	mov    %rdx,%r14
  4055be:	e9 c4 e6 ff ff       	jmpq   403c87 <main.cold>
  4055c3:	e9 8a e7 ff ff       	jmpq   403d52 <main.cold+0xcb>
  4055c8:	48 89 c3             	mov    %rax,%rbx
  4055cb:	49 89 d6             	mov    %rdx,%r14
  4055ce:	e9 db e7 ff ff       	jmpq   403dae <main.cold+0x127>
  4055d3:	48 89 c7             	mov    %rax,%rdi
  4055d6:	48 89 d5             	mov    %rdx,%rbp
  4055d9:	c5 f8 77             	vzeroupper 
  4055dc:	e9 24 e7 ff ff       	jmpq   403d05 <main.cold+0x7e>
  4055e1:	48 89 c3             	mov    %rax,%rbx
  4055e4:	49 89 d6             	mov    %rdx,%r14
  4055e7:	e9 94 e7 ff ff       	jmpq   403d80 <main.cold+0xf9>
  4055ec:	48 89 c3             	mov    %rax,%rbx
  4055ef:	49 89 d6             	mov    %rdx,%r14
  4055f2:	c5 f8 77             	vzeroupper 
  4055f5:	e9 c1 e6 ff ff       	jmpq   403cbb <main.cold+0x34>
  4055fa:	48 89 c3             	mov    %rax,%rbx
  4055fd:	48 89 d5             	mov    %rdx,%rbp
  405600:	e9 3f e8 ff ff       	jmpq   403e44 <main.cold+0x1bd>
  405605:	48 89 c3             	mov    %rax,%rbx
  405608:	48 89 d5             	mov    %rdx,%rbp
  40560b:	c5 f8 77             	vzeroupper 
  40560e:	e9 5a e8 ff ff       	jmpq   403e6d <main.cold+0x1e6>
  405613:	e9 af e8 ff ff       	jmpq   403ec7 <main.cold+0x240>
  405618:	48 89 c3             	mov    %rax,%rbx
  40561b:	48 89 d5             	mov    %rdx,%rbp
  40561e:	c5 f8 77             	vzeroupper 
  405621:	e9 6d e8 ff ff       	jmpq   403e93 <main.cold+0x20c>
  405626:	48 89 c3             	mov    %rax,%rbx
  405629:	49 89 d6             	mov    %rdx,%r14
  40562c:	e9 dc e8 ff ff       	jmpq   403f0d <main.cold+0x286>
  405631:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  405638:	00 00 00 00 
  40563c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405640 <_GLOBAL__sub_I__Z8clock_nsv>:
  405640:	48 83 ec 08          	sub    $0x8,%rsp
  405644:	bf b1 e4 40 00       	mov    $0x40e4b1,%edi
  405649:	e8 42 dd ff ff       	callq  403390 <_ZNSt8ios_base4InitC1Ev@plt>
  40564e:	ba 08 b0 40 00       	mov    $0x40b008,%edx
  405653:	be b1 e4 40 00       	mov    $0x40e4b1,%esi
  405658:	bf 90 34 40 00       	mov    $0x403490,%edi
  40565d:	48 83 c4 08          	add    $0x8,%rsp
  405661:	e9 fa db ff ff       	jmpq   403260 <__cxa_atexit@plt>
  405666:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40566d:	00 00 00 

0000000000405670 <_start>:
  405670:	f3 0f 1e fa          	endbr64 
  405674:	31 ed                	xor    %ebp,%ebp
  405676:	49 89 d1             	mov    %rdx,%r9
  405679:	5e                   	pop    %rsi
  40567a:	48 89 e2             	mov    %rsp,%rdx
  40567d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  405681:	50                   	push   %rax
  405682:	54                   	push   %rsp
  405683:	45 31 c0             	xor    %r8d,%r8d
  405686:	31 c9                	xor    %ecx,%ecx
  405688:	48 c7 c7 50 3f 40 00 	mov    $0x403f50,%rdi
  40568f:	ff 15 33 89 00 00    	callq  *0x8933(%rip)        # 40dfc8 <__libc_start_main@GLIBC_2.34>
  405695:	f4                   	hlt    
  405696:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40569d:	00 00 00 

00000000004056a0 <_dl_relocate_static_pie>:
  4056a0:	f3 0f 1e fa          	endbr64 
  4056a4:	c3                   	retq   
  4056a5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4056ac:	00 00 00 
  4056af:	90                   	nop

00000000004056b0 <deregister_tm_clones>:
  4056b0:	48 8d 3d a1 8b 00 00 	lea    0x8ba1(%rip),%rdi        # 40e258 <__TMC_END__>
  4056b7:	48 8d 05 9a 8b 00 00 	lea    0x8b9a(%rip),%rax        # 40e258 <__TMC_END__>
  4056be:	48 39 f8             	cmp    %rdi,%rax
  4056c1:	74 15                	je     4056d8 <deregister_tm_clones+0x28>
  4056c3:	48 8b 05 06 89 00 00 	mov    0x8906(%rip),%rax        # 40dfd0 <_ITM_deregisterTMCloneTable>
  4056ca:	48 85 c0             	test   %rax,%rax
  4056cd:	74 09                	je     4056d8 <deregister_tm_clones+0x28>
  4056cf:	ff e0                	jmpq   *%rax
  4056d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4056d8:	c3                   	retq   
  4056d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004056e0 <register_tm_clones>:
  4056e0:	48 8d 3d 71 8b 00 00 	lea    0x8b71(%rip),%rdi        # 40e258 <__TMC_END__>
  4056e7:	48 8d 35 6a 8b 00 00 	lea    0x8b6a(%rip),%rsi        # 40e258 <__TMC_END__>
  4056ee:	48 29 fe             	sub    %rdi,%rsi
  4056f1:	48 89 f0             	mov    %rsi,%rax
  4056f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4056f8:	48 c1 f8 03          	sar    $0x3,%rax
  4056fc:	48 01 c6             	add    %rax,%rsi
  4056ff:	48 d1 fe             	sar    %rsi
  405702:	74 14                	je     405718 <register_tm_clones+0x38>
  405704:	48 8b 05 d5 88 00 00 	mov    0x88d5(%rip),%rax        # 40dfe0 <_ITM_registerTMCloneTable>
  40570b:	48 85 c0             	test   %rax,%rax
  40570e:	74 08                	je     405718 <register_tm_clones+0x38>
  405710:	ff e0                	jmpq   *%rax
  405712:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405718:	c3                   	retq   
  405719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405720 <__do_global_dtors_aux>:
  405720:	f3 0f 1e fa          	endbr64 
  405724:	80 3d 85 8d 00 00 00 	cmpb   $0x0,0x8d85(%rip)        # 40e4b0 <completed.0>
  40572b:	75 13                	jne    405740 <__do_global_dtors_aux+0x20>
  40572d:	55                   	push   %rbp
  40572e:	48 89 e5             	mov    %rsp,%rbp
  405731:	e8 7a ff ff ff       	callq  4056b0 <deregister_tm_clones>
  405736:	c6 05 73 8d 00 00 01 	movb   $0x1,0x8d73(%rip)        # 40e4b0 <completed.0>
  40573d:	5d                   	pop    %rbp
  40573e:	c3                   	retq   
  40573f:	90                   	nop
  405740:	c3                   	retq   
  405741:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  405748:	00 00 00 00 
  40574c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405750 <frame_dummy>:
  405750:	f3 0f 1e fa          	endbr64 
  405754:	eb 8a                	jmp    4056e0 <register_tm_clones>
  405756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40575d:	00 00 00 

0000000000405760 <main._omp_fn.1>:
  405760:	41 54                	push   %r12
  405762:	55                   	push   %rbp
  405763:	53                   	push   %rbx
  405764:	48 8b 07             	mov    (%rdi),%rax
  405767:	48 8b 18             	mov    (%rax),%rbx
  40576a:	48 85 db             	test   %rbx,%rbx
  40576d:	0f 84 ef 00 00 00    	je     405862 <main._omp_fn.1+0x102>
  405773:	49 89 fc             	mov    %rdi,%r12
  405776:	e8 f5 dc ff ff       	callq  403470 <omp_get_num_threads@plt>
  40577b:	89 c5                	mov    %eax,%ebp
  40577d:	e8 3e dc ff ff       	callq  4033c0 <omp_get_thread_num@plt>
  405782:	48 63 c8             	movslq %eax,%rcx
  405785:	48 63 f5             	movslq %ebp,%rsi
  405788:	48 89 d8             	mov    %rbx,%rax
  40578b:	31 d2                	xor    %edx,%edx
  40578d:	48 f7 f6             	div    %rsi
  405790:	48 39 d1             	cmp    %rdx,%rcx
  405793:	0f 82 d7 00 00 00    	jb     405870 <main._omp_fn.1+0x110>
  405799:	48 0f af c8          	imul   %rax,%rcx
  40579d:	48 01 d1             	add    %rdx,%rcx
  4057a0:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
  4057a4:	48 39 f1             	cmp    %rsi,%rcx
  4057a7:	0f 83 b5 00 00 00    	jae    405862 <main._omp_fn.1+0x102>
  4057ad:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  4057b2:	c5 fb 10 0d 36 5c 00 	vmovsd 0x5c36(%rip),%xmm1        # 40b3f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd0>
  4057b9:	00 
  4057ba:	48 8b 38             	mov    (%rax),%rdi
  4057bd:	49 8b 44 24 10       	mov    0x10(%r12),%rax
  4057c2:	c5 fb 10 1d 2e 5c 00 	vmovsd 0x5c2e(%rip),%xmm3        # 40b3f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  4057c9:	00 
  4057ca:	4c 8b 00             	mov    (%rax),%r8
  4057cd:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  4057d2:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  4057d6:	4c 8b 08             	mov    (%rax),%r9
  4057d9:	4d 85 c9             	test   %r9,%r9
  4057dc:	0f 84 9e 00 00 00    	je     405880 <main._omp_fn.1+0x120>
  4057e2:	c5 fb 10 25 16 5c 00 	vmovsd 0x5c16(%rip),%xmm4        # 40b400 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  4057e9:	00 
  4057ea:	49 bb f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r11
  4057f1:	f0 f0 f0 
  4057f4:	49 ba c5 4e ec c4 4e 	movabs $0x4ec4ec4ec4ec4ec5,%r10
  4057fb:	ec c4 4e 
  4057fe:	66 90                	xchg   %ax,%ax
  405800:	48 89 c8             	mov    %rcx,%rax
  405803:	49 f7 e3             	mul    %r11
  405806:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  40580d:	00 
  40580e:	48 89 d0             	mov    %rdx,%rax
  405811:	48 c1 e8 04          	shr    $0x4,%rax
  405815:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  405819:	48 01 c2             	add    %rax,%rdx
  40581c:	48 89 c8             	mov    %rcx,%rax
  40581f:	48 29 d0             	sub    %rdx,%rax
  405822:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  405827:	48 89 c8             	mov    %rcx,%rax
  40582a:	49 f7 e2             	mul    %r10
  40582d:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  405832:	48 c1 ea 02          	shr    $0x2,%rdx
  405836:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
  40583a:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
  40583e:	48 89 c8             	mov    %rcx,%rax
  405841:	48 29 d0             	sub    %rdx,%rax
  405844:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  40584a:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  40584f:	c4 e2 d9 9d c1       	vfnmadd132sd %xmm1,%xmm4,%xmm0
  405854:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  40585a:	48 ff c1             	inc    %rcx
  40585d:	48 39 ce             	cmp    %rcx,%rsi
  405860:	75 9e                	jne    405800 <main._omp_fn.1+0xa0>
  405862:	5b                   	pop    %rbx
  405863:	5d                   	pop    %rbp
  405864:	41 5c                	pop    %r12
  405866:	c3                   	retq   
  405867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40586e:	00 00 
  405870:	48 ff c0             	inc    %rax
  405873:	31 d2                	xor    %edx,%edx
  405875:	e9 1f ff ff ff       	jmpq   405799 <main._omp_fn.1+0x39>
  40587a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405880:	49 b9 f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r9
  405887:	f0 f0 f0 
  40588a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405890:	48 89 c8             	mov    %rcx,%rax
  405893:	49 f7 e1             	mul    %r9
  405896:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  40589d:	00 
  40589e:	48 89 d0             	mov    %rdx,%rax
  4058a1:	48 c1 e8 04          	shr    $0x4,%rax
  4058a5:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  4058a9:	48 01 c2             	add    %rax,%rdx
  4058ac:	48 89 c8             	mov    %rcx,%rax
  4058af:	48 29 d0             	sub    %rdx,%rax
  4058b2:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  4058b7:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  4058bc:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  4058c2:	48 ff c1             	inc    %rcx
  4058c5:	48 39 ce             	cmp    %rcx,%rsi
  4058c8:	75 c6                	jne    405890 <main._omp_fn.1+0x130>
  4058ca:	5b                   	pop    %rbx
  4058cb:	5d                   	pop    %rbp
  4058cc:	41 5c                	pop    %r12
  4058ce:	c3                   	retq   
  4058cf:	90                   	nop

00000000004058d0 <main._omp_fn.0>:
  4058d0:	53                   	push   %rbx
  4058d1:	48 89 fb             	mov    %rdi,%rbx
  4058d4:	e8 87 d7 ff ff       	callq  403060 <GOMP_single_start@plt>
  4058d9:	84 c0                	test   %al,%al
  4058db:	74 0e                	je     4058eb <main._omp_fn.0+0x1b>
  4058dd:	e8 8e db ff ff       	callq  403470 <omp_get_num_threads@plt>
  4058e2:	41 89 c0             	mov    %eax,%r8d
  4058e5:	48 8b 03             	mov    (%rbx),%rax
  4058e8:	44 89 00             	mov    %r8d,(%rax)
  4058eb:	5b                   	pop    %rbx
  4058ec:	e9 5f db ff ff       	jmpq   403450 <GOMP_barrier@plt>
  4058f1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4058f8:	00 00 00 00 
  4058fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405900 <_ZZ4mainENKUlvE_clEv._omp_fn.0>:
  405900:	55                   	push   %rbp
  405901:	48 89 e5             	mov    %rsp,%rbp
  405904:	41 55                	push   %r13
  405906:	41 54                	push   %r12
  405908:	53                   	push   %rbx
  405909:	4c 8b 27             	mov    (%rdi),%r12
  40590c:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  405910:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  405915:	4c 8b 28             	mov    (%rax),%r13
  405918:	4d 85 ed             	test   %r13,%r13
  40591b:	0f 84 42 01 00 00    	je     405a63 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405921:	e8 4a db ff ff       	callq  403470 <omp_get_num_threads@plt>
  405926:	89 c3                	mov    %eax,%ebx
  405928:	e8 93 da ff ff       	callq  4033c0 <omp_get_thread_num@plt>
  40592d:	48 63 c8             	movslq %eax,%rcx
  405930:	48 63 f3             	movslq %ebx,%rsi
  405933:	4c 89 e8             	mov    %r13,%rax
  405936:	31 d2                	xor    %edx,%edx
  405938:	48 f7 f6             	div    %rsi
  40593b:	48 39 d1             	cmp    %rdx,%rcx
  40593e:	0f 82 2c 01 00 00    	jb     405a70 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x170>
  405944:	48 0f af c8          	imul   %rax,%rcx
  405948:	48 01 ca             	add    %rcx,%rdx
  40594b:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  40594f:	48 39 ca             	cmp    %rcx,%rdx
  405952:	0f 83 0b 01 00 00    	jae    405a63 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405958:	4d 8b 44 24 20       	mov    0x20(%r12),%r8
  40595d:	49 8b 7c 24 30       	mov    0x30(%r12),%rdi
  405962:	4d 8b 08             	mov    (%r8),%r9
  405965:	48 8b 3f             	mov    (%rdi),%rdi
  405968:	4c 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%r8
  40596f:	00 
  405970:	49 8b 74 24 28       	mov    0x28(%r12),%rsi
  405975:	4f 8d 14 01          	lea    (%r9,%r8,1),%r10
  405979:	4d 8d 58 08          	lea    0x8(%r8),%r11
  40597d:	4e 8d 24 1f          	lea    (%rdi,%r11,1),%r12
  405981:	4c 89 d3             	mov    %r10,%rbx
  405984:	4c 29 e3             	sub    %r12,%rbx
  405987:	48 8b 36             	mov    (%rsi),%rsi
  40598a:	48 83 fb 10          	cmp    $0x10,%rbx
  40598e:	0f 97 c3             	seta   %bl
  405991:	4d 89 d4             	mov    %r10,%r12
  405994:	49 01 f3             	add    %rsi,%r11
  405997:	4d 29 dc             	sub    %r11,%r12
  40599a:	49 83 fc 10          	cmp    $0x10,%r12
  40599e:	41 0f 97 c3          	seta   %r11b
  4059a2:	44 84 db             	test   %r11b,%bl
  4059a5:	0f 84 d5 00 00 00    	je     405a80 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x180>
  4059ab:	48 83 f8 01          	cmp    $0x1,%rax
  4059af:	0f 84 cb 00 00 00    	je     405a80 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x180>
  4059b5:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  4059b9:	48 83 f9 02          	cmp    $0x2,%rcx
  4059bd:	0f 86 f2 00 00 00    	jbe    405ab5 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x1b5>
  4059c3:	49 89 c3             	mov    %rax,%r11
  4059c6:	49 c1 eb 02          	shr    $0x2,%r11
  4059ca:	c4 e2 7d 19 0d 35 5a 	vbroadcastsd 0x5a35(%rip),%ymm1        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  4059d1:	00 00 
  4059d3:	4a 8d 1c 06          	lea    (%rsi,%r8,1),%rbx
  4059d7:	49 c1 e3 05          	shl    $0x5,%r11
  4059db:	49 01 f8             	add    %rdi,%r8
  4059de:	31 c9                	xor    %ecx,%ecx
  4059e0:	c4 c1 7d 10 04 08    	vmovupd (%r8,%rcx,1),%ymm0
  4059e6:	c4 e2 f5 a8 04 0b    	vfmadd213pd (%rbx,%rcx,1),%ymm1,%ymm0
  4059ec:	c4 c1 7d 11 04 0a    	vmovupd %ymm0,(%r10,%rcx,1)
  4059f2:	48 83 c1 20          	add    $0x20,%rcx
  4059f6:	49 39 cb             	cmp    %rcx,%r11
  4059f9:	75 e5                	jne    4059e0 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0xe0>
  4059fb:	49 89 c0             	mov    %rax,%r8
  4059fe:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
  405a02:	4c 01 c2             	add    %r8,%rdx
  405a05:	48 89 d1             	mov    %rdx,%rcx
  405a08:	4c 39 c0             	cmp    %r8,%rax
  405a0b:	0f 84 9f 00 00 00    	je     405ab0 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x1b0>
  405a11:	4c 29 c0             	sub    %r8,%rax
  405a14:	48 83 f8 01          	cmp    $0x1,%rax
  405a18:	0f 84 9f 00 00 00    	je     405abd <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x1bd>
  405a1e:	c5 f8 77             	vzeroupper 
  405a21:	c5 f9 10 04 d7       	vmovupd (%rdi,%rdx,8),%xmm0
  405a26:	c5 f9 10 1c d6       	vmovupd (%rsi,%rdx,8),%xmm3
  405a2b:	62 f2 e5 18 98 05 d3 	vfmadd132pd 0x59d3(%rip){1to2},%xmm3,%xmm0        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405a32:	59 00 00 
  405a35:	c4 c1 79 11 04 d1    	vmovupd %xmm0,(%r9,%rdx,8)
  405a3b:	48 89 c2             	mov    %rax,%rdx
  405a3e:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
  405a42:	48 01 d1             	add    %rdx,%rcx
  405a45:	48 39 d0             	cmp    %rdx,%rax
  405a48:	74 19                	je     405a63 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405a4a:	c5 fb 10 04 cf       	vmovsd (%rdi,%rcx,8),%xmm0
  405a4f:	c5 fb 10 14 ce       	vmovsd (%rsi,%rcx,8),%xmm2
  405a54:	c4 e2 e9 99 05 ab 59 	vfmadd132sd 0x59ab(%rip),%xmm2,%xmm0        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405a5b:	00 00 
  405a5d:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  405a63:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  405a67:	5b                   	pop    %rbx
  405a68:	41 5c                	pop    %r12
  405a6a:	41 5d                	pop    %r13
  405a6c:	5d                   	pop    %rbp
  405a6d:	c3                   	retq   
  405a6e:	66 90                	xchg   %ax,%ax
  405a70:	48 ff c0             	inc    %rax
  405a73:	31 d2                	xor    %edx,%edx
  405a75:	e9 ca fe ff ff       	jmpq   405944 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x44>
  405a7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405a80:	c5 fb 10 0d 80 59 00 	vmovsd 0x5980(%rip),%xmm1        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405a87:	00 
  405a88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405a8f:	00 
  405a90:	c5 fb 10 04 d7       	vmovsd (%rdi,%rdx,8),%xmm0
  405a95:	c4 e2 f1 a9 04 d6    	vfmadd213sd (%rsi,%rdx,8),%xmm1,%xmm0
  405a9b:	c4 c1 7b 11 04 d1    	vmovsd %xmm0,(%r9,%rdx,8)
  405aa1:	48 ff c2             	inc    %rdx
  405aa4:	48 39 d1             	cmp    %rdx,%rcx
  405aa7:	75 e7                	jne    405a90 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x190>
  405aa9:	eb b8                	jmp    405a63 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405aab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405ab0:	c5 f8 77             	vzeroupper 
  405ab3:	eb ae                	jmp    405a63 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x163>
  405ab5:	48 89 d1             	mov    %rdx,%rcx
  405ab8:	e9 64 ff ff ff       	jmpq   405a21 <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x121>
  405abd:	c5 f8 77             	vzeroupper 
  405ac0:	eb 88                	jmp    405a4a <_ZZ4mainENKUlvE_clEv._omp_fn.0+0x14a>
  405ac2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  405ac9:	00 00 00 00 
  405acd:	0f 1f 00             	nopl   (%rax)

0000000000405ad0 <_ZZ4mainENKUlvE_clEv._omp_fn.1>:
  405ad0:	55                   	push   %rbp
  405ad1:	48 89 e5             	mov    %rsp,%rbp
  405ad4:	41 56                	push   %r14
  405ad6:	41 55                	push   %r13
  405ad8:	41 54                	push   %r12
  405ada:	53                   	push   %rbx
  405adb:	4c 8b 27             	mov    (%rdi),%r12
  405ade:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  405ae2:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  405ae7:	48 8b 18             	mov    (%rax),%rbx
  405aea:	48 85 db             	test   %rbx,%rbx
  405aed:	0f 84 b2 01 00 00    	je     405ca5 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x1d5>
  405af3:	e8 78 d9 ff ff       	callq  403470 <omp_get_num_threads@plt>
  405af8:	4c 63 e8             	movslq %eax,%r13
  405afb:	e8 c0 d8 ff ff       	callq  4033c0 <omp_get_thread_num@plt>
  405b00:	48 63 c8             	movslq %eax,%rcx
  405b03:	48 8d 43 3f          	lea    0x3f(%rbx),%rax
  405b07:	48 c1 e8 06          	shr    $0x6,%rax
  405b0b:	31 d2                	xor    %edx,%edx
  405b0d:	49 f7 f5             	div    %r13
  405b10:	48 39 d1             	cmp    %rdx,%rcx
  405b13:	0f 82 99 01 00 00    	jb     405cb2 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x1e2>
  405b19:	48 0f af c8          	imul   %rax,%rcx
  405b1d:	48 01 ca             	add    %rcx,%rdx
  405b20:	48 01 d0             	add    %rdx,%rax
  405b23:	48 39 c2             	cmp    %rax,%rdx
  405b26:	0f 83 79 01 00 00    	jae    405ca5 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x1d5>
  405b2c:	48 89 d7             	mov    %rdx,%rdi
  405b2f:	48 c1 e0 06          	shl    $0x6,%rax
  405b33:	62 f2 fd 48 19 0d d3 	vbroadcastsd 0x58d3(%rip),%zmm1        # 40b410 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  405b3a:	58 00 00 
  405b3d:	62 f2 fd 48 19 05 d1 	vbroadcastsd 0x58d1(%rip),%zmm0        # 40b418 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  405b44:	58 00 00 
  405b47:	48 c1 e7 06          	shl    $0x6,%rdi
  405b4b:	48 89 c6             	mov    %rax,%rsi
  405b4e:	48 c1 e2 09          	shl    $0x9,%rdx
  405b52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405b58:	49 8b 44 24 28       	mov    0x28(%r12),%rax
  405b5d:	4c 8d 72 40          	lea    0x40(%rdx),%r14
  405b61:	48 8b 00             	mov    (%rax),%rax
  405b64:	4c 8d aa 80 00 00 00 	lea    0x80(%rdx),%r13
  405b6b:	62 71 fd 48 28 0c 10 	vmovapd (%rax,%rdx,1),%zmm9
  405b72:	62 71 fd 48 28 44 10 	vmovapd 0x40(%rax,%rdx,1),%zmm8
  405b79:	01 
  405b7a:	62 f1 fd 48 28 7c 10 	vmovapd 0x80(%rax,%rdx,1),%zmm7
  405b81:	02 
  405b82:	62 f1 fd 48 28 74 10 	vmovapd 0xc0(%rax,%rdx,1),%zmm6
  405b89:	03 
  405b8a:	62 f1 fd 48 28 6c 10 	vmovapd 0x100(%rax,%rdx,1),%zmm5
  405b91:	04 
  405b92:	62 f1 fd 48 28 64 10 	vmovapd 0x140(%rax,%rdx,1),%zmm4
  405b99:	05 
  405b9a:	62 f1 fd 48 28 5c 10 	vmovapd 0x180(%rax,%rdx,1),%zmm3
  405ba1:	06 
  405ba2:	62 f1 fd 48 28 54 10 	vmovapd 0x1c0(%rax,%rdx,1),%zmm2
  405ba9:	07 
  405baa:	49 8b 44 24 40       	mov    0x40(%r12),%rax
  405baf:	48 8d 9a c0 00 00 00 	lea    0xc0(%rdx),%rbx
  405bb6:	8b 08                	mov    (%rax),%ecx
  405bb8:	4c 8d 9a 00 01 00 00 	lea    0x100(%rdx),%r11
  405bbf:	4c 8d 92 40 01 00 00 	lea    0x140(%rdx),%r10
  405bc6:	4c 8d 8a 80 01 00 00 	lea    0x180(%rdx),%r9
  405bcd:	4c 8d 82 c0 01 00 00 	lea    0x1c0(%rdx),%r8
  405bd4:	85 c9                	test   %ecx,%ecx
  405bd6:	7e 3e                	jle    405c16 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x146>
  405bd8:	31 c0                	xor    %eax,%eax
  405bda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405be0:	ff c0                	inc    %eax
  405be2:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  405be8:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  405bee:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  405bf4:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  405bfa:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  405c00:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  405c06:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  405c0c:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  405c12:	39 c8                	cmp    %ecx,%eax
  405c14:	75 ca                	jne    405be0 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x110>
  405c16:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c1b:	48 83 c7 40          	add    $0x40,%rdi
  405c1f:	48 8b 00             	mov    (%rax),%rax
  405c22:	62 71 fd 48 29 0c 10 	vmovapd %zmm9,(%rax,%rdx,1)
  405c29:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c2e:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  405c35:	48 8b 00             	mov    (%rax),%rax
  405c38:	62 31 fd 48 29 04 30 	vmovapd %zmm8,(%rax,%r14,1)
  405c3f:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c44:	48 8b 00             	mov    (%rax),%rax
  405c47:	62 b1 fd 48 29 3c 28 	vmovapd %zmm7,(%rax,%r13,1)
  405c4e:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c53:	48 8b 00             	mov    (%rax),%rax
  405c56:	62 f1 fd 48 29 34 18 	vmovapd %zmm6,(%rax,%rbx,1)
  405c5d:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c62:	48 8b 00             	mov    (%rax),%rax
  405c65:	62 b1 fd 48 29 2c 18 	vmovapd %zmm5,(%rax,%r11,1)
  405c6c:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c71:	48 8b 00             	mov    (%rax),%rax
  405c74:	62 b1 fd 48 29 24 10 	vmovapd %zmm4,(%rax,%r10,1)
  405c7b:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c80:	48 8b 00             	mov    (%rax),%rax
  405c83:	62 b1 fd 48 29 1c 08 	vmovapd %zmm3,(%rax,%r9,1)
  405c8a:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  405c8f:	48 8b 00             	mov    (%rax),%rax
  405c92:	62 b1 fd 48 29 14 00 	vmovapd %zmm2,(%rax,%r8,1)
  405c99:	48 39 fe             	cmp    %rdi,%rsi
  405c9c:	0f 87 b6 fe ff ff    	ja     405b58 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x88>
  405ca2:	c5 f8 77             	vzeroupper 
  405ca5:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  405ca9:	5b                   	pop    %rbx
  405caa:	41 5c                	pop    %r12
  405cac:	41 5d                	pop    %r13
  405cae:	41 5e                	pop    %r14
  405cb0:	5d                   	pop    %rbp
  405cb1:	c3                   	retq   
  405cb2:	48 ff c0             	inc    %rax
  405cb5:	31 d2                	xor    %edx,%edx
  405cb7:	e9 5d fe ff ff       	jmpq   405b19 <_ZZ4mainENKUlvE_clEv._omp_fn.1+0x49>
  405cbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405cc0 <_ZZ4mainENKUlvE_clEv._omp_fn.2>:
  405cc0:	55                   	push   %rbp
  405cc1:	48 89 e5             	mov    %rsp,%rbp
  405cc4:	41 55                	push   %r13
  405cc6:	41 54                	push   %r12
  405cc8:	49 89 fc             	mov    %rdi,%r12
  405ccb:	53                   	push   %rbx
  405ccc:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  405cd0:	48 81 ec 40 19 00 00 	sub    $0x1940,%rsp
  405cd7:	48 8b 07             	mov    (%rdi),%rax
  405cda:	48 8b 50 48          	mov    0x48(%rax),%rdx
  405cde:	80 3a 00             	cmpb   $0x0,(%rdx)
  405ce1:	74 59                	je     405d3c <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x7c>
  405ce3:	64 80 3c 25 f0 ff ff 	cmpb   $0x0,%fs:0xfffffffffffffff0
  405cea:	ff 00 
  405cec:	0f 84 f3 15 00 00    	je     4072e5 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x1625>
  405cf2:	64 0f b6 04 25 f8 ff 	movzbl %fs:0xfffffffffffffff8,%eax
  405cf9:	ff ff 
  405cfb:	84 c0                	test   %al,%al
  405cfd:	0f 85 a6 02 00 00    	jne    405fa9 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x2e9>
  405d03:	48 8b 1d 5e 58 00 00 	mov    0x585e(%rip),%rbx        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  405d0a:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  405d10:	e8 7b d4 ff ff       	callq  403190 <GOMP_atomic_start@plt>
  405d15:	c4 e1 f9 6e eb       	vmovq  %rbx,%xmm5
  405d1a:	c4 c1 53 58 44 24 18 	vaddsd 0x18(%r12),%xmm5,%xmm0
  405d21:	45 09 6c 24 20       	or     %r13d,0x20(%r12)
  405d26:	c4 c1 7b 11 44 24 18 	vmovsd %xmm0,0x18(%r12)
  405d2d:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  405d31:	5b                   	pop    %rbx
  405d32:	41 5c                	pop    %r12
  405d34:	41 5d                	pop    %r13
  405d36:	5d                   	pop    %rbp
  405d37:	e9 e4 d4 ff ff       	jmpq   403220 <GOMP_atomic_end@plt>
  405d3c:	48 8b 40 50          	mov    0x50(%rax),%rax
  405d40:	80 38 00             	cmpb   $0x0,(%rax)
  405d43:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  405d48:	0f 85 3d 12 00 00    	jne    406f8b <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x12cb>
  405d4e:	62 f2 fd 48 19 05 a0 	vbroadcastsd 0x56a0(%rip),%zmm0        # 40b3f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  405d55:	56 00 00 
  405d58:	62 f2 fd 48 19 15 c6 	vbroadcastsd 0x56c6(%rip),%zmm2        # 40b428 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x108>
  405d5f:	56 00 00 
  405d62:	62 f2 fd 48 19 1d c4 	vbroadcastsd 0x56c4(%rip),%zmm3        # 40b430 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x110>
  405d69:	56 00 00 
  405d6c:	62 f2 fd 48 19 25 c2 	vbroadcastsd 0x56c2(%rip),%zmm4        # 40b438 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x118>
  405d73:	56 00 00 
  405d76:	62 f2 fd 48 19 2d c0 	vbroadcastsd 0x56c0(%rip),%zmm5        # 40b440 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x120>
  405d7d:	56 00 00 
  405d80:	62 f2 fd 48 19 35 be 	vbroadcastsd 0x56be(%rip),%zmm6        # 40b448 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x128>
  405d87:	56 00 00 
  405d8a:	62 f2 fd 48 19 3d bc 	vbroadcastsd 0x56bc(%rip),%zmm7        # 40b450 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  405d91:	56 00 00 
  405d94:	62 72 fd 48 19 05 ba 	vbroadcastsd 0x56ba(%rip),%zmm8        # 40b458 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  405d9b:	56 00 00 
  405d9e:	62 72 fd 48 19 0d b8 	vbroadcastsd 0x56b8(%rip),%zmm9        # 40b460 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  405da5:	56 00 00 
  405da8:	62 72 fd 48 19 15 b6 	vbroadcastsd 0x56b6(%rip),%zmm10        # 40b468 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x148>
  405daf:	56 00 00 
  405db2:	62 72 fd 48 19 1d 4c 	vbroadcastsd 0x564c(%rip),%zmm11        # 40b408 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  405db9:	56 00 00 
  405dbc:	62 72 fd 48 19 25 3a 	vbroadcastsd 0x563a(%rip),%zmm12        # 40b400 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  405dc3:	56 00 00 
  405dc6:	62 f2 fd 48 19 0d 48 	vbroadcastsd 0x5648(%rip),%zmm1        # 40b418 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  405dcd:	56 00 00 
  405dd0:	62 71 fd 48 28 e8    	vmovapd %zmm0,%zmm13
  405dd6:	62 72 f5 48 98 e8    	vfmadd132pd %zmm0,%zmm1,%zmm13
  405ddc:	62 72 f5 48 98 e0    	vfmadd132pd %zmm0,%zmm1,%zmm12
  405de2:	62 72 f5 48 98 d8    	vfmadd132pd %zmm0,%zmm1,%zmm11
  405de8:	62 72 f5 48 98 d0    	vfmadd132pd %zmm0,%zmm1,%zmm10
  405dee:	62 72 f5 48 98 c8    	vfmadd132pd %zmm0,%zmm1,%zmm9
  405df4:	62 72 f5 48 98 c0    	vfmadd132pd %zmm0,%zmm1,%zmm8
  405dfa:	62 f2 f5 48 98 f8    	vfmadd132pd %zmm0,%zmm1,%zmm7
  405e00:	62 f2 f5 48 98 f0    	vfmadd132pd %zmm0,%zmm1,%zmm6
  405e06:	62 f2 f5 48 98 e8    	vfmadd132pd %zmm0,%zmm1,%zmm5
  405e0c:	62 f2 f5 48 98 e0    	vfmadd132pd %zmm0,%zmm1,%zmm4
  405e12:	62 f2 f5 48 98 d8    	vfmadd132pd %zmm0,%zmm1,%zmm3
  405e18:	62 f2 f5 48 98 d0    	vfmadd132pd %zmm0,%zmm1,%zmm2
  405e1e:	ff c8                	dec    %eax
  405e20:	75 b4                	jne    405dd6 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x116>
  405e22:	62 73 fd 48 1b e9 01 	vextractf64x4 $0x1,%zmm13,%ymm1
  405e29:	c4 c1 75 58 cd       	vaddpd %ymm13,%ymm1,%ymm1
  405e2e:	45 31 ed             	xor    %r13d,%r13d
  405e31:	62 f3 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm1,%xmm0
  405e38:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  405e3c:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405e40:	c5 fb 58 0d 20 57 00 	vaddsd 0x5720(%rip),%xmm0,%xmm1        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  405e47:	00 
  405e48:	62 73 fd 48 1b e0 01 	vextractf64x4 $0x1,%zmm12,%ymm0
  405e4f:	c4 41 7d 58 e4       	vaddpd %ymm12,%ymm0,%ymm12
  405e54:	62 73 fd 28 19 e0 01 	vextractf64x2 $0x1,%ymm12,%xmm0
  405e5b:	c4 c1 79 58 c4       	vaddpd %xmm12,%xmm0,%xmm0
  405e60:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405e64:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405e68:	62 73 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm11,%ymm0
  405e6f:	c4 41 7d 58 db       	vaddpd %ymm11,%ymm0,%ymm11
  405e74:	62 73 fd 28 19 d8 01 	vextractf64x2 $0x1,%ymm11,%xmm0
  405e7b:	c4 c1 79 58 c3       	vaddpd %xmm11,%xmm0,%xmm0
  405e80:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405e84:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405e88:	62 73 fd 48 1b d0 01 	vextractf64x4 $0x1,%zmm10,%ymm0
  405e8f:	c4 41 7d 58 d2       	vaddpd %ymm10,%ymm0,%ymm10
  405e94:	62 73 fd 28 19 d0 01 	vextractf64x2 $0x1,%ymm10,%xmm0
  405e9b:	c4 c1 79 58 c2       	vaddpd %xmm10,%xmm0,%xmm0
  405ea0:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405ea4:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405ea8:	62 73 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm0
  405eaf:	c4 41 7d 58 c9       	vaddpd %ymm9,%ymm0,%ymm9
  405eb4:	62 73 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm9,%xmm0
  405ebb:	c4 c1 79 58 c1       	vaddpd %xmm9,%xmm0,%xmm0
  405ec0:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405ec4:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405ec8:	62 73 fd 48 1b c0 01 	vextractf64x4 $0x1,%zmm8,%ymm0
  405ecf:	c4 41 7d 58 c0       	vaddpd %ymm8,%ymm0,%ymm8
  405ed4:	62 73 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm0
  405edb:	c4 c1 79 58 c0       	vaddpd %xmm8,%xmm0,%xmm0
  405ee0:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405ee4:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405ee8:	62 f3 fd 48 1b f8 01 	vextractf64x4 $0x1,%zmm7,%ymm0
  405eef:	c5 fd 58 ff          	vaddpd %ymm7,%ymm0,%ymm7
  405ef3:	62 f3 fd 28 19 f8 01 	vextractf64x2 $0x1,%ymm7,%xmm0
  405efa:	c5 f9 58 c7          	vaddpd %xmm7,%xmm0,%xmm0
  405efe:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405f02:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405f06:	62 f3 fd 48 1b f0 01 	vextractf64x4 $0x1,%zmm6,%ymm0
  405f0d:	c5 fd 58 f6          	vaddpd %ymm6,%ymm0,%ymm6
  405f11:	62 f3 fd 28 19 f0 01 	vextractf64x2 $0x1,%ymm6,%xmm0
  405f18:	c5 f9 58 c6          	vaddpd %xmm6,%xmm0,%xmm0
  405f1c:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405f20:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405f24:	62 f3 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm5,%ymm0
  405f2b:	c5 fd 58 ed          	vaddpd %ymm5,%ymm0,%ymm5
  405f2f:	62 f3 fd 28 19 e8 01 	vextractf64x2 $0x1,%ymm5,%xmm0
  405f36:	c5 f9 58 c5          	vaddpd %xmm5,%xmm0,%xmm0
  405f3a:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405f3e:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405f42:	62 f3 fd 48 1b e0 01 	vextractf64x4 $0x1,%zmm4,%ymm0
  405f49:	c5 fd 58 e4          	vaddpd %ymm4,%ymm0,%ymm4
  405f4d:	62 f3 fd 28 19 e0 01 	vextractf64x2 $0x1,%ymm4,%xmm0
  405f54:	c5 f9 58 c4          	vaddpd %xmm4,%xmm0,%xmm0
  405f58:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405f5c:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405f60:	62 f3 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm3,%ymm0
  405f67:	c5 fd 58 db          	vaddpd %ymm3,%ymm0,%ymm3
  405f6b:	62 f3 fd 28 19 d8 01 	vextractf64x2 $0x1,%ymm3,%xmm0
  405f72:	c5 f9 58 c3          	vaddpd %xmm3,%xmm0,%xmm0
  405f76:	62 f3 fd 48 1b d3 01 	vextractf64x4 $0x1,%zmm2,%ymm3
  405f7d:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405f81:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  405f85:	c5 ed 58 c3          	vaddpd %ymm3,%ymm2,%ymm0
  405f89:	62 f3 fd 28 19 c2 01 	vextractf64x2 $0x1,%ymm0,%xmm2
  405f90:	c5 f9 58 c2          	vaddpd %xmm2,%xmm0,%xmm0
  405f94:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  405f98:	c5 fb 58 e9          	vaddsd %xmm1,%xmm0,%xmm5
  405f9c:	c4 e1 f9 7e eb       	vmovq  %xmm5,%rbx
  405fa1:	c5 f8 77             	vzeroupper 
  405fa4:	e9 67 fd ff ff       	jmpq   405d10 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x50>
  405fa9:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  405fad:	48 8b 05 6c 54 00 00 	mov    0x546c(%rip),%rax        # 40b420 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x100>
  405fb4:	c5 f9 7f 84 24 10 01 	vmovdqa %xmm0,0x110(%rsp)
  405fbb:	00 00 
  405fbd:	c5 f9 7f 84 24 30 01 	vmovdqa %xmm0,0x130(%rsp)
  405fc4:	00 00 
  405fc6:	c5 f9 7f 84 24 00 01 	vmovdqa %xmm0,0x100(%rsp)
  405fcd:	00 00 
  405fcf:	c5 f9 7f 84 24 20 01 	vmovdqa %xmm0,0x120(%rsp)
  405fd6:	00 00 
  405fd8:	c4 e2 7d 79 05 69 55 	vpbroadcastw 0x5569(%rip),%ymm0        # 40b54a <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x22a>
  405fdf:	00 00 
  405fe1:	48 89 84 24 10 01 00 	mov    %rax,0x110(%rsp)
  405fe8:	00 
  405fe9:	b8 10 10 00 00       	mov    $0x1010,%eax
  405fee:	c6 84 24 00 01 00 00 	movb   $0x1,0x100(%rsp)
  405ff5:	01 
  405ff6:	c7 84 24 18 01 00 00 	movl   $0x400040,0x118(%rsp)
  405ffd:	40 00 40 00 
  406001:	c7 84 24 30 01 00 00 	movl   $0x10101010,0x130(%rsp)
  406008:	10 10 10 10 
  40600c:	66 89 84 24 34 01 00 	mov    %ax,0x134(%rsp)
  406013:	00 
  406014:	c5 fd 7f 84 24 40 01 	vmovdqa %ymm0,0x140(%rsp)
  40601b:	00 00 
  40601d:	c5 fd 7f 84 24 60 01 	vmovdqa %ymm0,0x160(%rsp)
  406024:	00 00 
  406026:	c5 fd 7f 84 24 80 01 	vmovdqa %ymm0,0x180(%rsp)
  40602d:	00 00 
  40602f:	c5 fd 7f 84 24 a0 01 	vmovdqa %ymm0,0x1a0(%rsp)
  406036:	00 00 
  406038:	c5 fd 7f 84 24 c0 01 	vmovdqa %ymm0,0x1c0(%rsp)
  40603f:	00 00 
  406041:	c5 fd 7f 84 24 e0 01 	vmovdqa %ymm0,0x1e0(%rsp)
  406048:	00 00 
  40604a:	c5 fd 7f 84 24 00 02 	vmovdqa %ymm0,0x200(%rsp)
  406051:	00 00 
  406053:	c5 fd 7f 84 24 20 02 	vmovdqa %ymm0,0x220(%rsp)
  40605a:	00 00 
  40605c:	c5 fd 7f 84 24 40 02 	vmovdqa %ymm0,0x240(%rsp)
  406063:	00 00 
  406065:	c5 fd 7f 84 24 60 02 	vmovdqa %ymm0,0x260(%rsp)
  40606c:	00 00 
  40606e:	c5 fd 7f 84 24 80 02 	vmovdqa %ymm0,0x280(%rsp)
  406075:	00 00 
  406077:	c5 fd 7f 84 24 a0 02 	vmovdqa %ymm0,0x2a0(%rsp)
  40607e:	00 00 
  406080:	c5 fd 7f 84 24 c0 02 	vmovdqa %ymm0,0x2c0(%rsp)
  406087:	00 00 
  406089:	c5 fd 7f 84 24 e0 02 	vmovdqa %ymm0,0x2e0(%rsp)
  406090:	00 00 
  406092:	c5 fd 7f 84 24 00 03 	vmovdqa %ymm0,0x300(%rsp)
  406099:	00 00 
  40609b:	c5 fd 7f 84 24 20 03 	vmovdqa %ymm0,0x320(%rsp)
  4060a2:	00 00 
  4060a4:	c5 fd 7f 84 24 40 03 	vmovdqa %ymm0,0x340(%rsp)
  4060ab:	00 00 
  4060ad:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  4060b4:	00 00 
  4060b6:	c5 fd 7f 84 24 80 03 	vmovdqa %ymm0,0x380(%rsp)
  4060bd:	00 00 
  4060bf:	c5 fd 7f 84 24 a0 03 	vmovdqa %ymm0,0x3a0(%rsp)
  4060c6:	00 00 
  4060c8:	c5 fd 7f 84 24 c0 03 	vmovdqa %ymm0,0x3c0(%rsp)
  4060cf:	00 00 
  4060d1:	c5 fd 7f 84 24 e0 03 	vmovdqa %ymm0,0x3e0(%rsp)
  4060d8:	00 00 
  4060da:	c5 fd 7f 84 24 00 04 	vmovdqa %ymm0,0x400(%rsp)
  4060e1:	00 00 
  4060e3:	c5 fd 7f 84 24 20 04 	vmovdqa %ymm0,0x420(%rsp)
  4060ea:	00 00 
  4060ec:	c5 fd 7f 84 24 40 04 	vmovdqa %ymm0,0x440(%rsp)
  4060f3:	00 00 
  4060f5:	c5 fd 7f 84 24 60 04 	vmovdqa %ymm0,0x460(%rsp)
  4060fc:	00 00 
  4060fe:	c5 fd 7f 84 24 80 04 	vmovdqa %ymm0,0x480(%rsp)
  406105:	00 00 
  406107:	c5 fd 7f 84 24 a0 04 	vmovdqa %ymm0,0x4a0(%rsp)
  40610e:	00 00 
  406110:	c5 fd 7f 84 24 c0 04 	vmovdqa %ymm0,0x4c0(%rsp)
  406117:	00 00 
  406119:	c5 fd 7f 84 24 e0 04 	vmovdqa %ymm0,0x4e0(%rsp)
  406120:	00 00 
  406122:	c5 fd 7f 84 24 00 05 	vmovdqa %ymm0,0x500(%rsp)
  406129:	00 00 
  40612b:	c5 fd 7f 84 24 20 05 	vmovdqa %ymm0,0x520(%rsp)
  406132:	00 00 
  406134:	c5 fd 7f 84 24 40 05 	vmovdqa %ymm0,0x540(%rsp)
  40613b:	00 00 
  40613d:	c5 fd 7f 84 24 60 05 	vmovdqa %ymm0,0x560(%rsp)
  406144:	00 00 
  406146:	c5 fd 7f 84 24 80 05 	vmovdqa %ymm0,0x580(%rsp)
  40614d:	00 00 
  40614f:	c5 fd 7f 84 24 a0 05 	vmovdqa %ymm0,0x5a0(%rsp)
  406156:	00 00 
  406158:	c5 fd 7f 84 24 c0 05 	vmovdqa %ymm0,0x5c0(%rsp)
  40615f:	00 00 
  406161:	c5 fd 7f 84 24 e0 05 	vmovdqa %ymm0,0x5e0(%rsp)
  406168:	00 00 
  40616a:	c5 fd 7f 84 24 00 06 	vmovdqa %ymm0,0x600(%rsp)
  406171:	00 00 
  406173:	c5 fd 7f 84 24 20 06 	vmovdqa %ymm0,0x620(%rsp)
  40617a:	00 00 
  40617c:	c5 fd 7f 84 24 40 06 	vmovdqa %ymm0,0x640(%rsp)
  406183:	00 00 
  406185:	c5 fd 7f 84 24 60 06 	vmovdqa %ymm0,0x660(%rsp)
  40618c:	00 00 
  40618e:	c5 fd 7f 84 24 80 06 	vmovdqa %ymm0,0x680(%rsp)
  406195:	00 00 
  406197:	c5 fd 7f 84 24 a0 06 	vmovdqa %ymm0,0x6a0(%rsp)
  40619e:	00 00 
  4061a0:	c5 fd 7f 84 24 c0 06 	vmovdqa %ymm0,0x6c0(%rsp)
  4061a7:	00 00 
  4061a9:	c5 fd 7f 84 24 e0 06 	vmovdqa %ymm0,0x6e0(%rsp)
  4061b0:	00 00 
  4061b2:	c5 fd 7f 84 24 00 07 	vmovdqa %ymm0,0x700(%rsp)
  4061b9:	00 00 
  4061bb:	c5 fd 7f 84 24 20 07 	vmovdqa %ymm0,0x720(%rsp)
  4061c2:	00 00 
  4061c4:	c5 fd 7f 84 24 40 07 	vmovdqa %ymm0,0x740(%rsp)
  4061cb:	00 00 
  4061cd:	c5 fd 7f 84 24 60 07 	vmovdqa %ymm0,0x760(%rsp)
  4061d4:	00 00 
  4061d6:	c5 fd 7f 84 24 80 07 	vmovdqa %ymm0,0x780(%rsp)
  4061dd:	00 00 
  4061df:	c5 fd 7f 84 24 a0 07 	vmovdqa %ymm0,0x7a0(%rsp)
  4061e6:	00 00 
  4061e8:	c5 fd 7f 84 24 c0 07 	vmovdqa %ymm0,0x7c0(%rsp)
  4061ef:	00 00 
  4061f1:	c5 fd 7f 84 24 e0 07 	vmovdqa %ymm0,0x7e0(%rsp)
  4061f8:	00 00 
  4061fa:	c5 fd 7f 84 24 00 08 	vmovdqa %ymm0,0x800(%rsp)
  406201:	00 00 
  406203:	c5 fd 7f 84 24 20 08 	vmovdqa %ymm0,0x820(%rsp)
  40620a:	00 00 
  40620c:	c5 fd 7f 84 24 40 08 	vmovdqa %ymm0,0x840(%rsp)
  406213:	00 00 
  406215:	c5 fd 7f 84 24 60 08 	vmovdqa %ymm0,0x860(%rsp)
  40621c:	00 00 
  40621e:	c5 fd 7f 84 24 80 08 	vmovdqa %ymm0,0x880(%rsp)
  406225:	00 00 
  406227:	c5 fd 7f 84 24 a0 08 	vmovdqa %ymm0,0x8a0(%rsp)
  40622e:	00 00 
  406230:	c5 fd 7f 84 24 c0 08 	vmovdqa %ymm0,0x8c0(%rsp)
  406237:	00 00 
  406239:	c5 fd 7f 84 24 e0 08 	vmovdqa %ymm0,0x8e0(%rsp)
  406240:	00 00 
  406242:	c5 fd 7f 84 24 00 09 	vmovdqa %ymm0,0x900(%rsp)
  406249:	00 00 
  40624b:	c5 fd 7f 84 24 20 09 	vmovdqa %ymm0,0x920(%rsp)
  406252:	00 00 
  406254:	c4 e2 78 49 84 24 00 	ldtilecfg 0x100(%rsp)
  40625b:	01 00 00 
  40625e:	b8 40 00 00 00       	mov    $0x40,%eax
  406263:	48 8d 94 24 40 01 00 	lea    0x140(%rsp),%rdx
  40626a:	00 
  40626b:	c4 e2 7b 4b 24 02    	tileloadd (%rdx,%rax,1),%tmm4
  406271:	48 8d 94 24 40 05 00 	lea    0x540(%rsp),%rdx
  406278:	00 
  406279:	c4 e2 7b 4b 2c 02    	tileloadd (%rdx,%rax,1),%tmm5
  40627f:	ba 00 04 00 00       	mov    $0x400,%edx
  406284:	0f 1f 40 00          	nopl   0x0(%rax)
  406288:	c4 e2 7b 49 c0       	tilezero %tmm0
  40628d:	c4 e2 7b 49 c8       	tilezero %tmm1
  406292:	c4 e2 7b 49 d0       	tilezero %tmm2
  406297:	c4 e2 7b 49 d8       	tilezero %tmm3
  40629c:	b8 00 01 00 00       	mov    $0x100,%eax
  4062a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4062a8:	c4 e2 52 5c c4       	tdpbf16ps %tmm5,%tmm4,%tmm0
  4062ad:	c4 e2 52 5c cc       	tdpbf16ps %tmm5,%tmm4,%tmm1
  4062b2:	c4 e2 52 5c d4       	tdpbf16ps %tmm5,%tmm4,%tmm2
  4062b7:	c4 e2 52 5c dc       	tdpbf16ps %tmm5,%tmm4,%tmm3
  4062bc:	ff c8                	dec    %eax
  4062be:	75 e8                	jne    4062a8 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x5e8>
  4062c0:	ff ca                	dec    %edx
  4062c2:	75 c4                	jne    406288 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x5c8>
  4062c4:	48 8d 94 24 40 09 00 	lea    0x940(%rsp),%rdx
  4062cb:	00 
  4062cc:	b8 40 00 00 00       	mov    $0x40,%eax
  4062d1:	c4 e2 7a 4b 04 02    	tilestored %tmm0,(%rdx,%rax,1)
  4062d7:	48 8d 8c 24 40 0d 00 	lea    0xd40(%rsp),%rcx
  4062de:	00 
  4062df:	c4 e2 7a 4b 0c 01    	tilestored %tmm1,(%rcx,%rax,1)
  4062e5:	48 8d 8c 24 40 11 00 	lea    0x1140(%rsp),%rcx
  4062ec:	00 
  4062ed:	c4 e2 7a 4b 14 01    	tilestored %tmm2,(%rcx,%rax,1)
  4062f3:	48 8d 8c 24 40 15 00 	lea    0x1540(%rsp),%rcx
  4062fa:	00 
  4062fb:	c4 e2 7a 4b 1c 01    	tilestored %tmm3,(%rcx,%rax,1)
  406301:	48 8b 1d 60 52 00 00 	mov    0x5260(%rip),%rbx        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  406308:	62 61 7d 28 6f 0d ae 	vmovdqa32 0x51ae(%rip),%ymm25        # 40b4c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1a0>
  40630f:	51 00 00 
  406312:	62 61 7d 28 6f 05 c4 	vmovdqa32 0x51c4(%rip),%ymm24        # 40b4e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  406319:	51 00 00 
  40631c:	62 e2 7d 28 18 3d 2a 	vbroadcastss 0x522a(%rip),%ymm23        # 40b550 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x230>
  406323:	52 00 00 
  406326:	45 31 ed             	xor    %r13d,%r13d
  406329:	48 81 c2 00 04 00 00 	add    $0x400,%rdx
  406330:	48 8d 82 00 fc ff ff 	lea    -0x400(%rdx),%rax
  406337:	62 01 2d 00 ef d2    	vpxord %xmm26,%xmm26,%xmm26
  40633d:	c5 fc 28 78 20       	vmovaps 0x20(%rax),%ymm7
  406342:	c5 fc 28 28          	vmovaps (%rax),%ymm5
  406346:	62 b3 7d 28 19 fc 01 	vextractf32x4 $0x1,%ymm7,%xmm20
  40634d:	c5 fc 28 78 40       	vmovaps 0x40(%rax),%ymm7
  406352:	c5 fc 28 b0 00 01 00 	vmovaps 0x100(%rax),%ymm6
  406359:	00 
  40635a:	c4 e3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm1
  406360:	c5 fc 28 78 60       	vmovaps 0x60(%rax),%ymm7
  406365:	c5 fc 5a c1          	vcvtps2pd %xmm1,%ymm0
  406369:	62 b3 7d 28 19 ed 01 	vextractf32x4 $0x1,%ymm5,%xmm21
  406370:	c5 fd 29 44 24 20    	vmovapd %ymm0,0x20(%rsp)
  406376:	c4 e3 7d 19 f5 01    	vextractf128 $0x1,%ymm6,%xmm5
  40637c:	c4 e3 7d 19 f8 01    	vextractf128 $0x1,%ymm7,%xmm0
  406382:	c5 fc 28 b0 20 01 00 	vmovaps 0x120(%rax),%ymm6
  406389:	00 
  40638a:	c5 fc 28 b8 80 00 00 	vmovaps 0x80(%rax),%ymm7
  406391:	00 
  406392:	c4 e3 7d 19 f4 01    	vextractf128 $0x1,%ymm6,%xmm4
  406398:	c4 c3 7d 19 fc 01    	vextractf128 $0x1,%ymm7,%xmm12
  40639e:	c5 fc 28 b0 40 01 00 	vmovaps 0x140(%rax),%ymm6
  4063a5:	00 
  4063a6:	c5 fc 28 b8 a0 00 00 	vmovaps 0xa0(%rax),%ymm7
  4063ad:	00 
  4063ae:	c5 fc 5a c8          	vcvtps2pd %xmm0,%ymm1
  4063b2:	c5 fc 28 80 a0 01 00 	vmovaps 0x1a0(%rax),%ymm0
  4063b9:	00 
  4063ba:	c4 c3 7d 19 fb 01    	vextractf128 $0x1,%ymm7,%xmm11
  4063c0:	c4 e3 7d 19 f3 01    	vextractf128 $0x1,%ymm6,%xmm3
  4063c6:	c5 fc 28 b8 c0 00 00 	vmovaps 0xc0(%rax),%ymm7
  4063cd:	00 
  4063ce:	c5 fc 28 b0 60 01 00 	vmovaps 0x160(%rax),%ymm6
  4063d5:	00 
  4063d6:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  4063dd:	62 61 7c 28 5a 70 02 	vcvtps2pd 0x20(%rax),%ymm30
  4063e4:	62 61 7c 28 5a 68 04 	vcvtps2pd 0x40(%rax),%ymm29
  4063eb:	c5 7c 5a b0 40 01 00 	vcvtps2pd 0x140(%rax),%ymm14
  4063f2:	00 
  4063f3:	c5 7c 5a 90 80 01 00 	vcvtps2pd 0x180(%rax),%ymm10
  4063fa:	00 
  4063fb:	62 e1 7c 28 5a 30    	vcvtps2pd (%rax),%ymm22
  406401:	62 e1 7c 28 5a 58 06 	vcvtps2pd 0x60(%rax),%ymm19
  406408:	62 e1 7c 28 5a 50 08 	vcvtps2pd 0x80(%rax),%ymm18
  40640f:	62 e1 7c 28 5a 48 0a 	vcvtps2pd 0xa0(%rax),%ymm17
  406416:	62 e1 7c 28 5a 40 0c 	vcvtps2pd 0xc0(%rax),%ymm16
  40641d:	c5 7c 5a b8 e0 00 00 	vcvtps2pd 0xe0(%rax),%ymm15
  406424:	00 
  406425:	62 61 7c 28 5a 60 10 	vcvtps2pd 0x100(%rax),%ymm28
  40642c:	62 61 7c 28 5a 58 12 	vcvtps2pd 0x120(%rax),%ymm27
  406433:	c5 7c 5a a8 60 01 00 	vcvtps2pd 0x160(%rax),%ymm13
  40643a:	00 
  40643b:	c5 7c 5a 80 a0 01 00 	vcvtps2pd 0x1a0(%rax),%ymm8
  406442:	00 
  406443:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  406449:	c5 fd 29 4c 24 40    	vmovapd %ymm1,0x40(%rsp)
  40644f:	62 61 7c 28 5a 78 1c 	vcvtps2pd 0x1c0(%rax),%ymm31
  406456:	c4 c3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm9
  40645c:	c4 e3 7d 19 f2 01    	vextractf128 $0x1,%ymm6,%xmm2
  406462:	c5 fc 28 b8 e0 00 00 	vmovaps 0xe0(%rax),%ymm7
  406469:	00 
  40646a:	c5 fc 28 b0 80 01 00 	vmovaps 0x180(%rax),%ymm6
  406471:	00 
  406472:	c5 fd 29 44 24 60    	vmovapd %ymm0,0x60(%rsp)
  406478:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0x80(%rsp)
  40647f:	04 
  406480:	c5 fc 28 80 c0 01 00 	vmovaps 0x1c0(%rax),%ymm0
  406487:	00 
  406488:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x18(%rsp)
  40648f:	03 
  406490:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  406497:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  40649d:	c5 fd 29 84 24 a0 00 	vmovapd %ymm0,0xa0(%rsp)
  4064a4:	00 00 
  4064a6:	c5 fc 28 80 e0 01 00 	vmovaps 0x1e0(%rax),%ymm0
  4064ad:	00 
  4064ae:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4064b3:	62 61 7c 28 5a 78 1e 	vcvtps2pd 0x1e0(%rax),%ymm31
  4064ba:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xc0(%rsp)
  4064c1:	06 
  4064c2:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  4064c9:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
  4064ce:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  4064d4:	c5 fd 29 84 24 e0 00 	vmovapd %ymm0,0xe0(%rsp)
  4064db:	00 00 
  4064dd:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  4064e2:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4064e6:	62 b1 cd 00 15 ce    	vunpckhpd %xmm22,%xmm22,%xmm1
  4064ec:	62 a3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm22,%xmm22
  4064f3:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4064f7:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x18(%rsp)
  4064fe:	03 
  4064ff:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  406504:	c4 e1 f9 7e cb       	vmovq  %xmm1,%rbx
  406509:	62 61 fd 08 6e fb    	vmovq  %rbx,%xmm31
  40650f:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
  406514:	62 91 f7 08 58 cf    	vaddsd %xmm31,%xmm1,%xmm1
  40651a:	62 21 cd 00 15 fe    	vunpckhpd %xmm22,%xmm22,%xmm31
  406520:	62 a1 7c 28 5a ed    	vcvtps2pd %xmm21,%ymm21
  406526:	62 f1 87 00 58 c9    	vaddsd %xmm1,%xmm31,%xmm1
  40652c:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x18(%rsp)
  406533:	03 
  406534:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  406539:	c4 e1 f9 7e c9       	vmovq  %xmm1,%rcx
  40653e:	62 e1 fd 08 6e f1    	vmovq  %rcx,%xmm22
  406544:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  406549:	62 b1 f7 08 58 ce    	vaddsd %xmm22,%xmm1,%xmm1
  40654f:	62 21 d5 00 15 fd    	vunpckhpd %xmm21,%xmm21,%xmm31
  406555:	62 a3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm21,%xmm21
  40655c:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x18(%rsp)
  406563:	03 
  406564:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  406569:	62 61 87 00 58 f9    	vaddsd %xmm1,%xmm31,%xmm31
  40656f:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
  406574:	62 61 fd 08 13 74 24 	vmovlpd %xmm30,0x18(%rsp)
  40657b:	03 
  40657c:	62 01 f7 08 58 ff    	vaddsd %xmm31,%xmm1,%xmm31
  406582:	62 a1 d5 00 15 f5    	vunpckhpd %xmm21,%xmm21,%xmm22
  406588:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40658d:	62 81 cf 00 58 f7    	vaddsd %xmm31,%xmm22,%xmm22
  406593:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
  406598:	62 01 8d 00 15 fe    	vunpckhpd %xmm30,%xmm30,%xmm31
  40659e:	62 a1 f7 08 58 f6    	vaddsd %xmm22,%xmm1,%xmm22
  4065a4:	62 a1 7c 28 5a e4    	vcvtps2pd %xmm20,%ymm20
  4065aa:	c5 fd 28 44 24 20    	vmovapd 0x20(%rsp),%ymm0
  4065b0:	62 21 87 00 58 fe    	vaddsd %xmm22,%xmm31,%xmm31
  4065b6:	62 23 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm30,%xmm22
  4065bd:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x18(%rsp)
  4065c4:	03 
  4065c5:	62 61 ff 08 10 74 24 	vmovsd 0x18(%rsp),%xmm30
  4065cc:	03 
  4065cd:	62 a1 cd 00 15 f6    	vunpckhpd %xmm22,%xmm22,%xmm22
  4065d3:	62 01 8f 00 58 f7    	vaddsd %xmm31,%xmm30,%xmm30
  4065d9:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x18(%rsp)
  4065e0:	03 
  4065e1:	62 61 ff 08 10 7c 24 	vmovsd 0x18(%rsp),%xmm31
  4065e8:	03 
  4065e9:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  4065ef:	62 21 dd 00 15 f4    	vunpckhpd %xmm20,%xmm20,%xmm30
  4065f5:	62 a3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm20,%xmm20
  4065fc:	62 a1 87 00 58 f6    	vaddsd %xmm22,%xmm31,%xmm22
  406602:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x18(%rsp)
  406609:	03 
  40660a:	62 a1 dd 00 15 ec    	vunpckhpd %xmm20,%xmm20,%xmm21
  406610:	62 21 8f 00 58 f6    	vaddsd %xmm22,%xmm30,%xmm30
  406616:	62 e1 ff 08 10 74 24 	vmovsd 0x18(%rsp),%xmm22
  40661d:	03 
  40661e:	62 61 fd 08 13 6c 24 	vmovlpd %xmm29,0x18(%rsp)
  406625:	03 
  406626:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  40662c:	62 61 ff 08 10 74 24 	vmovsd 0x18(%rsp),%xmm30
  406633:	03 
  406634:	c5 f9 13 44 24 20    	vmovlpd %xmm0,0x20(%rsp)
  40663a:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  406640:	62 81 95 00 15 f5    	vunpckhpd %xmm29,%xmm29,%xmm22
  406646:	62 f3 fd 28 19 c1 01 	vextractf64x2 $0x1,%ymm0,%xmm1
  40664d:	62 a1 8f 00 58 ed    	vaddsd %xmm21,%xmm30,%xmm21
  406653:	62 e1 f5 08 15 e1    	vunpckhpd %xmm1,%xmm1,%xmm20
  406659:	c4 41 7c 5a e4       	vcvtps2pd %xmm12,%ymm12
  40665e:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  406664:	62 23 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm29,%xmm21
  40666b:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x18(%rsp)
  406672:	03 
  406673:	62 61 ff 08 10 6c 24 	vmovsd 0x18(%rsp),%xmm29
  40667a:	03 
  40667b:	62 a1 d5 00 15 ed    	vunpckhpd %xmm21,%xmm21,%xmm21
  406681:	62 a1 97 00 58 f6    	vaddsd %xmm22,%xmm29,%xmm22
  406687:	62 61 ff 08 10 6c 24 	vmovsd 0x20(%rsp),%xmm29
  40668e:	04 
  40668f:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x20(%rsp)
  406696:	04 
  406697:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  40669d:	62 e1 fd 08 15 f0    	vunpckhpd %xmm0,%xmm0,%xmm22
  4066a3:	c4 41 7c 5a db       	vcvtps2pd %xmm11,%ymm11
  4066a8:	62 a1 97 00 58 ed    	vaddsd %xmm21,%xmm29,%xmm21
  4066ae:	c4 41 7c 5a c9       	vcvtps2pd %xmm9,%ymm9
  4066b3:	c4 e3 7d 19 ff 01    	vextractf128 $0x1,%ymm7,%xmm7
  4066b9:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  4066bf:	c5 fc 5a ff          	vcvtps2pd %xmm7,%ymm7
  4066c3:	c5 fc 5a ed          	vcvtps2pd %xmm5,%ymm5
  4066c7:	62 a1 f7 08 58 ee    	vaddsd %xmm22,%xmm1,%xmm21
  4066cd:	62 e1 ff 08 10 74 24 	vmovsd 0x20(%rsp),%xmm22
  4066d4:	04 
  4066d5:	c5 fc 5a e4          	vcvtps2pd %xmm4,%ymm4
  4066d9:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  4066df:	62 a1 e5 00 15 eb    	vunpckhpd %xmm19,%xmm19,%xmm21
  4066e5:	62 a3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm19,%xmm19
  4066ec:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  4066f2:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x20(%rsp)
  4066f9:	04 
  4066fa:	62 e1 ff 08 10 74 24 	vmovsd 0x20(%rsp),%xmm22
  406701:	04 
  406702:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  406708:	c5 fd 28 4c 24 40    	vmovapd 0x40(%rsp),%ymm1
  40670e:	62 a1 e5 00 15 e3    	vunpckhpd %xmm19,%xmm19,%xmm20
  406714:	62 a1 cf 00 58 ed    	vaddsd %xmm21,%xmm22,%xmm21
  40671a:	c5 f9 13 4c 24 40    	vmovlpd %xmm1,0x40(%rsp)
  406720:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  406727:	08 
  406728:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  40672e:	62 e1 f5 08 15 e9    	vunpckhpd %xmm1,%xmm1,%xmm21
  406734:	62 f3 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm1,%xmm0
  40673b:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  406741:	62 e1 fd 08 15 d8    	vunpckhpd %xmm0,%xmm0,%xmm19
  406747:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x40(%rsp)
  40674e:	08 
  40674f:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  406755:	c5 fc 5a db          	vcvtps2pd %xmm3,%ymm3
  406759:	c5 fc 5a d2          	vcvtps2pd %xmm2,%ymm2
  40675d:	62 a1 ff 08 58 e5    	vaddsd %xmm21,%xmm0,%xmm20
  406763:	62 e1 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm21
  40676a:	08 
  40676b:	c4 e3 7d 19 f6 01    	vextractf128 $0x1,%ymm6,%xmm6
  406771:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  406777:	62 a1 ed 00 15 e2    	vunpckhpd %xmm18,%xmm18,%xmm20
  40677d:	62 a3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm18,%xmm18
  406784:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  40678a:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x40(%rsp)
  406791:	08 
  406792:	62 e1 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm21
  406799:	08 
  40679a:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  4067a0:	62 a1 ed 00 15 da    	vunpckhpd %xmm18,%xmm18,%xmm19
  4067a6:	c5 79 13 64 24 40    	vmovlpd %xmm12,0x40(%rsp)
  4067ac:	62 a1 d7 00 58 e4    	vaddsd %xmm20,%xmm21,%xmm20
  4067b2:	62 e1 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm21
  4067b9:	08 
  4067ba:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x40(%rsp)
  4067c1:	08 
  4067c2:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  4067c8:	62 c1 9d 08 15 e4    	vunpckhpd %xmm12,%xmm12,%xmm20
  4067ce:	62 53 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm12,%xmm12
  4067d5:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  4067db:	62 c1 9d 08 15 d4    	vunpckhpd %xmm12,%xmm12,%xmm18
  4067e1:	c5 fc 5a f6          	vcvtps2pd %xmm6,%ymm6
  4067e5:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  4067eb:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  4067f2:	48 05 00 02 00 00    	add    $0x200,%rax
  4067f8:	62 a1 9f 08 58 dc    	vaddsd %xmm20,%xmm12,%xmm19
  4067fe:	62 e1 ff 08 10 64 24 	vmovsd 0x40(%rsp),%xmm20
  406805:	08 
  406806:	62 43 fd 28 19 dc 01 	vextractf64x2 $0x1,%ymm27,%xmm12
  40680d:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  406813:	62 a1 f5 00 15 d9    	vunpckhpd %xmm17,%xmm17,%xmm19
  406819:	62 a3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm17,%xmm17
  406820:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  406826:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x40(%rsp)
  40682d:	08 
  40682e:	62 e1 ff 08 10 64 24 	vmovsd 0x40(%rsp),%xmm20
  406835:	08 
  406836:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  40683c:	62 a1 f5 00 15 d1    	vunpckhpd %xmm17,%xmm17,%xmm18
  406842:	c5 79 13 5c 24 40    	vmovlpd %xmm11,0x40(%rsp)
  406848:	62 a1 df 00 58 db    	vaddsd %xmm19,%xmm20,%xmm19
  40684e:	62 e1 ff 08 10 64 24 	vmovsd 0x40(%rsp),%xmm20
  406855:	08 
  406856:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x40(%rsp)
  40685d:	08 
  40685e:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  406864:	62 c1 a5 08 15 db    	vunpckhpd %xmm11,%xmm11,%xmm19
  40686a:	62 53 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm11,%xmm11
  406871:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  406877:	62 c1 a5 08 15 cb    	vunpckhpd %xmm11,%xmm11,%xmm17
  40687d:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  406883:	62 a1 a7 08 58 d3    	vaddsd %xmm19,%xmm11,%xmm18
  406889:	62 e1 ff 08 10 5c 24 	vmovsd 0x40(%rsp),%xmm19
  406890:	08 
  406891:	62 53 fd 28 19 f3 01 	vextractf64x2 $0x1,%ymm14,%xmm11
  406898:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  40689e:	62 a1 fd 00 15 d0    	vunpckhpd %xmm16,%xmm16,%xmm18
  4068a4:	62 a3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm16,%xmm16
  4068ab:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  4068b1:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x40(%rsp)
  4068b8:	08 
  4068b9:	62 e1 ff 08 10 5c 24 	vmovsd 0x40(%rsp),%xmm19
  4068c0:	08 
  4068c1:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  4068c7:	62 a1 fd 00 15 c8    	vunpckhpd %xmm16,%xmm16,%xmm17
  4068cd:	c5 79 13 4c 24 40    	vmovlpd %xmm9,0x40(%rsp)
  4068d3:	62 a1 e7 00 58 d2    	vaddsd %xmm18,%xmm19,%xmm18
  4068d9:	62 e1 ff 08 10 5c 24 	vmovsd 0x40(%rsp),%xmm19
  4068e0:	08 
  4068e1:	c5 79 13 7c 24 40    	vmovlpd %xmm15,0x40(%rsp)
  4068e7:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  4068ed:	62 c1 b5 08 15 d1    	vunpckhpd %xmm9,%xmm9,%xmm18
  4068f3:	62 53 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm9,%xmm9
  4068fa:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  406900:	62 c1 b5 08 15 c1    	vunpckhpd %xmm9,%xmm9,%xmm16
  406906:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  40690c:	62 a1 b7 08 58 ca    	vaddsd %xmm18,%xmm9,%xmm17
  406912:	62 e1 ff 08 10 54 24 	vmovsd 0x40(%rsp),%xmm18
  406919:	08 
  40691a:	c5 f9 13 7c 24 40    	vmovlpd %xmm7,0x40(%rsp)
  406920:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  406926:	62 c1 85 08 15 cf    	vunpckhpd %xmm15,%xmm15,%xmm17
  40692c:	62 53 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm15,%xmm15
  406933:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  406939:	62 e1 ff 08 10 54 24 	vmovsd 0x40(%rsp),%xmm18
  406940:	08 
  406941:	62 61 fd 08 13 64 24 	vmovlpd %xmm28,0x40(%rsp)
  406948:	08 
  406949:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  40694f:	62 c1 85 08 15 c7    	vunpckhpd %xmm15,%xmm15,%xmm16
  406955:	62 53 fd 28 19 d1 01 	vextractf64x2 $0x1,%ymm10,%xmm9
  40695c:	62 a1 87 08 58 c9    	vaddsd %xmm17,%xmm15,%xmm17
  406962:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  406968:	62 e1 c5 08 15 cf    	vunpckhpd %xmm7,%xmm7,%xmm17
  40696e:	62 f3 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm7,%xmm7
  406975:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  40697b:	c5 41 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm15
  40697f:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  406985:	62 a1 c7 08 58 c1    	vaddsd %xmm17,%xmm7,%xmm16
  40698b:	62 e1 ff 08 10 4c 24 	vmovsd 0x40(%rsp),%xmm17
  406992:	08 
  406993:	c5 f9 13 6c 24 40    	vmovlpd %xmm5,0x40(%rsp)
  406999:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  40699f:	62 81 9d 00 15 c4    	vunpckhpd %xmm28,%xmm28,%xmm16
  4069a5:	c5 fd 28 7c 24 60    	vmovapd 0x60(%rsp),%ymm7
  4069ab:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  4069b1:	62 e1 ff 08 10 4c 24 	vmovsd 0x40(%rsp),%xmm17
  4069b8:	08 
  4069b9:	62 f3 fd 28 19 f8 01 	vextractf64x2 $0x1,%ymm7,%xmm0
  4069c0:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4069c6:	62 43 fd 28 19 e7 01 	vextractf64x2 $0x1,%ymm28,%xmm15
  4069cd:	62 a1 87 08 58 c0    	vaddsd %xmm16,%xmm15,%xmm16
  4069d3:	c4 41 01 15 ff       	vunpckhpd %xmm15,%xmm15,%xmm15
  4069d8:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  4069de:	62 e1 d5 08 15 c5    	vunpckhpd %xmm5,%xmm5,%xmm16
  4069e4:	62 f3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm5,%xmm5
  4069eb:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  4069f1:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4069f7:	62 31 d7 08 58 f8    	vaddsd %xmm16,%xmm5,%xmm15
  4069fd:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  406a01:	c4 c1 53 58 ef       	vaddsd %xmm15,%xmm5,%xmm5
  406a06:	62 11 a5 00 15 fb    	vunpckhpd %xmm27,%xmm27,%xmm15
  406a0c:	62 f1 a7 00 58 ed    	vaddsd %xmm5,%xmm27,%xmm5
  406a12:	c5 03 58 fd          	vaddsd %xmm5,%xmm15,%xmm15
  406a16:	c4 c1 1b 58 ef       	vaddsd %xmm15,%xmm12,%xmm5
  406a1b:	c4 41 19 15 e4       	vunpckhpd %xmm12,%xmm12,%xmm12
  406a20:	c5 1b 58 e5          	vaddsd %xmm5,%xmm12,%xmm12
  406a24:	c5 d9 15 ec          	vunpckhpd %xmm4,%xmm4,%xmm5
  406a28:	c4 41 5b 58 e4       	vaddsd %xmm12,%xmm4,%xmm12
  406a2d:	62 f3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm4,%xmm4
  406a34:	c4 c1 53 58 ec       	vaddsd %xmm12,%xmm5,%xmm5
  406a39:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  406a3d:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  406a41:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  406a45:	c4 c1 09 15 ee       	vunpckhpd %xmm14,%xmm14,%xmm5
  406a4a:	c5 8b 58 e4          	vaddsd %xmm4,%xmm14,%xmm4
  406a4e:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  406a52:	c5 a3 58 e5          	vaddsd %xmm5,%xmm11,%xmm4
  406a56:	c4 41 21 15 db       	vunpckhpd %xmm11,%xmm11,%xmm11
  406a5b:	c5 23 58 dc          	vaddsd %xmm4,%xmm11,%xmm11
  406a5f:	c5 e1 15 e3          	vunpckhpd %xmm3,%xmm3,%xmm4
  406a63:	c4 c1 63 58 eb       	vaddsd %xmm11,%xmm3,%xmm5
  406a68:	62 f3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm3,%xmm3
  406a6f:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  406a73:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  406a77:	c5 e1 15 db          	vunpckhpd %xmm3,%xmm3,%xmm3
  406a7b:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  406a7f:	c4 c1 11 15 dd       	vunpckhpd %xmm13,%xmm13,%xmm3
  406a84:	c5 93 58 e4          	vaddsd %xmm4,%xmm13,%xmm4
  406a88:	62 53 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm13,%xmm13
  406a8f:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  406a93:	c5 93 58 e3          	vaddsd %xmm3,%xmm13,%xmm4
  406a97:	c4 c1 11 15 dd       	vunpckhpd %xmm13,%xmm13,%xmm3
  406a9c:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  406aa0:	c5 e9 15 e2          	vunpckhpd %xmm2,%xmm2,%xmm4
  406aa4:	c5 eb 58 db          	vaddsd %xmm3,%xmm2,%xmm3
  406aa8:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  406aac:	62 f3 fd 28 19 d3 01 	vextractf64x2 $0x1,%ymm2,%xmm3
  406ab3:	c5 e3 58 d4          	vaddsd %xmm4,%xmm3,%xmm2
  406ab7:	c5 e1 15 db          	vunpckhpd %xmm3,%xmm3,%xmm3
  406abb:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  406abf:	c4 c1 29 15 d2       	vunpckhpd %xmm10,%xmm10,%xmm2
  406ac4:	c5 ab 58 db          	vaddsd %xmm3,%xmm10,%xmm3
  406ac8:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  406acc:	c5 b3 58 d2          	vaddsd %xmm2,%xmm9,%xmm2
  406ad0:	c4 41 31 15 c9       	vunpckhpd %xmm9,%xmm9,%xmm9
  406ad5:	c5 33 58 ca          	vaddsd %xmm2,%xmm9,%xmm9
  406ad9:	c5 c9 15 d6          	vunpckhpd %xmm6,%xmm6,%xmm2
  406add:	c4 c1 4b 58 d9       	vaddsd %xmm9,%xmm6,%xmm3
  406ae2:	c5 fd 28 b4 24 80 00 	vmovapd 0x80(%rsp),%ymm6
  406ae9:	00 00 
  406aeb:	c5 fd 28 ac 24 a0 00 	vmovapd 0xa0(%rsp),%ymm5
  406af2:	00 00 
  406af4:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  406af8:	c5 fc 28 98 00 fe ff 	vmovaps -0x200(%rax),%ymm3
  406aff:	ff 
  406b00:	62 e1 7c 28 28 50 f2 	vmovaps -0x1c0(%rax),%ymm18
  406b07:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  406b0b:	c5 f1 15 c9          	vunpckhpd %xmm1,%xmm1,%xmm1
  406b0f:	c5 fc 28 a0 80 fe ff 	vmovaps -0x180(%rax),%ymm4
  406b16:	ff 
  406b17:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  406b1b:	c4 c1 39 15 d0       	vunpckhpd %xmm8,%xmm8,%xmm2
  406b20:	62 f2 35 20 7f 58 f1 	vpermt2ps -0x1e0(%rax),%ymm25,%ymm3
  406b27:	c5 bb 58 c9          	vaddsd %xmm1,%xmm8,%xmm1
  406b2b:	62 53 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm8
  406b32:	c5 7c 28 b8 c0 fe ff 	vmovaps -0x140(%rax),%ymm15
  406b39:	ff 
  406b3a:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  406b3e:	62 e2 35 20 7f 50 f3 	vpermt2ps -0x1a0(%rax),%ymm25,%ymm18
  406b45:	62 f2 35 20 7f 60 f5 	vpermt2ps -0x160(%rax),%ymm25,%ymm4
  406b4c:	c5 bb 58 ca          	vaddsd %xmm2,%xmm8,%xmm1
  406b50:	c4 41 39 15 c0       	vunpckhpd %xmm8,%xmm8,%xmm8
  406b55:	62 e1 7c 28 28 48 fa 	vmovaps -0xc0(%rax),%ymm17
  406b5c:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  406b60:	c5 c1 15 cf          	vunpckhpd %xmm7,%xmm7,%xmm1
  406b64:	62 72 35 20 7f 78 f7 	vpermt2ps -0x120(%rax),%ymm25,%ymm15
  406b6b:	c4 c1 43 58 d0       	vaddsd %xmm8,%xmm7,%xmm2
  406b70:	62 f3 fd 28 19 f7 01 	vextractf64x2 $0x1,%ymm6,%xmm7
  406b77:	c5 7c 28 88 40 fe ff 	vmovaps -0x1c0(%rax),%ymm9
  406b7e:	ff 
  406b7f:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  406b83:	c5 fc 28 50 80       	vmovaps -0x80(%rax),%ymm2
  406b88:	c5 7c 28 b0 c0 fe ff 	vmovaps -0x140(%rax),%ymm14
  406b8f:	ff 
  406b90:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  406b94:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  406b98:	c5 7c 28 98 00 ff ff 	vmovaps -0x100(%rax),%ymm11
  406b9f:	ff 
  406ba0:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406ba4:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  406ba8:	c5 7c 28 80 40 ff ff 	vmovaps -0xc0(%rax),%ymm8
  406baf:	ff 
  406bb0:	c5 cb 58 c0          	vaddsd %xmm0,%xmm6,%xmm0
  406bb4:	62 f3 fd 28 19 ee 01 	vextractf64x2 $0x1,%ymm5,%xmm6
  406bbb:	62 e1 7c 28 28 40 fc 	vmovaps -0x80(%rax),%ymm16
  406bc2:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  406bc6:	c5 7c 28 60 c0       	vmovaps -0x40(%rax),%ymm12
  406bcb:	62 e2 35 20 7f 48 fb 	vpermt2ps -0xa0(%rax),%ymm25,%ymm17
  406bd2:	c5 c3 58 c1          	vaddsd %xmm1,%xmm7,%xmm0
  406bd6:	c5 c1 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm7
  406bda:	62 f2 35 20 7f 50 fd 	vpermt2ps -0x60(%rax),%ymm25,%ymm2
  406be1:	c5 c3 58 f8          	vaddsd %xmm0,%xmm7,%xmm7
  406be5:	c5 d1 15 c5          	vunpckhpd %xmm5,%xmm5,%xmm0
  406be9:	62 72 3d 20 7f 48 f3 	vpermt2ps -0x1a0(%rax),%ymm24,%ymm9
  406bf0:	c5 d3 58 cf          	vaddsd %xmm7,%xmm5,%xmm1
  406bf4:	c5 fd 28 bc 24 c0 00 	vmovapd 0xc0(%rsp),%ymm7
  406bfb:	00 00 
  406bfd:	62 72 3d 20 7f 70 f7 	vpermt2ps -0x120(%rax),%ymm24,%ymm14
  406c04:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406c08:	62 d3 fd 28 19 fd 01 	vextractf64x2 $0x1,%ymm7,%xmm13
  406c0f:	62 72 3d 20 7f 40 fb 	vpermt2ps -0xa0(%rax),%ymm24,%ymm8
  406c16:	c5 cb 58 c8          	vaddsd %xmm0,%xmm6,%xmm1
  406c1a:	c5 c9 15 f6          	vunpckhpd %xmm6,%xmm6,%xmm6
  406c1e:	c5 c1 15 c7          	vunpckhpd %xmm7,%xmm7,%xmm0
  406c22:	c5 f3 58 ce          	vaddsd %xmm6,%xmm1,%xmm1
  406c26:	c5 fd 28 b4 24 e0 00 	vmovapd 0xe0(%rsp),%ymm6
  406c2d:	00 00 
  406c2f:	62 72 3d 20 7f 58 f9 	vpermt2ps -0xe0(%rax),%ymm24,%ymm11
  406c36:	c5 c3 58 c9          	vaddsd %xmm1,%xmm7,%xmm1
  406c3a:	62 f3 fd 28 19 f5 01 	vextractf64x2 $0x1,%ymm6,%xmm5
  406c41:	c5 fc 28 b8 80 fe ff 	vmovaps -0x180(%rax),%ymm7
  406c48:	ff 
  406c49:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406c4d:	c5 c9 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm1
  406c51:	62 f2 3d 20 7f 78 f5 	vpermt2ps -0x160(%rax),%ymm24,%ymm7
  406c58:	c4 c1 7b 58 c5       	vaddsd %xmm13,%xmm0,%xmm0
  406c5d:	c4 41 11 15 ed       	vunpckhpd %xmm13,%xmm13,%xmm13
  406c62:	62 e2 3d 20 7f 40 fd 	vpermt2ps -0x60(%rax),%ymm24,%ymm16
  406c69:	c4 c1 7b 58 c5       	vaddsd %xmm13,%xmm0,%xmm0
  406c6e:	c5 7c 28 eb          	vmovaps %ymm3,%ymm13
  406c72:	62 32 35 20 7f ea    	vpermt2ps %ymm18,%ymm25,%ymm13
  406c78:	c5 fb 58 c6          	vaddsd %xmm6,%xmm0,%xmm0
  406c7c:	62 b2 3d 20 7f da    	vpermt2ps %ymm18,%ymm24,%ymm3
  406c82:	c5 fc 28 b0 00 fe ff 	vmovaps -0x200(%rax),%ymm6
  406c89:	ff 
  406c8a:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406c8e:	c5 fc 28 88 00 ff ff 	vmovaps -0x100(%rax),%ymm1
  406c95:	ff 
  406c96:	62 e1 7c 28 28 d4    	vmovaps %ymm4,%ymm18
  406c9c:	62 f2 35 20 7f 48 f9 	vpermt2ps -0xe0(%rax),%ymm25,%ymm1
  406ca3:	62 c2 35 20 7f d7    	vpermt2ps %ymm15,%ymm25,%ymm18
  406ca9:	62 d2 3d 20 7f e7    	vpermt2ps %ymm15,%ymm24,%ymm4
  406caf:	c5 7c 28 f9          	vmovaps %ymm1,%ymm15
  406cb3:	62 f2 3d 20 7f 70 f1 	vpermt2ps -0x1e0(%rax),%ymm24,%ymm6
  406cba:	62 32 35 20 7f f9    	vpermt2ps %ymm17,%ymm25,%ymm15
  406cc0:	62 72 35 20 7f 60 ff 	vpermt2ps -0x20(%rax),%ymm25,%ymm12
  406cc7:	62 b2 3d 20 7f c9    	vpermt2ps %ymm17,%ymm24,%ymm1
  406ccd:	62 e1 7c 28 28 ca    	vmovaps %ymm2,%ymm17
  406cd3:	62 c2 35 20 7f cc    	vpermt2ps %ymm12,%ymm25,%ymm17
  406cd9:	62 d2 3d 20 7f d4    	vpermt2ps %ymm12,%ymm24,%ymm2
  406cdf:	c5 7c 28 e6          	vmovaps %ymm6,%ymm12
  406ce3:	62 52 35 20 7f e1    	vpermt2ps %ymm9,%ymm25,%ymm12
  406ce9:	62 d2 3d 20 7f f1    	vpermt2ps %ymm9,%ymm24,%ymm6
  406cef:	c5 7c 28 50 c0       	vmovaps -0x40(%rax),%ymm10
  406cf4:	c5 7c 28 cf          	vmovaps %ymm7,%ymm9
  406cf8:	62 52 35 20 7f ce    	vpermt2ps %ymm14,%ymm25,%ymm9
  406cfe:	62 d2 3d 20 7f fe    	vpermt2ps %ymm14,%ymm24,%ymm7
  406d04:	c4 41 7c 28 f3       	vmovaps %ymm11,%ymm14
  406d09:	62 72 3d 20 7f 50 ff 	vpermt2ps -0x20(%rax),%ymm24,%ymm10
  406d10:	62 52 35 20 7f f0    	vpermt2ps %ymm8,%ymm25,%ymm14
  406d16:	62 52 3d 20 7f d8    	vpermt2ps %ymm8,%ymm24,%ymm11
  406d1c:	62 31 7c 28 28 c0    	vmovaps %ymm16,%ymm8
  406d22:	62 52 35 20 7f c2    	vpermt2ps %ymm10,%ymm25,%ymm8
  406d28:	62 c2 3d 20 7f c2    	vpermt2ps %ymm10,%ymm24,%ymm16
  406d2e:	62 c1 7c 28 28 de    	vmovaps %ymm14,%ymm19
  406d34:	c4 41 7c 28 d5       	vmovaps %ymm13,%ymm10
  406d39:	62 32 35 20 7f d2    	vpermt2ps %ymm18,%ymm25,%ymm10
  406d3f:	62 32 3d 20 7f ea    	vpermt2ps %ymm18,%ymm24,%ymm13
  406d45:	62 c2 35 20 7f d8    	vpermt2ps %ymm8,%ymm25,%ymm19
  406d4b:	62 52 3d 20 7f f0    	vpermt2ps %ymm8,%ymm24,%ymm14
  406d51:	62 c1 7c 28 28 e7    	vmovaps %ymm15,%ymm20
  406d57:	62 e1 7c 28 28 d1    	vmovaps %ymm1,%ymm18
  406d5d:	c5 7c 28 c6          	vmovaps %ymm6,%ymm8
  406d61:	62 f2 3d 20 7f f7    	vpermt2ps %ymm7,%ymm24,%ymm6
  406d67:	62 f2 3d 20 7f ca    	vpermt2ps %ymm2,%ymm24,%ymm1
  406d6d:	62 a2 35 20 7f e1    	vpermt2ps %ymm17,%ymm25,%ymm20
  406d73:	62 32 3d 20 7f f9    	vpermt2ps %ymm17,%ymm24,%ymm15
  406d79:	62 e2 35 20 7f d2    	vpermt2ps %ymm2,%ymm25,%ymm18
  406d7f:	62 c1 7c 28 28 cc    	vmovaps %ymm12,%ymm17
  406d85:	c5 fc 28 d6          	vmovaps %ymm6,%ymm2
  406d89:	c5 7c 29 d6          	vmovaps %ymm10,%ymm6
  406d8d:	62 c2 35 20 7f c9    	vpermt2ps %ymm9,%ymm25,%ymm17
  406d93:	62 b2 35 20 7f f4    	vpermt2ps %ymm20,%ymm25,%ymm6
  406d99:	62 52 3d 20 7f e1    	vpermt2ps %ymm9,%ymm24,%ymm12
  406d9f:	62 b1 4c 28 c2 cf 04 	vcmpneqps %ymm23,%ymm6,%k1
  406da6:	c5 7c 28 cb          	vmovaps %ymm3,%ymm9
  406daa:	62 b1 7c 28 28 f1    	vmovaps %ymm17,%ymm6
  406db0:	62 72 35 20 7f cc    	vpermt2ps %ymm4,%ymm25,%ymm9
  406db6:	62 b2 35 20 7f f3    	vpermt2ps %ymm19,%ymm25,%ymm6
  406dbc:	62 b1 4c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm6,%k0
  406dc3:	c5 7c 29 ce          	vmovaps %ymm9,%ymm6
  406dc7:	62 f2 3d 20 7f dc    	vpermt2ps %ymm4,%ymm24,%ymm3
  406dcd:	62 72 35 20 7f c7    	vpermt2ps %ymm7,%ymm25,%ymm8
  406dd3:	c5 7c 29 dc          	vmovaps %ymm11,%ymm4
  406dd7:	62 b2 35 20 7f f2    	vpermt2ps %ymm18,%ymm25,%ymm6
  406ddd:	62 b1 4c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm6,%k2
  406de4:	62 b2 35 20 7f e0    	vpermt2ps %ymm16,%ymm25,%ymm4
  406dea:	c5 7c 29 c6          	vmovaps %ymm8,%ymm6
  406dee:	62 f2 35 20 7f f4    	vpermt2ps %ymm4,%ymm25,%ymm6
  406df4:	62 b1 4c 28 c2 df 04 	vcmpneqps %ymm23,%ymm6,%k3
  406dfb:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  406dff:	62 d2 35 20 7f f7    	vpermt2ps %ymm15,%ymm25,%ymm6
  406e05:	62 b1 4c 28 c2 e7 04 	vcmpneqps %ymm23,%ymm6,%k4
  406e0c:	c5 7c 29 e6          	vmovaps %ymm12,%ymm6
  406e10:	62 d2 35 20 7f f6    	vpermt2ps %ymm14,%ymm25,%ymm6
  406e16:	62 b1 4c 28 c2 ef 04 	vcmpneqps %ymm23,%ymm6,%k5
  406e1d:	c5 fc 28 f3          	vmovaps %ymm3,%ymm6
  406e21:	62 f2 35 20 7f f1    	vpermt2ps %ymm1,%ymm25,%ymm6
  406e27:	62 b1 4c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm6,%k6
  406e2e:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  406e32:	c5 f9 93 ca          	kmovb  %k2,%ecx
  406e36:	62 32 3d 20 7f d8    	vpermt2ps %ymm16,%ymm24,%ymm11
  406e3c:	c5 fc 28 f2          	vmovaps %ymm2,%ymm6
  406e40:	c5 f9 93 f1          	kmovb  %k1,%esi
  406e44:	09 ce                	or     %ecx,%esi
  406e46:	62 d2 35 20 7f f3    	vpermt2ps %ymm11,%ymm25,%ymm6
  406e4c:	c5 f9 93 cb          	kmovb  %k3,%ecx
  406e50:	09 ce                	or     %ecx,%esi
  406e52:	62 b1 4c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm6,%k7
  406e59:	c5 f9 93 cc          	kmovb  %k4,%ecx
  406e5d:	62 32 3d 20 7f d4    	vpermt2ps %ymm20,%ymm24,%ymm10
  406e63:	09 ce                	or     %ecx,%esi
  406e65:	62 b1 7c 28 28 f9    	vmovaps %ymm17,%ymm7
  406e6b:	c5 f9 93 cd          	kmovb  %k5,%ecx
  406e6f:	62 b1 2c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm10,%k2
  406e76:	09 ce                	or     %ecx,%esi
  406e78:	62 b2 3d 20 7f fb    	vpermt2ps %ymm19,%ymm24,%ymm7
  406e7e:	c5 f9 93 ce          	kmovb  %k6,%ecx
  406e82:	62 b1 44 28 c2 df 04 	vcmpneqps %ymm23,%ymm7,%k3
  406e89:	09 ce                	or     %ecx,%esi
  406e8b:	62 32 3d 20 7f ca    	vpermt2ps %ymm18,%ymm24,%ymm9
  406e91:	c5 f9 93 cf          	kmovb  %k7,%ecx
  406e95:	62 72 3d 20 7f c4    	vpermt2ps %ymm4,%ymm24,%ymm8
  406e9b:	09 ce                	or     %ecx,%esi
  406e9d:	62 b1 34 28 c2 e7 04 	vcmpneqps %ymm23,%ymm9,%k4
  406ea4:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  406ea8:	c5 f9 93 ca          	kmovb  %k2,%ecx
  406eac:	62 b1 3c 28 c2 ef 04 	vcmpneqps %ymm23,%ymm8,%k5
  406eb3:	09 ce                	or     %ecx,%esi
  406eb5:	62 d2 3d 20 7f f7    	vpermt2ps %ymm15,%ymm24,%ymm6
  406ebb:	c5 7c 29 e4          	vmovaps %ymm12,%ymm4
  406ebf:	62 f2 3d 20 7f d9    	vpermt2ps %ymm1,%ymm24,%ymm3
  406ec5:	c5 f9 93 cb          	kmovb  %k3,%ecx
  406ec9:	62 b1 4c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm6,%k6
  406ed0:	09 ce                	or     %ecx,%esi
  406ed2:	62 d2 3d 20 7f e6    	vpermt2ps %ymm14,%ymm24,%ymm4
  406ed8:	62 b1 64 28 c2 c7 04 	vcmpneqps %ymm23,%ymm3,%k0
  406edf:	c5 f9 93 cc          	kmovb  %k4,%ecx
  406ee3:	62 b1 5c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm4,%k7
  406eea:	09 ce                	or     %ecx,%esi
  406eec:	c5 fb 58 c5          	vaddsd %xmm5,%xmm0,%xmm0
  406ef0:	c5 f9 93 cd          	kmovb  %k5,%ecx
  406ef4:	09 ce                	or     %ecx,%esi
  406ef6:	62 d2 3d 20 7f d3    	vpermt2ps %ymm11,%ymm24,%ymm2
  406efc:	c5 f9 93 ce          	kmovb  %k6,%ecx
  406f00:	09 ce                	or     %ecx,%esi
  406f02:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  406f06:	c5 f9 93 cf          	kmovb  %k7,%ecx
  406f0a:	09 ce                	or     %ecx,%esi
  406f0c:	c5 f9 93 c8          	kmovb  %k0,%ecx
  406f10:	62 b1 6c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm2,%k0
  406f17:	c5 d3 58 e8          	vaddsd %xmm0,%xmm5,%xmm5
  406f1b:	09 ce                	or     %ecx,%esi
  406f1d:	c5 f9 92 ce          	kmovb  %esi,%k1
  406f21:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  406f25:	62 f1 7d a9 6f 0d d1 	vmovdqa32 0x45d1(%rip),%ymm1{%k1}{z}        # 40b500 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  406f2c:	45 00 00 
  406f2f:	62 61 2d 20 eb d1    	vpord  %ymm1,%ymm26,%ymm26
  406f35:	c4 e1 f9 7e eb       	vmovq  %xmm5,%rbx
  406f3a:	48 39 c2             	cmp    %rax,%rdx
  406f3d:	0f 85 fa f3 ff ff    	jne    40633d <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x67d>
  406f43:	62 63 7d 28 39 d1 01 	vextracti32x4 $0x1,%ymm26,%xmm1
  406f4a:	62 91 7d 08 6f c2    	vmovdqa32 %xmm26,%xmm0
  406f50:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  406f54:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  406f59:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  406f5d:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  406f62:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  406f66:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  406f6a:	41 09 c5             	or     %eax,%r13d
  406f6d:	48 8d 84 24 40 19 00 	lea    0x1940(%rsp),%rax
  406f74:	00 
  406f75:	48 39 c2             	cmp    %rax,%rdx
  406f78:	0f 85 ab f3 ff ff    	jne    406329 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x669>
  406f7e:	c4 e2 78 49 c0       	tilerelease 
  406f83:	c5 f8 77             	vzeroupper 
  406f86:	e9 85 ed ff ff       	jmpq   405d10 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x50>
  406f8b:	62 f2 7d 48 18 05 b3 	vbroadcastss 0x45b3(%rip),%zmm0        # 40b548 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x228>
  406f92:	45 00 00 
  406f95:	62 f2 7d 48 18 25 81 	vbroadcastss 0x4581(%rip),%zmm4        # 40b520 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x200>
  406f9c:	45 00 00 
  406f9f:	62 f2 7d 48 18 2d 7b 	vbroadcastss 0x457b(%rip),%zmm5        # 40b524 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x204>
  406fa6:	45 00 00 
  406fa9:	62 f2 7d 48 18 35 75 	vbroadcastss 0x4575(%rip),%zmm6        # 40b528 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x208>
  406fb0:	45 00 00 
  406fb3:	62 f2 7d 48 18 3d 6f 	vbroadcastss 0x456f(%rip),%zmm7        # 40b52c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x20c>
  406fba:	45 00 00 
  406fbd:	62 72 7d 48 18 05 69 	vbroadcastss 0x4569(%rip),%zmm8        # 40b530 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x210>
  406fc4:	45 00 00 
  406fc7:	62 72 7d 48 18 0d 63 	vbroadcastss 0x4563(%rip),%zmm9        # 40b534 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x214>
  406fce:	45 00 00 
  406fd1:	62 72 7d 48 18 15 5d 	vbroadcastss 0x455d(%rip),%zmm10        # 40b538 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x218>
  406fd8:	45 00 00 
  406fdb:	62 72 7d 48 18 1d 57 	vbroadcastss 0x4557(%rip),%zmm11        # 40b53c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x21c>
  406fe2:	45 00 00 
  406fe5:	62 f2 7d 48 18 15 51 	vbroadcastss 0x4551(%rip),%zmm2        # 40b540 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x220>
  406fec:	45 00 00 
  406fef:	62 72 7d 48 18 25 4b 	vbroadcastss 0x454b(%rip),%zmm12        # 40b544 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x224>
  406ff6:	45 00 00 
  406ff9:	62 72 7d 48 18 2d 01 	vbroadcastss 0x4401(%rip),%zmm13        # 40b404 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe4>
  407000:	44 00 00 
  407003:	62 f2 7d 48 18 0d 3f 	vbroadcastss 0x453f(%rip),%zmm1        # 40b54c <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x22c>
  40700a:	45 00 00 
  40700d:	62 f1 7c 48 28 d8    	vmovaps %zmm0,%zmm3
  407013:	62 f2 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm3
  407019:	62 72 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm13
  40701f:	62 72 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm12
  407025:	62 f2 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm2
  40702b:	62 72 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm11
  407031:	62 72 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm10
  407037:	62 72 75 48 98 c8    	vfmadd132ps %zmm0,%zmm1,%zmm9
  40703d:	62 72 75 48 98 c0    	vfmadd132ps %zmm0,%zmm1,%zmm8
  407043:	62 f2 75 48 98 f8    	vfmadd132ps %zmm0,%zmm1,%zmm7
  407049:	62 f2 75 48 98 f0    	vfmadd132ps %zmm0,%zmm1,%zmm6
  40704f:	62 f2 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm5
  407055:	62 f2 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm4
  40705b:	ff c8                	dec    %eax
  40705d:	75 b4                	jne    407013 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x1353>
  40705f:	62 f3 fd 48 1b d9 01 	vextractf64x4 $0x1,%zmm3,%ymm1
  407066:	c5 e4 58 c1          	vaddps %ymm1,%ymm3,%ymm0
  40706a:	45 31 ed             	xor    %r13d,%r13d
  40706d:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  407073:	c5 f0 58 c8          	vaddps %xmm0,%xmm1,%xmm1
  407077:	c4 e3 79 04 c1 4e    	vpermilps $0x4e,%xmm1,%xmm0
  40707d:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
  407081:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
  407085:	c5 f8 c6 c0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm0
  40708a:	c5 f2 58 c8          	vaddss %xmm0,%xmm1,%xmm1
  40708e:	62 73 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm13,%ymm0
  407095:	c4 c1 7c 58 c5       	vaddps %ymm13,%ymm0,%ymm0
  40709a:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40709e:	c5 f3 58 0d c2 44 00 	vaddsd 0x44c2(%rip),%xmm1,%xmm1        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  4070a5:	00 
  4070a6:	c4 e3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm3
  4070ac:	c5 f8 58 c3          	vaddps %xmm3,%xmm0,%xmm0
  4070b0:	c4 e3 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm3
  4070b6:	c5 e0 58 d8          	vaddps %xmm0,%xmm3,%xmm3
  4070ba:	c5 e0 c6 c3 55       	vshufps $0x55,%xmm3,%xmm3,%xmm0
  4070bf:	c5 fa 58 c3          	vaddss %xmm3,%xmm0,%xmm0
  4070c3:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4070c7:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4070cb:	62 73 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm12,%ymm1
  4070d2:	c4 c1 74 58 cc       	vaddps %ymm12,%ymm1,%ymm1
  4070d7:	c4 e3 7d 19 cb 01    	vextractf128 $0x1,%ymm1,%xmm3
  4070dd:	c5 e0 58 d9          	vaddps %xmm1,%xmm3,%xmm3
  4070e1:	c4 e3 79 04 cb 4e    	vpermilps $0x4e,%xmm3,%xmm1
  4070e7:	c5 f0 58 cb          	vaddps %xmm3,%xmm1,%xmm1
  4070eb:	c5 f8 28 d9          	vmovaps %xmm1,%xmm3
  4070ef:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  4070f4:	c5 e2 58 d9          	vaddss %xmm1,%xmm3,%xmm3
  4070f8:	62 f3 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm2,%ymm1
  4070ff:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  407103:	c5 e3 58 d8          	vaddsd %xmm0,%xmm3,%xmm3
  407107:	c5 ec 58 c1          	vaddps %ymm1,%ymm2,%ymm0
  40710b:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  407111:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
  407115:	c4 e3 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm1
  40711b:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  40711f:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
  407123:	c5 f8 c6 c0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm0
  407128:	c5 f2 58 c8          	vaddss %xmm0,%xmm1,%xmm1
  40712c:	62 73 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm11,%ymm0
  407133:	c4 c1 7c 58 c3       	vaddps %ymm11,%ymm0,%ymm0
  407138:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40713c:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  407140:	c4 e3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm2
  407146:	c5 e8 58 c0          	vaddps %xmm0,%xmm2,%xmm0
  40714a:	c4 e3 79 04 d0 4e    	vpermilps $0x4e,%xmm0,%xmm2
  407150:	c5 e8 58 d0          	vaddps %xmm0,%xmm2,%xmm2
  407154:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
  407158:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  40715d:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  407161:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  407165:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  407169:	62 73 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm1
  407170:	c4 c1 74 58 ca       	vaddps %ymm10,%ymm1,%ymm1
  407175:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  40717b:	c5 e8 58 c9          	vaddps %xmm1,%xmm2,%xmm1
  40717f:	c4 e3 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm2
  407185:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  407189:	c5 f8 28 ca          	vmovaps %xmm2,%xmm1
  40718d:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  407192:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
  407196:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40719a:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40719e:	62 73 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm0
  4071a5:	c4 c1 7c 58 c1       	vaddps %ymm9,%ymm0,%ymm0
  4071aa:	c4 e3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm2
  4071b0:	c5 e8 58 c0          	vaddps %xmm0,%xmm2,%xmm0
  4071b4:	c4 e3 79 04 d0 4e    	vpermilps $0x4e,%xmm0,%xmm2
  4071ba:	c5 e8 58 d0          	vaddps %xmm0,%xmm2,%xmm2
  4071be:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
  4071c2:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  4071c7:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  4071cb:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4071cf:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4071d3:	62 73 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm8,%ymm1
  4071da:	c4 c1 74 58 c8       	vaddps %ymm8,%ymm1,%ymm1
  4071df:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  4071e5:	c5 e8 58 c9          	vaddps %xmm1,%xmm2,%xmm1
  4071e9:	c4 e3 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm2
  4071ef:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  4071f3:	c5 f8 28 ca          	vmovaps %xmm2,%xmm1
  4071f7:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  4071fc:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
  407200:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  407204:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  407208:	62 f3 fd 48 1b f8 01 	vextractf64x4 $0x1,%zmm7,%ymm0
  40720f:	c5 fc 58 c7          	vaddps %ymm7,%ymm0,%ymm0
  407213:	c4 e3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm2
  407219:	c5 e8 58 c0          	vaddps %xmm0,%xmm2,%xmm0
  40721d:	c4 e3 79 04 d0 4e    	vpermilps $0x4e,%xmm0,%xmm2
  407223:	c5 e8 58 d0          	vaddps %xmm0,%xmm2,%xmm2
  407227:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
  40722b:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  407230:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  407234:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  407238:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  40723c:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  407243:	c5 f4 58 ce          	vaddps %ymm6,%ymm1,%ymm1
  407247:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  40724d:	c5 e8 58 c9          	vaddps %xmm1,%xmm2,%xmm1
  407251:	c4 e3 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm2
  407257:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  40725b:	c5 f8 28 ca          	vmovaps %xmm2,%xmm1
  40725f:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  407264:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
  407268:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40726c:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  407270:	62 f3 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm5,%ymm0
  407277:	c5 fc 58 c5          	vaddps %ymm5,%ymm0,%ymm0
  40727b:	c4 e3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm2
  407281:	c5 e8 58 c0          	vaddps %xmm0,%xmm2,%xmm0
  407285:	c4 e3 79 04 d0 4e    	vpermilps $0x4e,%xmm0,%xmm2
  40728b:	c5 e8 58 d0          	vaddps %xmm0,%xmm2,%xmm2
  40728f:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
  407293:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  407298:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
  40729c:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4072a0:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4072a4:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  4072ab:	c5 f4 58 cc          	vaddps %ymm4,%ymm1,%ymm1
  4072af:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  4072b5:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  4072b9:	c4 e3 79 04 ca 4e    	vpermilps $0x4e,%xmm2,%xmm1
  4072bf:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
  4072c3:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
  4072c7:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  4072cc:	c5 ea 58 c9          	vaddss %xmm1,%xmm2,%xmm1
  4072d0:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4072d4:	c5 f3 58 f8          	vaddsd %xmm0,%xmm1,%xmm7
  4072d8:	c4 e1 f9 7e fb       	vmovq  %xmm7,%rbx
  4072dd:	c5 f8 77             	vzeroupper 
  4072e0:	e9 2b ea ff ff       	jmpq   405d10 <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x50>
  4072e5:	31 c0                	xor    %eax,%eax
  4072e7:	ba 12 00 00 00       	mov    $0x12,%edx
  4072ec:	be 23 10 00 00       	mov    $0x1023,%esi
  4072f1:	bf 9e 00 00 00       	mov    $0x9e,%edi
  4072f6:	e8 55 bd ff ff       	callq  403050 <syscall@plt>
  4072fb:	48 85 c0             	test   %rax,%rax
  4072fe:	0f 94 c0             	sete   %al
  407301:	64 88 04 25 f8 ff ff 	mov    %al,%fs:0xfffffffffffffff8
  407308:	ff 
  407309:	64 c6 04 25 f0 ff ff 	movb   $0x1,%fs:0xfffffffffffffff0
  407310:	ff 01 
  407312:	e9 e4 e9 ff ff       	jmpq   405cfb <_ZZ4mainENKUlvE_clEv._omp_fn.2+0x3b>
  407317:	90                   	nop
  407318:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40731f:	00 

0000000000407320 <_ZZ4mainENKUlvE_clEv>:
  407320:	55                   	push   %rbp
  407321:	53                   	push   %rbx
  407322:	48 89 fb             	mov    %rdi,%rbx
  407325:	48 83 ec 38          	sub    $0x38,%rsp
  407329:	48 8b 07             	mov    (%rdi),%rax
  40732c:	80 38 00             	cmpb   $0x0,(%rax)
  40732f:	0f 85 71 01 00 00    	jne    4074a6 <_ZZ4mainENKUlvE_clEv+0x186>
  407335:	48 8b 47 10          	mov    0x10(%rdi),%rax
  407339:	80 38 00             	cmpb   $0x0,(%rax)
  40733c:	0f 85 98 01 00 00    	jne    4074da <_ZZ4mainENKUlvE_clEv+0x1ba>
  407342:	48 8b 47 38          	mov    0x38(%rdi),%rax
  407346:	0f b6 28             	movzbl (%rax),%ebp
  407349:	40 84 ed             	test   %bpl,%bpl
  40734c:	0f 85 c6 00 00 00    	jne    407418 <_ZZ4mainENKUlvE_clEv+0xf8>
  407352:	48 8d 47 48          	lea    0x48(%rdi),%rax
  407356:	c4 e1 f9 6e df       	vmovq  %rdi,%xmm3
  40735b:	c4 e3 e1 22 c0 01    	vpinsrq $0x1,%rax,%xmm3,%xmm0
  407361:	31 d2                	xor    %edx,%edx
  407363:	48 8d 47 50          	lea    0x50(%rdi),%rax
  407367:	31 c9                	xor    %ecx,%ecx
  407369:	48 89 e6             	mov    %rsp,%rsi
  40736c:	bf c0 5c 40 00       	mov    $0x405cc0,%edi
  407371:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  407376:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%rsp)
  40737d:	00 
  40737e:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
  407385:	00 00 
  407387:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  40738c:	e8 ef bf ff ff       	callq  403380 <GOMP_parallel@plt>
  407391:	8b 44 24 20          	mov    0x20(%rsp),%eax
  407395:	c5 fb 10 4c 24 18    	vmovsd 0x18(%rsp),%xmm1
  40739b:	48 8b 53 58          	mov    0x58(%rbx),%rdx
  40739f:	c5 fb 11 0a          	vmovsd %xmm1,(%rdx)
  4073a3:	85 c0                	test   %eax,%eax
  4073a5:	75 1a                	jne    4073c1 <_ZZ4mainENKUlvE_clEv+0xa1>
  4073a7:	c5 f1 54 05 b1 41 00 	vandpd 0x41b1(%rip),%xmm1,%xmm0        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  4073ae:	00 
  4073af:	c5 fb 10 15 c1 40 00 	vmovsd 0x40c1(%rip),%xmm2        # 40b478 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  4073b6:	00 
  4073b7:	c5 f9 2e d0          	vucomisd %xmm0,%xmm2
  4073bb:	0f 83 08 01 00 00    	jae    4074c9 <_ZZ4mainENKUlvE_clEv+0x1a9>
  4073c1:	48 8b 43 60          	mov    0x60(%rbx),%rax
  4073c5:	48 8b 4b 50          	mov    0x50(%rbx),%rcx
  4073c9:	40 22 28             	and    (%rax),%bpl
  4073cc:	40 88 28             	mov    %bpl,(%rax)
  4073cf:	80 39 00             	cmpb   $0x0,(%rcx)
  4073d2:	0f 85 92 00 00 00    	jne    40746a <_ZZ4mainENKUlvE_clEv+0x14a>
  4073d8:	48 8b 53 68          	mov    0x68(%rbx),%rdx
  4073dc:	80 3a 00             	cmpb   $0x0,(%rdx)
  4073df:	0f 85 85 00 00 00    	jne    40746a <_ZZ4mainENKUlvE_clEv+0x14a>
  4073e5:	48 8b 73 48          	mov    0x48(%rbx),%rsi
  4073e9:	48 8b 43 78          	mov    0x78(%rbx),%rax
  4073ed:	ba 01 00 00 00       	mov    $0x1,%edx
  4073f2:	48 c1 e2 22          	shl    $0x22,%rdx
  4073f6:	80 3e 00             	cmpb   $0x0,(%rsi)
  4073f9:	48 63 00             	movslq (%rax),%rax
  4073fc:	75 14                	jne    407412 <_ZZ4mainENKUlvE_clEv+0xf2>
  4073fe:	80 39 01             	cmpb   $0x1,(%rcx)
  407401:	48 19 d2             	sbb    %rdx,%rdx
  407404:	48 81 e2 00 f0 aa dd 	and    $0xffffffffddaaf000,%rdx
  40740b:	48 81 c2 00 20 aa 44 	add    $0x44aa2000,%rdx
  407412:	48 0f af c2          	imul   %rdx,%rax
  407416:	eb 4b                	jmp    407463 <_ZZ4mainENKUlvE_clEv+0x143>
  407418:	48 8d 47 18          	lea    0x18(%rdi),%rax
  40741c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  407421:	48 8d 47 20          	lea    0x20(%rdi),%rax
  407425:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40742a:	48 8d 47 28          	lea    0x28(%rdi),%rax
  40742e:	48 89 3c 24          	mov    %rdi,(%rsp)
  407432:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  407437:	31 d2                	xor    %edx,%edx
  407439:	48 8d 47 40          	lea    0x40(%rdi),%rax
  40743d:	31 c9                	xor    %ecx,%ecx
  40743f:	48 89 e6             	mov    %rsp,%rsi
  407442:	bf d0 5a 40 00       	mov    $0x405ad0,%edi
  407447:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40744c:	e8 2f bf ff ff       	callq  403380 <GOMP_parallel@plt>
  407451:	48 8b 43 40          	mov    0x40(%rbx),%rax
  407455:	48 8b 53 18          	mov    0x18(%rbx),%rdx
  407459:	48 63 00             	movslq (%rax),%rax
  40745c:	48 0f af 02          	imul   (%rdx),%rax
  407460:	48 01 c0             	add    %rax,%rax
  407463:	48 83 c4 38          	add    $0x38,%rsp
  407467:	5b                   	pop    %rbx
  407468:	5d                   	pop    %rbp
  407469:	c3                   	retq   
  40746a:	48 8b 53 70          	mov    0x70(%rbx),%rdx
  40746e:	c5 fa 7e 15 ea 40 00 	vmovq  0x40ea(%rip),%xmm2        # 40b560 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  407475:	00 
  407476:	c5 fb 10 02          	vmovsd (%rdx),%xmm0
  40747a:	c5 f3 5c c8          	vsubsd %xmm0,%xmm1,%xmm1
  40747e:	c5 f9 54 c2          	vandpd %xmm2,%xmm0,%xmm0
  407482:	c5 f1 54 ca          	vandpd %xmm2,%xmm1,%xmm1
  407486:	c5 fb 10 15 e2 3f 00 	vmovsd 0x3fe2(%rip),%xmm2        # 40b470 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  40748d:	00 
  40748e:	c5 fb 59 c2          	vmulsd %xmm2,%xmm0,%xmm0
  407492:	c5 fb 5f c2          	vmaxsd %xmm2,%xmm0,%xmm0
  407496:	c5 f9 2f c1          	vcomisd %xmm1,%xmm0
  40749a:	0f 97 c2             	seta   %dl
  40749d:	21 ea                	and    %ebp,%edx
  40749f:	88 10                	mov    %dl,(%rax)
  4074a1:	e9 3f ff ff ff       	jmpq   4073e5 <_ZZ4mainENKUlvE_clEv+0xc5>
  4074a6:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  4074aa:	b8 00 00 01 00       	mov    $0x10000,%eax
  4074af:	48 8b 11             	mov    (%rcx),%rdx
  4074b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4074b8:	48 8b 12             	mov    (%rdx),%rdx
  4074bb:	48 89 11             	mov    %rdx,(%rcx)
  4074be:	ff c8                	dec    %eax
  4074c0:	75 f6                	jne    4074b8 <_ZZ4mainENKUlvE_clEv+0x198>
  4074c2:	b8 00 00 01 00       	mov    $0x10000,%eax
  4074c7:	eb 9a                	jmp    407463 <_ZZ4mainENKUlvE_clEv+0x143>
  4074c9:	c5 f9 2f 0d 97 40 00 	vcomisd 0x4097(%rip),%xmm1        # 40b568 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  4074d0:	00 
  4074d1:	40 0f 97 c5          	seta   %bpl
  4074d5:	e9 e7 fe ff ff       	jmpq   4073c1 <_ZZ4mainENKUlvE_clEv+0xa1>
  4074da:	48 8d 47 18          	lea    0x18(%rdi),%rax
  4074de:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4074e3:	48 8d 47 20          	lea    0x20(%rdi),%rax
  4074e7:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  4074ec:	48 8d 47 28          	lea    0x28(%rdi),%rax
  4074f0:	48 89 3c 24          	mov    %rdi,(%rsp)
  4074f4:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4074f9:	31 c9                	xor    %ecx,%ecx
  4074fb:	48 8d 47 30          	lea    0x30(%rdi),%rax
  4074ff:	31 d2                	xor    %edx,%edx
  407501:	48 89 e6             	mov    %rsp,%rsi
  407504:	bf 00 59 40 00       	mov    $0x405900,%edi
  407509:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40750e:	e8 6d be ff ff       	callq  403380 <GOMP_parallel@plt>
  407513:	48 8b 43 18          	mov    0x18(%rbx),%rax
  407517:	48 8b 00             	mov    (%rax),%rax
  40751a:	48 01 c0             	add    %rax,%rax
  40751d:	e9 41 ff ff ff       	jmpq   407463 <_ZZ4mainENKUlvE_clEv+0x143>
  407522:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  407529:	00 00 00 00 
  40752d:	0f 1f 00             	nopl   (%rax)

0000000000407530 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>:
  407530:	41 55                	push   %r13
  407532:	41 54                	push   %r12
  407534:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  407538:	55                   	push   %rbp
  407539:	53                   	push   %rbx
  40753a:	48 83 ec 18          	sub    $0x18,%rsp
  40753e:	4c 89 27             	mov    %r12,(%rdi)
  407541:	48 85 f6             	test   %rsi,%rsi
  407544:	0f 84 8c 00 00 00    	je     4075d6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0xa6>
  40754a:	48 89 fb             	mov    %rdi,%rbx
  40754d:	48 89 f7             	mov    %rsi,%rdi
  407550:	48 89 f5             	mov    %rsi,%rbp
  407553:	e8 e8 bb ff ff       	callq  403140 <strlen@plt>
  407558:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40755d:	49 89 c5             	mov    %rax,%r13
  407560:	48 83 f8 0f          	cmp    $0xf,%rax
  407564:	77 3a                	ja     4075a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x70>
  407566:	48 83 f8 01          	cmp    $0x1,%rax
  40756a:	75 24                	jne    407590 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x60>
  40756c:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
  407570:	88 53 10             	mov    %dl,0x10(%rbx)
  407573:	48 89 43 08          	mov    %rax,0x8(%rbx)
  407577:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
  40757c:	48 83 c4 18          	add    $0x18,%rsp
  407580:	5b                   	pop    %rbx
  407581:	5d                   	pop    %rbp
  407582:	41 5c                	pop    %r12
  407584:	41 5d                	pop    %r13
  407586:	c3                   	retq   
  407587:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40758e:	00 00 
  407590:	48 85 c0             	test   %rax,%rax
  407593:	74 de                	je     407573 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  407595:	eb 27                	jmp    4075be <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x8e>
  407597:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40759e:	00 00 
  4075a0:	31 d2                	xor    %edx,%edx
  4075a2:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  4075a7:	48 89 df             	mov    %rbx,%rdi
  4075aa:	e8 91 be ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4075af:	48 89 03             	mov    %rax,(%rbx)
  4075b2:	49 89 c4             	mov    %rax,%r12
  4075b5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4075ba:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4075be:	4c 89 e7             	mov    %r12,%rdi
  4075c1:	4c 89 ea             	mov    %r13,%rdx
  4075c4:	48 89 ee             	mov    %rbp,%rsi
  4075c7:	e8 84 bc ff ff       	callq  403250 <memcpy@plt>
  4075cc:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4075d1:	4c 8b 23             	mov    (%rbx),%r12
  4075d4:	eb 9d                	jmp    407573 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  4075d6:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4075db:	e8 10 bc ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>

00000000004075e0 <_Z8clock_nsv>:
  4075e0:	48 83 ec 18          	sub    $0x18,%rsp
  4075e4:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4075e8:	48 89 e6             	mov    %rsp,%rsi
  4075eb:	bf 01 00 00 00       	mov    $0x1,%edi
  4075f0:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  4075f5:	e8 86 bc ff ff       	callq  403280 <clock_gettime@plt>
  4075fa:	48 b8 00 ac 23 fc 06 	movabs $0x6fc23ac00,%rax
  407601:	00 00 00 
  407604:	48 0f af 04 24       	imul   (%rsp),%rax
  407609:	48 03 44 24 08       	add    0x8(%rsp),%rax
  40760e:	48 83 c4 18          	add    $0x18,%rsp
  407612:	c3                   	retq   
  407613:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40761a:	00 00 00 00 
  40761e:	66 90                	xchg   %ax,%ax

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
  407648:	0f 84 42 1c 00 00    	je     409290 <_Z6windowid+0x1c70>
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
  407682:	0f 85 a4 1d 00 00    	jne    40942c <_Z6windowid+0x1e0c>
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
  4076ef:	0f 84 87 20 00 00    	je     40977c <_Z6windowid+0x215c>
  4076f5:	4c 89 ef             	mov    %r13,%rdi
  4076f8:	e8 43 ba ff ff       	callq  403140 <strlen@plt>
  4076fd:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  407704:	00 
  407705:	49 89 c6             	mov    %rax,%r14
  407708:	48 83 f8 0f          	cmp    $0xf,%rax
  40770c:	0f 87 c0 1c 00 00    	ja     4093d2 <_Z6windowid+0x1db2>
  407712:	48 83 f8 01          	cmp    $0x1,%rax
  407716:	0f 85 93 1c 00 00    	jne    4093af <_Z6windowid+0x1d8f>
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
  407783:	0f 84 fd 1f 00 00    	je     409786 <_Z6windowid+0x2166>
  407789:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40778e:	8b 10                	mov    (%rax),%edx
  407790:	83 fa 22             	cmp    $0x22,%edx
  407793:	0f 84 f7 1f 00 00    	je     409790 <_Z6windowid+0x2170>
  407799:	b8 00 00 00 80       	mov    $0x80000000,%eax
  40779e:	48 03 44 24 48       	add    0x48(%rsp),%rax
  4077a3:	48 c1 e8 20          	shr    $0x20,%rax
  4077a7:	0f 85 e3 1f 00 00    	jne    409790 <_Z6windowid+0x2170>
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
  407879:	0f 87 cb 1a 00 00    	ja     40934a <_Z6windowid+0x1d2a>
  40787f:	48 83 f8 01          	cmp    $0x1,%rax
  407883:	0f 85 10 1b 00 00    	jne    409399 <_Z6windowid+0x1d79>
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
  4078dd:	0f 84 a5 1f 00 00    	je     409888 <_Z6windowid+0x2268>
  4078e3:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  4078e8:	8b 10                	mov    (%rax),%edx
  4078ea:	83 fa 22             	cmp    $0x22,%edx
  4078ed:	0f 84 56 1e 00 00    	je     409749 <_Z6windowid+0x2129>
  4078f3:	b8 00 00 00 80       	mov    $0x80000000,%eax
  4078f8:	48 03 44 24 28       	add    0x28(%rsp),%rax
  4078fd:	48 c1 e8 20          	shr    $0x20,%rax
  407901:	0f 85 42 1e 00 00    	jne    409749 <_Z6windowid+0x2129>
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
  40794f:	0f 86 ae 1d 00 00    	jbe    409703 <_Z6windowid+0x20e3>
  407955:	41 83 fc 63          	cmp    $0x63,%r12d
  407959:	0f 86 ae 1d 00 00    	jbe    40970d <_Z6windowid+0x20ed>
  40795f:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  407966:	0f 86 ab 1d 00 00    	jbe    409717 <_Z6windowid+0x20f7>
  40796c:	44 89 e2             	mov    %r12d,%edx
  40796f:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  407976:	0f 86 a5 1d 00 00    	jbe    409721 <_Z6windowid+0x2101>
  40797c:	bb 01 00 00 00       	mov    $0x1,%ebx
  407981:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  407988:	c5 6d 34 
  40798b:	eb 24                	jmp    4079b1 <_Z6windowid+0x391>
  40798d:	0f 1f 00             	nopl   (%rax)
  407990:	83 fa 63             	cmp    $0x63,%edx
  407993:	0f 86 6a 1c 00 00    	jbe    409603 <_Z6windowid+0x1fe3>
  407999:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40799f:	0f 86 56 1c 00 00    	jbe    4095fb <_Z6windowid+0x1fdb>
  4079a5:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  4079ab:	0f 86 5a 1c 00 00    	jbe    40960b <_Z6windowid+0x1feb>
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
  407ab7:	0f 84 db 1a 00 00    	je     409598 <_Z6windowid+0x1f78>
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
  407b29:	0f 86 10 1c 00 00    	jbe    40973f <_Z6windowid+0x211f>
  407b2f:	41 83 fc 63          	cmp    $0x63,%r12d
  407b33:	0f 86 c0 1b 00 00    	jbe    4096f9 <_Z6windowid+0x20d9>
  407b39:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  407b40:	0f 86 e5 1b 00 00    	jbe    40972b <_Z6windowid+0x210b>
  407b46:	44 89 e2             	mov    %r12d,%edx
  407b49:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  407b50:	0f 86 df 1b 00 00    	jbe    409735 <_Z6windowid+0x2115>
  407b56:	bb 01 00 00 00       	mov    $0x1,%ebx
  407b5b:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  407b62:	c5 6d 34 
  407b65:	eb 2a                	jmp    407b91 <_Z6windowid+0x571>
  407b67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  407b6e:	00 00 
  407b70:	83 fa 63             	cmp    $0x63,%edx
  407b73:	0f 86 7a 1a 00 00    	jbe    4095f3 <_Z6windowid+0x1fd3>
  407b79:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  407b7f:	0f 86 66 1a 00 00    	jbe    4095eb <_Z6windowid+0x1fcb>
  407b85:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  407b8b:	0f 86 82 1a 00 00    	jbe    409613 <_Z6windowid+0x1ff3>
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
  407c89:	0f 84 03 1c 00 00    	je     409892 <_Z6windowid+0x2272>
  407c8f:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  407c96:	00 
  407c97:	49 83 fc 0f          	cmp    $0xf,%r12
  407c9b:	0f 87 6b 18 00 00    	ja     40950c <_Z6windowid+0x1eec>
  407ca1:	49 83 fc 01          	cmp    $0x1,%r12
  407ca5:	0f 85 4b 18 00 00    	jne    4094f6 <_Z6windowid+0x1ed6>
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
  407ce2:	0f 86 82 1b 00 00    	jbe    40986a <_Z6windowid+0x224a>
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
  407d5b:	0f 86 71 18 00 00    	jbe    4095d2 <_Z6windowid+0x1fb2>
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
  407d88:	0f 84 f7 17 00 00    	je     409585 <_Z6windowid+0x1f65>
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
  407dd8:	0f 84 90 17 00 00    	je     40956e <_Z6windowid+0x1f4e>
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
  407e67:	0f 84 11 1a 00 00    	je     40987e <_Z6windowid+0x225e>
  407e6d:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  407e74:	00 
  407e75:	49 83 fc 0f          	cmp    $0xf,%r12
  407e79:	0f 87 28 16 00 00    	ja     4094a7 <_Z6windowid+0x1e87>
  407e7f:	49 83 fc 01          	cmp    $0x1,%r12
  407e83:	0f 85 08 16 00 00    	jne    409491 <_Z6windowid+0x1e71>
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
  407faa:	0f 84 ae 15 00 00    	je     40955e <_Z6windowid+0x1f3e>
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
  40817c:	0f 84 18 16 00 00    	je     40979a <_Z6windowid+0x217a>
  408182:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  408189:	00 
  40818a:	49 83 fc 0f          	cmp    $0xf,%r12
  40818e:	0f 87 ae 12 00 00    	ja     409442 <_Z6windowid+0x1e22>
  408194:	49 83 fc 01          	cmp    $0x1,%r12
  408198:	0f 85 96 11 00 00    	jne    409334 <_Z6windowid+0x1d14>
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
  4081d5:	0f 86 c9 15 00 00    	jbe    4097a4 <_Z6windowid+0x2184>
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
  408212:	0f 84 93 13 00 00    	je     4095ab <_Z6windowid+0x1f8b>
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
  4082a9:	0f 84 ff 14 00 00    	je     4097ae <_Z6windowid+0x218e>
  4082af:	4c 89 a4 24 d0 00 00 	mov    %r12,0xd0(%rsp)
  4082b6:	00 
  4082b7:	49 83 fc 0f          	cmp    $0xf,%r12
  4082bb:	0f 87 21 10 00 00    	ja     4092e2 <_Z6windowid+0x1cc2>
  4082c1:	49 83 fc 01          	cmp    $0x1,%r12
  4082c5:	0f 85 01 10 00 00    	jne    4092cc <_Z6windowid+0x1cac>
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
  40839b:	48 ba 00 ac 23 fc 06 	movabs $0x6fc23ac00,%rdx
  4083a2:	00 00 00 
  4083a5:	48 0f af 94 24 80 01 	imul   0x180(%rsp),%rdx
  4083ac:	00 00 
  4083ae:	48 b8 00 b0 8e f0 1b 	movabs $0x1bf08eb000,%rax
  4083b5:	00 00 00 
  4083b8:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  4083bf:	00 
  4083c0:	48 01 d0             	add    %rdx,%rax
  4083c3:	48 83 7c 24 48 00    	cmpq   $0x0,0x48(%rsp)
  4083c9:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4083ce:	0f 85 0f 0b 00 00    	jne    408ee3 <_Z6windowid+0x18c3>
  4083d4:	49 bd 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%r13
  4083db:	c5 6d 34 
  4083de:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  4083e3:	48 85 c0             	test   %rax,%rax
  4083e6:	0f 8e dd 06 00 00    	jle    408ac9 <_Z6windowid+0x14a9>
  4083ec:	ff c8                	dec    %eax
  4083ee:	48 ff c0             	inc    %rax
  4083f1:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  4083f6:	c6 44 24 47 01       	movb   $0x1,0x47(%rsp)
  4083fb:	41 be 01 00 00 00    	mov    $0x1,%r14d
  408401:	bb 01 00 00 00       	mov    $0x1,%ebx
  408406:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40840d:	00 00 00 
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
  4084e3:	0f 84 d7 12 00 00    	je     4097c0 <_Z6windowid+0x21a0>
  4084e9:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  4084f0:	00 
  4084f1:	49 83 fc 0f          	cmp    $0xf,%r12
  4084f5:	0f 87 35 04 00 00    	ja     408930 <_Z6windowid+0x1310>
  4084fb:	49 83 fc 01          	cmp    $0x1,%r12
  4084ff:	0f 85 a3 03 00 00    	jne    4088a8 <_Z6windowid+0x1288>
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
  40853a:	0f 86 8a 12 00 00    	jbe    4097ca <_Z6windowid+0x21aa>
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
  4085b5:	0f 86 1d 04 00 00    	jbe    4089d8 <_Z6windowid+0x13b8>
  4085bb:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  4085c2:	00 
  4085c3:	e8 28 ab ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  4085c8:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  4085cf:	00 
  4085d0:	48 8d 50 10          	lea    0x10(%rax),%rdx
  4085d4:	48 8b 08             	mov    (%rax),%rcx
  4085d7:	48 39 d1             	cmp    %rdx,%rcx
  4085da:	0f 84 c0 03 00 00    	je     4089a0 <_Z6windowid+0x1380>
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
  40862a:	0f 84 58 03 00 00    	je     408988 <_Z6windowid+0x1368>
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
  4086b6:	0f 84 18 11 00 00    	je     4097d4 <_Z6windowid+0x21b4>
  4086bc:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  4086c1:	49 83 fc 0f          	cmp    $0xf,%r12
  4086c5:	0f 87 15 02 00 00    	ja     4088e0 <_Z6windowid+0x12c0>
  4086cb:	49 83 fc 01          	cmp    $0x1,%r12
  4086cf:	0f 85 eb 01 00 00    	jne    4088c0 <_Z6windowid+0x12a0>
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
  408822:	0f 84 00 02 00 00    	je     408a28 <_Z6windowid+0x1408>
  408828:	49 83 fe 09          	cmp    $0x9,%r14
  40882c:	0f 86 ac 0f 00 00    	jbe    4097de <_Z6windowid+0x21be>
  408832:	8b 44 24 48          	mov    0x48(%rsp),%eax
  408836:	83 f8 63             	cmp    $0x63,%eax
  408839:	0f 86 2a 0a 00 00    	jbe    409269 <_Z6windowid+0x1c49>
  40883f:	3d e7 03 00 00       	cmp    $0x3e7,%eax
  408844:	0f 86 39 0a 00 00    	jbe    409283 <_Z6windowid+0x1c63>
  40884a:	3d 0f 27 00 00       	cmp    $0x270f,%eax
  40884f:	0f 86 21 0a 00 00    	jbe    409276 <_Z6windowid+0x1c56>
  408855:	4c 89 f2             	mov    %r14,%rdx
  408858:	bb 01 00 00 00       	mov    $0x1,%ebx
  40885d:	eb 22                	jmp    408881 <_Z6windowid+0x1261>
  40885f:	90                   	nop
  408860:	83 fa 63             	cmp    $0x63,%edx
  408863:	0f 86 4f 01 00 00    	jbe    4089b8 <_Z6windowid+0x1398>
  408869:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40886f:	0f 86 53 01 00 00    	jbe    4089c8 <_Z6windowid+0x13a8>
  408875:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40887b:	0f 86 97 01 00 00    	jbe    408a18 <_Z6windowid+0x13f8>
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
  4088a4:	0f 1f 40 00          	nopl   0x0(%rax)
  4088a8:	4d 85 e4             	test   %r12,%r12
  4088ab:	0f 85 37 0f 00 00    	jne    4097e8 <_Z6windowid+0x21c8>
  4088b1:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  4088b8:	00 
  4088b9:	e9 59 fc ff ff       	jmpq   408517 <_Z6windowid+0xef7>
  4088be:	66 90                	xchg   %ax,%ax
  4088c0:	4d 85 e4             	test   %r12,%r12
  4088c3:	0f 85 2c 0f 00 00    	jne    4097f5 <_Z6windowid+0x21d5>
  4088c9:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  4088d0:	00 
  4088d1:	e9 11 fe ff ff       	jmpq   4086e7 <_Z6windowid+0x10c7>
  4088d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4088dd:	00 00 00 
  4088e0:	31 d2                	xor    %edx,%edx
  4088e2:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
  4088e7:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  4088ee:	00 
  4088ef:	e8 4c ab ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4088f4:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4088fb:	00 
  4088fc:	48 89 c7             	mov    %rax,%rdi
  4088ff:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  408904:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40890b:	00 
  40890c:	4c 89 e2             	mov    %r12,%rdx
  40890f:	48 89 de             	mov    %rbx,%rsi
  408912:	e8 39 a9 ff ff       	callq  403250 <memcpy@plt>
  408917:	4c 8b 64 24 68       	mov    0x68(%rsp),%r12
  40891c:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  408923:	00 
  408924:	e9 be fd ff ff       	jmpq   4086e7 <_Z6windowid+0x10c7>
  408929:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  408930:	31 d2                	xor    %edx,%edx
  408932:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408939:	00 
  40893a:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  408941:	00 
  408942:	e8 f9 aa ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  408947:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40894e:	00 
  40894f:	48 89 c7             	mov    %rax,%rdi
  408952:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  408959:	00 
  40895a:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  408961:	00 
  408962:	4c 89 e2             	mov    %r12,%rdx
  408965:	48 89 de             	mov    %rbx,%rsi
  408968:	e8 e3 a8 ff ff       	callq  403250 <memcpy@plt>
  40896d:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  408974:	00 
  408975:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  40897c:	00 
  40897d:	e9 95 fb ff ff       	jmpq   408517 <_Z6windowid+0xef7>
  408982:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408988:	c5 f9 6f 9c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm3
  40898f:	00 00 
  408991:	c5 f9 7f 9c 24 60 01 	vmovdqa %xmm3,0x160(%rsp)
  408998:	00 00 
  40899a:	e9 a9 fc ff ff       	jmpq   408648 <_Z6windowid+0x1028>
  40899f:	90                   	nop
  4089a0:	c5 fa 6f 60 10       	vmovdqu 0x10(%rax),%xmm4
  4089a5:	c5 f9 7f a4 24 e0 00 	vmovdqa %xmm4,0xe0(%rsp)
  4089ac:	00 00 
  4089ae:	e9 41 fc ff ff       	jmpq   4085f4 <_Z6windowid+0xfd4>
  4089b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4089b8:	8d 58 05             	lea    0x5(%rax),%ebx
  4089bb:	49 ff c6             	inc    %r14
  4089be:	e9 4d fa ff ff       	jmpq   408410 <_Z6windowid+0xdf0>
  4089c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4089c8:	8d 58 06             	lea    0x6(%rax),%ebx
  4089cb:	49 ff c6             	inc    %r14
  4089ce:	e9 3d fa ff ff       	jmpq   408410 <_Z6windowid+0xdf0>
  4089d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4089d8:	31 d2                	xor    %edx,%edx
  4089da:	31 f6                	xor    %esi,%esi
  4089dc:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  4089e3:	00 
  4089e4:	e8 b7 a9 ff ff       	callq  4033a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  4089e9:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  4089f0:	00 
  4089f1:	48 8d 50 10          	lea    0x10(%rax),%rdx
  4089f5:	48 8b 08             	mov    (%rax),%rcx
  4089f8:	48 39 d1             	cmp    %rdx,%rcx
  4089fb:	0f 85 df fb ff ff    	jne    4085e0 <_Z6windowid+0xfc0>
  408a01:	c5 fa 6f 68 10       	vmovdqu 0x10(%rax),%xmm5
  408a06:	c5 f9 7f ac 24 e0 00 	vmovdqa %xmm5,0xe0(%rsp)
  408a0d:	00 00 
  408a0f:	e9 e0 fb ff ff       	jmpq   4085f4 <_Z6windowid+0xfd4>
  408a14:	0f 1f 40 00          	nopl   0x0(%rax)
  408a18:	8d 58 07             	lea    0x7(%rax),%ebx
  408a1b:	49 ff c6             	inc    %r14
  408a1e:	e9 ed f9 ff ff       	jmpq   408410 <_Z6windowid+0xdf0>
  408a23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408a28:	80 7c 24 47 00       	cmpb   $0x0,0x47(%rsp)
  408a2d:	0f 85 96 00 00 00    	jne    408ac9 <_Z6windowid+0x14a9>
  408a33:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408a37:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408a3e:	00 
  408a3f:	bf 01 00 00 00       	mov    $0x1,%edi
  408a44:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  408a4b:	00 00 
  408a4d:	e8 2e a8 ff ff       	callq  403280 <clock_gettime@plt>
  408a52:	48 b8 00 ac 23 fc 06 	movabs $0x6fc23ac00,%rax
  408a59:	00 00 00 
  408a5c:	48 0f af 84 24 80 01 	imul   0x180(%rsp),%rax
  408a63:	00 00 
  408a65:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  408a6c:	00 
  408a6d:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  408a72:	0f 82 34 b0 ff ff    	jb     403aac <_Z6windowid.cold+0x60c>
  408a78:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  408a7f:	00 00 00 00 00 
  408a84:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  408a8b:	00 80 84 1e 00 
  408a90:	eb 14                	jmp    408aa6 <_Z6windowid+0x1486>
  408a92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408a98:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  408a9d:	83 38 04             	cmpl   $0x4,(%rax)
  408aa0:	0f 85 38 f9 ff ff    	jne    4083de <_Z6windowid+0xdbe>
  408aa6:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408aad:	00 
  408aae:	48 89 f7             	mov    %rsi,%rdi
  408ab1:	e8 2a a6 ff ff       	callq  4030e0 <nanosleep@plt>
  408ab6:	83 f8 ff             	cmp    $0xffffffff,%eax
  408ab9:	74 dd                	je     408a98 <_Z6windowid+0x1478>
  408abb:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  408ac0:	48 85 c0             	test   %rax,%rax
  408ac3:	0f 8f 23 f9 ff ff    	jg     4083ec <_Z6windowid+0xdcc>
  408ac9:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  408ace:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  408ad3:	4c 89 e8             	mov    %r13,%rax
  408ad6:	4c 01 e0             	add    %r12,%rax
  408ad9:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  408ae0:	00 
  408ae1:	74 09                	je     408aec <_Z6windowid+0x14cc>
  408ae3:	4d 85 ed             	test   %r13,%r13
  408ae6:	0f 84 88 0d 00 00    	je     409874 <_Z6windowid+0x2254>
  408aec:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  408af3:	00 
  408af4:	49 83 fc 0f          	cmp    $0xf,%r12
  408af8:	0f 87 82 0b 00 00    	ja     409680 <_Z6windowid+0x2060>
  408afe:	49 83 fc 01          	cmp    $0x1,%r12
  408b02:	75 11                	jne    408b15 <_Z6windowid+0x14f5>
  408b04:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  408b09:	88 84 24 e0 00 00 00 	mov    %al,0xe0(%rsp)
  408b10:	4c 89 f8             	mov    %r15,%rax
  408b13:	eb 0c                	jmp    408b21 <_Z6windowid+0x1501>
  408b15:	4d 85 e4             	test   %r12,%r12
  408b18:	0f 85 49 0c 00 00    	jne    409767 <_Z6windowid+0x2147>
  408b1e:	4c 89 f8             	mov    %r15,%rax
  408b21:	4c 89 a4 24 d8 00 00 	mov    %r12,0xd8(%rsp)
  408b28:	00 
  408b29:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  408b2e:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  408b35:	ff ff 3f 
  408b38:	48 2b 84 24 d8 00 00 	sub    0xd8(%rsp),%rax
  408b3f:	00 
  408b40:	48 83 f8 03          	cmp    $0x3,%rax
  408b44:	0f 86 13 0c 00 00    	jbe    40975d <_Z6windowid+0x213d>
  408b4a:	ba 04 00 00 00       	mov    $0x4,%edx
  408b4f:	be d3 b0 40 00       	mov    $0x40b0d3,%esi
  408b54:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  408b5b:	00 
  408b5c:	e8 8f a5 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  408b61:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  408b68:	00 
  408b69:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408b70:	00 
  408b71:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  408b78:	00 
  408b79:	4c 39 f8             	cmp    %r15,%rax
  408b7c:	0f 84 60 0b 00 00    	je     4096e2 <_Z6windowid+0x20c2>
  408b82:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408b89:	00 
  408b8a:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  408b91:	00 
  408b92:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  408b99:	00 
  408b9a:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  408ba1:	00 
  408ba2:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  408ba9:	00 
  408baa:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  408bb1:	00 
  408bb2:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  408bb9:	00 
  408bba:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  408bc1:	00 00 00 00 00 
  408bc6:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  408bcd:	00 
  408bce:	e8 dd a4 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  408bd3:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408bda:	00 
  408bdb:	e8 60 a6 ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  408be0:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  408be7:	00 
  408be8:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408bef:	00 
  408bf0:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  408bf7:	00 
  408bf8:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  408bff:	00 
  408c00:	4c 89 e8             	mov    %r13,%rax
  408c03:	4c 01 e0             	add    %r12,%rax
  408c06:	74 09                	je     408c11 <_Z6windowid+0x15f1>
  408c08:	4d 85 ed             	test   %r13,%r13
  408c0b:	0f 84 42 0b 00 00    	je     409753 <_Z6windowid+0x2133>
  408c11:	4c 89 a4 24 b0 00 00 	mov    %r12,0xb0(%rsp)
  408c18:	00 
  408c19:	49 83 fc 0f          	cmp    $0xf,%r12
  408c1d:	0f 87 0e 0a 00 00    	ja     409631 <_Z6windowid+0x2011>
  408c23:	49 83 fc 01          	cmp    $0x1,%r12
  408c27:	0f 85 ee 09 00 00    	jne    40961b <_Z6windowid+0x1ffb>
  408c2d:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  408c32:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  408c39:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408c40:	00 
  408c41:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  408c48:	00 
  408c49:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  408c4e:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  408c55:	00 
  408c56:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  408c5d:	00 
  408c5e:	e8 1d a8 ff ff       	callq  403480 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  408c63:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  408c68:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408c6f:	00 
  408c70:	e8 0b a4 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  408c75:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  408c7c:	00 
  408c7d:	48 85 f6             	test   %rsi,%rsi
  408c80:	74 0d                	je     408c8f <_Z6windowid+0x166f>
  408c82:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  408c89:	00 
  408c8a:	e8 11 a4 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  408c8f:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  408c96:	00 
  408c97:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  408c9e:	00 
  408c9f:	48 39 c7             	cmp    %rax,%rdi
  408ca2:	74 11                	je     408cb5 <_Z6windowid+0x1695>
  408ca4:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  408cab:	00 
  408cac:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408cb0:	e8 fb a5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408cb5:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  408cbc:	00 
  408cbd:	4c 39 ff             	cmp    %r15,%rdi
  408cc0:	74 11                	je     408cd3 <_Z6windowid+0x16b3>
  408cc2:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  408cc9:	00 
  408cca:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408cce:	e8 dd a5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408cd3:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  408cda:	00 
  408cdb:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  408ce2:	00 
  408ce3:	e8 e8 a3 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  408ce8:	31 d2                	xor    %edx,%edx
  408cea:	66 89 94 24 58 03 00 	mov    %dx,0x358(%rsp)
  408cf1:	00 
  408cf2:	48 8b 05 2f 4f 00 00 	mov    0x4f2f(%rip),%rax        # 40dc28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  408cf9:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408cfd:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  408d04:	00 00 
  408d06:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408d0d:	00 
  408d0e:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408d15:	00 
  408d16:	48 03 78 e8          	add    -0x18(%rax),%rdi
  408d1a:	48 8b 05 0f 4f 00 00 	mov    0x4f0f(%rip),%rax        # 40dc30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  408d21:	31 f6                	xor    %esi,%esi
  408d23:	48 c7 84 24 78 02 00 	movq   $0x40db90,0x278(%rsp)
  408d2a:	00 90 db 40 00 
  408d2f:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  408d36:	00 00 00 00 00 
  408d3b:	48 89 07             	mov    %rax,(%rdi)
  408d3e:	c5 f8 77             	vzeroupper 
  408d41:	e8 ea a5 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  408d46:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  408d4d:	00 
  408d4e:	48 c7 84 24 80 01 00 	movq   $0x40dd28,0x180(%rsp)
  408d55:	00 28 dd 40 00 
  408d5a:	48 c7 84 24 78 02 00 	movq   $0x40dd50,0x278(%rsp)
  408d61:	00 50 dd 40 00 
  408d66:	e8 65 a5 ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  408d6b:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  408d72:	00 
  408d73:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  408d7a:	00 
  408d7b:	e8 b0 a5 ff ff       	callq  403330 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  408d80:	ba 10 00 00 00       	mov    $0x10,%edx
  408d85:	4c 89 e6             	mov    %r12,%rsi
  408d88:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  408d8f:	00 
  408d90:	e8 db a4 ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  408d95:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  408d9c:	00 
  408d9d:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408da4:	00 
  408da5:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  408da9:	48 85 c0             	test   %rax,%rax
  408dac:	0f 84 20 09 00 00    	je     4096d2 <_Z6windowid+0x20b2>
  408db2:	31 f6                	xor    %esi,%esi
  408db4:	e8 47 a6 ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  408db9:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408dbd:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  408dc4:	00 
  408dc5:	bf 01 00 00 00       	mov    $0x1,%edi
  408dca:	c5 f9 7f 84 24 d0 00 	vmovdqa %xmm0,0xd0(%rsp)
  408dd1:	00 00 
  408dd3:	e8 a8 a4 ff ff       	callq  403280 <clock_gettime@plt>
  408dd8:	48 b8 00 ac 23 fc 06 	movabs $0x6fc23ac00,%rax
  408ddf:	00 00 00 
  408de2:	48 0f af 84 24 d0 00 	imul   0xd0(%rsp),%rax
  408de9:	00 00 
  408deb:	48 8b 94 24 d8 00 00 	mov    0xd8(%rsp),%rdx
  408df2:	00 
  408df3:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  408dfa:	00 
  408dfb:	48 8d b4 10 80 b2 e6 	lea    0xee6b280(%rax,%rdx,1),%rsi
  408e02:	0e 
  408e03:	e8 c8 a3 ff ff       	callq  4031d0 <_ZNSo9_M_insertIyEERSoT_@plt>
  408e08:	c5 f9 6f 7c 24 10    	vmovdqa 0x10(%rsp),%xmm7
  408e0e:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  408e15:	00 
  408e16:	48 c7 84 24 78 02 00 	movq   $0x40dd50,0x278(%rsp)
  408e1d:	00 50 dd 40 00 
  408e22:	c5 f9 7f bc 24 80 01 	vmovdqa %xmm7,0x180(%rsp)
  408e29:	00 00 
  408e2b:	e8 40 a2 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  408e30:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  408e37:	00 
  408e38:	e8 23 a6 ff ff       	callq  403460 <_ZNSt12__basic_fileIcED1Ev@plt>
  408e3d:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  408e44:	00 
  408e45:	48 c7 84 24 88 01 00 	movq   $0x40dbb0,0x188(%rsp)
  408e4c:	00 b0 db 40 00 
  408e51:	e8 fa a4 ff ff       	callq  403350 <_ZNSt6localeD1Ev@plt>
  408e56:	48 8b 05 cb 4d 00 00 	mov    0x4dcb(%rip),%rax        # 40dc28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  408e5d:	48 8b 0d cc 4d 00 00 	mov    0x4dcc(%rip),%rcx        # 40dc30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  408e64:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  408e6b:	00 
  408e6c:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  408e70:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  408e77:	00 
  408e78:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  408e7f:	00 
  408e80:	48 c7 84 24 78 02 00 	movq   $0x40db90,0x278(%rsp)
  408e87:	00 90 db 40 00 
  408e8c:	e8 6f a2 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  408e91:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  408e96:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  408e9d:	00 
  408e9e:	e8 0d a3 ff ff       	callq  4031b0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@plt>
  408ea3:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  408eaa:	00 
  408eab:	48 85 f6             	test   %rsi,%rsi
  408eae:	74 0d                	je     408ebd <_Z6windowid+0x189d>
  408eb0:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  408eb7:	00 
  408eb8:	e8 e3 a1 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  408ebd:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  408ec4:	00 
  408ec5:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  408ecc:	00 
  408ecd:	48 39 c7             	cmp    %rax,%rdi
  408ed0:	74 11                	je     408ee3 <_Z6windowid+0x18c3>
  408ed2:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  408ed9:	00 
  408eda:	48 8d 70 01          	lea    0x1(%rax),%rsi
  408ede:	e8 cd a3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  408ee3:	48 bb 00 ac 23 fc 06 	movabs $0x6fc23ac00,%rbx
  408eea:	00 00 00 
  408eed:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  408ef4:	00 
  408ef5:	e8 16 a2 ff ff       	callq  403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  408efa:	ff c0                	inc    %eax
  408efc:	3c 01                	cmp    $0x1,%al
  408efe:	0f 87 84 00 00 00    	ja     408f88 <_Z6windowid+0x1968>
  408f04:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  408f08:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408f0f:	00 
  408f10:	bf 01 00 00 00       	mov    $0x1,%edi
  408f15:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  408f1c:	00 00 
  408f1e:	e8 5d a3 ff ff       	callq  403280 <clock_gettime@plt>
  408f23:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  408f2a:	00 
  408f2b:	48 0f af c3          	imul   %rbx,%rax
  408f2f:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  408f36:	00 
  408f37:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  408f3c:	0f 82 96 ab ff ff    	jb     403ad8 <_Z6windowid.cold+0x638>
  408f42:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  408f49:	00 00 00 00 00 
  408f4e:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  408f55:	00 80 84 1e 00 
  408f5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408f60:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  408f67:	00 
  408f68:	48 89 f7             	mov    %rsi,%rdi
  408f6b:	e8 70 a1 ff ff       	callq  4030e0 <nanosleep@plt>
  408f70:	83 f8 ff             	cmp    $0xffffffff,%eax
  408f73:	0f 85 74 ff ff ff    	jne    408eed <_Z6windowid+0x18cd>
  408f79:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  408f7e:	83 38 04             	cmpl   $0x4,(%rax)
  408f81:	74 dd                	je     408f60 <_Z6windowid+0x1940>
  408f83:	e9 65 ff ff ff       	jmpq   408eed <_Z6windowid+0x18cd>
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
  409076:	0f 84 46 05 00 00    	je     4095c2 <_Z6windowid+0x1fa2>
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
  409108:	48 bb 00 ac 23 fc 06 	movabs $0x6fc23ac00,%rbx
  40910f:	00 00 00 
  409112:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  409119:	00 00 00 00 00 
  40911e:	48 c7 84 24 80 02 00 	movq   $0x40db90,0x280(%rsp)
  409125:	00 90 db 40 00 
  40912a:	e8 d1 9f ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40912f:	90                   	nop
  409130:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  409134:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40913b:	00 
  40913c:	bf 01 00 00 00       	mov    $0x1,%edi
  409141:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  409148:	00 00 
  40914a:	e8 31 a1 ff ff       	callq  403280 <clock_gettime@plt>
  40914f:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  409156:	00 
  409157:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40915e:	00 
  40915f:	48 0f af c3          	imul   %rbx,%rax
  409163:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40916a:	00 
  40916b:	49 39 c4             	cmp    %rax,%r12
  40916e:	76 44                	jbe    4091b4 <_Z6windowid+0x1b94>
  409170:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  409177:	00 00 00 00 00 
  40917c:	48 c7 84 24 88 01 00 	movq   $0x4e20,0x188(%rsp)
  409183:	00 20 4e 00 00 
  409188:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40918f:	00 
  409190:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409197:	00 
  409198:	48 89 f7             	mov    %rsi,%rdi
  40919b:	e8 40 9f ff ff       	callq  4030e0 <nanosleep@plt>
  4091a0:	83 f8 ff             	cmp    $0xffffffff,%eax
  4091a3:	75 8b                	jne    409130 <_Z6windowid+0x1b10>
  4091a5:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  4091aa:	83 38 04             	cmpl   $0x4,(%rax)
  4091ad:	74 e1                	je     409190 <_Z6windowid+0x1b70>
  4091af:	e9 7c ff ff ff       	jmpq   409130 <_Z6windowid+0x1b10>
  4091b4:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  4091bb:	00 
  4091bc:	48 85 f6             	test   %rsi,%rsi
  4091bf:	74 0d                	je     4091ce <_Z6windowid+0x1bae>
  4091c1:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  4091c8:	00 
  4091c9:	e8 d2 9e ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  4091ce:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  4091d5:	00 
  4091d6:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4091dd:	00 
  4091de:	48 39 c7             	cmp    %rax,%rdi
  4091e1:	74 11                	je     4091f4 <_Z6windowid+0x1bd4>
  4091e3:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  4091ea:	00 
  4091eb:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4091ef:	e8 bc a0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4091f4:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  4091f9:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  409200:	00 
  409201:	48 39 c7             	cmp    %rax,%rdi
  409204:	74 11                	je     409217 <_Z6windowid+0x1bf7>
  409206:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  40920d:	00 
  40920e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  409212:	e8 99 a0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  409217:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
  40921e:	00 
  40921f:	48 85 f6             	test   %rsi,%rsi
  409222:	74 0d                	je     409231 <_Z6windowid+0x1c11>
  409224:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  40922b:	00 
  40922c:	e8 6f 9e ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  409231:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  409238:	00 
  409239:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  409240:	00 
  409241:	48 39 c7             	cmp    %rax,%rdi
  409244:	74 11                	je     409257 <_Z6windowid+0x1c37>
  409246:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  40924d:	00 
  40924e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  409252:	e8 59 a0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  409257:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  40925b:	5b                   	pop    %rbx
  40925c:	4c 89 e0             	mov    %r12,%rax
  40925f:	41 5c                	pop    %r12
  409261:	41 5d                	pop    %r13
  409263:	41 5e                	pop    %r14
  409265:	41 5f                	pop    %r15
  409267:	5d                   	pop    %rbp
  409268:	c3                   	retq   
  409269:	bb 02 00 00 00       	mov    $0x2,%ebx
  40926e:	49 ff c6             	inc    %r14
  409271:	e9 9a f1 ff ff       	jmpq   408410 <_Z6windowid+0xdf0>
  409276:	bb 04 00 00 00       	mov    $0x4,%ebx
  40927b:	49 ff c6             	inc    %r14
  40927e:	e9 8d f1 ff ff       	jmpq   408410 <_Z6windowid+0xdf0>
  409283:	bb 03 00 00 00       	mov    $0x3,%ebx
  409288:	49 ff c6             	inc    %r14
  40928b:	e9 80 f1 ff ff       	jmpq   408410 <_Z6windowid+0xdf0>
  409290:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  409294:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40929b:	00 
  40929c:	bf 01 00 00 00       	mov    $0x1,%edi
  4092a1:	49 bc 00 ac 23 fc 06 	movabs $0x6fc23ac00,%r12
  4092a8:	00 00 00 
  4092ab:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  4092b2:	00 00 
  4092b4:	e8 c7 9f ff ff       	callq  403280 <clock_gettime@plt>
  4092b9:	4c 0f af a4 24 80 01 	imul   0x180(%rsp),%r12
  4092c0:	00 00 
  4092c2:	4c 03 a4 24 88 01 00 	add    0x188(%rsp),%r12
  4092c9:	00 
  4092ca:	eb 8b                	jmp    409257 <_Z6windowid+0x1c37>
  4092cc:	4d 85 e4             	test   %r12,%r12
  4092cf:	0f 85 2d 05 00 00    	jne    409802 <_Z6windowid+0x21e2>
  4092d5:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4092dc:	00 
  4092dd:	e9 fd ef ff ff       	jmpq   4082df <_Z6windowid+0xcbf>
  4092e2:	31 d2                	xor    %edx,%edx
  4092e4:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  4092eb:	00 
  4092ec:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  4092f3:	00 
  4092f4:	e8 47 a1 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4092f9:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  409300:	00 
  409301:	48 89 c7             	mov    %rax,%rdi
  409304:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40930b:	00 
  40930c:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  409313:	00 
  409314:	4c 89 e2             	mov    %r12,%rdx
  409317:	4c 89 ee             	mov    %r13,%rsi
  40931a:	e8 31 9f ff ff       	callq  403250 <memcpy@plt>
  40931f:	4c 8b a4 24 d0 00 00 	mov    0xd0(%rsp),%r12
  409326:	00 
  409327:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  40932e:	00 
  40932f:	e9 ab ef ff ff       	jmpq   4082df <_Z6windowid+0xcbf>
  409334:	4d 85 e4             	test   %r12,%r12
  409337:	0f 85 d2 04 00 00    	jne    40980f <_Z6windowid+0x21ef>
  40933d:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  409344:	00 
  409345:	e9 68 ee ff ff       	jmpq   4081b2 <_Z6windowid+0xb92>
  40934a:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40934f:	31 d2                	xor    %edx,%edx
  409351:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  409358:	00 
  409359:	e8 e2 a0 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40935e:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  409365:	00 
  409366:	48 89 c7             	mov    %rax,%rdi
  409369:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  409370:	00 
  409371:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  409378:	00 
  409379:	4c 89 f2             	mov    %r14,%rdx
  40937c:	4c 89 ee             	mov    %r13,%rsi
  40937f:	e8 cc 9e ff ff       	callq  403250 <memcpy@plt>
  409384:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40938b:	00 
  40938c:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  409393:	00 
  409394:	e9 04 e5 ff ff       	jmpq   40789d <_Z6windowid+0x27d>
  409399:	4d 85 f6             	test   %r14,%r14
  40939c:	0f 85 7a 04 00 00    	jne    40981c <_Z6windowid+0x21fc>
  4093a2:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  4093a9:	00 
  4093aa:	e9 ee e4 ff ff       	jmpq   40789d <_Z6windowid+0x27d>
  4093af:	48 85 c0             	test   %rax,%rax
  4093b2:	0f 85 71 04 00 00    	jne    409829 <_Z6windowid+0x2209>
  4093b8:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  4093bf:	00 
  4093c0:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  4093c5:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  4093cc:	00 
  4093cd:	e9 6b e3 ff ff       	jmpq   40773d <_Z6windowid+0x11d>
  4093d2:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  4093d9:	00 
  4093da:	31 d2                	xor    %edx,%edx
  4093dc:	48 89 c6             	mov    %rax,%rsi
  4093df:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  4093e6:	00 
  4093e7:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  4093ec:	e8 4f a0 ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4093f1:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4093f8:	00 
  4093f9:	48 89 c7             	mov    %rax,%rdi
  4093fc:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  409403:	00 
  409404:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40940b:	00 
  40940c:	4c 89 f2             	mov    %r14,%rdx
  40940f:	4c 89 ee             	mov    %r13,%rsi
  409412:	e8 39 9e ff ff       	callq  403250 <memcpy@plt>
  409417:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40941e:	00 
  40941f:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  409426:	00 
  409427:	e9 11 e3 ff ff       	jmpq   40773d <_Z6windowid+0x11d>
  40942c:	48 85 c0             	test   %rax,%rax
  40942f:	0f 85 0e 04 00 00    	jne    409843 <_Z6windowid+0x2223>
  409435:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40943c:	00 
  40943d:	e9 5a e2 ff ff       	jmpq   40769c <_Z6windowid+0x7c>
  409442:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  409447:	31 d2                	xor    %edx,%edx
  409449:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409450:	00 
  409451:	e8 ea 9f ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  409456:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40945d:	00 
  40945e:	48 89 c7             	mov    %rax,%rdi
  409461:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  409468:	00 
  409469:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  409470:	00 
  409471:	4c 89 e2             	mov    %r12,%rdx
  409474:	4c 89 ee             	mov    %r13,%rsi
  409477:	e8 d4 9d ff ff       	callq  403250 <memcpy@plt>
  40947c:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  409483:	00 
  409484:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40948b:	00 
  40948c:	e9 21 ed ff ff       	jmpq   4081b2 <_Z6windowid+0xb92>
  409491:	4d 85 e4             	test   %r12,%r12
  409494:	0f 85 b6 03 00 00    	jne    409850 <_Z6windowid+0x2230>
  40949a:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  4094a1:	00 
  4094a2:	e9 f6 e9 ff ff       	jmpq   407e9d <_Z6windowid+0x87d>
  4094a7:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4094ac:	31 d2                	xor    %edx,%edx
  4094ae:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  4094b5:	00 
  4094b6:	e8 85 9f ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4094bb:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  4094c2:	00 
  4094c3:	48 89 c7             	mov    %rax,%rdi
  4094c6:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  4094cd:	00 
  4094ce:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  4094d5:	00 
  4094d6:	4c 89 e2             	mov    %r12,%rdx
  4094d9:	4c 89 ee             	mov    %r13,%rsi
  4094dc:	e8 6f 9d ff ff       	callq  403250 <memcpy@plt>
  4094e1:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  4094e8:	00 
  4094e9:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  4094f0:	00 
  4094f1:	e9 a7 e9 ff ff       	jmpq   407e9d <_Z6windowid+0x87d>
  4094f6:	4d 85 e4             	test   %r12,%r12
  4094f9:	0f 85 5e 03 00 00    	jne    40985d <_Z6windowid+0x223d>
  4094ff:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  409506:	00 
  409507:	e9 b3 e7 ff ff       	jmpq   407cbf <_Z6windowid+0x69f>
  40950c:	31 d2                	xor    %edx,%edx
  40950e:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409515:	00 
  409516:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40951d:	00 
  40951e:	e8 1d 9f ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  409523:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40952a:	00 
  40952b:	48 89 c7             	mov    %rax,%rdi
  40952e:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  409535:	00 
  409536:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  40953d:	00 
  40953e:	4c 89 e2             	mov    %r12,%rdx
  409541:	4c 89 ee             	mov    %r13,%rsi
  409544:	e8 07 9d ff ff       	callq  403250 <memcpy@plt>
  409549:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  409550:	00 
  409551:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  409558:	00 
  409559:	e9 61 e7 ff ff       	jmpq   407cbf <_Z6windowid+0x69f>
  40955e:	8b 77 20             	mov    0x20(%rdi),%esi
  409561:	83 ce 04             	or     $0x4,%esi
  409564:	e8 97 9e ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  409569:	e9 49 ea ff ff       	jmpq   407fb7 <_Z6windowid+0x997>
  40956e:	c5 f9 6f 8c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm1
  409575:	00 00 
  409577:	c5 f9 7f 8c 24 30 01 	vmovdqa %xmm1,0x130(%rsp)
  40957e:	00 00 
  409580:	e9 71 e8 ff ff       	jmpq   407df6 <_Z6windowid+0x7d6>
  409585:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  40958a:	c5 f9 7f bc 24 e0 00 	vmovdqa %xmm7,0xe0(%rsp)
  409591:	00 00 
  409593:	e9 0a e8 ff ff       	jmpq   407da2 <_Z6windowid+0x782>
  409598:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  40959d:	c5 f9 7f bc 24 80 00 	vmovdqa %xmm7,0x80(%rsp)
  4095a4:	00 00 
  4095a6:	e9 23 e5 ff ff       	jmpq   407ace <_Z6windowid+0x4ae>
  4095ab:	c5 f9 6f 94 24 60 01 	vmovdqa 0x160(%rsp),%xmm2
  4095b2:	00 00 
  4095b4:	c5 f9 7f 94 24 90 01 	vmovdqa %xmm2,0x190(%rsp)
  4095bb:	00 00 
  4095bd:	e9 6e ec ff ff       	jmpq   408230 <_Z6windowid+0xc10>
  4095c2:	8b 77 20             	mov    0x20(%rdi),%esi
  4095c5:	83 ce 04             	or     $0x4,%esi
  4095c8:	e8 33 9e ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  4095cd:	e9 b1 fa ff ff       	jmpq   409083 <_Z6windowid+0x1a63>
  4095d2:	4c 89 c9             	mov    %r9,%rcx
  4095d5:	31 d2                	xor    %edx,%edx
  4095d7:	31 f6                	xor    %esi,%esi
  4095d9:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  4095e0:	00 
  4095e1:	e8 ba 9d ff ff       	callq  4033a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  4095e6:	e9 83 e7 ff ff       	jmpq   407d6e <_Z6windowid+0x74e>
  4095eb:	8d 58 06             	lea    0x6(%rax),%ebx
  4095ee:	e9 b9 e5 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  4095f3:	8d 58 05             	lea    0x5(%rax),%ebx
  4095f6:	e9 b1 e5 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  4095fb:	8d 58 06             	lea    0x6(%rax),%ebx
  4095fe:	e9 c9 e3 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  409603:	8d 58 05             	lea    0x5(%rax),%ebx
  409606:	e9 c1 e3 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  40960b:	8d 58 07             	lea    0x7(%rax),%ebx
  40960e:	e9 b9 e3 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  409613:	8d 58 07             	lea    0x7(%rax),%ebx
  409616:	e9 91 e5 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  40961b:	4d 85 e4             	test   %r12,%r12
  40961e:	0f 85 4b 01 00 00    	jne    40976f <_Z6windowid+0x214f>
  409624:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40962b:	00 
  40962c:	e9 10 f6 ff ff       	jmpq   408c41 <_Z6windowid+0x1621>
  409631:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  409636:	31 d2                	xor    %edx,%edx
  409638:	48 8d b4 24 b0 00 00 	lea    0xb0(%rsp),%rsi
  40963f:	00 
  409640:	e8 fb 9d ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  409645:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40964c:	00 
  40964d:	48 89 c7             	mov    %rax,%rdi
  409650:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
  409657:	00 
  409658:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40965f:	00 
  409660:	4c 89 e2             	mov    %r12,%rdx
  409663:	4c 89 ee             	mov    %r13,%rsi
  409666:	e8 e5 9b ff ff       	callq  403250 <memcpy@plt>
  40966b:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
  409672:	00 
  409673:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40967a:	00 
  40967b:	e9 c1 f5 ff ff       	jmpq   408c41 <_Z6windowid+0x1621>
  409680:	31 d2                	xor    %edx,%edx
  409682:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  409689:	00 
  40968a:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  409691:	00 
  409692:	e8 a9 9d ff ff       	callq  403440 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  409697:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
  40969e:	00 
  40969f:	48 89 c7             	mov    %rax,%rdi
  4096a2:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  4096a9:	00 
  4096aa:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
  4096b1:	00 
  4096b2:	4c 89 e2             	mov    %r12,%rdx
  4096b5:	4c 89 ee             	mov    %r13,%rsi
  4096b8:	e8 93 9b ff ff       	callq  403250 <memcpy@plt>
  4096bd:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  4096c4:	00 
  4096c5:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  4096cc:	00 
  4096cd:	e9 4f f4 ff ff       	jmpq   408b21 <_Z6windowid+0x1501>
  4096d2:	8b 77 20             	mov    0x20(%rdi),%esi
  4096d5:	83 ce 04             	or     $0x4,%esi
  4096d8:	e8 23 9d ff ff       	callq  403400 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  4096dd:	e9 d7 f6 ff ff       	jmpq   408db9 <_Z6windowid+0x1799>
  4096e2:	c5 f9 6f b4 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm6
  4096e9:	00 00 
  4096eb:	c5 f9 7f b4 24 90 01 	vmovdqa %xmm6,0x190(%rsp)
  4096f2:	00 00 
  4096f4:	e9 a1 f4 ff ff       	jmpq   408b9a <_Z6windowid+0x157a>
  4096f9:	bb 02 00 00 00       	mov    $0x2,%ebx
  4096fe:	e9 a9 e4 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  409703:	bb 01 00 00 00       	mov    $0x1,%ebx
  409708:	e9 bf e2 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  40970d:	bb 02 00 00 00       	mov    $0x2,%ebx
  409712:	e9 b5 e2 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  409717:	bb 03 00 00 00       	mov    $0x3,%ebx
  40971c:	e9 ab e2 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  409721:	bb 04 00 00 00       	mov    $0x4,%ebx
  409726:	e9 a1 e2 ff ff       	jmpq   4079cc <_Z6windowid+0x3ac>
  40972b:	bb 03 00 00 00       	mov    $0x3,%ebx
  409730:	e9 77 e4 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  409735:	bb 04 00 00 00       	mov    $0x4,%ebx
  40973a:	e9 6d e4 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  40973f:	bb 01 00 00 00       	mov    $0x1,%ebx
  409744:	e9 63 e4 ff ff       	jmpq   407bac <_Z6windowid+0x58c>
  409749:	bf 89 b0 40 00       	mov    $0x40b089,%edi
  40974e:	e8 0d 9c ff ff       	callq  403360 <_ZSt20__throw_out_of_rangePKc@plt>
  409753:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  409758:	e8 93 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40975d:	bf 92 b0 40 00       	mov    $0x40b092,%edi
  409762:	e8 f9 99 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  409767:	4c 89 ff             	mov    %r15,%rdi
  40976a:	e9 43 ff ff ff       	jmpq   4096b2 <_Z6windowid+0x2092>
  40976f:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  409776:	00 
  409777:	e9 e4 fe ff ff       	jmpq   409660 <_Z6windowid+0x2040>
  40977c:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  409781:	e8 6a 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  409786:	bf 89 b0 40 00       	mov    $0x40b089,%edi
  40978b:	e8 10 9a ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  409790:	bf 89 b0 40 00       	mov    $0x40b089,%edi
  409795:	e8 c6 9b ff ff       	callq  403360 <_ZSt20__throw_out_of_rangePKc@plt>
  40979a:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  40979f:	e8 4c 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4097a4:	bf 92 b0 40 00       	mov    $0x40b092,%edi
  4097a9:	e8 b2 99 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  4097ae:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4097b3:	e8 38 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4097b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4097bf:	00 
  4097c0:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4097c5:	e8 26 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4097ca:	bf 92 b0 40 00       	mov    $0x40b092,%edi
  4097cf:	e8 8c 99 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  4097d4:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  4097d9:	e8 12 9a ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  4097de:	bb 01 00 00 00       	mov    $0x1,%ebx
  4097e3:	e9 b4 f0 ff ff       	jmpq   40889c <_Z6windowid+0x127c>
  4097e8:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  4097ef:	00 
  4097f0:	e9 6d f1 ff ff       	jmpq   408962 <_Z6windowid+0x1342>
  4097f5:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  4097fc:	00 
  4097fd:	e9 0a f1 ff ff       	jmpq   40890c <_Z6windowid+0x12ec>
  409802:	48 8d bc 24 30 01 00 	lea    0x130(%rsp),%rdi
  409809:	00 
  40980a:	e9 05 fb ff ff       	jmpq   409314 <_Z6windowid+0x1cf4>
  40980f:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  409816:	00 
  409817:	e9 55 fc ff ff       	jmpq   409471 <_Z6windowid+0x1e51>
  40981c:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  409823:	00 
  409824:	e9 50 fb ff ff       	jmpq   409379 <_Z6windowid+0x1d59>
  409829:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  409830:	00 
  409831:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  409836:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40983d:	00 
  40983e:	e9 c9 fb ff ff       	jmpq   40940c <_Z6windowid+0x1dec>
  409843:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40984a:	00 
  40984b:	e9 f2 df ff ff       	jmpq   407842 <_Z6windowid+0x222>
  409850:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  409857:	00 
  409858:	e9 79 fc ff ff       	jmpq   4094d6 <_Z6windowid+0x1eb6>
  40985d:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  409864:	00 
  409865:	e9 d4 fc ff ff       	jmpq   40953e <_Z6windowid+0x1f1e>
  40986a:	bf 92 b0 40 00       	mov    $0x40b092,%edi
  40986f:	e8 ec 98 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  409874:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  409879:	e8 72 99 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40987e:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  409883:	e8 68 99 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  409888:	bf 89 b0 40 00       	mov    $0x40b089,%edi
  40988d:	e8 0e 99 ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  409892:	bf 10 b0 40 00       	mov    $0x40b010,%edi
  409897:	e8 54 99 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40989c:	48 89 c3             	mov    %rax,%rbx
  40989f:	e9 fc 9b ff ff       	jmpq   4034a0 <_Z6windowid.cold>
  4098a4:	48 89 c3             	mov    %rax,%rbx
  4098a7:	c5 f8 77             	vzeroupper 
  4098aa:	e9 6d 9c ff ff       	jmpq   40351c <_Z6windowid.cold+0x7c>
  4098af:	48 89 c3             	mov    %rax,%rbx
  4098b2:	e9 b4 9c ff ff       	jmpq   40356b <_Z6windowid.cold+0xcb>
  4098b7:	48 89 c3             	mov    %rax,%rbx
  4098ba:	e9 e6 9c ff ff       	jmpq   4035a5 <_Z6windowid.cold+0x105>
  4098bf:	48 89 c3             	mov    %rax,%rbx
  4098c2:	c5 f8 77             	vzeroupper 
  4098c5:	e9 f8 9c ff ff       	jmpq   4035c2 <_Z6windowid.cold+0x122>
  4098ca:	48 89 c3             	mov    %rax,%rbx
  4098cd:	e9 1d 9c ff ff       	jmpq   4034ef <_Z6windowid.cold+0x4f>
  4098d2:	49 89 c4             	mov    %rax,%r12
  4098d5:	e9 2c 9d ff ff       	jmpq   403606 <_Z6windowid.cold+0x166>
  4098da:	48 89 c3             	mov    %rax,%rbx
  4098dd:	c5 f8 77             	vzeroupper 
  4098e0:	e9 7b 9d ff ff       	jmpq   403660 <_Z6windowid.cold+0x1c0>
  4098e5:	48 89 c3             	mov    %rax,%rbx
  4098e8:	e9 63 9d ff ff       	jmpq   403650 <_Z6windowid.cold+0x1b0>
  4098ed:	48 89 c3             	mov    %rax,%rbx
  4098f0:	e9 30 9e ff ff       	jmpq   403725 <_Z6windowid.cold+0x285>
  4098f5:	49 89 c4             	mov    %rax,%r12
  4098f8:	e9 3d 9e ff ff       	jmpq   40373a <_Z6windowid.cold+0x29a>
  4098fd:	48 89 c3             	mov    %rax,%rbx
  409900:	c5 f8 77             	vzeroupper 
  409903:	e9 d2 9b ff ff       	jmpq   4034da <_Z6windowid.cold+0x3a>
  409908:	48 89 c3             	mov    %rax,%rbx
  40990b:	c5 f8 77             	vzeroupper 
  40990e:	e9 e3 9d ff ff       	jmpq   4036f6 <_Z6windowid.cold+0x256>
  409913:	49 89 c4             	mov    %rax,%r12
  409916:	c5 f8 77             	vzeroupper 
  409919:	e9 39 9e ff ff       	jmpq   403757 <_Z6windowid.cold+0x2b7>
  40991e:	48 89 c3             	mov    %rax,%rbx
  409921:	e9 64 9e ff ff       	jmpq   40378a <_Z6windowid.cold+0x2ea>
  409926:	48 89 c3             	mov    %rax,%rbx
  409929:	c5 f8 77             	vzeroupper 
  40992c:	e9 51 9d ff ff       	jmpq   403682 <_Z6windowid.cold+0x1e2>
  409931:	48 89 c3             	mov    %rax,%rbx
  409934:	c5 f8 77             	vzeroupper 
  409937:	e9 cf 9e ff ff       	jmpq   40380b <_Z6windowid.cold+0x36b>
  40993c:	48 89 c3             	mov    %rax,%rbx
  40993f:	e9 7c 9e ff ff       	jmpq   4037c0 <_Z6windowid.cold+0x320>
  409944:	48 89 c7             	mov    %rax,%rdi
  409947:	e9 ce 9e ff ff       	jmpq   40381a <_Z6windowid.cold+0x37a>
  40994c:	48 89 c3             	mov    %rax,%rbx
  40994f:	c5 f8 77             	vzeroupper 
  409952:	e9 9b 9e ff ff       	jmpq   4037f2 <_Z6windowid.cold+0x352>
  409957:	48 89 c3             	mov    %rax,%rbx
  40995a:	c5 f8 77             	vzeroupper 
  40995d:	e9 6e 9e ff ff       	jmpq   4037d0 <_Z6windowid.cold+0x330>
  409962:	48 89 c3             	mov    %rax,%rbx
  409965:	e9 c2 9e ff ff       	jmpq   40382c <_Z6windowid.cold+0x38c>
  40996a:	48 89 c3             	mov    %rax,%rbx
  40996d:	e9 cc 9e ff ff       	jmpq   40383e <_Z6windowid.cold+0x39e>
  409972:	48 89 c3             	mov    %rax,%rbx
  409975:	e9 d6 9e ff ff       	jmpq   403850 <_Z6windowid.cold+0x3b0>
  40997a:	48 89 c3             	mov    %rax,%rbx
  40997d:	c5 f8 77             	vzeroupper 
  409980:	e9 be 9b ff ff       	jmpq   403543 <_Z6windowid.cold+0xa3>
  409985:	48 89 c3             	mov    %rax,%rbx
  409988:	e9 f1 9e ff ff       	jmpq   40387e <_Z6windowid.cold+0x3de>
  40998d:	48 89 c3             	mov    %rax,%rbx
  409990:	c5 f8 77             	vzeroupper 
  409993:	e9 38 9d ff ff       	jmpq   4036d0 <_Z6windowid.cold+0x230>
  409998:	48 89 c3             	mov    %rax,%rbx
  40999b:	c5 f8 77             	vzeroupper 
  40999e:	e9 f8 9e ff ff       	jmpq   40389b <_Z6windowid.cold+0x3fb>
  4099a3:	48 89 c3             	mov    %rax,%rbx
  4099a6:	e9 2c 9f ff ff       	jmpq   4038d7 <_Z6windowid.cold+0x437>
  4099ab:	48 89 c3             	mov    %rax,%rbx
  4099ae:	e9 36 9f ff ff       	jmpq   4038e9 <_Z6windowid.cold+0x449>
  4099b3:	48 89 c3             	mov    %rax,%rbx
  4099b6:	e9 86 9f ff ff       	jmpq   403941 <_Z6windowid.cold+0x4a1>
  4099bb:	48 89 c3             	mov    %rax,%rbx
  4099be:	c5 f8 77             	vzeroupper 
  4099c1:	e9 0b a0 ff ff       	jmpq   4039d1 <_Z6windowid.cold+0x531>
  4099c6:	48 89 c3             	mov    %rax,%rbx
  4099c9:	c5 f8 77             	vzeroupper 
  4099cc:	e9 50 a0 ff ff       	jmpq   403a21 <_Z6windowid.cold+0x581>
  4099d1:	48 89 c3             	mov    %rax,%rbx
  4099d4:	e9 27 a0 ff ff       	jmpq   403a00 <_Z6windowid.cold+0x560>
  4099d9:	48 89 c3             	mov    %rax,%rbx
  4099dc:	e9 6f a0 ff ff       	jmpq   403a50 <_Z6windowid.cold+0x5b0>
  4099e1:	e9 bb a0 ff ff       	jmpq   403aa1 <_Z6windowid.cold+0x601>
  4099e6:	48 89 c3             	mov    %rax,%rbx
  4099e9:	c5 f8 77             	vzeroupper 
  4099ec:	e9 6f a0 ff ff       	jmpq   403a60 <_Z6windowid.cold+0x5c0>
  4099f1:	48 89 c3             	mov    %rax,%rbx
  4099f4:	c5 f8 77             	vzeroupper 
  4099f7:	e9 a9 9c ff ff       	jmpq   4036a5 <_Z6windowid.cold+0x205>
  4099fc:	48 89 c3             	mov    %rax,%rbx
  4099ff:	e9 56 a2 ff ff       	jmpq   403c5a <_Z6windowid.cold+0x7ba>
  409a04:	48 89 c3             	mov    %rax,%rbx
  409a07:	e9 4e a2 ff ff       	jmpq   403c5a <_Z6windowid.cold+0x7ba>
  409a0c:	48 89 c3             	mov    %rax,%rbx
  409a0f:	e9 f0 a0 ff ff       	jmpq   403b04 <_Z6windowid.cold+0x664>
  409a14:	48 89 c3             	mov    %rax,%rbx
  409a17:	c5 f8 77             	vzeroupper 
  409a1a:	e9 34 a1 ff ff       	jmpq   403b53 <_Z6windowid.cold+0x6b3>
  409a1f:	49 89 c5             	mov    %rax,%r13
  409a22:	e9 63 a1 ff ff       	jmpq   403b8a <_Z6windowid.cold+0x6ea>
  409a27:	48 89 c3             	mov    %rax,%rbx
  409a2a:	e9 af a1 ff ff       	jmpq   403bde <_Z6windowid.cold+0x73e>
  409a2f:	48 89 c7             	mov    %rax,%rdi
  409a32:	e9 bc a1 ff ff       	jmpq   403bf3 <_Z6windowid.cold+0x753>
  409a37:	48 89 c7             	mov    %rax,%rdi
  409a3a:	e9 c6 a1 ff ff       	jmpq   403c05 <_Z6windowid.cold+0x765>
  409a3f:	48 89 c3             	mov    %rax,%rbx
  409a42:	c5 f8 77             	vzeroupper 
  409a45:	e9 76 a1 ff ff       	jmpq   403bc0 <_Z6windowid.cold+0x720>
  409a4a:	c5 f8 77             	vzeroupper 
  409a4d:	e9 4b a1 ff ff       	jmpq   403b9d <_Z6windowid.cold+0x6fd>
  409a52:	48 89 c3             	mov    %rax,%rbx
  409a55:	c5 f8 77             	vzeroupper 
  409a58:	e9 4c 9f ff ff       	jmpq   4039a9 <_Z6windowid.cold+0x509>
  409a5d:	48 89 c3             	mov    %rax,%rbx
  409a60:	e9 c7 a1 ff ff       	jmpq   403c2c <_Z6windowid.cold+0x78c>
  409a65:	48 89 c3             	mov    %rax,%rbx
  409a68:	e9 0f 9f ff ff       	jmpq   40397c <_Z6windowid.cold+0x4dc>
  409a6d:	48 89 c3             	mov    %rax,%rbx
  409a70:	e9 bd a0 ff ff       	jmpq   403b32 <_Z6windowid.cold+0x692>
  409a75:	48 89 c3             	mov    %rax,%rbx
  409a78:	c5 f8 77             	vzeroupper 
  409a7b:	e9 92 9e ff ff       	jmpq   403912 <_Z6windowid.cold+0x472>

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
