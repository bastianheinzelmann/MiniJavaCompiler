	.intel_syntax
	.global _Lmain
_Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, 16
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _LH$init
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _LH$run
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
_LH$init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV DWORD PTR [eax + 0], 10
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, 0
	IMUL ecx, 4
	ADD esi, ecx
	MOV ecx, esi
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [eax + 0], ecx
	MOV ecx, ebx
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, 1
	MOV ecx, 2
	CDQ
	IDIV ecx
	ADD esi, eax
	MOV eax, esi
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV edi, eax
	MOV edi, edi
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV eax, 1
	MOV ecx, 2
	CDQ
	IDIV ecx
	ADD esi, eax
	MOV DWORD PTR [edi + 0], esi
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], edi
	MOV eax, 0
L$$0:
	MOV ebx, 0
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$4
L$$3:
	MOV ebx, 1
L$$4:
	CMP ebx, 1
	JNE L$$1
L$$2:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 1
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ebx, DWORD PTR [ecx + 0]
	MOV edx, 4
	MOV ecx, eax
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ebx, ebx
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	SUB ecx, eax
	MOV DWORD PTR [ebx + 0], ecx
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	JMP L$$0
L$$1:
	MOV eax, DWORD PTR [ebp + 8]
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
_LH$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LH$display
	ADD esp, 4
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LH$move
	ADD esp, 20
	MOV eax, eax
	MOV eax, 10
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LH$move:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 16
	MOV eax, ebx
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, 0
	CMP DWORD PTR [ebp + 20], 2
	JGE L$$9
L$$8:
	MOV eax, 1
L$$9:
	CMP eax, 1
	JNE L$$5
L$$6:
	MOV eax, 0
	MOV DWORD PTR [ebp + -4], eax
L$$10:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, DWORD PTR [ebp + -4]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$17
L$$16:
	MOV edx, 1
L$$17:
	CMP edx, 1
	JNE L$$14
L$$13:
	MOV ecx, 0
	MOV eax, 0
	MOV esi, DWORD PTR [ebp + 16]
	MOV ebx, 4
	MOV edx, DWORD PTR [ebp + -4]
	MOV edx, edx
	ADD edx, 1
	IMUL ebx, edx
	ADD esi, ebx
	MOV edx, esi
	CMP eax, DWORD PTR [edx + 0]
	JGE L$$19
L$$18:
	MOV ecx, 1
L$$19:
	MOV ecx, ecx
	MOV eax, 1
	JMP L$$15
L$$14:
	MOV ecx, 0
	MOV eax, 0
L$$15:
	MOV eax, eax
	AND eax, ecx
	CMP eax, 1
	JNE L$$11
L$$12:
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	JMP L$$10
L$$11:
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	MOV edx, 0
L$$20:
	MOV ecx, 0
	MOV eax, 0
	MOV edi, DWORD PTR [ebp + 12]
	MOV esi, 4
	MOV ebx, edx
	ADD ebx, 1
	IMUL esi, ebx
	ADD edi, esi
	MOV ebx, edi
	CMP eax, DWORD PTR [ebx + 0]
	JGE L$$24
L$$23:
	MOV ecx, 1
L$$24:
	CMP ecx, 1
	JNE L$$21
L$$22:
	MOV eax, edx
	ADD eax, 1
	MOV edx, eax
	JMP L$$20
L$$21:
	MOV ebx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, edx
	ADD eax, 1
	IMUL ecx, eax
	ADD ebx, ecx
	MOV eax, ebx
	MOV ebx, DWORD PTR [ebp + 16]
	MOV edx, 4
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ecx, ecx
	ADD ecx, 1
	IMUL edx, ecx
	ADD ebx, edx
	MOV ecx, ebx
	MOV ecx, DWORD PTR [ecx + 0]
	MOV DWORD PTR [eax + 0], ecx
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 0
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	CALL _LH$display
	ADD esp, 4
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	JMP L$$7
L$$5:
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	SUB eax, 1
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LH$move
	ADD esp, 20
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, 1
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LH$move
	ADD esp, 20
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	SUB eax, 1
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LH$move
	ADD esp, 20
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
L$$7:
	MOV eax, 0
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
_LH$display:
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
L$$25:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$29
L$$28:
	MOV edx, 1
L$$29:
	CMP edx, 1
	JNE L$$26
