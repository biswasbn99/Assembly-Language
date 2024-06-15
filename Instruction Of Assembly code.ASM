.model small
.stack 100h
.data
    a db 3
    b db 2
.code
MAIN PROC
    mov ax, @data     ; Load the address of the data segment into AX
    mov ds, ax        ; Set the data segment register to point to the data segment

    mov al, b         ; Move the value of 'b' into AL register
    mov bl, a         ; Move the value of 'a' into BL register

    mul bl            ; Multiply AL by BL; result in AX
    mov dx, 0         ; Clear DX (since 'mul' instruction might affect it)
    mov bx, 10        ; Load BX with divisor (for ASCII conversion)

    div bx            ; Divide AX by BX; quotient in AL, remainder in AH
    add ah, '0'       ; Convert remainder to ASCII character
    add al, '0'       ; Convert quotient to ASCII character

    mov dl, ah        ; Move remainder (tens place) to DL
    mov ah, 2         ; AH=2, indicating we want to print character
    int 21h           ; DOS interrupt to print the tens place

    mov dl, al        ; Move quotient (ones place) to DL
    int 21h           ; DOS interrupt to print the ones place

    mov ah, 4Ch       ; AH=4Ch, indicating DOS exit function
    int 21h           ; DOS interrupt to exit the program

MAIN ENDP
END MAIN


