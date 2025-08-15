; Filename: Exer1.asm
; Displaying single characters, numbers, and symbols
; Name: Ethan Benedict Labajo
; Date: August 15, 2025

.model small ; DIRECTIVE TO USE "SMALL" MEMORY MODEL
.stack 100h ; define the size of the program's stack

.code ; section of the program containing executable code 
start:

    ; A
    mov ah, 02h ; Set AH to display a character
    mov cl, 41h ; 41h is capital A 
    mov dl, cl ; copies 8-bit value in cl to dl
    int 21h ; interrupt for input/output
    
    ; B
    mov ah, 02h 
    mov cl, 42h
    mov dl, cl
    int 21h
    
    int 27h ; terminate
end start ; end program