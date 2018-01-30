#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LElement$Init (int32_t p0, int32_t p1, int32_t p2, int32_t p3) ;

int32_t LElement$GetAge (int32_t p0) ;

int32_t LElement$GetSalary (int32_t p0) ;

int32_t LElement$GetMarried (int32_t p0) ;

int32_t LElement$Equal (int32_t p0, int32_t p1) ;

int32_t LElement$Compare (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LList$Init (int32_t p0) ;

int32_t LList$InitNew (int32_t p0, int32_t p1, int32_t p2, int32_t p3) ;

int32_t LList$Insert (int32_t p0, int32_t p1) ;

int32_t LList$SetNext (int32_t p0, int32_t p1) ;

int32_t LList$Delete (int32_t p0, int32_t p1) ;

int32_t LList$Search (int32_t p0, int32_t p1) ;

int32_t LList$GetEnd (int32_t p0) ;

int32_t LList$GetElem (int32_t p0) ;

int32_t LList$GetNext (int32_t p0) ;

int32_t LList$Print (int32_t p0) ;

int32_t LLL$Start (int32_t p0) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t67, t68;
/* MOVE(TEMP(t67), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t67 = t2;
/* MOVE(TEMP(t68), CALL(NAME(LLL$Start), TEMP(t67))) */
int32_t t3 = LLL$Start(t67);
t68 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t68))) */
int32_t t4 = L_println_int(t68);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LElement$Init (int32_t p0, int32_t p1, int32_t p2, int32_t p3) {
int32_t t2;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (0 * 4));
MEM(t0) = p1;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), PARAM(2)) */
int32_t t1 = (p0 + (1 * 4));
MEM(t1) = p2;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), PARAM(3)) */
int32_t t3 = (p0 + (2 * 4));
MEM(t3) = p3;
/* MOVE(TEMP(t2), CONST(1)) */
t2 = 1;
return t2;
}

int32_t LElement$GetAge (int32_t p0) {
int32_t t3;
/* MOVE(TEMP(t3), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t3 = MEM((p0 + (0 * 4)));
return t3;
}

int32_t LElement$GetSalary (int32_t p0) {
int32_t t4;
/* MOVE(TEMP(t4), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4))))) */
t4 = MEM((p0 + (1 * 4)));
return t4;
}

int32_t LElement$GetMarried (int32_t p0) {
int32_t t5;
/* MOVE(TEMP(t5), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4))))) */
t5 = MEM((p0 + (2 * 4)));
return t5;
}

int32_t LElement$Equal (int32_t p0, int32_t p1) {
int32_t t10, t6, t69, t7, t70, t71, t72, t8, t9;
/* MOVE(TEMP(t6), CONST(1)) */
t6 = 1;
/* MOVE(TEMP(t7), CALL(NAME(LElement$GetAge), PARAM(1))) */
int32_t t0 = LElement$GetAge(p1);
t7 = t0;
/* MOVE(TEMP(t69), CALL(NAME(LElement$Compare), PARAM(0), TEMP(t7), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))))) */
int32_t t1 = LElement$Compare(p0, t7, MEM((p0 + (0 * 4))));
t69 = t1;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t69)), CONST(1), L$$1, L$$0) */
if ((1 - t69) == 1) goto L$$1; else goto L$$0;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t8), CALL(NAME(LElement$GetSalary), PARAM(1))) */
int32_t t2 = LElement$GetSalary(p1);
t8 = t2;
/* MOVE(TEMP(t70), CALL(NAME(LElement$Compare), PARAM(0), TEMP(t8), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))))) */
int32_t t3 = LElement$Compare(p0, t8, MEM((p0 + (1 * 4))));
t70 = t3;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t70)), CONST(1), L$$4, L$$3) */
if ((1 - t70) == 1) goto L$$4; else goto L$$3;
/* LABEL(L$$4) */
L$$4: ;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* JUMP(NAME(L$$5), L$$5) */
goto L$$5;
/* LABEL(L$$3) */
L$$3: ;
/* CJUMP(EQ, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), CONST(1), L$$7, L$$6) */
if (MEM((p0 + (2 * 4))) == 1) goto L$$7; else goto L$$6;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t71), CALL(NAME(LElement$GetMarried), PARAM(1))) */
int32_t t4 = LElement$GetMarried(p1);
t71 = t4;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t71)), CONST(1), L$$10, L$$9) */
if ((1 - t71) == 1) goto L$$10; else goto L$$9;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* JUMP(NAME(L$$11), L$$11) */
goto L$$11;
/* LABEL(L$$9) */
L$$9: ;
/* MOVE(TEMP(t9), CONST(0)) */
t9 = 0;
/* LABEL(L$$11) */
L$$11: ;
/* JUMP(NAME(L$$8), L$$8) */
goto L$$8;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t72), CALL(NAME(LElement$GetMarried), PARAM(1))) */
int32_t t5 = LElement$GetMarried(p1);
t72 = t5;
/* CJUMP(EQ, TEMP(t72), CONST(1), L$$13, L$$12) */
if (t72 == 1) goto L$$13; else goto L$$12;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* JUMP(NAME(L$$14), L$$14) */
goto L$$14;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(TEMP(t9), CONST(0)) */
t9 = 0;
/* LABEL(L$$14) */
L$$14: ;
/* LABEL(L$$8) */
L$$8: ;
/* LABEL(L$$5) */
L$$5: ;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t10), TEMP(t6)) */
t10 = t6;
return t10;
}

