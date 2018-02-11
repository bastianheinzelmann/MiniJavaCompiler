	.intel_syntax
	.global _Lmain
_Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, 40
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _LFannkuch1$fannkuch
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_write
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
_LFannkuch1$mod:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, edi
	MOV edi, DWORD PTR [ebp + 12]
	MOV esi, DWORD PTR [ebp + 8]
	MOV eax, DWORD PTR [ebp + 12]
	MOV ebx, DWORD PTR [ebp + 8]
	CDQ
	IDIV ebx
	IMUL esi, eax
	SUB edi, esi
	MOV eax, edi
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + -8]
	MOV ebx, edx
	MOV edx, DWORD PTR [ebp + -4]
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$min:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 12]
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$4
L$$3:
	MOV esi, 1
L$$4:
	CMP esi, 1
	JNE L$$0
L$$1:
	MOV eax, DWORD PTR [ebp + 12]
	JMP L$$2
L$$0:
	MOV eax, DWORD PTR [ebp + 8]
L$$2:
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$max:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 12]
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$9
L$$8:
	MOV esi, 1
L$$9:
	CMP esi, 1
	JNE L$$5
L$$6:
	MOV eax, DWORD PTR [ebp + 8]
	JMP L$$7
L$$5:
	MOV eax, DWORD PTR [ebp + 12]
L$$7:
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$arraycopy:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, edi
	MOV esi, 0
L$$10:
	MOV eax, 0
	CMP esi, DWORD PTR [ebp + 8]
	JGE L$$14
L$$13:
	MOV eax, 1
L$$14:
	CMP eax, 1
	JNE L$$11
L$$12:
	MOV ebx, DWORD PTR [ebp + 16]
	MOV edx, 4
	MOV eax, DWORD PTR [ebp + 12]
	ADD eax, esi
	MOV eax, eax
	ADD eax, 1
	IMUL edx, eax
	ADD ebx, edx
	MOV ebx, ebx
	MOV edx, DWORD PTR [ebp + 24]
	MOV eax, 4
	MOV edi, DWORD PTR [ebp + 20]
	ADD edi, esi
	MOV edi, edi
	ADD edi, 1
	IMUL eax, edi
	ADD edx, eax
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [ebx + 0], eax
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$10
L$$11:
	MOV eax, 0
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + -8]
	MOV ebx, edx
	MOV edx, DWORD PTR [ebp + -4]
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$equals:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 12]
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$19
L$$18:
	MOV esi, 1
L$$19:
	MOV eax, 1
	SUB eax, esi
	CMP eax, 1
	JNE L$$16
L$$15:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, DWORD PTR [ebp + 12]
	JGE L$$21
L$$20:
	MOV esi, 1
L$$21:
	MOV eax, 1
	SUB eax, esi
	MOV esi, eax
	MOV eax, 1
	JMP L$$17
L$$16:
	MOV esi, 0
	MOV eax, 0
L$$17:
	MOV eax, eax
	AND eax, esi
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$firstPermutation:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 28
	MOV eax, ebx
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, 0
	MOV DWORD PTR [ebp + -8], eax
L$$22:
	MOV eax, 0
	MOV ebx, DWORD PTR [ebp + 12]
	MOV ecx, 7
	IMUL ecx, 4
	ADD ebx, ecx
	MOV ecx, ebx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV ecx, DWORD PTR [ebp + -8]
	CMP ecx, DWORD PTR [ebx + 0]
	JGE L$$26
L$$25:
	MOV eax, 1
L$$26:
	CMP eax, 1
	JNE L$$23
L$$24:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV ecx, ebx
	MOV eax, DWORD PTR [ebp + -8]
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$22
L$$23:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 9
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [eax + 0]
	SUB eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -8], eax
L$$27:
	MOV ebx, 0
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + -8]
	CMP ecx, eax
	JGE L$$31
L$$30:
	MOV ebx, 1
L$$31:
	CMP ebx, 1
	JNE L$$28
L$$29:
	MOV eax, DWORD PTR [ebp + 8]
	MOV ebx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	IMUL ecx, 4
	ADD ebx, ecx
	MOV ecx, ebx
	MOV esi, DWORD PTR [ecx + 0]
	MOV ebx, 4
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ecx, ecx
	ADD ecx, 1
	IMUL ebx, ecx
	ADD esi, ebx
	MOV ecx, esi
	MOV ecx, DWORD PTR [ecx + 0]
	CDQ
	IDIV ecx
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 9
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ecx, edx
	MOV eax, DWORD PTR [ebp + -4]
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LFannkuch1$mod
	ADD esp, 12
	MOV DWORD PTR [ebp + 8], eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	PUSH eax
	CALL _LFannkuch1$arraycopy
	ADD esp, 24
	MOV eax, eax
	MOV eax, 0
	MOV DWORD PTR [ebp + -28], eax
