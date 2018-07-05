assume cs:code

code segment
start: mov ax, 100
       mov bx, 10000
       mul bx ; (ax) = 4240H, (dx) = 00FH  F4240H = 1000000

code ends
end start