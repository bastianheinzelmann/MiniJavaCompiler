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
	CALL _LBT$Start
	ADD esp, 4
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
_LBT$Start:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, 24
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 16
	PUSH eax
	CALL _LTree$Init
	ADD esp, 8
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	CALL _LTree$Print
	ADD esp, 4
	MOV eax, eax
	MOV eax, 100000000
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 8
	PUSH eax
	CALL _LTree$Insert
	ADD esp, 8
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	CALL _LTree$Print
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 24
	PUSH eax
	CALL _LTree$Insert
	ADD esp, 8
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 4
	PUSH eax
	CALL _LTree$Insert
	ADD esp, 8
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 12
	PUSH eax
	CALL _LTree$Insert
	ADD esp, 8
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 20
	PUSH eax
	CALL _LTree$Insert
	ADD esp, 8
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 28
	PUSH eax
	CALL _LTree$Insert
	ADD esp, 8
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 14
	PUSH eax
	CALL _LTree$Insert
	ADD esp, 8
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	CALL _LTree$Print
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 24
	PUSH eax
	CALL _LTree$Search
	ADD esp, 8
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 12
	PUSH eax
	CALL _LTree$Search
	ADD esp, 8
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 16
	PUSH eax
	CALL _LTree$Search
	ADD esp, 8
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 50
	PUSH eax
	CALL _LTree$Search
	ADD esp, 8
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 12
	PUSH eax
	CALL _LTree$Search
	ADD esp, 8
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 12
	PUSH eax
	CALL _LTree$Delete
	ADD esp, 8
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	CALL _LTree$Print
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 12
	PUSH eax
	CALL _LTree$Search
	ADD esp, 8
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
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
_LTree$Init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 2
	IMUL eax, 4
	ADD esi, eax
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [esi + 0], eax
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 3
	IMUL eax, 4
	ADD esi, eax
	MOV eax, esi
	MOV DWORD PTR [eax + 0], 0
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 4
	IMUL eax, 4
	ADD esi, eax
	MOV eax, esi
	MOV DWORD PTR [eax + 0], 0
	MOV eax, 1
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LTree$SetRight:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD esi, eax
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [esi + 0], eax
	MOV eax, 1
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LTree$SetLeft:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD esi, eax
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [esi + 0], eax
	MOV eax, 1
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LTree$GetRight:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 8]
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
_LTree$GetLeft:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 8]
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
_LTree$GetKey:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 8]
	MOV eax, 2
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
_LTree$SetKey:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 2
	IMUL eax, 4
	ADD esi, eax
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [esi + 0], eax
	MOV eax, 1
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LTree$GetHas_Right:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 8]
	MOV eax, 4
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
_LTree$GetHas_Left:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 8]
	MOV eax, 3
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
_LTree$SetHas_Left:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 3
	IMUL eax, 4
	ADD esi, eax
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [esi + 0], eax
	MOV eax, 1
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LTree$SetHas_Right:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 4
	IMUL eax, 4
	ADD esi, eax
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [esi + 0], eax
	MOV eax, 1
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LTree$Compare:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV eax, 0
	MOV eax, DWORD PTR [ebp + 8]
	ADD eax, 1
	MOV eax, eax
	MOV edi, 0
	MOV esi, DWORD PTR [ebp + 12]
	CMP esi, DWORD PTR [ebp + 8]
	JGE L$$4
L$$3:
	MOV edi, 1
L$$4:
	CMP edi, 1
	JNE L$$0
L$$1:
	MOV eax, 0
	JMP L$$2
L$$0:
	MOV esi, 0
	CMP DWORD PTR [ebp + 12], eax
	JGE L$$9
L$$8:
	MOV esi, 1
L$$9:
	MOV eax, 1
	SUB eax, esi
	CMP eax, 1
	JNE L$$5
L$$6:
	MOV eax, 0
	JMP L$$7
L$$5:
	MOV eax, 1
L$$7:
L$$2:
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LTree$Insert:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, 24
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV edi, eax
	MOV eax, edi
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$Init
	ADD esp, 8
	MOV eax, eax
	MOV esi, DWORD PTR [ebp + 12]
	MOV ebx, 1
L$$10:
	CMP ebx, 1
	JNE L$$11
L$$12:
	MOV eax, esi
	PUSH eax
	CALL _LTree$GetKey
	ADD esp, 4
	MOV ecx, eax
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], ecx
	JGE L$$17
L$$16:
	MOV eax, 1
