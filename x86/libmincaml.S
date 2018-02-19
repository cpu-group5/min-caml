	.cstring
	.align 	2
LC0:
	.ascii	"%d\0"
	.align	2
LC1:
	.ascii 	"%lf\0"
	.literal8
	.align 	3
LC2:
	.long	1127219200
	.long	-2147483648
	.text
	.align	2
	.globl 	min_caml_print_newline
min_caml_print_newline:
	mflr 	r0
	stmw 	r30, -8(r1)
	stw 	r0, 8(r1)
	stw	r29, 12(r1)
	stw	r30, 16(r1)
	stwu  	r1, -80(r1)
	mr 	r30, r1
	li	r29, 10
	bl 	putchar
	lwz 	r1, 0(r1)
	lwz 	r0, 8(r1)
	lwz	r29, 12(r1)
	lwz	r30, 16(r1)
	mtlr 	r0
	lmw 	r30, -8(r1)
	blr
	.section __TEXT, __picsymbolstub1, symbol_stubs, pure_instructions, 32
	.align 	5
putchar:
	.indirect_symbol _putchar
	mflr 	r0
	bcl 	20, 31, L1spb
L1spb:
	mflr 	r11
	addis 	r11, r11, ha16(putchar_lazy-L1spb)
	mtlr 	r0
	lwzu 	r12, lo16(putchar_lazy-L1spb)(r11)
	mtctr 	r12
	bctr
	.lazy_symbol_pointer
putchar_lazy:
	.indirect_symbol _putchar
	.long	dyld_stub_binding_helper
	.subsections_via_symbols
#	print_int
	.text
	.align 	2
	.globl	min_caml_print_int
min_caml_print_int:
	mflr 	r0
	stmw 	r30, -8(r1)
	stw 	r0, 8(r1)
	stw r29, 12(r1)
	stw	r30, 16(r1)
	stwu 	r1, -80(r1)
	mr 	r30, r1
	bcl 	20, 31, L2pb
L2pb:
	mflr 	r31
	mr	r30, r2
	addis 	r2, r31, ha16(LC0 - L2pb)
	la 	r29, lo16(LC0 - L2pb)(r2)
	bl	printf
	lwz 	r1, 0(r1)
	lwz 	r0, 8(r1)
	lwz	r29, 12(r1)
	lwz	r30, 16(r1)
	mtlr 	r0
	lmw 	r30, -8(r1)
	blr
	.section __TEXT, __picsymbolstub1, symbol_stubs, pure_instructions, 32
	.align 	5
printf:
	.indirect_symbol _printf$LDBLStub
	mflr 	r0
	bcl 	20, 31, L2spb
L2spb:
	mflr 	r11
	addis 	r11, r11, ha16(printf_lazy-L2spb)
	mtlr 	r0
	lwzu 	r12, lo16(printf_lazy-L2spb)(r11)
	mtctr 	r12
	bctr
	.lazy_symbol_pointer
printf_lazy:
	.indirect_symbol _printf$LDBLStub
	.long	dyld_stub_binding_helper
	.subsections_via_symbols
#	print_byte
	.text
	.align 	2
	.globl	min_caml_print_byte
min_caml_print_byte:
	mflr 	r0
	stmw 	r30, -8(r1)
	stw 	r0, 8(r1)
	stw	r29, 12(r1)
	stw	r30, 16(r1)
	stwu  	r1, -80(r1)
	mr 	r30, r1
	stw	r29, 104(r30)
	mr	r29, r2
	bl 	putchar
	lwz 	r1, 0(r1)
	lwz 	r0, 8(r1)
	lwz	r29, 12(r1)
	lwz	r30, 16(r1)
	mtlr 	r0
	lmw 	r30, -8(r1)
	blr	
#	prerr_int
	.text
	.align 	2
	.globl 	min_caml_prerr_int
min_caml_prerr_int:
	mflr 	r0
	stmw 	r30, -8(r1)
	stw 	r0, 8(r1)
	stw	r29, 12(r1)
	stw	r30, 16(r1)
	stwu 	r1, -80(r1)
	mr 	r30, r1
	bcl 	20, 31, L3pb
L3pb:
	mflr 	r31
	mr	r6, r2
	mr	r2, r5
	mr	r5, r6
	addis 	r2, r31, ha16(L - L3pb)
	lwz 	r2, lo16(L - L3pb)(r2)
	addi 	r0, r2, 176
	mr 	r29, r0
	addis 	r2, r31, ha16(LC0 - L3pb)
	la 	r30, lo16(LC0 - L3pb)(r2)
	bl 	fprintf
	lwz 	r1, 0(r1)
	lwz 	r0, 8(r1)
	lwz	r29, 12(r1)
	lwz	r30, 16(r1)
	mtlr 	r0
	lmw 	r30, -8(r1)
	blr
	.non_lazy_symbol_pointer
L:
	.indirect_symbol ___sF
	.long	0
	.section __TEXT, __picsymbolstub1, symbol_stubs, pure_instructions, 32
	.align 	5
fprintf:	
	.indirect_symbol _fprintf$LDBLStub
	mflr 	r0
	bcl 	20, 31, L3spb
L3spb:
	mflr 	r11
	addis 	r11, r11, ha16(fprintf_lazy - L3spb)
	mtlr 	r0
	lwzu 	r12, lo16(fprintf_lazy - L3spb)(r11)
	mtctr 	r12
	bctr
	.lazy_symbol_pointer
