assume cs:codesg
codesg segment

s: mov ax, bx
   mov si, offset s   ; s 的长度被送进了si
   mov di, offset s0  ; s0的长度被送进了di
   mov ax, cs:[si]
   mov cs:[di], ax

s0: nop
    nop
    mov ax, 4c00h
    int 21
codesg ends
end s