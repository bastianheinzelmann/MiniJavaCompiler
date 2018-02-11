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
	CALL _LPiDigits$pi
	ADD esp, 4
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$base:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 1000
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$places:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 40
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$reserve:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 5
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$equals:
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
	MOV eax, 1
	SUB eax, esi
	CMP eax, 1
	JNE L$$1
L$$0:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, DWORD PTR [ebp + 12]
	JGE L$$6
L$$5:
	MOV esi, 1
L$$6:
	MOV eax, 1
	SUB eax, esi
	MOV esi, eax
	MOV eax, 1
	JMP L$$2
L$$1:
	MOV esi, 0
	MOV eax, 0
L$$2:
	AND eax, esi
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$mod:
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
_LPiDigits$div:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LPiDigits$equals
	ADD esp, 12
	CMP eax, 1
	JNE L$$7
L$$8:
	MOV edx, 0
	JMP L$$9
L$$7:
	MOV edx, 0
L$$10:
	MOV ecx, 0
	MOV eax, 0
	MOV ebx, DWORD PTR [ebp + 12]
	SUB ebx, DWORD PTR [ebp + 8]
	ADD ebx, 1
	CMP eax, ebx
	JGE L$$14
L$$13:
	MOV ecx, 1
L$$14:
	CMP ecx, 1
	JNE L$$11
L$$12:
	MOV eax, edx
	ADD eax, 1
	MOV edx, eax
	MOV eax, DWORD PTR [ebp + 12]
	SUB eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ebp + 12], eax
	JMP L$$10
L$$11:
L$$9:
	MOV eax, edx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$shownum:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, 0
L$$15:
	MOV edi, 0
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$reserve
	ADD esp, 4
	MOV ecx, ebx
	SUB ecx, eax
	CMP esi, ecx
	JGE L$$19
L$$18:
	MOV edi, 1
L$$19:
	CMP edi, 1
	JNE L$$16
L$$17:
	MOV eax, DWORD PTR [ebp + 8]
	CMP esi, DWORD PTR [eax + 0]
	JGE L$$21
L$$20:
	MOV eax, 1
	JMP L$$22
L$$21:
	MOV eax, 0
L$$22:
	CMP esi, 0
	JL L$$24
L$$23:
	MOV ecx, 1
	JMP L$$25
L$$24:
	MOV ecx, 0
L$$25:
	AND eax, ecx
	CMP eax, 1
	JNE L$$27
L$$26:
	MOV ebx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV eax, ebx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$28
L$$27:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$28:
	MOV ebx, 48
	MOV ecx, 100
	CDQ
	IDIV ecx
	ADD ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	CMP esi, DWORD PTR [eax + 0]
	JGE L$$30
L$$29:
	MOV eax, 1
	JMP L$$31
L$$30:
	MOV eax, 0
L$$31:
	CMP esi, 0
	JL L$$33
L$$32:
	MOV ecx, 1
	JMP L$$34
L$$33:
	MOV ecx, 0
L$$34:
	AND eax, ecx
	CMP eax, 1
	JNE L$$36
L$$35:
	MOV edi, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edi, ecx
	MOV eax, edi
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$37
L$$36:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$37:
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	MOV ecx, 10
	CDQ
	IDIV ecx
	PUSH eax
	MOV eax, 10
	PUSH eax
	CALL _LPiDigits$mod
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 48
	ADD eax, ecx
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	CMP esi, DWORD PTR [eax + 0]
	JGE L$$39
L$$38:
	MOV eax, 1
	JMP L$$40
L$$39:
	MOV eax, 0
L$$40:
	CMP esi, 0
	JL L$$42
L$$41:
	MOV ecx, 1
	JMP L$$43
L$$42:
	MOV ecx, 0
L$$43:
	AND eax, ecx
	CMP eax, 1
	JNE L$$45
L$$44:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$46
L$$45:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$46:
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV eax, 10
	PUSH eax
	CALL _LPiDigits$mod
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 48
	ADD eax, ecx
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LPiDigits$equals
	ADD esp, 12
	CMP eax, 1
	JNE L$$47
