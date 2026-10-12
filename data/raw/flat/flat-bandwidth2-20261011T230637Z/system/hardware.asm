
/lpor1/store_0/usr/user/hw-bench-thesis-results/flat-bandwidth2-20261011T230637Z/build/hardware:     file format elf64-x86-64


Disassembly of section .init:

0000000000403000 <_init>:
  403000:	f3 0f 1e fa          	endbr64 
  403004:	48 83 ec 08          	sub    $0x8,%rsp
  403008:	48 8b 05 c9 df 00 00 	mov    0xdfc9(%rip),%rax        # 410fd8 <__gmon_start__>
  40300f:	48 85 c0             	test   %rax,%rax
  403012:	74 02                	je     403016 <_init+0x16>
  403014:	ff d0                	callq  *%rax
  403016:	48 83 c4 08          	add    $0x8,%rsp
  40301a:	c3                   	retq   

Disassembly of section .plt:

0000000000403020 <.plt>:
  403020:	ff 35 e2 df 00 00    	pushq  0xdfe2(%rip)        # 411008 <_GLOBAL_OFFSET_TABLE_+0x8>
  403026:	ff 25 e4 df 00 00    	jmpq   *0xdfe4(%rip)        # 411010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40302c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403030 <_ZNSo3putEc@plt>:
  403030:	ff 25 e2 df 00 00    	jmpq   *0xdfe2(%rip)        # 411018 <_ZNSo3putEc@GLIBCXX_3.4>
  403036:	68 00 00 00 00       	pushq  $0x0
  40303b:	e9 e0 ff ff ff       	jmpq   403020 <.plt>

0000000000403040 <__errno_location@plt>:
  403040:	ff 25 da df 00 00    	jmpq   *0xdfda(%rip)        # 411020 <__errno_location@GLIBC_2.2.5>
  403046:	68 01 00 00 00       	pushq  $0x1
  40304b:	e9 d0 ff ff ff       	jmpq   403020 <.plt>

0000000000403050 <syscall@plt>:
  403050:	ff 25 d2 df 00 00    	jmpq   *0xdfd2(%rip)        # 411028 <syscall@GLIBC_2.2.5>
  403056:	68 02 00 00 00       	pushq  $0x2
  40305b:	e9 c0 ff ff ff       	jmpq   403020 <.plt>

0000000000403060 <GOMP_single_start@plt>:
  403060:	ff 25 ca df 00 00    	jmpq   *0xdfca(%rip)        # 411030 <GOMP_single_start@GOMP_1.0>
  403066:	68 03 00 00 00       	pushq  $0x3
  40306b:	e9 b0 ff ff ff       	jmpq   403020 <.plt>

0000000000403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>:
  403070:	ff 25 c2 df 00 00    	jmpq   *0xdfc2(%rip)        # 411038 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@GLIBCXX_3.4>
  403076:	68 04 00 00 00       	pushq  $0x4
  40307b:	e9 a0 ff ff ff       	jmpq   403020 <.plt>

0000000000403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>:
  403080:	ff 25 ba df 00 00    	jmpq   *0xdfba(%rip)        # 411040 <_ZNSt10filesystem7__cxx114pathdVERKS1_@GLIBCXX_3.4.26>
  403086:	68 05 00 00 00       	pushq  $0x5
  40308b:	e9 90 ff ff ff       	jmpq   403020 <.plt>

0000000000403090 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>:
  403090:	ff 25 b2 df 00 00    	jmpq   *0xdfb2(%rip)        # 411048 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  403096:	68 06 00 00 00       	pushq  $0x6
  40309b:	e9 80 ff ff ff       	jmpq   403020 <.plt>

00000000004030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>:
  4030a0:	ff 25 aa df 00 00    	jmpq   *0xdfaa(%rip)        # 411050 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@GLIBCXX_3.4.26>
  4030a6:	68 07 00 00 00       	pushq  $0x7
  4030ab:	e9 70 ff ff ff       	jmpq   403020 <.plt>

00000000004030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>:
  4030b0:	ff 25 a2 df 00 00    	jmpq   *0xdfa2(%rip)        # 411058 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@GLIBCXX_3.4.26>
  4030b6:	68 08 00 00 00       	pushq  $0x8
  4030bb:	e9 60 ff ff ff       	jmpq   403020 <.plt>

00000000004030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>:
  4030c0:	ff 25 9a df 00 00    	jmpq   *0xdf9a(%rip)        # 411060 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@GLIBCXX_3.4.21>
  4030c6:	68 09 00 00 00       	pushq  $0x9
  4030cb:	e9 50 ff ff ff       	jmpq   403020 <.plt>

00000000004030d0 <_ZNSt8ios_baseC2Ev@plt>:
  4030d0:	ff 25 92 df 00 00    	jmpq   *0xdf92(%rip)        # 411068 <_ZNSt8ios_baseC2Ev@GLIBCXX_3.4>
  4030d6:	68 0a 00 00 00       	pushq  $0xa
  4030db:	e9 40 ff ff ff       	jmpq   403020 <.plt>

00000000004030e0 <nanosleep@plt>:
  4030e0:	ff 25 8a df 00 00    	jmpq   *0xdf8a(%rip)        # 411070 <nanosleep@GLIBC_2.2.5>
  4030e6:	68 0b 00 00 00       	pushq  $0xb
  4030eb:	e9 30 ff ff ff       	jmpq   403020 <.plt>

00000000004030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>:
  4030f0:	ff 25 82 df 00 00    	jmpq   *0xdf82(%rip)        # 411078 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@GLIBCXX_3.4.21>
  4030f6:	68 0c 00 00 00       	pushq  $0xc
  4030fb:	e9 20 ff ff ff       	jmpq   403020 <.plt>

0000000000403100 <_ZNSt8ios_baseD2Ev@plt>:
  403100:	ff 25 7a df 00 00    	jmpq   *0xdf7a(%rip)        # 411080 <_ZNSt8ios_baseD2Ev@GLIBCXX_3.4>
  403106:	68 0d 00 00 00       	pushq  $0xd
  40310b:	e9 10 ff ff ff       	jmpq   403020 <.plt>

0000000000403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>:
  403110:	ff 25 72 df 00 00    	jmpq   *0xdf72(%rip)        # 411088 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@GLIBCXX_3.4.26>
  403116:	68 0e 00 00 00       	pushq  $0xe
  40311b:	e9 00 ff ff ff       	jmpq   403020 <.plt>

0000000000403120 <_ZNSt13runtime_errorC1EPKc@plt>:
  403120:	ff 25 6a df 00 00    	jmpq   *0xdf6a(%rip)        # 411090 <_ZNSt13runtime_errorC1EPKc@GLIBCXX_3.4.21>
  403126:	68 0f 00 00 00       	pushq  $0xf
  40312b:	e9 f0 fe ff ff       	jmpq   403020 <.plt>

0000000000403130 <__cxa_begin_catch@plt>:
  403130:	ff 25 62 df 00 00    	jmpq   *0xdf62(%rip)        # 411098 <__cxa_begin_catch@CXXABI_1.3>
  403136:	68 10 00 00 00       	pushq  $0x10
  40313b:	e9 e0 fe ff ff       	jmpq   403020 <.plt>

0000000000403140 <strlen@plt>:
  403140:	ff 25 5a df 00 00    	jmpq   *0xdf5a(%rip)        # 4110a0 <strlen@GLIBC_2.2.5>
  403146:	68 11 00 00 00       	pushq  $0x11
  40314b:	e9 d0 fe ff ff       	jmpq   403020 <.plt>

0000000000403150 <__cxa_allocate_exception@plt>:
  403150:	ff 25 52 df 00 00    	jmpq   *0xdf52(%rip)        # 4110a8 <__cxa_allocate_exception@CXXABI_1.3>
  403156:	68 12 00 00 00       	pushq  $0x12
  40315b:	e9 c0 fe ff ff       	jmpq   403020 <.plt>

0000000000403160 <_ZSt20__throw_length_errorPKc@plt>:
  403160:	ff 25 4a df 00 00    	jmpq   *0xdf4a(%rip)        # 4110b0 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
  403166:	68 13 00 00 00       	pushq  $0x13
  40316b:	e9 b0 fe ff ff       	jmpq   403020 <.plt>

0000000000403170 <_ZNSi10_M_extractImEERSiRT_@plt>:
  403170:	ff 25 42 df 00 00    	jmpq   *0xdf42(%rip)        # 4110b8 <_ZNSi10_M_extractImEERSiRT_@GLIBCXX_3.4.9>
  403176:	68 14 00 00 00       	pushq  $0x14
  40317b:	e9 a0 fe ff ff       	jmpq   403020 <.plt>

0000000000403180 <memset@plt>:
  403180:	ff 25 3a df 00 00    	jmpq   *0xdf3a(%rip)        # 4110c0 <memset@GLIBC_2.2.5>
  403186:	68 15 00 00 00       	pushq  $0x15
  40318b:	e9 90 fe ff ff       	jmpq   403020 <.plt>

0000000000403190 <GOMP_atomic_start@plt>:
  403190:	ff 25 32 df 00 00    	jmpq   *0xdf32(%rip)        # 4110c8 <GOMP_atomic_start@GOMP_1.0>
  403196:	68 16 00 00 00       	pushq  $0x16
  40319b:	e9 80 fe ff ff       	jmpq   403020 <.plt>

00000000004031a0 <_ZSt24__throw_invalid_argumentPKc@plt>:
  4031a0:	ff 25 2a df 00 00    	jmpq   *0xdf2a(%rip)        # 4110d0 <_ZSt24__throw_invalid_argumentPKc@GLIBCXX_3.4>
  4031a6:	68 17 00 00 00       	pushq  $0x17
  4031ab:	e9 70 fe ff ff       	jmpq   403020 <.plt>

00000000004031b0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@plt>:
  4031b0:	ff 25 22 df 00 00    	jmpq   *0xdf22(%rip)        # 4110d8 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@GLIBCXX_3.4.26>
  4031b6:	68 18 00 00 00       	pushq  $0x18
  4031bb:	e9 60 fe ff ff       	jmpq   403020 <.plt>

00000000004031c0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@plt>:
  4031c0:	ff 25 1a df 00 00    	jmpq   *0xdf1a(%rip)        # 4110e0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@GLIBCXX_3.4.26>
  4031c6:	68 19 00 00 00       	pushq  $0x19
  4031cb:	e9 50 fe ff ff       	jmpq   403020 <.plt>

00000000004031d0 <_ZNSo9_M_insertIyEERSoT_@plt>:
  4031d0:	ff 25 12 df 00 00    	jmpq   *0xdf12(%rip)        # 4110e8 <_ZNSo9_M_insertIyEERSoT_@GLIBCXX_3.4.9>
  4031d6:	68 1a 00 00 00       	pushq  $0x1a
  4031db:	e9 40 fe ff ff       	jmpq   403020 <.plt>

00000000004031e0 <_ZNSo9_M_insertImEERSoT_@plt>:
  4031e0:	ff 25 0a df 00 00    	jmpq   *0xdf0a(%rip)        # 4110f0 <_ZNSo9_M_insertImEERSoT_@GLIBCXX_3.4.9>
  4031e6:	68 1b 00 00 00       	pushq  $0x1b
  4031eb:	e9 30 fe ff ff       	jmpq   403020 <.plt>

00000000004031f0 <_ZSt19__throw_logic_errorPKc@plt>:
  4031f0:	ff 25 02 df 00 00    	jmpq   *0xdf02(%rip)        # 4110f8 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
  4031f6:	68 1c 00 00 00       	pushq  $0x1c
  4031fb:	e9 20 fe ff ff       	jmpq   403020 <.plt>

0000000000403200 <__cxa_free_exception@plt>:
  403200:	ff 25 fa de 00 00    	jmpq   *0xdefa(%rip)        # 411100 <__cxa_free_exception@CXXABI_1.3>
  403206:	68 1d 00 00 00       	pushq  $0x1d
  40320b:	e9 10 fe ff ff       	jmpq   403020 <.plt>

0000000000403210 <aligned_alloc@plt>:
  403210:	ff 25 f2 de 00 00    	jmpq   *0xdef2(%rip)        # 411108 <aligned_alloc@GLIBC_2.16>
  403216:	68 1e 00 00 00       	pushq  $0x1e
  40321b:	e9 00 fe ff ff       	jmpq   403020 <.plt>

0000000000403220 <GOMP_atomic_end@plt>:
  403220:	ff 25 ea de 00 00    	jmpq   *0xdeea(%rip)        # 411110 <GOMP_atomic_end@GOMP_1.0>
  403226:	68 1f 00 00 00       	pushq  $0x1f
  40322b:	e9 f0 fd ff ff       	jmpq   403020 <.plt>

0000000000403230 <strtod@plt>:
  403230:	ff 25 e2 de 00 00    	jmpq   *0xdee2(%rip)        # 411118 <strtod@GLIBC_2.2.5>
  403236:	68 20 00 00 00       	pushq  $0x20
  40323b:	e9 e0 fd ff ff       	jmpq   403020 <.plt>

0000000000403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>:
  403240:	ff 25 da de 00 00    	jmpq   *0xdeda(%rip)        # 411120 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@GLIBCXX_3.4.26>
  403246:	68 21 00 00 00       	pushq  $0x21
  40324b:	e9 d0 fd ff ff       	jmpq   403020 <.plt>

0000000000403250 <memcpy@plt>:
  403250:	ff 25 d2 de 00 00    	jmpq   *0xded2(%rip)        # 411128 <memcpy@GLIBC_2.14>
  403256:	68 22 00 00 00       	pushq  $0x22
  40325b:	e9 c0 fd ff ff       	jmpq   403020 <.plt>

0000000000403260 <__cxa_atexit@plt>:
  403260:	ff 25 ca de 00 00    	jmpq   *0xdeca(%rip)        # 411130 <__cxa_atexit@GLIBC_2.2.5>
  403266:	68 23 00 00 00       	pushq  $0x23
  40326b:	e9 b0 fd ff ff       	jmpq   403020 <.plt>

0000000000403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>:
  403270:	ff 25 c2 de 00 00    	jmpq   *0xdec2(%rip)        # 411138 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@GLIBCXX_3.4>
  403276:	68 24 00 00 00       	pushq  $0x24
  40327b:	e9 a0 fd ff ff       	jmpq   403020 <.plt>

0000000000403280 <clock_gettime@plt>:
  403280:	ff 25 ba de 00 00    	jmpq   *0xdeba(%rip)        # 411140 <clock_gettime@GLIBC_2.17>
  403286:	68 25 00 00 00       	pushq  $0x25
  40328b:	e9 90 fd ff ff       	jmpq   403020 <.plt>

0000000000403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  403290:	ff 25 b2 de 00 00    	jmpq   *0xdeb2(%rip)        # 411148 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  403296:	68 26 00 00 00       	pushq  $0x26
  40329b:	e9 80 fd ff ff       	jmpq   403020 <.plt>

00000000004032a0 <_Znwm@plt>:
  4032a0:	ff 25 aa de 00 00    	jmpq   *0xdeaa(%rip)        # 411150 <_Znwm@GLIBCXX_3.4>
  4032a6:	68 27 00 00 00       	pushq  $0x27
  4032ab:	e9 70 fd ff ff       	jmpq   403020 <.plt>

00000000004032b0 <_ZdlPvm@plt>:
  4032b0:	ff 25 a2 de 00 00    	jmpq   *0xdea2(%rip)        # 411158 <_ZdlPvm@CXXABI_1.3.9>
  4032b6:	68 28 00 00 00       	pushq  $0x28
  4032bb:	e9 60 fd ff ff       	jmpq   403020 <.plt>

00000000004032c0 <_ZNSt13runtime_errorD1Ev@plt>:
  4032c0:	ff 25 9a de 00 00    	jmpq   *0xde9a(%rip)        # 411160 <_ZNSt13runtime_errorD1Ev@GLIBCXX_3.4>
  4032c6:	68 29 00 00 00       	pushq  $0x29
  4032cb:	e9 50 fd ff ff       	jmpq   403020 <.plt>

00000000004032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>:
  4032d0:	ff 25 92 de 00 00    	jmpq   *0xde92(%rip)        # 411168 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@GLIBCXX_3.4>
  4032d6:	68 2a 00 00 00       	pushq  $0x2a
  4032db:	e9 40 fd ff ff       	jmpq   403020 <.plt>

00000000004032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
  4032e0:	ff 25 8a de 00 00    	jmpq   *0xde8a(%rip)        # 411170 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
  4032e6:	68 2b 00 00 00       	pushq  $0x2b
  4032eb:	e9 30 fd ff ff       	jmpq   403020 <.plt>

00000000004032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>:
  4032f0:	ff 25 82 de 00 00    	jmpq   *0xde82(%rip)        # 411178 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@GLIBCXX_3.4.21>
  4032f6:	68 2c 00 00 00       	pushq  $0x2c
  4032fb:	e9 20 fd ff ff       	jmpq   403020 <.plt>

0000000000403300 <free@plt>:
  403300:	ff 25 7a de 00 00    	jmpq   *0xde7a(%rip)        # 411180 <free@GLIBC_2.2.5>
  403306:	68 2d 00 00 00       	pushq  $0x2d
  40330b:	e9 10 fd ff ff       	jmpq   403020 <.plt>

0000000000403310 <madvise@plt>:
  403310:	ff 25 72 de 00 00    	jmpq   *0xde72(%rip)        # 411188 <madvise@GLIBC_2.2.5>
  403316:	68 2e 00 00 00       	pushq  $0x2e
  40331b:	e9 00 fd ff ff       	jmpq   403020 <.plt>

0000000000403320 <getenv@plt>:
  403320:	ff 25 6a de 00 00    	jmpq   *0xde6a(%rip)        # 411190 <getenv@GLIBC_2.2.5>
  403326:	68 2f 00 00 00       	pushq  $0x2f
  40332b:	e9 f0 fc ff ff       	jmpq   403020 <.plt>

0000000000403330 <strtoull@plt>:
  403330:	ff 25 62 de 00 00    	jmpq   *0xde62(%rip)        # 411198 <strtoull@GLIBC_2.2.5>
  403336:	68 30 00 00 00       	pushq  $0x30
  40333b:	e9 e0 fc ff ff       	jmpq   403020 <.plt>

0000000000403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>:
  403340:	ff 25 5a de 00 00    	jmpq   *0xde5a(%rip)        # 4111a0 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@GLIBCXX_3.4>
  403346:	68 31 00 00 00       	pushq  $0x31
  40334b:	e9 d0 fc ff ff       	jmpq   403020 <.plt>

0000000000403350 <strtol@plt>:
  403350:	ff 25 52 de 00 00    	jmpq   *0xde52(%rip)        # 4111a8 <strtol@GLIBC_2.2.5>
  403356:	68 32 00 00 00       	pushq  $0x32
  40335b:	e9 c0 fc ff ff       	jmpq   403020 <.plt>

0000000000403360 <_ZNSt6localeD1Ev@plt>:
  403360:	ff 25 4a de 00 00    	jmpq   *0xde4a(%rip)        # 4111b0 <_ZNSt6localeD1Ev@GLIBCXX_3.4>
  403366:	68 33 00 00 00       	pushq  $0x33
  40336b:	e9 b0 fc ff ff       	jmpq   403020 <.plt>

0000000000403370 <read@plt>:
  403370:	ff 25 42 de 00 00    	jmpq   *0xde42(%rip)        # 4111b8 <read@GLIBC_2.2.5>
  403376:	68 34 00 00 00       	pushq  $0x34
  40337b:	e9 a0 fc ff ff       	jmpq   403020 <.plt>

0000000000403380 <_ZSt20__throw_out_of_rangePKc@plt>:
  403380:	ff 25 3a de 00 00    	jmpq   *0xde3a(%rip)        # 4111c0 <_ZSt20__throw_out_of_rangePKc@GLIBCXX_3.4>
  403386:	68 35 00 00 00       	pushq  $0x35
  40338b:	e9 90 fc ff ff       	jmpq   403020 <.plt>

0000000000403390 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>:
  403390:	ff 25 32 de 00 00    	jmpq   *0xde32(%rip)        # 4111c8 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  403396:	68 36 00 00 00       	pushq  $0x36
  40339b:	e9 80 fc ff ff       	jmpq   403020 <.plt>

00000000004033a0 <GOMP_parallel@plt>:
  4033a0:	ff 25 2a de 00 00    	jmpq   *0xde2a(%rip)        # 4111d0 <GOMP_parallel@GOMP_4.0>
  4033a6:	68 37 00 00 00       	pushq  $0x37
  4033ab:	e9 70 fc ff ff       	jmpq   403020 <.plt>

00000000004033b0 <_ZNSt8ios_base4InitC1Ev@plt>:
  4033b0:	ff 25 22 de 00 00    	jmpq   *0xde22(%rip)        # 4111d8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  4033b6:	68 38 00 00 00       	pushq  $0x38
  4033bb:	e9 60 fc ff ff       	jmpq   403020 <.plt>

00000000004033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>:
  4033c0:	ff 25 1a de 00 00    	jmpq   *0xde1a(%rip)        # 4111e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@GLIBCXX_3.4.21>
  4033c6:	68 39 00 00 00       	pushq  $0x39
  4033cb:	e9 50 fc ff ff       	jmpq   403020 <.plt>

00000000004033d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@plt>:
  4033d0:	ff 25 12 de 00 00    	jmpq   *0xde12(%rip)        # 4111e8 <_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
  4033d6:	68 3a 00 00 00       	pushq  $0x3a
  4033db:	e9 40 fc ff ff       	jmpq   403020 <.plt>

00000000004033e0 <omp_get_thread_num@plt>:
  4033e0:	ff 25 0a de 00 00    	jmpq   *0xde0a(%rip)        # 4111f0 <omp_get_thread_num@OMP_1.0>
  4033e6:	68 3b 00 00 00       	pushq  $0x3b
  4033eb:	e9 30 fc ff ff       	jmpq   403020 <.plt>

00000000004033f0 <_ZNSo9_M_insertIdEERSoT_@plt>:
  4033f0:	ff 25 02 de 00 00    	jmpq   *0xde02(%rip)        # 4111f8 <_ZNSo9_M_insertIdEERSoT_@GLIBCXX_3.4.9>
  4033f6:	68 3c 00 00 00       	pushq  $0x3c
  4033fb:	e9 20 fc ff ff       	jmpq   403020 <.plt>

0000000000403400 <__cxa_end_catch@plt>:
  403400:	ff 25 fa dd 00 00    	jmpq   *0xddfa(%rip)        # 411200 <__cxa_end_catch@CXXABI_1.3>
  403406:	68 3d 00 00 00       	pushq  $0x3d
  40340b:	e9 10 fc ff ff       	jmpq   403020 <.plt>

0000000000403410 <__gxx_personality_v0@plt>:
  403410:	ff 25 f2 dd 00 00    	jmpq   *0xddf2(%rip)        # 411208 <__gxx_personality_v0@CXXABI_1.3>
  403416:	68 3e 00 00 00       	pushq  $0x3e
  40341b:	e9 00 fc ff ff       	jmpq   403020 <.plt>

0000000000403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>:
  403420:	ff 25 ea dd 00 00    	jmpq   *0xddea(%rip)        # 411210 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@GLIBCXX_3.4>
  403426:	68 3f 00 00 00       	pushq  $0x3f
  40342b:	e9 f0 fb ff ff       	jmpq   403020 <.plt>

0000000000403430 <__cxa_throw@plt>:
  403430:	ff 25 e2 dd 00 00    	jmpq   *0xdde2(%rip)        # 411218 <__cxa_throw@CXXABI_1.3>
  403436:	68 40 00 00 00       	pushq  $0x40
  40343b:	e9 e0 fb ff ff       	jmpq   403020 <.plt>

0000000000403440 <_ZNSolsEi@plt>:
  403440:	ff 25 da dd 00 00    	jmpq   *0xddda(%rip)        # 411220 <_ZNSolsEi@GLIBCXX_3.4>
  403446:	68 41 00 00 00       	pushq  $0x41
  40344b:	e9 d0 fb ff ff       	jmpq   403020 <.plt>

0000000000403450 <_Unwind_Resume@plt>:
  403450:	ff 25 d2 dd 00 00    	jmpq   *0xddd2(%rip)        # 411228 <_Unwind_Resume@GCC_3.0>
  403456:	68 42 00 00 00       	pushq  $0x42
  40345b:	e9 c0 fb ff ff       	jmpq   403020 <.plt>

0000000000403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>:
  403460:	ff 25 ca dd 00 00    	jmpq   *0xddca(%rip)        # 411230 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@GLIBCXX_3.4.21>
  403466:	68 43 00 00 00       	pushq  $0x43
  40346b:	e9 b0 fb ff ff       	jmpq   403020 <.plt>

0000000000403470 <GOMP_barrier@plt>:
  403470:	ff 25 c2 dd 00 00    	jmpq   *0xddc2(%rip)        # 411238 <GOMP_barrier@GOMP_1.0>
  403476:	68 44 00 00 00       	pushq  $0x44
  40347b:	e9 a0 fb ff ff       	jmpq   403020 <.plt>

0000000000403480 <_ZNSt12__basic_fileIcED1Ev@plt>:
  403480:	ff 25 ba dd 00 00    	jmpq   *0xddba(%rip)        # 411240 <_ZNSt12__basic_fileIcED1Ev@GLIBCXX_3.4>
  403486:	68 45 00 00 00       	pushq  $0x45
  40348b:	e9 90 fb ff ff       	jmpq   403020 <.plt>

0000000000403490 <omp_get_num_threads@plt>:
  403490:	ff 25 b2 dd 00 00    	jmpq   *0xddb2(%rip)        # 411248 <omp_get_num_threads@OMP_1.0>
  403496:	68 46 00 00 00       	pushq  $0x46
  40349b:	e9 80 fb ff ff       	jmpq   403020 <.plt>

00000000004034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>:
  4034a0:	ff 25 aa dd 00 00    	jmpq   *0xddaa(%rip)        # 411250 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@GLIBCXX_3.4.26>
  4034a6:	68 47 00 00 00       	pushq  $0x47
  4034ab:	e9 70 fb ff ff       	jmpq   403020 <.plt>

00000000004034b0 <close@plt>:
  4034b0:	ff 25 a2 dd 00 00    	jmpq   *0xdda2(%rip)        # 411258 <close@GLIBC_2.2.5>
  4034b6:	68 48 00 00 00       	pushq  $0x48
  4034bb:	e9 60 fb ff ff       	jmpq   403020 <.plt>

00000000004034c0 <_ZNSt8ios_base4InitD1Ev@plt>:
  4034c0:	ff 25 9a dd 00 00    	jmpq   *0xdd9a(%rip)        # 411260 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  4034c6:	68 49 00 00 00       	pushq  $0x49
  4034cb:	e9 50 fb ff ff       	jmpq   403020 <.plt>

Disassembly of section .text:

00000000004034d0 <_Z11alloc_bytesmb.cold>:
  4034d0:	bf 10 00 00 00       	mov    $0x10,%edi
  4034d5:	e8 76 fc ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  4034da:	48 89 c7             	mov    %rax,%rdi
  4034dd:	be 8c e0 40 00       	mov    $0x40e08c,%esi
  4034e2:	48 89 c5             	mov    %rax,%rbp
  4034e5:	e8 36 fc ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  4034ea:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  4034ef:	be a0 0d 41 00       	mov    $0x410da0,%esi
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
  403554:	e8 b7 91 00 00       	callq  40c710 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403596:	e8 75 91 00 00       	callq  40c710 <_ZNSt10filesystem7__cxx114pathD1Ev>
  40359b:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  4035a2:	00 
  4035a3:	4c 39 ff             	cmp    %r15,%rdi
  4035a6:	75 5c                	jne    403604 <_Z6windowid.cold+0xf2>
  4035a8:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  4035af:	00 
  4035b0:	e8 5b 91 00 00       	callq  40c710 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  4036d2:	48 8b 05 4f d5 00 00 	mov    0xd54f(%rip),%rax        # 410c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  4036d9:	48 8b 0d 50 d5 00 00 	mov    0xd550(%rip),%rcx        # 410c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  4036e0:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  4036e7:	00 
  4036e8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  4036ec:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  4036f3:	00 
  4036f4:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  4036fb:	00 
  4036fc:	48 c7 84 24 78 02 00 	movq   $0x410b90,0x278(%rsp)
  403703:	00 90 0b 41 00 
  403708:	e8 f3 f9 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40370d:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  403712:	e8 f9 8f 00 00       	callq  40c710 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403717:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40371e:	00 
  40371f:	e8 ec 8f 00 00       	callq  40c710 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403842:	48 8b 05 df d3 00 00 	mov    0xd3df(%rip),%rax        # 410c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  403849:	48 8b 0d e0 d3 00 00 	mov    0xd3e0(%rip),%rcx        # 410c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  403850:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  403857:	00 
  403858:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40385c:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  403863:	00 
  403864:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40386b:	00 
  40386c:	48 c7 84 24 78 02 00 	movq   $0x410b90,0x278(%rsp)
  403873:	00 90 0b 41 00 
  403878:	e8 83 f8 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40387d:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  403882:	e8 89 8e 00 00       	callq  40c710 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403887:	e9 1c fd ff ff       	jmpq   4035a8 <_Z6windowid.cold+0x96>
  40388c:	c5 f8 77             	vzeroupper 
  40388f:	e8 9c f8 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403894:	e8 67 fb ff ff       	callq  403400 <__cxa_end_catch@plt>
  403899:	e9 09 80 00 00       	jmpq   40b8a7 <_Z6windowid+0x15d7>
  40389e:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4038a3:	c5 f8 77             	vzeroupper 
  4038a6:	e8 65 8e 00 00       	callq  40c710 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403951:	e8 ba 8d 00 00       	callq  40c710 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403a20:	e8 eb 8c 00 00       	callq  40c710 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403acd:	e8 3e 8c 00 00       	callq  40c710 <_ZNSt10filesystem7__cxx114pathD1Ev>
  403ad2:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  403ad9:	00 
  403ada:	e8 31 8c 00 00       	callq  40c710 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403b2b:	be ef e0 40 00       	mov    $0x40e0ef,%esi
  403b30:	49 89 c4             	mov    %rax,%r12
  403b33:	e8 e8 f5 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403b38:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403b3d:	be a0 0d 41 00       	mov    $0x410da0,%esi
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
  403b9b:	48 c7 84 24 80 02 00 	movq   $0x410b90,0x280(%rsp)
  403ba2:	00 90 0b 41 00 
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
  403bd3:	e9 7e 81 00 00       	jmpq   40bd56 <_Z6windowid+0x1a86>
  403bd8:	c5 f8 77             	vzeroupper 
  403bdb:	e8 50 f5 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403be0:	e8 1b f8 ff ff       	callq  403400 <__cxa_end_catch@plt>
  403be5:	e9 d2 70 00 00       	jmpq   40acbc <_Z6windowid+0x9ec>
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
  403c7d:	be 12 e1 40 00       	mov    $0x40e112,%esi
  403c82:	49 89 c4             	mov    %rax,%r12
  403c85:	e8 96 f4 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403c8a:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403c8f:	be a0 0d 41 00       	mov    $0x410da0,%esi
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
  403cda:	e8 31 8a 00 00       	callq  40c710 <_ZNSt10filesystem7__cxx114pathD1Ev>
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
  403d03:	8b 85 cc f3 ff ff    	mov    -0xc34(%rbp),%eax
  403d09:	41 89 04 24          	mov    %eax,(%r12)
  403d0d:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  403d14:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  403d1b:	48 39 c7             	cmp    %rax,%rdi
  403d1e:	0f 84 a0 00 00 00    	je     403dc4 <main.cold+0xc8>
  403d24:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  403d2b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d2f:	c5 f8 77             	vzeroupper 
  403d32:	e8 79 f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403d37:	48 8b bd b0 f5 ff ff 	mov    -0xa50(%rbp),%rdi
  403d3e:	4c 39 ff             	cmp    %r15,%rdi
  403d41:	74 10                	je     403d53 <main.cold+0x57>
  403d43:	48 8b 85 c0 f5 ff ff 	mov    -0xa40(%rbp),%rax
  403d4a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d4e:	e8 5d f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403d53:	48 8b bd c0 f4 ff ff 	mov    -0xb40(%rbp),%rdi
  403d5a:	48 8d 85 d0 f4 ff ff 	lea    -0xb30(%rbp),%rax
  403d61:	48 39 c7             	cmp    %rax,%rdi
  403d64:	74 10                	je     403d76 <main.cold+0x7a>
  403d66:	48 8b 85 d0 f4 ff ff 	mov    -0xb30(%rbp),%rax
  403d6d:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403d71:	e8 3a f5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403d76:	48 89 df             	mov    %rbx,%rdi
  403d79:	49 ff ce             	dec    %r14
  403d7c:	75 4e                	jne    403dcc <main.cold+0xd0>
  403d7e:	e8 ad f3 ff ff       	callq  403130 <__cxa_begin_catch@plt>
  403d83:	48 89 c7             	mov    %rax,%rdi
  403d86:	48 8b 00             	mov    (%rax),%rax
  403d89:	ff 50 10             	callq  *0x10(%rax)
  403d8c:	48 89 c6             	mov    %rax,%rsi
  403d8f:	bf a0 13 41 00       	mov    $0x4113a0,%edi
  403d94:	e8 f7 f4 ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  403d99:	48 89 c7             	mov    %rax,%rdi
  403d9c:	ba 01 00 00 00       	mov    $0x1,%edx
  403da1:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  403da8:	c6 85 00 f6 ff ff 0a 	movb   $0xa,-0xa00(%rbp)
  403daf:	e8 2c f5 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  403db4:	e8 47 f6 ff ff       	callq  403400 <__cxa_end_catch@plt>
  403db9:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  403dbf:	e9 17 06 00 00       	jmpq   4043db <main+0x4cb>
  403dc4:	c5 f8 77             	vzeroupper 
  403dc7:	e9 6b ff ff ff       	jmpq   403d37 <main.cold+0x3b>
  403dcc:	e8 7f f6 ff ff       	callq  403450 <_Unwind_Resume@plt>
  403dd1:	49 89 c4             	mov    %rax,%r12
  403dd4:	c5 f8 77             	vzeroupper 
  403dd7:	e8 24 f6 ff ff       	callq  403400 <__cxa_end_catch@plt>
  403ddc:	4c 89 e7             	mov    %r12,%rdi
  403ddf:	e8 6c f6 ff ff       	callq  403450 <_Unwind_Resume@plt>
  403de4:	bf 10 00 00 00       	mov    $0x10,%edi
  403de9:	e8 62 f3 ff ff       	callq  403150 <__cxa_allocate_exception@plt>
  403dee:	48 89 c7             	mov    %rax,%rdi
  403df1:	be 68 e0 40 00       	mov    $0x40e068,%esi
  403df6:	49 89 c5             	mov    %rax,%r13
  403df9:	e8 22 f3 ff ff       	callq  403120 <_ZNSt13runtime_errorC1EPKc@plt>
  403dfe:	ba c0 32 40 00       	mov    $0x4032c0,%edx
  403e03:	be a0 0d 41 00       	mov    $0x410da0,%esi
  403e08:	4c 89 ef             	mov    %r13,%rdi
  403e0b:	e8 20 f6 ff ff       	callq  403430 <__cxa_throw@plt>
  403e10:	48 89 c3             	mov    %rax,%rbx
  403e13:	49 89 d4             	mov    %rdx,%r12
  403e16:	c5 f8 77             	vzeroupper 
  403e19:	48 8b bd a0 f4 ff ff 	mov    -0xb60(%rbp),%rdi
  403e20:	48 8b b5 b0 f4 ff ff 	mov    -0xb50(%rbp),%rsi
  403e27:	48 29 fe             	sub    %rdi,%rsi
  403e2a:	48 85 ff             	test   %rdi,%rdi
  403e2d:	74 05                	je     403e34 <main.cold+0x138>
  403e2f:	e8 7c f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e34:	48 8b bd 80 f4 ff ff 	mov    -0xb80(%rbp),%rdi
  403e3b:	48 8b b5 90 f4 ff ff 	mov    -0xb70(%rbp),%rsi
  403e42:	48 29 fe             	sub    %rdi,%rsi
  403e45:	48 85 ff             	test   %rdi,%rdi
  403e48:	74 05                	je     403e4f <main.cold+0x153>
  403e4a:	e8 61 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e4f:	4d 89 e6             	mov    %r12,%r14
  403e52:	48 8b bd 10 f4 ff ff 	mov    -0xbf0(%rbp),%rdi
  403e59:	e8 92 8a 00 00       	callq  40c8f0 <_ZN8CountersD1Ev>
  403e5e:	e9 f0 fe ff ff       	jmpq   403d53 <main.cold+0x57>
  403e63:	48 8b bd 20 f5 ff ff 	mov    -0xae0(%rbp),%rdi
  403e6a:	48 8d 85 30 f5 ff ff 	lea    -0xad0(%rbp),%rax
  403e71:	48 39 c7             	cmp    %rax,%rdi
  403e74:	74 62                	je     403ed8 <main.cold+0x1dc>
  403e76:	48 8b 85 30 f5 ff ff 	mov    -0xad0(%rbp),%rax
  403e7d:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403e81:	c5 f8 77             	vzeroupper 
  403e84:	e8 27 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403e89:	48 8b bd 00 f5 ff ff 	mov    -0xb00(%rbp),%rdi
  403e90:	48 8d 85 10 f5 ff ff 	lea    -0xaf0(%rbp),%rax
  403e97:	48 39 c7             	cmp    %rax,%rdi
  403e9a:	74 10                	je     403eac <main.cold+0x1b0>
  403e9c:	48 8b 85 10 f5 ff ff 	mov    -0xaf0(%rbp),%rax
  403ea3:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403ea7:	e8 04 f4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403eac:	48 8b bd e0 f4 ff ff 	mov    -0xb20(%rbp),%rdi
  403eb3:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  403eba:	48 39 c7             	cmp    %rax,%rdi
  403ebd:	0f 84 56 ff ff ff    	je     403e19 <main.cold+0x11d>
  403ec3:	48 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%rax
  403eca:	48 8d 70 01          	lea    0x1(%rax),%rsi
  403ece:	e8 dd f3 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  403ed3:	e9 41 ff ff ff       	jmpq   403e19 <main.cold+0x11d>
  403ed8:	c5 f8 77             	vzeroupper 
  403edb:	eb ac                	jmp    403e89 <main.cold+0x18d>
  403edd:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  403ee2:	0f 85 25 fe ff ff    	jne    403d0d <main.cold+0x11>
  403ee8:	8b 85 10 f4 ff ff    	mov    -0xbf0(%rbp),%eax
  403eee:	41 89 04 24          	mov    %eax,(%r12)
  403ef2:	e9 16 fe ff ff       	jmpq   403d0d <main.cold+0x11>
  403ef7:	48 89 c3             	mov    %rax,%rbx
  403efa:	49 89 d4             	mov    %rdx,%r12
  403efd:	4c 89 ef             	mov    %r13,%rdi
  403f00:	c5 f8 77             	vzeroupper 
  403f03:	e8 f8 f2 ff ff       	callq  403200 <__cxa_free_exception@plt>
  403f08:	e9 0c ff ff ff       	jmpq   403e19 <main.cold+0x11d>
  403f0d:	0f 1f 00             	nopl   (%rax)

0000000000403f10 <main>:
  403f10:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
  403f15:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  403f19:	41 ff 72 f8          	pushq  -0x8(%r10)
  403f1d:	55                   	push   %rbp
  403f1e:	48 89 e5             	mov    %rsp,%rbp
  403f21:	41 57                	push   %r15
  403f23:	41 56                	push   %r14
  403f25:	41 55                	push   %r13
  403f27:	41 54                	push   %r12
  403f29:	41 52                	push   %r10
  403f2b:	53                   	push   %rbx
  403f2c:	89 fb                	mov    %edi,%ebx
  403f2e:	48 81 ec 40 0c 00 00 	sub    $0xc40,%rsp
  403f35:	89 bd 00 f4 ff ff    	mov    %edi,-0xc00(%rbp)
  403f3b:	48 89 b5 f0 f3 ff ff 	mov    %rsi,-0xc10(%rbp)
  403f42:	48 8d bd c0 f4 ff ff 	lea    -0xb40(%rbp),%rdi
  403f49:	be 44 e1 40 00       	mov    $0x40e144,%esi
  403f4e:	e8 cd 5f 00 00       	callq  409f20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  403f53:	c7 85 30 f4 ff ff 01 	movl   $0x1,-0xbd0(%rbp)
  403f5a:	00 00 00 
  403f5d:	83 fb 01             	cmp    $0x1,%ebx
  403f60:	0f 8e 7b 05 00 00    	jle    4044e1 <main+0x5d1>
  403f66:	c5 fb 10 3d 0a a6 00 	vmovsd 0xa60a(%rip),%xmm7        # 40e578 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  403f6d:	00 
  403f6e:	48 b8 00 00 00 00 02 	movabs $0x200000000,%rax
  403f75:	00 00 00 
  403f78:	c6 85 e0 f3 ff ff 00 	movb   $0x0,-0xc20(%rbp)
  403f7f:	c6 85 e8 f3 ff ff 00 	movb   $0x0,-0xc18(%rbp)
  403f86:	c7 85 c8 f3 ff ff 05 	movl   $0x5,-0xc38(%rbp)
  403f8d:	00 00 00 
  403f90:	48 89 85 d8 f3 ff ff 	mov    %rax,-0xc28(%rbp)
  403f97:	bb 01 00 00 00       	mov    $0x1,%ebx
  403f9c:	c5 fb 11 bd 18 f4 ff 	vmovsd %xmm7,-0xbe8(%rbp)
  403fa3:	ff 
  403fa4:	c5 fb 11 bd d0 f3 ff 	vmovsd %xmm7,-0xc30(%rbp)
  403fab:	ff 
  403fac:	4c 8d ad b0 f5 ff ff 	lea    -0xa50(%rbp),%r13
  403fb3:	4c 8d bd c0 f5 ff ff 	lea    -0xa40(%rbp),%r15
  403fba:	e9 9b 00 00 00       	jmpq   40405a <main+0x14a>
  403fbf:	90                   	nop
  403fc0:	be 94 e2 40 00       	mov    $0x40e294,%esi
  403fc5:	4c 89 ef             	mov    %r13,%rdi
  403fc8:	e8 f3 f0 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  403fcd:	85 c0                	test   %eax,%eax
  403fcf:	0f 84 6b 01 00 00    	je     404140 <main+0x230>
  403fd5:	ff c3                	inc    %ebx
  403fd7:	39 9d 00 f4 ff ff    	cmp    %ebx,-0xc00(%rbp)
  403fdd:	0f 8e d9 04 00 00    	jle    4044bc <main+0x5ac>
  403fe3:	be a0 e2 40 00       	mov    $0x40e2a0,%esi
  403fe8:	4c 89 ef             	mov    %r13,%rdi
  403feb:	e8 d0 f0 ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  403ff0:	85 c0                	test   %eax,%eax
  403ff2:	0f 85 58 01 00 00    	jne    404150 <main+0x240>
  403ff8:	48 8b 8d 10 f4 ff ff 	mov    -0xbf0(%rbp),%rcx
  403fff:	48 8b 85 f0 f3 ff ff 	mov    -0xc10(%rbp),%rax
  404006:	4c 8b 64 08 08       	mov    0x8(%rax,%rcx,1),%r12
  40400b:	4c 89 e7             	mov    %r12,%rdi
  40400e:	e8 2d f1 ff ff       	callq  403140 <strlen@plt>
  404013:	48 8b 95 c8 f4 ff ff 	mov    -0xb38(%rbp),%rdx
  40401a:	49 89 c0             	mov    %rax,%r8
  40401d:	4c 89 e1             	mov    %r12,%rcx
  404020:	31 f6                	xor    %esi,%esi
  404022:	48 8d bd c0 f4 ff ff 	lea    -0xb40(%rbp),%rdi
  404029:	e8 92 f3 ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40402e:	66 90                	xchg   %ax,%ax
  404030:	48 8b bd b0 f5 ff ff 	mov    -0xa50(%rbp),%rdi
  404037:	4c 39 ff             	cmp    %r15,%rdi
  40403a:	74 10                	je     40404c <main+0x13c>
  40403c:	48 8b 85 c0 f5 ff ff 	mov    -0xa40(%rbp),%rax
  404043:	48 8d 70 01          	lea    0x1(%rax),%rsi
  404047:	e8 64 f2 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40404c:	ff c3                	inc    %ebx
  40404e:	39 9d 00 f4 ff ff    	cmp    %ebx,-0xc00(%rbp)
  404054:	0f 8e 2e 03 00 00    	jle    404388 <main+0x478>
  40405a:	48 8b b5 f0 f3 ff ff 	mov    -0xc10(%rbp),%rsi
  404061:	48 63 c3             	movslq %ebx,%rax
  404064:	4c 8b 24 c6          	mov    (%rsi,%rax,8),%r12
  404068:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
  40406f:	00 
  404070:	48 89 8d 10 f4 ff ff 	mov    %rcx,-0xbf0(%rbp)
  404077:	4c 89 bd b0 f5 ff ff 	mov    %r15,-0xa50(%rbp)
  40407e:	4d 85 e4             	test   %r12,%r12
  404081:	0f 84 2b 1e 00 00    	je     405eb2 <main+0x1fa2>
  404087:	4c 89 e7             	mov    %r12,%rdi
  40408a:	e8 b1 f0 ff ff       	callq  403140 <strlen@plt>
  40408f:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  404096:	49 89 c6             	mov    %rax,%r14
  404099:	48 83 f8 0f          	cmp    $0xf,%rax
  40409d:	77 51                	ja     4040f0 <main+0x1e0>
  40409f:	48 83 f8 01          	cmp    $0x1,%rax
  4040a3:	75 3b                	jne    4040e0 <main+0x1d0>
  4040a5:	41 0f b6 14 24       	movzbl (%r12),%edx
  4040aa:	88 95 c0 f5 ff ff    	mov    %dl,-0xa40(%rbp)
  4040b0:	4c 89 fa             	mov    %r15,%rdx
  4040b3:	48 89 85 b8 f5 ff ff 	mov    %rax,-0xa48(%rbp)
  4040ba:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4040be:	be 87 e2 40 00       	mov    $0x40e287,%esi
  4040c3:	4c 89 ef             	mov    %r13,%rdi
  4040c6:	e8 f5 ef ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4040cb:	85 c0                	test   %eax,%eax
  4040cd:	0f 85 ed fe ff ff    	jne    403fc0 <main+0xb0>
  4040d3:	c6 85 e8 f3 ff ff 01 	movb   $0x1,-0xc18(%rbp)
  4040da:	e9 51 ff ff ff       	jmpq   404030 <main+0x120>
  4040df:	90                   	nop
  4040e0:	48 85 c0             	test   %rax,%rax
  4040e3:	0f 85 e7 1d 00 00    	jne    405ed0 <main+0x1fc0>
  4040e9:	4c 89 fa             	mov    %r15,%rdx
  4040ec:	eb c5                	jmp    4040b3 <main+0x1a3>
  4040ee:	66 90                	xchg   %ax,%ax
  4040f0:	31 d2                	xor    %edx,%edx
  4040f2:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  4040f9:	4c 89 ef             	mov    %r13,%rdi
  4040fc:	e8 5f f3 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  404101:	48 89 85 b0 f5 ff ff 	mov    %rax,-0xa50(%rbp)
  404108:	48 89 c7             	mov    %rax,%rdi
  40410b:	48 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%rax
  404112:	48 89 85 c0 f5 ff ff 	mov    %rax,-0xa40(%rbp)
  404119:	4c 89 f2             	mov    %r14,%rdx
  40411c:	4c 89 e6             	mov    %r12,%rsi
  40411f:	e8 2c f1 ff ff       	callq  403250 <memcpy@plt>
  404124:	48 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%rax
  40412b:	48 8b 95 b0 f5 ff ff 	mov    -0xa50(%rbp),%rdx
  404132:	e9 7c ff ff ff       	jmpq   4040b3 <main+0x1a3>
  404137:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40413e:	00 00 
  404140:	c6 85 e0 f3 ff ff 01 	movb   $0x1,-0xc20(%rbp)
  404147:	e9 e4 fe ff ff       	jmpq   404030 <main+0x120>
  40414c:	0f 1f 40 00          	nopl   0x0(%rax)
  404150:	be a7 e2 40 00       	mov    $0x40e2a7,%esi
  404155:	4c 89 ef             	mov    %r13,%rdi
  404158:	e8 63 ef ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40415d:	85 c0                	test   %eax,%eax
  40415f:	0f 85 13 01 00 00    	jne    404278 <main+0x368>
  404165:	48 8b 85 f0 f3 ff ff 	mov    -0xc10(%rbp),%rax
  40416c:	48 8b 8d 10 f4 ff ff 	mov    -0xbf0(%rbp),%rcx
  404173:	4c 8b 64 08 08       	mov    0x8(%rax,%rcx,1),%r12
  404178:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  40417f:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  404186:	4d 85 e4             	test   %r12,%r12
  404189:	0f 84 53 1d 00 00    	je     405ee2 <main+0x1fd2>
  40418f:	4c 89 e7             	mov    %r12,%rdi
  404192:	e8 a9 ef ff ff       	callq  403140 <strlen@plt>
  404197:	48 89 85 70 f5 ff ff 	mov    %rax,-0xa90(%rbp)
  40419e:	49 89 c6             	mov    %rax,%r14
  4041a1:	48 83 f8 0f          	cmp    $0xf,%rax
  4041a5:	0f 87 6b 02 00 00    	ja     404416 <main+0x506>
  4041ab:	48 83 f8 01          	cmp    $0x1,%rax
  4041af:	0f 85 41 02 00 00    	jne    4043f6 <main+0x4e6>
  4041b5:	41 0f b6 04 24       	movzbl (%r12),%eax
  4041ba:	88 85 10 f6 ff ff    	mov    %al,-0x9f0(%rbp)
  4041c0:	48 8d 85 70 f5 ff ff 	lea    -0xa90(%rbp),%rax
  4041c7:	48 89 85 10 f4 ff ff 	mov    %rax,-0xbf0(%rbp)
  4041ce:	48 8b 85 70 f5 ff ff 	mov    -0xa90(%rbp),%rax
  4041d5:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  4041dc:	48 89 85 08 f6 ff ff 	mov    %rax,-0x9f8(%rbp)
  4041e3:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4041e7:	e8 54 ee ff ff       	callq  403040 <__errno_location@plt>
  4041ec:	49 89 c4             	mov    %rax,%r12
  4041ef:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  4041f6:	8b 00                	mov    (%rax),%eax
  4041f8:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  4041ff:	00 
  404200:	48 8b b5 10 f4 ff ff 	mov    -0xbf0(%rbp),%rsi
  404207:	ba 0a 00 00 00       	mov    $0xa,%edx
  40420c:	4c 89 f7             	mov    %r14,%rdi
  40420f:	89 85 cc f3 ff ff    	mov    %eax,-0xc34(%rbp)
  404215:	e8 16 f1 ff ff       	callq  403330 <strtoull@plt>
  40421a:	48 89 85 d8 f3 ff ff 	mov    %rax,-0xc28(%rbp)
  404221:	4c 3b b5 70 f5 ff ff 	cmp    -0xa90(%rbp),%r14
  404228:	0f 84 aa 1c 00 00    	je     405ed8 <main+0x1fc8>
  40422e:	41 8b 04 24          	mov    (%r12),%eax
  404232:	83 f8 22             	cmp    $0x22,%eax
  404235:	0f 84 8b 1c 00 00    	je     405ec6 <main+0x1fb6>
  40423b:	85 c0                	test   %eax,%eax
  40423d:	75 0a                	jne    404249 <main+0x339>
  40423f:	8b 85 cc f3 ff ff    	mov    -0xc34(%rbp),%eax
  404245:	41 89 04 24          	mov    %eax,(%r12)
  404249:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  404250:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  404257:	48 39 c7             	cmp    %rax,%rdi
  40425a:	0f 84 d0 fd ff ff    	je     404030 <main+0x120>
  404260:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  404267:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40426b:	e8 40 f0 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  404270:	e9 bb fd ff ff       	jmpq   404030 <main+0x120>
  404275:	0f 1f 00             	nopl   (%rax)
  404278:	be b6 e2 40 00       	mov    $0x40e2b6,%esi
  40427d:	4c 89 ef             	mov    %r13,%rdi
  404280:	e8 3b ee ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404285:	85 c0                	test   %eax,%eax
  404287:	0f 85 89 00 00 00    	jne    404316 <main+0x406>
  40428d:	48 8b 85 f0 f3 ff ff 	mov    -0xc10(%rbp),%rax
  404294:	48 8b 8d 10 f4 ff ff 	mov    -0xbf0(%rbp),%rcx
  40429b:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  4042a2:	48 8b 74 08 08       	mov    0x8(%rax,%rcx,1),%rsi
  4042a7:	e8 74 5c 00 00       	callq  409f20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  4042ac:	e8 8f ed ff ff       	callq  403040 <__errno_location@plt>
  4042b1:	49 89 c4             	mov    %rax,%r12
  4042b4:	8b 00                	mov    (%rax),%eax
  4042b6:	4c 8b b5 00 f6 ff ff 	mov    -0xa00(%rbp),%r14
  4042bd:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  4042c4:	00 
  4042c5:	89 85 10 f4 ff ff    	mov    %eax,-0xbf0(%rbp)
  4042cb:	48 8d 85 70 f5 ff ff 	lea    -0xa90(%rbp),%rax
  4042d2:	48 89 c6             	mov    %rax,%rsi
  4042d5:	4c 89 f7             	mov    %r14,%rdi
  4042d8:	e8 53 ef ff ff       	callq  403230 <strtod@plt>
  4042dd:	c5 fb 11 85 d0 f3 ff 	vmovsd %xmm0,-0xc30(%rbp)
  4042e4:	ff 
  4042e5:	4c 3b b5 70 f5 ff ff 	cmp    -0xa90(%rbp),%r14
  4042ec:	0f 84 ca 1b 00 00    	je     405ebc <main+0x1fac>
  4042f2:	41 8b 04 24          	mov    (%r12),%eax
  4042f6:	83 f8 22             	cmp    $0x22,%eax
  4042f9:	0f 84 9c 1b 00 00    	je     405e9b <main+0x1f8b>
  4042ff:	85 c0                	test   %eax,%eax
  404301:	0f 85 42 ff ff ff    	jne    404249 <main+0x339>
  404307:	8b 85 10 f4 ff ff    	mov    -0xbf0(%rbp),%eax
  40430d:	41 89 04 24          	mov    %eax,(%r12)
  404311:	e9 33 ff ff ff       	jmpq   404249 <main+0x339>
  404316:	be c5 e2 40 00       	mov    $0x40e2c5,%esi
  40431b:	4c 89 ef             	mov    %r13,%rdi
  40431e:	e8 9d ed ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404323:	85 c0                	test   %eax,%eax
  404325:	0f 84 32 01 00 00    	je     40445d <main+0x54d>
  40432b:	be d3 e2 40 00       	mov    $0x40e2d3,%esi
  404330:	4c 89 ef             	mov    %r13,%rdi
  404333:	e8 88 ed ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404338:	85 c0                	test   %eax,%eax
  40433a:	0f 85 7c 01 00 00    	jne    4044bc <main+0x5ac>
  404340:	48 8b 85 f0 f3 ff ff 	mov    -0xc10(%rbp),%rax
  404347:	48 8b 8d 10 f4 ff ff 	mov    -0xbf0(%rbp),%rcx
  40434e:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404355:	48 8b 74 08 08       	mov    0x8(%rax,%rcx,1),%rsi
  40435a:	e8 c1 5b 00 00       	callq  409f20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40435f:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  404366:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  40436c:	31 c9                	xor    %ecx,%ecx
  40436e:	be c3 e0 40 00       	mov    $0x40e0c3,%esi
  404373:	bf 50 33 40 00       	mov    $0x403350,%edi
  404378:	e8 03 86 00 00       	callq  40c980 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  40437d:	89 85 30 f4 ff ff    	mov    %eax,-0xbd0(%rbp)
  404383:	e9 c1 fe ff ff       	jmpq   404249 <main+0x339>
  404388:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  40438c:	c5 f9 2f 85 d0 f3 ff 	vcomisd -0xc30(%rbp),%xmm0
  404393:	ff 
  404394:	73 1c                	jae    4043b2 <main+0x4a2>
  404396:	83 bd c8 f3 ff ff 00 	cmpl   $0x0,-0xc38(%rbp)
  40439d:	7e 13                	jle    4043b2 <main+0x4a2>
  40439f:	8b 85 30 f4 ff ff    	mov    -0xbd0(%rbp),%eax
  4043a5:	ff c8                	dec    %eax
  4043a7:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4043ac:	0f 86 6f 01 00 00    	jbe    404521 <main+0x611>
  4043b2:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  4043b8:	48 8b bd c0 f4 ff ff 	mov    -0xb40(%rbp),%rdi
  4043bf:	48 8d 85 d0 f4 ff ff 	lea    -0xb30(%rbp),%rax
  4043c6:	48 39 c7             	cmp    %rax,%rdi
  4043c9:	74 10                	je     4043db <main+0x4cb>
  4043cb:	48 8b 85 d0 f4 ff ff 	mov    -0xb30(%rbp),%rax
  4043d2:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4043d6:	e8 d5 ee ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4043db:	48 81 c4 40 0c 00 00 	add    $0xc40,%rsp
  4043e2:	5b                   	pop    %rbx
  4043e3:	41 5a                	pop    %r10
  4043e5:	44 89 e0             	mov    %r12d,%eax
  4043e8:	41 5c                	pop    %r12
  4043ea:	41 5d                	pop    %r13
  4043ec:	41 5e                	pop    %r14
  4043ee:	41 5f                	pop    %r15
  4043f0:	5d                   	pop    %rbp
  4043f1:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  4043f5:	c3                   	retq   
  4043f6:	48 8d 85 70 f5 ff ff 	lea    -0xa90(%rbp),%rax
  4043fd:	48 89 85 10 f4 ff ff 	mov    %rax,-0xbf0(%rbp)
  404404:	4d 85 f6             	test   %r14,%r14
  404407:	0f 84 c1 fd ff ff    	je     4041ce <main+0x2be>
  40440d:	48 8d bd 10 f6 ff ff 	lea    -0x9f0(%rbp),%rdi
  404414:	eb 37                	jmp    40444d <main+0x53d>
  404416:	48 8d 85 70 f5 ff ff 	lea    -0xa90(%rbp),%rax
  40441d:	31 d2                	xor    %edx,%edx
  40441f:	48 89 c6             	mov    %rax,%rsi
  404422:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404429:	48 89 85 10 f4 ff ff 	mov    %rax,-0xbf0(%rbp)
  404430:	e8 2b f0 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  404435:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  40443c:	48 89 c7             	mov    %rax,%rdi
  40443f:	48 8b 85 70 f5 ff ff 	mov    -0xa90(%rbp),%rax
  404446:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  40444d:	4c 89 f2             	mov    %r14,%rdx
  404450:	4c 89 e6             	mov    %r12,%rsi
  404453:	e8 f8 ed ff ff       	callq  403250 <memcpy@plt>
  404458:	e9 71 fd ff ff       	jmpq   4041ce <main+0x2be>
  40445d:	48 8b 85 f0 f3 ff ff 	mov    -0xc10(%rbp),%rax
  404464:	48 8b 8d 10 f4 ff ff 	mov    -0xbf0(%rbp),%rcx
  40446b:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  404472:	48 8b 74 08 08       	mov    0x8(%rax,%rcx,1),%rsi
  404477:	e8 a4 5a 00 00       	callq  409f20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40447c:	48 8b 95 00 f6 ff ff 	mov    -0xa00(%rbp),%rdx
  404483:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
  404489:	31 c9                	xor    %ecx,%ecx
  40448b:	be c3 e0 40 00       	mov    $0x40e0c3,%esi
  404490:	bf 50 33 40 00       	mov    $0x403350,%edi
  404495:	e8 e6 84 00 00       	callq  40c980 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>
  40449a:	48 8b bd 00 f6 ff ff 	mov    -0xa00(%rbp),%rdi
  4044a1:	89 85 c8 f3 ff ff    	mov    %eax,-0xc38(%rbp)
  4044a7:	48 8d 85 10 f6 ff ff 	lea    -0x9f0(%rbp),%rax
  4044ae:	48 39 c7             	cmp    %rax,%rdi
  4044b1:	0f 85 a9 fd ff ff    	jne    404260 <main+0x350>
  4044b7:	e9 74 fb ff ff       	jmpq   404030 <main+0x120>
  4044bc:	48 8b bd b0 f5 ff ff 	mov    -0xa50(%rbp),%rdi
  4044c3:	4c 39 ff             	cmp    %r15,%rdi
  4044c6:	0f 84 e6 fe ff ff    	je     4043b2 <main+0x4a2>
  4044cc:	48 8b 85 c0 f5 ff ff 	mov    -0xa40(%rbp),%rax
  4044d3:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4044d7:	e8 d4 ed ff ff       	callq  4032b0 <_ZdlPvm@plt>
  4044dc:	e9 d1 fe ff ff       	jmpq   4043b2 <main+0x4a2>
  4044e1:	b8 01 00 00 00       	mov    $0x1,%eax
  4044e6:	48 c1 e0 21          	shl    $0x21,%rax
  4044ea:	c5 fb 10 25 86 a0 00 	vmovsd 0xa086(%rip),%xmm4        # 40e578 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  4044f1:	00 
  4044f2:	c6 85 e8 f3 ff ff 00 	movb   $0x0,-0xc18(%rbp)
  4044f9:	c7 85 c8 f3 ff ff 05 	movl   $0x5,-0xc38(%rbp)
  404500:	00 00 00 
  404503:	48 89 85 d8 f3 ff ff 	mov    %rax,-0xc28(%rbp)
  40450a:	c6 85 e0 f3 ff ff 00 	movb   $0x0,-0xc20(%rbp)
  404511:	c5 fb 11 a5 18 f4 ff 	vmovsd %xmm4,-0xbe8(%rbp)
  404518:	ff 
  404519:	c5 fb 11 a5 d0 f3 ff 	vmovsd %xmm4,-0xc30(%rbp)
  404520:	ff 
  404521:	be 44 e1 40 00       	mov    $0x40e144,%esi
  404526:	48 8d bd c0 f4 ff ff 	lea    -0xb40(%rbp),%rdi
  40452d:	e8 8e eb ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404532:	85 c0                	test   %eax,%eax
  404534:	be 5d e1 40 00       	mov    $0x40e15d,%esi
  404539:	48 8d bd c0 f4 ff ff 	lea    -0xb40(%rbp),%rdi
  404540:	0f 94 85 22 f4 ff ff 	sete   -0xbde(%rbp)
  404547:	e8 74 eb ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40454c:	85 c0                	test   %eax,%eax
  40454e:	be 7b e1 40 00       	mov    $0x40e17b,%esi
  404553:	48 8d bd c0 f4 ff ff 	lea    -0xb40(%rbp),%rdi
  40455a:	0f 94 85 23 f4 ff ff 	sete   -0xbdd(%rbp)
  404561:	e8 5a eb ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404566:	85 c0                	test   %eax,%eax
  404568:	be d7 e2 40 00       	mov    $0x40e2d7,%esi
  40456d:	48 8d bd c0 f4 ff ff 	lea    -0xb40(%rbp),%rdi
  404574:	0f 94 85 24 f4 ff ff 	sete   -0xbdc(%rbp)
  40457b:	e8 40 eb ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404580:	85 c0                	test   %eax,%eax
  404582:	be 6d e1 40 00       	mov    $0x40e16d,%esi
  404587:	48 8d bd c0 f4 ff ff 	lea    -0xb40(%rbp),%rdi
  40458e:	0f 94 85 25 f4 ff ff 	sete   -0xbdb(%rbp)
  404595:	e8 26 eb ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40459a:	85 c0                	test   %eax,%eax
  40459c:	be bd e1 40 00       	mov    $0x40e1bd,%esi
  4045a1:	48 8d bd c0 f4 ff ff 	lea    -0xb40(%rbp),%rdi
  4045a8:	0f 94 85 26 f4 ff ff 	sete   -0xbda(%rbp)
  4045af:	e8 0c eb ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4045b4:	85 c0                	test   %eax,%eax
  4045b6:	be b8 e1 40 00       	mov    $0x40e1b8,%esi
  4045bb:	48 8d bd c0 f4 ff ff 	lea    -0xb40(%rbp),%rdi
  4045c2:	0f 94 85 27 f4 ff ff 	sete   -0xbd9(%rbp)
  4045c9:	e8 f2 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4045ce:	85 c0                	test   %eax,%eax
  4045d0:	be ea e2 40 00       	mov    $0x40e2ea,%esi
  4045d5:	48 8d bd c0 f4 ff ff 	lea    -0xb40(%rbp),%rdi
  4045dc:	0f 94 85 28 f4 ff ff 	sete   -0xbd8(%rbp)
  4045e3:	e8 d8 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4045e8:	85 c0                	test   %eax,%eax
  4045ea:	be c2 e1 40 00       	mov    $0x40e1c2,%esi
  4045ef:	48 8d bd c0 f4 ff ff 	lea    -0xb40(%rbp),%rdi
  4045f6:	0f 94 85 29 f4 ff ff 	sete   -0xbd7(%rbp)
  4045fd:	e8 be ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404602:	85 c0                	test   %eax,%eax
  404604:	be df e2 40 00       	mov    $0x40e2df,%esi
  404609:	48 8d bd c0 f4 ff ff 	lea    -0xb40(%rbp),%rdi
  404610:	0f 94 85 2a f4 ff ff 	sete   -0xbd6(%rbp)
  404617:	e8 a4 ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40461c:	85 c0                	test   %eax,%eax
  40461e:	be e4 e2 40 00       	mov    $0x40e2e4,%esi
  404623:	48 8d bd c0 f4 ff ff 	lea    -0xb40(%rbp),%rdi
  40462a:	0f 94 85 2b f4 ff ff 	sete   -0xbd5(%rbp)
  404631:	e8 8a ea ff ff       	callq  4030c0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  404636:	85 c0                	test   %eax,%eax
  404638:	0f b6 85 22 f4 ff ff 	movzbl -0xbde(%rbp),%eax
  40463f:	0f 94 c2             	sete   %dl
  404642:	88 95 2c f4 ff ff    	mov    %dl,-0xbd4(%rbp)
  404648:	84 c0                	test   %al,%al
  40464a:	75 59                	jne    4046a5 <main+0x795>
  40464c:	80 bd 23 f4 ff ff 00 	cmpb   $0x0,-0xbdd(%rbp)
  404653:	75 50                	jne    4046a5 <main+0x795>
  404655:	80 bd 24 f4 ff ff 00 	cmpb   $0x0,-0xbdc(%rbp)
  40465c:	75 47                	jne    4046a5 <main+0x795>
  40465e:	80 bd 25 f4 ff ff 00 	cmpb   $0x0,-0xbdb(%rbp)
  404665:	75 3e                	jne    4046a5 <main+0x795>
  404667:	80 bd 26 f4 ff ff 00 	cmpb   $0x0,-0xbda(%rbp)
  40466e:	75 35                	jne    4046a5 <main+0x795>
  404670:	80 bd 27 f4 ff ff 00 	cmpb   $0x0,-0xbd9(%rbp)
  404677:	75 2c                	jne    4046a5 <main+0x795>
  404679:	80 bd 28 f4 ff ff 00 	cmpb   $0x0,-0xbd8(%rbp)
  404680:	75 23                	jne    4046a5 <main+0x795>
  404682:	80 bd 29 f4 ff ff 00 	cmpb   $0x0,-0xbd7(%rbp)
  404689:	75 1a                	jne    4046a5 <main+0x795>
  40468b:	80 bd 2a f4 ff ff 00 	cmpb   $0x0,-0xbd6(%rbp)
  404692:	75 11                	jne    4046a5 <main+0x795>
  404694:	80 bd 2b f4 ff ff 00 	cmpb   $0x0,-0xbd5(%rbp)
  40469b:	75 08                	jne    4046a5 <main+0x795>
  40469d:	84 d2                	test   %dl,%dl
  40469f:	0f 84 0d fd ff ff    	je     4043b2 <main+0x4a2>
  4046a5:	0a 85 23 f4 ff ff    	or     -0xbdd(%rbp),%al
  4046ab:	88 85 cc f3 ff ff    	mov    %al,-0xc34(%rbp)
  4046b1:	31 c9                	xor    %ecx,%ecx
  4046b3:	48 8d 85 34 f4 ff ff 	lea    -0xbcc(%rbp),%rax
  4046ba:	31 d2                	xor    %edx,%edx
  4046bc:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  4046c3:	bf 20 62 40 00       	mov    $0x406220,%edi
  4046c8:	c7 85 34 f4 ff ff 00 	movl   $0x0,-0xbcc(%rbp)
  4046cf:	00 00 00 
  4046d2:	c6 85 2d f4 ff ff 01 	movb   $0x1,-0xbd3(%rbp)
  4046d9:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  4046e0:	e8 bb ec ff ff       	callq  4033a0 <GOMP_parallel@plt>
  4046e5:	4c 63 bd 34 f4 ff ff 	movslq -0xbcc(%rbp),%r15
  4046ec:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4046f0:	48 c7 85 90 f5 ff ff 	movq   $0x0,-0xa70(%rbp)
  4046f7:	00 00 00 00 
  4046fb:	48 c7 85 98 f5 ff ff 	movq   $0x0,-0xa68(%rbp)
  404702:	00 00 00 00 
  404706:	c6 85 a0 f5 ff ff 00 	movb   $0x0,-0xa60(%rbp)
  40470d:	c5 fd 7f 85 70 f5 ff 	vmovdqa %ymm0,-0xa90(%rbp)
  404714:	ff 
  404715:	4d 89 fc             	mov    %r15,%r12
  404718:	4d 85 ff             	test   %r15,%r15
  40471b:	0f 85 b7 16 00 00    	jne    405dd8 <main+0x1ec8>
  404721:	c5 f8 77             	vzeroupper 
  404724:	4c 8d ad b0 f5 ff ff 	lea    -0xa50(%rbp),%r13
  40472b:	4c 89 ea             	mov    %r13,%rdx
  40472e:	4c 89 fe             	mov    %r15,%rsi
  404731:	48 8d bd 88 f5 ff ff 	lea    -0xa78(%rbp),%rdi
  404738:	c7 85 b0 f5 ff ff ff 	movl   $0xffffffff,-0xa50(%rbp)
  40473f:	ff ff ff 
  404742:	e8 e9 82 00 00       	callq  40ca30 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi>
  404747:	48 8d 85 70 f5 ff ff 	lea    -0xa90(%rbp),%rax
  40474e:	44 89 e2             	mov    %r12d,%edx
  404751:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  404758:	31 c9                	xor    %ecx,%ecx
  40475a:	bf d0 9f 40 00       	mov    $0x409fd0,%edi
  40475f:	48 89 85 10 f4 ff ff 	mov    %rax,-0xbf0(%rbp)
  404766:	48 89 85 00 f6 ff ff 	mov    %rax,-0xa00(%rbp)
  40476d:	44 89 a5 08 f6 ff ff 	mov    %r12d,-0x9f8(%rbp)
  404774:	e8 27 ec ff ff       	callq  4033a0 <GOMP_parallel@plt>
  404779:	48 8b 95 70 f5 ff ff 	mov    -0xa90(%rbp),%rdx
  404780:	48 8b b5 78 f5 ff ff 	mov    -0xa88(%rbp),%rsi
  404787:	c6 85 a0 f5 ff ff 01 	movb   $0x1,-0xa60(%rbp)
  40478e:	48 39 f2             	cmp    %rsi,%rdx
  404791:	74 25                	je     4047b8 <main+0x8a8>
  404793:	b9 01 00 00 00       	mov    $0x1,%ecx
  404798:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40479f:	00 
  4047a0:	8b 02                	mov    (%rdx),%eax
  4047a2:	48 83 c2 04          	add    $0x4,%rdx
  4047a6:	f7 d0                	not    %eax
  4047a8:	c1 e8 1f             	shr    $0x1f,%eax
  4047ab:	21 c1                	and    %eax,%ecx
  4047ad:	48 39 d6             	cmp    %rdx,%rsi
  4047b0:	75 ee                	jne    4047a0 <main+0x890>
  4047b2:	88 8d a0 f5 ff ff    	mov    %cl,-0xa60(%rbp)
  4047b8:	80 bd cc f3 ff ff 00 	cmpb   $0x0,-0xc34(%rbp)
  4047bf:	48 c7 85 38 f4 ff ff 	movq   $0x0,-0xbc8(%rbp)
  4047c6:	00 00 00 00 
  4047ca:	48 c7 85 40 f4 ff ff 	movq   $0x0,-0xbc0(%rbp)
  4047d1:	00 00 00 00 
  4047d5:	48 c7 85 48 f4 ff ff 	movq   $0x0,-0xbb8(%rbp)
  4047dc:	00 00 00 00 
  4047e0:	48 c7 85 50 f4 ff ff 	movq   $0x0,-0xbb0(%rbp)
  4047e7:	00 00 00 00 
  4047eb:	48 c7 85 58 f4 ff ff 	movq   $0x0,-0xba8(%rbp)
  4047f2:	00 00 00 00 
  4047f6:	48 c7 85 80 f4 ff ff 	movq   $0x0,-0xb80(%rbp)
  4047fd:	00 00 00 00 
  404801:	48 c7 85 88 f4 ff ff 	movq   $0x0,-0xb78(%rbp)
  404808:	00 00 00 00 
  40480c:	48 c7 85 90 f4 ff ff 	movq   $0x0,-0xb70(%rbp)
  404813:	00 00 00 00 
  404817:	48 c7 85 a0 f4 ff ff 	movq   $0x0,-0xb60(%rbp)
  40481e:	00 00 00 00 
  404822:	48 c7 85 a8 f4 ff ff 	movq   $0x0,-0xb58(%rbp)
  404829:	00 00 00 00 
  40482d:	48 c7 85 b0 f4 ff ff 	movq   $0x0,-0xb50(%rbp)
  404834:	00 00 00 00 
  404838:	48 c7 85 60 f4 ff ff 	movq   $0x0,-0xba0(%rbp)
  40483f:	00 00 00 00 
  404843:	0f 84 bf 03 00 00    	je     404c08 <main+0xcf8>
  404849:	48 8b 85 d8 f3 ff ff 	mov    -0xc28(%rbp),%rax
  404850:	31 d2                	xor    %edx,%edx
  404852:	b9 18 00 00 00       	mov    $0x18,%ecx
  404857:	48 f7 f1             	div    %rcx
  40485a:	48 83 e0 c0          	and    $0xffffffffffffffc0,%rax
  40485e:	48 89 85 38 f4 ff ff 	mov    %rax,-0xbc8(%rbp)
  404865:	0f 84 cb 03 00 00    	je     404c36 <main+0xd26>
  40486b:	ba 03 00 00 00       	mov    $0x3,%edx
  404870:	48 0f af d0          	imul   %rax,%rdx
  404874:	44 0f b6 a5 e0 f3 ff 	movzbl -0xc20(%rbp),%r12d
  40487b:	ff 
  40487c:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  404883:	00 
  404884:	48 8d 1c d5 00 00 00 	lea    0x0(,%rdx,8),%rbx
  40488b:	00 
  40488c:	44 89 e6             	mov    %r12d,%esi
  40488f:	48 89 9d d8 f3 ff ff 	mov    %rbx,-0xc28(%rbp)
  404896:	e8 e5 58 00 00       	callq  40a180 <_Z11alloc_bytesmb>
  40489b:	48 89 85 40 f4 ff ff 	mov    %rax,-0xbc0(%rbp)
  4048a2:	48 8b 85 38 f4 ff ff 	mov    -0xbc8(%rbp),%rax
  4048a9:	44 89 e6             	mov    %r12d,%esi
  4048ac:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  4048b3:	00 
  4048b4:	e8 c7 58 00 00       	callq  40a180 <_Z11alloc_bytesmb>
  4048b9:	80 bd cc f3 ff ff 00 	cmpb   $0x0,-0xc34(%rbp)
  4048c0:	48 89 85 48 f4 ff ff 	mov    %rax,-0xbb8(%rbp)
  4048c7:	74 1e                	je     4048e7 <main+0x9d7>
  4048c9:	48 8b 85 38 f4 ff ff 	mov    -0xbc8(%rbp),%rax
  4048d0:	44 89 e6             	mov    %r12d,%esi
  4048d3:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  4048da:	00 
  4048db:	e8 a0 58 00 00       	callq  40a180 <_Z11alloc_bytesmb>
  4048e0:	48 89 85 50 f4 ff ff 	mov    %rax,-0xbb0(%rbp)
  4048e7:	48 8d 85 38 f4 ff ff 	lea    -0xbc8(%rbp),%rax
  4048ee:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  4048f3:	48 8d 85 40 f4 ff ff 	lea    -0xbc0(%rbp),%rax
  4048fa:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  404900:	48 8d 85 48 f4 ff ff 	lea    -0xbb8(%rbp),%rax
  404907:	c5 f9 7f 85 00 f6 ff 	vmovdqa %xmm0,-0xa00(%rbp)
  40490e:	ff 
  40490f:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  404914:	48 8d 85 50 f4 ff ff 	lea    -0xbb0(%rbp),%rax
  40491b:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  404921:	31 c9                	xor    %ecx,%ecx
  404923:	31 d2                	xor    %edx,%edx
  404925:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  40492c:	bf b0 60 40 00       	mov    $0x4060b0,%edi
  404931:	c5 f9 7f 85 10 f6 ff 	vmovdqa %xmm0,-0x9f0(%rbp)
  404938:	ff 
  404939:	e8 62 ea ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40493e:	48 8d 85 80 f4 ff ff 	lea    -0xb80(%rbp),%rax
  404945:	48 8d 9d a0 f4 ff ff 	lea    -0xb60(%rbp),%rbx
  40494c:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
  404951:	c4 e3 d1 22 f3 01    	vpinsrq $0x1,%rbx,%xmm5,%xmm6
  404957:	80 bd 26 f4 ff ff 00 	cmpb   $0x0,-0xbda(%rbp)
  40495e:	c5 f9 7f b5 00 f4 ff 	vmovdqa %xmm6,-0xc00(%rbp)
  404965:	ff 
  404966:	0f 84 ca 00 00 00    	je     404a36 <main+0xb26>
  40496c:	80 bd e8 f3 ff ff 00 	cmpb   $0x0,-0xc18(%rbp)
  404973:	0f 85 98 0c 00 00    	jne    405611 <main+0x1701>
  404979:	48 63 8d 34 f4 ff ff 	movslq -0xbcc(%rbp),%rcx
  404980:	48 8b 85 d8 f3 ff ff 	mov    -0xc28(%rbp),%rax
  404987:	31 d2                	xor    %edx,%edx
  404989:	48 f7 f1             	div    %rcx
  40498c:	48 25 00 fe ff ff    	and    $0xfffffffffffffe00,%rax
  404992:	48 89 85 60 f4 ff ff 	mov    %rax,-0xba0(%rbp)
  404999:	48 3d ff 01 00 00    	cmp    $0x1ff,%rax
  40499f:	0f 86 ab 14 00 00    	jbe    405e50 <main+0x1f40>
  4049a5:	48 63 b5 34 f4 ff ff 	movslq -0xbcc(%rbp),%rsi
  4049ac:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  4049b3:	48 0f af c6          	imul   %rsi,%rax
  4049b7:	48 8d bd 80 f4 ff ff 	lea    -0xb80(%rbp),%rdi
  4049be:	48 c7 85 00 f6 ff ff 	movq   $0x0,-0xa00(%rbp)
  4049c5:	00 00 00 00 
  4049c9:	48 89 85 d8 f3 ff ff 	mov    %rax,-0xc28(%rbp)
  4049d0:	e8 4b 84 00 00       	callq  40ce20 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_>
  4049d5:	48 63 b5 34 f4 ff ff 	movslq -0xbcc(%rbp),%rsi
  4049dc:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  4049e3:	48 89 df             	mov    %rbx,%rdi
  4049e6:	48 c7 85 00 f6 ff ff 	movq   $0x0,-0xa00(%rbp)
  4049ed:	00 00 00 00 
  4049f1:	e8 2a 87 00 00       	callq  40d120 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd>
  4049f6:	0f b6 85 e0 f3 ff ff 	movzbl -0xc20(%rbp),%eax
  4049fd:	c5 f9 6f ad 00 f4 ff 	vmovdqa -0xc00(%rbp),%xmm5
  404a04:	ff 
  404a05:	88 85 18 f6 ff ff    	mov    %al,-0x9e8(%rbp)
  404a0b:	31 c9                	xor    %ecx,%ecx
  404a0d:	48 8d 85 60 f4 ff ff 	lea    -0xba0(%rbp),%rax
  404a14:	31 d2                	xor    %edx,%edx
  404a16:	48 8d b5 00 f6 ff ff 	lea    -0xa00(%rbp),%rsi
  404a1d:	bf 10 a2 40 00       	mov    $0x40a210,%edi
  404a22:	48 89 85 10 f6 ff ff 	mov    %rax,-0x9f0(%rbp)
  404a29:	c5 f9 7f ad 00 f6 ff 	vmovdqa %xmm5,-0xa00(%rbp)
  404a30:	ff 
  404a31:	e8 6a e9 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  404a36:	80 bd 25 f4 ff ff 00 	cmpb   $0x0,-0xbdb(%rbp)
  404a3d:	0f 84 25 02 00 00    	je     404c68 <main+0xd58>
  404a43:	83 bd 34 f4 ff ff 01 	cmpl   $0x1,-0xbcc(%rbp)
  404a4a:	0f 85 94 f3 ff ff    	jne    403de4 <main.cold+0xe8>
  404a50:	48 8b 85 d8 f3 ff ff 	mov    -0xc28(%rbp),%rax
  404a57:	48 c1 e8 06          	shr    $0x6,%rax
  404a5b:	48 89 85 38 f4 ff ff 	mov    %rax,-0xbc8(%rbp)
  404a62:	48 83 f8 01          	cmp    $0x1,%rax
  404a66:	0f 86 e4 13 00 00    	jbe    405e50 <main+0x1f40>
  404a6c:	48 c1 e0 06          	shl    $0x6,%rax
  404a70:	0f b6 b5 e0 f3 ff ff 	movzbl -0xc20(%rbp),%esi
  404a77:	48 89 c7             	mov    %rax,%rdi
  404a7a:	48 89 85 d8 f3 ff ff 	mov    %rax,-0xc28(%rbp)
  404a81:	e8 fa 56 00 00       	callq  40a180 <_Z11alloc_bytesmb>
  404a86:	4c 8b a5 38 f4 ff ff 	mov    -0xbc8(%rbp),%r12
  404a8d:	48 89 85 c0 f3 ff ff 	mov    %rax,-0xc40(%rbp)
  404a94:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
  404a9b:	ff ff 0f 
  404a9e:	49 39 c4             	cmp    %rax,%r12
  404aa1:	0f 87 ea 13 00 00    	ja     405e91 <main+0x1f81>
  404aa7:	4e 8d 34 e5 00 00 00 	lea    0x0(,%r12,8),%r14
  404aae:	00 
  404aaf:	4d 85 e4             	test   %r12,%r12
  404ab2:	0f 84 c4 13 00 00    	je     405e7c <main+0x1f6c>
  404ab8:	4c 89 f7             	mov    %r14,%rdi
  404abb:	e8 e0 e7 ff ff       	callq  4032a0 <_Znwm@plt>
  404ac0:	49 89 c7             	mov    %rax,%r15
  404ac3:	49 ff cc             	dec    %r12
  404ac6:	4a 8d 04 30          	lea    (%rax,%r14,1),%rax
  404aca:	48 89 85 00 f4 ff ff 	mov    %rax,-0xc00(%rbp)
  404ad1:	49 c7 07 00 00 00 00 	movq   $0x0,(%r15)
  404ad8:	49 8d 7f 08          	lea    0x8(%r15),%rdi
  404adc:	74 12                	je     404af0 <main+0xbe0>
  404ade:	49 8d 56 f8          	lea    -0x8(%r14),%rdx
  404ae2:	31 f6                	xor    %esi,%esi
  404ae4:	e8 97 e6 ff ff       	callq  403180 <memset@plt>
  404ae9:	48 8b bd 00 f4 ff ff 	mov    -0xc00(%rbp),%rdi
  404af0:	48 89 fa             	mov    %rdi,%rdx
  404af3:	4c 29 fa             	sub    %r15,%rdx
  404af6:	48 c1 ea 03          	shr    $0x3,%rdx
  404afa:	31 c0                	xor    %eax,%eax
  404afc:	eb 07                	jmp    404b05 <main+0xbf5>
  404afe:	49 89 04 c7          	mov    %rax,(%r15,%rax,8)
  404b02:	48 ff c0             	inc    %rax
  404b05:	48 39 c2             	cmp    %rax,%rdx
  404b08:	75 f4                	jne    404afe <main+0xbee>
  404b0a:	48 c7 85 00 f6 ff ff 	movq   $0x7,-0xa00(%rbp)
  404b11:	07 00 00 00 
  404b15:	b8 07 00 00 00       	mov    $0x7,%eax
  404b1a:	b9 01 00 00 00       	mov    $0x1,%ecx
  404b1f:	48 be 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rsi
  404b26:	f4 51 58 
  404b29:	48 89 c2             	mov    %rax,%rdx
  404b2c:	0f 1f 40 00          	nopl   0x0(%rax)
  404b30:	48 89 d0             	mov    %rdx,%rax
  404b33:	48 c1 e8 3e          	shr    $0x3e,%rax
  404b37:	48 31 d0             	xor    %rdx,%rax
  404b3a:	48 0f af c6          	imul   %rsi,%rax
  404b3e:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  404b42:	48 89 94 cd 00 f6 ff 	mov    %rdx,-0xa00(%rbp,%rcx,8)
  404b49:	ff 
  404b4a:	48 ff c1             	inc    %rcx
  404b4d:	48 81 f9 38 01 00 00 	cmp    $0x138,%rcx
  404b54:	75 da                	jne    404b30 <main+0xc20>
  404b56:	48 89 fe             	mov    %rdi,%rsi
  404b59:	48 8d 95 00 f6 ff ff 	lea    -0xa00(%rbp),%rdx
  404b60:	4c 89 ff             	mov    %r15,%rdi
  404b63:	48 c7 45 c0 38 01 00 	movq   $0x138,-0x40(%rbp)
  404b6a:	00 
  404b6b:	e8 60 8a 00 00       	callq  40d5d0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>
  404b70:	48 8b 8d 38 f4 ff ff 	mov    -0xbc8(%rbp),%rcx
  404b77:	31 f6                	xor    %esi,%esi
  404b79:	eb 2d                	jmp    404ba8 <main+0xc98>
  404b7b:	48 ff c6             	inc    %rsi
  404b7e:	b8 06 00 00 00       	mov    $0x6,%eax
  404b83:	c4 c2 f9 f7 7c f7 f8 	shlx   %rax,-0x8(%r15,%rsi,8),%rdi
  404b8a:	31 d2                	xor    %edx,%edx
  404b8c:	48 89 f0             	mov    %rsi,%rax
  404b8f:	48 f7 f1             	div    %rcx
  404b92:	49 8b 04 d7          	mov    (%r15,%rdx,8),%rax
  404b96:	48 8b 95 c0 f3 ff ff 	mov    -0xc40(%rbp),%rdx
  404b9d:	48 c1 e0 06          	shl    $0x6,%rax
  404ba1:	48 01 d0             	add    %rdx,%rax
  404ba4:	48 89 04 3a          	mov    %rax,(%rdx,%rdi,1)
  404ba8:	48 39 f1             	cmp    %rsi,%rcx
  404bab:	75 ce                	jne    404b7b <main+0xc6b>
  404bad:	48 8b 85 c0 f3 ff ff 	mov    -0xc40(%rbp),%rax
  404bb4:	48 89 85 58 f4 ff ff 	mov    %rax,-0xba8(%rbp)
  404bbb:	4d 85 ff             	test   %r15,%r15
  404bbe:	74 19                	je     404bd9 <main+0xcc9>
  404bc0:	48 8b b5 00 f4 ff ff 	mov    -0xc00(%rbp),%rsi
  404bc7:	4c 89 ff             	mov    %r15,%rdi
  404bca:	4c 29 fe             	sub    %r15,%rsi
  404bcd:	e8 de e6 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  404bd2:	48 8b 8d 38 f4 ff ff 	mov    -0xbc8(%rbp),%rcx
  404bd9:	31 c0                	xor    %eax,%eax
  404bdb:	eb 0d                	jmp    404bea <main+0xcda>
  404bdd:	48 8b 12             	mov    (%rdx),%rdx
  404be0:	48 ff c0             	inc    %rax
  404be3:	48 89 95 58 f4 ff ff 	mov    %rdx,-0xba8(%rbp)
  404bea:	48 8b 95 58 f4 ff ff 	mov    -0xba8(%rbp),%rdx
  404bf1:	48 39 c1             	cmp    %rax,%rcx
  404bf4:	75 e7                	jne    404bdd <main+0xccd>
  404bf6:	48 39 95 c0 f3 ff ff 	cmp    %rdx,-0xc40(%rbp)
  404bfd:	0f 94 c0             	sete   %al
  404c00:	20 85 2d f4 ff ff    	and    %al,-0xbd3(%rbp)
  404c06:	eb 6b                	jmp    404c73 <main+0xd63>
  404c08:	80 bd 24 f4 ff ff 00 	cmpb   $0x0,-0xbdc(%rbp)
  404c0f:	0f 84 29 fd ff ff    	je     40493e <main+0xa2e>
  404c15:	48 8b 85 d8 f3 ff ff 	mov    -0xc28(%rbp),%rax
  404c1c:	ba 02 00 00 00       	mov    $0x2,%edx
  404c21:	48 c1 e8 04          	shr    $0x4,%rax
  404c25:	48 83 e0 c0          	and    $0xffffffffffffffc0,%rax
  404c29:	48 89 85 38 f4 ff ff 	mov    %rax,-0xbc8(%rbp)
  404c30:	0f 85 3a fc ff ff    	jne    404870 <main+0x960>
  404c36:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  404c3c:	48 8b bd 80 f4 ff ff 	mov    -0xb80(%rbp),%rdi
  404c43:	48 85 ff             	test   %rdi,%rdi
  404c46:	74 0f                	je     404c57 <main+0xd47>
  404c48:	48 8b b5 90 f4 ff ff 	mov    -0xb70(%rbp),%rsi
  404c4f:	48 29 fe             	sub    %rdi,%rsi
  404c52:	e8 59 e6 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  404c57:	48 8b bd 10 f4 ff ff 	mov    -0xbf0(%rbp),%rdi
  404c5e:	e8 8d 7c 00 00       	callq  40c8f0 <_ZN8CountersD1Ev>
  404c63:	e9 50 f7 ff ff       	jmpq   4043b8 <main+0x4a8>
  404c68:	48 c7 85 c0 f3 ff ff 	movq   $0x0,-0xc40(%rbp)
  404c6f:	00 00 00 00 
  404c73:	48 8d 85 25 f4 ff ff 	lea    -0xbdb(%rbp),%rax
  404c7a:	62 e1 fd 08 6e c0    	vmovq  %rax,%xmm16
  404c80:	48 8d 85 58 f4 ff ff 	lea    -0xba8(%rbp),%rax
  404c87:	62 e3 fd 00 22 c0 01 	vpinsrq $0x1,%rax,%xmm16,%xmm16
  404c8e:	48 8d 85 22 f4 ff ff 	lea    -0xbde(%rbp),%rax
  404c95:	c4 61 f9 6e f8       	vmovq  %rax,%xmm15
  404c9a:	48 8d 85 38 f4 ff ff 	lea    -0xbc8(%rbp),%rax
  404ca1:	c4 63 81 22 f8 01    	vpinsrq $0x1,%rax,%xmm15,%xmm15
  404ca7:	48 8d 85 40 f4 ff ff 	lea    -0xbc0(%rbp),%rax
  404cae:	c4 61 f9 6e f0       	vmovq  %rax,%xmm14
  404cb3:	48 8d 85 48 f4 ff ff 	lea    -0xbb8(%rbp),%rax
  404cba:	c4 63 89 22 f0 01    	vpinsrq $0x1,%rax,%xmm14,%xmm14
  404cc0:	48 8d 85 50 f4 ff ff 	lea    -0xbb0(%rbp),%rax
  404cc7:	c4 61 f9 6e e8       	vmovq  %rax,%xmm13
  404ccc:	48 8d 85 23 f4 ff ff 	lea    -0xbdd(%rbp),%rax
  404cd3:	c4 63 91 22 e8 01    	vpinsrq $0x1,%rax,%xmm13,%xmm13
  404cd9:	48 8d 85 26 f4 ff ff 	lea    -0xbda(%rbp),%rax
  404ce0:	c4 61 f9 6e e0       	vmovq  %rax,%xmm12
  404ce5:	48 8d 85 80 f4 ff ff 	lea    -0xb80(%rbp),%rax
  404cec:	c4 63 99 22 e0 01    	vpinsrq $0x1,%rax,%xmm12,%xmm12
  404cf2:	48 8d 85 60 f4 ff ff 	lea    -0xba0(%rbp),%rax
  404cf9:	c4 61 f9 6e d8       	vmovq  %rax,%xmm11
  404cfe:	48 8d 85 70 f4 ff ff 	lea    -0xb90(%rbp),%rax
  404d05:	c4 61 f9 6e d0       	vmovq  %rax,%xmm10
  404d0a:	48 8d 85 2d f4 ff ff 	lea    -0xbd3(%rbp),%rax
  404d11:	c4 63 a9 22 d0 01    	vpinsrq $0x1,%rax,%xmm10,%xmm10
  404d17:	48 8d 85 78 f4 ff ff 	lea    -0xb88(%rbp),%rax
  404d1e:	c4 61 f9 6e c8       	vmovq  %rax,%xmm9
  404d23:	48 8d 85 24 f4 ff ff 	lea    -0xbdc(%rbp),%rax
  404d2a:	c4 63 b1 22 c8 01    	vpinsrq $0x1,%rax,%xmm9,%xmm9
  404d30:	48 8d 85 30 f4 ff ff 	lea    -0xbd0(%rbp),%rax
  404d37:	c4 61 f9 6e c0       	vmovq  %rax,%xmm8
  404d3c:	48 8d 85 29 f4 ff ff 	lea    -0xbd7(%rbp),%rax
  404d43:	c4 63 b9 22 c0 01    	vpinsrq $0x1,%rax,%xmm8,%xmm8
  404d49:	48 8d 85 2a f4 ff ff 	lea    -0xbd6(%rbp),%rax
  404d50:	c4 e1 f9 6e f8       	vmovq  %rax,%xmm7
  404d55:	48 8d 85 2b f4 ff ff 	lea    -0xbd5(%rbp),%rax
  404d5c:	c4 e3 c1 22 f8 01    	vpinsrq $0x1,%rax,%xmm7,%xmm7
  404d62:	48 8d 85 2c f4 ff ff 	lea    -0xbd4(%rbp),%rax
  404d69:	c4 e1 f9 6e f0       	vmovq  %rax,%xmm6
  404d6e:	48 8d 85 27 f4 ff ff 	lea    -0xbd9(%rbp),%rax
  404d75:	c4 e3 c9 22 f0 01    	vpinsrq $0x1,%rax,%xmm6,%xmm6
  404d7b:	0f b6 8d 27 f4 ff ff 	movzbl -0xbd9(%rbp),%ecx
  404d82:	48 8d 85 28 f4 ff ff 	lea    -0xbd8(%rbp),%rax
  404d89:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
  404d8e:	48 8d 85 68 f4 ff ff 	lea    -0xb98(%rbp),%rax
  404d95:	48 c7 85 68 f4 ff ff 	movq   $0x0,-0xb98(%rbp)
  404d9c:	00 00 00 00 
  404da0:	c4 63 a1 22 db 01    	vpinsrq $0x1,%rbx,%xmm11,%xmm11
  404da6:	c4 e3 d1 22 e8 01    	vpinsrq $0x1,%rax,%xmm5,%xmm5
  404dac:	84 c9                	test   %cl,%cl
  404dae:	75 0d                	jne    404dbd <main+0xead>
  404db0:	80 bd 28 f4 ff ff 00 	cmpb   $0x0,-0xbd8(%rbp)
  404db7:	0f 84 87 00 00 00    	je     404e44 <main+0xf34>
  404dbd:	c5 fb 10 1d d3 97 00 	vmovsd 0x97d3(%rip),%xmm3        # 40e598 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  404dc4:	00 
  404dc5:	62 e1 ff 08 10 15 f9 	vmovsd 0x97f9(%rip),%xmm18        # 40e5c8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x128>
  404dcc:	97 00 00 
  404dcf:	c5 fa 10 15 f9 98 00 	vmovss 0x98f9(%rip),%xmm2        # 40e6d0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x230>
  404dd6:	00 
  404dd7:	c5 fa 10 0d f5 98 00 	vmovss 0x98f5(%rip),%xmm1        # 40e6d4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x234>
  404dde:	00 
  404ddf:	62 e1 7e 08 10 0d f3 	vmovss 0x98f3(%rip),%xmm17        # 40e6dc <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x23c>
  404de6:	98 00 00 
  404de9:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  404ded:	31 d2                	xor    %edx,%edx
  404def:	ff c2                	inc    %edx
  404df1:	84 c9                	test   %cl,%cl
  404df3:	0f 84 34 0d 00 00    	je     405b2d <main+0x1c1d>
  404df9:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  404dfd:	c5 fa 2a c2          	vcvtsi2ss %edx,%xmm0,%xmm0
  404e01:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  404e06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404e0d:	00 00 00 
  404e10:	c4 e2 69 b9 c1       	vfmadd231ss %xmm1,%xmm2,%xmm0
  404e15:	ff c8                	dec    %eax
  404e17:	75 f7                	jne    404e10 <main+0xf00>
  404e19:	62 b1 7e 08 59 c1    	vmulss %xmm17,%xmm0,%xmm0
  404e1f:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  404e23:	c5 db 58 e0          	vaddsd %xmm0,%xmm4,%xmm4
  404e27:	83 fa 0c             	cmp    $0xc,%edx
  404e2a:	75 c3                	jne    404def <main+0xedf>
  404e2c:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  404e30:	c5 e3 2a 85 34 f4 ff 	vcvtsi2sdl -0xbcc(%rbp),%xmm3,%xmm0
  404e37:	ff 
  404e38:	c5 fb 59 c4          	vmulsd %xmm4,%xmm0,%xmm0
  404e3c:	c5 fb 11 85 68 f4 ff 	vmovsd %xmm0,-0xb98(%rbp)
  404e43:	ff 
  404e44:	48 8d 85 34 f4 ff ff 	lea    -0xbcc(%rbp),%rax
  404e4b:	80 bd 25 f4 ff ff 00 	cmpb   $0x0,-0xbdb(%rbp)
  404e52:	48 c7 85 70 f4 ff ff 	movq   $0x0,-0xb90(%rbp)
  404e59:	00 00 00 00 
  404e5d:	48 c7 85 78 f4 ff ff 	movq   $0x0,-0xb88(%rbp)
  404e64:	00 00 00 00 
  404e68:	48 89 85 c0 f6 ff ff 	mov    %rax,-0x940(%rbp)
  404e6f:	62 e1 fd 08 7f 85 00 	vmovdqa64 %xmm16,-0xa00(%rbp)
  404e76:	f6 ff ff 
  404e79:	c5 79 7f bd 10 f6 ff 	vmovdqa %xmm15,-0x9f0(%rbp)
  404e80:	ff 
  404e81:	c5 79 7f b5 20 f6 ff 	vmovdqa %xmm14,-0x9e0(%rbp)
  404e88:	ff 
  404e89:	c5 79 7f ad 30 f6 ff 	vmovdqa %xmm13,-0x9d0(%rbp)
  404e90:	ff 
  404e91:	c5 79 7f a5 40 f6 ff 	vmovdqa %xmm12,-0x9c0(%rbp)
  404e98:	ff 
  404e99:	c5 79 7f 9d 50 f6 ff 	vmovdqa %xmm11,-0x9b0(%rbp)
  404ea0:	ff 
  404ea1:	c5 79 7f 95 60 f6 ff 	vmovdqa %xmm10,-0x9a0(%rbp)
  404ea8:	ff 
  404ea9:	c5 79 7f 8d 70 f6 ff 	vmovdqa %xmm9,-0x990(%rbp)
  404eb0:	ff 
  404eb1:	c5 79 7f 85 80 f6 ff 	vmovdqa %xmm8,-0x980(%rbp)
  404eb8:	ff 
  404eb9:	c5 f9 7f bd 90 f6 ff 	vmovdqa %xmm7,-0x970(%rbp)
  404ec0:	ff 
  404ec1:	c5 f9 7f b5 a0 f6 ff 	vmovdqa %xmm6,-0x960(%rbp)
  404ec8:	ff 
  404ec9:	c5 f9 7f ad b0 f6 ff 	vmovdqa %xmm5,-0x950(%rbp)
  404ed0:	ff 
  404ed1:	0f 84 84 0f 00 00    	je     405e5b <main+0x1f4b>
  404ed7:	80 bd 22 f4 ff ff 00 	cmpb   $0x0,-0xbde(%rbp)
  404ede:	be 3d e1 40 00       	mov    $0x40e13d,%esi
  404ee3:	75 77                	jne    404f5c <main+0x104c>
  404ee5:	80 bd 23 f4 ff ff 00 	cmpb   $0x0,-0xbdd(%rbp)
  404eec:	be 56 e1 40 00       	mov    $0x40e156,%esi
  404ef1:	75 69                	jne    404f5c <main+0x104c>
  404ef3:	80 bd 26 f4 ff ff 00 	cmpb   $0x0,-0xbda(%rbp)
  404efa:	be 66 e1 40 00       	mov    $0x40e166,%esi
  404eff:	75 5b                	jne    404f5c <main+0x104c>
  404f01:	80 bd 24 f4 ff ff 00 	cmpb   $0x0,-0xbdc(%rbp)
  404f08:	be 72 e1 40 00       	mov    $0x40e172,%esi
  404f0d:	75 4d                	jne    404f5c <main+0x104c>
  404f0f:	80 bd 25 f4 ff ff 00 	cmpb   $0x0,-0xbdb(%rbp)
  404f16:	be 81 e1 40 00       	mov    $0x40e181,%esi
  404f1b:	75 3f                	jne    404f5c <main+0x104c>
  404f1d:	80 bd 29 f4 ff ff 00 	cmpb   $0x0,-0xbd7(%rbp)
  404f24:	be 94 e1 40 00       	mov    $0x40e194,%esi
  404f29:	75 31                	jne    404f5c <main+0x104c>
  404f2b:	80 bd 2a f4 ff ff 00 	cmpb   $0x0,-0xbd6(%rbp)
  404f32:	be 8f e1 40 00       	mov    $0x40e18f,%esi
  404f37:	75 23                	jne    404f5c <main+0x104c>
  404f39:	80 bd 2b f4 ff ff 00 	cmpb   $0x0,-0xbd5(%rbp)
  404f40:	be 9d e1 40 00       	mov    $0x40e19d,%esi
  404f45:	75 15                	jne    404f5c <main+0x104c>
  404f47:	80 bd 2c f4 ff ff 00 	cmpb   $0x0,-0xbd4(%rbp)
  404f4e:	be a7 e1 40 00       	mov    $0x40e1a7,%esi
  404f53:	b8 4a e1 40 00       	mov    $0x40e14a,%eax
  404f58:	48 0f 44 f0          	cmove  %rax,%rsi
  404f5c:	48 8d bd e0 f4 ff ff 	lea    -0xb20(%rbp),%rdi
  404f63:	e8 b8 4f 00 00       	callq  409f20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404f68:	80 bd cc f3 ff ff 00 	cmpb   $0x0,-0xc34(%rbp)
  404f6f:	be 66 e4 40 00       	mov    $0x40e466,%esi
  404f74:	75 55                	jne    404fcb <main+0x10bb>
  404f76:	80 bd 25 f4 ff ff 00 	cmpb   $0x0,-0xbdb(%rbp)
  404f7d:	75 4c                	jne    404fcb <main+0x10bb>
  404f7f:	80 bd 26 f4 ff ff 00 	cmpb   $0x0,-0xbda(%rbp)
  404f86:	75 43                	jne    404fcb <main+0x10bb>
  404f88:	80 bd 29 f4 ff ff 00 	cmpb   $0x0,-0xbd7(%rbp)
  404f8f:	be ea e2 40 00       	mov    $0x40e2ea,%esi
  404f94:	75 35                	jne    404fcb <main+0x10bb>
  404f96:	80 bd 2c f4 ff ff 00 	cmpb   $0x0,-0xbd4(%rbp)
  404f9d:	75 2c                	jne    404fcb <main+0x10bb>
  404f9f:	80 bd 2a f4 ff ff 00 	cmpb   $0x0,-0xbd6(%rbp)
  404fa6:	be c2 e1 40 00       	mov    $0x40e1c2,%esi
  404fab:	75 1e                	jne    404fcb <main+0x10bb>
  404fad:	80 bd 2b f4 ff ff 00 	cmpb   $0x0,-0xbd5(%rbp)
  404fb4:	75 15                	jne    404fcb <main+0x10bb>
  404fb6:	80 bd 27 f4 ff ff 00 	cmpb   $0x0,-0xbd9(%rbp)
  404fbd:	be bd e1 40 00       	mov    $0x40e1bd,%esi
  404fc2:	b8 b8 e1 40 00       	mov    $0x40e1b8,%eax
  404fc7:	48 0f 44 f0          	cmove  %rax,%rsi
  404fcb:	48 8d bd 00 f5 ff ff 	lea    -0xb00(%rbp),%rdi
  404fd2:	e8 49 4f 00 00       	callq  409f20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  404fd7:	80 bd 29 f4 ff ff 00 	cmpb   $0x0,-0xbd7(%rbp)
  404fde:	be c7 e1 40 00       	mov    $0x40e1c7,%esi
  404fe3:	75 69                	jne    40504e <main+0x113e>
  404fe5:	80 bd 2a f4 ff ff 00 	cmpb   $0x0,-0xbd6(%rbp)
  404fec:	be e8 e1 40 00       	mov    $0x40e1e8,%esi
  404ff1:	75 5b                	jne    40504e <main+0x113e>
  404ff3:	80 bd 2b f4 ff ff 00 	cmpb   $0x0,-0xbd5(%rbp)
  404ffa:	be 00 e2 40 00       	mov    $0x40e200,%esi
  404fff:	75 4d                	jne    40504e <main+0x113e>
  405001:	80 bd 2c f4 ff ff 00 	cmpb   $0x0,-0xbd4(%rbp)
  405008:	be 16 e2 40 00       	mov    $0x40e216,%esi
  40500d:	75 3f                	jne    40504e <main+0x113e>
  40500f:	80 bd 23 f4 ff ff 00 	cmpb   $0x0,-0xbdd(%rbp)
  405016:	be 2c e2 40 00       	mov    $0x40e22c,%esi
  40501b:	75 31                	jne    40504e <main+0x113e>
  40501d:	80 bd 26 f4 ff ff 00 	cmpb   $0x0,-0xbda(%rbp)
  405024:	be 40 e0 40 00       	mov    $0x40e040,%esi
  405029:	75 23                	jne    40504e <main+0x113e>
  40502b:	80 bd 24 f4 ff ff 00 	cmpb   $0x0,-0xbdc(%rbp)
  405032:	be 44 e2 40 00       	mov    $0x40e244,%esi
  405037:	75 15                	jne    40504e <main+0x113e>
  405039:	80 bd 25 f4 ff ff 00 	cmpb   $0x0,-0xbdb(%rbp)
  405040:	be 60 e2 40 00       	mov    $0x40e260,%esi
  405045:	b8 da e1 40 00       	mov    $0x40e1da,%eax
  40504a:	48 0f 44 f0          	cmove  %rax,%rsi
  40504e:	48 8d bd 20 f5 ff ff 	lea    -0xae0(%rbp),%rdi
  405055:	e8 c6 4e 00 00       	callq  409f20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>
  40505a:	0f b6 9d cc f3 ff ff 	movzbl -0xc34(%rbp),%ebx
  405061:	84 db                	test   %bl,%bl
  405063:	75 1d                	jne    405082 <main+0x1172>
  405065:	0f b6 9d 24 f4 ff ff 	movzbl -0xbdc(%rbp),%ebx
  40506c:	84 db                	test   %bl,%bl
  40506e:	75 12                	jne    405082 <main+0x1172>
  405070:	0f b6 9d 25 f4 ff ff 	movzbl -0xbdb(%rbp),%ebx
  405077:	84 db                	test   %bl,%bl
  405079:	75 07                	jne    405082 <main+0x1172>
  40507b:	0f b6 9d 26 f4 ff ff 	movzbl -0xbda(%rbp),%ebx
  405082:	48 8b 05 f7 c1 00 00 	mov    0xc1f7(%rip),%rax        # 411280 <_ZSt4cout@@GLIBCXX_3.4>
  405089:	ba 0e 00 00 00       	mov    $0xe,%edx
  40508e:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  405092:	be ef e2 40 00       	mov    $0x40e2ef,%esi
  405097:	bf 80 12 41 00       	mov    $0x411280,%edi
  40509c:	48 c7 80 88 12 41 00 	movq   $0xf,0x411288(%rax)
  4050a3:	0f 00 00 00 
  4050a7:	e8 34 e2 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4050ac:	48 8b 95 e8 f4 ff ff 	mov    -0xb18(%rbp),%rdx
  4050b3:	48 8b b5 e0 f4 ff ff 	mov    -0xb20(%rbp),%rsi
  4050ba:	bf 80 12 41 00       	mov    $0x411280,%edi
  4050bf:	e8 1c e2 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4050c4:	ba 0c 00 00 00       	mov    $0xc,%edx
  4050c9:	be fe e2 40 00       	mov    $0x40e2fe,%esi
  4050ce:	48 89 c7             	mov    %rax,%rdi
  4050d1:	49 89 c4             	mov    %rax,%r12
  4050d4:	e8 07 e2 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4050d9:	48 8b 95 c8 f4 ff ff 	mov    -0xb38(%rbp),%rdx
  4050e0:	48 8b b5 c0 f4 ff ff 	mov    -0xb40(%rbp),%rsi
  4050e7:	4c 89 e7             	mov    %r12,%rdi
  4050ea:	e8 f1 e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4050ef:	ba 0b 00 00 00       	mov    $0xb,%edx
  4050f4:	be 0b e3 40 00       	mov    $0x40e30b,%esi
  4050f9:	48 89 c7             	mov    %rax,%rdi
  4050fc:	49 89 c4             	mov    %rax,%r12
  4050ff:	e8 dc e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405104:	48 8b 95 08 f5 ff ff 	mov    -0xaf8(%rbp),%rdx
  40510b:	48 8b b5 00 f5 ff ff 	mov    -0xb00(%rbp),%rsi
  405112:	4c 89 e7             	mov    %r12,%rdi
  405115:	e8 c6 e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40511a:	ba 14 00 00 00       	mov    $0x14,%edx
  40511f:	be 17 e3 40 00       	mov    $0x40e317,%esi
  405124:	48 89 c7             	mov    %rax,%rdi
  405127:	49 89 c4             	mov    %rax,%r12
  40512a:	e8 b1 e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40512f:	48 8b 95 28 f5 ff ff 	mov    -0xad8(%rbp),%rdx
  405136:	48 8b b5 20 f5 ff ff 	mov    -0xae0(%rbp),%rsi
  40513d:	4c 89 e7             	mov    %r12,%rdi
  405140:	e8 9b e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405145:	ba 0c 00 00 00       	mov    $0xc,%edx
  40514a:	be 2c e3 40 00       	mov    $0x40e32c,%esi
  40514f:	48 89 c7             	mov    %rax,%rdi
  405152:	49 89 c4             	mov    %rax,%r12
  405155:	e8 86 e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40515a:	8b b5 34 f4 ff ff    	mov    -0xbcc(%rbp),%esi
  405160:	4c 89 e7             	mov    %r12,%rdi
  405163:	e8 d8 e2 ff ff       	callq  403440 <_ZNSolsEi@plt>
  405168:	ba 15 00 00 00       	mov    $0x15,%edx
  40516d:	be 39 e3 40 00       	mov    $0x40e339,%esi
  405172:	48 89 c7             	mov    %rax,%rdi
  405175:	49 89 c4             	mov    %rax,%r12
  405178:	e8 63 e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40517d:	31 f6                	xor    %esi,%esi
  40517f:	84 db                	test   %bl,%bl
  405181:	48 0f 45 b5 d8 f3 ff 	cmovne -0xc28(%rbp),%rsi
  405188:	ff 
  405189:	4c 89 e7             	mov    %r12,%rdi
  40518c:	e8 4f e0 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405191:	ba 14 00 00 00       	mov    $0x14,%edx
  405196:	be 4f e3 40 00       	mov    $0x40e34f,%esi
  40519b:	48 89 c7             	mov    %rax,%rdi
  40519e:	49 89 c4             	mov    %rax,%r12
  4051a1:	e8 3a e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4051a6:	48 8b b5 60 f4 ff ff 	mov    -0xba0(%rbp),%rsi
  4051ad:	4c 89 e7             	mov    %r12,%rdi
  4051b0:	e8 2b e0 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  4051b5:	ba 0d 00 00 00       	mov    $0xd,%edx
  4051ba:	be 64 e3 40 00       	mov    $0x40e364,%esi
  4051bf:	48 89 c7             	mov    %rax,%rdi
  4051c2:	49 89 c4             	mov    %rax,%r12
  4051c5:	e8 16 e1 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4051ca:	0f b6 b5 e0 f3 ff ff 	movzbl -0xc20(%rbp),%esi
  4051d1:	4c 89 e7             	mov    %r12,%rdi
  4051d4:	e8 67 e2 ff ff       	callq  403440 <_ZNSolsEi@plt>
  4051d9:	ba 05 00 00 00       	mov    $0x5,%edx
  4051de:	be 72 e3 40 00       	mov    $0x40e372,%esi
  4051e3:	48 89 c7             	mov    %rax,%rdi
  4051e6:	49 89 c4             	mov    %rax,%r12
  4051e9:	e8 f2 e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4051ee:	8b b5 30 f4 ff ff    	mov    -0xbd0(%rbp),%esi
  4051f4:	4c 89 e7             	mov    %r12,%rdi
  4051f7:	e8 44 e2 ff ff       	callq  403440 <_ZNSolsEi@plt>
  4051fc:	ba 0c 00 00 00       	mov    $0xc,%edx
  405201:	be 78 e3 40 00       	mov    $0x40e378,%esi
  405206:	48 89 c7             	mov    %rax,%rdi
  405209:	49 89 c4             	mov    %rax,%r12
  40520c:	e8 cf e0 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405211:	48 8b b5 10 f4 ff ff 	mov    -0xbf0(%rbp),%rsi
  405218:	4c 89 ef             	mov    %r13,%rdi
  40521b:	e8 30 75 00 00       	callq  40c750 <_ZNK8Counters4readEv>
  405220:	80 bd b0 f5 ff ff 00 	cmpb   $0x0,-0xa50(%rbp)
  405227:	be 7c e2 40 00       	mov    $0x40e27c,%esi
  40522c:	b8 81 e2 40 00       	mov    $0x40e281,%eax
  405231:	48 0f 44 f0          	cmove  %rax,%rsi
  405235:	4c 89 e7             	mov    %r12,%rdi
  405238:	e8 53 e0 ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40523d:	48 89 c7             	mov    %rax,%rdi
  405240:	be 85 e3 40 00       	mov    $0x40e385,%esi
  405245:	e8 46 e0 ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40524a:	c7 85 18 f4 ff ff 00 	movl   $0x0,-0xbe8(%rbp)
  405251:	00 00 00 
  405254:	c5 fb 10 85 d0 f3 ff 	vmovsd -0xc30(%rbp),%xmm0
  40525b:	ff 
  40525c:	8b bd 18 f4 ff ff    	mov    -0xbe8(%rbp),%edi
  405262:	e8 69 50 00 00       	callq  40a2d0 <_Z6windowid>
  405267:	c5 fb 10 a5 d0 f3 ff 	vmovsd -0xc30(%rbp),%xmm4
  40526e:	ff 
  40526f:	48 89 c3             	mov    %rax,%rbx
  405272:	c5 db 59 05 c6 93 00 	vmulsd 0x93c6(%rip),%xmm4,%xmm0        # 40e640 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1a0>
  405279:	00 
  40527a:	48 89 85 e0 f3 ff ff 	mov    %rax,-0xc20(%rbp)
  405281:	48 8b b5 10 f4 ff ff 	mov    -0xbf0(%rbp),%rsi
  405288:	48 8d bd 40 f5 ff ff 	lea    -0xac0(%rbp),%rdi
  40528f:	62 f1 ff 08 78 c0    	vcvttsd2usi %xmm0,%rax
  405295:	4c 8d 34 18          	lea    (%rax,%rbx,1),%r14
  405299:	e8 b2 74 00 00       	callq  40c750 <_ZNK8Counters4readEv>
  40529e:	48 8d 9d 50 f6 ff ff 	lea    -0x9b0(%rbp),%rbx
  4052a5:	48 8d 95 58 f6 ff ff 	lea    -0x9a8(%rbp),%rdx
  4052ac:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  4052b1:	48 8d 9d 00 f6 ff ff 	lea    -0xa00(%rbp),%rbx
  4052b8:	48 8d 85 48 f6 ff ff 	lea    -0x9b8(%rbp),%rax
  4052bf:	c4 e3 f9 22 c2 01    	vpinsrq $0x1,%rdx,%xmm0,%xmm0
  4052c5:	c4 e1 f9 6e fb       	vmovq  %rbx,%xmm7
  4052ca:	48 8d 95 a0 f6 ff ff 	lea    -0x960(%rbp),%rdx
  4052d1:	c4 e3 c1 22 c8 01    	vpinsrq $0x1,%rax,%xmm7,%xmm1
  4052d7:	c4 e1 f9 6e e2       	vmovq  %rdx,%xmm4
  4052dc:	48 8d 85 a8 f6 ff ff 	lea    -0x958(%rbp),%rax
  4052e3:	c4 e3 75 38 f0 01    	vinserti128 $0x1,%xmm0,%ymm1,%ymm6
  4052e9:	c4 e3 d9 22 e8 01    	vpinsrq $0x1,%rax,%xmm4,%xmm5
  4052ef:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4052f3:	4c 89 ee             	mov    %r13,%rsi
  4052f6:	bf 01 00 00 00       	mov    $0x1,%edi
  4052fb:	c5 fd 7f b5 90 f3 ff 	vmovdqa %ymm6,-0xc70(%rbp)
  405302:	ff 
  405303:	c5 f9 7f ad f0 f3 ff 	vmovdqa %xmm5,-0xc10(%rbp)
  40530a:	ff 
  40530b:	c5 f9 7f 85 b0 f5 ff 	vmovdqa %xmm0,-0xa50(%rbp)
  405312:	ff 
  405313:	c5 f8 77             	vzeroupper 
  405316:	e8 65 df ff ff       	callq  403280 <clock_gettime@plt>
  40531b:	48 69 85 b0 f5 ff ff 	imul   $0x3b9aca00,-0xa50(%rbp),%rax
  405322:	00 ca 9a 3b 
  405326:	31 db                	xor    %ebx,%ebx
  405328:	45 31 ff             	xor    %r15d,%r15d
  40532b:	48 03 85 b8 f5 ff ff 	add    -0xa48(%rbp),%rax
  405332:	48 89 85 e8 f3 ff ff 	mov    %rax,-0xc18(%rbp)
  405339:	45 31 e4             	xor    %r12d,%r12d
  40533c:	e9 a0 02 00 00       	jmpq   4055e1 <main+0x16d1>
  405341:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405348:	48 8b 85 10 f6 ff ff 	mov    -0x9f0(%rbp),%rax
  40534f:	80 38 00             	cmpb   $0x0,(%rax)
  405352:	0f 85 d0 02 00 00    	jne    405628 <main+0x1718>
  405358:	48 8b 85 38 f6 ff ff 	mov    -0x9c8(%rbp),%rax
  40535f:	0f b6 00             	movzbl (%rax),%eax
  405362:	84 c0                	test   %al,%al
  405364:	0f 85 9b 03 00 00    	jne    405705 <main+0x17f5>
  40536a:	48 8b 95 40 f6 ff ff 	mov    -0x9c0(%rbp),%rdx
  405371:	80 3a 00             	cmpb   $0x0,(%rdx)
  405374:	0f 85 ef 06 00 00    	jne    405a69 <main+0x1b59>
  40537a:	48 8b 85 78 f6 ff ff 	mov    -0x988(%rbp),%rax
  405381:	0f b6 00             	movzbl (%rax),%eax
  405384:	84 c0                	test   %al,%al
  405386:	0f 85 05 03 00 00    	jne    405691 <main+0x1781>
  40538c:	48 8d 95 90 f6 ff ff 	lea    -0x970(%rbp),%rdx
  405393:	88 85 00 f4 ff ff    	mov    %al,-0xc00(%rbp)
  405399:	48 89 95 c0 f5 ff ff 	mov    %rdx,-0xa40(%rbp)
  4053a0:	c5 f9 6f b5 f0 f3 ff 	vmovdqa -0xc10(%rbp),%xmm6
  4053a7:	ff 
  4053a8:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  4053af:	48 8d 95 98 f6 ff ff 	lea    -0x968(%rbp),%rdx
  4053b6:	31 c9                	xor    %ecx,%ecx
  4053b8:	48 89 85 b0 f5 ff ff 	mov    %rax,-0xa50(%rbp)
  4053bf:	48 89 95 c8 f5 ff ff 	mov    %rdx,-0xa38(%rbp)
  4053c6:	48 8d 85 88 f6 ff ff 	lea    -0x978(%rbp),%rax
  4053cd:	31 d2                	xor    %edx,%edx
  4053cf:	4c 89 ee             	mov    %r13,%rsi
  4053d2:	bf 00 68 40 00       	mov    $0x406800,%edi
  4053d7:	48 89 85 b8 f5 ff ff 	mov    %rax,-0xa48(%rbp)
  4053de:	c7 85 e8 f5 ff ff 00 	movl   $0x0,-0xa18(%rbp)
  4053e5:	00 00 00 
  4053e8:	48 c7 85 e0 f5 ff ff 	movq   $0x0,-0xa20(%rbp)
  4053ef:	00 00 00 00 
  4053f3:	c5 f9 7f b5 d0 f5 ff 	vmovdqa %xmm6,-0xa30(%rbp)
  4053fa:	ff 
  4053fb:	e8 a0 df ff ff       	callq  4033a0 <GOMP_parallel@plt>
  405400:	8b 95 e8 f5 ff ff    	mov    -0xa18(%rbp),%edx
  405406:	c5 fb 10 8d e0 f5 ff 	vmovsd -0xa20(%rbp),%xmm1
  40540d:	ff 
  40540e:	48 8b 8d 60 f6 ff ff 	mov    -0x9a0(%rbp),%rcx
  405415:	85 d2                	test   %edx,%edx
  405417:	0f b6 85 00 f4 ff ff 	movzbl -0xc00(%rbp),%eax
  40541e:	c5 fb 11 09          	vmovsd %xmm1,(%rcx)
  405422:	75 21                	jne    405445 <main+0x1535>
  405424:	c5 f1 54 05 b4 92 00 	vandpd 0x92b4(%rip),%xmm1,%xmm0        # 40e6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  40542b:	00 
  40542c:	c5 fb 10 15 c4 91 00 	vmovsd 0x91c4(%rip),%xmm2        # 40e5f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  405433:	00 
  405434:	c5 f9 2e d0          	vucomisd %xmm0,%xmm2
  405438:	72 0b                	jb     405445 <main+0x1535>
  40543a:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  40543e:	c5 f9 2f ce          	vcomisd %xmm6,%xmm1
  405442:	0f 97 c0             	seta   %al
  405445:	48 8b 95 68 f6 ff ff 	mov    -0x998(%rbp),%rdx
  40544c:	48 8b 8d a8 f6 ff ff 	mov    -0x958(%rbp),%rcx
  405453:	22 02                	and    (%rdx),%al
  405455:	88 02                	mov    %al,(%rdx)
  405457:	80 39 00             	cmpb   $0x0,(%rcx)
  40545a:	75 0c                	jne    405468 <main+0x1558>
  40545c:	48 8b b5 b0 f6 ff ff 	mov    -0x950(%rbp),%rsi
  405463:	80 3e 00             	cmpb   $0x0,(%rsi)
  405466:	74 3b                	je     4054a3 <main+0x1593>
  405468:	48 8b b5 b8 f6 ff ff 	mov    -0x948(%rbp),%rsi
  40546f:	c5 fb 10 1d 79 91 00 	vmovsd 0x9179(%rip),%xmm3        # 40e5f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  405476:	00 
  405477:	c5 fb 10 06          	vmovsd (%rsi),%xmm0
  40547b:	c5 f3 5c d0          	vsubsd %xmm0,%xmm1,%xmm2
  40547f:	c5 f9 54 05 59 92 00 	vandpd 0x9259(%rip),%xmm0,%xmm0        # 40e6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405486:	00 
  405487:	c5 fb 59 c3          	vmulsd %xmm3,%xmm0,%xmm0
  40548b:	c5 e9 54 15 4d 92 00 	vandpd 0x924d(%rip),%xmm2,%xmm2        # 40e6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405492:	00 
  405493:	c5 fb 5f c3          	vmaxsd %xmm3,%xmm0,%xmm0
  405497:	c5 f9 2f c2          	vcomisd %xmm2,%xmm0
  40549b:	40 0f 97 c6          	seta   %sil
  40549f:	21 f0                	and    %esi,%eax
  4054a1:	88 02                	mov    %al,(%rdx)
  4054a3:	48 8b b5 98 f6 ff ff 	mov    -0x968(%rbp),%rsi
  4054aa:	48 8b 85 c0 f6 ff ff 	mov    -0x940(%rbp),%rax
  4054b1:	80 3e 00             	cmpb   $0x0,(%rsi)
  4054b4:	48 63 00             	movslq (%rax),%rax
  4054b7:	74 3d                	je     4054f6 <main+0x15e6>
  4054b9:	c5 d9 57 e4          	vxorpd %xmm4,%xmm4,%xmm4
  4054bd:	c5 db 2a c0          	vcvtsi2sd %eax,%xmm4,%xmm0
  4054c1:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4054c7:	c5 fb 59 05 d9 90 00 	vmulsd 0x90d9(%rip),%xmm0,%xmm0        # 40e5a8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x108>
  4054ce:	00 
  4054cf:	c5 fb 59 05 31 91 00 	vmulsd 0x9131(%rip),%xmm0,%xmm0        # 40e608 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  4054d6:	00 
  4054d7:	c5 fb 59 05 09 91 00 	vmulsd 0x9109(%rip),%xmm0,%xmm0        # 40e5e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x148>
  4054de:	00 
  4054df:	c5 fb 59 05 29 91 00 	vmulsd 0x9129(%rip),%xmm0,%xmm0        # 40e610 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  4054e6:	00 
  4054e7:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  4054eb:	40 0f 9b c7          	setnp  %dil
  4054ef:	41 0f 45 f8          	cmovne %r8d,%edi
  4054f3:	40 20 3a             	and    %dil,(%rdx)
  4054f6:	48 8b bd a0 f6 ff ff 	mov    -0x960(%rbp),%rdi
  4054fd:	80 3f 00             	cmpb   $0x0,(%rdi)
  405500:	74 39                	je     40553b <main+0x162b>
  405502:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
  405506:	c5 d3 2a c0          	vcvtsi2sd %eax,%xmm5,%xmm0
  40550a:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  405510:	c5 fb 59 05 90 90 00 	vmulsd 0x9090(%rip),%xmm0,%xmm0        # 40e5a8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x108>
  405517:	00 
  405518:	c5 fb 59 05 e8 90 00 	vmulsd 0x90e8(%rip),%xmm0,%xmm0        # 40e608 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  40551f:	00 
  405520:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  405524:	c5 fb 59 05 e4 90 00 	vmulsd 0x90e4(%rip),%xmm0,%xmm0        # 40e610 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  40552b:	00 
  40552c:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  405530:	41 0f 9b c0          	setnp  %r8b
  405534:	45 0f 45 c1          	cmovne %r9d,%r8d
  405538:	44 20 02             	and    %r8b,(%rdx)
  40553b:	4c 8b 85 88 f6 ff ff 	mov    -0x978(%rbp),%r8
  405542:	48 ba 00 00 00 00 04 	movabs $0x400000000,%rdx
  405549:	00 00 00 
  40554c:	41 80 38 00          	cmpb   $0x0,(%r8)
  405550:	75 46                	jne    405598 <main+0x1688>
  405552:	4c 8b 85 90 f6 ff ff 	mov    -0x970(%rbp),%r8
  405559:	ba 01 00 00 00       	mov    $0x1,%edx
  40555e:	48 c1 e2 23          	shl    $0x23,%rdx
  405562:	41 80 38 00          	cmpb   $0x0,(%r8)
  405566:	75 30                	jne    405598 <main+0x1688>
  405568:	ba 51 25 02 00       	mov    $0x22551,%edx
  40556d:	48 c1 e2 0f          	shl    $0xf,%rdx
  405571:	80 3e 00             	cmpb   $0x0,(%rsi)
  405574:	75 22                	jne    405598 <main+0x1688>
  405576:	80 3f 00             	cmpb   $0x0,(%rdi)
  405579:	ba 00 40 54 89       	mov    $0x89544000,%edx
  40557e:	75 18                	jne    405598 <main+0x1688>
  405580:	80 39 01             	cmpb   $0x1,(%rcx)
  405583:	48 19 d2             	sbb    %rdx,%rdx
  405586:	48 81 e2 00 f0 aa dd 	and    $0xffffffffddaaf000,%rdx
  40558d:	48 81 c2 00 20 aa 44 	add    $0x44aa2000,%rdx
  405594:	0f 1f 40 00          	nopl   0x0(%rax)
  405598:	48 0f af c2          	imul   %rdx,%rax
  40559c:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4055a0:	4c 89 ee             	mov    %r13,%rsi
  4055a3:	bf 01 00 00 00       	mov    $0x1,%edi
  4055a8:	49 01 c4             	add    %rax,%r12
  4055ab:	48 03 9d 78 f4 ff ff 	add    -0xb88(%rbp),%rbx
  4055b2:	c5 f9 7f 85 b0 f5 ff 	vmovdqa %xmm0,-0xa50(%rbp)
  4055b9:	ff 
  4055ba:	e8 c1 dc ff ff       	callq  403280 <clock_gettime@plt>
  4055bf:	48 69 85 b0 f5 ff ff 	imul   $0x3b9aca00,-0xa50(%rbp),%rax
  4055c6:	00 ca 9a 3b 
  4055ca:	49 ff c7             	inc    %r15
  4055cd:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4055d1:	48 03 85 b8 f5 ff ff 	add    -0xa48(%rbp),%rax
  4055d8:	49 39 c6             	cmp    %rax,%r14
  4055db:	0f 86 8d 01 00 00    	jbe    40576e <main+0x185e>
  4055e1:	48 8b 85 00 f6 ff ff 	mov    -0xa00(%rbp),%rax
  4055e8:	80 38 00             	cmpb   $0x0,(%rax)
  4055eb:	0f 84 57 fd ff ff    	je     405348 <main+0x1438>
  4055f1:	48 8b 8d 08 f6 ff ff 	mov    -0x9f8(%rbp),%rcx
  4055f8:	b8 00 00 01 00       	mov    $0x10000,%eax
  4055fd:	48 8b 11             	mov    (%rcx),%rdx
  405600:	48 8b 12             	mov    (%rdx),%rdx
  405603:	48 89 11             	mov    %rdx,(%rcx)
  405606:	ff c8                	dec    %eax
  405608:	75 f6                	jne    405600 <main+0x16f0>
  40560a:	b8 00 00 01 00       	mov    $0x10000,%eax
  40560f:	eb 8b                	jmp    40559c <main+0x168c>
  405611:	48 8b 85 d8 f3 ff ff 	mov    -0xc28(%rbp),%rax
  405618:	48 25 00 fe ff ff    	and    $0xfffffffffffffe00,%rax
  40561e:	e9 6f f3 ff ff       	jmpq   404992 <main+0xa82>
  405623:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405628:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  40562f:	48 89 85 b0 f5 ff ff 	mov    %rax,-0xa50(%rbp)
  405636:	48 8d 85 18 f6 ff ff 	lea    -0x9e8(%rbp),%rax
  40563d:	48 89 85 b8 f5 ff ff 	mov    %rax,-0xa48(%rbp)
  405644:	48 8d 85 20 f6 ff ff 	lea    -0x9e0(%rbp),%rax
  40564b:	48 89 85 c0 f5 ff ff 	mov    %rax,-0xa40(%rbp)
  405652:	48 8d 85 28 f6 ff ff 	lea    -0x9d8(%rbp),%rax
  405659:	48 89 85 c8 f5 ff ff 	mov    %rax,-0xa38(%rbp)
  405660:	31 c9                	xor    %ecx,%ecx
  405662:	48 8d 85 30 f6 ff ff 	lea    -0x9d0(%rbp),%rax
  405669:	31 d2                	xor    %edx,%edx
  40566b:	4c 89 ee             	mov    %r13,%rsi
  40566e:	bf 50 62 40 00       	mov    $0x406250,%edi
  405673:	48 89 85 d0 f5 ff ff 	mov    %rax,-0xa30(%rbp)
  40567a:	e8 21 dd ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40567f:	48 8b 85 18 f6 ff ff 	mov    -0x9e8(%rbp),%rax
  405686:	48 8b 00             	mov    (%rax),%rax
  405689:	48 01 c0             	add    %rax,%rax
  40568c:	e9 0b ff ff ff       	jmpq   40559c <main+0x168c>
  405691:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  405698:	48 89 85 b0 f5 ff ff 	mov    %rax,-0xa50(%rbp)
  40569f:	48 8d 85 18 f6 ff ff 	lea    -0x9e8(%rbp),%rax
  4056a6:	48 89 85 b8 f5 ff ff 	mov    %rax,-0xa48(%rbp)
  4056ad:	48 8d 85 20 f6 ff ff 	lea    -0x9e0(%rbp),%rax
  4056b4:	48 89 85 c0 f5 ff ff 	mov    %rax,-0xa40(%rbp)
  4056bb:	48 8d 85 28 f6 ff ff 	lea    -0x9d8(%rbp),%rax
  4056c2:	48 89 85 c8 f5 ff ff 	mov    %rax,-0xa38(%rbp)
  4056c9:	31 d2                	xor    %edx,%edx
  4056cb:	48 8d 85 80 f6 ff ff 	lea    -0x980(%rbp),%rax
  4056d2:	31 c9                	xor    %ecx,%ecx
  4056d4:	4c 89 ee             	mov    %r13,%rsi
  4056d7:	bf 10 66 40 00       	mov    $0x406610,%edi
  4056dc:	48 89 85 d0 f5 ff ff 	mov    %rax,-0xa30(%rbp)
  4056e3:	e8 b8 dc ff ff       	callq  4033a0 <GOMP_parallel@plt>
  4056e8:	48 8b 85 80 f6 ff ff 	mov    -0x980(%rbp),%rax
  4056ef:	48 8b 95 18 f6 ff ff 	mov    -0x9e8(%rbp),%rdx
  4056f6:	48 63 00             	movslq (%rax),%rax
  4056f9:	48 0f af 02          	imul   (%rdx),%rax
  4056fd:	48 01 c0             	add    %rax,%rax
  405700:	e9 97 fe ff ff       	jmpq   40559c <main+0x168c>
  405705:	48 8d 85 00 f6 ff ff 	lea    -0xa00(%rbp),%rax
  40570c:	48 89 85 b0 f5 ff ff 	mov    %rax,-0xa50(%rbp)
  405713:	48 8d 85 18 f6 ff ff 	lea    -0x9e8(%rbp),%rax
  40571a:	48 89 85 b8 f5 ff ff 	mov    %rax,-0xa48(%rbp)
  405721:	48 8d 85 20 f6 ff ff 	lea    -0x9e0(%rbp),%rax
  405728:	48 89 85 c0 f5 ff ff 	mov    %rax,-0xa40(%rbp)
  40572f:	48 8d 85 28 f6 ff ff 	lea    -0x9d8(%rbp),%rax
  405736:	48 89 85 c8 f5 ff ff 	mov    %rax,-0xa38(%rbp)
  40573d:	31 c9                	xor    %ecx,%ecx
  40573f:	48 8d 85 30 f6 ff ff 	lea    -0x9d0(%rbp),%rax
  405746:	31 d2                	xor    %edx,%edx
  405748:	4c 89 ee             	mov    %r13,%rsi
  40574b:	bf 50 9a 40 00       	mov    $0x409a50,%edi
  405750:	48 89 85 d0 f5 ff ff 	mov    %rax,-0xa30(%rbp)
  405757:	e8 44 dc ff ff       	callq  4033a0 <GOMP_parallel@plt>
  40575c:	48 8b 85 18 f6 ff ff 	mov    -0x9e8(%rbp),%rax
  405763:	48 8b 00             	mov    (%rax),%rax
  405766:	48 01 c0             	add    %rax,%rax
  405769:	e9 2e fe ff ff       	jmpq   40559c <main+0x168c>
  40576e:	4c 89 ee             	mov    %r13,%rsi
  405771:	bf 01 00 00 00       	mov    $0x1,%edi
  405776:	4c 89 bd 00 f4 ff ff 	mov    %r15,-0xc00(%rbp)
  40577d:	c5 f9 7f 85 b0 f5 ff 	vmovdqa %xmm0,-0xa50(%rbp)
  405784:	ff 
  405785:	e8 f6 da ff ff       	callq  403280 <clock_gettime@plt>
  40578a:	4c 69 b5 b0 f5 ff ff 	imul   $0x3b9aca00,-0xa50(%rbp),%r14
  405791:	00 ca 9a 3b 
  405795:	48 8b b5 10 f4 ff ff 	mov    -0xbf0(%rbp),%rsi
  40579c:	4c 89 ef             	mov    %r13,%rdi
  40579f:	4c 03 b5 b8 f5 ff ff 	add    -0xa48(%rbp),%r14
  4057a6:	e8 a5 6f 00 00       	callq  40c750 <_ZNK8Counters4readEv>
  4057ab:	4c 89 f0             	mov    %r14,%rax
  4057ae:	48 2b 85 e8 f3 ff ff 	sub    -0xc18(%rbp),%rax
  4057b5:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  4057b9:	62 f1 cf 08 7b c0    	vcvtusi2sd %rax,%xmm6,%xmm0
  4057bf:	83 bd 18 f4 ff ff 00 	cmpl   $0x0,-0xbe8(%rbp)
  4057c6:	c5 fb 59 2d 32 8e 00 	vmulsd 0x8e32(%rip),%xmm0,%xmm5        # 40e600 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  4057cd:	00 
  4057ce:	c4 c1 f9 7e ef       	vmovq  %xmm5,%r15
  4057d3:	74 1d                	je     4057f2 <main+0x18e2>
  4057d5:	ba 01 00 00 00       	mov    $0x1,%edx
  4057da:	48 8d b5 2e f4 ff ff 	lea    -0xbd2(%rbp),%rsi
  4057e1:	bf 80 12 41 00       	mov    $0x411280,%edi
  4057e6:	c6 85 2e f4 ff ff 2c 	movb   $0x2c,-0xbd2(%rbp)
  4057ed:	e8 ee da ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4057f2:	ba 13 00 00 00       	mov    $0x13,%edx
  4057f7:	be 9b e3 40 00       	mov    $0x40e39b,%esi
  4057fc:	bf 80 12 41 00       	mov    $0x411280,%edi
  405801:	e8 da da ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405806:	c4 c1 f9 6e c7       	vmovq  %r15,%xmm0
  40580b:	bf 80 12 41 00       	mov    $0x411280,%edi
  405810:	e8 db db ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  405815:	ba 0c 00 00 00       	mov    $0xc,%edx
  40581a:	be af e3 40 00       	mov    $0x40e3af,%esi
  40581f:	48 89 c7             	mov    %rax,%rdi
  405822:	49 89 c7             	mov    %rax,%r15
  405825:	e8 b6 da ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40582a:	48 8b b5 e8 f3 ff ff 	mov    -0xc18(%rbp),%rsi
  405831:	4c 89 ff             	mov    %r15,%rdi
  405834:	e8 a7 d9 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405839:	ba 0a 00 00 00       	mov    $0xa,%edx
  40583e:	be bc e3 40 00       	mov    $0x40e3bc,%esi
  405843:	48 89 c7             	mov    %rax,%rdi
  405846:	49 89 c7             	mov    %rax,%r15
  405849:	e8 92 da ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40584e:	4c 89 f6             	mov    %r14,%rsi
  405851:	4c 89 ff             	mov    %r15,%rdi
  405854:	e8 87 d9 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405859:	ba 14 00 00 00       	mov    $0x14,%edx
  40585e:	be c7 e3 40 00       	mov    $0x40e3c7,%esi
  405863:	48 89 c7             	mov    %rax,%rdi
  405866:	49 89 c6             	mov    %rax,%r14
  405869:	e8 72 da ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40586e:	48 8b b5 e0 f3 ff ff 	mov    -0xc20(%rbp),%rsi
  405875:	4c 89 f7             	mov    %r14,%rdi
  405878:	e8 63 d9 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  40587d:	ba 0e 00 00 00       	mov    $0xe,%edx
  405882:	be dc e3 40 00       	mov    $0x40e3dc,%esi
  405887:	48 89 c7             	mov    %rax,%rdi
  40588a:	49 89 c6             	mov    %rax,%r14
  40588d:	e8 4e da ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405892:	31 f6                	xor    %esi,%esi
  405894:	80 bd 25 f4 ff ff 00 	cmpb   $0x0,-0xbdb(%rbp)
  40589b:	75 0b                	jne    4058a8 <main+0x1998>
  40589d:	80 bd 26 f4 ff ff 00 	cmpb   $0x0,-0xbda(%rbp)
  4058a4:	49 0f 44 f4          	cmove  %r12,%rsi
  4058a8:	4c 89 f7             	mov    %r14,%rdi
  4058ab:	e8 30 d9 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  4058b0:	ba 11 00 00 00       	mov    $0x11,%edx
  4058b5:	be eb e3 40 00       	mov    $0x40e3eb,%esi
  4058ba:	48 89 c7             	mov    %rax,%rdi
  4058bd:	49 89 c6             	mov    %rax,%r14
  4058c0:	e8 1b da ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4058c5:	80 bd 26 f4 ff ff 00 	cmpb   $0x0,-0xbda(%rbp)
  4058cc:	75 23                	jne    4058f1 <main+0x19e1>
  4058ce:	80 bd cc f3 ff ff 00 	cmpb   $0x0,-0xc34(%rbp)
  4058d5:	75 0b                	jne    4058e2 <main+0x19d2>
  4058d7:	31 db                	xor    %ebx,%ebx
  4058d9:	80 bd 24 f4 ff ff 00 	cmpb   $0x0,-0xbdc(%rbp)
  4058e0:	74 0f                	je     4058f1 <main+0x19e1>
  4058e2:	48 8b 9d 00 f4 ff ff 	mov    -0xc00(%rbp),%rbx
  4058e9:	48 0f af 9d d8 f3 ff 	imul   -0xc28(%rbp),%rbx
  4058f0:	ff 
  4058f1:	48 89 de             	mov    %rbx,%rsi
  4058f4:	4c 89 f7             	mov    %r14,%rdi
  4058f7:	e8 e4 d8 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  4058fc:	ba 09 00 00 00       	mov    $0x9,%edx
  405901:	be fd e3 40 00       	mov    $0x40e3fd,%esi
  405906:	48 89 c7             	mov    %rax,%rdi
  405909:	49 89 c6             	mov    %rax,%r14
  40590c:	e8 cf d9 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405911:	31 c0                	xor    %eax,%eax
  405913:	80 bd 25 f4 ff ff 00 	cmpb   $0x0,-0xbdb(%rbp)
  40591a:	4c 0f 44 e0          	cmove  %rax,%r12
  40591e:	4c 89 f7             	mov    %r14,%rdi
  405921:	4c 89 e6             	mov    %r12,%rsi
  405924:	e8 b7 d8 ff ff       	callq  4031e0 <_ZNSo9_M_insertImEERSoT_@plt>
  405929:	80 bd 40 f5 ff ff 00 	cmpb   $0x0,-0xac0(%rbp)
  405930:	74 0d                	je     40593f <main+0x1a2f>
  405932:	80 bd b0 f5 ff ff 00 	cmpb   $0x0,-0xa50(%rbp)
  405939:	0f 85 19 02 00 00    	jne    405b58 <main+0x1c48>
  40593f:	ba 01 00 00 00       	mov    $0x1,%edx
  405944:	48 8d b5 2f f4 ff ff 	lea    -0xbd1(%rbp),%rsi
  40594b:	bf 80 12 41 00       	mov    $0x411280,%edi
  405950:	c6 85 2f f4 ff ff 7d 	movb   $0x7d,-0xbd1(%rbp)
  405957:	e8 84 d9 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40595c:	ff 85 18 f4 ff ff    	incl   -0xbe8(%rbp)
  405962:	8b 85 18 f4 ff ff    	mov    -0xbe8(%rbp),%eax
  405968:	3b 85 c8 f3 ff ff    	cmp    -0xc38(%rbp),%eax
  40596e:	0f 8c e0 f8 ff ff    	jl     405254 <main+0x1344>
  405974:	80 bd cc f3 ff ff 00 	cmpb   $0x0,-0xc34(%rbp)
  40597b:	75 0d                	jne    40598a <main+0x1a7a>
  40597d:	80 bd 24 f4 ff ff 00 	cmpb   $0x0,-0xbdc(%rbp)
  405984:	0f 84 9b 02 00 00    	je     405c25 <main+0x1d15>
  40598a:	48 8b bd 38 f4 ff ff 	mov    -0xbc8(%rbp),%rdi
  405991:	b8 01 00 00 00       	mov    $0x1,%eax
  405996:	48 89 fe             	mov    %rdi,%rsi
  405999:	48 c1 ee 0a          	shr    $0xa,%rsi
  40599d:	48 0f 44 f0          	cmove  %rax,%rsi
  4059a1:	4c 8b 8d 48 f4 ff ff 	mov    -0xbb8(%rbp),%r9
  4059a8:	8b 8d 30 f4 ff ff    	mov    -0xbd0(%rbp),%ecx
  4059ae:	4c 8b 95 50 f4 ff ff 	mov    -0xbb0(%rbp),%r10
  4059b5:	4c 8b 85 40 f4 ff ff 	mov    -0xbc0(%rbp),%r8
  4059bc:	44 0f b6 9d 2d f4 ff 	movzbl -0xbd3(%rbp),%r11d
  4059c3:	ff 
  4059c4:	c5 fb 10 3d bc 8b 00 	vmovsd 0x8bbc(%rip),%xmm7        # 40e588 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  4059cb:	00 
  4059cc:	c5 fb 10 1d c4 8b 00 	vmovsd 0x8bc4(%rip),%xmm3        # 40e598 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  4059d3:	00 
  4059d4:	c5 fb 10 15 b4 8b 00 	vmovsd 0x8bb4(%rip),%xmm2        # 40e590 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  4059db:	00 
  4059dc:	c5 fa 7e 2d fc 8c 00 	vmovq  0x8cfc(%rip),%xmm5        # 40e6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  4059e3:	00 
  4059e4:	c5 fb 10 35 0c 8c 00 	vmovsd 0x8c0c(%rip),%xmm6        # 40e5f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  4059eb:	00 
  4059ec:	c5 7b 10 05 54 8c 00 	vmovsd 0x8c54(%rip),%xmm8        # 40e648 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1a8>
  4059f3:	00 
  4059f4:	0f b6 9d cc f3 ff ff 	movzbl -0xc34(%rbp),%ebx
  4059fb:	31 c0                	xor    %eax,%eax
  4059fd:	31 d2                	xor    %edx,%edx
  4059ff:	eb 42                	jmp    405a43 <main+0x1b33>
  405a01:	c4 c2 c1 b9 04 d2    	vfmadd231sd (%r10,%rdx,8),%xmm7,%xmm0
  405a07:	c4 c1 7b 10 0c d0    	vmovsd (%r8,%rdx,8),%xmm1
  405a0d:	31 c0                	xor    %eax,%eax
  405a0f:	c5 f1 54 e5          	vandpd %xmm5,%xmm1,%xmm4
  405a13:	c5 f9 2e f4          	vucomisd %xmm4,%xmm6
  405a17:	72 0f                	jb     405a28 <main+0x1b18>
  405a19:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
  405a1d:	c5 f9 54 c5          	vandpd %xmm5,%xmm0,%xmm0
  405a21:	c5 79 2f c0          	vcomisd %xmm0,%xmm8
  405a25:	0f 97 c0             	seta   %al
  405a28:	c5 f3 58 8d 70 f4 ff 	vaddsd -0xb90(%rbp),%xmm1,%xmm1
  405a2f:	ff 
  405a30:	41 21 c3             	and    %eax,%r11d
  405a33:	48 01 f2             	add    %rsi,%rdx
  405a36:	c5 fb 11 8d 70 f4 ff 	vmovsd %xmm1,-0xb90(%rbp)
  405a3d:	ff 
  405a3e:	b8 01 00 00 00       	mov    $0x1,%eax
  405a43:	48 39 d7             	cmp    %rdx,%rdi
  405a46:	0f 86 ce 01 00 00    	jbe    405c1a <main+0x1d0a>
  405a4c:	c4 c1 7b 10 04 d1    	vmovsd (%r9,%rdx,8),%xmm0
  405a52:	84 db                	test   %bl,%bl
  405a54:	75 ab                	jne    405a01 <main+0x1af1>
  405a56:	31 c0                	xor    %eax,%eax
  405a58:	85 c9                	test   %ecx,%ecx
  405a5a:	7e ab                	jle    405a07 <main+0x1af7>
  405a5c:	ff c0                	inc    %eax
  405a5e:	c4 e2 e1 99 c2       	vfmadd132sd %xmm2,%xmm3,%xmm0
  405a63:	39 c1                	cmp    %eax,%ecx
  405a65:	75 f5                	jne    405a5c <main+0x1b4c>
  405a67:	eb 9e                	jmp    405a07 <main+0x1af7>
  405a69:	c5 fd 6f a5 90 f3 ff 	vmovdqa -0xc70(%rbp),%ymm4
  405a70:	ff 
  405a71:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  405a75:	31 c9                	xor    %ecx,%ecx
  405a77:	31 d2                	xor    %edx,%edx
  405a79:	4c 89 ee             	mov    %r13,%rsi
  405a7c:	bf 20 64 40 00       	mov    $0x406420,%edi
  405a81:	88 85 00 f4 ff ff    	mov    %al,-0xc00(%rbp)
  405a87:	48 c7 85 d8 f5 ff ff 	movq   $0x0,-0xa28(%rbp)
  405a8e:	00 00 00 00 
  405a92:	4c 89 b5 b0 f5 ff ff 	mov    %r14,-0xa50(%rbp)
  405a99:	c5 f9 29 85 e0 f5 ff 	vmovapd %xmm0,-0xa20(%rbp)
  405aa0:	ff 
  405aa1:	c5 fe 7f a5 b8 f5 ff 	vmovdqu %ymm4,-0xa48(%rbp)
  405aa8:	ff 
  405aa9:	c5 f8 77             	vzeroupper 
  405aac:	e8 ef d8 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  405ab1:	c5 fb 10 85 e0 f5 ff 	vmovsd -0xa20(%rbp),%xmm0
  405ab8:	ff 
  405ab9:	c5 fb 10 1d 37 8b 00 	vmovsd 0x8b37(%rip),%xmm3        # 40e5f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  405ac0:	00 
  405ac1:	c5 f9 54 15 17 8c 00 	vandpd 0x8c17(%rip),%xmm0,%xmm2        # 40e6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405ac8:	00 
  405ac9:	48 8b 95 60 f6 ff ff 	mov    -0x9a0(%rbp),%rdx
  405ad0:	c5 f9 2e da          	vucomisd %xmm2,%xmm3
  405ad4:	c5 fb 10 8d e8 f5 ff 	vmovsd -0xa18(%rbp),%xmm1
  405adb:	ff 
  405adc:	48 8b 8d d8 f5 ff ff 	mov    -0xa28(%rbp),%rcx
  405ae3:	0f b6 85 00 f4 ff ff 	movzbl -0xc00(%rbp),%eax
  405aea:	c5 fb 11 02          	vmovsd %xmm0,(%rdx)
  405aee:	72 23                	jb     405b13 <main+0x1c03>
  405af0:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
  405af4:	c5 f1 54 0d e4 8b 00 	vandpd 0x8be4(%rip),%xmm1,%xmm1        # 40e6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405afb:	00 
  405afc:	c5 f3 59 0d fc 8a 00 	vmulsd 0x8afc(%rip),%xmm1,%xmm1        # 40e600 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  405b03:	00 
  405b04:	c5 f9 54 05 d4 8b 00 	vandpd 0x8bd4(%rip),%xmm0,%xmm0        # 40e6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  405b0b:	00 
  405b0c:	c5 f9 2f c8          	vcomisd %xmm0,%xmm1
  405b10:	0f 93 c0             	setae  %al
  405b13:	48 8b 95 68 f6 ff ff 	mov    -0x998(%rbp),%rdx
  405b1a:	20 02                	and    %al,(%rdx)
  405b1c:	48 8b 85 70 f6 ff ff 	mov    -0x990(%rbp),%rax
  405b23:	48 89 08             	mov    %rcx,(%rax)
  405b26:	31 c0                	xor    %eax,%eax
  405b28:	e9 6f fa ff ff       	jmpq   40559c <main+0x168c>
  405b2d:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  405b31:	c5 fb 2a c2          	vcvtsi2sd %edx,%xmm0,%xmm0
  405b35:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  405b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405b40:	c4 e2 e1 b9 85 18 f4 	vfmadd231sd -0xbe8(%rbp),%xmm3,%xmm0
  405b47:	ff ff 
  405b49:	ff c8                	dec    %eax
  405b4b:	75 f3                	jne    405b40 <main+0x1c30>
  405b4d:	62 b2 fd 08 b9 e2    	vfmadd231sd %xmm18,%xmm0,%xmm4
  405b53:	e9 cf f2 ff ff       	jmpq   404e27 <main+0xf17>
  405b58:	ba 0a 00 00 00       	mov    $0xa,%edx
  405b5d:	be 07 e4 40 00       	mov    $0x40e407,%esi
  405b62:	bf 80 12 41 00       	mov    $0x411280,%edi
  405b67:	e8 74 d7 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405b6c:	c5 fb 10 85 b8 f5 ff 	vmovsd -0xa48(%rbp),%xmm0
  405b73:	ff 
  405b74:	bf 80 12 41 00       	mov    $0x411280,%edi
  405b79:	c5 fb 5c 85 48 f5 ff 	vsubsd -0xab8(%rbp),%xmm0,%xmm0
  405b80:	ff 
  405b81:	e8 6a d8 ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  405b86:	ba 13 00 00 00       	mov    $0x13,%edx
  405b8b:	be 12 e4 40 00       	mov    $0x40e412,%esi
  405b90:	48 89 c7             	mov    %rax,%rdi
  405b93:	49 89 c4             	mov    %rax,%r12
  405b96:	e8 45 d7 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405b9b:	c5 fb 10 8d c0 f5 ff 	vmovsd -0xa40(%rbp),%xmm1
  405ba2:	ff 
  405ba3:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
  405ba7:	c5 f9 2f e9          	vcomisd %xmm1,%xmm5
  405bab:	c5 fb 10 05 65 8a 00 	vmovsd 0x8a65(%rip),%xmm0        # 40e618 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  405bb2:	00 
  405bb3:	77 08                	ja     405bbd <main+0x1cad>
  405bb5:	c5 f3 5c 85 50 f5 ff 	vsubsd -0xab0(%rbp),%xmm1,%xmm0
  405bbc:	ff 
  405bbd:	4c 89 e7             	mov    %r12,%rdi
  405bc0:	e8 2b d8 ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  405bc5:	ba 11 00 00 00       	mov    $0x11,%edx
  405bca:	be 26 e4 40 00       	mov    $0x40e426,%esi
  405bcf:	48 89 c7             	mov    %rax,%rdi
  405bd2:	49 89 c4             	mov    %rax,%r12
  405bd5:	e8 06 d7 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405bda:	c5 fb 10 85 c8 f5 ff 	vmovsd -0xa38(%rbp),%xmm0
  405be1:	ff 
  405be2:	4c 89 e7             	mov    %r12,%rdi
  405be5:	c5 fb 5d 85 58 f5 ff 	vminsd -0xaa8(%rbp),%xmm0,%xmm0
  405bec:	ff 
  405bed:	e8 fe d7 ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  405bf2:	ba 13 00 00 00       	mov    $0x13,%edx
  405bf7:	be 38 e4 40 00       	mov    $0x40e438,%esi
  405bfc:	48 89 c7             	mov    %rax,%rdi
  405bff:	49 89 c4             	mov    %rax,%r12
  405c02:	e8 d9 d6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405c07:	8b b5 d0 f5 ff ff    	mov    -0xa30(%rbp),%esi
  405c0d:	4c 89 e7             	mov    %r12,%rdi
  405c10:	e8 2b d8 ff ff       	callq  403440 <_ZNSolsEi@plt>
  405c15:	e9 25 fd ff ff       	jmpq   40593f <main+0x1a2f>
  405c1a:	84 c0                	test   %al,%al
  405c1c:	74 07                	je     405c25 <main+0x1d15>
  405c1e:	44 88 9d 2d f4 ff ff 	mov    %r11b,-0xbd3(%rbp)
  405c25:	80 bd 25 f4 ff ff 00 	cmpb   $0x0,-0xbdb(%rbp)
  405c2c:	74 57                	je     405c85 <main+0x1d75>
  405c2e:	48 8b 85 58 f4 ff ff 	mov    -0xba8(%rbp),%rax
  405c35:	48 8b 9d c0 f3 ff ff 	mov    -0xc40(%rbp),%rbx
  405c3c:	0f b6 8d 2d f4 ff ff 	movzbl -0xbd3(%rbp),%ecx
  405c43:	31 d2                	xor    %edx,%edx
  405c45:	48 39 d8             	cmp    %rbx,%rax
  405c48:	72 17                	jb     405c61 <main+0x1d51>
  405c4a:	be 06 00 00 00       	mov    $0x6,%esi
  405c4f:	c4 e2 c9 f7 95 38 f4 	shlx   %rsi,-0xbc8(%rbp),%rdx
  405c56:	ff ff 
  405c58:	48 01 da             	add    %rbx,%rdx
  405c5b:	48 39 d0             	cmp    %rdx,%rax
  405c5e:	0f 92 c2             	setb   %dl
  405c61:	48 2b 85 c0 f3 ff ff 	sub    -0xc40(%rbp),%rax
  405c68:	48 c1 f8 06          	sar    $0x6,%rax
  405c6c:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  405c70:	c4 e1 cb 2a c0       	vcvtsi2sd %rax,%xmm6,%xmm0
  405c75:	21 ca                	and    %ecx,%edx
  405c77:	88 95 2d f4 ff ff    	mov    %dl,-0xbd3(%rbp)
  405c7d:	c5 fb 11 85 70 f4 ff 	vmovsd %xmm0,-0xb90(%rbp)
  405c84:	ff 
  405c85:	ba 0d 00 00 00       	mov    $0xd,%edx
  405c8a:	be 4c e4 40 00       	mov    $0x40e44c,%esi
  405c8f:	bf 80 12 41 00       	mov    $0x411280,%edi
  405c94:	e8 47 d6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405c99:	c5 fb 10 85 70 f4 ff 	vmovsd -0xb90(%rbp),%xmm0
  405ca0:	ff 
  405ca1:	bf 80 12 41 00       	mov    $0x411280,%edi
  405ca6:	e8 45 d7 ff ff       	callq  4033f0 <_ZNSo9_M_insertIdEERSoT_@plt>
  405cab:	ba 09 00 00 00       	mov    $0x9,%edx
  405cb0:	be 5a e4 40 00       	mov    $0x40e45a,%esi
  405cb5:	48 89 c7             	mov    %rax,%rdi
  405cb8:	49 89 c4             	mov    %rax,%r12
  405cbb:	e8 20 d6 ff ff       	callq  4032e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405cc0:	80 bd 2d f4 ff ff 00 	cmpb   $0x0,-0xbd3(%rbp)
  405cc7:	be 7c e2 40 00       	mov    $0x40e27c,%esi
  405ccc:	b8 81 e2 40 00       	mov    $0x40e281,%eax
  405cd1:	48 0f 44 f0          	cmove  %rax,%rsi
  405cd5:	4c 89 e7             	mov    %r12,%rdi
  405cd8:	e8 b3 d5 ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  405cdd:	48 89 c7             	mov    %rax,%rdi
  405ce0:	be 64 e4 40 00       	mov    $0x40e464,%esi
  405ce5:	e8 a6 d5 ff ff       	callq  403290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  405cea:	48 8b bd 40 f4 ff ff 	mov    -0xbc0(%rbp),%rdi
  405cf1:	e8 0a d6 ff ff       	callq  403300 <free@plt>
  405cf6:	48 8b bd 48 f4 ff ff 	mov    -0xbb8(%rbp),%rdi
  405cfd:	e8 fe d5 ff ff       	callq  403300 <free@plt>
  405d02:	48 8b bd 50 f4 ff ff 	mov    -0xbb0(%rbp),%rdi
  405d09:	e8 f2 d5 ff ff       	callq  403300 <free@plt>
  405d0e:	48 8b bd c0 f3 ff ff 	mov    -0xc40(%rbp),%rdi
  405d15:	e8 e6 d5 ff ff       	callq  403300 <free@plt>
  405d1a:	48 8b 9d 80 f4 ff ff 	mov    -0xb80(%rbp),%rbx
  405d21:	4c 8b a5 88 f4 ff ff 	mov    -0xb78(%rbp),%r12
  405d28:	eb 0c                	jmp    405d36 <main+0x1e26>
  405d2a:	48 8b 3b             	mov    (%rbx),%rdi
  405d2d:	48 83 c3 08          	add    $0x8,%rbx
  405d31:	e8 ca d5 ff ff       	callq  403300 <free@plt>
  405d36:	4c 39 e3             	cmp    %r12,%rbx
  405d39:	75 ef                	jne    405d2a <main+0x1e1a>
  405d3b:	44 0f b6 a5 2d f4 ff 	movzbl -0xbd3(%rbp),%r12d
  405d42:	ff 
  405d43:	48 8b bd 20 f5 ff ff 	mov    -0xae0(%rbp),%rdi
  405d4a:	41 83 f4 01          	xor    $0x1,%r12d
  405d4e:	48 8d 85 30 f5 ff ff 	lea    -0xad0(%rbp),%rax
  405d55:	45 0f b6 e4          	movzbl %r12b,%r12d
  405d59:	48 39 c7             	cmp    %rax,%rdi
  405d5c:	74 10                	je     405d6e <main+0x1e5e>
  405d5e:	48 8b 85 30 f5 ff ff 	mov    -0xad0(%rbp),%rax
  405d65:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405d69:	e8 42 d5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405d6e:	48 8b bd 00 f5 ff ff 	mov    -0xb00(%rbp),%rdi
  405d75:	48 8d 85 10 f5 ff ff 	lea    -0xaf0(%rbp),%rax
  405d7c:	48 39 c7             	cmp    %rax,%rdi
  405d7f:	74 10                	je     405d91 <main+0x1e81>
  405d81:	48 8b 85 10 f5 ff ff 	mov    -0xaf0(%rbp),%rax
  405d88:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405d8c:	e8 1f d5 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405d91:	48 8b bd e0 f4 ff ff 	mov    -0xb20(%rbp),%rdi
  405d98:	48 8d 85 f0 f4 ff ff 	lea    -0xb10(%rbp),%rax
  405d9f:	48 39 c7             	cmp    %rax,%rdi
  405da2:	74 10                	je     405db4 <main+0x1ea4>
  405da4:	48 8b 85 f0 f4 ff ff 	mov    -0xb10(%rbp),%rax
  405dab:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405daf:	e8 fc d4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405db4:	48 8b bd a0 f4 ff ff 	mov    -0xb60(%rbp),%rdi
  405dbb:	48 85 ff             	test   %rdi,%rdi
  405dbe:	0f 84 78 ee ff ff    	je     404c3c <main+0xd2c>
  405dc4:	48 8b b5 b0 f4 ff ff 	mov    -0xb50(%rbp),%rsi
  405dcb:	48 29 fe             	sub    %rdi,%rsi
  405dce:	e8 dd d4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405dd3:	e9 64 ee ff ff       	jmpq   404c3c <main+0xd2c>
  405dd8:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
  405ddf:	ff ff 1f 
  405de2:	49 39 c7             	cmp    %rax,%r15
  405de5:	0f 87 ba 00 00 00    	ja     405ea5 <main+0x1f95>
  405deb:	4e 8d 34 bd 00 00 00 	lea    0x0(,%r15,4),%r14
  405df2:	00 
  405df3:	4c 89 f7             	mov    %r14,%rdi
  405df6:	c5 f8 77             	vzeroupper 
  405df9:	e8 a2 d4 ff ff       	callq  4032a0 <_Znwm@plt>
  405dfe:	be ff 00 00 00       	mov    $0xff,%esi
  405e03:	48 89 c7             	mov    %rax,%rdi
  405e06:	4c 89 f2             	mov    %r14,%rdx
  405e09:	4a 8d 1c 30          	lea    (%rax,%r14,1),%rbx
  405e0d:	e8 6e d3 ff ff       	callq  403180 <memset@plt>
  405e12:	c4 e1 f9 6e f8       	vmovq  %rax,%xmm7
  405e17:	48 8b bd 70 f5 ff ff 	mov    -0xa90(%rbp),%rdi
  405e1e:	c4 e3 c1 22 c3 01    	vpinsrq $0x1,%rbx,%xmm7,%xmm0
  405e24:	48 8b b5 80 f5 ff ff 	mov    -0xa80(%rbp),%rsi
  405e2b:	c5 f9 7f 85 70 f5 ff 	vmovdqa %xmm0,-0xa90(%rbp)
  405e32:	ff 
  405e33:	48 89 9d 80 f5 ff ff 	mov    %rbx,-0xa80(%rbp)
  405e3a:	48 85 ff             	test   %rdi,%rdi
  405e3d:	0f 84 e1 e8 ff ff    	je     404724 <main+0x814>
  405e43:	48 29 fe             	sub    %rdi,%rsi
  405e46:	e8 65 d4 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  405e4b:	e9 d4 e8 ff ff       	jmpq   404724 <main+0x814>
  405e50:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  405e56:	e9 59 ff ff ff       	jmpq   405db4 <main+0x1ea4>
  405e5b:	31 f6                	xor    %esi,%esi
  405e5d:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  405e64:	e8 97 3c 00 00       	callq  409b00 <_ZZ4mainENKUlmE_clEm>
  405e69:	31 f6                	xor    %esi,%esi
  405e6b:	48 8d bd 00 f6 ff ff 	lea    -0xa00(%rbp),%rdi
  405e72:	e8 89 3c 00 00       	callq  409b00 <_ZZ4mainENKUlmE_clEm>
  405e77:	e9 5b f0 ff ff       	jmpq   404ed7 <main+0xfc7>
  405e7c:	48 c7 85 00 f4 ff ff 	movq   $0x0,-0xc00(%rbp)
  405e83:	00 00 00 00 
  405e87:	45 31 ff             	xor    %r15d,%r15d
  405e8a:	31 ff                	xor    %edi,%edi
  405e8c:	e9 5f ec ff ff       	jmpq   404af0 <main+0xbe0>
  405e91:	bf 68 e4 40 00       	mov    $0x40e468,%edi
  405e96:	e8 c5 d2 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  405e9b:	bf c0 e2 40 00       	mov    $0x40e2c0,%edi
  405ea0:	e8 db d4 ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  405ea5:	bf 68 e4 40 00       	mov    $0x40e468,%edi
  405eaa:	c5 f8 77             	vzeroupper 
  405ead:	e8 ae d2 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  405eb2:	bf 10 e0 40 00       	mov    $0x40e010,%edi
  405eb7:	e8 34 d3 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  405ebc:	bf c0 e2 40 00       	mov    $0x40e2c0,%edi
  405ec1:	e8 da d2 ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  405ec6:	bf af e2 40 00       	mov    $0x40e2af,%edi
  405ecb:	e8 b0 d4 ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  405ed0:	4c 89 ff             	mov    %r15,%rdi
  405ed3:	e9 41 e2 ff ff       	jmpq   404119 <main+0x209>
  405ed8:	bf af e2 40 00       	mov    $0x40e2af,%edi
  405edd:	e8 be d2 ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  405ee2:	bf 10 e0 40 00       	mov    $0x40e010,%edi
  405ee7:	e8 04 d3 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  405eec:	48 89 c3             	mov    %rax,%rbx
  405eef:	49 89 d6             	mov    %rdx,%r14
  405ef2:	c5 f8 77             	vzeroupper 
  405ef5:	e9 3d de ff ff       	jmpq   403d37 <main.cold+0x3b>
  405efa:	48 89 c3             	mov    %rax,%rbx
  405efd:	49 89 d6             	mov    %rdx,%r14
  405f00:	e9 08 de ff ff       	jmpq   403d0d <main.cold+0x11>
  405f05:	48 89 c7             	mov    %rax,%rdi
  405f08:	49 89 d6             	mov    %rdx,%r14
  405f0b:	c5 f8 77             	vzeroupper 
  405f0e:	e9 66 de ff ff       	jmpq   403d79 <main.cold+0x7d>
  405f13:	48 89 c3             	mov    %rax,%rbx
  405f16:	49 89 d6             	mov    %rdx,%r14
  405f19:	e9 ef dd ff ff       	jmpq   403d0d <main.cold+0x11>
  405f1e:	48 89 c3             	mov    %rax,%rbx
  405f21:	49 89 d6             	mov    %rdx,%r14
  405f24:	c5 f8 77             	vzeroupper 
  405f27:	e9 27 de ff ff       	jmpq   403d53 <main.cold+0x57>
  405f2c:	e9 df de ff ff       	jmpq   403e10 <main.cold+0x114>
  405f31:	48 89 c3             	mov    %rax,%rbx
  405f34:	49 89 d4             	mov    %rdx,%r12
  405f37:	e9 27 df ff ff       	jmpq   403e63 <main.cold+0x167>
  405f3c:	48 89 c3             	mov    %rax,%rbx
  405f3f:	49 89 d6             	mov    %rdx,%r14
  405f42:	48 8d 85 70 f5 ff ff 	lea    -0xa90(%rbp),%rax
  405f49:	48 89 85 10 f4 ff ff 	mov    %rax,-0xbf0(%rbp)
  405f50:	c5 f8 77             	vzeroupper 
  405f53:	e9 fa de ff ff       	jmpq   403e52 <main.cold+0x156>
  405f58:	48 89 c3             	mov    %rax,%rbx
  405f5b:	49 89 d6             	mov    %rdx,%r14
  405f5e:	e9 7a df ff ff       	jmpq   403edd <main.cold+0x1e1>
  405f63:	48 89 c3             	mov    %rax,%rbx
  405f66:	49 89 d6             	mov    %rdx,%r14
  405f69:	e9 8e dd ff ff       	jmpq   403cfc <main.cold>
  405f6e:	48 89 c3             	mov    %rax,%rbx
  405f71:	49 89 d4             	mov    %rdx,%r12
  405f74:	c5 f8 77             	vzeroupper 
  405f77:	e9 0d df ff ff       	jmpq   403e89 <main.cold+0x18d>
  405f7c:	48 89 c3             	mov    %rax,%rbx
  405f7f:	49 89 d4             	mov    %rdx,%r12
  405f82:	c5 f8 77             	vzeroupper 
  405f85:	e9 22 df ff ff       	jmpq   403eac <main.cold+0x1b0>
  405f8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000405f90 <_GLOBAL__sub_I__Z8clock_nsv>:
  405f90:	48 83 ec 08          	sub    $0x8,%rsp
  405f94:	bf b1 14 41 00       	mov    $0x4114b1,%edi
  405f99:	e8 12 d4 ff ff       	callq  4033b0 <_ZNSt8ios_base4InitC1Ev@plt>
  405f9e:	ba 08 e0 40 00       	mov    $0x40e008,%edx
  405fa3:	be b1 14 41 00       	mov    $0x4114b1,%esi
  405fa8:	bf c0 34 40 00       	mov    $0x4034c0,%edi
  405fad:	48 83 c4 08          	add    $0x8,%rsp
  405fb1:	e9 aa d2 ff ff       	jmpq   403260 <__cxa_atexit@plt>
  405fb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405fbd:	00 00 00 

0000000000405fc0 <_start>:
  405fc0:	f3 0f 1e fa          	endbr64 
  405fc4:	31 ed                	xor    %ebp,%ebp
  405fc6:	49 89 d1             	mov    %rdx,%r9
  405fc9:	5e                   	pop    %rsi
  405fca:	48 89 e2             	mov    %rsp,%rdx
  405fcd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  405fd1:	50                   	push   %rax
  405fd2:	54                   	push   %rsp
  405fd3:	45 31 c0             	xor    %r8d,%r8d
  405fd6:	31 c9                	xor    %ecx,%ecx
  405fd8:	48 c7 c7 10 3f 40 00 	mov    $0x403f10,%rdi
  405fdf:	ff 15 e3 af 00 00    	callq  *0xafe3(%rip)        # 410fc8 <__libc_start_main@GLIBC_2.34>
  405fe5:	f4                   	hlt    
  405fe6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405fed:	00 00 00 

0000000000405ff0 <_dl_relocate_static_pie>:
  405ff0:	f3 0f 1e fa          	endbr64 
  405ff4:	c3                   	retq   
  405ff5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405ffc:	00 00 00 
  405fff:	90                   	nop

0000000000406000 <deregister_tm_clones>:
  406000:	48 8d 3d 69 b2 00 00 	lea    0xb269(%rip),%rdi        # 411270 <__TMC_END__>
  406007:	48 8d 05 62 b2 00 00 	lea    0xb262(%rip),%rax        # 411270 <__TMC_END__>
  40600e:	48 39 f8             	cmp    %rdi,%rax
  406011:	74 15                	je     406028 <deregister_tm_clones+0x28>
  406013:	48 8b 05 b6 af 00 00 	mov    0xafb6(%rip),%rax        # 410fd0 <_ITM_deregisterTMCloneTable>
  40601a:	48 85 c0             	test   %rax,%rax
  40601d:	74 09                	je     406028 <deregister_tm_clones+0x28>
  40601f:	ff e0                	jmpq   *%rax
  406021:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406028:	c3                   	retq   
  406029:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406030 <register_tm_clones>:
  406030:	48 8d 3d 39 b2 00 00 	lea    0xb239(%rip),%rdi        # 411270 <__TMC_END__>
  406037:	48 8d 35 32 b2 00 00 	lea    0xb232(%rip),%rsi        # 411270 <__TMC_END__>
  40603e:	48 29 fe             	sub    %rdi,%rsi
  406041:	48 89 f0             	mov    %rsi,%rax
  406044:	48 c1 ee 3f          	shr    $0x3f,%rsi
  406048:	48 c1 f8 03          	sar    $0x3,%rax
  40604c:	48 01 c6             	add    %rax,%rsi
  40604f:	48 d1 fe             	sar    %rsi
  406052:	74 14                	je     406068 <register_tm_clones+0x38>
  406054:	48 8b 05 85 af 00 00 	mov    0xaf85(%rip),%rax        # 410fe0 <_ITM_registerTMCloneTable>
  40605b:	48 85 c0             	test   %rax,%rax
  40605e:	74 08                	je     406068 <register_tm_clones+0x38>
  406060:	ff e0                	jmpq   *%rax
  406062:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406068:	c3                   	retq   
  406069:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406070 <__do_global_dtors_aux>:
  406070:	f3 0f 1e fa          	endbr64 
  406074:	80 3d 35 b4 00 00 00 	cmpb   $0x0,0xb435(%rip)        # 4114b0 <completed.0>
  40607b:	75 13                	jne    406090 <__do_global_dtors_aux+0x20>
  40607d:	55                   	push   %rbp
  40607e:	48 89 e5             	mov    %rsp,%rbp
  406081:	e8 7a ff ff ff       	callq  406000 <deregister_tm_clones>
  406086:	c6 05 23 b4 00 00 01 	movb   $0x1,0xb423(%rip)        # 4114b0 <completed.0>
  40608d:	5d                   	pop    %rbp
  40608e:	c3                   	retq   
  40608f:	90                   	nop
  406090:	c3                   	retq   
  406091:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  406098:	00 00 00 00 
  40609c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004060a0 <frame_dummy>:
  4060a0:	f3 0f 1e fa          	endbr64 
  4060a4:	eb 8a                	jmp    406030 <register_tm_clones>
  4060a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4060ad:	00 00 00 

00000000004060b0 <main._omp_fn.1>:
  4060b0:	41 54                	push   %r12
  4060b2:	55                   	push   %rbp
  4060b3:	53                   	push   %rbx
  4060b4:	48 8b 07             	mov    (%rdi),%rax
  4060b7:	48 8b 18             	mov    (%rax),%rbx
  4060ba:	48 85 db             	test   %rbx,%rbx
  4060bd:	0f 84 ef 00 00 00    	je     4061b2 <main._omp_fn.1+0x102>
  4060c3:	49 89 fc             	mov    %rdi,%r12
  4060c6:	e8 c5 d3 ff ff       	callq  403490 <omp_get_num_threads@plt>
  4060cb:	89 c5                	mov    %eax,%ebp
  4060cd:	e8 0e d3 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  4060d2:	48 63 c8             	movslq %eax,%rcx
  4060d5:	48 63 f5             	movslq %ebp,%rsi
  4060d8:	48 89 d8             	mov    %rbx,%rax
  4060db:	31 d2                	xor    %edx,%edx
  4060dd:	48 f7 f6             	div    %rsi
  4060e0:	48 39 d1             	cmp    %rdx,%rcx
  4060e3:	0f 82 d7 00 00 00    	jb     4061c0 <main._omp_fn.1+0x110>
  4060e9:	48 0f af c8          	imul   %rax,%rcx
  4060ed:	48 01 d1             	add    %rdx,%rcx
  4060f0:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
  4060f4:	48 39 f1             	cmp    %rsi,%rcx
  4060f7:	0f 83 b5 00 00 00    	jae    4061b2 <main._omp_fn.1+0x102>
  4060fd:	49 8b 44 24 08       	mov    0x8(%r12),%rax
  406102:	c5 fb 10 0d 66 84 00 	vmovsd 0x8466(%rip),%xmm1        # 40e570 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd0>
  406109:	00 
  40610a:	48 8b 38             	mov    (%rax),%rdi
  40610d:	49 8b 44 24 10       	mov    0x10(%r12),%rax
  406112:	c5 fb 10 1d 5e 84 00 	vmovsd 0x845e(%rip),%xmm3        # 40e578 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  406119:	00 
  40611a:	4c 8b 00             	mov    (%rax),%r8
  40611d:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  406122:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  406126:	4c 8b 08             	mov    (%rax),%r9
  406129:	4d 85 c9             	test   %r9,%r9
  40612c:	0f 84 9e 00 00 00    	je     4061d0 <main._omp_fn.1+0x120>
  406132:	c5 fb 10 25 46 84 00 	vmovsd 0x8446(%rip),%xmm4        # 40e580 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  406139:	00 
  40613a:	49 bb f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r11
  406141:	f0 f0 f0 
  406144:	49 ba c5 4e ec c4 4e 	movabs $0x4ec4ec4ec4ec4ec5,%r10
  40614b:	ec c4 4e 
  40614e:	66 90                	xchg   %ax,%ax
  406150:	48 89 c8             	mov    %rcx,%rax
  406153:	49 f7 e3             	mul    %r11
  406156:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  40615d:	00 
  40615e:	48 89 d0             	mov    %rdx,%rax
  406161:	48 c1 e8 04          	shr    $0x4,%rax
  406165:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  406169:	48 01 c2             	add    %rax,%rdx
  40616c:	48 89 c8             	mov    %rcx,%rax
  40616f:	48 29 d0             	sub    %rdx,%rax
  406172:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  406177:	48 89 c8             	mov    %rcx,%rax
  40617a:	49 f7 e2             	mul    %r10
  40617d:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  406182:	48 c1 ea 02          	shr    $0x2,%rdx
  406186:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
  40618a:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
  40618e:	48 89 c8             	mov    %rcx,%rax
  406191:	48 29 d0             	sub    %rdx,%rax
  406194:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  40619a:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  40619f:	c4 e2 d9 9d c1       	vfnmadd132sd %xmm1,%xmm4,%xmm0
  4061a4:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  4061aa:	48 ff c1             	inc    %rcx
  4061ad:	48 39 ce             	cmp    %rcx,%rsi
  4061b0:	75 9e                	jne    406150 <main._omp_fn.1+0xa0>
  4061b2:	5b                   	pop    %rbx
  4061b3:	5d                   	pop    %rbp
  4061b4:	41 5c                	pop    %r12
  4061b6:	c3                   	retq   
  4061b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4061be:	00 00 
  4061c0:	48 ff c0             	inc    %rax
  4061c3:	31 d2                	xor    %edx,%edx
  4061c5:	e9 1f ff ff ff       	jmpq   4060e9 <main._omp_fn.1+0x39>
  4061ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4061d0:	49 b9 f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r9
  4061d7:	f0 f0 f0 
  4061da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4061e0:	48 89 c8             	mov    %rcx,%rax
  4061e3:	49 f7 e1             	mul    %r9
  4061e6:	48 c7 04 cf 00 00 00 	movq   $0x0,(%rdi,%rcx,8)
  4061ed:	00 
  4061ee:	48 89 d0             	mov    %rdx,%rax
  4061f1:	48 c1 e8 04          	shr    $0x4,%rax
  4061f5:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  4061f9:	48 01 c2             	add    %rax,%rdx
  4061fc:	48 89 c8             	mov    %rcx,%rax
  4061ff:	48 29 d0             	sub    %rdx,%rax
  406202:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
  406207:	c4 e2 e1 99 c1       	vfmadd132sd %xmm1,%xmm3,%xmm0
  40620c:	c4 c1 7b 11 04 c8    	vmovsd %xmm0,(%r8,%rcx,8)
  406212:	48 ff c1             	inc    %rcx
  406215:	48 39 ce             	cmp    %rcx,%rsi
  406218:	75 c6                	jne    4061e0 <main._omp_fn.1+0x130>
  40621a:	5b                   	pop    %rbx
  40621b:	5d                   	pop    %rbp
  40621c:	41 5c                	pop    %r12
  40621e:	c3                   	retq   
  40621f:	90                   	nop

0000000000406220 <main._omp_fn.0>:
  406220:	53                   	push   %rbx
  406221:	48 89 fb             	mov    %rdi,%rbx
  406224:	e8 37 ce ff ff       	callq  403060 <GOMP_single_start@plt>
  406229:	84 c0                	test   %al,%al
  40622b:	74 0e                	je     40623b <main._omp_fn.0+0x1b>
  40622d:	e8 5e d2 ff ff       	callq  403490 <omp_get_num_threads@plt>
  406232:	41 89 c0             	mov    %eax,%r8d
  406235:	48 8b 03             	mov    (%rbx),%rax
  406238:	44 89 00             	mov    %r8d,(%rax)
  40623b:	5b                   	pop    %rbx
  40623c:	e9 2f d2 ff ff       	jmpq   403470 <GOMP_barrier@plt>
  406241:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  406248:	00 00 00 00 
  40624c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406250 <_ZZ4mainENKUlmE_clEm._omp_fn.0>:
  406250:	55                   	push   %rbp
  406251:	48 89 e5             	mov    %rsp,%rbp
  406254:	41 55                	push   %r13
  406256:	41 54                	push   %r12
  406258:	53                   	push   %rbx
  406259:	4c 8b 27             	mov    (%rdi),%r12
  40625c:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  406260:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  406265:	4c 8b 28             	mov    (%rax),%r13
  406268:	4d 85 ed             	test   %r13,%r13
  40626b:	0f 84 42 01 00 00    	je     4063b3 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406271:	e8 1a d2 ff ff       	callq  403490 <omp_get_num_threads@plt>
  406276:	89 c3                	mov    %eax,%ebx
  406278:	e8 63 d1 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40627d:	48 63 c8             	movslq %eax,%rcx
  406280:	48 63 f3             	movslq %ebx,%rsi
  406283:	4c 89 e8             	mov    %r13,%rax
  406286:	31 d2                	xor    %edx,%edx
  406288:	48 f7 f6             	div    %rsi
  40628b:	48 39 d1             	cmp    %rdx,%rcx
  40628e:	0f 82 2c 01 00 00    	jb     4063c0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x170>
  406294:	48 0f af c8          	imul   %rax,%rcx
  406298:	48 01 ca             	add    %rcx,%rdx
  40629b:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  40629f:	48 39 ca             	cmp    %rcx,%rdx
  4062a2:	0f 83 0b 01 00 00    	jae    4063b3 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  4062a8:	4d 8b 44 24 20       	mov    0x20(%r12),%r8
  4062ad:	49 8b 7c 24 30       	mov    0x30(%r12),%rdi
  4062b2:	4d 8b 08             	mov    (%r8),%r9
  4062b5:	48 8b 3f             	mov    (%rdi),%rdi
  4062b8:	4c 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%r8
  4062bf:	00 
  4062c0:	49 8b 74 24 28       	mov    0x28(%r12),%rsi
  4062c5:	4f 8d 14 01          	lea    (%r9,%r8,1),%r10
  4062c9:	4d 8d 58 08          	lea    0x8(%r8),%r11
  4062cd:	4e 8d 24 1f          	lea    (%rdi,%r11,1),%r12
  4062d1:	4c 89 d3             	mov    %r10,%rbx
  4062d4:	4c 29 e3             	sub    %r12,%rbx
  4062d7:	48 8b 36             	mov    (%rsi),%rsi
  4062da:	48 83 fb 10          	cmp    $0x10,%rbx
  4062de:	0f 97 c3             	seta   %bl
  4062e1:	4d 89 d4             	mov    %r10,%r12
  4062e4:	49 01 f3             	add    %rsi,%r11
  4062e7:	4d 29 dc             	sub    %r11,%r12
  4062ea:	49 83 fc 10          	cmp    $0x10,%r12
  4062ee:	41 0f 97 c3          	seta   %r11b
  4062f2:	44 84 db             	test   %r11b,%bl
  4062f5:	0f 84 d5 00 00 00    	je     4063d0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x180>
  4062fb:	48 83 f8 01          	cmp    $0x1,%rax
  4062ff:	0f 84 cb 00 00 00    	je     4063d0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x180>
  406305:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
  406309:	48 83 f9 02          	cmp    $0x2,%rcx
  40630d:	0f 86 f2 00 00 00    	jbe    406405 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1b5>
  406313:	49 89 c3             	mov    %rax,%r11
  406316:	49 c1 eb 02          	shr    $0x2,%r11
  40631a:	c4 e2 7d 19 0d 65 82 	vbroadcastsd 0x8265(%rip),%ymm1        # 40e588 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  406321:	00 00 
  406323:	4a 8d 1c 06          	lea    (%rsi,%r8,1),%rbx
  406327:	49 c1 e3 05          	shl    $0x5,%r11
  40632b:	49 01 f8             	add    %rdi,%r8
  40632e:	31 c9                	xor    %ecx,%ecx
  406330:	c4 c1 7d 10 04 08    	vmovupd (%r8,%rcx,1),%ymm0
  406336:	c4 e2 f5 a8 04 0b    	vfmadd213pd (%rbx,%rcx,1),%ymm1,%ymm0
  40633c:	c4 c1 7d 11 04 0a    	vmovupd %ymm0,(%r10,%rcx,1)
  406342:	48 83 c1 20          	add    $0x20,%rcx
  406346:	49 39 cb             	cmp    %rcx,%r11
  406349:	75 e5                	jne    406330 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0xe0>
  40634b:	49 89 c0             	mov    %rax,%r8
  40634e:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
  406352:	4c 01 c2             	add    %r8,%rdx
  406355:	48 89 d1             	mov    %rdx,%rcx
  406358:	4c 39 c0             	cmp    %r8,%rax
  40635b:	0f 84 9f 00 00 00    	je     406400 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1b0>
  406361:	4c 29 c0             	sub    %r8,%rax
  406364:	48 83 f8 01          	cmp    $0x1,%rax
  406368:	0f 84 9f 00 00 00    	je     40640d <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x1bd>
  40636e:	c5 f8 77             	vzeroupper 
  406371:	c5 f9 10 04 d7       	vmovupd (%rdi,%rdx,8),%xmm0
  406376:	c5 f9 10 1c d6       	vmovupd (%rsi,%rdx,8),%xmm3
  40637b:	62 f2 e5 18 98 05 03 	vfmadd132pd 0x8203(%rip){1to2},%xmm3,%xmm0        # 40e588 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  406382:	82 00 00 
  406385:	c4 c1 79 11 04 d1    	vmovupd %xmm0,(%r9,%rdx,8)
  40638b:	48 89 c2             	mov    %rax,%rdx
  40638e:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
  406392:	48 01 d1             	add    %rdx,%rcx
  406395:	48 39 d0             	cmp    %rdx,%rax
  406398:	74 19                	je     4063b3 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  40639a:	c5 fb 10 04 cf       	vmovsd (%rdi,%rcx,8),%xmm0
  40639f:	c5 fb 10 14 ce       	vmovsd (%rsi,%rcx,8),%xmm2
  4063a4:	c4 e2 e9 99 05 db 81 	vfmadd132sd 0x81db(%rip),%xmm2,%xmm0        # 40e588 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  4063ab:	00 00 
  4063ad:	c4 c1 7b 11 04 c9    	vmovsd %xmm0,(%r9,%rcx,8)
  4063b3:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  4063b7:	5b                   	pop    %rbx
  4063b8:	41 5c                	pop    %r12
  4063ba:	41 5d                	pop    %r13
  4063bc:	5d                   	pop    %rbp
  4063bd:	c3                   	retq   
  4063be:	66 90                	xchg   %ax,%ax
  4063c0:	48 ff c0             	inc    %rax
  4063c3:	31 d2                	xor    %edx,%edx
  4063c5:	e9 ca fe ff ff       	jmpq   406294 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x44>
  4063ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4063d0:	c5 fb 10 0d b0 81 00 	vmovsd 0x81b0(%rip),%xmm1        # 40e588 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  4063d7:	00 
  4063d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4063df:	00 
  4063e0:	c5 fb 10 04 d7       	vmovsd (%rdi,%rdx,8),%xmm0
  4063e5:	c4 e2 f1 a9 04 d6    	vfmadd213sd (%rsi,%rdx,8),%xmm1,%xmm0
  4063eb:	c4 c1 7b 11 04 d1    	vmovsd %xmm0,(%r9,%rdx,8)
  4063f1:	48 ff c2             	inc    %rdx
  4063f4:	48 39 d1             	cmp    %rdx,%rcx
  4063f7:	75 e7                	jne    4063e0 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x190>
  4063f9:	eb b8                	jmp    4063b3 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  4063fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  406400:	c5 f8 77             	vzeroupper 
  406403:	eb ae                	jmp    4063b3 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x163>
  406405:	48 89 d1             	mov    %rdx,%rcx
  406408:	e9 64 ff ff ff       	jmpq   406371 <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x121>
  40640d:	c5 f8 77             	vzeroupper 
  406410:	eb 88                	jmp    40639a <_ZZ4mainENKUlmE_clEm._omp_fn.0+0x14a>
  406412:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  406419:	00 00 00 00 
  40641d:	0f 1f 00             	nopl   (%rax)

0000000000406420 <_ZZ4mainENKUlmE_clEm._omp_fn.2>:
  406420:	55                   	push   %rbp
  406421:	48 89 e5             	mov    %rsp,%rbp
  406424:	41 57                	push   %r15
  406426:	41 56                	push   %r14
  406428:	41 55                	push   %r13
  40642a:	41 54                	push   %r12
  40642c:	53                   	push   %rbx
  40642d:	31 db                	xor    %ebx,%ebx
  40642f:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  406433:	48 83 ec 40          	sub    $0x40,%rsp
  406437:	48 8b 07             	mov    (%rdi),%rax
  40643a:	4c 8b 7f 08          	mov    0x8(%rdi),%r15
  40643e:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
  406443:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  406448:	e8 93 cf ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40644d:	48 63 d0             	movslq %eax,%rdx
  406450:	49 8b 47 50          	mov    0x50(%r15),%rax
  406454:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  406459:	4c 8b 20             	mov    (%rax),%r12
  40645c:	49 8b 47 48          	mov    0x48(%r15),%rax
  406460:	49 c1 ec 03          	shr    $0x3,%r12
  406464:	48 8b 00             	mov    (%rax),%rax
  406467:	c4 41 39 57 c0       	vxorpd %xmm8,%xmm8,%xmm8
  40646c:	4c 8b 34 d0          	mov    (%rax,%rdx,8),%r14
  406470:	49 8d 54 24 ff       	lea    -0x1(%r12),%rdx
  406475:	48 c1 ea 06          	shr    $0x6,%rdx
  406479:	48 ff c2             	inc    %rdx
  40647c:	48 c1 e2 09          	shl    $0x9,%rdx
  406480:	4e 8d 2c 32          	lea    (%rdx,%r14,1),%r13
  406484:	0f 1f 40 00          	nopl   0x0(%rax)
  406488:	4d 85 e4             	test   %r12,%r12
  40648b:	0f 84 6f 01 00 00    	je     406600 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x1e0>
  406491:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
  406495:	4c 89 f0             	mov    %r14,%rax
  406498:	62 f1 fd 48 28 c7    	vmovapd %zmm7,%zmm0
  40649e:	62 f1 fd 48 28 f7    	vmovapd %zmm7,%zmm6
  4064a4:	62 f1 fd 48 28 df    	vmovapd %zmm7,%zmm3
  4064aa:	62 f1 fd 48 28 ef    	vmovapd %zmm7,%zmm5
  4064b0:	62 f1 fd 48 28 cf    	vmovapd %zmm7,%zmm1
  4064b6:	62 f1 fd 48 28 e7    	vmovapd %zmm7,%zmm4
  4064bc:	62 f1 fd 48 28 d7    	vmovapd %zmm7,%zmm2
  4064c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4064c8:	62 f1 ed 48 58 10    	vaddpd (%rax),%zmm2,%zmm2
  4064ce:	62 f1 dd 48 58 60 01 	vaddpd 0x40(%rax),%zmm4,%zmm4
  4064d5:	62 f1 f5 48 58 48 02 	vaddpd 0x80(%rax),%zmm1,%zmm1
  4064dc:	62 f1 d5 48 58 68 03 	vaddpd 0xc0(%rax),%zmm5,%zmm5
  4064e3:	62 f1 e5 48 58 58 04 	vaddpd 0x100(%rax),%zmm3,%zmm3
  4064ea:	62 f1 cd 48 58 70 05 	vaddpd 0x140(%rax),%zmm6,%zmm6
  4064f1:	62 f1 fd 48 58 40 06 	vaddpd 0x180(%rax),%zmm0,%zmm0
  4064f8:	62 f1 c5 48 58 78 07 	vaddpd 0x1c0(%rax),%zmm7,%zmm7
  4064ff:	48 05 00 02 00 00    	add    $0x200,%rax
  406505:	49 39 c5             	cmp    %rax,%r13
  406508:	75 be                	jne    4064c8 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0xa8>
  40650a:	62 f1 fd 48 58 c7    	vaddpd %zmm7,%zmm0,%zmm0
  406510:	62 f1 e5 48 58 de    	vaddpd %zmm6,%zmm3,%zmm3
  406516:	62 f1 f5 48 58 cd    	vaddpd %zmm5,%zmm1,%zmm1
  40651c:	62 f1 ed 48 58 d4    	vaddpd %zmm4,%zmm2,%zmm2
  406522:	62 f1 fd 48 58 c3    	vaddpd %zmm3,%zmm0,%zmm0
  406528:	62 f1 f5 48 58 ca    	vaddpd %zmm2,%zmm1,%zmm1
  40652e:	62 f1 fd 48 58 c1    	vaddpd %zmm1,%zmm0,%zmm0
  406534:	62 f3 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm0,%ymm1
  40653b:	c5 f5 58 c8          	vaddpd %ymm0,%ymm1,%ymm1
  40653f:	48 ff c3             	inc    %rbx
  406542:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  406547:	62 f3 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm1,%xmm0
  40654e:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  406552:	bf 01 00 00 00       	mov    $0x1,%edi
  406557:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  40655b:	c5 3b 58 c0          	vaddsd %xmm0,%xmm8,%xmm8
  40655f:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  406563:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  406569:	c5 7b 11 44 24 20    	vmovsd %xmm8,0x20(%rsp)
  40656f:	c5 f8 77             	vzeroupper 
  406572:	e8 09 cd ff ff       	callq  403280 <clock_gettime@plt>
  406577:	48 69 44 24 30 00 ca 	imul   $0x3b9aca00,0x30(%rsp),%rax
  40657e:	9a 3b 
  406580:	c5 7b 10 44 24 20    	vmovsd 0x20(%rsp),%xmm8
  406586:	48 03 44 24 38       	add    0x38(%rsp),%rax
  40658b:	48 39 44 24 18       	cmp    %rax,0x18(%rsp)
  406590:	0f 87 f2 fe ff ff    	ja     406488 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x68>
  406596:	49 8b 47 50          	mov    0x50(%r15),%rax
  40659a:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  40659e:	4c 8b 20             	mov    (%rax),%r12
  4065a1:	62 f1 ff 08 7b c3    	vcvtusi2sd %rbx,%xmm0,%xmm0
  4065a7:	49 8b 47 58          	mov    0x58(%r15),%rax
  4065ab:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4065b0:	48 8b 00             	mov    (%rax),%rax
  4065b3:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  4065b7:	c5 fb 59 04 f8       	vmulsd (%rax,%rdi,8),%xmm0,%xmm0
  4065bc:	4c 0f af e3          	imul   %rbx,%r12
  4065c0:	c5 b9 14 c0          	vunpcklpd %xmm0,%xmm8,%xmm0
  4065c4:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  4065c8:	c5 f9 29 44 24 20    	vmovapd %xmm0,0x20(%rsp)
  4065ce:	e8 bd cb ff ff       	callq  403190 <GOMP_atomic_start@plt>
  4065d3:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4065d8:	c5 f9 28 44 24 20    	vmovapd 0x20(%rsp),%xmm0
  4065de:	4c 01 60 28          	add    %r12,0x28(%rax)
  4065e2:	c5 f9 58 40 30       	vaddpd 0x30(%rax),%xmm0,%xmm0
  4065e7:	c5 f9 11 40 30       	vmovupd %xmm0,0x30(%rax)
  4065ec:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  4065f0:	5b                   	pop    %rbx
  4065f1:	41 5c                	pop    %r12
  4065f3:	41 5d                	pop    %r13
  4065f5:	41 5e                	pop    %r14
  4065f7:	41 5f                	pop    %r15
  4065f9:	5d                   	pop    %rbp
  4065fa:	e9 21 cc ff ff       	jmpq   403220 <GOMP_atomic_end@plt>
  4065ff:	90                   	nop
  406600:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  406604:	e9 2b ff ff ff       	jmpq   406534 <_ZZ4mainENKUlmE_clEm._omp_fn.2+0x114>
  406609:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406610 <_ZZ4mainENKUlmE_clEm._omp_fn.3>:
  406610:	55                   	push   %rbp
  406611:	48 89 e5             	mov    %rsp,%rbp
  406614:	41 56                	push   %r14
  406616:	41 55                	push   %r13
  406618:	41 54                	push   %r12
  40661a:	53                   	push   %rbx
  40661b:	4c 8b 27             	mov    (%rdi),%r12
  40661e:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  406622:	49 8b 44 24 18       	mov    0x18(%r12),%rax
  406627:	48 8b 18             	mov    (%rax),%rbx
  40662a:	48 85 db             	test   %rbx,%rbx
  40662d:	0f 84 b2 01 00 00    	je     4067e5 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x1d5>
  406633:	e8 58 ce ff ff       	callq  403490 <omp_get_num_threads@plt>
  406638:	4c 63 e8             	movslq %eax,%r13
  40663b:	e8 a0 cd ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  406640:	48 63 c8             	movslq %eax,%rcx
  406643:	48 8d 43 3f          	lea    0x3f(%rbx),%rax
  406647:	48 c1 e8 06          	shr    $0x6,%rax
  40664b:	31 d2                	xor    %edx,%edx
  40664d:	49 f7 f5             	div    %r13
  406650:	48 39 d1             	cmp    %rdx,%rcx
  406653:	0f 82 99 01 00 00    	jb     4067f2 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x1e2>
  406659:	48 0f af c8          	imul   %rax,%rcx
  40665d:	48 01 ca             	add    %rcx,%rdx
  406660:	48 01 d0             	add    %rdx,%rax
  406663:	48 39 c2             	cmp    %rax,%rdx
  406666:	0f 83 79 01 00 00    	jae    4067e5 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x1d5>
  40666c:	48 89 d7             	mov    %rdx,%rdi
  40666f:	48 c1 e0 06          	shl    $0x6,%rax
  406673:	62 f2 fd 48 19 0d 13 	vbroadcastsd 0x7f13(%rip),%zmm1        # 40e590 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf0>
  40667a:	7f 00 00 
  40667d:	62 f2 fd 48 19 05 11 	vbroadcastsd 0x7f11(%rip),%zmm0        # 40e598 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  406684:	7f 00 00 
  406687:	48 c1 e7 06          	shl    $0x6,%rdi
  40668b:	48 89 c6             	mov    %rax,%rsi
  40668e:	48 c1 e2 09          	shl    $0x9,%rdx
  406692:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406698:	49 8b 44 24 28       	mov    0x28(%r12),%rax
  40669d:	4c 8d 72 40          	lea    0x40(%rdx),%r14
  4066a1:	48 8b 00             	mov    (%rax),%rax
  4066a4:	4c 8d aa 80 00 00 00 	lea    0x80(%rdx),%r13
  4066ab:	62 71 fd 48 28 0c 10 	vmovapd (%rax,%rdx,1),%zmm9
  4066b2:	62 71 fd 48 28 44 10 	vmovapd 0x40(%rax,%rdx,1),%zmm8
  4066b9:	01 
  4066ba:	62 f1 fd 48 28 7c 10 	vmovapd 0x80(%rax,%rdx,1),%zmm7
  4066c1:	02 
  4066c2:	62 f1 fd 48 28 74 10 	vmovapd 0xc0(%rax,%rdx,1),%zmm6
  4066c9:	03 
  4066ca:	62 f1 fd 48 28 6c 10 	vmovapd 0x100(%rax,%rdx,1),%zmm5
  4066d1:	04 
  4066d2:	62 f1 fd 48 28 64 10 	vmovapd 0x140(%rax,%rdx,1),%zmm4
  4066d9:	05 
  4066da:	62 f1 fd 48 28 5c 10 	vmovapd 0x180(%rax,%rdx,1),%zmm3
  4066e1:	06 
  4066e2:	62 f1 fd 48 28 54 10 	vmovapd 0x1c0(%rax,%rdx,1),%zmm2
  4066e9:	07 
  4066ea:	49 8b 84 24 80 00 00 	mov    0x80(%r12),%rax
  4066f1:	00 
  4066f2:	48 8d 9a c0 00 00 00 	lea    0xc0(%rdx),%rbx
  4066f9:	8b 08                	mov    (%rax),%ecx
  4066fb:	4c 8d 9a 00 01 00 00 	lea    0x100(%rdx),%r11
  406702:	4c 8d 92 40 01 00 00 	lea    0x140(%rdx),%r10
  406709:	4c 8d 8a 80 01 00 00 	lea    0x180(%rdx),%r9
  406710:	4c 8d 82 c0 01 00 00 	lea    0x1c0(%rdx),%r8
  406717:	85 c9                	test   %ecx,%ecx
  406719:	7e 3b                	jle    406756 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x146>
  40671b:	31 c0                	xor    %eax,%eax
  40671d:	0f 1f 00             	nopl   (%rax)
  406720:	ff c0                	inc    %eax
  406722:	62 72 fd 48 98 c9    	vfmadd132pd %zmm1,%zmm0,%zmm9
  406728:	62 72 fd 48 98 c1    	vfmadd132pd %zmm1,%zmm0,%zmm8
  40672e:	62 f2 fd 48 98 f9    	vfmadd132pd %zmm1,%zmm0,%zmm7
  406734:	62 f2 fd 48 98 f1    	vfmadd132pd %zmm1,%zmm0,%zmm6
  40673a:	62 f2 fd 48 98 e9    	vfmadd132pd %zmm1,%zmm0,%zmm5
  406740:	62 f2 fd 48 98 e1    	vfmadd132pd %zmm1,%zmm0,%zmm4
  406746:	62 f2 fd 48 98 d9    	vfmadd132pd %zmm1,%zmm0,%zmm3
  40674c:	62 f2 fd 48 98 d1    	vfmadd132pd %zmm1,%zmm0,%zmm2
  406752:	39 c8                	cmp    %ecx,%eax
  406754:	75 ca                	jne    406720 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x110>
  406756:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  40675b:	48 83 c7 40          	add    $0x40,%rdi
  40675f:	48 8b 00             	mov    (%rax),%rax
  406762:	62 71 fd 48 29 0c 10 	vmovapd %zmm9,(%rax,%rdx,1)
  406769:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  40676e:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  406775:	48 8b 00             	mov    (%rax),%rax
  406778:	62 31 fd 48 29 04 30 	vmovapd %zmm8,(%rax,%r14,1)
  40677f:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  406784:	48 8b 00             	mov    (%rax),%rax
  406787:	62 b1 fd 48 29 3c 28 	vmovapd %zmm7,(%rax,%r13,1)
  40678e:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  406793:	48 8b 00             	mov    (%rax),%rax
  406796:	62 f1 fd 48 29 34 18 	vmovapd %zmm6,(%rax,%rbx,1)
  40679d:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  4067a2:	48 8b 00             	mov    (%rax),%rax
  4067a5:	62 b1 fd 48 29 2c 18 	vmovapd %zmm5,(%rax,%r11,1)
  4067ac:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  4067b1:	48 8b 00             	mov    (%rax),%rax
  4067b4:	62 b1 fd 48 29 24 10 	vmovapd %zmm4,(%rax,%r10,1)
  4067bb:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  4067c0:	48 8b 00             	mov    (%rax),%rax
  4067c3:	62 b1 fd 48 29 1c 08 	vmovapd %zmm3,(%rax,%r9,1)
  4067ca:	49 8b 44 24 20       	mov    0x20(%r12),%rax
  4067cf:	48 8b 00             	mov    (%rax),%rax
  4067d2:	62 b1 fd 48 29 14 00 	vmovapd %zmm2,(%rax,%r8,1)
  4067d9:	48 39 fe             	cmp    %rdi,%rsi
  4067dc:	0f 87 b6 fe ff ff    	ja     406698 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x88>
  4067e2:	c5 f8 77             	vzeroupper 
  4067e5:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  4067e9:	5b                   	pop    %rbx
  4067ea:	41 5c                	pop    %r12
  4067ec:	41 5d                	pop    %r13
  4067ee:	41 5e                	pop    %r14
  4067f0:	5d                   	pop    %rbp
  4067f1:	c3                   	retq   
  4067f2:	48 ff c0             	inc    %rax
  4067f5:	31 d2                	xor    %edx,%edx
  4067f7:	e9 5d fe ff ff       	jmpq   406659 <_ZZ4mainENKUlmE_clEm._omp_fn.3+0x49>
  4067fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406800 <_ZZ4mainENKUlmE_clEm._omp_fn.4>:
  406800:	55                   	push   %rbp
  406801:	48 89 e5             	mov    %rsp,%rbp
  406804:	41 55                	push   %r13
  406806:	41 54                	push   %r12
  406808:	49 89 fc             	mov    %rdi,%r12
  40680b:	53                   	push   %rbx
  40680c:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  406810:	48 81 ec 80 19 00 00 	sub    $0x1980,%rsp
  406817:	48 8b 1f             	mov    (%rdi),%rbx
  40681a:	48 8b 83 88 00 00 00 	mov    0x88(%rbx),%rax
  406821:	80 38 00             	cmpb   $0x0,(%rax)
  406824:	75 10                	jne    406836 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x36>
  406826:	48 8b 83 90 00 00 00 	mov    0x90(%rbx),%rax
  40682d:	80 38 00             	cmpb   $0x0,(%rax)
  406830:	0f 84 5f 10 00 00    	je     407895 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x1095>
  406836:	64 80 3c 25 f0 ff ff 	cmpb   $0x0,%fs:0xfffffffffffffff0
  40683d:	ff 00 
  40683f:	0f 84 96 13 00 00    	je     407bdb <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x13db>
  406845:	64 0f b6 04 25 f8 ff 	movzbl %fs:0xfffffffffffffff8,%eax
  40684c:	ff ff 
  40684e:	84 c0                	test   %al,%al
  406850:	75 39                	jne    40688b <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x8b>
  406852:	48 8b 1d 8f 7e 00 00 	mov    0x7e8f(%rip),%rbx        # 40e6e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  406859:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  40685f:	e8 2c c9 ff ff       	callq  403190 <GOMP_atomic_start@plt>
  406864:	c4 e1 f9 6e d3       	vmovq  %rbx,%xmm2
  406869:	c4 c1 6b 58 44 24 30 	vaddsd 0x30(%r12),%xmm2,%xmm0
  406870:	45 09 6c 24 38       	or     %r13d,0x38(%r12)
  406875:	c4 c1 7b 11 44 24 30 	vmovsd %xmm0,0x30(%r12)
  40687c:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  406880:	5b                   	pop    %rbx
  406881:	41 5c                	pop    %r12
  406883:	41 5d                	pop    %r13
  406885:	5d                   	pop    %rbp
  406886:	e9 95 c9 ff ff       	jmpq   403220 <GOMP_atomic_end@plt>
  40688b:	48 8b 05 0e 7d 00 00 	mov    0x7d0e(%rip),%rax        # 40e5a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x100>
  406892:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  406896:	c5 f9 7f 84 24 50 01 	vmovdqa %xmm0,0x150(%rsp)
  40689d:	00 00 
  40689f:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  4068a6:	00 
  4068a7:	b8 10 10 00 00       	mov    $0x1010,%eax
  4068ac:	c5 f9 7f 84 24 70 01 	vmovdqa %xmm0,0x170(%rsp)
  4068b3:	00 00 
  4068b5:	c5 f9 7f 84 24 40 01 	vmovdqa %xmm0,0x140(%rsp)
  4068bc:	00 00 
  4068be:	c7 84 24 58 01 00 00 	movl   $0x400040,0x158(%rsp)
  4068c5:	40 00 40 00 
  4068c9:	c6 84 24 40 01 00 00 	movb   $0x1,0x140(%rsp)
  4068d0:	01 
  4068d1:	c7 84 24 70 01 00 00 	movl   $0x10101010,0x170(%rsp)
  4068d8:	10 10 10 10 
  4068dc:	66 89 84 24 74 01 00 	mov    %ax,0x174(%rsp)
  4068e3:	00 
  4068e4:	c5 f9 7f 84 24 60 01 	vmovdqa %xmm0,0x160(%rsp)
  4068eb:	00 00 
  4068ed:	c4 e2 78 49 84 24 40 	ldtilecfg 0x140(%rsp)
  4068f4:	01 00 00 
  4068f7:	48 8b 83 88 00 00 00 	mov    0x88(%rbx),%rax
  4068fe:	80 38 00             	cmpb   $0x0,(%rax)
  406901:	0f 84 06 13 00 00    	je     407c0d <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x140d>
  406907:	c4 e2 7d 79 05 c2 7d 	vpbroadcastw 0x7dc2(%rip),%ymm0        # 40e6d2 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  40690e:	00 00 
  406910:	48 8d 94 24 80 01 00 	lea    0x180(%rsp),%rdx
  406917:	00 
  406918:	c5 fd 7f 84 24 80 01 	vmovdqa %ymm0,0x180(%rsp)
  40691f:	00 00 
  406921:	c5 fd 7f 84 24 a0 01 	vmovdqa %ymm0,0x1a0(%rsp)
  406928:	00 00 
  40692a:	c5 fd 7f 84 24 c0 01 	vmovdqa %ymm0,0x1c0(%rsp)
  406931:	00 00 
  406933:	c5 fd 7f 84 24 e0 01 	vmovdqa %ymm0,0x1e0(%rsp)
  40693a:	00 00 
  40693c:	c5 fd 7f 84 24 00 02 	vmovdqa %ymm0,0x200(%rsp)
  406943:	00 00 
  406945:	c5 fd 7f 84 24 20 02 	vmovdqa %ymm0,0x220(%rsp)
  40694c:	00 00 
  40694e:	c5 fd 7f 84 24 40 02 	vmovdqa %ymm0,0x240(%rsp)
  406955:	00 00 
  406957:	c5 fd 7f 84 24 60 02 	vmovdqa %ymm0,0x260(%rsp)
  40695e:	00 00 
  406960:	c5 fd 7f 84 24 80 02 	vmovdqa %ymm0,0x280(%rsp)
  406967:	00 00 
  406969:	c5 fd 7f 84 24 a0 02 	vmovdqa %ymm0,0x2a0(%rsp)
  406970:	00 00 
  406972:	c5 fd 7f 84 24 c0 02 	vmovdqa %ymm0,0x2c0(%rsp)
  406979:	00 00 
  40697b:	c5 fd 7f 84 24 e0 02 	vmovdqa %ymm0,0x2e0(%rsp)
  406982:	00 00 
  406984:	c5 fd 7f 84 24 00 03 	vmovdqa %ymm0,0x300(%rsp)
  40698b:	00 00 
  40698d:	c5 fd 7f 84 24 20 03 	vmovdqa %ymm0,0x320(%rsp)
  406994:	00 00 
  406996:	c5 fd 7f 84 24 40 03 	vmovdqa %ymm0,0x340(%rsp)
  40699d:	00 00 
  40699f:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  4069a6:	00 00 
  4069a8:	c5 fd 7f 84 24 80 03 	vmovdqa %ymm0,0x380(%rsp)
  4069af:	00 00 
  4069b1:	c5 fd 7f 84 24 a0 03 	vmovdqa %ymm0,0x3a0(%rsp)
  4069b8:	00 00 
  4069ba:	c5 fd 7f 84 24 c0 03 	vmovdqa %ymm0,0x3c0(%rsp)
  4069c1:	00 00 
  4069c3:	c5 fd 7f 84 24 e0 03 	vmovdqa %ymm0,0x3e0(%rsp)
  4069ca:	00 00 
  4069cc:	c5 fd 7f 84 24 00 04 	vmovdqa %ymm0,0x400(%rsp)
  4069d3:	00 00 
  4069d5:	c5 fd 7f 84 24 20 04 	vmovdqa %ymm0,0x420(%rsp)
  4069dc:	00 00 
  4069de:	c5 fd 7f 84 24 40 04 	vmovdqa %ymm0,0x440(%rsp)
  4069e5:	00 00 
  4069e7:	c5 fd 7f 84 24 60 04 	vmovdqa %ymm0,0x460(%rsp)
  4069ee:	00 00 
  4069f0:	c5 fd 7f 84 24 80 04 	vmovdqa %ymm0,0x480(%rsp)
  4069f7:	00 00 
  4069f9:	c5 fd 7f 84 24 a0 04 	vmovdqa %ymm0,0x4a0(%rsp)
  406a00:	00 00 
  406a02:	c5 fd 7f 84 24 c0 04 	vmovdqa %ymm0,0x4c0(%rsp)
  406a09:	00 00 
  406a0b:	c5 fd 7f 84 24 e0 04 	vmovdqa %ymm0,0x4e0(%rsp)
  406a12:	00 00 
  406a14:	c5 fd 7f 84 24 00 05 	vmovdqa %ymm0,0x500(%rsp)
  406a1b:	00 00 
  406a1d:	c5 fd 7f 84 24 20 05 	vmovdqa %ymm0,0x520(%rsp)
  406a24:	00 00 
  406a26:	c5 fd 7f 84 24 40 05 	vmovdqa %ymm0,0x540(%rsp)
  406a2d:	00 00 
  406a2f:	b8 40 00 00 00       	mov    $0x40,%eax
  406a34:	c5 fd 7f 84 24 60 05 	vmovdqa %ymm0,0x560(%rsp)
  406a3b:	00 00 
  406a3d:	c5 fd 7f 84 24 80 05 	vmovdqa %ymm0,0x580(%rsp)
  406a44:	00 00 
  406a46:	c5 fd 7f 84 24 a0 05 	vmovdqa %ymm0,0x5a0(%rsp)
  406a4d:	00 00 
  406a4f:	c5 fd 7f 84 24 c0 05 	vmovdqa %ymm0,0x5c0(%rsp)
  406a56:	00 00 
  406a58:	c5 fd 7f 84 24 e0 05 	vmovdqa %ymm0,0x5e0(%rsp)
  406a5f:	00 00 
  406a61:	c5 fd 7f 84 24 00 06 	vmovdqa %ymm0,0x600(%rsp)
  406a68:	00 00 
  406a6a:	c5 fd 7f 84 24 20 06 	vmovdqa %ymm0,0x620(%rsp)
  406a71:	00 00 
  406a73:	c5 fd 7f 84 24 40 06 	vmovdqa %ymm0,0x640(%rsp)
  406a7a:	00 00 
  406a7c:	c5 fd 7f 84 24 60 06 	vmovdqa %ymm0,0x660(%rsp)
  406a83:	00 00 
  406a85:	c5 fd 7f 84 24 80 06 	vmovdqa %ymm0,0x680(%rsp)
  406a8c:	00 00 
  406a8e:	c5 fd 7f 84 24 a0 06 	vmovdqa %ymm0,0x6a0(%rsp)
  406a95:	00 00 
  406a97:	c5 fd 7f 84 24 c0 06 	vmovdqa %ymm0,0x6c0(%rsp)
  406a9e:	00 00 
  406aa0:	c5 fd 7f 84 24 e0 06 	vmovdqa %ymm0,0x6e0(%rsp)
  406aa7:	00 00 
  406aa9:	c5 fd 7f 84 24 00 07 	vmovdqa %ymm0,0x700(%rsp)
  406ab0:	00 00 
  406ab2:	c5 fd 7f 84 24 20 07 	vmovdqa %ymm0,0x720(%rsp)
  406ab9:	00 00 
  406abb:	c5 fd 7f 84 24 40 07 	vmovdqa %ymm0,0x740(%rsp)
  406ac2:	00 00 
  406ac4:	c5 fd 7f 84 24 60 07 	vmovdqa %ymm0,0x760(%rsp)
  406acb:	00 00 
  406acd:	c5 fd 7f 84 24 80 07 	vmovdqa %ymm0,0x780(%rsp)
  406ad4:	00 00 
  406ad6:	c5 fd 7f 84 24 a0 07 	vmovdqa %ymm0,0x7a0(%rsp)
  406add:	00 00 
  406adf:	c5 fd 7f 84 24 c0 07 	vmovdqa %ymm0,0x7c0(%rsp)
  406ae6:	00 00 
  406ae8:	c5 fd 7f 84 24 e0 07 	vmovdqa %ymm0,0x7e0(%rsp)
  406aef:	00 00 
  406af1:	c5 fd 7f 84 24 00 08 	vmovdqa %ymm0,0x800(%rsp)
  406af8:	00 00 
  406afa:	c5 fd 7f 84 24 20 08 	vmovdqa %ymm0,0x820(%rsp)
  406b01:	00 00 
  406b03:	c5 fd 7f 84 24 40 08 	vmovdqa %ymm0,0x840(%rsp)
  406b0a:	00 00 
  406b0c:	c5 fd 7f 84 24 60 08 	vmovdqa %ymm0,0x860(%rsp)
  406b13:	00 00 
  406b15:	c5 fd 7f 84 24 80 08 	vmovdqa %ymm0,0x880(%rsp)
  406b1c:	00 00 
  406b1e:	c5 fd 7f 84 24 a0 08 	vmovdqa %ymm0,0x8a0(%rsp)
  406b25:	00 00 
  406b27:	c5 fd 7f 84 24 c0 08 	vmovdqa %ymm0,0x8c0(%rsp)
  406b2e:	00 00 
  406b30:	c5 fd 7f 84 24 e0 08 	vmovdqa %ymm0,0x8e0(%rsp)
  406b37:	00 00 
  406b39:	c5 fd 7f 84 24 00 09 	vmovdqa %ymm0,0x900(%rsp)
  406b40:	00 00 
  406b42:	c5 fd 7f 84 24 20 09 	vmovdqa %ymm0,0x920(%rsp)
  406b49:	00 00 
  406b4b:	c5 fd 7f 84 24 40 09 	vmovdqa %ymm0,0x940(%rsp)
  406b52:	00 00 
  406b54:	c5 fd 7f 84 24 60 09 	vmovdqa %ymm0,0x960(%rsp)
  406b5b:	00 00 
  406b5d:	c4 e2 7b 4b 24 02    	tileloadd (%rdx,%rax,1),%tmm4
  406b63:	48 8d 94 24 80 05 00 	lea    0x580(%rsp),%rdx
  406b6a:	00 
  406b6b:	c4 e2 7b 4b 2c 02    	tileloadd (%rdx,%rax,1),%tmm5
  406b71:	ba 00 04 00 00       	mov    $0x400,%edx
  406b76:	c4 e2 7b 49 c0       	tilezero %tmm0
  406b7b:	c4 e2 7b 49 c8       	tilezero %tmm1
  406b80:	c4 e2 7b 49 d0       	tilezero %tmm2
  406b85:	c4 e2 7b 49 d8       	tilezero %tmm3
  406b8a:	b8 00 01 00 00       	mov    $0x100,%eax
  406b8f:	90                   	nop
  406b90:	c4 e2 52 5c c4       	tdpbf16ps %tmm5,%tmm4,%tmm0
  406b95:	c4 e2 52 5c cc       	tdpbf16ps %tmm5,%tmm4,%tmm1
  406b9a:	c4 e2 52 5c d4       	tdpbf16ps %tmm5,%tmm4,%tmm2
  406b9f:	c4 e2 52 5c dc       	tdpbf16ps %tmm5,%tmm4,%tmm3
  406ba4:	ff c8                	dec    %eax
  406ba6:	75 e8                	jne    406b90 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x390>
  406ba8:	ff ca                	dec    %edx
  406baa:	75 ca                	jne    406b76 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x376>
  406bac:	48 8d 8c 24 80 09 00 	lea    0x980(%rsp),%rcx
  406bb3:	00 
  406bb4:	b8 40 00 00 00       	mov    $0x40,%eax
  406bb9:	c4 e2 7a 4b 04 01    	tilestored %tmm0,(%rcx,%rax,1)
  406bbf:	48 8d 94 24 80 0d 00 	lea    0xd80(%rsp),%rdx
  406bc6:	00 
  406bc7:	c4 e2 7a 4b 0c 02    	tilestored %tmm1,(%rdx,%rax,1)
  406bcd:	48 8d 94 24 80 11 00 	lea    0x1180(%rsp),%rdx
  406bd4:	00 
  406bd5:	c4 e2 7a 4b 14 02    	tilestored %tmm2,(%rdx,%rax,1)
  406bdb:	48 8d 94 24 80 15 00 	lea    0x1580(%rsp),%rdx
  406be2:	00 
  406be3:	c4 e2 7a 4b 1c 02    	tilestored %tmm3,(%rdx,%rax,1)
  406be9:	62 61 7d 28 6f 05 8d 	vmovdqa32 0x7a8d(%rip),%ymm24        # 40e680 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  406bf0:	7a 00 00 
  406bf3:	62 61 7d 28 6f 0d 63 	vmovdqa32 0x7a63(%rip),%ymm25        # 40e660 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  406bfa:	7a 00 00 
  406bfd:	c4 e2 7d 58 15 7a 7a 	vpbroadcastd 0x7a7a(%rip),%ymm2        # 40e680 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  406c04:	00 00 
  406c06:	48 8b 1d db 7a 00 00 	mov    0x7adb(%rip),%rbx        # 40e6e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  406c0d:	62 e2 7d 28 18 3d 8d 	vbroadcastss 0x7a8d(%rip),%ymm23        # 40e6a4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x204>
  406c14:	7a 00 00 
  406c17:	62 01 7d 28 6f d0    	vmovdqa32 %ymm24,%ymm26
  406c1d:	45 31 ed             	xor    %r13d,%r13d
  406c20:	c5 fd 7f 94 24 20 01 	vmovdqa %ymm2,0x120(%rsp)
  406c27:	00 00 
  406c29:	62 01 7d 28 6f c1    	vmovdqa32 %ymm25,%ymm24
  406c2f:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  406c36:	48 8d 91 00 fc ff ff 	lea    -0x400(%rcx),%rdx
  406c3d:	62 01 25 00 ef db    	vpxord %xmm27,%xmm27,%xmm27
  406c43:	c5 fc 28 1a          	vmovaps (%rdx),%ymm3
  406c47:	c5 fc 28 52 20       	vmovaps 0x20(%rdx),%ymm2
  406c4c:	c5 fc 28 7a 60       	vmovaps 0x60(%rdx),%ymm7
  406c51:	62 b3 7d 28 19 dd 01 	vextractf32x4 $0x1,%ymm3,%xmm21
  406c58:	62 b3 7d 28 19 d4 01 	vextractf32x4 $0x1,%ymm2,%xmm20
  406c5f:	c5 fc 28 5a 40       	vmovaps 0x40(%rdx),%ymm3
  406c64:	c5 fc 28 92 80 00 00 	vmovaps 0x80(%rdx),%ymm2
  406c6b:	00 
  406c6c:	c4 e3 7d 19 d9 01    	vextractf128 $0x1,%ymm3,%xmm1
  406c72:	c4 e3 7d 19 f8 01    	vextractf128 $0x1,%ymm7,%xmm0
  406c78:	c5 fc 28 9a a0 00 00 	vmovaps 0xa0(%rdx),%ymm3
  406c7f:	00 
  406c80:	c4 c3 7d 19 d5 01    	vextractf128 $0x1,%ymm2,%xmm13
  406c86:	c5 fc 28 92 00 01 00 	vmovaps 0x100(%rdx),%ymm2
  406c8d:	00 
  406c8e:	c5 fc 5a c0          	vcvtps2pd %xmm0,%ymm0
  406c92:	c5 fd 29 44 24 60    	vmovapd %ymm0,0x60(%rsp)
  406c98:	c5 fc 28 82 a0 01 00 	vmovaps 0x1a0(%rdx),%ymm0
  406c9f:	00 
  406ca0:	c5 fc 28 aa c0 00 00 	vmovaps 0xc0(%rdx),%ymm5
  406ca7:	00 
  406ca8:	c4 c3 7d 19 dc 01    	vextractf128 $0x1,%ymm3,%xmm12
  406cae:	c4 e3 7d 19 d6 01    	vextractf128 $0x1,%ymm2,%xmm6
  406cb4:	c5 fc 28 9a 20 01 00 	vmovaps 0x120(%rdx),%ymm3
  406cbb:	00 
  406cbc:	c5 fc 28 92 40 01 00 	vmovaps 0x140(%rdx),%ymm2
  406cc3:	00 
  406cc4:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  406ccb:	62 61 7c 28 5a 72 02 	vcvtps2pd 0x20(%rdx),%ymm30
  406cd2:	62 61 7c 28 5a 6a 04 	vcvtps2pd 0x40(%rdx),%ymm29
  406cd9:	c5 7c 5a b2 40 01 00 	vcvtps2pd 0x140(%rdx),%ymm14
  406ce0:	00 
  406ce1:	62 e1 7c 28 5a 32    	vcvtps2pd (%rdx),%ymm22
  406ce7:	62 e1 7c 28 5a 5a 06 	vcvtps2pd 0x60(%rdx),%ymm19
  406cee:	62 e1 7c 28 5a 52 08 	vcvtps2pd 0x80(%rdx),%ymm18
  406cf5:	62 e1 7c 28 5a 4a 0a 	vcvtps2pd 0xa0(%rdx),%ymm17
  406cfc:	62 e1 7c 28 5a 42 0c 	vcvtps2pd 0xc0(%rdx),%ymm16
  406d03:	c5 7c 5a ba e0 00 00 	vcvtps2pd 0xe0(%rdx),%ymm15
  406d0a:	00 
  406d0b:	62 61 7c 28 5a 62 10 	vcvtps2pd 0x100(%rdx),%ymm28
  406d12:	62 61 7c 28 5a 4a 12 	vcvtps2pd 0x120(%rdx),%ymm25
  406d19:	c5 7c 5a 9a 60 01 00 	vcvtps2pd 0x160(%rdx),%ymm11
  406d20:	00 
  406d21:	c5 7c 5a 92 80 01 00 	vcvtps2pd 0x180(%rdx),%ymm10
  406d28:	00 
  406d29:	c5 7c 5a 82 a0 01 00 	vcvtps2pd 0x1a0(%rdx),%ymm8
  406d30:	00 
  406d31:	c5 fc 28 ba e0 00 00 	vmovaps 0xe0(%rdx),%ymm7
  406d38:	00 
  406d39:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  406d3f:	c4 c3 7d 19 e9 01    	vextractf128 $0x1,%ymm5,%xmm9
  406d45:	62 61 7c 28 5a 7a 1c 	vcvtps2pd 0x1c0(%rdx),%ymm31
  406d4c:	c4 e3 7d 19 dd 01    	vextractf128 $0x1,%ymm3,%xmm5
  406d52:	c4 e3 7d 19 d4 01    	vextractf128 $0x1,%ymm2,%xmm4
  406d58:	c5 fc 28 9a 60 01 00 	vmovaps 0x160(%rdx),%ymm3
  406d5f:	00 
  406d60:	c5 fc 28 92 80 01 00 	vmovaps 0x180(%rdx),%ymm2
  406d67:	00 
  406d68:	c5 fd 29 84 24 80 00 	vmovapd %ymm0,0x80(%rsp)
  406d6f:	00 00 
  406d71:	c5 fc 5a c9          	vcvtps2pd %xmm1,%ymm1
  406d75:	c5 fd 29 4c 24 40    	vmovapd %ymm1,0x40(%rsp)
  406d7b:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xa0(%rsp)
  406d82:	05 
  406d83:	c5 fc 28 82 c0 01 00 	vmovaps 0x1c0(%rdx),%ymm0
  406d8a:	00 
  406d8b:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  406d92:	07 
  406d93:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  406d9a:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  406da0:	c5 fd 29 84 24 c0 00 	vmovapd %ymm0,0xc0(%rsp)
  406da7:	00 00 
  406da9:	c5 fc 28 82 e0 01 00 	vmovaps 0x1e0(%rdx),%ymm0
  406db0:	00 
  406db1:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  406db6:	62 61 7c 28 5a 7a 1e 	vcvtps2pd 0x1e0(%rdx),%ymm31
  406dbd:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xe0(%rsp)
  406dc4:	07 
  406dc5:	62 93 7d 28 19 c7 01 	vextractf32x4 $0x1,%ymm0,%xmm31
  406dcc:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  406dd1:	62 91 7c 28 5a c7    	vcvtps2pd %xmm31,%ymm0
  406dd7:	c5 fd 29 84 24 00 01 	vmovapd %ymm0,0x100(%rsp)
  406dde:	00 00 
  406de0:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  406de5:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  406de9:	62 b1 cd 00 15 ce    	vunpckhpd %xmm22,%xmm22,%xmm1
  406def:	62 a3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm22,%xmm22
  406df6:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  406dfa:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  406e01:	07 
  406e02:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  406e07:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  406e0c:	62 61 fd 08 6e f8    	vmovq  %rax,%xmm31
  406e12:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  406e17:	62 91 f7 08 58 cf    	vaddsd %xmm31,%xmm1,%xmm1
  406e1d:	62 21 cd 00 15 fe    	vunpckhpd %xmm22,%xmm22,%xmm31
  406e23:	62 a1 7c 28 5a ed    	vcvtps2pd %xmm21,%ymm21
  406e29:	62 f1 87 00 58 c9    	vaddsd %xmm1,%xmm31,%xmm1
  406e2f:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  406e36:	07 
  406e37:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  406e3c:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  406e41:	62 e1 fd 08 6e f0    	vmovq  %rax,%xmm22
  406e47:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  406e4c:	62 b1 f7 08 58 ce    	vaddsd %xmm22,%xmm1,%xmm1
  406e52:	62 21 d5 00 15 fd    	vunpckhpd %xmm21,%xmm21,%xmm31
  406e58:	62 a3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm21,%xmm21
  406e5f:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  406e66:	07 
  406e67:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  406e6c:	62 61 87 00 58 f9    	vaddsd %xmm1,%xmm31,%xmm31
  406e72:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  406e77:	62 61 fd 08 13 74 24 	vmovlpd %xmm30,0x38(%rsp)
  406e7e:	07 
  406e7f:	62 01 f7 08 58 ff    	vaddsd %xmm31,%xmm1,%xmm31
  406e85:	62 a1 d5 00 15 f5    	vunpckhpd %xmm21,%xmm21,%xmm22
  406e8b:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  406e90:	62 81 cf 00 58 f7    	vaddsd %xmm31,%xmm22,%xmm22
  406e96:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  406e9b:	62 01 8d 00 15 fe    	vunpckhpd %xmm30,%xmm30,%xmm31
  406ea1:	62 a1 f7 08 58 f6    	vaddsd %xmm22,%xmm1,%xmm22
  406ea7:	62 a1 7c 28 5a e4    	vcvtps2pd %xmm20,%ymm20
  406ead:	c5 fd 28 4c 24 40    	vmovapd 0x40(%rsp),%ymm1
  406eb3:	62 21 87 00 58 fe    	vaddsd %xmm22,%xmm31,%xmm31
  406eb9:	62 23 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm30,%xmm22
  406ec0:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  406ec7:	07 
  406ec8:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  406ecf:	07 
  406ed0:	62 a1 cd 00 15 f6    	vunpckhpd %xmm22,%xmm22,%xmm22
  406ed6:	62 01 8f 00 58 f7    	vaddsd %xmm31,%xmm30,%xmm30
  406edc:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  406ee3:	07 
  406ee4:	62 61 ff 08 10 7c 24 	vmovsd 0x38(%rsp),%xmm31
  406eeb:	07 
  406eec:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  406ef2:	62 21 dd 00 15 f4    	vunpckhpd %xmm20,%xmm20,%xmm30
  406ef8:	62 a3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm20,%xmm20
  406eff:	62 a1 87 00 58 f6    	vaddsd %xmm22,%xmm31,%xmm22
  406f05:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  406f0c:	07 
  406f0d:	62 a1 dd 00 15 ec    	vunpckhpd %xmm20,%xmm20,%xmm21
  406f13:	62 21 8f 00 58 f6    	vaddsd %xmm22,%xmm30,%xmm30
  406f19:	62 e1 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm22
  406f20:	07 
  406f21:	62 61 fd 08 13 6c 24 	vmovlpd %xmm29,0x38(%rsp)
  406f28:	07 
  406f29:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  406f2f:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  406f36:	07 
  406f37:	c5 f9 13 4c 24 40    	vmovlpd %xmm1,0x40(%rsp)
  406f3d:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  406f43:	62 81 95 00 15 f5    	vunpckhpd %xmm29,%xmm29,%xmm22
  406f49:	c4 41 7c 5a ed       	vcvtps2pd %xmm13,%ymm13
  406f4e:	62 a1 8f 00 58 ed    	vaddsd %xmm21,%xmm30,%xmm21
  406f54:	c4 41 7c 5a e4       	vcvtps2pd %xmm12,%ymm12
  406f59:	c4 41 7c 5a c9       	vcvtps2pd %xmm9,%ymm9
  406f5e:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  406f64:	62 23 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm29,%xmm21
  406f6b:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  406f72:	07 
  406f73:	62 61 ff 08 10 6c 24 	vmovsd 0x38(%rsp),%xmm29
  406f7a:	07 
  406f7b:	62 a1 d5 00 15 ed    	vunpckhpd %xmm21,%xmm21,%xmm21
  406f81:	62 a1 97 00 58 f6    	vaddsd %xmm22,%xmm29,%xmm22
  406f87:	62 61 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm29
  406f8e:	08 
  406f8f:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x40(%rsp)
  406f96:	08 
  406f97:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  406f9d:	62 e1 f5 08 15 f1    	vunpckhpd %xmm1,%xmm1,%xmm22
  406fa3:	62 f3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm1,%xmm1
  406faa:	62 a1 97 00 58 ed    	vaddsd %xmm21,%xmm29,%xmm21
  406fb0:	62 e1 f5 08 15 e1    	vunpckhpd %xmm1,%xmm1,%xmm20
  406fb6:	c4 e3 7d 19 ff 01    	vextractf128 $0x1,%ymm7,%xmm7
  406fbc:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  406fc2:	c5 fc 5a ff          	vcvtps2pd %xmm7,%ymm7
  406fc6:	c5 fc 5a f6          	vcvtps2pd %xmm6,%ymm6
  406fca:	62 a1 f7 08 58 ee    	vaddsd %xmm22,%xmm1,%xmm21
  406fd0:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  406fd7:	08 
  406fd8:	c5 fc 5a ed          	vcvtps2pd %xmm5,%ymm5
  406fdc:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  406fe2:	62 a1 e5 00 15 eb    	vunpckhpd %xmm19,%xmm19,%xmm21
  406fe8:	62 a3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm19,%xmm19
  406fef:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  406ff5:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x40(%rsp)
  406ffc:	08 
  406ffd:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  407004:	08 
  407005:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  40700b:	c5 fd 28 44 24 60    	vmovapd 0x60(%rsp),%ymm0
  407011:	62 a1 e5 00 15 e3    	vunpckhpd %xmm19,%xmm19,%xmm20
  407017:	62 a1 cf 00 58 ed    	vaddsd %xmm21,%xmm22,%xmm21
  40701d:	c5 f9 13 44 24 60    	vmovlpd %xmm0,0x60(%rsp)
  407023:	62 e1 ff 08 10 74 24 	vmovsd 0x60(%rsp),%xmm22
  40702a:	0c 
  40702b:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  407031:	62 e1 fd 08 15 e8    	vunpckhpd %xmm0,%xmm0,%xmm21
  407037:	62 f3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm0,%xmm0
  40703e:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  407044:	62 e1 fd 08 15 d8    	vunpckhpd %xmm0,%xmm0,%xmm19
  40704a:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x60(%rsp)
  407051:	0c 
  407052:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  407058:	c5 fc 5a e4          	vcvtps2pd %xmm4,%ymm4
  40705c:	c4 e3 7d 19 db 01    	vextractf128 $0x1,%ymm3,%xmm3
  407062:	62 a1 ff 08 58 e5    	vaddsd %xmm21,%xmm0,%xmm20
  407068:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  40706f:	0c 
  407070:	c5 fc 5a db          	vcvtps2pd %xmm3,%ymm3
  407074:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  40707a:	62 a1 ed 00 15 e2    	vunpckhpd %xmm18,%xmm18,%xmm20
  407080:	62 a3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm18,%xmm18
  407087:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  40708d:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x60(%rsp)
  407094:	0c 
  407095:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  40709c:	0c 
  40709d:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  4070a3:	62 a1 ed 00 15 da    	vunpckhpd %xmm18,%xmm18,%xmm19
  4070a9:	c5 79 13 6c 24 60    	vmovlpd %xmm13,0x60(%rsp)
  4070af:	62 a1 d7 00 58 e4    	vaddsd %xmm20,%xmm21,%xmm20
  4070b5:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  4070bc:	0c 
  4070bd:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x60(%rsp)
  4070c4:	0c 
  4070c5:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  4070cb:	62 c1 95 08 15 e5    	vunpckhpd %xmm13,%xmm13,%xmm20
  4070d1:	62 53 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm13,%xmm13
  4070d8:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  4070de:	62 c1 95 08 15 d5    	vunpckhpd %xmm13,%xmm13,%xmm18
  4070e4:	c4 e3 7d 19 d2 01    	vextractf128 $0x1,%ymm2,%xmm2
  4070ea:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  4070f0:	c5 fc 5a d2          	vcvtps2pd %xmm2,%ymm2
  4070f4:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  4070fb:	62 a1 97 08 58 dc    	vaddsd %xmm20,%xmm13,%xmm19
  407101:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  407108:	0c 
  407109:	62 43 fd 28 19 cd 01 	vextractf64x2 $0x1,%ymm25,%xmm13
  407110:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  407116:	62 a1 f5 00 15 d9    	vunpckhpd %xmm17,%xmm17,%xmm19
  40711c:	62 a3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm17,%xmm17
  407123:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  407129:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x60(%rsp)
  407130:	0c 
  407131:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  407138:	0c 
  407139:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  40713f:	62 a1 f5 00 15 d1    	vunpckhpd %xmm17,%xmm17,%xmm18
  407145:	c5 79 13 64 24 60    	vmovlpd %xmm12,0x60(%rsp)
  40714b:	62 a1 df 00 58 db    	vaddsd %xmm19,%xmm20,%xmm19
  407151:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  407158:	0c 
  407159:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x60(%rsp)
  407160:	0c 
  407161:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  407167:	62 c1 9d 08 15 dc    	vunpckhpd %xmm12,%xmm12,%xmm19
  40716d:	62 53 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm12,%xmm12
  407174:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  40717a:	62 c1 9d 08 15 cc    	vunpckhpd %xmm12,%xmm12,%xmm17
  407180:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  407186:	62 a1 9f 08 58 d3    	vaddsd %xmm19,%xmm12,%xmm18
  40718c:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  407193:	0c 
  407194:	62 53 fd 28 19 f4 01 	vextractf64x2 $0x1,%ymm14,%xmm12
  40719b:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  4071a1:	62 a1 fd 00 15 d0    	vunpckhpd %xmm16,%xmm16,%xmm18
  4071a7:	62 a3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm16,%xmm16
  4071ae:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  4071b4:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x60(%rsp)
  4071bb:	0c 
  4071bc:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  4071c3:	0c 
  4071c4:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  4071ca:	62 a1 fd 00 15 c8    	vunpckhpd %xmm16,%xmm16,%xmm17
  4071d0:	c5 79 13 4c 24 60    	vmovlpd %xmm9,0x60(%rsp)
  4071d6:	62 a1 e7 00 58 d2    	vaddsd %xmm18,%xmm19,%xmm18
  4071dc:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  4071e3:	0c 
  4071e4:	c5 79 13 7c 24 60    	vmovlpd %xmm15,0x60(%rsp)
  4071ea:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  4071f0:	62 c1 b5 08 15 d1    	vunpckhpd %xmm9,%xmm9,%xmm18
  4071f6:	62 53 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm9,%xmm9
  4071fd:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  407203:	62 c1 b5 08 15 c1    	vunpckhpd %xmm9,%xmm9,%xmm16
  407209:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  40720f:	62 a1 b7 08 58 ca    	vaddsd %xmm18,%xmm9,%xmm17
  407215:	62 e1 ff 08 10 54 24 	vmovsd 0x60(%rsp),%xmm18
  40721c:	0c 
  40721d:	c5 f9 13 7c 24 60    	vmovlpd %xmm7,0x60(%rsp)
  407223:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  407229:	62 c1 85 08 15 cf    	vunpckhpd %xmm15,%xmm15,%xmm17
  40722f:	62 53 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm15,%xmm15
  407236:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  40723c:	62 e1 ff 08 10 54 24 	vmovsd 0x60(%rsp),%xmm18
  407243:	0c 
  407244:	62 61 fd 08 13 64 24 	vmovlpd %xmm28,0x60(%rsp)
  40724b:	0c 
  40724c:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  407252:	62 c1 85 08 15 c7    	vunpckhpd %xmm15,%xmm15,%xmm16
  407258:	62 a1 87 08 58 c9    	vaddsd %xmm17,%xmm15,%xmm17
  40725e:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  407264:	62 e1 c5 08 15 cf    	vunpckhpd %xmm7,%xmm7,%xmm17
  40726a:	62 f3 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm7,%xmm7
  407271:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  407277:	c5 41 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm15
  40727b:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  407281:	62 a1 c7 08 58 c1    	vaddsd %xmm17,%xmm7,%xmm16
  407287:	62 e1 ff 08 10 4c 24 	vmovsd 0x60(%rsp),%xmm17
  40728e:	0c 
  40728f:	c5 f9 13 74 24 60    	vmovlpd %xmm6,0x60(%rsp)
  407295:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  40729b:	62 81 9d 00 15 c4    	vunpckhpd %xmm28,%xmm28,%xmm16
  4072a1:	c5 fd 28 bc 24 a0 00 	vmovapd 0xa0(%rsp),%ymm7
  4072a8:	00 00 
  4072aa:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  4072b0:	62 e1 ff 08 10 4c 24 	vmovsd 0x60(%rsp),%xmm17
  4072b7:	0c 
  4072b8:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4072be:	62 43 fd 28 19 e7 01 	vextractf64x2 $0x1,%ymm28,%xmm15
  4072c5:	62 a1 87 08 58 c0    	vaddsd %xmm16,%xmm15,%xmm16
  4072cb:	c4 41 01 15 ff       	vunpckhpd %xmm15,%xmm15,%xmm15
  4072d0:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  4072d6:	62 e1 cd 08 15 c6    	vunpckhpd %xmm6,%xmm6,%xmm16
  4072dc:	62 f3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm6,%xmm6
  4072e3:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  4072e9:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4072ef:	62 31 cf 08 58 f8    	vaddsd %xmm16,%xmm6,%xmm15
  4072f5:	c5 c9 15 f6          	vunpckhpd %xmm6,%xmm6,%xmm6
  4072f9:	c4 c1 4b 58 f7       	vaddsd %xmm15,%xmm6,%xmm6
  4072fe:	62 11 b5 00 15 f9    	vunpckhpd %xmm25,%xmm25,%xmm15
  407304:	62 f1 b7 00 58 f6    	vaddsd %xmm6,%xmm25,%xmm6
  40730a:	c5 03 58 fe          	vaddsd %xmm6,%xmm15,%xmm15
  40730e:	c4 c1 13 58 f7       	vaddsd %xmm15,%xmm13,%xmm6
  407313:	c4 41 11 15 ed       	vunpckhpd %xmm13,%xmm13,%xmm13
  407318:	c5 13 58 ee          	vaddsd %xmm6,%xmm13,%xmm13
  40731c:	c5 d1 15 f5          	vunpckhpd %xmm5,%xmm5,%xmm6
  407320:	c4 41 53 58 ed       	vaddsd %xmm13,%xmm5,%xmm13
  407325:	62 f3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm5,%xmm5
  40732c:	c4 c1 4b 58 f5       	vaddsd %xmm13,%xmm6,%xmm6
  407331:	c5 d3 58 f6          	vaddsd %xmm6,%xmm5,%xmm6
  407335:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  407339:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  40733d:	c4 c1 09 15 f6       	vunpckhpd %xmm14,%xmm14,%xmm6
  407342:	c5 8b 58 ed          	vaddsd %xmm5,%xmm14,%xmm5
  407346:	c5 cb 58 f5          	vaddsd %xmm5,%xmm6,%xmm6
  40734a:	c5 9b 58 ee          	vaddsd %xmm6,%xmm12,%xmm5
  40734e:	c4 41 19 15 e4       	vunpckhpd %xmm12,%xmm12,%xmm12
  407353:	c5 1b 58 e5          	vaddsd %xmm5,%xmm12,%xmm12
  407357:	c5 d9 15 ec          	vunpckhpd %xmm4,%xmm4,%xmm5
  40735b:	c4 c1 5b 58 f4       	vaddsd %xmm12,%xmm4,%xmm6
  407360:	62 f3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm4,%xmm4
  407367:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  40736b:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  40736f:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  407373:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  407377:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  40737c:	c5 a3 58 ed          	vaddsd %xmm5,%xmm11,%xmm5
  407380:	62 53 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm11,%xmm11
  407387:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40738b:	c5 a3 58 ec          	vaddsd %xmm4,%xmm11,%xmm5
  40738f:	c4 c1 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm4
  407394:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  407398:	c5 e1 15 eb          	vunpckhpd %xmm3,%xmm3,%xmm5
  40739c:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  4073a0:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  4073a4:	62 f3 fd 28 19 dc 01 	vextractf64x2 $0x1,%ymm3,%xmm4
  4073ab:	c5 db 58 dd          	vaddsd %xmm5,%xmm4,%xmm3
  4073af:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  4073b3:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  4073b7:	c4 c1 29 15 da       	vunpckhpd %xmm10,%xmm10,%xmm3
  4073bc:	c5 ab 58 e4          	vaddsd %xmm4,%xmm10,%xmm4
  4073c0:	62 53 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm10,%xmm10
  4073c7:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  4073cb:	c5 ab 58 db          	vaddsd %xmm3,%xmm10,%xmm3
  4073cf:	c4 41 29 15 d2       	vunpckhpd %xmm10,%xmm10,%xmm10
  4073d4:	c5 2b 58 d3          	vaddsd %xmm3,%xmm10,%xmm10
  4073d8:	c5 e9 15 da          	vunpckhpd %xmm2,%xmm2,%xmm3
  4073dc:	c4 c1 6b 58 e2       	vaddsd %xmm10,%xmm2,%xmm4
  4073e1:	62 f3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm2,%xmm2
  4073e8:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  4073ec:	c5 fd 28 a4 24 80 00 	vmovapd 0x80(%rsp),%ymm4
  4073f3:	00 00 
  4073f5:	c5 eb 58 db          	vaddsd %xmm3,%xmm2,%xmm3
  4073f9:	c5 e9 15 d2          	vunpckhpd %xmm2,%xmm2,%xmm2
  4073fd:	62 f3 fd 28 19 e1 01 	vextractf64x2 $0x1,%ymm4,%xmm1
  407404:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  407408:	c4 c1 39 15 d8       	vunpckhpd %xmm8,%xmm8,%xmm3
  40740d:	c5 bb 58 d2          	vaddsd %xmm2,%xmm8,%xmm2
  407411:	62 53 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm8
  407418:	c4 41 39 15 c8       	vunpckhpd %xmm8,%xmm8,%xmm9
  40741d:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  407421:	c5 bb 58 d3          	vaddsd %xmm3,%xmm8,%xmm2
  407425:	62 d3 fd 28 19 f8 01 	vextractf64x2 $0x1,%ymm7,%xmm8
  40742c:	c5 33 58 ca          	vaddsd %xmm2,%xmm9,%xmm9
  407430:	c5 d9 15 d4          	vunpckhpd %xmm4,%xmm4,%xmm2
  407434:	c4 c1 5b 58 d9       	vaddsd %xmm9,%xmm4,%xmm3
  407439:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40743d:	c5 fd 28 9c 24 c0 00 	vmovapd 0xc0(%rsp),%ymm3
  407444:	00 00 
  407446:	c5 fc 28 a2 00 fe ff 	vmovaps -0x200(%rdx),%ymm4
  40744d:	ff 
  40744e:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  407452:	c5 f1 15 c9          	vunpckhpd %xmm1,%xmm1,%xmm1
  407456:	62 f3 fd 28 19 d8 01 	vextractf64x2 $0x1,%ymm3,%xmm0
  40745d:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  407461:	c5 c1 15 d7          	vunpckhpd %xmm7,%xmm7,%xmm2
  407465:	62 e1 7c 28 28 52 f2 	vmovaps -0x1c0(%rdx),%ymm18
  40746c:	c5 c3 58 c9          	vaddsd %xmm1,%xmm7,%xmm1
  407470:	c5 fc 28 aa 80 fe ff 	vmovaps -0x180(%rdx),%ymm5
  407477:	ff 
  407478:	62 f2 3d 20 7f 62 f1 	vpermt2ps -0x1e0(%rdx),%ymm24,%ymm4
  40747f:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  407483:	c5 7c 28 ba c0 fe ff 	vmovaps -0x140(%rdx),%ymm15
  40748a:	ff 
  40748b:	62 e2 3d 20 7f 52 f3 	vpermt2ps -0x1a0(%rdx),%ymm24,%ymm18
  407492:	c5 bb 58 ca          	vaddsd %xmm2,%xmm8,%xmm1
  407496:	c4 41 39 15 c0       	vunpckhpd %xmm8,%xmm8,%xmm8
  40749b:	62 f2 3d 20 7f 6a f5 	vpermt2ps -0x160(%rdx),%ymm24,%ymm5
  4074a2:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  4074a6:	c5 e1 15 cb          	vunpckhpd %xmm3,%xmm3,%xmm1
  4074aa:	62 e1 7c 28 28 4a fa 	vmovaps -0xc0(%rdx),%ymm17
  4074b1:	c4 c1 63 58 d0       	vaddsd %xmm8,%xmm3,%xmm2
  4074b6:	c5 fd 28 9c 24 e0 00 	vmovapd 0xe0(%rsp),%ymm3
  4074bd:	00 00 
  4074bf:	c5 7c 28 ec          	vmovaps %ymm4,%ymm13
  4074c3:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  4074c7:	62 f3 fd 28 19 df 01 	vextractf64x2 $0x1,%ymm3,%xmm7
  4074ce:	c5 fd 28 94 24 00 01 	vmovapd 0x100(%rsp),%ymm2
  4074d5:	00 00 
  4074d7:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  4074db:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  4074df:	62 72 3d 20 7f 7a f7 	vpermt2ps -0x120(%rdx),%ymm24,%ymm15
  4074e6:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4074ea:	c5 e1 15 cb          	vunpckhpd %xmm3,%xmm3,%xmm1
  4074ee:	62 32 3d 20 7f ea    	vpermt2ps %ymm18,%ymm24,%ymm13
  4074f4:	c5 e3 58 c0          	vaddsd %xmm0,%xmm3,%xmm0
  4074f8:	62 b2 2d 20 7f e2    	vpermt2ps %ymm18,%ymm26,%ymm4
  4074fe:	c5 fc 28 b2 00 fe ff 	vmovaps -0x200(%rdx),%ymm6
  407505:	ff 
  407506:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40750a:	c5 7c 28 8a 40 fe ff 	vmovaps -0x1c0(%rdx),%ymm9
  407511:	ff 
  407512:	c5 7c 28 b2 c0 fe ff 	vmovaps -0x140(%rdx),%ymm14
  407519:	ff 
  40751a:	c5 c3 58 c1          	vaddsd %xmm1,%xmm7,%xmm0
  40751e:	c5 c1 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm7
  407522:	c5 7c 28 9a 00 ff ff 	vmovaps -0x100(%rdx),%ymm11
  407529:	ff 
  40752a:	c5 c3 58 f8          	vaddsd %xmm0,%xmm7,%xmm7
  40752e:	c5 e9 15 c2          	vunpckhpd %xmm2,%xmm2,%xmm0
  407532:	c5 7c 28 82 40 ff ff 	vmovaps -0xc0(%rdx),%ymm8
  407539:	ff 
  40753a:	c5 eb 58 cf          	vaddsd %xmm7,%xmm2,%xmm1
  40753e:	62 e1 7c 28 28 42 fc 	vmovaps -0x80(%rdx),%ymm16
  407545:	c5 fc 28 ba 80 fe ff 	vmovaps -0x180(%rdx),%ymm7
  40754c:	ff 
  40754d:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  407551:	62 f3 fd 28 19 d0 01 	vextractf64x2 $0x1,%ymm2,%xmm0
  407558:	c5 fc 28 52 80       	vmovaps -0x80(%rdx),%ymm2
  40755d:	c5 fb 58 d9          	vaddsd %xmm1,%xmm0,%xmm3
  407561:	c5 fc 28 8a 00 ff ff 	vmovaps -0x100(%rdx),%ymm1
  407568:	ff 
  407569:	62 e1 7c 28 28 d5    	vmovaps %ymm5,%ymm18
  40756f:	62 f2 3d 20 7f 4a f9 	vpermt2ps -0xe0(%rdx),%ymm24,%ymm1
  407576:	c5 7c 28 62 c0       	vmovaps -0x40(%rdx),%ymm12
  40757b:	62 e2 3d 20 7f 4a fb 	vpermt2ps -0xa0(%rdx),%ymm24,%ymm17
  407582:	62 c2 3d 20 7f d7    	vpermt2ps %ymm15,%ymm24,%ymm18
  407588:	62 d2 2d 20 7f ef    	vpermt2ps %ymm15,%ymm26,%ymm5
  40758e:	62 f2 3d 20 7f 52 fd 	vpermt2ps -0x60(%rdx),%ymm24,%ymm2
  407595:	c5 7c 28 f9          	vmovaps %ymm1,%ymm15
  407599:	62 72 2d 20 7f 4a f3 	vpermt2ps -0x1a0(%rdx),%ymm26,%ymm9
  4075a0:	62 72 2d 20 7f 72 f7 	vpermt2ps -0x120(%rdx),%ymm26,%ymm14
  4075a7:	62 72 2d 20 7f 42 fb 	vpermt2ps -0xa0(%rdx),%ymm26,%ymm8
  4075ae:	62 f2 2d 20 7f 72 f1 	vpermt2ps -0x1e0(%rdx),%ymm26,%ymm6
  4075b5:	62 f2 2d 20 7f 7a f5 	vpermt2ps -0x160(%rdx),%ymm26,%ymm7
  4075bc:	62 72 2d 20 7f 5a f9 	vpermt2ps -0xe0(%rdx),%ymm26,%ymm11
  4075c3:	62 e2 2d 20 7f 42 fd 	vpermt2ps -0x60(%rdx),%ymm26,%ymm16
  4075ca:	62 32 3d 20 7f f9    	vpermt2ps %ymm17,%ymm24,%ymm15
  4075d0:	62 72 3d 20 7f 62 ff 	vpermt2ps -0x20(%rdx),%ymm24,%ymm12
  4075d7:	62 b2 2d 20 7f c9    	vpermt2ps %ymm17,%ymm26,%ymm1
  4075dd:	62 e1 7c 28 28 ca    	vmovaps %ymm2,%ymm17
  4075e3:	62 c2 3d 20 7f cc    	vpermt2ps %ymm12,%ymm24,%ymm17
  4075e9:	62 d2 2d 20 7f d4    	vpermt2ps %ymm12,%ymm26,%ymm2
  4075ef:	c5 7c 28 e6          	vmovaps %ymm6,%ymm12
  4075f3:	62 52 3d 20 7f e1    	vpermt2ps %ymm9,%ymm24,%ymm12
  4075f9:	62 d2 2d 20 7f f1    	vpermt2ps %ymm9,%ymm26,%ymm6
  4075ff:	c5 7c 28 52 c0       	vmovaps -0x40(%rdx),%ymm10
  407604:	c5 7c 28 cf          	vmovaps %ymm7,%ymm9
  407608:	62 52 3d 20 7f ce    	vpermt2ps %ymm14,%ymm24,%ymm9
  40760e:	62 d2 2d 20 7f fe    	vpermt2ps %ymm14,%ymm26,%ymm7
  407614:	c4 41 7c 28 f3       	vmovaps %ymm11,%ymm14
  407619:	62 72 2d 20 7f 52 ff 	vpermt2ps -0x20(%rdx),%ymm26,%ymm10
  407620:	62 52 3d 20 7f f0    	vpermt2ps %ymm8,%ymm24,%ymm14
  407626:	62 52 2d 20 7f d8    	vpermt2ps %ymm8,%ymm26,%ymm11
  40762c:	62 c1 7c 28 28 e7    	vmovaps %ymm15,%ymm20
  407632:	62 31 7c 28 28 c0    	vmovaps %ymm16,%ymm8
  407638:	62 52 3d 20 7f c2    	vpermt2ps %ymm10,%ymm24,%ymm8
  40763e:	62 c2 2d 20 7f c2    	vpermt2ps %ymm10,%ymm26,%ymm16
  407644:	62 a2 3d 20 7f e1    	vpermt2ps %ymm17,%ymm24,%ymm20
  40764a:	62 32 2d 20 7f f9    	vpermt2ps %ymm17,%ymm26,%ymm15
  407650:	c4 41 7c 28 d5       	vmovaps %ymm13,%ymm10
  407655:	62 c1 7c 28 28 cc    	vmovaps %ymm12,%ymm17
  40765b:	62 32 3d 20 7f d2    	vpermt2ps %ymm18,%ymm24,%ymm10
  407661:	62 32 2d 20 7f ea    	vpermt2ps %ymm18,%ymm26,%ymm13
  407667:	62 c2 3d 20 7f c9    	vpermt2ps %ymm9,%ymm24,%ymm17
  40766d:	62 c1 7c 28 28 de    	vmovaps %ymm14,%ymm19
  407673:	62 e1 7c 28 28 d1    	vmovaps %ymm1,%ymm18
  407679:	62 c2 3d 20 7f d8    	vpermt2ps %ymm8,%ymm24,%ymm19
  40767f:	62 f2 2d 20 7f ca    	vpermt2ps %ymm2,%ymm26,%ymm1
  407685:	62 52 2d 20 7f f0    	vpermt2ps %ymm8,%ymm26,%ymm14
  40768b:	62 e2 3d 20 7f d2    	vpermt2ps %ymm2,%ymm24,%ymm18
  407691:	c5 7c 28 c6          	vmovaps %ymm6,%ymm8
  407695:	c5 fc 28 d6          	vmovaps %ymm6,%ymm2
  407699:	62 b1 7c 28 28 f1    	vmovaps %ymm17,%ymm6
  40769f:	62 b2 3d 20 7f f3    	vpermt2ps %ymm19,%ymm24,%ymm6
  4076a5:	62 52 2d 20 7f e1    	vpermt2ps %ymm9,%ymm26,%ymm12
  4076ab:	62 b1 4c 28 c2 cf 04 	vcmpneqps %ymm23,%ymm6,%k1
  4076b2:	c5 7c 28 cc          	vmovaps %ymm4,%ymm9
  4076b6:	c5 7c 29 d6          	vmovaps %ymm10,%ymm6
  4076ba:	62 72 3d 20 7f cd    	vpermt2ps %ymm5,%ymm24,%ymm9
  4076c0:	62 b2 3d 20 7f f4    	vpermt2ps %ymm20,%ymm24,%ymm6
  4076c6:	62 b1 4c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm6,%k0
  4076cd:	c5 7c 29 ce          	vmovaps %ymm9,%ymm6
  4076d1:	62 f2 2d 20 7f e5    	vpermt2ps %ymm5,%ymm26,%ymm4
  4076d7:	62 72 3d 20 7f c7    	vpermt2ps %ymm7,%ymm24,%ymm8
  4076dd:	c5 7c 29 dd          	vmovaps %ymm11,%ymm5
  4076e1:	62 b2 3d 20 7f f2    	vpermt2ps %ymm18,%ymm24,%ymm6
  4076e7:	62 b1 4c 28 c2 df 04 	vcmpneqps %ymm23,%ymm6,%k3
  4076ee:	62 b2 3d 20 7f e8    	vpermt2ps %ymm16,%ymm24,%ymm5
  4076f4:	c5 7c 29 c6          	vmovaps %ymm8,%ymm6
  4076f8:	62 f2 3d 20 7f f5    	vpermt2ps %ymm5,%ymm24,%ymm6
  4076fe:	62 b1 4c 28 c2 e7 04 	vcmpneqps %ymm23,%ymm6,%k4
  407705:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  407709:	62 d2 3d 20 7f f7    	vpermt2ps %ymm15,%ymm24,%ymm6
  40770f:	62 b1 4c 28 c2 ef 04 	vcmpneqps %ymm23,%ymm6,%k5
  407716:	c5 7c 29 e6          	vmovaps %ymm12,%ymm6
  40771a:	62 d2 3d 20 7f f6    	vpermt2ps %ymm14,%ymm24,%ymm6
  407720:	62 b1 4c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm6,%k6
  407727:	c5 fc 28 f4          	vmovaps %ymm4,%ymm6
  40772b:	62 f2 2d 20 7f d7    	vpermt2ps %ymm7,%ymm26,%ymm2
  407731:	62 f2 3d 20 7f f1    	vpermt2ps %ymm1,%ymm24,%ymm6
  407737:	62 b1 4c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm6,%k7
  40773e:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  407742:	c5 f9 93 c3          	kmovb  %k3,%eax
  407746:	62 32 2d 20 7f d8    	vpermt2ps %ymm16,%ymm26,%ymm11
  40774c:	c5 fc 28 f2          	vmovaps %ymm2,%ymm6
  407750:	c5 f9 93 f1          	kmovb  %k1,%esi
  407754:	09 c6                	or     %eax,%esi
  407756:	62 d2 3d 20 7f f3    	vpermt2ps %ymm11,%ymm24,%ymm6
  40775c:	c5 f9 93 c4          	kmovb  %k4,%eax
  407760:	09 c6                	or     %eax,%esi
  407762:	62 b1 4c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm6,%k2
  407769:	c5 f9 93 c5          	kmovb  %k5,%eax
  40776d:	62 32 2d 20 7f d4    	vpermt2ps %ymm20,%ymm26,%ymm10
  407773:	09 c6                	or     %eax,%esi
  407775:	62 b1 7c 28 28 f9    	vmovaps %ymm17,%ymm7
  40777b:	c5 f9 93 c6          	kmovb  %k6,%eax
  40777f:	62 b1 2c 28 c2 df 04 	vcmpneqps %ymm23,%ymm10,%k3
  407786:	09 c6                	or     %eax,%esi
  407788:	62 b2 2d 20 7f fb    	vpermt2ps %ymm19,%ymm26,%ymm7
  40778e:	c5 f9 93 c7          	kmovb  %k7,%eax
  407792:	62 b1 44 28 c2 e7 04 	vcmpneqps %ymm23,%ymm7,%k4
  407799:	09 c6                	or     %eax,%esi
  40779b:	62 32 2d 20 7f ca    	vpermt2ps %ymm18,%ymm26,%ymm9
  4077a1:	c5 f9 93 c2          	kmovb  %k2,%eax
  4077a5:	62 72 2d 20 7f c5    	vpermt2ps %ymm5,%ymm26,%ymm8
  4077ab:	09 c6                	or     %eax,%esi
  4077ad:	62 b1 34 28 c2 ef 04 	vcmpneqps %ymm23,%ymm9,%k5
  4077b4:	c5 7c 29 ee          	vmovaps %ymm13,%ymm6
  4077b8:	c5 7c 29 e5          	vmovaps %ymm12,%ymm5
  4077bc:	c5 f9 93 c3          	kmovb  %k3,%eax
  4077c0:	62 b1 3c 28 c2 f7 04 	vcmpneqps %ymm23,%ymm8,%k6
  4077c7:	09 c6                	or     %eax,%esi
  4077c9:	62 d2 2d 20 7f f7    	vpermt2ps %ymm15,%ymm26,%ymm6
  4077cf:	62 d2 2d 20 7f ee    	vpermt2ps %ymm14,%ymm26,%ymm5
  4077d5:	62 b1 54 28 c2 c7 04 	vcmpneqps %ymm23,%ymm5,%k0
  4077dc:	c5 f9 93 c4          	kmovb  %k4,%eax
  4077e0:	62 b1 4c 28 c2 ff 04 	vcmpneqps %ymm23,%ymm6,%k7
  4077e7:	09 c6                	or     %eax,%esi
  4077e9:	62 f2 2d 20 7f e1    	vpermt2ps %ymm1,%ymm26,%ymm4
  4077ef:	c5 f9 93 c5          	kmovb  %k5,%eax
  4077f3:	09 c6                	or     %eax,%esi
  4077f5:	62 b1 5c 28 c2 d7 04 	vcmpneqps %ymm23,%ymm4,%k2
  4077fc:	c5 f9 93 c6          	kmovb  %k6,%eax
  407800:	62 d2 2d 20 7f d3    	vpermt2ps %ymm11,%ymm26,%ymm2
  407806:	09 c6                	or     %eax,%esi
  407808:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  40780c:	c5 f9 93 c7          	kmovb  %k7,%eax
  407810:	09 c6                	or     %eax,%esi
  407812:	c5 f9 93 c0          	kmovb  %k0,%eax
  407816:	62 b1 6c 28 c2 c7 04 	vcmpneqps %ymm23,%ymm2,%k0
  40781d:	09 c6                	or     %eax,%esi
  40781f:	c5 fb 58 db          	vaddsd %xmm3,%xmm0,%xmm3
  407823:	c5 f9 93 c2          	kmovb  %k2,%eax
  407827:	09 c6                	or     %eax,%esi
  407829:	c5 f9 92 ce          	kmovb  %esi,%k1
  40782d:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  407831:	62 f1 7d a9 6f 4c 24 	vmovdqa32 0x120(%rsp),%ymm1{%k1}{z}
  407838:	09 
  407839:	62 61 25 20 eb d9    	vpord  %ymm1,%ymm27,%ymm27
  40783f:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  407844:	48 39 d1             	cmp    %rdx,%rcx
  407847:	0f 85 f6 f3 ff ff    	jne    406c43 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x443>
  40784d:	62 91 7d 08 6f cb    	vmovdqa32 %xmm27,%xmm1
  407853:	62 63 7d 28 39 d8 01 	vextracti32x4 $0x1,%ymm27,%xmm0
  40785a:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  40785e:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  407863:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  407867:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  40786c:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  407870:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  407874:	41 09 c5             	or     %eax,%r13d
  407877:	48 8d 84 24 80 19 00 	lea    0x1980(%rsp),%rax
  40787e:	00 
  40787f:	48 39 c1             	cmp    %rax,%rcx
  407882:	0f 85 a7 f3 ff ff    	jne    406c2f <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x42f>
  407888:	c4 e2 78 49 c0       	tilerelease 
  40788d:	c5 f8 77             	vzeroupper 
  407890:	e9 ca ef ff ff       	jmpq   40685f <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x5f>
  407895:	48 8b 83 98 00 00 00 	mov    0x98(%rbx),%rax
  40789c:	80 38 00             	cmpb   $0x0,(%rax)
  40789f:	0f 84 db 10 00 00    	je     408980 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x2180>
  4078a5:	c5 e9 ef d2          	vpxor  %xmm2,%xmm2,%xmm2
  4078a9:	62 f2 7d 48 58 05 25 	vpbroadcastd 0x6e25(%rip),%zmm0        # 40e6d8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x238>
  4078b0:	6e 00 00 
  4078b3:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  4078b8:	62 f1 fd 48 6f da    	vmovdqa64 %zmm2,%zmm3
  4078be:	62 f1 fd 48 6f e2    	vmovdqa64 %zmm2,%zmm4
  4078c4:	62 f1 fd 48 6f ea    	vmovdqa64 %zmm2,%zmm5
  4078ca:	62 f1 fd 48 6f f2    	vmovdqa64 %zmm2,%zmm6
  4078d0:	62 f1 fd 48 6f fa    	vmovdqa64 %zmm2,%zmm7
  4078d6:	62 71 fd 48 6f c2    	vmovdqa64 %zmm2,%zmm8
  4078dc:	62 71 fd 48 6f ca    	vmovdqa64 %zmm2,%zmm9
  4078e2:	62 71 fd 48 6f d2    	vmovdqa64 %zmm2,%zmm10
  4078e8:	62 71 fd 48 6f da    	vmovdqa64 %zmm2,%zmm11
  4078ee:	62 f1 fd 48 6f ca    	vmovdqa64 %zmm2,%zmm1
  4078f4:	62 71 fd 48 6f e2    	vmovdqa64 %zmm2,%zmm12
  4078fa:	62 72 7d 48 50 e0    	vpdpbusd %zmm0,%zmm0,%zmm12
  407900:	62 f2 7d 48 50 c8    	vpdpbusd %zmm0,%zmm0,%zmm1
  407906:	62 72 7d 48 50 d8    	vpdpbusd %zmm0,%zmm0,%zmm11
  40790c:	62 72 7d 48 50 d0    	vpdpbusd %zmm0,%zmm0,%zmm10
  407912:	62 72 7d 48 50 c8    	vpdpbusd %zmm0,%zmm0,%zmm9
  407918:	62 72 7d 48 50 c0    	vpdpbusd %zmm0,%zmm0,%zmm8
  40791e:	62 f2 7d 48 50 f8    	vpdpbusd %zmm0,%zmm0,%zmm7
  407924:	62 f2 7d 48 50 f0    	vpdpbusd %zmm0,%zmm0,%zmm6
  40792a:	62 f2 7d 48 50 e8    	vpdpbusd %zmm0,%zmm0,%zmm5
  407930:	62 f2 7d 48 50 e0    	vpdpbusd %zmm0,%zmm0,%zmm4
  407936:	62 f2 7d 48 50 d8    	vpdpbusd %zmm0,%zmm0,%zmm3
  40793c:	62 f2 7d 48 50 d0    	vpdpbusd %zmm0,%zmm0,%zmm2
  407942:	ff c8                	dec    %eax
  407944:	75 b4                	jne    4078fa <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x10fa>
  407946:	62 53 fd 48 3b e5 01 	vextracti64x4 $0x1,%zmm12,%ymm13
  40794d:	c4 41 15 fe e4       	vpaddd %ymm12,%ymm13,%ymm12
  407952:	62 53 fd 28 39 e5 01 	vextracti64x2 $0x1,%ymm12,%xmm13
  407959:	c4 41 11 fe ec       	vpaddd %xmm12,%xmm13,%xmm13
  40795e:	c4 41 79 70 e5 4e    	vpshufd $0x4e,%xmm13,%xmm12
  407964:	c4 41 19 fe e5       	vpaddd %xmm13,%xmm12,%xmm12
  407969:	62 d3 fd 48 3b cd 01 	vextracti64x4 $0x1,%zmm1,%ymm13
  407970:	c4 c1 75 fe cd       	vpaddd %ymm13,%ymm1,%ymm1
  407975:	62 d3 fd 28 39 cd 01 	vextracti64x2 $0x1,%ymm1,%xmm13
  40797c:	c5 79 7e e2          	vmovd  %xmm12,%edx
  407980:	c5 11 fe e9          	vpaddd %xmm1,%xmm13,%xmm13
  407984:	c4 63 79 16 e0 01    	vpextrd $0x1,%xmm12,%eax
  40798a:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  40798e:	01 d0                	add    %edx,%eax
  407990:	c4 c1 79 70 cd 4e    	vpshufd $0x4e,%xmm13,%xmm1
  407996:	c4 c1 71 fe cd       	vpaddd %xmm13,%xmm1,%xmm1
  40799b:	c5 7b 2a e0          	vcvtsi2sd %eax,%xmm0,%xmm12
  40799f:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  4079a3:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  4079a9:	01 d0                	add    %edx,%eax
  4079ab:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  4079af:	c5 1b 58 25 31 6d 00 	vaddsd 0x6d31(%rip),%xmm12,%xmm12        # 40e6e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  4079b6:	00 
  4079b7:	45 31 ed             	xor    %r13d,%r13d
  4079ba:	c4 41 73 58 e4       	vaddsd %xmm12,%xmm1,%xmm12
  4079bf:	62 73 fd 48 3b d9 01 	vextracti64x4 $0x1,%zmm11,%ymm1
  4079c6:	c4 c1 75 fe cb       	vpaddd %ymm11,%ymm1,%ymm1
  4079cb:	62 d3 fd 28 39 cb 01 	vextracti64x2 $0x1,%ymm1,%xmm11
  4079d2:	c4 c1 71 fe cb       	vpaddd %xmm11,%xmm1,%xmm1
  4079d7:	c5 79 70 d9 4e       	vpshufd $0x4e,%xmm1,%xmm11
  4079dc:	c5 a1 fe c9          	vpaddd %xmm1,%xmm11,%xmm1
  4079e0:	c4 e3 79 16 ca 01    	vpextrd $0x1,%xmm1,%edx
  4079e6:	c5 f9 7e c8          	vmovd  %xmm1,%eax
  4079ea:	01 d0                	add    %edx,%eax
  4079ec:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  4079f0:	c4 41 73 58 e4       	vaddsd %xmm12,%xmm1,%xmm12
  4079f5:	62 73 fd 48 3b d1 01 	vextracti64x4 $0x1,%zmm10,%ymm1
  4079fc:	c4 c1 75 fe ca       	vpaddd %ymm10,%ymm1,%ymm1
  407a01:	62 d3 fd 28 39 ca 01 	vextracti64x2 $0x1,%ymm1,%xmm10
  407a08:	c5 29 fe d1          	vpaddd %xmm1,%xmm10,%xmm10
  407a0c:	c4 c1 79 70 ca 4e    	vpshufd $0x4e,%xmm10,%xmm1
  407a12:	c4 c1 71 fe ca       	vpaddd %xmm10,%xmm1,%xmm1
  407a17:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407a1b:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407a21:	01 d0                	add    %edx,%eax
  407a23:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407a27:	c4 41 73 58 d4       	vaddsd %xmm12,%xmm1,%xmm10
  407a2c:	62 73 fd 48 3b c9 01 	vextracti64x4 $0x1,%zmm9,%ymm1
  407a33:	c4 c1 75 fe c9       	vpaddd %ymm9,%ymm1,%ymm1
  407a38:	62 d3 fd 28 39 c9 01 	vextracti64x2 $0x1,%ymm1,%xmm9
  407a3f:	c5 31 fe c9          	vpaddd %xmm1,%xmm9,%xmm9
  407a43:	c4 c1 79 70 c9 4e    	vpshufd $0x4e,%xmm9,%xmm1
  407a49:	c4 c1 71 fe c9       	vpaddd %xmm9,%xmm1,%xmm1
  407a4e:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407a52:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407a58:	01 d0                	add    %edx,%eax
  407a5a:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407a5e:	c4 41 73 58 d2       	vaddsd %xmm10,%xmm1,%xmm10
  407a63:	62 73 fd 48 3b c1 01 	vextracti64x4 $0x1,%zmm8,%ymm1
  407a6a:	c4 c1 75 fe c8       	vpaddd %ymm8,%ymm1,%ymm1
  407a6f:	62 d3 fd 28 39 c8 01 	vextracti64x2 $0x1,%ymm1,%xmm8
  407a76:	c5 39 fe c1          	vpaddd %xmm1,%xmm8,%xmm8
  407a7a:	c4 c1 79 70 c8 4e    	vpshufd $0x4e,%xmm8,%xmm1
  407a80:	c4 c1 71 fe c8       	vpaddd %xmm8,%xmm1,%xmm1
  407a85:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407a89:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407a8f:	01 d0                	add    %edx,%eax
  407a91:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407a95:	c4 41 73 58 c2       	vaddsd %xmm10,%xmm1,%xmm8
  407a9a:	62 f3 fd 48 3b f9 01 	vextracti64x4 $0x1,%zmm7,%ymm1
  407aa1:	c5 f5 fe cf          	vpaddd %ymm7,%ymm1,%ymm1
  407aa5:	62 f3 fd 28 39 cf 01 	vextracti64x2 $0x1,%ymm1,%xmm7
  407aac:	c5 f1 fe cf          	vpaddd %xmm7,%xmm1,%xmm1
  407ab0:	c5 f9 70 f9 4e       	vpshufd $0x4e,%xmm1,%xmm7
  407ab5:	c5 c1 fe c9          	vpaddd %xmm1,%xmm7,%xmm1
  407ab9:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407abd:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407ac3:	01 d0                	add    %edx,%eax
  407ac5:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407ac9:	c4 41 73 58 c0       	vaddsd %xmm8,%xmm1,%xmm8
  407ace:	62 f3 fd 48 3b f1 01 	vextracti64x4 $0x1,%zmm6,%ymm1
  407ad5:	c5 f5 fe ce          	vpaddd %ymm6,%ymm1,%ymm1
  407ad9:	62 f3 fd 28 39 ce 01 	vextracti64x2 $0x1,%ymm1,%xmm6
  407ae0:	c5 c9 fe f1          	vpaddd %xmm1,%xmm6,%xmm6
  407ae4:	c5 f9 70 ce 4e       	vpshufd $0x4e,%xmm6,%xmm1
  407ae9:	c5 f1 fe ce          	vpaddd %xmm6,%xmm1,%xmm1
  407aed:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407af1:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407af7:	01 d0                	add    %edx,%eax
  407af9:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407afd:	c4 c1 73 58 f0       	vaddsd %xmm8,%xmm1,%xmm6
  407b02:	62 f3 fd 48 3b e9 01 	vextracti64x4 $0x1,%zmm5,%ymm1
  407b09:	c5 f5 fe cd          	vpaddd %ymm5,%ymm1,%ymm1
  407b0d:	62 f3 fd 28 39 cd 01 	vextracti64x2 $0x1,%ymm1,%xmm5
  407b14:	c5 d1 fe e9          	vpaddd %xmm1,%xmm5,%xmm5
  407b18:	c5 f9 70 cd 4e       	vpshufd $0x4e,%xmm5,%xmm1
  407b1d:	c5 f1 fe cd          	vpaddd %xmm5,%xmm1,%xmm1
  407b21:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407b25:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407b2b:	01 d0                	add    %edx,%eax
  407b2d:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407b31:	c5 f3 58 f6          	vaddsd %xmm6,%xmm1,%xmm6
  407b35:	62 f3 fd 48 3b e1 01 	vextracti64x4 $0x1,%zmm4,%ymm1
  407b3c:	c5 f5 fe cc          	vpaddd %ymm4,%ymm1,%ymm1
  407b40:	62 f3 fd 28 39 cc 01 	vextracti64x2 $0x1,%ymm1,%xmm4
  407b47:	c5 d9 fe e1          	vpaddd %xmm1,%xmm4,%xmm4
  407b4b:	c5 f9 70 cc 4e       	vpshufd $0x4e,%xmm4,%xmm1
  407b50:	c5 f1 fe cc          	vpaddd %xmm4,%xmm1,%xmm1
  407b54:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407b58:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407b5e:	01 d0                	add    %edx,%eax
  407b60:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407b64:	c5 f3 58 e6          	vaddsd %xmm6,%xmm1,%xmm4
  407b68:	62 f3 fd 48 3b d9 01 	vextracti64x4 $0x1,%zmm3,%ymm1
  407b6f:	c5 f5 fe cb          	vpaddd %ymm3,%ymm1,%ymm1
  407b73:	62 f3 fd 28 39 cb 01 	vextracti64x2 $0x1,%ymm1,%xmm3
  407b7a:	c5 e1 fe d9          	vpaddd %xmm1,%xmm3,%xmm3
  407b7e:	c5 f9 70 cb 4e       	vpshufd $0x4e,%xmm3,%xmm1
  407b83:	c5 f1 fe cb          	vpaddd %xmm3,%xmm1,%xmm1
  407b87:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407b8b:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407b91:	01 d0                	add    %edx,%eax
  407b93:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  407b97:	c5 f3 58 e4          	vaddsd %xmm4,%xmm1,%xmm4
  407b9b:	62 f3 fd 48 3b d1 01 	vextracti64x4 $0x1,%zmm2,%ymm1
  407ba2:	c5 f5 fe ca          	vpaddd %ymm2,%ymm1,%ymm1
  407ba6:	62 f3 fd 28 39 ca 01 	vextracti64x2 $0x1,%ymm1,%xmm2
  407bad:	c5 e9 fe d1          	vpaddd %xmm1,%xmm2,%xmm2
  407bb1:	c5 f9 70 ca 4e       	vpshufd $0x4e,%xmm2,%xmm1
  407bb6:	c5 f1 fe ca          	vpaddd %xmm2,%xmm1,%xmm1
  407bba:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  407bbe:	c4 e3 79 16 c8 01    	vpextrd $0x1,%xmm1,%eax
  407bc4:	01 d0                	add    %edx,%eax
  407bc6:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  407bca:	c5 fb 58 ec          	vaddsd %xmm4,%xmm0,%xmm5
  407bce:	c4 e1 f9 7e eb       	vmovq  %xmm5,%rbx
  407bd3:	c5 f8 77             	vzeroupper 
  407bd6:	e9 84 ec ff ff       	jmpq   40685f <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x5f>
  407bdb:	31 c0                	xor    %eax,%eax
  407bdd:	ba 12 00 00 00       	mov    $0x12,%edx
  407be2:	be 23 10 00 00       	mov    $0x1023,%esi
  407be7:	bf 9e 00 00 00       	mov    $0x9e,%edi
  407bec:	e8 5f b4 ff ff       	callq  403050 <syscall@plt>
  407bf1:	48 85 c0             	test   %rax,%rax
  407bf4:	0f 94 c0             	sete   %al
  407bf7:	64 88 04 25 f8 ff ff 	mov    %al,%fs:0xfffffffffffffff8
  407bfe:	ff 
  407bff:	64 c6 04 25 f0 ff ff 	movb   $0x1,%fs:0xfffffffffffffff0
  407c06:	ff 01 
  407c08:	e9 41 ec ff ff       	jmpq   40684e <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x4e>
  407c0d:	48 8d 9c 24 80 01 00 	lea    0x180(%rsp),%rbx
  407c14:	00 
  407c15:	48 89 df             	mov    %rbx,%rdi
  407c18:	ba 00 04 00 00       	mov    $0x400,%edx
  407c1d:	be 01 00 00 00       	mov    $0x1,%esi
  407c22:	e8 59 b5 ff ff       	callq  403180 <memset@plt>
  407c27:	48 8d 8c 24 80 05 00 	lea    0x580(%rsp),%rcx
  407c2e:	00 
  407c2f:	48 89 cf             	mov    %rcx,%rdi
  407c32:	ba 00 04 00 00       	mov    $0x400,%edx
  407c37:	be 01 00 00 00       	mov    $0x1,%esi
  407c3c:	e8 3f b5 ff ff       	callq  403180 <memset@plt>
  407c41:	48 89 c1             	mov    %rax,%rcx
  407c44:	b8 40 00 00 00       	mov    $0x40,%eax
  407c49:	c4 e2 7b 4b 24 03    	tileloadd (%rbx,%rax,1),%tmm4
  407c4f:	c4 e2 7b 4b 2c 01    	tileloadd (%rcx,%rax,1),%tmm5
  407c55:	ba 00 04 00 00       	mov    $0x400,%edx
  407c5a:	c4 e2 7b 49 c0       	tilezero %tmm0
  407c5f:	c4 e2 7b 49 c8       	tilezero %tmm1
  407c64:	c4 e2 7b 49 d0       	tilezero %tmm2
  407c69:	c4 e2 7b 49 d8       	tilezero %tmm3
  407c6e:	b8 00 01 00 00       	mov    $0x100,%eax
  407c73:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407c78:	c4 e2 53 5e c4       	tdpbssd %tmm5,%tmm4,%tmm0
  407c7d:	c4 e2 53 5e cc       	tdpbssd %tmm5,%tmm4,%tmm1
  407c82:	c4 e2 53 5e d4       	tdpbssd %tmm5,%tmm4,%tmm2
  407c87:	c4 e2 53 5e dc       	tdpbssd %tmm5,%tmm4,%tmm3
  407c8c:	ff c8                	dec    %eax
  407c8e:	75 e8                	jne    407c78 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x1478>
  407c90:	ff ca                	dec    %edx
  407c92:	75 c6                	jne    407c5a <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x145a>
  407c94:	48 8d 8c 24 80 09 00 	lea    0x980(%rsp),%rcx
  407c9b:	00 
  407c9c:	b8 40 00 00 00       	mov    $0x40,%eax
  407ca1:	c4 e2 7a 4b 04 01    	tilestored %tmm0,(%rcx,%rax,1)
  407ca7:	48 8d 94 24 80 0d 00 	lea    0xd80(%rsp),%rdx
  407cae:	00 
  407caf:	c4 e2 7a 4b 0c 02    	tilestored %tmm1,(%rdx,%rax,1)
  407cb5:	48 8d 94 24 80 11 00 	lea    0x1180(%rsp),%rdx
  407cbc:	00 
  407cbd:	c4 e2 7a 4b 14 02    	tilestored %tmm2,(%rdx,%rax,1)
  407cc3:	48 8d 94 24 80 15 00 	lea    0x1580(%rsp),%rdx
  407cca:	00 
  407ccb:	c4 e2 7a 4b 1c 02    	tilestored %tmm3,(%rdx,%rax,1)
  407cd1:	62 61 7d 28 6f 05 a5 	vmovdqa32 0x69a5(%rip),%ymm24        # 40e680 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  407cd8:	69 00 00 
  407cdb:	62 61 7d 28 6f 0d 7b 	vmovdqa32 0x697b(%rip),%ymm25        # 40e660 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1c0>
  407ce2:	69 00 00 
  407ce5:	c4 e2 7d 58 1d 92 69 	vpbroadcastd 0x6992(%rip),%ymm3        # 40e680 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x1e0>
  407cec:	00 00 
  407cee:	62 91 7d 28 6f d0    	vmovdqa32 %ymm24,%ymm2
  407cf4:	48 8b 1d ed 69 00 00 	mov    0x69ed(%rip),%rbx        # 40e6e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  407cfb:	62 e2 7d 28 58 3d 9b 	vpbroadcastd 0x699b(%rip),%ymm23        # 40e6a0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x200>
  407d02:	69 00 00 
  407d05:	62 01 7d 28 6f c1    	vmovdqa32 %ymm25,%ymm24
  407d0b:	45 31 ed             	xor    %r13d,%r13d
  407d0e:	c5 fd 7f 9c 24 20 01 	vmovdqa %ymm3,0x120(%rsp)
  407d15:	00 00 
  407d17:	62 61 7d 28 6f ca    	vmovdqa32 %ymm2,%ymm25
  407d1d:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
  407d24:	48 8d 91 00 fc ff ff 	lea    -0x400(%rcx),%rdx
  407d2b:	62 01 2d 00 ef d2    	vpxord %xmm26,%xmm26,%xmm26
  407d31:	c5 fd 6f 7a 40       	vmovdqa 0x40(%rdx),%ymm7
  407d36:	c5 fd 6f 6a 60       	vmovdqa 0x60(%rdx),%ymm5
  407d3b:	c4 e3 7d 39 f9 01    	vextracti128 $0x1,%ymm7,%xmm1
  407d41:	c4 e3 7d 39 e8 01    	vextracti128 $0x1,%ymm5,%xmm0
  407d47:	c5 fd 6f ba 80 00 00 	vmovdqa 0x80(%rdx),%ymm7
  407d4e:	00 
  407d4f:	c5 fd 6f aa a0 00 00 	vmovdqa 0xa0(%rdx),%ymm5
  407d56:	00 
  407d57:	c5 fd 6f 12          	vmovdqa (%rdx),%ymm2
  407d5b:	c4 c3 7d 39 fe 01    	vextracti128 $0x1,%ymm7,%xmm14
  407d61:	c4 c3 7d 39 ea 01    	vextracti128 $0x1,%ymm5,%xmm10
  407d67:	c5 fd 6f ba c0 00 00 	vmovdqa 0xc0(%rdx),%ymm7
  407d6e:	00 
  407d6f:	c5 fd 6f aa e0 00 00 	vmovdqa 0xe0(%rdx),%ymm5
  407d76:	00 
  407d77:	c5 7d 6f 9a a0 01 00 	vmovdqa 0x1a0(%rdx),%ymm11
  407d7e:	00 
  407d7f:	c5 fd 6f 5a 20       	vmovdqa 0x20(%rdx),%ymm3
  407d84:	62 b3 7d 28 39 d5 01 	vextracti32x4 $0x1,%ymm2,%xmm21
  407d8b:	c4 c3 7d 39 f9 01    	vextracti128 $0x1,%ymm7,%xmm9
  407d91:	c5 fd 6f 92 00 01 00 	vmovdqa 0x100(%rdx),%ymm2
  407d98:	00 
  407d99:	c4 e3 7d 39 ef 01    	vextracti128 $0x1,%ymm5,%xmm7
  407d9f:	c5 fd 6f aa 40 01 00 	vmovdqa 0x140(%rdx),%ymm5
  407da6:	00 
  407da7:	62 13 7d 28 39 df 01 	vextracti32x4 $0x1,%ymm11,%xmm31
  407dae:	62 61 7e 28 e6 72 02 	vcvtdq2pd 0x20(%rdx),%ymm30
  407db5:	62 61 7e 28 e6 6a 04 	vcvtdq2pd 0x40(%rdx),%ymm29
  407dbc:	c5 7e e6 aa 40 01 00 	vcvtdq2pd 0x140(%rdx),%ymm13
  407dc3:	00 
  407dc4:	62 e1 7e 28 e6 32    	vcvtdq2pd (%rdx),%ymm22
  407dca:	62 e1 7e 28 e6 5a 06 	vcvtdq2pd 0x60(%rdx),%ymm19
  407dd1:	62 e1 7e 28 e6 52 08 	vcvtdq2pd 0x80(%rdx),%ymm18
  407dd8:	62 e1 7e 28 e6 4a 0a 	vcvtdq2pd 0xa0(%rdx),%ymm17
  407ddf:	62 e1 7e 28 e6 42 0c 	vcvtdq2pd 0xc0(%rdx),%ymm16
  407de6:	c5 7e e6 ba e0 00 00 	vcvtdq2pd 0xe0(%rdx),%ymm15
  407ded:	00 
  407dee:	62 61 7e 28 e6 62 10 	vcvtdq2pd 0x100(%rdx),%ymm28
  407df5:	62 61 7e 28 e6 5a 12 	vcvtdq2pd 0x120(%rdx),%ymm27
  407dfc:	c5 7e e6 82 a0 01 00 	vcvtdq2pd 0x1a0(%rdx),%ymm8
  407e03:	00 
  407e04:	62 11 7e 28 e6 df    	vcvtdq2pd %xmm31,%ymm11
  407e0a:	62 b3 7d 28 39 dc 01 	vextracti32x4 $0x1,%ymm3,%xmm20
  407e11:	c4 e3 7d 39 d4 01    	vextracti128 $0x1,%ymm2,%xmm4
  407e17:	c5 fd 6f 9a 20 01 00 	vmovdqa 0x120(%rdx),%ymm3
  407e1e:	00 
  407e1f:	c5 fd 6f 92 60 01 00 	vmovdqa 0x160(%rdx),%ymm2
  407e26:	00 
  407e27:	c4 e3 7d 39 ee 01    	vextracti128 $0x1,%ymm5,%xmm6
  407e2d:	c5 fe e6 c9          	vcvtdq2pd %xmm1,%ymm1
  407e31:	c5 fe e6 aa 60 01 00 	vcvtdq2pd 0x160(%rdx),%ymm5
  407e38:	00 
  407e39:	c5 fd 29 4c 24 40    	vmovapd %ymm1,0x40(%rsp)
  407e3f:	c5 fd 29 ac 24 80 00 	vmovapd %ymm5,0x80(%rsp)
  407e46:	00 00 
  407e48:	c5 fe e6 c0          	vcvtdq2pd %xmm0,%ymm0
  407e4c:	c5 fd 6f aa 80 01 00 	vmovdqa 0x180(%rdx),%ymm5
  407e53:	00 
  407e54:	c5 fd 29 44 24 60    	vmovapd %ymm0,0x60(%rsp)
  407e5a:	c5 fe e6 82 80 01 00 	vcvtdq2pd 0x180(%rdx),%ymm0
  407e61:	00 
  407e62:	c5 fd 29 84 24 a0 00 	vmovapd %ymm0,0xa0(%rsp)
  407e69:	00 00 
  407e6b:	c5 7d 29 9c 24 c0 00 	vmovapd %ymm11,0xc0(%rsp)
  407e72:	00 00 
  407e74:	62 61 7d 28 6f 7a 0e 	vmovdqa32 0x1c0(%rdx),%ymm31
  407e7b:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  407e82:	07 
  407e83:	c5 fd 6f 82 e0 01 00 	vmovdqa 0x1e0(%rdx),%ymm0
  407e8a:	00 
  407e8b:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407e90:	62 03 7d 28 39 ff 01 	vextracti32x4 $0x1,%ymm31,%xmm31
  407e97:	62 01 7e 28 e6 ff    	vcvtdq2pd %xmm31,%ymm31
  407e9d:	62 61 fd 28 29 7c 24 	vmovapd %ymm31,0xe0(%rsp)
  407ea4:	07 
  407ea5:	62 93 7d 28 39 c7 01 	vextracti32x4 $0x1,%ymm0,%xmm31
  407eac:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  407eb1:	62 91 7e 28 e6 c7    	vcvtdq2pd %xmm31,%ymm0
  407eb7:	c5 fd 29 84 24 00 01 	vmovapd %ymm0,0x100(%rsp)
  407ebe:	00 00 
  407ec0:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  407ec5:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  407ec9:	62 b1 cd 00 15 ce    	vunpckhpd %xmm22,%xmm22,%xmm1
  407ecf:	62 a3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm22,%xmm22
  407ed6:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  407eda:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  407ee1:	07 
  407ee2:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  407ee7:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  407eec:	62 61 fd 08 6e f8    	vmovq  %rax,%xmm31
  407ef2:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  407ef7:	62 91 f7 08 58 cf    	vaddsd %xmm31,%xmm1,%xmm1
  407efd:	62 21 cd 00 15 fe    	vunpckhpd %xmm22,%xmm22,%xmm31
  407f03:	62 a1 7e 28 e6 ed    	vcvtdq2pd %xmm21,%ymm21
  407f09:	62 f1 87 00 58 c9    	vaddsd %xmm1,%xmm31,%xmm1
  407f0f:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  407f16:	07 
  407f17:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  407f1c:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  407f21:	62 e1 fd 08 6e f0    	vmovq  %rax,%xmm22
  407f27:	c4 e1 f9 6e ce       	vmovq  %rsi,%xmm1
  407f2c:	62 b1 f7 08 58 ce    	vaddsd %xmm22,%xmm1,%xmm1
  407f32:	62 21 d5 00 15 fd    	vunpckhpd %xmm21,%xmm21,%xmm31
  407f38:	62 a3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm21,%xmm21
  407f3f:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  407f46:	07 
  407f47:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407f4c:	62 61 87 00 58 f9    	vaddsd %xmm1,%xmm31,%xmm31
  407f52:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  407f57:	62 61 fd 08 13 74 24 	vmovlpd %xmm30,0x38(%rsp)
  407f5e:	07 
  407f5f:	62 01 f7 08 58 ff    	vaddsd %xmm31,%xmm1,%xmm31
  407f65:	62 a1 d5 00 15 f5    	vunpckhpd %xmm21,%xmm21,%xmm22
  407f6b:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407f70:	62 81 cf 00 58 f7    	vaddsd %xmm31,%xmm22,%xmm22
  407f76:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  407f7b:	62 01 8d 00 15 fe    	vunpckhpd %xmm30,%xmm30,%xmm31
  407f81:	62 a1 f7 08 58 f6    	vaddsd %xmm22,%xmm1,%xmm22
  407f87:	62 a1 7e 28 e6 e4    	vcvtdq2pd %xmm20,%ymm20
  407f8d:	c5 fd 28 4c 24 40    	vmovapd 0x40(%rsp),%ymm1
  407f93:	62 21 87 00 58 fe    	vaddsd %xmm22,%xmm31,%xmm31
  407f99:	62 23 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm30,%xmm22
  407fa0:	62 e1 fd 08 13 74 24 	vmovlpd %xmm22,0x38(%rsp)
  407fa7:	07 
  407fa8:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  407faf:	07 
  407fb0:	62 a1 cd 00 15 f6    	vunpckhpd %xmm22,%xmm22,%xmm22
  407fb6:	62 01 8f 00 58 f7    	vaddsd %xmm31,%xmm30,%xmm30
  407fbc:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  407fc3:	07 
  407fc4:	62 61 ff 08 10 7c 24 	vmovsd 0x38(%rsp),%xmm31
  407fcb:	07 
  407fcc:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  407fd2:	62 21 dd 00 15 f4    	vunpckhpd %xmm20,%xmm20,%xmm30
  407fd8:	62 a3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm20,%xmm20
  407fdf:	62 a1 87 00 58 f6    	vaddsd %xmm22,%xmm31,%xmm22
  407fe5:	62 e1 fd 08 13 64 24 	vmovlpd %xmm20,0x38(%rsp)
  407fec:	07 
  407fed:	62 a1 dd 00 15 ec    	vunpckhpd %xmm20,%xmm20,%xmm21
  407ff3:	62 21 8f 00 58 f6    	vaddsd %xmm22,%xmm30,%xmm30
  407ff9:	62 e1 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm22
  408000:	07 
  408001:	62 61 fd 08 13 6c 24 	vmovlpd %xmm29,0x38(%rsp)
  408008:	07 
  408009:	62 81 cf 00 58 f6    	vaddsd %xmm30,%xmm22,%xmm22
  40800f:	62 61 ff 08 10 74 24 	vmovsd 0x38(%rsp),%xmm30
  408016:	07 
  408017:	c5 f9 13 4c 24 40    	vmovlpd %xmm1,0x40(%rsp)
  40801d:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  408023:	62 81 95 00 15 f5    	vunpckhpd %xmm29,%xmm29,%xmm22
  408029:	c5 7e e6 a2 c0 01 00 	vcvtdq2pd 0x1c0(%rdx),%ymm12
  408030:	00 
  408031:	62 a1 8f 00 58 ed    	vaddsd %xmm21,%xmm30,%xmm21
  408037:	c5 7e e6 9a e0 01 00 	vcvtdq2pd 0x1e0(%rdx),%ymm11
  40803e:	00 
  40803f:	c4 41 7e e6 f6       	vcvtdq2pd %xmm14,%ymm14
  408044:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  40804a:	62 23 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm29,%xmm21
  408051:	62 e1 fd 08 13 6c 24 	vmovlpd %xmm21,0x38(%rsp)
  408058:	07 
  408059:	62 61 ff 08 10 6c 24 	vmovsd 0x38(%rsp),%xmm29
  408060:	07 
  408061:	62 a1 d5 00 15 ed    	vunpckhpd %xmm21,%xmm21,%xmm21
  408067:	62 a1 97 00 58 f6    	vaddsd %xmm22,%xmm29,%xmm22
  40806d:	62 61 ff 08 10 6c 24 	vmovsd 0x40(%rsp),%xmm29
  408074:	08 
  408075:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x40(%rsp)
  40807c:	08 
  40807d:	62 a1 d7 00 58 ee    	vaddsd %xmm22,%xmm21,%xmm21
  408083:	62 e1 f5 08 15 f1    	vunpckhpd %xmm1,%xmm1,%xmm22
  408089:	62 f3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm1,%xmm1
  408090:	62 a1 97 00 58 ed    	vaddsd %xmm21,%xmm29,%xmm21
  408096:	62 e1 f5 08 15 e1    	vunpckhpd %xmm1,%xmm1,%xmm20
  40809c:	c4 41 7e e6 d2       	vcvtdq2pd %xmm10,%ymm10
  4080a1:	62 a1 cf 00 58 f5    	vaddsd %xmm21,%xmm22,%xmm22
  4080a7:	c4 41 7e e6 c9       	vcvtdq2pd %xmm9,%ymm9
  4080ac:	c5 fe e6 ff          	vcvtdq2pd %xmm7,%ymm7
  4080b0:	62 a1 f7 08 58 ee    	vaddsd %xmm22,%xmm1,%xmm21
  4080b6:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  4080bd:	08 
  4080be:	c5 fe e6 e4          	vcvtdq2pd %xmm4,%ymm4
  4080c2:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  4080c8:	62 a1 e5 00 15 eb    	vunpckhpd %xmm19,%xmm19,%xmm21
  4080ce:	62 a3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm19,%xmm19
  4080d5:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  4080db:	62 e1 fd 08 13 5c 24 	vmovlpd %xmm19,0x40(%rsp)
  4080e2:	08 
  4080e3:	62 e1 ff 08 10 74 24 	vmovsd 0x40(%rsp),%xmm22
  4080ea:	08 
  4080eb:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  4080f1:	c5 fd 28 44 24 60    	vmovapd 0x60(%rsp),%ymm0
  4080f7:	62 a1 e5 00 15 e3    	vunpckhpd %xmm19,%xmm19,%xmm20
  4080fd:	62 a1 cf 00 58 ed    	vaddsd %xmm21,%xmm22,%xmm21
  408103:	c5 f9 13 44 24 60    	vmovlpd %xmm0,0x60(%rsp)
  408109:	62 e1 ff 08 10 74 24 	vmovsd 0x60(%rsp),%xmm22
  408110:	0c 
  408111:	62 a1 df 00 58 e5    	vaddsd %xmm21,%xmm20,%xmm20
  408117:	62 e1 fd 08 15 e8    	vunpckhpd %xmm0,%xmm0,%xmm21
  40811d:	62 f3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm0,%xmm0
  408124:	62 a1 cf 00 58 e4    	vaddsd %xmm20,%xmm22,%xmm20
  40812a:	62 e1 fd 08 15 d8    	vunpckhpd %xmm0,%xmm0,%xmm19
  408130:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x60(%rsp)
  408137:	0c 
  408138:	62 a1 d7 00 58 ec    	vaddsd %xmm20,%xmm21,%xmm21
  40813e:	c4 e3 7d 39 db 01    	vextracti128 $0x1,%ymm3,%xmm3
  408144:	c5 fe e6 db          	vcvtdq2pd %xmm3,%ymm3
  408148:	62 a1 ff 08 58 e5    	vaddsd %xmm21,%xmm0,%xmm20
  40814e:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  408155:	0c 
  408156:	62 73 fd 28 19 e9 01 	vextractf64x2 $0x1,%ymm13,%xmm1
  40815d:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  408163:	62 a1 ed 00 15 e2    	vunpckhpd %xmm18,%xmm18,%xmm20
  408169:	62 a3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm18,%xmm18
  408170:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  408176:	62 e1 fd 08 13 54 24 	vmovlpd %xmm18,0x60(%rsp)
  40817d:	0c 
  40817e:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  408185:	0c 
  408186:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  40818c:	62 a1 ed 00 15 da    	vunpckhpd %xmm18,%xmm18,%xmm19
  408192:	c5 79 13 74 24 60    	vmovlpd %xmm14,0x60(%rsp)
  408198:	62 a1 d7 00 58 e4    	vaddsd %xmm20,%xmm21,%xmm20
  40819e:	62 e1 ff 08 10 6c 24 	vmovsd 0x60(%rsp),%xmm21
  4081a5:	0c 
  4081a6:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x60(%rsp)
  4081ad:	0c 
  4081ae:	62 a1 e7 00 58 dc    	vaddsd %xmm20,%xmm19,%xmm19
  4081b4:	62 c1 8d 08 15 e6    	vunpckhpd %xmm14,%xmm14,%xmm20
  4081ba:	62 53 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm14,%xmm14
  4081c1:	62 a1 d7 00 58 db    	vaddsd %xmm19,%xmm21,%xmm19
  4081c7:	62 c1 8d 08 15 d6    	vunpckhpd %xmm14,%xmm14,%xmm18
  4081cd:	c5 fe e6 f6          	vcvtdq2pd %xmm6,%ymm6
  4081d1:	62 a1 df 00 58 e3    	vaddsd %xmm19,%xmm20,%xmm20
  4081d7:	c4 e3 7d 39 d2 01    	vextracti128 $0x1,%ymm2,%xmm2
  4081dd:	c5 fe e6 d2          	vcvtdq2pd %xmm2,%ymm2
  4081e1:	62 a1 8f 08 58 dc    	vaddsd %xmm20,%xmm14,%xmm19
  4081e7:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  4081ee:	0c 
  4081ef:	c4 e3 7d 39 ed 01    	vextracti128 $0x1,%ymm5,%xmm5
  4081f5:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  4081fb:	62 a1 f5 00 15 d9    	vunpckhpd %xmm17,%xmm17,%xmm19
  408201:	62 a3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm17,%xmm17
  408208:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  40820e:	62 e1 fd 08 13 4c 24 	vmovlpd %xmm17,0x60(%rsp)
  408215:	0c 
  408216:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  40821d:	0c 
  40821e:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  408224:	62 a1 f5 00 15 d1    	vunpckhpd %xmm17,%xmm17,%xmm18
  40822a:	c5 79 13 54 24 60    	vmovlpd %xmm10,0x60(%rsp)
  408230:	62 a1 df 00 58 db    	vaddsd %xmm19,%xmm20,%xmm19
  408236:	62 e1 ff 08 10 64 24 	vmovsd 0x60(%rsp),%xmm20
  40823d:	0c 
  40823e:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x60(%rsp)
  408245:	0c 
  408246:	62 a1 ef 00 58 d3    	vaddsd %xmm19,%xmm18,%xmm18
  40824c:	62 c1 ad 08 15 da    	vunpckhpd %xmm10,%xmm10,%xmm19
  408252:	62 53 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm10,%xmm10
  408259:	62 a1 df 00 58 d2    	vaddsd %xmm18,%xmm20,%xmm18
  40825f:	62 c1 ad 08 15 ca    	vunpckhpd %xmm10,%xmm10,%xmm17
  408265:	c5 fe e6 ed          	vcvtdq2pd %xmm5,%ymm5
  408269:	62 a1 e7 00 58 da    	vaddsd %xmm18,%xmm19,%xmm19
  40826f:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
  408276:	62 a1 af 08 58 d3    	vaddsd %xmm19,%xmm10,%xmm18
  40827c:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  408283:	0c 
  408284:	62 43 fd 28 19 da 01 	vextractf64x2 $0x1,%ymm27,%xmm10
  40828b:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  408291:	62 a1 fd 00 15 d0    	vunpckhpd %xmm16,%xmm16,%xmm18
  408297:	62 a3 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm16,%xmm16
  40829e:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  4082a4:	62 e1 fd 08 13 44 24 	vmovlpd %xmm16,0x60(%rsp)
  4082ab:	0c 
  4082ac:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  4082b3:	0c 
  4082b4:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  4082ba:	62 a1 fd 00 15 c8    	vunpckhpd %xmm16,%xmm16,%xmm17
  4082c0:	c5 79 13 4c 24 60    	vmovlpd %xmm9,0x60(%rsp)
  4082c6:	62 a1 e7 00 58 d2    	vaddsd %xmm18,%xmm19,%xmm18
  4082cc:	62 e1 ff 08 10 5c 24 	vmovsd 0x60(%rsp),%xmm19
  4082d3:	0c 
  4082d4:	c5 79 13 7c 24 60    	vmovlpd %xmm15,0x60(%rsp)
  4082da:	62 a1 f7 00 58 ca    	vaddsd %xmm18,%xmm17,%xmm17
  4082e0:	62 c1 b5 08 15 d1    	vunpckhpd %xmm9,%xmm9,%xmm18
  4082e6:	62 53 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm9,%xmm9
  4082ed:	62 a1 e7 00 58 c9    	vaddsd %xmm17,%xmm19,%xmm17
  4082f3:	62 c1 b5 08 15 c1    	vunpckhpd %xmm9,%xmm9,%xmm16
  4082f9:	62 a1 ef 00 58 d1    	vaddsd %xmm17,%xmm18,%xmm18
  4082ff:	62 a1 b7 08 58 ca    	vaddsd %xmm18,%xmm9,%xmm17
  408305:	62 e1 ff 08 10 54 24 	vmovsd 0x60(%rsp),%xmm18
  40830c:	0c 
  40830d:	c5 f9 13 7c 24 60    	vmovlpd %xmm7,0x60(%rsp)
  408313:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  408319:	62 c1 85 08 15 cf    	vunpckhpd %xmm15,%xmm15,%xmm17
  40831f:	62 53 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm15,%xmm15
  408326:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  40832c:	62 e1 ff 08 10 54 24 	vmovsd 0x60(%rsp),%xmm18
  408333:	0c 
  408334:	62 61 fd 08 13 64 24 	vmovlpd %xmm28,0x60(%rsp)
  40833b:	0c 
  40833c:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  408342:	62 c1 85 08 15 c7    	vunpckhpd %xmm15,%xmm15,%xmm16
  408348:	62 a1 87 08 58 c9    	vaddsd %xmm17,%xmm15,%xmm17
  40834e:	62 a1 ff 00 58 c1    	vaddsd %xmm17,%xmm16,%xmm16
  408354:	62 e1 c5 08 15 cf    	vunpckhpd %xmm7,%xmm7,%xmm17
  40835a:	62 f3 fd 28 19 ff 01 	vextractf64x2 $0x1,%ymm7,%xmm7
  408361:	62 a1 ef 00 58 c0    	vaddsd %xmm16,%xmm18,%xmm16
  408367:	c5 41 15 ff          	vunpckhpd %xmm7,%xmm7,%xmm15
  40836b:	62 a1 f7 00 58 c8    	vaddsd %xmm16,%xmm17,%xmm17
  408371:	62 a1 c7 08 58 c1    	vaddsd %xmm17,%xmm7,%xmm16
  408377:	62 e1 ff 08 10 4c 24 	vmovsd 0x60(%rsp),%xmm17
  40837e:	0c 
  40837f:	c5 f9 13 64 24 60    	vmovlpd %xmm4,0x60(%rsp)
  408385:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  40838b:	62 81 9d 00 15 c4    	vunpckhpd %xmm28,%xmm28,%xmm16
  408391:	c5 fd 28 bc 24 80 00 	vmovapd 0x80(%rsp),%ymm7
  408398:	00 00 
  40839a:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  4083a0:	62 e1 ff 08 10 4c 24 	vmovsd 0x60(%rsp),%xmm17
  4083a7:	0c 
  4083a8:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4083ae:	62 43 fd 28 19 e7 01 	vextractf64x2 $0x1,%ymm28,%xmm15
  4083b5:	62 a1 87 08 58 c0    	vaddsd %xmm16,%xmm15,%xmm16
  4083bb:	c4 41 01 15 ff       	vunpckhpd %xmm15,%xmm15,%xmm15
  4083c0:	62 31 87 08 58 f8    	vaddsd %xmm16,%xmm15,%xmm15
  4083c6:	62 e1 dd 08 15 c4    	vunpckhpd %xmm4,%xmm4,%xmm16
  4083cc:	62 f3 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm4,%xmm4
  4083d3:	62 51 f7 00 58 ff    	vaddsd %xmm15,%xmm17,%xmm15
  4083d9:	62 c1 ff 00 58 c7    	vaddsd %xmm15,%xmm16,%xmm16
  4083df:	62 31 df 08 58 f8    	vaddsd %xmm16,%xmm4,%xmm15
  4083e5:	c5 d9 15 e4          	vunpckhpd %xmm4,%xmm4,%xmm4
  4083e9:	c4 c1 5b 58 e7       	vaddsd %xmm15,%xmm4,%xmm4
  4083ee:	62 11 a5 00 15 fb    	vunpckhpd %xmm27,%xmm27,%xmm15
  4083f4:	62 f1 a7 00 58 e4    	vaddsd %xmm4,%xmm27,%xmm4
  4083fa:	c5 03 58 fc          	vaddsd %xmm4,%xmm15,%xmm15
  4083fe:	c4 c1 2b 58 e7       	vaddsd %xmm15,%xmm10,%xmm4
  408403:	c4 41 29 15 d2       	vunpckhpd %xmm10,%xmm10,%xmm10
  408408:	c5 2b 58 d4          	vaddsd %xmm4,%xmm10,%xmm10
  40840c:	c5 e1 15 e3          	vunpckhpd %xmm3,%xmm3,%xmm4
  408410:	c4 41 63 58 d2       	vaddsd %xmm10,%xmm3,%xmm10
  408415:	62 f3 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm3,%xmm3
  40841c:	c4 c1 5b 58 e2       	vaddsd %xmm10,%xmm4,%xmm4
  408421:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  408425:	c5 e1 15 db          	vunpckhpd %xmm3,%xmm3,%xmm3
  408429:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40842d:	c4 c1 11 15 e5       	vunpckhpd %xmm13,%xmm13,%xmm4
  408432:	c5 93 58 db          	vaddsd %xmm3,%xmm13,%xmm3
  408436:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  40843a:	c5 f3 58 dc          	vaddsd %xmm4,%xmm1,%xmm3
  40843e:	c5 f1 15 c9          	vunpckhpd %xmm1,%xmm1,%xmm1
  408442:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  408446:	c5 c9 15 de          	vunpckhpd %xmm6,%xmm6,%xmm3
  40844a:	c5 f3 58 ce          	vaddsd %xmm6,%xmm1,%xmm1
  40844e:	62 f3 fd 28 19 f6 01 	vextractf64x2 $0x1,%ymm6,%xmm6
  408455:	c5 49 15 ce          	vunpckhpd %xmm6,%xmm6,%xmm9
  408459:	c5 f3 58 db          	vaddsd %xmm3,%xmm1,%xmm3
  40845d:	c5 c1 15 cf          	vunpckhpd %xmm7,%xmm7,%xmm1
  408461:	c5 e3 58 de          	vaddsd %xmm6,%xmm3,%xmm3
  408465:	c4 c1 63 58 d9       	vaddsd %xmm9,%xmm3,%xmm3
  40846a:	c5 c3 58 db          	vaddsd %xmm3,%xmm7,%xmm3
  40846e:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  408472:	62 f3 fd 28 19 fb 01 	vextractf64x2 $0x1,%ymm7,%xmm3
  408479:	c5 fd 28 bc 24 a0 00 	vmovapd 0xa0(%rsp),%ymm7
  408480:	00 00 
  408482:	c5 e3 58 c9          	vaddsd %xmm1,%xmm3,%xmm1
  408486:	c5 e1 15 db          	vunpckhpd %xmm3,%xmm3,%xmm3
  40848a:	62 f3 fd 28 19 f8 01 	vextractf64x2 $0x1,%ymm7,%xmm0
  408491:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  408495:	c5 e9 15 ca          	vunpckhpd %xmm2,%xmm2,%xmm1
  408499:	c5 eb 58 db          	vaddsd %xmm3,%xmm2,%xmm3
  40849d:	62 f3 fd 28 19 d2 01 	vextractf64x2 $0x1,%ymm2,%xmm2
  4084a4:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  4084a8:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
  4084ac:	c5 e9 15 d2          	vunpckhpd %xmm2,%xmm2,%xmm2
  4084b0:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  4084b4:	c5 c1 15 cf          	vunpckhpd %xmm7,%xmm7,%xmm1
  4084b8:	c5 c3 58 d2          	vaddsd %xmm2,%xmm7,%xmm2
  4084bc:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  4084c0:	c4 c1 19 15 d4       	vunpckhpd %xmm12,%xmm12,%xmm2
  4084c5:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  4084c9:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  4084cd:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4084d1:	c5 d1 15 cd          	vunpckhpd %xmm5,%xmm5,%xmm1
  4084d5:	c5 fb 58 c5          	vaddsd %xmm5,%xmm0,%xmm0
  4084d9:	62 f3 fd 28 19 ed 01 	vextractf64x2 $0x1,%ymm5,%xmm5
  4084e0:	c5 d1 15 fd          	vunpckhpd %xmm5,%xmm5,%xmm7
  4084e4:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4084e8:	c4 c1 39 15 c8       	vunpckhpd %xmm8,%xmm8,%xmm1
  4084ed:	c5 fb 58 c5          	vaddsd %xmm5,%xmm0,%xmm0
  4084f1:	c5 fd 28 ac 24 c0 00 	vmovapd 0xc0(%rsp),%ymm5
  4084f8:	00 00 
  4084fa:	c5 fd 28 9c 24 e0 00 	vmovapd 0xe0(%rsp),%ymm3
  408501:	00 00 
  408503:	c5 fb 58 c7          	vaddsd %xmm7,%xmm0,%xmm0
  408507:	62 f3 fd 28 19 ee 01 	vextractf64x2 $0x1,%ymm5,%xmm6
  40850e:	c5 fd 6f a2 00 fe ff 	vmovdqa -0x200(%rdx),%ymm4
  408515:	ff 
  408516:	c4 c1 7b 58 c0       	vaddsd %xmm8,%xmm0,%xmm0
  40851b:	62 53 fd 28 19 c0 01 	vextractf64x2 $0x1,%ymm8,%xmm8
  408522:	c4 41 39 15 e8       	vunpckhpd %xmm8,%xmm8,%xmm13
  408527:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  40852b:	c5 d1 15 cd          	vunpckhpd %xmm5,%xmm5,%xmm1
  40852f:	62 e1 7d 28 6f 52 f2 	vmovdqa32 -0x1c0(%rdx),%ymm18
  408536:	c4 c1 7b 58 c0       	vaddsd %xmm8,%xmm0,%xmm0
  40853b:	62 f2 3d 20 7e 62 f1 	vpermt2d -0x1e0(%rdx),%ymm24,%ymm4
  408542:	c5 7d 6f ba c0 fe ff 	vmovdqa -0x140(%rdx),%ymm15
  408549:	ff 
  40854a:	c4 c1 7b 58 c5       	vaddsd %xmm13,%xmm0,%xmm0
  40854f:	62 e2 3d 20 7e 52 f3 	vpermt2d -0x1a0(%rdx),%ymm24,%ymm18
  408556:	62 e1 7d 28 6f 4a fa 	vmovdqa32 -0xc0(%rdx),%ymm17
  40855d:	c5 fb 58 c5          	vaddsd %xmm5,%xmm0,%xmm0
  408561:	62 f3 fd 28 19 dd 01 	vextractf64x2 $0x1,%ymm3,%xmm5
  408568:	c5 7d 6f ec          	vmovdqa %ymm4,%ymm13
  40856c:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408570:	62 72 3d 20 7e 7a f7 	vpermt2d -0x120(%rdx),%ymm24,%ymm15
  408577:	62 32 3d 20 7e ea    	vpermt2d %ymm18,%ymm24,%ymm13
  40857d:	c5 fb 58 c6          	vaddsd %xmm6,%xmm0,%xmm0
  408581:	c5 c9 15 f6          	vunpckhpd %xmm6,%xmm6,%xmm6
  408585:	62 b2 35 20 7e e2    	vpermt2d %ymm18,%ymm25,%ymm4
  40858b:	c5 fb 58 c6          	vaddsd %xmm6,%xmm0,%xmm0
  40858f:	c5 7d 6f 8a 40 fe ff 	vmovdqa -0x1c0(%rdx),%ymm9
  408596:	ff 
  408597:	c5 fd 6f b2 00 fe ff 	vmovdqa -0x200(%rdx),%ymm6
  40859e:	ff 
  40859f:	c5 9b 58 c8          	vaddsd %xmm0,%xmm12,%xmm1
  4085a3:	62 53 fd 28 19 e4 01 	vextractf64x2 $0x1,%ymm12,%xmm12
  4085aa:	c5 fd 6f ba 80 fe ff 	vmovdqa -0x180(%rdx),%ymm7
  4085b1:	ff 
  4085b2:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  4085b6:	c5 e1 15 d3          	vunpckhpd %xmm3,%xmm3,%xmm2
  4085ba:	c5 7d 6f b2 c0 fe ff 	vmovdqa -0x140(%rdx),%ymm14
  4085c1:	ff 
  4085c2:	c4 c1 73 58 cc       	vaddsd %xmm12,%xmm1,%xmm1
  4085c7:	c4 41 19 15 e4       	vunpckhpd %xmm12,%xmm12,%xmm12
  4085cc:	c5 7d 6f 82 40 ff ff 	vmovdqa -0xc0(%rdx),%ymm8
  4085d3:	ff 
  4085d4:	c4 c1 73 58 cc       	vaddsd %xmm12,%xmm1,%xmm1
  4085d9:	62 e1 7d 28 6f 42 fc 	vmovdqa32 -0x80(%rdx),%ymm16
  4085e0:	c5 7d 6f 62 c0       	vmovdqa -0x40(%rdx),%ymm12
  4085e5:	c5 e3 58 c1          	vaddsd %xmm1,%xmm3,%xmm0
  4085e9:	c4 c1 21 15 cb       	vunpckhpd %xmm11,%xmm11,%xmm1
  4085ee:	62 e2 3d 20 7e 4a fb 	vpermt2d -0xa0(%rdx),%ymm24,%ymm17
  4085f5:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
  4085f9:	62 72 35 20 7e 4a f3 	vpermt2d -0x1a0(%rdx),%ymm25,%ymm9
  408600:	62 72 35 20 7e 72 f7 	vpermt2d -0x120(%rdx),%ymm25,%ymm14
  408607:	c5 fb 58 c5          	vaddsd %xmm5,%xmm0,%xmm0
  40860b:	c5 d1 15 ed          	vunpckhpd %xmm5,%xmm5,%xmm5
  40860f:	62 72 35 20 7e 42 fb 	vpermt2d -0xa0(%rdx),%ymm25,%ymm8
  408616:	c5 fb 58 c5          	vaddsd %xmm5,%xmm0,%xmm0
  40861a:	c5 fd 28 ac 24 00 01 	vmovapd 0x100(%rsp),%ymm5
  408621:	00 00 
  408623:	62 f2 35 20 7e 72 f1 	vpermt2d -0x1e0(%rdx),%ymm25,%ymm6
  40862a:	c4 c1 7b 58 c3       	vaddsd %xmm11,%xmm0,%xmm0
  40862f:	62 53 fd 28 19 db 01 	vextractf64x2 $0x1,%ymm11,%xmm11
  408636:	c5 d1 15 d5          	vunpckhpd %xmm5,%xmm5,%xmm2
  40863a:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  40863e:	62 f2 35 20 7e 7a f5 	vpermt2d -0x160(%rdx),%ymm25,%ymm7
  408645:	62 e2 35 20 7e 42 fd 	vpermt2d -0x60(%rdx),%ymm25,%ymm16
  40864c:	c4 c1 7b 58 c3       	vaddsd %xmm11,%xmm0,%xmm0
  408651:	c4 41 21 15 db       	vunpckhpd %xmm11,%xmm11,%xmm11
  408656:	c4 c1 7b 58 c3       	vaddsd %xmm11,%xmm0,%xmm0
  40865b:	c5 7d 6f 9a 00 ff ff 	vmovdqa -0x100(%rdx),%ymm11
  408662:	ff 
  408663:	c5 d3 58 c8          	vaddsd %xmm0,%xmm5,%xmm1
  408667:	62 f3 fd 28 19 e8 01 	vextractf64x2 $0x1,%ymm5,%xmm0
  40866e:	c5 fd 6f aa 80 fe ff 	vmovdqa -0x180(%rdx),%ymm5
  408675:	ff 
  408676:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  40867a:	62 f2 3d 20 7e 6a f5 	vpermt2d -0x160(%rdx),%ymm24,%ymm5
  408681:	c5 fd 6f 52 80       	vmovdqa -0x80(%rdx),%ymm2
  408686:	c5 f3 58 d8          	vaddsd %xmm0,%xmm1,%xmm3
  40868a:	c5 fd 6f 8a 00 ff ff 	vmovdqa -0x100(%rdx),%ymm1
  408691:	ff 
  408692:	62 e1 7d 28 6f d5    	vmovdqa32 %ymm5,%ymm18
  408698:	62 f2 3d 20 7e 4a f9 	vpermt2d -0xe0(%rdx),%ymm24,%ymm1
  40869f:	62 c2 3d 20 7e d7    	vpermt2d %ymm15,%ymm24,%ymm18
  4086a5:	62 d2 35 20 7e ef    	vpermt2d %ymm15,%ymm25,%ymm5
  4086ab:	62 f2 3d 20 7e 52 fd 	vpermt2d -0x60(%rdx),%ymm24,%ymm2
  4086b2:	c5 7d 6f f9          	vmovdqa %ymm1,%ymm15
  4086b6:	62 72 35 20 7e 5a f9 	vpermt2d -0xe0(%rdx),%ymm25,%ymm11
  4086bd:	62 32 3d 20 7e f9    	vpermt2d %ymm17,%ymm24,%ymm15
  4086c3:	62 72 3d 20 7e 62 ff 	vpermt2d -0x20(%rdx),%ymm24,%ymm12
  4086ca:	62 b2 35 20 7e c9    	vpermt2d %ymm17,%ymm25,%ymm1
  4086d0:	62 e1 7d 28 6f ca    	vmovdqa32 %ymm2,%ymm17
  4086d6:	62 c2 3d 20 7e cc    	vpermt2d %ymm12,%ymm24,%ymm17
  4086dc:	62 d2 35 20 7e d4    	vpermt2d %ymm12,%ymm25,%ymm2
  4086e2:	c5 7d 6f e6          	vmovdqa %ymm6,%ymm12
  4086e6:	62 52 3d 20 7e e1    	vpermt2d %ymm9,%ymm24,%ymm12
  4086ec:	62 d2 35 20 7e f1    	vpermt2d %ymm9,%ymm25,%ymm6
  4086f2:	c5 7d 6f 52 c0       	vmovdqa -0x40(%rdx),%ymm10
  4086f7:	c5 7d 6f cf          	vmovdqa %ymm7,%ymm9
  4086fb:	62 52 3d 20 7e ce    	vpermt2d %ymm14,%ymm24,%ymm9
  408701:	62 d2 35 20 7e fe    	vpermt2d %ymm14,%ymm25,%ymm7
  408707:	c4 41 7d 6f f3       	vmovdqa %ymm11,%ymm14
  40870c:	62 72 35 20 7e 52 ff 	vpermt2d -0x20(%rdx),%ymm25,%ymm10
  408713:	62 52 3d 20 7e f0    	vpermt2d %ymm8,%ymm24,%ymm14
  408719:	62 52 35 20 7e d8    	vpermt2d %ymm8,%ymm25,%ymm11
  40871f:	62 31 7d 28 6f c0    	vmovdqa32 %ymm16,%ymm8
  408725:	62 52 3d 20 7e c2    	vpermt2d %ymm10,%ymm24,%ymm8
  40872b:	62 c2 35 20 7e c2    	vpermt2d %ymm10,%ymm25,%ymm16
  408731:	c4 41 7d 6f d5       	vmovdqa %ymm13,%ymm10
  408736:	62 32 3d 20 7e d2    	vpermt2d %ymm18,%ymm24,%ymm10
  40873c:	62 32 35 20 7e ea    	vpermt2d %ymm18,%ymm25,%ymm13
  408742:	62 c1 7d 28 6f e7    	vmovdqa32 %ymm15,%ymm20
  408748:	62 c1 7d 28 6f de    	vmovdqa32 %ymm14,%ymm19
  40874e:	62 e1 7d 28 6f d1    	vmovdqa32 %ymm1,%ymm18
  408754:	62 a2 3d 20 7e e1    	vpermt2d %ymm17,%ymm24,%ymm20
  40875a:	62 f2 35 20 7e ca    	vpermt2d %ymm2,%ymm25,%ymm1
  408760:	62 32 35 20 7e f9    	vpermt2d %ymm17,%ymm25,%ymm15
  408766:	62 c2 3d 20 7e d8    	vpermt2d %ymm8,%ymm24,%ymm19
  40876c:	62 52 35 20 7e f0    	vpermt2d %ymm8,%ymm25,%ymm14
  408772:	62 e2 3d 20 7e d2    	vpermt2d %ymm2,%ymm24,%ymm18
  408778:	62 c1 7d 28 6f cc    	vmovdqa32 %ymm12,%ymm17
  40877e:	c5 7d 6f c6          	vmovdqa %ymm6,%ymm8
  408782:	c5 fd 6f d6          	vmovdqa %ymm6,%ymm2
  408786:	c5 7d 7f d6          	vmovdqa %ymm10,%ymm6
  40878a:	62 c2 3d 20 7e c9    	vpermt2d %ymm9,%ymm24,%ymm17
  408790:	62 b2 3d 20 7e f4    	vpermt2d %ymm20,%ymm24,%ymm6
  408796:	62 52 35 20 7e e1    	vpermt2d %ymm9,%ymm25,%ymm12
  40879c:	62 b3 4d 28 1f cf 04 	vpcmpneqd %ymm23,%ymm6,%k1
  4087a3:	c5 7d 6f cc          	vmovdqa %ymm4,%ymm9
  4087a7:	62 b1 7d 28 6f f1    	vmovdqa32 %ymm17,%ymm6
  4087ad:	62 72 3d 20 7e cd    	vpermt2d %ymm5,%ymm24,%ymm9
  4087b3:	62 b2 3d 20 7e f3    	vpermt2d %ymm19,%ymm24,%ymm6
  4087b9:	62 b3 4d 28 1f c7 04 	vpcmpneqd %ymm23,%ymm6,%k0
  4087c0:	c5 7d 7f ce          	vmovdqa %ymm9,%ymm6
  4087c4:	62 f2 35 20 7e e5    	vpermt2d %ymm5,%ymm25,%ymm4
  4087ca:	62 72 3d 20 7e c7    	vpermt2d %ymm7,%ymm24,%ymm8
  4087d0:	c5 7d 7f dd          	vmovdqa %ymm11,%ymm5
  4087d4:	62 b2 3d 20 7e f2    	vpermt2d %ymm18,%ymm24,%ymm6
  4087da:	62 b3 4d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm6,%k2
  4087e1:	62 b2 3d 20 7e e8    	vpermt2d %ymm16,%ymm24,%ymm5
  4087e7:	c5 7d 7f c6          	vmovdqa %ymm8,%ymm6
  4087eb:	62 f2 3d 20 7e f5    	vpermt2d %ymm5,%ymm24,%ymm6
  4087f1:	62 b3 4d 28 1f df 04 	vpcmpneqd %ymm23,%ymm6,%k3
  4087f8:	c5 7d 7f ee          	vmovdqa %ymm13,%ymm6
  4087fc:	62 d2 3d 20 7e f7    	vpermt2d %ymm15,%ymm24,%ymm6
  408802:	62 b3 4d 28 1f e7 04 	vpcmpneqd %ymm23,%ymm6,%k4
  408809:	c5 7d 7f e6          	vmovdqa %ymm12,%ymm6
  40880d:	62 d2 3d 20 7e f6    	vpermt2d %ymm14,%ymm24,%ymm6
  408813:	62 b3 4d 28 1f ef 04 	vpcmpneqd %ymm23,%ymm6,%k5
  40881a:	c5 fd 6f f4          	vmovdqa %ymm4,%ymm6
  40881e:	62 f2 35 20 7e d7    	vpermt2d %ymm7,%ymm25,%ymm2
  408824:	62 f2 3d 20 7e f1    	vpermt2d %ymm1,%ymm24,%ymm6
  40882a:	62 b3 4d 28 1f f7 04 	vpcmpneqd %ymm23,%ymm6,%k6
  408831:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  408835:	c5 f9 93 c2          	kmovb  %k2,%eax
  408839:	62 32 35 20 7e d8    	vpermt2d %ymm16,%ymm25,%ymm11
  40883f:	c5 fd 6f f2          	vmovdqa %ymm2,%ymm6
  408843:	c5 f9 93 f1          	kmovb  %k1,%esi
  408847:	09 c6                	or     %eax,%esi
  408849:	62 d2 3d 20 7e f3    	vpermt2d %ymm11,%ymm24,%ymm6
  40884f:	c5 f9 93 c3          	kmovb  %k3,%eax
  408853:	09 c6                	or     %eax,%esi
  408855:	62 b3 4d 28 1f ff 04 	vpcmpneqd %ymm23,%ymm6,%k7
  40885c:	c5 f9 93 c4          	kmovb  %k4,%eax
  408860:	62 32 35 20 7e d4    	vpermt2d %ymm20,%ymm25,%ymm10
  408866:	09 c6                	or     %eax,%esi
  408868:	62 b1 7d 28 6f f9    	vmovdqa32 %ymm17,%ymm7
  40886e:	c5 f9 93 c5          	kmovb  %k5,%eax
  408872:	62 b3 2d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm10,%k2
  408879:	09 c6                	or     %eax,%esi
  40887b:	62 b2 35 20 7e fb    	vpermt2d %ymm19,%ymm25,%ymm7
  408881:	c5 f9 93 c6          	kmovb  %k6,%eax
  408885:	62 b3 45 28 1f df 04 	vpcmpneqd %ymm23,%ymm7,%k3
  40888c:	09 c6                	or     %eax,%esi
  40888e:	62 32 35 20 7e ca    	vpermt2d %ymm18,%ymm25,%ymm9
  408894:	c5 f9 93 c7          	kmovb  %k7,%eax
  408898:	62 72 35 20 7e c5    	vpermt2d %ymm5,%ymm25,%ymm8
  40889e:	09 c6                	or     %eax,%esi
  4088a0:	62 b3 35 28 1f e7 04 	vpcmpneqd %ymm23,%ymm9,%k4
  4088a7:	c5 7d 7f ee          	vmovdqa %ymm13,%ymm6
  4088ab:	c5 f9 93 c2          	kmovb  %k2,%eax
  4088af:	62 b3 3d 28 1f ef 04 	vpcmpneqd %ymm23,%ymm8,%k5
  4088b6:	09 c6                	or     %eax,%esi
  4088b8:	62 d2 35 20 7e f7    	vpermt2d %ymm15,%ymm25,%ymm6
  4088be:	c5 7d 7f e5          	vmovdqa %ymm12,%ymm5
  4088c2:	c5 f9 93 c3          	kmovb  %k3,%eax
  4088c6:	62 b3 4d 28 1f f7 04 	vpcmpneqd %ymm23,%ymm6,%k6
  4088cd:	09 c6                	or     %eax,%esi
  4088cf:	62 d2 35 20 7e ee    	vpermt2d %ymm14,%ymm25,%ymm5
  4088d5:	62 f2 35 20 7e e1    	vpermt2d %ymm1,%ymm25,%ymm4
  4088db:	c5 f9 93 c4          	kmovb  %k4,%eax
  4088df:	62 b3 55 28 1f ff 04 	vpcmpneqd %ymm23,%ymm5,%k7
  4088e6:	09 c6                	or     %eax,%esi
  4088e8:	62 b3 5d 28 1f d7 04 	vpcmpneqd %ymm23,%ymm4,%k2
  4088ef:	c5 f9 93 c5          	kmovb  %k5,%eax
  4088f3:	62 d2 35 20 7e d3    	vpermt2d %ymm11,%ymm25,%ymm2
  4088f9:	09 c6                	or     %eax,%esi
  4088fb:	62 b3 6d 28 1f c7 04 	vpcmpneqd %ymm23,%ymm2,%k0
  408902:	c5 f9 93 c6          	kmovb  %k6,%eax
  408906:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  40890a:	09 c6                	or     %eax,%esi
  40890c:	c5 fb 58 db          	vaddsd %xmm3,%xmm0,%xmm3
  408910:	c5 f9 93 c7          	kmovb  %k7,%eax
  408914:	09 c6                	or     %eax,%esi
  408916:	c5 f9 93 c2          	kmovb  %k2,%eax
  40891a:	09 c6                	or     %eax,%esi
  40891c:	c5 f9 92 ce          	kmovb  %esi,%k1
  408920:	c5 f5 45 c8          	korb   %k0,%k1,%k1
  408924:	62 f1 7d a9 6f 4c 24 	vmovdqa32 0x120(%rsp),%ymm1{%k1}{z}
  40892b:	09 
  40892c:	62 61 2d 20 eb d1    	vpord  %ymm1,%ymm26,%ymm26
  408932:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  408937:	48 39 d1             	cmp    %rdx,%rcx
  40893a:	0f 85 f1 f3 ff ff    	jne    407d31 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x1531>
  408940:	62 63 7d 28 39 d1 01 	vextracti32x4 $0x1,%ymm26,%xmm1
  408947:	62 91 7d 08 6f c2    	vmovdqa32 %xmm26,%xmm0
  40894d:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  408951:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  408956:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  40895a:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  40895f:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  408963:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  408967:	41 09 c5             	or     %eax,%r13d
  40896a:	48 8d 84 24 80 19 00 	lea    0x1980(%rsp),%rax
  408971:	00 
  408972:	48 39 c1             	cmp    %rax,%rcx
  408975:	0f 85 a2 f3 ff ff    	jne    407d1d <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x151d>
  40897b:	e9 08 ef ff ff       	jmpq   407888 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x1088>
  408980:	48 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%rax
  408987:	80 38 00             	cmpb   $0x0,(%rax)
  40898a:	0f 85 7d 03 00 00    	jne    408d0d <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x250d>
  408990:	48 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%rax
  408997:	80 38 00             	cmpb   $0x0,(%rax)
  40899a:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  40899f:	0f 84 48 0e 00 00    	je     4097ed <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x2fed>
  4089a5:	62 f2 7d 48 18 05 21 	vbroadcastss 0x5d21(%rip),%zmm0        # 40e6d0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x230>
  4089ac:	5d 00 00 
  4089af:	62 f2 7d 48 18 15 ef 	vbroadcastss 0x5cef(%rip),%zmm2        # 40e6a8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x208>
  4089b6:	5c 00 00 
  4089b9:	62 f2 7d 48 18 1d e9 	vbroadcastss 0x5ce9(%rip),%zmm3        # 40e6ac <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x20c>
  4089c0:	5c 00 00 
  4089c3:	62 f2 7d 48 18 25 e3 	vbroadcastss 0x5ce3(%rip),%zmm4        # 40e6b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x210>
  4089ca:	5c 00 00 
  4089cd:	62 f2 7d 48 18 2d dd 	vbroadcastss 0x5cdd(%rip),%zmm5        # 40e6b4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x214>
  4089d4:	5c 00 00 
  4089d7:	62 f2 7d 48 18 35 d7 	vbroadcastss 0x5cd7(%rip),%zmm6        # 40e6b8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x218>
  4089de:	5c 00 00 
  4089e1:	62 f2 7d 48 18 3d d1 	vbroadcastss 0x5cd1(%rip),%zmm7        # 40e6bc <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x21c>
  4089e8:	5c 00 00 
  4089eb:	62 72 7d 48 18 05 cb 	vbroadcastss 0x5ccb(%rip),%zmm8        # 40e6c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x220>
  4089f2:	5c 00 00 
  4089f5:	62 72 7d 48 18 0d c5 	vbroadcastss 0x5cc5(%rip),%zmm9        # 40e6c4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x224>
  4089fc:	5c 00 00 
  4089ff:	62 72 7d 48 18 15 bf 	vbroadcastss 0x5cbf(%rip),%zmm10        # 40e6c8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x228>
  408a06:	5c 00 00 
  408a09:	62 72 7d 48 18 1d b9 	vbroadcastss 0x5cb9(%rip),%zmm11        # 40e6cc <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x22c>
  408a10:	5c 00 00 
  408a13:	62 72 7d 48 18 25 67 	vbroadcastss 0x5b67(%rip),%zmm12        # 40e584 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe4>
  408a1a:	5b 00 00 
  408a1d:	62 f2 7d 48 18 0d ad 	vbroadcastss 0x5cad(%rip),%zmm1        # 40e6d4 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x234>
  408a24:	5c 00 00 
  408a27:	62 71 7c 48 28 e8    	vmovaps %zmm0,%zmm13
  408a2d:	62 72 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm13
  408a33:	62 72 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm12
  408a39:	62 72 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm11
  408a3f:	62 72 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm10
  408a45:	62 72 75 48 98 c8    	vfmadd132ps %zmm0,%zmm1,%zmm9
  408a4b:	62 72 75 48 98 c0    	vfmadd132ps %zmm0,%zmm1,%zmm8
  408a51:	62 f2 75 48 98 f8    	vfmadd132ps %zmm0,%zmm1,%zmm7
  408a57:	62 f2 75 48 98 f0    	vfmadd132ps %zmm0,%zmm1,%zmm6
  408a5d:	62 f2 75 48 98 e8    	vfmadd132ps %zmm0,%zmm1,%zmm5
  408a63:	62 f2 75 48 98 e0    	vfmadd132ps %zmm0,%zmm1,%zmm4
  408a69:	62 f2 75 48 98 d8    	vfmadd132ps %zmm0,%zmm1,%zmm3
  408a6f:	62 f2 75 48 98 d0    	vfmadd132ps %zmm0,%zmm1,%zmm2
  408a75:	ff c8                	dec    %eax
  408a77:	75 b4                	jne    408a2d <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x222d>
  408a79:	62 73 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm13,%ymm0
  408a80:	c4 c1 7c 58 c5       	vaddps %ymm13,%ymm0,%ymm0
  408a85:	45 31 ed             	xor    %r13d,%r13d
  408a88:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  408a8e:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  408a92:	c4 e3 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm1
  408a98:	c5 f0 58 c8          	vaddps %xmm0,%xmm1,%xmm1
  408a9c:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  408aa0:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  408aa5:	c5 fa 58 c1          	vaddss %xmm1,%xmm0,%xmm0
  408aa9:	62 73 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm12,%ymm1
  408ab0:	c4 c1 74 58 cc       	vaddps %ymm12,%ymm1,%ymm1
  408ab5:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408ab9:	c5 fb 58 05 27 5c 00 	vaddsd 0x5c27(%rip),%xmm0,%xmm0        # 40e6e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  408ac0:	00 
  408ac1:	c4 c3 7d 19 cc 01    	vextractf128 $0x1,%ymm1,%xmm12
  408ac7:	c5 98 58 c9          	vaddps %xmm1,%xmm12,%xmm1
  408acb:	c4 63 79 04 e1 4e    	vpermilps $0x4e,%xmm1,%xmm12
  408ad1:	c5 18 58 e1          	vaddps %xmm1,%xmm12,%xmm12
  408ad5:	c5 78 29 e1          	vmovaps %xmm12,%xmm1
  408ad9:	c4 41 18 c6 e4 55    	vshufps $0x55,%xmm12,%xmm12,%xmm12
  408adf:	c4 c1 72 58 cc       	vaddss %xmm12,%xmm1,%xmm1
  408ae4:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408ae8:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408aec:	62 73 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm11,%ymm0
  408af3:	c4 c1 7c 58 c3       	vaddps %ymm11,%ymm0,%ymm0
  408af8:	c4 c3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm11
  408afe:	c5 a0 58 c0          	vaddps %xmm0,%xmm11,%xmm0
  408b02:	c4 63 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm11
  408b08:	c5 20 58 d8          	vaddps %xmm0,%xmm11,%xmm11
  408b0c:	c5 78 29 d8          	vmovaps %xmm11,%xmm0
  408b10:	c4 41 20 c6 db 55    	vshufps $0x55,%xmm11,%xmm11,%xmm11
  408b16:	c4 c1 7a 58 c3       	vaddss %xmm11,%xmm0,%xmm0
  408b1b:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408b1f:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408b23:	62 73 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm1
  408b2a:	c4 c1 74 58 ca       	vaddps %ymm10,%ymm1,%ymm1
  408b2f:	c4 c3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm10
  408b35:	c5 a8 58 c9          	vaddps %xmm1,%xmm10,%xmm1
  408b39:	c4 63 79 04 d1 4e    	vpermilps $0x4e,%xmm1,%xmm10
  408b3f:	c5 28 58 d1          	vaddps %xmm1,%xmm10,%xmm10
  408b43:	c5 78 29 d1          	vmovaps %xmm10,%xmm1
  408b47:	c4 41 28 c6 d2 55    	vshufps $0x55,%xmm10,%xmm10,%xmm10
  408b4d:	c4 c1 72 58 ca       	vaddss %xmm10,%xmm1,%xmm1
  408b52:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408b56:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408b5a:	62 73 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm0
  408b61:	c4 c1 7c 58 c1       	vaddps %ymm9,%ymm0,%ymm0
  408b66:	c4 c3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm9
  408b6c:	c5 b0 58 c0          	vaddps %xmm0,%xmm9,%xmm0
  408b70:	c4 63 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm9
  408b76:	c5 30 58 c8          	vaddps %xmm0,%xmm9,%xmm9
  408b7a:	c5 78 29 c8          	vmovaps %xmm9,%xmm0
  408b7e:	c4 41 30 c6 c9 55    	vshufps $0x55,%xmm9,%xmm9,%xmm9
  408b84:	c4 c1 7a 58 c1       	vaddss %xmm9,%xmm0,%xmm0
  408b89:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408b8d:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408b91:	62 73 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm8,%ymm1
  408b98:	c4 c1 74 58 c8       	vaddps %ymm8,%ymm1,%ymm1
  408b9d:	c4 c3 7d 19 c8 01    	vextractf128 $0x1,%ymm1,%xmm8
  408ba3:	c5 b8 58 c9          	vaddps %xmm1,%xmm8,%xmm1
  408ba7:	c4 63 79 04 c1 4e    	vpermilps $0x4e,%xmm1,%xmm8
  408bad:	c5 38 58 c1          	vaddps %xmm1,%xmm8,%xmm8
  408bb1:	c5 78 29 c1          	vmovaps %xmm8,%xmm1
  408bb5:	c4 41 38 c6 c0 55    	vshufps $0x55,%xmm8,%xmm8,%xmm8
  408bbb:	c4 c1 72 58 c8       	vaddss %xmm8,%xmm1,%xmm1
  408bc0:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408bc4:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408bc8:	62 f3 fd 48 1b f8 01 	vextractf64x4 $0x1,%zmm7,%ymm0
  408bcf:	c5 fc 58 c7          	vaddps %ymm7,%ymm0,%ymm0
  408bd3:	c4 e3 7d 19 c7 01    	vextractf128 $0x1,%ymm0,%xmm7
  408bd9:	c5 c0 58 c0          	vaddps %xmm0,%xmm7,%xmm0
  408bdd:	c4 e3 79 04 f8 4e    	vpermilps $0x4e,%xmm0,%xmm7
  408be3:	c5 c0 58 f8          	vaddps %xmm0,%xmm7,%xmm7
  408be7:	c5 f8 28 c7          	vmovaps %xmm7,%xmm0
  408beb:	c5 c0 c6 ff 55       	vshufps $0x55,%xmm7,%xmm7,%xmm7
  408bf0:	c5 fa 58 c7          	vaddss %xmm7,%xmm0,%xmm0
  408bf4:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408bf8:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408bfc:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  408c03:	c5 f4 58 ce          	vaddps %ymm6,%ymm1,%ymm1
  408c07:	c4 e3 7d 19 ce 01    	vextractf128 $0x1,%ymm1,%xmm6
  408c0d:	c5 c8 58 c9          	vaddps %xmm1,%xmm6,%xmm1
  408c11:	c4 e3 79 04 f1 4e    	vpermilps $0x4e,%xmm1,%xmm6
  408c17:	c5 c8 58 f1          	vaddps %xmm1,%xmm6,%xmm6
  408c1b:	c5 f8 28 ce          	vmovaps %xmm6,%xmm1
  408c1f:	c5 c8 c6 f6 55       	vshufps $0x55,%xmm6,%xmm6,%xmm6
  408c24:	c5 f2 58 ce          	vaddss %xmm6,%xmm1,%xmm1
  408c28:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408c2c:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408c30:	62 f3 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm5,%ymm0
  408c37:	c5 fc 58 c5          	vaddps %ymm5,%ymm0,%ymm0
  408c3b:	c4 e3 7d 19 c5 01    	vextractf128 $0x1,%ymm0,%xmm5
  408c41:	c5 d0 58 c0          	vaddps %xmm0,%xmm5,%xmm0
  408c45:	c4 e3 79 04 e8 4e    	vpermilps $0x4e,%xmm0,%xmm5
  408c4b:	c5 d0 58 e8          	vaddps %xmm0,%xmm5,%xmm5
  408c4f:	c5 f8 28 c5          	vmovaps %xmm5,%xmm0
  408c53:	c5 d0 c6 ed 55       	vshufps $0x55,%xmm5,%xmm5,%xmm5
  408c58:	c5 fa 58 c5          	vaddss %xmm5,%xmm0,%xmm0
  408c5c:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408c60:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408c64:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  408c6b:	c5 f4 58 cc          	vaddps %ymm4,%ymm1,%ymm1
  408c6f:	c4 e3 7d 19 cc 01    	vextractf128 $0x1,%ymm1,%xmm4
  408c75:	c5 d8 58 c9          	vaddps %xmm1,%xmm4,%xmm1
  408c79:	c4 e3 79 04 e1 4e    	vpermilps $0x4e,%xmm1,%xmm4
  408c7f:	c5 d8 58 e1          	vaddps %xmm1,%xmm4,%xmm4
  408c83:	c5 f8 28 cc          	vmovaps %xmm4,%xmm1
  408c87:	c5 d8 c6 e4 55       	vshufps $0x55,%xmm4,%xmm4,%xmm4
  408c8c:	c5 f2 58 cc          	vaddss %xmm4,%xmm1,%xmm1
  408c90:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408c94:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  408c98:	62 f3 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm3,%ymm0
  408c9f:	c5 fc 58 c3          	vaddps %ymm3,%ymm0,%ymm0
  408ca3:	c4 e3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm3
  408ca9:	c5 e0 58 c0          	vaddps %xmm0,%xmm3,%xmm0
  408cad:	c4 e3 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm3
  408cb3:	c5 e0 58 d8          	vaddps %xmm0,%xmm3,%xmm3
  408cb7:	c5 f8 28 c3          	vmovaps %xmm3,%xmm0
  408cbb:	c5 e0 c6 db 55       	vshufps $0x55,%xmm3,%xmm3,%xmm3
  408cc0:	c5 fa 58 c3          	vaddss %xmm3,%xmm0,%xmm0
  408cc4:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  408cc8:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  408ccc:	62 f3 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm2,%ymm1
  408cd3:	c5 f4 58 ca          	vaddps %ymm2,%ymm1,%ymm1
  408cd7:	c4 e3 7d 19 ca 01    	vextractf128 $0x1,%ymm1,%xmm2
  408cdd:	c5 e8 58 d1          	vaddps %xmm1,%xmm2,%xmm2
  408ce1:	c4 e3 79 04 ca 4e    	vpermilps $0x4e,%xmm2,%xmm1
  408ce7:	c5 f0 58 ca          	vaddps %xmm2,%xmm1,%xmm1
  408ceb:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
  408cef:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  408cf4:	c5 ea 58 c9          	vaddss %xmm1,%xmm2,%xmm1
  408cf8:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408cfc:	c5 f3 58 d8          	vaddsd %xmm0,%xmm1,%xmm3
  408d00:	c4 e1 f9 7e db       	vmovq  %xmm3,%rbx
  408d05:	c5 f8 77             	vzeroupper 
  408d08:	e9 52 db ff ff       	jmpq   40685f <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x5f>
  408d0d:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  408d11:	62 f2 7d 48 79 0d b7 	vpbroadcastw 0x59b7(%rip),%zmm1        # 40e6d2 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x232>
  408d18:	59 00 00 
  408d1b:	b8 c0 c6 2d 00       	mov    $0x2dc6c0,%eax
  408d20:	62 f1 7c 48 28 d0    	vmovaps %zmm0,%zmm2
  408d26:	62 f1 7c 48 28 d8    	vmovaps %zmm0,%zmm3
  408d2c:	62 f1 7c 48 28 e0    	vmovaps %zmm0,%zmm4
  408d32:	62 f1 7c 48 28 e8    	vmovaps %zmm0,%zmm5
  408d38:	62 f1 7c 48 28 f0    	vmovaps %zmm0,%zmm6
  408d3e:	62 f1 7c 48 28 f8    	vmovaps %zmm0,%zmm7
  408d44:	62 71 7c 48 28 c0    	vmovaps %zmm0,%zmm8
  408d4a:	62 71 7c 48 28 c8    	vmovaps %zmm0,%zmm9
  408d50:	62 71 7c 48 28 d0    	vmovaps %zmm0,%zmm10
  408d56:	62 71 7c 48 28 d8    	vmovaps %zmm0,%zmm11
  408d5c:	62 71 7c 48 28 e0    	vmovaps %zmm0,%zmm12
  408d62:	62 72 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm12
  408d68:	62 72 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm11
  408d6e:	62 72 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm10
  408d74:	62 72 76 48 52 c9    	vdpbf16ps %zmm1,%zmm1,%zmm9
  408d7a:	62 72 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm8
  408d80:	62 f2 76 48 52 f9    	vdpbf16ps %zmm1,%zmm1,%zmm7
  408d86:	62 f2 76 48 52 f1    	vdpbf16ps %zmm1,%zmm1,%zmm6
  408d8c:	62 f2 76 48 52 e9    	vdpbf16ps %zmm1,%zmm1,%zmm5
  408d92:	62 f2 76 48 52 e1    	vdpbf16ps %zmm1,%zmm1,%zmm4
  408d98:	62 f2 76 48 52 d9    	vdpbf16ps %zmm1,%zmm1,%zmm3
  408d9e:	62 f2 76 48 52 d1    	vdpbf16ps %zmm1,%zmm1,%zmm2
  408da4:	62 f2 76 48 52 c1    	vdpbf16ps %zmm1,%zmm1,%zmm0
  408daa:	ff c8                	dec    %eax
  408dac:	75 b4                	jne    408d62 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x2562>
  408dae:	c4 41 1a 5a f4       	vcvtss2sd %xmm12,%xmm12,%xmm14
  408db3:	c5 0b 58 35 2d 59 00 	vaddsd 0x592d(%rip),%xmm14,%xmm14        # 40e6e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  408dba:	00 
  408dbb:	c4 41 18 c6 fc 55    	vshufps $0x55,%xmm12,%xmm12,%xmm15
  408dc1:	c4 41 02 5a ff       	vcvtss2sd %xmm15,%xmm15,%xmm15
  408dc6:	c4 41 03 58 fe       	vaddsd %xmm14,%xmm15,%xmm15
  408dcb:	c4 41 18 15 f4       	vunpckhps %xmm12,%xmm12,%xmm14
  408dd0:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  408dd5:	c4 41 0b 58 f7       	vaddsd %xmm15,%xmm14,%xmm14
  408dda:	c4 41 18 c6 ec ff    	vshufps $0xff,%xmm12,%xmm12,%xmm13
  408de0:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  408de5:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  408dea:	c4 63 7d 19 e1 01    	vextractf128 $0x1,%ymm12,%xmm1
  408df0:	c5 72 5a f1          	vcvtss2sd %xmm1,%xmm1,%xmm14
  408df4:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  408df9:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  408dfe:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  408e03:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  408e08:	c5 70 15 f1          	vunpckhps %xmm1,%xmm1,%xmm14
  408e0c:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  408e11:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  408e16:	c5 70 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm13
  408e1b:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  408e20:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  408e25:	62 73 7d 48 1b e1 01 	vextractf32x8 $0x1,%zmm12,%ymm1
  408e2c:	c5 72 5a f1          	vcvtss2sd %xmm1,%xmm1,%xmm14
  408e30:	c4 41 0b 58 ed       	vaddsd %xmm13,%xmm14,%xmm13
  408e35:	c5 70 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm14
  408e3a:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  408e3f:	c4 41 0b 58 f5       	vaddsd %xmm13,%xmm14,%xmm14
  408e44:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  408e48:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  408e4d:	c4 41 13 58 ee       	vaddsd %xmm14,%xmm13,%xmm13
  408e52:	c5 70 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm12
  408e57:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  408e5c:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  408e61:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  408e67:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  408e6b:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  408e70:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  408e75:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  408e7a:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  408e7f:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  408e83:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  408e88:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  408e8d:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  408e92:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408e96:	c4 c1 73 58 cc       	vaddsd %xmm12,%xmm1,%xmm1
  408e9b:	c4 41 22 5a f3       	vcvtss2sd %xmm11,%xmm11,%xmm14
  408ea0:	c4 41 20 c6 eb ff    	vshufps $0xff,%xmm11,%xmm11,%xmm13
  408ea6:	c5 8b 58 c9          	vaddsd %xmm1,%xmm14,%xmm1
  408eaa:	c4 41 20 c6 f3 55    	vshufps $0x55,%xmm11,%xmm11,%xmm14
  408eb0:	c4 41 0a 5a f6       	vcvtss2sd %xmm14,%xmm14,%xmm14
  408eb5:	c5 0b 58 f1          	vaddsd %xmm1,%xmm14,%xmm14
  408eb9:	c4 c1 20 15 cb       	vunpckhps %xmm11,%xmm11,%xmm1
  408ebe:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408ec2:	c4 c1 73 58 ce       	vaddsd %xmm14,%xmm1,%xmm1
  408ec7:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  408ecc:	45 31 ed             	xor    %r13d,%r13d
  408ecf:	c5 13 58 e9          	vaddsd %xmm1,%xmm13,%xmm13
  408ed3:	c4 63 7d 19 d9 01    	vextractf128 $0x1,%ymm11,%xmm1
  408ed9:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  408edd:	c4 41 1b 58 ed       	vaddsd %xmm13,%xmm12,%xmm13
  408ee2:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  408ee7:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  408eec:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  408ef1:	c5 70 15 e9          	vunpckhps %xmm1,%xmm1,%xmm13
  408ef5:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  408efa:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  408eff:	c5 70 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm12
  408f04:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  408f09:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  408f0e:	62 73 7d 48 1b d9 01 	vextractf32x8 $0x1,%zmm11,%ymm1
  408f15:	c5 72 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm13
  408f19:	c4 41 13 58 e4       	vaddsd %xmm12,%xmm13,%xmm12
  408f1e:	c5 70 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm13
  408f23:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  408f28:	c4 41 13 58 ec       	vaddsd %xmm12,%xmm13,%xmm13
  408f2d:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  408f31:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  408f36:	c4 41 1b 58 e5       	vaddsd %xmm13,%xmm12,%xmm12
  408f3b:	c5 70 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm11
  408f40:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  408f45:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  408f4a:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  408f50:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  408f54:	c4 41 1b 58 db       	vaddsd %xmm11,%xmm12,%xmm11
  408f59:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  408f5e:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  408f63:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  408f68:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  408f6c:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  408f71:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  408f76:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  408f7b:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408f7f:	c4 c1 73 58 cb       	vaddsd %xmm11,%xmm1,%xmm1
  408f84:	c4 41 2a 5a ea       	vcvtss2sd %xmm10,%xmm10,%xmm13
  408f89:	c4 41 28 c6 e2 ff    	vshufps $0xff,%xmm10,%xmm10,%xmm12
  408f8f:	c5 93 58 c9          	vaddsd %xmm1,%xmm13,%xmm1
  408f93:	c4 41 28 c6 ea 55    	vshufps $0x55,%xmm10,%xmm10,%xmm13
  408f99:	c4 41 12 5a ed       	vcvtss2sd %xmm13,%xmm13,%xmm13
  408f9e:	c5 13 58 e9          	vaddsd %xmm1,%xmm13,%xmm13
  408fa2:	c4 c1 28 15 ca       	vunpckhps %xmm10,%xmm10,%xmm1
  408fa7:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  408fab:	c4 c1 73 58 cd       	vaddsd %xmm13,%xmm1,%xmm1
  408fb0:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  408fb5:	c5 1b 58 e1          	vaddsd %xmm1,%xmm12,%xmm12
  408fb9:	c4 63 7d 19 d1 01    	vextractf128 $0x1,%ymm10,%xmm1
  408fbf:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  408fc3:	c4 41 23 58 e4       	vaddsd %xmm12,%xmm11,%xmm12
  408fc8:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  408fcd:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  408fd2:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  408fd7:	c5 70 15 e1          	vunpckhps %xmm1,%xmm1,%xmm12
  408fdb:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  408fe0:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  408fe5:	c5 70 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm11
  408fea:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  408fef:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  408ff4:	62 73 7d 48 1b d1 01 	vextractf32x8 $0x1,%zmm10,%ymm1
  408ffb:	c5 72 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm12
  408fff:	c4 41 1b 58 db       	vaddsd %xmm11,%xmm12,%xmm11
  409004:	c5 70 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm12
  409009:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  40900e:	c4 41 1b 58 e3       	vaddsd %xmm11,%xmm12,%xmm12
  409013:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  409017:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  40901c:	c4 41 23 58 dc       	vaddsd %xmm12,%xmm11,%xmm11
  409021:	c5 70 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm10
  409026:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  40902b:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409030:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409036:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  40903a:	c4 41 23 58 d2       	vaddsd %xmm10,%xmm11,%xmm10
  40903f:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  409044:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  409049:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  40904e:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  409052:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409057:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  40905c:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409061:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409065:	c4 c1 73 58 ca       	vaddsd %xmm10,%xmm1,%xmm1
  40906a:	c4 41 32 5a e1       	vcvtss2sd %xmm9,%xmm9,%xmm12
  40906f:	c4 41 30 c6 d9 ff    	vshufps $0xff,%xmm9,%xmm9,%xmm11
  409075:	c5 9b 58 c9          	vaddsd %xmm1,%xmm12,%xmm1
  409079:	c4 41 30 c6 e1 55    	vshufps $0x55,%xmm9,%xmm9,%xmm12
  40907f:	c4 41 1a 5a e4       	vcvtss2sd %xmm12,%xmm12,%xmm12
  409084:	c5 1b 58 e1          	vaddsd %xmm1,%xmm12,%xmm12
  409088:	c4 c1 30 15 c9       	vunpckhps %xmm9,%xmm9,%xmm1
  40908d:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409091:	c4 c1 73 58 cc       	vaddsd %xmm12,%xmm1,%xmm1
  409096:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  40909b:	c5 23 58 d9          	vaddsd %xmm1,%xmm11,%xmm11
  40909f:	c4 63 7d 19 c9 01    	vextractf128 $0x1,%ymm9,%xmm1
  4090a5:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  4090a9:	c4 41 2b 58 db       	vaddsd %xmm11,%xmm10,%xmm11
  4090ae:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  4090b3:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  4090b8:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  4090bd:	c5 70 15 d9          	vunpckhps %xmm1,%xmm1,%xmm11
  4090c1:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  4090c6:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  4090cb:	c5 70 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm10
  4090d0:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  4090d5:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  4090da:	62 73 7d 48 1b c9 01 	vextractf32x8 $0x1,%zmm9,%ymm1
  4090e1:	c5 72 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm11
  4090e5:	c4 41 23 58 d2       	vaddsd %xmm10,%xmm11,%xmm10
  4090ea:	c5 70 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm11
  4090ef:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  4090f4:	c4 41 23 58 da       	vaddsd %xmm10,%xmm11,%xmm11
  4090f9:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  4090fd:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409102:	c4 41 2b 58 d3       	vaddsd %xmm11,%xmm10,%xmm10
  409107:	c5 70 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm9
  40910c:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409111:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409116:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  40911c:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  409120:	c4 41 2b 58 c9       	vaddsd %xmm9,%xmm10,%xmm9
  409125:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  40912a:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  40912f:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  409134:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  409138:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  40913d:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  409142:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409147:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40914b:	c4 c1 73 58 c9       	vaddsd %xmm9,%xmm1,%xmm1
  409150:	c4 41 3a 5a d8       	vcvtss2sd %xmm8,%xmm8,%xmm11
  409155:	c4 41 38 c6 d0 ff    	vshufps $0xff,%xmm8,%xmm8,%xmm10
  40915b:	c5 a3 58 c9          	vaddsd %xmm1,%xmm11,%xmm1
  40915f:	c4 41 38 c6 d8 55    	vshufps $0x55,%xmm8,%xmm8,%xmm11
  409165:	c4 41 22 5a db       	vcvtss2sd %xmm11,%xmm11,%xmm11
  40916a:	c5 23 58 d9          	vaddsd %xmm1,%xmm11,%xmm11
  40916e:	c4 c1 38 15 c8       	vunpckhps %xmm8,%xmm8,%xmm1
  409173:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409177:	c4 c1 73 58 cb       	vaddsd %xmm11,%xmm1,%xmm1
  40917c:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  409181:	c5 2b 58 d1          	vaddsd %xmm1,%xmm10,%xmm10
  409185:	c4 63 7d 19 c1 01    	vextractf128 $0x1,%ymm8,%xmm1
  40918b:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  40918f:	c4 41 33 58 d2       	vaddsd %xmm10,%xmm9,%xmm10
  409194:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  409199:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  40919e:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  4091a3:	c5 70 15 d1          	vunpckhps %xmm1,%xmm1,%xmm10
  4091a7:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  4091ac:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  4091b1:	c5 70 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm9
  4091b6:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  4091bb:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  4091c0:	62 73 7d 48 1b c1 01 	vextractf32x8 $0x1,%zmm8,%ymm1
  4091c7:	c5 72 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm10
  4091cb:	c4 41 2b 58 c9       	vaddsd %xmm9,%xmm10,%xmm9
  4091d0:	c5 70 c6 d1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm10
  4091d5:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  4091da:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
  4091df:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  4091e3:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  4091e8:	c4 41 33 58 ca       	vaddsd %xmm10,%xmm9,%xmm9
  4091ed:	c5 70 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm8
  4091f2:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  4091f7:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  4091fc:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409202:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  409206:	c4 41 33 58 c0       	vaddsd %xmm8,%xmm9,%xmm8
  40920b:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  409210:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409215:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  40921a:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  40921e:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409223:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409228:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40922d:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409231:	c4 c1 73 58 c8       	vaddsd %xmm8,%xmm1,%xmm1
  409236:	c5 42 5a d7          	vcvtss2sd %xmm7,%xmm7,%xmm10
  40923a:	c5 40 c6 cf ff       	vshufps $0xff,%xmm7,%xmm7,%xmm9
  40923f:	c5 ab 58 c9          	vaddsd %xmm1,%xmm10,%xmm1
  409243:	c5 40 c6 d7 55       	vshufps $0x55,%xmm7,%xmm7,%xmm10
  409248:	c4 41 2a 5a d2       	vcvtss2sd %xmm10,%xmm10,%xmm10
  40924d:	c5 2b 58 d1          	vaddsd %xmm1,%xmm10,%xmm10
  409251:	c5 c0 15 cf          	vunpckhps %xmm7,%xmm7,%xmm1
  409255:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409259:	c4 c1 73 58 ca       	vaddsd %xmm10,%xmm1,%xmm1
  40925e:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  409263:	c5 33 58 c9          	vaddsd %xmm1,%xmm9,%xmm9
  409267:	c4 e3 7d 19 f9 01    	vextractf128 $0x1,%ymm7,%xmm1
  40926d:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  409271:	c4 41 3b 58 c9       	vaddsd %xmm9,%xmm8,%xmm9
  409276:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  40927b:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409280:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  409285:	c5 70 15 c9          	vunpckhps %xmm1,%xmm1,%xmm9
  409289:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  40928e:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  409293:	c5 70 c6 c1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm8
  409298:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  40929d:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  4092a2:	62 f3 7d 48 1b f9 01 	vextractf32x8 $0x1,%zmm7,%ymm1
  4092a9:	c5 72 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm9
  4092ad:	c4 41 33 58 c0       	vaddsd %xmm8,%xmm9,%xmm8
  4092b2:	c5 70 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm9
  4092b7:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  4092bc:	c4 41 33 58 c8       	vaddsd %xmm8,%xmm9,%xmm9
  4092c1:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  4092c5:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  4092ca:	c4 41 3b 58 c1       	vaddsd %xmm9,%xmm8,%xmm8
  4092cf:	c5 f0 c6 f9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm7
  4092d4:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  4092d8:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  4092dd:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4092e3:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  4092e7:	c5 bb 58 ff          	vaddsd %xmm7,%xmm8,%xmm7
  4092eb:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  4092f0:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  4092f5:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  4092f9:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  4092fd:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409301:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409306:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40930b:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40930f:	c5 f3 58 cf          	vaddsd %xmm7,%xmm1,%xmm1
  409313:	c5 4a 5a ce          	vcvtss2sd %xmm6,%xmm6,%xmm9
  409317:	c5 48 c6 c6 ff       	vshufps $0xff,%xmm6,%xmm6,%xmm8
  40931c:	c5 b3 58 c9          	vaddsd %xmm1,%xmm9,%xmm1
  409320:	c5 48 c6 ce 55       	vshufps $0x55,%xmm6,%xmm6,%xmm9
  409325:	c4 41 32 5a c9       	vcvtss2sd %xmm9,%xmm9,%xmm9
  40932a:	c5 33 58 c9          	vaddsd %xmm1,%xmm9,%xmm9
  40932e:	c5 c8 15 ce          	vunpckhps %xmm6,%xmm6,%xmm1
  409332:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409336:	c4 c1 73 58 c9       	vaddsd %xmm9,%xmm1,%xmm1
  40933b:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409340:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  409344:	c4 e3 7d 19 f1 01    	vextractf128 $0x1,%ymm6,%xmm1
  40934a:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  40934e:	c4 41 43 58 c0       	vaddsd %xmm8,%xmm7,%xmm8
  409353:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  409358:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40935c:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  409361:	c5 70 15 c1          	vunpckhps %xmm1,%xmm1,%xmm8
  409365:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  40936a:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  40936e:	c5 f0 c6 f9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm7
  409373:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409377:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  40937c:	62 f3 7d 48 1b f1 01 	vextractf32x8 $0x1,%zmm6,%ymm1
  409383:	c5 72 5a c1          	vcvtss2sd %xmm1,%xmm1,%xmm8
  409387:	c5 bb 58 ff          	vaddsd %xmm7,%xmm8,%xmm7
  40938b:	c5 70 c6 c1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm8
  409390:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  409395:	c5 3b 58 c7          	vaddsd %xmm7,%xmm8,%xmm8
  409399:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  40939d:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  4093a1:	c4 c1 43 58 f8       	vaddsd %xmm8,%xmm7,%xmm7
  4093a6:	c5 f0 c6 f1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm6
  4093ab:	c5 ca 5a f6          	vcvtss2sd %xmm6,%xmm6,%xmm6
  4093af:	c5 cb 58 f7          	vaddsd %xmm7,%xmm6,%xmm6
  4093b3:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4093b9:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  4093bd:	c5 c3 58 f6          	vaddsd %xmm6,%xmm7,%xmm6
  4093c1:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  4093c6:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  4093ca:	c5 c3 58 fe          	vaddsd %xmm6,%xmm7,%xmm7
  4093ce:	c5 f0 15 f1          	vunpckhps %xmm1,%xmm1,%xmm6
  4093d2:	c5 ca 5a f6          	vcvtss2sd %xmm6,%xmm6,%xmm6
  4093d6:	c5 cb 58 f7          	vaddsd %xmm7,%xmm6,%xmm6
  4093da:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  4093df:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4093e3:	c5 f3 58 ce          	vaddsd %xmm6,%xmm1,%xmm1
  4093e7:	c5 52 5a c5          	vcvtss2sd %xmm5,%xmm5,%xmm8
  4093eb:	c5 d0 c6 fd ff       	vshufps $0xff,%xmm5,%xmm5,%xmm7
  4093f0:	c5 bb 58 c9          	vaddsd %xmm1,%xmm8,%xmm1
  4093f4:	c5 50 c6 c5 55       	vshufps $0x55,%xmm5,%xmm5,%xmm8
  4093f9:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  4093fe:	c5 3b 58 c1          	vaddsd %xmm1,%xmm8,%xmm8
  409402:	c5 d0 15 cd          	vunpckhps %xmm5,%xmm5,%xmm1
  409406:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40940a:	c4 c1 73 58 c8       	vaddsd %xmm8,%xmm1,%xmm1
  40940f:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409413:	c5 c3 58 f9          	vaddsd %xmm1,%xmm7,%xmm7
  409417:	c4 e3 7d 19 e9 01    	vextractf128 $0x1,%ymm5,%xmm1
  40941d:	c5 f2 5a f1          	vcvtss2sd %xmm1,%xmm1,%xmm6
  409421:	c5 cb 58 ff          	vaddsd %xmm7,%xmm6,%xmm7
  409425:	c5 f0 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm6
  40942a:	c5 ca 5a f6          	vcvtss2sd %xmm6,%xmm6,%xmm6
  40942e:	c5 cb 58 f7          	vaddsd %xmm7,%xmm6,%xmm6
  409432:	c5 f0 15 f9          	vunpckhps %xmm1,%xmm1,%xmm7
  409436:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  40943a:	c5 c3 58 fe          	vaddsd %xmm6,%xmm7,%xmm7
  40943e:	c5 f0 c6 f1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm6
  409443:	c5 ca 5a f6          	vcvtss2sd %xmm6,%xmm6,%xmm6
  409447:	c5 cb 58 f7          	vaddsd %xmm7,%xmm6,%xmm6
  40944b:	62 f3 7d 48 1b e9 01 	vextractf32x8 $0x1,%zmm5,%ymm1
  409452:	c5 f2 5a f9          	vcvtss2sd %xmm1,%xmm1,%xmm7
  409456:	c5 c3 58 f6          	vaddsd %xmm6,%xmm7,%xmm6
  40945a:	c5 f0 c6 f9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm7
  40945f:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  409463:	c5 c3 58 fe          	vaddsd %xmm6,%xmm7,%xmm7
  409467:	c5 f0 15 f1          	vunpckhps %xmm1,%xmm1,%xmm6
  40946b:	c5 ca 5a f6          	vcvtss2sd %xmm6,%xmm6,%xmm6
  40946f:	c5 cb 58 f7          	vaddsd %xmm7,%xmm6,%xmm6
  409473:	c5 f0 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm5
  409478:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40947c:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  409480:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409486:	c5 f2 5a f1          	vcvtss2sd %xmm1,%xmm1,%xmm6
  40948a:	c5 cb 58 ed          	vaddsd %xmm5,%xmm6,%xmm5
  40948e:	c5 f0 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm6
  409493:	c5 ca 5a f6          	vcvtss2sd %xmm6,%xmm6,%xmm6
  409497:	c5 cb 58 f5          	vaddsd %xmm5,%xmm6,%xmm6
  40949b:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  40949f:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  4094a3:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  4094a7:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  4094ac:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4094b0:	c5 f3 58 cd          	vaddsd %xmm5,%xmm1,%xmm1
  4094b4:	c5 da 5a fc          	vcvtss2sd %xmm4,%xmm4,%xmm7
  4094b8:	c5 d8 c6 f4 ff       	vshufps $0xff,%xmm4,%xmm4,%xmm6
  4094bd:	c5 c3 58 c9          	vaddsd %xmm1,%xmm7,%xmm1
  4094c1:	c5 d8 c6 fc 55       	vshufps $0x55,%xmm4,%xmm4,%xmm7
  4094c6:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  4094ca:	c5 c3 58 f9          	vaddsd %xmm1,%xmm7,%xmm7
  4094ce:	c5 d8 15 cc          	vunpckhps %xmm4,%xmm4,%xmm1
  4094d2:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4094d6:	c5 f3 58 cf          	vaddsd %xmm7,%xmm1,%xmm1
  4094da:	c5 ca 5a f6          	vcvtss2sd %xmm6,%xmm6,%xmm6
  4094de:	c5 cb 58 f1          	vaddsd %xmm1,%xmm6,%xmm6
  4094e2:	c4 e3 7d 19 e1 01    	vextractf128 $0x1,%ymm4,%xmm1
  4094e8:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  4094ec:	c5 d3 58 f6          	vaddsd %xmm6,%xmm5,%xmm6
  4094f0:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  4094f5:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  4094f9:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  4094fd:	c5 f0 15 f1          	vunpckhps %xmm1,%xmm1,%xmm6
  409501:	c5 ca 5a f6          	vcvtss2sd %xmm6,%xmm6,%xmm6
  409505:	c5 cb 58 f5          	vaddsd %xmm5,%xmm6,%xmm6
  409509:	c5 f0 c6 e9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm5
  40950e:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409512:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  409516:	62 f3 7d 48 1b e1 01 	vextractf32x8 $0x1,%zmm4,%ymm1
  40951d:	c5 f2 5a f1          	vcvtss2sd %xmm1,%xmm1,%xmm6
  409521:	c5 cb 58 ed          	vaddsd %xmm5,%xmm6,%xmm5
  409525:	c5 f0 c6 f1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm6
  40952a:	c5 ca 5a f6          	vcvtss2sd %xmm6,%xmm6,%xmm6
  40952e:	c5 cb 58 f5          	vaddsd %xmm5,%xmm6,%xmm6
  409532:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  409536:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  40953a:	c5 d3 58 ee          	vaddsd %xmm6,%xmm5,%xmm5
  40953e:	c5 f0 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm4
  409543:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409547:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  40954b:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  409551:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  409555:	c5 d3 58 e4          	vaddsd %xmm4,%xmm5,%xmm4
  409559:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  40955e:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409562:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  409566:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  40956a:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40956e:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  409572:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409577:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40957b:	c5 f3 58 cc          	vaddsd %xmm4,%xmm1,%xmm1
  40957f:	c5 e2 5a f3          	vcvtss2sd %xmm3,%xmm3,%xmm6
  409583:	c5 e0 c6 eb ff       	vshufps $0xff,%xmm3,%xmm3,%xmm5
  409588:	c5 cb 58 c9          	vaddsd %xmm1,%xmm6,%xmm1
  40958c:	c5 e0 c6 f3 55       	vshufps $0x55,%xmm3,%xmm3,%xmm6
  409591:	c5 ca 5a f6          	vcvtss2sd %xmm6,%xmm6,%xmm6
  409595:	c5 cb 58 f1          	vaddsd %xmm1,%xmm6,%xmm6
  409599:	c5 e0 15 cb          	vunpckhps %xmm3,%xmm3,%xmm1
  40959d:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4095a1:	c5 f3 58 ce          	vaddsd %xmm6,%xmm1,%xmm1
  4095a5:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  4095a9:	c5 d3 58 e9          	vaddsd %xmm1,%xmm5,%xmm5
  4095ad:	c4 e3 7d 19 d9 01    	vextractf128 $0x1,%ymm3,%xmm1
  4095b3:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  4095b7:	c5 db 58 ed          	vaddsd %xmm5,%xmm4,%xmm5
  4095bb:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  4095c0:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  4095c4:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  4095c8:	c5 f0 15 e9          	vunpckhps %xmm1,%xmm1,%xmm5
  4095cc:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  4095d0:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  4095d4:	c5 f0 c6 e1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm4
  4095d9:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  4095dd:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  4095e1:	62 f3 7d 48 1b d9 01 	vextractf32x8 $0x1,%zmm3,%ymm1
  4095e8:	c5 f2 5a e9          	vcvtss2sd %xmm1,%xmm1,%xmm5
  4095ec:	c5 d3 58 e4          	vaddsd %xmm4,%xmm5,%xmm4
  4095f0:	c5 f0 c6 e9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm5
  4095f5:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  4095f9:	c5 d3 58 ec          	vaddsd %xmm4,%xmm5,%xmm5
  4095fd:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  409601:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409605:	c5 db 58 e5          	vaddsd %xmm5,%xmm4,%xmm4
  409609:	c5 f0 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm3
  40960e:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409612:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  409616:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  40961c:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  409620:	c5 db 58 db          	vaddsd %xmm3,%xmm4,%xmm3
  409624:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  409629:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40962d:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  409631:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  409635:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  409639:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  40963d:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  409642:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409646:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  40964a:	c5 ea 5a ea          	vcvtss2sd %xmm2,%xmm2,%xmm5
  40964e:	c5 e8 c6 e2 ff       	vshufps $0xff,%xmm2,%xmm2,%xmm4
  409653:	c5 d3 58 c9          	vaddsd %xmm1,%xmm5,%xmm1
  409657:	c5 e8 c6 ea 55       	vshufps $0x55,%xmm2,%xmm2,%xmm5
  40965c:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  409660:	c5 d3 58 e9          	vaddsd %xmm1,%xmm5,%xmm5
  409664:	c5 e8 15 ca          	vunpckhps %xmm2,%xmm2,%xmm1
  409668:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40966c:	c5 f3 58 cd          	vaddsd %xmm5,%xmm1,%xmm1
  409670:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  409674:	c5 db 58 e1          	vaddsd %xmm1,%xmm4,%xmm4
  409678:	c4 e3 7d 19 d1 01    	vextractf128 $0x1,%ymm2,%xmm1
  40967e:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  409682:	c5 e3 58 e4          	vaddsd %xmm4,%xmm3,%xmm4
  409686:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  40968b:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40968f:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  409693:	c5 f0 15 e1          	vunpckhps %xmm1,%xmm1,%xmm4
  409697:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40969b:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  40969f:	c5 f0 c6 d9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm3
  4096a4:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  4096a8:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  4096ac:	62 f3 7d 48 1b d1 01 	vextractf32x8 $0x1,%zmm2,%ymm1
  4096b3:	c5 f2 5a e1          	vcvtss2sd %xmm1,%xmm1,%xmm4
  4096b7:	c5 db 58 db          	vaddsd %xmm3,%xmm4,%xmm3
  4096bb:	c5 f0 c6 e1 55       	vshufps $0x55,%xmm1,%xmm1,%xmm4
  4096c0:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  4096c4:	c5 db 58 e3          	vaddsd %xmm3,%xmm4,%xmm4
  4096c8:	c5 f0 15 d9          	vunpckhps %xmm1,%xmm1,%xmm3
  4096cc:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  4096d0:	c5 e3 58 dc          	vaddsd %xmm4,%xmm3,%xmm3
  4096d4:	c5 f0 c6 d1 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm2
  4096d9:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  4096dd:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  4096e1:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
  4096e7:	c5 f2 5a d9          	vcvtss2sd %xmm1,%xmm1,%xmm3
  4096eb:	c5 e3 58 d2          	vaddsd %xmm2,%xmm3,%xmm2
  4096ef:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  4096f4:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  4096f8:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  4096fc:	c5 f0 15 d1          	vunpckhps %xmm1,%xmm1,%xmm2
  409700:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  409704:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  409708:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40970d:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409711:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  409715:	c5 fa 5a e0          	vcvtss2sd %xmm0,%xmm0,%xmm4
  409719:	c5 f8 c6 d8 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm3
  40971e:	c5 db 58 c9          	vaddsd %xmm1,%xmm4,%xmm1
  409722:	c5 f8 c6 e0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm4
  409727:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  40972b:	c5 db 58 e1          	vaddsd %xmm1,%xmm4,%xmm4
  40972f:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  409733:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409737:	c5 f3 58 cc          	vaddsd %xmm4,%xmm1,%xmm1
  40973b:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40973f:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  409743:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  409749:	c5 f2 5a d1          	vcvtss2sd %xmm1,%xmm1,%xmm2
  40974d:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  409751:	c5 f0 c6 d9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm3
  409756:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40975a:	c5 e3 58 da          	vaddsd %xmm2,%xmm3,%xmm3
  40975e:	c5 f0 15 d1          	vunpckhps %xmm1,%xmm1,%xmm2
  409762:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  409766:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
  40976a:	c5 f0 c6 c9 ff       	vshufps $0xff,%xmm1,%xmm1,%xmm1
  40976f:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  409773:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  409777:	62 f3 7d 48 1b c0 01 	vextractf32x8 $0x1,%zmm0,%ymm0
  40977e:	c5 fa 5a d8          	vcvtss2sd %xmm0,%xmm0,%xmm3
  409782:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  409786:	c5 f8 c6 c8 55       	vshufps $0x55,%xmm0,%xmm0,%xmm1
  40978b:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  40978f:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  409793:	c5 f8 15 d8          	vunpckhps %xmm0,%xmm0,%xmm3
  409797:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  40979b:	c5 e3 58 d9          	vaddsd %xmm1,%xmm3,%xmm3
  40979f:	c5 f8 c6 c8 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm1
  4097a4:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4097a8:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  4097ac:	c4 e3 7d 19 c0 01    	vextractf128 $0x1,%ymm0,%xmm0
  4097b2:	c5 fa 5a d0          	vcvtss2sd %xmm0,%xmm0,%xmm2
  4097b6:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
  4097ba:	c5 f8 c6 d0 55       	vshufps $0x55,%xmm0,%xmm0,%xmm2
  4097bf:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  4097c3:	c5 eb 58 d1          	vaddsd %xmm1,%xmm2,%xmm2
  4097c7:	c5 f8 15 c8          	vunpckhps %xmm0,%xmm0,%xmm1
  4097cb:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  4097cf:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  4097d3:	c5 f8 c6 c0 ff       	vshufps $0xff,%xmm0,%xmm0,%xmm0
  4097d8:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  4097dc:	c5 fb 58 e1          	vaddsd %xmm1,%xmm0,%xmm4
  4097e0:	c4 e1 f9 7e e3       	vmovq  %xmm4,%rbx
  4097e5:	c5 f8 77             	vzeroupper 
  4097e8:	e9 72 d0 ff ff       	jmpq   40685f <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x5f>
  4097ed:	62 f2 fd 48 19 0d 81 	vbroadcastsd 0x4d81(%rip),%zmm1        # 40e578 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  4097f4:	4d 00 00 
  4097f7:	62 f2 fd 48 19 05 a7 	vbroadcastsd 0x4da7(%rip),%zmm0        # 40e5a8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x108>
  4097fe:	4d 00 00 
  409801:	62 f2 fd 48 19 1d a5 	vbroadcastsd 0x4da5(%rip),%zmm3        # 40e5b0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x110>
  409808:	4d 00 00 
  40980b:	62 f2 fd 48 19 25 a3 	vbroadcastsd 0x4da3(%rip),%zmm4        # 40e5b8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x118>
  409812:	4d 00 00 
  409815:	62 f2 fd 48 19 2d a1 	vbroadcastsd 0x4da1(%rip),%zmm5        # 40e5c0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x120>
  40981c:	4d 00 00 
  40981f:	62 f2 fd 48 19 35 9f 	vbroadcastsd 0x4d9f(%rip),%zmm6        # 40e5c8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x128>
  409826:	4d 00 00 
  409829:	62 72 fd 48 19 05 9d 	vbroadcastsd 0x4d9d(%rip),%zmm8        # 40e5d0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x130>
  409830:	4d 00 00 
  409833:	62 72 fd 48 19 0d 9b 	vbroadcastsd 0x4d9b(%rip),%zmm9        # 40e5d8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x138>
  40983a:	4d 00 00 
  40983d:	62 72 fd 48 19 15 99 	vbroadcastsd 0x4d99(%rip),%zmm10        # 40e5e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x140>
  409844:	4d 00 00 
  409847:	62 72 fd 48 19 1d 97 	vbroadcastsd 0x4d97(%rip),%zmm11        # 40e5e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x148>
  40984e:	4d 00 00 
  409851:	62 72 fd 48 19 25 2d 	vbroadcastsd 0x4d2d(%rip),%zmm12        # 40e588 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  409858:	4d 00 00 
  40985b:	62 72 fd 48 19 2d 1b 	vbroadcastsd 0x4d1b(%rip),%zmm13        # 40e580 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe0>
  409862:	4d 00 00 
  409865:	62 f2 fd 48 19 15 29 	vbroadcastsd 0x4d29(%rip),%zmm2        # 40e598 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xf8>
  40986c:	4d 00 00 
  40986f:	62 f1 fd 48 28 f9    	vmovapd %zmm1,%zmm7
  409875:	62 f2 ed 48 98 f9    	vfmadd132pd %zmm1,%zmm2,%zmm7
  40987b:	62 72 ed 48 98 e9    	vfmadd132pd %zmm1,%zmm2,%zmm13
  409881:	62 72 ed 48 98 e1    	vfmadd132pd %zmm1,%zmm2,%zmm12
  409887:	62 72 ed 48 98 d9    	vfmadd132pd %zmm1,%zmm2,%zmm11
  40988d:	62 72 ed 48 98 d1    	vfmadd132pd %zmm1,%zmm2,%zmm10
  409893:	62 72 ed 48 98 c9    	vfmadd132pd %zmm1,%zmm2,%zmm9
  409899:	62 72 ed 48 98 c1    	vfmadd132pd %zmm1,%zmm2,%zmm8
  40989f:	62 f2 ed 48 98 f1    	vfmadd132pd %zmm1,%zmm2,%zmm6
  4098a5:	62 f2 ed 48 98 e9    	vfmadd132pd %zmm1,%zmm2,%zmm5
  4098ab:	62 f2 ed 48 98 e1    	vfmadd132pd %zmm1,%zmm2,%zmm4
  4098b1:	62 f2 ed 48 98 d9    	vfmadd132pd %zmm1,%zmm2,%zmm3
  4098b7:	62 f2 ed 48 98 c1    	vfmadd132pd %zmm1,%zmm2,%zmm0
  4098bd:	ff c8                	dec    %eax
  4098bf:	75 b4                	jne    409875 <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x3075>
  4098c1:	62 f3 fd 48 1b fa 01 	vextractf64x4 $0x1,%zmm7,%ymm2
  4098c8:	c5 ed 58 d7          	vaddpd %ymm7,%ymm2,%ymm2
  4098cc:	62 73 fd 48 1b ef 01 	vextractf64x4 $0x1,%zmm13,%ymm7
  4098d3:	c4 c1 45 58 fd       	vaddpd %ymm13,%ymm7,%ymm7
  4098d8:	62 f3 fd 28 19 d1 01 	vextractf64x2 $0x1,%ymm2,%xmm1
  4098df:	c5 f1 58 ca          	vaddpd %xmm2,%xmm1,%xmm1
  4098e3:	45 31 ed             	xor    %r13d,%r13d
  4098e6:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  4098ea:	c5 f3 58 15 f6 4d 00 	vaddsd 0x4df6(%rip),%xmm1,%xmm2        # 40e6e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  4098f1:	00 
  4098f2:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  4098f9:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  4098fd:	62 73 fd 48 1b e7 01 	vextractf64x4 $0x1,%zmm12,%ymm7
  409904:	c4 c1 45 58 fc       	vaddpd %ymm12,%ymm7,%ymm7
  409909:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40990d:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409911:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409918:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40991c:	62 73 fd 48 1b df 01 	vextractf64x4 $0x1,%zmm11,%ymm7
  409923:	c4 c1 45 58 fb       	vaddpd %ymm11,%ymm7,%ymm7
  409928:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40992c:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  409930:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409937:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40993b:	62 73 fd 48 1b d7 01 	vextractf64x4 $0x1,%zmm10,%ymm7
  409942:	c4 c1 45 58 fa       	vaddpd %ymm10,%ymm7,%ymm7
  409947:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40994b:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40994f:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409956:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  40995a:	62 73 fd 48 1b cf 01 	vextractf64x4 $0x1,%zmm9,%ymm7
  409961:	c4 c1 45 58 f9       	vaddpd %ymm9,%ymm7,%ymm7
  409966:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40996a:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40996e:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409975:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  409979:	62 73 fd 48 1b c7 01 	vextractf64x4 $0x1,%zmm8,%ymm7
  409980:	c4 c1 45 58 f8       	vaddpd %ymm8,%ymm7,%ymm7
  409985:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409989:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  40998d:	62 f3 fd 28 19 f9 01 	vextractf64x2 $0x1,%ymm7,%xmm1
  409994:	c5 f1 58 cf          	vaddpd %xmm7,%xmm1,%xmm1
  409998:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  40999c:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  4099a0:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  4099a7:	c5 f5 58 f6          	vaddpd %ymm6,%ymm1,%ymm6
  4099ab:	62 f3 fd 28 19 f1 01 	vextractf64x2 $0x1,%ymm6,%xmm1
  4099b2:	c5 f1 58 ce          	vaddpd %xmm6,%xmm1,%xmm1
  4099b6:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  4099ba:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  4099be:	62 f3 fd 48 1b e9 01 	vextractf64x4 $0x1,%zmm5,%ymm1
  4099c5:	c5 f5 58 ed          	vaddpd %ymm5,%ymm1,%ymm5
  4099c9:	62 f3 fd 28 19 e9 01 	vextractf64x2 $0x1,%ymm5,%xmm1
  4099d0:	c5 f1 58 cd          	vaddpd %xmm5,%xmm1,%xmm1
  4099d4:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  4099d8:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  4099dc:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  4099e3:	c5 f5 58 e4          	vaddpd %ymm4,%ymm1,%ymm4
  4099e7:	62 f3 fd 28 19 e1 01 	vextractf64x2 $0x1,%ymm4,%xmm1
  4099ee:	c5 f1 58 cc          	vaddpd %xmm4,%xmm1,%xmm1
  4099f2:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  4099f6:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
  4099fa:	62 f3 fd 48 1b d9 01 	vextractf64x4 $0x1,%zmm3,%ymm1
  409a01:	c5 f5 58 db          	vaddpd %ymm3,%ymm1,%ymm3
  409a05:	62 f3 fd 28 19 d9 01 	vextractf64x2 $0x1,%ymm3,%xmm1
  409a0c:	c5 f1 58 cb          	vaddpd %xmm3,%xmm1,%xmm1
  409a10:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  409a14:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  409a18:	62 f3 fd 48 1b c2 01 	vextractf64x4 $0x1,%zmm0,%ymm2
  409a1f:	c5 fd 58 c2          	vaddpd %ymm2,%ymm0,%ymm0
  409a23:	62 f3 fd 28 19 c2 01 	vextractf64x2 $0x1,%ymm0,%xmm2
  409a2a:	c5 f9 58 c2          	vaddpd %xmm2,%xmm0,%xmm0
  409a2e:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  409a32:	c5 fb 58 d1          	vaddsd %xmm1,%xmm0,%xmm2
  409a36:	c4 e1 f9 7e d3       	vmovq  %xmm2,%rbx
  409a3b:	c5 f8 77             	vzeroupper 
  409a3e:	e9 1c ce ff ff       	jmpq   40685f <_ZZ4mainENKUlmE_clEm._omp_fn.4+0x5f>
  409a43:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  409a4a:	00 00 00 00 
  409a4e:	66 90                	xchg   %ax,%ax

0000000000409a50 <_ZZ4mainENKUlmE_clEm._omp_fn.1>:
  409a50:	55                   	push   %rbp
  409a51:	48 89 e5             	mov    %rsp,%rbp
  409a54:	41 55                	push   %r13
  409a56:	4c 8b 2f             	mov    (%rdi),%r13
  409a59:	41 54                	push   %r12
  409a5b:	53                   	push   %rbx
  409a5c:	49 8b 45 18          	mov    0x18(%r13),%rax
  409a60:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  409a64:	48 8b 18             	mov    (%rax),%rbx
  409a67:	48 85 db             	test   %rbx,%rbx
  409a6a:	74 7a                	je     409ae6 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x96>
  409a6c:	e8 1f 9a ff ff       	callq  403490 <omp_get_num_threads@plt>
  409a71:	4c 63 e0             	movslq %eax,%r12
  409a74:	e8 67 99 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  409a79:	48 63 c8             	movslq %eax,%rcx
  409a7c:	48 8d 43 07          	lea    0x7(%rbx),%rax
  409a80:	48 c1 e8 03          	shr    $0x3,%rax
  409a84:	31 d2                	xor    %edx,%edx
  409a86:	49 f7 f4             	div    %r12
  409a89:	48 39 d1             	cmp    %rdx,%rcx
  409a8c:	72 6a                	jb     409af8 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0xa8>
  409a8e:	48 0f af c8          	imul   %rax,%rcx
  409a92:	48 01 ca             	add    %rcx,%rdx
  409a95:	48 01 d0             	add    %rdx,%rax
  409a98:	48 39 c2             	cmp    %rax,%rdx
  409a9b:	73 49                	jae    409ae6 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x96>
  409a9d:	62 f2 fd 48 19 0d e1 	vbroadcastsd 0x4ae1(%rip),%zmm1        # 40e588 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xe8>
  409aa4:	4a 00 00 
  409aa7:	48 c1 e2 03          	shl    $0x3,%rdx
  409aab:	48 c1 e0 03          	shl    $0x3,%rax
  409aaf:	90                   	nop
  409ab0:	49 8b 4d 30          	mov    0x30(%r13),%rcx
  409ab4:	48 8b 31             	mov    (%rcx),%rsi
  409ab7:	49 8b 4d 28          	mov    0x28(%r13),%rcx
  409abb:	62 f1 fd 48 28 04 d6 	vmovapd (%rsi,%rdx,8),%zmm0
  409ac2:	48 8b 09             	mov    (%rcx),%rcx
  409ac5:	62 f2 f5 48 a8 04 d1 	vfmadd213pd (%rcx,%rdx,8),%zmm1,%zmm0
  409acc:	49 8b 4d 20          	mov    0x20(%r13),%rcx
  409ad0:	48 8b 09             	mov    (%rcx),%rcx
  409ad3:	62 f1 fd 48 2b 04 d1 	vmovntpd %zmm0,(%rcx,%rdx,8)
  409ada:	48 83 c2 08          	add    $0x8,%rdx
  409ade:	48 39 d0             	cmp    %rdx,%rax
  409ae1:	77 cd                	ja     409ab0 <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x60>
  409ae3:	c5 f8 77             	vzeroupper 
  409ae6:	0f ae f8             	sfence 
  409ae9:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  409aed:	5b                   	pop    %rbx
  409aee:	41 5c                	pop    %r12
  409af0:	41 5d                	pop    %r13
  409af2:	5d                   	pop    %rbp
  409af3:	c3                   	retq   
  409af4:	0f 1f 40 00          	nopl   0x0(%rax)
  409af8:	48 ff c0             	inc    %rax
  409afb:	31 d2                	xor    %edx,%edx
  409afd:	eb 8f                	jmp    409a8e <_ZZ4mainENKUlmE_clEm._omp_fn.1+0x3e>
  409aff:	90                   	nop

0000000000409b00 <_ZZ4mainENKUlmE_clEm>:
  409b00:	55                   	push   %rbp
  409b01:	48 89 e5             	mov    %rsp,%rbp
  409b04:	41 54                	push   %r12
  409b06:	53                   	push   %rbx
  409b07:	48 89 fb             	mov    %rdi,%rbx
  409b0a:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  409b0e:	48 83 ec 40          	sub    $0x40,%rsp
  409b12:	48 8b 07             	mov    (%rdi),%rax
  409b15:	80 38 00             	cmpb   $0x0,(%rax)
  409b18:	0f 85 24 02 00 00    	jne    409d42 <_ZZ4mainENKUlmE_clEm+0x242>
  409b1e:	48 8b 47 10          	mov    0x10(%rdi),%rax
  409b22:	80 38 00             	cmpb   $0x0,(%rax)
  409b25:	0f 85 97 02 00 00    	jne    409dc2 <_ZZ4mainENKUlmE_clEm+0x2c2>
  409b2b:	48 8b 47 38          	mov    0x38(%rdi),%rax
  409b2f:	44 0f b6 20          	movzbl (%rax),%r12d
  409b33:	45 84 e4             	test   %r12b,%r12b
  409b36:	0f 85 41 02 00 00    	jne    409d7d <_ZZ4mainENKUlmE_clEm+0x27d>
  409b3c:	48 8b 47 40          	mov    0x40(%rdi),%rax
  409b40:	80 38 00             	cmpb   $0x0,(%rax)
  409b43:	0f 85 17 03 00 00    	jne    409e60 <_ZZ4mainENKUlmE_clEm+0x360>
  409b49:	48 8b 47 78          	mov    0x78(%rdi),%rax
  409b4d:	44 0f b6 20          	movzbl (%rax),%r12d
  409b51:	45 84 e4             	test   %r12b,%r12b
  409b54:	0f 85 b0 02 00 00    	jne    409e0a <_ZZ4mainENKUlmE_clEm+0x30a>
  409b5a:	48 8d 87 88 00 00 00 	lea    0x88(%rdi),%rax
  409b61:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  409b66:	48 8d 87 90 00 00 00 	lea    0x90(%rdi),%rax
  409b6d:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  409b72:	48 8d 87 98 00 00 00 	lea    0x98(%rdi),%rax
  409b79:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  409b7e:	48 8d 87 a0 00 00 00 	lea    0xa0(%rdi),%rax
  409b85:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
  409b8a:	48 8d 87 a8 00 00 00 	lea    0xa8(%rdi),%rax
  409b91:	c4 e3 f9 22 c0 01    	vpinsrq $0x1,%rax,%xmm0,%xmm0
  409b97:	48 89 3c 24          	mov    %rdi,(%rsp)
  409b9b:	31 d2                	xor    %edx,%edx
  409b9d:	31 c9                	xor    %ecx,%ecx
  409b9f:	48 89 e6             	mov    %rsp,%rsi
  409ba2:	bf 00 68 40 00       	mov    $0x406800,%edi
  409ba7:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%rsp)
  409bae:	00 
  409baf:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  409bb6:	00 00 
  409bb8:	c5 f9 7f 44 24 20    	vmovdqa %xmm0,0x20(%rsp)
  409bbe:	e8 dd 97 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  409bc3:	8b 44 24 38          	mov    0x38(%rsp),%eax
  409bc7:	c5 fb 10 54 24 30    	vmovsd 0x30(%rsp),%xmm2
  409bcd:	48 8b 53 60          	mov    0x60(%rbx),%rdx
  409bd1:	c5 fb 11 12          	vmovsd %xmm2,(%rdx)
  409bd5:	85 c0                	test   %eax,%eax
  409bd7:	75 22                	jne    409bfb <_ZZ4mainENKUlmE_clEm+0xfb>
  409bd9:	c5 e9 54 05 ff 4a 00 	vandpd 0x4aff(%rip),%xmm2,%xmm0        # 40e6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  409be0:	00 
  409be1:	c5 fb 10 0d 0f 4a 00 	vmovsd 0x4a0f(%rip),%xmm1        # 40e5f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  409be8:	00 
  409be9:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
  409bed:	72 0c                	jb     409bfb <_ZZ4mainENKUlmE_clEm+0xfb>
  409bef:	c5 f9 2f 15 f1 4a 00 	vcomisd 0x4af1(%rip),%xmm2        # 40e6e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x248>
  409bf6:	00 
  409bf7:	41 0f 97 c4          	seta   %r12b
  409bfb:	48 8b 53 68          	mov    0x68(%rbx),%rdx
  409bff:	48 8b 8b a8 00 00 00 	mov    0xa8(%rbx),%rcx
  409c06:	44 22 22             	and    (%rdx),%r12b
  409c09:	44 88 22             	mov    %r12b,(%rdx)
  409c0c:	80 39 00             	cmpb   $0x0,(%rcx)
  409c0f:	0f 84 53 01 00 00    	je     409d68 <_ZZ4mainENKUlmE_clEm+0x268>
  409c15:	48 8b 83 b8 00 00 00 	mov    0xb8(%rbx),%rax
  409c1c:	c5 fa 7e 1d bc 4a 00 	vmovq  0x4abc(%rip),%xmm3        # 40e6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  409c23:	00 
  409c24:	c5 fb 10 00          	vmovsd (%rax),%xmm0
  409c28:	c5 eb 5c c8          	vsubsd %xmm0,%xmm2,%xmm1
  409c2c:	c5 f9 54 c3          	vandpd %xmm3,%xmm0,%xmm0
  409c30:	c5 f1 54 cb          	vandpd %xmm3,%xmm1,%xmm1
  409c34:	c5 fb 10 1d b4 49 00 	vmovsd 0x49b4(%rip),%xmm3        # 40e5f0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x150>
  409c3b:	00 
  409c3c:	c5 fb 59 c3          	vmulsd %xmm3,%xmm0,%xmm0
  409c40:	c5 fb 5f c3          	vmaxsd %xmm3,%xmm0,%xmm0
  409c44:	c5 f9 2f c1          	vcomisd %xmm1,%xmm0
  409c48:	0f 97 c0             	seta   %al
  409c4b:	44 21 e0             	and    %r12d,%eax
  409c4e:	88 02                	mov    %al,(%rdx)
  409c50:	48 8b b3 98 00 00 00 	mov    0x98(%rbx),%rsi
  409c57:	48 8b 83 c0 00 00 00 	mov    0xc0(%rbx),%rax
  409c5e:	80 3e 00             	cmpb   $0x0,(%rsi)
  409c61:	48 63 00             	movslq (%rax),%rax
  409c64:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  409c68:	74 39                	je     409ca3 <_ZZ4mainENKUlmE_clEm+0x1a3>
  409c6a:	c5 fb 2a c8          	vcvtsi2sd %eax,%xmm0,%xmm1
  409c6e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  409c74:	c5 f3 59 0d 2c 49 00 	vmulsd 0x492c(%rip),%xmm1,%xmm1        # 40e5a8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x108>
  409c7b:	00 
  409c7c:	c5 f3 59 0d 84 49 00 	vmulsd 0x4984(%rip),%xmm1,%xmm1        # 40e608 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  409c83:	00 
  409c84:	c5 f3 59 0d 5c 49 00 	vmulsd 0x495c(%rip),%xmm1,%xmm1        # 40e5e8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x148>
  409c8b:	00 
  409c8c:	c5 f3 59 0d 7c 49 00 	vmulsd 0x497c(%rip),%xmm1,%xmm1        # 40e610 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  409c93:	00 
  409c94:	c5 f9 2e ca          	vucomisd %xmm2,%xmm1
  409c98:	40 0f 9b c7          	setnp  %dil
  409c9c:	41 0f 45 f8          	cmovne %r8d,%edi
  409ca0:	40 20 3a             	and    %dil,(%rdx)
  409ca3:	48 8b bb a0 00 00 00 	mov    0xa0(%rbx),%rdi
  409caa:	80 3f 00             	cmpb   $0x0,(%rdi)
  409cad:	74 35                	je     409ce4 <_ZZ4mainENKUlmE_clEm+0x1e4>
  409caf:	c5 fb 2a c0          	vcvtsi2sd %eax,%xmm0,%xmm0
  409cb3:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  409cb9:	c5 fb 59 05 e7 48 00 	vmulsd 0x48e7(%rip),%xmm0,%xmm0        # 40e5a8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x108>
  409cc0:	00 
  409cc1:	c5 fb 59 05 3f 49 00 	vmulsd 0x493f(%rip),%xmm0,%xmm0        # 40e608 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x168>
  409cc8:	00 
  409cc9:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  409ccd:	c5 fb 59 05 3b 49 00 	vmulsd 0x493b(%rip),%xmm0,%xmm0        # 40e610 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x170>
  409cd4:	00 
  409cd5:	c5 f9 2e c2          	vucomisd %xmm2,%xmm0
  409cd9:	41 0f 9b c0          	setnp  %r8b
  409cdd:	45 0f 45 c1          	cmovne %r9d,%r8d
  409ce1:	44 20 02             	and    %r8b,(%rdx)
  409ce4:	4c 8b 83 88 00 00 00 	mov    0x88(%rbx),%r8
  409ceb:	ba 01 00 00 00       	mov    $0x1,%edx
  409cf0:	48 c1 e2 22          	shl    $0x22,%rdx
  409cf4:	41 80 38 00          	cmpb   $0x0,(%r8)
  409cf8:	75 42                	jne    409d3c <_ZZ4mainENKUlmE_clEm+0x23c>
  409cfa:	4c 8b 83 90 00 00 00 	mov    0x90(%rbx),%r8
  409d01:	ba 01 00 00 00       	mov    $0x1,%edx
  409d06:	48 c1 e2 23          	shl    $0x23,%rdx
  409d0a:	41 80 38 00          	cmpb   $0x0,(%r8)
  409d0e:	75 2c                	jne    409d3c <_ZZ4mainENKUlmE_clEm+0x23c>
  409d10:	ba 51 25 02 00       	mov    $0x22551,%edx
  409d15:	48 c1 e2 0f          	shl    $0xf,%rdx
  409d19:	80 3e 00             	cmpb   $0x0,(%rsi)
  409d1c:	75 1e                	jne    409d3c <_ZZ4mainENKUlmE_clEm+0x23c>
  409d1e:	80 3f 00             	cmpb   $0x0,(%rdi)
  409d21:	ba 00 40 54 89       	mov    $0x89544000,%edx
  409d26:	75 14                	jne    409d3c <_ZZ4mainENKUlmE_clEm+0x23c>
  409d28:	80 39 01             	cmpb   $0x1,(%rcx)
  409d2b:	48 19 d2             	sbb    %rdx,%rdx
  409d2e:	48 81 e2 00 f0 aa dd 	and    $0xffffffffddaaf000,%rdx
  409d35:	48 81 c2 00 20 aa 44 	add    $0x44aa2000,%rdx
  409d3c:	48 0f af c2          	imul   %rdx,%rax
  409d40:	eb 1d                	jmp    409d5f <_ZZ4mainENKUlmE_clEm+0x25f>
  409d42:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  409d46:	b8 00 00 01 00       	mov    $0x10000,%eax
  409d4b:	48 8b 11             	mov    (%rcx),%rdx
  409d4e:	66 90                	xchg   %ax,%ax
  409d50:	48 8b 12             	mov    (%rdx),%rdx
  409d53:	48 89 11             	mov    %rdx,(%rcx)
  409d56:	ff c8                	dec    %eax
  409d58:	75 f6                	jne    409d50 <_ZZ4mainENKUlmE_clEm+0x250>
  409d5a:	b8 00 00 01 00       	mov    $0x10000,%eax
  409d5f:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
  409d63:	5b                   	pop    %rbx
  409d64:	41 5c                	pop    %r12
  409d66:	5d                   	pop    %rbp
  409d67:	c3                   	retq   
  409d68:	48 8b 83 b0 00 00 00 	mov    0xb0(%rbx),%rax
  409d6f:	80 38 00             	cmpb   $0x0,(%rax)
  409d72:	0f 84 d8 fe ff ff    	je     409c50 <_ZZ4mainENKUlmE_clEm+0x150>
  409d78:	e9 98 fe ff ff       	jmpq   409c15 <_ZZ4mainENKUlmE_clEm+0x115>
  409d7d:	48 8d 47 18          	lea    0x18(%rdi),%rax
  409d81:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  409d86:	48 8d 47 20          	lea    0x20(%rdi),%rax
  409d8a:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  409d8f:	48 8d 47 28          	lea    0x28(%rdi),%rax
  409d93:	48 89 3c 24          	mov    %rdi,(%rsp)
  409d97:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  409d9c:	31 c9                	xor    %ecx,%ecx
  409d9e:	48 8d 47 30          	lea    0x30(%rdi),%rax
  409da2:	31 d2                	xor    %edx,%edx
  409da4:	48 89 e6             	mov    %rsp,%rsi
  409da7:	bf 50 9a 40 00       	mov    $0x409a50,%edi
  409dac:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  409db1:	e8 ea 95 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  409db6:	48 8b 43 18          	mov    0x18(%rbx),%rax
  409dba:	48 8b 00             	mov    (%rax),%rax
  409dbd:	48 01 c0             	add    %rax,%rax
  409dc0:	eb 9d                	jmp    409d5f <_ZZ4mainENKUlmE_clEm+0x25f>
  409dc2:	48 8d 47 18          	lea    0x18(%rdi),%rax
  409dc6:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  409dcb:	48 8d 47 20          	lea    0x20(%rdi),%rax
  409dcf:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  409dd4:	48 8d 47 28          	lea    0x28(%rdi),%rax
  409dd8:	48 89 3c 24          	mov    %rdi,(%rsp)
  409ddc:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  409de1:	31 c9                	xor    %ecx,%ecx
  409de3:	48 8d 47 30          	lea    0x30(%rdi),%rax
  409de7:	31 d2                	xor    %edx,%edx
  409de9:	48 89 e6             	mov    %rsp,%rsi
  409dec:	bf 50 62 40 00       	mov    $0x406250,%edi
  409df1:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  409df6:	e8 a5 95 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  409dfb:	48 8b 43 18          	mov    0x18(%rbx),%rax
  409dff:	48 8b 00             	mov    (%rax),%rax
  409e02:	48 01 c0             	add    %rax,%rax
  409e05:	e9 55 ff ff ff       	jmpq   409d5f <_ZZ4mainENKUlmE_clEm+0x25f>
  409e0a:	48 8d 47 18          	lea    0x18(%rdi),%rax
  409e0e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  409e13:	48 8d 47 20          	lea    0x20(%rdi),%rax
  409e17:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  409e1c:	48 8d 47 28          	lea    0x28(%rdi),%rax
  409e20:	48 89 3c 24          	mov    %rdi,(%rsp)
  409e24:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  409e29:	31 d2                	xor    %edx,%edx
  409e2b:	48 8d 87 80 00 00 00 	lea    0x80(%rdi),%rax
  409e32:	31 c9                	xor    %ecx,%ecx
  409e34:	48 89 e6             	mov    %rsp,%rsi
  409e37:	bf 10 66 40 00       	mov    $0x406610,%edi
  409e3c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  409e41:	e8 5a 95 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  409e46:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
  409e4d:	48 8b 53 18          	mov    0x18(%rbx),%rdx
  409e51:	48 63 00             	movslq (%rax),%rax
  409e54:	48 0f af 02          	imul   (%rdx),%rax
  409e58:	48 01 c0             	add    %rax,%rax
  409e5b:	e9 ff fe ff ff       	jmpq   409d5f <_ZZ4mainENKUlmE_clEm+0x25f>
  409e60:	48 8d 47 48          	lea    0x48(%rdi),%rax
  409e64:	48 8d 7f 50          	lea    0x50(%rdi),%rdi
  409e68:	48 8d 53 58          	lea    0x58(%rbx),%rdx
  409e6c:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  409e70:	c4 e1 f9 6e cf       	vmovq  %rdi,%xmm1
  409e75:	c4 e1 f9 6e eb       	vmovq  %rbx,%xmm5
  409e7a:	c4 e3 f1 22 ca 01    	vpinsrq $0x1,%rdx,%xmm1,%xmm1
  409e80:	c5 f9 29 44 24 30    	vmovapd %xmm0,0x30(%rsp)
  409e86:	c4 e3 d1 22 c0 01    	vpinsrq $0x1,%rax,%xmm5,%xmm0
  409e8c:	48 89 34 24          	mov    %rsi,(%rsp)
  409e90:	c4 e3 7d 38 c1 01    	vinserti128 $0x1,%xmm1,%ymm0,%ymm0
  409e96:	31 c9                	xor    %ecx,%ecx
  409e98:	31 d2                	xor    %edx,%edx
  409e9a:	48 89 e6             	mov    %rsp,%rsi
  409e9d:	bf 20 64 40 00       	mov    $0x406420,%edi
  409ea2:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  409ea9:	00 00 
  409eab:	c5 fe 7f 44 24 08    	vmovdqu %ymm0,0x8(%rsp)
  409eb1:	c5 f8 77             	vzeroupper 
  409eb4:	e8 e7 94 ff ff       	callq  4033a0 <GOMP_parallel@plt>
  409eb9:	c5 fb 10 44 24 30    	vmovsd 0x30(%rsp),%xmm0
  409ebf:	c5 fa 7e 15 19 48 00 	vmovq  0x4819(%rip),%xmm2        # 40e6e0 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x240>
  409ec6:	00 
  409ec7:	c5 fb 10 25 29 47 00 	vmovsd 0x4729(%rip),%xmm4        # 40e5f8 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x158>
  409ece:	00 
  409ecf:	c5 f9 54 da          	vandpd %xmm2,%xmm0,%xmm3
  409ed3:	c5 f9 2e e3          	vucomisd %xmm3,%xmm4
  409ed7:	48 8b 43 60          	mov    0x60(%rbx),%rax
  409edb:	c5 fb 10 4c 24 38    	vmovsd 0x38(%rsp),%xmm1
  409ee1:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
  409ee6:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
  409eea:	72 1c                	jb     409f08 <_ZZ4mainENKUlmE_clEm+0x408>
  409eec:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
  409ef0:	c5 f1 54 ca          	vandpd %xmm2,%xmm1,%xmm1
  409ef4:	c5 f3 59 0d 04 47 00 	vmulsd 0x4704(%rip),%xmm1,%xmm1        # 40e600 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x160>
  409efb:	00 
  409efc:	c5 f9 54 c2          	vandpd %xmm2,%xmm0,%xmm0
  409f00:	c5 f9 2f c8          	vcomisd %xmm0,%xmm1
  409f04:	41 0f 93 c4          	setae  %r12b
  409f08:	48 8b 43 68          	mov    0x68(%rbx),%rax
  409f0c:	44 20 20             	and    %r12b,(%rax)
  409f0f:	48 8b 43 70          	mov    0x70(%rbx),%rax
  409f13:	48 89 10             	mov    %rdx,(%rax)
  409f16:	31 c0                	xor    %eax,%eax
  409f18:	e9 42 fe ff ff       	jmpq   409d5f <_ZZ4mainENKUlmE_clEm+0x25f>
  409f1d:	90                   	nop
  409f1e:	66 90                	xchg   %ax,%ax

0000000000409f20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0>:
  409f20:	41 55                	push   %r13
  409f22:	41 54                	push   %r12
  409f24:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  409f28:	55                   	push   %rbp
  409f29:	53                   	push   %rbx
  409f2a:	48 83 ec 18          	sub    $0x18,%rsp
  409f2e:	4c 89 27             	mov    %r12,(%rdi)
  409f31:	48 85 f6             	test   %rsi,%rsi
  409f34:	0f 84 8c 00 00 00    	je     409fc6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0xa6>
  409f3a:	48 89 fb             	mov    %rdi,%rbx
  409f3d:	48 89 f7             	mov    %rsi,%rdi
  409f40:	48 89 f5             	mov    %rsi,%rbp
  409f43:	e8 f8 91 ff ff       	callq  403140 <strlen@plt>
  409f48:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  409f4d:	49 89 c5             	mov    %rax,%r13
  409f50:	48 83 f8 0f          	cmp    $0xf,%rax
  409f54:	77 3a                	ja     409f90 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x70>
  409f56:	48 83 f8 01          	cmp    $0x1,%rax
  409f5a:	75 24                	jne    409f80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x60>
  409f5c:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
  409f60:	88 53 10             	mov    %dl,0x10(%rbx)
  409f63:	48 89 43 08          	mov    %rax,0x8(%rbx)
  409f67:	41 c6 04 04 00       	movb   $0x0,(%r12,%rax,1)
  409f6c:	48 83 c4 18          	add    $0x18,%rsp
  409f70:	5b                   	pop    %rbx
  409f71:	5d                   	pop    %rbp
  409f72:	41 5c                	pop    %r12
  409f74:	41 5d                	pop    %r13
  409f76:	c3                   	retq   
  409f77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  409f7e:	00 00 
  409f80:	48 85 c0             	test   %rax,%rax
  409f83:	74 de                	je     409f63 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  409f85:	eb 27                	jmp    409fae <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x8e>
  409f87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  409f8e:	00 00 
  409f90:	31 d2                	xor    %edx,%edx
  409f92:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  409f97:	48 89 df             	mov    %rbx,%rdi
  409f9a:	e8 c1 94 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  409f9f:	48 89 03             	mov    %rax,(%rbx)
  409fa2:	49 89 c4             	mov    %rax,%r12
  409fa5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  409faa:	48 89 43 10          	mov    %rax,0x10(%rbx)
  409fae:	4c 89 e7             	mov    %r12,%rdi
  409fb1:	4c 89 ea             	mov    %r13,%rdx
  409fb4:	48 89 ee             	mov    %rbp,%rsi
  409fb7:	e8 94 92 ff ff       	callq  403250 <memcpy@plt>
  409fbc:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  409fc1:	4c 8b 23             	mov    (%rbx),%r12
  409fc4:	eb 9d                	jmp    409f63 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.constprop.0+0x43>
  409fc6:	bf 10 e0 40 00       	mov    $0x40e010,%edi
  409fcb:	e8 20 92 ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>

0000000000409fd0 <_ZN8Counters4openEi._omp_fn.0>:
  409fd0:	55                   	push   %rbp
  409fd1:	48 89 fd             	mov    %rdi,%rbp
  409fd4:	53                   	push   %rbx
  409fd5:	48 83 ec 58          	sub    $0x58,%rsp
  409fd9:	e8 02 94 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  409fde:	48 63 d8             	movslq %eax,%rbx
  409fe1:	39 5d 08             	cmp    %ebx,0x8(%rbp)
  409fe4:	7f 0a                	jg     409ff0 <_ZN8Counters4openEi._omp_fn.0+0x20>
  409fe6:	48 83 c4 58          	add    $0x58,%rsp
  409fea:	5b                   	pop    %rbx
  409feb:	5d                   	pop    %rbp
  409fec:	c3                   	retq   
  409fed:	0f 1f 00             	nopl   (%rax)
  409ff0:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
  409ff4:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  409ff8:	48 89 e6             	mov    %rsp,%rsi
  409ffb:	45 31 c9             	xor    %r9d,%r9d
  409ffe:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40a004:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40a009:	31 d2                	xor    %edx,%edx
  40a00b:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40a010:	31 c0                	xor    %eax,%eax
  40a012:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40a018:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40a01e:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40a025:	00 00 
  40a027:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  40a02e:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40a035:	00 
  40a036:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40a03d:	00 00 
  40a03f:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40a046:	00 00 
  40a048:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40a04f:	00 00 
  40a051:	e8 fa 8f ff ff       	callq  403050 <syscall@plt>
  40a056:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  40a05a:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40a05e:	89 04 9a             	mov    %eax,(%rdx,%rbx,4)
  40a061:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40a067:	48 89 e6             	mov    %rsp,%rsi
  40a06a:	45 31 c9             	xor    %r9d,%r9d
  40a06d:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40a072:	31 d2                	xor    %edx,%edx
  40a074:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40a079:	31 c0                	xor    %eax,%eax
  40a07b:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40a082:	00 00 
  40a084:	c7 04 24 04 00 00 00 	movl   $0x4,(%rsp)
  40a08b:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40a092:	00 
  40a093:	48 c7 44 24 08 b7 02 	movq   $0x2b7,0x8(%rsp)
  40a09a:	00 00 
  40a09c:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40a0a3:	00 00 
  40a0a5:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40a0ac:	00 00 
  40a0ae:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40a0b4:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40a0ba:	e8 91 8f ff ff       	callq  403050 <syscall@plt>
  40a0bf:	49 89 c0             	mov    %rax,%r8
  40a0c2:	48 8b 45 18          	mov    0x18(%rbp),%rax
  40a0c6:	44 89 04 98          	mov    %r8d,(%rax,%rbx,4)
  40a0ca:	48 83 c4 58          	add    $0x58,%rsp
  40a0ce:	5b                   	pop    %rbx
  40a0cf:	5d                   	pop    %rbp
  40a0d0:	c3                   	retq   
  40a0d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40a0d8:	00 00 00 00 
  40a0dc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040a0e0 <_Z8clock_nsv>:
  40a0e0:	48 83 ec 18          	sub    $0x18,%rsp
  40a0e4:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40a0e8:	48 89 e6             	mov    %rsp,%rsi
  40a0eb:	bf 01 00 00 00       	mov    $0x1,%edi
  40a0f0:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  40a0f5:	e8 86 91 ff ff       	callq  403280 <clock_gettime@plt>
  40a0fa:	48 69 04 24 00 ca 9a 	imul   $0x3b9aca00,(%rsp),%rax
  40a101:	3b 
  40a102:	48 03 44 24 08       	add    0x8(%rsp),%rax
  40a107:	48 83 c4 18          	add    $0x18,%rsp
  40a10b:	c3                   	retq   
  40a10c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040a110 <_Z9perf_openjm>:
  40a110:	48 83 ec 58          	sub    $0x58,%rsp
  40a114:	89 3c 24             	mov    %edi,(%rsp)
  40a117:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  40a11c:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40a120:	48 89 e6             	mov    %rsp,%rsi
  40a123:	45 31 c9             	xor    %r9d,%r9d
  40a126:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40a12c:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40a131:	31 d2                	xor    %edx,%edx
  40a133:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40a138:	31 c0                	xor    %eax,%eax
  40a13a:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  40a141:	00 00 
  40a143:	c7 44 24 04 48 00 00 	movl   $0x48,0x4(%rsp)
  40a14a:	00 
  40a14b:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
  40a152:	00 00 
  40a154:	48 c7 44 24 28 60 00 	movq   $0x60,0x28(%rsp)
  40a15b:	00 00 
  40a15d:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  40a163:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  40a169:	e8 e2 8e ff ff       	callq  403050 <syscall@plt>
  40a16e:	48 83 c4 58          	add    $0x58,%rsp
  40a172:	c3                   	retq   
  40a173:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40a17a:	00 00 00 00 
  40a17e:	66 90                	xchg   %ax,%ax

000000000040a180 <_Z11alloc_bytesmb>:
  40a180:	41 54                	push   %r12
  40a182:	55                   	push   %rbp
  40a183:	48 83 ec 08          	sub    $0x8,%rsp
  40a187:	48 81 ff ff ff 1f 00 	cmp    $0x1fffff,%rdi
  40a18e:	76 48                	jbe    40a1d8 <_Z11alloc_bytesmb+0x58>
  40a190:	40 84 f6             	test   %sil,%sil
  40a193:	74 43                	je     40a1d8 <_Z11alloc_bytesmb+0x58>
  40a195:	48 8d af ff ff 1f 00 	lea    0x1fffff(%rdi),%rbp
  40a19c:	48 81 e5 00 00 e0 ff 	and    $0xffffffffffe00000,%rbp
  40a1a3:	48 89 ee             	mov    %rbp,%rsi
  40a1a6:	bf 00 00 20 00       	mov    $0x200000,%edi
  40a1ab:	e8 60 90 ff ff       	callq  403210 <aligned_alloc@plt>
  40a1b0:	49 89 c4             	mov    %rax,%r12
  40a1b3:	48 85 c0             	test   %rax,%rax
  40a1b6:	74 49                	je     40a201 <_Z11alloc_bytesmb+0x81>
  40a1b8:	48 89 ee             	mov    %rbp,%rsi
  40a1bb:	4c 89 e7             	mov    %r12,%rdi
  40a1be:	ba 0e 00 00 00       	mov    $0xe,%edx
  40a1c3:	e8 48 91 ff ff       	callq  403310 <madvise@plt>
  40a1c8:	48 83 c4 08          	add    $0x8,%rsp
  40a1cc:	5d                   	pop    %rbp
  40a1cd:	4c 89 e0             	mov    %r12,%rax
  40a1d0:	41 5c                	pop    %r12
  40a1d2:	c3                   	retq   
  40a1d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40a1d8:	48 8d 77 3f          	lea    0x3f(%rdi),%rsi
  40a1dc:	48 83 e6 c0          	and    $0xffffffffffffffc0,%rsi
  40a1e0:	bf 40 00 00 00       	mov    $0x40,%edi
  40a1e5:	e8 26 90 ff ff       	callq  403210 <aligned_alloc@plt>
  40a1ea:	49 89 c4             	mov    %rax,%r12
  40a1ed:	48 85 c0             	test   %rax,%rax
  40a1f0:	0f 84 da 92 ff ff    	je     4034d0 <_Z11alloc_bytesmb.cold>
  40a1f6:	48 83 c4 08          	add    $0x8,%rsp
  40a1fa:	5d                   	pop    %rbp
  40a1fb:	4c 89 e0             	mov    %r12,%rax
  40a1fe:	41 5c                	pop    %r12
  40a200:	c3                   	retq   
  40a201:	e9 ca 92 ff ff       	jmpq   4034d0 <_Z11alloc_bytesmb.cold>
  40a206:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a20d:	00 00 00 

000000000040a210 <main._omp_fn.2>:
  40a210:	55                   	push   %rbp
  40a211:	48 89 fd             	mov    %rdi,%rbp
  40a214:	53                   	push   %rbx
  40a215:	48 83 ec 08          	sub    $0x8,%rsp
  40a219:	e8 c2 91 ff ff       	callq  4033e0 <omp_get_thread_num@plt>
  40a21e:	48 63 d8             	movslq %eax,%rbx
  40a221:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40a225:	0f b6 75 18          	movzbl 0x18(%rbp),%esi
  40a229:	48 8b 38             	mov    (%rax),%rdi
  40a22c:	e8 4f ff ff ff       	callq  40a180 <_Z11alloc_bytesmb>
  40a231:	48 89 c6             	mov    %rax,%rsi
  40a234:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40a238:	48 8b 38             	mov    (%rax),%rdi
  40a23b:	48 c1 ef 03          	shr    $0x3,%rdi
  40a23f:	74 7f                	je     40a2c0 <main._omp_fn.2+0xb0>
  40a241:	c5 fb 10 1d 27 43 00 	vmovsd 0x4327(%rip),%xmm3        # 40e570 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd0>
  40a248:	00 
  40a249:	c5 fb 10 15 27 43 00 	vmovsd 0x4327(%rip),%xmm2        # 40e578 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  40a250:	00 
  40a251:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
  40a255:	31 c9                	xor    %ecx,%ecx
  40a257:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  40a25b:	49 b8 f1 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f1,%r8
  40a262:	f0 f0 f0 
  40a265:	0f 1f 00             	nopl   (%rax)
  40a268:	48 89 c8             	mov    %rcx,%rax
  40a26b:	49 f7 e0             	mul    %r8
  40a26e:	48 89 d0             	mov    %rdx,%rax
  40a271:	48 c1 e8 04          	shr    $0x4,%rax
  40a275:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  40a279:	48 01 c2             	add    %rax,%rdx
  40a27c:	48 89 c8             	mov    %rcx,%rax
  40a27f:	48 29 d0             	sub    %rdx,%rax
  40a282:	c4 e1 db 2a c0       	vcvtsi2sd %rax,%xmm4,%xmm0
  40a287:	c4 e2 e9 99 c3       	vfmadd132sd %xmm3,%xmm2,%xmm0
  40a28c:	c5 fb 11 04 ce       	vmovsd %xmm0,(%rsi,%rcx,8)
  40a291:	48 ff c1             	inc    %rcx
  40a294:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  40a298:	48 39 cf             	cmp    %rcx,%rdi
  40a29b:	75 cb                	jne    40a268 <main._omp_fn.2+0x58>
  40a29d:	48 8b 45 00          	mov    0x0(%rbp),%rax
  40a2a1:	48 8b 00             	mov    (%rax),%rax
  40a2a4:	48 89 34 d8          	mov    %rsi,(%rax,%rbx,8)
  40a2a8:	48 8b 45 08          	mov    0x8(%rbp),%rax
  40a2ac:	48 8b 00             	mov    (%rax),%rax
  40a2af:	c5 fb 11 0c d8       	vmovsd %xmm1,(%rax,%rbx,8)
  40a2b4:	48 83 c4 08          	add    $0x8,%rsp
  40a2b8:	5b                   	pop    %rbx
  40a2b9:	5d                   	pop    %rbp
  40a2ba:	c3                   	retq   
  40a2bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40a2c0:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  40a2c4:	eb d7                	jmp    40a29d <main._omp_fn.2+0x8d>
  40a2c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a2cd:	00 00 00 

000000000040a2d0 <_Z6windowid>:
  40a2d0:	55                   	push   %rbp
  40a2d1:	48 89 e5             	mov    %rsp,%rbp
  40a2d4:	41 57                	push   %r15
  40a2d6:	41 56                	push   %r14
  40a2d8:	41 55                	push   %r13
  40a2da:	41 54                	push   %r12
  40a2dc:	41 89 fc             	mov    %edi,%r12d
  40a2df:	bf 9e e0 40 00       	mov    $0x40e09e,%edi
  40a2e4:	53                   	push   %rbx
  40a2e5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40a2e9:	48 81 ec a0 03 00 00 	sub    $0x3a0,%rsp
  40a2f0:	e8 2b 90 ff ff       	callq  403320 <getenv@plt>
  40a2f5:	48 85 c0             	test   %rax,%rax
  40a2f8:	0f 84 0f 1c 00 00    	je     40bf0d <_Z6windowid+0x1c3d>
  40a2fe:	48 89 c7             	mov    %rax,%rdi
  40a301:	49 89 c5             	mov    %rax,%r13
  40a304:	e8 37 8e ff ff       	callq  403140 <strlen@plt>
  40a309:	48 8d 8c 24 00 01 00 	lea    0x100(%rsp),%rcx
  40a310:	00 
  40a311:	48 89 8c 24 f0 00 00 	mov    %rcx,0xf0(%rsp)
  40a318:	00 
  40a319:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40a320:	00 
  40a321:	49 89 c6             	mov    %rax,%r14
  40a324:	48 83 f8 0f          	cmp    $0xf,%rax
  40a328:	0f 87 92 01 00 00    	ja     40a4c0 <_Z6windowid+0x1f0>
  40a32e:	48 83 f8 01          	cmp    $0x1,%rax
  40a332:	0f 85 6a 1d 00 00    	jne    40c0a2 <_Z6windowid+0x1dd2>
  40a338:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40a33d:	88 94 24 00 01 00 00 	mov    %dl,0x100(%rsp)
  40a344:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40a34b:	00 
  40a34c:	48 89 84 24 f8 00 00 	mov    %rax,0xf8(%rsp)
  40a353:	00 
  40a354:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40a358:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  40a35f:	00 
  40a360:	e8 4b 8d ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40a365:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40a36c:	00 
  40a36d:	e8 ce 8e ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40a372:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40a379:	00 
  40a37a:	e8 41 8e ff ff       	callq  4031c0 <_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE@plt>
  40a37f:	bf af e0 40 00       	mov    $0x40e0af,%edi
  40a384:	e8 97 8f ff ff       	callq  403320 <getenv@plt>
  40a389:	49 89 c5             	mov    %rax,%r13
  40a38c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40a393:	00 
  40a394:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40a39b:	00 
  40a39c:	4d 85 ed             	test   %r13,%r13
  40a39f:	0f 84 61 20 00 00    	je     40c406 <_Z6windowid+0x2136>
  40a3a5:	4c 89 ef             	mov    %r13,%rdi
  40a3a8:	e8 93 8d ff ff       	callq  403140 <strlen@plt>
  40a3ad:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40a3b4:	00 
  40a3b5:	49 89 c6             	mov    %rax,%r14
  40a3b8:	48 83 f8 0f          	cmp    $0xf,%rax
  40a3bc:	0f 87 86 1c 00 00    	ja     40c048 <_Z6windowid+0x1d78>
  40a3c2:	48 83 f8 01          	cmp    $0x1,%rax
  40a3c6:	0f 85 59 1c 00 00    	jne    40c025 <_Z6windowid+0x1d55>
  40a3cc:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  40a3d3:	00 
  40a3d4:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40a3d9:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  40a3de:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  40a3e5:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40a3ec:	00 
  40a3ed:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40a3f4:	00 
  40a3f5:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40a3f9:	e8 42 8c ff ff       	callq  403040 <__errno_location@plt>
  40a3fe:	48 8b 9c 24 80 01 00 	mov    0x180(%rsp),%rbx
  40a405:	00 
  40a406:	44 8b 28             	mov    (%rax),%r13d
  40a409:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40a40f:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40a414:	ba 0a 00 00 00       	mov    $0xa,%edx
  40a419:	48 89 df             	mov    %rbx,%rdi
  40a41c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  40a421:	e8 2a 8f ff ff       	callq  403350 <strtol@plt>
  40a426:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  40a42b:	48 3b 9c 24 50 01 00 	cmp    0x150(%rsp),%rbx
  40a432:	00 
  40a433:	0f 84 d7 1f 00 00    	je     40c410 <_Z6windowid+0x2140>
  40a439:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40a43e:	8b 10                	mov    (%rax),%edx
  40a440:	83 fa 22             	cmp    $0x22,%edx
  40a443:	0f 84 d1 1f 00 00    	je     40c41a <_Z6windowid+0x214a>
  40a449:	b8 00 00 00 80       	mov    $0x80000000,%eax
  40a44e:	48 03 44 24 48       	add    0x48(%rsp),%rax
  40a453:	48 c1 e8 20          	shr    $0x20,%rax
  40a457:	0f 85 bd 1f 00 00    	jne    40c41a <_Z6windowid+0x214a>
  40a45d:	85 d2                	test   %edx,%edx
  40a45f:	75 08                	jne    40a469 <_Z6windowid+0x199>
  40a461:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40a466:	44 89 28             	mov    %r13d,(%rax)
  40a469:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40a470:	00 
  40a471:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40a478:	00 
  40a479:	48 39 c7             	cmp    %rax,%rdi
  40a47c:	74 11                	je     40a48f <_Z6windowid+0x1bf>
  40a47e:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40a485:	00 
  40a486:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40a48a:	e8 21 8e ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40a48f:	bf 28 e1 40 00       	mov    $0x40e128,%edi
  40a494:	e8 87 8e ff ff       	callq  403320 <getenv@plt>
  40a499:	49 89 c5             	mov    %rax,%r13
  40a49c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40a4a3:	00 
  40a4a4:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40a4ab:	00 
  40a4ac:	4d 85 ed             	test   %r13,%r13
  40a4af:	75 61                	jne    40a512 <_Z6windowid+0x242>
  40a4b1:	bf 10 e0 40 00       	mov    $0x40e010,%edi
  40a4b6:	e8 35 8d ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40a4bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40a4c0:	48 8d bc 24 f0 00 00 	lea    0xf0(%rsp),%rdi
  40a4c7:	00 
  40a4c8:	31 d2                	xor    %edx,%edx
  40a4ca:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40a4d1:	00 
  40a4d2:	e8 89 8f ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40a4d7:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
  40a4de:	00 
  40a4df:	48 89 c7             	mov    %rax,%rdi
  40a4e2:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40a4e9:	00 
  40a4ea:	48 89 84 24 00 01 00 	mov    %rax,0x100(%rsp)
  40a4f1:	00 
  40a4f2:	4c 89 f2             	mov    %r14,%rdx
  40a4f5:	4c 89 ee             	mov    %r13,%rsi
  40a4f8:	e8 53 8d ff ff       	callq  403250 <memcpy@plt>
  40a4fd:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40a504:	00 
  40a505:	48 8b 94 24 f0 00 00 	mov    0xf0(%rsp),%rdx
  40a50c:	00 
  40a50d:	e9 3a fe ff ff       	jmpq   40a34c <_Z6windowid+0x7c>
  40a512:	4c 89 ef             	mov    %r13,%rdi
  40a515:	e8 26 8c ff ff       	callq  403140 <strlen@plt>
  40a51a:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40a521:	00 
  40a522:	49 89 c6             	mov    %rax,%r14
  40a525:	48 83 f8 0f          	cmp    $0xf,%rax
  40a529:	0f 87 91 1a 00 00    	ja     40bfc0 <_Z6windowid+0x1cf0>
  40a52f:	48 83 f8 01          	cmp    $0x1,%rax
  40a533:	0f 85 d6 1a 00 00    	jne    40c00f <_Z6windowid+0x1d3f>
  40a539:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
  40a53e:	88 94 24 90 01 00 00 	mov    %dl,0x190(%rsp)
  40a545:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40a54c:	00 
  40a54d:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40a554:	00 
  40a555:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40a559:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40a55e:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40a563:	4c 8b ac 24 80 01 00 	mov    0x180(%rsp),%r13
  40a56a:	00 
  40a56b:	8b 18                	mov    (%rax),%ebx
  40a56d:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40a573:	ba 0a 00 00 00       	mov    $0xa,%edx
  40a578:	4c 89 ef             	mov    %r13,%rdi
  40a57b:	e8 d0 8d ff ff       	callq  403350 <strtol@plt>
  40a580:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40a585:	4c 3b ac 24 50 01 00 	cmp    0x150(%rsp),%r13
  40a58c:	00 
  40a58d:	0f 84 7d 1f 00 00    	je     40c510 <_Z6windowid+0x2240>
  40a593:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40a598:	8b 10                	mov    (%rax),%edx
  40a59a:	83 fa 22             	cmp    $0x22,%edx
  40a59d:	0f 84 30 1e 00 00    	je     40c3d3 <_Z6windowid+0x2103>
  40a5a3:	b8 00 00 00 80       	mov    $0x80000000,%eax
  40a5a8:	48 03 44 24 28       	add    0x28(%rsp),%rax
  40a5ad:	48 c1 e8 20          	shr    $0x20,%rax
  40a5b1:	0f 85 1c 1e 00 00    	jne    40c3d3 <_Z6windowid+0x2103>
  40a5b7:	85 d2                	test   %edx,%edx
  40a5b9:	75 07                	jne    40a5c2 <_Z6windowid+0x2f2>
  40a5bb:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40a5c0:	89 18                	mov    %ebx,(%rax)
  40a5c2:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40a5c9:	00 
  40a5ca:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40a5d1:	00 
  40a5d2:	48 39 c7             	cmp    %rax,%rdi
  40a5d5:	74 11                	je     40a5e8 <_Z6windowid+0x318>
  40a5d7:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40a5de:	00 
  40a5df:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40a5e3:	e8 c8 8c ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40a5e8:	44 89 e0             	mov    %r12d,%eax
  40a5eb:	c1 f8 1f             	sar    $0x1f,%eax
  40a5ee:	45 89 e5             	mov    %r12d,%r13d
  40a5f1:	41 31 c4             	xor    %eax,%r12d
  40a5f4:	41 29 c4             	sub    %eax,%r12d
  40a5f7:	41 c1 ed 1f          	shr    $0x1f,%r13d
  40a5fb:	41 83 fc 09          	cmp    $0x9,%r12d
  40a5ff:	0f 86 88 1d 00 00    	jbe    40c38d <_Z6windowid+0x20bd>
  40a605:	41 83 fc 63          	cmp    $0x63,%r12d
  40a609:	0f 86 88 1d 00 00    	jbe    40c397 <_Z6windowid+0x20c7>
  40a60f:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  40a616:	0f 86 85 1d 00 00    	jbe    40c3a1 <_Z6windowid+0x20d1>
  40a61c:	44 89 e2             	mov    %r12d,%edx
  40a61f:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  40a626:	0f 86 7f 1d 00 00    	jbe    40c3ab <_Z6windowid+0x20db>
  40a62c:	bb 01 00 00 00       	mov    $0x1,%ebx
  40a631:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  40a638:	c5 6d 34 
  40a63b:	eb 24                	jmp    40a661 <_Z6windowid+0x391>
  40a63d:	0f 1f 00             	nopl   (%rax)
  40a640:	83 fa 63             	cmp    $0x63,%edx
  40a643:	0f 86 44 1c 00 00    	jbe    40c28d <_Z6windowid+0x1fbd>
  40a649:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40a64f:	0f 86 30 1c 00 00    	jbe    40c285 <_Z6windowid+0x1fb5>
  40a655:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40a65b:	0f 86 34 1c 00 00    	jbe    40c295 <_Z6windowid+0x1fc5>
  40a661:	48 89 d0             	mov    %rdx,%rax
  40a664:	48 89 d1             	mov    %rdx,%rcx
  40a667:	48 f7 e6             	mul    %rsi
  40a66a:	89 d8                	mov    %ebx,%eax
  40a66c:	83 c3 04             	add    $0x4,%ebx
  40a66f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40a673:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40a67a:	77 c4                	ja     40a640 <_Z6windowid+0x370>
  40a67c:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40a683:	00 
  40a684:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  40a689:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40a68e:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40a695:	00 
  40a696:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40a69d:	00 
  40a69e:	e8 4d 8c ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40a6a3:	45 0f b6 ed          	movzbl %r13b,%r13d
  40a6a7:	4c 03 ac 24 80 01 00 	add    0x180(%rsp),%r13
  40a6ae:	00 
  40a6af:	ff cb                	dec    %ebx
  40a6b1:	41 83 fc 63          	cmp    $0x63,%r12d
  40a6b5:	76 52                	jbe    40a709 <_Z6windowid+0x439>
  40a6b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40a6be:	00 00 
  40a6c0:	44 89 e2             	mov    %r12d,%edx
  40a6c3:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40a6ca:	44 89 e0             	mov    %r12d,%eax
  40a6cd:	48 c1 ea 25          	shr    $0x25,%rdx
  40a6d1:	6b ca 64             	imul   $0x64,%edx,%ecx
  40a6d4:	29 c8                	sub    %ecx,%eax
  40a6d6:	01 c0                	add    %eax,%eax
  40a6d8:	8d 70 01             	lea    0x1(%rax),%esi
  40a6db:	0f b6 b6 a0 e4 40 00 	movzbl 0x40e4a0(%rsi),%esi
  40a6e2:	0f b6 80 a0 e4 40 00 	movzbl 0x40e4a0(%rax),%eax
  40a6e9:	44 89 e1             	mov    %r12d,%ecx
  40a6ec:	41 89 d4             	mov    %edx,%r12d
  40a6ef:	89 da                	mov    %ebx,%edx
  40a6f1:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  40a6f6:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40a6f9:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  40a6fe:	83 eb 02             	sub    $0x2,%ebx
  40a701:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  40a707:	77 b7                	ja     40a6c0 <_Z6windowid+0x3f0>
  40a709:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40a70e:	41 83 fc 09          	cmp    $0x9,%r12d
  40a712:	76 1c                	jbe    40a730 <_Z6windowid+0x460>
  40a714:	45 01 e4             	add    %r12d,%r12d
  40a717:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40a71c:	0f b6 80 a0 e4 40 00 	movzbl 0x40e4a0(%rax),%eax
  40a723:	41 88 45 01          	mov    %al,0x1(%r13)
  40a727:	41 0f b6 84 24 a0 e4 	movzbl 0x40e4a0(%r12),%eax
  40a72e:	40 00 
  40a730:	41 88 45 00          	mov    %al,0x0(%r13)
  40a734:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  40a73a:	b9 c8 e0 40 00       	mov    $0x40e0c8,%ecx
  40a73f:	31 d2                	xor    %edx,%edx
  40a741:	31 f6                	xor    %esi,%esi
  40a743:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40a74a:	00 
  40a74b:	e8 70 8c ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40a750:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
  40a757:	00 
  40a758:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  40a75d:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40a761:	48 8b 08             	mov    (%rax),%rcx
  40a764:	48 39 d1             	cmp    %rdx,%rcx
  40a767:	0f 84 a1 1a 00 00    	je     40c20e <_Z6windowid+0x1f3e>
  40a76d:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
  40a772:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40a776:	48 89 8c 24 80 00 00 	mov    %rcx,0x80(%rsp)
  40a77d:	00 
  40a77e:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40a782:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40a786:	48 89 4c 24 78       	mov    %rcx,0x78(%rsp)
  40a78b:	48 89 10             	mov    %rdx,(%rax)
  40a78e:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40a795:	00 
  40a796:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40a79d:	00 
  40a79e:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40a7a5:	00 
  40a7a6:	48 39 c7             	cmp    %rax,%rdi
  40a7a9:	74 11                	je     40a7bc <_Z6windowid+0x4ec>
  40a7ab:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40a7b2:	00 
  40a7b3:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40a7b7:	e8 f4 8a ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40a7bc:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
  40a7c1:	41 89 c5             	mov    %eax,%r13d
  40a7c4:	41 89 c4             	mov    %eax,%r12d
  40a7c7:	41 f7 dc             	neg    %r12d
  40a7ca:	41 c1 ed 1f          	shr    $0x1f,%r13d
  40a7ce:	48 85 c0             	test   %rax,%rax
  40a7d1:	44 0f 49 e0          	cmovns %eax,%r12d
  40a7d5:	41 83 fc 09          	cmp    $0x9,%r12d
  40a7d9:	0f 86 ea 1b 00 00    	jbe    40c3c9 <_Z6windowid+0x20f9>
  40a7df:	41 83 fc 63          	cmp    $0x63,%r12d
  40a7e3:	0f 86 9a 1b 00 00    	jbe    40c383 <_Z6windowid+0x20b3>
  40a7e9:	41 81 fc e7 03 00 00 	cmp    $0x3e7,%r12d
  40a7f0:	0f 86 bf 1b 00 00    	jbe    40c3b5 <_Z6windowid+0x20e5>
  40a7f6:	44 89 e2             	mov    %r12d,%edx
  40a7f9:	41 81 fc 0f 27 00 00 	cmp    $0x270f,%r12d
  40a800:	0f 86 b9 1b 00 00    	jbe    40c3bf <_Z6windowid+0x20ef>
  40a806:	bb 01 00 00 00       	mov    $0x1,%ebx
  40a80b:	48 be 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%rsi
  40a812:	c5 6d 34 
  40a815:	eb 2a                	jmp    40a841 <_Z6windowid+0x571>
  40a817:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40a81e:	00 00 
  40a820:	83 fa 63             	cmp    $0x63,%edx
  40a823:	0f 86 54 1a 00 00    	jbe    40c27d <_Z6windowid+0x1fad>
  40a829:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40a82f:	0f 86 40 1a 00 00    	jbe    40c275 <_Z6windowid+0x1fa5>
  40a835:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40a83b:	0f 86 5c 1a 00 00    	jbe    40c29d <_Z6windowid+0x1fcd>
  40a841:	48 89 d0             	mov    %rdx,%rax
  40a844:	48 89 d1             	mov    %rdx,%rcx
  40a847:	48 f7 e6             	mul    %rsi
  40a84a:	89 d8                	mov    %ebx,%eax
  40a84c:	83 c3 04             	add    $0x4,%ebx
  40a84f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40a853:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40a85a:	77 c4                	ja     40a820 <_Z6windowid+0x550>
  40a85c:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40a863:	00 
  40a864:	41 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%esi
  40a869:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40a86e:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40a875:	00 
  40a876:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  40a87d:	00 
  40a87e:	e8 6d 8a ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40a883:	45 0f b6 ed          	movzbl %r13b,%r13d
  40a887:	4c 03 ac 24 b0 00 00 	add    0xb0(%rsp),%r13
  40a88e:	00 
  40a88f:	ff cb                	dec    %ebx
  40a891:	41 83 fc 63          	cmp    $0x63,%r12d
  40a895:	76 52                	jbe    40a8e9 <_Z6windowid+0x619>
  40a897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40a89e:	00 00 
  40a8a0:	44 89 e2             	mov    %r12d,%edx
  40a8a3:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40a8aa:	44 89 e0             	mov    %r12d,%eax
  40a8ad:	48 c1 ea 25          	shr    $0x25,%rdx
  40a8b1:	6b ca 64             	imul   $0x64,%edx,%ecx
  40a8b4:	29 c8                	sub    %ecx,%eax
  40a8b6:	01 c0                	add    %eax,%eax
  40a8b8:	8d 70 01             	lea    0x1(%rax),%esi
  40a8bb:	0f b6 b6 a0 e4 40 00 	movzbl 0x40e4a0(%rsi),%esi
  40a8c2:	0f b6 80 a0 e4 40 00 	movzbl 0x40e4a0(%rax),%eax
  40a8c9:	44 89 e1             	mov    %r12d,%ecx
  40a8cc:	41 89 d4             	mov    %edx,%r12d
  40a8cf:	89 da                	mov    %ebx,%edx
  40a8d1:	41 88 74 15 00       	mov    %sil,0x0(%r13,%rdx,1)
  40a8d6:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40a8d9:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
  40a8de:	83 eb 02             	sub    $0x2,%ebx
  40a8e1:	81 f9 0f 27 00 00    	cmp    $0x270f,%ecx
  40a8e7:	77 b7                	ja     40a8a0 <_Z6windowid+0x5d0>
  40a8e9:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40a8ee:	41 83 fc 09          	cmp    $0x9,%r12d
  40a8f2:	76 1c                	jbe    40a910 <_Z6windowid+0x640>
  40a8f4:	45 01 e4             	add    %r12d,%r12d
  40a8f7:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40a8fc:	0f b6 80 a0 e4 40 00 	movzbl 0x40e4a0(%rax),%eax
  40a903:	41 88 45 01          	mov    %al,0x1(%r13)
  40a907:	41 0f b6 84 24 a0 e4 	movzbl 0x40e4a0(%r12),%eax
  40a90e:	40 00 
  40a910:	41 88 45 00          	mov    %al,0x0(%r13)
  40a914:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40a91b:	00 
  40a91c:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40a923:	00 
  40a924:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40a929:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40a92e:	4c 89 e8             	mov    %r13,%rax
  40a931:	4c 01 e0             	add    %r12,%rax
  40a934:	74 09                	je     40a93f <_Z6windowid+0x66f>
  40a936:	4d 85 ed             	test   %r13,%r13
  40a939:	0f 84 db 1b 00 00    	je     40c51a <_Z6windowid+0x224a>
  40a93f:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40a946:	00 
  40a947:	49 83 fc 0f          	cmp    $0xf,%r12
  40a94b:	0f 87 31 18 00 00    	ja     40c182 <_Z6windowid+0x1eb2>
  40a951:	49 83 fc 01          	cmp    $0x1,%r12
  40a955:	0f 85 11 18 00 00    	jne    40c16c <_Z6windowid+0x1e9c>
  40a95b:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40a960:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  40a967:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40a96e:	00 
  40a96f:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  40a976:	00 
  40a977:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40a97c:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40a983:	ff ff 3f 
  40a986:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  40a98d:	00 
  40a98e:	48 83 f8 05          	cmp    $0x5,%rax
  40a992:	0f 86 5a 1b 00 00    	jbe    40c4f2 <_Z6windowid+0x2222>
  40a998:	ba 06 00 00 00       	mov    $0x6,%edx
  40a99d:	be e1 e0 40 00       	mov    $0x40e0e1,%esi
  40a9a2:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40a9a9:	00 
  40a9aa:	e8 41 87 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40a9af:	4c 8b 8c 24 90 00 00 	mov    0x90(%rsp),%r9
  40a9b6:	00 
  40a9b7:	b8 0f 00 00 00       	mov    $0xf,%eax
  40a9bc:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  40a9c3:	00 
  40a9c4:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  40a9cb:	00 
  40a9cc:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  40a9d3:	00 
  40a9d4:	49 39 d9             	cmp    %rbx,%r9
  40a9d7:	48 89 c7             	mov    %rax,%rdi
  40a9da:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  40a9e1:	00 00 
  40a9e3:	49 8d 0c 10          	lea    (%r8,%rdx,1),%rcx
  40a9e7:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  40a9ee:	00 
  40a9ef:	48 39 f9             	cmp    %rdi,%rcx
  40a9f2:	76 1d                	jbe    40aa11 <_Z6windowid+0x741>
  40a9f4:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  40a9fb:	00 
  40a9fc:	48 39 de             	cmp    %rbx,%rsi
  40a9ff:	48 0f 45 84 24 c0 00 	cmovne 0xc0(%rsp),%rax
  40aa06:	00 00 
  40aa08:	48 39 c1             	cmp    %rax,%rcx
  40aa0b:	0f 86 4b 18 00 00    	jbe    40c25c <_Z6windowid+0x1f8c>
  40aa11:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40aa18:	00 
  40aa19:	e8 d2 86 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40aa1e:	4c 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%r15
  40aa25:	00 
  40aa26:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40aa2d:	00 
  40aa2e:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40aa32:	48 8b 08             	mov    (%rax),%rcx
  40aa35:	48 39 d1             	cmp    %rdx,%rcx
  40aa38:	0f 84 bd 17 00 00    	je     40c1fb <_Z6windowid+0x1f2b>
  40aa3e:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  40aa45:	00 
  40aa46:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40aa4a:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  40aa51:	00 
  40aa52:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40aa56:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  40aa5d:	00 
  40aa5e:	48 89 10             	mov    %rdx,(%rax)
  40aa61:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40aa65:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40aa6c:	00 
  40aa6d:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40aa74:	00 
  40aa75:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40aa7c:	00 
  40aa7d:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40aa84:	00 
  40aa85:	4c 39 f8             	cmp    %r15,%rax
  40aa88:	0f 84 56 17 00 00    	je     40c1e4 <_Z6windowid+0x1f14>
  40aa8e:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40aa95:	00 
  40aa96:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40aa9d:	00 
  40aa9e:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40aaa5:	00 
  40aaa6:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40aaad:	00 
  40aaae:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40aab5:	00 
  40aab6:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
  40aabd:	00 
  40aabe:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40aac5:	00 
  40aac6:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40aacd:	00 00 00 00 00 
  40aad2:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40aad9:	00 
  40aada:	e8 d1 85 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40aadf:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40aae6:	00 
  40aae7:	e8 54 87 ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40aaec:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40aaf3:	00 
  40aaf4:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40aafb:	00 
  40aafc:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40ab03:	00 
  40ab04:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40ab0b:	00 
  40ab0c:	4c 89 e8             	mov    %r13,%rax
  40ab0f:	4c 01 e0             	add    %r12,%rax
  40ab12:	74 09                	je     40ab1d <_Z6windowid+0x84d>
  40ab14:	4d 85 ed             	test   %r13,%r13
  40ab17:	0f 84 e9 19 00 00    	je     40c506 <_Z6windowid+0x2236>
  40ab1d:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40ab24:	00 
  40ab25:	49 83 fc 0f          	cmp    $0xf,%r12
  40ab29:	0f 87 ee 15 00 00    	ja     40c11d <_Z6windowid+0x1e4d>
  40ab2f:	49 83 fc 01          	cmp    $0x1,%r12
  40ab33:	0f 85 ce 15 00 00    	jne    40c107 <_Z6windowid+0x1e37>
  40ab39:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40ab3e:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40ab45:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40ab4c:	00 
  40ab4d:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40ab54:	00 
  40ab55:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40ab5a:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40ab61:	00 
  40ab62:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40ab69:	00 
  40ab6a:	e8 31 89 ff ff       	callq  4034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40ab6f:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40ab74:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  40ab7b:	00 
  40ab7c:	e8 ff 84 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40ab81:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40ab88:	00 
  40ab89:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40ab90:	00 
  40ab91:	e8 3a 85 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40ab96:	31 c9                	xor    %ecx,%ecx
  40ab98:	66 89 8c 24 58 03 00 	mov    %cx,0x358(%rsp)
  40ab9f:	00 
  40aba0:	48 8b 05 81 60 00 00 	mov    0x6081(%rip),%rax        # 410c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40aba7:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40abab:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  40abb2:	00 00 
  40abb4:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40abbb:	00 
  40abbc:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40abc3:	00 
  40abc4:	48 03 78 e8          	add    -0x18(%rax),%rdi
  40abc8:	48 8b 05 61 60 00 00 	mov    0x6061(%rip),%rax        # 410c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40abcf:	31 f6                	xor    %esi,%esi
  40abd1:	48 c7 84 24 78 02 00 	movq   $0x410b90,0x278(%rsp)
  40abd8:	00 90 0b 41 00 
  40abdd:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  40abe4:	00 00 00 00 00 
  40abe9:	48 89 07             	mov    %rax,(%rdi)
  40abec:	c5 f8 77             	vzeroupper 
  40abef:	e8 4c 87 ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40abf4:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40abfb:	00 
  40abfc:	48 c7 84 24 80 01 00 	movq   $0x410d28,0x180(%rsp)
  40ac03:	00 28 0d 41 00 
  40ac08:	48 c7 84 24 78 02 00 	movq   $0x410d50,0x278(%rsp)
  40ac0f:	00 50 0d 41 00 
  40ac14:	e8 b7 86 ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40ac19:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  40ac20:	00 
  40ac21:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40ac28:	00 
  40ac29:	e8 12 87 ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40ac2e:	ba 10 00 00 00       	mov    $0x10,%edx
  40ac33:	4c 89 e6             	mov    %r12,%rsi
  40ac36:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40ac3d:	00 
  40ac3e:	e8 2d 86 ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40ac43:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40ac4a:	00 
  40ac4b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40ac52:	00 
  40ac53:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40ac57:	48 85 c0             	test   %rax,%rax
  40ac5a:	0f 84 74 15 00 00    	je     40c1d4 <_Z6windowid+0x1f04>
  40ac60:	31 f6                	xor    %esi,%esi
  40ac62:	e8 b9 87 ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40ac67:	ba 28 0d 41 00       	mov    $0x410d28,%edx
  40ac6c:	b8 a0 0c 41 00       	mov    $0x410ca0,%eax
  40ac71:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
  40ac76:	c4 e3 e9 22 c8 01    	vpinsrq $0x1,%rax,%xmm2,%xmm1
  40ac7c:	be 31 00 00 00       	mov    $0x31,%esi
  40ac81:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40ac88:	00 
  40ac89:	c5 f9 7f 4c 24 10    	vmovdqa %xmm1,0x10(%rsp)
  40ac8f:	e8 9c 83 ff ff       	callq  403030 <_ZNSo3putEc@plt>
  40ac94:	c5 f9 6f 74 24 10    	vmovdqa 0x10(%rsp),%xmm6
  40ac9a:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40aca1:	00 
  40aca2:	48 c7 84 24 78 02 00 	movq   $0x410d50,0x278(%rsp)
  40aca9:	00 50 0d 41 00 
  40acae:	c5 f9 7f b4 24 80 01 	vmovdqa %xmm6,0x180(%rsp)
  40acb5:	00 00 
  40acb7:	e8 b4 83 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40acbc:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  40acc3:	00 
  40acc4:	e8 b7 87 ff ff       	callq  403480 <_ZNSt12__basic_fileIcED1Ev@plt>
  40acc9:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  40acd0:	00 
  40acd1:	48 c7 84 24 88 01 00 	movq   $0x410bb0,0x188(%rsp)
  40acd8:	00 b0 0b 41 00 
  40acdd:	e8 7e 86 ff ff       	callq  403360 <_ZNSt6localeD1Ev@plt>
  40ace2:	48 8b 05 3f 5f 00 00 	mov    0x5f3f(%rip),%rax        # 410c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40ace9:	48 8b 0d 40 5f 00 00 	mov    0x5f40(%rip),%rcx        # 410c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40acf0:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40acf7:	00 
  40acf8:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40acfc:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40ad03:	00 
  40ad04:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  40ad0b:	00 
  40ad0c:	48 c7 84 24 78 02 00 	movq   $0x410b90,0x278(%rsp)
  40ad13:	00 90 0b 41 00 
  40ad18:	e8 e3 83 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40ad1d:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40ad24:	00 
  40ad25:	48 85 f6             	test   %rsi,%rsi
  40ad28:	74 0d                	je     40ad37 <_Z6windowid+0xa67>
  40ad2a:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40ad31:	00 
  40ad32:	e8 69 83 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40ad37:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40ad3e:	00 
  40ad3f:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40ad46:	00 
  40ad47:	48 39 c7             	cmp    %rax,%rdi
  40ad4a:	74 11                	je     40ad5d <_Z6windowid+0xa8d>
  40ad4c:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40ad53:	00 
  40ad54:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40ad58:	e8 53 85 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40ad5d:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  40ad64:	00 
  40ad65:	48 85 f6             	test   %rsi,%rsi
  40ad68:	74 0d                	je     40ad77 <_Z6windowid+0xaa7>
  40ad6a:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40ad71:	00 
  40ad72:	e8 29 83 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40ad77:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  40ad7e:	00 
  40ad7f:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40ad86:	00 
  40ad87:	48 39 c7             	cmp    %rax,%rdi
  40ad8a:	74 11                	je     40ad9d <_Z6windowid+0xacd>
  40ad8c:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  40ad93:	00 
  40ad94:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40ad98:	e8 13 85 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40ad9d:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40ada4:	00 
  40ada5:	4c 39 ff             	cmp    %r15,%rdi
  40ada8:	74 11                	je     40adbb <_Z6windowid+0xaeb>
  40adaa:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40adb1:	00 
  40adb2:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40adb6:	e8 f5 84 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40adbb:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  40adc2:	00 
  40adc3:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40adca:	00 
  40adcb:	48 39 c7             	cmp    %rax,%rdi
  40adce:	74 11                	je     40ade1 <_Z6windowid+0xb11>
  40add0:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40add7:	00 
  40add8:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40addc:	e8 cf 84 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40ade1:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40ade8:	00 
  40ade9:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40adf0:	00 
  40adf1:	48 39 c7             	cmp    %rax,%rdi
  40adf4:	74 11                	je     40ae07 <_Z6windowid+0xb37>
  40adf6:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  40adfd:	00 
  40adfe:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40ae02:	e8 a9 84 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40ae07:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40ae0c:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40ae13:	00 
  40ae14:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40ae19:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40ae20:	00 
  40ae21:	4c 89 e8             	mov    %r13,%rax
  40ae24:	4c 01 e0             	add    %r12,%rax
  40ae27:	74 09                	je     40ae32 <_Z6windowid+0xb62>
  40ae29:	4d 85 ed             	test   %r13,%r13
  40ae2c:	0f 84 f2 15 00 00    	je     40c424 <_Z6windowid+0x2154>
  40ae32:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40ae39:	00 
  40ae3a:	49 83 fc 0f          	cmp    $0xf,%r12
  40ae3e:	0f 87 74 12 00 00    	ja     40c0b8 <_Z6windowid+0x1de8>
  40ae44:	49 83 fc 01          	cmp    $0x1,%r12
  40ae48:	0f 85 5c 11 00 00    	jne    40bfaa <_Z6windowid+0x1cda>
  40ae4e:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40ae53:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40ae5a:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40ae61:	00 
  40ae62:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40ae69:	00 
  40ae6a:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40ae6f:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40ae76:	ff ff 3f 
  40ae79:	48 2b 84 24 58 01 00 	sub    0x158(%rsp),%rax
  40ae80:	00 
  40ae81:	48 83 f8 05          	cmp    $0x5,%rax
  40ae85:	0f 86 a3 15 00 00    	jbe    40c42e <_Z6windowid+0x215e>
  40ae8b:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40ae90:	ba 06 00 00 00       	mov    $0x6,%edx
  40ae95:	be e8 e0 40 00       	mov    $0x40e0e8,%esi
  40ae9a:	e8 51 82 ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40ae9f:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40aea6:	00 
  40aea7:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40aeae:	00 
  40aeaf:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40aeb6:	00 
  40aeb7:	48 8d 8c 24 60 01 00 	lea    0x160(%rsp),%rcx
  40aebe:	00 
  40aebf:	48 39 c8             	cmp    %rcx,%rax
  40aec2:	0f 84 59 13 00 00    	je     40c221 <_Z6windowid+0x1f51>
  40aec8:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40aecf:	00 
  40aed0:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40aed7:	00 
  40aed8:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40aedf:	00 
  40aee0:	48 8b 84 24 58 01 00 	mov    0x158(%rsp),%rax
  40aee7:	00 
  40aee8:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40aeef:	00 
  40aef0:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40aef7:	00 
  40aef8:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40aeff:	00 
  40af00:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40af07:	00 
  40af08:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
  40af0f:	00 00 00 00 00 
  40af14:	c6 84 24 60 01 00 00 	movb   $0x0,0x160(%rsp)
  40af1b:	00 
  40af1c:	e8 8f 81 ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40af21:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40af28:	00 
  40af29:	e8 12 83 ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40af2e:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40af35:	00 
  40af36:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40af3d:	00 
  40af3e:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40af45:	00 
  40af46:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40af4d:	00 
  40af4e:	4c 89 e8             	mov    %r13,%rax
  40af51:	4c 01 e0             	add    %r12,%rax
  40af54:	74 09                	je     40af5f <_Z6windowid+0xc8f>
  40af56:	4d 85 ed             	test   %r13,%r13
  40af59:	0f 84 d9 14 00 00    	je     40c438 <_Z6windowid+0x2168>
  40af5f:	4c 89 a4 24 d0 00 00 	mov    %r12,0xd0(%rsp)
  40af66:	00 
  40af67:	49 83 fc 0f          	cmp    $0xf,%r12
  40af6b:	0f 87 e7 0f 00 00    	ja     40bf58 <_Z6windowid+0x1c88>
  40af71:	49 83 fc 01          	cmp    $0x1,%r12
  40af75:	0f 85 c7 0f 00 00    	jne    40bf42 <_Z6windowid+0x1c72>
  40af7b:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40af80:	88 84 24 30 01 00 00 	mov    %al,0x130(%rsp)
  40af87:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40af8e:	00 
  40af8f:	4c 89 a4 24 28 01 00 	mov    %r12,0x128(%rsp)
  40af96:	00 
  40af97:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40af9c:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40afa3:	00 
  40afa4:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40afab:	00 
  40afac:	e8 ef 84 ff ff       	callq  4034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40afb1:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40afb8:	00 
  40afb9:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40afc0:	00 
  40afc1:	e8 ba 80 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40afc6:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40afcd:	00 
  40afce:	48 85 f6             	test   %rsi,%rsi
  40afd1:	74 0d                	je     40afe0 <_Z6windowid+0xd10>
  40afd3:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40afda:	00 
  40afdb:	e8 c0 80 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40afe0:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40afe7:	00 
  40afe8:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40afef:	00 
  40aff0:	48 39 c7             	cmp    %rax,%rdi
  40aff3:	74 11                	je     40b006 <_Z6windowid+0xd36>
  40aff5:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40affc:	00 
  40affd:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b001:	e8 aa 82 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b006:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40b00d:	00 
  40b00e:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b015:	00 
  40b016:	48 39 c7             	cmp    %rax,%rdi
  40b019:	74 11                	je     40b02c <_Z6windowid+0xd5c>
  40b01b:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40b022:	00 
  40b023:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b027:	e8 84 82 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b02c:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40b030:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40b037:	00 
  40b038:	bf 01 00 00 00       	mov    $0x1,%edi
  40b03d:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40b044:	00 00 
  40b046:	e8 35 82 ff ff       	callq  403280 <clock_gettime@plt>
  40b04b:	48 69 94 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rdx
  40b052:	00 00 ca 9a 3b 
  40b057:	48 b8 00 b0 8e f0 1b 	movabs $0x1bf08eb000,%rax
  40b05e:	00 00 00 
  40b061:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40b068:	00 
  40b069:	48 01 d0             	add    %rdx,%rax
  40b06c:	48 83 7c 24 48 00    	cmpq   $0x0,0x48(%rsp)
  40b072:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40b077:	0f 85 dd 08 00 00    	jne    40b95a <_Z6windowid+0x168a>
  40b07d:	8b 44 24 28          	mov    0x28(%rsp),%eax
  40b081:	49 bd 4b 59 86 38 d6 	movabs $0x346dc5d63886594b,%r13
  40b088:	c5 6d 34 
  40b08b:	ff c8                	dec    %eax
  40b08d:	89 44 24 40          	mov    %eax,0x40(%rsp)
  40b091:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40b098:	48 83 7c 24 28 00    	cmpq   $0x0,0x28(%rsp)
  40b09e:	0f 8e b0 04 00 00    	jle    40b554 <_Z6windowid+0x1284>
  40b0a4:	8b 44 24 40          	mov    0x40(%rsp),%eax
  40b0a8:	c6 44 24 47 01       	movb   $0x1,0x47(%rsp)
  40b0ad:	48 ff c0             	inc    %rax
  40b0b0:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40b0b5:	41 be 01 00 00 00    	mov    $0x1,%r14d
  40b0bb:	bb 01 00 00 00       	mov    $0x1,%ebx
  40b0c0:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40b0c7:	00 
  40b0c8:	89 de                	mov    %ebx,%esi
  40b0ca:	ba 2d 00 00 00       	mov    $0x2d,%edx
  40b0cf:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40b0d6:	00 
  40b0d7:	44 89 74 24 48       	mov    %r14d,0x48(%rsp)
  40b0dc:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
  40b0e3:	00 
  40b0e4:	45 8d 66 ff          	lea    -0x1(%r14),%r12d
  40b0e8:	e8 03 82 ff ff       	callq  4032f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc@plt>
  40b0ed:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
  40b0f4:	00 
  40b0f5:	ff cb                	dec    %ebx
  40b0f7:	41 83 fc 63          	cmp    $0x63,%r12d
  40b0fb:	76 49                	jbe    40b146 <_Z6windowid+0xe76>
  40b0fd:	0f 1f 00             	nopl   (%rax)
  40b100:	44 89 e2             	mov    %r12d,%edx
  40b103:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
  40b10a:	44 89 e0             	mov    %r12d,%eax
  40b10d:	48 c1 ea 25          	shr    $0x25,%rdx
  40b111:	6b f2 64             	imul   $0x64,%edx,%esi
  40b114:	29 f0                	sub    %esi,%eax
  40b116:	01 c0                	add    %eax,%eax
  40b118:	8d 78 01             	lea    0x1(%rax),%edi
  40b11b:	0f b6 bf a0 e4 40 00 	movzbl 0x40e4a0(%rdi),%edi
  40b122:	0f b6 80 a0 e4 40 00 	movzbl 0x40e4a0(%rax),%eax
  40b129:	44 89 e6             	mov    %r12d,%esi
  40b12c:	41 89 d4             	mov    %edx,%r12d
  40b12f:	89 da                	mov    %ebx,%edx
  40b131:	40 88 3c 11          	mov    %dil,(%rcx,%rdx,1)
  40b135:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40b138:	88 04 11             	mov    %al,(%rcx,%rdx,1)
  40b13b:	83 eb 02             	sub    $0x2,%ebx
  40b13e:	81 fe 0f 27 00 00    	cmp    $0x270f,%esi
  40b144:	77 ba                	ja     40b100 <_Z6windowid+0xe30>
  40b146:	41 8d 44 24 30       	lea    0x30(%r12),%eax
  40b14b:	41 83 fc 09          	cmp    $0x9,%r12d
  40b14f:	76 1b                	jbe    40b16c <_Z6windowid+0xe9c>
  40b151:	45 01 e4             	add    %r12d,%r12d
  40b154:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  40b159:	0f b6 80 a0 e4 40 00 	movzbl 0x40e4a0(%rax),%eax
  40b160:	88 41 01             	mov    %al,0x1(%rcx)
  40b163:	41 0f b6 84 24 a0 e4 	movzbl 0x40e4a0(%r12),%eax
  40b16a:	40 00 
  40b16c:	88 01                	mov    %al,(%rcx)
  40b16e:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40b175:	00 
  40b176:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40b17d:	00 
  40b17e:	48 8b 5c 24 70       	mov    0x70(%rsp),%rbx
  40b183:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40b188:	48 89 d8             	mov    %rbx,%rax
  40b18b:	4c 01 e0             	add    %r12,%rax
  40b18e:	74 09                	je     40b199 <_Z6windowid+0xec9>
  40b190:	48 85 db             	test   %rbx,%rbx
  40b193:	0f 84 af 12 00 00    	je     40c448 <_Z6windowid+0x2178>
  40b199:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40b1a0:	00 
  40b1a1:	49 83 fc 0f          	cmp    $0xf,%r12
  40b1a5:	0f 87 95 08 00 00    	ja     40ba40 <_Z6windowid+0x1770>
  40b1ab:	49 83 fc 01          	cmp    $0x1,%r12
  40b1af:	0f 85 4b 08 00 00    	jne    40ba00 <_Z6windowid+0x1730>
  40b1b5:	0f b6 03             	movzbl (%rbx),%eax
  40b1b8:	88 84 24 a0 00 00 00 	mov    %al,0xa0(%rsp)
  40b1bf:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40b1c6:	00 
  40b1c7:	4c 89 a4 24 98 00 00 	mov    %r12,0x98(%rsp)
  40b1ce:	00 
  40b1cf:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40b1d4:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40b1db:	ff ff 3f 
  40b1de:	48 2b 84 24 98 00 00 	sub    0x98(%rsp),%rax
  40b1e5:	00 
  40b1e6:	48 83 f8 05          	cmp    $0x5,%rax
  40b1ea:	0f 86 62 12 00 00    	jbe    40c452 <_Z6windowid+0x2182>
  40b1f0:	ba 06 00 00 00       	mov    $0x6,%edx
  40b1f5:	be e1 e0 40 00       	mov    $0x40e0e1,%esi
  40b1fa:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40b201:	00 
  40b202:	e8 e9 7e ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40b207:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
  40b20e:	00 
  40b20f:	48 8d 9c 24 a0 00 00 	lea    0xa0(%rsp),%rbx
  40b216:	00 
  40b217:	4c 8b 84 24 98 00 00 	mov    0x98(%rsp),%r8
  40b21e:	00 
  40b21f:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
  40b226:	00 
  40b227:	48 39 d9             	cmp    %rbx,%rcx
  40b22a:	bf 0f 00 00 00       	mov    $0xf,%edi
  40b22f:	48 0f 45 bc 24 a0 00 	cmovne 0xa0(%rsp),%rdi
  40b236:	00 00 
  40b238:	49 8d 04 10          	lea    (%r8,%rdx,1),%rax
  40b23c:	48 8b b4 24 b0 00 00 	mov    0xb0(%rsp),%rsi
  40b243:	00 
  40b244:	48 39 f8             	cmp    %rdi,%rax
  40b247:	76 22                	jbe    40b26b <_Z6windowid+0xf9b>
  40b249:	48 8d 9c 24 c0 00 00 	lea    0xc0(%rsp),%rbx
  40b250:	00 
  40b251:	48 39 de             	cmp    %rbx,%rsi
  40b254:	bf 0f 00 00 00       	mov    $0xf,%edi
  40b259:	48 0f 45 bc 24 c0 00 	cmovne 0xc0(%rsp),%rdi
  40b260:	00 00 
  40b262:	48 39 f8             	cmp    %rdi,%rax
  40b265:	0f 86 cd 08 00 00    	jbe    40bb38 <_Z6windowid+0x1868>
  40b26b:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40b272:	00 
  40b273:	e8 78 7e ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40b278:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40b27f:	00 
  40b280:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40b284:	48 8b 08             	mov    (%rax),%rcx
  40b287:	48 39 d1             	cmp    %rdx,%rcx
  40b28a:	0f 84 70 08 00 00    	je     40bb00 <_Z6windowid+0x1830>
  40b290:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
  40b297:	00 
  40b298:	48 8b 48 10          	mov    0x10(%rax),%rcx
  40b29c:	48 89 8c 24 e0 00 00 	mov    %rcx,0xe0(%rsp)
  40b2a3:	00 
  40b2a4:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40b2a8:	48 89 8c 24 d8 00 00 	mov    %rcx,0xd8(%rsp)
  40b2af:	00 
  40b2b0:	48 89 10             	mov    %rdx,(%rax)
  40b2b3:	c6 40 10 00          	movb   $0x0,0x10(%rax)
  40b2b7:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40b2be:	00 
  40b2bf:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b2c6:	00 
  40b2c7:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b2ce:	00 
  40b2cf:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40b2d6:	00 
  40b2d7:	4c 39 f8             	cmp    %r15,%rax
  40b2da:	0f 84 08 08 00 00    	je     40bae8 <_Z6windowid+0x1818>
  40b2e0:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b2e7:	00 
  40b2e8:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40b2ef:	00 
  40b2f0:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40b2f7:	00 
  40b2f8:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40b2ff:	00 
  40b300:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40b307:	00 
  40b308:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  40b30f:	00 
  40b310:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40b317:	00 
  40b318:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40b31f:	00 00 00 00 00 
  40b324:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40b32b:	00 
  40b32c:	e8 7f 7d ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40b331:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40b336:	e8 05 7f ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40b33b:	48 8b 9c 24 f0 00 00 	mov    0xf0(%rsp),%rbx
  40b342:	00 
  40b343:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b34a:	00 
  40b34b:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40b352:	00 
  40b353:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b35a:	00 
  40b35b:	48 89 d8             	mov    %rbx,%rax
  40b35e:	4c 01 e0             	add    %r12,%rax
  40b361:	74 09                	je     40b36c <_Z6windowid+0x109c>
  40b363:	48 85 db             	test   %rbx,%rbx
  40b366:	0f 84 f0 10 00 00    	je     40c45c <_Z6windowid+0x218c>
  40b36c:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
  40b371:	49 83 fc 0f          	cmp    $0xf,%r12
  40b375:	0f 87 1d 07 00 00    	ja     40ba98 <_Z6windowid+0x17c8>
  40b37b:	49 83 fc 01          	cmp    $0x1,%r12
  40b37f:	0f 85 9b 06 00 00    	jne    40ba20 <_Z6windowid+0x1750>
  40b385:	0f b6 03             	movzbl (%rbx),%eax
  40b388:	88 84 24 90 01 00 00 	mov    %al,0x190(%rsp)
  40b38f:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b396:	00 
  40b397:	4c 89 a4 24 88 01 00 	mov    %r12,0x188(%rsp)
  40b39e:	00 
  40b39f:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40b3a4:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40b3ab:	00 
  40b3ac:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40b3b3:	00 
  40b3b4:	e8 e7 80 ff ff       	callq  4034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40b3b9:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40b3be:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b3c5:	00 
  40b3c6:	e8 b5 7c ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40b3cb:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b3d2:	00 
  40b3d3:	e8 38 7d ff ff       	callq  403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  40b3d8:	ff c0                	inc    %eax
  40b3da:	3c 01                	cmp    $0x1,%al
  40b3dc:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40b3e3:	00 
  40b3e4:	0f 97 c0             	seta   %al
  40b3e7:	20 44 24 47          	and    %al,0x47(%rsp)
  40b3eb:	48 85 f6             	test   %rsi,%rsi
  40b3ee:	74 0d                	je     40b3fd <_Z6windowid+0x112d>
  40b3f0:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40b3f7:	00 
  40b3f8:	e8 a3 7c ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40b3fd:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40b404:	00 
  40b405:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b40c:	00 
  40b40d:	48 39 c7             	cmp    %rax,%rdi
  40b410:	74 11                	je     40b423 <_Z6windowid+0x1153>
  40b412:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40b419:	00 
  40b41a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b41e:	e8 8d 7e ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b423:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40b42a:	00 
  40b42b:	48 85 f6             	test   %rsi,%rsi
  40b42e:	74 0d                	je     40b43d <_Z6windowid+0x116d>
  40b430:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40b437:	00 
  40b438:	e8 63 7c ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40b43d:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40b444:	00 
  40b445:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b44c:	00 
  40b44d:	48 39 c7             	cmp    %rax,%rdi
  40b450:	74 11                	je     40b463 <_Z6windowid+0x1193>
  40b452:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40b459:	00 
  40b45a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b45e:	e8 4d 7e ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b463:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40b46a:	00 
  40b46b:	4c 39 ff             	cmp    %r15,%rdi
  40b46e:	74 11                	je     40b481 <_Z6windowid+0x11b1>
  40b470:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40b477:	00 
  40b478:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b47c:	e8 2f 7e ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b481:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  40b488:	00 
  40b489:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40b490:	00 
  40b491:	48 39 c7             	cmp    %rax,%rdi
  40b494:	74 11                	je     40b4a7 <_Z6windowid+0x11d7>
  40b496:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  40b49d:	00 
  40b49e:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b4a2:	e8 09 7e ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b4a7:	48 8b bc 24 b0 00 00 	mov    0xb0(%rsp),%rdi
  40b4ae:	00 
  40b4af:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
  40b4b6:	00 
  40b4b7:	48 39 c7             	cmp    %rax,%rdi
  40b4ba:	74 11                	je     40b4cd <_Z6windowid+0x11fd>
  40b4bc:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  40b4c3:	00 
  40b4c4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b4c8:	e8 e3 7d ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b4cd:	4c 39 74 24 38       	cmp    %r14,0x38(%rsp)
  40b4d2:	0f 84 b0 06 00 00    	je     40bb88 <_Z6windowid+0x18b8>
  40b4d8:	49 83 fe 09          	cmp    $0x9,%r14
  40b4dc:	0f 86 84 0f 00 00    	jbe    40c466 <_Z6windowid+0x2196>
  40b4e2:	8b 44 24 48          	mov    0x48(%rsp),%eax
  40b4e6:	83 f8 63             	cmp    $0x63,%eax
  40b4e9:	0f 86 f7 09 00 00    	jbe    40bee6 <_Z6windowid+0x1c16>
  40b4ef:	3d e7 03 00 00       	cmp    $0x3e7,%eax
  40b4f4:	0f 86 06 0a 00 00    	jbe    40bf00 <_Z6windowid+0x1c30>
  40b4fa:	3d 0f 27 00 00       	cmp    $0x270f,%eax
  40b4ff:	0f 86 ee 09 00 00    	jbe    40bef3 <_Z6windowid+0x1c23>
  40b505:	4c 89 f2             	mov    %r14,%rdx
  40b508:	bb 01 00 00 00       	mov    $0x1,%ebx
  40b50d:	eb 22                	jmp    40b531 <_Z6windowid+0x1261>
  40b50f:	90                   	nop
  40b510:	83 fa 63             	cmp    $0x63,%edx
  40b513:	0f 86 ff 05 00 00    	jbe    40bb18 <_Z6windowid+0x1848>
  40b519:	81 fa e7 03 00 00    	cmp    $0x3e7,%edx
  40b51f:	0f 86 03 06 00 00    	jbe    40bb28 <_Z6windowid+0x1858>
  40b525:	81 fa 0f 27 00 00    	cmp    $0x270f,%edx
  40b52b:	0f 86 47 06 00 00    	jbe    40bb78 <_Z6windowid+0x18a8>
  40b531:	48 89 d0             	mov    %rdx,%rax
  40b534:	48 89 d1             	mov    %rdx,%rcx
  40b537:	49 f7 e5             	mul    %r13
  40b53a:	89 d8                	mov    %ebx,%eax
  40b53c:	83 c3 04             	add    $0x4,%ebx
  40b53f:	48 c1 ea 0b          	shr    $0xb,%rdx
  40b543:	48 81 f9 9f 86 01 00 	cmp    $0x1869f,%rcx
  40b54a:	77 c4                	ja     40b510 <_Z6windowid+0x1240>
  40b54c:	49 ff c6             	inc    %r14
  40b54f:	e9 6c fb ff ff       	jmpq   40b0c0 <_Z6windowid+0xdf0>
  40b554:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
  40b559:	4c 8b 64 24 78       	mov    0x78(%rsp),%r12
  40b55e:	4c 89 e8             	mov    %r13,%rax
  40b561:	4c 01 e0             	add    %r12,%rax
  40b564:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40b56b:	00 
  40b56c:	74 09                	je     40b577 <_Z6windowid+0x12a7>
  40b56e:	4d 85 ed             	test   %r13,%r13
  40b571:	0f 84 85 0f 00 00    	je     40c4fc <_Z6windowid+0x222c>
  40b577:	4c 89 a4 24 80 01 00 	mov    %r12,0x180(%rsp)
  40b57e:	00 
  40b57f:	49 83 fc 0f          	cmp    $0xf,%r12
  40b583:	0f 87 81 0d 00 00    	ja     40c30a <_Z6windowid+0x203a>
  40b589:	49 83 fc 01          	cmp    $0x1,%r12
  40b58d:	0f 84 b5 0c 00 00    	je     40c248 <_Z6windowid+0x1f78>
  40b593:	4d 85 e4             	test   %r12,%r12
  40b596:	0f 85 55 0e 00 00    	jne    40c3f1 <_Z6windowid+0x2121>
  40b59c:	4c 89 f8             	mov    %r15,%rax
  40b59f:	4c 89 a4 24 d8 00 00 	mov    %r12,0xd8(%rsp)
  40b5a6:	00 
  40b5a7:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40b5ac:	48 b8 ff ff ff ff ff 	movabs $0x3fffffffffffffff,%rax
  40b5b3:	ff ff 3f 
  40b5b6:	48 2b 84 24 d8 00 00 	sub    0xd8(%rsp),%rax
  40b5bd:	00 
  40b5be:	48 83 f8 03          	cmp    $0x3,%rax
  40b5c2:	0f 86 1f 0e 00 00    	jbe    40c3e7 <_Z6windowid+0x2117>
  40b5c8:	ba 04 00 00 00       	mov    $0x4,%edx
  40b5cd:	be 0d e1 40 00       	mov    $0x40e10d,%esi
  40b5d2:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  40b5d9:	00 
  40b5da:	e8 11 7b ff ff       	callq  4030f0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@plt>
  40b5df:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b5e6:	00 
  40b5e7:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b5ee:	00 
  40b5ef:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40b5f6:	00 
  40b5f7:	4c 39 f8             	cmp    %r15,%rax
  40b5fa:	0f 84 6c 0d 00 00    	je     40c36c <_Z6windowid+0x209c>
  40b600:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b607:	00 
  40b608:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40b60f:	00 
  40b610:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40b617:	00 
  40b618:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40b61f:	00 
  40b620:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40b627:	00 
  40b628:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
  40b62f:	00 
  40b630:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40b637:	00 
  40b638:	48 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%rsp)
  40b63f:	00 00 00 00 00 
  40b644:	c6 84 24 e0 00 00 00 	movb   $0x0,0xe0(%rsp)
  40b64b:	00 
  40b64c:	e8 5f 7a ff ff       	callq  4030b0 <_ZNSt10filesystem7__cxx114path5_ListC1Ev@plt>
  40b651:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b658:	00 
  40b659:	e8 e2 7b ff ff       	callq  403240 <_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@plt>
  40b65e:	4c 8b ac 24 f0 00 00 	mov    0xf0(%rsp),%r13
  40b665:	00 
  40b666:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b66d:	00 
  40b66e:	4c 8b a4 24 f8 00 00 	mov    0xf8(%rsp),%r12
  40b675:	00 
  40b676:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40b67d:	00 
  40b67e:	4c 89 e8             	mov    %r13,%rax
  40b681:	4c 01 e0             	add    %r12,%rax
  40b684:	74 09                	je     40b68f <_Z6windowid+0x13bf>
  40b686:	4d 85 ed             	test   %r13,%r13
  40b689:	0f 84 4e 0d 00 00    	je     40c3dd <_Z6windowid+0x210d>
  40b68f:	4c 89 a4 24 b0 00 00 	mov    %r12,0xb0(%rsp)
  40b696:	00 
  40b697:	49 83 fc 0f          	cmp    $0xf,%r12
  40b69b:	0f 87 1a 0c 00 00    	ja     40c2bb <_Z6windowid+0x1feb>
  40b6a1:	49 83 fc 01          	cmp    $0x1,%r12
  40b6a5:	0f 85 fa 0b 00 00    	jne    40c2a5 <_Z6windowid+0x1fd5>
  40b6ab:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40b6b0:	88 84 24 60 01 00 00 	mov    %al,0x160(%rsp)
  40b6b7:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b6be:	00 
  40b6bf:	4c 89 a4 24 58 01 00 	mov    %r12,0x158(%rsp)
  40b6c6:	00 
  40b6c7:	42 c6 04 20 00       	movb   $0x0,(%rax,%r12,1)
  40b6cc:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
  40b6d3:	00 
  40b6d4:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40b6db:	00 
  40b6dc:	e8 bf 7d ff ff       	callq  4034a0 <_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_@plt>
  40b6e1:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40b6e6:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40b6ed:	00 
  40b6ee:	e8 8d 79 ff ff       	callq  403080 <_ZNSt10filesystem7__cxx114pathdVERKS1_@plt>
  40b6f3:	48 8b b4 24 a0 01 00 	mov    0x1a0(%rsp),%rsi
  40b6fa:	00 
  40b6fb:	48 85 f6             	test   %rsi,%rsi
  40b6fe:	74 0d                	je     40b70d <_Z6windowid+0x143d>
  40b700:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  40b707:	00 
  40b708:	e8 93 79 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40b70d:	48 8b bc 24 80 01 00 	mov    0x180(%rsp),%rdi
  40b714:	00 
  40b715:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40b71c:	00 
  40b71d:	48 39 c7             	cmp    %rax,%rdi
  40b720:	74 11                	je     40b733 <_Z6windowid+0x1463>
  40b722:	48 8b 84 24 90 01 00 	mov    0x190(%rsp),%rax
  40b729:	00 
  40b72a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b72e:	e8 7d 7b ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b733:	48 8b bc 24 d0 00 00 	mov    0xd0(%rsp),%rdi
  40b73a:	00 
  40b73b:	4c 39 ff             	cmp    %r15,%rdi
  40b73e:	74 11                	je     40b751 <_Z6windowid+0x1481>
  40b740:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  40b747:	00 
  40b748:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b74c:	e8 5f 7b ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b751:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40b758:	00 
  40b759:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40b760:	00 
  40b761:	e8 6a 79 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40b766:	31 d2                	xor    %edx,%edx
  40b768:	66 89 94 24 58 03 00 	mov    %dx,0x358(%rsp)
  40b76f:	00 
  40b770:	48 8b 05 b1 54 00 00 	mov    0x54b1(%rip),%rax        # 410c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40b777:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40b77b:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
  40b782:	00 00 
  40b784:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b78b:	00 
  40b78c:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b793:	00 
  40b794:	48 03 78 e8          	add    -0x18(%rax),%rdi
  40b798:	48 8b 05 91 54 00 00 	mov    0x5491(%rip),%rax        # 410c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40b79f:	31 f6                	xor    %esi,%esi
  40b7a1:	48 c7 84 24 78 02 00 	movq   $0x410b90,0x278(%rsp)
  40b7a8:	00 90 0b 41 00 
  40b7ad:	48 c7 84 24 50 03 00 	movq   $0x0,0x350(%rsp)
  40b7b4:	00 00 00 00 00 
  40b7b9:	48 89 07             	mov    %rax,(%rdi)
  40b7bc:	c5 f8 77             	vzeroupper 
  40b7bf:	e8 7c 7b ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40b7c4:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40b7cb:	00 
  40b7cc:	48 c7 84 24 80 01 00 	movq   $0x410d28,0x180(%rsp)
  40b7d3:	00 28 0d 41 00 
  40b7d8:	48 c7 84 24 78 02 00 	movq   $0x410d50,0x278(%rsp)
  40b7df:	00 50 0d 41 00 
  40b7e4:	e8 e7 7a ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40b7e9:	48 8d b4 24 88 01 00 	lea    0x188(%rsp),%rsi
  40b7f0:	00 
  40b7f1:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40b7f8:	00 
  40b7f9:	e8 42 7b ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40b7fe:	ba 10 00 00 00       	mov    $0x10,%edx
  40b803:	4c 89 e6             	mov    %r12,%rsi
  40b806:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40b80d:	00 
  40b80e:	e8 5d 7a ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40b813:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40b81a:	00 
  40b81b:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b822:	00 
  40b823:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40b827:	48 85 c0             	test   %rax,%rax
  40b82a:	0f 84 2c 0b 00 00    	je     40c35c <_Z6windowid+0x208c>
  40b830:	31 f6                	xor    %esi,%esi
  40b832:	e8 e9 7b ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40b837:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40b83b:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  40b842:	00 
  40b843:	bf 01 00 00 00       	mov    $0x1,%edi
  40b848:	c5 f9 7f 84 24 d0 00 	vmovdqa %xmm0,0xd0(%rsp)
  40b84f:	00 00 
  40b851:	e8 2a 7a ff ff       	callq  403280 <clock_gettime@plt>
  40b856:	48 69 94 24 d0 00 00 	imul   $0x3b9aca00,0xd0(%rsp),%rdx
  40b85d:	00 00 ca 9a 3b 
  40b862:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
  40b869:	00 
  40b86a:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40b871:	00 
  40b872:	48 8d b4 02 80 b2 e6 	lea    0xee6b280(%rdx,%rax,1),%rsi
  40b879:	0e 
  40b87a:	e8 51 79 ff ff       	callq  4031d0 <_ZNSo9_M_insertIyEERSoT_@plt>
  40b87f:	c5 f9 6f 7c 24 10    	vmovdqa 0x10(%rsp),%xmm7
  40b885:	48 8d bc 24 88 01 00 	lea    0x188(%rsp),%rdi
  40b88c:	00 
  40b88d:	48 c7 84 24 78 02 00 	movq   $0x410d50,0x278(%rsp)
  40b894:	00 50 0d 41 00 
  40b899:	c5 f9 7f bc 24 80 01 	vmovdqa %xmm7,0x180(%rsp)
  40b8a0:	00 00 
  40b8a2:	e8 c9 77 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40b8a7:	48 8d bc 24 f0 01 00 	lea    0x1f0(%rsp),%rdi
  40b8ae:	00 
  40b8af:	e8 cc 7b ff ff       	callq  403480 <_ZNSt12__basic_fileIcED1Ev@plt>
  40b8b4:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
  40b8bb:	00 
  40b8bc:	48 c7 84 24 88 01 00 	movq   $0x410bb0,0x188(%rsp)
  40b8c3:	00 b0 0b 41 00 
  40b8c8:	e8 93 7a ff ff       	callq  403360 <_ZNSt6localeD1Ev@plt>
  40b8cd:	48 8b 05 54 53 00 00 	mov    0x5354(%rip),%rax        # 410c28 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40b8d4:	48 8b 0d 55 53 00 00 	mov    0x5355(%rip),%rcx        # 410c30 <_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40b8db:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40b8e2:	00 
  40b8e3:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40b8e7:	48 8d bc 24 78 02 00 	lea    0x278(%rsp),%rdi
  40b8ee:	00 
  40b8ef:	48 89 8c 04 80 01 00 	mov    %rcx,0x180(%rsp,%rax,1)
  40b8f6:	00 
  40b8f7:	48 c7 84 24 78 02 00 	movq   $0x410b90,0x278(%rsp)
  40b8fe:	00 90 0b 41 00 
  40b903:	e8 f8 77 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40b908:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40b90d:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  40b914:	00 
  40b915:	e8 96 78 ff ff       	callq  4031b0 <_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_@plt>
  40b91a:	48 8b b4 24 70 01 00 	mov    0x170(%rsp),%rsi
  40b921:	00 
  40b922:	48 85 f6             	test   %rsi,%rsi
  40b925:	74 0d                	je     40b934 <_Z6windowid+0x1664>
  40b927:	48 8d bc 24 70 01 00 	lea    0x170(%rsp),%rdi
  40b92e:	00 
  40b92f:	e8 6c 77 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40b934:	48 8b bc 24 50 01 00 	mov    0x150(%rsp),%rdi
  40b93b:	00 
  40b93c:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40b943:	00 
  40b944:	48 39 c7             	cmp    %rax,%rdi
  40b947:	74 11                	je     40b95a <_Z6windowid+0x168a>
  40b949:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  40b950:	00 
  40b951:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40b955:	e8 56 79 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40b95a:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40b961:	00 
  40b962:	e8 a9 77 ff ff       	callq  403110 <_ZNSt10filesystem6statusERKNS_7__cxx114pathE@plt>
  40b967:	ff c0                	inc    %eax
  40b969:	3c 01                	cmp    $0x1,%al
  40b96b:	0f 87 a7 02 00 00    	ja     40bc18 <_Z6windowid+0x1948>
  40b971:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40b975:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40b97c:	00 
  40b97d:	bf 01 00 00 00       	mov    $0x1,%edi
  40b982:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40b989:	00 00 
  40b98b:	e8 f0 78 ff ff       	callq  403280 <clock_gettime@plt>
  40b990:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40b997:	00 00 ca 9a 3b 
  40b99c:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40b9a3:	00 
  40b9a4:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  40b9a9:	0f 82 c1 82 ff ff    	jb     403c70 <_Z6windowid.cold+0x75e>
  40b9af:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40b9b6:	00 00 00 00 00 
  40b9bb:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  40b9c2:	00 80 84 1e 00 
  40b9c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40b9ce:	00 00 
  40b9d0:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40b9d7:	00 
  40b9d8:	48 89 f7             	mov    %rsi,%rdi
  40b9db:	e8 00 77 ff ff       	callq  4030e0 <nanosleep@plt>
  40b9e0:	83 f8 ff             	cmp    $0xffffffff,%eax
  40b9e3:	0f 85 71 ff ff ff    	jne    40b95a <_Z6windowid+0x168a>
  40b9e9:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40b9ee:	83 38 04             	cmpl   $0x4,(%rax)
  40b9f1:	74 dd                	je     40b9d0 <_Z6windowid+0x1700>
  40b9f3:	e9 62 ff ff ff       	jmpq   40b95a <_Z6windowid+0x168a>
  40b9f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40b9ff:	00 
  40ba00:	4d 85 e4             	test   %r12,%r12
  40ba03:	0f 85 67 0a 00 00    	jne    40c470 <_Z6windowid+0x21a0>
  40ba09:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40ba10:	00 
  40ba11:	e9 b1 f7 ff ff       	jmpq   40b1c7 <_Z6windowid+0xef7>
  40ba16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40ba1d:	00 00 00 
  40ba20:	4d 85 e4             	test   %r12,%r12
  40ba23:	0f 85 54 0a 00 00    	jne    40c47d <_Z6windowid+0x21ad>
  40ba29:	48 8d 84 24 90 01 00 	lea    0x190(%rsp),%rax
  40ba30:	00 
  40ba31:	e9 61 f9 ff ff       	jmpq   40b397 <_Z6windowid+0x10c7>
  40ba36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40ba3d:	00 00 00 
  40ba40:	31 d2                	xor    %edx,%edx
  40ba42:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40ba49:	00 
  40ba4a:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40ba51:	00 
  40ba52:	e8 09 7a ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40ba57:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40ba5e:	00 
  40ba5f:	48 89 c7             	mov    %rax,%rdi
  40ba62:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40ba69:	00 
  40ba6a:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  40ba71:	00 
  40ba72:	4c 89 e2             	mov    %r12,%rdx
  40ba75:	48 89 de             	mov    %rbx,%rsi
  40ba78:	e8 d3 77 ff ff       	callq  403250 <memcpy@plt>
  40ba7d:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40ba84:	00 
  40ba85:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  40ba8c:	00 
  40ba8d:	e9 35 f7 ff ff       	jmpq   40b1c7 <_Z6windowid+0xef7>
  40ba92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40ba98:	31 d2                	xor    %edx,%edx
  40ba9a:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
  40ba9f:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40baa6:	00 
  40baa7:	e8 b4 79 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40baac:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40bab3:	00 
  40bab4:	48 89 c7             	mov    %rax,%rdi
  40bab7:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  40babc:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40bac3:	00 
  40bac4:	4c 89 e2             	mov    %r12,%rdx
  40bac7:	48 89 de             	mov    %rbx,%rsi
  40baca:	e8 81 77 ff ff       	callq  403250 <memcpy@plt>
  40bacf:	4c 8b 64 24 68       	mov    0x68(%rsp),%r12
  40bad4:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40badb:	00 
  40badc:	e9 b6 f8 ff ff       	jmpq   40b397 <_Z6windowid+0x10c7>
  40bae1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40bae8:	c5 f9 6f 9c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm3
  40baef:	00 00 
  40baf1:	c5 f9 7f 9c 24 60 01 	vmovdqa %xmm3,0x160(%rsp)
  40baf8:	00 00 
  40bafa:	e9 f9 f7 ff ff       	jmpq   40b2f8 <_Z6windowid+0x1028>
  40baff:	90                   	nop
  40bb00:	c5 fa 6f 60 10       	vmovdqu 0x10(%rax),%xmm4
  40bb05:	c5 f9 7f a4 24 e0 00 	vmovdqa %xmm4,0xe0(%rsp)
  40bb0c:	00 00 
  40bb0e:	e9 91 f7 ff ff       	jmpq   40b2a4 <_Z6windowid+0xfd4>
  40bb13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40bb18:	8d 58 05             	lea    0x5(%rax),%ebx
  40bb1b:	49 ff c6             	inc    %r14
  40bb1e:	e9 9d f5 ff ff       	jmpq   40b0c0 <_Z6windowid+0xdf0>
  40bb23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40bb28:	8d 58 06             	lea    0x6(%rax),%ebx
  40bb2b:	49 ff c6             	inc    %r14
  40bb2e:	e9 8d f5 ff ff       	jmpq   40b0c0 <_Z6windowid+0xdf0>
  40bb33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40bb38:	31 d2                	xor    %edx,%edx
  40bb3a:	31 f6                	xor    %esi,%esi
  40bb3c:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40bb43:	00 
  40bb44:	e8 77 78 ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40bb49:	4c 89 bc 24 d0 00 00 	mov    %r15,0xd0(%rsp)
  40bb50:	00 
  40bb51:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40bb55:	48 8b 08             	mov    (%rax),%rcx
  40bb58:	48 39 d1             	cmp    %rdx,%rcx
  40bb5b:	0f 85 2f f7 ff ff    	jne    40b290 <_Z6windowid+0xfc0>
  40bb61:	c5 fa 6f 68 10       	vmovdqu 0x10(%rax),%xmm5
  40bb66:	c5 f9 7f ac 24 e0 00 	vmovdqa %xmm5,0xe0(%rsp)
  40bb6d:	00 00 
  40bb6f:	e9 30 f7 ff ff       	jmpq   40b2a4 <_Z6windowid+0xfd4>
  40bb74:	0f 1f 40 00          	nopl   0x0(%rax)
  40bb78:	8d 58 07             	lea    0x7(%rax),%ebx
  40bb7b:	49 ff c6             	inc    %r14
  40bb7e:	e9 3d f5 ff ff       	jmpq   40b0c0 <_Z6windowid+0xdf0>
  40bb83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40bb88:	80 7c 24 47 00       	cmpb   $0x0,0x47(%rsp)
  40bb8d:	0f 85 c1 f9 ff ff    	jne    40b554 <_Z6windowid+0x1284>
  40bb93:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40bb97:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40bb9e:	00 
  40bb9f:	bf 01 00 00 00       	mov    $0x1,%edi
  40bba4:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40bbab:	00 00 
  40bbad:	e8 ce 76 ff ff       	callq  403280 <clock_gettime@plt>
  40bbb2:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40bbb9:	00 00 ca 9a 3b 
  40bbbe:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40bbc5:	00 
  40bbc6:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  40bbcb:	0f 82 4d 7f ff ff    	jb     403b1e <_Z6windowid.cold+0x60c>
  40bbd1:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40bbd8:	00 00 00 00 00 
  40bbdd:	48 c7 84 24 88 01 00 	movq   $0x1e8480,0x188(%rsp)
  40bbe4:	00 80 84 1e 00 
  40bbe9:	eb 13                	jmp    40bbfe <_Z6windowid+0x192e>
  40bbeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40bbf0:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40bbf5:	83 38 04             	cmpl   $0x4,(%rax)
  40bbf8:	0f 85 9a f4 ff ff    	jne    40b098 <_Z6windowid+0xdc8>
  40bbfe:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40bc05:	00 
  40bc06:	48 89 f7             	mov    %rsi,%rdi
  40bc09:	e8 d2 74 ff ff       	callq  4030e0 <nanosleep@plt>
  40bc0e:	83 f8 ff             	cmp    $0xffffffff,%eax
  40bc11:	74 dd                	je     40bbf0 <_Z6windowid+0x1920>
  40bc13:	e9 80 f4 ff ff       	jmpq   40b098 <_Z6windowid+0xdc8>
  40bc18:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40bc1f:	00 
  40bc20:	4c 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13
  40bc27:	00 
  40bc28:	e8 a3 74 ff ff       	callq  4030d0 <_ZNSt8ios_baseC2Ev@plt>
  40bc2d:	31 c0                	xor    %eax,%eax
  40bc2f:	66 89 84 24 60 03 00 	mov    %ax,0x360(%rsp)
  40bc36:	00 
  40bc37:	48 8b 1d 3a 51 00 00 	mov    0x513a(%rip),%rbx        # 410d78 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x8>
  40bc3e:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40bc42:	c5 fe 7f 84 24 68 03 	vmovdqu %ymm0,0x368(%rsp)
  40bc49:	00 00 
  40bc4b:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  40bc4f:	4c 8b 25 2a 51 00 00 	mov    0x512a(%rip),%r12        # 410d80 <_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE@GLIBCXX_3.4+0x10>
  40bc56:	48 c7 84 24 80 02 00 	movq   $0x410b90,0x280(%rsp)
  40bc5d:	00 90 0b 41 00 
  40bc62:	48 c7 84 24 58 03 00 	movq   $0x0,0x358(%rsp)
  40bc69:	00 00 00 00 00 
  40bc6e:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  40bc75:	00 
  40bc76:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  40bc7d:	00 
  40bc7e:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  40bc85:	00 00 00 00 00 
  40bc8a:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bc91:	00 
  40bc92:	31 f6                	xor    %esi,%esi
  40bc94:	48 03 7b e8          	add    -0x18(%rbx),%rdi
  40bc98:	c5 f8 77             	vzeroupper 
  40bc9b:	e8 a0 76 ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40bca0:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40bca7:	00 
  40bca8:	48 c7 84 24 80 01 00 	movq   $0x410c58,0x180(%rsp)
  40bcaf:	00 58 0c 41 00 
  40bcb4:	48 c7 84 24 80 02 00 	movq   $0x410c80,0x280(%rsp)
  40bcbb:	00 80 0c 41 00 
  40bcc0:	e8 0b 76 ff ff       	callq  4032d0 <_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@plt>
  40bcc5:	48 8d b4 24 90 01 00 	lea    0x190(%rsp),%rsi
  40bccc:	00 
  40bccd:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40bcd4:	00 
  40bcd5:	e8 66 76 ff ff       	callq  403340 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  40bcda:	ba 08 00 00 00       	mov    $0x8,%edx
  40bcdf:	4c 89 ee             	mov    %r13,%rsi
  40bce2:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40bce9:	00 
  40bcea:	e8 81 75 ff ff       	callq  403270 <_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@plt>
  40bcef:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40bcf6:	00 
  40bcf7:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bcfe:	00 
  40bcff:	48 03 7a e8          	add    -0x18(%rdx),%rdi
  40bd03:	48 85 c0             	test   %rax,%rax
  40bd06:	0f 84 2c 05 00 00    	je     40c238 <_Z6windowid+0x1f68>
  40bd0c:	31 f6                	xor    %esi,%esi
  40bd0e:	e8 0d 77 ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40bd13:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40bd18:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bd1f:	00 
  40bd20:	e8 4b 74 ff ff       	callq  403170 <_ZNSi10_M_extractImEERSiRT_@plt>
  40bd25:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40bd2c:	00 
  40bd2d:	48 c7 84 24 80 01 00 	movq   $0x410c58,0x180(%rsp)
  40bd34:	00 58 0c 41 00 
  40bd39:	48 c7 84 24 80 02 00 	movq   $0x410c80,0x280(%rsp)
  40bd40:	00 80 0c 41 00 
  40bd45:	48 c7 84 24 90 01 00 	movq   $0x410ca0,0x190(%rsp)
  40bd4c:	00 a0 0c 41 00 
  40bd51:	e8 1a 73 ff ff       	callq  403070 <_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@plt>
  40bd56:	48 8d bc 24 f8 01 00 	lea    0x1f8(%rsp),%rdi
  40bd5d:	00 
  40bd5e:	e8 1d 77 ff ff       	callq  403480 <_ZNSt12__basic_fileIcED1Ev@plt>
  40bd63:	48 8d bc 24 c8 01 00 	lea    0x1c8(%rsp),%rdi
  40bd6a:	00 
  40bd6b:	48 c7 84 24 90 01 00 	movq   $0x410bb0,0x190(%rsp)
  40bd72:	00 b0 0b 41 00 
  40bd77:	e8 e4 75 ff ff       	callq  403360 <_ZNSt6localeD1Ev@plt>
  40bd7c:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  40bd80:	48 8d bc 24 80 02 00 	lea    0x280(%rsp),%rdi
  40bd87:	00 
  40bd88:	48 89 9c 24 80 01 00 	mov    %rbx,0x180(%rsp)
  40bd8f:	00 
  40bd90:	4c 89 a4 04 80 01 00 	mov    %r12,0x180(%rsp,%rax,1)
  40bd97:	00 
  40bd98:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  40bd9f:	00 00 00 00 00 
  40bda4:	48 c7 84 24 80 02 00 	movq   $0x410b90,0x280(%rsp)
  40bdab:	00 90 0b 41 00 
  40bdb0:	e8 4b 73 ff ff       	callq  403100 <_ZNSt8ios_baseD2Ev@plt>
  40bdb5:	0f 1f 00             	nopl   (%rax)
  40bdb8:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40bdbc:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40bdc3:	00 
  40bdc4:	bf 01 00 00 00       	mov    $0x1,%edi
  40bdc9:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40bdd0:	00 00 
  40bdd2:	e8 a9 74 ff ff       	callq  403280 <clock_gettime@plt>
  40bdd7:	48 69 84 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%rax
  40bdde:	00 00 ca 9a 3b 
  40bde3:	4c 8b a4 24 50 01 00 	mov    0x150(%rsp),%r12
  40bdea:	00 
  40bdeb:	48 03 84 24 88 01 00 	add    0x188(%rsp),%rax
  40bdf2:	00 
  40bdf3:	49 39 c4             	cmp    %rax,%r12
  40bdf6:	76 39                	jbe    40be31 <_Z6windowid+0x1b61>
  40bdf8:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  40bdff:	00 00 00 00 00 
  40be04:	48 c7 84 24 88 01 00 	movq   $0x4e20,0x188(%rsp)
  40be0b:	00 20 4e 00 00 
  40be10:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40be17:	00 
  40be18:	48 89 f7             	mov    %rsi,%rdi
  40be1b:	e8 c0 72 ff ff       	callq  4030e0 <nanosleep@plt>
  40be20:	83 f8 ff             	cmp    $0xffffffff,%eax
  40be23:	75 93                	jne    40bdb8 <_Z6windowid+0x1ae8>
  40be25:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40be2a:	83 38 04             	cmpl   $0x4,(%rax)
  40be2d:	74 e1                	je     40be10 <_Z6windowid+0x1b40>
  40be2f:	eb 87                	jmp    40bdb8 <_Z6windowid+0x1ae8>
  40be31:	48 8b b4 24 40 01 00 	mov    0x140(%rsp),%rsi
  40be38:	00 
  40be39:	48 85 f6             	test   %rsi,%rsi
  40be3c:	74 0d                	je     40be4b <_Z6windowid+0x1b7b>
  40be3e:	48 8d bc 24 40 01 00 	lea    0x140(%rsp),%rdi
  40be45:	00 
  40be46:	e8 55 72 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40be4b:	48 8b bc 24 20 01 00 	mov    0x120(%rsp),%rdi
  40be52:	00 
  40be53:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40be5a:	00 
  40be5b:	48 39 c7             	cmp    %rax,%rdi
  40be5e:	74 11                	je     40be71 <_Z6windowid+0x1ba1>
  40be60:	48 8b 84 24 30 01 00 	mov    0x130(%rsp),%rax
  40be67:	00 
  40be68:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40be6c:	e8 3f 74 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40be71:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  40be76:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  40be7d:	00 
  40be7e:	48 39 c7             	cmp    %rax,%rdi
  40be81:	74 11                	je     40be94 <_Z6windowid+0x1bc4>
  40be83:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  40be8a:	00 
  40be8b:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40be8f:	e8 1c 74 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40be94:	48 8b b4 24 10 01 00 	mov    0x110(%rsp),%rsi
  40be9b:	00 
  40be9c:	48 85 f6             	test   %rsi,%rsi
  40be9f:	74 0d                	je     40beae <_Z6windowid+0x1bde>
  40bea1:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
  40bea8:	00 
  40bea9:	e8 f2 71 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40beae:	48 8b bc 24 f0 00 00 	mov    0xf0(%rsp),%rdi
  40beb5:	00 
  40beb6:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
  40bebd:	00 
  40bebe:	48 39 c7             	cmp    %rax,%rdi
  40bec1:	74 11                	je     40bed4 <_Z6windowid+0x1c04>
  40bec3:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  40beca:	00 
  40becb:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40becf:	e8 dc 73 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40bed4:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  40bed8:	5b                   	pop    %rbx
  40bed9:	4c 89 e0             	mov    %r12,%rax
  40bedc:	41 5c                	pop    %r12
  40bede:	41 5d                	pop    %r13
  40bee0:	41 5e                	pop    %r14
  40bee2:	41 5f                	pop    %r15
  40bee4:	5d                   	pop    %rbp
  40bee5:	c3                   	retq   
  40bee6:	bb 02 00 00 00       	mov    $0x2,%ebx
  40beeb:	49 ff c6             	inc    %r14
  40beee:	e9 cd f1 ff ff       	jmpq   40b0c0 <_Z6windowid+0xdf0>
  40bef3:	bb 04 00 00 00       	mov    $0x4,%ebx
  40bef8:	49 ff c6             	inc    %r14
  40befb:	e9 c0 f1 ff ff       	jmpq   40b0c0 <_Z6windowid+0xdf0>
  40bf00:	bb 03 00 00 00       	mov    $0x3,%ebx
  40bf05:	49 ff c6             	inc    %r14
  40bf08:	e9 b3 f1 ff ff       	jmpq   40b0c0 <_Z6windowid+0xdf0>
  40bf0d:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  40bf11:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40bf18:	00 
  40bf19:	bf 01 00 00 00       	mov    $0x1,%edi
  40bf1e:	c5 f9 7f 84 24 80 01 	vmovdqa %xmm0,0x180(%rsp)
  40bf25:	00 00 
  40bf27:	e8 54 73 ff ff       	callq  403280 <clock_gettime@plt>
  40bf2c:	4c 69 a4 24 80 01 00 	imul   $0x3b9aca00,0x180(%rsp),%r12
  40bf33:	00 00 ca 9a 3b 
  40bf38:	4c 03 a4 24 88 01 00 	add    0x188(%rsp),%r12
  40bf3f:	00 
  40bf40:	eb 92                	jmp    40bed4 <_Z6windowid+0x1c04>
  40bf42:	4d 85 e4             	test   %r12,%r12
  40bf45:	0f 85 3f 05 00 00    	jne    40c48a <_Z6windowid+0x21ba>
  40bf4b:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40bf52:	00 
  40bf53:	e9 37 f0 ff ff       	jmpq   40af8f <_Z6windowid+0xcbf>
  40bf58:	31 d2                	xor    %edx,%edx
  40bf5a:	48 8d b4 24 d0 00 00 	lea    0xd0(%rsp),%rsi
  40bf61:	00 
  40bf62:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40bf69:	00 
  40bf6a:	e8 f1 74 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40bf6f:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
  40bf76:	00 
  40bf77:	48 89 c7             	mov    %rax,%rdi
  40bf7a:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40bf81:	00 
  40bf82:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40bf89:	00 
  40bf8a:	4c 89 e2             	mov    %r12,%rdx
  40bf8d:	4c 89 ee             	mov    %r13,%rsi
  40bf90:	e8 bb 72 ff ff       	callq  403250 <memcpy@plt>
  40bf95:	4c 8b a4 24 d0 00 00 	mov    0xd0(%rsp),%r12
  40bf9c:	00 
  40bf9d:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  40bfa4:	00 
  40bfa5:	e9 e5 ef ff ff       	jmpq   40af8f <_Z6windowid+0xcbf>
  40bfaa:	4d 85 e4             	test   %r12,%r12
  40bfad:	0f 85 e4 04 00 00    	jne    40c497 <_Z6windowid+0x21c7>
  40bfb3:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40bfba:	00 
  40bfbb:	e9 a2 ee ff ff       	jmpq   40ae62 <_Z6windowid+0xb92>
  40bfc0:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  40bfc5:	31 d2                	xor    %edx,%edx
  40bfc7:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40bfce:	00 
  40bfcf:	e8 8c 74 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40bfd4:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40bfdb:	00 
  40bfdc:	48 89 c7             	mov    %rax,%rdi
  40bfdf:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40bfe6:	00 
  40bfe7:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40bfee:	00 
  40bfef:	4c 89 f2             	mov    %r14,%rdx
  40bff2:	4c 89 ee             	mov    %r13,%rsi
  40bff5:	e8 56 72 ff ff       	callq  403250 <memcpy@plt>
  40bffa:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c001:	00 
  40c002:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40c009:	00 
  40c00a:	e9 3e e5 ff ff       	jmpq   40a54d <_Z6windowid+0x27d>
  40c00f:	4d 85 f6             	test   %r14,%r14
  40c012:	0f 85 8c 04 00 00    	jne    40c4a4 <_Z6windowid+0x21d4>
  40c018:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40c01f:	00 
  40c020:	e9 28 e5 ff ff       	jmpq   40a54d <_Z6windowid+0x27d>
  40c025:	48 85 c0             	test   %rax,%rax
  40c028:	0f 85 83 04 00 00    	jne    40c4b1 <_Z6windowid+0x21e1>
  40c02e:	48 8d 8c 24 50 01 00 	lea    0x150(%rsp),%rcx
  40c035:	00 
  40c036:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
  40c03b:	48 8d 94 24 90 01 00 	lea    0x190(%rsp),%rdx
  40c042:	00 
  40c043:	e9 a5 e3 ff ff       	jmpq   40a3ed <_Z6windowid+0x11d>
  40c048:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  40c04f:	00 
  40c050:	31 d2                	xor    %edx,%edx
  40c052:	48 89 c6             	mov    %rax,%rsi
  40c055:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  40c05c:	00 
  40c05d:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40c062:	e8 f9 73 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c067:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
  40c06e:	00 
  40c06f:	48 89 c7             	mov    %rax,%rdi
  40c072:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c079:	00 
  40c07a:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
  40c081:	00 
  40c082:	4c 89 f2             	mov    %r14,%rdx
  40c085:	4c 89 ee             	mov    %r13,%rsi
  40c088:	e8 c3 71 ff ff       	callq  403250 <memcpy@plt>
  40c08d:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c094:	00 
  40c095:	48 8b 94 24 80 01 00 	mov    0x180(%rsp),%rdx
  40c09c:	00 
  40c09d:	e9 4b e3 ff ff       	jmpq   40a3ed <_Z6windowid+0x11d>
  40c0a2:	48 85 c0             	test   %rax,%rax
  40c0a5:	0f 85 20 04 00 00    	jne    40c4cb <_Z6windowid+0x21fb>
  40c0ab:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40c0b2:	00 
  40c0b3:	e9 94 e2 ff ff       	jmpq   40a34c <_Z6windowid+0x7c>
  40c0b8:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c0bd:	31 d2                	xor    %edx,%edx
  40c0bf:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c0c6:	00 
  40c0c7:	e8 94 73 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c0cc:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c0d3:	00 
  40c0d4:	48 89 c7             	mov    %rax,%rdi
  40c0d7:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40c0de:	00 
  40c0df:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40c0e6:	00 
  40c0e7:	4c 89 e2             	mov    %r12,%rdx
  40c0ea:	4c 89 ee             	mov    %r13,%rsi
  40c0ed:	e8 5e 71 ff ff       	callq  403250 <memcpy@plt>
  40c0f2:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40c0f9:	00 
  40c0fa:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c101:	00 
  40c102:	e9 5b ed ff ff       	jmpq   40ae62 <_Z6windowid+0xb92>
  40c107:	4d 85 e4             	test   %r12,%r12
  40c10a:	0f 85 c8 03 00 00    	jne    40c4d8 <_Z6windowid+0x2208>
  40c110:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c117:	00 
  40c118:	e9 30 ea ff ff       	jmpq   40ab4d <_Z6windowid+0x87d>
  40c11d:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c122:	31 d2                	xor    %edx,%edx
  40c124:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c12b:	00 
  40c12c:	e8 2f 73 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c131:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c138:	00 
  40c139:	48 89 c7             	mov    %rax,%rdi
  40c13c:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40c143:	00 
  40c144:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40c14b:	00 
  40c14c:	4c 89 e2             	mov    %r12,%rdx
  40c14f:	4c 89 ee             	mov    %r13,%rsi
  40c152:	e8 f9 70 ff ff       	callq  403250 <memcpy@plt>
  40c157:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40c15e:	00 
  40c15f:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c166:	00 
  40c167:	e9 e1 e9 ff ff       	jmpq   40ab4d <_Z6windowid+0x87d>
  40c16c:	4d 85 e4             	test   %r12,%r12
  40c16f:	0f 85 70 03 00 00    	jne    40c4e5 <_Z6windowid+0x2215>
  40c175:	48 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%rax
  40c17c:	00 
  40c17d:	e9 ed e7 ff ff       	jmpq   40a96f <_Z6windowid+0x69f>
  40c182:	31 d2                	xor    %edx,%edx
  40c184:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c18b:	00 
  40c18c:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
  40c193:	00 
  40c194:	e8 c7 72 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c199:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  40c1a0:	00 
  40c1a1:	48 89 c7             	mov    %rax,%rdi
  40c1a4:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40c1ab:	00 
  40c1ac:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
  40c1b3:	00 
  40c1b4:	4c 89 e2             	mov    %r12,%rdx
  40c1b7:	4c 89 ee             	mov    %r13,%rsi
  40c1ba:	e8 91 70 ff ff       	callq  403250 <memcpy@plt>
  40c1bf:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40c1c6:	00 
  40c1c7:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
  40c1ce:	00 
  40c1cf:	e9 9b e7 ff ff       	jmpq   40a96f <_Z6windowid+0x69f>
  40c1d4:	8b 77 20             	mov    0x20(%rdi),%esi
  40c1d7:	83 ce 04             	or     $0x4,%esi
  40c1da:	e8 41 72 ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40c1df:	e9 83 ea ff ff       	jmpq   40ac67 <_Z6windowid+0x997>
  40c1e4:	c5 f9 6f 8c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm1
  40c1eb:	00 00 
  40c1ed:	c5 f9 7f 8c 24 30 01 	vmovdqa %xmm1,0x130(%rsp)
  40c1f4:	00 00 
  40c1f6:	e9 ab e8 ff ff       	jmpq   40aaa6 <_Z6windowid+0x7d6>
  40c1fb:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  40c200:	c5 f9 7f bc 24 e0 00 	vmovdqa %xmm7,0xe0(%rsp)
  40c207:	00 00 
  40c209:	e9 44 e8 ff ff       	jmpq   40aa52 <_Z6windowid+0x782>
  40c20e:	c5 fa 6f 78 10       	vmovdqu 0x10(%rax),%xmm7
  40c213:	c5 f9 7f bc 24 80 00 	vmovdqa %xmm7,0x80(%rsp)
  40c21a:	00 00 
  40c21c:	e9 5d e5 ff ff       	jmpq   40a77e <_Z6windowid+0x4ae>
  40c221:	c5 f9 6f 94 24 60 01 	vmovdqa 0x160(%rsp),%xmm2
  40c228:	00 00 
  40c22a:	c5 f9 7f 94 24 90 01 	vmovdqa %xmm2,0x190(%rsp)
  40c231:	00 00 
  40c233:	e9 a8 ec ff ff       	jmpq   40aee0 <_Z6windowid+0xc10>
  40c238:	8b 77 20             	mov    0x20(%rdi),%esi
  40c23b:	83 ce 04             	or     $0x4,%esi
  40c23e:	e8 dd 71 ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40c243:	e9 cb fa ff ff       	jmpq   40bd13 <_Z6windowid+0x1a43>
  40c248:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  40c24d:	88 84 24 e0 00 00 00 	mov    %al,0xe0(%rsp)
  40c254:	4c 89 f8             	mov    %r15,%rax
  40c257:	e9 43 f3 ff ff       	jmpq   40b59f <_Z6windowid+0x12cf>
  40c25c:	4c 89 c9             	mov    %r9,%rcx
  40c25f:	31 d2                	xor    %edx,%edx
  40c261:	31 f6                	xor    %esi,%esi
  40c263:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
  40c26a:	00 
  40c26b:	e8 50 71 ff ff       	callq  4033c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40c270:	e9 a9 e7 ff ff       	jmpq   40aa1e <_Z6windowid+0x74e>
  40c275:	8d 58 06             	lea    0x6(%rax),%ebx
  40c278:	e9 df e5 ff ff       	jmpq   40a85c <_Z6windowid+0x58c>
  40c27d:	8d 58 05             	lea    0x5(%rax),%ebx
  40c280:	e9 d7 e5 ff ff       	jmpq   40a85c <_Z6windowid+0x58c>
  40c285:	8d 58 06             	lea    0x6(%rax),%ebx
  40c288:	e9 ef e3 ff ff       	jmpq   40a67c <_Z6windowid+0x3ac>
  40c28d:	8d 58 05             	lea    0x5(%rax),%ebx
  40c290:	e9 e7 e3 ff ff       	jmpq   40a67c <_Z6windowid+0x3ac>
  40c295:	8d 58 07             	lea    0x7(%rax),%ebx
  40c298:	e9 df e3 ff ff       	jmpq   40a67c <_Z6windowid+0x3ac>
  40c29d:	8d 58 07             	lea    0x7(%rax),%ebx
  40c2a0:	e9 b7 e5 ff ff       	jmpq   40a85c <_Z6windowid+0x58c>
  40c2a5:	4d 85 e4             	test   %r12,%r12
  40c2a8:	0f 85 4b 01 00 00    	jne    40c3f9 <_Z6windowid+0x2129>
  40c2ae:	48 8d 84 24 60 01 00 	lea    0x160(%rsp),%rax
  40c2b5:	00 
  40c2b6:	e9 04 f4 ff ff       	jmpq   40b6bf <_Z6windowid+0x13ef>
  40c2bb:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40c2c0:	31 d2                	xor    %edx,%edx
  40c2c2:	48 8d b4 24 b0 00 00 	lea    0xb0(%rsp),%rsi
  40c2c9:	00 
  40c2ca:	e8 91 71 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c2cf:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
  40c2d6:	00 
  40c2d7:	48 89 c7             	mov    %rax,%rdi
  40c2da:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
  40c2e1:	00 
  40c2e2:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
  40c2e9:	00 
  40c2ea:	4c 89 e2             	mov    %r12,%rdx
  40c2ed:	4c 89 ee             	mov    %r13,%rsi
  40c2f0:	e8 5b 6f ff ff       	callq  403250 <memcpy@plt>
  40c2f5:	4c 8b a4 24 b0 00 00 	mov    0xb0(%rsp),%r12
  40c2fc:	00 
  40c2fd:	48 8b 84 24 50 01 00 	mov    0x150(%rsp),%rax
  40c304:	00 
  40c305:	e9 b5 f3 ff ff       	jmpq   40b6bf <_Z6windowid+0x13ef>
  40c30a:	31 d2                	xor    %edx,%edx
  40c30c:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  40c313:	00 
  40c314:	48 8d bc 24 d0 00 00 	lea    0xd0(%rsp),%rdi
  40c31b:	00 
  40c31c:	e8 3f 71 ff ff       	callq  403460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40c321:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
  40c328:	00 
  40c329:	48 89 c7             	mov    %rax,%rdi
  40c32c:	48 8b 84 24 80 01 00 	mov    0x180(%rsp),%rax
  40c333:	00 
  40c334:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
  40c33b:	00 
  40c33c:	4c 89 e2             	mov    %r12,%rdx
  40c33f:	4c 89 ee             	mov    %r13,%rsi
  40c342:	e8 09 6f ff ff       	callq  403250 <memcpy@plt>
  40c347:	4c 8b a4 24 80 01 00 	mov    0x180(%rsp),%r12
  40c34e:	00 
  40c34f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
  40c356:	00 
  40c357:	e9 43 f2 ff ff       	jmpq   40b59f <_Z6windowid+0x12cf>
  40c35c:	8b 77 20             	mov    0x20(%rdi),%esi
  40c35f:	83 ce 04             	or     $0x4,%esi
  40c362:	e8 b9 70 ff ff       	callq  403420 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  40c367:	e9 cb f4 ff ff       	jmpq   40b837 <_Z6windowid+0x1567>
  40c36c:	c5 f9 6f b4 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm6
  40c373:	00 00 
  40c375:	c5 f9 7f b4 24 90 01 	vmovdqa %xmm6,0x190(%rsp)
  40c37c:	00 00 
  40c37e:	e9 95 f2 ff ff       	jmpq   40b618 <_Z6windowid+0x1348>
  40c383:	bb 02 00 00 00       	mov    $0x2,%ebx
  40c388:	e9 cf e4 ff ff       	jmpq   40a85c <_Z6windowid+0x58c>
  40c38d:	bb 01 00 00 00       	mov    $0x1,%ebx
  40c392:	e9 e5 e2 ff ff       	jmpq   40a67c <_Z6windowid+0x3ac>
  40c397:	bb 02 00 00 00       	mov    $0x2,%ebx
  40c39c:	e9 db e2 ff ff       	jmpq   40a67c <_Z6windowid+0x3ac>
  40c3a1:	bb 03 00 00 00       	mov    $0x3,%ebx
  40c3a6:	e9 d1 e2 ff ff       	jmpq   40a67c <_Z6windowid+0x3ac>
  40c3ab:	bb 04 00 00 00       	mov    $0x4,%ebx
  40c3b0:	e9 c7 e2 ff ff       	jmpq   40a67c <_Z6windowid+0x3ac>
  40c3b5:	bb 03 00 00 00       	mov    $0x3,%ebx
  40c3ba:	e9 9d e4 ff ff       	jmpq   40a85c <_Z6windowid+0x58c>
  40c3bf:	bb 04 00 00 00       	mov    $0x4,%ebx
  40c3c4:	e9 93 e4 ff ff       	jmpq   40a85c <_Z6windowid+0x58c>
  40c3c9:	bb 01 00 00 00       	mov    $0x1,%ebx
  40c3ce:	e9 89 e4 ff ff       	jmpq   40a85c <_Z6windowid+0x58c>
  40c3d3:	bf c3 e0 40 00       	mov    $0x40e0c3,%edi
  40c3d8:	e8 a3 6f ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  40c3dd:	bf 10 e0 40 00       	mov    $0x40e010,%edi
  40c3e2:	e8 09 6e ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40c3e7:	bf cc e0 40 00       	mov    $0x40e0cc,%edi
  40c3ec:	e8 6f 6d ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40c3f1:	4c 89 ff             	mov    %r15,%rdi
  40c3f4:	e9 43 ff ff ff       	jmpq   40c33c <_Z6windowid+0x206c>
  40c3f9:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40c400:	00 
  40c401:	e9 e4 fe ff ff       	jmpq   40c2ea <_Z6windowid+0x201a>
  40c406:	bf 10 e0 40 00       	mov    $0x40e010,%edi
  40c40b:	e8 e0 6d ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40c410:	bf c3 e0 40 00       	mov    $0x40e0c3,%edi
  40c415:	e8 86 6d ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40c41a:	bf c3 e0 40 00       	mov    $0x40e0c3,%edi
  40c41f:	e8 5c 6f ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  40c424:	bf 10 e0 40 00       	mov    $0x40e010,%edi
  40c429:	e8 c2 6d ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40c42e:	bf cc e0 40 00       	mov    $0x40e0cc,%edi
  40c433:	e8 28 6d ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40c438:	bf 10 e0 40 00       	mov    $0x40e010,%edi
  40c43d:	e8 ae 6d ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40c442:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40c448:	bf 10 e0 40 00       	mov    $0x40e010,%edi
  40c44d:	e8 9e 6d ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40c452:	bf cc e0 40 00       	mov    $0x40e0cc,%edi
  40c457:	e8 04 6d ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40c45c:	bf 10 e0 40 00       	mov    $0x40e010,%edi
  40c461:	e8 8a 6d ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40c466:	bb 01 00 00 00       	mov    $0x1,%ebx
  40c46b:	e9 dc f0 ff ff       	jmpq   40b54c <_Z6windowid+0x127c>
  40c470:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40c477:	00 
  40c478:	e9 f5 f5 ff ff       	jmpq   40ba72 <_Z6windowid+0x17a2>
  40c47d:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40c484:	00 
  40c485:	e9 3a f6 ff ff       	jmpq   40bac4 <_Z6windowid+0x17f4>
  40c48a:	48 8d bc 24 30 01 00 	lea    0x130(%rsp),%rdi
  40c491:	00 
  40c492:	e9 f3 fa ff ff       	jmpq   40bf8a <_Z6windowid+0x1cba>
  40c497:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40c49e:	00 
  40c49f:	e9 43 fc ff ff       	jmpq   40c0e7 <_Z6windowid+0x1e17>
  40c4a4:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40c4ab:	00 
  40c4ac:	e9 3e fb ff ff       	jmpq   40bfef <_Z6windowid+0x1d1f>
  40c4b1:	48 8d 84 24 50 01 00 	lea    0x150(%rsp),%rax
  40c4b8:	00 
  40c4b9:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40c4be:	48 8d bc 24 90 01 00 	lea    0x190(%rsp),%rdi
  40c4c5:	00 
  40c4c6:	e9 b7 fb ff ff       	jmpq   40c082 <_Z6windowid+0x1db2>
  40c4cb:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40c4d2:	00 
  40c4d3:	e9 1a e0 ff ff       	jmpq   40a4f2 <_Z6windowid+0x222>
  40c4d8:	48 8d bc 24 60 01 00 	lea    0x160(%rsp),%rdi
  40c4df:	00 
  40c4e0:	e9 67 fc ff ff       	jmpq   40c14c <_Z6windowid+0x1e7c>
  40c4e5:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  40c4ec:	00 
  40c4ed:	e9 c2 fc ff ff       	jmpq   40c1b4 <_Z6windowid+0x1ee4>
  40c4f2:	bf cc e0 40 00       	mov    $0x40e0cc,%edi
  40c4f7:	e8 64 6c ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40c4fc:	bf 10 e0 40 00       	mov    $0x40e010,%edi
  40c501:	e8 ea 6c ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40c506:	bf 10 e0 40 00       	mov    $0x40e010,%edi
  40c50b:	e8 e0 6c ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40c510:	bf c3 e0 40 00       	mov    $0x40e0c3,%edi
  40c515:	e8 86 6c ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40c51a:	bf 10 e0 40 00       	mov    $0x40e010,%edi
  40c51f:	e8 cc 6c ff ff       	callq  4031f0 <_ZSt19__throw_logic_errorPKc@plt>
  40c524:	48 89 c3             	mov    %rax,%rbx
  40c527:	e9 e6 6f ff ff       	jmpq   403512 <_Z6windowid.cold>
  40c52c:	48 89 c3             	mov    %rax,%rbx
  40c52f:	c5 f8 77             	vzeroupper 
  40c532:	e9 57 70 ff ff       	jmpq   40358e <_Z6windowid.cold+0x7c>
  40c537:	48 89 c3             	mov    %rax,%rbx
  40c53a:	e9 9e 70 ff ff       	jmpq   4035dd <_Z6windowid.cold+0xcb>
  40c53f:	48 89 c3             	mov    %rax,%rbx
  40c542:	e9 d0 70 ff ff       	jmpq   403617 <_Z6windowid.cold+0x105>
  40c547:	48 89 c3             	mov    %rax,%rbx
  40c54a:	c5 f8 77             	vzeroupper 
  40c54d:	e9 e2 70 ff ff       	jmpq   403634 <_Z6windowid.cold+0x122>
  40c552:	48 89 c3             	mov    %rax,%rbx
  40c555:	e9 07 70 ff ff       	jmpq   403561 <_Z6windowid.cold+0x4f>
  40c55a:	49 89 c4             	mov    %rax,%r12
  40c55d:	e9 16 71 ff ff       	jmpq   403678 <_Z6windowid.cold+0x166>
  40c562:	48 89 c3             	mov    %rax,%rbx
  40c565:	c5 f8 77             	vzeroupper 
  40c568:	e9 65 71 ff ff       	jmpq   4036d2 <_Z6windowid.cold+0x1c0>
  40c56d:	48 89 c3             	mov    %rax,%rbx
  40c570:	e9 4d 71 ff ff       	jmpq   4036c2 <_Z6windowid.cold+0x1b0>
  40c575:	48 89 c3             	mov    %rax,%rbx
  40c578:	e9 1a 72 ff ff       	jmpq   403797 <_Z6windowid.cold+0x285>
  40c57d:	49 89 c4             	mov    %rax,%r12
  40c580:	e9 27 72 ff ff       	jmpq   4037ac <_Z6windowid.cold+0x29a>
  40c585:	48 89 c3             	mov    %rax,%rbx
  40c588:	c5 f8 77             	vzeroupper 
  40c58b:	e9 bc 6f ff ff       	jmpq   40354c <_Z6windowid.cold+0x3a>
  40c590:	48 89 c3             	mov    %rax,%rbx
  40c593:	c5 f8 77             	vzeroupper 
  40c596:	e9 cd 71 ff ff       	jmpq   403768 <_Z6windowid.cold+0x256>
  40c59b:	49 89 c4             	mov    %rax,%r12
  40c59e:	c5 f8 77             	vzeroupper 
  40c5a1:	e9 23 72 ff ff       	jmpq   4037c9 <_Z6windowid.cold+0x2b7>
  40c5a6:	48 89 c3             	mov    %rax,%rbx
  40c5a9:	e9 4e 72 ff ff       	jmpq   4037fc <_Z6windowid.cold+0x2ea>
  40c5ae:	48 89 c3             	mov    %rax,%rbx
  40c5b1:	c5 f8 77             	vzeroupper 
  40c5b4:	e9 3b 71 ff ff       	jmpq   4036f4 <_Z6windowid.cold+0x1e2>
  40c5b9:	48 89 c3             	mov    %rax,%rbx
  40c5bc:	c5 f8 77             	vzeroupper 
  40c5bf:	e9 b9 72 ff ff       	jmpq   40387d <_Z6windowid.cold+0x36b>
  40c5c4:	48 89 c3             	mov    %rax,%rbx
  40c5c7:	e9 66 72 ff ff       	jmpq   403832 <_Z6windowid.cold+0x320>
  40c5cc:	48 89 c7             	mov    %rax,%rdi
  40c5cf:	e9 b8 72 ff ff       	jmpq   40388c <_Z6windowid.cold+0x37a>
  40c5d4:	48 89 c3             	mov    %rax,%rbx
  40c5d7:	c5 f8 77             	vzeroupper 
  40c5da:	e9 85 72 ff ff       	jmpq   403864 <_Z6windowid.cold+0x352>
  40c5df:	48 89 c3             	mov    %rax,%rbx
  40c5e2:	c5 f8 77             	vzeroupper 
  40c5e5:	e9 58 72 ff ff       	jmpq   403842 <_Z6windowid.cold+0x330>
  40c5ea:	48 89 c3             	mov    %rax,%rbx
  40c5ed:	e9 ac 72 ff ff       	jmpq   40389e <_Z6windowid.cold+0x38c>
  40c5f2:	48 89 c3             	mov    %rax,%rbx
  40c5f5:	e9 b6 72 ff ff       	jmpq   4038b0 <_Z6windowid.cold+0x39e>
  40c5fa:	48 89 c3             	mov    %rax,%rbx
  40c5fd:	e9 c0 72 ff ff       	jmpq   4038c2 <_Z6windowid.cold+0x3b0>
  40c602:	48 89 c3             	mov    %rax,%rbx
  40c605:	c5 f8 77             	vzeroupper 
  40c608:	e9 a8 6f ff ff       	jmpq   4035b5 <_Z6windowid.cold+0xa3>
  40c60d:	48 89 c3             	mov    %rax,%rbx
  40c610:	e9 db 72 ff ff       	jmpq   4038f0 <_Z6windowid.cold+0x3de>
  40c615:	48 89 c3             	mov    %rax,%rbx
  40c618:	c5 f8 77             	vzeroupper 
  40c61b:	e9 22 71 ff ff       	jmpq   403742 <_Z6windowid.cold+0x230>
  40c620:	48 89 c3             	mov    %rax,%rbx
  40c623:	c5 f8 77             	vzeroupper 
  40c626:	e9 e2 72 ff ff       	jmpq   40390d <_Z6windowid.cold+0x3fb>
  40c62b:	48 89 c3             	mov    %rax,%rbx
  40c62e:	e9 16 73 ff ff       	jmpq   403949 <_Z6windowid.cold+0x437>
  40c633:	48 89 c3             	mov    %rax,%rbx
  40c636:	e9 20 73 ff ff       	jmpq   40395b <_Z6windowid.cold+0x449>
  40c63b:	48 89 c3             	mov    %rax,%rbx
  40c63e:	e9 70 73 ff ff       	jmpq   4039b3 <_Z6windowid.cold+0x4a1>
  40c643:	48 89 c3             	mov    %rax,%rbx
  40c646:	c5 f8 77             	vzeroupper 
  40c649:	e9 f5 73 ff ff       	jmpq   403a43 <_Z6windowid.cold+0x531>
  40c64e:	48 89 c3             	mov    %rax,%rbx
  40c651:	c5 f8 77             	vzeroupper 
  40c654:	e9 3a 74 ff ff       	jmpq   403a93 <_Z6windowid.cold+0x581>
  40c659:	48 89 c3             	mov    %rax,%rbx
  40c65c:	e9 11 74 ff ff       	jmpq   403a72 <_Z6windowid.cold+0x560>
  40c661:	48 89 c3             	mov    %rax,%rbx
  40c664:	e9 59 74 ff ff       	jmpq   403ac2 <_Z6windowid.cold+0x5b0>
  40c669:	e9 a5 74 ff ff       	jmpq   403b13 <_Z6windowid.cold+0x601>
  40c66e:	48 89 c3             	mov    %rax,%rbx
  40c671:	c5 f8 77             	vzeroupper 
  40c674:	e9 59 74 ff ff       	jmpq   403ad2 <_Z6windowid.cold+0x5c0>
  40c679:	48 89 c3             	mov    %rax,%rbx
  40c67c:	c5 f8 77             	vzeroupper 
  40c67f:	e9 93 70 ff ff       	jmpq   403717 <_Z6windowid.cold+0x205>
  40c684:	48 89 c3             	mov    %rax,%rbx
  40c687:	e9 43 76 ff ff       	jmpq   403ccf <_Z6windowid.cold+0x7bd>
  40c68c:	48 89 c3             	mov    %rax,%rbx
  40c68f:	e9 3b 76 ff ff       	jmpq   403ccf <_Z6windowid.cold+0x7bd>
  40c694:	48 89 c3             	mov    %rax,%rbx
  40c697:	c5 f8 77             	vzeroupper 
  40c69a:	e9 7c 73 ff ff       	jmpq   403a1b <_Z6windowid.cold+0x509>
  40c69f:	48 89 c3             	mov    %rax,%rbx
  40c6a2:	c5 f8 77             	vzeroupper 
  40c6a5:	e9 e9 74 ff ff       	jmpq   403b93 <_Z6windowid.cold+0x681>
  40c6aa:	c5 f8 77             	vzeroupper 
  40c6ad:	e9 be 74 ff ff       	jmpq   403b70 <_Z6windowid.cold+0x65e>
  40c6b2:	49 89 c5             	mov    %rax,%r13
  40c6b5:	e9 a3 74 ff ff       	jmpq   403b5d <_Z6windowid.cold+0x64b>
  40c6ba:	48 89 c3             	mov    %rax,%rbx
  40c6bd:	e9 ef 74 ff ff       	jmpq   403bb1 <_Z6windowid.cold+0x69f>
  40c6c2:	48 89 c7             	mov    %rax,%rdi
  40c6c5:	e9 fc 74 ff ff       	jmpq   403bc6 <_Z6windowid.cold+0x6b4>
  40c6ca:	48 89 c7             	mov    %rax,%rdi
  40c6cd:	e9 06 75 ff ff       	jmpq   403bd8 <_Z6windowid.cold+0x6c6>
  40c6d2:	48 89 c3             	mov    %rax,%rbx
  40c6d5:	e9 10 75 ff ff       	jmpq   403bea <_Z6windowid.cold+0x6d8>
  40c6da:	48 89 c3             	mov    %rax,%rbx
  40c6dd:	c5 f8 77             	vzeroupper 
  40c6e0:	e9 54 75 ff ff       	jmpq   403c39 <_Z6windowid.cold+0x727>
  40c6e5:	48 89 c3             	mov    %rax,%rbx
  40c6e8:	e9 b4 75 ff ff       	jmpq   403ca1 <_Z6windowid.cold+0x78f>
  40c6ed:	48 89 c3             	mov    %rax,%rbx
  40c6f0:	e9 f9 72 ff ff       	jmpq   4039ee <_Z6windowid.cold+0x4dc>
  40c6f5:	48 89 c3             	mov    %rax,%rbx
  40c6f8:	e9 1b 75 ff ff       	jmpq   403c18 <_Z6windowid.cold+0x706>
  40c6fd:	48 89 c3             	mov    %rax,%rbx
  40c700:	c5 f8 77             	vzeroupper 
  40c703:	e9 7c 72 ff ff       	jmpq   403984 <_Z6windowid.cold+0x472>
  40c708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40c70f:	00 

000000000040c710 <_ZNSt10filesystem7__cxx114pathD1Ev>:
  40c710:	53                   	push   %rbx
  40c711:	48 89 fb             	mov    %rdi,%rbx
  40c714:	48 8b 77 20          	mov    0x20(%rdi),%rsi
  40c718:	48 85 f6             	test   %rsi,%rsi
  40c71b:	74 09                	je     40c726 <_ZNSt10filesystem7__cxx114pathD1Ev+0x16>
  40c71d:	48 8d 7f 20          	lea    0x20(%rdi),%rdi
  40c721:	e8 7a 69 ff ff       	callq  4030a0 <_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@plt>
  40c726:	48 8b 3b             	mov    (%rbx),%rdi
  40c729:	48 8d 43 10          	lea    0x10(%rbx),%rax
  40c72d:	48 39 c7             	cmp    %rax,%rdi
  40c730:	74 0e                	je     40c740 <_ZNSt10filesystem7__cxx114pathD1Ev+0x30>
  40c732:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40c736:	5b                   	pop    %rbx
  40c737:	48 ff c6             	inc    %rsi
  40c73a:	e9 71 6b ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  40c73f:	90                   	nop
  40c740:	5b                   	pop    %rbx
  40c741:	c3                   	retq   
  40c742:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40c749:	00 00 00 
  40c74c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c750 <_ZNK8Counters4readEv>:
  40c750:	41 56                	push   %r14
  40c752:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  40c756:	41 55                	push   %r13
  40c758:	41 54                	push   %r12
  40c75a:	49 89 fc             	mov    %rdi,%r12
  40c75d:	55                   	push   %rbp
  40c75e:	53                   	push   %rbx
  40c75f:	48 83 ec 20          	sub    $0x20,%rsp
  40c763:	48 8b 05 0e 1e 00 00 	mov    0x1e0e(%rip),%rax        # 40e578 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0xd8>
  40c76a:	0f b6 6e 30          	movzbl 0x30(%rsi),%ebp
  40c76e:	c6 07 00             	movb   $0x0,(%rdi)
  40c771:	48 89 47 18          	mov    %rax,0x18(%rdi)
  40c775:	c7 47 20 00 00 00 00 	movl   $0x0,0x20(%rdi)
  40c77c:	c5 f9 11 47 08       	vmovupd %xmm0,0x8(%rdi)
  40c781:	40 84 ed             	test   %bpl,%bpl
  40c784:	0f 84 e5 00 00 00    	je     40c86f <_ZNK8Counters4readEv+0x11f>
  40c78a:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
  40c78e:	48 8b 16             	mov    (%rsi),%rdx
  40c791:	48 89 c8             	mov    %rcx,%rax
  40c794:	48 29 d0             	sub    %rdx,%rax
  40c797:	48 c1 f8 02          	sar    $0x2,%rax
  40c79b:	c6 07 01             	movb   $0x1,(%rdi)
  40c79e:	89 47 20             	mov    %eax,0x20(%rdi)
  40c7a1:	49 89 f6             	mov    %rsi,%r14
  40c7a4:	48 39 d1             	cmp    %rdx,%rcx
  40c7a7:	0f 84 c2 00 00 00    	je     40c86f <_ZNK8Counters4readEv+0x11f>
  40c7ad:	45 31 ed             	xor    %r13d,%r13d
  40c7b0:	42 8b 3c aa          	mov    (%rdx,%r13,4),%edi
  40c7b4:	48 89 e6             	mov    %rsp,%rsi
  40c7b7:	ba 18 00 00 00       	mov    $0x18,%edx
  40c7bc:	4a 8d 1c ad 00 00 00 	lea    0x0(,%r13,4),%rbx
  40c7c3:	00 
  40c7c4:	e8 a7 6b ff ff       	callq  403370 <read@plt>
  40c7c9:	48 83 f8 18          	cmp    $0x18,%rax
  40c7cd:	0f 85 05 01 00 00    	jne    40c8d8 <_ZNK8Counters4readEv+0x188>
  40c7d3:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40c7d8:	48 85 c0             	test   %rax,%rax
  40c7db:	0f 84 f7 00 00 00    	je     40c8d8 <_ZNK8Counters4readEv+0x188>
  40c7e1:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  40c7e5:	62 f1 ef 08 7b c8    	vcvtusi2sd %rax,%xmm2,%xmm1
  40c7eb:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40c7f0:	ba 01 00 00 00       	mov    $0x1,%edx
  40c7f5:	48 85 c0             	test   %rax,%rax
  40c7f8:	48 0f 45 d0          	cmovne %rax,%rdx
  40c7fc:	62 f1 ef 08 7b d8    	vcvtusi2sd %rax,%xmm2,%xmm3
  40c802:	62 f1 ef 08 7b c2    	vcvtusi2sd %rdx,%xmm2,%xmm0
  40c808:	49 8b 46 18          	mov    0x18(%r14),%rax
  40c80c:	8b 3c 18             	mov    (%rax,%rbx,1),%edi
  40c80f:	c5 f3 5e c0          	vdivsd %xmm0,%xmm1,%xmm0
  40c813:	c4 c1 7b 5d 44 24 18 	vminsd 0x18(%r12),%xmm0,%xmm0
  40c81a:	c4 c1 7b 11 44 24 18 	vmovsd %xmm0,0x18(%r12)
  40c821:	62 f1 ef 08 7b 04 24 	vcvtusi2sdq (%rsp),%xmm2,%xmm0
  40c828:	c5 fb 59 c3          	vmulsd %xmm3,%xmm0,%xmm0
  40c82c:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
  40c830:	c4 c1 7b 58 44 24 08 	vaddsd 0x8(%r12),%xmm0,%xmm0
  40c837:	c4 c1 7b 11 44 24 08 	vmovsd %xmm0,0x8(%r12)
  40c83e:	85 ff                	test   %edi,%edi
  40c840:	79 3e                	jns    40c880 <_ZNK8Counters4readEv+0x130>
  40c842:	31 ed                	xor    %ebp,%ebp
  40c844:	49 8b 16             	mov    (%r14),%rdx
  40c847:	49 8b 46 08          	mov    0x8(%r14),%rax
  40c84b:	49 ff c5             	inc    %r13
  40c84e:	48 29 d0             	sub    %rdx,%rax
  40c851:	48 c1 f8 02          	sar    $0x2,%rax
  40c855:	49 39 c5             	cmp    %rax,%r13
  40c858:	0f 82 52 ff ff ff    	jb     40c7b0 <_ZNK8Counters4readEv+0x60>
  40c85e:	40 84 ed             	test   %bpl,%bpl
  40c861:	75 0c                	jne    40c86f <_ZNK8Counters4readEv+0x11f>
  40c863:	48 8b 05 ae 1d 00 00 	mov    0x1dae(%rip),%rax        # 40e618 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x178>
  40c86a:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  40c86f:	48 83 c4 20          	add    $0x20,%rsp
  40c873:	5b                   	pop    %rbx
  40c874:	5d                   	pop    %rbp
  40c875:	4c 89 e0             	mov    %r12,%rax
  40c878:	41 5c                	pop    %r12
  40c87a:	41 5d                	pop    %r13
  40c87c:	41 5e                	pop    %r14
  40c87e:	c3                   	retq   
  40c87f:	90                   	nop
  40c880:	ba 18 00 00 00       	mov    $0x18,%edx
  40c885:	48 89 e6             	mov    %rsp,%rsi
  40c888:	e8 e3 6a ff ff       	callq  403370 <read@plt>
  40c88d:	48 83 f8 18          	cmp    $0x18,%rax
  40c891:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  40c895:	75 ab                	jne    40c842 <_ZNK8Counters4readEv+0xf2>
  40c897:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40c89c:	48 85 c0             	test   %rax,%rax
  40c89f:	74 a1                	je     40c842 <_ZNK8Counters4readEv+0xf2>
  40c8a1:	62 f1 ef 08 7b 4c 24 	vcvtusi2sdq 0x8(%rsp),%xmm2,%xmm1
  40c8a8:	01 
  40c8a9:	62 f1 ef 08 7b 04 24 	vcvtusi2sdq (%rsp),%xmm2,%xmm0
  40c8b0:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
  40c8b4:	62 f1 ef 08 7b c8    	vcvtusi2sd %rax,%xmm2,%xmm1
  40c8ba:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
  40c8be:	c4 c1 7b 58 44 24 10 	vaddsd 0x10(%r12),%xmm0,%xmm0
  40c8c5:	c4 c1 7b 11 44 24 10 	vmovsd %xmm0,0x10(%r12)
  40c8cc:	e9 73 ff ff ff       	jmpq   40c844 <_ZNK8Counters4readEv+0xf4>
  40c8d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40c8d8:	41 c6 04 24 00       	movb   $0x0,(%r12)
  40c8dd:	48 83 c4 20          	add    $0x20,%rsp
  40c8e1:	5b                   	pop    %rbx
  40c8e2:	5d                   	pop    %rbp
  40c8e3:	4c 89 e0             	mov    %r12,%rax
  40c8e6:	41 5c                	pop    %r12
  40c8e8:	41 5d                	pop    %r13
  40c8ea:	41 5e                	pop    %r14
  40c8ec:	c3                   	retq   
  40c8ed:	0f 1f 00             	nopl   (%rax)

000000000040c8f0 <_ZN8CountersD1Ev>:
  40c8f0:	41 54                	push   %r12
  40c8f2:	49 89 fc             	mov    %rdi,%r12
  40c8f5:	55                   	push   %rbp
  40c8f6:	53                   	push   %rbx
  40c8f7:	48 8b 6f 08          	mov    0x8(%rdi),%rbp
  40c8fb:	48 8b 1f             	mov    (%rdi),%rbx
  40c8fe:	48 39 dd             	cmp    %rbx,%rbp
  40c901:	74 19                	je     40c91c <_ZN8CountersD1Ev+0x2c>
  40c903:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40c908:	8b 3b                	mov    (%rbx),%edi
  40c90a:	85 ff                	test   %edi,%edi
  40c90c:	78 05                	js     40c913 <_ZN8CountersD1Ev+0x23>
  40c90e:	e8 9d 6b ff ff       	callq  4034b0 <close@plt>
  40c913:	48 83 c3 04          	add    $0x4,%rbx
  40c917:	48 39 dd             	cmp    %rbx,%rbp
  40c91a:	75 ec                	jne    40c908 <_ZN8CountersD1Ev+0x18>
  40c91c:	49 8b 7c 24 18       	mov    0x18(%r12),%rdi
  40c921:	49 8b 6c 24 20       	mov    0x20(%r12),%rbp
  40c926:	48 89 fb             	mov    %rdi,%rbx
  40c929:	48 39 fd             	cmp    %rdi,%rbp
  40c92c:	74 1b                	je     40c949 <_ZN8CountersD1Ev+0x59>
  40c92e:	66 90                	xchg   %ax,%ax
  40c930:	8b 3b                	mov    (%rbx),%edi
  40c932:	85 ff                	test   %edi,%edi
  40c934:	78 05                	js     40c93b <_ZN8CountersD1Ev+0x4b>
  40c936:	e8 75 6b ff ff       	callq  4034b0 <close@plt>
  40c93b:	48 83 c3 04          	add    $0x4,%rbx
  40c93f:	48 39 dd             	cmp    %rbx,%rbp
  40c942:	75 ec                	jne    40c930 <_ZN8CountersD1Ev+0x40>
  40c944:	49 8b 7c 24 18       	mov    0x18(%r12),%rdi
  40c949:	48 85 ff             	test   %rdi,%rdi
  40c94c:	74 0d                	je     40c95b <_ZN8CountersD1Ev+0x6b>
  40c94e:	49 8b 74 24 28       	mov    0x28(%r12),%rsi
  40c953:	48 29 fe             	sub    %rdi,%rsi
  40c956:	e8 55 69 ff ff       	callq  4032b0 <_ZdlPvm@plt>
  40c95b:	49 8b 3c 24          	mov    (%r12),%rdi
  40c95f:	48 85 ff             	test   %rdi,%rdi
  40c962:	74 14                	je     40c978 <_ZN8CountersD1Ev+0x88>
  40c964:	49 8b 74 24 10       	mov    0x10(%r12),%rsi
  40c969:	5b                   	pop    %rbx
  40c96a:	5d                   	pop    %rbp
  40c96b:	48 29 fe             	sub    %rdi,%rsi
  40c96e:	41 5c                	pop    %r12
  40c970:	e9 3b 69 ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  40c975:	0f 1f 00             	nopl   (%rax)
  40c978:	5b                   	pop    %rbx
  40c979:	5d                   	pop    %rbp
  40c97a:	41 5c                	pop    %r12
  40c97c:	c3                   	retq   
  40c97d:	0f 1f 00             	nopl   (%rax)

000000000040c980 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>:
  40c980:	41 57                	push   %r15
  40c982:	49 89 ff             	mov    %rdi,%r15
  40c985:	41 56                	push   %r14
  40c987:	41 55                	push   %r13
  40c989:	49 89 f5             	mov    %rsi,%r13
  40c98c:	41 54                	push   %r12
  40c98e:	49 89 cc             	mov    %rcx,%r12
  40c991:	55                   	push   %rbp
  40c992:	48 89 d5             	mov    %rdx,%rbp
  40c995:	53                   	push   %rbx
  40c996:	48 83 ec 28          	sub    $0x28,%rsp
  40c99a:	44 89 44 24 0c       	mov    %r8d,0xc(%rsp)
  40c99f:	e8 9c 66 ff ff       	callq  403040 <__errno_location@plt>
  40c9a4:	44 8b 30             	mov    (%rax),%r14d
  40c9a7:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40c9ad:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  40c9b1:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  40c9b6:	48 89 ef             	mov    %rbp,%rdi
  40c9b9:	48 89 c3             	mov    %rax,%rbx
  40c9bc:	41 ff d7             	callq  *%r15
  40c9bf:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40c9c4:	48 39 e9             	cmp    %rbp,%rcx
  40c9c7:	74 3f                	je     40ca08 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x88>
  40c9c9:	8b 33                	mov    (%rbx),%esi
  40c9cb:	83 fe 22             	cmp    $0x22,%esi
  40c9ce:	74 30                	je     40ca00 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  40c9d0:	ba 00 00 00 80       	mov    $0x80000000,%edx
  40c9d5:	48 01 c2             	add    %rax,%rdx
  40c9d8:	48 c1 ea 20          	shr    $0x20,%rdx
  40c9dc:	75 22                	jne    40ca00 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x80>
  40c9de:	4d 85 e4             	test   %r12,%r12
  40c9e1:	74 07                	je     40c9ea <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x6a>
  40c9e3:	48 29 e9             	sub    %rbp,%rcx
  40c9e6:	49 89 0c 24          	mov    %rcx,(%r12)
  40c9ea:	85 f6                	test   %esi,%esi
  40c9ec:	75 03                	jne    40c9f1 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x71>
  40c9ee:	44 89 33             	mov    %r14d,(%rbx)
  40c9f1:	48 83 c4 28          	add    $0x28,%rsp
  40c9f5:	5b                   	pop    %rbx
  40c9f6:	5d                   	pop    %rbp
  40c9f7:	41 5c                	pop    %r12
  40c9f9:	41 5d                	pop    %r13
  40c9fb:	41 5e                	pop    %r14
  40c9fd:	41 5f                	pop    %r15
  40c9ff:	c3                   	retq   
  40ca00:	4c 89 ef             	mov    %r13,%rdi
  40ca03:	e8 78 69 ff ff       	callq  403380 <_ZSt20__throw_out_of_rangePKc@plt>
  40ca08:	4c 89 ef             	mov    %r13,%rdi
  40ca0b:	e8 90 67 ff ff       	callq  4031a0 <_ZSt24__throw_invalid_argumentPKc@plt>
  40ca10:	48 89 c7             	mov    %rax,%rdi
  40ca13:	83 3b 00             	cmpl   $0x0,(%rbx)
  40ca16:	75 03                	jne    40ca1b <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x9b>
  40ca18:	44 89 33             	mov    %r14d,(%rbx)
  40ca1b:	c5 f8 77             	vzeroupper 
  40ca1e:	e8 2d 6a ff ff       	callq  403450 <_Unwind_Resume@plt>
  40ca23:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40ca2a:	00 00 00 
  40ca2d:	0f 1f 00             	nopl   (%rax)

000000000040ca30 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi>:
  40ca30:	55                   	push   %rbp
  40ca31:	48 89 f0             	mov    %rsi,%rax
  40ca34:	48 89 e5             	mov    %rsp,%rbp
  40ca37:	41 55                	push   %r13
  40ca39:	41 54                	push   %r12
  40ca3b:	49 89 d4             	mov    %rdx,%r12
  40ca3e:	53                   	push   %rbx
  40ca3f:	48 89 fb             	mov    %rdi,%rbx
  40ca42:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40ca46:	48 8b 3f             	mov    (%rdi),%rdi
  40ca49:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40ca4d:	48 29 fe             	sub    %rdi,%rsi
  40ca50:	48 89 f2             	mov    %rsi,%rdx
  40ca53:	48 c1 fa 02          	sar    $0x2,%rdx
  40ca57:	48 39 c2             	cmp    %rax,%rdx
  40ca5a:	0f 82 60 02 00 00    	jb     40ccc0 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x290>
  40ca60:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  40ca64:	49 89 c8             	mov    %rcx,%r8
  40ca67:	49 29 f8             	sub    %rdi,%r8
  40ca6a:	49 c1 f8 02          	sar    $0x2,%r8
  40ca6e:	4c 39 c0             	cmp    %r8,%rax
  40ca71:	0f 86 71 01 00 00    	jbe    40cbe8 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x1b8>
  40ca77:	41 8b 34 24          	mov    (%r12),%esi
  40ca7b:	48 39 cf             	cmp    %rcx,%rdi
  40ca7e:	0f 84 a0 00 00 00    	je     40cb24 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0xf4>
  40ca84:	4c 8d 49 fc          	lea    -0x4(%rcx),%r9
  40ca88:	49 29 f9             	sub    %rdi,%r9
  40ca8b:	4d 89 ca             	mov    %r9,%r10
  40ca8e:	49 c1 ea 02          	shr    $0x2,%r10
  40ca92:	48 89 fa             	mov    %rdi,%rdx
  40ca95:	4d 8d 5a 01          	lea    0x1(%r10),%r11
  40ca99:	49 83 f9 18          	cmp    $0x18,%r9
  40ca9d:	0f 86 34 03 00 00    	jbe    40cdd7 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x3a7>
  40caa3:	4d 89 d9             	mov    %r11,%r9
  40caa6:	49 c1 e9 03          	shr    $0x3,%r9
  40caaa:	49 c1 e1 05          	shl    $0x5,%r9
  40caae:	62 f2 7d 28 7c c6    	vpbroadcastd %esi,%ymm0
  40cab4:	49 01 f9             	add    %rdi,%r9
  40cab7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40cabe:	00 00 
  40cac0:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40cac4:	48 83 c2 20          	add    $0x20,%rdx
  40cac8:	49 39 d1             	cmp    %rdx,%r9
  40cacb:	75 f3                	jne    40cac0 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x90>
  40cacd:	4d 89 d9             	mov    %r11,%r9
  40cad0:	49 83 e1 f8          	and    $0xfffffffffffffff8,%r9
  40cad4:	4a 8d 14 8f          	lea    (%rdi,%r9,4),%rdx
  40cad8:	4d 39 cb             	cmp    %r9,%r11
  40cadb:	74 43                	je     40cb20 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0xf0>
  40cadd:	4d 29 ca             	sub    %r9,%r10
  40cae0:	4d 8d 5a 01          	lea    0x1(%r10),%r11
  40cae4:	49 83 fa 02          	cmp    $0x2,%r10
  40cae8:	76 1c                	jbe    40cb06 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0xd6>
  40caea:	62 f2 7d 08 7c c6    	vpbroadcastd %esi,%xmm0
  40caf0:	c4 a1 7a 7f 04 8f    	vmovdqu %xmm0,(%rdi,%r9,4)
  40caf6:	4c 89 df             	mov    %r11,%rdi
  40caf9:	48 83 e7 fc          	and    $0xfffffffffffffffc,%rdi
  40cafd:	48 8d 14 ba          	lea    (%rdx,%rdi,4),%rdx
  40cb01:	49 39 fb             	cmp    %rdi,%r11
  40cb04:	74 1a                	je     40cb20 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0xf0>
  40cb06:	48 8d 7a 04          	lea    0x4(%rdx),%rdi
  40cb0a:	89 32                	mov    %esi,(%rdx)
  40cb0c:	48 39 f9             	cmp    %rdi,%rcx
  40cb0f:	74 0f                	je     40cb20 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0xf0>
  40cb11:	48 8d 7a 08          	lea    0x8(%rdx),%rdi
  40cb15:	89 72 04             	mov    %esi,0x4(%rdx)
  40cb18:	48 39 f9             	cmp    %rdi,%rcx
  40cb1b:	74 03                	je     40cb20 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0xf0>
  40cb1d:	89 72 08             	mov    %esi,0x8(%rdx)
  40cb20:	41 8b 34 24          	mov    (%r12),%esi
  40cb24:	4c 29 c0             	sub    %r8,%rax
  40cb27:	48 c1 e0 02          	shl    $0x2,%rax
  40cb2b:	4c 8d 04 01          	lea    (%rcx,%rax,1),%r8
  40cb2f:	4c 39 c1             	cmp    %r8,%rcx
  40cb32:	0f 84 97 00 00 00    	je     40cbcf <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x19f>
  40cb38:	48 83 e8 04          	sub    $0x4,%rax
  40cb3c:	48 89 c7             	mov    %rax,%rdi
  40cb3f:	48 c1 ef 02          	shr    $0x2,%rdi
  40cb43:	48 89 ca             	mov    %rcx,%rdx
  40cb46:	4c 8d 4f 01          	lea    0x1(%rdi),%r9
  40cb4a:	48 83 f8 18          	cmp    $0x18,%rax
  40cb4e:	0f 86 8b 02 00 00    	jbe    40cddf <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x3af>
  40cb54:	4c 89 c8             	mov    %r9,%rax
  40cb57:	48 c1 e8 03          	shr    $0x3,%rax
  40cb5b:	48 c1 e0 05          	shl    $0x5,%rax
  40cb5f:	62 f2 7d 28 7c c6    	vpbroadcastd %esi,%ymm0
  40cb65:	48 01 c8             	add    %rcx,%rax
  40cb68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40cb6f:	00 
  40cb70:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40cb74:	48 83 c2 20          	add    $0x20,%rdx
  40cb78:	48 39 c2             	cmp    %rax,%rdx
  40cb7b:	75 f3                	jne    40cb70 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x140>
  40cb7d:	4c 89 ca             	mov    %r9,%rdx
  40cb80:	48 83 e2 f8          	and    $0xfffffffffffffff8,%rdx
  40cb84:	48 8d 04 91          	lea    (%rcx,%rdx,4),%rax
  40cb88:	49 39 d1             	cmp    %rdx,%r9
  40cb8b:	74 42                	je     40cbcf <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x19f>
  40cb8d:	48 29 d7             	sub    %rdx,%rdi
  40cb90:	4c 8d 4f 01          	lea    0x1(%rdi),%r9
  40cb94:	48 83 ff 02          	cmp    $0x2,%rdi
  40cb98:	76 1b                	jbe    40cbb5 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x185>
  40cb9a:	62 f2 7d 08 7c c6    	vpbroadcastd %esi,%xmm0
  40cba0:	c5 fa 7f 04 91       	vmovdqu %xmm0,(%rcx,%rdx,4)
  40cba5:	4c 89 ca             	mov    %r9,%rdx
  40cba8:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  40cbac:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
  40cbb0:	49 39 d1             	cmp    %rdx,%r9
  40cbb3:	74 1a                	je     40cbcf <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x19f>
  40cbb5:	48 8d 50 04          	lea    0x4(%rax),%rdx
  40cbb9:	89 30                	mov    %esi,(%rax)
  40cbbb:	49 39 d0             	cmp    %rdx,%r8
  40cbbe:	74 0f                	je     40cbcf <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x19f>
  40cbc0:	48 8d 50 08          	lea    0x8(%rax),%rdx
  40cbc4:	89 70 04             	mov    %esi,0x4(%rax)
  40cbc7:	49 39 d0             	cmp    %rdx,%r8
  40cbca:	74 03                	je     40cbcf <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x19f>
  40cbcc:	89 70 08             	mov    %esi,0x8(%rax)
  40cbcf:	4c 89 43 08          	mov    %r8,0x8(%rbx)
  40cbd3:	c5 f8 77             	vzeroupper 
  40cbd6:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40cbda:	5b                   	pop    %rbx
  40cbdb:	41 5c                	pop    %r12
  40cbdd:	41 5d                	pop    %r13
  40cbdf:	5d                   	pop    %rbp
  40cbe0:	c3                   	retq   
  40cbe1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40cbe8:	48 89 fe             	mov    %rdi,%rsi
  40cbeb:	48 85 c0             	test   %rax,%rax
  40cbee:	0f 84 b5 00 00 00    	je     40cca9 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x279>
  40cbf4:	48 c1 e0 02          	shl    $0x2,%rax
  40cbf8:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
  40cbfc:	45 8b 0c 24          	mov    (%r12),%r9d
  40cc00:	48 39 f7             	cmp    %rsi,%rdi
  40cc03:	0f 84 a0 00 00 00    	je     40cca9 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x279>
  40cc09:	48 83 e8 04          	sub    $0x4,%rax
  40cc0d:	49 89 c0             	mov    %rax,%r8
  40cc10:	49 c1 e8 02          	shr    $0x2,%r8
  40cc14:	48 89 fa             	mov    %rdi,%rdx
  40cc17:	4d 8d 50 01          	lea    0x1(%r8),%r10
  40cc1b:	48 83 f8 18          	cmp    $0x18,%rax
  40cc1f:	0f 86 d1 01 00 00    	jbe    40cdf6 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x3c6>
  40cc25:	4c 89 d0             	mov    %r10,%rax
  40cc28:	48 c1 e8 03          	shr    $0x3,%rax
  40cc2c:	48 c1 e0 05          	shl    $0x5,%rax
  40cc30:	62 d2 7d 28 7c c1    	vpbroadcastd %r9d,%ymm0
  40cc36:	48 01 f8             	add    %rdi,%rax
  40cc39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40cc40:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40cc44:	48 83 c2 20          	add    $0x20,%rdx
  40cc48:	48 39 c2             	cmp    %rax,%rdx
  40cc4b:	75 f3                	jne    40cc40 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x210>
  40cc4d:	4c 89 d2             	mov    %r10,%rdx
  40cc50:	48 83 e2 f8          	and    $0xfffffffffffffff8,%rdx
  40cc54:	48 8d 04 97          	lea    (%rdi,%rdx,4),%rax
  40cc58:	49 39 d2             	cmp    %rdx,%r10
  40cc5b:	0f 84 88 01 00 00    	je     40cde9 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x3b9>
  40cc61:	c5 f8 77             	vzeroupper 
  40cc64:	49 29 d0             	sub    %rdx,%r8
  40cc67:	4d 8d 50 01          	lea    0x1(%r8),%r10
  40cc6b:	49 83 f8 02          	cmp    $0x2,%r8
  40cc6f:	76 1b                	jbe    40cc8c <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x25c>
  40cc71:	62 d2 7d 08 7c c1    	vpbroadcastd %r9d,%xmm0
  40cc77:	c5 fa 7f 04 97       	vmovdqu %xmm0,(%rdi,%rdx,4)
  40cc7c:	4c 89 d2             	mov    %r10,%rdx
  40cc7f:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  40cc83:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
  40cc87:	49 39 d2             	cmp    %rdx,%r10
  40cc8a:	74 1d                	je     40cca9 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x279>
  40cc8c:	48 8d 50 04          	lea    0x4(%rax),%rdx
  40cc90:	44 89 08             	mov    %r9d,(%rax)
  40cc93:	48 39 d6             	cmp    %rdx,%rsi
  40cc96:	74 11                	je     40cca9 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x279>
  40cc98:	48 8d 50 08          	lea    0x8(%rax),%rdx
  40cc9c:	44 89 48 04          	mov    %r9d,0x4(%rax)
  40cca0:	48 39 d6             	cmp    %rdx,%rsi
  40cca3:	74 04                	je     40cca9 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x279>
  40cca5:	44 89 48 08          	mov    %r9d,0x8(%rax)
  40cca9:	48 39 f1             	cmp    %rsi,%rcx
  40ccac:	74 04                	je     40ccb2 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x282>
  40ccae:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  40ccb2:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40ccb6:	5b                   	pop    %rbx
  40ccb7:	41 5c                	pop    %r12
  40ccb9:	41 5d                	pop    %r13
  40ccbb:	5d                   	pop    %rbp
  40ccbc:	c3                   	retq   
  40ccbd:	0f 1f 00             	nopl   (%rax)
  40ccc0:	48 89 c1             	mov    %rax,%rcx
  40ccc3:	48 c1 e9 3d          	shr    $0x3d,%rcx
  40ccc7:	0f 85 3a 01 00 00    	jne    40ce07 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x3d7>
  40cccd:	4c 8d 2c 85 00 00 00 	lea    0x0(,%rax,4),%r13
  40ccd4:	00 
  40ccd5:	48 85 c0             	test   %rax,%rax
  40ccd8:	0f 84 f2 00 00 00    	je     40cdd0 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x3a0>
  40ccde:	4c 89 ef             	mov    %r13,%rdi
  40cce1:	e8 ba 65 ff ff       	callq  4032a0 <_Znwm@plt>
  40cce6:	4e 8d 04 28          	lea    (%rax,%r13,1),%r8
  40ccea:	41 8b 3c 24          	mov    (%r12),%edi
  40ccee:	48 89 c2             	mov    %rax,%rdx
  40ccf1:	49 39 c0             	cmp    %rax,%r8
  40ccf4:	0f 84 9c 00 00 00    	je     40cd96 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x366>
  40ccfa:	49 83 ed 04          	sub    $0x4,%r13
  40ccfe:	4c 89 ee             	mov    %r13,%rsi
  40cd01:	48 c1 ee 02          	shr    $0x2,%rsi
  40cd05:	4c 8d 4e 01          	lea    0x1(%rsi),%r9
  40cd09:	49 83 fd 18          	cmp    $0x18,%r13
  40cd0d:	0f 86 ed 00 00 00    	jbe    40ce00 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x3d0>
  40cd13:	4c 89 c9             	mov    %r9,%rcx
  40cd16:	48 c1 e9 03          	shr    $0x3,%rcx
  40cd1a:	48 c1 e1 05          	shl    $0x5,%rcx
  40cd1e:	62 f2 7d 28 7c c7    	vpbroadcastd %edi,%ymm0
  40cd24:	48 01 c1             	add    %rax,%rcx
  40cd27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40cd2e:	00 00 
  40cd30:	c5 fe 7f 00          	vmovdqu %ymm0,(%rax)
  40cd34:	48 83 c0 20          	add    $0x20,%rax
  40cd38:	48 39 c1             	cmp    %rax,%rcx
  40cd3b:	75 f3                	jne    40cd30 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x300>
  40cd3d:	4c 89 c9             	mov    %r9,%rcx
  40cd40:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
  40cd44:	48 8d 04 8a          	lea    (%rdx,%rcx,4),%rax
  40cd48:	4c 39 c9             	cmp    %r9,%rcx
  40cd4b:	0f 84 a0 00 00 00    	je     40cdf1 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x3c1>
  40cd51:	c5 f8 77             	vzeroupper 
  40cd54:	48 29 ce             	sub    %rcx,%rsi
  40cd57:	4c 8d 4e 01          	lea    0x1(%rsi),%r9
  40cd5b:	48 83 fe 02          	cmp    $0x2,%rsi
  40cd5f:	76 1b                	jbe    40cd7c <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x34c>
  40cd61:	62 f2 7d 08 7c c7    	vpbroadcastd %edi,%xmm0
  40cd67:	c5 fa 7f 04 8a       	vmovdqu %xmm0,(%rdx,%rcx,4)
  40cd6c:	4c 89 c9             	mov    %r9,%rcx
  40cd6f:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
  40cd73:	48 8d 04 88          	lea    (%rax,%rcx,4),%rax
  40cd77:	49 39 c9             	cmp    %rcx,%r9
  40cd7a:	74 1a                	je     40cd96 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x366>
  40cd7c:	48 8d 48 04          	lea    0x4(%rax),%rcx
  40cd80:	89 38                	mov    %edi,(%rax)
  40cd82:	49 39 c8             	cmp    %rcx,%r8
  40cd85:	74 0f                	je     40cd96 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x366>
  40cd87:	48 8d 48 08          	lea    0x8(%rax),%rcx
  40cd8b:	89 78 04             	mov    %edi,0x4(%rax)
  40cd8e:	49 39 c8             	cmp    %rcx,%r8
  40cd91:	74 03                	je     40cd96 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x366>
  40cd93:	89 78 08             	mov    %edi,0x8(%rax)
  40cd96:	48 8b 3b             	mov    (%rbx),%rdi
  40cd99:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40cd9d:	48 29 fe             	sub    %rdi,%rsi
  40cda0:	c4 e1 f9 6e ca       	vmovq  %rdx,%xmm1
  40cda5:	c4 c3 f1 22 c0 01    	vpinsrq $0x1,%r8,%xmm1,%xmm0
  40cdab:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  40cdaf:	c5 fa 7f 03          	vmovdqu %xmm0,(%rbx)
  40cdb3:	48 85 ff             	test   %rdi,%rdi
  40cdb6:	0f 84 f6 fe ff ff    	je     40ccb2 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x282>
  40cdbc:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40cdc0:	5b                   	pop    %rbx
  40cdc1:	41 5c                	pop    %r12
  40cdc3:	41 5d                	pop    %r13
  40cdc5:	5d                   	pop    %rbp
  40cdc6:	e9 e5 64 ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  40cdcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40cdd0:	31 d2                	xor    %edx,%edx
  40cdd2:	45 31 c0             	xor    %r8d,%r8d
  40cdd5:	eb c9                	jmp    40cda0 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x370>
  40cdd7:	45 31 c9             	xor    %r9d,%r9d
  40cdda:	e9 fe fc ff ff       	jmpq   40cadd <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0xad>
  40cddf:	48 89 c8             	mov    %rcx,%rax
  40cde2:	31 d2                	xor    %edx,%edx
  40cde4:	e9 a4 fd ff ff       	jmpq   40cb8d <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x15d>
  40cde9:	c5 f8 77             	vzeroupper 
  40cdec:	e9 b8 fe ff ff       	jmpq   40cca9 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x279>
  40cdf1:	c5 f8 77             	vzeroupper 
  40cdf4:	eb a0                	jmp    40cd96 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x366>
  40cdf6:	48 89 f8             	mov    %rdi,%rax
  40cdf9:	31 d2                	xor    %edx,%edx
  40cdfb:	e9 64 fe ff ff       	jmpq   40cc64 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x234>
  40ce00:	31 c9                	xor    %ecx,%ecx
  40ce02:	e9 4d ff ff ff       	jmpq   40cd54 <_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi+0x324>
  40ce07:	bf 68 e4 40 00       	mov    $0x40e468,%edi
  40ce0c:	e8 4f 63 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40ce11:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40ce18:	00 00 00 
  40ce1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000040ce20 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_>:
  40ce20:	55                   	push   %rbp
  40ce21:	48 89 f0             	mov    %rsi,%rax
  40ce24:	48 89 e5             	mov    %rsp,%rbp
  40ce27:	41 55                	push   %r13
  40ce29:	41 54                	push   %r12
  40ce2b:	49 89 d4             	mov    %rdx,%r12
  40ce2e:	53                   	push   %rbx
  40ce2f:	48 89 fb             	mov    %rdi,%rbx
  40ce32:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40ce36:	48 8b 3f             	mov    (%rdi),%rdi
  40ce39:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40ce3d:	48 29 fe             	sub    %rdi,%rsi
  40ce40:	48 89 f2             	mov    %rsi,%rdx
  40ce43:	48 c1 fa 03          	sar    $0x3,%rdx
  40ce47:	48 39 c2             	cmp    %rax,%rdx
  40ce4a:	0f 82 c8 01 00 00    	jb     40d018 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1f8>
  40ce50:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  40ce54:	48 89 ce             	mov    %rcx,%rsi
  40ce57:	48 29 fe             	sub    %rdi,%rsi
  40ce5a:	48 c1 fe 03          	sar    $0x3,%rsi
  40ce5e:	48 39 f0             	cmp    %rsi,%rax
  40ce61:	0f 86 09 01 00 00    	jbe    40cf70 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x150>
  40ce67:	4d 8b 0c 24          	mov    (%r12),%r9
  40ce6b:	48 39 cf             	cmp    %rcx,%rdi
  40ce6e:	74 6e                	je     40cede <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xbe>
  40ce70:	4c 8d 41 f8          	lea    -0x8(%rcx),%r8
  40ce74:	49 29 f8             	sub    %rdi,%r8
  40ce77:	4d 89 c2             	mov    %r8,%r10
  40ce7a:	49 c1 ea 03          	shr    $0x3,%r10
  40ce7e:	48 89 fa             	mov    %rdi,%rdx
  40ce81:	49 ff c2             	inc    %r10
  40ce84:	49 83 f8 10          	cmp    $0x10,%r8
  40ce88:	76 33                	jbe    40cebd <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x9d>
  40ce8a:	4d 89 d0             	mov    %r10,%r8
  40ce8d:	49 c1 e8 02          	shr    $0x2,%r8
  40ce91:	49 c1 e0 05          	shl    $0x5,%r8
  40ce95:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40ce9b:	49 01 f8             	add    %rdi,%r8
  40ce9e:	66 90                	xchg   %ax,%ax
  40cea0:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40cea4:	48 83 c2 20          	add    $0x20,%rdx
  40cea8:	49 39 d0             	cmp    %rdx,%r8
  40ceab:	75 f3                	jne    40cea0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x80>
  40cead:	4c 89 d2             	mov    %r10,%rdx
  40ceb0:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  40ceb4:	48 8d 3c d7          	lea    (%rdi,%rdx,8),%rdi
  40ceb8:	49 39 d2             	cmp    %rdx,%r10
  40cebb:	74 1d                	je     40ceda <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40cebd:	48 8d 57 08          	lea    0x8(%rdi),%rdx
  40cec1:	4c 89 0f             	mov    %r9,(%rdi)
  40cec4:	48 39 d1             	cmp    %rdx,%rcx
  40cec7:	74 11                	je     40ceda <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40cec9:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40cecd:	4c 89 4f 08          	mov    %r9,0x8(%rdi)
  40ced1:	48 39 d1             	cmp    %rdx,%rcx
  40ced4:	74 04                	je     40ceda <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0xba>
  40ced6:	4c 89 4f 10          	mov    %r9,0x10(%rdi)
  40ceda:	4d 8b 0c 24          	mov    (%r12),%r9
  40cede:	48 29 f0             	sub    %rsi,%rax
  40cee1:	48 c1 e0 03          	shl    $0x3,%rax
  40cee5:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
  40cee9:	48 39 f9             	cmp    %rdi,%rcx
  40ceec:	74 6c                	je     40cf5a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40ceee:	48 83 e8 08          	sub    $0x8,%rax
  40cef2:	48 89 c6             	mov    %rax,%rsi
  40cef5:	48 c1 ee 03          	shr    $0x3,%rsi
  40cef9:	48 89 ca             	mov    %rcx,%rdx
  40cefc:	48 ff c6             	inc    %rsi
  40ceff:	48 83 f8 10          	cmp    $0x10,%rax
  40cf03:	76 38                	jbe    40cf3d <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x11d>
  40cf05:	48 89 f0             	mov    %rsi,%rax
  40cf08:	48 c1 e8 02          	shr    $0x2,%rax
  40cf0c:	48 c1 e0 05          	shl    $0x5,%rax
  40cf10:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40cf16:	48 01 c8             	add    %rcx,%rax
  40cf19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40cf20:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40cf24:	48 83 c2 20          	add    $0x20,%rdx
  40cf28:	48 39 d0             	cmp    %rdx,%rax
  40cf2b:	75 f3                	jne    40cf20 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x100>
  40cf2d:	48 89 f0             	mov    %rsi,%rax
  40cf30:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40cf34:	48 8d 0c c1          	lea    (%rcx,%rax,8),%rcx
  40cf38:	48 39 c6             	cmp    %rax,%rsi
  40cf3b:	74 1d                	je     40cf5a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40cf3d:	48 8d 41 08          	lea    0x8(%rcx),%rax
  40cf41:	4c 89 09             	mov    %r9,(%rcx)
  40cf44:	48 39 c7             	cmp    %rax,%rdi
  40cf47:	74 11                	je     40cf5a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40cf49:	48 8d 41 10          	lea    0x10(%rcx),%rax
  40cf4d:	4c 89 49 08          	mov    %r9,0x8(%rcx)
  40cf51:	48 39 c7             	cmp    %rax,%rdi
  40cf54:	74 04                	je     40cf5a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x13a>
  40cf56:	4c 89 49 10          	mov    %r9,0x10(%rcx)
  40cf5a:	48 89 7b 08          	mov    %rdi,0x8(%rbx)
  40cf5e:	c5 f8 77             	vzeroupper 
  40cf61:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40cf65:	5b                   	pop    %rbx
  40cf66:	41 5c                	pop    %r12
  40cf68:	41 5d                	pop    %r13
  40cf6a:	5d                   	pop    %rbp
  40cf6b:	c3                   	retq   
  40cf6c:	0f 1f 40 00          	nopl   0x0(%rax)
  40cf70:	48 89 fe             	mov    %rdi,%rsi
  40cf73:	48 85 c0             	test   %rax,%rax
  40cf76:	0f 84 85 00 00 00    	je     40d001 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40cf7c:	48 c1 e0 03          	shl    $0x3,%rax
  40cf80:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
  40cf84:	4d 8b 0c 24          	mov    (%r12),%r9
  40cf88:	48 39 f7             	cmp    %rsi,%rdi
  40cf8b:	74 74                	je     40d001 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40cf8d:	48 83 e8 08          	sub    $0x8,%rax
  40cf91:	49 89 c0             	mov    %rax,%r8
  40cf94:	49 c1 e8 03          	shr    $0x3,%r8
  40cf98:	48 89 fa             	mov    %rdi,%rdx
  40cf9b:	49 ff c0             	inc    %r8
  40cf9e:	48 83 f8 10          	cmp    $0x10,%rax
  40cfa2:	76 40                	jbe    40cfe4 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1c4>
  40cfa4:	4c 89 c0             	mov    %r8,%rax
  40cfa7:	48 c1 e8 02          	shr    $0x2,%rax
  40cfab:	48 c1 e0 05          	shl    $0x5,%rax
  40cfaf:	62 d2 fd 28 7c c1    	vpbroadcastq %r9,%ymm0
  40cfb5:	48 01 f8             	add    %rdi,%rax
  40cfb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40cfbf:	00 
  40cfc0:	c5 fe 7f 02          	vmovdqu %ymm0,(%rdx)
  40cfc4:	48 83 c2 20          	add    $0x20,%rdx
  40cfc8:	48 39 d0             	cmp    %rdx,%rax
  40cfcb:	75 f3                	jne    40cfc0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1a0>
  40cfcd:	4c 89 c0             	mov    %r8,%rax
  40cfd0:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40cfd4:	48 8d 3c c7          	lea    (%rdi,%rax,8),%rdi
  40cfd8:	49 39 c0             	cmp    %rax,%r8
  40cfdb:	0f 84 1f 01 00 00    	je     40d100 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2e0>
  40cfe1:	c5 f8 77             	vzeroupper 
  40cfe4:	48 8d 47 08          	lea    0x8(%rdi),%rax
  40cfe8:	4c 89 0f             	mov    %r9,(%rdi)
  40cfeb:	48 39 c6             	cmp    %rax,%rsi
  40cfee:	74 11                	je     40d001 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40cff0:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40cff4:	4c 89 4f 08          	mov    %r9,0x8(%rdi)
  40cff8:	48 39 c6             	cmp    %rax,%rsi
  40cffb:	74 04                	je     40d001 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40cffd:	4c 89 4f 10          	mov    %r9,0x10(%rdi)
  40d001:	48 39 f1             	cmp    %rsi,%rcx
  40d004:	74 04                	je     40d00a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1ea>
  40d006:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  40d00a:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40d00e:	5b                   	pop    %rbx
  40d00f:	41 5c                	pop    %r12
  40d011:	41 5d                	pop    %r13
  40d013:	5d                   	pop    %rbp
  40d014:	c3                   	retq   
  40d015:	0f 1f 00             	nopl   (%rax)
  40d018:	48 89 c1             	mov    %rax,%rcx
  40d01b:	48 c1 e9 3c          	shr    $0x3c,%rcx
  40d01f:	0f 85 f0 00 00 00    	jne    40d115 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2f5>
  40d025:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  40d02c:	00 
  40d02d:	48 85 c0             	test   %rax,%rax
  40d030:	0f 84 c2 00 00 00    	je     40d0f8 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2d8>
  40d036:	4c 89 ef             	mov    %r13,%rdi
  40d039:	e8 62 62 ff ff       	callq  4032a0 <_Znwm@plt>
  40d03e:	4e 8d 04 28          	lea    (%rax,%r13,1),%r8
  40d042:	49 8b 3c 24          	mov    (%r12),%rdi
  40d046:	48 89 c2             	mov    %rax,%rdx
  40d049:	49 39 c0             	cmp    %rax,%r8
  40d04c:	74 6f                	je     40d0bd <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40d04e:	49 83 ed 08          	sub    $0x8,%r13
  40d052:	4c 89 ee             	mov    %r13,%rsi
  40d055:	48 c1 ee 03          	shr    $0x3,%rsi
  40d059:	48 ff c6             	inc    %rsi
  40d05c:	49 83 fd 10          	cmp    $0x10,%r13
  40d060:	76 3e                	jbe    40d0a0 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x280>
  40d062:	48 89 f1             	mov    %rsi,%rcx
  40d065:	48 c1 e9 02          	shr    $0x2,%rcx
  40d069:	48 c1 e1 05          	shl    $0x5,%rcx
  40d06d:	62 f2 fd 28 7c c7    	vpbroadcastq %rdi,%ymm0
  40d073:	48 01 c1             	add    %rax,%rcx
  40d076:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40d07d:	00 00 00 
  40d080:	c5 fe 7f 00          	vmovdqu %ymm0,(%rax)
  40d084:	48 83 c0 20          	add    $0x20,%rax
  40d088:	48 39 c1             	cmp    %rax,%rcx
  40d08b:	75 f3                	jne    40d080 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x260>
  40d08d:	48 89 f1             	mov    %rsi,%rcx
  40d090:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
  40d094:	48 8d 04 ca          	lea    (%rdx,%rcx,8),%rax
  40d098:	48 39 f1             	cmp    %rsi,%rcx
  40d09b:	74 73                	je     40d110 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2f0>
  40d09d:	c5 f8 77             	vzeroupper 
  40d0a0:	48 8d 48 08          	lea    0x8(%rax),%rcx
  40d0a4:	48 89 38             	mov    %rdi,(%rax)
  40d0a7:	49 39 c8             	cmp    %rcx,%r8
  40d0aa:	74 11                	je     40d0bd <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40d0ac:	48 8d 48 10          	lea    0x10(%rax),%rcx
  40d0b0:	48 89 78 08          	mov    %rdi,0x8(%rax)
  40d0b4:	49 39 c8             	cmp    %rcx,%r8
  40d0b7:	74 04                	je     40d0bd <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40d0b9:	48 89 78 10          	mov    %rdi,0x10(%rax)
  40d0bd:	48 8b 3b             	mov    (%rbx),%rdi
  40d0c0:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40d0c4:	48 29 fe             	sub    %rdi,%rsi
  40d0c7:	c4 e1 f9 6e ca       	vmovq  %rdx,%xmm1
  40d0cc:	c4 c3 f1 22 c0 01    	vpinsrq $0x1,%r8,%xmm1,%xmm0
  40d0d2:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  40d0d6:	c5 fa 7f 03          	vmovdqu %xmm0,(%rbx)
  40d0da:	48 85 ff             	test   %rdi,%rdi
  40d0dd:	0f 84 27 ff ff ff    	je     40d00a <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1ea>
  40d0e3:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40d0e7:	5b                   	pop    %rbx
  40d0e8:	41 5c                	pop    %r12
  40d0ea:	41 5d                	pop    %r13
  40d0ec:	5d                   	pop    %rbp
  40d0ed:	e9 be 61 ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  40d0f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40d0f8:	31 d2                	xor    %edx,%edx
  40d0fa:	45 31 c0             	xor    %r8d,%r8d
  40d0fd:	eb c8                	jmp    40d0c7 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x2a7>
  40d0ff:	90                   	nop
  40d100:	c5 f8 77             	vzeroupper 
  40d103:	e9 f9 fe ff ff       	jmpq   40d001 <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x1e1>
  40d108:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40d10f:	00 
  40d110:	c5 f8 77             	vzeroupper 
  40d113:	eb a8                	jmp    40d0bd <_ZNSt6vectorIPdSaIS0_EE14_M_fill_assignEmRKS0_+0x29d>
  40d115:	bf 68 e4 40 00       	mov    $0x40e468,%edi
  40d11a:	e8 41 60 ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40d11f:	90                   	nop

000000000040d120 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd>:
  40d120:	55                   	push   %rbp
  40d121:	48 89 f0             	mov    %rsi,%rax
  40d124:	48 89 e5             	mov    %rsp,%rbp
  40d127:	41 55                	push   %r13
  40d129:	41 54                	push   %r12
  40d12b:	49 89 d4             	mov    %rdx,%r12
  40d12e:	53                   	push   %rbx
  40d12f:	48 89 fb             	mov    %rdi,%rbx
  40d132:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40d136:	48 8b 3f             	mov    (%rdi),%rdi
  40d139:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40d13d:	48 29 fe             	sub    %rdi,%rsi
  40d140:	48 89 f2             	mov    %rsi,%rdx
  40d143:	48 c1 fa 03          	sar    $0x3,%rdx
  40d147:	48 39 c2             	cmp    %rax,%rdx
  40d14a:	0f 82 d0 01 00 00    	jb     40d320 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x200>
  40d150:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  40d154:	48 89 ce             	mov    %rcx,%rsi
  40d157:	48 29 fe             	sub    %rdi,%rsi
  40d15a:	48 c1 fe 03          	sar    $0x3,%rsi
  40d15e:	48 39 f0             	cmp    %rsi,%rax
  40d161:	0f 86 09 01 00 00    	jbe    40d270 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x150>
  40d167:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  40d16d:	48 39 cf             	cmp    %rcx,%rdi
  40d170:	74 71                	je     40d1e3 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xc3>
  40d172:	4c 8d 41 f8          	lea    -0x8(%rcx),%r8
  40d176:	49 29 f8             	sub    %rdi,%r8
  40d179:	4d 89 c1             	mov    %r8,%r9
  40d17c:	49 c1 e9 03          	shr    $0x3,%r9
  40d180:	48 89 fa             	mov    %rdi,%rdx
  40d183:	49 ff c1             	inc    %r9
  40d186:	49 83 f8 10          	cmp    $0x10,%r8
  40d18a:	76 31                	jbe    40d1bd <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x9d>
  40d18c:	4d 89 c8             	mov    %r9,%r8
  40d18f:	49 c1 e8 02          	shr    $0x2,%r8
  40d193:	49 c1 e0 05          	shl    $0x5,%r8
  40d197:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  40d19c:	49 01 f8             	add    %rdi,%r8
  40d19f:	90                   	nop
  40d1a0:	c5 fd 11 0a          	vmovupd %ymm1,(%rdx)
  40d1a4:	48 83 c2 20          	add    $0x20,%rdx
  40d1a8:	49 39 d0             	cmp    %rdx,%r8
  40d1ab:	75 f3                	jne    40d1a0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x80>
  40d1ad:	4c 89 ca             	mov    %r9,%rdx
  40d1b0:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  40d1b4:	48 8d 3c d7          	lea    (%rdi,%rdx,8),%rdi
  40d1b8:	49 39 d1             	cmp    %rdx,%r9
  40d1bb:	74 20                	je     40d1dd <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40d1bd:	48 8d 57 08          	lea    0x8(%rdi),%rdx
  40d1c1:	c5 fb 11 07          	vmovsd %xmm0,(%rdi)
  40d1c5:	48 39 d1             	cmp    %rdx,%rcx
  40d1c8:	74 13                	je     40d1dd <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40d1ca:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40d1ce:	c5 fb 11 47 08       	vmovsd %xmm0,0x8(%rdi)
  40d1d3:	48 39 d1             	cmp    %rdx,%rcx
  40d1d6:	74 05                	je     40d1dd <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0xbd>
  40d1d8:	c5 fb 11 47 10       	vmovsd %xmm0,0x10(%rdi)
  40d1dd:	c4 c1 7b 10 04 24    	vmovsd (%r12),%xmm0
  40d1e3:	48 29 f0             	sub    %rsi,%rax
  40d1e6:	48 c1 e0 03          	shl    $0x3,%rax
  40d1ea:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
  40d1ee:	48 39 f9             	cmp    %rdi,%rcx
  40d1f1:	74 6a                	je     40d25d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40d1f3:	48 83 e8 08          	sub    $0x8,%rax
  40d1f7:	48 89 c6             	mov    %rax,%rsi
  40d1fa:	48 c1 ee 03          	shr    $0x3,%rsi
  40d1fe:	48 89 ca             	mov    %rcx,%rdx
  40d201:	48 ff c6             	inc    %rsi
  40d204:	48 83 f8 10          	cmp    $0x10,%rax
  40d208:	76 33                	jbe    40d23d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x11d>
  40d20a:	48 89 f0             	mov    %rsi,%rax
  40d20d:	48 c1 e8 02          	shr    $0x2,%rax
  40d211:	48 c1 e0 05          	shl    $0x5,%rax
  40d215:	c4 e2 7d 19 c8       	vbroadcastsd %xmm0,%ymm1
  40d21a:	48 01 c8             	add    %rcx,%rax
  40d21d:	0f 1f 00             	nopl   (%rax)
  40d220:	c5 fd 11 0a          	vmovupd %ymm1,(%rdx)
  40d224:	48 83 c2 20          	add    $0x20,%rdx
  40d228:	48 39 d0             	cmp    %rdx,%rax
  40d22b:	75 f3                	jne    40d220 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x100>
  40d22d:	48 89 f0             	mov    %rsi,%rax
  40d230:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40d234:	48 8d 0c c1          	lea    (%rcx,%rax,8),%rcx
  40d238:	48 39 c6             	cmp    %rax,%rsi
  40d23b:	74 20                	je     40d25d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40d23d:	48 8d 41 08          	lea    0x8(%rcx),%rax
  40d241:	c5 fb 11 01          	vmovsd %xmm0,(%rcx)
  40d245:	48 39 c7             	cmp    %rax,%rdi
  40d248:	74 13                	je     40d25d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40d24a:	48 8d 41 10          	lea    0x10(%rcx),%rax
  40d24e:	c5 fb 11 41 08       	vmovsd %xmm0,0x8(%rcx)
  40d253:	48 39 c7             	cmp    %rax,%rdi
  40d256:	74 05                	je     40d25d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x13d>
  40d258:	c5 fb 11 41 10       	vmovsd %xmm0,0x10(%rcx)
  40d25d:	48 89 7b 08          	mov    %rdi,0x8(%rbx)
  40d261:	c5 f8 77             	vzeroupper 
  40d264:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40d268:	5b                   	pop    %rbx
  40d269:	41 5c                	pop    %r12
  40d26b:	41 5d                	pop    %r13
  40d26d:	5d                   	pop    %rbp
  40d26e:	c3                   	retq   
  40d26f:	90                   	nop
  40d270:	48 89 fe             	mov    %rdi,%rsi
  40d273:	48 85 c0             	test   %rax,%rax
  40d276:	0f 84 88 00 00 00    	je     40d304 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40d27c:	48 c1 e0 03          	shl    $0x3,%rax
  40d280:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
  40d284:	c4 c1 7b 10 0c 24    	vmovsd (%r12),%xmm1
  40d28a:	48 39 f7             	cmp    %rsi,%rdi
  40d28d:	74 75                	je     40d304 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40d28f:	48 83 e8 08          	sub    $0x8,%rax
  40d293:	49 89 c0             	mov    %rax,%r8
  40d296:	49 c1 e8 03          	shr    $0x3,%r8
  40d29a:	48 89 fa             	mov    %rdi,%rdx
  40d29d:	49 ff c0             	inc    %r8
  40d2a0:	48 83 f8 10          	cmp    $0x10,%rax
  40d2a4:	76 3e                	jbe    40d2e4 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1c4>
  40d2a6:	4c 89 c0             	mov    %r8,%rax
  40d2a9:	48 c1 e8 02          	shr    $0x2,%rax
  40d2ad:	48 c1 e0 05          	shl    $0x5,%rax
  40d2b1:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  40d2b6:	48 01 f8             	add    %rdi,%rax
  40d2b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40d2c0:	c5 fd 11 02          	vmovupd %ymm0,(%rdx)
  40d2c4:	48 83 c2 20          	add    $0x20,%rdx
  40d2c8:	48 39 d0             	cmp    %rdx,%rax
  40d2cb:	75 f3                	jne    40d2c0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1a0>
  40d2cd:	4c 89 c0             	mov    %r8,%rax
  40d2d0:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
  40d2d4:	48 8d 3c c7          	lea    (%rdi,%rax,8),%rdi
  40d2d8:	49 39 c0             	cmp    %rax,%r8
  40d2db:	0f 84 1f 01 00 00    	je     40d400 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2e0>
  40d2e1:	c5 f8 77             	vzeroupper 
  40d2e4:	48 8d 47 08          	lea    0x8(%rdi),%rax
  40d2e8:	c5 fb 11 0f          	vmovsd %xmm1,(%rdi)
  40d2ec:	48 39 c6             	cmp    %rax,%rsi
  40d2ef:	74 13                	je     40d304 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40d2f1:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40d2f5:	c5 fb 11 4f 08       	vmovsd %xmm1,0x8(%rdi)
  40d2fa:	48 39 c6             	cmp    %rax,%rsi
  40d2fd:	74 05                	je     40d304 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40d2ff:	c5 fb 11 4f 10       	vmovsd %xmm1,0x10(%rdi)
  40d304:	48 39 f1             	cmp    %rsi,%rcx
  40d307:	74 04                	je     40d30d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1ed>
  40d309:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  40d30d:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40d311:	5b                   	pop    %rbx
  40d312:	41 5c                	pop    %r12
  40d314:	41 5d                	pop    %r13
  40d316:	5d                   	pop    %rbp
  40d317:	c3                   	retq   
  40d318:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40d31f:	00 
  40d320:	48 89 c1             	mov    %rax,%rcx
  40d323:	48 c1 e9 3c          	shr    $0x3c,%rcx
  40d327:	0f 85 e8 00 00 00    	jne    40d415 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2f5>
  40d32d:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
  40d334:	00 
  40d335:	48 85 c0             	test   %rax,%rax
  40d338:	0f 84 ba 00 00 00    	je     40d3f8 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2d8>
  40d33e:	4c 89 ef             	mov    %r13,%rdi
  40d341:	e8 5a 5f ff ff       	callq  4032a0 <_Znwm@plt>
  40d346:	4e 8d 04 28          	lea    (%rax,%r13,1),%r8
  40d34a:	c4 c1 7b 10 0c 24    	vmovsd (%r12),%xmm1
  40d350:	48 89 c2             	mov    %rax,%rdx
  40d353:	49 39 c0             	cmp    %rax,%r8
  40d356:	74 68                	je     40d3c0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40d358:	49 83 ed 08          	sub    $0x8,%r13
  40d35c:	4c 89 ee             	mov    %r13,%rsi
  40d35f:	48 c1 ee 03          	shr    $0x3,%rsi
  40d363:	48 ff c6             	inc    %rsi
  40d366:	49 83 fd 10          	cmp    $0x10,%r13
  40d36a:	76 34                	jbe    40d3a0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x280>
  40d36c:	48 89 f1             	mov    %rsi,%rcx
  40d36f:	48 c1 e9 02          	shr    $0x2,%rcx
  40d373:	48 c1 e1 05          	shl    $0x5,%rcx
  40d377:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  40d37c:	48 01 c1             	add    %rax,%rcx
  40d37f:	90                   	nop
  40d380:	c5 fd 11 00          	vmovupd %ymm0,(%rax)
  40d384:	48 83 c0 20          	add    $0x20,%rax
  40d388:	48 39 c1             	cmp    %rax,%rcx
  40d38b:	75 f3                	jne    40d380 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x260>
  40d38d:	48 89 f1             	mov    %rsi,%rcx
  40d390:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
  40d394:	48 8d 04 ca          	lea    (%rdx,%rcx,8),%rax
  40d398:	48 39 f1             	cmp    %rsi,%rcx
  40d39b:	74 73                	je     40d410 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2f0>
  40d39d:	c5 f8 77             	vzeroupper 
  40d3a0:	48 8d 48 08          	lea    0x8(%rax),%rcx
  40d3a4:	c5 fb 11 08          	vmovsd %xmm1,(%rax)
  40d3a8:	49 39 c8             	cmp    %rcx,%r8
  40d3ab:	74 13                	je     40d3c0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40d3ad:	48 8d 48 10          	lea    0x10(%rax),%rcx
  40d3b1:	c5 fb 11 48 08       	vmovsd %xmm1,0x8(%rax)
  40d3b6:	49 39 c8             	cmp    %rcx,%r8
  40d3b9:	74 05                	je     40d3c0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40d3bb:	c5 fb 11 48 10       	vmovsd %xmm1,0x10(%rax)
  40d3c0:	48 8b 3b             	mov    (%rbx),%rdi
  40d3c3:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  40d3c7:	48 29 fe             	sub    %rdi,%rsi
  40d3ca:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
  40d3cf:	c4 c3 e9 22 c0 01    	vpinsrq $0x1,%r8,%xmm2,%xmm0
  40d3d5:	4c 89 43 10          	mov    %r8,0x10(%rbx)
  40d3d9:	c5 fa 7f 03          	vmovdqu %xmm0,(%rbx)
  40d3dd:	48 85 ff             	test   %rdi,%rdi
  40d3e0:	0f 84 27 ff ff ff    	je     40d30d <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1ed>
  40d3e6:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  40d3ea:	5b                   	pop    %rbx
  40d3eb:	41 5c                	pop    %r12
  40d3ed:	41 5d                	pop    %r13
  40d3ef:	5d                   	pop    %rbp
  40d3f0:	e9 bb 5e ff ff       	jmpq   4032b0 <_ZdlPvm@plt>
  40d3f5:	0f 1f 00             	nopl   (%rax)
  40d3f8:	31 d2                	xor    %edx,%edx
  40d3fa:	45 31 c0             	xor    %r8d,%r8d
  40d3fd:	eb cb                	jmp    40d3ca <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2aa>
  40d3ff:	90                   	nop
  40d400:	c5 f8 77             	vzeroupper 
  40d403:	e9 fc fe ff ff       	jmpq   40d304 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x1e4>
  40d408:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40d40f:	00 
  40d410:	c5 f8 77             	vzeroupper 
  40d413:	eb ab                	jmp    40d3c0 <_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd+0x2a0>
  40d415:	bf 68 e4 40 00       	mov    $0x40e468,%edi
  40d41a:	e8 41 5d ff ff       	callq  403160 <_ZSt20__throw_length_errorPKc@plt>
  40d41f:	90                   	nop

000000000040d420 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>:
  40d420:	c4 e2 7d 59 1d f7 11 	vpbroadcastq 0x11f7(%rip),%ymm3        # 40e620 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x180>
  40d427:	00 00 
  40d429:	c4 e2 7d 59 25 f6 11 	vpbroadcastq 0x11f6(%rip),%ymm4        # 40e628 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x188>
  40d430:	00 00 
  40d432:	c4 e2 7d 59 2d f5 11 	vpbroadcastq 0x11f5(%rip),%ymm5        # 40e630 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x190>
  40d439:	00 00 
  40d43b:	c4 e2 7d 59 35 f4 11 	vpbroadcastq 0x11f4(%rip),%ymm6        # 40e638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x198>
  40d442:	00 00 
  40d444:	48 89 f8             	mov    %rdi,%rax
  40d447:	48 8d 8f e0 04 00 00 	lea    0x4e0(%rdi),%rcx
  40d44e:	48 89 fa             	mov    %rdi,%rdx
  40d451:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  40d458:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  40d45d:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  40d461:	48 83 c2 20          	add    $0x20,%rdx
  40d465:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  40d469:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  40d46e:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  40d472:	c5 f5 ef 8a c0 04 00 	vpxor  0x4c0(%rdx),%ymm1,%ymm1
  40d479:	00 
  40d47a:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  40d480:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  40d484:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  40d48a:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  40d48f:	48 39 ca             	cmp    %rcx,%rdx
  40d492:	75 c4                	jne    40d458 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x38>
  40d494:	48 8d 88 a0 09 00 00 	lea    0x9a0(%rax),%rcx
  40d49b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40d4a0:	c5 dd db 4a 08       	vpand  0x8(%rdx),%ymm4,%ymm1
  40d4a5:	c5 e5 db 02          	vpand  (%rdx),%ymm3,%ymm0
  40d4a9:	48 83 c2 20          	add    $0x20,%rdx
  40d4ad:	c5 fd eb c1          	vpor   %ymm1,%ymm0,%ymm0
  40d4b1:	c5 f5 73 d0 01       	vpsrlq $0x1,%ymm0,%ymm1
  40d4b6:	c5 fd db c5          	vpand  %ymm5,%ymm0,%ymm0
  40d4ba:	c5 f5 ef 8a 00 fb ff 	vpxor  -0x500(%rdx),%ymm1,%ymm1
  40d4c1:	ff 
  40d4c2:	62 f2 fe 28 27 c8    	vptestnmq %ymm0,%ymm0,%k1
  40d4c8:	c5 f5 ef d6          	vpxor  %ymm6,%ymm1,%ymm2
  40d4cc:	62 f2 ed 29 64 c1    	vpblendmq %ymm1,%ymm2,%ymm0{%k1}
  40d4d2:	c5 fe 7f 42 e0       	vmovdqu %ymm0,-0x20(%rdx)
  40d4d7:	48 39 d1             	cmp    %rdx,%rcx
  40d4da:	75 c4                	jne    40d4a0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x80>
  40d4dc:	c4 e2 79 59 05 3b 11 	vpbroadcastq 0x113b(%rip),%xmm0        # 40e620 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x180>
  40d4e3:	00 00 
  40d4e5:	c4 e2 79 59 0d 3a 11 	vpbroadcastq 0x113a(%rip),%xmm1        # 40e628 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x188>
  40d4ec:	00 00 
  40d4ee:	c5 f9 db 80 a0 09 00 	vpand  0x9a0(%rax),%xmm0,%xmm0
  40d4f5:	00 
  40d4f6:	c5 f1 db 88 a8 09 00 	vpand  0x9a8(%rax),%xmm1,%xmm1
  40d4fd:	00 
  40d4fe:	48 8b b0 b8 09 00 00 	mov    0x9b8(%rax),%rsi
  40d505:	48 8b 90 b0 09 00 00 	mov    0x9b0(%rax),%rdx
  40d50c:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  40d510:	48 89 f1             	mov    %rsi,%rcx
  40d513:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
  40d519:	c5 f1 73 d0 01       	vpsrlq $0x1,%xmm0,%xmm1
  40d51e:	48 81 e2 00 00 00 80 	and    $0xffffffff80000000,%rdx
  40d525:	62 f1 fd 18 db 05 01 	vpandq 0x1101(%rip){1to2},%xmm0,%xmm0        # 40e630 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x190>
  40d52c:	11 00 00 
  40d52f:	c5 f1 ef 88 c0 04 00 	vpxor  0x4c0(%rax),%xmm1,%xmm1
  40d536:	00 
  40d537:	48 09 ca             	or     %rcx,%rdx
  40d53a:	62 f2 fe 08 27 c8    	vptestnmq %xmm0,%xmm0,%k1
  40d540:	48 89 d1             	mov    %rdx,%rcx
  40d543:	48 d1 e9             	shr    %rcx
  40d546:	62 f1 f5 18 ef 15 e8 	vpxorq 0x10e8(%rip){1to2},%xmm1,%xmm2        # 40e638 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits+0x198>
  40d54d:	10 00 00 
  40d550:	62 f2 ed 09 64 c1    	vpblendmq %xmm1,%xmm2,%xmm0{%k1}
  40d556:	48 33 88 d0 04 00 00 	xor    0x4d0(%rax),%rcx
  40d55d:	83 e2 01             	and    $0x1,%edx
  40d560:	c5 fa 7f 80 a0 09 00 	vmovdqu %xmm0,0x9a0(%rax)
  40d567:	00 
  40d568:	74 0d                	je     40d577 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x157>
  40d56a:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  40d571:	6f 02 b5 
  40d574:	48 31 d1             	xor    %rdx,%rcx
  40d577:	48 8b 10             	mov    (%rax),%rdx
  40d57a:	48 81 e6 00 00 00 80 	and    $0xffffffff80000000,%rsi
  40d581:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
  40d587:	48 09 f2             	or     %rsi,%rdx
  40d58a:	48 89 88 b0 09 00 00 	mov    %rcx,0x9b0(%rax)
  40d591:	48 89 d1             	mov    %rdx,%rcx
  40d594:	48 d1 e9             	shr    %rcx
  40d597:	48 33 88 d8 04 00 00 	xor    0x4d8(%rax),%rcx
  40d59e:	83 e2 01             	and    $0x1,%edx
  40d5a1:	74 0d                	je     40d5b0 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv+0x190>
  40d5a3:	48 ba e9 19 66 a9 5a 	movabs $0xb5026f5aa96619e9,%rdx
  40d5aa:	6f 02 b5 
  40d5ad:	48 31 d1             	xor    %rdx,%rcx
  40d5b0:	48 89 88 b8 09 00 00 	mov    %rcx,0x9b8(%rax)
  40d5b7:	48 c7 80 c0 09 00 00 	movq   $0x0,0x9c0(%rax)
  40d5be:	00 00 00 00 
  40d5c2:	c5 f8 77             	vzeroupper 
  40d5c5:	c3                   	retq   
  40d5c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40d5cd:	00 00 00 

000000000040d5d0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_>:
  40d5d0:	41 57                	push   %r15
  40d5d2:	41 56                	push   %r14
  40d5d4:	41 55                	push   %r13
  40d5d6:	41 54                	push   %r12
  40d5d8:	55                   	push   %rbp
  40d5d9:	53                   	push   %rbx
  40d5da:	48 83 ec 28          	sub    $0x28,%rsp
  40d5de:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  40d5e3:	48 39 fe             	cmp    %rdi,%rsi
  40d5e6:	0f 84 99 01 00 00    	je     40d785 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40d5ec:	48 89 f1             	mov    %rsi,%rcx
  40d5ef:	48 29 f9             	sub    %rdi,%rcx
  40d5f2:	48 c1 f9 03          	sar    $0x3,%rcx
  40d5f6:	48 89 c8             	mov    %rcx,%rax
  40d5f9:	48 89 d3             	mov    %rdx,%rbx
  40d5fc:	48 f7 e1             	mul    %rcx
  40d5ff:	48 89 fd             	mov    %rdi,%rbp
  40d602:	4c 8d 6f 08          	lea    0x8(%rdi),%r13
  40d606:	0f 90 c0             	seto   %al
  40d609:	0f b6 c0             	movzbl %al,%eax
  40d60c:	48 85 c0             	test   %rax,%rax
  40d60f:	0f 84 1b 02 00 00    	je     40d830 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x260>
  40d615:	4c 3b 6c 24 08       	cmp    0x8(%rsp),%r13
  40d61a:	0f 84 65 01 00 00    	je     40d785 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40d620:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40d627:	55 55 55 
  40d62a:	49 bc 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r12
  40d631:	7f d6 71 
  40d634:	49 bf 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r15
  40d63b:	ee f7 ff 
  40d63e:	66 90                	xchg   %ax,%ax
  40d640:	4c 89 e8             	mov    %r13,%rax
  40d643:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  40d64a:	48 29 e8             	sub    %rbp,%rax
  40d64d:	48 c1 f8 03          	sar    $0x3,%rax
  40d651:	48 89 d1             	mov    %rdx,%rcx
  40d654:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40d658:	0f 84 3a 01 00 00    	je     40d798 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1c8>
  40d65e:	4c 8d 70 01          	lea    0x1(%rax),%r14
  40d662:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  40d669:	0f 87 79 01 00 00    	ja     40d7e8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x218>
  40d66f:	48 8b 34 d3          	mov    (%rbx,%rdx,8),%rsi
  40d673:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
  40d677:	48 89 f2             	mov    %rsi,%rdx
  40d67a:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40d67e:	4c 21 ca             	and    %r9,%rdx
  40d681:	48 31 d6             	xor    %rdx,%rsi
  40d684:	48 89 f2             	mov    %rsi,%rdx
  40d687:	48 c1 e2 11          	shl    $0x11,%rdx
  40d68b:	4c 21 e2             	and    %r12,%rdx
  40d68e:	48 31 d6             	xor    %rdx,%rsi
  40d691:	48 89 f2             	mov    %rsi,%rdx
  40d694:	48 c1 e2 25          	shl    $0x25,%rdx
  40d698:	4c 21 fa             	and    %r15,%rdx
  40d69b:	48 31 d6             	xor    %rdx,%rsi
  40d69e:	48 89 f2             	mov    %rsi,%rdx
  40d6a1:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40d6a5:	48 31 d6             	xor    %rdx,%rsi
  40d6a8:	48 89 f2             	mov    %rsi,%rdx
  40d6ab:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  40d6b0:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40d6b7:	49 39 f6             	cmp    %rsi,%r14
  40d6ba:	0f 86 a0 00 00 00    	jbe    40d760 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40d6c0:	48 f7 d0             	not    %rax
  40d6c3:	31 d2                	xor    %edx,%edx
  40d6c5:	49 f7 f6             	div    %r14
  40d6c8:	49 89 d0             	mov    %rdx,%r8
  40d6cb:	48 39 d6             	cmp    %rdx,%rsi
  40d6ce:	72 55                	jb     40d725 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x155>
  40d6d0:	e9 8b 00 00 00       	jmpq   40d760 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40d6d5:	0f 1f 00             	nopl   (%rax)
  40d6d8:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40d6dc:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40d6e0:	48 89 f0             	mov    %rsi,%rax
  40d6e3:	48 c1 e8 1d          	shr    $0x1d,%rax
  40d6e7:	4c 21 c8             	and    %r9,%rax
  40d6ea:	48 31 c6             	xor    %rax,%rsi
  40d6ed:	48 89 f0             	mov    %rsi,%rax
  40d6f0:	48 c1 e0 11          	shl    $0x11,%rax
  40d6f4:	4c 21 e0             	and    %r12,%rax
  40d6f7:	48 31 c6             	xor    %rax,%rsi
  40d6fa:	48 89 f0             	mov    %rsi,%rax
  40d6fd:	48 c1 e0 25          	shl    $0x25,%rax
  40d701:	4c 21 f8             	and    %r15,%rax
  40d704:	48 31 c6             	xor    %rax,%rsi
  40d707:	48 89 f0             	mov    %rsi,%rax
  40d70a:	48 c1 e8 2b          	shr    $0x2b,%rax
  40d70e:	48 31 c6             	xor    %rax,%rsi
  40d711:	48 89 f2             	mov    %rsi,%rdx
  40d714:	c4 c2 cb f6 fe       	mulx   %r14,%rsi,%rdi
  40d719:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40d720:	49 39 f0             	cmp    %rsi,%r8
  40d723:	76 3b                	jbe    40d760 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x190>
  40d725:	48 89 c8             	mov    %rcx,%rax
  40d728:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  40d72f:	76 a7                	jbe    40d6d8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  40d731:	48 89 df             	mov    %rbx,%rdi
  40d734:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  40d739:	e8 e2 fc ff ff       	callq  40d420 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40d73e:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40d745:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  40d74a:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40d751:	55 55 55 
  40d754:	eb 82                	jmp    40d6d8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x108>
  40d756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40d75d:	00 00 00 
  40d760:	48 89 f8             	mov    %rdi,%rax
  40d763:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  40d768:	48 8b 08             	mov    (%rax),%rcx
  40d76b:	49 8b 55 00          	mov    0x0(%r13),%rdx
  40d76f:	49 89 4d 00          	mov    %rcx,0x0(%r13)
  40d773:	49 83 c5 08          	add    $0x8,%r13
  40d777:	48 89 10             	mov    %rdx,(%rax)
  40d77a:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40d77f:	0f 85 bb fe ff ff    	jne    40d640 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x70>
  40d785:	48 83 c4 28          	add    $0x28,%rsp
  40d789:	5b                   	pop    %rbx
  40d78a:	5d                   	pop    %rbp
  40d78b:	41 5c                	pop    %r12
  40d78d:	41 5d                	pop    %r13
  40d78f:	41 5e                	pop    %r14
  40d791:	41 5f                	pop    %r15
  40d793:	c3                   	retq   
  40d794:	0f 1f 40 00          	nopl   0x0(%rax)
  40d798:	48 81 fa 37 01 00 00 	cmp    $0x137,%rdx
  40d79f:	77 6f                	ja     40d810 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x240>
  40d7a1:	48 8d 41 01          	lea    0x1(%rcx),%rax
  40d7a5:	48 89 83 c0 09 00 00 	mov    %rax,0x9c0(%rbx)
  40d7ac:	48 8b 04 cb          	mov    (%rbx,%rcx,8),%rax
  40d7b0:	48 89 c2             	mov    %rax,%rdx
  40d7b3:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40d7b7:	4c 21 ca             	and    %r9,%rdx
  40d7ba:	48 31 d0             	xor    %rdx,%rax
  40d7bd:	48 89 c2             	mov    %rax,%rdx
  40d7c0:	48 c1 e2 11          	shl    $0x11,%rdx
  40d7c4:	4c 21 e2             	and    %r12,%rdx
  40d7c7:	48 31 d0             	xor    %rdx,%rax
  40d7ca:	48 89 c2             	mov    %rax,%rdx
  40d7cd:	48 c1 e2 25          	shl    $0x25,%rdx
  40d7d1:	4c 21 fa             	and    %r15,%rdx
  40d7d4:	48 31 d0             	xor    %rdx,%rax
  40d7d7:	48 89 c2             	mov    %rax,%rdx
  40d7da:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40d7de:	48 31 d0             	xor    %rdx,%rax
  40d7e1:	eb 80                	jmp    40d763 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x193>
  40d7e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40d7e8:	48 89 df             	mov    %rbx,%rdi
  40d7eb:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40d7f0:	e8 2b fc ff ff       	callq  40d420 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40d7f5:	48 8b 93 c0 09 00 00 	mov    0x9c0(%rbx),%rdx
  40d7fc:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40d801:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40d808:	55 55 55 
  40d80b:	e9 5f fe ff ff       	jmpq   40d66f <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x9f>
  40d810:	48 89 df             	mov    %rbx,%rdi
  40d813:	e8 08 fc ff ff       	callq  40d420 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40d818:	48 8b 8b c0 09 00 00 	mov    0x9c0(%rbx),%rcx
  40d81f:	49 b9 55 55 55 55 55 	movabs $0x5555555555555555,%r9
  40d826:	55 55 55 
  40d829:	e9 73 ff ff ff       	jmpq   40d7a1 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1d1>
  40d82e:	66 90                	xchg   %ax,%ax
  40d830:	83 e1 01             	and    $0x1,%ecx
  40d833:	0f 84 35 02 00 00    	je     40da6e <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x49e>
  40d839:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40d83e:	0f 84 41 ff ff ff    	je     40d785 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40d844:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40d84b:	55 55 55 
  40d84e:	49 be 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%r14
  40d855:	7f d6 71 
  40d858:	49 bc 00 00 00 00 e0 	movabs $0xfff7eee000000000,%r12
  40d85f:	ee f7 ff 
  40d862:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40d868:	4d 89 ef             	mov    %r13,%r15
  40d86b:	49 29 ef             	sub    %rbp,%r15
  40d86e:	49 c1 ff 03          	sar    $0x3,%r15
  40d872:	49 8d 47 02          	lea    0x2(%r15),%rax
  40d876:	49 ff c7             	inc    %r15
  40d879:	4c 0f af f8          	imul   %rax,%r15
  40d87d:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40d882:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40d889:	4d 85 ff             	test   %r15,%r15
  40d88c:	0f 84 46 01 00 00    	je     40d9d8 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x408>
  40d892:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40d898:	0f 87 8a 01 00 00    	ja     40da28 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x458>
  40d89e:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40d8a2:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40d8a6:	48 89 f0             	mov    %rsi,%rax
  40d8a9:	48 c1 e8 1d          	shr    $0x1d,%rax
  40d8ad:	4c 21 d0             	and    %r10,%rax
  40d8b0:	48 31 c6             	xor    %rax,%rsi
  40d8b3:	48 89 f0             	mov    %rsi,%rax
  40d8b6:	48 c1 e0 11          	shl    $0x11,%rax
  40d8ba:	4c 21 f0             	and    %r14,%rax
  40d8bd:	48 31 c6             	xor    %rax,%rsi
  40d8c0:	48 89 f0             	mov    %rsi,%rax
  40d8c3:	48 c1 e0 25          	shl    $0x25,%rax
  40d8c7:	4c 21 e0             	and    %r12,%rax
  40d8ca:	48 31 c6             	xor    %rax,%rsi
  40d8cd:	48 89 f0             	mov    %rsi,%rax
  40d8d0:	48 c1 e8 2b          	shr    $0x2b,%rax
  40d8d4:	48 31 c6             	xor    %rax,%rsi
  40d8d7:	48 89 f2             	mov    %rsi,%rdx
  40d8da:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40d8df:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40d8e6:	49 39 f7             	cmp    %rsi,%r15
  40d8e9:	0f 86 a1 00 00 00    	jbe    40d990 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40d8ef:	4c 89 f8             	mov    %r15,%rax
  40d8f2:	48 f7 d8             	neg    %rax
  40d8f5:	31 d2                	xor    %edx,%edx
  40d8f7:	49 f7 f7             	div    %r15
  40d8fa:	49 89 d0             	mov    %rdx,%r8
  40d8fd:	48 39 d6             	cmp    %rdx,%rsi
  40d900:	72 5b                	jb     40d95d <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x38d>
  40d902:	e9 89 00 00 00       	jmpq   40d990 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40d907:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40d90e:	00 00 
  40d910:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
  40d914:	48 8d 48 01          	lea    0x1(%rax),%rcx
  40d918:	48 89 f0             	mov    %rsi,%rax
  40d91b:	48 c1 e8 1d          	shr    $0x1d,%rax
  40d91f:	4c 21 d0             	and    %r10,%rax
  40d922:	48 31 c6             	xor    %rax,%rsi
  40d925:	48 89 f0             	mov    %rsi,%rax
  40d928:	48 c1 e0 11          	shl    $0x11,%rax
  40d92c:	4c 21 f0             	and    %r14,%rax
  40d92f:	48 31 c6             	xor    %rax,%rsi
  40d932:	48 89 f0             	mov    %rsi,%rax
  40d935:	48 c1 e0 25          	shl    $0x25,%rax
  40d939:	4c 21 e0             	and    %r12,%rax
  40d93c:	48 31 c6             	xor    %rax,%rsi
  40d93f:	48 89 f0             	mov    %rsi,%rax
  40d942:	48 c1 e8 2b          	shr    $0x2b,%rax
  40d946:	48 31 c6             	xor    %rax,%rsi
  40d949:	48 89 f2             	mov    %rsi,%rdx
  40d94c:	c4 c2 cb f6 ff       	mulx   %r15,%rsi,%rdi
  40d951:	48 89 8b c0 09 00 00 	mov    %rcx,0x9c0(%rbx)
  40d958:	49 39 f0             	cmp    %rsi,%r8
  40d95b:	76 33                	jbe    40d990 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c0>
  40d95d:	48 89 c8             	mov    %rcx,%rax
  40d960:	48 81 f9 37 01 00 00 	cmp    $0x137,%rcx
  40d967:	76 a7                	jbe    40d910 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40d969:	48 89 df             	mov    %rbx,%rdi
  40d96c:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  40d971:	e8 aa fa ff ff       	callq  40d420 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40d976:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40d97d:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  40d982:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40d989:	55 55 55 
  40d98c:	eb 82                	jmp    40d910 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x340>
  40d98e:	66 90                	xchg   %ax,%ax
  40d990:	48 89 f8             	mov    %rdi,%rax
  40d993:	31 d2                	xor    %edx,%edx
  40d995:	48 f7 74 24 10       	divq   0x10(%rsp)
  40d99a:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40d99e:	49 83 c5 10          	add    $0x10,%r13
  40d9a2:	48 8d 44 c5 00       	lea    0x0(%rbp,%rax,8),%rax
  40d9a7:	48 8b 30             	mov    (%rax),%rsi
  40d9aa:	49 89 75 f0          	mov    %rsi,-0x10(%r13)
  40d9ae:	48 89 08             	mov    %rcx,(%rax)
  40d9b1:	48 8d 44 d5 00       	lea    0x0(%rbp,%rdx,8),%rax
  40d9b6:	48 8b 08             	mov    (%rax),%rcx
  40d9b9:	49 8b 55 f8          	mov    -0x8(%r13),%rdx
  40d9bd:	49 89 4d f8          	mov    %rcx,-0x8(%r13)
  40d9c1:	48 89 10             	mov    %rdx,(%rax)
  40d9c4:	4c 39 6c 24 08       	cmp    %r13,0x8(%rsp)
  40d9c9:	0f 85 99 fe ff ff    	jne    40d868 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x298>
  40d9cf:	e9 b1 fd ff ff       	jmpq   40d785 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x1b5>
  40d9d4:	0f 1f 40 00          	nopl   0x0(%rax)
  40d9d8:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40d9de:	77 70                	ja     40da50 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x480>
  40d9e0:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40d9e4:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40d9e8:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40d9ef:	48 89 c2             	mov    %rax,%rdx
  40d9f2:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40d9f6:	4c 21 d2             	and    %r10,%rdx
  40d9f9:	48 31 d0             	xor    %rdx,%rax
  40d9fc:	48 89 c2             	mov    %rax,%rdx
  40d9ff:	48 c1 e2 11          	shl    $0x11,%rdx
  40da03:	4c 21 f2             	and    %r14,%rdx
  40da06:	48 31 d0             	xor    %rdx,%rax
  40da09:	48 89 c2             	mov    %rax,%rdx
  40da0c:	48 c1 e2 25          	shl    $0x25,%rdx
  40da10:	4c 21 e2             	and    %r12,%rdx
  40da13:	48 31 d0             	xor    %rdx,%rax
  40da16:	48 89 c2             	mov    %rax,%rdx
  40da19:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40da1d:	48 31 d0             	xor    %rdx,%rax
  40da20:	e9 6e ff ff ff       	jmpq   40d993 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x3c3>
  40da25:	0f 1f 00             	nopl   (%rax)
  40da28:	48 89 df             	mov    %rbx,%rdi
  40da2b:	e8 f0 f9 ff ff       	callq  40d420 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40da30:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40da37:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40da3e:	55 55 55 
  40da41:	e9 58 fe ff ff       	jmpq   40d89e <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x2ce>
  40da46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40da4d:	00 00 00 
  40da50:	48 89 df             	mov    %rbx,%rdi
  40da53:	e8 c8 f9 ff ff       	callq  40d420 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40da58:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40da5f:	49 ba 55 55 55 55 55 	movabs $0x5555555555555555,%r10
  40da66:	55 55 55 
  40da69:	e9 72 ff ff ff       	jmpq   40d9e0 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x410>
  40da6e:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40da75:	48 3d 37 01 00 00    	cmp    $0x137,%rax
  40da7b:	0f 87 81 00 00 00    	ja     40db02 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x532>
  40da81:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40da85:	48 8b 04 c3          	mov    (%rbx,%rax,8),%rax
  40da89:	48 89 93 c0 09 00 00 	mov    %rdx,0x9c0(%rbx)
  40da90:	48 89 c2             	mov    %rax,%rdx
  40da93:	48 b9 55 55 55 55 55 	movabs $0x5555555555555555,%rcx
  40da9a:	55 55 55 
  40da9d:	48 c1 ea 1d          	shr    $0x1d,%rdx
  40daa1:	48 21 ca             	and    %rcx,%rdx
  40daa4:	48 31 d0             	xor    %rdx,%rax
  40daa7:	48 89 c2             	mov    %rax,%rdx
  40daaa:	48 b9 00 00 a6 ed ff 	movabs $0x71d67fffeda60000,%rcx
  40dab1:	7f d6 71 
  40dab4:	48 c1 e2 11          	shl    $0x11,%rdx
  40dab8:	48 21 ca             	and    %rcx,%rdx
  40dabb:	48 31 d0             	xor    %rdx,%rax
  40dabe:	48 89 c2             	mov    %rax,%rdx
  40dac1:	48 b9 00 00 00 00 e0 	movabs $0xfff7eee000000000,%rcx
  40dac8:	ee f7 ff 
  40dacb:	48 c1 e2 25          	shl    $0x25,%rdx
  40dacf:	48 21 ca             	and    %rcx,%rdx
  40dad2:	48 31 d0             	xor    %rdx,%rax
  40dad5:	48 89 c2             	mov    %rax,%rdx
  40dad8:	48 c1 ea 2b          	shr    $0x2b,%rdx
  40dadc:	48 31 d0             	xor    %rdx,%rax
  40dadf:	31 ff                	xor    %edi,%edi
  40dae1:	48 0f a4 c7 01       	shld   $0x1,%rax,%rdi
  40dae6:	48 8d 44 fd 00       	lea    0x0(%rbp,%rdi,8),%rax
  40daeb:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  40daef:	48 8b 08             	mov    (%rax),%rcx
  40daf2:	4c 8d 6d 10          	lea    0x10(%rbp),%r13
  40daf6:	48 89 4d 08          	mov    %rcx,0x8(%rbp)
  40dafa:	48 89 10             	mov    %rdx,(%rax)
  40dafd:	e9 37 fd ff ff       	jmpq   40d839 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x269>
  40db02:	48 89 df             	mov    %rbx,%rdi
  40db05:	e8 16 f9 ff ff       	callq  40d420 <_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE11_M_gen_randEv>
  40db0a:	48 8b 83 c0 09 00 00 	mov    0x9c0(%rbx),%rax
  40db11:	e9 6b ff ff ff       	jmpq   40da81 <_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEvT_SA_OT0_+0x4b1>

Disassembly of section .fini:

000000000040db18 <_fini>:
  40db18:	f3 0f 1e fa          	endbr64 
  40db1c:	48 83 ec 08          	sub    $0x8,%rsp
  40db20:	48 83 c4 08          	add    $0x8,%rsp
  40db24:	c3                   	retq   
