section .data
	array dd 10,100,20,200,30,300,40,400,50,500
	msg db "Element = %d",10
section .text
	global main
	extern printf
main:
	mov esi, array
	mov edi,0
lp:	xor edx, edx	;To make edx zero
	mov eax, 4
	mul edi		; eax = eax * edi
	add eax, esi 
	push dword[eax]
	push msg
	call printf
	add esp, 8
	inc edi
	cmp edi,10
	jnz lp
mov eax, 0
ret
