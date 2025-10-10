; Filename: EXER43.asm
; Name: Ethan Benedict M. Labajo
; Date: October 10, 2025
; Printing 5 digit number

.model small
.stack 100

.data
    nl db 0Ah, '$'
    prompt db "Enter a 5-digit number: $"
    output db "You entered: $"
    num db 5 dup(?)
.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset prompt
    int 21h

    mov si, 0
input_loop:
    mov ah, 01h
    int 21h

    cmp al, 0Dh
    je print_input

    mov num[si], al
    inc si
    cmp si, 5
    jl input_loop

    call pnl
    mov ah, 09h
    mov dx, offset output
    int 21h
    mov cx, 5
    mov si, 0
print_input:
    mov dl, num[si]
    mov ah, 02h
    int 21h

    inc si
    loop print_input

    int 27h
pnl proc
    mov ah, 09h
    mov dx, offset nl
    int 21h
    ret
pnl endp

    int 27h
end main