int32_t LElement$Compare (int32_t p0, int32_t p1, int32_t p2) {
int32_t t11, t12, t13, t14, t15;
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
/* MOVE(TEMP(t12), BINOP(PLUS, PARAM(2), CONST(1))) */
t12 = (p2 + 1);
/* MOVE(TEMP(t13), CONST(0)) */
t13 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$18, L$$19) */
if (p1 < p2) goto L$$18; else goto L$$19;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t13), CONST(1)) */
t13 = 1;
/* LABEL(L$$19) */
L$$19: ;
/* CJUMP(EQ, TEMP(t13), CONST(1), L$$16, L$$15) */
if (t13 == 1) goto L$$16; else goto L$$15;
/* LABEL(L$$16) */
L$$16: ;
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
/* JUMP(NAME(L$$17), L$$17) */
goto L$$17;
/* LABEL(L$$15) */
L$$15: ;
/* MOVE(TEMP(t14), CONST(0)) */
t14 = 0;
/* CJUMP(LT, PARAM(1), TEMP(t12), L$$23, L$$24) */
if (p1 < t12) goto L$$23; else goto L$$24;
/* LABEL(L$$23) */
L$$23: ;
/* MOVE(TEMP(t14), CONST(1)) */
t14 = 1;
/* LABEL(L$$24) */
L$$24: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t14)), CONST(1), L$$21, L$$20) */
if ((1 - t14) == 1) goto L$$21; else goto L$$20;
/* LABEL(L$$21) */
L$$21: ;
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
/* JUMP(NAME(L$$22), L$$22) */
goto L$$22;
/* LABEL(L$$20) */
L$$20: ;
/* MOVE(TEMP(t11), CONST(1)) */
t11 = 1;
/* LABEL(L$$22) */
L$$22: ;
/* LABEL(L$$17) */
L$$17: ;
/* MOVE(TEMP(t15), TEMP(t11)) */
t15 = t11;
return t15;
}

int32_t LList$Init (int32_t p0) {
int32_t t16;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), CONST(1)) */
int32_t t0 = (p0 + (2 * 4));
MEM(t0) = 1;
/* MOVE(TEMP(t16), CONST(1)) */
t16 = 1;
return t16;
}

int32_t LList$InitNew (int32_t p0, int32_t p1, int32_t p2, int32_t p3) {
int32_t t17;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), PARAM(3)) */
int32_t t0 = (p0 + (2 * 4));
MEM(t0) = p3;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), PARAM(1)) */
int32_t t1 = (p0 + (0 * 4));
MEM(t1) = p1;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), PARAM(2)) */
int32_t t2 = (p0 + (1 * 4));
MEM(t2) = p2;
/* MOVE(TEMP(t17), CONST(1)) */
t17 = 1;
return t17;
}

int32_t LList$Insert (int32_t p0, int32_t p1) {
int32_t t18, t19, t20, t21;
/* MOVE(TEMP(t19), PARAM(0)) */
t19 = p0;
/* MOVE(TEMP(t20), CALL(NAME(L_halloc), CONST(12))) */
int32_t t0 = L_halloc(12);
t20 = t0;
/* MOVE(TEMP(t18), CALL(NAME(LList$InitNew), TEMP(t20), PARAM(1), TEMP(t19), CONST(0))) */
int32_t t1 = LList$InitNew(t20, p1, t19, 0);
t18 = t1;
/* MOVE(TEMP(t21), TEMP(t20)) */
t21 = t20;
return t21;
}

