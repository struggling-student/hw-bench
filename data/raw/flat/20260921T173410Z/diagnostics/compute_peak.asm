
/lpor1/store_0/usr/user/hw-bench-stage-v3/build/compute_peak:     file format elf64-x86-64


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

0000000000401040 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>:
  401040:	ff 25 da 3f 00 00    	jmpq   *0x3fda(%rip)        # 405020 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@GLIBCXX_3.4.21>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <strlen@plt>:
  401050:	ff 25 d2 3f 00 00    	jmpq   *0x3fd2(%rip)        # 405028 <strlen@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <_ZSt24__throw_invalid_argumentPKc@plt>:
  401060:	ff 25 ca 3f 00 00    	jmpq   *0x3fca(%rip)        # 405030 <_ZSt24__throw_invalid_argumentPKc@GLIBCXX_3.4>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <_ZNSo9_M_insertImEERSoT_@plt>:
  401070:	ff 25 c2 3f 00 00    	jmpq   *0x3fc2(%rip)        # 405038 <_ZNSo9_M_insertImEERSoT_@GLIBCXX_3.4.9>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <_ZSt19__throw_logic_errorPKc@plt>:
  401080:	ff 25 ba 3f 00 00    	jmpq   *0x3fba(%rip)        # 405040 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <memcpy@plt>:
  401090:	ff 25 b2 3f 00 00    	jmpq   *0x3fb2(%rip)        # 405048 <memcpy@GLIBC_2.14>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <__cxa_atexit@plt>:
  4010a0:	ff 25 aa 3f 00 00    	jmpq   *0x3faa(%rip)        # 405050 <__cxa_atexit@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  4010b0:	ff 25 a2 3f 00 00    	jmpq   *0x3fa2(%rip)        # 405058 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <_ZdlPvm@plt>:
  4010c0:	ff 25 9a 3f 00 00    	jmpq   *0x3f9a(%rip)        # 405060 <_ZdlPvm@CXXABI_1.3.9>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
  4010d0:	ff 25 92 3f 00 00    	jmpq   *0x3f92(%rip)        # 405068 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <strtoull@plt>:
  4010e0:	ff 25 8a 3f 00 00    	jmpq   *0x3f8a(%rip)        # 405070 <strtoull@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

00000000004010f0 <_ZSt20__throw_out_of_rangePKc@plt>:
  4010f0:	ff 25 82 3f 00 00    	jmpq   *0x3f82(%rip)        # 405078 <_ZSt20__throw_out_of_rangePKc@GLIBCXX_3.4>
  4010f6:	68 0c 00 00 00       	pushq  $0xc
  4010fb:	e9 20 ff ff ff       	jmpq   401020 <.plt>

0000000000401100 <GOMP_parallel@plt>:
  401100:	ff 25 7a 3f 00 00    	jmpq   *0x3f7a(%rip)        # 405080 <GOMP_parallel@GOMP_4.0>
  401106:	68 0d 00 00 00       	pushq  $0xd
  40110b:	e9 10 ff ff ff       	jmpq   401020 <.plt>

0000000000401110 <_ZNSt8ios_base4InitC1Ev@plt>:
  401110:	ff 25 72 3f 00 00    	jmpq   *0x3f72(%rip)        # 405088 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  401116:	68 0e 00 00 00       	pushq  $0xe
  40111b:	e9 00 ff ff ff       	jmpq   401020 <.plt>

0000000000401120 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>:
  401120:	ff 25 6a 3f 00 00    	jmpq   *0x3f6a(%rip)        # 405090 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@GLIBCXX_3.4.21>
  401126:	68 0f 00 00 00       	pushq  $0xf
  40112b:	e9 f0 fe ff ff       	jmpq   401020 <.plt>

0000000000401130 <_ZNSo9_M_insertIdEERSoT_@plt>:
  401130:	ff 25 62 3f 00 00    	jmpq   *0x3f62(%rip)        # 405098 <_ZNSo9_M_insertIdEERSoT_@GLIBCXX_3.4.9>
  401136:	68 10 00 00 00       	pushq  $0x10
  40113b:	e9 e0 fe ff ff       	jmpq   401020 <.plt>

0000000000401140 <__gxx_personality_v0@plt>:
  401140:	ff 25 5a 3f 00 00    	jmpq   *0x3f5a(%rip)        # 4050a0 <__gxx_personality_v0@CXXABI_1.3>
  401146:	68 11 00 00 00       	pushq  $0x11
  40114b:	e9 d0 fe ff ff       	jmpq   401020 <.plt>

0000000000401150 <omp_get_max_threads@plt>:
  401150:	ff 25 52 3f 00 00    	jmpq   *0x3f52(%rip)        # 4050a8 <omp_get_max_threads@OMP_1.0>
  401156:	68 12 00 00 00       	pushq  $0x12
  40115b:	e9 c0 fe ff ff       	jmpq   401020 <.plt>

0000000000401160 <_ZNSolsEi@plt>:
  401160:	ff 25 4a 3f 00 00    	jmpq   *0x3f4a(%rip)        # 4050b0 <_ZNSolsEi@GLIBCXX_3.4>
  401166:	68 13 00 00 00       	pushq  $0x13
  40116b:	e9 b0 fe ff ff       	jmpq   401020 <.plt>

0000000000401170 <_Unwind_Resume@plt>:
  401170:	ff 25 42 3f 00 00    	jmpq   *0x3f42(%rip)        # 4050b8 <_Unwind_Resume@GCC_3.0>
  401176:	68 14 00 00 00       	pushq  $0x14
  40117b:	e9 a0 fe ff ff       	jmpq   401020 <.plt>

0000000000401180 <omp_get_wtime@plt>:
  401180:	ff 25 3a 3f 00 00    	jmpq   *0x3f3a(%rip)        # 4050c0 <omp_get_wtime@OMP_2.0>
  401186:	68 15 00 00 00       	pushq  $0x15
  40118b:	e9 90 fe ff ff       	jmpq   401020 <.plt>

0000000000401190 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>:
  401190:	ff 25 32 3f 00 00    	jmpq   *0x3f32(%rip)        # 4050c8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@GLIBCXX_3.4.21>
  401196:	68 16 00 00 00       	pushq  $0x16
  40119b:	e9 80 fe ff ff       	jmpq   401020 <.plt>

00000000004011a0 <_ZNSt8ios_base4InitD1Ev@plt>:
  4011a0:	ff 25 2a 3f 00 00    	jmpq   *0x3f2a(%rip)        # 4050d0 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  4011a6:	68 17 00 00 00       	pushq  $0x17
  4011ab:	e9 70 fe ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

00000000004011b0 <main.cold>:
  4011b0:	83 7d 00 00          	cmpl   $0x0,0x0(%rbp)
  4011b4:	75 07                	jne    4011bd <main.cold+0xd>
  4011b6:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4011ba:	89 45 00             	mov    %eax,0x0(%rbp)
  4011bd:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  4011c2:	4c 39 f7             	cmp    %r14,%rdi
  4011c5:	74 54                	je     40121b <main.cold+0x6b>
  4011c7:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  4011ce:	00 
  4011cf:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4011d3:	c5 f8 77             	vzeroupper 
  4011d6:	e8 e5 fe ff ff       	callq  4010c0 <_ZdlPvm@plt>
  4011db:	48 89 dd             	mov    %rbx,%rbp
  4011de:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4011e3:	4c 39 ef             	cmp    %r13,%rdi
  4011e6:	74 0e                	je     4011f6 <main.cold+0x46>
  4011e8:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  4011ed:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4011f1:	e8 ca fe ff ff       	callq  4010c0 <_ZdlPvm@plt>
  4011f6:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  4011fb:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  401200:	48 39 c7             	cmp    %rax,%rdi
  401203:	74 0e                	je     401213 <main.cold+0x63>
  401205:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  40120a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40120e:	e8 ad fe ff ff       	callq  4010c0 <_ZdlPvm@plt>
  401213:	48 89 ef             	mov    %rbp,%rdi
  401216:	e8 55 ff ff ff       	callq  401170 <_Unwind_Resume@plt>
  40121b:	c5 f8 77             	vzeroupper 
  40121e:	eb bb                	jmp    4011db <main.cold+0x2b>

