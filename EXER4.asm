; Filename: Exer4.asm
; Displaying ABOUT ME Information
; Name: Ethan  Beneidct Labajo
; Date: August 15, 2025
.model small
.stack 100

.code
start: 
    ; PRINT ABOUT ME BLOCK 
    mov cl, 'A'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'B'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'O'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'U'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'T'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'M'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'E'
    mov dl, cl
    mov ah, 02h
    int 21h

    ; PRINT ABOUT ME BLOCK 

    mov cl, 0Ah ; PRINT NEWLINE CHARACTER
    mov dl, cl
    mov ah, 02h
    int 21h

    ; PRINT ID NUMBER BLOCK

    mov cl, 'I'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'D'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl 
    mov ah, 02h
    int 21h

    mov cl, 'N'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'u'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'm'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'b'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'r'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ':'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '2'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '2'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '-'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '4'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, '8'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '4'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '0'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '-'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '8'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '3'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '9'
    mov dl, cl
    mov ah, 02h
    int 21h

    ; PRINT ID NUMBER BLOCK

    mov cl, 0Ah
    mov dl, cl
    mov ah, 02h
    int 21h

    ; PRINT FIRST NAME BLOCK

    mov cl, 'F'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'i'
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

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'N'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'a'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'm'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ':'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'E'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 't'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'h'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'a'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'n'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'B'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'n'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'd'
    mov dl, cl
    mov ah , 02h
    int 21h

    mov cl, 'i'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'c'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 't'
    mov dl, cl
    mov ah, 02h
    int 21h

    ; PRINT FIRST NAME BLOCK

    mov cl, 0Ah
    mov dl, cl
    mov ah, 02h
    int 21h

    ; PRINT MIDDLE NAME BLOCK

    mov cl, 'M'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'i'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'd'
    mov dl, cl;
    mov ah, 02h
    int 21h

    mov cl, 'd'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'l'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'N'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'a'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'm'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, ':'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'M'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'u'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'l'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    ; PRINT MIDDLE NAME BLOCK
    
    mov cl, 0Ah
    mov dl, cl
    mov ah, 02h
    int 21h

    ; PRINT LAST NAME BLOCK

    mov cl, 'L'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'a'
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
    
    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'N'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'a'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'm'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ':'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'L'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'a'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'b'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'a'
    mov dl, cl 
    mov ah, 02h
    int 21h

    mov cl, 'j'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'o'
    mov dl, cl
    mov ah, 02h
    int 21h

    ; PRINT LAST NAME BLOCK

    mov cl, 0Ah
    mov dl, cl
    mov ah, 02h
    int 21h

    ; PRINT COURSE AND YEAR BLOCK

    mov cl, 'C'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'o'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'u'
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

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'a'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'n'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'd'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'Y'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'a'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'r'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ':'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'B'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'a'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'c'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'h'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'l'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'o'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'r'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'o'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'f'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'S'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'c'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'i'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'n'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'c'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'i'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'n'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'C'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'o'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'm'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'p'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'u'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 't'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'r'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'S'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'c'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'i'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'n'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'c'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '2'
    mov dl, cl
    mov ah, 02h
    int 21h

    ; PRINT COURSE AND YEAR BLOCK

    mov cl, 0Ah
    mov dl, cl
    mov ah, 02h
    int 21h

    ; PRINT SCHOOL BLOCK

    mov cl, 'S'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'c'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'h'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'o'
    mov dl, cl
    mov ah, 02h 
    int 21h

    mov cl, 'o'
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov cl, 'l'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ':'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'C'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'b'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'u'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'I'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'n'
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
    mov cl, 'i'
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

    mov cl, 't'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'o'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'f'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'T'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'c'
    mov dl, cl
    mov ah, 02h
    int 21h


    mov cl, 'h'
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

    mov cl, 'l'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'o'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'g'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'y'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, '-'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, ' '
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'U'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'n'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'i'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'v'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'e'
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

    mov cl, 'i'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 't'
    mov dl, cl
    mov ah, 02h
    int 21h

    mov cl, 'y'
    mov dl, cl
    mov ah, 02h
    int 21h 

    ; PRINT SCHOOL BLOCK
    
    int 27h
end start