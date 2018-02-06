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
	MOV eax, 10
	PUSH eax
	CALL _LArr$do_it
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
_LArr$init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV ecx, edi
	MOV edx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD edx, eax
	MOV edx, edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [edx + 0], eax
	MOV ebx, 1
L$$0:
	MOV edi, 0
	MOV edx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD edx, eax
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	CMP ebx, eax
	JGE L$$4
L$$3:
	MOV edi, 1
L$$4:
	CMP edi, 1
	JNE L$$1
L$$2:
	MOV edx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD edx, eax
	MOV eax, edx
	MOV edx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, ebx
	SUB edi, 1
	MOV edi, edi
	ADD edi, 1
	IMUL eax, edi
	ADD edx, eax
	MOV eax, edx
	MOV DWORD PTR [eax + 0], ebx
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$0
L$$1:
	MOV eax, 0
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + -4]
	MOV ebx, edx
	MOV esi, esi
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LArr$sum:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV ebx, 1
	MOV esi, 0
L$$5:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	CMP ebx, eax
	JGE L$$9
L$$8:
	MOV edx, 1
L$$9:
	CMP edx, 1
	JNE L$$6
L$$7:
	MOV edx, esi
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV esi, ebx
	SUB esi, 1
	MOV esi, esi
	ADD esi, 1
	IMUL eax, esi
	ADD ecx, eax
	MOV eax, ecx
	ADD edx, DWORD PTR [eax + 0]
	MOV esi, edx
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$5
L$$6:
	MOV eax, esi
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LArr$do_it:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
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
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LArr$init
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LArr$sum
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
