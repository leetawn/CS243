; Filename: EXER27.asm
; Name: Ethan Benedict M. Labajo
; Date: September 12, 2025
; Cebu Institute of Technology - University Vehicle Sticker Application Form with Input Handling and GUI

.model small
.stack 100h

.data
    nl db 0Ah, '$'
    header db "Cebu Institute of Technology - University", 0Ah, "VEHICLE STICKER APPLICATION FORM", 0Ah, '$'

    prompt db "Please enter the needed information: ", 0Ah, '$'
    summary db "SUMMARY", 0Ah, '$'

    ; LABELS FOR PROMPTS
    personnelType db "Personnel Type: $"
    nm db "Name of Applicant/Driver: $"
    mbnumber db "Mobile Number: $"
    brand db "Vehicle Make(s)/Brand: $"
    color db "Vehicle Color: $"
    stickerType db "Vehicle Sticker Type: $"
    idno db "ID Number: $"
    address db "Address: $"
    plateno db "Plate Number: $"
    vehicleType db "Vehicle Type: $"

    ; INPUT BUFFERS
    inpt db 100, ?, 100 dup('$')
    inname db 100, ?, 100 dup('$')
    inmbno db 100, ?, 100 dup('$')
    inbrand db 100, ?, 100 dup('$')
    inclr db 100, ?, 100 dup('$')
    inst db 100, ?, 100 dup('$')
    inid db 100, ?, 100 dup('$')
    inadr db 100, ?, 100 dup('$')
    inptno db 100, ?, 100 dup('$')
    invt db 100, ?, 100 dup('$')

    ; GUI
    px db "  ", '$'
    px2 db "    ", '$'
    px4 db "      ", '$'
    long db "                                        ", '$'
    tn db "          ", '$'
    tt db "                    ", '$'
    tts db "                  ", '$'

    hdr db '              ', "Cebu Institute of Technology - University", '$'
    hdr2 db '                 ', "VEHICLE STICKER APPLICATION FORM  ", '$'
    hdr3 db '                    ', "Please fill out form below.                        ", '$'

    yv db 'V', '$'

    p1 db "Personnel Type:                         Vehicle Sticker Type:             ", '$'
    p2 db "Name of Applicant/Driver:               ID Number:                        ", '$'
    p3 db "Mobile Number:                          Address:                          ", '$'
    p4 db "Vehicle Make(s)/Brand:                  Plate Number:                     ", '$'
    p5 db "Vehicle Color:                          Vehicle Type:                     ", '$'

    psub db "  SUBMIT  ", '$'
    pend db "  Copyright 2025 ETHAN BENEDICT M. LABAJO  ", '$'
    thnk db " Thank you! ", '$'

