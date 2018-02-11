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
	CALL LAA$run
	ADD esp, 4
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
LAA$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, 2
	ADD eax, 1
	IMUL eax, 4
	PUSH eax
	CALL L_halloc
	ADD esp, 4
	MOV DWORD PTR [eax + 0], 2
	MOV ebx, eax
	MOV edx, 4
	MOV ecx, 0
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], 5
	MOV ebx, eax
	MOV edx, 4
	MOV ecx, 1
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], 10
	MOV ecx, 0
	CMP ecx, DWORD PTR [eax + 0]
	JGE L$$1
L$$0:
	MOV ecx, 1
	JMP L$$2
L$$1:
	MOV ecx, 0
L$$2:
	MOV ebx, ecx
	MOV ecx, 0
	CMP ecx, 0
	JL L$$4
L$$3:
	MOV edx, 1
	JMP L$$5
L$$4:
	MOV edx, 0
L$$5:
	MOV ecx, ebx
	AND ecx, edx
	CMP ecx, 1
	JNE L$$7
L$$6:
	MOV edx, eax
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$8
L$$7:
	MOV eax, 1
	PUSH eax
	CALL L_raise
	ADD esp, 4
L$$8:
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
