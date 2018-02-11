	.intel_syntax
	.global _Lmain
_Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, 40
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	PUSH eax
	CALL _LFannkuch1$fannkuch
	ADD esp, 4
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, 0
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
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$max:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
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
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + 12]
	ADD eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ebx, edx
	MOV ecx, DWORD PTR [ebp + 20]
	ADD ecx, esi
	MOV eax, DWORD PTR [ebp + 24]
	CMP ecx, DWORD PTR [eax + 0]
	JGE L$$16
L$$15:
	MOV eax, 1
	JMP L$$17
L$$16:
	MOV eax, 0
L$$17:
	MOV edx, eax
	MOV eax, DWORD PTR [ebp + 20]
	ADD eax, esi
	CMP eax, 0
	JL L$$19
L$$18:
	MOV ecx, 1
	JMP L$$20
L$$19:
	MOV ecx, 0
L$$20:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$22
L$$21:
	MOV ecx, DWORD PTR [ebp + 24]
	MOV eax, 4
	MOV edx, DWORD PTR [ebp + 20]
	ADD edx, esi
	ADD edx, 1
	IMUL eax, edx
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
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$10
L$$11:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFannkuch1$equals:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 12]
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$28
L$$27:
	MOV esi, 1
L$$28:
	MOV eax, 1
	SUB eax, esi
	CMP eax, 1
	JNE L$$25
L$$24:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, DWORD PTR [ebp + 12]
	JGE L$$30
L$$29:
	MOV esi, 1
L$$30:
	MOV eax, 1
	SUB eax, esi
	MOV esi, eax
	MOV eax, 1
	JMP L$$26
L$$25:
	MOV esi, 0
	MOV eax, 0
L$$26:
	AND eax, esi
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
L$$31:
	MOV eax, 0
	MOV ebx, DWORD PTR [ebp + 12]
	MOV ecx, 7
	IMUL ecx, 4
	ADD ebx, ecx
	MOV ecx, ebx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV ecx, DWORD PTR [ebp + -8]
	CMP ecx, DWORD PTR [ebx + 0]
	JGE L$$35
L$$34:
	MOV eax, 1
L$$35:
	CMP eax, 1
	JNE L$$32
L$$33:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -8]
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV ecx, ebx
	MOV eax, DWORD PTR [ebp + -8]
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, DWORD PTR [ebp + -8]
	ADD eax, 1
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$31
L$$32:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 9
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [eax + 0]
	SUB eax, 1
	MOV DWORD PTR [ebp + -8], eax
L$$36:
	MOV ebx, 0
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + -8]
	CMP ecx, eax
	JGE L$$40
L$$39:
	MOV ebx, 1
L$$40:
	CMP ebx, 1
	JNE L$$37
L$$38:
	MOV ebx, DWORD PTR [ebp + 8]
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + -8]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$42
L$$41:
	MOV eax, 1
	JMP L$$43
L$$42:
	MOV eax, 0
L$$43:
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + -8]
	CMP eax, 0
	JL L$$45
L$$44:
	MOV ecx, 1
	JMP L$$46
L$$45:
	MOV ecx, 0
L$$46:
	MOV eax, esi
	AND eax, ecx
	CMP eax, 1
	JNE L$$48
L$$47:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -8]
	ADD eax, 1
	IMUL ecx, eax
	ADD esi, ecx
	MOV eax, esi
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$49
L$$48:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$49:
	MOV eax, ebx
	CDQ
	IDIV ecx
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 9
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -8]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ecx, edx
	MOV eax, DWORD PTR [ebp + -4]
	MOV DWORD PTR [ecx + 0], eax
	MOV esi, DWORD PTR [ebp + 12]
	MOV ebx, DWORD PTR [ebp + 8]
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + -8]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$51
L$$50:
	MOV eax, 1
	JMP L$$52
L$$51:
	MOV eax, 0
L$$52:
	MOV edx, eax
	MOV eax, DWORD PTR [ebp + -8]
	CMP eax, 0
	JL L$$54
L$$53:
	MOV ecx, 1
	JMP L$$55
L$$54:
	MOV ecx, 0
