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
	CALL LC$value
	ADD esp, 4
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
LC$value:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ecx, edi
	MOV edi, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD edi, eax
	MOV eax, edi
	MOV DWORD PTR [eax + 0], 555
	MOV edi, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD edi, eax
	MOV eax, edi
	MOV eax, DWORD PTR [eax + 0]
	MOV edi, 2
	CDQ
	IDIV edi
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
