#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LPrime$or (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LPrime$divides (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LPrime$isprime (int32_t p0, int32_t p1) ;

int32_t LPrime$b2i (int32_t p0, int32_t p1) ;

int32_t LPrime$test_it (int32_t p0, int32_t p1, int32_t p2, int32_t p3, int32_t p4, int32_t p5, int32_t p6, int32_t p7) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t47, t48;
/* MOVE(TEMP(t47), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t47 = t2;
/* MOVE(TEMP(t48), CALL(NAME(LPrime$test_it), TEMP(t47), CONST(1), CONST(2), CONST(3), CONST(4), CONST(5), CONST(10), CONST(89))) */
int32_t t3 = LPrime$test_it(t47, 1, 2, 3, 4, 5, 10, 89);
t48 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t48))) */
int32_t t4 = L_println_int(t48);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LPrime$or (int32_t p0, int32_t p1, int32_t p2) {
int32_t t2, t3, t4;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), PARAM(1)), CONST(1), L$$0, L$$1) */
if ((1 - p1) == 1) goto L$$0; else goto L$$1;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t4), BINOP(MINUS, CONST(1), PARAM(2))) */
t4 = (1 - p2);
/* MOVE(TEMP(t3), CONST(1)) */
t3 = 1;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t4), CONST(0)) */
t4 = 0;
/* MOVE(TEMP(t3), CONST(0)) */
t3 = 0;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t2), BINOP(MINUS, CONST(1), BINOP(AND, TEMP(t3), TEMP(t4)))) */
t2 = (1 - (t3 & t4));
return t2;
}

int32_t LPrime$divides (int32_t p0, int32_t p1, int32_t p2) {
int32_t t10, t11, t12, t5, t6, t7, t8, t9;
/* MOVE(TEMP(t5), CONST(1)) */
t5 = 1;
/* MOVE(TEMP(t6), CONST(0)) */
t6 = 0;
/* LABEL(L$$3) */
L$$3: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t6)), CONST(1), L$$6, L$$7) */
if ((1 - t6) == 1) goto L$$6; else goto L$$7;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t9), CONST(0)) */
t9 = 0;
/* CJUMP(LT, TEMP(t5), PARAM(2), L$$9, L$$10) */
if (t5 < p2) goto L$$9; else goto L$$10;
/* LABEL(L$$9) */
L$$9: ;
/* MOVE(TEMP(t9), CONST(1)) */
t9 = 1;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t8), TEMP(t9)) */
t8 = t9;
/* MOVE(TEMP(t7), CONST(1)) */
t7 = 1;
/* JUMP(NAME(L$$8), L$$8) */
goto L$$8;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t8), CONST(0)) */
t8 = 0;
/* MOVE(TEMP(t7), CONST(0)) */
t7 = 0;
/* LABEL(L$$8) */
L$$8: ;
/* CJUMP(EQ, BINOP(AND, TEMP(t7), TEMP(t8)), CONST(1), L$$5, L$$4) */
if ((t7 & t8) == 1) goto L$$5; else goto L$$4;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t10), CONST(0)) */
t10 = 0;
/* CJUMP(LT, BINOP(MUL, TEMP(t5), PARAM(1)), PARAM(2), L$$14, L$$15) */
if ((t5 * p1) < p2) goto L$$14; else goto L$$15;
/* LABEL(L$$14) */
L$$14: ;
/* MOVE(TEMP(t10), CONST(1)) */
t10 = 1;
/* LABEL(L$$15) */
L$$15: ;
/* CJUMP(EQ, TEMP(t10), CONST(1), L$$12, L$$11) */
if (t10 == 1) goto L$$12; else goto L$$11;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(TEMP(t5), BINOP(PLUS, TEMP(t5), CONST(1))) */
t5 = (t5 + 1);
/* JUMP(NAME(L$$13), L$$13) */
goto L$$13;
/* LABEL(L$$11) */
L$$11: ;
/* MOVE(TEMP(t11), CONST(0)) */
t11 = 0;
/* CJUMP(LT, PARAM(2), BINOP(MUL, TEMP(t5), PARAM(1)), L$$19, L$$20) */
if (p2 < (t5 * p1)) goto L$$19; else goto L$$20;
/* LABEL(L$$19) */
L$$19: ;
/* MOVE(TEMP(t11), CONST(1)) */
t11 = 1;
/* LABEL(L$$20) */
L$$20: ;
/* CJUMP(EQ, TEMP(t11), CONST(1), L$$17, L$$16) */
if (t11 == 1) goto L$$17; else goto L$$16;
/* LABEL(L$$17) */
L$$17: ;
/* MOVE(TEMP(t5), PARAM(2)) */
t5 = p2;
/* JUMP(NAME(L$$18), L$$18) */
goto L$$18;
/* LABEL(L$$16) */
L$$16: ;
/* MOVE(TEMP(t6), CONST(1)) */
t6 = 1;
/* LABEL(L$$18) */
L$$18: ;
/* LABEL(L$$13) */
L$$13: ;
/* JUMP(NAME(L$$3), L$$3) */
goto L$$3;
/* LABEL(L$$4) */
L$$4: ;
/* MOVE(TEMP(t12), TEMP(t6)) */
t12 = t6;
return t12;
}

