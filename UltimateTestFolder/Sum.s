	.intel_syntax
	.global _Lmain
Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, 4
	PUSH eax
	CALL L_halloc
	ADD esp, 4
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV eax, 5
	PUSH eax
	CALL LSumClass$f
	ADD esp, 12
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
LSumClass$f:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 12]
	ADD eax, DWORD PTR [ebp + 8]
	MOV esi, eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL LSumClass$g
	ADD esp, 8
	MOV ecx, eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], 1
	JGE L$$4
L$$3:
	MOV eax, 1
L$$4:
	CMP eax, 1
	JNE L$$0
L$$1:
	MOV eax, esi
	JMP L$$2
L$$0:
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, esi
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, 1
	PUSH eax
	CALL LSumClass$f
	ADD esp, 12
L$$2:
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
LSumClass$g:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV eax, DWORD PTR [ebp + 8]
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