L$$55:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$57
L$$56:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -8]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$58
L$$57:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$58:
	MOV eax, esi
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
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
	ADD eax, 1
	PUSH eax
	CALL _LFannkuch1$arraycopy
	ADD esp, 24
	MOV eax, 0
	MOV DWORD PTR [ebp + -28], eax
L$$59:
	MOV ebx, 0
	MOV eax, DWORD PTR [ebp + -8]
	MOV ecx, eax
	ADD ecx, 1
	MOV eax, DWORD PTR [ebp + -28]
	CMP eax, ecx
	JGE L$$63
L$$62:
	MOV ebx, 1
L$$63:
	CMP ebx, 1
	JNE L$$60
L$$61:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -28]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	ADD ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	ADD ecx, 1
	CMP ebx, ecx
	JGE L$$68
L$$67:
	MOV eax, 1
L$$68:
	CMP eax, 1
	JNE L$$64
L$$65:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -28]
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV eax, DWORD PTR [ebp + -28]
	MOV ecx, DWORD PTR [ebp + -4]
	ADD eax, ecx
	MOV esi, DWORD PTR [ebp + 12]
	MOV ecx, 8
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	MOV ecx, DWORD PTR [ecx + 0]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$70
L$$69:
	MOV eax, 1
	JMP L$$71
L$$70:
	MOV eax, 0
L$$71:
	MOV ecx, DWORD PTR [ebp + -28]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	ADD esi, ecx
	CMP esi, 0
	JL L$$73
L$$72:
	MOV ecx, 1
	JMP L$$74
L$$73:
	MOV ecx, 0
L$$74:
	AND eax, ecx
	CMP eax, 1
	JNE L$$76
L$$75:
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
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$77
L$$76:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$77:
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	JMP L$$66
L$$64:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -28]
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV eax, DWORD PTR [ebp + -28]
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + -4]
	ADD ecx, eax
	MOV eax, DWORD PTR [ebp + -8]
	SUB ecx, eax
	MOV eax, ecx
	SUB eax, 1
	MOV esi, DWORD PTR [ebp + 12]
	MOV ecx, 8
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	MOV ecx, DWORD PTR [ecx + 0]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$79
L$$78:
	MOV eax, 1
	JMP L$$80
L$$79:
	MOV eax, 0
L$$80:
	MOV ecx, DWORD PTR [ebp + -28]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	ADD esi, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	SUB esi, ecx
	MOV ecx, esi
	SUB ecx, 1
	CMP ecx, 0
	JL L$$82
L$$81:
	MOV ecx, 1
	JMP L$$83
L$$82:
	MOV ecx, 0
L$$83:
	AND eax, ecx
	CMP eax, 1
	JNE L$$85
L$$84:
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
	MOV esi, DWORD PTR [ebp + -8]
	SUB edi, esi
	MOV esi, edi
	SUB esi, 1
	ADD esi, 1
	IMUL eax, esi
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$86
L$$85:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$86:
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
L$$66:
	MOV eax, DWORD PTR [ebp + -28]
	ADD eax, 1
	MOV DWORD PTR [ebp + -28], eax
	JMP L$$59
L$$60:
	MOV eax, DWORD PTR [ebp + -8]
	SUB eax, 1
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$36
L$$37:
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
_LFannkuch1$incAndGet:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ebx, edx
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$88
L$$87:
	MOV eax, 1
	JMP L$$89
L$$88:
	MOV eax, 0
L$$89:
	CMP DWORD PTR [ebp + 8], 0
	JL L$$91
L$$90:
	MOV ecx, 1
	JMP L$$92
L$$91:
	MOV ecx, 0
L$$92:
	AND eax, ecx
	CMP eax, 1
	JNE L$$94
L$$93:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$95
L$$94:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$95:
	MOV ecx, ebx
	ADD eax, 1
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$97
L$$96:
	MOV eax, 1
	JMP L$$98
L$$97:
	MOV eax, 0
L$$98:
	CMP DWORD PTR [ebp + 8], 0
	JL L$$100
L$$99:
	MOV ecx, 1
	JMP L$$101
L$$100:
	MOV ecx, 0
L$$101:
	AND eax, ecx
	CMP eax, 1
	JNE L$$103
L$$102:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$104
L$$103:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$104:
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
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
	MOV edx, 1
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP edx, DWORD PTR [eax + 0]
	JGE L$$106
