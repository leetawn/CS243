; Filename: EXER31.asm
; Name: Ethan Benedict M. Labajo
; Date: October 6, 2025
; Displaying Product of Two Numbers

.model small
.stack 100h

.data
    nl db 0Ah, '$'
    
    p1 db "Enter first number: $"
    p2 db "Enter second number: $"

    output db "The product is: $"

.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset p1
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'
    mov bl, al

    call pnl

    mov ah, 09h
    mov dx, offset p2
    int 21h

    mov ah, 01h
    int 21h 
    sub al, '0'
    
    mov cl, bl          ; Move first number to CL
    mul cl              ; Multiply AL by CL, result in AX

    mov bx, ax          ; Save the full product in BX

    call pnl

    mov ah, 09h
    mov dx, offset output
    int 21h

    mov ax, bx          ; Restore product to AX

    cmp ax, 10
    jl od

td:
    mov cl, 10
    div cl

    ; al = quotient (tens), ah = remainder (ones)
    mov dl, al          ; Save quotient
    add dl, '0'         ; Convert to ASCII
    mov dh, ah          ; Save remainder
    
    mov ah, 02h         ; Print tens digit
    int 21h

    mov dl, dh          ; Get remainder
    add dl, '0'         ; Convert to ASCII
    mov ah, 02h         ; Print ones digit
    int 21h

    jmp done

od:
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

done:
    int 27h

pnl proc
    mov ah, 09h
    mov dx, offset nl
    int 21h
    ret
pnl endp

end mainain