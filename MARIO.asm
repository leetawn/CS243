; Drawing Mario with no help for the sake of remembering syntax 
; 13x18
.model small 
.stack 100h 

.data 
    px db "  $"
    px2 db "    $"
    px3 db "      $"
    px4 db "        $"
    nl db 0Ah, '$'

.code 
main: 
    mov ax, @data
    mov ds, ax
    
    mov ah, 09h

    ; ROW 1

    mov bl, 0FFh
    mov cx, 26
    int 10h

    mov dx, offset px4
    int 21h
    mov dx, offset px4
    int 21h
    mov dx, offset px4
    int 21h
    mov dx, offset px2
    int 21h

    ; ROW 1

    mov dx, offset nl
    int 21h 

    ; ROW 2

    mov bl, 000h
    mov cx, 100 
    int 10h 

    mov bl, 0FFh 
    mov cx, 6
    int 10h 

    mov dx, offset px2
    int 21h
    mov dx, offset px 
    int 21h

    mov bl, 0CCh
    mov cx, 12
    int 10h 

    mov dx, offset px4 
    int 21h     
    mov dx, offset px2 
    int 21h     

    mov bl, 0FFh
    mov cx, 8
    int 10h 
    
    mov dx, offset px4 
    int 21h 

    ; ROW 2

    mov dx, offset nl 
    int 21h 

    ; ROW 3 

    mov bl, 000h 
    mov cx, 100 
    int 10h

    mov bl, 0FFh 
    mov cx, 4 
    int 10h 

    mov dx, offset px2 
    int 21h

    mov bl, 0CCh
    mov cx, 20
    int 10h 

    mov dx, offset px4 
    int 21h
    mov dx, offset px4
    int 21h
    mov dx, offset px2
    int 21h

    mov bl, 0FFh 
    mov cx, 2 
    int 10h 

    mov dx, offset px 
    int 21h

    ; ROW 3
    mov dx, offset nl 
    int 21h 

    mov bl, 000h
    mov cx, 100 
    int 10h 

    ; ROW 4

    mov bl, 0FFh 
    mov cx, 4
    int 10h 

    mov dx, offset px2
    int 21h
        
    mov bl, 066h
    mov cx, 6
    int 10h 

    mov dx, offset px3
    int 21h

    mov bl, 077h 
    mov cx, 6
    int 10h 
     
    mov dx, offset px3 
    int 21h

    mov bl, 000h 
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h

    mov bl, 077h 
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h 

    mov bl, 0FFh 
    mov cx, 6
    int 10h 

    mov dx, offset px3 
    int 21h

    ; ROW 4

    mov dx, offset nl 
    int 21h

    mov bl, 000h 
    mov cx, 100 
    int 10h 

    ; ROW 5

    mov bl, 0FFh 
    mov cx, 2 
    int 10h 

    mov dx, offset px 
    int 21h 

    mov bl, 066h
    mov cx, 2
    int 10h 

    mov dx, offset px
    int 21h

    mov bl, 077h
    mov cx, 2 
    int 10h 

    mov dx, offset px 
    int 21h 

    mov bl, 066h
    mov cx, 2
    int 10h 

    mov dx, offset px
    int 21h

    mov bl, 077h 
    mov cx, 8 
    int 10h 

    mov dx, offset px4 
    int 21h

    mov bl, 000h 
    mov cx, 2 
    int 10h 

    mov dx, offset px  
    int 21h 

    mov bl, 077h 
    mov cx, 6 
    int 10h 

    mov dx, offset px3 
    int 21h

    mov bl, 0FFh 
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h

    ; ROW 5

    mov dx, offset nl 
    int 21h 

    mov bl, 000h 
    mov cx, 100 
    int 10h

    ; ROW 6

    mov bl, 0FFh 
    mov cx, 2 
    int 10h 

    mov dx, offset px 
    int 21h 

    mov bl, 066h 
    mov cx, 2 
    int 10h 

    mov dx, offset px
    int 21h
    
    mov bl, 077h 
    mov cx, 2 
    int 10h 

    mov dx, offset px 
    int 21h

    mov bl, 066h
    mov cx, 4 
    int 10h 

    mov dx, offset px2
    int 21h

    mov bl, 077h 
    mov cx, 8 
    int 10h 

    mov dx, offset px4 
    int 21h

    mov bl, 000h 
    mov cx, 2 
    int 10h 

    mov dx, offset px 
    int 21h

    mov bl, 077h 
    mov cx, 6 
    int 10h 

    mov dx, offset px3 
    int 21h
    ; ROW 6

    mov dx, offset nl 
    int 21h 

    mov bl, 000h
    mov cx, 100 
    int 10h 

    ; ROW 7
    mov bl, 0FFh
    mov cx, 2 
    int 10h 

    mov dx, offset px
    int 21h

    mov bl, 066h
    mov cx, 4
    int 10h

    mov dx, offset px2 
    int 21h 

    mov bl, 077h
    mov cx, 10
    int 10h 
    
    mov dx, offset px4
    int 21h

    mov dx, offset px 
    int 21h

    mov bl, 000h 
    mov cx, 8
    int 10h 

    mov dx, offset px4 
    int 21h 

    mov bl, 0FFh 
    mov cx, 2
    int 10h 

    mov dx, offset px 
    int 21h
    ; ROW 7
    mov dx, offset nl 
    int 21h 

    mov bl, 000h 
    mov cx, 100 
    int 10h 

    ; ROW 8 
    mov bl, 0FFh 
    mov cx, 26
    int 10h 

    mov dx, offset px4
    int 21h

    mov dx, offset px4
    int 21h

    mov dx, offset px4
    int 21h

    mov dx, offset px2
    int 21h



    ; ROW 8

    int 27h
end main 