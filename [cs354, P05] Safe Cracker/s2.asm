
s2:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	f3 0f 1e fb          	endbr32 
    1004:	53                   	push   %ebx
    1005:	83 ec 08             	sub    $0x8,%esp
    1008:	e8 a3 01 00 00       	call   11b0 <__x86.get_pc_thunk.bx>
    100d:	81 c3 ab 2f 00 00    	add    $0x2fab,%ebx
    1013:	8b 83 38 00 00 00    	mov    0x38(%ebx),%eax
    1019:	85 c0                	test   %eax,%eax
    101b:	74 02                	je     101f <_init+0x1f>
    101d:	ff d0                	call   *%eax
    101f:	83 c4 08             	add    $0x8,%esp
    1022:	5b                   	pop    %ebx
    1023:	c3                   	ret    

Disassembly of section .plt:

00001030 <.plt>:
    1030:	ff b3 04 00 00 00    	pushl  0x4(%ebx)
    1036:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
    103c:	0f 1f 40 00          	nopl   0x0(%eax)
    1040:	f3 0f 1e fb          	endbr32 
    1044:	68 00 00 00 00       	push   $0x0
    1049:	e9 e2 ff ff ff       	jmp    1030 <.plt>
    104e:	66 90                	xchg   %ax,%ax
    1050:	f3 0f 1e fb          	endbr32 
    1054:	68 08 00 00 00       	push   $0x8
    1059:	e9 d2 ff ff ff       	jmp    1030 <.plt>
    105e:	66 90                	xchg   %ax,%ax
    1060:	f3 0f 1e fb          	endbr32 
    1064:	68 10 00 00 00       	push   $0x10
    1069:	e9 c2 ff ff ff       	jmp    1030 <.plt>
    106e:	66 90                	xchg   %ax,%ax
    1070:	f3 0f 1e fb          	endbr32 
    1074:	68 18 00 00 00       	push   $0x18
    1079:	e9 b2 ff ff ff       	jmp    1030 <.plt>
    107e:	66 90                	xchg   %ax,%ax
    1080:	f3 0f 1e fb          	endbr32 
    1084:	68 20 00 00 00       	push   $0x20
    1089:	e9 a2 ff ff ff       	jmp    1030 <.plt>
    108e:	66 90                	xchg   %ax,%ax
    1090:	f3 0f 1e fb          	endbr32 
    1094:	68 28 00 00 00       	push   $0x28
    1099:	e9 92 ff ff ff       	jmp    1030 <.plt>
    109e:	66 90                	xchg   %ax,%ax
    10a0:	f3 0f 1e fb          	endbr32 
    10a4:	68 30 00 00 00       	push   $0x30
    10a9:	e9 82 ff ff ff       	jmp    1030 <.plt>
    10ae:	66 90                	xchg   %ax,%ax
    10b0:	f3 0f 1e fb          	endbr32 
    10b4:	68 38 00 00 00       	push   $0x38
    10b9:	e9 72 ff ff ff       	jmp    1030 <.plt>
    10be:	66 90                	xchg   %ax,%ax
    10c0:	f3 0f 1e fb          	endbr32 
    10c4:	68 40 00 00 00       	push   $0x40
    10c9:	e9 62 ff ff ff       	jmp    1030 <.plt>
    10ce:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

000010d0 <__cxa_finalize@plt>:
    10d0:	f3 0f 1e fb          	endbr32 
    10d4:	ff a3 34 00 00 00    	jmp    *0x34(%ebx)
    10da:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

Disassembly of section .plt.sec:

000010e0 <fgets@plt>:
    10e0:	f3 0f 1e fb          	endbr32 
    10e4:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
    10ea:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

