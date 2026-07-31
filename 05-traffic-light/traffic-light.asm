code segment
assume cs:code

start:
    mov al,82h
    mov dx,378h
    out dx,al

    mov al,08h
    mov dx,37Ah
    out dx,al
    call delay

    mov al,84h
    mov dx,378h
    out dx,al

    mov al,08h
    mov dx,37Ah
    out dx,al
    call delay

    mov al,28h
    mov dx,378h
    out dx,al

    mov al,08h
    mov dx,37Ah
    out dx,al
    call delay

    mov al,48h
    mov dx,378h
    out dx,al

    mov al,08h
    mov dx,37Ah
    out dx,al
    call delay

    mov al,88h
    mov dx,378h
    out dx,al

    mov al,02h
    mov dx,37Ah
    out dx,al
    call delay

    mov al,88h
    mov dx,378h
    out dx,al

    mov al,04h
    mov dx,37Ah
    out dx,al
    call delay

    jmp start

delay:
    push cx
    mov cx,01h

up1:
    push cx
    mov cx,0FFFFh

up2:
    nop
    loop up2

    pop cx
    loop up1

    pop cx
    ret

code ends
end start