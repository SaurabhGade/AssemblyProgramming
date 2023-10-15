section .data
	array dd 10,100,20,200,30,300,40,400,50,500,60,600,70,700,80,800,90,900,10,1000,-1
	msg db "%d ",0
section .text
	global main
	extern printf
main:
	mov ebx, array
	mov esi, 0
	mov eax, 4
lp:		cmp dword[ebx],-1
		jz out
	push dword[ebx]
	push msg
	call printf
	add esp, 8
	mov ebx, array
	mov eax, 4
	inc esi
	mul esi
	add ebx, eax
		jmp lp
out:
	mov eax, 0
	ret
