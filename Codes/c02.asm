[org 0x0100]

;using labels and loading values from ram
;start of code

mov ax, [num1]      ;load num1 into ax
mov bx, [num2]      ;load num2 into bx

add ax, bx          ;add bx into ax (ax+=bx)

mov bx, [num3]      ;load num3 into bx
add ax, bx          ;add bx into ax

mov [num4], ax       ;load ax into num4

mov ax, 0x4c00      ;exit
int 0x21            ;what should os do

num1: dw 5
num2: dw 10
num3: dw 30
num4: dw 0

;end of code