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
	CALL _LTest$test
	ADD esp, 4
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LLabel$init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [esi + 0], eax
	MOV eax, 0
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LLabel$label:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD esi, eax
	MOV eax, esi
	MOV eax, DWORD PTR [eax + 0]
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LLabel$eq:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LLabel$label
	ADD esp, 4
	MOV ecx, eax
	MOV eax, 0
	MOV ebx, DWORD PTR [ebp + 12]
	MOV edx, 0
	IMUL edx, 4
	ADD ebx, edx
	MOV edx, ecx
	ADD edx, 1
	CMP DWORD PTR [ebx + 0], edx
	JGE L$$4
L$$3:
	MOV eax, 1
L$$4:
	CMP eax, 1
	JNE L$$1
L$$0:
	MOV eax, 0
	MOV ebx, DWORD PTR [ebp + 12]
	MOV edx, 0
	IMUL edx, 4
	ADD ebx, edx
	MOV edx, ebx
	MOV edx, DWORD PTR [edx + 0]
	ADD edx, 1
	CMP ecx, edx
	JGE L$$6
L$$5:
	MOV eax, 1
L$$6:
	MOV ecx, eax
	MOV eax, 1
	JMP L$$2
L$$1:
	MOV ecx, 0
	MOV eax, 0
L$$2:
	AND eax, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LLabel$print:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LNode$init:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 1
	IMUL eax, 4
	ADD esi, eax
	MOV eax, esi
	MOV DWORD PTR [eax + 0], 0
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 0
	IMUL eax, 4
	ADD esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [esi + 0], eax
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 2
	IMUL eax, 4
	ADD esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV DWORD PTR [esi + 0], eax
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 3
	IMUL eax, 4
	ADD esi, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV DWORD PTR [esi + 0], eax
	MOV eax, 0
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LNode$label:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD esi, eax
	MOV eax, esi
	MOV eax, DWORD PTR [eax + 0]
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LNode$setLeft:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 2
	IMUL eax, 4
	ADD esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [esi + 0], eax
	MOV eax, 0
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LNode$setRight:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	MOV esi, DWORD PTR [ebp + 12]
	MOV eax, 3
	IMUL eax, 4
	ADD esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	MOV DWORD PTR [esi + 0], eax
	MOV eax, 0
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LNode$print:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV ecx, DWORD PTR [ebp + 8]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	CALL _LLabel$print
	ADD esp, 4
	MOV eax, 0
	MOV esp, ebp
	POP ebp
	RET
_LNode$beq:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV edx, esi
	MOV ecx, edi
	CMP DWORD PTR [ebp + 12], 1
	JNE L$$11
L$$10:
	MOV eax, DWORD PTR [ebp + 8]
	MOV esi, 1
	JMP L$$12
L$$11:
	MOV eax, 0
	MOV esi, 0
L$$12:
	MOV edi, 1
	AND esi, eax
	SUB edi, esi
	CMP edi, 1
	JNE L$$8
L$$7:
	MOV eax, 1
	SUB eax, DWORD PTR [ebp + 12]
	CMP eax, 1
	JNE L$$14
L$$13:
	MOV eax, 1
	SUB eax, DWORD PTR [ebp + 8]
	MOV esi, 1
	JMP L$$15
L$$14:
	MOV eax, 0
	MOV esi, 0
L$$15:
	MOV edi, 1
	AND esi, eax
	SUB edi, esi
	MOV eax, edi
	MOV esi, 1
	JMP L$$9
L$$8:
	MOV eax, 0
	MOV esi, 0
L$$9:
	MOV edi, 1
	AND esi, eax
	SUB edi, esi
	MOV eax, edi
	MOV esi, edx
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LNode$dfs:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 0
	MOV eax, DWORD PTR [ebp + 16]
	PUSH eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LNode$beq
	ADD esp, 12
	CMP eax, 1
	JNE L$$16
L$$17:
	MOV eax, 0
	JMP L$$18
L$$16:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 0
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LLabel$eq
	ADD esp, 8
	CMP eax, 1
	JNE L$$19
L$$20:
	MOV eax, 1
	JMP L$$21
L$$19:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 1
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, DWORD PTR [ebp + 12]
	MOV DWORD PTR [ecx + 0], eax
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 2
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LNode$dfs
	ADD esp, 12
	CMP eax, 1
	JNE L$$22
L$$23:
	MOV eax, 1
	JMP L$$24
