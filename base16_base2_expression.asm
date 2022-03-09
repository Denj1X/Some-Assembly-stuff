.data
	sirb16: .space 200
	sirb2: .space 800
	formatScanf: .asciz "%s"
	formatPrintf1: .asciz "%d "
	formatPrintf2: .asciz "%s "
	formatPrintf3: .asciz "%c "
	formatMinus: .asciz "%c"
	formatNewline: .asciz "\n"
	minus: .asciz "-"
	indexb2: .long 0
	indexrestart: .long 0
	var: .long 0
	const: .long 0
	nr: .long 0
	oper: .long 0
	pozit: .long 0
	afislet: .asciz "let"
	afisadd: .asciz "add"
	afissub: .asciz "sub"
	afismul: .asciz "mul"
	afisdiv: .asciz "div"
.text

.global main
main:
	pushl $sirb16
	pushl $formatScanf
	call scanf
	popl %ebx
	popl %ebx
	movl $sirb16, %edi  ;edi = b16
	movl $sirb2, %esi ;esi = b2
	xorl %ecx, %ecx
	jmp et_for
et_for:
	#b16 => b2
	movb (%edi, %ecx, 1), %al
	cmp $0, %al
	je nextStep

	cmp $48, %al
	je cif0

	cmp $49, %al
	je cif1

	cmp $50, %al
        je cif2

        cmp $51, %al
        je cif3

	cmp $52, %al
        je cif4

        cmp $53, %al
        je cif5

	cmp $54, %al
        je cif6

        cmp $55, %al
        je cif7

	cmp $56, %al
        je cif8

        cmp $57, %al
        je cif9

	cmp $65, %al
        je cifA

        cmp $66, %al
        je cifB

	cmp $67, %al
        je cifC

        cmp $68, %al
        je cifD

	cmp $69, %al
        je cifE

        cmp $70, %al
        je cifF

cont:
	incl %ecx
	jmp et_for
cif0:
	pushl %ecx
	movl indexb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
        incl %ecx
	movb $48, (%esi, %ecx, 1)
        incl %ecx
	movb $48, (%esi, %ecx, 1)
        incl %ecx
	addl $4, indexb2
	popl %ecx
	jmp cont
cif1:
	pushl %ecx
        movl indexb2, %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cif2:
	pushl %ecx
        movl indexb2, %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cif3:
	pushl %ecx
        movl indexb2, %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cif4:
	pushl %ecx
        movl indexb2, %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cif5:
	pushl %ecx
        movl indexb2, %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cif6:
	pushl %ecx
        movl indexb2, %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cif7:
	pushl %ecx
        movl indexb2, %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cif8:
	pushl %ecx
        movl indexb2, %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cif9:
	pushl %ecx
        movl indexb2, %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cifA:
	pushl %ecx
        movl indexb2, %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cifB:
	pushl %ecx
        movl indexb2, %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cifC:
	pushl %ecx
        movl indexb2, %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cifD:
	pushl %ecx
        movl indexb2, %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cifE:
	pushl %ecx
        movl indexb2, %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $48, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

cifF:
	pushl %ecx
        movl indexb2, %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        movb $49, (%esi, %ecx, 1)
        incl %ecx
        addl $4, indexb2
        popl %ecx
        jmp cont

nextStep: 
	#b2 => trecerea la codificarea ceruta
	xorl %ecx, %ecx
	jmp et_nextStuff

et_nextStuff:
	movb (%esi, %ecx, 1), %al #esi = b2
	cmp $0, %al
	je exit

	addl $1, indexrestart
	#restartare indexrestart din 12 in 12

	cmp $1, indexrestart
	je next_cont

	cmp $2, indexrestart #1 => operator
	je bit2check

	cmp $3, indexrestart	#0 => numar
	je bit3check	#1 => variabila

	cmp $4, indexrestart  #1 => negativ
	je bit4stage	# 0 => pozitiv

	cmp $5, indexrestart
	je bit5stage

	cmp $6, indexrestart
	je bit6stage

	cmp $7, indexrestart
	je bit7stage

	cmp $8, indexrestart
        je bit8stage

	cmp $9, indexrestart
        je bit9stage

	cmp $10, indexrestart
        je bit10stage

	cmp $11, indexrestart
        je bit11stage

	cmp $12, indexrestart
	je laststage

next_cont:
	incl %ecx
	jmp et_nextStuff

