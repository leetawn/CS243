; Filename: handsonexam.asm
; Name: Ethan Benedict M. Labajo
; Date: September 19, 2025
; FISHBOOK Account Registration

.model small
.stack 100h

.data

    ; newline
    nl db 0Ah, '$'

    ; Header
    header db "FISHBOOK ACCOUNT REGISTRATION$"

    ; PROMPTS
    p1 db "Enter Full Name: $"
    p2 db "Enter Birthday: $"
    p3 db "Enter Gender: $"
    p4 db "Enter Email Address: $"
    p5 db "Enter Password: $"

    ; Review
    rv db "Please review account registration details below: $"

    ; Input Buffers
    inp1 db 100, ?, 100 dup('$')
    inp2 db 100, ?, 100 dup('$')
    inp3 db 100, ?, 100 dup('$')
    inp4 db 100, ?, 100 dup('$')
    inp5 db 100, ?, 100 dup('$')

    ; GUI
    br db ' ', 218, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196,196,196,196,196,196, 194, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 191, ' ', '$'
    brt db ' ', 195, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196,196,196,196,196,196, 197, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 180, ' ', '$'
    lst db ' ', 192, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196,196,196,196,196,196, 193, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 217, ' ', '$'
    gr1 db ' ', 179, " Full Name:          ", 179, '$'
    gr2 db ' ', 179, " Birthday:           ", 179, '$'
    gr3 db ' ', 179, " Gender:             ", 179, '$'
    gr4 db ' ', 179, " Email Address:      ", 179, '$'
    gr5 db ' ', 179, " Password:           ", 179, '$'
    egr1 db '                 ', 179, '$'
    sb db " SUBMIT $"
    cn db " CANCEL $"
    ed db " EDIT "



.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 06h      
    mov al, 0        
    mov bh, 07h      
    mov cx, 0           
    mov dx, 184fh        
    int 10h          

    mov ah, 02h      
    mov bh, 0       
    mov dh, 0      
    mov dl, 0      
    int 10h        

    mov ah, 09h
    mov dx, offset header
    int 21h

    call pnl
    call pnl

    mov ah, 09h 
    mov dx, offset p1
    int 21h

    ; Get input for name

    mov ah, 0Ah
    mov dx, offset inp1
    int 21h

    mov bl, [inp1+1]
    mov bh, 0 
    mov si, offset inp1+2
    add si, bx

    mov ax, 23
    sub ax, bx
    mov cx, ax
lp1: ; Loop to print spaces
    mov byte ptr [si], ' '
    inc si
    loop lp1

    mov byte ptr [si], 179
    inc si
    mov byte ptr [si], ' '
    inc si
    mov byte ptr [si], '$'

    call pnl
    mov ah, 09h 
    mov dx, offset p2
    int 21h

    mov ah, 0Ah
    mov dx, offset inp2
    int 21h

    mov bl, [inp2+1]
    mov bh, 0 
    mov si, offset inp2+2
    add si, bx

    mov ax, 23
    sub ax, bx
    mov cx, ax
lp2:
    mov byte ptr [si], ' '
    inc si
    loop lp2

    mov byte ptr [si], 179
    inc si
    mov byte ptr [si], ' '
    inc si
    mov byte ptr [si], '$'

    mov byte ptr [si], '$'
    call pnl

    mov ah, 09h 
    mov dx, offset p3
    int 21h

    mov ah, 0Ah
    mov dx, offset inp3
    int 21h

    mov bl, [inp3+1]
    mov bh, 0 
    mov si, offset inp3+2
    add si, bx

    mov ax, 23
    sub ax, bx
    mov cx, ax
lp3:
    mov byte ptr [si], ' '
    inc si
    loop lp3

    mov byte ptr [si], 179
    inc si
    mov byte ptr [si], ' '
    inc si
    mov byte ptr [si], '$'

    mov byte ptr [si], '$'
    call pnl

    mov ah, 09h 
    mov dx, offset p4
    int 21h

    mov ah, 0Ah
    mov dx, offset inp4
    int 21h

    mov bl, [inp4+1]
    mov bh, 0 
    mov si, offset inp4+2
    add si, bx

    mov ax, 23
    sub ax, bx
    mov cx, ax