L$$17:
	CMP eax, 1
	JNE L$$13
L$$14:
	MOV eax, esi
	PUSH eax
	CALL _LTree$GetHas_Left
	ADD esp, 4
	MOV eax, eax
	CMP eax, 1
	JNE L$$18
L$$19:
	MOV eax, esi
	PUSH eax
	CALL _LTree$GetLeft
	ADD esp, 4
	MOV esi, eax
	JMP L$$20
L$$18:
	MOV ebx, 0
	MOV eax, esi
	PUSH eax
	MOV eax, 1
	PUSH eax
	CALL _LTree$SetHas_Left
	ADD esp, 8
	MOV eax, eax
	MOV eax, esi
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LTree$SetLeft
	ADD esp, 8
	MOV eax, eax
L$$20:
	JMP L$$15
L$$13:
	MOV eax, esi
	PUSH eax
	CALL _LTree$GetHas_Right
	ADD esp, 4
	MOV eax, eax
	CMP eax, 1
	JNE L$$21
L$$22:
	MOV eax, esi
	PUSH eax
	CALL _LTree$GetRight
	ADD esp, 4
	MOV esi, eax
	JMP L$$23
L$$21:
	MOV ebx, 0
	MOV eax, esi
	PUSH eax
	MOV eax, 1
	PUSH eax
	CALL _LTree$SetHas_Right
	ADD esp, 8
	MOV eax, eax
	MOV eax, esi
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LTree$SetRight
	ADD esp, 8
	MOV eax, eax
L$$23:
L$$15:
	JMP L$$10
L$$11:
	MOV eax, 1
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
_LTree$Delete:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 20
	MOV eax, ebx
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, 1
	MOV esi, 0
	MOV ebx, 1
L$$24:
	CMP edi, 1
	JNE L$$25
L$$26:
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL _LTree$GetKey
	ADD esp, 4
	MOV ecx, eax
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], ecx
	JGE L$$31
L$$30:
	MOV eax, 1
L$$31:
	CMP eax, 1
	JNE L$$27
L$$28:
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL _LTree$GetHas_Left
	ADD esp, 4
	MOV eax, eax
	CMP eax, 1
	JNE L$$32
L$$33:
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL _LTree$GetLeft
	ADD esp, 4
	MOV eax, eax
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$34
L$$32:
	MOV edi, 0
L$$34:
	JMP L$$29
L$$27:
	MOV eax, 0
	CMP ecx, DWORD PTR [ebp + 8]
	JGE L$$39
L$$38:
	MOV eax, 1
L$$39:
	CMP eax, 1
	JNE L$$35
L$$36:
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL _LTree$GetHas_Right
	ADD esp, 4
	MOV eax, eax
	CMP eax, 1
	JNE L$$40
L$$41:
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL _LTree$GetRight
	ADD esp, 4
	MOV eax, eax
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$42
L$$40:
	MOV edi, 0
L$$42:
	JMP L$$37
L$$35:
	CMP ebx, 1
	JNE L$$43
L$$44:
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL _LTree$GetHas_Right
	ADD esp, 4
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$50
L$$49:
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL _LTree$GetHas_Left
	ADD esp, 4
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	MOV ecx, eax
	MOV eax, 1
	JMP L$$51
L$$50:
	MOV ecx, 0
	MOV eax, 0
L$$51:
	MOV eax, eax
	AND eax, ecx
	CMP eax, 1
	JNE L$$46
L$$47:
	MOV eax, 1
	JMP L$$48
L$$46:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL _LTree$Remove
	ADD esp, 12
	MOV eax, eax
L$$48:
	JMP L$$45
L$$43:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	MOV eax, eax
	PUSH eax
	CALL _LTree$Remove
	ADD esp, 12
	MOV eax, eax
L$$45:
	MOV esi, 1
	MOV edi, 0
L$$37:
L$$29:
	MOV ebx, 0
	JMP L$$24
L$$25:
	MOV eax, esi
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
_LTree$Remove:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetHas_Left
	ADD esp, 4
	MOV eax, eax
	CMP eax, 1
	JNE L$$52
L$$53:
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$RemoveLeft
	ADD esp, 12
	MOV eax, eax
	JMP L$$54
L$$52:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetHas_Right
	ADD esp, 4
	MOV eax, eax
	CMP eax, 1
	JNE L$$55
L$$56:
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$RemoveRight
	ADD esp, 12
	MOV eax, eax
	JMP L$$57