L$$48:
	MOV eax, 46
	PUSH eax
	CALL _L_write
	ADD esp, 4
	JMP L$$49
L$$47:
	MOV eax, 32
	PUSH eax
	CALL _L_write
	ADD esp, 4
L$$49:
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$15
L$$16:
	MOV eax, 10
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, 13
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$overflow:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	SUB eax, 1
	MOV ebx, eax
L$$50:
	MOV ecx, 0
	MOV eax, 0
	CMP eax, ebx
	JGE L$$54
L$$53:
	MOV ecx, 1
L$$54:
	CMP ecx, 1
	JNE L$$51
L$$52:
L$$55:
	MOV edi, 0
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$base
	ADD esp, 4
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$61
L$$60:
	MOV eax, 1
	JMP L$$62
L$$61:
	MOV eax, 0
L$$62:
	CMP ebx, 0
	JL L$$64
L$$63:
	MOV ecx, 1
	JMP L$$65
L$$64:
	MOV ecx, 0
L$$65:
	AND eax, ecx
	CMP eax, 1
	JNE L$$67
L$$66:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$68
L$$67:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$68:
	ADD eax, 1
	CMP esi, eax
	JGE L$$59
L$$58:
	MOV edi, 1
L$$59:
	CMP edi, 1
	JNE L$$56
L$$57:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV eax, DWORD PTR [ebp + 8]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$70
L$$69:
	MOV eax, 1
	JMP L$$71
L$$70:
	MOV eax, 0
L$$71:
	CMP ebx, 0
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
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$77
L$$76:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$77:
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$base
	ADD esp, 4
	MOV edx, eax
	MOV ecx, edi
	MOV eax, esi
	SUB eax, edx
	MOV DWORD PTR [ecx + 0], eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, ebx
	SUB eax, 1
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV esi, edx
	MOV ecx, ebx
	SUB ecx, 1
	MOV eax, DWORD PTR [ebp + 8]
	CMP ecx, DWORD PTR [eax + 0]
	JGE L$$79
L$$78:
	MOV eax, 1
	JMP L$$80
L$$79:
	MOV eax, 0
L$$80:
	MOV edx, eax
	MOV eax, ebx
	SUB eax, 1
	CMP eax, 0
	JL L$$82
L$$81:
	MOV ecx, 1
	JMP L$$83
L$$82:
	MOV ecx, 0
L$$83:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$85
L$$84:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, ebx
	SUB eax, 1
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$86
L$$85:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$86:
	MOV ecx, esi
	ADD eax, 1
	MOV DWORD PTR [ecx + 0], eax
	JMP L$$55
L$$56:
L$$87:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$93
L$$92:
	MOV eax, 1
	JMP L$$94
L$$93:
	MOV eax, 0
L$$94:
	CMP ebx, 0
	JL L$$96
L$$95:
	MOV ecx, 1
	JMP L$$97
L$$96:
	MOV ecx, 0
L$$97:
	AND eax, ecx
	CMP eax, 1
	JNE L$$99
L$$98:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$100
L$$99:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$100:
	CMP eax, 0
	JGE L$$91
L$$90:
	MOV esi, 1
L$$91:
	CMP esi, 1
	JNE L$$88
L$$89:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV eax, DWORD PTR [ebp + 8]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$102
L$$101:
	MOV eax, 1
	JMP L$$103
L$$102:
	MOV eax, 0
L$$103:
	CMP ebx, 0
	JL L$$105
L$$104:
	MOV ecx, 1
	JMP L$$106
L$$105:
	MOV ecx, 0
L$$106:
	AND eax, ecx
	CMP eax, 1
	JNE L$$108
L$$107:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$109
L$$108:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$109:
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$base
	ADD esp, 4
	MOV edx, eax
	MOV ecx, edi
	MOV eax, esi
	ADD eax, edx
	MOV DWORD PTR [ecx + 0], eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, ebx
	SUB eax, 1
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV esi, edx
	MOV ecx, ebx
	SUB ecx, 1
	MOV eax, DWORD PTR [ebp + 8]
	CMP ecx, DWORD PTR [eax + 0]
	JGE L$$111