.code
main:
    mov ax, @data
    mov ds, ax

    mov ax, 3
    int 10h

    mov ah, 09h

    mov dx, offset header
    int 21h

    mov dx, offset prompt
    int 21h

    call pnl

    mov dx, offset personnelType
    int 21h

    mov ah, 0Ah
    mov dx, offset inpt
    int 21h

    mov si, offset inpt + 2
    mov cl, [inpt+1]
    add si, cx
    mov byte ptr [si], '$'
    inc byte ptr [inpt+1]

    call pnl

    mov ah, 09h
    mov dx, offset nm
    int 21h

    mov ah, 0Ah
    mov dx, offset inname
    int 21h
    mov si, offset inname + 2
    mov cl, [inname+1]   ; string length
    add si, cx
    mov byte ptr [si], '$'


    call pnl


    mov ah, 09h
    mov dx, offset mbnumber
    int 21h

    mov ah, 0Ah
    mov dx, offset inmbno
    int 21h

    mov si, offset inmbno + 2
    mov cl, [inmbno+1]   ; string length
    add si, cx
    mov byte ptr [si], '$'

    call pnl

    mov ah, 09h
    mov dx, offset brand
    int 21h

    mov ah, 0Ah
    mov dx, offset inbrand
    int 21h

    mov si, offset inbrand + 2
    mov cl, [inbrand+1]   ; string length
    add si, cx
    mov byte ptr [si], '$'

    call pnl

    mov ah, 09h
    mov dx, offset color
    int 21h

    mov ah, 0Ah
    mov dx, offset inclr
    int 21h

    mov si, offset inclr + 2
    mov cl, [inclr+1]   ; string length
    add si, cx
    mov byte ptr [si], '$'

    call pnl

    mov ah, 09h
    mov dx, offset stickerType
    int 21h

    mov ah, 0Ah
    mov dx, offset inst
    int 21h

    mov si, offset inst + 2
    mov cl, [inst+1]   ; string length
    add si, cx
    mov byte ptr [si], '$'

    call pnl

    mov ah, 09h
    mov dx, offset idno
    int 21h

    mov ah, 0Ah
    mov dx, offset inid
    int 21h

    mov si, offset inid + 2
    mov cl, [inid+1]   ; string length
    add si, cx
    mov byte ptr [si], '$'

    call pnl

    mov ah, 09h
    mov dx, offset address
    int 21h

    mov ah, 0Ah
    mov dx, offset inadr
    int 21h

    mov si, offset inadr + 2
    mov cl, [inadr+1]   ; string length
    add si, cx
    mov byte ptr [si], '$'

    call pnl

    mov ah, 09h
    mov dx, offset plateno
    int 21h

    mov ah, 0Ah
    mov dx, offset inptno
    int 21h

    mov si, offset inptno + 2
    mov cl, [inptno+1]   ; string length
    add si, cx
    mov byte ptr [si], '$'

    call pnl


    mov ah, 09h
    mov dx, offset vehicleType
    int 21h

    mov ah, 0Ah
    mov dx, offset invt
    int 21h

    mov si, offset invt + 2
    mov cl, [invt+1]   ; string length
    add si, cx
    mov byte ptr [si], '$'


    call pnl

    mov ah, 09h
    mov dx, offset summary
    int 21h

    ; DRAW GUI

    mov bl, 000h
    mov cx, 100
    int 10h

    mov ah, 09h
    mov dx, offset long
    int 21h
    mov dx, offset long
    int 21h
    mov dx, offset tt 
    int 21h

    call pnl 

    call pclr

    mov bl, 000h
    mov cx, 2 
    int 10h 

    mov dx, offset px 
    int 21h

    mov bl, 0FFh
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h


    mov bl, 04Fh
    mov cx, 82
    int 10h

    mov dx, offset hdr
    int 21h
    mov dx, offset tn
    int 21h
    mov dx, offset px4
    int 21h


    mov bl, 0FFh
    mov cx, 2
    int 10h

    mov ah, 09h
    mov dx, offset px 
    int 21h
    call pclr

    mov bl, 000h
    mov cx, 2   
    int 10h

    mov dx, offset px 
    int 21h 

    mov bl, 0FFh
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 04Fh
    mov cx, 71
    int 10h
    
    mov ah, 09h
    mov dx, offset hdr2
    int 21h
    mov dx, offset tn
    int 21h
    mov dx, offset tn
    int 21h


    mov bl, 0FFh
    mov cx, 2
    int 10h

    mov ah, 09h
    mov dx, offset px 
    int 21h

    call pclr

    mov bl, 000h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 0FFh
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 04Eh
    mov cx, 71
    int 10h

    mov ah, 09h
    mov dx, offset hdr3
    int 21h

    mov bl, 0FFh
    mov cx, 2
    int 10h

    mov ah, 09h
    mov dx, offset px
    int 21h

    call pclr

    mov bl, 000h
    mov cx, 2
    int 10h

    mov ah, 09h
    mov dx, offset px
    int 21h

    mov bl, 0FFh
    mov cx, 75
    int 10h

    mov ah, 09h
    mov dx, offset long
    int 21h

    mov dx, offset tt
    int 21h
 
    mov dx, offset tt
    int 21h  
    mov bl, 0FFh
    mov cx, 2
    int 10h

    mov ah, 09h
    mov dx, offset px
    int 21h

    mov bl, 070h
    mov cx, 73
    int 10h

    mov dx, offset p1
    int 21h

    mov ax, 0B800h
    mov es, ax
    mov si, offset inpt + 2
    mov di, (22*80 + 30)*2      

