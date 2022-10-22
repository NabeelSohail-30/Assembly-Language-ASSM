[org 0x0100]

;start of code

mov ax, 5       ;move 5 into ax
mov bx, 10      ;move 10 into bx

add ax, bx      ;add bx into ax

mov bx, 29      ;move 29 into bx
add ax, bx      ;add bx into ax

mov ax, 0x4c00  ;exit
int 0x21        ;what should os do

;end of code