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
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	MOV eax, 10
	PUSH eax
	CALL _LBBS$Start
	MOV eax, eax
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
_LBBS$Start:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LBBS$Init
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LBBS$Print
	MOV eax, eax
	MOV eax, 99999
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LBBS$Sort
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LBBS$Print
	MOV eax, eax
	MOV eax, 0
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LBBS$Sort:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, esi
	MOV ecx, edi
	MOV eax, DWORD PTR [ebp + 8]
	MOV ebx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ebx, eax
	MOV eax, ebx
	MOV eax, DWORD PTR [eax + 0]
	SUB eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, 0
	SUB eax, 1
	MOV edi, eax
L$$0:
	MOV eax, 0
	MOV ebx, DWORD PTR [ebp + -8]
	CMP edi, ebx
	JGE L$$4
L$$3:
	MOV eax, 1
L$$4:
	CMP eax, 1
	JNE L$$1
L$$2:
	MOV esi, 1
L$$5:
	MOV ebx, 0
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	ADD eax, 1
	CMP esi, eax
	JGE L$$9
L$$8:
	MOV ebx, 1
L$$9:
	CMP ebx, 1
	JNE L$$6
L$$7:
	MOV eax, esi
	SUB eax, 1
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV edx, DWORD PTR [ecx + 0]
	MOV ecx, 4
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, esi
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV edx, DWORD PTR [ecx + 0]
	MOV ecx, 0
	CMP edx, eax
	JGE L$$14
L$$13:
	MOV ecx, 1
L$$14:
	CMP ecx, 1
	JNE L$$10
L$$11:
	MOV eax, esi
	SUB eax, 1
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV edx, DWORD PTR [ecx + 0]
	MOV ecx, 4
	MOV ebx, ebx
	ADD ebx, 1
	IMUL ecx, ebx
	ADD edx, ecx
	MOV edi, edx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, esi
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [edi + 0], ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV edx, ecx
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, esi
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	JMP L$$12
L$$10:
	MOV eax, 0
L$$12:
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$5
L$$6:
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$0
L$$1:
	MOV eax, 0
	MOV eax, eax
	MOV ebx, DWORD PTR [ebp + -4]
	MOV ebx, ebx
	MOV esi, edx
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
	MOV esi, esi
	MOV edi, edi
	MOV ebx, 0
L$$15:
	MOV edx, 0
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$19
L$$18:
	MOV edx, 1
L$$19:
	CMP edx, 1
	JNE L$$16
L$$17:
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
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
	MOV eax, eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$15
L$$16:
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LBBS$Init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV ecx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
