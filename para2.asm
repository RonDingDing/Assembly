assume cs:code
code segment
start: 
    mov bp, sp
    sub sp, 6
    mov word ptr [bp-6], 0001 ; int a
    mov word ptr [bp-4], 0002 ; int b
    mov word ptr [bp-2], 0000 ; int c

    push [bp-2]
    push [bp-4]
    push [bp-6]

    call ADDR
    
    add sp, 6
    inc word ptr [bp-2]

ADDR:
    push bp
    mov bp, sp
    mov ax, [bp+4]
    add ax, [bp+6]
    mov [bp+8], ax
    mov sp, bp
    pop bp
    ret
    

code ends
end start