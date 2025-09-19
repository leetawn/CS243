; Filename: EXER25.asm
; Name: Ethan Benedict M. Labajo
; Date: September 12, 2025
; Cebu Institute of Technology - University Enrollment Form Program
.model small
.stack 100h

.data
    nl db 0Ah, '$'

    header1 db "Cebu Institute of Technology - University", '$'
    header2 db "STUDENT ENROLLMENT FORM", '$'

    prompt db "Please enter the following information: ", 0Ah, '$'

    pid db "Student ID Number: $"
    pfn db "First Name: $"
    pmn db "Middle Name: $"
    pln db "Last Name: $"
    padd db "Address: $"
    pcourse db "Course: $"
    pyear db "Year: $"
    pmth db "Birthday Month: $"
    pday db "Birthday Day: $"
    pyr db "Birthday Year: $"
    pemail db "Email Address: $"

    summary db 0Ah, "SUMMARY$"
    warning db "Please check if all pieces of information are correct.$"

    inid db 100, ?, 100 dup('$')
    infn db 100, ?, 100 dup('$')
    inmn db 100, ?, 100 dup('$')
    inln db 100, ?, 100 dup('$')
    inadd db 100, ?, 100 dup('$')
    incourse db 100, ?, 100 dup('$')
    inyear db 100, ?, 100 dup('$')
    inmth db 100, ?, 100 dup('$')
    inday db 100, ?, 100 dup('$')
    inyr db 100, ?, 100 dup('$')
    inemail db 100, ?, 100 dup('$')
    
    sid db "ID Number: $"
    sfn db "First Name: $"
    smn db "Middle Name: $"
    sln db "Last Name: $"
    sadd db "Address: $"
    scourseandyear db "Course & Year: $"
    sbday db "Birthday: $"

    greetings db "Thank you for enrolling at CIT-U.$"
    cpyright db "Copyright 2025$" 
    programmer db "Programmer: Ethan Benedict M. Labajo$" 

.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset header1
    int 21h

    call pnl

    mov ah, 09h
    mov dx, offset header2
    int 21h

    call pnl
    call pnl 

    mov ah, 09h
    mov dx, offset prompt
    int 21h

    mov ah, 09h 
    mov dx, offset pid
    int 21h

    ; take input

    mov ah, 0Ah
    mov dx, offset inid
    int 21h

    call pnl

    mov ah, 09h
    mov dx, offset pfn
    int 21h
    mov ah, 0Ah
    mov dx, offset infn
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset pmn
    int 21h
    mov ah, 0Ah
    mov dx, offset inmn
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset pln
    int 21h
    mov ah, 0Ah
    mov dx, offset inln
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset padd
    int 21h
    mov ah, 0Ah
    mov dx, offset inadd
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset pcourse
    int 21h
    mov ah, 0Ah
    mov dx, offset incourse
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset pyear
    int 21h
    mov ah, 0Ah
    mov dx, offset inyear
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset pmth
    int 21h
    mov ah, 0Ah
    mov dx, offset inmth
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset pday
    int 21h
    mov ah, 0Ah
    mov dx, offset inday
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset pyr
    int 21h
    mov ah, 0Ah
    mov dx, offset inyr
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset pemail
    int 21h
    mov ah, 0Ah
    mov dx, offset inemail
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset summary
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset warning
    int 21h

    call pnl
    call pnl

    mov dx, offset sid
    int 21h
    mov ah, 09h
    lea dx, [inid+2]
    int 21h
    call pnl

    mov dx, offset sfn
    int 21h
    mov ah, 09h
    lea dx, [infn+2]
    int 21h
    call pnl

    mov dx, offset smn
    int 21h
    mov ah, 09h
    lea dx, [inmn+2]
    int 21h
    call pnl

    mov dx, offset sln
    int 21h
    mov ah, 09h
    lea dx, [inln+2]
    int 21h
    call pnl

    mov dx, offset sadd
    int 21h
    mov ah, 09h
    lea dx, [inadd+2]
    int 21h
    call pnl

    mov dx, offset scourseandyear
    int 21h
    mov ah, 09h
    lea dx, [incourse+2]
    int 21h
    mov ah, 09h
    mov dl, ' '
    int 21h
    mov ah, 09h
    lea dx, [inyear+2]
    int 21h
    call pnl

    mov dx, offset sbday
    int 21h

    ; Print birth month
    mov si, offset inmth
    mov cl, [si+1]
    inc si
    inc si
    mov ch, 0
print_month:
    cmp ch, cl
    jge print_space
    mov ah, 02h
    mov dl, [si]
    int 21h
    inc si
    inc ch
    jmp print_month

print_space:
    mov ah, 02h
    mov dl, ' '
    int 21h

    ; Print birth day
    mov si, offset inday
    mov cl, [si+1]
    inc si
    inc si
    mov ch, 0
print_day:
    cmp ch, cl
    jge print_comma
    mov ah, 02h
    mov dl, [si]
    int 21h
    inc si
    inc ch
    jmp print_day

print_comma:
    mov ah, 02h
    mov dl, ','
    int 21h
    mov ah, 02h
    mov dl, ' '
    int 21h

    ; Print birth year
    mov si, offset inyr
    mov cl, [si+1]
    inc si
    inc si
    mov ch, 0
print_year:
    cmp ch, cl
    jge print_bday_end
    mov ah, 02h
    mov dl, [si]
    int 21h
    inc si
    inc ch
    jmp print_year

print_bday_end:
    call pnl

    mov ah, 09h
    mov dx, offset pemail
    int 21h
    mov ah, 09h
    lea dx, [inemail+2]
    int 21h

    call pnl
    call pnl

    mov ah, 09h
    mov dx, offset greetings
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset cpyright
    int 21h
    call pnl

    mov ah, 09h
    mov dx, offset programmer
    int 21h
    call pnl

    mov ah, 4Ch
    int 21h

pnl proc
    mov ah, 09h
    mov dx, offset nl
    int 21h
    ret

pnl endp

end main