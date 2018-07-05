assume cs:code, ds:data, ss:stack


data segment
    db 'Welcome to masm!' 
    db 16 dup (00000010B)
    db 'Welcome to masm!' 
    db 16 dup (00100100B)
    db 'Welcome to masm!' 
    db 16 dup (01110001B)
data ends

stack segment
    dw 0
stack ends


code segment
    start: mov ax, 0B800H           
           mov es, ax
        ;清屏
           mov bx, 0
           mov cx, 0fa0h
       s0: mov ax, 0
           mov es:[bx], ax
           inc bx 
           loop s0         

    ;        mov ax, stack
    ;        mov ss, ax
    ;        mov bx, 0
    ;        mov ax, data2
    ;        mov ds, ax
    ;        mov sp, 32H
    ;        mov cx, 48
    ;    s3: push ds:[bx]
    ;        inc bx
    ;        loop s3

           

           mov ax, stack
           mov ss, ax
           mov sp, 2
           mov cx, 3
           mov dx, 0
           mov bx, 0

        s1:push cx           
                mov ax, data
                mov ds, ax
                
                mov di, 720H
                add di, dx
               
                mov si, 721H
                add si, dx
              
                mov cx, 10h     
             s: mov ax, 0
                mov al, ds:[bx]            
                mov es:[di], al
                add di, 2

                mov ax, 0
                mov al, ds:[bx+10H]
                ;    pop al 
                mov es:[si], al
                add si, 2
                inc bp
                inc bx 
                loop s
           
           pop cx
           add dx, 0a0h
           add bx, 10h
           loop s1


           mov ax, 4c00h
           int 21
        

code ends
end start