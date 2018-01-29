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
	MOV eax, eax
	MOV eax, eax
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
_LPrime$or:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, esi
	MOV ecx, edi
	MOV eax, DWORD PTR [ebp + 12]
	CMP eax, 1
	JNE L$$1
L$$0:
	MOV ebx, 1
	MOV eax, DWORD PTR [ebp + 8]
	SUB ebx, eax
	MOV eax, ebx
	MOV ebx, 1
	JMP L$$2
L$$1:
	MOV eax, 0
	MOV ebx, 0
L$$2:
	MOV edi, 1
	MOV esi, 1
	MOV ebx, ebx
	AND ebx, eax
	SUB esi, ebx
	SUB edi, esi
	MOV eax, edi
	MOV eax, eax
	MOV ebx, DWORD PTR [ebp + -4]
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPrime$divides:
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
L$$3:
	CMP eax, 1
	JNE L$$7
L$$6:
	MOV ebx, 0
	MOV edx, DWORD PTR [ebp + 8]
	CMP ecx, edx
	JGE L$$10
L$$9:
	MOV ebx, 1
L$$10:
	MOV edx, ebx
	MOV ebx, 1
	JMP L$$8
L$$7:
	MOV edx, 0
	MOV ebx, 0
L$$8:
	MOV esi, 1
	MOV ebx, ebx
	AND ebx, edx
	SUB esi, ebx
	CMP esi, 1
	JNE L$$4
L$$5:
	MOV ebx, 0
	MOV edx, ecx
	MOV esi, DWORD PTR [ebp + 12]
	IMUL edx, esi
	MOV esi, DWORD PTR [ebp + 8]
	CMP edx, esi
	JGE L$$15
L$$14:
	MOV ebx, 1
L$$15:
	CMP ebx, 1
	JNE L$$11
L$$12:
	MOV ecx, ecx
	ADD ecx, 1
	MOV ecx, ecx
	JMP L$$13
L$$11:
	MOV edi, 0
	MOV esi, DWORD PTR [ebp + 8]
	MOV ebx, ecx
	MOV edx, DWORD PTR [ebp + 12]
	IMUL ebx, edx
	CMP esi, ebx
	JGE L$$20
L$$19:
	MOV edi, 1
L$$20:
	CMP edi, 1
	JNE L$$16
L$$17:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV ecx, ecx
	JMP L$$18
L$$16:
	MOV eax, 1
L$$18:
L$$13:
	JMP L$$3
L$$4:
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
_LPrime$isprime:
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
	MOV edx, 0
	MOV ecx, 1
	MOV eax, DWORD PTR [ebp + 8]
	CMP ecx, eax
	JGE L$$25
L$$24:
	MOV edx, 1
L$$25:
	CMP edx, 1
	JNE L$$22
L$$21:
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, 3
	JGE L$$27
L$$26:
	MOV ecx, 1
L$$27:
	MOV eax, ecx
	MOV ecx, 1
	JMP L$$23
L$$22:
	MOV eax, 0
	MOV ecx, 0
L$$23:
	MOV ecx, ecx
	AND ecx, eax
	MOV ebx, ecx
	MOV edx, 0
	MOV ecx, 2
	MOV eax, DWORD PTR [ebp + 8]
	CMP ecx, eax
	JGE L$$32
L$$31:
	MOV edx, 1
L$$32:
	CMP edx, 1
	JNE L$$29
L$$28:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, 2
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LPrime$divides
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
	MOV eax, eax
	AND eax, ecx
	MOV eax, eax
	PUSH eax
	CALL _LPrime$or
	MOV ecx, eax
	MOV ebx, 3
L$$33:
	CMP ecx, 1
	JNE L$$37
L$$36:
	MOV edx, 0
	MOV eax, DWORD PTR [ebp + 8]
	CMP ebx, eax
	JGE L$$40
L$$39:
	MOV edx, 1
L$$40:
	MOV eax, edx
	MOV edx, 1
	JMP L$$38
L$$37:
	MOV eax, 0
	MOV edx, 0
L$$38:
	MOV edx, edx
	AND edx, eax
	CMP edx, 1
	JNE L$$34
L$$35:
	CMP ecx, 1
	JNE L$$42
L$$41:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL _LPrime$divides
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	MOV eax, eax
	MOV ecx, 1
	JMP L$$43
L$$42:
	MOV eax, 0
	MOV ecx, 0
L$$43:
	MOV ecx, ecx
	AND ecx, eax
	MOV ecx, ecx
	MOV eax, ebx
	ADD eax, 2
	MOV ebx, eax
	JMP L$$33
L$$34:
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
_LPrime$b2i:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV eax, DWORD PTR [ebp + 8]
	CMP eax, 1
	JNE L$$44
L$$45:
	MOV eax, 1
	JMP L$$46
L$$44:
	MOV eax, 0
L$$46:
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
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
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 32]
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 36]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 36]
	MOV ecx, ecx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LPrime$b2i
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 28]
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 36]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 36]
	MOV ecx, ecx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LPrime$b2i
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 36]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 36]
	MOV ecx, ecx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LPrime$b2i
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 20]
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 36]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 36]
	MOV ecx, ecx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LPrime$b2i
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 36]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 36]
	MOV ecx, ecx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LPrime$b2i
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 36]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 36]
	MOV ecx, ecx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LPrime$b2i
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 36]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LPrime$isprime
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + 36]
	MOV ecx, ecx
	PUSH ecx
	MOV eax, eax
	PUSH eax
	CALL _LPrime$b2i
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	MOV eax, eax
	MOV eax, 999
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