L$$55:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetKey
	ADD esp, 4
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LTree$GetLeft
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _LTree$GetKey
	ADD esp, 4
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LTree$Compare
	ADD esp, 12
	MOV eax, eax
	CMP eax, 1
	JNE L$$58
L$$59:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 5
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LTree$SetLeft
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LTree$SetHas_Left
	ADD esp, 8
	MOV eax, eax
	JMP L$$60
L$$58:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 5
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LTree$SetRight
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LTree$SetHas_Right
	ADD esp, 8
	MOV eax, eax
L$$60:
L$$57:
L$$54:
	MOV eax, 1
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LTree$RemoveRight:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
L$$61:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetHas_Right
	ADD esp, 4
	MOV eax, eax
	CMP eax, 1
	JNE L$$62
L$$63:
	MOV ebx, DWORD PTR [ebp + 8]
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetRight
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _LTree$GetKey
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LTree$SetKey
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ebp + 12], eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetRight
	ADD esp, 4
	MOV DWORD PTR [ebp + 8], eax
	JMP L$$61
L$$62:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 5
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LTree$SetRight
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LTree$SetHas_Right
	ADD esp, 8
	MOV eax, eax
	MOV eax, 1
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LTree$RemoveLeft:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
L$$64:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetHas_Left
	ADD esp, 4
	MOV eax, eax
	CMP eax, 1
	JNE L$$65
L$$66:
	MOV ebx, DWORD PTR [ebp + 8]
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetLeft
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _LTree$GetKey
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LTree$SetKey
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [ebp + 12], eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetLeft
	ADD esp, 4
	MOV DWORD PTR [ebp + 8], eax
	JMP L$$64
L$$65:
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 5
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LTree$SetLeft
	ADD esp, 8
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LTree$SetHas_Left
	ADD esp, 8
	MOV eax, eax
	MOV eax, 1
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LTree$Search:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, DWORD PTR [ebp + 12]
	MOV esi, 1
	MOV ebx, 0
L$$67:
	CMP esi, 1
	JNE L$$68
L$$69:
	MOV eax, edi
	PUSH eax
	CALL _LTree$GetKey
	ADD esp, 4
	MOV ecx, eax
	MOV eax, 0
	CMP DWORD PTR [ebp + 8], ecx
	JGE L$$74
L$$73:
	MOV eax, 1
L$$74:
	CMP eax, 1
	JNE L$$70
L$$71:
	MOV eax, edi
	PUSH eax
	CALL _LTree$GetHas_Left
	ADD esp, 4
	MOV eax, eax
	CMP eax, 1
	JNE L$$75
L$$76:
	MOV eax, edi
	PUSH eax
	CALL _LTree$GetLeft
	ADD esp, 4
	MOV edi, eax
	JMP L$$77
L$$75:
	MOV esi, 0
L$$77:
	JMP L$$72
L$$70:
	MOV eax, 0
	CMP ecx, DWORD PTR [ebp + 8]
	JGE L$$82
L$$81:
	MOV eax, 1
L$$82:
	CMP eax, 1
	JNE L$$78
L$$79:
	MOV eax, edi
	PUSH eax
	CALL _LTree$GetHas_Right
	ADD esp, 4
	MOV eax, eax
	CMP eax, 1
	JNE L$$83
L$$84:
	MOV eax, edi
	PUSH eax
	CALL _LTree$GetRight
	ADD esp, 4
	MOV edi, eax
	JMP L$$85
L$$83:
	MOV esi, 0
L$$85:
	JMP L$$80
L$$78:
	MOV ebx, 1
	MOV esi, 0
L$$80:
L$$72:
	JMP L$$67
L$$68:
	MOV eax, ebx
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
_LTree$Print:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LTree$RecPrint
	ADD esp, 8
	MOV eax, eax
	MOV eax, 1
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LTree$RecPrint:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetHas_Left
	ADD esp, 4
	MOV eax, eax
	CMP eax, 1
	JNE L$$86
L$$87:
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetLeft
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LTree$RecPrint
	ADD esp, 8
	MOV eax, eax
	JMP L$$88
L$$86:
	MOV eax, 1
L$$88:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetKey
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetHas_Right
	ADD esp, 4
	MOV eax, eax
	CMP eax, 1
	JNE L$$89
L$$90:
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LTree$GetRight
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LTree$RecPrint
	ADD esp, 8
	MOV eax, eax
	JMP L$$91
L$$89:
	MOV eax, 1
L$$91:
	MOV eax, 1
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
