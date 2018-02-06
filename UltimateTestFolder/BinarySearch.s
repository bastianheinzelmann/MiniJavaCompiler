	.intel_syntax
	.global _Lmain
_Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, 8
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	MOV eax, 20
	PUSH eax
	CALL _LBS$Start
	ADD esp, 8
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
_LBS$Start:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LBS$Init
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LBS$Print
	ADD esp, 4
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 8
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	MOV eax, eax
	CMP eax, 1
	JNE L$$0
L$$1:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	JMP L$$2
L$$0:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
L$$2:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 19
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	MOV eax, eax
	CMP eax, 1
	JNE L$$3
L$$4:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	JMP L$$5
L$$3:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
L$$5:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 20
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	MOV eax, eax
	CMP eax, 1
	JNE L$$6
L$$7:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	JMP L$$8
L$$6:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
L$$8:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 21
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	MOV eax, eax
	CMP eax, 1
	JNE L$$9
L$$10:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	JMP L$$11
L$$9:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
L$$11:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 37
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	MOV eax, eax
	CMP eax, 1
	JNE L$$12
L$$13:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	JMP L$$14
L$$12:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
L$$14:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 38
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	MOV eax, eax
	CMP eax, 1
	JNE L$$15
L$$16:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	JMP L$$17
L$$15:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
L$$17:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 39
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	MOV eax, eax
	CMP eax, 1
	JNE L$$18
L$$19:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	JMP L$$20
L$$18:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
L$$20:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 50
	PUSH eax
	CALL _LBS$Search
	ADD esp, 8
	MOV eax, eax
	CMP eax, 1
	JNE L$$21
L$$22:
	MOV eax, 1
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	JMP L$$23
L$$21:
	MOV eax, 0
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
L$$23:
	MOV eax, 999
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LBS$Search:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, 0
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, esi
	SUB eax, 1
	MOV esi, eax
	MOV ebx, 0
	MOV eax, 1
L$$24:
	CMP eax, 1
	JNE L$$25
L$$26:
	MOV eax, ebx
	ADD eax, esi
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 12]
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LBS$Div
	ADD esp, 8
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV edi, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, eax
	ADD ecx, 1
	IMUL edx, ecx
	ADD edi, edx
	MOV ecx, edi
	MOV edi, DWORD PTR [ecx + 0]
	MOV ecx, 0
	CMP DWORD PTR [ebp + 8], edi
	JGE L$$31
L$$30:
	MOV ecx, 1
L$$31:
	CMP ecx, 1
	JNE L$$27
L$$28:
	MOV eax, eax
	SUB eax, 1
	MOV esi, eax
	JMP L$$29
L$$27:
	MOV eax, eax
	ADD eax, 1
	MOV ebx, eax
L$$29:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LBS$Compare
	ADD esp, 12
	MOV eax, eax
	CMP eax, 1
	JNE L$$32
L$$33:
	MOV eax, 0
	JMP L$$34
L$$32:
	MOV eax, 1
L$$34:
	MOV ecx, 0
	CMP esi, ebx
	JGE L$$39
L$$38:
	MOV ecx, 1
L$$39:
	CMP ecx, 1
	JNE L$$35
L$$36:
	MOV eax, 0
	JMP L$$37
L$$35:
	MOV ecx, 0
L$$37:
	JMP L$$24
L$$25:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LBS$Compare
	ADD esp, 12
	MOV eax, eax
	CMP eax, 1
	JNE L$$40
L$$41:
	MOV eax, 1
	JMP L$$42
L$$40:
	MOV eax, 0
L$$42:
	MOV eax, eax
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
_LBS$Div:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, esi
	MOV ecx, edi
	MOV edi, 0
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, 1
	MOV ebx, eax
L$$43:
	MOV eax, 0
	CMP esi, ebx
	JGE L$$47
L$$46:
	MOV eax, 1
L$$47:
	CMP eax, 1
	JNE L$$44
L$$45:
	MOV eax, edi
	ADD eax, 1
	MOV edi, eax
	MOV eax, esi
	ADD eax, 2
	MOV esi, eax
	JMP L$$43
L$$44:
	MOV eax, edi
	MOV eax, eax
	MOV ebx, DWORD PTR [ebp + -4]
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LBS$Compare:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 0
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	MOV eax, eax
	MOV edi, 0
	MOV esi, DWORD PTR [ebp + 12]
	CMP esi, DWORD PTR [ebp + 8]
	JGE L$$52
L$$51:
	MOV edi, 1
L$$52:
	CMP edi, 1
	JNE L$$48
L$$49:
	MOV eax, 0
	JMP L$$50
L$$48:
	MOV esi, 0
	CMP DWORD PTR [ebp + 12], eax
	JGE L$$57
L$$56:
	MOV esi, 1
L$$57:
	MOV eax, 1
	SUB eax, esi
	CMP eax, 1
	JNE L$$53
L$$54:
	MOV eax, 0
	JMP L$$55
L$$53:
	MOV eax, 1
L$$55:
L$$50:
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
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
	MOV esi, esi
	MOV edi, edi
	MOV ebx, 1
L$$58:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$62
L$$61:
	MOV edx, 1
L$$62:
	CMP edx, 1
	JNE L$$59
L$$60:
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
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$58
L$$59:
	MOV eax, 99999
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
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
	MOV ecx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, 1
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV edi, eax
L$$63:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	CMP ecx, DWORD PTR [eax + 0]
	JGE L$$67
L$$66:
	MOV edx, 1
L$$67:
	CMP edx, 1
	JNE L$$64
L$$65:
	MOV eax, 2
	MOV ecx, DWORD PTR [ebp + -4]
	IMUL eax, ecx
	MOV esi, eax
	MOV eax, edi
	SUB eax, 3
	MOV ebx, eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
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
	MOV ecx, esi
	ADD ecx, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, edi
	SUB eax, 1
	MOV edi, eax
	JMP L$$63
L$$64:
	MOV eax, 0
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
