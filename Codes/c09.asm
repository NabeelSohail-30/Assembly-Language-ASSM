; a program to add three numbers using loop
[org 0x0100]

    ;initialize stuff
    mov ax, 0       ;reset the accumlator
    mov bx, 0     ;set the counter

    outerloop:
        add ax, [num + bx]
        add bx, 2

        cmp bx, 20      ;sets zf=0 when equal
        jne outerloop   ;jump to outerloop
    
    mov [result], ax

    mov  ax, 0x4c00
    int  0x21

num: dw  10, 20, 30, 40, 50, 60, 70, 80, 90, 100
result: dw 0 
