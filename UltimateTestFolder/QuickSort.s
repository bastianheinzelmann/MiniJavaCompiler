	.intel_syntax
	.global _Lmain
_Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, 8
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	PUSH eax
	MOV eax, 10
	PUSH eax
	CALL _LQS$Start
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LQS$Start:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LQS$Init
	ADD esp, 8
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LQS$Print
	ADD esp, 4
	MOV ecx, eax
	MOV eax, 9999
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	SUB eax, 1
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LQS$Sort
	ADD esp, 12
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LQS$Print
	ADD esp, 4
	MOV ecx, eax
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LQS$Sort:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 20
	MOV eax, ebx
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, 0
	MOV DWORD PTR [ebp + -8], eax
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 12]
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$4
L$$3:
	MOV ecx, 1
L$$4:
	CMP ecx, 1
	JNE L$$0
L$$1:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$6
L$$5:
	MOV eax, 1
	JMP L$$7
L$$6:
	MOV eax, 0
L$$7:
	CMP DWORD PTR [ebp + 8], 0
	JL L$$9
L$$8:
	MOV ecx, 1
	JMP L$$10
L$$9:
	MOV ecx, 0
L$$10:
	AND eax, ecx
	CMP eax, 1
	JNE L$$12
L$$11:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$13
L$$12:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$13:
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 12]
	SUB eax, 1
	MOV esi, eax
	MOV ebx, DWORD PTR [ebp + 8]
	MOV eax, 1
L$$14:
	CMP eax, 1
	JNE L$$15
L$$16:
	MOV eax, 1
L$$17:
	CMP eax, 1
	JNE L$$18
L$$19:
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
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
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$28
L$$27:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$28:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + -4]
	CMP eax, ecx
	JGE L$$33
L$$32:
	MOV edx, 1
L$$33:
	MOV eax, 1
	SUB eax, edx
	CMP eax, 1
	JNE L$$29
L$$30:
	MOV eax, 0
	JMP L$$31
L$$29:
	MOV eax, 1
L$$31:
	JMP L$$17
L$$18:
	MOV eax, 1
L$$34:
	CMP eax, 1
	JNE L$$35
L$$36:
	MOV eax, ebx
	SUB eax, 1
	MOV ebx, eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$38
L$$37:
	MOV eax, 1
	JMP L$$39
L$$38:
	MOV eax, 0
L$$39:
	CMP ebx, 0
	JL L$$41
L$$40:
	MOV ecx, 1
	JMP L$$42
L$$41:
	MOV ecx, 0
L$$42:
	AND eax, ecx
	CMP eax, 1
	JNE L$$44
L$$43:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
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
	JMP L$$45
L$$44:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$45:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + -4]
	CMP ecx, eax
	JGE L$$50
L$$49:
	MOV edx, 1
L$$50:
	MOV eax, 1
	SUB eax, edx
	CMP eax, 1
	JNE L$$46
L$$47:
	MOV eax, 0
	JMP L$$48
L$$46:
	MOV eax, 1
L$$48:
	JMP L$$34
L$$35:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP esi, DWORD PTR [eax + 0]
	JGE L$$52
L$$51:
	MOV eax, 1
	JMP L$$53
L$$52:
	MOV eax, 0
L$$53:
	CMP esi, 0
	JL L$$55
L$$54:
	MOV ecx, 1
	JMP L$$56
L$$55:
	MOV ecx, 0
L$$56:
	AND eax, ecx
	CMP eax, 1
	JNE L$$58
L$$57:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$59
L$$58:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$59:
	MOV DWORD PTR [ebp + -8], eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
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
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
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
	JMP L$$68
L$$67:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$68:
	MOV eax, edi
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ecx, edx
	MOV eax, DWORD PTR [ebp + -8]
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, 0
	MOV eax, esi
	ADD eax, 1
	CMP ebx, eax
	JGE L$$73
L$$72:
	MOV ecx, 1
L$$73:
	CMP ecx, 1
	JNE L$$69
L$$70:
	MOV eax, 0
	JMP L$$71
L$$69:
	MOV eax, 1
L$$71:
	JMP L$$14
L$$15:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ebx, edx
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP esi, DWORD PTR [eax + 0]
	JGE L$$75
L$$74:
	MOV eax, 1
	JMP L$$76
L$$75:
	MOV eax, 0
L$$76:
	CMP esi, 0
	JL L$$78
L$$77:
	MOV ecx, 1
	JMP L$$79
L$$78:
	MOV ecx, 0
L$$79:
	AND eax, ecx
	CMP eax, 1
	JNE L$$81
L$$80:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$82
L$$81:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$82:
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
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
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$84
L$$83:
	MOV eax, 1
	JMP L$$85
L$$84:
	MOV eax, 0
L$$85:
	CMP DWORD PTR [ebp + 8], 0
	JL L$$87
L$$86:
	MOV ecx, 1
	JMP L$$88
L$$87:
	MOV ecx, 0
L$$88:
	AND eax, ecx
	CMP eax, 1
	JNE L$$90
L$$89:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$91
L$$90:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$91:
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
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
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, esi
	SUB eax, 1
	PUSH eax
	CALL _LQS$Sort
	ADD esp, 12
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, esi
	ADD eax, 1
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LQS$Sort
	ADD esp, 12
	JMP L$$2
L$$0:
	MOV eax, 0
L$$2:
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
_LQS$Print:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, 0
L$$92:
	MOV eax, 0
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 1
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	CMP ebx, DWORD PTR [ecx + 0]
	JGE L$$96
L$$95:
	MOV eax, 1
L$$96:
	CMP eax, 1
	JNE L$$93
L$$94:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$98
L$$97:
	MOV eax, 1
	JMP L$$99
L$$98:
	MOV eax, 0
L$$99:
	CMP ebx, 0
	JL L$$101
L$$100:
	MOV ecx, 1
	JMP L$$102
L$$101:
	MOV ecx, 0
L$$102:
	AND eax, ecx
	CMP eax, 1
	JNE L$$104
L$$103:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
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
	JMP L$$105
L$$104:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$105:
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$92
L$$93:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LQS$Init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
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
	MOV DWORD PTR [eax + 0], 20
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
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
	MOV DWORD PTR [eax + 0], 7
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 2
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 12
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 3
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 18
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 4
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 2
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 5
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 11
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 6
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 6
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 7
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 9
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 8
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 19
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, 9
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 5
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
