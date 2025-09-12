; Filename: EXER24.asm
; Name: Ethan Benedict M. Labajo
; Date: September 12, 2025
; Asks for first name, middle name, and last name, and then greets the user with their full name.

.model small
.stack 100h

.data
    fnamep db 0Ah, "Enter First Name: $"
    mnamep db 0Ah, "Enter Middle Name: $"
    famnamep db 0Ah, "Enter Family Name: $"
    greetings db, 0Ah, "Hello, $"
    nl db 0Ah, '$'
    fname db 100        ; Max input length
          db ?          ; Actual input length (set by DOS)
          db 100 dup(?) ; The input string
    mname db 100        ; Max input length
          db ?          ; Actual input length (set by DOS)
          db 100 dup(?) ; The input string
    famname db 100        ; Max input length
          db ?          ; Actual input length (set by DOS)
          db 100 dup(?) ; The input string

.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset fnamep
    int 21h

    mov ah, 0Ah
    mov dx, offset fname   
    int 21h

    mov ah, 09h
    mov dx, offset mnamep
    int 21h

    mov ah, 0Ah
    mov dx, offset mname
    int 21h

    mov ah, 09h
    mov dx, offset famnamep
    int 21h

    mov ah, 0Ah
    mov dx, offset famname
    int 21h

    mov ah, 09h
    mov dx, offset nl
    int 21h

    mov dx, offset greetings
    int 21h

    mov si, offset fname + 2

    mov cl, fname[1]
    mov ch, 0 

print_first:
    mov dl, [si]   
    mov ah, 02h   
    int 21h

    inc si
    loop print_first

    mov ah, 02h
    mov dl, ' '
    int 21h


    mov si, offset mname + 2

    mov cl, mname[1]
    mov ch, 0 

print_second:
    mov dl, [si]   
    mov ah, 02h   
    int 21h

    inc si
    loop print_second

    mov ah, 02h
    mov dl, ' '
    int 21h


    mov si, offset famname + 2

    mov cl, famname[1]
    mov ch, 0 
    
print_third:
    mov dl, [si]   
    mov ah, 02h   
    int 21h

    inc si
    loop print_third

    mov ah, 02h
    mov dl, '!'
    int 21h

    int 27h
end main