000010f0 <sleep@plt>:
    10f0:	f3 0f 1e fb          	endbr32 
    10f4:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
    10fa:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001100 <__stack_chk_fail@plt>:
    1100:	f3 0f 1e fb          	endbr32 
    1104:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
    110a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001110 <puts@plt>:
    1110:	f3 0f 1e fb          	endbr32 
    1114:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
    111a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001120 <exit@plt>:
    1120:	f3 0f 1e fb          	endbr32 
    1124:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
    112a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001130 <__libc_start_main@plt>:
    1130:	f3 0f 1e fb          	endbr32 
    1134:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
    113a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001140 <fopen@plt>:
    1140:	f3 0f 1e fb          	endbr32 
    1144:	ff a3 24 00 00 00    	jmp    *0x24(%ebx)
    114a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001150 <__printf_chk@plt>:
    1150:	f3 0f 1e fb          	endbr32 
    1154:	ff a3 28 00 00 00    	jmp    *0x28(%ebx)
    115a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

00001160 <strtol@plt>:
    1160:	f3 0f 1e fb          	endbr32 
    1164:	ff a3 2c 00 00 00    	jmp    *0x2c(%ebx)
    116a:	66 0f 1f 44 00 00    	nopw   0x0(%eax,%eax,1)

Disassembly of section .text:

00001170 <_start>:
    1170:	f3 0f 1e fb          	endbr32 
    1174:	31 ed                	xor    %ebp,%ebp
    1176:	5e                   	pop    %esi
    1177:	89 e1                	mov    %esp,%ecx
    1179:	83 e4 f0             	and    $0xfffffff0,%esp
    117c:	50                   	push   %eax
    117d:	54                   	push   %esp
    117e:	52                   	push   %edx
    117f:	e8 22 00 00 00       	call   11a6 <_start+0x36>
    1184:	81 c3 34 2e 00 00    	add    $0x2e34,%ebx
    118a:	8d 83 28 d5 ff ff    	lea    -0x2ad8(%ebx),%eax
    1190:	50                   	push   %eax
    1191:	8d 83 b8 d4 ff ff    	lea    -0x2b48(%ebx),%eax
    1197:	50                   	push   %eax
    1198:	51                   	push   %ecx
    1199:	56                   	push   %esi
    119a:	ff b3 40 00 00 00    	pushl  0x40(%ebx)
    11a0:	e8 8b ff ff ff       	call   1130 <__libc_start_main@plt>
    11a5:	f4                   	hlt    
    11a6:	8b 1c 24             	mov    (%esp),%ebx
    11a9:	c3                   	ret    
    11aa:	66 90                	xchg   %ax,%ax
    11ac:	66 90                	xchg   %ax,%ax
    11ae:	66 90                	xchg   %ax,%ax

000011b0 <__x86.get_pc_thunk.bx>:
    11b0:	8b 1c 24             	mov    (%esp),%ebx
    11b3:	c3                   	ret    
    11b4:	66 90                	xchg   %ax,%ax
    11b6:	66 90                	xchg   %ax,%ax
    11b8:	66 90                	xchg   %ax,%ax
    11ba:	66 90                	xchg   %ax,%ax
    11bc:	66 90                	xchg   %ax,%ax
    11be:	66 90                	xchg   %ax,%ax

