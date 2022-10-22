[org 0x0100]

;a program to add 3 numbers using byte variable

;start of code

    mov ah, [num] 
    mov [result], ah

    mov ah, [num+1]
    add [result], ah

    mov ah, [num+2]
    add [result], ah

    mov ax, 0x4c00      ;exit
    int 0x21            ;what should os do

num: db 5, 10, 20
result: db 0

;end of code