assume cs:codesg

codesg segment

start: mov ax, 0
       mov bx, 0
       jmp far ptr s   ; 假如debug中显示的汇编指令是 jmp 076A:010B，那么其储存数字为 EA0B016A07
       db 256 dup (0)
    s: add ax, 1
       inc ax

codesg ends
end start