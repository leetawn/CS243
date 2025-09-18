.model small
.stack 100h
.data
    prompt db "Enter string: $"
    inpt   db 100, ?, 100 dup('$')  ; input buffer
    newline db 0Dh,0Ah,'$'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; --- Set 80x25 color text mode ---
    mov ax, 3        ; text mode 3
    int 10h

    ; --- Print prompt ---
    mov ah, 09h
    mov dx, offset prompt
    int 21h

    ; --- Input string ---
    mov ah, 0Ah
    mov dx, offset inpt
    int 21h

    ; --- Add '$' at end ---
    mov si, offset inpt + 2
    mov cl, [inpt+1]   ; string length
    add si, cx
    mov byte ptr [si], '$'

    ; --- Print newline ---
    mov ah, 09h
    mov dx, offset newline
    int 21h

    ; --- Print colored string at row 5, column 10 ---
    mov ax, 0B800h
    mov es, ax
    mov di, (1*80 + 0)*2  ; row*columns + col, *2 for byte pairs
    mov si, offset inpt + 2

print_loop:
    lodsb
    cmp al, '$'
    je done
    mov es:[di], al        ; character
    mov es:[di+1], 70h     ; attribute: bright yellow on blue
    add di, 2
    jmp print_loop

done:
    ; --- Wait for key ---
    mov ah, 0
    int 16h

    ; --- Exit ---
    mov ah, 4Ch
    int 21h
main endp
end main

