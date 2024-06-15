; write a program to convert a lowercase letter to an uppercase letter 

.model small
.stack 100h
.data
a db 0
 msg1 db 'ENTER A LOWERCASE LETTER : $'
 msg2 db 'IN UPPERCASE IT IS :  $'
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
    sub a,20h
    
     
     mov ah,2
     mov dl,0dh
     int 21h
     mov dl,0ah
     int 21h
            
            
     lea dx,msg2
     mov ah,9
     int 21h
     
     mov ah,2 
     
     mov dl,a
     int 21h
     
     mov ah,4ch
     int 21h
     
     MAIN ENDP
 END MAIN
    
    
     