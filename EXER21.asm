; Filename: EXER21.asm
; Name: Ethan Benedict M. Labajo
; Date: September 12, 2025
; Get string input and output string in reverse order

.model small
.stack 100h

.data
    inputBuffer db 100        ; Max input length
                db ?          ; Actual input length (set by DOS)
                db 100 dup(?) ; The input string
    prompt db 0Ah, "Enter a string: $"
    nl db 0Ah, '$'
    outmsg db "You entered in reverse: $"

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

    ; Print string in reverse
    mov cl, inputBuffer[1]
    mov ch, 0
    mov si, offset inputBuffer + 2
    add si, cx         ; Move SI to the end of input
    dec si             ; Point to last character

PrintReverse:
    mov dl, [si]
    mov ah, 02h
    int 21h
    dec si
    loop PrintReverse

    int 27h
end main