section .data
	msg db "Loop iteration : %d",10,0
	b dd 20
	a dd 1 
section .text
	global main
	extern printf
main:
lp:	push dword[a]
	push msg
	call printf
	add esp, 8
		inc dword[a]
		dec dword[b]
		jnz lp
ret
