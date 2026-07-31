code segment
assume cs:code

start:
    mov cx,7
    mov ah,02h
    mov dl,65

up:
    int 21h
    inc dl
    loop up

    mov cx,1
    mov ah,02h
    mov dl,32
    int 21h

    mov cx,7
    mov dl,57

up1:
    int 21h
    dec dl
    loop up1

    int 03h

code ends
end start