000011c0 <deregister_tm_clones>:
    11c0:	e8 e4 00 00 00       	call   12a9 <__x86.get_pc_thunk.dx>
    11c5:	81 c2 f3 2d 00 00    	add    $0x2df3,%edx
    11cb:	8d 8a 64 00 00 00    	lea    0x64(%edx),%ecx
    11d1:	8d 82 64 00 00 00    	lea    0x64(%edx),%eax
    11d7:	39 c8                	cmp    %ecx,%eax
    11d9:	74 1d                	je     11f8 <deregister_tm_clones+0x38>
    11db:	8b 82 30 00 00 00    	mov    0x30(%edx),%eax
    11e1:	85 c0                	test   %eax,%eax
    11e3:	74 13                	je     11f8 <deregister_tm_clones+0x38>
    11e5:	55                   	push   %ebp
    11e6:	89 e5                	mov    %esp,%ebp
    11e8:	83 ec 14             	sub    $0x14,%esp
    11eb:	51                   	push   %ecx
    11ec:	ff d0                	call   *%eax
    11ee:	83 c4 10             	add    $0x10,%esp
    11f1:	c9                   	leave  
    11f2:	c3                   	ret    
    11f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11f7:	90                   	nop
    11f8:	c3                   	ret    
    11f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001200 <register_tm_clones>:
    1200:	e8 a4 00 00 00       	call   12a9 <__x86.get_pc_thunk.dx>
    1205:	81 c2 b3 2d 00 00    	add    $0x2db3,%edx
    120b:	55                   	push   %ebp
    120c:	89 e5                	mov    %esp,%ebp
    120e:	53                   	push   %ebx
    120f:	8d 8a 64 00 00 00    	lea    0x64(%edx),%ecx
    1215:	8d 82 64 00 00 00    	lea    0x64(%edx),%eax
    121b:	83 ec 04             	sub    $0x4,%esp
    121e:	29 c8                	sub    %ecx,%eax
    1220:	89 c3                	mov    %eax,%ebx
    1222:	c1 e8 1f             	shr    $0x1f,%eax
    1225:	c1 fb 02             	sar    $0x2,%ebx
    1228:	01 d8                	add    %ebx,%eax
    122a:	d1 f8                	sar    %eax
    122c:	74 14                	je     1242 <register_tm_clones+0x42>
    122e:	8b 92 44 00 00 00    	mov    0x44(%edx),%edx
    1234:	85 d2                	test   %edx,%edx
    1236:	74 0a                	je     1242 <register_tm_clones+0x42>
    1238:	83 ec 08             	sub    $0x8,%esp
    123b:	50                   	push   %eax
    123c:	51                   	push   %ecx
    123d:	ff d2                	call   *%edx
    123f:	83 c4 10             	add    $0x10,%esp
    1242:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1245:	c9                   	leave  
    1246:	c3                   	ret    
    1247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    124e:	66 90                	xchg   %ax,%ax

00001250 <__do_global_dtors_aux>:
    1250:	f3 0f 1e fb          	endbr32 
    1254:	55                   	push   %ebp
    1255:	89 e5                	mov    %esp,%ebp
    1257:	53                   	push   %ebx
    1258:	e8 53 ff ff ff       	call   11b0 <__x86.get_pc_thunk.bx>
    125d:	81 c3 5b 2d 00 00    	add    $0x2d5b,%ebx
    1263:	83 ec 04             	sub    $0x4,%esp
    1266:	80 bb 64 00 00 00 00 	cmpb   $0x0,0x64(%ebx)
    126d:	75 27                	jne    1296 <__do_global_dtors_aux+0x46>
    126f:	8b 83 34 00 00 00    	mov    0x34(%ebx),%eax
    1275:	85 c0                	test   %eax,%eax
    1277:	74 11                	je     128a <__do_global_dtors_aux+0x3a>
    1279:	83 ec 0c             	sub    $0xc,%esp
    127c:	ff b3 4c 00 00 00    	pushl  0x4c(%ebx)
    1282:	e8 49 fe ff ff       	call   10d0 <__cxa_finalize@plt>
    1287:	83 c4 10             	add    $0x10,%esp
    128a:	e8 31 ff ff ff       	call   11c0 <deregister_tm_clones>
    128f:	c6 83 64 00 00 00 01 	movb   $0x1,0x64(%ebx)
    1296:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1299:	c9                   	leave  
    129a:	c3                   	ret    
    129b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    129f:	90                   	nop

000012a0 <frame_dummy>:
    12a0:	f3 0f 1e fb          	endbr32 
    12a4:	e9 57 ff ff ff       	jmp    1200 <register_tm_clones>

000012a9 <__x86.get_pc_thunk.dx>:
    12a9:	8b 14 24             	mov    (%esp),%edx
    12ac:	c3                   	ret    

