
/lpor1/store_0/usr/user/hw-bench-stage-v3/build/amx_peak:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e1 3f 00 00 	mov    0x3fe1(%rip),%rax        # 404ff0 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 3f 00 00    	pushq  0x3fe2(%rip)        # 405008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 3f 00 00    	jmpq   *0x3fe4(%rip)        # 405010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <__errno_location@plt>:
  401030:	ff 25 e2 3f 00 00    	jmpq   *0x3fe2(%rip)        # 405018 <__errno_location@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <syscall@plt>:
  401040:	ff 25 da 3f 00 00    	jmpq   *0x3fda(%rip)        # 405020 <syscall@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>:
  401050:	ff 25 d2 3f 00 00    	jmpq   *0x3fd2(%rip)        # 405028 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@GLIBCXX_3.4.21>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <strerror@plt>:
  401060:	ff 25 ca 3f 00 00    	jmpq   *0x3fca(%rip)        # 405030 <strerror@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <strlen@plt>:
  401070:	ff 25 c2 3f 00 00    	jmpq   *0x3fc2(%rip)        # 405038 <strlen@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <memset@plt>:
  401080:	ff 25 ba 3f 00 00    	jmpq   *0x3fba(%rip)        # 405040 <memset@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <_ZSt24__throw_invalid_argumentPKc@plt>:
  401090:	ff 25 b2 3f 00 00    	jmpq   *0x3fb2(%rip)        # 405048 <_ZSt24__throw_invalid_argumentPKc@GLIBCXX_3.4>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <_ZNSo9_M_insertImEERSoT_@plt>:
  4010a0:	ff 25 aa 3f 00 00    	jmpq   *0x3faa(%rip)        # 405050 <_ZNSo9_M_insertImEERSoT_@GLIBCXX_3.4.9>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <_ZSt19__throw_logic_errorPKc@plt>:
  4010b0:	ff 25 a2 3f 00 00    	jmpq   *0x3fa2(%rip)        # 405058 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <memcpy@plt>:
  4010c0:	ff 25 9a 3f 00 00    	jmpq   *0x3f9a(%rip)        # 405060 <memcpy@GLIBC_2.14>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <__cxa_atexit@plt>:
  4010d0:	ff 25 92 3f 00 00    	jmpq   *0x3f92(%rip)        # 405068 <__cxa_atexit@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  4010e0:	ff 25 8a 3f 00 00    	jmpq   *0x3f8a(%rip)        # 405070 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

00000000004010f0 <_ZdlPvm@plt>:
  4010f0:	ff 25 82 3f 00 00    	jmpq   *0x3f82(%rip)        # 405078 <_ZdlPvm@CXXABI_1.3.9>
  4010f6:	68 0c 00 00 00       	pushq  $0xc
  4010fb:	e9 20 ff ff ff       	jmpq   401020 <.plt>

0000000000401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
  401100:	ff 25 7a 3f 00 00    	jmpq   *0x3f7a(%rip)        # 405080 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
  401106:	68 0d 00 00 00       	pushq  $0xd
  40110b:	e9 10 ff ff ff       	jmpq   401020 <.plt>

0000000000401110 <strtoull@plt>:
  401110:	ff 25 72 3f 00 00    	jmpq   *0x3f72(%rip)        # 405088 <strtoull@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	pushq  $0xe
  40111b:	e9 00 ff ff ff       	jmpq   401020 <.plt>

0000000000401120 <strtol@plt>:
  401120:	ff 25 6a 3f 00 00    	jmpq   *0x3f6a(%rip)        # 405090 <strtol@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	pushq  $0xf
  40112b:	e9 f0 fe ff ff       	jmpq   401020 <.plt>

0000000000401130 <_ZSt20__throw_out_of_rangePKc@plt>:
  401130:	ff 25 62 3f 00 00    	jmpq   *0x3f62(%rip)        # 405098 <_ZSt20__throw_out_of_rangePKc@GLIBCXX_3.4>
  401136:	68 10 00 00 00       	pushq  $0x10
  40113b:	e9 e0 fe ff ff       	jmpq   401020 <.plt>

0000000000401140 <GOMP_parallel@plt>:
  401140:	ff 25 5a 3f 00 00    	jmpq   *0x3f5a(%rip)        # 4050a0 <GOMP_parallel@GOMP_4.0>
  401146:	68 11 00 00 00       	pushq  $0x11
  40114b:	e9 d0 fe ff ff       	jmpq   401020 <.plt>

0000000000401150 <_ZNSt8ios_base4InitC1Ev@plt>:
  401150:	ff 25 52 3f 00 00    	jmpq   *0x3f52(%rip)        # 4050a8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  401156:	68 12 00 00 00       	pushq  $0x12
  40115b:	e9 c0 fe ff ff       	jmpq   401020 <.plt>

0000000000401160 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>:
  401160:	ff 25 4a 3f 00 00    	jmpq   *0x3f4a(%rip)        # 4050b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@GLIBCXX_3.4.21>
  401166:	68 13 00 00 00       	pushq  $0x13
  40116b:	e9 b0 fe ff ff       	jmpq   401020 <.plt>

0000000000401170 <_ZNSo9_M_insertIdEERSoT_@plt>:
  401170:	ff 25 42 3f 00 00    	jmpq   *0x3f42(%rip)        # 4050b8 <_ZNSo9_M_insertIdEERSoT_@GLIBCXX_3.4.9>
  401176:	68 14 00 00 00       	pushq  $0x14
  40117b:	e9 a0 fe ff ff       	jmpq   401020 <.plt>

0000000000401180 <__gxx_personality_v0@plt>:
  401180:	ff 25 3a 3f 00 00    	jmpq   *0x3f3a(%rip)        # 4050c0 <__gxx_personality_v0@CXXABI_1.3>
  401186:	68 15 00 00 00       	pushq  $0x15
  40118b:	e9 90 fe ff ff       	jmpq   401020 <.plt>

0000000000401190 <omp_get_max_threads@plt>:
  401190:	ff 25 32 3f 00 00    	jmpq   *0x3f32(%rip)        # 4050c8 <omp_get_max_threads@OMP_1.0>
  401196:	68 16 00 00 00       	pushq  $0x16
  40119b:	e9 80 fe ff ff       	jmpq   401020 <.plt>

00000000004011a0 <_ZNSolsEi@plt>:
  4011a0:	ff 25 2a 3f 00 00    	jmpq   *0x3f2a(%rip)        # 4050d0 <_ZNSolsEi@GLIBCXX_3.4>
  4011a6:	68 17 00 00 00       	pushq  $0x17
  4011ab:	e9 70 fe ff ff       	jmpq   401020 <.plt>

00000000004011b0 <_Unwind_Resume@plt>:
  4011b0:	ff 25 22 3f 00 00    	jmpq   *0x3f22(%rip)        # 4050d8 <_Unwind_Resume@GCC_3.0>
  4011b6:	68 18 00 00 00       	pushq  $0x18
  4011bb:	e9 60 fe ff ff       	jmpq   401020 <.plt>

00000000004011c0 <omp_get_wtime@plt>:
  4011c0:	ff 25 1a 3f 00 00    	jmpq   *0x3f1a(%rip)        # 4050e0 <omp_get_wtime@OMP_2.0>
  4011c6:	68 19 00 00 00       	pushq  $0x19
  4011cb:	e9 50 fe ff ff       	jmpq   401020 <.plt>

00000000004011d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>:
  4011d0:	ff 25 12 3f 00 00    	jmpq   *0x3f12(%rip)        # 4050e8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@GLIBCXX_3.4.21>
  4011d6:	68 1a 00 00 00       	pushq  $0x1a
  4011db:	e9 40 fe ff ff       	jmpq   401020 <.plt>

00000000004011e0 <_ZNSt8ios_base4InitD1Ev@plt>:
  4011e0:	ff 25 0a 3f 00 00    	jmpq   *0x3f0a(%rip)        # 4050f0 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  4011e6:	68 1b 00 00 00       	pushq  $0x1b
  4011eb:	e9 30 fe ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

