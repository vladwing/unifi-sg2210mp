
/home/wing/src/reverse-engineer/sg2210mp/firmware/rootfs-1.0.9/usrImage/app/sbin/core:     file format elf32-tradbigmips


Disassembly of section .text:

004f3308 <adPoeUpdateSysFanSpeed@@Base>:
  4f3308:	03e00008 	jr	ra
  4f330c:	00000000 	nop

004f3310 <adMiscTemperatureGetMac@@Base>:
  4f3310:	03e00008 	jr	ra
  4f3314:	24020002 	li	v0,2

004f3318 <adMiscRegisterRead@@Base>:
  4f3318:	03e00008 	jr	ra
  4f331c:	00001021 	move	v0,zero

004f3320 <adMiscRegisterWrite@@Base>:
  4f3320:	03e00008 	jr	ra
  4f3324:	00001021 	move	v0,zero

004f3328 <adMacTemperaturePrintf@@Base>:
  4f3328:	03e00008 	jr	ra
  4f332c:	00001021 	move	v0,zero

004f3330 <adPowerStatusPrintf@@Base>:
  4f3330:	03e00008 	jr	ra
  4f3334:	00001021 	move	v0,zero

004f3338 <adFanStatusPrintf@@Base>:
  4f3338:	03e00008 	jr	ra
  4f333c:	00001021 	move	v0,zero

004f3340 <adSystemRebootPre@@Base>:
  4f3340:	3c1c00a3 	lui	gp,0xa3
  4f3344:	279ce5d0 	addiu	gp,gp,-6704
  4f3348:	0399e021 	addu	gp,gp,t9
  4f334c:	27bdffe0 	addiu	sp,sp,-32
  4f3350:	afbf001c 	sw	ra,28(sp)
  4f3354:	afbc0010 	sw	gp,16(sp)
  4f3358:	8f82d0f4 	lw	v0,-12044(gp)
  4f335c:	00000000 	nop
  4f3360:	8c430000 	lw	v1,0(v0)
  4f3364:	00000000 	nop
  4f3368:	1060003b 	beqz	v1,4f3458 <adSystemRebootPre@@Base+0x118>
  4f336c:	00000000 	nop
  4f3370:	90620244 	lbu	v0,580(v1)
  4f3374:	00000000 	nop
  4f3378:	10400019 	beqz	v0,4f33e0 <adSystemRebootPre@@Base+0xa0>
  4f337c:	24420008 	addiu	v0,v0,8
  4f3380:	000210c0 	sll	v0,v0,0x3
  4f3384:	00621021 	addu	v0,v1,v0
  4f3388:	90430003 	lbu	v1,3(v0)
  4f338c:	90440004 	lbu	a0,4(v0)
  4f3390:	90450005 	lbu	a1,5(v0)
  4f3394:	24020001 	li	v0,1
  4f3398:	14620007 	bne	v1,v0,4f33b8 <adSystemRebootPre@@Base+0x78>
  4f339c:	00000000 	nop
  4f33a0:	8f99dd8c 	lw	t9,-8820(gp)
  4f33a4:	00042400 	sll	a0,a0,0x10
  4f33a8:	0320f809 	jalr	t9
  4f33ac:	00a42025 	or	a0,a1,a0
  4f33b0:	10000008 	b	4f33d4 <adSystemRebootPre@@Base+0x94>
  4f33b4:	00000000 	nop
  4f33b8:	24020002 	li	v0,2
  4f33bc:	14620026 	bne	v1,v0,4f3458 <adSystemRebootPre@@Base+0x118>
  4f33c0:	00000000 	nop
  4f33c4:	8f99aad8 	lw	t9,-21800(gp)
  4f33c8:	00000000 	nop
  4f33cc:	0320f809 	jalr	t9
  4f33d0:	00000000 	nop
  4f33d4:	8fbc0010 	lw	gp,16(sp)
  4f33d8:	1440001f 	bnez	v0,4f3458 <adSystemRebootPre@@Base+0x118>
  4f33dc:	00000000 	nop
  4f33e0:	8f998ae0 	lw	t9,-29984(gp)
  4f33e4:	00000000 	nop
  4f33e8:	0320f809 	jalr	t9
  4f33ec:	00000000 	nop
  4f33f0:	24030022 	li	v1,34
  4f33f4:	8fbc0010 	lw	gp,16(sp)
  4f33f8:	10430011 	beq	v0,v1,4f3440 <adSystemRebootPre@@Base+0x100>
  4f33fc:	00000000 	nop
  4f3400:	8f998ae0 	lw	t9,-29984(gp)
  4f3404:	00000000 	nop
  4f3408:	0320f809 	jalr	t9
  4f340c:	00000000 	nop
  4f3410:	24030034 	li	v1,52
  4f3414:	8fbc0010 	lw	gp,16(sp)
  4f3418:	10430009 	beq	v0,v1,4f3440 <adSystemRebootPre@@Base+0x100>
  4f341c:	00000000 	nop
  4f3420:	8f998ae0 	lw	t9,-29984(gp)
  4f3424:	00000000 	nop
  4f3428:	0320f809 	jalr	t9
  4f342c:	00000000 	nop
  4f3430:	2403003c 	li	v1,60
  4f3434:	8fbc0010 	lw	gp,16(sp)
  4f3438:	14430007 	bne	v0,v1,4f3458 <adSystemRebootPre@@Base+0x118>
  4f343c:	00000000 	nop
  4f3440:	8f99aad8 	lw	t9,-21800(gp)
  4f3444:	8fbf001c 	lw	ra,28(sp)
  4f3448:	00002021 	move	a0,zero
  4f344c:	2405000c 	li	a1,12
  4f3450:	03200008 	jr	t9
  4f3454:	27bd0020 	addiu	sp,sp,32
  4f3458:	8fbf001c 	lw	ra,28(sp)
  4f345c:	00000000 	nop
  4f3460:	03e00008 	jr	ra
  4f3464:	27bd0020 	addiu	sp,sp,32

004f3468 <adPoePortLedSet@@Base>:
  4f3468:	3c1c00a3 	lui	gp,0xa3
  4f346c:	279ce4a8 	addiu	gp,gp,-7000
  4f3470:	0399e021 	addu	gp,gp,t9
  4f3474:	27bdffc8 	addiu	sp,sp,-56
  4f3478:	afbf0034 	sw	ra,52(sp)
  4f347c:	afb20030 	sw	s2,48(sp)
  4f3480:	afb1002c 	sw	s1,44(sp)
  4f3484:	afb00028 	sw	s0,40(sp)
  4f3488:	afbc0018 	sw	gp,24(sp)
  4f348c:	8f998aac 	lw	t9,-30036(gp)
  4f3490:	00808021 	move	s0,a0
  4f3494:	00a08821 	move	s1,a1
  4f3498:	00c09021 	move	s2,a2
  4f349c:	afa00020 	sw	zero,32(sp)
  4f34a0:	00002021 	move	a0,zero
  4f34a4:	02002821 	move	a1,s0
  4f34a8:	02203021 	move	a2,s1
  4f34ac:	0320f809 	jalr	t9
  4f34b0:	27a70020 	addiu	a3,sp,32
  4f34b4:	8fa20020 	lw	v0,32(sp)
  4f34b8:	8fbc0018 	lw	gp,24(sp)
  4f34bc:	14400007 	bnez	v0,4f34dc <adPoePortLedSet@@Base+0x74>
  4f34c0:	00002021 	move	a0,zero
  4f34c4:	8f99cd28 	lw	t9,-13016(gp)
  4f34c8:	02002821 	move	a1,s0
  4f34cc:	02203021 	move	a2,s1
  4f34d0:	0320f809 	jalr	t9
  4f34d4:	24070001 	li	a3,1
  4f34d8:	8fbc0018 	lw	gp,24(sp)
  4f34dc:	16400004 	bnez	s2,4f34f0 <adPoePortLedSet@@Base+0x88>
  4f34e0:	24020001 	li	v0,1
  4f34e4:	8f999988 	lw	t9,-26232(gp)
  4f34e8:	10000006 	b	4f3504 <adPoePortLedSet@@Base+0x9c>
  4f34ec:	afa00010 	sw	zero,16(sp)
  4f34f0:	8f999988 	lw	t9,-26232(gp)
  4f34f4:	12420002 	beq	s2,v0,4f3500 <adPoePortLedSet@@Base+0x98>
  4f34f8:	24020007 	li	v0,7
  4f34fc:	24020002 	li	v0,2
  4f3500:	afa20010 	sw	v0,16(sp)
  4f3504:	02002821 	move	a1,s0
  4f3508:	02203021 	move	a2,s1
  4f350c:	00002021 	move	a0,zero
  4f3510:	0320f809 	jalr	t9
  4f3514:	00003821 	move	a3,zero
  4f3518:	8fbc0018 	lw	gp,24(sp)
  4f351c:	8fbf0034 	lw	ra,52(sp)
  4f3520:	8fb20030 	lw	s2,48(sp)
  4f3524:	8fb1002c 	lw	s1,44(sp)
  4f3528:	8fb00028 	lw	s0,40(sp)
  4f352c:	00001021 	move	v0,zero
  4f3530:	03e00008 	jr	ra
  4f3534:	27bd0038 	addiu	sp,sp,56

004f3538 <adUpdatePoeLed@@Base>:
  4f3538:	3c1c00a3 	lui	gp,0xa3
  4f353c:	279ce3d8 	addiu	gp,gp,-7208
  4f3540:	0399e021 	addu	gp,gp,t9
  4f3544:	27bdffb0 	addiu	sp,sp,-80
  4f3548:	afbf004c 	sw	ra,76(sp)
  4f354c:	afbe0048 	sw	s8,72(sp)
  4f3550:	afb70044 	sw	s7,68(sp)
  4f3554:	afb60040 	sw	s6,64(sp)
  4f3558:	afb5003c 	sw	s5,60(sp)
  4f355c:	afb40038 	sw	s4,56(sp)
  4f3560:	afb30034 	sw	s3,52(sp)
  4f3564:	afb20030 	sw	s2,48(sp)
  4f3568:	afb1002c 	sw	s1,44(sp)
  4f356c:	afb00028 	sw	s0,40(sp)
  4f3570:	afbc0010 	sw	gp,16(sp)
  4f3574:	8f83a3dc 	lw	v1,-23588(gp)
  4f3578:	afa0001c 	sw	zero,28(sp)
  4f357c:	afa00020 	sw	zero,32(sp)
  4f3580:	8c71000c 	lw	s1,12(v1)
  4f3584:	27b70018 	addiu	s7,sp,24
  4f3588:	27be001c 	addiu	s8,sp,28
  4f358c:	27b60020 	addiu	s6,sp,32
  4f3590:	8f94802c 	lw	s4,-32724(gp)
  4f3594:	8f95d6d0 	lw	s5,-10544(gp)
  4f3598:	8f92d0f4 	lw	s2,-12044(gp)
  4f359c:	10000071 	b	4f3764 <adUpdatePoeLed@@Base+0x22c>
  4f35a0:	24130002 	li	s3,2
  4f35a4:	8f99ed94 	lw	t9,-4716(gp)
  4f35a8:	00000000 	nop
  4f35ac:	0320f809 	jalr	t9
  4f35b0:	02e02821 	move	a1,s7
  4f35b4:	8fbc0010 	lw	gp,16(sp)
  4f35b8:	1a200011 	blez	s1,4f3600 <adUpdatePoeLed@@Base+0xc8>
  4f35bc:	00002021 	move	a0,zero
  4f35c0:	8f9996d8 	lw	t9,-26920(gp)
  4f35c4:	00000000 	nop
  4f35c8:	0320f809 	jalr	t9
  4f35cc:	00000000 	nop
  4f35d0:	8fbc0010 	lw	gp,16(sp)
  4f35d4:	00000000 	nop
  4f35d8:	8f99f3c0 	lw	t9,-3136(gp)
  4f35dc:	00000000 	nop
  4f35e0:	0320f809 	jalr	t9
  4f35e4:	00408021 	move	s0,v0
  4f35e8:	00501021 	addu	v0,v0,s0
  4f35ec:	0051102a 	slt	v0,v0,s1
  4f35f0:	8fbc0010 	lw	gp,16(sp)
  4f35f4:	10400002 	beqz	v0,4f3600 <adUpdatePoeLed@@Base+0xc8>
  4f35f8:	3224ffff 	andi	a0,s1,0xffff
  4f35fc:	00002021 	move	a0,zero
  4f3600:	8f998548 	lw	t9,-31416(gp)
  4f3604:	03c02821 	move	a1,s8
  4f3608:	0320f809 	jalr	t9
  4f360c:	02c03021 	move	a2,s6
  4f3610:	8fbc0010 	lw	gp,16(sp)
  4f3614:	14400058 	bnez	v0,4f3778 <adUpdatePoeLed@@Base+0x240>
  4f3618:	00000000 	nop
  4f361c:	8e82c4e8 	lw	v0,-15128(s4)
  4f3620:	00000000 	nop
  4f3624:	14400002 	bnez	v0,4f3630 <adUpdatePoeLed@@Base+0xf8>
  4f3628:	00000000 	nop
  4f362c:	afa00018 	sw	zero,24(sp)
  4f3630:	8ea20000 	lw	v0,0(s5)
  4f3634:	00000000 	nop
  4f3638:	1440004f 	bnez	v0,4f3778 <adUpdatePoeLed@@Base+0x240>
  4f363c:	00000000 	nop
  4f3640:	8fa30018 	lw	v1,24(sp)
  4f3644:	00000000 	nop
  4f3648:	2c620005 	sltiu	v0,v1,5
  4f364c:	10400042 	beqz	v0,4f3758 <adUpdatePoeLed@@Base+0x220>
  4f3650:	00031080 	sll	v0,v1,0x2
  4f3654:	8f838028 	lw	v1,-32728(gp)
  4f3658:	8fa40020 	lw	a0,32(sp)
  4f365c:	8f99c888 	lw	t9,-14200(gp)
  4f3660:	246392d0 	addiu	v1,v1,-27952
  4f3664:	00621021 	addu	v0,v1,v0
  4f3668:	8c420000 	lw	v0,0(v0)
  4f366c:	00000000 	nop
  4f3670:	005c1021 	addu	v0,v0,gp
  4f3674:	00400008 	jr	v0
  4f3678:	00000000 	nop
  4f367c:	8e420000 	lw	v0,0(s2)
  4f3680:	10000006 	b	4f369c <adUpdatePoeLed@@Base+0x164>
  4f3684:	00003021 	move	a2,zero
  4f3688:	8e420000 	lw	v0,0(s2)
  4f368c:	10000003 	b	4f369c <adUpdatePoeLed@@Base+0x164>
  4f3690:	24060001 	li	a2,1
  4f3694:	8e420000 	lw	v0,0(s2)
  4f3698:	2406ffff 	li	a2,-1
  4f369c:	90450255 	lbu	a1,597(v0)
  4f36a0:	0320f809 	jalr	t9
  4f36a4:	00000000 	nop
  4f36a8:	8e430000 	lw	v1,0(s2)
  4f36ac:	8fbc0010 	lw	gp,16(sp)
  4f36b0:	90620252 	lbu	v0,594(v1)
  4f36b4:	00000000 	nop
  4f36b8:	14530027 	bne	v0,s3,4f3758 <adUpdatePoeLed@@Base+0x220>
  4f36bc:	00003021 	move	a2,zero
  4f36c0:	90650256 	lbu	a1,598(v1)
  4f36c4:	8f99c888 	lw	t9,-14200(gp)
  4f36c8:	8fa40020 	lw	a0,32(sp)
  4f36cc:	1000001f 	b	4f374c <adUpdatePoeLed@@Base+0x214>
  4f36d0:	00000000 	nop
  4f36d4:	8e420000 	lw	v0,0(s2)
  4f36d8:	00000000 	nop
  4f36dc:	90450255 	lbu	a1,597(v0)
  4f36e0:	0320f809 	jalr	t9
  4f36e4:	00003021 	move	a2,zero
  4f36e8:	8e430000 	lw	v1,0(s2)
  4f36ec:	8fbc0010 	lw	gp,16(sp)
  4f36f0:	90620252 	lbu	v0,594(v1)
  4f36f4:	00000000 	nop
  4f36f8:	14530017 	bne	v0,s3,4f3758 <adUpdatePoeLed@@Base+0x220>
  4f36fc:	24060001 	li	a2,1
  4f3700:	90650256 	lbu	a1,598(v1)
  4f3704:	8f99c888 	lw	t9,-14200(gp)
  4f3708:	8fa40020 	lw	a0,32(sp)
  4f370c:	1000000f 	b	4f374c <adUpdatePoeLed@@Base+0x214>
  4f3710:	00000000 	nop
  4f3714:	8e420000 	lw	v0,0(s2)
  4f3718:	00000000 	nop
  4f371c:	90450255 	lbu	a1,597(v0)
  4f3720:	0320f809 	jalr	t9
  4f3724:	00003021 	move	a2,zero
  4f3728:	8e430000 	lw	v1,0(s2)
  4f372c:	8fbc0010 	lw	gp,16(sp)
  4f3730:	90620252 	lbu	v0,594(v1)
  4f3734:	00000000 	nop
  4f3738:	14530007 	bne	v0,s3,4f3758 <adUpdatePoeLed@@Base+0x220>
  4f373c:	2406ffff 	li	a2,-1
  4f3740:	90650256 	lbu	a1,598(v1)
  4f3744:	8f99c888 	lw	t9,-14200(gp)
  4f3748:	8fa40020 	lw	a0,32(sp)
  4f374c:	0320f809 	jalr	t9
  4f3750:	00000000 	nop
  4f3754:	8fbc0010 	lw	gp,16(sp)
  4f3758:	26310001 	addiu	s1,s1,1
  4f375c:	8f83a3dc 	lw	v1,-23588(gp)
  4f3760:	00000000 	nop
  4f3764:	8c620010 	lw	v0,16(v1)
  4f3768:	00000000 	nop
  4f376c:	0051102a 	slt	v0,v0,s1
  4f3770:	1040ff8c 	beqz	v0,4f35a4 <adUpdatePoeLed@@Base+0x6c>
  4f3774:	02202021 	move	a0,s1
  4f3778:	8fbf004c 	lw	ra,76(sp)
  4f377c:	8fbe0048 	lw	s8,72(sp)
  4f3780:	8fb70044 	lw	s7,68(sp)
  4f3784:	8fb60040 	lw	s6,64(sp)
  4f3788:	8fb5003c 	lw	s5,60(sp)
  4f378c:	8fb40038 	lw	s4,56(sp)
  4f3790:	8fb30034 	lw	s3,52(sp)
  4f3794:	8fb20030 	lw	s2,48(sp)
  4f3798:	8fb1002c 	lw	s1,44(sp)
  4f379c:	8fb00028 	lw	s0,40(sp)
  4f37a0:	03e00008 	jr	ra
  4f37a4:	27bd0050 	addiu	sp,sp,80

004f37a8 <adPoeBusInit@@Base>:
  4f37a8:	3c1c00a3 	lui	gp,0xa3
  4f37ac:	279ce168 	addiu	gp,gp,-7832
  4f37b0:	0399e021 	addu	gp,gp,t9
  4f37b4:	27bdffd8 	addiu	sp,sp,-40
  4f37b8:	afbf0024 	sw	ra,36(sp)
  4f37bc:	afb10020 	sw	s1,32(sp)
  4f37c0:	afb0001c 	sw	s0,28(sp)
  4f37c4:	afbc0010 	sw	gp,16(sp)
  4f37c8:	8f82f3d4 	lw	v0,-3116(gp)
  4f37cc:	8f999358 	lw	t9,-27816(gp)
  4f37d0:	8f918030 	lw	s1,-32720(gp)
  4f37d4:	8c440000 	lw	a0,0(v0)
  4f37d8:	0320f809 	jalr	t9
  4f37dc:	00000000 	nop
  4f37e0:	8fbc0010 	lw	gp,16(sp)
  4f37e4:	ae22ca60 	sw	v0,-13728(s1)
  4f37e8:	1040002c 	beqz	v0,4f389c <adPoeBusInit@@Base+0xf4>
  4f37ec:	24030007 	li	v1,7
  4f37f0:	8f908028 	lw	s0,-32728(gp)
  4f37f4:	8f99fb20 	lw	t9,-1248(gp)
  4f37f8:	24071560 	li	a3,5472
  4f37fc:	00402021 	move	a0,v0
  4f3800:	2405ffff 	li	a1,-1
  4f3804:	0320f809 	jalr	t9
  4f3808:	260600b0 	addiu	a2,s0,176
  4f380c:	8fbc0010 	lw	gp,16(sp)
  4f3810:	00002021 	move	a0,zero
  4f3814:	24050003 	li	a1,3
  4f3818:	8f99dfe4 	lw	t9,-8220(gp)
  4f381c:	00000000 	nop
  4f3820:	0320f809 	jalr	t9
  4f3824:	00003021 	move	a2,zero
  4f3828:	8fbc0010 	lw	gp,16(sp)
  4f382c:	00002021 	move	a0,zero
  4f3830:	24050004 	li	a1,4
  4f3834:	8f99dfe4 	lw	t9,-8220(gp)
  4f3838:	00000000 	nop
  4f383c:	0320f809 	jalr	t9
  4f3840:	24060001 	li	a2,1
  4f3844:	8fbc0010 	lw	gp,16(sp)
  4f3848:	00002021 	move	a0,zero
  4f384c:	24050001 	li	a1,1
  4f3850:	8f99dfe4 	lw	t9,-8220(gp)
  4f3854:	00000000 	nop
  4f3858:	0320f809 	jalr	t9
  4f385c:	00003021 	move	a2,zero
  4f3860:	8fbc0010 	lw	gp,16(sp)
  4f3864:	8e24ca60 	lw	a0,-13728(s1)
  4f3868:	260500b0 	addiu	a1,s0,176
  4f386c:	8f99cb7c 	lw	t9,-13444(gp)
  4f3870:	00000000 	nop
  4f3874:	0320f809 	jalr	t9
  4f3878:	24061569 	li	a2,5481
  4f387c:	8fbc0010 	lw	gp,16(sp)
  4f3880:	3c040007 	lui	a0,0x7
  4f3884:	8f99a448 	lw	t9,-23480(gp)
  4f3888:	00000000 	nop
  4f388c:	0320f809 	jalr	t9
  4f3890:	3484a120 	ori	a0,a0,0xa120
  4f3894:	8fbc0010 	lw	gp,16(sp)
  4f3898:	00001821 	move	v1,zero
  4f389c:	8fbf0024 	lw	ra,36(sp)
  4f38a0:	8fb10020 	lw	s1,32(sp)
  4f38a4:	8fb0001c 	lw	s0,28(sp)
  4f38a8:	00601021 	move	v0,v1
  4f38ac:	03e00008 	jr	ra
  4f38b0:	27bd0028 	addiu	sp,sp,40

004f38b4 <adPoeBusReset@@Base>:
  4f38b4:	3c1c00a3 	lui	gp,0xa3
  4f38b8:	279ce05c 	addiu	gp,gp,-8100
  4f38bc:	0399e021 	addu	gp,gp,t9
  4f38c0:	27bdffd8 	addiu	sp,sp,-40
  4f38c4:	afbf0024 	sw	ra,36(sp)
  4f38c8:	afb10020 	sw	s1,32(sp)
  4f38cc:	afb0001c 	sw	s0,28(sp)
  4f38d0:	afbc0010 	sw	gp,16(sp)
  4f38d4:	8f908030 	lw	s0,-32720(gp)
  4f38d8:	8f918028 	lw	s1,-32728(gp)
  4f38dc:	8f99fb20 	lw	t9,-1248(gp)
  4f38e0:	8e04ca60 	lw	a0,-13728(s0)
  4f38e4:	2407153d 	li	a3,5437
  4f38e8:	262600b0 	addiu	a2,s1,176
  4f38ec:	0320f809 	jalr	t9
  4f38f0:	2405ffff 	li	a1,-1
  4f38f4:	8fbc0010 	lw	gp,16(sp)
  4f38f8:	00002021 	move	a0,zero
  4f38fc:	24050001 	li	a1,1
  4f3900:	8f99dfe4 	lw	t9,-8220(gp)
  4f3904:	00000000 	nop
  4f3908:	0320f809 	jalr	t9
  4f390c:	00003021 	move	a2,zero
  4f3910:	8fbc0010 	lw	gp,16(sp)
  4f3914:	8e04ca60 	lw	a0,-13728(s0)
  4f3918:	262500b0 	addiu	a1,s1,176
  4f391c:	8f99cb7c 	lw	t9,-13444(gp)
  4f3920:	00000000 	nop
  4f3924:	0320f809 	jalr	t9
  4f3928:	2406153f 	li	a2,5439
  4f392c:	8fbc0010 	lw	gp,16(sp)
  4f3930:	3c040001 	lui	a0,0x1
  4f3934:	8f99a448 	lw	t9,-23480(gp)
  4f3938:	00000000 	nop
  4f393c:	0320f809 	jalr	t9
  4f3940:	348486a0 	ori	a0,a0,0x86a0
  4f3944:	8fbc0010 	lw	gp,16(sp)
  4f3948:	8fbf0024 	lw	ra,36(sp)
  4f394c:	8fb10020 	lw	s1,32(sp)
  4f3950:	8fb0001c 	lw	s0,28(sp)
  4f3954:	00001021 	move	v0,zero
  4f3958:	03e00008 	jr	ra
  4f395c:	27bd0028 	addiu	sp,sp,40

004f3960 <adPoeBusProbe@@Base>:
  4f3960:	3c1c00a3 	lui	gp,0xa3
  4f3964:	279cdfb0 	addiu	gp,gp,-8272
  4f3968:	0399e021 	addu	gp,gp,t9
  4f396c:	27bdffd8 	addiu	sp,sp,-40
  4f3970:	afbf0024 	sw	ra,36(sp)
  4f3974:	afb20020 	sw	s2,32(sp)
  4f3978:	afb1001c 	sw	s1,28(sp)
  4f397c:	afb00018 	sw	s0,24(sp)
  4f3980:	afbc0010 	sw	gp,16(sp)
  4f3984:	8f918030 	lw	s1,-32720(gp)
  4f3988:	8f928028 	lw	s2,-32728(gp)
  4f398c:	8f99fb20 	lw	t9,-1248(gp)
  4f3990:	309000ff 	andi	s0,a0,0xff
  4f3994:	8e24ca60 	lw	a0,-13728(s1)
  4f3998:	264600b0 	addiu	a2,s2,176
  4f399c:	24071528 	li	a3,5416
  4f39a0:	0320f809 	jalr	t9
  4f39a4:	2405ffff 	li	a1,-1
  4f39a8:	8fbc0010 	lw	gp,16(sp)
  4f39ac:	02002821 	move	a1,s0
  4f39b0:	8f99bba0 	lw	t9,-17504(gp)
  4f39b4:	00000000 	nop
  4f39b8:	0320f809 	jalr	t9
  4f39bc:	00002021 	move	a0,zero
  4f39c0:	8fbc0010 	lw	gp,16(sp)
  4f39c4:	8e24ca60 	lw	a0,-13728(s1)
  4f39c8:	00408021 	move	s0,v0
  4f39cc:	8f99cb7c 	lw	t9,-13444(gp)
  4f39d0:	264500b0 	addiu	a1,s2,176
  4f39d4:	0320f809 	jalr	t9
  4f39d8:	2406152a 	li	a2,5418
  4f39dc:	02001021 	move	v0,s0
  4f39e0:	8fbc0010 	lw	gp,16(sp)
  4f39e4:	8fbf0024 	lw	ra,36(sp)
  4f39e8:	8fb20020 	lw	s2,32(sp)
  4f39ec:	8fb1001c 	lw	s1,28(sp)
  4f39f0:	8fb00018 	lw	s0,24(sp)
  4f39f4:	03e00008 	jr	ra
  4f39f8:	27bd0028 	addiu	sp,sp,40

004f39fc <adPoeBusRead@@Base>:
  4f39fc:	3c1c00a3 	lui	gp,0xa3
  4f3a00:	279cdf14 	addiu	gp,gp,-8428
  4f3a04:	0399e021 	addu	gp,gp,t9
  4f3a08:	27bdffc8 	addiu	sp,sp,-56
  4f3a0c:	afbf0034 	sw	ra,52(sp)
  4f3a10:	afb30030 	sw	s3,48(sp)
  4f3a14:	afb2002c 	sw	s2,44(sp)
  4f3a18:	afb10028 	sw	s1,40(sp)
  4f3a1c:	afb00024 	sw	s0,36(sp)
  4f3a20:	afbc0010 	sw	gp,16(sp)
  4f3a24:	00809821 	move	s3,a0
  4f3a28:	10c00021 	beqz	a2,4f3ab0 <adPoeBusRead@@Base+0xb4>
  4f3a2c:	00a09021 	move	s2,a1
  4f3a30:	10a0001f 	beqz	a1,4f3ab0 <adPoeBusRead@@Base+0xb4>
  4f3a34:	24071506 	li	a3,5382
  4f3a38:	8f908030 	lw	s0,-32720(gp)
  4f3a3c:	8f918028 	lw	s1,-32728(gp)
  4f3a40:	90a20000 	lbu	v0,0(a1)
  4f3a44:	8f99fb20 	lw	t9,-1248(gp)
  4f3a48:	8e04ca60 	lw	a0,-13728(s0)
  4f3a4c:	2405ffff 	li	a1,-1
  4f3a50:	262600b0 	addiu	a2,s1,176
  4f3a54:	0320f809 	jalr	t9
  4f3a58:	afa20018 	sw	v0,24(sp)
  4f3a5c:	8fbc0010 	lw	gp,16(sp)
  4f3a60:	8fa60018 	lw	a2,24(sp)
  4f3a64:	02602821 	move	a1,s3
  4f3a68:	8f99e3e8 	lw	t9,-7192(gp)
  4f3a6c:	00002021 	move	a0,zero
  4f3a70:	0320f809 	jalr	t9
  4f3a74:	27a7001c 	addiu	a3,sp,28
  4f3a78:	8fbc0010 	lw	gp,16(sp)
  4f3a7c:	8e04ca60 	lw	a0,-13728(s0)
  4f3a80:	262500b0 	addiu	a1,s1,176
  4f3a84:	8f99cb7c 	lw	t9,-13444(gp)
  4f3a88:	24061508 	li	a2,5384
  4f3a8c:	0320f809 	jalr	t9
  4f3a90:	00408021 	move	s0,v0
  4f3a94:	8fa2001c 	lw	v0,28(sp)
  4f3a98:	8fbc0010 	lw	gp,16(sp)
  4f3a9c:	00001821 	move	v1,zero
  4f3aa0:	12000004 	beqz	s0,4f3ab4 <adPoeBusRead@@Base+0xb8>
  4f3aa4:	a2420001 	sb	v0,1(s2)
  4f3aa8:	10000002 	b	4f3ab4 <adPoeBusRead@@Base+0xb8>
  4f3aac:	2403190d 	li	v1,6413
  4f3ab0:	24030001 	li	v1,1
  4f3ab4:	8fbf0034 	lw	ra,52(sp)
  4f3ab8:	8fb30030 	lw	s3,48(sp)
  4f3abc:	8fb2002c 	lw	s2,44(sp)
  4f3ac0:	8fb10028 	lw	s1,40(sp)
  4f3ac4:	8fb00024 	lw	s0,36(sp)
  4f3ac8:	00601021 	move	v0,v1
  4f3acc:	03e00008 	jr	ra
  4f3ad0:	27bd0038 	addiu	sp,sp,56

004f3ad4 <adPoeBusWrite@@Base>:
  4f3ad4:	3c1c00a3 	lui	gp,0xa3
  4f3ad8:	279cde3c 	addiu	gp,gp,-8644
  4f3adc:	0399e021 	addu	gp,gp,t9
  4f3ae0:	27bdffd0 	addiu	sp,sp,-48
  4f3ae4:	afbf002c 	sw	ra,44(sp)
  4f3ae8:	afb30028 	sw	s3,40(sp)
  4f3aec:	afb20024 	sw	s2,36(sp)
  4f3af0:	afb10020 	sw	s1,32(sp)
  4f3af4:	afb0001c 	sw	s0,28(sp)
  4f3af8:	afbc0010 	sw	gp,16(sp)
  4f3afc:	00a09021 	move	s2,a1
  4f3b00:	00809821 	move	s3,a0
  4f3b04:	10a0001b 	beqz	a1,4f3b74 <adPoeBusWrite@@Base+0xa0>
  4f3b08:	24020001 	li	v0,1
  4f3b0c:	8f908030 	lw	s0,-32720(gp)
  4f3b10:	8f918028 	lw	s1,-32728(gp)
  4f3b14:	8f99fb20 	lw	t9,-1248(gp)
  4f3b18:	8e04ca60 	lw	a0,-13728(s0)
  4f3b1c:	2405ffff 	li	a1,-1
  4f3b20:	262600b0 	addiu	a2,s1,176
  4f3b24:	0320f809 	jalr	t9
  4f3b28:	240714de 	li	a3,5342
  4f3b2c:	8fbc0010 	lw	gp,16(sp)
  4f3b30:	92470001 	lbu	a3,1(s2)
  4f3b34:	92460000 	lbu	a2,0(s2)
  4f3b38:	8f99debc 	lw	t9,-8516(gp)
  4f3b3c:	02602821 	move	a1,s3
  4f3b40:	0320f809 	jalr	t9
  4f3b44:	00002021 	move	a0,zero
  4f3b48:	8fbc0010 	lw	gp,16(sp)
  4f3b4c:	8e04ca60 	lw	a0,-13728(s0)
  4f3b50:	262500b0 	addiu	a1,s1,176
  4f3b54:	8f99cb7c 	lw	t9,-13444(gp)
  4f3b58:	00408021 	move	s0,v0
  4f3b5c:	0320f809 	jalr	t9
  4f3b60:	240614e1 	li	a2,5345
  4f3b64:	8fbc0010 	lw	gp,16(sp)
  4f3b68:	12000002 	beqz	s0,4f3b74 <adPoeBusWrite@@Base+0xa0>
  4f3b6c:	00001021 	move	v0,zero
  4f3b70:	2402190d 	li	v0,6413
  4f3b74:	8fbf002c 	lw	ra,44(sp)
  4f3b78:	8fb30028 	lw	s3,40(sp)
  4f3b7c:	8fb20024 	lw	s2,36(sp)
  4f3b80:	8fb10020 	lw	s1,32(sp)
  4f3b84:	8fb0001c 	lw	s0,28(sp)
  4f3b88:	03e00008 	jr	ra
  4f3b8c:	27bd0030 	addiu	sp,sp,48

004f3b90 <adPortComboDetectStart@@Base>:
  4f3b90:	3c1c00a3 	lui	gp,0xa3
  4f3b94:	279cdd80 	addiu	gp,gp,-8832
  4f3b98:	0399e021 	addu	gp,gp,t9
  4f3b9c:	27bdffd0 	addiu	sp,sp,-48
  4f3ba0:	afbf002c 	sw	ra,44(sp)
  4f3ba4:	afb00028 	sw	s0,40(sp)
  4f3ba8:	afbc0020 	sw	gp,32(sp)
  4f3bac:	8f90e2c8 	lw	s0,-7480(gp)
  4f3bb0:	2402ffff 	li	v0,-1
  4f3bb4:	8e030000 	lw	v1,0(s0)
  4f3bb8:	00000000 	nop
  4f3bbc:	1462000a 	bne	v1,v0,4f3be8 <adPortComboDetectStart@@Base+0x58>
  4f3bc0:	24052800 	li	a1,10240
  4f3bc4:	8f848028 	lw	a0,-32728(gp)
  4f3bc8:	8f99f698 	lw	t9,-2408(gp)
  4f3bcc:	8f87b174 	lw	a3,-20108(gp)
  4f3bd0:	afa00010 	sw	zero,16(sp)
  4f3bd4:	248400bc 	addiu	a0,a0,188
  4f3bd8:	0320f809 	jalr	t9
  4f3bdc:	24060064 	li	a2,100
  4f3be0:	8fbc0020 	lw	gp,32(sp)
  4f3be4:	ae020000 	sw	v0,0(s0)
  4f3be8:	8f82e2c8 	lw	v0,-7480(gp)
  4f3bec:	00000000 	nop
  4f3bf0:	8c430000 	lw	v1,0(v0)
  4f3bf4:	2402ffff 	li	v0,-1
  4f3bf8:	1462000b 	bne	v1,v0,4f3c28 <adPortComboDetectStart@@Base+0x98>
  4f3bfc:	3c045aa0 	lui	a0,0x5aa0
  4f3c00:	8f99bcec 	lw	t9,-17172(gp)
  4f3c04:	afa00010 	sw	zero,16(sp)
  4f3c08:	afa00014 	sw	zero,20(sp)
  4f3c0c:	afa00018 	sw	zero,24(sp)
  4f3c10:	34840062 	ori	a0,a0,0x62
  4f3c14:	00002821 	move	a1,zero
  4f3c18:	00003021 	move	a2,zero
  4f3c1c:	0320f809 	jalr	t9
  4f3c20:	00003821 	move	a3,zero
  4f3c24:	8fbc0020 	lw	gp,32(sp)
  4f3c28:	8fbf002c 	lw	ra,44(sp)
  4f3c2c:	8fb00028 	lw	s0,40(sp)
  4f3c30:	00001021 	move	v0,zero
  4f3c34:	03e00008 	jr	ra
  4f3c38:	27bd0030 	addiu	sp,sp,48

004f3c3c <adSerGpioDetectStop@@Base>:
  4f3c3c:	3c1c00a3 	lui	gp,0xa3
  4f3c40:	279cdcd4 	addiu	gp,gp,-9004
  4f3c44:	0399e021 	addu	gp,gp,t9
  4f3c48:	27bdffc8 	addiu	sp,sp,-56
  4f3c4c:	afbf0034 	sw	ra,52(sp)
  4f3c50:	afb10030 	sw	s1,48(sp)
  4f3c54:	afb0002c 	sw	s0,44(sp)
  4f3c58:	afbc0020 	sw	gp,32(sp)
  4f3c5c:	8f91867c 	lw	s1,-31108(gp)
  4f3c60:	2410ffff 	li	s0,-1
  4f3c64:	8e240000 	lw	a0,0(s1)
  4f3c68:	00000000 	nop
  4f3c6c:	10900015 	beq	a0,s0,4f3cc4 <adSerGpioDetectStop@@Base+0x88>
  4f3c70:	00000000 	nop
  4f3c74:	8f999c60 	lw	t9,-25504(gp)
  4f3c78:	00000000 	nop
  4f3c7c:	0320f809 	jalr	t9
  4f3c80:	00000000 	nop
  4f3c84:	8fbc0020 	lw	gp,32(sp)
  4f3c88:	1040000d 	beqz	v0,4f3cc0 <adSerGpioDetectStop@@Base+0x84>
  4f3c8c:	3c045aa0 	lui	a0,0x5aa0
  4f3c90:	8f99bcec 	lw	t9,-17172(gp)
  4f3c94:	afa00010 	sw	zero,16(sp)
  4f3c98:	afa00014 	sw	zero,20(sp)
  4f3c9c:	afa00018 	sw	zero,24(sp)
  4f3ca0:	34840063 	ori	a0,a0,0x63
  4f3ca4:	00002821 	move	a1,zero
  4f3ca8:	00003021 	move	a2,zero
  4f3cac:	0320f809 	jalr	t9
  4f3cb0:	00003821 	move	a3,zero
  4f3cb4:	8fbc0020 	lw	gp,32(sp)
  4f3cb8:	10000002 	b	4f3cc4 <adSerGpioDetectStop@@Base+0x88>
  4f3cbc:	00000000 	nop
  4f3cc0:	ae300000 	sw	s0,0(s1)
  4f3cc4:	8fbf0034 	lw	ra,52(sp)
  4f3cc8:	8fb10030 	lw	s1,48(sp)
  4f3ccc:	8fb0002c 	lw	s0,44(sp)
  4f3cd0:	00001021 	move	v0,zero
  4f3cd4:	03e00008 	jr	ra
  4f3cd8:	27bd0038 	addiu	sp,sp,56

004f3cdc <adSerGpioDetectStart@@Base>:
  4f3cdc:	3c1c00a3 	lui	gp,0xa3
  4f3ce0:	279cdc34 	addiu	gp,gp,-9164
  4f3ce4:	0399e021 	addu	gp,gp,t9
  4f3ce8:	27bdffd0 	addiu	sp,sp,-48
  4f3cec:	afbf002c 	sw	ra,44(sp)
  4f3cf0:	afb00028 	sw	s0,40(sp)
  4f3cf4:	afbc0020 	sw	gp,32(sp)
  4f3cf8:	8f90867c 	lw	s0,-31108(gp)
  4f3cfc:	2402ffff 	li	v0,-1
  4f3d00:	8e030000 	lw	v1,0(s0)
  4f3d04:	00000000 	nop
  4f3d08:	1462000a 	bne	v1,v0,4f3d34 <adSerGpioDetectStart@@Base+0x58>
  4f3d0c:	24052800 	li	a1,10240
  4f3d10:	8f848028 	lw	a0,-32728(gp)
  4f3d14:	8f99f698 	lw	t9,-2408(gp)
  4f3d18:	8f87f65c 	lw	a3,-2468(gp)
  4f3d1c:	afa00010 	sw	zero,16(sp)
  4f3d20:	248400cc 	addiu	a0,a0,204
  4f3d24:	0320f809 	jalr	t9
  4f3d28:	24060064 	li	a2,100
  4f3d2c:	8fbc0020 	lw	gp,32(sp)
  4f3d30:	ae020000 	sw	v0,0(s0)
  4f3d34:	8f82867c 	lw	v0,-31108(gp)
  4f3d38:	00000000 	nop
  4f3d3c:	8c430000 	lw	v1,0(v0)
  4f3d40:	2402ffff 	li	v0,-1
  4f3d44:	1462000b 	bne	v1,v0,4f3d74 <adSerGpioDetectStart@@Base+0x98>
  4f3d48:	3c045aa0 	lui	a0,0x5aa0
  4f3d4c:	8f99bcec 	lw	t9,-17172(gp)
  4f3d50:	afa00010 	sw	zero,16(sp)
  4f3d54:	afa00014 	sw	zero,20(sp)
  4f3d58:	afa00018 	sw	zero,24(sp)
  4f3d5c:	34840062 	ori	a0,a0,0x62
  4f3d60:	00002821 	move	a1,zero
  4f3d64:	00003021 	move	a2,zero
  4f3d68:	0320f809 	jalr	t9
  4f3d6c:	00003821 	move	a3,zero
  4f3d70:	8fbc0020 	lw	gp,32(sp)
  4f3d74:	8fbf002c 	lw	ra,44(sp)
  4f3d78:	8fb00028 	lw	s0,40(sp)
  4f3d7c:	00001021 	move	v0,zero
  4f3d80:	03e00008 	jr	ra
  4f3d84:	27bd0030 	addiu	sp,sp,48

004f3d88 <usbSerCfgSet@@Base>:
  4f3d88:	3c1c00a3 	lui	gp,0xa3
  4f3d8c:	279cdb88 	addiu	gp,gp,-9336
  4f3d90:	0399e021 	addu	gp,gp,t9
  4f3d94:	27bdffe0 	addiu	sp,sp,-32
  4f3d98:	afbf001c 	sw	ra,28(sp)
  4f3d9c:	afbc0010 	sw	gp,16(sp)
  4f3da0:	8f82d0f4 	lw	v0,-12044(gp)
  4f3da4:	00000000 	nop
  4f3da8:	8c420000 	lw	v0,0(v0)
  4f3dac:	00000000 	nop
  4f3db0:	90420247 	lbu	v0,583(v0)
  4f3db4:	00000000 	nop
  4f3db8:	10400012 	beqz	v0,4f3e04 <usbSerCfgSet@@Base+0x7c>
  4f3dbc:	00801821 	move	v1,a0
  4f3dc0:	8f848028 	lw	a0,-32728(gp)
  4f3dc4:	8f99faf8 	lw	t9,-1288(gp)
  4f3dc8:	14600005 	bnez	v1,4f3de0 <usbSerCfgSet@@Base+0x58>
  4f3dcc:	00000000 	nop
  4f3dd0:	8f858028 	lw	a1,-32728(gp)
  4f3dd4:	248400d8 	addiu	a0,a0,216
  4f3dd8:	10000004 	b	4f3dec <usbSerCfgSet@@Base+0x64>
  4f3ddc:	24a500e4 	addiu	a1,a1,228
  4f3de0:	8f858028 	lw	a1,-32728(gp)
  4f3de4:	248400d8 	addiu	a0,a0,216
  4f3de8:	24a570a0 	addiu	a1,a1,28832
  4f3dec:	0320f809 	jalr	t9
  4f3df0:	00000000 	nop
  4f3df4:	2403ffff 	li	v1,-1
  4f3df8:	8fbc0010 	lw	gp,16(sp)
  4f3dfc:	10430002 	beq	v0,v1,4f3e08 <usbSerCfgSet@@Base+0x80>
  4f3e00:	24020005 	li	v0,5
  4f3e04:	00001021 	move	v0,zero
  4f3e08:	8fbf001c 	lw	ra,28(sp)
  4f3e0c:	00000000 	nop
  4f3e10:	03e00008 	jr	ra
  4f3e14:	27bd0020 	addiu	sp,sp,32

004f3e18 <adUsbSerSaveCfg@@Base>:
  4f3e18:	3c1c00a3 	lui	gp,0xa3
  4f3e1c:	279cdaf8 	addiu	gp,gp,-9480
  4f3e20:	0399e021 	addu	gp,gp,t9
  4f3e24:	8f99c464 	lw	t9,-15260(gp)
  4f3e28:	14800004 	bnez	a0,4f3e3c <adUsbSerSaveCfg@@Base+0x24>
  4f3e2c:	24040001 	li	a0,1
  4f3e30:	8f82802c 	lw	v0,-32724(gp)
  4f3e34:	00000000 	nop
  4f3e38:	8c44c4fc 	lw	a0,-15108(v0)
  4f3e3c:	03200008 	jr	t9
  4f3e40:	00000000 	nop

004f3e44 <adMiscRTL8231Init@@Base>:
  4f3e44:	3c1c00a3 	lui	gp,0xa3
  4f3e48:	279cdacc 	addiu	gp,gp,-9524
  4f3e4c:	0399e021 	addu	gp,gp,t9
  4f3e50:	27bdffe0 	addiu	sp,sp,-32
  4f3e54:	afbf001c 	sw	ra,28(sp)
  4f3e58:	afbc0010 	sw	gp,16(sp)
  4f3e5c:	8f998ae0 	lw	t9,-29984(gp)
  4f3e60:	00000000 	nop
  4f3e64:	0320f809 	jalr	t9
  4f3e68:	00000000 	nop
  4f3e6c:	00401821 	move	v1,v0
  4f3e70:	2402002c 	li	v0,44
  4f3e74:	8fbc0010 	lw	gp,16(sp)
  4f3e78:	1062001e 	beq	v1,v0,4f3ef4 <adMiscRTL8231Init@@Base+0xb0>
  4f3e7c:	2862002d 	slti	v0,v1,45
  4f3e80:	1040000f 	beqz	v0,4f3ec0 <adMiscRTL8231Init@@Base+0x7c>
  4f3e84:	24020039 	li	v0,57
  4f3e88:	24020016 	li	v0,22
  4f3e8c:	10620019 	beq	v1,v0,4f3ef4 <adMiscRTL8231Init@@Base+0xb0>
  4f3e90:	28620017 	slti	v0,v1,23
  4f3e94:	10400006 	beqz	v0,4f3eb0 <adMiscRTL8231Init@@Base+0x6c>
  4f3e98:	2402001f 	li	v0,31
  4f3e9c:	24020009 	li	v0,9
  4f3ea0:	10620014 	beq	v1,v0,4f3ef4 <adMiscRTL8231Init@@Base+0xb0>
  4f3ea4:	2402000e 	li	v0,14
  4f3ea8:	10000010 	b	4f3eec <adMiscRTL8231Init@@Base+0xa8>
  4f3eac:	00000000 	nop
  4f3eb0:	10620010 	beq	v1,v0,4f3ef4 <adMiscRTL8231Init@@Base+0xb0>
  4f3eb4:	24020022 	li	v0,34
  4f3eb8:	1000000c 	b	4f3eec <adMiscRTL8231Init@@Base+0xa8>
  4f3ebc:	00000000 	nop
  4f3ec0:	1062000c 	beq	v1,v0,4f3ef4 <adMiscRTL8231Init@@Base+0xb0>
  4f3ec4:	2862003a 	slti	v0,v1,58
  4f3ec8:	10400006 	beqz	v0,4f3ee4 <adMiscRTL8231Init@@Base+0xa0>
  4f3ecc:	2402003c 	li	v0,60
  4f3ed0:	24020030 	li	v0,48
  4f3ed4:	10620007 	beq	v1,v0,4f3ef4 <adMiscRTL8231Init@@Base+0xb0>
  4f3ed8:	24020034 	li	v0,52
  4f3edc:	10000003 	b	4f3eec <adMiscRTL8231Init@@Base+0xa8>
  4f3ee0:	00000000 	nop
  4f3ee4:	10620003 	beq	v1,v0,4f3ef4 <adMiscRTL8231Init@@Base+0xb0>
  4f3ee8:	24020048 	li	v0,72
  4f3eec:	14620006 	bne	v1,v0,4f3f08 <adMiscRTL8231Init@@Base+0xc4>
  4f3ef0:	00000000 	nop
  4f3ef4:	8f99f074 	lw	t9,-3980(gp)
  4f3ef8:	8fbf001c 	lw	ra,28(sp)
  4f3efc:	00002021 	move	a0,zero
  4f3f00:	03200008 	jr	t9
  4f3f04:	27bd0020 	addiu	sp,sp,32
  4f3f08:	8fbf001c 	lw	ra,28(sp)
  4f3f0c:	00000000 	nop
  4f3f10:	03e00008 	jr	ra
  4f3f14:	27bd0020 	addiu	sp,sp,32

004f3f18 <monitor8231Log@@Base>:
  4f3f18:	3c1c00a3 	lui	gp,0xa3
  4f3f1c:	279cd9f8 	addiu	gp,gp,-9736
  4f3f20:	0399e021 	addu	gp,gp,t9
  4f3f24:	27bdfbc8 	addiu	sp,sp,-1080
  4f3f28:	afbf0434 	sw	ra,1076(sp)
  4f3f2c:	afb10430 	sw	s1,1072(sp)
  4f3f30:	afb0042c 	sw	s0,1068(sp)
  4f3f34:	afbc0018 	sw	gp,24(sp)
  4f3f38:	8f99ce64 	lw	t9,-12700(gp)
  4f3f3c:	27a40024 	addiu	a0,sp,36
  4f3f40:	00002821 	move	a1,zero
  4f3f44:	0320f809 	jalr	t9
  4f3f48:	24060400 	li	a2,1024
  4f3f4c:	8fbc0018 	lw	gp,24(sp)
  4f3f50:	00000000 	nop
  4f3f54:	8f908028 	lw	s0,-32728(gp)
  4f3f58:	8f858028 	lw	a1,-32728(gp)
  4f3f5c:	8f99b694 	lw	t9,-18796(gp)
  4f3f60:	260400e8 	addiu	a0,s0,232
  4f3f64:	0320f809 	jalr	t9
  4f3f68:	24a50104 	addiu	a1,a1,260
  4f3f6c:	8fbc0018 	lw	gp,24(sp)
  4f3f70:	10400044 	beqz	v0,4f4084 <monitor8231Log@@Base+0x16c>
  4f3f74:	00408821 	move	s1,v0
  4f3f78:	8f99c394 	lw	t9,-15468(gp)
  4f3f7c:	00402021 	move	a0,v0
  4f3f80:	00002821 	move	a1,zero
  4f3f84:	0320f809 	jalr	t9
  4f3f88:	24060002 	li	a2,2
  4f3f8c:	8fbc0018 	lw	gp,24(sp)
  4f3f90:	00000000 	nop
  4f3f94:	8f99f994 	lw	t9,-1644(gp)
  4f3f98:	00000000 	nop
  4f3f9c:	0320f809 	jalr	t9
  4f3fa0:	02202021 	move	a0,s1
  4f3fa4:	28420800 	slti	v0,v0,2048
  4f3fa8:	8fbc0018 	lw	gp,24(sp)
  4f3fac:	14400009 	bnez	v0,4f3fd4 <monitor8231Log@@Base+0xbc>
  4f3fb0:	02203021 	move	a2,s1
  4f3fb4:	8f858028 	lw	a1,-32728(gp)
  4f3fb8:	8f99ed80 	lw	t9,-4736(gp)
  4f3fbc:	260400e8 	addiu	a0,s0,232
  4f3fc0:	0320f809 	jalr	t9
  4f3fc4:	24a50108 	addiu	a1,a1,264
  4f3fc8:	8fbc0018 	lw	gp,24(sp)
  4f3fcc:	1040002d 	beqz	v0,4f4084 <monitor8231Log@@Base+0x16c>
  4f3fd0:	00408821 	move	s1,v0
  4f3fd4:	8f99c5f4 	lw	t9,-14860(gp)
  4f3fd8:	27b00020 	addiu	s0,sp,32
  4f3fdc:	0320f809 	jalr	t9
  4f3fe0:	02002021 	move	a0,s0
  4f3fe4:	8fbc0018 	lw	gp,24(sp)
  4f3fe8:	02002021 	move	a0,s0
  4f3fec:	8f99ade8 	lw	t9,-21016(gp)
  4f3ff0:	00000000 	nop
  4f3ff4:	0320f809 	jalr	t9
  4f3ff8:	27b00024 	addiu	s0,sp,36
  4f3ffc:	8c430010 	lw	v1,16(v0)
  4f4000:	8fbc0018 	lw	gp,24(sp)
  4f4004:	8c47000c 	lw	a3,12(v0)
  4f4008:	24630001 	addiu	v1,v1,1
  4f400c:	afa30010 	sw	v1,16(sp)
  4f4010:	8c420014 	lw	v0,20(v0)
  4f4014:	8f868028 	lw	a2,-32728(gp)
  4f4018:	8f99dcfc 	lw	t9,-8964(gp)
  4f401c:	2442076c 	addiu	v0,v0,1900
  4f4020:	24c6010c 	addiu	a2,a2,268
  4f4024:	02002021 	move	a0,s0
  4f4028:	24050100 	li	a1,256
  4f402c:	0320f809 	jalr	t9
  4f4030:	afa20014 	sw	v0,20(sp)
  4f4034:	8fbc0018 	lw	gp,24(sp)
  4f4038:	24050100 	li	a1,256
  4f403c:	24060001 	li	a2,1
  4f4040:	8f99c508 	lw	t9,-15096(gp)
  4f4044:	02203821 	move	a3,s1
  4f4048:	0320f809 	jalr	t9
  4f404c:	02002021 	move	a0,s0
  4f4050:	8fbc0018 	lw	gp,24(sp)
  4f4054:	00000000 	nop
  4f4058:	8f99cb90 	lw	t9,-13424(gp)
  4f405c:	00000000 	nop
  4f4060:	0320f809 	jalr	t9
  4f4064:	02202021 	move	a0,s1
  4f4068:	8fbc0018 	lw	gp,24(sp)
  4f406c:	00000000 	nop
  4f4070:	8f999b10 	lw	t9,-25840(gp)
  4f4074:	00000000 	nop
  4f4078:	0320f809 	jalr	t9
  4f407c:	02202021 	move	a0,s1
  4f4080:	8fbc0018 	lw	gp,24(sp)
  4f4084:	8fbf0434 	lw	ra,1076(sp)
  4f4088:	8fb10430 	lw	s1,1072(sp)
  4f408c:	8fb0042c 	lw	s0,1068(sp)
  4f4090:	03e00008 	jr	ra
  4f4094:	27bd0438 	addiu	sp,sp,1080

004f4098 <monitor8231Task@@Base>:
  4f4098:	3c1c00a3 	lui	gp,0xa3
  4f409c:	279cd878 	addiu	gp,gp,-10120
  4f40a0:	0399e021 	addu	gp,gp,t9
  4f40a4:	27bdffa8 	addiu	sp,sp,-88
  4f40a8:	afbf0054 	sw	ra,84(sp)
  4f40ac:	afbe0050 	sw	s8,80(sp)
  4f40b0:	afb7004c 	sw	s7,76(sp)
  4f40b4:	afb60048 	sw	s6,72(sp)
  4f40b8:	afb50044 	sw	s5,68(sp)
  4f40bc:	afb40040 	sw	s4,64(sp)
  4f40c0:	afb3003c 	sw	s3,60(sp)
  4f40c4:	afb20038 	sw	s2,56(sp)
  4f40c8:	afb10034 	sw	s1,52(sp)
  4f40cc:	afb00030 	sw	s0,48(sp)
  4f40d0:	afbc0018 	sw	gp,24(sp)
  4f40d4:	8f92a3dc 	lw	s2,-23588(gp)
  4f40d8:	27a20020 	addiu	v0,sp,32
  4f40dc:	afa00020 	sw	zero,32(sp)
  4f40e0:	afa00024 	sw	zero,36(sp)
  4f40e4:	afa20028 	sw	v0,40(sp)
  4f40e8:	0240f021 	move	s8,s2
  4f40ec:	24140004 	li	s4,4
  4f40f0:	27b30024 	addiu	s3,sp,36
  4f40f4:	2417001e 	li	s7,30
  4f40f8:	24160003 	li	s6,3
  4f40fc:	2415001e 	li	s5,30
  4f4100:	8f99be68 	lw	t9,-16792(gp)
  4f4104:	00000000 	nop
  4f4108:	0320f809 	jalr	t9
  4f410c:	00000000 	nop
  4f4110:	8fbc0018 	lw	gp,24(sp)
  4f4114:	00000000 	nop
  4f4118:	8f99c8f4 	lw	t9,-14092(gp)
  4f411c:	14400005 	bnez	v0,4f4134 <monitor8231Task@@Base+0x9c>
  4f4120:	00000000 	nop
  4f4124:	0320f809 	jalr	t9
  4f4128:	24040001 	li	a0,1
  4f412c:	10000062 	b	4f42b8 <monitor8231Task@@Base+0x220>
  4f4130:	00000000 	nop
  4f4134:	0320f809 	jalr	t9
  4f4138:	2404000a 	li	a0,10
  4f413c:	8fbc0018 	lw	gp,24(sp)
  4f4140:	00000000 	nop
  4f4144:	8f838030 	lw	v1,-32720(gp)
  4f4148:	00000000 	nop
  4f414c:	8c62ca78 	lw	v0,-13704(v1)
  4f4150:	00000000 	nop
  4f4154:	1040ffea 	beqz	v0,4f4100 <monitor8231Task@@Base+0x68>
  4f4158:	00008821 	move	s1,zero
  4f415c:	8e50000c 	lw	s0,12(s2)
  4f4160:	10000006 	b	4f417c <monitor8231Task@@Base+0xe4>
  4f4164:	00000000 	nop
  4f4168:	0320f809 	jalr	t9
  4f416c:	00000000 	nop
  4f4170:	8fbc0018 	lw	gp,24(sp)
  4f4174:	0002102b 	sltu	v0,zero,v0
  4f4178:	02228821 	addu	s1,s1,v0
  4f417c:	8e420010 	lw	v0,16(s2)
  4f4180:	02002021 	move	a0,s0
  4f4184:	8f99868c 	lw	t9,-31092(gp)
  4f4188:	0050102a 	slt	v0,v0,s0
  4f418c:	8fa50028 	lw	a1,40(sp)
  4f4190:	1040fff5 	beqz	v0,4f4168 <monitor8231Task@@Base+0xd0>
  4f4194:	26100001 	addiu	s0,s0,1
  4f4198:	8fc20000 	lw	v0,0(s8)
  4f419c:	00000000 	nop
  4f41a0:	0222102a 	slt	v0,s1,v0
  4f41a4:	1440ffd6 	bnez	v0,4f4100 <monitor8231Task@@Base+0x68>
  4f41a8:	00008821 	move	s1,zero
  4f41ac:	1000000d 	b	4f41e4 <monitor8231Task@@Base+0x14c>
  4f41b0:	00008021 	move	s0,zero
  4f41b4:	afa00024 	sw	zero,36(sp)
  4f41b8:	0320f809 	jalr	t9
  4f41bc:	afb30010 	sw	s3,16(sp)
  4f41c0:	8fbc0018 	lw	gp,24(sp)
  4f41c4:	8fa20024 	lw	v0,36(sp)
  4f41c8:	24040001 	li	a0,1
  4f41cc:	8f99c8f4 	lw	t9,-14092(gp)
  4f41d0:	3842001e 	xori	v0,v0,0x1e
  4f41d4:	0002102b 	sltu	v0,zero,v0
  4f41d8:	0320f809 	jalr	t9
  4f41dc:	02228821 	addu	s1,s1,v0
  4f41e0:	8fbc0018 	lw	gp,24(sp)
  4f41e4:	26100001 	addiu	s0,s0,1
  4f41e8:	8f99e2d0 	lw	t9,-7472(gp)
  4f41ec:	00002021 	move	a0,zero
  4f41f0:	00002821 	move	a1,zero
  4f41f4:	00003021 	move	a2,zero
  4f41f8:	1614ffee 	bne	s0,s4,4f41b4 <monitor8231Task@@Base+0x11c>
  4f41fc:	2407001f 	li	a3,31
  4f4200:	1636ffbf 	bne	s1,s6,4f4100 <monitor8231Task@@Base+0x68>
  4f4204:	00008021 	move	s0,zero
  4f4208:	10000015 	b	4f4260 <monitor8231Task@@Base+0x1c8>
  4f420c:	26100001 	addiu	s0,s0,1
  4f4210:	afa00024 	sw	zero,36(sp)
  4f4214:	0320f809 	jalr	t9
  4f4218:	afb50010 	sw	s5,16(sp)
  4f421c:	8fbc0018 	lw	gp,24(sp)
  4f4220:	00002021 	move	a0,zero
  4f4224:	afb30010 	sw	s3,16(sp)
  4f4228:	8f99e2d0 	lw	t9,-7472(gp)
  4f422c:	00002821 	move	a1,zero
  4f4230:	00003021 	move	a2,zero
  4f4234:	0320f809 	jalr	t9
  4f4238:	2407001f 	li	a3,31
  4f423c:	8fbc0018 	lw	gp,24(sp)
  4f4240:	8fa20024 	lw	v0,36(sp)
  4f4244:	8f99c8f4 	lw	t9,-14092(gp)
  4f4248:	1057ffad 	beq	v0,s7,4f4100 <monitor8231Task@@Base+0x68>
  4f424c:	24040001 	li	a0,1
  4f4250:	0320f809 	jalr	t9
  4f4254:	26100001 	addiu	s0,s0,1
  4f4258:	8fbc0018 	lw	gp,24(sp)
  4f425c:	00000000 	nop
  4f4260:	8f99d69c 	lw	t9,-10596(gp)
  4f4264:	00002021 	move	a0,zero
  4f4268:	00002821 	move	a1,zero
  4f426c:	00003021 	move	a2,zero
  4f4270:	1614ffe7 	bne	s0,s4,4f4210 <monitor8231Task@@Base+0x178>
  4f4274:	2407001f 	li	a3,31
  4f4278:	8f99f020 	lw	t9,-4064(gp)
  4f427c:	00000000 	nop
  4f4280:	0320f809 	jalr	t9
  4f4284:	00000000 	nop
  4f4288:	8fbc0018 	lw	gp,24(sp)
  4f428c:	00000000 	nop
  4f4290:	8f99f924 	lw	t9,-1756(gp)
  4f4294:	00000000 	nop
  4f4298:	0320f809 	jalr	t9
  4f429c:	00000000 	nop
  4f42a0:	8fbc0018 	lw	gp,24(sp)
  4f42a4:	00000000 	nop
  4f42a8:	8f998538 	lw	t9,-31432(gp)
  4f42ac:	00000000 	nop
  4f42b0:	0320f809 	jalr	t9
  4f42b4:	00002021 	move	a0,zero
  4f42b8:	8fbc0018 	lw	gp,24(sp)
  4f42bc:	1000ff90 	b	4f4100 <monitor8231Task@@Base+0x68>
  4f42c0:	00000000 	nop

004f42c4 <adMiscGPIOGet@@Base>:
  4f42c4:	3c1c00a3 	lui	gp,0xa3
  4f42c8:	279cd64c 	addiu	gp,gp,-10676
  4f42cc:	0399e021 	addu	gp,gp,t9
  4f42d0:	27bdffe0 	addiu	sp,sp,-32
  4f42d4:	afbf001c 	sw	ra,28(sp)
  4f42d8:	afbc0010 	sw	gp,16(sp)
  4f42dc:	8f99db7c 	lw	t9,-9348(gp)
  4f42e0:	308400ff 	andi	a0,a0,0xff
  4f42e4:	30a500ff 	andi	a1,a1,0xff
  4f42e8:	00042400 	sll	a0,a0,0x10
  4f42ec:	00a42025 	or	a0,a1,a0
  4f42f0:	0320f809 	jalr	t9
  4f42f4:	00c02821 	move	a1,a2
  4f42f8:	8fbc0010 	lw	gp,16(sp)
  4f42fc:	8fbf001c 	lw	ra,28(sp)
  4f4300:	00001021 	move	v0,zero
  4f4304:	03e00008 	jr	ra
  4f4308:	27bd0020 	addiu	sp,sp,32

004f430c <adGpioCommonGet@@Base>:
  4f430c:	3c1c00a3 	lui	gp,0xa3
  4f4310:	279cd604 	addiu	gp,gp,-10748
  4f4314:	0399e021 	addu	gp,gp,t9
  4f4318:	27bdffb8 	addiu	sp,sp,-72
  4f431c:	afbf0044 	sw	ra,68(sp)
  4f4320:	afb30040 	sw	s3,64(sp)
  4f4324:	afb2003c 	sw	s2,60(sp)
  4f4328:	afb10038 	sw	s1,56(sp)
  4f432c:	afb00034 	sw	s0,52(sp)
  4f4330:	afbc0018 	sw	gp,24(sp)
  4f4334:	8f82d0f4 	lw	v0,-12044(gp)
  4f4338:	00a09821 	move	s3,a1
  4f433c:	309200ff 	andi	s2,a0,0xff
  4f4340:	8c430000 	lw	v1,0(v0)
  4f4344:	00000000 	nop
  4f4348:	10600051 	beqz	v1,4f4490 <adGpioCommonGet@@Base+0x184>
  4f434c:	24020001 	li	v0,1
  4f4350:	26420008 	addiu	v0,s2,8
  4f4354:	000210c0 	sll	v0,v0,0x3
  4f4358:	00621021 	addu	v0,v1,v0
  4f435c:	afa00020 	sw	zero,32(sp)
  4f4360:	afa00024 	sw	zero,36(sp)
  4f4364:	afa00028 	sw	zero,40(sp)
  4f4368:	90430003 	lbu	v1,3(v0)
  4f436c:	90500004 	lbu	s0,4(v0)
  4f4370:	90510005 	lbu	s1,5(v0)
  4f4374:	24020002 	li	v0,2
  4f4378:	1062000b 	beq	v1,v0,4f43a8 <adGpioCommonGet@@Base+0x9c>
  4f437c:	24020003 	li	v0,3
  4f4380:	10620012 	beq	v1,v0,4f43cc <adGpioCommonGet@@Base+0xc0>
  4f4384:	24020001 	li	v0,1
  4f4388:	14620032 	bne	v1,v0,4f4454 <adGpioCommonGet@@Base+0x148>
  4f438c:	00102400 	sll	a0,s0,0x10
  4f4390:	8f99db7c 	lw	t9,-9348(gp)
  4f4394:	02242025 	or	a0,s1,a0
  4f4398:	0320f809 	jalr	t9
  4f439c:	27a50020 	addiu	a1,sp,32
  4f43a0:	10000007 	b	4f43c0 <adGpioCommonGet@@Base+0xb4>
  4f43a4:	00000000 	nop
  4f43a8:	8f99da5c 	lw	t9,-9636(gp)
  4f43ac:	02002821 	move	a1,s0
  4f43b0:	02203021 	move	a2,s1
  4f43b4:	00002021 	move	a0,zero
  4f43b8:	0320f809 	jalr	t9
  4f43bc:	27a70020 	addiu	a3,sp,32
  4f43c0:	8fbc0018 	lw	gp,24(sp)
  4f43c4:	10000023 	b	4f4454 <adGpioCommonGet@@Base+0x148>
  4f43c8:	00000000 	nop
  4f43cc:	8f998aac 	lw	t9,-30036(gp)
  4f43d0:	00002021 	move	a0,zero
  4f43d4:	02002821 	move	a1,s0
  4f43d8:	02203021 	move	a2,s1
  4f43dc:	0320f809 	jalr	t9
  4f43e0:	27a70024 	addiu	a3,sp,36
  4f43e4:	8fa20024 	lw	v0,36(sp)
  4f43e8:	8fbc0018 	lw	gp,24(sp)
  4f43ec:	14400008 	bnez	v0,4f4410 <adGpioCommonGet@@Base+0x104>
  4f43f0:	00002021 	move	a0,zero
  4f43f4:	8f99cd28 	lw	t9,-13016(gp)
  4f43f8:	02002821 	move	a1,s0
  4f43fc:	02203021 	move	a2,s1
  4f4400:	0320f809 	jalr	t9
  4f4404:	24070001 	li	a3,1
  4f4408:	8fbc0018 	lw	gp,24(sp)
  4f440c:	00000000 	nop
  4f4410:	8f998978 	lw	t9,-30344(gp)
  4f4414:	27a20028 	addiu	v0,sp,40
  4f4418:	afa20010 	sw	v0,16(sp)
  4f441c:	02002821 	move	a1,s0
  4f4420:	02203021 	move	a2,s1
  4f4424:	00002021 	move	a0,zero
  4f4428:	0320f809 	jalr	t9
  4f442c:	00003821 	move	a3,zero
  4f4430:	8fa30028 	lw	v1,40(sp)
  4f4434:	8fbc0018 	lw	gp,24(sp)
  4f4438:	14600003 	bnez	v1,4f4448 <adGpioCommonGet@@Base+0x13c>
  4f443c:	24020007 	li	v0,7
  4f4440:	10000004 	b	4f4454 <adGpioCommonGet@@Base+0x148>
  4f4444:	afa00020 	sw	zero,32(sp)
  4f4448:	14620002 	bne	v1,v0,4f4454 <adGpioCommonGet@@Base+0x148>
  4f444c:	24020001 	li	v0,1
  4f4450:	afa20020 	sw	v0,32(sp)
  4f4454:	8f82d0f4 	lw	v0,-12044(gp)
  4f4458:	26430008 	addiu	v1,s2,8
  4f445c:	000318c0 	sll	v1,v1,0x3
  4f4460:	8c420000 	lw	v0,0(v0)
  4f4464:	00000000 	nop
  4f4468:	00431021 	addu	v0,v0,v1
  4f446c:	90430009 	lbu	v1,9(v0)
  4f4470:	8fa20020 	lw	v0,32(sp)
  4f4474:	00000000 	nop
  4f4478:	14430003 	bne	v0,v1,4f4488 <adGpioCommonGet@@Base+0x17c>
  4f447c:	24020001 	li	v0,1
  4f4480:	10000002 	b	4f448c <adGpioCommonGet@@Base+0x180>
  4f4484:	ae600000 	sw	zero,0(s3)
  4f4488:	ae620000 	sw	v0,0(s3)
  4f448c:	00001021 	move	v0,zero
  4f4490:	8fbf0044 	lw	ra,68(sp)
  4f4494:	8fb30040 	lw	s3,64(sp)
  4f4498:	8fb2003c 	lw	s2,60(sp)
  4f449c:	8fb10038 	lw	s1,56(sp)
  4f44a0:	8fb00034 	lw	s0,52(sp)
  4f44a4:	03e00008 	jr	ra
  4f44a8:	27bd0048 	addiu	sp,sp,72

004f44ac <adPoeGetFanStatus@@Base>:
  4f44ac:	3c1c00a3 	lui	gp,0xa3
  4f44b0:	279cd464 	addiu	gp,gp,-11164
  4f44b4:	0399e021 	addu	gp,gp,t9
  4f44b8:	27bdffd8 	addiu	sp,sp,-40
  4f44bc:	afbf0024 	sw	ra,36(sp)
  4f44c0:	afbc0010 	sw	gp,16(sp)
  4f44c4:	8f82d0f4 	lw	v0,-12044(gp)
  4f44c8:	00000000 	nop
  4f44cc:	8c420000 	lw	v0,0(v0)
  4f44d0:	00000000 	nop
  4f44d4:	90440248 	lbu	a0,584(v0)
  4f44d8:	00000000 	nop
  4f44dc:	1080000b 	beqz	a0,4f450c <adPoeGetFanStatus@@Base+0x60>
  4f44e0:	24030002 	li	v1,2
  4f44e4:	8f998834 	lw	t9,-30668(gp)
  4f44e8:	afa00018 	sw	zero,24(sp)
  4f44ec:	0320f809 	jalr	t9
  4f44f0:	27a50018 	addiu	a1,sp,24
  4f44f4:	8fbc0010 	lw	gp,16(sp)
  4f44f8:	04400004 	bltz	v0,4f450c <adPoeGetFanStatus@@Base+0x60>
  4f44fc:	00001821 	move	v1,zero
  4f4500:	8fa20018 	lw	v0,24(sp)
  4f4504:	00000000 	nop
  4f4508:	2c430001 	sltiu	v1,v0,1
  4f450c:	8fbf0024 	lw	ra,36(sp)
  4f4510:	00601021 	move	v0,v1
  4f4514:	03e00008 	jr	ra
  4f4518:	27bd0028 	addiu	sp,sp,40

004f451c <adSFPLinkStatusGet@@Base>:
  4f451c:	3c1c00a3 	lui	gp,0xa3
  4f4520:	279cd3f4 	addiu	gp,gp,-11276
  4f4524:	0399e021 	addu	gp,gp,t9
  4f4528:	27bdffd8 	addiu	sp,sp,-40
  4f452c:	afbf0024 	sw	ra,36(sp)
  4f4530:	afbc0010 	sw	gp,16(sp)
  4f4534:	8f82d0f4 	lw	v0,-12044(gp)
  4f4538:	00042400 	sll	a0,a0,0x10
  4f453c:	00042403 	sra	a0,a0,0x10
  4f4540:	8c460000 	lw	a2,0(v0)
  4f4544:	00002821 	move	a1,zero
  4f4548:	90c702c0 	lbu	a3,704(a2)
  4f454c:	10000012 	b	4f4598 <adSFPLinkStatusGet@@Base+0x7c>
  4f4550:	00c01821 	move	v1,a2
  4f4554:	906202c1 	lbu	v0,705(v1)
  4f4558:	00000000 	nop
  4f455c:	1482000d 	bne	a0,v0,4f4594 <adSFPLinkStatusGet@@Base+0x78>
  4f4560:	24630004 	addiu	v1,v1,4
  4f4564:	24a200b0 	addiu	v0,a1,176
  4f4568:	00021080 	sll	v0,v0,0x2
  4f456c:	00c21021 	addu	v0,a2,v0
  4f4570:	8f998834 	lw	t9,-30668(gp)
  4f4574:	90440003 	lbu	a0,3(v0)
  4f4578:	27a50018 	addiu	a1,sp,24
  4f457c:	0320f809 	jalr	t9
  4f4580:	afa00018 	sw	zero,24(sp)
  4f4584:	8fa20018 	lw	v0,24(sp)
  4f4588:	8fbc0010 	lw	gp,16(sp)
  4f458c:	10000005 	b	4f45a4 <adSFPLinkStatusGet@@Base+0x88>
  4f4590:	38420001 	xori	v0,v0,0x1
  4f4594:	24a50001 	addiu	a1,a1,1
  4f4598:	00a7102a 	slt	v0,a1,a3
  4f459c:	1440ffed 	bnez	v0,4f4554 <adSFPLinkStatusGet@@Base+0x38>
  4f45a0:	00001021 	move	v0,zero
  4f45a4:	8fbf0024 	lw	ra,36(sp)
  4f45a8:	00000000 	nop
  4f45ac:	03e00008 	jr	ra
  4f45b0:	27bd0028 	addiu	sp,sp,40

004f45b4 <adPortComboConvertTask@@Base>:
  4f45b4:	3c1c00a3 	lui	gp,0xa3
  4f45b8:	279cd35c 	addiu	gp,gp,-11428
  4f45bc:	0399e021 	addu	gp,gp,t9
  4f45c0:	27bdfda0 	addiu	sp,sp,-608
  4f45c4:	afbf025c 	sw	ra,604(sp)
  4f45c8:	afbe0258 	sw	s8,600(sp)
  4f45cc:	afb70254 	sw	s7,596(sp)
  4f45d0:	afb60250 	sw	s6,592(sp)
  4f45d4:	afb5024c 	sw	s5,588(sp)
  4f45d8:	afb40248 	sw	s4,584(sp)
  4f45dc:	afb30244 	sw	s3,580(sp)
  4f45e0:	afb20240 	sw	s2,576(sp)
  4f45e4:	afb1023c 	sw	s1,572(sp)
  4f45e8:	afb00238 	sw	s0,568(sp)
  4f45ec:	afbc0010 	sw	gp,16(sp)
  4f45f0:	8f99aa5c 	lw	t9,-21924(gp)
  4f45f4:	afa00018 	sw	zero,24(sp)
  4f45f8:	0320f809 	jalr	t9
  4f45fc:	27b70018 	addiu	s7,sp,24
  4f4600:	8fbc0010 	lw	gp,16(sp)
  4f4604:	0040a021 	move	s4,v0
  4f4608:	27a2001c 	addiu	v0,sp,28
  4f460c:	afa20230 	sw	v0,560(sp)
  4f4610:	8f828030 	lw	v0,-32720(gp)
  4f4614:	27b50020 	addiu	s5,sp,32
  4f4618:	2416ffff 	li	s6,-1
  4f461c:	245eca64 	addiu	s8,v0,-13724
  4f4620:	8f99c8f4 	lw	t9,-14092(gp)
  4f4624:	24040001 	li	a0,1
  4f4628:	0320f809 	jalr	t9
  4f462c:	03c09821 	move	s3,s8
  4f4630:	8fbc0010 	lw	gp,16(sp)
  4f4634:	1000006c 	b	4f47e8 <adPortComboConvertTask@@Base+0x234>
  4f4638:	02809021 	move	s2,s4
  4f463c:	1a400011 	blez	s2,4f4684 <adPortComboConvertTask@@Base+0xd0>
  4f4640:	00008821 	move	s1,zero
  4f4644:	8f9996d8 	lw	t9,-26920(gp)
  4f4648:	00000000 	nop
  4f464c:	0320f809 	jalr	t9
  4f4650:	3251ffff 	andi	s1,s2,0xffff
  4f4654:	8fbc0010 	lw	gp,16(sp)
  4f4658:	00000000 	nop
  4f465c:	8f99f3c0 	lw	t9,-3136(gp)
  4f4660:	00000000 	nop
  4f4664:	0320f809 	jalr	t9
  4f4668:	00408021 	move	s0,v0
  4f466c:	00501021 	addu	v0,v0,s0
  4f4670:	0052102a 	slt	v0,v0,s2
  4f4674:	8fbc0010 	lw	gp,16(sp)
  4f4678:	10400002 	beqz	v0,4f4684 <adPortComboConvertTask@@Base+0xd0>
  4f467c:	00000000 	nop
  4f4680:	00008821 	move	s1,zero
  4f4684:	8f998548 	lw	t9,-31416(gp)
  4f4688:	8fa60230 	lw	a2,560(sp)
  4f468c:	02202021 	move	a0,s1
  4f4690:	0320f809 	jalr	t9
  4f4694:	02e02821 	move	a1,s7
  4f4698:	8fbc0010 	lw	gp,16(sp)
  4f469c:	14400050 	bnez	v0,4f47e0 <adPortComboConvertTask@@Base+0x22c>
  4f46a0:	02202021 	move	a0,s1
  4f46a4:	8f99b504 	lw	t9,-19196(gp)
  4f46a8:	00000000 	nop
  4f46ac:	0320f809 	jalr	t9
  4f46b0:	02a02821 	move	a1,s5
  4f46b4:	93a20025 	lbu	v0,37(sp)
  4f46b8:	8fbc0010 	lw	gp,16(sp)
  4f46bc:	10400048 	beqz	v0,4f47e0 <adPortComboConvertTask@@Base+0x22c>
  4f46c0:	00000000 	nop
  4f46c4:	8f99cae4 	lw	t9,-13596(gp)
  4f46c8:	00000000 	nop
  4f46cc:	0320f809 	jalr	t9
  4f46d0:	02202021 	move	a0,s1
  4f46d4:	8fbc0010 	lw	gp,16(sp)
  4f46d8:	10560041 	beq	v0,s6,4f47e0 <adPortComboConvertTask@@Base+0x22c>
  4f46dc:	00408021 	move	s0,v0
  4f46e0:	8e620000 	lw	v0,0(s3)
  4f46e4:	00000000 	nop
  4f46e8:	1202003d 	beq	s0,v0,4f47e0 <adPortComboConvertTask@@Base+0x22c>
  4f46ec:	24020001 	li	v0,1
  4f46f0:	16020012 	bne	s0,v0,4f473c <adPortComboConvertTask@@Base+0x188>
  4f46f4:	02202021 	move	a0,s1
  4f46f8:	8f99eae8 	lw	t9,-5400(gp)
  4f46fc:	00000000 	nop
  4f4700:	0320f809 	jalr	t9
  4f4704:	00002821 	move	a1,zero
  4f4708:	8fbc0010 	lw	gp,16(sp)
  4f470c:	8fa40018 	lw	a0,24(sp)
  4f4710:	8fa5001c 	lw	a1,28(sp)
  4f4714:	8f99a480 	lw	t9,-23424(gp)
  4f4718:	00000000 	nop
  4f471c:	0320f809 	jalr	t9
  4f4720:	24060001 	li	a2,1
  4f4724:	8fbc0010 	lw	gp,16(sp)
  4f4728:	1440002d 	bnez	v0,4f47e0 <adPortComboConvertTask@@Base+0x22c>
  4f472c:	02202021 	move	a0,s1
  4f4730:	8f99adb4 	lw	t9,-21068(gp)
  4f4734:	10000026 	b	4f47d0 <adPortComboConvertTask@@Base+0x21c>
  4f4738:	02a02821 	move	a1,s5
  4f473c:	16000027 	bnez	s0,4f47dc <adPortComboConvertTask@@Base+0x228>
  4f4740:	00000000 	nop
  4f4744:	8f99eae8 	lw	t9,-5400(gp)
  4f4748:	00000000 	nop
  4f474c:	0320f809 	jalr	t9
  4f4750:	00002821 	move	a1,zero
  4f4754:	8fbc0010 	lw	gp,16(sp)
  4f4758:	8fa40018 	lw	a0,24(sp)
  4f475c:	8fa5001c 	lw	a1,28(sp)
  4f4760:	8f99a480 	lw	t9,-23424(gp)
  4f4764:	00000000 	nop
  4f4768:	0320f809 	jalr	t9
  4f476c:	00003021 	move	a2,zero
  4f4770:	8fbc0010 	lw	gp,16(sp)
  4f4774:	1440001a 	bnez	v0,4f47e0 <adPortComboConvertTask@@Base+0x22c>
  4f4778:	02202021 	move	a0,s1
  4f477c:	8f99e800 	lw	t9,-6144(gp)
  4f4780:	00000000 	nop
  4f4784:	0320f809 	jalr	t9
  4f4788:	24050abf 	li	a1,2751
  4f478c:	8fbc0010 	lw	gp,16(sp)
  4f4790:	02202021 	move	a0,s1
  4f4794:	8f99aa54 	lw	t9,-21932(gp)
  4f4798:	00000000 	nop
  4f479c:	0320f809 	jalr	t9
  4f47a0:	24050001 	li	a1,1
  4f47a4:	8fbc0010 	lw	gp,16(sp)
  4f47a8:	93a50029 	lbu	a1,41(sp)
  4f47ac:	8f99b3b8 	lw	t9,-19528(gp)
  4f47b0:	00000000 	nop
  4f47b4:	0320f809 	jalr	t9
  4f47b8:	02202021 	move	a0,s1
  4f47bc:	8fbc0010 	lw	gp,16(sp)
  4f47c0:	02202021 	move	a0,s1
  4f47c4:	24050001 	li	a1,1
  4f47c8:	8f99eae8 	lw	t9,-5400(gp)
  4f47cc:	00000000 	nop
  4f47d0:	0320f809 	jalr	t9
  4f47d4:	00000000 	nop
  4f47d8:	8fbc0010 	lw	gp,16(sp)
  4f47dc:	ae700000 	sw	s0,0(s3)
  4f47e0:	26520001 	addiu	s2,s2,1
  4f47e4:	26730004 	addiu	s3,s3,4
  4f47e8:	8f99a064 	lw	t9,-24476(gp)
  4f47ec:	00000000 	nop
  4f47f0:	0320f809 	jalr	t9
  4f47f4:	00000000 	nop
  4f47f8:	00541021 	addu	v0,v0,s4
  4f47fc:	0242102b 	sltu	v0,s2,v0
  4f4800:	8fbc0010 	lw	gp,16(sp)
  4f4804:	1040ff86 	beqz	v0,4f4620 <adPortComboConvertTask@@Base+0x6c>
  4f4808:	00000000 	nop
  4f480c:	1000ff8b 	b	4f463c <adPortComboConvertTask@@Base+0x88>
  4f4810:	00000000 	nop

004f4814 <adMiscGPIOSet@@Base>:
  4f4814:	3c1c00a3 	lui	gp,0xa3
  4f4818:	279cd0fc 	addiu	gp,gp,-12036
  4f481c:	0399e021 	addu	gp,gp,t9
  4f4820:	27bdffe0 	addiu	sp,sp,-32
  4f4824:	afbf001c 	sw	ra,28(sp)
  4f4828:	afbc0010 	sw	gp,16(sp)
  4f482c:	8f99fd1c 	lw	t9,-740(gp)
  4f4830:	308400ff 	andi	a0,a0,0xff
  4f4834:	30c600ff 	andi	a2,a2,0xff
  4f4838:	00042400 	sll	a0,a0,0x10
  4f483c:	00c42025 	or	a0,a2,a0
  4f4840:	0320f809 	jalr	t9
  4f4844:	00e02821 	move	a1,a3
  4f4848:	8fbc0010 	lw	gp,16(sp)
  4f484c:	8fbf001c 	lw	ra,28(sp)
  4f4850:	00001021 	move	v0,zero
  4f4854:	03e00008 	jr	ra
  4f4858:	27bd0020 	addiu	sp,sp,32

004f485c <adGpioCommonSet@@Base>:
  4f485c:	3c1c00a3 	lui	gp,0xa3
  4f4860:	279cd0b4 	addiu	gp,gp,-12108
  4f4864:	0399e021 	addu	gp,gp,t9
  4f4868:	27bdffc8 	addiu	sp,sp,-56
  4f486c:	afbf0034 	sw	ra,52(sp)
  4f4870:	afb20030 	sw	s2,48(sp)
  4f4874:	afb1002c 	sw	s1,44(sp)
  4f4878:	afb00028 	sw	s0,40(sp)
  4f487c:	afbc0018 	sw	gp,24(sp)
  4f4880:	8f82d0f4 	lw	v0,-12044(gp)
  4f4884:	308600ff 	andi	a2,a0,0xff
  4f4888:	8c440000 	lw	a0,0(v0)
  4f488c:	00000000 	nop
  4f4890:	10800062 	beqz	a0,4f4a1c <adGpioCommonSet@@Base+0x1c0>
  4f4894:	24030001 	li	v1,1
  4f4898:	24c20008 	addiu	v0,a2,8
  4f489c:	000210c0 	sll	v0,v0,0x3
  4f48a0:	00821021 	addu	v0,a0,v0
  4f48a4:	90440003 	lbu	a0,3(v0)
  4f48a8:	90500004 	lbu	s0,4(v0)
  4f48ac:	90510005 	lbu	s1,5(v0)
  4f48b0:	14a00004 	bnez	a1,4f48c4 <adGpioCommonSet@@Base+0x68>
  4f48b4:	00000000 	nop
  4f48b8:	90520009 	lbu	s2,9(v0)
  4f48bc:	10000003 	b	4f48cc <adGpioCommonSet@@Base+0x70>
  4f48c0:	2c820005 	sltiu	v0,a0,5
  4f48c4:	90520008 	lbu	s2,8(v0)
  4f48c8:	2c820005 	sltiu	v0,a0,5
  4f48cc:	afa00020 	sw	zero,32(sp)
  4f48d0:	10400052 	beqz	v0,4f4a1c <adGpioCommonSet@@Base+0x1c0>
  4f48d4:	2403ffff 	li	v1,-1
  4f48d8:	8f838028 	lw	v1,-32728(gp)
  4f48dc:	00041080 	sll	v0,a0,0x2
  4f48e0:	246392e4 	addiu	v1,v1,-27932
  4f48e4:	00621821 	addu	v1,v1,v0
  4f48e8:	8c620000 	lw	v0,0(v1)
  4f48ec:	00000000 	nop
  4f48f0:	005c1021 	addu	v0,v0,gp
  4f48f4:	00400008 	jr	v0
  4f48f8:	00000000 	nop
  4f48fc:	8f99fd1c 	lw	t9,-740(gp)
  4f4900:	00102400 	sll	a0,s0,0x10
  4f4904:	02242025 	or	a0,s1,a0
  4f4908:	0320f809 	jalr	t9
  4f490c:	02402821 	move	a1,s2
  4f4910:	10000040 	b	4f4a14 <adGpioCommonSet@@Base+0x1b8>
  4f4914:	00000000 	nop
  4f4918:	8f99c390 	lw	t9,-15472(gp)
  4f491c:	02002821 	move	a1,s0
  4f4920:	02203021 	move	a2,s1
  4f4924:	02403821 	move	a3,s2
  4f4928:	0320f809 	jalr	t9
  4f492c:	00002021 	move	a0,zero
  4f4930:	10000038 	b	4f4a14 <adGpioCommonSet@@Base+0x1b8>
  4f4934:	00000000 	nop
  4f4938:	8f998aac 	lw	t9,-30036(gp)
  4f493c:	00002021 	move	a0,zero
  4f4940:	02002821 	move	a1,s0
  4f4944:	02203021 	move	a2,s1
  4f4948:	0320f809 	jalr	t9
  4f494c:	27a70020 	addiu	a3,sp,32
  4f4950:	8fa20020 	lw	v0,32(sp)
  4f4954:	8fbc0018 	lw	gp,24(sp)
  4f4958:	14400007 	bnez	v0,4f4978 <adGpioCommonSet@@Base+0x11c>
  4f495c:	00002021 	move	a0,zero
  4f4960:	8f99cd28 	lw	t9,-13016(gp)
  4f4964:	02002821 	move	a1,s0
  4f4968:	02203021 	move	a2,s1
  4f496c:	0320f809 	jalr	t9
  4f4970:	24070001 	li	a3,1
  4f4974:	8fbc0018 	lw	gp,24(sp)
  4f4978:	16400004 	bnez	s2,4f498c <adGpioCommonSet@@Base+0x130>
  4f497c:	24020001 	li	v0,1
  4f4980:	8f999988 	lw	t9,-26232(gp)
  4f4984:	10000006 	b	4f49a0 <adGpioCommonSet@@Base+0x144>
  4f4988:	afa00010 	sw	zero,16(sp)
  4f498c:	8f999988 	lw	t9,-26232(gp)
  4f4990:	12420002 	beq	s2,v0,4f499c <adGpioCommonSet@@Base+0x140>
  4f4994:	24020007 	li	v0,7
  4f4998:	24020002 	li	v0,2
  4f499c:	afa20010 	sw	v0,16(sp)
  4f49a0:	02002821 	move	a1,s0
  4f49a4:	02203021 	move	a2,s1
  4f49a8:	00002021 	move	a0,zero
  4f49ac:	0320f809 	jalr	t9
  4f49b0:	00003821 	move	a3,zero
  4f49b4:	10000017 	b	4f4a14 <adGpioCommonSet@@Base+0x1b8>
  4f49b8:	00000000 	nop
  4f49bc:	8f99f298 	lw	t9,-3432(gp)
  4f49c0:	1640000a 	bnez	s2,4f49ec <adGpioCommonSet@@Base+0x190>
  4f49c4:	02002021 	move	a0,s0
  4f49c8:	02202821 	move	a1,s1
  4f49cc:	0320f809 	jalr	t9
  4f49d0:	24060001 	li	a2,1
  4f49d4:	8fbc0018 	lw	gp,24(sp)
  4f49d8:	02002021 	move	a0,s0
  4f49dc:	02202821 	move	a1,s1
  4f49e0:	8f99adc8 	lw	t9,-21048(gp)
  4f49e4:	10000009 	b	4f4a0c <adGpioCommonSet@@Base+0x1b0>
  4f49e8:	00003021 	move	a2,zero
  4f49ec:	02202821 	move	a1,s1
  4f49f0:	0320f809 	jalr	t9
  4f49f4:	00003021 	move	a2,zero
  4f49f8:	8fbc0018 	lw	gp,24(sp)
  4f49fc:	02002021 	move	a0,s0
  4f4a00:	02202821 	move	a1,s1
  4f4a04:	8f99adc8 	lw	t9,-21048(gp)
  4f4a08:	02403021 	move	a2,s2
  4f4a0c:	0320f809 	jalr	t9
  4f4a10:	00000000 	nop
  4f4a14:	8fbc0018 	lw	gp,24(sp)
  4f4a18:	00001821 	move	v1,zero
  4f4a1c:	8fbf0034 	lw	ra,52(sp)
  4f4a20:	8fb20030 	lw	s2,48(sp)
  4f4a24:	8fb1002c 	lw	s1,44(sp)
  4f4a28:	8fb00028 	lw	s0,40(sp)
  4f4a2c:	00601021 	move	v0,v1
  4f4a30:	03e00008 	jr	ra
  4f4a34:	27bd0038 	addiu	sp,sp,56

004f4a38 <adLedCtrl@@Base>:
  4f4a38:	3c1c00a3 	lui	gp,0xa3
  4f4a3c:	279cced8 	addiu	gp,gp,-12584
  4f4a40:	0399e021 	addu	gp,gp,t9
  4f4a44:	27bdff90 	addiu	sp,sp,-112
  4f4a48:	afbf006c 	sw	ra,108(sp)
  4f4a4c:	afb50068 	sw	s5,104(sp)
  4f4a50:	afb40064 	sw	s4,100(sp)
  4f4a54:	afb30060 	sw	s3,96(sp)
  4f4a58:	afb2005c 	sw	s2,92(sp)
  4f4a5c:	afb10058 	sw	s1,88(sp)
  4f4a60:	afb00054 	sw	s0,84(sp)
  4f4a64:	afbc0018 	sw	gp,24(sp)
  4f4a68:	8f82d6d0 	lw	v0,-10544(gp)
  4f4a6c:	00809821 	move	s3,a0
  4f4a70:	8c420000 	lw	v0,0(v0)
  4f4a74:	00000000 	nop
  4f4a78:	14400087 	bnez	v0,4f4c98 <adLedCtrl@@Base+0x260>
  4f4a7c:	24030001 	li	v1,1
  4f4a80:	8f91d0f4 	lw	s1,-12044(gp)
  4f4a84:	8f99c400 	lw	t9,-15360(gp)
  4f4a88:	00802821 	move	a1,a0
  4f4a8c:	8e220000 	lw	v0,0(s1)
  4f4a90:	00000000 	nop
  4f4a94:	90440250 	lbu	a0,592(v0)
  4f4a98:	0320f809 	jalr	t9
  4f4a9c:	27b00020 	addiu	s0,sp,32
  4f4aa0:	8fbc0018 	lw	gp,24(sp)
  4f4aa4:	afa00020 	sw	zero,32(sp)
  4f4aa8:	afa00024 	sw	zero,36(sp)
  4f4aac:	8f999c14 	lw	t9,-25580(gp)
  4f4ab0:	12600030 	beqz	s3,4f4b74 <adLedCtrl@@Base+0x13c>
  4f4ab4:	afa00028 	sw	zero,40(sp)
  4f4ab8:	0320f809 	jalr	t9
  4f4abc:	0200a821 	move	s5,s0
  4f4ac0:	8fbc0018 	lw	gp,24(sp)
  4f4ac4:	02002821 	move	a1,s0
  4f4ac8:	8f99f1d8 	lw	t9,-3624(gp)
  4f4acc:	8f84f72c 	lw	a0,-2260(gp)
  4f4ad0:	2414ffff 	li	s4,-1
  4f4ad4:	0320f809 	jalr	t9
  4f4ad8:	27b20024 	addiu	s2,sp,36
  4f4adc:	8fbc0018 	lw	gp,24(sp)
  4f4ae0:	1000001d 	b	4f4b58 <adLedCtrl@@Base+0x120>
  4f4ae4:	27b00028 	addiu	s0,sp,40
  4f4ae8:	8fa40020 	lw	a0,32(sp)
  4f4aec:	0320f809 	jalr	t9
  4f4af0:	00000000 	nop
  4f4af4:	8fbc0018 	lw	gp,24(sp)
  4f4af8:	00002021 	move	a0,zero
  4f4afc:	8f99cd28 	lw	t9,-13016(gp)
  4f4b00:	1440005a 	bnez	v0,4f4c6c <adLedCtrl@@Base+0x234>
  4f4b04:	00003821 	move	a3,zero
  4f4b08:	8e220000 	lw	v0,0(s1)
  4f4b0c:	8fa50028 	lw	a1,40(sp)
  4f4b10:	90460253 	lbu	a2,595(v0)
  4f4b14:	0320f809 	jalr	t9
  4f4b18:	00000000 	nop
  4f4b1c:	8fbc0018 	lw	gp,24(sp)
  4f4b20:	8e220000 	lw	v0,0(s1)
  4f4b24:	8fa50028 	lw	a1,40(sp)
  4f4b28:	8f99cd28 	lw	t9,-13016(gp)
  4f4b2c:	90460254 	lbu	a2,596(v0)
  4f4b30:	00002021 	move	a0,zero
  4f4b34:	0320f809 	jalr	t9
  4f4b38:	00003821 	move	a3,zero
  4f4b3c:	8fbc0018 	lw	gp,24(sp)
  4f4b40:	00000000 	nop
  4f4b44:	8f99e764 	lw	t9,-6300(gp)
  4f4b48:	8f84f72c 	lw	a0,-2260(gp)
  4f4b4c:	0320f809 	jalr	t9
  4f4b50:	02a02821 	move	a1,s5
  4f4b54:	8fbc0018 	lw	gp,24(sp)
  4f4b58:	87a20020 	lh	v0,32(sp)
  4f4b5c:	8f998548 	lw	t9,-31416(gp)
  4f4b60:	02402821 	move	a1,s2
  4f4b64:	1454ffe0 	bne	v0,s4,4f4ae8 <adLedCtrl@@Base+0xb0>
  4f4b68:	02003021 	move	a2,s0
  4f4b6c:	1000003f 	b	4f4c6c <adLedCtrl@@Base+0x234>
  4f4b70:	00000000 	nop
  4f4b74:	0320f809 	jalr	t9
  4f4b78:	0200a821 	move	s5,s0
  4f4b7c:	8fbc0018 	lw	gp,24(sp)
  4f4b80:	02002821 	move	a1,s0
  4f4b84:	8f99f1d8 	lw	t9,-3624(gp)
  4f4b88:	8f84f72c 	lw	a0,-2260(gp)
  4f4b8c:	2414ffff 	li	s4,-1
  4f4b90:	0320f809 	jalr	t9
  4f4b94:	27b20024 	addiu	s2,sp,36
  4f4b98:	8fbc0018 	lw	gp,24(sp)
  4f4b9c:	1000002e 	b	4f4c58 <adLedCtrl@@Base+0x220>
  4f4ba0:	27b00028 	addiu	s0,sp,40
  4f4ba4:	8fa40020 	lw	a0,32(sp)
  4f4ba8:	0320f809 	jalr	t9
  4f4bac:	00000000 	nop
  4f4bb0:	8fbc0018 	lw	gp,24(sp)
  4f4bb4:	00002021 	move	a0,zero
  4f4bb8:	8f999988 	lw	t9,-26232(gp)
  4f4bbc:	1440002b 	bnez	v0,4f4c6c <adLedCtrl@@Base+0x234>
  4f4bc0:	00003821 	move	a3,zero
  4f4bc4:	8e220000 	lw	v0,0(s1)
  4f4bc8:	8fa50028 	lw	a1,40(sp)
  4f4bcc:	90460253 	lbu	a2,595(v0)
  4f4bd0:	0320f809 	jalr	t9
  4f4bd4:	afa00010 	sw	zero,16(sp)
  4f4bd8:	8fbc0018 	lw	gp,24(sp)
  4f4bdc:	8e220000 	lw	v0,0(s1)
  4f4be0:	8fa50028 	lw	a1,40(sp)
  4f4be4:	8f99cd28 	lw	t9,-13016(gp)
  4f4be8:	90460253 	lbu	a2,595(v0)
  4f4bec:	00002021 	move	a0,zero
  4f4bf0:	0320f809 	jalr	t9
  4f4bf4:	24070001 	li	a3,1
  4f4bf8:	8fbc0018 	lw	gp,24(sp)
  4f4bfc:	8e220000 	lw	v0,0(s1)
  4f4c00:	8fa50028 	lw	a1,40(sp)
  4f4c04:	8f999988 	lw	t9,-26232(gp)
  4f4c08:	90460254 	lbu	a2,596(v0)
  4f4c0c:	00002021 	move	a0,zero
  4f4c10:	00003821 	move	a3,zero
  4f4c14:	0320f809 	jalr	t9
  4f4c18:	afa00010 	sw	zero,16(sp)
  4f4c1c:	8fbc0018 	lw	gp,24(sp)
  4f4c20:	8e220000 	lw	v0,0(s1)
  4f4c24:	8fa50028 	lw	a1,40(sp)
  4f4c28:	8f99cd28 	lw	t9,-13016(gp)
  4f4c2c:	90460254 	lbu	a2,596(v0)
  4f4c30:	00002021 	move	a0,zero
  4f4c34:	0320f809 	jalr	t9
  4f4c38:	24070001 	li	a3,1
  4f4c3c:	8fbc0018 	lw	gp,24(sp)
  4f4c40:	00000000 	nop
  4f4c44:	8f99e764 	lw	t9,-6300(gp)
  4f4c48:	8f84f72c 	lw	a0,-2260(gp)
  4f4c4c:	0320f809 	jalr	t9
  4f4c50:	02a02821 	move	a1,s5
  4f4c54:	8fbc0018 	lw	gp,24(sp)
  4f4c58:	87a20020 	lh	v0,32(sp)
  4f4c5c:	8f998548 	lw	t9,-31416(gp)
  4f4c60:	02402821 	move	a1,s2
  4f4c64:	1454ffcf 	bne	v0,s4,4f4ba4 <adLedCtrl@@Base+0x16c>
  4f4c68:	02003021 	move	a2,s0
  4f4c6c:	8f99b7d8 	lw	t9,-18472(gp)
  4f4c70:	00000000 	nop
  4f4c74:	0320f809 	jalr	t9
  4f4c78:	27a4002c 	addiu	a0,sp,44
  4f4c7c:	8fa2002c 	lw	v0,44(sp)
  4f4c80:	8fbc0018 	lw	gp,24(sp)
  4f4c84:	10400004 	beqz	v0,4f4c98 <adLedCtrl@@Base+0x260>
  4f4c88:	00001821 	move	v1,zero
  4f4c8c:	8f82802c 	lw	v0,-32724(gp)
  4f4c90:	00001821 	move	v1,zero
  4f4c94:	ac53c4e8 	sw	s3,-15128(v0)
  4f4c98:	8fbf006c 	lw	ra,108(sp)
  4f4c9c:	8fb50068 	lw	s5,104(sp)
  4f4ca0:	8fb40064 	lw	s4,100(sp)
  4f4ca4:	8fb30060 	lw	s3,96(sp)
  4f4ca8:	8fb2005c 	lw	s2,92(sp)
  4f4cac:	8fb10058 	lw	s1,88(sp)
  4f4cb0:	8fb00054 	lw	s0,84(sp)
  4f4cb4:	00601021 	move	v0,v1
  4f4cb8:	03e00008 	jr	ra
  4f4cbc:	27bd0070 	addiu	sp,sp,112

004f4cc0 <adLocate@@Base>:
  4f4cc0:	3c1c00a3 	lui	gp,0xa3
  4f4cc4:	279ccc50 	addiu	gp,gp,-13232
  4f4cc8:	0399e021 	addu	gp,gp,t9
  4f4ccc:	27bdffc8 	addiu	sp,sp,-56
  4f4cd0:	afbf0034 	sw	ra,52(sp)
  4f4cd4:	afb10030 	sw	s1,48(sp)
  4f4cd8:	afb0002c 	sw	s0,44(sp)
  4f4cdc:	afbc0018 	sw	gp,24(sp)
  4f4ce0:	308400ff 	andi	a0,a0,0xff
  4f4ce4:	8f83d6d0 	lw	v1,-10544(gp)
  4f4ce8:	10800006 	beqz	a0,4f4d04 <adLocate@@Base+0x44>
  4f4cec:	afa00020 	sw	zero,32(sp)
  4f4cf0:	24020001 	li	v0,1
  4f4cf4:	14a00025 	bnez	a1,4f4d8c <adLocate@@Base+0xcc>
  4f4cf8:	ac620000 	sw	v0,0(v1)
  4f4cfc:	10000026 	b	4f4d98 <adLocate@@Base+0xd8>
  4f4d00:	00000000 	nop
  4f4d04:	8f91802c 	lw	s1,-32724(gp)
  4f4d08:	2410ffff 	li	s0,-1
  4f4d0c:	ac600000 	sw	zero,0(v1)
  4f4d10:	8e24c4e0 	lw	a0,-15136(s1)
  4f4d14:	00000000 	nop
  4f4d18:	10900009 	beq	a0,s0,4f4d40 <adLocate@@Base+0x80>
  4f4d1c:	00000000 	nop
  4f4d20:	8f999c60 	lw	t9,-25504(gp)
  4f4d24:	00000000 	nop
  4f4d28:	0320f809 	jalr	t9
  4f4d2c:	00000000 	nop
  4f4d30:	8fbc0018 	lw	gp,24(sp)
  4f4d34:	14400002 	bnez	v0,4f4d40 <adLocate@@Base+0x80>
  4f4d38:	00000000 	nop
  4f4d3c:	ae30c4e0 	sw	s0,-15136(s1)
  4f4d40:	8f99e4dc 	lw	t9,-6948(gp)
  4f4d44:	00000000 	nop
  4f4d48:	0320f809 	jalr	t9
  4f4d4c:	27a40020 	addiu	a0,sp,32
  4f4d50:	8fbc0018 	lw	gp,24(sp)
  4f4d54:	8fa40020 	lw	a0,32(sp)
  4f4d58:	8f99a9d0 	lw	t9,-22064(gp)
  4f4d5c:	0004202b 	sltu	a0,zero,a0
  4f4d60:	0320f809 	jalr	t9
  4f4d64:	00042040 	sll	a0,a0,0x1
  4f4d68:	8fbc0018 	lw	gp,24(sp)
  4f4d6c:	8fa40020 	lw	a0,32(sp)
  4f4d70:	8f99ccf4 	lw	t9,-13068(gp)
  4f4d74:	00000000 	nop
  4f4d78:	0320f809 	jalr	t9
  4f4d7c:	00000000 	nop
  4f4d80:	8fbc0018 	lw	gp,24(sp)
  4f4d84:	10000014 	b	4f4dd8 <adLocate@@Base+0x118>
  4f4d88:	00000000 	nop
  4f4d8c:	8f82802c 	lw	v0,-32724(gp)
  4f4d90:	00000000 	nop
  4f4d94:	ac45c4e4 	sw	a1,-15132(v0)
  4f4d98:	8f90802c 	lw	s0,-32724(gp)
  4f4d9c:	2402ffff 	li	v0,-1
  4f4da0:	8e03c4e0 	lw	v1,-15136(s0)
  4f4da4:	00000000 	nop
  4f4da8:	1462000b 	bne	v1,v0,4f4dd8 <adLocate@@Base+0x118>
  4f4dac:	24052800 	li	a1,10240
  4f4db0:	8f848028 	lw	a0,-32728(gp)
  4f4db4:	8f878020 	lw	a3,-32736(gp)
  4f4db8:	8f99f698 	lw	t9,-2408(gp)
  4f4dbc:	afa00010 	sw	zero,16(sp)
  4f4dc0:	24840138 	addiu	a0,a0,312
  4f4dc4:	24e74dec 	addiu	a3,a3,19948
  4f4dc8:	0320f809 	jalr	t9
  4f4dcc:	24060032 	li	a2,50
  4f4dd0:	8fbc0018 	lw	gp,24(sp)
  4f4dd4:	ae02c4e0 	sw	v0,-15136(s0)
  4f4dd8:	8fbf0034 	lw	ra,52(sp)
  4f4ddc:	8fb10030 	lw	s1,48(sp)
  4f4de0:	8fb0002c 	lw	s0,44(sp)
  4f4de4:	03e00008 	jr	ra
  4f4de8:	27bd0038 	addiu	sp,sp,56
  4f4dec:	3c1c00a3 	lui	gp,0xa3
  4f4df0:	279ccb24 	addiu	gp,gp,-13532
  4f4df4:	0399e021 	addu	gp,gp,t9
  4f4df8:	27bdffa8 	addiu	sp,sp,-88
  4f4dfc:	afbf0054 	sw	ra,84(sp)
  4f4e00:	afbe0050 	sw	s8,80(sp)
  4f4e04:	afb7004c 	sw	s7,76(sp)
  4f4e08:	afb60048 	sw	s6,72(sp)
  4f4e0c:	afb50044 	sw	s5,68(sp)
  4f4e10:	afb40040 	sw	s4,64(sp)
  4f4e14:	afb3003c 	sw	s3,60(sp)
  4f4e18:	afb20038 	sw	s2,56(sp)
  4f4e1c:	afb10034 	sw	s1,52(sp)
  4f4e20:	afb00030 	sw	s0,48(sp)
  4f4e24:	afbc0018 	sw	gp,24(sp)
  4f4e28:	afa00024 	sw	zero,36(sp)
  4f4e2c:	afa00028 	sw	zero,40(sp)
  4f4e30:	afa0002c 	sw	zero,44(sp)
  4f4e34:	00008821 	move	s1,zero
  4f4e38:	27b30020 	addiu	s3,sp,32
  4f4e3c:	2416ffff 	li	s6,-1
  4f4e40:	27b70024 	addiu	s7,sp,36
  4f4e44:	27be0028 	addiu	s8,sp,40
  4f4e48:	8f90d0f4 	lw	s0,-12044(gp)
  4f4e4c:	24140002 	li	s4,2
  4f4e50:	24150003 	li	s5,3
  4f4e54:	100000eb 	b	4f5204 <adLocate@@Base+0x544>
  4f4e58:	24120007 	li	s2,7
  4f4e5c:	8f999c14 	lw	t9,-25580(gp)
  4f4e60:	00000000 	nop
  4f4e64:	0320f809 	jalr	t9
  4f4e68:	00000000 	nop
  4f4e6c:	8fbc0018 	lw	gp,24(sp)
  4f4e70:	00000000 	nop
  4f4e74:	8f84f72c 	lw	a0,-2260(gp)
  4f4e78:	8f99f1d8 	lw	t9,-3624(gp)
  4f4e7c:	10000082 	b	4f5088 <adLocate@@Base+0x3c8>
  4f4e80:	00000000 	nop
  4f4e84:	8f998548 	lw	t9,-31416(gp)
  4f4e88:	8fa40020 	lw	a0,32(sp)
  4f4e8c:	0320f809 	jalr	t9
  4f4e90:	03c03021 	move	a2,s8
  4f4e94:	8e030000 	lw	v1,0(s0)
  4f4e98:	24040001 	li	a0,1
  4f4e9c:	8fbc0018 	lw	gp,24(sp)
  4f4ea0:	90620252 	lbu	v0,594(v1)
  4f4ea4:	00000000 	nop
  4f4ea8:	10440026 	beq	v0,a0,4f4f44 <adLocate@@Base+0x284>
  4f4eac:	00000000 	nop
  4f4eb0:	10400007 	beqz	v0,4f4ed0 <adLocate@@Base+0x210>
  4f4eb4:	00000000 	nop
  4f4eb8:	10540005 	beq	v0,s4,4f4ed0 <adLocate@@Base+0x210>
  4f4ebc:	00000000 	nop
  4f4ec0:	1455006f 	bne	v0,s5,4f5080 <adLocate@@Base+0x3c0>
  4f4ec4:	00000000 	nop
  4f4ec8:	1000003a 	b	4f4fb4 <adLocate@@Base+0x2f4>
  4f4ecc:	00000000 	nop
  4f4ed0:	90660253 	lbu	a2,595(v1)
  4f4ed4:	8f99cd28 	lw	t9,-13016(gp)
  4f4ed8:	8fa40024 	lw	a0,36(sp)
  4f4edc:	8fa50028 	lw	a1,40(sp)
  4f4ee0:	0320f809 	jalr	t9
  4f4ee4:	24070001 	li	a3,1
  4f4ee8:	8fbc0018 	lw	gp,24(sp)
  4f4eec:	8e020000 	lw	v0,0(s0)
  4f4ef0:	8fa40024 	lw	a0,36(sp)
  4f4ef4:	8f999988 	lw	t9,-26232(gp)
  4f4ef8:	90460253 	lbu	a2,595(v0)
  4f4efc:	8fa50028 	lw	a1,40(sp)
  4f4f00:	00003821 	move	a3,zero
  4f4f04:	0320f809 	jalr	t9
  4f4f08:	afb20010 	sw	s2,16(sp)
  4f4f0c:	8fbc0018 	lw	gp,24(sp)
  4f4f10:	8e020000 	lw	v0,0(s0)
  4f4f14:	8fa40024 	lw	a0,36(sp)
  4f4f18:	8f99cd28 	lw	t9,-13016(gp)
  4f4f1c:	90460254 	lbu	a2,596(v0)
  4f4f20:	8fa50028 	lw	a1,40(sp)
  4f4f24:	0320f809 	jalr	t9
  4f4f28:	24070001 	li	a3,1
  4f4f2c:	8e020000 	lw	v0,0(s0)
  4f4f30:	8fbc0018 	lw	gp,24(sp)
  4f4f34:	90460254 	lbu	a2,596(v0)
  4f4f38:	8f999988 	lw	t9,-26232(gp)
  4f4f3c:	1000004a 	b	4f5068 <adLocate@@Base+0x3a8>
  4f4f40:	afa00010 	sw	zero,16(sp)
  4f4f44:	90660253 	lbu	a2,595(v1)
  4f4f48:	8f99cd28 	lw	t9,-13016(gp)
  4f4f4c:	8fa40024 	lw	a0,36(sp)
  4f4f50:	8fa50028 	lw	a1,40(sp)
  4f4f54:	0320f809 	jalr	t9
  4f4f58:	24070001 	li	a3,1
  4f4f5c:	8fbc0018 	lw	gp,24(sp)
  4f4f60:	8e020000 	lw	v0,0(s0)
  4f4f64:	8fa40024 	lw	a0,36(sp)
  4f4f68:	8f999988 	lw	t9,-26232(gp)
  4f4f6c:	90460253 	lbu	a2,595(v0)
  4f4f70:	8fa50028 	lw	a1,40(sp)
  4f4f74:	00003821 	move	a3,zero
  4f4f78:	0320f809 	jalr	t9
  4f4f7c:	afb20010 	sw	s2,16(sp)
  4f4f80:	8fbc0018 	lw	gp,24(sp)
  4f4f84:	8e020000 	lw	v0,0(s0)
  4f4f88:	8fa40024 	lw	a0,36(sp)
  4f4f8c:	8f99cd28 	lw	t9,-13016(gp)
  4f4f90:	90460254 	lbu	a2,596(v0)
  4f4f94:	8fa50028 	lw	a1,40(sp)
  4f4f98:	0320f809 	jalr	t9
  4f4f9c:	24070001 	li	a3,1
  4f4fa0:	8e020000 	lw	v0,0(s0)
  4f4fa4:	8fbc0018 	lw	gp,24(sp)
  4f4fa8:	90460254 	lbu	a2,596(v0)
  4f4fac:	1000002c 	b	4f5060 <adLocate@@Base+0x3a0>
  4f4fb0:	00000000 	nop
  4f4fb4:	90660253 	lbu	a2,595(v1)
  4f4fb8:	8f99cd28 	lw	t9,-13016(gp)
  4f4fbc:	8fa40024 	lw	a0,36(sp)
  4f4fc0:	8fa50028 	lw	a1,40(sp)
  4f4fc4:	0320f809 	jalr	t9
  4f4fc8:	24070001 	li	a3,1
  4f4fcc:	8fbc0018 	lw	gp,24(sp)
  4f4fd0:	8e020000 	lw	v0,0(s0)
  4f4fd4:	8fa40024 	lw	a0,36(sp)
  4f4fd8:	8f999988 	lw	t9,-26232(gp)
  4f4fdc:	90460253 	lbu	a2,595(v0)
  4f4fe0:	8fa50028 	lw	a1,40(sp)
  4f4fe4:	00003821 	move	a3,zero
  4f4fe8:	0320f809 	jalr	t9
  4f4fec:	afb20010 	sw	s2,16(sp)
  4f4ff0:	8fbc0018 	lw	gp,24(sp)
  4f4ff4:	8e020000 	lw	v0,0(s0)
  4f4ff8:	8fa40024 	lw	a0,36(sp)
  4f4ffc:	8f99cd28 	lw	t9,-13016(gp)
  4f5000:	8fa50028 	lw	a1,40(sp)
  4f5004:	90460254 	lbu	a2,596(v0)
  4f5008:	0320f809 	jalr	t9
  4f500c:	24070001 	li	a3,1
  4f5010:	8fbc0018 	lw	gp,24(sp)
  4f5014:	8e020000 	lw	v0,0(s0)
  4f5018:	8fa40024 	lw	a0,36(sp)
  4f501c:	8f999988 	lw	t9,-26232(gp)
  4f5020:	90460254 	lbu	a2,596(v0)
  4f5024:	8fa50028 	lw	a1,40(sp)
  4f5028:	00003821 	move	a3,zero
  4f502c:	0320f809 	jalr	t9
  4f5030:	afa00010 	sw	zero,16(sp)
  4f5034:	8fbc0018 	lw	gp,24(sp)
  4f5038:	8e020000 	lw	v0,0(s0)
  4f503c:	8fa40024 	lw	a0,36(sp)
  4f5040:	8f99cd28 	lw	t9,-13016(gp)
  4f5044:	90460255 	lbu	a2,597(v0)
  4f5048:	8fa50028 	lw	a1,40(sp)
  4f504c:	0320f809 	jalr	t9
  4f5050:	24070001 	li	a3,1
  4f5054:	8e020000 	lw	v0,0(s0)
  4f5058:	8fbc0018 	lw	gp,24(sp)
  4f505c:	90460255 	lbu	a2,597(v0)
  4f5060:	8f999988 	lw	t9,-26232(gp)
  4f5064:	afb20010 	sw	s2,16(sp)
  4f5068:	8fa40024 	lw	a0,36(sp)
  4f506c:	8fa50028 	lw	a1,40(sp)
  4f5070:	0320f809 	jalr	t9
  4f5074:	00003821 	move	a3,zero
  4f5078:	8fbc0018 	lw	gp,24(sp)
  4f507c:	00000000 	nop
  4f5080:	8f99e764 	lw	t9,-6300(gp)
  4f5084:	8f84f72c 	lw	a0,-2260(gp)
  4f5088:	0320f809 	jalr	t9
  4f508c:	02602821 	move	a1,s3
  4f5090:	87a20020 	lh	v0,32(sp)
  4f5094:	8fbc0018 	lw	gp,24(sp)
  4f5098:	1456ff7a 	bne	v0,s6,4f4e84 <adLocate@@Base+0x1c4>
  4f509c:	02e02821 	move	a1,s7
  4f50a0:	8f99a448 	lw	t9,-23480(gp)
  4f50a4:	3c040007 	lui	a0,0x7
  4f50a8:	0320f809 	jalr	t9
  4f50ac:	3484a120 	ori	a0,a0,0xa120
  4f50b0:	8fbc0018 	lw	gp,24(sp)
  4f50b4:	00000000 	nop
  4f50b8:	8f999c14 	lw	t9,-25580(gp)
  4f50bc:	00000000 	nop
  4f50c0:	0320f809 	jalr	t9
  4f50c4:	00000000 	nop
  4f50c8:	8fbc0018 	lw	gp,24(sp)
  4f50cc:	00000000 	nop
  4f50d0:	8f84f72c 	lw	a0,-2260(gp)
  4f50d4:	8f99f1d8 	lw	t9,-3624(gp)
  4f50d8:	1000003c 	b	4f51cc <adLocate@@Base+0x50c>
  4f50dc:	00000000 	nop
  4f50e0:	8fa40020 	lw	a0,32(sp)
  4f50e4:	0320f809 	jalr	t9
  4f50e8:	00000000 	nop
  4f50ec:	8e030000 	lw	v1,0(s0)
  4f50f0:	8fbc0018 	lw	gp,24(sp)
  4f50f4:	24040001 	li	a0,1
  4f50f8:	90620252 	lbu	v0,594(v1)
  4f50fc:	8f999988 	lw	t9,-26232(gp)
  4f5100:	1044000f 	beq	v0,a0,4f5140 <adLocate@@Base+0x480>
  4f5104:	00003821 	move	a3,zero
  4f5108:	10400007 	beqz	v0,4f5128 <adLocate@@Base+0x468>
  4f510c:	00000000 	nop
  4f5110:	10540005 	beq	v0,s4,4f5128 <adLocate@@Base+0x468>
  4f5114:	00000000 	nop
  4f5118:	1455002a 	bne	v0,s5,4f51c4 <adLocate@@Base+0x504>
  4f511c:	00000000 	nop
  4f5120:	10000016 	b	4f517c <adLocate@@Base+0x4bc>
  4f5124:	00000000 	nop
  4f5128:	90660253 	lbu	a2,595(v1)
  4f512c:	8fa40024 	lw	a0,36(sp)
  4f5130:	afa00010 	sw	zero,16(sp)
  4f5134:	8fa50028 	lw	a1,40(sp)
  4f5138:	1000001e 	b	4f51b4 <adLocate@@Base+0x4f4>
  4f513c:	00000000 	nop
  4f5140:	90660253 	lbu	a2,595(v1)
  4f5144:	8fa40024 	lw	a0,36(sp)
  4f5148:	8fa50028 	lw	a1,40(sp)
  4f514c:	afa00010 	sw	zero,16(sp)
  4f5150:	0320f809 	jalr	t9
  4f5154:	00003821 	move	a3,zero
  4f5158:	8e020000 	lw	v0,0(s0)
  4f515c:	8fbc0018 	lw	gp,24(sp)
  4f5160:	8fa40024 	lw	a0,36(sp)
  4f5164:	90460254 	lbu	a2,596(v0)
  4f5168:	8f999988 	lw	t9,-26232(gp)
  4f516c:	afa00010 	sw	zero,16(sp)
  4f5170:	8fa50028 	lw	a1,40(sp)
  4f5174:	1000000f 	b	4f51b4 <adLocate@@Base+0x4f4>
  4f5178:	00003821 	move	a3,zero
  4f517c:	90660253 	lbu	a2,595(v1)
  4f5180:	8fa40024 	lw	a0,36(sp)
  4f5184:	8fa50028 	lw	a1,40(sp)
  4f5188:	afa00010 	sw	zero,16(sp)
  4f518c:	0320f809 	jalr	t9
  4f5190:	00003821 	move	a3,zero
  4f5194:	8fbc0018 	lw	gp,24(sp)
  4f5198:	8e020000 	lw	v0,0(s0)
  4f519c:	8fa40024 	lw	a0,36(sp)
  4f51a0:	8f999988 	lw	t9,-26232(gp)
  4f51a4:	8fa50028 	lw	a1,40(sp)
  4f51a8:	90460255 	lbu	a2,597(v0)
  4f51ac:	afa00010 	sw	zero,16(sp)
  4f51b0:	00003821 	move	a3,zero
  4f51b4:	0320f809 	jalr	t9
  4f51b8:	00000000 	nop
  4f51bc:	8fbc0018 	lw	gp,24(sp)
  4f51c0:	00000000 	nop
  4f51c4:	8f99e764 	lw	t9,-6300(gp)
  4f51c8:	8f84f72c 	lw	a0,-2260(gp)
  4f51cc:	0320f809 	jalr	t9
  4f51d0:	02602821 	move	a1,s3
  4f51d4:	8fbc0018 	lw	gp,24(sp)
  4f51d8:	87a20020 	lh	v0,32(sp)
  4f51dc:	02e02821 	move	a1,s7
  4f51e0:	8f998548 	lw	t9,-31416(gp)
  4f51e4:	1456ffbe 	bne	v0,s6,4f50e0 <adLocate@@Base+0x420>
  4f51e8:	03c03021 	move	a2,s8
  4f51ec:	8f99a448 	lw	t9,-23480(gp)
  4f51f0:	3c040007 	lui	a0,0x7
  4f51f4:	0320f809 	jalr	t9
  4f51f8:	3484a120 	ori	a0,a0,0xa120
  4f51fc:	8fbc0018 	lw	gp,24(sp)
  4f5200:	26310001 	addiu	s1,s1,1
  4f5204:	8f83802c 	lw	v1,-32724(gp)
  4f5208:	00000000 	nop
  4f520c:	8c62c4e4 	lw	v0,-15132(v1)
  4f5210:	00000000 	nop
  4f5214:	0222102b 	sltu	v0,s1,v0
  4f5218:	1440ff10 	bnez	v0,4f4e5c <adLocate@@Base+0x19c>
  4f521c:	00000000 	nop
  4f5220:	8f82d6d0 	lw	v0,-10544(gp)
  4f5224:	8f99e4dc 	lw	t9,-6948(gp)
  4f5228:	27a4002c 	addiu	a0,sp,44
  4f522c:	0320f809 	jalr	t9
  4f5230:	ac400000 	sw	zero,0(v0)
  4f5234:	8fbc0018 	lw	gp,24(sp)
  4f5238:	8fa4002c 	lw	a0,44(sp)
  4f523c:	8f99a9d0 	lw	t9,-22064(gp)
  4f5240:	0004202b 	sltu	a0,zero,a0
  4f5244:	0320f809 	jalr	t9
  4f5248:	00042040 	sll	a0,a0,0x1
  4f524c:	8fbc0018 	lw	gp,24(sp)
  4f5250:	8fa4002c 	lw	a0,44(sp)
  4f5254:	8f99ccf4 	lw	t9,-13068(gp)
  4f5258:	00000000 	nop
  4f525c:	0320f809 	jalr	t9
  4f5260:	00000000 	nop
  4f5264:	8fbc0018 	lw	gp,24(sp)
  4f5268:	8fbf0054 	lw	ra,84(sp)
  4f526c:	8fbe0050 	lw	s8,80(sp)
  4f5270:	8f82802c 	lw	v0,-32724(gp)
  4f5274:	8fb7004c 	lw	s7,76(sp)
  4f5278:	8fb60048 	lw	s6,72(sp)
  4f527c:	8fb50044 	lw	s5,68(sp)
  4f5280:	8fb40040 	lw	s4,64(sp)
  4f5284:	8fb3003c 	lw	s3,60(sp)
  4f5288:	8fb20038 	lw	s2,56(sp)
  4f528c:	8fb10034 	lw	s1,52(sp)
  4f5290:	8fb00030 	lw	s0,48(sp)
  4f5294:	2403ffff 	li	v1,-1
  4f5298:	ac43c4e0 	sw	v1,-15136(v0)
  4f529c:	03e00008 	jr	ra
  4f52a0:	27bd0058 	addiu	sp,sp,88

004f52a4 <adLedToPoeMode@@Base>:
  4f52a4:	3c1c00a3 	lui	gp,0xa3
  4f52a8:	279cc66c 	addiu	gp,gp,-14740
  4f52ac:	0399e021 	addu	gp,gp,t9
  4f52b0:	27bdffb8 	addiu	sp,sp,-72
  4f52b4:	afbf0044 	sw	ra,68(sp)
  4f52b8:	afb30040 	sw	s3,64(sp)
  4f52bc:	afb2003c 	sw	s2,60(sp)
  4f52c0:	afb10038 	sw	s1,56(sp)
  4f52c4:	afb00034 	sw	s0,52(sp)
  4f52c8:	afbc0018 	sw	gp,24(sp)
  4f52cc:	8f82802c 	lw	v0,-32724(gp)
  4f52d0:	afa00020 	sw	zero,32(sp)
  4f52d4:	afa00024 	sw	zero,36(sp)
  4f52d8:	8c42c4e8 	lw	v0,-15128(v0)
  4f52dc:	8f90d0f4 	lw	s0,-12044(gp)
  4f52e0:	8f99c400 	lw	t9,-15360(gp)
  4f52e4:	1440000f 	bnez	v0,4f5324 <adLedToPoeMode@@Base+0x80>
  4f52e8:	afa00028 	sw	zero,40(sp)
  4f52ec:	8e020000 	lw	v0,0(s0)
  4f52f0:	00000000 	nop
  4f52f4:	9044024c 	lbu	a0,588(v0)
  4f52f8:	0320f809 	jalr	t9
  4f52fc:	00002821 	move	a1,zero
  4f5300:	8fbc0018 	lw	gp,24(sp)
  4f5304:	8e020000 	lw	v0,0(s0)
  4f5308:	8f99c400 	lw	t9,-15360(gp)
  4f530c:	9044024d 	lbu	a0,589(v0)
  4f5310:	0320f809 	jalr	t9
  4f5314:	00002821 	move	a1,zero
  4f5318:	8fbc0018 	lw	gp,24(sp)
  4f531c:	10000051 	b	4f5464 <adLedToPoeMode@@Base+0x1c0>
  4f5320:	00000000 	nop
  4f5324:	8e020000 	lw	v0,0(s0)
  4f5328:	00000000 	nop
  4f532c:	9044024c 	lbu	a0,588(v0)
  4f5330:	0320f809 	jalr	t9
  4f5334:	00002821 	move	a1,zero
  4f5338:	8fbc0018 	lw	gp,24(sp)
  4f533c:	8e020000 	lw	v0,0(s0)
  4f5340:	8f99c400 	lw	t9,-15360(gp)
  4f5344:	9044024d 	lbu	a0,589(v0)
  4f5348:	0320f809 	jalr	t9
  4f534c:	24050001 	li	a1,1
  4f5350:	8fbc0018 	lw	gp,24(sp)
  4f5354:	00000000 	nop
  4f5358:	8f82d6d0 	lw	v0,-10544(gp)
  4f535c:	00000000 	nop
  4f5360:	8c430000 	lw	v1,0(v0)
  4f5364:	24020002 	li	v0,2
  4f5368:	1062003e 	beq	v1,v0,4f5464 <adLedToPoeMode@@Base+0x1c0>
  4f536c:	27b00020 	addiu	s0,sp,32
  4f5370:	8f999c14 	lw	t9,-25580(gp)
  4f5374:	00000000 	nop
  4f5378:	0320f809 	jalr	t9
  4f537c:	02009821 	move	s3,s0
  4f5380:	8fbc0018 	lw	gp,24(sp)
  4f5384:	02002821 	move	a1,s0
  4f5388:	2412ffff 	li	s2,-1
  4f538c:	8f99f1d8 	lw	t9,-3624(gp)
  4f5390:	8f84f72c 	lw	a0,-2260(gp)
  4f5394:	27b10024 	addiu	s1,sp,36
  4f5398:	0320f809 	jalr	t9
  4f539c:	27b00028 	addiu	s0,sp,40
  4f53a0:	8fbc0018 	lw	gp,24(sp)
  4f53a4:	1000002a 	b	4f5450 <adLedToPoeMode@@Base+0x1ac>
  4f53a8:	00000000 	nop
  4f53ac:	8fa40020 	lw	a0,32(sp)
  4f53b0:	0320f809 	jalr	t9
  4f53b4:	00000000 	nop
  4f53b8:	8fbc0018 	lw	gp,24(sp)
  4f53bc:	00002021 	move	a0,zero
  4f53c0:	00003021 	move	a2,zero
  4f53c4:	8f999988 	lw	t9,-26232(gp)
  4f53c8:	14400026 	bnez	v0,4f5464 <adLedToPoeMode@@Base+0x1c0>
  4f53cc:	00003821 	move	a3,zero
  4f53d0:	8fa50028 	lw	a1,40(sp)
  4f53d4:	0320f809 	jalr	t9
  4f53d8:	afa00010 	sw	zero,16(sp)
  4f53dc:	8fbc0018 	lw	gp,24(sp)
  4f53e0:	8fa50028 	lw	a1,40(sp)
  4f53e4:	00002021 	move	a0,zero
  4f53e8:	8f999988 	lw	t9,-26232(gp)
  4f53ec:	24060001 	li	a2,1
  4f53f0:	00003821 	move	a3,zero
  4f53f4:	0320f809 	jalr	t9
  4f53f8:	afa00010 	sw	zero,16(sp)
  4f53fc:	8fbc0018 	lw	gp,24(sp)
  4f5400:	8fa50028 	lw	a1,40(sp)
  4f5404:	00002021 	move	a0,zero
  4f5408:	8f99cd28 	lw	t9,-13016(gp)
  4f540c:	00003021 	move	a2,zero
  4f5410:	0320f809 	jalr	t9
  4f5414:	24070001 	li	a3,1
  4f5418:	8fbc0018 	lw	gp,24(sp)
  4f541c:	8fa50028 	lw	a1,40(sp)
  4f5420:	00002021 	move	a0,zero
  4f5424:	8f99cd28 	lw	t9,-13016(gp)
  4f5428:	24060001 	li	a2,1
  4f542c:	0320f809 	jalr	t9
  4f5430:	24070001 	li	a3,1
  4f5434:	8fbc0018 	lw	gp,24(sp)
  4f5438:	00000000 	nop
  4f543c:	8f99e764 	lw	t9,-6300(gp)
  4f5440:	8f84f72c 	lw	a0,-2260(gp)
  4f5444:	0320f809 	jalr	t9
  4f5448:	02602821 	move	a1,s3
  4f544c:	8fbc0018 	lw	gp,24(sp)
  4f5450:	87a20020 	lh	v0,32(sp)
  4f5454:	8f998548 	lw	t9,-31416(gp)
  4f5458:	02202821 	move	a1,s1
  4f545c:	1452ffd3 	bne	v0,s2,4f53ac <adLedToPoeMode@@Base+0x108>
  4f5460:	02003021 	move	a2,s0
  4f5464:	8fbf0044 	lw	ra,68(sp)
  4f5468:	8fb30040 	lw	s3,64(sp)
  4f546c:	8fb2003c 	lw	s2,60(sp)
  4f5470:	8fb10038 	lw	s1,56(sp)
  4f5474:	8fb00034 	lw	s0,52(sp)
  4f5478:	03e00008 	jr	ra
  4f547c:	27bd0048 	addiu	sp,sp,72

004f5480 <adLedToSpeedMode@@Base>:
  4f5480:	3c1c00a3 	lui	gp,0xa3
  4f5484:	279cc490 	addiu	gp,gp,-15216
  4f5488:	0399e021 	addu	gp,gp,t9
  4f548c:	27bdffb8 	addiu	sp,sp,-72
  4f5490:	afbf0044 	sw	ra,68(sp)
  4f5494:	afb30040 	sw	s3,64(sp)
  4f5498:	afb2003c 	sw	s2,60(sp)
  4f549c:	afb10038 	sw	s1,56(sp)
  4f54a0:	afb00034 	sw	s0,52(sp)
  4f54a4:	afbc0018 	sw	gp,24(sp)
  4f54a8:	8f82802c 	lw	v0,-32724(gp)
  4f54ac:	afa00020 	sw	zero,32(sp)
  4f54b0:	afa00024 	sw	zero,36(sp)
  4f54b4:	8c42c4e8 	lw	v0,-15128(v0)
  4f54b8:	8f90d0f4 	lw	s0,-12044(gp)
  4f54bc:	8f99c400 	lw	t9,-15360(gp)
  4f54c0:	1440000f 	bnez	v0,4f5500 <adLedToSpeedMode@@Base+0x80>
  4f54c4:	afa00028 	sw	zero,40(sp)
  4f54c8:	8e020000 	lw	v0,0(s0)
  4f54cc:	00000000 	nop
  4f54d0:	9044024c 	lbu	a0,588(v0)
  4f54d4:	0320f809 	jalr	t9
  4f54d8:	00002821 	move	a1,zero
  4f54dc:	8fbc0018 	lw	gp,24(sp)
  4f54e0:	8e020000 	lw	v0,0(s0)
  4f54e4:	8f99c400 	lw	t9,-15360(gp)
  4f54e8:	9044024d 	lbu	a0,589(v0)
  4f54ec:	0320f809 	jalr	t9
  4f54f0:	00002821 	move	a1,zero
  4f54f4:	8fbc0018 	lw	gp,24(sp)
  4f54f8:	10000051 	b	4f5640 <adLedToSpeedMode@@Base+0x1c0>
  4f54fc:	00000000 	nop
  4f5500:	8e020000 	lw	v0,0(s0)
  4f5504:	00000000 	nop
  4f5508:	9044024c 	lbu	a0,588(v0)
  4f550c:	0320f809 	jalr	t9
  4f5510:	24050001 	li	a1,1
  4f5514:	8fbc0018 	lw	gp,24(sp)
  4f5518:	8e020000 	lw	v0,0(s0)
  4f551c:	8f99c400 	lw	t9,-15360(gp)
  4f5520:	9044024d 	lbu	a0,589(v0)
  4f5524:	0320f809 	jalr	t9
  4f5528:	00002821 	move	a1,zero
  4f552c:	8fbc0018 	lw	gp,24(sp)
  4f5530:	00000000 	nop
  4f5534:	8f82d6d0 	lw	v0,-10544(gp)
  4f5538:	00000000 	nop
  4f553c:	8c430000 	lw	v1,0(v0)
  4f5540:	24020002 	li	v0,2
  4f5544:	1062003e 	beq	v1,v0,4f5640 <adLedToSpeedMode@@Base+0x1c0>
  4f5548:	27b00020 	addiu	s0,sp,32
  4f554c:	8f999c14 	lw	t9,-25580(gp)
  4f5550:	00000000 	nop
  4f5554:	0320f809 	jalr	t9
  4f5558:	02009821 	move	s3,s0
  4f555c:	8fbc0018 	lw	gp,24(sp)
  4f5560:	02002821 	move	a1,s0
  4f5564:	2412ffff 	li	s2,-1
  4f5568:	8f99f1d8 	lw	t9,-3624(gp)
  4f556c:	8f84f72c 	lw	a0,-2260(gp)
  4f5570:	27b10024 	addiu	s1,sp,36
  4f5574:	0320f809 	jalr	t9
  4f5578:	27b00028 	addiu	s0,sp,40
  4f557c:	8fbc0018 	lw	gp,24(sp)
  4f5580:	1000002a 	b	4f562c <adLedToSpeedMode@@Base+0x1ac>
  4f5584:	00000000 	nop
  4f5588:	8fa40020 	lw	a0,32(sp)
  4f558c:	0320f809 	jalr	t9
  4f5590:	00000000 	nop
  4f5594:	8fbc0018 	lw	gp,24(sp)
  4f5598:	00002021 	move	a0,zero
  4f559c:	00003021 	move	a2,zero
  4f55a0:	8f999988 	lw	t9,-26232(gp)
  4f55a4:	14400026 	bnez	v0,4f5640 <adLedToSpeedMode@@Base+0x1c0>
  4f55a8:	00003821 	move	a3,zero
  4f55ac:	8fa50028 	lw	a1,40(sp)
  4f55b0:	0320f809 	jalr	t9
  4f55b4:	afa00010 	sw	zero,16(sp)
  4f55b8:	8fbc0018 	lw	gp,24(sp)
  4f55bc:	8fa50028 	lw	a1,40(sp)
  4f55c0:	00002021 	move	a0,zero
  4f55c4:	8f999988 	lw	t9,-26232(gp)
  4f55c8:	24060001 	li	a2,1
  4f55cc:	00003821 	move	a3,zero
  4f55d0:	0320f809 	jalr	t9
  4f55d4:	afa00010 	sw	zero,16(sp)
  4f55d8:	8fbc0018 	lw	gp,24(sp)
  4f55dc:	8fa50028 	lw	a1,40(sp)
  4f55e0:	00002021 	move	a0,zero
  4f55e4:	8f99cd28 	lw	t9,-13016(gp)
  4f55e8:	00003021 	move	a2,zero
  4f55ec:	0320f809 	jalr	t9
  4f55f0:	00003821 	move	a3,zero
  4f55f4:	8fbc0018 	lw	gp,24(sp)
  4f55f8:	8fa50028 	lw	a1,40(sp)
  4f55fc:	00002021 	move	a0,zero
  4f5600:	8f99cd28 	lw	t9,-13016(gp)
  4f5604:	24060001 	li	a2,1
  4f5608:	0320f809 	jalr	t9
  4f560c:	00003821 	move	a3,zero
  4f5610:	8fbc0018 	lw	gp,24(sp)
  4f5614:	00000000 	nop
  4f5618:	8f99e764 	lw	t9,-6300(gp)
  4f561c:	8f84f72c 	lw	a0,-2260(gp)
  4f5620:	0320f809 	jalr	t9
  4f5624:	02602821 	move	a1,s3
  4f5628:	8fbc0018 	lw	gp,24(sp)
  4f562c:	87a20020 	lh	v0,32(sp)
  4f5630:	8f998548 	lw	t9,-31416(gp)
  4f5634:	02202821 	move	a1,s1
  4f5638:	1452ffd3 	bne	v0,s2,4f5588 <adLedToSpeedMode@@Base+0x108>
  4f563c:	02003021 	move	a2,s0
  4f5640:	8fbf0044 	lw	ra,68(sp)
  4f5644:	8fb30040 	lw	s3,64(sp)
  4f5648:	8fb2003c 	lw	s2,60(sp)
  4f564c:	8fb10038 	lw	s1,56(sp)
  4f5650:	8fb00034 	lw	s0,52(sp)
  4f5654:	03e00008 	jr	ra
  4f5658:	27bd0048 	addiu	sp,sp,72
  4f565c:	3c1c00a3 	lui	gp,0xa3
  4f5660:	279cc2b4 	addiu	gp,gp,-15692
  4f5664:	0399e021 	addu	gp,gp,t9
  4f5668:	27bdffd8 	addiu	sp,sp,-40
  4f566c:	afbf0024 	sw	ra,36(sp)
  4f5670:	afb20020 	sw	s2,32(sp)
  4f5674:	afb1001c 	sw	s1,28(sp)
  4f5678:	afb00018 	sw	s0,24(sp)
  4f567c:	afbc0010 	sw	gp,16(sp)
  4f5680:	8f90802c 	lw	s0,-32724(gp)
  4f5684:	3c020007 	lui	v0,0x7
  4f5688:	3452a120 	ori	s2,v0,0xa120
  4f568c:	24110002 	li	s1,2
  4f5690:	8f99be68 	lw	t9,-16792(gp)
  4f5694:	00000000 	nop
  4f5698:	0320f809 	jalr	t9
  4f569c:	00000000 	nop
  4f56a0:	8fbc0010 	lw	gp,16(sp)
  4f56a4:	14400004 	bnez	v0,4f56b8 <adLedToSpeedMode@@Base+0x238>
  4f56a8:	24040001 	li	a0,1
  4f56ac:	8f99c8f4 	lw	t9,-14092(gp)
  4f56b0:	10000016 	b	4f570c <adLedToSpeedMode@@Base+0x28c>
  4f56b4:	00000000 	nop
  4f56b8:	8e02c4ec 	lw	v0,-15124(s0)
  4f56bc:	00000000 	nop
  4f56c0:	14510008 	bne	v0,s1,4f56e4 <adLedToSpeedMode@@Base+0x264>
  4f56c4:	00000000 	nop
  4f56c8:	8f99e424 	lw	t9,-7132(gp)
  4f56cc:	00000000 	nop
  4f56d0:	0320f809 	jalr	t9
  4f56d4:	00000000 	nop
  4f56d8:	8fbc0010 	lw	gp,16(sp)
  4f56dc:	10000009 	b	4f5704 <adLedToSpeedMode@@Base+0x284>
  4f56e0:	ae00c4ec 	sw	zero,-15124(s0)
  4f56e4:	10400007 	beqz	v0,4f5704 <adLedToSpeedMode@@Base+0x284>
  4f56e8:	00000000 	nop
  4f56ec:	8f99ed68 	lw	t9,-4760(gp)
  4f56f0:	00000000 	nop
  4f56f4:	0320f809 	jalr	t9
  4f56f8:	00000000 	nop
  4f56fc:	8fbc0010 	lw	gp,16(sp)
  4f5700:	00000000 	nop
  4f5704:	8f99a448 	lw	t9,-23480(gp)
  4f5708:	02402021 	move	a0,s2
  4f570c:	0320f809 	jalr	t9
  4f5710:	00000000 	nop
  4f5714:	8fbc0010 	lw	gp,16(sp)
  4f5718:	1000ffdd 	b	4f5690 <adLedToSpeedMode@@Base+0x210>
  4f571c:	00000000 	nop

004f5720 <adLedPoeModeShowTimeOut@@Base>:
  4f5720:	3c1c00a3 	lui	gp,0xa3
  4f5724:	279cc1f0 	addiu	gp,gp,-15888
  4f5728:	0399e021 	addu	gp,gp,t9
  4f572c:	8f82c25c 	lw	v0,-15780(gp)
  4f5730:	2403ffff 	li	v1,-1
  4f5734:	8f99e424 	lw	t9,-7132(gp)
  4f5738:	ac430000 	sw	v1,0(v0)
  4f573c:	8f82802c 	lw	v0,-32724(gp)
  4f5740:	00000000 	nop
  4f5744:	ac40c4ec 	sw	zero,-15124(v0)
  4f5748:	03200008 	jr	t9
  4f574c:	00000000 	nop
  4f5750:	3c1c00a3 	lui	gp,0xa3
  4f5754:	279cc1c0 	addiu	gp,gp,-15936
  4f5758:	0399e021 	addu	gp,gp,t9
  4f575c:	27bdffb0 	addiu	sp,sp,-80
  4f5760:	afbf004c 	sw	ra,76(sp)
  4f5764:	afbe0048 	sw	s8,72(sp)
  4f5768:	afb70044 	sw	s7,68(sp)
  4f576c:	afb60040 	sw	s6,64(sp)
  4f5770:	afb5003c 	sw	s5,60(sp)
  4f5774:	afb40038 	sw	s4,56(sp)
  4f5778:	afb30034 	sw	s3,52(sp)
  4f577c:	afb20030 	sw	s2,48(sp)
  4f5780:	afb1002c 	sw	s1,44(sp)
  4f5784:	afb00028 	sw	s0,40(sp)
  4f5788:	afbc0010 	sw	gp,16(sp)
  4f578c:	8f91802c 	lw	s1,-32724(gp)
  4f5790:	8f96d6d0 	lw	s6,-10544(gp)
  4f5794:	8f90d0f4 	lw	s0,-12044(gp)
  4f5798:	8f94c25c 	lw	s4,-15780(gp)
  4f579c:	24130002 	li	s3,2
  4f57a0:	27b20018 	addiu	s2,sp,24
  4f57a4:	2415ffff 	li	s5,-1
  4f57a8:	241e003c 	li	s8,60
  4f57ac:	27b7001c 	addiu	s7,sp,28
  4f57b0:	8f99be68 	lw	t9,-16792(gp)
  4f57b4:	00000000 	nop
  4f57b8:	0320f809 	jalr	t9
  4f57bc:	00000000 	nop
  4f57c0:	8fbc0010 	lw	gp,16(sp)
  4f57c4:	14400007 	bnez	v0,4f57e4 <adLedPoeModeShowTimeOut@@Base+0xc4>
  4f57c8:	00000000 	nop
  4f57cc:	8f99c8f4 	lw	t9,-14092(gp)
  4f57d0:	00000000 	nop
  4f57d4:	0320f809 	jalr	t9
  4f57d8:	24040001 	li	a0,1
  4f57dc:	10000081 	b	4f59e4 <adLedPoeModeShowTimeOut@@Base+0x2c4>
  4f57e0:	00000000 	nop
  4f57e4:	8f99a448 	lw	t9,-23480(gp)
  4f57e8:	00000000 	nop
  4f57ec:	0320f809 	jalr	t9
  4f57f0:	3404c350 	li	a0,0xc350
  4f57f4:	8e24c4ec 	lw	a0,-15124(s1)
  4f57f8:	8fbc0010 	lw	gp,16(sp)
  4f57fc:	1093ffec 	beq	a0,s3,4f57b0 <adLedPoeModeShowTimeOut@@Base+0x90>
  4f5800:	24020001 	li	v0,1
  4f5804:	8ec30000 	lw	v1,0(s6)
  4f5808:	00000000 	nop
  4f580c:	14620004 	bne	v1,v0,4f5820 <adLedPoeModeShowTimeOut@@Base+0x100>
  4f5810:	00000000 	nop
  4f5814:	8f99e424 	lw	t9,-7132(gp)
  4f5818:	1000006f 	b	4f59d8 <adLedPoeModeShowTimeOut@@Base+0x2b8>
  4f581c:	aed30000 	sw	s3,0(s6)
  4f5820:	1073ffe3 	beq	v1,s3,4f57b0 <adLedPoeModeShowTimeOut@@Base+0x90>
  4f5824:	00000000 	nop
  4f5828:	8f83802c 	lw	v1,-32724(gp)
  4f582c:	00000000 	nop
  4f5830:	8c62c4e8 	lw	v0,-15128(v1)
  4f5834:	00000000 	nop
  4f5838:	1440000e 	bnez	v0,4f5874 <adLedPoeModeShowTimeOut@@Base+0x154>
  4f583c:	00000000 	nop
  4f5840:	8e020000 	lw	v0,0(s0)
  4f5844:	8f99c400 	lw	t9,-15360(gp)
  4f5848:	9044024c 	lbu	a0,588(v0)
  4f584c:	0320f809 	jalr	t9
  4f5850:	00002821 	move	a1,zero
  4f5854:	8fbc0010 	lw	gp,16(sp)
  4f5858:	8e020000 	lw	v0,0(s0)
  4f585c:	8f99c400 	lw	t9,-15360(gp)
  4f5860:	9044024d 	lbu	a0,589(v0)
  4f5864:	0320f809 	jalr	t9
  4f5868:	00002821 	move	a1,zero
  4f586c:	1000005d 	b	4f59e4 <adLedPoeModeShowTimeOut@@Base+0x2c4>
  4f5870:	00000000 	nop
  4f5874:	8f99c400 	lw	t9,-15360(gp)
  4f5878:	1480000b 	bnez	a0,4f58a8 <adLedPoeModeShowTimeOut@@Base+0x188>
  4f587c:	00000000 	nop
  4f5880:	8e020000 	lw	v0,0(s0)
  4f5884:	00000000 	nop
  4f5888:	9044024c 	lbu	a0,588(v0)
  4f588c:	0320f809 	jalr	t9
  4f5890:	24050001 	li	a1,1
  4f5894:	8fbc0010 	lw	gp,16(sp)
  4f5898:	8e020000 	lw	v0,0(s0)
  4f589c:	8f99c400 	lw	t9,-15360(gp)
  4f58a0:	1000000a 	b	4f58cc <adLedPoeModeShowTimeOut@@Base+0x1ac>
  4f58a4:	00002821 	move	a1,zero
  4f58a8:	8e020000 	lw	v0,0(s0)
  4f58ac:	00000000 	nop
  4f58b0:	9044024c 	lbu	a0,588(v0)
  4f58b4:	0320f809 	jalr	t9
  4f58b8:	00002821 	move	a1,zero
  4f58bc:	8fbc0010 	lw	gp,16(sp)
  4f58c0:	8e020000 	lw	v0,0(s0)
  4f58c4:	24050001 	li	a1,1
  4f58c8:	8f99c400 	lw	t9,-15360(gp)
  4f58cc:	9044024d 	lbu	a0,589(v0)
  4f58d0:	0320f809 	jalr	t9
  4f58d4:	00000000 	nop
  4f58d8:	8fbc0010 	lw	gp,16(sp)
  4f58dc:	8e020000 	lw	v0,0(s0)
  4f58e0:	afa00018 	sw	zero,24(sp)
  4f58e4:	8f998834 	lw	t9,-30668(gp)
  4f58e8:	9044024b 	lbu	a0,587(v0)
  4f58ec:	0320f809 	jalr	t9
  4f58f0:	02402821 	move	a1,s2
  4f58f4:	8fa20018 	lw	v0,24(sp)
  4f58f8:	8fbc0010 	lw	gp,16(sp)
  4f58fc:	1440ffac 	bnez	v0,4f57b0 <adLedPoeModeShowTimeOut@@Base+0x90>
  4f5900:	00000000 	nop
  4f5904:	8f99a448 	lw	t9,-23480(gp)
  4f5908:	00000000 	nop
  4f590c:	0320f809 	jalr	t9
  4f5910:	24042710 	li	a0,10000
  4f5914:	8fbc0010 	lw	gp,16(sp)
  4f5918:	8e020000 	lw	v0,0(s0)
  4f591c:	8f998834 	lw	t9,-30668(gp)
  4f5920:	9044024b 	lbu	a0,587(v0)
  4f5924:	0320f809 	jalr	t9
  4f5928:	02402821 	move	a1,s2
  4f592c:	8fa20018 	lw	v0,24(sp)
  4f5930:	8fbc0010 	lw	gp,16(sp)
  4f5934:	1440ff9e 	bnez	v0,4f57b0 <adLedPoeModeShowTimeOut@@Base+0x90>
  4f5938:	00000000 	nop
  4f593c:	8e020000 	lw	v0,0(s0)
  4f5940:	8f998834 	lw	t9,-30668(gp)
  4f5944:	9044024b 	lbu	a0,587(v0)
  4f5948:	0320f809 	jalr	t9
  4f594c:	02402821 	move	a1,s2
  4f5950:	8fbc0010 	lw	gp,16(sp)
  4f5954:	8fa20018 	lw	v0,24(sp)
  4f5958:	8f99a448 	lw	t9,-23480(gp)
  4f595c:	14400024 	bnez	v0,4f59f0 <adLedPoeModeShowTimeOut@@Base+0x2d0>
  4f5960:	24042710 	li	a0,10000
  4f5964:	0320f809 	jalr	t9
  4f5968:	00000000 	nop
  4f596c:	8fbc0010 	lw	gp,16(sp)
  4f5970:	1000fff2 	b	4f593c <adLedPoeModeShowTimeOut@@Base+0x21c>
  4f5974:	00000000 	nop
  4f5978:	8f99f70c 	lw	t9,-2292(gp)
  4f597c:	8f85e560 	lw	a1,-6816(gp)
  4f5980:	afa00020 	sw	zero,32(sp)
  4f5984:	02e02021 	move	a0,s7
  4f5988:	00003021 	move	a2,zero
  4f598c:	0320f809 	jalr	t9
  4f5990:	24070001 	li	a3,1
  4f5994:	8fbc0010 	lw	gp,16(sp)
  4f5998:	ae820000 	sw	v0,0(s4)
  4f599c:	24020001 	li	v0,1
  4f59a0:	8f99e014 	lw	t9,-8172(gp)
  4f59a4:	1000000d 	b	4f59dc <adLedPoeModeShowTimeOut@@Base+0x2bc>
  4f59a8:	ae22c4ec 	sw	v0,-15124(s1)
  4f59ac:	8e840000 	lw	a0,0(s4)
  4f59b0:	00000000 	nop
  4f59b4:	10950007 	beq	a0,s5,4f59d4 <adLedPoeModeShowTimeOut@@Base+0x2b4>
  4f59b8:	00000000 	nop
  4f59bc:	8f99b468 	lw	t9,-19352(gp)
  4f59c0:	00000000 	nop
  4f59c4:	0320f809 	jalr	t9
  4f59c8:	00000000 	nop
  4f59cc:	8fbc0010 	lw	gp,16(sp)
  4f59d0:	ae950000 	sw	s5,0(s4)
  4f59d4:	8f99e424 	lw	t9,-7132(gp)
  4f59d8:	ae20c4ec 	sw	zero,-15124(s1)
  4f59dc:	0320f809 	jalr	t9
  4f59e0:	00000000 	nop
  4f59e4:	8fbc0010 	lw	gp,16(sp)
  4f59e8:	1000ff71 	b	4f57b0 <adLedPoeModeShowTimeOut@@Base+0x90>
  4f59ec:	00000000 	nop
  4f59f0:	8e22c4ec 	lw	v0,-15124(s1)
  4f59f4:	00000000 	nop
  4f59f8:	1440ffec 	bnez	v0,4f59ac <adLedPoeModeShowTimeOut@@Base+0x28c>
  4f59fc:	00000000 	nop
  4f5a00:	1000ffdd 	b	4f5978 <adLedPoeModeShowTimeOut@@Base+0x258>
  4f5a04:	afbe001c 	sw	s8,28(sp)

004f5a08 <adPoeSetPowerFanSpeed@@Base>:
  4f5a08:	3c1c00a3 	lui	gp,0xa3
  4f5a0c:	279cbf08 	addiu	gp,gp,-16632
  4f5a10:	0399e021 	addu	gp,gp,t9
  4f5a14:	27bdffd8 	addiu	sp,sp,-40
  4f5a18:	afbf0024 	sw	ra,36(sp)
  4f5a1c:	afb10020 	sw	s1,32(sp)
  4f5a20:	afb0001c 	sw	s0,28(sp)
  4f5a24:	afbc0010 	sw	gp,16(sp)
  4f5a28:	8f91d0f4 	lw	s1,-12044(gp)
  4f5a2c:	8f838028 	lw	v1,-32728(gp)
  4f5a30:	8e250000 	lw	a1,0(s1)
  4f5a34:	24639520 	addiu	v1,v1,-27360
  4f5a38:	90a20258 	lbu	v0,600(a1)
  4f5a3c:	00000000 	nop
  4f5a40:	00021080 	sll	v0,v0,0x2
  4f5a44:	00431021 	addu	v0,v0,v1
  4f5a48:	8c420000 	lw	v0,0(v0)
  4f5a4c:	00000000 	nop
  4f5a50:	0082102b 	sltu	v0,a0,v0
  4f5a54:	1040001b 	beqz	v0,4f5ac4 <adPoeSetPowerFanSpeed@@Base+0xbc>
  4f5a58:	2402000c 	li	v0,12
  4f5a5c:	00820018 	mult	a0,v0
  4f5a60:	8f99c400 	lw	t9,-15360(gp)
  4f5a64:	90a40259 	lbu	a0,601(a1)
  4f5a68:	00001012 	mflo	v0
  4f5a6c:	00a21021 	addu	v0,a1,v0
  4f5a70:	90500261 	lbu	s0,609(v0)
  4f5a74:	0320f809 	jalr	t9
  4f5a78:	32050001 	andi	a1,s0,0x1
  4f5a7c:	8fbc0010 	lw	gp,16(sp)
  4f5a80:	8e220000 	lw	v0,0(s1)
  4f5a84:	32050002 	andi	a1,s0,0x2
  4f5a88:	8f99c400 	lw	t9,-15360(gp)
  4f5a8c:	9044025a 	lbu	a0,602(v0)
  4f5a90:	00052842 	srl	a1,a1,0x1
  4f5a94:	0320f809 	jalr	t9
  4f5a98:	32100004 	andi	s0,s0,0x4
  4f5a9c:	8e220000 	lw	v0,0(s1)
  4f5aa0:	8fbc0010 	lw	gp,16(sp)
  4f5aa4:	00102882 	srl	a1,s0,0x2
  4f5aa8:	9044025b 	lbu	a0,603(v0)
  4f5aac:	8f99c400 	lw	t9,-15360(gp)
  4f5ab0:	8fbf0024 	lw	ra,36(sp)
  4f5ab4:	8fb10020 	lw	s1,32(sp)
  4f5ab8:	8fb0001c 	lw	s0,28(sp)
  4f5abc:	03200008 	jr	t9
  4f5ac0:	27bd0028 	addiu	sp,sp,40
  4f5ac4:	8fbf0024 	lw	ra,36(sp)
  4f5ac8:	8fb10020 	lw	s1,32(sp)
  4f5acc:	8fb0001c 	lw	s0,28(sp)
  4f5ad0:	03e00008 	jr	ra
  4f5ad4:	27bd0028 	addiu	sp,sp,40

004f5ad8 <adPoeUpdatePowerFanSpeed@@Base>:
  4f5ad8:	3c1c00a3 	lui	gp,0xa3
  4f5adc:	279cbe38 	addiu	gp,gp,-16840
  4f5ae0:	0399e021 	addu	gp,gp,t9
  4f5ae4:	27bdffd8 	addiu	sp,sp,-40
  4f5ae8:	afbf0024 	sw	ra,36(sp)
  4f5aec:	afb00020 	sw	s0,32(sp)
  4f5af0:	afbc0010 	sw	gp,16(sp)
  4f5af4:	8f90d0f4 	lw	s0,-12044(gp)
  4f5af8:	00000000 	nop
  4f5afc:	8e020000 	lw	v0,0(s0)
  4f5b00:	00000000 	nop
  4f5b04:	90420258 	lbu	v0,600(v0)
  4f5b08:	00000000 	nop
  4f5b0c:	10400044 	beqz	v0,4f5c20 <adPoeUpdatePowerFanSpeed@@Base+0x148>
  4f5b10:	00000000 	nop
  4f5b14:	8f828030 	lw	v0,-32720(gp)
  4f5b18:	00000000 	nop
  4f5b1c:	8c43ca58 	lw	v1,-13736(v0)
  4f5b20:	24020001 	li	v0,1
  4f5b24:	1062003e 	beq	v1,v0,4f5c20 <adPoeUpdatePowerFanSpeed@@Base+0x148>
  4f5b28:	27a40018 	addiu	a0,sp,24
  4f5b2c:	8f99fa34 	lw	t9,-1484(gp)
  4f5b30:	00000000 	nop
  4f5b34:	0320f809 	jalr	t9
  4f5b38:	afa00018 	sw	zero,24(sp)
  4f5b3c:	8fbc0010 	lw	gp,16(sp)
  4f5b40:	8e040000 	lw	a0,0(s0)
  4f5b44:	8f828028 	lw	v0,-32728(gp)
  4f5b48:	90830258 	lbu	v1,600(a0)
  4f5b4c:	8f878030 	lw	a3,-32720(gp)
  4f5b50:	24429520 	addiu	v0,v0,-27360
  4f5b54:	00031880 	sll	v1,v1,0x2
  4f5b58:	00621821 	addu	v1,v1,v0
  4f5b5c:	8ce5ca5c 	lw	a1,-13732(a3)
  4f5b60:	8c630000 	lw	v1,0(v1)
  4f5b64:	00000000 	nop
  4f5b68:	00a3102a 	slt	v0,a1,v1
  4f5b6c:	14400003 	bnez	v0,4f5b7c <adPoeUpdatePowerFanSpeed@@Base+0xa4>
  4f5b70:	2402000c 	li	v0,12
  4f5b74:	1000002a 	b	4f5c20 <adPoeUpdatePowerFanSpeed@@Base+0x148>
  4f5b78:	ace0ca5c 	sw	zero,-13732(a3)
  4f5b7c:	00a20018 	mult	a1,v0
  4f5b80:	2408000a 	li	t0,10
  4f5b84:	8fa60018 	lw	a2,24(sp)
  4f5b88:	00001012 	mflo	v0
  4f5b8c:	00822021 	addu	a0,a0,v0
  4f5b90:	8c820268 	lw	v0,616(a0)
  4f5b94:	00000000 	nop
  4f5b98:	00480018 	mult	v0,t0
  4f5b9c:	00001012 	mflo	v0
  4f5ba0:	0046102b 	sltu	v0,v0,a2
  4f5ba4:	14400008 	bnez	v0,4f5bc8 <adPoeUpdatePowerFanSpeed@@Base+0xf0>
  4f5ba8:	24a20001 	addiu	v0,a1,1
  4f5bac:	8c820264 	lw	v0,612(a0)
  4f5bb0:	00000000 	nop
  4f5bb4:	00480018 	mult	v0,t0
  4f5bb8:	00001012 	mflo	v0
  4f5bbc:	00c2102b 	sltu	v0,a2,v0
  4f5bc0:	10400002 	beqz	v0,4f5bcc <adPoeUpdatePowerFanSpeed@@Base+0xf4>
  4f5bc4:	24a2ffff 	addiu	v0,a1,-1
  4f5bc8:	ace2ca5c 	sw	v0,-13732(a3)
  4f5bcc:	8f87802c 	lw	a3,-32724(gp)
  4f5bd0:	00000000 	nop
  4f5bd4:	8ce5c4f8 	lw	a1,-15112(a3)
  4f5bd8:	00000000 	nop
  4f5bdc:	18a0000a 	blez	a1,4f5c08 <adPoeUpdatePowerFanSpeed@@Base+0x130>
  4f5be0:	000317c2 	srl	v0,v1,0x1f
  4f5be4:	8f868030 	lw	a2,-32720(gp)
  4f5be8:	00431021 	addu	v0,v0,v1
  4f5bec:	8cc3ca5c 	lw	v1,-13732(a2)
  4f5bf0:	00022043 	sra	a0,v0,0x1
  4f5bf4:	24a2ffff 	addiu	v0,a1,-1
  4f5bf8:	0064182a 	slt	v1,v1,a0
  4f5bfc:	10600002 	beqz	v1,4f5c08 <adPoeUpdatePowerFanSpeed@@Base+0x130>
  4f5c00:	ace2c4f8 	sw	v0,-15112(a3)
  4f5c04:	acc4ca5c 	sw	a0,-13732(a2)
  4f5c08:	8f828030 	lw	v0,-32720(gp)
  4f5c0c:	8f99e9e8 	lw	t9,-5656(gp)
  4f5c10:	8c44ca5c 	lw	a0,-13732(v0)
  4f5c14:	0320f809 	jalr	t9
  4f5c18:	00000000 	nop
  4f5c1c:	8fbc0010 	lw	gp,16(sp)
  4f5c20:	8fbf0024 	lw	ra,36(sp)
  4f5c24:	8fb00020 	lw	s0,32(sp)
  4f5c28:	03e00008 	jr	ra
  4f5c2c:	27bd0028 	addiu	sp,sp,40

004f5c30 <adPoeUpdateFanLed@@Base>:
  4f5c30:	3c1c00a3 	lui	gp,0xa3
  4f5c34:	279cbce0 	addiu	gp,gp,-17184
  4f5c38:	0399e021 	addu	gp,gp,t9
  4f5c3c:	27bdffd8 	addiu	sp,sp,-40
  4f5c40:	afbf0024 	sw	ra,36(sp)
  4f5c44:	afb00020 	sw	s0,32(sp)
  4f5c48:	afbc0010 	sw	gp,16(sp)
  4f5c4c:	8f82802c 	lw	v0,-32724(gp)
  4f5c50:	afa00018 	sw	zero,24(sp)
  4f5c54:	8f90d0f4 	lw	s0,-12044(gp)
  4f5c58:	8c42c4e8 	lw	v0,-15128(v0)
  4f5c5c:	00000000 	nop
  4f5c60:	14400005 	bnez	v0,4f5c78 <adPoeUpdateFanLed@@Base+0x48>
  4f5c64:	00002821 	move	a1,zero
  4f5c68:	8e020000 	lw	v0,0(s0)
  4f5c6c:	8f99c400 	lw	t9,-15360(gp)
  4f5c70:	1000001d 	b	4f5ce8 <adPoeUpdateFanLed@@Base+0xb8>
  4f5c74:	00000000 	nop
  4f5c78:	8e020000 	lw	v0,0(s0)
  4f5c7c:	8f998834 	lw	t9,-30668(gp)
  4f5c80:	90440248 	lbu	a0,584(v0)
  4f5c84:	0320f809 	jalr	t9
  4f5c88:	27a50018 	addiu	a1,sp,24
  4f5c8c:	8fbc0010 	lw	gp,16(sp)
  4f5c90:	04410005 	bgez	v0,4f5ca8 <adPoeUpdateFanLed@@Base+0x78>
  4f5c94:	24050001 	li	a1,1
  4f5c98:	8e020000 	lw	v0,0(s0)
  4f5c9c:	8f99c400 	lw	t9,-15360(gp)
  4f5ca0:	10000011 	b	4f5ce8 <adPoeUpdateFanLed@@Base+0xb8>
  4f5ca4:	00000000 	nop
  4f5ca8:	8fa20018 	lw	v0,24(sp)
  4f5cac:	8f99c400 	lw	t9,-15360(gp)
  4f5cb0:	1440000b 	bnez	v0,4f5ce0 <adPoeUpdateFanLed@@Base+0xb0>
  4f5cb4:	00000000 	nop
  4f5cb8:	8e020000 	lw	v0,0(s0)
  4f5cbc:	00000000 	nop
  4f5cc0:	90440249 	lbu	a0,585(v0)
  4f5cc4:	0320f809 	jalr	t9
  4f5cc8:	00002821 	move	a1,zero
  4f5ccc:	8fbc0010 	lw	gp,16(sp)
  4f5cd0:	8e020000 	lw	v0,0(s0)
  4f5cd4:	8f99c400 	lw	t9,-15360(gp)
  4f5cd8:	1000000a 	b	4f5d04 <adPoeUpdateFanLed@@Base+0xd4>
  4f5cdc:	24050001 	li	a1,1
  4f5ce0:	8e020000 	lw	v0,0(s0)
  4f5ce4:	24050001 	li	a1,1
  4f5ce8:	90440249 	lbu	a0,585(v0)
  4f5cec:	0320f809 	jalr	t9
  4f5cf0:	00000000 	nop
  4f5cf4:	8fbc0010 	lw	gp,16(sp)
  4f5cf8:	8e020000 	lw	v0,0(s0)
  4f5cfc:	00002821 	move	a1,zero
  4f5d00:	8f99c400 	lw	t9,-15360(gp)
  4f5d04:	9044024a 	lbu	a0,586(v0)
  4f5d08:	0320f809 	jalr	t9
  4f5d0c:	00000000 	nop
  4f5d10:	8fbc0010 	lw	gp,16(sp)
  4f5d14:	8fbf0024 	lw	ra,36(sp)
  4f5d18:	8fb00020 	lw	s0,32(sp)
  4f5d1c:	03e00008 	jr	ra
  4f5d20:	27bd0028 	addiu	sp,sp,40

004f5d24 <adLedPoeMaxLedBlink@@Base>:
  4f5d24:	3c1c00a3 	lui	gp,0xa3
  4f5d28:	279cbbec 	addiu	gp,gp,-17428
  4f5d2c:	0399e021 	addu	gp,gp,t9
  4f5d30:	27bdffd8 	addiu	sp,sp,-40
  4f5d34:	afbf0024 	sw	ra,36(sp)
  4f5d38:	afb00020 	sw	s0,32(sp)
  4f5d3c:	afbc0010 	sw	gp,16(sp)
  4f5d40:	8f82802c 	lw	v0,-32724(gp)
  4f5d44:	8f90d0f4 	lw	s0,-12044(gp)
  4f5d48:	8c42c4e8 	lw	v0,-15128(v0)
  4f5d4c:	00000000 	nop
  4f5d50:	14400005 	bnez	v0,4f5d68 <adLedPoeMaxLedBlink@@Base+0x44>
  4f5d54:	00002821 	move	a1,zero
  4f5d58:	8e020000 	lw	v0,0(s0)
  4f5d5c:	8f99c400 	lw	t9,-15360(gp)
  4f5d60:	1000000d 	b	4f5d98 <adLedPoeMaxLedBlink@@Base+0x74>
  4f5d64:	00000000 	nop
  4f5d68:	8e020000 	lw	v0,0(s0)
  4f5d6c:	afa00018 	sw	zero,24(sp)
  4f5d70:	8f998834 	lw	t9,-30668(gp)
  4f5d74:	9044024e 	lbu	a0,590(v0)
  4f5d78:	0320f809 	jalr	t9
  4f5d7c:	27a50018 	addiu	a1,sp,24
  4f5d80:	8fbc0010 	lw	gp,16(sp)
  4f5d84:	8fa50018 	lw	a1,24(sp)
  4f5d88:	8e020000 	lw	v0,0(s0)
  4f5d8c:	8f99c400 	lw	t9,-15360(gp)
  4f5d90:	38a50001 	xori	a1,a1,0x1
  4f5d94:	afa50018 	sw	a1,24(sp)
  4f5d98:	9044024e 	lbu	a0,590(v0)
  4f5d9c:	0320f809 	jalr	t9
  4f5da0:	00000000 	nop
  4f5da4:	8fbc0010 	lw	gp,16(sp)
  4f5da8:	8fbf0024 	lw	ra,36(sp)
  4f5dac:	8fb00020 	lw	s0,32(sp)
  4f5db0:	03e00008 	jr	ra
  4f5db4:	27bd0028 	addiu	sp,sp,40

004f5db8 <adLedPoeMaxLedOff@@Base>:
  4f5db8:	3c1c00a3 	lui	gp,0xa3
  4f5dbc:	279cbb58 	addiu	gp,gp,-17576
  4f5dc0:	0399e021 	addu	gp,gp,t9
  4f5dc4:	8f82d0f4 	lw	v0,-12044(gp)
  4f5dc8:	8f99c400 	lw	t9,-15360(gp)
  4f5dcc:	00002821 	move	a1,zero
  4f5dd0:	8c420000 	lw	v0,0(v0)
  4f5dd4:	00000000 	nop
  4f5dd8:	9044024e 	lbu	a0,590(v0)
  4f5ddc:	03200008 	jr	t9
  4f5de0:	00000000 	nop

004f5de4 <adLedPoeMaxLedOn@@Base>:
  4f5de4:	3c1c00a3 	lui	gp,0xa3
  4f5de8:	279cbb2c 	addiu	gp,gp,-17620
  4f5dec:	0399e021 	addu	gp,gp,t9
  4f5df0:	8f82802c 	lw	v0,-32724(gp)
  4f5df4:	8f83d0f4 	lw	v1,-12044(gp)
  4f5df8:	8f99c400 	lw	t9,-15360(gp)
  4f5dfc:	8c42c4e8 	lw	v0,-15128(v0)
  4f5e00:	00000000 	nop
  4f5e04:	14400004 	bnez	v0,4f5e18 <adLedPoeMaxLedOn@@Base+0x34>
  4f5e08:	00002821 	move	a1,zero
  4f5e0c:	8c620000 	lw	v0,0(v1)
  4f5e10:	10000003 	b	4f5e20 <adLedPoeMaxLedOn@@Base+0x3c>
  4f5e14:	00000000 	nop
  4f5e18:	8c620000 	lw	v0,0(v1)
  4f5e1c:	24050001 	li	a1,1
  4f5e20:	9044024e 	lbu	a0,590(v0)
  4f5e24:	03200008 	jr	t9
  4f5e28:	00000000 	nop

004f5e2c <adUsbCtrl@@Base>:
  4f5e2c:	3c1c00a3 	lui	gp,0xa3
  4f5e30:	279cbae4 	addiu	gp,gp,-17692
  4f5e34:	0399e021 	addu	gp,gp,t9
  4f5e38:	27bdffe0 	addiu	sp,sp,-32
  4f5e3c:	afbf001c 	sw	ra,28(sp)
  4f5e40:	afb00018 	sw	s0,24(sp)
  4f5e44:	afbc0010 	sw	gp,16(sp)
  4f5e48:	0480001e 	bltz	a0,4f5ec4 <adUsbCtrl@@Base+0x98>
  4f5e4c:	24030001 	li	v1,1
  4f5e50:	8f90d0f4 	lw	s0,-12044(gp)
  4f5e54:	00000000 	nop
  4f5e58:	8e020000 	lw	v0,0(s0)
  4f5e5c:	00000000 	nop
  4f5e60:	90420246 	lbu	v0,582(v0)
  4f5e64:	00000000 	nop
  4f5e68:	10400016 	beqz	v0,4f5ec4 <adUsbCtrl@@Base+0x98>
  4f5e6c:	00001821 	move	v1,zero
  4f5e70:	8f83802c 	lw	v1,-32724(gp)
  4f5e74:	10800007 	beqz	a0,4f5e94 <adUsbCtrl@@Base+0x68>
  4f5e78:	24020001 	li	v0,1
  4f5e7c:	8f99b210 	lw	t9,-19952(gp)
  4f5e80:	00000000 	nop
  4f5e84:	0320f809 	jalr	t9
  4f5e88:	ac62c4fc 	sw	v0,-15108(v1)
  4f5e8c:	1000000b 	b	4f5ebc <adUsbCtrl@@Base+0x90>
  4f5e90:	00000000 	nop
  4f5e94:	8f99bbc0 	lw	t9,-17472(gp)
  4f5e98:	00000000 	nop
  4f5e9c:	0320f809 	jalr	t9
  4f5ea0:	ac60c4fc 	sw	zero,-15108(v1)
  4f5ea4:	8fbc0010 	lw	gp,16(sp)
  4f5ea8:	8e020000 	lw	v0,0(s0)
  4f5eac:	8f99c400 	lw	t9,-15360(gp)
  4f5eb0:	90440247 	lbu	a0,583(v0)
  4f5eb4:	0320f809 	jalr	t9
  4f5eb8:	00002821 	move	a1,zero
  4f5ebc:	8fbc0010 	lw	gp,16(sp)
  4f5ec0:	00001821 	move	v1,zero
  4f5ec4:	8fbf001c 	lw	ra,28(sp)
  4f5ec8:	8fb00018 	lw	s0,24(sp)
  4f5ecc:	00601021 	move	v0,v1
  4f5ed0:	03e00008 	jr	ra
  4f5ed4:	27bd0020 	addiu	sp,sp,32

004f5ed8 <adSerDetTask@@Base>:
  4f5ed8:	3c1c00a3 	lui	gp,0xa3
  4f5edc:	279cba38 	addiu	gp,gp,-17864
  4f5ee0:	0399e021 	addu	gp,gp,t9
  4f5ee4:	27bdffd0 	addiu	sp,sp,-48
  4f5ee8:	afbf002c 	sw	ra,44(sp)
  4f5eec:	afb20028 	sw	s2,40(sp)
  4f5ef0:	afb10024 	sw	s1,36(sp)
  4f5ef4:	afb00020 	sw	s0,32(sp)
  4f5ef8:	afbc0010 	sw	gp,16(sp)
  4f5efc:	8f91d0f4 	lw	s1,-12044(gp)
  4f5f00:	afa00018 	sw	zero,24(sp)
  4f5f04:	00008021 	move	s0,zero
  4f5f08:	27b20018 	addiu	s2,sp,24
  4f5f0c:	8e220000 	lw	v0,0(s1)
  4f5f10:	8f998834 	lw	t9,-30668(gp)
  4f5f14:	90440246 	lbu	a0,582(v0)
  4f5f18:	0320f809 	jalr	t9
  4f5f1c:	02402821 	move	a1,s2
  4f5f20:	8fa20018 	lw	v0,24(sp)
  4f5f24:	8fbc0010 	lw	gp,16(sp)
  4f5f28:	10400006 	beqz	v0,4f5f44 <adSerDetTask@@Base+0x6c>
  4f5f2c:	00000000 	nop
  4f5f30:	8f99c400 	lw	t9,-15360(gp)
  4f5f34:	1202000d 	beq	s0,v0,4f5f6c <adSerDetTask@@Base+0x94>
  4f5f38:	24050001 	li	a1,1
  4f5f3c:	10000004 	b	4f5f50 <adSerDetTask@@Base+0x78>
  4f5f40:	00000000 	nop
  4f5f44:	8f99c400 	lw	t9,-15360(gp)
  4f5f48:	12000008 	beqz	s0,4f5f6c <adSerDetTask@@Base+0x94>
  4f5f4c:	00002821 	move	a1,zero
  4f5f50:	8e220000 	lw	v0,0(s1)
  4f5f54:	00000000 	nop
  4f5f58:	90440247 	lbu	a0,583(v0)
  4f5f5c:	0320f809 	jalr	t9
  4f5f60:	00000000 	nop
  4f5f64:	8fbc0010 	lw	gp,16(sp)
  4f5f68:	00000000 	nop
  4f5f6c:	8f99c8f4 	lw	t9,-14092(gp)
  4f5f70:	8fb00018 	lw	s0,24(sp)
  4f5f74:	0320f809 	jalr	t9
  4f5f78:	24040001 	li	a0,1
  4f5f7c:	8fbc0010 	lw	gp,16(sp)
  4f5f80:	1000ffe2 	b	4f5f0c <adSerDetTask@@Base+0x34>
  4f5f84:	00000000 	nop

004f5f88 <adSFPEnable@@Base>:
  4f5f88:	3c1c00a3 	lui	gp,0xa3
  4f5f8c:	279cb988 	addiu	gp,gp,-18040
  4f5f90:	0399e021 	addu	gp,gp,t9
  4f5f94:	27bdffe0 	addiu	sp,sp,-32
  4f5f98:	afbf001c 	sw	ra,28(sp)
  4f5f9c:	afbc0010 	sw	gp,16(sp)
  4f5fa0:	8f82d0f4 	lw	v0,-12044(gp)
  4f5fa4:	00042400 	sll	a0,a0,0x10
  4f5fa8:	30a500ff 	andi	a1,a1,0xff
  4f5fac:	8c470000 	lw	a3,0(v0)
  4f5fb0:	00042403 	sra	a0,a0,0x10
  4f5fb4:	00003021 	move	a2,zero
  4f5fb8:	90e802c0 	lbu	t0,704(a3)
  4f5fbc:	10000010 	b	4f6000 <adSFPEnable@@Base+0x78>
  4f5fc0:	00e01821 	move	v1,a3
  4f5fc4:	906202c1 	lbu	v0,705(v1)
  4f5fc8:	00000000 	nop
  4f5fcc:	1482000b 	bne	a0,v0,4f5ffc <adSFPEnable@@Base+0x74>
  4f5fd0:	24630004 	addiu	v1,v1,4
  4f5fd4:	24c200b0 	addiu	v0,a2,176
  4f5fd8:	00021080 	sll	v0,v0,0x2
  4f5fdc:	00e21021 	addu	v0,a3,v0
  4f5fe0:	8f99c400 	lw	t9,-15360(gp)
  4f5fe4:	90440002 	lbu	a0,2(v0)
  4f5fe8:	0320f809 	jalr	t9
  4f5fec:	38a50001 	xori	a1,a1,0x1
  4f5ff0:	8fbc0010 	lw	gp,16(sp)
  4f5ff4:	10000005 	b	4f600c <adSFPEnable@@Base+0x84>
  4f5ff8:	00000000 	nop
  4f5ffc:	24c60001 	addiu	a2,a2,1
  4f6000:	00c8102a 	slt	v0,a2,t0
  4f6004:	1440ffef 	bnez	v0,4f5fc4 <adSFPEnable@@Base+0x3c>
  4f6008:	00000000 	nop
  4f600c:	8fbf001c 	lw	ra,28(sp)
  4f6010:	00001021 	move	v0,zero
  4f6014:	03e00008 	jr	ra
  4f6018:	27bd0020 	addiu	sp,sp,32

004f601c <adSysLedSet@@Base>:
  4f601c:	3c1c00a3 	lui	gp,0xa3
  4f6020:	279cb8f4 	addiu	gp,gp,-18188
  4f6024:	0399e021 	addu	gp,gp,t9
  4f6028:	8f82d0f4 	lw	v0,-12044(gp)
  4f602c:	00000000 	nop
  4f6030:	8c420000 	lw	v0,0(v0)
  4f6034:	00000000 	nop
  4f6038:	10400008 	beqz	v0,4f605c <adSysLedSet@@Base+0x40>
  4f603c:	00000000 	nop
  4f6040:	14800006 	bnez	a0,4f605c <adSysLedSet@@Base+0x40>
  4f6044:	00000000 	nop
  4f6048:	90440242 	lbu	a0,578(v0)
  4f604c:	8f99c400 	lw	t9,-15360(gp)
  4f6050:	0005282b 	sltu	a1,zero,a1
  4f6054:	03200008 	jr	t9
  4f6058:	00000000 	nop
  4f605c:	03e00008 	jr	ra
  4f6060:	00000000 	nop

004f6064 <adGpioCommonInit@@Base>:
  4f6064:	3c1c00a3 	lui	gp,0xa3
  4f6068:	279cb8ac 	addiu	gp,gp,-18260
  4f606c:	0399e021 	addu	gp,gp,t9
  4f6070:	27bdffb8 	addiu	sp,sp,-72
  4f6074:	afbf0044 	sw	ra,68(sp)
  4f6078:	afb30040 	sw	s3,64(sp)
  4f607c:	afb2003c 	sw	s2,60(sp)
  4f6080:	afb10038 	sw	s1,56(sp)
  4f6084:	afb00034 	sw	s0,52(sp)
  4f6088:	afbc0010 	sw	gp,16(sp)
  4f608c:	8f82d0f4 	lw	v0,-12044(gp)
  4f6090:	308300ff 	andi	v1,a0,0xff
  4f6094:	30a500ff 	andi	a1,a1,0xff
  4f6098:	8c440000 	lw	a0,0(v0)
  4f609c:	00000000 	nop
  4f60a0:	1080005a 	beqz	a0,4f620c <adGpioCommonInit@@Base+0x1a8>
  4f60a4:	24100001 	li	s0,1
  4f60a8:	24620008 	addiu	v0,v1,8
  4f60ac:	000210c0 	sll	v0,v0,0x3
  4f60b0:	00821021 	addu	v0,a0,v0
  4f60b4:	90430003 	lbu	v1,3(v0)
  4f60b8:	90520004 	lbu	s2,4(v0)
  4f60bc:	90530005 	lbu	s3,5(v0)
  4f60c0:	14a00004 	bnez	a1,4f60d4 <adGpioCommonInit@@Base+0x70>
  4f60c4:	24040001 	li	a0,1
  4f60c8:	90510006 	lbu	s1,6(v0)
  4f60cc:	10000002 	b	4f60d8 <adGpioCommonInit@@Base+0x74>
  4f60d0:	00000000 	nop
  4f60d4:	90510007 	lbu	s1,7(v0)
  4f60d8:	1064000a 	beq	v1,a0,4f6104 <adGpioCommonInit@@Base+0xa0>
  4f60dc:	02203021 	move	a2,s1
  4f60e0:	1060004a 	beqz	v1,4f620c <adGpioCommonInit@@Base+0x1a8>
  4f60e4:	00008021 	move	s0,zero
  4f60e8:	24020002 	li	v0,2
  4f60ec:	1062000b 	beq	v1,v0,4f611c <adGpioCommonInit@@Base+0xb8>
  4f60f0:	24020003 	li	v0,3
  4f60f4:	10620038 	beq	v1,v0,4f61d8 <adGpioCommonInit@@Base+0x174>
  4f60f8:	00000000 	nop
  4f60fc:	10000043 	b	4f620c <adGpioCommonInit@@Base+0x1a8>
  4f6100:	2410ffff 	li	s0,-1
  4f6104:	00122400 	sll	a0,s2,0x10
  4f6108:	8f99da44 	lw	t9,-9660(gp)
  4f610c:	02642025 	or	a0,s3,a0
  4f6110:	00002821 	move	a1,zero
  4f6114:	1000002b 	b	4f61c4 <adGpioCommonInit@@Base+0x160>
  4f6118:	00003821 	move	a3,zero
  4f611c:	8f828030 	lw	v0,-32720(gp)
  4f6120:	00000000 	nop
  4f6124:	8c42ca7c 	lw	v0,-13700(v0)
  4f6128:	00000000 	nop
  4f612c:	1440001d 	bnez	v0,4f61a4 <adGpioCommonInit@@Base+0x140>
  4f6130:	00000000 	nop
  4f6134:	8f828030 	lw	v0,-32720(gp)
  4f6138:	00000000 	nop
  4f613c:	8c42ca78 	lw	v0,-13704(v0)
  4f6140:	00000000 	nop
  4f6144:	10400003 	beqz	v0,4f6154 <adGpioCommonInit@@Base+0xf0>
  4f6148:	00000000 	nop
  4f614c:	10000002 	b	4f6158 <adGpioCommonInit@@Base+0xf4>
  4f6150:	afa40018 	sw	a0,24(sp)
  4f6154:	afa30018 	sw	v1,24(sp)
  4f6158:	8f99dd24 	lw	t9,-8924(gp)
  4f615c:	00002021 	move	a0,zero
  4f6160:	00002821 	move	a1,zero
  4f6164:	27a60018 	addiu	a2,sp,24
  4f6168:	afa0001c 	sw	zero,28(sp)
  4f616c:	0320f809 	jalr	t9
  4f6170:	afa00020 	sw	zero,32(sp)
  4f6174:	8fbc0010 	lw	gp,16(sp)
  4f6178:	00002021 	move	a0,zero
  4f617c:	00002821 	move	a1,zero
  4f6180:	8f99b030 	lw	t9,-20432(gp)
  4f6184:	00000000 	nop
  4f6188:	0320f809 	jalr	t9
  4f618c:	24060001 	li	a2,1
  4f6190:	8fbc0010 	lw	gp,16(sp)
  4f6194:	24030001 	li	v1,1
  4f6198:	8f828030 	lw	v0,-32720(gp)
  4f619c:	00000000 	nop
  4f61a0:	ac43ca7c 	sw	v1,-13700(v0)
  4f61a4:	8f99f9e0 	lw	t9,-1568(gp)
  4f61a8:	afb10024 	sw	s1,36(sp)
  4f61ac:	afa00028 	sw	zero,40(sp)
  4f61b0:	afa0002c 	sw	zero,44(sp)
  4f61b4:	02402821 	move	a1,s2
  4f61b8:	02603021 	move	a2,s3
  4f61bc:	00002021 	move	a0,zero
  4f61c0:	27a70024 	addiu	a3,sp,36
  4f61c4:	0320f809 	jalr	t9
  4f61c8:	00008021 	move	s0,zero
  4f61cc:	8fbc0010 	lw	gp,16(sp)
  4f61d0:	1000000f 	b	4f6210 <adGpioCommonInit@@Base+0x1ac>
  4f61d4:	02001021 	move	v0,s0
  4f61d8:	8f99cd28 	lw	t9,-13016(gp)
  4f61dc:	12200005 	beqz	s1,4f61f4 <adGpioCommonInit@@Base+0x190>
  4f61e0:	02402821 	move	a1,s2
  4f61e4:	02603021 	move	a2,s3
  4f61e8:	00002021 	move	a0,zero
  4f61ec:	10000004 	b	4f6200 <adGpioCommonInit@@Base+0x19c>
  4f61f0:	24070001 	li	a3,1
  4f61f4:	02603021 	move	a2,s3
  4f61f8:	00002021 	move	a0,zero
  4f61fc:	00003821 	move	a3,zero
  4f6200:	0320f809 	jalr	t9
  4f6204:	00000000 	nop
  4f6208:	8fbc0010 	lw	gp,16(sp)
  4f620c:	02001021 	move	v0,s0
  4f6210:	8fbf0044 	lw	ra,68(sp)
  4f6214:	8fb30040 	lw	s3,64(sp)
  4f6218:	8fb2003c 	lw	s2,60(sp)
  4f621c:	8fb10038 	lw	s1,56(sp)
  4f6220:	8fb00034 	lw	s0,52(sp)
  4f6224:	03e00008 	jr	ra
  4f6228:	27bd0048 	addiu	sp,sp,72

004f622c <adPoeBoardInit@@Base>:
  4f622c:	3c1c00a3 	lui	gp,0xa3
  4f6230:	279cb6e4 	addiu	gp,gp,-18716
  4f6234:	0399e021 	addu	gp,gp,t9
  4f6238:	27bdffd8 	addiu	sp,sp,-40
  4f623c:	afbf0024 	sw	ra,36(sp)
  4f6240:	afb00020 	sw	s0,32(sp)
  4f6244:	afbc0018 	sw	gp,24(sp)
  4f6248:	8f90d0f4 	lw	s0,-12044(gp)
  4f624c:	8f99ff6c 	lw	t9,-148(gp)
  4f6250:	8e020000 	lw	v0,0(s0)
  4f6254:	00000000 	nop
  4f6258:	90440248 	lbu	a0,584(v0)
  4f625c:	0320f809 	jalr	t9
  4f6260:	00002821 	move	a1,zero
  4f6264:	8fbc0018 	lw	gp,24(sp)
  4f6268:	8e020000 	lw	v0,0(s0)
  4f626c:	8f99ff6c 	lw	t9,-148(gp)
  4f6270:	90440249 	lbu	a0,585(v0)
  4f6274:	0320f809 	jalr	t9
  4f6278:	24050001 	li	a1,1
  4f627c:	8fbc0018 	lw	gp,24(sp)
  4f6280:	8e020000 	lw	v0,0(s0)
  4f6284:	8f99ff6c 	lw	t9,-148(gp)
  4f6288:	9044024a 	lbu	a0,586(v0)
  4f628c:	0320f809 	jalr	t9
  4f6290:	24050001 	li	a1,1
  4f6294:	8fbc0018 	lw	gp,24(sp)
  4f6298:	8e020000 	lw	v0,0(s0)
  4f629c:	8f99ff6c 	lw	t9,-148(gp)
  4f62a0:	9044024b 	lbu	a0,587(v0)
  4f62a4:	0320f809 	jalr	t9
  4f62a8:	00002821 	move	a1,zero
  4f62ac:	8fbc0018 	lw	gp,24(sp)
  4f62b0:	8e020000 	lw	v0,0(s0)
  4f62b4:	8f99ff6c 	lw	t9,-148(gp)
  4f62b8:	9044024c 	lbu	a0,588(v0)
  4f62bc:	0320f809 	jalr	t9
  4f62c0:	24050001 	li	a1,1
  4f62c4:	8fbc0018 	lw	gp,24(sp)
  4f62c8:	8e020000 	lw	v0,0(s0)
  4f62cc:	8f99ff6c 	lw	t9,-148(gp)
  4f62d0:	9044024d 	lbu	a0,589(v0)
  4f62d4:	0320f809 	jalr	t9
  4f62d8:	24050001 	li	a1,1
  4f62dc:	8fbc0018 	lw	gp,24(sp)
  4f62e0:	8e020000 	lw	v0,0(s0)
  4f62e4:	8f99ff6c 	lw	t9,-148(gp)
  4f62e8:	9044024e 	lbu	a0,590(v0)
  4f62ec:	0320f809 	jalr	t9
  4f62f0:	24050001 	li	a1,1
  4f62f4:	8fbc0018 	lw	gp,24(sp)
  4f62f8:	8e020000 	lw	v0,0(s0)
  4f62fc:	8f99ff6c 	lw	t9,-148(gp)
  4f6300:	90440259 	lbu	a0,601(v0)
  4f6304:	0320f809 	jalr	t9
  4f6308:	24050001 	li	a1,1
  4f630c:	8fbc0018 	lw	gp,24(sp)
  4f6310:	8e020000 	lw	v0,0(s0)
  4f6314:	8f99ff6c 	lw	t9,-148(gp)
  4f6318:	9044025a 	lbu	a0,602(v0)
  4f631c:	0320f809 	jalr	t9
  4f6320:	24050001 	li	a1,1
  4f6324:	8fbc0018 	lw	gp,24(sp)
  4f6328:	8e020000 	lw	v0,0(s0)
  4f632c:	8f99ff6c 	lw	t9,-148(gp)
  4f6330:	9044025b 	lbu	a0,603(v0)
  4f6334:	0320f809 	jalr	t9
  4f6338:	24050001 	li	a1,1
  4f633c:	8fbc0018 	lw	gp,24(sp)
  4f6340:	8e020000 	lw	v0,0(s0)
  4f6344:	8f99e9e8 	lw	t9,-5656(gp)
  4f6348:	90430258 	lbu	v1,600(v0)
  4f634c:	8f828028 	lw	v0,-32728(gp)
  4f6350:	00031880 	sll	v1,v1,0x2
  4f6354:	24429520 	addiu	v0,v0,-27360
  4f6358:	00621821 	addu	v1,v1,v0
  4f635c:	8c620000 	lw	v0,0(v1)
  4f6360:	00000000 	nop
  4f6364:	000227c2 	srl	a0,v0,0x1f
  4f6368:	00822021 	addu	a0,a0,v0
  4f636c:	0320f809 	jalr	t9
  4f6370:	00042043 	sra	a0,a0,0x1
  4f6374:	8e020000 	lw	v0,0(s0)
  4f6378:	8fbc0018 	lw	gp,24(sp)
  4f637c:	9042024b 	lbu	v0,587(v0)
  4f6380:	8f83802c 	lw	v1,-32724(gp)
  4f6384:	14400002 	bnez	v0,4f6390 <adPoeBoardInit@@Base+0x164>
  4f6388:	24020002 	li	v0,2
  4f638c:	24020001 	li	v0,1
  4f6390:	8f848028 	lw	a0,-32728(gp)
  4f6394:	8f878020 	lw	a3,-32736(gp)
  4f6398:	8f99f698 	lw	t9,-2408(gp)
  4f639c:	ac62c4ec 	sw	v0,-15124(v1)
  4f63a0:	24840144 	addiu	a0,a0,324
  4f63a4:	afa00010 	sw	zero,16(sp)
  4f63a8:	24e7565c 	addiu	a3,a3,22108
  4f63ac:	24051000 	li	a1,4096
  4f63b0:	0320f809 	jalr	t9
  4f63b4:	24060032 	li	a2,50
  4f63b8:	8fbc0018 	lw	gp,24(sp)
  4f63bc:	2410ffff 	li	s0,-1
  4f63c0:	8f83802c 	lw	v1,-32724(gp)
  4f63c4:	10500017 	beq	v0,s0,4f6424 <adPoeBoardInit@@Base+0x1f8>
  4f63c8:	ac62c4f0 	sw	v0,-15120(v1)
  4f63cc:	8f82d0f4 	lw	v0,-12044(gp)
  4f63d0:	00000000 	nop
  4f63d4:	8c420000 	lw	v0,0(v0)
  4f63d8:	00000000 	nop
  4f63dc:	9042024b 	lbu	v0,587(v0)
  4f63e0:	00000000 	nop
  4f63e4:	10400012 	beqz	v0,4f6430 <adPoeBoardInit@@Base+0x204>
  4f63e8:	00001021 	move	v0,zero
  4f63ec:	8f848028 	lw	a0,-32728(gp)
  4f63f0:	8f878020 	lw	a3,-32736(gp)
  4f63f4:	8f99f698 	lw	t9,-2408(gp)
  4f63f8:	afa00010 	sw	zero,16(sp)
  4f63fc:	24840154 	addiu	a0,a0,340
  4f6400:	24e75750 	addiu	a3,a3,22352
  4f6404:	24051000 	li	a1,4096
  4f6408:	0320f809 	jalr	t9
  4f640c:	24060032 	li	a2,50
  4f6410:	8fbc0018 	lw	gp,24(sp)
  4f6414:	00000000 	nop
  4f6418:	8f83802c 	lw	v1,-32724(gp)
  4f641c:	14500003 	bne	v0,s0,4f642c <adPoeBoardInit@@Base+0x200>
  4f6420:	ac62c4f4 	sw	v0,-15116(v1)
  4f6424:	10000002 	b	4f6430 <adPoeBoardInit@@Base+0x204>
  4f6428:	24020004 	li	v0,4
  4f642c:	00001021 	move	v0,zero
  4f6430:	8fbf0024 	lw	ra,36(sp)
  4f6434:	8fb00020 	lw	s0,32(sp)
  4f6438:	03e00008 	jr	ra
  4f643c:	27bd0028 	addiu	sp,sp,40

004f6440 <adPoeChipReset@@Base>:
  4f6440:	3c1c00a3 	lui	gp,0xa3
  4f6444:	279cb4d0 	addiu	gp,gp,-19248
  4f6448:	0399e021 	addu	gp,gp,t9
  4f644c:	27bdffe0 	addiu	sp,sp,-32
  4f6450:	afbf001c 	sw	ra,28(sp)
  4f6454:	afb00018 	sw	s0,24(sp)
  4f6458:	afbc0010 	sw	gp,16(sp)
  4f645c:	8f90d0f4 	lw	s0,-12044(gp)
  4f6460:	8f99ff6c 	lw	t9,-148(gp)
  4f6464:	8e020000 	lw	v0,0(s0)
  4f6468:	00000000 	nop
  4f646c:	9044024f 	lbu	a0,591(v0)
  4f6470:	0320f809 	jalr	t9
  4f6474:	24050001 	li	a1,1
  4f6478:	8fbc0010 	lw	gp,16(sp)
  4f647c:	8e020000 	lw	v0,0(s0)
  4f6480:	8f99c400 	lw	t9,-15360(gp)
  4f6484:	9044024f 	lbu	a0,591(v0)
  4f6488:	0320f809 	jalr	t9
  4f648c:	24050001 	li	a1,1
  4f6490:	8fbc0010 	lw	gp,16(sp)
  4f6494:	3c040007 	lui	a0,0x7
  4f6498:	8f99a448 	lw	t9,-23480(gp)
  4f649c:	00000000 	nop
  4f64a0:	0320f809 	jalr	t9
  4f64a4:	3484a120 	ori	a0,a0,0xa120
  4f64a8:	8fbc0010 	lw	gp,16(sp)
  4f64ac:	8e020000 	lw	v0,0(s0)
  4f64b0:	8f99c400 	lw	t9,-15360(gp)
  4f64b4:	9044024f 	lbu	a0,591(v0)
  4f64b8:	0320f809 	jalr	t9
  4f64bc:	00002821 	move	a1,zero
  4f64c0:	8fbc0010 	lw	gp,16(sp)
  4f64c4:	3c04001e 	lui	a0,0x1e
  4f64c8:	8f99a448 	lw	t9,-23480(gp)
  4f64cc:	00000000 	nop
  4f64d0:	0320f809 	jalr	t9
  4f64d4:	34848480 	ori	a0,a0,0x8480
  4f64d8:	8fbc0010 	lw	gp,16(sp)
  4f64dc:	8fbf001c 	lw	ra,28(sp)
  4f64e0:	8fb00018 	lw	s0,24(sp)
  4f64e4:	00001021 	move	v0,zero
  4f64e8:	03e00008 	jr	ra
  4f64ec:	27bd0020 	addiu	sp,sp,32

004f64f0 <adPoeBoardReset@@Base>:
  4f64f0:	3c1c00a3 	lui	gp,0xa3
  4f64f4:	279cb420 	addiu	gp,gp,-19424
  4f64f8:	0399e021 	addu	gp,gp,t9
  4f64fc:	27bdffe0 	addiu	sp,sp,-32
  4f6500:	afbf001c 	sw	ra,28(sp)
  4f6504:	afbc0010 	sw	gp,16(sp)
  4f6508:	8f828030 	lw	v0,-32720(gp)
  4f650c:	8f868028 	lw	a2,-32728(gp)
  4f6510:	8f99fb20 	lw	t9,-1248(gp)
  4f6514:	8c44ca60 	lw	a0,-13728(v0)
  4f6518:	8f828030 	lw	v0,-32720(gp)
  4f651c:	24030001 	li	v1,1
  4f6520:	24c600b0 	addiu	a2,a2,176
  4f6524:	ac43ca58 	sw	v1,-13736(v0)
  4f6528:	2405ffff 	li	a1,-1
  4f652c:	0320f809 	jalr	t9
  4f6530:	240715bd 	li	a3,5565
  4f6534:	8fbc0010 	lw	gp,16(sp)
  4f6538:	8fbf001c 	lw	ra,28(sp)
  4f653c:	8f99a438 	lw	t9,-23496(gp)
  4f6540:	00000000 	nop
  4f6544:	03200008 	jr	t9
  4f6548:	27bd0020 	addiu	sp,sp,32

004f654c <adUsbSerInit@@Base>:
  4f654c:	3c1c00a3 	lui	gp,0xa3
  4f6550:	279cb3c4 	addiu	gp,gp,-19516
  4f6554:	0399e021 	addu	gp,gp,t9
  4f6558:	27bdffe0 	addiu	sp,sp,-32
  4f655c:	afbf001c 	sw	ra,28(sp)
  4f6560:	afb00018 	sw	s0,24(sp)
  4f6564:	afbc0010 	sw	gp,16(sp)
  4f6568:	8f90d0f4 	lw	s0,-12044(gp)
  4f656c:	8f99ff6c 	lw	t9,-148(gp)
  4f6570:	8e020000 	lw	v0,0(s0)
  4f6574:	00000000 	nop
  4f6578:	90440246 	lbu	a0,582(v0)
  4f657c:	0320f809 	jalr	t9
  4f6580:	00002821 	move	a1,zero
  4f6584:	8fbc0010 	lw	gp,16(sp)
  4f6588:	8e020000 	lw	v0,0(s0)
  4f658c:	8f99ff6c 	lw	t9,-148(gp)
  4f6590:	90440247 	lbu	a0,583(v0)
  4f6594:	0320f809 	jalr	t9
  4f6598:	24050001 	li	a1,1
  4f659c:	8fbc0010 	lw	gp,16(sp)
  4f65a0:	8fbf001c 	lw	ra,28(sp)
  4f65a4:	8fb00018 	lw	s0,24(sp)
  4f65a8:	8f99b210 	lw	t9,-19952(gp)
  4f65ac:	00000000 	nop
  4f65b0:	03200008 	jr	t9
  4f65b4:	27bd0020 	addiu	sp,sp,32

004f65b8 <adSysFactoryDefaultPressed@@Base>:
  4f65b8:	3c1c00a3 	lui	gp,0xa3
  4f65bc:	279cb358 	addiu	gp,gp,-19624
  4f65c0:	0399e021 	addu	gp,gp,t9
  4f65c4:	27bdffd0 	addiu	sp,sp,-48
  4f65c8:	afbf002c 	sw	ra,44(sp)
  4f65cc:	afb10028 	sw	s1,40(sp)
  4f65d0:	afb00024 	sw	s0,36(sp)
  4f65d4:	afbc0010 	sw	gp,16(sp)
  4f65d8:	8f908030 	lw	s0,-32720(gp)
  4f65dc:	afa00018 	sw	zero,24(sp)
  4f65e0:	8e02ca74 	lw	v0,-13708(s0)
  4f65e4:	00000000 	nop
  4f65e8:	1440000b 	bnez	v0,4f6618 <adSysFactoryDefaultPressed@@Base+0x60>
  4f65ec:	00000000 	nop
  4f65f0:	8f82d0f4 	lw	v0,-12044(gp)
  4f65f4:	8f99ff6c 	lw	t9,-148(gp)
  4f65f8:	8c420000 	lw	v0,0(v0)
  4f65fc:	00000000 	nop
  4f6600:	90440243 	lbu	a0,579(v0)
  4f6604:	0320f809 	jalr	t9
  4f6608:	00002821 	move	a1,zero
  4f660c:	8fbc0010 	lw	gp,16(sp)
  4f6610:	24020001 	li	v0,1
  4f6614:	ae02ca74 	sw	v0,-13708(s0)
  4f6618:	8f90d0f4 	lw	s0,-12044(gp)
  4f661c:	8f998834 	lw	t9,-30668(gp)
  4f6620:	27b10018 	addiu	s1,sp,24
  4f6624:	8e020000 	lw	v0,0(s0)
  4f6628:	00000000 	nop
  4f662c:	90440243 	lbu	a0,579(v0)
  4f6630:	0320f809 	jalr	t9
  4f6634:	02202821 	move	a1,s1
  4f6638:	8fa20018 	lw	v0,24(sp)
  4f663c:	8fbc0010 	lw	gp,16(sp)
  4f6640:	1440000e 	bnez	v0,4f667c <adSysFactoryDefaultPressed@@Base+0xc4>
  4f6644:	00001821 	move	v1,zero
  4f6648:	8f99a448 	lw	t9,-23480(gp)
  4f664c:	00000000 	nop
  4f6650:	0320f809 	jalr	t9
  4f6654:	24042710 	li	a0,10000
  4f6658:	8fbc0010 	lw	gp,16(sp)
  4f665c:	8e020000 	lw	v0,0(s0)
  4f6660:	8f998834 	lw	t9,-30668(gp)
  4f6664:	90440243 	lbu	a0,579(v0)
  4f6668:	0320f809 	jalr	t9
  4f666c:	02202821 	move	a1,s1
  4f6670:	8fa20018 	lw	v0,24(sp)
  4f6674:	8fbc0010 	lw	gp,16(sp)
  4f6678:	2c430001 	sltiu	v1,v0,1
  4f667c:	8fbf002c 	lw	ra,44(sp)
  4f6680:	8fb10028 	lw	s1,40(sp)
  4f6684:	8fb00024 	lw	s0,36(sp)
  4f6688:	00601021 	move	v0,v1
  4f668c:	03e00008 	jr	ra
  4f6690:	27bd0030 	addiu	sp,sp,48

004f6694 <adSpfInit@@Base>:
  4f6694:	3c1c00a3 	lui	gp,0xa3
  4f6698:	279cb27c 	addiu	gp,gp,-19844
  4f669c:	0399e021 	addu	gp,gp,t9
  4f66a0:	27bdffd8 	addiu	sp,sp,-40
  4f66a4:	afbf0024 	sw	ra,36(sp)
  4f66a8:	afb10020 	sw	s1,32(sp)
  4f66ac:	afb0001c 	sw	s0,28(sp)
  4f66b0:	afbc0010 	sw	gp,16(sp)
  4f66b4:	8f91d0f4 	lw	s1,-12044(gp)
  4f66b8:	10000005 	b	4f66d0 <adSpfInit@@Base+0x3c>
  4f66bc:	00008021 	move	s0,zero
  4f66c0:	90640002 	lbu	a0,2(v1)
  4f66c4:	0320f809 	jalr	t9
  4f66c8:	00000000 	nop
  4f66cc:	8fbc0010 	lw	gp,16(sp)
  4f66d0:	8e220000 	lw	v0,0(s1)
  4f66d4:	260300b0 	addiu	v1,s0,176
  4f66d8:	00031880 	sll	v1,v1,0x2
  4f66dc:	00431821 	addu	v1,v0,v1
  4f66e0:	904202c0 	lbu	v0,704(v0)
  4f66e4:	8f99ff6c 	lw	t9,-148(gp)
  4f66e8:	24050001 	li	a1,1
  4f66ec:	0202102a 	slt	v0,s0,v0
  4f66f0:	1440fff3 	bnez	v0,4f66c0 <adSpfInit@@Base+0x2c>
  4f66f4:	26100001 	addiu	s0,s0,1
  4f66f8:	8f91d0f4 	lw	s1,-12044(gp)
  4f66fc:	10000005 	b	4f6714 <adSpfInit@@Base+0x80>
  4f6700:	00008021 	move	s0,zero
  4f6704:	90640003 	lbu	a0,3(v1)
  4f6708:	0320f809 	jalr	t9
  4f670c:	00000000 	nop
  4f6710:	8fbc0010 	lw	gp,16(sp)
  4f6714:	8e220000 	lw	v0,0(s1)
  4f6718:	260300b0 	addiu	v1,s0,176
  4f671c:	00031880 	sll	v1,v1,0x2
  4f6720:	00431821 	addu	v1,v0,v1
  4f6724:	904202c0 	lbu	v0,704(v0)
  4f6728:	8f99ff6c 	lw	t9,-148(gp)
  4f672c:	00002821 	move	a1,zero
  4f6730:	0202102a 	slt	v0,s0,v0
  4f6734:	1440fff3 	bnez	v0,4f6704 <adSpfInit@@Base+0x70>
  4f6738:	26100001 	addiu	s0,s0,1
  4f673c:	8fbf0024 	lw	ra,36(sp)
  4f6740:	8fb10020 	lw	s1,32(sp)
  4f6744:	8fb0001c 	lw	s0,28(sp)
  4f6748:	03e00008 	jr	ra
  4f674c:	27bd0028 	addiu	sp,sp,40

004f6750 <adLedEnable@@Base>:
  4f6750:	3c1c00a3 	lui	gp,0xa3
  4f6754:	279cb1c0 	addiu	gp,gp,-20032
  4f6758:	0399e021 	addu	gp,gp,t9
  4f675c:	27bdffa0 	addiu	sp,sp,-96
  4f6760:	afbf005c 	sw	ra,92(sp)
  4f6764:	afbe0058 	sw	s8,88(sp)
  4f6768:	afb70054 	sw	s7,84(sp)
  4f676c:	afb60050 	sw	s6,80(sp)
  4f6770:	afb5004c 	sw	s5,76(sp)
  4f6774:	afb40048 	sw	s4,72(sp)
  4f6778:	afb30044 	sw	s3,68(sp)
  4f677c:	afb20040 	sw	s2,64(sp)
  4f6780:	afb1003c 	sw	s1,60(sp)
  4f6784:	afb00038 	sw	s0,56(sp)
  4f6788:	afbc0018 	sw	gp,24(sp)
  4f678c:	8f99b144 	lw	t9,-20156(gp)
  4f6790:	00002021 	move	a0,zero
  4f6794:	afa00020 	sw	zero,32(sp)
  4f6798:	afa00024 	sw	zero,36(sp)
  4f679c:	0320f809 	jalr	t9
  4f67a0:	afa00028 	sw	zero,40(sp)
  4f67a4:	8fbc0018 	lw	gp,24(sp)
  4f67a8:	00000000 	nop
  4f67ac:	8f998ae0 	lw	t9,-29984(gp)
  4f67b0:	00000000 	nop
  4f67b4:	0320f809 	jalr	t9
  4f67b8:	00000000 	nop
  4f67bc:	2443fffc 	addiu	v1,v0,-4
  4f67c0:	2c620045 	sltiu	v0,v1,69
  4f67c4:	8fbc0018 	lw	gp,24(sp)
  4f67c8:	10400654 	beqz	v0,4f811c <adLedEnable@@Base+0x19cc>
  4f67cc:	24020001 	li	v0,1
  4f67d0:	00031080 	sll	v0,v1,0x2
  4f67d4:	8f838028 	lw	v1,-32728(gp)
  4f67d8:	00000000 	nop
  4f67dc:	246392f8 	addiu	v1,v1,-27912
  4f67e0:	00621821 	addu	v1,v1,v0
  4f67e4:	8c620000 	lw	v0,0(v1)
  4f67e8:	00000000 	nop
  4f67ec:	005c1021 	addu	v0,v0,gp
  4f67f0:	00400008 	jr	v0
  4f67f4:	00000000 	nop
  4f67f8:	8f998ccc 	lw	t9,-29492(gp)
  4f67fc:	27b0002c 	addiu	s0,sp,44
  4f6800:	24020001 	li	v0,1
  4f6804:	00002021 	move	a0,zero
  4f6808:	24050064 	li	a1,100
  4f680c:	2406025b 	li	a2,603
  4f6810:	02003821 	move	a3,s0
  4f6814:	0320f809 	jalr	t9
  4f6818:	afa2002c 	sw	v0,44(sp)
  4f681c:	8fbc0018 	lw	gp,24(sp)
  4f6820:	00002021 	move	a0,zero
  4f6824:	24050064 	li	a1,100
  4f6828:	8f998ccc 	lw	t9,-29492(gp)
  4f682c:	2406025f 	li	a2,607
  4f6830:	02003821 	move	a3,s0
  4f6834:	0320f809 	jalr	t9
  4f6838:	afa0002c 	sw	zero,44(sp)
  4f683c:	8fbc0018 	lw	gp,24(sp)
  4f6840:	24110003 	li	s1,3
  4f6844:	afb1002c 	sw	s1,44(sp)
  4f6848:	8f998ccc 	lw	t9,-29492(gp)
  4f684c:	00002021 	move	a0,zero
  4f6850:	24050064 	li	a1,100
  4f6854:	24060264 	li	a2,612
  4f6858:	0320f809 	jalr	t9
  4f685c:	02003821 	move	a3,s0
  4f6860:	8fbc0018 	lw	gp,24(sp)
  4f6864:	afb1002c 	sw	s1,44(sp)
  4f6868:	00002021 	move	a0,zero
  4f686c:	8f998ccc 	lw	t9,-29492(gp)
  4f6870:	24050064 	li	a1,100
  4f6874:	24060265 	li	a2,613
  4f6878:	0320f809 	jalr	t9
  4f687c:	02003821 	move	a3,s0
  4f6880:	8fbc0018 	lw	gp,24(sp)
  4f6884:	2412000f 	li	s2,15
  4f6888:	00002021 	move	a0,zero
  4f688c:	8f998ccc 	lw	t9,-29492(gp)
  4f6890:	24050066 	li	a1,102
  4f6894:	24060269 	li	a2,617
  4f6898:	02003821 	move	a3,s0
  4f689c:	0320f809 	jalr	t9
  4f68a0:	afb2002c 	sw	s2,44(sp)
  4f68a4:	8fbc0018 	lw	gp,24(sp)
  4f68a8:	2411000a 	li	s1,10
  4f68ac:	00002021 	move	a0,zero
  4f68b0:	8f998ccc 	lw	t9,-29492(gp)
  4f68b4:	24050066 	li	a1,102
  4f68b8:	2406026a 	li	a2,618
  4f68bc:	02003821 	move	a3,s0
  4f68c0:	0320f809 	jalr	t9
  4f68c4:	afb1002c 	sw	s1,44(sp)
  4f68c8:	8fbc0018 	lw	gp,24(sp)
  4f68cc:	00002021 	move	a0,zero
  4f68d0:	24050066 	li	a1,102
  4f68d4:	8f998ccc 	lw	t9,-29492(gp)
  4f68d8:	2406026c 	li	a2,620
  4f68dc:	02003821 	move	a3,s0
  4f68e0:	0320f809 	jalr	t9
  4f68e4:	afb2002c 	sw	s2,44(sp)
  4f68e8:	8fbc0018 	lw	gp,24(sp)
  4f68ec:	afb1002c 	sw	s1,44(sp)
  4f68f0:	00002021 	move	a0,zero
  4f68f4:	8f998ccc 	lw	t9,-29492(gp)
  4f68f8:	24050066 	li	a1,102
  4f68fc:	2406026d 	li	a2,621
  4f6900:	0320f809 	jalr	t9
  4f6904:	02003821 	move	a3,s0
  4f6908:	8fbc0018 	lw	gp,24(sp)
  4f690c:	00000000 	nop
  4f6910:	8f998ccc 	lw	t9,-29492(gp)
  4f6914:	1000035b 	b	4f7684 <adLedEnable@@Base+0xf34>
  4f6918:	3c020507 	lui	v0,0x507
  4f691c:	8f998ccc 	lw	t9,-29492(gp)
  4f6920:	27b0002c 	addiu	s0,sp,44
  4f6924:	00002021 	move	a0,zero
  4f6928:	24050065 	li	a1,101
  4f692c:	24060267 	li	a2,615
  4f6930:	02003821 	move	a3,s0
  4f6934:	0320f809 	jalr	t9
  4f6938:	afa0002c 	sw	zero,44(sp)
  4f693c:	8fbc0018 	lw	gp,24(sp)
  4f6940:	24020001 	li	v0,1
  4f6944:	00002021 	move	a0,zero
  4f6948:	8f998ccc 	lw	t9,-29492(gp)
  4f694c:	24050064 	li	a1,100
  4f6950:	2406025b 	li	a2,603
  4f6954:	02003821 	move	a3,s0
  4f6958:	0320f809 	jalr	t9
  4f695c:	afa2002c 	sw	v0,44(sp)
  4f6960:	8fbc0018 	lw	gp,24(sp)
  4f6964:	00002021 	move	a0,zero
  4f6968:	24050064 	li	a1,100
  4f696c:	8f998ccc 	lw	t9,-29492(gp)
  4f6970:	2406025f 	li	a2,607
  4f6974:	02003821 	move	a3,s0
  4f6978:	0320f809 	jalr	t9
  4f697c:	afa0002c 	sw	zero,44(sp)
  4f6980:	8fbc0018 	lw	gp,24(sp)
  4f6984:	00002021 	move	a0,zero
  4f6988:	24050064 	li	a1,100
  4f698c:	8f998ccc 	lw	t9,-29492(gp)
  4f6990:	24060260 	li	a2,608
  4f6994:	02003821 	move	a3,s0
  4f6998:	0320f809 	jalr	t9
  4f699c:	afa0002c 	sw	zero,44(sp)
  4f69a0:	8fbc0018 	lw	gp,24(sp)
  4f69a4:	00002021 	move	a0,zero
  4f69a8:	24050064 	li	a1,100
  4f69ac:	8f998ccc 	lw	t9,-29492(gp)
  4f69b0:	24060261 	li	a2,609
  4f69b4:	02003821 	move	a3,s0
  4f69b8:	0320f809 	jalr	t9
  4f69bc:	afa0002c 	sw	zero,44(sp)
  4f69c0:	8fbc0018 	lw	gp,24(sp)
  4f69c4:	24110003 	li	s1,3
  4f69c8:	afb1002c 	sw	s1,44(sp)
  4f69cc:	8f998ccc 	lw	t9,-29492(gp)
  4f69d0:	00002021 	move	a0,zero
  4f69d4:	24050064 	li	a1,100
  4f69d8:	24060264 	li	a2,612
  4f69dc:	0320f809 	jalr	t9
  4f69e0:	02003821 	move	a3,s0
  4f69e4:	8fbc0018 	lw	gp,24(sp)
  4f69e8:	afb1002c 	sw	s1,44(sp)
  4f69ec:	00002021 	move	a0,zero
  4f69f0:	8f998ccc 	lw	t9,-29492(gp)
  4f69f4:	24050064 	li	a1,100
  4f69f8:	24060265 	li	a2,613
  4f69fc:	0320f809 	jalr	t9
  4f6a00:	02003821 	move	a3,s0
  4f6a04:	8fbc0018 	lw	gp,24(sp)
  4f6a08:	2412000f 	li	s2,15
  4f6a0c:	00002021 	move	a0,zero
  4f6a10:	8f998ccc 	lw	t9,-29492(gp)
  4f6a14:	24050066 	li	a1,102
  4f6a18:	24060269 	li	a2,617
  4f6a1c:	02003821 	move	a3,s0
  4f6a20:	0320f809 	jalr	t9
  4f6a24:	afb2002c 	sw	s2,44(sp)
  4f6a28:	8fbc0018 	lw	gp,24(sp)
  4f6a2c:	2411000a 	li	s1,10
  4f6a30:	00002021 	move	a0,zero
  4f6a34:	8f998ccc 	lw	t9,-29492(gp)
  4f6a38:	24050066 	li	a1,102
  4f6a3c:	2406026a 	li	a2,618
  4f6a40:	02003821 	move	a3,s0
  4f6a44:	0320f809 	jalr	t9
  4f6a48:	afb1002c 	sw	s1,44(sp)
  4f6a4c:	8fbc0018 	lw	gp,24(sp)
  4f6a50:	00002021 	move	a0,zero
  4f6a54:	24050066 	li	a1,102
  4f6a58:	8f998ccc 	lw	t9,-29492(gp)
  4f6a5c:	2406026c 	li	a2,620
  4f6a60:	02003821 	move	a3,s0
  4f6a64:	0320f809 	jalr	t9
  4f6a68:	afb2002c 	sw	s2,44(sp)
  4f6a6c:	8fbc0018 	lw	gp,24(sp)
  4f6a70:	afb1002c 	sw	s1,44(sp)
  4f6a74:	00002021 	move	a0,zero
  4f6a78:	8f998ccc 	lw	t9,-29492(gp)
  4f6a7c:	24050066 	li	a1,102
  4f6a80:	2406026d 	li	a2,621
  4f6a84:	0320f809 	jalr	t9
  4f6a88:	02003821 	move	a3,s0
  4f6a8c:	8fbc0018 	lw	gp,24(sp)
  4f6a90:	00000000 	nop
  4f6a94:	8f998ccc 	lw	t9,-29492(gp)
  4f6a98:	100002b1 	b	4f7560 <adLedEnable@@Base+0xe10>
  4f6a9c:	3c02050f 	lui	v0,0x50f
  4f6aa0:	8f998ccc 	lw	t9,-29492(gp)
  4f6aa4:	27b0002c 	addiu	s0,sp,44
  4f6aa8:	24020001 	li	v0,1
  4f6aac:	00002021 	move	a0,zero
  4f6ab0:	24050064 	li	a1,100
  4f6ab4:	2406025b 	li	a2,603
  4f6ab8:	02003821 	move	a3,s0
  4f6abc:	0320f809 	jalr	t9
  4f6ac0:	afa2002c 	sw	v0,44(sp)
  4f6ac4:	8fbc0018 	lw	gp,24(sp)
  4f6ac8:	afa0002c 	sw	zero,44(sp)
  4f6acc:	00002021 	move	a0,zero
  4f6ad0:	8f998ccc 	lw	t9,-29492(gp)
  4f6ad4:	24050064 	li	a1,100
  4f6ad8:	2406025f 	li	a2,607
  4f6adc:	0320f809 	jalr	t9
  4f6ae0:	02003821 	move	a3,s0
  4f6ae4:	8fbc0018 	lw	gp,24(sp)
  4f6ae8:	00000000 	nop
  4f6aec:	8f998ccc 	lw	t9,-29492(gp)
  4f6af0:	100000a8 	b	4f6d94 <adLedEnable@@Base+0x644>
  4f6af4:	24110007 	li	s1,7
  4f6af8:	8f998ccc 	lw	t9,-29492(gp)
  4f6afc:	27b0002c 	addiu	s0,sp,44
  4f6b00:	24020001 	li	v0,1
  4f6b04:	00002021 	move	a0,zero
  4f6b08:	24050064 	li	a1,100
  4f6b0c:	2406025b 	li	a2,603
  4f6b10:	02003821 	move	a3,s0
  4f6b14:	0320f809 	jalr	t9
  4f6b18:	afa2002c 	sw	v0,44(sp)
  4f6b1c:	8fbc0018 	lw	gp,24(sp)
  4f6b20:	00002021 	move	a0,zero
  4f6b24:	24050064 	li	a1,100
  4f6b28:	8f998ccc 	lw	t9,-29492(gp)
  4f6b2c:	2406025f 	li	a2,607
  4f6b30:	02003821 	move	a3,s0
  4f6b34:	0320f809 	jalr	t9
  4f6b38:	afa0002c 	sw	zero,44(sp)
  4f6b3c:	8fbc0018 	lw	gp,24(sp)
  4f6b40:	24110007 	li	s1,7
  4f6b44:	afb1002c 	sw	s1,44(sp)
  4f6b48:	8f998ccc 	lw	t9,-29492(gp)
  4f6b4c:	00002021 	move	a0,zero
  4f6b50:	24050064 	li	a1,100
  4f6b54:	24060264 	li	a2,612
  4f6b58:	0320f809 	jalr	t9
  4f6b5c:	02003821 	move	a3,s0
  4f6b60:	8fbc0018 	lw	gp,24(sp)
  4f6b64:	afb1002c 	sw	s1,44(sp)
  4f6b68:	00002021 	move	a0,zero
  4f6b6c:	8f998ccc 	lw	t9,-29492(gp)
  4f6b70:	24050064 	li	a1,100
  4f6b74:	24060265 	li	a2,613
  4f6b78:	0320f809 	jalr	t9
  4f6b7c:	02003821 	move	a3,s0
  4f6b80:	8fbc0018 	lw	gp,24(sp)
  4f6b84:	2412000a 	li	s2,10
  4f6b88:	00002021 	move	a0,zero
  4f6b8c:	8f998ccc 	lw	t9,-29492(gp)
  4f6b90:	24050066 	li	a1,102
  4f6b94:	24060269 	li	a2,617
  4f6b98:	02003821 	move	a3,s0
  4f6b9c:	0320f809 	jalr	t9
  4f6ba0:	afb2002c 	sw	s2,44(sp)
  4f6ba4:	8fbc0018 	lw	gp,24(sp)
  4f6ba8:	2411000f 	li	s1,15
  4f6bac:	00002021 	move	a0,zero
  4f6bb0:	8f998ccc 	lw	t9,-29492(gp)
  4f6bb4:	24050066 	li	a1,102
  4f6bb8:	2406026a 	li	a2,618
  4f6bbc:	02003821 	move	a3,s0
  4f6bc0:	0320f809 	jalr	t9
  4f6bc4:	afb1002c 	sw	s1,44(sp)
  4f6bc8:	8fbc0018 	lw	gp,24(sp)
  4f6bcc:	00002021 	move	a0,zero
  4f6bd0:	24050066 	li	a1,102
  4f6bd4:	8f998ccc 	lw	t9,-29492(gp)
  4f6bd8:	2406026c 	li	a2,620
  4f6bdc:	02003821 	move	a3,s0
  4f6be0:	0320f809 	jalr	t9
  4f6be4:	afb2002c 	sw	s2,44(sp)
  4f6be8:	8fbc0018 	lw	gp,24(sp)
  4f6bec:	afb1002c 	sw	s1,44(sp)
  4f6bf0:	00002021 	move	a0,zero
  4f6bf4:	8f998ccc 	lw	t9,-29492(gp)
  4f6bf8:	24050066 	li	a1,102
  4f6bfc:	2406026d 	li	a2,621
  4f6c00:	0320f809 	jalr	t9
  4f6c04:	02003821 	move	a3,s0
  4f6c08:	8fbc0018 	lw	gp,24(sp)
  4f6c0c:	00000000 	nop
  4f6c10:	8f998ccc 	lw	t9,-29492(gp)
  4f6c14:	1000029c 	b	4f7688 <adLedEnable@@Base+0xf38>
  4f6c18:	3402ffff 	li	v0,0xffff
  4f6c1c:	8f998ccc 	lw	t9,-29492(gp)
  4f6c20:	27b0002c 	addiu	s0,sp,44
  4f6c24:	24020001 	li	v0,1
  4f6c28:	00002021 	move	a0,zero
  4f6c2c:	24050064 	li	a1,100
  4f6c30:	2406025b 	li	a2,603
  4f6c34:	02003821 	move	a3,s0
  4f6c38:	0320f809 	jalr	t9
  4f6c3c:	afa2002c 	sw	v0,44(sp)
  4f6c40:	8fbc0018 	lw	gp,24(sp)
  4f6c44:	00002021 	move	a0,zero
  4f6c48:	24050064 	li	a1,100
  4f6c4c:	8f998ccc 	lw	t9,-29492(gp)
  4f6c50:	2406025f 	li	a2,607
  4f6c54:	02003821 	move	a3,s0
  4f6c58:	0320f809 	jalr	t9
  4f6c5c:	afa0002c 	sw	zero,44(sp)
  4f6c60:	8fbc0018 	lw	gp,24(sp)
  4f6c64:	24020003 	li	v0,3
  4f6c68:	00002021 	move	a0,zero
  4f6c6c:	8f998ccc 	lw	t9,-29492(gp)
  4f6c70:	24050064 	li	a1,100
  4f6c74:	24060264 	li	a2,612
  4f6c78:	02003821 	move	a3,s0
  4f6c7c:	0320f809 	jalr	t9
  4f6c80:	afa2002c 	sw	v0,44(sp)
  4f6c84:	8fbc0018 	lw	gp,24(sp)
  4f6c88:	24020007 	li	v0,7
  4f6c8c:	00002021 	move	a0,zero
  4f6c90:	8f998ccc 	lw	t9,-29492(gp)
  4f6c94:	24050064 	li	a1,100
  4f6c98:	24060265 	li	a2,613
  4f6c9c:	02003821 	move	a3,s0
  4f6ca0:	0320f809 	jalr	t9
  4f6ca4:	afa2002c 	sw	v0,44(sp)
  4f6ca8:	8fbc0018 	lw	gp,24(sp)
  4f6cac:	2412000f 	li	s2,15
  4f6cb0:	00002021 	move	a0,zero
  4f6cb4:	8f998ccc 	lw	t9,-29492(gp)
  4f6cb8:	24050066 	li	a1,102
  4f6cbc:	24060269 	li	a2,617
  4f6cc0:	02003821 	move	a3,s0
  4f6cc4:	0320f809 	jalr	t9
  4f6cc8:	afb2002c 	sw	s2,44(sp)
  4f6ccc:	8fbc0018 	lw	gp,24(sp)
  4f6cd0:	2411000a 	li	s1,10
  4f6cd4:	00002021 	move	a0,zero
  4f6cd8:	8f998ccc 	lw	t9,-29492(gp)
  4f6cdc:	24050066 	li	a1,102
  4f6ce0:	2406026a 	li	a2,618
  4f6ce4:	02003821 	move	a3,s0
  4f6ce8:	0320f809 	jalr	t9
  4f6cec:	afb1002c 	sw	s1,44(sp)
  4f6cf0:	8fbc0018 	lw	gp,24(sp)
  4f6cf4:	00002021 	move	a0,zero
  4f6cf8:	24050066 	li	a1,102
  4f6cfc:	8f998ccc 	lw	t9,-29492(gp)
  4f6d00:	2406026c 	li	a2,620
  4f6d04:	02003821 	move	a3,s0
  4f6d08:	0320f809 	jalr	t9
  4f6d0c:	afb2002c 	sw	s2,44(sp)
  4f6d10:	8fbc0018 	lw	gp,24(sp)
  4f6d14:	afb1002c 	sw	s1,44(sp)
  4f6d18:	00002021 	move	a0,zero
  4f6d1c:	8f998ccc 	lw	t9,-29492(gp)
  4f6d20:	24050066 	li	a1,102
  4f6d24:	2406026d 	li	a2,621
  4f6d28:	0320f809 	jalr	t9
  4f6d2c:	02003821 	move	a3,s0
  4f6d30:	8fbc0018 	lw	gp,24(sp)
  4f6d34:	00000000 	nop
  4f6d38:	8f998ccc 	lw	t9,-29492(gp)
  4f6d3c:	10000251 	b	4f7684 <adLedEnable@@Base+0xf34>
  4f6d40:	3c020f00 	lui	v0,0xf00
  4f6d44:	8f998ccc 	lw	t9,-29492(gp)
  4f6d48:	27b0002c 	addiu	s0,sp,44
  4f6d4c:	24020001 	li	v0,1
  4f6d50:	00002021 	move	a0,zero
  4f6d54:	24050064 	li	a1,100
  4f6d58:	2406025b 	li	a2,603
  4f6d5c:	02003821 	move	a3,s0
  4f6d60:	0320f809 	jalr	t9
  4f6d64:	afa2002c 	sw	v0,44(sp)
  4f6d68:	8fbc0018 	lw	gp,24(sp)
  4f6d6c:	afa0002c 	sw	zero,44(sp)
  4f6d70:	00002021 	move	a0,zero
  4f6d74:	8f998ccc 	lw	t9,-29492(gp)
  4f6d78:	24050064 	li	a1,100
  4f6d7c:	2406025f 	li	a2,607
  4f6d80:	0320f809 	jalr	t9
  4f6d84:	02003821 	move	a3,s0
  4f6d88:	8fbc0018 	lw	gp,24(sp)
  4f6d8c:	24110003 	li	s1,3
  4f6d90:	8f998ccc 	lw	t9,-29492(gp)
  4f6d94:	afb1002c 	sw	s1,44(sp)
  4f6d98:	00002021 	move	a0,zero
  4f6d9c:	24050064 	li	a1,100
  4f6da0:	24060264 	li	a2,612
  4f6da4:	0320f809 	jalr	t9
  4f6da8:	02003821 	move	a3,s0
  4f6dac:	8fbc0018 	lw	gp,24(sp)
  4f6db0:	afb1002c 	sw	s1,44(sp)
  4f6db4:	00002021 	move	a0,zero
  4f6db8:	8f998ccc 	lw	t9,-29492(gp)
  4f6dbc:	24050064 	li	a1,100
  4f6dc0:	24060265 	li	a2,613
  4f6dc4:	0320f809 	jalr	t9
  4f6dc8:	02003821 	move	a3,s0
  4f6dcc:	8fbc0018 	lw	gp,24(sp)
  4f6dd0:	2412000a 	li	s2,10
  4f6dd4:	00002021 	move	a0,zero
  4f6dd8:	8f998ccc 	lw	t9,-29492(gp)
  4f6ddc:	24050066 	li	a1,102
  4f6de0:	24060269 	li	a2,617
  4f6de4:	02003821 	move	a3,s0
  4f6de8:	0320f809 	jalr	t9
  4f6dec:	afb2002c 	sw	s2,44(sp)
  4f6df0:	8fbc0018 	lw	gp,24(sp)
  4f6df4:	2411000f 	li	s1,15
  4f6df8:	00002021 	move	a0,zero
  4f6dfc:	8f998ccc 	lw	t9,-29492(gp)
  4f6e00:	24050066 	li	a1,102
  4f6e04:	2406026a 	li	a2,618
  4f6e08:	02003821 	move	a3,s0
  4f6e0c:	0320f809 	jalr	t9
  4f6e10:	afb1002c 	sw	s1,44(sp)
  4f6e14:	8fbc0018 	lw	gp,24(sp)
  4f6e18:	00002021 	move	a0,zero
  4f6e1c:	24050066 	li	a1,102
  4f6e20:	8f998ccc 	lw	t9,-29492(gp)
  4f6e24:	2406026c 	li	a2,620
  4f6e28:	02003821 	move	a3,s0
  4f6e2c:	0320f809 	jalr	t9
  4f6e30:	afb2002c 	sw	s2,44(sp)
  4f6e34:	8fbc0018 	lw	gp,24(sp)
  4f6e38:	afb1002c 	sw	s1,44(sp)
  4f6e3c:	00002021 	move	a0,zero
  4f6e40:	8f998ccc 	lw	t9,-29492(gp)
  4f6e44:	24050066 	li	a1,102
  4f6e48:	2406026d 	li	a2,621
  4f6e4c:	0320f809 	jalr	t9
  4f6e50:	02003821 	move	a3,s0
  4f6e54:	8fbc0018 	lw	gp,24(sp)
  4f6e58:	00000000 	nop
  4f6e5c:	8f998ccc 	lw	t9,-29492(gp)
  4f6e60:	10000208 	b	4f7684 <adLedEnable@@Base+0xf34>
  4f6e64:	3c020501 	lui	v0,0x501
  4f6e68:	8f998ccc 	lw	t9,-29492(gp)
  4f6e6c:	27b0002c 	addiu	s0,sp,44
  4f6e70:	24110001 	li	s1,1
  4f6e74:	afb1002c 	sw	s1,44(sp)
  4f6e78:	00002021 	move	a0,zero
  4f6e7c:	24050064 	li	a1,100
  4f6e80:	2406025b 	li	a2,603
  4f6e84:	0320f809 	jalr	t9
  4f6e88:	02003821 	move	a3,s0
  4f6e8c:	8fbc0018 	lw	gp,24(sp)
  4f6e90:	00002021 	move	a0,zero
  4f6e94:	24050064 	li	a1,100
  4f6e98:	8f998ccc 	lw	t9,-29492(gp)
  4f6e9c:	2406025f 	li	a2,607
  4f6ea0:	02003821 	move	a3,s0
  4f6ea4:	0320f809 	jalr	t9
  4f6ea8:	afa0002c 	sw	zero,44(sp)
  4f6eac:	8fbc0018 	lw	gp,24(sp)
  4f6eb0:	00002021 	move	a0,zero
  4f6eb4:	24050064 	li	a1,100
  4f6eb8:	8f998ccc 	lw	t9,-29492(gp)
  4f6ebc:	24060260 	li	a2,608
  4f6ec0:	02003821 	move	a3,s0
  4f6ec4:	0320f809 	jalr	t9
  4f6ec8:	afa0002c 	sw	zero,44(sp)
  4f6ecc:	8fbc0018 	lw	gp,24(sp)
  4f6ed0:	00002021 	move	a0,zero
  4f6ed4:	24050064 	li	a1,100
  4f6ed8:	8f998ccc 	lw	t9,-29492(gp)
  4f6edc:	24060261 	li	a2,609
  4f6ee0:	02003821 	move	a3,s0
  4f6ee4:	0320f809 	jalr	t9
  4f6ee8:	afa0002c 	sw	zero,44(sp)
  4f6eec:	8fbc0018 	lw	gp,24(sp)
  4f6ef0:	00002021 	move	a0,zero
  4f6ef4:	24050064 	li	a1,100
  4f6ef8:	8f998ccc 	lw	t9,-29492(gp)
  4f6efc:	24060262 	li	a2,610
  4f6f00:	02003821 	move	a3,s0
  4f6f04:	0320f809 	jalr	t9
  4f6f08:	afa0002c 	sw	zero,44(sp)
  4f6f0c:	8fbc0018 	lw	gp,24(sp)
  4f6f10:	24020007 	li	v0,7
  4f6f14:	00002021 	move	a0,zero
  4f6f18:	8f998ccc 	lw	t9,-29492(gp)
  4f6f1c:	24050064 	li	a1,100
  4f6f20:	24060264 	li	a2,612
  4f6f24:	02003821 	move	a3,s0
  4f6f28:	0320f809 	jalr	t9
  4f6f2c:	afa2002c 	sw	v0,44(sp)
  4f6f30:	8fbc0018 	lw	gp,24(sp)
  4f6f34:	afb1002c 	sw	s1,44(sp)
  4f6f38:	00002021 	move	a0,zero
  4f6f3c:	8f998ccc 	lw	t9,-29492(gp)
  4f6f40:	24050064 	li	a1,100
  4f6f44:	24060265 	li	a2,613
  4f6f48:	0320f809 	jalr	t9
  4f6f4c:	02003821 	move	a3,s0
  4f6f50:	8fbc0018 	lw	gp,24(sp)
  4f6f54:	2402000a 	li	v0,10
  4f6f58:	00002021 	move	a0,zero
  4f6f5c:	8f998ccc 	lw	t9,-29492(gp)
  4f6f60:	24050066 	li	a1,102
  4f6f64:	24060269 	li	a2,617
  4f6f68:	afa2002c 	sw	v0,44(sp)
  4f6f6c:	0320f809 	jalr	t9
  4f6f70:	02003821 	move	a3,s0
  4f6f74:	8fbc0018 	lw	gp,24(sp)
  4f6f78:	2411000f 	li	s1,15
  4f6f7c:	afb1002c 	sw	s1,44(sp)
  4f6f80:	8f998ccc 	lw	t9,-29492(gp)
  4f6f84:	00002021 	move	a0,zero
  4f6f88:	24050066 	li	a1,102
  4f6f8c:	100000f6 	b	4f7368 <adLedEnable@@Base+0xc18>
  4f6f90:	24060268 	li	a2,616
  4f6f94:	8f998ccc 	lw	t9,-29492(gp)
  4f6f98:	27b0002c 	addiu	s0,sp,44
  4f6f9c:	24020001 	li	v0,1
  4f6fa0:	00002021 	move	a0,zero
  4f6fa4:	24050064 	li	a1,100
  4f6fa8:	2406025b 	li	a2,603
  4f6fac:	02003821 	move	a3,s0
  4f6fb0:	0320f809 	jalr	t9
  4f6fb4:	afa2002c 	sw	v0,44(sp)
  4f6fb8:	8fbc0018 	lw	gp,24(sp)
  4f6fbc:	00002021 	move	a0,zero
  4f6fc0:	24050064 	li	a1,100
  4f6fc4:	8f998ccc 	lw	t9,-29492(gp)
  4f6fc8:	2406025f 	li	a2,607
  4f6fcc:	02003821 	move	a3,s0
  4f6fd0:	0320f809 	jalr	t9
  4f6fd4:	afa0002c 	sw	zero,44(sp)
  4f6fd8:	8fbc0018 	lw	gp,24(sp)
  4f6fdc:	00002021 	move	a0,zero
  4f6fe0:	24050064 	li	a1,100
  4f6fe4:	8f998ccc 	lw	t9,-29492(gp)
  4f6fe8:	24060260 	li	a2,608
  4f6fec:	02003821 	move	a3,s0
  4f6ff0:	0320f809 	jalr	t9
  4f6ff4:	afa0002c 	sw	zero,44(sp)
  4f6ff8:	8fbc0018 	lw	gp,24(sp)
  4f6ffc:	00002021 	move	a0,zero
  4f7000:	24050064 	li	a1,100
  4f7004:	8f998ccc 	lw	t9,-29492(gp)
  4f7008:	24060261 	li	a2,609
  4f700c:	02003821 	move	a3,s0
  4f7010:	0320f809 	jalr	t9
  4f7014:	afa0002c 	sw	zero,44(sp)
  4f7018:	8fbc0018 	lw	gp,24(sp)
  4f701c:	00002021 	move	a0,zero
  4f7020:	24050064 	li	a1,100
  4f7024:	8f998ccc 	lw	t9,-29492(gp)
  4f7028:	24060262 	li	a2,610
  4f702c:	02003821 	move	a3,s0
  4f7030:	0320f809 	jalr	t9
  4f7034:	afa0002c 	sw	zero,44(sp)
  4f7038:	8fbc0018 	lw	gp,24(sp)
  4f703c:	24110003 	li	s1,3
  4f7040:	00002021 	move	a0,zero
  4f7044:	8f998ccc 	lw	t9,-29492(gp)
  4f7048:	24050064 	li	a1,100
  4f704c:	24060264 	li	a2,612
  4f7050:	02003821 	move	a3,s0
  4f7054:	0320f809 	jalr	t9
  4f7058:	afb1002c 	sw	s1,44(sp)
  4f705c:	8fbc0018 	lw	gp,24(sp)
  4f7060:	00002021 	move	a0,zero
  4f7064:	24050064 	li	a1,100
  4f7068:	8f998ccc 	lw	t9,-29492(gp)
  4f706c:	24060265 	li	a2,613
  4f7070:	02003821 	move	a3,s0
  4f7074:	0320f809 	jalr	t9
  4f7078:	afb1002c 	sw	s1,44(sp)
  4f707c:	8fbc0018 	lw	gp,24(sp)
  4f7080:	2402000f 	li	v0,15
  4f7084:	00002021 	move	a0,zero
  4f7088:	8f998ccc 	lw	t9,-29492(gp)
  4f708c:	24050066 	li	a1,102
  4f7090:	24060269 	li	a2,617
  4f7094:	02003821 	move	a3,s0
  4f7098:	0320f809 	jalr	t9
  4f709c:	afa2002c 	sw	v0,44(sp)
  4f70a0:	8fbc0018 	lw	gp,24(sp)
  4f70a4:	2402000a 	li	v0,10
  4f70a8:	00002021 	move	a0,zero
  4f70ac:	8f998ccc 	lw	t9,-29492(gp)
  4f70b0:	24050066 	li	a1,102
  4f70b4:	2406026a 	li	a2,618
  4f70b8:	02003821 	move	a3,s0
  4f70bc:	0320f809 	jalr	t9
  4f70c0:	afa2002c 	sw	v0,44(sp)
  4f70c4:	8fbc0018 	lw	gp,24(sp)
  4f70c8:	2402000c 	li	v0,12
  4f70cc:	afa2002c 	sw	v0,44(sp)
  4f70d0:	8f998ccc 	lw	t9,-29492(gp)
  4f70d4:	00002021 	move	a0,zero
  4f70d8:	24050066 	li	a1,102
  4f70dc:	2406026c 	li	a2,620
  4f70e0:	0320f809 	jalr	t9
  4f70e4:	02003821 	move	a3,s0
  4f70e8:	8fbc0018 	lw	gp,24(sp)
  4f70ec:	2402000b 	li	v0,11
  4f70f0:	8f998ccc 	lw	t9,-29492(gp)
  4f70f4:	100000a1 	b	4f737c <adLedEnable@@Base+0xc2c>
  4f70f8:	afa2002c 	sw	v0,44(sp)
  4f70fc:	8f998ccc 	lw	t9,-29492(gp)
  4f7100:	27b0002c 	addiu	s0,sp,44
  4f7104:	24020001 	li	v0,1
  4f7108:	00002021 	move	a0,zero
  4f710c:	24050064 	li	a1,100
  4f7110:	2406025b 	li	a2,603
  4f7114:	02003821 	move	a3,s0
  4f7118:	0320f809 	jalr	t9
  4f711c:	afa2002c 	sw	v0,44(sp)
  4f7120:	8fbc0018 	lw	gp,24(sp)
  4f7124:	00002021 	move	a0,zero
  4f7128:	24050064 	li	a1,100
  4f712c:	8f998ccc 	lw	t9,-29492(gp)
  4f7130:	2406025f 	li	a2,607
  4f7134:	02003821 	move	a3,s0
  4f7138:	0320f809 	jalr	t9
  4f713c:	afa0002c 	sw	zero,44(sp)
  4f7140:	8fbc0018 	lw	gp,24(sp)
  4f7144:	24110003 	li	s1,3
  4f7148:	afb1002c 	sw	s1,44(sp)
  4f714c:	8f998ccc 	lw	t9,-29492(gp)
  4f7150:	00002021 	move	a0,zero
  4f7154:	24050064 	li	a1,100
  4f7158:	24060264 	li	a2,612
  4f715c:	0320f809 	jalr	t9
  4f7160:	02003821 	move	a3,s0
  4f7164:	8fbc0018 	lw	gp,24(sp)
  4f7168:	afb1002c 	sw	s1,44(sp)
  4f716c:	00002021 	move	a0,zero
  4f7170:	8f998ccc 	lw	t9,-29492(gp)
  4f7174:	24050064 	li	a1,100
  4f7178:	24060265 	li	a2,613
  4f717c:	0320f809 	jalr	t9
  4f7180:	02003821 	move	a3,s0
  4f7184:	8fbc0018 	lw	gp,24(sp)
  4f7188:	00002021 	move	a0,zero
  4f718c:	24050066 	li	a1,102
  4f7190:	8f998ccc 	lw	t9,-29492(gp)
  4f7194:	24060269 	li	a2,617
  4f7198:	02003821 	move	a3,s0
  4f719c:	0320f809 	jalr	t9
  4f71a0:	afa0002c 	sw	zero,44(sp)
  4f71a4:	8fbc0018 	lw	gp,24(sp)
  4f71a8:	24110007 	li	s1,7
  4f71ac:	00002021 	move	a0,zero
  4f71b0:	8f998ccc 	lw	t9,-29492(gp)
  4f71b4:	24050066 	li	a1,102
  4f71b8:	2406026a 	li	a2,618
  4f71bc:	02003821 	move	a3,s0
  4f71c0:	0320f809 	jalr	t9
  4f71c4:	afb1002c 	sw	s1,44(sp)
  4f71c8:	8fbc0018 	lw	gp,24(sp)
  4f71cc:	00002021 	move	a0,zero
  4f71d0:	24050066 	li	a1,102
  4f71d4:	8f998ccc 	lw	t9,-29492(gp)
  4f71d8:	2406026c 	li	a2,620
  4f71dc:	02003821 	move	a3,s0
  4f71e0:	0320f809 	jalr	t9
  4f71e4:	afa0002c 	sw	zero,44(sp)
  4f71e8:	8fbc0018 	lw	gp,24(sp)
  4f71ec:	afb1002c 	sw	s1,44(sp)
  4f71f0:	00002021 	move	a0,zero
  4f71f4:	8f998ccc 	lw	t9,-29492(gp)
  4f71f8:	24050066 	li	a1,102
  4f71fc:	2406026d 	li	a2,621
  4f7200:	0320f809 	jalr	t9
  4f7204:	02003821 	move	a3,s0
  4f7208:	8fbc0018 	lw	gp,24(sp)
  4f720c:	00000000 	nop
  4f7210:	8f998ccc 	lw	t9,-29492(gp)
  4f7214:	10000061 	b	4f739c <adLedEnable@@Base+0xc4c>
  4f7218:	3c020500 	lui	v0,0x500
  4f721c:	8f998ccc 	lw	t9,-29492(gp)
  4f7220:	27b0002c 	addiu	s0,sp,44
  4f7224:	24120001 	li	s2,1
  4f7228:	00002021 	move	a0,zero
  4f722c:	24050064 	li	a1,100
  4f7230:	2406025b 	li	a2,603
  4f7234:	02003821 	move	a3,s0
  4f7238:	0320f809 	jalr	t9
  4f723c:	afb2002c 	sw	s2,44(sp)
  4f7240:	8fbc0018 	lw	gp,24(sp)
  4f7244:	00002021 	move	a0,zero
  4f7248:	24050064 	li	a1,100
  4f724c:	8f998ccc 	lw	t9,-29492(gp)
  4f7250:	2406025f 	li	a2,607
  4f7254:	02003821 	move	a3,s0
  4f7258:	0320f809 	jalr	t9
  4f725c:	afa0002c 	sw	zero,44(sp)
  4f7260:	8fbc0018 	lw	gp,24(sp)
  4f7264:	00002021 	move	a0,zero
  4f7268:	24050064 	li	a1,100
  4f726c:	8f998ccc 	lw	t9,-29492(gp)
  4f7270:	24060262 	li	a2,610
  4f7274:	02003821 	move	a3,s0
  4f7278:	0320f809 	jalr	t9
  4f727c:	afa0002c 	sw	zero,44(sp)
  4f7280:	8fbc0018 	lw	gp,24(sp)
  4f7284:	24110003 	li	s1,3
  4f7288:	afb1002c 	sw	s1,44(sp)
  4f728c:	8f998ccc 	lw	t9,-29492(gp)
  4f7290:	00002021 	move	a0,zero
  4f7294:	24050064 	li	a1,100
  4f7298:	24060264 	li	a2,612
  4f729c:	0320f809 	jalr	t9
  4f72a0:	02003821 	move	a3,s0
  4f72a4:	8fbc0018 	lw	gp,24(sp)
  4f72a8:	afb1002c 	sw	s1,44(sp)
  4f72ac:	00002021 	move	a0,zero
  4f72b0:	8f998ccc 	lw	t9,-29492(gp)
  4f72b4:	24050064 	li	a1,100
  4f72b8:	24060265 	li	a2,613
  4f72bc:	0320f809 	jalr	t9
  4f72c0:	02003821 	move	a3,s0
  4f72c4:	8fbc0018 	lw	gp,24(sp)
  4f72c8:	00002021 	move	a0,zero
  4f72cc:	24050065 	li	a1,101
  4f72d0:	8f998ccc 	lw	t9,-29492(gp)
  4f72d4:	24060266 	li	a2,614
  4f72d8:	02003821 	move	a3,s0
  4f72dc:	0320f809 	jalr	t9
  4f72e0:	afa0002c 	sw	zero,44(sp)
  4f72e4:	8fbc0018 	lw	gp,24(sp)
  4f72e8:	00002021 	move	a0,zero
  4f72ec:	24050065 	li	a1,101
  4f72f0:	8f998ccc 	lw	t9,-29492(gp)
  4f72f4:	24060267 	li	a2,615
  4f72f8:	02003821 	move	a3,s0
  4f72fc:	0320f809 	jalr	t9
  4f7300:	afb2002c 	sw	s2,44(sp)
  4f7304:	8fbc0018 	lw	gp,24(sp)
  4f7308:	2402000b 	li	v0,11
  4f730c:	00002021 	move	a0,zero
  4f7310:	8f998ccc 	lw	t9,-29492(gp)
  4f7314:	24050066 	li	a1,102
  4f7318:	24060269 	li	a2,617
  4f731c:	02003821 	move	a3,s0
  4f7320:	0320f809 	jalr	t9
  4f7324:	afa2002c 	sw	v0,44(sp)
  4f7328:	8fbc0018 	lw	gp,24(sp)
  4f732c:	2411000a 	li	s1,10
  4f7330:	00002021 	move	a0,zero
  4f7334:	8f998ccc 	lw	t9,-29492(gp)
  4f7338:	24050066 	li	a1,102
  4f733c:	2406026a 	li	a2,618
  4f7340:	afb1002c 	sw	s1,44(sp)
  4f7344:	0320f809 	jalr	t9
  4f7348:	02003821 	move	a3,s0
  4f734c:	8fbc0018 	lw	gp,24(sp)
  4f7350:	2402000f 	li	v0,15
  4f7354:	afa2002c 	sw	v0,44(sp)
  4f7358:	8f998ccc 	lw	t9,-29492(gp)
  4f735c:	00002021 	move	a0,zero
  4f7360:	24050066 	li	a1,102
  4f7364:	2406026c 	li	a2,620
  4f7368:	0320f809 	jalr	t9
  4f736c:	02003821 	move	a3,s0
  4f7370:	8fbc0018 	lw	gp,24(sp)
  4f7374:	afb1002c 	sw	s1,44(sp)
  4f7378:	8f998ccc 	lw	t9,-29492(gp)
  4f737c:	00002021 	move	a0,zero
  4f7380:	24050066 	li	a1,102
  4f7384:	2406026d 	li	a2,621
  4f7388:	0320f809 	jalr	t9
  4f738c:	02003821 	move	a3,s0
  4f7390:	8fbc0018 	lw	gp,24(sp)
  4f7394:	3c020fff 	lui	v0,0xfff
  4f7398:	8f998ccc 	lw	t9,-29492(gp)
  4f739c:	100000ba 	b	4f7688 <adLedEnable@@Base+0xf38>
  4f73a0:	3442ffff 	ori	v0,v0,0xffff
  4f73a4:	8f998ccc 	lw	t9,-29492(gp)
  4f73a8:	27b0002c 	addiu	s0,sp,44
  4f73ac:	24020001 	li	v0,1
  4f73b0:	00002021 	move	a0,zero
  4f73b4:	24050064 	li	a1,100
  4f73b8:	2406025b 	li	a2,603
  4f73bc:	02003821 	move	a3,s0
  4f73c0:	0320f809 	jalr	t9
  4f73c4:	afa2002c 	sw	v0,44(sp)
  4f73c8:	8fbc0018 	lw	gp,24(sp)
  4f73cc:	00002021 	move	a0,zero
  4f73d0:	24050064 	li	a1,100
  4f73d4:	8f998ccc 	lw	t9,-29492(gp)
  4f73d8:	2406025f 	li	a2,607
  4f73dc:	02003821 	move	a3,s0
  4f73e0:	0320f809 	jalr	t9
  4f73e4:	afa0002c 	sw	zero,44(sp)
  4f73e8:	8fbc0018 	lw	gp,24(sp)
  4f73ec:	00002021 	move	a0,zero
  4f73f0:	24050064 	li	a1,100
  4f73f4:	8f998ccc 	lw	t9,-29492(gp)
  4f73f8:	24060260 	li	a2,608
  4f73fc:	02003821 	move	a3,s0
  4f7400:	0320f809 	jalr	t9
  4f7404:	afa0002c 	sw	zero,44(sp)
  4f7408:	8fbc0018 	lw	gp,24(sp)
  4f740c:	00002021 	move	a0,zero
  4f7410:	24050064 	li	a1,100
  4f7414:	8f998ccc 	lw	t9,-29492(gp)
  4f7418:	24060261 	li	a2,609
  4f741c:	02003821 	move	a3,s0
  4f7420:	0320f809 	jalr	t9
  4f7424:	afa0002c 	sw	zero,44(sp)
  4f7428:	8fbc0018 	lw	gp,24(sp)
  4f742c:	00002021 	move	a0,zero
  4f7430:	24050064 	li	a1,100
  4f7434:	8f998ccc 	lw	t9,-29492(gp)
  4f7438:	24060262 	li	a2,610
  4f743c:	02003821 	move	a3,s0
  4f7440:	0320f809 	jalr	t9
  4f7444:	afa0002c 	sw	zero,44(sp)
  4f7448:	8fbc0018 	lw	gp,24(sp)
  4f744c:	24110003 	li	s1,3
  4f7450:	afb1002c 	sw	s1,44(sp)
  4f7454:	8f998ccc 	lw	t9,-29492(gp)
  4f7458:	00002021 	move	a0,zero
  4f745c:	24050064 	li	a1,100
  4f7460:	24060264 	li	a2,612
  4f7464:	0320f809 	jalr	t9
  4f7468:	02003821 	move	a3,s0
  4f746c:	8fbc0018 	lw	gp,24(sp)
  4f7470:	afb1002c 	sw	s1,44(sp)
  4f7474:	00002021 	move	a0,zero
  4f7478:	8f998ccc 	lw	t9,-29492(gp)
  4f747c:	24050064 	li	a1,100
  4f7480:	24060265 	li	a2,613
  4f7484:	0320f809 	jalr	t9
  4f7488:	02003821 	move	a3,s0
  4f748c:	8fbc0018 	lw	gp,24(sp)
  4f7490:	00002021 	move	a0,zero
  4f7494:	24050065 	li	a1,101
  4f7498:	8f998ccc 	lw	t9,-29492(gp)
  4f749c:	24060266 	li	a2,614
  4f74a0:	02003821 	move	a3,s0
  4f74a4:	0320f809 	jalr	t9
  4f74a8:	afa0002c 	sw	zero,44(sp)
  4f74ac:	8fbc0018 	lw	gp,24(sp)
  4f74b0:	00002021 	move	a0,zero
  4f74b4:	24050065 	li	a1,101
  4f74b8:	8f998ccc 	lw	t9,-29492(gp)
  4f74bc:	24060267 	li	a2,615
  4f74c0:	02003821 	move	a3,s0
  4f74c4:	0320f809 	jalr	t9
  4f74c8:	afa0002c 	sw	zero,44(sp)
  4f74cc:	8fbc0018 	lw	gp,24(sp)
  4f74d0:	2412000f 	li	s2,15
  4f74d4:	00002021 	move	a0,zero
  4f74d8:	8f998ccc 	lw	t9,-29492(gp)
  4f74dc:	24050066 	li	a1,102
  4f74e0:	24060269 	li	a2,617
  4f74e4:	02003821 	move	a3,s0
  4f74e8:	0320f809 	jalr	t9
  4f74ec:	afb2002c 	sw	s2,44(sp)
  4f74f0:	8fbc0018 	lw	gp,24(sp)
  4f74f4:	2411000a 	li	s1,10
  4f74f8:	00002021 	move	a0,zero
  4f74fc:	8f998ccc 	lw	t9,-29492(gp)
  4f7500:	24050066 	li	a1,102
  4f7504:	2406026a 	li	a2,618
  4f7508:	02003821 	move	a3,s0
  4f750c:	0320f809 	jalr	t9
  4f7510:	afb1002c 	sw	s1,44(sp)
  4f7514:	8fbc0018 	lw	gp,24(sp)
  4f7518:	00002021 	move	a0,zero
  4f751c:	24050066 	li	a1,102
  4f7520:	8f998ccc 	lw	t9,-29492(gp)
  4f7524:	2406026c 	li	a2,620
  4f7528:	02003821 	move	a3,s0
  4f752c:	0320f809 	jalr	t9
  4f7530:	afb2002c 	sw	s2,44(sp)
  4f7534:	8fbc0018 	lw	gp,24(sp)
  4f7538:	afb1002c 	sw	s1,44(sp)
  4f753c:	00002021 	move	a0,zero
  4f7540:	8f998ccc 	lw	t9,-29492(gp)
  4f7544:	24050066 	li	a1,102
  4f7548:	2406026d 	li	a2,621
  4f754c:	0320f809 	jalr	t9
  4f7550:	02003821 	move	a3,s0
  4f7554:	8fbc0018 	lw	gp,24(sp)
  4f7558:	3c020500 	lui	v0,0x500
  4f755c:	8f998ccc 	lw	t9,-29492(gp)
  4f7560:	10000049 	b	4f7688 <adLedEnable@@Base+0xf38>
  4f7564:	3442ffc0 	ori	v0,v0,0xffc0
  4f7568:	8f998ccc 	lw	t9,-29492(gp)
  4f756c:	27b0002c 	addiu	s0,sp,44
  4f7570:	24020001 	li	v0,1
  4f7574:	00002021 	move	a0,zero
  4f7578:	24050064 	li	a1,100
  4f757c:	2406025b 	li	a2,603
  4f7580:	02003821 	move	a3,s0
  4f7584:	0320f809 	jalr	t9
  4f7588:	afa2002c 	sw	v0,44(sp)
  4f758c:	8fbc0018 	lw	gp,24(sp)
  4f7590:	00002021 	move	a0,zero
  4f7594:	24050064 	li	a1,100
  4f7598:	8f998ccc 	lw	t9,-29492(gp)
  4f759c:	2406025f 	li	a2,607
  4f75a0:	02003821 	move	a3,s0
  4f75a4:	0320f809 	jalr	t9
  4f75a8:	afa0002c 	sw	zero,44(sp)
  4f75ac:	8fbc0018 	lw	gp,24(sp)
  4f75b0:	24110003 	li	s1,3
  4f75b4:	afb1002c 	sw	s1,44(sp)
  4f75b8:	8f998ccc 	lw	t9,-29492(gp)
  4f75bc:	00002021 	move	a0,zero
  4f75c0:	24050064 	li	a1,100
  4f75c4:	24060264 	li	a2,612
  4f75c8:	0320f809 	jalr	t9
  4f75cc:	02003821 	move	a3,s0
  4f75d0:	8fbc0018 	lw	gp,24(sp)
  4f75d4:	afb1002c 	sw	s1,44(sp)
  4f75d8:	00002021 	move	a0,zero
  4f75dc:	8f998ccc 	lw	t9,-29492(gp)
  4f75e0:	24050064 	li	a1,100
  4f75e4:	24060265 	li	a2,613
  4f75e8:	0320f809 	jalr	t9
  4f75ec:	02003821 	move	a3,s0
  4f75f0:	8fbc0018 	lw	gp,24(sp)
  4f75f4:	2412000f 	li	s2,15
  4f75f8:	00002021 	move	a0,zero
  4f75fc:	8f998ccc 	lw	t9,-29492(gp)
  4f7600:	24050066 	li	a1,102
  4f7604:	24060269 	li	a2,617
  4f7608:	02003821 	move	a3,s0
  4f760c:	0320f809 	jalr	t9
  4f7610:	afb2002c 	sw	s2,44(sp)
  4f7614:	8fbc0018 	lw	gp,24(sp)
  4f7618:	2411000a 	li	s1,10
  4f761c:	00002021 	move	a0,zero
  4f7620:	8f998ccc 	lw	t9,-29492(gp)
  4f7624:	24050066 	li	a1,102
  4f7628:	2406026a 	li	a2,618
  4f762c:	02003821 	move	a3,s0
  4f7630:	0320f809 	jalr	t9
  4f7634:	afb1002c 	sw	s1,44(sp)
  4f7638:	8fbc0018 	lw	gp,24(sp)
  4f763c:	00002021 	move	a0,zero
  4f7640:	24050066 	li	a1,102
  4f7644:	8f998ccc 	lw	t9,-29492(gp)
  4f7648:	2406026c 	li	a2,620
  4f764c:	02003821 	move	a3,s0
  4f7650:	0320f809 	jalr	t9
  4f7654:	afb2002c 	sw	s2,44(sp)
  4f7658:	8fbc0018 	lw	gp,24(sp)
  4f765c:	afb1002c 	sw	s1,44(sp)
  4f7660:	00002021 	move	a0,zero
  4f7664:	8f998ccc 	lw	t9,-29492(gp)
  4f7668:	24050066 	li	a1,102
  4f766c:	2406026d 	li	a2,621
  4f7670:	0320f809 	jalr	t9
  4f7674:	02003821 	move	a3,s0
  4f7678:	8fbc0018 	lw	gp,24(sp)
  4f767c:	3c02050f 	lui	v0,0x50f
  4f7680:	8f998ccc 	lw	t9,-29492(gp)
  4f7684:	3442ff00 	ori	v0,v0,0xff00
  4f7688:	02003821 	move	a3,s0
  4f768c:	afa2002c 	sw	v0,44(sp)
  4f7690:	00002021 	move	a0,zero
  4f7694:	24050067 	li	a1,103
  4f7698:	0320f809 	jalr	t9
  4f769c:	2406026e 	li	a2,622
  4f76a0:	8fbc0018 	lw	gp,24(sp)
  4f76a4:	00000000 	nop
  4f76a8:	8f90d0f4 	lw	s0,-12044(gp)
  4f76ac:	00000000 	nop
  4f76b0:	8e020000 	lw	v0,0(s0)
  4f76b4:	00000000 	nop
  4f76b8:	10400297 	beqz	v0,4f8118 <adLedEnable@@Base+0x19c8>
  4f76bc:	24050001 	li	a1,1
  4f76c0:	8f99ff6c 	lw	t9,-148(gp)
  4f76c4:	90440242 	lbu	a0,578(v0)
  4f76c8:	0320f809 	jalr	t9
  4f76cc:	27b30020 	addiu	s3,sp,32
  4f76d0:	8fbc0018 	lw	gp,24(sp)
  4f76d4:	8e020000 	lw	v0,0(s0)
  4f76d8:	8f99ff6c 	lw	t9,-148(gp)
  4f76dc:	9044024e 	lbu	a0,590(v0)
  4f76e0:	0320f809 	jalr	t9
  4f76e4:	24050001 	li	a1,1
  4f76e8:	8fbc0018 	lw	gp,24(sp)
  4f76ec:	8e020000 	lw	v0,0(s0)
  4f76f0:	8f99ff6c 	lw	t9,-148(gp)
  4f76f4:	90440249 	lbu	a0,585(v0)
  4f76f8:	0320f809 	jalr	t9
  4f76fc:	24050001 	li	a1,1
  4f7700:	8fbc0018 	lw	gp,24(sp)
  4f7704:	8e020000 	lw	v0,0(s0)
  4f7708:	8f99ff6c 	lw	t9,-148(gp)
  4f770c:	9044024a 	lbu	a0,586(v0)
  4f7710:	0320f809 	jalr	t9
  4f7714:	24050001 	li	a1,1
  4f7718:	8fbc0018 	lw	gp,24(sp)
  4f771c:	8e020000 	lw	v0,0(s0)
  4f7720:	8f99ff6c 	lw	t9,-148(gp)
  4f7724:	9044024c 	lbu	a0,588(v0)
  4f7728:	0320f809 	jalr	t9
  4f772c:	24050001 	li	a1,1
  4f7730:	8fbc0018 	lw	gp,24(sp)
  4f7734:	8e020000 	lw	v0,0(s0)
  4f7738:	8f99ff6c 	lw	t9,-148(gp)
  4f773c:	9044024d 	lbu	a0,589(v0)
  4f7740:	0320f809 	jalr	t9
  4f7744:	24050001 	li	a1,1
  4f7748:	8e020000 	lw	v0,0(s0)
  4f774c:	8fbc0018 	lw	gp,24(sp)
  4f7750:	90430251 	lbu	v1,593(v0)
  4f7754:	90440242 	lbu	a0,578(v0)
  4f7758:	24020001 	li	v0,1
  4f775c:	8f99c400 	lw	t9,-15360(gp)
  4f7760:	1462016b 	bne	v1,v0,4f7d10 <adLedEnable@@Base+0x15c0>
  4f7764:	00000000 	nop
  4f7768:	0320f809 	jalr	t9
  4f776c:	24050001 	li	a1,1
  4f7770:	8fbc0018 	lw	gp,24(sp)
  4f7774:	8e020000 	lw	v0,0(s0)
  4f7778:	24050001 	li	a1,1
  4f777c:	8f99c400 	lw	t9,-15360(gp)
  4f7780:	9044024e 	lbu	a0,590(v0)
  4f7784:	02008821 	move	s1,s0
  4f7788:	0320f809 	jalr	t9
  4f778c:	0260f021 	move	s8,s3
  4f7790:	8fbc0018 	lw	gp,24(sp)
  4f7794:	8e020000 	lw	v0,0(s0)
  4f7798:	00002821 	move	a1,zero
  4f779c:	8f99c400 	lw	t9,-15360(gp)
  4f77a0:	9044024a 	lbu	a0,586(v0)
  4f77a4:	2416ffff 	li	s6,-1
  4f77a8:	0320f809 	jalr	t9
  4f77ac:	27b70024 	addiu	s7,sp,36
  4f77b0:	8fbc0018 	lw	gp,24(sp)
  4f77b4:	8e020000 	lw	v0,0(s0)
  4f77b8:	24050001 	li	a1,1
  4f77bc:	8f99c400 	lw	t9,-15360(gp)
  4f77c0:	90440249 	lbu	a0,585(v0)
  4f77c4:	27b50028 	addiu	s5,sp,40
  4f77c8:	0320f809 	jalr	t9
  4f77cc:	24120007 	li	s2,7
  4f77d0:	8fbc0018 	lw	gp,24(sp)
  4f77d4:	8e020000 	lw	v0,0(s0)
  4f77d8:	24050001 	li	a1,1
  4f77dc:	8f99c400 	lw	t9,-15360(gp)
  4f77e0:	9044024c 	lbu	a0,588(v0)
  4f77e4:	0320f809 	jalr	t9
  4f77e8:	24140003 	li	s4,3
  4f77ec:	8fbc0018 	lw	gp,24(sp)
  4f77f0:	8e020000 	lw	v0,0(s0)
  4f77f4:	8f99c400 	lw	t9,-15360(gp)
  4f77f8:	9044024d 	lbu	a0,589(v0)
  4f77fc:	0320f809 	jalr	t9
  4f7800:	24050001 	li	a1,1
  4f7804:	8fbc0018 	lw	gp,24(sp)
  4f7808:	00000000 	nop
  4f780c:	8f999c14 	lw	t9,-25580(gp)
  4f7810:	00000000 	nop
  4f7814:	0320f809 	jalr	t9
  4f7818:	00000000 	nop
  4f781c:	8fbc0018 	lw	gp,24(sp)
  4f7820:	00000000 	nop
  4f7824:	8f84f72c 	lw	a0,-2260(gp)
  4f7828:	8f99f1d8 	lw	t9,-3624(gp)
  4f782c:	10000048 	b	4f7950 <adLedEnable@@Base+0x1200>
  4f7830:	02602821 	move	a1,s3
  4f7834:	8f998548 	lw	t9,-31416(gp)
  4f7838:	8fa40020 	lw	a0,32(sp)
  4f783c:	02e02821 	move	a1,s7
  4f7840:	0320f809 	jalr	t9
  4f7844:	02a03021 	move	a2,s5
  4f7848:	8fbc0018 	lw	gp,24(sp)
  4f784c:	14400233 	bnez	v0,4f811c <adLedEnable@@Base+0x19cc>
  4f7850:	00002021 	move	a0,zero
  4f7854:	8e220000 	lw	v0,0(s1)
  4f7858:	8f99cd28 	lw	t9,-13016(gp)
  4f785c:	8fa50028 	lw	a1,40(sp)
  4f7860:	90460253 	lbu	a2,595(v0)
  4f7864:	0320f809 	jalr	t9
  4f7868:	24070001 	li	a3,1
  4f786c:	8fbc0018 	lw	gp,24(sp)
  4f7870:	8e220000 	lw	v0,0(s1)
  4f7874:	8fa50028 	lw	a1,40(sp)
  4f7878:	8f999988 	lw	t9,-26232(gp)
  4f787c:	90460253 	lbu	a2,595(v0)
  4f7880:	00002021 	move	a0,zero
  4f7884:	afb20010 	sw	s2,16(sp)
  4f7888:	0320f809 	jalr	t9
  4f788c:	00003821 	move	a3,zero
  4f7890:	8e240000 	lw	a0,0(s1)
  4f7894:	24020001 	li	v0,1
  4f7898:	8fbc0018 	lw	gp,24(sp)
  4f789c:	90830252 	lbu	v1,594(a0)
  4f78a0:	00000000 	nop
  4f78a4:	14620011 	bne	v1,v0,4f78ec <adLedEnable@@Base+0x119c>
  4f78a8:	00000000 	nop
  4f78ac:	8f99cd28 	lw	t9,-13016(gp)
  4f78b0:	90860254 	lbu	a2,596(a0)
  4f78b4:	8fa50028 	lw	a1,40(sp)
  4f78b8:	00002021 	move	a0,zero
  4f78bc:	0320f809 	jalr	t9
  4f78c0:	24070001 	li	a3,1
  4f78c4:	8fbc0018 	lw	gp,24(sp)
  4f78c8:	8e220000 	lw	v0,0(s1)
  4f78cc:	8fa50028 	lw	a1,40(sp)
  4f78d0:	8f999988 	lw	t9,-26232(gp)
  4f78d4:	90460254 	lbu	a2,596(v0)
  4f78d8:	00002021 	move	a0,zero
  4f78dc:	afb20010 	sw	s2,16(sp)
  4f78e0:	0320f809 	jalr	t9
  4f78e4:	00003821 	move	a3,zero
  4f78e8:	8fbc0018 	lw	gp,24(sp)
  4f78ec:	8e230000 	lw	v1,0(s1)
  4f78f0:	00000000 	nop
  4f78f4:	90620252 	lbu	v0,594(v1)
  4f78f8:	00000000 	nop
  4f78fc:	14540011 	bne	v0,s4,4f7944 <adLedEnable@@Base+0x11f4>
  4f7900:	00002021 	move	a0,zero
  4f7904:	8f99cd28 	lw	t9,-13016(gp)
  4f7908:	90660255 	lbu	a2,597(v1)
  4f790c:	8fa50028 	lw	a1,40(sp)
  4f7910:	0320f809 	jalr	t9
  4f7914:	24070001 	li	a3,1
  4f7918:	8fbc0018 	lw	gp,24(sp)
  4f791c:	8e220000 	lw	v0,0(s1)
  4f7920:	8fa50028 	lw	a1,40(sp)
  4f7924:	8f999988 	lw	t9,-26232(gp)
  4f7928:	90460255 	lbu	a2,597(v0)
  4f792c:	00002021 	move	a0,zero
  4f7930:	afb20010 	sw	s2,16(sp)
  4f7934:	0320f809 	jalr	t9
  4f7938:	00003821 	move	a3,zero
  4f793c:	8fbc0018 	lw	gp,24(sp)
  4f7940:	00000000 	nop
  4f7944:	8f99e764 	lw	t9,-6300(gp)
  4f7948:	8f84f72c 	lw	a0,-2260(gp)
  4f794c:	03c02821 	move	a1,s8
  4f7950:	0320f809 	jalr	t9
  4f7954:	00000000 	nop
  4f7958:	87a20020 	lh	v0,32(sp)
  4f795c:	8fbc0018 	lw	gp,24(sp)
  4f7960:	1456ffb4 	bne	v0,s6,4f7834 <adLedEnable@@Base+0x10e4>
  4f7964:	2410000a 	li	s0,10
  4f7968:	8f9996d8 	lw	t9,-26920(gp)
  4f796c:	00000000 	nop
  4f7970:	0320f809 	jalr	t9
  4f7974:	27b10020 	addiu	s1,sp,32
  4f7978:	16000002 	bnez	s0,4f7984 <adLedEnable@@Base+0x1234>
  4f797c:	0050001a 	div	zero,v0,s0
  4f7980:	0007000d 	break	0x7
  4f7984:	8fbc0018 	lw	gp,24(sp)
  4f7988:	afb10030 	sw	s1,48(sp)
  4f798c:	241effff 	li	s8,-1
  4f7990:	8f9996d8 	lw	t9,-26920(gp)
  4f7994:	27b70024 	addiu	s7,sp,36
  4f7998:	27b60028 	addiu	s6,sp,40
  4f799c:	24150001 	li	s5,1
  4f79a0:	00009012 	mflo	s2
  4f79a4:	0320f809 	jalr	t9
  4f79a8:	24140007 	li	s4,7
  4f79ac:	8fbc0018 	lw	gp,24(sp)
  4f79b0:	16000002 	bnez	s0,4f79bc <adLedEnable@@Base+0x126c>
  4f79b4:	0050001a 	div	zero,v0,s0
  4f79b8:	0007000d 	break	0x7
  4f79bc:	8f99c8f4 	lw	t9,-14092(gp)
  4f79c0:	8f93d0f4 	lw	s3,-12044(gp)
  4f79c4:	00001010 	mfhi	v0
  4f79c8:	28420005 	slti	v0,v0,5
  4f79cc:	2c420001 	sltiu	v0,v0,1
  4f79d0:	02429021 	addu	s2,s2,v0
  4f79d4:	0320f809 	jalr	t9
  4f79d8:	02402021 	move	a0,s2
  4f79dc:	8fbc0018 	lw	gp,24(sp)
  4f79e0:	00000000 	nop
  4f79e4:	8f999c14 	lw	t9,-25580(gp)
  4f79e8:	00000000 	nop
  4f79ec:	0320f809 	jalr	t9
  4f79f0:	00000000 	nop
  4f79f4:	8fbc0018 	lw	gp,24(sp)
  4f79f8:	00000000 	nop
  4f79fc:	8f84f72c 	lw	a0,-2260(gp)
  4f7a00:	8f99f1d8 	lw	t9,-3624(gp)
  4f7a04:	10000033 	b	4f7ad4 <adLedEnable@@Base+0x1384>
  4f7a08:	02202821 	move	a1,s1
  4f7a0c:	8f998548 	lw	t9,-31416(gp)
  4f7a10:	8fa40020 	lw	a0,32(sp)
  4f7a14:	02e02821 	move	a1,s7
  4f7a18:	0320f809 	jalr	t9
  4f7a1c:	02c03021 	move	a2,s6
  4f7a20:	8fbc0018 	lw	gp,24(sp)
  4f7a24:	144001bd 	bnez	v0,4f811c <adLedEnable@@Base+0x19cc>
  4f7a28:	00000000 	nop
  4f7a2c:	8e630000 	lw	v1,0(s3)
  4f7a30:	00000000 	nop
  4f7a34:	90620252 	lbu	v0,594(v1)
  4f7a38:	00000000 	nop
  4f7a3c:	10550022 	beq	v0,s5,4f7ac8 <adLedEnable@@Base+0x1378>
  4f7a40:	00002021 	move	a0,zero
  4f7a44:	90660253 	lbu	a2,595(v1)
  4f7a48:	8f999988 	lw	t9,-26232(gp)
  4f7a4c:	8fa50028 	lw	a1,40(sp)
  4f7a50:	00003821 	move	a3,zero
  4f7a54:	0320f809 	jalr	t9
  4f7a58:	afa00010 	sw	zero,16(sp)
  4f7a5c:	8fbc0018 	lw	gp,24(sp)
  4f7a60:	8e620000 	lw	v0,0(s3)
  4f7a64:	8fa50028 	lw	a1,40(sp)
  4f7a68:	8f99cd28 	lw	t9,-13016(gp)
  4f7a6c:	90460253 	lbu	a2,595(v0)
  4f7a70:	00002021 	move	a0,zero
  4f7a74:	0320f809 	jalr	t9
  4f7a78:	00003821 	move	a3,zero
  4f7a7c:	8fbc0018 	lw	gp,24(sp)
  4f7a80:	8e620000 	lw	v0,0(s3)
  4f7a84:	8fa50028 	lw	a1,40(sp)
  4f7a88:	8f99cd28 	lw	t9,-13016(gp)
  4f7a8c:	90460254 	lbu	a2,596(v0)
  4f7a90:	00002021 	move	a0,zero
  4f7a94:	0320f809 	jalr	t9
  4f7a98:	24070001 	li	a3,1
  4f7a9c:	8fbc0018 	lw	gp,24(sp)
  4f7aa0:	8e620000 	lw	v0,0(s3)
  4f7aa4:	8fa50028 	lw	a1,40(sp)
  4f7aa8:	8f999988 	lw	t9,-26232(gp)
  4f7aac:	90460254 	lbu	a2,596(v0)
  4f7ab0:	00002021 	move	a0,zero
  4f7ab4:	afb40010 	sw	s4,16(sp)
  4f7ab8:	0320f809 	jalr	t9
  4f7abc:	00003821 	move	a3,zero
  4f7ac0:	8fbc0018 	lw	gp,24(sp)
  4f7ac4:	00000000 	nop
  4f7ac8:	8f99e764 	lw	t9,-6300(gp)
  4f7acc:	8f84f72c 	lw	a0,-2260(gp)
  4f7ad0:	8fa50030 	lw	a1,48(sp)
  4f7ad4:	0320f809 	jalr	t9
  4f7ad8:	00000000 	nop
  4f7adc:	87a20020 	lh	v0,32(sp)
  4f7ae0:	8fbc0018 	lw	gp,24(sp)
  4f7ae4:	145effc9 	bne	v0,s8,4f7a0c <adLedEnable@@Base+0x12bc>
  4f7ae8:	00002821 	move	a1,zero
  4f7aec:	8f90d0f4 	lw	s0,-12044(gp)
  4f7af0:	8f99c400 	lw	t9,-15360(gp)
  4f7af4:	8e020000 	lw	v0,0(s0)
  4f7af8:	27b10020 	addiu	s1,sp,32
  4f7afc:	02009821 	move	s3,s0
  4f7b00:	90440249 	lbu	a0,585(v0)
  4f7b04:	0220f021 	move	s8,s1
  4f7b08:	0320f809 	jalr	t9
  4f7b0c:	2417ffff 	li	s7,-1
  4f7b10:	8fbc0018 	lw	gp,24(sp)
  4f7b14:	8e020000 	lw	v0,0(s0)
  4f7b18:	24050001 	li	a1,1
  4f7b1c:	8f99c400 	lw	t9,-15360(gp)
  4f7b20:	9044024a 	lbu	a0,586(v0)
  4f7b24:	27b60024 	addiu	s6,sp,36
  4f7b28:	0320f809 	jalr	t9
  4f7b2c:	27b50028 	addiu	s5,sp,40
  4f7b30:	8fbc0018 	lw	gp,24(sp)
  4f7b34:	02402021 	move	a0,s2
  4f7b38:	24140003 	li	s4,3
  4f7b3c:	8f99c8f4 	lw	t9,-14092(gp)
  4f7b40:	00000000 	nop
  4f7b44:	0320f809 	jalr	t9
  4f7b48:	24120001 	li	s2,1
  4f7b4c:	8fbc0018 	lw	gp,24(sp)
  4f7b50:	8e020000 	lw	v0,0(s0)
  4f7b54:	8f99c400 	lw	t9,-15360(gp)
  4f7b58:	90440242 	lbu	a0,578(v0)
  4f7b5c:	0320f809 	jalr	t9
  4f7b60:	00002821 	move	a1,zero
  4f7b64:	8fbc0018 	lw	gp,24(sp)
  4f7b68:	8e020000 	lw	v0,0(s0)
  4f7b6c:	8f99c400 	lw	t9,-15360(gp)
  4f7b70:	9044024e 	lbu	a0,590(v0)
  4f7b74:	0320f809 	jalr	t9
  4f7b78:	00002821 	move	a1,zero
  4f7b7c:	8fbc0018 	lw	gp,24(sp)
  4f7b80:	8e020000 	lw	v0,0(s0)
  4f7b84:	8f99c400 	lw	t9,-15360(gp)
  4f7b88:	9044024a 	lbu	a0,586(v0)
  4f7b8c:	0320f809 	jalr	t9
  4f7b90:	00002821 	move	a1,zero
  4f7b94:	8fbc0018 	lw	gp,24(sp)
  4f7b98:	8e020000 	lw	v0,0(s0)
  4f7b9c:	8f99c400 	lw	t9,-15360(gp)
  4f7ba0:	9044024c 	lbu	a0,588(v0)
  4f7ba4:	0320f809 	jalr	t9
  4f7ba8:	00002821 	move	a1,zero
  4f7bac:	8fbc0018 	lw	gp,24(sp)
  4f7bb0:	8e020000 	lw	v0,0(s0)
  4f7bb4:	8f99c400 	lw	t9,-15360(gp)
  4f7bb8:	9044024d 	lbu	a0,589(v0)
  4f7bbc:	0320f809 	jalr	t9
  4f7bc0:	00002821 	move	a1,zero
  4f7bc4:	8fbc0018 	lw	gp,24(sp)
  4f7bc8:	00000000 	nop
  4f7bcc:	8f999c14 	lw	t9,-25580(gp)
  4f7bd0:	00000000 	nop
  4f7bd4:	0320f809 	jalr	t9
  4f7bd8:	00000000 	nop
  4f7bdc:	8fbc0018 	lw	gp,24(sp)
  4f7be0:	00000000 	nop
  4f7be4:	8f84f72c 	lw	a0,-2260(gp)
  4f7be8:	8f99f1d8 	lw	t9,-3624(gp)
  4f7bec:	10000040 	b	4f7cf0 <adLedEnable@@Base+0x15a0>
  4f7bf0:	02202821 	move	a1,s1
  4f7bf4:	8f998548 	lw	t9,-31416(gp)
  4f7bf8:	8fa40020 	lw	a0,32(sp)
  4f7bfc:	0320f809 	jalr	t9
  4f7c00:	02a03021 	move	a2,s5
  4f7c04:	8fbc0018 	lw	gp,24(sp)
  4f7c08:	14400144 	bnez	v0,4f811c <adLedEnable@@Base+0x19cc>
  4f7c0c:	00002021 	move	a0,zero
  4f7c10:	8e620000 	lw	v0,0(s3)
  4f7c14:	8f99cd28 	lw	t9,-13016(gp)
  4f7c18:	8fa50028 	lw	a1,40(sp)
  4f7c1c:	90460254 	lbu	a2,596(v0)
  4f7c20:	0320f809 	jalr	t9
  4f7c24:	00003821 	move	a3,zero
  4f7c28:	8fbc0018 	lw	gp,24(sp)
  4f7c2c:	8e620000 	lw	v0,0(s3)
  4f7c30:	8fa50028 	lw	a1,40(sp)
  4f7c34:	8f99cd28 	lw	t9,-13016(gp)
  4f7c38:	90460254 	lbu	a2,596(v0)
  4f7c3c:	00002021 	move	a0,zero
  4f7c40:	0320f809 	jalr	t9
  4f7c44:	00003821 	move	a3,zero
  4f7c48:	8e620000 	lw	v0,0(s3)
  4f7c4c:	8fbc0018 	lw	gp,24(sp)
  4f7c50:	90430252 	lbu	v1,594(v0)
  4f7c54:	00000000 	nop
  4f7c58:	14740011 	bne	v1,s4,4f7ca0 <adLedEnable@@Base+0x1550>
  4f7c5c:	00002021 	move	a0,zero
  4f7c60:	8f99cd28 	lw	t9,-13016(gp)
  4f7c64:	8fa50028 	lw	a1,40(sp)
  4f7c68:	90460255 	lbu	a2,597(v0)
  4f7c6c:	0320f809 	jalr	t9
  4f7c70:	24070001 	li	a3,1
  4f7c74:	8e620000 	lw	v0,0(s3)
  4f7c78:	8fbc0018 	lw	gp,24(sp)
  4f7c7c:	8fa50028 	lw	a1,40(sp)
  4f7c80:	90460255 	lbu	a2,597(v0)
  4f7c84:	8f999988 	lw	t9,-26232(gp)
  4f7c88:	afa00010 	sw	zero,16(sp)
  4f7c8c:	00002021 	move	a0,zero
  4f7c90:	0320f809 	jalr	t9
  4f7c94:	00003821 	move	a3,zero
  4f7c98:	10000010 	b	4f7cdc <adLedEnable@@Base+0x158c>
  4f7c9c:	00000000 	nop
  4f7ca0:	14720010 	bne	v1,s2,4f7ce4 <adLedEnable@@Base+0x1594>
  4f7ca4:	00000000 	nop
  4f7ca8:	8f99cd28 	lw	t9,-13016(gp)
  4f7cac:	90460253 	lbu	a2,595(v0)
  4f7cb0:	8fa50028 	lw	a1,40(sp)
  4f7cb4:	0320f809 	jalr	t9
  4f7cb8:	00003821 	move	a3,zero
  4f7cbc:	8fbc0018 	lw	gp,24(sp)
  4f7cc0:	8e620000 	lw	v0,0(s3)
  4f7cc4:	8fa50028 	lw	a1,40(sp)
  4f7cc8:	8f99cd28 	lw	t9,-13016(gp)
  4f7ccc:	90460253 	lbu	a2,595(v0)
  4f7cd0:	00002021 	move	a0,zero
  4f7cd4:	0320f809 	jalr	t9
  4f7cd8:	00003821 	move	a3,zero
  4f7cdc:	8fbc0018 	lw	gp,24(sp)
  4f7ce0:	00000000 	nop
  4f7ce4:	8f99e764 	lw	t9,-6300(gp)
  4f7ce8:	8f84f72c 	lw	a0,-2260(gp)
  4f7cec:	03c02821 	move	a1,s8
  4f7cf0:	0320f809 	jalr	t9
  4f7cf4:	00000000 	nop
  4f7cf8:	87a20020 	lh	v0,32(sp)
  4f7cfc:	8fbc0018 	lw	gp,24(sp)
  4f7d00:	1457ffbc 	bne	v0,s7,4f7bf4 <adLedEnable@@Base+0x14a4>
  4f7d04:	02c02821 	move	a1,s6
  4f7d08:	10000104 	b	4f811c <adLedEnable@@Base+0x19cc>
  4f7d0c:	00001021 	move	v0,zero
  4f7d10:	0320f809 	jalr	t9
  4f7d14:	24050001 	li	a1,1
  4f7d18:	8fbc0018 	lw	gp,24(sp)
  4f7d1c:	8e020000 	lw	v0,0(s0)
  4f7d20:	24050001 	li	a1,1
  4f7d24:	8f99c400 	lw	t9,-15360(gp)
  4f7d28:	9044024e 	lbu	a0,590(v0)
  4f7d2c:	02008821 	move	s1,s0
  4f7d30:	0320f809 	jalr	t9
  4f7d34:	0260f021 	move	s8,s3
  4f7d38:	8fbc0018 	lw	gp,24(sp)
  4f7d3c:	8e020000 	lw	v0,0(s0)
  4f7d40:	00002821 	move	a1,zero
  4f7d44:	8f99c400 	lw	t9,-15360(gp)
  4f7d48:	9044024a 	lbu	a0,586(v0)
  4f7d4c:	2416ffff 	li	s6,-1
  4f7d50:	0320f809 	jalr	t9
  4f7d54:	27b70024 	addiu	s7,sp,36
  4f7d58:	8fbc0018 	lw	gp,24(sp)
  4f7d5c:	8e020000 	lw	v0,0(s0)
  4f7d60:	24050001 	li	a1,1
  4f7d64:	8f99c400 	lw	t9,-15360(gp)
  4f7d68:	90440249 	lbu	a0,585(v0)
  4f7d6c:	27b50028 	addiu	s5,sp,40
  4f7d70:	0320f809 	jalr	t9
  4f7d74:	24120007 	li	s2,7
  4f7d78:	8fbc0018 	lw	gp,24(sp)
  4f7d7c:	8e020000 	lw	v0,0(s0)
  4f7d80:	24050001 	li	a1,1
  4f7d84:	8f99c400 	lw	t9,-15360(gp)
  4f7d88:	9044024c 	lbu	a0,588(v0)
  4f7d8c:	0320f809 	jalr	t9
  4f7d90:	24140003 	li	s4,3
  4f7d94:	8fbc0018 	lw	gp,24(sp)
  4f7d98:	8e020000 	lw	v0,0(s0)
  4f7d9c:	8f99c400 	lw	t9,-15360(gp)
  4f7da0:	9044024d 	lbu	a0,589(v0)
  4f7da4:	0320f809 	jalr	t9
  4f7da8:	24050001 	li	a1,1
  4f7dac:	8fbc0018 	lw	gp,24(sp)
  4f7db0:	00000000 	nop
  4f7db4:	8f999c14 	lw	t9,-25580(gp)
  4f7db8:	00000000 	nop
  4f7dbc:	0320f809 	jalr	t9
  4f7dc0:	00000000 	nop
  4f7dc4:	8fbc0018 	lw	gp,24(sp)
  4f7dc8:	00000000 	nop
  4f7dcc:	8f84f72c 	lw	a0,-2260(gp)
  4f7dd0:	8f99f1d8 	lw	t9,-3624(gp)
  4f7dd4:	10000048 	b	4f7ef8 <adLedEnable@@Base+0x17a8>
  4f7dd8:	02602821 	move	a1,s3
  4f7ddc:	8f998548 	lw	t9,-31416(gp)
  4f7de0:	8fa40020 	lw	a0,32(sp)
  4f7de4:	02e02821 	move	a1,s7
  4f7de8:	0320f809 	jalr	t9
  4f7dec:	02a03021 	move	a2,s5
  4f7df0:	8fbc0018 	lw	gp,24(sp)
  4f7df4:	144000c9 	bnez	v0,4f811c <adLedEnable@@Base+0x19cc>
  4f7df8:	00002021 	move	a0,zero
  4f7dfc:	8e220000 	lw	v0,0(s1)
  4f7e00:	8f99cd28 	lw	t9,-13016(gp)
  4f7e04:	8fa50028 	lw	a1,40(sp)
  4f7e08:	90460253 	lbu	a2,595(v0)
  4f7e0c:	0320f809 	jalr	t9
  4f7e10:	24070001 	li	a3,1
  4f7e14:	8fbc0018 	lw	gp,24(sp)
  4f7e18:	8e220000 	lw	v0,0(s1)
  4f7e1c:	8fa50028 	lw	a1,40(sp)
  4f7e20:	8f999988 	lw	t9,-26232(gp)
  4f7e24:	90460253 	lbu	a2,595(v0)
  4f7e28:	00002021 	move	a0,zero
  4f7e2c:	afb20010 	sw	s2,16(sp)
  4f7e30:	0320f809 	jalr	t9
  4f7e34:	00003821 	move	a3,zero
  4f7e38:	8e240000 	lw	a0,0(s1)
  4f7e3c:	24020001 	li	v0,1
  4f7e40:	8fbc0018 	lw	gp,24(sp)
  4f7e44:	90830252 	lbu	v1,594(a0)
  4f7e48:	00000000 	nop
  4f7e4c:	14620011 	bne	v1,v0,4f7e94 <adLedEnable@@Base+0x1744>
  4f7e50:	00000000 	nop
  4f7e54:	8f99cd28 	lw	t9,-13016(gp)
  4f7e58:	90860254 	lbu	a2,596(a0)
  4f7e5c:	8fa50028 	lw	a1,40(sp)
  4f7e60:	00002021 	move	a0,zero
  4f7e64:	0320f809 	jalr	t9
  4f7e68:	24070001 	li	a3,1
  4f7e6c:	8fbc0018 	lw	gp,24(sp)
  4f7e70:	8e220000 	lw	v0,0(s1)
  4f7e74:	8fa50028 	lw	a1,40(sp)
  4f7e78:	8f999988 	lw	t9,-26232(gp)
  4f7e7c:	90460254 	lbu	a2,596(v0)
  4f7e80:	00002021 	move	a0,zero
  4f7e84:	afb20010 	sw	s2,16(sp)
  4f7e88:	0320f809 	jalr	t9
  4f7e8c:	00003821 	move	a3,zero
  4f7e90:	8fbc0018 	lw	gp,24(sp)
  4f7e94:	8e230000 	lw	v1,0(s1)
  4f7e98:	00000000 	nop
  4f7e9c:	90620252 	lbu	v0,594(v1)
  4f7ea0:	00000000 	nop
  4f7ea4:	14540011 	bne	v0,s4,4f7eec <adLedEnable@@Base+0x179c>
  4f7ea8:	00002021 	move	a0,zero
  4f7eac:	8f99cd28 	lw	t9,-13016(gp)
  4f7eb0:	90660255 	lbu	a2,597(v1)
  4f7eb4:	8fa50028 	lw	a1,40(sp)
  4f7eb8:	0320f809 	jalr	t9
  4f7ebc:	24070001 	li	a3,1
  4f7ec0:	8fbc0018 	lw	gp,24(sp)
  4f7ec4:	8e220000 	lw	v0,0(s1)
  4f7ec8:	8fa50028 	lw	a1,40(sp)
  4f7ecc:	8f999988 	lw	t9,-26232(gp)
  4f7ed0:	90460255 	lbu	a2,597(v0)
  4f7ed4:	00002021 	move	a0,zero
  4f7ed8:	afb20010 	sw	s2,16(sp)
  4f7edc:	0320f809 	jalr	t9
  4f7ee0:	00003821 	move	a3,zero
  4f7ee4:	8fbc0018 	lw	gp,24(sp)
  4f7ee8:	00000000 	nop
  4f7eec:	8f99e764 	lw	t9,-6300(gp)
  4f7ef0:	8f84f72c 	lw	a0,-2260(gp)
  4f7ef4:	03c02821 	move	a1,s8
  4f7ef8:	0320f809 	jalr	t9
  4f7efc:	00000000 	nop
  4f7f00:	87a20020 	lh	v0,32(sp)
  4f7f04:	8fbc0018 	lw	gp,24(sp)
  4f7f08:	1456ffb4 	bne	v0,s6,4f7ddc <adLedEnable@@Base+0x168c>
  4f7f0c:	24040001 	li	a0,1
  4f7f10:	8f90d0f4 	lw	s0,-12044(gp)
  4f7f14:	8f99c8f4 	lw	t9,-14092(gp)
  4f7f18:	00000000 	nop
  4f7f1c:	0320f809 	jalr	t9
  4f7f20:	27b10020 	addiu	s1,sp,32
  4f7f24:	8fbc0018 	lw	gp,24(sp)
  4f7f28:	8e020000 	lw	v0,0(s0)
  4f7f2c:	00002821 	move	a1,zero
  4f7f30:	8f99c400 	lw	t9,-15360(gp)
  4f7f34:	90440242 	lbu	a0,578(v0)
  4f7f38:	02009021 	move	s2,s0
  4f7f3c:	0320f809 	jalr	t9
  4f7f40:	0220b821 	move	s7,s1
  4f7f44:	8fbc0018 	lw	gp,24(sp)
  4f7f48:	8e020000 	lw	v0,0(s0)
  4f7f4c:	00002821 	move	a1,zero
  4f7f50:	8f99c400 	lw	t9,-15360(gp)
  4f7f54:	9044024e 	lbu	a0,590(v0)
  4f7f58:	2416ffff 	li	s6,-1
  4f7f5c:	0320f809 	jalr	t9
  4f7f60:	27b50024 	addiu	s5,sp,36
  4f7f64:	8fbc0018 	lw	gp,24(sp)
  4f7f68:	8e020000 	lw	v0,0(s0)
  4f7f6c:	00002821 	move	a1,zero
  4f7f70:	8f99c400 	lw	t9,-15360(gp)
  4f7f74:	90440249 	lbu	a0,585(v0)
  4f7f78:	27b40028 	addiu	s4,sp,40
  4f7f7c:	0320f809 	jalr	t9
  4f7f80:	24130003 	li	s3,3
  4f7f84:	8fbc0018 	lw	gp,24(sp)
  4f7f88:	8e020000 	lw	v0,0(s0)
  4f7f8c:	8f99c400 	lw	t9,-15360(gp)
  4f7f90:	9044024c 	lbu	a0,588(v0)
  4f7f94:	0320f809 	jalr	t9
  4f7f98:	00002821 	move	a1,zero
  4f7f9c:	8fbc0018 	lw	gp,24(sp)
  4f7fa0:	8e020000 	lw	v0,0(s0)
  4f7fa4:	8f99c400 	lw	t9,-15360(gp)
  4f7fa8:	9044024d 	lbu	a0,589(v0)
  4f7fac:	0320f809 	jalr	t9
  4f7fb0:	00002821 	move	a1,zero
  4f7fb4:	8fbc0018 	lw	gp,24(sp)
  4f7fb8:	00000000 	nop
  4f7fbc:	8f999c14 	lw	t9,-25580(gp)
  4f7fc0:	00000000 	nop
  4f7fc4:	0320f809 	jalr	t9
  4f7fc8:	00000000 	nop
  4f7fcc:	8fbc0018 	lw	gp,24(sp)
  4f7fd0:	00000000 	nop
  4f7fd4:	8f84f72c 	lw	a0,-2260(gp)
  4f7fd8:	8f99f1d8 	lw	t9,-3624(gp)
  4f7fdc:	10000046 	b	4f80f8 <adLedEnable@@Base+0x19a8>
  4f7fe0:	02202821 	move	a1,s1
  4f7fe4:	8f998548 	lw	t9,-31416(gp)
  4f7fe8:	8fa40020 	lw	a0,32(sp)
  4f7fec:	0320f809 	jalr	t9
  4f7ff0:	02803021 	move	a2,s4
  4f7ff4:	8fbc0018 	lw	gp,24(sp)
  4f7ff8:	14400048 	bnez	v0,4f811c <adLedEnable@@Base+0x19cc>
  4f7ffc:	00002021 	move	a0,zero
  4f8000:	8e420000 	lw	v0,0(s2)
  4f8004:	8f999988 	lw	t9,-26232(gp)
  4f8008:	8fa50028 	lw	a1,40(sp)
  4f800c:	90460253 	lbu	a2,595(v0)
  4f8010:	afa00010 	sw	zero,16(sp)
  4f8014:	0320f809 	jalr	t9
  4f8018:	00003821 	move	a3,zero
  4f801c:	8e430000 	lw	v1,0(s2)
  4f8020:	8fbc0018 	lw	gp,24(sp)
  4f8024:	90620252 	lbu	v0,594(v1)
  4f8028:	00000000 	nop
  4f802c:	14530010 	bne	v0,s3,4f8070 <adLedEnable@@Base+0x1920>
  4f8030:	00002021 	move	a0,zero
  4f8034:	8f99cd28 	lw	t9,-13016(gp)
  4f8038:	90660255 	lbu	a2,597(v1)
  4f803c:	8fa50028 	lw	a1,40(sp)
  4f8040:	0320f809 	jalr	t9
  4f8044:	24070001 	li	a3,1
  4f8048:	8fbc0018 	lw	gp,24(sp)
  4f804c:	8e420000 	lw	v0,0(s2)
  4f8050:	8fa50028 	lw	a1,40(sp)
  4f8054:	8f999988 	lw	t9,-26232(gp)
  4f8058:	90460255 	lbu	a2,597(v0)
  4f805c:	00002021 	move	a0,zero
  4f8060:	afa00010 	sw	zero,16(sp)
  4f8064:	0320f809 	jalr	t9
  4f8068:	00003821 	move	a3,zero
  4f806c:	8fbc0018 	lw	gp,24(sp)
  4f8070:	8e440000 	lw	a0,0(s2)
  4f8074:	24020001 	li	v0,1
  4f8078:	90830252 	lbu	v1,594(a0)
  4f807c:	00000000 	nop
  4f8080:	14620009 	bne	v1,v0,4f80a8 <adLedEnable@@Base+0x1958>
  4f8084:	00000000 	nop
  4f8088:	90860254 	lbu	a2,596(a0)
  4f808c:	8f999988 	lw	t9,-26232(gp)
  4f8090:	8fa50028 	lw	a1,40(sp)
  4f8094:	afa00010 	sw	zero,16(sp)
  4f8098:	00002021 	move	a0,zero
  4f809c:	0320f809 	jalr	t9
  4f80a0:	00003821 	move	a3,zero
  4f80a4:	8fbc0018 	lw	gp,24(sp)
  4f80a8:	8e420000 	lw	v0,0(s2)
  4f80ac:	8f99cd28 	lw	t9,-13016(gp)
  4f80b0:	8fa50028 	lw	a1,40(sp)
  4f80b4:	90460253 	lbu	a2,595(v0)
  4f80b8:	00002021 	move	a0,zero
  4f80bc:	0320f809 	jalr	t9
  4f80c0:	00003821 	move	a3,zero
  4f80c4:	8fbc0018 	lw	gp,24(sp)
  4f80c8:	8e420000 	lw	v0,0(s2)
  4f80cc:	8fa50028 	lw	a1,40(sp)
  4f80d0:	8f99cd28 	lw	t9,-13016(gp)
  4f80d4:	90460254 	lbu	a2,596(v0)
  4f80d8:	00002021 	move	a0,zero
  4f80dc:	0320f809 	jalr	t9
  4f80e0:	00003821 	move	a3,zero
  4f80e4:	8fbc0018 	lw	gp,24(sp)
  4f80e8:	02e02821 	move	a1,s7
  4f80ec:	8f84f72c 	lw	a0,-2260(gp)
  4f80f0:	8f99e764 	lw	t9,-6300(gp)
  4f80f4:	00000000 	nop
  4f80f8:	0320f809 	jalr	t9
  4f80fc:	00000000 	nop
  4f8100:	87a20020 	lh	v0,32(sp)
  4f8104:	8fbc0018 	lw	gp,24(sp)
  4f8108:	1456ffb6 	bne	v0,s6,4f7fe4 <adLedEnable@@Base+0x1894>
  4f810c:	02a02821 	move	a1,s5
  4f8110:	10000002 	b	4f811c <adLedEnable@@Base+0x19cc>
  4f8114:	00001021 	move	v0,zero
  4f8118:	24020001 	li	v0,1
  4f811c:	8fbf005c 	lw	ra,92(sp)
  4f8120:	8fbe0058 	lw	s8,88(sp)
  4f8124:	8fb70054 	lw	s7,84(sp)
  4f8128:	8fb60050 	lw	s6,80(sp)
  4f812c:	8fb5004c 	lw	s5,76(sp)
  4f8130:	8fb40048 	lw	s4,72(sp)
  4f8134:	8fb30044 	lw	s3,68(sp)
  4f8138:	8fb20040 	lw	s2,64(sp)
  4f813c:	8fb1003c 	lw	s1,60(sp)
  4f8140:	8fb00038 	lw	s0,56(sp)
  4f8144:	03e00008 	jr	ra
  4f8148:	27bd0060 	addiu	sp,sp,96

004f814c <adMiscInit@@Base>:
  4f814c:	3c1c00a3 	lui	gp,0xa3
  4f8150:	279c97c4 	addiu	gp,gp,-26684
  4f8154:	0399e021 	addu	gp,gp,t9
  4f8158:	27bdfed0 	addiu	sp,sp,-304
  4f815c:	afbf012c 	sw	ra,300(sp)
  4f8160:	afb20128 	sw	s2,296(sp)
  4f8164:	afb10124 	sw	s1,292(sp)
  4f8168:	afb00120 	sw	s0,288(sp)
  4f816c:	afbc0018 	sw	gp,24(sp)
  4f8170:	8f99ce64 	lw	t9,-12700(gp)
  4f8174:	27b10020 	addiu	s1,sp,32
  4f8178:	02202021 	move	a0,s1
  4f817c:	00002821 	move	a1,zero
  4f8180:	8f928028 	lw	s2,-32728(gp)
  4f8184:	0320f809 	jalr	t9
  4f8188:	24060100 	li	a2,256
  4f818c:	8fbc0018 	lw	gp,24(sp)
  4f8190:	26440168 	addiu	a0,s2,360
  4f8194:	8f99b4f4 	lw	t9,-19212(gp)
  4f8198:	00000000 	nop
  4f819c:	0320f809 	jalr	t9
  4f81a0:	02202821 	move	a1,s1
  4f81a4:	8fbc0018 	lw	gp,24(sp)
  4f81a8:	1440000f 	bnez	v0,4f81e8 <adMiscInit@@Base+0x9c>
  4f81ac:	00000000 	nop
  4f81b0:	8f99c7d8 	lw	t9,-14376(gp)
  4f81b4:	02202021 	move	a0,s1
  4f81b8:	00002821 	move	a1,zero
  4f81bc:	0320f809 	jalr	t9
  4f81c0:	24060010 	li	a2,16
  4f81c4:	8fbc0018 	lw	gp,24(sp)
  4f81c8:	00000000 	nop
  4f81cc:	8f998ae0 	lw	t9,-29984(gp)
  4f81d0:	00000000 	nop
  4f81d4:	0320f809 	jalr	t9
  4f81d8:	00408021 	move	s0,v0
  4f81dc:	8fbc0018 	lw	gp,24(sp)
  4f81e0:	12020015 	beq	s0,v0,4f8238 <adMiscInit@@Base+0xec>
  4f81e4:	00000000 	nop
  4f81e8:	8f998ae0 	lw	t9,-29984(gp)
  4f81ec:	00000000 	nop
  4f81f0:	0320f809 	jalr	t9
  4f81f4:	00000000 	nop
  4f81f8:	8fbc0018 	lw	gp,24(sp)
  4f81fc:	00403021 	move	a2,v0
  4f8200:	02202021 	move	a0,s1
  4f8204:	8f858028 	lw	a1,-32728(gp)
  4f8208:	8f999d4c 	lw	t9,-25268(gp)
  4f820c:	00000000 	nop
  4f8210:	0320f809 	jalr	t9
  4f8214:	24a50174 	addiu	a1,a1,372
  4f8218:	8fbc0018 	lw	gp,24(sp)
  4f821c:	26440168 	addiu	a0,s2,360
  4f8220:	8f99faf8 	lw	t9,-1288(gp)
  4f8224:	00000000 	nop
  4f8228:	0320f809 	jalr	t9
  4f822c:	02202821 	move	a1,s1
  4f8230:	8fbc0018 	lw	gp,24(sp)
  4f8234:	00000000 	nop
  4f8238:	8f998ae0 	lw	t9,-29984(gp)
  4f823c:	00000000 	nop
  4f8240:	0320f809 	jalr	t9
  4f8244:	00000000 	nop
  4f8248:	00401821 	move	v1,v0
  4f824c:	2402002c 	li	v0,44
  4f8250:	8fbc0018 	lw	gp,24(sp)
  4f8254:	10620008 	beq	v1,v0,4f8278 <adMiscInit@@Base+0x12c>
  4f8258:	2862002d 	slti	v0,v1,45
  4f825c:	14400004 	bnez	v0,4f8270 <adMiscInit@@Base+0x124>
  4f8260:	24020016 	li	v0,22
  4f8264:	24020030 	li	v0,48
  4f8268:	10620003 	beq	v1,v0,4f8278 <adMiscInit@@Base+0x12c>
  4f826c:	24020039 	li	v0,57
  4f8270:	14620004 	bne	v1,v0,4f8284 <adMiscInit@@Base+0x138>
  4f8274:	00000000 	nop
  4f8278:	8f828030 	lw	v0,-32720(gp)
  4f827c:	24030001 	li	v1,1
  4f8280:	ac43ca78 	sw	v1,-13704(v0)
  4f8284:	8f998ae0 	lw	t9,-29984(gp)
  4f8288:	00000000 	nop
  4f828c:	0320f809 	jalr	t9
  4f8290:	00000000 	nop
  4f8294:	2443fffc 	addiu	v1,v0,-4
  4f8298:	2c620045 	sltiu	v0,v1,69
  4f829c:	8fbc0018 	lw	gp,24(sp)
  4f82a0:	1040007b 	beqz	v0,4f8490 <adMiscInit@@Base+0x344>
  4f82a4:	00031080 	sll	v0,v1,0x2
  4f82a8:	8f838028 	lw	v1,-32728(gp)
  4f82ac:	8f84d0f4 	lw	a0,-12044(gp)
  4f82b0:	2463940c 	addiu	v1,v1,-27636
  4f82b4:	00621821 	addu	v1,v1,v0
  4f82b8:	8c620000 	lw	v0,0(v1)
  4f82bc:	00000000 	nop
  4f82c0:	005c1021 	addu	v0,v0,gp
  4f82c4:	00400008 	jr	v0
  4f82c8:	00000000 	nop
  4f82cc:	8f828028 	lw	v0,-32728(gp)
  4f82d0:	10000004 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f82d4:	24429530 	addiu	v0,v0,-27344
  4f82d8:	8f828028 	lw	v0,-32728(gp)
  4f82dc:	00000000 	nop
  4f82e0:	24429804 	addiu	v0,v0,-26620
  4f82e4:	1000006e 	b	4f84a0 <adMiscInit@@Base+0x354>
  4f82e8:	ac820000 	sw	v0,0(a0)
  4f82ec:	8f828028 	lw	v0,-32728(gp)
  4f82f0:	1000fffc 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f82f4:	24429ad8 	addiu	v0,v0,-25896
  4f82f8:	8f828028 	lw	v0,-32728(gp)
  4f82fc:	1000fff9 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8300:	24429dac 	addiu	v0,v0,-25172
  4f8304:	8f828028 	lw	v0,-32728(gp)
  4f8308:	1000fff6 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f830c:	2442a080 	addiu	v0,v0,-24448
  4f8310:	8f828028 	lw	v0,-32728(gp)
  4f8314:	1000fff3 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8318:	2442a354 	addiu	v0,v0,-23724
  4f831c:	8f828028 	lw	v0,-32728(gp)
  4f8320:	1000fff0 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8324:	2442a628 	addiu	v0,v0,-23000
  4f8328:	8f828028 	lw	v0,-32728(gp)
  4f832c:	1000ffed 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8330:	2442a8fc 	addiu	v0,v0,-22276
  4f8334:	8f828028 	lw	v0,-32728(gp)
  4f8338:	1000ffea 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f833c:	2442abd0 	addiu	v0,v0,-21552
  4f8340:	8f828028 	lw	v0,-32728(gp)
  4f8344:	1000ffe7 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8348:	2442aea4 	addiu	v0,v0,-20828
  4f834c:	8f828028 	lw	v0,-32728(gp)
  4f8350:	1000ffe4 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8354:	2442b178 	addiu	v0,v0,-20104
  4f8358:	8f828028 	lw	v0,-32728(gp)
  4f835c:	1000ffe1 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8360:	2442b44c 	addiu	v0,v0,-19380
  4f8364:	8f828028 	lw	v0,-32728(gp)
  4f8368:	1000ffde 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f836c:	2442b720 	addiu	v0,v0,-18656
  4f8370:	8f828028 	lw	v0,-32728(gp)
  4f8374:	1000ffdb 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8378:	2442b9f4 	addiu	v0,v0,-17932
  4f837c:	8f828028 	lw	v0,-32728(gp)
  4f8380:	1000ffd8 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8384:	2442bcc8 	addiu	v0,v0,-17208
  4f8388:	8f828028 	lw	v0,-32728(gp)
  4f838c:	1000ffd5 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8390:	2442bf9c 	addiu	v0,v0,-16484
  4f8394:	8f828028 	lw	v0,-32728(gp)
  4f8398:	1000ffd2 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f839c:	2442c270 	addiu	v0,v0,-15760
  4f83a0:	8f828028 	lw	v0,-32728(gp)
  4f83a4:	1000ffcf 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f83a8:	2442c544 	addiu	v0,v0,-15036
  4f83ac:	8f828028 	lw	v0,-32728(gp)
  4f83b0:	1000ffcc 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f83b4:	2442c818 	addiu	v0,v0,-14312
  4f83b8:	8f828028 	lw	v0,-32728(gp)
  4f83bc:	1000ffc9 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f83c0:	2442caec 	addiu	v0,v0,-13588
  4f83c4:	8f828028 	lw	v0,-32728(gp)
  4f83c8:	1000ffc6 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f83cc:	2442cdc0 	addiu	v0,v0,-12864
  4f83d0:	8f828028 	lw	v0,-32728(gp)
  4f83d4:	1000ffc3 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f83d8:	2442d094 	addiu	v0,v0,-12140
  4f83dc:	8f828028 	lw	v0,-32728(gp)
  4f83e0:	1000ffc0 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f83e4:	2442d368 	addiu	v0,v0,-11416
  4f83e8:	8f828028 	lw	v0,-32728(gp)
  4f83ec:	1000ffbd 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f83f0:	2442d63c 	addiu	v0,v0,-10692
  4f83f4:	8f828028 	lw	v0,-32728(gp)
  4f83f8:	1000ffba 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f83fc:	2442d910 	addiu	v0,v0,-9968
  4f8400:	8f828028 	lw	v0,-32728(gp)
  4f8404:	1000ffb7 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8408:	2442dbe4 	addiu	v0,v0,-9244
  4f840c:	8f828028 	lw	v0,-32728(gp)
  4f8410:	1000ffb4 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8414:	2442deb8 	addiu	v0,v0,-8520
  4f8418:	8f828028 	lw	v0,-32728(gp)
  4f841c:	1000ffb1 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8420:	2442e18c 	addiu	v0,v0,-7796
  4f8424:	8f828028 	lw	v0,-32728(gp)
  4f8428:	1000ffae 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f842c:	2442e460 	addiu	v0,v0,-7072
  4f8430:	8f828028 	lw	v0,-32728(gp)
  4f8434:	1000ffab 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8438:	2442e734 	addiu	v0,v0,-6348
  4f843c:	8f828028 	lw	v0,-32728(gp)
  4f8440:	1000ffa8 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8444:	2442ea08 	addiu	v0,v0,-5624
  4f8448:	8f828028 	lw	v0,-32728(gp)
  4f844c:	1000ffa5 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8450:	2442ecdc 	addiu	v0,v0,-4900
  4f8454:	8f828028 	lw	v0,-32728(gp)
  4f8458:	1000ffa2 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f845c:	2442efb0 	addiu	v0,v0,-4176
  4f8460:	8f828028 	lw	v0,-32728(gp)
  4f8464:	1000ff9f 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8468:	2442f284 	addiu	v0,v0,-3452
  4f846c:	8f828028 	lw	v0,-32728(gp)
  4f8470:	1000ff9c 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8474:	2442f558 	addiu	v0,v0,-2728
  4f8478:	8f828028 	lw	v0,-32728(gp)
  4f847c:	1000ff99 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f8480:	2442f82c 	addiu	v0,v0,-2004
  4f8484:	8f828028 	lw	v0,-32728(gp)
  4f8488:	1000ff96 	b	4f82e4 <adMiscInit@@Base+0x198>
  4f848c:	2442fb00 	addiu	v0,v0,-1280
  4f8490:	8f828028 	lw	v0,-32728(gp)
  4f8494:	8f83d0f4 	lw	v1,-12044(gp)
  4f8498:	2442fdd4 	addiu	v0,v0,-556
  4f849c:	ac620000 	sw	v0,0(v1)
  4f84a0:	8f90d0f4 	lw	s0,-12044(gp)
  4f84a4:	00000000 	nop
  4f84a8:	8e020000 	lw	v0,0(s0)
  4f84ac:	00000000 	nop
  4f84b0:	10400032 	beqz	v0,4f857c <adMiscInit@@Base+0x430>
  4f84b4:	00000000 	nop
  4f84b8:	8f999ca4 	lw	t9,-25436(gp)
  4f84bc:	00000000 	nop
  4f84c0:	0320f809 	jalr	t9
  4f84c4:	00000000 	nop
  4f84c8:	8e030000 	lw	v1,0(s0)
  4f84cc:	8fbc0018 	lw	gp,24(sp)
  4f84d0:	90620245 	lbu	v0,581(v1)
  4f84d4:	00000000 	nop
  4f84d8:	1440000d 	bnez	v0,4f8510 <adMiscInit@@Base+0x3c4>
  4f84dc:	00000000 	nop
  4f84e0:	8f99c400 	lw	t9,-15360(gp)
  4f84e4:	90640244 	lbu	a0,580(v1)
  4f84e8:	0320f809 	jalr	t9
  4f84ec:	24050001 	li	a1,1
  4f84f0:	8fbc0018 	lw	gp,24(sp)
  4f84f4:	8e020000 	lw	v0,0(s0)
  4f84f8:	8f99ff6c 	lw	t9,-148(gp)
  4f84fc:	90440244 	lbu	a0,580(v0)
  4f8500:	0320f809 	jalr	t9
  4f8504:	24050001 	li	a1,1
  4f8508:	8fbc0018 	lw	gp,24(sp)
  4f850c:	00000000 	nop
  4f8510:	8f90d0f4 	lw	s0,-12044(gp)
  4f8514:	8f99ff6c 	lw	t9,-148(gp)
  4f8518:	8e020000 	lw	v0,0(s0)
  4f851c:	8f91d7ac 	lw	s1,-10324(gp)
  4f8520:	90440250 	lbu	a0,592(v0)
  4f8524:	0320f809 	jalr	t9
  4f8528:	24050001 	li	a1,1
  4f852c:	8fbc0018 	lw	gp,24(sp)
  4f8530:	8e020000 	lw	v0,0(s0)
  4f8534:	8f99c400 	lw	t9,-15360(gp)
  4f8538:	90440250 	lbu	a0,592(v0)
  4f853c:	0320f809 	jalr	t9
  4f8540:	24050001 	li	a1,1
  4f8544:	8e230000 	lw	v1,0(s1)
  4f8548:	2402ffff 	li	v0,-1
  4f854c:	8fbc0018 	lw	gp,24(sp)
  4f8550:	1462000a 	bne	v1,v0,4f857c <adMiscInit@@Base+0x430>
  4f8554:	24052800 	li	a1,10240
  4f8558:	8f848028 	lw	a0,-32728(gp)
  4f855c:	8f99f698 	lw	t9,-2408(gp)
  4f8560:	8f878d34 	lw	a3,-29388(gp)
  4f8564:	afa00010 	sw	zero,16(sp)
  4f8568:	2484017c 	addiu	a0,a0,380
  4f856c:	0320f809 	jalr	t9
  4f8570:	24060064 	li	a2,100
  4f8574:	8fbc0018 	lw	gp,24(sp)
  4f8578:	ae220000 	sw	v0,0(s1)
  4f857c:	8fbf012c 	lw	ra,300(sp)
  4f8580:	8fb20128 	lw	s2,296(sp)
  4f8584:	8fb10124 	lw	s1,292(sp)
  4f8588:	8fb00120 	lw	s0,288(sp)
  4f858c:	03e00008 	jr	ra
  4f8590:	27bd0130 	addiu	sp,sp,304

004f8594 <adVctDiag@@Base>:
  4f8594:	3c1c00a3 	lui	gp,0xa3
  4f8598:	279c937c 	addiu	gp,gp,-27780
  4f859c:	0399e021 	addu	gp,gp,t9
  4f85a0:	27bdff20 	addiu	sp,sp,-224
  4f85a4:	afbf00dc 	sw	ra,220(sp)
  4f85a8:	afb400d8 	sw	s4,216(sp)
  4f85ac:	afb300d4 	sw	s3,212(sp)
  4f85b0:	afb200d0 	sw	s2,208(sp)
  4f85b4:	afb100cc 	sw	s1,204(sp)
  4f85b8:	afb000c8 	sw	s0,200(sp)
  4f85bc:	afbc0010 	sw	gp,16(sp)
  4f85c0:	8f99ce64 	lw	t9,-12700(gp)
  4f85c4:	00808021 	move	s0,a0
  4f85c8:	24060094 	li	a2,148
  4f85cc:	27a40034 	addiu	a0,sp,52
  4f85d0:	00a08821 	move	s1,a1
  4f85d4:	afa00018 	sw	zero,24(sp)
  4f85d8:	0320f809 	jalr	t9
  4f85dc:	00002821 	move	a1,zero
  4f85e0:	8fbc0010 	lw	gp,16(sp)
  4f85e4:	27a20024 	addiu	v0,sp,36
  4f85e8:	00402821 	move	a1,v0
  4f85ec:	8f99a3d8 	lw	t9,-23592(gp)
  4f85f0:	02002021 	move	a0,s0
  4f85f4:	afa00020 	sw	zero,32(sp)
  4f85f8:	afa00024 	sw	zero,36(sp)
  4f85fc:	ac400004 	sw	zero,4(v0)
  4f8600:	ac400008 	sw	zero,8(v0)
  4f8604:	0320f809 	jalr	t9
  4f8608:	ac40000c 	sw	zero,12(v0)
  4f860c:	8fbc0010 	lw	gp,16(sp)
  4f8610:	27a50018 	addiu	a1,sp,24
  4f8614:	02002021 	move	a0,s0
  4f8618:	8f998548 	lw	t9,-31416(gp)
  4f861c:	00000000 	nop
  4f8620:	0320f809 	jalr	t9
  4f8624:	27a6001c 	addiu	a2,sp,28
  4f8628:	8fbc0010 	lw	gp,16(sp)
  4f862c:	1440010e 	bnez	v0,4f8a68 <adVctDiag@@Base+0x4d4>
  4f8630:	00402821 	move	a1,v0
  4f8634:	00101400 	sll	v0,s0,0x10
  4f8638:	00021403 	sra	v0,v0,0x10
  4f863c:	28420021 	slti	v0,v0,33
  4f8640:	8fa3001c 	lw	v1,28(sp)
  4f8644:	10400004 	beqz	v0,4f8658 <adVctDiag@@Base+0xc4>
  4f8648:	24020001 	li	v0,1
  4f864c:	00621004 	sllv	v0,v0,v1
  4f8650:	10000003 	b	4f8660 <adVctDiag@@Base+0xcc>
  4f8654:	afa20020 	sw	v0,32(sp)
  4f8658:	00621004 	sllv	v0,v0,v1
  4f865c:	afa20024 	sw	v0,36(sp)
  4f8660:	8f99b990 	lw	t9,-18032(gp)
  4f8664:	8fa40018 	lw	a0,24(sp)
  4f8668:	0320f809 	jalr	t9
  4f866c:	27a50020 	addiu	a1,sp,32
  4f8670:	8fbc0010 	lw	gp,16(sp)
  4f8674:	144000fb 	bnez	v0,4f8a64 <adVctDiag@@Base+0x4d0>
  4f8678:	3c02000e 	lui	v0,0xe
  4f867c:	34540009 	ori	s4,v0,0x9
  4f8680:	00008021 	move	s0,zero
  4f8684:	27b30034 	addiu	s3,sp,52
  4f8688:	2412000a 	li	s2,10
  4f868c:	8f9986b8 	lw	t9,-31048(gp)
  4f8690:	2404001e 	li	a0,30
  4f8694:	0320f809 	jalr	t9
  4f8698:	26100001 	addiu	s0,s0,1
  4f869c:	8fbc0010 	lw	gp,16(sp)
  4f86a0:	8fa5001c 	lw	a1,28(sp)
  4f86a4:	8fa40018 	lw	a0,24(sp)
  4f86a8:	8f99c8f8 	lw	t9,-14088(gp)
  4f86ac:	00000000 	nop
  4f86b0:	0320f809 	jalr	t9
  4f86b4:	02603021 	move	a2,s3
  4f86b8:	8fbc0010 	lw	gp,16(sp)
  4f86bc:	14540005 	bne	v0,s4,4f86d4 <adVctDiag@@Base+0x140>
  4f86c0:	00402821 	move	a1,v0
  4f86c4:	1612fff1 	bne	s0,s2,4f868c <adVctDiag@@Base+0xf8>
  4f86c8:	00000000 	nop
  4f86cc:	100000e6 	b	4f8a68 <adVctDiag@@Base+0x4d4>
  4f86d0:	24050007 	li	a1,7
  4f86d4:	144000e3 	bnez	v0,4f8a64 <adVctDiag@@Base+0x4d0>
  4f86d8:	24030002 	li	v1,2
  4f86dc:	8fa40034 	lw	a0,52(sp)
  4f86e0:	00000000 	nop
  4f86e4:	1483009b 	bne	a0,v1,4f8954 <adVctDiag@@Base+0x3c0>
  4f86e8:	00000000 	nop
  4f86ec:	8fa20038 	lw	v0,56(sp)
  4f86f0:	24030004 	li	v1,4
  4f86f4:	10400003 	beqz	v0,4f8704 <adVctDiag@@Base+0x170>
  4f86f8:	ae230014 	sw	v1,20(s1)
  4f86fc:	10000012 	b	4f8748 <adVctDiag@@Base+0x1b4>
  4f8700:	ae240004 	sw	a0,4(s1)
  4f8704:	8fa20048 	lw	v0,72(sp)
  4f8708:	00000000 	nop
  4f870c:	1440000b 	bnez	v0,4f873c <adVctDiag@@Base+0x1a8>
  4f8710:	24020001 	li	v0,1
  4f8714:	8fa20058 	lw	v0,88(sp)
  4f8718:	00000000 	nop
  4f871c:	10400003 	beqz	v0,4f872c <adVctDiag@@Base+0x198>
  4f8720:	00000000 	nop
  4f8724:	10000008 	b	4f8748 <adVctDiag@@Base+0x1b4>
  4f8728:	ae230004 	sw	v1,4(s1)
  4f872c:	8fa20068 	lw	v0,104(sp)
  4f8730:	00000000 	nop
  4f8734:	10400003 	beqz	v0,4f8744 <adVctDiag@@Base+0x1b0>
  4f8738:	24020003 	li	v0,3
  4f873c:	10000002 	b	4f8748 <adVctDiag@@Base+0x1b4>
  4f8740:	ae220004 	sw	v0,4(s1)
  4f8744:	ae200004 	sw	zero,4(s1)
  4f8748:	8fa2003c 	lw	v0,60(sp)
  4f874c:	00000000 	nop
  4f8750:	14400005 	bnez	v0,4f8768 <adVctDiag@@Base+0x1d4>
  4f8754:	24020002 	li	v0,2
  4f8758:	8fa2004c 	lw	v0,76(sp)
  4f875c:	00000000 	nop
  4f8760:	10400003 	beqz	v0,4f8770 <adVctDiag@@Base+0x1dc>
  4f8764:	24020001 	li	v0,1
  4f8768:	1000000a 	b	4f8794 <adVctDiag@@Base+0x200>
  4f876c:	ae220008 	sw	v0,8(s1)
  4f8770:	8fa2005c 	lw	v0,92(sp)
  4f8774:	00000000 	nop
  4f8778:	1440fffb 	bnez	v0,4f8768 <adVctDiag@@Base+0x1d4>
  4f877c:	24020004 	li	v0,4
  4f8780:	8fa2006c 	lw	v0,108(sp)
  4f8784:	00000000 	nop
  4f8788:	1440fff7 	bnez	v0,4f8768 <adVctDiag@@Base+0x1d4>
  4f878c:	24020003 	li	v0,3
  4f8790:	ae200008 	sw	zero,8(s1)
  4f8794:	8fa20040 	lw	v0,64(sp)
  4f8798:	00000000 	nop
  4f879c:	14400005 	bnez	v0,4f87b4 <adVctDiag@@Base+0x220>
  4f87a0:	24020002 	li	v0,2
  4f87a4:	8fa20050 	lw	v0,80(sp)
  4f87a8:	00000000 	nop
  4f87ac:	10400003 	beqz	v0,4f87bc <adVctDiag@@Base+0x228>
  4f87b0:	24020001 	li	v0,1
  4f87b4:	10000014 	b	4f8808 <adVctDiag@@Base+0x274>
  4f87b8:	ae22000c 	sw	v0,12(s1)
  4f87bc:	8fa20060 	lw	v0,96(sp)
  4f87c0:	00000000 	nop
  4f87c4:	1440fffb 	bnez	v0,4f87b4 <adVctDiag@@Base+0x220>
  4f87c8:	24020004 	li	v0,4
  4f87cc:	8fa20070 	lw	v0,112(sp)
  4f87d0:	00000000 	nop
  4f87d4:	1440fff7 	bnez	v0,4f87b4 <adVctDiag@@Base+0x220>
  4f87d8:	24020003 	li	v0,3
  4f87dc:	93a40025 	lbu	a0,37(sp)
  4f87e0:	24020001 	li	v0,1
  4f87e4:	14820007 	bne	a0,v0,4f8804 <adVctDiag@@Base+0x270>
  4f87e8:	24020003 	li	v0,3
  4f87ec:	93a30027 	lbu	v1,39(sp)
  4f87f0:	00000000 	nop
  4f87f4:	10620003 	beq	v1,v0,4f8804 <adVctDiag@@Base+0x270>
  4f87f8:	00000000 	nop
  4f87fc:	10000002 	b	4f8808 <adVctDiag@@Base+0x274>
  4f8800:	ae24000c 	sw	a0,12(s1)
  4f8804:	ae20000c 	sw	zero,12(s1)
  4f8808:	8fa20044 	lw	v0,68(sp)
  4f880c:	00000000 	nop
  4f8810:	14400005 	bnez	v0,4f8828 <adVctDiag@@Base+0x294>
  4f8814:	24020002 	li	v0,2
  4f8818:	8fa20054 	lw	v0,84(sp)
  4f881c:	00000000 	nop
  4f8820:	10400003 	beqz	v0,4f8830 <adVctDiag@@Base+0x29c>
  4f8824:	24020001 	li	v0,1
  4f8828:	10000014 	b	4f887c <adVctDiag@@Base+0x2e8>
  4f882c:	ae220010 	sw	v0,16(s1)
  4f8830:	8fa20064 	lw	v0,100(sp)
  4f8834:	00000000 	nop
  4f8838:	1440fffb 	bnez	v0,4f8828 <adVctDiag@@Base+0x294>
  4f883c:	24020004 	li	v0,4
  4f8840:	8fa20074 	lw	v0,116(sp)
  4f8844:	00000000 	nop
  4f8848:	1440fff7 	bnez	v0,4f8828 <adVctDiag@@Base+0x294>
  4f884c:	24020003 	li	v0,3
  4f8850:	93a40025 	lbu	a0,37(sp)
  4f8854:	24020001 	li	v0,1
  4f8858:	14820007 	bne	a0,v0,4f8878 <adVctDiag@@Base+0x2e4>
  4f885c:	24020003 	li	v0,3
  4f8860:	93a30027 	lbu	v1,39(sp)
  4f8864:	00000000 	nop
  4f8868:	10620003 	beq	v1,v0,4f8878 <adVctDiag@@Base+0x2e4>
  4f886c:	00000000 	nop
  4f8870:	10000002 	b	4f887c <adVctDiag@@Base+0x2e8>
  4f8874:	ae240010 	sw	a0,16(s1)
  4f8878:	ae200010 	sw	zero,16(s1)
  4f887c:	8fa400b8 	lw	a0,184(sp)
  4f8880:	00000000 	nop
  4f8884:	1080000a 	beqz	a0,4f88b0 <adVctDiag@@Base+0x31c>
  4f8888:	00001821 	move	v1,zero
  4f888c:	2482ffff 	addiu	v0,a0,-1
  4f8890:	2c420063 	sltiu	v0,v0,99
  4f8894:	14400006 	bnez	v0,4f88b0 <adVctDiag@@Base+0x31c>
  4f8898:	24030001 	li	v1,1
  4f889c:	24020064 	li	v0,100
  4f88a0:	14400002 	bnez	v0,4f88ac <adVctDiag@@Base+0x318>
  4f88a4:	0082001b 	divu	zero,a0,v0
  4f88a8:	0007000d 	break	0x7
  4f88ac:	00001812 	mflo	v1
  4f88b0:	8fa400bc 	lw	a0,188(sp)
  4f88b4:	ae230018 	sw	v1,24(s1)
  4f88b8:	1080000a 	beqz	a0,4f88e4 <adVctDiag@@Base+0x350>
  4f88bc:	00001821 	move	v1,zero
  4f88c0:	2482ffff 	addiu	v0,a0,-1
  4f88c4:	2c420063 	sltiu	v0,v0,99
  4f88c8:	14400006 	bnez	v0,4f88e4 <adVctDiag@@Base+0x350>
  4f88cc:	24030001 	li	v1,1
  4f88d0:	24020064 	li	v0,100
  4f88d4:	14400002 	bnez	v0,4f88e0 <adVctDiag@@Base+0x34c>
  4f88d8:	0082001b 	divu	zero,a0,v0
  4f88dc:	0007000d 	break	0x7
  4f88e0:	00001812 	mflo	v1
  4f88e4:	8fa400c0 	lw	a0,192(sp)
  4f88e8:	ae23001c 	sw	v1,28(s1)
  4f88ec:	1080000a 	beqz	a0,4f8918 <adVctDiag@@Base+0x384>
  4f88f0:	00001821 	move	v1,zero
  4f88f4:	2482ffff 	addiu	v0,a0,-1
  4f88f8:	2c420063 	sltiu	v0,v0,99
  4f88fc:	14400006 	bnez	v0,4f8918 <adVctDiag@@Base+0x384>
  4f8900:	24030001 	li	v1,1
  4f8904:	24020064 	li	v0,100
  4f8908:	14400002 	bnez	v0,4f8914 <adVctDiag@@Base+0x380>
  4f890c:	0082001b 	divu	zero,a0,v0
  4f8910:	0007000d 	break	0x7
  4f8914:	00001812 	mflo	v1
  4f8918:	8fa400c4 	lw	a0,196(sp)
  4f891c:	ae230020 	sw	v1,32(s1)
  4f8920:	1080000a 	beqz	a0,4f894c <adVctDiag@@Base+0x3b8>
  4f8924:	00001821 	move	v1,zero
  4f8928:	2482ffff 	addiu	v0,a0,-1
  4f892c:	2c420063 	sltiu	v0,v0,99
  4f8930:	14400006 	bnez	v0,4f894c <adVctDiag@@Base+0x3b8>
  4f8934:	24030001 	li	v1,1
  4f8938:	24020064 	li	v0,100
  4f893c:	14400002 	bnez	v0,4f8948 <adVctDiag@@Base+0x3b4>
  4f8940:	0082001b 	divu	zero,a0,v0
  4f8944:	0007000d 	break	0x7
  4f8948:	00001812 	mflo	v1
  4f894c:	10000046 	b	4f8a68 <adVctDiag@@Base+0x4d4>
  4f8950:	ae230024 	sw	v1,36(s1)
  4f8954:	8fa20038 	lw	v0,56(sp)
  4f8958:	00000000 	nop
  4f895c:	10400003 	beqz	v0,4f896c <adVctDiag@@Base+0x3d8>
  4f8960:	ae230014 	sw	v1,20(s1)
  4f8964:	10000010 	b	4f89a8 <adVctDiag@@Base+0x414>
  4f8968:	ae230004 	sw	v1,4(s1)
  4f896c:	8fa20040 	lw	v0,64(sp)
  4f8970:	00000000 	nop
  4f8974:	14400005 	bnez	v0,4f898c <adVctDiag@@Base+0x3f8>
  4f8978:	24020001 	li	v0,1
  4f897c:	8fa20048 	lw	v0,72(sp)
  4f8980:	00000000 	nop
  4f8984:	10400003 	beqz	v0,4f8994 <adVctDiag@@Base+0x400>
  4f8988:	24020004 	li	v0,4
  4f898c:	10000006 	b	4f89a8 <adVctDiag@@Base+0x414>
  4f8990:	ae220004 	sw	v0,4(s1)
  4f8994:	8fa20050 	lw	v0,80(sp)
  4f8998:	00000000 	nop
  4f899c:	1440fffb 	bnez	v0,4f898c <adVctDiag@@Base+0x3f8>
  4f89a0:	24020003 	li	v0,3
  4f89a4:	ae200004 	sw	zero,4(s1)
  4f89a8:	8fa2003c 	lw	v0,60(sp)
  4f89ac:	00000000 	nop
  4f89b0:	14400005 	bnez	v0,4f89c8 <adVctDiag@@Base+0x434>
  4f89b4:	24020002 	li	v0,2
  4f89b8:	8fa20044 	lw	v0,68(sp)
  4f89bc:	00000000 	nop
  4f89c0:	10400003 	beqz	v0,4f89d0 <adVctDiag@@Base+0x43c>
  4f89c4:	24020001 	li	v0,1
  4f89c8:	1000000a 	b	4f89f4 <adVctDiag@@Base+0x460>
  4f89cc:	ae220008 	sw	v0,8(s1)
  4f89d0:	8fa2004c 	lw	v0,76(sp)
  4f89d4:	00000000 	nop
  4f89d8:	1440fffb 	bnez	v0,4f89c8 <adVctDiag@@Base+0x434>
  4f89dc:	24020004 	li	v0,4
  4f89e0:	8fa20054 	lw	v0,84(sp)
  4f89e4:	00000000 	nop
  4f89e8:	1440fff7 	bnez	v0,4f89c8 <adVctDiag@@Base+0x434>
  4f89ec:	24020003 	li	v0,3
  4f89f0:	ae200008 	sw	zero,8(s1)
  4f89f4:	8fa40058 	lw	a0,88(sp)
  4f89f8:	00000000 	nop
  4f89fc:	1080000a 	beqz	a0,4f8a28 <adVctDiag@@Base+0x494>
  4f8a00:	00001821 	move	v1,zero
  4f8a04:	2482ffff 	addiu	v0,a0,-1
  4f8a08:	2c420063 	sltiu	v0,v0,99
  4f8a0c:	14400006 	bnez	v0,4f8a28 <adVctDiag@@Base+0x494>
  4f8a10:	24030001 	li	v1,1
  4f8a14:	24020064 	li	v0,100
  4f8a18:	14400002 	bnez	v0,4f8a24 <adVctDiag@@Base+0x490>
  4f8a1c:	0082001b 	divu	zero,a0,v0
  4f8a20:	0007000d 	break	0x7
  4f8a24:	00001812 	mflo	v1
  4f8a28:	8fa4005c 	lw	a0,92(sp)
  4f8a2c:	ae230018 	sw	v1,24(s1)
  4f8a30:	1080000a 	beqz	a0,4f8a5c <adVctDiag@@Base+0x4c8>
  4f8a34:	00001821 	move	v1,zero
  4f8a38:	2482ffff 	addiu	v0,a0,-1
  4f8a3c:	2c420063 	sltiu	v0,v0,99
  4f8a40:	14400006 	bnez	v0,4f8a5c <adVctDiag@@Base+0x4c8>
  4f8a44:	24030001 	li	v1,1
  4f8a48:	24020064 	li	v0,100
  4f8a4c:	14400002 	bnez	v0,4f8a58 <adVctDiag@@Base+0x4c4>
  4f8a50:	0082001b 	divu	zero,a0,v0
  4f8a54:	0007000d 	break	0x7
  4f8a58:	00001812 	mflo	v1
  4f8a5c:	10000002 	b	4f8a68 <adVctDiag@@Base+0x4d4>
  4f8a60:	ae23001c 	sw	v1,28(s1)
  4f8a64:	24050007 	li	a1,7
  4f8a68:	8fbf00dc 	lw	ra,220(sp)
  4f8a6c:	8fb400d8 	lw	s4,216(sp)
  4f8a70:	8fb300d4 	lw	s3,212(sp)
  4f8a74:	8fb200d0 	lw	s2,208(sp)
  4f8a78:	8fb100cc 	lw	s1,204(sp)
  4f8a7c:	8fb000c8 	lw	s0,200(sp)
  4f8a80:	00a01021 	move	v0,a1
  4f8a84:	03e00008 	jr	ra
  4f8a88:	27bd00e0 	addiu	sp,sp,224
  4f8a8c:	00000000 	nop

004f8a90 <getPsePortLineNum@@Base>:
  4f8a90:	03e00008 	jr	ra
  4f8a94:	24020001 	li	v0,1

004f8a98 <adPoeUserPort2ActUserPort@@Base>:
  4f8a98:	03e00008 	jr	ra
  4f8a9c:	00801021 	move	v0,a0

004f8aa0 <adPoeActUserPort2UserPort@@Base>:
  4f8aa0:	03e00008 	jr	ra
  4f8aa4:	00801021 	move	v0,a0

004f8aa8 <adPoePortLedForceStateClear@@Base>:
  4f8aa8:	3c1c00a3 	lui	gp,0xa3
  4f8aac:	279c8e68 	addiu	gp,gp,-29080
  4f8ab0:	0399e021 	addu	gp,gp,t9
  4f8ab4:	8f83a3dc 	lw	v1,-23588(gp)
  4f8ab8:	00000000 	nop
  4f8abc:	8c62000c 	lw	v0,12(v1)
  4f8ac0:	00000000 	nop
  4f8ac4:	0082102a 	slt	v0,a0,v0
  4f8ac8:	14400015 	bnez	v0,4f8b20 <adPoePortLedForceStateClear@@Base+0x78>
  4f8acc:	24050001 	li	a1,1
  4f8ad0:	8c620010 	lw	v0,16(v1)
  4f8ad4:	00000000 	nop
  4f8ad8:	0044102a 	slt	v0,v0,a0
  4f8adc:	14400010 	bnez	v0,4f8b20 <adPoePortLedForceStateClear@@Base+0x78>
  4f8ae0:	00000000 	nop
  4f8ae4:	24820547 	addiu	v0,a0,1351
  4f8ae8:	00021080 	sll	v0,v0,0x2
  4f8aec:	00621021 	addu	v0,v1,v0
  4f8af0:	8c420004 	lw	v0,4(v0)
  4f8af4:	2484ffff 	addiu	a0,a0,-1
  4f8af8:	14400009 	bnez	v0,4f8b20 <adPoePortLedForceStateClear@@Base+0x78>
  4f8afc:	00002821 	move	a1,zero
  4f8b00:	2402004c 	li	v0,76
  4f8b04:	00820018 	mult	a0,v0
  4f8b08:	00002821 	move	a1,zero
  4f8b0c:	00001012 	mflo	v0
  4f8b10:	00621021 	addu	v0,v1,v0
  4f8b14:	8c430068 	lw	v1,104(v0)
  4f8b18:	00000000 	nop
  4f8b1c:	ac430064 	sw	v1,100(v0)
  4f8b20:	03e00008 	jr	ra
  4f8b24:	00a01021 	move	v0,a1

004f8b28 <adPoeChipGetAll@@Base>:
  4f8b28:	03e00008 	jr	ra
  4f8b2c:	00001021 	move	v0,zero

004f8b30 <adPoeGetAddrCfgTimes@@Base>:
  4f8b30:	3c1c00a3 	lui	gp,0xa3
  4f8b34:	279c8de0 	addiu	gp,gp,-29216
  4f8b38:	0399e021 	addu	gp,gp,t9
  4f8b3c:	1080000e 	beqz	a0,4f8b78 <adPoeGetAddrCfgTimes@@Base+0x48>
  4f8b40:	2403ffff 	li	v1,-1
  4f8b44:	10a0000b 	beqz	a1,4f8b74 <adPoeGetAddrCfgTimes@@Base+0x44>
  4f8b48:	00001821 	move	v1,zero
  4f8b4c:	8f828030 	lw	v0,-32720(gp)
  4f8b50:	00000000 	nop
  4f8b54:	8c42e14c 	lw	v0,-7860(v0)
  4f8b58:	00000000 	nop
  4f8b5c:	ac820000 	sw	v0,0(a0)
  4f8b60:	8f828030 	lw	v0,-32720(gp)
  4f8b64:	00000000 	nop
  4f8b68:	8c42e150 	lw	v0,-7856(v0)
  4f8b6c:	10000002 	b	4f8b78 <adPoeGetAddrCfgTimes@@Base+0x48>
  4f8b70:	aca20000 	sw	v0,0(a1)
  4f8b74:	2403ffff 	li	v1,-1
  4f8b78:	03e00008 	jr	ra
  4f8b7c:	00601021 	move	v0,v1

004f8b80 <adPoeGetPortCurrentFromRegVal@@Base>:
  4f8b80:	3c1c00a3 	lui	gp,0xa3
  4f8b84:	279c8d90 	addiu	gp,gp,-29296
  4f8b88:	0399e021 	addu	gp,gp,t9
  4f8b8c:	8f82baac 	lw	v0,-17748(gp)
  4f8b90:	00000000 	nop
  4f8b94:	8c590004 	lw	t9,4(v0)
  4f8b98:	00000000 	nop
  4f8b9c:	17200003 	bnez	t9,4f8bac <adPoeGetPortCurrentFromRegVal@@Base+0x2c>
  4f8ba0:	00001021 	move	v0,zero
  4f8ba4:	03e00008 	jr	ra
  4f8ba8:	00000000 	nop
  4f8bac:	03200008 	jr	t9
  4f8bb0:	00000000 	nop

004f8bb4 <adPoeGetPortVoltageFromRegVal@@Base>:
  4f8bb4:	3c1c00a3 	lui	gp,0xa3
  4f8bb8:	279c8d5c 	addiu	gp,gp,-29348
  4f8bbc:	0399e021 	addu	gp,gp,t9
  4f8bc0:	8f82baac 	lw	v0,-17748(gp)
  4f8bc4:	00000000 	nop
  4f8bc8:	8c590008 	lw	t9,8(v0)
  4f8bcc:	00000000 	nop
  4f8bd0:	17200003 	bnez	t9,4f8be0 <adPoeGetPortVoltageFromRegVal@@Base+0x2c>
  4f8bd4:	00001021 	move	v0,zero
  4f8bd8:	03e00008 	jr	ra
  4f8bdc:	00000000 	nop
  4f8be0:	03200008 	jr	t9
  4f8be4:	00000000 	nop

004f8be8 <adPoeGetPortClassFromRegVal_2386x@@Base>:
  4f8be8:	3c1c00a3 	lui	gp,0xa3
  4f8bec:	279c8d28 	addiu	gp,gp,-29400
  4f8bf0:	0399e021 	addu	gp,gp,t9
  4f8bf4:	10a00027 	beqz	a1,4f8c94 <adPoeGetPortClassFromRegVal_2386x@@Base+0xac>
  4f8bf8:	24020001 	li	v0,1
  4f8bfc:	2483ffff 	addiu	v1,a0,-1
  4f8c00:	2402004c 	li	v0,76
  4f8c04:	00620018 	mult	v1,v0
  4f8c08:	8f82a3dc 	lw	v0,-23588(gp)
  4f8c0c:	00001812 	mflo	v1
  4f8c10:	00431021 	addu	v0,v0,v1
  4f8c14:	90430053 	lbu	v1,83(v0)
  4f8c18:	00000000 	nop
  4f8c1c:	2c620009 	sltiu	v0,v1,9
  4f8c20:	1040001a 	beqz	v0,4f8c8c <adPoeGetPortClassFromRegVal_2386x@@Base+0xa4>
  4f8c24:	24020385 	li	v0,901
  4f8c28:	00031080 	sll	v0,v1,0x2
  4f8c2c:	8f838028 	lw	v1,-32728(gp)
  4f8c30:	00000000 	nop
  4f8c34:	246301a0 	addiu	v1,v1,416
  4f8c38:	00621821 	addu	v1,v1,v0
  4f8c3c:	8c620000 	lw	v0,0(v1)
  4f8c40:	00000000 	nop
  4f8c44:	005c1021 	addu	v0,v0,gp
  4f8c48:	00400008 	jr	v0
  4f8c4c:	00000000 	nop
  4f8c50:	1000000a 	b	4f8c7c <adPoeGetPortClassFromRegVal_2386x@@Base+0x94>
  4f8c54:	2402014a 	li	v0,330
  4f8c58:	10000008 	b	4f8c7c <adPoeGetPortClassFromRegVal_2386x@@Base+0x94>
  4f8c5c:	24020028 	li	v0,40
  4f8c60:	10000006 	b	4f8c7c <adPoeGetPortClassFromRegVal_2386x@@Base+0x94>
  4f8c64:	24020046 	li	v0,70
  4f8c68:	10000004 	b	4f8c7c <adPoeGetPortClassFromRegVal_2386x@@Base+0x94>
  4f8c6c:	2402009a 	li	v0,154
  4f8c70:	10000002 	b	4f8c7c <adPoeGetPortClassFromRegVal_2386x@@Base+0x94>
  4f8c74:	2402012c 	li	v0,300
  4f8c78:	24020385 	li	v0,901
  4f8c7c:	aca20000 	sw	v0,0(a1)
  4f8c80:	03e00008 	jr	ra
  4f8c84:	00001021 	move	v0,zero
  4f8c88:	24020385 	li	v0,901
  4f8c8c:	aca20000 	sw	v0,0(a1)
  4f8c90:	00001021 	move	v0,zero
  4f8c94:	03e00008 	jr	ra
  4f8c98:	00000000 	nop

004f8c9c <adPoeGetPortClassFromRegVal_xs2184@@Base>:
  4f8c9c:	3c1c00a3 	lui	gp,0xa3
  4f8ca0:	279c8c74 	addiu	gp,gp,-29580
  4f8ca4:	0399e021 	addu	gp,gp,t9
  4f8ca8:	10a00026 	beqz	a1,4f8d44 <adPoeGetPortClassFromRegVal_xs2184@@Base+0xa8>
  4f8cac:	24020001 	li	v0,1
  4f8cb0:	2483ffff 	addiu	v1,a0,-1
  4f8cb4:	2402004c 	li	v0,76
  4f8cb8:	00620018 	mult	v1,v0
  4f8cbc:	8f82a3dc 	lw	v0,-23588(gp)
  4f8cc0:	00001812 	mflo	v1
  4f8cc4:	00431021 	addu	v0,v0,v1
  4f8cc8:	90430053 	lbu	v1,83(v0)
  4f8ccc:	00000000 	nop
  4f8cd0:	2c620008 	sltiu	v0,v1,8
  4f8cd4:	10400019 	beqz	v0,4f8d3c <adPoeGetPortClassFromRegVal_xs2184@@Base+0xa0>
  4f8cd8:	24020385 	li	v0,901
  4f8cdc:	00031080 	sll	v0,v1,0x2
  4f8ce0:	8f838028 	lw	v1,-32728(gp)
  4f8ce4:	00000000 	nop
  4f8ce8:	246301c4 	addiu	v1,v1,452
  4f8cec:	00621821 	addu	v1,v1,v0
  4f8cf0:	8c620000 	lw	v0,0(v1)
  4f8cf4:	00000000 	nop
  4f8cf8:	005c1021 	addu	v0,v0,gp
  4f8cfc:	00400008 	jr	v0
  4f8d00:	00000000 	nop
  4f8d04:	1000000a 	b	4f8d30 <adPoeGetPortClassFromRegVal_xs2184@@Base+0x94>
  4f8d08:	2402014a 	li	v0,330
  4f8d0c:	10000008 	b	4f8d30 <adPoeGetPortClassFromRegVal_xs2184@@Base+0x94>
  4f8d10:	24020028 	li	v0,40
  4f8d14:	10000006 	b	4f8d30 <adPoeGetPortClassFromRegVal_xs2184@@Base+0x94>
  4f8d18:	24020046 	li	v0,70
  4f8d1c:	10000004 	b	4f8d30 <adPoeGetPortClassFromRegVal_xs2184@@Base+0x94>
  4f8d20:	2402009a 	li	v0,154
  4f8d24:	10000002 	b	4f8d30 <adPoeGetPortClassFromRegVal_xs2184@@Base+0x94>
  4f8d28:	2402012c 	li	v0,300
  4f8d2c:	24020385 	li	v0,901
  4f8d30:	aca20000 	sw	v0,0(a1)
  4f8d34:	03e00008 	jr	ra
  4f8d38:	00001021 	move	v0,zero
  4f8d3c:	aca20000 	sw	v0,0(a1)
  4f8d40:	00001021 	move	v0,zero
  4f8d44:	03e00008 	jr	ra
  4f8d48:	00000000 	nop

004f8d4c <adPoeGetPortClassFromRegVal_mp3924@@Base>:
  4f8d4c:	3c1c00a3 	lui	gp,0xa3
  4f8d50:	279c8bc4 	addiu	gp,gp,-29756
  4f8d54:	0399e021 	addu	gp,gp,t9
  4f8d58:	10a00026 	beqz	a1,4f8df4 <adPoeGetPortClassFromRegVal_mp3924@@Base+0xa8>
  4f8d5c:	24020001 	li	v0,1
  4f8d60:	2483ffff 	addiu	v1,a0,-1
  4f8d64:	2402004c 	li	v0,76
  4f8d68:	00620018 	mult	v1,v0
  4f8d6c:	8f82a3dc 	lw	v0,-23588(gp)
  4f8d70:	00001812 	mflo	v1
  4f8d74:	00431021 	addu	v0,v0,v1
  4f8d78:	90430053 	lbu	v1,83(v0)
  4f8d7c:	00000000 	nop
  4f8d80:	2c620008 	sltiu	v0,v1,8
  4f8d84:	10400019 	beqz	v0,4f8dec <adPoeGetPortClassFromRegVal_mp3924@@Base+0xa0>
  4f8d88:	24020385 	li	v0,901
  4f8d8c:	00031080 	sll	v0,v1,0x2
  4f8d90:	8f838028 	lw	v1,-32728(gp)
  4f8d94:	00000000 	nop
  4f8d98:	246301e4 	addiu	v1,v1,484
  4f8d9c:	00621821 	addu	v1,v1,v0
  4f8da0:	8c620000 	lw	v0,0(v1)
  4f8da4:	00000000 	nop
  4f8da8:	005c1021 	addu	v0,v0,gp
  4f8dac:	00400008 	jr	v0
  4f8db0:	00000000 	nop
  4f8db4:	1000000a 	b	4f8de0 <adPoeGetPortClassFromRegVal_mp3924@@Base+0x94>
  4f8db8:	2402014a 	li	v0,330
  4f8dbc:	10000008 	b	4f8de0 <adPoeGetPortClassFromRegVal_mp3924@@Base+0x94>
  4f8dc0:	24020028 	li	v0,40
  4f8dc4:	10000006 	b	4f8de0 <adPoeGetPortClassFromRegVal_mp3924@@Base+0x94>
  4f8dc8:	24020046 	li	v0,70
  4f8dcc:	10000004 	b	4f8de0 <adPoeGetPortClassFromRegVal_mp3924@@Base+0x94>
  4f8dd0:	2402009a 	li	v0,154
  4f8dd4:	10000002 	b	4f8de0 <adPoeGetPortClassFromRegVal_mp3924@@Base+0x94>
  4f8dd8:	2402012c 	li	v0,300
  4f8ddc:	24020385 	li	v0,901
  4f8de0:	aca20000 	sw	v0,0(a1)
  4f8de4:	03e00008 	jr	ra
  4f8de8:	00001021 	move	v0,zero
  4f8dec:	aca20000 	sw	v0,0(a1)
  4f8df0:	00001021 	move	v0,zero
  4f8df4:	03e00008 	jr	ra
  4f8df8:	00000000 	nop

004f8dfc <adPoeGetPortClassFromRegVal_2388x@@Base>:
  4f8dfc:	3c1c00a3 	lui	gp,0xa3
  4f8e00:	279c8b14 	addiu	gp,gp,-29932
  4f8e04:	0399e021 	addu	gp,gp,t9
  4f8e08:	10a0002f 	beqz	a1,4f8ec8 <adPoeGetPortClassFromRegVal_2388x@@Base+0xcc>
  4f8e0c:	24020001 	li	v0,1
  4f8e10:	2483ffff 	addiu	v1,a0,-1
  4f8e14:	2402004c 	li	v0,76
  4f8e18:	00620018 	mult	v1,v0
  4f8e1c:	8f82a3dc 	lw	v0,-23588(gp)
  4f8e20:	00001812 	mflo	v1
  4f8e24:	00431021 	addu	v0,v0,v1
  4f8e28:	90430053 	lbu	v1,83(v0)
  4f8e2c:	00000000 	nop
  4f8e30:	2c620010 	sltiu	v0,v1,16
  4f8e34:	10400022 	beqz	v0,4f8ec0 <adPoeGetPortClassFromRegVal_2388x@@Base+0xc4>
  4f8e38:	24020385 	li	v0,901
  4f8e3c:	00031080 	sll	v0,v1,0x2
  4f8e40:	8f838028 	lw	v1,-32728(gp)
  4f8e44:	00000000 	nop
  4f8e48:	24630204 	addiu	v1,v1,516
  4f8e4c:	00621821 	addu	v1,v1,v0
  4f8e50:	8c620000 	lw	v0,0(v1)
  4f8e54:	00000000 	nop
  4f8e58:	005c1021 	addu	v0,v0,gp
  4f8e5c:	00400008 	jr	v0
  4f8e60:	00000000 	nop
  4f8e64:	10000012 	b	4f8eb0 <adPoeGetPortClassFromRegVal_2388x@@Base+0xb4>
  4f8e68:	2402014a 	li	v0,330
  4f8e6c:	10000010 	b	4f8eb0 <adPoeGetPortClassFromRegVal_2388x@@Base+0xb4>
  4f8e70:	24020028 	li	v0,40
  4f8e74:	1000000e 	b	4f8eb0 <adPoeGetPortClassFromRegVal_2388x@@Base+0xb4>
  4f8e78:	24020046 	li	v0,70
  4f8e7c:	1000000c 	b	4f8eb0 <adPoeGetPortClassFromRegVal_2388x@@Base+0xb4>
  4f8e80:	2402009a 	li	v0,154
  4f8e84:	1000000a 	b	4f8eb0 <adPoeGetPortClassFromRegVal_2388x@@Base+0xb4>
  4f8e88:	2402012c 	li	v0,300
  4f8e8c:	10000008 	b	4f8eb0 <adPoeGetPortClassFromRegVal_2388x@@Base+0xb4>
  4f8e90:	240201c2 	li	v0,450
  4f8e94:	10000006 	b	4f8eb0 <adPoeGetPortClassFromRegVal_2388x@@Base+0xb4>
  4f8e98:	24020258 	li	v0,600
  4f8e9c:	10000004 	b	4f8eb0 <adPoeGetPortClassFromRegVal_2388x@@Base+0xb4>
  4f8ea0:	240202ee 	li	v0,750
  4f8ea4:	10000002 	b	4f8eb0 <adPoeGetPortClassFromRegVal_2388x@@Base+0xb4>
  4f8ea8:	24020384 	li	v0,900
  4f8eac:	24020385 	li	v0,901
  4f8eb0:	aca20000 	sw	v0,0(a1)
  4f8eb4:	03e00008 	jr	ra
  4f8eb8:	00001021 	move	v0,zero
  4f8ebc:	24020385 	li	v0,901
  4f8ec0:	aca20000 	sw	v0,0(a1)
  4f8ec4:	00001021 	move	v0,zero
  4f8ec8:	03e00008 	jr	ra
  4f8ecc:	00000000 	nop

004f8ed0 <adPoeGetPortClassFromRegVal@@Base>:
  4f8ed0:	3c1c00a3 	lui	gp,0xa3
  4f8ed4:	279c8a40 	addiu	gp,gp,-30144
  4f8ed8:	0399e021 	addu	gp,gp,t9
  4f8edc:	8f82baac 	lw	v0,-17748(gp)
  4f8ee0:	00000000 	nop
  4f8ee4:	8c59000c 	lw	t9,12(v0)
  4f8ee8:	00000000 	nop
  4f8eec:	17200003 	bnez	t9,4f8efc <adPoeGetPortClassFromRegVal@@Base+0x2c>
  4f8ef0:	00001021 	move	v0,zero
  4f8ef4:	03e00008 	jr	ra
  4f8ef8:	00000000 	nop
  4f8efc:	03200008 	jr	t9
  4f8f00:	00000000 	nop

004f8f04 <adPoeSetPortState@@Base>:
  4f8f04:	3c1c00a3 	lui	gp,0xa3
  4f8f08:	279c8a0c 	addiu	gp,gp,-30196
  4f8f0c:	0399e021 	addu	gp,gp,t9
  4f8f10:	8f82baac 	lw	v0,-17748(gp)
  4f8f14:	00000000 	nop
  4f8f18:	8c590010 	lw	t9,16(v0)
  4f8f1c:	00000000 	nop
  4f8f20:	17200003 	bnez	t9,4f8f30 <adPoeSetPortState@@Base+0x2c>
  4f8f24:	00001021 	move	v0,zero
  4f8f28:	03e00008 	jr	ra
  4f8f2c:	00000000 	nop
  4f8f30:	03200008 	jr	t9
  4f8f34:	00000000 	nop

004f8f38 <adPoePortPowerONControl@@Base>:
  4f8f38:	3c1c00a3 	lui	gp,0xa3
  4f8f3c:	279c89d8 	addiu	gp,gp,-30248
  4f8f40:	0399e021 	addu	gp,gp,t9
  4f8f44:	8f82baac 	lw	v0,-17748(gp)
  4f8f48:	00000000 	nop
  4f8f4c:	8c590014 	lw	t9,20(v0)
  4f8f50:	00000000 	nop
  4f8f54:	17200003 	bnez	t9,4f8f64 <adPoePortPowerONControl@@Base+0x2c>
  4f8f58:	00001021 	move	v0,zero
  4f8f5c:	03e00008 	jr	ra
  4f8f60:	00000000 	nop
  4f8f64:	03200008 	jr	t9
  4f8f68:	00000000 	nop

004f8f6c <adPoeUpdtEventStatus@@Base>:
  4f8f6c:	3c1c00a3 	lui	gp,0xa3
  4f8f70:	279c89a4 	addiu	gp,gp,-30300
  4f8f74:	0399e021 	addu	gp,gp,t9
  4f8f78:	8f82baac 	lw	v0,-17748(gp)
  4f8f7c:	00000000 	nop
  4f8f80:	8c590018 	lw	t9,24(v0)
  4f8f84:	00000000 	nop
  4f8f88:	17200003 	bnez	t9,4f8f98 <adPoeUpdtEventStatus@@Base+0x2c>
  4f8f8c:	00001021 	move	v0,zero
  4f8f90:	03e00008 	jr	ra
  4f8f94:	00000000 	nop
  4f8f98:	03200008 	jr	t9
  4f8f9c:	00000000 	nop

004f8fa0 <adPoeUpdtPoePortPowerInfo@@Base>:
  4f8fa0:	3c1c00a3 	lui	gp,0xa3
  4f8fa4:	279c8970 	addiu	gp,gp,-30352
  4f8fa8:	0399e021 	addu	gp,gp,t9
  4f8fac:	27bdffc8 	addiu	sp,sp,-56
  4f8fb0:	afbf0034 	sw	ra,52(sp)
  4f8fb4:	afb20030 	sw	s2,48(sp)
  4f8fb8:	afb1002c 	sw	s1,44(sp)
  4f8fbc:	afb00028 	sw	s0,40(sp)
  4f8fc0:	afbc0010 	sw	gp,16(sp)
  4f8fc4:	8f85a3dc 	lw	a1,-23588(gp)
  4f8fc8:	00000000 	nop
  4f8fcc:	8ca2000c 	lw	v0,12(a1)
  4f8fd0:	00000000 	nop
  4f8fd4:	0082102a 	slt	v0,a0,v0
  4f8fd8:	14400053 	bnez	v0,4f9128 <adPoeUpdtPoePortPowerInfo@@Base+0x188>
  4f8fdc:	00808021 	move	s0,a0
  4f8fe0:	8ca20010 	lw	v0,16(a1)
  4f8fe4:	00000000 	nop
  4f8fe8:	0044102a 	slt	v0,v0,a0
  4f8fec:	1440004e 	bnez	v0,4f9128 <adPoeUpdtPoePortPowerInfo@@Base+0x188>
  4f8ff0:	2483ffff 	addiu	v1,a0,-1
  4f8ff4:	2402004c 	li	v0,76
  4f8ff8:	00620018 	mult	v1,v0
  4f8ffc:	24a20024 	addiu	v0,a1,36
  4f9000:	00002821 	move	a1,zero
  4f9004:	afa50018 	sw	a1,24(sp)
  4f9008:	afa5001c 	sw	a1,28(sp)
  4f900c:	afa00020 	sw	zero,32(sp)
  4f9010:	00001812 	mflo	v1
  4f9014:	00439021 	addu	s2,v0,v1
  4f9018:	8e42002c 	lw	v0,44(s2)
  4f901c:	3c030008 	lui	v1,0x8
  4f9020:	00431024 	and	v0,v0,v1
  4f9024:	1040003a 	beqz	v0,4f9110 <adPoeUpdtPoePortPowerInfo@@Base+0x170>
  4f9028:	24020385 	li	v0,901
  4f902c:	8f99868c 	lw	t9,-31092(gp)
  4f9030:	00000000 	nop
  4f9034:	0320f809 	jalr	t9
  4f9038:	27a50018 	addiu	a1,sp,24
  4f903c:	8fbc0010 	lw	gp,16(sp)
  4f9040:	0440003a 	bltz	v0,4f912c <adPoeUpdtPoePortPowerInfo@@Base+0x18c>
  4f9044:	00402021 	move	a0,v0
  4f9048:	8f99ff80 	lw	t9,-128(gp)
  4f904c:	02002021 	move	a0,s0
  4f9050:	0320f809 	jalr	t9
  4f9054:	27a5001c 	addiu	a1,sp,28
  4f9058:	8fbc0010 	lw	gp,16(sp)
  4f905c:	04400033 	bltz	v0,4f912c <adPoeUpdtPoePortPowerInfo@@Base+0x18c>
  4f9060:	00402021 	move	a0,v0
  4f9064:	8f99aa84 	lw	t9,-21884(gp)
  4f9068:	02002021 	move	a0,s0
  4f906c:	0320f809 	jalr	t9
  4f9070:	27a50020 	addiu	a1,sp,32
  4f9074:	8fbc0010 	lw	gp,16(sp)
  4f9078:	0440002c 	bltz	v0,4f912c <adPoeUpdtPoePortPowerInfo@@Base+0x18c>
  4f907c:	00402021 	move	a0,v0
  4f9080:	8fb10018 	lw	s1,24(sp)
  4f9084:	8f99d41c 	lw	t9,-11236(gp)
  4f9088:	00000000 	nop
  4f908c:	0320f809 	jalr	t9
  4f9090:	02202021 	move	a0,s1
  4f9094:	8fbc0010 	lw	gp,16(sp)
  4f9098:	8fb0001c 	lw	s0,28(sp)
  4f909c:	ae420014 	sw	v0,20(s2)
  4f90a0:	8f99d41c 	lw	t9,-11236(gp)
  4f90a4:	00000000 	nop
  4f90a8:	0320f809 	jalr	t9
  4f90ac:	02002021 	move	a0,s0
  4f90b0:	8fbc0010 	lw	gp,16(sp)
  4f90b4:	02202021 	move	a0,s1
  4f90b8:	02002821 	move	a1,s0
  4f90bc:	8f99ca54 	lw	t9,-13740(gp)
  4f90c0:	00000000 	nop
  4f90c4:	0320f809 	jalr	t9
  4f90c8:	ae420018 	sw	v0,24(s2)
  4f90cc:	8fbc0010 	lw	gp,16(sp)
  4f90d0:	00000000 	nop
  4f90d4:	8f99d41c 	lw	t9,-11236(gp)
  4f90d8:	00000000 	nop
  4f90dc:	0320f809 	jalr	t9
  4f90e0:	00402021 	move	a0,v0
  4f90e4:	240303e8 	li	v1,1000
  4f90e8:	14600002 	bnez	v1,4f90f4 <adPoeUpdtPoePortPowerInfo@@Base+0x154>
  4f90ec:	0043001a 	div	zero,v0,v1
  4f90f0:	0007000d 	break	0x7
  4f90f4:	8fa30020 	lw	v1,32(sp)
  4f90f8:	8fbc0010 	lw	gp,16(sp)
  4f90fc:	00002021 	move	a0,zero
  4f9100:	ae430020 	sw	v1,32(s2)
  4f9104:	00001012 	mflo	v0
  4f9108:	10000008 	b	4f912c <adPoeUpdtPoePortPowerInfo@@Base+0x18c>
  4f910c:	ae42001c 	sw	v0,28(s2)
  4f9110:	ae420020 	sw	v0,32(s2)
  4f9114:	ae400014 	sw	zero,20(s2)
  4f9118:	ae400018 	sw	zero,24(s2)
  4f911c:	ae40001c 	sw	zero,28(s2)
  4f9120:	10000002 	b	4f912c <adPoeUpdtPoePortPowerInfo@@Base+0x18c>
  4f9124:	00002021 	move	a0,zero
  4f9128:	24040001 	li	a0,1
  4f912c:	8fbf0034 	lw	ra,52(sp)
  4f9130:	8fb20030 	lw	s2,48(sp)
  4f9134:	8fb1002c 	lw	s1,44(sp)
  4f9138:	8fb00028 	lw	s0,40(sp)
  4f913c:	00801021 	move	v0,a0
  4f9140:	03e00008 	jr	ra
  4f9144:	27bd0038 	addiu	sp,sp,56

004f9148 <clearStartFltStatus@@Base>:
  4f9148:	3c1c00a3 	lui	gp,0xa3
  4f914c:	279c87c8 	addiu	gp,gp,-30776
  4f9150:	0399e021 	addu	gp,gp,t9
  4f9154:	8f82add4 	lw	v0,-21036(gp)
  4f9158:	00000000 	nop
  4f915c:	ac400000 	sw	zero,0(v0)
  4f9160:	8f82d590 	lw	v0,-10864(gp)
  4f9164:	03e00008 	jr	ra
  4f9168:	ac400000 	sw	zero,0(v0)

004f916c <adPoeCheckClass_2386x@@Base>:
  4f916c:	308400ff 	andi	a0,a0,0xff
  4f9170:	2c820007 	sltiu	v0,a0,7
  4f9174:	10400007 	beqz	v0,4f9194 <adPoeCheckClass_2386x@@Base+0x28>
  4f9178:	00001821 	move	v1,zero
  4f917c:	24020001 	li	v0,1
  4f9180:	00821004 	sllv	v0,v0,a0
  4f9184:	3042005e 	andi	v0,v0,0x5e
  4f9188:	14400002 	bnez	v0,4f9194 <adPoeCheckClass_2386x@@Base+0x28>
  4f918c:	24030001 	li	v1,1
  4f9190:	00001821 	move	v1,zero
  4f9194:	03e00008 	jr	ra
  4f9198:	00601021 	move	v0,v1

004f919c <adPoeCheckClass_xs2184@@Base>:
  4f919c:	308400ff 	andi	a0,a0,0xff
  4f91a0:	2c820007 	sltiu	v0,a0,7
  4f91a4:	10400007 	beqz	v0,4f91c4 <adPoeCheckClass_xs2184@@Base+0x28>
  4f91a8:	00001821 	move	v1,zero
  4f91ac:	24020001 	li	v0,1
  4f91b0:	00821004 	sllv	v0,v0,a0
  4f91b4:	3042005e 	andi	v0,v0,0x5e
  4f91b8:	14400002 	bnez	v0,4f91c4 <adPoeCheckClass_xs2184@@Base+0x28>
  4f91bc:	24030001 	li	v1,1
  4f91c0:	00001821 	move	v1,zero
  4f91c4:	03e00008 	jr	ra
  4f91c8:	00601021 	move	v0,v1

004f91cc <adPoeCheckClass_mp3924@@Base>:
  4f91cc:	308400ff 	andi	a0,a0,0xff
  4f91d0:	2c820007 	sltiu	v0,a0,7
  4f91d4:	10400007 	beqz	v0,4f91f4 <adPoeCheckClass_mp3924@@Base+0x28>
  4f91d8:	00001821 	move	v1,zero
  4f91dc:	24020001 	li	v0,1
  4f91e0:	00821004 	sllv	v0,v0,a0
  4f91e4:	3042005e 	andi	v0,v0,0x5e
  4f91e8:	14400002 	bnez	v0,4f91f4 <adPoeCheckClass_mp3924@@Base+0x28>
  4f91ec:	24030001 	li	v1,1
  4f91f0:	00001821 	move	v1,zero
  4f91f4:	03e00008 	jr	ra
  4f91f8:	00601021 	move	v0,v1

004f91fc <adPoeCheckClass_2388x@@Base>:
  4f91fc:	308400ff 	andi	a0,a0,0xff
  4f9200:	2c82000e 	sltiu	v0,a0,14
  4f9204:	10400007 	beqz	v0,4f9224 <adPoeCheckClass_2388x@@Base+0x28>
  4f9208:	00001821 	move	v1,zero
  4f920c:	24020001 	li	v0,1
  4f9210:	00821004 	sllv	v0,v0,a0
  4f9214:	30423f5e 	andi	v0,v0,0x3f5e
  4f9218:	14400002 	bnez	v0,4f9224 <adPoeCheckClass_2388x@@Base+0x28>
  4f921c:	24030001 	li	v1,1
  4f9220:	00001821 	move	v1,zero
  4f9224:	03e00008 	jr	ra
  4f9228:	00601021 	move	v0,v1

004f922c <adPoeCheckClass@@Base>:
  4f922c:	3c1c00a3 	lui	gp,0xa3
  4f9230:	279c86e4 	addiu	gp,gp,-31004
  4f9234:	0399e021 	addu	gp,gp,t9
  4f9238:	8f82baac 	lw	v0,-17748(gp)
  4f923c:	00000000 	nop
  4f9240:	8c59001c 	lw	t9,28(v0)
  4f9244:	00000000 	nop
  4f9248:	17200003 	bnez	t9,4f9258 <adPoeCheckClass@@Base+0x2c>
  4f924c:	308400ff 	andi	a0,a0,0xff
  4f9250:	03e00008 	jr	ra
  4f9254:	00001021 	move	v0,zero
  4f9258:	03200008 	jr	t9
  4f925c:	00000000 	nop

004f9260 <adPoePowerInfoUpdt@@Base>:
  4f9260:	3c1c00a3 	lui	gp,0xa3
  4f9264:	279c86b0 	addiu	gp,gp,-31056
  4f9268:	0399e021 	addu	gp,gp,t9
  4f926c:	8f82baac 	lw	v0,-17748(gp)
  4f9270:	00000000 	nop
  4f9274:	8c590020 	lw	t9,32(v0)
  4f9278:	00000000 	nop
  4f927c:	17200003 	bnez	t9,4f928c <adPoePowerInfoUpdt@@Base+0x2c>
  4f9280:	00001021 	move	v0,zero
  4f9284:	03e00008 	jr	ra
  4f9288:	00000000 	nop
  4f928c:	03200008 	jr	t9
  4f9290:	00000000 	nop

004f9294 <adPoeDisableResetDetect@@Base>:
  4f9294:	3c1c00a3 	lui	gp,0xa3
  4f9298:	279c867c 	addiu	gp,gp,-31108
  4f929c:	0399e021 	addu	gp,gp,t9
  4f92a0:	8f82802c 	lw	v0,-32724(gp)
  4f92a4:	03e00008 	jr	ra
  4f92a8:	ac40c598 	sw	zero,-14952(v0)

004f92ac <adPoeMaxLedFlagSet@@Base>:
  4f92ac:	3c1c00a3 	lui	gp,0xa3
  4f92b0:	279c8664 	addiu	gp,gp,-31132
  4f92b4:	0399e021 	addu	gp,gp,t9
  4f92b8:	8f848030 	lw	a0,-32720(gp)
  4f92bc:	24020001 	li	v0,1
  4f92c0:	8c83e148 	lw	v1,-7864(a0)
  4f92c4:	00000000 	nop
  4f92c8:	14620003 	bne	v1,v0,4f92d8 <adPoeMaxLedFlagSet@@Base+0x2c>
  4f92cc:	00000000 	nop
  4f92d0:	24020002 	li	v0,2
  4f92d4:	ac82e148 	sw	v0,-7864(a0)
  4f92d8:	03e00008 	jr	ra
  4f92dc:	00000000 	nop
  4f92e0:	3c1c00a3 	lui	gp,0xa3
  4f92e4:	279c8630 	addiu	gp,gp,-31184
  4f92e8:	0399e021 	addu	gp,gp,t9
  4f92ec:	27bdffd8 	addiu	sp,sp,-40
  4f92f0:	afbf0024 	sw	ra,36(sp)
  4f92f4:	afb20020 	sw	s2,32(sp)
  4f92f8:	afb1001c 	sw	s1,28(sp)
  4f92fc:	afb00018 	sw	s0,24(sp)
  4f9300:	afbc0010 	sw	gp,16(sp)
  4f9304:	8f998ae0 	lw	t9,-29984(gp)
  4f9308:	00c09021 	move	s2,a2
  4f930c:	309100ff 	andi	s1,a0,0xff
  4f9310:	0320f809 	jalr	t9
  4f9314:	30b000ff 	andi	s0,a1,0xff
  4f9318:	00401821 	move	v1,v0
  4f931c:	2402002a 	li	v0,42
  4f9320:	8fbc0010 	lw	gp,16(sp)
  4f9324:	1062003c 	beq	v1,v0,4f9418 <adPoeMaxLedFlagSet@@Base+0x16c>
  4f9328:	2862002b 	slti	v0,v1,43
  4f932c:	10400015 	beqz	v0,4f9384 <adPoeMaxLedFlagSet@@Base+0xd8>
  4f9330:	24020037 	li	v0,55
  4f9334:	24020016 	li	v0,22
  4f9338:	1062003d 	beq	v1,v0,4f9430 <adPoeMaxLedFlagSet@@Base+0x184>
  4f933c:	28620017 	slti	v0,v1,23
  4f9340:	10400008 	beqz	v0,4f9364 <adPoeMaxLedFlagSet@@Base+0xb8>
  4f9344:	2402001f 	li	v0,31
  4f9348:	24020007 	li	v0,7
  4f934c:	10620022 	beq	v1,v0,4f93d8 <adPoeMaxLedFlagSet@@Base+0x12c>
  4f9350:	24020015 	li	v0,21
  4f9354:	14620052 	bne	v1,v0,4f94a0 <adPoeMaxLedFlagSet@@Base+0x1f4>
  4f9358:	00000000 	nop
  4f935c:	1000002e 	b	4f9418 <adPoeMaxLedFlagSet@@Base+0x16c>
  4f9360:	00000000 	nop
  4f9364:	10620032 	beq	v1,v0,4f9430 <adPoeMaxLedFlagSet@@Base+0x184>
  4f9368:	24020029 	li	v0,41
  4f936c:	10620020 	beq	v1,v0,4f93f0 <adPoeMaxLedFlagSet@@Base+0x144>
  4f9370:	2402001c 	li	v0,28
  4f9374:	1462004a 	bne	v1,v0,4f94a0 <adPoeMaxLedFlagSet@@Base+0x1f4>
  4f9378:	00000000 	nop
  4f937c:	10000016 	b	4f93d8 <adPoeMaxLedFlagSet@@Base+0x12c>
  4f9380:	00000000 	nop
  4f9384:	1062001a 	beq	v1,v0,4f93f0 <adPoeMaxLedFlagSet@@Base+0x144>
  4f9388:	28620038 	slti	v0,v1,56
  4f938c:	1040000a 	beqz	v0,4f93b8 <adPoeMaxLedFlagSet@@Base+0x10c>
  4f9390:	2402003c 	li	v0,60
  4f9394:	24020030 	li	v0,48
  4f9398:	10620025 	beq	v1,v0,4f9430 <adPoeMaxLedFlagSet@@Base+0x184>
  4f939c:	24020035 	li	v0,53
  4f93a0:	1062001d 	beq	v1,v0,4f9418 <adPoeMaxLedFlagSet@@Base+0x16c>
  4f93a4:	2402002c 	li	v0,44
  4f93a8:	1462003d 	bne	v1,v0,4f94a0 <adPoeMaxLedFlagSet@@Base+0x1f4>
  4f93ac:	00000000 	nop
  4f93b0:	1000001f 	b	4f9430 <adPoeMaxLedFlagSet@@Base+0x184>
  4f93b4:	00000000 	nop
  4f93b8:	10620034 	beq	v1,v0,4f948c <adPoeMaxLedFlagSet@@Base+0x1e0>
  4f93bc:	24020048 	li	v0,72
  4f93c0:	10620026 	beq	v1,v0,4f945c <adPoeMaxLedFlagSet@@Base+0x1b0>
  4f93c4:	24020039 	li	v0,57
  4f93c8:	14620035 	bne	v1,v0,4f94a0 <adPoeMaxLedFlagSet@@Base+0x1f4>
  4f93cc:	00000000 	nop
  4f93d0:	10000022 	b	4f945c <adPoeMaxLedFlagSet@@Base+0x1b0>
  4f93d4:	00000000 	nop
  4f93d8:	12400037 	beqz	s2,4f94b8 <adPoeMaxLedFlagSet@@Base+0x20c>
  4f93dc:	00111880 	sll	v1,s1,0x2
  4f93e0:	02031821 	addu	v1,s0,v1
  4f93e4:	306300ff 	andi	v1,v1,0xff
  4f93e8:	10000026 	b	4f9484 <adPoeMaxLedFlagSet@@Base+0x1d8>
  4f93ec:	24020009 	li	v0,9
  4f93f0:	12400031 	beqz	s2,4f94b8 <adPoeMaxLedFlagSet@@Base+0x20c>
  4f93f4:	24020001 	li	v0,1
  4f93f8:	00511023 	subu	v0,v0,s1
  4f93fc:	00021080 	sll	v0,v0,0x2
  4f9400:	02021021 	addu	v0,s0,v0
  4f9404:	304200ff 	andi	v0,v0,0xff
  4f9408:	24030009 	li	v1,9
  4f940c:	00621823 	subu	v1,v1,v0
  4f9410:	10000027 	b	4f94b0 <adPoeMaxLedFlagSet@@Base+0x204>
  4f9414:	ae430000 	sw	v1,0(s2)
  4f9418:	12400027 	beqz	s2,4f94b8 <adPoeMaxLedFlagSet@@Base+0x20c>
  4f941c:	00000000 	nop
  4f9420:	1220001d 	beqz	s1,4f9498 <adPoeMaxLedFlagSet@@Base+0x1ec>
  4f9424:	24020005 	li	v0,5
  4f9428:	10000024 	b	4f94bc <adPoeMaxLedFlagSet@@Base+0x210>
  4f942c:	24020001 	li	v0,1
  4f9430:	12400021 	beqz	s2,4f94b8 <adPoeMaxLedFlagSet@@Base+0x20c>
  4f9434:	32020001 	andi	v0,s0,0x1
  4f9438:	10400003 	beqz	v0,4f9448 <adPoeMaxLedFlagSet@@Base+0x19c>
  4f943c:	00000000 	nop
  4f9440:	10000002 	b	4f944c <adPoeMaxLedFlagSet@@Base+0x1a0>
  4f9444:	26020001 	addiu	v0,s0,1
  4f9448:	2602ffff 	addiu	v0,s0,-1
  4f944c:	304300ff 	andi	v1,v0,0xff
  4f9450:	00111080 	sll	v0,s1,0x2
  4f9454:	10000015 	b	4f94ac <adPoeMaxLedFlagSet@@Base+0x200>
  4f9458:	00621021 	addu	v0,v1,v0
  4f945c:	12400016 	beqz	s2,4f94b8 <adPoeMaxLedFlagSet@@Base+0x20c>
  4f9460:	32020001 	andi	v0,s0,0x1
  4f9464:	10400003 	beqz	v0,4f9474 <adPoeMaxLedFlagSet@@Base+0x1c8>
  4f9468:	00000000 	nop
  4f946c:	10000002 	b	4f9478 <adPoeMaxLedFlagSet@@Base+0x1cc>
  4f9470:	26020001 	addiu	v0,s0,1
  4f9474:	2602ffff 	addiu	v0,s0,-1
  4f9478:	304300ff 	andi	v1,v0,0xff
  4f947c:	00111080 	sll	v0,s1,0x2
  4f9480:	24420005 	addiu	v0,v0,5
  4f9484:	10000009 	b	4f94ac <adPoeMaxLedFlagSet@@Base+0x200>
  4f9488:	00431023 	subu	v0,v0,v1
  4f948c:	1240000a 	beqz	s2,4f94b8 <adPoeMaxLedFlagSet@@Base+0x20c>
  4f9490:	00111080 	sll	v0,s1,0x2
  4f9494:	24420005 	addiu	v0,v0,5
  4f9498:	10000004 	b	4f94ac <adPoeMaxLedFlagSet@@Base+0x200>
  4f949c:	00501023 	subu	v0,v0,s0
  4f94a0:	12400005 	beqz	s2,4f94b8 <adPoeMaxLedFlagSet@@Base+0x20c>
  4f94a4:	00111080 	sll	v0,s1,0x2
  4f94a8:	00501021 	addu	v0,v0,s0
  4f94ac:	ae420000 	sw	v0,0(s2)
  4f94b0:	10000002 	b	4f94bc <adPoeMaxLedFlagSet@@Base+0x210>
  4f94b4:	00001021 	move	v0,zero
  4f94b8:	24020001 	li	v0,1
  4f94bc:	8fbf0024 	lw	ra,36(sp)
  4f94c0:	8fb20020 	lw	s2,32(sp)
  4f94c4:	8fb1001c 	lw	s1,28(sp)
  4f94c8:	8fb00018 	lw	s0,24(sp)
  4f94cc:	03e00008 	jr	ra
  4f94d0:	27bd0028 	addiu	sp,sp,40
  4f94d4:	3c1c00a3 	lui	gp,0xa3
  4f94d8:	279c843c 	addiu	gp,gp,-31684
  4f94dc:	0399e021 	addu	gp,gp,t9
  4f94e0:	27bdffd8 	addiu	sp,sp,-40
  4f94e4:	afbf0024 	sw	ra,36(sp)
  4f94e8:	afb20020 	sw	s2,32(sp)
  4f94ec:	afb1001c 	sw	s1,28(sp)
  4f94f0:	afb00018 	sw	s0,24(sp)
  4f94f4:	afbc0010 	sw	gp,16(sp)
  4f94f8:	8f998ae0 	lw	t9,-29984(gp)
  4f94fc:	00808021 	move	s0,a0
  4f9500:	00a08821 	move	s1,a1
  4f9504:	0320f809 	jalr	t9
  4f9508:	00c09021 	move	s2,a2
  4f950c:	00401821 	move	v1,v0
  4f9510:	2402002a 	li	v0,42
  4f9514:	8fbc0010 	lw	gp,16(sp)
  4f9518:	1062004e 	beq	v1,v0,4f9654 <adPoeMaxLedFlagSet@@Base+0x3a8>
  4f951c:	2862002b 	slti	v0,v1,43
  4f9520:	10400015 	beqz	v0,4f9578 <adPoeMaxLedFlagSet@@Base+0x2cc>
  4f9524:	24020037 	li	v0,55
  4f9528:	24020016 	li	v0,22
  4f952c:	10620051 	beq	v1,v0,4f9674 <adPoeMaxLedFlagSet@@Base+0x3c8>
  4f9530:	28620017 	slti	v0,v1,23
  4f9534:	10400008 	beqz	v0,4f9558 <adPoeMaxLedFlagSet@@Base+0x2ac>
  4f9538:	2402001f 	li	v0,31
  4f953c:	24020007 	li	v0,7
  4f9540:	10620022 	beq	v1,v0,4f95cc <adPoeMaxLedFlagSet@@Base+0x320>
  4f9544:	24020015 	li	v0,21
  4f9548:	14620093 	bne	v1,v0,4f9798 <adPoeMaxLedFlagSet@@Base+0x4ec>
  4f954c:	00000000 	nop
  4f9550:	10000040 	b	4f9654 <adPoeMaxLedFlagSet@@Base+0x3a8>
  4f9554:	00000000 	nop
  4f9558:	10620046 	beq	v1,v0,4f9674 <adPoeMaxLedFlagSet@@Base+0x3c8>
  4f955c:	24020029 	li	v0,41
  4f9560:	10620025 	beq	v1,v0,4f95f8 <adPoeMaxLedFlagSet@@Base+0x34c>
  4f9564:	2402001c 	li	v0,28
  4f9568:	1462008b 	bne	v1,v0,4f9798 <adPoeMaxLedFlagSet@@Base+0x4ec>
  4f956c:	00000000 	nop
  4f9570:	10000016 	b	4f95cc <adPoeMaxLedFlagSet@@Base+0x320>
  4f9574:	00000000 	nop
  4f9578:	1062001f 	beq	v1,v0,4f95f8 <adPoeMaxLedFlagSet@@Base+0x34c>
  4f957c:	28620038 	slti	v0,v1,56
  4f9580:	1040000a 	beqz	v0,4f95ac <adPoeMaxLedFlagSet@@Base+0x300>
  4f9584:	2402003c 	li	v0,60
  4f9588:	24020030 	li	v0,48
  4f958c:	10620039 	beq	v1,v0,4f9674 <adPoeMaxLedFlagSet@@Base+0x3c8>
  4f9590:	24020035 	li	v0,53
  4f9594:	1062002f 	beq	v1,v0,4f9654 <adPoeMaxLedFlagSet@@Base+0x3a8>
  4f9598:	2402002c 	li	v0,44
  4f959c:	1462007e 	bne	v1,v0,4f9798 <adPoeMaxLedFlagSet@@Base+0x4ec>
  4f95a0:	00000000 	nop
  4f95a4:	10000033 	b	4f9674 <adPoeMaxLedFlagSet@@Base+0x3c8>
  4f95a8:	00000000 	nop
  4f95ac:	10620067 	beq	v1,v0,4f974c <adPoeMaxLedFlagSet@@Base+0x4a0>
  4f95b0:	24020048 	li	v0,72
  4f95b4:	10620049 	beq	v1,v0,4f96dc <adPoeMaxLedFlagSet@@Base+0x430>
  4f95b8:	24020039 	li	v0,57
  4f95bc:	14620076 	bne	v1,v0,4f9798 <adPoeMaxLedFlagSet@@Base+0x4ec>
  4f95c0:	00000000 	nop
  4f95c4:	10000045 	b	4f96dc <adPoeMaxLedFlagSet@@Base+0x430>
  4f95c8:	00000000 	nop
  4f95cc:	12200088 	beqz	s1,4f97f0 <adPoeMaxLedFlagSet@@Base+0x544>
  4f95d0:	24020001 	li	v0,1
  4f95d4:	12400085 	beqz	s2,4f97ec <adPoeMaxLedFlagSet@@Base+0x540>
  4f95d8:	24020009 	li	v0,9
  4f95dc:	00502023 	subu	a0,v0,s0
  4f95e0:	2483ffff 	addiu	v1,a0,-1
  4f95e4:	000317c3 	sra	v0,v1,0x1f
  4f95e8:	00021782 	srl	v0,v0,0x1e
  4f95ec:	00431021 	addu	v0,v0,v1
  4f95f0:	1000000d 	b	4f9628 <adPoeMaxLedFlagSet@@Base+0x37c>
  4f95f4:	00021083 	sra	v0,v0,0x2
  4f95f8:	1220007d 	beqz	s1,4f97f0 <adPoeMaxLedFlagSet@@Base+0x544>
  4f95fc:	24020001 	li	v0,1
  4f9600:	1240007a 	beqz	s2,4f97ec <adPoeMaxLedFlagSet@@Base+0x540>
  4f9604:	24020009 	li	v0,9
  4f9608:	00502023 	subu	a0,v0,s0
  4f960c:	2483ffff 	addiu	v1,a0,-1
  4f9610:	000317c3 	sra	v0,v1,0x1f
  4f9614:	00021782 	srl	v0,v0,0x1e
  4f9618:	00431021 	addu	v0,v0,v1
  4f961c:	00021083 	sra	v0,v0,0x2
  4f9620:	00021023 	negu	v0,v0
  4f9624:	24420001 	addiu	v0,v0,1
  4f9628:	30830003 	andi	v1,a0,0x3
  4f962c:	a2220000 	sb	v0,0(s1)
  4f9630:	1060000e 	beqz	v1,4f966c <adPoeMaxLedFlagSet@@Base+0x3c0>
  4f9634:	24020004 	li	v0,4
  4f9638:	24020004 	li	v0,4
  4f963c:	14400002 	bnez	v0,4f9648 <adPoeMaxLedFlagSet@@Base+0x39c>
  4f9640:	0082001a 	div	zero,a0,v0
  4f9644:	0007000d 	break	0x7
  4f9648:	00001010 	mfhi	v0
  4f964c:	10000007 	b	4f966c <adPoeMaxLedFlagSet@@Base+0x3c0>
  4f9650:	304200ff 	andi	v0,v0,0xff
  4f9654:	12200066 	beqz	s1,4f97f0 <adPoeMaxLedFlagSet@@Base+0x544>
  4f9658:	24020001 	li	v0,1
  4f965c:	12400063 	beqz	s2,4f97ec <adPoeMaxLedFlagSet@@Base+0x540>
  4f9660:	24020005 	li	v0,5
  4f9664:	00501023 	subu	v0,v0,s0
  4f9668:	a2200000 	sb	zero,0(s1)
  4f966c:	1000005d 	b	4f97e4 <adPoeMaxLedFlagSet@@Base+0x538>
  4f9670:	a2420000 	sb	v0,0(s2)
  4f9674:	1220005e 	beqz	s1,4f97f0 <adPoeMaxLedFlagSet@@Base+0x544>
  4f9678:	24020001 	li	v0,1
  4f967c:	1240005b 	beqz	s2,4f97ec <adPoeMaxLedFlagSet@@Base+0x540>
  4f9680:	2602ffff 	addiu	v0,s0,-1
  4f9684:	00021fc3 	sra	v1,v0,0x1f
  4f9688:	00031f82 	srl	v1,v1,0x1e
  4f968c:	00621821 	addu	v1,v1,v0
  4f9690:	00031883 	sra	v1,v1,0x2
  4f9694:	32020003 	andi	v0,s0,0x3
  4f9698:	a2230000 	sb	v1,0(s1)
  4f969c:	1040000c 	beqz	v0,4f96d0 <adPoeMaxLedFlagSet@@Base+0x424>
  4f96a0:	24030004 	li	v1,4
  4f96a4:	24020004 	li	v0,4
  4f96a8:	14400002 	bnez	v0,4f96b4 <adPoeMaxLedFlagSet@@Base+0x408>
  4f96ac:	0202001a 	div	zero,s0,v0
  4f96b0:	0007000d 	break	0x7
  4f96b4:	00001010 	mfhi	v0
  4f96b8:	304300ff 	andi	v1,v0,0xff
  4f96bc:	30620001 	andi	v0,v1,0x1
  4f96c0:	10400003 	beqz	v0,4f96d0 <adPoeMaxLedFlagSet@@Base+0x424>
  4f96c4:	00000000 	nop
  4f96c8:	10000002 	b	4f96d4 <adPoeMaxLedFlagSet@@Base+0x428>
  4f96cc:	24620001 	addiu	v0,v1,1
  4f96d0:	2462ffff 	addiu	v0,v1,-1
  4f96d4:	1000ffe5 	b	4f966c <adPoeMaxLedFlagSet@@Base+0x3c0>
  4f96d8:	304200ff 	andi	v0,v0,0xff
  4f96dc:	12200044 	beqz	s1,4f97f0 <adPoeMaxLedFlagSet@@Base+0x544>
  4f96e0:	24020001 	li	v0,1
  4f96e4:	12400041 	beqz	s2,4f97ec <adPoeMaxLedFlagSet@@Base+0x540>
  4f96e8:	2602ffff 	addiu	v0,s0,-1
  4f96ec:	00021fc3 	sra	v1,v0,0x1f
  4f96f0:	00031f82 	srl	v1,v1,0x1e
  4f96f4:	00621821 	addu	v1,v1,v0
  4f96f8:	00031883 	sra	v1,v1,0x2
  4f96fc:	32020003 	andi	v0,s0,0x3
  4f9700:	a2230000 	sb	v1,0(s1)
  4f9704:	1040000c 	beqz	v0,4f9738 <adPoeMaxLedFlagSet@@Base+0x48c>
  4f9708:	24030004 	li	v1,4
  4f970c:	24020004 	li	v0,4
  4f9710:	14400002 	bnez	v0,4f971c <adPoeMaxLedFlagSet@@Base+0x470>
  4f9714:	0202001a 	div	zero,s0,v0
  4f9718:	0007000d 	break	0x7
  4f971c:	00001010 	mfhi	v0
  4f9720:	304300ff 	andi	v1,v0,0xff
  4f9724:	30620001 	andi	v0,v1,0x1
  4f9728:	10400003 	beqz	v0,4f9738 <adPoeMaxLedFlagSet@@Base+0x48c>
  4f972c:	00000000 	nop
  4f9730:	10000002 	b	4f973c <adPoeMaxLedFlagSet@@Base+0x490>
  4f9734:	24620001 	addiu	v0,v1,1
  4f9738:	2462ffff 	addiu	v0,v1,-1
  4f973c:	304300ff 	andi	v1,v0,0xff
  4f9740:	24020005 	li	v0,5
  4f9744:	1000ffc9 	b	4f966c <adPoeMaxLedFlagSet@@Base+0x3c0>
  4f9748:	00431023 	subu	v0,v0,v1
  4f974c:	12200028 	beqz	s1,4f97f0 <adPoeMaxLedFlagSet@@Base+0x544>
  4f9750:	24020001 	li	v0,1
  4f9754:	12400025 	beqz	s2,4f97ec <adPoeMaxLedFlagSet@@Base+0x540>
  4f9758:	2602ffff 	addiu	v0,s0,-1
  4f975c:	00021fc3 	sra	v1,v0,0x1f
  4f9760:	00031f82 	srl	v1,v1,0x1e
  4f9764:	00621821 	addu	v1,v1,v0
  4f9768:	00031883 	sra	v1,v1,0x2
  4f976c:	32020003 	andi	v0,s0,0x3
  4f9770:	a2230000 	sb	v1,0(s1)
  4f9774:	1040fff2 	beqz	v0,4f9740 <adPoeMaxLedFlagSet@@Base+0x494>
  4f9778:	24030004 	li	v1,4
  4f977c:	24020004 	li	v0,4
  4f9780:	14400002 	bnez	v0,4f978c <adPoeMaxLedFlagSet@@Base+0x4e0>
  4f9784:	0202001a 	div	zero,s0,v0
  4f9788:	0007000d 	break	0x7
  4f978c:	00001010 	mfhi	v0
  4f9790:	1000ffeb 	b	4f9740 <adPoeMaxLedFlagSet@@Base+0x494>
  4f9794:	304300ff 	andi	v1,v0,0xff
  4f9798:	12200015 	beqz	s1,4f97f0 <adPoeMaxLedFlagSet@@Base+0x544>
  4f979c:	24020001 	li	v0,1
  4f97a0:	12400012 	beqz	s2,4f97ec <adPoeMaxLedFlagSet@@Base+0x540>
  4f97a4:	2602ffff 	addiu	v0,s0,-1
  4f97a8:	00021fc3 	sra	v1,v0,0x1f
  4f97ac:	00031f82 	srl	v1,v1,0x1e
  4f97b0:	00621821 	addu	v1,v1,v0
  4f97b4:	00031883 	sra	v1,v1,0x2
  4f97b8:	32020003 	andi	v0,s0,0x3
  4f97bc:	a2230000 	sb	v1,0(s1)
  4f97c0:	10400007 	beqz	v0,4f97e0 <adPoeMaxLedFlagSet@@Base+0x534>
  4f97c4:	24030004 	li	v1,4
  4f97c8:	24020004 	li	v0,4
  4f97cc:	14400002 	bnez	v0,4f97d8 <adPoeMaxLedFlagSet@@Base+0x52c>
  4f97d0:	0202001a 	div	zero,s0,v0
  4f97d4:	0007000d 	break	0x7
  4f97d8:	00001010 	mfhi	v0
  4f97dc:	304300ff 	andi	v1,v0,0xff
  4f97e0:	a2430000 	sb	v1,0(s2)
  4f97e4:	10000002 	b	4f97f0 <adPoeMaxLedFlagSet@@Base+0x544>
  4f97e8:	00001021 	move	v0,zero
  4f97ec:	24020001 	li	v0,1
  4f97f0:	8fbf0024 	lw	ra,36(sp)
  4f97f4:	8fb20020 	lw	s2,32(sp)
  4f97f8:	8fb1001c 	lw	s1,28(sp)
  4f97fc:	8fb00018 	lw	s0,24(sp)
  4f9800:	03e00008 	jr	ra
  4f9804:	27bd0028 	addiu	sp,sp,40

004f9808 <mp3924SampleTimeInit@@Base>:
  4f9808:	3c1c00a3 	lui	gp,0xa3
  4f980c:	279c8108 	addiu	gp,gp,-32504
  4f9810:	0399e021 	addu	gp,gp,t9
  4f9814:	27bdffe0 	addiu	sp,sp,-32
  4f9818:	afbf001c 	sw	ra,28(sp)
  4f981c:	afbc0010 	sw	gp,16(sp)
  4f9820:	8f998ae0 	lw	t9,-29984(gp)
  4f9824:	00000000 	nop
  4f9828:	0320f809 	jalr	t9
  4f982c:	00000000 	nop
  4f9830:	2444ffcb 	addiu	a0,v0,-53
  4f9834:	2c820014 	sltiu	v0,a0,20
  4f9838:	8fbc0010 	lw	gp,16(sp)
  4f983c:	10400009 	beqz	v0,4f9864 <mp3924SampleTimeInit@@Base+0x5c>
  4f9840:	24030003 	li	v1,3
  4f9844:	24030001 	li	v1,1
  4f9848:	3c02000a 	lui	v0,0xa
  4f984c:	00831804 	sllv	v1,v1,a0
  4f9850:	34422005 	ori	v0,v0,0x2005
  4f9854:	00621824 	and	v1,v1,v0
  4f9858:	14600002 	bnez	v1,4f9864 <mp3924SampleTimeInit@@Base+0x5c>
  4f985c:	2403000c 	li	v1,12
  4f9860:	24030003 	li	v1,3
  4f9864:	8f82802c 	lw	v0,-32724(gp)
  4f9868:	8fbf001c 	lw	ra,28(sp)
  4f986c:	ac43c59c 	sw	v1,-14948(v0)
  4f9870:	00001021 	move	v0,zero
  4f9874:	03e00008 	jr	ra
  4f9878:	27bd0020 	addiu	sp,sp,32

004f987c <getPseTypeInfo@@Base>:
  4f987c:	3c1c00a3 	lui	gp,0xa3
  4f9880:	279c8094 	addiu	gp,gp,-32620
  4f9884:	0399e021 	addu	gp,gp,t9
  4f9888:	27bdffe0 	addiu	sp,sp,-32
  4f988c:	afbf001c 	sw	ra,28(sp)
  4f9890:	afb00018 	sw	s0,24(sp)
  4f9894:	afbc0010 	sw	gp,16(sp)
  4f9898:	8f90802c 	lw	s0,-32724(gp)
  4f989c:	24020005 	li	v0,5
  4f98a0:	8e03c5a0 	lw	v1,-14944(s0)
  4f98a4:	00000000 	nop
  4f98a8:	1462001e 	bne	v1,v0,4f9924 <getPseTypeInfo@@Base+0xa8>
  4f98ac:	00000000 	nop
  4f98b0:	8f998ae0 	lw	t9,-29984(gp)
  4f98b4:	00000000 	nop
  4f98b8:	0320f809 	jalr	t9
  4f98bc:	00000000 	nop
  4f98c0:	2443ffd7 	addiu	v1,v0,-41
  4f98c4:	2c620020 	sltiu	v0,v1,32
  4f98c8:	8fbc0010 	lw	gp,16(sp)
  4f98cc:	1040000f 	beqz	v0,4f990c <getPseTypeInfo@@Base+0x90>
  4f98d0:	24020001 	li	v0,1
  4f98d4:	00621804 	sllv	v1,v0,v1
  4f98d8:	3c02a209 	lui	v0,0xa209
  4f98dc:	34425000 	ori	v0,v0,0x5000
  4f98e0:	00621024 	and	v0,v1,v0
  4f98e4:	14400007 	bnez	v0,4f9904 <getPseTypeInfo@@Base+0x88>
  4f98e8:	24020004 	li	v0,4
  4f98ec:	30622880 	andi	v0,v1,0x2880
  4f98f0:	14400004 	bnez	v0,4f9904 <getPseTypeInfo@@Base+0x88>
  4f98f4:	24020003 	li	v0,3
  4f98f8:	3062001b 	andi	v0,v1,0x1b
  4f98fc:	10400003 	beqz	v0,4f990c <getPseTypeInfo@@Base+0x90>
  4f9900:	24020002 	li	v0,2
  4f9904:	10000004 	b	4f9918 <getPseTypeInfo@@Base+0x9c>
  4f9908:	ae02c5a0 	sw	v0,-14944(s0)
  4f990c:	8f82802c 	lw	v0,-32724(gp)
  4f9910:	00000000 	nop
  4f9914:	ac40c5a0 	sw	zero,-14944(v0)
  4f9918:	8f82802c 	lw	v0,-32724(gp)
  4f991c:	00000000 	nop
  4f9920:	8c43c5a0 	lw	v1,-14944(v0)
  4f9924:	8fbf001c 	lw	ra,28(sp)
  4f9928:	8fb00018 	lw	s0,24(sp)
  4f992c:	00601021 	move	v0,v1
  4f9930:	03e00008 	jr	ra
  4f9934:	27bd0020 	addiu	sp,sp,32

004f9938 <adPoeInit@@Base>:
  4f9938:	3c1c00a2 	lui	gp,0xa2
  4f993c:	279c7fd8 	addiu	gp,gp,32728
  4f9940:	0399e021 	addu	gp,gp,t9
  4f9944:	27bdffc8 	addiu	sp,sp,-56
  4f9948:	afbf0034 	sw	ra,52(sp)
  4f994c:	afb60030 	sw	s6,48(sp)
  4f9950:	afb5002c 	sw	s5,44(sp)
  4f9954:	afb40028 	sw	s4,40(sp)
  4f9958:	afb30024 	sw	s3,36(sp)
  4f995c:	afb20020 	sw	s2,32(sp)
  4f9960:	afb1001c 	sw	s1,28(sp)
  4f9964:	afb00018 	sw	s0,24(sp)
  4f9968:	afbc0010 	sw	gp,16(sp)
  4f996c:	8f82d624 	lw	v0,-10716(gp)
  4f9970:	8f999358 	lw	t9,-27816(gp)
  4f9974:	8c440000 	lw	a0,0(v0)
  4f9978:	0320f809 	jalr	t9
  4f997c:	00000000 	nop
  4f9980:	8fbc0010 	lw	gp,16(sp)
  4f9984:	00000000 	nop
  4f9988:	8f838030 	lw	v1,-32720(gp)
  4f998c:	1040019e 	beqz	v0,4fa008 <adPoeInit@@Base+0x6d0>
  4f9990:	ac62e13c 	sw	v0,-7876(v1)
  4f9994:	8f848028 	lw	a0,-32728(gp)
  4f9998:	8f99b718 	lw	t9,-18664(gp)
  4f999c:	00002821 	move	a1,zero
  4f99a0:	248404a0 	addiu	a0,a0,1184
  4f99a4:	0320f809 	jalr	t9
  4f99a8:	00003021 	move	a2,zero
  4f99ac:	8fbc0010 	lw	gp,16(sp)
  4f99b0:	00000000 	nop
  4f99b4:	8f838030 	lw	v1,-32720(gp)
  4f99b8:	10400193 	beqz	v0,4fa008 <adPoeInit@@Base+0x6d0>
  4f99bc:	ac62e140 	sw	v0,-7872(v1)
  4f99c0:	8f998ae0 	lw	t9,-29984(gp)
  4f99c4:	00000000 	nop
  4f99c8:	0320f809 	jalr	t9
  4f99cc:	00000000 	nop
  4f99d0:	2443fffc 	addiu	v1,v0,-4
  4f99d4:	2c620045 	sltiu	v0,v1,69
  4f99d8:	8fbc0010 	lw	gp,16(sp)
  4f99dc:	1040002a 	beqz	v0,4f9a88 <adPoeInit@@Base+0x150>
  4f99e0:	00031080 	sll	v0,v1,0x2
  4f99e4:	8f838028 	lw	v1,-32728(gp)
  4f99e8:	8f848030 	lw	a0,-32720(gp)
  4f99ec:	24630244 	addiu	v1,v1,580
  4f99f0:	00621821 	addu	v1,v1,v0
  4f99f4:	8c620000 	lw	v0,0(v1)
  4f99f8:	00000000 	nop
  4f99fc:	005c1021 	addu	v0,v0,gp
  4f9a00:	00400008 	jr	v0
  4f9a04:	00000000 	nop
  4f9a08:	8f82802c 	lw	v0,-32724(gp)
  4f9a0c:	10000004 	b	4f9a20 <adPoeInit@@Base+0xe8>
  4f9a10:	2442c514 	addiu	v0,v0,-15084
  4f9a14:	8f82802c 	lw	v0,-32724(gp)
  4f9a18:	00000000 	nop
  4f9a1c:	2442c520 	addiu	v0,v0,-15072
  4f9a20:	1000003b 	b	4f9b10 <adPoeInit@@Base+0x1d8>
  4f9a24:	ac82e144 	sw	v0,-7868(a0)
  4f9a28:	8f82802c 	lw	v0,-32724(gp)
  4f9a2c:	1000fffc 	b	4f9a20 <adPoeInit@@Base+0xe8>
  4f9a30:	2442c52c 	addiu	v0,v0,-15060
  4f9a34:	8f82802c 	lw	v0,-32724(gp)
  4f9a38:	1000fff9 	b	4f9a20 <adPoeInit@@Base+0xe8>
  4f9a3c:	2442c538 	addiu	v0,v0,-15048
  4f9a40:	8f82802c 	lw	v0,-32724(gp)
  4f9a44:	1000fff6 	b	4f9a20 <adPoeInit@@Base+0xe8>
  4f9a48:	2442c544 	addiu	v0,v0,-15036
  4f9a4c:	8f82802c 	lw	v0,-32724(gp)
  4f9a50:	1000fff3 	b	4f9a20 <adPoeInit@@Base+0xe8>
  4f9a54:	2442c550 	addiu	v0,v0,-15024
  4f9a58:	8f82802c 	lw	v0,-32724(gp)
  4f9a5c:	1000fff0 	b	4f9a20 <adPoeInit@@Base+0xe8>
  4f9a60:	2442c55c 	addiu	v0,v0,-15012
  4f9a64:	8f82802c 	lw	v0,-32724(gp)
  4f9a68:	1000ffed 	b	4f9a20 <adPoeInit@@Base+0xe8>
  4f9a6c:	2442c568 	addiu	v0,v0,-15000
  4f9a70:	8f82802c 	lw	v0,-32724(gp)
  4f9a74:	1000ffea 	b	4f9a20 <adPoeInit@@Base+0xe8>
  4f9a78:	2442c574 	addiu	v0,v0,-14988
  4f9a7c:	8f82802c 	lw	v0,-32724(gp)
  4f9a80:	1000ffe7 	b	4f9a20 <adPoeInit@@Base+0xe8>
  4f9a84:	2442c580 	addiu	v0,v0,-14976
  4f9a88:	8f82802c 	lw	v0,-32724(gp)
  4f9a8c:	8f838030 	lw	v1,-32720(gp)
  4f9a90:	00008021 	move	s0,zero
  4f9a94:	2442c58c 	addiu	v0,v0,-14964
  4f9a98:	ac62e144 	sw	v0,-7868(v1)
  4f9a9c:	8f91a3dc 	lw	s1,-23588(gp)
  4f9aa0:	1000000d 	b	4f9ad8 <adPoeInit@@Base+0x1a0>
  4f9aa4:	00609021 	move	s2,v1
  4f9aa8:	8e42e144 	lw	v0,-7868(s2)
  4f9aac:	8f99dfe4 	lw	t9,-8220(gp)
  4f9ab0:	00501021 	addu	v0,v0,s0
  4f9ab4:	90460000 	lbu	a2,0(v0)
  4f9ab8:	00002021 	move	a0,zero
  4f9abc:	24050005 	li	a1,5
  4f9ac0:	0320f809 	jalr	t9
  4f9ac4:	00c33025 	or	a2,a2,v1
  4f9ac8:	8fbc0010 	lw	gp,16(sp)
  4f9acc:	1440000e 	bnez	v0,4f9b08 <adPoeInit@@Base+0x1d0>
  4f9ad0:	00401821 	move	v1,v0
  4f9ad4:	26100001 	addiu	s0,s0,1
  4f9ad8:	8e220000 	lw	v0,0(s1)
  4f9adc:	8e230004 	lw	v1,4(s1)
  4f9ae0:	00000000 	nop
  4f9ae4:	14600002 	bnez	v1,4f9af0 <adPoeInit@@Base+0x1b8>
  4f9ae8:	0043001a 	div	zero,v0,v1
  4f9aec:	0007000d 	break	0x7
  4f9af0:	00001012 	mflo	v0
  4f9af4:	0202102b 	sltu	v0,s0,v0
  4f9af8:	1440ffeb 	bnez	v0,4f9aa8 <adPoeInit@@Base+0x170>
  4f9afc:	00101c00 	sll	v1,s0,0x10
  4f9b00:	10000003 	b	4f9b10 <adPoeInit@@Base+0x1d8>
  4f9b04:	00000000 	nop
  4f9b08:	04400140 	bltz	v0,4fa00c <adPoeInit@@Base+0x6d4>
  4f9b0c:	00000000 	nop
  4f9b10:	8f99cb64 	lw	t9,-13468(gp)
  4f9b14:	00000000 	nop
  4f9b18:	0320f809 	jalr	t9
  4f9b1c:	00000000 	nop
  4f9b20:	24030002 	li	v1,2
  4f9b24:	8fbc0010 	lw	gp,16(sp)
  4f9b28:	10430009 	beq	v0,v1,4f9b50 <adPoeInit@@Base+0x218>
  4f9b2c:	00000000 	nop
  4f9b30:	8f998ae0 	lw	t9,-29984(gp)
  4f9b34:	00000000 	nop
  4f9b38:	0320f809 	jalr	t9
  4f9b3c:	00000000 	nop
  4f9b40:	24030001 	li	v1,1
  4f9b44:	8fbc0010 	lw	gp,16(sp)
  4f9b48:	1443001d 	bne	v0,v1,4f9bc0 <adPoeInit@@Base+0x288>
  4f9b4c:	00000000 	nop
  4f9b50:	8f83baac 	lw	v1,-17748(gp)
  4f9b54:	8f828f24 	lw	v0,-28892(gp)
  4f9b58:	00000000 	nop
  4f9b5c:	ac620000 	sw	v0,0(v1)
  4f9b60:	8f82e8cc 	lw	v0,-5940(gp)
  4f9b64:	00000000 	nop
  4f9b68:	ac620004 	sw	v0,4(v1)
  4f9b6c:	8f82b56c 	lw	v0,-19092(gp)
  4f9b70:	00000000 	nop
  4f9b74:	ac620020 	sw	v0,32(v1)
  4f9b78:	8f82fe74 	lw	v0,-396(gp)
  4f9b7c:	00000000 	nop
  4f9b80:	ac620008 	sw	v0,8(v1)
  4f9b84:	8f82e3dc 	lw	v0,-7204(gp)
  4f9b88:	00000000 	nop
  4f9b8c:	ac62000c 	sw	v0,12(v1)
  4f9b90:	8f8283b4 	lw	v0,-31820(gp)
  4f9b94:	00000000 	nop
  4f9b98:	ac620010 	sw	v0,16(v1)
  4f9b9c:	8f82ef04 	lw	v0,-4348(gp)
  4f9ba0:	00000000 	nop
  4f9ba4:	ac620014 	sw	v0,20(v1)
  4f9ba8:	8f82e0b4 	lw	v0,-8012(gp)
  4f9bac:	00000000 	nop
  4f9bb0:	ac620018 	sw	v0,24(v1)
  4f9bb4:	8f82d50c 	lw	v0,-10996(gp)
  4f9bb8:	10000064 	b	4f9d4c <adPoeInit@@Base+0x414>
  4f9bbc:	ac62001c 	sw	v0,28(v1)
  4f9bc0:	8f99cb64 	lw	t9,-13468(gp)
  4f9bc4:	00000000 	nop
  4f9bc8:	0320f809 	jalr	t9
  4f9bcc:	00000000 	nop
  4f9bd0:	24030003 	li	v1,3
  4f9bd4:	8fbc0010 	lw	gp,16(sp)
  4f9bd8:	1443001d 	bne	v0,v1,4f9c50 <adPoeInit@@Base+0x318>
  4f9bdc:	00000000 	nop
  4f9be0:	8f83baac 	lw	v1,-17748(gp)
  4f9be4:	8f82c5d4 	lw	v0,-14892(gp)
  4f9be8:	00000000 	nop
  4f9bec:	ac620000 	sw	v0,0(v1)
  4f9bf0:	8f82c858 	lw	v0,-14248(gp)
  4f9bf4:	00000000 	nop
  4f9bf8:	ac620004 	sw	v0,4(v1)
  4f9bfc:	8f82e3f4 	lw	v0,-7180(gp)
  4f9c00:	00000000 	nop
  4f9c04:	ac620020 	sw	v0,32(v1)
  4f9c08:	8f82a358 	lw	v0,-23720(gp)
  4f9c0c:	00000000 	nop
  4f9c10:	ac620008 	sw	v0,8(v1)
  4f9c14:	8f82e190 	lw	v0,-7792(gp)
  4f9c18:	00000000 	nop
  4f9c1c:	ac62000c 	sw	v0,12(v1)
  4f9c20:	8f829fbc 	lw	v0,-24644(gp)
  4f9c24:	00000000 	nop
  4f9c28:	ac620010 	sw	v0,16(v1)
  4f9c2c:	8f82a108 	lw	v0,-24312(gp)
  4f9c30:	00000000 	nop
  4f9c34:	ac620014 	sw	v0,20(v1)
  4f9c38:	8f829e5c 	lw	v0,-24996(gp)
  4f9c3c:	00000000 	nop
  4f9c40:	ac620018 	sw	v0,24(v1)
  4f9c44:	8f82b784 	lw	v0,-18556(gp)
  4f9c48:	10000040 	b	4f9d4c <adPoeInit@@Base+0x414>
  4f9c4c:	ac62001c 	sw	v0,28(v1)
  4f9c50:	8f99cb64 	lw	t9,-13468(gp)
  4f9c54:	00000000 	nop
  4f9c58:	0320f809 	jalr	t9
  4f9c5c:	00000000 	nop
  4f9c60:	8fbc0010 	lw	gp,16(sp)
  4f9c64:	24030004 	li	v1,4
  4f9c68:	8f84baac 	lw	a0,-17748(gp)
  4f9c6c:	1443001c 	bne	v0,v1,4f9ce0 <adPoeInit@@Base+0x3a8>
  4f9c70:	00000000 	nop
  4f9c74:	8f82a9b8 	lw	v0,-22088(gp)
  4f9c78:	00000000 	nop
  4f9c7c:	ac820000 	sw	v0,0(a0)
  4f9c80:	8f82b638 	lw	v0,-18888(gp)
  4f9c84:	00000000 	nop
  4f9c88:	ac820004 	sw	v0,4(a0)
  4f9c8c:	8f82ebbc 	lw	v0,-5188(gp)
  4f9c90:	00000000 	nop
  4f9c94:	ac820020 	sw	v0,32(a0)
  4f9c98:	8f82ac5c 	lw	v0,-21412(gp)
  4f9c9c:	00000000 	nop
  4f9ca0:	ac820008 	sw	v0,8(a0)
  4f9ca4:	8f829090 	lw	v0,-28528(gp)
  4f9ca8:	00000000 	nop
  4f9cac:	ac82000c 	sw	v0,12(a0)
  4f9cb0:	8f829e88 	lw	v0,-24952(gp)
  4f9cb4:	00000000 	nop
  4f9cb8:	ac820010 	sw	v0,16(a0)
  4f9cbc:	8f82a1a0 	lw	v0,-24160(gp)
  4f9cc0:	00000000 	nop
  4f9cc4:	ac820014 	sw	v0,20(a0)
  4f9cc8:	8f82b950 	lw	v0,-18096(gp)
  4f9ccc:	00000000 	nop
  4f9cd0:	ac820018 	sw	v0,24(a0)
  4f9cd4:	8f82e38c 	lw	v0,-7284(gp)
  4f9cd8:	1000001c 	b	4f9d4c <adPoeInit@@Base+0x414>
  4f9cdc:	ac82001c 	sw	v0,28(a0)
  4f9ce0:	8f82e5ec 	lw	v0,-6676(gp)
  4f9ce4:	00000000 	nop
  4f9ce8:	ac820000 	sw	v0,0(a0)
  4f9cec:	8f828420 	lw	v0,-31712(gp)
  4f9cf0:	00000000 	nop
  4f9cf4:	ac820004 	sw	v0,4(a0)
  4f9cf8:	8f82ccac 	lw	v0,-13140(gp)
  4f9cfc:	00000000 	nop
  4f9d00:	ac820020 	sw	v0,32(a0)
  4f9d04:	8f82f760 	lw	v0,-2208(gp)
  4f9d08:	00000000 	nop
  4f9d0c:	ac820008 	sw	v0,8(a0)
  4f9d10:	8f82fb6c 	lw	v0,-1172(gp)
  4f9d14:	00000000 	nop
  4f9d18:	ac82000c 	sw	v0,12(a0)
  4f9d1c:	8f829b20 	lw	v0,-25824(gp)
  4f9d20:	00000000 	nop
  4f9d24:	ac820010 	sw	v0,16(a0)
  4f9d28:	8f8299f4 	lw	v0,-26124(gp)
  4f9d2c:	00000000 	nop
  4f9d30:	ac820014 	sw	v0,20(a0)
  4f9d34:	8f82f6e0 	lw	v0,-2336(gp)
  4f9d38:	00000000 	nop
  4f9d3c:	ac820018 	sw	v0,24(a0)
  4f9d40:	8f82d1e0 	lw	v0,-11808(gp)
  4f9d44:	00000000 	nop
  4f9d48:	ac82001c 	sw	v0,28(a0)
  4f9d4c:	8f90a3dc 	lw	s0,-23588(gp)
  4f9d50:	8f99f7b8 	lw	t9,-2120(gp)
  4f9d54:	24110001 	li	s1,1
  4f9d58:	0320f809 	jalr	t9
  4f9d5c:	ae110014 	sw	s1,20(s0)
  4f9d60:	8fbc0010 	lw	gp,16(sp)
  4f9d64:	ae020018 	sw	v0,24(s0)
  4f9d68:	24020004 	li	v0,4
  4f9d6c:	8f99c3c0 	lw	t9,-15424(gp)
  4f9d70:	ae020004 	sw	v0,4(s0)
  4f9d74:	ae00001c 	sw	zero,28(s0)
  4f9d78:	0320f809 	jalr	t9
  4f9d7c:	ae110008 	sw	s1,8(s0)
  4f9d80:	8fbc0010 	lw	gp,16(sp)
  4f9d84:	00000000 	nop
  4f9d88:	8f99a0fc 	lw	t9,-24324(gp)
  4f9d8c:	00000000 	nop
  4f9d90:	0320f809 	jalr	t9
  4f9d94:	ae020000 	sw	v0,0(s0)
  4f9d98:	8fbc0010 	lw	gp,16(sp)
  4f9d9c:	00000000 	nop
  4f9da0:	8f9992d4 	lw	t9,-27948(gp)
  4f9da4:	00000000 	nop
  4f9da8:	0320f809 	jalr	t9
  4f9dac:	ae02000c 	sw	v0,12(s0)
  4f9db0:	8fbc0010 	lw	gp,16(sp)
  4f9db4:	00000000 	nop
  4f9db8:	8f99cc78 	lw	t9,-13192(gp)
  4f9dbc:	00000000 	nop
  4f9dc0:	0320f809 	jalr	t9
  4f9dc4:	ae020010 	sw	v0,16(s0)
  4f9dc8:	2403009a 	li	v1,154
  4f9dcc:	8fbc0010 	lw	gp,16(sp)
  4f9dd0:	1443000a 	bne	v0,v1,4f9dfc <adPoeInit@@Base+0x4c4>
  4f9dd4:	00000000 	nop
  4f9dd8:	ae000020 	sw	zero,32(s0)
  4f9ddc:	8f82a3dc 	lw	v0,-23588(gp)
  4f9de0:	24110001 	li	s1,1
  4f9de4:	24150001 	li	s5,1
  4f9de8:	24500024 	addiu	s0,v0,36
  4f9dec:	24140002 	li	s4,2
  4f9df0:	24130385 	li	s3,901
  4f9df4:	10000003 	b	4f9e04 <adPoeInit@@Base+0x4cc>
  4f9df8:	24120031 	li	s2,49
  4f9dfc:	1000fff7 	b	4f9ddc <adPoeInit@@Base+0x4a4>
  4f9e00:	ae110020 	sw	s1,32(s0)
  4f9e04:	8f99cc78 	lw	t9,-13192(gp)
  4f9e08:	ae110000 	sw	s1,0(s0)
  4f9e0c:	ae150004 	sw	s5,4(s0)
  4f9e10:	0320f809 	jalr	t9
  4f9e14:	ae14000c 	sw	s4,12(s0)
  4f9e18:	26310001 	addiu	s1,s1,1
  4f9e1c:	ae020008 	sw	v0,8(s0)
  4f9e20:	ae00003c 	sw	zero,60(s0)
  4f9e24:	ae000010 	sw	zero,16(s0)
  4f9e28:	ae000014 	sw	zero,20(s0)
  4f9e2c:	ae000018 	sw	zero,24(s0)
  4f9e30:	ae00001c 	sw	zero,28(s0)
  4f9e34:	ae130020 	sw	s3,32(s0)
  4f9e38:	ae000024 	sw	zero,36(s0)
  4f9e3c:	8fbc0010 	lw	gp,16(sp)
  4f9e40:	1632fff0 	bne	s1,s2,4f9e04 <adPoeInit@@Base+0x4cc>
  4f9e44:	2610004c 	addiu	s0,s0,76
  4f9e48:	8f908030 	lw	s0,-32720(gp)
  4f9e4c:	8f99ce64 	lw	t9,-12700(gp)
  4f9e50:	00002821 	move	a1,zero
  4f9e54:	2610e24c 	addiu	s0,s0,-7604
  4f9e58:	02002021 	move	a0,s0
  4f9e5c:	0320f809 	jalr	t9
  4f9e60:	240603c0 	li	a2,960
  4f9e64:	8fbc0010 	lw	gp,16(sp)
  4f9e68:	0200a821 	move	s5,s0
  4f9e6c:	24130014 	li	s3,20
  4f9e70:	8f828028 	lw	v0,-32728(gp)
  4f9e74:	8f83a3dc 	lw	v1,-23588(gp)
  4f9e78:	245604ac 	addiu	s6,v0,1196
  4f9e7c:	8f828030 	lw	v0,-32720(gp)
  4f9e80:	00609021 	move	s2,v1
  4f9e84:	8c71000c 	lw	s1,12(v1)
  4f9e88:	10000028 	b	4f9f2c <adPoeInit@@Base+0x5f4>
  4f9e8c:	2454e18c 	addiu	s4,v0,-7796
  4f9e90:	8e44000c 	lw	a0,12(s2)
  4f9e94:	8f999d4c 	lw	t9,-25268(gp)
  4f9e98:	02242023 	subu	a0,s1,a0
  4f9e9c:	00930018 	mult	a0,s3
  4f9ea0:	02203021 	move	a2,s1
  4f9ea4:	00002012 	mflo	a0
  4f9ea8:	0320f809 	jalr	t9
  4f9eac:	02a42021 	addu	a0,s5,a0
  4f9eb0:	8e50000c 	lw	s0,12(s2)
  4f9eb4:	8fbc0010 	lw	gp,16(sp)
  4f9eb8:	00002821 	move	a1,zero
  4f9ebc:	02308023 	subu	s0,s1,s0
  4f9ec0:	02130018 	mult	s0,s3
  4f9ec4:	8f99b718 	lw	t9,-18664(gp)
  4f9ec8:	24060001 	li	a2,1
  4f9ecc:	00108080 	sll	s0,s0,0x2
  4f9ed0:	02148021 	addu	s0,s0,s4
  4f9ed4:	00002012 	mflo	a0
  4f9ed8:	0320f809 	jalr	t9
  4f9edc:	02a42021 	addu	a0,s5,a0
  4f9ee0:	8e43000c 	lw	v1,12(s2)
  4f9ee4:	ae020000 	sw	v0,0(s0)
  4f9ee8:	8fbc0010 	lw	gp,16(sp)
  4f9eec:	02231823 	subu	v1,s1,v1
  4f9ef0:	00031880 	sll	v1,v1,0x2
  4f9ef4:	00741821 	addu	v1,v1,s4
  4f9ef8:	8c620000 	lw	v0,0(v1)
  4f9efc:	00000000 	nop
  4f9f00:	1440000a 	bnez	v0,4f9f2c <adPoeInit@@Base+0x5f4>
  4f9f04:	26310001 	addiu	s1,s1,1
  4f9f08:	2631ffff 	addiu	s1,s1,-1
  4f9f0c:	8f848028 	lw	a0,-32728(gp)
  4f9f10:	8f99f8d4 	lw	t9,-1836(gp)
  4f9f14:	02202821 	move	a1,s1
  4f9f18:	0320f809 	jalr	t9
  4f9f1c:	248404bc 	addiu	a0,a0,1212
  4f9f20:	8fbc0010 	lw	gp,16(sp)
  4f9f24:	10000039 	b	4fa00c <adPoeInit@@Base+0x6d4>
  4f9f28:	24030007 	li	v1,7
  4f9f2c:	8e420010 	lw	v0,16(s2)
  4f9f30:	00000000 	nop
  4f9f34:	0051102a 	slt	v0,v0,s1
  4f9f38:	1040ffd5 	beqz	v0,4f9e90 <adPoeInit@@Base+0x558>
  4f9f3c:	02c02821 	move	a1,s6
  4f9f40:	8f848030 	lw	a0,-32720(gp)
  4f9f44:	8f99ce64 	lw	t9,-12700(gp)
  4f9f48:	00002821 	move	a1,zero
  4f9f4c:	2484e15c 	addiu	a0,a0,-7844
  4f9f50:	0320f809 	jalr	t9
  4f9f54:	24060030 	li	a2,48
  4f9f58:	8fbc0010 	lw	gp,16(sp)
  4f9f5c:	00000000 	nop
  4f9f60:	8f99c608 	lw	t9,-14840(gp)
  4f9f64:	00000000 	nop
  4f9f68:	0320f809 	jalr	t9
  4f9f6c:	00000000 	nop
  4f9f70:	8fbc0010 	lw	gp,16(sp)
  4f9f74:	04400025 	bltz	v0,4fa00c <adPoeInit@@Base+0x6d4>
  4f9f78:	00401821 	move	v1,v0
  4f9f7c:	8f99a438 	lw	t9,-23496(gp)
  4f9f80:	00000000 	nop
  4f9f84:	0320f809 	jalr	t9
  4f9f88:	00000000 	nop
  4f9f8c:	8fbc0010 	lw	gp,16(sp)
  4f9f90:	0440001e 	bltz	v0,4fa00c <adPoeInit@@Base+0x6d4>
  4f9f94:	00401821 	move	v1,v0
  4f9f98:	8f99bd88 	lw	t9,-17016(gp)
  4f9f9c:	00000000 	nop
  4f9fa0:	0320f809 	jalr	t9
  4f9fa4:	00000000 	nop
  4f9fa8:	8fbc0010 	lw	gp,16(sp)
  4f9fac:	04400017 	bltz	v0,4fa00c <adPoeInit@@Base+0x6d4>
  4f9fb0:	00401821 	move	v1,v0
  4f9fb4:	8f82baac 	lw	v0,-17748(gp)
  4f9fb8:	00000000 	nop
  4f9fbc:	8c590000 	lw	t9,0(v0)
  4f9fc0:	00000000 	nop
  4f9fc4:	13200006 	beqz	t9,4f9fe0 <adPoeInit@@Base+0x6a8>
  4f9fc8:	00000000 	nop
  4f9fcc:	0320f809 	jalr	t9
  4f9fd0:	00000000 	nop
  4f9fd4:	8fbc0010 	lw	gp,16(sp)
  4f9fd8:	0440000c 	bltz	v0,4fa00c <adPoeInit@@Base+0x6d4>
  4f9fdc:	00401821 	move	v1,v0
  4f9fe0:	8f99e66c 	lw	t9,-6548(gp)
  4f9fe4:	00000000 	nop
  4f9fe8:	0320f809 	jalr	t9
  4f9fec:	00000000 	nop
  4f9ff0:	00401821 	move	v1,v0
  4f9ff4:	28420001 	slti	v0,v0,1
  4f9ff8:	00021023 	negu	v0,v0
  4f9ffc:	8fbc0010 	lw	gp,16(sp)
  4fa000:	10000002 	b	4fa00c <adPoeInit@@Base+0x6d4>
  4fa004:	00621824 	and	v1,v1,v0
  4fa008:	24030007 	li	v1,7
  4fa00c:	8fbf0034 	lw	ra,52(sp)
  4fa010:	8fb60030 	lw	s6,48(sp)
  4fa014:	8fb5002c 	lw	s5,44(sp)
  4fa018:	8fb40028 	lw	s4,40(sp)
  4fa01c:	8fb30024 	lw	s3,36(sp)
  4fa020:	8fb20020 	lw	s2,32(sp)
  4fa024:	8fb1001c 	lw	s1,28(sp)
  4fa028:	8fb00018 	lw	s0,24(sp)
  4fa02c:	00601021 	move	v0,v1
  4fa030:	03e00008 	jr	ra
  4fa034:	27bd0038 	addiu	sp,sp,56

004fa038 <adPoePortFlagSet@@Base>:
  4fa038:	3c1c00a2 	lui	gp,0xa2
  4fa03c:	279c78d8 	addiu	gp,gp,30936
  4fa040:	0399e021 	addu	gp,gp,t9
  4fa044:	27bdffc8 	addiu	sp,sp,-56
  4fa048:	afbf0034 	sw	ra,52(sp)
  4fa04c:	afb50030 	sw	s5,48(sp)
  4fa050:	afb4002c 	sw	s4,44(sp)
  4fa054:	afb30028 	sw	s3,40(sp)
  4fa058:	afb20024 	sw	s2,36(sp)
  4fa05c:	afb10020 	sw	s1,32(sp)
  4fa060:	afb0001c 	sw	s0,28(sp)
  4fa064:	afbc0010 	sw	gp,16(sp)
  4fa068:	2ca2000b 	sltiu	v0,a1,11
  4fa06c:	00a0a021 	move	s4,a1
  4fa070:	00809021 	move	s2,a0
  4fa074:	10400025 	beqz	v0,4fa10c <adPoePortFlagSet@@Base+0xd4>
  4fa078:	00c0a821 	move	s5,a2
  4fa07c:	8f93a3dc 	lw	s3,-23588(gp)
  4fa080:	00000000 	nop
  4fa084:	8e62000c 	lw	v0,12(s3)
  4fa088:	00000000 	nop
  4fa08c:	0082102a 	slt	v0,a0,v0
  4fa090:	1440001f 	bnez	v0,4fa110 <adPoePortFlagSet@@Base+0xd8>
  4fa094:	24020001 	li	v0,1
  4fa098:	8e620010 	lw	v0,16(s3)
  4fa09c:	00000000 	nop
  4fa0a0:	0044102a 	slt	v0,v0,a0
  4fa0a4:	14400019 	bnez	v0,4fa10c <adPoePortFlagSet@@Base+0xd4>
  4fa0a8:	2405ffff 	li	a1,-1
  4fa0ac:	8f908030 	lw	s0,-32720(gp)
  4fa0b0:	8f918028 	lw	s1,-32728(gp)
  4fa0b4:	8f99fb20 	lw	t9,-1248(gp)
  4fa0b8:	8e04e13c 	lw	a0,-7876(s0)
  4fa0bc:	262604e4 	addiu	a2,s1,1252
  4fa0c0:	0320f809 	jalr	t9
  4fa0c4:	24071d7d 	li	a3,7549
  4fa0c8:	24020030 	li	v0,48
  4fa0cc:	02820018 	mult	s4,v0
  4fa0d0:	8fbc0010 	lw	gp,16(sp)
  4fa0d4:	8e04e13c 	lw	a0,-7876(s0)
  4fa0d8:	262504e4 	addiu	a1,s1,1252
  4fa0dc:	8f99cb7c 	lw	t9,-13444(gp)
  4fa0e0:	24061d81 	li	a2,7553
  4fa0e4:	00001012 	mflo	v0
  4fa0e8:	00521021 	addu	v0,v0,s2
  4fa0ec:	24420397 	addiu	v0,v0,919
  4fa0f0:	00021080 	sll	v0,v0,0x2
  4fa0f4:	02621021 	addu	v0,s3,v0
  4fa0f8:	0320f809 	jalr	t9
  4fa0fc:	ac550004 	sw	s5,4(v0)
  4fa100:	8fbc0010 	lw	gp,16(sp)
  4fa104:	10000002 	b	4fa110 <adPoePortFlagSet@@Base+0xd8>
  4fa108:	00001021 	move	v0,zero
  4fa10c:	24020001 	li	v0,1
  4fa110:	8fbf0034 	lw	ra,52(sp)
  4fa114:	8fb50030 	lw	s5,48(sp)
  4fa118:	8fb4002c 	lw	s4,44(sp)
  4fa11c:	8fb30028 	lw	s3,40(sp)
  4fa120:	8fb20024 	lw	s2,36(sp)
  4fa124:	8fb10020 	lw	s1,32(sp)
  4fa128:	8fb0001c 	lw	s0,28(sp)
  4fa12c:	03e00008 	jr	ra
  4fa130:	27bd0038 	addiu	sp,sp,56

004fa134 <adPoePortFlagGet@@Base>:
  4fa134:	3c1c00a2 	lui	gp,0xa2
  4fa138:	279c77dc 	addiu	gp,gp,30684
  4fa13c:	0399e021 	addu	gp,gp,t9
  4fa140:	27bdffc8 	addiu	sp,sp,-56
  4fa144:	afbf0034 	sw	ra,52(sp)
  4fa148:	afb50030 	sw	s5,48(sp)
  4fa14c:	afb4002c 	sw	s4,44(sp)
  4fa150:	afb30028 	sw	s3,40(sp)
  4fa154:	afb20024 	sw	s2,36(sp)
  4fa158:	afb10020 	sw	s1,32(sp)
  4fa15c:	afb0001c 	sw	s0,28(sp)
  4fa160:	afbc0010 	sw	gp,16(sp)
  4fa164:	2ca2000b 	sltiu	v0,a1,11
  4fa168:	00a0a021 	move	s4,a1
  4fa16c:	00809021 	move	s2,a0
  4fa170:	10400028 	beqz	v0,4fa214 <adPoePortFlagGet@@Base+0xe0>
  4fa174:	00c0a821 	move	s5,a2
  4fa178:	8f93a3dc 	lw	s3,-23588(gp)
  4fa17c:	00000000 	nop
  4fa180:	8e62000c 	lw	v0,12(s3)
  4fa184:	00000000 	nop
  4fa188:	0082102a 	slt	v0,a0,v0
  4fa18c:	14400022 	bnez	v0,4fa218 <adPoePortFlagGet@@Base+0xe4>
  4fa190:	24020001 	li	v0,1
  4fa194:	8e620010 	lw	v0,16(s3)
  4fa198:	00000000 	nop
  4fa19c:	0044102a 	slt	v0,v0,a0
  4fa1a0:	1440001c 	bnez	v0,4fa214 <adPoePortFlagGet@@Base+0xe0>
  4fa1a4:	00000000 	nop
  4fa1a8:	10c0001a 	beqz	a2,4fa214 <adPoePortFlagGet@@Base+0xe0>
  4fa1ac:	2405ffff 	li	a1,-1
  4fa1b0:	8f908030 	lw	s0,-32720(gp)
  4fa1b4:	8f918028 	lw	s1,-32728(gp)
  4fa1b8:	8f99fb20 	lw	t9,-1248(gp)
  4fa1bc:	8e04e13c 	lw	a0,-7876(s0)
  4fa1c0:	262604e4 	addiu	a2,s1,1252
  4fa1c4:	0320f809 	jalr	t9
  4fa1c8:	24071d55 	li	a3,7509
  4fa1cc:	24020030 	li	v0,48
  4fa1d0:	02820018 	mult	s4,v0
  4fa1d4:	8fbc0010 	lw	gp,16(sp)
  4fa1d8:	8e04e13c 	lw	a0,-7876(s0)
  4fa1dc:	262504e4 	addiu	a1,s1,1252
  4fa1e0:	8f99cb7c 	lw	t9,-13444(gp)
  4fa1e4:	24061d59 	li	a2,7513
  4fa1e8:	00001012 	mflo	v0
  4fa1ec:	00521021 	addu	v0,v0,s2
  4fa1f0:	24420397 	addiu	v0,v0,919
  4fa1f4:	00021080 	sll	v0,v0,0x2
  4fa1f8:	02621021 	addu	v0,s3,v0
  4fa1fc:	8c420004 	lw	v0,4(v0)
  4fa200:	0320f809 	jalr	t9
  4fa204:	aea20000 	sw	v0,0(s5)
  4fa208:	8fbc0010 	lw	gp,16(sp)
  4fa20c:	10000002 	b	4fa218 <adPoePortFlagGet@@Base+0xe4>
  4fa210:	00001021 	move	v0,zero
  4fa214:	24020001 	li	v0,1
  4fa218:	8fbf0034 	lw	ra,52(sp)
  4fa21c:	8fb50030 	lw	s5,48(sp)
  4fa220:	8fb4002c 	lw	s4,44(sp)
  4fa224:	8fb30028 	lw	s3,40(sp)
  4fa228:	8fb20024 	lw	s2,36(sp)
  4fa22c:	8fb10020 	lw	s1,32(sp)
  4fa230:	8fb0001c 	lw	s0,28(sp)
  4fa234:	03e00008 	jr	ra
  4fa238:	27bd0038 	addiu	sp,sp,56

004fa23c <adPoeSysFlagSet@@Base>:
  4fa23c:	3c1c00a2 	lui	gp,0xa2
  4fa240:	279c76d4 	addiu	gp,gp,30420
  4fa244:	0399e021 	addu	gp,gp,t9
  4fa248:	27bdffd0 	addiu	sp,sp,-48
  4fa24c:	afbf002c 	sw	ra,44(sp)
  4fa250:	afb30028 	sw	s3,40(sp)
  4fa254:	afb20024 	sw	s2,36(sp)
  4fa258:	afb10020 	sw	s1,32(sp)
  4fa25c:	afb0001c 	sw	s0,28(sp)
  4fa260:	afbc0010 	sw	gp,16(sp)
  4fa264:	2c820002 	sltiu	v0,a0,2
  4fa268:	00809021 	move	s2,a0
  4fa26c:	00a09821 	move	s3,a1
  4fa270:	10400016 	beqz	v0,4fa2cc <adPoeSysFlagSet@@Base+0x90>
  4fa274:	24030001 	li	v1,1
  4fa278:	8f908030 	lw	s0,-32720(gp)
  4fa27c:	8f918028 	lw	s1,-32728(gp)
  4fa280:	8f99fb20 	lw	t9,-1248(gp)
  4fa284:	8e04e13c 	lw	a0,-7876(s0)
  4fa288:	2405ffff 	li	a1,-1
  4fa28c:	262604e4 	addiu	a2,s1,1252
  4fa290:	0320f809 	jalr	t9
  4fa294:	24071d2a 	li	a3,7466
  4fa298:	8fbc0010 	lw	gp,16(sp)
  4fa29c:	264305a8 	addiu	v1,s2,1448
  4fa2a0:	00031880 	sll	v1,v1,0x2
  4fa2a4:	8f82a3dc 	lw	v0,-23588(gp)
  4fa2a8:	8f99cb7c 	lw	t9,-13444(gp)
  4fa2ac:	8e04e13c 	lw	a0,-7876(s0)
  4fa2b0:	00431021 	addu	v0,v0,v1
  4fa2b4:	ac530004 	sw	s3,4(v0)
  4fa2b8:	262504e4 	addiu	a1,s1,1252
  4fa2bc:	0320f809 	jalr	t9
  4fa2c0:	24061d2e 	li	a2,7470
  4fa2c4:	8fbc0010 	lw	gp,16(sp)
  4fa2c8:	00001821 	move	v1,zero
  4fa2cc:	8fbf002c 	lw	ra,44(sp)
  4fa2d0:	8fb30028 	lw	s3,40(sp)
  4fa2d4:	8fb20024 	lw	s2,36(sp)
  4fa2d8:	8fb10020 	lw	s1,32(sp)
  4fa2dc:	8fb0001c 	lw	s0,28(sp)
  4fa2e0:	00601021 	move	v0,v1
  4fa2e4:	03e00008 	jr	ra
  4fa2e8:	27bd0030 	addiu	sp,sp,48

004fa2ec <adPoeSysFlagGet@@Base>:
  4fa2ec:	3c1c00a2 	lui	gp,0xa2
  4fa2f0:	279c7624 	addiu	gp,gp,30244
  4fa2f4:	0399e021 	addu	gp,gp,t9
  4fa2f8:	27bdffd0 	addiu	sp,sp,-48
  4fa2fc:	afbf002c 	sw	ra,44(sp)
  4fa300:	afb30028 	sw	s3,40(sp)
  4fa304:	afb20024 	sw	s2,36(sp)
  4fa308:	afb10020 	sw	s1,32(sp)
  4fa30c:	afb0001c 	sw	s0,28(sp)
  4fa310:	afbc0010 	sw	gp,16(sp)
  4fa314:	2c820002 	sltiu	v0,a0,2
  4fa318:	00809021 	move	s2,a0
  4fa31c:	10400019 	beqz	v0,4fa384 <adPoeSysFlagGet@@Base+0x98>
  4fa320:	00a09821 	move	s3,a1
  4fa324:	10a00017 	beqz	a1,4fa384 <adPoeSysFlagGet@@Base+0x98>
  4fa328:	2405ffff 	li	a1,-1
  4fa32c:	8f908030 	lw	s0,-32720(gp)
  4fa330:	8f918028 	lw	s1,-32728(gp)
  4fa334:	8f99fb20 	lw	t9,-1248(gp)
  4fa338:	8e04e13c 	lw	a0,-7876(s0)
  4fa33c:	262604e4 	addiu	a2,s1,1252
  4fa340:	0320f809 	jalr	t9
  4fa344:	24071d09 	li	a3,7433
  4fa348:	8fbc0010 	lw	gp,16(sp)
  4fa34c:	264305a8 	addiu	v1,s2,1448
  4fa350:	00031880 	sll	v1,v1,0x2
  4fa354:	8f82a3dc 	lw	v0,-23588(gp)
  4fa358:	8f99cb7c 	lw	t9,-13444(gp)
  4fa35c:	8e04e13c 	lw	a0,-7876(s0)
  4fa360:	00431021 	addu	v0,v0,v1
  4fa364:	8c420004 	lw	v0,4(v0)
  4fa368:	262504e4 	addiu	a1,s1,1252
  4fa36c:	24061d0d 	li	a2,7437
  4fa370:	0320f809 	jalr	t9
  4fa374:	ae620000 	sw	v0,0(s3)
  4fa378:	8fbc0010 	lw	gp,16(sp)
  4fa37c:	10000002 	b	4fa388 <adPoeSysFlagGet@@Base+0x9c>
  4fa380:	00001021 	move	v0,zero
  4fa384:	24020001 	li	v0,1
  4fa388:	8fbf002c 	lw	ra,44(sp)
  4fa38c:	8fb30028 	lw	s3,40(sp)
  4fa390:	8fb20024 	lw	s2,36(sp)
  4fa394:	8fb10020 	lw	s1,32(sp)
  4fa398:	8fb0001c 	lw	s0,28(sp)
  4fa39c:	03e00008 	jr	ra
  4fa3a0:	27bd0030 	addiu	sp,sp,48

004fa3a4 <adPoeFlagManage@@Base>:
  4fa3a4:	3c1c00a2 	lui	gp,0xa2
  4fa3a8:	279c756c 	addiu	gp,gp,30060
  4fa3ac:	0399e021 	addu	gp,gp,t9
  4fa3b0:	27bdffc0 	addiu	sp,sp,-64
  4fa3b4:	afbf003c 	sw	ra,60(sp)
  4fa3b8:	afbe0038 	sw	s8,56(sp)
  4fa3bc:	afb70034 	sw	s7,52(sp)
  4fa3c0:	afb60030 	sw	s6,48(sp)
  4fa3c4:	afb5002c 	sw	s5,44(sp)
  4fa3c8:	afb40028 	sw	s4,40(sp)
  4fa3cc:	afb30024 	sw	s3,36(sp)
  4fa3d0:	afb20020 	sw	s2,32(sp)
  4fa3d4:	afb1001c 	sw	s1,28(sp)
  4fa3d8:	afb00018 	sw	s0,24(sp)
  4fa3dc:	afbc0010 	sw	gp,16(sp)
  4fa3e0:	8f828030 	lw	v0,-32720(gp)
  4fa3e4:	8f868028 	lw	a2,-32728(gp)
  4fa3e8:	8f99fb20 	lw	t9,-1248(gp)
  4fa3ec:	8c44e13c 	lw	a0,-7876(v0)
  4fa3f0:	24c604e4 	addiu	a2,a2,1252
  4fa3f4:	2405ffff 	li	a1,-1
  4fa3f8:	8f96a3dc 	lw	s6,-23588(gp)
  4fa3fc:	0320f809 	jalr	t9
  4fa400:	24071cc4 	li	a3,7364
  4fa404:	8fbc0010 	lw	gp,16(sp)
  4fa408:	00009821 	move	s3,zero
  4fa40c:	241e0001 	li	s8,1
  4fa410:	2417000b 	li	s7,11
  4fa414:	24020030 	li	v0,48
  4fa418:	02620018 	mult	s3,v0
  4fa41c:	8ed0000c 	lw	s0,12(s6)
  4fa420:	00000000 	nop
  4fa424:	26020547 	addiu	v0,s0,1351
  4fa428:	00021080 	sll	v0,v0,0x2
  4fa42c:	02c21021 	addu	v0,s6,v0
  4fa430:	2603ffff 	addiu	v1,s0,-1
  4fa434:	24510004 	addiu	s1,v0,4
  4fa438:	2402004c 	li	v0,76
  4fa43c:	00002812 	mflo	a1
	...
  4fa448:	00620018 	mult	v1,v0
  4fa44c:	00651821 	addu	v1,v1,a1
  4fa450:	24630398 	addiu	v1,v1,920
  4fa454:	00031880 	sll	v1,v1,0x2
  4fa458:	02c31821 	addu	v1,s6,v1
  4fa45c:	24720004 	addiu	s2,v1,4
  4fa460:	00002012 	mflo	a0
  4fa464:	02c41021 	addu	v0,s6,a0
  4fa468:	24550034 	addiu	s5,v0,52
  4fa46c:	10000035 	b	4fa544 <adPoeFlagManage@@Base+0x1a0>
  4fa470:	0080a021 	move	s4,a0
  4fa474:	8e420000 	lw	v0,0(s2)
  4fa478:	00000000 	nop
  4fa47c:	1840002c 	blez	v0,4fa530 <adPoeFlagManage@@Base+0x18c>
  4fa480:	2442ffff 	addiu	v0,v0,-1
  4fa484:	24030007 	li	v1,7
  4fa488:	1663001d 	bne	s3,v1,4fa500 <adPoeFlagManage@@Base+0x15c>
  4fa48c:	ae420000 	sw	v0,0(s2)
  4fa490:	14400027 	bnez	v0,4fa530 <adPoeFlagManage@@Base+0x18c>
  4fa494:	00000000 	nop
  4fa498:	8ec2000c 	lw	v0,12(s6)
  4fa49c:	00000000 	nop
  4fa4a0:	0202102a 	slt	v0,s0,v0
  4fa4a4:	14400022 	bnez	v0,4fa530 <adPoeFlagManage@@Base+0x18c>
  4fa4a8:	00000000 	nop
  4fa4ac:	8ea20000 	lw	v0,0(s5)
  4fa4b0:	8e24fdc0 	lw	a0,-576(s1)
  4fa4b4:	8e23ff40 	lw	v1,-192(s1)
  4fa4b8:	1440001d 	bnez	v0,4fa530 <adPoeFlagManage@@Base+0x18c>
  4fa4bc:	00000000 	nop
  4fa4c0:	8f85a3dc 	lw	a1,-23588(gp)
  4fa4c4:	00000000 	nop
  4fa4c8:	24a50024 	addiu	a1,a1,36
  4fa4cc:	00b41021 	addu	v0,a1,s4
  4fa4d0:	8c420004 	lw	v0,4(v0)
  4fa4d4:	00000000 	nop
  4fa4d8:	145e0015 	bne	v0,s8,4fa530 <adPoeFlagManage@@Base+0x18c>
  4fa4dc:	00641025 	or	v0,v1,a0
  4fa4e0:	14400013 	bnez	v0,4fa530 <adPoeFlagManage@@Base+0x18c>
  4fa4e4:	00000000 	nop
  4fa4e8:	8f9986c0 	lw	t9,-31040(gp)
  4fa4ec:	02002021 	move	a0,s0
  4fa4f0:	0320f809 	jalr	t9
  4fa4f4:	24050001 	li	a1,1
  4fa4f8:	1000000c 	b	4fa52c <adPoeFlagManage@@Base+0x188>
  4fa4fc:	00000000 	nop
  4fa500:	24020009 	li	v0,9
  4fa504:	1662000a 	bne	s3,v0,4fa530 <adPoeFlagManage@@Base+0x18c>
  4fa508:	00000000 	nop
  4fa50c:	8e220000 	lw	v0,0(s1)
  4fa510:	00000000 	nop
  4fa514:	14400006 	bnez	v0,4fa530 <adPoeFlagManage@@Base+0x18c>
  4fa518:	00000000 	nop
  4fa51c:	8f998638 	lw	t9,-31176(gp)
  4fa520:	00000000 	nop
  4fa524:	0320f809 	jalr	t9
  4fa528:	02002021 	move	a0,s0
  4fa52c:	8fbc0010 	lw	gp,16(sp)
  4fa530:	26100001 	addiu	s0,s0,1
  4fa534:	26520004 	addiu	s2,s2,4
  4fa538:	26310004 	addiu	s1,s1,4
  4fa53c:	26b5004c 	addiu	s5,s5,76
  4fa540:	2694004c 	addiu	s4,s4,76
  4fa544:	8ec20010 	lw	v0,16(s6)
  4fa548:	8f83a3dc 	lw	v1,-23588(gp)
  4fa54c:	0050102a 	slt	v0,v0,s0
  4fa550:	1040ffc8 	beqz	v0,4fa474 <adPoeFlagManage@@Base+0xd0>
  4fa554:	00000000 	nop
  4fa558:	26730001 	addiu	s3,s3,1
  4fa55c:	1677ffae 	bne	s3,s7,4fa418 <adPoeFlagManage@@Base+0x74>
  4fa560:	24020030 	li	v0,48
  4fa564:	8c6216a4 	lw	v0,5796(v1)
  4fa568:	00000000 	nop
  4fa56c:	18400004 	blez	v0,4fa580 <adPoeFlagManage@@Base+0x1dc>
  4fa570:	2442ffff 	addiu	v0,v0,-1
  4fa574:	ac6216a4 	sw	v0,5796(v1)
  4fa578:	8f83a3dc 	lw	v1,-23588(gp)
  4fa57c:	00000000 	nop
  4fa580:	8c6216a8 	lw	v0,5800(v1)
  4fa584:	00000000 	nop
  4fa588:	18400002 	blez	v0,4fa594 <adPoeFlagManage@@Base+0x1f0>
  4fa58c:	2442ffff 	addiu	v0,v0,-1
  4fa590:	ac6216a8 	sw	v0,5800(v1)
  4fa594:	8f828030 	lw	v0,-32720(gp)
  4fa598:	8f858028 	lw	a1,-32728(gp)
  4fa59c:	8f99cb7c 	lw	t9,-13444(gp)
  4fa5a0:	8c44e13c 	lw	a0,-7876(v0)
  4fa5a4:	8fbf003c 	lw	ra,60(sp)
  4fa5a8:	8fbe0038 	lw	s8,56(sp)
  4fa5ac:	8fb70034 	lw	s7,52(sp)
  4fa5b0:	8fb60030 	lw	s6,48(sp)
  4fa5b4:	8fb5002c 	lw	s5,44(sp)
  4fa5b8:	8fb40028 	lw	s4,40(sp)
  4fa5bc:	8fb30024 	lw	s3,36(sp)
  4fa5c0:	8fb20020 	lw	s2,32(sp)
  4fa5c4:	8fb1001c 	lw	s1,28(sp)
  4fa5c8:	8fb00018 	lw	s0,24(sp)
  4fa5cc:	24a504e4 	addiu	a1,a1,1252
  4fa5d0:	24061ce7 	li	a2,7399
  4fa5d4:	03200008 	jr	t9
  4fa5d8:	27bd0040 	addiu	sp,sp,64

004fa5dc <adPoeManageCheck@@Base>:
  4fa5dc:	3c1c00a2 	lui	gp,0xa2
  4fa5e0:	279c7334 	addiu	gp,gp,29492
  4fa5e4:	0399e021 	addu	gp,gp,t9
  4fa5e8:	27bdffd0 	addiu	sp,sp,-48
  4fa5ec:	afbf002c 	sw	ra,44(sp)
  4fa5f0:	afb40028 	sw	s4,40(sp)
  4fa5f4:	afb30024 	sw	s3,36(sp)
  4fa5f8:	afb20020 	sw	s2,32(sp)
  4fa5fc:	afb1001c 	sw	s1,28(sp)
  4fa600:	afb00018 	sw	s0,24(sp)
  4fa604:	afbc0010 	sw	gp,16(sp)
  4fa608:	8f91a3dc 	lw	s1,-23588(gp)
  4fa60c:	00808021 	move	s0,a0
  4fa610:	8e22000c 	lw	v0,12(s1)
  4fa614:	00000000 	nop
  4fa618:	0082102a 	slt	v0,a0,v0
  4fa61c:	1440003e 	bnez	v0,4fa718 <adPoeManageCheck@@Base+0x13c>
  4fa620:	00a0a021 	move	s4,a1
  4fa624:	8e220010 	lw	v0,16(s1)
  4fa628:	00000000 	nop
  4fa62c:	0044102a 	slt	v0,v0,a0
  4fa630:	1440003a 	bnez	v0,4fa71c <adPoeManageCheck@@Base+0x140>
  4fa634:	24020001 	li	v0,1
  4fa638:	8f928030 	lw	s2,-32720(gp)
  4fa63c:	8f938028 	lw	s3,-32728(gp)
  4fa640:	8f99fb20 	lw	t9,-1248(gp)
  4fa644:	8e44e13c 	lw	a0,-7876(s2)
  4fa648:	2405ffff 	li	a1,-1
  4fa64c:	266604e4 	addiu	a2,s3,1252
  4fa650:	0320f809 	jalr	t9
  4fa654:	24071afb 	li	a3,6907
  4fa658:	2603ffff 	addiu	v1,s0,-1
  4fa65c:	2402004c 	li	v0,76
  4fa660:	00620018 	mult	v1,v0
  4fa664:	26030517 	addiu	v1,s0,1303
  4fa668:	00031880 	sll	v1,v1,0x2
  4fa66c:	02231821 	addu	v1,s1,v1
  4fa670:	260204b7 	addiu	v0,s0,1207
  4fa674:	00021080 	sll	v0,v0,0x2
  4fa678:	8c640004 	lw	a0,4(v1)
  4fa67c:	02221021 	addu	v0,s1,v0
  4fa680:	8c470004 	lw	a3,4(v0)
  4fa684:	24020001 	li	v0,1
  4fa688:	8fbc0010 	lw	gp,16(sp)
  4fa68c:	00003012 	mflo	a2
  4fa690:	02262821 	addu	a1,s1,a2
  4fa694:	8ca30034 	lw	v1,52(a1)
  4fa698:	00000000 	nop
  4fa69c:	14620014 	bne	v1,v0,4fa6f0 <adPoeManageCheck@@Base+0x114>
  4fa6a0:	00000000 	nop
  4fa6a4:	8ca20040 	lw	v0,64(a1)
  4fa6a8:	00000000 	nop
  4fa6ac:	10400010 	beqz	v0,4fa6f0 <adPoeManageCheck@@Base+0x114>
  4fa6b0:	00000000 	nop
  4fa6b4:	8ca20030 	lw	v0,48(a1)
  4fa6b8:	00000000 	nop
  4fa6bc:	0054102b 	sltu	v0,v0,s4
  4fa6c0:	1440000b 	bnez	v0,4fa6f0 <adPoeManageCheck@@Base+0x114>
  4fa6c4:	00000000 	nop
  4fa6c8:	00871025 	or	v0,a0,a3
  4fa6cc:	14400008 	bnez	v0,4fa6f0 <adPoeManageCheck@@Base+0x114>
  4fa6d0:	266504e4 	addiu	a1,s3,1252
  4fa6d4:	8f99cb7c 	lw	t9,-13444(gp)
  4fa6d8:	8e44e13c 	lw	a0,-7876(s2)
  4fa6dc:	0320f809 	jalr	t9
  4fa6e0:	24061b08 	li	a2,6920
  4fa6e4:	8fbc0010 	lw	gp,16(sp)
  4fa6e8:	1000000c 	b	4fa71c <adPoeManageCheck@@Base+0x140>
  4fa6ec:	24020001 	li	v0,1
  4fa6f0:	8f828030 	lw	v0,-32720(gp)
  4fa6f4:	8f858028 	lw	a1,-32728(gp)
  4fa6f8:	8f99cb7c 	lw	t9,-13444(gp)
  4fa6fc:	8c44e13c 	lw	a0,-7876(v0)
  4fa700:	24a504e4 	addiu	a1,a1,1252
  4fa704:	0320f809 	jalr	t9
  4fa708:	24061b0c 	li	a2,6924
  4fa70c:	8fbc0010 	lw	gp,16(sp)
  4fa710:	10000002 	b	4fa71c <adPoeManageCheck@@Base+0x140>
  4fa714:	00001021 	move	v0,zero
  4fa718:	24020001 	li	v0,1
  4fa71c:	8fbf002c 	lw	ra,44(sp)
  4fa720:	8fb40028 	lw	s4,40(sp)
  4fa724:	8fb30024 	lw	s3,36(sp)
  4fa728:	8fb20020 	lw	s2,32(sp)
  4fa72c:	8fb1001c 	lw	s1,28(sp)
  4fa730:	8fb00018 	lw	s0,24(sp)
  4fa734:	03e00008 	jr	ra
  4fa738:	27bd0030 	addiu	sp,sp,48
  4fa73c:	3c1c00a2 	lui	gp,0xa2
  4fa740:	279c71d4 	addiu	gp,gp,29140
  4fa744:	0399e021 	addu	gp,gp,t9
  4fa748:	27bdffd8 	addiu	sp,sp,-40
  4fa74c:	afbf0024 	sw	ra,36(sp)
  4fa750:	afb20020 	sw	s2,32(sp)
  4fa754:	afb1001c 	sw	s1,28(sp)
  4fa758:	afb00018 	sw	s0,24(sp)
  4fa75c:	afbc0010 	sw	gp,16(sp)
  4fa760:	8f918030 	lw	s1,-32720(gp)
  4fa764:	8f928028 	lw	s2,-32728(gp)
  4fa768:	8f99fb20 	lw	t9,-1248(gp)
  4fa76c:	00808021 	move	s0,a0
  4fa770:	8e24e13c 	lw	a0,-7876(s1)
  4fa774:	264604e4 	addiu	a2,s2,1252
  4fa778:	2405ffff 	li	a1,-1
  4fa77c:	0320f809 	jalr	t9
  4fa780:	240715ac 	li	a3,5548
  4fa784:	2610ffff 	addiu	s0,s0,-1
  4fa788:	2402004c 	li	v0,76
  4fa78c:	02020018 	mult	s0,v0
  4fa790:	8fbc0010 	lw	gp,16(sp)
  4fa794:	3c027fff 	lui	v0,0x7fff
  4fa798:	3442ffff 	ori	v0,v0,0xffff
  4fa79c:	8f85a3dc 	lw	a1,-23588(gp)
  4fa7a0:	8e24e13c 	lw	a0,-7876(s1)
  4fa7a4:	8f99cb7c 	lw	t9,-13444(gp)
  4fa7a8:	240615c6 	li	a2,5574
  4fa7ac:	00008012 	mflo	s0
  4fa7b0:	00b02821 	addu	a1,a1,s0
  4fa7b4:	8ca30050 	lw	v1,80(a1)
  4fa7b8:	aca00034 	sw	zero,52(a1)
  4fa7bc:	aca00038 	sw	zero,56(a1)
  4fa7c0:	00621824 	and	v1,v1,v0
  4fa7c4:	3c02bfff 	lui	v0,0xbfff
  4fa7c8:	3442ffff 	ori	v0,v0,0xffff
  4fa7cc:	00621824 	and	v1,v1,v0
  4fa7d0:	3c02dfff 	lui	v0,0xdfff
  4fa7d4:	3442ffff 	ori	v0,v0,0xffff
  4fa7d8:	00621824 	and	v1,v1,v0
  4fa7dc:	3c02efff 	lui	v0,0xefff
  4fa7e0:	3442ffff 	ori	v0,v0,0xffff
  4fa7e4:	00621824 	and	v1,v1,v0
  4fa7e8:	3c02f7ff 	lui	v0,0xf7ff
  4fa7ec:	3442ffff 	ori	v0,v0,0xffff
  4fa7f0:	00621824 	and	v1,v1,v0
  4fa7f4:	3c02fbff 	lui	v0,0xfbff
  4fa7f8:	3442ffff 	ori	v0,v0,0xffff
  4fa7fc:	00621824 	and	v1,v1,v0
  4fa800:	3c02fdff 	lui	v0,0xfdff
  4fa804:	3442ffff 	ori	v0,v0,0xffff
  4fa808:	00621824 	and	v1,v1,v0
  4fa80c:	3c02feff 	lui	v0,0xfeff
  4fa810:	3442ffff 	ori	v0,v0,0xffff
  4fa814:	00621824 	and	v1,v1,v0
  4fa818:	3c02ff7f 	lui	v0,0xff7f
  4fa81c:	3442ffff 	ori	v0,v0,0xffff
  4fa820:	00621824 	and	v1,v1,v0
  4fa824:	3c02ffbf 	lui	v0,0xffbf
  4fa828:	3442ffff 	ori	v0,v0,0xffff
  4fa82c:	00621824 	and	v1,v1,v0
  4fa830:	3c02ffdf 	lui	v0,0xffdf
  4fa834:	3442ffff 	ori	v0,v0,0xffff
  4fa838:	00621824 	and	v1,v1,v0
  4fa83c:	3c02ffef 	lui	v0,0xffef
  4fa840:	3442ffff 	ori	v0,v0,0xffff
  4fa844:	00621824 	and	v1,v1,v0
  4fa848:	3c02fff7 	lui	v0,0xfff7
  4fa84c:	3442ffff 	ori	v0,v0,0xffff
  4fa850:	00621824 	and	v1,v1,v0
  4fa854:	aca30050 	sw	v1,80(a1)
  4fa858:	24020385 	li	v0,901
  4fa85c:	a0a00053 	sb	zero,83(a1)
  4fa860:	a0a00052 	sb	zero,82(a1)
  4fa864:	aca20044 	sw	v0,68(a1)
  4fa868:	aca0003c 	sw	zero,60(a1)
  4fa86c:	aca00040 	sw	zero,64(a1)
  4fa870:	8fbf0024 	lw	ra,36(sp)
  4fa874:	264504e4 	addiu	a1,s2,1252
  4fa878:	8fb1001c 	lw	s1,28(sp)
  4fa87c:	8fb20020 	lw	s2,32(sp)
  4fa880:	8fb00018 	lw	s0,24(sp)
  4fa884:	03200008 	jr	t9
  4fa888:	27bd0028 	addiu	sp,sp,40
  4fa88c:	3c1c00a2 	lui	gp,0xa2
  4fa890:	279c7084 	addiu	gp,gp,28804
  4fa894:	0399e021 	addu	gp,gp,t9
  4fa898:	27bdffc8 	addiu	sp,sp,-56
  4fa89c:	afbf0034 	sw	ra,52(sp)
  4fa8a0:	afb50030 	sw	s5,48(sp)
  4fa8a4:	afb4002c 	sw	s4,44(sp)
  4fa8a8:	afb30028 	sw	s3,40(sp)
  4fa8ac:	afb20024 	sw	s2,36(sp)
  4fa8b0:	afb10020 	sw	s1,32(sp)
  4fa8b4:	afb0001c 	sw	s0,28(sp)
  4fa8b8:	afbc0010 	sw	gp,16(sp)
  4fa8bc:	2ca2000b 	sltiu	v0,a1,11
  4fa8c0:	00a0a021 	move	s4,a1
  4fa8c4:	00809021 	move	s2,a0
  4fa8c8:	10400025 	beqz	v0,4fa960 <adPoeManageCheck@@Base+0x384>
  4fa8cc:	00c0a821 	move	s5,a2
  4fa8d0:	8f93a3dc 	lw	s3,-23588(gp)
  4fa8d4:	00000000 	nop
  4fa8d8:	8e62000c 	lw	v0,12(s3)
  4fa8dc:	00000000 	nop
  4fa8e0:	0082102a 	slt	v0,a0,v0
  4fa8e4:	1440001f 	bnez	v0,4fa964 <adPoeManageCheck@@Base+0x388>
  4fa8e8:	24020001 	li	v0,1
  4fa8ec:	8e620010 	lw	v0,16(s3)
  4fa8f0:	00000000 	nop
  4fa8f4:	0044102a 	slt	v0,v0,a0
  4fa8f8:	14400019 	bnez	v0,4fa960 <adPoeManageCheck@@Base+0x384>
  4fa8fc:	2405ffff 	li	a1,-1
  4fa900:	8f908030 	lw	s0,-32720(gp)
  4fa904:	8f918028 	lw	s1,-32728(gp)
  4fa908:	8f99fb20 	lw	t9,-1248(gp)
  4fa90c:	8e04e13c 	lw	a0,-7876(s0)
  4fa910:	262604e4 	addiu	a2,s1,1252
  4fa914:	0320f809 	jalr	t9
  4fa918:	24071b1c 	li	a3,6940
  4fa91c:	24020030 	li	v0,48
  4fa920:	02820018 	mult	s4,v0
  4fa924:	8fbc0010 	lw	gp,16(sp)
  4fa928:	8e04e13c 	lw	a0,-7876(s0)
  4fa92c:	262504e4 	addiu	a1,s1,1252
  4fa930:	8f99cb7c 	lw	t9,-13444(gp)
  4fa934:	24061b20 	li	a2,6944
  4fa938:	00001012 	mflo	v0
  4fa93c:	00521021 	addu	v0,v0,s2
  4fa940:	24420397 	addiu	v0,v0,919
  4fa944:	00021080 	sll	v0,v0,0x2
  4fa948:	02621021 	addu	v0,s3,v0
  4fa94c:	0320f809 	jalr	t9
  4fa950:	ac550004 	sw	s5,4(v0)
  4fa954:	8fbc0010 	lw	gp,16(sp)
  4fa958:	10000002 	b	4fa964 <adPoeManageCheck@@Base+0x388>
  4fa95c:	00001021 	move	v0,zero
  4fa960:	24020001 	li	v0,1
  4fa964:	8fbf0034 	lw	ra,52(sp)
  4fa968:	8fb50030 	lw	s5,48(sp)
  4fa96c:	8fb4002c 	lw	s4,44(sp)
  4fa970:	8fb30028 	lw	s3,40(sp)
  4fa974:	8fb20024 	lw	s2,36(sp)
  4fa978:	8fb10020 	lw	s1,32(sp)
  4fa97c:	8fb0001c 	lw	s0,28(sp)
  4fa980:	03e00008 	jr	ra
  4fa984:	27bd0038 	addiu	sp,sp,56
  4fa988:	3c1c00a2 	lui	gp,0xa2
  4fa98c:	279c6f88 	addiu	gp,gp,28552
  4fa990:	0399e021 	addu	gp,gp,t9
  4fa994:	27bdffd8 	addiu	sp,sp,-40
  4fa998:	afbf0024 	sw	ra,36(sp)
  4fa99c:	afb20020 	sw	s2,32(sp)
  4fa9a0:	afb1001c 	sw	s1,28(sp)
  4fa9a4:	afb00018 	sw	s0,24(sp)
  4fa9a8:	afbc0010 	sw	gp,16(sp)
  4fa9ac:	8f91a3dc 	lw	s1,-23588(gp)
  4fa9b0:	00808021 	move	s0,a0
  4fa9b4:	8e22000c 	lw	v0,12(s1)
  4fa9b8:	00000000 	nop
  4fa9bc:	0082102a 	slt	v0,a0,v0
  4fa9c0:	14400037 	bnez	v0,4faaa0 <adPoeManageCheck@@Base+0x4c4>
  4fa9c4:	00a09021 	move	s2,a1
  4fa9c8:	8e220010 	lw	v0,16(s1)
  4fa9cc:	00000000 	nop
  4fa9d0:	0044102a 	slt	v0,v0,a0
  4fa9d4:	14400033 	bnez	v0,4faaa4 <adPoeManageCheck@@Base+0x4c8>
  4fa9d8:	24020001 	li	v0,1
  4fa9dc:	8f828030 	lw	v0,-32720(gp)
  4fa9e0:	8f868028 	lw	a2,-32728(gp)
  4fa9e4:	8f99fb20 	lw	t9,-1248(gp)
  4fa9e8:	8c44e13c 	lw	a0,-7876(v0)
  4fa9ec:	24c604e4 	addiu	a2,a2,1252
  4fa9f0:	2405ffff 	li	a1,-1
  4fa9f4:	0320f809 	jalr	t9
  4fa9f8:	24071536 	li	a3,5430
  4fa9fc:	2402004c 	li	v0,76
  4faa00:	2604ffff 	addiu	a0,s0,-1
  4faa04:	00820018 	mult	a0,v0
  4faa08:	2e43000b 	sltiu	v1,s2,11
  4faa0c:	8fbc0010 	lw	gp,16(sp)
  4faa10:	00001012 	mflo	v0
  4faa14:	02223021 	addu	a2,s1,v0
  4faa18:	8cc20048 	lw	v0,72(a2)
  4faa1c:	acd20048 	sw	s2,72(a2)
  4faa20:	1060000f 	beqz	v1,4faa60 <adPoeManageCheck@@Base+0x484>
  4faa24:	acc2004c 	sw	v0,76(a2)
  4faa28:	24050001 	li	a1,1
  4faa2c:	02451804 	sllv	v1,a1,s2
  4faa30:	30620411 	andi	v0,v1,0x411
  4faa34:	14400006 	bnez	v0,4faa50 <adPoeManageCheck@@Base+0x474>
  4faa38:	00000000 	nop
  4faa3c:	3062000c 	andi	v0,v1,0xc
  4faa40:	14400005 	bnez	v0,4faa58 <adPoeManageCheck@@Base+0x47c>
  4faa44:	2403004c 	li	v1,76
  4faa48:	10000007 	b	4faa68 <adPoeManageCheck@@Base+0x48c>
  4faa4c:	00830018 	mult	a0,v1
  4faa50:	10000009 	b	4faa78 <adPoeManageCheck@@Base+0x49c>
  4faa54:	acc00034 	sw	zero,52(a2)
  4faa58:	10000007 	b	4faa78 <adPoeManageCheck@@Base+0x49c>
  4faa5c:	acc50034 	sw	a1,52(a2)
  4faa60:	2403004c 	li	v1,76
  4faa64:	00830018 	mult	a0,v1
  4faa68:	8f82a3dc 	lw	v0,-23588(gp)
  4faa6c:	00001812 	mflo	v1
  4faa70:	00431021 	addu	v0,v0,v1
  4faa74:	ac400034 	sw	zero,52(v0)
  4faa78:	8f828030 	lw	v0,-32720(gp)
  4faa7c:	8f858028 	lw	a1,-32728(gp)
  4faa80:	8f99cb7c 	lw	t9,-13444(gp)
  4faa84:	8c44e13c 	lw	a0,-7876(v0)
  4faa88:	24a504e4 	addiu	a1,a1,1252
  4faa8c:	0320f809 	jalr	t9
  4faa90:	2406154a 	li	a2,5450
  4faa94:	8fbc0010 	lw	gp,16(sp)
  4faa98:	10000002 	b	4faaa4 <adPoeManageCheck@@Base+0x4c8>
  4faa9c:	00001021 	move	v0,zero
  4faaa0:	24020001 	li	v0,1
  4faaa4:	8fbf0024 	lw	ra,36(sp)
  4faaa8:	8fb20020 	lw	s2,32(sp)
  4faaac:	8fb1001c 	lw	s1,28(sp)
  4faab0:	8fb00018 	lw	s0,24(sp)
  4faab4:	03e00008 	jr	ra
  4faab8:	27bd0028 	addiu	sp,sp,40

004faabc <adPoeClearPoePortPowerInfo@@Base>:
  4faabc:	3c1c00a2 	lui	gp,0xa2
  4faac0:	279c6e54 	addiu	gp,gp,28244
  4faac4:	0399e021 	addu	gp,gp,t9
  4faac8:	27bdffd8 	addiu	sp,sp,-40
  4faacc:	afbf0024 	sw	ra,36(sp)
  4faad0:	afb20020 	sw	s2,32(sp)
  4faad4:	afb1001c 	sw	s1,28(sp)
  4faad8:	afb00018 	sw	s0,24(sp)
  4faadc:	afbc0010 	sw	gp,16(sp)
  4faae0:	8f918030 	lw	s1,-32720(gp)
  4faae4:	8f928028 	lw	s2,-32728(gp)
  4faae8:	8f99fb20 	lw	t9,-1248(gp)
  4faaec:	00808021 	move	s0,a0
  4faaf0:	8e24e13c 	lw	a0,-7876(s1)
  4faaf4:	264604e4 	addiu	a2,s2,1252
  4faaf8:	2405ffff 	li	a1,-1
  4faafc:	0320f809 	jalr	t9
  4fab00:	240715de 	li	a3,5598
  4fab04:	2610ffff 	addiu	s0,s0,-1
  4fab08:	2402004c 	li	v0,76
  4fab0c:	02020018 	mult	s0,v0
  4fab10:	8fbc0010 	lw	gp,16(sp)
  4fab14:	3c027fff 	lui	v0,0x7fff
  4fab18:	3442ffff 	ori	v0,v0,0xffff
  4fab1c:	8f85a3dc 	lw	a1,-23588(gp)
  4fab20:	8e24e13c 	lw	a0,-7876(s1)
  4fab24:	8f99cb7c 	lw	t9,-13444(gp)
  4fab28:	240615f8 	li	a2,5624
  4fab2c:	00008012 	mflo	s0
  4fab30:	00b02821 	addu	a1,a1,s0
  4fab34:	8ca30050 	lw	v1,80(a1)
  4fab38:	aca00034 	sw	zero,52(a1)
  4fab3c:	aca00038 	sw	zero,56(a1)
  4fab40:	00621824 	and	v1,v1,v0
  4fab44:	3c02bfff 	lui	v0,0xbfff
  4fab48:	3442ffff 	ori	v0,v0,0xffff
  4fab4c:	00621824 	and	v1,v1,v0
  4fab50:	3c02dfff 	lui	v0,0xdfff
  4fab54:	3442ffff 	ori	v0,v0,0xffff
  4fab58:	00621824 	and	v1,v1,v0
  4fab5c:	3c02efff 	lui	v0,0xefff
  4fab60:	3442ffff 	ori	v0,v0,0xffff
  4fab64:	00621824 	and	v1,v1,v0
  4fab68:	3c02f7ff 	lui	v0,0xf7ff
  4fab6c:	3442ffff 	ori	v0,v0,0xffff
  4fab70:	00621824 	and	v1,v1,v0
  4fab74:	3c02fbff 	lui	v0,0xfbff
  4fab78:	3442ffff 	ori	v0,v0,0xffff
  4fab7c:	00621824 	and	v1,v1,v0
  4fab80:	3c02fdff 	lui	v0,0xfdff
  4fab84:	3442ffff 	ori	v0,v0,0xffff
  4fab88:	00621824 	and	v1,v1,v0
  4fab8c:	3c02feff 	lui	v0,0xfeff
  4fab90:	3442ffff 	ori	v0,v0,0xffff
  4fab94:	00621824 	and	v1,v1,v0
  4fab98:	3c02ff7f 	lui	v0,0xff7f
  4fab9c:	3442ffff 	ori	v0,v0,0xffff
  4faba0:	00621824 	and	v1,v1,v0
  4faba4:	3c02ffbf 	lui	v0,0xffbf
  4faba8:	3442ffff 	ori	v0,v0,0xffff
  4fabac:	00621824 	and	v1,v1,v0
  4fabb0:	3c02ffdf 	lui	v0,0xffdf
  4fabb4:	3442ffff 	ori	v0,v0,0xffff
  4fabb8:	00621824 	and	v1,v1,v0
  4fabbc:	3c02ffef 	lui	v0,0xffef
  4fabc0:	3442ffff 	ori	v0,v0,0xffff
  4fabc4:	00621824 	and	v1,v1,v0
  4fabc8:	3c02fff7 	lui	v0,0xfff7
  4fabcc:	3442ffff 	ori	v0,v0,0xffff
  4fabd0:	00621824 	and	v1,v1,v0
  4fabd4:	aca30050 	sw	v1,80(a1)
  4fabd8:	24020385 	li	v0,901
  4fabdc:	a0a00053 	sb	zero,83(a1)
  4fabe0:	a0a00052 	sb	zero,82(a1)
  4fabe4:	aca20044 	sw	v0,68(a1)
  4fabe8:	aca0003c 	sw	zero,60(a1)
  4fabec:	aca00040 	sw	zero,64(a1)
  4fabf0:	8fbf0024 	lw	ra,36(sp)
  4fabf4:	264504e4 	addiu	a1,s2,1252
  4fabf8:	8fb1001c 	lw	s1,28(sp)
  4fabfc:	8fb20020 	lw	s2,32(sp)
  4fac00:	8fb00018 	lw	s0,24(sp)
  4fac04:	03200008 	jr	t9
  4fac08:	27bd0028 	addiu	sp,sp,40

004fac0c <adPoeGetStandard@@Base>:
  4fac0c:	3c1c00a2 	lui	gp,0xa2
  4fac10:	279c6d04 	addiu	gp,gp,27908
  4fac14:	0399e021 	addu	gp,gp,t9
  4fac18:	27bdffd0 	addiu	sp,sp,-48
  4fac1c:	afbf002c 	sw	ra,44(sp)
  4fac20:	afb30028 	sw	s3,40(sp)
  4fac24:	afb20024 	sw	s2,36(sp)
  4fac28:	afb10020 	sw	s1,32(sp)
  4fac2c:	afb0001c 	sw	s0,28(sp)
  4fac30:	afbc0010 	sw	gp,16(sp)
  4fac34:	8f92a3dc 	lw	s2,-23588(gp)
  4fac38:	00000000 	nop
  4fac3c:	8e42000c 	lw	v0,12(s2)
  4fac40:	00000000 	nop
  4fac44:	0082102a 	slt	v0,a0,v0
  4fac48:	1440001a 	bnez	v0,4facb4 <adPoeGetStandard@@Base+0xa8>
  4fac4c:	00a09821 	move	s3,a1
  4fac50:	8e420010 	lw	v0,16(s2)
  4fac54:	00000000 	nop
  4fac58:	0044102a 	slt	v0,v0,a0
  4fac5c:	14400015 	bnez	v0,4facb4 <adPoeGetStandard@@Base+0xa8>
  4fac60:	00000000 	nop
  4fac64:	10a00013 	beqz	a1,4facb4 <adPoeGetStandard@@Base+0xa8>
  4fac68:	2405ffff 	li	a1,-1
  4fac6c:	8f908030 	lw	s0,-32720(gp)
  4fac70:	8f918028 	lw	s1,-32728(gp)
  4fac74:	8f99fb20 	lw	t9,-1248(gp)
  4fac78:	8e04e13c 	lw	a0,-7876(s0)
  4fac7c:	262604e4 	addiu	a2,s1,1252
  4fac80:	0320f809 	jalr	t9
  4fac84:	24071593 	li	a3,5523
  4fac88:	8fbc0010 	lw	gp,16(sp)
  4fac8c:	8e420020 	lw	v0,32(s2)
  4fac90:	8e04e13c 	lw	a0,-7876(s0)
  4fac94:	8f99cb7c 	lw	t9,-13444(gp)
  4fac98:	ae620000 	sw	v0,0(s3)
  4fac9c:	262504e4 	addiu	a1,s1,1252
  4faca0:	0320f809 	jalr	t9
  4faca4:	24061595 	li	a2,5525
  4faca8:	8fbc0010 	lw	gp,16(sp)
  4facac:	10000002 	b	4facb8 <adPoeGetStandard@@Base+0xac>
  4facb0:	00001021 	move	v0,zero
  4facb4:	24020001 	li	v0,1
  4facb8:	8fbf002c 	lw	ra,44(sp)
  4facbc:	8fb30028 	lw	s3,40(sp)
  4facc0:	8fb20024 	lw	s2,36(sp)
  4facc4:	8fb10020 	lw	s1,32(sp)
  4facc8:	8fb0001c 	lw	s0,28(sp)
  4faccc:	03e00008 	jr	ra
  4facd0:	27bd0030 	addiu	sp,sp,48

004facd4 <adPoeGetPortStatus@@Base>:
  4facd4:	3c1c00a2 	lui	gp,0xa2
  4facd8:	279c6c3c 	addiu	gp,gp,27708
  4facdc:	0399e021 	addu	gp,gp,t9
  4face0:	27bdffd0 	addiu	sp,sp,-48
  4face4:	afbf002c 	sw	ra,44(sp)
  4face8:	afb40028 	sw	s4,40(sp)
  4facec:	afb30024 	sw	s3,36(sp)
  4facf0:	afb20020 	sw	s2,32(sp)
  4facf4:	afb1001c 	sw	s1,28(sp)
  4facf8:	afb00018 	sw	s0,24(sp)
  4facfc:	afbc0010 	sw	gp,16(sp)
  4fad00:	8f93a3dc 	lw	s3,-23588(gp)
  4fad04:	00809021 	move	s2,a0
  4fad08:	8e62000c 	lw	v0,12(s3)
  4fad0c:	00000000 	nop
  4fad10:	0082102a 	slt	v0,a0,v0
  4fad14:	1440001f 	bnez	v0,4fad94 <adPoeGetPortStatus@@Base+0xc0>
  4fad18:	00a0a021 	move	s4,a1
  4fad1c:	8e620010 	lw	v0,16(s3)
  4fad20:	00000000 	nop
  4fad24:	0044102a 	slt	v0,v0,a0
  4fad28:	1440001a 	bnez	v0,4fad94 <adPoeGetPortStatus@@Base+0xc0>
  4fad2c:	00000000 	nop
  4fad30:	10a00018 	beqz	a1,4fad94 <adPoeGetPortStatus@@Base+0xc0>
  4fad34:	2405ffff 	li	a1,-1
  4fad38:	8f908030 	lw	s0,-32720(gp)
  4fad3c:	8f918028 	lw	s1,-32728(gp)
  4fad40:	8f99fb20 	lw	t9,-1248(gp)
  4fad44:	8e04e13c 	lw	a0,-7876(s0)
  4fad48:	262604e4 	addiu	a2,s1,1252
  4fad4c:	0320f809 	jalr	t9
  4fad50:	2407156b 	li	a3,5483
  4fad54:	2643ffff 	addiu	v1,s2,-1
  4fad58:	2402004c 	li	v0,76
  4fad5c:	00620018 	mult	v1,v0
  4fad60:	8fbc0010 	lw	gp,16(sp)
  4fad64:	8e04e13c 	lw	a0,-7876(s0)
  4fad68:	262504e4 	addiu	a1,s1,1252
  4fad6c:	8f99cb7c 	lw	t9,-13444(gp)
  4fad70:	2406156d 	li	a2,5485
  4fad74:	00001812 	mflo	v1
  4fad78:	02631821 	addu	v1,s3,v1
  4fad7c:	8c620034 	lw	v0,52(v1)
  4fad80:	0320f809 	jalr	t9
  4fad84:	ae820000 	sw	v0,0(s4)
  4fad88:	8fbc0010 	lw	gp,16(sp)
  4fad8c:	10000002 	b	4fad98 <adPoeGetPortStatus@@Base+0xc4>
  4fad90:	00001021 	move	v0,zero
  4fad94:	24020001 	li	v0,1
  4fad98:	8fbf002c 	lw	ra,44(sp)
  4fad9c:	8fb40028 	lw	s4,40(sp)
  4fada0:	8fb30024 	lw	s3,36(sp)
  4fada4:	8fb20020 	lw	s2,32(sp)
  4fada8:	8fb1001c 	lw	s1,28(sp)
  4fadac:	8fb00018 	lw	s0,24(sp)
  4fadb0:	03e00008 	jr	ra
  4fadb4:	27bd0030 	addiu	sp,sp,48

004fadb8 <adPoeSetPortPowerState@@Base>:
  4fadb8:	3c1c00a2 	lui	gp,0xa2
  4fadbc:	279c6b58 	addiu	gp,gp,27480
  4fadc0:	0399e021 	addu	gp,gp,t9
  4fadc4:	27bdffd8 	addiu	sp,sp,-40
  4fadc8:	afbf0024 	sw	ra,36(sp)
  4fadcc:	afb20020 	sw	s2,32(sp)
  4fadd0:	afb1001c 	sw	s1,28(sp)
  4fadd4:	afb00018 	sw	s0,24(sp)
  4fadd8:	afbc0010 	sw	gp,16(sp)
  4faddc:	8f92a3dc 	lw	s2,-23588(gp)
  4fade0:	00808021 	move	s0,a0
  4fade4:	8e42000c 	lw	v0,12(s2)
  4fade8:	00000000 	nop
  4fadec:	0082102a 	slt	v0,a0,v0
  4fadf0:	1440002f 	bnez	v0,4faeb0 <adPoeSetPortPowerState@@Base+0xf8>
  4fadf4:	00a08821 	move	s1,a1
  4fadf8:	8e420010 	lw	v0,16(s2)
  4fadfc:	00000000 	nop
  4fae00:	0044102a 	slt	v0,v0,a0
  4fae04:	1440002b 	bnez	v0,4faeb4 <adPoeSetPortPowerState@@Base+0xfc>
  4fae08:	24020001 	li	v0,1
  4fae0c:	8f828030 	lw	v0,-32720(gp)
  4fae10:	8f868028 	lw	a2,-32728(gp)
  4fae14:	8f99fb20 	lw	t9,-1248(gp)
  4fae18:	8c44e13c 	lw	a0,-7876(v0)
  4fae1c:	2405ffff 	li	a1,-1
  4fae20:	24c604e4 	addiu	a2,a2,1252
  4fae24:	0320f809 	jalr	t9
  4fae28:	24071516 	li	a3,5398
  4fae2c:	2402004c 	li	v0,76
  4fae30:	2604ffff 	addiu	a0,s0,-1
  4fae34:	00820018 	mult	a0,v0
  4fae38:	2e230004 	sltiu	v1,s1,4
  4fae3c:	8fbc0010 	lw	gp,16(sp)
  4fae40:	00001012 	mflo	v0
  4fae44:	02422821 	addu	a1,s2,v0
  4fae48:	8ca20048 	lw	v0,72(a1)
  4fae4c:	acb10048 	sw	s1,72(a1)
  4fae50:	10600007 	beqz	v1,4fae70 <adPoeSetPortPowerState@@Base+0xb8>
  4fae54:	aca2004c 	sw	v0,76(a1)
  4fae58:	2e220002 	sltiu	v0,s1,2
  4fae5c:	14400005 	bnez	v0,4fae74 <adPoeSetPortPowerState@@Base+0xbc>
  4fae60:	2403004c 	li	v1,76
  4fae64:	24020001 	li	v0,1
  4fae68:	10000007 	b	4fae88 <adPoeSetPortPowerState@@Base+0xd0>
  4fae6c:	aca20034 	sw	v0,52(a1)
  4fae70:	2403004c 	li	v1,76
  4fae74:	00830018 	mult	a0,v1
  4fae78:	8f82a3dc 	lw	v0,-23588(gp)
  4fae7c:	00001812 	mflo	v1
  4fae80:	00431021 	addu	v0,v0,v1
  4fae84:	ac400034 	sw	zero,52(v0)
  4fae88:	8f828030 	lw	v0,-32720(gp)
  4fae8c:	8f858028 	lw	a1,-32728(gp)
  4fae90:	8f99cb7c 	lw	t9,-13444(gp)
  4fae94:	8c44e13c 	lw	a0,-7876(v0)
  4fae98:	24a504e4 	addiu	a1,a1,1252
  4fae9c:	0320f809 	jalr	t9
  4faea0:	24061529 	li	a2,5417
  4faea4:	8fbc0010 	lw	gp,16(sp)
  4faea8:	10000002 	b	4faeb4 <adPoeSetPortPowerState@@Base+0xfc>
  4faeac:	00001021 	move	v0,zero
  4faeb0:	24020001 	li	v0,1
  4faeb4:	8fbf0024 	lw	ra,36(sp)
  4faeb8:	8fb20020 	lw	s2,32(sp)
  4faebc:	8fb1001c 	lw	s1,28(sp)
  4faec0:	8fb00018 	lw	s0,24(sp)
  4faec4:	03e00008 	jr	ra
  4faec8:	27bd0028 	addiu	sp,sp,40

004faecc <adPoeGetPortPowerState@@Base>:
  4faecc:	3c1c00a2 	lui	gp,0xa2
  4faed0:	279c6a44 	addiu	gp,gp,27204
  4faed4:	0399e021 	addu	gp,gp,t9
  4faed8:	27bdffc8 	addiu	sp,sp,-56
  4faedc:	afbf0034 	sw	ra,52(sp)
  4faee0:	afb50030 	sw	s5,48(sp)
  4faee4:	afb4002c 	sw	s4,44(sp)
  4faee8:	afb30028 	sw	s3,40(sp)
  4faeec:	afb20024 	sw	s2,36(sp)
  4faef0:	afb10020 	sw	s1,32(sp)
  4faef4:	afb0001c 	sw	s0,28(sp)
  4faef8:	afbc0010 	sw	gp,16(sp)
  4faefc:	8f93a3dc 	lw	s3,-23588(gp)
  4faf00:	00809021 	move	s2,a0
  4faf04:	00a0a021 	move	s4,a1
  4faf08:	8e62000c 	lw	v0,12(s3)
  4faf0c:	00000000 	nop
  4faf10:	0082102a 	slt	v0,a0,v0
  4faf14:	14400024 	bnez	v0,4fafa8 <adPoeGetPortPowerState@@Base+0xdc>
  4faf18:	00c0a821 	move	s5,a2
  4faf1c:	8e620010 	lw	v0,16(s3)
  4faf20:	00000000 	nop
  4faf24:	0044102a 	slt	v0,v0,a0
  4faf28:	1440001f 	bnez	v0,4fafa8 <adPoeGetPortPowerState@@Base+0xdc>
  4faf2c:	00000000 	nop
  4faf30:	10a0001d 	beqz	a1,4fafa8 <adPoeGetPortPowerState@@Base+0xdc>
  4faf34:	00000000 	nop
  4faf38:	10c0001b 	beqz	a2,4fafa8 <adPoeGetPortPowerState@@Base+0xdc>
  4faf3c:	2405ffff 	li	a1,-1
  4faf40:	8f908030 	lw	s0,-32720(gp)
  4faf44:	8f918028 	lw	s1,-32728(gp)
  4faf48:	8f99fb20 	lw	t9,-1248(gp)
  4faf4c:	8e04e13c 	lw	a0,-7876(s0)
  4faf50:	262604e4 	addiu	a2,s1,1252
  4faf54:	0320f809 	jalr	t9
  4faf58:	240714ed 	li	a3,5357
  4faf5c:	2643ffff 	addiu	v1,s2,-1
  4faf60:	2402004c 	li	v0,76
  4faf64:	00620018 	mult	v1,v0
  4faf68:	8fbc0010 	lw	gp,16(sp)
  4faf6c:	8e04e13c 	lw	a0,-7876(s0)
  4faf70:	262504e4 	addiu	a1,s1,1252
  4faf74:	8f99cb7c 	lw	t9,-13444(gp)
  4faf78:	240614f2 	li	a2,5362
  4faf7c:	00001812 	mflo	v1
  4faf80:	02631821 	addu	v1,s3,v1
  4faf84:	8c620048 	lw	v0,72(v1)
  4faf88:	00000000 	nop
  4faf8c:	ae820000 	sw	v0,0(s4)
  4faf90:	8c62004c 	lw	v0,76(v1)
  4faf94:	0320f809 	jalr	t9
  4faf98:	aea20000 	sw	v0,0(s5)
  4faf9c:	8fbc0010 	lw	gp,16(sp)
  4fafa0:	10000002 	b	4fafac <adPoeGetPortPowerState@@Base+0xe0>
  4fafa4:	00001021 	move	v0,zero
  4fafa8:	24020001 	li	v0,1
  4fafac:	8fbf0034 	lw	ra,52(sp)
  4fafb0:	8fb50030 	lw	s5,48(sp)
  4fafb4:	8fb4002c 	lw	s4,44(sp)
  4fafb8:	8fb30028 	lw	s3,40(sp)
  4fafbc:	8fb20024 	lw	s2,36(sp)
  4fafc0:	8fb10020 	lw	s1,32(sp)
  4fafc4:	8fb0001c 	lw	s0,28(sp)
  4fafc8:	03e00008 	jr	ra
  4fafcc:	27bd0038 	addiu	sp,sp,56

004fafd0 <adPoeGetPortPowerCons@@Base>:
  4fafd0:	3c1c00a2 	lui	gp,0xa2
  4fafd4:	279c6940 	addiu	gp,gp,26944
  4fafd8:	0399e021 	addu	gp,gp,t9
  4fafdc:	27bdffd0 	addiu	sp,sp,-48
  4fafe0:	afbf002c 	sw	ra,44(sp)
  4fafe4:	afb40028 	sw	s4,40(sp)
  4fafe8:	afb30024 	sw	s3,36(sp)
  4fafec:	afb20020 	sw	s2,32(sp)
  4faff0:	afb1001c 	sw	s1,28(sp)
  4faff4:	afb00018 	sw	s0,24(sp)
  4faff8:	afbc0010 	sw	gp,16(sp)
  4faffc:	00a0a021 	move	s4,a1
  4fb000:	10a00024 	beqz	a1,4fb094 <adPoeGetPortPowerCons@@Base+0xc4>
  4fb004:	00809021 	move	s2,a0
  4fb008:	8f93a3dc 	lw	s3,-23588(gp)
  4fb00c:	00000000 	nop
  4fb010:	8e62000c 	lw	v0,12(s3)
  4fb014:	00000000 	nop
  4fb018:	0082102a 	slt	v0,a0,v0
  4fb01c:	1440001e 	bnez	v0,4fb098 <adPoeGetPortPowerCons@@Base+0xc8>
  4fb020:	24020001 	li	v0,1
  4fb024:	8e620010 	lw	v0,16(s3)
  4fb028:	00000000 	nop
  4fb02c:	0044102a 	slt	v0,v0,a0
  4fb030:	14400018 	bnez	v0,4fb094 <adPoeGetPortPowerCons@@Base+0xc4>
  4fb034:	2405ffff 	li	a1,-1
  4fb038:	8f908030 	lw	s0,-32720(gp)
  4fb03c:	8f918028 	lw	s1,-32728(gp)
  4fb040:	8f99fb20 	lw	t9,-1248(gp)
  4fb044:	8e04e13c 	lw	a0,-7876(s0)
  4fb048:	262604e4 	addiu	a2,s1,1252
  4fb04c:	0320f809 	jalr	t9
  4fb050:	2407147d 	li	a3,5245
  4fb054:	2643ffff 	addiu	v1,s2,-1
  4fb058:	2402004c 	li	v0,76
  4fb05c:	00620018 	mult	v1,v0
  4fb060:	8fbc0010 	lw	gp,16(sp)
  4fb064:	8e04e13c 	lw	a0,-7876(s0)
  4fb068:	262504e4 	addiu	a1,s1,1252
  4fb06c:	8f99cb7c 	lw	t9,-13444(gp)
  4fb070:	24061481 	li	a2,5249
  4fb074:	00001812 	mflo	v1
  4fb078:	02631821 	addu	v1,s3,v1
  4fb07c:	8c620040 	lw	v0,64(v1)
  4fb080:	0320f809 	jalr	t9
  4fb084:	ae820000 	sw	v0,0(s4)
  4fb088:	8fbc0010 	lw	gp,16(sp)
  4fb08c:	10000002 	b	4fb098 <adPoeGetPortPowerCons@@Base+0xc8>
  4fb090:	00001021 	move	v0,zero
  4fb094:	24020001 	li	v0,1
  4fb098:	8fbf002c 	lw	ra,44(sp)
  4fb09c:	8fb40028 	lw	s4,40(sp)
  4fb0a0:	8fb30024 	lw	s3,36(sp)
  4fb0a4:	8fb20020 	lw	s2,32(sp)
  4fb0a8:	8fb1001c 	lw	s1,28(sp)
  4fb0ac:	8fb00018 	lw	s0,24(sp)
  4fb0b0:	03e00008 	jr	ra
  4fb0b4:	27bd0030 	addiu	sp,sp,48

004fb0b8 <adPoeSetPortPriority@@Base>:
  4fb0b8:	3c1c00a2 	lui	gp,0xa2
  4fb0bc:	279c6858 	addiu	gp,gp,26712
  4fb0c0:	0399e021 	addu	gp,gp,t9
  4fb0c4:	27bdffd0 	addiu	sp,sp,-48
  4fb0c8:	afbf002c 	sw	ra,44(sp)
  4fb0cc:	afb40028 	sw	s4,40(sp)
  4fb0d0:	afb30024 	sw	s3,36(sp)
  4fb0d4:	afb20020 	sw	s2,32(sp)
  4fb0d8:	afb1001c 	sw	s1,28(sp)
  4fb0dc:	afb00018 	sw	s0,24(sp)
  4fb0e0:	afbc0010 	sw	gp,16(sp)
  4fb0e4:	8f93a3dc 	lw	s3,-23588(gp)
  4fb0e8:	00809021 	move	s2,a0
  4fb0ec:	8e62000c 	lw	v0,12(s3)
  4fb0f0:	00000000 	nop
  4fb0f4:	0082102a 	slt	v0,a0,v0
  4fb0f8:	1440001c 	bnez	v0,4fb16c <adPoeSetPortPriority@@Base+0xb4>
  4fb0fc:	00a0a021 	move	s4,a1
  4fb100:	8e620010 	lw	v0,16(s3)
  4fb104:	00000000 	nop
  4fb108:	0044102a 	slt	v0,v0,a0
  4fb10c:	14400017 	bnez	v0,4fb16c <adPoeSetPortPriority@@Base+0xb4>
  4fb110:	2405ffff 	li	a1,-1
  4fb114:	8f908030 	lw	s0,-32720(gp)
  4fb118:	8f918028 	lw	s1,-32728(gp)
  4fb11c:	8f99fb20 	lw	t9,-1248(gp)
  4fb120:	8e04e13c 	lw	a0,-7876(s0)
  4fb124:	262604e4 	addiu	a2,s1,1252
  4fb128:	0320f809 	jalr	t9
  4fb12c:	24071444 	li	a3,5188
  4fb130:	2643ffff 	addiu	v1,s2,-1
  4fb134:	2402004c 	li	v0,76
  4fb138:	00620018 	mult	v1,v0
  4fb13c:	8fbc0010 	lw	gp,16(sp)
  4fb140:	8e04e13c 	lw	a0,-7876(s0)
  4fb144:	262504e4 	addiu	a1,s1,1252
  4fb148:	8f99cb7c 	lw	t9,-13444(gp)
  4fb14c:	24061446 	li	a2,5190
  4fb150:	00001812 	mflo	v1
  4fb154:	02631821 	addu	v1,s3,v1
  4fb158:	0320f809 	jalr	t9
  4fb15c:	ac740030 	sw	s4,48(v1)
  4fb160:	8fbc0010 	lw	gp,16(sp)
  4fb164:	10000002 	b	4fb170 <adPoeSetPortPriority@@Base+0xb8>
  4fb168:	00001021 	move	v0,zero
  4fb16c:	24020001 	li	v0,1
  4fb170:	8fbf002c 	lw	ra,44(sp)
  4fb174:	8fb40028 	lw	s4,40(sp)
  4fb178:	8fb30024 	lw	s3,36(sp)
  4fb17c:	8fb20020 	lw	s2,32(sp)
  4fb180:	8fb1001c 	lw	s1,28(sp)
  4fb184:	8fb00018 	lw	s0,24(sp)
  4fb188:	03e00008 	jr	ra
  4fb18c:	27bd0030 	addiu	sp,sp,48

004fb190 <adPoeSetPortUserStatus@@Base>:
  4fb190:	3c1c00a2 	lui	gp,0xa2
  4fb194:	279c6780 	addiu	gp,gp,26496
  4fb198:	0399e021 	addu	gp,gp,t9
  4fb19c:	27bdffd0 	addiu	sp,sp,-48
  4fb1a0:	afbf002c 	sw	ra,44(sp)
  4fb1a4:	afb40028 	sw	s4,40(sp)
  4fb1a8:	afb30024 	sw	s3,36(sp)
  4fb1ac:	afb20020 	sw	s2,32(sp)
  4fb1b0:	afb1001c 	sw	s1,28(sp)
  4fb1b4:	afb00018 	sw	s0,24(sp)
  4fb1b8:	afbc0010 	sw	gp,16(sp)
  4fb1bc:	8f93a3dc 	lw	s3,-23588(gp)
  4fb1c0:	00809021 	move	s2,a0
  4fb1c4:	8e62000c 	lw	v0,12(s3)
  4fb1c8:	00000000 	nop
  4fb1cc:	0082102a 	slt	v0,a0,v0
  4fb1d0:	1440001e 	bnez	v0,4fb24c <adPoeSetPortUserStatus@@Base+0xbc>
  4fb1d4:	00a0a021 	move	s4,a1
  4fb1d8:	8e620010 	lw	v0,16(s3)
  4fb1dc:	00000000 	nop
  4fb1e0:	0044102a 	slt	v0,v0,a0
  4fb1e4:	14400019 	bnez	v0,4fb24c <adPoeSetPortUserStatus@@Base+0xbc>
  4fb1e8:	2ca20002 	sltiu	v0,a1,2
  4fb1ec:	10400017 	beqz	v0,4fb24c <adPoeSetPortUserStatus@@Base+0xbc>
  4fb1f0:	2405ffff 	li	a1,-1
  4fb1f4:	8f908030 	lw	s0,-32720(gp)
  4fb1f8:	8f918028 	lw	s1,-32728(gp)
  4fb1fc:	8f99fb20 	lw	t9,-1248(gp)
  4fb200:	8e04e13c 	lw	a0,-7876(s0)
  4fb204:	262604e4 	addiu	a2,s1,1252
  4fb208:	0320f809 	jalr	t9
  4fb20c:	24071420 	li	a3,5152
  4fb210:	2643ffff 	addiu	v1,s2,-1
  4fb214:	2402004c 	li	v0,76
  4fb218:	00620018 	mult	v1,v0
  4fb21c:	8fbc0010 	lw	gp,16(sp)
  4fb220:	8e04e13c 	lw	a0,-7876(s0)
  4fb224:	262504e4 	addiu	a1,s1,1252
  4fb228:	8f99cb7c 	lw	t9,-13444(gp)
  4fb22c:	24061422 	li	a2,5154
  4fb230:	00001812 	mflo	v1
  4fb234:	02631821 	addu	v1,s3,v1
  4fb238:	0320f809 	jalr	t9
  4fb23c:	ac740028 	sw	s4,40(v1)
  4fb240:	8fbc0010 	lw	gp,16(sp)
  4fb244:	10000002 	b	4fb250 <adPoeSetPortUserStatus@@Base+0xc0>
  4fb248:	00001021 	move	v0,zero
  4fb24c:	24020001 	li	v0,1
  4fb250:	8fbf002c 	lw	ra,44(sp)
  4fb254:	8fb40028 	lw	s4,40(sp)
  4fb258:	8fb30024 	lw	s3,36(sp)
  4fb25c:	8fb20020 	lw	s2,32(sp)
  4fb260:	8fb1001c 	lw	s1,28(sp)
  4fb264:	8fb00018 	lw	s0,24(sp)
  4fb268:	03e00008 	jr	ra
  4fb26c:	27bd0030 	addiu	sp,sp,48

004fb270 <adPoeGetPortPowerLimt@@Base>:
  4fb270:	3c1c00a2 	lui	gp,0xa2
  4fb274:	279c66a0 	addiu	gp,gp,26272
  4fb278:	0399e021 	addu	gp,gp,t9
  4fb27c:	27bdffd0 	addiu	sp,sp,-48
  4fb280:	afbf002c 	sw	ra,44(sp)
  4fb284:	afb40028 	sw	s4,40(sp)
  4fb288:	afb30024 	sw	s3,36(sp)
  4fb28c:	afb20020 	sw	s2,32(sp)
  4fb290:	afb1001c 	sw	s1,28(sp)
  4fb294:	afb00018 	sw	s0,24(sp)
  4fb298:	afbc0010 	sw	gp,16(sp)
  4fb29c:	8f93a3dc 	lw	s3,-23588(gp)
  4fb2a0:	00809021 	move	s2,a0
  4fb2a4:	8e62000c 	lw	v0,12(s3)
  4fb2a8:	00000000 	nop
  4fb2ac:	0082102a 	slt	v0,a0,v0
  4fb2b0:	1440001f 	bnez	v0,4fb330 <adPoeGetPortPowerLimt@@Base+0xc0>
  4fb2b4:	00a0a021 	move	s4,a1
  4fb2b8:	8e620010 	lw	v0,16(s3)
  4fb2bc:	00000000 	nop
  4fb2c0:	0044102a 	slt	v0,v0,a0
  4fb2c4:	1440001a 	bnez	v0,4fb330 <adPoeGetPortPowerLimt@@Base+0xc0>
  4fb2c8:	00000000 	nop
  4fb2cc:	10a00018 	beqz	a1,4fb330 <adPoeGetPortPowerLimt@@Base+0xc0>
  4fb2d0:	2405ffff 	li	a1,-1
  4fb2d4:	8f908030 	lw	s0,-32720(gp)
  4fb2d8:	8f918028 	lw	s1,-32728(gp)
  4fb2dc:	8f99fb20 	lw	t9,-1248(gp)
  4fb2e0:	8e04e13c 	lw	a0,-7876(s0)
  4fb2e4:	262604e4 	addiu	a2,s1,1252
  4fb2e8:	0320f809 	jalr	t9
  4fb2ec:	240713f8 	li	a3,5112
  4fb2f0:	2643ffff 	addiu	v1,s2,-1
  4fb2f4:	2402004c 	li	v0,76
  4fb2f8:	00620018 	mult	v1,v0
  4fb2fc:	8fbc0010 	lw	gp,16(sp)
  4fb300:	8e04e13c 	lw	a0,-7876(s0)
  4fb304:	262504e4 	addiu	a1,s1,1252
  4fb308:	8f99cb7c 	lw	t9,-13444(gp)
  4fb30c:	240613fa 	li	a2,5114
  4fb310:	00001812 	mflo	v1
  4fb314:	02631821 	addu	v1,s3,v1
  4fb318:	8c62002c 	lw	v0,44(v1)
  4fb31c:	0320f809 	jalr	t9
  4fb320:	ae820000 	sw	v0,0(s4)
  4fb324:	8fbc0010 	lw	gp,16(sp)
  4fb328:	10000002 	b	4fb334 <adPoeGetPortPowerLimt@@Base+0xc4>
  4fb32c:	00001021 	move	v0,zero
  4fb330:	24020001 	li	v0,1
  4fb334:	8fbf002c 	lw	ra,44(sp)
  4fb338:	8fb40028 	lw	s4,40(sp)
  4fb33c:	8fb30024 	lw	s3,36(sp)
  4fb340:	8fb20020 	lw	s2,32(sp)
  4fb344:	8fb1001c 	lw	s1,28(sp)
  4fb348:	8fb00018 	lw	s0,24(sp)
  4fb34c:	03e00008 	jr	ra
  4fb350:	27bd0030 	addiu	sp,sp,48

004fb354 <adPoeStmEnter_mp3924@@Base>:
  4fb354:	3c1c00a2 	lui	gp,0xa2
  4fb358:	279c65bc 	addiu	gp,gp,26044
  4fb35c:	0399e021 	addu	gp,gp,t9
  4fb360:	27bdffc8 	addiu	sp,sp,-56
  4fb364:	afbf0034 	sw	ra,52(sp)
  4fb368:	afb20030 	sw	s2,48(sp)
  4fb36c:	afb1002c 	sw	s1,44(sp)
  4fb370:	afb00028 	sw	s0,40(sp)
  4fb374:	afbc0010 	sw	gp,16(sp)
  4fb378:	00808021 	move	s0,a0
  4fb37c:	00a09021 	move	s2,a1
  4fb380:	1080006a 	beqz	a0,4fb52c <adPoeStmEnter_mp3924@@Base+0x1d8>
  4fb384:	00c08821 	move	s1,a2
  4fb388:	10a00068 	beqz	a1,4fb52c <adPoeStmEnter_mp3924@@Base+0x1d8>
  4fb38c:	24020002 	li	v0,2
  4fb390:	10c20015 	beq	a2,v0,4fb3e8 <adPoeStmEnter_mp3924@@Base+0x94>
  4fb394:	2cc20003 	sltiu	v0,a2,3
  4fb398:	10400006 	beqz	v0,4fb3b4 <adPoeStmEnter_mp3924@@Base+0x60>
  4fb39c:	24020003 	li	v0,3
  4fb3a0:	24020001 	li	v0,1
  4fb3a4:	14c20060 	bne	a2,v0,4fb528 <adPoeStmEnter_mp3924@@Base+0x1d4>
  4fb3a8:	00000000 	nop
  4fb3ac:	10000007 	b	4fb3cc <adPoeStmEnter_mp3924@@Base+0x78>
  4fb3b0:	00000000 	nop
  4fb3b4:	10c20016 	beq	a2,v0,4fb410 <adPoeStmEnter_mp3924@@Base+0xbc>
  4fb3b8:	24020004 	li	v0,4
  4fb3bc:	14c2005a 	bne	a2,v0,4fb528 <adPoeStmEnter_mp3924@@Base+0x1d4>
  4fb3c0:	00000000 	nop
  4fb3c4:	10000040 	b	4fb4c8 <adPoeStmEnter_mp3924@@Base+0x174>
  4fb3c8:	00000000 	nop
  4fb3cc:	8c840000 	lw	a0,0(a0)
  4fb3d0:	8f99e350 	lw	t9,-7344(gp)
  4fb3d4:	00000000 	nop
  4fb3d8:	0320f809 	jalr	t9
  4fb3dc:	00000000 	nop
  4fb3e0:	10000006 	b	4fb3fc <adPoeStmEnter_mp3924@@Base+0xa8>
  4fb3e4:	00000000 	nop
  4fb3e8:	8c840000 	lw	a0,0(a0)
  4fb3ec:	8f99adf4 	lw	t9,-21004(gp)
  4fb3f0:	00000000 	nop
  4fb3f4:	0320f809 	jalr	t9
  4fb3f8:	00000000 	nop
  4fb3fc:	8fbc0010 	lw	gp,16(sp)
  4fb400:	8e040000 	lw	a0,0(s0)
  4fb404:	8f99e738 	lw	t9,-6344(gp)
  4fb408:	1000002b 	b	4fb4b8 <adPoeStmEnter_mp3924@@Base+0x164>
  4fb40c:	00002821 	move	a1,zero
  4fb410:	8f99adf4 	lw	t9,-21004(gp)
  4fb414:	8c840000 	lw	a0,0(a0)
  4fb418:	0320f809 	jalr	t9
  4fb41c:	00000000 	nop
  4fb420:	8fbc0010 	lw	gp,16(sp)
  4fb424:	8e040000 	lw	a0,0(s0)
  4fb428:	27a60018 	addiu	a2,sp,24
  4fb42c:	8f99d514 	lw	t9,-10988(gp)
  4fb430:	27a5001c 	addiu	a1,sp,28
  4fb434:	afa00018 	sw	zero,24(sp)
  4fb438:	afa0001c 	sw	zero,28(sp)
  4fb43c:	afa00020 	sw	zero,32(sp)
  4fb440:	0320f809 	jalr	t9
  4fb444:	afa00024 	sw	zero,36(sp)
  4fb448:	8fbc0010 	lw	gp,16(sp)
  4fb44c:	8e040000 	lw	a0,0(s0)
  4fb450:	8f99ae14 	lw	t9,-20972(gp)
  4fb454:	00000000 	nop
  4fb458:	0320f809 	jalr	t9
  4fb45c:	27a50020 	addiu	a1,sp,32
  4fb460:	8fbc0010 	lw	gp,16(sp)
  4fb464:	8e040000 	lw	a0,0(s0)
  4fb468:	8f99a0c4 	lw	t9,-24380(gp)
  4fb46c:	00000000 	nop
  4fb470:	0320f809 	jalr	t9
  4fb474:	27a50024 	addiu	a1,sp,36
  4fb478:	8fa2001c 	lw	v0,28(sp)
  4fb47c:	8fbc0010 	lw	gp,16(sp)
  4fb480:	1451000a 	bne	v0,s1,4fb4ac <adPoeStmEnter_mp3924@@Base+0x158>
  4fb484:	24050002 	li	a1,2
  4fb488:	8fa30024 	lw	v1,36(sp)
  4fb48c:	8fa20020 	lw	v0,32(sp)
  4fb490:	8e040000 	lw	a0,0(s0)
  4fb494:	8f99e738 	lw	t9,-6344(gp)
  4fb498:	0062102a 	slt	v0,v1,v0
  4fb49c:	14400006 	bnez	v0,4fb4b8 <adPoeStmEnter_mp3924@@Base+0x164>
  4fb4a0:	24050003 	li	a1,3
  4fb4a4:	10000004 	b	4fb4b8 <adPoeStmEnter_mp3924@@Base+0x164>
  4fb4a8:	24050002 	li	a1,2
  4fb4ac:	8e040000 	lw	a0,0(s0)
  4fb4b0:	8f99e738 	lw	t9,-6344(gp)
  4fb4b4:	00000000 	nop
  4fb4b8:	0320f809 	jalr	t9
  4fb4bc:	00000000 	nop
  4fb4c0:	10000018 	b	4fb524 <adPoeStmEnter_mp3924@@Base+0x1d0>
  4fb4c4:	00000000 	nop
  4fb4c8:	8f99adf4 	lw	t9,-21004(gp)
  4fb4cc:	8c840000 	lw	a0,0(a0)
  4fb4d0:	0320f809 	jalr	t9
  4fb4d4:	00000000 	nop
  4fb4d8:	8fbc0010 	lw	gp,16(sp)
  4fb4dc:	8e040000 	lw	a0,0(s0)
  4fb4e0:	8f99e738 	lw	t9,-6344(gp)
  4fb4e4:	00000000 	nop
  4fb4e8:	0320f809 	jalr	t9
  4fb4ec:	24050004 	li	a1,4
  4fb4f0:	8fbc0010 	lw	gp,16(sp)
  4fb4f4:	8e040000 	lw	a0,0(s0)
  4fb4f8:	8f9986c0 	lw	t9,-31040(gp)
  4fb4fc:	00000000 	nop
  4fb500:	0320f809 	jalr	t9
  4fb504:	00002821 	move	a1,zero
  4fb508:	8fbc0010 	lw	gp,16(sp)
  4fb50c:	8e040000 	lw	a0,0(s0)
  4fb510:	24050007 	li	a1,7
  4fb514:	8f99c78c 	lw	t9,-14452(gp)
  4fb518:	00000000 	nop
  4fb51c:	0320f809 	jalr	t9
  4fb520:	24060007 	li	a2,7
  4fb524:	8fbc0010 	lw	gp,16(sp)
  4fb528:	ae510000 	sw	s1,0(s2)
  4fb52c:	8fbf0034 	lw	ra,52(sp)
  4fb530:	8fb20030 	lw	s2,48(sp)
  4fb534:	8fb1002c 	lw	s1,44(sp)
  4fb538:	8fb00028 	lw	s0,40(sp)
  4fb53c:	03e00008 	jr	ra
  4fb540:	27bd0038 	addiu	sp,sp,56

004fb544 <adPoeStmStep_mp3924@@Base>:
  4fb544:	3c1c00a2 	lui	gp,0xa2
  4fb548:	279c63cc 	addiu	gp,gp,25548
  4fb54c:	0399e021 	addu	gp,gp,t9
  4fb550:	27bdffd8 	addiu	sp,sp,-40
  4fb554:	afbf0024 	sw	ra,36(sp)
  4fb558:	afb10020 	sw	s1,32(sp)
  4fb55c:	afb0001c 	sw	s0,28(sp)
  4fb560:	afbc0010 	sw	gp,16(sp)
  4fb564:	00808021 	move	s0,a0
  4fb568:	1080009b 	beqz	a0,4fb7d8 <adPoeStmStep_mp3924@@Base+0x294>
  4fb56c:	00a08821 	move	s1,a1
  4fb570:	10a00099 	beqz	a1,4fb7d8 <adPoeStmStep_mp3924@@Base+0x294>
  4fb574:	00000000 	nop
  4fb578:	8ca30000 	lw	v1,0(a1)
  4fb57c:	00000000 	nop
  4fb580:	2c620005 	sltiu	v0,v1,5
  4fb584:	10400094 	beqz	v0,4fb7d8 <adPoeStmStep_mp3924@@Base+0x294>
  4fb588:	00031080 	sll	v0,v1,0x2
  4fb58c:	8f838028 	lw	v1,-32728(gp)
  4fb590:	00000000 	nop
  4fb594:	24630358 	addiu	v1,v1,856
  4fb598:	00621821 	addu	v1,v1,v0
  4fb59c:	8c620000 	lw	v0,0(v1)
  4fb5a0:	00000000 	nop
  4fb5a4:	005c1021 	addu	v0,v0,gp
  4fb5a8:	00400008 	jr	v0
  4fb5ac:	00000000 	nop
  4fb5b0:	8c82002c 	lw	v0,44(a0)
  4fb5b4:	3c031000 	lui	v1,0x1000
  4fb5b8:	3464ff00 	ori	a0,v1,0xff00
  4fb5bc:	00441024 	and	v0,v0,a0
  4fb5c0:	34630400 	ori	v1,v1,0x400
  4fb5c4:	14430032 	bne	v0,v1,4fb690 <adPoeStmStep_mp3924@@Base+0x14c>
  4fb5c8:	00000000 	nop
  4fb5cc:	8f99c078 	lw	t9,-16264(gp)
  4fb5d0:	9204002f 	lbu	a0,47(s0)
  4fb5d4:	0320f809 	jalr	t9
  4fb5d8:	00000000 	nop
  4fb5dc:	8fbc0010 	lw	gp,16(sp)
  4fb5e0:	1040002b 	beqz	v0,4fb690 <adPoeStmStep_mp3924@@Base+0x14c>
  4fb5e4:	24020001 	li	v0,1
  4fb5e8:	8e030004 	lw	v1,4(s0)
  4fb5ec:	00000000 	nop
  4fb5f0:	14620027 	bne	v1,v0,4fb690 <adPoeStmStep_mp3924@@Base+0x14c>
  4fb5f4:	3c030008 	lui	v1,0x8
  4fb5f8:	8e02002c 	lw	v0,44(s0)
  4fb5fc:	00000000 	nop
  4fb600:	00431024 	and	v0,v0,v1
  4fb604:	14400022 	bnez	v0,4fb690 <adPoeStmStep_mp3924@@Base+0x14c>
  4fb608:	00000000 	nop
  4fb60c:	10000041 	b	4fb714 <adPoeStmStep_mp3924@@Base+0x1d0>
  4fb610:	00000000 	nop
  4fb614:	8c82002c 	lw	v0,44(a0)
  4fb618:	3c030200 	lui	v1,0x200
  4fb61c:	00431024 	and	v0,v0,v1
  4fb620:	1040000b 	beqz	v0,4fb650 <adPoeStmStep_mp3924@@Base+0x10c>
  4fb624:	00000000 	nop
  4fb628:	8f83add4 	lw	v1,-21036(gp)
  4fb62c:	00000000 	nop
  4fb630:	8c620000 	lw	v0,0(v1)
  4fb634:	00000000 	nop
  4fb638:	14400005 	bnez	v0,4fb650 <adPoeStmStep_mp3924@@Base+0x10c>
  4fb63c:	24020001 	li	v0,1
  4fb640:	ac620000 	sw	v0,0(v1)
  4fb644:	8f82d590 	lw	v0,-10864(gp)
  4fb648:	00000000 	nop
  4fb64c:	ac400000 	sw	zero,0(v0)
  4fb650:	8e04002c 	lw	a0,44(s0)
  4fb654:	3c020100 	lui	v0,0x100
  4fb658:	3442ff00 	ori	v0,v0,0xff00
  4fb65c:	00821024 	and	v0,a0,v0
  4fb660:	24030400 	li	v1,1024
  4fb664:	1043000d 	beq	v0,v1,4fb69c <adPoeStmStep_mp3924@@Base+0x158>
  4fb668:	3c020008 	lui	v0,0x8
  4fb66c:	00821024 	and	v0,a0,v0
  4fb670:	1440000b 	bnez	v0,4fb6a0 <adPoeStmStep_mp3924@@Base+0x15c>
  4fb674:	3c020808 	lui	v0,0x808
  4fb678:	8f99cf50 	lw	t9,-12464(gp)
  4fb67c:	00000000 	nop
  4fb680:	0320f809 	jalr	t9
  4fb684:	00000000 	nop
  4fb688:	8fbc0010 	lw	gp,16(sp)
  4fb68c:	00000000 	nop
  4fb690:	8f99a158 	lw	t9,-24232(gp)
  4fb694:	10000045 	b	4fb7ac <adPoeStmStep_mp3924@@Base+0x268>
  4fb698:	02002021 	move	a0,s0
  4fb69c:	3c020808 	lui	v0,0x808
  4fb6a0:	00821024 	and	v0,a0,v0
  4fb6a4:	3c030800 	lui	v1,0x800
  4fb6a8:	14430008 	bne	v0,v1,4fb6cc <adPoeStmStep_mp3924@@Base+0x188>
  4fb6ac:	3c020008 	lui	v0,0x8
  4fb6b0:	8f99cf50 	lw	t9,-12464(gp)
  4fb6b4:	00000000 	nop
  4fb6b8:	0320f809 	jalr	t9
  4fb6bc:	00000000 	nop
  4fb6c0:	8fbc0010 	lw	gp,16(sp)
  4fb6c4:	10000027 	b	4fb764 <adPoeStmStep_mp3924@@Base+0x220>
  4fb6c8:	00000000 	nop
  4fb6cc:	00821024 	and	v0,a0,v0
  4fb6d0:	14400015 	bnez	v0,4fb728 <adPoeStmStep_mp3924@@Base+0x1e4>
  4fb6d4:	00000000 	nop
  4fb6d8:	8f82add4 	lw	v0,-21036(gp)
  4fb6dc:	00000000 	nop
  4fb6e0:	8c420000 	lw	v0,0(v0)
  4fb6e4:	00000000 	nop
  4fb6e8:	1040000a 	beqz	v0,4fb714 <adPoeStmStep_mp3924@@Base+0x1d0>
  4fb6ec:	00000000 	nop
  4fb6f0:	8f83d590 	lw	v1,-10864(gp)
  4fb6f4:	00000000 	nop
  4fb6f8:	8c640000 	lw	a0,0(v1)
  4fb6fc:	00000000 	nop
  4fb700:	24820001 	addiu	v0,a0,1
  4fb704:	ac620000 	sw	v0,0(v1)
  4fb708:	24020003 	li	v0,3
  4fb70c:	1082ffda 	beq	a0,v0,4fb678 <adPoeStmStep_mp3924@@Base+0x134>
  4fb710:	00000000 	nop
  4fb714:	8f99a158 	lw	t9,-24232(gp)
  4fb718:	02002021 	move	a0,s0
  4fb71c:	02202821 	move	a1,s1
  4fb720:	10000028 	b	4fb7c4 <adPoeStmStep_mp3924@@Base+0x280>
  4fb724:	24060002 	li	a2,2
  4fb728:	8f99cf50 	lw	t9,-12464(gp)
  4fb72c:	00000000 	nop
  4fb730:	0320f809 	jalr	t9
  4fb734:	00000000 	nop
  4fb738:	8fbc0010 	lw	gp,16(sp)
  4fb73c:	00000000 	nop
  4fb740:	8f99a158 	lw	t9,-24232(gp)
  4fb744:	1000000f 	b	4fb784 <adPoeStmStep_mp3924@@Base+0x240>
  4fb748:	02002021 	move	a0,s0
  4fb74c:	8c84002c 	lw	a0,44(a0)
  4fb750:	3c020808 	lui	v0,0x808
  4fb754:	3c030800 	lui	v1,0x800
  4fb758:	00821024 	and	v0,a0,v0
  4fb75c:	14430004 	bne	v0,v1,4fb770 <adPoeStmStep_mp3924@@Base+0x22c>
  4fb760:	3c020008 	lui	v0,0x8
  4fb764:	8f99a158 	lw	t9,-24232(gp)
  4fb768:	10000014 	b	4fb7bc <adPoeStmStep_mp3924@@Base+0x278>
  4fb76c:	02002021 	move	a0,s0
  4fb770:	00821024 	and	v0,a0,v0
  4fb774:	8f99a158 	lw	t9,-24232(gp)
  4fb778:	1040000b 	beqz	v0,4fb7a8 <adPoeStmStep_mp3924@@Base+0x264>
  4fb77c:	00000000 	nop
  4fb780:	02002021 	move	a0,s0
  4fb784:	02202821 	move	a1,s1
  4fb788:	1000000e 	b	4fb7c4 <adPoeStmStep_mp3924@@Base+0x280>
  4fb78c:	24060003 	li	a2,3
  4fb790:	8c82002c 	lw	v0,44(a0)
  4fb794:	3c030008 	lui	v1,0x8
  4fb798:	8f99a158 	lw	t9,-24232(gp)
  4fb79c:	00431024 	and	v0,v0,v1
  4fb7a0:	14400005 	bnez	v0,4fb7b8 <adPoeStmStep_mp3924@@Base+0x274>
  4fb7a4:	00000000 	nop
  4fb7a8:	02002021 	move	a0,s0
  4fb7ac:	02202821 	move	a1,s1
  4fb7b0:	10000004 	b	4fb7c4 <adPoeStmStep_mp3924@@Base+0x280>
  4fb7b4:	24060001 	li	a2,1
  4fb7b8:	02002021 	move	a0,s0
  4fb7bc:	02202821 	move	a1,s1
  4fb7c0:	24060004 	li	a2,4
  4fb7c4:	8fbf0024 	lw	ra,36(sp)
  4fb7c8:	8fb10020 	lw	s1,32(sp)
  4fb7cc:	8fb0001c 	lw	s0,28(sp)
  4fb7d0:	03200008 	jr	t9
  4fb7d4:	27bd0028 	addiu	sp,sp,40
  4fb7d8:	8fbf0024 	lw	ra,36(sp)
  4fb7dc:	8fb10020 	lw	s1,32(sp)
  4fb7e0:	8fb0001c 	lw	s0,28(sp)
  4fb7e4:	03e00008 	jr	ra
  4fb7e8:	27bd0028 	addiu	sp,sp,40

004fb7ec <adPoeStmEnter_xs2184@@Base>:
  4fb7ec:	3c1c00a2 	lui	gp,0xa2
  4fb7f0:	279c6124 	addiu	gp,gp,24868
  4fb7f4:	0399e021 	addu	gp,gp,t9
  4fb7f8:	27bdffc8 	addiu	sp,sp,-56
  4fb7fc:	afbf0034 	sw	ra,52(sp)
  4fb800:	afb20030 	sw	s2,48(sp)
  4fb804:	afb1002c 	sw	s1,44(sp)
  4fb808:	afb00028 	sw	s0,40(sp)
  4fb80c:	afbc0010 	sw	gp,16(sp)
  4fb810:	00808021 	move	s0,a0
  4fb814:	00a09021 	move	s2,a1
  4fb818:	1080006a 	beqz	a0,4fb9c4 <adPoeStmEnter_xs2184@@Base+0x1d8>
  4fb81c:	00c08821 	move	s1,a2
  4fb820:	10a00068 	beqz	a1,4fb9c4 <adPoeStmEnter_xs2184@@Base+0x1d8>
  4fb824:	24020002 	li	v0,2
  4fb828:	10c20015 	beq	a2,v0,4fb880 <adPoeStmEnter_xs2184@@Base+0x94>
  4fb82c:	2cc20003 	sltiu	v0,a2,3
  4fb830:	10400006 	beqz	v0,4fb84c <adPoeStmEnter_xs2184@@Base+0x60>
  4fb834:	24020003 	li	v0,3
  4fb838:	24020001 	li	v0,1
  4fb83c:	14c20060 	bne	a2,v0,4fb9c0 <adPoeStmEnter_xs2184@@Base+0x1d4>
  4fb840:	00000000 	nop
  4fb844:	10000007 	b	4fb864 <adPoeStmEnter_xs2184@@Base+0x78>
  4fb848:	00000000 	nop
  4fb84c:	10c20016 	beq	a2,v0,4fb8a8 <adPoeStmEnter_xs2184@@Base+0xbc>
  4fb850:	24020004 	li	v0,4
  4fb854:	14c2005a 	bne	a2,v0,4fb9c0 <adPoeStmEnter_xs2184@@Base+0x1d4>
  4fb858:	00000000 	nop
  4fb85c:	10000040 	b	4fb960 <adPoeStmEnter_xs2184@@Base+0x174>
  4fb860:	00000000 	nop
  4fb864:	8c840000 	lw	a0,0(a0)
  4fb868:	8f99e350 	lw	t9,-7344(gp)
  4fb86c:	00000000 	nop
  4fb870:	0320f809 	jalr	t9
  4fb874:	00000000 	nop
  4fb878:	10000006 	b	4fb894 <adPoeStmEnter_xs2184@@Base+0xa8>
  4fb87c:	00000000 	nop
  4fb880:	8c840000 	lw	a0,0(a0)
  4fb884:	8f99adf4 	lw	t9,-21004(gp)
  4fb888:	00000000 	nop
  4fb88c:	0320f809 	jalr	t9
  4fb890:	00000000 	nop
  4fb894:	8fbc0010 	lw	gp,16(sp)
  4fb898:	8e040000 	lw	a0,0(s0)
  4fb89c:	8f99e738 	lw	t9,-6344(gp)
  4fb8a0:	1000002b 	b	4fb950 <adPoeStmEnter_xs2184@@Base+0x164>
  4fb8a4:	00002821 	move	a1,zero
  4fb8a8:	8f99adf4 	lw	t9,-21004(gp)
  4fb8ac:	8c840000 	lw	a0,0(a0)
  4fb8b0:	0320f809 	jalr	t9
  4fb8b4:	00000000 	nop
  4fb8b8:	8fbc0010 	lw	gp,16(sp)
  4fb8bc:	8e040000 	lw	a0,0(s0)
  4fb8c0:	27a60018 	addiu	a2,sp,24
  4fb8c4:	8f99d514 	lw	t9,-10988(gp)
  4fb8c8:	27a5001c 	addiu	a1,sp,28
  4fb8cc:	afa00018 	sw	zero,24(sp)
  4fb8d0:	afa0001c 	sw	zero,28(sp)
  4fb8d4:	afa00020 	sw	zero,32(sp)
  4fb8d8:	0320f809 	jalr	t9
  4fb8dc:	afa00024 	sw	zero,36(sp)
  4fb8e0:	8fbc0010 	lw	gp,16(sp)
  4fb8e4:	8e040000 	lw	a0,0(s0)
  4fb8e8:	8f99ae14 	lw	t9,-20972(gp)
  4fb8ec:	00000000 	nop
  4fb8f0:	0320f809 	jalr	t9
  4fb8f4:	27a50020 	addiu	a1,sp,32
  4fb8f8:	8fbc0010 	lw	gp,16(sp)
  4fb8fc:	8e040000 	lw	a0,0(s0)
  4fb900:	8f99a0c4 	lw	t9,-24380(gp)
  4fb904:	00000000 	nop
  4fb908:	0320f809 	jalr	t9
  4fb90c:	27a50024 	addiu	a1,sp,36
  4fb910:	8fa2001c 	lw	v0,28(sp)
  4fb914:	8fbc0010 	lw	gp,16(sp)
  4fb918:	1451000a 	bne	v0,s1,4fb944 <adPoeStmEnter_xs2184@@Base+0x158>
  4fb91c:	24050002 	li	a1,2
  4fb920:	8fa30024 	lw	v1,36(sp)
  4fb924:	8fa20020 	lw	v0,32(sp)
  4fb928:	8e040000 	lw	a0,0(s0)
  4fb92c:	8f99e738 	lw	t9,-6344(gp)
  4fb930:	0062102a 	slt	v0,v1,v0
  4fb934:	14400006 	bnez	v0,4fb950 <adPoeStmEnter_xs2184@@Base+0x164>
  4fb938:	24050003 	li	a1,3
  4fb93c:	10000004 	b	4fb950 <adPoeStmEnter_xs2184@@Base+0x164>
  4fb940:	24050002 	li	a1,2
  4fb944:	8e040000 	lw	a0,0(s0)
  4fb948:	8f99e738 	lw	t9,-6344(gp)
  4fb94c:	00000000 	nop
  4fb950:	0320f809 	jalr	t9
  4fb954:	00000000 	nop
  4fb958:	10000018 	b	4fb9bc <adPoeStmEnter_xs2184@@Base+0x1d0>
  4fb95c:	00000000 	nop
  4fb960:	8f99adf4 	lw	t9,-21004(gp)
  4fb964:	8c840000 	lw	a0,0(a0)
  4fb968:	0320f809 	jalr	t9
  4fb96c:	00000000 	nop
  4fb970:	8fbc0010 	lw	gp,16(sp)
  4fb974:	8e040000 	lw	a0,0(s0)
  4fb978:	8f99e738 	lw	t9,-6344(gp)
  4fb97c:	00000000 	nop
  4fb980:	0320f809 	jalr	t9
  4fb984:	24050004 	li	a1,4
  4fb988:	8fbc0010 	lw	gp,16(sp)
  4fb98c:	8e040000 	lw	a0,0(s0)
  4fb990:	8f9986c0 	lw	t9,-31040(gp)
  4fb994:	00000000 	nop
  4fb998:	0320f809 	jalr	t9
  4fb99c:	00002821 	move	a1,zero
  4fb9a0:	8fbc0010 	lw	gp,16(sp)
  4fb9a4:	8e040000 	lw	a0,0(s0)
  4fb9a8:	24050007 	li	a1,7
  4fb9ac:	8f99c78c 	lw	t9,-14452(gp)
  4fb9b0:	00000000 	nop
  4fb9b4:	0320f809 	jalr	t9
  4fb9b8:	24060007 	li	a2,7
  4fb9bc:	8fbc0010 	lw	gp,16(sp)
  4fb9c0:	ae510000 	sw	s1,0(s2)
  4fb9c4:	8fbf0034 	lw	ra,52(sp)
  4fb9c8:	8fb20030 	lw	s2,48(sp)
  4fb9cc:	8fb1002c 	lw	s1,44(sp)
  4fb9d0:	8fb00028 	lw	s0,40(sp)
  4fb9d4:	03e00008 	jr	ra
  4fb9d8:	27bd0038 	addiu	sp,sp,56

004fb9dc <adPoeStmStep_xs2184@@Base>:
  4fb9dc:	3c1c00a2 	lui	gp,0xa2
  4fb9e0:	279c5f34 	addiu	gp,gp,24372
  4fb9e4:	0399e021 	addu	gp,gp,t9
  4fb9e8:	27bdffd8 	addiu	sp,sp,-40
  4fb9ec:	afbf0024 	sw	ra,36(sp)
  4fb9f0:	afb10020 	sw	s1,32(sp)
  4fb9f4:	afb0001c 	sw	s0,28(sp)
  4fb9f8:	afbc0010 	sw	gp,16(sp)
  4fb9fc:	00808021 	move	s0,a0
  4fba00:	1080009b 	beqz	a0,4fbc70 <adPoeStmStep_xs2184@@Base+0x294>
  4fba04:	00a08821 	move	s1,a1
  4fba08:	10a00099 	beqz	a1,4fbc70 <adPoeStmStep_xs2184@@Base+0x294>
  4fba0c:	00000000 	nop
  4fba10:	8ca30000 	lw	v1,0(a1)
  4fba14:	00000000 	nop
  4fba18:	2c620005 	sltiu	v0,v1,5
  4fba1c:	10400094 	beqz	v0,4fbc70 <adPoeStmStep_xs2184@@Base+0x294>
  4fba20:	00031080 	sll	v0,v1,0x2
  4fba24:	8f838028 	lw	v1,-32728(gp)
  4fba28:	00000000 	nop
  4fba2c:	2463036c 	addiu	v1,v1,876
  4fba30:	00621821 	addu	v1,v1,v0
  4fba34:	8c620000 	lw	v0,0(v1)
  4fba38:	00000000 	nop
  4fba3c:	005c1021 	addu	v0,v0,gp
  4fba40:	00400008 	jr	v0
  4fba44:	00000000 	nop
  4fba48:	8c82002c 	lw	v0,44(a0)
  4fba4c:	3c031000 	lui	v1,0x1000
  4fba50:	3464ff00 	ori	a0,v1,0xff00
  4fba54:	00441024 	and	v0,v0,a0
  4fba58:	34630400 	ori	v1,v1,0x400
  4fba5c:	14430032 	bne	v0,v1,4fbb28 <adPoeStmStep_xs2184@@Base+0x14c>
  4fba60:	00000000 	nop
  4fba64:	8f99c078 	lw	t9,-16264(gp)
  4fba68:	9204002f 	lbu	a0,47(s0)
  4fba6c:	0320f809 	jalr	t9
  4fba70:	00000000 	nop
  4fba74:	8fbc0010 	lw	gp,16(sp)
  4fba78:	1040002b 	beqz	v0,4fbb28 <adPoeStmStep_xs2184@@Base+0x14c>
  4fba7c:	24020001 	li	v0,1
  4fba80:	8e030004 	lw	v1,4(s0)
  4fba84:	00000000 	nop
  4fba88:	14620027 	bne	v1,v0,4fbb28 <adPoeStmStep_xs2184@@Base+0x14c>
  4fba8c:	3c030008 	lui	v1,0x8
  4fba90:	8e02002c 	lw	v0,44(s0)
  4fba94:	00000000 	nop
  4fba98:	00431024 	and	v0,v0,v1
  4fba9c:	14400022 	bnez	v0,4fbb28 <adPoeStmStep_xs2184@@Base+0x14c>
  4fbaa0:	00000000 	nop
  4fbaa4:	10000041 	b	4fbbac <adPoeStmStep_xs2184@@Base+0x1d0>
  4fbaa8:	00000000 	nop
  4fbaac:	8c82002c 	lw	v0,44(a0)
  4fbab0:	3c030200 	lui	v1,0x200
  4fbab4:	00431024 	and	v0,v0,v1
  4fbab8:	1040000b 	beqz	v0,4fbae8 <adPoeStmStep_xs2184@@Base+0x10c>
  4fbabc:	00000000 	nop
  4fbac0:	8f83add4 	lw	v1,-21036(gp)
  4fbac4:	00000000 	nop
  4fbac8:	8c620000 	lw	v0,0(v1)
  4fbacc:	00000000 	nop
  4fbad0:	14400005 	bnez	v0,4fbae8 <adPoeStmStep_xs2184@@Base+0x10c>
  4fbad4:	24020001 	li	v0,1
  4fbad8:	ac620000 	sw	v0,0(v1)
  4fbadc:	8f82d590 	lw	v0,-10864(gp)
  4fbae0:	00000000 	nop
  4fbae4:	ac400000 	sw	zero,0(v0)
  4fbae8:	8e04002c 	lw	a0,44(s0)
  4fbaec:	3c020100 	lui	v0,0x100
  4fbaf0:	3442ff00 	ori	v0,v0,0xff00
  4fbaf4:	00821024 	and	v0,a0,v0
  4fbaf8:	24030400 	li	v1,1024
  4fbafc:	1043000d 	beq	v0,v1,4fbb34 <adPoeStmStep_xs2184@@Base+0x158>
  4fbb00:	3c020008 	lui	v0,0x8
  4fbb04:	00821024 	and	v0,a0,v0
  4fbb08:	1440000b 	bnez	v0,4fbb38 <adPoeStmStep_xs2184@@Base+0x15c>
  4fbb0c:	3c020808 	lui	v0,0x808
  4fbb10:	8f99cf50 	lw	t9,-12464(gp)
  4fbb14:	00000000 	nop
  4fbb18:	0320f809 	jalr	t9
  4fbb1c:	00000000 	nop
  4fbb20:	8fbc0010 	lw	gp,16(sp)
  4fbb24:	00000000 	nop
  4fbb28:	8f99ffb8 	lw	t9,-72(gp)
  4fbb2c:	10000045 	b	4fbc44 <adPoeStmStep_xs2184@@Base+0x268>
  4fbb30:	02002021 	move	a0,s0
  4fbb34:	3c020808 	lui	v0,0x808
  4fbb38:	00821024 	and	v0,a0,v0
  4fbb3c:	3c030800 	lui	v1,0x800
  4fbb40:	14430008 	bne	v0,v1,4fbb64 <adPoeStmStep_xs2184@@Base+0x188>
  4fbb44:	3c020008 	lui	v0,0x8
  4fbb48:	8f99cf50 	lw	t9,-12464(gp)
  4fbb4c:	00000000 	nop
  4fbb50:	0320f809 	jalr	t9
  4fbb54:	00000000 	nop
  4fbb58:	8fbc0010 	lw	gp,16(sp)
  4fbb5c:	10000027 	b	4fbbfc <adPoeStmStep_xs2184@@Base+0x220>
  4fbb60:	00000000 	nop
  4fbb64:	00821024 	and	v0,a0,v0
  4fbb68:	14400015 	bnez	v0,4fbbc0 <adPoeStmStep_xs2184@@Base+0x1e4>
  4fbb6c:	00000000 	nop
  4fbb70:	8f82add4 	lw	v0,-21036(gp)
  4fbb74:	00000000 	nop
  4fbb78:	8c420000 	lw	v0,0(v0)
  4fbb7c:	00000000 	nop
  4fbb80:	1040000a 	beqz	v0,4fbbac <adPoeStmStep_xs2184@@Base+0x1d0>
  4fbb84:	00000000 	nop
  4fbb88:	8f83d590 	lw	v1,-10864(gp)
  4fbb8c:	00000000 	nop
  4fbb90:	8c640000 	lw	a0,0(v1)
  4fbb94:	00000000 	nop
  4fbb98:	24820001 	addiu	v0,a0,1
  4fbb9c:	ac620000 	sw	v0,0(v1)
  4fbba0:	24020003 	li	v0,3
  4fbba4:	1082ffda 	beq	a0,v0,4fbb10 <adPoeStmStep_xs2184@@Base+0x134>
  4fbba8:	00000000 	nop
  4fbbac:	8f99ffb8 	lw	t9,-72(gp)
  4fbbb0:	02002021 	move	a0,s0
  4fbbb4:	02202821 	move	a1,s1
  4fbbb8:	10000028 	b	4fbc5c <adPoeStmStep_xs2184@@Base+0x280>
  4fbbbc:	24060002 	li	a2,2
  4fbbc0:	8f99cf50 	lw	t9,-12464(gp)
  4fbbc4:	00000000 	nop
  4fbbc8:	0320f809 	jalr	t9
  4fbbcc:	00000000 	nop
  4fbbd0:	8fbc0010 	lw	gp,16(sp)
  4fbbd4:	00000000 	nop
  4fbbd8:	8f99ffb8 	lw	t9,-72(gp)
  4fbbdc:	1000000f 	b	4fbc1c <adPoeStmStep_xs2184@@Base+0x240>
  4fbbe0:	02002021 	move	a0,s0
  4fbbe4:	8c84002c 	lw	a0,44(a0)
  4fbbe8:	3c020808 	lui	v0,0x808
  4fbbec:	3c030800 	lui	v1,0x800
  4fbbf0:	00821024 	and	v0,a0,v0
  4fbbf4:	14430004 	bne	v0,v1,4fbc08 <adPoeStmStep_xs2184@@Base+0x22c>
  4fbbf8:	3c020008 	lui	v0,0x8
  4fbbfc:	8f99ffb8 	lw	t9,-72(gp)
  4fbc00:	10000014 	b	4fbc54 <adPoeStmStep_xs2184@@Base+0x278>
  4fbc04:	02002021 	move	a0,s0
  4fbc08:	00821024 	and	v0,a0,v0
  4fbc0c:	8f99ffb8 	lw	t9,-72(gp)
  4fbc10:	1040000b 	beqz	v0,4fbc40 <adPoeStmStep_xs2184@@Base+0x264>
  4fbc14:	00000000 	nop
  4fbc18:	02002021 	move	a0,s0
  4fbc1c:	02202821 	move	a1,s1
  4fbc20:	1000000e 	b	4fbc5c <adPoeStmStep_xs2184@@Base+0x280>
  4fbc24:	24060003 	li	a2,3
  4fbc28:	8c82002c 	lw	v0,44(a0)
  4fbc2c:	3c030008 	lui	v1,0x8
  4fbc30:	8f99ffb8 	lw	t9,-72(gp)
  4fbc34:	00431024 	and	v0,v0,v1
  4fbc38:	14400005 	bnez	v0,4fbc50 <adPoeStmStep_xs2184@@Base+0x274>
  4fbc3c:	00000000 	nop
  4fbc40:	02002021 	move	a0,s0
  4fbc44:	02202821 	move	a1,s1
  4fbc48:	10000004 	b	4fbc5c <adPoeStmStep_xs2184@@Base+0x280>
  4fbc4c:	24060001 	li	a2,1
  4fbc50:	02002021 	move	a0,s0
  4fbc54:	02202821 	move	a1,s1
  4fbc58:	24060004 	li	a2,4
  4fbc5c:	8fbf0024 	lw	ra,36(sp)
  4fbc60:	8fb10020 	lw	s1,32(sp)
  4fbc64:	8fb0001c 	lw	s0,28(sp)
  4fbc68:	03200008 	jr	t9
  4fbc6c:	27bd0028 	addiu	sp,sp,40
  4fbc70:	8fbf0024 	lw	ra,36(sp)
  4fbc74:	8fb10020 	lw	s1,32(sp)
  4fbc78:	8fb0001c 	lw	s0,28(sp)
  4fbc7c:	03e00008 	jr	ra
  4fbc80:	27bd0028 	addiu	sp,sp,40

004fbc84 <adPoeSetPortPowerLimt@@Base>:
  4fbc84:	3c1c00a2 	lui	gp,0xa2
  4fbc88:	279c5c8c 	addiu	gp,gp,23692
  4fbc8c:	0399e021 	addu	gp,gp,t9
  4fbc90:	27bdffd0 	addiu	sp,sp,-48
  4fbc94:	afbf002c 	sw	ra,44(sp)
  4fbc98:	afb40028 	sw	s4,40(sp)
  4fbc9c:	afb30024 	sw	s3,36(sp)
  4fbca0:	afb20020 	sw	s2,32(sp)
  4fbca4:	afb1001c 	sw	s1,28(sp)
  4fbca8:	afb00018 	sw	s0,24(sp)
  4fbcac:	afbc0010 	sw	gp,16(sp)
  4fbcb0:	8f93a3dc 	lw	s3,-23588(gp)
  4fbcb4:	00809021 	move	s2,a0
  4fbcb8:	8e62000c 	lw	v0,12(s3)
  4fbcbc:	00000000 	nop
  4fbcc0:	0082102a 	slt	v0,a0,v0
  4fbcc4:	1440001e 	bnez	v0,4fbd40 <adPoeSetPortPowerLimt@@Base+0xbc>
  4fbcc8:	00a0a021 	move	s4,a1
  4fbccc:	8e620010 	lw	v0,16(s3)
  4fbcd0:	00000000 	nop
  4fbcd4:	0044102a 	slt	v0,v0,a0
  4fbcd8:	14400019 	bnez	v0,4fbd40 <adPoeSetPortPowerLimt@@Base+0xbc>
  4fbcdc:	00000000 	nop
  4fbce0:	04a00017 	bltz	a1,4fbd40 <adPoeSetPortPowerLimt@@Base+0xbc>
  4fbce4:	2405ffff 	li	a1,-1
  4fbce8:	8f908030 	lw	s0,-32720(gp)
  4fbcec:	8f918028 	lw	s1,-32728(gp)
  4fbcf0:	8f99fb20 	lw	t9,-1248(gp)
  4fbcf4:	8e04e13c 	lw	a0,-7876(s0)
  4fbcf8:	262604e4 	addiu	a2,s1,1252
  4fbcfc:	0320f809 	jalr	t9
  4fbd00:	240713b3 	li	a3,5043
  4fbd04:	2643ffff 	addiu	v1,s2,-1
  4fbd08:	2402004c 	li	v0,76
  4fbd0c:	00620018 	mult	v1,v0
  4fbd10:	8fbc0010 	lw	gp,16(sp)
  4fbd14:	8e04e13c 	lw	a0,-7876(s0)
  4fbd18:	262504e4 	addiu	a1,s1,1252
  4fbd1c:	8f99cb7c 	lw	t9,-13444(gp)
  4fbd20:	240613b5 	li	a2,5045
  4fbd24:	00001812 	mflo	v1
  4fbd28:	02631821 	addu	v1,s3,v1
  4fbd2c:	0320f809 	jalr	t9
  4fbd30:	ac74002c 	sw	s4,44(v1)
  4fbd34:	8fbc0010 	lw	gp,16(sp)
  4fbd38:	10000002 	b	4fbd44 <adPoeSetPortPowerLimt@@Base+0xc0>
  4fbd3c:	00001021 	move	v0,zero
  4fbd40:	24020001 	li	v0,1
  4fbd44:	8fbf002c 	lw	ra,44(sp)
  4fbd48:	8fb40028 	lw	s4,40(sp)
  4fbd4c:	8fb30024 	lw	s3,36(sp)
  4fbd50:	8fb20020 	lw	s2,32(sp)
  4fbd54:	8fb1001c 	lw	s1,28(sp)
  4fbd58:	8fb00018 	lw	s0,24(sp)
  4fbd5c:	03e00008 	jr	ra
  4fbd60:	27bd0030 	addiu	sp,sp,48

004fbd64 <adPoeGetSysPowerCons@@Base>:
  4fbd64:	3c1c00a2 	lui	gp,0xa2
  4fbd68:	279c5bac 	addiu	gp,gp,23468
  4fbd6c:	0399e021 	addu	gp,gp,t9
  4fbd70:	27bdffe0 	addiu	sp,sp,-32
  4fbd74:	afbf001c 	sw	ra,28(sp)
  4fbd78:	afb00018 	sw	s0,24(sp)
  4fbd7c:	afbc0010 	sw	gp,16(sp)
  4fbd80:	00808021 	move	s0,a0
  4fbd84:	10800028 	beqz	a0,4fbe28 <adPoeGetSysPowerCons@@Base+0xc4>
  4fbd88:	24020001 	li	v0,1
  4fbd8c:	8f828030 	lw	v0,-32720(gp)
  4fbd90:	8f868028 	lw	a2,-32728(gp)
  4fbd94:	8f99fb20 	lw	t9,-1248(gp)
  4fbd98:	8c44e13c 	lw	a0,-7876(v0)
  4fbd9c:	24c604e4 	addiu	a2,a2,1252
  4fbda0:	2405ffff 	li	a1,-1
  4fbda4:	0320f809 	jalr	t9
  4fbda8:	24071388 	li	a3,5000
  4fbdac:	8fbc0010 	lw	gp,16(sp)
  4fbdb0:	2403004c 	li	v1,76
  4fbdb4:	00003021 	move	a2,zero
  4fbdb8:	8f84a3dc 	lw	a0,-23588(gp)
  4fbdbc:	00000000 	nop
  4fbdc0:	8c85000c 	lw	a1,12(a0)
  4fbdc4:	8c870010 	lw	a3,16(a0)
  4fbdc8:	24a2ffff 	addiu	v0,a1,-1
  4fbdcc:	00430018 	mult	v0,v1
  4fbdd0:	00001012 	mflo	v0
  4fbdd4:	00822021 	addu	a0,a0,v0
  4fbdd8:	10000004 	b	4fbdec <adPoeGetSysPowerCons@@Base+0x88>
  4fbddc:	24840040 	addiu	a0,a0,64
  4fbde0:	8c820000 	lw	v0,0(a0)
  4fbde4:	2484004c 	addiu	a0,a0,76
  4fbde8:	00c23021 	addu	a2,a2,v0
  4fbdec:	00e5102a 	slt	v0,a3,a1
  4fbdf0:	1040fffb 	beqz	v0,4fbde0 <adPoeGetSysPowerCons@@Base+0x7c>
  4fbdf4:	24a50001 	addiu	a1,a1,1
  4fbdf8:	8f828030 	lw	v0,-32720(gp)
  4fbdfc:	8f858028 	lw	a1,-32728(gp)
  4fbe00:	8f99cb7c 	lw	t9,-13444(gp)
  4fbe04:	8c44e13c 	lw	a0,-7876(v0)
  4fbe08:	8f82a3dc 	lw	v0,-23588(gp)
  4fbe0c:	24a504e4 	addiu	a1,a1,1252
  4fbe10:	ac46001c 	sw	a2,28(v0)
  4fbe14:	ae060000 	sw	a2,0(s0)
  4fbe18:	0320f809 	jalr	t9
  4fbe1c:	24061391 	li	a2,5009
  4fbe20:	8fbc0010 	lw	gp,16(sp)
  4fbe24:	00001021 	move	v0,zero
  4fbe28:	8fbf001c 	lw	ra,28(sp)
  4fbe2c:	8fb00018 	lw	s0,24(sp)
  4fbe30:	03e00008 	jr	ra
  4fbe34:	27bd0020 	addiu	sp,sp,32

004fbe38 <adPoeGetSysPowerLimt@@Base>:
  4fbe38:	3c1c00a2 	lui	gp,0xa2
  4fbe3c:	279c5ad8 	addiu	gp,gp,23256
  4fbe40:	0399e021 	addu	gp,gp,t9
  4fbe44:	27bdffd8 	addiu	sp,sp,-40
  4fbe48:	afbf0024 	sw	ra,36(sp)
  4fbe4c:	afb20020 	sw	s2,32(sp)
  4fbe50:	afb1001c 	sw	s1,28(sp)
  4fbe54:	afb00018 	sw	s0,24(sp)
  4fbe58:	afbc0010 	sw	gp,16(sp)
  4fbe5c:	00809021 	move	s2,a0
  4fbe60:	10800014 	beqz	a0,4fbeb4 <adPoeGetSysPowerLimt@@Base+0x7c>
  4fbe64:	24020001 	li	v0,1
  4fbe68:	8f908030 	lw	s0,-32720(gp)
  4fbe6c:	8f918028 	lw	s1,-32728(gp)
  4fbe70:	8f99fb20 	lw	t9,-1248(gp)
  4fbe74:	8e04e13c 	lw	a0,-7876(s0)
  4fbe78:	2405ffff 	li	a1,-1
  4fbe7c:	262604e4 	addiu	a2,s1,1252
  4fbe80:	0320f809 	jalr	t9
  4fbe84:	24071364 	li	a3,4964
  4fbe88:	8fbc0010 	lw	gp,16(sp)
  4fbe8c:	8e04e13c 	lw	a0,-7876(s0)
  4fbe90:	262504e4 	addiu	a1,s1,1252
  4fbe94:	8f82a3dc 	lw	v0,-23588(gp)
  4fbe98:	8f99cb7c 	lw	t9,-13444(gp)
  4fbe9c:	24061368 	li	a2,4968
  4fbea0:	8c420018 	lw	v0,24(v0)
  4fbea4:	0320f809 	jalr	t9
  4fbea8:	ae420000 	sw	v0,0(s2)
  4fbeac:	8fbc0010 	lw	gp,16(sp)
  4fbeb0:	00001021 	move	v0,zero
  4fbeb4:	8fbf0024 	lw	ra,36(sp)
  4fbeb8:	8fb20020 	lw	s2,32(sp)
  4fbebc:	8fb1001c 	lw	s1,28(sp)
  4fbec0:	8fb00018 	lw	s0,24(sp)
  4fbec4:	03e00008 	jr	ra
  4fbec8:	27bd0028 	addiu	sp,sp,40

004fbecc <adPoeUpdatePoeMaxLed@@Base>:
  4fbecc:	3c1c00a2 	lui	gp,0xa2
  4fbed0:	279c5a44 	addiu	gp,gp,23108
  4fbed4:	0399e021 	addu	gp,gp,t9
  4fbed8:	27bdffc8 	addiu	sp,sp,-56
  4fbedc:	afbf0034 	sw	ra,52(sp)
  4fbee0:	afb10030 	sw	s1,48(sp)
  4fbee4:	afb0002c 	sw	s0,44(sp)
  4fbee8:	afbc0010 	sw	gp,16(sp)
  4fbeec:	8f99fa34 	lw	t9,-1484(gp)
  4fbef0:	27a40018 	addiu	a0,sp,24
  4fbef4:	afa00018 	sw	zero,24(sp)
  4fbef8:	afa0001c 	sw	zero,28(sp)
  4fbefc:	afa00020 	sw	zero,32(sp)
  4fbf00:	0320f809 	jalr	t9
  4fbf04:	afa00024 	sw	zero,36(sp)
  4fbf08:	8fbc0010 	lw	gp,16(sp)
  4fbf0c:	00000000 	nop
  4fbf10:	8f9986ec 	lw	t9,-30996(gp)
  4fbf14:	00000000 	nop
  4fbf18:	0320f809 	jalr	t9
  4fbf1c:	27a4001c 	addiu	a0,sp,28
  4fbf20:	8fbc0010 	lw	gp,16(sp)
  4fbf24:	00000000 	nop
  4fbf28:	8f848030 	lw	a0,-32720(gp)
  4fbf2c:	00000000 	nop
  4fbf30:	8c83e148 	lw	v1,-7864(a0)
  4fbf34:	00000000 	nop
  4fbf38:	1460002a 	bnez	v1,4fbfe4 <adPoeUpdatePoeMaxLed@@Base+0x118>
  4fbf3c:	24020001 	li	v0,1
  4fbf40:	8f919130 	lw	s1,-28368(gp)
  4fbf44:	2410ffff 	li	s0,-1
  4fbf48:	8e240000 	lw	a0,0(s1)
  4fbf4c:	00000000 	nop
  4fbf50:	10900007 	beq	a0,s0,4fbf70 <adPoeUpdatePoeMaxLed@@Base+0xa4>
  4fbf54:	00000000 	nop
  4fbf58:	8f99b468 	lw	t9,-19352(gp)
  4fbf5c:	00000000 	nop
  4fbf60:	0320f809 	jalr	t9
  4fbf64:	00000000 	nop
  4fbf68:	8fbc0010 	lw	gp,16(sp)
  4fbf6c:	ae300000 	sw	s0,0(s1)
  4fbf70:	8fa20018 	lw	v0,24(sp)
  4fbf74:	8fa3001c 	lw	v1,28(sp)
  4fbf78:	24420044 	addiu	v0,v0,68
  4fbf7c:	0043102a 	slt	v0,v0,v1
  4fbf80:	14400015 	bnez	v0,4fbfd8 <adPoeUpdatePoeMaxLed@@Base+0x10c>
  4fbf84:	24030001 	li	v1,1
  4fbf88:	8f828030 	lw	v0,-32720(gp)
  4fbf8c:	8f99d3b8 	lw	t9,-11336(gp)
  4fbf90:	00000000 	nop
  4fbf94:	0320f809 	jalr	t9
  4fbf98:	ac43e148 	sw	v1,-7864(v0)
  4fbf9c:	8fbc0010 	lw	gp,16(sp)
  4fbfa0:	24020078 	li	v0,120
  4fbfa4:	afa20020 	sw	v0,32(sp)
  4fbfa8:	8f99f70c 	lw	t9,-2292(gp)
  4fbfac:	8f85e958 	lw	a1,-5800(gp)
  4fbfb0:	afa00024 	sw	zero,36(sp)
  4fbfb4:	27a40020 	addiu	a0,sp,32
  4fbfb8:	00003021 	move	a2,zero
  4fbfbc:	0320f809 	jalr	t9
  4fbfc0:	24070001 	li	a3,1
  4fbfc4:	8fbc0010 	lw	gp,16(sp)
  4fbfc8:	00000000 	nop
  4fbfcc:	8f839130 	lw	v1,-28368(gp)
  4fbfd0:	1000001f 	b	4fc050 <adPoeUpdatePoeMaxLed@@Base+0x184>
  4fbfd4:	ac620000 	sw	v0,0(v1)
  4fbfd8:	8f99b400 	lw	t9,-19456(gp)
  4fbfdc:	10000019 	b	4fc044 <adPoeUpdatePoeMaxLed@@Base+0x178>
  4fbfe0:	00000000 	nop
  4fbfe4:	1462000a 	bne	v1,v0,4fc010 <adPoeUpdatePoeMaxLed@@Base+0x144>
  4fbfe8:	24020002 	li	v0,2
  4fbfec:	8fa20018 	lw	v0,24(sp)
  4fbff0:	8fa3001c 	lw	v1,28(sp)
  4fbff4:	24420048 	addiu	v0,v0,72
  4fbff8:	0062102a 	slt	v0,v1,v0
  4fbffc:	1040000c 	beqz	v0,4fc030 <adPoeUpdatePoeMaxLed@@Base+0x164>
  4fc000:	00000000 	nop
  4fc004:	8f99d3b8 	lw	t9,-11336(gp)
  4fc008:	1000000e 	b	4fc044 <adPoeUpdatePoeMaxLed@@Base+0x178>
  4fc00c:	00000000 	nop
  4fc010:	1462000f 	bne	v1,v0,4fc050 <adPoeUpdatePoeMaxLed@@Base+0x184>
  4fc014:	00000000 	nop
  4fc018:	8fa20018 	lw	v0,24(sp)
  4fc01c:	8fa3001c 	lw	v1,28(sp)
  4fc020:	24420048 	addiu	v0,v0,72
  4fc024:	0062102a 	slt	v0,v1,v0
  4fc028:	14400004 	bnez	v0,4fc03c <adPoeUpdatePoeMaxLed@@Base+0x170>
  4fc02c:	00000000 	nop
  4fc030:	8f99b400 	lw	t9,-19456(gp)
  4fc034:	10000003 	b	4fc044 <adPoeUpdatePoeMaxLed@@Base+0x178>
  4fc038:	ac80e148 	sw	zero,-7864(a0)
  4fc03c:	8f99bc34 	lw	t9,-17356(gp)
  4fc040:	00000000 	nop
  4fc044:	0320f809 	jalr	t9
  4fc048:	00000000 	nop
  4fc04c:	8fbc0010 	lw	gp,16(sp)
  4fc050:	8fbf0034 	lw	ra,52(sp)
  4fc054:	8fb10030 	lw	s1,48(sp)
  4fc058:	8fb0002c 	lw	s0,44(sp)
  4fc05c:	03e00008 	jr	ra
  4fc060:	27bd0038 	addiu	sp,sp,56

004fc064 <adPoePortCheckPowerAllowed_2388x@@Base>:
  4fc064:	3c1c00a2 	lui	gp,0xa2
  4fc068:	279c58ac 	addiu	gp,gp,22700
  4fc06c:	0399e021 	addu	gp,gp,t9
  4fc070:	27bdffd0 	addiu	sp,sp,-48
  4fc074:	afbf002c 	sw	ra,44(sp)
  4fc078:	afb20028 	sw	s2,40(sp)
  4fc07c:	afb10024 	sw	s1,36(sp)
  4fc080:	afb00020 	sw	s0,32(sp)
  4fc084:	afbc0010 	sw	gp,16(sp)
  4fc088:	8f83a3dc 	lw	v1,-23588(gp)
  4fc08c:	00808821 	move	s1,a0
  4fc090:	8c62000c 	lw	v0,12(v1)
  4fc094:	00000000 	nop
  4fc098:	0082102a 	slt	v0,a0,v0
  4fc09c:	14400046 	bnez	v0,4fc1b8 <adPoePortCheckPowerAllowed_2388x@@Base+0x154>
  4fc0a0:	00a09021 	move	s2,a1
  4fc0a4:	8c620010 	lw	v0,16(v1)
  4fc0a8:	00000000 	nop
  4fc0ac:	0044102a 	slt	v0,v0,a0
  4fc0b0:	14400042 	bnez	v0,4fc1bc <adPoePortCheckPowerAllowed_2388x@@Base+0x158>
  4fc0b4:	24020001 	li	v0,1
  4fc0b8:	8f9986ec 	lw	t9,-30996(gp)
  4fc0bc:	27a4001c 	addiu	a0,sp,28
  4fc0c0:	afa0001c 	sw	zero,28(sp)
  4fc0c4:	0320f809 	jalr	t9
  4fc0c8:	afa00018 	sw	zero,24(sp)
  4fc0cc:	8fbc0010 	lw	gp,16(sp)
  4fc0d0:	02202021 	move	a0,s1
  4fc0d4:	8f99aa84 	lw	t9,-21884(gp)
  4fc0d8:	00000000 	nop
  4fc0dc:	0320f809 	jalr	t9
  4fc0e0:	27a50018 	addiu	a1,sp,24
  4fc0e4:	8fb00018 	lw	s0,24(sp)
  4fc0e8:	2402014a 	li	v0,330
  4fc0ec:	8fbc0010 	lw	gp,16(sp)
  4fc0f0:	16020002 	bne	s0,v0,4fc0fc <adPoePortCheckPowerAllowed_2388x@@Base+0x98>
  4fc0f4:	2403004c 	li	v1,76
  4fc0f8:	2410009a 	li	s0,154
  4fc0fc:	2624ffff 	addiu	a0,s1,-1
  4fc100:	00830018 	mult	a0,v1
  4fc104:	8f82a3dc 	lw	v0,-23588(gp)
  4fc108:	00001812 	mflo	v1
  4fc10c:	00431021 	addu	v0,v0,v1
  4fc110:	90430054 	lbu	v1,84(v0)
  4fc114:	24020002 	li	v0,2
  4fc118:	14620023 	bne	v1,v0,4fc1a8 <adPoePortCheckPowerAllowed_2388x@@Base+0x144>
  4fc11c:	0212102a 	slt	v0,s0,s2
  4fc120:	32220001 	andi	v0,s1,0x1
  4fc124:	8f99aa84 	lw	t9,-21884(gp)
  4fc128:	10400002 	beqz	v0,4fc134 <adPoePortCheckPowerAllowed_2388x@@Base+0xd0>
  4fc12c:	27a50018 	addiu	a1,sp,24
  4fc130:	26240001 	addiu	a0,s1,1
  4fc134:	0320f809 	jalr	t9
  4fc138:	00000000 	nop
  4fc13c:	8fa20018 	lw	v0,24(sp)
  4fc140:	2403014a 	li	v1,330
  4fc144:	8fbc0010 	lw	gp,16(sp)
  4fc148:	14430003 	bne	v0,v1,4fc158 <adPoePortCheckPowerAllowed_2388x@@Base+0xf4>
  4fc14c:	00000000 	nop
  4fc150:	10000014 	b	4fc1a4 <adPoePortCheckPowerAllowed_2388x@@Base+0x140>
  4fc154:	2610009a 	addiu	s0,s0,154
  4fc158:	8f99cc78 	lw	t9,-13192(gp)
  4fc15c:	00000000 	nop
  4fc160:	0320f809 	jalr	t9
  4fc164:	00000000 	nop
  4fc168:	24030258 	li	v1,600
  4fc16c:	8fbc0010 	lw	gp,16(sp)
  4fc170:	14430009 	bne	v0,v1,4fc198 <adPoePortCheckPowerAllowed_2388x@@Base+0x134>
  4fc174:	240202ee 	li	v0,750
  4fc178:	8fa30018 	lw	v1,24(sp)
  4fc17c:	00000000 	nop
  4fc180:	10620003 	beq	v1,v0,4fc190 <adPoePortCheckPowerAllowed_2388x@@Base+0x12c>
  4fc184:	24020384 	li	v0,900
  4fc188:	14620003 	bne	v1,v0,4fc198 <adPoePortCheckPowerAllowed_2388x@@Base+0x134>
  4fc18c:	00000000 	nop
  4fc190:	10000004 	b	4fc1a4 <adPoePortCheckPowerAllowed_2388x@@Base+0x140>
  4fc194:	26100258 	addiu	s0,s0,600
  4fc198:	8fa20018 	lw	v0,24(sp)
  4fc19c:	00000000 	nop
  4fc1a0:	02028021 	addu	s0,s0,v0
  4fc1a4:	0212102a 	slt	v0,s0,s2
  4fc1a8:	14400003 	bnez	v0,4fc1b8 <adPoePortCheckPowerAllowed_2388x@@Base+0x154>
  4fc1ac:	02121023 	subu	v0,s0,s2
  4fc1b0:	10000002 	b	4fc1bc <adPoePortCheckPowerAllowed_2388x@@Base+0x158>
  4fc1b4:	2842012c 	slti	v0,v0,300
  4fc1b8:	24020001 	li	v0,1
  4fc1bc:	8fbf002c 	lw	ra,44(sp)
  4fc1c0:	8fb20028 	lw	s2,40(sp)
  4fc1c4:	8fb10024 	lw	s1,36(sp)
  4fc1c8:	8fb00020 	lw	s0,32(sp)
  4fc1cc:	03e00008 	jr	ra
  4fc1d0:	27bd0030 	addiu	sp,sp,48

004fc1d4 <adPoePortCheckPowerAllowed@@Base>:
  4fc1d4:	3c1c00a2 	lui	gp,0xa2
  4fc1d8:	279c573c 	addiu	gp,gp,22332
  4fc1dc:	0399e021 	addu	gp,gp,t9
  4fc1e0:	8f82a3dc 	lw	v0,-23588(gp)
  4fc1e4:	00000000 	nop
  4fc1e8:	8c430008 	lw	v1,8(v0)
  4fc1ec:	24020002 	li	v0,2
  4fc1f0:	10620003 	beq	v1,v0,4fc200 <adPoePortCheckPowerAllowed@@Base+0x2c>
  4fc1f4:	24020001 	li	v0,1
  4fc1f8:	03e00008 	jr	ra
  4fc1fc:	00000000 	nop
  4fc200:	8f99a5ac 	lw	t9,-23124(gp)
  4fc204:	00000000 	nop
  4fc208:	03200008 	jr	t9
  4fc20c:	00000000 	nop

004fc210 <adPoeSetSysPowerLimt@@Base>:
  4fc210:	3c1c00a2 	lui	gp,0xa2
  4fc214:	279c5700 	addiu	gp,gp,22272
  4fc218:	0399e021 	addu	gp,gp,t9
  4fc21c:	27bdffd8 	addiu	sp,sp,-40
  4fc220:	afbf0024 	sw	ra,36(sp)
  4fc224:	afb20020 	sw	s2,32(sp)
  4fc228:	afb1001c 	sw	s1,28(sp)
  4fc22c:	afb00018 	sw	s0,24(sp)
  4fc230:	afbc0010 	sw	gp,16(sp)
  4fc234:	8f908030 	lw	s0,-32720(gp)
  4fc238:	8f918028 	lw	s1,-32728(gp)
  4fc23c:	8f99fb20 	lw	t9,-1248(gp)
  4fc240:	00809021 	move	s2,a0
  4fc244:	8e04e13c 	lw	a0,-7876(s0)
  4fc248:	262604e4 	addiu	a2,s1,1252
  4fc24c:	24071345 	li	a3,4933
  4fc250:	0320f809 	jalr	t9
  4fc254:	2405ffff 	li	a1,-1
  4fc258:	8fbc0010 	lw	gp,16(sp)
  4fc25c:	8e04e13c 	lw	a0,-7876(s0)
  4fc260:	262504e4 	addiu	a1,s1,1252
  4fc264:	8f82a3dc 	lw	v0,-23588(gp)
  4fc268:	8f99cb7c 	lw	t9,-13444(gp)
  4fc26c:	24061347 	li	a2,4935
  4fc270:	0320f809 	jalr	t9
  4fc274:	ac520018 	sw	s2,24(v0)
  4fc278:	8fbc0010 	lw	gp,16(sp)
  4fc27c:	8fbf0024 	lw	ra,36(sp)
  4fc280:	8fb20020 	lw	s2,32(sp)
  4fc284:	8fb1001c 	lw	s1,28(sp)
  4fc288:	8fb00018 	lw	s0,24(sp)
  4fc28c:	00001021 	move	v0,zero
  4fc290:	03e00008 	jr	ra
  4fc294:	27bd0028 	addiu	sp,sp,40

004fc298 <adPoeGetPoePortLedState@@Base>:
  4fc298:	3c1c00a2 	lui	gp,0xa2
  4fc29c:	279c5678 	addiu	gp,gp,22136
  4fc2a0:	0399e021 	addu	gp,gp,t9
  4fc2a4:	27bdffd0 	addiu	sp,sp,-48
  4fc2a8:	afbf002c 	sw	ra,44(sp)
  4fc2ac:	afb40028 	sw	s4,40(sp)
  4fc2b0:	afb30024 	sw	s3,36(sp)
  4fc2b4:	afb20020 	sw	s2,32(sp)
  4fc2b8:	afb1001c 	sw	s1,28(sp)
  4fc2bc:	afb00018 	sw	s0,24(sp)
  4fc2c0:	afbc0010 	sw	gp,16(sp)
  4fc2c4:	8f93a3dc 	lw	s3,-23588(gp)
  4fc2c8:	00809021 	move	s2,a0
  4fc2cc:	8e62000c 	lw	v0,12(s3)
  4fc2d0:	00000000 	nop
  4fc2d4:	0082102a 	slt	v0,a0,v0
  4fc2d8:	1440001f 	bnez	v0,4fc358 <adPoeGetPoePortLedState@@Base+0xc0>
  4fc2dc:	00a0a021 	move	s4,a1
  4fc2e0:	8e620010 	lw	v0,16(s3)
  4fc2e4:	00000000 	nop
  4fc2e8:	0044102a 	slt	v0,v0,a0
  4fc2ec:	1440001a 	bnez	v0,4fc358 <adPoeGetPoePortLedState@@Base+0xc0>
  4fc2f0:	00000000 	nop
  4fc2f4:	10a00018 	beqz	a1,4fc358 <adPoeGetPoePortLedState@@Base+0xc0>
  4fc2f8:	2405ffff 	li	a1,-1
  4fc2fc:	8f908030 	lw	s0,-32720(gp)
  4fc300:	8f918028 	lw	s1,-32728(gp)
  4fc304:	8f99fb20 	lw	t9,-1248(gp)
  4fc308:	8e04e13c 	lw	a0,-7876(s0)
  4fc30c:	262604e4 	addiu	a2,s1,1252
  4fc310:	0320f809 	jalr	t9
  4fc314:	2407049a 	li	a3,1178
  4fc318:	2643ffff 	addiu	v1,s2,-1
  4fc31c:	2402004c 	li	v0,76
  4fc320:	00620018 	mult	v1,v0
  4fc324:	8fbc0010 	lw	gp,16(sp)
  4fc328:	8e04e13c 	lw	a0,-7876(s0)
  4fc32c:	262504e4 	addiu	a1,s1,1252
  4fc330:	8f99cb7c 	lw	t9,-13444(gp)
  4fc334:	2406049c 	li	a2,1180
  4fc338:	00001812 	mflo	v1
  4fc33c:	02631821 	addu	v1,s3,v1
  4fc340:	8c620064 	lw	v0,100(v1)
  4fc344:	0320f809 	jalr	t9
  4fc348:	ae820000 	sw	v0,0(s4)
  4fc34c:	8fbc0010 	lw	gp,16(sp)
  4fc350:	10000002 	b	4fc35c <adPoeGetPoePortLedState@@Base+0xc4>
  4fc354:	00001021 	move	v0,zero
  4fc358:	24020001 	li	v0,1
  4fc35c:	8fbf002c 	lw	ra,44(sp)
  4fc360:	8fb40028 	lw	s4,40(sp)
  4fc364:	8fb30024 	lw	s3,36(sp)
  4fc368:	8fb20020 	lw	s2,32(sp)
  4fc36c:	8fb1001c 	lw	s1,28(sp)
  4fc370:	8fb00018 	lw	s0,24(sp)
  4fc374:	03e00008 	jr	ra
  4fc378:	27bd0030 	addiu	sp,sp,48

004fc37c <adPoeSetPoePortLedState@@Base>:
  4fc37c:	3c1c00a2 	lui	gp,0xa2
  4fc380:	279c5594 	addiu	gp,gp,21908
  4fc384:	0399e021 	addu	gp,gp,t9
  4fc388:	27bdffd8 	addiu	sp,sp,-40
  4fc38c:	afbf0024 	sw	ra,36(sp)
  4fc390:	afb20020 	sw	s2,32(sp)
  4fc394:	afb1001c 	sw	s1,28(sp)
  4fc398:	afb00018 	sw	s0,24(sp)
  4fc39c:	afbc0010 	sw	gp,16(sp)
  4fc3a0:	8f91a3dc 	lw	s1,-23588(gp)
  4fc3a4:	00808021 	move	s0,a0
  4fc3a8:	8e22000c 	lw	v0,12(s1)
  4fc3ac:	00000000 	nop
  4fc3b0:	0082102a 	slt	v0,a0,v0
  4fc3b4:	14400025 	bnez	v0,4fc44c <adPoeSetPoePortLedState@@Base+0xd0>
  4fc3b8:	00a09021 	move	s2,a1
  4fc3bc:	8e220010 	lw	v0,16(s1)
  4fc3c0:	00000000 	nop
  4fc3c4:	0044102a 	slt	v0,v0,a0
  4fc3c8:	14400021 	bnez	v0,4fc450 <adPoeSetPoePortLedState@@Base+0xd4>
  4fc3cc:	24020001 	li	v0,1
  4fc3d0:	8f828030 	lw	v0,-32720(gp)
  4fc3d4:	8f868028 	lw	a2,-32728(gp)
  4fc3d8:	8f99fb20 	lw	t9,-1248(gp)
  4fc3dc:	8c44e13c 	lw	a0,-7876(v0)
  4fc3e0:	24c604e4 	addiu	a2,a2,1252
  4fc3e4:	2405ffff 	li	a1,-1
  4fc3e8:	0320f809 	jalr	t9
  4fc3ec:	24070475 	li	a3,1141
  4fc3f0:	2603ffff 	addiu	v1,s0,-1
  4fc3f4:	2402004c 	li	v0,76
  4fc3f8:	00620018 	mult	v1,v0
  4fc3fc:	26020547 	addiu	v0,s0,1351
  4fc400:	00021080 	sll	v0,v0,0x2
  4fc404:	02221021 	addu	v0,s1,v0
  4fc408:	8c420004 	lw	v0,4(v0)
  4fc40c:	8fbc0010 	lw	gp,16(sp)
  4fc410:	00001812 	mflo	v1
  4fc414:	02231821 	addu	v1,s1,v1
  4fc418:	14400002 	bnez	v0,4fc424 <adPoeSetPoePortLedState@@Base+0xa8>
  4fc41c:	ac720068 	sw	s2,104(v1)
  4fc420:	ac720064 	sw	s2,100(v1)
  4fc424:	8f828030 	lw	v0,-32720(gp)
  4fc428:	8f858028 	lw	a1,-32728(gp)
  4fc42c:	8f99cb7c 	lw	t9,-13444(gp)
  4fc430:	8c44e13c 	lw	a0,-7876(v0)
  4fc434:	24a504e4 	addiu	a1,a1,1252
  4fc438:	0320f809 	jalr	t9
  4fc43c:	2406047e 	li	a2,1150
  4fc440:	8fbc0010 	lw	gp,16(sp)
  4fc444:	10000002 	b	4fc450 <adPoeSetPoePortLedState@@Base+0xd4>
  4fc448:	00001021 	move	v0,zero
  4fc44c:	24020001 	li	v0,1
  4fc450:	8fbf0024 	lw	ra,36(sp)
  4fc454:	8fb20020 	lw	s2,32(sp)
  4fc458:	8fb1001c 	lw	s1,28(sp)
  4fc45c:	8fb00018 	lw	s0,24(sp)
  4fc460:	03e00008 	jr	ra
  4fc464:	27bd0028 	addiu	sp,sp,40
  4fc468:	3c1c00a2 	lui	gp,0xa2
  4fc46c:	279c54a8 	addiu	gp,gp,21672
  4fc470:	0399e021 	addu	gp,gp,t9
  4fc474:	27bdffe0 	addiu	sp,sp,-32
  4fc478:	afbf001c 	sw	ra,28(sp)
  4fc47c:	afb00018 	sw	s0,24(sp)
  4fc480:	afbc0010 	sw	gp,16(sp)
  4fc484:	8f998ae0 	lw	t9,-29984(gp)
  4fc488:	00000000 	nop
  4fc48c:	0320f809 	jalr	t9
  4fc490:	00000000 	nop
  4fc494:	8fbc0010 	lw	gp,16(sp)
  4fc498:	24030015 	li	v1,21
  4fc49c:	8f86a3dc 	lw	a2,-23588(gp)
  4fc4a0:	8f99dfe4 	lw	t9,-8220(gp)
  4fc4a4:	1443000b 	bne	v0,v1,4fc4d4 <adPoeSetPoePortLedState@@Base+0x158>
  4fc4a8:	00002021 	move	a0,zero
  4fc4ac:	8cc20004 	lw	v0,4(a2)
  4fc4b0:	8cc60000 	lw	a2,0(a2)
  4fc4b4:	24050002 	li	a1,2
  4fc4b8:	14400002 	bnez	v0,4fc4c4 <adPoeSetPoePortLedState@@Base+0x148>
  4fc4bc:	00c2001a 	div	zero,a2,v0
  4fc4c0:	0007000d 	break	0x7
  4fc4c4:	3c021000 	lui	v0,0x1000
  4fc4c8:	00003012 	mflo	a2
  4fc4cc:	10000008 	b	4fc4f0 <adPoeSetPoePortLedState@@Base+0x174>
  4fc4d0:	00c23025 	or	a2,a2,v0
  4fc4d4:	8cc20004 	lw	v0,4(a2)
  4fc4d8:	8cc60000 	lw	a2,0(a2)
  4fc4dc:	24050002 	li	a1,2
  4fc4e0:	14400002 	bnez	v0,4fc4ec <adPoeSetPoePortLedState@@Base+0x170>
  4fc4e4:	00c2001a 	div	zero,a2,v0
  4fc4e8:	0007000d 	break	0x7
  4fc4ec:	00003012 	mflo	a2
  4fc4f0:	0320f809 	jalr	t9
  4fc4f4:	00000000 	nop
  4fc4f8:	8fbc0010 	lw	gp,16(sp)
  4fc4fc:	3c04000f 	lui	a0,0xf
  4fc500:	34844240 	ori	a0,a0,0x4240
  4fc504:	8f99a448 	lw	t9,-23480(gp)
  4fc508:	00000000 	nop
  4fc50c:	0320f809 	jalr	t9
  4fc510:	00408021 	move	s0,v0
  4fc514:	8fbc0010 	lw	gp,16(sp)
  4fc518:	00000000 	nop
  4fc51c:	8f99a438 	lw	t9,-23496(gp)
  4fc520:	00000000 	nop
  4fc524:	0320f809 	jalr	t9
  4fc528:	00000000 	nop
  4fc52c:	02001021 	move	v0,s0
  4fc530:	8fbc0010 	lw	gp,16(sp)
  4fc534:	8fbf001c 	lw	ra,28(sp)
  4fc538:	8fb00018 	lw	s0,24(sp)
  4fc53c:	03e00008 	jr	ra
  4fc540:	27bd0020 	addiu	sp,sp,32

004fc544 <adPoeGetPortPowerInfo@@Base>:
  4fc544:	3c1c00a2 	lui	gp,0xa2
  4fc548:	279c53cc 	addiu	gp,gp,21452
  4fc54c:	0399e021 	addu	gp,gp,t9
  4fc550:	27bdffd0 	addiu	sp,sp,-48
  4fc554:	afbf002c 	sw	ra,44(sp)
  4fc558:	afb40028 	sw	s4,40(sp)
  4fc55c:	afb30024 	sw	s3,36(sp)
  4fc560:	afb20020 	sw	s2,32(sp)
  4fc564:	afb1001c 	sw	s1,28(sp)
  4fc568:	afb00018 	sw	s0,24(sp)
  4fc56c:	afbc0010 	sw	gp,16(sp)
  4fc570:	00a0a021 	move	s4,a1
  4fc574:	10a00029 	beqz	a1,4fc61c <adPoeGetPortPowerInfo@@Base+0xd8>
  4fc578:	00809021 	move	s2,a0
  4fc57c:	8f93a3dc 	lw	s3,-23588(gp)
  4fc580:	00000000 	nop
  4fc584:	8e62000c 	lw	v0,12(s3)
  4fc588:	00000000 	nop
  4fc58c:	0082102a 	slt	v0,a0,v0
  4fc590:	14400023 	bnez	v0,4fc620 <adPoeGetPortPowerInfo@@Base+0xdc>
  4fc594:	24020001 	li	v0,1
  4fc598:	8e620010 	lw	v0,16(s3)
  4fc59c:	00000000 	nop
  4fc5a0:	0044102a 	slt	v0,v0,a0
  4fc5a4:	1440001d 	bnez	v0,4fc61c <adPoeGetPortPowerInfo@@Base+0xd8>
  4fc5a8:	240714a4 	li	a3,5284
  4fc5ac:	8f908030 	lw	s0,-32720(gp)
  4fc5b0:	8f918028 	lw	s1,-32728(gp)
  4fc5b4:	8f99fb20 	lw	t9,-1248(gp)
  4fc5b8:	8e04e13c 	lw	a0,-7876(s0)
  4fc5bc:	2405ffff 	li	a1,-1
  4fc5c0:	0320f809 	jalr	t9
  4fc5c4:	262604e4 	addiu	a2,s1,1252
  4fc5c8:	2645ffff 	addiu	a1,s2,-1
  4fc5cc:	2402004c 	li	v0,76
  4fc5d0:	00a20018 	mult	a1,v0
  4fc5d4:	8fbc0010 	lw	gp,16(sp)
  4fc5d8:	02802021 	move	a0,s4
  4fc5dc:	2406001c 	li	a2,28
  4fc5e0:	8f99b2c0 	lw	t9,-19776(gp)
  4fc5e4:	00002812 	mflo	a1
  4fc5e8:	02652821 	addu	a1,s3,a1
  4fc5ec:	0320f809 	jalr	t9
  4fc5f0:	24a50034 	addiu	a1,a1,52
  4fc5f4:	8fbc0010 	lw	gp,16(sp)
  4fc5f8:	8e04e13c 	lw	a0,-7876(s0)
  4fc5fc:	262504e4 	addiu	a1,s1,1252
  4fc600:	8f99cb7c 	lw	t9,-13444(gp)
  4fc604:	00000000 	nop
  4fc608:	0320f809 	jalr	t9
  4fc60c:	240614a8 	li	a2,5288
  4fc610:	8fbc0010 	lw	gp,16(sp)
  4fc614:	10000002 	b	4fc620 <adPoeGetPortPowerInfo@@Base+0xdc>
  4fc618:	00001021 	move	v0,zero
  4fc61c:	24020001 	li	v0,1
  4fc620:	8fbf002c 	lw	ra,44(sp)
  4fc624:	8fb40028 	lw	s4,40(sp)
  4fc628:	8fb30024 	lw	s3,36(sp)
  4fc62c:	8fb20020 	lw	s2,32(sp)
  4fc630:	8fb1001c 	lw	s1,28(sp)
  4fc634:	8fb00018 	lw	s0,24(sp)
  4fc638:	03e00008 	jr	ra
  4fc63c:	27bd0030 	addiu	sp,sp,48

004fc640 <adPoeRegReadByAddr@@Base>:
  4fc640:	3c1c00a2 	lui	gp,0xa2
  4fc644:	279c52d0 	addiu	gp,gp,21200
  4fc648:	0399e021 	addu	gp,gp,t9
  4fc64c:	27bdffc0 	addiu	sp,sp,-64
  4fc650:	afbf003c 	sw	ra,60(sp)
  4fc654:	afb60038 	sw	s6,56(sp)
  4fc658:	afb50034 	sw	s5,52(sp)
  4fc65c:	afb40030 	sw	s4,48(sp)
  4fc660:	afb3002c 	sw	s3,44(sp)
  4fc664:	afb20028 	sw	s2,40(sp)
  4fc668:	afb10024 	sw	s1,36(sp)
  4fc66c:	afb00020 	sw	s0,32(sp)
  4fc670:	afbc0010 	sw	gp,16(sp)
  4fc674:	00c0a821 	move	s5,a2
  4fc678:	0080b021 	move	s6,a0
  4fc67c:	30a500ff 	andi	a1,a1,0xff
  4fc680:	10c0001e 	beqz	a2,4fc6fc <adPoeRegReadByAddr@@Base+0xbc>
  4fc684:	24100001 	li	s0,1
  4fc688:	24020002 	li	v0,2
  4fc68c:	a7a00018 	sh	zero,24(sp)
  4fc690:	afa2001c 	sw	v0,28(sp)
  4fc694:	a3a50018 	sb	a1,24(sp)
  4fc698:	00008021 	move	s0,zero
  4fc69c:	00008821 	move	s1,zero
  4fc6a0:	24140004 	li	s4,4
  4fc6a4:	27b3001c 	addiu	s3,sp,28
  4fc6a8:	1000000e 	b	4fc6e4 <adPoeRegReadByAddr@@Base+0xa4>
  4fc6ac:	27b20018 	addiu	s2,sp,24
  4fc6b0:	0320f809 	jalr	t9
  4fc6b4:	00000000 	nop
  4fc6b8:	8fbc0010 	lw	gp,16(sp)
  4fc6bc:	00408021 	move	s0,v0
  4fc6c0:	8f99a448 	lw	t9,-23480(gp)
  4fc6c4:	14400004 	bnez	v0,4fc6d8 <adPoeRegReadByAddr@@Base+0x98>
  4fc6c8:	24042710 	li	a0,10000
  4fc6cc:	93a20019 	lbu	v0,25(sp)
  4fc6d0:	1000000a 	b	4fc6fc <adPoeRegReadByAddr@@Base+0xbc>
  4fc6d4:	a2a20000 	sb	v0,0(s5)
  4fc6d8:	0320f809 	jalr	t9
  4fc6dc:	00000000 	nop
  4fc6e0:	8fbc0010 	lw	gp,16(sp)
  4fc6e4:	26310001 	addiu	s1,s1,1
  4fc6e8:	8f99d7d4 	lw	t9,-10284(gp)
  4fc6ec:	02c02021 	move	a0,s6
  4fc6f0:	02402821 	move	a1,s2
  4fc6f4:	1634ffee 	bne	s1,s4,4fc6b0 <adPoeRegReadByAddr@@Base+0x70>
  4fc6f8:	02603021 	move	a2,s3
  4fc6fc:	02001021 	move	v0,s0
  4fc700:	8fbf003c 	lw	ra,60(sp)
  4fc704:	8fb60038 	lw	s6,56(sp)
  4fc708:	8fb50034 	lw	s5,52(sp)
  4fc70c:	8fb40030 	lw	s4,48(sp)
  4fc710:	8fb3002c 	lw	s3,44(sp)
  4fc714:	8fb20028 	lw	s2,40(sp)
  4fc718:	8fb10024 	lw	s1,36(sp)
  4fc71c:	8fb00020 	lw	s0,32(sp)
  4fc720:	03e00008 	jr	ra
  4fc724:	27bd0040 	addiu	sp,sp,64

004fc728 <adPoeRegReadV2@@Base>:
  4fc728:	3c1c00a2 	lui	gp,0xa2
  4fc72c:	279c51e8 	addiu	gp,gp,20968
  4fc730:	0399e021 	addu	gp,gp,t9
  4fc734:	27bdffc0 	addiu	sp,sp,-64
  4fc738:	afbf003c 	sw	ra,60(sp)
  4fc73c:	afb60038 	sw	s6,56(sp)
  4fc740:	afb50034 	sw	s5,52(sp)
  4fc744:	afb40030 	sw	s4,48(sp)
  4fc748:	afb3002c 	sw	s3,44(sp)
  4fc74c:	afb20028 	sw	s2,40(sp)
  4fc750:	afb10024 	sw	s1,36(sp)
  4fc754:	afb00020 	sw	s0,32(sp)
  4fc758:	afbc0010 	sw	gp,16(sp)
  4fc75c:	00c0a821 	move	s5,a2
  4fc760:	0080b021 	move	s6,a0
  4fc764:	30a500ff 	andi	a1,a1,0xff
  4fc768:	10c0001d 	beqz	a2,4fc7e0 <adPoeRegReadV2@@Base+0xb8>
  4fc76c:	24110001 	li	s1,1
  4fc770:	24020002 	li	v0,2
  4fc774:	a7a00018 	sh	zero,24(sp)
  4fc778:	afa2001c 	sw	v0,28(sp)
  4fc77c:	a3a50018 	sb	a1,24(sp)
  4fc780:	00008021 	move	s0,zero
  4fc784:	24140004 	li	s4,4
  4fc788:	27b3001c 	addiu	s3,sp,28
  4fc78c:	1000000e 	b	4fc7c8 <adPoeRegReadV2@@Base+0xa0>
  4fc790:	27b20018 	addiu	s2,sp,24
  4fc794:	0320f809 	jalr	t9
  4fc798:	00000000 	nop
  4fc79c:	8fbc0010 	lw	gp,16(sp)
  4fc7a0:	00408821 	move	s1,v0
  4fc7a4:	8f99a448 	lw	t9,-23480(gp)
  4fc7a8:	14400004 	bnez	v0,4fc7bc <adPoeRegReadV2@@Base+0x94>
  4fc7ac:	24042710 	li	a0,10000
  4fc7b0:	93a20019 	lbu	v0,25(sp)
  4fc7b4:	1000000a 	b	4fc7e0 <adPoeRegReadV2@@Base+0xb8>
  4fc7b8:	a2a20000 	sb	v0,0(s5)
  4fc7bc:	0320f809 	jalr	t9
  4fc7c0:	00000000 	nop
  4fc7c4:	8fbc0010 	lw	gp,16(sp)
  4fc7c8:	26100001 	addiu	s0,s0,1
  4fc7cc:	8f99d7d4 	lw	t9,-10284(gp)
  4fc7d0:	02c02021 	move	a0,s6
  4fc7d4:	02402821 	move	a1,s2
  4fc7d8:	1614ffee 	bne	s0,s4,4fc794 <adPoeRegReadV2@@Base+0x6c>
  4fc7dc:	02603021 	move	a2,s3
  4fc7e0:	02201021 	move	v0,s1
  4fc7e4:	8fbf003c 	lw	ra,60(sp)
  4fc7e8:	8fb60038 	lw	s6,56(sp)
  4fc7ec:	8fb50034 	lw	s5,52(sp)
  4fc7f0:	8fb40030 	lw	s4,48(sp)
  4fc7f4:	8fb3002c 	lw	s3,44(sp)
  4fc7f8:	8fb20028 	lw	s2,40(sp)
  4fc7fc:	8fb10024 	lw	s1,36(sp)
  4fc800:	8fb00020 	lw	s0,32(sp)
  4fc804:	03e00008 	jr	ra
  4fc808:	27bd0040 	addiu	sp,sp,64

004fc80c <adPoeRegWriteByAddr@@Base>:
  4fc80c:	3c1c00a2 	lui	gp,0xa2
  4fc810:	279c5104 	addiu	gp,gp,20740
  4fc814:	0399e021 	addu	gp,gp,t9
  4fc818:	27bdffc8 	addiu	sp,sp,-56
  4fc81c:	afbf0034 	sw	ra,52(sp)
  4fc820:	afb40030 	sw	s4,48(sp)
  4fc824:	afb3002c 	sw	s3,44(sp)
  4fc828:	afb20028 	sw	s2,40(sp)
  4fc82c:	afb10024 	sw	s1,36(sp)
  4fc830:	afb00020 	sw	s0,32(sp)
  4fc834:	afbc0010 	sw	gp,16(sp)
  4fc838:	a3a50018 	sb	a1,24(sp)
  4fc83c:	a3a60019 	sb	a2,25(sp)
  4fc840:	0080a021 	move	s4,a0
  4fc844:	00008021 	move	s0,zero
  4fc848:	00008821 	move	s1,zero
  4fc84c:	24130004 	li	s3,4
  4fc850:	1000000b 	b	4fc880 <adPoeRegWriteByAddr@@Base+0x74>
  4fc854:	27b20018 	addiu	s2,sp,24
  4fc858:	0320f809 	jalr	t9
  4fc85c:	00000000 	nop
  4fc860:	8fbc0010 	lw	gp,16(sp)
  4fc864:	00408021 	move	s0,v0
  4fc868:	8f99a448 	lw	t9,-23480(gp)
  4fc86c:	1040000a 	beqz	v0,4fc898 <adPoeRegWriteByAddr@@Base+0x8c>
  4fc870:	24042710 	li	a0,10000
  4fc874:	0320f809 	jalr	t9
  4fc878:	00000000 	nop
  4fc87c:	8fbc0010 	lw	gp,16(sp)
  4fc880:	26310001 	addiu	s1,s1,1
  4fc884:	8f99e488 	lw	t9,-7032(gp)
  4fc888:	02802021 	move	a0,s4
  4fc88c:	02402821 	move	a1,s2
  4fc890:	1633fff1 	bne	s1,s3,4fc858 <adPoeRegWriteByAddr@@Base+0x4c>
  4fc894:	24060002 	li	a2,2
  4fc898:	02001021 	move	v0,s0
  4fc89c:	8fbf0034 	lw	ra,52(sp)
  4fc8a0:	8fb40030 	lw	s4,48(sp)
  4fc8a4:	8fb3002c 	lw	s3,44(sp)
  4fc8a8:	8fb20028 	lw	s2,40(sp)
  4fc8ac:	8fb10024 	lw	s1,36(sp)
  4fc8b0:	8fb00020 	lw	s0,32(sp)
  4fc8b4:	03e00008 	jr	ra
  4fc8b8:	27bd0038 	addiu	sp,sp,56

004fc8bc <updateI2cAddrConfigInfo_default@@Base>:
  4fc8bc:	3c1c00a2 	lui	gp,0xa2
  4fc8c0:	279c5054 	addiu	gp,gp,20564
  4fc8c4:	0399e021 	addu	gp,gp,t9
  4fc8c8:	27bdffd8 	addiu	sp,sp,-40
  4fc8cc:	afbf0024 	sw	ra,36(sp)
  4fc8d0:	afb20020 	sw	s2,32(sp)
  4fc8d4:	afb1001c 	sw	s1,28(sp)
  4fc8d8:	afb00018 	sw	s0,24(sp)
  4fc8dc:	afbc0010 	sw	gp,16(sp)
  4fc8e0:	8f928030 	lw	s2,-32720(gp)
  4fc8e4:	00000000 	nop
  4fc8e8:	8e42e158 	lw	v0,-7848(s2)
  4fc8ec:	00000000 	nop
  4fc8f0:	10400020 	beqz	v0,4fc974 <updateI2cAddrConfigInfo_default@@Base+0xb8>
  4fc8f4:	00000000 	nop
  4fc8f8:	8f918030 	lw	s1,-32720(gp)
  4fc8fc:	00000000 	nop
  4fc900:	8e22e154 	lw	v0,-7852(s1)
  4fc904:	00000000 	nop
  4fc908:	1040001a 	beqz	v0,4fc974 <updateI2cAddrConfigInfo_default@@Base+0xb8>
  4fc90c:	00000000 	nop
  4fc910:	8f848028 	lw	a0,-32728(gp)
  4fc914:	8f858028 	lw	a1,-32728(gp)
  4fc918:	8f99b694 	lw	t9,-18796(gp)
  4fc91c:	248404f0 	addiu	a0,a0,1264
  4fc920:	0320f809 	jalr	t9
  4fc924:	24a50108 	addiu	a1,a1,264
  4fc928:	8fbc0010 	lw	gp,16(sp)
  4fc92c:	10400011 	beqz	v0,4fc974 <updateI2cAddrConfigInfo_default@@Base+0xb8>
  4fc930:	00408021 	move	s0,v0
  4fc934:	8f85803c 	lw	a1,-32708(gp)
  4fc938:	8f99ec0c 	lw	t9,-5108(gp)
  4fc93c:	8e26e154 	lw	a2,-7852(s1)
  4fc940:	ae40e158 	sw	zero,-7848(s2)
  4fc944:	24a56ea8 	addiu	a1,a1,28328
  4fc948:	0320f809 	jalr	t9
  4fc94c:	00402021 	move	a0,v0
  4fc950:	8fbc0010 	lw	gp,16(sp)
  4fc954:	02002021 	move	a0,s0
  4fc958:	8fbf0024 	lw	ra,36(sp)
  4fc95c:	8f999b10 	lw	t9,-25840(gp)
  4fc960:	8fb20020 	lw	s2,32(sp)
  4fc964:	8fb1001c 	lw	s1,28(sp)
  4fc968:	8fb00018 	lw	s0,24(sp)
  4fc96c:	03200008 	jr	t9
  4fc970:	27bd0028 	addiu	sp,sp,40
  4fc974:	8fbf0024 	lw	ra,36(sp)
  4fc978:	8fb20020 	lw	s2,32(sp)
  4fc97c:	8fb1001c 	lw	s1,28(sp)
  4fc980:	8fb00018 	lw	s0,24(sp)
  4fc984:	03e00008 	jr	ra
  4fc988:	27bd0028 	addiu	sp,sp,40

004fc98c <updateI2cAddrConfigInfo_autoFix@@Base>:
  4fc98c:	3c1c00a2 	lui	gp,0xa2
  4fc990:	279c4f84 	addiu	gp,gp,20356
  4fc994:	0399e021 	addu	gp,gp,t9
  4fc998:	27bdffd0 	addiu	sp,sp,-48
  4fc99c:	afbf002c 	sw	ra,44(sp)
  4fc9a0:	afb30028 	sw	s3,40(sp)
  4fc9a4:	afb20024 	sw	s2,36(sp)
  4fc9a8:	afb10020 	sw	s1,32(sp)
  4fc9ac:	afb0001c 	sw	s0,28(sp)
  4fc9b0:	afbc0010 	sw	gp,16(sp)
  4fc9b4:	8f938030 	lw	s3,-32720(gp)
  4fc9b8:	00000000 	nop
  4fc9bc:	8e62e158 	lw	v0,-7848(s3)
  4fc9c0:	00000000 	nop
  4fc9c4:	10400028 	beqz	v0,4fca68 <updateI2cAddrConfigInfo_autoFix@@Base+0xdc>
  4fc9c8:	00000000 	nop
  4fc9cc:	8f928030 	lw	s2,-32720(gp)
  4fc9d0:	00000000 	nop
  4fc9d4:	8e42e14c 	lw	v0,-7860(s2)
  4fc9d8:	00000000 	nop
  4fc9dc:	10400022 	beqz	v0,4fca68 <updateI2cAddrConfigInfo_autoFix@@Base+0xdc>
  4fc9e0:	00000000 	nop
  4fc9e4:	8f918030 	lw	s1,-32720(gp)
  4fc9e8:	00000000 	nop
  4fc9ec:	8e22e150 	lw	v0,-7856(s1)
  4fc9f0:	00000000 	nop
  4fc9f4:	1040001c 	beqz	v0,4fca68 <updateI2cAddrConfigInfo_autoFix@@Base+0xdc>
  4fc9f8:	00000000 	nop
  4fc9fc:	8f848028 	lw	a0,-32728(gp)
  4fca00:	8f858028 	lw	a1,-32728(gp)
  4fca04:	8f99b694 	lw	t9,-18796(gp)
  4fca08:	248404f0 	addiu	a0,a0,1264
  4fca0c:	0320f809 	jalr	t9
  4fca10:	24a50108 	addiu	a1,a1,264
  4fca14:	8fbc0010 	lw	gp,16(sp)
  4fca18:	10400013 	beqz	v0,4fca68 <updateI2cAddrConfigInfo_autoFix@@Base+0xdc>
  4fca1c:	00408021 	move	s0,v0
  4fca20:	8f858028 	lw	a1,-32728(gp)
  4fca24:	8f99ec0c 	lw	t9,-5108(gp)
  4fca28:	8e46e14c 	lw	a2,-7860(s2)
  4fca2c:	8e27e150 	lw	a3,-7856(s1)
  4fca30:	ae60e158 	sw	zero,-7848(s3)
  4fca34:	24a50510 	addiu	a1,a1,1296
  4fca38:	0320f809 	jalr	t9
  4fca3c:	00402021 	move	a0,v0
  4fca40:	8fbc0010 	lw	gp,16(sp)
  4fca44:	02002021 	move	a0,s0
  4fca48:	8fbf002c 	lw	ra,44(sp)
  4fca4c:	8f999b10 	lw	t9,-25840(gp)
  4fca50:	8fb30028 	lw	s3,40(sp)
  4fca54:	8fb20024 	lw	s2,36(sp)
  4fca58:	8fb10020 	lw	s1,32(sp)
  4fca5c:	8fb0001c 	lw	s0,28(sp)
  4fca60:	03200008 	jr	t9
  4fca64:	27bd0030 	addiu	sp,sp,48
  4fca68:	8fbf002c 	lw	ra,44(sp)
  4fca6c:	8fb30028 	lw	s3,40(sp)
  4fca70:	8fb20024 	lw	s2,36(sp)
  4fca74:	8fb10020 	lw	s1,32(sp)
  4fca78:	8fb0001c 	lw	s0,28(sp)
  4fca7c:	03e00008 	jr	ra
  4fca80:	27bd0030 	addiu	sp,sp,48

004fca84 <adPoeEnable@@Base>:
  4fca84:	3c1c00a2 	lui	gp,0xa2
  4fca88:	279c4e8c 	addiu	gp,gp,20108
  4fca8c:	0399e021 	addu	gp,gp,t9
  4fca90:	27bdffe0 	addiu	sp,sp,-32
  4fca94:	afbf001c 	sw	ra,28(sp)
  4fca98:	afbc0010 	sw	gp,16(sp)
  4fca9c:	8f99ae54 	lw	t9,-20908(gp)
  4fcaa0:	00000000 	nop
  4fcaa4:	0320f809 	jalr	t9
  4fcaa8:	00000000 	nop
  4fcaac:	8fbc0010 	lw	gp,16(sp)
  4fcab0:	8fbf001c 	lw	ra,28(sp)
  4fcab4:	00001021 	move	v0,zero
  4fcab8:	03e00008 	jr	ra
  4fcabc:	27bd0020 	addiu	sp,sp,32

004fcac0 <adPoeRegReadNoLog@@Base>:
  4fcac0:	3c1c00a2 	lui	gp,0xa2
  4fcac4:	279c4e50 	addiu	gp,gp,20048
  4fcac8:	0399e021 	addu	gp,gp,t9
  4fcacc:	27bdffb8 	addiu	sp,sp,-72
  4fcad0:	afbf0044 	sw	ra,68(sp)
  4fcad4:	afb70040 	sw	s7,64(sp)
  4fcad8:	afb6003c 	sw	s6,60(sp)
  4fcadc:	afb50038 	sw	s5,56(sp)
  4fcae0:	afb40034 	sw	s4,52(sp)
  4fcae4:	afb30030 	sw	s3,48(sp)
  4fcae8:	afb2002c 	sw	s2,44(sp)
  4fcaec:	afb10028 	sw	s1,40(sp)
  4fcaf0:	afb00024 	sw	s0,36(sp)
  4fcaf4:	afbc0010 	sw	gp,16(sp)
  4fcaf8:	00809021 	move	s2,a0
  4fcafc:	00c0b821 	move	s7,a2
  4fcb00:	04800036 	bltz	a0,4fcbdc <adPoeRegReadNoLog@@Base+0x11c>
  4fcb04:	30a500ff 	andi	a1,a1,0xff
  4fcb08:	8f82a3dc 	lw	v0,-23588(gp)
  4fcb0c:	00000000 	nop
  4fcb10:	8c430004 	lw	v1,4(v0)
  4fcb14:	8c420000 	lw	v0,0(v0)
  4fcb18:	00000000 	nop
  4fcb1c:	14600002 	bnez	v1,4fcb28 <adPoeRegReadNoLog@@Base+0x68>
  4fcb20:	0043001a 	div	zero,v0,v1
  4fcb24:	0007000d 	break	0x7
  4fcb28:	00001012 	mflo	v0
  4fcb2c:	0082102a 	slt	v0,a0,v0
  4fcb30:	1040002a 	beqz	v0,4fcbdc <adPoeRegReadNoLog@@Base+0x11c>
  4fcb34:	00000000 	nop
  4fcb38:	10c00028 	beqz	a2,4fcbdc <adPoeRegReadNoLog@@Base+0x11c>
  4fcb3c:	24020002 	li	v0,2
  4fcb40:	a7a00018 	sh	zero,24(sp)
  4fcb44:	afa2001c 	sw	v0,28(sp)
  4fcb48:	a3a50018 	sb	a1,24(sp)
  4fcb4c:	00008021 	move	s0,zero
  4fcb50:	24160004 	li	s6,4
  4fcb54:	8f958030 	lw	s5,-32720(gp)
  4fcb58:	27b4001c 	addiu	s4,sp,28
  4fcb5c:	1000000d 	b	4fcb94 <adPoeRegReadNoLog@@Base+0xd4>
  4fcb60:	27b30018 	addiu	s3,sp,24
  4fcb64:	8ea2e144 	lw	v0,-7868(s5)
  4fcb68:	00000000 	nop
  4fcb6c:	00521021 	addu	v0,v0,s2
  4fcb70:	90440000 	lbu	a0,0(v0)
  4fcb74:	0320f809 	jalr	t9
  4fcb78:	00000000 	nop
  4fcb7c:	8fbc0010 	lw	gp,16(sp)
  4fcb80:	14400004 	bnez	v0,4fcb94 <adPoeRegReadNoLog@@Base+0xd4>
  4fcb84:	00408821 	move	s1,v0
  4fcb88:	93a20019 	lbu	v0,25(sp)
  4fcb8c:	10000014 	b	4fcbe0 <adPoeRegReadNoLog@@Base+0x120>
  4fcb90:	a2e20000 	sb	v0,0(s7)
  4fcb94:	26100001 	addiu	s0,s0,1
  4fcb98:	8f99d7d4 	lw	t9,-10284(gp)
  4fcb9c:	02602821 	move	a1,s3
  4fcba0:	1616fff0 	bne	s0,s6,4fcb64 <adPoeRegReadNoLog@@Base+0xa4>
  4fcba4:	02803021 	move	a2,s4
  4fcba8:	8f99d8b4 	lw	t9,-10060(gp)
  4fcbac:	00000000 	nop
  4fcbb0:	0320f809 	jalr	t9
  4fcbb4:	00000000 	nop
  4fcbb8:	8fbc0010 	lw	gp,16(sp)
  4fcbbc:	00000000 	nop
  4fcbc0:	8f99a448 	lw	t9,-23480(gp)
  4fcbc4:	00000000 	nop
  4fcbc8:	0320f809 	jalr	t9
  4fcbcc:	24042710 	li	a0,10000
  4fcbd0:	8fbc0010 	lw	gp,16(sp)
  4fcbd4:	10000003 	b	4fcbe4 <adPoeRegReadNoLog@@Base+0x124>
  4fcbd8:	02201021 	move	v0,s1
  4fcbdc:	24110001 	li	s1,1
  4fcbe0:	02201021 	move	v0,s1
  4fcbe4:	8fbf0044 	lw	ra,68(sp)
  4fcbe8:	8fb70040 	lw	s7,64(sp)
  4fcbec:	8fb6003c 	lw	s6,60(sp)
  4fcbf0:	8fb50038 	lw	s5,56(sp)
  4fcbf4:	8fb40034 	lw	s4,52(sp)
  4fcbf8:	8fb30030 	lw	s3,48(sp)
  4fcbfc:	8fb2002c 	lw	s2,44(sp)
  4fcc00:	8fb10028 	lw	s1,40(sp)
  4fcc04:	8fb00024 	lw	s0,36(sp)
  4fcc08:	03e00008 	jr	ra
  4fcc0c:	27bd0048 	addiu	sp,sp,72

004fcc10 <adPoeCheckAddr@@Base>:
  4fcc10:	3c1c00a2 	lui	gp,0xa2
  4fcc14:	279c4d00 	addiu	gp,gp,19712
  4fcc18:	0399e021 	addu	gp,gp,t9
  4fcc1c:	27bdffc8 	addiu	sp,sp,-56
  4fcc20:	afbf0034 	sw	ra,52(sp)
  4fcc24:	afb30030 	sw	s3,48(sp)
  4fcc28:	afb2002c 	sw	s2,44(sp)
  4fcc2c:	afb10028 	sw	s1,40(sp)
  4fcc30:	afb00024 	sw	s0,36(sp)
  4fcc34:	afbc0010 	sw	gp,16(sp)
  4fcc38:	a3a00018 	sb	zero,24(sp)
  4fcc3c:	00008021 	move	s0,zero
  4fcc40:	8f91a3dc 	lw	s1,-23588(gp)
  4fcc44:	8f928030 	lw	s2,-32720(gp)
  4fcc48:	1000000d 	b	4fcc80 <adPoeCheckAddr@@Base+0x70>
  4fcc4c:	27b30018 	addiu	s3,sp,24
  4fcc50:	0320f809 	jalr	t9
  4fcc54:	00000000 	nop
  4fcc58:	8e42e144 	lw	v0,-7868(s2)
  4fcc5c:	93a30018 	lbu	v1,24(sp)
  4fcc60:	8fbc0010 	lw	gp,16(sp)
  4fcc64:	00501021 	addu	v0,v0,s0
  4fcc68:	90420000 	lbu	v0,0(v0)
  4fcc6c:	3063007f 	andi	v1,v1,0x7f
  4fcc70:	10620003 	beq	v1,v0,4fcc80 <adPoeCheckAddr@@Base+0x70>
  4fcc74:	26100001 	addiu	s0,s0,1
  4fcc78:	1000000d 	b	4fccb0 <adPoeCheckAddr@@Base+0xa0>
  4fcc7c:	2402ffff 	li	v0,-1
  4fcc80:	8e220000 	lw	v0,0(s1)
  4fcc84:	8e230004 	lw	v1,4(s1)
  4fcc88:	8f99bd1c 	lw	t9,-17124(gp)
  4fcc8c:	02002021 	move	a0,s0
  4fcc90:	14600002 	bnez	v1,4fcc9c <adPoeCheckAddr@@Base+0x8c>
  4fcc94:	0043001a 	div	zero,v0,v1
  4fcc98:	0007000d 	break	0x7
  4fcc9c:	24050011 	li	a1,17
  4fcca0:	00001012 	mflo	v0
  4fcca4:	0202102a 	slt	v0,s0,v0
  4fcca8:	1440ffe9 	bnez	v0,4fcc50 <adPoeCheckAddr@@Base+0x40>
  4fccac:	02603021 	move	a2,s3
  4fccb0:	8fbf0034 	lw	ra,52(sp)
  4fccb4:	8fb30030 	lw	s3,48(sp)
  4fccb8:	8fb2002c 	lw	s2,44(sp)
  4fccbc:	8fb10028 	lw	s1,40(sp)
  4fccc0:	8fb00024 	lw	s0,36(sp)
  4fccc4:	03e00008 	jr	ra
  4fccc8:	27bd0038 	addiu	sp,sp,56

004fcccc <adPoeRegRead@@Base>:
  4fcccc:	3c1c00a2 	lui	gp,0xa2
  4fccd0:	279c4c44 	addiu	gp,gp,19524
  4fccd4:	0399e021 	addu	gp,gp,t9
  4fccd8:	27bdff80 	addiu	sp,sp,-128
  4fccdc:	afbf007c 	sw	ra,124(sp)
  4fcce0:	afb70078 	sw	s7,120(sp)
  4fcce4:	afb60074 	sw	s6,116(sp)
  4fcce8:	afb50070 	sw	s5,112(sp)
  4fccec:	afb4006c 	sw	s4,108(sp)
  4fccf0:	afb30068 	sw	s3,104(sp)
  4fccf4:	afb20064 	sw	s2,100(sp)
  4fccf8:	afb10060 	sw	s1,96(sp)
  4fccfc:	afb0005c 	sw	s0,92(sp)
