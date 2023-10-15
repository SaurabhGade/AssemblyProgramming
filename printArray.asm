section .data		; This section holds initilized mutable data
	array dd 10,100,20,200,30,300,40,400,50,500		; Array dd because each element of an int array requre 4 byte
	msg db "Element = %d",10,0			;10 is new line char i.e. '\n' and 0 is end line char
section .text
	global main
	extern printf
main:
	mov ebx, 10
	mov ebp, array-4
lp:	add ebp, 4
	push dword[ebp]
	push msg
	call printf
	add esp , 8
	dec ebx
	jnz lp
	add eax, 0
ret
