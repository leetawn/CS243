.model small
.stack 100

.data
    ts db "  $", 0Ah
    px db " $", 0Ah
    px2 db "        $", 0Ah
    px3 db "                $", 0Ah
    nl db 0Ah, '$'

.code
start:
    mov ax, @data
    mov ds, ax
    
    mov ah, 09h

    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h


    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h


    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h


    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h


    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h


    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 6Eh
    mov cx, 8d
    int 10h

    mov dx, offset px2
    int 21h

    mov dx, offset nl
    int 21h

    ; ROW 2

    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h


    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h


    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h


    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px

    int 21h
    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 6Eh
    mov cx, 12d
    int 10h

    mov dx, offset px3
    int 21h

    mov dx, offset nl
    int 21h
               
    ; ROW 3

    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h


    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h


    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h


    mov bl, 00h
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h

    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 44h
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h

    mov bl, 6Eh
    mov cx, 10d
    int 10h

    mov dx, offset px3
    int 21h

    ; ROW 4

    mov dx, offset nl
    int 21h


    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h



    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 44h
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h

    mov bl, 44h
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h

    mov bl, 44h
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h



    mov bl, 6Eh
    mov cx, 10d
    int 10h

    mov dx, offset px3
    int 21h

    mov dx, offset nl
    int 21h

    ; ROW 5
    ; ROW 4

    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h
    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 00h
    mov cx, 1d
    int 10h

    mov dx, offset px
    int 21h

    mov bl, 44h
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h

    mov bl, 44h
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h


    mov bl, 44h
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h

    mov bl, 6Eh
    mov cx, 6d
    int 10h

    mov dx, offset px3
    int 21h

    mov dx, offset nl
    int 21h

    ; ROW 6
    mov bl, 00h
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h
    mov bl, 00h
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h
    mov bl, 00h
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h
    mov bl, 00h
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h

    mov bl, 6eh
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h
    mov bl, 6eh
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h
    mov bl, 6eh
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h

    mov bl, 00h
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h

    mov bl, 6eh
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h
    mov bl, 6eh
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h
    mov bl, 6eh
    mov cx, 2d
    int 10h

    mov dx, offset ts
    int 21h







    int 27h

end start