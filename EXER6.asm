; Filename: Exer6.asm
; Displaying Special Characters and Symbols
; Name: Ethan Benedict Labajo
; Date: August 22, 2025

.model small
.stack 100

.code
start:
    mov cl, '0' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '1'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, '2'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '3'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '4'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '5'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, '6'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, '7'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, '8'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, '9'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 0Ah
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '!' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '*'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, '#'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '$'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '%'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '^'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, '&'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, '*'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, '('
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, ')'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 0Ah
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '-' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '_'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, '+'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '='
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '{'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '}'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, '['
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, ']'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, '<'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, '?'
    mov dl, cl
    mov ah, 02h
    int 21h
end start