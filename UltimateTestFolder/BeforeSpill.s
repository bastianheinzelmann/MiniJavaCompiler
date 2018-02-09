	.intel_syntax
	.global _Lmain
_Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
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
	MOV eax, 10
	PUSH eax
	CALL _LQS$Start
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
_LQS$Start:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
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
	MOV eax, eax
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
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LQS$Sort:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 40
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, 0
	MOV DWORD PTR [ebp + -20], eax
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
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV edi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	SUB eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -16], eax
	MOV esi, DWORD PTR [ebp + 8]
	MOV eax, 1
L$$5:
	CMP eax, 1
	JNE L$$6
L$$7:
	MOV eax, 1
L$$8:
	CMP eax, 1
	JNE L$$9
L$$10:
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -16], eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	MOV ecx, 0
	CMP eax, edi
	JGE L$$15
L$$14:
	MOV ecx, 1
L$$15:
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$11
L$$12:
	MOV eax, 0
	JMP L$$13
L$$11:
	MOV eax, 1
L$$13:
	JMP L$$8
L$$9:
	MOV eax, 1
L$$16:
	CMP eax, 1
	JNE L$$17
L$$18:
	MOV eax, esi
	SUB eax, 1
	MOV esi, eax
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
	MOV ecx, 0
	CMP edi, eax
	JGE L$$23
L$$22:
	MOV ecx, 1
L$$23:
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$19
L$$20:
	MOV eax, 0
	JMP L$$21
L$$19:
	MOV eax, 1
L$$21:
	JMP L$$16
L$$17:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [ebp + -20], eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ebx, edx
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
	MOV DWORD PTR [ebx + 0], eax
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
	MOV ecx, DWORD PTR [ebp + -20]
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	ADD eax, 1
	CMP esi, eax
	JGE L$$28
L$$27:
	MOV ecx, 1
L$$28:
	CMP ecx, 1
	JNE L$$24
L$$25:
	MOV eax, 0
	JMP L$$26
L$$24:
	MOV eax, 1
L$$26:
	JMP L$$5
L$$6:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edx, esi
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [ebx + 0], eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ebx, edx
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
	MOV DWORD PTR [ebx + 0], eax
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
	MOV ecx, DWORD PTR [ebp + -20]
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	PUSH eax
	CALL _LQS$Sort
	ADD esp, 12
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LQS$Sort
	ADD esp, 12
	MOV eax, eax
	JMP L$$2
L$$0:
	MOV eax, 0
L$$2:
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LQS$Print:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV ebx, 0
L$$29:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$33
L$$32:
	MOV edx, 1
L$$33:
	CMP edx, 1
	JNE L$$30
L$$31:
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
	JMP L$$29
L$$30:
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LQS$Init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV t205, ebx
	MOV esi, esi
	MOV edi, edi
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
	MOV eax, eax
	MOV ebx, t205
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
