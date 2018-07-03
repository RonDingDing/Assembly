assume cs:code

code segment

start:
    mov dx, 1
    mov ax, 86a1H
    mov bx, 100
    div bx

    int 21h
code ends
end start
