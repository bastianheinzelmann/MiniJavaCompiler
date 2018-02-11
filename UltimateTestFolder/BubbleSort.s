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
	CALL _LBBS$Start
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LBBS$Start:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LBBS$Init
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LBBS$Print
	ADD esp, 4
	MOV eax, 99999
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LBBS$Sort
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LBBS$Print
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LBBS$Sort:
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
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	SUB eax, 1
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, 0
	SUB eax, 1
	MOV DWORD PTR [ebp + -4], eax
L$$0:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + -4]
	MOV eax, DWORD PTR [ebp + -8]
	CMP ecx, eax
	JGE L$$4
L$$3:
	MOV edx, 1
L$$4:
	CMP edx, 1
	JNE L$$1
L$$2:
	MOV ebx, 1
L$$5:
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + -8]
	ADD eax, 1
	CMP ebx, eax
	JGE L$$9
L$$8:
	MOV ecx, 1
L$$9:
	CMP ecx, 1
	JNE L$$6
L$$7:
	MOV eax, ebx
	SUB eax, 1
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$11
L$$10:
	MOV ecx, 1
	JMP L$$12
L$$11:
	MOV ecx, 0
L$$12:
	CMP eax, 0
	JL L$$14
L$$13:
	MOV edx, 1
	JMP L$$15
L$$14:
	MOV edx, 0
L$$15:
	AND ecx, edx
	CMP ecx, 1
	JNE L$$17
L$$16:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV edx, DWORD PTR [ecx + 0]
	MOV ecx, 4
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$18
L$$17:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$18:
	MOV esi, eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$20
L$$19:
	MOV eax, 1
	JMP L$$21
L$$20:
	MOV eax, 0
L$$21:
	CMP ebx, 0
	JL L$$23
L$$22:
	MOV ecx, 1
	JMP L$$24
L$$23:
	MOV ecx, 0
L$$24:
	AND eax, ecx
	CMP eax, 1
	JNE L$$26
L$$25:
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
	JMP L$$27
L$$26:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$27:
	MOV ecx, eax
	MOV eax, 0
	CMP ecx, esi
	JGE L$$32
L$$31:
	MOV eax, 1
L$$32:
	CMP eax, 1
	JNE L$$28
L$$29:
	MOV eax, ebx
	SUB eax, 1
	MOV esi, eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP esi, DWORD PTR [eax + 0]
	JGE L$$34
L$$33:
	MOV eax, 1
	JMP L$$35
L$$34:
	MOV eax, 0
L$$35:
	CMP esi, 0
	JL L$$37
L$$36:
	MOV ecx, 1
	JMP L$$38
L$$37:
	MOV ecx, 0
L$$38:
	AND eax, ecx
	CMP eax, 1
	JNE L$$40
L$$39:
	MOV ecx, DWORD PTR [ebp + 8]
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
	JMP L$$41
L$$40:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$41:
	MOV edi, eax
	MOV ecx, DWORD PTR [ebp + 8]
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
	MOV esi, edx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$43
L$$42:
	MOV eax, 1
	JMP L$$44
L$$43:
	MOV eax, 0
L$$44:
	CMP ebx, 0
	JL L$$46
L$$45:
	MOV ecx, 1
	JMP L$$47
L$$46:
	MOV ecx, 0
L$$47:
	AND eax, ecx
	CMP eax, 1
	JNE L$$49
L$$48:
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
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$50
L$$49:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$50:
	MOV eax, esi
	MOV DWORD PTR [eax + 0], ecx
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
	MOV DWORD PTR [eax + 0], edi
	JMP L$$30
L$$28:
	MOV eax, 0
L$$30:
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$5
L$$6:
	MOV eax, DWORD PTR [ebp + -8]
	SUB eax, 1
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$0
L$$1:
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
_LBBS$Print:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, 0
L$$51:
	MOV eax, 0
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 1
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	CMP ebx, DWORD PTR [ecx + 0]
	JGE L$$55
L$$54:
	MOV eax, 1
L$$55:
	CMP eax, 1
	JNE L$$52
L$$53:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$57
L$$56:
	MOV eax, 1
	JMP L$$58
L$$57:
	MOV eax, 0
L$$58:
	CMP ebx, 0
	JL L$$60
L$$59:
	MOV ecx, 1
	JMP L$$61
L$$60:
	MOV ecx, 0
L$$61:
	AND eax, ecx
	CMP eax, 1
	JNE L$$63
L$$62:
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
	JMP L$$64
L$$63:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$64:
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$51
L$$52:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LBBS$Init:
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
