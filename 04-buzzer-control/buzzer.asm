code segment
assume cs:code

start:
    mov al,01h
    mov dx,378h
    out dx,al
    call delay

back:
    mov al,00h
    mov dx,378h
    out dx,al
    jmp back

delay:
    push cx
    mov cx,0fh

UP1:
    push cx
    mov cx,0ffffh

UP2:
    nop
    loop UP2

    pop cx
    loop UP1

    pop cx
    ret

code ends
end start