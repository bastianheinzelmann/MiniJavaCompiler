	.intel_syntax
	.global _Lmain
_Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, 0
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	PUSH eax
	CALL _LE1$run
	ADD esp, 4
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LE1$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 20
	MOV eax, ebx
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -12], eax
	MOV ebx, 9000
	MOV eax, ebx
	ADD eax, 9
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, ebx
	ADD eax, 9
	ADD eax, 1
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	ADD eax, 9
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ecx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + -4]
	MOV ebx, eax
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], 0
	MOV eax, DWORD PTR [ebp + -4]
	MOV ebx, eax
	MOV ecx, 4
	MOV eax, 1
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], 2
	MOV ebx, 2
L$$0:
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + -8]
	CMP ebx, eax
	JGE L$$4
L$$3:
	MOV ecx, 1
L$$4:
	CMP ecx, 1
	JNE L$$1
L$$2:
	MOV eax, DWORD PTR [ebp + -4]
	MOV edi, eax
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edi, ecx
	MOV eax, edi
	MOV DWORD PTR [eax + 0], 1
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$0
L$$1:
L$$5:
	MOV ebx, 0
	MOV ecx, 9
	MOV eax, DWORD PTR [ebp + -8]
	CMP ecx, eax
	JGE L$$9
L$$8:
	MOV ebx, 1
L$$9:
	CMP ebx, 1
	JNE L$$6
L$$7:
	MOV eax, DWORD PTR [ebp + -8]
	SUB eax, 1
	MOV ebx, eax
L$$10:
	MOV ecx, 0
	MOV eax, 0
	CMP eax, ebx
	JGE L$$14
L$$13:
	MOV ecx, 1
L$$14:
	CMP ecx, 1
	JNE L$$11
L$$12:
	MOV eax, DWORD PTR [ebp + -4]
	MOV edi, eax
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edi, ecx
	MOV ecx, esi
	MOV eax, esi
	CDQ
	IDIV ebx
	IMUL eax, ebx
	SUB ecx, eax
	MOV DWORD PTR [edi + 0], ecx
	MOV ecx, ebx
	SUB ecx, 1
	MOV eax, DWORD PTR [ebp + -4]
	CMP ecx, DWORD PTR [eax + 0]
	JGE L$$16
L$$15:
	MOV eax, 1
	JMP L$$17
L$$16:
	MOV eax, 0
L$$17:
	MOV edi, eax
	MOV eax, ebx
	SUB eax, 1
	CMP eax, 0
	JL L$$19
L$$18:
	MOV ecx, 1
	JMP L$$20
L$$19:
	MOV ecx, 0
L$$20:
	MOV eax, edi
	AND eax, ecx
	CMP eax, 1
	JNE L$$22
L$$21:
	MOV eax, DWORD PTR [ebp + -4]
	MOV ecx, eax
	MOV eax, 4
	MOV edi, ebx
	SUB edi, 1
	ADD edi, 1
	IMUL eax, edi
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$23
L$$22:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$23:
	MOV eax, 10
	IMUL eax, ecx
	MOV ecx, eax
	MOV eax, esi
	CDQ
	IDIV ebx
	ADD ecx, eax
	MOV esi, ecx
	MOV eax, ebx
	SUB eax, 1
	MOV ebx, eax
	JMP L$$10
L$$11:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LE1$print
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + -8]
	SUB eax, 1
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$5
L$$6:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -20]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -16]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -12]
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
	MOV eax, 0
	SUB eax, 1
	MOV ebx, eax
L$$24:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 8]
	CDQ
	IDIV ebx
	MOV ecx, 0
	SUB ecx, 9
	CMP eax, ecx
	JGE L$$28
L$$27:
	MOV esi, 1
L$$28:
	CMP esi, 1
	JNE L$$25
L$$26:
	MOV eax, ebx
	IMUL eax, 10
	MOV ebx, eax
	JMP L$$24
L$$25:
L$$29:
	MOV eax, 0
	CMP ebx, 0
	JGE L$$33
L$$32:
	MOV eax, 1
L$$33:
	CMP eax, 1
	JNE L$$30
L$$31:
	MOV ecx, 48
	MOV eax, DWORD PTR [ebp + 8]
	CDQ
	IDIV ebx
	SUB ecx, eax
	MOV eax, ecx
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, DWORD PTR [ebp + 8]
	CDQ
	IDIV ebx
	IMUL eax, ebx
	SUB ecx, eax
	MOV DWORD PTR [ebp + 8], ecx
	MOV eax, ebx
	MOV ecx, 10
	CDQ
	IDIV ecx
	MOV ebx, eax
	JMP L$$29
L$$30:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
