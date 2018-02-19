.section	".rodata"
.align	8
l.6827:	! 128.000000
	.long	0x0
	.long	0x40600000
l.6815:	! 40000.000000
	.long	0x0
	.long	0x40e38800
l.6754:	! -2.000000
	.long	0x0
	.long	0xc0000000
l.6752:	! 0.100000
	.long	0x9999999a
	.long	0x3fb99999
l.6749:	! 0.200000
	.long	0x9999999a
	.long	0x3fc99999
l.6709:	! 20.000000
	.long	0x0
	.long	0x40340000
l.6707:	! 0.050000
	.long	0x9999999a
	.long	0x3fa99999
l.6699:	! 0.250000
	.long	0x0
	.long	0x3fd00000
l.6692:	! 255.000000
	.long	0x0
	.long	0x406fe000
l.6690:	! 3.141593
	.long	0x5a7ed197
	.long	0x400921fb
l.6688:	! 10.000000
	.long	0x0
	.long	0x40240000
l.6682:	! 850.000000
	.long	0x0
	.long	0x408a9000
l.6678:	! 0.500000
	.long	0x0
	.long	0x3fe00000
l.6676:	! 0.150000
	.long	0x33333333
	.long	0x3fc33333
l.6670:	! 9.549296
	.long	0x62316387
	.long	0x4023193d
l.6668:	! 15.000000
	.long	0x0
	.long	0x402e0000
l.6666:	! 0.000100
	.long	0xeb1c432d
	.long	0x3f1a36e2
l.6613:	! 100000000.000000
	.long	0x0
	.long	0x4197d784
l.6607:	! 1000000000.000000
	.long	0x0
	.long	0x41cdcd65
l.6571:	! -0.100000
	.long	0x9999999a
	.long	0xbfb99999
l.6555:	! 0.010000
	.long	0x47ae147b
	.long	0x3f847ae1
l.6553:	! -0.200000
	.long	0x9999999a
	.long	0xbfc99999
l.6521:	! 4.000000
	.long	0x0
	.long	0x40100000
l.6292:	! -200.000000
	.long	0x0
	.long	0xc0690000
l.6277:	! 0.017453
	.long	0xaa91ed06
	.long	0x3f91df46
l.6275:	! -1.000000
	.long	0x0
	.long	0xbff00000
l.6273:	! 1.000000
	.long	0x0
	.long	0x3ff00000
l.6271:	! 0.000000
	.long	0x0
	.long	0x0
l.6246:	! 2.000000
	.long	0x0
	.long	0x40000000
.section	".text"
xor.3783:
	addi	%r3, %r0, 0
	bne	%r1, %r3, be_else.7670
	add	%r1, %r0, %r2
	jr	%r31
be_else.7670:
	addi	%r1, %r0, 0
	bne	%r2, %r1, be_else.7671
	addi	%r1, %r0, 1
	jr	%r31
be_else.7671:
	addi	%r1, %r0, 0
	jr	%r31
fsqr.3786:
	mul.s	%f0, %f0, %f0
	jr	%r31
fhalf.3788:
	la	%r1, l.6246	lw	%f1, 0(%r1)
	inv.s	%f31, %f1
	mul.s	%f0, %f31, %f0
	jr	%r31
o_texturetype.3790:
	lw	%r1, 0(%r1)
	add	%r1, %r0, %r1
	jr	%r31
o_form.3792:
	lw	%r1, 4(%r1)
	add	%r1, %r0, %r1
	jr	%r31
o_reflectiontype.3794:
	lw	%r1, 8(%r1)
	add	%r1, %r0, %r1
	jr	%r31
o_isinvert.3796:
	lw	%r1, 24(%r1)
	add	%r1, %r0, %r1
	jr	%r31
o_isrot.3798:
	lw	%r1, 12(%r1)
	add	%r1, %r0, %r1
	jr	%r31
o_param_a.3800:
	lw	%r1, 16(%r1)
	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
o_param_b.3802:
	lw	%r1, 16(%r1)
	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
o_param_c.3804:
	lw	%r1, 16(%r1)
	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
o_param_x.3806:
	lw	%r1, 20(%r1)
	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
o_param_y.3808:
	lw	%r1, 20(%r1)
	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
o_param_z.3810:
	lw	%r1, 20(%r1)
	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
o_diffuse.3812:
	lw	%r1, 28(%r1)
	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
o_hilight.3814:
	lw	%r1, 28(%r1)
	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
o_color_red.3816:
	lw	%r1, 32(%r1)
	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
o_color_green.3818:
	lw	%r1, 32(%r1)
	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
o_color_blue.3820:
	lw	%r1, 32(%r1)
	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
o_param_r1.3822:
	lw	%r1, 36(%r1)
	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
o_param_r2.3824:
	lw	%r1, 36(%r1)
	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
o_param_r3.3826:
	lw	%r1, 36(%r1)
	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	jr	%r31
