DATA SEGMENT   
    
MSG1 DB 10,13,'Lowercase letter input:- $'
MSG2 DB 10,13,'Uppercase form: $'
P1 LABEL BYTE                           

M1 DB 0FFH
L1 DB ?
P11 DB 0FFH DUP ('$')
DATA ENDS
DISPLAY MACRO MSG
MOV AH,9
LEA DX,MSG
INT 21H
ENDM
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:
MOV AX,DATA
MOV DS,AX
DISPLAY MSG1
LEA DX,P1
MOV AH,0AH
INT 21H
DISPLAY MSG2
LEA SI,P11
MOV CL,L1
MOV CH,0
CHECK:
CMP [SI],61H
JB DONE
CMP [SI],5BH
UPR: SUB [SI],20H
DONE: INC SI
LOOP CHECK
DISPLAY P11
MOV AH,4CH
INT 21H
CODE ENDS
END START