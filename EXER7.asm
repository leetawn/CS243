; Filename: Exer7.asm
; Displaying text with background and foreground colors
; Name: Ethan Benedict Labajo
; Date: August 22, 2025
.model small
.stack 100h

.data
    line1 db 'College', 0Ah, '$'
    line2 db 'of', 0Ah, '$'
    line3 db 'Computer', 0Ah, '$'
    line4 db 'Studies', 0Ah, '$'

.code
start:
    mov ax, @data
    mov ds, ax
    
    mov ah, 09h

    mov bl, 3Eh
    mov cx, 7d
    int 10h

    mov dx, offset line1
    int 21h

    mov bl, 00h
    mov cx, 100d
    int 10h

    mov bl, 1Bh
    mov cx, 2d
    int 10h

    mov dx, offset line2
    int 21h

    mov bl, 00h
    mov cx, 100d
    int 10h

    mov bl, 2Ah
    mov cx, 8d
    int 10h

    mov dx, offset line3
    int 21h

    mov bl, 00h
    mov cx, 100d
    int 10h
    
    mov bl, 4Ch
    mov cx, 7d
    int 10h

    mov dx, offset line4
    int 21h

    mov bl, 00h
    mov cx, 100d
    int 10h

    int 27h
end start
