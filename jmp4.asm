assume cs:code
code segment 
begin: ;jmp short s
       jmp s 
       jmp near ptr s 
       jmp far ptr s 
       db 100 dup (0b8h, 0, 0)
    s: mov ax, 0
code ends 
end begin