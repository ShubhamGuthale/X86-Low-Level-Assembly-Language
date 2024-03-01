	;; division
section .data
        msg1 db "Enter first no.:",10,0
	msg2 dd "%d",10
	msg3 db "Enter second no.:",10,0
	msg4 dd "%d",10
	msg db "Your Division Is : %d",10,0
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
	push msg2
	call scanf
	add esp,8
	push msg3
	call printf
	add esp,4
	push b
	push msg4
	call scanf
	add esp,8
	mov eax,dword[a]
	mov ebx,dword[b]
        xor edx,edx
        div ebx
	mov dword[n],eax
	push eax
	push msg
	call printf
	add esp,8
	ret
