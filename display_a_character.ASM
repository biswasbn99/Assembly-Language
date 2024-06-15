;Write an assembly  program will read a character from the keyboard and display 
;it at the beginning of the next line. 
;We start by displaying a question mark

.model samll
.stack 100h
.data
  a db 0
  
  .code
  
  MAIN PROC
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,1
    int 21h
    mov a,al
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,2
    mov dl,a
    int 21h
    
    mov ah,4ch
    int 21h
    
    MAIN ENDP
  END MAIN

