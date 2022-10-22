[org 0x0100]

;using single label with multiple values
;we can perform arithmatic same as pointers
;start of code

mov ax, [num1]      
mov bx, [num1+2]      

add ax, bx        

mov bx, [num1+4]      
add ax, bx          

mov [num1+6], ax       

mov ax, 0x4c00      ;exit
int 0x21            ;what should os do

num1: 
    dw 5
    dw 10
    dw 30
    dw 0

;end of code