;; code for print Series : (1/i!)= (1/1) + (1/2) + (1/3) .... +(1/n) 

section .data
	 msg db " Addition of series is : %f",10,0
         value db "%d",0
         msg1 db"Series : (1/i!)= (1/1) + (1/2) + (1/3) .... +(1/n)",10,10
         db" Enter limit : "
	
section .bss
         result resq 1
         n resd 1
	 temp resd 1
	
section .text
         global main
         extern printf,scanf
main:
         push msg1
         call printf
         add esp,4
         push n
         push value
         call scanf
         add esp,8
         fldz
	 fstp qword[result]
lp:
	fld1
        fidiv dword[n]
        fld qword[result]
        fadd st0,st1
        fstp qword[result]
        fstp qword[temp]
        fstp
        dec dword[n]
        mov ecx,dword[n]
        cmp dword[n],0
        jnz lp
        sub esp,8
        fld qword[result]
        fstp qword[esp]
        push msg
        call printf
        add esp,12
        ret
