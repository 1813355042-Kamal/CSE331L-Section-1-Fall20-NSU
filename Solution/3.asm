.MODEL SMALL
.STACK 100H
.DATA  
STRING DB 100 DUP(?)
A DB "Please Enter a String: $"
B DB 0DH, 0AH, "Total Number of Vowels in the String: $"
VOWELS DW 0     
.CODE
MAIN PROC
    
     MOV AX, @DATA
     MOV DS, AX
     MOV ES, AX
     
     MOV AH, 9
     LEA DX, A
     INT 21H
     
     LEA DI, STRING
 
     MOV AH, 1
     READ:
     INT 21H
     CMP AL, 0DH
     JE ENDOFSTRING
     STOSB
     JMP READ
     
     ENDOFSTRING:
     MOV AL, "$"
     STOSB
     
     XOR BX, BX
     
     COUNT:
     MOV AL, STRING[BX]
     CMP AL, "$"
     JE EXIT
     CMP AL, "a"
     JE VOWEL
     CMP AL, "e"
     JE VOWEL
     CMP AL, "i"
     JE VOWEL
     CMP AL, "o"
     JE VOWEL
     CMP AL, "u"
     JE VOWEL
     CMP AL, "A"
     JE VOWEL
     CMP AL, "E"
     JE VOWEL
     CMP AL, "I"
     JE VOWEL
     CMP AL, "O"
     JE VOWEL
     CMP AL, "U"
     JE VOWEL      
     INC BX
     JMP COUNT
     
     VOWEL:
     MOV CX, VOWELS
     INC CX
     MOV VOWELS, CX
     INC BX 
     JMP COUNT     
         
     EXIT:
     
     MOV AH, 9
     LEA DX, B
     INT 21H
     
     MOV AH, 2
     MOV DX, VOWELS
     ADD DX, 30H
     INT 21H
     
    MAIN ENDP
END MAIN