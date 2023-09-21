
log：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 92 2f 00 00    	push   0x2f92(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 93 2f 00 00 	bnd jmp *0x2f93(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 9d 2f 00 00 	bnd jmp *0x2f9d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001060 <__stack_chk_fail@plt>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	f2 ff 25 5d 2f 00 00 	bnd jmp *0x2f5d(%rip)        # 3fc8 <__stack_chk_fail@GLIBC_2.4>
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001070 <__printf_chk@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 55 2f 00 00 	bnd jmp *0x2f55(%rip)        # 3fd0 <__printf_chk@GLIBC_2.3.4>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001080 <main>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	48 83 ec 18          	sub    $0x18,%rsp
    1088:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    108f:	00 00 
    1091:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1096:	31 c0                	xor    %eax,%eax
    1098:	e8 93 05 00 00       	call   1630 <f_getui>
    109d:	31 c0                	xor    %eax,%eax
    109f:	e8 8c 05 00 00       	call   1630 <f_getui>
    10a4:	89 04 24             	mov    %eax,(%rsp)
    10a7:	31 c0                	xor    %eax,%eax
    10a9:	e8 62 04 00 00       	call   1510 <f_getll_hex>
    10ae:	31 c0                	xor    %eax,%eax
    10b0:	e8 5b 04 00 00       	call   1510 <f_getll_hex>
    10b5:	31 c0                	xor    %eax,%eax
    10b7:	e8 74 05 00 00       	call   1630 <f_getui>
    10bc:	31 c0                	xor    %eax,%eax
    10be:	e8 6d 05 00 00       	call   1630 <f_getui>
    10c3:	31 c0                	xor    %eax,%eax
    10c5:	e8 66 02 00 00       	call   1330 <f_geti_long>
    10ca:	31 c0                	xor    %eax,%eax
    10cc:	e8 3f 06 00 00       	call   1710 <f_getul>
    10d1:	31 c0                	xor    %eax,%eax
    10d3:	e8 d8 03 00 00       	call   14b0 <f_getl_long>
    10d8:	31 c0                	xor    %eax,%eax
    10da:	e8 51 02 00 00       	call   1330 <f_geti_long>
    10df:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    10e4:	e8 77 05 00 00       	call   1660 <func_33.constprop.0>
    10e9:	31 c0                	xor    %eax,%eax
    10eb:	e8 40 05 00 00       	call   1630 <f_getui>
    10f0:	31 c0                	xor    %eax,%eax
    10f2:	e8 39 02 00 00       	call   1330 <f_geti_long>
    10f7:	31 c0                	xor    %eax,%eax
    10f9:	e8 32 02 00 00       	call   1330 <f_geti_long>
    10fe:	31 c0                	xor    %eax,%eax
    1100:	e8 2b 02 00 00       	call   1330 <f_geti_long>
    1105:	31 c0                	xor    %eax,%eax
    1107:	e8 24 02 00 00       	call   1330 <f_geti_long>
    110c:	48 89 e7             	mov    %rsp,%rdi
    110f:	e8 5c 06 00 00       	call   1770 <func_2.constprop.0.isra.0>
    1114:	31 d2                	xor    %edx,%edx
    1116:	31 c0                	xor    %eax,%eax
    1118:	48 8d 35 69 10 00 00 	lea    0x1069(%rip),%rsi        # 2188 <_IO_stdin_used+0x188>
    111f:	bf 01 00 00 00       	mov    $0x1,%edi
    1124:	e8 47 ff ff ff       	call   1070 <__printf_chk@plt>
    1129:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    112e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1135:	00 00 
    1137:	75 07                	jne    1140 <main+0xc0>
    1139:	31 c0                	xor    %eax,%eax
    113b:	48 83 c4 18          	add    $0x18,%rsp
    113f:	c3                   	ret    
    1140:	e8 1b ff ff ff       	call   1060 <__stack_chk_fail@plt>
    1145:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    114c:	00 00 00 
    114f:	90                   	nop

0000000000001150 <_start>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	31 ed                	xor    %ebp,%ebp
    1156:	49 89 d1             	mov    %rdx,%r9
    1159:	5e                   	pop    %rsi
    115a:	48 89 e2             	mov    %rsp,%rdx
    115d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1161:	50                   	push   %rax
    1162:	54                   	push   %rsp
    1163:	45 31 c0             	xor    %r8d,%r8d
    1166:	31 c9                	xor    %ecx,%ecx
    1168:	48 8d 3d 11 ff ff ff 	lea    -0xef(%rip),%rdi        # 1080 <main>
    116f:	ff 15 63 2e 00 00    	call   *0x2e63(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1175:	f4                   	hlt    
    1176:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    117d:	00 00 00 

0000000000001180 <deregister_tm_clones>:
    1180:	48 8d 3d 89 2e 00 00 	lea    0x2e89(%rip),%rdi        # 4010 <__TMC_END__>
    1187:	48 8d 05 82 2e 00 00 	lea    0x2e82(%rip),%rax        # 4010 <__TMC_END__>
    118e:	48 39 f8             	cmp    %rdi,%rax
    1191:	74 15                	je     11a8 <deregister_tm_clones+0x28>
    1193:	48 8b 05 46 2e 00 00 	mov    0x2e46(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    119a:	48 85 c0             	test   %rax,%rax
    119d:	74 09                	je     11a8 <deregister_tm_clones+0x28>
    119f:	ff e0                	jmp    *%rax
    11a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11a8:	c3                   	ret    
    11a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011b0 <register_tm_clones>:
    11b0:	48 8d 3d 59 2e 00 00 	lea    0x2e59(%rip),%rdi        # 4010 <__TMC_END__>
    11b7:	48 8d 35 52 2e 00 00 	lea    0x2e52(%rip),%rsi        # 4010 <__TMC_END__>
    11be:	48 29 fe             	sub    %rdi,%rsi
    11c1:	48 89 f0             	mov    %rsi,%rax
    11c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11c8:	48 c1 f8 03          	sar    $0x3,%rax
    11cc:	48 01 c6             	add    %rax,%rsi
    11cf:	48 d1 fe             	sar    %rsi
    11d2:	74 14                	je     11e8 <register_tm_clones+0x38>
    11d4:	48 8b 05 15 2e 00 00 	mov    0x2e15(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11db:	48 85 c0             	test   %rax,%rax
    11de:	74 08                	je     11e8 <register_tm_clones+0x38>
    11e0:	ff e0                	jmp    *%rax
    11e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11e8:	c3                   	ret    
    11e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011f0 <__do_global_dtors_aux>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	80 3d 15 2e 00 00 00 	cmpb   $0x0,0x2e15(%rip)        # 4010 <__TMC_END__>
    11fb:	75 2b                	jne    1228 <__do_global_dtors_aux+0x38>
    11fd:	55                   	push   %rbp
    11fe:	48 83 3d f2 2d 00 00 	cmpq   $0x0,0x2df2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1205:	00 
    1206:	48 89 e5             	mov    %rsp,%rbp
    1209:	74 0c                	je     1217 <__do_global_dtors_aux+0x27>
    120b:	48 8b 3d f6 2d 00 00 	mov    0x2df6(%rip),%rdi        # 4008 <__dso_handle>
    1212:	e8 39 fe ff ff       	call   1050 <__cxa_finalize@plt>
    1217:	e8 64 ff ff ff       	call   1180 <deregister_tm_clones>
    121c:	c6 05 ed 2d 00 00 01 	movb   $0x1,0x2ded(%rip)        # 4010 <__TMC_END__>
    1223:	5d                   	pop    %rbp
    1224:	c3                   	ret    
    1225:	0f 1f 00             	nopl   (%rax)
    1228:	c3                   	ret    
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001230 <frame_dummy>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	e9 77 ff ff ff       	jmp    11b0 <register_tm_clones>
    1239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001240 <f_getc_binary>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	48 83 ec 08          	sub    $0x8,%rsp
    1248:	31 d2                	xor    %edx,%edx
    124a:	48 8d 35 b3 0d 00 00 	lea    0xdb3(%rip),%rsi        # 2004 <_IO_stdin_used+0x4>
    1251:	31 c0                	xor    %eax,%eax
    1253:	bf 01 00 00 00       	mov    $0x1,%edi
    1258:	e8 13 fe ff ff       	call   1070 <__printf_chk@plt>
    125d:	b8 01 00 00 00       	mov    $0x1,%eax
    1262:	48 83 c4 08          	add    $0x8,%rsp
    1266:	c3                   	ret    
    1267:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    126e:	00 00 

0000000000001270 <f_getc_hex>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	48 83 ec 08          	sub    $0x8,%rsp
    1278:	ba 01 00 00 00       	mov    $0x1,%edx
    127d:	bf 01 00 00 00       	mov    $0x1,%edi
    1282:	31 c0                	xor    %eax,%eax
    1284:	48 8d 35 8b 0d 00 00 	lea    0xd8b(%rip),%rsi        # 2016 <_IO_stdin_used+0x16>
    128b:	e8 e0 fd ff ff       	call   1070 <__printf_chk@plt>
    1290:	b8 01 00 00 00       	mov    $0x1,%eax
    1295:	48 83 c4 08          	add    $0x8,%rsp
    1299:	c3                   	ret    
    129a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000012a0 <f_getc_long>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	48 83 ec 08          	sub    $0x8,%rsp
    12a8:	ba 02 00 00 00       	mov    $0x2,%edx
    12ad:	bf 01 00 00 00       	mov    $0x1,%edi
    12b2:	31 c0                	xor    %eax,%eax
    12b4:	48 8d 35 6a 0d 00 00 	lea    0xd6a(%rip),%rsi        # 2025 <_IO_stdin_used+0x25>
    12bb:	e8 b0 fd ff ff       	call   1070 <__printf_chk@plt>
    12c0:	b8 01 00 00 00       	mov    $0x1,%eax
    12c5:	48 83 c4 08          	add    $0x8,%rsp
    12c9:	c3                   	ret    
    12ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000012d0 <f_geti_binary>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	48 83 ec 08          	sub    $0x8,%rsp
    12d8:	ba 03 00 00 00       	mov    $0x3,%edx
    12dd:	bf 01 00 00 00       	mov    $0x1,%edi
    12e2:	31 c0                	xor    %eax,%eax
    12e4:	48 8d 35 4a 0d 00 00 	lea    0xd4a(%rip),%rsi        # 2035 <_IO_stdin_used+0x35>
    12eb:	e8 80 fd ff ff       	call   1070 <__printf_chk@plt>
    12f0:	b8 01 00 00 00       	mov    $0x1,%eax
    12f5:	48 83 c4 08          	add    $0x8,%rsp
    12f9:	c3                   	ret    
    12fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001300 <f_geti_hex>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	48 83 ec 08          	sub    $0x8,%rsp
    1308:	ba 04 00 00 00       	mov    $0x4,%edx
    130d:	bf 01 00 00 00       	mov    $0x1,%edi
    1312:	31 c0                	xor    %eax,%eax
    1314:	48 8d 35 2c 0d 00 00 	lea    0xd2c(%rip),%rsi        # 2047 <_IO_stdin_used+0x47>
    131b:	e8 50 fd ff ff       	call   1070 <__printf_chk@plt>
    1320:	b8 01 00 00 00       	mov    $0x1,%eax
    1325:	48 83 c4 08          	add    $0x8,%rsp
    1329:	c3                   	ret    
    132a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001330 <f_geti_long>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	48 83 ec 08          	sub    $0x8,%rsp
    1338:	ba 05 00 00 00       	mov    $0x5,%edx
    133d:	bf 01 00 00 00       	mov    $0x1,%edi
    1342:	31 c0                	xor    %eax,%eax
    1344:	48 8d 35 0b 0d 00 00 	lea    0xd0b(%rip),%rsi        # 2056 <_IO_stdin_used+0x56>
    134b:	e8 20 fd ff ff       	call   1070 <__printf_chk@plt>
    1350:	b8 01 00 00 00       	mov    $0x1,%eax
    1355:	48 83 c4 08          	add    $0x8,%rsp
    1359:	c3                   	ret    
    135a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001360 <f_geti128_binary>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	48 83 ec 08          	sub    $0x8,%rsp
    1368:	ba 06 00 00 00       	mov    $0x6,%edx
    136d:	bf 01 00 00 00       	mov    $0x1,%edi
    1372:	31 c0                	xor    %eax,%eax
    1374:	48 8d 35 ed 0c 00 00 	lea    0xced(%rip),%rsi        # 2068 <_IO_stdin_used+0x68>
    137b:	e8 f0 fc ff ff       	call   1070 <__printf_chk@plt>
    1380:	b8 01 00 00 00       	mov    $0x1,%eax
    1385:	31 d2                	xor    %edx,%edx
    1387:	48 83 c4 08          	add    $0x8,%rsp
    138b:	c3                   	ret    
    138c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001390 <f_geti128_hex>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	48 83 ec 08          	sub    $0x8,%rsp
    1398:	ba 07 00 00 00       	mov    $0x7,%edx
    139d:	bf 01 00 00 00       	mov    $0x1,%edi
    13a2:	31 c0                	xor    %eax,%eax
    13a4:	48 8d 35 d2 0c 00 00 	lea    0xcd2(%rip),%rsi        # 207d <_IO_stdin_used+0x7d>
    13ab:	e8 c0 fc ff ff       	call   1070 <__printf_chk@plt>
    13b0:	b8 01 00 00 00       	mov    $0x1,%eax
    13b5:	31 d2                	xor    %edx,%edx
    13b7:	48 83 c4 08          	add    $0x8,%rsp
    13bb:	c3                   	ret    
    13bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000013c0 <f_getshort_binary>:
    13c0:	f3 0f 1e fa          	endbr64 
    13c4:	48 83 ec 08          	sub    $0x8,%rsp
    13c8:	ba 08 00 00 00       	mov    $0x8,%edx
    13cd:	bf 01 00 00 00       	mov    $0x1,%edi
    13d2:	31 c0                	xor    %eax,%eax
    13d4:	48 8d 35 b4 0c 00 00 	lea    0xcb4(%rip),%rsi        # 208f <_IO_stdin_used+0x8f>
    13db:	e8 90 fc ff ff       	call   1070 <__printf_chk@plt>
    13e0:	b8 01 00 00 00       	mov    $0x1,%eax
    13e5:	48 83 c4 08          	add    $0x8,%rsp
    13e9:	c3                   	ret    
    13ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000013f0 <f_getshort_hex>:
    13f0:	f3 0f 1e fa          	endbr64 
    13f4:	48 83 ec 08          	sub    $0x8,%rsp
    13f8:	ba 09 00 00 00       	mov    $0x9,%edx
    13fd:	bf 01 00 00 00       	mov    $0x1,%edi
    1402:	31 c0                	xor    %eax,%eax
    1404:	48 8d 35 9a 0c 00 00 	lea    0xc9a(%rip),%rsi        # 20a5 <_IO_stdin_used+0xa5>
    140b:	e8 60 fc ff ff       	call   1070 <__printf_chk@plt>
    1410:	b8 01 00 00 00       	mov    $0x1,%eax
    1415:	48 83 c4 08          	add    $0x8,%rsp
    1419:	c3                   	ret    
    141a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001420 <f_getshort_long>:
    1420:	f3 0f 1e fa          	endbr64 
    1424:	48 83 ec 08          	sub    $0x8,%rsp
    1428:	ba 0a 00 00 00       	mov    $0xa,%edx
    142d:	bf 01 00 00 00       	mov    $0x1,%edi
    1432:	31 c0                	xor    %eax,%eax
    1434:	48 8d 35 7d 0c 00 00 	lea    0xc7d(%rip),%rsi        # 20b8 <_IO_stdin_used+0xb8>
    143b:	e8 30 fc ff ff       	call   1070 <__printf_chk@plt>
    1440:	b8 01 00 00 00       	mov    $0x1,%eax
    1445:	48 83 c4 08          	add    $0x8,%rsp
    1449:	c3                   	ret    
    144a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001450 <f_getl_binary>:
    1450:	f3 0f 1e fa          	endbr64 
    1454:	48 83 ec 08          	sub    $0x8,%rsp
    1458:	ba 0b 00 00 00       	mov    $0xb,%edx
    145d:	bf 01 00 00 00       	mov    $0x1,%edi
    1462:	31 c0                	xor    %eax,%eax
    1464:	48 8d 35 61 0c 00 00 	lea    0xc61(%rip),%rsi        # 20cc <_IO_stdin_used+0xcc>
    146b:	e8 00 fc ff ff       	call   1070 <__printf_chk@plt>
    1470:	b8 01 00 00 00       	mov    $0x1,%eax
    1475:	48 83 c4 08          	add    $0x8,%rsp
    1479:	c3                   	ret    
    147a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001480 <f_getl_hex>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	48 83 ec 08          	sub    $0x8,%rsp
    1488:	ba 0c 00 00 00       	mov    $0xc,%edx
    148d:	bf 01 00 00 00       	mov    $0x1,%edi
    1492:	31 c0                	xor    %eax,%eax
    1494:	48 8d 35 43 0c 00 00 	lea    0xc43(%rip),%rsi        # 20de <_IO_stdin_used+0xde>
    149b:	e8 d0 fb ff ff       	call   1070 <__printf_chk@plt>
    14a0:	b8 01 00 00 00       	mov    $0x1,%eax
    14a5:	48 83 c4 08          	add    $0x8,%rsp
    14a9:	c3                   	ret    
    14aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000014b0 <f_getl_long>:
    14b0:	f3 0f 1e fa          	endbr64 
    14b4:	48 83 ec 08          	sub    $0x8,%rsp
    14b8:	ba 0d 00 00 00       	mov    $0xd,%edx
    14bd:	bf 01 00 00 00       	mov    $0x1,%edi
    14c2:	31 c0                	xor    %eax,%eax
    14c4:	48 8d 35 22 0c 00 00 	lea    0xc22(%rip),%rsi        # 20ed <_IO_stdin_used+0xed>
    14cb:	e8 a0 fb ff ff       	call   1070 <__printf_chk@plt>
    14d0:	b8 01 00 00 00       	mov    $0x1,%eax
    14d5:	48 83 c4 08          	add    $0x8,%rsp
    14d9:	c3                   	ret    
    14da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000014e0 <f_getll_binary>:
    14e0:	f3 0f 1e fa          	endbr64 
    14e4:	48 83 ec 08          	sub    $0x8,%rsp
    14e8:	ba 0e 00 00 00       	mov    $0xe,%edx
    14ed:	bf 01 00 00 00       	mov    $0x1,%edi
    14f2:	31 c0                	xor    %eax,%eax
    14f4:	48 8d 35 02 0c 00 00 	lea    0xc02(%rip),%rsi        # 20fd <_IO_stdin_used+0xfd>
    14fb:	e8 70 fb ff ff       	call   1070 <__printf_chk@plt>
    1500:	b8 01 00 00 00       	mov    $0x1,%eax
    1505:	48 83 c4 08          	add    $0x8,%rsp
    1509:	c3                   	ret    
    150a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001510 <f_getll_hex>:
    1510:	f3 0f 1e fa          	endbr64 
    1514:	48 83 ec 08          	sub    $0x8,%rsp
    1518:	ba 0f 00 00 00       	mov    $0xf,%edx
    151d:	bf 01 00 00 00       	mov    $0x1,%edi
    1522:	31 c0                	xor    %eax,%eax
    1524:	48 8d 35 e5 0b 00 00 	lea    0xbe5(%rip),%rsi        # 2110 <_IO_stdin_used+0x110>
    152b:	e8 40 fb ff ff       	call   1070 <__printf_chk@plt>
    1530:	b8 01 00 00 00       	mov    $0x1,%eax
    1535:	48 83 c4 08          	add    $0x8,%rsp
    1539:	c3                   	ret    
    153a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001540 <f_getfloat>:
    1540:	f3 0f 1e fa          	endbr64 
    1544:	48 83 ec 08          	sub    $0x8,%rsp
    1548:	ba 10 00 00 00       	mov    $0x10,%edx
    154d:	bf 01 00 00 00       	mov    $0x1,%edi
    1552:	31 c0                	xor    %eax,%eax
    1554:	48 8d 35 c5 0b 00 00 	lea    0xbc5(%rip),%rsi        # 2120 <_IO_stdin_used+0x120>
    155b:	e8 10 fb ff ff       	call   1070 <__printf_chk@plt>
    1560:	f3 0f 10 05 30 0c 00 	movss  0xc30(%rip),%xmm0        # 2198 <_IO_stdin_used+0x198>
    1567:	00 
    1568:	48 83 c4 08          	add    $0x8,%rsp
    156c:	c3                   	ret    
    156d:	0f 1f 00             	nopl   (%rax)

0000000000001570 <f_getf_hex>:
    1570:	f3 0f 1e fa          	endbr64 
    1574:	48 83 ec 08          	sub    $0x8,%rsp
    1578:	ba 11 00 00 00       	mov    $0x11,%edx
    157d:	bf 01 00 00 00       	mov    $0x1,%edi
    1582:	31 c0                	xor    %eax,%eax
    1584:	48 8d 35 a4 0b 00 00 	lea    0xba4(%rip),%rsi        # 212f <_IO_stdin_used+0x12f>
    158b:	e8 e0 fa ff ff       	call   1070 <__printf_chk@plt>
    1590:	f3 0f 10 05 04 0c 00 	movss  0xc04(%rip),%xmm0        # 219c <_IO_stdin_used+0x19c>
    1597:	00 
    1598:	48 83 c4 08          	add    $0x8,%rsp
    159c:	c3                   	ret    
    159d:	0f 1f 00             	nopl   (%rax)

00000000000015a0 <f_getsf>:
    15a0:	f3 0f 1e fa          	endbr64 
    15a4:	48 83 ec 08          	sub    $0x8,%rsp
    15a8:	ba 12 00 00 00       	mov    $0x12,%edx
    15ad:	bf 01 00 00 00       	mov    $0x1,%edi
    15b2:	31 c0                	xor    %eax,%eax
    15b4:	48 8d 35 83 0b 00 00 	lea    0xb83(%rip),%rsi        # 213e <_IO_stdin_used+0x13e>
    15bb:	e8 b0 fa ff ff       	call   1070 <__printf_chk@plt>
    15c0:	f3 0f 10 05 d8 0b 00 	movss  0xbd8(%rip),%xmm0        # 21a0 <_IO_stdin_used+0x1a0>
    15c7:	00 
    15c8:	48 83 c4 08          	add    $0x8,%rsp
    15cc:	c3                   	ret    
    15cd:	0f 1f 00             	nopl   (%rax)

00000000000015d0 <f_getuc>:
    15d0:	f3 0f 1e fa          	endbr64 
    15d4:	48 83 ec 08          	sub    $0x8,%rsp
    15d8:	ba 13 00 00 00       	mov    $0x13,%edx
    15dd:	bf 01 00 00 00       	mov    $0x1,%edi
    15e2:	31 c0                	xor    %eax,%eax
    15e4:	48 8d 35 5f 0b 00 00 	lea    0xb5f(%rip),%rsi        # 214a <_IO_stdin_used+0x14a>
    15eb:	e8 80 fa ff ff       	call   1070 <__printf_chk@plt>
    15f0:	b8 01 00 00 00       	mov    $0x1,%eax
    15f5:	48 83 c4 08          	add    $0x8,%rsp
    15f9:	c3                   	ret    
    15fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001600 <f_getus>:
    1600:	f3 0f 1e fa          	endbr64 
    1604:	48 83 ec 08          	sub    $0x8,%rsp
    1608:	ba 14 00 00 00       	mov    $0x14,%edx
    160d:	bf 01 00 00 00       	mov    $0x1,%edi
    1612:	31 c0                	xor    %eax,%eax
    1614:	48 8d 35 3b 0b 00 00 	lea    0xb3b(%rip),%rsi        # 2156 <_IO_stdin_used+0x156>
    161b:	e8 50 fa ff ff       	call   1070 <__printf_chk@plt>
    1620:	b8 01 00 00 00       	mov    $0x1,%eax
    1625:	48 83 c4 08          	add    $0x8,%rsp
    1629:	c3                   	ret    
    162a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001630 <f_getui>:
    1630:	f3 0f 1e fa          	endbr64 
    1634:	48 83 ec 08          	sub    $0x8,%rsp
    1638:	ba 14 00 00 00       	mov    $0x14,%edx
    163d:	bf 01 00 00 00       	mov    $0x1,%edi
    1642:	31 c0                	xor    %eax,%eax
    1644:	48 8d 35 17 0b 00 00 	lea    0xb17(%rip),%rsi        # 2162 <_IO_stdin_used+0x162>
    164b:	e8 20 fa ff ff       	call   1070 <__printf_chk@plt>
    1650:	b8 01 00 00 00       	mov    $0x1,%eax
    1655:	48 83 c4 08          	add    $0x8,%rsp
    1659:	c3                   	ret    
    165a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001660 <func_33.constprop.0>:
    1660:	41 55                	push   %r13
    1662:	31 c0                	xor    %eax,%eax
    1664:	49 89 fd             	mov    %rdi,%r13
    1667:	41 54                	push   %r12
    1669:	41 bc 16 00 00 00    	mov    $0x16,%r12d
    166f:	55                   	push   %rbp
    1670:	53                   	push   %rbx
    1671:	48 83 ec 08          	sub    $0x8,%rsp
    1675:	e8 b6 ff ff ff       	call   1630 <f_getui>
    167a:	31 c0                	xor    %eax,%eax
    167c:	e8 2f fe ff ff       	call   14b0 <f_getl_long>
    1681:	31 c0                	xor    %eax,%eax
    1683:	e8 88 fe ff ff       	call   1510 <f_getll_hex>
    1688:	31 c0                	xor    %eax,%eax
    168a:	e8 21 fe ff ff       	call   14b0 <f_getl_long>
    168f:	31 c0                	xor    %eax,%eax
    1691:	e8 9a ff ff ff       	call   1630 <f_getui>
    1696:	31 c0                	xor    %eax,%eax
    1698:	e8 63 ff ff ff       	call   1600 <f_getus>
    169d:	31 c0                	xor    %eax,%eax
    169f:	e8 fc fb ff ff       	call   12a0 <f_getc_long>
    16a4:	0f 1f 40 00          	nopl   0x0(%rax)
    16a8:	31 c0                	xor    %eax,%eax
    16aa:	bd 06 00 00 00       	mov    $0x6,%ebp
    16af:	e8 1c ff ff ff       	call   15d0 <f_getuc>
    16b4:	31 c0                	xor    %eax,%eax
    16b6:	e8 75 ff ff ff       	call   1630 <f_getui>
    16bb:	31 c0                	xor    %eax,%eax
    16bd:	e8 6e ff ff ff       	call   1630 <f_getui>
    16c2:	31 c0                	xor    %eax,%eax
    16c4:	e8 67 ff ff ff       	call   1630 <f_getui>
    16c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    16d0:	bb 09 00 00 00       	mov    $0x9,%ebx
    16d5:	0f 1f 00             	nopl   (%rax)
    16d8:	31 c0                	xor    %eax,%eax
    16da:	e8 51 ff ff ff       	call   1630 <f_getui>
    16df:	83 eb 01             	sub    $0x1,%ebx
    16e2:	75 f4                	jne    16d8 <func_33.constprop.0+0x78>
    16e4:	83 ed 01             	sub    $0x1,%ebp
    16e7:	75 e7                	jne    16d0 <func_33.constprop.0+0x70>
    16e9:	31 c0                	xor    %eax,%eax
    16eb:	e8 40 ff ff ff       	call   1630 <f_getui>
    16f0:	41 83 ec 01          	sub    $0x1,%r12d
    16f4:	75 b2                	jne    16a8 <func_33.constprop.0+0x48>
    16f6:	48 83 c4 08          	add    $0x8,%rsp
    16fa:	4c 89 e8             	mov    %r13,%rax
    16fd:	5b                   	pop    %rbx
    16fe:	5d                   	pop    %rbp
    16ff:	41 5c                	pop    %r12
    1701:	41 5d                	pop    %r13
    1703:	c3                   	ret    
    1704:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    170b:	00 00 00 00 
    170f:	90                   	nop

0000000000001710 <f_getul>:
    1710:	f3 0f 1e fa          	endbr64 
    1714:	48 83 ec 08          	sub    $0x8,%rsp
    1718:	ba 15 00 00 00       	mov    $0x15,%edx
    171d:	bf 01 00 00 00       	mov    $0x1,%edi
    1722:	31 c0                	xor    %eax,%eax
    1724:	48 8d 35 43 0a 00 00 	lea    0xa43(%rip),%rsi        # 216e <_IO_stdin_used+0x16e>
    172b:	e8 40 f9 ff ff       	call   1070 <__printf_chk@plt>
    1730:	b8 01 00 00 00       	mov    $0x1,%eax
    1735:	48 83 c4 08          	add    $0x8,%rsp
    1739:	c3                   	ret    
    173a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001740 <f_getui64>:
    1740:	f3 0f 1e fa          	endbr64 
    1744:	48 83 ec 08          	sub    $0x8,%rsp
    1748:	ba 16 00 00 00       	mov    $0x16,%edx
    174d:	bf 01 00 00 00       	mov    $0x1,%edi
    1752:	31 c0                	xor    %eax,%eax
    1754:	48 8d 35 1f 0a 00 00 	lea    0xa1f(%rip),%rsi        # 217a <_IO_stdin_used+0x17a>
    175b:	e8 10 f9 ff ff       	call   1070 <__printf_chk@plt>
    1760:	b8 01 00 00 00       	mov    $0x1,%eax
    1765:	48 83 c4 08          	add    $0x8,%rsp
    1769:	c3                   	ret    
    176a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001770 <func_2.constprop.0.isra.0>:
    1770:	41 55                	push   %r13
    1772:	41 54                	push   %r12
    1774:	55                   	push   %rbp
    1775:	53                   	push   %rbx
    1776:	48 89 fb             	mov    %rdi,%rbx
    1779:	48 83 ec 18          	sub    $0x18,%rsp
    177d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1784:	00 00 
    1786:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    178b:	31 c0                	xor    %eax,%eax
    178d:	e8 7e ff ff ff       	call   1710 <f_getul>
    1792:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1796:	48 89 c5             	mov    %rax,%rbp
    1799:	31 c0                	xor    %eax,%eax
    179b:	e8 70 fd ff ff       	call   1510 <f_getll_hex>
    17a0:	49 89 c4             	mov    %rax,%r12
    17a3:	31 c0                	xor    %eax,%eax
    17a5:	e8 76 fc ff ff       	call   1420 <f_getshort_long>
    17aa:	31 c0                	xor    %eax,%eax
    17ac:	e8 4f fe ff ff       	call   1600 <f_getus>
    17b1:	31 c0                	xor    %eax,%eax
    17b3:	e8 68 fc ff ff       	call   1420 <f_getshort_long>
    17b8:	31 c0                	xor    %eax,%eax
    17ba:	e8 81 ff ff ff       	call   1740 <f_getui64>
    17bf:	31 c0                	xor    %eax,%eax
    17c1:	e8 6a fb ff ff       	call   1330 <f_geti_long>
    17c6:	31 c0                	xor    %eax,%eax
    17c8:	e8 e3 fc ff ff       	call   14b0 <f_getl_long>
    17cd:	31 c0                	xor    %eax,%eax
    17cf:	e8 5c fb ff ff       	call   1330 <f_geti_long>
    17d4:	31 c0                	xor    %eax,%eax
    17d6:	e8 55 fe ff ff       	call   1630 <f_getui>
    17db:	31 c0                	xor    %eax,%eax
    17dd:	e8 5e ff ff ff       	call   1740 <f_getui64>
    17e2:	31 c0                	xor    %eax,%eax
    17e4:	e8 47 fe ff ff       	call   1630 <f_getui>
    17e9:	31 c0                	xor    %eax,%eax
    17eb:	e8 40 fe ff ff       	call   1630 <f_getui>
    17f0:	31 c0                	xor    %eax,%eax
    17f2:	e8 39 fe ff ff       	call   1630 <f_getui>
    17f7:	31 c0                	xor    %eax,%eax
    17f9:	e8 32 fe ff ff       	call   1630 <f_getui>
    17fe:	31 c0                	xor    %eax,%eax
    1800:	e8 2b fe ff ff       	call   1630 <f_getui>
    1805:	31 c0                	xor    %eax,%eax
    1807:	e8 24 fe ff ff       	call   1630 <f_getui>
    180c:	31 c0                	xor    %eax,%eax
    180e:	e8 1d fe ff ff       	call   1630 <f_getui>
    1813:	31 c0                	xor    %eax,%eax
    1815:	e8 16 fe ff ff       	call   1630 <f_getui>
    181a:	31 c0                	xor    %eax,%eax
    181c:	e8 0f fe ff ff       	call   1630 <f_getui>
    1821:	31 c0                	xor    %eax,%eax
    1823:	e8 08 fe ff ff       	call   1630 <f_getui>
    1828:	31 c0                	xor    %eax,%eax
    182a:	e8 01 fe ff ff       	call   1630 <f_getui>
    182f:	31 c0                	xor    %eax,%eax
    1831:	e8 fa fd ff ff       	call   1630 <f_getui>
    1836:	31 c0                	xor    %eax,%eax
    1838:	e8 f3 fd ff ff       	call   1630 <f_getui>
    183d:	31 c0                	xor    %eax,%eax
    183f:	e8 ec fd ff ff       	call   1630 <f_getui>
    1844:	31 c0                	xor    %eax,%eax
    1846:	e8 e5 fd ff ff       	call   1630 <f_getui>
    184b:	31 c0                	xor    %eax,%eax
    184d:	e8 de fd ff ff       	call   1630 <f_getui>
    1852:	31 c0                	xor    %eax,%eax
    1854:	e8 d7 fd ff ff       	call   1630 <f_getui>
    1859:	31 c0                	xor    %eax,%eax
    185b:	e8 d0 fd ff ff       	call   1630 <f_getui>
    1860:	31 c0                	xor    %eax,%eax
    1862:	e8 c9 fd ff ff       	call   1630 <f_getui>
    1867:	31 c0                	xor    %eax,%eax
    1869:	e8 c2 fd ff ff       	call   1630 <f_getui>
    186e:	31 c0                	xor    %eax,%eax
    1870:	e8 bb fd ff ff       	call   1630 <f_getui>
    1875:	31 c0                	xor    %eax,%eax
    1877:	e8 b4 fd ff ff       	call   1630 <f_getui>
    187c:	31 c0                	xor    %eax,%eax
    187e:	e8 ad fd ff ff       	call   1630 <f_getui>
    1883:	31 c0                	xor    %eax,%eax
    1885:	e8 a6 fd ff ff       	call   1630 <f_getui>
    188a:	31 c0                	xor    %eax,%eax
    188c:	e8 9f fd ff ff       	call   1630 <f_getui>
    1891:	31 c0                	xor    %eax,%eax
    1893:	e8 98 fd ff ff       	call   1630 <f_getui>
    1898:	31 c0                	xor    %eax,%eax
    189a:	e8 91 fd ff ff       	call   1630 <f_getui>
    189f:	31 c0                	xor    %eax,%eax
    18a1:	e8 8a fd ff ff       	call   1630 <f_getui>
    18a6:	31 c0                	xor    %eax,%eax
    18a8:	e8 83 fd ff ff       	call   1630 <f_getui>
    18ad:	31 c0                	xor    %eax,%eax
    18af:	e8 7c fd ff ff       	call   1630 <f_getui>
    18b4:	31 c0                	xor    %eax,%eax
    18b6:	e8 75 fd ff ff       	call   1630 <f_getui>
    18bb:	31 c0                	xor    %eax,%eax
    18bd:	e8 6e fd ff ff       	call   1630 <f_getui>
    18c2:	31 c0                	xor    %eax,%eax
    18c4:	e8 67 fd ff ff       	call   1630 <f_getui>
    18c9:	31 c0                	xor    %eax,%eax
    18cb:	e8 60 fd ff ff       	call   1630 <f_getui>
    18d0:	31 c0                	xor    %eax,%eax
    18d2:	e8 59 fd ff ff       	call   1630 <f_getui>
    18d7:	31 c0                	xor    %eax,%eax
    18d9:	e8 52 fd ff ff       	call   1630 <f_getui>
    18de:	31 c0                	xor    %eax,%eax
    18e0:	e8 4b fd ff ff       	call   1630 <f_getui>
    18e5:	31 c0                	xor    %eax,%eax
    18e7:	e8 44 fd ff ff       	call   1630 <f_getui>
    18ec:	31 c0                	xor    %eax,%eax
    18ee:	e8 3d fd ff ff       	call   1630 <f_getui>
    18f3:	31 c0                	xor    %eax,%eax
    18f5:	e8 36 fd ff ff       	call   1630 <f_getui>
    18fa:	31 c0                	xor    %eax,%eax
    18fc:	e8 1f fb ff ff       	call   1420 <f_getshort_long>
    1901:	31 c0                	xor    %eax,%eax
    1903:	e8 28 fd ff ff       	call   1630 <f_getui>
    1908:	31 c0                	xor    %eax,%eax
    190a:	e8 21 fa ff ff       	call   1330 <f_geti_long>
    190f:	31 c0                	xor    %eax,%eax
    1911:	e8 0a fb ff ff       	call   1420 <f_getshort_long>
    1916:	31 c0                	xor    %eax,%eax
    1918:	e8 13 fd ff ff       	call   1630 <f_getui>
    191d:	31 c0                	xor    %eax,%eax
    191f:	e8 7c f9 ff ff       	call   12a0 <f_getc_long>
    1924:	31 c0                	xor    %eax,%eax
    1926:	e8 05 fd ff ff       	call   1630 <f_getui>
    192b:	31 c0                	xor    %eax,%eax
    192d:	e8 fe fc ff ff       	call   1630 <f_getui>
    1932:	81 fd 89 00 00 00    	cmp    $0x89,%ebp
    1938:	0f 84 a0 00 00 00    	je     19de <func_2.constprop.0.isra.0+0x26e>
    193e:	4d 85 e4             	test   %r12,%r12
    1941:	0f 84 97 04 00 00    	je     1dde <func_2.constprop.0.isra.0+0x66e>
    1947:	c7 03 00 00 00 00    	movl   $0x0,(%rbx)
    194d:	31 c0                	xor    %eax,%eax
    194f:	e8 dc fc ff ff       	call   1630 <f_getui>
    1954:	31 c0                	xor    %eax,%eax
    1956:	e8 d5 fc ff ff       	call   1630 <f_getui>
    195b:	31 c0                	xor    %eax,%eax
    195d:	e8 ce fc ff ff       	call   1630 <f_getui>
    1962:	31 c0                	xor    %eax,%eax
    1964:	e8 c7 fc ff ff       	call   1630 <f_getui>
    1969:	31 c0                	xor    %eax,%eax
    196b:	e8 c0 fc ff ff       	call   1630 <f_getui>
    1970:	31 c0                	xor    %eax,%eax
    1972:	e8 b9 fc ff ff       	call   1630 <f_getui>
    1977:	31 c0                	xor    %eax,%eax
    1979:	e8 b2 fc ff ff       	call   1630 <f_getui>
    197e:	31 c0                	xor    %eax,%eax
    1980:	e8 2b fb ff ff       	call   14b0 <f_getl_long>
    1985:	31 c0                	xor    %eax,%eax
    1987:	e8 a4 fc ff ff       	call   1630 <f_getui>
    198c:	31 c0                	xor    %eax,%eax
    198e:	e8 9d fc ff ff       	call   1630 <f_getui>
    1993:	31 c0                	xor    %eax,%eax
    1995:	e8 96 fc ff ff       	call   1630 <f_getui>
    199a:	31 c0                	xor    %eax,%eax
    199c:	e8 8f fc ff ff       	call   1630 <f_getui>
    19a1:	31 c0                	xor    %eax,%eax
    19a3:	e8 88 fc ff ff       	call   1630 <f_getui>
    19a8:	31 c0                	xor    %eax,%eax
    19aa:	e8 81 fc ff ff       	call   1630 <f_getui>
    19af:	31 c0                	xor    %eax,%eax
    19b1:	e8 7a fc ff ff       	call   1630 <f_getui>
    19b6:	31 c0                	xor    %eax,%eax
    19b8:	e8 73 fc ff ff       	call   1630 <f_getui>
    19bd:	31 c0                	xor    %eax,%eax
    19bf:	e8 5c fa ff ff       	call   1420 <f_getshort_long>
    19c4:	31 c0                	xor    %eax,%eax
    19c6:	e8 55 fa ff ff       	call   1420 <f_getshort_long>
    19cb:	31 c0                	xor    %eax,%eax
    19cd:	e8 4e fa ff ff       	call   1420 <f_getshort_long>
    19d2:	31 c0                	xor    %eax,%eax
    19d4:	e8 47 fa ff ff       	call   1420 <f_getshort_long>
    19d9:	e9 69 ff ff ff       	jmp    1947 <func_2.constprop.0.isra.0+0x1d7>
    19de:	c7 03 01 00 00 00    	movl   $0x1,(%rbx)
    19e4:	31 c0                	xor    %eax,%eax
    19e6:	e8 35 fa ff ff       	call   1420 <f_getshort_long>
    19eb:	89 c5                	mov    %eax,%ebp
    19ed:	31 c0                	xor    %eax,%eax
    19ef:	e8 3c fc ff ff       	call   1630 <f_getui>
    19f4:	31 c0                	xor    %eax,%eax
    19f6:	e8 35 fc ff ff       	call   1630 <f_getui>
    19fb:	31 c0                	xor    %eax,%eax
    19fd:	e8 2e fc ff ff       	call   1630 <f_getui>
    1a02:	31 c0                	xor    %eax,%eax
    1a04:	e8 27 fc ff ff       	call   1630 <f_getui>
    1a09:	31 c0                	xor    %eax,%eax
    1a0b:	e8 20 fc ff ff       	call   1630 <f_getui>
    1a10:	31 c0                	xor    %eax,%eax
    1a12:	e8 19 fc ff ff       	call   1630 <f_getui>
    1a17:	31 c0                	xor    %eax,%eax
    1a19:	e8 12 fc ff ff       	call   1630 <f_getui>
    1a1e:	31 c0                	xor    %eax,%eax
    1a20:	e8 0b fc ff ff       	call   1630 <f_getui>
    1a25:	31 c0                	xor    %eax,%eax
    1a27:	e8 04 fc ff ff       	call   1630 <f_getui>
    1a2c:	31 c0                	xor    %eax,%eax
    1a2e:	e8 fd f8 ff ff       	call   1330 <f_geti_long>
    1a33:	31 c0                	xor    %eax,%eax
    1a35:	e8 f6 fb ff ff       	call   1630 <f_getui>
    1a3a:	31 c0                	xor    %eax,%eax
    1a3c:	e8 ef f8 ff ff       	call   1330 <f_geti_long>
    1a41:	31 c0                	xor    %eax,%eax
    1a43:	e8 e8 f8 ff ff       	call   1330 <f_geti_long>
    1a48:	31 c0                	xor    %eax,%eax
    1a4a:	e8 e1 fb ff ff       	call   1630 <f_getui>
    1a4f:	31 c0                	xor    %eax,%eax
    1a51:	e8 da fb ff ff       	call   1630 <f_getui>
    1a56:	31 c0                	xor    %eax,%eax
    1a58:	e8 d3 fb ff ff       	call   1630 <f_getui>
    1a5d:	31 c0                	xor    %eax,%eax
    1a5f:	e8 cc fb ff ff       	call   1630 <f_getui>
    1a64:	31 c0                	xor    %eax,%eax
    1a66:	e8 c5 fb ff ff       	call   1630 <f_getui>
    1a6b:	31 c0                	xor    %eax,%eax
    1a6d:	e8 be fb ff ff       	call   1630 <f_getui>
    1a72:	31 c0                	xor    %eax,%eax
    1a74:	e8 b7 fb ff ff       	call   1630 <f_getui>
    1a79:	31 c0                	xor    %eax,%eax
    1a7b:	e8 b0 fb ff ff       	call   1630 <f_getui>
    1a80:	31 c0                	xor    %eax,%eax
    1a82:	e8 a9 fb ff ff       	call   1630 <f_getui>
    1a87:	31 c0                	xor    %eax,%eax
    1a89:	e8 a2 fb ff ff       	call   1630 <f_getui>
    1a8e:	31 c0                	xor    %eax,%eax
    1a90:	e8 9b fb ff ff       	call   1630 <f_getui>
    1a95:	31 c0                	xor    %eax,%eax
    1a97:	e8 94 fb ff ff       	call   1630 <f_getui>
    1a9c:	31 c0                	xor    %eax,%eax
    1a9e:	e8 8d fb ff ff       	call   1630 <f_getui>
    1aa3:	31 c0                	xor    %eax,%eax
    1aa5:	e8 86 fb ff ff       	call   1630 <f_getui>
    1aaa:	31 c0                	xor    %eax,%eax
    1aac:	e8 7f fb ff ff       	call   1630 <f_getui>
    1ab1:	31 c0                	xor    %eax,%eax
    1ab3:	e8 78 fb ff ff       	call   1630 <f_getui>
    1ab8:	31 c0                	xor    %eax,%eax
    1aba:	e8 71 fb ff ff       	call   1630 <f_getui>
    1abf:	31 c0                	xor    %eax,%eax
    1ac1:	e8 7a fc ff ff       	call   1740 <f_getui64>
    1ac6:	31 c0                	xor    %eax,%eax
    1ac8:	e8 63 f8 ff ff       	call   1330 <f_geti_long>
    1acd:	40 80 c5 01          	add    $0x1,%bpl
    1ad1:	74 1f                	je     1af2 <func_2.constprop.0.isra.0+0x382>
    1ad3:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1ad8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1adf:	00 00 
    1ae1:	0f 85 0d 04 00 00    	jne    1ef4 <func_2.constprop.0.isra.0+0x784>
    1ae7:	48 83 c4 18          	add    $0x18,%rsp
    1aeb:	5b                   	pop    %rbx
    1aec:	5d                   	pop    %rbp
    1aed:	41 5c                	pop    %r12
    1aef:	41 5d                	pop    %r13
    1af1:	c3                   	ret    
    1af2:	31 c0                	xor    %eax,%eax
    1af4:	41 bd 06 00 00 00    	mov    $0x6,%r13d
    1afa:	4c 8d 64 24 04       	lea    0x4(%rsp),%r12
    1aff:	e8 0c fc ff ff       	call   1710 <f_getul>
    1b04:	31 c0                	xor    %eax,%eax
    1b06:	e8 05 fc ff ff       	call   1710 <f_getul>
    1b0b:	31 c0                	xor    %eax,%eax
    1b0d:	e8 fe fb ff ff       	call   1710 <f_getul>
    1b12:	31 c0                	xor    %eax,%eax
    1b14:	e8 f7 fb ff ff       	call   1710 <f_getul>
    1b19:	31 c0                	xor    %eax,%eax
    1b1b:	e8 f0 fb ff ff       	call   1710 <f_getul>
    1b20:	31 c0                	xor    %eax,%eax
    1b22:	e8 e9 fb ff ff       	call   1710 <f_getul>
    1b27:	31 c0                	xor    %eax,%eax
    1b29:	e8 e2 fb ff ff       	call   1710 <f_getul>
    1b2e:	31 c0                	xor    %eax,%eax
    1b30:	e8 db fb ff ff       	call   1710 <f_getul>
    1b35:	31 c0                	xor    %eax,%eax
    1b37:	e8 d4 fb ff ff       	call   1710 <f_getul>
    1b3c:	31 c0                	xor    %eax,%eax
    1b3e:	e8 cd fb ff ff       	call   1710 <f_getul>
    1b43:	31 c0                	xor    %eax,%eax
    1b45:	e8 c6 fb ff ff       	call   1710 <f_getul>
    1b4a:	31 c0                	xor    %eax,%eax
    1b4c:	e8 bf fb ff ff       	call   1710 <f_getul>
    1b51:	31 c0                	xor    %eax,%eax
    1b53:	e8 b8 fb ff ff       	call   1710 <f_getul>
    1b58:	31 c0                	xor    %eax,%eax
    1b5a:	e8 b1 fb ff ff       	call   1710 <f_getul>
    1b5f:	31 c0                	xor    %eax,%eax
    1b61:	e8 aa fb ff ff       	call   1710 <f_getul>
    1b66:	31 c0                	xor    %eax,%eax
    1b68:	e8 a3 fb ff ff       	call   1710 <f_getul>
    1b6d:	31 c0                	xor    %eax,%eax
    1b6f:	e8 9c fb ff ff       	call   1710 <f_getul>
    1b74:	31 c0                	xor    %eax,%eax
    1b76:	e8 95 fb ff ff       	call   1710 <f_getul>
    1b7b:	31 c0                	xor    %eax,%eax
    1b7d:	e8 8e fb ff ff       	call   1710 <f_getul>
    1b82:	31 c0                	xor    %eax,%eax
    1b84:	e8 87 fb ff ff       	call   1710 <f_getul>
    1b89:	31 c0                	xor    %eax,%eax
    1b8b:	e8 80 fb ff ff       	call   1710 <f_getul>
    1b90:	31 c0                	xor    %eax,%eax
    1b92:	e8 79 fb ff ff       	call   1710 <f_getul>
    1b97:	31 c0                	xor    %eax,%eax
    1b99:	e8 72 fb ff ff       	call   1710 <f_getul>
    1b9e:	31 c0                	xor    %eax,%eax
    1ba0:	e8 6b fb ff ff       	call   1710 <f_getul>
    1ba5:	31 c0                	xor    %eax,%eax
    1ba7:	e8 64 fb ff ff       	call   1710 <f_getul>
    1bac:	31 c0                	xor    %eax,%eax
    1bae:	e8 5d fb ff ff       	call   1710 <f_getul>
    1bb3:	31 c0                	xor    %eax,%eax
    1bb5:	e8 56 fb ff ff       	call   1710 <f_getul>
    1bba:	31 c0                	xor    %eax,%eax
    1bbc:	e8 4f fb ff ff       	call   1710 <f_getul>
    1bc1:	31 c0                	xor    %eax,%eax
    1bc3:	e8 48 fb ff ff       	call   1710 <f_getul>
    1bc8:	31 c0                	xor    %eax,%eax
    1bca:	e8 41 fb ff ff       	call   1710 <f_getul>
    1bcf:	31 c0                	xor    %eax,%eax
    1bd1:	e8 3a fb ff ff       	call   1710 <f_getul>
    1bd6:	31 c0                	xor    %eax,%eax
    1bd8:	e8 33 fb ff ff       	call   1710 <f_getul>
    1bdd:	31 c0                	xor    %eax,%eax
    1bdf:	e8 2c fb ff ff       	call   1710 <f_getul>
    1be4:	31 c0                	xor    %eax,%eax
    1be6:	e8 25 fb ff ff       	call   1710 <f_getul>
    1beb:	31 c0                	xor    %eax,%eax
    1bed:	e8 1e fb ff ff       	call   1710 <f_getul>
    1bf2:	31 c0                	xor    %eax,%eax
    1bf4:	e8 17 fb ff ff       	call   1710 <f_getul>
    1bf9:	31 c0                	xor    %eax,%eax
    1bfb:	e8 10 fb ff ff       	call   1710 <f_getul>
    1c00:	31 c0                	xor    %eax,%eax
    1c02:	e8 09 fb ff ff       	call   1710 <f_getul>
    1c07:	31 c0                	xor    %eax,%eax
    1c09:	e8 02 fb ff ff       	call   1710 <f_getul>
    1c0e:	31 c0                	xor    %eax,%eax
    1c10:	e8 fb fa ff ff       	call   1710 <f_getul>
    1c15:	31 c0                	xor    %eax,%eax
    1c17:	e8 f4 fa ff ff       	call   1710 <f_getul>
    1c1c:	31 c0                	xor    %eax,%eax
    1c1e:	e8 ed fa ff ff       	call   1710 <f_getul>
    1c23:	31 c0                	xor    %eax,%eax
    1c25:	e8 e6 fa ff ff       	call   1710 <f_getul>
    1c2a:	31 c0                	xor    %eax,%eax
    1c2c:	e8 df fa ff ff       	call   1710 <f_getul>
    1c31:	31 c0                	xor    %eax,%eax
    1c33:	e8 d8 fa ff ff       	call   1710 <f_getul>
    1c38:	31 c0                	xor    %eax,%eax
    1c3a:	e8 d1 fa ff ff       	call   1710 <f_getul>
    1c3f:	31 c0                	xor    %eax,%eax
    1c41:	e8 ca fa ff ff       	call   1710 <f_getul>
    1c46:	31 c0                	xor    %eax,%eax
    1c48:	e8 c3 fa ff ff       	call   1710 <f_getul>
    1c4d:	31 c0                	xor    %eax,%eax
    1c4f:	e8 bc fa ff ff       	call   1710 <f_getul>
    1c54:	31 c0                	xor    %eax,%eax
    1c56:	e8 b5 fa ff ff       	call   1710 <f_getul>
    1c5b:	31 c0                	xor    %eax,%eax
    1c5d:	e8 ae fa ff ff       	call   1710 <f_getul>
    1c62:	31 c0                	xor    %eax,%eax
    1c64:	e8 a7 fa ff ff       	call   1710 <f_getul>
    1c69:	31 c0                	xor    %eax,%eax
    1c6b:	e8 a0 fa ff ff       	call   1710 <f_getul>
    1c70:	31 c0                	xor    %eax,%eax
    1c72:	e8 99 fa ff ff       	call   1710 <f_getul>
    1c77:	31 c0                	xor    %eax,%eax
    1c79:	e8 92 fa ff ff       	call   1710 <f_getul>
    1c7e:	31 c0                	xor    %eax,%eax
    1c80:	e8 8b fa ff ff       	call   1710 <f_getul>
    1c85:	31 c0                	xor    %eax,%eax
    1c87:	e8 84 fa ff ff       	call   1710 <f_getul>
    1c8c:	31 c0                	xor    %eax,%eax
    1c8e:	e8 7d fa ff ff       	call   1710 <f_getul>
    1c93:	31 c0                	xor    %eax,%eax
    1c95:	e8 76 fa ff ff       	call   1710 <f_getul>
    1c9a:	31 c0                	xor    %eax,%eax
    1c9c:	e8 6f fa ff ff       	call   1710 <f_getul>
    1ca1:	31 c0                	xor    %eax,%eax
    1ca3:	e8 68 fa ff ff       	call   1710 <f_getul>
    1ca8:	31 c0                	xor    %eax,%eax
    1caa:	e8 61 fa ff ff       	call   1710 <f_getul>
    1caf:	31 c0                	xor    %eax,%eax
    1cb1:	e8 5a fa ff ff       	call   1710 <f_getul>
    1cb6:	31 c0                	xor    %eax,%eax
    1cb8:	e8 53 fa ff ff       	call   1710 <f_getul>
    1cbd:	31 c0                	xor    %eax,%eax
    1cbf:	e8 4c fa ff ff       	call   1710 <f_getul>
    1cc4:	31 c0                	xor    %eax,%eax
    1cc6:	e8 45 fa ff ff       	call   1710 <f_getul>
    1ccb:	31 c0                	xor    %eax,%eax
    1ccd:	e8 3e fa ff ff       	call   1710 <f_getul>
    1cd2:	31 c0                	xor    %eax,%eax
    1cd4:	e8 37 fa ff ff       	call   1710 <f_getul>
    1cd9:	31 c0                	xor    %eax,%eax
    1cdb:	e8 30 fa ff ff       	call   1710 <f_getul>
    1ce0:	31 c0                	xor    %eax,%eax
    1ce2:	e8 29 fa ff ff       	call   1710 <f_getul>
    1ce7:	31 c0                	xor    %eax,%eax
    1ce9:	e8 22 fa ff ff       	call   1710 <f_getul>
    1cee:	31 c0                	xor    %eax,%eax
    1cf0:	e8 1b fa ff ff       	call   1710 <f_getul>
    1cf5:	31 c0                	xor    %eax,%eax
    1cf7:	e8 14 fa ff ff       	call   1710 <f_getul>
    1cfc:	31 c0                	xor    %eax,%eax
    1cfe:	e8 0d fa ff ff       	call   1710 <f_getul>
    1d03:	31 c0                	xor    %eax,%eax
    1d05:	e8 06 fa ff ff       	call   1710 <f_getul>
    1d0a:	31 c0                	xor    %eax,%eax
    1d0c:	e8 ff f9 ff ff       	call   1710 <f_getul>
    1d11:	31 c0                	xor    %eax,%eax
    1d13:	e8 f8 f9 ff ff       	call   1710 <f_getul>
    1d18:	31 c0                	xor    %eax,%eax
    1d1a:	e8 f1 f9 ff ff       	call   1710 <f_getul>
    1d1f:	31 c0                	xor    %eax,%eax
    1d21:	e8 ea f9 ff ff       	call   1710 <f_getul>
    1d26:	31 c0                	xor    %eax,%eax
    1d28:	e8 e3 f9 ff ff       	call   1710 <f_getul>
    1d2d:	31 c0                	xor    %eax,%eax
    1d2f:	e8 dc f9 ff ff       	call   1710 <f_getul>
    1d34:	31 c0                	xor    %eax,%eax
    1d36:	e8 d5 f9 ff ff       	call   1710 <f_getul>
    1d3b:	31 c0                	xor    %eax,%eax
    1d3d:	e8 ce f9 ff ff       	call   1710 <f_getul>
    1d42:	31 c0                	xor    %eax,%eax
    1d44:	e8 c7 f9 ff ff       	call   1710 <f_getul>
    1d49:	31 c0                	xor    %eax,%eax
    1d4b:	e8 c0 f9 ff ff       	call   1710 <f_getul>
    1d50:	31 c0                	xor    %eax,%eax
    1d52:	e8 b9 f9 ff ff       	call   1710 <f_getul>
    1d57:	31 c0                	xor    %eax,%eax
    1d59:	e8 d2 f5 ff ff       	call   1330 <f_geti_long>
    1d5e:	89 c5                	mov    %eax,%ebp
    1d60:	31 c0                	xor    %eax,%eax
    1d62:	83 3b 00             	cmpl   $0x0,(%rbx)
    1d65:	0f 84 32 01 00 00    	je     1e9d <func_2.constprop.0.isra.0+0x72d>
    1d6b:	e8 c0 f8 ff ff       	call   1630 <f_getui>
    1d70:	89 2b                	mov    %ebp,(%rbx)
    1d72:	bd 06 00 00 00       	mov    $0x6,%ebp
    1d77:	4c 89 e7             	mov    %r12,%rdi
    1d7a:	e8 e1 f8 ff ff       	call   1660 <func_33.constprop.0>
    1d7f:	66 83 ed 01          	sub    $0x1,%bp
    1d83:	75 f2                	jne    1d77 <func_2.constprop.0.isra.0+0x607>
    1d85:	bd 06 00 00 00       	mov    $0x6,%ebp
    1d8a:	eb 1d                	jmp    1da9 <func_2.constprop.0.isra.0+0x639>
    1d8c:	e8 9f f8 ff ff       	call   1630 <f_getui>
    1d91:	31 c0                	xor    %eax,%eax
    1d93:	e8 a8 f9 ff ff       	call   1740 <f_getui64>
    1d98:	31 c0                	xor    %eax,%eax
    1d9a:	e8 01 f5 ff ff       	call   12a0 <f_getc_long>
    1d9f:	83 3b 00             	cmpl   $0x0,(%rbx)
    1da2:	75 2b                	jne    1dcf <func_2.constprop.0.isra.0+0x65f>
    1da4:	83 ed 01             	sub    $0x1,%ebp
    1da7:	74 26                	je     1dcf <func_2.constprop.0.isra.0+0x65f>
    1da9:	31 c0                	xor    %eax,%eax
    1dab:	e8 80 f5 ff ff       	call   1330 <f_geti_long>
    1db0:	31 c0                	xor    %eax,%eax
    1db2:	e8 79 f5 ff ff       	call   1330 <f_geti_long>
    1db7:	31 c0                	xor    %eax,%eax
    1db9:	e8 72 f8 ff ff       	call   1630 <f_getui>
    1dbe:	31 c0                	xor    %eax,%eax
    1dc0:	83 3b 00             	cmpl   $0x0,(%rbx)
    1dc3:	75 c7                	jne    1d8c <func_2.constprop.0.isra.0+0x61c>
    1dc5:	e8 76 f9 ff ff       	call   1740 <f_getui64>
    1dca:	48 85 c0             	test   %rax,%rax
    1dcd:	74 d5                	je     1da4 <func_2.constprop.0.isra.0+0x634>
    1dcf:	66 41 83 ed 01       	sub    $0x1,%r13w
    1dd4:	75 81                	jne    1d57 <func_2.constprop.0.isra.0+0x5e7>
    1dd6:	83 33 01             	xorl   $0x1,(%rbx)
    1dd9:	e9 f5 fc ff ff       	jmp    1ad3 <func_2.constprop.0.isra.0+0x363>
    1dde:	31 d2                	xor    %edx,%edx
    1de0:	31 c0                	xor    %eax,%eax
    1de2:	89 13                	mov    %edx,(%rbx)
    1de4:	e8 47 f8 ff ff       	call   1630 <f_getui>
    1de9:	31 c0                	xor    %eax,%eax
    1deb:	e8 40 f8 ff ff       	call   1630 <f_getui>
    1df0:	31 c0                	xor    %eax,%eax
    1df2:	e8 39 f8 ff ff       	call   1630 <f_getui>
    1df7:	31 c0                	xor    %eax,%eax
    1df9:	e8 32 f8 ff ff       	call   1630 <f_getui>
    1dfe:	31 c0                	xor    %eax,%eax
    1e00:	e8 2b f8 ff ff       	call   1630 <f_getui>
    1e05:	31 c0                	xor    %eax,%eax
    1e07:	e8 24 f8 ff ff       	call   1630 <f_getui>
    1e0c:	31 c0                	xor    %eax,%eax
    1e0e:	e8 1d f8 ff ff       	call   1630 <f_getui>
    1e13:	31 c0                	xor    %eax,%eax
    1e15:	e8 96 f6 ff ff       	call   14b0 <f_getl_long>
    1e1a:	31 c0                	xor    %eax,%eax
    1e1c:	e8 0f f8 ff ff       	call   1630 <f_getui>
    1e21:	31 c0                	xor    %eax,%eax
    1e23:	e8 08 f8 ff ff       	call   1630 <f_getui>
    1e28:	31 c0                	xor    %eax,%eax
    1e2a:	e8 01 f8 ff ff       	call   1630 <f_getui>
    1e2f:	31 c0                	xor    %eax,%eax
    1e31:	e8 fa f7 ff ff       	call   1630 <f_getui>
    1e36:	31 c0                	xor    %eax,%eax
    1e38:	e8 f3 f7 ff ff       	call   1630 <f_getui>
    1e3d:	31 c0                	xor    %eax,%eax
    1e3f:	e8 ec f7 ff ff       	call   1630 <f_getui>
    1e44:	31 c0                	xor    %eax,%eax
    1e46:	e8 e5 f7 ff ff       	call   1630 <f_getui>
    1e4b:	31 c0                	xor    %eax,%eax
    1e4d:	e8 de f7 ff ff       	call   1630 <f_getui>
    1e52:	31 c0                	xor    %eax,%eax
    1e54:	e8 c7 f5 ff ff       	call   1420 <f_getshort_long>
    1e59:	31 c0                	xor    %eax,%eax
    1e5b:	e8 c0 f5 ff ff       	call   1420 <f_getshort_long>
    1e60:	31 c0                	xor    %eax,%eax
    1e62:	e8 b9 f5 ff ff       	call   1420 <f_getshort_long>
    1e67:	31 c0                	xor    %eax,%eax
    1e69:	e8 b2 f5 ff ff       	call   1420 <f_getshort_long>
    1e6e:	31 c0                	xor    %eax,%eax
    1e70:	e8 bb f7 ff ff       	call   1630 <f_getui>
    1e75:	31 c0                	xor    %eax,%eax
    1e77:	e8 b4 f7 ff ff       	call   1630 <f_getui>
    1e7c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1e81:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1e88:	00 00 
    1e8a:	75 68                	jne    1ef4 <func_2.constprop.0.isra.0+0x784>
    1e8c:	48 83 c4 18          	add    $0x18,%rsp
    1e90:	31 c0                	xor    %eax,%eax
    1e92:	5b                   	pop    %rbx
    1e93:	5d                   	pop    %rbp
    1e94:	41 5c                	pop    %r12
    1e96:	41 5d                	pop    %r13
    1e98:	e9 93 f7 ff ff       	jmp    1630 <f_getui>
    1e9d:	e8 5e f7 ff ff       	call   1600 <f_getus>
    1ea2:	bd 06 00 00 00       	mov    $0x6,%ebp
    1ea7:	31 c0                	xor    %eax,%eax
    1ea9:	e8 72 f5 ff ff       	call   1420 <f_getshort_long>
    1eae:	31 c0                	xor    %eax,%eax
    1eb0:	e8 6b f5 ff ff       	call   1420 <f_getshort_long>
    1eb5:	31 c0                	xor    %eax,%eax
    1eb7:	e8 64 f5 ff ff       	call   1420 <f_getshort_long>
    1ebc:	31 c0                	xor    %eax,%eax
    1ebe:	e8 5d f5 ff ff       	call   1420 <f_getshort_long>
    1ec3:	31 c0                	xor    %eax,%eax
    1ec5:	e8 56 f5 ff ff       	call   1420 <f_getshort_long>
    1eca:	31 c0                	xor    %eax,%eax
    1ecc:	e8 4f f5 ff ff       	call   1420 <f_getshort_long>
    1ed1:	31 c0                	xor    %eax,%eax
    1ed3:	e8 48 f5 ff ff       	call   1420 <f_getshort_long>
    1ed8:	31 c0                	xor    %eax,%eax
    1eda:	e8 41 f5 ff ff       	call   1420 <f_getshort_long>
    1edf:	31 c0                	xor    %eax,%eax
    1ee1:	e8 4a f7 ff ff       	call   1630 <f_getui>
    1ee6:	31 c0                	xor    %eax,%eax
    1ee8:	89 03                	mov    %eax,(%rbx)
    1eea:	83 ed 01             	sub    $0x1,%ebp
    1eed:	75 b8                	jne    1ea7 <func_2.constprop.0.isra.0+0x737>
    1eef:	e9 91 fe ff ff       	jmp    1d85 <func_2.constprop.0.isra.0+0x615>
    1ef4:	e8 67 f1 ff ff       	call   1060 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001efc <_fini>:
    1efc:	f3 0f 1e fa          	endbr64 
    1f00:	48 83 ec 08          	sub    $0x8,%rsp
    1f04:	48 83 c4 08          	add    $0x8,%rsp
    1f08:	c3                   	ret    