0000000000401220 <main>:
  401220:	41 57                	push   %r15
  401222:	41 56                	push   %r14
  401224:	41 55                	push   %r13
  401226:	41 54                	push   %r12
  401228:	55                   	push   %rbp
  401229:	53                   	push   %rbx
  40122a:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  401231:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
  401236:	89 7c 24 04          	mov    %edi,0x4(%rsp)
  40123a:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  40123f:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
  401244:	c7 44 24 40 66 70 33 	movl   $0x32337066,0x40(%rsp)
  40124b:	32 
  40124c:	48 c7 44 24 38 04 00 	movq   $0x4,0x38(%rsp)
  401253:	00 00 
  401255:	c6 44 24 44 00       	movb   $0x0,0x44(%rsp)
  40125a:	83 ff 01             	cmp    $0x1,%edi
  40125d:	0f 8e 02 06 00 00    	jle    401865 <main+0x645>
  401263:	89 f8                	mov    %edi,%eax
  401265:	83 e8 02             	sub    $0x2,%eax
  401268:	83 e0 fe             	and    $0xfffffffe,%eax
  40126b:	83 c0 04             	add    $0x4,%eax
  40126e:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401272:	48 c7 44 24 08 00 e1 	movq   $0x5f5e100,0x8(%rsp)
  401279:	f5 05 
  40127b:	4c 8d 66 08          	lea    0x8(%rsi),%r12
  40127f:	bb 02 00 00 00       	mov    $0x2,%ebx
  401284:	4c 8d 6c 24 60       	lea    0x60(%rsp),%r13
  401289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401290:	49 8b 2c 24          	mov    (%r12),%rbp
  401294:	4c 89 6c 24 50       	mov    %r13,0x50(%rsp)
  401299:	48 85 ed             	test   %rbp,%rbp
  40129c:	0f 84 89 04 00 00    	je     40172b <main+0x50b>
  4012a2:	48 89 ef             	mov    %rbp,%rdi
  4012a5:	e8 a6 fd ff ff       	callq  401050 <strlen@plt>
  4012aa:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  4012af:	49 89 c6             	mov    %rax,%r14
  4012b2:	48 83 f8 0f          	cmp    $0xf,%rax
  4012b6:	0f 87 bc 00 00 00    	ja     401378 <main+0x158>
  4012bc:	48 83 f8 01          	cmp    $0x1,%rax
  4012c0:	0f 85 9a 00 00 00    	jne    401360 <main+0x140>
  4012c6:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
  4012ca:	88 54 24 60          	mov    %dl,0x60(%rsp)
  4012ce:	4c 89 ea             	mov    %r13,%rdx
  4012d1:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4012d6:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4012da:	be 1b 30 40 00       	mov    $0x40301b,%esi
  4012df:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  4012e4:	e8 57 fd ff ff       	callq  401040 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4012e9:	85 c0                	test   %eax,%eax
  4012eb:	0f 85 c7 00 00 00    	jne    4013b8 <main+0x198>
  4012f1:	3b 5c 24 04          	cmp    0x4(%rsp),%ebx
  4012f5:	0f 8c 3d 04 00 00    	jl     401738 <main+0x518>
  4012fb:	be 22 30 40 00       	mov    $0x403022,%esi
  401300:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  401305:	e8 36 fd ff ff       	callq  401040 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  40130a:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  40130f:	4c 39 ef             	cmp    %r13,%rdi
  401312:	74 0e                	je     401322 <main+0x102>
  401314:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  401319:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40131d:	e8 9e fd ff ff       	callq  4010c0 <_ZdlPvm@plt>
  401322:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  401328:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  40132d:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  401332:	48 39 c7             	cmp    %rax,%rdi
  401335:	74 0e                	je     401345 <main+0x125>
  401337:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  40133c:	48 8d 70 01          	lea    0x1(%rax),%rsi
  401340:	e8 7b fd ff ff       	callq  4010c0 <_ZdlPvm@plt>
  401345:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  40134c:	5b                   	pop    %rbx
  40134d:	5d                   	pop    %rbp
  40134e:	44 89 e0             	mov    %r12d,%eax
  401351:	41 5c                	pop    %r12
  401353:	41 5d                	pop    %r13
  401355:	41 5e                	pop    %r14
  401357:	41 5f                	pop    %r15
  401359:	c3                   	retq   
  40135a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401360:	48 85 c0             	test   %rax,%rax
  401363:	0f 85 3a 05 00 00    	jne    4018a3 <main+0x683>
  401369:	4c 89 ea             	mov    %r13,%rdx
  40136c:	e9 60 ff ff ff       	jmpq   4012d1 <main+0xb1>
  401371:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401378:	31 d2                	xor    %edx,%edx
  40137a:	48 8d 74 24 70       	lea    0x70(%rsp),%rsi
  40137f:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  401384:	e8 07 fe ff ff       	callq  401190 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  401389:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  40138e:	48 89 c7             	mov    %rax,%rdi
  401391:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
  401396:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  40139b:	4c 89 f2             	mov    %r14,%rdx
  40139e:	48 89 ee             	mov    %rbp,%rsi
  4013a1:	e8 ea fc ff ff       	callq  401090 <memcpy@plt>
  4013a6:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
  4013ab:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
  4013b0:	e9 1c ff ff ff       	jmpq   4012d1 <main+0xb1>
  4013b5:	0f 1f 00             	nopl   (%rax)
  4013b8:	be 22 30 40 00       	mov    $0x403022,%esi
  4013bd:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  4013c2:	e8 79 fc ff ff       	callq  401040 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4013c7:	85 c0                	test   %eax,%eax
  4013c9:	0f 85 3b ff ff ff    	jne    40130a <main+0xea>
  4013cf:	3b 5c 24 04          	cmp    0x4(%rsp),%ebx
  4013d3:	0f 8d 31 ff ff ff    	jge    40130a <main+0xea>
  4013d9:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
  4013de:	48 63 c3             	movslq %ebx,%rax
  4013e1:	48 8b 2c c1          	mov    (%rcx,%rax,8),%rbp
  4013e5:	4c 8d b4 24 80 00 00 	lea    0x80(%rsp),%r14
  4013ec:	00 
  4013ed:	4c 89 74 24 70       	mov    %r14,0x70(%rsp)
  4013f2:	48 85 ed             	test   %rbp,%rbp
  4013f5:	0f 84 8c 04 00 00    	je     401887 <main+0x667>
  4013fb:	48 89 ef             	mov    %rbp,%rdi
  4013fe:	e8 4d fc ff ff       	callq  401050 <strlen@plt>
  401403:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401408:	49 89 c7             	mov    %rax,%r15
  40140b:	48 83 f8 0f          	cmp    $0xf,%rax
  40140f:	0f 87 7b 03 00 00    	ja     401790 <main+0x570>
  401415:	48 83 f8 01          	cmp    $0x1,%rax
  401419:	0f 85 51 03 00 00    	jne    401770 <main+0x550>
  40141f:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  401424:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
  401428:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40142d:	88 94 24 80 00 00 00 	mov    %dl,0x80(%rsp)
  401434:	4c 89 f2             	mov    %r14,%rdx
  401437:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  40143c:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401440:	e8 eb fb ff ff       	callq  401030 <__errno_location@plt>
  401445:	48 89 c5             	mov    %rax,%rbp
  401448:	4c 8b 7c 24 70       	mov    0x70(%rsp),%r15
  40144d:	8b 00                	mov    (%rax),%eax
  40144f:	c7 45 00 00 00 00 00 	movl   $0x0,0x0(%rbp)
  401456:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40145b:	ba 0a 00 00 00       	mov    $0xa,%edx
  401460:	4c 89 ff             	mov    %r15,%rdi
  401463:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401467:	e8 74 fc ff ff       	callq  4010e0 <strtoull@plt>
  40146c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401471:	4c 3b 7c 24 28       	cmp    0x28(%rsp),%r15
  401476:	0f 84 01 04 00 00    	je     40187d <main+0x65d>
  40147c:	8b 45 00             	mov    0x0(%rbp),%eax
  40147f:	83 f8 22             	cmp    $0x22,%eax
  401482:	0f 84 eb 03 00 00    	je     401873 <main+0x653>
  401488:	85 c0                	test   %eax,%eax
  40148a:	75 07                	jne    401493 <main+0x273>
  40148c:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401490:	89 45 00             	mov    %eax,0x0(%rbp)
  401493:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
  401498:	4c 39 f7             	cmp    %r14,%rdi
  40149b:	74 11                	je     4014ae <main+0x28e>
  40149d:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  4014a4:	00 
  4014a5:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4014a9:	e8 12 fc ff ff       	callq  4010c0 <_ZdlPvm@plt>
  4014ae:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
  4014b3:	4c 39 ef             	cmp    %r13,%rdi
  4014b6:	0f 84 4c 02 00 00    	je     401708 <main+0x4e8>
  4014bc:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  4014c1:	83 c3 02             	add    $0x2,%ebx
  4014c4:	48 8d 70 01          	lea    0x1(%rax),%rsi
  4014c8:	e8 f3 fb ff ff       	callq  4010c0 <_ZdlPvm@plt>
  4014cd:	49 83 c4 10          	add    $0x10,%r12
  4014d1:	3b 5c 24 18          	cmp    0x18(%rsp),%ebx
  4014d5:	0f 85 b5 fd ff ff    	jne    401290 <main+0x70>
  4014db:	be 36 30 40 00       	mov    $0x403036,%esi
  4014e0:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4014e5:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
  4014ec:	00 00 
  4014ee:	e8 4d fb ff ff       	callq  401040 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4014f3:	85 c0                	test   %eax,%eax
  4014f5:	0f 85 dd 02 00 00    	jne    4017d8 <main+0x5b8>
  4014fb:	e8 80 fc ff ff       	callq  401180 <omp_get_wtime@plt>
  401500:	4c 8b 7c 24 08       	mov    0x8(%rsp),%r15
  401505:	c4 e1 f9 7e c3       	vmovq  %xmm0,%rbx
  40150a:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
  40150f:	31 c9                	xor    %ecx,%ecx
  401511:	31 d2                	xor    %edx,%edx
  401513:	48 8d 74 24 70       	lea    0x70(%rsp),%rsi
  401518:	bf f0 19 40 00       	mov    $0x4019f0,%edi
  40151d:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401522:	4c 89 7c 24 70       	mov    %r15,0x70(%rsp)
  401527:	e8 d4 fb ff ff       	callq  401100 <GOMP_parallel@plt>
  40152c:	e8 4f fc ff ff       	callq  401180 <omp_get_wtime@plt>
  401531:	c4 e1 f9 6e eb       	vmovq  %rbx,%xmm5
  401536:	c5 fb 5c e5          	vsubsd %xmm5,%xmm0,%xmm4
  40153a:	c4 e1 f9 7e e3       	vmovq  %xmm4,%rbx
  40153f:	e8 0c fc ff ff       	callq  401150 <omp_get_max_threads@plt>
  401544:	4c 63 e8             	movslq %eax,%r13
  401547:	4d 0f af ef          	imul   %r15,%r13
  40154b:	4d 69 ed 80 01 00 00 	imul   $0x180,%r13,%r13
  401552:	c5 fb 10 44 24 50    	vmovsd 0x50(%rsp),%xmm0
  401558:	c5 fb 10 15 88 1c 00 	vmovsd 0x1c88(%rip),%xmm2        # 4031e8 <__dso_handle+0x1e0>
  40155f:	00 
  401560:	c5 f9 54 0d 98 1c 00 	vandpd 0x1c98(%rip),%xmm0,%xmm1        # 403200 <__dso_handle+0x1f8>
  401567:	00 
  401568:	45 31 e4             	xor    %r12d,%r12d
  40156b:	c5 f9 2e d1          	vucomisd %xmm1,%xmm2
  40156f:	0f 83 d6 02 00 00    	jae    40184b <main+0x62b>
  401575:	48 8b 05 84 3b 00 00 	mov    0x3b84(%rip),%rax        # 405100 <_ZSt4cout@@GLIBCXX_3.4>
  40157c:	ba 2c 00 00 00       	mov    $0x2c,%edx
  401581:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401585:	be f0 30 40 00       	mov    $0x4030f0,%esi
  40158a:	bf 00 51 40 00       	mov    $0x405100,%edi
  40158f:	48 c7 80 08 51 40 00 	movq   $0xc,0x405108(%rax)
  401596:	0c 00 00 00 
  40159a:	e8 31 fb ff ff       	callq  4010d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40159f:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  4015a4:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  4015a9:	bf 00 51 40 00       	mov    $0x405100,%edi
  4015ae:	e8 1d fb ff ff       	callq  4010d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4015b3:	ba 0f 00 00 00       	mov    $0xf,%edx
  4015b8:	be 40 30 40 00       	mov    $0x403040,%esi
  4015bd:	48 89 c7             	mov    %rax,%rdi
  4015c0:	48 89 c5             	mov    %rax,%rbp
  4015c3:	e8 08 fb ff ff       	callq  4010d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4015c8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  4015cd:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  4015d2:	48 89 ef             	mov    %rbp,%rdi
  4015d5:	e8 f6 fa ff ff       	callq  4010d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4015da:	ba 0c 00 00 00       	mov    $0xc,%edx
  4015df:	be 50 30 40 00       	mov    $0x403050,%esi
  4015e4:	48 89 c7             	mov    %rax,%rdi
  4015e7:	48 89 c5             	mov    %rax,%rbp
  4015ea:	e8 e1 fa ff ff       	callq  4010d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4015ef:	e8 5c fb ff ff       	callq  401150 <omp_get_max_threads@plt>
  4015f4:	89 c6                	mov    %eax,%esi
  4015f6:	48 89 ef             	mov    %rbp,%rdi
  4015f9:	e8 62 fb ff ff       	callq  401160 <_ZNSolsEi@plt>
  4015fe:	ba 0e 00 00 00       	mov    $0xe,%edx
  401603:	be 5d 30 40 00       	mov    $0x40305d,%esi
  401608:	48 89 c7             	mov    %rax,%rdi
  40160b:	48 89 c5             	mov    %rax,%rbp
  40160e:	e8 bd fa ff ff       	callq  4010d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401613:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  401618:	48 89 ef             	mov    %rbp,%rdi
  40161b:	e8 50 fa ff ff       	callq  401070 <_ZNSo9_M_insertImEERSoT_@plt>
  401620:	ba 0e 00 00 00       	mov    $0xe,%edx
  401625:	be 6c 30 40 00       	mov    $0x40306c,%esi
  40162a:	48 89 c7             	mov    %rax,%rdi
  40162d:	48 89 c5             	mov    %rax,%rbp
  401630:	e8 9b fa ff ff       	callq  4010d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401635:	4c 89 ee             	mov    %r13,%rsi
  401638:	48 89 ef             	mov    %rbp,%rdi
  40163b:	e8 30 fa ff ff       	callq  401070 <_ZNSo9_M_insertImEERSoT_@plt>
  401640:	ba 13 00 00 00       	mov    $0x13,%edx
  401645:	be 7b 30 40 00       	mov    $0x40307b,%esi
  40164a:	48 89 c7             	mov    %rax,%rdi
  40164d:	48 89 c5             	mov    %rax,%rbp
  401650:	e8 7b fa ff ff       	callq  4010d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401655:	c4 e1 f9 6e c3       	vmovq  %rbx,%xmm0
  40165a:	48 89 ef             	mov    %rbp,%rdi
  40165d:	e8 ce fa ff ff       	callq  401130 <_ZNSo9_M_insertIdEERSoT_@plt>
  401662:	ba 14 00 00 00       	mov    $0x14,%edx
  401667:	be 8f 30 40 00       	mov    $0x40308f,%esi
  40166c:	48 89 c7             	mov    %rax,%rdi
  40166f:	48 89 c5             	mov    %rax,%rbp
  401672:	e8 59 fa ff ff       	callq  4010d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401677:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  40167b:	62 d1 ff 08 7b c5    	vcvtusi2sd %r13,%xmm0,%xmm0
  401681:	c4 e1 f9 6e db       	vmovq  %rbx,%xmm3
  401686:	48 89 ef             	mov    %rbp,%rdi
  401689:	c5 fb 5e c3          	vdivsd %xmm3,%xmm0,%xmm0
  40168d:	c5 fb 5e 05 5b 1b 00 	vdivsd 0x1b5b(%rip),%xmm0,%xmm0        # 4031f0 <__dso_handle+0x1e8>
  401694:	00 
  401695:	e8 96 fa ff ff       	callq  401130 <_ZNSo9_M_insertIdEERSoT_@plt>
  40169a:	ba 0c 00 00 00       	mov    $0xc,%edx
  40169f:	be a4 30 40 00       	mov    $0x4030a4,%esi
  4016a4:	48 89 c7             	mov    %rax,%rdi
  4016a7:	48 89 c5             	mov    %rax,%rbp
  4016aa:	e8 21 fa ff ff       	callq  4010d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4016af:	c5 fb 10 44 24 50    	vmovsd 0x50(%rsp),%xmm0
  4016b5:	48 89 ef             	mov    %rbp,%rdi
  4016b8:	e8 73 fa ff ff       	callq  401130 <_ZNSo9_M_insertIdEERSoT_@plt>
  4016bd:	ba 09 00 00 00       	mov    $0x9,%edx
  4016c2:	be b1 30 40 00       	mov    $0x4030b1,%esi
  4016c7:	48 89 c7             	mov    %rax,%rdi
  4016ca:	48 89 c5             	mov    %rax,%rbp
  4016cd:	e8 fe f9 ff ff       	callq  4010d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  4016d2:	45 84 e4             	test   %r12b,%r12b
  4016d5:	be 10 30 40 00       	mov    $0x403010,%esi
  4016da:	b8 15 30 40 00       	mov    $0x403015,%eax
  4016df:	48 0f 44 f0          	cmove  %rax,%rsi
  4016e3:	48 89 ef             	mov    %rbp,%rdi
  4016e6:	e8 c5 f9 ff ff       	callq  4010b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4016eb:	48 89 c7             	mov    %rax,%rdi
  4016ee:	be bb 30 40 00       	mov    $0x4030bb,%esi
  4016f3:	e8 b8 f9 ff ff       	callq  4010b0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4016f8:	41 83 f4 01          	xor    $0x1,%r12d
  4016fc:	45 0f b6 e4          	movzbl %r12b,%r12d
  401700:	e9 23 fc ff ff       	jmpq   401328 <main+0x108>
  401705:	0f 1f 00             	nopl   (%rax)
  401708:	83 c3 02             	add    $0x2,%ebx
  40170b:	49 83 c4 10          	add    $0x10,%r12
  40170f:	39 5c 24 18          	cmp    %ebx,0x18(%rsp)
  401713:	0f 84 c2 fd ff ff    	je     4014db <main+0x2bb>
  401719:	49 8b 2c 24          	mov    (%r12),%rbp
  40171d:	4c 89 6c 24 50       	mov    %r13,0x50(%rsp)
  401722:	48 85 ed             	test   %rbp,%rbp
  401725:	0f 85 77 fb ff ff    	jne    4012a2 <main+0x82>
  40172b:	bf c0 30 40 00       	mov    $0x4030c0,%edi
  401730:	e8 4b f9 ff ff       	callq  401080 <_ZSt19__throw_logic_errorPKc@plt>
  401735:	0f 1f 00             	nopl   (%rax)
  401738:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
  40173d:	48 63 c3             	movslq %ebx,%rax
  401740:	4c 8b 34 c1          	mov    (%rcx,%rax,8),%r14
  401744:	4c 89 f7             	mov    %r14,%rdi
  401747:	e8 04 f9 ff ff       	callq  401050 <strlen@plt>
  40174c:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401751:	49 89 c0             	mov    %rax,%r8
  401754:	4c 89 f1             	mov    %r14,%rcx
  401757:	31 f6                	xor    %esi,%esi
  401759:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40175e:	e8 bd f9 ff ff       	callq  401120 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
  401763:	e9 46 fd ff ff       	jmpq   4014ae <main+0x28e>
  401768:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40176f:	00 
  401770:	48 85 c0             	test   %rax,%rax
  401773:	0f 85 18 01 00 00    	jne    401891 <main+0x671>
  401779:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  40177e:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  401783:	4c 89 f2             	mov    %r14,%rdx
  401786:	e9 ac fc ff ff       	jmpq   401437 <main+0x217>
  40178b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401790:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
  401795:	31 d2                	xor    %edx,%edx
  401797:	48 89 c6             	mov    %rax,%rsi
  40179a:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
  40179f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4017a4:	e8 e7 f9 ff ff       	callq  401190 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
  4017a9:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  4017ae:	48 89 c7             	mov    %rax,%rdi
  4017b1:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  4017b6:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
  4017bd:	00 
  4017be:	4c 89 fa             	mov    %r15,%rdx
  4017c1:	48 89 ee             	mov    %rbp,%rsi
  4017c4:	e8 c7 f8 ff ff       	callq  401090 <memcpy@plt>
  4017c9:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  4017ce:	48 8b 54 24 70       	mov    0x70(%rsp),%rdx
  4017d3:	e9 5f fc ff ff       	jmpq   401437 <main+0x217>
  4017d8:	be 3b 30 40 00       	mov    $0x40303b,%esi
  4017dd:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4017e2:	e8 59 f8 ff ff       	callq  401040 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@plt>
  4017e7:	85 c0                	test   %eax,%eax
  4017e9:	0f 85 33 fb ff ff    	jne    401322 <main+0x102>
  4017ef:	e8 8c f9 ff ff       	callq  401180 <omp_get_wtime@plt>
  4017f4:	4c 8b 7c 24 08       	mov    0x8(%rsp),%r15
  4017f9:	c4 e1 f9 7e c3       	vmovq  %xmm0,%rbx
  4017fe:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
  401803:	31 c9                	xor    %ecx,%ecx
  401805:	31 d2                	xor    %edx,%edx
  401807:	48 8d 74 24 70       	lea    0x70(%rsp),%rsi
  40180c:	bf 40 1e 40 00       	mov    $0x401e40,%edi
  401811:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401816:	4c 89 7c 24 70       	mov    %r15,0x70(%rsp)
  40181b:	e8 e0 f8 ff ff       	callq  401100 <GOMP_parallel@plt>
  401820:	e8 5b f9 ff ff       	callq  401180 <omp_get_wtime@plt>
  401825:	c4 e1 f9 6e fb       	vmovq  %rbx,%xmm7
  40182a:	c5 fb 5c f7          	vsubsd %xmm7,%xmm0,%xmm6
  40182e:	c4 e1 f9 7e f3       	vmovq  %xmm6,%rbx
  401833:	e8 18 f9 ff ff       	callq  401150 <omp_get_max_threads@plt>
  401838:	4c 63 e8             	movslq %eax,%r13
  40183b:	4d 0f af ef          	imul   %r15,%r13
  40183f:	4d 69 ed c0 00 00 00 	imul   $0xc0,%r13,%r13
  401846:	e9 07 fd ff ff       	jmpq   401552 <main+0x332>
  40184b:	c5 f9 2e 05 b5 19 00 	vucomisd 0x19b5(%rip),%xmm0        # 403208 <__dso_handle+0x200>
  401852:	00 
  401853:	b8 01 00 00 00       	mov    $0x1,%eax
  401858:	41 0f 9a c4          	setp   %r12b
  40185c:	44 0f 45 e0          	cmovne %eax,%r12d
  401860:	e9 10 fd ff ff       	jmpq   401575 <main+0x355>
  401865:	48 c7 44 24 08 00 e1 	movq   $0x5f5e100,0x8(%rsp)
  40186c:	f5 05 
  40186e:	e9 68 fc ff ff       	jmpq   4014db <main+0x2bb>
  401873:	bf 2f 30 40 00       	mov    $0x40302f,%edi
  401878:	e8 73 f8 ff ff       	callq  4010f0 <_ZSt20__throw_out_of_rangePKc@plt>
  40187d:	bf 2f 30 40 00       	mov    $0x40302f,%edi
  401882:	e8 d9 f7 ff ff       	callq  401060 <_ZSt24__throw_invalid_argumentPKc@plt>
  401887:	bf c0 30 40 00       	mov    $0x4030c0,%edi
  40188c:	e8 ef f7 ff ff       	callq  401080 <_ZSt19__throw_logic_errorPKc@plt>
  401891:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
  401896:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40189b:	4c 89 f7             	mov    %r14,%rdi
  40189e:	e9 1b ff ff ff       	jmpq   4017be <main+0x59e>
  4018a3:	4c 89 ef             	mov    %r13,%rdi
  4018a6:	e9 f0 fa ff ff       	jmpq   40139b <main+0x17b>
  4018ab:	48 89 c3             	mov    %rax,%rbx
  4018ae:	e9 fd f8 ff ff       	jmpq   4011b0 <main.cold>
  4018b3:	48 89 c5             	mov    %rax,%rbp
  4018b6:	c5 f8 77             	vzeroupper 
  4018b9:	e9 20 f9 ff ff       	jmpq   4011de <main.cold+0x2e>
  4018be:	48 89 c5             	mov    %rax,%rbp
  4018c1:	c5 f8 77             	vzeroupper 
  4018c4:	e9 2d f9 ff ff       	jmpq   4011f6 <main.cold+0x46>
  4018c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004018d0 <_GLOBAL__sub_I_main>:
  4018d0:	48 83 ec 08          	sub    $0x8,%rsp
  4018d4:	bf 11 52 40 00       	mov    $0x405211,%edi
  4018d9:	e8 32 f8 ff ff       	callq  401110 <_ZNSt8ios_base4InitC1Ev@plt>
  4018de:	ba 08 30 40 00       	mov    $0x403008,%edx
  4018e3:	be 11 52 40 00       	mov    $0x405211,%esi
  4018e8:	bf a0 11 40 00       	mov    $0x4011a0,%edi
  4018ed:	48 83 c4 08          	add    $0x8,%rsp
  4018f1:	e9 aa f7 ff ff       	jmpq   4010a0 <__cxa_atexit@plt>
  4018f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4018fd:	00 00 00 

