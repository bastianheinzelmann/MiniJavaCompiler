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
	CALL LEffectsClass$run
	ADD esp, 4
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
LEffectsClass$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, 4
	PUSH eax
	CALL L_halloc
	ADD esp, 4
	MOV edi, eax
	MOV eax, edi
	PUSH eax
	MOV eax, 1
	PUSH eax
	CALL LBit$set
	ADD esp, 8
	SUB eax, 1
	MOV esi, eax
	MOV eax, edi
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL LBit$set
	ADD esp, 8
	MOV ebx, eax
	MOV eax, edi
	PUSH eax
	CALL LBit$value
	ADD esp, 4
	MOV edi, eax
	MOV edx, esi
	MOV ecx, ebx
	MOV eax, 0
	SUB eax, edi
	SUB ecx, eax
	SUB edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
LBit$set:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [esi + 0], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
LBit$value:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD esi, eax
	MOV eax, esi
	MOV eax, DWORD PTR [eax + 0]
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
