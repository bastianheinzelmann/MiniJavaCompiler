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
	MOV eax, 2
	PUSH eax
	CALL _LNewtonClass$test_it
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LFrac$init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 1
	MOV edi, DWORD PTR [ebp + 16]
	MOV esi, 0
	IMUL esi, 4
	ADD edi, esi
	MOV esi, DWORD PTR [ebp + 12]
	MOV DWORD PTR [edi + 0], esi
	MOV edi, DWORD PTR [ebp + 16]
	MOV esi, 1
	IMUL esi, 4
	ADD edi, esi
	MOV esi, DWORD PTR [ebp + 8]
	MOV DWORD PTR [edi + 0], esi
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFrac$den:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 8]
	MOV eax, 1
	IMUL eax, 4
	ADD esi, eax
	MOV eax, esi
	MOV eax, DWORD PTR [eax + 0]
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFrac$num:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD esi, eax
	MOV eax, esi
	MOV eax, DWORD PTR [eax + 0]
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFrac$showFrac:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, ebx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LIntegral$eq:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 12]
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$4
L$$3:
	MOV esi, 1
L$$4:
	MOV eax, 1
	SUB eax, esi
	CMP eax, 1
	JNE L$$1
L$$0:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, DWORD PTR [ebp + 12]
	JGE L$$6
L$$5:
	MOV esi, 1
L$$6:
	MOV eax, 1
	SUB eax, esi
	MOV esi, eax
	MOV eax, 1
	JMP L$$2
L$$1:
	MOV esi, 0
	MOV eax, 0
L$$2:
	AND eax, esi
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LIntegral$div:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, 0
L$$7:
	MOV eax, 0
	MOV edi, DWORD PTR [ebp + 12]
	CMP edi, DWORD PTR [ebp + 8]
	JGE L$$11
L$$10:
	MOV eax, 1
L$$11:
	MOV edi, 1
	SUB edi, eax
	CMP edi, 1
	JNE L$$8
L$$9:
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	SUB eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ebp + 12], eax
	JMP L$$7
L$$8:
	MOV eax, esi
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LIntegral$rem:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, DWORD PTR [ebp + 12]
	MOV ebx, DWORD PTR [ebp + 8]
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LIntegral$div
	ADD esp, 12
	MOV edx, eax
	MOV ecx, esi
	MOV eax, ebx
	IMUL eax, edx
	SUB ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LIntegral$gcd_rec:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 12]
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$16
L$$15:
	MOV ecx, 1
L$$16:
	CMP ecx, 1
	JNE L$$12
L$$13:
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LIntegral$gcd_rec
	ADD esp, 12
	JMP L$$14
L$$12:
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], 1
	JGE L$$21
L$$20:
	MOV eax, 1
L$$21:
	CMP eax, 1
	JNE L$$17
L$$18:
	MOV eax, DWORD PTR [ebp + 12]
	JMP L$$19
L$$17:
	MOV esi, DWORD PTR [ebp + 16]
	MOV ebx, DWORD PTR [ebp + 8]
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LIntegral$rem
	ADD esp, 12
	MOV ecx, eax
	MOV eax, esi
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LIntegral$gcd_rec
	ADD esp, 12
L$$19:
L$$14:
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LIntegral$gcd_iter:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 12]
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$26
L$$25:
	MOV ecx, 1
L$$26:
	CMP ecx, 1
	JNE L$$22
L$$23:
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ebp + 12], ecx
	MOV DWORD PTR [ebp + 8], eax
	JMP L$$24
L$$22:
L$$24:
L$$27:
	MOV ecx, 0
	MOV eax, 0
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$31
L$$30:
	MOV ecx, 1
L$$31:
	CMP ecx, 1
	JNE L$$28
L$$29:
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ebp + 12], ecx
	MOV ecx, DWORD PTR [ebp + 16]
	PUSH ecx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LIntegral$rem
	ADD esp, 12
	MOV DWORD PTR [ebp + 8], eax
	JMP L$$27
L$$28:
	MOV eax, DWORD PTR [ebp + 12]
	MOV esp, ebp
	POP ebp
	RET
_LIntegral$gcd:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LIntegral$gcd_rec
	ADD esp, 12
	MOV esp, ebp
	POP ebp
	RET
