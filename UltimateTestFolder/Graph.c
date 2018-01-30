#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LLabel$init (int32_t p0, int32_t p1) ;

int32_t LLabel$label (int32_t p0) ;

int32_t LLabel$eq (int32_t p0, int32_t p1) ;

int32_t LLabel$print (int32_t p0) ;

int32_t LNode$init (int32_t p0, int32_t p1) ;

int32_t LNode$label (int32_t p0) ;

int32_t LNode$setLeft (int32_t p0, int32_t p1) ;

int32_t LNode$setRight (int32_t p0, int32_t p1) ;

int32_t LNode$print (int32_t p0) ;

int32_t LNode$beq (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LNode$dfs (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LTest$newLabel (int32_t p0, int32_t p1) ;

int32_t LTest$newNode (int32_t p0, int32_t p1) ;

int32_t LTest$findPath (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LTest$test (int32_t p0) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t53, t54;
/* MOVE(TEMP(t53), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t53 = t2;
/* MOVE(TEMP(t54), CALL(NAME(LTest$test), TEMP(t53))) */
int32_t t3 = LTest$test(t53);
t54 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t54))) */
int32_t t4 = L_println_int(t54);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LLabel$init (int32_t p0, int32_t p1) {
int32_t t2;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (0 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t2), CONST(0)) */
t2 = 0;
return t2;
}

int32_t LLabel$label (int32_t p0) {
int32_t t3;
/* MOVE(TEMP(t3), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t3 = MEM((p0 + (0 * 4)));
return t3;
}

int32_t LLabel$eq (int32_t p0, int32_t p1) {
int32_t t4, t5, t6, t7, t8, t9;
/* MOVE(TEMP(t4), CALL(NAME(LLabel$label), PARAM(1))) */
int32_t t0 = LLabel$label(p1);
t4 = t0;
/* MOVE(TEMP(t8), CONST(0)) */
t8 = 0;
/* CJUMP(LT, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(PLUS, TEMP(t4), CONST(1)), L$$3, L$$4) */
if (MEM((p0 + (0 * 4))) < (t4 + 1)) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t8), CONST(1)) */
t8 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, TEMP(t8), CONST(1), L$$0, L$$1) */
if (t8 == 1) goto L$$0; else goto L$$1;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t9), CONST(0)) */
t9 = 0;
/* CJUMP(LT, TEMP(t4), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), CONST(1)), L$$5, L$$6) */
if (t4 < (MEM((p0 + (0 * 4))) + 1)) goto L$$5; else goto L$$6;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t9), CONST(1)) */
t9 = 1;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t7), TEMP(t9)) */
t7 = t9;
/* MOVE(TEMP(t6), CONST(1)) */
t6 = 1;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t7), CONST(0)) */
t7 = 0;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t5), BINOP(AND, TEMP(t6), TEMP(t7))) */
t5 = (t6 & t7);
return t5;
}

int32_t LLabel$print (int32_t p0) {
int32_t t10, t11;
/* MOVE(TEMP(t10), CALL(NAME(L_println_int), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))))) */
int32_t t0 = L_println_int(MEM((p0 + (0 * 4))));
t10 = t0;
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
return t11;
}

int32_t LNode$init (int32_t p0, int32_t p1) {
int32_t t12;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), CONST(0)) */
int32_t t0 = (p0 + (1 * 4));
MEM(t0) = 0;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), PARAM(1)) */
int32_t t1 = (p0 + (0 * 4));
MEM(t1) = p1;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), PARAM(0)) */
int32_t t2 = (p0 + (2 * 4));
MEM(t2) = p0;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), PARAM(0)) */
int32_t t3 = (p0 + (3 * 4));
MEM(t3) = p0;
/* MOVE(TEMP(t12), CONST(0)) */
t12 = 0;
return t12;
}

int32_t LNode$label (int32_t p0) {
int32_t t13;
/* MOVE(TEMP(t13), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t13 = MEM((p0 + (0 * 4)));
return t13;
}

int32_t LNode$setLeft (int32_t p0, int32_t p1) {
int32_t t14;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (2 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t14), CONST(0)) */
t14 = 0;
return t14;
}

int32_t LNode$setRight (int32_t p0, int32_t p1) {
int32_t t15;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (3 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t15), CONST(0)) */
t15 = 0;
return t15;
}

int32_t LNode$print (int32_t p0) {
int32_t t16, t17;
/* MOVE(TEMP(t16), CALL(NAME(LLabel$print), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))))) */
int32_t t0 = LLabel$print(MEM((p0 + (0 * 4))));
t16 = t0;
/* MOVE(TEMP(t17), CONST(0)) */
t17 = 0;
return t17;
}