L$$110:
	MOV eax, 1
	JMP L$$112
L$$111:
	MOV eax, 0
L$$112:
	MOV edx, eax
	MOV eax, ebx
	SUB eax, 1
	CMP eax, 0
	JL L$$114
L$$113:
	MOV ecx, 1
	JMP L$$115
L$$114:
	MOV ecx, 0
L$$115:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$117
L$$116:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, ebx
	SUB eax, 1
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$118
L$$117:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$118:
	MOV ecx, esi
	SUB eax, 1
	MOV DWORD PTR [ecx + 0], eax
	JMP L$$87
L$$88:
	MOV eax, ebx
	SUB eax, 1
	MOV ebx, eax
	JMP L$$50
L$$51:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$add:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, 0
L$$119:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	CMP ebx, eax
	JGE L$$123
L$$122:
	MOV esi, 1
L$$123:
	CMP esi, 1
	JNE L$$120
L$$121:
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV eax, DWORD PTR [ebp + 12]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$125
L$$124:
	MOV eax, 1
	JMP L$$126
L$$125:
	MOV eax, 0
L$$126:
	CMP ebx, 0
	JL L$$128
L$$127:
	MOV ecx, 1
	JMP L$$129
L$$128:
	MOV ecx, 0
L$$129:
	AND eax, ecx
	CMP eax, 1
	JNE L$$131
L$$130:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$132
L$$131:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$132:
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$134
L$$133:
	MOV eax, 1
	JMP L$$135
L$$134:
	MOV eax, 0
L$$135:
	CMP ebx, 0
	JL L$$137
L$$136:
	MOV ecx, 1
	JMP L$$138
L$$137:
	MOV ecx, 0
L$$138:
	AND eax, ecx
	CMP eax, 1
	JNE L$$140
L$$139:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV edx, DWORD PTR [eax + 0]
	JMP L$$141
L$$140:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV edx, eax
L$$141:
	MOV ecx, edi
	MOV eax, esi
	ADD eax, edx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$119
L$$120:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$sub:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, 0
L$$142:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	CMP ebx, eax
	JGE L$$146
L$$145:
	MOV esi, 1
L$$146:
	CMP esi, 1
	JNE L$$143
L$$144:
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV eax, DWORD PTR [ebp + 12]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$148
L$$147:
	MOV eax, 1
	JMP L$$149
L$$148:
	MOV eax, 0
L$$149:
	CMP ebx, 0
	JL L$$151
L$$150:
	MOV ecx, 1
	JMP L$$152
L$$151:
	MOV ecx, 0
L$$152:
	AND eax, ecx
	CMP eax, 1
	JNE L$$154
L$$153:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$155
L$$154:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$155:
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$157
L$$156:
	MOV eax, 1
	JMP L$$158
L$$157:
	MOV eax, 0
L$$158:
	CMP ebx, 0
	JL L$$160
L$$159:
	MOV ecx, 1
	JMP L$$161
L$$160:
	MOV ecx, 0
L$$161:
	AND eax, ecx
	CMP eax, 1
	JNE L$$163
L$$162:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV edx, DWORD PTR [eax + 0]
	JMP L$$164
L$$163:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV edx, eax
L$$164:
	MOV ecx, edi
	MOV eax, esi
	SUB eax, edx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$142
L$$143:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$neg:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, 0
L$$165:
	MOV ebx, 0
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	CMP esi, eax
	JGE L$$169
L$$168:
	MOV ebx, 1
L$$169:
	CMP ebx, 1
	JNE L$$166
L$$167:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ebx, edx
	MOV eax, DWORD PTR [ebp + 8]
	CMP esi, DWORD PTR [eax + 0]
	JGE L$$171
L$$170:
	MOV eax, 1
	JMP L$$172
L$$171:
	MOV eax, 0
L$$172:
	CMP esi, 0
	JL L$$174
