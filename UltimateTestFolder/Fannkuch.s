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
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _LFannkuch1$fannkuch
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_write
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
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, esi
	MOV ecx, edi
	MOV eax, DWORD PTR [ebp + 12]
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	MOV ebx, DWORD PTR [ebp + 8]
	CDQ
	IDIV ebx
	IMUL esi, eax
	SUB edi, esi
	MOV eax, edi
	MOV eax, eax
	MOV ebx, DWORD PTR [ebp + -4]
	MOV ebx, ebx
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
	MOV edi, 0
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	CMP esi, eax
	JGE L$$4
L$$3:
	MOV edi, 1
L$$4:
	CMP edi, 1
	JNE L$$0
L$$1:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	JMP L$$2
L$$0:
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
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
	MOV edi, 0
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	CMP esi, eax
	JGE L$$9
L$$8:
	MOV edi, 1
L$$9:
	CMP edi, 1
	JNE L$$5
L$$6:
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	JMP L$$7
L$$5:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
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
	MOV edi, edi
	MOV ebx, 0
L$$10:
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP ebx, eax
	JGE L$$14
L$$13:
	MOV ecx, 1
L$$14:
	CMP ecx, 1
	JNE L$$11
L$$12:
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 4
	MOV edx, DWORD PTR [ebp + 12]
	MOV edx, edx
	ADD edx, ebx
	MOV edx, edx
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV edx, ecx
	MOV eax, DWORD PTR [ebp + 24]
	MOV ecx, eax
	MOV eax, 4
	MOV esi, DWORD PTR [ebp + 20]
	MOV esi, esi
	ADD esi, ebx
	MOV esi, esi
	ADD esi, 1
	IMUL eax, esi
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [edx + 0], eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$10
L$$11:
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
_LFannkuch1$equals:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV edi, 0
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	CMP esi, eax
	JGE L$$19
L$$18:
	MOV edi, 1
L$$19:
	CMP edi, 1
	JNE L$$16
L$$15:
	MOV eax, 0
	MOV edi, DWORD PTR [ebp + 8]
	MOV esi, DWORD PTR [ebp + 12]
	CMP edi, esi
	JGE L$$21
L$$20:
	MOV eax, 1
L$$21:
	MOV esi, 1
	SUB esi, eax
	MOV eax, esi
	MOV esi, 1
	JMP L$$17
L$$16:
	MOV eax, 0
	MOV esi, 0
L$$17:
	MOV edi, 1
	MOV esi, esi
	AND esi, eax
	SUB edi, esi
	MOV eax, edi
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
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, 0
	MOV DWORD PTR [ebp + -12], eax
L$$22:
	MOV edx, 0
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV ecx, DWORD PTR [ebp + -12]
	CMP ecx, DWORD PTR [eax + 0]
	JGE L$$26
L$$25:
	MOV edx, 1
L$$26:
	CMP edx, 1
	JNE L$$23
L$$24:
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV ecx, DWORD PTR [ebp + -12]
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -12], eax
	JMP L$$22
L$$23:
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 9
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [eax + 0]
	SUB eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -12], eax
L$$27:
	MOV ecx, 0
	MOV eax, 0
	MOV edx, DWORD PTR [ebp + -12]
	CMP eax, edx
	JGE L$$31
L$$30:
	MOV ecx, 1
L$$31:
	CMP ecx, 1
	JNE L$$28
L$$29:
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV edx, ecx
	MOV ecx, 4
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ecx, ecx
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV ecx, DWORD PTR [ecx + 0]
	CDQ
	IDIV ecx
	MOV eax, eax
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 9
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
	MOV ecx, DWORD PTR [ebp + -8]
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 4
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
	CALL _LFannkuch1$mod
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	PUSH eax
	CALL _LFannkuch1$arraycopy
	MOV eax, eax
	MOV eax, 0
L$$32:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ecx, ecx
	ADD ecx, 1
	CMP eax, ecx
	JGE L$$36
L$$35:
	MOV edx, 1
L$$36:
	CMP edx, 1
	JNE L$$33
L$$34:
	MOV ebx, 0
	MOV edx, eax
	MOV ecx, DWORD PTR [ebp + -8]
	ADD edx, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ecx, ecx
	ADD ecx, 1
	CMP edx, ecx
	JGE L$$41
L$$40:
	MOV ebx, 1
L$$41:
	CMP ebx, 1
	JNE L$$37
