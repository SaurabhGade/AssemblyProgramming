section .rodata		;Stand for read only data this section contain immutable data which will not update in runtime 
	msg db "Hello, world!",10,0 	; msg is string variable name db stand for data byte each word acquire 1 byte of space

section .text
	global main		; This line tell from where program execution will start
	extern printf		; Here we are using printf function from gcc library so any we use extern keyword.
main:				;program execution will start from here
	push msg		; Push msg in stack each push require 4 bytes
	call printf		; printf will print whatever is in stack on screen 
	add esp, 4		; to bring back stack pointer to it's intial position , we only use one push so add 4 in esp
	mov eax, 0		; function return value stores in eax as we know main function return 0 so when execution ends 0 stored in eax				      ; so we manually stored 0 in eax
ret
