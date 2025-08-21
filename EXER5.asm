; Filename: Exer5.asm
; Displaying single characters, numbers, and symbols
; Name: Ethan Benedict Labajo
; Date: August 22, 2025
.model small

.stack 100
.code
start:

    ; PRINTING LOWERCASE ALPHABET
    mov cl, 'a' ; print character 'A'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'b'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'c'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'd'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'f'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'g'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'h'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'i'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'j'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'k'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'l'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'm'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'n'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'o'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'p'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'q'
    mov dl, cl 
    mov ah, 02h
    int 21h
    
    mov cl, 'r'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 's'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 't'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'u'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'v'
    mov dl, cl; 
    mov ah, 02h
    int 21h
    
    mov cl, 'w'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'x'
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, 'y'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'z'
    mov dl, cl
    mov ah, 02h
    int 21h

    ; PRINTING LOWERCASE ALPHABET

    ; PRINT NEW LINE
    mov cl, 0Ah
    mov dl, cl
    mov ah, 02h
    int 21h
    ; PRINT NEW LINE

    ; PRINT UPPERCASE ALPHABET WITH SPACES
    mov cl, 'A' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'B'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, 'C'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'D'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'E'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'F'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, 'G'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, 'H'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

  
    mov cl, 'I'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

 
    mov cl, 'J'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, 'K'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, 'L'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, 'M'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, 'N'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, 'O'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, 'P'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

  
    mov cl, 'Q'
    mov dl, cl 
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

 
    mov cl, 'R'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, 'S'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, 'T'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, 'U'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, 'V'
    mov dl, cl; 
    mov ah, 02h
    int 21h
    
    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

   
    mov cl, 'W'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h

  
    mov cl, 'X'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h



    mov cl, 'Y'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' ' ; 
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, 'Z'
    mov dl, cl
    mov ah, 02h
    int 21h
    ; PRINT UPPERCASE ALPHABET WITH SPACES


    int 27h
end start

