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
	CALL _LLL$Start
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
_LElement$Init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 20]
	MOV eax, 0
	IMUL eax, 4
	ADD esi, eax
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 16]
	MOV DWORD PTR [esi + 0], eax
	MOV esi, DWORD PTR [ebp + 20]
	MOV eax, 1
	IMUL eax, 4
	ADD esi, eax
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 12]
	MOV DWORD PTR [esi + 0], eax
	MOV esi, DWORD PTR [ebp + 20]
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
_LElement$GetAge:
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
_LElement$GetSalary:
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
_LElement$GetMarried:
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
_LElement$Equal:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV esi, esi
	MOV edi, edi
	MOV ebx, 1
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LElement$GetAge
	ADD esp, 4
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LElement$Compare
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$0
L$$1:
	MOV ebx, 0
	JMP L$$2
L$$0:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LElement$GetSalary
	ADD esp, 4
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, ecx
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LElement$Compare
	ADD esp, 12
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$3
L$$4:
	MOV ebx, 0
	JMP L$$5
L$$3:
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	CMP DWORD PTR [eax + 0], 1
	JNE L$$6
L$$7:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LElement$GetMarried
	ADD esp, 4
	MOV ecx, eax
	MOV eax, 1
	SUB eax, ecx
	CMP eax, 1
	JNE L$$9
L$$10:
	MOV ebx, 0
	JMP L$$11
L$$9:
	MOV eax, 0
L$$11:
	JMP L$$8
L$$6:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LElement$GetMarried
	ADD esp, 4
	MOV eax, eax
	CMP eax, 1
	JNE L$$12
L$$13:
	MOV ebx, 0
	JMP L$$14
L$$12:
	MOV eax, 0
L$$14:
L$$8:
L$$5:
L$$2:
	MOV eax, ebx
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esi, esi
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LElement$Compare:
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
	JGE L$$19
L$$18:
	MOV edi, 1
L$$19:
	CMP edi, 1
	JNE L$$15
L$$16:
	MOV eax, 0
	JMP L$$17
L$$15:
	MOV esi, 0
	CMP DWORD PTR [ebp + 12], eax
	JGE L$$24
L$$23:
	MOV esi, 1
L$$24:
	MOV eax, 1
	SUB eax, esi
	CMP eax, 1
	JNE L$$20
L$$21:
	MOV eax, 0
	JMP L$$22
L$$20:
	MOV eax, 1
L$$22:
L$$17:
	MOV eax, eax
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LList$Init:
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
	MOV DWORD PTR [eax + 0], 1
	MOV eax, 1
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LList$InitNew:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ebx, ebx
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 20]
	MOV eax, 2
	IMUL eax, 4
	ADD esi, eax
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [esi + 0], eax
	MOV esi, DWORD PTR [ebp + 20]
	MOV eax, 0
	IMUL eax, 4
	ADD esi, eax
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 16]
	MOV DWORD PTR [esi + 0], eax
	MOV esi, DWORD PTR [ebp + 20]
	MOV eax, 1
	IMUL eax, 4
	ADD esi, eax
	MOV esi, esi
	MOV eax, DWORD PTR [ebp + 12]
	MOV DWORD PTR [esi + 0], eax
	MOV eax, 1
	MOV eax, eax
	MOV ebx, ebx
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LList$Insert:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 12
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, esi
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LList$InitNew
	ADD esp, 16
	MOV eax, eax
	MOV eax, ebx
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LList$SetNext:
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
_LList$Delete:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 28
	MOV eax, ebx
	MOV DWORD PTR [ebp + -28], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -24], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -20], eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV DWORD PTR [ebp + -16], eax
	MOV eax, 0
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, 0
	SUB eax, 1
	MOV eax, eax
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV DWORD PTR [ebp + -4], eax
	MOV ebx, DWORD PTR [ebp + 12]
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV edi, DWORD PTR [eax + 0]
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV esi, DWORD PTR [eax + 0]
L$$25:
	MOV eax, 1
	SUB eax, edi
	CMP eax, 1
	JNE L$$29
L$$28:
	MOV ecx, 1
	MOV eax, DWORD PTR [ebp + -12]
	SUB ecx, eax
	MOV ecx, ecx
	MOV eax, 1
	JMP L$$30
L$$29:
	MOV ecx, 0
	MOV eax, 0
L$$30:
	MOV eax, eax
	AND eax, ecx
	CMP eax, 1
	JNE L$$26
L$$27:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LElement$Equal
	ADD esp, 8
	MOV eax, eax
	CMP eax, 1
	JNE L$$31
L$$32:
	MOV eax, 1
	MOV DWORD PTR [ebp + -12], eax
	MOV ecx, 0
	MOV eax, DWORD PTR [ebp + -8]
	CMP eax, 0
	JGE L$$38
L$$37:
	MOV ecx, 1
L$$38:
	CMP ecx, 1
	JNE L$$34
L$$35:
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	CALL _LList$GetNext
	ADD esp, 4
	MOV eax, eax
	MOV DWORD PTR [ebp + -16], eax
	JMP L$$36
L$$34:
	MOV eax, 0
	SUB eax, 555
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV ebx, ebx
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	CALL _LList$GetNext
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LList$SetNext
	ADD esp, 8
	MOV eax, eax
	MOV eax, 0
	SUB eax, 555
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
L$$36:
	JMP L$$33
L$$31:
	MOV eax, 0
