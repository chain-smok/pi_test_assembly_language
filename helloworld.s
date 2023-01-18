.global _start
_start:
	MOV R0,#1
	LDR R1,=message
	LDR R2,=len
	MOV R7,#4
	//R7 keeps track of what we want the operating system to do
	//if program interrupt,os will check the value of r7
	//if os knows the value of R7 is 4,it will know I want to write something to screen
	SWI 0
	
	MOV R7,#1
	SWI 0
	//if the value of r7 is 1,it means telling the os terminate program
	

.data
message:
	.asciz "hello world\n"
	//asciz declares a string,but it has null terminator
	//ascii doesn't have null terminator
len = .-message

