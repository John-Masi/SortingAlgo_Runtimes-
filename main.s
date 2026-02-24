	.file	"main.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.globl	_Z14insertion_sortRSt6vectorIiSaIiEE
	.type	_Z14insertion_sortRSt6vectorIiSaIiEE, @function
_Z14insertion_sortRSt6vectorIiSaIiEE:
.LFB2708:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	8(%rdi), %rax
	movq	(%rdi), %rbx
	movq	%rax, %r11
	subq	%rbx, %r11
	sarq	$2, %r11
	cmpq	%rbx, %rax
	je	.L1
	movq	%rbx, %r8
	movl	$-1, %r9d
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L6:
	movl	(%r8), %esi
	cmpl	$-1, %r9d
	je	.L3
	movl	%r9d, %eax
	leaq	-4(%r8), %rcx
	salq	$2, %rax
	subq	%rax, %rcx
	movq	%r8, %rax
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L16:
	movl	%edx, (%rax)
	subq	$4, %rax
	cmpq	%rax, %rcx
	je	.L3
.L5:
	movl	-4(%rax), %edx
	movq	%rax, %rdi
	cmpl	%esi, %edx
	jg	.L16
.L4:
	addq	$1, %r10
	movl	%esi, (%rdi)
	addq	$4, %r8
	addl	$1, %r9d
	cmpq	%r11, %r10
	jb	.L6
.L1:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	.cfi_restore_state
	movq	%rbx, %rdi
	jmp	.L4
	.cfi_endproc
.LFE2708:
	.size	_Z14insertion_sortRSt6vectorIiSaIiEE, .-_Z14insertion_sortRSt6vectorIiSaIiEE
	.p2align 4
	.globl	_Z9partitionRSt6vectorIiSaIiEEii
	.type	_Z9partitionRSt6vectorIiSaIiEEii, @function
_Z9partitionRSt6vectorIiSaIiEEii:
.LFB2709:
	.cfi_startproc
	endbr64
	movq	(%rdi), %r9
	movslq	%edx, %rax
	leal	-1(%rsi), %edi
	leaq	(%r9,%rax,4), %r11
	movl	(%r11), %r8d
	cmpl	%esi, %edx
	jle	.L21
	movslq	%esi, %rax
	subl	%esi, %edx
	addq	%rax, %rdx
	leaq	(%r9,%rax,4), %rcx
	leaq	(%r9,%rdx,4), %rsi
	.p2align 4,,10
	.p2align 3
.L20:
	movl	(%rcx), %eax
	cmpl	%r8d, %eax
	jg	.L19
	addl	$1, %edi
	movslq	%edi, %rdx
	leaq	(%r9,%rdx,4), %rdx
	movl	(%rdx), %r10d
	movl	%r10d, (%rcx)
	movl	%eax, (%rdx)
.L19:
	addq	$4, %rcx
	cmpq	%rcx, %rsi
	jne	.L20
	leal	1(%rdi), %eax
	movl	(%r11), %r8d
	movslq	%eax, %rdx
	leaq	(%r9,%rdx,4), %rdx
	movl	(%rdx), %ecx
	movl	%r8d, (%rdx)
	movl	%ecx, (%r11)
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	movl	%esi, %eax
	movslq	%eax, %rdx
	leaq	(%r9,%rdx,4), %rdx
	movl	(%rdx), %ecx
	movl	%r8d, (%rdx)
	movl	%ecx, (%r11)
	ret
	.cfi_endproc
.LFE2709:
	.size	_Z9partitionRSt6vectorIiSaIiEEii, .-_Z9partitionRSt6vectorIiSaIiEEii
	.p2align 4
	.globl	_Z10quick_sortRSt6vectorIiSaIiEEii
	.type	_Z10quick_sortRSt6vectorIiSaIiEEii, @function
_Z10quick_sortRSt6vectorIiSaIiEEii:
.LFB2711:
	.cfi_startproc
	endbr64
	cmpl	%esi, %edx
	jle	.L34
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movslq	%edx, %rax
	movl	%esi, %r9d
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%edx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rdi), %r12
	leaq	(%r12,%rax,4), %r14
.L28:
	movl	(%r14), %esi
	leal	-1(%r9), %ebx
	cmpl	%r9d, %r13d
	jle	.L30
	movl	%r13d, %edx
	movslq	%r9d, %rcx
	subl	%r9d, %edx
	leaq	(%r12,%rcx,4), %rax
	addq	%rcx, %rdx
	leaq	(%r12,%rdx,4), %rdi
	.p2align 4,,10
	.p2align 3
.L27:
	movl	(%rax), %edx
	cmpl	%edx, %esi
	jl	.L26
	addl	$1, %ebx
	movslq	%ebx, %rcx
	leaq	(%r12,%rcx,4), %rcx
	movl	(%rcx), %r8d
	movl	%r8d, (%rax)
	movl	%edx, (%rcx)
.L26:
	addq	$4, %rax
	cmpq	%rax, %rdi
	jne	.L27
	movl	(%r14), %esi
	leal	1(%rbx), %eax
.L25:
	cltq
	movq	%rbp, %rdi
	leaq	(%r12,%rax,4), %rax
	movl	(%rax), %edx
	movl	%esi, (%rax)
	movl	%r9d, %esi
	movl	%edx, (%r14)
	movl	%ebx, %edx
	call	_Z10quick_sortRSt6vectorIiSaIiEEii
	leal	2(%rbx), %r9d
	cmpl	%r13d, %r9d
	jl	.L28
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	.cfi_restore_state
	movl	%r9d, %eax
	jmp	.L25
.L34:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	ret
	.cfi_endproc
.LFE2711:
	.size	_Z10quick_sortRSt6vectorIiSaIiEEii, .-_Z10quick_sortRSt6vectorIiSaIiEEii
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" ms"
	.text
	.p2align 4
	.globl	_Z7qs_timeRSt6vectorIiSaIiEE
	.type	_Z7qs_timeRSt6vectorIiSaIiEE, @function
_Z7qs_timeRSt6vectorIiSaIiEE:
.LFB2714:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	(%rbx), %r13
	movq	8(%rbx), %r11
	movq	%rax, %rbp
	subq	%r13, %r11
	sarq	$2, %r11
	testl	%r11d, %r11d
	jle	.L43
	movslq	%r11d, %rax
	movl	%r11d, %r12d
	xorl	%r9d, %r9d
	subl	$1, %r11d
	leaq	0(%r13,%rax,4), %r14
.L42:
	movl	(%r14), %esi
	leal	-1(%r9), %r10d
	cmpl	%r9d, %r12d
	jle	.L44
	movl	%r11d, %edx
	movslq	%r9d, %rcx
	subl	%r9d, %edx
	leaq	0(%r13,%rcx,4), %rax
	addq	%rcx, %rdx
	leaq	4(%r13,%rdx,4), %rdi
	.p2align 4,,10
	.p2align 3
.L41:
	movl	(%rax), %edx
	cmpl	%edx, %esi
	jl	.L40
	addl	$1, %r10d
	movslq	%r10d, %rcx
	leaq	0(%r13,%rcx,4), %rcx
	movl	(%rcx), %r8d
	movl	%r8d, (%rax)
	movl	%edx, (%rcx)
.L40:
	addq	$4, %rax
	cmpq	%rax, %rdi
	jne	.L41
	movl	(%r14), %esi
	leal	1(%r10), %eax
