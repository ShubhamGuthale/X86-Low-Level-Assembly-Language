section .data
        a dd 20
	b dd 30
	msg db "%d is your sum",10,0

section .bss
        sum resd 1
	
section .text
        global main
	extern printf

main:
	mov eax,dword[a]
	add eax,dword[b]
	mov dword[sum],eax
	push dword[sum]
	push msg
	call printf
	add esp,8
	ret
	
