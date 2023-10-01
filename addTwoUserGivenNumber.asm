section .data
	getNum1 db "Enter the first number",10,0
	getNum2 db "Enter the second number",10,0
	output db "Sum is %d",10,0
	format db "%d"
section .bss
	num1 resd 1
	num2 resd 1
section .text
	global main
	extern printf
	extern scanf
main:
	mov ebx, 0
	push getNum1
	call printf
	add esp, 4

	push num1
	push format
	call scanf
	add esp, 8

	push getNum2
	call printf
	add esp, 4

	push num2
	push format
	call scanf
	add esp, 8
		mov ebx, dword[num1]
		add ebx, dword[num2]
	push ebx
	push output
	call printf
	add esp, 8
mov eax, 0
ret



