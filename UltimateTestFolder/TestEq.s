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
	CALL LTestEqMain$run
	ADD esp, 4
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
LTestEqMain$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, 0
	MOV ecx, 4
	MOV eax, 4
	ADD eax, 1
	CMP ecx, eax
	JGE L$$4
L$$3:
	MOV edx, 1
L$$4:
	CMP edx, 1
	JNE L$$1
L$$0:
	MOV edx, 0
	MOV ecx, 4
	MOV eax, 4
	ADD eax, 1
	CMP ecx, eax
	JGE L$$6
L$$5:
	MOV edx, 1
L$$6:
	MOV ecx, edx
	MOV eax, 1
	JMP L$$2
L$$1:
	MOV ecx, 0
	MOV eax, 0
L$$2:
	AND eax, ecx
	CMP eax, 1
	JNE L$$7
L$$8:
	MOV eax, 1
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	JMP L$$9
L$$7:
	MOV eax, 0
	PUSH eax
	CALL L_println_int
	ADD esp, 4
L$$9:
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
