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
	MOV eax, 5
	PUSH eax
	MOV eax, 10
	PUSH eax
	CALL LB$run
	ADD esp, 12
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
LB$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, 0
	MOV eax, 0
	CMP eax, 1
	JGE L$$7
L$$6:
	MOV esi, 1
L$$7:
	CMP esi, 1
	JNE L$$4
L$$3:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 12]
	MOV edi, DWORD PTR [ebp + 8]
	IMUL edi, DWORD PTR [ebp + 8]
	ADD eax, edi
	MOV edi, DWORD PTR [ebp + 12]
	ADD edi, DWORD PTR [ebp + 8]
	IMUL edi, DWORD PTR [ebp + 8]
	CMP eax, edi
	JGE L$$9
L$$8:
	MOV esi, 1
L$$9:
	MOV eax, 1
	JMP L$$5
L$$4:
	MOV esi, 0
	MOV eax, 0
L$$5:
	AND eax, esi
	CMP eax, 1
	JNE L$$0
L$$1:
	MOV eax, DWORD PTR [ebp + 12]
	JMP L$$2
L$$0:
	MOV eax, DWORD PTR [ebp + 8]
L$$2:
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
