
;Display a string 'DEPERTMENT OF COMPUTER SCIENCE OF ENGINEERING OF IUBAT' 

.model small
.stack 100h
.data
  msg db 'DEPERTMENT OF COMPUTER SCIENCE OF ENGINEERING OF IUBAT $'
  
 .code
 
 MAIN PROC
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
    MAIN ENDP
 END MAIN