0000000000401900 <_start>:
  401900:	f3 0f 1e fa          	endbr64 
  401904:	31 ed                	xor    %ebp,%ebp
  401906:	49 89 d1             	mov    %rdx,%r9
  401909:	5e                   	pop    %rsi
  40190a:	48 89 e2             	mov    %rsp,%rdx
  40190d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401911:	50                   	push   %rax
  401912:	54                   	push   %rsp
  401913:	45 31 c0             	xor    %r8d,%r8d
  401916:	31 c9                	xor    %ecx,%ecx
  401918:	48 c7 c7 20 12 40 00 	mov    $0x401220,%rdi
  40191f:	ff 15 bb 36 00 00    	callq  *0x36bb(%rip)        # 404fe0 <__libc_start_main@GLIBC_2.34>
  401925:	f4                   	hlt    
  401926:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40192d:	00 00 00 

0000000000401930 <_dl_relocate_static_pie>:
  401930:	f3 0f 1e fa          	endbr64 
  401934:	c3                   	retq   
  401935:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40193c:	00 00 00 
  40193f:	90                   	nop

0000000000401940 <deregister_tm_clones>:
  401940:	48 8d 3d 99 37 00 00 	lea    0x3799(%rip),%rdi        # 4050e0 <__TMC_END__>
  401947:	48 8d 05 92 37 00 00 	lea    0x3792(%rip),%rax        # 4050e0 <__TMC_END__>
  40194e:	48 39 f8             	cmp    %rdi,%rax
  401951:	74 15                	je     401968 <deregister_tm_clones+0x28>
  401953:	48 8b 05 8e 36 00 00 	mov    0x368e(%rip),%rax        # 404fe8 <_ITM_deregisterTMCloneTable>
  40195a:	48 85 c0             	test   %rax,%rax
  40195d:	74 09                	je     401968 <deregister_tm_clones+0x28>
  40195f:	ff e0                	jmpq   *%rax
  401961:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401968:	c3                   	retq   
  401969:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401970 <register_tm_clones>:
  401970:	48 8d 3d 69 37 00 00 	lea    0x3769(%rip),%rdi        # 4050e0 <__TMC_END__>
  401977:	48 8d 35 62 37 00 00 	lea    0x3762(%rip),%rsi        # 4050e0 <__TMC_END__>
  40197e:	48 29 fe             	sub    %rdi,%rsi
  401981:	48 89 f0             	mov    %rsi,%rax
  401984:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401988:	48 c1 f8 03          	sar    $0x3,%rax
  40198c:	48 01 c6             	add    %rax,%rsi
  40198f:	48 d1 fe             	sar    %rsi
  401992:	74 14                	je     4019a8 <register_tm_clones+0x38>
  401994:	48 8b 05 5d 36 00 00 	mov    0x365d(%rip),%rax        # 404ff8 <_ITM_registerTMCloneTable>
  40199b:	48 85 c0             	test   %rax,%rax
  40199e:	74 08                	je     4019a8 <register_tm_clones+0x38>
  4019a0:	ff e0                	jmpq   *%rax
  4019a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4019a8:	c3                   	retq   
  4019a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004019b0 <__do_global_dtors_aux>:
  4019b0:	f3 0f 1e fa          	endbr64 
  4019b4:	80 3d 55 38 00 00 00 	cmpb   $0x0,0x3855(%rip)        # 405210 <completed.0>
  4019bb:	75 13                	jne    4019d0 <__do_global_dtors_aux+0x20>
  4019bd:	55                   	push   %rbp
  4019be:	48 89 e5             	mov    %rsp,%rbp
  4019c1:	e8 7a ff ff ff       	callq  401940 <deregister_tm_clones>
  4019c6:	c6 05 43 38 00 00 01 	movb   $0x1,0x3843(%rip)        # 405210 <completed.0>
  4019cd:	5d                   	pop    %rbp
  4019ce:	c3                   	retq   
  4019cf:	90                   	nop
  4019d0:	c3                   	retq   
  4019d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4019d8:	00 00 00 00 
  4019dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004019e0 <frame_dummy>:
  4019e0:	f3 0f 1e fa          	endbr64 
  4019e4:	eb 8a                	jmp    401970 <register_tm_clones>
  4019e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4019ed:	00 00 00 

