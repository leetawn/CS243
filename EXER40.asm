; Filename: EXER40.asm
; Name: Ethan Benedict M. Labajo
; Date: October 10, 2025
; Ask for input until input is 0

.model small
.stack 100

.data
    nl db 0Ah, '$'
    
    prompt db "Enter a single digit number: $"
    ty db "Thank you.$"

    num db ?

.code
main:
    mov ax, @data
    mov ds, ax

main_loop:
    mov ah, 09h
    mov dx, offset prompt
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'
    mov num, al
    mov cl, al
    call pnl
    call pnl
    cmp cl, 0
    je done

    jmp main_loop

done:
    mov ah, 09h
    mov dx, offset ty
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