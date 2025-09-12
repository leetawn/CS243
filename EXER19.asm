; Filename: EXER19.asm
; Name: Ethan Benedict M. Labajo
; Date: September 12, 2025
; Get character input continuously get character input and display back input
; Enter key is pressed 

.model small
.stack 100h

.data
    char db ?
    TimePrompt db 0Ah, "Is it after 12 noon (Y/N)?: $"
    gmmsg db "Good Morning!$"
    gamsg db "Good Afternoon!$"
    exitMsg db 0Ah, "Exiting program... $"
    nl db 0Ah, '$'


.code
main:
    mov ax, @data
    mov ds, ax

ReadChar:

    mov ah, 09h
    mov dx, offset nl
    int 21h
    mov dx, offset TimePrompt
    int 21h

    
    mov ah, 01h ; READ
    int 21h

    cmp al, 'y'
    je IsAfternoon

    cmp al, 'Y'
    je IsAfternoon

    cmp al, 'N'
    je IsMorning

    cmp al, 'n'
    je IsMorning

    cmp al, 13
    je ExitProgram

    jmp readChar

IsAfternoon:
    mov ah, 09h
    mov dx, offset nl
    int 21h 

    mov dx, offset gamsg
    int 21h

    jmp ExitProgram

IsMorning:
    mov ah, 09h
    mov dx, offset nl
    int 21h 

    mov dx, offset gmmsg
    int 21h

    jmp ExitProgram

ExitProgram:
    mov ah, 09h
    mov dx, offset exitMsg
    int 21h 

    int 27h

end main