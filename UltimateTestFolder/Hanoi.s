	.intel_syntax
	.global _Lmain
_Lmain:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, 16
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	PUSH eax
	CALL _LH$init
	ADD esp, 4
	PUSH eax
	CALL _LH$run
	ADD esp, 4
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, 0
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
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
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
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
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
	IMUL eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV edi, eax
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
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	SUB ecx, eax
	MOV DWORD PTR [ebx + 0], ecx
	ADD eax, 1
	JMP L$$0
L$$1:
	MOV eax, DWORD PTR [ebp + 8]
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
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LH$display
	ADD esp, 4
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
	MOV eax, 10
	MOV esp, ebp
	POP ebp
	RET
_LH$move:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, 0
	CMP DWORD PTR [ebp + 20], 2
	JGE L$$9
L$$8:
	MOV eax, 1
L$$9:
	CMP eax, 1
	JNE L$$5
L$$6:
	MOV ebx, 0
L$$10:
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + 16]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$17
L$$16:
	MOV ecx, 1
L$$17:
	CMP ecx, 1
	JNE L$$14
L$$13:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 16]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$21
L$$20:
	MOV eax, 1
	JMP L$$22
L$$21:
	MOV eax, 0
L$$22:
	CMP ebx, 0
	JL L$$24
L$$23:
	MOV ecx, 1
	JMP L$$25
L$$24:
	MOV ecx, 0
L$$25:
	AND eax, ecx
	CMP eax, 1
	JNE L$$27
L$$26:
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$28
L$$27:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$28:
	MOV eax, 0
	CMP eax, ecx
	JGE L$$19
L$$18:
	MOV esi, 1
L$$19:
	MOV ecx, esi
	MOV eax, 1
	JMP L$$15
L$$14:
	MOV ecx, 0
	MOV eax, 0
L$$15:
	AND eax, ecx
	CMP eax, 1
	JNE L$$11
L$$12:
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$10
L$$11:
	MOV eax, ebx
	SUB eax, 1
	MOV ebx, eax
	MOV edi, 0
L$$29:
	MOV esi, 0
	MOV eax, DWORD PTR [ebp + 12]
	CMP edi, DWORD PTR [eax + 0]
	JGE L$$35
L$$34:
	MOV eax, 1
	JMP L$$36
L$$35:
	MOV eax, 0
L$$36:
	CMP edi, 0
	JL L$$38
L$$37:
	MOV ecx, 1
	JMP L$$39
L$$38:
	MOV ecx, 0
L$$39:
	AND eax, ecx
	CMP eax, 1
	JNE L$$41
L$$40:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, edi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$42
L$$41:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$42:
	MOV eax, 0
	CMP eax, ecx
	JGE L$$33
L$$32:
	MOV esi, 1
L$$33:
	CMP esi, 1
	JNE L$$30
L$$31:
	MOV eax, edi
	ADD eax, 1
	MOV edi, eax
	JMP L$$29
L$$30:
	MOV edx, DWORD PTR [ebp + 12]
	MOV ecx, 4
	MOV eax, edi
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV esi, edx
	MOV eax, DWORD PTR [ebp + 16]
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$44
L$$43:
	MOV eax, 1
	JMP L$$45
L$$44:
	MOV eax, 0
L$$45:
	CMP ebx, 0
	JL L$$47
L$$46:
	MOV ecx, 1
	JMP L$$48
L$$47:
	MOV ecx, 0
L$$48:
	AND eax, ecx
	CMP eax, 1
	JNE L$$50
L$$49:
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$51
L$$50:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$51:
	MOV eax, esi
	MOV DWORD PTR [eax + 0], ecx
	MOV edx, DWORD PTR [ebp + 16]
	MOV ecx, 4
	MOV eax, ebx
	ADD eax, 1
	IMUL ecx, eax
	ADD edx, ecx
	MOV eax, edx
	MOV DWORD PTR [eax + 0], 0
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	CALL _LH$display
	ADD esp, 4
	MOV ebx, eax
	JMP L$$7
L$$5:
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	SUB eax, 1
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LH$move
	ADD esp, 20
	MOV ebx, eax
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
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 24]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 20]
	SUB eax, 1
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _LH$move
	ADD esp, 20
	MOV ebx, eax
L$$7:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -12]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -8]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -4]
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
L$$52:
	MOV edx, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	CMP ebx, DWORD PTR [eax + 0]
	JGE L$$56
L$$55:
	MOV edx, 1
L$$56:
	CMP edx, 1
	JNE L$$53
L$$54:
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	SUB eax, ebx
	SUB eax, 1
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 1
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$58
L$$57:
	MOV eax, 1
	JMP L$$59
L$$58:
	MOV eax, 0
L$$59:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	SUB ecx, ebx
	SUB ecx, 1
	CMP ecx, 0
	JL L$$61
L$$60:
	MOV ecx, 1
	JMP L$$62
