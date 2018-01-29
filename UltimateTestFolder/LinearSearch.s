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
	CALL _LLS$Start
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
_LLS$Start:
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
	CALL _LLS$Init
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LLS$Print
	MOV eax, eax
	MOV eax, 9999
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, 8
	PUSH eax
	CALL _LLS$Search
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, 12
	PUSH eax
	CALL _LLS$Search
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, 17
	PUSH eax
	CALL _LLS$Search
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, 50
	PUSH eax
	CALL _LLS$Search
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, 55
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LLS$Print:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV ebx, 1
L$$0:
	MOV edx, 0
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$4
L$$3:
	MOV edx, 1
L$$4:
	CMP edx, 1
	JNE L$$1
L$$2:
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
	JMP L$$0
L$$1:
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LLS$Search:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, 1
	MOV eax, 0
	MOV esi, 0
L$$5:
	MOV edx, 0
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	CMP edi, DWORD PTR [eax + 0]
	JGE L$$9
L$$8:
	MOV edx, 1
L$$9:
	CMP edx, 1
	JNE L$$6
L$$7:
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 0
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
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	ADD eax, 1
	MOV edx, eax
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP ebx, eax
	JGE L$$14
L$$13:
	MOV ecx, 1
L$$14:
	CMP ecx, 1
	JNE L$$10
L$$11:
	MOV eax, 0
	JMP L$$12
L$$10:
	MOV eax, 0
	CMP ebx, edx
	JGE L$$19
L$$18:
	MOV eax, 1
L$$19:
	MOV ecx, 1
	SUB ecx, eax
	CMP ecx, 1
	JNE L$$15
L$$16:
	MOV eax, 0
	JMP L$$17
L$$15:
	MOV eax, 1
	MOV esi, 1
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edi, DWORD PTR [eax + 0]
L$$17:
L$$12:
	MOV eax, edi
	ADD eax, 1
	MOV edi, eax
	JMP L$$5
L$$6:
	MOV eax, esi
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
	MOV eax, 1
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV edi, eax
L$$20:
	MOV edx, 0
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	CMP ecx, DWORD PTR [eax + 0]
	JGE L$$24
L$$23:
	MOV edx, 1
L$$24:
	CMP edx, 1
	JNE L$$21
L$$22:
	MOV eax, 2
	MOV ecx, DWORD PTR [ebp + -4]
	IMUL eax, ecx
	MOV esi, eax
	MOV eax, edi
	SUB eax, 3
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	JMP L$$20
L$$21:
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