L$$38:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV edx, ecx
	MOV ecx, 7
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, eax
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ebx, ebx
	MOV ecx, DWORD PTR [ebp + 12]
	MOV edx, ecx
	MOV ecx, 8
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV edx, DWORD PTR [ecx + 0]
	MOV ecx, 4
	MOV esi, eax
	MOV edi, DWORD PTR [ebp + -8]
	ADD esi, edi
	MOV esi, esi
	ADD esi, 1
	IMUL ecx, esi
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [ebx + 0], ecx
	JMP L$$39
L$$37:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV edx, ecx
	MOV ecx, 7
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, eax
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ebx, ebx
	MOV ecx, DWORD PTR [ebp + 12]
	MOV edx, ecx
	MOV ecx, 8
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV edx, DWORD PTR [ecx + 0]
	MOV ecx, 4
	MOV esi, eax
	MOV edi, DWORD PTR [ebp + -8]
	ADD esi, edi
	MOV esi, esi
	MOV edi, DWORD PTR [ebp + -12]
	SUB esi, edi
	MOV esi, esi
	SUB esi, 1
	MOV esi, esi
	ADD esi, 1
	IMUL ecx, esi
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [ebx + 0], ecx
L$$39:
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	JMP L$$32
L$$33:
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -12], eax
	JMP L$$27
L$$28:
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$incAndGet:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV ecx, edi
	MOV eax, DWORD PTR [ebp + 12]
	MOV edx, eax
	MOV eax, 4
	MOV ebx, DWORD PTR [ebp + 8]
	MOV ebx, ebx
	ADD ebx, 1
	IMUL eax, ebx
	ADD edx, eax
	MOV ebx, edx
	MOV eax, DWORD PTR [ebp + 12]
	MOV edx, eax
	MOV eax, 4
	MOV edi, DWORD PTR [ebp + 8]
	MOV edi, edi
	ADD edi, 1
	IMUL eax, edi
	ADD edx, eax
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV DWORD PTR [ebx + 0], eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV edx, eax
	MOV eax, 4
	MOV ebx, DWORD PTR [ebp + 8]
	MOV ebx, ebx
	ADD ebx, 1
	IMUL eax, ebx
	ADD edx, eax
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + -4]
	MOV ebx, edx
	MOV esi, esi
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$nextPermutation:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 16
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV ebx, edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV DWORD PTR [ebx + 0], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV ecx, DWORD PTR [ebp + -16]
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, 1
	MOV DWORD PTR [ebp + -8], eax
L$$42:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + -8]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 9
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL _LFannkuch1$incAndGet
	MOV eax, eax
	CMP ebx, eax
	JGE L$$46
L$$45:
	MOV esi, 1
L$$46:
	CMP esi, 1
	JNE L$$43
L$$44:
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 0
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
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
	MOV esi, ebx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
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
	MOV DWORD PTR [esi + 0], ecx
	MOV esi, 1
L$$47:
	MOV ecx, 0
	MOV edx, DWORD PTR [ebp + -8]
	CMP esi, edx
	JGE L$$51
L$$50:
	MOV ecx, 1
L$$51:
	CMP ecx, 1
	JNE L$$48
L$$49:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
	MOV ecx, 7
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, esi
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ebx, ebx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
	MOV ecx, 7
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV edx, DWORD PTR [ecx + 0]
	MOV ecx, 4
	MOV edi, esi
	ADD edi, 1
	MOV edi, edi
	ADD edi, 1
	IMUL ecx, edi
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [ebx + 0], ecx
	MOV ecx, esi
	ADD ecx, 1
	MOV esi, ecx
	JMP L$$47
L$$48:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
	MOV ecx, 7
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ecx, ecx
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV edx, DWORD PTR [ebp + -16]
	MOV DWORD PTR [ecx + 0], edx
	MOV eax, eax
	MOV DWORD PTR [ebp + -16], eax
	JMP L$$42
L$$43:
	MOV eax, 1
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$countFlips:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 20
	MOV eax, ebx
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -8], eax
	MOV ebx, 1
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -20]
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
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$52
L$$53:
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LFannkuch1$arraycopy
	MOV eax, eax
	MOV edx, 1
L$$55:
	CMP edx, 1
	JNE L$$59
