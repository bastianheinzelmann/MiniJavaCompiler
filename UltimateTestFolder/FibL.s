	.intel_syntax
	.global _Lmain
_Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, 0
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	PUSH eax
	MOV eax, 15
	PUSH eax
	CALL _LFibAux$nfib_lazy
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LFibAux$nfib:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
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
	PUSH eax
	CALL _LFibAux$nfib
	ADD esp, 8
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, 2
	PUSH eax
	CALL _LFibAux$nfib
	ADD esp, 8
	MOV ecx, eax
	MOV eax, ebx
	ADD eax, ecx
	ADD eax, 1
L$$2:
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFibAux$nfib_lazy:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
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
	MOV eax, ebx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LLazyArray$nfib
	ADD esp, 8
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LLazyArray$init:
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
	CALL _L_halloc
	ADD esp, 4
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, 0
L$$10:
	MOV ecx, 0
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$14
L$$13:
	MOV ecx, 1
L$$14:
	CMP ecx, 1
	JNE L$$11
L$$12:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, eax
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], 0
	ADD eax, 1
	JMP L$$10
L$$11:
	MOV eax, 1
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LLazyArray$defined:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
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
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$31
L$$30:
	MOV eax, 1
	JMP L$$32
L$$31:
	MOV eax, 0
L$$32:
	CMP DWORD PTR [ebp + 8], 0
	JL L$$34
L$$33:
	MOV ecx, 1
	JMP L$$35
L$$34:
	MOV ecx, 0
L$$35:
	AND eax, ecx
	CMP eax, 1
	JNE L$$37
L$$36:
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
	MOV eax, DWORD PTR [eax + 0]
	JMP L$$38
L$$37:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
L$$38:
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LLazyArray$defined
	ADD esp, 8
	CMP eax, 1
	JNE L$$39
L$$40:
	MOV eax, ebx
	JMP L$$41
L$$39:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LLazyArray$f
	ADD esp, 8
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, DWORD PTR [ebp + 8]
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
L$$41:
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LLazyArray$f:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LLazyArray$nfib
	ADD esp, 8
	MOV esp, ebp
	POP ebp
	RET
_LLazyArray$nfib:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], 2
	JGE L$$46
L$$45:
	MOV eax, 1
L$$46:
	CMP eax, 1
	JNE L$$42
L$$43:
	MOV eax, 1
	JMP L$$44
L$$42:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, 1
	PUSH eax
	CALL _LLazyArray$get
	ADD esp, 8
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, 2
	PUSH eax
	CALL _LLazyArray$get
	ADD esp, 8
	MOV ecx, eax
	MOV eax, ebx
	ADD eax, ecx
	ADD eax, 1
L$$44:
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
