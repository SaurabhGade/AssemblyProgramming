section .data
	msg db "Low level programming",10
	len equ $- msg
	msg2 db "Length of a string is = %d ",10,0
section .text
	global main 
	extern printf
main:	mov ebx, len
	push ebx 
	push msg2
	call printf
	add esp,8 
	mov eax, 0
	ret
