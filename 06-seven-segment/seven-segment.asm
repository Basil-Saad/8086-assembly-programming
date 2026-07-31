data segment
array db 3FH,06H,5BH,4FH,66H,6DH,7DH,07H,7FH,6FH
data ends

code segment
assume cs:code, ds:data

start:
    mov ax,data
    mov ds,ax

    mov cx,10
    mov si,offset array

again:
    mov al,[si]
    mov dx,378h
    out dx,al
    call delay
    inc si
    loop again

    jmp start

delay:
    push cx
    mov cx,0fh

up1:
    push cx
    mov cx,0ffffh

up2:
    nop
    loop up2

    pop cx
    loop up1

    pop cx
    ret

code ends
end start