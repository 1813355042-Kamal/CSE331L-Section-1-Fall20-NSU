
.MODEL SMALL
 .STACK 100H

 .DATA
    PROMPT  DB  0DH,0AH,'E if even, O if odd: $'

 .CODE
   MAIN PROC
     MOV AX, @DATA                
     MOV DS, AX

    

     MOV BL, 6                    

     LEA DX, PROMPT             
     MOV AH, 9
     INT 21H

     TEST BL, 01H                

     JNE @ODD                    

     MOV AH, 2                   
     MOV DL, "E"
     INT 21H

     JMP @EXIT                   

     @ODD:                       
       MOV AH, 2                 
       MOV DL, "O"
       INT 21H

     @EXIT:                      

     MOV AH, 4CH                 
     INT 21H
   MAIN ENDP 
 END MAIN


