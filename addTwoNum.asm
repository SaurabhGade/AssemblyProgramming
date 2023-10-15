section .data
	 a dd 19  
	 b dd 50 
	msg db "Sum is %d",10
section .text
	global main
	extern printf
main:
	mov eax, dword[a]
	mov ebx, dword[b]
	add eax, ebx
	push eax
	push msg
	call printf
	add esp,8 
	add eax, 0
ret
