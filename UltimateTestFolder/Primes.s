	.intel_syntax
	.global _Lmain
Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, 8
	PUSH eax
	CALL L_halloc
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	MOV eax, 22
	PUSH eax
	CALL LPrimesClass$test_it
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL L_println_int
	MOV eax, eax
	MOV eax, 0
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
LPrimesClass$eq:
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
LPrimesClass$div:
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
	JGE L$$11
L$$10:
	MOV edx, 1
L$$11:
	CMP edx, 1
	JNE L$$7
L$$8:
	MOV eax, 0
	JMP L$$9
L$$7:
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, 1
	PUSH eax
	CALL LPrimesClass$eq
	MOV eax, eax
	CMP eax, 1
	JNE L$$12
L$$13:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	JMP L$$14
L$$12:
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB ecx, eax
	MOV eax, ecx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL LPrimesClass$div
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
LPrimesClass$rem:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 8]
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPrimesClass$div
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
LPrimesClass$dividess:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPrimesClass$div
	MOV eax, eax
	MOV ecx, edi
	PUSH ecx
	MOV ecx, esi
	PUSH ecx
	MOV ecx, ebx
	IMUL ecx, eax
	MOV eax, ecx
	PUSH eax
	CALL LPrimesClass$eq
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
LPrimesClass$divides:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, 1
	MOV eax, 0
L$$15:
	MOV edx, 1
	SUB edx, eax
	CMP edx, 1
	JNE L$$19
L$$18:
	MOV ebx, 0
	MOV edx, DWORD PTR [ebp + 8]
	CMP ecx, edx
	JGE L$$22
L$$21:
	MOV ebx, 1
L$$22:
	MOV edx, ebx
	MOV ebx, 1
	JMP L$$20
L$$19:
	MOV edx, 0
	MOV ebx, 0
L$$20:
	MOV ebx, ebx
	AND ebx, edx
	CMP ebx, 1
	JNE L$$16
L$$17:
	MOV ebx, 0
	MOV edx, ecx
	MOV esi, DWORD PTR [ebp + 12]
	IMUL edx, esi
	MOV esi, DWORD PTR [ebp + 8]
	CMP edx, esi
	JGE L$$27
L$$26:
	MOV ebx, 1
L$$27:
	CMP ebx, 1
	JNE L$$23
L$$24:
	MOV ecx, ecx
	ADD ecx, 1
	MOV ecx, ecx
	JMP L$$25
L$$23:
	MOV edi, 0
	MOV esi, DWORD PTR [ebp + 8]
	MOV ebx, ecx
	MOV edx, DWORD PTR [ebp + 12]
	IMUL ebx, edx
	CMP esi, ebx
	JGE L$$32
L$$31:
	MOV edi, 1
L$$32:
	CMP edi, 1
	JNE L$$28
L$$29:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV ecx, ecx
	JMP L$$30
L$$28:
	MOV eax, 1
L$$30:
L$$25:
	JMP L$$15
L$$16:
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
LPrimesClass$hcf:
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
	JGE L$$37
L$$36:
	MOV edx, 1
L$$37:
	CMP edx, 1
	JNE L$$33
L$$34:
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPrimesClass$hcf
	MOV eax, eax
	JMP L$$35
L$$33:
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, 1
	JGE L$$42
L$$41:
	MOV ecx, 1
L$$42:
	CMP ecx, 1
	JNE L$$38
L$$39:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	JMP L$$40
L$$38:
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB ecx, eax
	MOV eax, ecx
	PUSH eax
	CALL LPrimesClass$hcf
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
LPrimesClass$isprime:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV eax, 1
	MOV ebx, 0
L$$43:
	CMP eax, 1
	JNE L$$50
L$$49:
	MOV esi, 0
	MOV ecx, DWORD PTR [ebp + 12]
	MOV edx, ecx
	MOV ecx, 1
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	CMP ebx, DWORD PTR [ecx + 0]
	JGE L$$53
L$$52:
	MOV esi, 1
L$$53:
	MOV ecx, esi
	MOV edx, 1
	JMP L$$51
L$$50:
	MOV ecx, 0
	MOV edx, 0
L$$51:
	MOV edx, edx
	AND edx, ecx
	CMP edx, 1
	JNE L$$47
L$$46:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 8]
	CMP ebx, ecx
	JGE L$$55
L$$54:
	MOV edx, 1
L$$55:
	MOV ecx, edx
	MOV edx, 1
	JMP L$$48
L$$47:
	MOV ecx, 0
	MOV edx, 0
L$$48:
	MOV edx, edx
	AND edx, ecx
	CMP edx, 1
	JNE L$$44
L$$45:
	CMP eax, 1
	JNE L$$57
L$$56:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
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
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL LPrimesClass$divides
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	MOV eax, eax
	MOV ecx, 1
	JMP L$$58
L$$57:
	MOV eax, 0
	MOV ecx, 0
L$$58:
	MOV ecx, ecx
	AND ecx, eax
	MOV eax, ecx
	MOV ecx, ebx
	ADD ecx, 1
	MOV ebx, ecx
	JMP L$$43
L$$44:
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
LPrimesClass$primes:
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
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP ebx, eax
	JGE L$$63
L$$62:
	MOV ecx, 1
L$$63:
	CMP ecx, 1
	JNE L$$60
L$$61:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL LPrimesClass$isprime
	MOV eax, eax
	CMP eax, 1
	JNE L$$64
L$$65:
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edi, DWORD PTR [eax + 0]
	MOV edx, 4
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	IMUL edx, eax
	ADD edi, edx
	MOV eax, edi
	MOV DWORD PTR [eax + 0], ebx
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV edx, ecx
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV DWORD PTR [edx + 0], eax
	MOV eax, ebx
	PUSH eax
	CALL L_println_int
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
LPrimesClass$test_it:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
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
	CALL L_halloc
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV DWORD PTR [eax + 0], 0
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL LPrimesClass$primes
	MOV ebx, eax
	MOV eax, 999
	PUSH eax
	CALL L_println_int
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