L$$105:
	MOV eax, 1
	JMP L$$107
L$$106:
	MOV eax, 0
L$$107:
	MOV edx, eax
	MOV eax, 1
	CMP eax, 0
	JL L$$109
L$$108:
	MOV ecx, 1
	JMP L$$110
L$$109:
	MOV ecx, 0
L$$110:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$112
L$$111:
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
	JMP L$$113
L$$112:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$113:
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
	MOV ebx, edx
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP edx, DWORD PTR [eax + 0]
	JGE L$$115
L$$114:
	MOV eax, 1
	JMP L$$116
L$$115:
	MOV eax, 0
L$$116:
	MOV edx, eax
	MOV eax, 0
	CMP eax, 0
	JL L$$118
L$$117:
	MOV ecx, 1
	JMP L$$119
L$$118:
	MOV ecx, 0
L$$119:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$121
L$$120:
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
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$122
L$$121:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$122:
	MOV eax, ebx
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
L$$123:
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
	PUSH eax
	CALL _LFannkuch1$incAndGet
	ADD esp, 12
	CMP ebx, eax
	JGE L$$127
L$$126:
	MOV esi, 1
L$$127:
	CMP esi, 1
	JNE L$$124
L$$125:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 9
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -4]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 0
	MOV eax, DWORD PTR [ebp + -4]
	ADD eax, 1
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, 1
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP edx, DWORD PTR [eax + 0]
	JGE L$$129
L$$128:
	MOV eax, 1
	JMP L$$130
L$$129:
	MOV eax, 0
L$$130:
	MOV edx, eax
	MOV eax, 1
	CMP eax, 0
	JL L$$132
L$$131:
	MOV ecx, 1
	JMP L$$133
L$$132:
	MOV ecx, 0
L$$133:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$135
L$$134:
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
	JMP L$$136
L$$135:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$136:
	MOV edi, eax
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
	MOV ebx, edx
	MOV eax, 1
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 7
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$138
L$$137:
	MOV eax, 1
	JMP L$$139
L$$138:
	MOV eax, 0
L$$139:
	MOV edx, eax
	MOV eax, 1
	CMP eax, 0
	JL L$$141
L$$140:
	MOV ecx, 1
	JMP L$$142
L$$141:
	MOV ecx, 0
L$$142:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$144
L$$143:
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
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$145
L$$144:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$145:
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV esi, 1
L$$146:
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + -4]
	CMP esi, eax
	JGE L$$150
L$$149:
	MOV ecx, 1
L$$150:
	CMP ecx, 1
	JNE L$$147
L$$148:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ebx, edx
	MOV eax, esi
	ADD eax, 1
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 7
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$152
L$$151:
	MOV eax, 1
	JMP L$$153
L$$152:
	MOV eax, 0
L$$153:
	MOV edx, eax
	MOV eax, esi
	ADD eax, 1
	CMP eax, 0
	JL L$$155
L$$154:
	MOV ecx, 1
	JMP L$$156
L$$155:
	MOV ecx, 0
L$$156:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$158
L$$157:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edx, esi
	ADD edx, 1
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$159
L$$158:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$159:
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$146
L$$147:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -4]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ecx, edx
	MOV eax, DWORD PTR [ebp + -8]
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$123
L$$124:
	MOV eax, 1
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
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP edx, DWORD PTR [eax + 0]
	JGE L$$161
L$$160:
	MOV eax, 1
	JMP L$$162
L$$161:
	MOV eax, 0
L$$162:
	MOV edx, eax
	MOV eax, 0
	CMP eax, 0
	JL L$$164
L$$163:
	MOV ecx, 1
	JMP L$$165
L$$164:
	MOV ecx, 0
L$$165:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$167
L$$166:
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
	JMP L$$168
L$$167:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$168:
	MOV DWORD PTR [ebp + -12], eax
	MOV ebx, DWORD PTR [ebp + 8]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + -12]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$173
L$$172:
	MOV eax, 1
	JMP L$$174
L$$173:
	MOV eax, 0
L$$174:
	MOV edx, eax
	MOV eax, DWORD PTR [ebp + -12]
	CMP eax, 0
	JL L$$176
