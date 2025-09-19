; Filename: EXER26.asm
; Name: Ethan Benedict M. Labajo
; Date: September 13, 2025
; ATM Main Menu Screen

.model small
.stack 100h

.data
    nl db 0Ah, '$'

    header1 db "Cebu Institute of Technology - University", 0Ah,'$'
    header2 db "Automated Teller Machine", 0Ah, '$'

    ttl db "Main Menu", 0Ah, '$'
    one db "1 Balance Inquiry", 0Ah, '$'
    two db "2 Withdrawal", 0Ah, '$'
    three db "3 Deposit", 0Ah, '$'
    four db "4 Transfer", 0Ah, '$'
    five db "5 Bills Payment", 0Ah, '$'
    six db "6 Change Pin", 0Ah, '$'
    seven db "7 Exit", 0Ah, '$'

    inputBuf db 100, ?, 100 dup('$')
    choice db "Enter number of your choice: $"

    chosen db "You have chosen $";

    egreet db "Thank you for banking with us!", 0Ah, "Copyright 2025", 0Ah, "Progammer: Ethan Benedict M. Labajo", '$'

.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h

    mov dx, offset header1
    int 21h

    mov dx, offset header2
    int 21h

    call pnl

    mov ah, 09h
    mov dx, offset ttl
    int 21h

    mov ah, 09h

    mov dx, offset one
    int 21h

    mov dx, offset two
    int 21h
    mov dx, offset three
    int 21h
    mov dx, offset four
    int 21h
    mov dx, offset five
    int 21h
    mov dx, offset six
    int 21h
    mov dx, offset seven
    int 21h
    
    mov dx, offset choice
    int 21h

    mov ah, 0Ah
    mov dx, offset inputBuf
    int 21h

    call pnl

    cmp inputBuf+2, '1'
    je blnc

    cmp inputBuf+2, '2'
    je wd

    cmp inputBuf+2, '3'
    je depo

    cmp inputBuf+2, '4'
    je tfr

    cmp inputBuf+2, '5'
    je blpy

    cmp inputBuf+2, '6'
    je chpin

    cmp inputBuf+2, '7'
    jmp near ptr endend

    jmp main


blnc:
    call pnl
    mov dx, offset chosen 
    int 21h 

    mov ah, 09h
    mov dx, offset one 
    int 21h

    call pnl

    jmp end_prog
wd:
    call pnl
    mov dx, offset chosen 
    int 21h 

    mov ah, 09h
    mov dx, offset two
    int 21h

    call pnl

    jmp end_prog

depo:
    call pnl
    mov dx, offset chosen 
    int 21h 

    mov ah, 09h
    mov dx, offset three
    int 21h

    call pnl

    jmp end_prog

tfr:
    call pnl
    mov dx, offset chosen 
    int 21h 

    mov ah, 09h
    mov dx, offset four
    int 21h

    call pnl

    jmp end_prog

blpy:
    call pnl
    mov dx, offset chosen 
    int 21h 

    mov ah, 09h
    mov dx, offset five
    int 21h

    call pnl

    jmp end_prog

chpin:
    call pnl
    mov dx, offset chosen 
    int 21h 

    mov ah, 09h
    mov dx, offset six
    int 21h

    call pnl

    jmp end_prog

endend:
    call pnl
    mov dx, offset chosen 
    int 21h

    mov ah, 09h
    mov dx, offset seven
    int 21h

    call pnl

    jmp end_prog

end_prog:

    mov ah, 09h
    mov dx, offset egreet
    int 21h 
    mov ah, 4Ch
    int 21h
pnl proc 
    mov ah, 09h
    mov dx, offset nl
    int 21h
    ret

pnl endp

end main