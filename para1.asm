; (a-b)^3
; (dx:ax) = (a-b) ^3

assume cs:code
code segment
start: 
    ;将参数压入栈
    mov ax, 1
    push ax
    mov ax, 3
    push ax 
    call difcube

    mov ax, 4c00h
    int 21h

 difcube:
    push bp
    mov bp, sp
    mov ax, [bp+4]
    sub ax, [bp+6]
    mov bp, ax
    mul bp
    mul bp
    pop bp
    ret 4 ; ret n == pop ip, add sp, n
     

code ends
end start