lp4:
    mov byte ptr [si], ' '
    inc si
    loop lp4

    mov byte ptr [si], 179
    inc si
    mov byte ptr [si], ' '
    inc si
    mov byte ptr [si], '$'

    mov byte ptr [si], '$'
    call pnl

    mov ah, 09h 
    mov dx, offset p5
    int 21h

    mov ah, 0Ah
    mov dx, offset inp5
    int 21h

    mov bl, [inp5+1]
    mov bh, 0 
    mov si, offset inp5+2
    add si, bx

    mov ax, 23
    sub ax, bx
    mov cx, ax
lp5:
    mov byte ptr [si], ' '
    inc si
    loop lp5

    mov byte ptr [si], 179
    inc si
    mov byte ptr [si], ' '
    inc si
    mov byte ptr [si], '$'


    call pnl
    call pnl

    mov ah, 09h
    mov dx, offset rv
    int 21h

    call pnl
    mov ah, 09h
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov dx, offset br
    int 21h
    
    call pclr
    call pnl 
    call pclr

    mov ah, 09h
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov dx, offset gr1
    int 21h

    call pclr
    
    ; Print first colored input
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov ah, 02h
    mov dl, ' '
    int 21h

    mov ah, 09h

    lea dx, [inp1+2]
    int 21h

    call pclr
    call pnl
    call pclr

    mov ah, 09h
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov dx, offset brt
    int 21h

    call pclr
    call pnl
    call pclr

    mov ah, 09h
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov dx, offset gr2
    int 21h

    call pclr
    
    ; Print second colored input
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov ah, 02h
    mov dl, ' '
    int 21h

    mov ah, 09h
    lea dx, [inp2+2]
    int 21h

    call pclr
    call pnl
    call pclr

    mov ah, 09h
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov dx, offset brt
    int 21h


    call pclr
    call pnl
    call pclr

    mov ah, 09h
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov dx, offset gr3
    int 21h

    call pclr
    
    ; Print third colored input
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov ah, 02h
    mov dl, ' '
    int 21h


    mov ah, 09h
    lea dx, [inp3+2]
    int 21h

    call pclr
    call pnl
    call pclr

    mov ah, 09h
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov dx, offset brt
    int 21h

    call pclr
    call pnl
    call pclr

    mov ah, 09h
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov dx, offset gr4
    int 21h

    call pclr
    
    ; Print fourth colored input
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov ah, 02h
    mov dl, ' '
    int 21h

    mov ah, 09h
    lea dx, [inp4+2]
    int 21h
    call pclr
    call pnl
    call pclr

    mov ah, 09h
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov dx, offset brt
    int 21h

    call pclr
    call pnl
    call pclr

    mov ah, 09h
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov dx, offset gr5
    int 21h

    call pclr
    
    ; Print fifth colored input
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov ah, 02h
    mov dl, ' '
    int 21h

    mov ah, 09h
    lea dx, [inp5+2]
    int 21h
    call pclr
    call pnl
    call pclr

    mov ah, 09h
    mov bl, 01Fh
    mov cx, 100
    int 10h

    mov dx, offset lst
    int 21h

    call pclr
    call pnl
    call pclr

    call pnl
    
    mov ah, 09h
    mov bl, 04Fh
    mov cx, 8
    int 10h
    
    mov dx, offset sb
    int 21h

    mov ah, 02h
    mov dl, ' '
    int 21h

    mov ah, 02h
    mov dl, ' '
    int 21h

    mov ah, 09h
    mov bl, 04Fh
    mov cx, 8
    int 10h
    
    mov dx, offset cn
    int 21h

    mov ah, 02h
    mov dl, ' '
    int 21h

    mov ah, 02h
    mov dl, ' '
    int 21h

    mov ah, 09h
    mov bl, 04Fh
    mov cx, 6
    int 10h
    
    mov dx, offset ed
    int 21h

    int 27h
pnl proc
    mov ah, 09h
    mov dx, offset nl
    int 21h
    ret
pnl endp
pclr proc
    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h
    ret
pclr endp


end main