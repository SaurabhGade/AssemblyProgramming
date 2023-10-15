section .data
	star db "*",0
	msg db "",10,0
	i dd 10
	j dd 1 
	k dd 10
	l dd 1
section .text
	global main
	extern printf
main:
	mov ebx, dword[i]
	mov edi, dword[j]
lp1:		cmp edi, ebx
		jz out
lp:	push star
	call printf
	add esp, 4
	inc edi
	cmp edi,dword[k]
		jnz lp
	push msg
	call printf
	add esp, 4
	inc dword[l]
	mov edi, dword[l]
	jmp lp1
out:
	mov eax, 0
	ret	
