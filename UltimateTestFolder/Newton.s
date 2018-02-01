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
	MOV eax, 2
	PUSH eax
	CALL _LNewtonClass$test_it
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
_LFrac$init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 1
	MOV esi, DWORD PTR [ebp + 16]
	MOV edi, esi
	MOV esi, 0
	IMUL esi, 4
	ADD edi, esi
	MOV edi, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV DWORD PTR [edi + 0], esi
	MOV esi, DWORD PTR [ebp + 16]
	MOV edi, esi
	MOV esi, 1
	IMUL esi, 4
	ADD edi, esi
	MOV edi, edi
	MOV esi, DWORD PTR [ebp + 8]
	MOV DWORD PTR [edi + 0], esi
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFrac$den:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV eax, DWORD PTR [ebp + 8]
	MOV esi, eax
	MOV eax, 1
	IMUL eax, 4
	ADD esi, eax
	MOV eax, esi
	MOV eax, DWORD PTR [eax + 0]
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LFrac$num:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV eax, DWORD PTR [ebp + 8]
	MOV esi, eax
	MOV eax, 0
	IMUL eax, 4
	ADD esi, eax
	MOV eax, esi
	MOV eax, DWORD PTR [eax + 0]
	MOV eax, eax
	MOV ebx, ebx
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
	MOV esi, esi
	MOV edi, edi
	MOV ebx, 0
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, ebx
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LIntegral$eq:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 0
	MOV edi, DWORD PTR [ebp + 12]
	MOV esi, DWORD PTR [ebp + 8]
	CMP edi, esi
	JGE L$$4
L$$3:
	MOV eax, 1
L$$4:
	MOV esi, 1
	SUB esi, eax
	CMP esi, 1
	JNE L$$1
L$$0:
	MOV eax, 0
	MOV edi, DWORD PTR [ebp + 8]
	MOV esi, DWORD PTR [ebp + 12]
	CMP edi, esi
	JGE L$$6
L$$5:
	MOV eax, 1
L$$6:
	MOV esi, 1
	SUB esi, eax
	MOV esi, esi
	MOV eax, 1
	JMP L$$2
L$$1:
	MOV esi, 0
	MOV eax, 0
L$$2:
	MOV eax, eax
	AND eax, esi
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LIntegral$div:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, esi
	MOV ecx, edi
	MOV edi, 0
L$$7:
	MOV esi, 0
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	CMP ebx, eax
	JGE L$$11
L$$10:
	MOV esi, 1
L$$11:
	MOV eax, 1
	SUB eax, esi
	CMP eax, 1
	JNE L$$8
L$$9:
	MOV eax, edi
	ADD eax, 1
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 12]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB ebx, eax
	MOV eax, ebx
	JMP L$$7
L$$8:
	MOV eax, edi
	MOV eax, eax
	MOV ebx, DWORD PTR [ebp + -4]
	MOV ebx, ebx
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
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 12]
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$div
	MOV ecx, eax
	MOV eax, esi
	MOV edx, ebx
	IMUL edx, ecx
	SUB eax, edx
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
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
	MOV edi, edi
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	CMP ecx, eax
	JGE L$$16
L$$15:
	MOV edx, 1
L$$16:
	CMP edx, 1
	JNE L$$12
L$$13:
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$gcd_rec
	MOV eax, eax
	JMP L$$14
L$$12:
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, 1
	JGE L$$21
L$$20:
	MOV ecx, 1
L$$21:
	CMP ecx, 1
	JNE L$$17
L$$18:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	JMP L$$19
L$$17:
	MOV eax, DWORD PTR [ebp + 16]
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$rem
	MOV eax, eax
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$gcd_rec
	MOV eax, eax
L$$19:
L$$14:
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LIntegral$gcd_iter:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	CMP ecx, eax
	JGE L$$26
L$$25:
	MOV edx, 1
L$$26:
	CMP edx, 1
	JNE L$$22
L$$23:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV ecx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV ecx, eax
	JMP L$$24
L$$22:
L$$24:
L$$27:
	MOV edx, 0
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP ecx, eax
	JGE L$$31
L$$30:
	MOV edx, 1
L$$31:
	CMP edx, 1
	JNE L$$28
L$$29:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV ecx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV ecx, DWORD PTR [ebp + 16]
	MOV ecx, ecx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$rem
	MOV ecx, eax
	JMP L$$27