00000000004011f0 <main.cold>:
  4011f0:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  4011f5:	75 08                	jne    4011ff <main.cold+0xf>
  4011f7:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4011fb:	41 89 04 24          	mov    %eax,(%r12)
  4011ff:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  401204:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  40120b:	00 
  40120c:	48 39 c7             	cmp    %rax,%rdi
  40120f:	0f 84 88 00 00 00    	je     40129d <main.cold+0xad>
  401215:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  40121c:	00 
  40121d:	48 8d 70 01          	lea    0x1(%rax),%rsi
  401221:	c5 f8 77             	vzeroupper 
  401224:	e8 c7 fe ff ff       	callq  4010f0 <_ZdlPvm@plt>
  401229:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40122e:	4c 39 ff             	cmp    %r15,%rdi
  401231:	74 0e                	je     401241 <main.cold+0x51>
  401233:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  401238:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40123c:	e8 af fe ff ff       	callq  4010f0 <_ZdlPvm@plt>
  401241:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  401246:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40124b:	48 39 c7             	cmp    %rax,%rdi
  40124e:	74 0e                	je     40125e <main.cold+0x6e>
  401250:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  401255:	48 8d 70 01          	lea    0x1(%rax),%rsi
  401259:	e8 92 fe ff ff       	callq  4010f0 <_ZdlPvm@plt>
  40125e:	48 89 df             	mov    %rbx,%rdi
  401261:	e8 4a ff ff ff       	callq  4011b0 <_Unwind_Resume@plt>
  401266:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
  40126b:	75 08                	jne    401275 <main.cold+0x85>
  40126d:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401271:	41 89 04 24          	mov    %eax,(%r12)
  401275:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  40127a:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  401281:	00 
  401282:	48 39 c7             	cmp    %rax,%rdi
  401285:	74 1b                	je     4012a2 <main.cold+0xb2>
  401287:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  40128e:	00 
  40128f:	48 8d 70 01          	lea    0x1(%rax),%rsi
  401293:	c5 f8 77             	vzeroupper 
  401296:	e8 55 fe ff ff       	callq  4010f0 <_ZdlPvm@plt>
  40129b:	eb 8c                	jmp    401229 <main.cold+0x39>
  40129d:	c5 f8 77             	vzeroupper 
  4012a0:	eb 87                	jmp    401229 <main.cold+0x39>
  4012a2:	c5 f8 77             	vzeroupper 
  4012a5:	eb 82                	jmp    401229 <main.cold+0x39>
  4012a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4012ae:	00 00 

