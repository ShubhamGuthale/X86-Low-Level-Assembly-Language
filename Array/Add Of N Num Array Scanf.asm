section .data
	msg1 db "enter n",10,0
	msg3 d "enter arrar :",10,0
	msg2 dd "%d",10,0
	;; arr dd 10,20,30,40,-1	
        msg db "your addition is : %d",10,0
section .bss
        n resd 1
	arr resd 50
        sum resd 50
section .text
	global main
	extern printf,scanf
main:
	push msg1
	call printf
	add esp,4
	push msg2
	call scanf
	add esp,4
	push msg3
	call printf
	add esp,4
	push msg2
	call scanf
	add esp,4
	
	mov eax,arr
	xor edx,edx
resum:
	cmp dword[eax],n
	jz end
	add edx,dword[eax]	
	add eax,4
	jmp resum
end:
        push edx
	push msg
	call printf
	add esp,8
	ret
