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
	MOV eax, 1
	PUSH eax
	MOV eax, 2
	PUSH eax
	MOV eax, 3
	PUSH eax
	MOV eax, 4
	PUSH eax
	MOV eax, 5
	PUSH eax
	MOV eax, 10
	PUSH eax
	MOV eax, 89
	PUSH eax
	CALL _LPrime$test_it
	ADD esp, 32
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LPrime$or:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 1
	SUB eax, DWORD PTR [ebp + 12]
	CMP eax, 1
	JNE L$$1
L$$0:
	MOV eax, 1
	SUB eax, DWORD PTR [ebp + 8]
	MOV esi, 1
	JMP L$$2
L$$1:
	MOV eax, 0
	MOV esi, 0
L$$2:
	MOV edi, 1
	AND esi, eax
	SUB edi, esi
	MOV eax, edi
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPrime$divides:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, esi
	MOV ecx, edi
	MOV esi, 1
	MOV ebx, 0
L$$3:
	MOV eax, 1
	SUB eax, ebx
	CMP eax, 1
	JNE L$$7
L$$6:
	MOV eax, 0
	CMP esi, DWORD PTR [ebp + 8]
	JGE L$$10
L$$9:
	MOV eax, 1
L$$10:
	MOV edi, 1
	JMP L$$8
L$$7:
	MOV eax, 0
	MOV edi, 0
L$$8:
	AND edi, eax
	CMP edi, 1
	JNE L$$4
L$$5:
	MOV edi, 0
	MOV eax, esi
	IMUL eax, DWORD PTR [ebp + 12]
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$15
L$$14:
	MOV edi, 1
L$$15:
	CMP edi, 1
	JNE L$$11
L$$12:
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$13
L$$11:
	MOV edi, 0
	MOV eax, esi
	IMUL eax, DWORD PTR [ebp + 12]
	CMP DWORD PTR [ebp + 8], eax
	JGE L$$20
L$$19:
	MOV edi, 1
L$$20:
	CMP edi, 1
	JNE L$$16
L$$17:
	MOV esi, DWORD PTR [ebp + 8]
	JMP L$$18
L$$16:
	MOV ebx, 1
L$$18:
L$$13:
	JMP L$$3
L$$4:
	MOV eax, ebx
	MOV ebx, DWORD PTR [ebp + -4]
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPrime$isprime:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, DWORD PTR [ebp + 12]
	MOV ecx, 0
	MOV eax, 1
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$25
L$$24:
	MOV ecx, 1
L$$25:
	CMP ecx, 1
	JNE L$$22
L$$21:
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], 3
	JGE L$$27
L$$26:
	MOV eax, 1
L$$27:
	MOV ecx, eax
	MOV eax, 1
	JMP L$$23
L$$22:
	MOV ecx, 0
	MOV eax, 0
L$$23:
	AND eax, ecx
	MOV ebx, eax
	MOV ecx, 0
	MOV eax, 2
	CMP eax, DWORD PTR [ebp + 8]
	JGE L$$32
L$$31:
	MOV ecx, 1
L$$32:
	CMP ecx, 1
	JNE L$$29
L$$28:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 2
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPrime$divides
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	MOV ecx, eax
	MOV eax, 1
	JMP L$$30
L$$29:
	MOV ecx, 0
	MOV eax, 0
L$$30:
	MOV edx, esi
	PUSH edx
	MOV edx, ebx
	PUSH edx
	AND eax, ecx
	PUSH eax
	CALL _LPrime$or
	ADD esp, 12
	MOV ebx, 3
L$$33:
	CMP eax, 1
	JNE L$$37
L$$36:
	MOV ecx, 0
	CMP ebx, DWORD PTR [ebp + 8]
	JGE L$$40
L$$39:
	MOV ecx, 1
L$$40:
	MOV edx, ecx
	MOV ecx, 1
	JMP L$$38
L$$37:
	MOV edx, 0
	MOV ecx, 0
L$$38:
	AND ecx, edx
	CMP ecx, 1
	JNE L$$34
L$$35:
	CMP eax, 1
	JNE L$$42
L$$41:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPrime$divides
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	MOV ecx, eax
	MOV eax, 1
	JMP L$$43
L$$42:
	MOV ecx, 0
	MOV eax, 0
L$$43:
	AND eax, ecx
	MOV ecx, ebx
	ADD ecx, 2
	MOV ebx, ecx
	JMP L$$33
L$$34:
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPrime$b2i:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	CMP DWORD PTR [ebp + 8], 1
	JNE L$$44
L$$45:
	MOV eax, 1
	JMP L$$46
L$$44:
	MOV eax, 0
L$$46:
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPrime$test_it:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, DWORD PTR [ebp + 32]
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 36]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	ADD esp, 8
	MOV ecx, DWORD PTR [ebp + 36]
	PUSH ecx
	PUSH eax
	CALL _LPrime$b2i
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV ebx, DWORD PTR [ebp + 28]
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 36]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	ADD esp, 8
	MOV ecx, DWORD PTR [ebp + 36]
	PUSH ecx
	PUSH eax
	CALL _LPrime$b2i
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV ebx, DWORD PTR [ebp + 24]
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 36]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	ADD esp, 8
	MOV ecx, DWORD PTR [ebp + 36]
	PUSH ecx
	PUSH eax
	CALL _LPrime$b2i
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV ebx, DWORD PTR [ebp + 20]
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 36]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	ADD esp, 8
	MOV ecx, DWORD PTR [ebp + 36]
	PUSH ecx
	PUSH eax
	CALL _LPrime$b2i
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV ebx, DWORD PTR [ebp + 16]
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 36]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	ADD esp, 8
	MOV ecx, DWORD PTR [ebp + 36]
	PUSH ecx
	PUSH eax
	CALL _LPrime$b2i
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 36]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	ADD esp, 8
	MOV ecx, DWORD PTR [ebp + 36]
	PUSH ecx
	PUSH eax
	CALL _LPrime$b2i
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV ebx, DWORD PTR [ebp + 8]
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 36]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	ADD esp, 8
	MOV ecx, DWORD PTR [ebp + 36]
	PUSH ecx
	PUSH eax
	CALL _LPrime$b2i
	ADD esp, 8
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 999
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
