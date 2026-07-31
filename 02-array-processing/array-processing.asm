data segment
array db 33h,22h,44h,11h,66h
data ends

code segment
assume ds:data,cs:code

start:
    mov ax,data
    mov ds,ax

    LEA si,array
    mov CX,0005h
    mov bl,00h

up:
    mov AL,[si]
    cmp al,bl
    JL next
    mov bl,al

next:
    inc si
    dec cx
    jnz up

    mov di,0600h
    mov [di],bl

    int 03h

code ends
end start