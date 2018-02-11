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
	MOV eax, 20
	PUSH eax
	CALL _LBS$Start
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LBS$Start:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LBS$Init
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LBS$Print
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 8
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	CMP eax, 1
	JNE L$$0
L$$1:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	JMP L$$2
L$$0:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
L$$2:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 19
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	CMP eax, 1
	JNE L$$3
L$$4:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	JMP L$$5
L$$3:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
L$$5:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 20
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	CMP eax, 1
	JNE L$$6
L$$7:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	JMP L$$8
L$$6:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
L$$8:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 21
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	CMP eax, 1
	JNE L$$9
L$$10:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	JMP L$$11
L$$9:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
L$$11:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 37
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	CMP eax, 1
	JNE L$$12
L$$13:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	JMP L$$14
L$$12:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
L$$14:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 38
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	CMP eax, 1
	JNE L$$15
L$$16:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	JMP L$$17
L$$15:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
L$$17:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 39
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	CMP eax, 1
	JNE L$$18
L$$19:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	JMP L$$20
L$$18:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
L$$20:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 50
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	CMP eax, 1
	JNE L$$21
L$$22:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	JMP L$$23
L$$21:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
L$$23:
	MOV eax, 999
	MOV esp, ebp
	POP ebp
	RET
_LBS$Search:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 16
	MOV eax, ebx
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, 0
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV edi, DWORD PTR [eax + 0]
	MOV eax, edi
	SUB eax, 1
	MOV edi, eax
	MOV esi, 0
	MOV ecx, 1
L$$24:
	CMP ecx, 1
	JNE L$$25
L$$26:
	MOV eax, esi
	ADD eax, edi
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LBS$Div
	ADD esp, 8
	MOV ebx, eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$28
L$$27:
	MOV eax, 1
	JMP L$$29
L$$28:
	MOV eax, 0
L$$29:
	CMP ebx, 0
	JL L$$31
L$$30:
	MOV ecx, 1
	JMP L$$32
L$$31:
	MOV ecx, 0
L$$32:
	AND eax, ecx
	CMP eax, 1
	JNE L$$34
L$$33:
	MOV ecx, DWORD PTR [ebp + 12]
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
	JMP L$$35
L$$34:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$35:
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + -4]
	CMP DWORD PTR [ebp + 8], eax
	JGE L$$40
L$$39:
	MOV ecx, 1
L$$40:
	CMP ecx, 1
	JNE L$$36
L$$37:
	MOV eax, ebx
	SUB eax, 1
	MOV edi, eax
	JMP L$$38
L$$36:
	MOV eax, ebx
	ADD eax, 1
	MOV esi, eax
L$$38:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LBS$Compare
	ADD esp, 12
	CMP eax, 1
	JNE L$$41
L$$42:
	MOV ecx, 0
	JMP L$$43
L$$41:
	MOV ecx, 1
L$$43:
	MOV eax, 0
	CMP edi, esi
	JGE L$$48
L$$47:
	MOV eax, 1
L$$48:
	CMP eax, 1
	JNE L$$44
L$$45:
	MOV ecx, 0
	JMP L$$46
L$$44:
	MOV eax, 0
L$$46:
	JMP L$$24
L$$25:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LBS$Compare
	ADD esp, 12
	CMP eax, 1
	JNE L$$49
L$$50:
	MOV eax, 1
	JMP L$$51
L$$49:
	MOV eax, 0
L$$51:
	MOV ecx, DWORD PTR [ebp + -16]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LBS$Div:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, esi
	MOV ecx, edi
	MOV esi, 0
	MOV ebx, 0
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, 1
L$$52:
	MOV edi, 0
	CMP ebx, eax
	JGE L$$56
L$$55:
	MOV edi, 1
L$$56:
	CMP edi, 1
	JNE L$$53
L$$54:
	ADD esi, 1
	ADD ebx, 2
	JMP L$$52
L$$53:
	MOV eax, esi
	MOV ebx, DWORD PTR [ebp + -4]
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LBS$Compare:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 0
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	MOV edi, 0
	MOV esi, DWORD PTR [ebp + 12]
	CMP esi, DWORD PTR [ebp + 8]
	JGE L$$61
L$$60:
	MOV edi, 1
L$$61:
	CMP edi, 1
	JNE L$$57
L$$58:
	MOV eax, 0
	JMP L$$59
L$$57:
	MOV esi, 0
	CMP DWORD PTR [ebp + 12], eax
	JGE L$$66
L$$65:
	MOV esi, 1
L$$66:
	MOV eax, 1
	SUB eax, esi
	CMP eax, 1
	JNE L$$62
L$$63:
	MOV eax, 0
	JMP L$$64
L$$62:
	MOV eax, 1
L$$64:
L$$59:
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LBS$Print:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, 1
L$$67:
	MOV eax, 0
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 1
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	CMP ebx, DWORD PTR [ecx + 0]
	JGE L$$71
L$$70:
	MOV eax, 1
L$$71:
	CMP eax, 1
	JNE L$$68
L$$69:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$73
L$$72:
	MOV eax, 1
	JMP L$$74
L$$73:
	MOV eax, 0
L$$74:
	CMP ebx, 0
	JL L$$76
L$$75:
	MOV ecx, 1
	JMP L$$77
L$$76:
	MOV ecx, 0
L$$77:
	AND eax, ecx
	CMP eax, 1
	JNE L$$79
L$$78:
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
	JMP L$$80
L$$79:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$80:
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$67
L$$68:
	MOV eax, 99999
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LBS$Init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 16
	MOV eax, ebx
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -8], eax
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
	MOV eax, 1
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV esi, eax
L$$81:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, DWORD PTR [ebp + -4]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$85
L$$84:
	MOV edx, 1
L$$85:
	CMP edx, 1
	JNE L$$82
L$$83:
	MOV ecx, 2
	MOV eax, DWORD PTR [ebp + -4]
	IMUL ecx, eax
	MOV ebx, ecx
	MOV eax, esi
	SUB eax, 3
	MOV edx, eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, DWORD PTR [ebp + -4]
	ADD edi, 1
	IMUL eax, edi
	ADD ecx, eax
	MOV eax, ebx
	ADD eax, edx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, DWORD PTR [ebp + -4]
	ADD eax, 1
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, esi
	SUB eax, 1
	MOV esi, eax
	JMP L$$81
L$$82:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -16]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
