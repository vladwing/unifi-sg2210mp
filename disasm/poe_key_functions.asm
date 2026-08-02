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


