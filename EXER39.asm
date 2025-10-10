; Filename: EXER39.asm
; Name: Ethan Benedict M. Labajo
; Date: October 10, 2025
; Check if number inputted is in range

.model small
.stack 100

.data
    nl db 0Ah, '$'
    
    oor db "Error: Number is out of range!$"
    prompt db "Enter a number from 1 to 8: $"
    numbers db "1 2 3 4 5$"

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

    cmp cl, 1
    jl out_of_range
    cmp cl, 5
    jg out_of_range

    jmp done

out_of_range:
    call pnl
    mov ah, 09h
    mov dx, offset oor
    int 21h

    call pnl
    jmp main_loop

done:
    call pnl
    mov ah, 09h
    mov dx, offset numbers
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