assume cs:code
code segment
    
    mov bx, 0
    mov cx, 0ch

s:  mov ax, 0ffffh
    mov ds, ax
    mov dl, ds:[bx]

    mov ax, 0020h
    mov ds, ax
    mov ds:[bx], dl

    inc bx
    loop s

    mov ax, 4c00h
    int 21h
code ends
end
