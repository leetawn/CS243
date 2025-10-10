; Filename: EXER44.asm
; Name: Ethan Benedict M. Labajo
; Date: October 10, 2025
; Greetings menu with 4 options

.model small
.stack 100

.data
    nl db 0Ah, '$'
    menu db "1. Good Morning", 0Ah, "2. Good Afternoon", 0Ah, "3. Good Evening", 0Ah, "4. Exit Program", 0Ah, "Enter choice: ", '$'
    credits db "Author: Ethan Benedict M. Labajo", 0Ah, "Assembler: Turbo Assembler (TASM)", 0Ah, "Target: DOSBox (8086 real mode)", '$'

    morning db "Good morning!$"
    afternoon db "Good afternoon!$"
    evening db "Good evening!$"
    invalid db "Invalid choice. Please try again.$"
    exit db "Thank you! Program will now exit.$"

.code
main:
    mov ax, @data
    mov ds, ax

main_loop:
    mov ah, 09h
    mov dx, offset menu
    int 21h

    mov ah, 01h
    int 21h

    cmp al, '1'
    je morning_fn
    cmp al, '2'
    je afternoon_fn
    cmp al, '3'
    je evening_fn
    cmp al, '4'
    je done

    jmp invalid_fn

invalid_fn:
    call pnl
    call pnl
    mov ah, 09h
    mov dx, offset invalid
    int 21h
    call pnl
    call pnl
    jmp main_loop

morning_fn:
    call pnl
    call pnl
    mov ah, 09h
    mov dx, offset morning
    int 21h
    call pnl
    call pnl
    jmp main_loop

afternoon_fn:
    call pnl
    call pnl
    mov ah, 09h
    mov dx, offset afternoon
    int 21h
    call pnl
    call pnl
    jmp main_loop

evening_fn:
    call pnl
    call pnl
    mov ah, 09h
    mov dx, offset evening
    int 21h
    call pnl
    call pnl
    jmp main_loop

done:
    call pnl
    call pnl
    mov ah, 09h
    mov dx, offset exit
    int 21h
    int 27h

pnl proc
    mov ah, 09h
    mov dx, offset nl
    int 21h
    ret
pnl endp


end main