int32_t LList$SetNext (int32_t p0, int32_t p1) {
int32_t t22;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (1 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t22), CONST(1)) */
t22 = 1;
return t22;
}

int32_t LList$Delete (int32_t p0, int32_t p1) {
int32_t t23, t24, t25, t26, t27, t28, t29, t30, t31, t32, t33, t34, t35, t36, t37, t73, t74, t75;
/* MOVE(TEMP(t23), PARAM(0)) */
t23 = p0;
/* MOVE(TEMP(t24), CONST(0)) */
t24 = 0;
/* MOVE(TEMP(t30), BINOP(MINUS, CONST(0), CONST(1))) */
t30 = (0 - 1);
/* MOVE(TEMP(t26), PARAM(0)) */
t26 = p0;
/* MOVE(TEMP(t27), PARAM(0)) */
t27 = p0;
/* MOVE(TEMP(t28), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4))))) */
t28 = MEM((p0 + (2 * 4)));
/* MOVE(TEMP(t29), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t29 = MEM((p0 + (0 * 4)));
/* LABEL(L$$25) */
L$$25: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t28)), CONST(1), L$$28, L$$29) */
if ((1 - t28) == 1) goto L$$28; else goto L$$29;
/* LABEL(L$$28) */
L$$28: ;
/* MOVE(TEMP(t33), BINOP(MINUS, CONST(1), TEMP(t24))) */
t33 = (1 - t24);
/* MOVE(TEMP(t32), CONST(1)) */
t32 = 1;
/* JUMP(NAME(L$$30), L$$30) */
goto L$$30;
/* LABEL(L$$29) */
L$$29: ;
/* MOVE(TEMP(t33), CONST(0)) */
t33 = 0;
/* MOVE(TEMP(t32), CONST(0)) */
t32 = 0;
/* LABEL(L$$30) */
L$$30: ;
/* CJUMP(EQ, BINOP(AND, TEMP(t32), TEMP(t33)), CONST(1), L$$27, L$$26) */
if ((t32 & t33) == 1) goto L$$27; else goto L$$26;
/* LABEL(L$$27) */
L$$27: ;
/* MOVE(TEMP(t73), CALL(NAME(LElement$Equal), PARAM(1), TEMP(t29))) */
int32_t t0 = LElement$Equal(p1, t29);
t73 = t0;
/* CJUMP(EQ, TEMP(t73), CONST(1), L$$32, L$$31) */
if (t73 == 1) goto L$$32; else goto L$$31;
/* LABEL(L$$32) */
L$$32: ;
/* MOVE(TEMP(t24), CONST(1)) */
t24 = 1;
/* MOVE(TEMP(t34), CONST(0)) */
t34 = 0;
/* CJUMP(LT, TEMP(t30), CONST(0), L$$37, L$$38) */
if (t30 < 0) goto L$$37; else goto L$$38;
/* LABEL(L$$37) */
L$$37: ;
/* MOVE(TEMP(t34), CONST(1)) */
t34 = 1;
/* LABEL(L$$38) */
L$$38: ;
/* CJUMP(EQ, TEMP(t34), CONST(1), L$$35, L$$34) */
if (t34 == 1) goto L$$35; else goto L$$34;
/* LABEL(L$$35) */
L$$35: ;
/* MOVE(TEMP(t23), CALL(NAME(LList$GetNext), TEMP(t26))) */
int32_t t1 = LList$GetNext(t26);
t23 = t1;
/* JUMP(NAME(L$$36), L$$36) */
goto L$$36;
/* LABEL(L$$34) */
L$$34: ;
/* MOVE(TEMP(t35), CALL(NAME(L_println_int), BINOP(MINUS, CONST(0), CONST(555)))) */
int32_t t2 = L_println_int((0 - 555));
t35 = t2;
/* MOVE(TEMP(t75), TEMP(t27)) */
t75 = t27;
/* MOVE(TEMP(t74), CALL(NAME(LList$GetNext), TEMP(t26))) */
int32_t t3 = LList$GetNext(t26);
t74 = t3;
/* MOVE(TEMP(t25), CALL(NAME(LList$SetNext), TEMP(t75), TEMP(t74))) */
int32_t t4 = LList$SetNext(t75, t74);
t25 = t4;
/* MOVE(TEMP(t36), CALL(NAME(L_println_int), BINOP(MINUS, CONST(0), CONST(555)))) */
int32_t t5 = L_println_int((0 - 555));
t36 = t5;
/* LABEL(L$$36) */
L$$36: ;
/* JUMP(NAME(L$$33), L$$33) */
goto L$$33;
/* LABEL(L$$31) */
L$$31: ;
/* MOVE(TEMP(t31), CONST(0)) */
t31 = 0;
/* LABEL(L$$33) */
L$$33: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t24)), CONST(1), L$$40, L$$39) */
if ((1 - t24) == 1) goto L$$40; else goto L$$39;
/* LABEL(L$$40) */
L$$40: ;
/* MOVE(TEMP(t27), TEMP(t26)) */
t27 = t26;
/* MOVE(TEMP(t26), CALL(NAME(LList$GetNext), TEMP(t26))) */
int32_t t6 = LList$GetNext(t26);
t26 = t6;
/* MOVE(TEMP(t28), CALL(NAME(LList$GetEnd), TEMP(t26))) */
int32_t t7 = LList$GetEnd(t26);
t28 = t7;
/* MOVE(TEMP(t29), CALL(NAME(LList$GetElem), TEMP(t26))) */
int32_t t8 = LList$GetElem(t26);
t29 = t8;
/* MOVE(TEMP(t30), CONST(1)) */
t30 = 1;
/* JUMP(NAME(L$$41), L$$41) */
goto L$$41;
/* LABEL(L$$39) */
L$$39: ;
/* MOVE(TEMP(t31), CONST(0)) */
t31 = 0;
/* LABEL(L$$41) */
L$$41: ;
/* JUMP(NAME(L$$25), L$$25) */
goto L$$25;
/* LABEL(L$$26) */
L$$26: ;
/* MOVE(TEMP(t37), TEMP(t23)) */
t37 = t23;
return t37;
}

