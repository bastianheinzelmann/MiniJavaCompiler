	.intel_syntax
	.global _Lmain
Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, 8
	PUSH eax
	CALL L_halloc
	ADD esp, 4
	PUSH eax
	MOV eax, 10
	PUSH eax
	CALL LArr$do_it
	ADD esp, 8
	PUSH eax
	CALL L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
LArr$init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, esi
	MOV ecx, edi
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ebx + 0], eax
	MOV esi, 1
L$$0:
	MOV eax, 0
	MOV edi, DWORD PTR [ebp + 12]
	MOV ebx, 1
	IMUL ebx, 4
	ADD edi, ebx
	MOV ebx, edi
	MOV ebx, DWORD PTR [ebx + 0]
	ADD ebx, 1
	CMP esi, ebx
	JGE L$$4
L$$3:
	MOV eax, 1
L$$4:
	CMP eax, 1
	JNE L$$1
L$$2:
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ebx, eax
	MOV eax, ebx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, esi
	SUB edi, 1
	ADD edi, 1
	IMUL eax, edi
	ADD ebx, eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], esi
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$0
L$$1:
	MOV eax, 0
	MOV ebx, DWORD PTR [ebp + -4]
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
LArr$sum:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, 1
	MOV ecx, 0
L$$5:
	MOV eax, 0
	MOV ebx, DWORD PTR [ebp + 8]
	MOV edx, 1
	IMUL edx, 4
	ADD ebx, edx
	MOV edx, ebx
	MOV edx, DWORD PTR [edx + 0]
	ADD edx, 1
	CMP esi, edx
	JGE L$$9
L$$8:
	MOV eax, 1
L$$9:
	CMP eax, 1
	JNE L$$6
L$$7:
	MOV ebx, ecx
	MOV eax, esi
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
	MOV eax, 1
	JMP L$$12
L$$11:
	MOV eax, 0
L$$12:
	MOV edx, eax
	MOV eax, esi
	SUB eax, 1
	CMP eax, 0
	JL L$$14
L$$13:
	MOV ecx, 1
	JMP L$$15
L$$14:
	MOV ecx, 0
L$$15:
	MOV eax, edx
	AND eax, ecx
	CMP eax, 1
	JNE L$$17
L$$16:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edx, esi
	SUB edx, 1
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$18
L$$17:
	MOV eax, 1
	PUSH eax
	CALL L_raise
	ADD esp, 4
	MOV ecx, eax
L$$18:
	MOV eax, ebx
	ADD eax, ecx
	MOV ecx, eax
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$5
L$$6:
	MOV eax, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
LArr$do_it:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	IMUL eax, 4
	PUSH eax
	CALL L_halloc
	ADD esp, 4
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL LArr$init
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL LArr$sum
	ADD esp, 4
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
