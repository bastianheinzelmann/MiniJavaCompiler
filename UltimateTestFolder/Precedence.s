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
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	MOV eax, 5
	PUSH eax
	MOV eax, 10
	PUSH eax
	CALL _LB$run
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
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
	MOV esi, esi
	MOV edx, edi
	MOV ecx, 0
	MOV eax, 0
	CMP eax, 1
	JGE L$$7
L$$6:
	MOV ecx, 1
L$$7:
	CMP ecx, 1
	JNE L$$4
L$$3:
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	MOV ebx, DWORD PTR [ebp + 8]
	MOV edi, ebx
	MOV ebx, DWORD PTR [ebp + 8]
	IMUL edi, ebx
	ADD eax, edi
	MOV ebx, DWORD PTR [ebp + 12]
	MOV edi, ebx
	MOV ebx, DWORD PTR [ebp + 8]
	ADD edi, ebx
	MOV edi, edi
	MOV ebx, DWORD PTR [ebp + 8]
	IMUL edi, ebx
	CMP eax, edi
	JGE L$$9
L$$8:
	MOV ecx, 1
L$$9:
	MOV ecx, ecx
	MOV eax, 1
	JMP L$$5
L$$4:
	MOV ecx, 0
	MOV eax, 0
L$$5:
	MOV eax, eax
	AND eax, ecx
	CMP eax, 1
	JNE L$$0
L$$1:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	JMP L$$2
L$$0:
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
L$$2:
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edx
	MOV esp, ebp
	POP ebp
	RET
