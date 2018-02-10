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
	CALL _LPiDigits$pi
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_write
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
_LPiDigits$base:
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
_LPiDigits$places:
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
_LPiDigits$reserve:
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
_LPiDigits$equals:
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
_LPiDigits$mod:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, edi
	MOV edi, DWORD PTR [ebp + 12]
	MOV esi, DWORD PTR [ebp + 8]
	MOV eax, DWORD PTR [ebp + 12]
	MOV ebx, DWORD PTR [ebp + 8]
	CDQ
	IDIV ebx
	IMUL esi, eax
	SUB edi, esi
	MOV eax, edi
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + -8]
	MOV ebx, edx
	MOV edx, DWORD PTR [ebp + -4]
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$div:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LPiDigits$equals
	ADD esp, 12
	MOV eax, eax
	CMP eax, 1
	JNE L$$7
L$$8:
	MOV edx, 0
	JMP L$$9
L$$7:
	MOV edx, 0
L$$10:
	MOV ecx, 0
	MOV eax, 0
	MOV ebx, DWORD PTR [ebp + 12]
	SUB ebx, DWORD PTR [ebp + 8]
	MOV ebx, ebx
	ADD ebx, 1
	CMP eax, ebx
	JGE L$$14
L$$13:
	MOV ecx, 1
L$$14:
	CMP ecx, 1
	JNE L$$11
L$$12:
	MOV eax, edx
	ADD eax, 1
	MOV edx, eax
	MOV eax, DWORD PTR [ebp + 12]
	SUB eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ebp + 12], eax
	JMP L$$10
L$$11:
L$$9:
	MOV eax, edx
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LPiDigits$shownum:
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
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$reserve
	ADD esp, 4
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
	MOV edi, DWORD PTR [ebp + 8]
	MOV ebx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ebx, eax
	ADD edi, ebx
	MOV eax, edi
	MOV eax, DWORD PTR [eax + 0]
	MOV ebx, 100
	CDQ
	IDIV ebx
	ADD ecx, eax
	MOV eax, ecx
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV ebx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV eax, ebx
	MOV eax, DWORD PTR [eax + 0]
	MOV ecx, 10
	CDQ
	IDIV ecx
	MOV eax, eax
	PUSH eax
	MOV eax, 10
	PUSH eax
	CALL _LPiDigits$mod
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 48
	ADD eax, ecx
	MOV eax, eax
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV edx, DWORD PTR [ebp + 8]
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
	CALL _LPiDigits$mod
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 48
	ADD eax, ecx
	MOV eax, eax
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LPiDigits$equals
	ADD esp, 12
	MOV eax, eax
	CMP eax, 1
	JNE L$$20
L$$21:
	MOV eax, 46
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	JMP L$$22
L$$20:
	MOV eax, 32
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
L$$22:
	MOV eax, esi
	ADD eax, 1
	MOV esi, eax
	JMP L$$15
L$$16:
	MOV eax, 10
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, 13
	PUSH eax
	CALL _L_write
	ADD esp, 4
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
_LPiDigits$overflow:
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
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	SUB eax, 1
	MOV esi, eax
L$$23:
	MOV ecx, 0
	MOV eax, 0
	CMP eax, esi
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
	PUSH eax
	CALL _LPiDigits$base
	ADD esp, 4
	MOV edi, eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	CMP edi, eax
	JGE L$$32
L$$31:
	MOV ebx, 1
L$$32:
	CMP ebx, 1
	JNE L$$29
L$$30:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$base
	ADD esp, 4
	MOV eax, eax
	MOV ecx, edi
	MOV edx, ebx
	SUB edx, eax
	MOV DWORD PTR [ecx + 0], edx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 4
	MOV edx, esi
	SUB edx, 1
	MOV edx, edx
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV edx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 4
	MOV ebx, esi
	SUB ebx, 1
	MOV ebx, ebx
	ADD ebx, 1
	IMUL eax, ebx
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV DWORD PTR [edx + 0], eax
	JMP L$$28
L$$29:
L$$33:
	MOV ebx, 0
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, esi
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
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ebx, DWORD PTR [eax + 0]
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$base
	ADD esp, 4
	MOV eax, eax
	MOV ecx, edi
	MOV edx, ebx
	ADD edx, eax
	MOV DWORD PTR [ecx + 0], edx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 4
	MOV edx, esi
	SUB edx, 1
	MOV edx, edx
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV edx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 4
	MOV ebx, esi
	SUB ebx, 1
	MOV ebx, ebx
	ADD ebx, 1
	IMUL eax, ebx
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	SUB eax, 1
	MOV DWORD PTR [edx + 0], eax
	JMP L$$33
L$$34:
	MOV eax, esi
	SUB eax, 1
	MOV esi, eax
	JMP L$$23
L$$24:
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
_LPiDigits$add:
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
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	CMP ebx, eax
	JGE L$$42
L$$41:
	MOV esi, 1
L$$42:
	CMP esi, 1
	JNE L$$39
L$$40:
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV esi, DWORD PTR [eax + 0]
	MOV edx, DWORD PTR [ebp + 8]
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
_LPiDigits$sub:
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
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	CMP ebx, eax
	JGE L$$47
L$$46:
	MOV esi, 1
L$$47:
	CMP esi, 1
	JNE L$$44
L$$45:
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV esi, DWORD PTR [eax + 0]
	MOV edx, DWORD PTR [ebp + 8]
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
_LPiDigits$neg:
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
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	CMP ebx, eax
	JGE L$$52
L$$51:
	MOV esi, 1
L$$52:
	CMP esi, 1
	JNE L$$49
