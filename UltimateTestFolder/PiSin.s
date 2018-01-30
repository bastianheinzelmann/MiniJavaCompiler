	.intel_syntax
	.global _Lmain
Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, 0
	PUSH eax
	CALL L_halloc
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$pi
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL L_write
	MOV eax, eax
	MOV eax, 0
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
LPiDigits$base:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 1000
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
LPiDigits$places:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 40
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
LPiDigits$reserve:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 5
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
LPiDigits$equals:
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
LPiDigits$mod:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, esi
	MOV ecx, edi
	MOV eax, DWORD PTR [ebp + 12]
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	MOV ebx, DWORD PTR [ebp + 8]
	CDQ
	IDIV ebx
	IMUL esi, eax
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
LPiDigits$div:
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
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL LPiDigits$equals
	MOV eax, eax
	CMP eax, 1
	JNE L$$7
L$$8:
	MOV esi, 0
	JMP L$$9
L$$7:
	MOV esi, 0
L$$10:
	MOV ebx, 0
	MOV edx, 0
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB ecx, eax
	MOV eax, ecx
	ADD eax, 1
	CMP edx, eax
	JGE L$$14
L$$13:
	MOV ebx, 1
L$$14:
	CMP ebx, 1
	JNE L$$11
L$$12:
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 12]
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB ecx, eax
	MOV eax, ecx
	JMP L$$10
L$$11:
L$$9:
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
LPiDigits$shownum:
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
L$$15:
	MOV edi, 0
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$reserve
	MOV eax, eax
	MOV ecx, ebx
	SUB ecx, eax
	CMP esi, ecx
	JGE L$$19
L$$18:
	MOV edi, 1
L$$19:
	CMP edi, 1
	JNE L$$16
L$$17:
	MOV ecx, 48
	MOV eax, DWORD PTR [ebp + 8]
	MOV ebx, eax
	MOV edx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL edx, eax
	ADD ebx, edx
	MOV eax, ebx
	MOV eax, DWORD PTR [eax + 0]
	MOV edx, 100
	CDQ
	IDIV edx
	ADD ecx, eax
	MOV eax, ecx
	PUSH eax
	CALL L_write
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	MOV ecx, 10
	CDQ
	IDIV ecx
	MOV eax, eax
	PUSH eax
	MOV eax, 10
	PUSH eax
	CALL LPiDigits$mod
	MOV ecx, eax
	MOV eax, 48
	ADD eax, ecx
	MOV eax, eax
	PUSH eax
	CALL L_write
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 10
	PUSH eax
	CALL LPiDigits$mod
	MOV ecx, eax
	MOV eax, 48
	ADD eax, ecx
	MOV eax, eax
	PUSH eax
	CALL L_write
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL LPiDigits$equals
	MOV eax, eax
	CMP eax, 1
	JNE L$$20
L$$21:
	MOV eax, 46
	PUSH eax
	CALL L_write
	MOV eax, eax
	JMP L$$22
L$$20:
	MOV eax, 32
	PUSH eax
	CALL L_write
	MOV eax, eax
L$$22:
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$15
L$$16:
	MOV eax, 10
	PUSH eax
	CALL L_write
	MOV eax, eax
	MOV eax, 13
	PUSH eax
	CALL L_write
	MOV eax, eax
	MOV eax, 0
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
LPiDigits$overflow:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -12], eax
L$$23:
	MOV ecx, 0
	MOV eax, 0
	MOV edx, DWORD PTR [ebp + -12]
	CMP eax, edx
	JGE L$$27
L$$26:
	MOV ecx, 1
L$$27:
	CMP ecx, 1
	JNE L$$24
L$$25:
L$$28:
	MOV ebx, 0
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$base
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	CMP esi, eax
	JGE L$$32
L$$31:
	MOV ebx, 1
L$$32:
	CMP ebx, 1
	JNE L$$29
L$$30:
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV esi, edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$base
	MOV edx, eax
	MOV ecx, esi
	MOV eax, ebx
	SUB eax, edx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV ebx, ecx
	MOV edx, 4
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ecx, ecx
	SUB ecx, 1
	MOV ecx, ecx
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV ecx, DWORD PTR [ecx + 0]
	ADD ecx, 1
	MOV DWORD PTR [eax + 0], ecx
	JMP L$$28
L$$29:
L$$33:
	MOV ebx, 0
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	CMP DWORD PTR [eax + 0], 0
	JGE L$$37
L$$36:
	MOV ebx, 1
