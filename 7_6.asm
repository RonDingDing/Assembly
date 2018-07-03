assume cs:codesg
codesg segment
start:
    mov ax, 2000H
    mov ds, ax
    mov bx, 1000H
    mov si, 0
    mov ax, [bx+2+si]
    inc si
    mov cx, [bx+2+si]
    inc si
    mov di, si
    add bx, [bx+2+di]


    

codesg ends
end start