pr_pt:
    lodsb                      
    cmp al, '$'              
    je dp_pt

    mov es:[di], al            
    mov byte ptr es:[di+1], 070h   

    add di, 2
    jmp pr_pt

dp_pt:

    mov ax, 0B800h
    mov es, ax
    mov si, offset inst + 2
    mov di, (22*80 + 66)*2       ; (row*80 + col) * 2

pr_st:
    lodsb                      ; load next character into AL
    cmp al, '$'                ; end of string?
    je dp_st

    mov es:[di], al            ; print character
    mov byte ptr es:[di+1], 070h   ; always default color (black on white)

    add di, 2
    jmp pr_st

dp_st:

    call pclr

    mov ah, 09h
    mov bl, 000h
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h

    mov bl, 0FFh
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h


    mov bl, 070h
    mov cx, 73
    int 10h

    mov dx, offset p2
    int 21h

    mov ax, 0B800h
    mov es, ax
    mov si, offset inname + 2
    mov di, (23*80 + 30)*2      

pr_nm:
    lodsb                      
    cmp al, '$'              
    je dp_nm

    mov es:[di], al            
    mov byte ptr es:[di+1], 070h   

    add di, 2
    jmp pr_nm

dp_nm:

    mov ax, 0B800h
    mov es, ax
    mov si, offset inid + 2
    mov di, (23*80 + 66)*2       ; (row*80 + col) * 2

pr_id:
    lodsb                      ; load next character into AL
    cmp al, '$'                ; end of string?
    je dp_id

    mov es:[di], al            ; print character
    mov byte ptr es:[di+1], 070h   ; always default color (black on white)

    add di, 2
    jmp pr_id

dp_id:

    call pclr

    mov ah, 09h
    mov bl, 000h
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h

    mov bl, 0FFh
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h


    mov bl, 070h
    mov cx, 73
    int 10h

    mov dx, offset p3
    int 21h

    mov ax, 0B800h
    mov es, ax
    mov si, offset inmbno + 2
    mov di, (24*80 + 30)*2      

pr_mb:
    lodsb                      
    cmp al, '$'              
    je dp_mb

    mov es:[di], al            
    mov byte ptr es:[di+1], 070h   

    add di, 2
    jmp pr_mb

dp_mb:

    mov ax, 0B800h
    mov es, ax
    mov si, offset inadr + 2
    mov di, (24*80 + 66)*2       ; (row*80 + col) * 2

pr_adr:
    lodsb                      ; load next character into AL
    cmp al, '$'                ; end of string?
    je dp_adr

    mov es:[di], al            ; print character
    mov byte ptr es:[di+1], 070h   ; always default color (black on white)

    add di, 2
    jmp pr_adr

dp_adr:

    call pclr

    mov ah, 09h
    mov bl, 000h
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h

    mov bl, 0FFh
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h


    mov bl, 070h
    mov cx, 73
    int 10h

    mov dx, offset p4
    int 21h

    mov ax, 0B800h
    mov es, ax
    mov si, offset inbrand + 2
    mov di, (24*80 + 30)*2      

pr_brand:
    lodsb                      
    cmp al, '$'              
    je dp_brand

    mov es:[di], al            
    mov byte ptr es:[di+1], 070h   

    add di, 2
    jmp pr_brand

dp_brand:

    mov ax, 0B800h
    mov es, ax
    mov si, offset inptno + 2
    mov di, (24*80 + 66)*2       ; (row*80 + col) * 2

pr_ptno:
    lodsb                      ; load next character into AL
    cmp al, '$'                ; end of string?
    je dp_ptno

    mov es:[di], al            ; print character
    mov byte ptr es:[di+1], 070h   ; always default color (black on white)

    add di, 2
    jmp pr_ptno

dp_ptno:

    call pclr

    mov ah, 09h
    mov bl, 000h
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h

    mov bl, 0FFh
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h


    mov bl, 070h
    mov cx, 73
    int 10h

    mov dx, offset p5
    int 21h

    mov ax, 0B800h
    mov es, ax
    mov si, offset inclr + 2
    mov di, (24*80 + 30)*2      

