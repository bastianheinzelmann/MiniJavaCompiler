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
	MOV eax, 22
	PUSH eax
	CALL _LPrimesClass$test_it
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
_LPrimesClass$eq:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
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
_LPrimesClass$div:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 12]
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$11
L$$10:
	MOV ecx, 1
L$$11:
	CMP ecx, 1
	JNE L$$7
L$$8:
	MOV eax, 0
	JMP L$$9
L$$7:
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 1
	PUSH eax
	CALL _LPrimesClass$eq
	ADD esp, 12
	MOV eax, eax
	CMP eax, 1
	JNE L$$12
L$$13:
	MOV eax, DWORD PTR [ebp + 12]
	JMP L$$14
L$$12:
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	SUB eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPrimesClass$div
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 1
	ADD eax, ecx
	MOV eax, eax
L$$14:
L$$9:
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LPrimesClass$rem:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV esi, DWORD PTR [ebp + 8]
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPrimesClass$div
	ADD esp, 12
	MOV edx, eax
	MOV ecx, esi
	MOV eax, ebx
	IMUL eax, edx
	SUB ecx, eax
	MOV eax, ecx
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LPrimesClass$dividess:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, DWORD PTR [ebp + 16]
	MOV esi, DWORD PTR [ebp + 8]
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPrimesClass$div
	ADD esp, 12
	MOV eax, eax
	MOV ecx, edi
	PUSH ecx
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	IMUL ecx, eax
	MOV eax, ecx
	PUSH eax
	CALL _LPrimesClass$eq
	ADD esp, 12
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
_LPrimesClass$divides:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, esi
	MOV ecx, edi
	MOV esi, 1
	MOV ebx, 0
L$$15:
	MOV eax, 1
	SUB eax, ebx
	CMP eax, 1
	JNE L$$19
L$$18:
	MOV eax, 0
	CMP esi, DWORD PTR [ebp + 8]
	JGE L$$22
L$$21:
	MOV eax, 1
L$$22:
	MOV eax, eax
	MOV edi, 1
	JMP L$$20
L$$19:
	MOV eax, 0
	MOV edi, 0
L$$20:
	MOV edi, edi
	AND edi, eax
	CMP edi, 1
	JNE L$$16
L$$17:
	MOV edi, 0
	MOV eax, esi
	IMUL eax, DWORD PTR [ebp + 12]
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$27
L$$26:
	MOV edi, 1
L$$27:
	CMP edi, 1
	JNE L$$23
L$$24:
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$25
L$$23:
	MOV edi, 0
	MOV eax, esi
	IMUL eax, DWORD PTR [ebp + 12]
	CMP DWORD PTR [ebp + 8], eax
	JGE L$$32
L$$31:
	MOV edi, 1
L$$32:
	CMP edi, 1
	JNE L$$28
L$$29:
	MOV esi, DWORD PTR [ebp + 8]
	JMP L$$30
L$$28:
	MOV ebx, 1
L$$30:
L$$25:
	JMP L$$15
L$$16:
	MOV eax, ebx
	MOV eax, eax
	MOV ebx, DWORD PTR [ebp + -4]
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPrimesClass$hcf:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 12]
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$37
L$$36:
	MOV ecx, 1
L$$37:
	CMP ecx, 1
	JNE L$$33
L$$34:
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPrimesClass$hcf
	ADD esp, 12
	MOV eax, eax
	JMP L$$35
L$$33:
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], 1
	JGE L$$42
L$$41:
	MOV eax, 1
L$$42:
	CMP eax, 1
	JNE L$$38
L$$39:
	MOV eax, DWORD PTR [ebp + 12]
	JMP L$$40
L$$38:
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	SUB eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LPrimesClass$hcf
	ADD esp, 12
	MOV eax, eax
L$$40:
L$$35:
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LPrimesClass$isprime:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV ecx, 1
	MOV ebx, 0
L$$43:
	CMP ecx, 1
	JNE L$$50
L$$49:
	MOV eax, 0
	MOV esi, DWORD PTR [ebp + 12]
	MOV edx, 1
	IMUL edx, 4
	ADD esi, edx
	MOV edx, esi
	CMP ebx, DWORD PTR [edx + 0]
	JGE L$$53
L$$52:
	MOV eax, 1
L$$53:
	MOV edx, eax
	MOV eax, 1
	JMP L$$51
L$$50:
	MOV edx, 0
	MOV eax, 0
L$$51:
	MOV eax, eax
	AND eax, edx
	CMP eax, 1
	JNE L$$47
L$$46:
	MOV eax, 0
	CMP ebx, DWORD PTR [ebp + 8]
	JGE L$$55
L$$54:
	MOV eax, 1
L$$55:
	MOV edx, eax
	MOV eax, 1
	JMP L$$48
L$$47:
	MOV edx, 0
	MOV eax, 0
L$$48:
	MOV eax, eax
	AND eax, edx
	CMP eax, 1
	JNE L$$44
L$$45:
	CMP ecx, 1
	JNE L$$57
L$$56:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
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
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPrimesClass$divides
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	MOV ecx, eax
	MOV eax, 1
	JMP L$$58
L$$57:
	MOV ecx, 0
	MOV eax, 0
L$$58:
	MOV eax, eax
	AND eax, ecx
	MOV ecx, eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$43
L$$44:
	MOV eax, ecx
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LPrimesClass$primes:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, 0
	MOV ebx, 2
L$$59:
	MOV eax, 0
	CMP ebx, DWORD PTR [ebp + 8]
	JGE L$$63
L$$62:
	MOV eax, 1
L$$63:
	CMP eax, 1
	JNE L$$60
L$$61:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrimesClass$isprime
	ADD esp, 8
	MOV eax, eax
	CMP eax, 1
	JNE L$$64
L$$65:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, DWORD PTR [ebp + 12]
	MOV edx, 1
	IMUL edx, 4
	ADD edi, edx
	MOV edx, edi
	MOV edx, DWORD PTR [edx + 0]
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV DWORD PTR [eax + 0], ebx
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 1
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	ADD ecx, 1
	MOV DWORD PTR [eax + 0], ecx
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$66
L$$64:
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
L$$66:
	JMP L$$59
L$$60:
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
_LPrimesClass$test_it:
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
	MOV ecx, eax
	MOV ecx, ecx
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV DWORD PTR [eax + 0], 0
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPrimesClass$primes
	ADD esp, 8
	MOV ebx, eax
	MOV eax, 999
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
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
