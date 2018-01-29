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
	CALL _LTestEqMain$run
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
_LTestEqMain$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV edx, 0
	MOV ecx, 4
	MOV eax, 4
	ADD eax, 1
	CMP ecx, eax
	JGE L$$4
L$$3:
	MOV edx, 1
L$$4:
	CMP edx, 1
	JNE L$$1
L$$0:
	MOV edx, 0
	MOV ecx, 4
	MOV eax, 4
	ADD eax, 1
	CMP ecx, eax
	JGE L$$6
L$$5:
	MOV edx, 1
L$$6:
	MOV ecx, edx
	MOV eax, 1
	JMP L$$2
L$$1:
	MOV ecx, 0
	MOV eax, 0
L$$2:
	MOV eax, eax
	AND eax, ecx
	MOV eax, eax
	CMP eax, 1
	JNE L$$7
L$$8:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	JMP L$$9
L$$7:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
L$$9:
	MOV eax, 0
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