L$$50:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV esi, 0
	MOV edx, DWORD PTR [ebp + 8]
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
_LPiDigits$longdiv:
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
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
	MOV eax, eax
	MOV ebx, 0
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 0
L$$53:
	MOV esi, 0
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	SUB eax, 1
	CMP ebx, eax
	JGE L$$57
L$$56:
	MOV esi, 1
L$$57:
	CMP esi, 1
	JNE L$$54
L$$55:
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV edi, edx
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV esi, DWORD PTR [eax + 0]
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	ADD esi, DWORD PTR [eax + 0]
	MOV DWORD PTR [edi + 0], esi
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV edx, DWORD PTR [ebp + 16]
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
	CALL _LPiDigits$div
	ADD esp, 12
	MOV edi, eax
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, edi
	IMUL eax, DWORD PTR [ebp + 8]
	SUB ecx, eax
	MOV esi, ecx
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], edi
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 4
	MOV edx, ebx
	ADD edx, 1
	MOV edx, edx
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV edi, ecx
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$base
	ADD esp, 4
	MOV eax, eax
	MOV ecx, edi
	MOV edx, esi
	IMUL edx, eax
	MOV DWORD PTR [ecx + 0], edx
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$53
L$$54:
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
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
_LPiDigits$mult:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 20
	MOV eax, ebx
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
	MOV eax, eax
	MOV ebx, 0
L$$58:
	MOV esi, 0
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	CMP ebx, eax
	JGE L$$62
L$$61:
	MOV esi, 1
L$$62:
	CMP esi, 1
	JNE L$$59
L$$60:
	MOV edx, DWORD PTR [ebp + 16]
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
	MOV DWORD PTR [ebp + -8], eax
L$$63:
	MOV ebx, 0
	MOV eax, DWORD PTR [ebp + -8]
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	CMP esi, eax
	JGE L$$67
L$$66:
	MOV ebx, 1
L$$67:
	CMP ebx, 1
	JNE L$$64
L$$65:
	MOV eax, 0
	MOV DWORD PTR [ebp + -4], eax
L$$68:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	ADD eax, ecx
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	CMP ebx, eax
	JGE L$$72
L$$71:
	MOV esi, 1
L$$72:
	CMP esi, 1
	JNE L$$69
L$$70:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 4
	MOV edx, DWORD PTR [ebp + -8]
	MOV edx, edx
	MOV ebx, DWORD PTR [ebp + -4]
	ADD edx, ebx
	MOV edx, edx
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV edi, ecx
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 4
	MOV edx, DWORD PTR [ebp + -8]
	MOV edx, edx
	MOV ebx, DWORD PTR [ebp + -4]
	ADD edx, ebx
	MOV edx, edx
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ebx, DWORD PTR [eax + 0]
	MOV edx, DWORD PTR [ebp + 8]
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
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$63
L$$64:
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
	MOV eax, eax
	MOV eax, 0
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
_LPiDigits$mv:
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
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	CMP esi, eax
	JGE L$$77
L$$76:
	MOV ebx, 1
L$$77:
	CMP ebx, 1
	JNE L$$74
L$$75:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, esi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV ebx, edx
	MOV edx, DWORD PTR [ebp + 8]
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
_LPiDigits$nullify:
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
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	CMP ebx, eax
	JGE L$$82
L$$81:
	MOV esi, 1
L$$82:
	CMP esi, 1
	JNE L$$79
L$$80:
	MOV edx, DWORD PTR [ebp + 8]
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
_LPiDigits$iszero:
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
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$reserve
	ADD esp, 4
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
	PUSH eax
	MOV edx, DWORD PTR [ebp + 8]
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
	CALL _LPiDigits$equals
	ADD esp, 12
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
_LPiDigits$sin:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$mv
	ADD esp, 12
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$nullify
	ADD esp, 8
	MOV eax, eax
	MOV ebx, 1
L$$94:
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$iszero
	ADD esp, 8
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$95
L$$96:
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$add
	ADD esp, 16
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$mult
	ADD esp, 16
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ebx
	ADD eax, 1
	MOV eax, eax
	PUSH eax
	CALL _LPiDigits$longdiv
	ADD esp, 16
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$mult
	ADD esp, 16
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ebx
	ADD eax, 2
	MOV eax, eax
	PUSH eax
	CALL _LPiDigits$longdiv
	ADD esp, 16
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LPiDigits$sub
	ADD esp, 16
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$mult
	ADD esp, 16
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ebx
	ADD eax, 3
	MOV eax, eax
	PUSH eax
	CALL _LPiDigits$longdiv
	ADD esp, 16
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LPiDigits$mult
	ADD esp, 16
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ebx
	ADD eax, 4
	MOV eax, eax
	PUSH eax
	CALL _LPiDigits$longdiv
	ADD esp, 16
	MOV eax, eax
	MOV eax, ebx
	ADD eax, 4
	MOV ebx, eax
	JMP L$$94
L$$95:
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
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
_LPiDigits$pi:
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
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV edi, ebx
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LPiDigits$places
	ADD esp, 4
	MOV eax, eax
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV esi, ebx
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL _LPiDigits$nullify
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	CALL _LPiDigits$nullify
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LPiDigits$nullify
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LPiDigits$nullify
	ADD esp, 8
	MOV eax, eax
	MOV edx, esi
	MOV ecx, 4
	MOV eax, 0
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 1
	MOV ebx, 0
L$$97:
	MOV eax, 0
	CMP ebx, 10
	JGE L$$101
L$$100:
	MOV eax, 1
L$$101:
	CMP eax, 1
	JNE L$$98
L$$99:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LPiDigits$overflow
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LPiDigits$shownum
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	MOV eax, esi
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LPiDigits$sin
	ADD esp, 20
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, esi
	PUSH eax
	MOV eax, esi
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL _LPiDigits$add
	ADD esp, 16
	MOV eax, eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
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
