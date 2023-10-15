section .data
	factor db "%d",0
	inp1 db "Enter the number of rows",10,0
	star db "*",0
	msg db "",10,0
	j dd 1 
	k dd 1
section .bss
	i resd 1
section .text
	global main
	extern printf
	extern scanf
main:
	push inp1
	call printf
	add esp, 4

	push i
	push factor
	call scanf
	add esp, 8
	inc dword[i]
	mov ebx, dword[i]
	mov edi, dword[j]

lp1:	cmp ebx, edi
	jz out
	lp:	push star
		call printf
		add esp, 4
		dec edi
		jnz lp
	
	inc dword[k]
	add edi,dword[k]	
	push msg
	call printf
	add esp, 4
	jmp lp1


out:
	mov eax, 0
	ret