bit2check:
	cmp $48, %al
	je bit2_0
	cmp $49, %al
	je bit2_1
bit2_0:
	addl $1, var
	addl $1, const
	jmp next_cont
bit2_1:
	addl $1, oper
	jmp next_cont
bit3check:
	cmp $48, %al
	je bit3_0
	cmp $49, %al
	je bit3_1
bit3_0:
	subl $1, var
	jmp next_cont
bit3_1:
	subl $1, const
	jmp next_cont
bit4stage:
	cmp $48, %al
	je verificare
	cmp $49, %al
	je next_cont
verificare:
	cmp $1, const
	je pozitiv
	cmp $0, const
	je next_cont
pozitiv:
	addl $1, pozit
	jmp next_cont
bit5stage:
	cmp $49, %al
	je sum128
	cmp $48, %al
	je next_cont
sum128:
	addl $128, nr
	
	jmp next_cont
bit6stage:
	cmp $49, %al
	je sum64
	cmp $48, %al
        je next_cont
sum64:
	addl $64, nr
	jmp next_cont
bit7stage:
	cmp $49, %al
	je sum32
	cmp $48, %al
        je next_cont
sum32:
        addl $32, nr
	jmp next_cont
bit8stage:
	cmp $49, %al
	je sum16
	cmp $48, %al
        je next_cont
sum16:
        addl $16, nr
	jmp next_cont
bit9stage:
	cmp $49, %al
	je sum8
	cmp $48, %al
        je next_cont
sum8:
        addl $8, nr
	jmp next_cont
bit10stage:
	cmp $49, %al
	je sum4
	cmp $48, %al
        je next_cont
sum4:
        addl $4, nr
	jmp next_cont
bit11stage:
	cmp $49, %al
	je sum2
	cmp $48, %al
        je next_cont
sum2:
        addl $2, nr
	jmp next_cont
laststage:
	cmp $49, %al
	je sum1
	cmp $48, %al
        je reset
sum1:
        addl $1, nr
	jmp reset
reset:
	pushl %ecx
	cmp $1, oper
	je operatori
	cmp $1, var
	je variabile
	cmp $1, const
	je numere
operatori:
	cmp $0, nr
	je oper_let
	cmp $1, nr
	je oper_add
	cmp $2, nr
	je oper_sub
	cmp $3, nr
	je oper_mul
	cmp $4, nr
	je oper_div

oper_let:
	pushl $afislet
	pushl $formatPrintf2
	call printf
	popl %ebx
	popl %ebx

	pushl $0
	call fflush
	popl %ebx
	jmp reset2
oper_add:
	pushl $afisadd
        pushl $formatPrintf2
        call printf
        popl %ebx
        popl %ebx

        pushl $0
        call fflush
        popl %ebx
	jmp reset2
oper_sub:
	pushl $afissub
        pushl $formatPrintf2
        call printf
        popl %ebx
        popl %ebx

        pushl $0
        call fflush
        popl %ebx
	jmp reset2
oper_mul:
	pushl $afismul
        pushl $formatPrintf2
        call printf
        popl %ebx
        popl %ebx

        pushl $0
        call fflush
        popl %ebx
	jmp reset2
oper_div:
	pushl $afisdiv
        pushl $formatPrintf2
        call printf
        popl %ebx
        popl %ebx

        pushl $0
        call fflush
        popl %ebx
	jmp reset2
variabile:
	pushl nr
        pushl $formatPrintf3
        call printf
        popl %ebx
        popl %ebx

        pushl $0
        call fflush
        popl %ebx
	jmp reset2
numere:
	cmp $0, pozit
	je nr_negativ
	cmp $1, pozit
	je nr_pozitiv
nr_negativ:
	pushl minus
	pushl $formatMinus
	call printf
        popl %ebx
        popl %ebx

        pushl $0
        call fflush
        popl %ebx

	jmp nr_pozitiv
nr_pozitiv:
	pushl nr
        pushl $formatPrintf1
        call printf
        popl %ebx
        popl %ebx

        pushl $0
        call fflush
        popl %ebx
	jmp reset2
reset2:
	movl $0, indexrestart
	movl $0, nr
	movl $0, var
	movl $0, const
	movl $0, oper
	movl $0, pozit
	popl %ecx
	jmp next_cont
exit:
	pushl $formatNewline
	call printf
	popl %ebx
	
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