00000000004019f0 <_ZN12_GLOBAL__N_18run_fp32EmRd._omp_fn.0>:
  4019f0:	48 8b 0f             	mov    (%rdi),%rcx
  4019f3:	48 89 f8             	mov    %rdi,%rax
  4019f6:	48 85 c9             	test   %rcx,%rcx
  4019f9:	0f 84 b1 03 00 00    	je     401db0 <_ZN12_GLOBAL__N_18run_fp32EmRd._omp_fn.0+0x3c0>
  4019ff:	62 f2 7d 48 18 05 5f 	vbroadcastss 0x175f(%rip),%zmm0        # 403168 <__dso_handle+0x160>
  401a06:	17 00 00 
  401a09:	62 72 7d 48 18 2d 65 	vbroadcastss 0x1765(%rip),%zmm13        # 403178 <__dso_handle+0x170>
  401a10:	17 00 00 
  401a13:	62 72 7d 48 18 25 53 	vbroadcastss 0x1753(%rip),%zmm12        # 403170 <__dso_handle+0x168>
  401a1a:	17 00 00 
  401a1d:	62 72 7d 48 18 15 39 	vbroadcastss 0x1739(%rip),%zmm10        # 403160 <__dso_handle+0x158>
  401a24:	17 00 00 
  401a27:	62 72 7d 48 18 0d 27 	vbroadcastss 0x1727(%rip),%zmm9        # 403158 <__dso_handle+0x150>
  401a2e:	17 00 00 
  401a31:	62 72 7d 48 18 05 15 	vbroadcastss 0x1715(%rip),%zmm8        # 403150 <__dso_handle+0x148>
  401a38:	17 00 00 
  401a3b:	62 f2 7d 48 18 3d 03 	vbroadcastss 0x1703(%rip),%zmm7        # 403148 <__dso_handle+0x140>
  401a42:	17 00 00 
  401a45:	62 f2 7d 48 18 35 f1 	vbroadcastss 0x16f1(%rip),%zmm6        # 403140 <__dso_handle+0x138>
  401a4c:	16 00 00 
  401a4f:	62 f2 7d 48 18 2d df 	vbroadcastss 0x16df(%rip),%zmm5        # 403138 <__dso_handle+0x130>
  401a56:	16 00 00 
  401a59:	62 f2 7d 48 18 25 cd 	vbroadcastss 0x16cd(%rip),%zmm4        # 403130 <__dso_handle+0x128>
  401a60:	16 00 00 
  401a63:	62 f2 7d 48 18 1d bb 	vbroadcastss 0x16bb(%rip),%zmm3        # 403128 <__dso_handle+0x120>
  401a6a:	16 00 00 
  401a6d:	62 f2 7d 48 18 15 a9 	vbroadcastss 0x16a9(%rip),%zmm2        # 403120 <__dso_handle+0x118>
  401a74:	16 00 00 
  401a77:	62 f2 7d 48 18 0d 77 	vbroadcastss 0x1777(%rip),%zmm1        # 4031f8 <__dso_handle+0x1f0>
  401a7e:	17 00 00 
  401a81:	31 d2                	xor    %edx,%edx
  401a83:	62 71 7c 48 28 d8    	vmovaps %zmm0,%zmm11
  401a89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a90:	48 ff c2             	inc    %rdx
  401a93:	62 f2 7d 48 b8 d1    	vfmadd231ps %zmm1,%zmm0,%zmm2
  401a99:	62 f2 7d 48 b8 d9    	vfmadd231ps %zmm1,%zmm0,%zmm3
  401a9f:	62 f2 7d 48 b8 e1    	vfmadd231ps %zmm1,%zmm0,%zmm4
  401aa5:	62 f2 7d 48 b8 e9    	vfmadd231ps %zmm1,%zmm0,%zmm5
  401aab:	62 f2 7d 48 b8 f1    	vfmadd231ps %zmm1,%zmm0,%zmm6
  401ab1:	62 f2 7d 48 b8 f9    	vfmadd231ps %zmm1,%zmm0,%zmm7
  401ab7:	62 72 7d 48 b8 c1    	vfmadd231ps %zmm1,%zmm0,%zmm8
  401abd:	62 72 7d 48 b8 c9    	vfmadd231ps %zmm1,%zmm0,%zmm9
  401ac3:	62 72 7d 48 b8 d1    	vfmadd231ps %zmm1,%zmm0,%zmm10
  401ac9:	62 72 7d 48 b8 d9    	vfmadd231ps %zmm1,%zmm0,%zmm11
  401acf:	62 72 7d 48 b8 e1    	vfmadd231ps %zmm1,%zmm0,%zmm12
  401ad5:	62 72 7d 48 b8 e9    	vfmadd231ps %zmm1,%zmm0,%zmm13
  401adb:	48 39 d1             	cmp    %rdx,%rcx
  401ade:	75 b0                	jne    401a90 <_ZN12_GLOBAL__N_18run_fp32EmRd._omp_fn.0+0xa0>
  401ae0:	62 f3 fd 48 1b d0 01 	vextractf64x4 $0x1,%zmm2,%ymm0
  401ae7:	c5 fc 58 c2          	vaddps %ymm2,%ymm0,%ymm0
  401aeb:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401aef:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  401af5:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  401af9:	62 e3 7d 08 04 c8 4e 	vpermilps $0x4e,%xmm0,%xmm17
  401b00:	62 e1 74 00 58 c8    	vaddps %xmm0,%xmm17,%xmm17
  401b06:	62 f3 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm3,%ymm0
  401b0d:	c5 fc 58 c3          	vaddps %ymm3,%ymm0,%ymm0
  401b11:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  401b17:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  401b1b:	62 e3 7d 08 04 d0 4e 	vpermilps $0x4e,%xmm0,%xmm18
  401b22:	62 e1 6c 00 58 d0    	vaddps %xmm0,%xmm18,%xmm18
  401b28:	62 f3 fd 48 1b e0 01 	vextractf64x4 $0x1,%zmm4,%ymm0
  401b2f:	c5 fc 58 c4          	vaddps %ymm4,%ymm0,%ymm0
  401b33:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  401b39:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  401b3d:	62 e3 7d 08 04 c0 4e 	vpermilps $0x4e,%xmm0,%xmm16
  401b44:	62 e1 7c 00 58 c0    	vaddps %xmm0,%xmm16,%xmm16
  401b4a:	62 f3 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm5,%ymm0
  401b51:	c5 fc 58 c5          	vaddps %ymm5,%ymm0,%ymm0
  401b55:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  401b5b:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  401b5f:	c4 63 79 04 f8 4e    	vpermilps $0x4e,%xmm0,%xmm15
  401b65:	c5 00 58 f8          	vaddps %xmm0,%xmm15,%xmm15
  401b69:	62 f3 fd 48 1b f0 01 	vextractf64x4 $0x1,%zmm6,%ymm0
  401b70:	c5 fc 58 c6          	vaddps %ymm6,%ymm0,%ymm0
  401b74:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  401b7a:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  401b7e:	c4 63 79 04 f0 4e    	vpermilps $0x4e,%xmm0,%xmm14
  401b84:	c5 08 58 f0          	vaddps %xmm0,%xmm14,%xmm14
  401b88:	62 f3 fd 48 1b f8 01 	vextractf64x4 $0x1,%zmm7,%ymm0
  401b8f:	c5 fc 58 c7          	vaddps %ymm7,%ymm0,%ymm0
  401b93:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  401b99:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  401b9d:	c4 e3 79 04 f8 4e    	vpermilps $0x4e,%xmm0,%xmm7
  401ba3:	c5 c0 58 f8          	vaddps %xmm0,%xmm7,%xmm7
  401ba7:	62 73 fd 48 1b c0 01 	vextractf64x4 $0x1,%zmm8,%ymm0
  401bae:	c4 c1 7c 58 c0       	vaddps %ymm8,%ymm0,%ymm0
  401bb3:	62 31 7c 08 28 c1    	vmovaps %xmm17,%xmm8
  401bb9:	62 a1 74 00 c6 c9 55 	vshufps $0x55,%xmm17,%xmm17,%xmm17
  401bc0:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  401bc6:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  401bca:	62 31 3e 08 58 c1    	vaddss %xmm17,%xmm8,%xmm8
  401bd0:	c4 e3 79 04 f0 4e    	vpermilps $0x4e,%xmm0,%xmm6
  401bd6:	c5 c8 58 f0          	vaddps %xmm0,%xmm6,%xmm6
  401bda:	62 73 fd 48 1b c8 01 	vextractf64x4 $0x1,%zmm9,%ymm0
  401be1:	c4 c1 7c 58 c1       	vaddps %ymm9,%ymm0,%ymm0
  401be6:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  401beb:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  401bf1:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  401bf5:	c4 e3 79 04 e8 4e    	vpermilps $0x4e,%xmm0,%xmm5
  401bfb:	c5 d0 58 e8          	vaddps %xmm0,%xmm5,%xmm5
  401bff:	62 73 fd 48 1b d0 01 	vextractf64x4 $0x1,%zmm10,%ymm0
  401c06:	c4 c1 7c 58 c2       	vaddps %ymm10,%ymm0,%ymm0
  401c0b:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  401c11:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  401c15:	c4 e3 79 04 e0 4e    	vpermilps $0x4e,%xmm0,%xmm4
  401c1b:	c5 d8 58 e0          	vaddps %xmm0,%xmm4,%xmm4
  401c1f:	62 73 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm11,%ymm0
  401c26:	c4 c1 7c 58 c3       	vaddps %ymm11,%ymm0,%ymm0
  401c2b:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  401c31:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  401c35:	c4 e3 79 04 d8 4e    	vpermilps $0x4e,%xmm0,%xmm3
  401c3b:	c5 e0 58 d8          	vaddps %xmm0,%xmm3,%xmm3
  401c3f:	62 73 fd 48 1b e0 01 	vextractf64x4 $0x1,%zmm12,%ymm0
  401c46:	c4 c1 7c 58 c4       	vaddps %ymm12,%ymm0,%ymm0
  401c4b:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  401c51:	c5 f0 58 c0          	vaddps %xmm0,%xmm1,%xmm0
  401c55:	c4 e3 79 04 d0 4e    	vpermilps $0x4e,%xmm0,%xmm2
  401c5b:	c5 e8 58 d0          	vaddps %xmm0,%xmm2,%xmm2
  401c5f:	62 73 fd 48 1b e8 01 	vextractf64x4 $0x1,%zmm13,%ymm0
  401c66:	c5 94 58 c0          	vaddps %ymm0,%ymm13,%ymm0
  401c6a:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
  401c70:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
  401c74:	c4 e3 79 04 c8 4e    	vpermilps $0x4e,%xmm0,%xmm1
  401c7a:	c5 f0 58 c8          	vaddps %xmm0,%xmm1,%xmm1
  401c7e:	62 b1 7c 08 28 c2    	vmovaps %xmm18,%xmm0
  401c84:	62 a1 6c 00 c6 d2 55 	vshufps $0x55,%xmm18,%xmm18,%xmm18
  401c8b:	62 b1 7e 08 58 c2    	vaddss %xmm18,%xmm0,%xmm0
  401c91:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  401c95:	c4 c1 7b 58 c0       	vaddsd %xmm8,%xmm0,%xmm0
  401c9a:	62 31 7c 08 28 c0    	vmovaps %xmm16,%xmm8
  401ca0:	62 a1 7c 00 c6 c0 55 	vshufps $0x55,%xmm16,%xmm16,%xmm16
  401ca7:	62 31 3e 08 58 c0    	vaddss %xmm16,%xmm8,%xmm8
  401cad:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  401cb2:	c4 c1 7b 58 c0       	vaddsd %xmm8,%xmm0,%xmm0
  401cb7:	c4 41 78 28 c7       	vmovaps %xmm15,%xmm8
  401cbc:	c4 41 00 c6 ff 55    	vshufps $0x55,%xmm15,%xmm15,%xmm15
  401cc2:	c4 41 3a 58 c7       	vaddss %xmm15,%xmm8,%xmm8
  401cc7:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  401ccc:	c4 c1 7b 58 c0       	vaddsd %xmm8,%xmm0,%xmm0
  401cd1:	c4 41 78 28 c6       	vmovaps %xmm14,%xmm8
  401cd6:	c4 41 08 c6 f6 55    	vshufps $0x55,%xmm14,%xmm14,%xmm14
  401cdc:	c4 41 3a 58 c6       	vaddss %xmm14,%xmm8,%xmm8
  401ce1:	c4 41 3a 5a c0       	vcvtss2sd %xmm8,%xmm8,%xmm8
  401ce6:	c4 c1 7b 58 c0       	vaddsd %xmm8,%xmm0,%xmm0
  401ceb:	c5 78 28 c7          	vmovaps %xmm7,%xmm8
  401cef:	c5 c0 c6 ff 55       	vshufps $0x55,%xmm7,%xmm7,%xmm7
  401cf4:	c5 ba 58 ff          	vaddss %xmm7,%xmm8,%xmm7
  401cf8:	c5 c2 5a ff          	vcvtss2sd %xmm7,%xmm7,%xmm7
  401cfc:	c5 fb 58 c7          	vaddsd %xmm7,%xmm0,%xmm0
  401d00:	c5 f8 28 fe          	vmovaps %xmm6,%xmm7
  401d04:	c5 c8 c6 f6 55       	vshufps $0x55,%xmm6,%xmm6,%xmm6
  401d09:	c5 c2 58 f6          	vaddss %xmm6,%xmm7,%xmm6
  401d0d:	c5 ca 5a f6          	vcvtss2sd %xmm6,%xmm6,%xmm6
  401d11:	c5 fb 58 c6          	vaddsd %xmm6,%xmm0,%xmm0
  401d15:	c5 f8 28 f5          	vmovaps %xmm5,%xmm6
  401d19:	c5 d0 c6 ed 55       	vshufps $0x55,%xmm5,%xmm5,%xmm5
  401d1e:	c5 ca 58 ed          	vaddss %xmm5,%xmm6,%xmm5
  401d22:	c5 d2 5a ed          	vcvtss2sd %xmm5,%xmm5,%xmm5
  401d26:	c5 fb 58 c5          	vaddsd %xmm5,%xmm0,%xmm0
  401d2a:	c5 f8 28 ec          	vmovaps %xmm4,%xmm5
  401d2e:	c5 d8 c6 e4 55       	vshufps $0x55,%xmm4,%xmm4,%xmm4
  401d33:	c5 d2 58 e4          	vaddss %xmm4,%xmm5,%xmm4
  401d37:	c5 da 5a e4          	vcvtss2sd %xmm4,%xmm4,%xmm4
  401d3b:	c5 fb 58 c4          	vaddsd %xmm4,%xmm0,%xmm0
  401d3f:	c5 f8 28 e3          	vmovaps %xmm3,%xmm4
  401d43:	c5 e0 c6 db 55       	vshufps $0x55,%xmm3,%xmm3,%xmm3
  401d48:	c5 da 58 db          	vaddss %xmm3,%xmm4,%xmm3
  401d4c:	c5 e2 5a db          	vcvtss2sd %xmm3,%xmm3,%xmm3
  401d50:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0
  401d54:	c5 f8 28 da          	vmovaps %xmm2,%xmm3
  401d58:	c5 e8 c6 d2 55       	vshufps $0x55,%xmm2,%xmm2,%xmm2
  401d5d:	c5 e2 58 d2          	vaddss %xmm2,%xmm3,%xmm2
  401d61:	c5 ea 5a d2          	vcvtss2sd %xmm2,%xmm2,%xmm2
  401d65:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
  401d69:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
  401d6d:	c5 f0 c6 c9 55       	vshufps $0x55,%xmm1,%xmm1,%xmm1
  401d72:	c5 ea 58 c9          	vaddss %xmm1,%xmm2,%xmm1
  401d76:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
  401d7a:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  401d7e:	c5 fb 58 05 82 14 00 	vaddsd 0x1482(%rip),%xmm0,%xmm0        # 403208 <__dso_handle+0x200>
  401d85:	00 
  401d86:	48 8b 11             	mov    (%rcx),%rdx
  401d89:	c4 e1 f9 6e da       	vmovq  %rdx,%xmm3
  401d8e:	c5 fb 58 d3          	vaddsd %xmm3,%xmm0,%xmm2
  401d92:	48 89 d0             	mov    %rdx,%rax
  401d95:	c4 e1 f9 7e d6       	vmovq  %xmm2,%rsi
  401d9a:	f0 48 0f b1 31       	lock cmpxchg %rsi,(%rcx)
  401d9f:	0f 85 88 00 00 00    	jne    401e2d <_ZN12_GLOBAL__N_18run_fp32EmRd._omp_fn.0+0x43d>
  401da5:	c5 f8 77             	vzeroupper 
  401da8:	c3                   	retq   
  401da9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401db0:	62 f2 fd 48 19 15 66 	vbroadcastsd 0x1366(%rip),%zmm2        # 403120 <__dso_handle+0x118>
  401db7:	13 00 00 
  401dba:	62 f2 fd 48 19 1d 64 	vbroadcastsd 0x1364(%rip),%zmm3        # 403128 <__dso_handle+0x120>
  401dc1:	13 00 00 
  401dc4:	62 f2 fd 48 19 25 62 	vbroadcastsd 0x1362(%rip),%zmm4        # 403130 <__dso_handle+0x128>
  401dcb:	13 00 00 
  401dce:	62 f2 fd 48 19 2d 60 	vbroadcastsd 0x1360(%rip),%zmm5        # 403138 <__dso_handle+0x130>
  401dd5:	13 00 00 
  401dd8:	62 f2 fd 48 19 35 5e 	vbroadcastsd 0x135e(%rip),%zmm6        # 403140 <__dso_handle+0x138>
  401ddf:	13 00 00 
  401de2:	62 f2 fd 48 19 3d 5c 	vbroadcastsd 0x135c(%rip),%zmm7        # 403148 <__dso_handle+0x140>
  401de9:	13 00 00 
  401dec:	62 72 fd 48 19 05 5a 	vbroadcastsd 0x135a(%rip),%zmm8        # 403150 <__dso_handle+0x148>
  401df3:	13 00 00 
  401df6:	62 72 fd 48 19 0d 58 	vbroadcastsd 0x1358(%rip),%zmm9        # 403158 <__dso_handle+0x150>
  401dfd:	13 00 00 
  401e00:	62 72 fd 48 19 15 56 	vbroadcastsd 0x1356(%rip),%zmm10        # 403160 <__dso_handle+0x158>
  401e07:	13 00 00 
  401e0a:	62 72 fd 48 19 1d 54 	vbroadcastsd 0x1354(%rip),%zmm11        # 403168 <__dso_handle+0x160>
  401e11:	13 00 00 
  401e14:	62 72 fd 48 19 25 52 	vbroadcastsd 0x1352(%rip),%zmm12        # 403170 <__dso_handle+0x168>
  401e1b:	13 00 00 
  401e1e:	62 72 fd 48 19 2d 50 	vbroadcastsd 0x1350(%rip),%zmm13        # 403178 <__dso_handle+0x170>
  401e25:	13 00 00 
  401e28:	e9 b3 fc ff ff       	jmpq   401ae0 <_ZN12_GLOBAL__N_18run_fp32EmRd._omp_fn.0+0xf0>
  401e2d:	48 89 c2             	mov    %rax,%rdx
  401e30:	e9 54 ff ff ff       	jmpq   401d89 <_ZN12_GLOBAL__N_18run_fp32EmRd._omp_fn.0+0x399>
  401e35:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401e3c:	00 00 00 00 

