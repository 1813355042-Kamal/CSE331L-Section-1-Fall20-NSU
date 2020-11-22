
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

 N1 EQU 1; 
 N2 EQU 2;
 N3 EQU 3;
 N4 EQU 4;

 MOV AX, 0;
 ADD AX, N1;
 ADD AX, N2;
 ADD AX, N3;
 ADD AX, N4;
 
 MOV BX,AX;

ret




