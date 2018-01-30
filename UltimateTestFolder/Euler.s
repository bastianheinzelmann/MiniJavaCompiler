	.intel_syntax
	.global _Lmain
Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, 0
	PUSH eax
	CALL L_halloc
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL LE1$run
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL L_println_int
	MOV eax, eax
	MOV eax, 0
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
LE1$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 16
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV ebx, 9000
	MOV eax, ebx
	ADD eax, 9
	MOV eax, eax
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, ebx
	ADD eax, 9
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL L_halloc
	MOV ecx, eax
	MOV ecx, ecx
	MOV eax, ebx
	ADD eax, 9
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ecx
	MOV DWORD PTR [ebp + -12], eax
	MOV ebx, 0
	MOV eax, DWORD PTR [ebp + -12]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 0
	MOV eax, DWORD PTR [ebp + -12]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, 1
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 2
	MOV ecx, 2
L$$0:
	MOV eax, 0
	MOV edx, DWORD PTR [ebp + -16]
	CMP ecx, edx
	JGE L$$4
L$$3:
	MOV eax, 1
L$$4:
	CMP eax, 1
	JNE L$$1
L$$2:
	MOV eax, DWORD PTR [ebp + -12]
	MOV esi, eax
	MOV edx, 4
	MOV eax, ecx
	ADD eax, 1
	IMUL edx, eax
	ADD esi, edx
	MOV eax, esi
	MOV DWORD PTR [eax + 0], 1
	MOV eax, ecx
	ADD eax, 1
	MOV ecx, eax
	JMP L$$0
L$$1:
L$$5:
	MOV ecx, 0
	MOV eax, 9
	MOV edx, DWORD PTR [ebp + -16]
	CMP eax, edx
	JGE L$$9
L$$8:
	MOV ecx, 1
L$$9:
	CMP ecx, 1
	JNE L$$6
L$$7:
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	SUB eax, 1
	MOV ecx, eax
L$$10:
	MOV edx, 0
	MOV eax, 0
	CMP eax, ecx
	JGE L$$14
L$$13:
	MOV edx, 1
L$$14:
	CMP edx, 1
	JNE L$$11
L$$12:
	MOV eax, DWORD PTR [ebp + -12]
	MOV esi, eax
	MOV edx, 4
	MOV eax, ecx
	ADD eax, 1
	IMUL edx, eax
	ADD esi, edx
	MOV esi, esi
	MOV edx, ebx
	MOV eax, ebx
	CDQ
	IDIV ecx
	MOV eax, eax
	IMUL eax, ecx
	SUB edx, eax
	MOV DWORD PTR [esi + 0], edx
	MOV esi, 10
	MOV eax, DWORD PTR [ebp + -12]
	MOV edx, eax
	MOV eax, 4
	MOV edi, ecx
	SUB edi, 1
	MOV edi, edi
	ADD edi, 1
	IMUL eax, edi
	ADD edx, eax
	MOV eax, edx
	IMUL esi, DWORD PTR [eax + 0]
	MOV edx, esi
	MOV eax, ebx
	CDQ
	IDIV ecx
	ADD edx, eax
	MOV ebx, edx
	MOV eax, ecx
	SUB eax, 1
	MOV ecx, eax
	JMP L$$10
L$$11:
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL LE1$print
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -16], eax
	JMP L$$5
L$$6:
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
LE1$print:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, 0
	SUB eax, 1
	MOV ebx, eax
L$$15:
	MOV edx, 0
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	CDQ
	IDIV ebx
	MOV ecx, 0
	SUB ecx, 9
	CMP eax, ecx
	JGE L$$19
L$$18:
	MOV edx, 1
L$$19:
	CMP edx, 1
	JNE L$$16
L$$17:
	MOV eax, ebx
	IMUL eax, 10
	MOV ebx, eax
	JMP L$$15
L$$16:
L$$20:
	MOV eax, 0
	CMP ebx, 0
	JGE L$$24
L$$23:
	MOV eax, 1
L$$24:
	CMP eax, 1
	JNE L$$21
L$$22:
	MOV ecx, 48
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	CDQ
	IDIV ebx
	SUB ecx, eax
	MOV eax, ecx
	PUSH eax
	CALL L_write
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	CDQ
	IDIV ebx
	MOV eax, eax
	IMUL eax, ebx
	SUB ecx, eax
	MOV eax, ecx
	MOV eax, ebx
	MOV ecx, 10
	CDQ
	IDIV ecx
	MOV ebx, eax
	JMP L$$20
L$$21:
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