00000000004012b0 <main>:
  4012b0:	41 57                	push   %r15
  4012b2:	41 56                	push   %r14
  4012b4:	41 55                	push   %r13
  4012b6:	41 54                	push   %r12
  4012b8:	55                   	push   %rbp
  4012b9:	53                   	push   %rbx
  4012ba:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  4012c1:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
  4012c6:	89 7c 24 08          	mov    %edi,0x8(%rsp)
  4012ca:	48 89 34 24          	mov    %rsi,(%rsp)
  4012ce:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
  4012d3:	c7 44 24 40 62 66 31 	movl   $0x36316662,0x40(%rsp)
  4012da:	36 
  4012db:	48 c7 44 24 38 04 00 	movq   $0x4,0x38(%rsp)
  4012e2:	00 00 
  4012e4:	c6 44 24 44 00       	movb   $0x0,0x44(%rsp)
  4012e9:	83 ff 01             	cmp    $0x1,%edi
  4012ec:	0f 8e 10 08 00 00    	jle    401b02 <main+0x852>
  4012f2:	89 f8                	mov    %edi,%eax
  4012f4:	83 e8 02             	sub    $0x2,%eax
  4012f7:	83 e0 fe             	and    $0xfffffffe,%eax
  4012fa:	83 c0 04             	add    $0x4,%eax
  4012fd:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401301:	c7 44 24 14 00 01 00 	movl   $0x100,0x14(%rsp)
  401308:	00 
  401309:	48 c7 44 24 18 32 00 	movq   $0x32,0x18(%rsp)
  401310:	00 00 
  401312:	48 8d 6e 08          	lea    0x8(%rsi),%rbp
  401316:	bb 02 00 00 00       	mov    $0x2,%ebx
  40131b:	4c 8d 7c 24 60       	lea    0x60(%rsp),%r15
  401320:	4c 8b 65 00          	mov    0x0(%rbp),%r12
  401324:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
  401329:	4d 85 e4             	test   %r12,%r12
  40132c:	0f 84 01 05 00 00    	je     401833 <main+0x583>
  401332:	4c 89 e7             	mov    %r12,%rdi
  401335:	e8 36 fd ff ff       	callq  401070 <strlen@plt>
  40133a:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  40133f:	49 89 c5             	mov    %rax,%r13
  401342:	48 83 f8 0f          	cmp    $0xf,%rax
  401346:	0f 87 d4 00 00 00    	ja     401420 <main+0x170>
  40134c:	48 83 f8 01          	cmp    $0x1,%rax
  401350:	0f 85 b2 00 00 00    	jne    401408 <main+0x158>
  401356:	41 0f b6 14 24       	movzbl (%r12),%edx
  40135b:	88 54 24 60          	mov    %dl,0x60(%rsp)
  40135f:	4c 89 fa             	mov    %r15,%rdx
  401362:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  401367:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  40136b:	be 1b 30 40 00       	mov    $0x40301b,%esi
  401370:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  401375:	e8 d6 fc ff ff       	callq  401050 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40137a:	85 c0                	test   %eax,%eax
  40137c:	0f 85 de 00 00 00    	jne    401460 <main+0x1b0>
  401382:	3b 5c 24 08          	cmp    0x8(%rsp),%ebx
  401386:	0f 8c b4 04 00 00    	jl     401840 <main+0x590>
  40138c:	be 22 30 40 00       	mov    $0x403022,%esi
  401391:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  401396:	e8 b5 fc ff ff       	callq  401050 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40139b:	85 c0                	test   %eax,%eax
  40139d:	0f 85 cd 04 00 00    	jne    401870 <main+0x5c0>
  4013a3:	be 2a 30 40 00       	mov    $0x40302a,%esi
  4013a8:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  4013ad:	e8 9e fc ff ff       	callq  401050 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4013b2:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4013b7:	4c 39 ff             	cmp    %r15,%rdi
  4013ba:	74 0e                	je     4013ca <main+0x11a>
  4013bc:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  4013c1:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4013c5:	e8 26 fd ff ff       	callq  4010f0 <_ZdlPvm@plt>
  4013ca:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  4013d0:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  4013d5:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  4013da:	48 39 c7             	cmp    %rax,%rdi
  4013dd:	74 0e                	je     4013ed <main+0x13d>
  4013df:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  4013e4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4013e8:	e8 03 fd ff ff       	callq  4010f0 <_ZdlPvm@plt>
  4013ed:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013f4:	5b                   	pop    %rbx
  4013f5:	5d                   	pop    %rbp
  4013f6:	44 89 e0             	mov    %r12d,%eax
  4013f9:	41 5c                	pop    %r12
  4013fb:	41 5d                	pop    %r13
  4013fd:	41 5e                	pop    %r14
  4013ff:	41 5f                	pop    %r15
  401401:	c3                   	retq   
  401402:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401408:	48 85 c0             	test   %rax,%rax
  40140b:	0f 85 55 07 00 00    	jne    401b66 <main+0x8b6>
  401411:	4c 89 fa             	mov    %r15,%rdx
  401414:	e9 49 ff ff ff       	jmpq   401362 <main+0xb2>
  401419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401420:	31 d2                	xor    %edx,%edx
  401422:	48 8d 74 24 70       	lea    0x70(%rsp),%rsi
  401427:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  40142c:	e8 9f fd ff ff       	callq  4011d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  401431:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  401436:	48 89 c7             	mov    %rax,%rdi
  401439:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
  40143e:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  401443:	4c 89 ea             	mov    %r13,%rdx
  401446:	4c 89 e6             	mov    %r12,%rsi
  401449:	e8 72 fc ff ff       	callq  4010c0 <memcpy@plt>
  40144e:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
  401453:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
  401458:	e9 05 ff ff ff       	jmpq   401362 <main+0xb2>
  40145d:	0f 1f 00             	nopl   (%rax)
  401460:	be 22 30 40 00       	mov    $0x403022,%esi
  401465:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  40146a:	e8 e1 fb ff ff       	callq  401050 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40146f:	85 c0                	test   %eax,%eax
  401471:	0f 85 f9 03 00 00    	jne    401870 <main+0x5c0>
  401477:	3b 5c 24 08          	cmp    0x8(%rsp),%ebx
  40147b:	0f 8d 22 ff ff ff    	jge    4013a3 <main+0xf3>
  401481:	48 8b 0c 24          	mov    (%rsp),%rcx
  401485:	48 63 c3             	movslq %ebx,%rax
  401488:	4c 8b 24 c1          	mov    (%rcx,%rax,8),%r12
  40148c:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  401493:	00 
  401494:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  401499:	4d 85 e4             	test   %r12,%r12
  40149c:	0f 84 a8 06 00 00    	je     401b4a <main+0x89a>
  4014a2:	4c 89 e7             	mov    %r12,%rdi
  4014a5:	e8 c6 fb ff ff       	callq  401070 <strlen@plt>
  4014aa:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4014af:	49 89 c6             	mov    %rax,%r14
  4014b2:	48 83 f8 0f          	cmp    $0xf,%rax
  4014b6:	0f 87 34 05 00 00    	ja     4019f0 <main+0x740>
  4014bc:	48 83 f8 01          	cmp    $0x1,%rax
  4014c0:	0f 85 0a 05 00 00    	jne    4019d0 <main+0x720>
  4014c6:	41 0f b6 14 24       	movzbl (%r12),%edx
  4014cb:	4c 8d 6c 24 28       	lea    0x28(%rsp),%r13
  4014d0:	88 94 24 80 00 00 00 	mov    %dl,0x80(%rsp)
  4014d7:	48 8d 94 24 80 00 00 	lea    0x80(%rsp),%rdx
  4014de:	00 
  4014df:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  4014e4:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4014e8:	e8 43 fb ff ff       	callq  401030 <__errno_location@plt>
  4014ed:	49 89 c4             	mov    %rax,%r12
  4014f0:	4c 8b 74 24 70       	mov    0x70(%rsp),%r14
  4014f5:	8b 00                	mov    (%rax),%eax
  4014f7:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  4014fe:	00 
  4014ff:	ba 0a 00 00 00       	mov    $0xa,%edx
  401504:	4c 89 ee             	mov    %r13,%rsi
  401507:	4c 89 f7             	mov    %r14,%rdi
  40150a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40150e:	e8 fd fb ff ff       	callq  401110 <strtoull@plt>
  401513:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  401518:	4c 3b 74 24 28       	cmp    0x28(%rsp),%r14
  40151d:	0f 84 09 06 00 00    	je     401b2c <main+0x87c>
  401523:	41 8b 04 24          	mov    (%r12),%eax
  401527:	83 f8 22             	cmp    $0x22,%eax
  40152a:	0f 84 10 06 00 00    	je     401b40 <main+0x890>
  401530:	85 c0                	test   %eax,%eax
  401532:	75 08                	jne    40153c <main+0x28c>
  401534:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401538:	41 89 04 24          	mov    %eax,(%r12)
  40153c:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  401541:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  401548:	00 
  401549:	48 39 c7             	cmp    %rax,%rdi
  40154c:	74 11                	je     40155f <main+0x2af>
  40154e:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  401555:	00 
  401556:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40155a:	e8 91 fb ff ff       	callq  4010f0 <_ZdlPvm@plt>
  40155f:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  401564:	4c 39 ff             	cmp    %r15,%rdi
  401567:	0f 84 a3 02 00 00    	je     401810 <main+0x560>
  40156d:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  401572:	83 c3 02             	add    $0x2,%ebx
  401575:	48 8d 70 01          	lea    0x1(%rax),%rsi
  401579:	e8 72 fb ff ff       	callq  4010f0 <_ZdlPvm@plt>
  40157e:	48 83 c5 10          	add    $0x10,%rbp
  401582:	3b 5c 24 0c          	cmp    0xc(%rsp),%ebx
  401586:	0f 85 94 fd ff ff    	jne    401320 <main+0x70>
  40158c:	31 c0                	xor    %eax,%eax
  40158e:	ba 12 00 00 00       	mov    $0x12,%edx
  401593:	be 23 10 00 00       	mov    $0x1023,%esi
  401598:	bf 9e 00 00 00       	mov    $0x9e,%edi
  40159d:	e8 9e fa ff ff       	callq  401040 <syscall@plt>
  4015a2:	48 85 c0             	test   %rax,%rax
  4015a5:	0f 85 08 05 00 00    	jne    401ab3 <main+0x803>
  4015ab:	be 3e 30 40 00       	mov    $0x40303e,%esi
  4015b0:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4015b5:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
  4015bc:	00 00 
  4015be:	e8 8d fa ff ff       	callq  401050 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4015c3:	85 c0                	test   %eax,%eax
  4015c5:	0f 85 68 04 00 00    	jne    401a33 <main+0x783>
  4015cb:	e8 f0 fb ff ff       	callq  4011c0 <omp_get_wtime@plt>
  4015d0:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
  4015d5:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  4015da:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4015de:	c4 c1 f9 7e c5       	vmovq  %xmm0,%r13
  4015e3:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
  4015ea:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  4015ef:	31 c9                	xor    %ecx,%ecx
  4015f1:	31 d2                	xor    %edx,%edx
  4015f3:	48 8d 74 24 70       	lea    0x70(%rsp),%rsi
  4015f8:	bf d0 1c 40 00       	mov    $0x401cd0,%edi
  4015fd:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  401602:	e8 39 fb ff ff       	callq  401140 <GOMP_parallel@plt>
  401607:	e8 b4 fb ff ff       	callq  4011c0 <omp_get_wtime@plt>
  40160c:	c4 c1 f9 6e ed       	vmovq  %r13,%xmm5
  401611:	c5 fb 5c e5          	vsubsd %xmm5,%xmm0,%xmm4
  401615:	bb 00 40 00 00       	mov    $0x4000,%ebx
  40161a:	c4 c1 f9 7e e5       	vmovq  %xmm4,%r13
  40161f:	e8 6c fb ff ff       	callq  401190 <omp_get_max_threads@plt>
  401624:	48 63 6c 24 14       	movslq 0x14(%rsp),%rbp
  401629:	c5 fb 10 44 24 50    	vmovsd 0x50(%rsp),%xmm0
  40162f:	48 0f af 6c 24 18    	imul   0x18(%rsp),%rbp
  401635:	48 98                	cltq   
  401637:	c5 f9 54 0d 51 1b 00 	vandpd 0x1b51(%rip),%xmm0,%xmm1        # 403190 <__dso_handle+0x188>
  40163e:	00 
  40163f:	48 0f af eb          	imul   %rbx,%rbp
  401643:	c5 fb 10 15 2d 1b 00 	vmovsd 0x1b2d(%rip),%xmm2        # 403178 <__dso_handle+0x170>
  40164a:	00 
  40164b:	31 db                	xor    %ebx,%ebx
  40164d:	48 0f af e8          	imul   %rax,%rbp
  401651:	48 c1 e5 02          	shl    $0x2,%rbp
  401655:	c5 f9 2e d1          	vucomisd %xmm1,%xmm2
  401659:	0f 83 44 04 00 00    	jae    401aa3 <main+0x7f3>
  40165f:	48 8b 05 9a 3a 00 00 	mov    0x3a9a(%rip),%rax        # 405100 <_ZSt4cout@@GLIBCXX_3.4>
  401666:	ba 26 00 00 00       	mov    $0x26,%edx
  40166b:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40166f:	be 48 31 40 00       	mov    $0x403148,%esi
  401674:	bf 00 51 40 00       	mov    $0x405100,%edi
  401679:	48 c7 80 08 51 40 00 	movq   $0xc,0x405108(%rax)
  401680:	0c 00 00 00 
  401684:	e8 77 fa ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401689:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  40168e:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  401693:	bf 00 51 40 00       	mov    $0x405100,%edi
  401698:	e8 63 fa ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40169d:	ba 0f 00 00 00       	mov    $0xf,%edx
  4016a2:	be 48 30 40 00       	mov    $0x403048,%esi
  4016a7:	48 89 c7             	mov    %rax,%rdi
  4016aa:	49 89 c4             	mov    %rax,%r12
  4016ad:	e8 4e fa ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4016b2:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  4016b7:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  4016bc:	4c 89 e7             	mov    %r12,%rdi
  4016bf:	e8 3c fa ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4016c4:	ba 0c 00 00 00       	mov    $0xc,%edx
  4016c9:	be 58 30 40 00       	mov    $0x403058,%esi
  4016ce:	48 89 c7             	mov    %rax,%rdi
  4016d1:	49 89 c4             	mov    %rax,%r12
  4016d4:	e8 27 fa ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4016d9:	e8 b2 fa ff ff       	callq  401190 <omp_get_max_threads@plt>
  4016de:	89 c6                	mov    %eax,%esi
  4016e0:	4c 89 e7             	mov    %r12,%rdi
  4016e3:	e8 b8 fa ff ff       	callq  4011a0 <_ZNSolsEi@plt>
  4016e8:	ba 14 00 00 00       	mov    $0x14,%edx
  4016ed:	be 65 30 40 00       	mov    $0x403065,%esi
  4016f2:	48 89 c7             	mov    %rax,%rdi
  4016f5:	49 89 c4             	mov    %rax,%r12
  4016f8:	e8 03 fa ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4016fd:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
  401702:	4c 89 e7             	mov    %r12,%rdi
  401705:	e8 96 f9 ff ff       	callq  4010a0 <_ZNSo9_M_insertImEERSoT_@plt>
  40170a:	ba 14 00 00 00       	mov    $0x14,%edx
  40170f:	be 7a 30 40 00       	mov    $0x40307a,%esi
  401714:	48 89 c7             	mov    %rax,%rdi
  401717:	49 89 c4             	mov    %rax,%r12
  40171a:	e8 e1 f9 ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40171f:	8b 74 24 14          	mov    0x14(%rsp),%esi
  401723:	4c 89 e7             	mov    %r12,%rdi
  401726:	e8 75 fa ff ff       	callq  4011a0 <_ZNSolsEi@plt>
  40172b:	ba 0e 00 00 00       	mov    $0xe,%edx
  401730:	be 8f 30 40 00       	mov    $0x40308f,%esi
  401735:	48 89 c7             	mov    %rax,%rdi
  401738:	49 89 c4             	mov    %rax,%r12
  40173b:	e8 c0 f9 ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401740:	48 89 ee             	mov    %rbp,%rsi
  401743:	4c 89 e7             	mov    %r12,%rdi
  401746:	e8 55 f9 ff ff       	callq  4010a0 <_ZNSo9_M_insertImEERSoT_@plt>
  40174b:	ba 13 00 00 00       	mov    $0x13,%edx
  401750:	be 9e 30 40 00       	mov    $0x40309e,%esi
  401755:	48 89 c7             	mov    %rax,%rdi
  401758:	49 89 c4             	mov    %rax,%r12
  40175b:	e8 a0 f9 ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401760:	c4 c1 f9 6e c5       	vmovq  %r13,%xmm0
  401765:	4c 89 e7             	mov    %r12,%rdi
  401768:	e8 03 fa ff ff       	callq  401170 <_ZNSo9_M_insertIdEERSoT_@plt>
  40176d:	ba 14 00 00 00       	mov    $0x14,%edx
  401772:	be b2 30 40 00       	mov    $0x4030b2,%esi
  401777:	48 89 c7             	mov    %rax,%rdi
  40177a:	49 89 c4             	mov    %rax,%r12
  40177d:	e8 7e f9 ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401782:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  401786:	62 f1 ff 08 7b c5    	vcvtusi2sd %rbp,%xmm0,%xmm0
  40178c:	c4 c1 f9 6e dd       	vmovq  %r13,%xmm3
  401791:	4c 89 e7             	mov    %r12,%rdi
  401794:	c5 fb 5e c3          	vdivsd %xmm3,%xmm0,%xmm0
  401798:	c5 fb 5e 05 e0 19 00 	vdivsd 0x19e0(%rip),%xmm0,%xmm0        # 403180 <__dso_handle+0x178>
  40179f:	00 
  4017a0:	e8 cb f9 ff ff       	callq  401170 <_ZNSo9_M_insertIdEERSoT_@plt>
  4017a5:	ba 0c 00 00 00       	mov    $0xc,%edx
  4017aa:	be c7 30 40 00       	mov    $0x4030c7,%esi
  4017af:	48 89 c7             	mov    %rax,%rdi
  4017b2:	48 89 c5             	mov    %rax,%rbp
  4017b5:	e8 46 f9 ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4017ba:	c5 fb 10 44 24 50    	vmovsd 0x50(%rsp),%xmm0
  4017c0:	48 89 ef             	mov    %rbp,%rdi
  4017c3:	e8 a8 f9 ff ff       	callq  401170 <_ZNSo9_M_insertIdEERSoT_@plt>
  4017c8:	ba 09 00 00 00       	mov    $0x9,%edx
  4017cd:	be d4 30 40 00       	mov    $0x4030d4,%esi
  4017d2:	48 89 c7             	mov    %rax,%rdi
  4017d5:	48 89 c5             	mov    %rax,%rbp
  4017d8:	e8 23 f9 ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4017dd:	84 db                	test   %bl,%bl
  4017df:	be 10 30 40 00       	mov    $0x403010,%esi
  4017e4:	b8 15 30 40 00       	mov    $0x403015,%eax
  4017e9:	48 0f 44 f0          	cmove  %rax,%rsi
  4017ed:	48 89 ef             	mov    %rbp,%rdi
  4017f0:	e8 eb f8 ff ff       	callq  4010e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4017f5:	48 89 c7             	mov    %rax,%rdi
  4017f8:	be de 30 40 00       	mov    $0x4030de,%esi
  4017fd:	e8 de f8 ff ff       	callq  4010e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401802:	83 f3 01             	xor    $0x1,%ebx
  401805:	44 0f b6 e3          	movzbl %bl,%r12d
  401809:	e9 c2 fb ff ff       	jmpq   4013d0 <main+0x120>
  40180e:	66 90                	xchg   %ax,%ax
  401810:	83 c3 02             	add    $0x2,%ebx
  401813:	48 83 c5 10          	add    $0x10,%rbp
  401817:	39 5c 24 0c          	cmp    %ebx,0xc(%rsp)
  40181b:	0f 84 6b fd ff ff    	je     40158c <main+0x2dc>
  401821:	4c 8b 65 00          	mov    0x0(%rbp),%r12
  401825:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
  40182a:	4d 85 e4             	test   %r12,%r12
  40182d:	0f 85 ff fa ff ff    	jne    401332 <main+0x82>
  401833:	bf e8 30 40 00       	mov    $0x4030e8,%edi
  401838:	e8 73 f8 ff ff       	callq  4010b0 <_ZSt19__throw_logic_errorPKc@plt>
  40183d:	0f 1f 00             	nopl   (%rax)
  401840:	48 8b 0c 24          	mov    (%rsp),%rcx
  401844:	48 63 c3             	movslq %ebx,%rax
  401847:	4c 8b 24 c1          	mov    (%rcx,%rax,8),%r12
  40184b:	4c 89 e7             	mov    %r12,%rdi
  40184e:	e8 1d f8 ff ff       	callq  401070 <strlen@plt>
  401853:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401858:	49 89 c0             	mov    %rax,%r8
  40185b:	4c 89 e1             	mov    %r12,%rcx
  40185e:	31 f6                	xor    %esi,%esi
  401860:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  401865:	e8 f6 f8 ff ff       	callq  401160 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  40186a:	e9 f0 fc ff ff       	jmpq   40155f <main+0x2af>
  40186f:	90                   	nop
  401870:	be 2a 30 40 00       	mov    $0x40302a,%esi
  401875:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  40187a:	e8 d1 f7 ff ff       	callq  401050 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40187f:	85 c0                	test   %eax,%eax
  401881:	0f 85 2b fb ff ff    	jne    4013b2 <main+0x102>
  401887:	3b 5c 24 08          	cmp    0x8(%rsp),%ebx
  40188b:	0f 8d 21 fb ff ff    	jge    4013b2 <main+0x102>
  401891:	48 8b 0c 24          	mov    (%rsp),%rcx
  401895:	48 63 c3             	movslq %ebx,%rax
  401898:	4c 8b 24 c1          	mov    (%rcx,%rax,8),%r12
  40189c:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
  4018a3:	00 
  4018a4:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  4018a9:	4d 85 e4             	test   %r12,%r12
  4018ac:	0f 84 84 02 00 00    	je     401b36 <main+0x886>
  4018b2:	4c 89 e7             	mov    %r12,%rdi
  4018b5:	e8 b6 f7 ff ff       	callq  401070 <strlen@plt>
  4018ba:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4018bf:	49 89 c6             	mov    %rax,%r14
  4018c2:	48 83 f8 0f          	cmp    $0xf,%rax
  4018c6:	0f 87 bc 00 00 00    	ja     401988 <main+0x6d8>
  4018cc:	48 83 f8 01          	cmp    $0x1,%rax
  4018d0:	0f 85 92 00 00 00    	jne    401968 <main+0x6b8>
  4018d6:	41 0f b6 14 24       	movzbl (%r12),%edx
  4018db:	4c 8d 6c 24 28       	lea    0x28(%rsp),%r13
  4018e0:	88 94 24 80 00 00 00 	mov    %dl,0x80(%rsp)
  4018e7:	48 8d 94 24 80 00 00 	lea    0x80(%rsp),%rdx
  4018ee:	00 
  4018ef:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  4018f4:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4018f8:	e8 33 f7 ff ff       	callq  401030 <__errno_location@plt>
  4018fd:	49 89 c4             	mov    %rax,%r12
  401900:	4c 8b 74 24 70       	mov    0x70(%rsp),%r14
  401905:	8b 00                	mov    (%rax),%eax
  401907:	41 c7 04 24 00 00 00 	movl   $0x0,(%r12)
  40190e:	00 
  40190f:	ba 0a 00 00 00       	mov    $0xa,%edx
  401914:	4c 89 ee             	mov    %r13,%rsi
  401917:	4c 89 f7             	mov    %r14,%rdi
  40191a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40191e:	e8 fd f7 ff ff       	callq  401120 <strtol@plt>
  401923:	4c 3b 74 24 28       	cmp    0x28(%rsp),%r14
  401928:	0f 84 f4 01 00 00    	je     401b22 <main+0x872>
  40192e:	41 8b 14 24          	mov    (%r12),%edx
  401932:	83 fa 22             	cmp    $0x22,%edx
  401935:	0f 84 dd 01 00 00    	je     401b18 <main+0x868>
  40193b:	b9 00 00 00 80       	mov    $0x80000000,%ecx
  401940:	48 01 c1             	add    %rax,%rcx
  401943:	be ff ff ff ff       	mov    $0xffffffff,%esi
  401948:	48 39 f1             	cmp    %rsi,%rcx
  40194b:	0f 87 c7 01 00 00    	ja     401b18 <main+0x868>
  401951:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401955:	85 d2                	test   %edx,%edx
  401957:	0f 85 df fb ff ff    	jne    40153c <main+0x28c>
  40195d:	e9 d2 fb ff ff       	jmpq   401534 <main+0x284>
  401962:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401968:	48 85 c0             	test   %rax,%rax
  40196b:	0f 85 e3 01 00 00    	jne    401b54 <main+0x8a4>
  401971:	48 8d 94 24 80 00 00 	lea    0x80(%rsp),%rdx
  401978:	00 
  401979:	4c 8d 6c 24 28       	lea    0x28(%rsp),%r13
  40197e:	e9 6c ff ff ff       	jmpq   4018ef <main+0x63f>
  401983:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401988:	4c 8d 6c 24 28       	lea    0x28(%rsp),%r13
  40198d:	31 d2                	xor    %edx,%edx
  40198f:	4c 89 ee             	mov    %r13,%rsi
  401992:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
  401997:	e8 34 f8 ff ff       	callq  4011d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  40199c:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  4019a1:	48 89 c7             	mov    %rax,%rdi
  4019a4:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  4019a9:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
  4019b0:	00 
  4019b1:	4c 89 f2             	mov    %r14,%rdx
  4019b4:	4c 89 e6             	mov    %r12,%rsi
  4019b7:	e8 04 f7 ff ff       	callq  4010c0 <memcpy@plt>
  4019bc:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  4019c1:	48 8b 54 24 70       	mov    0x70(%rsp),%rdx
  4019c6:	e9 24 ff ff ff       	jmpq   4018ef <main+0x63f>
  4019cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4019d0:	48 85 c0             	test   %rax,%rax
  4019d3:	0f 85 95 01 00 00    	jne    401b6e <main+0x8be>
  4019d9:	48 8d 94 24 80 00 00 	lea    0x80(%rsp),%rdx
  4019e0:	00 
  4019e1:	4c 8d 6c 24 28       	lea    0x28(%rsp),%r13
  4019e6:	e9 f4 fa ff ff       	jmpq   4014df <main+0x22f>
  4019eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4019f0:	4c 8d 6c 24 28       	lea    0x28(%rsp),%r13
  4019f5:	31 d2                	xor    %edx,%edx
  4019f7:	4c 89 ee             	mov    %r13,%rsi
  4019fa:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
  4019ff:	e8 cc f7 ff ff       	callq  4011d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  401a04:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  401a09:	48 89 c7             	mov    %rax,%rdi
  401a0c:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401a11:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
  401a18:	00 
  401a19:	4c 89 f2             	mov    %r14,%rdx
  401a1c:	4c 89 e6             	mov    %r12,%rsi
  401a1f:	e8 9c f6 ff ff       	callq  4010c0 <memcpy@plt>
  401a24:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401a29:	48 8b 54 24 70       	mov    0x70(%rsp),%rdx
  401a2e:	e9 ac fa ff ff       	jmpq   4014df <main+0x22f>
  401a33:	be 43 30 40 00       	mov    $0x403043,%esi
  401a38:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  401a3d:	e8 0e f6 ff ff       	callq  401050 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  401a42:	85 c0                	test   %eax,%eax
  401a44:	0f 85 80 f9 ff ff    	jne    4013ca <main+0x11a>
  401a4a:	e8 71 f7 ff ff       	callq  4011c0 <omp_get_wtime@plt>
  401a4f:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
  401a54:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401a59:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a5d:	c4 c1 f9 7e c5       	vmovq  %xmm0,%r13
  401a62:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
  401a69:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  401a6e:	31 c9                	xor    %ecx,%ecx
  401a70:	31 d2                	xor    %edx,%edx
  401a72:	48 8d 74 24 70       	lea    0x70(%rsp),%rsi
  401a77:	bf 70 20 40 00       	mov    $0x402070,%edi
  401a7c:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  401a81:	e8 ba f6 ff ff       	callq  401140 <GOMP_parallel@plt>
  401a86:	e8 35 f7 ff ff       	callq  4011c0 <omp_get_wtime@plt>
  401a8b:	c4 c1 f9 6e fd       	vmovq  %r13,%xmm7
  401a90:	c5 fb 5c f7          	vsubsd %xmm7,%xmm0,%xmm6
  401a94:	bb 00 80 00 00       	mov    $0x8000,%ebx
  401a99:	c4 c1 f9 7e f5       	vmovq  %xmm6,%r13
  401a9e:	e9 7c fb ff ff       	jmpq   40161f <main+0x36f>
  401aa3:	c5 f9 2f 05 ed 16 00 	vcomisd 0x16ed(%rip),%xmm0        # 403198 <__dso_handle+0x190>
  401aaa:	00 
  401aab:	0f 97 c3             	seta   %bl
  401aae:	e9 ac fb ff ff       	jmpq   40165f <main+0x3af>
  401ab3:	ba 2a 00 00 00       	mov    $0x2a,%edx
  401ab8:	be 18 31 40 00       	mov    $0x403118,%esi
  401abd:	bf 20 52 40 00       	mov    $0x405220,%edi
  401ac2:	e8 39 f6 ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401ac7:	e8 64 f5 ff ff       	callq  401030 <__errno_location@plt>
  401acc:	8b 38                	mov    (%rax),%edi
  401ace:	e8 8d f5 ff ff       	callq  401060 <strerror@plt>
  401ad3:	48 89 c6             	mov    %rax,%rsi
  401ad6:	bf 20 52 40 00       	mov    $0x405220,%edi
  401adb:	e8 00 f6 ff ff       	callq  4010e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401ae0:	48 89 c7             	mov    %rax,%rdi
  401ae3:	ba 01 00 00 00       	mov    $0x1,%edx
  401ae8:	48 8d 74 24 70       	lea    0x70(%rsp),%rsi
  401aed:	c6 44 24 70 0a       	movb   $0xa,0x70(%rsp)
  401af2:	e8 09 f6 ff ff       	callq  401100 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401af7:	41 bc 4d 00 00 00    	mov    $0x4d,%r12d
  401afd:	e9 ce f8 ff ff       	jmpq   4013d0 <main+0x120>
  401b02:	c7 44 24 14 00 01 00 	movl   $0x100,0x14(%rsp)
  401b09:	00 
  401b0a:	48 c7 44 24 18 32 00 	movq   $0x32,0x18(%rsp)
  401b11:	00 00 
  401b13:	e9 74 fa ff ff       	jmpq   40158c <main+0x2dc>
  401b18:	bf 39 30 40 00       	mov    $0x403039,%edi
  401b1d:	e8 0e f6 ff ff       	callq  401130 <_ZSt20__throw_out_of_rangePKc@plt>
  401b22:	bf 39 30 40 00       	mov    $0x403039,%edi
  401b27:	e8 64 f5 ff ff       	callq  401090 <_ZSt24__throw_invalid_argumentPKc@plt>
  401b2c:	bf 32 30 40 00       	mov    $0x403032,%edi
  401b31:	e8 5a f5 ff ff       	callq  401090 <_ZSt24__throw_invalid_argumentPKc@plt>
  401b36:	bf e8 30 40 00       	mov    $0x4030e8,%edi
  401b3b:	e8 70 f5 ff ff       	callq  4010b0 <_ZSt19__throw_logic_errorPKc@plt>
  401b40:	bf 32 30 40 00       	mov    $0x403032,%edi
  401b45:	e8 e6 f5 ff ff       	callq  401130 <_ZSt20__throw_out_of_rangePKc@plt>
  401b4a:	bf e8 30 40 00       	mov    $0x4030e8,%edi
  401b4f:	e8 5c f5 ff ff       	callq  4010b0 <_ZSt19__throw_logic_errorPKc@plt>
  401b54:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  401b5b:	00 
  401b5c:	4c 8d 6c 24 28       	lea    0x28(%rsp),%r13
  401b61:	e9 4b fe ff ff       	jmpq   4019b1 <main+0x701>
  401b66:	4c 89 ff             	mov    %r15,%rdi
  401b69:	e9 d5 f8 ff ff       	jmpq   401443 <main+0x193>
  401b6e:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  401b75:	00 
  401b76:	4c 8d 6c 24 28       	lea    0x28(%rsp),%r13
  401b7b:	e9 99 fe ff ff       	jmpq   401a19 <main+0x769>
  401b80:	48 89 c3             	mov    %rax,%rbx
  401b83:	e9 68 f6 ff ff       	jmpq   4011f0 <main.cold>
  401b88:	48 89 c3             	mov    %rax,%rbx
  401b8b:	e9 d6 f6 ff ff       	jmpq   401266 <main.cold+0x76>
  401b90:	48 89 c3             	mov    %rax,%rbx
  401b93:	c5 f8 77             	vzeroupper 
  401b96:	e9 8e f6 ff ff       	jmpq   401229 <main.cold+0x39>
  401b9b:	48 89 c3             	mov    %rax,%rbx
  401b9e:	c5 f8 77             	vzeroupper 
  401ba1:	e9 9b f6 ff ff       	jmpq   401241 <main.cold+0x51>
  401ba6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401bad:	00 00 00 

