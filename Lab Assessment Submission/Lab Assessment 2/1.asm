
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

   
 A DB 5 dup(?);
  
 mov BX, OFFSET A
 mov [BX], 1;
 mov [BX+1],2;
 mov [BX+2],3;
 mov [BX+3],4;
 mov [BX+4],5;             
              
                                
ret