L$$175:
	MOV ecx, 1
	JMP L$$177
L$$176:
	MOV ecx, 0
L$$177:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$179
L$$178:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 7
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$180
L$$179:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$180:
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LFannkuch1$equals
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$169
L$$170:
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
	MOV eax, 1
	MOV DWORD PTR [ebp + -8], eax
L$$181:
	MOV ecx, 1
	MOV eax, DWORD PTR [ebp + -8]
	SUB ecx, eax
	CMP ecx, 1
	JNE L$$185
L$$184:
	MOV ebx, DWORD PTR [ebp + 8]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + -12]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$188
L$$187:
	MOV eax, 1
	JMP L$$189
L$$188:
	MOV eax, 0
L$$189:
	MOV edx, eax
	MOV eax, DWORD PTR [ebp + -12]
	CMP eax, 0
	JL L$$191
L$$190:
	MOV ecx, 1
	JMP L$$192
L$$191:
	MOV ecx, 0
L$$192:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$194
L$$193:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$195
L$$194:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$195:
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
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
	JMP L$$186
L$$185:
	MOV edx, 0
	MOV eax, 0
L$$186:
	MOV ecx, 1
	AND eax, edx
	SUB ecx, eax
	CMP ecx, 1
	JNE L$$182
L$$183:
	MOV eax, 0
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, DWORD PTR [ebp + -16]
	ADD eax, 1
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, 1
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + -12]
	SUB eax, 1
	MOV edi, eax
L$$196:
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + -4]
	CMP eax, edi
	JGE L$$200
L$$199:
	MOV ecx, 1
L$$200:
	CMP ecx, 1
	JNE L$$197
L$$198:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + -4]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$202
L$$201:
	MOV eax, 1
	JMP L$$203
L$$202:
	MOV eax, 0
L$$203:
	MOV edx, eax
	MOV eax, DWORD PTR [ebp + -4]
	CMP eax, 0
	JL L$$205
L$$204:
	MOV ecx, 1
	JMP L$$206
L$$205:
	MOV ecx, 0
L$$206:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$208
L$$207:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -4]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$209
L$$208:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$209:
	MOV esi, eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -4]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ebx, edx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP edi, DWORD PTR [eax + 0]
	JGE L$$211
L$$210:
	MOV eax, 1
	JMP L$$212
L$$211:
	MOV eax, 0
L$$212:
	CMP edi, 0
	JL L$$214
L$$213:
	MOV ecx, 1
	JMP L$$215
L$$214:
	MOV ecx, 0
L$$215:
	AND eax, ecx
	CMP eax, 1
	JNE L$$217
L$$216:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, edi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$218
L$$217:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$218:
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, edi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], esi
	MOV eax, DWORD PTR [ebp + -4]
	ADD eax, 1
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, edi
	SUB eax, 1
	MOV edi, eax
	JMP L$$196
L$$197:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + -12]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$220
L$$219:
	MOV eax, 1
	JMP L$$221
L$$220:
	MOV eax, 0
L$$221:
	MOV edx, eax
	MOV eax, DWORD PTR [ebp + -12]
	CMP eax, 0
	JL L$$223
L$$222:
	MOV ecx, 1
	JMP L$$224
L$$223:
	MOV ecx, 0
L$$224:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$226
L$$225:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$227
L$$226:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$227:
	MOV esi, eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 8
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ecx, edx
	MOV eax, DWORD PTR [ebp + -12]
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -12], eax
	JMP L$$181
L$$182:
	JMP L$$171
L$$169:
L$$171:
	MOV eax, DWORD PTR [ebp + -16]
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
	MOV esi, edx
	MOV ebx, DWORD PTR [ebp + 12]
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV eax, DWORD PTR [eax + 0]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$229
L$$228:
	MOV eax, 1
	JMP L$$230
L$$229:
	MOV eax, 0
L$$230:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 3
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	CMP DWORD PTR [ecx + 0], 0
	JL L$$232
L$$231:
	MOV ecx, 1
	JMP L$$233
L$$232:
	MOV ecx, 0
L$$233:
	AND eax, ecx
	CMP eax, 1
	JNE L$$235
