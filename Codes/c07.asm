; a program to add three numbers using loop
[org 0x0100]

    ;initialize stuff
    mov ax, 0       ;reset the accumlator
    mov cx, 3       ;set the couter
    mov bx, num     ;set the base address

    outerloop:
        add ax, [bx]
        add bx, 2

        sub cx, 1   ;decrement in cx
        jnz outerloop   ;jump to outerloop if not zero (if flag not set to zero)
    
    mov [result], ax

    mov  ax, 0x4c00
    int  0x21

num: dw  5, 10, 15
result: dw 0 
