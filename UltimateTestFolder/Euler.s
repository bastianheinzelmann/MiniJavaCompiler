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
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _LE1$run
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, 0
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LE1$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 24
	MOV eax, ebx
	MOV DWORD PTR [ebp + -24], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -16], eax
	MOV ebx, 9000
	MOV eax, ebx
	ADD eax, 9
	MOV eax, eax
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, ebx
	ADD eax, 9
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ecx, eax
	MOV ecx, ecx
	MOV eax, ebx
	ADD eax, 9
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ecx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, 0
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV ebx, eax
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], 0
	MOV eax, DWORD PTR [ebp + -8]
	MOV ebx, eax
	MOV ecx, 4
	MOV eax, 1
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], 2
	MOV esi, 2
L$$0:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -12]
	CMP esi, ecx
	JGE L$$4
L$$3:
	MOV eax, 1
L$$4:
	CMP eax, 1
	JNE L$$1
L$$2:
	MOV eax, DWORD PTR [ebp + -8]
	MOV ebx, eax
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], 1
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$0
L$$1:
L$$5:
	MOV ecx, 0
	MOV eax, 9
	MOV ebx, DWORD PTR [ebp + -12]
	CMP eax, ebx
	JGE L$$9
L$$8:
	MOV ecx, 1
L$$9:
	CMP ecx, 1
	JNE L$$6
L$$7:
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	SUB eax, 1
	MOV esi, eax
L$$10:
	MOV ecx, 0
	MOV eax, 0
	CMP eax, esi
	JGE L$$14
L$$13:
	MOV ecx, 1
L$$14:
	CMP ecx, 1
	JNE L$$11
L$$12:
	MOV eax, DWORD PTR [ebp + -8]
	MOV ebx, eax
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + -4]
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	CDQ
	IDIV esi
	MOV eax, eax
	IMUL eax, esi
	SUB ecx, eax
	MOV DWORD PTR [ebx + 0], ecx
	MOV ebx, 10
	MOV eax, DWORD PTR [ebp + -8]
	MOV ecx, eax
	MOV eax, 4
	MOV edi, esi
	SUB edi, 1
	MOV edi, edi
	ADD edi, 1
	IMUL eax, edi
	ADD ecx, eax
	MOV eax, ecx
	IMUL ebx, DWORD PTR [eax + 0]
	MOV ecx, ebx
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	CDQ
	IDIV esi
	ADD ecx, eax
	MOV eax, ecx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, esi
	SUB eax, 1
	MOV esi, eax
	JMP L$$10
L$$11:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	CALL _LE1$print
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -12], eax
	JMP L$$5
L$$6:
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -24]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -20]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -16]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LE1$print:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV eax, 0
	SUB eax, 1
	MOV ebx, eax
L$$15:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 8]
	CDQ
	IDIV ebx
	MOV ecx, 0
	SUB ecx, 9
	CMP eax, ecx
	JGE L$$19
L$$18:
	MOV esi, 1
L$$19:
	CMP esi, 1
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
	CDQ
	IDIV ebx
	SUB ecx, eax
	MOV eax, ecx
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, DWORD PTR [ebp + 8]
	CDQ
	IDIV ebx
	MOV eax, eax
	IMUL eax, ebx
	SUB ecx, eax
	MOV DWORD PTR [ebp + 8], ecx
	MOV eax, ebx
	MOV ecx, 10
	CDQ
	IDIV ecx
	MOV ebx, eax
	JMP L$$20
L$$21:
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
