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
	CALL _LLS$Start
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LLS$Start:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LLS$Init
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LLS$Print
	ADD esp, 4
	MOV eax, 9999
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 8
	PUSH eax
	CALL _LLS$Search
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 12
	PUSH eax
	CALL _LLS$Search
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 17
	PUSH eax
	CALL _LLS$Search
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 50
	PUSH eax
	CALL _LLS$Search
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 55
	MOV esp, ebp
	POP ebp
	RET
_LLS$Print:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, 1
L$$0:
	MOV eax, 0
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 1
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	CMP ebx, DWORD PTR [ecx + 0]
	JGE L$$4
L$$3:
	MOV eax, 1
L$$4:
	CMP eax, 1
	JNE L$$1
L$$2:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$6
L$$5:
	MOV eax, 1
	JMP L$$7
L$$6:
	MOV eax, 0
L$$7:
	CMP ebx, 0
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
	JMP L$$13
L$$12:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$13:
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$0
L$$1:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LLS$Search:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, 1
	MOV eax, 0
	MOV ebx, 0
L$$14:
	MOV eax, 0
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 1
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	CMP esi, DWORD PTR [ecx + 0]
	JGE L$$18
L$$17:
	MOV eax, 1
L$$18:
	CMP eax, 1
	JNE L$$15
L$$16:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	CMP esi, DWORD PTR [eax + 0]
	JGE L$$20
L$$19:
	MOV eax, 1
	JMP L$$21
L$$20:
	MOV eax, 0
L$$21:
	CMP esi, 0
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
	MOV ecx, DWORD PTR [ebp + 12]
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
	JMP L$$27
L$$26:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$27:
	MOV edx, eax
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	MOV ecx, eax
	MOV eax, 0
	CMP edx, DWORD PTR [ebp + 8]
	JGE L$$32
L$$31:
	MOV eax, 1
L$$32:
	CMP eax, 1
	JNE L$$28
L$$29:
	MOV eax, 0
	JMP L$$30
L$$28:
	MOV eax, 0
	CMP edx, ecx
	JGE L$$37
L$$36:
	MOV eax, 1
L$$37:
	MOV ecx, 1
	SUB ecx, eax
	CMP ecx, 1
	JNE L$$33
L$$34:
	MOV eax, 0
	JMP L$$35
L$$33:
	MOV eax, 1
	MOV ebx, 1
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
L$$35:
L$$30:
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$14
L$$15:
	MOV eax, ebx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LLS$Init:
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
L$$38:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, DWORD PTR [ebp + -4]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$42
L$$41:
	MOV edx, 1
L$$42:
	CMP edx, 1
	JNE L$$39
L$$40:
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
	JMP L$$38
L$$39:
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