_LIntegral$lcm:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, DWORD PTR [ebp + 8]
	MOV esi, DWORD PTR [ebp + 16]
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LIntegral$gcd
	ADD esp, 12
	MOV ecx, eax
	MOV eax, esi
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LIntegral$div
	ADD esp, 12
	MOV ecx, eax
	MOV eax, edi
	IMUL eax, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFracOps$init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, 0
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFracOps$mkFrac:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, 8
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$init
	ADD esp, 12
	MOV eax, ebx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFracOps$plus:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 16
	MOV eax, ebx
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -8], eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ecx, eax
	MOV eax, esi
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LIntegral$lcm
	ADD esp, 12
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFrac$num
	ADD esp, 4
	MOV edi, eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	PUSH eax
	CALL _LIntegral$div
	ADD esp, 12
	MOV ecx, eax
	MOV eax, edi
	IMUL eax, ecx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$num
	ADD esp, 4
	MOV edi, eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	PUSH eax
	CALL _LIntegral$div
	ADD esp, 12
	MOV edx, eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV ecx, eax
	MOV eax, edi
	IMUL eax, edx
	ADD ecx, eax
	MOV edx, ecx
	MOV ecx, ebx
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, edx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LFracOps$mkFrac
	ADD esp, 12
	MOV ecx, DWORD PTR [ebp + -16]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFracOps$times:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 16
	MOV eax, ebx
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -8], eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$num
	ADD esp, 4
	MOV ecx, eax
	MOV eax, esi
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LIntegral$gcd
	ADD esp, 12
	MOV esi, eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFrac$num
	ADD esp, 4
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ecx, eax
	MOV eax, edi
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LIntegral$gcd
	ADD esp, 12
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFrac$num
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	PUSH eax
	CALL _LIntegral$div
	ADD esp, 12
	MOV edi, eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$num
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LIntegral$div
	ADD esp, 12
	MOV ecx, eax
	MOV eax, edi
	IMUL eax, ecx
	MOV ebx, eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ecx, eax
	MOV eax, edi
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LIntegral$div
	ADD esp, 12
	MOV edi, eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ecx, eax
	MOV eax, esi
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	PUSH eax
	CALL _LIntegral$div
	ADD esp, 12
	MOV ecx, eax
	MOV eax, edi
	IMUL eax, ecx
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LFracOps$mkFrac
	ADD esp, 12
	MOV ecx, DWORD PTR [ebp + -16]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFracOps$recip:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$num
	ADD esp, 4
	MOV ecx, eax
	MOV eax, esi
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LFracOps$mkFrac
	ADD esp, 12
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFracOps$divide:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFracOps$recip
	ADD esp, 8
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LFracOps$times
	ADD esp, 12
	MOV esp, ebp
	POP ebp
	RET
_LFracOps$neg:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, 0
	SUB eax, 1
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$num
	ADD esp, 4
	MOV ecx, eax
	MOV eax, esi
	IMUL eax, ecx
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, esi
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LFracOps$mkFrac
	ADD esp, 12
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFracOps$abs_minus:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFracOps$lt
	ADD esp, 12
	CMP eax, 1
	JNE L$$32
L$$33:
	MOV esi, DWORD PTR [ebp + 16]
	MOV ebx, DWORD PTR [ebp + 8]
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFracOps$neg
	ADD esp, 8
	MOV ecx, eax
	MOV eax, esi
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LFracOps$plus
	ADD esp, 12
	JMP L$$34
L$$32:
	MOV esi, DWORD PTR [ebp + 16]
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFracOps$neg
	ADD esp, 8
	MOV ecx, eax
	MOV eax, esi
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LFracOps$plus
	ADD esp, 12
L$$34:
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFracOps$lt:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 16
	MOV eax, ebx
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -8], eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ecx, eax
	MOV eax, esi
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LIntegral$lcm
	ADD esp, 12
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFrac$num
	ADD esp, 4
	MOV esi, eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ecx, ebx
	PUSH ecx
	MOV ecx, edi
	PUSH ecx
	PUSH eax
	CALL _LIntegral$div
	ADD esp, 12
	MOV ecx, eax
	MOV eax, esi
	IMUL eax, ecx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$num
	ADD esp, 4
	MOV esi, eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LFrac$den
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LIntegral$div
	ADD esp, 12
	MOV ecx, eax
	MOV eax, esi
	IMUL eax, ecx
	MOV edx, eax
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + -4]
	CMP eax, edx
	JGE L$$36
L$$35:
	MOV ecx, 1
L$$36:
	MOV eax, ecx
	MOV ecx, DWORD PTR [ebp + -16]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LNewtonClass$newton_step:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 20
	MOV eax, ebx
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -12], eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [ebp + -8], eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edi, DWORD PTR [eax + 0]
	MOV esi, DWORD PTR [ebp + 12]
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 1
	PUSH eax
	CALL _LFracOps$mkFrac
	ADD esp, 12
	MOV ecx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LFracOps$divide
	ADD esp, 12
	MOV ecx, eax
	MOV eax, edi
	PUSH eax
	MOV eax, esi
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LFracOps$plus
	ADD esp, 12
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + -8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LFracOps$times
	ADD esp, 12
	MOV ecx, DWORD PTR [ebp + -20]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -16]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LNewtonClass$newton:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 1
	PUSH eax
	MOV eax, 2
	PUSH eax
	CALL _LFracOps$mkFrac
	ADD esp, 12
	MOV ecx, eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 1
	PUSH eax
	MOV eax, 100
	PUSH eax
	CALL _LFracOps$mkFrac
	ADD esp, 12
	MOV esi, eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 1
	PUSH eax
	CALL _LFracOps$mkFrac
	ADD esp, 12
	MOV ebx, eax
	MOV eax, ebx
L$$37:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 1
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	PUSH ecx
	MOV ecx, esi
	PUSH ecx
	PUSH eax
	CALL _LFracOps$lt
	ADD esp, 12
	CMP eax, 1
	JNE L$$38
L$$39:
	MOV edi, ebx
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LNewtonClass$newton_step
	ADD esp, 12
	MOV ebx, eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LFracOps$abs_minus
	ADD esp, 12
	JMP L$$37
L$$38:
	MOV eax, ebx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LNewtonClass$test_it:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LFracOps$init
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LNewtonClass$newton
	ADD esp, 8
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 999
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, ebx
	PUSH eax
	CALL _LFrac$showFrac
	ADD esp, 4
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
