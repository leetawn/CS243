; Filename: EXER15.asm
; Name: Ethan Benedict M. Labajo
; Date: September 12, 2025
; Display multiple string variables in a single line
.model small
.stack 100h

.data
    str1 db "This is line 1. ", '$'
    str2 db "This is line 2. ", '$'
    str3 db "This is line 3. ", '$'
    str4 db "This is line 4. ", '$'


.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h

    mov dx, offset str1
    int 21h 
    
    mov dx, offset str2
    int 21h
    
    mov dx, offset str3    
    int 21h

    mov dx, offset str4
    int 21h
    
    int 27h

end main