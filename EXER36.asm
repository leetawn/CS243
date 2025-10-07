; Filename: EXER36.asm
; Name: Ethan Benedict M. Labajo
; Date: October 6, 2025
; Calculator with 4 operations and a Main Menu

.model small
.stack 100

.data

    ; HOLDERS FOR MULT AND DIVISION
    mn1 db ?
    mn2 db ?
    
    dn1 db ?
    dn2 db ?

    nl db 0Ah, '$'

    ; HEADER
    hdr db "THE CALCULATOR", 0Ah, '$'

    ; AUTHOR
    crt db "Created by: Ethan Benedict M. Labajo", 0Ah, "Date: October 6, 2025", "$"

    ; Main Menu
    menu db "Main Menu", 0Ah, '$'
    addition db "a - Addition$"
    subtraction db "s - Subtraction$"
    multiplication db "m - Multiplication$"
    division db "d - Division$"
    exit db "e - Exit$"

    ; CHOICES

    addc db "Addition$"
    subc db "Subtraction$"
    mulc db "Multiplication$"
    divc db "Division$"

    ; PROMPTS
    prompt db "Enter your choice: $"

    ad1 db "Enter first addend: $"
    ad2 db "Enter second addend: $"
    
    sb1 db "Enter minuend: $"
    sb2 db "Enter subtrahend: $"

    mt1 db "Enter multiplicand: $"
    mt2 db "Enter multiplier: $"

    dv1 db "Enter dividend: $"
    dv2 db "Enter divisor: $"

    ; OUTPUTS
    aout1 db "First addend is: $"
    aout2 db "Second addend is: $"
    aout3 db "Sum: $"

    sout1 db "Minuend is: $" 
    sout2 db "Subtrahend is: $" 
    sout3 db "Difference: $" 

    mout1 db "Mutiplicand is: $" 
    mout2 db "Multiplier is: $" 
    mout3 db "Product: $" 

    dout1 db "Dividend is: $"
    dout2 db "Divisor is: $"
    dout3 db "Quotient: $"

    ex db "Exit Program.$"
    dn db "Press Enter to continue.$"
    inv db "Invalid Choice. Press Enter to continue.$"
.code
main:
    mov ax, @data
    mov ds, ax

main_loop:
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
    mov dx, offset hdr
    int 21h
  
    mov dx, offset crt
    int 21h
    call pnl
    call pnl

 
    mov dx, offset menu
    int 21h

    mov dx, offset addition
    mov bl, 04Eh
    call print_colored
    call pnl

    mov bl, 01Ch
    mov dx, offset subtraction
    call print_colored

    call pnl

    mov bl, 05Fh
    mov dx, offset multiplication
    call print_colored

    call pnl

    mov bl, 03Fh
    mov dx, offset division
    call print_colored

    call pnl

    mov bl, 06Eh
    mov dx, offset exit
    call print_colored

    call pnl 
    mov ah, 09h
    mov dx, offset prompt
    int 21h

    mov ah, 01h
    int 21h

    cmp al, 'a'
    jne check_s
    jmp ad

check_s:
    cmp al, 's'
    jne check_m
    jmp sb

check_m:
    cmp al, 'm'
    jne check_d
    jmp ml

check_d:
    cmp al, 'd'
    jne check_e
    jmp dv

check_e:
    cmp al, 'e'
    jmp invalid_choice

invalid_choice:
    call pnl
    call pnl
    mov dx, offset inv
    int 21h
    mov ah, 01h
    int 21h               
    jmp main_loop          

ad:
    call pnl
    call pnl
    mov bl, 04Eh
    mov dx, offset addc
    call print_colored
    call pnl

    mov dx, offset ad1
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'
    mov cl, al
    mov bl, al
    call pnl
    mov ah, 09h
    mov dx, offset ad2
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'
    mov bh, al
    add bl, bh

    call pnl

    mov ah, 09h
    mov dx, offset aout1 
    int 21h

    mov dl, cl
    add dl, '0'
    mov ah, 02h
    int 21h

    call pnl

    mov ah, 09h
    mov dx, offset aout2
    int 21h

    mov dl, bh
    add dl, '0'
    mov ah, 02h
    int 21h

    call pnl

    mov ah, 09h
    mov dx, offset aout3
    int 21h

    mov al, bl
    cmp al, 9
    jg td

pdg:
    mov dl, al
    add dl, '0'
    mov ah, 02h
    int 21h
    jmp wait_enter

td:
    mov ah, 0
    mov dl, '1' ; Since we know number > 10, we can print 1 first
    mov ah, 02h
    int 21h

    sub bl, 10  ; We then subtract the sum by 10
                ; To get the digit at the ones place
    mov al, bl
    add al, '0' ; Convert the digit back to ascii
    mov dl, al
    mov ah, 02h
    int 21h
    
    jmp wait_enter

