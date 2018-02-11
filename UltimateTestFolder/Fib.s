	.intel_syntax
	.global _Lmain
_Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, 0
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	PUSH eax
	MOV eax, 15
	PUSH eax
	CALL _LFibAux$nfib
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LFibAux$nfib:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], 2
	JGE L$$4
L$$3:
	MOV eax, 1
L$$4:
	CMP eax, 1
	JNE L$$0
L$$1:
	MOV eax, 1
	JMP L$$2
L$$0:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, 1
	PUSH eax
	CALL _LFibAux$nfib
	ADD esp, 8
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, 2
	PUSH eax
	CALL _LFibAux$nfib
	ADD esp, 8
	MOV ecx, eax
	MOV eax, ebx
	ADD eax, ecx
	ADD eax, 1
L$$2:
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
