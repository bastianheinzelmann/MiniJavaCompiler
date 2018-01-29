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
	CALL _LAA$run
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
_LAA$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, 2
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	MOV eax, eax
	MOV eax, eax
	MOV DWORD PTR [eax + 0], 2
	MOV eax, eax
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
	MOV edx, eax
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