0000000000401bb0 <_GLOBAL__sub_I_main>:
  401bb0:	48 83 ec 08          	sub    $0x8,%rsp
  401bb4:	bf 31 53 40 00       	mov    $0x405331,%edi
  401bb9:	e8 92 f5 ff ff       	callq  401150 <_ZNSt8ios_base4InitC1Ev@plt>
  401bbe:	ba 08 30 40 00       	mov    $0x403008,%edx
  401bc3:	be 31 53 40 00       	mov    $0x405331,%esi
  401bc8:	bf e0 11 40 00       	mov    $0x4011e0,%edi
  401bcd:	48 83 c4 08          	add    $0x8,%rsp
  401bd1:	e9 fa f4 ff ff       	jmpq   4010d0 <__cxa_atexit@plt>
  401bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401bdd:	00 00 00 

0000000000401be0 <_start>:
  401be0:	f3 0f 1e fa          	endbr64 
  401be4:	31 ed                	xor    %ebp,%ebp
  401be6:	49 89 d1             	mov    %rdx,%r9
  401be9:	5e                   	pop    %rsi
  401bea:	48 89 e2             	mov    %rsp,%rdx
  401bed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401bf1:	50                   	push   %rax
  401bf2:	54                   	push   %rsp
  401bf3:	45 31 c0             	xor    %r8d,%r8d
  401bf6:	31 c9                	xor    %ecx,%ecx
  401bf8:	48 c7 c7 b0 12 40 00 	mov    $0x4012b0,%rdi
  401bff:	ff 15 db 33 00 00    	callq  *0x33db(%rip)        # 404fe0 <__libc_start_main@GLIBC_2.34>
  401c05:	f4                   	hlt    
  401c06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401c0d:	00 00 00 

