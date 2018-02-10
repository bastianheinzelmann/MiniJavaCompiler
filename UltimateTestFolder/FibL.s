	.intel_syntax
	.global _Lmain
_Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, 0
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	MOV eax, 15
	PUSH eax
	CALL _LFibAux$nfib_lazy
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
_LFibAux$nfib:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], 2
	JGE L$$4
L$$3:
	MOV eax, 1
L$$4:
	CMP eax, 1
	JNE L$$0
L$$1:
	MOV eax, 1
	JMP L$$2
L$$0:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, 1
	MOV eax, eax
	PUSH eax
	CALL _LFibAux$nfib
	ADD esp, 8
	MOV eax, eax
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, 2
	MOV eax, eax
	PUSH eax
	CALL _LFibAux$nfib
	ADD esp, 8
	MOV ecx, eax
	MOV eax, ebx
	ADD eax, ecx
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
L$$2:
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LFibAux$nfib_lazy:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], 1
	JGE L$$9
L$$8:
	MOV eax, 1
L$$9:
	CMP eax, 1
	JNE L$$5
L$$6:
	MOV eax, 0
	JMP L$$7
L$$5:
	MOV eax, 0
L$$7:
	MOV eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LLazyArray$init
	ADD esp, 8
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LLazyArray$nfib
	ADD esp, 8
	MOV eax, eax
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LLazyArray$init:
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
	MOV ebx, 0
L$$10:
	MOV eax, 0
	CMP ebx, DWORD PTR [ebp + 8]
	JGE L$$14
L$$13:
	MOV eax, 1
L$$14:
	CMP eax, 1
	JNE L$$11
L$$12:
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
	MOV DWORD PTR [eax + 0], 0
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$10
L$$11:
	MOV eax, 1
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LLazyArray$defined:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], 0
	JGE L$$19
L$$18:
	MOV eax, 1
L$$19:
	CMP eax, 1
	JNE L$$15
L$$16:
	MOV eax, 1
	JMP L$$17
L$$15:
	MOV esi, 0
	MOV eax, 0
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$24
L$$23:
	MOV esi, 1
L$$24:
	CMP esi, 1
	JNE L$$20
L$$21:
	MOV eax, 1
	JMP L$$22
L$$20:
	MOV eax, 0
L$$22:
L$$17:
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LLazyArray$get:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], 1
	JGE L$$29
L$$28:
	MOV eax, 1
L$$29:
	CMP eax, 1
	JNE L$$25
L$$26:
	MOV eax, 0
	JMP L$$27
L$$25:
	MOV eax, 0
L$$27:
	MOV ecx, DWORD PTR [ebp + 12]
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
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LLazyArray$defined
	ADD esp, 8
	MOV eax, eax
	CMP eax, 1
	JNE L$$30
L$$31:
	MOV eax, ebx
	JMP L$$32
L$$30:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LLazyArray$f
	ADD esp, 8
	MOV ebx, eax
	MOV ecx, DWORD PTR [ebp + 12]
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
	MOV DWORD PTR [eax + 0], ebx
	MOV eax, ebx
L$$32:
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LLazyArray$f:
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
	CALL _LLazyArray$nfib
	ADD esp, 8
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LLazyArray$nfib:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], 2
	JGE L$$37
L$$36:
	MOV eax, 1
L$$37:
	CMP eax, 1
	JNE L$$33
L$$34:
	MOV eax, 1
	JMP L$$35
L$$33:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, 1
	MOV eax, eax
	PUSH eax
	CALL _LLazyArray$get
	ADD esp, 8
	MOV eax, eax
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, 2
	MOV eax, eax
	PUSH eax
	CALL _LLazyArray$get
	ADD esp, 8
	MOV ecx, eax
	MOV eax, ebx
	ADD eax, ecx
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
L$$35:
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
