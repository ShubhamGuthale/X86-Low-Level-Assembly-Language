section .data
	msg db "%d hello welcome",10,0
section .bss
	n resd 1
section .text
        global main
	extern printf
main:	push msg
	call printf
	add esp,4
	ret