int32_t LList$Search (int32_t p0, int32_t p1) {
int32_t t38, t39, t40, t41, t42, t43, t76;
/* MOVE(TEMP(t38), CONST(0)) */
t38 = 0;
/* MOVE(TEMP(t39), PARAM(0)) */
t39 = p0;
/* MOVE(TEMP(t41), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4))))) */
t41 = MEM((p0 + (2 * 4)));
/* MOVE(TEMP(t40), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t40 = MEM((p0 + (0 * 4)));
/* LABEL(L$$42) */
L$$42: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t41)), CONST(1), L$$44, L$$43) */
if ((1 - t41) == 1) goto L$$44; else goto L$$43;
/* LABEL(L$$44) */
L$$44: ;
/* MOVE(TEMP(t76), CALL(NAME(LElement$Equal), PARAM(1), TEMP(t40))) */
int32_t t0 = LElement$Equal(p1, t40);
t76 = t0;
/* CJUMP(EQ, TEMP(t76), CONST(1), L$$46, L$$45) */
if (t76 == 1) goto L$$46; else goto L$$45;
/* LABEL(L$$46) */
L$$46: ;
/* MOVE(TEMP(t38), CONST(1)) */
t38 = 1;
/* JUMP(NAME(L$$47), L$$47) */
goto L$$47;
/* LABEL(L$$45) */
L$$45: ;
/* MOVE(TEMP(t42), CONST(0)) */
t42 = 0;
/* LABEL(L$$47) */
L$$47: ;
/* MOVE(TEMP(t39), CALL(NAME(LList$GetNext), TEMP(t39))) */
int32_t t1 = LList$GetNext(t39);
t39 = t1;
/* MOVE(TEMP(t41), CALL(NAME(LList$GetEnd), TEMP(t39))) */
int32_t t2 = LList$GetEnd(t39);
t41 = t2;
/* MOVE(TEMP(t40), CALL(NAME(LList$GetElem), TEMP(t39))) */
int32_t t3 = LList$GetElem(t39);
t40 = t3;
/* JUMP(NAME(L$$42), L$$42) */
goto L$$42;
/* LABEL(L$$43) */
L$$43: ;
/* MOVE(TEMP(t43), TEMP(t38)) */
t43 = t38;
return t43;
}

int32_t LList$GetEnd (int32_t p0) {
int32_t t44;
/* MOVE(TEMP(t44), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4))))) */
t44 = MEM((p0 + (2 * 4)));
return t44;
}

int32_t LList$GetElem (int32_t p0) {
int32_t t45;
/* MOVE(TEMP(t45), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t45 = MEM((p0 + (0 * 4)));
return t45;
}

int32_t LList$GetNext (int32_t p0) {
int32_t t46;
/* MOVE(TEMP(t46), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4))))) */
t46 = MEM((p0 + (1 * 4)));
return t46;
}

