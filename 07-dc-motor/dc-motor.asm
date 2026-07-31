code segment 
assume cs: code 
start:  
mov dx,378H 
in al,dx 
test al,01H 
jnz down 
mov al,03H 
mov dx,378H 
out dx,al 
jmp start 
down:mov al,05H 
mov dx,378H 
out dx,al 
jmp start 
code ends