L$$32:
	MOV ebx, 0
	MOV eax, DWORD PTR [ebp + -8]
	MOV ecx, eax
	ADD ecx, 1
	MOV eax, DWORD PTR [ebp + -28]
	CMP eax, ecx
	JGE L$$36
L$$35:
	MOV ebx, 1
L$$36:
	CMP ebx, 1
	JNE L$$33
L$$34:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -28]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	ADD ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ecx, ecx
	ADD ecx, 1
	CMP ebx, ecx
	JGE L$$41
L$$40:
	MOV eax, 1
L$$41:
	CMP eax, 1
	JNE L$$37
L$$38:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -28]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV ebx, ebx
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV esi, DWORD PTR [ebp + -28]
	MOV edi, esi
	MOV esi, DWORD PTR [ebp + -4]
	ADD edi, esi
	MOV esi, edi
	ADD esi, 1
	IMUL eax, esi
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [ebx + 0], eax
	JMP L$$39
L$$37:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -28]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV ebx, ebx
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV esi, DWORD PTR [ebp + -28]
	MOV edi, esi
	MOV esi, DWORD PTR [ebp + -4]
	ADD edi, esi
	MOV edi, edi
	MOV esi, DWORD PTR [ebp + -8]
	SUB edi, esi
	MOV esi, edi
	SUB esi, 1
	MOV esi, esi
	ADD esi, 1
	IMUL eax, esi
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [ebx + 0], eax
L$$39:
	MOV eax, DWORD PTR [ebp + -28]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -28], eax
	JMP L$$32
L$$33:
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$27
L$$28:
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -20]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -16]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$incAndGet:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV ebx, 4
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	IMUL ebx, eax
	ADD esi, ebx
	MOV eax, esi
	MOV edi, DWORD PTR [ebp + 12]
	MOV esi, 4
	MOV ebx, DWORD PTR [ebp + 8]
	ADD ebx, 1
	IMUL esi, ebx
	ADD edi, esi
	MOV ebx, edi
	MOV ebx, DWORD PTR [ebx + 0]
	ADD ebx, 1
	MOV DWORD PTR [eax + 0], ebx
	MOV esi, DWORD PTR [ebp + 12]
	MOV ebx, 4
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	IMUL ebx, eax
	ADD esi, ebx
	MOV eax, esi
	MOV eax, DWORD PTR [eax + 0]
	MOV eax, eax
	MOV ebx, DWORD PTR [ebp + -4]
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$nextPermutation:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 20
	MOV eax, ebx
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -12], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 1
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [ebp + -8], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 1
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 7
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, 0
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ecx, edx
	MOV eax, DWORD PTR [ebp + -8]
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, 1
	MOV DWORD PTR [ebp + -4], eax
L$$42:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + -4]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 9
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	CALL _LFannkuch1$incAndGet
	ADD esp, 12
	MOV eax, eax
	CMP ebx, eax
	JGE L$$46
L$$45:
	MOV esi, 1
L$$46:
	CMP esi, 1
	JNE L$$43
L$$44:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 9
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 0
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 1
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV esi, DWORD PTR [eax + 0]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 7
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, 1
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [eax + 0], ecx
	MOV ebx, 1
L$$47:
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + -4]
	CMP ebx, eax
	JGE L$$51
L$$50:
	MOV ecx, 1
L$$51:
	CMP ecx, 1
	JNE L$$48
L$$49:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edx, edx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, ebx
	ADD edi, 1
	MOV edi, edi
	ADD edi, 1
	IMUL eax, edi
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [edx + 0], eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$47
L$$48:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ecx, edx
	MOV eax, DWORD PTR [ebp + -8]
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$42
L$$43:
	MOV eax, 1
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -20]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -16]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$countFlips:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 28
	MOV eax, ebx
	MOV DWORD PTR [ebp + -28], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -24], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, 1
	MOV DWORD PTR [ebp + -16], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LFannkuch1$equals
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$52
L$$53:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LFannkuch1$arraycopy
	ADD esp, 24
	MOV eax, eax
	MOV eax, 1
	MOV DWORD PTR [ebp + -8], eax
L$$55:
	MOV ecx, 1
	MOV eax, DWORD PTR [ebp + -8]
	SUB ecx, eax
	CMP ecx, 1
	JNE L$$59
