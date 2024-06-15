.MODEL SMALL
.STACK 100H
.DATA
    num1 DW 5     ; First number
    num2 DW 10    ; Second number
    num3 DW 2     ; Third number
    result DW ?   ; To store the final result
.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX

    ; Load the first number into AX
    MOV AX, num1

    ; Multiply the first number with the second number
    MOV BX, num2
    MUL BX        ; AX = AX * BX (result in AX)

    ; Multiply the result with the third number
    MOV BX, num3
    MUL BX        ; AX = AX * BX (result in AX:DX)

    ; Store the final result
    MOV result, AX

    ; Exit the program
    MOV AH, 4CH   ; Terminate program function
    INT 21H       ; Interrupt 21h - DOS service

MAIN ENDP
END
