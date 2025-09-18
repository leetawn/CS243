.model small
.stack 100h

.data
    msg db "Hello!", '$'
    pixel db "                    $"
    nl db 0Ah, '$'
    prompt db "Enter something: $"
    ok db "YES!$"
    notok db "NO!$"
    charBuf db ?

    inpt db 100, ?, 100 dup('$')

.code
main:
    mov ax, @data
    mov ds, ax

    ; mov ah, 09h ; For strings

    ; mov dx, offset msg
    ; int 21h 

    ; ; DISPLAYING PIXELS ON SCREEN

    ; mov bl, 0F0h ; These are HEX Digits. The MSB is what determines blinking
    ;              ; We must add a 0 if we want to append hex digits after.
    ; mov cx, 20   ; How many characters we want to color
    ; int 10h

    
    ; mov dx, offset pixel
    ; int 21h
 
    ; mov bl, 00h ; These 3 lines clear the overflowing pixels every after newline. VERY IMPORTANT!!!
    ; mov cx, 100
    ; int 10h 

    ; mov dx, offset nl
    ; int 21h

    ; mov bl, 00h
    ; mov cx, 100
    ; int 10h

    ; mov bl, 01Ch
    ; mov cx, 1
    ; int 10h 

    ; mov ah, 02h
    ; mov dl, 'A'
    ; int 21h

    ; ; ; DISPLAYING PIXELS ON SCREEN

    ; mov ax, @data
    ; mov ds, ax

    ; mov ah, 09h 
    ; mov bl, 0FCh
    ; mov cx, 6 
    ; int 10h

    ; mov dx, offset msg ; STRINGS CAN HAVE 0AH AT THE END FOR AN AUTO NEWLINE
    ; int 21h

    ; mov dx, offset nl  ; OR WE CAN EXPLICITLY ADD ONE 
    ; int 21h 

    ; mov bl, 000h ; CLEAR OVERFLOWING PIXELS
    ; mov cx, 100 
    ; int 10h

    ; mov bl, 0FBh
    ; mov cx, 6
    ; int 10h

    ; mov dx, offset msg 
    ; int 21h

    ; DISPLAYING SINGLE CHARACTERS, SYMBOLS, AND NUMBERS AND COLORS BLINKING
    ; mov ah, 09h    
    ; mov bl, 09Ch
    ; mov cx, 1 
    ; int 10h

    ; mov ah, 02h
    ; mov dl, 'A' ; PRINTS LETTER "A"
    ; int 21h

    ; mov ah, 02h 
    ; mov dl, ' '
    ; int 21h 

    ; mov ah, 02h 
    ; mov dl, '!'
    ; int 21h 

    ; mov ah, 02h 
    ; mov dl, ' '
    ; int 21h 

    ; mov ah, 02h
    ; mov dl, '1'
    ; int 21h 



    ; DISPLAY TEXT

    call askString

compChar proc

    mov ah, 09h 
    mov dx, offset prompt
    int 21h 
    
    mov ah, 01h 
    int 21h
    mov charBuf, al 

    cmp al, 'A' ; Compare charBuf to any character desired
    je ISD ; Jump if equals
    jne ISND ; Jump if NOT equals, this is already implicitly called, so doing this is redundant
    ret
compChar endp

askString proc
    mov ah, 09h
    mov dx, offset prompt 
    int 21h

    mov ah, 0Ah ; Ask for string input
    mov dx, offset inpt; ; Put it in inpt buffer
    int 21h
    
    ; inpt+1 is the strings length, inpt+2 is the actual string
    ; we want to append a $ terminator at the end of the inputted string
    mov bl, [inpt+1]
    mov bh, 0 ; Clears BH to set BX = BL, makes BX usable in address calculations
    mov si, offset inpt+2 ; loads the address of the first character into SI
    add si, bx ; add the length to SI, now SI points after the last character of the input string
    ; Hello_ <-- this is where SI is pointing now
    mov byte ptr [si], '$' ; now just add a terminator

    call pnl
    ; This block of code sets the color of the inputted string
    mov ah, 09h
    mov bl, 04Eh 
    mov cx, 100 ; we set to 100 because length may vary
    int 10h

    lea dx, [inpt+2] ; we print the inputted string
    int 21h

    ; Due to the color being 100px long, we need to reset it to black
    mov bl, 000h
    mov cx, 100
    int 10h

    int 27h

askString endp

pnl proc 
    mov ah, 09h
    mov dx, offset nl
    int 21h
    ret
pnl endp

ISD:
    call pnl
    mov ah, 09h
    mov dx, offset ok
    int 21h 
    int 27h

ISND:
    mov ah, 09h 
    mov dx, offset notok
    int 21h

    int 27h

    int 27h

end main
