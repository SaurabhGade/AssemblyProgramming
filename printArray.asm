section .data
	array dd 10,100,20,200,30,300,40,400,50,500,-1
	msg db "Element = %d",10,0
section .text
	global main
	extern printf
main:
	mov edi, 0	;Array index counter
lp:	mov ebx, array 	;To store an base address of an array
	mov eax, 4	;sizeof(int)

	mul edi
	add ebx, eax 
		cmp dword[ebx],-1
		jz out
	push dword[ebx]
	push msg
	call printf
	add esp, 8
	inc edi
		jmp lp


out:
	mov eax, 0
	ret 
	
