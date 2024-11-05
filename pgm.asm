.model small
DATA
	m1 db 10,13 "Hello world $"
CODE
	MOV AX,DATA
	MOV DS,AX
	LEA DX,m1
	MOV AH,09H
	INT 21H
	MOV AH,4CH
	INT 21H
	END

