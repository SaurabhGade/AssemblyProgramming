section .data
	msg db "Low Level programming",10
	msg2 db "%c "
	len equ $- msg
section .text
	global main
	extern printf
main:
	mov edi, len
	mov ebx, msg
lp:	push dword[ebx]
	push msg2
	call printf
	add esp, 8
	inc ebx
	dec edi
	jnz lp
mov eax, 0
ret