L$$37:
	CMP ebx, 1
	JNE L$$34
L$$35:
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV esi, edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$base
	MOV edx, eax
	MOV ecx, esi
	MOV eax, ebx
	ADD eax, edx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV ebx, ecx
	MOV edx, 4
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ecx, ecx
	SUB ecx, 1
	MOV ecx, ecx
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV ecx, DWORD PTR [ecx + 0]
	SUB ecx, 1
	MOV DWORD PTR [eax + 0], ecx
	JMP L$$33
L$$34:
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -12], eax
	JMP L$$23
L$$24:
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
LPiDigits$add:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, 0
L$$38:
	MOV esi, 0
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	CMP ebx, eax
	JGE L$$42
L$$41:
	MOV esi, 1
L$$42:
	CMP esi, 1
	JNE L$$39
L$$40:
	MOV eax, DWORD PTR [ebp + 16]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV eax, DWORD PTR [ebp + 12]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	ADD esi, DWORD PTR [eax + 0]
	MOV DWORD PTR [edi + 0], esi
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$38
L$$39:
	MOV eax, 0
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
LPiDigits$sub:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, 0
L$$43:
	MOV esi, 0
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	CMP ebx, eax
	JGE L$$47
L$$46:
	MOV esi, 1
L$$47:
	CMP esi, 1
	JNE L$$44
L$$45:
	MOV eax, DWORD PTR [ebp + 16]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV eax, DWORD PTR [ebp + 12]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	SUB esi, DWORD PTR [eax + 0]
	MOV DWORD PTR [edi + 0], esi
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$43
L$$44:
	MOV eax, 0
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
LPiDigits$neg:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, 0
L$$48:
	MOV esi, 0
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	CMP ebx, eax
	JGE L$$52
L$$51:
	MOV esi, 1
L$$52:
	CMP esi, 1
	JNE L$$49
L$$50:
	MOV eax, DWORD PTR [ebp + 12]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	SUB esi, DWORD PTR [eax + 0]
	MOV DWORD PTR [edi + 0], esi
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$48
L$$49:
	MOV eax, 0
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
LPiDigits$longdiv:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$overflow
	MOV eax, eax
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 16]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 0
L$$53:
	MOV ebx, 0
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	MOV eax, eax
	SUB eax, 1
	CMP esi, eax
	JGE L$$57
L$$56:
	MOV ebx, 1
L$$57:
	CMP ebx, 1
	JNE L$$54
L$$55:
	MOV eax, DWORD PTR [ebp + 16]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV eax, DWORD PTR [ebp + 16]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	ADD ebx, DWORD PTR [eax + 0]
	MOV DWORD PTR [edi + 0], ebx
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$div
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV edx, DWORD PTR [eax + 0]
	MOV ecx, edi
	MOV eax, DWORD PTR [ebp + 8]
	IMUL ecx, eax
	SUB edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [ebp + 16]
	MOV ebx, ecx
	MOV edx, 4
	MOV ecx, esi
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], edi
	MOV ecx, DWORD PTR [ebp + 16]
	MOV edx, ecx
	MOV ecx, 4
	MOV ebx, esi
	ADD ebx, 1
	MOV ebx, ebx
	ADD ebx, 1
	IMUL ecx, ebx
	ADD edx, ecx
	MOV ebx, edx
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$base
	MOV ecx, eax
	MOV eax, ebx
	MOV edx, edi
	IMUL edx, ecx
	MOV DWORD PTR [eax + 0], edx
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$53
L$$54:
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$overflow
	MOV eax, eax
	MOV eax, 0
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
LPiDigits$mult:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 16
	MOV eax, ebx
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$overflow
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$overflow
	MOV eax, eax
	MOV ebx, 0
L$$58:
	MOV esi, 0
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	CMP ebx, eax
	JGE L$$62
L$$61:
	MOV esi, 1
L$$62:
	CMP esi, 1
	JNE L$$59
L$$60:
	MOV eax, DWORD PTR [ebp + 16]
	MOV edx, eax
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
	JMP L$$58
L$$59:
	MOV eax, 0
	MOV DWORD PTR [ebp + -12], eax
L$$63:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + -12]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	CMP ebx, eax
	JGE L$$67
L$$66:
	MOV esi, 1
L$$67:
	CMP esi, 1
	JNE L$$64
L$$65:
	MOV eax, 0
	MOV DWORD PTR [ebp + -4], eax
L$$68:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	ADD eax, ecx
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	CMP ebx, eax
	JGE L$$72