L$$61:
	MOV ecx, 0
L$$62:
	AND eax, ecx
	CMP eax, 1
	JNE L$$64
L$$63:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, DWORD PTR [ebp + 8]
	MOV edx, 0
	IMUL edx, 4
	ADD edi, edx
	MOV edx, edi
	MOV edx, DWORD PTR [edx + 0]
	SUB edx, ebx
	SUB edx, 1
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$65
L$$64:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$65:
	MOV eax, esi
	PUSH eax
	MOV eax, 111
	PUSH eax
	MOV eax, 2
	IMUL eax, ecx
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
	PUSH eax
	CALL _LH$drawbar
	ADD esp, 16
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	SUB eax, ebx
	SUB eax, 1
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 2
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$67
L$$66:
	MOV eax, 1
	JMP L$$68
L$$67:
	MOV eax, 0
L$$68:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	SUB ecx, ebx
	SUB ecx, 1
	CMP ecx, 0
	JL L$$70
L$$69:
	MOV ecx, 1
	JMP L$$71
L$$70:
	MOV ecx, 0
L$$71:
	AND eax, ecx
	CMP eax, 1
	JNE L$$73
L$$72:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, DWORD PTR [ebp + 8]
	MOV edx, 0
	IMUL edx, 4
	ADD edi, edx
	MOV edx, edi
	MOV edx, DWORD PTR [edx + 0]
	SUB edx, ebx
	SUB edx, 1
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$74
L$$73:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$74:
	MOV eax, esi
	PUSH eax
	MOV eax, 111
	PUSH eax
	MOV eax, 2
	IMUL eax, ecx
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
	PUSH eax
	CALL _LH$drawbar
	ADD esp, 16
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	SUB eax, ebx
	SUB eax, 1
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 3
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	CMP eax, DWORD PTR [ecx + 0]
	JGE L$$76
L$$75:
	MOV eax, 1
	JMP L$$77
L$$76:
	MOV eax, 0
L$$77:
	MOV edx, DWORD PTR [ebp + 8]
	MOV ecx, 0
	IMUL ecx, 4
	ADD edx, ecx
	MOV ecx, edx
	MOV ecx, DWORD PTR [ecx + 0]
	SUB ecx, ebx
	SUB ecx, 1
	CMP ecx, 0
	JL L$$79
L$$78:
	MOV ecx, 1
	JMP L$$80
L$$79:
	MOV ecx, 0
L$$80:
	AND eax, ecx
	CMP eax, 1
	JNE L$$82
L$$81:
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	MOV eax, 4
	MOV edi, DWORD PTR [ebp + 8]
	MOV edx, 0
	IMUL edx, 4
	ADD edi, edx
	MOV edx, edi
	MOV edx, DWORD PTR [edx + 0]
	SUB edx, ebx
	SUB edx, 1
	ADD edx, 1
	IMUL eax, edx
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
	JMP L$$83
L$$82:
	MOV eax, 1
	PUSH eax
	CALL _L_raise
	ADD esp, 4
	MOV ecx, eax
L$$83:
	MOV eax, esi
	PUSH eax
	MOV eax, 111
	PUSH eax
	MOV eax, 2
	IMUL eax, ecx
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
	PUSH eax
	CALL _LH$drawbar
	ADD esp, 16
	MOV eax, 10
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, ebx
	ADD eax, 1
	MOV ebx, eax
	JMP L$$52
L$$53:
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
	MOV eax, 10
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, 10
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, 10
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, 0
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
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, DWORD PTR [ebp + 12]
	MOV ecx, 2
	CDQ
	IDIV ecx
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	SUB eax, DWORD PTR [ebp + 12]
	SUB eax, esi
	MOV ebx, eax
L$$84:
	MOV ecx, 0
	MOV eax, 0
	CMP eax, esi
	JGE L$$88
L$$87:
	MOV ecx, 1
L$$88:
	CMP ecx, 1
	JNE L$$85
L$$86:
	MOV eax, 32
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, esi
	SUB eax, 1
	MOV esi, eax
	JMP L$$84
L$$85:
L$$89:
	MOV ecx, 0
	MOV eax, 0
	CMP eax, DWORD PTR [ebp + 12]
	JGE L$$93
L$$92:
	MOV ecx, 1
L$$93:
	CMP ecx, 1
	JNE L$$90
L$$91:
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 12]
	SUB eax, 1
	MOV DWORD PTR [ebp + 12], eax
	JMP L$$89
L$$90:
L$$94:
	MOV ecx, 0
	MOV eax, 0
	CMP eax, ebx
	JGE L$$98
L$$97:
	MOV ecx, 1
L$$98:
	CMP ecx, 1
	JNE L$$95
L$$96:
	MOV eax, 32
	PUSH eax
	CALL _L_write
	ADD esp, 4
	MOV eax, ebx
	SUB eax, 1
	MOV ebx, eax
	JMP L$$94
L$$95:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