000012ad <fail>:
    12ad:	f3 0f 1e fb          	endbr32 
    12b1:	56                   	push   %esi
    12b2:	53                   	push   %ebx
    12b3:	83 ec 10             	sub    $0x10,%esp
    12b6:	e8 f5 fe ff ff       	call   11b0 <__x86.get_pc_thunk.bx>
    12bb:	81 c3 fd 2c 00 00    	add    $0x2cfd,%ebx
    12c1:	6a 01                	push   $0x1
    12c3:	e8 28 fe ff ff       	call   10f0 <sleep@plt>
    12c8:	8d b3 50 e0 ff ff    	lea    -0x1fb0(%ebx),%esi
    12ce:	89 34 24             	mov    %esi,(%esp)
    12d1:	e8 3a fe ff ff       	call   1110 <puts@plt>
    12d6:	8d 83 74 e0 ff ff    	lea    -0x1f8c(%ebx),%eax
    12dc:	89 04 24             	mov    %eax,(%esp)
    12df:	e8 2c fe ff ff       	call   1110 <puts@plt>
    12e4:	89 34 24             	mov    %esi,(%esp)
    12e7:	e8 24 fe ff ff       	call   1110 <puts@plt>
    12ec:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12f3:	e8 28 fe ff ff       	call   1120 <exit@plt>

000012f8 <success>:
    12f8:	f3 0f 1e fb          	endbr32 
    12fc:	56                   	push   %esi
    12fd:	53                   	push   %ebx
    12fe:	83 ec 10             	sub    $0x10,%esp
    1301:	e8 aa fe ff ff       	call   11b0 <__x86.get_pc_thunk.bx>
    1306:	81 c3 b2 2c 00 00    	add    $0x2cb2,%ebx
    130c:	6a 01                	push   $0x1
    130e:	e8 dd fd ff ff       	call   10f0 <sleep@plt>
    1313:	8d b3 98 e0 ff ff    	lea    -0x1f68(%ebx),%esi
    1319:	89 34 24             	mov    %esi,(%esp)
    131c:	e8 ef fd ff ff       	call   1110 <puts@plt>
    1321:	8d 83 b8 e0 ff ff    	lea    -0x1f48(%ebx),%eax
    1327:	89 04 24             	mov    %eax,(%esp)
    132a:	e8 e1 fd ff ff       	call   1110 <puts@plt>
    132f:	89 34 24             	mov    %esi,(%esp)
    1332:	e8 d9 fd ff ff       	call   1110 <puts@plt>
    1337:	83 c4 14             	add    $0x14,%esp
    133a:	5b                   	pop    %ebx
    133b:	5e                   	pop    %esi
    133c:	c3                   	ret    