pr_clr:
    lodsb                      
    cmp al, '$'              
    je dp_clr

    mov es:[di], al            
    mov byte ptr es:[di+1], 070h   

    add di, 2
    jmp pr_clr

dp_clr:

    mov ax, 0B800h
    mov es, ax
    mov si, offset invt + 2
    mov di, (24*80 + 66)*2       ; (row*80 + col) * 2

pr_vt:
    lodsb                      ; load next character into AL
    cmp al, '$'                ; end of string?
    je dp_vt

    mov es:[di], al            ; print character
    mov byte ptr es:[di+1], 070h   ; always default color (black on white)

    add di, 2
    jmp pr_vt

dp_vt:

    call pclr

    mov ah, 09h
    mov bl, 000h
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h

    mov bl, 0FFh
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h


    mov bl, 070h
    mov cx, 73
    int 10h

    mov dx, offset long
    int 21h

    mov dx, offset tt
    int 21h
    mov dx, offset px4
    int 21h
    mov dx, offset px2
    int 21h
    mov dx, offset px2
    int 21h

    call pclr
    mov ah, 09h
    mov bl, 000h
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h

    mov bl, 0FFh
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h


    mov bl, 070h
    mov cx, 30
    int 10h

    mov dx, offset tts
    int 21h
    mov dx, offset tn
    int 21h

    mov bl, 04Eh
    mov cx, 10
    int 10h 
     
    mov dx, offset psub
    int 21h
    mov bl, 070h
    mov cx, 35
    int 10h

    mov dx, offset tt
    int 21h
    mov dx, offset px4
    int 21h
    mov dx, offset px2
    int 21h
    mov dx, offset px2
    int 21h
    mov dx, offset px
    int 21h

    call pclr
    mov ah, 09h
    mov bl, 000h
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h

    mov bl, 0FFh
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h


    mov bl, 070h
    mov cx, 73
    int 10h

    mov dx, offset long
    int 21h
    mov dx, offset tt
    int 21h
    mov dx, offset tn
    int 21h
    mov dx, offset px2
    int 21h
    call pclr

    mov ah, 09h
    mov bl, 000h
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h

    mov bl, 0FFh
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h

    mov bl, 070h
    mov cx, 73
    int 10h

    mov dx, offset px4
    int 21h
    mov dx, offset px2
    int 21h
    mov dx, offset px2
    int 21h

    mov dx, offset pend 
    int 21h

    mov dx, offset tt 
    int 21h
    mov dx, offset px
    int 21h
    call pclr

    mov bl, 000h 
    mov cx, 30 
    int 10h 

    mov dx, offset tt 
    int 21h 

    mov dx, offset tn
    int 21h 
    mov dx, offset px
    int 21h 


    mov bl, 0Eh 
    mov cx, 11
    int 10h 

    mov dx, offset thnk
    int 21h

    mov ax, 0B800h
    mov es, ax

    mov di, (14*80 + 40)*2   
    mov al, 'V'              
    mov es:[di], al
    mov byte ptr es:[di+1], 4Fh 

    mov ax, 0B800h
    mov es, ax

    mov di, (18*80 + 40)*2   
    mov al, 'V'              
    mov es:[di], al
    mov byte ptr es:[di+1], 4Fh 

    mov ax, 0B800h
    mov es, ax

    mov di, (14*80 + 74)*2   
    mov al, 'V'              
    mov es:[di], al
    mov byte ptr es:[di+1], 4Fh 

    mov di, (18*80 + 74)*2   
    mov al, 'V'              
    mov es:[di], al
    mov byte ptr es:[di+1], 4Fh 



    jmp end_prog



pclr proc
    mov bl, 000h
    mov cx, 100
    int 10h
pclr endp
pnl proc
    mov ah, 09h
    mov dx, offset nl
    int 21h
    ret
pnl endp

end_prog:
    mov ax, 4C00h
    int 21h

end main