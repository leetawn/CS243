; Filename: EXER42.asm
; Name: Ethan Benedict M. Labajo
; Date: October 10, 2025
; Add two numbers (1 or 2 digits)

.model small
.stack 100

.data
    nl db 0Ah, '$'
    first db "Enter first number: $"
    second db "Enter second number: $"
    output db "The sum is: $"

    input1 db 100, ?, 100 dup('$')
    input2 db 100, ?, 100 dup('$')

    num1 db ?
    num2 db ?
    sum db ?

.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset first
    int 21h

    mov ah, 0Ah
    mov dx, offset input1
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset second
    int 21h

    mov ah, 0Ah
    mov dx, offset input2
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset output
    int 21h

    ; FIRST INPUT - Check if 1 or 2 digits
    mov cl, [input1+1]      ; get actual length
    cmp cl, 1               ; is it 1 digit?
    je one_digit_1          ; if yes, handle 1 digit
    
    ; Handle 2 digits
    mov al, [input1+2]
    sub al, '0'
    mov bl, 10
    mul bl
    mov bl, [input1+3]
    sub bl, '0'
    add al, bl
    jmp store_num1

one_digit_1:
    mov al, [input1+2]      ; just get the single digit
    sub al, '0'

store_num1:
    mov num1, al

    ; SECOND INPUT - Check if 1 or 2 digits
    mov cl, [input2+1]      ; get actual length
    cmp cl, 1               ; is it 1 digit?
    je one_digit_2          ; if yes, handle 1 digit
    
    ; Handle 2 digits
    mov al, [input2+2]
    sub al, '0'
    mov bl, 10
    mul bl
    mov bl, [input2+3]
    sub bl, '0'
    add al, bl
    jmp store_num2

one_digit_2:
    mov al, [input2+2]      ; just get the single digit
    sub al, '0'

store_num2:
    mov num2, al

    ; Add the numbers
    mov al, num1
    add al, num2
    mov sum, al
    mov cx, 0

convert_loop:
    mov ah, 0
    mov bl, 10
    div bl
    push ax
    inc cx
    cmp al, 0
    jne convert_loop

print_loop:
    pop ax
    add ah, '0'
    mov dl, ah
    mov ah, 02h
    int 21h
    loop print_loop

    int 27h

pnl proc
    mov ah, 09h
    mov dx, offset nl
    int 21h
    ret
pnl endp

end main