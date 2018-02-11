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
	MOV eax, 5
	PUSH eax
	MOV eax, 10
	PUSH eax
	CALL LS$run
	ADD esp, 12
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
LS$Init:
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
	MOV eax, 0
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
LS$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL LS$Init
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + 12]
	MOV esp, ebp
	POP ebp
	RET