int32_t LNode$beq (int32_t p0, int32_t p1, int32_t p2) {
int32_t t18, t19, t20, t21, t22, t23, t24;
/* CJUMP(EQ, PARAM(1), CONST(1), L$$10, L$$11) */
if (p1 == 1) goto L$$10; else goto L$$11;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t22), PARAM(2)) */
t22 = p2;
/* MOVE(TEMP(t21), CONST(1)) */
t21 = 1;
/* JUMP(NAME(L$$12), L$$12) */
goto L$$12;
/* LABEL(L$$11) */
L$$11: ;
/* MOVE(TEMP(t22), CONST(0)) */
t22 = 0;
/* MOVE(TEMP(t21), CONST(0)) */
t21 = 0;
/* LABEL(L$$12) */
L$$12: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), BINOP(AND, TEMP(t21), TEMP(t22))), CONST(1), L$$7, L$$8) */
if ((1 - (t21 & t22)) == 1) goto L$$7; else goto L$$8;
/* LABEL(L$$7) */
L$$7: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), PARAM(1)), CONST(1), L$$13, L$$14) */
if ((1 - p1) == 1) goto L$$13; else goto L$$14;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t24), BINOP(MINUS, CONST(1), PARAM(2))) */
t24 = (1 - p2);
/* MOVE(TEMP(t23), CONST(1)) */
t23 = 1;
/* JUMP(NAME(L$$15), L$$15) */
goto L$$15;
/* LABEL(L$$14) */
L$$14: ;
/* MOVE(TEMP(t24), CONST(0)) */
t24 = 0;
/* MOVE(TEMP(t23), CONST(0)) */
t23 = 0;
/* LABEL(L$$15) */
L$$15: ;
/* MOVE(TEMP(t20), BINOP(MINUS, CONST(1), BINOP(AND, TEMP(t23), TEMP(t24)))) */
t20 = (1 - (t23 & t24));
/* MOVE(TEMP(t19), CONST(1)) */
t19 = 1;
/* JUMP(NAME(L$$9), L$$9) */
goto L$$9;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t20), CONST(0)) */
t20 = 0;
/* MOVE(TEMP(t19), CONST(0)) */
t19 = 0;
/* LABEL(L$$9) */
L$$9: ;
/* MOVE(TEMP(t18), BINOP(MINUS, CONST(1), BINOP(AND, TEMP(t19), TEMP(t20)))) */
t18 = (1 - (t19 & t20));
return t18;
}

int32_t LNode$dfs (int32_t p0, int32_t p1, int32_t p2) {
int32_t t25, t26, t55, t56, t57, t58;
/* MOVE(TEMP(t55), CALL(NAME(LNode$beq), PARAM(0), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), PARAM(1))) */
int32_t t0 = LNode$beq(p0, MEM((p0 + (1 * 4))), p1);
t55 = t0;
/* CJUMP(EQ, TEMP(t55), CONST(1), L$$17, L$$16) */
if (t55 == 1) goto L$$17; else goto L$$16;
/* LABEL(L$$17) */
L$$17: ;
/* MOVE(TEMP(t25), CONST(0)) */
t25 = 0;
/* JUMP(NAME(L$$18), L$$18) */
goto L$$18;
/* LABEL(L$$16) */
L$$16: ;
/* MOVE(TEMP(t56), CALL(NAME(LLabel$eq), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), PARAM(2))) */
int32_t t1 = LLabel$eq(MEM((p0 + (0 * 4))), p2);
t56 = t1;
/* CJUMP(EQ, TEMP(t56), CONST(1), L$$20, L$$19) */
if (t56 == 1) goto L$$20; else goto L$$19;
/* LABEL(L$$20) */
L$$20: ;
/* MOVE(TEMP(t25), CONST(1)) */
t25 = 1;
/* JUMP(NAME(L$$21), L$$21) */
goto L$$21;
/* LABEL(L$$19) */
L$$19: ;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), PARAM(1)) */
int32_t t2 = (p0 + (1 * 4));
MEM(t2) = p1;
/* MOVE(TEMP(t57), CALL(NAME(LNode$dfs), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), PARAM(1), PARAM(2))) */
int32_t t3 = LNode$dfs(MEM((p0 + (2 * 4))), p1, p2);
t57 = t3;
/* CJUMP(EQ, TEMP(t57), CONST(1), L$$23, L$$22) */
if (t57 == 1) goto L$$23; else goto L$$22;
/* LABEL(L$$23) */
L$$23: ;
/* MOVE(TEMP(t25), CONST(1)) */
t25 = 1;
/* JUMP(NAME(L$$24), L$$24) */
goto L$$24;
/* LABEL(L$$22) */
L$$22: ;
/* MOVE(TEMP(t58), CALL(NAME(LNode$dfs), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), PARAM(1), PARAM(2))) */
int32_t t4 = LNode$dfs(MEM((p0 + (3 * 4))), p1, p2);
t58 = t4;
/* CJUMP(EQ, TEMP(t58), CONST(1), L$$26, L$$25) */
if (t58 == 1) goto L$$26; else goto L$$25;
/* LABEL(L$$26) */
L$$26: ;
/* MOVE(TEMP(t25), CONST(1)) */
t25 = 1;
/* JUMP(NAME(L$$27), L$$27) */
goto L$$27;
/* LABEL(L$$25) */
L$$25: ;
/* MOVE(TEMP(t25), CONST(0)) */
t25 = 0;
/* LABEL(L$$27) */
L$$27: ;
/* LABEL(L$$24) */
L$$24: ;
/* LABEL(L$$21) */
L$$21: ;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t26), TEMP(t25)) */
t26 = t25;
return t26;
}

