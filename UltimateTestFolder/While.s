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
	CALL _LWhileClass$run
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
_LWhileClass$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV esi, 0
	MOV ebx, 1
L$$0:
	MOV eax, 0
	CMP ebx, 11
	JGE L$$4
L$$3:
	MOV eax, 1
L$$4:
	CMP eax, 1
	JNE L$$1
L$$2:
	MOV eax, esi
	ADD eax, ebx
	MOV esi, eax
	MOV eax, esi
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$0
L$$1:
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