int32_t LList$Print (int32_t p0) {
int32_t t47, t48, t49, t50, t51, t77;
/* MOVE(TEMP(t47), PARAM(0)) */
t47 = p0;
/* MOVE(TEMP(t48), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4))))) */
t48 = MEM((p0 + (2 * 4)));
/* MOVE(TEMP(t49), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t49 = MEM((p0 + (0 * 4)));
/* LABEL(L$$48) */
L$$48: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t48)), CONST(1), L$$50, L$$49) */
if ((1 - t48) == 1) goto L$$50; else goto L$$49;
/* LABEL(L$$50) */
L$$50: ;
/* MOVE(TEMP(t77), CALL(NAME(LElement$GetAge), TEMP(t49))) */
int32_t t0 = LElement$GetAge(t49);
t77 = t0;
/* MOVE(TEMP(t50), CALL(NAME(L_println_int), TEMP(t77))) */
int32_t t1 = L_println_int(t77);
t50 = t1;
/* MOVE(TEMP(t47), CALL(NAME(LList$GetNext), TEMP(t47))) */
int32_t t2 = LList$GetNext(t47);
t47 = t2;
/* MOVE(TEMP(t48), CALL(NAME(LList$GetEnd), TEMP(t47))) */
int32_t t3 = LList$GetEnd(t47);
t48 = t3;
/* MOVE(TEMP(t49), CALL(NAME(LList$GetElem), TEMP(t47))) */
int32_t t4 = LList$GetElem(t47);
t49 = t4;
/* JUMP(NAME(L$$48), L$$48) */
goto L$$48;
/* LABEL(L$$49) */
L$$49: ;
/* MOVE(TEMP(t51), CONST(1)) */
t51 = 1;
return t51;
}

