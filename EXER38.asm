; Filename: EXER38.asm
; Name: Ethan Benedict M. Labajo
; Date: October 10, 2025
; Printing numbers 1-20 in one line

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
    cmp cl, 19
    jg ptd
    cmp cl, 10
    jl pzd
    jge pod


pzd:
    mov bl, cl
    add bl, '0'
    mov ah, 02h
    mov dl, bl
    int 21h
    call pnl
    jmp nxt

pod:
    mov bl, cl
    mov ah, 02h
    mov dl, '1'
    int 21h
    sub bl, 10
    add bl, '0'
    mov dl, bl
    int 21h
    call pnl
    jmp nxt

ptd:
    mov bl, cl
    mov ah, 02h
    mov dl, '2'
    int 21h
    sub bl, 20
    add bl, '0'
    mov dl, bl
    int 21h
    jmp nxt

nxt: 
    inc cl
    cmp cl, 21
    jl num_loop

done:
    int 27h
pnl proc
    mov ah, 02h
    mov dl, ' '
    int 21h
    ret
pnl endp

end main