L$$71:
	MOV esi, 1
L$$72:
	CMP esi, 1
	JNE L$$69
L$$70:
	MOV eax, DWORD PTR [ebp + 16]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	MOV ebx, DWORD PTR [ebp + -4]
	ADD eax, ebx
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV eax, DWORD PTR [ebp + 16]
	MOV ecx, eax
	MOV eax, 4
	MOV edx, DWORD PTR [ebp + -12]
	MOV edx, edx
	MOV ebx, DWORD PTR [ebp + -4]
	ADD edx, ebx
	MOV edx, edx
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	IMUL ebx, DWORD PTR [eax + 0]
	ADD esi, ebx
	MOV DWORD PTR [edi + 0], esi
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	JMP L$$68
L$$69:
	MOV eax, DWORD PTR [ebp + -12]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -12], eax
	JMP L$$63
L$$64:
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$overflow
	MOV eax, eax
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -16]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
LPiDigits$mv:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV esi, 0
L$$73:
	MOV ebx, 0
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	CMP esi, eax
	JGE L$$77
L$$76:
	MOV ebx, 1
L$$77:
	CMP ebx, 1
	JNE L$$74
L$$75:
	MOV eax, DWORD PTR [ebp + 12]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ebx, edx
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [ebx + 0], eax
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$73
L$$74:
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
LPiDigits$nullify:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV ebx, 0
L$$78:
	MOV esi, 0
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	CMP ebx, eax
	JGE L$$82
L$$81:
	MOV esi, 1
L$$82:
	CMP esi, 1
	JNE L$$79
L$$80:
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
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
	JMP L$$78
L$$79:
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
LPiDigits$iszero:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 16
	MOV eax, ebx
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -8], eax
	MOV esi, 0
	MOV eax, 1
	MOV DWORD PTR [ebp + -4], eax
L$$83:
	MOV eax, DWORD PTR [ebp + -4]
	CMP eax, 1
	JNE L$$87
L$$86:
	MOV edi, 0
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$reserve
	MOV eax, eax
	MOV ecx, ebx
	SUB ecx, eax
	CMP esi, ecx
	JGE L$$90
L$$89:
	MOV edi, 1
L$$90:
	MOV eax, edi
	MOV ecx, 1
	JMP L$$88
L$$87:
	MOV eax, 0
	MOV ecx, 0
L$$88:
	MOV ecx, ecx
	AND ecx, eax
	CMP ecx, 1
	JNE L$$84
L$$85:
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV edx, eax
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL LPiDigits$equals
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$91
L$$92:
	MOV eax, 0
	MOV DWORD PTR [ebp + -4], eax
	JMP L$$93
L$$91:
L$$93:
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$83
L$$84:
	MOV eax, DWORD PTR [ebp + -4]
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
LPiDigits$sin:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$overflow
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$mv
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$nullify
	MOV eax, eax
	MOV ebx, 1
L$$94:
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$iszero
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$95
L$$96:
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$add
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$mult
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	ADD eax, 1
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$longdiv
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$mult
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	ADD eax, 2
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$longdiv
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$sub
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$mult
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	ADD eax, 3
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$longdiv
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$mult
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	ADD eax, 4
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$longdiv
	MOV eax, eax
	MOV eax, ebx
	ADD eax, 4
	MOV ebx, eax
	JMP L$$94
L$$95:
	MOV eax, DWORD PTR [ebp + 24]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$overflow
	MOV eax, eax
	MOV eax, 0
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
LPiDigits$pi:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 20
	MOV eax, ebx
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL L_halloc
	MOV ebx, eax
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL L_halloc
	MOV ebx, eax
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL L_halloc
	MOV ebx, eax
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL L_halloc
	MOV esi, eax
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$places
	MOV eax, eax
	MOV ecx, esi
	MOV DWORD PTR [ecx + 0], eax
	MOV edi, esi
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$nullify
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$nullify
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL LPiDigits$nullify
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL LPiDigits$nullify
	MOV eax, eax
	MOV edx, edi
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 1
	MOV esi, 0
L$$97:
	MOV eax, 0
	CMP esi, 10
	JGE L$$101
L$$100:
	MOV eax, 1
L$$101:
	CMP eax, 1
	JNE L$$98
L$$99:
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL LPiDigits$overflow
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL LPiDigits$shownum
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL LPiDigits$sin
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV eax, eax
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL LPiDigits$add
	MOV eax, eax
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$97
L$$98:
	MOV eax, 10
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
