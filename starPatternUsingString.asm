section .data
	string db "low level programming",10
	len equ $- string
	msg db "%c",0
	msg1 db "",10,0

	i dd 0
	j dd 0
	k dd len 
section .text
	global main
	extern printf
main:
lp:	mov ebx, string
	mov edi, dword[i]
	inc dword[j]
		dec dword[k]
		jz out
lp1:	push dword[ebx]
	push msg
	call printf
	add esp, 8
	inc ebx
	inc edi
		cmp edi, dword[j]
		jnz lp1
	push msg1
	call printf
	add esp, 4
	jmp lp	

out:
	ret	
