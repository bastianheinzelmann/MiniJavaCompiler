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
	MOV eax, 55
	PUSH eax
	CALL LStckClass$stckme
	ADD esp, 8
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
LStckClass$stckme:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, DWORD PTR [ebp + 8]
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], 1
	JGE L$$4
L$$3:
	MOV eax, 1
L$$4:
	CMP eax, 1
	JNE L$$0
L$$1:
	JMP L$$2
L$$0:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, 1
	PUSH eax
	CALL LStckClass$stckme
	ADD esp, 8
L$$2:
	MOV eax, ebx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
