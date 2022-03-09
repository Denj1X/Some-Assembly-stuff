.data
	str: .space 101
	formatScanf: .asciz "%101[^\n]"
	formatPrintf: .asciz "%d\n"
	delim: .asciz " "
	nr: .long 0
	v: .long -1, -1 ,-1 ,-1 ,-1 ,-1 ,-1 ,-1 ,-1 ,-1 ,-1 ,-1 ,-1 ,-1 ,-1 ,-1 ,-1 ,-1 ,-1 ,-1, -1 ,-1 ,-1 ,-1 ,-1 ,-1, -1, -1
	nr_var: .long 0
.text

.global main
main:
	pushl $str	
	call gets
	popl %ebx
	
	pushl $delim
	pushl $str
	call strtok
	popl %ebx
	popl %ebx
	xorl %esi, %esi
	xorl %edi, %edi
	movl %eax, %edi
	movl $v, %esi
while:
	cmp $0, %eax
	je final
	
	pushl %eax
	call atoi
	popl %ebx
	
	cmp $0, %eax
	je operatii
	
	pushl %eax
	jmp salt
salt:
	pushl $delim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx
	xorl %edi, %edi
	movl %eax, %edi
	
	jmp while
	
operatii:
	pushl %edi
	call strlen
	popl %ebx
	
	cmp $1, %eax
	je variabila
	
	xorl %ecx, %ecx
	xorb %al, %al
	movb (%edi, %ecx, 1), %al
	cmp $97, %al
	je adunare
	
	cmp $115, %al
	je scadere
	
	cmp $109, %al
	je inmultire
	
	cmp $100, %al
	je divide
	
	cmp $108, %al
	je let
variabila:
	xorl %ecx, %ecx
	xorb %al, %al
	xorl %edx, %edx
	movb (%edi, %ecx, 1), %al
	movb %al, nr_var
	subl $96, nr_var
	movl nr_var, %ecx
	movl (%esi, %ecx, 4), %edx
	cmp $0, %edx
	jge pus_stiva
	
	pushl %ecx
	jmp salt
pus_stiva:
	pushl %edx
	jmp salt
adunare:
	popl %eax
	popl %ebx
	addl %eax, %ebx
	pushl %ebx
	jmp salt
scadere:
	popl %eax
	popl %ebx
	subl %eax, %ebx
	pushl %ebx
	jmp salt
inmultire:
	xorl %edx, %edx
	popl %ebx
	popl %eax
	mull %ebx
	pushl %eax
	jmp salt
divide:
	xorl %edx, %edx
	popl %ebx
	popl %eax
	divl %ebx
	pushl %eax
	jmp salt
let:
	
	popl %ebx
	popl %ecx
	movl %ebx, (%esi, %ecx, 4)
	jmp salt
final:
	popl nr
	
	pushl nr
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
	mov $1, %eax
	xor %ebx, %ebx
	int $0x80