L$$58:
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -20]
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
	MOV edx, eax
	MOV ecx, 1
	MOV eax, 1
	SUB eax, edx
	SUB ecx, eax
	MOV eax, ecx
	MOV ecx, 1
	JMP L$$60
L$$59:
	MOV eax, 0
	MOV ecx, 0
L$$60:
	MOV esi, 1
	MOV edx, 1
	MOV ecx, ecx
	AND ecx, eax
	SUB edx, ecx
	SUB esi, edx
	CMP esi, 1
	JNE L$$56
L$$57:
	MOV edx, 0
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	MOV eax, 1
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + -20]
	MOV eax, eax
	SUB eax, 1
	MOV ecx, eax
L$$61:
	MOV eax, 0
	MOV esi, DWORD PTR [ebp + -4]
	CMP esi, ecx
	JGE L$$65
L$$64:
	MOV eax, 1
L$$65:
	CMP eax, 1
	JNE L$$62
L$$63:
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV eax, 8
	IMUL eax, 4
	ADD edx, eax
	MOV eax, edx
	MOV ebx, DWORD PTR [eax + 0]
	MOV edx, 4
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	IMUL edx, eax
	ADD ebx, edx
	MOV eax, ebx
	MOV eax, DWORD PTR [eax + 0]
	MOV edx, DWORD PTR [ebp + 8]
	MOV ebx, edx
	MOV edx, 8
	IMUL edx, 4
	ADD ebx, edx
	MOV edx, ebx
	MOV esi, DWORD PTR [edx + 0]
	MOV ebx, 4
	MOV edx, DWORD PTR [ebp + -4]
	MOV edx, edx
	ADD edx, 1
	IMUL ebx, edx
	ADD esi, ebx
	MOV edi, esi
	MOV edx, DWORD PTR [ebp + 8]
	MOV ebx, edx
	MOV edx, 8
	IMUL edx, 4
	ADD ebx, edx
	MOV edx, ebx
	MOV esi, DWORD PTR [edx + 0]
	MOV ebx, 4
	MOV edx, ecx
	ADD edx, 1
	IMUL ebx, edx
	ADD esi, ebx
	MOV edx, esi
	MOV edx, DWORD PTR [edx + 0]
	MOV DWORD PTR [edi + 0], edx
	MOV edx, DWORD PTR [ebp + 8]
	MOV ebx, edx
	MOV edx, 8
	IMUL edx, 4
	ADD ebx, edx
	MOV edx, ebx
	MOV esi, DWORD PTR [edx + 0]
	MOV ebx, 4
	MOV edx, ecx
	ADD edx, 1
	IMUL ebx, edx
	ADD esi, ebx
	MOV edx, esi
	MOV DWORD PTR [edx + 0], eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, ecx
	SUB eax, 1
	MOV ecx, eax
	JMP L$$61
L$$62:
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -20]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD esi, ecx
	MOV eax, esi
	MOV eax, DWORD PTR [eax + 0]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV esi, ecx
	MOV ecx, 8
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	MOV edi, DWORD PTR [ecx + 0]
	MOV esi, 4
	MOV ecx, DWORD PTR [ebp + -20]
	MOV ecx, ecx
	ADD ecx, 1
	IMUL esi, ecx
	ADD edi, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + -20]
	MOV DWORD PTR [ecx + 0], esi
	MOV eax, eax
	MOV DWORD PTR [ebp + -20], eax
	JMP L$$55
L$$56:
	JMP L$$54
L$$52:
L$$54:
	MOV eax, ebx
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -16]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -8]
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
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV edx, ecx
	MOV ecx, 1
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	IMUL eax, DWORD PTR [ecx + 0]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV edx, 4
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	IMUL edx, eax
	ADD esi, edx
	MOV eax, esi
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV edx, ebx
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	ADD edx, DWORD PTR [eax + 0]
	MOV eax, edx
	PUSH eax
	CALL _LFannkuch1$min
	MOV eax, eax
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LFannkuch1$firstPermutation
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
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$69
L$$70:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LFannkuch1$countFlips
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LFannkuch1$max
	MOV eax, eax
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	MOV eax, 2
	PUSH eax
	CALL _LFannkuch1$mod
	MOV eax, eax
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LFannkuch1$equals
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
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	PUSH eax
	CALL _LFannkuch1$equals
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
	MOV eax, eax
	PUSH eax
	CALL _LFannkuch1$nextPermutation
	MOV eax, eax
	JMP L$$80
L$$78:
L$$80:
	JMP L$$66
