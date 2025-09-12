; Filename: Exer19.asm
; Displaying a GUI
; Name: Ethan Benedict M. Labajo
; Date: August, 29, 2025

.model small
.stack 100h

.data
    px db "  ", '$'
    header db "Band Camp Registration", 0Ah, '$'
    logo db "HIGH SCHOOL BAND", 0Ah, '$'
    input db "      ", '$'
    sinfo db "Student Information", '$'
    fr db "Name", '$'
    phoneemail db "Phone                                       Email", '$'
    sr db "Date of Birth         Email               Grade", '$'

    thr db "Address", '$'
    frt db "T-shirt                                    Instrument", '$'
    emp db "                     ", '$'
    adrinputone db " Address Line 1                                            ", '$'
    cityinput db " City               ", '$'
    stateinput db " State              ", '$'
    zipinput db " Zip Code            ", '$'
    pargar db "Parent/Guardian Information", '$'
    submit db "Submit", '$'


    nl db 0Ah, '$'



.code
start:
    mov ax, @data
    mov ds, ax

    mov ah, 09h

    mov bl, 022h
    mov cx, 100
    int 10h

    mov dx, offset emp
    int 21h
    mov dx, offset emp
    int 21h
    mov dx, offset emp
    int 21h

    mov dx, offset nl 
    int 21h 

    mov bl, 000h
    mov cx, 100 
    int 10h 

    mov bl, 022h 
    mov cx, 80
    int 10h 

    mov dx, offset emp
    int 21h

    mov bl, 020h
    mov cx, 22
    int 10h

    mov dx, offset header
    int 21h

    mov dx, offset nl
    int 21h 

    mov bl, 022h
    mov cx, 10
    int 10h 

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov bl, 020h
    mov cx, 16
    int 10h

    mov dx, offset logo
    int 21h

    mov dx, offset nl 
    int 21h

    mov bl, 000h
    mov cx, 100 
    int 10h

    mov bl, 022h
    mov cx, 100
    int 10h 

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h
 
    mov dx, offset px
    int 21h   

    mov bl, 020h
    mov cx, 19
    int 10h

    mov dx, offset sinfo
    int 21h

    mov bl, 022h
    mov cx, 100
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset nl
    int 21h
    mov dx, offset nl
    int 21h


    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 022h
    mov cx, 100
    int 10h

    mov dx, offset px
    int 21h
 
    mov dx, offset px
    int 21h   

    mov dx, offset px
    int 21h

    mov bl, 020h
    mov cx, 4
    int 10h 

    mov dx, offset fr
    int 21h

    mov dx, offset nl
    int 21h

    mov bl, 022h
    mov cx, 4
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h
    mov bl, 0FFh 
    mov cx, 15
    int 10h

    mov dx, offset input
    int 21h

    mov dx, offset input
    int 21h

    mov dx, offset input
    int 21h

    mov bl, 022h
    mov cx, 4
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h

 
    mov bl, 0FFh 
    mov cx, 15
    int 10h

    mov dx, offset input
    int 21h

    mov dx, offset input
    int 21h

    mov dx, offset input
    int 21h

    mov dx, offset nl
    int 21h

    mov dx, offset nl
    int 21h

    mov bl, 000h 
    mov cx, 100
    int 10h

    mov bl, 022h
    mov cx, 100
    int 10h 

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov bl, 020h
    mov cx, 47
    int 10h

    ; ROW 2

    mov dx, offset sr
    int 21h 

    mov dx, offset nl
    int 21h

    mov bl, 000h
    mov cx, 100 
    int 10h

    mov bl, 022h
    mov cx, 100
    int 10h 

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    ; DATE OF BIRTH IF
    mov bl, 0FFh
    mov cx, 15
    int 10h

    mov dx, offset input 
    int 21h

    mov dx, offset input
    int 21h

    mov dx, offset input
    int 21h


    mov bl, 022h
    mov cx, 5
    int 10h

    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h

    mov bl, 0FFh
    mov cx, 15
    int 10h

    mov dx, offset input 
    int 21h
    mov dx, offset input
    int 21h
    mov dx, offset input
    int 21h

    mov bl, 022h
    mov cx, 5
    int 10h
   
    mov bl, 022h
    mov cx, 5
    int 10h

    mov dx, offset px
    int 21h
 
  
    mov bl, 0FFh
    mov cx, 17
    int 10h

    mov dx, offset input 
    int 21h
    mov dx, offset input 
    int 21h
    mov dx, offset input 
    int 21h
    mov dx, offset input 
    int 21h
    
    mov dx, offset nl
    int 21h

    mov dx, offset nl
    int 21h


    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 022h 
    mov cx, 100
    int 10h

    mov dx, offset px
    int 21h 
    mov dx, offset px
    int 21h 
    mov dx, offset px
    int 21h 

    mov bl, 020h
    mov cx, 7
    int 10h 

    mov dx, offset thr
    int 21h

    mov dx, offset nl
    int 21h 

    mov bl, 022h
    mov cx, 100
    int 10h

    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h


    mov bl, 07Fh
    mov cx, 59
    int 10h

    mov dx, offset adrinputone
    int 21h

    mov dx, offset nl
    int 21h

    mov dx, offset nl
    int 21h

    mov bl, 022h
    mov cx, 4
    int 10h

    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h

    mov bl, 07Fh
    mov cx, 20
    int 10h

    mov dx, offset cityinput
    int 21h

    mov bl, 022h
    mov cx, 4
    int 10h
    
    mov dx, offset px
    int 21h
    
    mov bl, 07Fh
    mov cx, 20
    int 10h

    mov dx, offset stateinput
    int 21h

    mov bl, 022h
    mov cx, 4
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 07Fh
    mov cx, 15
    int 10h

    mov dx, offset zipinput
    int 21h

    mov dx, offset nl
    int 21h    

    mov dx, offset nl
    int 21h    

    mov bl, 022h
    mov cx, 8
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov bl, 020h
    mov cx, 53
    int 10h

    mov dx, offset frt
    int 21h

    mov bl, 022h
    mov cx, 8
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset nl
    int 21h

    mov bl, 022h
    mov cx, 8
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov bl, 07Fh
    mov cx, 20
    int 10h

    mov dx, offset emp
    int 21h

    mov bl, 022h
    mov cx, 8
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov bl, 07Fh
    mov cx, 17
    int 10h

    mov dx, offset emp
    int 21h

    mov dx, offset nl
    int 21h

    mov dx, offset nl
    int 21h

    mov bl, 022h
    mov cx, 4
    int 10h

    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h

    mov bl, 020h
    mov cx, 27
    int 10h

    mov dx, offset pargar
    int 21h

    mov dx, offset nl
    int 21h

    mov bl, 022h
    mov cx, 4
    int 10h
    
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h

    mov bl, 020h
    mov cx, 4
    int 10h 

    mov dx, offset fr
    int 21h

    mov dx, offset nl
    int 21h

    mov bl, 022h
    mov cx, 4
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h
    mov bl, 0FFh 
    mov cx, 15
    int 10h

    mov dx, offset input
    int 21h

    mov dx, offset input
    int 21h

    mov dx, offset input
    int 21h

    mov bl, 022h
    mov cx, 4
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h

 
    mov bl, 0FFh 
    mov cx, 15
    int 10h

    mov dx, offset input
    int 21h

    mov dx, offset input
    int 21h

    mov dx, offset input
    int 21h

    mov dx, offset nl
    int 21h

    mov dx, offset nl
    int 21h

    mov bl, 022h
    mov cx, 4
    int 10h

    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    
    mov bl, 020h
    mov cx, 49
    int 10h

    mov dx, offset phoneemail
    int 21h    
    mov dx, offset nl
    int 21h

    mov bl, 022h
    mov cx, 4
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h
    mov bl, 0FFh 
    mov cx, 15
    int 10h

    mov dx, offset input
    int 21h

    mov dx, offset input
    int 21h

    mov dx, offset input
    int 21h

    mov bl, 022h
    mov cx, 4
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h
    mov dx, offset px
    int 21h

 
    mov bl, 0FFh 
    mov cx, 15
    int 10h

    mov dx, offset input
    int 21h

    mov dx, offset input
    int 21h

    mov dx, offset input
    int 21h

    mov dx, offset nl
    int 21h

    mov dx, offset nl
    int 21h

    mov bl, 022h
    mov cx, 4
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov bl, 0CEh
    mov cx, 6
    int 10h

    mov dx, offset submit
    int 21h


    int 27h

end start