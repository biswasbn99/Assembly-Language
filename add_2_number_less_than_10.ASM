; Write a program to (a) display a "?", (b) read two decimal digits 
;whose sum "is less than 10, (c) display them and their sum on the 
;next line, with an appropriate message. 
;Sample execution: 
;?27 
;THE SUM OF 2 AND 7 IS 9 

.model small
.stack 100h
.data
   
   a db 0
   b db 0 
   
   msg1 db 'THE SUM OF 2 AND 7 IS $'   
 
   
    
 .code
     
     MAIN PROC  
        
        
            mov ax,@data
            mov ds,ax 
                      
                mov ah,2
                mov dl, '?'
                int 21h
                      
            mov ah,1
            int 21h     ;input value of a
            mov a,al
            
            mov ah,1
            int 21h     ; input value of b
            mov b,al 
            
            
            add a,al
            sub a,30h  
            
           mov ah,2
           mov dl, 0ah
           int 21h
           mov dl,0dh
           int 21h
           
           lea dx,msg1
           mov ah,9       ;print msg1
           int 21h
           
          
           mov ah,2
           mov dl,a         ;print sum
           int 21h
          
          
                
                mov ah,4ch   ;exit
                int 21h
                
                main endp
     end main
           
                    
                    
                      
             
            
               
         