L$$27:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 111
	PUSH eax
	MOV edx, 2
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, DWORD PTR [ebp + 8]
	MOV esi, 0
	IMUL esi, 4
	ADD edi, esi
	MOV esi, edi
	MOV esi, DWORD PTR [esi + 0]
	SUB esi, ebx
	MOV esi, esi
	SUB esi, 1
	MOV esi, esi
	ADD esi, 1
	IMUL eax, esi
	ADD ecx, eax
	MOV eax, ecx
	IMUL edx, DWORD PTR [eax + 0]
	MOV eax, edx
	PUSH eax
	MOV edx, 2
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	IMUL edx, DWORD PTR [eax + 0]
	MOV eax, edx
	ADD eax, 2
	MOV eax, eax
	PUSH eax
	CALL _LH$drawbar
	ADD esp, 16
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 111
	PUSH eax
	MOV edx, 2
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, DWORD PTR [ebp + 8]
	MOV esi, 0
	IMUL esi, 4
	ADD edi, esi
	MOV esi, edi
	MOV esi, DWORD PTR [esi + 0]
	SUB esi, ebx
	MOV esi, esi
	SUB esi, 1
	MOV esi, esi
	ADD esi, 1
	IMUL eax, esi
	ADD ecx, eax
	MOV eax, ecx
	IMUL edx, DWORD PTR [eax + 0]
	MOV eax, edx
	PUSH eax
	MOV edx, 2
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	IMUL edx, DWORD PTR [eax + 0]
	MOV eax, edx
	ADD eax, 2
	MOV eax, eax
	PUSH eax
	CALL _LH$drawbar
	ADD esp, 16
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 111
	PUSH eax
	MOV edx, 2
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, DWORD PTR [ebp + 8]
	MOV esi, 0
	IMUL esi, 4
	ADD edi, esi
	MOV esi, edi
	MOV esi, DWORD PTR [esi + 0]
	SUB esi, ebx
	MOV esi, esi
	SUB esi, 1
	MOV esi, esi
	ADD esi, 1
	IMUL eax, esi
	ADD ecx, eax
	MOV eax, ecx
	IMUL edx, DWORD PTR [eax + 0]
	MOV eax, edx
	PUSH eax
	MOV edx, 2
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	IMUL edx, DWORD PTR [eax + 0]
	MOV eax, edx
	ADD eax, 2
	MOV eax, eax
	PUSH eax
	CALL _LH$drawbar
	ADD esp, 16
	MOV eax, eax
	MOV eax, 10
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$25
L$$26:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 61
	PUSH eax
	MOV eax, 3
	IMUL eax, 2
	MOV edx, eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	IMUL edx, DWORD PTR [eax + 0]
	MOV ecx, edx
	MOV eax, 3
	IMUL eax, 2
	ADD ecx, eax
	MOV eax, ecx
	PUSH eax
	MOV eax, 3
	IMUL eax, 2
	MOV edx, eax
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	IMUL edx, DWORD PTR [eax + 0]
	MOV ecx, edx
	MOV eax, 3
	IMUL eax, 2
	ADD ecx, eax
	MOV eax, ecx
	PUSH eax
	CALL _LH$drawbar
	ADD esp, 16
	MOV eax, eax
	MOV eax, 10
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, 10
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, 10
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
_LH$drawbar:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	MOV ecx, 2
	CDQ
	IDIV ecx
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, DWORD PTR [ebp + 12]
	MOV eax, eax
	SUB eax, esi
	MOV ebx, eax
L$$30:
	MOV ecx, 0
	MOV eax, 0
	CMP eax, esi
	JGE L$$34
L$$33:
	MOV ecx, 1
L$$34:
	CMP ecx, 1
	JNE L$$31
L$$32:
	MOV eax, 32
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, esi
	SUB eax, 1
	MOV esi, eax
	JMP L$$30
L$$31:
L$$35:
	MOV ecx, 0
	MOV eax, 0
	CMP eax, DWORD PTR [ebp + 12]
	JGE L$$39
L$$38:
	MOV ecx, 1
L$$39:
	CMP ecx, 1
	JNE L$$36
L$$37:
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	SUB eax, 1
	MOV DWORD PTR [ebp + 12], eax
	JMP L$$35
L$$36:
L$$40:
	MOV ecx, 0
	MOV eax, 0
	CMP eax, ebx
	JGE L$$44
L$$43:
	MOV ecx, 1
L$$44:
	CMP ecx, 1
	JNE L$$41
L$$42:
	MOV eax, 32
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	SUB eax, 1
	MOV ebx, eax
	JMP L$$40
L$$41:
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