L$$28:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LIntegral$gcd:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$gcd_rec
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
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
	MOV eax, DWORD PTR [ebp + 8]
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$gcd
	MOV eax, eax
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$div
	MOV ecx, eax
	MOV eax, edi
	IMUL eax, ecx
	MOV eax, eax
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
_LFracOps$init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 8]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, 0
	PUSH eax
	CALL _L_halloc
	MOV ecx, eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, 0
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LFracOps$mkFrac:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, 8
	PUSH eax
	CALL _L_halloc
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$init
	MOV eax, eax
	MOV eax, ebx
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
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
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$lcm
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$num
	MOV eax, eax
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$div
	MOV eax, eax
	MOV ecx, edi
	IMUL ecx, eax
	MOV eax, ecx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$num
	MOV eax, eax
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$div
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	MOV edx, edi
	IMUL edx, ecx
	ADD eax, edx
	MOV ecx, eax
	MOV eax, ebx
	MOV edx, DWORD PTR [ebp + 16]
	MOV edx, edx
	PUSH edx
	MOV ecx, ecx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$mkFrac
	MOV eax, eax
	MOV eax, eax
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
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$num
	MOV eax, eax
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$gcd
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$num
	MOV eax, eax
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ecx, edi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$gcd
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$num
	MOV eax, eax
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$div
	MOV eax, eax
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$num
	MOV eax, eax
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LIntegral$div
	MOV eax, eax
	MOV ecx, edi
	IMUL ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ecx, edi
	PUSH ecx
	MOV eax, eax
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LIntegral$div
	MOV eax, eax
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ecx, esi
	PUSH ecx
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$div
	MOV eax, eax
	MOV ecx, edi
	IMUL ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [ebp + 16]
	MOV ecx, ecx
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$mkFrac
	MOV eax, eax
	MOV eax, eax
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
_LFracOps$recip:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 12]
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$num
	MOV eax, eax
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$mkFrac
	MOV eax, eax
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LFracOps$divide:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$recip
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV ecx, ecx
	PUSH ecx
	MOV ecx, DWORD PTR [ebp + 12]
	MOV ecx, ecx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$times
	MOV eax, eax
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
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
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 12]
	MOV ebx, eax
	MOV eax, 0
	SUB eax, 1
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$num
	MOV eax, eax
	MOV ecx, esi
	IMUL ecx, eax
	MOV esi, ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ecx, ebx
	PUSH ecx
	MOV ecx, esi
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$mkFrac
	MOV eax, eax
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
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
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$lt
	MOV eax, eax
	CMP eax, 1
	JNE L$$32
L$$33:
	MOV eax, DWORD PTR [ebp + 16]
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$neg
	MOV eax, eax
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$plus
	MOV eax, eax
	JMP L$$34
L$$32:
	MOV eax, DWORD PTR [ebp + 16]
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$neg
	MOV eax, eax
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$plus
	MOV eax, eax
L$$34:
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
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
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$lcm
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$num
	MOV eax, eax
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$div
	MOV eax, eax
	MOV ecx, edi
	IMUL ecx, eax
	MOV eax, ecx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$num
	MOV eax, eax
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LFrac$den
	MOV eax, eax
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LIntegral$div
	MOV eax, eax
	MOV ecx, edi
	IMUL ecx, eax
	MOV ecx, ecx
	MOV eax, 0
	MOV edx, DWORD PTR [ebp + -4]
	CMP edx, ecx
	JGE L$$36
L$$35:
	MOV eax, 1
L$$36:
	MOV eax, eax
	MOV eax, eax
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
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, 1
	PUSH eax
	CALL _LFracOps$mkFrac
	MOV eax, eax
	MOV ecx, ebx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$divide
	MOV eax, eax
	MOV ecx, edi
	PUSH ecx
	MOV ecx, esi
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$plus
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ecx, ecx
	PUSH ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ecx, ecx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LFracOps$times
	MOV eax, eax
	MOV eax, eax
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
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV ecx, eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
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
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, 1
	PUSH eax
	CALL _LFracOps$mkFrac
	MOV esi, eax
	MOV edx, esi
L$$37:
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, edx
	PUSH eax
	CALL _LFracOps$lt
	MOV eax, eax
	CMP eax, 1
	JNE L$$38
L$$39:
	MOV ebx, esi
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, esi
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LNewtonClass$newton_step
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, esi
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LFracOps$abs_minus
	MOV edx, eax
	JMP L$$37
L$$38:
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
_LNewtonClass$test_it:
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
	MOV ebx, ecx
	MOV eax, 4
	PUSH eax
	CALL _L_halloc
	MOV ecx, eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LFracOps$init
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LNewtonClass$newton
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, 999
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	CALL _LFrac$showFrac
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
