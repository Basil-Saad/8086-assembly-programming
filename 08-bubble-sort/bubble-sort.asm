data segment 
org 0200h 
array db 62H,38H,57H,98H,74H 
count equ 5h 
data ends 
code segment 
assume ds:data,cs:code 
start: MOV AX,DATA 
MOV DS,AX 
MOV DX,count-1 
BACK: MOV CX,DX 
LEA SI,array 
AGAIN: MOV AL,[SI] 
CMP AL,[SI+1] 
JL GO 
XCHG AL,[SI+1] 
XCHG AL,[SI] 
GO:INC SI 
LOOP AGAIN 
DEC DX 
JNZ BACK 
INT 03H 
code ends 
end start