	;; system call
section .rodata
	 msg db "pucsd",10,0
	 len equ $-msg
section .text
	global main
main:
	mov eax,4  ;system call number and #define NR_write 4
	mov ebx,1  ;#define stdout_file no
	mov ecx,msg ;second parameter
	mov edx,len  ;third parameter
	int 0x80 
        ret