int32_t LLL$Start (int32_t p0) {
int32_t t52, t53, t54, t55, t56, t57, t58, t59, t60, t61, t62, t63, t64, t65, t66, t78, t79;
/* MOVE(TEMP(t53), CALL(NAME(L_halloc), CONST(12))) */
int32_t t0 = L_halloc(12);
t53 = t0;
/* MOVE(TEMP(t54), CALL(NAME(LList$Init), TEMP(t53))) */
int32_t t1 = LList$Init(t53);
t54 = t1;
/* MOVE(TEMP(t52), TEMP(t53)) */
t52 = t53;
/* MOVE(TEMP(t54), CALL(NAME(LList$Init), TEMP(t52))) */
int32_t t2 = LList$Init(t52);
t54 = t2;
/* MOVE(TEMP(t54), CALL(NAME(LList$Print), TEMP(t52))) */
int32_t t3 = LList$Print(t52);
t54 = t3;
/* MOVE(TEMP(t55), CALL(NAME(L_halloc), CONST(12))) */
int32_t t4 = L_halloc(12);
t55 = t4;
/* MOVE(TEMP(t54), CALL(NAME(LElement$Init), TEMP(t55), CONST(25), CONST(37000), CONST(0))) */
int32_t t5 = LElement$Init(t55, 25, 37000, 0);
t54 = t5;
/* MOVE(TEMP(t52), CALL(NAME(LList$Insert), TEMP(t52), TEMP(t55))) */
int32_t t6 = LList$Insert(t52, t55);
t52 = t6;
/* MOVE(TEMP(t54), CALL(NAME(LList$Print), TEMP(t52))) */
int32_t t7 = LList$Print(t52);
t54 = t7;
/* MOVE(TEMP(t58), CALL(NAME(L_println_int), CONST(10000000))) */
int32_t t8 = L_println_int(10000000);
t58 = t8;
/* MOVE(TEMP(t55), CALL(NAME(L_halloc), CONST(12))) */
int32_t t9 = L_halloc(12);
t55 = t9;
/* MOVE(TEMP(t54), CALL(NAME(LElement$Init), TEMP(t55), CONST(39), CONST(42000), CONST(1))) */
int32_t t10 = LElement$Init(t55, 39, 42000, 1);
t54 = t10;
/* MOVE(TEMP(t56), TEMP(t55)) */
t56 = t55;
/* MOVE(TEMP(t52), CALL(NAME(LList$Insert), TEMP(t52), TEMP(t55))) */
int32_t t11 = LList$Insert(t52, t55);
t52 = t11;
/* MOVE(TEMP(t54), CALL(NAME(LList$Print), TEMP(t52))) */
int32_t t12 = LList$Print(t52);
t54 = t12;
/* MOVE(TEMP(t59), CALL(NAME(L_println_int), CONST(10000000))) */
int32_t t13 = L_println_int(10000000);
t59 = t13;
/* MOVE(TEMP(t55), CALL(NAME(L_halloc), CONST(12))) */
int32_t t14 = L_halloc(12);
t55 = t14;
/* MOVE(TEMP(t54), CALL(NAME(LElement$Init), TEMP(t55), CONST(22), CONST(34000), CONST(0))) */
int32_t t15 = LElement$Init(t55, 22, 34000, 0);
t54 = t15;
/* MOVE(TEMP(t52), CALL(NAME(LList$Insert), TEMP(t52), TEMP(t55))) */
int32_t t16 = LList$Insert(t52, t55);
t52 = t16;
/* MOVE(TEMP(t54), CALL(NAME(LList$Print), TEMP(t52))) */
int32_t t17 = LList$Print(t52);
t54 = t17;
/* MOVE(TEMP(t57), CALL(NAME(L_halloc), CONST(12))) */
int32_t t18 = L_halloc(12);
t57 = t18;
/* MOVE(TEMP(t54), CALL(NAME(LElement$Init), TEMP(t57), CONST(27), CONST(34000), CONST(0))) */
int32_t t19 = LElement$Init(t57, 27, 34000, 0);
t54 = t19;
/* MOVE(TEMP(t78), CALL(NAME(LList$Search), TEMP(t52), TEMP(t56))) */
int32_t t20 = LList$Search(t52, t56);
t78 = t20;
/* MOVE(TEMP(t60), CALL(NAME(L_println_int), TEMP(t78))) */
int32_t t21 = L_println_int(t78);
t60 = t21;
/* MOVE(TEMP(t79), CALL(NAME(LList$Search), TEMP(t52), TEMP(t57))) */
int32_t t22 = LList$Search(t52, t57);
t79 = t22;
/* MOVE(TEMP(t61), CALL(NAME(L_println_int), TEMP(t79))) */
int32_t t23 = L_println_int(t79);
t61 = t23;
/* MOVE(TEMP(t62), CALL(NAME(L_println_int), CONST(10000000))) */
int32_t t24 = L_println_int(10000000);
t62 = t24;
/* MOVE(TEMP(t55), CALL(NAME(L_halloc), CONST(12))) */
int32_t t25 = L_halloc(12);
t55 = t25;
/* MOVE(TEMP(t54), CALL(NAME(LElement$Init), TEMP(t55), CONST(28), CONST(35000), CONST(0))) */
int32_t t26 = LElement$Init(t55, 28, 35000, 0);
t54 = t26;
/* MOVE(TEMP(t52), CALL(NAME(LList$Insert), TEMP(t52), TEMP(t55))) */
int32_t t27 = LList$Insert(t52, t55);
t52 = t27;
/* MOVE(TEMP(t54), CALL(NAME(LList$Print), TEMP(t52))) */
int32_t t28 = LList$Print(t52);
t54 = t28;
/* MOVE(TEMP(t63), CALL(NAME(L_println_int), CONST(2220000))) */
int32_t t29 = L_println_int(2220000);
t63 = t29;
/* MOVE(TEMP(t52), CALL(NAME(LList$Delete), TEMP(t52), TEMP(t56))) */
int32_t t30 = LList$Delete(t52, t56);
t52 = t30;
/* MOVE(TEMP(t54), CALL(NAME(LList$Print), TEMP(t52))) */
int32_t t31 = LList$Print(t52);
t54 = t31;
/* MOVE(TEMP(t64), CALL(NAME(L_println_int), CONST(33300000))) */
int32_t t32 = L_println_int(33300000);
t64 = t32;
/* MOVE(TEMP(t52), CALL(NAME(LList$Delete), TEMP(t52), TEMP(t55))) */
int32_t t33 = LList$Delete(t52, t55);
t52 = t33;
/* MOVE(TEMP(t54), CALL(NAME(LList$Print), TEMP(t52))) */
int32_t t34 = LList$Print(t52);
t54 = t34;
/* MOVE(TEMP(t65), CALL(NAME(L_println_int), CONST(44440000))) */
int32_t t35 = L_println_int(44440000);
t65 = t35;
/* MOVE(TEMP(t66), CONST(0)) */
t66 = 0;
return t66;
}

