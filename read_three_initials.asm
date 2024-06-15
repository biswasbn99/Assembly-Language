   
; Write a program to (a) prompt the user, (b) read first, middle, and 
;last initials of a person's name, and (c) display them down the 
;left margin. 
;Sample execution:
 
;ENTER THREE INITIALS: JFK 
;J 
;F
;K 

.model small
.stack 100h 
.data
a db 0
b db 0
c db 0
  msg db 'ENTER THREE INITIALS : $'
  
  .code
  MAIN PROC
  
   mov ax,@data
   mov ds,ax
   
   lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov a,al
    
    mov ah,1
    int 21h
    mov b,al
    
    mov ah,1
    int 21h
    mov c,al
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
      
      mov ah,2
      mov dl,a
      int 21h 
      
       mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h 
    
      mov ah,2
      mov dl,b
      int 21h 
      
       mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h 
    
      mov ah,2
      mov dl,c
      int 21h 
              
      mov ah,4ch
      int 21h
      
      main endp
  end main
      
           
               
         
