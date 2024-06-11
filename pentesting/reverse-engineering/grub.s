
grub.efi:     file format pei-x86-64


Disassembly of section .text:

0000000000001000 <.text>:
    1000:	48 89 0d 29 e8 00 00 	mov    %rcx,0xe829(%rip)        # 0xf830
    1007:	48 89 15 1a e8 00 00 	mov    %rdx,0xe81a(%rip)        # 0xf828
    100e:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1012:	e8 5f 81 00 00       	call   0x9176
    1017:	41 54                	push   %r12
    1019:	55                   	push   %rbp
    101a:	31 ed                	xor    %ebp,%ebp
    101c:	53                   	push   %rbx
    101d:	89 e8                	mov    %ebp,%eax
    101f:	0f a2                	cpuid  
    1021:	0f 31                	rdtsc  
    1023:	48 c1 e2 20          	shl    $0x20,%rdx
    1027:	89 c0                	mov    %eax,%eax
    1029:	be e8 03 00 00       	mov    $0x3e8,%esi
    102e:	48 09 c2             	or     %rax,%rdx
    1031:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    1038:	00 00 00 
    103b:	49 89 d4             	mov    %rdx,%r12
    103e:	48 8b 40 60          	mov    0x60(%rax),%rax
    1042:	48 8b b8 f8 00 00 00 	mov    0xf8(%rax),%rdi
    1049:	48 b8 82 11 00 00 00 	movabs $0x1182,%rax
    1050:	00 00 00 
    1053:	ff d0                	call   *%rax
    1055:	89 e8                	mov    %ebp,%eax
    1057:	0f a2                	cpuid  
    1059:	0f 31                	rdtsc  
    105b:	89 c0                	mov    %eax,%eax
    105d:	48 c1 e2 20          	shl    $0x20,%rdx
    1061:	bf 01 00 00 00       	mov    $0x1,%edi
    1066:	48 09 c2             	or     %rax,%rdx
    1069:	48 c1 e7 20          	shl    $0x20,%rdi
    106d:	48 b8 e8 9a 00 00 00 	movabs $0x9ae8,%rax
    1074:	00 00 00 
    1077:	48 89 d6             	mov    %rdx,%rsi
    107a:	31 d2                	xor    %edx,%edx
    107c:	4c 29 e6             	sub    %r12,%rsi
    107f:	ff d0                	call   *%rax
    1081:	5b                   	pop    %rbx
    1082:	5d                   	pop    %rbp
    1083:	a3 00 f8 00 00 00 00 	movabs %eax,0xf800
    108a:	00 00 
    108c:	41 5c                	pop    %r12
    108e:	b8 01 00 00 00       	mov    $0x1,%eax
    1093:	c3                   	ret    
    1094:	53                   	push   %rbx
    1095:	89 fa                	mov    %edi,%edx
    1097:	41 89 fa             	mov    %edi,%r10d
    109a:	ed                   	in     (%dx),%eax
    109b:	25 ff ff ff 00       	and    $0xffffff,%eax
    10a0:	0f b7 f6             	movzwl %si,%esi
    10a3:	41 89 c1             	mov    %eax,%r9d
    10a6:	8d 3c 06             	lea    (%rsi,%rax,1),%edi
    10a9:	31 c0                	xor    %eax,%eax
    10ab:	0f a2                	cpuid  
    10ad:	0f 31                	rdtsc  
    10af:	48 c1 e2 20          	shl    $0x20,%rdx
    10b3:	89 c0                	mov    %eax,%eax
    10b5:	45 31 c0             	xor    %r8d,%r8d
    10b8:	48 89 d6             	mov    %rdx,%rsi
    10bb:	48 09 c6             	or     %rax,%rsi
    10be:	44 89 d2             	mov    %r10d,%edx
    10c1:	ed                   	in     (%dx),%eax
    10c2:	25 ff ff ff 00       	and    $0xffffff,%eax
    10c7:	41 39 c1             	cmp    %eax,%r9d
    10ca:	76 05                	jbe    0x10d1
    10cc:	0d 00 00 00 01       	or     $0x1000000,%eax
    10d1:	41 ff c0             	inc    %r8d
    10d4:	39 f8                	cmp    %edi,%eax
    10d6:	72 17                	jb     0x10ef
    10d8:	31 c0                	xor    %eax,%eax
    10da:	0f a2                	cpuid  
    10dc:	0f 31                	rdtsc  
    10de:	89 c0                	mov    %eax,%eax
    10e0:	48 c1 e2 20          	shl    $0x20,%rdx
    10e4:	48 09 c2             	or     %rax,%rdx
    10e7:	48 89 d0             	mov    %rdx,%rax
    10ea:	48 29 f0             	sub    %rsi,%rax
    10ed:	eb 25                	jmp    0x1114
    10ef:	44 89 c0             	mov    %r8d,%eax
    10f2:	25 ff ff ff 00       	and    $0xffffff,%eax
    10f7:	75 c5                	jne    0x10be
    10f9:	0f a2                	cpuid  
    10fb:	0f 31                	rdtsc  
    10fd:	48 c1 e2 20          	shl    $0x20,%rdx
    1101:	89 c0                	mov    %eax,%eax
    1103:	48 09 c2             	or     %rax,%rdx
    1106:	48 29 f2             	sub    %rsi,%rdx
    1109:	48 81 fa 40 4b 4c 00 	cmp    $0x4c4b40,%rdx
    1110:	76 ac                	jbe    0x10be
    1112:	31 c0                	xor    %eax,%eax
    1114:	5b                   	pop    %rbx
    1115:	c3                   	ret    
    1116:	51                   	push   %rcx
    1117:	48 b8 72 53 00 00 00 	movabs $0x5372,%rax
    111e:	00 00 00 
    1121:	ff d0                	call   *%rax
    1123:	48 85 c0             	test   %rax,%rax
    1126:	75 04                	jne    0x112c
    1128:	31 c0                	xor    %eax,%eax
    112a:	eb 49                	jmp    0x1175
    112c:	8b 78 4c             	mov    0x4c(%rax),%edi
    112f:	66 85 ff             	test   %di,%di
    1132:	74 f4                	je     0x1128
    1134:	be fc 0d 00 00       	mov    $0xdfc,%esi
    1139:	0f b7 ff             	movzwl %di,%edi
    113c:	48 b8 94 10 00 00 00 	movabs $0x1094,%rax
    1143:	00 00 00 
    1146:	ff d0                	call   *%rax
    1148:	48 89 c6             	mov    %rax,%rsi
    114b:	48 85 c0             	test   %rax,%rax
    114e:	74 d8                	je     0x1128
    1150:	bf 01 00 00 00       	mov    $0x1,%edi
    1155:	31 d2                	xor    %edx,%edx
    1157:	48 b8 e8 9a 00 00 00 	movabs $0x9ae8,%rax
    115e:	00 00 00 
    1161:	48 c1 e7 20          	shl    $0x20,%rdi
    1165:	ff d0                	call   *%rax
    1167:	a3 00 f8 00 00 00 00 	movabs %eax,0xf800
    116e:	00 00 
    1170:	b8 01 00 00 00       	mov    $0x1,%eax
    1175:	5a                   	pop    %rdx
    1176:	c3                   	ret    
    1177:	48 83 ec 28          	sub    $0x28,%rsp
    117b:	ff d7                	call   *%rdi
    117d:	48 83 c4 28          	add    $0x28,%rsp
    1181:	c3                   	ret    
    1182:	48 83 ec 28          	sub    $0x28,%rsp
    1186:	48 89 f1             	mov    %rsi,%rcx
    1189:	ff d7                	call   *%rdi
    118b:	48 83 c4 28          	add    $0x28,%rsp
    118f:	c3                   	ret    
    1190:	48 83 ec 28          	sub    $0x28,%rsp
    1194:	48 89 f1             	mov    %rsi,%rcx
    1197:	ff d7                	call   *%rdi
    1199:	48 83 c4 28          	add    $0x28,%rsp
    119d:	c3                   	ret    
    119e:	48 83 ec 28          	sub    $0x28,%rsp
    11a2:	49 89 c8             	mov    %rcx,%r8
    11a5:	48 89 f1             	mov    %rsi,%rcx
    11a8:	ff d7                	call   *%rdi
    11aa:	48 83 c4 28          	add    $0x28,%rsp
    11ae:	c3                   	ret    
    11af:	48 83 ec 28          	sub    $0x28,%rsp
    11b3:	4d 89 c1             	mov    %r8,%r9
    11b6:	49 89 c8             	mov    %rcx,%r8
    11b9:	48 89 f1             	mov    %rsi,%rcx
    11bc:	ff d7                	call   *%rdi
    11be:	48 83 c4 28          	add    $0x28,%rsp
    11c2:	c3                   	ret    
    11c3:	48 83 ec 28          	sub    $0x28,%rsp
    11c7:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
    11cc:	4d 89 c1             	mov    %r8,%r9
    11cf:	49 89 c8             	mov    %rcx,%r8
    11d2:	48 89 f1             	mov    %rsi,%rcx
    11d5:	ff d7                	call   *%rdi
    11d7:	48 83 c4 28          	add    $0x28,%rsp
    11db:	c3                   	ret    
    11dc:	48 83 ec 38          	sub    $0x38,%rsp
    11e0:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
    11e5:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    11ea:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
    11ef:	4d 89 c1             	mov    %r8,%r9
    11f2:	49 89 c8             	mov    %rcx,%r8
    11f5:	48 89 f1             	mov    %rsi,%rcx
    11f8:	ff d7                	call   *%rdi
    11fa:	48 83 c4 38          	add    $0x38,%rsp
    11fe:	c3                   	ret    
    11ff:	48 83 ec 58          	sub    $0x58,%rsp
    1203:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1208:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    120d:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
    1212:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1217:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
    121c:	4d 89 c1             	mov    %r8,%r9
    121f:	49 89 c8             	mov    %rcx,%r8
    1222:	48 89 f1             	mov    %rsi,%rcx
    1225:	ff d7                	call   *%rdi
    1227:	48 83 c4 58          	add    $0x58,%rsp
    122b:	c3                   	ret    
    122c:	48 83 ec 58          	sub    $0x58,%rsp
    1230:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
    1237:	00 
    1238:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    123d:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
    1242:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    1247:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
    124c:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    1251:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1256:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    125b:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
    1260:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1265:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
    126a:	4d 89 c1             	mov    %r8,%r9
    126d:	49 89 c8             	mov    %rcx,%r8
    1270:	48 89 f1             	mov    %rsi,%rcx
    1273:	ff d7                	call   *%rdi
    1275:	48 83 c4 58          	add    $0x58,%rsp
    1279:	c3                   	ret    
    127a:	50                   	push   %rax
    127b:	48 b8 42 3e 00 00 00 	movabs $0x3e42,%rax
    1282:	00 00 00 
    1285:	ff d0                	call   *%rax
    1287:	5a                   	pop    %rdx
    1288:	48 b8 e2 16 00 00 00 	movabs $0x16e2,%rax
    128f:	00 00 00 
    1292:	ff e0                	jmp    *%rax
    1294:	40 f6 c7 01          	test   $0x1,%dil
    1298:	74 23                	je     0x12bd
    129a:	48 b8 ce 3f 00 00 00 	movabs $0x3fce,%rax
    12a1:	00 00 00 
    12a4:	53                   	push   %rbx
    12a5:	89 fb                	mov    %edi,%ebx
    12a7:	ff d0                	call   *%rax
    12a9:	80 e3 04             	and    $0x4,%bl
    12ac:	75 0d                	jne    0x12bb
    12ae:	48 b8 67 47 00 00 00 	movabs $0x4767,%rax
    12b5:	00 00 00 
    12b8:	5b                   	pop    %rbx
    12b9:	ff e0                	jmp    *%rax
    12bb:	5b                   	pop    %rbx
    12bc:	c3                   	ret    
    12bd:	c3                   	ret    
    12be:	b8 40 00 00 00       	mov    $0x40,%eax
    12c3:	51                   	push   %rcx
    12c4:	48 39 c7             	cmp    %rax,%rdi
    12c7:	48 0f 42 f8          	cmovb  %rax,%rdi
    12cb:	48 8d 44 37 ff       	lea    -0x1(%rdi,%rsi,1),%rax
    12d0:	48 89 fe             	mov    %rdi,%rsi
    12d3:	48 f7 de             	neg    %rsi
    12d6:	48 21 c6             	and    %rax,%rsi
    12d9:	48 b8 62 59 00 00 00 	movabs $0x5962,%rax
    12e0:	00 00 00 
    12e3:	ff d0                	call   *%rax
    12e5:	48 89 c1             	mov    %rax,%rcx
    12e8:	48 c1 e9 20          	shr    $0x20,%rcx
    12ec:	74 1f                	je     0x130d
    12ee:	48 be 38 c2 00 00 00 	movabs $0xc238,%rsi
    12f5:	00 00 00 
    12f8:	bf 26 00 00 00       	mov    $0x26,%edi
    12fd:	31 c0                	xor    %eax,%eax
    12ff:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    1306:	00 00 00 
    1309:	ff d2                	call   *%rdx
    130b:	31 c0                	xor    %eax,%eax
    130d:	5a                   	pop    %rdx
    130e:	c3                   	ret    
    130f:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    1316:	00 00 00 
    1319:	ff e0                	jmp    *%rax
    131b:	48 89 f8             	mov    %rdi,%rax
    131e:	c3                   	ret    
    131f:	89 f8                	mov    %edi,%eax
    1321:	c3                   	ret    
    1322:	48 83 ec 10          	sub    $0x10,%rsp
    1326:	c1 e6 08             	shl    $0x8,%esi
    1329:	48 89 3c 24          	mov    %rdi,(%rsp)
    132d:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1331:	c1 e7 10             	shl    $0x10,%edi
    1334:	48 83 c4 10          	add    $0x10,%rsp
    1338:	c1 e0 0b             	shl    $0xb,%eax
    133b:	09 c7                	or     %eax,%edi
    133d:	09 d7                	or     %edx,%edi
    133f:	09 f7                	or     %esi,%edi
    1341:	89 f8                	mov    %edi,%eax
    1343:	0d 00 00 00 80       	or     $0x80000000,%eax
    1348:	c3                   	ret    
    1349:	41 57                	push   %r15
    134b:	41 56                	push   %r14
    134d:	49 be 22 13 00 00 00 	movabs $0x1322,%r14
    1354:	00 00 00 
    1357:	41 55                	push   %r13
    1359:	49 89 f5             	mov    %rsi,%r13
    135c:	41 54                	push   %r12
    135e:	49 89 fc             	mov    %rdi,%r12
    1361:	55                   	push   %rbp
    1362:	31 ed                	xor    %ebp,%ebp
    1364:	53                   	push   %rbx
    1365:	48 83 ec 18          	sub    $0x18,%rsp
    1369:	31 db                	xor    %ebx,%ebx
    136b:	45 31 ff             	xor    %r15d,%r15d
    136e:	89 6c 24 04          	mov    %ebp,0x4(%rsp)
    1372:	31 d2                	xor    %edx,%edx
    1374:	44 89 fe             	mov    %r15d,%esi
    1377:	89 5c 24 08          	mov    %ebx,0x8(%rsp)
    137b:	4c 8b 4c 24 04       	mov    0x4(%rsp),%r9
    1380:	44 89 7c 24 0c       	mov    %r15d,0xc(%rsp)
    1385:	4c 89 cf             	mov    %r9,%rdi
    1388:	41 ff d6             	call   *%r14
    138b:	ba f8 0c 00 00       	mov    $0xcf8,%edx
    1390:	ef                   	out    %eax,(%dx)
    1391:	ba fc 0c 00 00       	mov    $0xcfc,%edx
    1396:	ed                   	in     (%dx),%eax
    1397:	89 c2                	mov    %eax,%edx
    1399:	c1 e8 10             	shr    $0x10,%eax
    139c:	3d ff ff 00 00       	cmp    $0xffff,%eax
    13a1:	75 17                	jne    0x13ba
    13a3:	45 85 ff             	test   %r15d,%r15d
    13a6:	74 09                	je     0x13b1
    13a8:	41 ff c7             	inc    %r15d
    13ab:	41 83 ff 08          	cmp    $0x8,%r15d
    13af:	75 bd                	jne    0x136e
    13b1:	ff c3                	inc    %ebx
    13b3:	83 fb 20             	cmp    $0x20,%ebx
    13b6:	74 3c                	je     0x13f4
    13b8:	eb b1                	jmp    0x136b
    13ba:	4c 89 e9             	mov    %r13,%rcx
    13bd:	4c 89 cf             	mov    %r9,%rdi
    13c0:	44 89 fe             	mov    %r15d,%esi
    13c3:	41 ff d4             	call   *%r12
    13c6:	85 c0                	test   %eax,%eax
    13c8:	75 38                	jne    0x1402
    13ca:	45 85 ff             	test   %r15d,%r15d
    13cd:	75 d9                	jne    0x13a8
    13cf:	48 8b 7c 24 04       	mov    0x4(%rsp),%rdi
    13d4:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    13d8:	ba 0c 00 00 00       	mov    $0xc,%edx
    13dd:	41 ff d6             	call   *%r14
    13e0:	ba f8 0c 00 00       	mov    $0xcf8,%edx
    13e5:	ef                   	out    %eax,(%dx)
    13e6:	ba fc 0c 00 00       	mov    $0xcfc,%edx
    13eb:	ed                   	in     (%dx),%eax
    13ec:	0f ba e0 17          	bt     $0x17,%eax
    13f0:	72 b6                	jb     0x13a8
    13f2:	eb bd                	jmp    0x13b1
    13f4:	ff c5                	inc    %ebp
    13f6:	81 fd 00 01 00 00    	cmp    $0x100,%ebp
    13fc:	0f 85 67 ff ff ff    	jne    0x1369
    1402:	48 83 c4 18          	add    $0x18,%rsp
    1406:	5b                   	pop    %rbx
    1407:	5d                   	pop    %rbp
    1408:	41 5c                	pop    %r12
    140a:	41 5d                	pop    %r13
    140c:	41 5e                	pop    %r14
    140e:	41 5f                	pop    %r15
    1410:	c3                   	ret    
    1411:	41 54                	push   %r12
    1413:	41 89 d2             	mov    %edx,%r10d
    1416:	41 b9 31 00 00 00    	mov    $0x31,%r9d
    141c:	41 b0 34             	mov    $0x34,%r8b
    141f:	49 bb 22 13 00 00 00 	movabs $0x1322,%r11
    1426:	00 00 00 
    1429:	55                   	push   %rbp
    142a:	53                   	push   %rbx
    142b:	bb f8 0c 00 00       	mov    $0xcf8,%ebx
    1430:	48 83 ec 10          	sub    $0x10,%rsp
    1434:	48 89 3c 24          	mov    %rdi,(%rsp)
    1438:	89 74 24 08          	mov    %esi,0x8(%rsp)
    143c:	41 ff c9             	dec    %r9d
    143f:	74 61                	je     0x14a2
    1441:	4c 8b 24 24          	mov    (%rsp),%r12
    1445:	8b 6c 24 08          	mov    0x8(%rsp),%ebp
    1449:	41 0f b6 d0          	movzbl %r8b,%edx
    144d:	4c 89 e7             	mov    %r12,%rdi
    1450:	89 ee                	mov    %ebp,%esi
    1452:	41 ff d3             	call   *%r11
    1455:	89 da                	mov    %ebx,%edx
    1457:	89 c1                	mov    %eax,%ecx
    1459:	83 e0 fc             	and    $0xfffffffc,%eax
    145c:	ef                   	out    %eax,(%dx)
    145d:	83 e1 03             	and    $0x3,%ecx
    1460:	8d 91 fc 0c 00 00    	lea    0xcfc(%rcx),%edx
    1466:	ec                   	in     (%dx),%al
    1467:	3c 3f                	cmp    $0x3f,%al
    1469:	76 37                	jbe    0x14a2
    146b:	89 c2                	mov    %eax,%edx
    146d:	41 89 c0             	mov    %eax,%r8d
    1470:	4c 89 e7             	mov    %r12,%rdi
    1473:	89 ee                	mov    %ebp,%esi
    1475:	81 e2 fc 00 00 00    	and    $0xfc,%edx
    147b:	41 83 e0 fc          	and    $0xfffffffc,%r8d
    147f:	41 ff d3             	call   *%r11
    1482:	89 da                	mov    %ebx,%edx
    1484:	89 c1                	mov    %eax,%ecx
    1486:	83 e0 fc             	and    $0xfffffffc,%eax
    1489:	ef                   	out    %eax,(%dx)
    148a:	83 e1 03             	and    $0x3,%ecx
    148d:	8d 91 fc 0c 00 00    	lea    0xcfc(%rcx),%edx
    1493:	ec                   	in     (%dx),%al
    1494:	3c ff                	cmp    $0xff,%al
    1496:	74 0a                	je     0x14a2
    1498:	41 38 c2             	cmp    %al,%r10b
    149b:	74 08                	je     0x14a5
    149d:	41 ff c0             	inc    %r8d
    14a0:	eb 9a                	jmp    0x143c
    14a2:	45 31 c0             	xor    %r8d,%r8d
    14a5:	48 83 c4 10          	add    $0x10,%rsp
    14a9:	44 89 c0             	mov    %r8d,%eax
    14ac:	5b                   	pop    %rbx
    14ad:	5d                   	pop    %rbp
    14ae:	41 5c                	pop    %r12
    14b0:	c3                   	ret    
    14b1:	66 81 7f 04 02 01    	cmpw   $0x102,0x4(%rdi)
    14b7:	75 07                	jne    0x14c0
    14b9:	66 83 7f 12 3e       	cmpw   $0x3e,0x12(%rdi)
    14be:	74 1d                	je     0x14dd
    14c0:	48 be 58 c2 00 00 00 	movabs $0xc258,%rsi
    14c7:	00 00 00 
    14ca:	bf 15 00 00 00       	mov    $0x15,%edi
    14cf:	31 c0                	xor    %eax,%eax
    14d1:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    14d8:	00 00 00 
    14db:	ff e2                	jmp    *%rdx
    14dd:	31 c0                	xor    %eax,%eax
    14df:	c3                   	ret    
    14e0:	41 55                	push   %r13
    14e2:	49 89 f8             	mov    %rdi,%r8
    14e5:	49 89 c9             	mov    %rcx,%r9
    14e8:	48 89 d7             	mov    %rdx,%rdi
    14eb:	49 bb 40 c0 00 00 00 	movabs $0xc040,%r11
    14f2:	00 00 00 
    14f5:	41 54                	push   %r12
    14f7:	55                   	push   %rbp
    14f8:	53                   	push   %rbx
    14f9:	48 bb 50 f8 00 00 00 	movabs $0xf850,%rbx
    1500:	00 00 00 
    1503:	48 83 ec 28          	sub    $0x28,%rsp
    1507:	4c 8b 52 20          	mov    0x20(%rdx),%r10
    150b:	48 8b 03             	mov    (%rbx),%rax
    150e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1513:	48 89 f0             	mov    %rsi,%rax
    1516:	48 03 42 18          	add    0x18(%rdx),%rax
    151a:	49 01 c2             	add    %rax,%r10
    151d:	4c 39 d0             	cmp    %r10,%rax
    1520:	0f 83 59 01 00 00    	jae    0x167f
    1526:	48 8b 28             	mov    (%rax),%rbp
    1529:	49 39 69 10          	cmp    %rbp,0x10(%r9)
    152d:	73 1d                	jae    0x154c
    152f:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1534:	48 2b 03             	sub    (%rbx),%rax
    1537:	48 be 79 c2 00 00 00 	movabs $0xc279,%rsi
    153e:	00 00 00 
    1541:	0f 84 aa 00 00 00    	je     0x15f1
    1547:	e9 3f 01 00 00       	jmp    0x168b
    154c:	48 8b 70 08          	mov    0x8(%rax),%rsi
    1550:	4d 8b 69 08          	mov    0x8(%r9),%r13
    1554:	48 89 f1             	mov    %rsi,%rcx
    1557:	49 8d 54 2d 00       	lea    0x0(%r13,%rbp,1),%rdx
    155c:	41 89 f4             	mov    %esi,%r12d
    155f:	48 c1 e9 20          	shr    $0x20,%rcx
    1563:	49 0f af 48 28       	imul   0x28(%r8),%rcx
    1568:	49 03 48 20          	add    0x20(%r8),%rcx
    156c:	83 fe 0b             	cmp    $0xb,%esi
    156f:	77 1c                	ja     0x158d
    1571:	4d 85 e4             	test   %r12,%r12
    1574:	0f 84 b2 00 00 00    	je     0x162c
    157a:	49 8d 74 24 ff       	lea    -0x1(%r12),%rsi
    157f:	48 83 fe 0a          	cmp    $0xa,%rsi
    1583:	0f 87 a3 00 00 00    	ja     0x162c
    1589:	41 ff 24 f3          	jmp    *(%r11,%rsi,8)
    158d:	49 83 fc 18          	cmp    $0x18,%r12
    1591:	0f 85 95 00 00 00    	jne    0x162c
    1597:	48 8b 70 10          	mov    0x10(%rax),%rsi
    159b:	48 29 ee             	sub    %rbp,%rsi
    159e:	4c 29 ee             	sub    %r13,%rsi
    15a1:	48 03 71 08          	add    0x8(%rcx),%rsi
    15a5:	48 01 32             	add    %rsi,(%rdx)
    15a8:	e9 c9 00 00 00       	jmp    0x1676
    15ad:	48 8b 70 10          	mov    0x10(%rax),%rsi
    15b1:	48 03 32             	add    (%rdx),%rsi
    15b4:	48 03 71 08          	add    0x8(%rcx),%rsi
    15b8:	48 89 32             	mov    %rsi,(%rdx)
    15bb:	e9 b6 00 00 00       	jmp    0x1676
    15c0:	48 63 32             	movslq (%rdx),%rsi
    15c3:	48 03 70 10          	add    0x10(%rax),%rsi
    15c7:	48 29 d6             	sub    %rdx,%rsi
    15ca:	48 03 71 08          	add    0x8(%rcx),%rsi
    15ce:	48 89 f1             	mov    %rsi,%rcx
    15d1:	48 63 f6             	movslq %esi,%rsi
    15d4:	48 39 ce             	cmp    %rcx,%rsi
    15d7:	74 4f                	je     0x1628
    15d9:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    15de:	48 2b 03             	sub    (%rbx),%rax
    15e1:	48 be 9c c2 00 00 00 	movabs $0xc29c,%rsi
    15e8:	00 00 00 
    15eb:	0f 85 9a 00 00 00    	jne    0x168b
    15f1:	48 83 c4 28          	add    $0x28,%rsp
    15f5:	bf 02 00 00 00       	mov    $0x2,%edi
    15fa:	31 c0                	xor    %eax,%eax
    15fc:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    1603:	00 00 00 
    1606:	5b                   	pop    %rbx
    1607:	5d                   	pop    %rbp
    1608:	41 5c                	pop    %r12
    160a:	41 5d                	pop    %r13
    160c:	ff e2                	jmp    *%rdx
    160e:	8b 32                	mov    (%rdx),%esi
    1610:	48 03 70 10          	add    0x10(%rax),%rsi
    1614:	48 03 71 08          	add    0x8(%rcx),%rsi
    1618:	48 89 f1             	mov    %rsi,%rcx
    161b:	89 f6                	mov    %esi,%esi
    161d:	eb b5                	jmp    0x15d4
    161f:	48 63 32             	movslq (%rdx),%rsi
    1622:	48 03 70 10          	add    0x10(%rax),%rsi
    1626:	eb a2                	jmp    0x15ca
    1628:	89 32                	mov    %esi,(%rdx)
    162a:	eb 4a                	jmp    0x1676
    162c:	4c 89 e1             	mov    %r12,%rcx
    162f:	48 8d 7c 24 07       	lea    0x7(%rsp),%rdi
    1634:	be 10 00 00 00       	mov    $0x10,%esi
    1639:	31 c0                	xor    %eax,%eax
    163b:	48 ba b4 c2 00 00 00 	movabs $0xc2b4,%rdx
    1642:	00 00 00 
    1645:	49 b8 cb a7 00 00 00 	movabs $0xa7cb,%r8
    164c:	00 00 00 
    164f:	41 ff d0             	call   *%r8
    1652:	48 8d 54 24 07       	lea    0x7(%rsp),%rdx
    1657:	bf 18 00 00 00       	mov    $0x18,%edi
    165c:	31 c0                	xor    %eax,%eax
    165e:	48 be b8 c2 00 00 00 	movabs $0xc2b8,%rsi
    1665:	00 00 00 
    1668:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    166f:	00 00 00 
    1672:	ff d1                	call   *%rcx
    1674:	eb 0b                	jmp    0x1681
    1676:	48 03 47 38          	add    0x38(%rdi),%rax
    167a:	e9 9e fe ff ff       	jmp    0x151d
    167f:	31 c0                	xor    %eax,%eax
    1681:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    1686:	48 2b 13             	sub    (%rbx),%rdx
    1689:	74 0c                	je     0x1697
    168b:	48 b8 40 3e 00 00 00 	movabs $0x3e40,%rax
    1692:	00 00 00 
    1695:	ff d0                	call   *%rax
    1697:	48 83 c4 28          	add    $0x28,%rsp
    169b:	5b                   	pop    %rbx
    169c:	5d                   	pop    %rbp
    169d:	41 5c                	pop    %r12
    169f:	41 5d                	pop    %r13
    16a1:	c3                   	ret    
    16a2:	53                   	push   %rbx
    16a3:	31 c0                	xor    %eax,%eax
    16a5:	0f a2                	cpuid  
    16a7:	0f 31                	rdtsc  
    16a9:	89 c0                	mov    %eax,%eax
    16ab:	48 c1 e2 20          	shl    $0x20,%rdx
    16af:	5b                   	pop    %rbx
    16b0:	48 09 c2             	or     %rax,%rdx
    16b3:	48 b8 08 f8 00 00 00 	movabs $0xf808,%rax
    16ba:	00 00 00 
    16bd:	48 2b 10             	sub    (%rax),%rdx
    16c0:	48 b8 00 f8 00 00 00 	movabs $0xf800,%rax
    16c7:	00 00 00 
    16ca:	8b 08                	mov    (%rax),%ecx
    16cc:	89 d0                	mov    %edx,%eax
    16ce:	48 c1 ea 20          	shr    $0x20,%rdx
    16d2:	48 0f af c1          	imul   %rcx,%rax
    16d6:	48 0f af d1          	imul   %rcx,%rdx
    16da:	48 c1 e8 20          	shr    $0x20,%rax
    16de:	48 01 d0             	add    %rdx,%rax
    16e1:	c3                   	ret    
    16e2:	53                   	push   %rbx
    16e3:	9c                   	pushf  
    16e4:	58                   	pop    %rax
    16e5:	48 89 c1             	mov    %rax,%rcx
    16e8:	48 35 00 00 20 00    	xor    $0x200000,%rax
    16ee:	50                   	push   %rax
    16ef:	9d                   	popf   
    16f0:	9c                   	pushf  
    16f1:	58                   	pop    %rax
    16f2:	48 31 c8             	xor    %rcx,%rax
    16f5:	48 85 c0             	test   %rax,%rax
    16f8:	74 0c                	je     0x1706
    16fa:	b8 01 00 00 00       	mov    $0x1,%eax
    16ff:	0f a2                	cpuid  
    1701:	80 e2 10             	and    $0x10,%dl
    1704:	75 18                	jne    0x171e
    1706:	48 bf df c2 00 00 00 	movabs $0xc2df,%rdi
    170d:	00 00 00 
    1710:	31 c0                	xor    %eax,%eax
    1712:	48 ba 03 aa 00 00 00 	movabs $0xaa03,%rdx
    1719:	00 00 00 
    171c:	ff d2                	call   *%rdx
    171e:	31 c0                	xor    %eax,%eax
    1720:	0f a2                	cpuid  
    1722:	0f 31                	rdtsc  
    1724:	48 c1 e2 20          	shl    $0x20,%rdx
    1728:	89 c0                	mov    %eax,%eax
    172a:	48 09 d0             	or     %rdx,%rax
    172d:	48 a3 08 f8 00 00 00 	movabs %rax,0xf808
    1734:	00 00 00 
    1737:	48 b8 16 11 00 00 00 	movabs $0x1116,%rax
    173e:	00 00 00 
    1741:	ff d0                	call   *%rax
    1743:	85 c0                	test   %eax,%eax
    1745:	75 30                	jne    0x1777
    1747:	48 b8 8e 17 00 00 00 	movabs $0x178e,%rax
    174e:	00 00 00 
    1751:	ff d0                	call   *%rax
    1753:	85 c0                	test   %eax,%eax
    1755:	75 20                	jne    0x1777
    1757:	48 b8 17 10 00 00 00 	movabs $0x1017,%rax
    175e:	00 00 00 
    1761:	ff d0                	call   *%rax
    1763:	85 c0                	test   %eax,%eax
    1765:	75 10                	jne    0x1777
    1767:	48 b8 00 f8 00 00 00 	movabs $0xf800,%rax
    176e:	00 00 00 
    1771:	c7 00 f8 14 00 00    	movl   $0x14f8,(%rax)
    1777:	48 bf a2 16 00 00 00 	movabs $0x16a2,%rdi
    177e:	00 00 00 
    1781:	5b                   	pop    %rbx
    1782:	48 b8 2e 5f 00 00 00 	movabs $0x5f2e,%rax
    1789:	00 00 00 
    178c:	ff e0                	jmp    *%rax
    178e:	53                   	push   %rbx
    178f:	31 c0                	xor    %eax,%eax
    1791:	0f a2                	cpuid  
    1793:	0f 31                	rdtsc  
    1795:	89 c1                	mov    %eax,%ecx
    1797:	e4 61                	in     $0x61,%al
    1799:	83 e0 fc             	and    $0xfffffffc,%eax
    179c:	e6 61                	out    %al,$0x61
    179e:	b0 b0                	mov    $0xb0,%al
    17a0:	e6 43                	out    %al,$0x43
    17a2:	b0 ff                	mov    $0xff,%al
    17a4:	e6 42                	out    %al,$0x42
    17a6:	e6 42                	out    %al,$0x42
    17a8:	e4 61                	in     $0x61,%al
    17aa:	83 e0 fc             	and    $0xfffffffc,%eax
    17ad:	83 c8 01             	or     $0x1,%eax
    17b0:	e6 61                	out    %al,$0x61
    17b2:	e4 61                	in     $0x61,%al
    17b4:	45 31 c0             	xor    %r8d,%r8d
    17b7:	a8 20                	test   $0x20,%al
    17b9:	75 0c                	jne    0x17c7
    17bb:	e4 61                	in     $0x61,%al
    17bd:	a8 20                	test   $0x20,%al
    17bf:	74 fa                	je     0x17bb
    17c1:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    17c7:	e4 61                	in     $0x61,%al
    17c9:	83 e0 fc             	and    $0xfffffffc,%eax
    17cc:	e6 61                	out    %al,$0x61
    17ce:	45 85 c0             	test   %r8d,%r8d
    17d1:	74 59                	je     0x182c
    17d3:	48 c1 e2 20          	shl    $0x20,%rdx
    17d7:	89 c8                	mov    %ecx,%eax
    17d9:	48 89 d7             	mov    %rdx,%rdi
    17dc:	48 09 c7             	or     %rax,%rdi
    17df:	31 c0                	xor    %eax,%eax
    17e1:	0f a2                	cpuid  
    17e3:	0f 31                	rdtsc  
    17e5:	48 bb 00 f8 00 00 00 	movabs $0xf800,%rbx
    17ec:	00 00 00 
    17ef:	48 89 d6             	mov    %rdx,%rsi
    17f2:	89 c0                	mov    %eax,%eax
    17f4:	48 c1 e6 20          	shl    $0x20,%rsi
    17f8:	c7 03 00 00 00 00    	movl   $0x0,(%rbx)
    17fe:	48 09 c6             	or     %rax,%rsi
    1801:	48 39 f7             	cmp    %rsi,%rdi
    1804:	73 1c                	jae    0x1822
    1806:	48 b8 e8 9a 00 00 00 	movabs $0x9ae8,%rax
    180d:	00 00 00 
    1810:	48 29 fe             	sub    %rdi,%rsi
    1813:	31 d2                	xor    %edx,%edx
    1815:	bf 37 00 00 00       	mov    $0x37,%edi
    181a:	48 c1 e7 20          	shl    $0x20,%rdi
    181e:	ff d0                	call   *%rax
    1820:	89 03                	mov    %eax,(%rbx)
    1822:	45 31 c0             	xor    %r8d,%r8d
    1825:	83 3b 00             	cmpl   $0x0,(%rbx)
    1828:	41 0f 95 c0          	setne  %r8b
    182c:	44 89 c0             	mov    %r8d,%eax
    182f:	5b                   	pop    %rbx
    1830:	c3                   	ret    
    1831:	48 89 f8             	mov    %rdi,%rax
    1834:	48 85 c0             	test   %rax,%rax
    1837:	74 0c                	je     0x1845
    1839:	85 f6                	test   %esi,%esi
    183b:	74 08                	je     0x1845
    183d:	48 8b 40 20          	mov    0x20(%rax),%rax
    1841:	ff ce                	dec    %esi
    1843:	eb ef                	jmp    0x1834
    1845:	31 d2                	xor    %edx,%edx
    1847:	85 f6                	test   %esi,%esi
    1849:	48 0f 45 c2          	cmovne %rdx,%rax
    184d:	c3                   	ret    
    184e:	4c 8b 07             	mov    (%rdi),%r8
    1851:	be 1c 02 00 00       	mov    $0x21c,%esi
    1856:	31 c0                	xor    %eax,%eax
    1858:	48 b9 ec c2 00 00 00 	movabs $0xc2ec,%rcx
    185f:	00 00 00 
    1862:	48 ba f8 c2 00 00 00 	movabs $0xc2f8,%rdx
    1869:	00 00 00 
    186c:	48 bf 00 c3 00 00 00 	movabs $0xc300,%rdi
    1873:	00 00 00 
    1876:	49 b9 b7 a6 00 00 00 	movabs $0xa6b7,%r9
    187d:	00 00 00 
    1880:	41 ff e1             	jmp    *%r9
    1883:	55                   	push   %rbp
    1884:	53                   	push   %rbx
    1885:	48 bb 12 5c 00 00 00 	movabs $0x5c12,%rbx
    188c:	00 00 00 
    188f:	52                   	push   %rdx
    1890:	48 85 ff             	test   %rdi,%rdi
    1893:	74 0b                	je     0x18a0
    1895:	48 8b 6f 20          	mov    0x20(%rdi),%rbp
    1899:	ff d3                	call   *%rbx
    189b:	48 89 ef             	mov    %rbp,%rdi
    189e:	eb f0                	jmp    0x1890
    18a0:	58                   	pop    %rax
    18a1:	5b                   	pop    %rbx
    18a2:	5d                   	pop    %rbp
    18a3:	c3                   	ret    
    18a4:	41 55                	push   %r13
    18a6:	49 bd 20 f8 00 00 00 	movabs $0xf820,%r13
    18ad:	00 00 00 
    18b0:	41 54                	push   %r12
    18b2:	49 bc 18 f8 00 00 00 	movabs $0xf818,%r12
    18b9:	00 00 00 
    18bc:	55                   	push   %rbp
    18bd:	48 bd 10 f8 00 00 00 	movabs $0xf810,%rbp
    18c4:	00 00 00 
    18c7:	53                   	push   %rbx
    18c8:	48 bb 83 18 00 00 00 	movabs $0x1883,%rbx
    18cf:	00 00 00 
    18d2:	50                   	push   %rax
    18d3:	49 8b 7d 00          	mov    0x0(%r13),%rdi
    18d7:	ff d3                	call   *%rbx
    18d9:	49 8b 3c 24          	mov    (%r12),%rdi
    18dd:	ff d3                	call   *%rbx
    18df:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    18e3:	ff d3                	call   *%rbx
    18e5:	49 c7 45 00 00 00 00 	movq   $0x0,0x0(%r13)
    18ec:	00 
    18ed:	48 bf 60 e2 00 00 00 	movabs $0xe260,%rdi
    18f4:	00 00 00 
    18f7:	48 b8 13 6e 00 00 00 	movabs $0x6e13,%rax
    18fe:	00 00 00 
    1901:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
    1908:	00 
    1909:	48 c7 45 00 00 00 00 	movq   $0x0,0x0(%rbp)
    1910:	00 
    1911:	5a                   	pop    %rdx
    1912:	5b                   	pop    %rbx
    1913:	5d                   	pop    %rbp
    1914:	41 5c                	pop    %r12
    1916:	41 5d                	pop    %r13
    1918:	ff e0                	jmp    *%rax
    191a:	41 57                	push   %r15
    191c:	31 c0                	xor    %eax,%eax
    191e:	49 89 f8             	mov    %rdi,%r8
    1921:	49 bf f8 c2 00 00 00 	movabs $0xc2f8,%r15
    1928:	00 00 00 
    192b:	48 b9 13 c3 00 00 00 	movabs $0xc313,%rcx
    1932:	00 00 00 
    1935:	41 56                	push   %r14
    1937:	4c 89 fa             	mov    %r15,%rdx
    193a:	49 be 00 c3 00 00 00 	movabs $0xc300,%r14
    1941:	00 00 00 
    1944:	41 55                	push   %r13
    1946:	49 bd b7 a6 00 00 00 	movabs $0xa6b7,%r13
    194d:	00 00 00 
    1950:	41 54                	push   %r12
    1952:	49 89 f4             	mov    %rsi,%r12
    1955:	be e2 01 00 00       	mov    $0x1e2,%esi
    195a:	55                   	push   %rbp
    195b:	48 89 fd             	mov    %rdi,%rbp
    195e:	4c 89 f7             	mov    %r14,%rdi
    1961:	53                   	push   %rbx
    1962:	48 bb 80 aa 01 00 00 	movabs $0x1aa80,%rbx
    1969:	00 00 00 
    196c:	48 83 ec 18          	sub    $0x18,%rsp
    1970:	41 ff d5             	call   *%r13
    1973:	8a 45 00             	mov    0x0(%rbp),%al
    1976:	8d 50 9a             	lea    -0x66(%rax),%edx
    1979:	80 e2 fd             	and    $0xfd,%dl
    197c:	74 04                	je     0x1982
    197e:	3c 63                	cmp    $0x63,%al
    1980:	75 2d                	jne    0x19af
    1982:	80 7d 01 64          	cmpb   $0x64,0x1(%rbp)
    1986:	75 27                	jne    0x19af
    1988:	31 f6                	xor    %esi,%esi
    198a:	48 8d 7d 02          	lea    0x2(%rbp),%rdi
    198e:	ba 0a 00 00 00       	mov    $0xa,%edx
    1993:	48 b8 48 a0 00 00 00 	movabs $0xa048,%rax
    199a:	00 00 00 
    199d:	ff d0                	call   *%rax
    199f:	83 3b 00             	cmpl   $0x0,(%rbx)
    19a2:	48 89 c1             	mov    %rax,%rcx
    19a5:	75 08                	jne    0x19af
    19a7:	89 c6                	mov    %eax,%esi
    19a9:	85 c0                	test   %eax,%eax
    19ab:	79 27                	jns    0x19d4
    19ad:	eb 1d                	jmp    0x19cc
    19af:	48 be 1f c3 00 00 00 	movabs $0xc31f,%rsi
    19b6:	00 00 00 
    19b9:	bf 0c 00 00 00       	mov    $0xc,%edi
    19be:	31 c0                	xor    %eax,%eax
    19c0:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    19c7:	00 00 00 
    19ca:	ff d2                	call   *%rdx
    19cc:	44 8b 0b             	mov    (%rbx),%r9d
    19cf:	e9 6f 01 00 00       	jmp    0x1b43
    19d4:	44 0f be 45 00       	movsbl 0x0(%rbp),%r8d
    19d9:	41 80 f8 66          	cmp    $0x66,%r8b
    19dd:	74 18                	je     0x19f7
    19df:	41 80 f8 68          	cmp    $0x68,%r8b
    19e3:	74 1e                	je     0x1a03
    19e5:	41 80 f8 63          	cmp    $0x63,%r8b
    19e9:	75 39                	jne    0x1a24
    19eb:	48 b8 10 f8 00 00 00 	movabs $0xf810,%rax
    19f2:	00 00 00 
    19f5:	eb 16                	jmp    0x1a0d
    19f7:	48 b8 20 f8 00 00 00 	movabs $0xf820,%rax
    19fe:	00 00 00 
    1a01:	eb 0a                	jmp    0x1a0d
    1a03:	48 b8 18 f8 00 00 00 	movabs $0xf818,%rax
    1a0a:	00 00 00 
    1a0d:	48 8b 38             	mov    (%rax),%rdi
    1a10:	48 b8 31 18 00 00 00 	movabs $0x1831,%rax
    1a17:	00 00 00 
    1a1a:	ff d0                	call   *%rax
    1a1c:	48 89 c3             	mov    %rax,%rbx
    1a1f:	48 85 c0             	test   %rax,%rax
    1a22:	75 2b                	jne    0x1a4f
    1a24:	48 83 c4 18          	add    $0x18,%rsp
    1a28:	bf 0c 00 00 00       	mov    $0xc,%edi
    1a2d:	31 c0                	xor    %eax,%eax
    1a2f:	48 be 2d c3 00 00 00 	movabs $0xc32d,%rsi
    1a36:	00 00 00 
    1a39:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    1a40:	00 00 00 
    1a43:	5b                   	pop    %rbx
    1a44:	5d                   	pop    %rbp
    1a45:	41 5c                	pop    %r12
    1a47:	41 5d                	pop    %r13
    1a49:	41 5e                	pop    %r14
    1a4b:	41 5f                	pop    %r15
    1a4d:	ff e2                	jmp    *%rdx
    1a4f:	48 8b 40 18          	mov    0x18(%rax),%rax
    1a53:	c1 e1 08             	shl    $0x8,%ecx
    1a56:	4c 89 fa             	mov    %r15,%rdx
    1a59:	be ff 01 00 00       	mov    $0x1ff,%esi
    1a5e:	44 09 c1             	or     %r8d,%ecx
    1a61:	4c 89 f7             	mov    %r14,%rdi
    1a64:	4c 8b 40 08          	mov    0x8(%rax),%r8
    1a68:	48 63 c9             	movslq %ecx,%rcx
    1a6b:	49 89 4c 24 20       	mov    %rcx,0x20(%r12)
    1a70:	48 b9 3c c3 00 00 00 	movabs $0xc33c,%rcx
    1a77:	00 00 00 
    1a7a:	41 8b 40 10          	mov    0x10(%r8),%eax
    1a7e:	4d 8b 48 18          	mov    0x18(%r8),%r9
    1a82:	50                   	push   %rax
    1a83:	41 8b 40 0c          	mov    0xc(%r8),%eax
    1a87:	50                   	push   %rax
    1a88:	31 c0                	xor    %eax,%eax
    1a8a:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    1a8f:	41 ff d5             	call   *%r13
    1a92:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    1a97:	58                   	pop    %rax
    1a98:	48 be 77 c3 00 00 00 	movabs $0xc377,%rsi
    1a9f:	00 00 00 
    1aa2:	59                   	pop    %rcx
    1aa3:	41 8b 50 10          	mov    0x10(%r8),%edx
    1aa7:	44 8d 4a ff          	lea    -0x1(%rdx),%r9d
    1aab:	41 21 d1             	and    %edx,%r9d
    1aae:	75 35                	jne    0x1ae5
    1ab0:	49 8b 40 18          	mov    0x18(%r8),%rax
    1ab4:	41 8b 50 0c          	mov    0xc(%r8),%edx
    1ab8:	41 c7 44 24 1c 14 00 	movl   $0x14,0x1c(%r12)
    1abf:	00 00 
    1ac1:	48 ff c0             	inc    %rax
    1ac4:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    1ac9:	8d 42 ff             	lea    -0x1(%rdx),%eax
    1acc:	85 d0                	test   %edx,%eax
    1ace:	75 0b                	jne    0x1adb
    1ad0:	31 c9                	xor    %ecx,%ecx
    1ad2:	be 01 00 00 00       	mov    $0x1,%esi
    1ad7:	85 d2                	test   %edx,%edx
    1ad9:	75 2b                	jne    0x1b06
    1adb:	48 be 93 c3 00 00 00 	movabs $0xc393,%rsi
    1ae2:	00 00 00 
    1ae5:	48 83 c4 18          	add    $0x18,%rsp
    1ae9:	bf 1d 00 00 00       	mov    $0x1d,%edi
    1aee:	31 c0                	xor    %eax,%eax
    1af0:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    1af7:	00 00 00 
    1afa:	5b                   	pop    %rbx
    1afb:	5d                   	pop    %rbp
    1afc:	41 5c                	pop    %r12
    1afe:	41 5d                	pop    %r13
    1b00:	41 5e                	pop    %r14
    1b02:	41 5f                	pop    %r15
    1b04:	ff e1                	jmp    *%rcx
    1b06:	89 f0                	mov    %esi,%eax
    1b08:	d3 e0                	shl    %cl,%eax
    1b0a:	39 c2                	cmp    %eax,%edx
    1b0c:	76 04                	jbe    0x1b12
    1b0e:	ff c1                	inc    %ecx
    1b10:	eb f4                	jmp    0x1b06
    1b12:	44 89 4c 24 08       	mov    %r9d,0x8(%rsp)
    1b17:	49 89 e8             	mov    %rbp,%r8
    1b1a:	4c 89 fa             	mov    %r15,%rdx
    1b1d:	be 13 02 00 00       	mov    $0x213,%esi
    1b22:	41 89 4c 24 18       	mov    %ecx,0x18(%r12)
    1b27:	4c 89 f7             	mov    %r14,%rdi
    1b2a:	31 c0                	xor    %eax,%eax
    1b2c:	48 b9 aa c3 00 00 00 	movabs $0xc3aa,%rcx
    1b33:	00 00 00 
    1b36:	49 89 5c 24 40       	mov    %rbx,0x40(%r12)
    1b3b:	41 ff d5             	call   *%r13
    1b3e:	44 8b 4c 24 08       	mov    0x8(%rsp),%r9d
    1b43:	48 83 c4 18          	add    $0x18,%rsp
    1b47:	44 89 c8             	mov    %r9d,%eax
    1b4a:	5b                   	pop    %rbx
    1b4b:	5d                   	pop    %rbp
    1b4c:	41 5c                	pop    %r12
    1b4e:	41 5d                	pop    %r13
    1b50:	41 5e                	pop    %r14
    1b52:	41 5f                	pop    %r15
    1b54:	c3                   	ret    
    1b55:	41 57                	push   %r15
    1b57:	41 56                	push   %r14
    1b59:	41 55                	push   %r13
    1b5b:	49 bd 50 f8 00 00 00 	movabs $0xf850,%r13
    1b62:	00 00 00 
    1b65:	41 54                	push   %r12
    1b67:	55                   	push   %rbp
    1b68:	48 89 f5             	mov    %rsi,%rbp
    1b6b:	53                   	push   %rbx
    1b6c:	48 89 fb             	mov    %rdi,%rbx
    1b6f:	48 83 ec 28          	sub    $0x28,%rsp
    1b73:	49 8b 45 00          	mov    0x0(%r13),%rax
    1b77:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1b7c:	31 c0                	xor    %eax,%eax
    1b7e:	85 d2                	test   %edx,%edx
    1b80:	74 27                	je     0x1ba9
    1b82:	ff ca                	dec    %edx
    1b84:	0f 85 c3 01 00 00    	jne    0x1d4d
    1b8a:	48 b8 20 f8 00 00 00 	movabs $0xf820,%rax
    1b91:	00 00 00 
    1b94:	45 31 f6             	xor    %r14d,%r14d
    1b97:	4c 8b 20             	mov    (%rax),%r12
    1b9a:	49 bf d3 c3 00 00 00 	movabs $0xc3d3,%r15
    1ba1:	00 00 00 
    1ba4:	e9 0a 01 00 00       	jmp    0x1cb3
    1ba9:	48 b8 18 f8 00 00 00 	movabs $0xf818,%rax
    1bb0:	00 00 00 
    1bb3:	4c 8b 20             	mov    (%rax),%r12
    1bb6:	45 31 f6             	xor    %r14d,%r14d
    1bb9:	49 bf c0 c3 00 00 00 	movabs $0xc3c0,%r15
    1bc0:	00 00 00 
    1bc3:	4d 85 e4             	test   %r12,%r12
    1bc6:	0f 84 0b 01 00 00    	je     0x1cd7
    1bcc:	44 89 f1             	mov    %r14d,%ecx
    1bcf:	4c 89 fa             	mov    %r15,%rdx
    1bd2:	be 10 00 00 00       	mov    $0x10,%esi
    1bd7:	31 c0                	xor    %eax,%eax
    1bd9:	49 b8 cb a7 00 00 00 	movabs $0xa7cb,%r8
    1be0:	00 00 00 
    1be3:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    1be8:	41 ff d0             	call   *%r8
    1beb:	be 9d 01 00 00       	mov    $0x19d,%esi
    1bf0:	31 c0                	xor    %eax,%eax
    1bf2:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    1bf7:	48 bf 00 c3 00 00 00 	movabs $0xc300,%rdi
    1bfe:	00 00 00 
    1c01:	48 b9 c5 c3 00 00 00 	movabs $0xc3c5,%rcx
    1c08:	00 00 00 
    1c0b:	48 ba f8 c2 00 00 00 	movabs $0xc2f8,%rdx
    1c12:	00 00 00 
    1c15:	49 b9 b7 a6 00 00 00 	movabs $0xa6b7,%r9
    1c1c:	00 00 00 
    1c1f:	41 ff d1             	call   *%r9
    1c22:	48 89 ee             	mov    %rbp,%rsi
    1c25:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    1c2a:	ff d3                	call   *%rbx
    1c2c:	85 c0                	test   %eax,%eax
    1c2e:	74 0a                	je     0x1c3a
    1c30:	b8 01 00 00 00       	mov    $0x1,%eax
    1c35:	e9 13 01 00 00       	jmp    0x1d4d
    1c3a:	4d 8b 64 24 20       	mov    0x20(%r12),%r12
    1c3f:	41 ff c6             	inc    %r14d
    1c42:	e9 7c ff ff ff       	jmp    0x1bc3
    1c47:	44 89 f1             	mov    %r14d,%ecx
    1c4a:	4c 89 fa             	mov    %r15,%rdx
    1c4d:	be 10 00 00 00       	mov    $0x10,%esi
    1c52:	31 c0                	xor    %eax,%eax
    1c54:	49 b8 cb a7 00 00 00 	movabs $0xa7cb,%r8
    1c5b:	00 00 00 
    1c5e:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    1c63:	41 ff d0             	call   *%r8
    1c66:	be a6 01 00 00       	mov    $0x1a6,%esi
    1c6b:	31 c0                	xor    %eax,%eax
    1c6d:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    1c72:	48 bf 00 c3 00 00 00 	movabs $0xc300,%rdi
    1c79:	00 00 00 
    1c7c:	48 b9 c5 c3 00 00 00 	movabs $0xc3c5,%rcx
    1c83:	00 00 00 
    1c86:	48 ba f8 c2 00 00 00 	movabs $0xc2f8,%rdx
    1c8d:	00 00 00 
    1c90:	49 b9 b7 a6 00 00 00 	movabs $0xa6b7,%r9
    1c97:	00 00 00 
    1c9a:	41 ff d1             	call   *%r9
    1c9d:	48 89 ee             	mov    %rbp,%rsi
    1ca0:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    1ca5:	ff d3                	call   *%rbx
    1ca7:	85 c0                	test   %eax,%eax
    1ca9:	75 85                	jne    0x1c30
    1cab:	4d 8b 64 24 20       	mov    0x20(%r12),%r12
    1cb0:	41 ff c6             	inc    %r14d
    1cb3:	4d 85 e4             	test   %r12,%r12
    1cb6:	75 8f                	jne    0x1c47
    1cb8:	48 b8 10 f8 00 00 00 	movabs $0xf810,%rax
    1cbf:	00 00 00 
    1cc2:	4c 8b 20             	mov    (%rax),%r12
    1cc5:	45 31 f6             	xor    %r14d,%r14d
    1cc8:	49 bf d8 c3 00 00 00 	movabs $0xc3d8,%r15
    1ccf:	00 00 00 
    1cd2:	4d 85 e4             	test   %r12,%r12
    1cd5:	75 04                	jne    0x1cdb
    1cd7:	31 c0                	xor    %eax,%eax
    1cd9:	eb 72                	jmp    0x1d4d
    1cdb:	44 89 f1             	mov    %r14d,%ecx
    1cde:	4c 89 fa             	mov    %r15,%rdx
    1ce1:	be 10 00 00 00       	mov    $0x10,%esi
    1ce6:	31 c0                	xor    %eax,%eax
    1ce8:	49 b8 cb a7 00 00 00 	movabs $0xa7cb,%r8
    1cef:	00 00 00 
    1cf2:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    1cf7:	41 ff d0             	call   *%r8
    1cfa:	be ae 01 00 00       	mov    $0x1ae,%esi
    1cff:	31 c0                	xor    %eax,%eax
    1d01:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    1d06:	48 bf 00 c3 00 00 00 	movabs $0xc300,%rdi
    1d0d:	00 00 00 
    1d10:	48 b9 c5 c3 00 00 00 	movabs $0xc3c5,%rcx
    1d17:	00 00 00 
    1d1a:	48 ba f8 c2 00 00 00 	movabs $0xc2f8,%rdx
    1d21:	00 00 00 
    1d24:	49 b9 b7 a6 00 00 00 	movabs $0xa6b7,%r9
    1d2b:	00 00 00 
    1d2e:	41 ff d1             	call   *%r9
    1d31:	48 89 ee             	mov    %rbp,%rsi
    1d34:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    1d39:	ff d3                	call   *%rbx
    1d3b:	85 c0                	test   %eax,%eax
    1d3d:	0f 85 ed fe ff ff    	jne    0x1c30
    1d43:	4d 8b 64 24 20       	mov    0x20(%r12),%r12
    1d48:	41 ff c6             	inc    %r14d
    1d4b:	eb 85                	jmp    0x1cd2
    1d4d:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    1d52:	49 2b 55 00          	sub    0x0(%r13),%rdx
    1d56:	74 0c                	je     0x1d64
    1d58:	48 b8 40 3e 00 00 00 	movabs $0x3e40,%rax
    1d5f:	00 00 00 
    1d62:	ff d0                	call   *%rax
    1d64:	48 83 c4 28          	add    $0x28,%rsp
    1d68:	5b                   	pop    %rbx
    1d69:	5d                   	pop    %rbp
    1d6a:	41 5c                	pop    %r12
    1d6c:	41 5d                	pop    %r13
    1d6e:	41 5e                	pop    %r14
    1d70:	41 5f                	pop    %r15
    1d72:	c3                   	ret    
    1d73:	41 57                	push   %r15
    1d75:	31 d2                	xor    %edx,%edx
    1d77:	49 bf a0 e2 00 00 00 	movabs $0xe2a0,%r15
    1d7e:	00 00 00 
    1d81:	bf 02 00 00 00       	mov    $0x2,%edi
    1d86:	48 b8 ef 2c 00 00 00 	movabs $0x2cef,%rax
    1d8d:	00 00 00 
    1d90:	41 56                	push   %r14
    1d92:	4c 89 fe             	mov    %r15,%rsi
    1d95:	41 55                	push   %r13
    1d97:	41 54                	push   %r12
    1d99:	55                   	push   %rbp
    1d9a:	53                   	push   %rbx
    1d9b:	48 83 ec 28          	sub    $0x28,%rsp
    1d9f:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
    1da4:	ff d0                	call   *%rax
    1da6:	48 85 c0             	test   %rax,%rax
    1da9:	75 08                	jne    0x1db3
    1dab:	45 31 e4             	xor    %r12d,%r12d
    1dae:	e9 04 01 00 00       	jmp    0x1eb7
    1db3:	48 89 c5             	mov    %rax,%rbp
    1db6:	48 89 c3             	mov    %rax,%rbx
    1db9:	45 31 e4             	xor    %r12d,%r12d
    1dbc:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1dc1:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    1dc5:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    1dca:	48 85 c0             	test   %rax,%rax
    1dcd:	0f 84 d5 00 00 00    	je     0x1ea8
    1dd3:	48 b8 7d 35 00 00 00 	movabs $0x357d,%rax
    1dda:	00 00 00 
    1ddd:	48 8b 3b             	mov    (%rbx),%rdi
    1de0:	ff d0                	call   *%rax
    1de2:	49 89 c5             	mov    %rax,%r13
    1de5:	48 85 c0             	test   %rax,%rax
    1de8:	0f 84 b1 00 00 00    	je     0x1e9f
    1dee:	48 89 c7             	mov    %rax,%rdi
    1df1:	48 b8 98 35 00 00 00 	movabs $0x3598,%rax
    1df8:	00 00 00 
    1dfb:	ff d0                	call   *%rax
    1dfd:	49 89 c6             	mov    %rax,%r14
    1e00:	48 85 c0             	test   %rax,%rax
    1e03:	0f 84 96 00 00 00    	je     0x1e9f
    1e09:	ba 02 00 00 00       	mov    $0x2,%edx
    1e0e:	48 8b 3b             	mov    (%rbx),%rdi
    1e11:	4c 89 fe             	mov    %r15,%rsi
    1e14:	48 b8 ec 2d 00 00 00 	movabs $0x2dec,%rax
    1e1b:	00 00 00 
    1e1e:	ff d0                	call   *%rax
    1e20:	48 89 c2             	mov    %rax,%rdx
    1e23:	48 85 c0             	test   %rax,%rax
    1e26:	74 77                	je     0x1e9f
    1e28:	48 8b 40 08          	mov    0x8(%rax),%rax
    1e2c:	48 85 c0             	test   %rax,%rax
    1e2f:	74 0e                	je     0x1e3f
    1e31:	81 38 45 58 50 69    	cmpl   $0x69505845,(%rax)
    1e37:	75 06                	jne    0x1e3f
    1e39:	83 78 0c 01          	cmpl   $0x1,0xc(%rax)
    1e3d:	74 60                	je     0x1e9f
    1e3f:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1e44:	bf 28 00 00 00       	mov    $0x28,%edi
    1e49:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    1e50:	00 00 00 
    1e53:	ff d0                	call   *%rax
    1e55:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    1e5a:	48 85 c0             	test   %rax,%rax
    1e5d:	75 27                	jne    0x1e86
    1e5f:	48 bb 12 5c 00 00 00 	movabs $0x5c12,%rbx
    1e66:	00 00 00 
    1e69:	48 89 ef             	mov    %rbp,%rdi
    1e6c:	ff d3                	call   *%rbx
    1e6e:	4d 85 e4             	test   %r12,%r12
    1e71:	0f 84 34 ff ff ff    	je     0x1dab
    1e77:	49 8b 6c 24 20       	mov    0x20(%r12),%rbp
    1e7c:	4c 89 e7             	mov    %r12,%rdi
    1e7f:	ff d3                	call   *%rbx
    1e81:	49 89 ec             	mov    %rbp,%r12
    1e84:	eb e8                	jmp    0x1e6e
    1e86:	48 8b 0b             	mov    (%rbx),%rcx
    1e89:	4c 89 68 08          	mov    %r13,0x8(%rax)
    1e8d:	4c 89 70 10          	mov    %r14,0x10(%rax)
    1e91:	48 89 08             	mov    %rcx,(%rax)
    1e94:	48 89 50 18          	mov    %rdx,0x18(%rax)
    1e98:	4c 89 60 20          	mov    %r12,0x20(%rax)
    1e9c:	49 89 c4             	mov    %rax,%r12
    1e9f:	48 83 c3 08          	add    $0x8,%rbx
    1ea3:	e9 14 ff ff ff       	jmp    0x1dbc
    1ea8:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    1eaf:	00 00 00 
    1eb2:	48 89 ef             	mov    %rbp,%rdi
    1eb5:	ff d0                	call   *%rax
    1eb7:	48 83 c4 28          	add    $0x28,%rsp
    1ebb:	4c 89 e0             	mov    %r12,%rax
    1ebe:	5b                   	pop    %rbx
    1ebf:	5d                   	pop    %rbp
    1ec0:	41 5c                	pop    %r12
    1ec2:	41 5d                	pop    %r13
    1ec4:	41 5e                	pop    %r14
    1ec6:	41 5f                	pop    %r15
    1ec8:	c3                   	ret    
    1ec9:	48 b8 e5 35 00 00 00 	movabs $0x35e5,%rax
    1ed0:	00 00 00 
    1ed3:	41 55                	push   %r13
    1ed5:	41 54                	push   %r12
    1ed7:	49 89 fc             	mov    %rdi,%r12
    1eda:	55                   	push   %rbp
    1edb:	53                   	push   %rbx
    1edc:	48 89 f3             	mov    %rsi,%rbx
    1edf:	51                   	push   %rcx
    1ee0:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1ee4:	ff d0                	call   *%rax
    1ee6:	48 85 c0             	test   %rax,%rax
    1ee9:	75 05                	jne    0x1ef0
    1eeb:	45 31 e4             	xor    %r12d,%r12d
    1eee:	eb 56                	jmp    0x1f46
    1ef0:	48 89 c5             	mov    %rax,%rbp
    1ef3:	48 89 c7             	mov    %rax,%rdi
    1ef6:	48 b8 98 35 00 00 00 	movabs $0x3598,%rax
    1efd:	00 00 00 
    1f00:	ff d0                	call   *%rax
    1f02:	48 85 c0             	test   %rax,%rax
    1f05:	74 e4                	je     0x1eeb
    1f07:	49 bd 68 3d 00 00 00 	movabs $0x3d68,%r13
    1f0e:	00 00 00 
    1f11:	c7 00 7f ff 04 00    	movl   $0x4ff7f,(%rax)
    1f17:	4d 85 e4             	test   %r12,%r12
    1f1a:	74 1b                	je     0x1f37
    1f1c:	49 39 dc             	cmp    %rbx,%r12
    1f1f:	75 07                	jne    0x1f28
    1f21:	4d 8b 64 24 20       	mov    0x20(%r12),%r12
    1f26:	eb ef                	jmp    0x1f17
    1f28:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
    1f2d:	48 89 ee             	mov    %rbp,%rsi
    1f30:	41 ff d5             	call   *%r13
    1f33:	85 c0                	test   %eax,%eax
    1f35:	75 ea                	jne    0x1f21
    1f37:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    1f3e:	00 00 00 
    1f41:	48 89 ef             	mov    %rbp,%rdi
    1f44:	ff d0                	call   *%rax
    1f46:	5a                   	pop    %rdx
    1f47:	4c 89 e0             	mov    %r12,%rax
    1f4a:	5b                   	pop    %rbx
    1f4b:	5d                   	pop    %rbp
    1f4c:	41 5c                	pop    %r12
    1f4e:	41 5d                	pop    %r13
    1f50:	c3                   	ret    
    1f51:	41 56                	push   %r14
    1f53:	49 be 68 3d 00 00 00 	movabs $0x3d68,%r14
    1f5a:	00 00 00 
    1f5d:	41 55                	push   %r13
    1f5f:	49 89 d5             	mov    %rdx,%r13
    1f62:	41 54                	push   %r12
    1f64:	45 31 e4             	xor    %r12d,%r12d
    1f67:	55                   	push   %rbp
    1f68:	48 89 fd             	mov    %rdi,%rbp
    1f6b:	53                   	push   %rbx
    1f6c:	48 89 f3             	mov    %rsi,%rbx
    1f6f:	48 85 db             	test   %rbx,%rbx
    1f72:	74 40                	je     0x1fb4
    1f74:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    1f78:	48 89 ee             	mov    %rbp,%rsi
    1f7b:	41 ff d6             	call   *%r14
    1f7e:	85 c0                	test   %eax,%eax
    1f80:	75 29                	jne    0x1fab
    1f82:	44 89 e1             	mov    %r12d,%ecx
    1f85:	be 0c 00 00 00       	mov    $0xc,%esi
    1f8a:	4c 89 ef             	mov    %r13,%rdi
    1f8d:	48 ba dd c3 00 00 00 	movabs $0xc3dd,%rdx
    1f94:	00 00 00 
    1f97:	49 b8 cb a7 00 00 00 	movabs $0xa7cb,%r8
    1f9e:	00 00 00 
    1fa1:	41 ff d0             	call   *%r8
    1fa4:	b8 01 00 00 00       	mov    $0x1,%eax
    1fa9:	eb 0b                	jmp    0x1fb6
    1fab:	48 8b 5b 20          	mov    0x20(%rbx),%rbx
    1faf:	41 ff c4             	inc    %r12d
    1fb2:	eb bb                	jmp    0x1f6f
    1fb4:	31 c0                	xor    %eax,%eax
    1fb6:	5b                   	pop    %rbx
    1fb7:	5d                   	pop    %rbp
    1fb8:	41 5c                	pop    %r12
    1fba:	41 5d                	pop    %r13
    1fbc:	41 5e                	pop    %r14
    1fbe:	c3                   	ret    
    1fbf:	48 b8 18 f8 00 00 00 	movabs $0xf818,%rax
    1fc6:	00 00 00 
    1fc9:	41 55                	push   %r13
    1fcb:	4c 8d 6e 01          	lea    0x1(%rsi),%r13
    1fcf:	41 54                	push   %r12
    1fd1:	4c 89 ea             	mov    %r13,%rdx
    1fd4:	49 bc 51 1f 00 00 00 	movabs $0x1f51,%r12
    1fdb:	00 00 00 
    1fde:	55                   	push   %rbp
    1fdf:	48 89 fd             	mov    %rdi,%rbp
    1fe2:	53                   	push   %rbx
    1fe3:	48 89 f3             	mov    %rsi,%rbx
    1fe6:	51                   	push   %rcx
    1fe7:	48 8b 30             	mov    (%rax),%rsi
    1fea:	41 ff d4             	call   *%r12
    1fed:	85 c0                	test   %eax,%eax
    1fef:	74 05                	je     0x1ff6
    1ff1:	c6 03 68             	movb   $0x68,(%rbx)
    1ff4:	eb 3c                	jmp    0x2032
    1ff6:	48 b8 20 f8 00 00 00 	movabs $0xf820,%rax
    1ffd:	00 00 00 
    2000:	4c 89 ea             	mov    %r13,%rdx
    2003:	48 8b 30             	mov    (%rax),%rsi
    2006:	48 89 ef             	mov    %rbp,%rdi
    2009:	41 ff d4             	call   *%r12
    200c:	85 c0                	test   %eax,%eax
    200e:	74 05                	je     0x2015
    2010:	c6 03 66             	movb   $0x66,(%rbx)
    2013:	eb 1d                	jmp    0x2032
    2015:	48 b8 10 f8 00 00 00 	movabs $0xf810,%rax
    201c:	00 00 00 
    201f:	4c 89 ea             	mov    %r13,%rdx
    2022:	48 8b 30             	mov    (%rax),%rsi
    2025:	48 89 ef             	mov    %rbp,%rdi
    2028:	41 ff d4             	call   *%r12
    202b:	85 c0                	test   %eax,%eax
    202d:	74 08                	je     0x2037
    202f:	c6 03 63             	movb   $0x63,(%rbx)
    2032:	b8 01 00 00 00       	mov    $0x1,%eax
    2037:	5a                   	pop    %rdx
    2038:	5b                   	pop    %rbx
    2039:	5d                   	pop    %rbp
    203a:	41 5c                	pop    %r12
    203c:	41 5d                	pop    %r13
    203e:	c3                   	ret    
    203f:	41 55                	push   %r13
    2041:	41 54                	push   %r12
    2043:	49 89 f4             	mov    %rsi,%r12
    2046:	55                   	push   %rbp
    2047:	48 bd 98 35 00 00 00 	movabs $0x3598,%rbp
    204e:	00 00 00 
    2051:	53                   	push   %rbx
    2052:	48 89 fb             	mov    %rdi,%rbx
    2055:	52                   	push   %rdx
    2056:	48 83 3b 00          	cmpq   $0x0,(%rbx)
    205a:	74 41                	je     0x209d
    205c:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
    2061:	ff d5                	call   *%rbp
    2063:	49 89 c5             	mov    %rax,%r13
    2066:	48 8b 03             	mov    (%rbx),%rax
    2069:	48 8b 78 08          	mov    0x8(%rax),%rdi
    206d:	ff d5                	call   *%rbp
    206f:	4c 89 ee             	mov    %r13,%rsi
    2072:	49 bd 68 3d 00 00 00 	movabs $0x3d68,%r13
    2079:	00 00 00 
    207c:	48 89 c7             	mov    %rax,%rdi
    207f:	41 ff d5             	call   *%r13
    2082:	85 c0                	test   %eax,%eax
    2084:	75 13                	jne    0x2099
    2086:	48 8b 03             	mov    (%rbx),%rax
    2089:	49 8b 74 24 08       	mov    0x8(%r12),%rsi
    208e:	48 8b 78 08          	mov    0x8(%rax),%rdi
    2092:	41 ff d5             	call   *%r13
    2095:	85 c0                	test   %eax,%eax
    2097:	74 4c                	je     0x20e5
    2099:	85 c0                	test   %eax,%eax
    209b:	7e 3c                	jle    0x20d9
    209d:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    20a4:	00 00 00 
    20a7:	bf 28 00 00 00       	mov    $0x28,%edi
    20ac:	ff d0                	call   *%rax
    20ae:	48 89 c5             	mov    %rax,%rbp
    20b1:	48 85 c0             	test   %rax,%rax
    20b4:	74 2f                	je     0x20e5
    20b6:	48 89 c7             	mov    %rax,%rdi
    20b9:	ba 28 00 00 00       	mov    $0x28,%edx
    20be:	4c 89 e6             	mov    %r12,%rsi
    20c1:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    20c8:	00 00 00 
    20cb:	ff d0                	call   *%rax
    20cd:	48 8b 03             	mov    (%rbx),%rax
    20d0:	48 89 45 20          	mov    %rax,0x20(%rbp)
    20d4:	48 89 2b             	mov    %rbp,(%rbx)
    20d7:	eb 0c                	jmp    0x20e5
    20d9:	48 8b 1b             	mov    (%rbx),%rbx
    20dc:	48 83 c3 20          	add    $0x20,%rbx
    20e0:	e9 71 ff ff ff       	jmp    0x2056
    20e5:	58                   	pop    %rax
    20e6:	5b                   	pop    %rbx
    20e7:	5d                   	pop    %rbp
    20e8:	41 5c                	pop    %r12
    20ea:	41 5d                	pop    %r13
    20ec:	c3                   	ret    
    20ed:	53                   	push   %rbx
    20ee:	48 89 f9             	mov    %rdi,%rcx
    20f1:	48 89 d3             	mov    %rdx,%rbx
    20f4:	48 89 f7             	mov    %rsi,%rdi
    20f7:	48 89 f0             	mov    %rsi,%rax
    20fa:	31 d2                	xor    %edx,%edx
    20fc:	48 85 c0             	test   %rax,%rax
    20ff:	74 0a                	je     0x210b
    2101:	48 03 50 08          	add    0x8(%rax),%rdx
    2105:	48 8b 40 28          	mov    0x28(%rax),%rax
    2109:	eb f1                	jmp    0x20fc
    210b:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    210f:	8b 49 18             	mov    0x18(%rcx),%ecx
    2112:	45 31 c0             	xor    %r8d,%r8d
    2115:	48 8b 46 08          	mov    0x8(%rsi),%rax
    2119:	83 e9 09             	sub    $0x9,%ecx
    211c:	48 d3 e0             	shl    %cl,%rax
    211f:	48 39 d0             	cmp    %rdx,%rax
    2122:	75 22                	jne    0x2146
    2124:	48 8b 46 10          	mov    0x10(%rsi),%rax
    2128:	48 d3 e0             	shl    %cl,%rax
    212b:	48 3b 47 10          	cmp    0x10(%rdi),%rax
    212f:	75 15                	jne    0x2146
    2131:	48 b8 8d b3 00 00 00 	movabs $0xb38d,%rax
    2138:	00 00 00 
    213b:	ff d0                	call   *%rax
    213d:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    2143:	48 89 03             	mov    %rax,(%rbx)
    2146:	44 89 c0             	mov    %r8d,%eax
    2149:	5b                   	pop    %rbx
    214a:	c3                   	ret    
    214b:	41 57                	push   %r15
    214d:	48 89 f8             	mov    %rdi,%rax
    2150:	41 56                	push   %r14
    2152:	41 55                	push   %r13
    2154:	41 54                	push   %r12
    2156:	55                   	push   %rbp
    2157:	48 89 cd             	mov    %rcx,%rbp
    215a:	53                   	push   %rbx
    215b:	49 89 ef             	mov    %rbp,%r15
    215e:	44 89 c3             	mov    %r8d,%ebx
    2161:	48 83 ec 18          	sub    $0x18,%rsp
    2165:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
    2169:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
    216e:	4c 8b 69 18          	mov    0x18(%rcx),%r13
    2172:	49 8b 4d 08          	mov    0x8(%r13),%rcx
    2176:	8b 79 10             	mov    0x10(%rcx),%edi
    2179:	b9 01 00 00 00       	mov    $0x1,%ecx
    217e:	85 ff                	test   %edi,%edi
    2180:	48 0f 44 f9          	cmove  %rcx,%rdi
    2184:	8b 48 18             	mov    0x18(%rax),%ecx
    2187:	4c 8d 77 ff          	lea    -0x1(%rdi),%r14
    218b:	48 d3 e2             	shl    %cl,%rdx
    218e:	49 89 d4             	mov    %rdx,%r12
    2191:	49 21 ee             	and    %rbp,%r14
    2194:	74 3e                	je     0x21d4
    2196:	48 b8 62 59 00 00 00 	movabs $0x5962,%rax
    219d:	00 00 00 
    21a0:	48 89 d6             	mov    %rdx,%rsi
    21a3:	ff d0                	call   *%rax
    21a5:	49 89 c7             	mov    %rax,%r15
    21a8:	48 b8 09 00 00 00 00 	movabs $0x8000000000000009,%rax
    21af:	00 00 80 
    21b2:	48 89 04 24          	mov    %rax,(%rsp)
    21b6:	4d 85 ff             	test   %r15,%r15
    21b9:	74 75                	je     0x2230
    21bb:	85 db                	test   %ebx,%ebx
    21bd:	74 15                	je     0x21d4
    21bf:	4c 89 e2             	mov    %r12,%rdx
    21c2:	48 89 ee             	mov    %rbp,%rsi
    21c5:	4c 89 ff             	mov    %r15,%rdi
    21c8:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    21cf:	00 00 00 
    21d2:	ff d0                	call   *%rax
    21d4:	49 8b 45 08          	mov    0x8(%r13),%rax
    21d8:	49 8b 7d 20          	mov    0x20(%r13),%rdi
    21dc:	85 db                	test   %ebx,%ebx
    21de:	4d 89 f9             	mov    %r15,%r9
    21e1:	49 0f 44 7d 18       	cmove  0x18(%r13),%rdi
    21e6:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    21eb:	4d 89 e0             	mov    %r12,%r8
    21ee:	4c 89 ee             	mov    %r13,%rsi
    21f1:	8b 10                	mov    (%rax),%edx
    21f3:	48 b8 c3 11 00 00 00 	movabs $0x11c3,%rax
    21fa:	00 00 00 
    21fd:	ff d0                	call   *%rax
    21ff:	48 89 04 24          	mov    %rax,(%rsp)
    2203:	4d 85 f6             	test   %r14,%r14
    2206:	74 28                	je     0x2230
    2208:	85 db                	test   %ebx,%ebx
    220a:	75 15                	jne    0x2221
    220c:	4c 89 e2             	mov    %r12,%rdx
    220f:	4c 89 fe             	mov    %r15,%rsi
    2212:	48 89 ef             	mov    %rbp,%rdi
    2215:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    221c:	00 00 00 
    221f:	ff d0                	call   *%rax
    2221:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    2228:	00 00 00 
    222b:	4c 89 ff             	mov    %r15,%rdi
    222e:	ff d0                	call   *%rax
    2230:	48 8b 04 24          	mov    (%rsp),%rax
    2234:	48 83 c4 18          	add    $0x18,%rsp
    2238:	5b                   	pop    %rbx
    2239:	5d                   	pop    %rbp
    223a:	41 5c                	pop    %r12
    223c:	41 5d                	pop    %r13
    223e:	41 5e                	pop    %r14
    2240:	41 5f                	pop    %r15
    2242:	c3                   	ret    
    2243:	41 56                	push   %r14
    2245:	49 89 ce             	mov    %rcx,%r14
    2248:	49 89 f1             	mov    %rsi,%r9
    224b:	49 89 d0             	mov    %rdx,%r8
    224e:	48 b9 e1 c3 00 00 00 	movabs $0xc3e1,%rcx
    2255:	00 00 00 
    2258:	41 55                	push   %r13
    225a:	49 89 d5             	mov    %rdx,%r13
    225d:	31 c0                	xor    %eax,%eax
    225f:	48 ba f8 c2 00 00 00 	movabs $0xc2f8,%rdx
    2266:	00 00 00 
    2269:	41 54                	push   %r12
    226b:	49 89 f4             	mov    %rsi,%r12
    226e:	49 ba b7 a6 00 00 00 	movabs $0xa6b7,%r10
    2275:	00 00 00 
    2278:	53                   	push   %rbx
    2279:	48 89 fb             	mov    %rdi,%rbx
    227c:	be 68 02 00 00       	mov    $0x268,%esi
    2281:	48 83 ec 10          	sub    $0x10,%rsp
    2285:	ff 37                	push   (%rdi)
    2287:	48 bf 00 c3 00 00 00 	movabs $0xc300,%rdi
    228e:	00 00 00 
    2291:	41 ff d2             	call   *%r10
    2294:	4c 89 ea             	mov    %r13,%rdx
    2297:	4c 89 f1             	mov    %r14,%rcx
    229a:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    22a0:	48 b8 4b 21 00 00 00 	movabs $0x214b,%rax
    22a7:	00 00 00 
    22aa:	4c 89 e6             	mov    %r12,%rsi
    22ad:	48 89 df             	mov    %rbx,%rdi
    22b0:	ff d0                	call   *%rax
    22b2:	41 5d                	pop    %r13
    22b4:	41 5e                	pop    %r14
    22b6:	48 ba 0c 00 00 00 00 	movabs $0x800000000000000c,%rdx
    22bd:	00 00 80 
    22c0:	48 39 d0             	cmp    %rdx,%rax
    22c3:	75 29                	jne    0x22ee
    22c5:	48 8b 13             	mov    (%rbx),%rdx
    22c8:	bf 0b 00 00 00       	mov    $0xb,%edi
    22cd:	41 5a                	pop    %r10
    22cf:	31 c0                	xor    %eax,%eax
    22d1:	48 be 13 c4 00 00 00 	movabs $0xc413,%rsi
    22d8:	00 00 00 
    22db:	5b                   	pop    %rbx
    22dc:	41 5c                	pop    %r12
    22de:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    22e5:	00 00 00 
    22e8:	41 5d                	pop    %r13
    22ea:	41 5e                	pop    %r14
    22ec:	ff e1                	jmp    *%rcx
    22ee:	48 85 c0             	test   %rax,%rax
    22f1:	74 2d                	je     0x2320
    22f3:	48 8b 0b             	mov    (%rbx),%rcx
    22f6:	4c 89 e2             	mov    %r12,%rdx
    22f9:	41 59                	pop    %r9
    22fb:	bf 0f 00 00 00       	mov    $0xf,%edi
    2300:	48 be 24 c4 00 00 00 	movabs $0xc424,%rsi
    2307:	00 00 00 
    230a:	5b                   	pop    %rbx
    230b:	31 c0                	xor    %eax,%eax
    230d:	41 5c                	pop    %r12
    230f:	49 b8 43 86 00 00 00 	movabs $0x8643,%r8
    2316:	00 00 00 
    2319:	41 5d                	pop    %r13
    231b:	41 5e                	pop    %r14
    231d:	41 ff e0             	jmp    *%r8
    2320:	5a                   	pop    %rdx
    2321:	31 c0                	xor    %eax,%eax
    2323:	5b                   	pop    %rbx
    2324:	41 5c                	pop    %r12
    2326:	41 5d                	pop    %r13
    2328:	41 5e                	pop    %r14
    232a:	c3                   	ret    
    232b:	41 56                	push   %r14
    232d:	49 89 ce             	mov    %rcx,%r14
    2330:	49 89 f1             	mov    %rsi,%r9
    2333:	49 89 d0             	mov    %rdx,%r8
    2336:	48 b9 4a c4 00 00 00 	movabs $0xc44a,%rcx
    233d:	00 00 00 
    2340:	41 55                	push   %r13
    2342:	49 89 d5             	mov    %rdx,%r13
    2345:	31 c0                	xor    %eax,%eax
    2347:	48 ba f8 c2 00 00 00 	movabs $0xc2f8,%rdx
    234e:	00 00 00 
    2351:	41 54                	push   %r12
    2353:	49 89 f4             	mov    %rsi,%r12
    2356:	49 ba b7 a6 00 00 00 	movabs $0xa6b7,%r10
    235d:	00 00 00 
    2360:	53                   	push   %rbx
    2361:	48 89 fb             	mov    %rdi,%rbx
    2364:	be 51 02 00 00       	mov    $0x251,%esi
    2369:	48 83 ec 10          	sub    $0x10,%rsp
    236d:	ff 37                	push   (%rdi)
    236f:	48 bf 00 c3 00 00 00 	movabs $0xc300,%rdi
    2376:	00 00 00 
    2379:	41 ff d2             	call   *%r10
    237c:	4c 89 ea             	mov    %r13,%rdx
    237f:	4c 89 f1             	mov    %r14,%rcx
    2382:	45 31 c0             	xor    %r8d,%r8d
    2385:	48 b8 4b 21 00 00 00 	movabs $0x214b,%rax
    238c:	00 00 00 
    238f:	4c 89 e6             	mov    %r12,%rsi
    2392:	48 89 df             	mov    %rbx,%rdi
    2395:	ff d0                	call   *%rax
    2397:	41 5d                	pop    %r13
    2399:	41 5e                	pop    %r14
    239b:	48 ba 0c 00 00 00 00 	movabs $0x800000000000000c,%rdx
    23a2:	00 00 80 
    23a5:	48 39 d0             	cmp    %rdx,%rax
    23a8:	75 29                	jne    0x23d3
    23aa:	48 8b 13             	mov    (%rbx),%rdx
    23ad:	bf 0b 00 00 00       	mov    $0xb,%edi
    23b2:	41 5a                	pop    %r10
    23b4:	31 c0                	xor    %eax,%eax
    23b6:	48 be 13 c4 00 00 00 	movabs $0xc413,%rsi
    23bd:	00 00 00 
    23c0:	5b                   	pop    %rbx
    23c1:	41 5c                	pop    %r12
    23c3:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    23ca:	00 00 00 
    23cd:	41 5d                	pop    %r13
    23cf:	41 5e                	pop    %r14
    23d1:	ff e1                	jmp    *%rcx
    23d3:	48 85 c0             	test   %rax,%rax
    23d6:	74 2d                	je     0x2405
    23d8:	48 8b 0b             	mov    (%rbx),%rcx
    23db:	4c 89 e2             	mov    %r12,%rdx
    23de:	41 59                	pop    %r9
    23e0:	bf 0e 00 00 00       	mov    $0xe,%edi
    23e5:	48 be 7e c4 00 00 00 	movabs $0xc47e,%rsi
    23ec:	00 00 00 
    23ef:	5b                   	pop    %rbx
    23f0:	31 c0                	xor    %eax,%eax
    23f2:	41 5c                	pop    %r12
    23f4:	49 b8 43 86 00 00 00 	movabs $0x8643,%r8
    23fb:	00 00 00 
    23fe:	41 5d                	pop    %r13
    2400:	41 5e                	pop    %r14
    2402:	41 ff e0             	jmp    *%r8
    2405:	5a                   	pop    %rdx
    2406:	31 c0                	xor    %eax,%eax
    2408:	5b                   	pop    %rbx
    2409:	41 5c                	pop    %r12
    240b:	41 5d                	pop    %r13
    240d:	41 5e                	pop    %r14
    240f:	c3                   	ret    
    2410:	41 57                	push   %r15
    2412:	41 56                	push   %r14
    2414:	41 55                	push   %r13
    2416:	49 bd 50 f8 00 00 00 	movabs $0xf850,%r13
    241d:	00 00 00 
    2420:	41 54                	push   %r12
    2422:	55                   	push   %rbp
    2423:	53                   	push   %rbx
    2424:	48 83 ec 28          	sub    $0x28,%rsp
    2428:	49 8b 45 00          	mov    0x0(%r13),%rax
    242c:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2431:	48 b8 a4 18 00 00 00 	movabs $0x18a4,%rax
    2438:	00 00 00 
    243b:	48 a3 18 f9 00 00 00 	movabs %rax,0xf918
    2442:	00 00 00 
    2445:	48 b8 73 1d 00 00 00 	movabs $0x1d73,%rax
    244c:	00 00 00 
    244f:	ff d0                	call   *%rax
    2451:	48 85 c0             	test   %rax,%rax
    2454:	0f 84 c5 01 00 00    	je     0x261f
    245a:	49 be c9 1e 00 00 00 	movabs $0x1ec9,%r14
    2461:	00 00 00 
    2464:	48 89 c5             	mov    %rax,%rbp
    2467:	48 89 c3             	mov    %rax,%rbx
    246a:	48 8b 43 10          	mov    0x10(%rbx),%rax
    246e:	48 85 c0             	test   %rax,%rax
    2471:	0f 84 80 00 00 00    	je     0x24f7
    2477:	8a 10                	mov    (%rax),%dl
    2479:	83 e2 7f             	and    $0x7f,%edx
    247c:	80 fa 04             	cmp    $0x4,%dl
    247f:	75 76                	jne    0x24f7
    2481:	8a 40 01             	mov    0x1(%rax),%al
    2484:	3c 01                	cmp    $0x1,%al
    2486:	74 09                	je     0x2491
    2488:	45 31 ff             	xor    %r15d,%r15d
    248b:	3c 02                	cmp    $0x2,%al
    248d:	74 08                	je     0x2497
    248f:	eb 66                	jmp    0x24f7
    2491:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    2497:	48 89 de             	mov    %rbx,%rsi
    249a:	48 89 ef             	mov    %rbp,%rdi
    249d:	41 ff d6             	call   *%r14
    24a0:	49 89 c4             	mov    %rax,%r12
    24a3:	48 85 c0             	test   %rax,%rax
    24a6:	74 4f                	je     0x24f7
    24a8:	48 89 c6             	mov    %rax,%rsi
    24ab:	48 89 ef             	mov    %rbp,%rdi
    24ae:	41 ff d6             	call   *%r14
    24b1:	48 85 c0             	test   %rax,%rax
    24b4:	75 39                	jne    0x24ef
    24b6:	49 83 7c 24 10 00    	cmpq   $0x0,0x10(%r12)
    24bc:	74 31                	je     0x24ef
    24be:	48 bf 18 f8 00 00 00 	movabs $0xf818,%rdi
    24c5:	00 00 00 
    24c8:	45 85 ff             	test   %r15d,%r15d
    24cb:	4c 89 e6             	mov    %r12,%rsi
    24ce:	48 b8 3f 20 00 00 00 	movabs $0x203f,%rax
    24d5:	00 00 00 
    24d8:	75 0a                	jne    0x24e4
    24da:	48 bf 10 f8 00 00 00 	movabs $0xf810,%rdi
    24e1:	00 00 00 
    24e4:	ff d0                	call   *%rax
    24e6:	49 c7 44 24 10 00 00 	movq   $0x0,0x10(%r12)
    24ed:	00 00 
    24ef:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
    24f6:	00 
    24f7:	48 8b 5b 20          	mov    0x20(%rbx),%rbx
    24fb:	48 85 db             	test   %rbx,%rbx
    24fe:	0f 85 66 ff ff ff    	jne    0x246a
    2504:	49 be 3f 20 00 00 00 	movabs $0x203f,%r14
    250b:	00 00 00 
    250e:	48 89 eb             	mov    %rbp,%rbx
    2511:	4c 8b 63 10          	mov    0x10(%rbx),%r12
    2515:	4d 85 e4             	test   %r12,%r12
    2518:	0f 84 e5 00 00 00    	je     0x2603
    251e:	41 8a 04 24          	mov    (%r12),%al
    2522:	83 e0 7f             	and    $0x7f,%eax
    2525:	3c 04                	cmp    $0x4,%al
    2527:	75 65                	jne    0x258e
    2529:	41 80 7c 24 01 03    	cmpb   $0x3,0x1(%r12)
    252f:	75 5d                	jne    0x258e
    2531:	48 b8 eb 85 05 2b b8 	movabs $0x49a9d8b82b0585eb,%rax
    2538:	d8 a9 49 
    253b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2540:	48 b8 8b 8c e2 1b 01 	movabs $0xb7f2ae011be28c8b,%rax
    2547:	ae f2 b7 
    254a:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    254f:	66 41 83 7c 24 02 14 	cmpw   $0x14,0x2(%r12)
    2556:	75 36                	jne    0x258e
    2558:	49 8d 7c 24 04       	lea    0x4(%r12),%rdi
    255d:	ba 10 00 00 00       	mov    $0x10,%edx
    2562:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    2567:	48 b8 e1 97 00 00 00 	movabs $0x97e1,%rax
    256e:	00 00 00 
    2571:	ff d0                	call   *%rax
    2573:	85 c0                	test   %eax,%eax
    2575:	75 17                	jne    0x258e
    2577:	48 b8 c9 1e 00 00 00 	movabs $0x1ec9,%rax
    257e:	00 00 00 
    2581:	48 89 de             	mov    %rbx,%rsi
    2584:	48 89 ef             	mov    %rbp,%rdi
    2587:	ff d0                	call   *%rax
    2589:	48 85 c0             	test   %rax,%rax
    258c:	75 75                	jne    0x2603
    258e:	48 8b 43 18          	mov    0x18(%rbx),%rax
    2592:	48 8b 50 08          	mov    0x8(%rax),%rdx
    2596:	41 8a 04 24          	mov    (%r12),%al
    259a:	83 e0 7f             	and    $0x7f,%eax
    259d:	3c 02                	cmp    $0x2,%al
    259f:	75 39                	jne    0x25da
    25a1:	41 80 7c 24 01 01    	cmpb   $0x1,0x1(%r12)
    25a7:	75 31                	jne    0x25da
    25a9:	41 8b 44 24 04       	mov    0x4(%r12),%eax
    25ae:	3d d0 41 04 06       	cmp    $0x60441d0,%eax
    25b3:	0f 94 c1             	sete   %cl
    25b6:	3d d0 41 00 07       	cmp    $0x70041d0,%eax
    25bb:	40 0f 94 c6          	sete   %sil
    25bf:	40 08 f1             	or     %sil,%cl
    25c2:	75 07                	jne    0x25cb
    25c4:	3d d1 41 01 07       	cmp    $0x70141d1,%eax
    25c9:	75 0f                	jne    0x25da
    25cb:	48 bf 20 f8 00 00 00 	movabs $0xf820,%rdi
    25d2:	00 00 00 
    25d5:	48 89 de             	mov    %rbx,%rsi
    25d8:	eb 26                	jmp    0x2600
    25da:	80 7a 07 00          	cmpb   $0x0,0x7(%rdx)
    25de:	48 89 de             	mov    %rbx,%rsi
    25e1:	74 13                	je     0x25f6
    25e3:	81 7a 0c 00 02 00 00 	cmpl   $0x200,0xc(%rdx)
    25ea:	48 bf 10 f8 00 00 00 	movabs $0xf810,%rdi
    25f1:	00 00 00 
    25f4:	77 0a                	ja     0x2600
    25f6:	48 bf 18 f8 00 00 00 	movabs $0xf818,%rdi
    25fd:	00 00 00 
    2600:	41 ff d6             	call   *%r14
    2603:	48 8b 5b 20          	mov    0x20(%rbx),%rbx
    2607:	48 85 db             	test   %rbx,%rbx
    260a:	0f 85 01 ff ff ff    	jne    0x2511
    2610:	48 b8 83 18 00 00 00 	movabs $0x1883,%rax
    2617:	00 00 00 
    261a:	48 89 ef             	mov    %rbp,%rdi
    261d:	ff d0                	call   *%rax
    261f:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    2624:	49 2b 45 00          	sub    0x0(%r13),%rax
    2628:	74 0c                	je     0x2636
    262a:	48 b8 40 3e 00 00 00 	movabs $0x3e40,%rax
    2631:	00 00 00 
    2634:	ff d0                	call   *%rax
    2636:	48 bf 60 e2 00 00 00 	movabs $0xe260,%rdi
    263d:	00 00 00 
    2640:	48 83 c4 28          	add    $0x28,%rsp
    2644:	48 b8 fe 6d 00 00 00 	movabs $0x6dfe,%rax
    264b:	00 00 00 
    264e:	5b                   	pop    %rbx
    264f:	5d                   	pop    %rbp
    2650:	41 5c                	pop    %r12
    2652:	41 5d                	pop    %r13
    2654:	41 5e                	pop    %r14
    2656:	41 5f                	pop    %r15
    2658:	ff e0                	jmp    *%rax
    265a:	41 57                	push   %r15
    265c:	41 56                	push   %r14
    265e:	41 55                	push   %r13
    2660:	41 54                	push   %r12
    2662:	45 31 e4             	xor    %r12d,%r12d
    2665:	55                   	push   %rbp
    2666:	53                   	push   %rbx
    2667:	48 83 ec 18          	sub    $0x18,%rsp
    266b:	48 8b 47 08          	mov    0x8(%rdi),%rax
    266f:	83 78 08 03          	cmpl   $0x3,0x8(%rax)
    2673:	0f 85 1d 01 00 00    	jne    0x2796
    2679:	48 8b 07             	mov    (%rdi),%rax
    267c:	4c 8b 77 40          	mov    0x40(%rdi),%r14
    2680:	48 89 fb             	mov    %rdi,%rbx
    2683:	8a 00                	mov    (%rax),%al
    2685:	3c 66                	cmp    $0x66,%al
    2687:	74 15                	je     0x269e
    2689:	3c 68                	cmp    $0x68,%al
    268b:	74 0a                	je     0x2697
    268d:	3c 63                	cmp    $0x63,%al
    268f:	0f 85 01 01 00 00    	jne    0x2796
    2695:	eb 07                	jmp    0x269e
    2697:	48 83 7f 28 00       	cmpq   $0x0,0x28(%rdi)
    269c:	75 08                	jne    0x26a6
    269e:	4d 8b 26             	mov    (%r14),%r12
    26a1:	e9 f0 00 00 00       	jmp    0x2796
    26a6:	48 b8 73 1d 00 00 00 	movabs $0x1d73,%rax
    26ad:	00 00 00 
    26b0:	49 bf e5 35 00 00 00 	movabs $0x35e5,%r15
    26b7:	00 00 00 
    26ba:	ff d0                	call   *%rax
    26bc:	49 89 c5             	mov    %rax,%r13
    26bf:	49 89 c4             	mov    %rax,%r12
    26c2:	4d 85 e4             	test   %r12,%r12
    26c5:	0f 84 bc 00 00 00    	je     0x2787
    26cb:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
    26d0:	41 ff d7             	call   *%r15
    26d3:	48 89 c5             	mov    %rax,%rbp
    26d6:	48 85 c0             	test   %rax,%rax
    26d9:	0f 84 9e 00 00 00    	je     0x277d
    26df:	48 89 c7             	mov    %rax,%rdi
    26e2:	48 b8 98 35 00 00 00 	movabs $0x3598,%rax
    26e9:	00 00 00 
    26ec:	ff d0                	call   *%rax
    26ee:	48 85 c0             	test   %rax,%rax
    26f1:	0f 84 86 00 00 00    	je     0x277d
    26f7:	c7 00 7f ff 04 00    	movl   $0x4ff7f,(%rax)
    26fd:	48 89 ef             	mov    %rbp,%rdi
    2700:	49 8b 76 08          	mov    0x8(%r14),%rsi
    2704:	48 b8 68 3d 00 00 00 	movabs $0x3d68,%rax
    270b:	00 00 00 
    270e:	ff d0                	call   *%rax
    2710:	48 89 ef             	mov    %rbp,%rdi
    2713:	48 ba 12 5c 00 00 00 	movabs $0x5c12,%rdx
    271a:	00 00 00 
    271d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    2721:	ff d2                	call   *%rdx
    2723:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    2727:	85 c0                	test   %eax,%eax
    2729:	75 52                	jne    0x277d
    272b:	49 8b 44 24 10       	mov    0x10(%r12),%rax
    2730:	8a 10                	mov    (%rax),%dl
    2732:	83 e2 7f             	and    $0x7f,%edx
    2735:	80 fa 04             	cmp    $0x4,%dl
    2738:	75 43                	jne    0x277d
    273a:	80 78 01 01          	cmpb   $0x1,0x1(%rax)
    273e:	75 3d                	jne    0x277d
    2740:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
    2744:	31 f6                	xor    %esi,%esi
    2746:	48 89 fa             	mov    %rdi,%rdx
    2749:	48 85 d2             	test   %rdx,%rdx
    274c:	74 0a                	je     0x2758
    274e:	48 03 72 08          	add    0x8(%rdx),%rsi
    2752:	48 8b 52 28          	mov    0x28(%rdx),%rdx
    2756:	eb f1                	jmp    0x2749
    2758:	8b 4b 18             	mov    0x18(%rbx),%ecx
    275b:	48 8b 50 08          	mov    0x8(%rax),%rdx
    275f:	83 e9 09             	sub    $0x9,%ecx
    2762:	48 d3 e2             	shl    %cl,%rdx
    2765:	48 39 f2             	cmp    %rsi,%rdx
    2768:	75 13                	jne    0x277d
    276a:	48 8b 40 10          	mov    0x10(%rax),%rax
    276e:	48 d3 e0             	shl    %cl,%rax
    2771:	48 3b 47 10          	cmp    0x10(%rdi),%rax
    2775:	75 06                	jne    0x277d
    2777:	4d 8b 24 24          	mov    (%r12),%r12
    277b:	eb 0a                	jmp    0x2787
    277d:	4d 8b 64 24 20       	mov    0x20(%r12),%r12
    2782:	e9 3b ff ff ff       	jmp    0x26c2
    2787:	48 b8 83 18 00 00 00 	movabs $0x1883,%rax
    278e:	00 00 00 
    2791:	4c 89 ef             	mov    %r13,%rdi
    2794:	ff d0                	call   *%rax
    2796:	48 83 c4 18          	add    $0x18,%rsp
    279a:	4c 89 e0             	mov    %r12,%rax
    279d:	5b                   	pop    %rbx
    279e:	5d                   	pop    %rbp
    279f:	41 5c                	pop    %r12
    27a1:	41 5d                	pop    %r13
    27a3:	41 5e                	pop    %r14
    27a5:	41 5f                	pop    %r15
    27a7:	c3                   	ret    
    27a8:	41 56                	push   %r14
    27aa:	41 55                	push   %r13
    27ac:	41 54                	push   %r12
    27ae:	55                   	push   %rbp
    27af:	53                   	push   %rbx
    27b0:	48 bb 50 f8 00 00 00 	movabs $0xf850,%rbx
    27b7:	00 00 00 
    27ba:	48 83 ec 40          	sub    $0x40,%rsp
    27be:	48 8b 03             	mov    (%rbx),%rax
    27c1:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    27c6:	48 b8 7d 35 00 00 00 	movabs $0x357d,%rax
    27cd:	00 00 00 
    27d0:	ff d0                	call   *%rax
    27d2:	48 85 c0             	test   %rax,%rax
    27d5:	0f 84 a4 00 00 00    	je     0x287f
    27db:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    27e0:	48 89 c7             	mov    %rax,%rdi
    27e3:	48 bd 98 35 00 00 00 	movabs $0x3598,%rbp
    27ea:	00 00 00 
    27ed:	ff d5                	call   *%rbp
    27ef:	49 89 c4             	mov    %rax,%r12
    27f2:	48 85 c0             	test   %rax,%rax
    27f5:	0f 84 84 00 00 00    	je     0x287f
    27fb:	8a 00                	mov    (%rax),%al
    27fd:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    2802:	83 e0 7f             	and    $0x7f,%eax
    2805:	3c 04                	cmp    $0x4,%al
    2807:	0f 85 5c 01 00 00    	jne    0x2969
    280d:	41 8a 44 24 01       	mov    0x1(%r12),%al
    2812:	ff c8                	dec    %eax
    2814:	3c 01                	cmp    $0x1,%al
    2816:	0f 87 4d 01 00 00    	ja     0x2969
    281c:	48 b8 e5 35 00 00 00 	movabs $0x35e5,%rax
    2823:	00 00 00 
    2826:	ff d0                	call   *%rax
    2828:	49 89 c5             	mov    %rax,%r13
    282b:	48 85 c0             	test   %rax,%rax
    282e:	74 4f                	je     0x287f
    2830:	4c 89 ef             	mov    %r13,%rdi
    2833:	ff d5                	call   *%rbp
    2835:	48 85 c0             	test   %rax,%rax
    2838:	74 1d                	je     0x2857
    283a:	8a 10                	mov    (%rax),%dl
    283c:	83 e2 7f             	and    $0x7f,%edx
    283f:	80 fa 04             	cmp    $0x4,%dl
    2842:	75 13                	jne    0x2857
    2844:	8a 48 01             	mov    0x1(%rax),%cl
    2847:	8d 51 ff             	lea    -0x1(%rcx),%edx
    284a:	80 fa 01             	cmp    $0x1,%dl
    284d:	77 08                	ja     0x2857
    284f:	c7 00 7f ff 04 00    	movl   $0x4ff7f,(%rax)
    2855:	eb d9                	jmp    0x2830
    2857:	48 8d 74 24 2b       	lea    0x2b(%rsp),%rsi
    285c:	4c 89 ef             	mov    %r13,%rdi
    285f:	48 b8 bf 1f 00 00 00 	movabs $0x1fbf,%rax
    2866:	00 00 00 
    2869:	49 be 12 5c 00 00 00 	movabs $0x5c12,%r14
    2870:	00 00 00 
    2873:	ff d0                	call   *%rax
    2875:	85 c0                	test   %eax,%eax
    2877:	75 0d                	jne    0x2886
    2879:	4c 89 ef             	mov    %r13,%rdi
    287c:	41 ff d6             	call   *%r14
    287f:	31 c0                	xor    %eax,%eax
    2881:	e9 0d 01 00 00       	jmp    0x2993
    2886:	48 b8 d6 6e 00 00 00 	movabs $0x6ed6,%rax
    288d:	00 00 00 
    2890:	48 8d 7c 24 2b       	lea    0x2b(%rsp),%rdi
    2895:	ff d0                	call   *%rax
    2897:	4c 89 ef             	mov    %r13,%rdi
    289a:	48 89 c5             	mov    %rax,%rbp
    289d:	41 ff d6             	call   *%r14
    28a0:	48 85 ed             	test   %rbp,%rbp
    28a3:	74 da                	je     0x287f
    28a5:	49 83 7c 24 08 00    	cmpq   $0x0,0x8(%r12)
    28ab:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
    28b0:	49 bd 3c 6e 00 00 00 	movabs $0x6e3c,%r13
    28b7:	00 00 00 
    28ba:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
    28c1:	00 00 
    28c3:	75 34                	jne    0x28f9
    28c5:	8b 45 18             	mov    0x18(%rbp),%eax
    28c8:	4d 8b 64 24 10       	mov    0x10(%r12),%r12
    28cd:	48 89 ef             	mov    %rbp,%rdi
    28d0:	8d 48 f7             	lea    -0x9(%rax),%ecx
    28d3:	48 b8 f5 74 00 00 00 	movabs $0x74f5,%rax
    28da:	00 00 00 
    28dd:	49 d3 e4             	shl    %cl,%r12
    28e0:	ff d0                	call   *%rax
    28e2:	49 39 c4             	cmp    %rax,%r12
    28e5:	75 12                	jne    0x28f9
    28e7:	48 b8 48 9a 00 00 00 	movabs $0x9a48,%rax
    28ee:	00 00 00 
    28f1:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    28f5:	ff d0                	call   *%rax
    28f7:	eb 5e                	jmp    0x2957
    28f9:	48 8d 54 24 18       	lea    0x18(%rsp),%rdx
    28fe:	48 89 ef             	mov    %rbp,%rdi
    2901:	48 be ed 20 00 00 00 	movabs $0x20ed,%rsi
    2908:	00 00 00 
    290b:	48 b8 19 b3 00 00 00 	movabs $0xb319,%rax
    2912:	00 00 00 
    2915:	ff d0                	call   *%rax
    2917:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    291c:	48 85 d2             	test   %rdx,%rdx
    291f:	75 08                	jne    0x2929
    2921:	48 89 ef             	mov    %rbp,%rdi
    2924:	41 ff d5             	call   *%r13
    2927:	eb 59                	jmp    0x2982
    2929:	48 bf a6 c4 00 00 00 	movabs $0xc4a6,%rdi
    2930:	00 00 00 
    2933:	48 8b 75 00          	mov    0x0(%rbp),%rsi
    2937:	31 c0                	xor    %eax,%eax
    2939:	48 b9 a8 a8 00 00 00 	movabs $0xa8a8,%rcx
    2940:	00 00 00 
    2943:	ff d1                	call   *%rcx
    2945:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    294a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    294f:	41 ff d6             	call   *%r14
    2952:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2957:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    295c:	48 89 ef             	mov    %rbp,%rdi
    295f:	41 ff d5             	call   *%r13
    2962:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2967:	eb 2a                	jmp    0x2993
    2969:	48 b8 bf 1f 00 00 00 	movabs $0x1fbf,%rax
    2970:	00 00 00 
    2973:	48 8d 74 24 2b       	lea    0x2b(%rsp),%rsi
    2978:	ff d0                	call   *%rax
    297a:	85 c0                	test   %eax,%eax
    297c:	0f 84 fd fe ff ff    	je     0x287f
    2982:	48 b8 48 9a 00 00 00 	movabs $0x9a48,%rax
    2989:	00 00 00 
    298c:	48 8d 7c 24 2b       	lea    0x2b(%rsp),%rdi
    2991:	ff d0                	call   *%rax
    2993:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
    2998:	48 2b 13             	sub    (%rbx),%rdx
    299b:	74 0c                	je     0x29a9
    299d:	48 b8 40 3e 00 00 00 	movabs $0x3e40,%rax
    29a4:	00 00 00 
    29a7:	ff d0                	call   *%rax
    29a9:	48 83 c4 40          	add    $0x40,%rsp
    29ad:	5b                   	pop    %rbx
    29ae:	5d                   	pop    %rbp
    29af:	41 5c                	pop    %r12
    29b1:	41 5d                	pop    %r13
    29b3:	41 5e                	pop    %r14
    29b5:	c3                   	ret    
    29b6:	48 89 f8             	mov    %rdi,%rax
    29b9:	49 89 d0             	mov    %rdx,%r8
    29bc:	31 ff                	xor    %edi,%edi
    29be:	49 83 e8 01          	sub    $0x1,%r8
    29c2:	0f 82 ec 00 00 00    	jb     0x2ab4
    29c8:	0f b7 16             	movzwl (%rsi),%edx
    29cb:	4c 8d 4e 02          	lea    0x2(%rsi),%r9
    29cf:	89 d1                	mov    %edx,%ecx
    29d1:	85 ff                	test   %edi,%edi
    29d3:	74 61                	je     0x2a36
    29d5:	8d 8a 00 24 ff ff    	lea    -0xdc00(%rdx),%ecx
    29db:	81 f9 ff 03 00 00    	cmp    $0x3ff,%ecx
    29e1:	77 46                	ja     0x2a29
    29e3:	81 ef 00 d8 00 00    	sub    $0xd800,%edi
    29e9:	48 83 c0 04          	add    $0x4,%rax
    29ed:	c1 e7 0a             	shl    $0xa,%edi
    29f0:	8d 94 3a 00 24 00 00 	lea    0x2400(%rdx,%rdi,1),%edx
    29f7:	89 d1                	mov    %edx,%ecx
    29f9:	c1 e9 12             	shr    $0x12,%ecx
    29fc:	83 c9 f0             	or     $0xfffffff0,%ecx
    29ff:	88 48 fc             	mov    %cl,-0x4(%rax)
    2a02:	89 d1                	mov    %edx,%ecx
    2a04:	c1 e9 0c             	shr    $0xc,%ecx
    2a07:	83 e1 3f             	and    $0x3f,%ecx
    2a0a:	83 c9 80             	or     $0xffffff80,%ecx
    2a0d:	88 48 fd             	mov    %cl,-0x3(%rax)
    2a10:	89 d1                	mov    %edx,%ecx
    2a12:	83 e2 3f             	and    $0x3f,%edx
    2a15:	c1 e9 06             	shr    $0x6,%ecx
    2a18:	83 ca 80             	or     $0xffffff80,%edx
    2a1b:	83 e1 3f             	and    $0x3f,%ecx
    2a1e:	88 50 ff             	mov    %dl,-0x1(%rax)
    2a21:	83 c9 80             	or     $0xffffff80,%ecx
    2a24:	88 48 fe             	mov    %cl,-0x2(%rax)
    2a27:	eb 09                	jmp    0x2a32
    2a29:	c6 00 3f             	movb   $0x3f,(%rax)
    2a2c:	49 89 f1             	mov    %rsi,%r9
    2a2f:	48 ff c0             	inc    %rax
    2a32:	31 ff                	xor    %edi,%edi
    2a34:	eb 76                	jmp    0x2aac
    2a36:	83 fa 7f             	cmp    $0x7f,%edx
    2a39:	77 04                	ja     0x2a3f
    2a3b:	88 10                	mov    %dl,(%rax)
    2a3d:	eb 3f                	jmp    0x2a7e
    2a3f:	81 fa ff 07 00 00    	cmp    $0x7ff,%edx
    2a45:	77 18                	ja     0x2a5f
    2a47:	c1 ea 06             	shr    $0x6,%edx
    2a4a:	83 e1 3f             	and    $0x3f,%ecx
    2a4d:	48 83 c0 02          	add    $0x2,%rax
    2a51:	83 ca c0             	or     $0xffffffc0,%edx
    2a54:	83 c9 80             	or     $0xffffff80,%ecx
    2a57:	88 50 fe             	mov    %dl,-0x2(%rax)
    2a5a:	88 48 ff             	mov    %cl,-0x1(%rax)
    2a5d:	eb 4d                	jmp    0x2aac
    2a5f:	8d b2 00 28 ff ff    	lea    -0xd800(%rdx),%esi
    2a65:	81 fe ff 03 00 00    	cmp    $0x3ff,%esi
    2a6b:	76 3d                	jbe    0x2aaa
    2a6d:	8d b2 00 24 ff ff    	lea    -0xdc00(%rdx),%esi
    2a73:	81 fe ff 03 00 00    	cmp    $0x3ff,%esi
    2a79:	77 08                	ja     0x2a83
    2a7b:	c6 00 3f             	movb   $0x3f,(%rax)
    2a7e:	48 ff c0             	inc    %rax
    2a81:	eb 29                	jmp    0x2aac
    2a83:	89 d6                	mov    %edx,%esi
    2a85:	c1 ea 06             	shr    $0x6,%edx
    2a88:	83 e1 3f             	and    $0x3f,%ecx
    2a8b:	48 83 c0 03          	add    $0x3,%rax
    2a8f:	c1 ee 0c             	shr    $0xc,%esi
    2a92:	83 e2 3f             	and    $0x3f,%edx
    2a95:	83 c9 80             	or     $0xffffff80,%ecx
    2a98:	83 ce e0             	or     $0xffffffe0,%esi
    2a9b:	83 ca 80             	or     $0xffffff80,%edx
    2a9e:	88 48 ff             	mov    %cl,-0x1(%rax)
    2aa1:	40 88 70 fd          	mov    %sil,-0x3(%rax)
    2aa5:	88 50 fe             	mov    %dl,-0x2(%rax)
    2aa8:	eb 02                	jmp    0x2aac
    2aaa:	89 d7                	mov    %edx,%edi
    2aac:	4c 89 ce             	mov    %r9,%rsi
    2aaf:	e9 0a ff ff ff       	jmp    0x29be
    2ab4:	c3                   	ret    
    2ab5:	41 56                	push   %r14
    2ab7:	41 55                	push   %r13
    2ab9:	49 bd 0a a6 00 00 00 	movabs $0xa60a,%r13
    2ac0:	00 00 00 
    2ac3:	41 54                	push   %r12
    2ac5:	55                   	push   %rbp
    2ac6:	53                   	push   %rbx
    2ac7:	44 0f b7 66 02       	movzwl 0x2(%rsi),%r12d
    2acc:	48 89 f3             	mov    %rsi,%rbx
    2acf:	0f b7 4e 08          	movzwl 0x8(%rsi),%ecx
    2ad3:	8b 56 04             	mov    0x4(%rsi),%edx
    2ad6:	41 83 ec 14          	sub    $0x14,%r12d
    2ada:	41 54                	push   %r12
    2adc:	0f b6 46 13          	movzbl 0x13(%rsi),%eax
    2ae0:	50                   	push   %rax
    2ae1:	0f b6 46 12          	movzbl 0x12(%rsi),%eax
    2ae5:	50                   	push   %rax
    2ae6:	0f b6 46 11          	movzbl 0x11(%rsi),%eax
    2aea:	50                   	push   %rax
    2aeb:	0f b6 46 10          	movzbl 0x10(%rsi),%eax
    2aef:	50                   	push   %rax
    2af0:	0f b6 46 0f          	movzbl 0xf(%rsi),%eax
    2af4:	50                   	push   %rax
    2af5:	0f b6 46 0e          	movzbl 0xe(%rsi),%eax
    2af9:	50                   	push   %rax
    2afa:	0f b6 46 0d          	movzbl 0xd(%rsi),%eax
    2afe:	50                   	push   %rax
    2aff:	31 c0                	xor    %eax,%eax
    2b01:	44 0f b6 4e 0c       	movzbl 0xc(%rsi),%r9d
    2b06:	44 0f b7 46 0a       	movzwl 0xa(%rsi),%r8d
    2b0b:	48 89 fe             	mov    %rdi,%rsi
    2b0e:	48 bf ac c4 00 00 00 	movabs $0xc4ac,%rdi
    2b15:	00 00 00 
    2b18:	41 ff d5             	call   *%r13
    2b1b:	48 83 c4 40          	add    $0x40,%rsp
    2b1f:	66 83 7b 02 14       	cmpw   $0x14,0x2(%rbx)
    2b24:	77 19                	ja     0x2b3f
    2b26:	48 bf ed c4 00 00 00 	movabs $0xc4ed,%rdi
    2b2d:	00 00 00 
    2b30:	5b                   	pop    %rbx
    2b31:	4c 89 ea             	mov    %r13,%rdx
    2b34:	5d                   	pop    %rbp
    2b35:	31 c0                	xor    %eax,%eax
    2b37:	41 5c                	pop    %r12
    2b39:	41 5d                	pop    %r13
    2b3b:	41 5e                	pop    %r14
    2b3d:	ff e2                	jmp    *%rdx
    2b3f:	49 be ef c4 00 00 00 	movabs $0xc4ef,%r14
    2b46:	00 00 00 
    2b49:	31 ed                	xor    %ebp,%ebp
    2b4b:	41 39 ec             	cmp    %ebp,%r12d
    2b4e:	76 d6                	jbe    0x2b26
    2b50:	0f b6 74 2b 14       	movzbl 0x14(%rbx,%rbp,1),%esi
    2b55:	4c 89 f7             	mov    %r14,%rdi
    2b58:	31 c0                	xor    %eax,%eax
    2b5a:	48 ff c5             	inc    %rbp
    2b5d:	41 ff d5             	call   *%r13
    2b60:	eb e9                	jmp    0x2b4b
    2b62:	49 89 ca             	mov    %rcx,%r10
    2b65:	49 89 f8             	mov    %rdi,%r8
    2b68:	48 89 f8             	mov    %rdi,%rax
    2b6b:	49 89 f1             	mov    %rsi,%r9
    2b6e:	31 c9                	xor    %ecx,%ecx
    2b70:	31 ff                	xor    %edi,%edi
    2b72:	4d 85 d2             	test   %r10,%r10
    2b75:	74 05                	je     0x2b7c
    2b77:	48 85 f6             	test   %rsi,%rsi
    2b7a:	75 07                	jne    0x2b83
    2b7c:	4c 29 c0             	sub    %r8,%rax
    2b7f:	48 d1 f8             	sar    %rax
    2b82:	c3                   	ret    
    2b83:	53                   	push   %rbx
    2b84:	49 83 fa ff          	cmp    $0xffffffffffffffff,%r10
    2b88:	74 03                	je     0x2b8d
    2b8a:	49 ff ca             	dec    %r10
    2b8d:	40 8a 32             	mov    (%rdx),%sil
    2b90:	4c 8d 5a 01          	lea    0x1(%rdx),%r11
    2b94:	85 ff                	test   %edi,%edi
    2b96:	74 32                	je     0x2bca
    2b98:	89 f3                	mov    %esi,%ebx
    2b9a:	83 e3 c0             	and    $0xffffffc0,%ebx
    2b9d:	80 fb 80             	cmp    $0x80,%bl
    2ba0:	0f 85 85 00 00 00    	jne    0x2c2b
    2ba6:	c1 e1 06             	shl    $0x6,%ecx
    2ba9:	83 e6 3f             	and    $0x3f,%esi
    2bac:	ff cf                	dec    %edi
    2bae:	09 f1                	or     %esi,%ecx
    2bb0:	83 ff 01             	cmp    $0x1,%edi
    2bb3:	75 05                	jne    0x2bba
    2bb5:	83 f9 1f             	cmp    $0x1f,%ecx
    2bb8:	eb 08                	jmp    0x2bc2
    2bba:	83 ff 02             	cmp    $0x2,%edi
    2bbd:	75 62                	jne    0x2c21
    2bbf:	83 f9 0f             	cmp    $0xf,%ecx
    2bc2:	0f 87 c7 00 00 00    	ja     0x2c8f
    2bc8:	eb 61                	jmp    0x2c2b
    2bca:	40 0f b6 ce          	movzbl %sil,%ecx
    2bce:	40 84 f6             	test   %sil,%sil
    2bd1:	79 52                	jns    0x2c25
    2bd3:	89 f2                	mov    %esi,%edx
    2bd5:	83 e2 e0             	and    $0xffffffe0,%edx
    2bd8:	80 fa c0             	cmp    $0xc0,%dl
    2bdb:	75 10                	jne    0x2bed
    2bdd:	40 f6 c6 1e          	test   $0x1e,%sil
    2be1:	74 4b                	je     0x2c2e
    2be3:	89 f1                	mov    %esi,%ecx
    2be5:	83 e1 1f             	and    $0x1f,%ecx
    2be8:	e9 9d 00 00 00       	jmp    0x2c8a
    2bed:	89 f2                	mov    %esi,%edx
    2bef:	83 e2 f0             	and    $0xfffffff0,%edx
    2bf2:	80 fa e0             	cmp    $0xe0,%dl
    2bf5:	75 0f                	jne    0x2c06
    2bf7:	89 f1                	mov    %esi,%ecx
    2bf9:	bf 02 00 00 00       	mov    $0x2,%edi
    2bfe:	83 e1 0f             	and    $0xf,%ecx
    2c01:	e9 89 00 00 00       	jmp    0x2c8f
    2c06:	89 f2                	mov    %esi,%edx
    2c08:	b9 3f 00 00 00       	mov    $0x3f,%ecx
    2c0d:	83 e2 f8             	and    $0xfffffff8,%edx
    2c10:	80 fa f0             	cmp    $0xf0,%dl
    2c13:	75 1e                	jne    0x2c33
    2c15:	89 f1                	mov    %esi,%ecx
    2c17:	bf 03 00 00 00       	mov    $0x3,%edi
    2c1c:	83 e1 07             	and    $0x7,%ecx
    2c1f:	eb 6e                	jmp    0x2c8f
    2c21:	85 ff                	test   %edi,%edi
    2c23:	75 65                	jne    0x2c8a
    2c25:	85 c9                	test   %ecx,%ecx
    2c27:	75 0a                	jne    0x2c33
    2c29:	eb 75                	jmp    0x2ca0
    2c2b:	49 89 d3             	mov    %rdx,%r11
    2c2e:	b9 3f 00 00 00       	mov    $0x3f,%ecx
    2c33:	49 83 f9 01          	cmp    $0x1,%r9
    2c37:	75 0a                	jne    0x2c43
    2c39:	81 f9 ff ff 00 00    	cmp    $0xffff,%ecx
    2c3f:	76 3b                	jbe    0x2c7c
    2c41:	eb 5d                	jmp    0x2ca0
    2c43:	81 f9 ff ff 00 00    	cmp    $0xffff,%ecx
    2c49:	76 31                	jbe    0x2c7c
    2c4b:	8d 91 00 00 ff ff    	lea    -0x10000(%rcx),%edx
    2c51:	49 83 e9 02          	sub    $0x2,%r9
    2c55:	48 83 c0 04          	add    $0x4,%rax
    2c59:	c1 ea 0a             	shr    $0xa,%edx
    2c5c:	66 81 e2 ff 03       	and    $0x3ff,%dx
    2c61:	66 81 ca 00 d8       	or     $0xd800,%dx
    2c66:	66 89 50 fc          	mov    %dx,-0x4(%rax)
    2c6a:	89 ca                	mov    %ecx,%edx
    2c6c:	66 81 e2 ff 03       	and    $0x3ff,%dx
    2c71:	66 81 ca 00 dc       	or     $0xdc00,%dx
    2c76:	66 89 50 fe          	mov    %dx,-0x2(%rax)
    2c7a:	eb 0a                	jmp    0x2c86
    2c7c:	66 89 08             	mov    %cx,(%rax)
    2c7f:	49 ff c9             	dec    %r9
    2c82:	48 83 c0 02          	add    $0x2,%rax
    2c86:	31 ff                	xor    %edi,%edi
    2c88:	eb 05                	jmp    0x2c8f
    2c8a:	bf 01 00 00 00       	mov    $0x1,%edi
    2c8f:	4c 89 da             	mov    %r11,%rdx
    2c92:	4d 85 d2             	test   %r10,%r10
    2c95:	74 09                	je     0x2ca0
    2c97:	4d 85 c9             	test   %r9,%r9
    2c9a:	0f 85 e4 fe ff ff    	jne    0x2b84
    2ca0:	4c 29 c0             	sub    %r8,%rax
    2ca3:	5b                   	pop    %rbx
    2ca4:	48 d1 f8             	sar    %rax
    2ca7:	c3                   	ret    
    2ca8:	48 83 ec 18          	sub    $0x18,%rsp
    2cac:	49 89 f8             	mov    %rdi,%r8
    2caf:	48 89 f2             	mov    %rsi,%rdx
    2cb2:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    2cb9:	00 00 00 
    2cbc:	4c 89 c6             	mov    %r8,%rsi
    2cbf:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    2cc4:	48 8b 40 60          	mov    0x60(%rax),%rax
    2cc8:	48 8b b8 40 01 00 00 	mov    0x140(%rax),%rdi
    2ccf:	48 b8 9e 11 00 00 00 	movabs $0x119e,%rax
    2cd6:	00 00 00 
    2cd9:	ff d0                	call   *%rax
    2cdb:	49 89 c0             	mov    %rax,%r8
    2cde:	31 c0                	xor    %eax,%eax
    2ce0:	4d 85 c0             	test   %r8,%r8
    2ce3:	75 05                	jne    0x2cea
    2ce5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2cea:	48 83 c4 18          	add    $0x18,%rsp
    2cee:	c3                   	ret    
    2cef:	41 57                	push   %r15
    2cf1:	49 bf c3 5b 00 00 00 	movabs $0x5bc3,%r15
    2cf8:	00 00 00 
    2cfb:	41 56                	push   %r14
    2cfd:	41 89 fe             	mov    %edi,%r14d
    2d00:	bf 40 00 00 00       	mov    $0x40,%edi
    2d05:	41 55                	push   %r13
    2d07:	49 89 d5             	mov    %rdx,%r13
    2d0a:	41 54                	push   %r12
    2d0c:	55                   	push   %rbp
    2d0d:	53                   	push   %rbx
    2d0e:	48 83 ec 28          	sub    $0x28,%rsp
    2d12:	48 89 34 24          	mov    %rsi,(%rsp)
    2d16:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    2d1b:	48 c7 44 24 18 40 00 	movq   $0x40,0x18(%rsp)
    2d22:	00 00 
    2d24:	41 ff d7             	call   *%r15
    2d27:	48 85 c0             	test   %rax,%rax
    2d2a:	0f 84 95 00 00 00    	je     0x2dc5
    2d30:	48 89 c5             	mov    %rax,%rbp
    2d33:	48 8b 14 24          	mov    (%rsp),%rdx
    2d37:	4c 8d 44 24 18       	lea    0x18(%rsp),%r8
    2d3c:	4c 89 e9             	mov    %r13,%rcx
    2d3f:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    2d46:	00 00 00 
    2d49:	49 89 e9             	mov    %rbp,%r9
    2d4c:	4c 89 f6             	mov    %r14,%rsi
    2d4f:	48 bb c3 11 00 00 00 	movabs $0x11c3,%rbx
    2d56:	00 00 00 
    2d59:	4c 8b 60 60          	mov    0x60(%rax),%r12
    2d5d:	49 8b bc 24 b0 00 00 	mov    0xb0(%r12),%rdi
    2d64:	00 
    2d65:	ff d3                	call   *%rbx
    2d67:	48 ba 05 00 00 00 00 	movabs $0x8000000000000005,%rdx
    2d6e:	00 00 80 
    2d71:	48 39 d0             	cmp    %rdx,%rax
    2d74:	75 3b                	jne    0x2db1
    2d76:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    2d7d:	00 00 00 
    2d80:	48 89 ef             	mov    %rbp,%rdi
    2d83:	ff d0                	call   *%rax
    2d85:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2d8a:	41 ff d7             	call   *%r15
    2d8d:	48 89 c5             	mov    %rax,%rbp
    2d90:	48 85 c0             	test   %rax,%rax
    2d93:	74 30                	je     0x2dc5
    2d95:	48 8b 14 24          	mov    (%rsp),%rdx
    2d99:	49 89 c1             	mov    %rax,%r9
    2d9c:	4c 8d 44 24 18       	lea    0x18(%rsp),%r8
    2da1:	4c 89 e9             	mov    %r13,%rcx
    2da4:	49 8b bc 24 b0 00 00 	mov    0xb0(%r12),%rdi
    2dab:	00 
    2dac:	4c 89 f6             	mov    %r14,%rsi
    2daf:	ff d3                	call   *%rbx
    2db1:	48 85 c0             	test   %rax,%rax
    2db4:	74 13                	je     0x2dc9
    2db6:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    2dbd:	00 00 00 
    2dc0:	48 89 ef             	mov    %rbp,%rdi
    2dc3:	ff d0                	call   *%rax
    2dc5:	31 ed                	xor    %ebp,%ebp
    2dc7:	eb 11                	jmp    0x2dda
    2dc9:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    2dce:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    2dd3:	48 c1 e8 03          	shr    $0x3,%rax
    2dd7:	48 89 03             	mov    %rax,(%rbx)
    2dda:	48 83 c4 28          	add    $0x28,%rsp
    2dde:	48 89 e8             	mov    %rbp,%rax
    2de1:	5b                   	pop    %rbx
    2de2:	5d                   	pop    %rbp
    2de3:	41 5c                	pop    %r12
    2de5:	41 5d                	pop    %r13
    2de7:	41 5e                	pop    %r14
    2de9:	41 5f                	pop    %r15
    2deb:	c3                   	ret    
    2dec:	48 83 ec 20          	sub    $0x20,%rsp
    2df0:	89 d2                	mov    %edx,%edx
    2df2:	49 89 fa             	mov    %rdi,%r10
    2df5:	45 31 c9             	xor    %r9d,%r9d
    2df8:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    2dff:	00 00 00 
    2e02:	48 8b 40 60          	mov    0x60(%rax),%rax
    2e06:	48 8b b8 18 01 00 00 	mov    0x118(%rax),%rdi
    2e0d:	52                   	push   %rdx
    2e0e:	48 89 f2             	mov    %rsi,%rdx
    2e11:	4c 89 d6             	mov    %r10,%rsi
    2e14:	48 b8 30 f8 00 00 00 	movabs $0xf830,%rax
    2e1b:	00 00 00 
    2e1e:	4c 8b 00             	mov    (%rax),%r8
    2e21:	48 b8 dc 11 00 00 00 	movabs $0x11dc,%rax
    2e28:	00 00 00 
    2e2b:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
    2e30:	ff d0                	call   *%rax
    2e32:	49 89 c0             	mov    %rax,%r8
    2e35:	58                   	pop    %rax
    2e36:	31 c0                	xor    %eax,%eax
    2e38:	5a                   	pop    %rdx
    2e39:	4d 85 c0             	test   %r8,%r8
    2e3c:	75 05                	jne    0x2e43
    2e3e:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2e43:	48 83 c4 18          	add    $0x18,%rsp
    2e47:	c3                   	ret    
    2e48:	48 b8 a8 2c 00 00 00 	movabs $0x2ca8,%rax
    2e4f:	00 00 00 
    2e52:	55                   	push   %rbp
    2e53:	31 f6                	xor    %esi,%esi
    2e55:	53                   	push   %rbx
    2e56:	89 fb                	mov    %edi,%ebx
    2e58:	48 bf d0 e2 00 00 00 	movabs $0xe2d0,%rdi
    2e5f:	00 00 00 
    2e62:	48 83 ec 18          	sub    $0x18,%rsp
    2e66:	ff d0                	call   *%rax
    2e68:	48 85 c0             	test   %rax,%rax
    2e6b:	75 07                	jne    0x2e74
    2e6d:	b8 01 00 00 00       	mov    $0x1,%eax
    2e72:	eb 59                	jmp    0x2ecd
    2e74:	48 8b 38             	mov    (%rax),%rdi
    2e77:	45 31 c0             	xor    %r8d,%r8d
    2e7a:	48 89 c6             	mov    %rax,%rsi
    2e7d:	48 89 c5             	mov    %rax,%rbp
    2e80:	31 c9                	xor    %ecx,%ecx
    2e82:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    2e87:	48 b8 af 11 00 00 00 	movabs $0x11af,%rax
    2e8e:	00 00 00 
    2e91:	ff d0                	call   *%rax
    2e93:	49 89 c0             	mov    %rax,%r8
    2e96:	31 c0                	xor    %eax,%eax
    2e98:	4d 85 c0             	test   %r8,%r8
    2e9b:	75 30                	jne    0x2ecd
    2e9d:	85 db                	test   %ebx,%ebx
    2e9f:	0f 94 c0             	sete   %al
    2ea2:	0f 94 c2             	sete   %dl
    2ea5:	0f b6 c0             	movzbl %al,%eax
    2ea8:	39 44 24 0c          	cmp    %eax,0xc(%rsp)
    2eac:	74 bf                	je     0x2e6d
    2eae:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
    2eb2:	0f b6 d2             	movzbl %dl,%edx
    2eb5:	48 89 ee             	mov    %rbp,%rsi
    2eb8:	48 b8 90 11 00 00 00 	movabs $0x1190,%rax
    2ebf:	00 00 00 
    2ec2:	ff d0                	call   *%rax
    2ec4:	48 85 c0             	test   %rax,%rax
    2ec7:	0f 94 c0             	sete   %al
    2eca:	0f b6 c0             	movzbl %al,%eax
    2ecd:	48 83 c4 18          	add    $0x18,%rsp
    2ed1:	5b                   	pop    %rbx
    2ed2:	5d                   	pop    %rbp
    2ed3:	c3                   	ret    
    2ed4:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    2edb:	00 00 00 
    2ede:	48 89 fe             	mov    %rdi,%rsi
    2ee1:	48 8b 40 60          	mov    0x60(%rax),%rax
    2ee5:	48 8b b8 f8 00 00 00 	mov    0xf8(%rax),%rdi
    2eec:	48 b8 82 11 00 00 00 	movabs $0x1182,%rax
    2ef3:	00 00 00 
    2ef6:	ff e0                	jmp    *%rax
    2ef8:	48 be c0 e2 00 00 00 	movabs $0xe2c0,%rsi
    2eff:	00 00 00 
    2f02:	ba 02 00 00 00       	mov    $0x2,%edx
    2f07:	48 b8 ec 2d 00 00 00 	movabs $0x2dec,%rax
    2f0e:	00 00 00 
    2f11:	ff e0                	jmp    *%rax
    2f13:	bf 05 00 00 00       	mov    $0x5,%edi
    2f18:	50                   	push   %rax
    2f19:	48 b8 94 12 00 00 00 	movabs $0x1294,%rax
    2f20:	00 00 00 
    2f23:	ff d0                	call   *%rax
    2f25:	45 31 c0             	xor    %r8d,%r8d
    2f28:	31 c9                	xor    %ecx,%ecx
    2f2a:	31 d2                	xor    %edx,%edx
    2f2c:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    2f33:	00 00 00 
    2f36:	31 f6                	xor    %esi,%esi
    2f38:	48 8b 40 58          	mov    0x58(%rax),%rax
    2f3c:	48 8b 78 68          	mov    0x68(%rax),%rdi
    2f40:	48 b8 af 11 00 00 00 	movabs $0x11af,%rax
    2f47:	00 00 00 
    2f4a:	ff d0                	call   *%rax
    2f4c:	eb fe                	jmp    0x2f4c
    2f4e:	bf 01 00 00 00       	mov    $0x1,%edi
    2f53:	50                   	push   %rax
    2f54:	48 b8 94 12 00 00 00 	movabs $0x1294,%rax
    2f5b:	00 00 00 
    2f5e:	ff d0                	call   *%rax
    2f60:	45 31 c0             	xor    %r8d,%r8d
    2f63:	31 c9                	xor    %ecx,%ecx
    2f65:	31 d2                	xor    %edx,%edx
    2f67:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    2f6e:	00 00 00 
    2f71:	48 8b 40 60          	mov    0x60(%rax),%rax
    2f75:	48 8b b8 d8 00 00 00 	mov    0xd8(%rax),%rdi
    2f7c:	48 b8 30 f8 00 00 00 	movabs $0xf830,%rax
    2f83:	00 00 00 
    2f86:	48 8b 30             	mov    (%rax),%rsi
    2f89:	48 b8 af 11 00 00 00 	movabs $0x11af,%rax
    2f90:	00 00 00 
    2f93:	ff d0                	call   *%rax
    2f95:	eb fe                	jmp    0x2f95
    2f97:	41 50                	push   %r8
    2f99:	49 89 f9             	mov    %rdi,%r9
    2f9c:	49 89 c8             	mov    %rcx,%r8
    2f9f:	89 d1                	mov    %edx,%ecx
    2fa1:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    2fa8:	00 00 00 
    2fab:	48 89 f2             	mov    %rsi,%rdx
    2fae:	4c 89 ce             	mov    %r9,%rsi
    2fb1:	48 8b 40 58          	mov    0x58(%rax),%rax
    2fb5:	48 8b 78 38          	mov    0x38(%rax),%rdi
    2fb9:	48 b8 af 11 00 00 00 	movabs $0x11af,%rax
    2fc0:	00 00 00 
    2fc3:	ff d0                	call   *%rax
    2fc5:	48 85 c0             	test   %rax,%rax
    2fc8:	74 1e                	je     0x2fe8
    2fca:	48 be f5 c4 00 00 00 	movabs $0xc4f5,%rsi
    2fd1:	00 00 00 
    2fd4:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2fd9:	31 c0                	xor    %eax,%eax
    2fdb:	59                   	pop    %rcx
    2fdc:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    2fe3:	00 00 00 
    2fe6:	ff e2                	jmp    *%rdx
    2fe8:	31 c0                	xor    %eax,%eax
    2fea:	5a                   	pop    %rdx
    2feb:	c3                   	ret    
    2fec:	48 b8 37 9a 00 00 00 	movabs $0x9a37,%rax
    2ff3:	00 00 00 
    2ff6:	41 57                	push   %r15
    2ff8:	49 89 d7             	mov    %rdx,%r15
    2ffb:	41 56                	push   %r14
    2ffd:	49 89 f6             	mov    %rsi,%r14
    3000:	41 55                	push   %r13
    3002:	41 54                	push   %r12
    3004:	49 89 fc             	mov    %rdi,%r12
    3007:	55                   	push   %rbp
    3008:	53                   	push   %rbx
    3009:	48 89 cb             	mov    %rcx,%rbx
    300c:	41 51                	push   %r9
    300e:	ff d0                	call   *%rax
    3010:	be 02 00 00 00       	mov    $0x2,%esi
    3015:	49 89 c5             	mov    %rax,%r13
    3018:	48 8d 78 01          	lea    0x1(%rax),%rdi
    301c:	48 b8 5b 5b 00 00 00 	movabs $0x5b5b,%rax
    3023:	00 00 00 
    3026:	ff d0                	call   *%rax
    3028:	48 85 c0             	test   %rax,%rax
    302b:	75 0e                	jne    0x303b
    302d:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    3034:	00 00 
    3036:	e9 94 00 00 00       	jmp    0x30cf
    303b:	48 89 c5             	mov    %rax,%rbp
    303e:	4c 89 e9             	mov    %r13,%rcx
    3041:	4c 89 ee             	mov    %r13,%rsi
    3044:	48 89 c7             	mov    %rax,%rdi
    3047:	48 b8 62 2b 00 00 00 	movabs $0x2b62,%rax
    304e:	00 00 00 
    3051:	4c 89 e2             	mov    %r12,%rdx
    3054:	ff d0                	call   *%rax
    3056:	4d 89 f9             	mov    %r15,%r9
    3059:	49 89 d8             	mov    %rbx,%r8
    305c:	b9 07 00 00 00       	mov    $0x7,%ecx
    3061:	66 c7 44 45 00 00 00 	movw   $0x0,0x0(%rbp,%rax,2)
    3068:	4c 89 f2             	mov    %r14,%rdx
    306b:	48 89 ee             	mov    %rbp,%rsi
    306e:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    3075:	00 00 00 
    3078:	48 8b 40 58          	mov    0x58(%rax),%rax
    307c:	48 8b 78 58          	mov    0x58(%rax),%rdi
    3080:	48 b8 c3 11 00 00 00 	movabs $0x11c3,%rax
    3087:	00 00 00 
    308a:	ff d0                	call   *%rax
    308c:	48 89 ef             	mov    %rbp,%rdi
    308f:	49 89 c5             	mov    %rax,%r13
    3092:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    3099:	00 00 00 
    309c:	ff d0                	call   *%rax
    309e:	31 c0                	xor    %eax,%eax
    30a0:	4d 85 ed             	test   %r13,%r13
    30a3:	74 2a                	je     0x30cf
    30a5:	41 58                	pop    %r8
    30a7:	4c 89 e2             	mov    %r12,%rdx
    30aa:	5b                   	pop    %rbx
    30ab:	bf 1d 00 00 00       	mov    $0x1d,%edi
    30b0:	48 be 14 c5 00 00 00 	movabs $0xc514,%rsi
    30b7:	00 00 00 
    30ba:	5d                   	pop    %rbp
    30bb:	41 5c                	pop    %r12
    30bd:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    30c4:	00 00 00 
    30c7:	41 5d                	pop    %r13
    30c9:	41 5e                	pop    %r14
    30cb:	41 5f                	pop    %r15
    30cd:	ff e1                	jmp    *%rcx
    30cf:	5a                   	pop    %rdx
    30d0:	5b                   	pop    %rbx
    30d1:	5d                   	pop    %rbp
    30d2:	41 5c                	pop    %r12
    30d4:	41 5d                	pop    %r13
    30d6:	41 5e                	pop    %r14
    30d8:	41 5f                	pop    %r15
    30da:	c3                   	ret    
    30db:	48 b8 37 9a 00 00 00 	movabs $0x9a37,%rax
    30e2:	00 00 00 
    30e5:	41 57                	push   %r15
    30e7:	41 56                	push   %r14
    30e9:	49 be 09 00 00 00 00 	movabs $0x8000000000000009,%r14
    30f0:	00 00 80 
    30f3:	41 55                	push   %r13
    30f5:	49 89 f5             	mov    %rsi,%r13
    30f8:	41 54                	push   %r12
    30fa:	49 89 fc             	mov    %rdi,%r12
    30fd:	55                   	push   %rbp
    30fe:	53                   	push   %rbx
    30ff:	48 83 ec 38          	sub    $0x38,%rsp
    3103:	48 c7 01 00 00 00 00 	movq   $0x0,(%rcx)
    310a:	48 89 14 24          	mov    %rdx,(%rsp)
    310e:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    3113:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    3118:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
    311f:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
    3126:	00 00 
    3128:	ff d0                	call   *%rax
    312a:	be 02 00 00 00       	mov    $0x2,%esi
    312f:	48 8d 78 01          	lea    0x1(%rax),%rdi
    3133:	49 89 c7             	mov    %rax,%r15
    3136:	48 b8 5b 5b 00 00 00 	movabs $0x5b5b,%rax
    313d:	00 00 00 
    3140:	ff d0                	call   *%rax
    3142:	48 85 c0             	test   %rax,%rax
    3145:	0f 84 ec 00 00 00    	je     0x3237
    314b:	48 89 c5             	mov    %rax,%rbp
    314e:	4c 89 f9             	mov    %r15,%rcx
    3151:	4c 89 e2             	mov    %r12,%rdx
    3154:	4c 89 fe             	mov    %r15,%rsi
    3157:	49 bf c3 11 00 00 00 	movabs $0x11c3,%r15
    315e:	00 00 00 
    3161:	48 89 c7             	mov    %rax,%rdi
    3164:	48 b8 62 2b 00 00 00 	movabs $0x2b62,%rax
    316b:	00 00 00 
    316e:	48 bb 12 5c 00 00 00 	movabs $0x5c12,%rbx
    3175:	00 00 00 
    3178:	ff d0                	call   *%rax
    317a:	45 31 c9             	xor    %r9d,%r9d
    317d:	31 c9                	xor    %ecx,%ecx
    317f:	4c 89 ea             	mov    %r13,%rdx
    3182:	66 c7 44 45 00 00 00 	movw   $0x0,0x0(%rbp,%rax,2)
    3189:	4c 8d 44 24 28       	lea    0x28(%rsp),%r8
    318e:	48 89 ee             	mov    %rbp,%rsi
    3191:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    3198:	00 00 00 
    319b:	4c 8b 60 58          	mov    0x58(%rax),%r12
    319f:	49 8b 7c 24 48       	mov    0x48(%r12),%rdi
    31a4:	41 ff d7             	call   *%r15
    31a7:	48 ba 05 00 00 00 00 	movabs $0x8000000000000005,%rdx
    31ae:	00 00 80 
    31b1:	48 39 d0             	cmp    %rdx,%rax
    31b4:	49 89 c6             	mov    %rax,%r14
    31b7:	75 0a                	jne    0x31c3
    31b9:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    31be:	48 85 ff             	test   %rdi,%rdi
    31c1:	75 05                	jne    0x31c8
    31c3:	48 89 ef             	mov    %rbp,%rdi
    31c6:	eb 6d                	jmp    0x3235
    31c8:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    31cf:	00 00 00 
    31d2:	ff d0                	call   *%rax
    31d4:	49 89 c1             	mov    %rax,%r9
    31d7:	48 85 c0             	test   %rax,%rax
    31da:	75 11                	jne    0x31ed
    31dc:	49 be 09 00 00 00 00 	movabs $0x8000000000000009,%r14
    31e3:	00 00 80 
    31e6:	48 89 ef             	mov    %rbp,%rdi
    31e9:	ff d3                	call   *%rbx
    31eb:	eb 4a                	jmp    0x3237
    31ed:	49 8b 7c 24 48       	mov    0x48(%r12),%rdi
    31f2:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    31f7:	4c 89 ea             	mov    %r13,%rdx
    31fa:	48 89 ee             	mov    %rbp,%rsi
    31fd:	4c 8d 44 24 28       	lea    0x28(%rsp),%r8
    3202:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    3207:	41 ff d7             	call   *%r15
    320a:	48 89 ef             	mov    %rbp,%rdi
    320d:	49 89 c6             	mov    %rax,%r14
    3210:	ff d3                	call   *%rbx
    3212:	4d 85 f6             	test   %r14,%r14
    3215:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    321a:	75 16                	jne    0x3232
    321c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    3221:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
    3226:	4c 89 08             	mov    %r9,(%rax)
    3229:	48 8b 04 24          	mov    (%rsp),%rax
    322d:	48 89 10             	mov    %rdx,(%rax)
    3230:	eb 05                	jmp    0x3237
    3232:	4c 89 cf             	mov    %r9,%rdi
    3235:	ff d3                	call   *%rbx
    3237:	48 83 c4 38          	add    $0x38,%rsp
    323b:	4c 89 f0             	mov    %r14,%rax
    323e:	5b                   	pop    %rbx
    323f:	5d                   	pop    %rbp
    3240:	41 5c                	pop    %r12
    3242:	41 5d                	pop    %r13
    3244:	41 5e                	pop    %r14
    3246:	41 5f                	pop    %r15
    3248:	c3                   	ret    
    3249:	48 b8 db 30 00 00 00 	movabs $0x30db,%rax
    3250:	00 00 00 
    3253:	45 31 c0             	xor    %r8d,%r8d
    3256:	ff e0                	jmp    *%rax
    3258:	48 b8 30 f8 00 00 00 	movabs $0xf830,%rax
    325f:	00 00 00 
    3262:	41 56                	push   %r14
    3264:	41 55                	push   %r13
    3266:	41 54                	push   %r12
    3268:	55                   	push   %rbp
    3269:	53                   	push   %rbx
    326a:	48 8b 38             	mov    (%rax),%rdi
    326d:	48 b8 f8 2e 00 00 00 	movabs $0x2ef8,%rax
    3274:	00 00 00 
    3277:	ff d0                	call   *%rax
    3279:	48 89 c3             	mov    %rax,%rbx
    327c:	31 c0                	xor    %eax,%eax
    327e:	48 85 db             	test   %rbx,%rbx
    3281:	0f 84 e2 00 00 00    	je     0x3369
    3287:	4c 8b 6b 40          	mov    0x40(%rbx),%r13
    328b:	45 31 e4             	xor    %r12d,%r12d
    328e:	49 be 34 c5 00 00 00 	movabs $0xc534,%r14
    3295:	00 00 00 
    3298:	41 0f b7 85 94 00 00 	movzwl 0x94(%r13),%eax
    329f:	00 
    32a0:	49 8d ac 05 98 00 00 	lea    0x98(%r13,%rax,1),%rbp
    32a7:	00 
    32a8:	66 45 39 a5 86 00 00 	cmp    %r12w,0x86(%r13)
    32af:	00 
    32b0:	76 16                	jbe    0x32c8
    32b2:	48 b8 06 98 00 00 00 	movabs $0x9806,%rax
    32b9:	00 00 00 
    32bc:	4c 89 f6             	mov    %r14,%rsi
    32bf:	48 89 ef             	mov    %rbp,%rdi
    32c2:	ff d0                	call   *%rax
    32c4:	85 c0                	test   %eax,%eax
    32c6:	75 42                	jne    0x330a
    32c8:	66 45 39 a5 86 00 00 	cmp    %r12w,0x86(%r13)
    32cf:	00 
    32d0:	45 0f b7 c4          	movzwl %r12w,%r8d
    32d4:	48 ba 5f c5 00 00 00 	movabs $0xc55f,%rdx
    32db:	00 00 00 
    32de:	48 bf 68 c5 00 00 00 	movabs $0xc568,%rdi
    32e5:	00 00 00 
    32e8:	49 ba b7 a6 00 00 00 	movabs $0xa6b7,%r10
    32ef:	00 00 00 
    32f2:	75 1f                	jne    0x3313
    32f4:	48 b9 39 c5 00 00 00 	movabs $0xc539,%rcx
    32fb:	00 00 00 
    32fe:	be 45 01 00 00       	mov    $0x145,%esi
    3303:	31 c0                	xor    %eax,%eax
    3305:	41 ff d2             	call   *%r10
    3308:	eb 41                	jmp    0x334b
    330a:	41 ff c4             	inc    %r12d
    330d:	48 83 c5 28          	add    $0x28,%rbp
    3311:	eb 95                	jmp    0x32a8
    3313:	8b 45 0c             	mov    0xc(%rbp),%eax
    3316:	48 03 43 40          	add    0x40(%rbx),%rax
    331a:	80 7d 00 2e          	cmpb   $0x2e,0x0(%rbp)
    331e:	48 89 c3             	mov    %rax,%rbx
    3321:	74 2c                	je     0x334f
    3323:	44 8b 08             	mov    (%rax),%r9d
    3326:	41 81 f9 6d 69 6d 67 	cmp    $0x676d696d,%r9d
    332d:	74 20                	je     0x334f
    332f:	48 b9 77 c5 00 00 00 	movabs $0xc577,%rcx
    3336:	00 00 00 
    3339:	be 4d 01 00 00       	mov    $0x14d,%esi
    333e:	50                   	push   %rax
    333f:	31 c0                	xor    %eax,%eax
    3341:	68 6d 69 6d 67       	push   $0x676d696d
    3346:	41 ff d2             	call   *%r10
    3349:	5a                   	pop    %rdx
    334a:	59                   	pop    %rcx
    334b:	31 c0                	xor    %eax,%eax
    334d:	eb 1a                	jmp    0x3369
    334f:	31 c0                	xor    %eax,%eax
    3351:	49 89 e9             	mov    %rbp,%r9
    3354:	be 53 01 00 00       	mov    $0x153,%esi
    3359:	48 b9 a6 c5 00 00 00 	movabs $0xc5a6,%rcx
    3360:	00 00 00 
    3363:	41 ff d2             	call   *%r10
    3366:	48 89 d8             	mov    %rbx,%rax
    3369:	5b                   	pop    %rbx
    336a:	5d                   	pop    %rbp
    336b:	41 5c                	pop    %r12
    336d:	41 5d                	pop    %r13
    336f:	41 5e                	pop    %r14
    3371:	c3                   	ret    
    3372:	41 57                	push   %r15
    3374:	41 56                	push   %r14
    3376:	41 55                	push   %r13
    3378:	49 89 fd             	mov    %rdi,%r13
    337b:	41 54                	push   %r12
    337d:	55                   	push   %rbp
    337e:	53                   	push   %rbx
    337f:	51                   	push   %rcx
    3380:	48 85 ff             	test   %rdi,%rdi
    3383:	0f 84 f9 00 00 00    	je     0x3482
    3389:	48 89 f9             	mov    %rdi,%rcx
    338c:	31 ff                	xor    %edi,%edi
    338e:	8a 01                	mov    (%rcx),%al
    3390:	40 8a 71 01          	mov    0x1(%rcx),%sil
    3394:	83 e0 7f             	and    $0x7f,%eax
    3397:	3c 7f                	cmp    $0x7f,%al
    3399:	74 5a                	je     0x33f5
    339b:	0f b7 51 02          	movzwl 0x2(%rcx),%edx
    339f:	3c 04                	cmp    $0x4,%al
    33a1:	75 47                	jne    0x33ea
    33a3:	40 80 fe 04          	cmp    $0x4,%sil
    33a7:	75 41                	jne    0x33ea
    33a9:	44 0f b7 c2          	movzwl %dx,%r8d
    33ad:	66 83 fa 03          	cmp    $0x3,%dx
    33b1:	77 25                	ja     0x33d8
    33b3:	44 89 c2             	mov    %r8d,%edx
    33b6:	bf 0b 00 00 00       	mov    $0xb,%edi
    33bb:	31 c0                	xor    %eax,%eax
    33bd:	48 be d3 c5 00 00 00 	movabs $0xc5d3,%rsi
    33c4:	00 00 00 
    33c7:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    33ce:	00 00 00 
    33d1:	ff d1                	call   *%rcx
    33d3:	e9 aa 00 00 00       	jmp    0x3482
    33d8:	43 8d 44 00 f8       	lea    -0x8(%r8,%r8,1),%eax
    33dd:	83 e0 fc             	and    $0xfffffffc,%eax
    33e0:	83 c0 02             	add    $0x2,%eax
    33e3:	48 98                	cltq   
    33e5:	48 01 c7             	add    %rax,%rdi
    33e8:	eb 06                	jmp    0x33f0
    33ea:	66 83 fa 03          	cmp    $0x3,%dx
    33ee:	76 05                	jbe    0x33f5
    33f0:	48 01 d1             	add    %rdx,%rcx
    33f3:	eb 99                	jmp    0x338e
    33f5:	48 85 ff             	test   %rdi,%rdi
    33f8:	0f 84 84 00 00 00    	je     0x3482
    33fe:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    3405:	00 00 00 
    3408:	ff d0                	call   *%rax
    340a:	49 89 c4             	mov    %rax,%r12
    340d:	48 85 c0             	test   %rax,%rax
    3410:	74 70                	je     0x3482
    3412:	48 bb 5b 5b 00 00 00 	movabs $0x5b5b,%rbx
    3419:	00 00 00 
    341c:	49 89 c7             	mov    %rax,%r15
    341f:	41 8a 45 00          	mov    0x0(%r13),%al
    3423:	41 8a 55 01          	mov    0x1(%r13),%dl
    3427:	83 e0 7f             	and    $0x7f,%eax
    342a:	3c 7f                	cmp    $0x7f,%al
    342c:	0f 84 fa 00 00 00    	je     0x352c
    3432:	3c 04                	cmp    $0x4,%al
    3434:	0f 85 df 00 00 00    	jne    0x3519
    343a:	80 fa 04             	cmp    $0x4,%dl
    343d:	0f 85 d6 00 00 00    	jne    0x3519
    3443:	41 c6 07 2f          	movb   $0x2f,(%r15)
    3447:	41 0f b7 55 02       	movzwl 0x2(%r13),%edx
    344c:	49 8d 6f 01          	lea    0x1(%r15),%rbp
    3450:	66 83 fa 03          	cmp    $0x3,%dx
    3454:	77 34                	ja     0x348a
    3456:	bf 0b 00 00 00       	mov    $0xb,%edi
    345b:	31 c0                	xor    %eax,%eax
    345d:	48 be d3 c5 00 00 00 	movabs $0xc5d3,%rsi
    3464:	00 00 00 
    3467:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    346e:	00 00 00 
    3471:	ff d1                	call   *%rcx
    3473:	4c 89 e7             	mov    %r12,%rdi
    3476:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    347d:	00 00 00 
    3480:	ff d0                	call   *%rax
    3482:	45 31 f6             	xor    %r14d,%r14d
    3485:	e9 e4 00 00 00       	jmp    0x356e
    348a:	8d 42 fc             	lea    -0x4(%rdx),%eax
    348d:	48 98                	cltq   
    348f:	48 d1 e8             	shr    %rax
    3492:	41 89 c7             	mov    %eax,%r15d
    3495:	48 01 c0             	add    %rax,%rax
    3498:	4c 01 e8             	add    %r13,%rax
    349b:	66 45 85 ff          	test   %r15w,%r15w
    349f:	74 10                	je     0x34b1
    34a1:	48 83 e8 02          	sub    $0x2,%rax
    34a5:	66 83 78 04 00       	cmpw   $0x0,0x4(%rax)
    34aa:	75 05                	jne    0x34b1
    34ac:	41 ff cf             	dec    %r15d
    34af:	eb ea                	jmp    0x349b
    34b1:	45 0f b7 ff          	movzwl %r15w,%r15d
    34b5:	be 02 00 00 00       	mov    $0x2,%esi
    34ba:	4c 89 ff             	mov    %r15,%rdi
    34bd:	ff d3                	call   *%rbx
    34bf:	48 b9 12 5c 00 00 00 	movabs $0x5c12,%rcx
    34c6:	00 00 00 
    34c9:	48 85 c0             	test   %rax,%rax
    34cc:	49 89 c6             	mov    %rax,%r14
    34cf:	75 0a                	jne    0x34db
    34d1:	4c 89 e7             	mov    %r12,%rdi
    34d4:	ff d1                	call   *%rcx
    34d6:	e9 93 00 00 00       	jmp    0x356e
    34db:	4b 8d 14 3f          	lea    (%r15,%r15,1),%rdx
    34df:	48 89 c7             	mov    %rax,%rdi
    34e2:	49 8d 75 04          	lea    0x4(%r13),%rsi
    34e6:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    34ed:	00 00 00 
    34f0:	ff d0                	call   *%rax
    34f2:	4c 89 fa             	mov    %r15,%rdx
    34f5:	48 89 ef             	mov    %rbp,%rdi
    34f8:	48 89 c6             	mov    %rax,%rsi
    34fb:	48 b8 b6 29 00 00 00 	movabs $0x29b6,%rax
    3502:	00 00 00 
    3505:	ff d0                	call   *%rax
    3507:	4c 89 f7             	mov    %r14,%rdi
    350a:	48 b9 12 5c 00 00 00 	movabs $0x5c12,%rcx
    3511:	00 00 00 
    3514:	49 89 c7             	mov    %rax,%r15
    3517:	ff d1                	call   *%rcx
    3519:	41 0f b7 45 02       	movzwl 0x2(%r13),%eax
    351e:	66 83 f8 03          	cmp    $0x3,%ax
    3522:	76 08                	jbe    0x352c
    3524:	49 01 c5             	add    %rax,%r13
    3527:	e9 f3 fe ff ff       	jmp    0x341f
    352c:	41 c6 07 00          	movb   $0x0,(%r15)
    3530:	4c 89 e0             	mov    %r12,%rax
    3533:	4c 89 e2             	mov    %r12,%rdx
    3536:	8a 08                	mov    (%rax),%cl
    3538:	84 c9                	test   %cl,%cl
    353a:	74 2c                	je     0x3568
    353c:	48 ff c2             	inc    %rdx
    353f:	80 f9 5c             	cmp    $0x5c,%cl
    3542:	74 05                	je     0x3549
    3544:	80 f9 2f             	cmp    $0x2f,%cl
    3547:	75 17                	jne    0x3560
    3549:	c6 42 ff 2f          	movb   $0x2f,-0x1(%rdx)
    354d:	8a 08                	mov    (%rax),%cl
    354f:	80 f9 5c             	cmp    $0x5c,%cl
    3552:	75 05                	jne    0x3559
    3554:	48 ff c0             	inc    %rax
    3557:	eb f4                	jmp    0x354d
    3559:	80 f9 2f             	cmp    $0x2f,%cl
    355c:	74 f6                	je     0x3554
    355e:	eb d6                	jmp    0x3536
    3560:	88 4a ff             	mov    %cl,-0x1(%rdx)
    3563:	48 ff c0             	inc    %rax
    3566:	eb ce                	jmp    0x3536
    3568:	c6 02 00             	movb   $0x0,(%rdx)
    356b:	4d 89 e6             	mov    %r12,%r14
    356e:	5a                   	pop    %rdx
    356f:	4c 89 f0             	mov    %r14,%rax
    3572:	5b                   	pop    %rbx
    3573:	5d                   	pop    %rbp
    3574:	41 5c                	pop    %r12
    3576:	41 5d                	pop    %r13
    3578:	41 5e                	pop    %r14
    357a:	41 5f                	pop    %r15
    357c:	c3                   	ret    
    357d:	48 be b0 e2 00 00 00 	movabs $0xe2b0,%rsi
    3584:	00 00 00 
    3587:	ba 02 00 00 00       	mov    $0x2,%edx
    358c:	48 b8 ec 2d 00 00 00 	movabs $0x2dec,%rax
    3593:	00 00 00 
    3596:	ff e0                	jmp    *%rax
    3598:	48 89 f8             	mov    %rdi,%rax
    359b:	48 85 ff             	test   %rdi,%rdi
    359e:	74 44                	je     0x35e4
    35a0:	0f b7 57 02          	movzwl 0x2(%rdi),%edx
    35a4:	66 83 fa 03          	cmp    $0x3,%dx
    35a8:	76 38                	jbe    0x35e2
    35aa:	8a 0f                	mov    (%rdi),%cl
    35ac:	83 e1 7f             	and    $0x7f,%ecx
    35af:	80 f9 7f             	cmp    $0x7f,%cl
    35b2:	75 06                	jne    0x35ba
    35b4:	80 7f 01 ff          	cmpb   $0xff,0x1(%rdi)
    35b8:	74 28                	je     0x35e2
    35ba:	48 01 c2             	add    %rax,%rdx
    35bd:	0f b7 4a 02          	movzwl 0x2(%rdx),%ecx
    35c1:	66 83 f9 03          	cmp    $0x3,%cx
    35c5:	76 1d                	jbe    0x35e4
    35c7:	40 8a 32             	mov    (%rdx),%sil
    35ca:	83 e6 7f             	and    $0x7f,%esi
    35cd:	40 80 fe 7f          	cmp    $0x7f,%sil
    35d1:	74 08                	je     0x35db
    35d3:	48 89 d0             	mov    %rdx,%rax
    35d6:	48 01 ca             	add    %rcx,%rdx
    35d9:	eb e2                	jmp    0x35bd
    35db:	80 7a 01 ff          	cmpb   $0xff,0x1(%rdx)
    35df:	75 f2                	jne    0x35d3
    35e1:	c3                   	ret    
    35e2:	31 c0                	xor    %eax,%eax
    35e4:	c3                   	ret    
    35e5:	41 55                	push   %r13
    35e7:	48 89 f8             	mov    %rdi,%rax
    35ea:	45 31 ed             	xor    %r13d,%r13d
    35ed:	41 54                	push   %r12
    35ef:	55                   	push   %rbp
    35f0:	48 89 fd             	mov    %rdi,%rbp
    35f3:	0f b7 50 02          	movzwl 0x2(%rax),%edx
    35f7:	48 83 fa 03          	cmp    $0x3,%rdx
    35fb:	77 22                	ja     0x361f
    35fd:	48 be 00 c6 00 00 00 	movabs $0xc600,%rsi
    3604:	00 00 00 
    3607:	31 c0                	xor    %eax,%eax
    3609:	45 31 e4             	xor    %r12d,%r12d
    360c:	bf 0b 00 00 00       	mov    $0xb,%edi
    3611:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    3618:	00 00 00 
    361b:	ff d1                	call   *%rcx
    361d:	eb 44                	jmp    0x3663
    361f:	8a 08                	mov    (%rax),%cl
    3621:	49 01 d5             	add    %rdx,%r13
    3624:	83 e1 7f             	and    $0x7f,%ecx
    3627:	80 f9 7f             	cmp    $0x7f,%cl
    362a:	75 06                	jne    0x3632
    362c:	80 78 01 ff          	cmpb   $0xff,0x1(%rax)
    3630:	74 05                	je     0x3637
    3632:	48 01 d0             	add    %rdx,%rax
    3635:	eb bc                	jmp    0x35f3
    3637:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    363e:	00 00 00 
    3641:	4c 89 ef             	mov    %r13,%rdi
    3644:	ff d0                	call   *%rax
    3646:	49 89 c4             	mov    %rax,%r12
    3649:	48 85 c0             	test   %rax,%rax
    364c:	74 15                	je     0x3663
    364e:	48 89 c7             	mov    %rax,%rdi
    3651:	4c 89 ea             	mov    %r13,%rdx
    3654:	48 89 ee             	mov    %rbp,%rsi
    3657:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    365e:	00 00 00 
    3661:	ff d0                	call   *%rax
    3663:	4c 89 e0             	mov    %r12,%rax
    3666:	5d                   	pop    %rbp
    3667:	41 5c                	pop    %r12
    3669:	41 5d                	pop    %r13
    366b:	c3                   	ret    
    366c:	41 57                	push   %r15
    366e:	41 56                	push   %r14
    3670:	41 55                	push   %r13
    3672:	41 54                	push   %r12
    3674:	55                   	push   %rbp
    3675:	48 bd 0a a6 00 00 00 	movabs $0xa60a,%rbp
    367c:	00 00 00 
    367f:	53                   	push   %rbx
    3680:	48 89 fb             	mov    %rdi,%rbx
    3683:	48 83 ec 18          	sub    $0x18,%rsp
    3687:	48 85 db             	test   %rbx,%rbx
    368a:	0f 84 c9 06 00 00    	je     0x3d59
    3690:	44 0f b7 63 02       	movzwl 0x2(%rbx),%r12d
    3695:	66 41 83 fc 03       	cmp    $0x3,%r12w
    369a:	0f 86 b9 06 00 00    	jbe    0x3d59
    36a0:	8a 03                	mov    (%rbx),%al
    36a2:	0f b6 73 01          	movzbl 0x1(%rbx),%esi
    36a6:	83 e0 7f             	and    $0x7f,%eax
    36a9:	3c 05                	cmp    $0x5,%al
    36ab:	77 1f                	ja     0x36cc
    36ad:	84 c0                	test   %al,%al
    36af:	0f 84 59 06 00 00    	je     0x3d0e
    36b5:	83 e8 02             	sub    $0x2,%eax
    36b8:	3c 03                	cmp    $0x3,%al
    36ba:	77 52                	ja     0x370e
    36bc:	48 ba 98 c0 00 00 00 	movabs $0xc098,%rdx
    36c3:	00 00 00 
    36c6:	0f b6 c0             	movzbl %al,%eax
    36c9:	ff 24 c2             	jmp    *(%rdx,%rax,8)
    36cc:	3c 7f                	cmp    $0x7f,%al
    36ce:	0f 85 3a 06 00 00    	jne    0x3d0e
    36d4:	40 80 fe 01          	cmp    $0x1,%sil
    36d8:	74 12                	je     0x36ec
    36da:	48 bf 2e c6 00 00 00 	movabs $0xc62e,%rdi
    36e1:	00 00 00 
    36e4:	40 80 fe ff          	cmp    $0xff,%sil
    36e8:	74 0c                	je     0x36f6
    36ea:	eb 13                	jmp    0x36ff
    36ec:	48 bf 3a c6 00 00 00 	movabs $0xc63a,%rdi
    36f3:	00 00 00 
    36f6:	31 c0                	xor    %eax,%eax
    36f8:	ff d5                	call   *%rbp
    36fa:	e9 3c 06 00 00       	jmp    0x3d3b
    36ff:	48 bf 44 c6 00 00 00 	movabs $0xc644,%rdi
    3706:	00 00 00 
    3709:	e9 fa 05 00 00       	jmp    0x3d08
    370e:	8d 46 ff             	lea    -0x1(%rsi),%eax
    3711:	3c 04                	cmp    $0x4,%al
    3713:	77 78                	ja     0x378d
    3715:	48 ba b8 c0 00 00 00 	movabs $0xc0b8,%rdx
    371c:	00 00 00 
    371f:	0f b6 c0             	movzbl %al,%eax
    3722:	ff 24 c2             	jmp    *(%rdx,%rax,8)
    3725:	0f b6 53 05          	movzbl 0x5(%rbx),%edx
    3729:	0f b6 73 04          	movzbl 0x4(%rbx),%esi
    372d:	48 bf 55 c6 00 00 00 	movabs $0xc655,%rdi
    3734:	00 00 00 
    3737:	e9 81 00 00 00       	jmp    0x37bd
    373c:	48 bf 61 c6 00 00 00 	movabs $0xc661,%rdi
    3743:	00 00 00 
    3746:	0f b6 73 04          	movzbl 0x4(%rbx),%esi
    374a:	e9 b9 05 00 00       	jmp    0x3d08
    374f:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
    3753:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    3757:	48 bf 6d c6 00 00 00 	movabs $0xc66d,%rdi
    375e:	00 00 00 
    3761:	8b 73 04             	mov    0x4(%rbx),%esi
    3764:	e9 29 04 00 00       	jmp    0x3b92
    3769:	48 bf 81 c6 00 00 00 	movabs $0xc681,%rdi
    3770:	00 00 00 
    3773:	48 89 de             	mov    %rbx,%rsi
    3776:	e9 2d 04 00 00       	jmp    0x3ba8
    377b:	48 bf 8a c6 00 00 00 	movabs $0xc68a,%rdi
    3782:	00 00 00 
    3785:	8b 73 04             	mov    0x4(%rbx),%esi
    3788:	e9 7b 05 00 00       	jmp    0x3d08
    378d:	48 bf 94 c6 00 00 00 	movabs $0xc694,%rdi
    3794:	00 00 00 
    3797:	e9 6c 05 00 00       	jmp    0x3d08
    379c:	40 80 fe 01          	cmp    $0x1,%sil
    37a0:	74 0b                	je     0x37ad
    37a2:	40 80 fe 02          	cmp    $0x2,%sil
    37a6:	74 1e                	je     0x37c6
    37a8:	e9 fd 00 00 00       	jmp    0x38aa
    37ad:	48 bf a3 c6 00 00 00 	movabs $0xc6a3,%rdi
    37b4:	00 00 00 
    37b7:	8b 53 08             	mov    0x8(%rbx),%edx
    37ba:	8b 73 04             	mov    0x4(%rbx),%esi
    37bd:	31 c0                	xor    %eax,%eax
    37bf:	ff d5                	call   *%rbp
    37c1:	e9 75 05 00 00       	jmp    0x3d3b
    37c6:	48 bf b0 c6 00 00 00 	movabs $0xc6b0,%rdi
    37cd:	00 00 00 
    37d0:	31 c0                	xor    %eax,%eax
    37d2:	4c 8d 6b 10          	lea    0x10(%rbx),%r13
    37d6:	ff d5                	call   *%rbp
    37d8:	80 7b 10 00          	cmpb   $0x0,0x10(%rbx)
    37dc:	75 13                	jne    0x37f1
    37de:	48 bf b7 c6 00 00 00 	movabs $0xc6b7,%rdi
    37e5:	00 00 00 
    37e8:	8b 73 04             	mov    0x4(%rbx),%esi
    37eb:	31 c0                	xor    %eax,%eax
    37ed:	ff d5                	call   *%rbp
    37ef:	eb 11                	jmp    0x3802
    37f1:	48 bf bb c6 00 00 00 	movabs $0xc6bb,%rdi
    37f8:	00 00 00 
    37fb:	4c 89 ee             	mov    %r13,%rsi
    37fe:	31 c0                	xor    %eax,%eax
    3800:	ff d5                	call   *%rbp
    3802:	49 be 37 9a 00 00 00 	movabs $0x9a37,%r14
    3809:	00 00 00 
    380c:	4c 89 ef             	mov    %r13,%rdi
    380f:	41 ff d6             	call   *%r14
    3812:	41 80 7c 05 01 00    	cmpb   $0x0,0x1(%r13,%rax,1)
    3818:	75 13                	jne    0x382d
    381a:	48 bf b7 c6 00 00 00 	movabs $0xc6b7,%rdi
    3821:	00 00 00 
    3824:	8b 73 08             	mov    0x8(%rbx),%esi
    3827:	31 c0                	xor    %eax,%eax
    3829:	ff d5                	call   *%rbp
    382b:	eb 19                	jmp    0x3846
    382d:	4c 89 ef             	mov    %r13,%rdi
    3830:	41 ff d6             	call   *%r14
    3833:	48 bf bb c6 00 00 00 	movabs $0xc6bb,%rdi
    383a:	00 00 00 
    383d:	49 8d 74 05 01       	lea    0x1(%r13,%rax,1),%rsi
    3842:	31 c0                	xor    %eax,%eax
    3844:	ff d5                	call   *%rbp
    3846:	4c 89 ef             	mov    %r13,%rdi
    3849:	41 ff d6             	call   *%r14
    384c:	4c 89 ef             	mov    %r13,%rdi
    384f:	49 89 c7             	mov    %rax,%r15
    3852:	41 ff d6             	call   *%r14
    3855:	4d 01 ef             	add    %r13,%r15
    3858:	49 8d 7c 05 01       	lea    0x1(%r13,%rax,1),%rdi
    385d:	41 ff d6             	call   *%r14
    3860:	41 80 7c 07 02 00    	cmpb   $0x0,0x2(%r15,%rax,1)
    3866:	75 12                	jne    0x387a
    3868:	48 bf bf c6 00 00 00 	movabs $0xc6bf,%rdi
    386f:	00 00 00 
    3872:	8b 73 0c             	mov    0xc(%rbx),%esi
    3875:	e9 8e 04 00 00       	jmp    0x3d08
    387a:	4c 89 ef             	mov    %r13,%rdi
    387d:	41 ff d6             	call   *%r14
    3880:	4c 89 ef             	mov    %r13,%rdi
    3883:	49 89 c7             	mov    %rax,%r15
    3886:	41 ff d6             	call   *%r14
    3889:	49 8d 7c 05 01       	lea    0x1(%r13,%rax,1),%rdi
    388e:	41 ff d6             	call   *%r14
    3891:	48 bf c3 c6 00 00 00 	movabs $0xc6c3,%rdi
    3898:	00 00 00 
    389b:	49 8d 44 07 02       	lea    0x2(%r15,%rax,1),%rax
    38a0:	49 8d 74 05 00       	lea    0x0(%r13,%rax,1),%rsi
    38a5:	e9 85 00 00 00       	jmp    0x392f
    38aa:	48 bf c7 c6 00 00 00 	movabs $0xc6c7,%rdi
    38b1:	00 00 00 
    38b4:	e9 4f 04 00 00       	jmp    0x3d08
    38b9:	8d 46 ff             	lea    -0x1(%rsi),%eax
    38bc:	3c 11                	cmp    $0x11,%al
    38be:	0f 87 3b 02 00 00    	ja     0x3aff
    38c4:	48 ba e0 c0 00 00 00 	movabs $0xc0e0,%rdx
    38cb:	00 00 00 
    38ce:	0f b6 c0             	movzbl %al,%eax
    38d1:	ff 24 c2             	jmp    *(%rdx,%rax,8)
    38d4:	0f b7 4b 06          	movzwl 0x6(%rbx),%ecx
    38d8:	0f b6 53 05          	movzbl 0x5(%rbx),%edx
    38dc:	48 bf d8 c6 00 00 00 	movabs $0xc6d8,%rdi
    38e3:	00 00 00 
    38e6:	0f b6 73 04          	movzbl 0x4(%rbx),%esi
    38ea:	e9 f5 01 00 00       	jmp    0x3ae4
    38ef:	0f b7 53 06          	movzwl 0x6(%rbx),%edx
    38f3:	0f b7 73 04          	movzwl 0x4(%rbx),%esi
    38f7:	48 bf e9 c6 00 00 00 	movabs $0xc6e9,%rdi
    38fe:	00 00 00 
    3901:	e9 b7 fe ff ff       	jmp    0x37bd
    3906:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    390a:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    390e:	31 c0                	xor    %eax,%eax
    3910:	48 bf f6 c6 00 00 00 	movabs $0xc6f6,%rdi
    3917:	00 00 00 
    391a:	ff d5                	call   *%rbp
    391c:	e9 1a 04 00 00       	jmp    0x3d3b
    3921:	48 bf 0f c7 00 00 00 	movabs $0xc70f,%rdi
    3928:	00 00 00 
    392b:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    392f:	31 c0                	xor    %eax,%eax
    3931:	ff d5                	call   *%rbp
    3933:	e9 03 04 00 00       	jmp    0x3d3b
    3938:	0f b6 53 05          	movzbl 0x5(%rbx),%edx
    393c:	0f b6 73 04          	movzbl 0x4(%rbx),%esi
    3940:	48 bf 1b c7 00 00 00 	movabs $0xc71b,%rdi
    3947:	00 00 00 
    394a:	e9 6e fe ff ff       	jmp    0x37bd
    394f:	0f b6 4b 08          	movzbl 0x8(%rbx),%ecx
    3953:	0f b7 53 06          	movzwl 0x6(%rbx),%edx
    3957:	31 c0                	xor    %eax,%eax
    3959:	48 bf 27 c7 00 00 00 	movabs $0xc727,%rdi
    3960:	00 00 00 
    3963:	0f b7 73 04          	movzwl 0x4(%rbx),%esi
    3967:	44 0f b6 4b 0a       	movzbl 0xa(%rbx),%r9d
    396c:	44 0f b6 43 09       	movzbl 0x9(%rbx),%r8d
    3971:	ff d5                	call   *%rbp
    3973:	e9 c3 03 00 00       	jmp    0x3d3b
    3978:	48 bf 41 c7 00 00 00 	movabs $0xc741,%rdi
    397f:	00 00 00 
    3982:	8b 73 04             	mov    0x4(%rbx),%esi
    3985:	e9 7e 03 00 00       	jmp    0x3d08
    398a:	0f b6 43 24          	movzbl 0x24(%rbx),%eax
    398e:	44 0f b6 4b 08       	movzbl 0x8(%rbx),%r9d
    3993:	48 bf 4a c7 00 00 00 	movabs $0xc74a,%rdi
    399a:	00 00 00 
    399d:	44 0f b6 43 07       	movzbl 0x7(%rbx),%r8d
    39a2:	0f b6 4b 06          	movzbl 0x6(%rbx),%ecx
    39a6:	0f b6 53 05          	movzbl 0x5(%rbx),%edx
    39aa:	0f b6 73 04          	movzbl 0x4(%rbx),%esi
    39ae:	50                   	push   %rax
    39af:	0f b6 43 09          	movzbl 0x9(%rbx),%eax
    39b3:	50                   	push   %rax
    39b4:	31 c0                	xor    %eax,%eax
    39b6:	ff d5                	call   *%rbp
    39b8:	41 58                	pop    %r8
    39ba:	41 59                	pop    %r9
    39bc:	e9 7a 03 00 00       	jmp    0x3d3b
    39c1:	0f b6 43 12          	movzbl 0x12(%rbx),%eax
    39c5:	0f b6 4b 06          	movzbl 0x6(%rbx),%ecx
    39c9:	57                   	push   %rdi
    39ca:	48 bf 75 c7 00 00 00 	movabs $0xc775,%rdi
    39d1:	00 00 00 
    39d4:	0f b6 53 05          	movzbl 0x5(%rbx),%edx
    39d8:	0f b6 73 04          	movzbl 0x4(%rbx),%esi
    39dc:	44 0f b6 4b 08       	movzbl 0x8(%rbx),%r9d
    39e1:	44 0f b6 43 07       	movzbl 0x7(%rbx),%r8d
    39e6:	50                   	push   %rax
    39e7:	0f b7 43 10          	movzwl 0x10(%rbx),%eax
    39eb:	50                   	push   %rax
    39ec:	0f b7 43 0e          	movzwl 0xe(%rbx),%eax
    39f0:	50                   	push   %rax
    39f1:	0f b7 43 0c          	movzwl 0xc(%rbx),%eax
    39f5:	50                   	push   %rax
    39f6:	0f b6 43 0b          	movzbl 0xb(%rbx),%eax
    39fa:	50                   	push   %rax
    39fb:	0f b6 43 0a          	movzbl 0xa(%rbx),%eax
    39ff:	50                   	push   %rax
    3a00:	0f b6 43 09          	movzbl 0x9(%rbx),%eax
    3a04:	50                   	push   %rax
    3a05:	31 c0                	xor    %eax,%eax
    3a07:	ff d5                	call   *%rbp
    3a09:	e9 66 01 00 00       	jmp    0x3b74
    3a0e:	0f b7 4b 08          	movzwl 0x8(%rbx),%ecx
    3a12:	0f b7 53 06          	movzwl 0x6(%rbx),%edx
    3a16:	50                   	push   %rax
    3a17:	48 bf a0 c7 00 00 00 	movabs $0xc7a0,%rdi
    3a1e:	00 00 00 
    3a21:	0f b6 43 2a          	movzbl 0x2a(%rbx),%eax
    3a25:	0f b7 73 04          	movzwl 0x4(%rbx),%esi
    3a29:	50                   	push   %rax
    3a2a:	0f b7 43 28          	movzwl 0x28(%rbx),%eax
    3a2e:	50                   	push   %rax
    3a2f:	0f b7 43 26          	movzwl 0x26(%rbx),%eax
    3a33:	50                   	push   %rax
    3a34:	0f b7 43 24          	movzwl 0x24(%rbx),%eax
    3a38:	50                   	push   %rax
    3a39:	0f b7 43 22          	movzwl 0x22(%rbx),%eax
    3a3d:	50                   	push   %rax
    3a3e:	0f b7 43 20          	movzwl 0x20(%rbx),%eax
    3a42:	50                   	push   %rax
    3a43:	0f b7 43 1e          	movzwl 0x1e(%rbx),%eax
    3a47:	50                   	push   %rax
    3a48:	0f b7 43 1c          	movzwl 0x1c(%rbx),%eax
    3a4c:	50                   	push   %rax
    3a4d:	0f b7 43 1a          	movzwl 0x1a(%rbx),%eax
    3a51:	50                   	push   %rax
    3a52:	0f b7 43 18          	movzwl 0x18(%rbx),%eax
    3a56:	50                   	push   %rax
    3a57:	0f b7 43 16          	movzwl 0x16(%rbx),%eax
    3a5b:	50                   	push   %rax
    3a5c:	0f b7 43 14          	movzwl 0x14(%rbx),%eax
    3a60:	50                   	push   %rax
    3a61:	0f b7 43 12          	movzwl 0x12(%rbx),%eax
    3a65:	50                   	push   %rax
    3a66:	0f b7 43 10          	movzwl 0x10(%rbx),%eax
    3a6a:	50                   	push   %rax
    3a6b:	0f b7 43 0e          	movzwl 0xe(%rbx),%eax
    3a6f:	44 0f b7 4b 0c       	movzwl 0xc(%rbx),%r9d
    3a74:	44 0f b7 43 0a       	movzwl 0xa(%rbx),%r8d
    3a79:	50                   	push   %rax
    3a7a:	31 c0                	xor    %eax,%eax
    3a7c:	ff d5                	call   *%rbp
    3a7e:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
    3a82:	e9 b4 02 00 00       	jmp    0x3d3b
    3a87:	48 8b 4b 20          	mov    0x20(%rbx),%rcx
    3a8b:	48 8b 53 18          	mov    0x18(%rbx),%rdx
    3a8f:	31 c0                	xor    %eax,%eax
    3a91:	48 bf e3 c7 00 00 00 	movabs $0xc7e3,%rdi
    3a98:	00 00 00 
    3a9b:	0f b6 73 08          	movzbl 0x8(%rbx),%esi
    3a9f:	4c 8b 43 28          	mov    0x28(%rbx),%r8
    3aa3:	ff d5                	call   *%rbp
    3aa5:	e9 91 02 00 00       	jmp    0x3d3b
    3aaa:	0f b6 4b 11          	movzbl 0x11(%rbx),%ecx
    3aae:	0f b6 53 10          	movzbl 0x10(%rbx),%edx
    3ab2:	31 c0                	xor    %eax,%eax
    3ab4:	48 bf 02 c8 00 00 00 	movabs $0xc802,%rdi
    3abb:	00 00 00 
    3abe:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    3ac2:	44 0f b6 43 12       	movzbl 0x12(%rbx),%r8d
    3ac7:	ff d5                	call   *%rbp
    3ac9:	e9 6d 02 00 00       	jmp    0x3d3b
    3ace:	0f b7 4b 08          	movzwl 0x8(%rbx),%ecx
    3ad2:	0f b7 53 06          	movzwl 0x6(%rbx),%edx
    3ad6:	48 bf 17 c8 00 00 00 	movabs $0xc817,%rdi
    3add:	00 00 00 
    3ae0:	0f b7 73 04          	movzwl 0x4(%rbx),%esi
    3ae4:	31 c0                	xor    %eax,%eax
    3ae6:	ff d5                	call   *%rbp
    3ae8:	e9 4e 02 00 00       	jmp    0x3d3b
    3aed:	48 bf 27 c8 00 00 00 	movabs $0xc827,%rdi
    3af4:	00 00 00 
    3af7:	48 89 de             	mov    %rbx,%rsi
    3afa:	e9 a9 00 00 00       	jmp    0x3ba8
    3aff:	48 bf 31 c8 00 00 00 	movabs $0xc831,%rdi
    3b06:	00 00 00 
    3b09:	e9 fa 01 00 00       	jmp    0x3d08
    3b0e:	8d 46 ff             	lea    -0x1(%rsi),%eax
    3b11:	3c 04                	cmp    $0x4,%al
    3b13:	0f 87 b7 01 00 00    	ja     0x3cd0
    3b19:	48 ba 70 c1 00 00 00 	movabs $0xc170,%rdx
    3b20:	00 00 00 
    3b23:	0f b6 c0             	movzbl %al,%eax
    3b26:	ff 24 c2             	jmp    *(%rdx,%rax,8)
    3b29:	0f b6 43 29          	movzbl 0x29(%rbx),%eax
    3b2d:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
    3b31:	48 bf 47 c8 00 00 00 	movabs $0xc847,%rdi
    3b38:	00 00 00 
    3b3b:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    3b3f:	8b 73 04             	mov    0x4(%rbx),%esi
    3b42:	44 0f b6 4b 19       	movzbl 0x19(%rbx),%r9d
    3b47:	44 0f b6 43 18       	movzbl 0x18(%rbx),%r8d
    3b4c:	50                   	push   %rax
    3b4d:	0f b6 43 28          	movzbl 0x28(%rbx),%eax
    3b51:	50                   	push   %rax
    3b52:	0f b6 43 1f          	movzbl 0x1f(%rbx),%eax
    3b56:	50                   	push   %rax
    3b57:	0f b6 43 1e          	movzbl 0x1e(%rbx),%eax
    3b5b:	50                   	push   %rax
    3b5c:	0f b6 43 1d          	movzbl 0x1d(%rbx),%eax
    3b60:	50                   	push   %rax
    3b61:	0f b6 43 1c          	movzbl 0x1c(%rbx),%eax
    3b65:	50                   	push   %rax
    3b66:	0f b6 43 1b          	movzbl 0x1b(%rbx),%eax
    3b6a:	50                   	push   %rax
    3b6b:	0f b6 43 1a          	movzbl 0x1a(%rbx),%eax
    3b6f:	50                   	push   %rax
    3b70:	31 c0                	xor    %eax,%eax
    3b72:	ff d5                	call   *%rbp
    3b74:	48 83 c4 40          	add    $0x40,%rsp
    3b78:	e9 be 01 00 00       	jmp    0x3d3b
    3b7d:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
    3b81:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    3b85:	48 bf 80 c8 00 00 00 	movabs $0xc880,%rdi
    3b8c:	00 00 00 
    3b8f:	8b 73 04             	mov    0x4(%rbx),%esi
    3b92:	31 c0                	xor    %eax,%eax
    3b94:	ff d5                	call   *%rbp
    3b96:	e9 a0 01 00 00       	jmp    0x3d3b
    3b9b:	48 bf 92 c8 00 00 00 	movabs $0xc892,%rdi
    3ba2:	00 00 00 
    3ba5:	48 89 de             	mov    %rbx,%rsi
    3ba8:	48 b8 b5 2a 00 00 00 	movabs $0x2ab5,%rax
    3baf:	00 00 00 
    3bb2:	ff d0                	call   *%rax
    3bb4:	e9 82 01 00 00       	jmp    0x3d3b
    3bb9:	48 ba c3 5b 00 00 00 	movabs $0x5bc3,%rdx
    3bc0:	00 00 00 
    3bc3:	41 0f b7 c4          	movzwl %r12w,%eax
    3bc7:	49 bf 12 5c 00 00 00 	movabs $0x5c12,%r15
    3bce:	00 00 00 
    3bd1:	8d 7c 00 f9          	lea    -0x7(%rax,%rax,1),%edi
    3bd5:	44 8d 70 fc          	lea    -0x4(%rax),%r14d
    3bd9:	48 63 ff             	movslq %edi,%rdi
    3bdc:	ff d2                	call   *%rdx
    3bde:	48 85 c0             	test   %rax,%rax
    3be1:	49 89 c5             	mov    %rax,%r13
    3be4:	74 77                	je     0x3c5d
    3be6:	48 ba c3 5b 00 00 00 	movabs $0x5bc3,%rdx
    3bed:	00 00 00 
    3bf0:	4d 63 f6             	movslq %r14d,%r14
    3bf3:	4c 89 f7             	mov    %r14,%rdi
    3bf6:	ff d2                	call   *%rdx
    3bf8:	48 85 c0             	test   %rax,%rax
    3bfb:	75 20                	jne    0x3c1d
    3bfd:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    3c04:	00 00 00 
    3c07:	48 bf 98 c8 00 00 00 	movabs $0xc898,%rdi
    3c0e:	00 00 00 
    3c11:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    3c17:	31 c0                	xor    %eax,%eax
    3c19:	ff d5                	call   *%rbp
    3c1b:	eb 61                	jmp    0x3c7e
    3c1d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    3c22:	48 8d 73 04          	lea    0x4(%rbx),%rsi
    3c26:	4c 89 f2             	mov    %r14,%rdx
    3c29:	48 89 c7             	mov    %rax,%rdi
    3c2c:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    3c33:	00 00 00 
    3c36:	ff d0                	call   *%rax
    3c38:	4c 89 f2             	mov    %r14,%rdx
    3c3b:	4c 89 ef             	mov    %r13,%rdi
    3c3e:	48 89 c6             	mov    %rax,%rsi
    3c41:	48 d1 ea             	shr    %rdx
    3c44:	48 b8 b6 29 00 00 00 	movabs $0x29b6,%rax
    3c4b:	00 00 00 
    3c4e:	ff d0                	call   *%rax
    3c50:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    3c55:	c6 00 00             	movb   $0x0,(%rax)
    3c58:	41 ff d7             	call   *%r15
    3c5b:	eb 10                	jmp    0x3c6d
    3c5d:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    3c64:	00 00 00 
    3c67:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    3c6d:	48 bf a6 c8 00 00 00 	movabs $0xc8a6,%rdi
    3c74:	00 00 00 
    3c77:	4c 89 ee             	mov    %r13,%rsi
    3c7a:	31 c0                	xor    %eax,%eax
    3c7c:	ff d5                	call   *%rbp
    3c7e:	4c 89 ef             	mov    %r13,%rdi
    3c81:	41 ff d7             	call   *%r15
    3c84:	e9 b2 00 00 00       	jmp    0x3d3b
    3c89:	0f b6 43 13          	movzbl 0x13(%rbx),%eax
    3c8d:	0f b7 4b 0a          	movzwl 0xa(%rbx),%ecx
    3c91:	48 bf b0 c8 00 00 00 	movabs $0xc8b0,%rdi
    3c98:	00 00 00 
    3c9b:	0f b7 53 08          	movzwl 0x8(%rbx),%edx
    3c9f:	8b 73 04             	mov    0x4(%rbx),%esi
    3ca2:	44 0f b6 4b 0d       	movzbl 0xd(%rbx),%r9d
    3ca7:	44 0f b6 43 0c       	movzbl 0xc(%rbx),%r8d
    3cac:	50                   	push   %rax
    3cad:	0f b6 43 12          	movzbl 0x12(%rbx),%eax
    3cb1:	50                   	push   %rax
    3cb2:	0f b6 43 11          	movzbl 0x11(%rbx),%eax
    3cb6:	50                   	push   %rax
    3cb7:	0f b6 43 10          	movzbl 0x10(%rbx),%eax
    3cbb:	50                   	push   %rax
    3cbc:	0f b6 43 0f          	movzbl 0xf(%rbx),%eax
    3cc0:	50                   	push   %rax
    3cc1:	0f b6 43 0e          	movzbl 0xe(%rbx),%eax
    3cc5:	50                   	push   %rax
    3cc6:	31 c0                	xor    %eax,%eax
    3cc8:	ff d5                	call   *%rbp
    3cca:	48 83 c4 30          	add    $0x30,%rsp
    3cce:	eb 6b                	jmp    0x3d3b
    3cd0:	48 bf ec c8 00 00 00 	movabs $0xc8ec,%rdi
    3cd7:	00 00 00 
    3cda:	eb 2c                	jmp    0x3d08
    3cdc:	48 bf 0e c9 00 00 00 	movabs $0xc90e,%rdi
    3ce3:	00 00 00 
    3ce6:	40 80 fe 01          	cmp    $0x1,%sil
    3cea:	75 1c                	jne    0x3d08
    3cec:	0f b7 53 06          	movzwl 0x6(%rbx),%edx
    3cf0:	0f b7 73 04          	movzwl 0x4(%rbx),%esi
    3cf4:	48 8d 4b 04          	lea    0x4(%rbx),%rcx
    3cf8:	31 c0                	xor    %eax,%eax
    3cfa:	48 bf fe c8 00 00 00 	movabs $0xc8fe,%rdi
    3d01:	00 00 00 
    3d04:	ff d5                	call   *%rbp
    3d06:	eb 33                	jmp    0x3d3b
    3d08:	31 c0                	xor    %eax,%eax
    3d0a:	ff d5                	call   *%rbp
    3d0c:	eb 2d                	jmp    0x3d3b
    3d0e:	48 83 c4 18          	add    $0x18,%rsp
    3d12:	40 0f b6 d6          	movzbl %sil,%edx
    3d16:	48 bf 1f c9 00 00 00 	movabs $0xc91f,%rdi
    3d1d:	00 00 00 
    3d20:	0f b6 f0             	movzbl %al,%esi
    3d23:	48 b9 0a a6 00 00 00 	movabs $0xa60a,%rcx
    3d2a:	00 00 00 
    3d2d:	5b                   	pop    %rbx
    3d2e:	31 c0                	xor    %eax,%eax
    3d30:	5d                   	pop    %rbp
    3d31:	41 5c                	pop    %r12
    3d33:	41 5d                	pop    %r13
    3d35:	41 5e                	pop    %r14
    3d37:	41 5f                	pop    %r15
    3d39:	ff e1                	jmp    *%rcx
    3d3b:	66 83 7b 02 03       	cmpw   $0x3,0x2(%rbx)
    3d40:	76 17                	jbe    0x3d59
    3d42:	8a 03                	mov    (%rbx),%al
    3d44:	83 e0 7f             	and    $0x7f,%eax
    3d47:	3c 7f                	cmp    $0x7f,%al
    3d49:	75 06                	jne    0x3d51
    3d4b:	80 7b 01 ff          	cmpb   $0xff,0x1(%rbx)
    3d4f:	74 08                	je     0x3d59
    3d51:	4c 01 e3             	add    %r12,%rbx
    3d54:	e9 2e f9 ff ff       	jmp    0x3687
    3d59:	48 83 c4 18          	add    $0x18,%rsp
    3d5d:	5b                   	pop    %rbx
    3d5e:	5d                   	pop    %rbp
    3d5f:	41 5c                	pop    %r12
    3d61:	41 5d                	pop    %r13
    3d63:	41 5e                	pop    %r14
    3d65:	41 5f                	pop    %r15
    3d67:	c3                   	ret    
    3d68:	48 85 ff             	test   %rdi,%rdi
    3d6b:	0f 84 c9 00 00 00    	je     0x3e3a
    3d71:	41 55                	push   %r13
    3d73:	b8 01 00 00 00       	mov    $0x1,%eax
    3d78:	41 54                	push   %r12
    3d7a:	55                   	push   %rbp
    3d7b:	48 89 f5             	mov    %rsi,%rbp
    3d7e:	53                   	push   %rbx
    3d7f:	51                   	push   %rcx
    3d80:	48 85 f6             	test   %rsi,%rsi
    3d83:	0f 84 a9 00 00 00    	je     0x3e32
    3d89:	49 bd e1 97 00 00 00 	movabs $0x97e1,%r13
    3d90:	00 00 00 
    3d93:	48 89 fb             	mov    %rdi,%rbx
    3d96:	31 c0                	xor    %eax,%eax
    3d98:	48 39 f7             	cmp    %rsi,%rdi
    3d9b:	0f 84 91 00 00 00    	je     0x3e32
    3da1:	66 8b 53 02          	mov    0x2(%rbx),%dx
    3da5:	0f b7 75 02          	movzwl 0x2(%rbp),%esi
    3da9:	66 83 fa 03          	cmp    $0x3,%dx
    3dad:	76 77                	jbe    0x3e26
    3daf:	66 83 fe 03          	cmp    $0x3,%si
    3db3:	76 65                	jbe    0x3e1a
    3db5:	8a 0b                	mov    (%rbx),%cl
    3db7:	8a 45 00             	mov    0x0(%rbp),%al
    3dba:	83 e1 7f             	and    $0x7f,%ecx
    3dbd:	83 e0 7f             	and    $0x7f,%eax
    3dc0:	38 c1                	cmp    %al,%cl
    3dc2:	74 08                	je     0x3dcc
    3dc4:	0f b6 c0             	movzbl %al,%eax
    3dc7:	0f b6 c9             	movzbl %cl,%ecx
    3dca:	eb 0c                	jmp    0x3dd8
    3dcc:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
    3dd0:	0f b6 4d 01          	movzbl 0x1(%rbp),%ecx
    3dd4:	38 c8                	cmp    %cl,%al
    3dd6:	74 04                	je     0x3ddc
    3dd8:	29 c8                	sub    %ecx,%eax
    3dda:	eb 56                	jmp    0x3e32
    3ddc:	66 39 f2             	cmp    %si,%dx
    3ddf:	74 07                	je     0x3de8
    3de1:	0f b7 c2             	movzwl %dx,%eax
    3de4:	29 f0                	sub    %esi,%eax
    3de6:	eb 4a                	jmp    0x3e32
    3de8:	44 0f b7 e2          	movzwl %dx,%r12d
    3dec:	48 89 ee             	mov    %rbp,%rsi
    3def:	48 89 df             	mov    %rbx,%rdi
    3df2:	4c 89 e2             	mov    %r12,%rdx
    3df5:	41 ff d5             	call   *%r13
    3df8:	85 c0                	test   %eax,%eax
    3dfa:	75 36                	jne    0x3e32
    3dfc:	66 83 7b 02 03       	cmpw   $0x3,0x2(%rbx)
    3e01:	76 23                	jbe    0x3e26
    3e03:	8a 03                	mov    (%rbx),%al
    3e05:	83 e0 7f             	and    $0x7f,%eax
    3e08:	3c 7f                	cmp    $0x7f,%al
    3e0a:	75 06                	jne    0x3e12
    3e0c:	80 7b 01 ff          	cmpb   $0xff,0x1(%rbx)
    3e10:	74 08                	je     0x3e1a
    3e12:	4c 01 e3             	add    %r12,%rbx
    3e15:	4c 01 e5             	add    %r12,%rbp
    3e18:	eb 87                	jmp    0x3da1
    3e1a:	31 c0                	xor    %eax,%eax
    3e1c:	66 83 7d 02 03       	cmpw   $0x3,0x2(%rbp)
    3e21:	0f 96 c0             	setbe  %al
    3e24:	eb 0c                	jmp    0x3e32
    3e26:	31 c0                	xor    %eax,%eax
    3e28:	66 83 7d 02 03       	cmpw   $0x3,0x2(%rbp)
    3e2d:	0f 97 c0             	seta   %al
    3e30:	f7 d8                	neg    %eax
    3e32:	5a                   	pop    %rdx
    3e33:	5b                   	pop    %rbx
    3e34:	5d                   	pop    %rbp
    3e35:	41 5c                	pop    %r12
    3e37:	41 5d                	pop    %r13
    3e39:	c3                   	ret    
    3e3a:	b8 01 00 00 00       	mov    $0x1,%eax
    3e3f:	c3                   	ret    
    3e40:	eb fe                	jmp    0x3e40
    3e42:	48 b8 58 32 00 00 00 	movabs $0x3258,%rax
    3e49:	00 00 00 
    3e4c:	53                   	push   %rbx
    3e4d:	48 bb af 11 00 00 00 	movabs $0x11af,%rbx
    3e54:	00 00 00 
    3e57:	ff d0                	call   *%rax
    3e59:	48 a3 48 f8 00 00 00 	movabs %rax,0xf848
    3e60:	00 00 00 
    3e63:	48 b8 fb 51 00 00 00 	movabs $0x51fb,%rax
    3e6a:	00 00 00 
    3e6d:	ff d0                	call   *%rax
    3e6f:	31 f6                	xor    %esi,%esi
    3e71:	48 bf e0 e2 00 00 00 	movabs $0xe2e0,%rdi
    3e78:	00 00 00 
    3e7b:	48 b8 a8 2c 00 00 00 	movabs $0x2ca8,%rax
    3e82:	00 00 00 
    3e85:	ff d0                	call   *%rax
    3e87:	48 85 c0             	test   %rax,%rax
    3e8a:	74 44                	je     0x3ed0
    3e8c:	31 d2                	xor    %edx,%edx
    3e8e:	48 8b 78 08          	mov    0x8(%rax),%rdi
    3e92:	48 89 c6             	mov    %rax,%rsi
    3e95:	b9 20 00 00 00       	mov    $0x20,%ecx
    3e9a:	49 b8 60 f8 00 00 00 	movabs $0xf860,%r8
    3ea1:	00 00 00 
    3ea4:	ff d3                	call   *%rbx
    3ea6:	48 85 c0             	test   %rax,%rax
    3ea9:	75 25                	jne    0x3ed0
    3eab:	48 be 60 f8 00 00 00 	movabs $0xf860,%rsi
    3eb2:	00 00 00 
    3eb5:	ba 08 00 00 00       	mov    $0x8,%edx
    3eba:	48 bf 50 f8 00 00 00 	movabs $0xf850,%rdi
    3ec1:	00 00 00 
    3ec4:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    3ecb:	00 00 00 
    3ece:	ff d0                	call   *%rax
    3ed0:	48 b8 91 47 00 00 00 	movabs $0x4791,%rax
    3ed7:	00 00 00 
    3eda:	ff d0                	call   *%rax
    3edc:	48 b8 9e 55 00 00 00 	movabs $0x559e,%rax
    3ee3:	00 00 00 
    3ee6:	ff d0                	call   *%rax
    3ee8:	3c 03                	cmp    $0x3,%al
    3eea:	75 18                	jne    0x3f04
    3eec:	48 b8 1b 58 00 00 00 	movabs $0x581b,%rax
    3ef3:	00 00 00 
    3ef6:	ff d0                	call   *%rax
    3ef8:	48 b8 25 57 00 00 00 	movabs $0x5725,%rax
    3eff:	00 00 00 
    3f02:	ff d0                	call   *%rax
    3f04:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    3f0b:	00 00 00 
    3f0e:	31 c9                	xor    %ecx,%ecx
    3f10:	31 d2                	xor    %edx,%edx
    3f12:	31 f6                	xor    %esi,%esi
    3f14:	45 31 c0             	xor    %r8d,%r8d
    3f17:	48 8b 40 60          	mov    0x60(%rax),%rax
    3f1b:	48 8b b8 00 01 00 00 	mov    0x100(%rax),%rdi
    3f22:	ff d3                	call   *%rbx
    3f24:	5b                   	pop    %rbx
    3f25:	48 b8 10 24 00 00 00 	movabs $0x2410,%rax
    3f2c:	00 00 00 
    3f2f:	ff e0                	jmp    *%rax
    3f31:	48 b8 30 f8 00 00 00 	movabs $0xf830,%rax
    3f38:	00 00 00 
    3f3b:	41 54                	push   %r12
    3f3d:	49 89 f4             	mov    %rsi,%r12
    3f40:	55                   	push   %rbp
    3f41:	48 89 fd             	mov    %rdi,%rbp
    3f44:	53                   	push   %rbx
    3f45:	48 8b 38             	mov    (%rax),%rdi
    3f48:	48 b8 f8 2e 00 00 00 	movabs $0x2ef8,%rax
    3f4f:	00 00 00 
    3f52:	ff d0                	call   *%rax
    3f54:	48 85 c0             	test   %rax,%rax
    3f57:	74 70                	je     0x3fc9
    3f59:	48 8b 78 18          	mov    0x18(%rax),%rdi
    3f5d:	48 89 c3             	mov    %rax,%rbx
    3f60:	48 b8 a8 27 00 00 00 	movabs $0x27a8,%rax
    3f67:	00 00 00 
    3f6a:	ff d0                	call   *%rax
    3f6c:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3f70:	48 85 c0             	test   %rax,%rax
    3f73:	75 1f                	jne    0x3f94
    3f75:	48 a1 40 f8 00 00 00 	movabs 0xf840,%rax
    3f7c:	00 00 00 
    3f7f:	48 85 c0             	test   %rax,%rax
    3f82:	74 10                	je     0x3f94
    3f84:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
    3f88:	4c 89 e2             	mov    %r12,%rdx
    3f8b:	5b                   	pop    %rbx
    3f8c:	48 89 ee             	mov    %rbp,%rsi
    3f8f:	5d                   	pop    %rbp
    3f90:	41 5c                	pop    %r12
    3f92:	ff e0                	jmp    *%rax
    3f94:	48 b8 72 33 00 00 00 	movabs $0x3372,%rax
    3f9b:	00 00 00 
    3f9e:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    3fa2:	ff d0                	call   *%rax
    3fa4:	49 89 04 24          	mov    %rax,(%r12)
    3fa8:	48 89 c7             	mov    %rax,%rdi
    3fab:	48 85 c0             	test   %rax,%rax
    3fae:	74 19                	je     0x3fc9
    3fb0:	48 b8 6d 98 00 00 00 	movabs $0x986d,%rax
    3fb7:	00 00 00 
    3fba:	be 2f 00 00 00       	mov    $0x2f,%esi
    3fbf:	ff d0                	call   *%rax
    3fc1:	48 85 c0             	test   %rax,%rax
    3fc4:	74 03                	je     0x3fc9
    3fc6:	c6 00 00             	movb   $0x0,(%rax)
    3fc9:	5b                   	pop    %rbx
    3fca:	5d                   	pop    %rbp
    3fcb:	41 5c                	pop    %r12
    3fcd:	c3                   	ret    
    3fce:	50                   	push   %rax
    3fcf:	48 b8 a4 18 00 00 00 	movabs $0x18a4,%rax
    3fd6:	00 00 00 
    3fd9:	ff d0                	call   *%rax
    3fdb:	5a                   	pop    %rdx
    3fdc:	48 b8 ad 52 00 00 00 	movabs $0x52ad,%rax
    3fe3:	00 00 00 
    3fe6:	ff e0                	jmp    *%rax
    3fe8:	55                   	push   %rbp
    3fe9:	53                   	push   %rbx
    3fea:	48 83 ec 18          	sub    $0x18,%rsp
    3fee:	48 89 3c 24          	mov    %rdi,(%rsp)
    3ff2:	89 74 24 08          	mov    %esi,0x8(%rsp)
    3ff6:	66 81 fa e4 14       	cmp    $0x14e4,%dx
    3ffb:	0f 85 85 00 00 00    	jne    0x4086
    4001:	bb f8 0c 00 00       	mov    $0xcf8,%ebx
    4006:	ba 08 00 00 00       	mov    $0x8,%edx
    400b:	48 bd 22 13 00 00 00 	movabs $0x1322,%rbp
    4012:	00 00 00 
    4015:	ff d5                	call   *%rbp
    4017:	89 da                	mov    %ebx,%edx
    4019:	ef                   	out    %eax,(%dx)
    401a:	ba fc 0c 00 00       	mov    $0xcfc,%edx
    401f:	ed                   	in     (%dx),%eax
    4020:	c1 e8 18             	shr    $0x18,%eax
    4023:	83 f8 02             	cmp    $0x2,%eax
    4026:	75 5e                	jne    0x4086
    4028:	48 8b 3c 24          	mov    (%rsp),%rdi
    402c:	8b 74 24 08          	mov    0x8(%rsp),%esi
    4030:	ba 01 00 00 00       	mov    $0x1,%edx
    4035:	48 b8 11 14 00 00 00 	movabs $0x1411,%rax
    403c:	00 00 00 
    403f:	ff d0                	call   *%rax
    4041:	84 c0                	test   %al,%al
    4043:	74 41                	je     0x4086
    4045:	0f b6 c0             	movzbl %al,%eax
    4048:	8b 74 24 08          	mov    0x8(%rsp),%esi
    404c:	48 8b 3c 24          	mov    (%rsp),%rdi
    4050:	8d 50 04             	lea    0x4(%rax),%edx
    4053:	ff d5                	call   *%rbp
    4055:	89 da                	mov    %ebx,%edx
    4057:	89 c6                	mov    %eax,%esi
    4059:	89 c1                	mov    %eax,%ecx
    405b:	83 e6 fc             	and    $0xfffffffc,%esi
    405e:	89 f0                	mov    %esi,%eax
    4060:	ef                   	out    %eax,(%dx)
    4061:	83 e1 03             	and    $0x3,%ecx
    4064:	66 81 c1 fc 0c       	add    $0xcfc,%cx
    4069:	89 ca                	mov    %ecx,%edx
    406b:	66 ed                	in     (%dx),%ax
    406d:	89 c7                	mov    %eax,%edi
    406f:	89 da                	mov    %ebx,%edx
    4071:	89 f0                	mov    %esi,%eax
    4073:	ef                   	out    %eax,(%dx)
    4074:	89 f8                	mov    %edi,%eax
    4076:	89 ca                	mov    %ecx,%edx
    4078:	83 c8 03             	or     $0x3,%eax
    407b:	66 ef                	out    %ax,(%dx)
    407d:	89 f0                	mov    %esi,%eax
    407f:	89 da                	mov    %ebx,%edx
    4081:	ef                   	out    %eax,(%dx)
    4082:	89 ca                	mov    %ecx,%edx
    4084:	66 ed                	in     (%dx),%ax
    4086:	48 83 c4 18          	add    $0x18,%rsp
    408a:	31 c0                	xor    %eax,%eax
    408c:	5b                   	pop    %rbx
    408d:	5d                   	pop    %rbp
    408e:	c3                   	ret    
    408f:	41 54                	push   %r12
    4091:	48 89 f2             	mov    %rsi,%rdx
    4094:	49 bc 28 f8 00 00 00 	movabs $0xf828,%r12
    409b:	00 00 00 
    409e:	49 8b 04 24          	mov    (%r12),%rax
    40a2:	55                   	push   %rbp
    40a3:	48 89 f5             	mov    %rsi,%rbp
    40a6:	53                   	push   %rbx
    40a7:	48 89 fb             	mov    %rdi,%rbx
    40aa:	48 8b 40 60          	mov    0x60(%rax),%rax
    40ae:	48 89 de             	mov    %rbx,%rsi
    40b1:	48 8b 78 30          	mov    0x30(%rax),%rdi
    40b5:	48 b8 90 11 00 00 00 	movabs $0x1190,%rax
    40bc:	00 00 00 
    40bf:	ff d0                	call   *%rax
    40c1:	31 c0                	xor    %eax,%eax
    40c3:	48 b9 88 f8 00 00 00 	movabs $0xf888,%rcx
    40ca:	00 00 00 
    40cd:	48 8b 31             	mov    (%rcx),%rsi
    40d0:	48 85 f6             	test   %rsi,%rsi
    40d3:	74 41                	je     0x4116
    40d5:	48 3b 1e             	cmp    (%rsi),%rbx
    40d8:	48 8b 56 10          	mov    0x10(%rsi),%rdx
    40dc:	75 06                	jne    0x40e4
    40de:	48 3b 6e 08          	cmp    0x8(%rsi),%rbp
    40e2:	74 08                	je     0x40ec
    40e4:	48 89 f0             	mov    %rsi,%rax
    40e7:	48 89 d6             	mov    %rdx,%rsi
    40ea:	eb e4                	jmp    0x40d0
    40ec:	49 8b 3c 24          	mov    (%r12),%rdi
    40f0:	48 8b 7f 60          	mov    0x60(%rdi),%rdi
    40f4:	48 85 c0             	test   %rax,%rax
    40f7:	74 06                	je     0x40ff
    40f9:	48 89 50 10          	mov    %rdx,0x10(%rax)
    40fd:	eb 03                	jmp    0x4102
    40ff:	48 89 11             	mov    %rdx,(%rcx)
    4102:	48 b8 82 11 00 00 00 	movabs $0x1182,%rax
    4109:	00 00 00 
    410c:	5b                   	pop    %rbx
    410d:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
    4111:	5d                   	pop    %rbp
    4112:	41 5c                	pop    %r12
    4114:	ff e0                	jmp    *%rax
    4116:	5b                   	pop    %rbx
    4117:	5d                   	pop    %rbp
    4118:	41 5c                	pop    %r12
    411a:	c3                   	ret    
    411b:	41 57                	push   %r15
    411d:	41 56                	push   %r14
    411f:	41 55                	push   %r13
    4121:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
    4127:	41 54                	push   %r12
    4129:	49 bc 50 f8 00 00 00 	movabs $0xf850,%r12
    4130:	00 00 00 
    4133:	55                   	push   %rbp
    4134:	53                   	push   %rbx
    4135:	48 83 ec 58          	sub    $0x58,%rsp
    4139:	49 8b 04 24          	mov    (%r12),%rax
    413d:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    4142:	31 c0                	xor    %eax,%eax
    4144:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    4149:	4c 39 ef             	cmp    %r13,%rdi
    414c:	76 64                	jbe    0x41b2
    414e:	49 be 34 c9 00 00 00 	movabs $0xc934,%r14
    4155:	00 00 00 
    4158:	48 89 f9             	mov    %rdi,%rcx
    415b:	be 10 00 00 00       	mov    $0x10,%esi
    4160:	48 bb cb a7 00 00 00 	movabs $0xa7cb,%rbx
    4167:	00 00 00 
    416a:	4c 89 f2             	mov    %r14,%rdx
    416d:	48 8d 7c 24 26       	lea    0x26(%rsp),%rdi
    4172:	ff d3                	call   *%rbx
    4174:	4c 89 e9             	mov    %r13,%rcx
    4177:	4c 89 f2             	mov    %r14,%rdx
    417a:	48 8d 7c 24 37       	lea    0x37(%rsp),%rdi
    417f:	be 10 00 00 00       	mov    $0x10,%esi
    4184:	31 c0                	xor    %eax,%eax
    4186:	ff d3                	call   *%rbx
    4188:	48 8d 4c 24 37       	lea    0x37(%rsp),%rcx
    418d:	48 8d 54 24 26       	lea    0x26(%rsp),%rdx
    4192:	31 c0                	xor    %eax,%eax
    4194:	48 be 38 c9 00 00 00 	movabs $0xc938,%rsi
    419b:	00 00 00 
    419e:	bf 12 00 00 00       	mov    $0x12,%edi
    41a3:	49 b8 43 86 00 00 00 	movabs $0x8643,%r8
    41aa:	00 00 00 
    41ad:	41 ff d0             	call   *%r8
    41b0:	eb 6c                	jmp    0x421e
    41b2:	41 89 ce             	mov    %ecx,%r14d
    41b5:	89 d5                	mov    %edx,%ebp
    41b7:	48 89 f1             	mov    %rsi,%rcx
    41ba:	48 89 f3             	mov    %rsi,%rbx
    41bd:	49 bf 28 f8 00 00 00 	movabs $0xf828,%r15
    41c4:	00 00 00 
    41c7:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    41cc:	4c 89 f2             	mov    %r14,%rdx
    41cf:	48 89 ee             	mov    %rbp,%rsi
    41d2:	49 ba af 11 00 00 00 	movabs $0x11af,%r10
    41d9:	00 00 00 
    41dc:	49 8b 07             	mov    (%r15),%rax
    41df:	4c 8b 48 60          	mov    0x60(%rax),%r9
    41e3:	4c 89 0c 24          	mov    %r9,(%rsp)
    41e7:	49 8b 79 28          	mov    0x28(%r9),%rdi
    41eb:	41 ff d2             	call   *%r10
    41ee:	4c 8b 0c 24          	mov    (%rsp),%r9
    41f2:	49 ba af 11 00 00 00 	movabs $0x11af,%r10
    41f9:	00 00 00 
    41fc:	48 85 c0             	test   %rax,%rax
    41ff:	74 24                	je     0x4225
    4201:	48 be 5d c9 00 00 00 	movabs $0xc95d,%rsi
    4208:	00 00 00 
    420b:	bf 03 00 00 00       	mov    $0x3,%edi
    4210:	31 c0                	xor    %eax,%eax
    4212:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    4219:	00 00 00 
    421c:	ff d2                	call   *%rdx
    421e:	31 c0                	xor    %eax,%eax
    4220:	e9 aa 00 00 00       	jmp    0x42cf
    4225:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
    422b:	75 33                	jne    0x4260
    422d:	48 89 ee             	mov    %rbp,%rsi
    4230:	49 8b 79 28          	mov    0x28(%r9),%rdi
    4234:	4c 89 6c 24 08       	mov    %r13,0x8(%rsp)
    4239:	48 89 d9             	mov    %rbx,%rcx
    423c:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    4241:	4c 89 f2             	mov    %r14,%rdx
    4244:	41 ff d2             	call   *%r10
    4247:	31 ff                	xor    %edi,%edi
    4249:	48 89 de             	mov    %rbx,%rsi
    424c:	48 89 c5             	mov    %rax,%rbp
    424f:	48 b8 8f 40 00 00 00 	movabs $0x408f,%rax
    4256:	00 00 00 
    4259:	ff d0                	call   *%rax
    425b:	48 85 ed             	test   %rbp,%rbp
    425e:	75 a1                	jne    0x4201
    4260:	49 8b 07             	mov    (%r15),%rax
    4263:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    4268:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
    426d:	ba 18 00 00 00       	mov    $0x18,%edx
    4272:	be 02 00 00 00       	mov    $0x2,%esi
    4277:	48 8b 40 60          	mov    0x60(%rax),%rax
    427b:	48 8b 78 40          	mov    0x40(%rax),%rdi
    427f:	48 b8 9e 11 00 00 00 	movabs $0x119e,%rax
    4286:	00 00 00 
    4289:	ff d0                	call   *%rax
    428b:	48 85 c0             	test   %rax,%rax
    428e:	75 22                	jne    0x42b2
    4290:	48 ba 88 f8 00 00 00 	movabs $0xf888,%rdx
    4297:	00 00 00 
    429a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    429f:	48 8b 0a             	mov    (%rdx),%rcx
    42a2:	48 89 28             	mov    %rbp,(%rax)
    42a5:	48 89 48 10          	mov    %rcx,0x10(%rax)
    42a9:	48 89 58 08          	mov    %rbx,0x8(%rax)
    42ad:	48 89 02             	mov    %rax,(%rdx)
    42b0:	eb 18                	jmp    0x42ca
    42b2:	48 bf 6b c9 00 00 00 	movabs $0xc96b,%rdi
    42b9:	00 00 00 
    42bc:	31 c0                	xor    %eax,%eax
    42be:	48 ba 0a a6 00 00 00 	movabs $0xa60a,%rdx
    42c5:	00 00 00 
    42c8:	ff d2                	call   *%rdx
    42ca:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    42cf:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
    42d4:	49 2b 14 24          	sub    (%r12),%rdx
    42d8:	74 0c                	je     0x42e6
    42da:	48 b8 40 3e 00 00 00 	movabs $0x3e40,%rax
    42e1:	00 00 00 
    42e4:	ff d0                	call   *%rax
    42e6:	48 83 c4 58          	add    $0x58,%rsp
    42ea:	5b                   	pop    %rbx
    42eb:	5d                   	pop    %rbp
    42ec:	41 5c                	pop    %r12
    42ee:	41 5d                	pop    %r13
    42f0:	41 5e                	pop    %r14
    42f2:	41 5f                	pop    %r15
    42f4:	c3                   	ret    
    42f5:	48 89 fe             	mov    %rdi,%rsi
    42f8:	b9 02 00 00 00       	mov    $0x2,%ecx
    42fd:	ba 01 00 00 00       	mov    $0x1,%edx
    4302:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    4307:	48 b8 1b 41 00 00 00 	movabs $0x411b,%rax
    430e:	00 00 00 
    4311:	ff e0                	jmp    *%rax
    4313:	b9 02 00 00 00       	mov    $0x2,%ecx
    4318:	ba 02 00 00 00       	mov    $0x2,%edx
    431d:	48 b8 1b 41 00 00 00 	movabs $0x411b,%rax
    4324:	00 00 00 
    4327:	ff e0                	jmp    *%rax
    4329:	48 b8 80 f8 00 00 00 	movabs $0xf880,%rax
    4330:	00 00 00 
    4333:	41 56                	push   %r14
    4335:	41 55                	push   %r13
    4337:	49 89 fd             	mov    %rdi,%r13
    433a:	48 89 f7             	mov    %rsi,%rdi
    433d:	41 54                	push   %r12
    433f:	49 89 d4             	mov    %rdx,%r12
    4342:	55                   	push   %rbp
    4343:	4c 89 c5             	mov    %r8,%rbp
    4346:	53                   	push   %rbx
    4347:	48 89 cb             	mov    %rcx,%rbx
    434a:	48 83 ec 20          	sub    $0x20,%rsp
    434e:	83 38 00             	cmpl   $0x0,(%rax)
    4351:	0f 84 8a 00 00 00    	je     0x43e1
    4357:	49 be a8 f8 00 00 00 	movabs $0xf8a8,%r14
    435e:	00 00 00 
    4361:	45 31 d2             	xor    %r10d,%r10d
    4364:	48 85 f6             	test   %rsi,%rsi
    4367:	74 35                	je     0x439e
    4369:	49 8b 16             	mov    (%r14),%rdx
    436c:	4d 8b 45 00          	mov    0x0(%r13),%r8
    4370:	48 b8 b0 f8 00 00 00 	movabs $0xf8b0,%rax
    4377:	00 00 00 
    437a:	48 b9 59 97 00 00 00 	movabs $0x9759,%rcx
    4381:	00 00 00 
    4384:	48 8b 30             	mov    (%rax),%rsi
    4387:	49 39 d0             	cmp    %rdx,%r8
    438a:	73 0a                	jae    0x4396
    438c:	4c 89 c2             	mov    %r8,%rdx
    438f:	ff d1                	call   *%rcx
    4391:	45 31 d2             	xor    %r10d,%r10d
    4394:	eb 08                	jmp    0x439e
    4396:	ff d1                	call   *%rcx
    4398:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    439e:	49 8b 06             	mov    (%r14),%rax
    43a1:	49 89 45 00          	mov    %rax,0x0(%r13)
    43a5:	4d 85 e4             	test   %r12,%r12
    43a8:	74 0e                	je     0x43b8
    43aa:	48 a1 a0 f8 00 00 00 	movabs 0xf8a0,%rax
    43b1:	00 00 00 
    43b4:	49 89 04 24          	mov    %rax,(%r12)
    43b8:	48 85 db             	test   %rbx,%rbx
    43bb:	74 0d                	je     0x43ca
    43bd:	48 a1 98 f8 00 00 00 	movabs 0xf898,%rax
    43c4:	00 00 00 
    43c7:	48 89 03             	mov    %rax,(%rbx)
    43ca:	48 85 ed             	test   %rbp,%rbp
    43cd:	0f 84 8b 00 00 00    	je     0x445e
    43d3:	a1 90 f8 00 00 00 00 	movabs 0xf890,%eax
    43da:	00 00 
    43dc:	89 45 00             	mov    %eax,0x0(%rbp)
    43df:	eb 7d                	jmp    0x445e
    43e1:	48 85 d2             	test   %rdx,%rdx
    43e4:	75 05                	jne    0x43eb
    43e6:	4c 8d 64 24 10       	lea    0x10(%rsp),%r12
    43eb:	48 85 ed             	test   %rbp,%rbp
    43ee:	75 05                	jne    0x43f5
    43f0:	48 8d 6c 24 0c       	lea    0xc(%rsp),%rbp
    43f5:	48 85 db             	test   %rbx,%rbx
    43f8:	75 05                	jne    0x43ff
    43fa:	48 8d 5c 24 18       	lea    0x18(%rsp),%rbx
    43ff:	48 89 fa             	mov    %rdi,%rdx
    4402:	49 89 e9             	mov    %rbp,%r9
    4405:	49 89 d8             	mov    %rbx,%r8
    4408:	4c 89 e1             	mov    %r12,%rcx
    440b:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    4412:	00 00 00 
    4415:	4c 89 ee             	mov    %r13,%rsi
    4418:	48 8b 40 60          	mov    0x60(%rax),%rax
    441c:	4c 8b 50 38          	mov    0x38(%rax),%r10
    4420:	48 b8 c3 11 00 00 00 	movabs $0x11c3,%rax
    4427:	00 00 00 
    442a:	4c 89 d7             	mov    %r10,%rdi
    442d:	ff d0                	call   *%rax
    442f:	48 83 3b 00          	cmpq   $0x0,(%rbx)
    4433:	75 07                	jne    0x443c
    4435:	48 c7 03 28 00 00 00 	movq   $0x28,(%rbx)
    443c:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    4442:	48 85 c0             	test   %rax,%rax
    4445:	74 17                	je     0x445e
    4447:	48 ba 05 00 00 00 00 	movabs $0x8000000000000005,%rdx
    444e:	00 00 80 
    4451:	45 31 d2             	xor    %r10d,%r10d
    4454:	48 39 d0             	cmp    %rdx,%rax
    4457:	41 0f 95 c2          	setne  %r10b
    445b:	41 f7 da             	neg    %r10d
    445e:	48 83 c4 20          	add    $0x20,%rsp
    4462:	44 89 d0             	mov    %r10d,%eax
    4465:	5b                   	pop    %rbx
    4466:	5d                   	pop    %rbp
    4467:	41 5c                	pop    %r12
    4469:	41 5d                	pop    %r13
    446b:	41 5e                	pop    %r14
    446d:	c3                   	ret    
    446e:	48 b8 41 00 70 00 70 	movabs $0x6c007000700041,%rax
    4475:	00 6c 00 
    4478:	41 57                	push   %r15
    447a:	41 56                	push   %r14
    447c:	41 55                	push   %r13
    447e:	49 bd b0 f8 00 00 00 	movabs $0xf8b0,%r13
    4485:	00 00 00 
    4488:	41 54                	push   %r12
    448a:	55                   	push   %rbp
    448b:	48 89 f5             	mov    %rsi,%rbp
    448e:	53                   	push   %rbx
    448f:	48 89 fb             	mov    %rdi,%rbx
    4492:	48 83 ec 38          	sub    $0x38,%rsp
    4496:	48 89 44 24 26       	mov    %rax,0x26(%rsp)
    449b:	48 8d 74 24 26       	lea    0x26(%rsp),%rsi
    44a0:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    44a7:	00 00 00 
    44aa:	48 89 14 24          	mov    %rdx,(%rsp)
    44ae:	ba 0a 00 00 00       	mov    $0xa,%edx
    44b3:	48 8b 78 18          	mov    0x18(%rax),%rdi
    44b7:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    44bc:	48 b8 e1 97 00 00 00 	movabs $0x97e1,%rax
    44c3:	00 00 00 
    44c6:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    44cb:	66 c7 44 24 2e 65 00 	movw   $0x65,0x2e(%rsp)
    44d2:	ff d0                	call   *%rax
    44d4:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    44d8:	49 be a8 f8 00 00 00 	movabs $0xf8a8,%r14
    44df:	00 00 00 
    44e2:	49 8b 75 00          	mov    0x0(%r13),%rsi
    44e6:	49 b8 90 f8 00 00 00 	movabs $0xf890,%r8
    44ed:	00 00 00 
    44f0:	48 b9 98 f8 00 00 00 	movabs $0xf898,%rcx
    44f7:	00 00 00 
    44fa:	48 ba a0 f8 00 00 00 	movabs $0xf8a0,%rdx
    4501:	00 00 00 
    4504:	4c 89 f7             	mov    %r14,%rdi
    4507:	48 b8 29 43 00 00 00 	movabs $0x4329,%rax
    450e:	00 00 00 
    4511:	ff d0                	call   *%rax
    4513:	85 c0                	test   %eax,%eax
    4515:	0f 88 a6 00 00 00    	js     0x45c1
    451b:	49 8b 3e             	mov    (%r14),%rdi
    451e:	48 85 ed             	test   %rbp,%rbp
    4521:	74 27                	je     0x454a
    4523:	48 39 3b             	cmp    %rdi,(%rbx)
    4526:	73 22                	jae    0x454a
    4528:	48 be e1 c9 00 00 00 	movabs $0xc9e1,%rsi
    452f:	00 00 00 
    4532:	bf 1d 00 00 00       	mov    $0x1d,%edi
    4537:	31 c0                	xor    %eax,%eax
    4539:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    4540:	00 00 00 
    4543:	ff d2                	call   *%rdx
    4545:	e9 ad 01 00 00       	jmp    0x46f7
    454a:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    4551:	00 00 00 
    4554:	ff d0                	call   *%rax
    4556:	49 89 45 00          	mov    %rax,0x0(%r13)
    455a:	48 89 c6             	mov    %rax,%rsi
    455d:	48 85 c0             	test   %rax,%rax
    4560:	75 0e                	jne    0x4570
    4562:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    4569:	00 00 
    456b:	e9 87 01 00 00       	jmp    0x46f7
    4570:	49 bf 98 f8 00 00 00 	movabs $0xf898,%r15
    4577:	00 00 00 
    457a:	49 be a0 f8 00 00 00 	movabs $0xf8a0,%r14
    4581:	00 00 00 
    4584:	49 bc a8 f8 00 00 00 	movabs $0xf8a8,%r12
    458b:	00 00 00 
    458e:	49 b8 90 f8 00 00 00 	movabs $0xf890,%r8
    4595:	00 00 00 
    4598:	4c 89 f9             	mov    %r15,%rcx
    459b:	4c 89 f2             	mov    %r14,%rdx
    459e:	4c 89 e7             	mov    %r12,%rdi
    45a1:	48 b8 29 43 00 00 00 	movabs $0x4329,%rax
    45a8:	00 00 00 
    45ab:	ff d0                	call   *%rax
    45ad:	85 c0                	test   %eax,%eax
    45af:	7f 1f                	jg     0x45d0
    45b1:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    45b8:	00 00 00 
    45bb:	49 8b 7d 00          	mov    0x0(%r13),%rdi
    45bf:	ff d0                	call   *%rax
    45c1:	48 be c4 c9 00 00 00 	movabs $0xc9c4,%rsi
    45c8:	00 00 00 
    45cb:	e9 62 ff ff ff       	jmp    0x4532
    45d0:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    45d7:	00 00 00 
    45da:	49 8b 16             	mov    (%r14),%rdx
    45dd:	48 8b 40 60          	mov    0x60(%rax),%rax
    45e1:	48 8b b8 e8 00 00 00 	mov    0xe8(%rax),%rdi
    45e8:	48 b8 30 f8 00 00 00 	movabs $0xf830,%rax
    45ef:	00 00 00 
    45f2:	48 8b 30             	mov    (%rax),%rsi
    45f5:	48 b8 90 11 00 00 00 	movabs $0x1190,%rax
    45fc:	00 00 00 
    45ff:	ff d0                	call   *%rax
    4601:	48 85 c0             	test   %rax,%rax
    4604:	74 4d                	je     0x4653
    4606:	48 ba 02 00 00 00 00 	movabs $0x8000000000000002,%rdx
    460d:	00 00 80 
    4610:	49 8b 7d 00          	mov    0x0(%r13),%rdi
    4614:	48 39 d0             	cmp    %rdx,%rax
    4617:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    461e:	00 00 00 
    4621:	74 11                	je     0x4634
    4623:	ff d0                	call   *%rax
    4625:	48 be 00 ca 00 00 00 	movabs $0xca00,%rsi
    462c:	00 00 00 
    462f:	e9 fe fe ff ff       	jmp    0x4532
    4634:	ff d0                	call   *%rax
    4636:	31 c0                	xor    %eax,%eax
    4638:	48 bf 20 ca 00 00 00 	movabs $0xca20,%rdi
    463f:	00 00 00 
    4642:	48 ba 0a a6 00 00 00 	movabs $0xa60a,%rdx
    4649:	00 00 00 
    464c:	ff d2                	call   *%rdx
    464e:	e9 85 fe ff ff       	jmp    0x44d8
    4653:	48 b8 80 f8 00 00 00 	movabs $0xf880,%rax
    465a:	00 00 00 
    465d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
    4663:	48 85 db             	test   %rbx,%rbx
    4666:	74 07                	je     0x466f
    4668:	49 8b 04 24          	mov    (%r12),%rax
    466c:	48 89 03             	mov    %rax,(%rbx)
    466f:	48 85 ed             	test   %rbp,%rbp
    4672:	74 20                	je     0x4694
    4674:	48 b8 b0 f8 00 00 00 	movabs $0xf8b0,%rax
    467b:	00 00 00 
    467e:	49 8b 14 24          	mov    (%r12),%rdx
    4682:	48 8b 30             	mov    (%rax),%rsi
    4685:	48 89 ef             	mov    %rbp,%rdi
    4688:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    468f:	00 00 00 
    4692:	ff d0                	call   *%rax
    4694:	48 83 3c 24 00       	cmpq   $0x0,(%rsp)
    4699:	74 0a                	je     0x46a5
    469b:	49 8b 06             	mov    (%r14),%rax
    469e:	48 8b 1c 24          	mov    (%rsp),%rbx
    46a2:	48 89 03             	mov    %rax,(%rbx)
    46a5:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
    46ab:	74 0b                	je     0x46b8
    46ad:	49 8b 07             	mov    (%r15),%rax
    46b0:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    46b5:	48 89 03             	mov    %rax,(%rbx)
    46b8:	48 83 7c 24 10 00    	cmpq   $0x0,0x10(%rsp)
    46be:	74 10                	je     0x46d0
    46c0:	a1 90 f8 00 00 00 00 	movabs 0xf890,%eax
    46c7:	00 00 
    46c9:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    46ce:	89 01                	mov    %eax,(%rcx)
    46d0:	31 c0                	xor    %eax,%eax
    46d2:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%rsp)
    46d7:	75 1e                	jne    0x46f7
    46d9:	48 bf e8 3f 00 00 00 	movabs $0x3fe8,%rdi
    46e0:	00 00 00 
    46e3:	89 04 24             	mov    %eax,(%rsp)
    46e6:	31 f6                	xor    %esi,%esi
    46e8:	48 ba 49 13 00 00 00 	movabs $0x1349,%rdx
    46ef:	00 00 00 
    46f2:	ff d2                	call   *%rdx
    46f4:	8b 04 24             	mov    (%rsp),%eax
    46f7:	48 83 c4 38          	add    $0x38,%rsp
    46fb:	5b                   	pop    %rbx
    46fc:	5d                   	pop    %rbp
    46fd:	41 5c                	pop    %r12
    46ff:	41 5d                	pop    %r13
    4701:	41 5e                	pop    %r14
    4703:	41 5f                	pop    %r15
    4705:	c3                   	ret    
    4706:	48 83 ec 18          	sub    $0x18,%rsp
    470a:	45 31 c0             	xor    %r8d,%r8d
    470d:	31 d2                	xor    %edx,%edx
    470f:	31 f6                	xor    %esi,%esi
    4711:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    4718:	00 
    4719:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    471e:	48 89 e7             	mov    %rsp,%rdi
    4721:	48 b8 29 43 00 00 00 	movabs $0x4329,%rax
    4728:	00 00 00 
    472b:	ff d0                	call   *%rax
    472d:	85 c0                	test   %eax,%eax
    472f:	79 21                	jns    0x4752
    4731:	48 be 48 ca 00 00 00 	movabs $0xca48,%rsi
    4738:	00 00 00 
    473b:	bf 1d 00 00 00       	mov    $0x1d,%edi
    4740:	31 c0                	xor    %eax,%eax
    4742:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    4749:	00 00 00 
    474c:	ff d2                	call   *%rdx
    474e:	31 c0                	xor    %eax,%eax
    4750:	eb 10                	jmp    0x4762
    4752:	48 8b 04 24          	mov    (%rsp),%rax
    4756:	48 05 ff 1f 00 00    	add    $0x1fff,%rax
    475c:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
    4762:	48 83 c4 18          	add    $0x18,%rsp
    4766:	c3                   	ret    
    4767:	53                   	push   %rbx
    4768:	48 bb 88 f8 00 00 00 	movabs $0xf888,%rbx
    476f:	00 00 00 
    4772:	48 8b 03             	mov    (%rbx),%rax
    4775:	48 85 c0             	test   %rax,%rax
    4778:	74 15                	je     0x478f
    477a:	48 8b 70 08          	mov    0x8(%rax),%rsi
    477e:	48 8b 38             	mov    (%rax),%rdi
    4781:	48 b8 8f 40 00 00 00 	movabs $0x408f,%rax
    4788:	00 00 00 
    478b:	ff d0                	call   *%rax
    478d:	eb e3                	jmp    0x4772
    478f:	5b                   	pop    %rbx
    4790:	c3                   	ret    
    4791:	41 57                	push   %r15
    4793:	bf 06 00 00 00       	mov    $0x6,%edi
    4798:	41 56                	push   %r14
    479a:	41 55                	push   %r13
    479c:	41 54                	push   %r12
    479e:	55                   	push   %rbp
    479f:	48 bd f5 42 00 00 00 	movabs $0x42f5,%rbp
    47a6:	00 00 00 
    47a9:	53                   	push   %rbx
    47aa:	48 83 ec 58          	sub    $0x58,%rsp
    47ae:	ff d5                	call   *%rbp
    47b0:	48 85 c0             	test   %rax,%rax
    47b3:	75 0f                	jne    0x47c4
    47b5:	48 bf 67 ca 00 00 00 	movabs $0xca67,%rdi
    47bc:	00 00 00 
    47bf:	e9 8f 00 00 00       	jmp    0x4853
    47c4:	45 31 c0             	xor    %r8d,%r8d
    47c7:	31 d2                	xor    %edx,%edx
    47c9:	49 89 c4             	mov    %rax,%r12
    47cc:	48 89 c6             	mov    %rax,%rsi
    47cf:	48 c7 44 24 18 00 30 	movq   $0x3000,0x18(%rsp)
    47d6:	00 00 
    47d8:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
    47dd:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    47e2:	48 bb 29 43 00 00 00 	movabs $0x4329,%rbx
    47e9:	00 00 00 
    47ec:	ff d3                	call   *%rbx
    47ee:	85 c0                	test   %eax,%eax
    47f0:	75 53                	jne    0x4845
    47f2:	4c 89 e7             	mov    %r12,%rdi
    47f5:	be 06 00 00 00       	mov    $0x6,%esi
    47fa:	48 b8 8f 40 00 00 00 	movabs $0x408f,%rax
    4801:	00 00 00 
    4804:	ff d0                	call   *%rax
    4806:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    480b:	48 c1 e7 05          	shl    $0x5,%rdi
    480f:	48 03 7c 24 18       	add    0x18(%rsp),%rdi
    4814:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    4819:	48 81 c7 ff 0f 00 00 	add    $0xfff,%rdi
    4820:	48 c1 ef 0c          	shr    $0xc,%rdi
    4824:	48 01 ff             	add    %rdi,%rdi
    4827:	ff d5                	call   *%rbp
    4829:	49 89 c4             	mov    %rax,%r12
    482c:	48 85 c0             	test   %rax,%rax
    482f:	74 84                	je     0x47b5
    4831:	45 31 c0             	xor    %r8d,%r8d
    4834:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
    4839:	31 d2                	xor    %edx,%edx
    483b:	48 89 c6             	mov    %rax,%rsi
    483e:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    4843:	ff d3                	call   *%rbx
    4845:	85 c0                	test   %eax,%eax
    4847:	79 18                	jns    0x4861
    4849:	48 bf 7e ca 00 00 00 	movabs $0xca7e,%rdi
    4850:	00 00 00 
    4853:	48 ba 03 aa 00 00 00 	movabs $0xaa03,%rdx
    485a:	00 00 00 
    485d:	31 c0                	xor    %eax,%eax
    485f:	ff d2                	call   *%rdx
    4861:	4c 8b 74 24 18       	mov    0x18(%rsp),%r14
    4866:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
    486b:	4c 89 e5             	mov    %r12,%rbp
    486e:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
    4873:	4d 01 e6             	add    %r12,%r14
    4876:	4d 89 f5             	mov    %r14,%r13
    4879:	49 39 ee             	cmp    %rbp,%r14
    487c:	0f 86 a8 00 00 00    	jbe    0x492a
    4882:	83 7d 00 07          	cmpl   $0x7,0x0(%rbp)
    4886:	0f 85 96 00 00 00    	jne    0x4922
    488c:	48 8b 4d 08          	mov    0x8(%rbp),%rcx
    4890:	48 39 d9             	cmp    %rbx,%rcx
    4893:	0f 87 89 00 00 00    	ja     0x4922
    4899:	48 8b 55 18          	mov    0x18(%rbp),%rdx
    489d:	48 89 d0             	mov    %rdx,%rax
    48a0:	48 c1 e0 0c          	shl    $0xc,%rax
    48a4:	48 01 c8             	add    %rcx,%rax
    48a7:	48 3d 00 00 10 00    	cmp    $0x100000,%rax
    48ad:	76 73                	jbe    0x4922
    48af:	48 85 d2             	test   %rdx,%rdx
    48b2:	74 6e                	je     0x4922
    48b4:	4c 89 fa             	mov    %r15,%rdx
    48b7:	48 89 ee             	mov    %rbp,%rsi
    48ba:	4c 89 ef             	mov    %r13,%rdi
    48bd:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    48c4:	00 00 00 
    48c7:	ff d0                	call   *%rax
    48c9:	48 8b 55 08          	mov    0x8(%rbp),%rdx
    48cd:	48 81 fa ff ff 0f 00 	cmp    $0xfffff,%rdx
    48d4:	77 18                	ja     0x48ee
    48d6:	b8 ff 0f 10 00       	mov    $0x100fff,%eax
    48db:	48 c7 45 08 00 00 10 	movq   $0x100000,0x8(%rbp)
    48e2:	00 
    48e3:	48 29 d0             	sub    %rdx,%rax
    48e6:	48 c1 e8 0c          	shr    $0xc,%rax
    48ea:	48 29 45 18          	sub    %rax,0x18(%rbp)
    48ee:	49 8b 45 08          	mov    0x8(%r13),%rax
    48f2:	49 8b 55 18          	mov    0x18(%r13),%rdx
    48f6:	48 05 ff 0f 00 00    	add    $0xfff,%rax
    48fc:	48 c1 e8 0c          	shr    $0xc,%rax
    4900:	48 01 c2             	add    %rax,%rdx
    4903:	48 81 fa ff ff 0f 00 	cmp    $0xfffff,%rdx
    490a:	76 0c                	jbe    0x4918
    490c:	ba ff ff 0f 00       	mov    $0xfffff,%edx
    4911:	48 29 c2             	sub    %rax,%rdx
    4914:	49 89 55 18          	mov    %rdx,0x18(%r13)
    4918:	49 83 7d 18 00       	cmpq   $0x0,0x18(%r13)
    491d:	74 03                	je     0x4922
    491f:	4d 01 fd             	add    %r15,%r13
    4922:	4c 01 fd             	add    %r15,%rbp
    4925:	e9 4f ff ff ff       	jmp    0x4879
    492a:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
    492f:	4c 89 f0             	mov    %r14,%rax
    4932:	31 db                	xor    %ebx,%ebx
    4934:	4c 39 e8             	cmp    %r13,%rax
    4937:	73 09                	jae    0x4942
    4939:	48 03 58 18          	add    0x18(%rax),%rbx
    493d:	4c 01 f8             	add    %r15,%rax
    4940:	eb f2                	jmp    0x4934
    4942:	b8 00 40 06 00       	mov    $0x64000,%eax
    4947:	48 c1 eb 02          	shr    $0x2,%rbx
    494b:	4d 89 f2             	mov    %r14,%r10
    494e:	48 39 c3             	cmp    %rax,%rbx
    4951:	48 0f 47 d8          	cmova  %rax,%rbx
    4955:	b8 00 01 00 00       	mov    $0x100,%eax
    495a:	48 39 c3             	cmp    %rax,%rbx
    495d:	48 0f 42 d8          	cmovb  %rax,%rbx
    4961:	4c 89 d0             	mov    %r10,%rax
    4964:	4d 39 d5             	cmp    %r10,%r13
    4967:	76 6c                	jbe    0x49d5
    4969:	4d 01 fa             	add    %r15,%r10
    496c:	49 89 c1             	mov    %rax,%r9
    496f:	4c 89 d2             	mov    %r10,%rdx
    4972:	49 39 d5             	cmp    %rdx,%r13
    4975:	76 11                	jbe    0x4988
    4977:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
    497b:	49 39 49 18          	cmp    %rcx,0x18(%r9)
    497f:	4c 0f 42 ca          	cmovb  %rdx,%r9
    4983:	4c 01 fa             	add    %r15,%rdx
    4986:	eb ea                	jmp    0x4972
    4988:	4c 39 c8             	cmp    %r9,%rax
    498b:	74 d4                	je     0x4961
    498d:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
    4992:	b9 0a 00 00 00       	mov    $0xa,%ecx
    4997:	48 89 c6             	mov    %rax,%rsi
    499a:	f3 a5                	rep movsl %ds:(%rsi),%es:(%rdi)
    499c:	b9 0a 00 00 00       	mov    $0xa,%ecx
    49a1:	48 89 c7             	mov    %rax,%rdi
    49a4:	4c 89 ce             	mov    %r9,%rsi
    49a7:	f3 a5                	rep movsl %ds:(%rsi),%es:(%rdi)
    49a9:	48 8d 74 24 28       	lea    0x28(%rsp),%rsi
    49ae:	b9 0a 00 00 00       	mov    $0xa,%ecx
    49b3:	4c 89 cf             	mov    %r9,%rdi
    49b6:	f3 a5                	rep movsl %ds:(%rsi),%es:(%rdi)
    49b8:	eb a7                	jmp    0x4961
    49ba:	48 b8 35 5d 00 00 00 	movabs $0x5d35,%rax
    49c1:	00 00 00 
    49c4:	48 89 ee             	mov    %rbp,%rsi
    49c7:	48 c1 e6 0c          	shl    $0xc,%rsi
    49cb:	ff d0                	call   *%rax
    49cd:	48 29 eb             	sub    %rbp,%rbx
    49d0:	74 7c                	je     0x4a4e
    49d2:	4d 01 fe             	add    %r15,%r14
    49d5:	4d 39 f5             	cmp    %r14,%r13
    49d8:	76 65                	jbe    0x4a3f
    49da:	49 8b 6e 18          	mov    0x18(%r14),%rbp
    49de:	4d 8b 4e 08          	mov    0x8(%r14),%r9
    49e2:	48 39 dd             	cmp    %rbx,%rbp
    49e5:	76 0d                	jbe    0x49f4
    49e7:	48 29 dd             	sub    %rbx,%rbp
    49ea:	48 c1 e5 0c          	shl    $0xc,%rbp
    49ee:	49 01 e9             	add    %rbp,%r9
    49f1:	48 89 dd             	mov    %rbx,%rbp
    49f4:	4c 89 cf             	mov    %r9,%rdi
    49f7:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
    49fc:	b9 01 00 00 00       	mov    $0x1,%ecx
    4a01:	48 89 ee             	mov    %rbp,%rsi
    4a04:	48 b8 1b 41 00 00 00 	movabs $0x411b,%rax
    4a0b:	00 00 00 
    4a0e:	ba 02 00 00 00       	mov    $0x2,%edx
    4a13:	ff d0                	call   *%rax
    4a15:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
    4a1a:	48 85 c0             	test   %rax,%rax
    4a1d:	48 89 c7             	mov    %rax,%rdi
    4a20:	75 98                	jne    0x49ba
    4a22:	89 ea                	mov    %ebp,%edx
    4a24:	4c 89 ce             	mov    %r9,%rsi
    4a27:	31 c0                	xor    %eax,%eax
    4a29:	48 bf 94 ca 00 00 00 	movabs $0xca94,%rdi
    4a30:	00 00 00 
    4a33:	48 b9 03 aa 00 00 00 	movabs $0xaa03,%rcx
    4a3a:	00 00 00 
    4a3d:	ff d1                	call   *%rcx
    4a3f:	48 bf c9 ca 00 00 00 	movabs $0xcac9,%rdi
    4a46:	00 00 00 
    4a49:	e9 05 fe ff ff       	jmp    0x4853
    4a4e:	4c 89 e7             	mov    %r12,%rdi
    4a51:	be 06 00 00 00       	mov    $0x6,%esi
    4a56:	48 b8 8f 40 00 00 00 	movabs $0x408f,%rax
    4a5d:	00 00 00 
    4a60:	ff d0                	call   *%rax
    4a62:	48 83 c4 58          	add    $0x58,%rsp
    4a66:	5b                   	pop    %rbx
    4a67:	5d                   	pop    %rbp
    4a68:	41 5c                	pop    %r12
    4a6a:	41 5d                	pop    %r13
    4a6c:	41 5e                	pop    %r14
    4a6e:	41 5f                	pop    %r15
    4a70:	c3                   	ret    
    4a71:	89 f9                	mov    %edi,%ecx
    4a73:	c1 e9 10             	shr    $0x10,%ecx
    4a76:	66 85 ff             	test   %di,%di
    4a79:	75 2c                	jne    0x4aa7
    4a7b:	8d 41 ff             	lea    -0x1(%rcx),%eax
    4a7e:	66 83 f8 1e          	cmp    $0x1e,%ax
    4a82:	77 70                	ja     0x4af4
    4a84:	83 f9 09             	cmp    $0x9,%ecx
    4a87:	74 6b                	je     0x4af4
    4a89:	66 83 f9 0d          	cmp    $0xd,%cx
    4a8d:	77 0c                	ja     0x4a9b
    4a8f:	b8 00 25 00 00       	mov    $0x2500,%eax
    4a94:	48 d3 e8             	shr    %cl,%rax
    4a97:	a8 01                	test   $0x1,%al
    4a99:	75 59                	jne    0x4af4
    4a9b:	83 c1 60             	add    $0x60,%ecx
    4a9e:	0f b7 c1             	movzwl %cx,%eax
    4aa1:	0d 00 00 00 02       	or     $0x2000000,%eax
    4aa6:	c3                   	ret    
    4aa7:	66 83 f9 0d          	cmp    $0xd,%cx
    4aab:	0f 94 c2             	sete   %dl
    4aae:	66 83 ff 0d          	cmp    $0xd,%di
    4ab2:	75 09                	jne    0x4abd
    4ab4:	b8 0d 00 00 00       	mov    $0xd,%eax
    4ab9:	84 d2                	test   %dl,%dl
    4abb:	75 3a                	jne    0x4af7
    4abd:	66 83 ff 17          	cmp    $0x17,%di
    4ac1:	77 11                	ja     0x4ad4
    4ac3:	48 b8 a0 c1 00 00 00 	movabs $0xc1a0,%rax
    4aca:	00 00 00 
    4acd:	0f b7 ff             	movzwl %di,%edi
    4ad0:	8b 04 b8             	mov    (%rax,%rdi,4),%eax
    4ad3:	c3                   	ret    
    4ad4:	8d 41 e0             	lea    -0x20(%rcx),%eax
    4ad7:	8d 71 f8             	lea    -0x8(%rcx),%esi
    4ada:	66 83 f8 5f          	cmp    $0x5f,%ax
    4ade:	0f 96 c0             	setbe  %al
    4ae1:	66 83 fe 02          	cmp    $0x2,%si
    4ae5:	40 0f 96 c6          	setbe  %sil
    4ae9:	40 08 f0             	or     %sil,%al
    4aec:	75 06                	jne    0x4af4
    4aee:	31 c0                	xor    %eax,%eax
    4af0:	84 d2                	test   %dl,%dl
    4af2:	74 03                	je     0x4af7
    4af4:	0f b7 c1             	movzwl %cx,%eax
    4af7:	c3                   	ret    
    4af8:	48 85 ff             	test   %rdi,%rdi
    4afb:	0f 84 92 00 00 00    	je     0x4b93
    4b01:	41 56                	push   %r14
    4b03:	49 89 f8             	mov    %rdi,%r8
    4b06:	49 be b8 f8 00 00 00 	movabs $0xf8b8,%r14
    4b0d:	00 00 00 
    4b10:	41 55                	push   %r13
    4b12:	41 8b 3e             	mov    (%r14),%edi
    4b15:	49 bd 71 4a 00 00 00 	movabs $0x4a71,%r13
    4b1c:	00 00 00 
    4b1f:	41 54                	push   %r12
    4b21:	49 89 d4             	mov    %rdx,%r12
    4b24:	55                   	push   %rbp
    4b25:	89 cd                	mov    %ecx,%ebp
    4b27:	53                   	push   %rbx
    4b28:	48 89 f3             	mov    %rsi,%rbx
    4b2b:	41 ff d5             	call   *%r13
    4b2e:	89 c2                	mov    %eax,%edx
    4b30:	85 c0                	test   %eax,%eax
    4b32:	75 2a                	jne    0x4b5e
    4b34:	49 8b 78 08          	mov    0x8(%r8),%rdi
    4b38:	4c 89 f2             	mov    %r14,%rdx
    4b3b:	4c 89 c6             	mov    %r8,%rsi
    4b3e:	48 b8 90 11 00 00 00 	movabs $0x1190,%rax
    4b45:	00 00 00 
    4b48:	ff d0                	call   *%rax
    4b4a:	48 85 c0             	test   %rax,%rax
    4b4d:	74 07                	je     0x4b56
    4b4f:	b8 2c 00 00 00       	mov    $0x2c,%eax
    4b54:	eb 34                	jmp    0x4b8a
    4b56:	41 8b 3e             	mov    (%r14),%edi
    4b59:	41 ff d5             	call   *%r13
    4b5c:	89 c2                	mov    %eax,%edx
    4b5e:	49 8b 06             	mov    (%r14),%rax
    4b61:	48 89 03             	mov    %rax,(%rbx)
    4b64:	a1 c0 f8 00 00 00 00 	movabs 0xf8c0,%eax
    4b6b:	00 00 
    4b6d:	89 43 08             	mov    %eax,0x8(%rbx)
    4b70:	31 c0                	xor    %eax,%eax
    4b72:	41 89 14 24          	mov    %edx,(%r12)
    4b76:	85 ed                	test   %ebp,%ebp
    4b78:	74 10                	je     0x4b8a
    4b7a:	48 b9 b8 f8 00 00 00 	movabs $0xf8b8,%rcx
    4b81:	00 00 00 
    4b84:	c7 01 00 00 00 00    	movl   $0x0,(%rcx)
    4b8a:	5b                   	pop    %rbx
    4b8b:	5d                   	pop    %rbp
    4b8c:	41 5c                	pop    %r12
    4b8e:	41 5d                	pop    %r13
    4b90:	41 5e                	pop    %r14
    4b92:	c3                   	ret    
    4b93:	b8 2c 00 00 00       	mov    $0x2c,%eax
    4b98:	c3                   	ret    
    4b99:	55                   	push   %rbp
    4b9a:	48 bd 50 f8 00 00 00 	movabs $0xf850,%rbp
    4ba1:	00 00 00 
    4ba4:	53                   	push   %rbx
    4ba5:	48 83 ec 28          	sub    $0x28,%rsp
    4ba9:	48 8b 45 00          	mov    0x0(%rbp),%rax
    4bad:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    4bb2:	48 b8 34 75 9e dd 62 	movabs $0x46987762dd9e7534,%rax
    4bb9:	77 98 46 
    4bbc:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    4bc1:	48 b8 8c 14 f5 85 17 	movabs $0xaa25a61785f5148c,%rax
    4bc8:	a6 25 aa 
    4bcb:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    4bd0:	48 b8 80 f8 00 00 00 	movabs $0xf880,%rax
    4bd7:	00 00 00 
    4bda:	83 38 00             	cmpl   $0x0,(%rax)
    4bdd:	75 32                	jne    0x4c11
    4bdf:	48 83 7f 38 00       	cmpq   $0x0,0x38(%rdi)
    4be4:	48 89 fb             	mov    %rdi,%rbx
    4be7:	75 28                	jne    0x4c11
    4be9:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    4bf0:	00 00 00 
    4bf3:	ba 02 00 00 00       	mov    $0x2,%edx
    4bf8:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    4bfd:	48 8b 78 28          	mov    0x28(%rax),%rdi
    4c01:	48 b8 ec 2d 00 00 00 	movabs $0x2dec,%rax
    4c08:	00 00 00 
    4c0b:	ff d0                	call   *%rax
    4c0d:	48 89 43 38          	mov    %rax,0x38(%rbx)
    4c11:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    4c16:	48 2b 45 00          	sub    0x0(%rbp),%rax
    4c1a:	74 0c                	je     0x4c28
    4c1c:	48 b8 40 3e 00 00 00 	movabs $0x3e40,%rax
    4c23:	00 00 00 
    4c26:	ff d0                	call   *%rax
    4c28:	48 83 c4 28          	add    $0x28,%rsp
    4c2c:	31 c0                	xor    %eax,%eax
    4c2e:	5b                   	pop    %rbx
    4c2f:	5d                   	pop    %rbp
    4c30:	c3                   	ret    
    4c31:	48 b8 80 f8 00 00 00 	movabs $0xf880,%rax
    4c38:	00 00 00 
    4c3b:	83 38 00             	cmpl   $0x0,(%rax)
    4c3e:	75 2a                	jne    0x4c6a
    4c40:	48 b8 e0 e3 00 00 00 	movabs $0xe3e0,%rax
    4c47:	00 00 00 
    4c4a:	83 38 01             	cmpl   $0x1,(%rax)
    4c4d:	75 1b                	jne    0x4c6a
    4c4f:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    4c56:	00 00 00 
    4c59:	48 8b 40 40          	mov    0x40(%rax),%rax
    4c5d:	48 8b 50 48          	mov    0x48(%rax),%rdx
    4c61:	0f b7 42 0c          	movzwl 0xc(%rdx),%eax
    4c65:	8b 52 10             	mov    0x10(%rdx),%edx
    4c68:	eb 04                	jmp    0x4c6e
    4c6a:	31 c0                	xor    %eax,%eax
    4c6c:	31 d2                	xor    %edx,%edx
    4c6e:	c1 e2 10             	shl    $0x10,%edx
    4c71:	09 d0                	or     %edx,%eax
    4c73:	c3                   	ret    
    4c74:	48 b8 80 f8 00 00 00 	movabs $0xf880,%rax
    4c7b:	00 00 00 
    4c7e:	83 38 00             	cmpl   $0x0,(%rax)
    4c81:	75 24                	jne    0x4ca7
    4c83:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    4c8a:	00 00 00 
    4c8d:	48 63 d6             	movslq %esi,%rdx
    4c90:	4c 8b 40 40          	mov    0x40(%rax),%r8
    4c94:	48 b8 90 11 00 00 00 	movabs $0x1190,%rax
    4c9b:	00 00 00 
    4c9e:	49 8b 78 40          	mov    0x40(%r8),%rdi
    4ca2:	4c 89 c6             	mov    %r8,%rsi
    4ca5:	ff e0                	jmp    *%rax
    4ca7:	c3                   	ret    
    4ca8:	48 b8 80 f8 00 00 00 	movabs $0xf880,%rax
    4caf:	00 00 00 
    4cb2:	89 f2                	mov    %esi,%edx
    4cb4:	83 38 00             	cmpl   $0x0,(%rax)
    4cb7:	75 51                	jne    0x4d0a
    4cb9:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    4cc0:	00 00 00 
    4cc3:	48 8b 70 40          	mov    0x40(%rax),%rsi
    4cc7:	83 fa 01             	cmp    $0x1,%edx
    4cca:	74 14                	je     0x4ce0
    4ccc:	83 fa 02             	cmp    $0x2,%edx
    4ccf:	74 1a                	je     0x4ceb
    4cd1:	85 d2                	test   %edx,%edx
    4cd3:	75 35                	jne    0x4d0a
    4cd5:	48 8b 7e 28          	mov    0x28(%rsi),%rdi
    4cd9:	ba 07 00 00 00       	mov    $0x7,%edx
    4cde:	eb 1e                	jmp    0x4cfe
    4ce0:	a0 a9 e6 00 00 00 00 	movabs 0xe6a9,%al
    4ce7:	00 00 
    4ce9:	eb 09                	jmp    0x4cf4
    4ceb:	a0 a8 e6 00 00 00 00 	movabs 0xe6a8,%al
    4cf2:	00 00 
    4cf4:	48 89 c2             	mov    %rax,%rdx
    4cf7:	48 8b 7e 28          	mov    0x28(%rsi),%rdi
    4cfb:	83 e2 7f             	and    $0x7f,%edx
    4cfe:	48 b8 90 11 00 00 00 	movabs $0x1190,%rax
    4d05:	00 00 00 
    4d08:	ff e0                	jmp    *%rax
    4d0a:	c3                   	ret    
    4d0b:	48 b8 80 f8 00 00 00 	movabs $0xf880,%rax
    4d12:	00 00 00 
    4d15:	83 38 00             	cmpl   $0x0,(%rax)
    4d18:	75 64                	jne    0x4d7e
    4d1a:	48 b8 e0 e3 00 00 00 	movabs $0xe3e0,%rax
    4d21:	00 00 00 
    4d24:	83 38 01             	cmpl   $0x1,(%rax)
    4d27:	75 55                	jne    0x4d7e
    4d29:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    4d30:	00 00 00 
    4d33:	41 54                	push   %r12
    4d35:	31 d2                	xor    %edx,%edx
    4d37:	49 bc 90 11 00 00 00 	movabs $0x1190,%r12
    4d3e:	00 00 00 
    4d41:	55                   	push   %rbp
    4d42:	53                   	push   %rbx
    4d43:	48 8b 68 40          	mov    0x40(%rax),%rbp
    4d47:	48 8b 45 48          	mov    0x48(%rbp),%rax
    4d4b:	48 8b 7d 28          	mov    0x28(%rbp),%rdi
    4d4f:	48 89 ee             	mov    %rbp,%rsi
    4d52:	8b 58 08             	mov    0x8(%rax),%ebx
    4d55:	41 ff d4             	call   *%r12
    4d58:	48 8b 7d 30          	mov    0x30(%rbp),%rdi
    4d5c:	48 89 ee             	mov    %rbp,%rsi
    4d5f:	48 b8 82 11 00 00 00 	movabs $0x1182,%rax
    4d66:	00 00 00 
    4d69:	ff d0                	call   *%rax
    4d6b:	48 8b 7d 28          	mov    0x28(%rbp),%rdi
    4d6f:	48 63 d3             	movslq %ebx,%rdx
    4d72:	48 89 ee             	mov    %rbp,%rsi
    4d75:	5b                   	pop    %rbx
    4d76:	4c 89 e0             	mov    %r12,%rax
    4d79:	5d                   	pop    %rbp
    4d7a:	41 5c                	pop    %r12
    4d7c:	ff e0                	jmp    *%rax
    4d7e:	c3                   	ret    
    4d7f:	48 b8 e0 e3 00 00 00 	movabs $0xe3e0,%rax
    4d86:	00 00 00 
    4d89:	83 38 01             	cmpl   $0x1,(%rax)
    4d8c:	75 31                	jne    0x4dbf
    4d8e:	31 f6                	xor    %esi,%esi
    4d90:	50                   	push   %rax
    4d91:	48 b8 74 4c 00 00 00 	movabs $0x4c74,%rax
    4d98:	00 00 00 
    4d9b:	ff d0                	call   *%rax
    4d9d:	31 ff                	xor    %edi,%edi
    4d9f:	48 b8 48 2e 00 00 00 	movabs $0x2e48,%rax
    4da6:	00 00 00 
    4da9:	ff d0                	call   *%rax
    4dab:	48 b8 e0 e3 00 00 00 	movabs $0xe3e0,%rax
    4db2:	00 00 00 
    4db5:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%rax)
    4dbb:	31 c0                	xor    %eax,%eax
    4dbd:	5a                   	pop    %rdx
    4dbe:	c3                   	ret    
    4dbf:	31 c0                	xor    %eax,%eax
    4dc1:	c3                   	ret    
    4dc2:	48 ba 80 f8 00 00 00 	movabs $0xf880,%rdx
    4dc9:	00 00 00 
    4dcc:	b8 0d 00 00 00       	mov    $0xd,%eax
    4dd1:	83 3a 00             	cmpl   $0x0,(%rdx)
    4dd4:	0f 85 8a 00 00 00    	jne    0x4e64
    4dda:	a1 e0 e3 00 00 00 00 	movabs 0xe3e0,%eax
    4de1:	00 00 
    4de3:	83 f8 ff             	cmp    $0xffffffff,%eax
    4de6:	74 09                	je     0x4df1
    4de8:	83 f8 01             	cmp    $0x1,%eax
    4deb:	19 c0                	sbb    %eax,%eax
    4ded:	83 e0 0d             	and    $0xd,%eax
    4df0:	c3                   	ret    
    4df1:	48 b8 48 2e 00 00 00 	movabs $0x2e48,%rax
    4df8:	00 00 00 
    4dfb:	55                   	push   %rbp
    4dfc:	48 89 fd             	mov    %rdi,%rbp
    4dff:	bf 01 00 00 00       	mov    $0x1,%edi
    4e04:	ff d0                	call   *%rax
    4e06:	85 c0                	test   %eax,%eax
    4e08:	75 32                	jne    0x4e3c
    4e0a:	48 be db ca 00 00 00 	movabs $0xcadb,%rsi
    4e11:	00 00 00 
    4e14:	bf 0d 00 00 00       	mov    $0xd,%edi
    4e19:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    4e20:	00 00 00 
    4e23:	ff d2                	call   *%rdx
    4e25:	48 b8 e0 e3 00 00 00 	movabs $0xe3e0,%rax
    4e2c:	00 00 00 
    4e2f:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    4e35:	b8 0d 00 00 00       	mov    $0xd,%eax
    4e3a:	eb 26                	jmp    0x4e62
    4e3c:	48 b8 74 4c 00 00 00 	movabs $0x4c74,%rax
    4e43:	00 00 00 
    4e46:	be 01 00 00 00       	mov    $0x1,%esi
    4e4b:	48 89 ef             	mov    %rbp,%rdi
    4e4e:	ff d0                	call   *%rax
    4e50:	48 b8 e0 e3 00 00 00 	movabs $0xe3e0,%rax
    4e57:	00 00 00 
    4e5a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
    4e60:	31 c0                	xor    %eax,%eax
    4e62:	5d                   	pop    %rbp
    4e63:	c3                   	ret    
    4e64:	c3                   	ret    
    4e65:	48 b8 c2 4d 00 00 00 	movabs $0x4dc2,%rax
    4e6c:	00 00 00 
    4e6f:	53                   	push   %rbx
    4e70:	89 f3                	mov    %esi,%ebx
    4e72:	ff d0                	call   *%rax
    4e74:	85 c0                	test   %eax,%eax
    4e76:	75 2a                	jne    0x4ea2
    4e78:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    4e7f:	00 00 00 
    4e82:	89 d9                	mov    %ebx,%ecx
    4e84:	0f b7 d3             	movzwl %bx,%edx
    4e87:	5b                   	pop    %rbx
    4e88:	c1 e9 10             	shr    $0x10,%ecx
    4e8b:	48 8b 70 40          	mov    0x40(%rax),%rsi
    4e8f:	0f b7 c9             	movzwl %cx,%ecx
    4e92:	48 b8 9e 11 00 00 00 	movabs $0x119e,%rax
    4e99:	00 00 00 
    4e9c:	48 8b 7e 38          	mov    0x38(%rsi),%rdi
    4ea0:	ff e0                	jmp    *%rax
    4ea2:	5b                   	pop    %rbx
    4ea3:	c3                   	ret    
    4ea4:	48 b8 c2 4d 00 00 00 	movabs $0x4dc2,%rax
    4eab:	00 00 00 
    4eae:	41 54                	push   %r12
    4eb0:	55                   	push   %rbp
    4eb1:	53                   	push   %rbx
    4eb2:	48 89 f3             	mov    %rsi,%rbx
    4eb5:	48 83 ec 40          	sub    $0x40,%rsp
    4eb9:	ff d0                	call   *%rax
    4ebb:	85 c0                	test   %eax,%eax
    4ebd:	0f 85 57 01 00 00    	jne    0x501a
    4ec3:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    4eca:	00 00 00 
    4ecd:	48 8b 68 40          	mov    0x40(%rax),%rbp
    4ed1:	8b 03                	mov    (%rbx),%eax
    4ed3:	25 ff ff 7f 00       	and    $0x7fffff,%eax
    4ed8:	3d ff ff 00 00       	cmp    $0xffff,%eax
    4edd:	76 32                	jbe    0x4f11
    4edf:	ba 3f 00 00 00       	mov    $0x3f,%edx
    4ee4:	66 8b 7b 06          	mov    0x6(%rbx),%di
    4ee8:	66 89 14 24          	mov    %dx,(%rsp)
    4eec:	31 f6                	xor    %esi,%esi
    4eee:	4c 8d 63 18          	lea    0x18(%rbx),%r12
    4ef2:	89 fa                	mov    %edi,%edx
    4ef4:	41 89 fb             	mov    %edi,%r11d
    4ef7:	66 c1 ea 03          	shr    $0x3,%dx
    4efb:	66 41 81 e3 f8 07    	and    $0x7f8,%r11w
    4f01:	41 89 d2             	mov    %edx,%r10d
    4f04:	0f b6 ca             	movzbl %dl,%ecx
    4f07:	ba 01 00 00 00       	mov    $0x1,%edx
    4f0c:	e9 a4 00 00 00       	jmp    0x4fb5
    4f11:	ba 02 25 00 00       	mov    $0x2502,%edx
    4f16:	3d 03 25 00 00       	cmp    $0x2503,%eax
    4f1b:	74 c7                	je     0x4ee4
    4f1d:	77 3e                	ja     0x4f5d
    4f1f:	ba ba 25 00 00       	mov    $0x25ba,%edx
    4f24:	3d 92 21 00 00       	cmp    $0x2192,%eax
    4f29:	74 b9                	je     0x4ee4
    4f2b:	77 18                	ja     0x4f45
    4f2d:	ba c4 25 00 00       	mov    $0x25c4,%edx
    4f32:	3d 90 21 00 00       	cmp    $0x2190,%eax
    4f37:	74 ab                	je     0x4ee4
    4f39:	ba b2 25 00 00       	mov    $0x25b2,%edx
    4f3e:	3d 91 21 00 00       	cmp    $0x2191,%eax
    4f43:	eb 50                	jmp    0x4f95
    4f45:	ba bc 25 00 00       	mov    $0x25bc,%edx
    4f4a:	3d 93 21 00 00       	cmp    $0x2193,%eax
    4f4f:	74 93                	je     0x4ee4
    4f51:	ba 00 25 00 00       	mov    $0x2500,%edx
    4f56:	3d 01 25 00 00       	cmp    $0x2501,%eax
    4f5b:	eb 38                	jmp    0x4f95
    4f5d:	ba 14 25 00 00       	mov    $0x2514,%edx
    4f62:	3d 17 25 00 00       	cmp    $0x2517,%eax
    4f67:	0f 84 77 ff ff ff    	je     0x4ee4
    4f6d:	77 1c                	ja     0x4f8b
    4f6f:	ba 0c 25 00 00       	mov    $0x250c,%edx
    4f74:	3d 0f 25 00 00       	cmp    $0x250f,%eax
    4f79:	0f 84 65 ff ff ff    	je     0x4ee4
    4f7f:	ba 10 25 00 00       	mov    $0x2510,%edx
    4f84:	3d 13 25 00 00       	cmp    $0x2513,%eax
    4f89:	eb 0a                	jmp    0x4f95
    4f8b:	ba 18 25 00 00       	mov    $0x2518,%edx
    4f90:	3d 1b 25 00 00       	cmp    $0x251b,%eax
    4f95:	0f 84 49 ff ff ff    	je     0x4ee4
    4f9b:	89 c2                	mov    %eax,%edx
    4f9d:	e9 42 ff ff ff       	jmp    0x4ee4
    4fa2:	44 8d 4a 01          	lea    0x1(%rdx),%r9d
    4fa6:	83 fa 1f             	cmp    $0x1f,%edx
    4fa9:	74 34                	je     0x4fdf
    4fab:	3d fe ff 00 00       	cmp    $0xfffe,%eax
    4fb0:	76 09                	jbe    0x4fbb
    4fb2:	48 ff c6             	inc    %rsi
    4fb5:	39 f1                	cmp    %esi,%ecx
    4fb7:	77 e9                	ja     0x4fa2
    4fb9:	eb 24                	jmp    0x4fdf
    4fbb:	45 31 c0             	xor    %r8d,%r8d
    4fbe:	66 45 85 db          	test   %r11w,%r11w
    4fc2:	74 0d                	je     0x4fd1
    4fc4:	4d 89 e0             	mov    %r12,%r8
    4fc7:	41 80 fa 02          	cmp    $0x2,%r10b
    4fcb:	76 04                	jbe    0x4fd1
    4fcd:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    4fd1:	45 8b 04 b0          	mov    (%r8,%rsi,4),%r8d
    4fd5:	66 44 89 04 54       	mov    %r8w,(%rsp,%rdx,2)
    4fda:	44 89 ca             	mov    %r9d,%edx
    4fdd:	eb d3                	jmp    0x4fb2
    4fdf:	83 f8 7f             	cmp    $0x7f,%eax
    4fe2:	66 c7 04 54 00 00    	movw   $0x0,(%rsp,%rdx,2)
    4fe8:	48 bb 90 11 00 00 00 	movabs $0x1190,%rbx
    4fef:	00 00 00 
    4ff2:	77 15                	ja     0x5009
    4ff4:	66 f7 c7 f8 07       	test   $0x7f8,%di
    4ff9:	75 0e                	jne    0x5009
    4ffb:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
    4fff:	48 89 e2             	mov    %rsp,%rdx
    5002:	48 89 ee             	mov    %rbp,%rsi
    5005:	ff d3                	call   *%rbx
    5007:	eb 11                	jmp    0x501a
    5009:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
    500d:	48 89 e2             	mov    %rsp,%rdx
    5010:	48 89 ee             	mov    %rbp,%rsi
    5013:	ff d3                	call   *%rbx
    5015:	48 85 c0             	test   %rax,%rax
    5018:	74 e1                	je     0x4ffb
    501a:	48 83 c4 40          	add    $0x40,%rsp
    501e:	5b                   	pop    %rbx
    501f:	5d                   	pop    %rbp
    5020:	41 5c                	pop    %r12
    5022:	c3                   	ret    
    5023:	55                   	push   %rbp
    5024:	48 83 ec 10          	sub    $0x10,%rsp
    5028:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    502f:	00 00 00 
    5032:	48 8b 68 40          	mov    0x40(%rax),%rbp
    5036:	48 b8 c2 4d 00 00 00 	movabs $0x4dc2,%rax
    503d:	00 00 00 
    5040:	ff d0                	call   *%rax
    5042:	85 c0                	test   %eax,%eax
    5044:	74 13                	je     0x5059
    5046:	48 c7 04 24 50 00 00 	movq   $0x50,(%rsp)
    504d:	00 
    504e:	48 c7 44 24 08 19 00 	movq   $0x19,0x8(%rsp)
    5055:	00 00 
    5057:	eb 28                	jmp    0x5081
    5059:	48 8b 45 48          	mov    0x48(%rbp),%rax
    505d:	48 8b 7d 18          	mov    0x18(%rbp),%rdi
    5061:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    5066:	48 89 e1             	mov    %rsp,%rcx
    5069:	48 89 ee             	mov    %rbp,%rsi
    506c:	48 63 50 04          	movslq 0x4(%rax),%rdx
    5070:	48 b8 af 11 00 00 00 	movabs $0x11af,%rax
    5077:	00 00 00 
    507a:	ff d0                	call   *%rax
    507c:	48 85 c0             	test   %rax,%rax
    507f:	75 c5                	jne    0x5046
    5081:	0f b7 54 24 08       	movzwl 0x8(%rsp),%edx
    5086:	0f b7 04 24          	movzwl (%rsp),%eax
    508a:	48 83 c4 10          	add    $0x10,%rsp
    508e:	5d                   	pop    %rbp
    508f:	c1 e2 10             	shl    $0x10,%edx
    5092:	09 d0                	or     %edx,%eax
    5094:	c3                   	ret    
    5095:	48 b8 80 f8 00 00 00 	movabs $0xf880,%rax
    509c:	00 00 00 
    509f:	41 54                	push   %r12
    50a1:	48 83 ec 10          	sub    $0x10,%rsp
    50a5:	44 8b 20             	mov    (%rax),%r12d
    50a8:	45 85 e4             	test   %r12d,%r12d
    50ab:	75 5d                	jne    0x510a
    50ad:	31 c9                	xor    %ecx,%ecx
    50af:	48 8b 7f 38          	mov    0x38(%rdi),%rdi
    50b3:	48 89 e2             	mov    %rsp,%rdx
    50b6:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    50bb:	48 b8 f8 4a 00 00 00 	movabs $0x4af8,%rax
    50c2:	00 00 00 
    50c5:	ff d0                	call   *%rax
    50c7:	85 c0                	test   %eax,%eax
    50c9:	75 42                	jne    0x510d
    50cb:	8b 44 24 08          	mov    0x8(%rsp),%eax
    50cf:	85 c0                	test   %eax,%eax
    50d1:	79 3a                	jns    0x510d
    50d3:	41 89 c4             	mov    %eax,%r12d
    50d6:	41 83 e4 02          	and    $0x2,%r12d
    50da:	a8 01                	test   $0x1,%al
    50dc:	74 04                	je     0x50e2
    50de:	41 83 cc 01          	or     $0x1,%r12d
    50e2:	a8 20                	test   $0x20,%al
    50e4:	74 07                	je     0x50ed
    50e6:	41 81 cc 00 02 00 00 	or     $0x200,%r12d
    50ed:	a8 10                	test   $0x10,%al
    50ef:	74 04                	je     0x50f5
    50f1:	41 83 cc 08          	or     $0x8,%r12d
    50f5:	a8 08                	test   $0x8,%al
    50f7:	74 07                	je     0x5100
    50f9:	41 81 cc 00 01 00 00 	or     $0x100,%r12d
    5100:	a8 04                	test   $0x4,%al
    5102:	74 09                	je     0x510d
    5104:	41 83 cc 04          	or     $0x4,%r12d
    5108:	eb 03                	jmp    0x510d
    510a:	45 31 e4             	xor    %r12d,%r12d
    510d:	48 83 c4 10          	add    $0x10,%rsp
    5111:	44 89 e0             	mov    %r12d,%eax
    5114:	41 5c                	pop    %r12
    5116:	c3                   	ret    
    5117:	48 b8 80 f8 00 00 00 	movabs $0xf880,%rax
    511e:	00 00 00 
    5121:	41 54                	push   %r12
    5123:	48 83 ec 10          	sub    $0x10,%rsp
    5127:	44 8b 20             	mov    (%rax),%r12d
    512a:	45 85 e4             	test   %r12d,%r12d
    512d:	0f 85 bb 00 00 00    	jne    0x51ee
    5133:	48 8b 7f 38          	mov    0x38(%rdi),%rdi
    5137:	48 85 ff             	test   %rdi,%rdi
    513a:	74 75                	je     0x51b1
    513c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%rsp)
    5143:	b9 01 00 00 00       	mov    $0x1,%ecx
    5148:	48 89 e2             	mov    %rsp,%rdx
    514b:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    5150:	48 b8 f8 4a 00 00 00 	movabs $0x4af8,%rax
    5157:	00 00 00 
    515a:	ff d0                	call   *%rax
    515c:	85 c0                	test   %eax,%eax
    515e:	0f 85 8d 00 00 00    	jne    0x51f1
    5164:	44 8b 24 24          	mov    (%rsp),%r12d
    5168:	45 85 e4             	test   %r12d,%r12d
    516b:	0f 84 80 00 00 00    	je     0x51f1
    5171:	8b 44 24 08          	mov    0x8(%rsp),%eax
    5175:	85 c0                	test   %eax,%eax
    5177:	79 32                	jns    0x51ab
    5179:	a8 03                	test   $0x3,%al
    517b:	74 12                	je     0x518f
    517d:	41 0f ba e4 17       	bt     $0x17,%r12d
    5182:	73 0b                	jae    0x518f
    5184:	41 81 cc 00 00 00 01 	or     $0x1000000,%r12d
    518b:	44 89 24 24          	mov    %r12d,(%rsp)
    518f:	a8 30                	test   $0x30,%al
    5191:	74 07                	je     0x519a
    5193:	81 0c 24 00 00 00 04 	orl    $0x4000000,(%rsp)
    519a:	8b 14 24             	mov    (%rsp),%edx
    519d:	a8 0c                	test   $0xc,%al
    519f:	74 0a                	je     0x51ab
    51a1:	89 d0                	mov    %edx,%eax
    51a3:	0d 00 00 00 02       	or     $0x2000000,%eax
    51a8:	89 04 24             	mov    %eax,(%rsp)
    51ab:	44 8b 24 24          	mov    (%rsp),%r12d
    51af:	eb 40                	jmp    0x51f1
    51b1:	48 a1 28 f8 00 00 00 	movabs 0xf828,%rax
    51b8:	00 00 00 
    51bb:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
    51c0:	48 8b 70 30          	mov    0x30(%rax),%rsi
    51c4:	48 b8 90 11 00 00 00 	movabs $0x1190,%rax
    51cb:	00 00 00 
    51ce:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    51d2:	ff d0                	call   *%rax
    51d4:	48 85 c0             	test   %rax,%rax
    51d7:	75 18                	jne    0x51f1
    51d9:	48 b8 71 4a 00 00 00 	movabs $0x4a71,%rax
    51e0:	00 00 00 
    51e3:	8b 7c 24 04          	mov    0x4(%rsp),%edi
    51e7:	ff d0                	call   *%rax
    51e9:	41 89 c4             	mov    %eax,%r12d
    51ec:	eb 03                	jmp    0x51f1
    51ee:	45 31 e4             	xor    %r12d,%r12d
    51f1:	48 83 c4 10          	add    $0x10,%rsp
    51f5:	44 89 e0             	mov    %r12d,%eax
    51f8:	41 5c                	pop    %r12
    51fa:	c3                   	ret    
    51fb:	48 bf a8 b7 01 00 00 	movabs $0x1b7a8,%rdi
    5202:	00 00 00 
    5205:	55                   	push   %rbp
    5206:	48 bd 98 b7 01 00 00 	movabs $0x1b798,%rbp
    520d:	00 00 00 
    5210:	48 be 00 e3 00 00 00 	movabs $0xe300,%rsi
    5217:	00 00 00 
    521a:	48 83 7d 00 00       	cmpq   $0x0,0x0(%rbp)
    521f:	75 12                	jne    0x5233
    5221:	48 a1 18 e3 00 00 00 	movabs 0xe318,%rax
    5228:	00 00 00 
    522b:	48 85 c0             	test   %rax,%rax
    522e:	75 11                	jne    0x5241
    5230:	48 89 ef             	mov    %rbp,%rdi
    5233:	48 b8 9f 90 00 00 00 	movabs $0x909f,%rax
    523a:	00 00 00 
    523d:	ff d0                	call   *%rax
    523f:	eb 13                	jmp    0x5254
    5241:	48 89 f7             	mov    %rsi,%rdi
    5244:	ff d0                	call   *%rax
    5246:	48 be 00 e3 00 00 00 	movabs $0xe300,%rsi
    524d:	00 00 00 
    5250:	85 c0                	test   %eax,%eax
    5252:	74 dc                	je     0x5230
    5254:	48 bd 90 b7 01 00 00 	movabs $0x1b790,%rbp
    525b:	00 00 00 
    525e:	48 bf a0 b7 01 00 00 	movabs $0x1b7a0,%rdi
    5265:	00 00 00 
    5268:	48 be a0 e3 00 00 00 	movabs $0xe3a0,%rsi
    526f:	00 00 00 
    5272:	48 83 7d 00 00       	cmpq   $0x0,0x0(%rbp)
    5277:	75 12                	jne    0x528b
    5279:	48 a1 b8 e3 00 00 00 	movabs 0xe3b8,%rax
    5280:	00 00 00 
    5283:	48 85 c0             	test   %rax,%rax
    5286:	75 10                	jne    0x5298
    5288:	48 89 ef             	mov    %rbp,%rdi
    528b:	48 b8 9f 90 00 00 00 	movabs $0x909f,%rax
    5292:	00 00 00 
    5295:	5d                   	pop    %rbp
    5296:	ff e0                	jmp    *%rax
    5298:	48 89 f7             	mov    %rsi,%rdi
    529b:	ff d0                	call   *%rax
    529d:	48 be a0 e3 00 00 00 	movabs $0xe3a0,%rsi
    52a4:	00 00 00 
    52a7:	85 c0                	test   %eax,%eax
    52a9:	74 dd                	je     0x5288
    52ab:	5d                   	pop    %rbp
    52ac:	c3                   	ret    
    52ad:	55                   	push   %rbp
    52ae:	48 bd a0 e3 00 00 00 	movabs $0xe3a0,%rbp
    52b5:	00 00 00 
    52b8:	53                   	push   %rbx
    52b9:	48 89 ef             	mov    %rbp,%rdi
    52bc:	48 bb b6 90 00 00 00 	movabs $0x90b6,%rbx
    52c3:	00 00 00 
    52c6:	50                   	push   %rax
    52c7:	ff d3                	call   *%rbx
    52c9:	48 89 ef             	mov    %rbp,%rdi
    52cc:	48 bd 00 e3 00 00 00 	movabs $0xe300,%rbp
    52d3:	00 00 00 
    52d6:	ff d3                	call   *%rbx
    52d8:	48 89 ef             	mov    %rbp,%rdi
    52db:	ff d3                	call   *%rbx
    52dd:	5a                   	pop    %rdx
    52de:	48 89 ef             	mov    %rbp,%rdi
    52e1:	48 89 d8             	mov    %rbx,%rax
    52e4:	5b                   	pop    %rbx
    52e5:	5d                   	pop    %rbp
    52e6:	ff e0                	jmp    *%rax
    52e8:	41 56                	push   %r14
    52ea:	41 55                	push   %r13
    52ec:	41 54                	push   %r12
    52ee:	55                   	push   %rbp
    52ef:	53                   	push   %rbx
    52f0:	48 85 ff             	test   %rdi,%rdi
    52f3:	75 05                	jne    0x52fa
    52f5:	45 31 ed             	xor    %r13d,%r13d
    52f8:	eb 5a                	jmp    0x5354
    52fa:	48 89 fb             	mov    %rdi,%rbx
    52fd:	ba 04 00 00 00       	mov    $0x4,%edx
    5302:	48 be f8 ca 00 00 00 	movabs $0xcaf8,%rsi
    5309:	00 00 00 
    530c:	49 bc e1 97 00 00 00 	movabs $0x97e1,%r12
    5313:	00 00 00 
    5316:	41 ff d4             	call   *%r12
    5319:	85 c0                	test   %eax,%eax
    531b:	75 d8                	jne    0x52f5
    531d:	49 be fd ca 00 00 00 	movabs $0xcafd,%r14
    5324:	00 00 00 
    5327:	8b 6b 04             	mov    0x4(%rbx),%ebp
    532a:	48 83 ed 24          	sub    $0x24,%rbp
    532e:	48 83 e5 fc          	and    $0xfffffffffffffffc,%rbp
    5332:	48 01 dd             	add    %rbx,%rbp
    5335:	48 39 eb             	cmp    %rbp,%rbx
    5338:	74 bb                	je     0x52f5
    533a:	44 8b 6b 24          	mov    0x24(%rbx),%r13d
    533e:	ba 04 00 00 00       	mov    $0x4,%edx
    5343:	4c 89 f6             	mov    %r14,%rsi
    5346:	48 83 c3 04          	add    $0x4,%rbx
    534a:	4c 89 ef             	mov    %r13,%rdi
    534d:	41 ff d4             	call   *%r12
    5350:	85 c0                	test   %eax,%eax
    5352:	75 e1                	jne    0x5335
    5354:	5b                   	pop    %rbx
    5355:	4c 89 e8             	mov    %r13,%rax
    5358:	5d                   	pop    %rbp
    5359:	41 5c                	pop    %r12
    535b:	41 5d                	pop    %r13
    535d:	41 5e                	pop    %r14
    535f:	c3                   	ret    
    5360:	31 c0                	xor    %eax,%eax
    5362:	48 01 fe             	add    %rdi,%rsi
    5365:	48 39 f7             	cmp    %rsi,%rdi
    5368:	73 07                	jae    0x5371
    536a:	02 07                	add    (%rdi),%al
    536c:	48 ff c7             	inc    %rdi
    536f:	eb f4                	jmp    0x5365
    5371:	c3                   	ret    
    5372:	48 b8 4d 54 00 00 00 	movabs $0x544d,%rax
    5379:	00 00 00 
    537c:	41 56                	push   %r14
    537e:	41 55                	push   %r13
    5380:	41 54                	push   %r12
    5382:	55                   	push   %rbp
    5383:	53                   	push   %rbx
    5384:	ff d0                	call   *%rax
    5386:	48 85 c0             	test   %rax,%rax
    5389:	75 16                	jne    0x53a1
    538b:	48 b8 ad 54 00 00 00 	movabs $0x54ad,%rax
    5392:	00 00 00 
    5395:	ff d0                	call   *%rax
    5397:	48 89 c3             	mov    %rax,%rbx
    539a:	48 85 c0             	test   %rax,%rax
    539d:	75 1f                	jne    0x53be
    539f:	eb 7d                	jmp    0x541e
    53a1:	8b 78 10             	mov    0x10(%rax),%edi
    53a4:	48 b8 e8 52 00 00 00 	movabs $0x52e8,%rax
    53ab:	00 00 00 
    53ae:	ff d0                	call   *%rax
    53b0:	49 89 c4             	mov    %rax,%r12
    53b3:	48 85 c0             	test   %rax,%rax
    53b6:	0f 85 85 00 00 00    	jne    0x5441
    53bc:	eb cd                	jmp    0x538b
    53be:	8b 78 10             	mov    0x10(%rax),%edi
    53c1:	48 b8 e8 52 00 00 00 	movabs $0x52e8,%rax
    53c8:	00 00 00 
    53cb:	ff d0                	call   *%rax
    53cd:	49 89 c4             	mov    %rax,%r12
    53d0:	48 85 c0             	test   %rax,%rax
    53d3:	75 6c                	jne    0x5441
    53d5:	48 8b 5b 18          	mov    0x18(%rbx),%rbx
    53d9:	48 85 db             	test   %rbx,%rbx
    53dc:	74 40                	je     0x541e
    53de:	ba 04 00 00 00       	mov    $0x4,%edx
    53e3:	48 89 df             	mov    %rbx,%rdi
    53e6:	48 be 02 cb 00 00 00 	movabs $0xcb02,%rsi
    53ed:	00 00 00 
    53f0:	48 bd e1 97 00 00 00 	movabs $0x97e1,%rbp
    53f7:	00 00 00 
    53fa:	ff d5                	call   *%rbp
    53fc:	85 c0                	test   %eax,%eax
    53fe:	75 1e                	jne    0x541e
    5400:	49 be fd ca 00 00 00 	movabs $0xcafd,%r14
    5407:	00 00 00 
    540a:	4c 8d 6b 24          	lea    0x24(%rbx),%r13
    540e:	8b 5b 04             	mov    0x4(%rbx),%ebx
    5411:	48 83 eb 24          	sub    $0x24,%rbx
    5415:	48 c1 eb 02          	shr    $0x2,%rbx
    5419:	48 85 db             	test   %rbx,%rbx
    541c:	75 05                	jne    0x5423
    541e:	45 31 e4             	xor    %r12d,%r12d
    5421:	eb 1e                	jmp    0x5441
    5423:	4d 8b 65 00          	mov    0x0(%r13),%r12
    5427:	ba 04 00 00 00       	mov    $0x4,%edx
    542c:	4c 89 f6             	mov    %r14,%rsi
    542f:	4c 89 e7             	mov    %r12,%rdi
    5432:	ff d5                	call   *%rbp
    5434:	85 c0                	test   %eax,%eax
    5436:	74 09                	je     0x5441
    5438:	48 ff cb             	dec    %rbx
    543b:	49 83 c5 08          	add    $0x8,%r13
    543f:	eb d8                	jmp    0x5419
    5441:	5b                   	pop    %rbx
    5442:	4c 89 e0             	mov    %r12,%rax
    5445:	5d                   	pop    %rbp
    5446:	41 5c                	pop    %r12
    5448:	41 5d                	pop    %r13
    544a:	41 5e                	pop    %r14
    544c:	c3                   	ret    
    544d:	41 54                	push   %r12
    544f:	49 bc 28 f8 00 00 00 	movabs $0xf828,%r12
    5456:	00 00 00 
    5459:	55                   	push   %rbp
    545a:	31 ed                	xor    %ebp,%ebp
    545c:	53                   	push   %rbx
    545d:	49 8b 04 24          	mov    (%r12),%rax
    5461:	89 eb                	mov    %ebp,%ebx
    5463:	48 3b 58 68          	cmp    0x68(%rax),%rbx
    5467:	73 3d                	jae    0x54a6
    5469:	48 6b db 18          	imul   $0x18,%rbx,%rbx
    546d:	48 8b 78 70          	mov    0x70(%rax),%rdi
    5471:	ba 10 00 00 00       	mov    $0x10,%edx
    5476:	48 be 00 e4 00 00 00 	movabs $0xe400,%rsi
    547d:	00 00 00 
    5480:	48 b8 e1 97 00 00 00 	movabs $0x97e1,%rax
    5487:	00 00 00 
    548a:	48 01 df             	add    %rbx,%rdi
    548d:	ff d0                	call   *%rax
    548f:	85 c0                	test   %eax,%eax
    5491:	75 0f                	jne    0x54a2
    5493:	49 8b 04 24          	mov    (%r12),%rax
    5497:	48 8b 40 70          	mov    0x70(%rax),%rax
    549b:	48 8b 44 18 10       	mov    0x10(%rax,%rbx,1),%rax
    54a0:	eb 06                	jmp    0x54a8
    54a2:	ff c5                	inc    %ebp
    54a4:	eb b7                	jmp    0x545d
    54a6:	31 c0                	xor    %eax,%eax
    54a8:	5b                   	pop    %rbx
    54a9:	5d                   	pop    %rbp
    54aa:	41 5c                	pop    %r12
    54ac:	c3                   	ret    
    54ad:	41 54                	push   %r12
    54af:	49 bc 28 f8 00 00 00 	movabs $0xf828,%r12
    54b6:	00 00 00 
    54b9:	55                   	push   %rbp
    54ba:	31 ed                	xor    %ebp,%ebp
    54bc:	53                   	push   %rbx
    54bd:	49 8b 04 24          	mov    (%r12),%rax
    54c1:	89 eb                	mov    %ebp,%ebx
    54c3:	48 3b 58 68          	cmp    0x68(%rax),%rbx
    54c7:	73 3d                	jae    0x5506
    54c9:	48 6b db 18          	imul   $0x18,%rbx,%rbx
    54cd:	48 8b 78 70          	mov    0x70(%rax),%rdi
    54d1:	ba 10 00 00 00       	mov    $0x10,%edx
    54d6:	48 be f0 e3 00 00 00 	movabs $0xe3f0,%rsi
    54dd:	00 00 00 
    54e0:	48 b8 e1 97 00 00 00 	movabs $0x97e1,%rax
    54e7:	00 00 00 
    54ea:	48 01 df             	add    %rbx,%rdi
    54ed:	ff d0                	call   *%rax
    54ef:	85 c0                	test   %eax,%eax
    54f1:	75 0f                	jne    0x5502
    54f3:	49 8b 04 24          	mov    (%r12),%rax
    54f7:	48 8b 40 70          	mov    0x70(%rax),%rax
    54fb:	48 8b 44 18 10       	mov    0x10(%rax,%rbx,1),%rax
    5500:	eb 06                	jmp    0x5508
    5502:	ff c5                	inc    %ebp
    5504:	eb b7                	jmp    0x54bd
    5506:	31 c0                	xor    %eax,%eax
    5508:	5b                   	pop    %rbx
    5509:	5d                   	pop    %rbp
    550a:	41 5c                	pop    %r12
    550c:	c3                   	ret    
    550d:	48 89 c8             	mov    %rcx,%rax
    5510:	0f b7 ce             	movzwl %si,%ecx
    5513:	66 83 fe 1d          	cmp    $0x1d,%si
    5517:	77 0d                	ja     0x5526
    5519:	ba 28 02 44 20       	mov    $0x20440228,%edx
    551e:	48 d3 ea             	shr    %cl,%rdx
    5521:	80 e2 01             	and    $0x1,%dl
    5524:	75 08                	jne    0x552e
    5526:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
    552c:	eb 06                	jmp    0x5534
    552e:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
    5534:	31 c0                	xor    %eax,%eax
    5536:	c3                   	ret    
    5537:	48 b8 a8 2c 00 00 00 	movabs $0x2ca8,%rax
    553e:	00 00 00 
    5541:	55                   	push   %rbp
    5542:	48 89 f5             	mov    %rsi,%rbp
    5545:	31 f6                	xor    %esi,%esi
    5547:	53                   	push   %rbx
    5548:	48 89 d3             	mov    %rdx,%rbx
    554b:	57                   	push   %rdi
    554c:	48 bf 80 e4 00 00 00 	movabs $0xe480,%rdi
    5553:	00 00 00 
    5556:	ff d0                	call   *%rax
    5558:	bf 1e 00 00 00       	mov    $0x1e,%edi
    555d:	48 be 07 cb 00 00 00 	movabs $0xcb07,%rsi
    5564:	00 00 00 
    5567:	48 85 c0             	test   %rax,%rax
    556a:	74 1d                	je     0x5589
    556c:	89 de                	mov    %ebx,%esi
    556e:	48 89 ef             	mov    %rbp,%rdi
    5571:	ff 10                	call   *(%rax)
    5573:	48 85 c0             	test   %rax,%rax
    5576:	74 20                	je     0x5598
    5578:	48 be 24 cb 00 00 00 	movabs $0xcb24,%rsi
    557f:	00 00 00 
    5582:	bf 2d 00 00 00       	mov    $0x2d,%edi
    5587:	31 c0                	xor    %eax,%eax
    5589:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    5590:	00 00 00 
    5593:	59                   	pop    %rcx
    5594:	5b                   	pop    %rbx
    5595:	5d                   	pop    %rbp
    5596:	ff e2                	jmp    *%rdx
    5598:	5a                   	pop    %rdx
    5599:	31 c0                	xor    %eax,%eax
    559b:	5b                   	pop    %rbx
    559c:	5d                   	pop    %rbp
    559d:	c3                   	ret    
    559e:	48 bf 50 cb 00 00 00 	movabs $0xcb50,%rdi
    55a5:	00 00 00 
    55a8:	41 54                	push   %r12
    55aa:	49 bc 20 e4 00 00 00 	movabs $0xe420,%r12
    55b1:	00 00 00 
    55b4:	53                   	push   %rbx
    55b5:	4c 89 e6             	mov    %r12,%rsi
    55b8:	48 bb 49 32 00 00 00 	movabs $0x3249,%rbx
    55bf:	00 00 00 
    55c2:	48 83 ec 38          	sub    $0x38,%rsp
    55c6:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    55cb:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
    55d0:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
    55d7:	00 
    55d8:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    55df:	00 00 
    55e1:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
    55e8:	00 00 
    55ea:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
    55f1:	00 00 
    55f3:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
    55fa:	00 00 
    55fc:	ff d3                	call   *%rbx
    55fe:	48 ba 0e 00 00 00 00 	movabs $0x800000000000000e,%rdx
    5605:	00 00 80 
    5608:	48 39 d0             	cmp    %rdx,%rax
    560b:	75 08                	jne    0x5615
    560d:	41 b4 02             	mov    $0x2,%r12b
    5610:	e9 88 00 00 00       	jmp    0x569d
    5615:	48 85 c0             	test   %rax,%rax
    5618:	74 05                	je     0x561f
    561a:	41 b4 01             	mov    $0x1,%r12b
    561d:	eb 7e                	jmp    0x569d
    561f:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
    5624:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    5629:	4c 89 e6             	mov    %r12,%rsi
    562c:	48 bf 5b cb 00 00 00 	movabs $0xcb5b,%rdi
    5633:	00 00 00 
    5636:	ff d3                	call   *%rbx
    5638:	48 85 c0             	test   %rax,%rax
    563b:	75 dd                	jne    0x561a
    563d:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    5642:	80 38 00             	cmpb   $0x0,(%rax)
    5645:	74 c6                	je     0x560d
    5647:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    564c:	80 38 01             	cmpb   $0x1,(%rax)
    564f:	74 bc                	je     0x560d
    5651:	4c 8d 44 24 0c       	lea    0xc(%rsp),%r8
    5656:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
    565b:	41 b4 03             	mov    $0x3,%r12b
    565e:	48 be 80 e4 00 00 00 	movabs $0xe480,%rsi
    5665:	00 00 00 
    5668:	48 bf 65 cb 00 00 00 	movabs $0xcb65,%rdi
    566f:	00 00 00 
    5672:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    5677:	48 b8 db 30 00 00 00 	movabs $0x30db,%rax
    567e:	00 00 00 
    5681:	ff d0                	call   *%rax
    5683:	48 85 c0             	test   %rax,%rax
    5686:	75 15                	jne    0x569d
    5688:	f6 44 24 0c 04       	testb  $0x4,0xc(%rsp)
    568d:	75 0e                	jne    0x569d
    568f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    5694:	80 38 01             	cmpb   $0x1,(%rax)
    5697:	0f 84 70 ff ff ff    	je     0x560d
    569d:	48 bb 12 5c 00 00 00 	movabs $0x5c12,%rbx
    56a4:	00 00 00 
    56a7:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    56ac:	ff d3                	call   *%rbx
    56ae:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    56b3:	ff d3                	call   *%rbx
    56b5:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    56ba:	ff d3                	call   *%rbx
    56bc:	49 b8 37 cb 00 00 00 	movabs $0xcb37,%r8
    56c3:	00 00 00 
    56c6:	41 80 fc 02          	cmp    $0x2,%r12b
    56ca:	74 1c                	je     0x56e8
    56cc:	49 b8 40 cb 00 00 00 	movabs $0xcb40,%r8
    56d3:	00 00 00 
    56d6:	41 80 fc 03          	cmp    $0x3,%r12b
    56da:	48 b8 48 cb 00 00 00 	movabs $0xcb48,%rax
    56e1:	00 00 00 
    56e4:	4c 0f 44 c0          	cmove  %rax,%r8
    56e8:	31 c0                	xor    %eax,%eax
    56ea:	be 6f 00 00 00       	mov    $0x6f,%esi
    56ef:	48 b9 70 cb 00 00 00 	movabs $0xcb70,%rcx
    56f6:	00 00 00 
    56f9:	48 ba 8c cb 00 00 00 	movabs $0xcb8c,%rdx
    5700:	00 00 00 
    5703:	48 bf 90 cb 00 00 00 	movabs $0xcb90,%rdi
    570a:	00 00 00 
    570d:	49 b9 b7 a6 00 00 00 	movabs $0xa6b7,%r9
    5714:	00 00 00 
    5717:	41 ff d1             	call   *%r9
    571a:	48 83 c4 38          	add    $0x38,%rsp
    571e:	44 89 e0             	mov    %r12d,%eax
    5721:	5b                   	pop    %rbx
    5722:	41 5c                	pop    %r12
    5724:	c3                   	ret    
    5725:	48 bf 80 e4 00 00 00 	movabs $0xe480,%rdi
    572c:	00 00 00 
    572f:	55                   	push   %rbp
    5730:	31 f6                	xor    %esi,%esi
    5732:	48 b8 a8 2c 00 00 00 	movabs $0x2ca8,%rax
    5739:	00 00 00 
    573c:	ff d0                	call   *%rax
    573e:	48 85 c0             	test   %rax,%rax
    5741:	75 44                	jne    0x5787
    5743:	48 a1 48 f8 00 00 00 	movabs 0xf848,%rax
    574a:	00 00 00 
    574d:	48 85 c0             	test   %rax,%rax
    5750:	74 35                	je     0x5787
    5752:	81 38 6d 69 6d 67    	cmpl   $0x676d696d,(%rax)
    5758:	75 2d                	jne    0x5787
    575a:	48 8b 50 08          	mov    0x8(%rax),%rdx
    575e:	48 01 c2             	add    %rax,%rdx
    5761:	48 85 d2             	test   %rdx,%rdx
    5764:	74 21                	je     0x5787
    5766:	48 8b 48 10          	mov    0x10(%rax),%rcx
    576a:	48 01 c1             	add    %rax,%rcx
    576d:	48 39 ca             	cmp    %rcx,%rdx
    5770:	73 15                	jae    0x5787
    5772:	83 3a 06             	cmpl   $0x6,(%rdx)
    5775:	74 73                	je     0x57ea
    5777:	8b 4a 04             	mov    0x4(%rdx),%ecx
    577a:	48 83 c1 07          	add    $0x7,%rcx
    577e:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    5782:	48 01 ca             	add    %rcx,%rdx
    5785:	eb da                	jmp    0x5761
    5787:	48 b8 9e 55 00 00 00 	movabs $0x559e,%rax
    578e:	00 00 00 
    5791:	ff d0                	call   *%rax
    5793:	3c 03                	cmp    $0x3,%al
    5795:	75 53                	jne    0x57ea
    5797:	48 bd a0 cb 00 00 00 	movabs $0xcba0,%rbp
    579e:	00 00 00 
    57a1:	48 be 40 e4 00 00 00 	movabs $0xe440,%rsi
    57a8:	00 00 00 
    57ab:	48 bf b0 b7 01 00 00 	movabs $0x1b7b0,%rdi
    57b2:	00 00 00 
    57b5:	48 b8 9f 90 00 00 00 	movabs $0x909f,%rax
    57bc:	00 00 00 
    57bf:	ff d0                	call   *%rax
    57c1:	48 89 ef             	mov    %rbp,%rdi
    57c4:	48 be 9e cb 00 00 00 	movabs $0xcb9e,%rsi
    57cb:	00 00 00 
    57ce:	48 b8 1f 83 00 00 00 	movabs $0x831f,%rax
    57d5:	00 00 00 
    57d8:	ff d0                	call   *%rax
    57da:	48 89 ef             	mov    %rbp,%rdi
    57dd:	5d                   	pop    %rbp
    57de:	48 b8 fd 85 00 00 00 	movabs $0x85fd,%rax
    57e5:	00 00 00 
    57e8:	ff e0                	jmp    *%rax
    57ea:	5d                   	pop    %rbp
    57eb:	c3                   	ret    
    57ec:	48 89 c8             	mov    %rcx,%rax
    57ef:	0f b7 ce             	movzwl %si,%ecx
    57f2:	66 83 fe 2a          	cmp    $0x2a,%si
    57f6:	77 12                	ja     0x580a
    57f8:	48 ba aa 02 c4 3f 00 	movabs $0x6003fc402aa,%rdx
    57ff:	06 00 00 
    5802:	48 d3 ea             	shr    %cl,%rdx
    5805:	80 e2 01             	and    $0x1,%dl
    5808:	75 08                	jne    0x5812
    580a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
    5810:	eb 06                	jmp    0x5818
    5812:	c7 00 04 00 00 00    	movl   $0x4,(%rax)
    5818:	31 c0                	xor    %eax,%eax
    581a:	c3                   	ret    
    581b:	48 b8 c4 f8 00 00 00 	movabs $0xf8c4,%rax
    5822:	00 00 00 
    5825:	55                   	push   %rbp
    5826:	48 bd bf cb 00 00 00 	movabs $0xcbbf,%rbp
    582d:	00 00 00 
    5830:	48 be a0 e4 00 00 00 	movabs $0xe4a0,%rsi
    5837:	00 00 00 
    583a:	48 bf b0 b7 01 00 00 	movabs $0x1b7b0,%rdi
    5841:	00 00 00 
    5844:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
    584a:	48 b8 9f 90 00 00 00 	movabs $0x909f,%rax
    5851:	00 00 00 
    5854:	ff d0                	call   *%rax
    5856:	48 89 ef             	mov    %rbp,%rdi
    5859:	48 be bd cb 00 00 00 	movabs $0xcbbd,%rsi
    5860:	00 00 00 
    5863:	48 b8 1f 83 00 00 00 	movabs $0x831f,%rax
    586a:	00 00 00 
    586d:	ff d0                	call   *%rax
    586f:	48 89 ef             	mov    %rbp,%rdi
    5872:	5d                   	pop    %rbp
    5873:	48 b8 fd 85 00 00 00 	movabs $0x85fd,%rax
    587a:	00 00 00 
    587d:	ff e0                	jmp    *%rax
    587f:	a1 c4 f8 00 00 00 00 	movabs 0xf8c4,%eax
    5886:	00 00 
    5888:	c3                   	ret    
    5889:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    5890:	00 00 00 
    5893:	ff e0                	jmp    *%rax
    5895:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    589c:	00 00 00 
    589f:	ff e0                	jmp    *%rax
    58a1:	48 b8 e1 97 00 00 00 	movabs $0x97e1,%rax
    58a8:	00 00 00 
    58ab:	ff e0                	jmp    *%rax
    58ad:	48 b8 b8 99 00 00 00 	movabs $0x99b8,%rax
    58b4:	00 00 00 
    58b7:	ff e0                	jmp    *%rax
    58b9:	49 89 f8             	mov    %rdi,%r8
    58bc:	40 80 e7 1f          	and    $0x1f,%dil
    58c0:	51                   	push   %rcx
    58c1:	48 89 f1             	mov    %rsi,%rcx
    58c4:	48 a1 c8 f8 00 00 00 	movabs 0xf8c8,%rax
    58cb:	00 00 00 
    58ce:	4c 89 c6             	mov    %r8,%rsi
    58d1:	48 bf da cb 00 00 00 	movabs $0xcbda,%rdi
    58d8:	00 00 00 
    58db:	75 45                	jne    0x5922
    58dd:	48 89 02             	mov    %rax,(%rdx)
    58e0:	48 85 c0             	test   %rax,%rax
    58e3:	74 4b                	je     0x5930
    58e5:	48 8d 70 20          	lea    0x20(%rax),%rsi
    58e9:	49 39 f0             	cmp    %rsi,%r8
    58ec:	76 10                	jbe    0x58fe
    58ee:	48 8b 70 18          	mov    0x18(%rax),%rsi
    58f2:	48 01 c6             	add    %rax,%rsi
    58f5:	48 83 c6 20          	add    $0x20,%rsi
    58f9:	49 39 f0             	cmp    %rsi,%r8
    58fc:	76 06                	jbe    0x5904
    58fe:	48 8b 40 08          	mov    0x8(%rax),%rax
    5902:	eb d9                	jmp    0x58dd
    5904:	49 8b 50 f0          	mov    -0x10(%r8),%rdx
    5908:	49 8d 70 e0          	lea    -0x20(%r8),%rsi
    590c:	48 89 31             	mov    %rsi,(%rcx)
    590f:	48 81 fa 08 28 3c 2d 	cmp    $0x2d3c2808,%rdx
    5916:	75 27                	jne    0x593f
    5918:	48 bf ef cb 00 00 00 	movabs $0xcbef,%rdi
    591f:	00 00 00 
    5922:	48 ba 03 aa 00 00 00 	movabs $0xaa03,%rdx
    5929:	00 00 00 
    592c:	31 c0                	xor    %eax,%eax
    592e:	ff d2                	call   *%rdx
    5930:	48 bf 22 cc 00 00 00 	movabs $0xcc22,%rdi
    5937:	00 00 00 
    593a:	4c 89 c6             	mov    %r8,%rsi
    593d:	eb e3                	jmp    0x5922
    593f:	48 81 fa a4 8f b0 6d 	cmp    $0x6db08fa4,%rdx
    5946:	74 18                	je     0x5960
    5948:	48 bf 01 cc 00 00 00 	movabs $0xcc01,%rdi
    594f:	00 00 00 
    5952:	31 c0                	xor    %eax,%eax
    5954:	48 b9 03 aa 00 00 00 	movabs $0xaa03,%rcx
    595b:	00 00 00 
    595e:	ff d1                	call   *%rcx
    5960:	58                   	pop    %rax
    5961:	c3                   	ret    
    5962:	41 56                	push   %r14
    5964:	41 55                	push   %r13
    5966:	41 54                	push   %r12
    5968:	49 bc c8 f8 00 00 00 	movabs $0xf8c8,%r12
    596f:	00 00 00 
    5972:	49 83 3c 24 00       	cmpq   $0x0,(%r12)
    5977:	55                   	push   %rbp
    5978:	53                   	push   %rbx
    5979:	0f 84 b4 01 00 00    	je     0x5b33
    597f:	48 89 f8             	mov    %rdi,%rax
    5982:	48 01 f0             	add    %rsi,%rax
    5985:	0f 82 a8 01 00 00    	jb     0x5b33
    598b:	48 3d ff ff ef ff    	cmp    $0xffffffffffefffff,%rax
    5991:	0f 87 9c 01 00 00    	ja     0x5b33
    5997:	48 83 c6 1f          	add    $0x1f,%rsi
    599b:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    59a1:	b9 02 00 00 00       	mov    $0x2,%ecx
    59a6:	49 be b7 6d 00 00 00 	movabs $0x6db7,%r14
    59ad:	00 00 00 
    59b0:	48 c1 ee 05          	shr    $0x5,%rsi
    59b4:	48 c1 ef 05          	shr    $0x5,%rdi
    59b8:	4c 0f 45 ef          	cmovne %rdi,%r13
    59bc:	48 8d 5e 01          	lea    0x1(%rsi),%rbx
    59c0:	48 89 fd             	mov    %rdi,%rbp
    59c3:	4d 8b 0c 24          	mov    (%r12),%r9
    59c7:	4d 8d 55 ff          	lea    -0x1(%r13),%r10
    59cb:	4d 85 c9             	test   %r9,%r9
    59ce:	0f 84 4e 01 00 00    	je     0x5b22
    59d4:	49 8b 11             	mov    (%r9),%rdx
    59d7:	48 81 7a 10 a4 8f b0 	cmpq   $0x6db08fa4,0x10(%rdx)
    59de:	6d 
    59df:	0f 84 34 01 00 00    	je     0x5b19
    59e5:	48 8b 32             	mov    (%rdx),%rsi
    59e8:	49 89 d0             	mov    %rdx,%r8
    59eb:	48 8d 46 20          	lea    0x20(%rsi),%rax
    59ef:	48 c1 e8 05          	shr    $0x5,%rax
    59f3:	4c 21 d0             	and    %r10,%rax
    59f6:	74 09                	je     0x5a01
    59f8:	4c 89 ef             	mov    %r13,%rdi
    59fb:	48 29 c7             	sub    %rax,%rdi
    59fe:	48 89 f8             	mov    %rdi,%rax
    5a01:	48 85 f6             	test   %rsi,%rsi
    5a04:	75 18                	jne    0x5a1e
    5a06:	48 bf 3a cc 00 00 00 	movabs $0xcc3a,%rdi
    5a0d:	00 00 00 
    5a10:	31 c0                	xor    %eax,%eax
    5a12:	48 ba 03 aa 00 00 00 	movabs $0xaa03,%rdx
    5a19:	00 00 00 
    5a1c:	ff d2                	call   *%rdx
    5a1e:	4c 8b 5e 10          	mov    0x10(%rsi),%r11
    5a22:	49 81 fb 08 28 3c 2d 	cmp    $0x2d3c2808,%r11
    5a29:	74 1b                	je     0x5a46
    5a2b:	48 bf 4b cc 00 00 00 	movabs $0xcc4b,%rdi
    5a32:	00 00 00 
    5a35:	4c 89 da             	mov    %r11,%rdx
    5a38:	31 c0                	xor    %eax,%eax
    5a3a:	48 b9 03 aa 00 00 00 	movabs $0xaa03,%rcx
    5a41:	00 00 00 
    5a44:	ff d1                	call   *%rcx
    5a46:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    5a4a:	4c 8d 1c 03          	lea    (%rbx,%rax,1),%r11
    5a4e:	4c 39 df             	cmp    %r11,%rdi
    5a51:	0f 82 b2 00 00 00    	jb     0x5b09
    5a57:	48 89 f9             	mov    %rdi,%rcx
    5a5a:	49 f7 dd             	neg    %r13
    5a5d:	48 29 d9             	sub    %rbx,%rcx
    5a60:	48 89 ca             	mov    %rcx,%rdx
    5a63:	48 29 c2             	sub    %rax,%rdx
    5a66:	4c 21 ea             	and    %r13,%rdx
    5a69:	48 01 d0             	add    %rdx,%rax
    5a6c:	75 0d                	jne    0x5a7b
    5a6e:	48 39 fb             	cmp    %rdi,%rbx
    5a71:	75 08                	jne    0x5a7b
    5a73:	48 8b 06             	mov    (%rsi),%rax
    5a76:	49 89 00             	mov    %rax,(%r8)
    5a79:	eb 6b                	jmp    0x5ae6
    5a7b:	48 83 fd 01          	cmp    $0x1,%rbp
    5a7f:	76 09                	jbe    0x5a8a
    5a81:	4c 8d 14 03          	lea    (%rbx,%rax,1),%r10
    5a85:	4c 39 d7             	cmp    %r10,%rdi
    5a88:	75 0d                	jne    0x5a97
    5a8a:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
    5a8e:	48 c1 e1 05          	shl    $0x5,%rcx
    5a92:	48 01 ce             	add    %rcx,%rsi
    5a95:	eb 4f                	jmp    0x5ae6
    5a97:	4c 89 d2             	mov    %r10,%rdx
    5a9a:	48 c1 e2 05          	shl    $0x5,%rdx
    5a9e:	48 01 f2             	add    %rsi,%rdx
    5aa1:	48 c7 42 10 08 28 3c 	movq   $0x2d3c2808,0x10(%rdx)
    5aa8:	2d 
    5aa9:	48 85 c0             	test   %rax,%rax
    5aac:	75 20                	jne    0x5ace
    5aae:	48 89 f8             	mov    %rdi,%rax
    5ab1:	4c 29 d0             	sub    %r10,%rax
    5ab4:	48 89 42 08          	mov    %rax,0x8(%rdx)
    5ab8:	48 8b 06             	mov    (%rsi),%rax
    5abb:	48 89 02             	mov    %rax,(%rdx)
    5abe:	49 89 10             	mov    %rdx,(%r8)
    5ac1:	4c 39 c6             	cmp    %r8,%rsi
    5ac4:	75 20                	jne    0x5ae6
    5ac6:	48 89 12             	mov    %rdx,(%rdx)
    5ac9:	49 89 d0             	mov    %rdx,%r8
    5acc:	eb 18                	jmp    0x5ae6
    5ace:	48 29 c1             	sub    %rax,%rcx
    5ad1:	48 89 32             	mov    %rsi,(%rdx)
    5ad4:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    5ad8:	48 89 46 08          	mov    %rax,0x8(%rsi)
    5adc:	48 c1 e0 05          	shl    $0x5,%rax
    5ae0:	49 89 10             	mov    %rdx,(%r8)
    5ae3:	48 01 c6             	add    %rax,%rsi
    5ae6:	48 c7 46 10 a4 8f b0 	movq   $0x6db08fa4,0x10(%rsi)
    5aed:	6d 
    5aee:	48 89 5e 08          	mov    %rbx,0x8(%rsi)
    5af2:	48 81 fb ff 03 00 00 	cmp    $0x3ff,%rbx
    5af9:	76 05                	jbe    0x5b00
    5afb:	49 3b 31             	cmp    (%r9),%rsi
    5afe:	75 03                	jne    0x5b03
    5b00:	4d 89 01             	mov    %r8,(%r9)
    5b03:	48 8d 46 20          	lea    0x20(%rsi),%rax
    5b07:	eb 49                	jmp    0x5b52
    5b09:	48 39 f2             	cmp    %rsi,%rdx
    5b0c:	74 0b                	je     0x5b19
    5b0e:	49 89 f0             	mov    %rsi,%r8
    5b11:	48 8b 36             	mov    (%rsi),%rsi
    5b14:	e9 d2 fe ff ff       	jmp    0x59eb
    5b19:	4d 8b 49 08          	mov    0x8(%r9),%r9
    5b1d:	e9 a9 fe ff ff       	jmp    0x59cb
    5b22:	ff c9                	dec    %ecx
    5b24:	74 0d                	je     0x5b33
    5b26:	41 ff d6             	call   *%r14
    5b29:	b9 01 00 00 00       	mov    $0x1,%ecx
    5b2e:	e9 90 fe ff ff       	jmp    0x59c3
    5b33:	48 be 6c cc 00 00 00 	movabs $0xcc6c,%rsi
    5b3a:	00 00 00 
    5b3d:	bf 03 00 00 00       	mov    $0x3,%edi
    5b42:	31 c0                	xor    %eax,%eax
    5b44:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    5b4b:	00 00 00 
    5b4e:	ff d2                	call   *%rdx
    5b50:	31 c0                	xor    %eax,%eax
    5b52:	5b                   	pop    %rbx
    5b53:	5d                   	pop    %rbp
    5b54:	41 5c                	pop    %r12
    5b56:	41 5d                	pop    %r13
    5b58:	41 5e                	pop    %r14
    5b5a:	c3                   	ret    
    5b5b:	48 89 f8             	mov    %rdi,%rax
    5b5e:	41 55                	push   %r13
    5b60:	48 f7 e6             	mul    %rsi
    5b63:	41 54                	push   %r12
    5b65:	51                   	push   %rcx
    5b66:	70 32                	jo     0x5b9a
    5b68:	48 89 c6             	mov    %rax,%rsi
    5b6b:	49 89 c5             	mov    %rax,%r13
    5b6e:	31 ff                	xor    %edi,%edi
    5b70:	48 b8 62 59 00 00 00 	movabs $0x5962,%rax
    5b77:	00 00 00 
    5b7a:	ff d0                	call   *%rax
    5b7c:	49 89 c4             	mov    %rax,%r12
    5b7f:	48 85 c0             	test   %rax,%rax
    5b82:	74 36                	je     0x5bba
    5b84:	48 89 c7             	mov    %rax,%rdi
    5b87:	4c 89 ea             	mov    %r13,%rdx
    5b8a:	31 f6                	xor    %esi,%esi
    5b8c:	48 b8 b8 99 00 00 00 	movabs $0x99b8,%rax
    5b93:	00 00 00 
    5b96:	ff d0                	call   *%rax
    5b98:	eb 20                	jmp    0x5bba
    5b9a:	48 be 7a cc 00 00 00 	movabs $0xcc7a,%rsi
    5ba1:	00 00 00 
    5ba4:	31 c0                	xor    %eax,%eax
    5ba6:	45 31 e4             	xor    %r12d,%r12d
    5ba9:	bf 0b 00 00 00       	mov    $0xb,%edi
    5bae:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    5bb5:	00 00 00 
    5bb8:	ff d2                	call   *%rdx
    5bba:	4c 89 e0             	mov    %r12,%rax
    5bbd:	5a                   	pop    %rdx
    5bbe:	41 5c                	pop    %r12
    5bc0:	41 5d                	pop    %r13
    5bc2:	c3                   	ret    
    5bc3:	48 b8 62 59 00 00 00 	movabs $0x5962,%rax
    5bca:	00 00 00 
    5bcd:	48 89 fe             	mov    %rdi,%rsi
    5bd0:	31 ff                	xor    %edi,%edi
    5bd2:	ff e0                	jmp    *%rax
    5bd4:	48 b8 62 59 00 00 00 	movabs $0x5962,%rax
    5bdb:	00 00 00 
    5bde:	41 55                	push   %r13
    5be0:	48 89 fe             	mov    %rdi,%rsi
    5be3:	49 89 fd             	mov    %rdi,%r13
    5be6:	41 54                	push   %r12
    5be8:	31 ff                	xor    %edi,%edi
    5bea:	51                   	push   %rcx
    5beb:	ff d0                	call   *%rax
    5bed:	49 89 c4             	mov    %rax,%r12
    5bf0:	48 85 c0             	test   %rax,%rax
    5bf3:	74 14                	je     0x5c09
    5bf5:	48 89 c7             	mov    %rax,%rdi
    5bf8:	4c 89 ea             	mov    %r13,%rdx
    5bfb:	31 f6                	xor    %esi,%esi
    5bfd:	48 b8 b8 99 00 00 00 	movabs $0x99b8,%rax
    5c04:	00 00 00 
    5c07:	ff d0                	call   *%rax
    5c09:	4c 89 e0             	mov    %r12,%rax
    5c0c:	5a                   	pop    %rdx
    5c0d:	41 5c                	pop    %r12
    5c0f:	41 5d                	pop    %r13
    5c11:	c3                   	ret    
    5c12:	48 85 ff             	test   %rdi,%rdi
    5c15:	0f 84 19 01 00 00    	je     0x5d34
    5c1b:	48 b8 b9 58 00 00 00 	movabs $0x58b9,%rax
    5c22:	00 00 00 
    5c25:	48 83 ec 18          	sub    $0x18,%rsp
    5c29:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    5c2e:	48 89 e6             	mov    %rsp,%rsi
    5c31:	ff d0                	call   *%rax
    5c33:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    5c38:	48 8b 04 24          	mov    (%rsp),%rax
    5c3c:	49 8b 10             	mov    (%r8),%rdx
    5c3f:	48 81 7a 10 a4 8f b0 	cmpq   $0x6db08fa4,0x10(%rdx)
    5c46:	6d 
    5c47:	75 13                	jne    0x5c5c
    5c49:	48 c7 40 10 08 28 3c 	movq   $0x2d3c2808,0x10(%rax)
    5c50:	2d 
    5c51:	48 89 c6             	mov    %rax,%rsi
    5c54:	48 89 00             	mov    %rax,(%rax)
    5c57:	e9 d0 00 00 00       	jmp    0x5d2c
    5c5c:	48 8b 32             	mov    (%rdx),%rsi
    5c5f:	48 39 c6             	cmp    %rax,%rsi
    5c62:	77 4b                	ja     0x5caf
    5c64:	4c 8b 4e 10          	mov    0x10(%rsi),%r9
    5c68:	49 81 f9 08 28 3c 2d 	cmp    $0x2d3c2808,%r9
    5c6f:	74 1b                	je     0x5c8c
    5c71:	48 bf 4b cc 00 00 00 	movabs $0xcc4b,%rdi
    5c78:	00 00 00 
    5c7b:	4c 89 ca             	mov    %r9,%rdx
    5c7e:	31 c0                	xor    %eax,%eax
    5c80:	48 b9 03 aa 00 00 00 	movabs $0xaa03,%rcx
    5c87:	00 00 00 
    5c8a:	ff d1                	call   *%rcx
    5c8c:	48 8b 0e             	mov    (%rsi),%rcx
    5c8f:	48 39 ce             	cmp    %rcx,%rsi
    5c92:	77 13                	ja     0x5ca7
    5c94:	48 39 c1             	cmp    %rax,%rcx
    5c97:	40 0f 92 c7          	setb   %dil
    5c9b:	48 39 c6             	cmp    %rax,%rsi
    5c9e:	41 0f 97 c1          	seta   %r9b
    5ca2:	44 08 cf             	or     %r9b,%dil
    5ca5:	75 0d                	jne    0x5cb4
    5ca7:	48 89 f2             	mov    %rsi,%rdx
    5caa:	48 89 ce             	mov    %rcx,%rsi
    5cad:	eb b0                	jmp    0x5c5f
    5caf:	48 3b 06             	cmp    (%rsi),%rax
    5cb2:	76 b0                	jbe    0x5c64
    5cb4:	48 8b 0e             	mov    (%rsi),%rcx
    5cb7:	48 c7 40 10 08 28 3c 	movq   $0x2d3c2808,0x10(%rax)
    5cbe:	2d 
    5cbf:	48 89 08             	mov    %rcx,(%rax)
    5cc2:	48 89 06             	mov    %rax,(%rsi)
    5cc5:	48 8b 08             	mov    (%rax),%rcx
    5cc8:	48 8b 79 08          	mov    0x8(%rcx),%rdi
    5ccc:	49 89 f9             	mov    %rdi,%r9
    5ccf:	49 c1 e1 05          	shl    $0x5,%r9
    5cd3:	49 01 c9             	add    %rcx,%r9
    5cd6:	4c 39 c8             	cmp    %r9,%rax
    5cd9:	75 1a                	jne    0x5cf5
    5cdb:	48 03 78 08          	add    0x8(%rax),%rdi
    5cdf:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    5ce6:	00 
    5ce7:	48 89 79 08          	mov    %rdi,0x8(%rcx)
    5ceb:	48 89 0e             	mov    %rcx,(%rsi)
    5cee:	48 8b 00             	mov    (%rax),%rax
    5cf1:	48 89 04 24          	mov    %rax,(%rsp)
    5cf5:	48 8b 04 24          	mov    (%rsp),%rax
    5cf9:	49 89 30             	mov    %rsi,(%r8)
    5cfc:	48 8b 48 08          	mov    0x8(%rax),%rcx
    5d00:	48 89 cf             	mov    %rcx,%rdi
    5d03:	48 c1 e7 05          	shl    $0x5,%rdi
    5d07:	48 01 c7             	add    %rax,%rdi
    5d0a:	48 39 fe             	cmp    %rdi,%rsi
    5d0d:	75 1d                	jne    0x5d2c
    5d0f:	48 03 4e 08          	add    0x8(%rsi),%rcx
    5d13:	48 39 d6             	cmp    %rdx,%rsi
    5d16:	48 c7 46 10 00 00 00 	movq   $0x0,0x10(%rsi)
    5d1d:	00 
    5d1e:	48 0f 44 d0          	cmove  %rax,%rdx
    5d22:	48 89 48 08          	mov    %rcx,0x8(%rax)
    5d26:	48 89 02             	mov    %rax,(%rdx)
    5d29:	48 89 d6             	mov    %rdx,%rsi
    5d2c:	49 89 30             	mov    %rsi,(%r8)
    5d2f:	48 83 c4 18          	add    $0x18,%rsp
    5d33:	c3                   	ret    
    5d34:	c3                   	ret    
    5d35:	48 81 ff ff ef ff ff 	cmp    $0xffffffffffffefff,%rdi
    5d3c:	0f 87 21 01 00 00    	ja     0x5e63
    5d42:	55                   	push   %rbp
    5d43:	48 89 f0             	mov    %rsi,%rax
    5d46:	53                   	push   %rbx
    5d47:	48 89 fb             	mov    %rdi,%rbx
    5d4a:	52                   	push   %rdx
    5d4b:	48 8d 97 00 10 00 00 	lea    0x1000(%rdi),%rdx
    5d52:	48 01 f2             	add    %rsi,%rdx
    5d55:	73 0a                	jae    0x5d61
    5d57:	48 c7 c0 00 f0 ff ff 	mov    $0xfffffffffffff000,%rax
    5d5e:	48 29 f8             	sub    %rdi,%rax
    5d61:	48 bd c8 f8 00 00 00 	movabs $0xf8c8,%rbp
    5d68:	00 00 00 
    5d6b:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
    5d6f:	48 89 ce             	mov    %rcx,%rsi
    5d72:	48 85 f6             	test   %rsi,%rsi
    5d75:	74 74                	je     0x5deb
    5d77:	48 8b 56 10          	mov    0x10(%rsi),%rdx
    5d7b:	48 01 c2             	add    %rax,%rdx
    5d7e:	48 01 da             	add    %rbx,%rdx
    5d81:	48 39 d6             	cmp    %rdx,%rsi
    5d84:	75 5b                	jne    0x5de1
    5d86:	48 83 c3 1f          	add    $0x1f,%rbx
    5d8a:	b9 08 00 00 00       	mov    $0x8,%ecx
    5d8f:	48 83 e3 e0          	and    $0xffffffffffffffe0,%rbx
    5d93:	48 89 df             	mov    %rbx,%rdi
    5d96:	f3 a5                	rep movsl %ds:(%rsi),%es:(%rdi)
    5d98:	48 03 43 10          	add    0x10(%rbx),%rax
    5d9c:	48 89 c2             	mov    %rax,%rdx
    5d9f:	48 89 43 10          	mov    %rax,0x10(%rbx)
    5da3:	48 c1 ea 05          	shr    $0x5,%rdx
    5da7:	74 32                	je     0x5ddb
    5da9:	48 89 53 28          	mov    %rdx,0x28(%rbx)
    5dad:	48 89 c2             	mov    %rax,%rdx
    5db0:	83 e0 1f             	and    $0x1f,%eax
    5db3:	48 8d 7b 40          	lea    0x40(%rbx),%rdi
    5db7:	48 89 43 10          	mov    %rax,0x10(%rbx)
    5dbb:	48 83 e2 e0          	and    $0xffffffffffffffe0,%rdx
    5dbf:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    5dc6:	00 00 00 
    5dc9:	48 01 53 18          	add    %rdx,0x18(%rbx)
    5dcd:	48 c7 43 30 a4 8f b0 	movq   $0x6db08fa4,0x30(%rbx)
    5dd4:	6d 
    5dd5:	48 89 5d 00          	mov    %rbx,0x0(%rbp)
    5dd9:	ff d0                	call   *%rax
    5ddb:	48 89 5d 00          	mov    %rbx,0x0(%rbp)
    5ddf:	eb 7e                	jmp    0x5e5f
    5de1:	48 8d 6e 08          	lea    0x8(%rsi),%rbp
    5de5:	48 8b 76 08          	mov    0x8(%rsi),%rsi
    5de9:	eb 87                	jmp    0x5d72
    5deb:	48 8d 53 1f          	lea    0x1f(%rbx),%rdx
    5def:	48 83 e2 e0          	and    $0xffffffffffffffe0,%rdx
    5df3:	48 8d 72 20          	lea    0x20(%rdx),%rsi
    5df7:	48 89 f7             	mov    %rsi,%rdi
    5dfa:	48 29 df             	sub    %rbx,%rdi
    5dfd:	48 83 c7 20          	add    $0x20,%rdi
    5e01:	48 39 c7             	cmp    %rax,%rdi
    5e04:	77 59                	ja     0x5e5f
    5e06:	48 89 d7             	mov    %rdx,%rdi
    5e09:	48 c7 42 30 08 28 3c 	movq   $0x2d3c2808,0x30(%rdx)
    5e10:	2d 
    5e11:	48 29 df             	sub    %rbx,%rdi
    5e14:	48 89 72 20          	mov    %rsi,0x20(%rdx)
    5e18:	48 29 f8             	sub    %rdi,%rax
    5e1b:	48 89 7a 10          	mov    %rdi,0x10(%rdx)
    5e1f:	48 83 e8 20          	sub    $0x20,%rax
    5e23:	48 89 32             	mov    %rsi,(%rdx)
    5e26:	48 be c8 f8 00 00 00 	movabs $0xf8c8,%rsi
    5e2d:	00 00 00 
    5e30:	49 89 c0             	mov    %rax,%r8
    5e33:	48 83 e0 e0          	and    $0xffffffffffffffe0,%rax
    5e37:	49 c1 e8 05          	shr    $0x5,%r8
    5e3b:	48 89 42 18          	mov    %rax,0x18(%rdx)
    5e3f:	4c 89 42 28          	mov    %r8,0x28(%rdx)
    5e43:	48 85 c9             	test   %rcx,%rcx
    5e46:	74 10                	je     0x5e58
    5e48:	48 3b 41 18          	cmp    0x18(%rcx),%rax
    5e4c:	72 0a                	jb     0x5e58
    5e4e:	48 8d 71 08          	lea    0x8(%rcx),%rsi
    5e52:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    5e56:	eb eb                	jmp    0x5e43
    5e58:	48 89 16             	mov    %rdx,(%rsi)
    5e5b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    5e5f:	58                   	pop    %rax
    5e60:	5b                   	pop    %rbx
    5e61:	5d                   	pop    %rbp
    5e62:	c3                   	ret    
    5e63:	c3                   	ret    
    5e64:	41 55                	push   %r13
    5e66:	49 89 f5             	mov    %rsi,%r13
    5e69:	41 54                	push   %r12
    5e6b:	55                   	push   %rbp
    5e6c:	53                   	push   %rbx
    5e6d:	48 83 ec 18          	sub    $0x18,%rsp
    5e71:	48 85 ff             	test   %rdi,%rdi
    5e74:	75 19                	jne    0x5e8f
    5e76:	48 83 c4 18          	add    $0x18,%rsp
    5e7a:	48 89 f7             	mov    %rsi,%rdi
    5e7d:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    5e84:	00 00 00 
    5e87:	5b                   	pop    %rbx
    5e88:	5d                   	pop    %rbp
    5e89:	41 5c                	pop    %r12
    5e8b:	41 5d                	pop    %r13
    5e8d:	ff e0                	jmp    *%rax
    5e8f:	48 89 fd             	mov    %rdi,%rbp
    5e92:	48 85 f6             	test   %rsi,%rsi
    5e95:	75 11                	jne    0x5ea8
    5e97:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    5e9e:	00 00 00 
    5ea1:	45 31 e4             	xor    %r12d,%r12d
    5ea4:	ff d0                	call   *%rax
    5ea6:	eb 6c                	jmp    0x5f14
    5ea8:	48 b8 b9 58 00 00 00 	movabs $0x58b9,%rax
    5eaf:	00 00 00 
    5eb2:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    5eb7:	48 89 e6             	mov    %rsp,%rsi
    5eba:	49 89 ec             	mov    %rbp,%r12
    5ebd:	ff d0                	call   *%rax
    5ebf:	49 8d 45 1f          	lea    0x1f(%r13),%rax
    5ec3:	48 8b 1c 24          	mov    (%rsp),%rbx
    5ec7:	48 c1 e8 05          	shr    $0x5,%rax
    5ecb:	48 ff c0             	inc    %rax
    5ece:	48 39 43 08          	cmp    %rax,0x8(%rbx)
    5ed2:	73 40                	jae    0x5f14
    5ed4:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    5edb:	00 00 00 
    5ede:	4c 89 ef             	mov    %r13,%rdi
    5ee1:	ff d0                	call   *%rax
    5ee3:	49 89 c4             	mov    %rax,%r12
    5ee6:	48 85 c0             	test   %rax,%rax
    5ee9:	74 29                	je     0x5f14
    5eeb:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    5eef:	48 89 c7             	mov    %rax,%rdi
    5ef2:	48 89 ee             	mov    %rbp,%rsi
    5ef5:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    5efc:	00 00 00 
    5eff:	48 c1 e2 05          	shl    $0x5,%rdx
    5f03:	ff d0                	call   *%rax
    5f05:	48 89 ef             	mov    %rbp,%rdi
    5f08:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    5f0f:	00 00 00 
    5f12:	ff d0                	call   *%rax
    5f14:	48 83 c4 18          	add    $0x18,%rsp
    5f18:	4c 89 e0             	mov    %r12,%rax
    5f1b:	5b                   	pop    %rbx
    5f1c:	5d                   	pop    %rbp
    5f1d:	41 5c                	pop    %r12
    5f1f:	41 5d                	pop    %r13
    5f21:	c3                   	ret    
    5f22:	48 a1 d0 f8 00 00 00 	movabs 0xf8d0,%rax
    5f29:	00 00 00 
    5f2c:	ff e0                	jmp    *%rax
    5f2e:	48 89 f8             	mov    %rdi,%rax
    5f31:	48 a3 d0 f8 00 00 00 	movabs %rax,0xf8d0
    5f38:	00 00 00 
    5f3b:	c3                   	ret    
    5f3c:	41 54                	push   %r12
    5f3e:	49 bc 22 5f 00 00 00 	movabs $0x5f22,%r12
    5f45:	00 00 00 
    5f48:	55                   	push   %rbp
    5f49:	53                   	push   %rbx
    5f4a:	89 fb                	mov    %edi,%ebx
    5f4c:	41 ff d4             	call   *%r12
    5f4f:	48 89 c5             	mov    %rax,%rbp
    5f52:	41 ff d4             	call   *%r12
    5f55:	48 29 e8             	sub    %rbp,%rax
    5f58:	48 39 d8             	cmp    %rbx,%rax
    5f5b:	72 f5                	jb     0x5f52
    5f5d:	5b                   	pop    %rbx
    5f5e:	5d                   	pop    %rbp
    5f5f:	41 5c                	pop    %r12
    5f61:	c3                   	ret    
    5f62:	41 54                	push   %r12
    5f64:	55                   	push   %rbp
    5f65:	48 bd c3 5b 00 00 00 	movabs $0x5bc3,%rbp
    5f6c:	00 00 00 
    5f6f:	53                   	push   %rbx
    5f70:	48 89 fb             	mov    %rdi,%rbx
    5f73:	bf 20 00 00 00       	mov    $0x20,%edi
    5f78:	ff d5                	call   *%rbp
    5f7a:	49 89 c4             	mov    %rax,%r12
    5f7d:	48 85 c0             	test   %rax,%rax
    5f80:	74 39                	je     0x5fbb
    5f82:	48 89 df             	mov    %rbx,%rdi
    5f85:	ff d5                	call   *%rbp
    5f87:	49 89 04 24          	mov    %rax,(%r12)
    5f8b:	48 85 c0             	test   %rax,%rax
    5f8e:	75 14                	jne    0x5fa4
    5f90:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    5f97:	00 00 00 
    5f9a:	4c 89 e7             	mov    %r12,%rdi
    5f9d:	45 31 e4             	xor    %r12d,%r12d
    5fa0:	ff d0                	call   *%rax
    5fa2:	eb 17                	jmp    0x5fbb
    5fa4:	49 89 5c 24 08       	mov    %rbx,0x8(%r12)
    5fa9:	49 c7 44 24 10 00 00 	movq   $0x0,0x10(%r12)
    5fb0:	00 00 
    5fb2:	49 c7 44 24 18 00 00 	movq   $0x0,0x18(%r12)
    5fb9:	00 00 
    5fbb:	4c 89 e0             	mov    %r12,%rax
    5fbe:	5b                   	pop    %rbx
    5fbf:	5d                   	pop    %rbp
    5fc0:	41 5c                	pop    %r12
    5fc2:	c3                   	ret    
    5fc3:	55                   	push   %rbp
    5fc4:	48 89 fd             	mov    %rdi,%rbp
    5fc7:	53                   	push   %rbx
    5fc8:	48 bb 12 5c 00 00 00 	movabs $0x5c12,%rbx
    5fcf:	00 00 00 
    5fd2:	50                   	push   %rax
    5fd3:	48 8b 3f             	mov    (%rdi),%rdi
    5fd6:	ff d3                	call   *%rbx
    5fd8:	5a                   	pop    %rdx
    5fd9:	48 89 ef             	mov    %rbp,%rdi
    5fdc:	48 89 d8             	mov    %rbx,%rax
    5fdf:	5b                   	pop    %rbx
    5fe0:	5d                   	pop    %rbp
    5fe1:	ff e0                	jmp    *%rax
    5fe3:	48 39 77 08          	cmp    %rsi,0x8(%rdi)
    5fe7:	73 6c                	jae    0x6055
    5fe9:	55                   	push   %rbp
    5fea:	b8 41 00 00 00       	mov    $0x41,%eax
    5fef:	bd 01 00 00 00       	mov    $0x1,%ebp
    5ff4:	53                   	push   %rbx
    5ff5:	48 89 fb             	mov    %rdi,%rbx
    5ff8:	41 50                	push   %r8
    5ffa:	48 39 f5             	cmp    %rsi,%rbp
    5ffd:	73 29                	jae    0x6028
    5fff:	ff c8                	dec    %eax
    6001:	75 20                	jne    0x6023
    6003:	59                   	pop    %rcx
    6004:	bf 0b 00 00 00       	mov    $0xb,%edi
    6009:	5b                   	pop    %rbx
    600a:	31 c0                	xor    %eax,%eax
    600c:	48 be 8f cc 00 00 00 	movabs $0xcc8f,%rsi
    6013:	00 00 00 
    6016:	5d                   	pop    %rbp
    6017:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    601e:	00 00 00 
    6021:	ff e2                	jmp    *%rdx
    6023:	48 01 ed             	add    %rbp,%rbp
    6026:	eb d2                	jmp    0x5ffa
    6028:	48 b8 64 5e 00 00 00 	movabs $0x5e64,%rax
    602f:	00 00 00 
    6032:	48 8b 3b             	mov    (%rbx),%rdi
    6035:	48 89 ee             	mov    %rbp,%rsi
    6038:	ff d0                	call   *%rax
    603a:	48 85 c0             	test   %rax,%rax
    603d:	75 0b                	jne    0x604a
    603f:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    6046:	00 00 
    6048:	eb 0e                	jmp    0x6058
    604a:	48 89 03             	mov    %rax,(%rbx)
    604d:	31 c0                	xor    %eax,%eax
    604f:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    6053:	eb 03                	jmp    0x6058
    6055:	31 c0                	xor    %eax,%eax
    6057:	c3                   	ret    
    6058:	5a                   	pop    %rdx
    6059:	5b                   	pop    %rbx
    605a:	5d                   	pop    %rbp
    605b:	c3                   	ret    
    605c:	48 8b 07             	mov    (%rdi),%rax
    605f:	48 c7 47 18 00 00 00 	movq   $0x0,0x18(%rdi)
    6066:	00 
    6067:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    606e:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
    6075:	00 
    6076:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
    607d:	00 
    607e:	c3                   	ret    
    607f:	48 c7 47 18 00 00 00 	movq   $0x0,0x18(%rdi)
    6086:	00 
    6087:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
    608e:	00 
    608f:	c3                   	ret    
    6090:	48 03 77 10          	add    0x10(%rdi),%rsi
    6094:	72 12                	jb     0x60a8
    6096:	48 3b 77 18          	cmp    0x18(%rdi),%rsi
    609a:	76 29                	jbe    0x60c5
    609c:	48 be c7 cc 00 00 00 	movabs $0xccc7,%rsi
    60a3:	00 00 00 
    60a6:	eb 0a                	jmp    0x60b2
    60a8:	48 be b2 cc 00 00 00 	movabs $0xccb2,%rsi
    60af:	00 00 00 
    60b2:	bf 0b 00 00 00       	mov    $0xb,%edi
    60b7:	31 c0                	xor    %eax,%eax
    60b9:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    60c0:	00 00 00 
    60c3:	ff e2                	jmp    *%rdx
    60c5:	48 89 77 10          	mov    %rsi,0x10(%rdi)
    60c9:	31 c0                	xor    %eax,%eax
    60cb:	c3                   	ret    
    60cc:	48 be ff cc 00 00 00 	movabs $0xccff,%rsi
    60d3:	00 00 00 
    60d6:	48 8b 57 10          	mov    0x10(%rdi),%rdx
    60da:	31 c0                	xor    %eax,%eax
    60dc:	bf 1e 00 00 00       	mov    $0x1e,%edi
    60e1:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    60e8:	00 00 00 
    60eb:	ff e1                	jmp    *%rcx
    60ed:	48 b8 d4 5b 00 00 00 	movabs $0x5bd4,%rax
    60f4:	00 00 00 
    60f7:	41 57                	push   %r15
    60f9:	49 89 ff             	mov    %rdi,%r15
    60fc:	bf 48 00 00 00       	mov    $0x48,%edi
    6101:	41 56                	push   %r14
    6103:	49 89 f6             	mov    %rsi,%r14
    6106:	41 55                	push   %r13
    6108:	49 89 cd             	mov    %rcx,%r13
    610b:	41 54                	push   %r12
    610d:	55                   	push   %rbp
    610e:	44 89 c5             	mov    %r8d,%ebp
    6111:	53                   	push   %rbx
    6112:	48 89 d3             	mov    %rdx,%rbx
    6115:	41 51                	push   %r9
    6117:	ff d0                	call   *%rax
    6119:	49 89 c4             	mov    %rax,%r12
    611c:	48 85 c0             	test   %rax,%rax
    611f:	0f 84 a8 00 00 00    	je     0x61cd
    6125:	4c 89 78 10          	mov    %r15,0x10(%rax)
    6129:	4c 89 70 20          	mov    %r14,0x20(%rax)
    612d:	48 85 db             	test   %rbx,%rbx
    6130:	75 0a                	jne    0x613c
    6132:	48 bb 38 cd 00 00 00 	movabs $0xcd38,%rbx
    6139:	00 00 00 
    613c:	41 89 6c 24 18       	mov    %ebp,0x18(%r12)
    6141:	48 bd d8 f8 00 00 00 	movabs $0xf8d8,%rbp
    6148:	00 00 00 
    614b:	49 be 06 98 00 00 00 	movabs $0x9806,%r14
    6152:	00 00 00 
    6155:	41 c7 44 24 28 00 00 	movl   $0x0,0x28(%r12)
    615c:	00 00 
    615e:	49 89 5c 24 30       	mov    %rbx,0x30(%r12)
    6163:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
    6167:	4d 89 6c 24 38       	mov    %r13,0x38(%r12)
    616c:	45 31 ed             	xor    %r13d,%r13d
    616f:	48 85 db             	test   %rbx,%rbx
    6172:	74 35                	je     0x61a9
    6174:	48 8b 73 10          	mov    0x10(%rbx),%rsi
    6178:	49 8b 7c 24 10       	mov    0x10(%r12),%rdi
    617d:	41 ff d6             	call   *%r14
    6180:	85 c0                	test   %eax,%eax
    6182:	78 25                	js     0x61a9
    6184:	75 1b                	jne    0x61a1
    6186:	8b 43 18             	mov    0x18(%rbx),%eax
    6189:	0f b6 d0             	movzbl %al,%edx
    618c:	41 39 54 24 18       	cmp    %edx,0x18(%r12)
    6191:	7c 08                	jl     0x619b
    6193:	80 e4 fe             	and    $0xfe,%ah
    6196:	89 43 18             	mov    %eax,0x18(%rbx)
    6199:	eb 0e                	jmp    0x61a9
    619b:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    61a1:	48 89 dd             	mov    %rbx,%rbp
    61a4:	48 8b 1b             	mov    (%rbx),%rbx
    61a7:	eb c6                	jmp    0x616f
    61a9:	4c 89 65 00          	mov    %r12,0x0(%rbp)
    61ad:	49 89 1c 24          	mov    %rbx,(%r12)
    61b1:	48 85 db             	test   %rbx,%rbx
    61b4:	74 04                	je     0x61ba
    61b6:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    61ba:	49 89 6c 24 08       	mov    %rbp,0x8(%r12)
    61bf:	45 85 ed             	test   %r13d,%r13d
    61c2:	75 09                	jne    0x61cd
    61c4:	41 81 4c 24 18 00 01 	orl    $0x100,0x18(%r12)
    61cb:	00 00 
    61cd:	5a                   	pop    %rdx
    61ce:	4c 89 e0             	mov    %r12,%rax
    61d1:	5b                   	pop    %rbx
    61d2:	5d                   	pop    %rbp
    61d3:	41 5c                	pop    %r12
    61d5:	41 5d                	pop    %r13
    61d7:	41 5e                	pop    %r14
    61d9:	41 5f                	pop    %r15
    61db:	c3                   	ret    
    61dc:	48 b8 7f 58 00 00 00 	movabs $0x587f,%rax
    61e3:	00 00 00 
    61e6:	48 83 ec 28          	sub    $0x28,%rsp
    61ea:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    61ef:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    61f4:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    61f9:	48 89 0c 24          	mov    %rcx,(%rsp)
    61fd:	ff d0                	call   *%rax
    61ff:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    6204:	48 8b 0c 24          	mov    (%rsp),%rcx
    6208:	ff c8                	dec    %eax
    620a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    620f:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    6214:	48 b8 cc 60 00 00 00 	movabs $0x60cc,%rax
    621b:	00 00 00 
    621e:	48 0f 44 f0          	cmove  %rax,%rsi
    6222:	45 31 c0             	xor    %r8d,%r8d
    6225:	48 83 c4 28          	add    $0x28,%rsp
    6229:	48 b8 ed 60 00 00 00 	movabs $0x60ed,%rax
    6230:	00 00 00 
    6233:	ff e0                	jmp    *%rax
    6235:	48 83 ec 18          	sub    $0x18,%rsp
    6239:	f6 47 19 01          	testb  $0x1,0x19(%rdi)
    623d:	74 0f                	je     0x624e
    623f:	48 8b 07             	mov    (%rdi),%rax
    6242:	48 85 c0             	test   %rax,%rax
    6245:	74 07                	je     0x624e
    6247:	81 48 18 00 01 00 00 	orl    $0x100,0x18(%rax)
    624e:	48 b8 b6 90 00 00 00 	movabs $0x90b6,%rax
    6255:	00 00 00 
    6258:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    625d:	ff d0                	call   *%rax
    625f:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    6264:	48 83 c4 18          	add    $0x18,%rsp
    6268:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    626f:	00 00 00 
    6272:	ff e0                	jmp    *%rax
    6274:	50                   	push   %rax
    6275:	f6 06 01             	testb  $0x1,(%rsi)
    6278:	48 89 fe             	mov    %rdi,%rsi
    627b:	48 b8 3b cd 00 00 00 	movabs $0xcd3b,%rax
    6282:	00 00 00 
    6285:	48 ba 39 cd 00 00 00 	movabs $0xcd39,%rdx
    628c:	00 00 00 
    628f:	48 bf 3c cd 00 00 00 	movabs $0xcd3c,%rdi
    6296:	00 00 00 
    6299:	48 b9 0a a6 00 00 00 	movabs $0xa60a,%rcx
    62a0:	00 00 00 
    62a3:	48 0f 44 d0          	cmove  %rax,%rdx
    62a7:	31 c0                	xor    %eax,%eax
    62a9:	ff d1                	call   *%rcx
    62ab:	31 c0                	xor    %eax,%eax
    62ad:	5a                   	pop    %rdx
    62ae:	c3                   	ret    
    62af:	48 ba 0a a6 00 00 00 	movabs $0xa60a,%rdx
    62b6:	00 00 00 
    62b9:	48 89 fe             	mov    %rdi,%rsi
    62bc:	50                   	push   %rax
    62bd:	31 c0                	xor    %eax,%eax
    62bf:	48 bf 42 cd 00 00 00 	movabs $0xcd42,%rdi
    62c6:	00 00 00 
    62c9:	ff d2                	call   *%rdx
    62cb:	31 c0                	xor    %eax,%eax
    62cd:	5a                   	pop    %rdx
    62ce:	c3                   	ret    
    62cf:	85 f6                	test   %esi,%esi
    62d1:	41 56                	push   %r14
    62d3:	49 be 80 aa 01 00 00 	movabs $0x1aa80,%r14
    62da:	00 00 00 
    62dd:	41 55                	push   %r13
    62df:	41 54                	push   %r12
    62e1:	55                   	push   %rbp
    62e2:	53                   	push   %rbx
    62e3:	7f 3f                	jg     0x6324
    62e5:	48 bf af 62 00 00 00 	movabs $0x62af,%rdi
    62ec:	00 00 00 
    62ef:	31 f6                	xor    %esi,%esi
    62f1:	48 b8 3e 69 00 00 00 	movabs $0x693e,%rax
    62f8:	00 00 00 
    62fb:	ff d0                	call   *%rax
    62fd:	48 a1 a0 e6 00 00 00 	movabs 0xe6a0,%rax
    6304:	00 00 00 
    6307:	48 bf 50 cd 00 00 00 	movabs $0xcd50,%rdi
    630e:	00 00 00 
    6311:	ff d0                	call   *%rax
    6313:	48 b8 77 bb 00 00 00 	movabs $0xbb77,%rax
    631a:	00 00 00 
    631d:	ff d0                	call   *%rax
    631f:	e9 34 01 00 00       	jmp    0x6458
    6324:	48 b8 3f 88 00 00 00 	movabs $0x883f,%rax
    632b:	00 00 00 
    632e:	48 8b 3a             	mov    (%rdx),%rdi
    6331:	49 89 d5             	mov    %rdx,%r13
    6334:	ff d0                	call   *%rax
    6336:	41 83 3e 00          	cmpl   $0x0,(%r14)
    633a:	49 89 c4             	mov    %rax,%r12
    633d:	0f 85 06 01 00 00    	jne    0x6449
    6343:	48 89 c7             	mov    %rax,%rdi
    6346:	48 b8 21 67 00 00 00 	movabs $0x6721,%rax
    634d:	00 00 00 
    6350:	ff d0                	call   *%rax
    6352:	48 89 c5             	mov    %rax,%rbp
    6355:	48 85 c0             	test   %rax,%rax
    6358:	0f 84 eb 00 00 00    	je     0x6449
    635e:	48 89 c7             	mov    %rax,%rdi
    6361:	48 b8 8b 8e 00 00 00 	movabs $0x8e8b,%rax
    6368:	00 00 00 
    636b:	ff d0                	call   *%rax
    636d:	be 29 00 00 00       	mov    $0x29,%esi
    6372:	49 8b 7d 00          	mov    0x0(%r13),%rdi
    6376:	48 89 c3             	mov    %rax,%rbx
    6379:	48 b8 59 98 00 00 00 	movabs $0x9859,%rax
    6380:	00 00 00 
    6383:	ff d0                	call   *%rax
    6385:	48 8d 70 01          	lea    0x1(%rax),%rsi
    6389:	48 85 c0             	test   %rax,%rax
    638c:	75 04                	jne    0x6392
    638e:	49 8b 75 00          	mov    0x0(%r13),%rsi
    6392:	80 3e 00             	cmpb   $0x0,(%rsi)
    6395:	75 6a                	jne    0x6401
    6397:	4d 85 e4             	test   %r12,%r12
    639a:	75 1f                	jne    0x63bb
    639c:	48 be 52 cd 00 00 00 	movabs $0xcd52,%rsi
    63a3:	00 00 00 
    63a6:	bf 12 00 00 00       	mov    $0x12,%edi
    63ab:	31 c0                	xor    %eax,%eax
    63ad:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    63b4:	00 00 00 
    63b7:	ff d2                	call   *%rdx
    63b9:	eb 7f                	jmp    0x643a
    63bb:	41 83 3e 08          	cmpl   $0x8,(%r14)
    63bf:	75 10                	jne    0x63d1
    63c1:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    63c8:	00 00 00 
    63cb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    63d1:	48 ba 48 cd 00 00 00 	movabs $0xcd48,%rdx
    63d8:	00 00 00 
    63db:	48 85 db             	test   %rbx,%rbx
    63de:	74 04                	je     0x63e4
    63e0:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    63e4:	48 bf 63 cd 00 00 00 	movabs $0xcd63,%rdi
    63eb:	00 00 00 
    63ee:	4c 89 e6             	mov    %r12,%rsi
    63f1:	31 c0                	xor    %eax,%eax
    63f3:	48 b9 0a a6 00 00 00 	movabs $0xa60a,%rcx
    63fa:	00 00 00 
    63fd:	ff d1                	call   *%rcx
    63ff:	eb 39                	jmp    0x643a
    6401:	48 85 db             	test   %rbx,%rbx
    6404:	74 34                	je     0x643a
    6406:	48 ba 74 62 00 00 00 	movabs $0x6274,%rdx
    640d:	00 00 00 
    6410:	31 c9                	xor    %ecx,%ecx
    6412:	48 89 ef             	mov    %rbp,%rdi
    6415:	ff 53 18             	call   *0x18(%rbx)
    6418:	48 a1 a0 e6 00 00 00 	movabs 0xe6a0,%rax
    641f:	00 00 00 
    6422:	48 bf 50 cd 00 00 00 	movabs $0xcd50,%rdi
    6429:	00 00 00 
    642c:	ff d0                	call   *%rax
    642e:	48 b8 77 bb 00 00 00 	movabs $0xbb77,%rax
    6435:	00 00 00 
    6438:	ff d0                	call   *%rax
    643a:	48 b8 01 68 00 00 00 	movabs $0x6801,%rax
    6441:	00 00 00 
    6444:	48 89 ef             	mov    %rbp,%rdi
    6447:	ff d0                	call   *%rax
    6449:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    6450:	00 00 00 
    6453:	4c 89 e7             	mov    %r12,%rdi
    6456:	ff d0                	call   *%rax
    6458:	5b                   	pop    %rbx
    6459:	41 8b 06             	mov    (%r14),%eax
    645c:	5d                   	pop    %rbp
    645d:	41 5c                	pop    %r12
    645f:	41 5d                	pop    %r13
    6461:	41 5e                	pop    %r14
    6463:	c3                   	ret    
    6464:	85 f6                	test   %esi,%esi
    6466:	7f 1d                	jg     0x6485
    6468:	48 be 7c cd 00 00 00 	movabs $0xcd7c,%rsi
    646f:	00 00 00 
    6472:	bf 12 00 00 00       	mov    $0x12,%edi
    6477:	31 c0                	xor    %eax,%eax
    6479:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    6480:	00 00 00 
    6483:	ff e2                	jmp    *%rdx
    6485:	50                   	push   %rax
    6486:	48 8b 3a             	mov    (%rdx),%rdi
    6489:	48 b8 7d 84 00 00 00 	movabs $0x847d,%rax
    6490:	00 00 00 
    6493:	ff d0                	call   *%rax
    6495:	31 c0                	xor    %eax,%eax
    6497:	5a                   	pop    %rdx
    6498:	c3                   	ret    
    6499:	55                   	push   %rbp
    649a:	53                   	push   %rbx
    649b:	57                   	push   %rdi
    649c:	85 f6                	test   %esi,%esi
    649e:	7f 4b                	jg     0x64eb
    64a0:	48 b8 10 85 00 00 00 	movabs $0x8510,%rax
    64a7:	00 00 00 
    64aa:	48 bd 53 84 00 00 00 	movabs $0x8453,%rbp
    64b1:	00 00 00 
    64b4:	ff d0                	call   *%rax
    64b6:	48 89 c3             	mov    %rax,%rbx
    64b9:	48 85 db             	test   %rbx,%rbx
    64bc:	0f 84 81 00 00 00    	je     0x6543
    64c2:	48 8b 3b             	mov    (%rbx),%rdi
    64c5:	ff d5                	call   *%rbp
    64c7:	48 8b 33             	mov    (%rbx),%rsi
    64ca:	48 bf 92 cd 00 00 00 	movabs $0xcd92,%rdi
    64d1:	00 00 00 
    64d4:	48 b9 0a a6 00 00 00 	movabs $0xa60a,%rcx
    64db:	00 00 00 
    64de:	48 89 c2             	mov    %rax,%rdx
    64e1:	31 c0                	xor    %eax,%eax
    64e3:	ff d1                	call   *%rcx
    64e5:	48 8b 5b 30          	mov    0x30(%rbx),%rbx
    64e9:	eb ce                	jmp    0x64b9
    64eb:	48 8b 2a             	mov    (%rdx),%rbp
    64ee:	be 3d 00 00 00       	mov    $0x3d,%esi
    64f3:	48 b8 59 98 00 00 00 	movabs $0x9859,%rax
    64fa:	00 00 00 
    64fd:	48 89 ef             	mov    %rbp,%rdi
    6500:	ff d0                	call   *%rax
    6502:	48 89 c3             	mov    %rax,%rbx
    6505:	48 85 c0             	test   %rax,%rax
    6508:	75 20                	jne    0x652a
    650a:	59                   	pop    %rcx
    650b:	bf 12 00 00 00       	mov    $0x12,%edi
    6510:	5b                   	pop    %rbx
    6511:	31 c0                	xor    %eax,%eax
    6513:	48 be 99 cd 00 00 00 	movabs $0xcd99,%rsi
    651a:	00 00 00 
    651d:	5d                   	pop    %rbp
    651e:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    6525:	00 00 00 
    6528:	ff e2                	jmp    *%rdx
    652a:	c6 00 00             	movb   $0x0,(%rax)
    652d:	48 8d 70 01          	lea    0x1(%rax),%rsi
    6531:	48 89 ef             	mov    %rbp,%rdi
    6534:	48 b8 1f 83 00 00 00 	movabs $0x831f,%rax
    653b:	00 00 00 
    653e:	ff d0                	call   *%rax
    6540:	c6 03 3d             	movb   $0x3d,(%rbx)
    6543:	5a                   	pop    %rdx
    6544:	31 c0                	xor    %eax,%eax
    6546:	5b                   	pop    %rbx
    6547:	5d                   	pop    %rbp
    6548:	c3                   	ret    
    6549:	85 f6                	test   %esi,%esi
    654b:	75 1d                	jne    0x656a
    654d:	48 be 7c cd 00 00 00 	movabs $0xcd7c,%rsi
    6554:	00 00 00 
    6557:	bf 12 00 00 00       	mov    $0x12,%edi
    655c:	31 c0                	xor    %eax,%eax
    655e:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    6565:	00 00 00 
    6568:	ff e2                	jmp    *%rdx
    656a:	51                   	push   %rcx
    656b:	48 8b 3a             	mov    (%rdx),%rdi
    656e:	8a 07                	mov    (%rdi),%al
    6570:	89 c2                	mov    %eax,%edx
    6572:	83 e2 fb             	and    $0xfffffffb,%edx
    6575:	80 fa 2b             	cmp    $0x2b,%dl
    6578:	74 04                	je     0x657e
    657a:	3c 28                	cmp    $0x28,%al
    657c:	75 0c                	jne    0x658a
    657e:	48 b8 cf 80 00 00 00 	movabs $0x80cf,%rax
    6585:	00 00 00 
    6588:	eb 0a                	jmp    0x6594
    658a:	48 b8 8a 81 00 00 00 	movabs $0x818a,%rax
    6591:	00 00 00 
    6594:	ff d0                	call   *%rax
    6596:	48 89 c7             	mov    %rax,%rdi
    6599:	48 85 c0             	test   %rax,%rax
    659c:	74 0c                	je     0x65aa
    659e:	48 b8 d7 76 00 00 00 	movabs $0x76d7,%rax
    65a5:	00 00 00 
    65a8:	ff d0                	call   *%rax
    65aa:	31 c0                	xor    %eax,%eax
    65ac:	5a                   	pop    %rdx
    65ad:	c3                   	ret    
    65ae:	48 b9 ab cd 00 00 00 	movabs $0xcdab,%rcx
    65b5:	00 00 00 
    65b8:	53                   	push   %rbx
    65b9:	45 31 c0             	xor    %r8d,%r8d
    65bc:	48 ba c8 cd 00 00 00 	movabs $0xcdc8,%rdx
    65c3:	00 00 00 
    65c6:	48 be 99 64 00 00 00 	movabs $0x6499,%rsi
    65cd:	00 00 00 
    65d0:	48 bf d7 cd 00 00 00 	movabs $0xcdd7,%rdi
    65d7:	00 00 00 
    65da:	48 bb ed 60 00 00 00 	movabs $0x60ed,%rbx
    65e1:	00 00 00 
    65e4:	ff d3                	call   *%rbx
    65e6:	48 85 c0             	test   %rax,%rax
    65e9:	74 07                	je     0x65f2
    65eb:	81 48 28 00 02 00 00 	orl    $0x200,0x28(%rax)
    65f2:	48 b9 db cd 00 00 00 	movabs $0xcddb,%rcx
    65f9:	00 00 00 
    65fc:	45 31 c0             	xor    %r8d,%r8d
    65ff:	48 ba fb cd 00 00 00 	movabs $0xcdfb,%rdx
    6606:	00 00 00 
    6609:	48 be 64 64 00 00 00 	movabs $0x6464,%rsi
    6610:	00 00 00 
    6613:	48 bf 02 ce 00 00 00 	movabs $0xce02,%rdi
    661a:	00 00 00 
    661d:	ff d3                	call   *%rbx
    661f:	45 31 c0             	xor    %r8d,%r8d
    6622:	48 b9 08 ce 00 00 00 	movabs $0xce08,%rcx
    6629:	00 00 00 
    662c:	48 ba 1f ce 00 00 00 	movabs $0xce1f,%rdx
    6633:	00 00 00 
    6636:	48 be cf 62 00 00 00 	movabs $0x62cf,%rsi
    663d:	00 00 00 
    6640:	48 bf 25 ce 00 00 00 	movabs $0xce25,%rdi
    6647:	00 00 00 
    664a:	ff d3                	call   *%rbx
    664c:	48 89 d8             	mov    %rbx,%rax
    664f:	45 31 c0             	xor    %r8d,%r8d
    6652:	5b                   	pop    %rbx
    6653:	48 b9 28 ce 00 00 00 	movabs $0xce28,%rcx
    665a:	00 00 00 
    665d:	48 ba 39 ce 00 00 00 	movabs $0xce39,%rdx
    6664:	00 00 00 
    6667:	48 be 49 65 00 00 00 	movabs $0x6549,%rsi
    666e:	00 00 00 
    6671:	48 bf 40 ce 00 00 00 	movabs $0xce40,%rdi
    6678:	00 00 00 
    667b:	ff e0                	jmp    *%rax
    667d:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    6684:	00 00 00 
    6687:	41 56                	push   %r14
    6689:	41 55                	push   %r13
    668b:	49 89 fd             	mov    %rdi,%r13
    668e:	bf 10 00 00 00       	mov    $0x10,%edi
    6693:	41 54                	push   %r12
    6695:	49 89 f4             	mov    %rsi,%r12
    6698:	55                   	push   %rbp
    6699:	53                   	push   %rbx
    669a:	48 89 d3             	mov    %rdx,%rbx
    669d:	ff d0                	call   *%rax
    669f:	48 89 c5             	mov    %rax,%rbp
    66a2:	b8 01 00 00 00       	mov    $0x1,%eax
    66a7:	48 85 ed             	test   %rbp,%rbp
    66aa:	74 6c                	je     0x6718
    66ac:	48 b8 8d b3 00 00 00 	movabs $0xb38d,%rax
    66b3:	00 00 00 
    66b6:	4c 89 e7             	mov    %r12,%rdi
    66b9:	49 be 12 5c 00 00 00 	movabs $0x5c12,%r14
    66c0:	00 00 00 
    66c3:	ff d0                	call   *%rax
    66c5:	48 85 c0             	test   %rax,%rax
    66c8:	49 89 c4             	mov    %rax,%r12
    66cb:	74 30                	je     0x66fd
    66cd:	48 89 c2             	mov    %rax,%rdx
    66d0:	49 8b 75 00          	mov    0x0(%r13),%rsi
    66d4:	31 c0                	xor    %eax,%eax
    66d6:	48 bf 47 ce 00 00 00 	movabs $0xce47,%rdi
    66dd:	00 00 00 
    66e0:	48 b9 a8 a8 00 00 00 	movabs $0xa8a8,%rcx
    66e7:	00 00 00 
    66ea:	ff d1                	call   *%rcx
    66ec:	4c 89 e7             	mov    %r12,%rdi
    66ef:	48 89 45 08          	mov    %rax,0x8(%rbp)
    66f3:	41 ff d6             	call   *%r14
    66f6:	48 83 7d 08 00       	cmpq   $0x0,0x8(%rbp)
    66fb:	75 0d                	jne    0x670a
    66fd:	48 89 ef             	mov    %rbp,%rdi
    6700:	41 ff d6             	call   *%r14
    6703:	b8 01 00 00 00       	mov    $0x1,%eax
    6708:	eb 0e                	jmp    0x6718
    670a:	48 8b 43 10          	mov    0x10(%rbx),%rax
    670e:	48 89 45 00          	mov    %rax,0x0(%rbp)
    6712:	31 c0                	xor    %eax,%eax
    6714:	48 89 6b 10          	mov    %rbp,0x10(%rbx)
    6718:	5b                   	pop    %rbx
    6719:	5d                   	pop    %rbp
    671a:	41 5c                	pop    %r12
    671c:	41 5d                	pop    %r13
    671e:	41 5e                	pop    %r14
    6720:	c3                   	ret    
    6721:	41 54                	push   %r12
    6723:	55                   	push   %rbp
    6724:	48 89 fd             	mov    %rdi,%rbp
    6727:	51                   	push   %rcx
    6728:	48 85 ff             	test   %rdi,%rdi
    672b:	75 4b                	jne    0x6778
    672d:	49 bc 4d ce 00 00 00 	movabs $0xce4d,%r12
    6734:	00 00 00 
    6737:	48 b8 53 84 00 00 00 	movabs $0x8453,%rax
    673e:	00 00 00 
    6741:	4c 89 e7             	mov    %r12,%rdi
    6744:	ff d0                	call   *%rax
    6746:	48 89 c5             	mov    %rax,%rbp
    6749:	48 85 c0             	test   %rax,%rax
    674c:	74 05                	je     0x6753
    674e:	80 38 00             	cmpb   $0x0,(%rax)
    6751:	75 25                	jne    0x6778
    6753:	4c 89 e2             	mov    %r12,%rdx
    6756:	bf 0d 00 00 00       	mov    $0xd,%edi
    675b:	31 c0                	xor    %eax,%eax
    675d:	45 31 e4             	xor    %r12d,%r12d
    6760:	48 be 52 ce 00 00 00 	movabs $0xce52,%rsi
    6767:	00 00 00 
    676a:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    6771:	00 00 00 
    6774:	ff d1                	call   *%rcx
    6776:	eb 6f                	jmp    0x67e7
    6778:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    677f:	00 00 00 
    6782:	bf 10 00 00 00       	mov    $0x10,%edi
    6787:	ff d0                	call   *%rax
    6789:	49 89 c4             	mov    %rax,%r12
    678c:	48 85 c0             	test   %rax,%rax
    678f:	74 56                	je     0x67e7
    6791:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    6798:	00 
    6799:	48 89 ef             	mov    %rbp,%rdi
    679c:	48 b8 d6 6e 00 00 00 	movabs $0x6ed6,%rax
    67a3:	00 00 00 
    67a6:	ff d0                	call   *%rax
    67a8:	49 89 04 24          	mov    %rax,(%r12)
    67ac:	48 85 c0             	test   %rax,%rax
    67af:	75 48                	jne    0x67f9
    67b1:	48 a1 e0 f8 00 00 00 	movabs 0xf8e0,%rax
    67b8:	00 00 00 
    67bb:	48 85 c0             	test   %rax,%rax
    67be:	74 1f                	je     0x67df
    67c0:	48 ba 80 aa 01 00 00 	movabs $0x1aa80,%rdx
    67c7:	00 00 00 
    67ca:	83 3a 0c             	cmpl   $0xc,(%rdx)
    67cd:	75 10                	jne    0x67df
    67cf:	c7 02 00 00 00 00    	movl   $0x0,(%rdx)
    67d5:	48 89 ef             	mov    %rbp,%rdi
    67d8:	ff d0                	call   *%rax
    67da:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    67df:	49 83 7c 24 08 00    	cmpq   $0x0,0x8(%r12)
    67e5:	75 12                	jne    0x67f9
    67e7:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    67ee:	00 00 00 
    67f1:	4c 89 e7             	mov    %r12,%rdi
    67f4:	45 31 e4             	xor    %r12d,%r12d
    67f7:	ff d0                	call   *%rax
    67f9:	4c 89 e0             	mov    %r12,%rax
    67fc:	5a                   	pop    %rdx
    67fd:	5d                   	pop    %rbp
    67fe:	41 5c                	pop    %r12
    6800:	c3                   	ret    
    6801:	55                   	push   %rbp
    6802:	48 89 fd             	mov    %rdi,%rbp
    6805:	53                   	push   %rbx
    6806:	51                   	push   %rcx
    6807:	48 8b 3f             	mov    (%rdi),%rdi
    680a:	48 85 ff             	test   %rdi,%rdi
    680d:	74 0c                	je     0x681b
    680f:	48 b8 3c 6e 00 00 00 	movabs $0x6e3c,%rax
    6816:	00 00 00 
    6819:	ff d0                	call   *%rax
    681b:	48 bb 12 5c 00 00 00 	movabs $0x5c12,%rbx
    6822:	00 00 00 
    6825:	48 8b 45 08          	mov    0x8(%rbp),%rax
    6829:	48 85 c0             	test   %rax,%rax
    682c:	74 0b                	je     0x6839
    682e:	48 8b 38             	mov    (%rax),%rdi
    6831:	ff d3                	call   *%rbx
    6833:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
    6837:	ff d3                	call   *%rbx
    6839:	48 89 ef             	mov    %rbp,%rdi
    683c:	ff d3                	call   *%rbx
    683e:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    6845:	00 00 
    6847:	5a                   	pop    %rdx
    6848:	5b                   	pop    %rbx
    6849:	5d                   	pop    %rbp
    684a:	c3                   	ret    
    684b:	41 56                	push   %r14
    684d:	41 55                	push   %r13
    684f:	41 54                	push   %r12
    6851:	41 bc 01 00 00 00    	mov    $0x1,%r12d
    6857:	55                   	push   %rbp
    6858:	53                   	push   %rbx
    6859:	48 89 f3             	mov    %rsi,%rbx
    685c:	48 83 ec 10          	sub    $0x10,%rsp
    6860:	48 8b 76 08          	mov    0x8(%rsi),%rsi
    6864:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    6869:	ff 13                	call   *(%rbx)
    686b:	85 c0                	test   %eax,%eax
    686d:	0f 85 bb 00 00 00    	jne    0x692e
    6873:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    6878:	41 89 c4             	mov    %eax,%r12d
    687b:	48 b8 21 67 00 00 00 	movabs $0x6721,%rax
    6882:	00 00 00 
    6885:	ff d0                	call   *%rax
    6887:	48 89 c5             	mov    %rax,%rbp
    688a:	48 85 c0             	test   %rax,%rax
    688d:	75 15                	jne    0x68a4
    688f:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    6896:	00 00 00 
    6899:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    689f:	e9 8a 00 00 00       	jmp    0x692e
    68a4:	49 bd 01 68 00 00 00 	movabs $0x6801,%r13
    68ab:	00 00 00 
    68ae:	48 8b 38             	mov    (%rax),%rdi
    68b1:	48 85 ff             	test   %rdi,%rdi
    68b4:	74 72                	je     0x6928
    68b6:	48 89 da             	mov    %rbx,%rdx
    68b9:	48 be 7d 66 00 00 00 	movabs $0x667d,%rsi
    68c0:	00 00 00 
    68c3:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
    68ca:	00 
    68cb:	48 b8 19 b3 00 00 00 	movabs $0xb319,%rax
    68d2:	00 00 00 
    68d5:	ff d0                	call   *%rax
    68d7:	48 89 ef             	mov    %rbp,%rdi
    68da:	41 ff d5             	call   *%r13
    68dd:	48 8b 6b 10          	mov    0x10(%rbx),%rbp
    68e1:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    68e8:	00 00 00 
    68eb:	49 bd 12 5c 00 00 00 	movabs $0x5c12,%r13
    68f2:	00 00 00 
    68f5:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    68fb:	48 85 ed             	test   %rbp,%rbp
    68fe:	74 2e                	je     0x692e
    6900:	4c 8b 75 00          	mov    0x0(%rbp),%r14
    6904:	45 85 e4             	test   %r12d,%r12d
    6907:	75 0d                	jne    0x6916
    6909:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    690d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
    6911:	ff 13                	call   *(%rbx)
    6913:	41 89 c4             	mov    %eax,%r12d
    6916:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
    691a:	41 ff d5             	call   *%r13
    691d:	48 89 ef             	mov    %rbp,%rdi
    6920:	4c 89 f5             	mov    %r14,%rbp
    6923:	41 ff d5             	call   *%r13
    6926:	eb d3                	jmp    0x68fb
    6928:	48 89 c7             	mov    %rax,%rdi
    692b:	41 ff d5             	call   *%r13
    692e:	48 83 c4 10          	add    $0x10,%rsp
    6932:	44 89 e0             	mov    %r12d,%eax
    6935:	5b                   	pop    %rbx
    6936:	5d                   	pop    %rbp
    6937:	41 5c                	pop    %r12
    6939:	41 5d                	pop    %r13
    693b:	41 5e                	pop    %r14
    693d:	c3                   	ret    
    693e:	41 55                	push   %r13
    6940:	41 54                	push   %r12
    6942:	49 bc 00 f9 00 00 00 	movabs $0xf900,%r12
    6949:	00 00 00 
    694c:	55                   	push   %rbp
    694d:	53                   	push   %rbx
    694e:	31 db                	xor    %ebx,%ebx
    6950:	48 83 ec 28          	sub    $0x28,%rsp
    6954:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    6959:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    695e:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
    6965:	00 00 
    6967:	49 bd 4b 68 00 00 00 	movabs $0x684b,%r13
    696e:	00 00 00 
    6971:	49 8b 2c 24          	mov    (%r12),%rbp
    6975:	48 85 ed             	test   %rbp,%rbp
    6978:	74 26                	je     0x69a0
    697a:	48 8b 45 10          	mov    0x10(%rbp),%rax
    697e:	48 85 c0             	test   %rax,%rax
    6981:	75 06                	jne    0x6989
    6983:	48 8b 6d 38          	mov    0x38(%rbp),%rbp
    6987:	eb ec                	jmp    0x6975
    6989:	89 da                	mov    %ebx,%edx
    698b:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    6990:	4c 89 ef             	mov    %r13,%rdi
    6993:	ff d0                	call   *%rax
    6995:	85 c0                	test   %eax,%eax
    6997:	74 ea                	je     0x6983
    6999:	b8 01 00 00 00       	mov    $0x1,%eax
    699e:	eb 09                	jmp    0x69a9
    69a0:	ff c3                	inc    %ebx
    69a2:	83 fb 03             	cmp    $0x3,%ebx
    69a5:	75 c0                	jne    0x6967
    69a7:	31 c0                	xor    %eax,%eax
    69a9:	48 83 c4 28          	add    $0x28,%rsp
    69ad:	5b                   	pop    %rbx
    69ae:	5d                   	pop    %rbp
    69af:	41 5c                	pop    %r12
    69b1:	41 5d                	pop    %r13
    69b3:	c3                   	ret    
    69b4:	48 89 d0             	mov    %rdx,%rax
    69b7:	48 89 d1             	mov    %rdx,%rcx
    69ba:	41 b8 fd 03 00 00    	mov    $0x3fd,%r8d
    69c0:	48 69 d6 7b c5 27 00 	imul   $0x27c57b,%rsi,%rdx
    69c7:	48 c1 e8 06          	shr    $0x6,%rax
    69cb:	89 c0                	mov    %eax,%eax
    69cd:	48 01 d0             	add    %rdx,%rax
    69d0:	48 69 d7 ff ff 07 00 	imul   $0x7ffff,%rdi,%rdx
    69d7:	48 01 d0             	add    %rdx,%rax
    69da:	31 d2                	xor    %edx,%edx
    69dc:	49 f7 f0             	div    %r8
    69df:	48 b8 20 f9 00 00 00 	movabs $0xf920,%rax
    69e6:	00 00 00 
    69e9:	48 6b d2 28          	imul   $0x28,%rdx,%rdx
    69ed:	48 01 c2             	add    %rax,%rdx
    69f0:	31 c0                	xor    %eax,%eax
    69f2:	44 8b 02             	mov    (%rdx),%r8d
    69f5:	49 39 f8             	cmp    %rdi,%r8
    69f8:	75 17                	jne    0x6a11
    69fa:	48 39 72 08          	cmp    %rsi,0x8(%rdx)
    69fe:	75 11                	jne    0x6a11
    6a00:	48 39 4a 10          	cmp    %rcx,0x10(%rdx)
    6a04:	75 0b                	jne    0x6a11
    6a06:	c7 42 20 01 00 00 00 	movl   $0x1,0x20(%rdx)
    6a0d:	48 8b 42 18          	mov    0x18(%rdx),%rax
    6a11:	c3                   	ret    
    6a12:	41 56                	push   %r14
    6a14:	48 89 d0             	mov    %rdx,%rax
    6a17:	49 89 ce             	mov    %rcx,%r14
    6a1a:	b9 fd 03 00 00       	mov    $0x3fd,%ecx
    6a1f:	41 55                	push   %r13
    6a21:	48 c1 e8 06          	shr    $0x6,%rax
    6a25:	49 89 fd             	mov    %rdi,%r13
    6a28:	41 54                	push   %r12
    6a2a:	89 c0                	mov    %eax,%eax
    6a2c:	49 89 f4             	mov    %rsi,%r12
    6a2f:	55                   	push   %rbp
    6a30:	48 89 d5             	mov    %rdx,%rbp
    6a33:	48 69 d6 7b c5 27 00 	imul   $0x27c57b,%rsi,%rdx
    6a3a:	53                   	push   %rbx
    6a3b:	48 01 d0             	add    %rdx,%rax
    6a3e:	48 69 d7 ff ff 07 00 	imul   $0x7ffff,%rdi,%rdx
    6a45:	48 01 d0             	add    %rdx,%rax
    6a48:	31 d2                	xor    %edx,%edx
    6a4a:	48 f7 f1             	div    %rcx
    6a4d:	48 b8 20 f9 00 00 00 	movabs $0xf920,%rax
    6a54:	00 00 00 
    6a57:	48 6b d2 28          	imul   $0x28,%rdx,%rdx
    6a5b:	48 8d 1c 02          	lea    (%rdx,%rax,1),%rbx
    6a5f:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    6a66:	00 00 00 
    6a69:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
    6a6d:	c7 43 20 01 00 00 00 	movl   $0x1,0x20(%rbx)
    6a74:	ff d0                	call   *%rax
    6a76:	48 c7 43 18 00 00 00 	movq   $0x0,0x18(%rbx)
    6a7d:	00 
    6a7e:	bf 00 80 00 00       	mov    $0x8000,%edi
    6a83:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    6a8a:	00 00 00 
    6a8d:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%rbx)
    6a94:	ff d0                	call   *%rax
    6a96:	48 89 43 18          	mov    %rax,0x18(%rbx)
    6a9a:	48 85 c0             	test   %rax,%rax
    6a9d:	74 22                	je     0x6ac1
    6a9f:	48 89 c7             	mov    %rax,%rdi
    6aa2:	ba 00 80 00 00       	mov    $0x8000,%edx
    6aa7:	4c 89 f6             	mov    %r14,%rsi
    6aaa:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    6ab1:	00 00 00 
    6ab4:	ff d0                	call   *%rax
    6ab6:	44 89 2b             	mov    %r13d,(%rbx)
    6ab9:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    6abd:	48 89 6b 10          	mov    %rbp,0x10(%rbx)
    6ac1:	5b                   	pop    %rbx
    6ac2:	5d                   	pop    %rbp
    6ac3:	41 5c                	pop    %r12
    6ac5:	41 5d                	pop    %r13
    6ac7:	41 5e                	pop    %r14
    6ac9:	c3                   	ret    
    6aca:	48 89 d0             	mov    %rdx,%rax
    6acd:	48 89 d1             	mov    %rdx,%rcx
    6ad0:	41 b8 fd 03 00 00    	mov    $0x3fd,%r8d
    6ad6:	48 69 d6 7b c5 27 00 	imul   $0x27c57b,%rsi,%rdx
    6add:	48 c1 e8 06          	shr    $0x6,%rax
    6ae1:	89 c0                	mov    %eax,%eax
    6ae3:	48 01 d0             	add    %rdx,%rax
    6ae6:	48 69 d7 ff ff 07 00 	imul   $0x7ffff,%rdi,%rdx
    6aed:	48 01 d0             	add    %rdx,%rax
    6af0:	31 d2                	xor    %edx,%edx
    6af2:	49 f7 f0             	div    %r8
    6af5:	48 b8 20 f9 00 00 00 	movabs $0xf920,%rax
    6afc:	00 00 00 
    6aff:	48 6b d2 28          	imul   $0x28,%rdx,%rdx
    6b03:	48 01 c2             	add    %rax,%rdx
    6b06:	8b 02                	mov    (%rdx),%eax
    6b08:	48 39 f8             	cmp    %rdi,%rax
    6b0b:	75 13                	jne    0x6b20
    6b0d:	48 39 72 08          	cmp    %rsi,0x8(%rdx)
    6b11:	75 0d                	jne    0x6b20
    6b13:	48 39 4a 10          	cmp    %rcx,0x10(%rdx)
    6b17:	75 07                	jne    0x6b20
    6b19:	c7 42 20 00 00 00 00 	movl   $0x0,0x20(%rdx)
    6b20:	c3                   	ret    
    6b21:	41 57                	push   %r15
    6b23:	41 56                	push   %r14
    6b25:	41 55                	push   %r13
    6b27:	49 89 fd             	mov    %rdi,%r13
    6b2a:	41 54                	push   %r12
    6b2c:	49 89 f4             	mov    %rsi,%r12
    6b2f:	55                   	push   %rbp
    6b30:	48 89 cd             	mov    %rcx,%rbp
    6b33:	53                   	push   %rbx
    6b34:	48 89 d3             	mov    %rdx,%rbx
    6b37:	4c 89 e2             	mov    %r12,%rdx
    6b3a:	48 83 ec 28          	sub    $0x28,%rsp
    6b3e:	48 8b 47 08          	mov    0x8(%rdi),%rax
    6b42:	48 8b 77 20          	mov    0x20(%rdi),%rsi
    6b46:	4c 89 04 24          	mov    %r8,(%rsp)
    6b4a:	8b 78 08             	mov    0x8(%rax),%edi
    6b4d:	48 b8 b4 69 00 00 00 	movabs $0x69b4,%rax
    6b54:	00 00 00 
    6b57:	ff d0                	call   *%rax
    6b59:	48 85 c0             	test   %rax,%rax
    6b5c:	74 36                	je     0x6b94
    6b5e:	48 8d 34 18          	lea    (%rax,%rbx,1),%rsi
    6b62:	48 8b 3c 24          	mov    (%rsp),%rdi
    6b66:	48 89 ea             	mov    %rbp,%rdx
    6b69:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    6b70:	00 00 00 
    6b73:	ff d0                	call   *%rax
    6b75:	49 8b 45 08          	mov    0x8(%r13),%rax
    6b79:	49 8b 75 20          	mov    0x20(%r13),%rsi
    6b7d:	4c 89 e2             	mov    %r12,%rdx
    6b80:	8b 78 08             	mov    0x8(%rax),%edi
    6b83:	48 b8 ca 6a 00 00 00 	movabs $0x6aca,%rax
    6b8a:	00 00 00 
    6b8d:	ff d0                	call   *%rax
    6b8f:	e9 ee 01 00 00       	jmp    0x6d82
    6b94:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    6b9b:	00 00 00 
    6b9e:	bf 00 80 00 00       	mov    $0x8000,%edi
    6ba3:	ff d0                	call   *%rax
    6ba5:	49 89 c7             	mov    %rax,%r15
    6ba8:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    6baf:	00 00 
    6bb1:	4d 85 ff             	test   %r15,%r15
    6bb4:	0f 84 c4 01 00 00    	je     0x6d7e
    6bba:	49 8b 45 10          	mov    0x10(%r13),%rax
    6bbe:	41 8b 55 18          	mov    0x18(%r13),%edx
    6bc2:	49 be 12 5c 00 00 00 	movabs $0x5c12,%r14
    6bc9:	00 00 00 
    6bcc:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
    6bd0:	8d 72 f7             	lea    -0x9(%rdx),%esi
    6bd3:	74 0f                	je     0x6be4
    6bd5:	89 f1                	mov    %esi,%ecx
    6bd7:	49 8d 7c 24 40       	lea    0x40(%r12),%rdi
    6bdc:	48 d3 e0             	shl    %cl,%rax
    6bdf:	48 39 c7             	cmp    %rax,%rdi
    6be2:	73 63                	jae    0x6c47
    6be4:	b9 0f 00 00 00       	mov    $0xf,%ecx
    6be9:	4c 89 e0             	mov    %r12,%rax
    6bec:	4c 89 ef             	mov    %r13,%rdi
    6bef:	29 d1                	sub    %edx,%ecx
    6bf1:	ba 01 00 00 00       	mov    $0x1,%edx
    6bf6:	d3 e2                	shl    %cl,%edx
    6bf8:	89 f1                	mov    %esi,%ecx
    6bfa:	48 d3 e8             	shr    %cl,%rax
    6bfd:	4c 89 f9             	mov    %r15,%rcx
    6c00:	48 89 c6             	mov    %rax,%rsi
    6c03:	49 8b 45 08          	mov    0x8(%r13),%rax
    6c07:	ff 50 28             	call   *0x28(%rax)
    6c0a:	85 c0                	test   %eax,%eax
    6c0c:	75 39                	jne    0x6c47
    6c0e:	48 8b 3c 24          	mov    (%rsp),%rdi
    6c12:	49 8d 34 1f          	lea    (%r15,%rbx,1),%rsi
    6c16:	48 89 ea             	mov    %rbp,%rdx
    6c19:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    6c20:	00 00 00 
    6c23:	ff d0                	call   *%rax
    6c25:	49 8b 45 08          	mov    0x8(%r13),%rax
    6c29:	49 8b 75 20          	mov    0x20(%r13),%rsi
    6c2d:	4c 89 f9             	mov    %r15,%rcx
    6c30:	4c 89 e2             	mov    %r12,%rdx
    6c33:	8b 78 08             	mov    0x8(%rax),%edi
    6c36:	48 b8 12 6a 00 00 00 	movabs $0x6a12,%rax
    6c3d:	00 00 00 
    6c40:	ff d0                	call   *%rax
    6c42:	e9 2f 01 00 00       	jmp    0x6d76
    6c47:	4c 89 ff             	mov    %r15,%rdi
    6c4a:	41 ff d6             	call   *%r14
    6c4d:	41 8b 7d 18          	mov    0x18(%r13),%edi
    6c51:	ba 01 00 00 00       	mov    $0x1,%edx
    6c56:	49 89 d8             	mov    %rbx,%r8
    6c59:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    6c60:	00 00 00 
    6c63:	48 89 d6             	mov    %rdx,%rsi
    6c66:	41 81 e0 ff 01 00 00 	and    $0x1ff,%r8d
    6c6d:	8d 4f f7             	lea    -0x9(%rdi),%ecx
    6c70:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    6c76:	48 89 d8             	mov    %rbx,%rax
    6c79:	48 d3 e6             	shl    %cl,%rsi
    6c7c:	48 c1 e8 09          	shr    $0x9,%rax
    6c80:	89 f9                	mov    %edi,%ecx
    6c82:	4c 01 e0             	add    %r12,%rax
    6c85:	48 f7 de             	neg    %rsi
    6c88:	48 21 c6             	and    %rax,%rsi
    6c8b:	48 29 f0             	sub    %rsi,%rax
    6c8e:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    6c93:	48 c1 e0 09          	shl    $0x9,%rax
    6c97:	4c 01 c0             	add    %r8,%rax
    6c9a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    6c9f:	48 89 d0             	mov    %rdx,%rax
    6ca2:	48 d3 e0             	shl    %cl,%rax
    6ca5:	48 8d 54 05 ff       	lea    -0x1(%rbp,%rax,1),%rdx
    6caa:	48 03 54 24 08       	add    0x8(%rsp),%rdx
    6caf:	48 d3 ea             	shr    %cl,%rdx
    6cb2:	89 d0                	mov    %edx,%eax
    6cb4:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    6cb9:	d3 e0                	shl    %cl,%eax
    6cbb:	48 89 c7             	mov    %rax,%rdi
    6cbe:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    6cc5:	00 00 00 
    6cc8:	ff d0                	call   *%rax
    6cca:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    6ccf:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    6cd4:	48 85 c0             	test   %rax,%rax
    6cd7:	49 89 c7             	mov    %rax,%r15
    6cda:	74 71                	je     0x6d4d
    6cdc:	41 8b 45 18          	mov    0x18(%r13),%eax
    6ce0:	89 d2                	mov    %edx,%edx
    6ce2:	4c 89 ef             	mov    %r13,%rdi
    6ce5:	8d 48 f7             	lea    -0x9(%rax),%ecx
    6ce8:	49 8b 45 08          	mov    0x8(%r13),%rax
    6cec:	48 d3 ee             	shr    %cl,%rsi
    6cef:	4c 89 f9             	mov    %r15,%rcx
    6cf2:	ff 50 28             	call   *0x28(%rax)
    6cf5:	85 c0                	test   %eax,%eax
    6cf7:	74 62                	je     0x6d5b
    6cf9:	48 b8 c4 86 00 00 00 	movabs $0x86c4,%rax
    6d00:	00 00 00 
    6d03:	ff d0                	call   *%rax
    6d05:	4d 8b 45 00          	mov    0x0(%r13),%r8
    6d09:	be 80 01 00 00       	mov    $0x180,%esi
    6d0e:	31 c0                	xor    %eax,%eax
    6d10:	48 bf 7f ce 00 00 00 	movabs $0xce7f,%rdi
    6d17:	00 00 00 
    6d1a:	48 b9 6a ce 00 00 00 	movabs $0xce6a,%rcx
    6d21:	00 00 00 
    6d24:	48 ba 7a ce 00 00 00 	movabs $0xce7a,%rdx
    6d2b:	00 00 00 
    6d2e:	49 ba b7 a6 00 00 00 	movabs $0xa6b7,%r10
    6d35:	00 00 00 
    6d38:	41 ff d2             	call   *%r10
    6d3b:	48 b8 3a 87 00 00 00 	movabs $0x873a,%rax
    6d42:	00 00 00 
    6d45:	ff d0                	call   *%rax
    6d47:	4c 89 ff             	mov    %r15,%rdi
    6d4a:	41 ff d6             	call   *%r14
    6d4d:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    6d54:	00 00 00 
    6d57:	8b 00                	mov    (%rax),%eax
    6d59:	eb 23                	jmp    0x6d7e
    6d5b:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    6d60:	48 8b 3c 24          	mov    (%rsp),%rdi
    6d64:	48 89 ea             	mov    %rbp,%rdx
    6d67:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    6d6e:	00 00 00 
    6d71:	4c 01 fe             	add    %r15,%rsi
    6d74:	ff d0                	call   *%rax
    6d76:	4c 89 ff             	mov    %r15,%rdi
    6d79:	41 ff d6             	call   *%r14
    6d7c:	eb 04                	jmp    0x6d82
    6d7e:	85 c0                	test   %eax,%eax
    6d80:	75 26                	jne    0x6da8
    6d82:	4d 8b 45 30          	mov    0x30(%r13),%r8
    6d86:	31 c0                	xor    %eax,%eax
    6d88:	4d 85 c0             	test   %r8,%r8
    6d8b:	74 1b                	je     0x6da8
    6d8d:	89 de                	mov    %ebx,%esi
    6d8f:	48 c1 eb 09          	shr    $0x9,%rbx
    6d93:	49 8b 4d 38          	mov    0x38(%r13),%rcx
    6d97:	89 ea                	mov    %ebp,%edx
    6d99:	81 e6 ff 01 00 00    	and    $0x1ff,%esi
    6d9f:	4a 8d 3c 23          	lea    (%rbx,%r12,1),%rdi
    6da3:	41 ff d0             	call   *%r8
    6da6:	31 c0                	xor    %eax,%eax
    6da8:	48 83 c4 28          	add    $0x28,%rsp
    6dac:	5b                   	pop    %rbx
    6dad:	5d                   	pop    %rbp
    6dae:	41 5c                	pop    %r12
    6db0:	41 5d                	pop    %r13
    6db2:	41 5e                	pop    %r14
    6db4:	41 5f                	pop    %r15
    6db6:	c3                   	ret    
    6db7:	41 54                	push   %r12
    6db9:	49 bc 12 5c 00 00 00 	movabs $0x5c12,%r12
    6dc0:	00 00 00 
    6dc3:	55                   	push   %rbp
    6dc4:	53                   	push   %rbx
    6dc5:	48 bb 20 f9 00 00 00 	movabs $0xf920,%rbx
    6dcc:	00 00 00 
    6dcf:	48 8d ab 88 9f 00 00 	lea    0x9f88(%rbx),%rbp
    6dd6:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
    6dda:	48 85 ff             	test   %rdi,%rdi
    6ddd:	74 11                	je     0x6df0
    6ddf:	83 7b 20 00          	cmpl   $0x0,0x20(%rbx)
    6de3:	75 0b                	jne    0x6df0
    6de5:	41 ff d4             	call   *%r12
    6de8:	48 c7 43 18 00 00 00 	movq   $0x0,0x18(%rbx)
    6def:	00 
    6df0:	48 83 c3 28          	add    $0x28,%rbx
    6df4:	48 39 eb             	cmp    %rbp,%rbx
    6df7:	75 dd                	jne    0x6dd6
    6df9:	5b                   	pop    %rbx
    6dfa:	5d                   	pop    %rbp
    6dfb:	41 5c                	pop    %r12
    6dfd:	c3                   	ret    
    6dfe:	48 b8 00 f9 00 00 00 	movabs $0xf900,%rax
    6e05:	00 00 00 
    6e08:	48 8b 10             	mov    (%rax),%rdx
    6e0b:	48 89 38             	mov    %rdi,(%rax)
    6e0e:	48 89 57 38          	mov    %rdx,0x38(%rdi)
    6e12:	c3                   	ret    
    6e13:	48 ba 00 f9 00 00 00 	movabs $0xf900,%rdx
    6e1a:	00 00 00 
    6e1d:	48 8b 02             	mov    (%rdx),%rax
    6e20:	48 85 c0             	test   %rax,%rax
    6e23:	74 16                	je     0x6e3b
    6e25:	48 8b 48 38          	mov    0x38(%rax),%rcx
    6e29:	48 39 f8             	cmp    %rdi,%rax
    6e2c:	75 04                	jne    0x6e32
    6e2e:	48 89 0a             	mov    %rcx,(%rdx)
    6e31:	c3                   	ret    
    6e32:	48 8d 50 38          	lea    0x38(%rax),%rdx
    6e36:	48 89 c8             	mov    %rcx,%rax
    6e39:	eb e5                	jmp    0x6e20
    6e3b:	c3                   	ret    
    6e3c:	41 54                	push   %r12
    6e3e:	31 c0                	xor    %eax,%eax
    6e40:	48 b9 8b ce 00 00 00 	movabs $0xce8b,%rcx
    6e47:	00 00 00 
    6e4a:	48 ba 7a ce 00 00 00 	movabs $0xce7a,%rdx
    6e51:	00 00 00 
    6e54:	49 b9 b7 a6 00 00 00 	movabs $0xa6b7,%r9
    6e5b:	00 00 00 
    6e5e:	55                   	push   %rbp
    6e5f:	48 89 fd             	mov    %rdi,%rbp
    6e62:	be 27 01 00 00       	mov    $0x127,%esi
    6e67:	53                   	push   %rbx
    6e68:	4c 8b 07             	mov    (%rdi),%r8
    6e6b:	48 bf 7f ce 00 00 00 	movabs $0xce7f,%rdi
    6e72:	00 00 00 
    6e75:	41 ff d1             	call   *%r9
    6e78:	48 8b 45 08          	mov    0x8(%rbp),%rax
    6e7c:	48 85 c0             	test   %rax,%rax
    6e7f:	74 0e                	je     0x6e8f
    6e81:	48 8b 40 20          	mov    0x20(%rax),%rax
    6e85:	48 85 c0             	test   %rax,%rax
    6e88:	74 05                	je     0x6e8f
    6e8a:	48 89 ef             	mov    %rbp,%rdi
    6e8d:	ff d0                	call   *%rax
    6e8f:	48 b8 22 5f 00 00 00 	movabs $0x5f22,%rax
    6e96:	00 00 00 
    6e99:	48 bb 12 5c 00 00 00 	movabs $0x5c12,%rbx
    6ea0:	00 00 00 
    6ea3:	ff d0                	call   *%rax
    6ea5:	48 a3 a8 98 01 00 00 	movabs %rax,0x198a8
    6eac:	00 00 00 
    6eaf:	48 8b 7d 28          	mov    0x28(%rbp),%rdi
    6eb3:	48 85 ff             	test   %rdi,%rdi
    6eb6:	74 0c                	je     0x6ec4
    6eb8:	4c 8b 67 28          	mov    0x28(%rdi),%r12
    6ebc:	ff d3                	call   *%rbx
    6ebe:	4c 89 65 28          	mov    %r12,0x28(%rbp)
    6ec2:	eb eb                	jmp    0x6eaf
    6ec4:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    6ec8:	ff d3                	call   *%rbx
    6eca:	48 89 ef             	mov    %rbp,%rdi
    6ecd:	48 89 d8             	mov    %rbx,%rax
    6ed0:	5b                   	pop    %rbx
    6ed1:	5d                   	pop    %rbp
    6ed2:	41 5c                	pop    %r12
    6ed4:	ff e0                	jmp    *%rax
    6ed6:	41 57                	push   %r15
    6ed8:	49 89 f8             	mov    %rdi,%r8
    6edb:	31 c0                	xor    %eax,%eax
    6edd:	be c4 00 00 00       	mov    $0xc4,%esi
    6ee2:	49 bf 7f ce 00 00 00 	movabs $0xce7f,%r15
    6ee9:	00 00 00 
    6eec:	41 56                	push   %r14
    6eee:	48 b9 9a ce 00 00 00 	movabs $0xce9a,%rcx
    6ef5:	00 00 00 
    6ef8:	48 ba 7a ce 00 00 00 	movabs $0xce7a,%rdx
    6eff:	00 00 00 
    6f02:	41 55                	push   %r13
    6f04:	41 54                	push   %r12
    6f06:	55                   	push   %rbp
    6f07:	48 bd b7 a6 00 00 00 	movabs $0xa6b7,%rbp
    6f0e:	00 00 00 
    6f11:	53                   	push   %rbx
    6f12:	48 89 fb             	mov    %rdi,%rbx
    6f15:	4c 89 ff             	mov    %r15,%rdi
    6f18:	48 83 ec 18          	sub    $0x18,%rsp
    6f1c:	ff d5                	call   *%rbp
    6f1e:	bf 48 00 00 00       	mov    $0x48,%edi
    6f23:	48 b8 d4 5b 00 00 00 	movabs $0x5bd4,%rax
    6f2a:	00 00 00 
    6f2d:	ff d0                	call   *%rax
    6f2f:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
    6f34:	48 85 c0             	test   %rax,%rax
    6f37:	49 89 c4             	mov    %rax,%r12
    6f3a:	0f 84 41 02 00 00    	je     0x7181
    6f40:	48 b8 09 00 00 00 20 	movabs $0x2000000009,%rax
    6f47:	00 00 00 
    6f4a:	49 89 de             	mov    %rbx,%r14
    6f4d:	49 89 44 24 18       	mov    %rax,0x18(%r12)
    6f52:	41 8a 06             	mov    (%r14),%al
    6f55:	49 8d 56 01          	lea    0x1(%r14),%rdx
    6f59:	84 c0                	test   %al,%al
    6f5b:	74 68                	je     0x6fc5
    6f5d:	3c 5c                	cmp    $0x5c,%al
    6f5f:	75 0d                	jne    0x6f6e
    6f61:	41 80 7e 01 2c       	cmpb   $0x2c,0x1(%r14)
    6f66:	75 58                	jne    0x6fc0
    6f68:	49 8d 56 02          	lea    0x2(%r14),%rdx
    6f6c:	eb 52                	jmp    0x6fc0
    6f6e:	3c 2c                	cmp    $0x2c,%al
    6f70:	75 4e                	jne    0x6fc0
    6f72:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    6f79:	00 00 00 
    6f7c:	4d 89 f5             	mov    %r14,%r13
    6f7f:	49 29 dd             	sub    %rbx,%r13
    6f82:	49 8d 7d 01          	lea    0x1(%r13),%rdi
    6f86:	ff d0                	call   *%rax
    6f88:	48 89 c5             	mov    %rax,%rbp
    6f8b:	48 85 c0             	test   %rax,%rax
    6f8e:	0f 84 dc 00 00 00    	je     0x7070
    6f94:	48 89 c7             	mov    %rax,%rdi
    6f97:	4c 89 ea             	mov    %r13,%rdx
    6f9a:	48 89 de             	mov    %rbx,%rsi
    6f9d:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    6fa4:	00 00 00 
    6fa7:	ff d0                	call   *%rax
    6fa9:	42 c6 44 2d 00 00    	movb   $0x0,0x0(%rbp,%r13,1)
    6faf:	48 89 ef             	mov    %rbp,%rdi
    6fb2:	48 b8 48 9a 00 00 00 	movabs $0x9a48,%rax
    6fb9:	00 00 00 
    6fbc:	ff d0                	call   *%rax
    6fbe:	eb 1a                	jmp    0x6fda
    6fc0:	49 89 d6             	mov    %rdx,%r14
    6fc3:	eb 8d                	jmp    0x6f52
    6fc5:	48 89 df             	mov    %rbx,%rdi
    6fc8:	48 89 dd             	mov    %rbx,%rbp
    6fcb:	45 31 f6             	xor    %r14d,%r14d
    6fce:	48 b8 48 9a 00 00 00 	movabs $0x9a48,%rax
    6fd5:	00 00 00 
    6fd8:	ff d0                	call   *%rax
    6fda:	49 89 04 24          	mov    %rax,(%r12)
    6fde:	48 85 c0             	test   %rax,%rax
    6fe1:	74 74                	je     0x7057
    6fe3:	48 b8 00 f9 00 00 00 	movabs $0xf900,%rax
    6fea:	00 00 00 
    6fed:	4c 8b 28             	mov    (%rax),%r13
    6ff0:	4d 85 ed             	test   %r13,%r13
    6ff3:	0f 84 e1 00 00 00    	je     0x70da
    6ff9:	4c 89 e6             	mov    %r12,%rsi
    6ffc:	48 89 ef             	mov    %rbp,%rdi
    6fff:	41 ff 55 18          	call   *0x18(%r13)
    7003:	85 c0                	test   %eax,%eax
    7005:	74 1b                	je     0x7022
    7007:	48 ba 80 aa 01 00 00 	movabs $0x1aa80,%rdx
    700e:	00 00 00 
    7011:	83 3a 0c             	cmpl   $0xc,(%rdx)
    7014:	75 41                	jne    0x7057
    7016:	c7 02 00 00 00 00    	movl   $0x0,(%rdx)
    701c:	4d 8b 6d 38          	mov    0x38(%r13),%r13
    7020:	eb ce                	jmp    0x6ff0
    7022:	41 8b 4c 24 18       	mov    0x18(%r12),%ecx
    7027:	8d 41 f7             	lea    -0x9(%rcx),%eax
    702a:	83 f8 06             	cmp    $0x6,%eax
    702d:	0f 86 cc 00 00 00    	jbe    0x70ff
    7033:	ba 01 00 00 00       	mov    $0x1,%edx
    7038:	bf 18 00 00 00       	mov    $0x18,%edi
    703d:	31 c0                	xor    %eax,%eax
    703f:	48 be ab ce 00 00 00 	movabs $0xceab,%rsi
    7046:	00 00 00 
    7049:	d3 e2                	shl    %cl,%edx
    704b:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    7052:	00 00 00 
    7055:	ff d1                	call   *%rcx
    7057:	48 85 ed             	test   %rbp,%rbp
    705a:	74 14                	je     0x7070
    705c:	48 39 dd             	cmp    %rbx,%rbp
    705f:	74 0f                	je     0x7070
    7061:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    7068:	00 00 00 
    706b:	48 89 ef             	mov    %rbp,%rdi
    706e:	ff d0                	call   *%rax
    7070:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    7077:	00 00 00 
    707a:	83 38 00             	cmpl   $0x0,(%rax)
    707d:	0f 84 fe 00 00 00    	je     0x7181
    7083:	48 b8 c4 86 00 00 00 	movabs $0x86c4,%rax
    708a:	00 00 00 
    708d:	ff d0                	call   *%rax
    708f:	49 89 d8             	mov    %rbx,%r8
    7092:	be 19 01 00 00       	mov    $0x119,%esi
    7097:	4c 89 ff             	mov    %r15,%rdi
    709a:	48 b9 eb ce 00 00 00 	movabs $0xceeb,%rcx
    70a1:	00 00 00 
    70a4:	31 c0                	xor    %eax,%eax
    70a6:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    70ab:	48 ba 7a ce 00 00 00 	movabs $0xce7a,%rdx
    70b2:	00 00 00 
    70b5:	ff d3                	call   *%rbx
    70b7:	48 b8 3a 87 00 00 00 	movabs $0x873a,%rax
    70be:	00 00 00 
    70c1:	ff d0                	call   *%rax
    70c3:	4c 89 e7             	mov    %r12,%rdi
    70c6:	45 31 e4             	xor    %r12d,%r12d
    70c9:	48 b8 3c 6e 00 00 00 	movabs $0x6e3c,%rax
    70d0:	00 00 00 
    70d3:	ff d0                	call   *%rax
    70d5:	e9 a7 00 00 00       	jmp    0x7181
    70da:	48 89 da             	mov    %rbx,%rdx
    70dd:	bf 0c 00 00 00       	mov    $0xc,%edi
    70e2:	31 c0                	xor    %eax,%eax
    70e4:	48 be 01 cf 00 00 00 	movabs $0xcf01,%rsi
    70eb:	00 00 00 
    70ee:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    70f5:	00 00 00 
    70f8:	ff d1                	call   *%rcx
    70fa:	e9 58 ff ff ff       	jmp    0x7057
    70ff:	4d 89 6c 24 08       	mov    %r13,0x8(%r12)
    7104:	4d 85 f6             	test   %r14,%r14
    7107:	74 3d                	je     0x7146
    7109:	49 8d 76 01          	lea    0x1(%r14),%rsi
    710d:	4c 89 e7             	mov    %r12,%rdi
    7110:	48 b8 7e b1 00 00 00 	movabs $0xb17e,%rax
    7117:	00 00 00 
    711a:	ff d0                	call   *%rax
    711c:	49 89 44 24 28       	mov    %rax,0x28(%r12)
    7121:	48 85 c0             	test   %rax,%rax
    7124:	75 20                	jne    0x7146
    7126:	48 be d9 ce 00 00 00 	movabs $0xced9,%rsi
    712d:	00 00 00 
    7130:	bf 0c 00 00 00       	mov    $0xc,%edi
    7135:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    713c:	00 00 00 
    713f:	ff d2                	call   *%rdx
    7141:	e9 11 ff ff ff       	jmp    0x7057
    7146:	48 b8 22 5f 00 00 00 	movabs $0x5f22,%rax
    714d:	00 00 00 
    7150:	49 be a8 98 01 00 00 	movabs $0x198a8,%r14
    7157:	00 00 00 
    715a:	ff d0                	call   *%rax
    715c:	49 89 c5             	mov    %rax,%r13
    715f:	49 8b 06             	mov    (%r14),%rax
    7162:	48 05 d0 07 00 00    	add    $0x7d0,%rax
    7168:	4c 39 e8             	cmp    %r13,%rax
    716b:	73 0c                	jae    0x7179
    716d:	48 b8 b7 6d 00 00 00 	movabs $0x6db7,%rax
    7174:	00 00 00 
    7177:	ff d0                	call   *%rax
    7179:	4d 89 2e             	mov    %r13,(%r14)
    717c:	e9 d6 fe ff ff       	jmp    0x7057
    7181:	48 83 c4 18          	add    $0x18,%rsp
    7185:	4c 89 e0             	mov    %r12,%rax
    7188:	5b                   	pop    %rbx
    7189:	5d                   	pop    %rbp
    718a:	41 5c                	pop    %r12
    718c:	41 5d                	pop    %r13
    718e:	41 5e                	pop    %r14
    7190:	41 5f                	pop    %r15
    7192:	c3                   	ret    
    7193:	41 57                	push   %r15
    7195:	49 89 ff             	mov    %rdi,%r15
    7198:	41 56                	push   %r14
    719a:	41 55                	push   %r13
    719c:	4d 89 c5             	mov    %r8,%r13
    719f:	41 54                	push   %r12
    71a1:	49 89 cc             	mov    %rcx,%r12
    71a4:	55                   	push   %rbp
    71a5:	48 89 d5             	mov    %rdx,%rbp
    71a8:	53                   	push   %rbx
    71a9:	48 89 d3             	mov    %rdx,%rbx
    71ac:	48 c1 ed 09          	shr    $0x9,%rbp
    71b0:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
    71b6:	48 01 f5             	add    %rsi,%rbp
    71b9:	48 8d 94 0b ff 01 00 	lea    0x1ff(%rbx,%rcx,1),%rdx
    71c0:	00 
    71c1:	48 83 ec 18          	sub    $0x18,%rsp
    71c5:	48 8b 47 28          	mov    0x28(%rdi),%rax
    71c9:	48 c1 ea 09          	shr    $0x9,%rdx
    71cd:	48 85 c0             	test   %rax,%rax
    71d0:	74 3d                	je     0x720f
    71d2:	48 8b 48 10          	mov    0x10(%rax),%rcx
    71d6:	48 8b 70 08          	mov    0x8(%rax),%rsi
    71da:	48 39 e9             	cmp    %rbp,%rcx
    71dd:	76 08                	jbe    0x71e7
    71df:	48 29 e9             	sub    %rbp,%rcx
    71e2:	48 39 d1             	cmp    %rdx,%rcx
    71e5:	73 1f                	jae    0x7206
    71e7:	48 be 15 cf 00 00 00 	movabs $0xcf15,%rsi
    71ee:	00 00 00 
    71f1:	bf 0b 00 00 00       	mov    $0xb,%edi
    71f6:	31 c0                	xor    %eax,%eax
    71f8:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    71ff:	00 00 00 
    7202:	ff d2                	call   *%rdx
    7204:	eb 58                	jmp    0x725e
    7206:	48 8b 40 28          	mov    0x28(%rax),%rax
    720a:	48 01 f5             	add    %rsi,%rbp
    720d:	eb be                	jmp    0x71cd
    720f:	41 8b 47 18          	mov    0x18(%r15),%eax
    7213:	8d 48 f7             	lea    -0x9(%rax),%ecx
    7216:	49 8b 47 10          	mov    0x10(%r15),%rax
    721a:	48 d3 e0             	shl    %cl,%rax
    721d:	b9 01 00 00 00       	mov    $0x1,%ecx
    7222:	48 c1 e1 33          	shl    $0x33,%rcx
    7226:	48 39 c8             	cmp    %rcx,%rax
    7229:	48 0f 47 c1          	cmova  %rcx,%rax
    722d:	48 39 e8             	cmp    %rbp,%rax
    7230:	76 0c                	jbe    0x723e
    7232:	48 29 e8             	sub    %rbp,%rax
    7235:	48 39 c2             	cmp    %rax,%rdx
    7238:	0f 86 80 00 00 00    	jbe    0x72be
    723e:	49 8b 17             	mov    (%r15),%rdx
    7241:	bf 0b 00 00 00       	mov    $0xb,%edi
    7246:	31 c0                	xor    %eax,%eax
    7248:	48 be 43 cf 00 00 00 	movabs $0xcf43,%rsi
    724f:	00 00 00 
    7252:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    7259:	00 00 00 
    725c:	ff d1                	call   *%rcx
    725e:	85 c0                	test   %eax,%eax
    7260:	74 5c                	je     0x72be
    7262:	48 b8 c4 86 00 00 00 	movabs $0x86c4,%rax
    7269:	00 00 00 
    726c:	ff d0                	call   *%rax
    726e:	31 c0                	xor    %eax,%eax
    7270:	49 89 e8             	mov    %rbp,%r8
    7273:	be a4 01 00 00       	mov    $0x1a4,%esi
    7278:	49 b9 80 a9 01 00 00 	movabs $0x1a980,%r9
    727f:	00 00 00 
    7282:	48 b9 71 cf 00 00 00 	movabs $0xcf71,%rcx
    7289:	00 00 00 
    728c:	48 ba 7a ce 00 00 00 	movabs $0xce7a,%rdx
    7293:	00 00 00 
    7296:	48 bf 7f ce 00 00 00 	movabs $0xce7f,%rdi
    729d:	00 00 00 
    72a0:	49 ba b7 a6 00 00 00 	movabs $0xa6b7,%r10
    72a7:	00 00 00 
    72aa:	41 ff d2             	call   *%r10
    72ad:	48 b8 3a 87 00 00 00 	movabs $0x873a,%rax
    72b4:	00 00 00 
    72b7:	ff d0                	call   *%rax
    72b9:	e9 ec 01 00 00       	jmp    0x74aa
    72be:	48 89 ea             	mov    %rbp,%rdx
    72c1:	83 e2 3f             	and    $0x3f,%edx
    72c4:	48 89 d0             	mov    %rdx,%rax
    72c7:	48 09 d8             	or     %rbx,%rax
    72ca:	0f 84 47 01 00 00    	je     0x7417
    72d0:	48 c1 e2 09          	shl    $0x9,%rdx
    72d4:	41 be 00 80 00 00    	mov    $0x8000,%r14d
    72da:	48 89 ee             	mov    %rbp,%rsi
    72dd:	4d 89 e8             	mov    %r13,%r8
    72e0:	48 b8 21 6b 00 00 00 	movabs $0x6b21,%rax
    72e7:	00 00 00 
    72ea:	48 01 da             	add    %rbx,%rdx
    72ed:	4c 89 ff             	mov    %r15,%rdi
    72f0:	49 29 d6             	sub    %rdx,%r14
    72f3:	4d 39 e6             	cmp    %r12,%r14
    72f6:	4d 0f 47 f4          	cmova  %r12,%r14
    72fa:	48 83 e6 c0          	and    $0xffffffffffffffc0,%rsi
    72fe:	4c 89 f1             	mov    %r14,%rcx
    7301:	ff d0                	call   *%rax
    7303:	85 c0                	test   %eax,%eax
    7305:	0f 85 db 01 00 00    	jne    0x74e6
    730b:	4d 01 f5             	add    %r14,%r13
    730e:	4d 29 f4             	sub    %r14,%r12
    7311:	49 01 de             	add    %rbx,%r14
    7314:	49 c1 ee 09          	shr    $0x9,%r14
    7318:	4c 01 f5             	add    %r14,%rbp
    731b:	e9 f7 00 00 00       	jmp    0x7417
    7320:	41 8b 47 1c          	mov    0x1c(%r15),%eax
    7324:	48 39 c3             	cmp    %rax,%rbx
    7327:	0f 83 a8 01 00 00    	jae    0x74d5
    732d:	48 89 d8             	mov    %rbx,%rax
    7330:	49 8b 77 20          	mov    0x20(%r15),%rsi
    7334:	48 c1 e0 06          	shl    $0x6,%rax
    7338:	48 01 e8             	add    %rbp,%rax
    733b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    7340:	49 8b 47 08          	mov    0x8(%r15),%rax
    7344:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    7349:	8b 78 08             	mov    0x8(%rax),%edi
    734c:	48 b8 b4 69 00 00 00 	movabs $0x69b4,%rax
    7353:	00 00 00 
    7356:	ff d0                	call   *%rax
    7358:	49 89 c6             	mov    %rax,%r14
    735b:	48 85 c0             	test   %rax,%rax
    735e:	0f 85 ce 00 00 00    	jne    0x7432
    7364:	48 ff c3             	inc    %rbx
    7367:	49 39 da             	cmp    %rbx,%r10
    736a:	77 b4                	ja     0x7320
    736c:	41 8b 47 18          	mov    0x18(%r15),%eax
    7370:	b9 0f 00 00 00       	mov    $0xf,%ecx
    7375:	48 89 da             	mov    %rbx,%rdx
    7378:	48 89 ee             	mov    %rbp,%rsi
    737b:	4c 89 ff             	mov    %r15,%rdi
    737e:	29 c1                	sub    %eax,%ecx
    7380:	48 d3 e2             	shl    %cl,%rdx
    7383:	8d 48 f7             	lea    -0x9(%rax),%ecx
    7386:	49 8b 47 08          	mov    0x8(%r15),%rax
    738a:	48 d3 ee             	shr    %cl,%rsi
    738d:	4c 89 e9             	mov    %r13,%rcx
    7390:	ff 50 28             	call   *0x28(%rax)
    7393:	85 c0                	test   %eax,%eax
    7395:	0f 85 4b 01 00 00    	jne    0x74e6
    739b:	49 b8 12 6a 00 00 00 	movabs $0x6a12,%r8
    73a2:	00 00 00 
    73a5:	31 c0                	xor    %eax,%eax
    73a7:	48 89 c1             	mov    %rax,%rcx
    73aa:	48 89 c2             	mov    %rax,%rdx
    73ad:	49 8b 7f 08          	mov    0x8(%r15),%rdi
    73b1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    73b6:	48 c1 e1 0f          	shl    $0xf,%rcx
    73ba:	48 c1 e2 06          	shl    $0x6,%rdx
    73be:	49 8b 77 20          	mov    0x20(%r15),%rsi
    73c2:	4c 01 e9             	add    %r13,%rcx
    73c5:	48 01 ea             	add    %rbp,%rdx
    73c8:	8b 7f 08             	mov    0x8(%rdi),%edi
    73cb:	41 ff d0             	call   *%r8
    73ce:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    73d3:	49 b8 12 6a 00 00 00 	movabs $0x6a12,%r8
    73da:	00 00 00 
    73dd:	48 ff c0             	inc    %rax
    73e0:	48 39 c3             	cmp    %rax,%rbx
    73e3:	77 c2                	ja     0x73a7
    73e5:	49 8b 47 30          	mov    0x30(%r15),%rax
    73e9:	48 85 c0             	test   %rax,%rax
    73ec:	74 10                	je     0x73fe
    73ee:	89 da                	mov    %ebx,%edx
    73f0:	49 8b 4f 38          	mov    0x38(%r15),%rcx
    73f4:	31 f6                	xor    %esi,%esi
    73f6:	48 89 ef             	mov    %rbp,%rdi
    73f9:	c1 e2 0f             	shl    $0xf,%edx
    73fc:	ff d0                	call   *%rax
    73fe:	48 89 d8             	mov    %rbx,%rax
    7401:	48 c1 e3 0f          	shl    $0xf,%rbx
    7405:	48 c1 e0 06          	shl    $0x6,%rax
    7409:	49 29 dc             	sub    %rbx,%r12
    740c:	49 01 dd             	add    %rbx,%r13
    740f:	48 01 c5             	add    %rax,%rbp
    7412:	4d 85 f6             	test   %r14,%r14
    7415:	75 5e                	jne    0x7475
    7417:	49 81 fc ff 7f 00 00 	cmp    $0x7fff,%r12
    741e:	0f 86 81 00 00 00    	jbe    0x74a5
    7424:	4d 89 e2             	mov    %r12,%r10
    7427:	31 db                	xor    %ebx,%ebx
    7429:	49 c1 ea 0f          	shr    $0xf,%r10
    742d:	e9 ee fe ff ff       	jmp    0x7320
    7432:	48 89 df             	mov    %rbx,%rdi
    7435:	48 89 c6             	mov    %rax,%rsi
    7438:	ba 00 80 00 00       	mov    $0x8000,%edx
    743d:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    7444:	00 00 00 
    7447:	48 c1 e7 0f          	shl    $0xf,%rdi
    744b:	4c 01 ef             	add    %r13,%rdi
    744e:	ff d0                	call   *%rax
    7450:	49 8b 47 08          	mov    0x8(%r15),%rax
    7454:	49 8b 77 20          	mov    0x20(%r15),%rsi
    7458:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    745d:	8b 78 08             	mov    0x8(%rax),%edi
    7460:	48 b8 ca 6a 00 00 00 	movabs $0x6aca,%rax
    7467:	00 00 00 
    746a:	ff d0                	call   *%rax
    746c:	48 85 db             	test   %rbx,%rbx
    746f:	0f 85 f7 fe ff ff    	jne    0x736c
    7475:	49 8b 47 30          	mov    0x30(%r15),%rax
    7479:	48 85 c0             	test   %rax,%rax
    747c:	74 10                	je     0x748e
    747e:	49 8b 4f 38          	mov    0x38(%r15),%rcx
    7482:	ba 00 80 00 00       	mov    $0x8000,%edx
    7487:	31 f6                	xor    %esi,%esi
    7489:	48 89 ef             	mov    %rbp,%rdi
    748c:	ff d0                	call   *%rax
    748e:	48 83 c5 40          	add    $0x40,%rbp
    7492:	49 81 c5 00 80 00 00 	add    $0x8000,%r13
    7499:	49 81 ec 00 80 00 00 	sub    $0x8000,%r12
    74a0:	e9 72 ff ff ff       	jmp    0x7417
    74a5:	4d 85 e4             	test   %r12,%r12
    74a8:	75 0b                	jne    0x74b5
    74aa:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    74b1:	00 00 
    74b3:	eb 31                	jmp    0x74e6
    74b5:	31 d2                	xor    %edx,%edx
    74b7:	4d 89 e8             	mov    %r13,%r8
    74ba:	4c 89 e1             	mov    %r12,%rcx
    74bd:	48 89 ee             	mov    %rbp,%rsi
    74c0:	48 b8 21 6b 00 00 00 	movabs $0x6b21,%rax
    74c7:	00 00 00 
    74ca:	4c 89 ff             	mov    %r15,%rdi
    74cd:	ff d0                	call   *%rax
    74cf:	85 c0                	test   %eax,%eax
    74d1:	74 d7                	je     0x74aa
    74d3:	eb 11                	jmp    0x74e6
    74d5:	48 85 db             	test   %rbx,%rbx
    74d8:	0f 84 39 ff ff ff    	je     0x7417
    74de:	45 31 f6             	xor    %r14d,%r14d
    74e1:	e9 86 fe ff ff       	jmp    0x736c
    74e6:	48 83 c4 18          	add    $0x18,%rsp
    74ea:	5b                   	pop    %rbx
    74eb:	5d                   	pop    %rbp
    74ec:	41 5c                	pop    %r12
    74ee:	41 5d                	pop    %r13
    74f0:	41 5e                	pop    %r14
    74f2:	41 5f                	pop    %r15
    74f4:	c3                   	ret    
    74f5:	48 8b 47 28          	mov    0x28(%rdi),%rax
    74f9:	48 85 c0             	test   %rax,%rax
    74fc:	74 05                	je     0x7503
    74fe:	48 8b 40 10          	mov    0x10(%rax),%rax
    7502:	c3                   	ret    
    7503:	48 8b 47 10          	mov    0x10(%rdi),%rax
    7507:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
    750b:	74 09                	je     0x7516
    750d:	8b 4f 18             	mov    0x18(%rdi),%ecx
    7510:	83 e9 09             	sub    $0x9,%ecx
    7513:	48 d3 e0             	shl    %cl,%rax
    7516:	c3                   	ret    
    7517:	48 b8 c0 98 01 00 00 	movabs $0x198c0,%rax
    751e:	00 00 00 
    7521:	41 54                	push   %r12
    7523:	55                   	push   %rbp
    7524:	48 bd 06 98 00 00 00 	movabs $0x9806,%rbp
    752b:	00 00 00 
    752e:	53                   	push   %rbx
    752f:	4c 8b 20             	mov    (%rax),%r12
    7532:	48 89 fb             	mov    %rdi,%rbx
    7535:	4d 85 e4             	test   %r12,%r12
    7538:	74 14                	je     0x754e
    753a:	49 8b 34 24          	mov    (%r12),%rsi
    753e:	48 89 df             	mov    %rbx,%rdi
    7541:	ff d5                	call   *%rbp
    7543:	85 c0                	test   %eax,%eax
    7545:	74 07                	je     0x754e
    7547:	4d 8b 64 24 50       	mov    0x50(%r12),%r12
    754c:	eb e7                	jmp    0x7535
    754e:	4c 89 e0             	mov    %r12,%rax
    7551:	5b                   	pop    %rbx
    7552:	5d                   	pop    %rbp
    7553:	41 5c                	pop    %r12
    7555:	c3                   	ret    
    7556:	41 57                	push   %r15
    7558:	49 bf 06 98 00 00 00 	movabs $0x9806,%r15
    755f:	00 00 00 
    7562:	41 56                	push   %r14
    7564:	41 55                	push   %r13
    7566:	49 89 f5             	mov    %rsi,%r13
    7569:	41 54                	push   %r12
    756b:	55                   	push   %rbp
    756c:	31 ed                	xor    %ebp,%ebp
    756e:	53                   	push   %rbx
    756f:	48 89 fb             	mov    %rdi,%rbx
    7572:	51                   	push   %rcx
    7573:	0f b7 47 3e          	movzwl 0x3e(%rdi),%eax
    7577:	0f b7 57 3a          	movzwl 0x3a(%rdi),%edx
    757b:	4c 8b 67 28          	mov    0x28(%rdi),%r12
    757f:	0f af c2             	imul   %edx,%eax
    7582:	49 01 fc             	add    %rdi,%r12
    7585:	48 98                	cltq   
    7587:	4e 8b 74 20 18       	mov    0x18(%rax,%r12,1),%r14
    758c:	0f b7 43 3c          	movzwl 0x3c(%rbx),%eax
    7590:	39 e8                	cmp    %ebp,%eax
    7592:	76 1f                	jbe    0x75b3
    7594:	41 8b 3c 24          	mov    (%r12),%edi
    7598:	4c 89 ee             	mov    %r13,%rsi
    759b:	4c 01 f7             	add    %r14,%rdi
    759e:	48 01 df             	add    %rbx,%rdi
    75a1:	41 ff d7             	call   *%r15
    75a4:	85 c0                	test   %eax,%eax
    75a6:	74 0e                	je     0x75b6
    75a8:	0f b7 43 3a          	movzwl 0x3a(%rbx),%eax
    75ac:	ff c5                	inc    %ebp
    75ae:	49 01 c4             	add    %rax,%r12
    75b1:	eb d9                	jmp    0x758c
    75b3:	45 31 e4             	xor    %r12d,%r12d
    75b6:	5a                   	pop    %rdx
    75b7:	4c 89 e0             	mov    %r12,%rax
    75ba:	5b                   	pop    %rbx
    75bb:	5d                   	pop    %rbp
    75bc:	41 5c                	pop    %r12
    75be:	41 5d                	pop    %r13
    75c0:	41 5e                	pop    %r14
    75c2:	41 5f                	pop    %r15
    75c4:	c3                   	ret    
    75c5:	48 89 f8             	mov    %rdi,%rax
    75c8:	48 85 c0             	test   %rax,%rax
    75cb:	74 0f                	je     0x75dc
    75cd:	39 70 18             	cmp    %esi,0x18(%rax)
    75d0:	75 05                	jne    0x75d7
    75d2:	48 8b 40 08          	mov    0x8(%rax),%rax
    75d6:	c3                   	ret    
    75d7:	48 8b 00             	mov    (%rax),%rax
    75da:	eb ec                	jmp    0x75c8
    75dc:	c3                   	ret    
    75dd:	48 b8 17 75 00 00 00 	movabs $0x7517,%rax
    75e4:	00 00 00 
    75e7:	53                   	push   %rbx
    75e8:	48 89 fb             	mov    %rdi,%rbx
    75eb:	48 8b 3f             	mov    (%rdi),%rdi
    75ee:	ff d0                	call   *%rax
    75f0:	48 85 c0             	test   %rax,%rax
    75f3:	74 21                	je     0x7616
    75f5:	48 8b 13             	mov    (%rbx),%rdx
    75f8:	bf 02 00 00 00       	mov    $0x2,%edi
    75fd:	31 c0                	xor    %eax,%eax
    75ff:	5b                   	pop    %rbx
    7600:	48 be 99 cf 00 00 00 	movabs $0xcf99,%rsi
    7607:	00 00 00 
    760a:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    7611:	00 00 00 
    7614:	ff e1                	jmp    *%rcx
    7616:	31 c0                	xor    %eax,%eax
    7618:	5b                   	pop    %rbx
    7619:	c3                   	ret    
    761a:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    7621:	00 00 00 
    7624:	41 56                	push   %r14
    7626:	49 89 f6             	mov    %rsi,%r14
    7629:	41 55                	push   %r13
    762b:	41 89 d5             	mov    %edx,%r13d
    762e:	41 54                	push   %r12
    7630:	49 89 cc             	mov    %rcx,%r12
    7633:	55                   	push   %rbp
    7634:	53                   	push   %rbx
    7635:	48 89 fb             	mov    %rdi,%rbx
    7638:	bf 28 00 00 00       	mov    $0x28,%edi
    763d:	ff d0                	call   *%rax
    763f:	48 85 c0             	test   %rax,%rax
    7642:	74 2f                	je     0x7673
    7644:	48 89 c5             	mov    %rax,%rbp
    7647:	4d 85 e4             	test   %r12,%r12
    764a:	74 32                	je     0x767e
    764c:	48 b8 48 9a 00 00 00 	movabs $0x9a48,%rax
    7653:	00 00 00 
    7656:	48 89 df             	mov    %rbx,%rdi
    7659:	ff d0                	call   *%rax
    765b:	48 89 45 08          	mov    %rax,0x8(%rbp)
    765f:	48 85 c0             	test   %rax,%rax
    7662:	75 1e                	jne    0x7682
    7664:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    766b:	00 00 00 
    766e:	48 89 ef             	mov    %rbp,%rdi
    7671:	ff d0                	call   *%rax
    7673:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    767a:	00 00 
    767c:	eb 50                	jmp    0x76ce
    767e:	48 89 58 08          	mov    %rbx,0x8(%rax)
    7682:	4c 89 75 10          	mov    %r14,0x10(%rbp)
    7686:	31 d2                	xor    %edx,%edx
    7688:	4c 89 65 20          	mov    %r12,0x20(%rbp)
    768c:	44 89 6d 18          	mov    %r13d,0x18(%rbp)
    7690:	0f be 03             	movsbl (%rbx),%eax
    7693:	84 c0                	test   %al,%al
    7695:	74 0d                	je     0x76a4
    7697:	69 d2 3f 00 01 00    	imul   $0x1003f,%edx,%edx
    769d:	48 ff c3             	inc    %rbx
    76a0:	01 c2                	add    %eax,%edx
    76a2:	eb ec                	jmp    0x7690
    76a4:	89 d0                	mov    %edx,%eax
    76a6:	b9 fd 01 00 00       	mov    $0x1fd,%ecx
    76ab:	c1 e8 05             	shr    $0x5,%eax
    76ae:	01 d0                	add    %edx,%eax
    76b0:	31 d2                	xor    %edx,%edx
    76b2:	f7 f1                	div    %ecx
    76b4:	48 b8 e0 98 01 00 00 	movabs $0x198e0,%rax
    76bb:	00 00 00 
    76be:	89 d2                	mov    %edx,%edx
    76c0:	48 8b 0c d0          	mov    (%rax,%rdx,8),%rcx
    76c4:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
    76c8:	48 89 2c d0          	mov    %rbp,(%rax,%rdx,8)
    76cc:	31 c0                	xor    %eax,%eax
    76ce:	5b                   	pop    %rbx
    76cf:	5d                   	pop    %rbp
    76d0:	41 5c                	pop    %r12
    76d2:	41 5d                	pop    %r13
    76d4:	41 5e                	pop    %r14
    76d6:	c3                   	ret    
    76d7:	48 85 ff             	test   %rdi,%rdi
    76da:	74 34                	je     0x7710
    76dc:	41 54                	push   %r12
    76de:	49 bc d7 76 00 00 00 	movabs $0x76d7,%r12
    76e5:	00 00 00 
    76e8:	55                   	push   %rbp
    76e9:	53                   	push   %rbx
    76ea:	48 8b 6f 10          	mov    0x10(%rdi),%rbp
    76ee:	48 89 fb             	mov    %rdi,%rbx
    76f1:	48 85 ed             	test   %rbp,%rbp
    76f4:	74 0d                	je     0x7703
    76f6:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
    76fa:	41 ff d4             	call   *%r12
    76fd:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
    7701:	eb ee                	jmp    0x76f1
    7703:	8b 43 08             	mov    0x8(%rbx),%eax
    7706:	ff c0                	inc    %eax
    7708:	89 43 08             	mov    %eax,0x8(%rbx)
    770b:	5b                   	pop    %rbx
    770c:	5d                   	pop    %rbp
    770d:	41 5c                	pop    %r12
    770f:	c3                   	ret    
    7710:	31 c0                	xor    %eax,%eax
    7712:	c3                   	ret    
    7713:	48 85 ff             	test   %rdi,%rdi
    7716:	74 34                	je     0x774c
    7718:	41 54                	push   %r12
    771a:	49 bc 13 77 00 00 00 	movabs $0x7713,%r12
    7721:	00 00 00 
    7724:	55                   	push   %rbp
    7725:	53                   	push   %rbx
    7726:	48 8b 6f 10          	mov    0x10(%rdi),%rbp
    772a:	48 89 fb             	mov    %rdi,%rbx
    772d:	48 85 ed             	test   %rbp,%rbp
    7730:	74 0d                	je     0x773f
    7732:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
    7736:	41 ff d4             	call   *%r12
    7739:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
    773d:	eb ee                	jmp    0x772d
    773f:	8b 43 08             	mov    0x8(%rbx),%eax
    7742:	ff c8                	dec    %eax
    7744:	89 43 08             	mov    %eax,0x8(%rbx)
    7747:	5b                   	pop    %rbx
    7748:	5d                   	pop    %rbp
    7749:	41 5c                	pop    %r12
    774b:	c3                   	ret    
    774c:	31 c0                	xor    %eax,%eax
    774e:	c3                   	ret    
    774f:	31 c0                	xor    %eax,%eax
    7751:	48 85 ff             	test   %rdi,%rdi
    7754:	74 03                	je     0x7759
    7756:	8b 47 08             	mov    0x8(%rdi),%eax
    7759:	c3                   	ret    
    775a:	83 7f 08 00          	cmpl   $0x0,0x8(%rdi)
    775e:	0f 8f ee 00 00 00    	jg     0x7852
    7764:	41 57                	push   %r15
    7766:	41 56                	push   %r14
    7768:	41 55                	push   %r13
    776a:	41 54                	push   %r12
    776c:	55                   	push   %rbp
    776d:	48 89 fd             	mov    %rdi,%rbp
    7770:	53                   	push   %rbx
    7771:	51                   	push   %rcx
    7772:	48 8b 47 38          	mov    0x38(%rdi),%rax
    7776:	48 85 c0             	test   %rax,%rax
    7779:	74 02                	je     0x777d
    777b:	ff d0                	call   *%rax
    777d:	48 ba c0 98 01 00 00 	movabs $0x198c0,%rdx
    7784:	00 00 00 
    7787:	48 8b 02             	mov    (%rdx),%rax
    778a:	48 85 c0             	test   %rax,%rax
    778d:	74 0c                	je     0x779b
    778f:	48 8b 48 50          	mov    0x50(%rax),%rcx
    7793:	48 39 c5             	cmp    %rax,%rbp
    7796:	75 19                	jne    0x77b1
    7798:	48 89 0a             	mov    %rcx,(%rdx)
    779b:	48 bb e0 98 01 00 00 	movabs $0x198e0,%rbx
    77a2:	00 00 00 
    77a5:	49 bd 12 5c 00 00 00 	movabs $0x5c12,%r13
    77ac:	00 00 00 
    77af:	eb 09                	jmp    0x77ba
    77b1:	48 8d 50 50          	lea    0x50(%rax),%rdx
    77b5:	48 89 c8             	mov    %rcx,%rax
    77b8:	eb d0                	jmp    0x778a
    77ba:	4c 8b 23             	mov    (%rbx),%r12
    77bd:	49 89 de             	mov    %rbx,%r14
    77c0:	4d 85 e4             	test   %r12,%r12
    77c3:	74 26                	je     0x77eb
    77c5:	4d 8b 3c 24          	mov    (%r12),%r15
    77c9:	49 3b 6c 24 20       	cmp    0x20(%r12),%rbp
    77ce:	75 13                	jne    0x77e3
    77d0:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
    77d5:	4d 89 3e             	mov    %r15,(%r14)
    77d8:	41 ff d5             	call   *%r13
    77db:	4c 89 e7             	mov    %r12,%rdi
    77de:	41 ff d5             	call   *%r13
    77e1:	eb 03                	jmp    0x77e6
    77e3:	4d 89 e6             	mov    %r12,%r14
    77e6:	4d 89 fc             	mov    %r15,%r12
    77e9:	eb d5                	jmp    0x77c0
    77eb:	48 b8 c8 a8 01 00 00 	movabs $0x1a8c8,%rax
    77f2:	00 00 00 
    77f5:	48 83 c3 08          	add    $0x8,%rbx
    77f9:	48 39 c3             	cmp    %rax,%rbx
    77fc:	75 bc                	jne    0x77ba
    77fe:	48 bb 12 5c 00 00 00 	movabs $0x5c12,%rbx
    7805:	00 00 00 
    7808:	4c 8b 65 10          	mov    0x10(%rbp),%r12
    780c:	4d 85 e4             	test   %r12,%r12
    780f:	74 1f                	je     0x7830
    7811:	4d 8b 2c 24          	mov    (%r12),%r13
    7815:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
    781a:	48 b8 5a 77 00 00 00 	movabs $0x775a,%rax
    7821:	00 00 00 
    7824:	ff d0                	call   *%rax
    7826:	4c 89 e7             	mov    %r12,%rdi
    7829:	ff d3                	call   *%rbx
    782b:	4d 89 ec             	mov    %r13,%r12
    782e:	eb dc                	jmp    0x780c
    7830:	48 8b 7d 40          	mov    0x40(%rbp),%rdi
    7834:	ff d3                	call   *%rbx
    7836:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    783a:	ff d3                	call   *%rbx
    783c:	48 89 ef             	mov    %rbp,%rdi
    783f:	ff d3                	call   *%rbx
    7841:	5a                   	pop    %rdx
    7842:	b8 01 00 00 00       	mov    $0x1,%eax
    7847:	5b                   	pop    %rbx
    7848:	5d                   	pop    %rbp
    7849:	41 5c                	pop    %r12
    784b:	41 5d                	pop    %r13
    784d:	41 5e                	pop    %r14
    784f:	41 5f                	pop    %r15
    7851:	c3                   	ret    
    7852:	31 c0                	xor    %eax,%eax
    7854:	c3                   	ret    
    7855:	41 57                	push   %r15
    7857:	49 89 f1             	mov    %rsi,%r9
    785a:	49 89 f8             	mov    %rdi,%r8
    785d:	31 c0                	xor    %eax,%eax
    785f:	48 b9 b0 cf 00 00 00 	movabs $0xcfb0,%rcx
    7866:	00 00 00 
    7869:	41 56                	push   %r14
    786b:	48 ba ca cf 00 00 00 	movabs $0xcfca,%rdx
    7872:	00 00 00 
    7875:	41 55                	push   %r13
    7877:	49 bd d2 cf 00 00 00 	movabs $0xcfd2,%r13
    787e:	00 00 00 
    7881:	41 54                	push   %r12
    7883:	49 bc b7 a6 00 00 00 	movabs $0xa6b7,%r12
    788a:	00 00 00 
    788d:	55                   	push   %rbp
    788e:	48 89 f5             	mov    %rsi,%rbp
    7891:	be 62 02 00 00       	mov    $0x262,%esi
    7896:	53                   	push   %rbx
    7897:	48 89 fb             	mov    %rdi,%rbx
    789a:	4c 89 ef             	mov    %r13,%rdi
    789d:	48 83 ec 38          	sub    $0x38,%rsp
    78a1:	41 ff d4             	call   *%r12
    78a4:	48 be dc cf 00 00 00 	movabs $0xcfdc,%rsi
    78ab:	00 00 00 
    78ae:	48 83 fd 3f          	cmp    $0x3f,%rbp
    78b2:	76 1e                	jbe    0x78d2
    78b4:	81 3b 7f 45 4c 46    	cmpl   $0x464c457f,(%rbx)
    78ba:	75 0c                	jne    0x78c8
    78bc:	80 7b 06 01          	cmpb   $0x1,0x6(%rbx)
    78c0:	75 06                	jne    0x78c8
    78c2:	83 7b 14 01          	cmpl   $0x1,0x14(%rbx)
    78c6:	74 1f                	je     0x78e7
    78c8:	48 be fd cf 00 00 00 	movabs $0xcffd,%rsi
    78cf:	00 00 00 
    78d2:	bf 15 00 00 00       	mov    $0x15,%edi
    78d7:	31 c0                	xor    %eax,%eax
    78d9:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    78e0:	00 00 00 
    78e3:	ff d2                	call   *%rdx
    78e5:	eb 0f                	jmp    0x78f6
    78e7:	48 b8 b1 14 00 00 00 	movabs $0x14b1,%rax
    78ee:	00 00 00 
    78f1:	48 89 df             	mov    %rbx,%rdi
    78f4:	ff d0                	call   *%rax
    78f6:	89 44 24 20          	mov    %eax,0x20(%rsp)
    78fa:	83 7c 24 20 00       	cmpl   $0x0,0x20(%rsp)
    78ff:	0f 85 5c 07 00 00    	jne    0x8061
    7905:	66 83 7b 10 01       	cmpw   $0x1,0x10(%rbx)
    790a:	bf 02 00 00 00       	mov    $0x2,%edi
    790f:	48 be 20 d0 00 00 00 	movabs $0xd020,%rsi
    7916:	00 00 00 
    7919:	75 23                	jne    0x793e
    791b:	0f b7 43 3a          	movzwl 0x3a(%rbx),%eax
    791f:	0f b7 53 3c          	movzwl 0x3c(%rbx),%edx
    7923:	0f af c2             	imul   %edx,%eax
    7926:	48 03 43 28          	add    0x28(%rbx),%rax
    792a:	48 39 c5             	cmp    %rax,%rbp
    792d:	73 22                	jae    0x7951
    792f:	48 be 47 d0 00 00 00 	movabs $0xd047,%rsi
    7936:	00 00 00 
    7939:	bf 15 00 00 00       	mov    $0x15,%edi
    793e:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    7945:	00 00 00 
    7948:	31 c0                	xor    %eax,%eax
    794a:	ff d2                	call   *%rdx
    794c:	e9 10 07 00 00       	jmp    0x8061
    7951:	48 b8 d4 5b 00 00 00 	movabs $0x5bd4,%rax
    7958:	00 00 00 
    795b:	bf 58 00 00 00       	mov    $0x58,%edi
    7960:	ff d0                	call   *%rax
    7962:	48 89 c5             	mov    %rax,%rbp
    7965:	48 85 c0             	test   %rax,%rax
    7968:	0f 84 f3 06 00 00    	je     0x8061
    796e:	49 89 c0             	mov    %rax,%r8
    7971:	be 7b 02 00 00       	mov    $0x27b,%esi
    7976:	4c 89 ef             	mov    %r13,%rdi
    7979:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
    7980:	48 b9 61 d0 00 00 00 	movabs $0xd061,%rcx
    7987:	00 00 00 
    798a:	31 c0                	xor    %eax,%eax
    798c:	48 ba ca cf 00 00 00 	movabs $0xcfca,%rdx
    7993:	00 00 00 
    7996:	41 ff d4             	call   *%r12
    7999:	48 89 df             	mov    %rbx,%rdi
    799c:	48 be 73 d0 00 00 00 	movabs $0xd073,%rsi
    79a3:	00 00 00 
    79a6:	49 bc 56 75 00 00 00 	movabs $0x7556,%r12
    79ad:	00 00 00 
    79b0:	41 ff d4             	call   *%r12
    79b3:	49 89 c6             	mov    %rax,%r14
    79b6:	48 85 c0             	test   %rax,%rax
    79b9:	75 27                	jne    0x79e2
    79bb:	31 c0                	xor    %eax,%eax
    79bd:	bf 02 00 00 00       	mov    $0x2,%edi
    79c2:	48 be 83 d0 00 00 00 	movabs $0xd083,%rsi
    79c9:	00 00 00 
    79cc:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    79d3:	00 00 00 
    79d6:	ff d2                	call   *%rdx
    79d8:	85 c0                	test   %eax,%eax
    79da:	0f 85 d8 05 00 00    	jne    0x7fb8
    79e0:	eb 22                	jmp    0x7a04
    79e2:	48 be 98 d0 00 00 00 	movabs $0xd098,%rsi
    79e9:	00 00 00 
    79ec:	48 8b 78 18          	mov    0x18(%rax),%rdi
    79f0:	49 bf 06 98 00 00 00 	movabs $0x9806,%r15
    79f7:	00 00 00 
    79fa:	48 01 df             	add    %rbx,%rdi
    79fd:	41 ff d7             	call   *%r15
    7a00:	85 c0                	test   %eax,%eax
    7a02:	75 34                	jne    0x7a38
    7a04:	48 be a6 d0 00 00 00 	movabs $0xd0a6,%rsi
    7a0b:	00 00 00 
    7a0e:	48 89 df             	mov    %rbx,%rdi
    7a11:	41 ff d4             	call   *%r12
    7a14:	48 85 c0             	test   %rax,%rax
    7a17:	75 55                	jne    0x7a6e
    7a19:	48 be cd d0 00 00 00 	movabs $0xd0cd,%rsi
    7a20:	00 00 00 
    7a23:	bf 02 00 00 00       	mov    $0x2,%edi
    7a28:	31 c0                	xor    %eax,%eax
    7a2a:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    7a31:	00 00 00 
    7a34:	ff d2                	call   *%rdx
    7a36:	eb 72                	jmp    0x7aaa
    7a38:	48 be af d0 00 00 00 	movabs $0xd0af,%rsi
    7a3f:	00 00 00 
    7a42:	49 8b 7e 18          	mov    0x18(%r14),%rdi
    7a46:	48 01 df             	add    %rbx,%rdi
    7a49:	41 ff d7             	call   *%r15
    7a4c:	85 c0                	test   %eax,%eax
    7a4e:	74 b4                	je     0x7a04
    7a50:	48 be be d0 00 00 00 	movabs $0xd0be,%rsi
    7a57:	00 00 00 
    7a5a:	49 8b 7e 18          	mov    0x18(%r14),%rdi
    7a5e:	48 01 df             	add    %rbx,%rdi
    7a61:	41 ff d7             	call   *%r15
    7a64:	85 c0                	test   %eax,%eax
    7a66:	0f 85 4f ff ff ff    	jne    0x79bb
    7a6c:	eb 96                	jmp    0x7a04
    7a6e:	48 8b 78 18          	mov    0x18(%rax),%rdi
    7a72:	48 b8 48 9a 00 00 00 	movabs $0x9a48,%rax
    7a79:	00 00 00 
    7a7c:	48 01 df             	add    %rbx,%rdi
    7a7f:	ff d0                	call   *%rax
    7a81:	48 89 45 00          	mov    %rax,0x0(%rbp)
    7a85:	48 85 c0             	test   %rax,%rax
    7a88:	74 17                	je     0x7aa1
    7a8a:	48 be e2 d0 00 00 00 	movabs $0xd0e2,%rsi
    7a91:	00 00 00 
    7a94:	48 89 df             	mov    %rbx,%rdi
    7a97:	41 ff d4             	call   *%r12
    7a9a:	48 85 c0             	test   %rax,%rax
    7a9d:	75 15                	jne    0x7ab4
    7a9f:	eb 5c                	jmp    0x7afd
    7aa1:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    7aa8:	00 00 
    7aaa:	85 c0                	test   %eax,%eax
    7aac:	0f 85 06 05 00 00    	jne    0x7fb8
    7ab2:	eb d6                	jmp    0x7a8a
    7ab4:	4c 8b 78 18          	mov    0x18(%rax),%r15
    7ab8:	48 8b 48 20          	mov    0x20(%rax),%rcx
    7abc:	49 be 8a 81 00 00 00 	movabs $0x818a,%r14
    7ac3:	00 00 00 
    7ac6:	49 01 df             	add    %rbx,%r15
    7ac9:	4c 01 f9             	add    %r15,%rcx
    7acc:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    7ad1:	4c 39 7c 24 08       	cmp    %r15,0x8(%rsp)
    7ad6:	76 25                	jbe    0x7afd
    7ad8:	41 80 3f 00          	cmpb   $0x0,(%r15)
    7adc:	74 1f                	je     0x7afd
    7ade:	4c 89 ff             	mov    %r15,%rdi
    7ae1:	41 ff d6             	call   *%r14
    7ae4:	49 89 c4             	mov    %rax,%r12
    7ae7:	48 85 c0             	test   %rax,%rax
    7aea:	75 28                	jne    0x7b14
    7aec:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    7af3:	00 00 
    7af5:	85 c0                	test   %eax,%eax
    7af7:	0f 85 bb 04 00 00    	jne    0x7fb8
    7afd:	48 8b 43 28          	mov    0x28(%rbx),%rax
    7b01:	0f b7 73 3c          	movzwl 0x3c(%rbx),%esi
    7b05:	31 c9                	xor    %ecx,%ecx
    7b07:	bf 01 00 00 00       	mov    $0x1,%edi
    7b0c:	45 31 f6             	xor    %r14d,%r14d
    7b0f:	48 01 d8             	add    %rbx,%rax
    7b12:	eb 4d                	jmp    0x7b61
    7b14:	48 89 c7             	mov    %rax,%rdi
    7b17:	48 b8 d7 76 00 00 00 	movabs $0x76d7,%rax
    7b1e:	00 00 00 
    7b21:	ff d0                	call   *%rax
    7b23:	bf 10 00 00 00       	mov    $0x10,%edi
    7b28:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    7b2f:	00 00 00 
    7b32:	ff d0                	call   *%rax
    7b34:	48 85 c0             	test   %rax,%rax
    7b37:	74 b3                	je     0x7aec
    7b39:	48 8b 55 10          	mov    0x10(%rbp),%rdx
    7b3d:	4c 89 60 08          	mov    %r12,0x8(%rax)
    7b41:	4c 89 ff             	mov    %r15,%rdi
    7b44:	48 89 10             	mov    %rdx,(%rax)
    7b47:	48 89 45 10          	mov    %rax,0x10(%rbp)
    7b4b:	48 b8 37 9a 00 00 00 	movabs $0x9a37,%rax
    7b52:	00 00 00 
    7b55:	ff d0                	call   *%rax
    7b57:	4d 8d 7c 07 01       	lea    0x1(%r15,%rax,1),%r15
    7b5c:	e9 70 ff ff ff       	jmp    0x7ad1
    7b61:	39 f1                	cmp    %esi,%ecx
    7b63:	73 28                	jae    0x7b8d
    7b65:	48 8b 50 30          	mov    0x30(%rax),%rdx
    7b69:	49 89 d0             	mov    %rdx,%r8
    7b6c:	4e 8d 74 32 ff       	lea    -0x1(%rdx,%r14,1),%r14
    7b71:	49 f7 d8             	neg    %r8
    7b74:	4d 21 c6             	and    %r8,%r14
    7b77:	4c 03 70 20          	add    0x20(%rax),%r14
    7b7b:	48 39 d7             	cmp    %rdx,%rdi
    7b7e:	48 0f 42 fa          	cmovb  %rdx,%rdi
    7b82:	0f b7 53 3a          	movzwl 0x3a(%rbx),%edx
    7b86:	ff c1                	inc    %ecx
    7b88:	48 01 d0             	add    %rdx,%rax
    7b8b:	eb d4                	jmp    0x7b61
    7b8d:	48 b8 62 59 00 00 00 	movabs $0x5962,%rax
    7b94:	00 00 00 
    7b97:	4c 89 f6             	mov    %r14,%rsi
    7b9a:	ff d0                	call   *%rax
    7b9c:	48 89 45 40          	mov    %rax,0x40(%rbp)
    7ba0:	49 89 c4             	mov    %rax,%r12
    7ba3:	48 85 c0             	test   %rax,%rax
    7ba6:	74 78                	je     0x7c20
    7ba8:	4c 8b 7b 28          	mov    0x28(%rbx),%r15
    7bac:	4c 89 75 48          	mov    %r14,0x48(%rbp)
    7bb0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
    7bb7:	00 
    7bb8:	49 01 df             	add    %rbx,%r15
    7bbb:	eb 35                	jmp    0x7bf2
    7bbd:	49 8b 57 20          	mov    0x20(%r15),%rdx
    7bc1:	31 ff                	xor    %edi,%edi
    7bc3:	48 85 d2             	test   %rdx,%rdx
    7bc6:	75 6b                	jne    0x7c33
    7bc8:	49 8b 47 20          	mov    0x20(%r15),%rax
    7bcc:	49 89 7e 08          	mov    %rdi,0x8(%r14)
    7bd0:	49 89 46 10          	mov    %rax,0x10(%r14)
    7bd4:	8b 44 24 08          	mov    0x8(%rsp),%eax
    7bd8:	41 89 46 18          	mov    %eax,0x18(%r14)
    7bdc:	48 8b 45 18          	mov    0x18(%rbp),%rax
    7be0:	49 89 06             	mov    %rax,(%r14)
    7be3:	4c 89 75 18          	mov    %r14,0x18(%rbp)
    7be7:	ff 44 24 08          	incl   0x8(%rsp)
    7beb:	0f b7 43 3a          	movzwl 0x3a(%rbx),%eax
    7bef:	49 01 c7             	add    %rax,%r15
    7bf2:	0f b7 43 3c          	movzwl 0x3c(%rbx),%eax
    7bf6:	39 44 24 08          	cmp    %eax,0x8(%rsp)
    7bfa:	0f 83 8f 00 00 00    	jae    0x7c8f
    7c00:	41 f6 47 08 02       	testb  $0x2,0x8(%r15)
    7c05:	74 e0                	je     0x7be7
    7c07:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    7c0e:	00 00 00 
    7c11:	bf 20 00 00 00       	mov    $0x20,%edi
    7c16:	ff d0                	call   *%rax
    7c18:	49 89 c6             	mov    %rax,%r14
    7c1b:	48 85 c0             	test   %rax,%rax
    7c1e:	75 9d                	jne    0x7bbd
    7c20:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    7c27:	00 00 
    7c29:	85 c0                	test   %eax,%eax
    7c2b:	0f 85 87 03 00 00    	jne    0x7fb8
    7c31:	eb 5c                	jmp    0x7c8f
    7c33:	49 8b 47 30          	mov    0x30(%r15),%rax
    7c37:	49 8d 7c 04 ff       	lea    -0x1(%r12,%rax,1),%rdi
    7c3c:	48 f7 d8             	neg    %rax
    7c3f:	48 21 c7             	and    %rax,%rdi
    7c42:	41 8b 47 04          	mov    0x4(%r15),%eax
    7c46:	4c 8d 24 17          	lea    (%rdi,%rdx,1),%r12
    7c4a:	83 f8 01             	cmp    $0x1,%eax
    7c4d:	74 1e                	je     0x7c6d
    7c4f:	83 f8 08             	cmp    $0x8,%eax
    7c52:	0f 85 70 ff ff ff    	jne    0x7bc8
    7c58:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
    7c5d:	31 f6                	xor    %esi,%esi
    7c5f:	48 b8 b8 99 00 00 00 	movabs $0x99b8,%rax
    7c66:	00 00 00 
    7c69:	ff d0                	call   *%rax
    7c6b:	eb 18                	jmp    0x7c85
    7c6d:	49 8b 77 18          	mov    0x18(%r15),%rsi
    7c71:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
    7c76:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    7c7d:	00 00 00 
    7c80:	48 01 de             	add    %rbx,%rsi
    7c83:	ff d0                	call   *%rax
    7c85:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    7c8a:	e9 39 ff ff ff       	jmp    0x7bc8
    7c8f:	48 8b 73 28          	mov    0x28(%rbx),%rsi
    7c93:	0f b7 7b 3c          	movzwl 0x3c(%rbx),%edi
    7c97:	31 c0                	xor    %eax,%eax
    7c99:	48 8d 0c 33          	lea    (%rbx,%rsi,1),%rcx
    7c9d:	39 f8                	cmp    %edi,%eax
    7c9f:	73 11                	jae    0x7cb2
    7ca1:	83 79 04 02          	cmpl   $0x2,0x4(%rcx)
    7ca5:	0f b7 53 3a          	movzwl 0x3a(%rbx),%edx
    7ca9:	74 1f                	je     0x7cca
    7cab:	ff c0                	inc    %eax
    7cad:	48 01 d1             	add    %rdx,%rcx
    7cb0:	eb eb                	jmp    0x7c9d
    7cb2:	75 16                	jne    0x7cca
    7cb4:	49 be e0 14 00 00 00 	movabs $0x14e0,%r14
    7cbb:	00 00 00 
    7cbe:	4c 8b 63 28          	mov    0x28(%rbx),%r12
    7cc2:	49 01 dc             	add    %rbx,%r12
    7cc5:	e9 9e 02 00 00       	jmp    0x7f68
    7cca:	48 8b 41 38          	mov    0x38(%rcx),%rax
    7cce:	4c 8b 71 18          	mov    0x18(%rcx),%r14
    7cd2:	31 d2                	xor    %edx,%edx
    7cd4:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
    7cdb:	00 
    7cdc:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    7ce1:	49 01 de             	add    %rbx,%r14
    7ce4:	48 89 45 28          	mov    %rax,0x28(%rbp)
    7ce8:	0f b7 43 3a          	movzwl 0x3a(%rbx),%eax
    7cec:	0f af 41 28          	imul   0x28(%rcx),%eax
    7cf0:	4c 89 75 20          	mov    %r14,0x20(%rbp)
    7cf4:	48 01 f0             	add    %rsi,%rax
    7cf7:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
    7cfc:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    7d01:	48 8b 41 20          	mov    0x20(%rcx),%rax
    7d05:	f7 74 24 08          	divl   0x8(%rsp)
    7d09:	89 44 24 24          	mov    %eax,0x24(%rsp)
    7d0d:	8b 4c 24 24          	mov    0x24(%rsp),%ecx
    7d11:	39 4c 24 10          	cmp    %ecx,0x10(%rsp)
    7d15:	74 9d                	je     0x7cb4
    7d17:	41 8a 46 04          	mov    0x4(%r14),%al
    7d1b:	45 8b 26             	mov    (%r14),%r12d
    7d1e:	89 c2                	mov    %eax,%edx
    7d20:	41 89 c7             	mov    %eax,%r15d
    7d23:	4c 89 e1             	mov    %r12,%rcx
    7d26:	4c 03 64 24 18       	add    0x18(%rsp),%r12
    7d2b:	83 e2 0f             	and    $0xf,%edx
    7d2e:	41 c0 ef 04          	shr    $0x4,%r15b
    7d32:	49 01 dc             	add    %rbx,%r12
    7d35:	80 fa 03             	cmp    $0x3,%dl
    7d38:	0f 84 7e 01 00 00    	je     0x7ebc
    7d3e:	a8 0c                	test   $0xc,%al
    7d40:	75 14                	jne    0x7d56
    7d42:	a8 0e                	test   $0xe,%al
    7d44:	74 26                	je     0x7d6c
    7d46:	80 fa 02             	cmp    $0x2,%dl
    7d49:	0f 84 d9 00 00 00    	je     0x7e28
    7d4f:	b2 03                	mov    $0x3,%dl
    7d51:	e9 81 01 00 00       	jmp    0x7ed7
    7d56:	80 fa 04             	cmp    $0x4,%dl
    7d59:	0f 85 78 01 00 00    	jne    0x7ed7
    7d5f:	49 c7 46 08 00 00 00 	movq   $0x0,0x8(%r14)
    7d66:	00 
    7d67:	e9 a8 01 00 00       	jmp    0x7f14
    7d6c:	41 0f b7 76 06       	movzwl 0x6(%r14),%esi
    7d71:	85 c9                	test   %ecx,%ecx
    7d73:	74 71                	je     0x7de6
    7d75:	66 85 f6             	test   %si,%si
    7d78:	75 6c                	jne    0x7de6
    7d7a:	31 d2                	xor    %edx,%edx
    7d7c:	4c 89 e1             	mov    %r12,%rcx
    7d7f:	0f be 01             	movsbl (%rcx),%eax
    7d82:	84 c0                	test   %al,%al
    7d84:	74 0d                	je     0x7d93
    7d86:	69 d2 3f 00 01 00    	imul   $0x1003f,%edx,%edx
    7d8c:	48 ff c1             	inc    %rcx
    7d8f:	01 c2                	add    %eax,%edx
    7d91:	eb ec                	jmp    0x7d7f
    7d93:	89 d0                	mov    %edx,%eax
    7d95:	b9 fd 01 00 00       	mov    $0x1fd,%ecx
    7d9a:	c1 e8 05             	shr    $0x5,%eax
    7d9d:	01 d0                	add    %edx,%eax
    7d9f:	31 d2                	xor    %edx,%edx
    7da1:	f7 f1                	div    %ecx
    7da3:	48 b8 e0 98 01 00 00 	movabs $0x198e0,%rax
    7daa:	00 00 00 
    7dad:	89 d2                	mov    %edx,%edx
    7daf:	48 8b 14 d0          	mov    (%rax,%rdx,8),%rdx
    7db3:	48 b9 06 98 00 00 00 	movabs $0x9806,%rcx
    7dba:	00 00 00 
    7dbd:	48 85 d2             	test   %rdx,%rdx
    7dc0:	0f 84 5e 01 00 00    	je     0x7f24
    7dc6:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    7dcb:	48 8b 7a 08          	mov    0x8(%rdx),%rdi
    7dcf:	4c 89 e6             	mov    %r12,%rsi
    7dd2:	ff d1                	call   *%rcx
    7dd4:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
    7dd9:	85 c0                	test   %eax,%eax
    7ddb:	0f 84 18 01 00 00    	je     0x7ef9
    7de1:	48 8b 12             	mov    (%rdx),%rdx
    7de4:	eb cd                	jmp    0x7db3
    7de6:	48 b8 c5 75 00 00 00 	movabs $0x75c5,%rax
    7ded:	00 00 00 
    7df0:	48 8b 7d 18          	mov    0x18(%rbp),%rdi
    7df4:	ff d0                	call   *%rax
    7df6:	49 03 46 08          	add    0x8(%r14),%rax
    7dfa:	49 89 46 08          	mov    %rax,0x8(%r14)
    7dfe:	48 89 c6             	mov    %rax,%rsi
    7e01:	45 84 ff             	test   %r15b,%r15b
    7e04:	0f 84 0a 01 00 00    	je     0x7f14
    7e0a:	31 d2                	xor    %edx,%edx
    7e0c:	48 89 e9             	mov    %rbp,%rcx
    7e0f:	4c 89 e7             	mov    %r12,%rdi
    7e12:	48 b8 1a 76 00 00 00 	movabs $0x761a,%rax
    7e19:	00 00 00 
    7e1c:	ff d0                	call   *%rax
    7e1e:	85 c0                	test   %eax,%eax
    7e20:	0f 84 ee 00 00 00    	je     0x7f14
    7e26:	eb 40                	jmp    0x7e68
    7e28:	41 0f b7 76 06       	movzwl 0x6(%r14),%esi
    7e2d:	48 8b 7d 18          	mov    0x18(%rbp),%rdi
    7e31:	48 b8 c5 75 00 00 00 	movabs $0x75c5,%rax
    7e38:	00 00 00 
    7e3b:	ff d0                	call   *%rax
    7e3d:	49 03 46 08          	add    0x8(%r14),%rax
    7e41:	49 89 46 08          	mov    %rax,0x8(%r14)
    7e45:	48 89 c6             	mov    %rax,%rsi
    7e48:	45 84 ff             	test   %r15b,%r15b
    7e4b:	74 29                	je     0x7e76
    7e4d:	48 89 e9             	mov    %rbp,%rcx
    7e50:	ba 01 00 00 00       	mov    $0x1,%edx
    7e55:	4c 89 e7             	mov    %r12,%rdi
    7e58:	48 b8 1a 76 00 00 00 	movabs $0x761a,%rax
    7e5f:	00 00 00 
    7e62:	ff d0                	call   *%rax
    7e64:	85 c0                	test   %eax,%eax
    7e66:	74 0e                	je     0x7e76
    7e68:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    7e6f:	00 00 
    7e71:	e9 ce 00 00 00       	jmp    0x7f44
    7e76:	48 be eb d0 00 00 00 	movabs $0xd0eb,%rsi
    7e7d:	00 00 00 
    7e80:	4c 89 e7             	mov    %r12,%rdi
    7e83:	49 bf 06 98 00 00 00 	movabs $0x9806,%r15
    7e8a:	00 00 00 
    7e8d:	41 ff d7             	call   *%r15
    7e90:	85 c0                	test   %eax,%eax
    7e92:	75 0a                	jne    0x7e9e
    7e94:	49 8b 46 08          	mov    0x8(%r14),%rax
    7e98:	48 89 45 30          	mov    %rax,0x30(%rbp)
    7e9c:	eb 76                	jmp    0x7f14
    7e9e:	48 be f9 d0 00 00 00 	movabs $0xd0f9,%rsi
    7ea5:	00 00 00 
    7ea8:	4c 89 e7             	mov    %r12,%rdi
    7eab:	41 ff d7             	call   *%r15
    7eae:	85 c0                	test   %eax,%eax
    7eb0:	75 62                	jne    0x7f14
    7eb2:	49 8b 46 08          	mov    0x8(%r14),%rax
    7eb6:	48 89 45 38          	mov    %rax,0x38(%rbp)
    7eba:	eb 58                	jmp    0x7f14
    7ebc:	48 8b 7d 18          	mov    0x18(%rbp),%rdi
    7ec0:	41 0f b7 76 06       	movzwl 0x6(%r14),%esi
    7ec5:	48 b8 c5 75 00 00 00 	movabs $0x75c5,%rax
    7ecc:	00 00 00 
    7ecf:	ff d0                	call   *%rax
    7ed1:	49 89 46 08          	mov    %rax,0x8(%r14)
    7ed5:	eb 3d                	jmp    0x7f14
    7ed7:	0f b6 d2             	movzbl %dl,%edx
    7eda:	bf 02 00 00 00       	mov    $0x2,%edi
    7edf:	31 c0                	xor    %eax,%eax
    7ee1:	48 be 07 d1 00 00 00 	movabs $0xd107,%rsi
    7ee8:	00 00 00 
    7eeb:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    7ef2:	00 00 00 
    7ef5:	ff d1                	call   *%rcx
    7ef7:	eb 4b                	jmp    0x7f44
    7ef9:	48 8b 42 10          	mov    0x10(%rdx),%rax
    7efd:	83 7a 18 00          	cmpl   $0x0,0x18(%rdx)
    7f01:	49 89 46 08          	mov    %rax,0x8(%r14)
    7f05:	74 0d                	je     0x7f14
    7f07:	44 89 f8             	mov    %r15d,%eax
    7f0a:	c1 e0 04             	shl    $0x4,%eax
    7f0d:	83 c0 02             	add    $0x2,%eax
    7f10:	41 88 46 04          	mov    %al,0x4(%r14)
    7f14:	8b 44 24 08          	mov    0x8(%rsp),%eax
    7f18:	ff 44 24 10          	incl   0x10(%rsp)
    7f1c:	49 01 c6             	add    %rax,%r14
    7f1f:	e9 e9 fd ff ff       	jmp    0x7d0d
    7f24:	4c 89 e2             	mov    %r12,%rdx
    7f27:	bf 02 00 00 00       	mov    $0x2,%edi
    7f2c:	31 c0                	xor    %eax,%eax
    7f2e:	48 be 80 d1 00 00 00 	movabs $0xd180,%rsi
    7f35:	00 00 00 
    7f38:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    7f3f:	00 00 00 
    7f42:	ff d1                	call   *%rcx
    7f44:	85 c0                	test   %eax,%eax
    7f46:	0f 84 68 fd ff ff    	je     0x7cb4
    7f4c:	eb 6a                	jmp    0x7fb8
    7f4e:	41 8b 44 24 04       	mov    0x4(%r12),%eax
    7f53:	83 f8 09             	cmp    $0x9,%eax
    7f56:	74 1c                	je     0x7f74
    7f58:	83 f8 04             	cmp    $0x4,%eax
    7f5b:	74 17                	je     0x7f74
    7f5d:	ff 44 24 20          	incl   0x20(%rsp)
    7f61:	0f b7 43 3a          	movzwl 0x3a(%rbx),%eax
    7f65:	49 01 c4             	add    %rax,%r12
    7f68:	0f b7 43 3c          	movzwl 0x3c(%rbx),%eax
    7f6c:	39 44 24 20          	cmp    %eax,0x20(%rsp)
    7f70:	72 dc                	jb     0x7f4e
    7f72:	eb 51                	jmp    0x7fc5
    7f74:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
    7f78:	48 85 c9             	test   %rcx,%rcx
    7f7b:	74 e0                	je     0x7f5d
    7f7d:	41 8b 44 24 2c       	mov    0x2c(%r12),%eax
    7f82:	39 41 18             	cmp    %eax,0x18(%rcx)
    7f85:	74 05                	je     0x7f8c
    7f87:	48 8b 09             	mov    (%rcx),%rcx
    7f8a:	eb ec                	jmp    0x7f78
    7f8c:	48 83 7d 20 00       	cmpq   $0x0,0x20(%rbp)
    7f91:	0f 85 ce 00 00 00    	jne    0x8065
    7f97:	31 c0                	xor    %eax,%eax
    7f99:	bf 02 00 00 00       	mov    $0x2,%edi
    7f9e:	48 be 20 d1 00 00 00 	movabs $0xd120,%rsi
    7fa5:	00 00 00 
    7fa8:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    7faf:	00 00 00 
    7fb2:	ff d2                	call   *%rdx
    7fb4:	85 c0                	test   %eax,%eax
    7fb6:	74 0d                	je     0x7fc5
    7fb8:	48 c7 45 38 00 00 00 	movq   $0x0,0x38(%rbp)
    7fbf:	00 
    7fc0:	e9 8d 00 00 00       	jmp    0x8052
    7fc5:	4c 8b 4d 40          	mov    0x40(%rbp),%r9
    7fc9:	31 c0                	xor    %eax,%eax
    7fcb:	4c 8b 45 48          	mov    0x48(%rbp),%r8
    7fcf:	be 34 02 00 00       	mov    $0x234,%esi
    7fd4:	48 bb b7 a6 00 00 00 	movabs $0xa6b7,%rbx
    7fdb:	00 00 00 
    7fde:	4c 89 ef             	mov    %r13,%rdi
    7fe1:	48 b9 40 d1 00 00 00 	movabs $0xd140,%rcx
    7fe8:	00 00 00 
    7feb:	48 ba ca cf 00 00 00 	movabs $0xcfca,%rdx
    7ff2:	00 00 00 
    7ff5:	ff d3                	call   *%rbx
    7ff7:	31 c0                	xor    %eax,%eax
    7ff9:	4c 8b 45 00          	mov    0x0(%rbp),%r8
    7ffd:	be 92 02 00 00       	mov    $0x292,%esi
    8002:	48 b9 5c d1 00 00 00 	movabs $0xd15c,%rcx
    8009:	00 00 00 
    800c:	4c 89 ef             	mov    %r13,%rdi
    800f:	48 ba ca cf 00 00 00 	movabs $0xcfca,%rdx
    8016:	00 00 00 
    8019:	ff d3                	call   *%rbx
    801b:	31 c0                	xor    %eax,%eax
    801d:	4c 89 ef             	mov    %r13,%rdi
    8020:	4c 8b 45 30          	mov    0x30(%rbp),%r8
    8024:	48 b9 6d d1 00 00 00 	movabs $0xd16d,%rcx
    802b:	00 00 00 
    802e:	be 93 02 00 00       	mov    $0x293,%esi
    8033:	48 ba ca cf 00 00 00 	movabs $0xcfca,%rdx
    803a:	00 00 00 
    803d:	ff d3                	call   *%rbx
    803f:	48 89 ef             	mov    %rbp,%rdi
    8042:	48 b8 dd 75 00 00 00 	movabs $0x75dd,%rax
    8049:	00 00 00 
    804c:	ff d0                	call   *%rax
    804e:	85 c0                	test   %eax,%eax
    8050:	74 2c                	je     0x807e
    8052:	48 b8 5a 77 00 00 00 	movabs $0x775a,%rax
    8059:	00 00 00 
    805c:	48 89 ef             	mov    %rbp,%rdi
    805f:	ff d0                	call   *%rax
    8061:	31 ed                	xor    %ebp,%ebp
    8063:	eb 19                	jmp    0x807e
    8065:	4c 89 e2             	mov    %r12,%rdx
    8068:	48 89 de             	mov    %rbx,%rsi
    806b:	48 89 ef             	mov    %rbp,%rdi
    806e:	41 ff d6             	call   *%r14
    8071:	85 c0                	test   %eax,%eax
    8073:	0f 84 e4 fe ff ff    	je     0x7f5d
    8079:	e9 3a ff ff ff       	jmp    0x7fb8
    807e:	48 83 c4 38          	add    $0x38,%rsp
    8082:	48 89 e8             	mov    %rbp,%rax
    8085:	5b                   	pop    %rbx
    8086:	5d                   	pop    %rbp
    8087:	41 5c                	pop    %r12
    8089:	41 5d                	pop    %r13
    808b:	41 5e                	pop    %r14
    808d:	41 5f                	pop    %r15
    808f:	c3                   	ret    
    8090:	48 b8 55 78 00 00 00 	movabs $0x7855,%rax
    8097:	00 00 00 
    809a:	41 54                	push   %r12
    809c:	ff d0                	call   *%rax
    809e:	49 89 c4             	mov    %rax,%r12
    80a1:	48 85 c0             	test   %rax,%rax
    80a4:	74 23                	je     0x80c9
    80a6:	48 8b 40 30          	mov    0x30(%rax),%rax
    80aa:	48 85 c0             	test   %rax,%rax
    80ad:	74 05                	je     0x80b4
    80af:	4c 89 e7             	mov    %r12,%rdi
    80b2:	ff d0                	call   *%rax
    80b4:	48 b8 c0 98 01 00 00 	movabs $0x198c0,%rax
    80bb:	00 00 00 
    80be:	48 8b 10             	mov    (%rax),%rdx
    80c1:	4c 89 20             	mov    %r12,(%rax)
    80c4:	49 89 54 24 50       	mov    %rdx,0x50(%r12)
    80c9:	4c 89 e0             	mov    %r12,%rax
    80cc:	41 5c                	pop    %r12
    80ce:	c3                   	ret    
    80cf:	41 56                	push   %r14
    80d1:	be 01 00 00 00       	mov    $0x1,%esi
    80d6:	48 b8 b8 89 00 00 00 	movabs $0x89b8,%rax
    80dd:	00 00 00 
    80e0:	41 55                	push   %r13
    80e2:	41 54                	push   %r12
    80e4:	55                   	push   %rbp
    80e5:	53                   	push   %rbx
    80e6:	ff d0                	call   *%rax
    80e8:	48 89 c5             	mov    %rax,%rbp
    80eb:	48 85 c0             	test   %rax,%rax
    80ee:	0f 84 8a 00 00 00    	je     0x817e
    80f4:	48 bb 6c 89 00 00 00 	movabs $0x896c,%rbx
    80fb:	00 00 00 
    80fe:	4c 8b 68 40          	mov    0x40(%rax),%r13
    8102:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    8109:	00 00 00 
    810c:	4c 89 ef             	mov    %r13,%rdi
    810f:	ff d0                	call   *%rax
    8111:	48 85 c0             	test   %rax,%rax
    8114:	49 89 c4             	mov    %rax,%r12
    8117:	75 07                	jne    0x8120
    8119:	48 89 ef             	mov    %rbp,%rdi
    811c:	ff d3                	call   *%rbx
    811e:	eb 35                	jmp    0x8155
    8120:	48 89 c6             	mov    %rax,%rsi
    8123:	48 89 ef             	mov    %rbp,%rdi
    8126:	4c 89 ea             	mov    %r13,%rdx
    8129:	48 b8 cd 88 00 00 00 	movabs $0x88cd,%rax
    8130:	00 00 00 
    8133:	ff d0                	call   *%rax
    8135:	48 89 ef             	mov    %rbp,%rdi
    8138:	49 be 12 5c 00 00 00 	movabs $0x5c12,%r14
    813f:	00 00 00 
    8142:	49 89 c0             	mov    %rax,%r8
    8145:	49 63 c5             	movslq %r13d,%rax
    8148:	49 39 c0             	cmp    %rax,%r8
    814b:	74 0c                	je     0x8159
    814d:	ff d3                	call   *%rbx
    814f:	4c 89 e7             	mov    %r12,%rdi
    8152:	41 ff d6             	call   *%r14
    8155:	31 ed                	xor    %ebp,%ebp
    8157:	eb 25                	jmp    0x817e
    8159:	ff d3                	call   *%rbx
    815b:	4c 89 e7             	mov    %r12,%rdi
    815e:	4c 89 ee             	mov    %r13,%rsi
    8161:	48 b8 90 80 00 00 00 	movabs $0x8090,%rax
    8168:	00 00 00 
    816b:	ff d0                	call   *%rax
    816d:	4c 89 e7             	mov    %r12,%rdi
    8170:	48 89 c5             	mov    %rax,%rbp
    8173:	41 ff d6             	call   *%r14
    8176:	48 85 ed             	test   %rbp,%rbp
    8179:	74 03                	je     0x817e
    817b:	ff 4d 08             	decl   0x8(%rbp)
    817e:	5b                   	pop    %rbx
    817f:	48 89 e8             	mov    %rbp,%rax
    8182:	5d                   	pop    %rbp
    8183:	41 5c                	pop    %r12
    8185:	41 5d                	pop    %r13
    8187:	41 5e                	pop    %r14
    8189:	c3                   	ret    
    818a:	48 b8 53 84 00 00 00 	movabs $0x8453,%rax
    8191:	00 00 00 
    8194:	41 55                	push   %r13
    8196:	49 bd 96 d1 00 00 00 	movabs $0xd196,%r13
    819d:	00 00 00 
    81a0:	41 54                	push   %r12
    81a2:	55                   	push   %rbp
    81a3:	48 89 fd             	mov    %rdi,%rbp
    81a6:	4c 89 ef             	mov    %r13,%rdi
    81a9:	ff d0                	call   *%rax
    81ab:	48 89 ef             	mov    %rbp,%rdi
    81ae:	49 89 c4             	mov    %rax,%r12
    81b1:	48 b8 17 75 00 00 00 	movabs $0x7517,%rax
    81b8:	00 00 00 
    81bb:	ff d0                	call   *%rax
    81bd:	48 85 c0             	test   %rax,%rax
    81c0:	0f 85 af 00 00 00    	jne    0x8275
    81c6:	4d 85 e4             	test   %r12,%r12
    81c9:	75 23                	jne    0x81ee
    81cb:	4c 89 ea             	mov    %r13,%rdx
    81ce:	bf 05 00 00 00       	mov    $0x5,%edi
    81d3:	48 be 9d d1 00 00 00 	movabs $0xd19d,%rsi
    81da:	00 00 00 
    81dd:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    81e4:	00 00 00 
    81e7:	ff d1                	call   *%rcx
    81e9:	e9 8a 00 00 00       	jmp    0x8278
    81ee:	48 89 ea             	mov    %rbp,%rdx
    81f1:	4c 89 e6             	mov    %r12,%rsi
    81f4:	31 c0                	xor    %eax,%eax
    81f6:	48 bf b5 d1 00 00 00 	movabs $0xd1b5,%rdi
    81fd:	00 00 00 
    8200:	48 b9 a8 a8 00 00 00 	movabs $0xa8a8,%rcx
    8207:	00 00 00 
    820a:	ff d1                	call   *%rcx
    820c:	49 89 c5             	mov    %rax,%r13
    820f:	48 85 c0             	test   %rax,%rax
    8212:	75 05                	jne    0x8219
    8214:	45 31 e4             	xor    %r12d,%r12d
    8217:	eb 5f                	jmp    0x8278
    8219:	48 89 c7             	mov    %rax,%rdi
    821c:	48 b8 cf 80 00 00 00 	movabs $0x80cf,%rax
    8223:	00 00 00 
    8226:	ff d0                	call   *%rax
    8228:	4c 89 ef             	mov    %r13,%rdi
    822b:	49 89 c4             	mov    %rax,%r12
    822e:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    8235:	00 00 00 
    8238:	ff d0                	call   *%rax
    823a:	4d 85 e4             	test   %r12,%r12
    823d:	74 d5                	je     0x8214
    823f:	49 8b 3c 24          	mov    (%r12),%rdi
    8243:	48 89 ee             	mov    %rbp,%rsi
    8246:	48 b8 06 98 00 00 00 	movabs $0x9806,%rax
    824d:	00 00 00 
    8250:	ff d0                	call   *%rax
    8252:	85 c0                	test   %eax,%eax
    8254:	74 22                	je     0x8278
    8256:	48 be ca d1 00 00 00 	movabs $0xd1ca,%rsi
    825d:	00 00 00 
    8260:	bf 02 00 00 00       	mov    $0x2,%edi
    8265:	31 c0                	xor    %eax,%eax
    8267:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    826e:	00 00 00 
    8271:	ff d2                	call   *%rdx
    8273:	eb 03                	jmp    0x8278
    8275:	49 89 c4             	mov    %rax,%r12
    8278:	4c 89 e0             	mov    %r12,%rax
    827b:	5d                   	pop    %rbp
    827c:	41 5c                	pop    %r12
    827e:	41 5d                	pop    %r13
    8280:	c3                   	ret    
    8281:	41 54                	push   %r12
    8283:	49 bc 5a 77 00 00 00 	movabs $0x775a,%r12
    828a:	00 00 00 
    828d:	55                   	push   %rbp
    828e:	48 bd c0 98 01 00 00 	movabs $0x198c0,%rbp
    8295:	00 00 00 
    8298:	53                   	push   %rbx
    8299:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
    829d:	48 85 db             	test   %rbx,%rbx
    82a0:	74 16                	je     0x82b8
    82a2:	48 89 df             	mov    %rbx,%rdi
    82a5:	41 ff d4             	call   *%r12
    82a8:	85 c0                	test   %eax,%eax
    82aa:	74 06                	je     0x82b2
    82ac:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
    82b0:	eb eb                	jmp    0x829d
    82b2:	48 8b 5b 50          	mov    0x50(%rbx),%rbx
    82b6:	eb e5                	jmp    0x829d
    82b8:	5b                   	pop    %rbx
    82b9:	5d                   	pop    %rbp
    82ba:	41 5c                	pop    %r12
    82bc:	c3                   	ret    
    82bd:	41 54                	push   %r12
    82bf:	48 89 f9             	mov    %rdi,%rcx
    82c2:	31 c0                	xor    %eax,%eax
    82c4:	55                   	push   %rbp
    82c5:	53                   	push   %rbx
    82c6:	48 89 fb             	mov    %rdi,%rbx
    82c9:	0f be 11             	movsbl (%rcx),%edx
    82cc:	84 d2                	test   %dl,%dl
    82ce:	74 0a                	je     0x82da
    82d0:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
    82d3:	48 ff c1             	inc    %rcx
    82d6:	01 d0                	add    %edx,%eax
    82d8:	eb ef                	jmp    0x82c9
    82da:	b9 0d 00 00 00       	mov    $0xd,%ecx
    82df:	31 d2                	xor    %edx,%edx
    82e1:	48 bd 06 98 00 00 00 	movabs $0x9806,%rbp
    82e8:	00 00 00 
    82eb:	f7 f1                	div    %ecx
    82ed:	48 a1 e0 e4 00 00 00 	movabs 0xe4e0,%rax
    82f4:	00 00 00 
    82f7:	48 63 d2             	movslq %edx,%rdx
    82fa:	4c 8b 24 d0          	mov    (%rax,%rdx,8),%r12
    82fe:	4d 85 e4             	test   %r12,%r12
    8301:	74 14                	je     0x8317
    8303:	49 8b 3c 24          	mov    (%r12),%rdi
    8307:	48 89 de             	mov    %rbx,%rsi
    830a:	ff d5                	call   *%rbp
    830c:	85 c0                	test   %eax,%eax
    830e:	74 07                	je     0x8317
    8310:	4d 8b 64 24 20       	mov    0x20(%r12),%r12
    8315:	eb e7                	jmp    0x82fe
    8317:	4c 89 e0             	mov    %r12,%rax
    831a:	5b                   	pop    %rbx
    831b:	5d                   	pop    %rbp
    831c:	41 5c                	pop    %r12
    831e:	c3                   	ret    
    831f:	48 b8 bd 82 00 00 00 	movabs $0x82bd,%rax
    8326:	00 00 00 
    8329:	41 55                	push   %r13
    832b:	49 89 fd             	mov    %rdi,%r13
    832e:	41 54                	push   %r12
    8330:	49 89 f4             	mov    %rsi,%r12
    8333:	55                   	push   %rbp
    8334:	ff d0                	call   *%rax
    8336:	48 85 c0             	test   %rax,%rax
    8339:	74 4f                	je     0x838a
    833b:	4c 8b 68 08          	mov    0x8(%rax),%r13
    833f:	48 89 c5             	mov    %rax,%rbp
    8342:	48 8b 40 18          	mov    0x18(%rax),%rax
    8346:	48 85 c0             	test   %rax,%rax
    8349:	74 0a                	je     0x8355
    834b:	4c 89 e6             	mov    %r12,%rsi
    834e:	48 89 ef             	mov    %rbp,%rdi
    8351:	ff d0                	call   *%rax
    8353:	eb 0f                	jmp    0x8364
    8355:	48 b8 48 9a 00 00 00 	movabs $0x9a48,%rax
    835c:	00 00 00 
    835f:	4c 89 e7             	mov    %r12,%rdi
    8362:	ff d0                	call   *%rax
    8364:	48 89 45 08          	mov    %rax,0x8(%rbp)
    8368:	48 85 c0             	test   %rax,%rax
    836b:	75 09                	jne    0x8376
    836d:	4c 89 6d 08          	mov    %r13,0x8(%rbp)
    8371:	e9 ce 00 00 00       	jmp    0x8444
    8376:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    837d:	00 00 00 
    8380:	4c 89 ef             	mov    %r13,%rdi
    8383:	ff d0                	call   *%rax
    8385:	e9 98 00 00 00       	jmp    0x8422
    838a:	48 b8 d4 5b 00 00 00 	movabs $0x5bd4,%rax
    8391:	00 00 00 
    8394:	bf 40 00 00 00       	mov    $0x40,%edi
    8399:	ff d0                	call   *%rax
    839b:	48 89 c5             	mov    %rax,%rbp
    839e:	48 85 c0             	test   %rax,%rax
    83a1:	0f 84 9d 00 00 00    	je     0x8444
    83a7:	4c 89 ef             	mov    %r13,%rdi
    83aa:	49 bd 48 9a 00 00 00 	movabs $0x9a48,%r13
    83b1:	00 00 00 
    83b4:	41 ff d5             	call   *%r13
    83b7:	48 89 45 00          	mov    %rax,0x0(%rbp)
    83bb:	48 85 c0             	test   %rax,%rax
    83be:	74 66                	je     0x8426
    83c0:	4c 89 e7             	mov    %r12,%rdi
    83c3:	41 ff d5             	call   *%r13
    83c6:	48 89 45 08          	mov    %rax,0x8(%rbp)
    83ca:	48 85 c0             	test   %rax,%rax
    83cd:	74 57                	je     0x8426
    83cf:	48 b8 e0 e4 00 00 00 	movabs $0xe4e0,%rax
    83d6:	00 00 00 
    83d9:	48 8b 75 00          	mov    0x0(%rbp),%rsi
    83dd:	48 8b 08             	mov    (%rax),%rcx
    83e0:	31 c0                	xor    %eax,%eax
    83e2:	0f be 16             	movsbl (%rsi),%edx
    83e5:	84 d2                	test   %dl,%dl
    83e7:	74 0a                	je     0x83f3
    83e9:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
    83ec:	48 ff c6             	inc    %rsi
    83ef:	01 d0                	add    %edx,%eax
    83f1:	eb ef                	jmp    0x83e2
    83f3:	be 0d 00 00 00       	mov    $0xd,%esi
    83f8:	31 d2                	xor    %edx,%edx
    83fa:	f7 f6                	div    %esi
    83fc:	89 d0                	mov    %edx,%eax
    83fe:	48 63 d2             	movslq %edx,%rdx
    8401:	48 8d 04 c1          	lea    (%rcx,%rax,8),%rax
    8405:	48 89 45 28          	mov    %rax,0x28(%rbp)
    8409:	48 8b 04 d1          	mov    (%rcx,%rdx,8),%rax
    840d:	48 89 45 20          	mov    %rax,0x20(%rbp)
    8411:	48 85 c0             	test   %rax,%rax
    8414:	74 08                	je     0x841e
    8416:	48 8d 75 20          	lea    0x20(%rbp),%rsi
    841a:	48 89 70 28          	mov    %rsi,0x28(%rax)
    841e:	48 89 2c d1          	mov    %rbp,(%rcx,%rdx,8)
    8422:	31 c0                	xor    %eax,%eax
    8424:	eb 27                	jmp    0x844d
    8426:	49 bc 12 5c 00 00 00 	movabs $0x5c12,%r12
    842d:	00 00 00 
    8430:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    8434:	41 ff d4             	call   *%r12
    8437:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
    843b:	41 ff d4             	call   *%r12
    843e:	48 89 ef             	mov    %rbp,%rdi
    8441:	41 ff d4             	call   *%r12
    8444:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    844b:	00 00 
    844d:	5d                   	pop    %rbp
    844e:	41 5c                	pop    %r12
    8450:	41 5d                	pop    %r13
    8452:	c3                   	ret    
    8453:	56                   	push   %rsi
    8454:	48 b8 bd 82 00 00 00 	movabs $0x82bd,%rax
    845b:	00 00 00 
    845e:	ff d0                	call   *%rax
    8460:	48 85 c0             	test   %rax,%rax
    8463:	74 16                	je     0x847b
    8465:	48 8b 50 10          	mov    0x10(%rax),%rdx
    8469:	48 8b 70 08          	mov    0x8(%rax),%rsi
    846d:	48 85 d2             	test   %rdx,%rdx
    8470:	74 06                	je     0x8478
    8472:	48 89 c7             	mov    %rax,%rdi
    8475:	59                   	pop    %rcx
    8476:	ff e2                	jmp    *%rdx
    8478:	48 89 f0             	mov    %rsi,%rax
    847b:	5a                   	pop    %rdx
    847c:	c3                   	ret    
    847d:	48 b8 bd 82 00 00 00 	movabs $0x82bd,%rax
    8484:	00 00 00 
    8487:	41 54                	push   %r12
    8489:	55                   	push   %rbp
    848a:	48 83 ec 18          	sub    $0x18,%rsp
    848e:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    8493:	ff d0                	call   *%rax
    8495:	48 85 c0             	test   %rax,%rax
    8498:	74 6e                	je     0x8508
    849a:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
    849f:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    84a4:	48 89 c5             	mov    %rax,%rbp
    84a7:	75 07                	jne    0x84b0
    84a9:	48 83 78 18 00       	cmpq   $0x0,0x18(%rax)
    84ae:	74 1d                	je     0x84cd
    84b0:	48 be db d1 00 00 00 	movabs $0xd1db,%rsi
    84b7:	00 00 00 
    84ba:	48 83 c4 18          	add    $0x18,%rsp
    84be:	48 b8 1f 83 00 00 00 	movabs $0x831f,%rax
    84c5:	00 00 00 
    84c8:	5d                   	pop    %rbp
    84c9:	41 5c                	pop    %r12
    84cb:	ff e0                	jmp    *%rax
    84cd:	48 8b 50 28          	mov    0x28(%rax),%rdx
    84d1:	48 8b 40 20          	mov    0x20(%rax),%rax
    84d5:	48 89 02             	mov    %rax,(%rdx)
    84d8:	48 85 c0             	test   %rax,%rax
    84db:	74 04                	je     0x84e1
    84dd:	48 89 50 28          	mov    %rdx,0x28(%rax)
    84e1:	49 bc 12 5c 00 00 00 	movabs $0x5c12,%r12
    84e8:	00 00 00 
    84eb:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    84ef:	41 ff d4             	call   *%r12
    84f2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
    84f6:	41 ff d4             	call   *%r12
    84f9:	48 83 c4 18          	add    $0x18,%rsp
    84fd:	48 89 ef             	mov    %rbp,%rdi
    8500:	4c 89 e0             	mov    %r12,%rax
    8503:	5d                   	pop    %rbp
    8504:	41 5c                	pop    %r12
    8506:	ff e0                	jmp    *%rax
    8508:	48 83 c4 18          	add    $0x18,%rsp
    850c:	5d                   	pop    %rbp
    850d:	41 5c                	pop    %r12
    850f:	c3                   	ret    
    8510:	41 56                	push   %r14
    8512:	41 55                	push   %r13
    8514:	49 bd e0 e4 00 00 00 	movabs $0xe4e0,%r13
    851b:	00 00 00 
    851e:	41 54                	push   %r12
    8520:	55                   	push   %rbp
    8521:	31 ed                	xor    %ebp,%ebp
    8523:	53                   	push   %rbx
    8524:	48 83 ec 10          	sub    $0x10,%rsp
    8528:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    852f:	00 00 
    8531:	49 8b 45 00          	mov    0x0(%r13),%rax
    8535:	48 63 d5             	movslq %ebp,%rdx
    8538:	49 be 06 98 00 00 00 	movabs $0x9806,%r14
    853f:	00 00 00 
    8542:	48 8b 1c d0          	mov    (%rax,%rdx,8),%rbx
    8546:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    854b:	48 85 db             	test   %rbx,%rbx
    854e:	74 37                	je     0x8587
    8550:	4c 8d 64 24 08       	lea    0x8(%rsp),%r12
    8555:	48 85 c0             	test   %rax,%rax
    8558:	74 0d                	je     0x8567
    855a:	48 8b 33             	mov    (%rbx),%rsi
    855d:	48 8b 38             	mov    (%rax),%rdi
    8560:	41 ff d6             	call   *%r14
    8563:	85 c0                	test   %eax,%eax
    8565:	7e 12                	jle    0x8579
    8567:	49 8b 04 24          	mov    (%r12),%rax
    856b:	48 89 43 30          	mov    %rax,0x30(%rbx)
    856f:	49 89 1c 24          	mov    %rbx,(%r12)
    8573:	48 8b 5b 20          	mov    0x20(%rbx),%rbx
    8577:	eb cd                	jmp    0x8546
    8579:	49 8b 04 24          	mov    (%r12),%rax
    857d:	4c 8d 60 30          	lea    0x30(%rax),%r12
    8581:	48 8b 40 30          	mov    0x30(%rax),%rax
    8585:	eb ce                	jmp    0x8555
    8587:	ff c5                	inc    %ebp
    8589:	83 fd 0d             	cmp    $0xd,%ebp
    858c:	75 a3                	jne    0x8531
    858e:	48 83 c4 10          	add    $0x10,%rsp
    8592:	5b                   	pop    %rbx
    8593:	5d                   	pop    %rbp
    8594:	41 5c                	pop    %r12
    8596:	41 5d                	pop    %r13
    8598:	41 5e                	pop    %r14
    859a:	c3                   	ret    
    859b:	41 55                	push   %r13
    859d:	49 bd bd 82 00 00 00 	movabs $0x82bd,%r13
    85a4:	00 00 00 
    85a7:	41 54                	push   %r12
    85a9:	49 89 f4             	mov    %rsi,%r12
    85ac:	55                   	push   %rbp
    85ad:	48 89 fd             	mov    %rdi,%rbp
    85b0:	53                   	push   %rbx
    85b1:	48 89 d3             	mov    %rdx,%rbx
    85b4:	51                   	push   %rcx
    85b5:	41 ff d5             	call   *%r13
    85b8:	48 85 c0             	test   %rax,%rax
    85bb:	75 2e                	jne    0x85eb
    85bd:	48 be db d1 00 00 00 	movabs $0xd1db,%rsi
    85c4:	00 00 00 
    85c7:	48 89 ef             	mov    %rbp,%rdi
    85ca:	48 b8 1f 83 00 00 00 	movabs $0x831f,%rax
    85d1:	00 00 00 
    85d4:	ff d0                	call   *%rax
    85d6:	85 c0                	test   %eax,%eax
    85d8:	74 0b                	je     0x85e5
    85da:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    85e1:	00 00 
    85e3:	eb 10                	jmp    0x85f5
    85e5:	48 89 ef             	mov    %rbp,%rdi
    85e8:	41 ff d5             	call   *%r13
    85eb:	4c 89 60 10          	mov    %r12,0x10(%rax)
    85ef:	48 89 58 18          	mov    %rbx,0x18(%rax)
    85f3:	31 c0                	xor    %eax,%eax
    85f5:	5a                   	pop    %rdx
    85f6:	5b                   	pop    %rbx
    85f7:	5d                   	pop    %rbp
    85f8:	41 5c                	pop    %r12
    85fa:	41 5d                	pop    %r13
    85fc:	c3                   	ret    
    85fd:	55                   	push   %rbp
    85fe:	48 89 fd             	mov    %rdi,%rbp
    8601:	53                   	push   %rbx
    8602:	48 bb bd 82 00 00 00 	movabs $0x82bd,%rbx
    8609:	00 00 00 
    860c:	51                   	push   %rcx
    860d:	ff d3                	call   *%rbx
    860f:	48 85 c0             	test   %rax,%rax
    8612:	75 22                	jne    0x8636
    8614:	48 be db d1 00 00 00 	movabs $0xd1db,%rsi
    861b:	00 00 00 
    861e:	48 89 ef             	mov    %rbp,%rdi
    8621:	48 b8 1f 83 00 00 00 	movabs $0x831f,%rax
    8628:	00 00 00 
    862b:	ff d0                	call   *%rax
    862d:	85 c0                	test   %eax,%eax
    862f:	75 0e                	jne    0x863f
    8631:	48 89 ef             	mov    %rbp,%rdi
    8634:	ff d3                	call   *%rbx
    8636:	c7 40 38 01 00 00 00 	movl   $0x1,0x38(%rax)
    863d:	31 c0                	xor    %eax,%eax
    863f:	5a                   	pop    %rdx
    8640:	5b                   	pop    %rbx
    8641:	5d                   	pop    %rbp
    8642:	c3                   	ret    
    8643:	41 54                	push   %r12
    8645:	41 89 fc             	mov    %edi,%r12d
    8648:	48 89 f7             	mov    %rsi,%rdi
    864b:	44 89 e0             	mov    %r12d,%eax
    864e:	48 83 ec 50          	sub    $0x50,%rsp
    8652:	a3 80 aa 01 00 00 00 	movabs %eax,0x1aa80
    8659:	00 00 
    865b:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    8660:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    8665:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    866a:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
    866f:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
    8674:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
    8679:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
    867e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    8683:	48 a1 50 e5 00 00 00 	movabs 0xe550,%rax
    868a:	00 00 00 
    868d:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%rsp)
    8694:	00 
    8695:	ff d0                	call   *%rax
    8697:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    869c:	be 00 01 00 00       	mov    $0x100,%esi
    86a1:	48 bf 80 a9 01 00 00 	movabs $0x1a980,%rdi
    86a8:	00 00 00 
    86ab:	48 89 c2             	mov    %rax,%rdx
    86ae:	48 b8 b7 a7 00 00 00 	movabs $0xa7b7,%rax
    86b5:	00 00 00 
    86b8:	ff d0                	call   *%rax
    86ba:	48 83 c4 50          	add    $0x50,%rsp
    86be:	44 89 e0             	mov    %r12d,%eax
    86c1:	41 5c                	pop    %r12
    86c3:	c3                   	ret    
    86c4:	53                   	push   %rbx
    86c5:	48 bb 88 aa 01 00 00 	movabs $0x1aa88,%rbx
    86cc:	00 00 00 
    86cf:	48 63 13             	movslq (%rbx),%rdx
    86d2:	83 fa 09             	cmp    $0x9,%edx
    86d5:	7f 41                	jg     0x8718
    86d7:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    86de:	00 00 
    86e0:	48 69 d2 04 01 00 00 	imul   $0x104,%rdx,%rdx
    86e7:	48 b9 a0 aa 01 00 00 	movabs $0x1aaa0,%rcx
    86ee:	00 00 00 
    86f1:	48 be 80 a9 01 00 00 	movabs $0x1a980,%rsi
    86f8:	00 00 00 
    86fb:	89 04 11             	mov    %eax,(%rcx,%rdx,1)
    86fe:	48 8d 7c 11 04       	lea    0x4(%rcx,%rdx,1),%rdi
    8703:	ba 00 01 00 00       	mov    $0x100,%edx
    8708:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    870f:	00 00 00 
    8712:	ff d0                	call   *%rax
    8714:	ff 03                	incl   (%rbx)
    8716:	eb 10                	jmp    0x8728
    8718:	48 b8 84 aa 01 00 00 	movabs $0x1aa84,%rax
    871f:	00 00 00 
    8722:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
    8728:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    872f:	00 00 00 
    8732:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    8738:	5b                   	pop    %rbx
    8739:	c3                   	ret    
    873a:	48 b8 88 aa 01 00 00 	movabs $0x1aa88,%rax
    8741:	00 00 00 
    8744:	8b 10                	mov    (%rax),%edx
    8746:	85 d2                	test   %edx,%edx
    8748:	7e 4c                	jle    0x8796
    874a:	48 bf 80 a9 01 00 00 	movabs $0x1a980,%rdi
    8751:	00 00 00 
    8754:	ff ca                	dec    %edx
    8756:	51                   	push   %rcx
    8757:	48 b9 a0 aa 01 00 00 	movabs $0x1aaa0,%rcx
    875e:	00 00 00 
    8761:	89 10                	mov    %edx,(%rax)
    8763:	48 63 d2             	movslq %edx,%rdx
    8766:	48 69 d2 04 01 00 00 	imul   $0x104,%rdx,%rdx
    876d:	8b 04 11             	mov    (%rcx,%rdx,1),%eax
    8770:	48 8d 74 11 04       	lea    0x4(%rcx,%rdx,1),%rsi
    8775:	ba 00 01 00 00       	mov    $0x100,%edx
    877a:	a3 80 aa 01 00 00 00 	movabs %eax,0x1aa80
    8781:	00 00 
    8783:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    878a:	00 00 00 
    878d:	ff d0                	call   *%rax
    878f:	b8 01 00 00 00       	mov    $0x1,%eax
    8794:	5e                   	pop    %rsi
    8795:	c3                   	ret    
    8796:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    879d:	00 00 00 
    87a0:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    87a6:	31 c0                	xor    %eax,%eax
    87a8:	c3                   	ret    
    87a9:	53                   	push   %rbx
    87aa:	48 bb 80 aa 01 00 00 	movabs $0x1aa80,%rbx
    87b1:	00 00 00 
    87b4:	83 3b 00             	cmpl   $0x0,(%rbx)
    87b7:	74 3d                	je     0x87f6
    87b9:	48 bf dc d1 00 00 00 	movabs $0xd1dc,%rdi
    87c0:	00 00 00 
    87c3:	48 a1 50 e5 00 00 00 	movabs 0xe550,%rax
    87ca:	00 00 00 
    87cd:	ff d0                	call   *%rax
    87cf:	48 be 80 a9 01 00 00 	movabs $0x1a980,%rsi
    87d6:	00 00 00 
    87d9:	48 ba 0a a6 00 00 00 	movabs $0xa60a,%rdx
    87e0:	00 00 00 
    87e3:	48 89 c7             	mov    %rax,%rdi
    87e6:	31 c0                	xor    %eax,%eax
    87e8:	ff d2                	call   *%rdx
    87ea:	48 b8 60 a9 01 00 00 	movabs $0x1a960,%rax
    87f1:	00 00 00 
    87f4:	ff 00                	incl   (%rax)
    87f6:	48 b8 3a 87 00 00 00 	movabs $0x873a,%rax
    87fd:	00 00 00 
    8800:	ff d0                	call   *%rax
    8802:	85 c0                	test   %eax,%eax
    8804:	75 ae                	jne    0x87b4
    8806:	48 b8 84 aa 01 00 00 	movabs $0x1aa84,%rax
    880d:	00 00 00 
    8810:	83 38 00             	cmpl   $0x0,(%rax)
    8813:	74 28                	je     0x883d
    8815:	48 bf e8 d1 00 00 00 	movabs $0xd1e8,%rdi
    881c:	00 00 00 
    881f:	31 c0                	xor    %eax,%eax
    8821:	48 ba 0a a6 00 00 00 	movabs $0xa60a,%rdx
    8828:	00 00 00 
    882b:	ff d2                	call   *%rdx
    882d:	48 b8 84 aa 01 00 00 	movabs $0x1aa84,%rax
    8834:	00 00 00 
    8837:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    883d:	5b                   	pop    %rbx
    883e:	c3                   	ret    
    883f:	41 54                	push   %r12
    8841:	45 31 e4             	xor    %r12d,%r12d
    8844:	55                   	push   %rbp
    8845:	53                   	push   %rbx
    8846:	80 3f 28             	cmpb   $0x28,(%rdi)
    8849:	75 7a                	jne    0x88c5
    884b:	48 89 fb             	mov    %rdi,%rbx
    884e:	be 29 00 00 00       	mov    $0x29,%esi
    8853:	48 b8 59 98 00 00 00 	movabs $0x9859,%rax
    885a:	00 00 00 
    885d:	ff d0                	call   *%rax
    885f:	49 89 c4             	mov    %rax,%r12
    8862:	48 85 c0             	test   %rax,%rax
    8865:	75 24                	jne    0x888b
    8867:	ba 29 00 00 00       	mov    $0x29,%edx
    886c:	bf 07 00 00 00       	mov    $0x7,%edi
    8871:	31 c0                	xor    %eax,%eax
    8873:	48 be 10 d2 00 00 00 	movabs $0xd210,%rsi
    887a:	00 00 00 
    887d:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    8884:	00 00 00 
    8887:	ff d1                	call   *%rcx
    8889:	eb 3a                	jmp    0x88c5
    888b:	48 89 c5             	mov    %rax,%rbp
    888e:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    8895:	00 00 00 
    8898:	48 29 dd             	sub    %rbx,%rbp
    889b:	48 89 ef             	mov    %rbp,%rdi
    889e:	ff d0                	call   *%rax
    88a0:	49 89 c4             	mov    %rax,%r12
    88a3:	48 85 c0             	test   %rax,%rax
    88a6:	74 1d                	je     0x88c5
    88a8:	48 89 c7             	mov    %rax,%rdi
    88ab:	48 8d 55 ff          	lea    -0x1(%rbp),%rdx
    88af:	48 8d 73 01          	lea    0x1(%rbx),%rsi
    88b3:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    88ba:	00 00 00 
    88bd:	ff d0                	call   *%rax
    88bf:	41 c6 44 2c ff 00    	movb   $0x0,-0x1(%r12,%rbp,1)
    88c5:	4c 89 e0             	mov    %r12,%rax
    88c8:	5b                   	pop    %rbx
    88c9:	5d                   	pop    %rbp
    88ca:	41 5c                	pop    %r12
    88cc:	c3                   	ret    
    88cd:	41 54                	push   %r12
    88cf:	48 89 d1             	mov    %rdx,%rcx
    88d2:	55                   	push   %rbp
    88d3:	53                   	push   %rbx
    88d4:	48 89 fb             	mov    %rdi,%rbx
    88d7:	48 8b 7f 18          	mov    0x18(%rdi),%rdi
    88db:	48 8b 53 40          	mov    0x40(%rbx),%rdx
    88df:	48 39 d7             	cmp    %rdx,%rdi
    88e2:	76 23                	jbe    0x8907
    88e4:	48 be 24 d2 00 00 00 	movabs $0xd224,%rsi
    88eb:	00 00 00 
    88ee:	bf 0b 00 00 00       	mov    $0xb,%edi
    88f3:	31 c0                	xor    %eax,%eax
    88f5:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    88fc:	00 00 00 
    88ff:	ff d2                	call   *%rdx
    8901:	48 83 c8 ff          	or     $0xffffffffffffffff,%rax
    8905:	eb 60                	jmp    0x8967
    8907:	31 c0                	xor    %eax,%eax
    8909:	48 85 c9             	test   %rcx,%rcx
    890c:	74 59                	je     0x8967
    890e:	48 29 fa             	sub    %rdi,%rdx
    8911:	48 39 ca             	cmp    %rcx,%rdx
    8914:	48 0f 47 d1          	cmova  %rcx,%rdx
    8918:	48 85 d2             	test   %rdx,%rdx
    891b:	79 05                	jns    0x8922
    891d:	48 d1 ea             	shr    %rdx
    8920:	eb 07                	jmp    0x8929
    8922:	b8 00 00 00 00       	mov    $0x0,%eax
    8927:	74 3e                	je     0x8967
    8929:	48 8b 6b 58          	mov    0x58(%rbx),%rbp
    892d:	4c 8b 63 60          	mov    0x60(%rbx),%r12
    8931:	48 85 ed             	test   %rbp,%rbp
    8934:	75 16                	jne    0x894c
    8936:	48 a1 e0 b4 01 00 00 	movabs 0x1b4e0,%rax
    893d:	00 00 00 
    8940:	48 89 5b 60          	mov    %rbx,0x60(%rbx)
    8944:	48 89 7b 20          	mov    %rdi,0x20(%rbx)
    8948:	48 89 43 58          	mov    %rax,0x58(%rbx)
    894c:	48 8b 43 10          	mov    0x10(%rbx),%rax
    8950:	48 89 df             	mov    %rbx,%rdi
    8953:	ff 50 28             	call   *0x28(%rax)
    8956:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    895a:	4c 89 63 60          	mov    %r12,0x60(%rbx)
    895e:	48 85 c0             	test   %rax,%rax
    8961:	7e 04                	jle    0x8967
    8963:	48 01 43 18          	add    %rax,0x18(%rbx)
    8967:	5b                   	pop    %rbx
    8968:	5d                   	pop    %rbp
    8969:	41 5c                	pop    %r12
    896b:	c3                   	ret    
    896c:	55                   	push   %rbp
    896d:	48 89 fd             	mov    %rdi,%rbp
    8970:	53                   	push   %rbx
    8971:	51                   	push   %rcx
    8972:	48 8b 47 10          	mov    0x10(%rdi),%rax
    8976:	48 8b 40 30          	mov    0x30(%rax),%rax
    897a:	48 85 c0             	test   %rax,%rax
    897d:	74 02                	je     0x8981
    897f:	ff d0                	call   *%rax
    8981:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
    8985:	48 85 ff             	test   %rdi,%rdi
    8988:	74 0c                	je     0x8996
    898a:	48 b8 01 68 00 00 00 	movabs $0x6801,%rax
    8991:	00 00 00 
    8994:	ff d0                	call   *%rax
    8996:	48 bb 12 5c 00 00 00 	movabs $0x5c12,%rbx
    899d:	00 00 00 
    89a0:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    89a4:	ff d3                	call   *%rbx
    89a6:	48 89 ef             	mov    %rbp,%rdi
    89a9:	ff d3                	call   *%rbx
    89ab:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    89b2:	00 00 
    89b4:	5a                   	pop    %rdx
    89b5:	5b                   	pop    %rbx
    89b6:	5d                   	pop    %rbp
    89b7:	c3                   	ret    
    89b8:	48 b8 3f 88 00 00 00 	movabs $0x883f,%rax
    89bf:	00 00 00 
    89c2:	41 57                	push   %r15
    89c4:	49 bf 12 5c 00 00 00 	movabs $0x5c12,%r15
    89cb:	00 00 00 
    89ce:	41 56                	push   %r14
    89d0:	41 89 f6             	mov    %esi,%r14d
    89d3:	41 55                	push   %r13
    89d5:	41 54                	push   %r12
    89d7:	55                   	push   %rbp
    89d8:	53                   	push   %rbx
    89d9:	48 89 fb             	mov    %rdi,%rbx
    89dc:	48 83 ec 18          	sub    $0x18,%rsp
    89e0:	ff d0                	call   *%rax
    89e2:	49 89 c4             	mov    %rax,%r12
    89e5:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    89ec:	00 00 00 
    89ef:	83 38 00             	cmpl   $0x0,(%rax)
    89f2:	0f 85 5c 01 00 00    	jne    0x8b54
    89f8:	80 3b 28             	cmpb   $0x28,(%rbx)
    89fb:	74 05                	je     0x8a02
    89fd:	48 89 dd             	mov    %rbx,%rbp
    8a00:	eb 1d                	jmp    0x8a1f
    8a02:	be 29 00 00 00       	mov    $0x29,%esi
    8a07:	48 89 df             	mov    %rbx,%rdi
    8a0a:	48 b8 59 98 00 00 00 	movabs $0x9859,%rax
    8a11:	00 00 00 
    8a14:	ff d0                	call   *%rax
    8a16:	48 85 c0             	test   %rax,%rax
    8a19:	74 e2                	je     0x89fd
    8a1b:	48 8d 68 01          	lea    0x1(%rax),%rbp
    8a1f:	48 b8 21 67 00 00 00 	movabs $0x6721,%rax
    8a26:	00 00 00 
    8a29:	4c 89 e7             	mov    %r12,%rdi
    8a2c:	ff d0                	call   *%rax
    8a2e:	4c 89 e7             	mov    %r12,%rdi
    8a31:	49 89 c5             	mov    %rax,%r13
    8a34:	41 ff d7             	call   *%r15
    8a37:	4d 85 ed             	test   %r13,%r13
    8a3a:	0f 84 14 01 00 00    	je     0x8b54
    8a40:	48 b8 d4 5b 00 00 00 	movabs $0x5bd4,%rax
    8a47:	00 00 00 
    8a4a:	bf 68 00 00 00       	mov    $0x68,%edi
    8a4f:	ff d0                	call   *%rax
    8a51:	49 89 c4             	mov    %rax,%r12
    8a54:	48 85 c0             	test   %rax,%rax
    8a57:	0f 84 05 01 00 00    	je     0x8b62
    8a5d:	49 83 7d 00 00       	cmpq   $0x0,0x0(%r13)
    8a62:	4c 89 68 08          	mov    %r13,0x8(%rax)
    8a66:	74 17                	je     0x8a7f
    8a68:	80 7d 00 2f          	cmpb   $0x2f,0x0(%rbp)
    8a6c:	74 11                	je     0x8a7f
    8a6e:	48 b8 00 e5 00 00 00 	movabs $0xe500,%rax
    8a75:	00 00 00 
    8a78:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    8a7d:	eb 1d                	jmp    0x8a9c
    8a7f:	48 b8 8b 8e 00 00 00 	movabs $0x8e8b,%rax
    8a86:	00 00 00 
    8a89:	4c 89 ef             	mov    %r13,%rdi
    8a8c:	ff d0                	call   *%rax
    8a8e:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    8a93:	48 85 c0             	test   %rax,%rax
    8a96:	0f 84 c6 00 00 00    	je     0x8b62
    8a9c:	49 8b 44 24 10       	mov    0x10(%r12),%rax
    8aa1:	48 89 ee             	mov    %rbp,%rsi
    8aa4:	4c 89 e7             	mov    %r12,%rdi
    8aa7:	ff 50 20             	call   *0x20(%rax)
    8aaa:	85 c0                	test   %eax,%eax
    8aac:	0f 85 b0 00 00 00    	jne    0x8b62
    8ab2:	48 89 df             	mov    %rbx,%rdi
    8ab5:	bd 01 00 00 00       	mov    $0x1,%ebp
    8aba:	49 bd 48 9a 00 00 00 	movabs $0x9a48,%r13
    8ac1:	00 00 00 
    8ac4:	49 bf f8 b4 01 00 00 	movabs $0x1b4f8,%r15
    8acb:	00 00 00 
    8ace:	41 ff d5             	call   *%r13
    8ad1:	31 ff                	xor    %edi,%edi
    8ad3:	49 89 04 24          	mov    %rax,(%r12)
    8ad7:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    8ade:	00 00 00 
    8ae1:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    8ae7:	49 8b 04 ef          	mov    (%r15,%rbp,8),%rax
    8aeb:	48 85 c0             	test   %rax,%rax
    8aee:	74 3e                	je     0x8b2e
    8af0:	44 89 f6             	mov    %r14d,%esi
    8af3:	4c 89 e7             	mov    %r12,%rdi
    8af6:	ff d0                	call   *%rax
    8af8:	48 89 c2             	mov    %rax,%rdx
    8afb:	48 85 c0             	test   %rax,%rax
    8afe:	74 28                	je     0x8b28
    8b00:	4c 39 e0             	cmp    %r12,%rax
    8b03:	74 23                	je     0x8b28
    8b05:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    8b0a:	48 89 df             	mov    %rbx,%rdi
    8b0d:	41 ff d5             	call   *%r13
    8b10:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    8b15:	48 89 02             	mov    %rax,(%rdx)
    8b18:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    8b1f:	00 00 00 
    8b22:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    8b28:	4c 89 e7             	mov    %r12,%rdi
    8b2b:	49 89 d4             	mov    %rdx,%r12
    8b2e:	4d 85 e4             	test   %r12,%r12
    8b31:	0f 95 c2             	setne  %dl
    8b34:	83 fd 03             	cmp    $0x3,%ebp
    8b37:	0f 96 c0             	setbe  %al
    8b3a:	48 ff c5             	inc    %rbp
    8b3d:	84 c2                	test   %al,%dl
    8b3f:	75 a6                	jne    0x8ae7
    8b41:	4d 85 e4             	test   %r12,%r12
    8b44:	75 2d                	jne    0x8b73
    8b46:	48 b8 6c 89 00 00 00 	movabs $0x896c,%rax
    8b4d:	00 00 00 
    8b50:	ff d0                	call   *%rax
    8b52:	eb 1f                	jmp    0x8b73
    8b54:	45 31 e4             	xor    %r12d,%r12d
    8b57:	4c 89 e7             	mov    %r12,%rdi
    8b5a:	45 31 e4             	xor    %r12d,%r12d
    8b5d:	41 ff d7             	call   *%r15
    8b60:	eb 11                	jmp    0x8b73
    8b62:	48 b8 01 68 00 00 00 	movabs $0x6801,%rax
    8b69:	00 00 00 
    8b6c:	4c 89 ef             	mov    %r13,%rdi
    8b6f:	ff d0                	call   *%rax
    8b71:	eb e4                	jmp    0x8b57
    8b73:	48 83 c4 18          	add    $0x18,%rsp
    8b77:	4c 89 e0             	mov    %r12,%rax
    8b7a:	5b                   	pop    %rbx
    8b7b:	5d                   	pop    %rbp
    8b7c:	41 5c                	pop    %r12
    8b7e:	41 5d                	pop    %r13
    8b80:	41 5e                	pop    %r14
    8b82:	41 5f                	pop    %r15
    8b84:	c3                   	ret    
    8b85:	48 39 77 40          	cmp    %rsi,0x40(%rdi)
    8b89:	73 24                	jae    0x8baf
    8b8b:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    8b92:	00 00 00 
    8b95:	bf 0b 00 00 00       	mov    $0xb,%edi
    8b9a:	50                   	push   %rax
    8b9b:	31 c0                	xor    %eax,%eax
    8b9d:	48 be 49 d2 00 00 00 	movabs $0xd249,%rsi
    8ba4:	00 00 00 
    8ba7:	ff d2                	call   *%rdx
    8ba9:	48 83 c8 ff          	or     $0xffffffffffffffff,%rax
    8bad:	5a                   	pop    %rdx
    8bae:	c3                   	ret    
    8baf:	48 8b 47 18          	mov    0x18(%rdi),%rax
    8bb3:	48 89 77 18          	mov    %rsi,0x18(%rdi)
    8bb7:	c3                   	ret    
    8bb8:	b8 01 00 00 00       	mov    $0x1,%eax
    8bbd:	c3                   	ret    
    8bbe:	49 b9 93 71 00 00 00 	movabs $0x7193,%r9
    8bc5:	00 00 00 
    8bc8:	41 57                	push   %r15
    8bca:	49 89 f0             	mov    %rsi,%r8
    8bcd:	41 56                	push   %r14
    8bcf:	41 55                	push   %r13
    8bd1:	49 89 fd             	mov    %rdi,%r13
    8bd4:	41 54                	push   %r12
    8bd6:	55                   	push   %rbp
    8bd7:	53                   	push   %rbx
    8bd8:	48 83 ec 18          	sub    $0x18,%rsp
    8bdc:	48 8b 6f 18          	mov    0x18(%rdi),%rbp
    8be0:	48 8b 5f 40          	mov    0x40(%rdi),%rbx
    8be4:	4c 8b 7f 50          	mov    0x50(%rdi),%r15
    8be8:	48 29 eb             	sub    %rbp,%rbx
    8beb:	49 89 ec             	mov    %rbp,%r12
    8bee:	48 39 d3             	cmp    %rdx,%rbx
    8bf1:	48 0f 47 da          	cmova  %rdx,%rbx
    8bf5:	49 c1 ec 09          	shr    $0x9,%r12
    8bf9:	81 e5 ff 01 00 00    	and    $0x1ff,%ebp
    8bff:	45 31 f6             	xor    %r14d,%r14d
    8c02:	49 8b 47 08          	mov    0x8(%r15),%rax
    8c06:	48 85 db             	test   %rbx,%rbx
    8c09:	0f 84 90 00 00 00    	je     0x8c9f
    8c0f:	48 85 c0             	test   %rax,%rax
    8c12:	0f 84 87 00 00 00    	je     0x8c9f
    8c18:	4c 39 e0             	cmp    %r12,%rax
    8c1b:	76 72                	jbe    0x8c8f
    8c1d:	48 8d 94 2b ff 01 00 	lea    0x1ff(%rbx,%rbp,1),%rdx
    8c24:	00 
    8c25:	4c 29 e0             	sub    %r12,%rax
    8c28:	48 89 d9             	mov    %rbx,%rcx
    8c2b:	48 c1 ea 09          	shr    $0x9,%rdx
    8c2f:	48 39 c2             	cmp    %rax,%rdx
    8c32:	76 0a                	jbe    0x8c3e
    8c34:	48 c1 e0 09          	shl    $0x9,%rax
    8c38:	48 29 e8             	sub    %rbp,%rax
    8c3b:	48 89 c1             	mov    %rax,%rcx
    8c3e:	49 8b 37             	mov    (%r15),%rsi
    8c41:	49 8b 45 08          	mov    0x8(%r13),%rax
    8c45:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    8c4a:	48 89 ea             	mov    %rbp,%rdx
    8c4d:	48 89 0c 24          	mov    %rcx,(%rsp)
    8c51:	4c 01 e6             	add    %r12,%rsi
    8c54:	48 8b 38             	mov    (%rax),%rdi
    8c57:	41 ff d1             	call   *%r9
    8c5a:	85 c0                	test   %eax,%eax
    8c5c:	75 3d                	jne    0x8c9b
    8c5e:	48 8b 0c 24          	mov    (%rsp),%rcx
    8c62:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    8c67:	49 b9 93 71 00 00 00 	movabs $0x7193,%r9
    8c6e:	00 00 00 
    8c71:	49 01 ce             	add    %rcx,%r14
    8c74:	48 29 cb             	sub    %rcx,%rbx
    8c77:	48 01 e9             	add    %rbp,%rcx
    8c7a:	48 89 c8             	mov    %rcx,%rax
    8c7d:	81 e1 ff 01 00 00    	and    $0x1ff,%ecx
    8c83:	48 c1 e8 09          	shr    $0x9,%rax
    8c87:	48 89 cd             	mov    %rcx,%rbp
    8c8a:	49 29 c4             	sub    %rax,%r12
    8c8d:	eb 03                	jmp    0x8c92
    8c8f:	49 29 c4             	sub    %rax,%r12
    8c92:	49 83 c7 10          	add    $0x10,%r15
    8c96:	e9 67 ff ff ff       	jmp    0x8c02
    8c9b:	49 83 ce ff          	or     $0xffffffffffffffff,%r14
    8c9f:	48 83 c4 18          	add    $0x18,%rsp
    8ca3:	4c 89 f0             	mov    %r14,%rax
    8ca6:	5b                   	pop    %rbx
    8ca7:	5d                   	pop    %rbp
    8ca8:	41 5c                	pop    %r12
    8caa:	41 5d                	pop    %r13
    8cac:	41 5e                	pop    %r14
    8cae:	41 5f                	pop    %r15
    8cb0:	c3                   	ret    
    8cb1:	41 57                	push   %r15
    8cb3:	49 bf 59 98 00 00 00 	movabs $0x9859,%r15
    8cba:	00 00 00 
    8cbd:	41 56                	push   %r14
    8cbf:	41 55                	push   %r13
    8cc1:	49 89 f5             	mov    %rsi,%r13
    8cc4:	41 54                	push   %r12
    8cc6:	49 89 fc             	mov    %rdi,%r12
    8cc9:	55                   	push   %rbp
    8cca:	31 ed                	xor    %ebp,%ebp
    8ccc:	53                   	push   %rbx
    8ccd:	48 83 ec 28          	sub    $0x28,%rsp
    8cd1:	48 8b 47 08          	mov    0x8(%rdi),%rax
    8cd5:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    8cda:	4c 8b 30             	mov    (%rax),%r14
    8cdd:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    8ce2:	be 2c 00 00 00       	mov    $0x2c,%esi
    8ce7:	8d 5d 01             	lea    0x1(%rbp),%ebx
    8cea:	41 ff d7             	call   *%r15
    8ced:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    8cf2:	48 85 c0             	test   %rax,%rax
    8cf5:	74 0c                	je     0x8d03
    8cf7:	48 ff c0             	inc    %rax
    8cfa:	89 dd                	mov    %ebx,%ebp
    8cfc:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    8d01:	eb da                	jmp    0x8cdd
    8d03:	8d 7d 02             	lea    0x2(%rbp),%edi
    8d06:	be 10 00 00 00       	mov    $0x10,%esi
    8d0b:	48 b8 5b 5b 00 00 00 	movabs $0x5b5b,%rax
    8d12:	00 00 00 
    8d15:	ff d0                	call   *%rax
    8d17:	48 89 c5             	mov    %rax,%rbp
    8d1a:	31 c0                	xor    %eax,%eax
    8d1c:	48 85 ed             	test   %rbp,%rbp
    8d1f:	0f 84 57 01 00 00    	je     0x8e7c
    8d25:	41 8b 46 18          	mov    0x18(%r14),%eax
    8d29:	48 c1 e3 04          	shl    $0x4,%rbx
    8d2d:	4d 8b 7e 10          	mov    0x10(%r14),%r15
    8d31:	4c 89 ef             	mov    %r13,%rdi
    8d34:	49 c7 44 24 40 00 00 	movq   $0x0,0x40(%r12)
    8d3b:	00 00 
    8d3d:	49 be 80 aa 01 00 00 	movabs $0x1aa80,%r14
    8d44:	00 00 00 
    8d47:	8d 48 f7             	lea    -0x9(%rax),%ecx
    8d4a:	48 8d 04 2b          	lea    (%rbx,%rbp,1),%rax
    8d4e:	48 89 04 24          	mov    %rax,(%rsp)
    8d52:	49 d3 e7             	shl    %cl,%r15
    8d55:	4c 89 7c 24 08       	mov    %r15,0x8(%rsp)
    8d5a:	49 89 ef             	mov    %rbp,%r15
    8d5d:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    8d62:	4c 39 3c 24          	cmp    %r15,(%rsp)
    8d66:	0f 84 f5 00 00 00    	je     0x8e61
    8d6c:	80 3f 2b             	cmpb   $0x2b,(%rdi)
    8d6f:	74 4b                	je     0x8dbc
    8d71:	31 d2                	xor    %edx,%edx
    8d73:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
    8d78:	48 b8 47 9b 00 00 00 	movabs $0x9b47,%rax
    8d7f:	00 00 00 
    8d82:	ff d0                	call   *%rax
    8d84:	41 83 3e 00          	cmpl   $0x0,(%r14)
    8d88:	49 89 07             	mov    %rax,(%r15)
    8d8b:	74 25                	je     0x8db2
    8d8d:	4c 89 ea             	mov    %r13,%rdx
    8d90:	bf 07 00 00 00       	mov    $0x7,%edi
    8d95:	31 c0                	xor    %eax,%eax
    8d97:	48 be 6d d2 00 00 00 	movabs $0xd26d,%rsi
    8d9e:	00 00 00 
    8da1:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    8da8:	00 00 00 
    8dab:	ff d1                	call   *%rcx
    8dad:	e9 b8 00 00 00       	jmp    0x8e6a
    8db2:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    8db7:	80 38 2b             	cmpb   $0x2b,(%rax)
    8dba:	75 d1                	jne    0x8d8d
    8dbc:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    8dc1:	31 d2                	xor    %edx,%edx
    8dc3:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
    8dc8:	4c 89 fb             	mov    %r15,%rbx
    8dcb:	48 8d 78 01          	lea    0x1(%rax),%rdi
    8dcf:	48 b8 48 a0 00 00 00 	movabs $0xa048,%rax
    8dd6:	00 00 00 
    8dd9:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    8dde:	ff d0                	call   *%rax
    8de0:	41 83 3e 00          	cmpl   $0x0,(%r14)
    8de4:	49 89 47 08          	mov    %rax,0x8(%r15)
    8de8:	75 a3                	jne    0x8d8d
    8dea:	48 85 c0             	test   %rax,%rax
    8ded:	74 9e                	je     0x8d8d
    8def:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    8df4:	0f be 38             	movsbl (%rax),%edi
    8df7:	40 84 ff             	test   %dil,%dil
    8dfa:	74 1a                	je     0x8e16
    8dfc:	40 80 ff 2c          	cmp    $0x2c,%dil
    8e00:	74 14                	je     0x8e16
    8e02:	48 b8 80 98 00 00 00 	movabs $0x9880,%rax
    8e09:	00 00 00 
    8e0c:	ff d0                	call   *%rax
    8e0e:	85 c0                	test   %eax,%eax
    8e10:	0f 84 77 ff ff ff    	je     0x8d8d
    8e16:	49 8b 47 08          	mov    0x8(%r15),%rax
    8e1a:	48 8b 13             	mov    (%rbx),%rdx
    8e1d:	49 83 c7 10          	add    $0x10,%r15
    8e21:	48 01 c2             	add    %rax,%rdx
    8e24:	48 3b 54 24 08       	cmp    0x8(%rsp),%rdx
    8e29:	76 1f                	jbe    0x8e4a
    8e2b:	48 be 84 d2 00 00 00 	movabs $0xd284,%rsi
    8e32:	00 00 00 
    8e35:	bf 07 00 00 00       	mov    $0x7,%edi
    8e3a:	31 c0                	xor    %eax,%eax
    8e3c:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    8e43:	00 00 00 
    8e46:	ff d2                	call   *%rdx
    8e48:	eb 20                	jmp    0x8e6a
    8e4a:	48 c1 e0 09          	shl    $0x9,%rax
    8e4e:	49 01 44 24 40       	add    %rax,0x40(%r12)
    8e53:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    8e58:	48 8d 78 01          	lea    0x1(%rax),%rdi
    8e5c:	e9 fc fe ff ff       	jmp    0x8d5d
    8e61:	49 89 6c 24 50       	mov    %rbp,0x50(%r12)
    8e66:	31 c0                	xor    %eax,%eax
    8e68:	eb 12                	jmp    0x8e7c
    8e6a:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    8e71:	00 00 00 
    8e74:	48 89 ef             	mov    %rbp,%rdi
    8e77:	ff d0                	call   *%rax
    8e79:	41 8b 06             	mov    (%r14),%eax
    8e7c:	48 83 c4 28          	add    $0x28,%rsp
    8e80:	5b                   	pop    %rbx
    8e81:	5d                   	pop    %rbp
    8e82:	41 5c                	pop    %r12
    8e84:	41 5d                	pop    %r13
    8e86:	41 5e                	pop    %r14
    8e88:	41 5f                	pop    %r15
    8e8a:	c3                   	ret    
    8e8b:	41 57                	push   %r15
    8e8d:	41 56                	push   %r14
    8e8f:	41 55                	push   %r13
    8e91:	41 54                	push   %r12
    8e93:	55                   	push   %rbp
    8e94:	53                   	push   %rbx
    8e95:	48 89 fb             	mov    %rdi,%rbx
    8e98:	51                   	push   %rcx
    8e99:	48 83 3f 00          	cmpq   $0x0,(%rdi)
    8e9d:	0f 84 87 01 00 00    	je     0x902a
    8ea3:	48 b8 30 b5 01 00 00 	movabs $0x1b530,%rax
    8eaa:	00 00 00 
    8ead:	49 bf 9d d2 00 00 00 	movabs $0xd29d,%r15
    8eb4:	00 00 00 
    8eb7:	48 8b 28             	mov    (%rax),%rbp
    8eba:	48 85 ed             	test   %rbp,%rbp
    8ebd:	0f 84 c4 00 00 00    	je     0x8f87
    8ec3:	31 c0                	xor    %eax,%eax
    8ec5:	4c 8b 45 10          	mov    0x10(%rbp),%r8
    8ec9:	4c 89 f9             	mov    %r15,%rcx
    8ecc:	be 38 00 00 00       	mov    $0x38,%esi
    8ed1:	49 be ae d2 00 00 00 	movabs $0xd2ae,%r14
    8ed8:	00 00 00 
    8edb:	49 bd b1 d2 00 00 00 	movabs $0xd2b1,%r13
    8ee2:	00 00 00 
    8ee5:	49 bc b7 a6 00 00 00 	movabs $0xa6b7,%r12
    8eec:	00 00 00 
    8eef:	4c 89 f2             	mov    %r14,%rdx
    8ef2:	4c 89 ef             	mov    %r13,%rdi
    8ef5:	41 ff d4             	call   *%r12
    8ef8:	31 c9                	xor    %ecx,%ecx
    8efa:	48 89 df             	mov    %rbx,%rdi
    8efd:	48 ba b8 8b 00 00 00 	movabs $0x8bb8,%rdx
    8f04:	00 00 00 
    8f07:	48 be bb d2 00 00 00 	movabs $0xd2bb,%rsi
    8f0e:	00 00 00 
    8f11:	ff 55 18             	call   *0x18(%rbp)
    8f14:	49 ba 80 aa 01 00 00 	movabs $0x1aa80,%r10
    8f1b:	00 00 00 
    8f1e:	41 83 3a 00          	cmpl   $0x0,(%r10)
    8f22:	0f 84 33 01 00 00    	je     0x905b
    8f28:	48 b8 c4 86 00 00 00 	movabs $0x86c4,%rax
    8f2f:	00 00 00 
    8f32:	ff d0                	call   *%rax
    8f34:	4c 8b 45 10          	mov    0x10(%rbp),%r8
    8f38:	4c 89 f2             	mov    %r14,%rdx
    8f3b:	be 4e 00 00 00       	mov    $0x4e,%esi
    8f40:	48 b9 bd d2 00 00 00 	movabs $0xd2bd,%rcx
    8f47:	00 00 00 
    8f4a:	4c 89 ef             	mov    %r13,%rdi
    8f4d:	31 c0                	xor    %eax,%eax
    8f4f:	41 ff d4             	call   *%r12
    8f52:	48 b8 3a 87 00 00 00 	movabs $0x873a,%rax
    8f59:	00 00 00 
    8f5c:	ff d0                	call   *%rax
    8f5e:	49 ba 80 aa 01 00 00 	movabs $0x1aa80,%r10
    8f65:	00 00 00 
    8f68:	41 8b 02             	mov    (%r10),%eax
    8f6b:	83 e0 fd             	and    $0xfffffffd,%eax
    8f6e:	83 f8 09             	cmp    $0x9,%eax
    8f71:	0f 85 e2 00 00 00    	jne    0x9059
    8f77:	41 c7 02 00 00 00 00 	movl   $0x0,(%r10)
    8f7e:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
    8f82:	e9 33 ff ff ff       	jmp    0x8eba
    8f87:	49 bd 28 b5 01 00 00 	movabs $0x1b528,%r13
    8f8e:	00 00 00 
    8f91:	49 83 7d 00 00       	cmpq   $0x0,0x0(%r13)
    8f96:	0f 84 a0 00 00 00    	je     0x903c
    8f9c:	49 bc 38 b5 01 00 00 	movabs $0x1b538,%r12
    8fa3:	00 00 00 
    8fa6:	41 83 3c 24 00       	cmpl   $0x0,(%r12)
    8fab:	0f 85 8b 00 00 00    	jne    0x903c
    8fb1:	41 c7 04 24 01 00 00 	movl   $0x1,(%r12)
    8fb8:	00 
    8fb9:	49 be b8 8b 00 00 00 	movabs $0x8bb8,%r14
    8fc0:	00 00 00 
    8fc3:	41 ff 55 00          	call   *0x0(%r13)
    8fc7:	85 c0                	test   %eax,%eax
    8fc9:	74 59                	je     0x9024
    8fcb:	48 b8 30 b5 01 00 00 	movabs $0x1b530,%rax
    8fd2:	00 00 00 
    8fd5:	31 c9                	xor    %ecx,%ecx
    8fd7:	4c 89 f2             	mov    %r14,%rdx
    8fda:	48 be bb d2 00 00 00 	movabs $0xd2bb,%rsi
    8fe1:	00 00 00 
    8fe4:	4c 8b 38             	mov    (%rax),%r15
    8fe7:	48 89 df             	mov    %rbx,%rdi
    8fea:	41 ff 57 18          	call   *0x18(%r15)
    8fee:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    8ff5:	00 00 
    8ff7:	85 c0                	test   %eax,%eax
    8ff9:	75 09                	jne    0x9004
    8ffb:	41 ff 0c 24          	decl   (%r12)
    8fff:	4c 89 fd             	mov    %r15,%rbp
    9002:	eb 57                	jmp    0x905b
    9004:	83 e0 fd             	and    $0xfffffffd,%eax
    9007:	83 f8 09             	cmp    $0x9,%eax
    900a:	74 06                	je     0x9012
    900c:	41 ff 0c 24          	decl   (%r12)
    9010:	eb 49                	jmp    0x905b
    9012:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    9019:	00 00 00 
    901c:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    9022:	eb 9f                	jmp    0x8fc3
    9024:	41 ff 0c 24          	decl   (%r12)
    9028:	eb 12                	jmp    0x903c
    902a:	48 8b 47 08          	mov    0x8(%rdi),%rax
    902e:	48 85 c0             	test   %rax,%rax
    9031:	74 09                	je     0x903c
    9033:	48 8b 68 38          	mov    0x38(%rax),%rbp
    9037:	48 85 ed             	test   %rbp,%rbp
    903a:	75 1f                	jne    0x905b
    903c:	48 be d3 d2 00 00 00 	movabs $0xd2d3,%rsi
    9043:	00 00 00 
    9046:	bf 08 00 00 00       	mov    $0x8,%edi
    904b:	31 c0                	xor    %eax,%eax
    904d:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    9054:	00 00 00 
    9057:	ff d2                	call   *%rdx
    9059:	31 ed                	xor    %ebp,%ebp
    905b:	5a                   	pop    %rdx
    905c:	48 89 e8             	mov    %rbp,%rax
    905f:	5b                   	pop    %rbx
    9060:	5d                   	pop    %rbp
    9061:	41 5c                	pop    %r12
    9063:	41 5d                	pop    %r13
    9065:	41 5e                	pop    %r14
    9067:	41 5f                	pop    %r15
    9069:	c3                   	ret    
    906a:	41 54                	push   %r12
    906c:	49 89 fc             	mov    %rdi,%r12
    906f:	55                   	push   %rbp
    9070:	48 bd 06 98 00 00 00 	movabs $0x9806,%rbp
    9077:	00 00 00 
    907a:	53                   	push   %rbx
    907b:	48 89 f3             	mov    %rsi,%rbx
    907e:	4d 85 e4             	test   %r12,%r12
    9081:	74 14                	je     0x9097
    9083:	49 8b 7c 24 10       	mov    0x10(%r12),%rdi
    9088:	48 89 de             	mov    %rbx,%rsi
    908b:	ff d5                	call   *%rbp
    908d:	85 c0                	test   %eax,%eax
    908f:	74 06                	je     0x9097
    9091:	4d 8b 24 24          	mov    (%r12),%r12
    9095:	eb e7                	jmp    0x907e
    9097:	4c 89 e0             	mov    %r12,%rax
    909a:	5b                   	pop    %rbx
    909b:	5d                   	pop    %rbp
    909c:	41 5c                	pop    %r12
    909e:	c3                   	ret    
    909f:	48 8b 07             	mov    (%rdi),%rax
    90a2:	48 89 7e 08          	mov    %rdi,0x8(%rsi)
    90a6:	48 85 c0             	test   %rax,%rax
    90a9:	74 04                	je     0x90af
    90ab:	48 89 70 08          	mov    %rsi,0x8(%rax)
    90af:	48 89 06             	mov    %rax,(%rsi)
    90b2:	48 89 37             	mov    %rsi,(%rdi)
    90b5:	c3                   	ret    
    90b6:	48 8b 47 08          	mov    0x8(%rdi),%rax
    90ba:	48 85 c0             	test   %rax,%rax
    90bd:	74 06                	je     0x90c5
    90bf:	48 8b 17             	mov    (%rdi),%rdx
    90c2:	48 89 10             	mov    %rdx,(%rax)
    90c5:	48 8b 17             	mov    (%rdi),%rdx
    90c8:	48 85 d2             	test   %rdx,%rdx
    90cb:	74 04                	je     0x90d1
    90cd:	48 89 42 08          	mov    %rax,0x8(%rdx)
    90d1:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    90d8:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
    90df:	00 
    90e0:	c3                   	ret    
    90e1:	48 b8 98 b7 01 00 00 	movabs $0x1b798,%rax
    90e8:	00 00 00 
    90eb:	41 54                	push   %r12
    90ed:	53                   	push   %rbx
    90ee:	89 fb                	mov    %edi,%ebx
    90f0:	52                   	push   %rdx
    90f1:	4c 8b 20             	mov    (%rax),%r12
    90f4:	4d 85 e4             	test   %r12,%r12
    90f7:	74 17                	je     0x9110
    90f9:	49 8b 44 24 58       	mov    0x58(%r12),%rax
    90fe:	48 85 c0             	test   %rax,%rax
    9101:	74 07                	je     0x910a
    9103:	89 de                	mov    %ebx,%esi
    9105:	4c 89 e7             	mov    %r12,%rdi
    9108:	ff d0                	call   *%rax
    910a:	4d 8b 24 24          	mov    (%r12),%r12
    910e:	eb e4                	jmp    0x90f4
    9110:	58                   	pop    %rax
    9111:	5b                   	pop    %rbx
    9112:	41 5c                	pop    %r12
    9114:	c3                   	ret    
    9115:	48 b8 37 9a 00 00 00 	movabs $0x9a37,%rax
    911c:	00 00 00 
    911f:	55                   	push   %rbp
    9120:	48 89 f5             	mov    %rsi,%rbp
    9123:	48 89 f7             	mov    %rsi,%rdi
    9126:	ff d0                	call   *%rax
    9128:	80 7d 00 28          	cmpb   $0x28,0x0(%rbp)
    912c:	75 1c                	jne    0x914a
    912e:	80 7c 05 ff 29       	cmpb   $0x29,-0x1(%rbp,%rax,1)
    9133:	75 15                	jne    0x914a
    9135:	48 8d 70 fe          	lea    -0x2(%rax),%rsi
    9139:	48 8d 7d 01          	lea    0x1(%rbp),%rdi
    913d:	5d                   	pop    %rbp
    913e:	48 b8 93 9a 00 00 00 	movabs $0x9a93,%rax
    9145:	00 00 00 
    9148:	ff e0                	jmp    *%rax
    914a:	48 b8 48 9a 00 00 00 	movabs $0x9a48,%rax
    9151:	00 00 00 
    9154:	48 89 ef             	mov    %rbp,%rdi
    9157:	5d                   	pop    %rbp
    9158:	ff e0                	jmp    *%rax
    915a:	48 a1 48 f8 00 00 00 	movabs 0xf848,%rax
    9161:	00 00 00 
    9164:	48 85 c0             	test   %rax,%rax
    9167:	74 0c                	je     0x9175
    9169:	81 38 6d 69 6d 67    	cmpl   $0x676d696d,(%rax)
    916f:	75 04                	jne    0x9175
    9171:	48 03 40 10          	add    0x10(%rax),%rax
    9175:	c3                   	ret    
    9176:	48 b8 7a 12 00 00 00 	movabs $0x127a,%rax
    917d:	00 00 00 
    9180:	41 57                	push   %r15
    9182:	41 56                	push   %r14
    9184:	41 55                	push   %r13
    9186:	41 54                	push   %r12
    9188:	55                   	push   %rbp
    9189:	53                   	push   %rbx
    918a:	48 bb e1 90 00 00 00 	movabs $0x90e1,%rbx
    9191:	00 00 00 
    9194:	48 83 ec 28          	sub    $0x28,%rsp
    9198:	ff d0                	call   *%rax
    919a:	bf 02 00 00 00       	mov    $0x2,%edi
    919f:	ff d3                	call   *%rbx
    91a1:	31 c0                	xor    %eax,%eax
    91a3:	48 ba 0a a6 00 00 00 	movabs $0xa60a,%rdx
    91aa:	00 00 00 
    91ad:	48 bf f1 d2 00 00 00 	movabs $0xd2f1,%rdi
    91b4:	00 00 00 
    91b7:	ff d2                	call   *%rdx
    91b9:	31 ff                	xor    %edi,%edi
    91bb:	ff d3                	call   *%rbx
    91bd:	48 bb 48 f8 00 00 00 	movabs $0xf848,%rbx
    91c4:	00 00 00 
    91c7:	48 b8 7b bf 00 00 00 	movabs $0xbf7b,%rax
    91ce:	00 00 00 
    91d1:	ff d0                	call   *%rax
    91d3:	48 8b 03             	mov    (%rbx),%rax
    91d6:	48 85 c0             	test   %rax,%rax
    91d9:	0f 84 91 00 00 00    	je     0x9270
    91df:	81 38 6d 69 6d 67    	cmpl   $0x676d696d,(%rax)
    91e5:	0f 85 85 00 00 00    	jne    0x9270
    91eb:	48 8b 68 08          	mov    0x8(%rax),%rbp
    91ef:	48 01 c5             	add    %rax,%rbp
    91f2:	48 85 ed             	test   %rbp,%rbp
    91f5:	74 79                	je     0x9270
    91f7:	48 8b 50 10          	mov    0x10(%rax),%rdx
    91fb:	48 01 c2             	add    %rax,%rdx
    91fe:	48 39 d5             	cmp    %rdx,%rbp
    9201:	73 6d                	jae    0x9270
    9203:	83 7d 00 02          	cmpl   $0x2,0x0(%rbp)
    9207:	8b 7d 04             	mov    0x4(%rbp),%edi
    920a:	74 0d                	je     0x9219
    920c:	48 83 c7 07          	add    $0x7,%rdi
    9210:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    9214:	48 01 fd             	add    %rdi,%rbp
    9217:	eb d9                	jmp    0x91f2
    9219:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    9220:	00 00 00 
    9223:	48 83 ef 07          	sub    $0x7,%rdi
    9227:	49 bc 40 b5 01 00 00 	movabs $0x1b540,%r12
    922e:	00 00 00 
    9231:	ff d0                	call   *%rax
    9233:	49 89 04 24          	mov    %rax,(%r12)
    9237:	48 89 c7             	mov    %rax,%rdi
    923a:	48 85 c0             	test   %rax,%rax
    923d:	75 0e                	jne    0x924d
    923f:	48 b8 a9 87 00 00 00 	movabs $0x87a9,%rax
    9246:	00 00 00 
    9249:	ff d0                	call   *%rax
    924b:	eb 23                	jmp    0x9270
    924d:	8b 55 04             	mov    0x4(%rbp),%edx
    9250:	48 8d 75 08          	lea    0x8(%rbp),%rsi
    9254:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    925b:	00 00 00 
    925e:	48 83 ea 08          	sub    $0x8,%rdx
    9262:	ff d0                	call   *%rax
    9264:	8b 45 04             	mov    0x4(%rbp),%eax
    9267:	49 8b 14 24          	mov    (%r12),%rdx
    926b:	c6 44 02 f8 00       	movb   $0x0,-0x8(%rdx,%rax,1)
    9270:	48 b8 90 bf 00 00 00 	movabs $0xbf90,%rax
    9277:	00 00 00 
    927a:	ff d0                	call   *%rax
    927c:	48 8b 2b             	mov    (%rbx),%rbp
    927f:	48 85 ed             	test   %rbp,%rbp
    9282:	75 25                	jne    0x92a9
    9284:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    928b:	00 00 
    928d:	48 8b 13             	mov    (%rbx),%rdx
    9290:	31 ed                	xor    %ebp,%ebp
    9292:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
    9299:	00 00 
    929b:	48 85 d2             	test   %rdx,%rdx
    929e:	0f 85 91 00 00 00    	jne    0x9335
    92a4:	e9 c5 00 00 00       	jmp    0x936e
    92a9:	81 7d 00 6d 69 6d 67 	cmpl   $0x676d696d,0x0(%rbp)
    92b0:	75 d2                	jne    0x9284
    92b2:	49 bc 90 80 00 00 00 	movabs $0x8090,%r12
    92b9:	00 00 00 
    92bc:	48 03 6d 08          	add    0x8(%rbp),%rbp
    92c0:	48 8b 03             	mov    (%rbx),%rax
    92c3:	48 85 ed             	test   %rbp,%rbp
    92c6:	74 bc                	je     0x9284
    92c8:	48 03 40 10          	add    0x10(%rax),%rax
    92cc:	48 39 c5             	cmp    %rax,%rbp
    92cf:	73 b3                	jae    0x9284
    92d1:	83 7d 00 00          	cmpl   $0x0,0x0(%rbp)
    92d5:	8b 75 04             	mov    0x4(%rbp),%esi
    92d8:	75 4b                	jne    0x9325
    92da:	48 83 ee 08          	sub    $0x8,%rsi
    92de:	48 8d 7d 08          	lea    0x8(%rbp),%rdi
    92e2:	41 ff d4             	call   *%r12
    92e5:	48 85 c0             	test   %rax,%rax
    92e8:	75 20                	jne    0x930a
    92ea:	48 be 80 a9 01 00 00 	movabs $0x1a980,%rsi
    92f1:	00 00 00 
    92f4:	48 bf 04 d3 00 00 00 	movabs $0xd304,%rdi
    92fb:	00 00 00 
    92fe:	48 ba 03 aa 00 00 00 	movabs $0xaa03,%rdx
    9305:	00 00 00 
    9308:	ff d2                	call   *%rdx
    930a:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    9311:	00 00 00 
    9314:	83 38 00             	cmpl   $0x0,(%rax)
    9317:	74 0c                	je     0x9325
    9319:	48 b8 a9 87 00 00 00 	movabs $0x87a9,%rax
    9320:	00 00 00 
    9323:	ff d0                	call   *%rax
    9325:	8b 45 04             	mov    0x4(%rbp),%eax
    9328:	48 83 c0 07          	add    $0x7,%rax
    932c:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    9330:	48 01 c5             	add    %rax,%rbp
    9333:	eb 8b                	jmp    0x92c0
    9335:	81 3a 6d 69 6d 67    	cmpl   $0x676d696d,(%rdx)
    933b:	75 31                	jne    0x936e
    933d:	48 8b 42 08          	mov    0x8(%rdx),%rax
    9341:	48 01 d0             	add    %rdx,%rax
    9344:	48 85 c0             	test   %rax,%rax
    9347:	74 25                	je     0x936e
    9349:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
    934d:	48 01 d1             	add    %rdx,%rcx
    9350:	48 39 c8             	cmp    %rcx,%rax
    9353:	73 19                	jae    0x936e
    9355:	83 38 03             	cmpl   $0x3,(%rax)
    9358:	75 04                	jne    0x935e
    935a:	48 8d 68 08          	lea    0x8(%rax),%rbp
    935e:	8b 48 04             	mov    0x4(%rax),%ecx
    9361:	48 83 c1 07          	add    $0x7,%rcx
    9365:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    9369:	48 01 c8             	add    %rcx,%rax
    936c:	eb d6                	jmp    0x9344
    936e:	49 bd 07 d3 00 00 00 	movabs $0xd307,%r13
    9375:	00 00 00 
    9378:	31 f6                	xor    %esi,%esi
    937a:	48 ba 15 91 00 00 00 	movabs $0x9115,%rdx
    9381:	00 00 00 
    9384:	48 b8 9b 85 00 00 00 	movabs $0x859b,%rax
    938b:	00 00 00 
    938e:	4c 89 ef             	mov    %r13,%rdi
    9391:	ff d0                	call   *%rax
    9393:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
    9398:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    939d:	48 b8 31 3f 00 00 00 	movabs $0x3f31,%rax
    93a4:	00 00 00 
    93a7:	ff d0                	call   *%rax
    93a9:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    93ae:	48 85 f6             	test   %rsi,%rsi
    93b1:	74 6e                	je     0x9421
    93b3:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    93b8:	48 85 d2             	test   %rdx,%rdx
    93bb:	75 0a                	jne    0x93c7
    93bd:	48 ba f0 d2 00 00 00 	movabs $0xd2f0,%rdx
    93c4:	00 00 00 
    93c7:	48 bf 0c d3 00 00 00 	movabs $0xd30c,%rdi
    93ce:	00 00 00 
    93d1:	31 c0                	xor    %eax,%eax
    93d3:	48 b9 a8 a8 00 00 00 	movabs $0xa8a8,%rcx
    93da:	00 00 00 
    93dd:	ff d1                	call   *%rcx
    93df:	49 89 c4             	mov    %rax,%r12
    93e2:	48 85 c0             	test   %rax,%rax
    93e5:	74 3a                	je     0x9421
    93e7:	49 be 13 d3 00 00 00 	movabs $0xd313,%r14
    93ee:	00 00 00 
    93f1:	48 89 c6             	mov    %rax,%rsi
    93f4:	48 b8 1f 83 00 00 00 	movabs $0x831f,%rax
    93fb:	00 00 00 
    93fe:	4c 89 f7             	mov    %r14,%rdi
    9401:	ff d0                	call   *%rax
    9403:	4c 89 f7             	mov    %r14,%rdi
    9406:	48 b8 fd 85 00 00 00 	movabs $0x85fd,%rax
    940d:	00 00 00 
    9410:	ff d0                	call   *%rax
    9412:	4c 89 e7             	mov    %r12,%rdi
    9415:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    941c:	00 00 00 
    941f:	ff d0                	call   *%rax
    9421:	48 85 ed             	test   %rbp,%rbp
    9424:	74 67                	je     0x948d
    9426:	45 31 e4             	xor    %r12d,%r12d
    9429:	80 7d 00 28          	cmpb   $0x28,0x0(%rbp)
    942d:	75 3d                	jne    0x946c
    942f:	be 29 00 00 00       	mov    $0x29,%esi
    9434:	48 89 ef             	mov    %rbp,%rdi
    9437:	48 b8 6d 98 00 00 00 	movabs $0x986d,%rax
    943e:	00 00 00 
    9441:	ff d0                	call   *%rax
    9443:	49 89 c4             	mov    %rax,%r12
    9446:	48 85 c0             	test   %rax,%rax
    9449:	74 21                	je     0x946c
    944b:	48 89 c6             	mov    %rax,%rsi
    944e:	48 8d 7d 01          	lea    0x1(%rbp),%rdi
    9452:	48 b8 93 9a 00 00 00 	movabs $0x9a93,%rax
    9459:	00 00 00 
    945c:	48 29 ee             	sub    %rbp,%rsi
    945f:	49 8d 6c 24 01       	lea    0x1(%r12),%rbp
    9464:	48 ff ce             	dec    %rsi
    9467:	ff d0                	call   *%rax
    9469:	49 89 c4             	mov    %rax,%r12
    946c:	80 7d 00 00          	cmpb   $0x0,0x0(%rbp)
    9470:	74 14                	je     0x9486
    9472:	48 b8 48 9a 00 00 00 	movabs $0x9a48,%rax
    9479:	00 00 00 
    947c:	48 89 ef             	mov    %rbp,%rdi
    947f:	ff d0                	call   *%rax
    9481:	48 89 c5             	mov    %rax,%rbp
    9484:	eb 02                	jmp    0x9488
    9486:	31 ed                	xor    %ebp,%ebp
    9488:	4d 85 e4             	test   %r12,%r12
    948b:	75 0a                	jne    0x9497
    948d:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    9492:	4d 85 e4             	test   %r12,%r12
    9495:	75 4c                	jne    0x94e3
    9497:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    949c:	48 85 ff             	test   %rdi,%rdi
    949f:	74 36                	je     0x94d7
    94a1:	41 8a 04 24          	mov    (%r12),%al
    94a5:	3c 2c                	cmp    $0x2c,%al
    94a7:	74 04                	je     0x94ad
    94a9:	84 c0                	test   %al,%al
    94ab:	75 2a                	jne    0x94d7
    94ad:	48 89 fe             	mov    %rdi,%rsi
    94b0:	8a 06                	mov    (%rsi),%al
    94b2:	84 c0                	test   %al,%al
    94b4:	0f 84 5c 02 00 00    	je     0x9716
    94ba:	3c 5c                	cmp    $0x5c,%al
    94bc:	75 0c                	jne    0x94ca
    94be:	80 7e 01 2c          	cmpb   $0x2c,0x1(%rsi)
    94c2:	75 0e                	jne    0x94d2
    94c4:	48 83 c6 02          	add    $0x2,%rsi
    94c8:	eb e6                	jmp    0x94b0
    94ca:	3c 2c                	cmp    $0x2c,%al
    94cc:	0f 84 e2 01 00 00    	je     0x96b4
    94d2:	48 ff c6             	inc    %rsi
    94d5:	eb d9                	jmp    0x94b0
    94d7:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    94de:	00 00 00 
    94e1:	ff d0                	call   *%rax
    94e3:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    94e8:	48 85 ed             	test   %rbp,%rbp
    94eb:	75 6f                	jne    0x955c
    94ed:	48 85 ff             	test   %rdi,%rdi
    94f0:	74 6a                	je     0x955c
    94f2:	48 b8 37 9a 00 00 00 	movabs $0x9a37,%rax
    94f9:	00 00 00 
    94fc:	ff d0                	call   *%rax
    94fe:	48 89 c5             	mov    %rax,%rbp
    9501:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    9506:	48 83 fd 01          	cmp    $0x1,%rbp
    950a:	76 49                	jbe    0x9555
    950c:	48 8d 4d ff          	lea    -0x1(%rbp),%rcx
    9510:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    9514:	80 3a 2f             	cmpb   $0x2f,(%rdx)
    9517:	75 08                	jne    0x9521
    9519:	c6 02 00             	movb   $0x0,(%rdx)
    951c:	48 89 cd             	mov    %rcx,%rbp
    951f:	eb e0                	jmp    0x9501
    9521:	48 83 fd 09          	cmp    $0x9,%rbp
    9525:	76 2e                	jbe    0x9555
    9527:	48 8d 7c 28 f6       	lea    -0xa(%rax,%rbp,1),%rdi
    952c:	ba 0a 00 00 00       	mov    $0xa,%edx
    9531:	48 be 1b d3 00 00 00 	movabs $0xd31b,%rsi
    9538:	00 00 00 
    953b:	48 b8 e1 97 00 00 00 	movabs $0x97e1,%rax
    9542:	00 00 00 
    9545:	ff d0                	call   *%rax
    9547:	85 c0                	test   %eax,%eax
    9549:	75 0a                	jne    0x9555
    954b:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    9550:	c6 44 28 f6 00       	movb   $0x0,-0xa(%rax,%rbp,1)
    9555:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
    955a:	eb 0c                	jmp    0x9568
    955c:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    9563:	00 00 00 
    9566:	ff d0                	call   *%rax
    9568:	49 be 12 5c 00 00 00 	movabs $0x5c12,%r14
    956f:	00 00 00 
    9572:	4d 85 e4             	test   %r12,%r12
    9575:	49 bf 26 d3 00 00 00 	movabs $0xd326,%r15
    957c:	00 00 00 
    957f:	74 62                	je     0x95e3
    9581:	48 ba f0 d2 00 00 00 	movabs $0xd2f0,%rdx
    9588:	00 00 00 
    958b:	48 85 ed             	test   %rbp,%rbp
    958e:	4c 89 e6             	mov    %r12,%rsi
    9591:	48 bf 0c d3 00 00 00 	movabs $0xd30c,%rdi
    9598:	00 00 00 
    959b:	48 b9 a8 a8 00 00 00 	movabs $0xa8a8,%rcx
    95a2:	00 00 00 
    95a5:	48 0f 45 d5          	cmovne %rbp,%rdx
    95a9:	31 c0                	xor    %eax,%eax
    95ab:	ff d1                	call   *%rcx
    95ad:	48 ba 1f 83 00 00 00 	movabs $0x831f,%rdx
    95b4:	00 00 00 
    95b7:	48 85 c0             	test   %rax,%rax
    95ba:	74 1f                	je     0x95db
    95bc:	48 89 c6             	mov    %rax,%rsi
    95bf:	4c 89 ff             	mov    %r15,%rdi
    95c2:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    95c7:	ff d2                	call   *%rdx
    95c9:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    95ce:	41 ff d6             	call   *%r14
    95d1:	48 ba 1f 83 00 00 00 	movabs $0x831f,%rdx
    95d8:	00 00 00 
    95db:	4c 89 e6             	mov    %r12,%rsi
    95de:	4c 89 ef             	mov    %r13,%rdi
    95e1:	ff d2                	call   *%rdx
    95e3:	4c 89 e7             	mov    %r12,%rdi
    95e6:	49 bc fd 85 00 00 00 	movabs $0x85fd,%r12
    95ed:	00 00 00 
    95f0:	41 ff d6             	call   *%r14
    95f3:	48 89 ef             	mov    %rbp,%rdi
    95f6:	48 bd a9 87 00 00 00 	movabs $0x87a9,%rbp
    95fd:	00 00 00 
    9600:	41 ff d6             	call   *%r14
    9603:	ff d5                	call   *%rbp
    9605:	4c 89 ef             	mov    %r13,%rdi
    9608:	41 ff d4             	call   *%r12
    960b:	4c 89 ff             	mov    %r15,%rdi
    960e:	41 ff d4             	call   *%r12
    9611:	48 83 3b 00          	cmpq   $0x0,(%rbx)
    9615:	74 11                	je     0x9628
    9617:	48 b8 48 f8 00 00 00 	movabs $0xf848,%rax
    961e:	00 00 00 
    9621:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    9628:	48 b8 ae 65 00 00 00 	movabs $0x65ae,%rax
    962f:	00 00 00 
    9632:	ff d0                	call   *%rax
    9634:	48 b8 40 b5 01 00 00 	movabs $0x1b540,%rax
    963b:	00 00 00 
    963e:	48 8b 38             	mov    (%rax),%rdi
    9641:	48 85 ff             	test   %rdi,%rdi
    9644:	74 0c                	je     0x9652
    9646:	48 b8 0a b1 00 00 00 	movabs $0xb10a,%rax
    964d:	00 00 00 
    9650:	ff d0                	call   *%rax
    9652:	49 bc 2d d3 00 00 00 	movabs $0xd32d,%r12
    9659:	00 00 00 
    965c:	48 b8 8a 81 00 00 00 	movabs $0x818a,%rax
    9663:	00 00 00 
    9666:	4c 89 e7             	mov    %r12,%rdi
    9669:	ff d0                	call   *%rax
    966b:	ff d5                	call   *%rbp
    966d:	4c 89 e6             	mov    %r12,%rsi
    9670:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    9677:	00 00 00 
    967a:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    9680:	48 b8 d8 f8 00 00 00 	movabs $0xf8d8,%rax
    9687:	00 00 00 
    968a:	48 8b 38             	mov    (%rax),%rdi
    968d:	48 b8 6a 90 00 00 00 	movabs $0x906a,%rax
    9694:	00 00 00 
    9697:	ff d0                	call   *%rax
    9699:	48 85 c0             	test   %rax,%rax
    969c:	74 0a                	je     0x96a8
    969e:	31 d2                	xor    %edx,%edx
    96a0:	31 f6                	xor    %esi,%esi
    96a2:	48 89 c7             	mov    %rax,%rdi
    96a5:	ff 50 20             	call   *0x20(%rax)
    96a8:	48 b8 47 b9 00 00 00 	movabs $0xb947,%rax
    96af:	00 00 00 
    96b2:	ff d0                	call   *%rax
    96b4:	48 b8 93 9a 00 00 00 	movabs $0x9a93,%rax
    96bb:	00 00 00 
    96be:	48 29 fe             	sub    %rdi,%rsi
    96c1:	ff d0                	call   *%rax
    96c3:	4c 89 e2             	mov    %r12,%rdx
    96c6:	48 bf 34 d3 00 00 00 	movabs $0xd334,%rdi
    96cd:	00 00 00 
    96d0:	48 b9 a8 a8 00 00 00 	movabs $0xa8a8,%rcx
    96d7:	00 00 00 
    96da:	49 89 c6             	mov    %rax,%r14
    96dd:	48 89 c6             	mov    %rax,%rsi
    96e0:	31 c0                	xor    %eax,%eax
    96e2:	ff d1                	call   *%rcx
    96e4:	4c 89 f7             	mov    %r14,%rdi
    96e7:	49 89 c7             	mov    %rax,%r15
    96ea:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    96f1:	00 00 00 
    96f4:	ff d0                	call   *%rax
    96f6:	49 be 12 5c 00 00 00 	movabs $0x5c12,%r14
    96fd:	00 00 00 
    9700:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    9705:	41 ff d6             	call   *%r14
    9708:	4c 89 e7             	mov    %r12,%rdi
    970b:	4d 89 fc             	mov    %r15,%r12
    970e:	41 ff d6             	call   *%r14
    9711:	e9 cd fd ff ff       	jmp    0x94e3
    9716:	48 89 fe             	mov    %rdi,%rsi
    9719:	4c 89 e2             	mov    %r12,%rdx
    971c:	31 c0                	xor    %eax,%eax
    971e:	48 bf 34 d3 00 00 00 	movabs $0xd334,%rdi
    9725:	00 00 00 
    9728:	48 b9 a8 a8 00 00 00 	movabs $0xa8a8,%rcx
    972f:	00 00 00 
    9732:	ff d1                	call   *%rcx
    9734:	49 89 c7             	mov    %rax,%r15
    9737:	eb bd                	jmp    0x96f6
    9739:	48 89 f8             	mov    %rdi,%rax
    973c:	c3                   	ret    
    973d:	4c 8b 87 00 01 00 00 	mov    0x100(%rdi),%r8
    9744:	49 39 f8             	cmp    %rdi,%r8
    9747:	74 0f                	je     0x9758
    9749:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    9750:	00 00 00 
    9753:	4c 89 c7             	mov    %r8,%rdi
    9756:	ff e0                	jmp    *%rax
    9758:	c3                   	ret    
    9759:	48 89 f8             	mov    %rdi,%rax
    975c:	48 39 f7             	cmp    %rsi,%rdi
    975f:	73 15                	jae    0x9776
    9761:	31 c9                	xor    %ecx,%ecx
    9763:	48 39 d1             	cmp    %rdx,%rcx
    9766:	74 0d                	je     0x9775
    9768:	40 8a 3c 0e          	mov    (%rsi,%rcx,1),%dil
    976c:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
    9770:	48 ff c1             	inc    %rcx
    9773:	eb ee                	jmp    0x9763
    9775:	c3                   	ret    
    9776:	48 8d 3c 17          	lea    (%rdi,%rdx,1),%rdi
    977a:	48 01 d6             	add    %rdx,%rsi
    977d:	31 c9                	xor    %ecx,%ecx
    977f:	48 f7 d2             	not    %rdx
    9782:	48 ff c9             	dec    %rcx
    9785:	48 39 ca             	cmp    %rcx,%rdx
    9788:	74 0a                	je     0x9794
    978a:	44 8a 04 0e          	mov    (%rsi,%rcx,1),%r8b
    978e:	44 88 04 0f          	mov    %r8b,(%rdi,%rcx,1)
    9792:	eb ee                	jmp    0x9782
    9794:	c3                   	ret    
    9795:	48 89 f8             	mov    %rdi,%rax
    9798:	31 d2                	xor    %edx,%edx
    979a:	8a 0c 16             	mov    (%rsi,%rdx,1),%cl
    979d:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
    97a0:	48 ff c2             	inc    %rdx
    97a3:	84 c9                	test   %cl,%cl
    97a5:	75 f3                	jne    0x979a
    97a7:	c3                   	ret    
    97a8:	53                   	push   %rbx
    97a9:	48 bb a0 e6 00 00 00 	movabs $0xe6a0,%rbx
    97b0:	00 00 00 
    97b3:	48 83 ec 10          	sub    $0x10,%rsp
    97b7:	48 a1 50 e5 00 00 00 	movabs 0xe550,%rax
    97be:	00 00 00 
    97c1:	ff d0                	call   *%rax
    97c3:	66 c7 44 24 0e 0a 00 	movw   $0xa,0xe(%rsp)
    97ca:	48 89 c7             	mov    %rax,%rdi
    97cd:	ff 13                	call   *(%rbx)
    97cf:	48 8d 7c 24 0e       	lea    0xe(%rsp),%rdi
    97d4:	ff 13                	call   *(%rbx)
    97d6:	48 83 c4 10          	add    $0x10,%rsp
    97da:	b8 01 00 00 00       	mov    $0x1,%eax
    97df:	5b                   	pop    %rbx
    97e0:	c3                   	ret    
    97e1:	31 c9                	xor    %ecx,%ecx
    97e3:	48 39 ca             	cmp    %rcx,%rdx
    97e6:	74 1b                	je     0x9803
    97e8:	8a 04 0f             	mov    (%rdi,%rcx,1),%al
    97eb:	48 ff c1             	inc    %rcx
    97ee:	44 8a 44 0e ff       	mov    -0x1(%rsi,%rcx,1),%r8b
    97f3:	44 38 c0             	cmp    %r8b,%al
    97f6:	74 eb                	je     0x97e3
    97f8:	45 0f b6 c0          	movzbl %r8b,%r8d
    97fc:	0f b6 c0             	movzbl %al,%eax
    97ff:	44 29 c0             	sub    %r8d,%eax
    9802:	c3                   	ret    
    9803:	31 c0                	xor    %eax,%eax
    9805:	c3                   	ret    
    9806:	31 c9                	xor    %ecx,%ecx
    9808:	0f b6 04 0f          	movzbl (%rdi,%rcx,1),%eax
    980c:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
    9810:	84 c0                	test   %al,%al
    9812:	74 0b                	je     0x981f
    9814:	48 ff c1             	inc    %rcx
    9817:	38 d0                	cmp    %dl,%al
    9819:	75 04                	jne    0x981f
    981b:	84 d2                	test   %dl,%dl
    981d:	75 e9                	jne    0x9808
    981f:	29 d0                	sub    %edx,%eax
    9821:	c3                   	ret    
    9822:	31 c0                	xor    %eax,%eax
    9824:	48 85 d2             	test   %rdx,%rdx
    9827:	74 2f                	je     0x9858
    9829:	45 31 c0             	xor    %r8d,%r8d
    982c:	48 ff ca             	dec    %rdx
    982f:	42 0f b6 04 07       	movzbl (%rdi,%r8,1),%eax
    9834:	42 0f b6 0c 06       	movzbl (%rsi,%r8,1),%ecx
    9839:	84 c0                	test   %al,%al
    983b:	74 19                	je     0x9856
    983d:	84 c9                	test   %cl,%cl
    983f:	74 15                	je     0x9856
    9841:	4c 39 c2             	cmp    %r8,%rdx
    9844:	41 0f 94 c1          	sete   %r9b
    9848:	38 c8                	cmp    %cl,%al
    984a:	41 0f 95 c2          	setne  %r10b
    984e:	49 ff c0             	inc    %r8
    9851:	45 08 d1             	or     %r10b,%r9b
    9854:	74 d9                	je     0x982f
    9856:	29 c8                	sub    %ecx,%eax
    9858:	c3                   	ret    
    9859:	48 89 f8             	mov    %rdi,%rax
    985c:	0f be 08             	movsbl (%rax),%ecx
    985f:	39 f1                	cmp    %esi,%ecx
    9861:	74 09                	je     0x986c
    9863:	48 ff c0             	inc    %rax
    9866:	84 c9                	test   %cl,%cl
    9868:	75 f2                	jne    0x985c
    986a:	31 c0                	xor    %eax,%eax
    986c:	c3                   	ret    
    986d:	31 c0                	xor    %eax,%eax
    986f:	0f be 0f             	movsbl (%rdi),%ecx
    9872:	39 f1                	cmp    %esi,%ecx
    9874:	48 0f 44 c7          	cmove  %rdi,%rax
    9878:	48 ff c7             	inc    %rdi
    987b:	84 c9                	test   %cl,%cl
    987d:	75 f0                	jne    0x986f
    987f:	c3                   	ret    
    9880:	89 f9                	mov    %edi,%ecx
    9882:	31 c0                	xor    %eax,%eax
    9884:	83 ff 20             	cmp    $0x20,%edi
    9887:	77 0f                	ja     0x9898
    9889:	b8 13 00 80 00       	mov    $0x800013,%eax
    988e:	48 c1 e0 09          	shl    $0x9,%rax
    9892:	48 d3 e8             	shr    %cl,%rax
    9895:	83 e0 01             	and    $0x1,%eax
    9898:	c3                   	ret    
    9899:	48 b8 80 98 00 00 00 	movabs $0x9880,%rax
    98a0:	00 00 00 
    98a3:	ff d0                	call   *%rax
    98a5:	85 c0                	test   %eax,%eax
    98a7:	75 25                	jne    0x98ce
    98a9:	83 ff 3b             	cmp    $0x3b,%edi
    98ac:	7f 17                	jg     0x98c5
    98ae:	83 ff 25             	cmp    $0x25,%edi
    98b1:	7e 20                	jle    0x98d3
    98b3:	b8 41 00 20 00       	mov    $0x200041,%eax
    98b8:	89 f9                	mov    %edi,%ecx
    98ba:	48 c1 e0 26          	shl    $0x26,%rax
    98be:	48 d3 e8             	shr    %cl,%rax
    98c1:	83 e0 01             	and    $0x1,%eax
    98c4:	c3                   	ret    
    98c5:	31 c0                	xor    %eax,%eax
    98c7:	83 ff 7c             	cmp    $0x7c,%edi
    98ca:	0f 94 c0             	sete   %al
    98cd:	c3                   	ret    
    98ce:	b8 01 00 00 00       	mov    $0x1,%eax
    98d3:	c3                   	ret    
    98d4:	49 89 f2             	mov    %rsi,%r10
    98d7:	48 89 fa             	mov    %rdi,%rdx
    98da:	48 be 99 98 00 00 00 	movabs $0x9899,%rsi
    98e1:	00 00 00 
    98e4:	0f be 3a             	movsbl (%rdx),%edi
    98e7:	ff d6                	call   *%rsi
    98e9:	41 89 c0             	mov    %eax,%r8d
    98ec:	85 c0                	test   %eax,%eax
    98ee:	74 05                	je     0x98f5
    98f0:	48 ff c2             	inc    %rdx
    98f3:	eb ef                	jmp    0x98e4
    98f5:	80 3a 00             	cmpb   $0x0,(%rdx)
    98f8:	74 58                	je     0x9952
    98fa:	4d 89 d1             	mov    %r10,%r9
    98fd:	44 8a 1a             	mov    (%rdx),%r11b
    9900:	45 84 db             	test   %r11b,%r11b
    9903:	74 17                	je     0x991c
    9905:	41 0f be fb          	movsbl %r11b,%edi
    9909:	ff d6                	call   *%rsi
    990b:	85 c0                	test   %eax,%eax
    990d:	75 0d                	jne    0x991c
    990f:	45 3a 19             	cmp    (%r9),%r11b
    9912:	75 20                	jne    0x9934
    9914:	48 ff c2             	inc    %rdx
    9917:	49 ff c1             	inc    %r9
    991a:	eb e1                	jmp    0x98fd
    991c:	41 0f be 39          	movsbl (%r9),%edi
    9920:	40 84 ff             	test   %dil,%dil
    9923:	74 27                	je     0x994c
    9925:	ff d6                	call   *%rsi
    9927:	85 c0                	test   %eax,%eax
    9929:	74 09                	je     0x9934
    992b:	eb 1f                	jmp    0x994c
    992d:	85 c0                	test   %eax,%eax
    992f:	75 0d                	jne    0x993e
    9931:	48 ff c2             	inc    %rdx
    9934:	0f be 3a             	movsbl (%rdx),%edi
    9937:	ff d6                	call   *%rsi
    9939:	40 84 ff             	test   %dil,%dil
    993c:	75 ef                	jne    0x992d
    993e:	0f be 3a             	movsbl (%rdx),%edi
    9941:	ff d6                	call   *%rsi
    9943:	85 c0                	test   %eax,%eax
    9945:	74 ae                	je     0x98f5
    9947:	48 ff c2             	inc    %rdx
    994a:	eb f2                	jmp    0x993e
    994c:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    9952:	44 89 c0             	mov    %r8d,%eax
    9955:	c3                   	ret    
    9956:	48 b8 53 84 00 00 00 	movabs $0x8453,%rax
    995d:	00 00 00 
    9960:	41 54                	push   %r12
    9962:	49 89 fc             	mov    %rdi,%r12
    9965:	48 bf 39 d3 00 00 00 	movabs $0xd339,%rdi
    996c:	00 00 00 
    996f:	55                   	push   %rbp
    9970:	53                   	push   %rbx
    9971:	ff d0                	call   *%rax
    9973:	48 89 c5             	mov    %rax,%rbp
    9976:	31 c0                	xor    %eax,%eax
    9978:	48 85 ed             	test   %rbp,%rbp
    997b:	74 36                	je     0x99b3
    997d:	48 be 3f d3 00 00 00 	movabs $0xd33f,%rsi
    9984:	00 00 00 
    9987:	48 89 ef             	mov    %rbp,%rdi
    998a:	48 bb d4 98 00 00 00 	movabs $0x98d4,%rbx
    9991:	00 00 00 
    9994:	ff d3                	call   *%rbx
    9996:	41 89 c0             	mov    %eax,%r8d
    9999:	b8 01 00 00 00       	mov    $0x1,%eax
    999e:	45 85 c0             	test   %r8d,%r8d
    99a1:	75 10                	jne    0x99b3
    99a3:	4c 89 e6             	mov    %r12,%rsi
    99a6:	48 89 ef             	mov    %rbp,%rdi
    99a9:	ff d3                	call   *%rbx
    99ab:	85 c0                	test   %eax,%eax
    99ad:	0f 95 c0             	setne  %al
    99b0:	0f b6 c0             	movzbl %al,%eax
    99b3:	5b                   	pop    %rbx
    99b4:	5d                   	pop    %rbp
    99b5:	41 5c                	pop    %r12
    99b7:	c3                   	ret    
    99b8:	49 89 f8             	mov    %rdi,%r8
    99bb:	48 89 d0             	mov    %rdx,%rax
    99be:	48 83 fa 17          	cmp    $0x17,%rdx
    99c2:	77 07                	ja     0x99cb
    99c4:	48 89 fa             	mov    %rdi,%rdx
    99c7:	31 c9                	xor    %ecx,%ecx
    99c9:	eb 5a                	jmp    0x9a25
    99cb:	31 c9                	xor    %ecx,%ecx
    99cd:	31 ff                	xor    %edi,%edi
    99cf:	44 0f b6 ce          	movzbl %sil,%r9d
    99d3:	4c 89 ca             	mov    %r9,%rdx
    99d6:	48 d3 e2             	shl    %cl,%rdx
    99d9:	83 c1 08             	add    $0x8,%ecx
    99dc:	48 09 d7             	or     %rdx,%rdi
    99df:	83 f9 40             	cmp    $0x40,%ecx
    99e2:	75 ef                	jne    0x99d3
    99e4:	4c 89 c2             	mov    %r8,%rdx
    99e7:	48 89 d1             	mov    %rdx,%rcx
    99ea:	83 e1 07             	and    $0x7,%ecx
    99ed:	74 0d                	je     0x99fc
    99ef:	40 88 32             	mov    %sil,(%rdx)
    99f2:	48 ff c2             	inc    %rdx
    99f5:	48 ff c8             	dec    %rax
    99f8:	75 ed                	jne    0x99e7
    99fa:	eb 37                	jmp    0x9a33
    99fc:	49 89 c1             	mov    %rax,%r9
    99ff:	49 29 c9             	sub    %rcx,%r9
    9a02:	49 83 f9 07          	cmp    $0x7,%r9
    9a06:	76 0a                	jbe    0x9a12
    9a08:	48 89 3c 0a          	mov    %rdi,(%rdx,%rcx,1)
    9a0c:	48 83 c1 08          	add    $0x8,%rcx
    9a10:	eb ea                	jmp    0x99fc
    9a12:	48 89 c1             	mov    %rax,%rcx
    9a15:	48 c1 e9 03          	shr    $0x3,%rcx
    9a19:	48 6b c9 f8          	imul   $0xfffffffffffffff8,%rcx,%rcx
    9a1d:	48 01 c8             	add    %rcx,%rax
    9a20:	48 29 ca             	sub    %rcx,%rdx
    9a23:	eb a2                	jmp    0x99c7
    9a25:	48 39 c1             	cmp    %rax,%rcx
    9a28:	74 09                	je     0x9a33
    9a2a:	40 88 34 0a          	mov    %sil,(%rdx,%rcx,1)
    9a2e:	48 ff c1             	inc    %rcx
    9a31:	eb f2                	jmp    0x9a25
    9a33:	4c 89 c0             	mov    %r8,%rax
    9a36:	c3                   	ret    
    9a37:	48 89 f8             	mov    %rdi,%rax
    9a3a:	80 38 00             	cmpb   $0x0,(%rax)
    9a3d:	74 05                	je     0x9a44
    9a3f:	48 ff c0             	inc    %rax
    9a42:	eb f6                	jmp    0x9a3a
    9a44:	48 29 f8             	sub    %rdi,%rax
    9a47:	c3                   	ret    
    9a48:	48 b8 37 9a 00 00 00 	movabs $0x9a37,%rax
    9a4f:	00 00 00 
    9a52:	41 54                	push   %r12
    9a54:	55                   	push   %rbp
    9a55:	48 89 fd             	mov    %rdi,%rbp
    9a58:	56                   	push   %rsi
    9a59:	ff d0                	call   *%rax
    9a5b:	4c 8d 60 01          	lea    0x1(%rax),%r12
    9a5f:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    9a66:	00 00 00 
    9a69:	4c 89 e7             	mov    %r12,%rdi
    9a6c:	ff d0                	call   *%rax
    9a6e:	48 85 c0             	test   %rax,%rax
    9a71:	74 19                	je     0x9a8c
    9a73:	59                   	pop    %rcx
    9a74:	48 89 c7             	mov    %rax,%rdi
    9a77:	4c 89 e2             	mov    %r12,%rdx
    9a7a:	48 89 ee             	mov    %rbp,%rsi
    9a7d:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    9a84:	00 00 00 
    9a87:	5d                   	pop    %rbp
    9a88:	41 5c                	pop    %r12
    9a8a:	ff e0                	jmp    *%rax
    9a8c:	5a                   	pop    %rdx
    9a8d:	31 c0                	xor    %eax,%eax
    9a8f:	5d                   	pop    %rbp
    9a90:	41 5c                	pop    %r12
    9a92:	c3                   	ret    
    9a93:	48 b8 37 9a 00 00 00 	movabs $0x9a37,%rax
    9a9a:	00 00 00 
    9a9d:	55                   	push   %rbp
    9a9e:	48 89 fd             	mov    %rdi,%rbp
    9aa1:	53                   	push   %rbx
    9aa2:	48 89 f3             	mov    %rsi,%rbx
    9aa5:	51                   	push   %rcx
    9aa6:	ff d0                	call   *%rax
    9aa8:	48 39 f0             	cmp    %rsi,%rax
    9aab:	48 0f 46 d8          	cmovbe %rax,%rbx
    9aaf:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    9ab6:	00 00 00 
    9ab9:	48 8d 7b 01          	lea    0x1(%rbx),%rdi
    9abd:	ff d0                	call   *%rax
    9abf:	49 89 c1             	mov    %rax,%r9
    9ac2:	48 85 c0             	test   %rax,%rax
    9ac5:	74 1a                	je     0x9ae1
    9ac7:	48 89 c7             	mov    %rax,%rdi
    9aca:	48 89 da             	mov    %rbx,%rdx
    9acd:	48 89 ee             	mov    %rbp,%rsi
    9ad0:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    9ad7:	00 00 00 
    9ada:	ff d0                	call   *%rax
    9adc:	41 c6 04 19 00       	movb   $0x0,(%r9,%rbx,1)
    9ae1:	5a                   	pop    %rdx
    9ae2:	4c 89 c8             	mov    %r9,%rax
    9ae5:	5b                   	pop    %rbx
    9ae6:	5d                   	pop    %rbp
    9ae7:	c3                   	ret    
    9ae8:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    9aed:	49 89 d0             	mov    %rdx,%r8
    9af0:	48 39 c7             	cmp    %rax,%rdi
    9af3:	77 1c                	ja     0x9b11
    9af5:	48 39 c6             	cmp    %rax,%rsi
    9af8:	77 17                	ja     0x9b11
    9afa:	48 85 d2             	test   %rdx,%rdx
    9afd:	74 0b                	je     0x9b0a
    9aff:	89 f8                	mov    %edi,%eax
    9b01:	31 d2                	xor    %edx,%edx
    9b03:	f7 f6                	div    %esi
    9b05:	89 d0                	mov    %edx,%eax
    9b07:	49 89 00             	mov    %rax,(%r8)
    9b0a:	89 f8                	mov    %edi,%eax
    9b0c:	31 d2                	xor    %edx,%edx
    9b0e:	f7 f6                	div    %esi
    9b10:	c3                   	ret    
    9b11:	ba 41 00 00 00       	mov    $0x41,%edx
    9b16:	31 c9                	xor    %ecx,%ecx
    9b18:	31 c0                	xor    %eax,%eax
    9b1a:	ff ca                	dec    %edx
    9b1c:	74 20                	je     0x9b3e
    9b1e:	48 01 c9             	add    %rcx,%rcx
    9b21:	48 85 ff             	test   %rdi,%rdi
    9b24:	79 04                	jns    0x9b2a
    9b26:	48 83 c9 01          	or     $0x1,%rcx
    9b2a:	48 01 c0             	add    %rax,%rax
    9b2d:	48 01 ff             	add    %rdi,%rdi
    9b30:	48 39 ce             	cmp    %rcx,%rsi
    9b33:	77 e5                	ja     0x9b1a
    9b35:	48 83 c8 01          	or     $0x1,%rax
    9b39:	48 29 f1             	sub    %rsi,%rcx
    9b3c:	eb dc                	jmp    0x9b1a
    9b3e:	4d 85 c0             	test   %r8,%r8
    9b41:	74 03                	je     0x9b46
    9b43:	49 89 08             	mov    %rcx,(%r8)
    9b46:	c3                   	ret    
    9b47:	49 b8 80 98 00 00 00 	movabs $0x9880,%r8
    9b4e:	00 00 00 
    9b51:	55                   	push   %rbp
    9b52:	48 89 fd             	mov    %rdi,%rbp
    9b55:	53                   	push   %rbx
    9b56:	48 89 f3             	mov    %rsi,%rbx
    9b59:	51                   	push   %rcx
    9b5a:	0f be 7d 00          	movsbl 0x0(%rbp),%edi
    9b5e:	41 ff d0             	call   *%r8
    9b61:	85 c0                	test   %eax,%eax
    9b63:	74 05                	je     0x9b6a
    9b65:	48 ff c5             	inc    %rbp
    9b68:	eb f0                	jmp    0x9b5a
    9b6a:	40 80 ff 30          	cmp    $0x30,%dil
    9b6e:	75 2f                	jne    0x9b9f
    9b70:	8a 4d 01             	mov    0x1(%rbp),%cl
    9b73:	80 f9 78             	cmp    $0x78,%cl
    9b76:	75 13                	jne    0x9b8b
    9b78:	f7 c2 ef ff ff ff    	test   $0xffffffef,%edx
    9b7e:	75 28                	jne    0x9ba8
    9b80:	48 83 c5 02          	add    $0x2,%rbp
    9b84:	ba 10 00 00 00       	mov    $0x10,%edx
    9b89:	eb 1d                	jmp    0x9ba8
    9b8b:	85 d2                	test   %edx,%edx
    9b8d:	75 19                	jne    0x9ba8
    9b8f:	83 e9 30             	sub    $0x30,%ecx
    9b92:	80 f9 08             	cmp    $0x8,%cl
    9b95:	19 d2                	sbb    %edx,%edx
    9b97:	83 e2 fe             	and    $0xfffffffe,%edx
    9b9a:	83 c2 0a             	add    $0xa,%edx
    9b9d:	eb 09                	jmp    0x9ba8
    9b9f:	85 d2                	test   %edx,%edx
    9ba1:	75 05                	jne    0x9ba8
    9ba3:	ba 0a 00 00 00       	mov    $0xa,%edx
    9ba8:	45 31 d2             	xor    %r10d,%r10d
    9bab:	48 63 f2             	movslq %edx,%rsi
    9bae:	44 0f be 4d 00       	movsbl 0x0(%rbp),%r9d
    9bb3:	45 84 c9             	test   %r9b,%r9b
    9bb6:	74 26                	je     0x9bde
    9bb8:	41 8d 51 bf          	lea    -0x41(%r9),%edx
    9bbc:	83 fa 19             	cmp    $0x19,%edx
    9bbf:	77 04                	ja     0x9bc5
    9bc1:	41 83 c1 20          	add    $0x20,%r9d
    9bc5:	41 83 e9 30          	sub    $0x30,%r9d
    9bc9:	4d 63 c9             	movslq %r9d,%r9
    9bcc:	49 83 f9 30          	cmp    $0x30,%r9
    9bd0:	76 06                	jbe    0x9bd8
    9bd2:	49 83 e9 27          	sub    $0x27,%r9
    9bd6:	eb 2c                	jmp    0x9c04
    9bd8:	49 83 f9 09          	cmp    $0x9,%r9
    9bdc:	76 26                	jbe    0x9c04
    9bde:	85 c0                	test   %eax,%eax
    9be0:	75 77                	jne    0x9c59
    9be2:	48 be 58 d3 00 00 00 	movabs $0xd358,%rsi
    9be9:	00 00 00 
    9bec:	bf 0a 00 00 00       	mov    $0xa,%edi
    9bf1:	31 c0                	xor    %eax,%eax
    9bf3:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    9bfa:	00 00 00 
    9bfd:	ff d2                	call   *%rdx
    9bff:	45 31 d2             	xor    %r10d,%r10d
    9c02:	eb 55                	jmp    0x9c59
    9c04:	4c 39 ce             	cmp    %r9,%rsi
    9c07:	76 d5                	jbe    0x9bde
    9c09:	48 b8 e8 9a 00 00 00 	movabs $0x9ae8,%rax
    9c10:	00 00 00 
    9c13:	4c 89 cf             	mov    %r9,%rdi
    9c16:	31 d2                	xor    %edx,%edx
    9c18:	48 f7 d7             	not    %rdi
    9c1b:	ff d0                	call   *%rax
    9c1d:	4c 39 d0             	cmp    %r10,%rax
    9c20:	73 23                	jae    0x9c45
    9c22:	48 be 43 d3 00 00 00 	movabs $0xd343,%rsi
    9c29:	00 00 00 
    9c2c:	bf 0b 00 00 00       	mov    $0xb,%edi
    9c31:	31 c0                	xor    %eax,%eax
    9c33:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    9c3a:	00 00 00 
    9c3d:	ff d2                	call   *%rdx
    9c3f:	49 83 ca ff          	or     $0xffffffffffffffff,%r10
    9c43:	eb 14                	jmp    0x9c59
    9c45:	4c 0f af d6          	imul   %rsi,%r10
    9c49:	48 ff c5             	inc    %rbp
    9c4c:	b8 01 00 00 00       	mov    $0x1,%eax
    9c51:	4d 01 ca             	add    %r9,%r10
    9c54:	e9 55 ff ff ff       	jmp    0x9bae
    9c59:	48 85 db             	test   %rbx,%rbx
    9c5c:	74 03                	je     0x9c61
    9c5e:	48 89 2b             	mov    %rbp,(%rbx)
    9c61:	5a                   	pop    %rdx
    9c62:	4c 89 d0             	mov    %r10,%rax
    9c65:	5b                   	pop    %rbx
    9c66:	5d                   	pop    %rbp
    9c67:	c3                   	ret    
    9c68:	41 57                	push   %r15
    9c6a:	48 89 f8             	mov    %rdi,%rax
    9c6d:	41 56                	push   %r14
    9c6f:	41 55                	push   %r13
    9c71:	41 54                	push   %r12
    9c73:	41 89 d4             	mov    %edx,%r12d
    9c76:	55                   	push   %rbp
    9c77:	48 89 fd             	mov    %rdi,%rbp
    9c7a:	53                   	push   %rbx
    9c7b:	48 89 f3             	mov    %rsi,%rbx
    9c7e:	48 89 ce             	mov    %rcx,%rsi
    9c81:	41 50                	push   %r8
    9c83:	49 b8 01 00 20 00 03 	movabs $0x25200300200001,%r8
    9c8a:	20 25 00 
    9c8d:	48 c7 83 08 01 00 00 	movq   $0x0,0x108(%rbx)
    9c94:	00 00 00 00 
    9c98:	48 89 c1             	mov    %rax,%rcx
    9c9b:	8a 10                	mov    (%rax),%dl
    9c9d:	48 ff c0             	inc    %rax
    9ca0:	84 d2                	test   %dl,%dl
    9ca2:	0f 84 cc 00 00 00    	je     0x9d74
    9ca8:	80 fa 25             	cmp    $0x25,%dl
    9cab:	75 eb                	jne    0x9c98
    9cad:	80 79 01 2d          	cmpb   $0x2d,0x1(%rcx)
    9cb1:	75 04                	jne    0x9cb7
    9cb3:	48 8d 41 02          	lea    0x2(%rcx),%rax
    9cb7:	48 89 c2             	mov    %rax,%rdx
    9cba:	0f be 02             	movsbl (%rdx),%eax
    9cbd:	89 c1                	mov    %eax,%ecx
    9cbf:	83 e8 30             	sub    $0x30,%eax
    9cc2:	83 f8 09             	cmp    $0x9,%eax
    9cc5:	77 05                	ja     0x9ccc
    9cc7:	48 ff c2             	inc    %rdx
    9cca:	eb ee                	jmp    0x9cba
    9ccc:	80 f9 24             	cmp    $0x24,%cl
    9ccf:	75 17                	jne    0x9ce8
    9cd1:	45 85 e4             	test   %r12d,%r12d
    9cd4:	74 0f                	je     0x9ce5
    9cd6:	48 be 6c d3 00 00 00 	movabs $0xd36c,%rsi
    9cdd:	00 00 00 
    9ce0:	e9 aa 00 00 00       	jmp    0x9d8f
    9ce5:	48 ff c2             	inc    %rdx
    9ce8:	80 3a 2d             	cmpb   $0x2d,(%rdx)
    9ceb:	75 03                	jne    0x9cf0
    9ced:	48 ff c2             	inc    %rdx
    9cf0:	0f be 0a             	movsbl (%rdx),%ecx
    9cf3:	48 89 d0             	mov    %rdx,%rax
    9cf6:	48 8d 52 01          	lea    0x1(%rdx),%rdx
    9cfa:	89 cf                	mov    %ecx,%edi
    9cfc:	83 e9 30             	sub    $0x30,%ecx
    9cff:	83 f9 09             	cmp    $0x9,%ecx
    9d02:	76 ec                	jbe    0x9cf0
    9d04:	40 80 ff 2e          	cmp    $0x2e,%dil
    9d08:	48 0f 44 c2          	cmove  %rdx,%rax
    9d0c:	0f be 38             	movsbl (%rax),%edi
    9d0f:	48 89 c2             	mov    %rax,%rdx
    9d12:	48 ff c0             	inc    %rax
    9d15:	89 f9                	mov    %edi,%ecx
    9d17:	83 ef 30             	sub    $0x30,%edi
    9d1a:	83 ff 09             	cmp    $0x9,%edi
    9d1d:	76 ed                	jbe    0x9d0c
    9d1f:	80 f9 6c             	cmp    $0x6c,%cl
    9d22:	75 13                	jne    0x9d37
    9d24:	8a 4a 01             	mov    0x1(%rdx),%cl
    9d27:	48 8d 42 02          	lea    0x2(%rdx),%rax
    9d2b:	80 f9 6c             	cmp    $0x6c,%cl
    9d2e:	75 07                	jne    0x9d37
    9d30:	8a 4a 02             	mov    0x2(%rdx),%cl
    9d33:	48 8d 42 03          	lea    0x3(%rdx),%rax
    9d37:	80 f9 25             	cmp    $0x25,%cl
    9d3a:	0f 84 58 ff ff ff    	je     0x9c98
    9d40:	83 e9 43             	sub    $0x43,%ecx
    9d43:	80 f9 35             	cmp    $0x35,%cl
    9d46:	77 17                	ja     0x9d5f
    9d48:	4c 89 c2             	mov    %r8,%rdx
    9d4b:	48 d3 ea             	shr    %cl,%rdx
    9d4e:	80 e2 01             	and    $0x1,%dl
    9d51:	74 0c                	je     0x9d5f
    9d53:	48 ff 83 08 01 00 00 	incq   0x108(%rbx)
    9d5a:	e9 39 ff ff ff       	jmp    0x9c98
    9d5f:	45 85 e4             	test   %r12d,%r12d
    9d62:	0f 84 30 ff ff ff    	je     0x9c98
    9d68:	48 be 93 d3 00 00 00 	movabs $0xd393,%rsi
    9d6f:	00 00 00 
    9d72:	eb 1b                	jmp    0x9d8f
    9d74:	48 8b bb 08 01 00 00 	mov    0x108(%rbx),%rdi
    9d7b:	45 85 e4             	test   %r12d,%r12d
    9d7e:	74 2d                	je     0x9dad
    9d80:	48 39 fe             	cmp    %rdi,%rsi
    9d83:	73 28                	jae    0x9dad
    9d85:	48 be a5 d3 00 00 00 	movabs $0xd3a5,%rsi
    9d8c:	00 00 00 
    9d8f:	59                   	pop    %rcx
    9d90:	bf 12 00 00 00       	mov    $0x12,%edi
    9d95:	5b                   	pop    %rbx
    9d96:	31 c0                	xor    %eax,%eax
    9d98:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    9d9f:	00 00 00 
    9da2:	5d                   	pop    %rbp
    9da3:	41 5c                	pop    %r12
    9da5:	41 5d                	pop    %r13
    9da7:	41 5e                	pop    %r14
    9da9:	41 5f                	pop    %r15
    9dab:	ff e2                	jmp    *%rdx
    9dad:	48 83 ff 20          	cmp    $0x20,%rdi
    9db1:	77 09                	ja     0x9dbc
    9db3:	48 89 9b 00 01 00 00 	mov    %rbx,0x100(%rbx)
    9dba:	eb 51                	jmp    0x9e0d
    9dbc:	48 b8 5b 5b 00 00 00 	movabs $0x5b5b,%rax
    9dc3:	00 00 00 
    9dc6:	be 08 00 00 00       	mov    $0x8,%esi
    9dcb:	ff d0                	call   *%rax
    9dcd:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
    9dd4:	48 85 c0             	test   %rax,%rax
    9dd7:	75 34                	jne    0x9e0d
    9dd9:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    9de0:	00 00 
    9de2:	45 85 e4             	test   %r12d,%r12d
    9de5:	0f 85 95 01 00 00    	jne    0x9f80
    9deb:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    9df2:	00 00 00 
    9df5:	48 89 9b 00 01 00 00 	mov    %rbx,0x100(%rbx)
    9dfc:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    9e02:	48 c7 83 08 01 00 00 	movq   $0x20,0x108(%rbx)
    9e09:	20 00 00 00 
    9e0d:	48 8b 83 08 01 00 00 	mov    0x108(%rbx),%rax
    9e14:	48 8b bb 00 01 00 00 	mov    0x100(%rbx),%rdi
    9e1b:	31 f6                	xor    %esi,%esi
    9e1d:	45 31 e4             	xor    %r12d,%r12d
    9e20:	49 be 47 9b 00 00 00 	movabs $0x9b47,%r14
    9e27:	00 00 00 
    9e2a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    9e31:	00 
    9e32:	48 b8 b8 99 00 00 00 	movabs $0x99b8,%rax
    9e39:	00 00 00 
    9e3c:	ff d0                	call   *%rax
    9e3e:	48 89 ea             	mov    %rbp,%rdx
    9e41:	8a 45 00             	mov    0x0(%rbp),%al
    9e44:	48 ff c5             	inc    %rbp
    9e47:	84 c0                	test   %al,%al
    9e49:	0f 84 2f 01 00 00    	je     0x9f7e
    9e4f:	3c 25                	cmp    $0x25,%al
    9e51:	75 eb                	jne    0x9e3e
    9e53:	80 7a 01 2d          	cmpb   $0x2d,0x1(%rdx)
    9e57:	4d 8d 6c 24 01       	lea    0x1(%r12),%r13
    9e5c:	75 04                	jne    0x9e62
    9e5e:	48 8d 6a 02          	lea    0x2(%rdx),%rbp
    9e62:	49 89 ef             	mov    %rbp,%r15
    9e65:	41 0f be 17          	movsbl (%r15),%edx
    9e69:	4c 89 f8             	mov    %r15,%rax
    9e6c:	4d 8d 7f 01          	lea    0x1(%r15),%r15
    9e70:	89 d1                	mov    %edx,%ecx
    9e72:	83 ea 30             	sub    $0x30,%edx
    9e75:	83 fa 09             	cmp    $0x9,%edx
    9e78:	76 eb                	jbe    0x9e65
    9e7a:	4c 89 e2             	mov    %r12,%rdx
    9e7d:	80 f9 24             	cmp    $0x24,%cl
    9e80:	75 14                	jne    0x9e96
    9e82:	ba 0a 00 00 00       	mov    $0xa,%edx
    9e87:	31 f6                	xor    %esi,%esi
    9e89:	48 89 ef             	mov    %rbp,%rdi
    9e8c:	41 ff d6             	call   *%r14
    9e8f:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    9e93:	4c 89 f8             	mov    %r15,%rax
    9e96:	80 38 2d             	cmpb   $0x2d,(%rax)
    9e99:	75 03                	jne    0x9e9e
    9e9b:	48 ff c0             	inc    %rax
    9e9e:	0f be 08             	movsbl (%rax),%ecx
    9ea1:	48 89 c5             	mov    %rax,%rbp
    9ea4:	48 8d 40 01          	lea    0x1(%rax),%rax
    9ea8:	89 ce                	mov    %ecx,%esi
    9eaa:	83 e9 30             	sub    $0x30,%ecx
    9ead:	83 f9 09             	cmp    $0x9,%ecx
    9eb0:	76 ec                	jbe    0x9e9e
    9eb2:	40 80 fe 2e          	cmp    $0x2e,%sil
    9eb6:	48 0f 44 e8          	cmove  %rax,%rbp
    9eba:	0f be 4d 00          	movsbl 0x0(%rbp),%ecx
    9ebe:	48 89 ee             	mov    %rbp,%rsi
    9ec1:	48 ff c5             	inc    %rbp
    9ec4:	89 c8                	mov    %ecx,%eax
    9ec6:	83 e9 30             	sub    $0x30,%ecx
    9ec9:	83 f9 09             	cmp    $0x9,%ecx
    9ecc:	76 ec                	jbe    0x9eba
    9ece:	3c 25                	cmp    $0x25,%al
    9ed0:	0f 84 9d 00 00 00    	je     0x9f73
    9ed6:	31 c9                	xor    %ecx,%ecx
    9ed8:	3c 6c                	cmp    $0x6c,%al
    9eda:	75 1e                	jne    0x9efa
    9edc:	8a 46 01             	mov    0x1(%rsi),%al
    9edf:	3c 6c                	cmp    $0x6c,%al
    9ee1:	74 0b                	je     0x9eee
    9ee3:	48 8d 6e 02          	lea    0x2(%rsi),%rbp
    9ee7:	b9 01 00 00 00       	mov    $0x1,%ecx
    9eec:	eb 0c                	jmp    0x9efa
    9eee:	8a 46 02             	mov    0x2(%rsi),%al
    9ef1:	48 8d 6e 03          	lea    0x3(%rsi),%rbp
    9ef5:	b9 02 00 00 00       	mov    $0x2,%ecx
    9efa:	48 39 93 08 01 00 00 	cmp    %rdx,0x108(%rbx)
    9f01:	76 73                	jbe    0x9f76
    9f03:	3c 70                	cmp    $0x70,%al
    9f05:	74 3c                	je     0x9f43
    9f07:	7f 1b                	jg     0x9f24
    9f09:	3c 63                	cmp    $0x63,%al
    9f0b:	74 56                	je     0x9f63
    9f0d:	7f 08                	jg     0x9f17
    9f0f:	3c 43                	cmp    $0x43,%al
    9f11:	74 50                	je     0x9f63
    9f13:	3c 58                	cmp    $0x58,%al
    9f15:	eb 1b                	jmp    0x9f32
    9f17:	3c 64                	cmp    $0x64,%al
    9f19:	75 5b                	jne    0x9f76
    9f1b:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
    9f22:	eb 1a                	jmp    0x9f3e
    9f24:	3c 73                	cmp    $0x73,%al
    9f26:	74 2b                	je     0x9f53
    9f28:	3c 72                	cmp    $0x72,%al
    9f2a:	7e 4a                	jle    0x9f76
    9f2c:	3c 75                	cmp    $0x75,%al
    9f2e:	74 04                	je     0x9f34
    9f30:	3c 78                	cmp    $0x78,%al
    9f32:	75 42                	jne    0x9f76
    9f34:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
    9f3b:	83 c1 03             	add    $0x3,%ecx
    9f3e:	89 0c d0             	mov    %ecx,(%rax,%rdx,8)
    9f41:	eb 33                	jmp    0x9f76
    9f43:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
    9f4a:	c7 04 d0 05 00 00 00 	movl   $0x5,(%rax,%rdx,8)
    9f51:	eb 23                	jmp    0x9f76
    9f53:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
    9f5a:	c7 04 d0 06 00 00 00 	movl   $0x6,(%rax,%rdx,8)
    9f61:	eb 13                	jmp    0x9f76
    9f63:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
    9f6a:	c7 04 d0 00 00 00 00 	movl   $0x0,(%rax,%rdx,8)
    9f71:	eb 03                	jmp    0x9f76
    9f73:	4d 89 e5             	mov    %r12,%r13
    9f76:	4d 89 ec             	mov    %r13,%r12
    9f79:	e9 c0 fe ff ff       	jmp    0x9e3e
    9f7e:	31 c0                	xor    %eax,%eax
    9f80:	5a                   	pop    %rdx
    9f81:	5b                   	pop    %rbx
    9f82:	5d                   	pop    %rbp
    9f83:	41 5c                	pop    %r12
    9f85:	41 5d                	pop    %r13
    9f87:	41 5e                	pop    %r14
    9f89:	41 5f                	pop    %r15
    9f8b:	c3                   	ret    
    9f8c:	48 b8 68 9c 00 00 00 	movabs $0x9c68,%rax
    9f93:	00 00 00 
    9f96:	55                   	push   %rbp
    9f97:	48 89 f5             	mov    %rsi,%rbp
    9f9a:	53                   	push   %rbx
    9f9b:	48 89 d3             	mov    %rdx,%rbx
    9f9e:	31 d2                	xor    %edx,%edx
    9fa0:	51                   	push   %rcx
    9fa1:	31 c9                	xor    %ecx,%ecx
    9fa3:	ff d0                	call   *%rax
    9fa5:	48 8b bd 08 01 00 00 	mov    0x108(%rbp),%rdi
    9fac:	31 f6                	xor    %esi,%esi
    9fae:	49 b8 00 c2 00 00 00 	movabs $0xc200,%r8
    9fb5:	00 00 00 
    9fb8:	48 39 fe             	cmp    %rdi,%rsi
    9fbb:	0f 84 83 00 00 00    	je     0xa044
    9fc1:	48 8b 85 00 01 00 00 	mov    0x100(%rbp),%rax
    9fc8:	48 8d 14 f0          	lea    (%rax,%rsi,8),%rdx
    9fcc:	83 3a 06             	cmpl   $0x6,(%rdx)
    9fcf:	77 6b                	ja     0xa03c
    9fd1:	8b 03                	mov    (%rbx),%eax
    9fd3:	8b 0a                	mov    (%rdx),%ecx
    9fd5:	83 f8 2f             	cmp    $0x2f,%eax
    9fd8:	41 ff 24 c8          	jmp    *(%r8,%rcx,8)
    9fdc:	77 0d                	ja     0x9feb
    9fde:	89 c1                	mov    %eax,%ecx
    9fe0:	83 c0 08             	add    $0x8,%eax
    9fe3:	48 03 4b 10          	add    0x10(%rbx),%rcx
    9fe7:	89 03                	mov    %eax,(%rbx)
    9fe9:	eb 0c                	jmp    0x9ff7
    9feb:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    9fef:	48 8d 41 08          	lea    0x8(%rcx),%rax
    9ff3:	48 89 43 08          	mov    %rax,0x8(%rbx)
    9ff7:	48 63 01             	movslq (%rcx),%rax
    9ffa:	eb 3d                	jmp    0xa039
    9ffc:	77 0d                	ja     0xa00b
    9ffe:	89 c1                	mov    %eax,%ecx
    a000:	83 c0 08             	add    $0x8,%eax
    a003:	48 03 4b 10          	add    0x10(%rbx),%rcx
    a007:	89 03                	mov    %eax,(%rbx)
    a009:	eb 0c                	jmp    0xa017
    a00b:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    a00f:	48 8d 41 08          	lea    0x8(%rcx),%rax
    a013:	48 89 43 08          	mov    %rax,0x8(%rbx)
    a017:	8b 01                	mov    (%rcx),%eax
    a019:	eb 1e                	jmp    0xa039
    a01b:	77 0d                	ja     0xa02a
    a01d:	89 c1                	mov    %eax,%ecx
    a01f:	83 c0 08             	add    $0x8,%eax
    a022:	48 03 4b 10          	add    0x10(%rbx),%rcx
    a026:	89 03                	mov    %eax,(%rbx)
    a028:	eb 0c                	jmp    0xa036
    a02a:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    a02e:	48 8d 41 08          	lea    0x8(%rcx),%rax
    a032:	48 89 43 08          	mov    %rax,0x8(%rbx)
    a036:	48 8b 01             	mov    (%rcx),%rax
    a039:	48 89 02             	mov    %rax,(%rdx)
    a03c:	48 ff c6             	inc    %rsi
    a03f:	e9 74 ff ff ff       	jmp    0x9fb8
    a044:	58                   	pop    %rax
    a045:	5b                   	pop    %rbx
    a046:	5d                   	pop    %rbp
    a047:	c3                   	ret    
    a048:	48 b8 47 9b 00 00 00 	movabs $0x9b47,%rax
    a04f:	00 00 00 
    a052:	ff e0                	jmp    *%rax
    a054:	41 57                	push   %r15
    a056:	45 31 c9             	xor    %r9d,%r9d
    a059:	49 89 ff             	mov    %rdi,%r15
    a05c:	41 56                	push   %r14
    a05e:	41 55                	push   %r13
    a060:	41 54                	push   %r12
    a062:	55                   	push   %rbp
    a063:	48 89 f5             	mov    %rsi,%rbp
    a066:	53                   	push   %rbx
    a067:	31 db                	xor    %ebx,%ebx
    a069:	48 83 ec 68          	sub    $0x68,%rsp
    a06d:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    a072:	48 b9 50 f8 00 00 00 	movabs $0xf850,%rcx
    a079:	00 00 00 
    a07c:	48 8b 01             	mov    (%rcx),%rax
    a07f:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    a084:	31 c0                	xor    %eax,%eax
    a086:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    a08b:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a090:	48 8d 50 01          	lea    0x1(%rax),%rdx
    a094:	8a 00                	mov    (%rax),%al
    a096:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    a09b:	84 c0                	test   %al,%al
    a09d:	0f 84 39 04 00 00    	je     0xa4dc
    a0a3:	3c 25                	cmp    $0x25,%al
    a0a5:	74 12                	je     0xa0b9
    a0a7:	48 39 dd             	cmp    %rbx,%rbp
    a0aa:	0f 86 27 01 00 00    	jbe    0xa1d7
    a0b0:	41 88 04 1f          	mov    %al,(%r15,%rbx,1)
    a0b4:	e9 1e 01 00 00       	jmp    0xa1d7
    a0b9:	49 8d 41 01          	lea    0x1(%r9),%rax
    a0bd:	4d 89 ca             	mov    %r9,%r10
    a0c0:	48 89 04 24          	mov    %rax,(%rsp)
    a0c4:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a0c9:	45 31 ed             	xor    %r13d,%r13d
    a0cc:	80 38 2d             	cmpb   $0x2d,(%rax)
    a0cf:	75 0b                	jne    0xa0dc
    a0d1:	48 ff c0             	inc    %rax
    a0d4:	41 b5 01             	mov    $0x1,%r13b
    a0d7:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    a0dc:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    a0e1:	0f be 07             	movsbl (%rdi),%eax
    a0e4:	41 89 c6             	mov    %eax,%r14d
    a0e7:	83 e8 30             	sub    $0x30,%eax
    a0ea:	83 f8 09             	cmp    $0x9,%eax
    a0ed:	77 38                	ja     0xa127
    a0ef:	41 80 fe 30          	cmp    $0x30,%r14b
    a0f3:	74 03                	je     0xa0f8
    a0f5:	41 b6 20             	mov    $0x20,%r14b
    a0f8:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
    a0fd:	ba 0a 00 00 00       	mov    $0xa,%edx
    a102:	48 8d 74 24 28       	lea    0x28(%rsp),%rsi
    a107:	48 b8 47 9b 00 00 00 	movabs $0x9b47,%rax
    a10e:	00 00 00 
    a111:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    a116:	ff d0                	call   *%rax
    a118:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    a11d:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
    a122:	41 89 c4             	mov    %eax,%r12d
    a125:	eb 06                	jmp    0xa12d
    a127:	41 b6 20             	mov    $0x20,%r14b
    a12a:	45 31 e4             	xor    %r12d,%r12d
    a12d:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a132:	80 38 2e             	cmpb   $0x2e,(%rax)
    a135:	75 08                	jne    0xa13f
    a137:	48 ff c0             	inc    %rax
    a13a:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    a13f:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    a144:	be ff ff ff ff       	mov    $0xffffffff,%esi
    a149:	0f be 07             	movsbl (%rdi),%eax
    a14c:	83 e8 30             	sub    $0x30,%eax
    a14f:	83 f8 09             	cmp    $0x9,%eax
    a152:	77 2c                	ja     0xa180
    a154:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
    a159:	48 8d 74 24 28       	lea    0x28(%rsp),%rsi
    a15e:	ba 0a 00 00 00       	mov    $0xa,%edx
    a163:	48 b8 47 9b 00 00 00 	movabs $0x9b47,%rax
    a16a:	00 00 00 
    a16d:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    a172:	ff d0                	call   *%rax
    a174:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
    a179:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    a17e:	89 c6                	mov    %eax,%esi
    a180:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    a185:	8a 10                	mov    (%rax),%dl
    a187:	48 8d 78 01          	lea    0x1(%rax),%rdi
    a18b:	80 fa 24             	cmp    $0x24,%dl
    a18e:	75 0f                	jne    0xa19f
    a190:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
    a195:	45 8d 54 24 ff       	lea    -0x1(%r12),%r10d
    a19a:	e9 25 ff ff ff       	jmp    0xa0c4
    a19f:	80 fa 6c             	cmp    $0x6c,%dl
    a1a2:	74 07                	je     0xa1ab
    a1a4:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
    a1a9:	eb 1d                	jmp    0xa1c8
    a1ab:	48 8d 50 02          	lea    0x2(%rax),%rdx
    a1af:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    a1b4:	8a 50 01             	mov    0x1(%rax),%dl
    a1b7:	80 fa 6c             	cmp    $0x6c,%dl
    a1ba:	75 0c                	jne    0xa1c8
    a1bc:	48 8d 50 03          	lea    0x3(%rax),%rdx
    a1c0:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    a1c5:	8a 50 02             	mov    0x2(%rax),%dl
    a1c8:	80 fa 25             	cmp    $0x25,%dl
    a1cb:	75 16                	jne    0xa1e3
    a1cd:	48 39 dd             	cmp    %rbx,%rbp
    a1d0:	76 05                	jbe    0xa1d7
    a1d2:	41 c6 04 1f 25       	movb   $0x25,(%r15,%rbx,1)
    a1d7:	4c 89 0c 24          	mov    %r9,(%rsp)
    a1db:	48 ff c3             	inc    %rbx
    a1de:	e9 f0 02 00 00       	jmp    0xa4d3
    a1e3:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    a1e8:	4c 39 90 08 01 00 00 	cmp    %r10,0x108(%rax)
    a1ef:	0f 86 de 02 00 00    	jbe    0xa4d3
    a1f5:	48 8b 80 00 01 00 00 	mov    0x100(%rax),%rax
    a1fc:	4a 8b 04 d0          	mov    (%rax,%r10,8),%rax
    a200:	80 fa 70             	cmp    $0x70,%dl
    a203:	74 41                	je     0xa246
    a205:	7f 1e                	jg     0xa225
    a207:	80 fa 63             	cmp    $0x63,%dl
    a20a:	0f 84 92 01 00 00    	je     0xa3a2
    a210:	7f 0e                	jg     0xa220
    a212:	80 fa 43             	cmp    $0x43,%dl
    a215:	0f 84 99 01 00 00    	je     0xa3b4
    a21b:	80 fa 58             	cmp    $0x58,%dl
    a21e:	eb 1f                	jmp    0xa23f
    a220:	80 fa 64             	cmp    $0x64,%dl
    a223:	eb 1a                	jmp    0xa23f
    a225:	80 fa 73             	cmp    $0x73,%dl
    a228:	0f 84 0b 02 00 00    	je     0xa439
    a22e:	80 fa 72             	cmp    $0x72,%dl
    a231:	0f 8e 90 02 00 00    	jle    0xa4c7
    a237:	80 fa 75             	cmp    $0x75,%dl
    a23a:	74 29                	je     0xa265
    a23c:	80 fa 78             	cmp    $0x78,%dl
    a23f:	74 24                	je     0xa265
    a241:	e9 81 02 00 00       	jmp    0xa4c7
    a246:	48 39 dd             	cmp    %rbx,%rbp
    a249:	76 05                	jbe    0xa250
    a24b:	41 c6 04 1f 30       	movb   $0x30,(%r15,%rbx,1)
    a250:	48 8d 53 01          	lea    0x1(%rbx),%rdx
    a254:	48 39 d5             	cmp    %rdx,%rbp
    a257:	76 06                	jbe    0xa25f
    a259:	41 c6 44 1f 01 78    	movb   $0x78,0x1(%r15,%rbx,1)
    a25f:	48 83 c3 02          	add    $0x2,%rbx
    a263:	b2 78                	mov    $0x78,%dl
    a265:	89 d6                	mov    %edx,%esi
    a267:	bf 0a 00 00 00       	mov    $0xa,%edi
    a26c:	83 e6 df             	and    $0xffffffdf,%esi
    a26f:	40 80 fe 58          	cmp    $0x58,%sil
    a273:	be 10 00 00 00       	mov    $0x10,%esi
    a278:	0f 45 f7             	cmovne %edi,%esi
    a27b:	48 85 c0             	test   %rax,%rax
    a27e:	79 05                	jns    0xa285
    a280:	80 fa 64             	cmp    $0x64,%dl
    a283:	74 0a                	je     0xa28f
    a285:	48 89 c7             	mov    %rax,%rdi
    a288:	4c 8d 54 24 38       	lea    0x38(%rsp),%r10
    a28d:	eb 10                	jmp    0xa29f
    a28f:	c6 44 24 38 2d       	movb   $0x2d,0x38(%rsp)
    a294:	48 f7 d8             	neg    %rax
    a297:	4c 8d 54 24 39       	lea    0x39(%rsp),%r10
    a29c:	48 89 c7             	mov    %rax,%rdi
    a29f:	49 bb e8 9a 00 00 00 	movabs $0x9ae8,%r11
    a2a6:	00 00 00 
    a2a9:	4d 89 d1             	mov    %r10,%r9
    a2ac:	83 fe 10             	cmp    $0x10,%esi
    a2af:	75 2c                	jne    0xa2dd
    a2b1:	80 fa 78             	cmp    $0x78,%dl
    a2b4:	b0 61                	mov    $0x61,%al
    a2b6:	b2 41                	mov    $0x41,%dl
    a2b8:	0f 45 c2             	cmovne %edx,%eax
    a2bb:	83 e8 0a             	sub    $0xa,%eax
    a2be:	89 fa                	mov    %edi,%edx
    a2c0:	83 e2 0f             	and    $0xf,%edx
    a2c3:	8d 72 30             	lea    0x30(%rdx),%esi
    a2c6:	83 fa 09             	cmp    $0x9,%edx
    a2c9:	76 03                	jbe    0xa2ce
    a2cb:	8d 34 10             	lea    (%rax,%rdx,1),%esi
    a2ce:	49 ff c1             	inc    %r9
    a2d1:	48 c1 ef 04          	shr    $0x4,%rdi
    a2d5:	41 88 71 ff          	mov    %sil,-0x1(%r9)
    a2d9:	75 e3                	jne    0xa2be
    a2db:	eb 23                	jmp    0xa300
    a2dd:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
    a2e2:	be 0a 00 00 00       	mov    $0xa,%esi
    a2e7:	49 ff c1             	inc    %r9
    a2ea:	41 ff d3             	call   *%r11
    a2ed:	48 89 c7             	mov    %rax,%rdi
    a2f0:	8a 44 24 30          	mov    0x30(%rsp),%al
    a2f4:	83 c0 30             	add    $0x30,%eax
    a2f7:	41 88 41 ff          	mov    %al,-0x1(%r9)
    a2fb:	48 85 ff             	test   %rdi,%rdi
    a2fe:	75 dd                	jne    0xa2dd
    a300:	41 c6 01 00          	movb   $0x0,(%r9)
    a304:	4c 89 d7             	mov    %r10,%rdi
    a307:	48 b8 37 9a 00 00 00 	movabs $0x9a37,%rax
    a30e:	00 00 00 
    a311:	ff d0                	call   *%rax
    a313:	49 8d 44 02 ff       	lea    -0x1(%r10,%rax,1),%rax
    a318:	49 39 c2             	cmp    %rax,%r10
    a31b:	73 15                	jae    0xa332
    a31d:	41 8a 12             	mov    (%r10),%dl
    a320:	40 8a 30             	mov    (%rax),%sil
    a323:	49 ff c2             	inc    %r10
    a326:	48 ff c8             	dec    %rax
    a329:	41 88 72 ff          	mov    %sil,-0x1(%r10)
    a32d:	88 50 01             	mov    %dl,0x1(%rax)
    a330:	eb e6                	jmp    0xa318
    a332:	48 8d 54 24 38       	lea    0x38(%rsp),%rdx
    a337:	31 c0                	xor    %eax,%eax
    a339:	49 29 d1             	sub    %rdx,%r9
    a33c:	4d 39 cc             	cmp    %r9,%r12
    a33f:	76 06                	jbe    0xa347
    a341:	4c 89 e0             	mov    %r12,%rax
    a344:	4c 29 c8             	sub    %r9,%rax
    a347:	45 84 ed             	test   %r13b,%r13b
    a34a:	75 2b                	jne    0xa377
    a34c:	48 01 d8             	add    %rbx,%rax
    a34f:	48 39 c3             	cmp    %rax,%rbx
    a352:	74 0e                	je     0xa362
    a354:	48 39 dd             	cmp    %rbx,%rbp
    a357:	76 04                	jbe    0xa35d
    a359:	45 88 34 1f          	mov    %r14b,(%r15,%rbx,1)
    a35d:	48 ff c3             	inc    %rbx
    a360:	eb ed                	jmp    0xa34f
    a362:	48 83 c8 ff          	or     $0xffffffffffffffff,%rax
    a366:	eb 0f                	jmp    0xa377
    a368:	48 ff c2             	inc    %rdx
    a36b:	48 39 dd             	cmp    %rbx,%rbp
    a36e:	76 04                	jbe    0xa374
    a370:	41 88 34 1f          	mov    %sil,(%r15,%rbx,1)
    a374:	48 ff c3             	inc    %rbx
    a377:	40 8a 32             	mov    (%rdx),%sil
    a37a:	40 84 f6             	test   %sil,%sil
    a37d:	75 e9                	jne    0xa368
    a37f:	48 01 d8             	add    %rbx,%rax
    a382:	45 84 ed             	test   %r13b,%r13b
    a385:	0f 84 48 01 00 00    	je     0xa4d3
    a38b:	48 39 c3             	cmp    %rax,%rbx
    a38e:	0f 84 3f 01 00 00    	je     0xa4d3
    a394:	48 39 dd             	cmp    %rbx,%rbp
    a397:	76 04                	jbe    0xa39d
    a399:	45 88 34 1f          	mov    %r14b,(%r15,%rbx,1)
    a39d:	48 ff c3             	inc    %rbx
    a3a0:	eb e9                	jmp    0xa38b
    a3a2:	48 39 dd             	cmp    %rbx,%rbp
    a3a5:	0f 86 25 01 00 00    	jbe    0xa4d0
    a3ab:	41 88 04 1f          	mov    %al,(%r15,%rbx,1)
    a3af:	e9 1c 01 00 00       	jmp    0xa4d0
    a3b4:	89 c6                	mov    %eax,%esi
    a3b6:	83 f8 7f             	cmp    $0x7f,%eax
    a3b9:	76 34                	jbe    0xa3ef
    a3bb:	3d ff 07 00 00       	cmp    $0x7ff,%eax
    a3c0:	76 33                	jbe    0xa3f5
    a3c2:	3d ff ff 00 00       	cmp    $0xffff,%eax
    a3c7:	76 38                	jbe    0xa401
    a3c9:	3d 00 00 11 00       	cmp    $0x110000,%eax
    a3ce:	19 d2                	sbb    %edx,%edx
    a3d0:	81 e2 f0 00 00 00    	and    $0xf0,%edx
    a3d6:	3d 00 00 11 00       	cmp    $0x110000,%eax
    a3db:	19 c9                	sbb    %ecx,%ecx
    a3dd:	83 e1 12             	and    $0x12,%ecx
    a3e0:	3d 00 00 11 00       	cmp    $0x110000,%eax
    a3e5:	b8 3f 00 00 00       	mov    $0x3f,%eax
    a3ea:	0f 43 f0             	cmovae %eax,%esi
    a3ed:	eb 1c                	jmp    0xa40b
    a3ef:	31 d2                	xor    %edx,%edx
    a3f1:	31 c9                	xor    %ecx,%ecx
    a3f3:	eb 16                	jmp    0xa40b
    a3f5:	ba c0 00 00 00       	mov    $0xc0,%edx
    a3fa:	b9 06 00 00 00       	mov    $0x6,%ecx
    a3ff:	eb 0a                	jmp    0xa40b
    a401:	ba e0 00 00 00       	mov    $0xe0,%edx
    a406:	b9 0c 00 00 00       	mov    $0xc,%ecx
    a40b:	48 39 dd             	cmp    %rbx,%rbp
    a40e:	76 0a                	jbe    0xa41a
    a410:	89 f0                	mov    %esi,%eax
    a412:	d3 e8                	shr    %cl,%eax
    a414:	09 d0                	or     %edx,%eax
    a416:	41 88 04 1f          	mov    %al,(%r15,%rbx,1)
    a41a:	83 e9 06             	sub    $0x6,%ecx
    a41d:	48 ff c3             	inc    %rbx
    a420:	85 c9                	test   %ecx,%ecx
    a422:	0f 88 ab 00 00 00    	js     0xa4d3
    a428:	48 39 dd             	cmp    %rbx,%rbp
    a42b:	76 ed                	jbe    0xa41a
    a42d:	89 f0                	mov    %esi,%eax
    a42f:	d3 e8                	shr    %cl,%eax
    a431:	83 e0 3f             	and    $0x3f,%eax
    a434:	83 c8 80             	or     $0xffffff80,%eax
    a437:	eb dd                	jmp    0xa416
    a439:	48 ba b8 d3 00 00 00 	movabs $0xd3b8,%rdx
    a440:	00 00 00 
    a443:	48 85 c0             	test   %rax,%rax
    a446:	48 0f 44 c2          	cmove  %rdx,%rax
    a44a:	31 d2                	xor    %edx,%edx
    a44c:	48 39 d6             	cmp    %rdx,%rsi
    a44f:	76 0b                	jbe    0xa45c
    a451:	80 3c 10 00          	cmpb   $0x0,(%rax,%rdx,1)
    a455:	74 05                	je     0xa45c
    a457:	48 ff c2             	inc    %rdx
    a45a:	eb f0                	jmp    0xa44c
    a45c:	31 f6                	xor    %esi,%esi
    a45e:	49 39 d4             	cmp    %rdx,%r12
    a461:	76 06                	jbe    0xa469
    a463:	4c 89 e6             	mov    %r12,%rsi
    a466:	48 29 d6             	sub    %rdx,%rsi
    a469:	48 89 df             	mov    %rbx,%rdi
    a46c:	45 84 ed             	test   %r13b,%r13b
    a46f:	75 1b                	jne    0xa48c
    a471:	48 8d 3c 1e          	lea    (%rsi,%rbx,1),%rdi
    a475:	48 39 df             	cmp    %rbx,%rdi
    a478:	74 0e                	je     0xa488
    a47a:	48 39 dd             	cmp    %rbx,%rbp
    a47d:	76 04                	jbe    0xa483
    a47f:	45 88 34 1f          	mov    %r14b,(%r15,%rbx,1)
    a483:	48 ff c3             	inc    %rbx
    a486:	eb ed                	jmp    0xa475
    a488:	48 83 ce ff          	or     $0xffffffffffffffff,%rsi
    a48c:	48 01 fa             	add    %rdi,%rdx
    a48f:	48 89 fb             	mov    %rdi,%rbx
    a492:	48 29 f8             	sub    %rdi,%rax
    a495:	48 39 da             	cmp    %rbx,%rdx
    a498:	74 12                	je     0xa4ac
    a49a:	48 39 dd             	cmp    %rbx,%rbp
    a49d:	76 08                	jbe    0xa4a7
    a49f:	40 8a 3c 18          	mov    (%rax,%rbx,1),%dil
    a4a3:	41 88 3c 1f          	mov    %dil,(%r15,%rbx,1)
    a4a7:	48 ff c3             	inc    %rbx
    a4aa:	eb e9                	jmp    0xa495
    a4ac:	48 01 de             	add    %rbx,%rsi
    a4af:	45 84 ed             	test   %r13b,%r13b
    a4b2:	74 1f                	je     0xa4d3
    a4b4:	48 39 f3             	cmp    %rsi,%rbx
    a4b7:	74 1a                	je     0xa4d3
    a4b9:	48 39 dd             	cmp    %rbx,%rbp
    a4bc:	76 04                	jbe    0xa4c2
    a4be:	45 88 34 1f          	mov    %r14b,(%r15,%rbx,1)
    a4c2:	48 ff c3             	inc    %rbx
    a4c5:	eb ed                	jmp    0xa4b4
    a4c7:	48 39 dd             	cmp    %rbx,%rbp
    a4ca:	76 04                	jbe    0xa4d0
    a4cc:	41 88 14 1f          	mov    %dl,(%r15,%rbx,1)
    a4d0:	48 ff c3             	inc    %rbx
    a4d3:	4c 8b 0c 24          	mov    (%rsp),%r9
    a4d7:	e9 af fb ff ff       	jmp    0xa08b
    a4dc:	48 39 dd             	cmp    %rbx,%rbp
    a4df:	76 07                	jbe    0xa4e8
    a4e1:	41 c6 04 1f 00       	movb   $0x0,(%r15,%rbx,1)
    a4e6:	eb 05                	jmp    0xa4ed
    a4e8:	41 c6 04 2f 00       	movb   $0x0,(%r15,%rbp,1)
    a4ed:	48 b9 50 f8 00 00 00 	movabs $0xf850,%rcx
    a4f4:	00 00 00 
    a4f7:	89 d8                	mov    %ebx,%eax
    a4f9:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
    a4fe:	48 2b 11             	sub    (%rcx),%rdx
    a501:	74 0c                	je     0xa50f
    a503:	48 b8 40 3e 00 00 00 	movabs $0x3e40,%rax
    a50a:	00 00 00 
    a50d:	ff d0                	call   *%rax
    a50f:	48 83 c4 68          	add    $0x68,%rsp
    a513:	5b                   	pop    %rbx
    a514:	5d                   	pop    %rbp
    a515:	41 5c                	pop    %r12
    a517:	41 5d                	pop    %r13
    a519:	41 5e                	pop    %r14
    a51b:	41 5f                	pop    %r15
    a51d:	c3                   	ret    
    a51e:	48 b8 8c 9f 00 00 00 	movabs $0x9f8c,%rax
    a525:	00 00 00 
    a528:	41 57                	push   %r15
    a52a:	48 89 f2             	mov    %rsi,%rdx
    a52d:	41 56                	push   %r14
    a52f:	49 be 54 a0 00 00 00 	movabs $0xa054,%r14
    a536:	00 00 00 
    a539:	41 55                	push   %r13
    a53b:	49 89 fd             	mov    %rdi,%r13
    a53e:	41 54                	push   %r12
    a540:	55                   	push   %rbp
    a541:	53                   	push   %rbx
    a542:	48 bb 60 b5 01 00 00 	movabs $0x1b560,%rbx
    a549:	00 00 00 
    a54c:	49 89 dc             	mov    %rbx,%r12
    a54f:	49 89 df             	mov    %rbx,%r15
    a552:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
    a559:	48 89 e6             	mov    %rsp,%rsi
    a55c:	ff d0                	call   *%rax
    a55e:	48 89 e1             	mov    %rsp,%rcx
    a561:	4c 89 ea             	mov    %r13,%rdx
    a564:	be ff 00 00 00       	mov    $0xff,%esi
    a569:	48 89 df             	mov    %rbx,%rdi
    a56c:	41 ff d6             	call   *%r14
    a56f:	48 63 e8             	movslq %eax,%rbp
    a572:	48 81 fd ff 00 00 00 	cmp    $0xff,%rbp
    a579:	76 49                	jbe    0xa5c4
    a57b:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    a582:	00 00 00 
    a585:	48 8d 7d 01          	lea    0x1(%rbp),%rdi
    a589:	ff d0                	call   *%rax
    a58b:	49 89 c4             	mov    %rax,%r12
    a58e:	48 85 c0             	test   %rax,%rax
    a591:	75 1f                	jne    0xa5b2
    a593:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    a59a:	00 00 00 
    a59d:	49 89 dc             	mov    %rbx,%r12
    a5a0:	c7 83 fc 00 00 00 2e 	movl   $0x2e2e2e,0xfc(%rbx)
    a5a7:	2e 2e 00 
    a5aa:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    a5b0:	eb 12                	jmp    0xa5c4
    a5b2:	48 89 ee             	mov    %rbp,%rsi
    a5b5:	48 89 e1             	mov    %rsp,%rcx
    a5b8:	4c 89 ea             	mov    %r13,%rdx
    a5bb:	48 89 c7             	mov    %rax,%rdi
    a5be:	41 ff d6             	call   *%r14
    a5c1:	48 63 e8             	movslq %eax,%rbp
    a5c4:	48 b8 3d 97 00 00 00 	movabs $0x973d,%rax
    a5cb:	00 00 00 
    a5ce:	48 89 e7             	mov    %rsp,%rdi
    a5d1:	ff d0                	call   *%rax
    a5d3:	4c 89 e7             	mov    %r12,%rdi
    a5d6:	48 a1 a0 e6 00 00 00 	movabs 0xe6a0,%rax
    a5dd:	00 00 00 
    a5e0:	ff d0                	call   *%rax
    a5e2:	4d 39 fc             	cmp    %r15,%r12
    a5e5:	74 0f                	je     0xa5f6
    a5e7:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    a5ee:	00 00 00 
    a5f1:	4c 89 e7             	mov    %r12,%rdi
    a5f4:	ff d0                	call   *%rax
    a5f6:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
    a5fd:	89 e8                	mov    %ebp,%eax
    a5ff:	5b                   	pop    %rbx
    a600:	5d                   	pop    %rbp
    a601:	41 5c                	pop    %r12
    a603:	41 5d                	pop    %r13
    a605:	41 5e                	pop    %r14
    a607:	41 5f                	pop    %r15
    a609:	c3                   	ret    
    a60a:	48 83 ec 58          	sub    $0x58,%rsp
    a60e:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    a613:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
    a618:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    a61d:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a622:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
    a627:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    a62c:	48 b8 1e a5 00 00 00 	movabs $0xa51e,%rax
    a633:	00 00 00 
    a636:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    a63b:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
    a640:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
    a645:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
    a64a:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%rsp)
    a651:	00 
    a652:	ff d0                	call   *%rax
    a654:	48 83 c4 58          	add    $0x58,%rsp
    a658:	c3                   	ret    
    a659:	48 83 ec 58          	sub    $0x58,%rsp
    a65d:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    a662:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
    a667:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a66c:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
    a671:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    a676:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
    a67b:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
    a680:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
    a685:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    a68a:	48 a1 50 e5 00 00 00 	movabs 0xe550,%rax
    a691:	00 00 00 
    a694:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%rsp)
    a69b:	00 
    a69c:	ff d0                	call   *%rax
    a69e:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    a6a3:	48 89 c7             	mov    %rax,%rdi
    a6a6:	48 b8 1e a5 00 00 00 	movabs $0xa51e,%rax
    a6ad:	00 00 00 
    a6b0:	ff d0                	call   *%rax
    a6b2:	48 83 c4 58          	add    $0x58,%rsp
    a6b6:	c3                   	ret    
    a6b7:	48 b8 56 99 00 00 00 	movabs $0x9956,%rax
    a6be:	00 00 00 
    a6c1:	41 55                	push   %r13
    a6c3:	41 89 f5             	mov    %esi,%r13d
    a6c6:	41 54                	push   %r12
    a6c8:	49 89 fc             	mov    %rdi,%r12
    a6cb:	48 89 d7             	mov    %rdx,%rdi
    a6ce:	55                   	push   %rbp
    a6cf:	48 89 cd             	mov    %rcx,%rbp
    a6d2:	48 83 ec 50          	sub    $0x50,%rsp
    a6d6:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
    a6db:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
    a6e0:	ff d0                	call   *%rax
    a6e2:	85 c0                	test   %eax,%eax
    a6e4:	74 5a                	je     0xa740
    a6e6:	44 89 ea             	mov    %r13d,%edx
    a6e9:	4c 89 e6             	mov    %r12,%rsi
    a6ec:	31 c0                	xor    %eax,%eax
    a6ee:	48 bf bf d3 00 00 00 	movabs $0xd3bf,%rdi
    a6f5:	00 00 00 
    a6f8:	48 b9 0a a6 00 00 00 	movabs $0xa60a,%rcx
    a6ff:	00 00 00 
    a702:	ff d1                	call   *%rcx
    a704:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    a709:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    a70e:	48 89 ef             	mov    %rbp,%rdi
    a711:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a716:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
    a71b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    a720:	48 b8 1e a5 00 00 00 	movabs $0xa51e,%rax
    a727:	00 00 00 
    a72a:	c7 44 24 08 20 00 00 	movl   $0x20,0x8(%rsp)
    a731:	00 
    a732:	ff d0                	call   *%rax
    a734:	48 b8 77 bb 00 00 00 	movabs $0xbb77,%rax
    a73b:	00 00 00 
    a73e:	ff d0                	call   *%rax
    a740:	48 83 c4 50          	add    $0x50,%rsp
    a744:	5d                   	pop    %rbp
    a745:	41 5c                	pop    %r12
    a747:	41 5d                	pop    %r13
    a749:	c3                   	ret    
    a74a:	48 b8 8c 9f 00 00 00 	movabs $0x9f8c,%rax
    a751:	00 00 00 
    a754:	41 55                	push   %r13
    a756:	49 89 fd             	mov    %rdi,%r13
    a759:	41 54                	push   %r12
    a75b:	49 89 d4             	mov    %rdx,%r12
    a75e:	48 89 ca             	mov    %rcx,%rdx
    a761:	55                   	push   %rbp
    a762:	48 8d 6e ff          	lea    -0x1(%rsi),%rbp
    a766:	4c 89 e7             	mov    %r12,%rdi
    a769:	53                   	push   %rbx
    a76a:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
    a771:	48 89 e6             	mov    %rsp,%rsi
    a774:	ff d0                	call   *%rax
    a776:	48 89 e1             	mov    %rsp,%rcx
    a779:	4c 89 e2             	mov    %r12,%rdx
    a77c:	48 89 ee             	mov    %rbp,%rsi
    a77f:	48 b8 54 a0 00 00 00 	movabs $0xa054,%rax
    a786:	00 00 00 
    a789:	4c 89 ef             	mov    %r13,%rdi
    a78c:	ff d0                	call   *%rax
    a78e:	48 89 e7             	mov    %rsp,%rdi
    a791:	89 c3                	mov    %eax,%ebx
    a793:	48 b8 3d 97 00 00 00 	movabs $0x973d,%rax
    a79a:	00 00 00 
    a79d:	ff d0                	call   *%rax
    a79f:	48 63 c3             	movslq %ebx,%rax
    a7a2:	48 39 e8             	cmp    %rbp,%rax
    a7a5:	48 0f 47 c5          	cmova  %rbp,%rax
    a7a9:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
    a7b0:	5b                   	pop    %rbx
    a7b1:	5d                   	pop    %rbp
    a7b2:	41 5c                	pop    %r12
    a7b4:	41 5d                	pop    %r13
    a7b6:	c3                   	ret    
    a7b7:	48 85 f6             	test   %rsi,%rsi
    a7ba:	74 0c                	je     0xa7c8
    a7bc:	48 b8 4a a7 00 00 00 	movabs $0xa74a,%rax
    a7c3:	00 00 00 
    a7c6:	ff e0                	jmp    *%rax
    a7c8:	31 c0                	xor    %eax,%eax
    a7ca:	c3                   	ret    
    a7cb:	48 83 ec 58          	sub    $0x58,%rsp
    a7cf:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    a7d4:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
    a7d9:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    a7de:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a7e3:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
    a7e8:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    a7ed:	48 b8 b7 a7 00 00 00 	movabs $0xa7b7,%rax
    a7f4:	00 00 00 
    a7f7:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
    a7fc:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
    a801:	c7 44 24 08 18 00 00 	movl   $0x18,0x8(%rsp)
    a808:	00 
    a809:	ff d0                	call   *%rax
    a80b:	48 83 c4 58          	add    $0x58,%rsp
    a80f:	c3                   	ret    
    a810:	48 b8 8c 9f 00 00 00 	movabs $0x9f8c,%rax
    a817:	00 00 00 
    a81a:	41 56                	push   %r14
    a81c:	48 89 f2             	mov    %rsi,%rdx
    a81f:	49 be c3 5b 00 00 00 	movabs $0x5bc3,%r14
    a826:	00 00 00 
    a829:	41 55                	push   %r13
    a82b:	49 89 fd             	mov    %rdi,%r13
    a82e:	41 54                	push   %r12
    a830:	55                   	push   %rbp
    a831:	53                   	push   %rbx
    a832:	bb ff 00 00 00       	mov    $0xff,%ebx
    a837:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
    a83e:	48 89 e6             	mov    %rsp,%rsi
    a841:	ff d0                	call   *%rax
    a843:	48 8d 7b 01          	lea    0x1(%rbx),%rdi
    a847:	41 ff d6             	call   *%r14
    a84a:	49 89 c4             	mov    %rax,%r12
    a84d:	48 85 c0             	test   %rax,%rax
    a850:	74 20                	je     0xa872
    a852:	48 89 c7             	mov    %rax,%rdi
    a855:	48 89 e1             	mov    %rsp,%rcx
    a858:	4c 89 ea             	mov    %r13,%rdx
    a85b:	48 89 de             	mov    %rbx,%rsi
    a85e:	48 b8 54 a0 00 00 00 	movabs $0xa054,%rax
    a865:	00 00 00 
    a868:	ff d0                	call   *%rax
    a86a:	48 63 e8             	movslq %eax,%rbp
    a86d:	48 39 eb             	cmp    %rbp,%rbx
    a870:	72 22                	jb     0xa894
    a872:	48 b8 3d 97 00 00 00 	movabs $0x973d,%rax
    a879:	00 00 00 
    a87c:	48 89 e7             	mov    %rsp,%rdi
    a87f:	ff d0                	call   *%rax
    a881:	48 81 c4 10 01 00 00 	add    $0x110,%rsp
    a888:	4c 89 e0             	mov    %r12,%rax
    a88b:	5b                   	pop    %rbx
    a88c:	5d                   	pop    %rbp
    a88d:	41 5c                	pop    %r12
    a88f:	41 5d                	pop    %r13
    a891:	41 5e                	pop    %r14
    a893:	c3                   	ret    
    a894:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    a89b:	00 00 00 
    a89e:	4c 89 e7             	mov    %r12,%rdi
    a8a1:	48 89 eb             	mov    %rbp,%rbx
    a8a4:	ff d0                	call   *%rax
    a8a6:	eb 9b                	jmp    0xa843
    a8a8:	48 83 ec 58          	sub    $0x58,%rsp
    a8ac:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    a8b1:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
    a8b6:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    a8bb:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    a8c0:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
    a8c5:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    a8ca:	48 b8 10 a8 00 00 00 	movabs $0xa810,%rax
    a8d1:	00 00 00 
    a8d4:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    a8d9:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
    a8de:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
    a8e3:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
    a8e8:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%rsp)
    a8ef:	00 
    a8f0:	ff d0                	call   *%rax
    a8f2:	48 83 c4 58          	add    $0x58,%rsp
    a8f6:	c3                   	ret    
    a8f7:	41 54                	push   %r12
    a8f9:	55                   	push   %rbp
    a8fa:	48 89 fd             	mov    %rdi,%rbp
    a8fd:	53                   	push   %rbx
    a8fe:	48 81 ec 20 02 00 00 	sub    $0x220,%rsp
    a905:	48 85 ff             	test   %rdi,%rdi
    a908:	74 08                	je     0xa912
    a90a:	48 89 f7             	mov    %rsi,%rdi
    a90d:	48 85 f6             	test   %rsi,%rsi
    a910:	75 28                	jne    0xa93a
    a912:	48 81 c4 20 02 00 00 	add    $0x220,%rsp
    a919:	bf 12 00 00 00       	mov    $0x12,%edi
    a91e:	31 c0                	xor    %eax,%eax
    a920:	48 be c7 d3 00 00 00 	movabs $0xd3c7,%rsi
    a927:	00 00 00 
    a92a:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    a931:	00 00 00 
    a934:	5b                   	pop    %rbx
    a935:	5d                   	pop    %rbp
    a936:	41 5c                	pop    %r12
    a938:	ff e2                	jmp    *%rdx
    a93a:	48 83 c9 ff          	or     $0xffffffffffffffff,%rcx
    a93e:	ba 01 00 00 00       	mov    $0x1,%edx
    a943:	48 89 e6             	mov    %rsp,%rsi
    a946:	48 bb 68 9c 00 00 00 	movabs $0x9c68,%rbx
    a94d:	00 00 00 
    a950:	ff d3                	call   *%rbx
    a952:	41 89 c4             	mov    %eax,%r12d
    a955:	85 c0                	test   %eax,%eax
    a957:	0f 85 97 00 00 00    	jne    0xa9f4
    a95d:	48 8b 8c 24 08 01 00 	mov    0x108(%rsp),%rcx
    a964:	00 
    a965:	ba 01 00 00 00       	mov    $0x1,%edx
    a96a:	48 8d b4 24 10 01 00 	lea    0x110(%rsp),%rsi
    a971:	00 
    a972:	48 89 ef             	mov    %rbp,%rdi
    a975:	ff d3                	call   *%rbx
    a977:	41 89 c4             	mov    %eax,%r12d
    a97a:	85 c0                	test   %eax,%eax
    a97c:	75 1c                	jne    0xa99a
    a97e:	48 8b 94 24 18 02 00 	mov    0x218(%rsp),%rdx
    a985:	00 
    a986:	48 8b 8c 24 10 02 00 	mov    0x210(%rsp),%rcx
    a98d:	00 
    a98e:	31 c0                	xor    %eax,%eax
    a990:	48 8b b4 24 00 01 00 	mov    0x100(%rsp),%rsi
    a997:	00 
    a998:	eb 14                	jmp    0xa9ae
    a99a:	48 b8 3d 97 00 00 00 	movabs $0x973d,%rax
    a9a1:	00 00 00 
    a9a4:	48 89 e7             	mov    %rsp,%rdi
    a9a7:	ff d0                	call   *%rax
    a9a9:	eb 49                	jmp    0xa9f4
    a9ab:	48 ff c0             	inc    %rax
    a9ae:	48 39 c2             	cmp    %rax,%rdx
    a9b1:	74 28                	je     0xa9db
    a9b3:	8b 1c c6             	mov    (%rsi,%rax,8),%ebx
    a9b6:	39 1c c1             	cmp    %ebx,(%rcx,%rax,8)
    a9b9:	74 f0                	je     0xa9ab
    a9bb:	48 be d6 d3 00 00 00 	movabs $0xd3d6,%rsi
    a9c2:	00 00 00 
    a9c5:	bf 12 00 00 00       	mov    $0x12,%edi
    a9ca:	31 c0                	xor    %eax,%eax
    a9cc:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    a9d3:	00 00 00 
    a9d6:	ff d2                	call   *%rdx
    a9d8:	41 89 c4             	mov    %eax,%r12d
    a9db:	48 bd 3d 97 00 00 00 	movabs $0x973d,%rbp
    a9e2:	00 00 00 
    a9e5:	48 89 e7             	mov    %rsp,%rdi
    a9e8:	ff d5                	call   *%rbp
    a9ea:	48 8d bc 24 10 01 00 	lea    0x110(%rsp),%rdi
    a9f1:	00 
    a9f2:	ff d5                	call   *%rbp
    a9f4:	48 81 c4 20 02 00 00 	add    $0x220,%rsp
    a9fb:	44 89 e0             	mov    %r12d,%eax
    a9fe:	5b                   	pop    %rbx
    a9ff:	5d                   	pop    %rbp
    aa00:	41 5c                	pop    %r12
    aa02:	c3                   	ret    
    aa03:	53                   	push   %rbx
    aa04:	48 bb 0a a6 00 00 00 	movabs $0xa60a,%rbx
    aa0b:	00 00 00 
    aa0e:	48 83 ec 50          	sub    $0x50,%rsp
    aa12:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    aa17:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
    aa1c:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    aa21:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
    aa26:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
    aa2b:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
    aa30:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
    aa35:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
    aa3a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    aa3f:	48 a1 50 e5 00 00 00 	movabs 0xe550,%rax
    aa46:	00 00 00 
    aa49:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%rsp)
    aa50:	00 
    aa51:	ff d0                	call   *%rax
    aa53:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    aa58:	48 89 c7             	mov    %rax,%rdi
    aa5b:	48 b8 1e a5 00 00 00 	movabs $0xa51e,%rax
    aa62:	00 00 00 
    aa65:	ff d0                	call   *%rax
    aa67:	48 b8 77 bb 00 00 00 	movabs $0xbb77,%rax
    aa6e:	00 00 00 
    aa71:	ff d0                	call   *%rax
    aa73:	31 c0                	xor    %eax,%eax
    aa75:	48 bf f3 d3 00 00 00 	movabs $0xd3f3,%rdi
    aa7c:	00 00 00 
    aa7f:	ff d3                	call   *%rbx
    aa81:	48 b8 90 b7 01 00 00 	movabs $0x1b790,%rax
    aa88:	00 00 00 
    aa8b:	48 83 38 00          	cmpq   $0x0,(%rax)
    aa8f:	74 1a                	je     0xaaab
    aa91:	48 bf fd d3 00 00 00 	movabs $0xd3fd,%rdi
    aa98:	00 00 00 
    aa9b:	31 c0                	xor    %eax,%eax
    aa9d:	ff d3                	call   *%rbx
    aa9f:	48 b8 a3 bb 00 00 00 	movabs $0xbba3,%rax
    aaa6:	00 00 00 
    aaa9:	ff d0                	call   *%rax
    aaab:	48 b8 4e 2f 00 00 00 	movabs $0x2f4e,%rax
    aab2:	00 00 00 
    aab5:	ff d0                	call   *%rax
    aab7:	83 ff 07             	cmp    $0x7,%edi
    aaba:	77 08                	ja     0xaac4
    aabc:	83 ff 05             	cmp    $0x5,%edi
    aabf:	0f 97 c0             	seta   %al
    aac2:	eb 09                	jmp    0xaacd
    aac4:	83 ef 09             	sub    $0x9,%edi
    aac7:	83 ff 01             	cmp    $0x1,%edi
    aaca:	0f 96 c0             	setbe  %al
    aacd:	0f b6 c0             	movzbl %al,%eax
    aad0:	c3                   	ret    
    aad1:	41 54                	push   %r12
    aad3:	49 89 fc             	mov    %rdi,%r12
    aad6:	48 8b 3a             	mov    (%rdx),%rdi
    aad9:	55                   	push   %rbp
    aada:	53                   	push   %rbx
    aadb:	48 85 ff             	test   %rdi,%rdi
    aade:	75 0a                	jne    0xaaea
    aae0:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
    aae7:	00 
    aae8:	eb 4b                	jmp    0xab35
    aaea:	48 89 d5             	mov    %rdx,%rbp
    aaed:	be 0a 00 00 00       	mov    $0xa,%esi
    aaf2:	48 b8 59 98 00 00 00 	movabs $0x9859,%rax
    aaf9:	00 00 00 
    aafc:	ff d0                	call   *%rax
    aafe:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    ab02:	48 89 c3             	mov    %rax,%rbx
    ab05:	48 85 c0             	test   %rax,%rax
    ab08:	74 17                	je     0xab21
    ab0a:	48 89 c6             	mov    %rax,%rsi
    ab0d:	48 ff c3             	inc    %rbx
    ab10:	48 b8 93 9a 00 00 00 	movabs $0x9a93,%rax
    ab17:	00 00 00 
    ab1a:	48 29 fe             	sub    %rdi,%rsi
    ab1d:	ff d0                	call   *%rax
    ab1f:	eb 0c                	jmp    0xab2d
    ab21:	48 b8 48 9a 00 00 00 	movabs $0x9a48,%rax
    ab28:	00 00 00 
    ab2b:	ff d0                	call   *%rax
    ab2d:	49 89 04 24          	mov    %rax,(%r12)
    ab31:	48 89 5d 00          	mov    %rbx,0x0(%rbp)
    ab35:	5b                   	pop    %rbx
    ab36:	31 c0                	xor    %eax,%eax
    ab38:	5d                   	pop    %rbp
    ab39:	41 5c                	pop    %r12
    ab3b:	c3                   	ret    
    ab3c:	48 89 f0             	mov    %rsi,%rax
    ab3f:	51                   	push   %rcx
    ab40:	48 03 47 10          	add    0x10(%rdi),%rax
    ab44:	72 12                	jb     0xab58
    ab46:	48 3b 47 18          	cmp    0x18(%rdi),%rax
    ab4a:	72 2d                	jb     0xab79
    ab4c:	48 be 2a d4 00 00 00 	movabs $0xd42a,%rsi
    ab53:	00 00 00 
    ab56:	eb 0a                	jmp    0xab62
    ab58:	48 be 15 d4 00 00 00 	movabs $0xd415,%rsi
    ab5f:	00 00 00 
    ab62:	bf 0b 00 00 00       	mov    $0xb,%edi
    ab67:	31 c0                	xor    %eax,%eax
    ab69:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    ab70:	00 00 00 
    ab73:	ff d2                	call   *%rdx
    ab75:	31 c0                	xor    %eax,%eax
    ab77:	eb 03                	jmp    0xab7c
    ab79:	48 03 07             	add    (%rdi),%rax
    ab7c:	5a                   	pop    %rdx
    ab7d:	c3                   	ret    
    ab7e:	41 56                	push   %r14
    ab80:	41 55                	push   %r13
    ab82:	55                   	push   %rbp
    ab83:	48 89 d5             	mov    %rdx,%rbp
    ab86:	53                   	push   %rbx
    ab87:	48 83 ec 18          	sub    $0x18,%rsp
    ab8b:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    ab90:	48 03 6f 18          	add    0x18(%rdi),%rbp
    ab94:	72 2b                	jb     0xabc1
    ab96:	48 b8 e3 5f 00 00 00 	movabs $0x5fe3,%rax
    ab9d:	00 00 00 
    aba0:	48 89 fb             	mov    %rdi,%rbx
    aba3:	49 89 f6             	mov    %rsi,%r14
    aba6:	48 89 ee             	mov    %rbp,%rsi
    aba9:	ff d0                	call   *%rax
    abab:	41 89 c5             	mov    %eax,%r13d
    abae:	85 c0                	test   %eax,%eax
    abb0:	74 36                	je     0xabe8
    abb2:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    abb9:	00 00 00 
    abbc:	44 8b 28             	mov    (%rax),%r13d
    abbf:	eb 46                	jmp    0xac07
    abc1:	48 83 c4 18          	add    $0x18,%rsp
    abc5:	bf 0b 00 00 00       	mov    $0xb,%edi
    abca:	31 c0                	xor    %eax,%eax
    abcc:	48 be 15 d4 00 00 00 	movabs $0xd415,%rsi
    abd3:	00 00 00 
    abd6:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    abdd:	00 00 00 
    abe0:	5b                   	pop    %rbx
    abe1:	5d                   	pop    %rbp
    abe2:	41 5d                	pop    %r13
    abe4:	41 5e                	pop    %r14
    abe6:	ff e2                	jmp    *%rdx
    abe8:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
    abec:	4c 89 f6             	mov    %r14,%rsi
    abef:	48 03 3b             	add    (%rbx),%rdi
    abf2:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    abf9:	00 00 00 
    abfc:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    ac01:	ff d0                	call   *%rax
    ac03:	48 89 6b 18          	mov    %rbp,0x18(%rbx)
    ac07:	48 83 c4 18          	add    $0x18,%rsp
    ac0b:	44 89 e8             	mov    %r13d,%eax
    ac0e:	5b                   	pop    %rbx
    ac0f:	5d                   	pop    %rbp
    ac10:	41 5d                	pop    %r13
    ac12:	41 5e                	pop    %r14
    ac14:	c3                   	ret    
    ac15:	53                   	push   %rbx
    ac16:	48 89 f3             	mov    %rsi,%rbx
    ac19:	48 83 ec 20          	sub    $0x20,%rsp
    ac1d:	48 8b 77 18          	mov    0x18(%rdi),%rsi
    ac21:	48 2b 77 10          	sub    0x10(%rdi),%rsi
    ac25:	75 04                	jne    0xac2b
    ac27:	31 c0                	xor    %eax,%eax
    ac29:	eb 4a                	jmp    0xac75
    ac2b:	48 ff ce             	dec    %rsi
    ac2e:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    ac33:	48 b8 3c ab 00 00 00 	movabs $0xab3c,%rax
    ac3a:	00 00 00 
    ac3d:	ff d0                	call   *%rax
    ac3f:	80 38 00             	cmpb   $0x0,(%rax)
    ac42:	74 e3                	je     0xac27
    ac44:	c6 44 24 1f 00       	movb   $0x0,0x1f(%rsp)
    ac49:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    ac4e:	ba 01 00 00 00       	mov    $0x1,%edx
    ac53:	48 8d 74 24 1f       	lea    0x1f(%rsp),%rsi
    ac58:	48 b8 7e ab 00 00 00 	movabs $0xab7e,%rax
    ac5f:	00 00 00 
    ac62:	ff d0                	call   *%rax
    ac64:	85 c0                	test   %eax,%eax
    ac66:	74 0b                	je     0xac73
    ac68:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    ac6f:	00 00 
    ac71:	eb 02                	jmp    0xac75
    ac73:	ff 03                	incl   (%rbx)
    ac75:	48 83 c4 20          	add    $0x20,%rsp
    ac79:	5b                   	pop    %rbx
    ac7a:	c3                   	ret    
    ac7b:	41 55                	push   %r13
    ac7d:	41 54                	push   %r12
    ac7f:	49 89 fc             	mov    %rdi,%r12
    ac82:	89 d7                	mov    %edx,%edi
    ac84:	48 ba b7 aa 00 00 00 	movabs $0xaab7,%rdx
    ac8b:	00 00 00 
    ac8e:	55                   	push   %rbp
    ac8f:	53                   	push   %rbx
    ac90:	48 83 ec 18          	sub    $0x18,%rsp
    ac94:	ff d2                	call   *%rdx
    ac96:	85 c0                	test   %eax,%eax
    ac98:	75 07                	jne    0xaca1
    ac9a:	31 c0                	xor    %eax,%eax
    ac9c:	e9 96 00 00 00       	jmp    0xad37
    aca1:	89 cf                	mov    %ecx,%edi
    aca3:	ff d2                	call   *%rdx
    aca5:	85 c0                	test   %eax,%eax
    aca7:	75 f1                	jne    0xac9a
    aca9:	49 89 f5             	mov    %rsi,%r13
    acac:	c6 44 24 0f 00       	movb   $0x0,0xf(%rsp)
    acb1:	ba 01 00 00 00       	mov    $0x1,%edx
    acb6:	4c 89 e7             	mov    %r12,%rdi
    acb9:	48 bb 7e ab 00 00 00 	movabs $0xab7e,%rbx
    acc0:	00 00 00 
    acc3:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
    acc8:	ff d3                	call   *%rbx
    acca:	85 c0                	test   %eax,%eax
    accc:	74 0b                	je     0xacd9
    acce:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    acd5:	00 00 
    acd7:	eb 5e                	jmp    0xad37
    acd9:	48 b8 3c ab 00 00 00 	movabs $0xab3c,%rax
    ace0:	00 00 00 
    ace3:	31 f6                	xor    %esi,%esi
    ace5:	4c 89 e7             	mov    %r12,%rdi
    ace8:	ff d0                	call   *%rax
    acea:	48 89 c7             	mov    %rax,%rdi
    aced:	48 b8 53 84 00 00 00 	movabs $0x8453,%rax
    acf4:	00 00 00 
    acf7:	ff d0                	call   *%rax
    acf9:	4c 89 e7             	mov    %r12,%rdi
    acfc:	48 89 c5             	mov    %rax,%rbp
    acff:	48 b8 7f 60 00 00 00 	movabs $0x607f,%rax
    ad06:	00 00 00 
    ad09:	ff d0                	call   *%rax
    ad0b:	48 85 ed             	test   %rbp,%rbp
    ad0e:	74 8a                	je     0xac9a
    ad10:	48 b8 37 9a 00 00 00 	movabs $0x9a37,%rax
    ad17:	00 00 00 
    ad1a:	48 89 ef             	mov    %rbp,%rdi
    ad1d:	ff d0                	call   *%rax
    ad1f:	48 83 c4 18          	add    $0x18,%rsp
    ad23:	48 89 ee             	mov    %rbp,%rsi
    ad26:	4c 89 ef             	mov    %r13,%rdi
    ad29:	48 89 c2             	mov    %rax,%rdx
    ad2c:	48 89 d8             	mov    %rbx,%rax
    ad2f:	5b                   	pop    %rbx
    ad30:	5d                   	pop    %rbp
    ad31:	41 5c                	pop    %r12
    ad33:	41 5d                	pop    %r13
    ad35:	ff e0                	jmp    *%rax
    ad37:	48 83 c4 18          	add    $0x18,%rsp
    ad3b:	5b                   	pop    %rbx
    ad3c:	5d                   	pop    %rbp
    ad3d:	41 5c                	pop    %r12
    ad3f:	41 5d                	pop    %r13
    ad41:	c3                   	ret    
    ad42:	41 56                	push   %r14
    ad44:	44 0f be f6          	movsbl %sil,%r14d
    ad48:	41 55                	push   %r13
    ad4a:	49 89 d5             	mov    %rdx,%r13
    ad4d:	41 54                	push   %r12
    ad4f:	41 89 fc             	mov    %edi,%r12d
    ad52:	55                   	push   %rbp
    ad53:	44 89 f5             	mov    %r14d,%ebp
    ad56:	53                   	push   %rbx
    ad57:	48 bb 60 e5 00 00 00 	movabs $0xe560,%rbx
    ad5e:	00 00 00 
    ad61:	48 83 ec 10          	sub    $0x10,%rsp
    ad65:	89 7c 24 04          	mov    %edi,0x4(%rsp)
    ad69:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%rsp)
    ad70:	00 
    ad71:	8b 03                	mov    (%rbx),%eax
    ad73:	85 c0                	test   %eax,%eax
    ad75:	74 55                	je     0xadcc
    ad77:	44 39 e0             	cmp    %r12d,%eax
    ad7a:	74 06                	je     0xad82
    ad7c:	48 83 c3 10          	add    $0x10,%rbx
    ad80:	eb ef                	jmp    0xad71
    ad82:	0f be 7b 08          	movsbl 0x8(%rbx),%edi
    ad86:	40 38 ef             	cmp    %bpl,%dil
    ad89:	75 0b                	jne    0xad96
    ad8b:	31 c0                	xor    %eax,%eax
    ad8d:	83 7b 0c 00          	cmpl   $0x0,0xc(%rbx)
    ad91:	0f 44 e8             	cmove  %eax,%ebp
    ad94:	eb 39                	jmp    0xadcf
    ad96:	48 b8 80 98 00 00 00 	movabs $0x9880,%rax
    ad9d:	00 00 00 
    ada0:	ff d0                	call   *%rax
    ada2:	85 c0                	test   %eax,%eax
    ada4:	74 1b                	je     0xadc1
    ada6:	89 e8                	mov    %ebp,%eax
    ada8:	83 e0 df             	and    $0xffffffdf,%eax
    adab:	83 e8 41             	sub    $0x41,%eax
    adae:	3c 19                	cmp    $0x19,%al
    adb0:	76 0f                	jbe    0xadc1
    adb2:	41 8d 46 d0          	lea    -0x30(%r14),%eax
    adb6:	83 f8 09             	cmp    $0x9,%eax
    adb9:	76 06                	jbe    0xadc1
    adbb:	40 80 fd 5f          	cmp    $0x5f,%bpl
    adbf:	75 06                	jne    0xadc7
    adc1:	80 7b 08 00          	cmpb   $0x0,0x8(%rbx)
    adc5:	75 b5                	jne    0xad7c
    adc7:	83 3b 00             	cmpl   $0x0,(%rbx)
    adca:	75 bf                	jne    0xad8b
    adcc:	48 89 e3             	mov    %rsp,%rbx
    adcf:	41 88 6d 00          	mov    %bpl,0x0(%r13)
    add3:	8b 43 04             	mov    0x4(%rbx),%eax
    add6:	48 83 c4 10          	add    $0x10,%rsp
    adda:	5b                   	pop    %rbx
    addb:	5d                   	pop    %rbp
    addc:	41 5c                	pop    %r12
    adde:	41 5d                	pop    %r13
    ade0:	41 5e                	pop    %r14
    ade2:	c3                   	ret    
    ade3:	41 57                	push   %r15
    ade5:	41 56                	push   %r14
    ade7:	4d 89 c6             	mov    %r8,%r14
    adea:	41 55                	push   %r13
    adec:	41 54                	push   %r12
    adee:	49 bc 62 5f 00 00 00 	movabs $0x5f62,%r12
    adf5:	00 00 00 
    adf8:	55                   	push   %rbp
    adf9:	53                   	push   %rbx
    adfa:	48 89 cb             	mov    %rcx,%rbx
    adfd:	48 83 ec 38          	sub    $0x38,%rsp
    ae01:	c7 01 00 00 00 00    	movl   $0x0,(%rcx)
    ae07:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    ae0c:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
    ae11:	bf 00 04 00 00       	mov    $0x400,%edi
    ae16:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    ae1b:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    ae20:	49 c7 00 00 00 00 00 	movq   $0x0,(%r8)
    ae27:	41 ff d4             	call   *%r12
    ae2a:	48 85 c0             	test   %rax,%rax
    ae2d:	0f 84 ae 02 00 00    	je     0xb0e1
    ae33:	48 89 c5             	mov    %rax,%rbp
    ae36:	bf c8 00 00 00       	mov    $0xc8,%edi
    ae3b:	41 ff d4             	call   *%r12
    ae3e:	49 89 c4             	mov    %rax,%r12
    ae41:	48 85 c0             	test   %rax,%rax
    ae44:	0f 84 af 02 00 00    	je     0xb0f9
    ae4a:	4c 8b 7c 24 08       	mov    0x8(%rsp),%r15
    ae4f:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    ae55:	4d 85 ff             	test   %r15,%r15
    ae58:	74 06                	je     0xae60
    ae5a:	41 80 3f 00          	cmpb   $0x0,(%r15)
    ae5e:	75 48                	jne    0xaea8
    ae60:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    ae65:	48 3b 7c 24 08       	cmp    0x8(%rsp),%rdi
    ae6a:	74 15                	je     0xae81
    ae6c:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    ae73:	00 00 00 
    ae76:	ff d0                	call   *%rax
    ae78:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
    ae7f:	00 00 
    ae81:	48 83 7c 24 10 00    	cmpq   $0x0,0x10(%rsp)
    ae87:	0f 84 2b 01 00 00    	je     0xafb8
    ae8d:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    ae92:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    ae97:	be 01 00 00 00       	mov    $0x1,%esi
    ae9c:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
    aea1:	ff d0                	call   *%rax
    aea3:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    aea8:	48 83 7c 24 28 00    	cmpq   $0x0,0x28(%rsp)
    aeae:	0f 84 04 01 00 00    	je     0xafb8
    aeb4:	41 0f be 37          	movsbl (%r15),%esi
    aeb8:	40 84 f6             	test   %sil,%sil
    aebb:	0f 84 da 00 00 00    	je     0xaf9b
    aec1:	48 8d 54 24 26       	lea    0x26(%rsp),%rdx
    aec6:	44 89 ef             	mov    %r13d,%edi
    aec9:	48 b8 42 ad 00 00 00 	movabs $0xad42,%rax
    aed0:	00 00 00 
    aed3:	ff d0                	call   *%rax
    aed5:	44 89 ea             	mov    %r13d,%edx
    aed8:	48 89 ee             	mov    %rbp,%rsi
    aedb:	4c 89 e7             	mov    %r12,%rdi
    aede:	89 04 24             	mov    %eax,(%rsp)
    aee1:	89 c1                	mov    %eax,%ecx
    aee3:	48 b8 7b ac 00 00 00 	movabs $0xac7b,%rax
    aeea:	00 00 00 
    aeed:	ff d0                	call   *%rax
    aeef:	85 c0                	test   %eax,%eax
    aef1:	74 0e                	je     0xaf01
    aef3:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    aefa:	00 00 
    aefc:	e9 86 00 00 00       	jmp    0xaf87
    af01:	48 b8 b7 aa 00 00 00 	movabs $0xaab7,%rax
    af08:	00 00 00 
    af0b:	8b 3c 24             	mov    (%rsp),%edi
    af0e:	ff d0                	call   *%rax
    af10:	0f be 7c 24 26       	movsbl 0x26(%rsp),%edi
    af15:	85 c0                	test   %eax,%eax
    af17:	74 19                	je     0xaf32
    af19:	40 84 ff             	test   %dil,%dil
    af1c:	74 71                	je     0xaf8f
    af1e:	40 88 7c 24 27       	mov    %dil,0x27(%rsp)
    af23:	ba 01 00 00 00       	mov    $0x1,%edx
    af28:	48 8d 74 24 27       	lea    0x27(%rsp),%rsi
    af2d:	4c 89 e7             	mov    %r12,%rdi
    af30:	eb 49                	jmp    0xaf7b
    af32:	41 83 fd 02          	cmp    $0x2,%r13d
    af36:	74 2a                	je     0xaf62
    af38:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    af3c:	75 24                	jne    0xaf62
    af3e:	48 b8 80 98 00 00 00 	movabs $0x9880,%rax
    af45:	00 00 00 
    af48:	ff d0                	call   *%rax
    af4a:	85 c0                	test   %eax,%eax
    af4c:	74 14                	je     0xaf62
    af4e:	48 b8 15 ac 00 00 00 	movabs $0xac15,%rax
    af55:	00 00 00 
    af58:	48 89 de             	mov    %rbx,%rsi
    af5b:	48 89 ef             	mov    %rbp,%rdi
    af5e:	ff d0                	call   *%rax
    af60:	eb 25                	jmp    0xaf87
    af62:	8a 44 24 26          	mov    0x26(%rsp),%al
    af66:	84 c0                	test   %al,%al
    af68:	74 25                	je     0xaf8f
    af6a:	88 44 24 27          	mov    %al,0x27(%rsp)
    af6e:	ba 01 00 00 00       	mov    $0x1,%edx
    af73:	48 8d 74 24 27       	lea    0x27(%rsp),%rsi
    af78:	48 89 ef             	mov    %rbp,%rdi
    af7b:	48 b8 7e ab 00 00 00 	movabs $0xab7e,%rax
    af82:	00 00 00 
    af85:	ff d0                	call   *%rax
    af87:	85 c0                	test   %eax,%eax
    af89:	0f 85 6a 01 00 00    	jne    0xb0f9
    af8f:	44 8b 2c 24          	mov    (%rsp),%r13d
    af93:	49 ff c7             	inc    %r15
    af96:	e9 19 ff ff ff       	jmp    0xaeb4
    af9b:	41 83 fd 01          	cmp    $0x1,%r13d
    af9f:	74 17                	je     0xafb8
    afa1:	48 b8 b7 aa 00 00 00 	movabs $0xaab7,%rax
    afa8:	00 00 00 
    afab:	44 89 ef             	mov    %r13d,%edi
    afae:	ff d0                	call   *%rax
    afb0:	85 c0                	test   %eax,%eax
    afb2:	0f 84 9d fe ff ff    	je     0xae55
    afb8:	b9 01 00 00 00       	mov    $0x1,%ecx
    afbd:	44 89 ea             	mov    %r13d,%edx
    afc0:	48 89 ee             	mov    %rbp,%rsi
    afc3:	4c 89 e7             	mov    %r12,%rdi
    afc6:	48 b8 7b ac 00 00 00 	movabs $0xac7b,%rax
    afcd:	00 00 00 
    afd0:	ff d0                	call   *%rax
    afd2:	85 c0                	test   %eax,%eax
    afd4:	0f 85 1f 01 00 00    	jne    0xb0f9
    afda:	48 b8 15 ac 00 00 00 	movabs $0xac15,%rax
    afe1:	00 00 00 
    afe4:	48 89 de             	mov    %rbx,%rsi
    afe7:	48 89 ef             	mov    %rbp,%rdi
    afea:	ff d0                	call   *%rax
    afec:	85 c0                	test   %eax,%eax
    afee:	0f 85 05 01 00 00    	jne    0xb0f9
    aff4:	8b 3b                	mov    (%rbx),%edi
    aff6:	85 ff                	test   %edi,%edi
    aff8:	0f 84 a7 00 00 00    	je     0xb0a5
    affe:	ff c7                	inc    %edi
    b000:	be 08 00 00 00       	mov    $0x8,%esi
    b005:	45 31 ed             	xor    %r13d,%r13d
    b008:	48 b8 5b 5b 00 00 00 	movabs $0x5b5b,%rax
    b00f:	00 00 00 
    b012:	49 bf 90 60 00 00 00 	movabs $0x6090,%r15
    b019:	00 00 00 
    b01c:	48 63 ff             	movslq %edi,%rdi
    b01f:	ff d0                	call   *%rax
    b021:	49 89 06             	mov    %rax,(%r14)
    b024:	48 85 c0             	test   %rax,%rax
    b027:	0f 84 cc 00 00 00    	je     0xb0f9
    b02d:	44 39 2b             	cmp    %r13d,(%rbx)
    b030:	7e 64                	jle    0xb096
    b032:	45 85 ed             	test   %r13d,%r13d
    b035:	75 1b                	jne    0xb052
    b037:	48 b8 3c ab 00 00 00 	movabs $0xab3c,%rax
    b03e:	00 00 00 
    b041:	31 f6                	xor    %esi,%esi
    b043:	48 89 ef             	mov    %rbp,%rdi
    b046:	ff d0                	call   *%rax
    b048:	48 85 c0             	test   %rax,%rax
    b04b:	75 19                	jne    0xb066
    b04d:	e9 a7 00 00 00       	jmp    0xb0f9
    b052:	be 01 00 00 00       	mov    $0x1,%esi
    b057:	48 89 ef             	mov    %rbp,%rdi
    b05a:	41 ff d7             	call   *%r15
    b05d:	85 c0                	test   %eax,%eax
    b05f:	74 d6                	je     0xb037
    b061:	e9 93 00 00 00       	jmp    0xb0f9
    b066:	48 89 c7             	mov    %rax,%rdi
    b069:	48 89 04 24          	mov    %rax,(%rsp)
    b06d:	48 b8 37 9a 00 00 00 	movabs $0x9a37,%rax
    b074:	00 00 00 
    b077:	ff d0                	call   *%rax
    b079:	48 89 ef             	mov    %rbp,%rdi
    b07c:	48 89 c6             	mov    %rax,%rsi
    b07f:	41 ff d7             	call   *%r15
    b082:	85 c0                	test   %eax,%eax
    b084:	75 73                	jne    0xb0f9
    b086:	49 8b 06             	mov    (%r14),%rax
    b089:	48 8b 14 24          	mov    (%rsp),%rdx
    b08d:	4a 89 14 e8          	mov    %rdx,(%rax,%r13,8)
    b091:	49 ff c5             	inc    %r13
    b094:	eb 97                	jmp    0xb02d
    b096:	48 b8 5c 60 00 00 00 	movabs $0x605c,%rax
    b09d:	00 00 00 
    b0a0:	48 89 ef             	mov    %rbp,%rdi
    b0a3:	ff d0                	call   *%rax
    b0a5:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    b0ac:	00 00 00 
    b0af:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    b0b5:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    b0ba:	48 3b 7c 24 08       	cmp    0x8(%rsp),%rdi
    b0bf:	74 0c                	je     0xb0cd
    b0c1:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    b0c8:	00 00 00 
    b0cb:	ff d0                	call   *%rax
    b0cd:	48 bb c3 5f 00 00 00 	movabs $0x5fc3,%rbx
    b0d4:	00 00 00 
    b0d7:	48 89 ef             	mov    %rbp,%rdi
    b0da:	ff d3                	call   *%rbx
    b0dc:	4c 89 e7             	mov    %r12,%rdi
    b0df:	ff d3                	call   *%rbx
    b0e1:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    b0e8:	00 00 
    b0ea:	48 83 c4 38          	add    $0x38,%rsp
    b0ee:	5b                   	pop    %rbx
    b0ef:	5d                   	pop    %rbp
    b0f0:	41 5c                	pop    %r12
    b0f2:	41 5d                	pop    %r13
    b0f4:	41 5e                	pop    %r14
    b0f6:	41 5f                	pop    %r15
    b0f8:	c3                   	ret    
    b0f9:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    b100:	00 00 00 
    b103:	49 8b 3e             	mov    (%r14),%rdi
    b106:	ff d0                	call   *%rax
    b108:	eb ab                	jmp    0xb0b5
    b10a:	55                   	push   %rbp
    b10b:	53                   	push   %rbx
    b10c:	48 bb d1 aa 00 00 00 	movabs $0xaad1,%rbx
    b113:	00 00 00 
    b116:	48 83 ec 28          	sub    $0x28,%rsp
    b11a:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    b11f:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
    b125:	74 47                	je     0xb16e
    b127:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    b12c:	31 f6                	xor    %esi,%esi
    b12e:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    b133:	ff d3                	call   *%rbx
    b135:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
    b13a:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    b13f:	48 89 de             	mov    %rbx,%rsi
    b142:	48 b8 df b6 00 00 00 	movabs $0xb6df,%rax
    b149:	00 00 00 
    b14c:	48 89 ef             	mov    %rbp,%rdi
    b14f:	ff d0                	call   *%rax
    b151:	48 89 ef             	mov    %rbp,%rdi
    b154:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    b15b:	00 00 00 
    b15e:	ff d0                	call   *%rax
    b160:	48 b8 a9 87 00 00 00 	movabs $0x87a9,%rax
    b167:	00 00 00 
    b16a:	ff d0                	call   *%rax
    b16c:	eb b1                	jmp    0xb11f
    b16e:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    b175:	00 00 
    b177:	48 83 c4 28          	add    $0x28,%rsp
    b17b:	5b                   	pop    %rbx
    b17c:	5d                   	pop    %rbp
    b17d:	c3                   	ret    
    b17e:	48 85 f6             	test   %rsi,%rsi
    b181:	0f 84 8f 01 00 00    	je     0xb316
    b187:	41 57                	push   %r15
    b189:	41 56                	push   %r14
    b18b:	41 55                	push   %r13
    b18d:	41 54                	push   %r12
    b18f:	55                   	push   %rbp
    b190:	48 89 fd             	mov    %rdi,%rbp
    b193:	53                   	push   %rbx
    b194:	48 89 f3             	mov    %rsi,%rbx
    b197:	48 83 ec 38          	sub    $0x38,%rsp
    b19b:	4c 8b 6f 28          	mov    0x28(%rdi),%r13
    b19f:	4d 89 ee             	mov    %r13,%r14
    b1a2:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    b1a7:	80 3b 00             	cmpb   $0x0,(%rbx)
    b1aa:	0f 84 30 01 00 00    	je     0xb2e0
    b1b0:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
    b1b5:	41 8a 04 24          	mov    (%r12),%al
    b1b9:	84 c0                	test   %al,%al
    b1bb:	74 14                	je     0xb1d1
    b1bd:	83 e0 df             	and    $0xffffffdf,%eax
    b1c0:	83 e8 41             	sub    $0x41,%eax
    b1c3:	3c 19                	cmp    $0x19,%al
    b1c5:	77 0a                	ja     0xb1d1
    b1c7:	49 ff c4             	inc    %r12
    b1ca:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
    b1cf:	eb df                	jmp    0xb1b0
    b1d1:	31 d2                	xor    %edx,%edx
    b1d3:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
    b1d8:	4c 89 e7             	mov    %r12,%rdi
    b1db:	48 b8 48 a0 00 00 00 	movabs $0xa048,%rax
    b1e2:	00 00 00 
    b1e5:	ff d0                	call   *%rax
    b1e7:	ff c8                	dec    %eax
    b1e9:	89 44 24 04          	mov    %eax,0x4(%rsp)
    b1ed:	48 b8 60 b6 01 00 00 	movabs $0x1b660,%rax
    b1f4:	00 00 00 
    b1f7:	4c 8b 38             	mov    (%rax),%r15
    b1fa:	4d 85 ff             	test   %r15,%r15
    b1fd:	0f 84 98 00 00 00    	je     0xb29b
    b203:	49 39 dc             	cmp    %rbx,%r12
    b206:	75 41                	jne    0xb249
    b208:	8b 44 24 04          	mov    0x4(%rsp),%eax
    b20c:	48 89 ef             	mov    %rbp,%rdi
    b20f:	4c 89 75 28          	mov    %r14,0x28(%rbp)
    b213:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
    b218:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
    b21f:	00 00 
    b221:	48 be a4 b5 00 00 00 	movabs $0xb5a4,%rsi
    b228:	00 00 00 
    b22b:	89 44 24 20          	mov    %eax,0x20(%rsp)
    b22f:	41 ff 57 18          	call   *0x18(%r15)
    b233:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    b238:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    b23f:	00 00 00 
    b242:	83 38 00             	cmpl   $0x0,(%rax)
    b245:	74 60                	je     0xb2a7
    b247:	eb 33                	jmp    0xb27c
    b249:	4c 89 e2             	mov    %r12,%rdx
    b24c:	49 8b 7f 10          	mov    0x10(%r15),%rdi
    b250:	48 89 de             	mov    %rbx,%rsi
    b253:	48 b8 22 98 00 00 00 	movabs $0x9822,%rax
    b25a:	00 00 00 
    b25d:	48 29 da             	sub    %rbx,%rdx
    b260:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    b265:	ff d0                	call   *%rax
    b267:	85 c0                	test   %eax,%eax
    b269:	75 5a                	jne    0xb2c5
    b26b:	49 8b 47 10          	mov    0x10(%r15),%rax
    b26f:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    b274:	80 3c 10 00          	cmpb   $0x0,(%rax,%rdx,1)
    b278:	74 8e                	je     0xb208
    b27a:	eb 49                	jmp    0xb2c5
    b27c:	48 ba 12 5c 00 00 00 	movabs $0x5c12,%rdx
    b283:	00 00 00 
    b286:	ff d2                	call   *%rdx
    b288:	4c 89 6d 28          	mov    %r13,0x28(%rbp)
    b28c:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    b293:	00 00 00 
    b296:	83 38 13             	cmpl   $0x13,(%rax)
    b299:	74 1a                	je     0xb2b5
    b29b:	48 bb 12 5c 00 00 00 	movabs $0x5c12,%rbx
    b2a2:	00 00 00 
    b2a5:	eb 26                	jmp    0xb2cd
    b2a7:	4c 89 6d 28          	mov    %r13,0x28(%rbp)
    b2ab:	48 89 f8             	mov    %rdi,%rax
    b2ae:	48 85 ff             	test   %rdi,%rdi
    b2b1:	74 e8                	je     0xb29b
    b2b3:	eb 34                	jmp    0xb2e9
    b2b5:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    b2bc:	00 00 00 
    b2bf:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    b2c5:	4d 8b 3f             	mov    (%r15),%r15
    b2c8:	e9 2d ff ff ff       	jmp    0xb1fa
    b2cd:	4d 85 f6             	test   %r14,%r14
    b2d0:	74 13                	je     0xb2e5
    b2d2:	49 8b 6e 28          	mov    0x28(%r14),%rbp
    b2d6:	4c 89 f7             	mov    %r14,%rdi
    b2d9:	ff d3                	call   *%rbx
    b2db:	49 89 ee             	mov    %rbp,%r14
    b2de:	eb ed                	jmp    0xb2cd
    b2e0:	4c 89 f0             	mov    %r14,%rax
    b2e3:	eb 22                	jmp    0xb307
    b2e5:	31 c0                	xor    %eax,%eax
    b2e7:	eb 1e                	jmp    0xb307
    b2e9:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    b2ee:	4c 89 77 28          	mov    %r14,0x28(%rdi)
    b2f2:	48 85 db             	test   %rbx,%rbx
    b2f5:	74 10                	je     0xb307
    b2f7:	80 3b 2c             	cmpb   $0x2c,(%rbx)
    b2fa:	75 0b                	jne    0xb307
    b2fc:	48 ff c3             	inc    %rbx
    b2ff:	49 89 fe             	mov    %rdi,%r14
    b302:	e9 9b fe ff ff       	jmp    0xb1a2
    b307:	48 83 c4 38          	add    $0x38,%rsp
    b30b:	5b                   	pop    %rbx
    b30c:	5d                   	pop    %rbp
    b30d:	41 5c                	pop    %r12
    b30f:	41 5d                	pop    %r13
    b311:	41 5e                	pop    %r14
    b313:	41 5f                	pop    %r15
    b315:	c3                   	ret    
    b316:	31 c0                	xor    %eax,%eax
    b318:	c3                   	ret    
    b319:	48 b8 60 b6 01 00 00 	movabs $0x1b660,%rax
    b320:	00 00 00 
    b323:	41 54                	push   %r12
    b325:	49 bc 09 b6 00 00 00 	movabs $0xb609,%r12
    b32c:	00 00 00 
    b32f:	55                   	push   %rbp
    b330:	48 89 fd             	mov    %rdi,%rbp
    b333:	53                   	push   %rbx
    b334:	48 83 ec 20          	sub    $0x20,%rsp
    b338:	48 8b 18             	mov    (%rax),%rbx
    b33b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
    b342:	00 
    b343:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    b348:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
    b34d:	48 85 db             	test   %rbx,%rbx
    b350:	74 2e                	je     0xb380
    b352:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    b357:	4c 89 e6             	mov    %r12,%rsi
    b35a:	48 89 ef             	mov    %rbp,%rdi
    b35d:	ff 53 18             	call   *0x18(%rbx)
    b360:	85 c0                	test   %eax,%eax
    b362:	74 10                	je     0xb374
    b364:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    b36b:	00 00 00 
    b36e:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    b374:	83 7c 24 08 00       	cmpl   $0x0,0x8(%rsp)
    b379:	75 05                	jne    0xb380
    b37b:	48 8b 1b             	mov    (%rbx),%rbx
    b37e:	eb cd                	jmp    0xb34d
    b380:	8b 44 24 08          	mov    0x8(%rsp),%eax
    b384:	48 83 c4 20          	add    $0x20,%rsp
    b388:	5b                   	pop    %rbx
    b389:	5d                   	pop    %rbp
    b38a:	41 5c                	pop    %r12
    b38c:	c3                   	ret    
    b38d:	41 57                	push   %r15
    b38f:	41 56                	push   %r14
    b391:	49 be 50 f8 00 00 00 	movabs $0xf850,%r14
    b398:	00 00 00 
    b39b:	41 55                	push   %r13
    b39d:	41 54                	push   %r12
    b39f:	55                   	push   %rbp
    b3a0:	53                   	push   %rbx
    b3a1:	48 83 ec 48          	sub    $0x48,%rsp
    b3a5:	49 8b 06             	mov    (%r14),%rax
    b3a8:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    b3ad:	31 c0                	xor    %eax,%eax
    b3af:	48 85 ff             	test   %rdi,%rdi
    b3b2:	75 32                	jne    0xb3e6
    b3b4:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    b3b9:	49 2b 06             	sub    (%r14),%rax
    b3bc:	0f 85 32 01 00 00    	jne    0xb4f4
    b3c2:	48 bf 3c d4 00 00 00 	movabs $0xd43c,%rdi
    b3c9:	00 00 00 
    b3cc:	48 83 c4 48          	add    $0x48,%rsp
    b3d0:	48 b8 48 9a 00 00 00 	movabs $0x9a48,%rax
    b3d7:	00 00 00 
    b3da:	5b                   	pop    %rbx
    b3db:	5d                   	pop    %rbp
    b3dc:	41 5c                	pop    %r12
    b3de:	41 5d                	pop    %r13
    b3e0:	41 5e                	pop    %r14
    b3e2:	41 5f                	pop    %r15
    b3e4:	ff e0                	jmp    *%rax
    b3e6:	49 89 fc             	mov    %rdi,%r12
    b3e9:	48 89 fd             	mov    %rdi,%rbp
    b3ec:	31 db                	xor    %ebx,%ebx
    b3ee:	49 bf 37 9a 00 00 00 	movabs $0x9a37,%r15
    b3f5:	00 00 00 
    b3f8:	48 8b 45 30          	mov    0x30(%rbp),%rax
    b3fc:	48 8b 78 10          	mov    0x10(%rax),%rdi
    b400:	41 ff d7             	call   *%r15
    b403:	48 8b 6d 28          	mov    0x28(%rbp),%rbp
    b407:	48 8d 5c 03 1c       	lea    0x1c(%rbx,%rax,1),%rbx
    b40c:	48 85 ed             	test   %rbp,%rbp
    b40f:	75 e7                	jne    0xb3f8
    b411:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    b418:	00 00 00 
    b41b:	48 8d 7b 01          	lea    0x1(%rbx),%rdi
    b41f:	ff d0                	call   *%rax
    b421:	49 89 c5             	mov    %rax,%r13
    b424:	48 85 c0             	test   %rax,%rax
    b427:	0f 84 bd 00 00 00    	je     0xb4ea
    b42d:	49 bb 3d d4 00 00 00 	movabs $0xd43d,%r11
    b434:	00 00 00 
    b437:	4c 8d 04 18          	lea    (%rax,%rbx,1),%r8
    b43b:	41 c6 00 00          	movb   $0x0,(%r8)
    b43f:	4d 89 c1             	mov    %r8,%r9
    b442:	41 8b 04 24          	mov    (%r12),%eax
    b446:	4c 89 da             	mov    %r11,%rdx
    b449:	4c 89 04 24          	mov    %r8,(%rsp)
    b44d:	be 1b 00 00 00       	mov    $0x1b,%esi
    b452:	49 ba cb a7 00 00 00 	movabs $0xa7cb,%r10
    b459:	00 00 00 
    b45c:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
    b461:	48 8d 7c 24 1d       	lea    0x1d(%rsp),%rdi
    b466:	48 bb 59 97 00 00 00 	movabs $0x9759,%rbx
    b46d:	00 00 00 
    b470:	8d 48 01             	lea    0x1(%rax),%ecx
    b473:	31 c0                	xor    %eax,%eax
    b475:	41 ff d2             	call   *%r10
    b478:	48 8d 7c 24 1d       	lea    0x1d(%rsp),%rdi
    b47d:	41 ff d7             	call   *%r15
    b480:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
    b485:	48 8d 74 24 1d       	lea    0x1d(%rsp),%rsi
    b48a:	48 89 c2             	mov    %rax,%rdx
    b48d:	49 29 c1             	sub    %rax,%r9
    b490:	4c 89 cd             	mov    %r9,%rbp
    b493:	4c 89 cf             	mov    %r9,%rdi
    b496:	ff d3                	call   *%rbx
    b498:	49 8b 44 24 30       	mov    0x30(%r12),%rax
    b49d:	48 8b 78 10          	mov    0x10(%rax),%rdi
    b4a1:	41 ff d7             	call   *%r15
    b4a4:	48 29 c5             	sub    %rax,%rbp
    b4a7:	48 89 c2             	mov    %rax,%rdx
    b4aa:	49 8b 44 24 30       	mov    0x30(%r12),%rax
    b4af:	48 89 ef             	mov    %rbp,%rdi
    b4b2:	48 8b 70 10          	mov    0x10(%rax),%rsi
    b4b6:	ff d3                	call   *%rbx
    b4b8:	c6 45 ff 2c          	movb   $0x2c,-0x1(%rbp)
    b4bc:	4d 8b 64 24 28       	mov    0x28(%r12),%r12
    b4c1:	4c 8d 4d ff          	lea    -0x1(%rbp),%r9
    b4c5:	49 bb 3d d4 00 00 00 	movabs $0xd43d,%r11
    b4cc:	00 00 00 
    b4cf:	4c 8b 04 24          	mov    (%rsp),%r8
    b4d3:	4d 85 e4             	test   %r12,%r12
    b4d6:	0f 85 66 ff ff ff    	jne    0xb442
    b4dc:	4c 89 c2             	mov    %r8,%rdx
    b4df:	48 89 ee             	mov    %rbp,%rsi
    b4e2:	4c 89 ef             	mov    %r13,%rdi
    b4e5:	4c 29 ca             	sub    %r9,%rdx
    b4e8:	ff d3                	call   *%rbx
    b4ea:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    b4ef:	49 2b 06             	sub    (%r14),%rax
    b4f2:	74 0c                	je     0xb500
    b4f4:	48 b8 40 3e 00 00 00 	movabs $0x3e40,%rax
    b4fb:	00 00 00 
    b4fe:	ff d0                	call   *%rax
    b500:	48 83 c4 48          	add    $0x48,%rsp
    b504:	4c 89 e8             	mov    %r13,%rax
    b507:	5b                   	pop    %rbx
    b508:	5d                   	pop    %rbp
    b509:	41 5c                	pop    %r12
    b50b:	41 5d                	pop    %r13
    b50d:	41 5e                	pop    %r14
    b50f:	41 5f                	pop    %r15
    b511:	c3                   	ret    
    b512:	41 54                	push   %r12
    b514:	49 89 fc             	mov    %rdi,%r12
    b517:	b8 01 00 00 00       	mov    $0x1,%eax
    b51c:	55                   	push   %rbp
    b51d:	53                   	push   %rbx
    b51e:	48 8b 7f 28          	mov    0x28(%rdi),%rdi
    b522:	48 85 ff             	test   %rdi,%rdi
    b525:	74 78                	je     0xb59f
    b527:	48 8b 56 10          	mov    0x10(%rsi),%rdx
    b52b:	48 89 f3             	mov    %rsi,%rbx
    b52e:	48 03 56 08          	add    0x8(%rsi),%rdx
    b532:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
    b536:	76 67                	jbe    0xb59f
    b538:	48 b8 8d b3 00 00 00 	movabs $0xb38d,%rax
    b53f:	00 00 00 
    b542:	ff d0                	call   *%rax
    b544:	48 8b 53 30          	mov    0x30(%rbx),%rdx
    b548:	be 30 00 00 00       	mov    $0x30,%esi
    b54d:	48 b9 40 d4 00 00 00 	movabs $0xd440,%rcx
    b554:	00 00 00 
    b557:	48 bf 7c d4 00 00 00 	movabs $0xd47c,%rdi
    b55e:	00 00 00 
    b561:	48 89 c5             	mov    %rax,%rbp
    b564:	8b 03                	mov    (%rbx),%eax
    b566:	49 ba b7 a6 00 00 00 	movabs $0xa6b7,%r10
    b56d:	00 00 00 
    b570:	4c 8b 42 10          	mov    0x10(%rdx),%r8
    b574:	55                   	push   %rbp
    b575:	48 ba 72 d4 00 00 00 	movabs $0xd472,%rdx
    b57c:	00 00 00 
    b57f:	41 ff 34 24          	push   (%r12)
    b583:	44 8d 48 01          	lea    0x1(%rax),%r9d
    b587:	31 c0                	xor    %eax,%eax
    b589:	41 ff d2             	call   *%r10
    b58c:	48 89 ef             	mov    %rbp,%rdi
    b58f:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    b596:	00 00 00 
    b599:	ff d0                	call   *%rax
    b59b:	58                   	pop    %rax
    b59c:	31 c0                	xor    %eax,%eax
    b59e:	5a                   	pop    %rdx
    b59f:	5b                   	pop    %rbx
    b5a0:	5d                   	pop    %rbp
    b5a1:	41 5c                	pop    %r12
    b5a3:	c3                   	ret    
    b5a4:	8b 06                	mov    (%rsi),%eax
    b5a6:	39 02                	cmp    %eax,(%rdx)
    b5a8:	75 5c                	jne    0xb606
    b5aa:	48 b8 12 b5 00 00 00 	movabs $0xb512,%rax
    b5b1:	00 00 00 
    b5b4:	55                   	push   %rbp
    b5b5:	48 89 f5             	mov    %rsi,%rbp
    b5b8:	53                   	push   %rbx
    b5b9:	48 89 d3             	mov    %rdx,%rbx
    b5bc:	51                   	push   %rcx
    b5bd:	ff d0                	call   *%rax
    b5bf:	85 c0                	test   %eax,%eax
    b5c1:	75 04                	jne    0xb5c7
    b5c3:	31 c0                	xor    %eax,%eax
    b5c5:	eb 3b                	jmp    0xb602
    b5c7:	48 b8 c3 5b 00 00 00 	movabs $0x5bc3,%rax
    b5ce:	00 00 00 
    b5d1:	bf 40 00 00 00       	mov    $0x40,%edi
    b5d6:	ff d0                	call   *%rax
    b5d8:	48 89 c7             	mov    %rax,%rdi
    b5db:	48 89 43 08          	mov    %rax,0x8(%rbx)
    b5df:	b8 01 00 00 00       	mov    $0x1,%eax
    b5e4:	48 85 ff             	test   %rdi,%rdi
    b5e7:	74 19                	je     0xb602
    b5e9:	ba 40 00 00 00       	mov    $0x40,%edx
    b5ee:	48 89 ee             	mov    %rbp,%rsi
    b5f1:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    b5f8:	00 00 00 
    b5fb:	ff d0                	call   *%rax
    b5fd:	b8 01 00 00 00       	mov    $0x1,%eax
    b602:	5a                   	pop    %rdx
    b603:	5b                   	pop    %rbx
    b604:	5d                   	pop    %rbp
    b605:	c3                   	ret    
    b606:	31 c0                	xor    %eax,%eax
    b608:	c3                   	ret    
    b609:	41 55                	push   %r13
    b60b:	49 89 f0             	mov    %rsi,%r8
    b60e:	b9 10 00 00 00       	mov    $0x10,%ecx
    b613:	48 b8 12 b5 00 00 00 	movabs $0xb512,%rax
    b61a:	00 00 00 
    b61d:	41 54                	push   %r12
    b61f:	55                   	push   %rbp
    b620:	48 89 d5             	mov    %rdx,%rbp
    b623:	53                   	push   %rbx
    b624:	48 89 fb             	mov    %rdi,%rbx
    b627:	48 83 ec 48          	sub    $0x48,%rsp
    b62b:	48 89 e7             	mov    %rsp,%rdi
    b62e:	f3 a5                	rep movsl %ds:(%rsi),%es:(%rdi)
    b630:	4c 89 c6             	mov    %r8,%rsi
    b633:	48 89 df             	mov    %rbx,%rdi
    b636:	ff d0                	call   *%rax
    b638:	85 c0                	test   %eax,%eax
    b63a:	0f 84 94 00 00 00    	je     0xb6d4
    b640:	48 8b 43 28          	mov    0x28(%rbx),%rax
    b644:	48 8b 55 10          	mov    0x10(%rbp),%rdx
    b648:	48 89 e6             	mov    %rsp,%rsi
    b64b:	48 89 df             	mov    %rbx,%rdi
    b64e:	48 c7 43 28 00 00 00 	movq   $0x0,0x28(%rbx)
    b655:	00 
    b656:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    b65b:	ff 55 08             	call   *0x8(%rbp)
    b65e:	85 c0                	test   %eax,%eax
    b660:	74 0e                	je     0xb670
    b662:	c7 45 00 01 00 00 00 	movl   $0x1,0x0(%rbp)
    b669:	b8 01 00 00 00       	mov    $0x1,%eax
    b66e:	eb 64                	jmp    0xb6d4
    b670:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
    b676:	75 0e                	jne    0xb686
    b678:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    b67d:	48 89 43 28          	mov    %rax,0x28(%rbx)
    b681:	8b 45 00             	mov    0x0(%rbp),%eax
    b684:	eb 4e                	jmp    0xb6d4
    b686:	48 b8 60 b6 01 00 00 	movabs $0x1b660,%rax
    b68d:	00 00 00 
    b690:	48 89 63 28          	mov    %rsp,0x28(%rbx)
    b694:	4c 8b 20             	mov    (%rax),%r12
    b697:	49 bd 09 b6 00 00 00 	movabs $0xb609,%r13
    b69e:	00 00 00 
    b6a1:	4d 85 e4             	test   %r12,%r12
    b6a4:	74 d2                	je     0xb678
    b6a6:	48 89 ea             	mov    %rbp,%rdx
    b6a9:	4c 89 ee             	mov    %r13,%rsi
    b6ac:	48 89 df             	mov    %rbx,%rdi
    b6af:	41 ff 54 24 18       	call   *0x18(%r12)
    b6b4:	85 c0                	test   %eax,%eax
    b6b6:	74 10                	je     0xb6c8
    b6b8:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    b6bf:	00 00 00 
    b6c2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    b6c8:	83 7d 00 00          	cmpl   $0x0,0x0(%rbp)
    b6cc:	75 aa                	jne    0xb678
    b6ce:	4d 8b 24 24          	mov    (%r12),%r12
    b6d2:	eb cd                	jmp    0xb6a1
    b6d4:	48 83 c4 48          	add    $0x48,%rsp
    b6d8:	5b                   	pop    %rbx
    b6d9:	5d                   	pop    %rbp
    b6da:	41 5c                	pop    %r12
    b6dc:	41 5d                	pop    %r13
    b6de:	c3                   	ret    
    b6df:	48 b8 e3 ad 00 00 00 	movabs $0xade3,%rax
    b6e6:	00 00 00 
    b6e9:	41 54                	push   %r12
    b6eb:	55                   	push   %rbp
    b6ec:	53                   	push   %rbx
    b6ed:	48 83 ec 10          	sub    $0x10,%rsp
    b6f1:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    b6f6:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    b6fb:	ff d0                	call   *%rax
    b6fd:	85 c0                	test   %eax,%eax
    b6ff:	0f 85 09 01 00 00    	jne    0xb80e
    b705:	8b 54 24 04          	mov    0x4(%rsp),%edx
    b709:	85 d2                	test   %edx,%edx
    b70b:	0f 88 fd 00 00 00    	js     0xb80e
    b711:	0f 84 00 01 00 00    	je     0xb817
    b717:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    b71c:	ff ca                	dec    %edx
    b71e:	48 8b 38             	mov    (%rax),%rdi
    b721:	75 3c                	jne    0xb75f
    b723:	48 b8 59 98 00 00 00 	movabs $0x9859,%rax
    b72a:	00 00 00 
    b72d:	be 3d 00 00 00       	mov    $0x3d,%esi
    b732:	ff d0                	call   *%rax
    b734:	48 89 c3             	mov    %rax,%rbx
    b737:	48 85 c0             	test   %rax,%rax
    b73a:	74 23                	je     0xb75f
    b73c:	c6 00 00             	movb   $0x0,(%rax)
    b73f:	48 8d 70 01          	lea    0x1(%rax),%rsi
    b743:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    b748:	48 8b 38             	mov    (%rax),%rdi
    b74b:	48 b8 1f 83 00 00 00 	movabs $0x831f,%rax
    b752:	00 00 00 
    b755:	ff d0                	call   *%rax
    b757:	c6 03 3d             	movb   $0x3d,(%rbx)
    b75a:	e9 94 00 00 00       	jmp    0xb7f3
    b75f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    b764:	48 8b 28             	mov    (%rax),%rbp
    b767:	80 7d 00 00          	cmpb   $0x0,0x0(%rbp)
    b76b:	0f 84 82 00 00 00    	je     0xb7f3
    b771:	49 bc d8 f8 00 00 00 	movabs $0xf8d8,%r12
    b778:	00 00 00 
    b77b:	48 89 ee             	mov    %rbp,%rsi
    b77e:	48 bb 6a 90 00 00 00 	movabs $0x906a,%rbx
    b785:	00 00 00 
    b788:	49 8b 3c 24          	mov    (%r12),%rdi
    b78c:	ff d3                	call   *%rbx
    b78e:	48 85 c0             	test   %rax,%rax
    b791:	74 18                	je     0xb7ab
    b793:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    b798:	48 89 c7             	mov    %rax,%rdi
    b79b:	48 8d 51 08          	lea    0x8(%rcx),%rdx
    b79f:	8b 4c 24 04          	mov    0x4(%rsp),%ecx
    b7a3:	8d 71 ff             	lea    -0x1(%rcx),%esi
    b7a6:	ff 50 20             	call   *0x20(%rax)
    b7a9:	eb 48                	jmp    0xb7f3
    b7ab:	48 bf 8d d4 00 00 00 	movabs $0xd48d,%rdi
    b7b2:	00 00 00 
    b7b5:	48 89 ee             	mov    %rbp,%rsi
    b7b8:	31 c0                	xor    %eax,%eax
    b7ba:	48 ba 59 a6 00 00 00 	movabs $0xa659,%rdx
    b7c1:	00 00 00 
    b7c4:	ff d2                	call   *%rdx
    b7c6:	49 8b 3c 24          	mov    (%r12),%rdi
    b7ca:	48 be a4 d4 00 00 00 	movabs $0xd4a4,%rsi
    b7d1:	00 00 00 
    b7d4:	ff d3                	call   *%rbx
    b7d6:	48 85 c0             	test   %rax,%rax
    b7d9:	74 18                	je     0xb7f3
    b7db:	48 bf a9 d4 00 00 00 	movabs $0xd4a9,%rdi
    b7e2:	00 00 00 
    b7e5:	31 c0                	xor    %eax,%eax
    b7e7:	48 ba 0a a6 00 00 00 	movabs $0xa60a,%rdx
    b7ee:	00 00 00 
    b7f1:	ff d2                	call   *%rdx
    b7f3:	48 bb 12 5c 00 00 00 	movabs $0x5c12,%rbx
    b7fa:	00 00 00 
    b7fd:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    b802:	48 8b 38             	mov    (%rax),%rdi
    b805:	ff d3                	call   *%rbx
    b807:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    b80c:	ff d3                	call   *%rbx
    b80e:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    b815:	00 00 
    b817:	48 83 c4 10          	add    $0x10,%rsp
    b81b:	5b                   	pop    %rbx
    b81c:	5d                   	pop    %rbp
    b81d:	41 5c                	pop    %r12
    b81f:	c3                   	ret    
    b820:	48 b8 c2 d4 00 00 00 	movabs $0xd4c2,%rax
    b827:	00 00 00 
    b82a:	41 57                	push   %r15
    b82c:	48 ba 0a a6 00 00 00 	movabs $0xa60a,%rdx
    b833:	00 00 00 
    b836:	41 56                	push   %r14
    b838:	49 be a3 bb 00 00 00 	movabs $0xbba3,%r14
    b83f:	00 00 00 
    b842:	41 55                	push   %r13
    b844:	41 54                	push   %r12
    b846:	49 89 fc             	mov    %rdi,%r12
    b849:	48 bf bf d4 00 00 00 	movabs $0xd4bf,%rdi
    b850:	00 00 00 
    b853:	55                   	push   %rbp
    b854:	48 bd 80 b6 01 00 00 	movabs $0x1b680,%rbp
    b85b:	00 00 00 
    b85e:	53                   	push   %rbx
    b85f:	48 83 ec 18          	sub    $0x18,%rsp
    b863:	85 f6                	test   %esi,%esi
    b865:	48 0f 44 f8          	cmove  %rax,%rdi
    b869:	31 c0                	xor    %eax,%eax
    b86b:	31 db                	xor    %ebx,%ebx
    b86d:	ff d2                	call   *%rdx
    b86f:	ba 00 01 00 00       	mov    $0x100,%edx
    b874:	31 f6                	xor    %esi,%esi
    b876:	48 89 ef             	mov    %rbp,%rdi
    b879:	48 b8 b8 99 00 00 00 	movabs $0x99b8,%rax
    b880:	00 00 00 
    b883:	ff d0                	call   *%rax
    b885:	41 ff d6             	call   *%r14
    b888:	49 bd 77 bb 00 00 00 	movabs $0xbb77,%r13
    b88f:	00 00 00 
    b892:	83 f8 0a             	cmp    $0xa,%eax
    b895:	74 73                	je     0xb90a
    b897:	83 f8 0d             	cmp    $0xd,%eax
    b89a:	74 6e                	je     0xb90a
    b89c:	8d 50 e0             	lea    -0x20(%rax),%edx
    b89f:	83 fa 5e             	cmp    $0x5e,%edx
    b8a2:	77 32                	ja     0xb8d6
    b8a4:	81 fb fe 00 00 00    	cmp    $0xfe,%ebx
    b8aa:	7f 56                	jg     0xb902
    b8ac:	44 8d 7b 01          	lea    0x1(%rbx),%r15d
    b8b0:	48 63 db             	movslq %ebx,%rbx
    b8b3:	88 44 24 0c          	mov    %al,0xc(%rsp)
    b8b7:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
    b8bc:	88 44 1d 00          	mov    %al,0x0(%rbp,%rbx,1)
    b8c0:	44 89 fb             	mov    %r15d,%ebx
    b8c3:	48 a1 a0 e6 00 00 00 	movabs 0xe6a0,%rax
    b8ca:	00 00 00 
    b8cd:	c6 44 24 0d 00       	movb   $0x0,0xd(%rsp)
    b8d2:	ff d0                	call   *%rax
    b8d4:	eb 2c                	jmp    0xb902
    b8d6:	83 f8 08             	cmp    $0x8,%eax
    b8d9:	75 27                	jne    0xb902
    b8db:	85 db                	test   %ebx,%ebx
    b8dd:	74 23                	je     0xb902
    b8df:	ff cb                	dec    %ebx
    b8e1:	c7 44 24 0c 08 20 08 	movl   $0x82008,0xc(%rsp)
    b8e8:	00 
    b8e9:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
    b8ee:	48 63 c3             	movslq %ebx,%rax
    b8f1:	c6 44 05 00 00       	movb   $0x0,0x0(%rbp,%rax,1)
    b8f6:	48 a1 a0 e6 00 00 00 	movabs 0xe6a0,%rax
    b8fd:	00 00 00 
    b900:	ff d0                	call   *%rax
    b902:	41 ff d5             	call   *%r13
    b905:	e9 7b ff ff ff       	jmp    0xb885
    b90a:	48 a1 a0 e6 00 00 00 	movabs 0xe6a0,%rax
    b911:	00 00 00 
    b914:	48 bf d0 d4 00 00 00 	movabs $0xd4d0,%rdi
    b91b:	00 00 00 
    b91e:	ff d0                	call   *%rax
    b920:	41 ff d5             	call   *%r13
    b923:	48 89 ef             	mov    %rbp,%rdi
    b926:	48 b8 48 9a 00 00 00 	movabs $0x9a48,%rax
    b92d:	00 00 00 
    b930:	ff d0                	call   *%rax
    b932:	49 89 04 24          	mov    %rax,(%r12)
    b936:	48 83 c4 18          	add    $0x18,%rsp
    b93a:	31 c0                	xor    %eax,%eax
    b93c:	5b                   	pop    %rbx
    b93d:	5d                   	pop    %rbp
    b93e:	41 5c                	pop    %r12
    b940:	41 5d                	pop    %r13
    b942:	41 5e                	pop    %r14
    b944:	41 5f                	pop    %r15
    b946:	c3                   	ret    
    b947:	48 bf d2 d4 00 00 00 	movabs $0xd4d2,%rdi
    b94e:	00 00 00 
    b951:	41 54                	push   %r12
    b953:	31 c0                	xor    %eax,%eax
    b955:	48 ba 0a a6 00 00 00 	movabs $0xa60a,%rdx
    b95c:	00 00 00 
    b95f:	55                   	push   %rbp
    b960:	53                   	push   %rbx
    b961:	48 bb a9 87 00 00 00 	movabs $0x87a9,%rbx
    b968:	00 00 00 
    b96b:	48 83 ec 10          	sub    $0x10,%rsp
    b96f:	ff d2                	call   *%rdx
    b971:	ff d3                	call   *%rbx
    b973:	31 d2                	xor    %edx,%edx
    b975:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    b97c:	00 00 00 
    b97f:	31 f6                	xor    %esi,%esi
    b981:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    b987:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    b98c:	49 bc 20 b8 00 00 00 	movabs $0xb820,%r12
    b993:	00 00 00 
    b996:	41 ff d4             	call   *%r12
    b999:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    b99e:	48 85 ed             	test   %rbp,%rbp
    b9a1:	74 ce                	je     0xb971
    b9a3:	80 7d 00 00          	cmpb   $0x0,0x0(%rbp)
    b9a7:	74 c8                	je     0xb971
    b9a9:	48 89 ef             	mov    %rbp,%rdi
    b9ac:	31 d2                	xor    %edx,%edx
    b9ae:	4c 89 e6             	mov    %r12,%rsi
    b9b1:	48 b8 df b6 00 00 00 	movabs $0xb6df,%rax
    b9b8:	00 00 00 
    b9bb:	ff d0                	call   *%rax
    b9bd:	48 89 ef             	mov    %rbp,%rdi
    b9c0:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    b9c7:	00 00 00 
    b9ca:	ff d0                	call   *%rax
    b9cc:	eb a3                	jmp    0xb971
    b9ce:	41 54                	push   %r12
    b9d0:	31 c0                	xor    %eax,%eax
    b9d2:	b9 08 00 00 00       	mov    $0x8,%ecx
    b9d7:	55                   	push   %rbp
    b9d8:	48 89 f5             	mov    %rsi,%rbp
    b9db:	53                   	push   %rbx
    b9dc:	89 fb                	mov    %edi,%ebx
    b9de:	48 83 ec 20          	sub    $0x20,%rsp
    b9e2:	48 89 e7             	mov    %rsp,%rdi
    b9e5:	f3 ab                	rep stos %eax,%es:(%rdi)
    b9e7:	89 d8                	mov    %ebx,%eax
    b9e9:	c6 44 24 08 01       	movb   $0x1,0x8(%rsp)
    b9ee:	25 ff ff 7f 00       	and    $0x7fffff,%eax
    b9f3:	89 04 24             	mov    %eax,(%rsp)
    b9f6:	83 fb 09             	cmp    $0x9,%ebx
    b9f9:	75 34                	jne    0xba2f
    b9fb:	48 8b 46 40          	mov    0x40(%rsi),%rax
    b9ff:	48 85 c0             	test   %rax,%rax
    ba02:	74 2b                	je     0xba2f
    ba04:	48 89 f7             	mov    %rsi,%rdi
    ba07:	bb 08 00 00 00       	mov    $0x8,%ebx
    ba0c:	49 bc ce b9 00 00 00 	movabs $0xb9ce,%r12
    ba13:	00 00 00 
    ba16:	ff d0                	call   *%rax
    ba18:	83 e0 07             	and    $0x7,%eax
    ba1b:	29 c3                	sub    %eax,%ebx
    ba1d:	83 eb 01             	sub    $0x1,%ebx
    ba20:	72 2f                	jb     0xba51
    ba22:	48 89 ee             	mov    %rbp,%rsi
    ba25:	bf 20 00 00 00       	mov    $0x20,%edi
    ba2a:	41 ff d4             	call   *%r12
    ba2d:	eb ee                	jmp    0xba1d
    ba2f:	48 89 e6             	mov    %rsp,%rsi
    ba32:	48 89 ef             	mov    %rbp,%rdi
    ba35:	ff 55 28             	call   *0x28(%rbp)
    ba38:	83 fb 0a             	cmp    $0xa,%ebx
    ba3b:	75 14                	jne    0xba51
    ba3d:	48 89 ee             	mov    %rbp,%rsi
    ba40:	bf 0d 00 00 00       	mov    $0xd,%edi
    ba45:	48 b8 ce b9 00 00 00 	movabs $0xb9ce,%rax
    ba4c:	00 00 00 
    ba4f:	ff d0                	call   *%rax
    ba51:	48 83 c4 20          	add    $0x20,%rsp
    ba55:	5b                   	pop    %rbx
    ba56:	5d                   	pop    %rbp
    ba57:	41 5c                	pop    %r12
    ba59:	c3                   	ret    
    ba5a:	41 56                	push   %r14
    ba5c:	41 55                	push   %r13
    ba5e:	49 bd 98 b7 01 00 00 	movabs $0x1b798,%r13
    ba65:	00 00 00 
    ba68:	41 54                	push   %r12
    ba6a:	55                   	push   %rbp
    ba6b:	48 89 fd             	mov    %rdi,%rbp
    ba6e:	53                   	push   %rbx
    ba6f:	0f be 5d 00          	movsbl 0x0(%rbp),%ebx
    ba73:	84 db                	test   %bl,%bl
    ba75:	74 30                	je     0xbaa7
    ba77:	83 fb 7f             	cmp    $0x7f,%ebx
    ba7a:	76 05                	jbe    0xba81
    ba7c:	bb 3f 00 00 00       	mov    $0x3f,%ebx
    ba81:	49 be ce b9 00 00 00 	movabs $0xb9ce,%r14
    ba88:	00 00 00 
    ba8b:	4d 8b 65 00          	mov    0x0(%r13),%r12
    ba8f:	4d 85 e4             	test   %r12,%r12
    ba92:	74 0e                	je     0xbaa2
    ba94:	4c 89 e6             	mov    %r12,%rsi
    ba97:	89 df                	mov    %ebx,%edi
    ba99:	41 ff d6             	call   *%r14
    ba9c:	4d 8b 24 24          	mov    (%r12),%r12
    baa0:	eb ed                	jmp    0xba8f
    baa2:	48 ff c5             	inc    %rbp
    baa5:	eb c8                	jmp    0xba6f
    baa7:	5b                   	pop    %rbx
    baa8:	5d                   	pop    %rbp
    baa9:	41 5c                	pop    %r12
    baab:	41 5d                	pop    %r13
    baad:	41 5e                	pop    %r14
    baaf:	c3                   	ret    
    bab0:	48 a1 88 b7 01 00 00 	movabs 0x1b788,%rax
    bab7:	00 00 00 
    baba:	41 54                	push   %r12
    babc:	48 85 c0             	test   %rax,%rax
    babf:	74 04                	je     0xbac5
    bac1:	31 ff                	xor    %edi,%edi
    bac3:	ff d0                	call   *%rax
    bac5:	48 a1 80 b7 01 00 00 	movabs 0x1b780,%rax
    bacc:	00 00 00 
    bacf:	48 85 c0             	test   %rax,%rax
    bad2:	74 02                	je     0xbad6
    bad4:	ff d0                	call   *%rax
    bad6:	48 b8 90 b7 01 00 00 	movabs $0x1b790,%rax
    badd:	00 00 00 
    bae0:	4c 8b 20             	mov    (%rax),%r12
    bae3:	4d 85 e4             	test   %r12,%r12
    bae6:	74 12                	je     0xbafa
    bae8:	4c 89 e7             	mov    %r12,%rdi
    baeb:	41 ff 54 24 28       	call   *0x28(%r12)
    baf0:	85 c0                	test   %eax,%eax
    baf2:	75 08                	jne    0xbafc
    baf4:	4d 8b 24 24          	mov    (%r12),%r12
    baf8:	eb e9                	jmp    0xbae3
    bafa:	31 c0                	xor    %eax,%eax
    bafc:	41 5c                	pop    %r12
    bafe:	c3                   	ret    
    baff:	41 55                	push   %r13
    bb01:	41 54                	push   %r12
    bb03:	51                   	push   %rcx
    bb04:	48 a1 88 b7 01 00 00 	movabs 0x1b788,%rax
    bb0b:	00 00 00 
    bb0e:	48 85 c0             	test   %rax,%rax
    bb11:	74 04                	je     0xbb17
    bb13:	31 ff                	xor    %edi,%edi
    bb15:	ff d0                	call   *%rax
    bb17:	48 b8 90 b7 01 00 00 	movabs $0x1b790,%rax
    bb1e:	00 00 00 
    bb21:	4c 8b 20             	mov    (%rax),%r12
    bb24:	45 31 ed             	xor    %r13d,%r13d
    bb27:	4d 85 e4             	test   %r12,%r12
    bb2a:	74 18                	je     0xbb44
    bb2c:	49 8b 44 24 30       	mov    0x30(%r12),%rax
    bb31:	48 85 c0             	test   %rax,%rax
    bb34:	74 08                	je     0xbb3e
    bb36:	4c 89 e7             	mov    %r12,%rdi
    bb39:	ff d0                	call   *%rax
    bb3b:	41 09 c5             	or     %eax,%r13d
    bb3e:	4d 8b 24 24          	mov    (%r12),%r12
    bb42:	eb e3                	jmp    0xbb27
    bb44:	44 89 e8             	mov    %r13d,%eax
    bb47:	5a                   	pop    %rdx
    bb48:	41 5c                	pop    %r12
    bb4a:	41 5d                	pop    %r13
    bb4c:	c3                   	ret    
    bb4d:	83 ff 1b             	cmp    $0x1b,%edi
    bb50:	74 1f                	je     0xbb71
    bb52:	81 ff 3e 00 80 00    	cmp    $0x80003e,%edi
    bb58:	74 17                	je     0xbb71
    bb5a:	50                   	push   %rax
    bb5b:	48 b8 ff ba 00 00 00 	movabs $0xbaff,%rax
    bb62:	00 00 00 
    bb65:	ff d0                	call   *%rax
    bb67:	5a                   	pop    %rdx
    bb68:	a8 03                	test   $0x3,%al
    bb6a:	0f 95 c0             	setne  %al
    bb6d:	0f b6 c0             	movzbl %al,%eax
    bb70:	c3                   	ret    
    bb71:	b8 01 00 00 00       	mov    $0x1,%eax
    bb76:	c3                   	ret    
    bb77:	48 b8 98 b7 01 00 00 	movabs $0x1b798,%rax
    bb7e:	00 00 00 
    bb81:	41 54                	push   %r12
    bb83:	4c 8b 20             	mov    (%rax),%r12
    bb86:	4d 85 e4             	test   %r12,%r12
    bb89:	74 15                	je     0xbba0
    bb8b:	49 8b 44 24 68       	mov    0x68(%r12),%rax
    bb90:	48 85 c0             	test   %rax,%rax
    bb93:	74 05                	je     0xbb9a
    bb95:	4c 89 e7             	mov    %r12,%rdi
    bb98:	ff d0                	call   *%rax
    bb9a:	4d 8b 24 24          	mov    (%r12),%r12
    bb9e:	eb e6                	jmp    0xbb86
    bba0:	41 5c                	pop    %r12
    bba2:	c3                   	ret    
    bba3:	48 b8 77 bb 00 00 00 	movabs $0xbb77,%rax
    bbaa:	00 00 00 
    bbad:	53                   	push   %rbx
    bbae:	48 bb b0 ba 00 00 00 	movabs $0xbab0,%rbx
    bbb5:	00 00 00 
    bbb8:	ff d0                	call   *%rax
    bbba:	ff d3                	call   *%rbx
    bbbc:	85 c0                	test   %eax,%eax
    bbbe:	74 fa                	je     0xbbba
    bbc0:	5b                   	pop    %rbx
    bbc1:	c3                   	ret    
    bbc2:	48 89 f8             	mov    %rdi,%rax
    bbc5:	41 54                	push   %r12
    bbc7:	49 89 d4             	mov    %rdx,%r12
    bbca:	48 89 f7             	mov    %rsi,%rdi
    bbcd:	48 8b 50 50          	mov    0x50(%rax),%rdx
    bbd1:	48 8b 70 18          	mov    0x18(%rax),%rsi
    bbd5:	48 b8 59 97 00 00 00 	movabs $0x9759,%rax
    bbdc:	00 00 00 
    bbdf:	48 03 72 08          	add    0x8(%rdx),%rsi
    bbe3:	4c 89 e2             	mov    %r12,%rdx
    bbe6:	ff d0                	call   *%rax
    bbe8:	4c 89 e0             	mov    %r12,%rax
    bbeb:	41 5c                	pop    %r12
    bbed:	c3                   	ret    
    bbee:	48 b8 6c 89 00 00 00 	movabs $0x896c,%rax
    bbf5:	00 00 00 
    bbf8:	41 54                	push   %r12
    bbfa:	49 bc 12 5c 00 00 00 	movabs $0x5c12,%r12
    bc01:	00 00 00 
    bc04:	55                   	push   %rbp
    bc05:	53                   	push   %rbx
    bc06:	48 8b 6f 50          	mov    0x50(%rdi),%rbp
    bc0a:	48 89 fb             	mov    %rdi,%rbx
    bc0d:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
    bc11:	ff d0                	call   *%rax
    bc13:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
    bc17:	41 ff d4             	call   *%r12
    bc1a:	48 89 ef             	mov    %rbp,%rdi
    bc1d:	41 ff d4             	call   *%r12
    bc20:	48 c7 43 50 00 00 00 	movq   $0x0,0x50(%rbx)
    bc27:	00 
    bc28:	a1 80 aa 01 00 00 00 	movabs 0x1aa80,%eax
    bc2f:	00 00 
    bc31:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
    bc38:	00 
    bc39:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
    bc40:	5b                   	pop    %rbx
    bc41:	5d                   	pop    %rbp
    bc42:	41 5c                	pop    %r12
    bc44:	c3                   	ret    
    bc45:	41 57                	push   %r15
    bc47:	41 89 f1             	mov    %esi,%r9d
    bc4a:	31 c0                	xor    %eax,%eax
    bc4c:	48 b9 eb d4 00 00 00 	movabs $0xd4eb,%rcx
    bc53:	00 00 00 
    bc56:	48 ba fe d4 00 00 00 	movabs $0xd4fe,%rdx
    bc5d:	00 00 00 
    bc60:	41 56                	push   %r14
    bc62:	41 89 f6             	mov    %esi,%r14d
    bc65:	49 ba b7 a6 00 00 00 	movabs $0xa6b7,%r10
    bc6c:	00 00 00 
    bc6f:	41 55                	push   %r13
    bc71:	be 58 00 00 00       	mov    $0x58,%esi
    bc76:	41 54                	push   %r12
    bc78:	49 89 fc             	mov    %rdi,%r12
    bc7b:	55                   	push   %rbp
    bc7c:	53                   	push   %rbx
    bc7d:	48 83 ec 18          	sub    $0x18,%rsp
    bc81:	4c 8b 07             	mov    (%rdi),%r8
    bc84:	48 bf 05 d5 00 00 00 	movabs $0xd505,%rdi
    bc8b:	00 00 00 
    bc8e:	41 ff d2             	call   *%r10
    bc91:	66 41 83 fe 1e       	cmp    $0x1e,%r14w
    bc96:	0f 84 56 02 00 00    	je     0xbef2
    bc9c:	41 0f b7 c6          	movzwl %r14w,%eax
    bca0:	83 f8 3b             	cmp    $0x3b,%eax
    bca3:	0f 84 49 02 00 00    	je     0xbef2
    bca9:	41 0f ba e6 10       	bt     $0x10,%r14d
    bcae:	0f 82 3e 02 00 00    	jb     0xbef2
    bcb4:	49 8b 44 24 08       	mov    0x8(%r12),%rax
    bcb9:	48 8b 00             	mov    (%rax),%rax
    bcbc:	48 85 c0             	test   %rax,%rax
    bcbf:	74 19                	je     0xbcda
    bcc1:	48 8b 40 08          	mov    0x8(%rax),%rax
    bcc5:	8b 40 08             	mov    0x8(%rax),%eax
    bcc8:	83 f8 07             	cmp    $0x7,%eax
    bccb:	0f 84 21 02 00 00    	je     0xbef2
    bcd1:	83 f8 0d             	cmp    $0xd,%eax
    bcd4:	0f 84 18 02 00 00    	je     0xbef2
    bcda:	48 b8 b0 b7 01 00 00 	movabs $0x1b7b0,%rax
    bce1:	00 00 00 
    bce4:	48 8b 18             	mov    (%rax),%rbx
    bce7:	31 ed                	xor    %ebp,%ebp
    bce9:	48 85 db             	test   %rbx,%rbx
    bcec:	74 54                	je     0xbd42
    bcee:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    bcf3:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    bcf8:	44 89 f6             	mov    %r14d,%esi
    bcfb:	4c 89 e7             	mov    %r12,%rdi
    bcfe:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    bd05:	00 
    bd06:	ff 53 18             	call   *0x18(%rbx)
    bd09:	85 c0                	test   %eax,%eax
    bd0b:	75 5e                	jne    0xbd6b
    bd0d:	8b 44 24 04          	mov    0x4(%rsp),%eax
    bd11:	a8 04                	test   $0x4,%al
    bd13:	75 23                	jne    0xbd38
    bd15:	a8 01                	test   $0x1,%al
    bd17:	75 24                	jne    0xbd3d
    bd19:	49 bf c3 5b 00 00 00 	movabs $0x5bc3,%r15
    bd20:	00 00 00 
    bd23:	bf 68 00 00 00       	mov    $0x68,%edi
    bd28:	41 ff d7             	call   *%r15
    bd2b:	48 89 c5             	mov    %rax,%rbp
    bd2e:	48 85 c0             	test   %rax,%rax
    bd31:	75 3f                	jne    0xbd72
    bd33:	e9 7b 01 00 00       	jmp    0xbeb3
    bd38:	bd 01 00 00 00       	mov    $0x1,%ebp
    bd3d:	48 8b 1b             	mov    (%rbx),%rbx
    bd40:	eb a7                	jmp    0xbce9
    bd42:	85 ed                	test   %ebp,%ebp
    bd44:	0f 84 a8 01 00 00    	je     0xbef2
    bd4a:	49 8b 14 24          	mov    (%r12),%rdx
    bd4e:	bf 1e 00 00 00       	mov    $0x1e,%edi
    bd53:	31 c0                	xor    %eax,%eax
    bd55:	48 be 16 d5 00 00 00 	movabs $0xd516,%rsi
    bd5c:	00 00 00 
    bd5f:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    bd66:	00 00 00 
    bd69:	ff d1                	call   *%rcx
    bd6b:	31 ed                	xor    %ebp,%ebp
    bd6d:	e9 6e 01 00 00       	jmp    0xbee0
    bd72:	48 89 c7             	mov    %rax,%rdi
    bd75:	b9 1a 00 00 00       	mov    $0x1a,%ecx
    bd7a:	4c 89 e6             	mov    %r12,%rsi
    bd7d:	48 b8 c0 e6 00 00 00 	movabs $0xe6c0,%rax
    bd84:	00 00 00 
    bd87:	f3 a5                	rep movsl %ds:(%rsi),%es:(%rdi)
    bd89:	48 89 45 10          	mov    %rax,0x10(%rbp)
    bd8d:	c7 45 48 00 00 00 00 	movl   $0x0,0x48(%rbp)
    bd94:	48 83 7d 40 00       	cmpq   $0x0,0x40(%rbp)
    bd99:	79 22                	jns    0xbdbd
    bd9b:	48 be 42 d5 00 00 00 	movabs $0xd542,%rsi
    bda2:	00 00 00 
    bda5:	bf 18 00 00 00       	mov    $0x18,%edi
    bdaa:	31 c0                	xor    %eax,%eax
    bdac:	48 ba 43 86 00 00 00 	movabs $0x8643,%rdx
    bdb3:	00 00 00 
    bdb6:	ff d2                	call   *%rdx
    bdb8:	e9 f6 00 00 00       	jmp    0xbeb3
    bdbd:	bf 10 00 00 00       	mov    $0x10,%edi
    bdc2:	41 ff d7             	call   *%r15
    bdc5:	49 89 c5             	mov    %rax,%r13
    bdc8:	48 85 c0             	test   %rax,%rax
    bdcb:	0f 84 e5 00 00 00    	je     0xbeb6
    bdd1:	48 8b 7d 40          	mov    0x40(%rbp),%rdi
    bdd5:	41 ff d7             	call   *%r15
    bdd8:	49 89 45 08          	mov    %rax,0x8(%r13)
    bddc:	48 89 c6             	mov    %rax,%rsi
    bddf:	48 85 c0             	test   %rax,%rax
    bde2:	0f 84 ce 00 00 00    	je     0xbeb6
    bde8:	48 8b 55 40          	mov    0x40(%rbp),%rdx
    bdec:	4c 89 e7             	mov    %r12,%rdi
    bdef:	48 b8 cd 88 00 00 00 	movabs $0x88cd,%rax
    bdf6:	00 00 00 
    bdf9:	ff d0                	call   *%rax
    bdfb:	48 89 c2             	mov    %rax,%rdx
    bdfe:	48 3b 45 40          	cmp    0x40(%rbp),%rax
    be02:	74 7a                	je     0xbe7e
    be04:	48 b8 80 aa 01 00 00 	movabs $0x1aa80,%rax
    be0b:	00 00 00 
    be0e:	83 38 00             	cmpl   $0x0,(%rax)
    be11:	0f 85 9f 00 00 00    	jne    0xbeb6
    be17:	49 8b 14 24          	mov    (%r12),%rdx
    be1b:	bf 06 00 00 00       	mov    $0x6,%edi
    be20:	31 c0                	xor    %eax,%eax
    be22:	48 be 6b d5 00 00 00 	movabs $0xd56b,%rsi
    be29:	00 00 00 
    be2c:	48 b9 43 86 00 00 00 	movabs $0x8643,%rcx
    be33:	00 00 00 
    be36:	ff d1                	call   *%rcx
    be38:	eb 7c                	jmp    0xbeb6
    be3a:	48 8b 43 28          	mov    0x28(%rbx),%rax
    be3e:	48 85 c0             	test   %rax,%rax
    be41:	75 4d                	jne    0xbe90
    be43:	48 8b 43 30          	mov    0x30(%rbx),%rax
    be47:	48 85 c0             	test   %rax,%rax
    be4a:	75 51                	jne    0xbe9d
    be4c:	48 8b 1b             	mov    (%rbx),%rbx
    be4f:	48 85 db             	test   %rbx,%rbx
    be52:	74 52                	je     0xbea6
    be54:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    be59:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    be5e:	44 89 f6             	mov    %r14d,%esi
    be61:	4c 89 e7             	mov    %r12,%rdi
    be64:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    be6b:	00 
    be6c:	ff 53 18             	call   *0x18(%rbx)
    be6f:	85 c0                	test   %eax,%eax
    be71:	75 58                	jne    0xbecb
    be73:	f6 44 24 04 05       	testb  $0x5,0x4(%rsp)
    be78:	75 d2                	jne    0xbe4c
    be7a:	48 8b 55 40          	mov    0x40(%rbp),%rdx
    be7e:	49 8b 75 08          	mov    0x8(%r13),%rsi
    be82:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    be87:	ff 53 20             	call   *0x20(%rbx)
    be8a:	85 c0                	test   %eax,%eax
    be8c:	74 ac                	je     0xbe3a
    be8e:	eb 26                	jmp    0xbeb6
    be90:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    be95:	ff d0                	call   *%rax
    be97:	85 c0                	test   %eax,%eax
    be99:	74 a8                	je     0xbe43
    be9b:	eb 19                	jmp    0xbeb6
    be9d:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    bea2:	ff d0                	call   *%rax
    bea4:	eb a6                	jmp    0xbe4c
    bea6:	4d 89 65 00          	mov    %r12,0x0(%r13)
    beaa:	49 89 ec             	mov    %rbp,%r12
    bead:	4c 89 6d 50          	mov    %r13,0x50(%rbp)
    beb1:	eb 3f                	jmp    0xbef2
    beb3:	45 31 ed             	xor    %r13d,%r13d
    beb6:	48 8b 43 30          	mov    0x30(%rbx),%rax
    beba:	48 85 c0             	test   %rax,%rax
    bebd:	74 07                	je     0xbec6
    bebf:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    bec4:	ff d0                	call   *%rax
    bec6:	4d 85 ed             	test   %r13,%r13
    bec9:	74 15                	je     0xbee0
    becb:	48 bb 12 5c 00 00 00 	movabs $0x5c12,%rbx
    bed2:	00 00 00 
    bed5:	49 8b 7d 08          	mov    0x8(%r13),%rdi
    bed9:	ff d3                	call   *%rbx
    bedb:	4c 89 ef             	mov    %r13,%rdi
    bede:	ff d3                	call   *%rbx
    bee0:	48 b8 12 5c 00 00 00 	movabs $0x5c12,%rax
    bee7:	00 00 00 
    beea:	48 89 ef             	mov    %rbp,%rdi
    beed:	45 31 e4             	xor    %r12d,%r12d
    bef0:	ff d0                	call   *%rax
    bef2:	48 83 c4 18          	add    $0x18,%rsp
    bef6:	4c 89 e0             	mov    %r12,%rax
    bef9:	5b                   	pop    %rbx
    befa:	5d                   	pop    %rbp
    befb:	41 5c                	pop    %r12
    befd:	41 5d                	pop    %r13
    beff:	41 5e                	pop    %r14
    bf01:	41 5f                	pop    %r15
    bf03:	c3                   	ret    
    bf04:	41 54                	push   %r12
    bf06:	41 89 f1             	mov    %esi,%r9d
    bf09:	49 89 f8             	mov    %rdi,%r8
    bf0c:	31 c0                	xor    %eax,%eax
    bf0e:	48 b9 84 d5 00 00 00 	movabs $0xd584,%rcx
    bf15:	00 00 00 
    bf18:	55                   	push   %rbp
    bf19:	41 89 f4             	mov    %esi,%r12d
    bf1c:	48 89 fd             	mov    %rdi,%rbp
    bf1f:	48 ba fe d4 00 00 00 	movabs $0xd4fe,%rdx
    bf26:	00 00 00 
    bf29:	53                   	push   %rbx
    bf2a:	be d4 00 00 00       	mov    $0xd4,%esi
    bf2f:	48 bf 05 d5 00 00 00 	movabs $0xd505,%rdi
    bf36:	00 00 00 
    bf39:	49 ba b7 a6 00 00 00 	movabs $0xa6b7,%r10
    bf40:	00 00 00 
    bf43:	41 ff d2             	call   *%r10
    bf46:	48 b8 b0 b7 01 00 00 	movabs $0x1b7b0,%rax
    bf4d:	00 00 00 
    bf50:	48 8b 18             	mov    (%rax),%rbx
    bf53:	48 85 db             	test   %rbx,%rbx
    bf56:	74 1c                	je     0xbf74
    bf58:	48 8b 43 38          	mov    0x38(%rbx),%rax
    bf5c:	48 85 c0             	test   %rax,%rax
    bf5f:	75 05                	jne    0xbf66
    bf61:	48 8b 1b             	mov    (%rbx),%rbx
    bf64:	eb ed                	jmp    0xbf53
    bf66:	44 89 e6             	mov    %r12d,%esi
    bf69:	48 89 ef             	mov    %rbp,%rdi
    bf6c:	ff d0                	call   *%rax
    bf6e:	85 c0                	test   %eax,%eax
    bf70:	74 ef                	je     0xbf61
    bf72:	eb 02                	jmp    0xbf76
    bf74:	31 c0                	xor    %eax,%eax
    bf76:	5b                   	pop    %rbx
    bf77:	5d                   	pop    %rbp
    bf78:	41 5c                	pop    %r12
    bf7a:	c3                   	ret    
    bf7b:	48 b8 45 bc 00 00 00 	movabs $0xbc45,%rax
    bf82:	00 00 00 
    bf85:	48 a3 00 b5 01 00 00 	movabs %rax,0x1b500
    bf8c:	00 00 00 
    bf8f:	c3                   	ret    
    bf90:	55                   	push   %rbp
    bf91:	48 bd 1a 76 00 00 00 	movabs $0x761a,%rbp
    bf98:	00 00 00 
    bf9b:	53                   	push   %rbx
    bf9c:	48 bb 20 e7 00 00 00 	movabs $0xe720,%rbx
    bfa3:	00 00 00 
    bfa6:	52                   	push   %rdx
    bfa7:	48 8b 3b             	mov    (%rbx),%rdi
    bfaa:	48 85 ff             	test   %rdi,%rdi
    bfad:	74 11                	je     0xbfc0
    bfaf:	8b 53 10             	mov    0x10(%rbx),%edx
    bfb2:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    bfb6:	31 c9                	xor    %ecx,%ecx
    bfb8:	48 83 c3 18          	add    $0x18,%rbx
    bfbc:	ff d5                	call   *%rbp
    bfbe:	eb e7                	jmp    0xbfa7
    bfc0:	58                   	pop    %rax
    bfc1:	5b                   	pop    %rbx
    bfc2:	5d                   	pop    %rbp
    bfc3:	c3                   	ret    
	...
