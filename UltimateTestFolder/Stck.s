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
	MOV eax, 55
	PUSH eax
	CALL _LStckClass$stckme
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
_LStckClass$stckme:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 8]
	MOV ebx, eax
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, 1
	JGE L$$4
L$$3:
	MOV ecx, 1
L$$4:
	CMP ecx, 1
	JNE L$$0
L$$1:
	JMP L$$2
L$$0:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	PUSH eax
	CALL _LStckClass$stckme
	MOV eax, eax
L$$2:
	MOV eax, ebx
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