sb:
    call pnl
    call pnl
    mov bl, 01Ch
    mov dx, offset subc
    call print_colored
    call pnl


    mov ah, 09h
    mov dx, offset sb1
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'
    mov cl, al
    mov bl, al

    call pnl

    mov ah, 09h
    mov dx, offset sb2
    int 21h

    mov ah, 01h
    int 21h 
    sub al, '0'
    mov bh, al
    sub bl, al

    call pnl

    mov ah, 09h
    mov dx, offset sout1
    int 21h

    mov dl, cl
    add dl, '0'
    mov ah, 02h
    int 21h

    call pnl

    mov ah, 09h
    mov dx, offset sout2
    int 21h

    mov dl, bh
    add dl, '0'
    mov ah, 02h
    int 21h

    call pnl

    mov ah, 09h
    mov dx, offset sout3
    int 21h

    mov al, bl
    cmp al, 0

    jl negative ; When number is negative
    jge positive ; When number is positive

negative:
    mov ah, 02h
    mov dl, '-'
    int 21h

    mov ah, 02h
    mov al, bl
    neg al ; Negate value first, because we represent negative numbers in two's complement

    add al, '0'
    mov dl, al
    int 21h

    jmp wait_enter

positive:
    mov ah, 02h
    mov al, bl
    add al, '0'
    mov dl, al
    int 21h
    jmp wait_enter


ml:
    call pnl
    call pnl
    mov bl, 05Fh
    mov dx, offset mulc
    call print_colored
    call pnl

    mov ah, 09h
    mov dx, offset mt1
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'
    mov mn1, al
    mov bl, al

    call pnl

    mov ah, 09h
    mov dx, offset mt2
    int 21h

    mov ah, 01h
    int 21h 
    sub al, '0'
    mov mn2, al 
    mov cl, bl          ; Move first number to CL
    mul cl              ; Multiply AL by CL, result in AX

    mov bx, ax          ; Save the full product in BX

    call pnl

    mov ah, 09h
    mov dx, offset mout1
    int 21h

    mov dl, mn1
    add dl, '0'
    mov ah, 02h
    int 21h

    call pnl

    mov ah, 09h
    mov dx, offset mout2
    int 21h

    mov dl, mn2
    add dl, '0'
    mov ah, 02h
    int 21h

    call pnl
    mov ah, 09h
    mov dx, offset mout3
    int 21h

    mov ax, bx          ; Restore product to AX

    cmp ax, 10
    jl od

ted:
    mov cl, 10
    div cl

    ; al = quotient (tens), ah = remainder (ones)
    mov dl, al          ; Save quotient
    add dl, '0'         ; Convert to ASCII
    mov dh, ah          ; Save remainder
    
    mov ah, 02h         ; Print tens digit
    int 21h

    mov dl, dh          ; Get remainder
    add dl, '0'         ; Convert to ASCII
    mov ah, 02h         ; Print ones digit
    int 21h

    jmp wait_enter

od:
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

    jmp wait_enter

dv:
    call pnl
    call pnl
    mov bl, 03Fh
    mov dx, offset divc
    call print_colored
    call pnl


    mov ah, 09h
    mov dx, offset dv1
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'
    mov dn1, al
    mov bl, al

    call pnl

    mov ah, 09h
    mov dx, offset dv2
    int 21h

    mov ah, 01h
    int 21h 
    sub al, '0'
    mov dn2, al
    mov cl, al

    call pnl

    mov ah, 09h
    mov dx, offset dout1
    int 21h

    mov dl, dn1
    add dl, '0'
    mov ah, 02h
    int 21h

    call pnl

    mov ah, 09h
    mov dx, offset dout2
    int 21h

    mov dl, dn2
    add dl, '0'
    mov ah, 02h
    int 21h

    call pnl
    mov al, bl
    xor ah, ah
    div cl

    mov bh, al          ; Save quotient in BH

    mov ah, 09h
    mov dx, offset dout3
    int 21h

    mov al, bh          ; Restore quotient
    add al, '0'         ; Convert quotient to ASCII first
    mov dl, al
    mov ah, 02h         ; Then set up for display
    int 21h
    
    jmp wait_enter

wait_enter:
    call pnl
    call pnl
    mov ah, 09h
    mov dx, offset dn
    int 21h

    mov ah, 01h
    int 21h               ; waits for Enter
    jmp main_loop         ; loop back to menu



done: 
    call pnl
    call pnl
    mov ah, 09h
    mov dx, offset dn
    int 21h

    

ext:
    call pnl
    call pnl
    mov ah, 09h
    mov bl, 070h
    mov cx, 13
    int 10h 
    mov dx, offset ex
    int 21h

    int 27h

pclr proc
    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h
    ret
pclr endp

pnl proc
    mov ah, 09h
    mov dx, offset nl
    int 21h
    ret
pnl endp
print_colored PROC
    push ax
    push bx
    push cx
    push dx
    push si

    mov si, dx          ; string pointer
    mov ah, 03h         ; get current cursor position
    mov bh, 0
    int 10h
    ; DH = row, DL = column

next_char:
    mov al, [si]
    cmp al, '$'
    je done_color

    mov ah, 09h         ; print character with color
    mov bh, 0
    mov cx, 1
    int 10h

    inc si
    inc dl              ; move cursor right
    mov ah, 02h         ; update cursor position
    int 10h
    jmp next_char

done_color:
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    ret
print_colored ENDP

end main