; Filename: EXER41.asm
; Name: Ethan Benedict M. Labajo
; Date: October 10, 2025
; ATM Menu, selecting an operation prints its name

.model small
.stack 100

.data
    nl db 0Ah, '$'
    hdr db "CIT-U ATM$"
    choices db "a. Balance Inquiry", 0Ah, "b. Deposit", 0Ah, "c. Withdrawal", 0Ah, "d. Bills payment", 0Ah, "e. Exit", 0Ah, '$'

    prompt db "Enter choice: $"

    bi db "Balance Inquiry$"
    ddp db "Deposit$"
    wd db "Withdrawal$"
    bpy db "Bills Payment$"
    ty db "Exit. Thank you!$"

    input db ?

.code
main:
    mov ax, @data
    mov ds, ax

main_loop:
    mov ah, 09h
    mov dx, offset hdr
    int 21h

    call pnl
    call pnl

    mov dx, offset choices
    int 21h
    call pnl

    mov dx, offset prompt
    int 21h

    mov ah, 01h
    int 21h
    mov input, al

    cmp input, 'a'
    je balance
    cmp input, 'b'
    je deposit
    cmp input, 'c'
    je withdraw
    cmp input, 'd'
    je bills
    cmp input, 'e'
    je ext


balance:
    call pnl 
    call pnl 
    mov ah, 09h
    mov dx, offset bi
    int 21h
    call pnl 
    call pnl 
    jmp main_loop
deposit:
    call pnl 
    call pnl 
    mov ah, 09h
    mov dx, offset ddp
    int 21h
    call pnl 
    call pnl 
    jmp main_loop
withdraw:
    call pnl 
    call pnl 
    mov ah, 09h
    mov dx, offset wd
    int 21h
    call pnl 
    call pnl 
    jmp main_loop
bills:
    call pnl 
    call pnl 
    mov ah, 09h
    mov dx, offset bpy
    int 21h
    call pnl 
    call pnl 
    jmp main_loop
ext:
    call pnl 
    call pnl 
    mov ah, 09h
    mov dx, offset ty
    int 21h
    call pnl 
    call pnl 

    int 27h
pnl proc
    mov ah, 09h
    mov dx, offset nl
    int 21h

    ret
pnl endp


end main

