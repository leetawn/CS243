; Filename: EXER37.asm
; Name: Ethan Benedict M. Labajo
; Date: October 10, 2025
; Printing numbers 1-10 in a new line

.model small
.stack 100

.data
    nl db 0Ah, '$'
    tn db "10$"

.code
main:
    mov ax, @data
    mov ds, ax

    mov cl, 1
num_loop:
    mov bl, cl
    add bl, '0'
    mov ah, 02h
    mov dl, bl
    int 21h

    call pnl

    inc cl
    cmp cl, 10

    jl num_loop

done:
    mov ah, 09h
    mov dx, offset tn 
    int 21h
    call pnl
    int 27h
pnl proc
    mov ah, 09h
    mov dx, offset nl
    int 21h
    ret
pnl endp

end main