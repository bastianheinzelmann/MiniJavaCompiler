	.intel_syntax
	.global _Lmain
_Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, 0
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	MOV eax, 5
	PUSH eax
	MOV eax, 10
	PUSH eax
	CALL _LB$run
	ADD esp, 12
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, 0
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LB$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, esi
	MOV ecx, edi
	MOV ebx, 0
	MOV eax, 0
	CMP eax, 1
	JGE L$$7
L$$6:
	MOV ebx, 1
L$$7:
	CMP ebx, 1
	JNE L$$4
L$$3:
	MOV ebx, 0
	MOV eax, DWORD PTR [ebp + 12]
	MOV esi, DWORD PTR [ebp + 8]
	IMUL esi, DWORD PTR [ebp + 8]
	ADD eax, esi
	MOV esi, DWORD PTR [ebp + 12]
	ADD esi, DWORD PTR [ebp + 8]
	MOV esi, esi
	IMUL esi, DWORD PTR [ebp + 8]
	CMP eax, esi
	JGE L$$9
L$$8:
	MOV ebx, 1
L$$9:
	MOV ebx, ebx
	MOV eax, 1
	JMP L$$5
L$$4:
	MOV ebx, 0
	MOV eax, 0
L$$5:
	MOV eax, eax
	AND eax, ebx
	CMP eax, 1
	JNE L$$0
L$$1:
	MOV eax, DWORD PTR [ebp + 12]
	JMP L$$2
L$$0:
	MOV eax, DWORD PTR [ebp + 8]
L$$2:
	MOV eax, eax
	MOV eax, eax
	MOV ebx, DWORD PTR [ebp + -4]
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