0000133d <main>:
    # set up call
    133d:	f3 0f 1e fb          	endbr32 
    1341:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1345:	83 e4 f0             	and    $0xfffffff0,%esp
    1348:	ff 71 fc             	pushl  -0x4(%ecx)
    134b:	55                   	push   %ebp
    134c:	89 e5                	mov    %esp,%ebp
    134e:	57                   	push   %edi
    134f:	56                   	push   %esi
    1350:	53                   	push   %ebx
    1351:	51                   	push   %ecx
    1352:	81 ec 28 02 00 00    	sub    $0x228,%esp
    1358:	e8 53 fe ff ff       	call   11b0 <__x86.get_pc_thunk.bx>





    135d:	81 c3 5b 2c 00 00    	add    $0x2c5b,%ebx
    1363:	8b 41 04             	mov    0x4(%ecx),%eax
    1366:	65 8b 15 14 00 00 00 	mov    %gs:0x14,%edx
    136d:	89 55 e4             	mov    %edx,-0x1c(%ebp)
    1370:	31 d2                	xor    %edx,%edx
    1372:	83 39 02             	cmpl   $0x2,(%ecx)
    1375:	0f 84 8e 00 00 00    	je     1409 <main+0xcc>
    137b:	8b 83 3c 00 00 00    	mov    0x3c(%ebx),%eax
    1381:	8b 38                	mov    (%eax),%edi
    1383:	be 01 00 00 00       	mov    $0x1,%esi
    1388:	8d 83 60 00 00 00    	lea    0x60(%ebx),%eax
    138e:	89 85 d4 fd ff ff    	mov    %eax,-0x22c(%ebp)
    1394:	8b 83 3c 00 00 00    	mov    0x3c(%ebx),%eax
    139a:	89 85 d0 fd ff ff    	mov    %eax,-0x230(%ebp)
    13a0:	8d 83 da e0 ff ff    	lea    -0x1f26(%ebx),%eax
    13a6:	89 85 cc fd ff ff    	mov    %eax,-0x234(%ebp)

    13ac:	83 fe 06             	cmp    $0x6,%esi
    13af:	0f 84 8b 00 00 00    	je     1440 <main+0x103>
    13b5:	8b 85 d0 fd ff ff    	mov    -0x230(%ebp),%eax
    13bb:	39 38                	cmp    %edi,(%eax)
    13bd:	74 66                	je     1425 <main+0xe8>
    13bf:	83 ec 04             	sub    $0x4,%esp
    13c2:	57                   	push   %edi
    13c3:	68 00 02 00 00       	push   $0x200
    13c8:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
    13ce:	50                   	push   %eax
    13cf:	e8 0c fd ff ff       	call   10e0 <fgets@plt>
    13d4:	83 c4 10             	add    $0x10,%esp
    13d7:	85 c0                	test   %eax,%eax
    13d9:	74 d1                	je     13ac <main+0x6f>
    13db:	83 ec 04             	sub    $0x4,%esp
    13de:	6a 0a                	push   $0xa
    13e0:	6a 00                	push   $0x0
    13e2:	8d 85 e4 fd ff ff    	lea    -0x21c(%ebp),%eax
    13e8:	50                   	push   %eax
    13e9:	e8 72 fd ff ff       	call   1160 <strtol@plt>
    13ee:	29 f0                	sub    %esi,%eax
    13f0:	83 c4 10             	add    $0x10,%esp
    13f3:	8b 95 d4 fd ff ff    	mov    -0x22c(%ebp),%edx
    
    13f9:	39 02                	cmp    %eax,(%edx)
    13fb:	75 3e                	jne    143b <main+0xfe>

    13fd:	83 ad d4 fd ff ff 04 	subl   $0x4,-0x22c(%ebp)
    1404:	83 c6 01             	add    $0x1,%esi
    1407:	eb 97                	jmp    13a0 <main+0x63>
    1409:	83 ec 08             	sub    $0x8,%esp
    140c:	8d 93 d8 e0 ff ff    	lea    -0x1f28(%ebx),%edx
    1412:	52                   	push   %edx
    1413:	ff 70 04             	pushl  0x4(%eax)
    1416:	e8 25 fd ff ff       	call   1140 <fopen@plt>
    141b:	89 c7                	mov    %eax,%edi
    141d:	83 c4 10             	add    $0x10,%esp
    1420:	e9 5e ff ff ff       	jmp    1383 <main+0x46>
    1425:	83 ec 04             	sub    $0x4,%esp
    1428:	56                   	push   %esi
    1429:	ff b5 cc fd ff ff    	pushl  -0x234(%ebp)
    142f:	6a 01                	push   $0x1
    1431:	e8 1a fd ff ff       	call   1150 <__printf_chk@plt>
    1436:	83 c4 10             	add    $0x10,%esp
    1439:	eb 84                	jmp    13bf <main+0x82>

    # FAIL
    143b:	e8 6d fe ff ff       	call   12ad <fail>
    # SUCCESS
    1440:	e8 b3 fe ff ff       	call   12f8 <success>
    1445:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1448:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    144f:	75 11                	jne    1462 <main+0x125>
    
    # clean up calls
    1451:	b8 00 00 00 00       	mov    $0x0,%eax
    1456:	8d 65 f0             	lea    -0x10(%ebp),%esp
    1459:	59                   	pop    %ecx
    145a:	5b                   	pop    %ebx
    145b:	5e                   	pop    %esi
    145c:	5f                   	pop    %edi
    145d:	5d                   	pop    %ebp
    145e:	8d 61 fc             	lea    -0x4(%ecx),%esp
    1461:	c3                   	ret    
    1462:	e8 89 00 00 00       	call   14f0 <__stack_chk_fail_local>
    1467:	66 90                	xchg   %ax,%ax
    1469:	66 90                	xchg   %ax,%ax
    146b:	66 90                	xchg   %ax,%ax
    146d:	66 90                	xchg   %ax,%ax
    146f:	90                   	nop

