; Filename: EXER23.asm
; Name: Ethan Benedict M. Labajo
; Date: September 12, 2025
; Determine if inputted character is 'A' and display appropriate messages for each

.model small
.stack 100h

.data
    char db ?
    prompt db "Enter a character: $"
    typeda db 0Ah, "Yes, you have entered letter A.$"
    nottypeda db 0Ah, "No, you have not entered letter A. You entered character $"
    nl db 0Ah, '$'
    
.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset prompt
    int 21h

    mov ah, 01h
    int 21h

    mov char, al
    cmp al, 'A'
    je IsA
    jne NotA

IsA:
    mov ah, 09h
    mov dx, offset typeda
    int 21h

    int 27h

NotA:
    mov ah, 09h
    mov dx, offset nottypeda
    int 21h

    mov ah, 02h
    mov dl, char
    int 21h

    mov ah, 02h
    mov dl, '.' ; period at the end
    int 21h

    int 27h

end main