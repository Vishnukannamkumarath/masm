.MODEL SMALL
.DATA
N1 DB "ENTER NO:$"
N2  DB 10,13,  "EVEN NO:$"
N3  DB 10,13, "ODD NO:$"
.CODE
MOV AX,@DATA
MOV DS,AX
LEA DX,N1
MOV AH,09H
INT 21H
MOV AH,01H
INT 21H
SUB AL,30H
MOV BL,02H
DIV BL
CMP AH,01H
JE L1
CMP AH,00H
JE L2
L1:
   LEA DX,N3
   MOV AH,09H
   INT 21H
MOV AH,4CH
INT 21H

L2:
   LEA DX,N2
   MOV AH,09H
   INT 21H
MOV AH,4CH
INT 21H
END
