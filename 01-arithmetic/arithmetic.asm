data segment
n1 db 89h
n2 db 79h
data ends

code segment
assume ds:data, cs:code

start:
    mov ax, data
    mov ds, ax

    mov di, 0800h
    mov AL, n1
    add AL, n2
    mov [di], AL
    mov AL, 00h
    adc AL, 00h
    inc di
    mov [di], AL

    mov di, 0802h
    mov AL, n1
    sub AL, n2
    mov [di], AL
    mov AL, 00h
    sbb AL, 00h
    inc di
    mov [di], AL

    int 03h

code ends
end start