L$$173:
	MOV ecx, 1
	JMP L$$175
L$$174:
	MOV ecx, 0
L$$175:
	AND eax, ecx
	CMP eax, 1
	JNE L$$177
L$$176:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV edx, DWORD PTR [eax + 0]
	JMP L$$178
L$$177:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV edx, eax
L$$178:
	MOV ecx, ebx
	MOV eax, 0
	SUB eax, edx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$165
L$$166:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$longdiv:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
	MOV ebx, 0
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 0
L$$179:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	SUB eax, 1
	CMP ebx, eax
	JGE L$$183
L$$182:
	MOV esi, 1
L$$183:
	CMP esi, 1
	JNE L$$180
L$$181:
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV eax, DWORD PTR [ebp + 16]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$185
L$$184:
	MOV eax, 1
	JMP L$$186
L$$185:
	MOV eax, 0
L$$186:
	CMP ebx, 0
	JL L$$188
L$$187:
	MOV ecx, 1
	JMP L$$189
L$$188:
	MOV ecx, 0
L$$189:
	AND eax, ecx
	CMP eax, 1
	JNE L$$191
L$$190:
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$192
L$$191:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$192:
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$194
L$$193:
	MOV eax, 1
	JMP L$$195
L$$194:
	MOV eax, 0
L$$195:
	CMP ebx, 0
	JL L$$197
L$$196:
	MOV ecx, 1
	JMP L$$198
L$$197:
	MOV ecx, 0
L$$198:
	AND eax, ecx
	CMP eax, 1
	JNE L$$200
L$$199:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV edx, DWORD PTR [eax + 0]
	JMP L$$201
L$$200:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV edx, eax
L$$201:
	MOV ecx, edi
	MOV eax, esi
	ADD eax, edx
	MOV DWORD PTR [ecx + 0], eax
	MOV esi, DWORD PTR [ebp + 20]
	MOV eax, DWORD PTR [ebp + 16]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$203
L$$202:
	MOV eax, 1
	JMP L$$204
L$$203:
	MOV eax, 0
L$$204:
	CMP ebx, 0
	JL L$$206
L$$205:
	MOV ecx, 1
	JMP L$$207
L$$206:
	MOV ecx, 0
L$$207:
	AND eax, ecx
	CMP eax, 1
	JNE L$$209
L$$208:
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$210
L$$209:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$210:
	MOV eax, esi
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$div
	ADD esp, 12
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 16]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$212
L$$211:
	MOV eax, 1
	JMP L$$213
L$$212:
	MOV eax, 0
L$$213:
	CMP ebx, 0
	JL L$$215
L$$214:
	MOV ecx, 1
	JMP L$$216
L$$215:
	MOV ecx, 0
L$$216:
	AND eax, ecx
	CMP eax, 1
	JNE L$$218
L$$217:
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$219
L$$218:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$219:
	MOV ecx, eax
	MOV eax, esi
	IMUL eax, DWORD PTR [ebp + 8]
	SUB ecx, eax
	MOV eax, ecx
	MOV edi, DWORD PTR [ebp + 16]
	MOV edx, 4
	MOV ecx, ebx
	ADD ecx, 1
	IMUL edx, ecx
	ADD edi, edx
	MOV ecx, edi
	MOV DWORD PTR [ecx + 0], esi
	MOV esi, DWORD PTR [ebp + 16]
	MOV edx, 4
	MOV ecx, ebx
	ADD ecx, 1
	ADD ecx, 1
	IMUL edx, ecx
	ADD esi, edx
	MOV edi, esi
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$base
	ADD esp, 4
	MOV edx, eax
	MOV ecx, edi
	MOV eax, esi
	IMUL eax, edx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$179
L$$180:
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$mult:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 20
	MOV eax, ebx
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
	MOV ebx, 0
L$$220:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	CMP ebx, eax
	JGE L$$224
L$$223:
	MOV esi, 1
L$$224:
	CMP esi, 1
	JNE L$$221
L$$222:
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 0
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$220
L$$221:
	MOV eax, 0
	MOV DWORD PTR [ebp + -8], eax
