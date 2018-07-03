assume cs:codesg, ss:stacksg, ds:datasg

stacksg segment
  dw 0,0,0,0,0,0,0,0
stacksg ends

datasg segment
  db '1. display      '
  db '2. brows        '
  db '3. replace      '
  db '4. modify       '
datasg ends


codesg segment
start:
    mov ax, stacksg
    mov ss, ax
    mov sp, 8

    mov ax, datasg
    mov ds, ax
    mov si, 0    
    mov cx, 4 

s0: push cx
    mov bx, 0    
    mov cx, 4
    s1:    
        mov al, [bx+si+3]    
        and al, 11011111b
        mov [bx+si+3], al
        inc bx
        loop s1
    add si, 16
    pop cx   
    loop s0    


    mov ax, 4c00h
    int 21h    
codesg ends
end start
