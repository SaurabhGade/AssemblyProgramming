section .bss
	a resd 1
section .data
	format db "%d",0
	inputMsg db "Enter the number",10,0
	outputMsg db "You have entered %d ",10,0
section .text
	global main
	extern printf,scanf
main:
	push inputMsg
	call printf
	add esp, 4
	
	push a
	push format
	call scanf
	add esp, 8

	
	push dword[a] 
	push outputMsg
	call printf
	add esp, 8
	mov eax, 0
ret