L$$58:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LFannkuch1$equals
	ADD esp, 12
	MOV edx, eax
	MOV ecx, 1
	MOV eax, 1
	SUB eax, edx
	SUB ecx, eax
	MOV edx, ecx
	MOV eax, 1
	JMP L$$60
L$$59:
	MOV edx, 0
	MOV eax, 0
L$$60:
	MOV ecx, 1
	MOV eax, eax
	AND eax, edx
	SUB ecx, eax
	CMP ecx, 1
	JNE L$$56
L$$57:
	MOV eax, 0
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, 1
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	SUB eax, 1
	MOV edx, eax
L$$61:
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + -4]
	CMP eax, edx
	JGE L$$65
L$$64:
	MOV ecx, 1
L$$65:
	CMP ecx, 1
	JNE L$$62
L$$63:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV eax, ebx
	MOV ecx, DWORD PTR [eax + 0]
	MOV ebx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ebx, eax
	MOV eax, ebx
	MOV esi, DWORD PTR [eax + 0]
	MOV ebx, 4
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	IMUL ebx, eax
	ADD esi, ebx
	MOV eax, esi
	MOV esi, DWORD PTR [ebp + 8]
	MOV ebx, 8
	IMUL ebx, 4
	ADD esi, ebx
	MOV ebx, esi
	MOV edi, DWORD PTR [ebx + 0]
	MOV esi, 4
	MOV ebx, edx
	ADD ebx, 1
	IMUL esi, ebx
	ADD edi, esi
	MOV ebx, edi
	MOV ebx, DWORD PTR [ebx + 0]
	MOV DWORD PTR [eax + 0], ebx
	MOV ebx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ebx, eax
	MOV eax, ebx
	MOV esi, DWORD PTR [eax + 0]
	MOV ebx, 4
	MOV eax, edx
	ADD eax, 1
	IMUL ebx, eax
	ADD esi, ebx
	MOV eax, esi
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, edx
	SUB eax, 1
	MOV edx, eax
	JMP L$$61
L$$62:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	MOV edx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD edx, eax
	MOV eax, edx
	MOV ebx, DWORD PTR [eax + 0]
	MOV edx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	IMUL edx, eax
	ADD ebx, edx
	MOV edx, ebx
	MOV eax, DWORD PTR [ebp + -12]
	MOV DWORD PTR [edx + 0], eax
	MOV eax, ecx
	MOV DWORD PTR [ebp + -12], eax
	JMP L$$55
L$$56:
	JMP L$$54
L$$52:
L$$54:
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -28]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -24]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -20]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$runTask:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 28
	MOV eax, ebx
	MOV DWORD PTR [ebp + -28], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -24], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -20], eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	IMUL edx, DWORD PTR [eax + 0]
	MOV ebx, edx
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV esi, DWORD PTR [ebp + 12]
	MOV edx, 3
	IMUL edx, 4
	ADD esi, edx
	MOV edx, esi
	MOV edx, DWORD PTR [edx + 0]
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV edx, ebx
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	ADD edx, DWORD PTR [eax + 0]
	MOV eax, edx
	PUSH eax
	CALL _LFannkuch1$min
	ADD esp, 12
	MOV eax, eax
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LFannkuch1$firstPermutation
	ADD esp, 8
	MOV eax, eax
	MOV eax, 1
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, 0
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, 0
L$$66:
	MOV eax, 1
	SUB eax, edi
	CMP eax, 1
	JNE L$$67
L$$68:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LFannkuch1$equals
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$69
L$$70:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFannkuch1$countFlips
	ADD esp, 4
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LFannkuch1$max
	ADD esp, 12
	MOV eax, eax
	MOV DWORD PTR [ebp + -12], eax
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	MOV eax, 2
	PUSH eax
	CALL _LFannkuch1$mod
	ADD esp, 12
	MOV ecx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LFannkuch1$equals
	ADD esp, 12
	MOV eax, eax
	CMP eax, 1
	JNE L$$72
L$$73:
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	ADD eax, esi
	MOV eax, eax
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$74
L$$72:
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	SUB eax, esi
	MOV eax, eax
	MOV DWORD PTR [ebp + -8], eax
L$$74:
	JMP L$$71
L$$69:
L$$71:
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	PUSH eax
	CALL _LFannkuch1$equals
	ADD esp, 12
	MOV eax, eax
	CMP eax, 1
	JNE L$$75
L$$76:
	MOV edi, 1
	JMP L$$77