L$$33:
	MOV ecx, 1
	MOV eax, DWORD PTR [ebp + -12]
	SUB ecx, eax
	CMP ecx, 1
	JNE L$$39
L$$40:
	MOV eax, DWORD PTR [ebp + -4]
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	CALL _LList$GetNext
	ADD esp, 4
	MOV eax, eax
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	CALL _LList$GetEnd
	ADD esp, 4
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + -4]
	MOV eax, eax
	PUSH eax
	CALL _LList$GetElem
	ADD esp, 4
	MOV esi, eax
	MOV eax, 1
	MOV DWORD PTR [ebp + -8], eax
	JMP L$$41
L$$39:
	MOV eax, 0
L$$41:
	JMP L$$25
L$$26:
	MOV eax, DWORD PTR [ebp + -16]
	MOV eax, eax
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -28]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -24]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -20]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LList$Search:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, 0
	MOV esi, DWORD PTR [ebp + 12]
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV ecx, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
L$$42:
	MOV eax, 1
	SUB eax, ebx
	CMP eax, 1
	JNE L$$43
L$$44:
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LElement$Equal
	ADD esp, 8
	MOV eax, eax
	CMP eax, 1
	JNE L$$45
L$$46:
	MOV edi, 1
	JMP L$$47
L$$45:
	MOV eax, 0
L$$47:
	MOV eax, esi
	PUSH eax
	CALL _LList$GetNext
	ADD esp, 4
	MOV esi, eax
	MOV eax, esi
	PUSH eax
	CALL _LList$GetEnd
	ADD esp, 4
	MOV ebx, eax
	MOV eax, esi
	PUSH eax
	CALL _LList$GetElem
	ADD esp, 4
	MOV ecx, eax
	JMP L$$42
L$$43:
	MOV eax, edi
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
_LList$GetEnd:
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
_LList$GetElem:
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
_LList$GetNext:
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
_LList$Print:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV edi, edi
	MOV esi, DWORD PTR [ebp + 8]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ebx, DWORD PTR [eax + 0]
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV ecx, DWORD PTR [eax + 0]
L$$48:
	MOV eax, 1
	SUB eax, ebx
	CMP eax, 1
	JNE L$$49
L$$50:
	MOV eax, ecx
	PUSH eax
	CALL _LElement$GetAge
	ADD esp, 4
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, esi
	PUSH eax
	CALL _LList$GetNext
	ADD esp, 4
	MOV esi, eax
	MOV eax, esi
	PUSH eax
	CALL _LList$GetEnd
	ADD esp, 4
	MOV ebx, eax
	MOV eax, esi
	PUSH eax
	CALL _LList$GetElem
	ADD esp, 4
	MOV ecx, eax
	JMP L$$48
L$$49:
	MOV eax, 1
	MOV eax, eax
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV edi, edi
	MOV esp, ebp
	POP ebp
	RET
_LLL$Start:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 12
	MOV eax, ebx
	MOV DWORD PTR [ebp + -12], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, edi
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, 12
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _LList$Init
	ADD esp, 4
	MOV eax, eax
	MOV ebx, ebx
	MOV eax, ebx
	PUSH eax
	CALL _LList$Init
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	CALL _LList$Print
	ADD esp, 4
	MOV eax, eax
	MOV eax, 12
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV esi, eax
	MOV eax, esi
	PUSH eax
	MOV eax, 25
	PUSH eax
	MOV eax, 37000
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LElement$Init
	ADD esp, 16
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LList$Insert
	ADD esp, 8
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _LList$Print
	ADD esp, 4
	MOV eax, eax
	MOV eax, 10000000
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, 12
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV esi, eax
	MOV eax, esi
	PUSH eax
	MOV eax, 39
	PUSH eax
	MOV eax, 42000
	PUSH eax
	MOV eax, 1
	PUSH eax
	CALL _LElement$Init
	ADD esp, 16
	MOV eax, eax
	MOV edi, esi
	MOV eax, ebx
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LList$Insert
	ADD esp, 8
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _LList$Print
	ADD esp, 4
	MOV eax, eax
	MOV eax, 10000000
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, 12
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV esi, eax
	MOV eax, esi
	PUSH eax
	MOV eax, 22
	PUSH eax
	MOV eax, 34000
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LElement$Init
	ADD esp, 16
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LList$Insert
	ADD esp, 8
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _LList$Print
	ADD esp, 4
	MOV eax, eax
	MOV eax, 12
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV esi, eax
	MOV eax, esi
	PUSH eax
	MOV eax, 27
	PUSH eax
	MOV eax, 34000
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LElement$Init
	ADD esp, 16
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LList$Search
	ADD esp, 8
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LList$Search
	ADD esp, 8
	MOV eax, eax
	MOV eax, eax
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, 10000000
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, 12
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV esi, eax
	MOV eax, esi
	PUSH eax
	MOV eax, 28
	PUSH eax
	MOV eax, 35000
	PUSH eax
	MOV eax, 0
	PUSH eax
	CALL _LElement$Init
	ADD esp, 16
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LList$Insert
	ADD esp, 8
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _LList$Print
	ADD esp, 4
	MOV eax, eax
	MOV eax, 2220000
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LList$Delete
	ADD esp, 8
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _LList$Print
	ADD esp, 4
	MOV eax, eax
	MOV eax, 33300000
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LList$Delete
	ADD esp, 8
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	CALL _LList$Print
	ADD esp, 4
	MOV eax, eax
	MOV eax, 44440000
	PUSH eax
	CALL _L_println_int
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
