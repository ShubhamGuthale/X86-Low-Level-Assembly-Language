	;;code for:= (1/1)-(1/2)+(1/3)-(1/4).....+(1/(2n-1))-(1/2n)
	
section .data
	msg db "Result is %f",10,0
        value db "%d",0
	msg1 db "Enter value Of N for Print Series =(1/1)-(1/2)+(1/3)-(1/4)...+(1/(2n-1))-(1/2n)",10,10
	
section .bss
	result resq 1
	n resd 1
	temp resd 1
	two resd 1
	
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
        mov ecx,1

lp:
	cmp dword[n],ecx
        jl lp2
        mov dword[two],ecx
        fld1
        fidiv dword[two]
        fld qword[result]
        fadd st0,st1
        fstp qword[result]
        fstp qword[temp]
        add ecx,1
        cmp dword[n],ecx
        jl lp2
        mov dword[two],ecx
        fld1
        fidiv dword[two]
        fld qword[result]
        fsub st0,st1
        fstp qword[result]
        fstp qword[temp]
        fstp
        add ecx,1
        jmp lp

lp2:
	sub esp,8
        fld qword[result]
        fstp qword[esp]
        push msg
        call printf
        add esp,12
        ret

	
	
	