L$$234:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, DWORD PTR [ebp + 12]
	MOV edx, 3
	IMUL edx, 4
	ADD edi, edx
	MOV edx, edi
	MOV edx, DWORD PTR [edx + 0]
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$236
L$$235:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$236:
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV edx, esi
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
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LFannkuch1$firstPermutation
	ADD esp, 8
	MOV eax, 1
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, 0
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, 0
L$$237:
	MOV eax, 1
	SUB eax, ebx
	CMP eax, 1
	JNE L$$238
L$$239:
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 0
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 7
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$244
L$$243:
	MOV eax, 1
	JMP L$$245
L$$244:
	MOV eax, 0
L$$245:
	MOV edx, eax
	MOV eax, 0
	CMP eax, 0
	JL L$$247
L$$246:
	MOV ecx, 1
	JMP L$$248
L$$247:
	MOV ecx, 0
L$$248:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$250
L$$249:
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
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$251
L$$250:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$251:
	MOV eax, esi
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LFannkuch1$equals
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$240
L$$241:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFannkuch1$countFlips
	ADD esp, 4
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -12]
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LFannkuch1$max
	ADD esp, 12
	MOV DWORD PTR [ebp + -12], eax
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	PUSH eax
	MOV eax, 2
	PUSH eax
	CALL _LFannkuch1$mod
	ADD esp, 12
	MOV ecx, eax
	MOV eax, esi
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LFannkuch1$equals
	ADD esp, 12
	CMP eax, 1
	JNE L$$252
L$$253:
	MOV eax, DWORD PTR [ebp + -8]
	ADD eax, edi
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$254
L$$252:
	MOV eax, DWORD PTR [ebp + -8]
	SUB eax, edi
	MOV DWORD PTR [ebp + -8], eax
L$$254:
	JMP L$$242
L$$240:
L$$242:
	MOV eax, DWORD PTR [ebp + -4]
	ADD eax, 1
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -16]
	PUSH eax
	CALL _LFannkuch1$equals
	ADD esp, 12
	CMP eax, 1
	JNE L$$255
L$$256:
	MOV ebx, 1
	JMP L$$257
L$$255:
L$$257:
	MOV eax, 1
	SUB eax, ebx
	CMP eax, 1
	JNE L$$258
L$$259:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFannkuch1$nextPermutation
	ADD esp, 4
	JMP L$$260
L$$258:
L$$260:
	JMP L$$237
L$$238:
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
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 80
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, 32
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 0
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
	ADD eax, 1
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
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
L$$261:
	MOV eax, 0
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, 4
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	MOV ecx, DWORD PTR [ecx + 0]
	CMP ebx, DWORD PTR [ecx + 0]
	JGE L$$265
L$$264:
	MOV eax, 1
L$$265:
	CMP eax, 1
	JNE L$$262
L$$263:
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
	MOV eax, ebx
	SUB eax, 1
	MOV edi, DWORD PTR [ebp + 8]
	MOV ecx, 4
	IMUL ecx, 4
	ADD edi, ecx
	MOV ecx, edi
	MOV ecx, DWORD PTR [ecx + 0]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$267
L$$266:
	MOV eax, 1
	JMP L$$268
L$$267:
	MOV eax, 0
L$$268:
	MOV edi, eax
	MOV eax, ebx
	SUB eax, 1
	CMP eax, 0
	JL L$$270
L$$269:
	MOV ecx, 1
	JMP L$$271
L$$270:
	MOV ecx, 0
L$$271:
	MOV eax, edi
	AND eax, ecx
	CMP eax, 1
	JNE L$$273
L$$272:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 4
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, ebx
	SUB edi, 1
	ADD edi, 1
	IMUL eax, edi
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$274
L$$273:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$274:
	MOV ecx, esi
	IMUL eax, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$261
L$$262:
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
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, 4
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	MOV ecx, DWORD PTR [ecx + 0]
	MOV eax, DWORD PTR [eax + 0]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$276
L$$275:
	MOV eax, 1
	JMP L$$277
L$$276:
	MOV eax, 0
L$$277:
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, 3
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	CMP DWORD PTR [ecx + 0], 0
	JL L$$279
L$$278:
	MOV ecx, 1
	JMP L$$280
L$$279:
	MOV ecx, 0
