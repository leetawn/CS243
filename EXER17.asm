; Filename: EXER17.asm
; Name: Ethan Benedict M. Labajo
; Date: September 12, 2025
; Get character input and display back character input

.model small
.stack 100h

.data
    inputChar db ?
    inputMsg db "Enter a character: $"
    outputMsg db 0Ah, "You entered: $"
.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset inputMsg
    int 21h

    mov ah, 01h
    int 21h

    mov inputChar, al
    
    mov ah, 09h
    mov dx, offset outputMsg
    int 21h

    mov ah, 02h
    mov dl, inputChar
    int 21h

    int 27h
end main