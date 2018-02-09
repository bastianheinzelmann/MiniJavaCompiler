	.intel_syntax
	.global _Lmain
Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, 16
	PUSH eax
	CALL L_halloc
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL LH$init
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL LH$run
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL L_write
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
LH$init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
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
	CALL L_halloc
	ADD esp, 4
	MOV edx, eax
	MOV edx, edx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [edx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], edx
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
	CALL L_halloc
	ADD esp, 4
	MOV edx, eax
	MOV edx, edx
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [edx + 0], eax
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], edx
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
	MOV edx, DWORD PTR [eax + 0]
	MOV eax, 1
	MOV ecx, 2
	CDQ
	IDIV ecx
	ADD edx, eax
	MOV eax, edx
	ADD eax, 1
	MOV eax, eax
	IMUL eax, 4
	MOV eax, eax
	PUSH eax
	CALL L_halloc
	ADD esp, 4
	MOV esi, eax
	MOV esi, esi
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edx, DWORD PTR [eax + 0]
	MOV eax, 1
	MOV ecx, 2
	CDQ
	IDIV ecx
	ADD edx, eax
	MOV DWORD PTR [esi + 0], edx
	MOV eax, ebx
	MOV DWORD PTR [eax + 0], esi
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
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
LH$run:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL LH$display
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
	CALL LH$move
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
LH$move:
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
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 16]
	MOV edx, DWORD PTR [ebp + -4]
	CMP edx, DWORD PTR [eax + 0]
	JGE L$$17
L$$16:
	MOV ecx, 1
L$$17:
	CMP ecx, 1
	JNE L$$14
L$$13:
	MOV esi, 0
	MOV ebx, 0
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$19
L$$18:
	MOV esi, 1
L$$19:
	MOV eax, esi
	MOV ecx, 1
	JMP L$$15
L$$14:
	MOV eax, 0
	MOV ecx, 0
L$$15:
	MOV ecx, ecx
	AND ecx, eax
	CMP ecx, 1
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
	MOV edi, 0
L$$20:
	MOV esi, 0
	MOV ebx, 0
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, edi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$24
L$$23:
	MOV esi, 1
L$$24:
	CMP esi, 1
	JNE L$$21
L$$22:
	MOV eax, edi
	ADD eax, 1
	MOV edi, eax
	JMP L$$20
L$$21:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 4
	MOV edx, edi
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV ebx, ecx
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV eax, DWORD PTR [eax + 0]
	MOV DWORD PTR [ebx + 0], eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 4
	MOV edx, DWORD PTR [ebp + -4]
	MOV edx, edx
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV DWORD PTR [eax + 0], 0
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	CALL LH$display
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
	CALL LH$move
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
	CALL LH$move
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
	CALL LH$move
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
LH$display:
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
	MOV edi, 2
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV edx, 4
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	SUB eax, ebx
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	ADD eax, 1
	IMUL edx, eax
	ADD esi, edx
	MOV eax, esi
	IMUL edi, DWORD PTR [eax + 0]
	MOV eax, edi
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
	CALL LH$drawbar
	ADD esp, 16
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 111
	PUSH eax
	MOV edi, 2
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV edx, 4
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	SUB eax, ebx
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	ADD eax, 1
	IMUL edx, eax
	ADD esi, edx
	MOV eax, esi
	IMUL edi, DWORD PTR [eax + 0]
	MOV eax, edi
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
	CALL LH$drawbar
	ADD esp, 16
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 111
	PUSH eax
	MOV edi, 2
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
	MOV edx, 4
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	SUB eax, ebx
	MOV eax, eax
	SUB eax, 1
	MOV eax, eax
	ADD eax, 1
	IMUL edx, eax
	ADD esi, edx
	MOV eax, esi
	IMUL edi, DWORD PTR [eax + 0]
	MOV eax, edi
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
	CALL LH$drawbar
	ADD esp, 16
	MOV eax, eax
	MOV eax, 10
	PUSH eax
	CALL L_write
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
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	IMUL eax, DWORD PTR [ecx + 0]
	MOV ecx, eax
	MOV eax, 3
	IMUL eax, 2
	ADD ecx, eax
	MOV eax, ecx
	PUSH eax
	MOV eax, 3
	IMUL eax, 2
	MOV eax, eax
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	IMUL eax, DWORD PTR [ecx + 0]
	MOV ecx, eax
	MOV eax, 3
	IMUL eax, 2
	ADD ecx, eax
	MOV eax, ecx
	PUSH eax
	CALL LH$drawbar
	ADD esp, 16
	MOV eax, eax
	MOV eax, 10
	PUSH eax
	CALL L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, 10
	PUSH eax
	CALL L_write
	ADD esp, 4
	MOV eax, eax
	MOV eax, 10
	PUSH eax
	CALL L_write
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
LH$drawbar:
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
	CALL L_write
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
	CALL L_write
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
	CALL L_write
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