L$$280:
	AND eax, ecx
	CMP eax, 1
	JNE L$$282
L$$281:
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
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$283
L$$282:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$283:
	MOV ecx, ebx
	MOV esi, eax
	MOV ebx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ebx, eax
	MOV eax, ebx
	ADD esi, DWORD PTR [eax + 0]
	MOV eax, esi
	SUB eax, 1
	MOV esi, DWORD PTR [ebp + 8]
	MOV ebx, 0
	IMUL ebx, 4
	ADD esi, ebx
	MOV ebx, esi
	MOV ebx, DWORD PTR [ebx + 0]
	CDQ
	IDIV ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, 4
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	MOV ecx, DWORD PTR [ecx + 0]
	MOV eax, DWORD PTR [eax + 0]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$285
L$$284:
	MOV eax, 1
	JMP L$$286
L$$285:
	MOV eax, 0
L$$286:
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, 3
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	CMP DWORD PTR [ecx + 0], 0
	JL L$$288
L$$287:
	MOV ecx, 1
	JMP L$$289
L$$288:
	MOV ecx, 0
L$$289:
	AND eax, ecx
	CMP eax, 1
	JNE L$$291
L$$290:
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
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$292
L$$291:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$292:
	MOV ecx, ebx
	MOV esi, eax
	MOV ebx, DWORD PTR [ebp + 8]
	MOV eax, 1
	IMUL eax, 4
	ADD ebx, eax
	MOV eax, ebx
	ADD esi, DWORD PTR [eax + 0]
	MOV eax, esi
	SUB eax, 1
	MOV esi, DWORD PTR [ebp + 8]
	MOV ebx, 1
	IMUL ebx, 4
	ADD esi, ebx
	MOV ebx, esi
	MOV ebx, DWORD PTR [ebx + 0]
	CDQ
	IDIV ebx
	MOV DWORD PTR [ecx + 0], eax
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
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
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
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
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
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
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
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
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
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
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
L$$293:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$297
L$$296:
	MOV edx, 1
L$$297:
	CMP edx, 1
	JNE L$$294
L$$295:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LFannkuch1$runTask
	ADD esp, 8
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$293
L$$294:
	MOV edi, 0
	MOV ebx, 0
L$$298:
	MOV eax, 0
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 5
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	CMP ebx, DWORD PTR [ecx + 0]
	JGE L$$302
L$$301:
	MOV eax, 1
L$$302:
	CMP eax, 1
	JNE L$$299
L$$300:
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 5
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$304
L$$303:
	MOV eax, 1
	JMP L$$305
L$$304:
	MOV eax, 0
L$$305:
	CMP ebx, 0
	JL L$$307
L$$306:
	MOV ecx, 1
	JMP L$$308
L$$307:
	MOV ecx, 0
L$$308:
	AND eax, ecx
	CMP eax, 1
	JNE L$$310
L$$309:
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
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$311
L$$310:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$311:
	MOV eax, esi
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LFannkuch1$max
	ADD esp, 12
	MOV edi, eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$298
L$$299:
	MOV ecx, 0
	MOV ebx, 0
L$$312:
	MOV eax, 0
	MOV esi, DWORD PTR [ebp + 8]
	MOV edx, 6
	IMUL edx, 4
	ADD esi, edx
	MOV edx, esi
	MOV edx, DWORD PTR [edx + 0]
	CMP ebx, DWORD PTR [edx + 0]
	JGE L$$316
L$$315:
	MOV eax, 1
L$$316:
	CMP eax, 1
	JNE L$$313
L$$314:
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 6
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$318
L$$317:
	MOV eax, 1
	JMP L$$319
L$$318:
	MOV eax, 0
L$$319:
	CMP ebx, 0
	JL L$$321
L$$320:
	MOV ecx, 1
	JMP L$$322
L$$321:
	MOV ecx, 0
L$$322:
	AND eax, ecx
	CMP eax, 1
	JNE L$$324
L$$323:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 6
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
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$325
L$$324:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$325:
	MOV eax, esi
	ADD eax, ecx
	MOV ecx, eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$312
L$$313:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV eax, 3
	IMUL eax, 4
	ADD edx, eax
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LFannkuch1$printResult
	ADD esp, 16
	MOV eax, 10
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