0000000000401c10 <_dl_relocate_static_pie>:
  401c10:	f3 0f 1e fa          	endbr64 
  401c14:	c3                   	retq   
  401c15:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401c1c:	00 00 00 
  401c1f:	90                   	nop

0000000000401c20 <deregister_tm_clones>:
  401c20:	48 8d 3d d9 34 00 00 	lea    0x34d9(%rip),%rdi        # 405100 <_ZSt4cout@@GLIBCXX_3.4>
  401c27:	48 8d 05 d2 34 00 00 	lea    0x34d2(%rip),%rax        # 405100 <_ZSt4cout@@GLIBCXX_3.4>
  401c2e:	48 39 f8             	cmp    %rdi,%rax
  401c31:	74 15                	je     401c48 <deregister_tm_clones+0x28>
  401c33:	48 8b 05 ae 33 00 00 	mov    0x33ae(%rip),%rax        # 404fe8 <_ITM_deregisterTMCloneTable>
  401c3a:	48 85 c0             	test   %rax,%rax
  401c3d:	74 09                	je     401c48 <deregister_tm_clones+0x28>
  401c3f:	ff e0                	jmpq   *%rax
  401c41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401c48:	c3                   	retq   
  401c49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401c50 <register_tm_clones>:
  401c50:	48 8d 3d a9 34 00 00 	lea    0x34a9(%rip),%rdi        # 405100 <_ZSt4cout@@GLIBCXX_3.4>
  401c57:	48 8d 35 a2 34 00 00 	lea    0x34a2(%rip),%rsi        # 405100 <_ZSt4cout@@GLIBCXX_3.4>
  401c5e:	48 29 fe             	sub    %rdi,%rsi
  401c61:	48 89 f0             	mov    %rsi,%rax
  401c64:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401c68:	48 c1 f8 03          	sar    $0x3,%rax
  401c6c:	48 01 c6             	add    %rax,%rsi
  401c6f:	48 d1 fe             	sar    %rsi
  401c72:	74 14                	je     401c88 <register_tm_clones+0x38>
  401c74:	48 8b 05 7d 33 00 00 	mov    0x337d(%rip),%rax        # 404ff8 <_ITM_registerTMCloneTable>
  401c7b:	48 85 c0             	test   %rax,%rax
  401c7e:	74 08                	je     401c88 <register_tm_clones+0x38>
  401c80:	ff e0                	jmpq   *%rax
  401c82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401c88:	c3                   	retq   
  401c89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401c90 <__do_global_dtors_aux>:
  401c90:	f3 0f 1e fa          	endbr64 
  401c94:	80 3d 95 36 00 00 00 	cmpb   $0x0,0x3695(%rip)        # 405330 <completed.0>
  401c9b:	75 13                	jne    401cb0 <__do_global_dtors_aux+0x20>
  401c9d:	55                   	push   %rbp
  401c9e:	48 89 e5             	mov    %rsp,%rbp
  401ca1:	e8 7a ff ff ff       	callq  401c20 <deregister_tm_clones>
  401ca6:	c6 05 83 36 00 00 01 	movb   $0x1,0x3683(%rip)        # 405330 <completed.0>
  401cad:	5d                   	pop    %rbp
  401cae:	c3                   	retq   
  401caf:	90                   	nop
  401cb0:	c3                   	retq   
  401cb1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401cb8:	00 00 00 00 
  401cbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401cc0 <frame_dummy>:
  401cc0:	f3 0f 1e fa          	endbr64 
  401cc4:	eb 8a                	jmp    401c50 <register_tm_clones>
  401cc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401ccd:	00 00 00 