L$$225:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + -8]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	CMP ebx, eax
	JGE L$$229
L$$228:
	MOV esi, 1
L$$229:
	CMP esi, 1
	JNE L$$226
L$$227:
	MOV eax, 0
	MOV DWORD PTR [ebp + -4], eax
L$$230:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + -8]
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + -4]
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	CMP ebx, eax
	JGE L$$234
L$$233:
	MOV esi, 1
L$$234:
	CMP esi, 1
	JNE L$$231
L$$232:
	MOV ebx, DWORD PTR [ebp + 16]
	MOV edx, 4
	MOV eax, DWORD PTR [ebp + -8]
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + -4]
	ADD ecx, eax
	MOV eax, ecx
	ADD eax, 1
	IMUL edx, eax
	ADD ebx, edx
	MOV edi, ebx
	MOV eax, DWORD PTR [ebp + -8]
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + -4]
	ADD ecx, eax
	MOV eax, DWORD PTR [ebp + 16]
	CMP ecx, DWORD PTR [eax + 0]
	JGE L$$236
L$$235:
	MOV eax, 1
	JMP L$$237
L$$236:
	MOV eax, 0
L$$237:
	MOV edx, eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + -4]
	ADD ecx, eax
	CMP ecx, 0
	JL L$$239
L$$238:
	MOV ecx, 1
	JMP L$$240
L$$239:
	MOV ecx, 0
L$$240:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$242
L$$241:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 4
	MOV edx, DWORD PTR [ebp + -8]
	MOV ebx, edx
	MOV edx, DWORD PTR [ebp + -4]
	ADD ebx, edx
	MOV edx, ebx
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$243
L$$242:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$243:
	MOV esi, eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + -8]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$245
L$$244:
	MOV eax, 1
	JMP L$$246
L$$245:
	MOV eax, 0
L$$246:
	MOV edx, eax
	MOV eax, DWORD PTR [ebp + -8]
	CMP eax, 0
	JL L$$248
L$$247:
	MOV ecx, 1
	JMP L$$249
L$$248:
	MOV ecx, 0
L$$249:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$251
L$$250:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -8]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$252
L$$251:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$252:
	MOV ebx, eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, DWORD PTR [ebp + -4]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$254
L$$253:
	MOV eax, 1
	JMP L$$255
L$$254:
	MOV eax, 0
L$$255:
	MOV edx, eax
	MOV eax, DWORD PTR [ebp + -4]
	CMP eax, 0
	JL L$$257
L$$256:
	MOV ecx, 1
	JMP L$$258
L$$257:
	MOV ecx, 0
L$$258:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$260
L$$259:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 4
	MOV edx, DWORD PTR [ebp + -4]
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$261
L$$260:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$261:
	MOV edx, esi
	MOV ecx, ebx
	IMUL ecx, eax
	ADD edx, ecx
	MOV DWORD PTR [edi + 0], edx
	MOV eax, DWORD PTR [ebp + -4]
	ADD eax, 1
	MOV DWORD PTR [ebp + -4], eax
	JMP L$$230
L$$231:
	MOV eax, DWORD PTR [ebp + -8]
	ADD eax, 1
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$225
L$$226:
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
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
_LPiDigits$mv:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, 0
L$$262:
	MOV ebx, 0
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	CMP esi, eax
	JGE L$$266
L$$265:
	MOV ebx, 1
L$$266:
	CMP ebx, 1
	JNE L$$263
L$$264:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ebx, edx
	MOV eax, DWORD PTR [ebp + 8]
	CMP esi, DWORD PTR [eax + 0]
	JGE L$$268
L$$267:
	MOV eax, 1
	JMP L$$269
L$$268:
	MOV eax, 0
L$$269:
	CMP esi, 0
	JL L$$271
L$$270:
	MOV ecx, 1
	JMP L$$272
L$$271:
	MOV ecx, 0
L$$272:
	AND eax, ecx
	CMP eax, 1
	JNE L$$274
