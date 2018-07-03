assume cs:code
code segment

    mov ax, 0000
    mov ds, ax
    mov bx, 200h
    mov cx, 40h
s:  mov ds:[bx], ax
    inc ax
    inc bx   
    loop s
    mov ax, 4c00h
    int 21h


    

code ends
end
