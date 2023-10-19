section .data
	msg db "Enter the number:",10,0
	format db "%d",0
	table db "%d x %d = %d",10,0
section .bss
	num resd 1
section .text
	global main
	extern printf
	extern scanf
main:
	push msg
	call printf
	add esp, 4

	push num
	push format
	call scanf
	add esp, 8
	
	mov ebx, 1
lp:	mov eax, dword[num]

	cmp ebx, 11 
		jz out
	
	mul ebx
	push eax
	push ebx
	push dword[num]
	push table
	call printf
	add esp, 16 
	inc ebx
	jmp lp

out:
	mov eax, 1
	mov ebx, 1
	ret