L$$75:
L$$77:
	MOV eax, 1
	SUB eax, edi
	CMP eax, 1
	JNE L$$78
L$$79:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFannkuch1$nextPermutation
	ADD esp, 4
	MOV eax, eax
	JMP L$$80
L$$78:
L$$80:
	JMP L$$66
L$$67:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 5
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ecx, edx
	MOV eax, DWORD PTR [ebp + -12]
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 6
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ecx, edx
	MOV eax, DWORD PTR [ebp + -8]
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -28]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -24]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -20]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$printResult:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, 80
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, 32
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
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
_LFannkuch1$fannkuch:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV DWORD PTR [eax + 0], 11
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, 3
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	MOV ecx, DWORD PTR [ecx + 0]
	ADD ecx, 1
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], 1
	MOV ebx, 1
L$$81:
	MOV eax, 0
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, 4
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	MOV ecx, DWORD PTR [ecx + 0]
	CMP ebx, DWORD PTR [ecx + 0]
	JGE L$$85
L$$84:
	MOV eax, 1
L$$85:
	CMP eax, 1
	JNE L$$82
L$$83:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD esi, ecx
	MOV esi, esi
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, ebx
	SUB edi, 1
	MOV edi, edi
	ADD edi, 1
	IMUL eax, edi
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	IMUL eax, ebx
	MOV DWORD PTR [esi + 0], eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$81
L$$82:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV DWORD PTR [eax + 0], 150
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, DWORD PTR [ebp + 8]
	MOV esi, 3
	IMUL esi, 4
	ADD edi, esi
	MOV esi, edi
	MOV esi, DWORD PTR [esi + 0]
	ADD esi, 1
	IMUL eax, esi
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	ADD esi, DWORD PTR [eax + 0]
	MOV eax, esi
	SUB eax, 1
	MOV eax, eax
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, 0
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	MOV ecx, DWORD PTR [ecx + 0]
	CDQ
	IDIV ecx
	MOV DWORD PTR [ebx + 0], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, DWORD PTR [ebp + 8]
	MOV esi, 3
	IMUL esi, 4
	ADD edi, esi
	MOV esi, edi
	MOV esi, DWORD PTR [esi + 0]
	ADD esi, 1
	IMUL eax, esi
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	ADD esi, DWORD PTR [eax + 0]
	MOV eax, esi
	SUB eax, 1
	MOV eax, eax
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, 1
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	MOV ecx, DWORD PTR [ecx + 0]
	CDQ
	IDIV ecx
	MOV DWORD PTR [ebx + 0], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 5
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 2
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 6
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 2
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 3
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 3
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 9
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 3
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV ebx, 0
L$$86:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$90
L$$89:
	MOV edx, 1
L$$90:
	CMP edx, 1
	JNE L$$87
L$$88:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LFannkuch1$runTask
	ADD esp, 8
	MOV eax, eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$86
L$$87:
	MOV edx, 0
	MOV ebx, 0
L$$91:
	MOV eax, 0
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, 5
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	MOV ecx, DWORD PTR [ecx + 0]
	CMP ebx, DWORD PTR [ecx + 0]
	JGE L$$95
L$$94:
	MOV eax, 1
L$$95:
	CMP eax, 1
	JNE L$$92
L$$93:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, edx
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 5
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LFannkuch1$max
	ADD esp, 12
	MOV edx, eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$91
L$$92:
	MOV ecx, 0
	MOV ebx, 0
L$$96:
	MOV eax, 0
	MOV edi, DWORD PTR [ebp + 8]
	MOV esi, 6
	IMUL esi, 4
	ADD edi, esi
	MOV esi, edi
	MOV esi, DWORD PTR [esi + 0]
	CMP ebx, DWORD PTR [esi + 0]
	JGE L$$100
L$$99:
	MOV eax, 1
L$$100:
	CMP eax, 1
	JNE L$$97
L$$98:
	MOV eax, ecx
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, 6
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	MOV edi, DWORD PTR [ecx + 0]
	MOV esi, 4
	MOV ecx, ebx
	ADD ecx, 1
	IMUL esi, ecx
	ADD edi, esi
	MOV ecx, edi
	ADD eax, DWORD PTR [ecx + 0]
	MOV ecx, eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$96
L$$97:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV ebx, DWORD PTR [ebp + 8]
	MOV eax, 3
	IMUL eax, 4
	ADD ebx, eax
	MOV eax, ebx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, edx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LFannkuch1$printResult
	ADD esp, 16
	MOV eax, eax
	MOV eax, 10
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