int32_t LPrime$isprime (int32_t p0, int32_t p1) {
int32_t t13, t14, t15, t16, t17, t18, t19, t20, t21, t22, t23, t24, t25, t26, t27, t49, t50, t51, t52;
/* MOVE(TEMP(t51), PARAM(0)) */
t51 = p0;
/* MOVE(TEMP(t17), CONST(0)) */
t17 = 0;
/* CJUMP(LT, CONST(1), PARAM(1), L$$24, L$$25) */
if (1 < p1) goto L$$24; else goto L$$25;
/* LABEL(L$$24) */
L$$24: ;
/* MOVE(TEMP(t17), CONST(1)) */
t17 = 1;
/* LABEL(L$$25) */
L$$25: ;
/* CJUMP(EQ, TEMP(t17), CONST(1), L$$21, L$$22) */
if (t17 == 1) goto L$$21; else goto L$$22;
/* LABEL(L$$21) */
L$$21: ;
/* MOVE(TEMP(t18), CONST(0)) */
t18 = 0;
/* CJUMP(LT, PARAM(1), CONST(3), L$$26, L$$27) */
if (p1 < 3) goto L$$26; else goto L$$27;
/* LABEL(L$$26) */
L$$26: ;
/* MOVE(TEMP(t18), CONST(1)) */
t18 = 1;
/* LABEL(L$$27) */
L$$27: ;
/* MOVE(TEMP(t16), TEMP(t18)) */
t16 = t18;
/* MOVE(TEMP(t15), CONST(1)) */
t15 = 1;
/* JUMP(NAME(L$$23), L$$23) */
goto L$$23;
/* LABEL(L$$22) */
L$$22: ;
/* MOVE(TEMP(t16), CONST(0)) */
t16 = 0;
/* MOVE(TEMP(t15), CONST(0)) */
t15 = 0;
/* LABEL(L$$23) */
L$$23: ;
/* MOVE(TEMP(t50), BINOP(AND, TEMP(t15), TEMP(t16))) */
t50 = (t15 & t16);
/* MOVE(TEMP(t21), CONST(0)) */
t21 = 0;
/* CJUMP(LT, CONST(2), PARAM(1), L$$31, L$$32) */
if (2 < p1) goto L$$31; else goto L$$32;
/* LABEL(L$$31) */
L$$31: ;
/* MOVE(TEMP(t21), CONST(1)) */
t21 = 1;
/* LABEL(L$$32) */
L$$32: ;
/* CJUMP(EQ, TEMP(t21), CONST(1), L$$28, L$$29) */
if (t21 == 1) goto L$$28; else goto L$$29;
/* LABEL(L$$28) */
L$$28: ;
/* MOVE(TEMP(t49), CALL(NAME(LPrime$divides), PARAM(0), CONST(2), PARAM(1))) */
int32_t t0 = LPrime$divides(p0, 2, p1);
t49 = t0;
/* MOVE(TEMP(t20), BINOP(MINUS, CONST(1), TEMP(t49))) */
t20 = (1 - t49);
/* MOVE(TEMP(t19), CONST(1)) */
t19 = 1;
/* JUMP(NAME(L$$30), L$$30) */
goto L$$30;
/* LABEL(L$$29) */
L$$29: ;
/* MOVE(TEMP(t20), CONST(0)) */
t20 = 0;
/* MOVE(TEMP(t19), CONST(0)) */
t19 = 0;
/* LABEL(L$$30) */
L$$30: ;
/* MOVE(TEMP(t14), CALL(NAME(LPrime$or), TEMP(t51), TEMP(t50), BINOP(AND, TEMP(t19), TEMP(t20)))) */
int32_t t1 = LPrime$or(t51, t50, (t19 & t20));
t14 = t1;
/* MOVE(TEMP(t13), CONST(3)) */
t13 = 3;
/* LABEL(L$$33) */
L$$33: ;
/* CJUMP(EQ, TEMP(t14), CONST(1), L$$36, L$$37) */
if (t14 == 1) goto L$$36; else goto L$$37;
/* LABEL(L$$36) */
L$$36: ;
/* MOVE(TEMP(t24), CONST(0)) */
t24 = 0;
/* CJUMP(LT, TEMP(t13), PARAM(1), L$$39, L$$40) */
if (t13 < p1) goto L$$39; else goto L$$40;
/* LABEL(L$$39) */
L$$39: ;
/* MOVE(TEMP(t24), CONST(1)) */
t24 = 1;
/* LABEL(L$$40) */
L$$40: ;
/* MOVE(TEMP(t23), TEMP(t24)) */
t23 = t24;
/* MOVE(TEMP(t22), CONST(1)) */
t22 = 1;
/* JUMP(NAME(L$$38), L$$38) */
goto L$$38;
/* LABEL(L$$37) */
L$$37: ;
/* MOVE(TEMP(t23), CONST(0)) */
t23 = 0;
/* MOVE(TEMP(t22), CONST(0)) */
t22 = 0;
/* LABEL(L$$38) */
L$$38: ;
/* CJUMP(EQ, BINOP(AND, TEMP(t22), TEMP(t23)), CONST(1), L$$35, L$$34) */
if ((t22 & t23) == 1) goto L$$35; else goto L$$34;
/* LABEL(L$$35) */
L$$35: ;
/* CJUMP(EQ, TEMP(t14), CONST(1), L$$41, L$$42) */
if (t14 == 1) goto L$$41; else goto L$$42;
/* LABEL(L$$41) */
L$$41: ;
/* MOVE(TEMP(t52), CALL(NAME(LPrime$divides), PARAM(0), TEMP(t13), PARAM(1))) */
int32_t t2 = LPrime$divides(p0, t13, p1);
t52 = t2;
/* MOVE(TEMP(t26), BINOP(MINUS, CONST(1), TEMP(t52))) */
t26 = (1 - t52);
/* MOVE(TEMP(t25), CONST(1)) */
t25 = 1;
/* JUMP(NAME(L$$43), L$$43) */
goto L$$43;
/* LABEL(L$$42) */
L$$42: ;
/* MOVE(TEMP(t26), CONST(0)) */
t26 = 0;
/* MOVE(TEMP(t25), CONST(0)) */
t25 = 0;
/* LABEL(L$$43) */
L$$43: ;
/* MOVE(TEMP(t14), BINOP(AND, TEMP(t25), TEMP(t26))) */
t14 = (t25 & t26);
/* MOVE(TEMP(t13), BINOP(PLUS, TEMP(t13), CONST(2))) */
t13 = (t13 + 2);
/* JUMP(NAME(L$$33), L$$33) */
goto L$$33;
/* LABEL(L$$34) */
L$$34: ;
/* MOVE(TEMP(t27), TEMP(t14)) */
t27 = t14;
return t27;
}

