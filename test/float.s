.section	".rodata"
.align	8
l.401:	! 48.300300
	.long	0x3eab623f
	.long	0x40482670
l.399:	! 4.500000
	.long	0x0
	.long	0x40120000
l.397:	! -12.300000
	.long	0x9999999a
	.long	0xc0289999
l.368:	! 1000000000.000000
	.long	0x0
	.long	0x41cdcd65
l.364:	! 255.000000
	.long	0x0
	.long	0x406fe000
l.347:	! 0.000000
	.long	0x0
	.long	0x0
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	%r1, %r0, 1
	addi	%r2, %r0, 0
	sw	%r31, 1(%r29)
	addi	%r29, %r29, 5
	jalr	min_caml_create_array
	addi	%r29, %r29, -5
	lw	%r31, 1(%r29)
	addi	%r1, %r0, 0
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 1(%r29)
	addi	%r29, %r29, 5
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -5
	lw	%r31, 1(%r29)
	addi	%r2, %r0, 60
	addi	%r3, %r0, 0
	addi	%r4, %r0, 0
	addi	%r5, %r0, 0
	addi	%r6, %r0, 0
	addi	%r7, %r0, 0
	addi	%r8, %r30, 0
	addi	%r30, %r30, 48
	sw	%r1, 40(%r8)
	sw	%r1, 36(%r8)
	sw	%r1, 32(%r8)
	sw	%r1, 28(%r8)
	sw	%r7, 24(%r8)
	sw	%r1, 20(%r8)
	sw	%r1, 16(%r8)
	sw	%r6, 12(%r8)
	sw	%r5, 8(%r8)
	sw	%r4, 4(%r8)
	sw	%r3, 0(%r8)
	addi	%r1, %r8, 0
	addi	%r26, %r2, 0
	addi	%r2, %r1, 0
	addi	%r1, %r26, 0
	sw	%r31, 1(%r29)
	addi	%r29, %r29, 5
	jalr	min_caml_create_array
	addi	%r29, %r29, -5
	lw	%r31, 1(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 1(%r29)
	addi	%r29, %r29, 5
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -5
	lw	%r31, 1(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 1(%r29)
	addi	%r29, %r29, 5
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -5
	lw	%r31, 1(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 1(%r29)
	addi	%r29, %r29, 5
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -5
	lw	%r31, 1(%r29)
	addi	%r1, %r0, 1
	la	%r2, l.364	lw	%f0, 0(%r2)
	sw	%r31, 1(%r29)
	addi	%r29, %r29, 5
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -5
	lw	%r31, 1(%r29)
	addi	%r1, %r0, 50
	addi	%r2, %r0, 1
	addi	%r3, %r0, -1
	sw	%r1, 0(%r29)
	addi	%r1, %r2, 0
	addi	%r2, %r3, 0
	sw	%r31, 2(%r29)
	addi	%r29, %r29, 6
	jalr	min_caml_create_array
	addi	%r29, %r29, -6
	lw	%r31, 2(%r29)
	addi	%r1, %r2, 0
	lw	%r1, 0(%r29)
	sw	%r31, 2(%r29)
	addi	%r29, %r29, 6
	jalr	min_caml_create_array
	addi	%r29, %r29, -6
	lw	%r31, 2(%r29)
	addi	%r2, %r0, 1
	addi	%r3, %r0, 1
	addi	%r4, %r0, 0
	sll	%r4, %r4, 2
	add	%r26, %r1, %r4
	lw	%r1, 0(%r26)
	sw	%r2, 1(%r29)
	addi	%r2, %r1, 0
	addi	%r1, %r3, 0
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r2, 0
	lw	%r1, 1(%r29)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 1
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 1
	addi	%r2, %r0, 0
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 1
	la	%r2, l.368	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 1
	addi	%r2, %r0, 0
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 2
	addi	%r2, %r0, 0
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 2
	addi	%r2, %r0, 0
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 1
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 3
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r0, 0
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 3(%r29)
	addi	%r29, %r29, 7
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -7
	lw	%r31, 3(%r29)
	addi	%r1, %r2, 0
	addi	%r1, %r0, 0
	sw	%r2, 2(%r29)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_create_array
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r2, %r0, 0
	addi	%r3, %r30, 0
	addi	%r30, %r30, 8
	sw	%r1, 4(%r3)
	lw	%r1, 2(%r29)
	sw	%r1, 0(%r3)
	addi	%r1, %r3, 0
	addi	%r26, %r2, 0
	addi	%r2, %r1, 0
	addi	%r1, %r26, 0
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_create_array
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r1, %r2, 0
	addi	%r1, %r0, 5
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_create_array
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r1, %r0, 0
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	addi	%r2, %r0, 3
	la	%r3, l.347	lw	%f0, 0(%r3)
	sw	%r1, 3(%r29)
	addi	%r1, %r2, 0
	sw	%r31, 5(%r29)
	addi	%r29, %r29, 9
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -9
	lw	%r31, 5(%r29)
	addi	%r1, %r0, 60
	lw	%r2, 3(%r29)
	sw	%r31, 5(%r29)
	addi	%r29, %r29, 9
	jalr	min_caml_create_array
	addi	%r29, %r29, -9
	lw	%r31, 5(%r29)
	addi	%r1, %r0, 0
	la	%r2, l.347	lw	%f0, 0(%r2)
	sw	%r31, 5(%r29)
	addi	%r29, %r29, 9
	jalr	min_caml_create_float_array
	addi	%r29, %r29, -9
	lw	%r31, 5(%r29)
	addi	%r1, %r2, 0
	addi	%r1, %r0, 0
	sw	%r2, 4(%r29)
	sw	%r31, 6(%r29)
	addi	%r29, %r29, 10
	jalr	min_caml_create_array
	addi	%r29, %r29, -10
	lw	%r31, 6(%r29)
	addi	%r2, %r30, 0
	addi	%r30, %r30, 8
	sw	%r1, 4(%r2)
	lw	%r1, 4(%r29)
	sw	%r1, 0(%r2)
	addi	%r1, %r2, 0
	addi	%r2, %r0, 180
	addi	%r3, %r0, 0
	la	%r4, l.347	lw	%f0, 0(%r4)
	addi	%r4, %r30, 0
	addi	%r30, %r30, 16
	sw.s	%f0, 8(%r4)
	sw	%r1, 4(%r4)
	sw	%r3, 0(%r4)
	addi	%r1, %r4, 0
	addi	%r26, %r2, 0
	addi	%r2, %r1, 0
	addi	%r1, %r26, 0
	sw	%r31, 6(%r29)
	addi	%r29, %r29, 10
	jalr	min_caml_create_array
	addi	%r29, %r29, -10
	lw	%r31, 6(%r29)
	addi	%r1, %r0, 1
	addi	%r2, %r0, 0
	sw	%r31, 6(%r29)
	addi	%r29, %r29, 10
	jalr	min_caml_create_array
	addi	%r29, %r29, -10
	lw	%r31, 6(%r29)
	la	%r1, l.397	lw	%f0, 0(%r1)
	sw	%r31, 6(%r29)
	addi	%r29, %r29, 10
	jalr	min_caml_abs_float
	addi	%r29, %r29, -10
	lw	%r31, 6(%r29)
	sw	%r31, 6(%r29)
	addi	%r29, %r29, 10
	jalr	min_caml_sqrt
	addi	%r29, %r29, -10
	lw	%r31, 6(%r29)
	sw	%r31, 6(%r29)
	addi	%r29, %r29, 10
	jalr	min_caml_cos
	addi	%r29, %r29, -10
	lw	%r31, 6(%r29)
	sw	%r31, 6(%r29)
	addi	%r29, %r29, 10
	jalr	min_caml_sin
	addi	%r29, %r29, -10
	lw	%r31, 6(%r29)
	la	%r1, l.399	lw	%f1, 0(%r1)
	add.s	%f0, %f1, %f0
	la	%r1, l.401	lw	%f1, 0(%r1)
	sub.s	%f0, %f1, %f0
	addi	%r1, %r0, 1000000
	sw.s	%f0, 5(%r29)
	sw	%r31, 7(%r29)
	addi	%r29, %r29, 11
	jalr	min_caml_float_of_int
	addi	%r29, %r29, -11
	lw	%r31, 7(%r29)
	lw.s	%f1, 5(%r29)
	mul.s	%f1, %f0, %f0
	sw	%r31, 7(%r29)
	addi	%r29, %r29, 11
	jalr	min_caml_int_of_float
	addi	%r29, %r29, -11
	lw	%r31, 7(%r29)
	sw	%r31, 7(%r29)
	addi	%r29, %r29, 11
	jalr	min_caml_print_int
	addi	%r29, %r29, -11
	lw	%r31, 7(%r29)
	hlt