normalize_vector.3828:
	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r1, %r3
	lw.s	%f0, 0(%r26)
	sw	%r2, 0(%r29)
	sw	%r1, 4(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	fsqr.3786
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	sw.s	%f0, 8(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	fsqr.3786
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw.s	%f1, 8(%r29)
	add.s	%f1, %f0, %f0
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	sw.s	%f0, 12(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	fsqr.3786
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 12(%r29)
	add.s	%f1, %f0, %f0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	min_caml_sqrt
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r1, %r0, 0
	lw	%r2, 0(%r29)
	bne	%r2, %r1, be_else.7672
	mov.s	%f0, %f0
	j	be_cont.7673
be_else.7672:
	neg.s	%f0, %f0
be_cont.7673:
	addi	%r1, %r0, 0
	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	lw	%r3, 4(%r29)
	add	%r26, %r3, %r2
	lw.s	%f1, 0(%r26)
	inv.s	%f31, %f0
	mul.s	%f1, %f31, %f1
	sll	%r1, %r1, 2
	add	%r26, %r3, %r1
	sw.s	%f1, 0(%r26)
	addi	%r1, %r0, 1
	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r3, %r2
	lw.s	%f1, 0(%r26)
	inv.s	%f31, %f0
	mul.s	%f1, %f31, %f1
	sll	%r1, %r1, 2
	add	%r26, %r3, %r1
	sw.s	%f1, 0(%r26)
	addi	%r1, %r0, 2
	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	add	%r26, %r3, %r2
	lw.s	%f1, 0(%r26)
	inv.s	%f31, %f0
	mul.s	%f1, %f31, %f0
	sll	%r1, %r1, 2
	add	%r26, %r3, %r1
	sw.s	%f0, 0(%r26)
	jr	%r31
sgn.3831:
	la	%r1, l.6271	lw	%f1, 0(%r1)
	c.le.s	0, %f0, %f1
	bf.s	0, bt.s_else.7675
	la	%r1, l.6275	lw	%r1, 0(%r1)
	jr	%r31
bt.s_else.7675:
	la	%r1, l.6273	lw	%r1, 0(%r1)
	jr	%r31
rad.3833:
	la	%r1, l.6277	lw	%f1, 0(%r1)
	mul.s	%f0, %f1, %f0
	jr	%r31
read_environ.3835:
	la	%r1, min_caml_screen	addi	%r2, %r0, 0
	sw	%r1, 0(%r29)
	sw	%r2, 4(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	min_caml_read_float
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw	%r1, 4(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 0(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_screen	addi	%r2, %r0, 1
	sw	%r1, 8(%r29)
	sw	%r2, 12(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	min_caml_read_float
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw	%r1, 12(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 8(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_screen	addi	%r2, %r0, 2
	sw	%r1, 16(%r29)
	sw	%r2, 20(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	min_caml_read_float
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw	%r1, 20(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 16(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	min_caml_read_float
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	rad.3833
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	la	%r1, min_caml_cos_v	addi	%r2, %r0, 0
	sw.s	%f0, 24(%r29)
	sw	%r1, 28(%r29)
	sw	%r2, 32(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	min_caml_cos
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw	%r1, 32(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 28(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_sin_v	addi	%r2, %r0, 0
	lw.s	%f0, 24(%r29)
	sw	%r1, 36(%r29)
	sw	%r2, 40(%r29)
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	min_caml_sin
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	lw	%r1, 40(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 36(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	min_caml_read_float
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	rad.3833
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	la	%r1, min_caml_cos_v	addi	%r2, %r0, 1
	sw.s	%f0, 44(%r29)
	sw	%r1, 48(%r29)
	sw	%r2, 52(%r29)
	sw	%r31, 60(%r29)
	addi	%r29, %r29, 64
	jalr	min_caml_cos
	addi	%r29, %r29, -64
	lw	%r31, 60(%r29)
	lw	%r1, 52(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 48(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_sin_v	addi	%r2, %r0, 1
	lw.s	%f0, 44(%r29)
	sw	%r1, 56(%r29)
	sw	%r2, 60(%r29)
	sw	%r31, 68(%r29)
	addi	%r29, %r29, 72
	jalr	min_caml_sin
	addi	%r29, %r29, -72
	lw	%r31, 68(%r29)
	lw	%r1, 60(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 56(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	sw	%r31, 68(%r29)
	addi	%r29, %r29, 72
	jalr	min_caml_read_float
	addi	%r29, %r29, -72
	lw	%r31, 68(%r29)
	sw	%r31, 68(%r29)
	addi	%r29, %r29, 72
	jalr	min_caml_read_float
	addi	%r29, %r29, -72
	lw	%r31, 68(%r29)
	sw	%r31, 68(%r29)
	addi	%r29, %r29, 72
	jalr	rad.3833
	addi	%r29, %r29, -72
	lw	%r31, 68(%r29)
	sw.s	%f0, 64(%r29)
	sw	%r31, 68(%r29)
	addi	%r29, %r29, 72
	jalr	min_caml_sin
	addi	%r29, %r29, -72
	lw	%r31, 68(%r29)
	la	%r1, min_caml_light	addi	%r2, %r0, 1
	neg.s	%f0, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	sw	%r31, 68(%r29)
	addi	%r29, %r29, 72
	jalr	min_caml_read_float
	addi	%r29, %r29, -72
	lw	%r31, 68(%r29)
	sw	%r31, 68(%r29)
	addi	%r29, %r29, 72
	jalr	rad.3833
	addi	%r29, %r29, -72
	lw	%r31, 68(%r29)
	lw.s	%f1, 64(%r29)
	sw.s	%f0, 68(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 76(%r29)
	addi	%r29, %r29, 80
	jalr	min_caml_cos
	addi	%r29, %r29, -80
	lw	%r31, 76(%r29)
	lw.s	%f1, 68(%r29)
	sw.s	%f0, 72(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 76(%r29)
	addi	%r29, %r29, 80
	jalr	min_caml_sin
	addi	%r29, %r29, -80
	lw	%r31, 76(%r29)
	la	%r1, min_caml_light	addi	%r2, %r0, 0
	lw.s	%f1, 72(%r29)
	mul.s	%f1, %f0, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	lw.s	%f0, 68(%r29)
	sw	%r31, 76(%r29)
	addi	%r29, %r29, 80
	jalr	min_caml_cos
	addi	%r29, %r29, -80
	lw	%r31, 76(%r29)
	la	%r1, min_caml_light	addi	%r2, %r0, 2
	lw.s	%f1, 72(%r29)
	mul.s	%f1, %f0, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_beam	addi	%r2, %r0, 0
	sw	%r1, 76(%r29)
	sw	%r2, 80(%r29)
	sw	%r31, 84(%r29)
	addi	%r29, %r29, 88
	jalr	min_caml_read_float
	addi	%r29, %r29, -88
	lw	%r31, 84(%r29)
	lw	%r1, 80(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 76(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_vp	addi	%r2, %r0, 0
	la	%r3, min_caml_cos_v	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	la	%r3, min_caml_sin_v	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r3, l.6292	lw	%f1, 0(%r3)
	mul.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_vp	addi	%r2, %r0, 1
	la	%r3, min_caml_sin_v	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	neg.s	%f0, %f0
	la	%r3, l.6292	lw	%f1, 0(%r3)
	mul.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_vp	addi	%r2, %r0, 2
	la	%r3, min_caml_cos_v	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	la	%r3, min_caml_cos_v	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r3, l.6292	lw	%f1, 0(%r3)
	mul.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_view	addi	%r2, %r0, 0
	la	%r3, min_caml_vp	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	la	%r3, min_caml_screen	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	add.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_view	addi	%r2, %r0, 1
	la	%r3, min_caml_vp	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	la	%r3, min_caml_screen	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	add.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_view	addi	%r2, %r0, 2
	la	%r3, min_caml_vp	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	la	%r3, min_caml_screen	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	add.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	jr	%r31
read_nth_object.3837:
	sw	%r1, 0(%r29)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_read_int
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r2, %r0, -1
	bne	%r1, %r2, be_else.7677
	addi	%r1, %r0, 0
	jr	%r31
be_else.7677:
	sw	%r1, 4(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	min_caml_read_int
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	sw	%r1, 8(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	min_caml_read_int
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	sw	%r1, 12(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	min_caml_read_int
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r2, %r0, 3
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sw	%r1, 16(%r29)
	addi	%r1, %r2, 0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r2, %r0, 0
	sw	%r1, 20(%r29)
	sw	%r2, 24(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	min_caml_read_float
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw	%r1, 24(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 20(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
	sw	%r1, 28(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	min_caml_read_float
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw	%r1, 28(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 20(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 2
	sw	%r1, 32(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	min_caml_read_float
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw	%r1, 32(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 20(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 3
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	addi	%r2, %r0, 0
	sw	%r1, 36(%r29)
	sw	%r2, 40(%r29)
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	min_caml_read_float
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	lw	%r1, 40(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 36(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
	sw	%r1, 44(%r29)
	sw	%r31, 52(%r29)
	addi	%r29, %r29, 56
	jalr	min_caml_read_float
	addi	%r29, %r29, -56
	lw	%r31, 52(%r29)
	lw	%r1, 44(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 36(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 2
	sw	%r1, 48(%r29)
	sw	%r31, 52(%r29)
	addi	%r29, %r29, 56
	jalr	min_caml_read_float
	addi	%r29, %r29, -56
	lw	%r31, 52(%r29)
	lw	%r1, 48(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 36(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, l.6271	lw	%f0, 0(%r1)
	sw.s	%f0, 52(%r29)
	sw	%r31, 60(%r29)
	addi	%r29, %r29, 64
	jalr	min_caml_read_float
	addi	%r29, %r29, -64
	lw	%r31, 60(%r29)
	lw.s	%f1, 52(%r29)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7678
	addi	%r1, %r0, 0
	j	bt.s_cont.7679
bt.s_else.7678:
	addi	%r1, %r0, 1
bt.s_cont.7679:
	addi	%r2, %r0, 2
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sw	%r1, 56(%r29)
	addi	%r1, %r2, 0
	sw	%r31, 60(%r29)
	addi	%r29, %r29, 64
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -64
	lw	%r31, 60(%r29)
	addi	%r2, %r0, 0
	sw	%r1, 60(%r29)
	sw	%r2, 64(%r29)
	sw	%r31, 68(%r29)
	addi	%r29, %r29, 72
	jalr	min_caml_read_float
	addi	%r29, %r29, -72
	lw	%r31, 68(%r29)
	lw	%r1, 64(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 60(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
	sw	%r1, 68(%r29)
	sw	%r31, 76(%r29)
	addi	%r29, %r29, 80
	jalr	min_caml_read_float
	addi	%r29, %r29, -80
	lw	%r31, 76(%r29)
	lw	%r1, 68(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 60(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 3
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sw	%r31, 76(%r29)
	addi	%r29, %r29, 80
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -80
	lw	%r31, 76(%r29)
	addi	%r2, %r0, 0
	sw	%r1, 72(%r29)
	sw	%r2, 76(%r29)
	sw	%r31, 84(%r29)
	addi	%r29, %r29, 88
	jalr	min_caml_read_float
	addi	%r29, %r29, -88
	lw	%r31, 84(%r29)
	lw	%r1, 76(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 72(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
	sw	%r1, 80(%r29)
	sw	%r31, 84(%r29)
	addi	%r29, %r29, 88
	jalr	min_caml_read_float
	addi	%r29, %r29, -88
	lw	%r31, 84(%r29)
	lw	%r1, 80(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 72(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 2
	sw	%r1, 84(%r29)
	sw	%r31, 92(%r29)
	addi	%r29, %r29, 96
	jalr	min_caml_read_float
	addi	%r29, %r29, -96
	lw	%r31, 92(%r29)
	lw	%r1, 84(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 72(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 3
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sw	%r31, 92(%r29)
	addi	%r29, %r29, 96
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -96
	lw	%r31, 92(%r29)
	addi	%r2, %r0, 0
	lw	%r3, 16(%r29)
	sw	%r1, 88(%r29)
	bne	%r3, %r2, be_else.7680
	j	be_cont.7681
be_else.7680:
	addi	%r2, %r0, 0
	sw	%r2, 92(%r29)
	sw	%r31, 100(%r29)
	addi	%r29, %r29, 104
	jalr	min_caml_read_float
	addi	%r29, %r29, -104
	lw	%r31, 100(%r29)
	sw	%r31, 100(%r29)
	addi	%r29, %r29, 104
	jalr	rad.3833
	addi	%r29, %r29, -104
	lw	%r31, 100(%r29)
	lw	%r1, 92(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 88(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
	sw	%r1, 96(%r29)
	sw	%r31, 100(%r29)
	addi	%r29, %r29, 104
	jalr	min_caml_read_float
	addi	%r29, %r29, -104
	lw	%r31, 100(%r29)
	sw	%r31, 100(%r29)
	addi	%r29, %r29, 104
	jalr	rad.3833
	addi	%r29, %r29, -104
	lw	%r31, 100(%r29)
	lw	%r1, 96(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 88(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 2
	sw	%r1, 100(%r29)
	sw	%r31, 108(%r29)
	addi	%r29, %r29, 112
	jalr	min_caml_read_float
	addi	%r29, %r29, -112
	lw	%r31, 108(%r29)
	sw	%r31, 108(%r29)
	addi	%r29, %r29, 112
	jalr	rad.3833
	addi	%r29, %r29, -112
	lw	%r31, 108(%r29)
	lw	%r1, 100(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 88(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
be_cont.7681:
	addi	%r1, %r0, 2
	lw	%r2, 8(%r29)
	bne	%r2, %r1, be_else.7682
	addi	%r1, %r0, 1
	j	be_cont.7683
be_else.7682:
	lw	%r1, 56(%r29)
	add	%r1, %r0, %r1
be_cont.7683:
	addi	%r3, %r30, 0
	addi	%r30, %r30, 40
	lw	%r4, 88(%r29)
	sw	%r4, 36(%r3)
	lw	%r5, 72(%r29)
	sw	%r5, 32(%r3)
	lw	%r5, 60(%r29)
	sw	%r5, 28(%r3)
	sw	%r1, 24(%r3)
	lw	%r1, 36(%r29)
	sw	%r1, 20(%r3)
	lw	%r1, 20(%r29)
	sw	%r1, 16(%r3)
	lw	%r5, 16(%r29)
	sw	%r5, 12(%r3)
	lw	%r6, 12(%r29)
	sw	%r6, 8(%r3)
	sw	%r2, 4(%r3)
	lw	%r6, 4(%r29)
	sw	%r6, 0(%r3)
	addi	%r3, %r3, 0
	la	%r6, min_caml_objects	lw	%r7, 0(%r29)
	sll	%r7, %r7, 2
	add	%r26, %r6, %r7
	sw	%r3, 0(%r26)
	addi	%r3, %r0, 3
	bne	%r2, %r3, be_else.7684
	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	addi	%r2, %r0, 0
	la	%r3, l.6271	lw	%f1, 0(%r3)
	sw	%r2, 104(%r29)
	c.eq.s	0, %f1, %f0
	bf.s	0, bt.s_else.7686
	la	%r3, l.6271	lw	%f0, 0(%r3)
	j	bt.s_cont.7687
bt.s_else.7686:
	sw.s	%f0, 108(%r29)
	sw	%r31, 116(%r29)
	addi	%r29, %r29, 120
	jalr	sgn.3831
	addi	%r29, %r29, -120
	lw	%r31, 116(%r29)
	lw.s	%f1, 108(%r29)
	sw.s	%f0, 112(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 116(%r29)
	addi	%r29, %r29, 120
	jalr	fsqr.3786
	addi	%r29, %r29, -120
	lw	%r31, 116(%r29)
	inv.s	%f31, %f0
	lw.s	%f0, 112(%r29)
	mul.s	%f0, %f31, %f0
bt.s_cont.7687:
	lw	%r1, 104(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 20(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	add	%r26, %r2, %r1
	lw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
	la	%r3, l.6271	lw	%f1, 0(%r3)
	sw	%r1, 116(%r29)
	c.eq.s	0, %f1, %f0
	bf.s	0, bt.s_else.7688
	la	%r3, l.6271	lw	%f0, 0(%r3)
	j	bt.s_cont.7689
bt.s_else.7688:
	sw.s	%f0, 120(%r29)
	sw	%r31, 124(%r29)
	addi	%r29, %r29, 128
	jalr	sgn.3831
	addi	%r29, %r29, -128
	lw	%r31, 124(%r29)
	lw.s	%f1, 120(%r29)
	sw.s	%f0, 124(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 132(%r29)
	addi	%r29, %r29, 136
	jalr	fsqr.3786
	addi	%r29, %r29, -136
	lw	%r31, 132(%r29)
	inv.s	%f31, %f0
	lw.s	%f0, 124(%r29)
	mul.s	%f0, %f31, %f0
bt.s_cont.7689:
	lw	%r1, 116(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 20(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	add	%r26, %r2, %r1
	lw.s	%f0, 0(%r26)
	addi	%r1, %r0, 2
	la	%r3, l.6271	lw	%f1, 0(%r3)
	sw	%r1, 128(%r29)
	c.eq.s	0, %f1, %f0
	bf.s	0, bt.s_else.7690
	la	%r3, l.6271	lw	%f0, 0(%r3)
	j	bt.s_cont.7691
bt.s_else.7690:
	sw.s	%f0, 132(%r29)
	sw	%r31, 140(%r29)
	addi	%r29, %r29, 144
	jalr	sgn.3831
	addi	%r29, %r29, -144
	lw	%r31, 140(%r29)
	lw.s	%f1, 132(%r29)
	sw.s	%f0, 136(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 140(%r29)
	addi	%r29, %r29, 144
	jalr	fsqr.3786
	addi	%r29, %r29, -144
	lw	%r31, 140(%r29)
	inv.s	%f31, %f0
	lw.s	%f0, 136(%r29)
	mul.s	%f0, %f31, %f0
bt.s_cont.7691:
	lw	%r1, 128(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 20(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	j	be_cont.7685
be_else.7684:
	addi	%r3, %r0, 2
	bne	%r2, %r3, be_else.7692
	addi	%r2, %r0, 0
	lw	%r3, 56(%r29)
	bne	%r3, %r2, be_else.7694
	addi	%r2, %r0, 1
	j	be_cont.7695
be_else.7694:
	addi	%r2, %r0, 0
be_cont.7695:
	sw	%r31, 140(%r29)
	addi	%r29, %r29, 144
	jalr	normalize_vector.3828
	addi	%r29, %r29, -144
	lw	%r31, 140(%r29)
	j	be_cont.7693
be_else.7692:
be_cont.7693:
be_cont.7685:
	addi	%r1, %r0, 0
	lw	%r2, 16(%r29)
	bne	%r2, %r1, be_else.7696
	j	be_cont.7697
be_else.7696:
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 10
	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	lw	%r4, 88(%r29)
	add	%r26, %r4, %r3
	lw.s	%f0, 0(%r26)
	sw	%r1, 140(%r29)
	sw	%r2, 144(%r29)
	sw	%r31, 148(%r29)
	addi	%r29, %r29, 152
	jalr	min_caml_cos
	addi	%r29, %r29, -152
	lw	%r31, 148(%r29)
	lw	%r1, 144(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 140(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 11
	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	lw	%r4, 88(%r29)
	add	%r26, %r4, %r3
	lw.s	%f0, 0(%r26)
	sw	%r1, 148(%r29)
	sw	%r2, 152(%r29)
	sw	%r31, 156(%r29)
	addi	%r29, %r29, 160
	jalr	min_caml_sin
	addi	%r29, %r29, -160
	lw	%r31, 156(%r29)
	lw	%r1, 152(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 148(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 12
	addi	%r3, %r0, 1
	sll	%r3, %r3, 2
	lw	%r4, 88(%r29)
	add	%r26, %r4, %r3
	lw.s	%f0, 0(%r26)
	sw	%r1, 156(%r29)
	sw	%r2, 160(%r29)
	sw	%r31, 164(%r29)
	addi	%r29, %r29, 168
	jalr	min_caml_cos
	addi	%r29, %r29, -168
	lw	%r31, 164(%r29)
	lw	%r1, 160(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 156(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 13
	addi	%r3, %r0, 1
	sll	%r3, %r3, 2
	lw	%r4, 88(%r29)
	add	%r26, %r4, %r3
	lw.s	%f0, 0(%r26)
	sw	%r1, 164(%r29)
	sw	%r2, 168(%r29)
	sw	%r31, 172(%r29)
	addi	%r29, %r29, 176
	jalr	min_caml_sin
	addi	%r29, %r29, -176
	lw	%r31, 172(%r29)
	lw	%r1, 168(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 164(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 14
	addi	%r3, %r0, 2
	sll	%r3, %r3, 2
	lw	%r4, 88(%r29)
	add	%r26, %r4, %r3
	lw.s	%f0, 0(%r26)
	sw	%r1, 172(%r29)
	sw	%r2, 176(%r29)
	sw	%r31, 180(%r29)
	addi	%r29, %r29, 184
	jalr	min_caml_cos
	addi	%r29, %r29, -184
	lw	%r31, 180(%r29)
	lw	%r1, 176(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 172(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 15
	addi	%r3, %r0, 2
	sll	%r3, %r3, 2
	lw	%r4, 88(%r29)
	add	%r26, %r4, %r3
	lw.s	%f0, 0(%r26)
	sw	%r1, 180(%r29)
	sw	%r2, 184(%r29)
	sw	%r31, 188(%r29)
	addi	%r29, %r29, 192
	jalr	min_caml_sin
	addi	%r29, %r29, -192
	lw	%r31, 188(%r29)
	lw	%r1, 184(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 180(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 0
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 12
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 14
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 1
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 11
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 13
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 14
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 10
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 15
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	sub.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 2
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 10
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 13
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 14
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 11
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 15
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	add.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 3
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 12
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 15
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 4
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 11
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 13
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 15
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 10
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 14
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	add.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 5
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 10
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 13
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 15
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 11
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 14
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	sub.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 6
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 13
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	neg.s	%f0, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 7
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 11
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 12
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 8
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 10
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 12
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 0
	sll	%r1, %r1, 2
	lw	%r2, 20(%r29)
	add	%r26, %r2, %r1
	lw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	add	%r26, %r2, %r1
	lw.s	%f2, 0(%r26)
	addi	%r1, %r0, 0
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f3, 0(%r26)
	sw	%r1, 188(%r29)
	sw.s	%f2, 192(%r29)
	sw.s	%f1, 196(%r29)
	sw.s	%f0, 200(%r29)
	addi	%f0, %f3, 0
	sw	%r31, 204(%r29)
	addi	%r29, %r29, 208
	jalr	fsqr.3786
	addi	%r29, %r29, -208
	lw	%r31, 204(%r29)
	lw.s	%f1, 200(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 3
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f2, 0(%r26)
	sw.s	%f0, 204(%r29)
	addi	%f0, %f2, 0
	sw	%r31, 212(%r29)
	addi	%r29, %r29, 216
	jalr	fsqr.3786
	addi	%r29, %r29, -216
	lw	%r31, 212(%r29)
	lw.s	%f1, 196(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f2, 204(%r29)
	add.s	%f2, %f0, %f0
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 6
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f2, 0(%r26)
	sw.s	%f0, 208(%r29)
	addi	%f0, %f2, 0
	sw	%r31, 212(%r29)
	addi	%r29, %r29, 216
	jalr	fsqr.3786
	addi	%r29, %r29, -216
	lw	%r31, 212(%r29)
	lw.s	%f1, 192(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f2, 208(%r29)
	add.s	%f2, %f0, %f0
	lw	%r1, 188(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 20(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sw	%r1, 212(%r29)
	sw	%r31, 220(%r29)
	addi	%r29, %r29, 224
	jalr	fsqr.3786
	addi	%r29, %r29, -224
	lw	%r31, 220(%r29)
	lw.s	%f1, 200(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 4
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f2, 0(%r26)
	sw.s	%f0, 216(%r29)
	addi	%f0, %f2, 0
	sw	%r31, 220(%r29)
	addi	%r29, %r29, 224
	jalr	fsqr.3786
	addi	%r29, %r29, -224
	lw	%r31, 220(%r29)
	lw.s	%f1, 196(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f2, 216(%r29)
	add.s	%f2, %f0, %f0
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 7
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f2, 0(%r26)
	sw.s	%f0, 220(%r29)
	addi	%f0, %f2, 0
	sw	%r31, 228(%r29)
	addi	%r29, %r29, 232
	jalr	fsqr.3786
	addi	%r29, %r29, -232
	lw	%r31, 228(%r29)
	lw.s	%f1, 192(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f2, 220(%r29)
	add.s	%f2, %f0, %f0
	lw	%r1, 212(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 20(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 2
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sw	%r1, 224(%r29)
	sw	%r31, 228(%r29)
	addi	%r29, %r29, 232
	jalr	fsqr.3786
	addi	%r29, %r29, -232
	lw	%r31, 228(%r29)
	lw.s	%f1, 200(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 5
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f2, 0(%r26)
	sw.s	%f0, 228(%r29)
	addi	%f0, %f2, 0
	sw	%r31, 236(%r29)
	addi	%r29, %r29, 240
	jalr	fsqr.3786
	addi	%r29, %r29, -240
	lw	%r31, 236(%r29)
	lw.s	%f1, 196(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f2, 228(%r29)
	add.s	%f2, %f0, %f0
	la	%r1, min_caml_cs_temp	addi	%r2, %r0, 8
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f2, 0(%r26)
	sw.s	%f0, 232(%r29)
	addi	%f0, %f2, 0
	sw	%r31, 236(%r29)
	addi	%r29, %r29, 240
	jalr	fsqr.3786
	addi	%r29, %r29, -240
	lw	%r31, 236(%r29)
	lw.s	%f1, 192(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f2, 232(%r29)
	add.s	%f2, %f0, %f0
	lw	%r1, 224(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 20(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 0
	la	%r2, l.6246	lw	%f0, 0(%r2)
	la	%r2, min_caml_cs_temp	addi	%r3, %r0, 1
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f2, 0(%r26)
	lw.s	%f3, 200(%r29)
	mul.s	%f3, %f2, %f2
	la	%r2, min_caml_cs_temp	addi	%r3, %r0, 2
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f4, 0(%r26)
	mul.s	%f2, %f4, %f2
	la	%r2, min_caml_cs_temp	addi	%r3, %r0, 4
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f4, 0(%r26)
	lw.s	%f5, 196(%r29)
	mul.s	%f5, %f4, %f4
	la	%r2, min_caml_cs_temp	addi	%r3, %r0, 5
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f6, 0(%r26)
	mul.s	%f4, %f6, %f4
	add.s	%f2, %f4, %f2
	la	%r2, min_caml_cs_temp	addi	%r3, %r0, 7
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f4, 0(%r26)
	mul.s	%f1, %f4, %f4
	la	%r2, min_caml_cs_temp	addi	%r3, %r0, 8
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f6, 0(%r26)
	mul.s	%f4, %f6, %f4
	add.s	%f2, %f4, %f2
	mul.s	%f0, %f2, %f0
	sll	%r1, %r1, 2
	lw	%r2, 88(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
	la	%r3, l.6246	lw	%f0, 0(%r3)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	mul.s	%f3, %f2, %f2
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f4, 0(%r26)
	mul.s	%f2, %f4, %f2
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 3
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f4, 0(%r26)
	mul.s	%f5, %f4, %f4
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 5
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f6, 0(%r26)
	mul.s	%f4, %f6, %f4
	add.s	%f2, %f4, %f2
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 6
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f4, 0(%r26)
	mul.s	%f1, %f4, %f4
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 8
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f6, 0(%r26)
	mul.s	%f4, %f6, %f4
	add.s	%f2, %f4, %f2
	mul.s	%f0, %f2, %f0
	sll	%r1, %r1, 2
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 2
	la	%r3, l.6246	lw	%f0, 0(%r3)
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	mul.s	%f3, %f2, %f2
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f3, 0(%r26)
	mul.s	%f2, %f3, %f2
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 3
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f3, 0(%r26)
	mul.s	%f5, %f3, %f3
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 4
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f4, 0(%r26)
	mul.s	%f3, %f4, %f3
	add.s	%f2, %f3, %f2
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 6
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f3, 0(%r26)
	mul.s	%f1, %f3, %f1
	la	%r3, min_caml_cs_temp	addi	%r4, %r0, 7
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f3, 0(%r26)
	mul.s	%f1, %f3, %f1
	add.s	%f2, %f1, %f1
	mul.s	%f0, %f1, %f0
	sll	%r1, %r1, 2
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
be_cont.7697:
	addi	%r1, %r0, 1
	jr	%r31
read_object.3839:
	addi	%r2, %r0, 61
	slt	%r28, %r2, %r1
	beq	%r28, %r1, bne_else.7698
	jr	%r31
bne_else.7698:
	sw	%r1, 0(%r29)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	read_nth_object.3837
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7700
	jr	%r31
be_else.7700:
	addi	%r1, %r0, 1
	lw	%r2, 0(%r29)
	add	%r1, %r2, %r1
	j	read_object.3839
read_all_object.3841:
	addi	%r1, %r0, 0
	j	read_object.3839
read_net_item.3843:
	sw	%r1, 0(%r29)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_read_int
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r2, %r0, -1
	bne	%r1, %r2, be_else.7702
	addi	%r1, %r0, 1
	lw	%r2, 0(%r29)
	add	%r1, %r2, %r1
	addi	%r2, %r0, -1
	j	min_caml_create_array
be_else.7702:
	addi	%r2, %r0, 1
	lw	%r3, 0(%r29)
	add	%r2, %r3, %r2
	sw	%r1, 4(%r29)
	addi	%r1, %r2, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	read_net_item.3843
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw	%r2, 0(%r29)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw	%r2, 4(%r29)
	sw	%r2, 0(%r26)
	add	%r1, %r0, %r1
	jr	%r31
read_or_network.3845:
	addi	%r2, %r0, 0
	sw	%r1, 0(%r29)
	addi	%r1, %r2, 0
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	read_net_item.3843
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r1, %r2, 0
	addi	%r1, %r0, 0
	sll	%r1, %r1, 2
	add	%r26, %r2, %r1
	lw	%r1, 0(%r26)
	addi	%r3, %r0, -1
	bne	%r1, %r3, be_else.7703
	addi	%r1, %r0, 1
	lw	%r3, 0(%r29)
	add	%r1, %r3, %r1
	j	min_caml_create_array
be_else.7703:
	addi	%r1, %r0, 1
	lw	%r3, 0(%r29)
	add	%r1, %r3, %r1
	sw	%r2, 4(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	read_or_network.3845
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw	%r2, 0(%r29)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw	%r2, 4(%r29)
	sw	%r2, 0(%r26)
	add	%r1, %r0, %r1
	jr	%r31
read_and_network.3847:
	addi	%r2, %r0, 0
	sw	%r1, 0(%r29)
	addi	%r1, %r2, 0
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	read_net_item.3843
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw	%r2, 0(%r26)
	addi	%r3, %r0, -1
	bne	%r2, %r3, be_else.7704
	jr	%r31
be_else.7704:
	la	%r2, min_caml_and_net	lw	%r3, 0(%r29)
	sll	%r4, %r3, 2
	add	%r26, %r2, %r4
	sw	%r1, 0(%r26)
	addi	%r1, %r0, 1
	add	%r1, %r3, %r1
	j	read_and_network.3847
read_parameter.3849:
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	read_environ.3835
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	read_all_object.3841
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r1, %r0, 0
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	read_and_network.3847
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	la	%r1, min_caml_or_net	addi	%r2, %r0, 0
	addi	%r3, %r0, 0
	sw	%r1, 0(%r29)
	sw	%r2, 4(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	read_or_network.3845
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw	%r2, 4(%r29)
	sll	%r2, %r2, 2
	lw	%r3, 0(%r29)
	add	%r26, %r3, %r2
	sw	%r1, 0(%r26)
	jr	%r31
solver_rect.3851:
	la	%r3, l.6271	lw	%f0, 0(%r3)
	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f1, 0(%r26)
	sw	%r1, 0(%r29)
	sw	%r2, 4(%r29)
	c.eq.s	0, %f0, %f1
	bf.s	0, bt.s_else.7707
	addi	%r1, %r0, 0
	j	bt.s_cont.7708
bt.s_else.7707:
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_isinvert.3796
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	la	%r2, l.6271	lw	%f0, 0(%r2)
	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	lw	%r3, 4(%r29)
	add	%r26, %r3, %r2
	lw.s	%f1, 0(%r26)
	c.le.s	0, %f0, %f1
	bf.s	0, bt.s_else.7709
	addi	%r2, %r0, 0
	j	bt.s_cont.7710
bt.s_else.7709:
	addi	%r2, %r0, 1
bt.s_cont.7710:
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	xor.3783
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7711
	lw	%r1, 0(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_param_a.3800
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	neg.s	%f0, %f0
	j	be_cont.7712
be_else.7711:
	lw	%r1, 0(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_param_a.3800
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
be_cont.7712:
	la	%r1, min_caml_solver_w_vec	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	sub.s	%f0, %f1, %f0
	addi	%r1, %r0, 0
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	inv.s	%f31, %f1
	mul.s	%f0, %f31, %f0
	lw	%r1, 0(%r29)
	sw.s	%f0, 8(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_param_b.3802
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	lw.s	%f2, 8(%r29)
	mul.s	%f2, %f1, %f1
	la	%r1, min_caml_solver_w_vec	addi	%r3, %r0, 1
	sll	%r3, %r3, 2
	add	%r26, %r1, %r3
	lw.s	%f3, 0(%r26)
	add.s	%f1, %f3, %f1
	sw.s	%f0, 12(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	min_caml_abs_float
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 12(%r29)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7713
	addi	%r1, %r0, 0
	j	bt.s_cont.7714
bt.s_else.7713:
	lw	%r1, 0(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_param_c.3804
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	lw.s	%f2, 8(%r29)
	mul.s	%f2, %f1, %f1
	la	%r1, min_caml_solver_w_vec	addi	%r3, %r0, 2
	sll	%r3, %r3, 2
	add	%r26, %r1, %r3
	lw.s	%f3, 0(%r26)
	add.s	%f1, %f3, %f1
	sw.s	%f0, 16(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	min_caml_abs_float
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 16(%r29)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7715
	addi	%r1, %r0, 0
	j	bt.s_cont.7716
bt.s_else.7715:
	la	%r1, min_caml_solver_dist	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 8(%r29)
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
bt.s_cont.7716:
bt.s_cont.7714:
bt.s_cont.7708:
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7717
	la	%r1, l.6271	lw	%f0, 0(%r1)
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	c.eq.s	0, %f0, %f1
	bf.s	0, bt.s_else.7718
	addi	%r1, %r0, 0
	j	bt.s_cont.7719
bt.s_else.7718:
	lw	%r1, 0(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_isinvert.3796
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	la	%r2, l.6271	lw	%f0, 0(%r2)
	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	lw	%r3, 4(%r29)
	add	%r26, %r3, %r2
	lw.s	%f1, 0(%r26)
	c.le.s	0, %f0, %f1
	bf.s	0, bt.s_else.7720
	addi	%r2, %r0, 0
	j	bt.s_cont.7721
bt.s_else.7720:
	addi	%r2, %r0, 1
bt.s_cont.7721:
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	xor.3783
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7722
	lw	%r1, 0(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_param_b.3802
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	neg.s	%f0, %f0
	j	be_cont.7723
be_else.7722:
	lw	%r1, 0(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_param_b.3802
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
be_cont.7723:
	la	%r1, min_caml_solver_w_vec	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	sub.s	%f0, %f1, %f0
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	inv.s	%f31, %f1
	mul.s	%f0, %f31, %f0
	lw	%r1, 0(%r29)
	sw.s	%f0, 20(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_param_c.3804
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	lw.s	%f2, 20(%r29)
	mul.s	%f2, %f1, %f1
	la	%r1, min_caml_solver_w_vec	addi	%r3, %r0, 2
	sll	%r3, %r3, 2
	add	%r26, %r1, %r3
	lw.s	%f3, 0(%r26)
	add.s	%f1, %f3, %f1
	sw.s	%f0, 24(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	min_caml_abs_float
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw.s	%f1, 24(%r29)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7724
	addi	%r1, %r0, 0
	j	bt.s_cont.7725
bt.s_else.7724:
	lw	%r1, 0(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_param_a.3800
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	addi	%r1, %r0, 0
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	lw.s	%f2, 20(%r29)
	mul.s	%f2, %f1, %f1
	la	%r1, min_caml_solver_w_vec	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r1, %r3
	lw.s	%f3, 0(%r26)
	add.s	%f1, %f3, %f1
	sw.s	%f0, 28(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	min_caml_abs_float
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw.s	%f1, 28(%r29)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7726
	addi	%r1, %r0, 0
	j	bt.s_cont.7727
bt.s_else.7726:
	la	%r1, min_caml_solver_dist	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 20(%r29)
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
bt.s_cont.7727:
bt.s_cont.7725:
bt.s_cont.7719:
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7728
	la	%r1, l.6271	lw	%f0, 0(%r1)
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	c.eq.s	0, %f0, %f1
	bf.s	0, bt.s_else.7729
	addi	%r1, %r0, 0
	j	bt.s_cont.7730
bt.s_else.7729:
	lw	%r1, 0(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	o_isinvert.3796
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	la	%r2, l.6271	lw	%f0, 0(%r2)
	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	lw	%r3, 4(%r29)
	add	%r26, %r3, %r2
	lw.s	%f1, 0(%r26)
	c.le.s	0, %f0, %f1
	bf.s	0, bt.s_else.7731
	addi	%r2, %r0, 0
	j	bt.s_cont.7732
bt.s_else.7731:
	addi	%r2, %r0, 1
bt.s_cont.7732:
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	xor.3783
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7733
	lw	%r1, 0(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	o_param_c.3804
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	neg.s	%f0, %f0
	j	be_cont.7734
be_else.7733:
	lw	%r1, 0(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	o_param_c.3804
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
be_cont.7734:
	la	%r1, min_caml_solver_w_vec	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	sub.s	%f0, %f1, %f0
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	inv.s	%f31, %f1
	mul.s	%f0, %f31, %f0
	lw	%r1, 0(%r29)
	sw.s	%f0, 32(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	o_param_a.3800
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	addi	%r1, %r0, 0
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	lw.s	%f2, 32(%r29)
	mul.s	%f2, %f1, %f1
	la	%r1, min_caml_solver_w_vec	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r1, %r3
	lw.s	%f3, 0(%r26)
	add.s	%f1, %f3, %f1
	sw.s	%f0, 36(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	min_caml_abs_float
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	lw.s	%f1, 36(%r29)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7735
	addi	%r1, %r0, 0
	j	bt.s_cont.7736
bt.s_else.7735:
	lw	%r1, 0(%r29)
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	o_param_b.3802
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	lw.s	%f2, 32(%r29)
	mul.s	%f2, %f1, %f1
	la	%r1, min_caml_solver_w_vec	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f3, 0(%r26)
	add.s	%f1, %f3, %f1
	sw.s	%f0, 40(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	min_caml_abs_float
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	lw.s	%f1, 40(%r29)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7737
	addi	%r1, %r0, 0
	j	bt.s_cont.7738
bt.s_else.7737:
	la	%r1, min_caml_solver_dist	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 32(%r29)
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
bt.s_cont.7738:
bt.s_cont.7736:
bt.s_cont.7730:
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7739
	addi	%r1, %r0, 0
	jr	%r31
be_else.7739:
	addi	%r1, %r0, 3
	jr	%r31
be_else.7728:
	addi	%r1, %r0, 2
	jr	%r31
be_else.7717:
	addi	%r1, %r0, 1
	jr	%r31
solver_surface.3854:
	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f0, 0(%r26)
	sw	%r1, 0(%r29)
	sw	%r2, 4(%r29)
	sw.s	%f0, 8(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_param_a.3800
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw.s	%f1, 8(%r29)
	mul.s	%f1, %f0, %f0
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	lw	%r1, 0(%r29)
	sw.s	%f0, 12(%r29)
	sw.s	%f1, 16(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_param_b.3802
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 16(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 12(%r29)
	add.s	%f1, %f0, %f0
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	lw	%r1, 0(%r29)
	sw.s	%f0, 20(%r29)
	sw.s	%f1, 24(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_param_c.3804
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw.s	%f1, 24(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 20(%r29)
	add.s	%f1, %f0, %f0
	la	%r1, l.6271	lw	%f1, 0(%r1)
	c.le.s	0, %f0, %f1
	bf.s	0, bt.s_else.7740
	addi	%r1, %r0, 0
	jr	%r31
bt.s_else.7740:
	la	%r1, min_caml_solver_w_vec	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	lw	%r1, 0(%r29)
	sw.s	%f0, 28(%r29)
	sw.s	%f1, 32(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	o_param_a.3800
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw.s	%f1, 32(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_solver_w_vec	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	lw	%r1, 0(%r29)
	sw.s	%f0, 36(%r29)
	sw.s	%f1, 40(%r29)
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	o_param_b.3802
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	lw.s	%f1, 40(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 36(%r29)
	add.s	%f1, %f0, %f0
	la	%r1, min_caml_solver_w_vec	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	lw	%r1, 0(%r29)
	sw.s	%f0, 44(%r29)
	sw.s	%f1, 48(%r29)
	sw	%r31, 52(%r29)
	addi	%r29, %r29, 56
	jalr	o_param_c.3804
	addi	%r29, %r29, -56
	lw	%r31, 52(%r29)
	lw.s	%f1, 48(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 44(%r29)
	add.s	%f1, %f0, %f0
	lw.s	%f1, 28(%r29)
	inv.s	%f31, %f1
	mul.s	%f0, %f31, %f0
	la	%r1, min_caml_solver_dist	addi	%r2, %r0, 0
	neg.s	%f0, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
	jr	%r31
in_prod_sqr_obj.3857:
	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f0, 0(%r26)
	sw	%r2, 0(%r29)
	sw	%r1, 4(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	fsqr.3786
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw	%r1, 4(%r29)
	sw.s	%f0, 8(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_param_a.3800
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw.s	%f1, 8(%r29)
	mul.s	%f1, %f0, %f0
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	lw	%r2, 0(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	sw.s	%f0, 12(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	fsqr.3786
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw	%r1, 4(%r29)
	sw.s	%f0, 16(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_param_b.3802
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 16(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 12(%r29)
	add.s	%f1, %f0, %f0
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	lw	%r2, 0(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	sw.s	%f0, 20(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	fsqr.3786
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw	%r1, 4(%r29)
	sw.s	%f0, 24(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_param_c.3804
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw.s	%f1, 24(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 20(%r29)
	add.s	%f1, %f0, %f0
	jr	%r31
in_prod_co_objrot.3860:
	addi	%r3, %r0, 1
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f0, 0(%r26)
	addi	%r3, %r0, 2
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	sw	%r1, 0(%r29)
	sw	%r2, 4(%r29)
	sw.s	%f0, 8(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_param_r1.3822
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw.s	%f1, 8(%r29)
	mul.s	%f1, %f0, %f0
	addi	%r1, %r0, 0
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	add	%r26, %r2, %r1
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	lw	%r1, 0(%r29)
	sw.s	%f0, 12(%r29)
	sw.s	%f1, 16(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_param_r2.3824
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 16(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 12(%r29)
	add.s	%f1, %f0, %f0
	addi	%r1, %r0, 0
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	add	%r26, %r2, %r1
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	lw	%r1, 0(%r29)
	sw.s	%f0, 20(%r29)
	sw.s	%f1, 24(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_param_r3.3826
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw.s	%f1, 24(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 20(%r29)
	add.s	%f1, %f0, %f0
	jr	%r31
solver2nd_mul_b.3863:
	la	%r3, min_caml_solver_w_vec	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	sw	%r1, 0(%r29)
	sw	%r2, 4(%r29)
	sw.s	%f0, 8(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_param_a.3800
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw.s	%f1, 8(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_solver_w_vec	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	lw	%r1, 0(%r29)
	sw.s	%f0, 12(%r29)
	sw.s	%f1, 16(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_param_b.3802
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 16(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 12(%r29)
	add.s	%f1, %f0, %f0
	la	%r1, min_caml_solver_w_vec	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	lw	%r1, 0(%r29)
	sw.s	%f0, 20(%r29)
	sw.s	%f1, 24(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_param_c.3804
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw.s	%f1, 24(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 20(%r29)
	add.s	%f1, %f0, %f0
	jr	%r31
solver2nd_rot_b.3866:
	la	%r3, min_caml_solver_w_vec	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	addi	%r3, %r0, 1
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r3, min_caml_solver_w_vec	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	addi	%r3, %r0, 2
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	add.s	%f0, %f1, %f0
	sw	%r1, 0(%r29)
	sw	%r2, 4(%r29)
	sw.s	%f0, 8(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_param_r1.3822
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw.s	%f1, 8(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_solver_w_vec	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	la	%r1, min_caml_solver_w_vec	addi	%r3, %r0, 2
	sll	%r3, %r3, 2
	add	%r26, %r1, %r3
	lw.s	%f2, 0(%r26)
	addi	%r1, %r0, 0
	sll	%r1, %r1, 2
	add	%r26, %r2, %r1
	lw.s	%f3, 0(%r26)
	mul.s	%f2, %f3, %f2
	add.s	%f1, %f2, %f1
	lw	%r1, 0(%r29)
	sw.s	%f0, 12(%r29)
	sw.s	%f1, 16(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_param_r2.3824
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 16(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 12(%r29)
	add.s	%f1, %f0, %f0
	la	%r1, min_caml_solver_w_vec	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	la	%r1, min_caml_solver_w_vec	addi	%r3, %r0, 1
	sll	%r3, %r3, 2
	add	%r26, %r1, %r3
	lw.s	%f2, 0(%r26)
	addi	%r1, %r0, 0
	sll	%r1, %r1, 2
	add	%r26, %r2, %r1
	lw.s	%f3, 0(%r26)
	mul.s	%f2, %f3, %f2
	add.s	%f1, %f2, %f1
	lw	%r1, 0(%r29)
	sw.s	%f0, 20(%r29)
	sw.s	%f1, 24(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_param_r3.3826
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw.s	%f1, 24(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 20(%r29)
	add.s	%f1, %f0, %f0
	jr	%r31
solver_second.3869:
	sw	%r2, 0(%r29)
	sw	%r1, 4(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	in_prod_sqr_obj.3857
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw	%r1, 4(%r29)
	sw.s	%f0, 8(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_isrot.3798
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7741
	lw.s	%f0, 8(%r29)
	mov.s	%f0, %f0
	j	be_cont.7742
be_else.7741:
	lw	%r1, 4(%r29)
	lw	%r2, 0(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	in_prod_co_objrot.3860
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw.s	%f1, 8(%r29)
	add.s	%f1, %f0, %f0
be_cont.7742:
	la	%r1, l.6271	lw	%f1, 0(%r1)
	c.eq.s	0, %f1, %f0
	bf.s	0, bt.s_else.7743
	addi	%r1, %r0, 0
	jr	%r31
bt.s_else.7743:
	la	%r1, l.6246	lw	%f1, 0(%r1)
	lw	%r1, 4(%r29)
	lw	%r2, 0(%r29)
	sw.s	%f0, 12(%r29)
	sw.s	%f1, 16(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	solver2nd_mul_b.3863
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 16(%r29)
	mul.s	%f1, %f0, %f0
	lw	%r1, 4(%r29)
	sw.s	%f0, 20(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_isrot.3798
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7744
	lw.s	%f0, 20(%r29)
	mov.s	%f0, %f0
	j	be_cont.7745
be_else.7744:
	lw	%r1, 4(%r29)
	lw	%r2, 0(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	solver2nd_rot_b.3866
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw.s	%f1, 20(%r29)
	add.s	%f1, %f0, %f0
be_cont.7745:
	la	%r2, min_caml_solver_w_vec	lw	%r1, 4(%r29)
	sw.s	%f0, 24(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	in_prod_sqr_obj.3857
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw	%r1, 4(%r29)
	sw.s	%f0, 28(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	o_isrot.3798
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7746
	lw.s	%f0, 28(%r29)
	mov.s	%f0, %f0
	j	be_cont.7747
be_else.7746:
	la	%r2, min_caml_solver_w_vec	lw	%r1, 4(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	in_prod_co_objrot.3860
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw.s	%f1, 28(%r29)
	add.s	%f1, %f0, %f0
be_cont.7747:
	lw	%r1, 4(%r29)
	sw.s	%f0, 32(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	o_form.3792
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	addi	%r2, %r0, 3
	bne	%r1, %r2, be_else.7748
	la	%r1, l.6273	lw	%f0, 0(%r1)
	lw.s	%f1, 32(%r29)
	sub.s	%f1, %f0, %f0
	j	be_cont.7749
be_else.7748:
	lw.s	%f0, 32(%r29)
	mov.s	%f0, %f0
be_cont.7749:
	la	%r1, l.6521	lw	%f1, 0(%r1)
	lw.s	%f2, 12(%r29)
	mul.s	%f1, %f2, %f1
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 24(%r29)
	sw.s	%f0, 36(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	fsqr.3786
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	lw.s	%f1, 36(%r29)
	sub.s	%f0, %f1, %f0
	la	%r1, l.6271	lw	%f1, 0(%r1)
	c.le.s	0, %f0, %f1
	bf.s	0, bt.s_else.7750
	addi	%r1, %r0, 0
	jr	%r31
bt.s_else.7750:
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	min_caml_sqrt
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	lw	%r1, 4(%r29)
	sw.s	%f0, 40(%r29)
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	o_isinvert.3796
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7751
	lw.s	%f0, 40(%r29)
	neg.s	%f0, %f0
	j	be_cont.7752
be_else.7751:
	lw.s	%f0, 40(%r29)
	mov.s	%f0, %f0
be_cont.7752:
	la	%r1, min_caml_solver_dist	addi	%r2, %r0, 0
	lw.s	%f1, 24(%r29)
	sub.s	%f0, %f1, %f0
	la	%r3, l.6246	lw	%f1, 0(%r3)
	inv.s	%f31, %f1
	mul.s	%f0, %f31, %f0
	lw.s	%f1, 12(%r29)
	inv.s	%f31, %f1
	mul.s	%f0, %f31, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
	jr	%r31
solver.3872:
	la	%r4, min_caml_objects	sll	%r1, %r1, 2
	add	%r26, %r4, %r1
	lw	%r1, 0(%r26)
	la	%r4, min_caml_solver_w_vec	addi	%r5, %r0, 0
	addi	%r6, %r0, 0
	sll	%r6, %r6, 2
	add	%r26, %r3, %r6
	lw.s	%f0, 0(%r26)
	sw	%r2, 0(%r29)
	sw	%r1, 4(%r29)
	sw	%r3, 8(%r29)
	sw	%r4, 12(%r29)
	sw	%r5, 16(%r29)
	sw.s	%f0, 20(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_param_x.3806
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw.s	%f1, 20(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 16(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 12(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_solver_w_vec	addi	%r2, %r0, 1
	addi	%r3, %r0, 1
	sll	%r3, %r3, 2
	lw	%r4, 8(%r29)
	add	%r26, %r4, %r3
	lw.s	%f0, 0(%r26)
	lw	%r3, 4(%r29)
	sw	%r1, 24(%r29)
	sw	%r2, 28(%r29)
	sw.s	%f0, 32(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	o_param_y.3808
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw.s	%f1, 32(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 28(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 24(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_solver_w_vec	addi	%r2, %r0, 2
	addi	%r3, %r0, 2
	sll	%r3, %r3, 2
	lw	%r4, 8(%r29)
	add	%r26, %r4, %r3
	lw.s	%f0, 0(%r26)
	lw	%r3, 4(%r29)
	sw	%r1, 36(%r29)
	sw	%r2, 40(%r29)
	sw.s	%f0, 44(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 52(%r29)
	addi	%r29, %r29, 56
	jalr	o_param_z.3810
	addi	%r29, %r29, -56
	lw	%r31, 52(%r29)
	lw.s	%f1, 44(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 40(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 36(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	lw	%r1, 4(%r29)
	sw	%r31, 52(%r29)
	addi	%r29, %r29, 56
	jalr	o_form.3792
	addi	%r29, %r29, -56
	lw	%r31, 52(%r29)
	addi	%r2, %r0, 1
	bne	%r1, %r2, be_else.7753
	lw	%r1, 4(%r29)
	lw	%r2, 0(%r29)
	j	solver_rect.3851
be_else.7753:
	addi	%r2, %r0, 2
	bne	%r1, %r2, be_else.7754
	lw	%r1, 4(%r29)
	lw	%r2, 0(%r29)
	j	solver_surface.3854
be_else.7754:
	lw	%r1, 4(%r29)
	lw	%r2, 0(%r29)
	j	solver_second.3869
is_rect_outside.3876:
	sw	%r1, 0(%r29)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	o_param_a.3800
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	la	%r1, min_caml_isoutside_q	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	sw.s	%f0, 4(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	min_caml_abs_float
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw.s	%f1, 4(%r29)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7755
	addi	%r1, %r0, 0
	j	bt.s_cont.7756
bt.s_else.7755:
	lw	%r1, 0(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_param_b.3802
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	la	%r1, min_caml_isoutside_q	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	sw.s	%f0, 8(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	min_caml_abs_float
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw.s	%f1, 8(%r29)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7757
	addi	%r1, %r0, 0
	j	bt.s_cont.7758
bt.s_else.7757:
	lw	%r1, 0(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_param_c.3804
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	la	%r1, min_caml_isoutside_q	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	sw.s	%f0, 12(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	min_caml_abs_float
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 12(%r29)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7759
	addi	%r1, %r0, 0
	j	bt.s_cont.7760
bt.s_else.7759:
	addi	%r1, %r0, 1
bt.s_cont.7760:
bt.s_cont.7758:
bt.s_cont.7756:
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7761
	lw	%r1, 0(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_isinvert.3796
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7762
	addi	%r1, %r0, 1
	jr	%r31
be_else.7762:
	addi	%r1, %r0, 0
	jr	%r31
be_else.7761:
	lw	%r1, 0(%r29)
	j	o_isinvert.3796
is_plane_outside.3878:
	sw	%r1, 0(%r29)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	o_param_a.3800
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	la	%r1, min_caml_isoutside_q	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	lw	%r1, 0(%r29)
	sw.s	%f0, 4(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_param_b.3802
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	la	%r1, min_caml_isoutside_q	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	lw.s	%f1, 4(%r29)
	add.s	%f1, %f0, %f0
	lw	%r1, 0(%r29)
	sw.s	%f0, 8(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_param_c.3804
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	la	%r1, min_caml_isoutside_q	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	lw.s	%f1, 8(%r29)
	add.s	%f1, %f0, %f0
	la	%r1, l.6271	lw	%f1, 0(%r1)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7763
	addi	%r1, %r0, 0
	j	bt.s_cont.7764
bt.s_else.7763:
	addi	%r1, %r0, 1
bt.s_cont.7764:
	lw	%r2, 0(%r29)
	sw	%r1, 12(%r29)
	addi	%r1, %r2, 0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_isinvert.3796
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw	%r2, 12(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	xor.3783
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7765
	addi	%r1, %r0, 1
	jr	%r31
be_else.7765:
	addi	%r1, %r0, 0
	jr	%r31
is_second_outside.3880:
	la	%r2, min_caml_isoutside_q	sw	%r1, 0(%r29)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	in_prod_sqr_obj.3857
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	lw	%r1, 0(%r29)
	sw.s	%f0, 4(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_form.3792
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r2, %r0, 3
	bne	%r1, %r2, be_else.7766
	la	%r1, l.6273	lw	%f0, 0(%r1)
	lw.s	%f1, 4(%r29)
	sub.s	%f1, %f0, %f0
	j	be_cont.7767
be_else.7766:
	lw.s	%f0, 4(%r29)
	mov.s	%f0, %f0
be_cont.7767:
	lw	%r1, 0(%r29)
	sw.s	%f0, 8(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_isrot.3798
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7768
	lw.s	%f0, 8(%r29)
	mov.s	%f0, %f0
	j	be_cont.7769
be_else.7768:
	la	%r2, min_caml_isoutside_q	lw	%r1, 0(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	in_prod_co_objrot.3860
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw.s	%f1, 8(%r29)
	add.s	%f1, %f0, %f0
be_cont.7769:
	la	%r1, l.6271	lw	%f1, 0(%r1)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7770
	addi	%r1, %r0, 0
	j	bt.s_cont.7771
bt.s_else.7770:
	addi	%r1, %r0, 1
bt.s_cont.7771:
	lw	%r2, 0(%r29)
	sw	%r1, 12(%r29)
	addi	%r1, %r2, 0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_isinvert.3796
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw	%r2, 12(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	xor.3783
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7772
	addi	%r1, %r0, 1
	jr	%r31
be_else.7772:
	addi	%r1, %r0, 0
	jr	%r31
is_outside.3882:
	la	%r2, min_caml_isoutside_q	addi	%r3, %r0, 0
	la	%r4, min_caml_chkinside_p	addi	%r5, %r0, 0
	sll	%r5, %r5, 2
	add	%r26, %r4, %r5
	lw.s	%f0, 0(%r26)
	sw	%r1, 0(%r29)
	sw	%r2, 4(%r29)
	sw	%r3, 8(%r29)
	sw.s	%f0, 12(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_param_x.3806
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 12(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 8(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_isoutside_q	addi	%r2, %r0, 1
	la	%r3, min_caml_chkinside_p	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	lw	%r3, 0(%r29)
	sw	%r1, 16(%r29)
	sw	%r2, 20(%r29)
	sw.s	%f0, 24(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_param_y.3808
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw.s	%f1, 24(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 20(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 16(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_isoutside_q	addi	%r2, %r0, 2
	la	%r3, min_caml_chkinside_p	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	lw	%r3, 0(%r29)
	sw	%r1, 28(%r29)
	sw	%r2, 32(%r29)
	sw.s	%f0, 36(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	o_param_z.3810
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	lw.s	%f1, 36(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 32(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 28(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	lw	%r1, 0(%r29)
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	o_form.3792
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	addi	%r2, %r0, 1
	bne	%r1, %r2, be_else.7773
	lw	%r1, 0(%r29)
	j	is_rect_outside.3876
be_else.7773:
	addi	%r2, %r0, 2
	bne	%r1, %r2, be_else.7774
	lw	%r1, 0(%r29)
	j	is_plane_outside.3878
be_else.7774:
	lw	%r1, 0(%r29)
	j	is_second_outside.3880
check_all_inside.3884:
	sll	%r3, %r1, 2
	add	%r26, %r2, %r3
	lw	%r3, 0(%r26)
	addi	%r4, %r0, -1
	bne	%r3, %r4, be_else.7775
	addi	%r1, %r0, 1
	jr	%r31
be_else.7775:
	la	%r4, min_caml_objects	sll	%r3, %r3, 2
	add	%r26, %r4, %r3
	lw	%r3, 0(%r26)
	sw	%r2, 0(%r29)
	sw	%r1, 4(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	is_outside.3882
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7776
	addi	%r1, %r0, 1
	lw	%r2, 4(%r29)
	add	%r1, %r2, %r1
	lw	%r2, 0(%r29)
	j	check_all_inside.3884
be_else.7776:
	addi	%r1, %r0, 0
	jr	%r31
shadow_check_and_group.3887:
	sll	%r4, %r1, 2
	add	%r26, %r2, %r4
	lw	%r4, 0(%r26)
	addi	%r5, %r0, -1
	bne	%r4, %r5, be_else.7777
	addi	%r1, %r0, 0
	jr	%r31
be_else.7777:
	sll	%r4, %r1, 2
	add	%r26, %r2, %r4
	lw	%r4, 0(%r26)
	la	%r5, min_caml_light	sw	%r3, 0(%r29)
	sw	%r2, 4(%r29)
	sw	%r1, 8(%r29)
	sw	%r4, 12(%r29)
	addi	%r2, %r5, 0
	addi	%r1, %r4, 0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	solver.3872
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	la	%r2, min_caml_solver_dist	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f0, 0(%r26)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7778
	addi	%r1, %r0, 0
	j	be_cont.7779
be_else.7778:
	la	%r1, l.6553	lw	%f1, 0(%r1)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7780
	addi	%r1, %r0, 0
	j	bt.s_cont.7781
bt.s_else.7780:
	addi	%r1, %r0, 1
bt.s_cont.7781:
be_cont.7779:
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7782
	la	%r1, min_caml_objects	lw	%r2, 12(%r29)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw	%r1, 0(%r26)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_isinvert.3796
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7783
	addi	%r1, %r0, 0
	jr	%r31
be_else.7783:
	addi	%r1, %r0, 1
	lw	%r2, 8(%r29)
	add	%r1, %r2, %r1
	lw	%r2, 4(%r29)
	lw	%r3, 0(%r29)
	j	shadow_check_and_group.3887
be_else.7782:
	la	%r1, l.6555	lw	%f1, 0(%r1)
	add.s	%f0, %f1, %f0
	la	%r1, min_caml_chkinside_p	addi	%r2, %r0, 0
	la	%r3, min_caml_light	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f1, %f0, %f1
	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	lw	%r4, 0(%r29)
	add	%r26, %r4, %r3
	lw.s	%f2, 0(%r26)
	add.s	%f1, %f2, %f1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f1, 0(%r26)
	la	%r1, min_caml_chkinside_p	addi	%r2, %r0, 1
	la	%r3, min_caml_light	addi	%r5, %r0, 1
	sll	%r5, %r5, 2
	add	%r26, %r3, %r5
	lw.s	%f1, 0(%r26)
	mul.s	%f1, %f0, %f1
	addi	%r3, %r0, 1
	sll	%r3, %r3, 2
	add	%r26, %r4, %r3
	lw.s	%f2, 0(%r26)
	add.s	%f1, %f2, %f1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f1, 0(%r26)
	la	%r1, min_caml_chkinside_p	addi	%r2, %r0, 2
	la	%r3, min_caml_light	addi	%r5, %r0, 2
	sll	%r5, %r5, 2
	add	%r26, %r3, %r5
	lw.s	%f1, 0(%r26)
	mul.s	%f1, %f0, %f0
	addi	%r3, %r0, 2
	sll	%r3, %r3, 2
	add	%r26, %r4, %r3
	lw.s	%f1, 0(%r26)
	add.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 0
	lw	%r2, 4(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	check_all_inside.3884
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7784
	addi	%r1, %r0, 1
	lw	%r2, 8(%r29)
	add	%r1, %r2, %r1
	lw	%r2, 4(%r29)
	lw	%r3, 0(%r29)
	j	shadow_check_and_group.3887
be_else.7784:
	addi	%r1, %r0, 1
	jr	%r31
shadow_check_one_or_group.3891:
	sll	%r4, %r1, 2
	add	%r26, %r2, %r4
	lw	%r4, 0(%r26)
	addi	%r5, %r0, -1
	bne	%r4, %r5, be_else.7785
	addi	%r1, %r0, 0
	jr	%r31
be_else.7785:
	la	%r5, min_caml_and_net	sll	%r4, %r4, 2
	add	%r26, %r5, %r4
	lw	%r4, 0(%r26)
	addi	%r5, %r0, 0
	sw	%r3, 0(%r29)
	sw	%r2, 4(%r29)
	sw	%r1, 8(%r29)
	addi	%r2, %r4, 0
	addi	%r1, %r5, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	shadow_check_and_group.3887
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7786
	addi	%r1, %r0, 1
	lw	%r2, 8(%r29)
	add	%r1, %r2, %r1
	lw	%r2, 4(%r29)
	lw	%r3, 0(%r29)
	j	shadow_check_one_or_group.3891
be_else.7786:
	addi	%r1, %r0, 1
	jr	%r31
shadow_check_one_or_matrix.3895:
	sll	%r4, %r1, 2
	add	%r26, %r2, %r4
	lw	%r4, 0(%r26)
	addi	%r5, %r0, 0
	sll	%r5, %r5, 2
	add	%r26, %r4, %r5
	lw	%r5, 0(%r26)
	addi	%r6, %r0, -1
	bne	%r5, %r6, be_else.7787
	addi	%r1, %r0, 0
	jr	%r31
be_else.7787:
	addi	%r6, %r0, 99
	bne	%r5, %r6, be_else.7788
	addi	%r5, %r0, 1
	sw	%r3, 0(%r29)
	sw	%r2, 4(%r29)
	sw	%r1, 8(%r29)
	addi	%r2, %r4, 0
	addi	%r1, %r5, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	shadow_check_one_or_group.3891
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7789
	addi	%r1, %r0, 1
	lw	%r2, 8(%r29)
	add	%r1, %r2, %r1
	lw	%r2, 4(%r29)
	lw	%r3, 0(%r29)
	j	shadow_check_one_or_matrix.3895
be_else.7789:
	addi	%r1, %r0, 1
	jr	%r31
be_else.7788:
	la	%r6, min_caml_light	sw	%r4, 12(%r29)
	sw	%r3, 0(%r29)
	sw	%r2, 4(%r29)
	sw	%r1, 8(%r29)
	addi	%r2, %r6, 0
	addi	%r1, %r5, 0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	solver.3872
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7790
	addi	%r1, %r0, 1
	lw	%r2, 8(%r29)
	add	%r1, %r2, %r1
	lw	%r2, 4(%r29)
	lw	%r3, 0(%r29)
	j	shadow_check_one_or_matrix.3895
be_else.7790:
	la	%r1, l.6571	lw	%f0, 0(%r1)
	la	%r1, min_caml_solver_dist	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	c.le.s	0, %f0, %f1
	bf.s	0, bt.s_else.7791
	addi	%r1, %r0, 1
	lw	%r2, 8(%r29)
	add	%r1, %r2, %r1
	lw	%r2, 4(%r29)
	lw	%r3, 0(%r29)
	j	shadow_check_one_or_matrix.3895
bt.s_else.7791:
	addi	%r1, %r0, 1
	lw	%r2, 12(%r29)
	lw	%r3, 0(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	shadow_check_one_or_group.3891
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7792
	addi	%r1, %r0, 1
	lw	%r2, 8(%r29)
	add	%r1, %r2, %r1
	lw	%r2, 4(%r29)
	lw	%r3, 0(%r29)
	j	shadow_check_one_or_matrix.3895
be_else.7792:
	addi	%r1, %r0, 1
	jr	%r31
solve_each_element.3899:
	sll	%r3, %r1, 2
	add	%r26, %r2, %r3
	lw	%r3, 0(%r26)
	addi	%r4, %r0, -1
	bne	%r3, %r4, be_else.7793
	jr	%r31
be_else.7793:
	la	%r4, min_caml_vscan	la	%r5, min_caml_viewpoint	sw	%r1, 0(%r29)
	sw	%r2, 4(%r29)
	sw	%r3, 8(%r29)
	addi	%r2, %r4, 0
	addi	%r1, %r3, 0
	addi	%r3, %r5, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	solver.3872
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7795
	la	%r1, min_caml_objects	lw	%r2, 8(%r29)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw	%r1, 0(%r26)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_isinvert.3796
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7797
	la	%r1, min_caml_end_flag	addi	%r2, %r0, 0
	addi	%r3, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw	%r3, 0(%r26)
	j	be_cont.7798
be_else.7797:
be_cont.7798:
	j	be_cont.7796
be_else.7795:
	la	%r2, min_caml_solver_dist	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f0, 0(%r26)
	la	%r2, l.6571	lw	%f1, 0(%r2)
	c.le.s	0, %f0, %f1
	bf.s	0, bt.s_else.7799
	j	bt.s_cont.7800
bt.s_else.7799:
	la	%r2, min_caml_tmin	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f1, 0(%r26)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7801
	j	bt.s_cont.7802
bt.s_else.7801:
	la	%r2, l.6555	lw	%f1, 0(%r2)
	add.s	%f0, %f1, %f0
	la	%r2, min_caml_chkinside_p	addi	%r3, %r0, 0
	la	%r4, min_caml_vscan	addi	%r5, %r0, 0
	sll	%r5, %r5, 2
	add	%r26, %r4, %r5
	lw.s	%f1, 0(%r26)
	mul.s	%f1, %f0, %f1
	la	%r4, min_caml_viewpoint	addi	%r5, %r0, 0
	sll	%r5, %r5, 2
	add	%r26, %r4, %r5
	lw.s	%f2, 0(%r26)
	add.s	%f1, %f2, %f1
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	sw.s	%f1, 0(%r26)
	la	%r2, min_caml_chkinside_p	addi	%r3, %r0, 1
	la	%r4, min_caml_vscan	addi	%r5, %r0, 1
	sll	%r5, %r5, 2
	add	%r26, %r4, %r5
	lw.s	%f1, 0(%r26)
	mul.s	%f1, %f0, %f1
	la	%r4, min_caml_viewpoint	addi	%r5, %r0, 1
	sll	%r5, %r5, 2
	add	%r26, %r4, %r5
	lw.s	%f2, 0(%r26)
	add.s	%f1, %f2, %f1
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	sw.s	%f1, 0(%r26)
	la	%r2, min_caml_chkinside_p	addi	%r3, %r0, 2
	la	%r4, min_caml_vscan	addi	%r5, %r0, 2
	sll	%r5, %r5, 2
	add	%r26, %r4, %r5
	lw.s	%f1, 0(%r26)
	mul.s	%f1, %f0, %f1
	la	%r4, min_caml_viewpoint	addi	%r5, %r0, 2
	sll	%r5, %r5, 2
	add	%r26, %r4, %r5
	lw.s	%f2, 0(%r26)
	add.s	%f1, %f2, %f1
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	sw.s	%f1, 0(%r26)
	addi	%r2, %r0, 0
	lw	%r3, 4(%r29)
	sw	%r1, 12(%r29)
	sw.s	%f0, 16(%r29)
	addi	%r1, %r2, 0
	addi	%r2, %r3, 0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	check_all_inside.3884
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7803
	j	be_cont.7804
be_else.7803:
	la	%r1, min_caml_tmin	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 16(%r29)
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_crashed_point	addi	%r2, %r0, 0
	la	%r3, min_caml_chkinside_p	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_crashed_point	addi	%r2, %r0, 1
	la	%r3, min_caml_chkinside_p	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_crashed_point	addi	%r2, %r0, 2
	la	%r3, min_caml_chkinside_p	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_intsec_rectside	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw	%r1, 12(%r29)
	sw	%r1, 0(%r26)
	la	%r1, min_caml_crashed_object	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw	%r1, 8(%r29)
	sw	%r1, 0(%r26)
be_cont.7804:
bt.s_cont.7802:
bt.s_cont.7800:
be_cont.7796:
	la	%r1, min_caml_end_flag	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw	%r1, 0(%r26)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7805
	addi	%r1, %r0, 1
	lw	%r2, 0(%r29)
	add	%r1, %r2, %r1
	lw	%r2, 4(%r29)
	j	solve_each_element.3899
be_else.7805:
	jr	%r31
solve_one_or_network.3902:
	sll	%r3, %r1, 2
	add	%r26, %r2, %r3
	lw	%r3, 0(%r26)
	addi	%r4, %r0, -1
	bne	%r3, %r4, be_else.7807
	jr	%r31
be_else.7807:
	la	%r4, min_caml_and_net	sll	%r3, %r3, 2
	add	%r26, %r4, %r3
	lw	%r3, 0(%r26)
	la	%r4, min_caml_end_flag	addi	%r5, %r0, 0
	addi	%r6, %r0, 0
	sll	%r5, %r5, 2
	add	%r26, %r4, %r5
	sw	%r6, 0(%r26)
	addi	%r4, %r0, 0
	sw	%r2, 0(%r29)
	sw	%r1, 4(%r29)
	addi	%r2, %r3, 0
	addi	%r1, %r4, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	solve_each_element.3899
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r1, %r0, 1
	lw	%r2, 4(%r29)
	add	%r1, %r2, %r1
	lw	%r2, 0(%r29)
	j	solve_one_or_network.3902
trace_or_matrix.3905:
	sll	%r3, %r1, 2
	add	%r26, %r2, %r3
	lw	%r3, 0(%r26)
	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw	%r4, 0(%r26)
	addi	%r5, %r0, -1
	bne	%r4, %r5, be_else.7809
	jr	%r31
be_else.7809:
	addi	%r5, %r0, 99
	sw	%r2, 0(%r29)
	sw	%r1, 4(%r29)
	bne	%r4, %r5, be_else.7811
	addi	%r4, %r0, 1
	addi	%r2, %r3, 0
	addi	%r1, %r4, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	solve_one_or_network.3902
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	j	be_cont.7812
be_else.7811:
	la	%r5, min_caml_vscan	la	%r6, min_caml_viewpoint	sw	%r3, 8(%r29)
	addi	%r3, %r6, 0
	addi	%r2, %r5, 0
	addi	%r1, %r4, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	solver.3872
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7813
	j	be_cont.7814
be_else.7813:
	la	%r1, min_caml_solver_dist	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	la	%r1, min_caml_tmin	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7815
	j	bt.s_cont.7816
bt.s_else.7815:
	addi	%r1, %r0, 1
	lw	%r2, 8(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	solve_one_or_network.3902
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
bt.s_cont.7816:
be_cont.7814:
be_cont.7812:
	addi	%r1, %r0, 1
	lw	%r2, 4(%r29)
	add	%r1, %r2, %r1
	lw	%r2, 0(%r29)
	j	trace_or_matrix.3905
tracer.3908:
	la	%r1, min_caml_tmin	addi	%r2, %r0, 0
	la	%r3, l.6607	lw	%f0, 0(%r3)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 0
	la	%r2, min_caml_or_net	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw	%r2, 0(%r26)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	trace_or_matrix.3905
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	la	%r1, min_caml_tmin	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	la	%r1, l.6571	lw	%f1, 0(%r1)
	c.le.s	0, %f0, %f1
	bf.s	0, bt.s_else.7817
	addi	%r1, %r0, 0
	jr	%r31
bt.s_else.7817:
	la	%r1, l.6613	lw	%f1, 0(%r1)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7818
	addi	%r1, %r0, 0
	jr	%r31
bt.s_else.7818:
	addi	%r1, %r0, 1
	jr	%r31
get_nvector_rect.3911:
	la	%r1, min_caml_intsec_rectside	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw	%r1, 0(%r26)
	addi	%r2, %r0, 1
	bne	%r1, %r2, be_else.7819
	la	%r1, min_caml_nvector	addi	%r2, %r0, 0
	la	%r3, min_caml_vscan	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sw	%r1, 0(%r29)
	sw	%r2, 4(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	sgn.3831
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	neg.s	%f0, %f0
	lw	%r1, 4(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 0(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	addi	%r2, %r0, 1
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	addi	%r2, %r0, 2
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	jr	%r31
be_else.7819:
	addi	%r2, %r0, 2
	bne	%r1, %r2, be_else.7821
	la	%r1, min_caml_nvector	addi	%r2, %r0, 0
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	addi	%r2, %r0, 1
	la	%r3, min_caml_vscan	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sw	%r1, 8(%r29)
	sw	%r2, 12(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	sgn.3831
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	neg.s	%f0, %f0
	lw	%r1, 12(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 8(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	addi	%r2, %r0, 2
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	jr	%r31
be_else.7821:
	addi	%r2, %r0, 3
	bne	%r1, %r2, be_else.7823
	la	%r1, min_caml_nvector	addi	%r2, %r0, 0
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	addi	%r2, %r0, 1
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	addi	%r2, %r0, 2
	la	%r3, min_caml_vscan	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sw	%r1, 16(%r29)
	sw	%r2, 20(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	sgn.3831
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	neg.s	%f0, %f0
	lw	%r1, 20(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 16(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	jr	%r31
be_else.7823:
	jr	%r31
get_nvector_plane.3913:
	la	%r2, min_caml_nvector	addi	%r3, %r0, 0
	sw	%r1, 0(%r29)
	sw	%r2, 4(%r29)
	sw	%r3, 8(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_param_a.3800
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	neg.s	%f0, %f0
	lw	%r1, 8(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	addi	%r2, %r0, 1
	lw	%r3, 0(%r29)
	sw	%r1, 12(%r29)
	sw	%r2, 16(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_param_b.3802
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	neg.s	%f0, %f0
	lw	%r1, 16(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 12(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	addi	%r2, %r0, 2
	lw	%r3, 0(%r29)
	sw	%r1, 20(%r29)
	sw	%r2, 24(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_param_c.3804
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	neg.s	%f0, %f0
	lw	%r1, 24(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 20(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	jr	%r31
get_nvector_second_norot.3915:
	la	%r3, min_caml_nvector	addi	%r4, %r0, 0
	addi	%r5, %r0, 0
	sll	%r5, %r5, 2
	add	%r26, %r2, %r5
	lw.s	%f0, 0(%r26)
	sw	%r2, 0(%r29)
	sw	%r3, 4(%r29)
	sw	%r4, 8(%r29)
	sw	%r1, 12(%r29)
	sw.s	%f0, 16(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_param_x.3806
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 16(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 12(%r29)
	sw.s	%f0, 20(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_param_a.3800
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw.s	%f1, 20(%r29)
	mul.s	%f1, %f0, %f0
	lw	%r1, 8(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	addi	%r2, %r0, 1
	addi	%r3, %r0, 1
	sll	%r3, %r3, 2
	lw	%r4, 0(%r29)
	add	%r26, %r4, %r3
	lw.s	%f0, 0(%r26)
	lw	%r3, 12(%r29)
	sw	%r1, 24(%r29)
	sw	%r2, 28(%r29)
	sw.s	%f0, 32(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	o_param_y.3808
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw.s	%f1, 32(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 12(%r29)
	sw.s	%f0, 36(%r29)
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	o_param_b.3802
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	lw.s	%f1, 36(%r29)
	mul.s	%f1, %f0, %f0
	lw	%r1, 28(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 24(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	addi	%r2, %r0, 2
	addi	%r3, %r0, 2
	sll	%r3, %r3, 2
	lw	%r4, 0(%r29)
	add	%r26, %r4, %r3
	lw.s	%f0, 0(%r26)
	lw	%r3, 12(%r29)
	sw	%r1, 40(%r29)
	sw	%r2, 44(%r29)
	sw.s	%f0, 48(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 52(%r29)
	addi	%r29, %r29, 56
	jalr	o_param_z.3810
	addi	%r29, %r29, -56
	lw	%r31, 52(%r29)
	lw.s	%f1, 48(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 12(%r29)
	sw.s	%f0, 52(%r29)
	sw	%r31, 60(%r29)
	addi	%r29, %r29, 64
	jalr	o_param_c.3804
	addi	%r29, %r29, -64
	lw	%r31, 60(%r29)
	lw.s	%f1, 52(%r29)
	mul.s	%f1, %f0, %f0
	lw	%r1, 44(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 40(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	lw	%r2, 12(%r29)
	sw	%r1, 56(%r29)
	addi	%r1, %r2, 0
	sw	%r31, 60(%r29)
	addi	%r29, %r29, 64
	jalr	o_isinvert.3796
	addi	%r29, %r29, -64
	lw	%r31, 60(%r29)
	addi	%r1, %r2, 0
	lw	%r1, 56(%r29)
	j	normalize_vector.3828
get_nvector_second_rot.3918:
	la	%r3, min_caml_nvector_w	addi	%r4, %r0, 0
	addi	%r5, %r0, 0
	sll	%r5, %r5, 2
	add	%r26, %r2, %r5
	lw.s	%f0, 0(%r26)
	sw	%r1, 0(%r29)
	sw	%r2, 4(%r29)
	sw	%r3, 8(%r29)
	sw	%r4, 12(%r29)
	sw.s	%f0, 16(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_param_x.3806
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 16(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 12(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 8(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector_w	addi	%r2, %r0, 1
	addi	%r3, %r0, 1
	sll	%r3, %r3, 2
	lw	%r4, 4(%r29)
	add	%r26, %r4, %r3
	lw.s	%f0, 0(%r26)
	lw	%r3, 0(%r29)
	sw	%r1, 20(%r29)
	sw	%r2, 24(%r29)
	sw.s	%f0, 28(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	o_param_y.3808
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw.s	%f1, 28(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 24(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 20(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector_w	addi	%r2, %r0, 2
	addi	%r3, %r0, 2
	sll	%r3, %r3, 2
	lw	%r4, 4(%r29)
	add	%r26, %r4, %r3
	lw.s	%f0, 0(%r26)
	lw	%r3, 0(%r29)
	sw	%r1, 32(%r29)
	sw	%r2, 36(%r29)
	sw.s	%f0, 40(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	o_param_z.3810
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	lw.s	%f1, 40(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 36(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 32(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	addi	%r2, %r0, 0
	la	%r3, min_caml_nvector_w	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	lw	%r3, 0(%r29)
	sw	%r1, 44(%r29)
	sw	%r2, 48(%r29)
	sw.s	%f0, 52(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 60(%r29)
	addi	%r29, %r29, 64
	jalr	o_param_a.3800
	addi	%r29, %r29, -64
	lw	%r31, 60(%r29)
	lw.s	%f1, 52(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_nvector_w	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	lw	%r1, 0(%r29)
	sw.s	%f0, 56(%r29)
	sw.s	%f1, 60(%r29)
	sw	%r31, 68(%r29)
	addi	%r29, %r29, 72
	jalr	o_param_r3.3826
	addi	%r29, %r29, -72
	lw	%r31, 68(%r29)
	lw.s	%f1, 60(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_nvector_w	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	lw	%r1, 0(%r29)
	sw.s	%f0, 64(%r29)
	sw.s	%f1, 68(%r29)
	sw	%r31, 76(%r29)
	addi	%r29, %r29, 80
	jalr	o_param_r2.3824
	addi	%r29, %r29, -80
	lw	%r31, 76(%r29)
	lw.s	%f1, 68(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 64(%r29)
	add.s	%f1, %f0, %f0
	sw	%r31, 76(%r29)
	addi	%r29, %r29, 80
	jalr	fhalf.3788
	addi	%r29, %r29, -80
	lw	%r31, 76(%r29)
	lw.s	%f1, 56(%r29)
	add.s	%f1, %f0, %f0
	lw	%r1, 48(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 44(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	addi	%r2, %r0, 1
	la	%r3, min_caml_nvector_w	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	lw	%r3, 0(%r29)
	sw	%r1, 72(%r29)
	sw	%r2, 76(%r29)
	sw.s	%f0, 80(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 84(%r29)
	addi	%r29, %r29, 88
	jalr	o_param_b.3802
	addi	%r29, %r29, -88
	lw	%r31, 84(%r29)
	lw.s	%f1, 80(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_nvector_w	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	lw	%r1, 0(%r29)
	sw.s	%f0, 84(%r29)
	sw.s	%f1, 88(%r29)
	sw	%r31, 92(%r29)
	addi	%r29, %r29, 96
	jalr	o_param_r3.3826
	addi	%r29, %r29, -96
	lw	%r31, 92(%r29)
	lw.s	%f1, 88(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_nvector_w	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	lw	%r1, 0(%r29)
	sw.s	%f0, 92(%r29)
	sw.s	%f1, 96(%r29)
	sw	%r31, 100(%r29)
	addi	%r29, %r29, 104
	jalr	o_param_r1.3822
	addi	%r29, %r29, -104
	lw	%r31, 100(%r29)
	lw.s	%f1, 96(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 92(%r29)
	add.s	%f1, %f0, %f0
	sw	%r31, 100(%r29)
	addi	%r29, %r29, 104
	jalr	fhalf.3788
	addi	%r29, %r29, -104
	lw	%r31, 100(%r29)
	lw.s	%f1, 84(%r29)
	add.s	%f1, %f0, %f0
	lw	%r1, 76(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 72(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	addi	%r2, %r0, 2
	la	%r3, min_caml_nvector_w	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	lw	%r3, 0(%r29)
	sw	%r1, 100(%r29)
	sw	%r2, 104(%r29)
	sw.s	%f0, 108(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 116(%r29)
	addi	%r29, %r29, 120
	jalr	o_param_c.3804
	addi	%r29, %r29, -120
	lw	%r31, 116(%r29)
	lw.s	%f1, 108(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_nvector_w	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	lw	%r1, 0(%r29)
	sw.s	%f0, 112(%r29)
	sw.s	%f1, 116(%r29)
	sw	%r31, 124(%r29)
	addi	%r29, %r29, 128
	jalr	o_param_r2.3824
	addi	%r29, %r29, -128
	lw	%r31, 124(%r29)
	lw.s	%f1, 116(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_nvector_w	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	lw	%r1, 0(%r29)
	sw.s	%f0, 120(%r29)
	sw.s	%f1, 124(%r29)
	sw	%r31, 132(%r29)
	addi	%r29, %r29, 136
	jalr	o_param_r1.3822
	addi	%r29, %r29, -136
	lw	%r31, 132(%r29)
	lw.s	%f1, 124(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 120(%r29)
	add.s	%f1, %f0, %f0
	sw	%r31, 132(%r29)
	addi	%r29, %r29, 136
	jalr	fhalf.3788
	addi	%r29, %r29, -136
	lw	%r31, 132(%r29)
	lw.s	%f1, 112(%r29)
	add.s	%f1, %f0, %f0
	lw	%r1, 104(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 100(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_nvector	lw	%r2, 0(%r29)
	sw	%r1, 128(%r29)
	addi	%r1, %r2, 0
	sw	%r31, 132(%r29)
	addi	%r29, %r29, 136
	jalr	o_isinvert.3796
	addi	%r29, %r29, -136
	lw	%r31, 132(%r29)
	addi	%r1, %r2, 0
	lw	%r1, 128(%r29)
	j	normalize_vector.3828
get_nvector.3921:
	sw	%r2, 0(%r29)
	sw	%r1, 4(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_form.3792
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r2, %r0, 1
	bne	%r1, %r2, be_else.7827
	j	get_nvector_rect.3911
be_else.7827:
	addi	%r2, %r0, 2
	bne	%r1, %r2, be_else.7828
	lw	%r1, 4(%r29)
	j	get_nvector_plane.3913
be_else.7828:
	lw	%r1, 4(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_isrot.3798
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7829
	lw	%r1, 4(%r29)
	lw	%r2, 0(%r29)
	j	get_nvector_second_norot.3915
be_else.7829:
	lw	%r1, 4(%r29)
	lw	%r2, 0(%r29)
	j	get_nvector_second_rot.3918
utexture.3924:
	sw	%r2, 0(%r29)
	sw	%r1, 4(%r29)
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	o_texturetype.3790
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	la	%r2, min_caml_texture_color	addi	%r3, %r0, 0
	lw	%r4, 4(%r29)
	sw	%r1, 8(%r29)
	sw	%r2, 12(%r29)
	sw	%r3, 16(%r29)
	addi	%r1, %r4, 0
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	o_color_red.3816
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw	%r1, 16(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 12(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_texture_color	addi	%r2, %r0, 1
	lw	%r3, 4(%r29)
	sw	%r1, 20(%r29)
	sw	%r2, 24(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_color_green.3818
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw	%r1, 24(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 20(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_texture_color	addi	%r2, %r0, 2
	lw	%r3, 4(%r29)
	sw	%r1, 28(%r29)
	sw	%r2, 32(%r29)
	addi	%r1, %r3, 0
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	o_color_blue.3820
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw	%r1, 32(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 28(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 1
	lw	%r2, 8(%r29)
	bne	%r2, %r1, be_else.7830
	addi	%r1, %r0, 0
	sll	%r1, %r1, 2
	lw	%r2, 0(%r29)
	add	%r26, %r2, %r1
	lw.s	%f0, 0(%r26)
	lw	%r1, 4(%r29)
	sw.s	%f0, 36(%r29)
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	o_param_x.3806
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	lw.s	%f1, 36(%r29)
	sub.s	%f1, %f0, %f0
	la	%r1, l.6707	lw	%f1, 0(%r1)
	mul.s	%f0, %f1, %f1
	sw.s	%f0, 40(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	min_caml_floor
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	la	%r1, l.6709	lw	%f1, 0(%r1)
	mul.s	%f0, %f1, %f0
	la	%r1, l.6688	lw	%f1, 0(%r1)
	lw.s	%f2, 40(%r29)
	sub.s	%f2, %f0, %f0
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7831
	addi	%r1, %r0, 0
	j	bt.s_cont.7832
bt.s_else.7831:
	addi	%r1, %r0, 1
bt.s_cont.7832:
	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	lw	%r3, 0(%r29)
	add	%r26, %r3, %r2
	lw.s	%f0, 0(%r26)
	lw	%r2, 4(%r29)
	sw	%r1, 44(%r29)
	sw.s	%f0, 48(%r29)
	addi	%r1, %r2, 0
	sw	%r31, 52(%r29)
	addi	%r29, %r29, 56
	jalr	o_param_z.3810
	addi	%r29, %r29, -56
	lw	%r31, 52(%r29)
	lw.s	%f1, 48(%r29)
	sub.s	%f1, %f0, %f0
	la	%r1, l.6707	lw	%f1, 0(%r1)
	mul.s	%f0, %f1, %f1
	sw.s	%f0, 52(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 60(%r29)
	addi	%r29, %r29, 64
	jalr	min_caml_floor
	addi	%r29, %r29, -64
	lw	%r31, 60(%r29)
	la	%r1, l.6709	lw	%f1, 0(%r1)
	mul.s	%f0, %f1, %f0
	la	%r1, l.6688	lw	%f1, 0(%r1)
	lw.s	%f2, 52(%r29)
	sub.s	%f2, %f0, %f0
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7833
	addi	%r1, %r0, 0
	j	bt.s_cont.7834
bt.s_else.7833:
	addi	%r1, %r0, 1
bt.s_cont.7834:
	la	%r2, min_caml_texture_color	addi	%r3, %r0, 1
	addi	%r4, %r0, 0
	lw	%r5, 44(%r29)
	bne	%r5, %r4, be_else.7835
	addi	%r4, %r0, 0
	bne	%r1, %r4, be_else.7837
	la	%r1, l.6692	lw	%f0, 0(%r1)
	j	be_cont.7838
be_else.7837:
	la	%r1, l.6271	lw	%f0, 0(%r1)
be_cont.7838:
	j	be_cont.7836
be_else.7835:
	addi	%r4, %r0, 0
	bne	%r1, %r4, be_else.7839
	la	%r1, l.6271	lw	%f0, 0(%r1)
	j	be_cont.7840
be_else.7839:
	la	%r1, l.6692	lw	%f0, 0(%r1)
be_cont.7840:
be_cont.7836:
	sll	%r1, %r3, 2
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	jr	%r31
be_else.7830:
	addi	%r1, %r0, 2
	bne	%r2, %r1, be_else.7842
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	lw	%r2, 0(%r29)
	add	%r26, %r2, %r1
	lw.s	%f0, 0(%r26)
	la	%r1, l.6699	lw	%f1, 0(%r1)
	mul.s	%f0, %f1, %f0
	sw	%r31, 60(%r29)
	addi	%r29, %r29, 64
	jalr	min_caml_sin
	addi	%r29, %r29, -64
	lw	%r31, 60(%r29)
	sw	%r31, 60(%r29)
	addi	%r29, %r29, 64
	jalr	fsqr.3786
	addi	%r29, %r29, -64
	lw	%r31, 60(%r29)
	la	%r1, min_caml_texture_color	addi	%r2, %r0, 0
	la	%r3, l.6692	lw	%f1, 0(%r3)
	mul.s	%f1, %f0, %f1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f1, 0(%r26)
	la	%r1, min_caml_texture_color	addi	%r2, %r0, 1
	la	%r3, l.6692	lw	%f1, 0(%r3)
	la	%r3, l.6273	lw	%f2, 0(%r3)
	sub.s	%f2, %f0, %f0
	mul.s	%f1, %f0, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	jr	%r31
be_else.7842:
	addi	%r1, %r0, 3
	bne	%r2, %r1, be_else.7844
	addi	%r1, %r0, 0
	sll	%r1, %r1, 2
	lw	%r2, 0(%r29)
	add	%r26, %r2, %r1
	lw.s	%f0, 0(%r26)
	lw	%r1, 4(%r29)
	sw.s	%f0, 56(%r29)
	sw	%r31, 60(%r29)
	addi	%r29, %r29, 64
	jalr	o_param_x.3806
	addi	%r29, %r29, -64
	lw	%r31, 60(%r29)
	lw.s	%f1, 56(%r29)
	sub.s	%f1, %f0, %f0
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	lw	%r2, 0(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	lw	%r1, 4(%r29)
	sw.s	%f0, 60(%r29)
	sw.s	%f1, 64(%r29)
	sw	%r31, 68(%r29)
	addi	%r29, %r29, 72
	jalr	o_param_z.3810
	addi	%r29, %r29, -72
	lw	%r31, 68(%r29)
	lw.s	%f1, 64(%r29)
	sub.s	%f1, %f0, %f0
	lw.s	%f1, 60(%r29)
	sw.s	%f0, 68(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 76(%r29)
	addi	%r29, %r29, 80
	jalr	fsqr.3786
	addi	%r29, %r29, -80
	lw	%r31, 76(%r29)
	lw.s	%f1, 68(%r29)
	sw.s	%f0, 72(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 76(%r29)
	addi	%r29, %r29, 80
	jalr	fsqr.3786
	addi	%r29, %r29, -80
	lw	%r31, 76(%r29)
	lw.s	%f1, 72(%r29)
	add.s	%f1, %f0, %f0
	sw	%r31, 76(%r29)
	addi	%r29, %r29, 80
	jalr	min_caml_sqrt
	addi	%r29, %r29, -80
	lw	%r31, 76(%r29)
	la	%r1, l.6688	lw	%f1, 0(%r1)
	inv.s	%f31, %f1
	mul.s	%f0, %f31, %f0
	sw.s	%f0, 76(%r29)
	sw	%r31, 84(%r29)
	addi	%r29, %r29, 88
	jalr	min_caml_floor
	addi	%r29, %r29, -88
	lw	%r31, 84(%r29)
	lw.s	%f1, 76(%r29)
	sub.s	%f1, %f0, %f0
	la	%r1, l.6690	lw	%f1, 0(%r1)
	mul.s	%f0, %f1, %f0
	sw	%r31, 84(%r29)
	addi	%r29, %r29, 88
	jalr	min_caml_cos
	addi	%r29, %r29, -88
	lw	%r31, 84(%r29)
	sw	%r31, 84(%r29)
	addi	%r29, %r29, 88
	jalr	fsqr.3786
	addi	%r29, %r29, -88
	lw	%r31, 84(%r29)
	la	%r1, min_caml_texture_color	addi	%r2, %r0, 1
	la	%r3, l.6692	lw	%f1, 0(%r3)
	mul.s	%f0, %f1, %f1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f1, 0(%r26)
	la	%r1, min_caml_texture_color	addi	%r2, %r0, 2
	la	%r3, l.6273	lw	%f1, 0(%r3)
	sub.s	%f1, %f0, %f0
	la	%r3, l.6692	lw	%f1, 0(%r3)
	mul.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	jr	%r31
be_else.7844:
	addi	%r1, %r0, 4
	bne	%r2, %r1, be_else.7846
	addi	%r1, %r0, 0
	sll	%r1, %r1, 2
	lw	%r2, 0(%r29)
	add	%r26, %r2, %r1
	lw.s	%f0, 0(%r26)
	lw	%r1, 4(%r29)
	sw.s	%f0, 80(%r29)
	sw	%r31, 84(%r29)
	addi	%r29, %r29, 88
	jalr	o_param_x.3806
	addi	%r29, %r29, -88
	lw	%r31, 84(%r29)
	lw.s	%f1, 80(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 4(%r29)
	sw.s	%f0, 84(%r29)
	sw	%r31, 92(%r29)
	addi	%r29, %r29, 96
	jalr	o_param_a.3800
	addi	%r29, %r29, -96
	lw	%r31, 92(%r29)
	sw	%r31, 92(%r29)
	addi	%r29, %r29, 96
	jalr	min_caml_sqrt
	addi	%r29, %r29, -96
	lw	%r31, 92(%r29)
	lw.s	%f1, 84(%r29)
	mul.s	%f1, %f0, %f0
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	lw	%r2, 0(%r29)
	add	%r26, %r2, %r1
	lw.s	%f1, 0(%r26)
	lw	%r1, 4(%r29)
	sw.s	%f0, 88(%r29)
	sw.s	%f1, 92(%r29)
	sw	%r31, 100(%r29)
	addi	%r29, %r29, 104
	jalr	o_param_z.3810
	addi	%r29, %r29, -104
	lw	%r31, 100(%r29)
	lw.s	%f1, 92(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 4(%r29)
	sw.s	%f0, 96(%r29)
	sw	%r31, 100(%r29)
	addi	%r29, %r29, 104
	jalr	o_param_c.3804
	addi	%r29, %r29, -104
	lw	%r31, 100(%r29)
	sw	%r31, 100(%r29)
	addi	%r29, %r29, 104
	jalr	min_caml_sqrt
	addi	%r29, %r29, -104
	lw	%r31, 100(%r29)
	lw.s	%f1, 96(%r29)
	mul.s	%f1, %f0, %f0
	lw.s	%f1, 88(%r29)
	sw.s	%f0, 100(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 108(%r29)
	addi	%r29, %r29, 112
	jalr	fsqr.3786
	addi	%r29, %r29, -112
	lw	%r31, 108(%r29)
	lw.s	%f1, 100(%r29)
	sw.s	%f0, 104(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 108(%r29)
	addi	%r29, %r29, 112
	jalr	fsqr.3786
	addi	%r29, %r29, -112
	lw	%r31, 108(%r29)
	lw.s	%f1, 104(%r29)
	add.s	%f1, %f0, %f0
	sw	%r31, 108(%r29)
	addi	%r29, %r29, 112
	jalr	min_caml_sqrt
	addi	%r29, %r29, -112
	lw	%r31, 108(%r29)
	la	%r1, l.6666	lw	%f1, 0(%r1)
	lw.s	%f2, 88(%r29)
	sw.s	%f0, 108(%r29)
	sw.s	%f1, 112(%r29)
	addi	%f0, %f2, 0
	sw	%r31, 116(%r29)
	addi	%r29, %r29, 120
	jalr	min_caml_abs_float
	addi	%r29, %r29, -120
	lw	%r31, 116(%r29)
	lw.s	%f1, 112(%r29)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7847
	lw.s	%f0, 88(%r29)
	inv.s	%f31, %f0
	lw.s	%f0, 100(%r29)
	mul.s	%f0, %f31, %f0
	sw	%r31, 116(%r29)
	addi	%r29, %r29, 120
	jalr	min_caml_abs_float
	addi	%r29, %r29, -120
	lw	%r31, 116(%r29)
	sw	%r31, 116(%r29)
	addi	%r29, %r29, 120
	jalr	min_caml_atan
	addi	%r29, %r29, -120
	lw	%r31, 116(%r29)
	la	%r1, l.6670	lw	%f1, 0(%r1)
	mul.s	%f0, %f1, %f0
	j	bt.s_cont.7848
bt.s_else.7847:
	la	%r1, l.6668	lw	%f0, 0(%r1)
bt.s_cont.7848:
	sw.s	%f0, 116(%r29)
	sw	%r31, 124(%r29)
	addi	%r29, %r29, 128
	jalr	min_caml_floor
	addi	%r29, %r29, -128
	lw	%r31, 124(%r29)
	lw.s	%f1, 116(%r29)
	sub.s	%f1, %f0, %f0
	addi	%r1, %r0, 1
	sll	%r1, %r1, 2
	lw	%r2, 0(%r29)
	add	%r26, %r2, %r1
	lw.s	%f2, 0(%r26)
	lw	%r1, 4(%r29)
	sw.s	%f0, 120(%r29)
	sw.s	%f2, 124(%r29)
	sw	%r31, 132(%r29)
	addi	%r29, %r29, 136
	jalr	o_param_y.3808
	addi	%r29, %r29, -136
	lw	%r31, 132(%r29)
	lw.s	%f1, 124(%r29)
	sub.s	%f1, %f0, %f0
	lw	%r1, 4(%r29)
	sw.s	%f0, 128(%r29)
	sw	%r31, 132(%r29)
	addi	%r29, %r29, 136
	jalr	o_param_b.3802
	addi	%r29, %r29, -136
	lw	%r31, 132(%r29)
	sw	%r31, 132(%r29)
	addi	%r29, %r29, 136
	jalr	min_caml_sqrt
	addi	%r29, %r29, -136
	lw	%r31, 132(%r29)
	lw.s	%f1, 128(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, l.6666	lw	%f1, 0(%r1)
	lw.s	%f2, 116(%r29)
	sw.s	%f0, 132(%r29)
	sw.s	%f1, 136(%r29)
	addi	%f0, %f2, 0
	sw	%r31, 140(%r29)
	addi	%r29, %r29, 144
	jalr	min_caml_abs_float
	addi	%r29, %r29, -144
	lw	%r31, 140(%r29)
	lw.s	%f1, 136(%r29)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7849
	lw.s	%f0, 108(%r29)
	inv.s	%f31, %f0
	lw.s	%f0, 132(%r29)
	mul.s	%f0, %f31, %f0
	sw	%r31, 140(%r29)
	addi	%r29, %r29, 144
	jalr	min_caml_abs_float
	addi	%r29, %r29, -144
	lw	%r31, 140(%r29)
	sw	%r31, 140(%r29)
	addi	%r29, %r29, 144
	jalr	min_caml_atan
	addi	%r29, %r29, -144
	lw	%r31, 140(%r29)
	la	%r1, l.6670	lw	%f1, 0(%r1)
	mul.s	%f0, %f1, %f0
	j	bt.s_cont.7850
bt.s_else.7849:
	la	%r1, l.6668	lw	%f0, 0(%r1)
bt.s_cont.7850:
	sw.s	%f0, 140(%r29)
	sw	%r31, 148(%r29)
	addi	%r29, %r29, 152
	jalr	min_caml_floor
	addi	%r29, %r29, -152
	lw	%r31, 148(%r29)
	lw.s	%f1, 140(%r29)
	sub.s	%f1, %f0, %f0
	la	%r1, l.6676	lw	%f1, 0(%r1)
	la	%r1, l.6678	lw	%f2, 0(%r1)
	lw.s	%f3, 120(%r29)
	sub.s	%f2, %f3, %f2
	sw.s	%f0, 144(%r29)
	sw.s	%f1, 148(%r29)
	addi	%f0, %f2, 0
	sw	%r31, 156(%r29)
	addi	%r29, %r29, 160
	jalr	fsqr.3786
	addi	%r29, %r29, -160
	lw	%r31, 156(%r29)
	lw.s	%f1, 148(%r29)
	sub.s	%f1, %f0, %f0
	la	%r1, l.6678	lw	%f1, 0(%r1)
	lw.s	%f2, 144(%r29)
	sub.s	%f1, %f2, %f1
	sw.s	%f0, 152(%r29)
	addi	%f0, %f1, 0
	sw	%r31, 156(%r29)
	addi	%r29, %r29, 160
	jalr	fsqr.3786
	addi	%r29, %r29, -160
	lw	%r31, 156(%r29)
	lw.s	%f1, 152(%r29)
	sub.s	%f1, %f0, %f0
	la	%r1, min_caml_texture_color	addi	%r2, %r0, 2
	la	%r3, l.6271	lw	%f1, 0(%r3)
	c.le.s	0, %f0, %f1
	bf.s	0, bt.s_else.7851
	la	%r3, l.6271	lw	%f0, 0(%r3)
	j	bt.s_cont.7852
bt.s_else.7851:
	la	%r3, l.6682	lw	%f1, 0(%r3)
	mul.s	%f0, %f1, %f0
bt.s_cont.7852:
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	jr	%r31
be_else.7846:
	jr	%r31
in_prod.3927:
	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r1, %r3
	lw.s	%f0, 0(%r26)
	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	addi	%r3, %r0, 1
	sll	%r3, %r3, 2
	add	%r26, %r1, %r3
	lw.s	%f1, 0(%r26)
	addi	%r3, %r0, 1
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	add.s	%f0, %f1, %f0
	addi	%r3, %r0, 2
	sll	%r3, %r3, 2
	add	%r26, %r1, %r3
	lw.s	%f1, 0(%r26)
	addi	%r1, %r0, 2
	sll	%r1, %r1, 2
	add	%r26, %r2, %r1
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	add.s	%f0, %f1, %f0
	jr	%r31
accumulate_vec_mul.3930:
	addi	%r3, %r0, 0
	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r1, %r4
	lw.s	%f1, 0(%r26)
	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r2, %r4
	lw.s	%f2, 0(%r26)
	mul.s	%f0, %f2, %f2
	add.s	%f1, %f2, %f1
	sll	%r3, %r3, 2
	add	%r26, %r1, %r3
	sw.s	%f1, 0(%r26)
	addi	%r3, %r0, 1
	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r1, %r4
	lw.s	%f1, 0(%r26)
	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r2, %r4
	lw.s	%f2, 0(%r26)
	mul.s	%f0, %f2, %f2
	add.s	%f1, %f2, %f1
	sll	%r3, %r3, 2
	add	%r26, %r1, %r3
	sw.s	%f1, 0(%r26)
	addi	%r3, %r0, 2
	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r1, %r4
	lw.s	%f1, 0(%r26)
	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r2, %r4
	lw.s	%f2, 0(%r26)
	mul.s	%f0, %f2, %f0
	add.s	%f1, %f0, %f0
	sll	%r2, %r3, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	jr	%r31
raytracing.3934:
	la	%r2, min_caml_viewpoint	la	%r3, min_caml_vscan	sw.s	%f0, 0(%r29)
	sw	%r1, 4(%r29)
	addi	%r1, %r2, 0
	addi	%r2, %r3, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	tracer.3908
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	addi	%r2, %r0, 0
	sw	%r1, 8(%r29)
	bne	%r1, %r2, be_else.7856
	addi	%r2, %r0, 0
	lw	%r3, 4(%r29)
	bne	%r3, %r2, be_else.7858
	j	be_cont.7859
be_else.7858:
	la	%r2, min_caml_vscan	la	%r4, min_caml_light	addi	%r1, %r2, 0
	addi	%r2, %r4, 0
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jalr	in_prod.3927
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	neg.s	%f0, %f0
	la	%r1, l.6271	lw	%f1, 0(%r1)
	c.le.s	0, %f0, %f1
	bf.s	0, bt.s_else.7860
	j	bt.s_cont.7861
bt.s_else.7860:
	sw.s	%f0, 12(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	fsqr.3786
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 12(%r29)
	mul.s	%f0, %f1, %f0
	lw.s	%f1, 0(%r29)
	mul.s	%f0, %f1, %f0
	la	%r1, min_caml_beam	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f2, 0(%r26)
	mul.s	%f0, %f2, %f0
	la	%r1, min_caml_rgb	addi	%r2, %r0, 0
	la	%r3, min_caml_rgb	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	add.s	%f2, %f0, %f2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f2, 0(%r26)
	la	%r1, min_caml_rgb	addi	%r2, %r0, 1
	la	%r3, min_caml_rgb	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	add.s	%f2, %f0, %f2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f2, 0(%r26)
	la	%r1, min_caml_rgb	addi	%r2, %r0, 2
	la	%r3, min_caml_rgb	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	add.s	%f2, %f0, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
bt.s_cont.7861:
be_cont.7859:
	j	be_cont.7857
be_else.7856:
be_cont.7857:
	addi	%r1, %r0, 0
	lw	%r2, 8(%r29)
	bne	%r2, %r1, be_else.7862
	jr	%r31
be_else.7862:
	la	%r1, min_caml_objects	la	%r2, min_caml_crashed_object	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw	%r2, 0(%r26)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw	%r1, 0(%r26)
	la	%r2, min_caml_crashed_point	sw	%r1, 16(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	get_nvector.3921
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r1, %r0, 0
	la	%r2, min_caml_or_net	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw	%r2, 0(%r26)
	la	%r3, min_caml_crashed_point	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	shadow_check_one_or_matrix.3895
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	addi	%r2, %r0, 0
	bne	%r1, %r2, be_else.7864
	la	%r1, min_caml_nvector	la	%r2, min_caml_light	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	in_prod.3927
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	neg.s	%f0, %f0
	la	%r1, l.6271	lw	%f1, 0(%r1)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7866
	la	%r1, l.6749	lw	%f1, 0(%r1)
	add.s	%f0, %f1, %f0
	j	bt.s_cont.7867
bt.s_else.7866:
	la	%r1, l.6749	lw	%f0, 0(%r1)
bt.s_cont.7867:
	lw.s	%f1, 0(%r29)
	mul.s	%f0, %f1, %f0
	lw	%r1, 16(%r29)
	sw.s	%f0, 20(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	o_diffuse.3812
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	lw.s	%f1, 20(%r29)
	mul.s	%f1, %f0, %f0
	j	be_cont.7865
be_else.7864:
	la	%r1, l.6271	lw	%f0, 0(%r1)
be_cont.7865:
	la	%r2, min_caml_crashed_point	lw	%r1, 16(%r29)
	sw.s	%f0, 24(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	utexture.3924
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	la	%r1, min_caml_rgb	la	%r2, min_caml_texture_color	lw.s	%f0, 24(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	accumulate_vec_mul.3930
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	addi	%r1, %r0, 4
	lw	%r2, 4(%r29)
	slt	%r28, %r2, %r1
	beq	%r28, %r1, bne_else.7868
	la	%r1, l.6752	lw	%f0, 0(%r1)
	lw.s	%f1, 0(%r29)
	c.le.s	0, %f1, %f0
	bf.s	0, bt.s_else.7869
	jr	%r31
bt.s_else.7869:
	la	%r1, l.6754	lw	%f0, 0(%r1)
	la	%r1, min_caml_vscan	la	%r3, min_caml_nvector	sw.s	%f0, 28(%r29)
	addi	%r2, %r3, 0
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	in_prod.3927
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw.s	%f1, 28(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_vscan	la	%r2, min_caml_nvector	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	accumulate_vec_mul.3930
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw	%r1, 16(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	o_reflectiontype.3794
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	addi	%r2, %r0, 1
	bne	%r1, %r2, be_else.7871
	la	%r1, l.6271	lw	%f0, 0(%r1)
	lw	%r1, 16(%r29)
	sw.s	%f0, 32(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	o_hilight.3814
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw.s	%f1, 32(%r29)
	c.eq.s	0, %f1, %f0
	bf.s	0, bt.s_else.7872
	jr	%r31
bt.s_else.7872:
	la	%r1, min_caml_vscan	la	%r2, min_caml_light	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	in_prod.3927
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	neg.s	%f0, %f0
	la	%r1, l.6271	lw	%f1, 0(%r1)
	c.le.s	0, %f0, %f1
	bf.s	0, bt.s_else.7874
	jr	%r31
bt.s_else.7874:
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	fsqr.3786
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	sw	%r31, 36(%r29)
	addi	%r29, %r29, 40
	jalr	fsqr.3786
	addi	%r29, %r29, -40
	lw	%r31, 36(%r29)
	lw.s	%f1, 0(%r29)
	mul.s	%f0, %f1, %f0
	lw.s	%f1, 24(%r29)
	mul.s	%f0, %f1, %f0
	lw	%r1, 16(%r29)
	sw.s	%f0, 36(%r29)
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	o_hilight.3814
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	lw.s	%f1, 36(%r29)
	mul.s	%f1, %f0, %f0
	la	%r1, min_caml_rgb	addi	%r2, %r0, 0
	la	%r3, min_caml_rgb	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	add.s	%f1, %f0, %f1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f1, 0(%r26)
	la	%r1, min_caml_rgb	addi	%r2, %r0, 1
	la	%r3, min_caml_rgb	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	add.s	%f1, %f0, %f1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f1, 0(%r26)
	la	%r1, min_caml_rgb	addi	%r2, %r0, 2
	la	%r3, min_caml_rgb	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	add.s	%f1, %f0, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	jr	%r31
be_else.7871:
	addi	%r2, %r0, 2
	bne	%r1, %r2, be_else.7877
	la	%r1, min_caml_viewpoint	addi	%r2, %r0, 0
	la	%r3, min_caml_crashed_point	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_viewpoint	addi	%r2, %r0, 1
	la	%r3, min_caml_crashed_point	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_viewpoint	addi	%r2, %r0, 2
	la	%r3, min_caml_crashed_point	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, l.6273	lw	%f0, 0(%r1)
	lw	%r1, 16(%r29)
	sw.s	%f0, 40(%r29)
	sw	%r31, 44(%r29)
	addi	%r29, %r29, 48
	jalr	o_diffuse.3812
	addi	%r29, %r29, -48
	lw	%r31, 44(%r29)
	lw.s	%f1, 40(%r29)
	sub.s	%f1, %f0, %f0
	lw.s	%f1, 0(%r29)
	mul.s	%f1, %f0, %f0
	addi	%r1, %r0, 1
	lw	%r2, 4(%r29)
	add	%r1, %r2, %r1
	j	raytracing.3934
be_else.7877:
	jr	%r31
bne_else.7868:
	jr	%r31
write_rgb.3937:
	la	%r1, min_caml_rgb	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_int_of_float
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r2, %r0, 255
	slt	%r28, %r1, %r2	beq	%r28, %r1, bne_else.7880
	add	%r1, %r0, %r1
	j	bne_cont.7881
bne_else.7880:
	addi	%r1, %r0, 255
bne_cont.7881:
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_print_byte
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	la	%r1, min_caml_rgb	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_int_of_float
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r2, %r0, 255
	slt	%r28, %r1, %r2	beq	%r28, %r1, bne_else.7882
	add	%r1, %r0, %r1
	j	bne_cont.7883
bne_else.7882:
	addi	%r1, %r0, 255
bne_cont.7883:
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_print_byte
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	la	%r1, min_caml_rgb	addi	%r2, %r0, 2
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_int_of_float
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r2, %r0, 255
	slt	%r28, %r1, %r2	beq	%r28, %r1, bne_else.7884
	add	%r1, %r0, %r1
	j	bne_cont.7885
bne_else.7884:
	addi	%r1, %r0, 255
bne_cont.7885:
	j	min_caml_print_byte
write_ppm_header.3939:
	addi	%r1, %r0, 80
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_print_byte
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r1, %r0, 54
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_print_byte
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r1, %r0, 10
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_print_byte
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	la	%r1, min_caml_size	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw	%r1, 0(%r26)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_print_int
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r1, %r0, 32
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_print_byte
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	la	%r1, min_caml_size	addi	%r2, %r0, 1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw	%r1, 0(%r26)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_print_int
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r1, %r0, 10
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_print_byte
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r1, %r0, 255
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_print_int
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r1, %r0, 10
	j	min_caml_print_byte
scan_point.3941:
	la	%r2, min_caml_size	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw	%r2, 0(%r26)
	slt	%r28, %r2, %r1
	beq	%r28, %r1, bne_else.7886
	jr	%r31
bne_else.7886:
	sw	%r1, 0(%r29)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_float_of_int
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	la	%r1, min_caml_scan_offset	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	sub.s	%f0, %f1, %f0
	la	%r1, min_caml_scan_d	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r1, min_caml_vscan	addi	%r2, %r0, 0
	la	%r3, min_caml_cos_v	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f1
	la	%r3, min_caml_wscan	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	add.s	%f1, %f2, %f1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f1, 0(%r26)
	la	%r1, min_caml_vscan	addi	%r2, %r0, 1
	la	%r3, min_caml_scan_sscany	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	la	%r3, min_caml_cos_v	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	la	%r3, min_caml_vp	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	sub.s	%f1, %f2, %f1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f1, 0(%r26)
	la	%r1, min_caml_vscan	addi	%r2, %r0, 2
	neg.s	%f1, %f0
	la	%r3, min_caml_sin_v	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	mul.s	%f1, %f2, %f1
	la	%r3, min_caml_wscan	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	add.s	%f1, %f2, %f1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f1, 0(%r26)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	fsqr.3786
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	la	%r1, min_caml_scan_met1	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	add.s	%f0, %f1, %f0
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_sqrt
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	la	%r1, min_caml_vscan	addi	%r2, %r0, 0
	la	%r3, min_caml_vscan	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	inv.s	%f31, %f0
	mul.s	%f1, %f31, %f1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f1, 0(%r26)
	la	%r1, min_caml_vscan	addi	%r2, %r0, 1
	la	%r3, min_caml_vscan	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	inv.s	%f31, %f0
	mul.s	%f1, %f31, %f1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f1, 0(%r26)
	la	%r1, min_caml_vscan	addi	%r2, %r0, 2
	la	%r3, min_caml_vscan	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	inv.s	%f31, %f0
	mul.s	%f1, %f31, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_viewpoint	addi	%r2, %r0, 0
	la	%r3, min_caml_view	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_viewpoint	addi	%r2, %r0, 1
	la	%r3, min_caml_view	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_viewpoint	addi	%r2, %r0, 2
	la	%r3, min_caml_view	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_rgb	addi	%r2, %r0, 0
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_rgb	addi	%r2, %r0, 1
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_rgb	addi	%r2, %r0, 2
	la	%r3, l.6271	lw	%f0, 0(%r3)
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 0
	la	%r2, l.6273	lw	%f0, 0(%r2)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	raytracing.3934
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	write_rgb.3937
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r1, %r0, 1
	lw	%r2, 0(%r29)
	add	%r1, %r2, %r1
	j	scan_point.3941
scan_line.3943:
	la	%r2, min_caml_size	addi	%r3, %r0, 0
	sll	%r3, %r3, 2
	add	%r26, %r2, %r3
	lw	%r2, 0(%r26)
	slt	%r28, %r2, %r1
	beq	%r28, %r1, bne_else.7888
	jr	%r31
bne_else.7888:
	la	%r2, min_caml_scan_sscany	addi	%r3, %r0, 0
	la	%r4, min_caml_scan_offset	addi	%r5, %r0, 0
	sll	%r5, %r5, 2
	add	%r26, %r4, %r5
	lw.s	%f0, 0(%r26)
	la	%r4, l.6273	lw	%f1, 0(%r4)
	sub.s	%f0, %f1, %f0
	sw	%r1, 0(%r29)
	sw	%r2, 4(%r29)
	sw	%r3, 8(%r29)
	sw.s	%f0, 12(%r29)
	sw	%r31, 20(%r29)
	addi	%r29, %r29, 24
	jalr	min_caml_float_of_int
	addi	%r29, %r29, -24
	lw	%r31, 20(%r29)
	lw.s	%f1, 12(%r29)
	sub.s	%f1, %f0, %f0
	la	%r1, min_caml_scan_d	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	mul.s	%f1, %f0, %f0
	lw	%r1, 8(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 4(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_scan_met1	addi	%r2, %r0, 0
	la	%r3, min_caml_scan_sscany	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f0, 0(%r26)
	sw	%r1, 16(%r29)
	sw	%r2, 20(%r29)
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	fsqr.3786
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	la	%r1, l.6815	lw	%f1, 0(%r1)
	add.s	%f0, %f1, %f0
	lw	%r1, 20(%r29)
	sll	%r1, %r1, 2
	lw	%r2, 16(%r29)
	add	%r26, %r2, %r1
	sw.s	%f0, 0(%r26)
	la	%r1, min_caml_scan_sscany	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f0, 0(%r26)
	la	%r1, min_caml_sin_v	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r1, min_caml_wscan	addi	%r2, %r0, 0
	la	%r3, min_caml_sin_v	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f1
	la	%r3, min_caml_vp	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f2, 0(%r26)
	sub.s	%f1, %f2, %f1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f1, 0(%r26)
	la	%r1, min_caml_wscan	addi	%r2, %r0, 2
	la	%r3, min_caml_cos_v	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	mul.s	%f0, %f1, %f0
	la	%r3, min_caml_vp	addi	%r4, %r0, 2
	sll	%r4, %r4, 2
	add	%r26, %r3, %r4
	lw.s	%f1, 0(%r26)
	sub.s	%f0, %f1, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 0
	sw	%r31, 28(%r29)
	addi	%r29, %r29, 32
	jalr	scan_point.3941
	addi	%r29, %r29, -32
	lw	%r31, 28(%r29)
	addi	%r1, %r0, 1
	lw	%r2, 0(%r29)
	add	%r1, %r2, %r1
	j	scan_line.3943
scan_start.3945:
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	write_ppm_header.3939
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	la	%r1, min_caml_size	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	lw	%r1, 0(%r26)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_float_of_int
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	la	%r1, min_caml_scan_d	addi	%r2, %r0, 0
	la	%r3, l.6827	lw	%f1, 0(%r3)
	inv.s	%f31, %f0
	mul.s	%f1, %f31, %f1
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f1, 0(%r26)
	la	%r1, min_caml_scan_offset	addi	%r2, %r0, 0
	la	%r3, l.6246	lw	%f1, 0(%r3)
	inv.s	%f31, %f1
	mul.s	%f0, %f31, %f0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw.s	%f0, 0(%r26)
	addi	%r1, %r0, 0
	j	scan_line.3943
rt.3947:
	la	%r4, min_caml_size	addi	%r5, %r0, 0
	sll	%r5, %r5, 2
	add	%r26, %r4, %r5
	sw	%r1, 0(%r26)
	la	%r1, min_caml_size	addi	%r4, %r0, 1
	sll	%r4, %r4, 2
	add	%r26, %r1, %r4
	sw	%r2, 0(%r26)
	la	%r1, min_caml_dbg	addi	%r2, %r0, 0
	sll	%r2, %r2, 2
	add	%r26, %r1, %r2
	sw	%r3, 0(%r26)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	read_parameter.3849
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	j	scan_start.3945
.global	min_caml_start
min_caml_start:
	addi	%r1, %r0, 768
	addi	%r2, %r0, 768
	addi	%r3, %r0, 0
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	rt.3947
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	hlt
