assume cs:codesg
codesg segment
start:
    mov ax, 2000H
    mov ds, ax
    mov bx, 1000H
    mov si, 0
    mov ax, [bx+si]
    inc si
    mov cx, [bx+si]
    inc si
    mov di, si
    add cx, [bx+di]

codesg ends
end start
