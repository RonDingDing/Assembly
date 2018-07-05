assume cs:code
code segment
start:  
    mov ax, 0
    call far ptr s ; 假如s在 076a:0008 那么栈中会是 08 00 6A 07 
    inc ax
s:  pop ax 
    add ax, ax 
    pop bx 
    add ax, bx     ; 算出的是 076a + 0008

code ends
end start