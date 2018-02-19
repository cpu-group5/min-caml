.section	".rodata"
.align	8
l.238:	! 1000000000.000000
	0x4e6e6b28
l.234:	! 255.000000
	0x437f0000
l.217:	! 0.000000
	0x0
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	%r1, %r0, 1
	addi	%r2, %r0, 0
	sw	%r31, 0(%r30)
	addi	%r30, %r30, 1
	jal	min_caml_create_array
	addi	%r30, %r30, -1
	lw	%r31, 0(%r30)
	addi	%r1, %r0, 0
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 0(%r30)
	addi	%r30, %r30, 1
	jal	min_caml_create_float_array
	addi	%r30, %r30, -1
	lw	%r31, 0(%r30)
	addi	%r2, %r0, 60
	addi	%r3, %r0, 0
	addi	%r4, %r0, 0
	addi	%r5, %r0, 0
	addi	%r6, %r0, 0
	addi	%r7, %r0, 0
	addi	%r8, %r29, 0
	addi	%r29, %r29, 11
	sw	%r1, 10(%r8)
	sw	%r1, 9(%r8)
	sw	%r1, 8(%r8)
	sw	%r1, 7(%r8)
	sw	%r7, 6(%r8)
	sw	%r1, 5(%r8)
	sw	%r1, 4(%r8)
	sw	%r6, 3(%r8)
	sw	%r5, 2(%r8)
	sw	%r4, 1(%r8)
	sw	%r3, 0(%r8)
	addi	%r1, %r8, 0
	addi	%r26, %r2, 0
	addi	%r2, %r1, 0
	addi	%r1, %r26, 0
	sw	%r31, 0(%r30)
	addi	%r30, %r30, 1
	jal	min_caml_create_array
	addi	%r30, %r30, -1
	lw	%r31, 0(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 0(%r30)
	addi	%r30, %r30, 1
	jal	min_caml_create_float_array
	addi	%r30, %r30, -1
	lw	%r31, 0(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 0(%r30)
	addi	%r30, %r30, 1
	jal	min_caml_create_float_array
	addi	%r30, %r30, -1
	lw	%r31, 0(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 0(%r30)
	addi	%r30, %r30, 1
	jal	min_caml_create_float_array
	addi	%r30, %r30, -1
	lw	%r31, 0(%r30)
	addi	%r1, %r0, 1
	la	%r2, l.234
	lw.s	%f0, 0(%r2)
	sw	%r31, 0(%r30)
	addi	%r30, %r30, 1
	jal	min_caml_create_float_array
	addi	%r30, %r30, -1
	lw	%r31, 0(%r30)
	addi	%r1, %r0, 50
	addi	%r2, %r0, 1
	addi	%r3, %r0, -1
	sw	%r1, 0(%r30)
	addi	%r1, %r2, 0
	addi	%r2, %r3, 0
	sw	%r31, 1(%r30)
	addi	%r30, %r30, 2
	jal	min_caml_create_array
	addi	%r30, %r30, -2
	lw	%r31, 1(%r30)
	addi	%r2, %r1, 0
	lw	%r1, 0(%r30)
	sw	%r31, 1(%r30)
	addi	%r30, %r30, 2
	jal	min_caml_create_array
	addi	%r30, %r30, -2
	lw	%r31, 1(%r30)
	addi	%r2, %r0, 1
	addi	%r3, %r0, 1
	addi	%r4, %r0, 0
	add	%r1, %r1, %r4
	lw	%r1, 0(%r1)
	sw	%r2, 1(%r30)
	addi	%r2, %r1, 0
	addi	%r1, %r3, 0
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r2, %r1, 0
	lw	%r1, 1(%r30)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 1
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 1
	addi	%r2, %r0, 0
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 1
	la	%r2, l.238
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 1
	addi	%r2, %r0, 0
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 2
	addi	%r2, %r0, 0
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 2
	addi	%r2, %r0, 0
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 1
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 3
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r1, %r0, 0
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 2(%r30)
	addi	%r30, %r30, 3
	jal	min_caml_create_float_array
	addi	%r30, %r30, -3
	lw	%r31, 2(%r30)
	addi	%r2, %r1, 0
	addi	%r1, %r0, 0
	sw	%r2, 2(%r30)
	sw	%r31, 3(%r30)
	addi	%r30, %r30, 4
	jal	min_caml_create_array
	addi	%r30, %r30, -4
	lw	%r31, 3(%r30)
	addi	%r2, %r0, 0
	addi	%r3, %r29, 0
	addi	%r29, %r29, 2
	sw	%r1, 1(%r3)
	lw	%r1, 2(%r30)
	sw	%r1, 0(%r3)
	addi	%r1, %r3, 0
	addi	%r26, %r2, 0
	addi	%r2, %r1, 0
	addi	%r1, %r26, 0
	sw	%r31, 3(%r30)
	addi	%r30, %r30, 4
	jal	min_caml_create_array
	addi	%r30, %r30, -4
	lw	%r31, 3(%r30)
	addi	%r2, %r1, 0
	addi	%r1, %r0, 5
	sw	%r31, 3(%r30)
	addi	%r30, %r30, 4
	jal	min_caml_create_array
	addi	%r30, %r30, -4
	lw	%r31, 3(%r30)
	addi	%r1, %r0, 0
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 3(%r30)
	addi	%r30, %r30, 4
	jal	min_caml_create_float_array
	addi	%r30, %r30, -4
	lw	%r31, 3(%r30)
	addi	%r2, %r0, 3
	la	%r3, l.217
	lw.s	%f0, 0(%r3)
	sw	%r1, 3(%r30)
	addi	%r1, %r2, 0
	sw	%r31, 4(%r30)
	addi	%r30, %r30, 5
	jal	min_caml_create_float_array
	addi	%r30, %r30, -5
	lw	%r31, 4(%r30)
	addi	%r1, %r0, 60
	lw	%r2, 3(%r30)
	sw	%r31, 4(%r30)
	addi	%r30, %r30, 5
	jal	min_caml_create_array
	addi	%r30, %r30, -5
	lw	%r31, 4(%r30)
	addi	%r1, %r0, 0
	la	%r2, l.217
	lw.s	%f0, 0(%r2)
	sw	%r31, 4(%r30)
	addi	%r30, %r30, 5
	jal	min_caml_create_float_array
	addi	%r30, %r30, -5
	lw	%r31, 4(%r30)
	addi	%r2, %r1, 0
	addi	%r1, %r0, 0
	sw	%r2, 4(%r30)
	sw	%r31, 5(%r30)
	addi	%r30, %r30, 6
	jal	min_caml_create_array
	addi	%r30, %r30, -6
	lw	%r31, 5(%r30)
	addi	%r2, %r29, 0
	addi	%r29, %r29, 2
	sw	%r1, 1(%r2)
	lw	%r1, 4(%r30)
	sw	%r1, 0(%r2)
	addi	%r1, %r2, 0
	addi	%r2, %r0, 180
	addi	%r3, %r0, 0
	la	%r4, l.217
	lw.s	%f0, 0(%r4)
	addi	%r4, %r29, 0
	addi	%r29, %r29, 3
	sw.s	%f0, 2(%r4)
	sw	%r1, 1(%r4)
	sw	%r3, 0(%r4)
	addi	%r1, %r4, 0
	addi	%r26, %r2, 0
	addi	%r2, %r1, 0
	addi	%r1, %r26, 0
	sw	%r31, 5(%r30)
	addi	%r30, %r30, 6
	jal	min_caml_create_array
	addi	%r30, %r30, -6
	lw	%r31, 5(%r30)
	addi	%r1, %r0, 1
	addi	%r2, %r0, 0
	sw	%r31, 5(%r30)
	addi	%r30, %r30, 6
	jal	min_caml_create_array
	addi	%r30, %r30, -6
	lw	%r31, 5(%r30)
	addi	%r1, %r0, 1
	sw	%r31, 5(%r30)
	addi	%r30, %r30, 6
	jal	hoge.118
	addi	%r30, %r30, -6
	lw	%r31, 5(%r30)
	sw	%r31, 5(%r30)
	addi	%r30, %r30, 6
	jal	min_caml_print_int
	addi	%r30, %r30, -6
	lw	%r31, 5(%r30)
	in	%r1
	j	min_caml_start
hoge.118:
	add	%r1, %r0, %r1
	jr	%r31
