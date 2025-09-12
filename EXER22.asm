; Filename: EXER22.asm
; Name: Ethan Benedict M. Labajo
; Date: September 12, 2025
; Asks user to input 3 characters and display each in its own line.

.model small
.stack 100h

.data

    fprompt db 0Ah, "Enter first character: $"
    sprompt db 0Ah, "Enter second character: $"
    tprompt db 0Ah, "Enter third character: $"
    nl db 0Ah, '$'
    fout db 0Ah, "The first character is: $"
    sout db 0Ah, "The second character is: $"
    tout db 0Ah, "The third character is: $"

    fchar db ?
    schar db ?
    tchar db ?

.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset fprompt
    int 21h

    mov ah, 01h
    int 21h

    mov fchar, al
   mov ah, 09h
    mov dx, offset sprompt
    int 21h

    mov ah, 01h
    int 21h

    mov schar, al
    mov ah, 09h
    mov dx, offset tprompt
    int 21h

    mov ah, 01h
    int 21h

    mov tchar, al
    mov ah, 09h
    mov dx, offset fout
    int 21h

    mov ah, 02h
    mov dl, fchar
    int 21h

    mov ah, 09h
    mov dx, offset nl

    mov ah, 09h
    mov dx, offset sout
    int 21h

    mov ah, 02h
    mov dl, schar
    int 21h

    mov ah, 09h
    mov dx, offset nl

    mov ah, 09h
    mov dx, offset tout
    int 21h

    mov ah, 02h
    mov dl, tchar
    int 21h

    mov ah, 09h
    mov dx, offset nl

    int 27h
end main