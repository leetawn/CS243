.model small  
.stack 100h 

.data 
    prompt db "Enter your string: $"
    prompt2 db "Enter your second string: $"
    nl db 0Ah, '$'
    px db " "

    inpt db 100, ?, 100 dup('$')
    inpt2 db 100, ?, 100 dup('$')

.code 
main: 
    mov ax, @data 
    mov ds, ax 

    mov ah, 09h 
    mov dx, offset prompt
    int 21h

    mov ah, 0Ah;
    mov dx, offset inpt
    int 21h

    mov bl, [inpt+1]        ; length of input
    mov bh, 0
    mov si, offset inpt+2   ; first character
    add si, bx              ; point to end of string
    mov byte ptr [si], '$'  ; add $ terminator

    call pnl

    mov ah, 09h
    mov dx, offset prompt2
    int 21h

    mov ah, 0Ah 
    mov dx, offset inpt2 
    int 21h
    
    mov bl, [inpt2+1]        ; length of input
    mov bh, 0
    mov si, offset inpt2+2   ; first character
    add si, bx              ; point to end of string
    mov byte ptr [si], '$'  ; add $ terminator

    call pnl

    mov ah, 09h

    mov bl, 04Eh
    mov cx, 100
    int 10h

    mov ah, 09h
    lea dx, [inpt+2]
    int 21h 

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov ah, 02h
    mov dl, ' '
    int 21h

    mov ah, 09h

    mov bl, 01Fh
    mov cx, 100
    int 10h 

    lea dx, [inpt2+2]
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h 


    int 27h
pnl proc 
    mov ah, 09h
    mov dx, offset nl
    int 21h
    ret
pnl endp

end main 
