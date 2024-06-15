;print a character
.model small
.stack 100h
.data
a db 0
.code
MAIN PROC

    mov ax,@data
    mov ds,ax
    mov AH, 2      ; Function to print character

    mov DL, '?'    ; Character to print
    int 21h

    mov AH, 1      ; Function to read a character
    int 21h
    mov a, al     ; Save the character read into BL

    mov AH, 2      ; Print carriage return (CR)
    mov DL, 0DH
    int 21h

    mov DL, 0AH    ; Print line feed (LF)
    int 21h

      ; Print the character read previously
    mov AH, 2
     mov DL, a  
    int 21h

    mov AH, 4CH    ; Exit program
    int 21h
MAIN ENDP
END MAIN
