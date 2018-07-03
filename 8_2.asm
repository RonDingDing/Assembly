assume cs:code

code segment
start:
    mov ax, 1001
    mov bl, 100
    div bl    
    
    int 21h
code ends
end
