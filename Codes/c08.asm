; a program to add three numbers using loop
[org 0x0100]

    ;initialize stuff
    mov ax, 0       ;reset the accumlator
    mov cx, 10       ;set the counter
    mov bx, 0     ;set the base address

    outerloop:
        add ax, [num + bx]
        add bx, 2

        sub cx, 1   ;decrement in cx
        jnz outerloop   ;jump to outerloop if not zero (if flag not set to zero)
    
    mov [result], ax

    mov  ax, 0x4c00
    int  0x21

num: dw  10, 20, 30, 40, 50, 60, 70, 80, 90, 100
result: dw 0 
