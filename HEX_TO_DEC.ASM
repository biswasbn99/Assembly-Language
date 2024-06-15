;Write· a program to read one of the hex digits A-E, and display it 
;on the next line in decimal. 
;Sample execution: 
;ENTER A HEX DIGIT: C 
;IN DECIMAL IT IS 12

.model small
.stack 100h
.data
  a db 0
  msg1 db 'ENTER A HEX DIGIT :  $' 
  msg2 db 'IN DECIMAL IT IS  $'
  
  .code
  
  MAIN PROC
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov a,al 
    sub a,17d     ; IN C-> 67-17=50='2'
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    
    mov ah,2
    mov dl,49d  ;print 1 at the first time
    int 21h
    
    mov ah,2
    mov dl,a
    int 21h

    mov ah,4CH
    int 21h
    
   main endp
  end main
    
  