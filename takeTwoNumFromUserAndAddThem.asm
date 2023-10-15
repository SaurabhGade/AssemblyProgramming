section .bss
	a resd 1
	b resd 1
section .data
	msg db "Enter the first number",10,0
	msg2 db "Enter teh second number",10,0
	msg3 db "Sum is %d",10,0
	format db "%d"
section .text
	global main
	extern scanf
	extern printf
main:
	push msg
	call printf
	add esp, 4
	
	push a
	push format
	call scanf
	add esp, 8

	push msg2
	call printf
	add esp, 4
	
	push b 
	push format
	call scanf
	add esp, 8

	mov eax, dword[a]
	add eax, dword[b]

	push eax
	push msg3
	call printf
	add esp, 8
	mov eax, 0
ret