0000000000401e40 <_ZN12_GLOBAL__N_18run_fp64EmRd._omp_fn.0>:
  401e40:	48 8b 0f             	mov    (%rdi),%rcx
  401e43:	48 89 f8             	mov    %rdi,%rax
  401e46:	48 85 c9             	test   %rcx,%rcx
  401e49:	0f 84 89 02 00 00    	je     4020d8 <_ZN12_GLOBAL__N_18run_fp64EmRd._omp_fn.0+0x298>
  401e4f:	62 f2 fd 48 19 05 37 	vbroadcastsd 0x1337(%rip),%zmm0        # 403190 <__dso_handle+0x188>
  401e56:	13 00 00 
  401e59:	62 f2 fd 48 19 15 1d 	vbroadcastsd 0x131d(%rip),%zmm2        # 403180 <__dso_handle+0x178>
  401e60:	13 00 00 
  401e63:	62 72 fd 48 19 2d 1b 	vbroadcastsd 0x131b(%rip),%zmm13        # 403188 <__dso_handle+0x180>
  401e6a:	13 00 00 
  401e6d:	62 72 fd 48 19 1d 21 	vbroadcastsd 0x1321(%rip),%zmm11        # 403198 <__dso_handle+0x190>
  401e74:	13 00 00 
  401e77:	62 72 fd 48 19 15 1f 	vbroadcastsd 0x131f(%rip),%zmm10        # 4031a0 <__dso_handle+0x198>
  401e7e:	13 00 00 
  401e81:	62 72 fd 48 19 0d 1d 	vbroadcastsd 0x131d(%rip),%zmm9        # 4031a8 <__dso_handle+0x1a0>
  401e88:	13 00 00 
  401e8b:	62 72 fd 48 19 05 1b 	vbroadcastsd 0x131b(%rip),%zmm8        # 4031b0 <__dso_handle+0x1a8>
  401e92:	13 00 00 
  401e95:	62 f2 fd 48 19 3d 19 	vbroadcastsd 0x1319(%rip),%zmm7        # 4031b8 <__dso_handle+0x1b0>
  401e9c:	13 00 00 
  401e9f:	62 f2 fd 48 19 35 17 	vbroadcastsd 0x1317(%rip),%zmm6        # 4031c0 <__dso_handle+0x1b8>
  401ea6:	13 00 00 
  401ea9:	62 f2 fd 48 19 2d 15 	vbroadcastsd 0x1315(%rip),%zmm5        # 4031c8 <__dso_handle+0x1c0>
  401eb0:	13 00 00 
  401eb3:	62 f2 fd 48 19 25 13 	vbroadcastsd 0x1313(%rip),%zmm4        # 4031d0 <__dso_handle+0x1c8>
  401eba:	13 00 00 
  401ebd:	62 f2 fd 48 19 1d 11 	vbroadcastsd 0x1311(%rip),%zmm3        # 4031d8 <__dso_handle+0x1d0>
  401ec4:	13 00 00 
  401ec7:	62 f2 fd 48 19 0d 0f 	vbroadcastsd 0x130f(%rip),%zmm1        # 4031e0 <__dso_handle+0x1d8>
  401ece:	13 00 00 
  401ed1:	31 d2                	xor    %edx,%edx
  401ed3:	62 71 fd 48 28 e0    	vmovapd %zmm0,%zmm12
  401ed9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401ee0:	48 ff c2             	inc    %rdx
  401ee3:	62 f2 fd 48 b8 d9    	vfmadd231pd %zmm1,%zmm0,%zmm3
  401ee9:	62 f2 fd 48 b8 e1    	vfmadd231pd %zmm1,%zmm0,%zmm4
  401eef:	62 f2 fd 48 b8 e9    	vfmadd231pd %zmm1,%zmm0,%zmm5
  401ef5:	62 f2 fd 48 b8 f1    	vfmadd231pd %zmm1,%zmm0,%zmm6
  401efb:	62 f2 fd 48 b8 f9    	vfmadd231pd %zmm1,%zmm0,%zmm7
  401f01:	62 72 fd 48 b8 c1    	vfmadd231pd %zmm1,%zmm0,%zmm8
  401f07:	62 72 fd 48 b8 c9    	vfmadd231pd %zmm1,%zmm0,%zmm9
  401f0d:	62 72 fd 48 b8 d1    	vfmadd231pd %zmm1,%zmm0,%zmm10
  401f13:	62 72 fd 48 b8 d9    	vfmadd231pd %zmm1,%zmm0,%zmm11
  401f19:	62 72 fd 48 b8 e1    	vfmadd231pd %zmm1,%zmm0,%zmm12
  401f1f:	62 72 fd 48 b8 e9    	vfmadd231pd %zmm1,%zmm0,%zmm13
  401f25:	62 f2 fd 48 b8 d1    	vfmadd231pd %zmm1,%zmm0,%zmm2
  401f2b:	48 39 d1             	cmp    %rdx,%rcx
  401f2e:	75 b0                	jne    401ee0 <_ZN12_GLOBAL__N_18run_fp64EmRd._omp_fn.0+0xa0>
  401f30:	62 f3 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm3,%ymm0
  401f37:	c5 fd 58 c3          	vaddpd %ymm3,%ymm0,%ymm0
  401f3b:	62 f3 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm4,%ymm1
  401f42:	c5 f5 58 cc          	vaddpd %ymm4,%ymm1,%ymm1
  401f46:	62 d3 fd 28 19 c7 01 	vextractf64x2 $0x1,%ymm0,%xmm15
  401f4d:	c5 01 58 f8          	vaddpd %xmm0,%xmm15,%xmm15
  401f51:	62 f3 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm1,%xmm0
  401f58:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
  401f5c:	62 f3 fd 48 1b e9 01 	vextractf64x4 $0x1,%zmm5,%ymm1
  401f63:	c5 f5 58 cd          	vaddpd %ymm5,%ymm1,%ymm1
  401f67:	c5 f9 7c c0          	vhaddpd %xmm0,%xmm0,%xmm0
  401f6b:	c4 41 01 7c ff       	vhaddpd %xmm15,%xmm15,%xmm15
  401f70:	62 d3 fd 28 19 ce 01 	vextractf64x2 $0x1,%ymm1,%xmm14
  401f77:	c5 09 58 f1          	vaddpd %xmm1,%xmm14,%xmm14
  401f7b:	62 f3 fd 48 1b f1 01 	vextractf64x4 $0x1,%zmm6,%ymm1
  401f82:	c5 f5 58 ce          	vaddpd %ymm6,%ymm1,%ymm1
  401f86:	c4 c1 7b 58 c7       	vaddsd %xmm15,%xmm0,%xmm0
  401f8b:	c4 41 09 7c f6       	vhaddpd %xmm14,%xmm14,%xmm14
  401f90:	62 f3 fd 28 19 ce 01 	vextractf64x2 $0x1,%ymm1,%xmm6
  401f97:	c5 c9 58 f1          	vaddpd %xmm1,%xmm6,%xmm6
  401f9b:	62 f3 fd 48 1b f9 01 	vextractf64x4 $0x1,%zmm7,%ymm1
  401fa2:	c5 f5 58 cf          	vaddpd %ymm7,%ymm1,%ymm1
  401fa6:	c4 c1 7b 58 c6       	vaddsd %xmm14,%xmm0,%xmm0
  401fab:	c5 c9 7c f6          	vhaddpd %xmm6,%xmm6,%xmm6
  401faf:	62 f3 fd 28 19 cd 01 	vextractf64x2 $0x1,%ymm1,%xmm5
  401fb6:	c5 d1 58 e9          	vaddpd %xmm1,%xmm5,%xmm5
  401fba:	62 73 fd 48 1b c1 01 	vextractf64x4 $0x1,%zmm8,%ymm1
  401fc1:	c4 c1 75 58 c8       	vaddpd %ymm8,%ymm1,%ymm1
  401fc6:	c5 fb 58 c6          	vaddsd %xmm6,%xmm0,%xmm0
  401fca:	c5 d1 7c ed          	vhaddpd %xmm5,%xmm5,%xmm5
  401fce:	62 f3 fd 28 19 cc 01 	vextractf64x2 $0x1,%ymm1,%xmm4
  401fd5:	c5 d9 58 e1          	vaddpd %xmm1,%xmm4,%xmm4
  401fd9:	62 73 fd 48 1b c9 01 	vextractf64x4 $0x1,%zmm9,%ymm1
  401fe0:	c4 c1 75 58 c9       	vaddpd %ymm9,%ymm1,%ymm1
  401fe5:	c5 fb 58 c5          	vaddsd %xmm5,%xmm0,%xmm0
  401fe9:	c5 d9 7c e4          	vhaddpd %xmm4,%xmm4,%xmm4
  401fed:	62 f3 fd 28 19 cb 01 	vextractf64x2 $0x1,%ymm1,%xmm3
  401ff4:	c5 e1 58 d9          	vaddpd %xmm1,%xmm3,%xmm3
  401ff8:	62 73 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm1
  401fff:	c4 c1 75 58 ca       	vaddpd %ymm10,%ymm1,%ymm1
  402004:	c5 fb 58 c4          	vaddsd %xmm4,%xmm0,%xmm0
  402008:	c5 e1 7c db          	vhaddpd %xmm3,%xmm3,%xmm3
  40200c:	62 f3 fd 28 19 cf 01 	vextractf64x2 $0x1,%ymm1,%xmm7
  402013:	c5 c1 58 f9          	vaddpd %xmm1,%xmm7,%xmm7
  402017:	62 73 fd 48 1b d9 01 	vextractf64x4 $0x1,%zmm11,%ymm1
  40201e:	c4 c1 75 58 cb       	vaddpd %ymm11,%ymm1,%ymm1
  402023:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0
  402027:	c5 c1 7c ff          	vhaddpd %xmm7,%xmm7,%xmm7
  40202b:	62 d3 fd 28 19 ca 01 	vextractf64x2 $0x1,%ymm1,%xmm10
  402032:	c5 29 58 d1          	vaddpd %xmm1,%xmm10,%xmm10
  402036:	62 73 fd 48 1b e1 01 	vextractf64x4 $0x1,%zmm12,%ymm1
  40203d:	c4 c1 75 58 cc       	vaddpd %ymm12,%ymm1,%ymm1
  402042:	c5 fb 58 c7          	vaddsd %xmm7,%xmm0,%xmm0
  402046:	c4 41 29 7c d2       	vhaddpd %xmm10,%xmm10,%xmm10
  40204b:	62 d3 fd 28 19 c9 01 	vextractf64x2 $0x1,%ymm1,%xmm9
  402052:	c5 31 58 c9          	vaddpd %xmm1,%xmm9,%xmm9
  402056:	62 73 fd 48 1b e9 01 	vextractf64x4 $0x1,%zmm13,%ymm1
  40205d:	c4 c1 75 58 cd       	vaddpd %ymm13,%ymm1,%ymm1
  402062:	62 d3 fd 48 1b d3 01 	vextractf64x4 $0x1,%zmm2,%ymm11
  402069:	c4 c1 7b 58 c2       	vaddsd %xmm10,%xmm0,%xmm0
  40206e:	62 d3 fd 28 19 c8 01 	vextractf64x2 $0x1,%ymm1,%xmm8
  402075:	c5 39 58 c1          	vaddpd %xmm1,%xmm8,%xmm8
  402079:	c4 c1 6d 58 cb       	vaddpd %ymm11,%ymm2,%ymm1
  40207e:	c4 41 31 7c c9       	vhaddpd %xmm9,%xmm9,%xmm9
  402083:	c4 41 39 7c c0       	vhaddpd %xmm8,%xmm8,%xmm8
  402088:	62 f3 fd 28 19 ca 01 	vextractf64x2 $0x1,%ymm1,%xmm2
  40208f:	c5 f1 58 ca          	vaddpd %xmm2,%xmm1,%xmm1
  402093:	c4 c1 7b 58 c1       	vaddsd %xmm9,%xmm0,%xmm0
  402098:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40209c:	c5 f1 7c c9          	vhaddpd %xmm1,%xmm1,%xmm1
  4020a0:	c4 c1 7b 58 c0       	vaddsd %xmm8,%xmm0,%xmm0
  4020a5:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  4020a9:	c5 fb 58 05 57 11 00 	vaddsd 0x1157(%rip),%xmm0,%xmm0        # 403208 <__dso_handle+0x200>
  4020b0:	00 
  4020b1:	48 8b 11             	mov    (%rcx),%rdx
  4020b4:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
  4020b9:	c5 fb 58 d2          	vaddsd %xmm2,%xmm0,%xmm2
  4020bd:	48 89 d0             	mov    %rdx,%rax
  4020c0:	c4 e1 f9 7e d6       	vmovq  %xmm2,%rsi
  4020c5:	f0 48 0f b1 31       	lock cmpxchg %rsi,(%rcx)
  4020ca:	0f 85 85 00 00 00    	jne    402155 <_ZN12_GLOBAL__N_18run_fp64EmRd._omp_fn.0+0x315>
  4020d0:	c5 f8 77             	vzeroupper 
  4020d3:	c3                   	retq   
  4020d4:	0f 1f 40 00          	nopl   0x0(%rax)
  4020d8:	62 f2 fd 48 19 15 9e 	vbroadcastsd 0x109e(%rip),%zmm2        # 403180 <__dso_handle+0x178>
  4020df:	10 00 00 
  4020e2:	62 72 fd 48 19 2d 9c 	vbroadcastsd 0x109c(%rip),%zmm13        # 403188 <__dso_handle+0x180>
  4020e9:	10 00 00 
  4020ec:	62 72 fd 48 19 25 9a 	vbroadcastsd 0x109a(%rip),%zmm12        # 403190 <__dso_handle+0x188>
  4020f3:	10 00 00 
  4020f6:	62 72 fd 48 19 1d 98 	vbroadcastsd 0x1098(%rip),%zmm11        # 403198 <__dso_handle+0x190>
  4020fd:	10 00 00 
  402100:	62 72 fd 48 19 15 96 	vbroadcastsd 0x1096(%rip),%zmm10        # 4031a0 <__dso_handle+0x198>
  402107:	10 00 00 
  40210a:	62 72 fd 48 19 0d 94 	vbroadcastsd 0x1094(%rip),%zmm9        # 4031a8 <__dso_handle+0x1a0>
  402111:	10 00 00 
  402114:	62 72 fd 48 19 05 92 	vbroadcastsd 0x1092(%rip),%zmm8        # 4031b0 <__dso_handle+0x1a8>
  40211b:	10 00 00 
  40211e:	62 f2 fd 48 19 3d 90 	vbroadcastsd 0x1090(%rip),%zmm7        # 4031b8 <__dso_handle+0x1b0>
  402125:	10 00 00 
  402128:	62 f2 fd 48 19 35 8e 	vbroadcastsd 0x108e(%rip),%zmm6        # 4031c0 <__dso_handle+0x1b8>
  40212f:	10 00 00 
  402132:	62 f2 fd 48 19 2d 8c 	vbroadcastsd 0x108c(%rip),%zmm5        # 4031c8 <__dso_handle+0x1c0>
  402139:	10 00 00 
  40213c:	62 f2 fd 48 19 25 8a 	vbroadcastsd 0x108a(%rip),%zmm4        # 4031d0 <__dso_handle+0x1c8>
  402143:	10 00 00 
  402146:	62 f2 fd 48 19 1d 88 	vbroadcastsd 0x1088(%rip),%zmm3        # 4031d8 <__dso_handle+0x1d0>
  40214d:	10 00 00 
  402150:	e9 db fd ff ff       	jmpq   401f30 <_ZN12_GLOBAL__N_18run_fp64EmRd._omp_fn.0+0xf0>
  402155:	48 89 c2             	mov    %rax,%rdx
  402158:	e9 57 ff ff ff       	jmpq   4020b4 <_ZN12_GLOBAL__N_18run_fp64EmRd._omp_fn.0+0x274>

Disassembly of section .fini:

0000000000402160 <_fini>:
  402160:	f3 0f 1e fa          	endbr64 
  402164:	48 83 ec 08          	sub    $0x8,%rsp
  402168:	48 83 c4 08          	add    $0x8,%rsp
  40216c:	c3                   	retq   
