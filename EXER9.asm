; Filename: Exer9.asm
; Displaying blinking characters
; Name: Ethan Benedict Labajo
; Date: August 22, 2025

.model small
.stack 100h

.code
start:

    mov ah, 09h
    mov bl, 0Eh
    mov cx, 1
    int 10h

    mov ah, 2
    mov dl, 'I'
    int 21h

    mov ah, 2
    mov dl, ' '
    int 21h

    mov ah, 09h
    mov bl, 84h
    mov cx, 1
    int 10h

    mov ah, 2
    mov dl, 03h
    int 21h

    mov ah, 2
    mov dl, ' '
    int 21h
   
    mov ah, 09h
    mov bl, 0Eh
    mov cx, 1
    int 10h

    mov ah, 2
    mov dl, 'U'
    int 21h




    int 27h
end start