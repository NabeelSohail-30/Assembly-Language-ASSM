[org 0x0100]

;using one dw cmd and assign multiple values
;a simple program to sum three values and assign it into memory

;start of code

    mov ax, [num1]
    mov [result], ax

    mov ax, [num1+2]
    add [result], ax

    mov ax, [num1+4]
    add [result], ax

    mov ax, 0x4c00      ;exit
    int 0x21            ;what should os do

num1: dw 5, 10, 20
result: dw 0

;end of code