.L39:
	cltq
	movq	%rbx, %rdi
	leaq	0(%r13,%rax,4), %rax
	movl	(%rax), %edx
	movl	%esi, (%rax)
	movl	%r9d, %esi
	movl	%edx, (%r14)
	movl	%r10d, %edx
	call	_Z10quick_sortRSt6vectorIiSaIiEEii
	leal	2(%r10), %r9d
	cmpl	%r9d, %r12d
	jg	.L42
.L43:
	movl	0(%r13), %eax
	movl	%eax, 12(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movabsq	$4835703278458516699, %rdx
	subq	%rbp, %rax
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$18, %rdx
	movq	%rdx, %rsi
	subq	%rcx, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movl	$3, %edx
	leaq	.LC0(%rip), %rsi
	popq	%rbx
	.cfi_def_cfa_offset 40
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	.p2align 4,,10
	.p2align 3
.L44:
	.cfi_restore_state
	movl	%r9d, %eax
	jmp	.L39
	.cfi_endproc
.LFE2714:
	.size	_Z7qs_timeRSt6vectorIiSaIiEE, .-_Z7qs_timeRSt6vectorIiSaIiEE
	.section	.rodata.str1.1
.LC1:
	.string	" ms\n"
	.text
	.p2align 4
	.globl	_Z7is_timeRSt6vectorIiSaIiEE
	.type	_Z7is_timeRSt6vectorIiSaIiEE, @function
_Z7is_timeRSt6vectorIiSaIiEE:
.LFB2718:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movl	$-1, %r9d
	xorl	%r10d, %r10d
	movq	%rax, %rbx
	movq	8(%rbp), %rax
	movq	0(%rbp), %rbp
	movq	%rax, %r11
	movq	%rbp, %r8
	subq	%rbp, %r11
	sarq	$2, %r11
	cmpq	%rbp, %rax
	je	.L54
	.p2align 4,,10
	.p2align 3
.L53:
	movl	(%r8), %esi
	cmpl	$-1, %r9d
	je	.L50
	movl	%r9d, %eax
	leaq	-4(%r8), %rcx
	salq	$2, %rax
	subq	%rax, %rcx
	movq	%r8, %rax
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L63:
	movl	%edx, (%rax)
	subq	$4, %rax
	cmpq	%rax, %rcx
	je	.L50
.L52:
	movl	-4(%rax), %edx
	movq	%rax, %rdi
	cmpl	%edx, %esi
	jl	.L63
.L51:
	addq	$1, %r10
	movl	%esi, (%rdi)
	addq	$4, %r8
	addl	$1, %r9d
	cmpq	%r11, %r10
	jb	.L53
.L54:
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movabsq	$4835703278458516699, %rdx
	subq	%rbx, %rax
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$18, %rdx
	movq	%rdx, %rsi
	subq	%rcx, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	$4, %edx
	leaq	.LC1(%rip), %rsi
	popq	%rbx
	.cfi_def_cfa_offset 16
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	.p2align 4,,10
	.p2align 3
.L50:
	.cfi_restore_state
	movq	%rbp, %rdi
	jmp	.L51
	.cfi_endproc
.LFE2718:
	.size	_Z7is_timeRSt6vectorIiSaIiEE, .-_Z7is_timeRSt6vectorIiSaIiEE
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIiSaIiEED2Ev
	.type	_ZNSt6vectorIiSaIiEED2Ev, @function
_ZNSt6vectorIiSaIiEED2Ev:
.LFB4155:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L64
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L64:
	ret
	.cfi_endproc
.LFE4155:
	.size	_ZNSt6vectorIiSaIiEED2Ev, .-_ZNSt6vectorIiSaIiEED2Ev
	.weak	_ZNSt6vectorIiSaIiEED1Ev
	.set	_ZNSt6vectorIiSaIiEED1Ev,_ZNSt6vectorIiSaIiEED2Ev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4
	.globl	_Z5mergeRSt6vectorIiSaIiEEiii
	.type	_Z5mergeRSt6vectorIiSaIiEEiii, @function
_Z5mergeRSt6vectorIiSaIiEEiii:
.LFB2712:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2712
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edx, %r15d
	subl	%edx, %ecx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	subl	%esi, %r15d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leal	1(%r15), %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	%rdi, 24(%rsp)
	movl	%edx, 20(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movslq	%r12d, %rax
	movq	%rax, (%rsp)
	shrq	$61, %rax
	jne	.L167
	pxor	%xmm0, %xmm0
	cmpq	$0, (%rsp)
	movl	%esi, %r14d
	movl	%ecx, %ebp
	movups	%xmm0, 56(%rsp)
	je	.L168
	movq	(%rsp), %rax
	leaq	0(,%rax,4), %r13
	movq	%r13, %rdi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	cmpq	$1, (%rsp)
	leaq	(%rax,%r13), %rcx
	movq	%rax, 48(%rsp)
	movq	%rax, %rbx
	leaq	4(%rax), %rdi
	movq	%rcx, 64(%rsp)
	movl	$0, (%rax)
	je	.L120
	cmpq	%rdi, %rcx
	je	.L71
	leaq	-4(%r13), %rdx
	xorl	%esi, %esi
	movq	%rcx, (%rsp)
	call	memset@PLT
	movq	(%rsp), %rcx
.L71:
	movq	%r13, (%rsp)
	movq	%rcx, %rdi
.L70:
	movslq	%ebp, %rax
	movq	%rdi, 56(%rsp)
	movq	%rax, 8(%rsp)
	shrq	$61, %rax
	jne	.L169
	cmpq	$0, 8(%rsp)
	je	.L170
	movq	8(%rsp), %rax
	leaq	0(,%rax,4), %r13
	movq	%r13, %rdi
	movq	%r13, 32(%rsp)
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	cmpq	$1, 8(%rsp)
	movl	$0, (%rax)
	movq	%rax, %rcx
	je	.L171
	leaq	4(%rax), %rdi
	leaq	(%rax,%r13), %rax
	cmpq	%rax, %rdi
	je	.L79
	leaq	-4(%r13), %rdx
	xorl	%esi, %esi
	movq	%rcx, 40(%rsp)
	call	memset@PLT
	movq	40(%rsp), %rcx
.L79:
	testl	%r12d, %r12d
	je	.L172
.L75:
	movq	24(%rsp), %rax
	movslq	%r14d, %rdi
	movq	(%rax), %rdx
	cmpl	$2, %r15d
	jbe	.L81
	leaq	4(,%rdi,4), %rax
	movq	%rbx, %rsi
	leaq	(%rdx,%rax), %r8
	subq	%r8, %rsi
	cmpq	$8, %rsi
	ja	.L173
.L81:
	movslq	%r15d, %rax
	leaq	(%rdx,%rdi,4), %r8
	leaq	4(,%rax,4), %r9
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L86:
	movl	(%r8,%rax), %esi
	movl	%esi, (%rbx,%rax)
	addq	$4, %rax
	cmpq	%r9, %rax
	jne	.L86
.L87:
	xorl	%eax, %eax
	xorl	%esi, %esi
	testl	%ebp, %ebp
	je	.L84
.L80:
	leal	-1(%rbp), %eax
	cmpl	$2, %eax
	jbe	.L174
	movslq	20(%rsp), %rax
	movq	8(%rsp), %r11
	movq	%rcx, %rdi
	leaq	8(,%rax,4), %rsi
	leaq	0(,%r11,4), %r13
	leaq	(%rdx,%rsi), %r8
	subq	%r8, %rdi
	cmpq	$8, %rdi
	ja	.L175
.L88:
	leaq	(%rdx,%rax,4), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L91:
	movl	4(%rdi,%rax), %esi
	movl	%esi, (%rcx,%rax)
	addq	$4, %rax
	cmpq	%rax, %r13
	jne	.L91
.L90:
	testl	%r12d, %r12d
	je	.L123
	leal	1(%r14), %edi
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	movslq	%edi, %rdi
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L100:
	movl	(%rbx,%r11,4), %r8d
	movl	(%rcx,%r10,4), %esi
	cmpl	%r8d, %esi
	jl	.L94
.L176:
	movl	%r8d, -4(%rdx,%rdi,4)
	leal	1(%r9), %esi
	leaq	1(%rdi), %r8
	cmpl	%eax, %ebp
	jle	.L97
	cmpl	%r9d, %r15d
	jle	.L97
	movslq	%esi, %r11
	movq	%r8, %rdi
	movl	(%rcx,%r10,4), %esi
	movl	(%rbx,%r11,4), %r8d
	movq	%r11, %r9
	cmpl	%r8d, %esi
	jge	.L176
.L94:
	addl	$1, %eax
	movl	%esi, -4(%rdx,%rdi,4)
	leaq	1(%rdi), %rsi
	cmpl	%eax, %ebp
	jle	.L127
	cmpl	%r9d, %r12d
	jle	.L127
	movq	%rsi, %rdi
	movslq	%eax, %r10
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L127:
	movl	%edi, %r14d
	movl	%r9d, %esi
.L99:
	cmpl	%esi, %r12d
	jle	.L101
	movslq	%r14d, %rdi
.L84:
	movl	%r15d, %r10d
	subl	%esi, %r10d
	cmpl	$2, %r10d
	jbe	.L102
	leal	1(%rsi), %r8d
	leaq	(%rdx,%rdi,4), %r9
	movslq	%r8d, %r8
	movq	%r9, %r11
	salq	$2, %r8
	leaq	(%rbx,%r8), %r12
	subq	%r12, %r11
	cmpq	$8, %r11
	ja	.L177
.L102:
	movslq	%esi, %rsi
	movl	%r10d, %r8d
	leaq	(%rdx,%rdi,4), %r11
	leaq	(%rbx,%rsi,4), %r9
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L105:
	movl	(%r9,%rsi,4), %edi
	movl	%edi, (%r11,%rsi,4)
	movq	%rsi, %rdi
	addq	$1, %rsi
	cmpq	%r8, %rdi
	jne	.L105
.L106:
	leal	1(%r10,%r14), %r14d
.L101:
	cmpl	%ebp, %eax
	jge	.L76
.L93:
	movl	%ebp, %r8d
	movslq	%r14d, %rdi
	subl	%eax, %r8d
	leal	-1(%r8), %esi
	cmpl	$2, %esi
	jbe	.L109
	leal	1(%rax), %esi
	leaq	(%rdx,%rdi,4), %r9
	movslq	%esi, %rsi
	movq	%r9, %r10
	salq	$2, %rsi
	leaq	(%rcx,%rsi), %r11
	subq	%r11, %r10
	cmpq	$8, %r10
	ja	.L178
.L109:
	movl	%r8d, %esi
	cltq
	leaq	(%rdx,%rdi,4), %rdi
	leaq	(%rcx,%rax,4), %r8
	salq	$2, %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L113:
	movl	(%r8,%rax), %edx
	movl	%edx, (%rdi,%rax)
	addq	$4, %rax
	cmpq	%rsi, %rax
	jne	.L113
.L76:
	testq	%rcx, %rcx
	je	.L108
	movq	32(%rsp), %rsi
	movq	%rcx, %rdi
	call	_ZdlPvm@PLT
.L108:
	testq	%rbx, %rbx
	je	.L66
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L165
	movq	(%rsp), %rsi
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L168:
	.cfi_restore_state
	movq	$0, 48(%rsp)
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movq	$0, 64(%rsp)
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L170:
	movq	$0, 32(%rsp)
	xorl	%ecx, %ecx
	testl	%r12d, %r12d
	jne	.L75
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L66:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L165
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L97:
	.cfi_restore_state
	movl	%edi, %r14d
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L177:
	leal	1(%r10), %r11d
	leaq	-4(%rbx,%r8), %r12
	xorl	%edi, %edi
	movl	%r11d, %r8d
	shrl	$2, %r8d
	salq	$4, %r8
	.p2align 4,,10
	.p2align 3
.L103:
	movdqu	(%r12,%rdi), %xmm3
	movups	%xmm3, (%r9,%rdi)
	addq	$16, %rdi
	cmpq	%r8, %rdi
	jne	.L103
	movl	%r11d, %edi
	andl	$-4, %edi
	addl	%edi, %esi
	addl	%r14d, %edi
	andl	$3, %r11d
	je	.L106
	movslq	%esi, %r8
	movl	(%rbx,%r8,4), %r9d
	movslq	%edi, %r8
	addl	$1, %edi
	movl	%r9d, (%rdx,%r8,4)
	leal	1(%rsi), %r8d
	cmpl	%esi, %r15d
	jle	.L106
	movslq	%r8d, %rsi
	movl	(%rbx,%rsi,4), %r11d
	leaq	0(,%rsi,4), %r9
	movslq	%edi, %rsi
	leaq	0(,%rsi,4), %rdi
	movl	%r11d, (%rdx,%rsi,4)
	cmpl	%r8d, %r15d
	jle	.L106
	movl	4(%rbx,%r9), %esi
	movl	%esi, 4(%rdx,%rdi)
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L178:
	movl	%r8d, %edi
	leaq	-4(%rcx,%rsi), %r10
	xorl	%esi, %esi
	shrl	$2, %edi
	salq	$4, %rdi
	.p2align 4,,10
	.p2align 3
.L110:
	movdqu	(%r10,%rsi), %xmm4
	movups	%xmm4, (%r9,%rsi)
	addq	$16, %rsi
	cmpq	%rsi, %rdi
	jne	.L110
	movl	%r8d, %esi
	andl	$-4, %esi
	addl	%esi, %eax
	addl	%r14d, %esi
	andl	$3, %r8d
	je	.L76
	movslq	%eax, %rdi
	movl	(%rcx,%rdi,4), %r8d
	movslq	%esi, %rdi
	addl	$1, %esi
	movl	%r8d, (%rdx,%rdi,4)
	leal	1(%rax), %edi
	cmpl	%edi, %ebp
	jle	.L76
	movslq	%edi, %rdi
	movslq	%esi, %rsi
	addl	$2, %eax
	leaq	0(,%rdi,4), %r9
	movl	(%rcx,%rdi,4), %edi
	leaq	0(,%rsi,4), %r8
	movl	%edi, (%rdx,%rsi,4)
	cmpl	%eax, %ebp
	jle	.L76
	movl	4(%rcx,%r9), %eax
	movl	%eax, 4(%rdx,%r8)
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L173:
	movl	%r12d, %esi
	leaq	-4(%rdx,%rax), %r8
	xorl	%eax, %eax
	shrl	$2, %esi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L82:
	movdqu	(%r8,%rax), %xmm1
	movups	%xmm1, (%rbx,%rax)
	addq	$16, %rax
	cmpq	%rsi, %rax
	jne	.L82
	movl	%r12d, %eax
	andl	$-4, %eax
	testb	$3, %r12b
	je	.L87
	leal	(%r14,%rax), %esi
	movslq	%esi, %rsi
	movl	(%rdx,%rsi,4), %r9d
	movl	%eax, %esi
	leaq	0(,%rsi,4), %r8
	movl	%r9d, (%rbx,%rsi,4)
	leal	1(%rax), %r9d
	cmpl	%eax, %r15d
	jle	.L87
	leal	(%r14,%r9), %esi
	addl	$2, %eax
	movslq	%esi, %rsi
	movl	(%rdx,%rsi,4), %esi
	movl	%esi, 4(%rbx,%r8)
	cmpl	%r9d, %r15d
	jle	.L87
	addl	%r14d, %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, 8(%rbx,%r8)
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L175:
	leaq	-4(%rdx,%rsi), %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	shrl	$2, %esi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L89:
	movdqu	(%rdi,%rax), %xmm2
	movups	%xmm2, (%rcx,%rax)
	addq	$16, %rax
	cmpq	%rax, %rsi
	jne	.L89
	movl	%ebp, %eax
	andl	$-4, %eax
	testb	$3, %bpl
	je	.L90
	movl	20(%rsp), %r8d
	addl	$1, %r8d
	leal	(%r8,%rax), %esi
	movslq	%esi, %rsi
	movl	(%rdx,%rsi,4), %r9d
	movl	%eax, %esi
	leaq	0(,%rsi,4), %rdi
	movl	%r9d, (%rcx,%rsi,4)
	leal	1(%rax), %esi
	cmpl	%esi, %ebp
	jle	.L90
	addl	%r8d, %esi
	addl	$2, %eax
	movslq	%esi, %rsi
	movl	(%rdx,%rsi,4), %esi
	movl	%esi, 4(%rcx,%rdi)
	cmpl	%ebp, %eax
	jge	.L90
	addl	%r8d, %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, 8(%rcx,%rdi)
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L174:
	movq	8(%rsp), %rax
	leaq	0(,%rax,4), %r13
	movslq	20(%rsp), %rax
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L120:
	movq	$4, (%rsp)
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L171:
	movq	$4, 32(%rsp)
	testl	%r12d, %r12d
	jne	.L75
	movq	24(%rsp), %rax
	movq	(%rax), %rdx
	movslq	20(%rsp), %rax
	jmp	.L88
.L172:
	movq	24(%rsp), %rax
	movq	(%rax), %rdx
	jmp	.L80
.L123:
	xorl	%eax, %eax
	jmp	.L93
.L165:
	call	__stack_chk_fail@PLT
.L167:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L165
	leaq	.LC2(%rip), %rdi
.LEHB2:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE2:
.L169:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L165
	leaq	.LC2(%rip), %rdi
.LEHB3:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE3:
.L126:
	endbr64
	movq	%rax, %rbx
	jmp	.L117
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2712:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2712-.LLSDACSB2712
.LLSDACSB2712:
	.uleb128 .LEHB0-.LFB2712
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2712
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L126-.LFB2712
	.uleb128 0
	.uleb128 .LEHB2-.LFB2712
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2712
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L126-.LFB2712
	.uleb128 0
.LLSDACSE2712:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2712
	.type	_Z5mergeRSt6vectorIiSaIiEEiii.cold, @function
_Z5mergeRSt6vectorIiSaIiEEiii.cold:
.LFSB2712:
.L117:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	leaq	48(%rsp), %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L179
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L179:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2712:
	.section	.gcc_except_table
.LLSDAC2712:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2712-.LLSDACSBC2712
.LLSDACSBC2712:
	.uleb128 .LEHB4-.LCOLDB3
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC2712:
	.section	.text.unlikely
	.text
	.size	_Z5mergeRSt6vectorIiSaIiEEiii, .-_Z5mergeRSt6vectorIiSaIiEEiii
	.section	.text.unlikely
	.size	_Z5mergeRSt6vectorIiSaIiEEiii.cold, .-_Z5mergeRSt6vectorIiSaIiEEiii.cold
.LCOLDE3:
	.text
.LHOTE3:
	.p2align 4
	.type	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0, @function
_Z10merge_sortRSt6vectorIiSaIiEEii.part.0:
.LFB4707:
	.cfi_startproc
	movl	%edx, %eax
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subl	%esi, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%eax, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	sarl	%r12d
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	addl	%esi, %r12d
	movl	%esi, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpl	%r12d, %esi
	jl	.L212
	leal	1(%r12), %r14d
	cmpl	%r14d, %ebp
	jg	.L213
.L196:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebp, %ecx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movq	%r13, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_Z5mergeRSt6vectorIiSaIiEEiii
	.p2align 4,,10
	.p2align 3
.L212:
	.cfi_restore_state
	movl	%eax, %r14d
	sarl	$2, %r14d
	addl	%esi, %r14d
	cmpl	%r14d, %esi
	jge	.L182
	movl	%eax, %r8d
	sarl	$3, %r8d
	addl	%esi, %r8d
	cmpl	%r8d, %esi
	jl	.L214
	leal	1(%r8), %r15d
	cmpl	%r15d, %r14d
	jg	.L215
.L186:
	movl	%r14d, %ecx
	movl	%r8d, %edx
	movl	%ebx, %esi
	movq	%r13, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
.L182:
	leal	1(%r14), %r15d
	cmpl	%r15d, %r12d
	jle	.L189
	movl	%r12d, %edx
	subl	%r15d, %edx
	movl	%edx, %eax
	sarl	%eax
	addl	%r15d, %eax
	cmpl	%eax, %r15d
	jl	.L216
	leal	1(%rax), %r8d
	cmpl	%r8d, %r12d
	jg	.L217
.L193:
	movl	%r12d, %ecx
	movl	%eax, %edx
	movl	%r15d, %esi
	movq	%r13, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
.L189:
	movl	%r14d, %edx
	movl	%r12d, %ecx
	movl	%ebx, %esi
	movq	%r13, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	leal	1(%r12), %r14d
	cmpl	%r14d, %ebp
	jle	.L196
.L213:
	movl	%ebp, %eax
	subl	%r14d, %eax
	movl	%eax, %r15d
	sarl	%r15d
	addl	%r14d, %r15d
	cmpl	%r15d, %r14d
	jge	.L197
	movl	%eax, %r8d
	sarl	$2, %r8d
	addl	%r14d, %r8d
	cmpl	%r8d, %r14d
	jl	.L218
	leal	1(%r8), %eax
	cmpl	%eax, %r15d
	jg	.L219
.L201:
	movl	%r15d, %ecx
	movl	%r8d, %edx
	movl	%r14d, %esi
	movq	%r13, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
.L197:
	leal	1(%r15), %eax
	cmpl	%eax, %ebp
	jle	.L204
	movl	%ebp, %edx
	subl	%eax, %edx
	movl	%edx, %r8d
	sarl	%r8d
	addl	%eax, %r8d
	cmpl	%r8d, %eax
	jl	.L220
	leal	1(%r8), %r9d
	cmpl	%r9d, %ebp
	jg	.L221
.L208:
	movl	%ebp, %ecx
	movl	%r8d, %edx
	movl	%eax, %esi
	movq	%r13, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
.L204:
	movl	%ebp, %ecx
	movl	%r15d, %edx
	movl	%r14d, %esi
	movq	%r13, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	jmp	.L196
	.p2align 4,,10
	.p2align 3
.L221:
	movl	%ebp, %r10d
	subl	%r9d, %r10d
	sarl	%r10d
	addl	%r9d, %r10d
	cmpl	%r10d, %r9d
	jge	.L209
	movl	%r10d, %edx
	movl	%r9d, %esi
	movq	%r13, %rdi
	movl	%r8d, 12(%rsp)
	movl	%eax, 8(%rsp)
	movl	%r10d, 4(%rsp)
	movl	%r9d, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	12(%rsp), %r8d
	movl	8(%rsp), %eax
	movl	4(%rsp), %r10d
	movl	(%rsp), %r9d
.L209:
	leal	1(%r10), %esi
	cmpl	%esi, %ebp
	jle	.L210
	movl	%ebp, %edx
	movq	%r13, %rdi
	movl	%r10d, 12(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%r8d, 4(%rsp)
	movl	%eax, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	12(%rsp), %r10d
	movl	8(%rsp), %r9d
	movl	4(%rsp), %r8d
	movl	(%rsp), %eax
.L210:
	movl	%ebp, %ecx
	movl	%r10d, %edx
	movl	%r9d, %esi
	movq	%r13, %rdi
	movl	%r8d, 4(%rsp)
	movl	%eax, (%rsp)
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	4(%rsp), %r8d
	movl	(%rsp), %eax
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L220:
	sarl	$2, %edx
	leal	(%rdx,%rax), %r9d
	cmpl	%r9d, %eax
	jge	.L206
	movl	%r9d, %edx
	movl	%eax, %esi
	movq	%r13, %rdi
	movl	%r8d, 8(%rsp)
	movl	%r9d, 4(%rsp)
	movl	%eax, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	8(%rsp), %r8d
	movl	4(%rsp), %r9d
	movl	(%rsp), %eax
.L206:
	leal	1(%r9), %esi
	cmpl	%esi, %r8d
	jle	.L207
	movl	%r8d, %edx
	movq	%r13, %rdi
	movl	%r9d, 8(%rsp)
	movl	%eax, 4(%rsp)
	movl	%r8d, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	8(%rsp), %r9d
	movl	4(%rsp), %eax
	movl	(%rsp), %r8d
.L207:
	movl	%r8d, %ecx
	movl	%r9d, %edx
	movl	%eax, %esi
	movq	%r13, %rdi
	movl	%r8d, 4(%rsp)
	movl	%eax, (%rsp)
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	4(%rsp), %r8d
	movl	(%rsp), %eax
	leal	1(%r8), %r9d
	cmpl	%r9d, %ebp
	jle	.L208
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L219:
	movl	%r15d, %r9d
	subl	%eax, %r9d
	sarl	%r9d
	addl	%eax, %r9d
	cmpl	%r9d, %eax
	jge	.L202
	movl	%r9d, %edx
	movl	%eax, %esi
	movq	%r13, %rdi
	movl	%r8d, 8(%rsp)
	movl	%r9d, 4(%rsp)
	movl	%eax, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	8(%rsp), %r8d
	movl	4(%rsp), %r9d
	movl	(%rsp), %eax
.L202:
	leal	1(%r9), %esi
	cmpl	%esi, %r15d
	jle	.L203
	movl	%r15d, %edx
	movq	%r13, %rdi
	movl	%r9d, 8(%rsp)
	movl	%eax, 4(%rsp)
	movl	%r8d, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	8(%rsp), %r9d
	movl	4(%rsp), %eax
	movl	(%rsp), %r8d
.L203:
	movl	%r15d, %ecx
	movl	%r9d, %edx
	movl	%eax, %esi
	movq	%r13, %rdi
	movl	%r8d, (%rsp)
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	(%rsp), %r8d
	jmp	.L201
	.p2align 4,,10
	.p2align 3
.L218:
	sarl	$3, %eax
	addl	%r14d, %eax
	cmpl	%eax, %r14d
	jge	.L199
	movl	%eax, %edx
	movl	%r14d, %esi
	movq	%r13, %rdi
	movl	%r8d, 4(%rsp)
	movl	%eax, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	4(%rsp), %r8d
	movl	(%rsp), %eax
.L199:
	leal	1(%rax), %esi
	cmpl	%esi, %r8d
	jle	.L200
	movl	%r8d, %edx
	movq	%r13, %rdi
	movl	%eax, 4(%rsp)
	movl	%r8d, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	4(%rsp), %eax
	movl	(%rsp), %r8d
.L200:
	movl	%r8d, %ecx
	movl	%eax, %edx
	movl	%r14d, %esi
	movq	%r13, %rdi
	movl	%r8d, (%rsp)
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	(%rsp), %r8d
	leal	1(%r8), %eax
	cmpl	%eax, %r15d
	jle	.L201
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L217:
	movl	%r12d, %r9d
	subl	%r8d, %r9d
	sarl	%r9d
	addl	%r8d, %r9d
	cmpl	%r9d, %r8d
	jge	.L194
	movl	%r9d, %edx
	movl	%r8d, %esi
	movq	%r13, %rdi
	movl	%eax, 8(%rsp)
	movl	%r9d, 4(%rsp)
	movl	%r8d, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	8(%rsp), %eax
	movl	4(%rsp), %r9d
	movl	(%rsp), %r8d
.L194:
	leal	1(%r9), %esi
	cmpl	%esi, %r12d
	jle	.L195
	movl	%r12d, %edx
	movq	%r13, %rdi
	movl	%r9d, 8(%rsp)
	movl	%r8d, 4(%rsp)
	movl	%eax, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	8(%rsp), %r9d
	movl	4(%rsp), %r8d
	movl	(%rsp), %eax
.L195:
	movl	%r12d, %ecx
	movl	%r9d, %edx
	movl	%r8d, %esi
	movq	%r13, %rdi
	movl	%eax, (%rsp)
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	(%rsp), %eax
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L216:
	sarl	$2, %edx
	leal	(%rdx,%r15), %r8d
	cmpl	%r8d, %r15d
	jge	.L191
	movl	%r8d, %edx
	movl	%r15d, %esi
	movq	%r13, %rdi
	movl	%eax, 4(%rsp)
	movl	%r8d, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	4(%rsp), %eax
	movl	(%rsp), %r8d
.L191:
	leal	1(%r8), %esi
	cmpl	%esi, %eax
	jle	.L192
	movl	%eax, %edx
	movq	%r13, %rdi
	movl	%r8d, 4(%rsp)
	movl	%eax, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	4(%rsp), %r8d
	movl	(%rsp), %eax
.L192:
	movl	%eax, %ecx
	movl	%r8d, %edx
	movl	%r15d, %esi
	movq	%r13, %rdi
	movl	%eax, (%rsp)
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	(%rsp), %eax
	leal	1(%rax), %r8d
	cmpl	%r8d, %r12d
	jle	.L193
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L215:
	movl	%r14d, %eax
	subl	%r15d, %eax
	sarl	%eax
	addl	%r15d, %eax
	cmpl	%eax, %r15d
	jge	.L187
	movl	%eax, %edx
	movl	%r15d, %esi
	movq	%r13, %rdi
	movl	%r8d, 4(%rsp)
	movl	%eax, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	4(%rsp), %r8d
	movl	(%rsp), %eax
.L187:
	leal	1(%rax), %esi
	cmpl	%esi, %r14d
	jle	.L188
	movl	%r14d, %edx
	movq	%r13, %rdi
	movl	%eax, 4(%rsp)
	movl	%r8d, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	4(%rsp), %eax
	movl	(%rsp), %r8d
.L188:
	movl	%r14d, %ecx
	movl	%eax, %edx
	movl	%r15d, %esi
	movq	%r13, %rdi
	movl	%r8d, (%rsp)
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	(%rsp), %r8d
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L214:
	sarl	$4, %eax
	leal	(%rax,%rsi), %r15d
	cmpl	%r15d, %esi
	jge	.L184
	movl	%r15d, %edx
	movl	%r8d, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	(%rsp), %r8d
.L184:
	leal	1(%r15), %esi
	cmpl	%esi, %r8d
	jle	.L185
	movl	%r8d, %edx
	movq	%r13, %rdi
	movl	%r8d, (%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	(%rsp), %r8d
.L185:
	movl	%r8d, %ecx
	movl	%r15d, %edx
	movl	%ebx, %esi
	movq	%r13, %rdi
	movl	%r8d, (%rsp)
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	(%rsp), %r8d
	leal	1(%r8), %r15d
	cmpl	%r15d, %r14d
	jle	.L186
	jmp	.L215
	.cfi_endproc
.LFE4707:
	.size	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0, .-_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	.p2align 4
	.globl	_Z7ms_timeRSt6vectorIiSaIiEE
	.type	_Z7ms_timeRSt6vectorIiSaIiEE, @function
_Z7ms_timeRSt6vectorIiSaIiEE:
.LFB2719:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	8(%r12), %rbx
	subq	(%r12), %rbx
	sarq	$2, %rbx
	movq	%rax, %rbp
	subl	$1, %ebx
	testl	%ebx, %ebx
	jg	.L246
.L223:
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	leaq	_ZSt4cout(%rip), %rdi
	movabsq	$4835703278458516699, %rdx
	subq	%rbp, %rax
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$18, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$4, %edx
	leaq	.LC1(%rip), %rsi
	popq	%rbx
	.cfi_def_cfa_offset 48
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	.p2align 4,,10
	.p2align 3
.L246:
	.cfi_restore_state
	movl	%ebx, %r13d
	sarl	%r13d
	je	.L225
	movl	%ebx, %r14d
	sarl	$2, %r14d
	jne	.L247
	leal	1(%r14), %r15d
	cmpl	%r15d, %r13d
	jg	.L248
.L229:
	movl	%r14d, %edx
	movl	%r13d, %ecx
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	leal	1(%r13), %r14d
	cmpl	%r14d, %ebx
	jle	.L225
	movl	%ebx, %eax
	subl	%r14d, %eax
	movl	%eax, %r15d
	sarl	%r15d
	addl	%r14d, %r15d
	cmpl	%r15d, %r14d
	jl	.L249
	leal	1(%r15), %eax
	cmpl	%eax, %ebx
	jg	.L250
.L236:
	movl	%ebx, %ecx
	movl	%r15d, %edx
	movl	%r14d, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
.L225:
	movl	%ebx, %ecx
	movl	%r13d, %edx
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	jmp	.L223
	.p2align 4,,10
	.p2align 3
.L250:
	movl	%ebx, %r8d
	subl	%eax, %r8d
	sarl	%r8d
	addl	%eax, %r8d
	cmpl	%r8d, %eax
	jge	.L237
	movl	%r8d, %edx
	movl	%eax, %esi
	movq	%r12, %rdi
	movl	%r8d, 12(%rsp)
	movl	%eax, 8(%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	12(%rsp), %r8d
	movl	8(%rsp), %eax
.L237:
	leal	1(%r8), %esi
	cmpl	%esi, %ebx
	jle	.L238
	movl	%ebx, %edx
	movq	%r12, %rdi
	movl	%r8d, 12(%rsp)
	movl	%eax, 8(%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	12(%rsp), %r8d
	movl	8(%rsp), %eax
.L238:
	movl	%ebx, %ecx
	movl	%r8d, %edx
	movl	%eax, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	jmp	.L236
	.p2align 4,,10
	.p2align 3
.L249:
	sarl	$2, %eax
	addl	%r14d, %eax
	cmpl	%eax, %r14d
	jge	.L234
	movl	%eax, %edx
	movl	%r14d, %esi
	movq	%r12, %rdi
	movl	%eax, 8(%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	8(%rsp), %eax
.L234:
	leal	1(%rax), %esi
	cmpl	%esi, %r15d
	jle	.L235
	movl	%r15d, %edx
	movq	%r12, %rdi
	movl	%eax, 8(%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	8(%rsp), %eax
.L235:
	movl	%eax, %edx
	movl	%r15d, %ecx
	movl	%r14d, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	leal	1(%r15), %eax
	cmpl	%eax, %ebx
	jle	.L236
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L248:
	movl	%r13d, %eax
	subl	%r15d, %eax
	sarl	%eax
	addl	%r15d, %eax
	cmpl	%eax, %r15d
	jge	.L230
	movl	%eax, %edx
	movl	%r15d, %esi
	movq	%r12, %rdi
	movl	%eax, 8(%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	8(%rsp), %eax
.L230:
	leal	1(%rax), %esi
	cmpl	%esi, %r13d
	jle	.L231
	movl	%r13d, %edx
	movq	%r12, %rdi
	movl	%eax, 8(%rsp)
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	movl	8(%rsp), %eax
.L231:
	movl	%r13d, %ecx
	movl	%eax, %edx
	movl	%r15d, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L247:
	movl	%ebx, %r15d
	sarl	$3, %r15d
	je	.L227
	movl	%r15d, %edx
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
.L227:
	leal	1(%r15), %esi
	cmpl	%esi, %r14d
	jle	.L228
	movl	%r14d, %edx
	movq	%r12, %rdi
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
.L228:
	movl	%r15d, %edx
	movl	%r14d, %ecx
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	leal	1(%r14), %r15d
	cmpl	%r15d, %r13d
	jle	.L229
	jmp	.L248
	.cfi_endproc
.LFE2719:
	.size	_Z7ms_timeRSt6vectorIiSaIiEE, .-_Z7ms_timeRSt6vectorIiSaIiEE
	.p2align 4
	.globl	_Z10merge_sortRSt6vectorIiSaIiEEii
	.type	_Z10merge_sortRSt6vectorIiSaIiEEii, @function
_Z10merge_sortRSt6vectorIiSaIiEEii:
.LFB2713:
	.cfi_startproc
	endbr64
	cmpl	%edx, %esi
	jl	.L264
	ret
	.p2align 4,,10
	.p2align 3
.L264:
	movl	%edx, %eax
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subl	%esi, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%eax, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	sarl	%r13d
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	addl	%esi, %r13d
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	cmpl	%r13d, %esi
	jge	.L253
	movl	%eax, %r15d
	sarl	$2, %r15d
	addl	%esi, %r15d
	cmpl	%r15d, %esi
	jl	.L265
	leal	1(%r15), %esi
	cmpl	%esi, %r13d
	jg	.L266
.L257:
	movl	%r13d, %ecx
	movl	%r15d, %edx
	movl	%ebx, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
.L253:
	leal	1(%r13), %r14d
	cmpl	%r14d, %ebp
	jle	.L258
	movl	%ebp, %r15d
	subl	%r14d, %r15d
	sarl	%r15d
	addl	%r14d, %r15d
	cmpl	%r15d, %r14d
	jl	.L267
	leal	1(%r15), %esi
	cmpl	%esi, %ebp
	jg	.L268
.L260:
	movl	%ebp, %ecx
	movl	%r15d, %edx
	movl	%r14d, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
.L258:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movl	%ebx, %esi
	movq	%r12, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	jmp	_Z5mergeRSt6vectorIiSaIiEEiii
	.p2align 4,,10
	.p2align 3
.L268:
	.cfi_restore_state
	movl	%ebp, %edx
	movq	%r12, %rdi
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L267:
	movl	%r14d, %esi
	movl	%r15d, %edx
	movq	%r12, %rdi
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	leal	1(%r15), %esi
	cmpl	%esi, %ebp
	jle	.L260
	jmp	.L268
	.p2align 4,,10
	.p2align 3
.L266:
	movl	%r13d, %edx
	movq	%r12, %rdi
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
	jmp	.L257
	.p2align 4,,10
	.p2align 3
.L265:
	sarl	$3, %eax
	leal	(%rax,%rsi), %r14d
	cmpl	%r14d, %esi
	jge	.L255
	movl	%r14d, %edx
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
.L255:
	leal	1(%r14), %esi
	cmpl	%esi, %r15d
	jle	.L256
	movl	%r15d, %edx
	movq	%r12, %rdi
	call	_Z10merge_sortRSt6vectorIiSaIiEEii.part.0
.L256:
	movl	%ebx, %esi
	movl	%r15d, %ecx
	movl	%r14d, %edx
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	leal	1(%r15), %esi
	cmpl	%esi, %r13d
	jle	.L257
	jmp	.L266
	.cfi_endproc
.LFE2713:
	.size	_Z10merge_sortRSt6vectorIiSaIiEEii, .-_Z10merge_sortRSt6vectorIiSaIiEEii
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB4650:
	.cfi_startproc
	endbr64
	movdqa	.LC4(%rip), %xmm3
	movq	%rdi, %rcx
	movq	%rdi, %rax
	movdqa	.LC5(%rip), %xmm4
	movdqa	.LC6(%rip), %xmm5
	movdqa	.LC7(%rip), %xmm6
	leaq	1808(%rdi), %rdx
	pxor	%xmm7, %xmm7
	.p2align 4,,10
	.p2align 3
.L270:
	movdqu	(%rax), %xmm0
	movdqu	8(%rax), %xmm1
	addq	$16, %rax
	movdqu	3160(%rax), %xmm2
	pand	%xmm4, %xmm1
	pand	%xmm3, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pand	%xmm5, %xmm0
	psrlq	$1, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	psubq	%xmm0, %xmm2
	pand	%xmm6, %xmm2
	movdqa	%xmm2, %xmm0
	pxor	%xmm1, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L270
	movq	1808(%rcx), %rdx
	movq	1816(%rcx), %rax
	pxor	%xmm7, %xmm7
	andl	$2147483647, %eax
	andq	$-2147483648, %rdx
	orq	%rax, %rdx
	andl	$1, %eax
	negq	%rax
	shrq	%rdx
	xorq	4984(%rcx), %rdx
	andl	$2567483615, %eax
	xorq	%rdx, %rax
	leaq	4984(%rcx), %rdx
	movq	%rax, 1808(%rcx)
	leaq	1816(%rcx), %rax
.L271:
	movdqu	(%rax), %xmm0
	movdqu	8(%rax), %xmm1
	addq	$16, %rax
	movdqu	-1832(%rax), %xmm2
	pand	%xmm4, %xmm1
	pand	%xmm3, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pand	%xmm5, %xmm0
	psrlq	$1, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	psubq	%xmm0, %xmm2
	pand	%xmm6, %xmm2
	movdqa	%xmm2, %xmm0
	pxor	%xmm1, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L271
	movq	4984(%rcx), %rax
	movq	(%rcx), %rdx
	movq	$0, 4992(%rcx)
	andl	$2147483647, %edx
	andq	$-2147483648, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	andl	$1, %eax
	negq	%rax
	shrq	%rdx
	xorq	3168(%rcx), %rdx
	andl	$2567483615, %eax
	xorq	%rdx, %rax
	movq	%rax, 4984(%rcx)
	ret
	.cfi_endproc
.LFE4650:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.align 2
	.p2align 4
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0, @function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0:
.LFB4718:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movslq	%esi, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movslq	%edx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	subq	%rax, %r13
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rax, %rbp
	movl	$4294967294, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	cmpq	%r13, %rax
	jnb	.L291
	movl	$4294967295, %eax
	cmpq	%rax, %r13
	je	.L281
.L289:
	movl	$-1, %edx
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	movq	%rax, %rbx
	movq	4992(%r12), %rax
	salq	$32, %rbx
	cmpq	$623, %rax
	jbe	.L282
	movq	%r12, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
.L282:
	leaq	1(%rax), %rdx
	movq	(%r12,%rax,8), %rax
	movq	%rdx, 4992(%r12)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	addq	%rax, %rbx
	setc	%al
	movzbl	%al, %eax
	cmpq	%rbx, %r13
	jb	.L289
	testq	%rax, %rax
	jne	.L289
.L280:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leal	0(%rbp,%rbx), %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L291:
	.cfi_restore_state
	movq	4992(%rdi), %rax
	addq	$1, %r13
	movl	%r13d, %r15d
	cmpq	$623, %rax
	ja	.L292
.L276:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rcx
	movq	%rcx, 4992(%r12)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	imulq	%r13, %rbx
	cmpl	%r13d, %ebx
	jnb	.L277
	movl	%r13d, %eax
	xorl	%edx, %edx
	negl	%eax
	divl	%r15d
	movl	%edx, %r14d
	cmpl	%edx, %ebx
	jb	.L279
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L278:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rcx
	movq	%rcx, 4992(%r12)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	imulq	%r13, %rbx
	cmpl	%r14d, %ebx
	jnb	.L277
.L279:
	movq	%rcx, %rax
	cmpq	$623, %rcx
	jbe	.L278
	movq	%r12, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L277:
	shrq	$32, %rbx
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L281:
	movq	4992(%rdi), %rax
	cmpq	$623, %rax
	ja	.L293
.L286:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rdx
	movq	%rdx, 4992(%r12)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L292:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L276
	.p2align 4,,10
	.p2align 3
.L293:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L286
	.cfi_endproc
.LFE4718:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0, .-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4
	.globl	_Z15randomize_arraym
	.type	_Z15randomize_arraym, @function
_Z15randomize_arraym:
.LFB3849:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3849
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$4096, %rsp
	.cfi_def_cfa_offset 4144
	orq	$0, (%rsp)
	subq	$4096, %rsp
	.cfi_def_cfa_offset 8240
	orq	$0, (%rsp)
	subq	$1824, %rsp
	.cfi_def_cfa_offset 10064
	movq	%fs:40, %rax
	movq	%rax, 10008(%rsp)
	movq	%rsi, %rax
	shrq	$61, %rax
	jne	.L322
	pxor	%xmm0, %xmm0
	movq	$0, 16(%rdi)
	movq	%rdi, %rbp
	movq	%rsi, %r12
	movups	%xmm0, (%rdi)
	testq	%rsi, %rsi
	je	.L323
	leaq	0(,%rsi,4), %rbx
	movq	%rbx, %rdi
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	leaq	(%rax,%rbx), %r13
	movq	%rax, 0(%rbp)
	leaq	4(%rax), %rdi
	movq	%r13, 16(%rbp)
	movl	$0, (%rax)
	cmpq	$1, %r12
	je	.L298
	cmpq	%rdi, %r13
	je	.L299
	leaq	-4(%rbx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L299:
	movq	%r13, %rdi
.L298:
	movq	%rdi, 8(%rbp)
	leaq	5008(%rsp), %rbx
	movq	%rsp, %r13
	leaq	5024(%rsp), %r14
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movl	$1634100580, 5024(%rsp)
	movq	%r14, 5008(%rsp)
	movl	$1953264993, 5027(%rsp)
	movq	$7, 5016(%rsp)
	movb	$0, 5031(%rsp)
.LEHB6:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE6:
	movq	5008(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L300
	movq	5024(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L300:
	movq	%r13, %rdi
.LEHB7:
	call	_ZNSt13random_device9_M_getvalEv@PLT
.LEHE7:
	movl	%eax, %ecx
	movl	$1, %edx
	movq	%rcx, 5008(%rsp)
	.p2align 4,,10
	.p2align 3
.L304:
	movq	%rcx, %rax
	shrq	$30, %rax
	xorq	%rcx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rdx), %ecx
	movq	%rcx, (%rbx,%rdx,8)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	.L304
	movq	$624, 10000(%rsp)
	testq	%r12, %r12
	je	.L305
	leaq	0(,%r12,4), %r14
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L306:
	movl	$1000, %edx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	movq	0(%rbp), %rdx
	movl	%eax, (%rdx,%r12)
	addq	$4, %r12
	cmpq	%r12, %r14
	jne	.L306
.L305:
	movq	%r13, %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	movq	10008(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L320
	addq	$10016, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L323:
	.cfi_restore_state
	movq	$0, (%rdi)
	movq	$0, 16(%rdi)
	xorl	%edi, %edi
	jmp	.L298
.L322:
	movq	10008(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L320
	leaq	.LC2(%rip), %rdi
.LEHB8:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE8:
.L320:
	call	__stack_chk_fail@PLT
.L310:
	endbr64
	movq	%rax, %rbx
	jmp	.L307
.L311:
	endbr64
	movq	%rax, %r12
	jmp	.L302
	.section	.gcc_except_table
.LLSDA3849:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3849-.LLSDACSB3849
.LLSDACSB3849:
	.uleb128 .LEHB5-.LFB3849
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB3849
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L311-.LFB3849
	.uleb128 0
	.uleb128 .LEHB7-.LFB3849
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L310-.LFB3849
	.uleb128 0
	.uleb128 .LEHB8-.LFB3849
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE3849:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3849
	.type	_Z15randomize_arraym.cold, @function
_Z15randomize_arraym.cold:
.LFSB3849:
.L307:
	.cfi_def_cfa_offset 10064
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movq	%r13, %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
.L303:
	movq	%rbp, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	10008(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L324
	movq	%rbx, %rdi
.LEHB9:
	call	_Unwind_Resume@PLT
.LEHE9:
.L302:
	movq	%rbx, %rdi
	movq	%r12, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L303
.L324:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3849:
	.section	.gcc_except_table
.LLSDAC3849:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3849-.LLSDACSBC3849
.LLSDACSBC3849:
	.uleb128 .LEHB9-.LCOLDB8
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSEC3849:
	.section	.text.unlikely
	.text
	.size	_Z15randomize_arraym, .-_Z15randomize_arraym
	.section	.text.unlikely
	.size	_Z15randomize_arraym.cold, .-_Z15randomize_arraym.cold
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
.LCOLDB9:
	.section	.text.startup,"ax",@progbits
.LHOTB9:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3859:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3859
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$1000, %esi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbx
	leaq	32(%rsp), %rbp
	movq	%rbx, %rdi
.LEHB10:
	call	_Z15randomize_arraym
.LEHE10:
	movl	$5000, %esi
	movq	%rbp, %rdi
.LEHB11:
	call	_Z15randomize_arraym
.LEHE11:
	leaq	64(%rsp), %r12
	movl	$10000, %esi
	movq	%r12, %rdi
.LEHB12:
	call	_Z15randomize_arraym
.LEHE12:
	leaq	96(%rsp), %r13
	movl	$50000, %esi
	movq	%r13, %rdi
.LEHB13:
	call	_Z15randomize_arraym
.LEHE13:
	leaq	128(%rsp), %r14
	movl	$100000, %esi
	movq	%r14, %rdi
.LEHB14:
	call	_Z15randomize_arraym
.LEHE14:
	movq	%rbx, %rdi
.LEHB15:
	call	_Z7qs_timeRSt6vectorIiSaIiEE
.LEHE15:
	movq	%r14, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	%r13, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	%r12, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	%rbp, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	%rbx, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L340
	addq	$168, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L340:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L337:
	endbr64
	movq	%rax, %r15
	jmp	.L326
.L336:
	endbr64
	movq	%rax, %r14
	jmp	.L327
.L334:
	endbr64
	movq	%rax, %r12
	jmp	.L329
.L335:
	endbr64
	movq	%rax, %r14
	jmp	.L328
.L333:
	endbr64
	movq	%rax, %r12
	jmp	.L330
	.section	.gcc_except_table
.LLSDA3859:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3859-.LLSDACSB3859
.LLSDACSB3859:
	.uleb128 .LEHB10-.LFB3859
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB3859
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L333-.LFB3859
	.uleb128 0
	.uleb128 .LEHB12-.LFB3859
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L334-.LFB3859
	.uleb128 0
	.uleb128 .LEHB13-.LFB3859
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L335-.LFB3859
	.uleb128 0
	.uleb128 .LEHB14-.LFB3859
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L336-.LFB3859
	.uleb128 0
	.uleb128 .LEHB15-.LFB3859
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L337-.LFB3859
	.uleb128 0
.LLSDACSE3859:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3859
	.type	main.cold, @function
main.cold:
.LFSB3859:
.L326:
	.cfi_def_cfa_offset 224
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r14, %rdi
	movq	%r15, %r14
	call	_ZNSt6vectorIiSaIiEED1Ev
.L327:
	movq	%r13, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
.L328:
	movq	%r12, %rdi
	movq	%r14, %r12
	call	_ZNSt6vectorIiSaIiEED1Ev
.L329:
	movq	%rbp, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
.L330:
	movq	%rbx, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L341
	movq	%r12, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.LEHE16:
.L341:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3859:
	.section	.gcc_except_table
.LLSDAC3859:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3859-.LLSDACSBC3859
.LLSDACSBC3859:
	.uleb128 .LEHB16-.LCOLDB9
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSEC3859:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE9:
	.section	.text.startup
.LHOTE9:
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC4:
	.quad	-2147483648
	.quad	-2147483648
	.align 16
.LC5:
	.quad	2147483647
	.quad	2147483647
	.align 16
.LC6:
	.quad	1
	.quad	1
	.align 16
.LC7:
	.quad	2567483615
	.quad	2567483615
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
