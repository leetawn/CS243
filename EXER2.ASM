; Filename: Exer2.asm
; Displaying the letters of the Alphabet all in uppercase
; Name: Ethan Benedict Labajo
; Date: August 15, 2025
.model small
.stack 100h

.code 
start:
    
    mov cl, 'A' ; print character 'A'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'B'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'C'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'D'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'E'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'F'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'G'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'H'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'I'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'J'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'K'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'L'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'M'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'N'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'O'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'P'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'Q'
    mov dl, cl 
    mov ah, 02h
    int 21h
    
    mov cl, 'R'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'S'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'T'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'U'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'V'
    mov dl, cl; 
    mov ah, 02h
    int 21h
    
    mov cl, 'W'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'X'
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, 'Y'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'Z'
    mov dl, cl
    mov ah, 02h
    int 21h

    int 27h
end start