L$$273:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$275
L$$274:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$275:
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$262
L$$263:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$nullify:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, 0
L$$276:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	CMP ebx, eax
	JGE L$$280
L$$279:
	MOV esi, 1
L$$280:
	CMP esi, 1
	JNE L$$277
L$$278:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 0
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$276
L$$277:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$iszero:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 16
	MOV eax, ebx
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -8], eax
	MOV esi, 0
	MOV eax, 1
	MOV DWORD PTR [ebp + -4], eax
L$$281:
	MOV eax, DWORD PTR [ebp + -4]
	CMP eax, 1
	JNE L$$285
L$$284:
	MOV ebx, 0
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$reserve
	ADD esp, 4
	MOV ecx, eax
	MOV eax, edi
	SUB eax, ecx
	CMP esi, eax
	JGE L$$288
L$$287:
	MOV ebx, 1
L$$288:
	MOV ecx, ebx
	MOV eax, 1
	JMP L$$286
L$$285:
	MOV ecx, 0
	MOV eax, 0
L$$286:
	AND eax, ecx
	CMP eax, 1
	JNE L$$282
L$$283:
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	CMP esi, DWORD PTR [eax + 0]
	JGE L$$293
L$$292:
	MOV eax, 1
	JMP L$$294
L$$293:
	MOV eax, 0
L$$294:
	CMP esi, 0
	JL L$$296
L$$295:
	MOV ecx, 1
	JMP L$$297
L$$296:
	MOV ecx, 0
L$$297:
	AND eax, ecx
	CMP eax, 1
	JNE L$$299
L$$298:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$300
L$$299:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$300:
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LPiDigits$equals
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$289
L$$290:
	MOV eax, 0
	MOV DWORD PTR [ebp + -4], eax
	JMP L$$291
L$$289:
L$$291:
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$281
L$$282:
	MOV eax, DWORD PTR [ebp + -4]
	MOV ecx, DWORD PTR [ebp + -16]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$sin:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$mv
	ADD esp, 12
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$nullify
	ADD esp, 8
	MOV ebx, 1
L$$301:
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$iszero
	ADD esp, 8
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$302
L$$303:
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$add
	ADD esp, 16
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$mult
	ADD esp, 16
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ebx
	ADD eax, 1
	PUSH eax
	CALL _LPiDigits$longdiv
	ADD esp, 16
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$mult
	ADD esp, 16
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ebx
	ADD eax, 2
	PUSH eax
	CALL _LPiDigits$longdiv
	ADD esp, 16
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$sub
	ADD esp, 16
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$mult
	ADD esp, 16
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ebx
	ADD eax, 3
	PUSH eax
	CALL _LPiDigits$longdiv
	ADD esp, 16
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$mult
	ADD esp, 16
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ebx
	ADD eax, 4
	PUSH eax
	CALL _LPiDigits$longdiv
	ADD esp, 16
	MOV eax, ebx
	ADD eax, 4
	MOV ebx, eax
	JMP L$$301
L$$302:
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$pi:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 20
	MOV eax, ebx
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	ADD eax, 1
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	ADD eax, 1
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	ADD eax, 1
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	ADD eax, 1
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV ecx, eax
	MOV eax, esi
	MOV DWORD PTR [eax + 0], ecx
	MOV edi, esi
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	PUSH eax
	CALL _LPiDigits$nullify
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	PUSH eax
	CALL _LPiDigits$nullify
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPiDigits$nullify
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LPiDigits$nullify
	ADD esp, 8
	MOV edx, edi
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 1
	MOV esi, 0
L$$304:
	MOV eax, 0
	CMP esi, 10
	JGE L$$308
L$$307:
	MOV eax, 1
L$$308:
	CMP eax, 1
	JNE L$$305
L$$306:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LPiDigits$shownum
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPiDigits$sin
	ADD esp, 20
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	PUSH eax
	CALL _LPiDigits$add
	ADD esp, 16
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$304
L$$305:
	MOV eax, 10
	MOV ecx, DWORD PTR [ebp + -20]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -16]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