fprintf_lazy:
	.indirect_symbol _fprintf$LDBLStub
	.long	dyld_stub_binding_helper
	.subsections_via_symbols
#	prerr_byte
	.text
	.align 	2
	.globl	min_caml_prerr_byte
min_caml_prerr_byte:
	mflr	r0
	stmw	r30, -8(r1)
	stw	r0, 8(r1)
	stw	r29, 12(r1)
	stw	r30, 16(r1)
	stwu	r1, -80(r1)
	mr	r30, r1
	bcl	20, 31, L4pb
L4pb:
	mflr	r31
	mr	r29, r2
	addis 	r2, r31, ha16(L - L4pb)
	lwz	r2, lo16(L - L4pb)(r2)
format_float:
	.asciz	"%lf"
.align 8
float_0:
	.long	0x0
	.long	0x0
float_1:
	.long	0x3ff00000
	.long	0x0
.section ".text"
.global min_caml_print_newline
min_caml_print_newline:
	set	10, %o0
	st	%o7, [%i0]
	call	putchar
	nop
	ld	[%i0], %o7
	retl
	nop
.global min_caml_print_int
min_caml_print_int:
	set	format_int, %o0
	mov	%i2, %o1
	st	%o7, [%i0]
	call	printf
	nop
	ld	[%i0], %o7
	retl
	nop
.global min_caml_print_byte
min_caml_print_byte:
	mov	%i2, %o0
	st	%o7, [%i0]
	call	putchar
	nop
	ld	[%i0], %o7
	retl
	nop
.global min_caml_prerr_int
min_caml_prerr_int:
	set	min_caml_stderr, %o0
	set	format_int, %o1
	mov	%i2, %o2
	st	%o7, [%i0]
	call	fprintf
	nop
	ld	[%i0], %o7
	retl
	nop
.global min_caml_prerr_byte
min_caml_prerr_byte:
	mov	%i2, %o0
	set	min_caml_stderr, %o1
	st	%o7, [%i0]
	call	fputc
	nop
	ld	[%i0], %o7
	retl
	nop
.global min_caml_prerr_float
min_caml_prerr_float:
	set	min_caml_stderr, %o0
	set	format_float, %o1
	std	%f0, [%i0]
	ldd	[%i0], %o2
	st	%o7, [%i0]
	call	fprintf
	nop
	ld	[%i0], %o7
	retl
	nop
.global min_caml_read_int
min_caml_read_int:
	set	format_int, %o0
	st	%o7, [%i0]
	call	scanf, 0
	add	%fp, -20, %o1	! delay slot
	ld	[%i0], %o7
	ld	[%fp-20], %i2
	retl
	nop
.global min_caml_read_float
min_caml_read_float:
	set	format_float, %o0
	st	%o7, [%i0]
	call	scanf, 0
	add	%fp, -24, %o1	! delay slot
	ld	[%i0], %o7
	ldd	[%fp-24], %f0
	retl
	nop
.global min_caml_create_array
min_caml_create_array:
	mov	%i2, %i4
	mov	%i1, %i2
create_array_loop:
	tst	%i4
	bnz	create_array_cont
	nop
	andcc	%i1, 4, %g0
	bz	create_array_exit
	nop
	add	%i1, 4, %i1
create_array_exit:
	retl
	nop
create_array_cont:
	st	%i3, [%i1]
	dec	%i4
	add	%i1, 4, %i1
	b	create_array_loop
	nop
.global min_caml_create_float_array
min_caml_create_float_array:
	mov	%i2, %i3
	mov	%i1, %i2
create_float_array_loop:
	tst	%i3
	bnz	create_float_array_cont
	nop
	retl
	nop
create_float_array_cont:
	std	%f0, [%i1]
	dec	%i3
	add	%i1, 8, %i1
	b	create_float_array_loop
	nop
.global min_caml_abs_float
min_caml_abs_float:
	fabss	%f0, %f0
	retl
	nop
.global min_caml_sqrt
min_caml_sqrt:
	fsqrtd	%f0, %f0
	retl
	nop
.global min_caml_floor
min_caml_floor:
	std	%f0, [%i0]
	ldd	[%i0], %o0
	st	%o7, [%i0]
	call	floor
	nop
	ld	[%i0], %o7
	retl
	nop
.global min_caml_int_of_float
min_caml_int_of_float:
.global min_caml_truncate
min_caml_truncate:
	fdtoi	%f0, %f0
	st	%f0, [%i0]
	ld	[%i0], %i2
	retl
	nop
.global min_caml_float_of_int
min_caml_float_of_int:
	st	%i2, [%i0]
	ld	[%i0], %f0
	fitod	%f0, %f0
	retl
	nop
.global min_caml_cos
min_caml_cos:
	std	%f0, [%i0]
	ldd	[%i0], %o0
	st	%o7, [%i0]
	call	cos
	nop
	ld	[%i0], %o7
	retl
	nop
.global min_caml_sin
min_caml_sin:
	std	%f0, [%i0]
	ldd	[%i0], %o0
	st	%o7, [%i0]
	call	sin
	nop
	ld	[%i0], %o7
	retl
	nop
.global min_caml_atan
min_caml_atan:
	std	%f0, [%i0]
	ldd	[%i0], %o0
	st	%o7, [%i0]
	call	atan
	nop
	ld	[%i0], %o7
	retl
	nop
.section ".rodata"
format_int:
	.asciz	"%d"
format_float:
	.asciz	"%lf"
.align 8
float_0:
	.long	0x0
	.long	0x0
float_1:
	.long	0x3ff00000
	.long	0x0