int32_t LTest$newLabel (int32_t p0, int32_t p1) {
int32_t t27, t28, t29;
/* MOVE(TEMP(t28), CALL(NAME(L_halloc), CONST(4))) */
int32_t t0 = L_halloc(4);
t28 = t0;
/* MOVE(TEMP(t27), CALL(NAME(LLabel$init), TEMP(t28), PARAM(1))) */
int32_t t1 = LLabel$init(t28, p1);
t27 = t1;
/* MOVE(TEMP(t29), TEMP(t28)) */
t29 = t28;
return t29;
}

int32_t LTest$newNode (int32_t p0, int32_t p1) {
int32_t t30, t31, t32;
/* MOVE(TEMP(t31), CALL(NAME(L_halloc), CONST(16))) */
int32_t t0 = L_halloc(16);
t31 = t0;
/* MOVE(TEMP(t30), CALL(NAME(LNode$init), TEMP(t31), PARAM(1))) */
int32_t t1 = LNode$init(t31, p1);
t30 = t1;
/* MOVE(TEMP(t32), TEMP(t31)) */
t32 = t31;
return t32;
}

int32_t LTest$findPath (int32_t p0, int32_t p1, int32_t p2) {
int32_t t33, t34, t35, t36, t37, t38, t59, t60, t61, t62;
/* MOVE(TEMP(t33), CALL(NAME(LNode$print), PARAM(1))) */
int32_t t0 = LNode$print(p1);
t33 = t0;
/* MOVE(TEMP(t33), CALL(NAME(LNode$print), PARAM(2))) */
int32_t t1 = LNode$print(p2);
t33 = t1;
/* MOVE(TEMP(t60), PARAM(1)) */
t60 = p1;
/* MOVE(TEMP(t59), CALL(NAME(LNode$label), PARAM(2))) */
int32_t t2 = LNode$label(p2);
t59 = t2;
/* MOVE(TEMP(t34), CALL(NAME(LNode$dfs), TEMP(t60), CONST(1), TEMP(t59))) */
int32_t t3 = LNode$dfs(t60, 1, t59);
t34 = t3;
/* MOVE(TEMP(t62), PARAM(1)) */
t62 = p1;
/* MOVE(TEMP(t61), CALL(NAME(LNode$label), PARAM(2))) */
int32_t t4 = LNode$label(p2);
t61 = t4;
/* MOVE(TEMP(t35), CALL(NAME(LNode$dfs), TEMP(t62), CONST(0), TEMP(t61))) */
int32_t t5 = LNode$dfs(t62, 0, t61);
t35 = t5;
/* CJUMP(EQ, TEMP(t34), CONST(1), L$$29, L$$28) */
if (t34 == 1) goto L$$29; else goto L$$28;
/* LABEL(L$$29) */
L$$29: ;
/* MOVE(TEMP(t36), CALL(NAME(L_println_int), CONST(999))) */
int32_t t6 = L_println_int(999);
t36 = t6;
/* JUMP(NAME(L$$30), L$$30) */
goto L$$30;
/* LABEL(L$$28) */
L$$28: ;
/* MOVE(TEMP(t37), CALL(NAME(L_println_int), BINOP(MINUS, CONST(0), CONST(999)))) */
int32_t t7 = L_println_int((0 - 999));
t37 = t7;
/* LABEL(L$$30) */
L$$30: ;
/* MOVE(TEMP(t38), CONST(0)) */
t38 = 0;
return t38;
}

