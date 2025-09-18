; Filename: EXER20.asm
; Name: Ethan Benedict M. Labajo
; Date: September 12, 2025
; Get string input and output string

.model small
.stack 100h

.data
    inputBuffer db 100        ; Max input length
                db ?          ; Actual input length (set by DOS)
                db 100 dup(?) ; The input string
    prompt db 0Ah, "Enter a string: $"
    nl db 0Ah, '$'
    outmsg db "You entered: $"
    
.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset prompt
    int 21h

    mov ah, 0Ah          ; DOS function to read string input
    mov dx, offset inputBuffer
    int 21h

    mov ah, 09h
    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov dx, offset outmsg
    int 21h

    mov si, offset inputBuffer + 2 ; Point to the actual string
    mov cl, inputBuffer[1]
    mov ch, 0

PrintLoop:
    mov dl, [si]
    mov ah, 02h
    int 21h
    inc si
    loop PrintLoop

    int 27h

end main