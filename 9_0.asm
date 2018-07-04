assume cs:codesg
codesg segment
start: mov ax, offset start ;这里位于CS:IP+0，所以等于mov ax, 0
    s: mov ax, offset s     ;上一条指令占三个字节，所以这里是mov ax, 3
codesg ends
end start