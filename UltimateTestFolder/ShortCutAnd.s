	.intel_syntax
	.global _Lmain
Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, 0
	PUSH eax
	CALL L_halloc
	ADD esp, 4
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL LTestAnd$run
	ADD esp, 8
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
LTestAnd$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	CMP DWORD PTR [ebp + 8], 1
	JNE L$$4
L$$3:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL LTestAnd$sideEffect
	ADD esp, 4
	MOV ecx, eax
	MOV eax, 1
	JMP L$$5
L$$4:
	MOV ecx, 0
	MOV eax, 0
L$$5:
	AND eax, ecx
	CMP eax, 1
	JNE L$$0
L$$1:
	MOV eax, 1
	JMP L$$2
L$$0:
	MOV eax, 0
L$$2:
	MOV esp, ebp
	POP ebp
	RET
LTestAnd$sideEffect:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, 0
	SUB eax, 9999
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	SUB eax, 9999
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	SUB eax, 9999
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	SUB eax, 9999
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	SUB eax, 9999
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 1
	MOV esp, ebp
	POP ebp
	RET