0000000000401cd0 <_ZN12_GLOBAL__N_18run_bf16EmiRd._omp_fn.0>:
  401cd0:	55                   	push   %rbp
  401cd1:	ba 00 04 00 00       	mov    $0x400,%edx
  401cd6:	31 f6                	xor    %esi,%esi
  401cd8:	48 89 e5             	mov    %rsp,%rbp
  401cdb:	41 55                	push   %r13
  401cdd:	49 89 fd             	mov    %rdi,%r13
  401ce0:	41 54                	push   %r12
  401ce2:	53                   	push   %rbx
  401ce3:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  401ce7:	48 81 ec 40 0c 00 00 	sub    $0xc40,%rsp
  401cee:	8b 5f 10             	mov    0x10(%rdi),%ebx
  401cf1:	4c 8b 27             	mov    (%rdi),%r12
  401cf4:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401cf9:	e8 82 f3 ff ff       	callq  401080 <memset@plt>
  401cfe:	c4 e2 7d 79 05 81 14 	vpbroadcastw 0x1481(%rip),%ymm0        # 403188 <__dso_handle+0x180>
  401d05:	00 00 
  401d07:	48 89 c7             	mov    %rax,%rdi
  401d0a:	c5 fd 7f 84 24 40 04 	vmovdqa %ymm0,0x440(%rsp)
  401d11:	00 00 
  401d13:	c5 fd 7f 84 24 60 04 	vmovdqa %ymm0,0x460(%rsp)
  401d1a:	00 00 
  401d1c:	c5 fd 7f 84 24 80 04 	vmovdqa %ymm0,0x480(%rsp)
  401d23:	00 00 
  401d25:	c5 fd 7f 84 24 a0 04 	vmovdqa %ymm0,0x4a0(%rsp)
  401d2c:	00 00 
  401d2e:	c5 fd 7f 84 24 c0 04 	vmovdqa %ymm0,0x4c0(%rsp)
  401d35:	00 00 
  401d37:	c5 fd 7f 84 24 e0 04 	vmovdqa %ymm0,0x4e0(%rsp)
  401d3e:	00 00 
  401d40:	c5 fd 7f 84 24 00 05 	vmovdqa %ymm0,0x500(%rsp)
  401d47:	00 00 
  401d49:	c5 fd 7f 84 24 20 05 	vmovdqa %ymm0,0x520(%rsp)
  401d50:	00 00 
  401d52:	c5 fd 7f 84 24 40 05 	vmovdqa %ymm0,0x540(%rsp)
  401d59:	00 00 
  401d5b:	c5 fd 7f 84 24 60 05 	vmovdqa %ymm0,0x560(%rsp)
  401d62:	00 00 
  401d64:	c5 fd 7f 84 24 80 05 	vmovdqa %ymm0,0x580(%rsp)
  401d6b:	00 00 
  401d6d:	c5 fd 7f 84 24 a0 05 	vmovdqa %ymm0,0x5a0(%rsp)
  401d74:	00 00 
  401d76:	c5 fd 7f 84 24 c0 05 	vmovdqa %ymm0,0x5c0(%rsp)
  401d7d:	00 00 
  401d7f:	c5 fd 7f 84 24 e0 05 	vmovdqa %ymm0,0x5e0(%rsp)
  401d86:	00 00 
  401d88:	c5 fd 7f 84 24 00 06 	vmovdqa %ymm0,0x600(%rsp)
  401d8f:	00 00 
  401d91:	c5 fd 7f 84 24 20 06 	vmovdqa %ymm0,0x620(%rsp)
  401d98:	00 00 
  401d9a:	c5 fd 7f 84 24 40 06 	vmovdqa %ymm0,0x640(%rsp)
  401da1:	00 00 
  401da3:	c5 fd 7f 84 24 60 06 	vmovdqa %ymm0,0x660(%rsp)
  401daa:	00 00 
  401dac:	c5 fd 7f 84 24 80 06 	vmovdqa %ymm0,0x680(%rsp)
  401db3:	00 00 
  401db5:	c5 fd 7f 84 24 a0 06 	vmovdqa %ymm0,0x6a0(%rsp)
  401dbc:	00 00 
  401dbe:	c5 fd 7f 84 24 c0 06 	vmovdqa %ymm0,0x6c0(%rsp)
  401dc5:	00 00 
  401dc7:	c5 fd 7f 84 24 e0 06 	vmovdqa %ymm0,0x6e0(%rsp)
  401dce:	00 00 
  401dd0:	c5 fd 7f 84 24 00 07 	vmovdqa %ymm0,0x700(%rsp)
  401dd7:	00 00 
  401dd9:	c5 fd 7f 84 24 20 07 	vmovdqa %ymm0,0x720(%rsp)
  401de0:	00 00 
  401de2:	c5 fd 7f 84 24 40 07 	vmovdqa %ymm0,0x740(%rsp)
  401de9:	00 00 
  401deb:	c5 fd 7f 84 24 60 07 	vmovdqa %ymm0,0x760(%rsp)
  401df2:	00 00 
  401df4:	c5 fd 7f 84 24 80 07 	vmovdqa %ymm0,0x780(%rsp)
  401dfb:	00 00 
  401dfd:	c5 fd 7f 84 24 a0 07 	vmovdqa %ymm0,0x7a0(%rsp)
  401e04:	00 00 
  401e06:	c5 fd 7f 84 24 c0 07 	vmovdqa %ymm0,0x7c0(%rsp)
  401e0d:	00 00 
  401e0f:	c5 fd 7f 84 24 e0 07 	vmovdqa %ymm0,0x7e0(%rsp)
  401e16:	00 00 
  401e18:	c5 fd 7f 84 24 00 08 	vmovdqa %ymm0,0x800(%rsp)
  401e1f:	00 00 
  401e21:	c5 fd 7f 84 24 20 08 	vmovdqa %ymm0,0x820(%rsp)
  401e28:	00 00 
  401e2a:	c5 fd 7f 84 24 40 08 	vmovdqa %ymm0,0x840(%rsp)
  401e31:	00 00 
  401e33:	c5 fd 7f 84 24 60 08 	vmovdqa %ymm0,0x860(%rsp)
  401e3a:	00 00 
  401e3c:	c5 fd 7f 84 24 80 08 	vmovdqa %ymm0,0x880(%rsp)
  401e43:	00 00 
  401e45:	c5 fd 7f 84 24 a0 08 	vmovdqa %ymm0,0x8a0(%rsp)
  401e4c:	00 00 
  401e4e:	c5 fd 7f 84 24 c0 08 	vmovdqa %ymm0,0x8c0(%rsp)
  401e55:	00 00 
  401e57:	c5 fd 7f 84 24 e0 08 	vmovdqa %ymm0,0x8e0(%rsp)
  401e5e:	00 00 
  401e60:	c5 fd 7f 84 24 00 09 	vmovdqa %ymm0,0x900(%rsp)
  401e67:	00 00 
  401e69:	c5 fd 7f 84 24 20 09 	vmovdqa %ymm0,0x920(%rsp)
  401e70:	00 00 
  401e72:	c5 fd 7f 84 24 40 09 	vmovdqa %ymm0,0x940(%rsp)
  401e79:	00 00 
  401e7b:	c5 fd 7f 84 24 60 09 	vmovdqa %ymm0,0x960(%rsp)
  401e82:	00 00 
  401e84:	c5 fd 7f 84 24 80 09 	vmovdqa %ymm0,0x980(%rsp)
  401e8b:	00 00 
  401e8d:	c5 fd 7f 84 24 a0 09 	vmovdqa %ymm0,0x9a0(%rsp)
  401e94:	00 00 
  401e96:	c5 fd 7f 84 24 c0 09 	vmovdqa %ymm0,0x9c0(%rsp)
  401e9d:	00 00 
  401e9f:	c5 fd 7f 84 24 e0 09 	vmovdqa %ymm0,0x9e0(%rsp)
  401ea6:	00 00 
  401ea8:	c5 fd 7f 84 24 00 0a 	vmovdqa %ymm0,0xa00(%rsp)
  401eaf:	00 00 
  401eb1:	c5 fd 7f 84 24 20 0a 	vmovdqa %ymm0,0xa20(%rsp)
  401eb8:	00 00 
  401eba:	c5 fd 7f 84 24 40 0a 	vmovdqa %ymm0,0xa40(%rsp)
  401ec1:	00 00 
  401ec3:	c5 fd 7f 84 24 60 0a 	vmovdqa %ymm0,0xa60(%rsp)
  401eca:	00 00 
  401ecc:	c5 fd 7f 84 24 80 0a 	vmovdqa %ymm0,0xa80(%rsp)
  401ed3:	00 00 
  401ed5:	c5 fd 7f 84 24 a0 0a 	vmovdqa %ymm0,0xaa0(%rsp)
  401edc:	00 00 
  401ede:	c5 fd 7f 84 24 c0 0a 	vmovdqa %ymm0,0xac0(%rsp)
  401ee5:	00 00 
  401ee7:	c5 fd 7f 84 24 e0 0a 	vmovdqa %ymm0,0xae0(%rsp)
  401eee:	00 00 
  401ef0:	c5 fd 7f 84 24 00 0b 	vmovdqa %ymm0,0xb00(%rsp)
  401ef7:	00 00 
  401ef9:	c5 fd 7f 84 24 20 0b 	vmovdqa %ymm0,0xb20(%rsp)
  401f00:	00 00 
  401f02:	c5 fd 7f 84 24 40 0b 	vmovdqa %ymm0,0xb40(%rsp)
  401f09:	00 00 
  401f0b:	c5 fd 7f 84 24 60 0b 	vmovdqa %ymm0,0xb60(%rsp)
  401f12:	00 00 
  401f14:	c5 fd 7f 84 24 80 0b 	vmovdqa %ymm0,0xb80(%rsp)
  401f1b:	00 00 
  401f1d:	c5 fd 7f 84 24 a0 0b 	vmovdqa %ymm0,0xba0(%rsp)
  401f24:	00 00 
  401f26:	c5 fd 7f 84 24 c0 0b 	vmovdqa %ymm0,0xbc0(%rsp)
  401f2d:	00 00 
  401f2f:	c5 fd 7f 84 24 e0 0b 	vmovdqa %ymm0,0xbe0(%rsp)
  401f36:	00 00 
  401f38:	c5 fd 7f 84 24 00 0c 	vmovdqa %ymm0,0xc00(%rsp)
  401f3f:	00 00 
  401f41:	c5 fd 7f 84 24 20 0c 	vmovdqa %ymm0,0xc20(%rsp)
  401f48:	00 00 
  401f4a:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  401f4e:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  401f53:	48 8b 05 16 12 00 00 	mov    0x1216(%rip),%rax        # 403170 <__dso_handle+0x168>
  401f5a:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  401f60:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  401f65:	48 b8 10 10 10 10 10 	movabs $0x101010101010,%rax
  401f6c:	10 00 00 
  401f6f:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  401f75:	c6 04 24 01          	movb   $0x1,(%rsp)
  401f79:	c7 44 24 18 40 00 40 	movl   $0x400040,0x18(%rsp)
  401f80:	00 
  401f81:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  401f86:	c5 f9 7f 44 24 20    	vmovdqa %xmm0,0x20(%rsp)
  401f8c:	c4 e2 78 49 04 24    	ldtilecfg (%rsp)
  401f92:	4d 85 e4             	test   %r12,%r12
  401f95:	0f 84 c3 00 00 00    	je     40205e <_ZN12_GLOBAL__N_18run_bf16EmiRd._omp_fn.0+0x38e>
  401f9b:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  401f9f:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  401fa3:	31 d2                	xor    %edx,%edx
  401fa5:	4c 8d 84 24 40 04 00 	lea    0x440(%rsp),%r8
  401fac:	00 
  401fad:	48 8d b4 24 40 08 00 	lea    0x840(%rsp),%rsi
  401fb4:	00 
  401fb5:	b9 40 00 00 00       	mov    $0x40,%ecx
  401fba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401fc0:	c4 c2 7b 4b 24 08    	tileloadd (%r8,%rcx,1),%tmm4
  401fc6:	c4 e2 7b 4b 2c 0e    	tileloadd (%rsi,%rcx,1),%tmm5
  401fcc:	c4 e2 7b 49 c0       	tilezero %tmm0
  401fd1:	c4 e2 7b 49 c8       	tilezero %tmm1
  401fd6:	c4 e2 7b 49 d0       	tilezero %tmm2
  401fdb:	c4 e2 7b 49 d8       	tilezero %tmm3
  401fe0:	31 c0                	xor    %eax,%eax
  401fe2:	85 db                	test   %ebx,%ebx
  401fe4:	7e 24                	jle    40200a <_ZN12_GLOBAL__N_18run_bf16EmiRd._omp_fn.0+0x33a>
  401fe6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401fed:	00 00 00 
  401ff0:	c4 e2 52 5c c4       	tdpbf16ps %tmm5,%tmm4,%tmm0
  401ff5:	c4 e2 52 5c cc       	tdpbf16ps %tmm5,%tmm4,%tmm1
  401ffa:	c4 e2 52 5c d4       	tdpbf16ps %tmm5,%tmm4,%tmm2
  401fff:	c4 e2 52 5c dc       	tdpbf16ps %tmm5,%tmm4,%tmm3
  402004:	ff c0                	inc    %eax
  402006:	39 c3                	cmp    %eax,%ebx
  402008:	75 e6                	jne    401ff0 <_ZN12_GLOBAL__N_18run_bf16EmiRd._omp_fn.0+0x320>
  40200a:	c4 e2 7a 4b 04 0f    	tilestored %tmm0,(%rdi,%rcx,1)
  402010:	48 89 d0             	mov    %rdx,%rax
  402013:	83 e0 0f             	and    $0xf,%eax
  402016:	48 6b c0 44          	imul   $0x44,%rax,%rax
  40201a:	48 ff c2             	inc    %rdx
  40201d:	c5 ea 5a 44 04 40    	vcvtss2sd 0x40(%rsp,%rax,1),%xmm2,%xmm0
  402023:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  402027:	49 39 d4             	cmp    %rdx,%r12
  40202a:	75 94                	jne    401fc0 <_ZN12_GLOBAL__N_18run_bf16EmiRd._omp_fn.0+0x2f0>
  40202c:	c4 e2 78 49 c0       	tilerelease 
  402031:	49 8b 4d 08          	mov    0x8(%r13),%rcx
  402035:	48 8b 11             	mov    (%rcx),%rdx
  402038:	c4 e1 f9 6e e2       	vmovq  %rdx,%xmm4
  40203d:	c5 f3 58 dc          	vaddsd %xmm4,%xmm1,%xmm3
  402041:	48 89 d0             	mov    %rdx,%rax
  402044:	c4 e1 f9 7e de       	vmovq  %xmm3,%rsi
  402049:	f0 48 0f b1 31       	lock cmpxchg %rsi,(%rcx)
  40204e:	75 14                	jne    402064 <_ZN12_GLOBAL__N_18run_bf16EmiRd._omp_fn.0+0x394>
  402050:	c5 f8 77             	vzeroupper 
  402053:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  402057:	5b                   	pop    %rbx
  402058:	41 5c                	pop    %r12
  40205a:	41 5d                	pop    %r13
  40205c:	5d                   	pop    %rbp
  40205d:	c3                   	retq   
  40205e:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  402062:	eb c8                	jmp    40202c <_ZN12_GLOBAL__N_18run_bf16EmiRd._omp_fn.0+0x35c>
  402064:	48 89 c2             	mov    %rax,%rdx
  402067:	eb cf                	jmp    402038 <_ZN12_GLOBAL__N_18run_bf16EmiRd._omp_fn.0+0x368>
  402069:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402070 <_ZN12_GLOBAL__N_18run_int8EmiRd._omp_fn.0>:
  402070:	55                   	push   %rbp
  402071:	31 f6                	xor    %esi,%esi
  402073:	ba 00 04 00 00       	mov    $0x400,%edx
  402078:	48 89 e5             	mov    %rsp,%rbp
  40207b:	41 57                	push   %r15
  40207d:	49 89 ff             	mov    %rdi,%r15
  402080:	41 56                	push   %r14
  402082:	41 55                	push   %r13
  402084:	41 54                	push   %r12
  402086:	53                   	push   %rbx
  402087:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
  40208b:	48 81 ec 40 0c 00 00 	sub    $0xc40,%rsp
  402092:	4c 8d 74 24 40       	lea    0x40(%rsp),%r14
  402097:	8b 5f 10             	mov    0x10(%rdi),%ebx
  40209a:	4c 8b 27             	mov    (%rdi),%r12
  40209d:	4c 8d ac 24 40 04 00 	lea    0x440(%rsp),%r13
  4020a4:	00 
  4020a5:	4c 89 f7             	mov    %r14,%rdi
  4020a8:	e8 d3 ef ff ff       	callq  401080 <memset@plt>
  4020ad:	4c 89 ef             	mov    %r13,%rdi
  4020b0:	ba 00 04 00 00       	mov    $0x400,%edx
  4020b5:	be 01 00 00 00       	mov    $0x1,%esi
  4020ba:	e8 c1 ef ff ff       	callq  401080 <memset@plt>
  4020bf:	48 8d 8c 24 40 08 00 	lea    0x840(%rsp),%rcx
  4020c6:	00 
  4020c7:	48 89 cf             	mov    %rcx,%rdi
  4020ca:	ba 00 04 00 00       	mov    $0x400,%edx
  4020cf:	be 01 00 00 00       	mov    $0x1,%esi
  4020d4:	e8 a7 ef ff ff       	callq  401080 <memset@plt>
  4020d9:	48 89 c1             	mov    %rax,%rcx
  4020dc:	48 8b 05 8d 10 00 00 	mov    0x108d(%rip),%rax        # 403170 <__dso_handle+0x168>
  4020e3:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4020e7:	c5 f9 7f 44 24 10    	vmovdqa %xmm0,0x10(%rsp)
  4020ed:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  4020f2:	48 b8 10 10 10 10 10 	movabs $0x101010101010,%rax
  4020f9:	10 00 00 
  4020fc:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
  402101:	c5 f9 7f 44 24 30    	vmovdqa %xmm0,0x30(%rsp)
  402107:	c6 04 24 01          	movb   $0x1,(%rsp)
  40210b:	c7 44 24 18 40 00 40 	movl   $0x400040,0x18(%rsp)
  402112:	00 
  402113:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  402118:	c5 f9 7f 44 24 20    	vmovdqa %xmm0,0x20(%rsp)
  40211e:	c4 e2 78 49 04 24    	ldtilecfg (%rsp)
  402124:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  402128:	31 d2                	xor    %edx,%edx
  40212a:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  40212e:	be 40 00 00 00       	mov    $0x40,%esi
  402133:	4d 85 e4             	test   %r12,%r12
  402136:	74 74                	je     4021ac <_ZN12_GLOBAL__N_18run_int8EmiRd._omp_fn.0+0x13c>
  402138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40213f:	00 
  402140:	c4 c2 7b 4b 64 35 00 	tileloadd 0x0(%r13,%rsi,1),%tmm4
  402147:	c4 e2 7b 4b 2c 31    	tileloadd (%rcx,%rsi,1),%tmm5
  40214d:	c4 e2 7b 49 c0       	tilezero %tmm0
  402152:	c4 e2 7b 49 c8       	tilezero %tmm1
  402157:	c4 e2 7b 49 d0       	tilezero %tmm2
  40215c:	c4 e2 7b 49 d8       	tilezero %tmm3
  402161:	31 c0                	xor    %eax,%eax
  402163:	85 db                	test   %ebx,%ebx
  402165:	7e 23                	jle    40218a <_ZN12_GLOBAL__N_18run_int8EmiRd._omp_fn.0+0x11a>
  402167:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40216e:	00 00 
  402170:	c4 e2 53 5e c4       	tdpbssd %tmm5,%tmm4,%tmm0
  402175:	c4 e2 53 5e cc       	tdpbssd %tmm5,%tmm4,%tmm1
  40217a:	c4 e2 53 5e d4       	tdpbssd %tmm5,%tmm4,%tmm2
  40217f:	c4 e2 53 5e dc       	tdpbssd %tmm5,%tmm4,%tmm3
  402184:	ff c0                	inc    %eax
  402186:	39 c3                	cmp    %eax,%ebx
  402188:	75 e6                	jne    402170 <_ZN12_GLOBAL__N_18run_int8EmiRd._omp_fn.0+0x100>
  40218a:	c4 c2 7a 4b 04 36    	tilestored %tmm0,(%r14,%rsi,1)
  402190:	48 89 d0             	mov    %rdx,%rax
  402193:	83 e0 0f             	and    $0xf,%eax
  402196:	48 6b c0 44          	imul   $0x44,%rax,%rax
  40219a:	48 ff c2             	inc    %rdx
  40219d:	c5 eb 2a 44 04 40    	vcvtsi2sdl 0x40(%rsp,%rax,1),%xmm2,%xmm0
  4021a3:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
  4021a7:	49 39 d4             	cmp    %rdx,%r12
  4021aa:	75 94                	jne    402140 <_ZN12_GLOBAL__N_18run_int8EmiRd._omp_fn.0+0xd0>
  4021ac:	c4 e2 78 49 c0       	tilerelease 
  4021b1:	49 8b 4f 08          	mov    0x8(%r15),%rcx
  4021b5:	48 8b 11             	mov    (%rcx),%rdx
  4021b8:	c4 e1 f9 6e e2       	vmovq  %rdx,%xmm4
  4021bd:	c5 f3 58 dc          	vaddsd %xmm4,%xmm1,%xmm3
  4021c1:	48 89 d0             	mov    %rdx,%rax
  4021c4:	c4 e1 f9 7e de       	vmovq  %xmm3,%rsi
  4021c9:	f0 48 0f b1 31       	lock cmpxchg %rsi,(%rcx)
  4021ce:	75 0f                	jne    4021df <_ZN12_GLOBAL__N_18run_int8EmiRd._omp_fn.0+0x16f>
  4021d0:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  4021d4:	5b                   	pop    %rbx
  4021d5:	41 5c                	pop    %r12
  4021d7:	41 5d                	pop    %r13
  4021d9:	41 5e                	pop    %r14
  4021db:	41 5f                	pop    %r15
  4021dd:	5d                   	pop    %rbp
  4021de:	c3                   	retq   
  4021df:	48 89 c2             	mov    %rax,%rdx
  4021e2:	eb d4                	jmp    4021b8 <_ZN12_GLOBAL__N_18run_int8EmiRd._omp_fn.0+0x148>

Disassembly of section .fini:

00000000004021e4 <_fini>:
  4021e4:	f3 0f 1e fa          	endbr64 
  4021e8:	48 83 ec 08          	sub    $0x8,%rsp
  4021ec:	48 83 c4 08          	add    $0x8,%rsp
  4021f0:	c3                   	retq   