L$$67:
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 5
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edx, DWORD PTR [ebp + 8]
	MOV edx, edx
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 6
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edx, DWORD PTR [ebp + 8]
	MOV edx, edx
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV DWORD PTR [eax + 0], ecx
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
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, 80
	PUSH eax
	CALL _L_write
	MOV eax, eax
	MOV eax, 32
	PUSH eax
	CALL _L_write
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
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
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV DWORD PTR [eax + 0], 11
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV edx, eax
	MOV edx, edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV DWORD PTR [edx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 4
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
	MOV DWORD PTR [eax + 0], 1
	MOV ebx, 1
L$$81:
	MOV edx, 0
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$85
L$$84:
	MOV edx, 1
L$$85:
	CMP edx, 1
	JNE L$$82
L$$83:
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 4
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
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV esi, ebx
	SUB esi, 1
	MOV esi, esi
	ADD esi, 1
	IMUL eax, esi
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	IMUL eax, ebx
	MOV DWORD PTR [edx + 0], eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$81
L$$82:
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV DWORD PTR [eax + 0], 150
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV ecx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV eax, 4
	IMUL eax, 4
	ADD edx, eax
	MOV eax, edx
	MOV esi, DWORD PTR [eax + 0]
	MOV ebx, 4
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV eax, 3
	IMUL eax, 4
	ADD edx, eax
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	IMUL ebx, eax
	ADD esi, ebx
	MOV eax, esi
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD edx, eax
	MOV eax, edx
	ADD ebx, DWORD PTR [eax + 0]
	MOV eax, ebx
	SUB eax, 1
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ebx, edx
	MOV edx, 0
	IMUL edx, 4
	ADD ebx, edx
	MOV edx, ebx
	MOV edx, DWORD PTR [edx + 0]
	CDQ
	IDIV edx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV ecx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV eax, 4
	IMUL eax, 4
	ADD edx, eax
	MOV eax, edx
	MOV esi, DWORD PTR [eax + 0]
	MOV ebx, 4
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV eax, 3
	IMUL eax, 4
	ADD edx, eax
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	IMUL ebx, eax
	ADD esi, ebx
	MOV eax, esi
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD edx, eax
	MOV eax, edx
	ADD ebx, DWORD PTR [eax + 0]
	MOV eax, ebx
	SUB eax, 1
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ebx, edx
	MOV edx, 1
	IMUL edx, 4
	ADD ebx, edx
	MOV edx, ebx
	MOV edx, DWORD PTR [edx + 0]
	CDQ
	IDIV edx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 5
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV edx, eax
	MOV edx, edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [edx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 6
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV edx, eax
	MOV edx, edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [edx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV edx, eax
	MOV edx, edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [edx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV edx, eax
	MOV edx, edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [edx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 9
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV edx, eax
	MOV edx, edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [edx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], edx
	MOV ebx, 0
L$$86:
	MOV edx, 0
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LFannkuch1$runTask
	MOV eax, eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$86
L$$87:
	MOV eax, 0
	MOV ebx, 0
L$$91:
	MOV esi, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
	MOV ecx, 5
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	CMP ebx, DWORD PTR [ecx + 0]
	JGE L$$95
L$$94:
	MOV esi, 1
L$$95:
	CMP esi, 1
	JNE L$$92
L$$93:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV ecx, ecx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV eax, eax
	MOV ecx, ebx
	ADD ecx, 1
	MOV ebx, ecx
	JMP L$$91
L$$92:
	MOV edi, 0
	MOV ebx, 0
L$$96:
	MOV esi, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
	MOV ecx, 6
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	CMP ebx, DWORD PTR [ecx + 0]
	JGE L$$100
L$$99:
	MOV esi, 1
L$$100:
	CMP esi, 1
	JNE L$$97
L$$98:
	MOV edi, edi
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
	MOV ecx, 6
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV esi, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, ebx
	ADD ecx, 1
	IMUL edx, ecx
	ADD esi, edx
	MOV ecx, esi
	ADD edi, DWORD PTR [ecx + 0]
	MOV edi, edi
	MOV ecx, ebx
	ADD ecx, 1
	MOV ebx, ecx
	JMP L$$96
L$$97:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV ecx, ecx
	PUSH ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
	MOV ecx, 3
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	PUSH ecx
	MOV eax, eax
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LFannkuch1$printResult
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