00001470 <__libc_csu_init>:
    1470:	f3 0f 1e fb          	endbr32 
    1474:	55                   	push   %ebp
    1475:	e8 6b 00 00 00       	call   14e5 <__x86.get_pc_thunk.bp>
    147a:	81 c5 3e 2b 00 00    	add    $0x2b3e,%ebp
    1480:	57                   	push   %edi
    1481:	56                   	push   %esi
    1482:	53                   	push   %ebx
    1483:	83 ec 0c             	sub    $0xc,%esp
    1486:	89 eb                	mov    %ebp,%ebx
    1488:	8b 7c 24 28          	mov    0x28(%esp),%edi
    148c:	e8 6f fb ff ff       	call   1000 <_init>
    1491:	8d 9d 04 ff ff ff    	lea    -0xfc(%ebp),%ebx
    1497:	8d 85 00 ff ff ff    	lea    -0x100(%ebp),%eax
    149d:	29 c3                	sub    %eax,%ebx
    149f:	c1 fb 02             	sar    $0x2,%ebx
    14a2:	74 29                	je     14cd <__libc_csu_init+0x5d>
    14a4:	31 f6                	xor    %esi,%esi
    14a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14ad:	8d 76 00             	lea    0x0(%esi),%esi
    14b0:	83 ec 04             	sub    $0x4,%esp
    14b3:	57                   	push   %edi
    14b4:	ff 74 24 2c          	pushl  0x2c(%esp)
    14b8:	ff 74 24 2c          	pushl  0x2c(%esp)
    14bc:	ff 94 b5 00 ff ff ff 	call   *-0x100(%ebp,%esi,4)
    14c3:	83 c6 01             	add    $0x1,%esi
    14c6:	83 c4 10             	add    $0x10,%esp
    14c9:	39 f3                	cmp    %esi,%ebx
    14cb:	75 e3                	jne    14b0 <__libc_csu_init+0x40>
    14cd:	83 c4 0c             	add    $0xc,%esp
    14d0:	5b                   	pop    %ebx
    14d1:	5e                   	pop    %esi
    14d2:	5f                   	pop    %edi
    14d3:	5d                   	pop    %ebp
    14d4:	c3                   	ret    
    14d5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000014e0 <__libc_csu_fini>:
    14e0:	f3 0f 1e fb          	endbr32 
    14e4:	c3                   	ret    

000014e5 <__x86.get_pc_thunk.bp>:
    14e5:	8b 2c 24             	mov    (%esp),%ebp
    14e8:	c3                   	ret    
    14e9:	66 90                	xchg   %ax,%ax
    14eb:	66 90                	xchg   %ax,%ax
    14ed:	66 90                	xchg   %ax,%ax
    14ef:	90                   	nop

000014f0 <__stack_chk_fail_local>:
    14f0:	f3 0f 1e fb          	endbr32 
    14f4:	53                   	push   %ebx
    14f5:	e8 b6 fc ff ff       	call   11b0 <__x86.get_pc_thunk.bx>
    14fa:	81 c3 be 2a 00 00    	add    $0x2abe,%ebx
    1500:	83 ec 08             	sub    $0x8,%esp
    1503:	e8 f8 fb ff ff       	call   1100 <__stack_chk_fail@plt>

Disassembly of section .fini:

00001508 <_fini>:
    1508:	f3 0f 1e fb          	endbr32 
    150c:	53                   	push   %ebx
    150d:	83 ec 08             	sub    $0x8,%esp
    1510:	e8 9b fc ff ff       	call   11b0 <__x86.get_pc_thunk.bx>
    1515:	81 c3 a3 2a 00 00    	add    $0x2aa3,%ebx
    151b:	83 c4 08             	add    $0x8,%esp
    151e:	5b                   	pop    %ebx
    151f:	c3                   	ret    
