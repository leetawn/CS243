.model small
.stack 100h

.data
    border db "                                                            ", '$'
    inside db "                                                        ", '$'
    nl db 0Ah, '$'
    px db "  ", '$'
    px2 db "      ", '$'
    details db "Please enter your details                           ", '$'
    welcome db "Welcome Back                                        ", '$'
    br db '      ', 218, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196,  196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 191, '        ', '$'
    eml db '      ', 179, ' ', "Email Address", '                          ', 179, '        ', '$'
    btm db '      ', 192, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196,  196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 196, 217, '        ', '$'
    ps db '      ', 179, ' ', "Password", '                               ', 179, '        ', '$'
    dys db '      ', "[] Remember for 30 days ", '$'
    frgt db '  ', "Forgot Password         ", '$'
    sgnbtn db '  ', "                                        ", '$'
    sgn db '  ', "               Sign Up                  ", '$'
    ggl db '      ', 179, '         G ', "Sign in with Google", '          ', 179, '        ', '$'
    dnt db '          ',  "Don't have an account?", '$'
    send db '    ', "Sign up             ", '$'
    crt db '        ', "Created by: Ethan Benedict M. Labajo    ", '$'
.code  
main:
    mov ax, @data 
    mov ds, ax

    mov ah, 09h
    mov bl, 40h
    mov cx, 60
    int 10h
    
    mov dx, offset border
    int 21h

    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h

    mov bl, 0FFh
    mov cx, 56
    int 10h 

    mov dx, offset inside
    int 21h
    
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h
    
    mov bl, 0FFh 
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
    mov cx, 52
    int 10h 

    mov dx, offset details
    int 21h

    
    mov bl, 40h ; END PIXEL
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h
    
    mov bl, 0FFh 
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
    mov cx, 52
    int 10h 

    mov dx, offset welcome
    int 21h

    
    mov bl, 40h ; END PIXEL
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h

    mov bl, 0FFh
    mov cx, 56
    int 10h 

    mov dx, offset inside
    int 21h
    
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h

    mov bl, 070h
    mov cx, 56
    int 10h 

    mov dx, offset br
    int 21h
    
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h
    
    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h

    mov bl, 070h
    mov cx, 56
    int 10h 

    mov dx, offset eml
    int 21h
    
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h
    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h

    mov bl, 070h
    mov cx, 56
    int 10h 

    mov dx, offset btm
    int 21h
    
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h
    
    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h

    mov bl, 070h
    mov cx, 56
    int 10h 

    mov dx, offset br
    int 21h
    
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h
    
    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h

    mov bl, 070h
    mov cx, 56
    int 10h 

    mov dx, offset ps
    int 21h
    
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h
    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h

    mov bl, 070h
    mov cx, 56
    int 10h 

    mov dx, offset btm
    int 21h
    
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset nl
    int 21h 
    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h
        
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 070h
    mov cx, 56
    int 10h 

    mov dx, offset dys
    int 21h
    
    mov bl, 071h
    mov cx, 20
    int 10h

    mov dx, offset frgt
    int 21h

    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h


    mov dx, offset nl
    int 21h

    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 0FFh
    mov cx, 56
    int 10h

    mov dx, offset inside     
    int 21h
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset nl
    int 21h

    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 0FFh
    mov cx, 6
    int 10h 

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h
    mov bl, 01Fh
    mov cx, 44
    int 10h

    mov dx, offset sgnbtn
    int 21h

    mov bl, 0FFh 
    mov cx, 10
    int 10h

    mov dx, offset px
    int 21h 

    mov dx, offset px
    int 21h 

    mov dx, offset px
    int 21h 

    mov dx, offset px
    int 21h 

    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h
    mov dx, offset nl
    int 21h

    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 0FFh
    mov cx, 6
    int 10h 

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h
    mov bl, 01Fh
    mov cx, 44
    int 10h

    mov dx, offset sgn
    int 21h

    mov bl, 0FFh 
    mov cx, 10
    int 10h

    mov dx, offset px
    int 21h 

    mov dx, offset px
    int 21h 

    mov dx, offset px
    int 21h 

    mov dx, offset px
    int 21h 

    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h
    mov dx, offset nl
    int 21h

    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 0FFh
    mov cx, 6
    int 10h 

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h

    mov dx, offset px
    int 21h
    mov bl, 01Fh
    mov cx, 44
    int 10h

    mov dx, offset sgnbtn
    int 21h

    mov bl, 0FFh 
    mov cx, 10
    int 10h

    mov dx, offset px
    int 21h 

    mov dx, offset px
    int 21h 

    mov dx, offset px
    int 21h 

    mov dx, offset px
    int 21h 

    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset nl
    int 21h
    
    mov bl, 000h
    mov cx, 100
    int 10h 

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h

    mov bl, 0FFh
    mov cx, 56
    int 10h 

    mov dx, offset inside
    int 21h
    
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h

    mov bl, 070h
    mov cx, 56
    int 10h 

    mov dx, offset br
    int 21h
    
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h
    
    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h

    mov bl, 070h
    mov cx, 56
    int 10h 

    mov dx, offset ggl
    int 21h
    
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h
    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h

    mov bl, 070h
    mov cx, 56
    int 10h 

    mov dx, offset btm
    int 21h
    
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h
    
    mov dx, offset nl
    int 21h 
    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h
        
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 070h
    mov cx, 56
    int 10h 

    mov dx, offset dnt
    int 21h
    
    mov bl, 071h
    mov cx, 20
    int 10h

    mov dx, offset send
    int 21h

    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h


    mov dx, offset nl
    int 21h
    
    mov bl, 000h
    mov cx, 100
    int 10h 

    mov bl, 40h 
    mov cx, 2 
    int 10h

    mov dx, offset px 
    int 21h

    mov bl, 0FFh
    mov cx, 56
    int 10h 

    mov dx, offset inside
    int 21h
    
    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov dx, offset nl
    int 21h

    mov bl, 000h
    mov cx, 100
    int 10h

    mov bl, 40h
    mov cx, 2
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 070h
    mov cx, 56
    int 10h 

    mov dx, offset crt
    int 21h

    mov bl, 0FFh
    mov cx, 20
    int 10h

    mov dx, offset px2
    int 21h

    mov dx, offset px
    int 21h

    mov bl, 040h
    mov cx, 2
    int 10h 

    mov dx, offset px
    int 21h

    mov bl, 000h
    mov cx, 100
    int 10h
  
    mov dx, offset nl
    int 21h

    mov ah, 09h
    mov bl, 000h
    mov cx, 100
    int 10h
    mov bl, 40h
    mov cx, 60
    int 10h
    
    mov dx, offset border
    int 21h

    mov bl, 000h
    mov cx, 100
    int 10h

    int 27h
end main