int32_t LPrime$b2i (int32_t p0, int32_t p1) {
int32_t t28, t29;
/* CJUMP(EQ, PARAM(1), CONST(1), L$$45, L$$44) */
if (p1 == 1) goto L$$45; else goto L$$44;
/* LABEL(L$$45) */
L$$45: ;
/* MOVE(TEMP(t28), CONST(1)) */
t28 = 1;
/* JUMP(NAME(L$$46), L$$46) */
goto L$$46;
/* LABEL(L$$44) */
L$$44: ;
/* MOVE(TEMP(t28), CONST(0)) */
t28 = 0;
/* LABEL(L$$46) */
L$$46: ;
/* MOVE(TEMP(t29), TEMP(t28)) */
t29 = t28;
return t29;
}

int32_t LPrime$test_it (int32_t p0, int32_t p1, int32_t p2, int32_t p3, int32_t p4, int32_t p5, int32_t p6, int32_t p7) {
int32_t t30, t31, t32, t33, t34, t35, t36, t37, t38, t39, t40, t41, t42, t43, t44, t45, t46, t53, t54, t55, t56, t57, t58, t59;
/* MOVE(TEMP(t30), PARAM(1)) */
t30 = p1;
/* MOVE(TEMP(t32), CALL(NAME(L_println_int), TEMP(t30))) */
int32_t t0 = L_println_int(t30);
t32 = t0;
/* MOVE(TEMP(t31), CALL(NAME(LPrime$isprime), PARAM(0), TEMP(t30))) */
int32_t t1 = LPrime$isprime(p0, t30);
t31 = t1;
/* MOVE(TEMP(t53), CALL(NAME(LPrime$b2i), PARAM(0), TEMP(t31))) */
int32_t t2 = LPrime$b2i(p0, t31);
t53 = t2;
/* MOVE(TEMP(t33), CALL(NAME(L_println_int), TEMP(t53))) */
int32_t t3 = L_println_int(t53);
t33 = t3;
/* MOVE(TEMP(t30), PARAM(2)) */
t30 = p2;
/* MOVE(TEMP(t34), CALL(NAME(L_println_int), TEMP(t30))) */
int32_t t4 = L_println_int(t30);
t34 = t4;
/* MOVE(TEMP(t31), CALL(NAME(LPrime$isprime), PARAM(0), TEMP(t30))) */
int32_t t5 = LPrime$isprime(p0, t30);
t31 = t5;
/* MOVE(TEMP(t54), CALL(NAME(LPrime$b2i), PARAM(0), TEMP(t31))) */
int32_t t6 = LPrime$b2i(p0, t31);
t54 = t6;
/* MOVE(TEMP(t35), CALL(NAME(L_println_int), TEMP(t54))) */
int32_t t7 = L_println_int(t54);
t35 = t7;
/* MOVE(TEMP(t30), PARAM(3)) */
t30 = p3;
/* MOVE(TEMP(t36), CALL(NAME(L_println_int), TEMP(t30))) */
int32_t t8 = L_println_int(t30);
t36 = t8;
/* MOVE(TEMP(t31), CALL(NAME(LPrime$isprime), PARAM(0), TEMP(t30))) */
int32_t t9 = LPrime$isprime(p0, t30);
t31 = t9;
/* MOVE(TEMP(t55), CALL(NAME(LPrime$b2i), PARAM(0), TEMP(t31))) */
int32_t t10 = LPrime$b2i(p0, t31);
t55 = t10;
/* MOVE(TEMP(t37), CALL(NAME(L_println_int), TEMP(t55))) */
int32_t t11 = L_println_int(t55);
t37 = t11;
/* MOVE(TEMP(t30), PARAM(4)) */
t30 = p4;
/* MOVE(TEMP(t38), CALL(NAME(L_println_int), TEMP(t30))) */
int32_t t12 = L_println_int(t30);
t38 = t12;
/* MOVE(TEMP(t31), CALL(NAME(LPrime$isprime), PARAM(0), TEMP(t30))) */
int32_t t13 = LPrime$isprime(p0, t30);
t31 = t13;
/* MOVE(TEMP(t56), CALL(NAME(LPrime$b2i), PARAM(0), TEMP(t31))) */
int32_t t14 = LPrime$b2i(p0, t31);
t56 = t14;
/* MOVE(TEMP(t39), CALL(NAME(L_println_int), TEMP(t56))) */
int32_t t15 = L_println_int(t56);
t39 = t15;
/* MOVE(TEMP(t30), PARAM(5)) */
t30 = p5;
/* MOVE(TEMP(t40), CALL(NAME(L_println_int), TEMP(t30))) */
int32_t t16 = L_println_int(t30);
t40 = t16;
/* MOVE(TEMP(t31), CALL(NAME(LPrime$isprime), PARAM(0), TEMP(t30))) */
int32_t t17 = LPrime$isprime(p0, t30);
t31 = t17;
/* MOVE(TEMP(t57), CALL(NAME(LPrime$b2i), PARAM(0), TEMP(t31))) */
int32_t t18 = LPrime$b2i(p0, t31);
t57 = t18;
/* MOVE(TEMP(t41), CALL(NAME(L_println_int), TEMP(t57))) */
int32_t t19 = L_println_int(t57);
t41 = t19;
/* MOVE(TEMP(t30), PARAM(6)) */
t30 = p6;
/* MOVE(TEMP(t42), CALL(NAME(L_println_int), TEMP(t30))) */
int32_t t20 = L_println_int(t30);
t42 = t20;
/* MOVE(TEMP(t31), CALL(NAME(LPrime$isprime), PARAM(0), TEMP(t30))) */
int32_t t21 = LPrime$isprime(p0, t30);
t31 = t21;
/* MOVE(TEMP(t58), CALL(NAME(LPrime$b2i), PARAM(0), TEMP(t31))) */
int32_t t22 = LPrime$b2i(p0, t31);
t58 = t22;
/* MOVE(TEMP(t43), CALL(NAME(L_println_int), TEMP(t58))) */
int32_t t23 = L_println_int(t58);
t43 = t23;
/* MOVE(TEMP(t30), PARAM(7)) */
t30 = p7;
/* MOVE(TEMP(t44), CALL(NAME(L_println_int), TEMP(t30))) */
int32_t t24 = L_println_int(t30);
t44 = t24;
/* MOVE(TEMP(t31), CALL(NAME(LPrime$isprime), PARAM(0), TEMP(t30))) */
int32_t t25 = LPrime$isprime(p0, t30);
t31 = t25;
/* MOVE(TEMP(t59), CALL(NAME(LPrime$b2i), PARAM(0), TEMP(t31))) */
int32_t t26 = LPrime$b2i(p0, t31);
t59 = t26;
/* MOVE(TEMP(t45), CALL(NAME(L_println_int), TEMP(t59))) */
int32_t t27 = L_println_int(t59);
t45 = t27;
/* MOVE(TEMP(t46), CONST(999)) */
t46 = 999;
return t46;
}

