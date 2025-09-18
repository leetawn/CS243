; Filename: EXER18.asm
; Name: Ethan Benedict M. Labajo
; Date: September 12, 2025
; Get character input continuously get character input and display back input
; Enter key is pressed 

.model small
.stack 100h

.data
    char db ?
    inputMsg db "Enter a character: $"
    outputMsg db "You entered: ", '$' 
    exitMsg db "Exiting program... $"
    nl db 0Ah, '$'


.code
main:
    mov ax, @data
    mov ds, ax

ReadChar:

    mov ah, 09h
    mov dx, offset nl
    int 21h
    mov dx, offset inputMsg
    int 21h

    
    mov ah, 01h ; READ
    int 21h

    cmp al, 13
    je ExitProgram

    mov char, al

    mov ah, 09h
    mov dx, offset nl
    int 21h
    mov dx, offset outputMsg
    int 21h    

    mov ah, 02h
    mov dl, char ; display the character input
    int 21h
    
    jmp readChar

ExitProgram:
    mov ah, 09h
    mov dx, offset exitMsg
    int 21h 

    int 27h

end main