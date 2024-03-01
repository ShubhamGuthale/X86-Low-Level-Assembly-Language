section .data
	msg1 db "enter first no.",10,0
	msg2 db "enter second no.",10,0
	msg3 db "%d",0
	msg4 db "%d",0
	;; a dd 40,10
	;; b dd 20,10
	msg db "%d is your multiplication",10,0
section .bss
        a resd 1
	b resd 1
	n resd 1
section .text
	global main
	extern printf,scanf
main:
	push msg1
	call printf
	add esp,4
	push a
	push msg3
	call scanf
	add esp,8
	push msg2
	call printf
	add esp,4
	push b
	push msg4
	call scanf
	add esp,8
	mov eax,dword[a]
	mov ebx,dword[b]
	mul ebx
	mov dword[n],eax
	push eax
	push msg
	call printf
	add esp,8
	ret
