; Filename: Exer3.asm
; Displaying numbers from 1 - 10 with spaces in between
; Name: Ethan Benedict Labajo
; Date: August 15, 2025
.model small
.stack 100

.code
start:

    mov cl, '1' ; print character '1'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; print a whitespace
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '2'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '3'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '4'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '5'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, '6'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '7'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '8'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '9'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '1'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '0'
    mov dl, cl
    mov ah, 02h
    int 21h

    int 27h

end start