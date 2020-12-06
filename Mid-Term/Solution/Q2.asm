
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
 .STACK 100H

 .DATA
    PROMPT  DB  "Numbers: $"       
    PROMPT_1  DB  "Sum= $"

 .CODE
   MAIN PROC
     MOV AX, @DATA                
     MOV DS, AX

     LEA DX, PROMPT               
     MOV AH, 9
     INT 21H

     MOV CX, 10  
     MOV BL,0                 

     MOV AH, 2                    
     MOV DL, 48                   

     @LOOP:                       
       INT 21H                   

       INC DL 
       ADD BL,DL
                           
       DEC CX                     
     JNZ @LOOP
      
     LEA DX, PROMPT               
     MOV AH, 9
     INT 21H  
     
     MOV DL,BL
     MOV AH,2
     INT 21H
                        

     MOV AH, 4CH                  
     INT 21H
   MAIN ENDP
 END MAIN

ret




