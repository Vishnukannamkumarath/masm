.MODEL SMALL
.DATA
N1 DB "ENTER LENGTH OF THE STRING:$"
N2 DB 10,13,"ENTER STRING:$"
AR DB 20H DUP(?)
BR DB 20H DUP(?)
N3 DB 10,13,"REVERSE STRING IS:$"
.CODE
MOV AX,@DATA
MOV DS,AX
LEA DX,N1
MOV AH,09H
INT 21H
MOV AH,01H
SUB AL,30H
MOV CL,AL
LEA DX,N2
MOV AH,09H
INT 21H
MOV AR,3FH
INT 21H
MOV SI,OFFSET AR
L:CMP [SI],$
INC SI
JNE L
L1:MOV AH,[SI]
MOV BR,AL
INC BR
DEC SI
CMP AL,$
JNE L1
MOV DX,BR
MOV AH,09H
INT 21H
MOV AH,4CH
INT 21H
END