int32_t LTest$test (int32_t p0) {
int32_t t39, t42, t43, t44, t45, t46, t47, t48, t49, t50, t51, t52;
/* MOVE(TEMP(t42), CALL(NAME(LTest$newLabel), PARAM(0), CONST(1))) */
int32_t t0 = LTest$newLabel(p0, 1);
t42 = t0;
/* MOVE(TEMP(t43), CALL(NAME(LTest$newNode), PARAM(0), TEMP(t42))) */
int32_t t1 = LTest$newNode(p0, t42);
t43 = t1;
/* MOVE(TEMP(t44), CALL(NAME(LTest$newLabel), PARAM(0), CONST(2))) */
int32_t t2 = LTest$newLabel(p0, 2);
t44 = t2;
/* MOVE(TEMP(t45), CALL(NAME(LTest$newNode), PARAM(0), TEMP(t44))) */
int32_t t3 = LTest$newNode(p0, t44);
t45 = t3;
/* MOVE(TEMP(t46), CALL(NAME(LTest$newLabel), PARAM(0), CONST(3))) */
int32_t t4 = LTest$newLabel(p0, 3);
t46 = t4;
/* MOVE(TEMP(t47), CALL(NAME(LTest$newNode), PARAM(0), TEMP(t46))) */
int32_t t5 = LTest$newNode(p0, t46);
t47 = t5;
/* MOVE(TEMP(t48), CALL(NAME(LTest$newLabel), PARAM(0), CONST(4))) */
int32_t t6 = LTest$newLabel(p0, 4);
t48 = t6;
/* MOVE(TEMP(t49), CALL(NAME(LTest$newNode), PARAM(0), TEMP(t48))) */
int32_t t7 = LTest$newNode(p0, t48);
t49 = t7;
/* MOVE(TEMP(t50), CALL(NAME(LTest$newLabel), PARAM(0), CONST(5))) */
int32_t t8 = LTest$newLabel(p0, 5);
t50 = t8;
/* MOVE(TEMP(t51), CALL(NAME(LTest$newNode), PARAM(0), TEMP(t50))) */
int32_t t9 = LTest$newNode(p0, t50);
t51 = t9;
/* MOVE(TEMP(t39), CALL(NAME(LNode$setLeft), TEMP(t43), TEMP(t45))) */
int32_t t10 = LNode$setLeft(t43, t45);
t39 = t10;
/* MOVE(TEMP(t39), CALL(NAME(LNode$setRight), TEMP(t43), TEMP(t49))) */
int32_t t11 = LNode$setRight(t43, t49);
t39 = t11;
/* MOVE(TEMP(t39), CALL(NAME(LNode$setLeft), TEMP(t45), TEMP(t47))) */
int32_t t12 = LNode$setLeft(t45, t47);
t39 = t12;
/* MOVE(TEMP(t39), CALL(NAME(LNode$setLeft), TEMP(t47), TEMP(t43))) */
int32_t t13 = LNode$setLeft(t47, t43);
t39 = t13;
/* MOVE(TEMP(t39), CALL(NAME(LNode$setRight), TEMP(t47), TEMP(t49))) */
int32_t t14 = LNode$setRight(t47, t49);
t39 = t14;
/* MOVE(TEMP(t39), CALL(NAME(LTest$findPath), PARAM(0), TEMP(t43), TEMP(t49))) */
int32_t t15 = LTest$findPath(p0, t43, t49);
t39 = t15;
/* MOVE(TEMP(t39), CALL(NAME(LTest$findPath), PARAM(0), TEMP(t49), TEMP(t43))) */
int32_t t16 = LTest$findPath(p0, t49, t43);
t39 = t16;
/* MOVE(TEMP(t39), CALL(NAME(LTest$findPath), PARAM(0), TEMP(t47), TEMP(t45))) */
int32_t t17 = LTest$findPath(p0, t47, t45);
t39 = t17;
/* MOVE(TEMP(t39), CALL(NAME(LTest$findPath), PARAM(0), TEMP(t49), TEMP(t43))) */
int32_t t18 = LTest$findPath(p0, t49, t43);
t39 = t18;
/* MOVE(TEMP(t39), CALL(NAME(LTest$findPath), PARAM(0), TEMP(t47), TEMP(t45))) */
int32_t t19 = LTest$findPath(p0, t47, t45);
t39 = t19;
/* MOVE(TEMP(t39), CALL(NAME(LTest$findPath), PARAM(0), TEMP(t49), TEMP(t47))) */
int32_t t20 = LTest$findPath(p0, t49, t47);
t39 = t20;
/* MOVE(TEMP(t39), CALL(NAME(LTest$findPath), PARAM(0), TEMP(t51), TEMP(t51))) */
int32_t t21 = LTest$findPath(p0, t51, t51);
t39 = t21;
/* MOVE(TEMP(t39), CALL(NAME(LTest$findPath), PARAM(0), TEMP(t51), TEMP(t49))) */
int32_t t22 = LTest$findPath(p0, t51, t49);
t39 = t22;
/* MOVE(TEMP(t52), CONST(0)) */
t52 = 0;
return t52;
}