L$$22:
	MOV ecx, DWORD PTR [ebp + 16]
	MOV eax, 3
	IMUL eax, 4
	ADD ecx, eax
	MOV eax, ecx
	MOV eax, DWORD PTR [eax + 0]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LNode$dfs
	ADD esp, 12
	CMP eax, 1
	JNE L$$25
L$$26:
	MOV eax, 1
	JMP L$$27
L$$25:
	MOV eax, 0
L$$27:
L$$24:
L$$21:
L$$18:
	MOV esp, ebp
	POP ebp
	RET
_LTest$newLabel:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, 4
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LLabel$init
	ADD esp, 8
	MOV eax, ebx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LTest$newNode:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 4
	MOV eax, ebx
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, 16
	PUSH eax
	CALL _L_halloc
	ADD esp, 4
	MOV ebx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LNode$init
	ADD esp, 8
	MOV eax, ebx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV ebx, ecx
	MOV esp, ebp
	POP ebp
	RET
_LTest$findPath:
	PUSH ebp
	MOV ebp, esp
	SUB esp, 8
	MOV eax, ebx
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, esi
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 12]
	PUSH eax
	CALL _LNode$print
	ADD esp, 4
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LNode$print
	ADD esp, 4
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LNode$label
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 1
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LNode$dfs
	ADD esp, 12
	MOV esi, eax
	MOV ebx, DWORD PTR [ebp + 12]
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	CALL _LNode$label
	ADD esp, 4
	MOV ecx, eax
	MOV eax, ebx
	PUSH eax
	MOV eax, 0
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LNode$dfs
	ADD esp, 12
	CMP esi, 1
	JNE L$$28
L$$29:
	MOV eax, 999
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
	JMP L$$30
L$$28:
	MOV eax, 0
	SUB eax, 999
	PUSH eax
	CALL _L_println_int
	ADD esp, 4
L$$30:
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -8]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -4]
	MOV esi, ecx
	MOV esp, ebp
	POP ebp
	RET
_LTest$test:
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
	MOV eax, 1
	PUSH eax
	CALL _LTest$newLabel
	ADD esp, 8
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LTest$newNode
	ADD esp, 8
	MOV DWORD PTR [ebp + -8], eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 2
	PUSH eax
	CALL _LTest$newLabel
	ADD esp, 8
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LTest$newNode
	ADD esp, 8
	MOV DWORD PTR [ebp + -4], eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 3
	PUSH eax
	CALL _LTest$newLabel
	ADD esp, 8
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LTest$newNode
	ADD esp, 8
	MOV edi, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 4
	PUSH eax
	CALL _LTest$newLabel
	ADD esp, 8
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LTest$newNode
	ADD esp, 8
	MOV esi, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, 5
	PUSH eax
	CALL _LTest$newLabel
	ADD esp, 8
	MOV ecx, eax
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ecx
	PUSH eax
	CALL _LTest$newNode
	ADD esp, 8
	MOV ebx, eax
	MOV eax, DWORD PTR [ebp + -8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	PUSH eax
	CALL _LNode$setLeft
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + -8]
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LNode$setRight
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + -4]
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LNode$setLeft
	ADD esp, 8
	MOV eax, edi
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	PUSH eax
	CALL _LNode$setLeft
	ADD esp, 8
	MOV eax, edi
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LNode$setRight
	ADD esp, 8
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LTest$findPath
	ADD esp, 12
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, esi
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	PUSH eax
	CALL _LTest$findPath
	ADD esp, 12
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	PUSH eax
	CALL _LTest$findPath
	ADD esp, 12
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, esi
	PUSH eax
	MOV eax, DWORD PTR [ebp + -8]
	PUSH eax
	CALL _LTest$findPath
	ADD esp, 12
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, edi
	PUSH eax
	MOV eax, DWORD PTR [ebp + -4]
	PUSH eax
	CALL _LTest$findPath
	ADD esp, 12
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, esi
	PUSH eax
	MOV eax, edi
	PUSH eax
	CALL _LTest$findPath
	ADD esp, 12
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, ebx
	PUSH eax
	CALL _LTest$findPath
	ADD esp, 12
	MOV eax, DWORD PTR [ebp + 8]
	PUSH eax
	MOV eax, ebx
	PUSH eax
	MOV eax, esi
	PUSH eax
	CALL _LTest$findPath
	ADD esp, 12
	MOV eax, 0
	MOV ecx, DWORD PTR [ebp + -20]
	MOV ebx, ecx
	MOV ecx, DWORD PTR [ebp + -16]
	MOV esi, ecx
	MOV ecx, DWORD PTR [ebp + -12]
	MOV edi, ecx
	MOV esp, ebp
	POP ebp
	RET
