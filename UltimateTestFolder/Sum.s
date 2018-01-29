	.intel_syntax
	.global _Lmain
_Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, 4
	PUSH eax
	CALL _L_halloc
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV eax, 5
	PUSH eax
	CALL _LSumClass$f
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
_LSumClass$f:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	ADD ecx, eax
	MOV esi, ecx
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LSumClass$g
	MOV eax, eax
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
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
	MOV eax, esi
	JMP L$$2
L$$0:
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, esi
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	PUSH eax
	CALL _LSumClass$f
	MOV eax, eax
L$$2:
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LSumClass$g:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
