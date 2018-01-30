#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LBS$Start (int32_t p0, int32_t p1) ;

int32_t LBS$Search (int32_t p0, int32_t p1) ;

int32_t LBS$Div (int32_t p0, int32_t p1) ;

int32_t LBS$Compare (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LBS$Print (int32_t p0) ;

int32_t LBS$Init (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t53, t54;
/* MOVE(TEMP(t53), CALL(NAME(L_halloc), CONST(8))) */
int32_t t2 = L_halloc(8);
t53 = t2;
/* MOVE(TEMP(t54), CALL(NAME(LBS$Start), TEMP(t53), CONST(20))) */
int32_t t3 = LBS$Start(t53, 20);
t54 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t54))) */
int32_t t4 = L_println_int(t54);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LBS$Start (int32_t p0, int32_t p1) {
int32_t t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t2, t20, t3, t4, t5, t55, t56, t57, t58, t59, t6, t60, t61, t62, t7, t8, t9;
/* MOVE(TEMP(t2), CALL(NAME(LBS$Init), PARAM(0), PARAM(1))) */
int32_t t0 = LBS$Init(p0, p1);
t2 = t0;
/* MOVE(TEMP(t3), CALL(NAME(LBS$Print), PARAM(0))) */
int32_t t1 = LBS$Print(p0);
t3 = t1;
/* MOVE(TEMP(t55), CALL(NAME(LBS$Search), PARAM(0), CONST(8))) */
int32_t t21 = LBS$Search(p0, 8);
t55 = t21;
/* CJUMP(EQ, TEMP(t55), CONST(1), L$$1, L$$0) */
if (t55 == 1) goto L$$1; else goto L$$0;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t4), CALL(NAME(L_println_int), CONST(1))) */
int32_t t22 = L_println_int(1);
t4 = t22;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t5), CALL(NAME(L_println_int), CONST(0))) */
int32_t t23 = L_println_int(0);
t5 = t23;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t56), CALL(NAME(LBS$Search), PARAM(0), CONST(19))) */
int32_t t24 = LBS$Search(p0, 19);
t56 = t24;
/* CJUMP(EQ, TEMP(t56), CONST(1), L$$4, L$$3) */
if (t56 == 1) goto L$$4; else goto L$$3;
/* LABEL(L$$4) */
L$$4: ;
/* MOVE(TEMP(t6), CALL(NAME(L_println_int), CONST(1))) */
int32_t t25 = L_println_int(1);
t6 = t25;
/* JUMP(NAME(L$$5), L$$5) */
goto L$$5;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t7), CALL(NAME(L_println_int), CONST(0))) */
int32_t t26 = L_println_int(0);
t7 = t26;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t57), CALL(NAME(LBS$Search), PARAM(0), CONST(20))) */
int32_t t27 = LBS$Search(p0, 20);
t57 = t27;
/* CJUMP(EQ, TEMP(t57), CONST(1), L$$7, L$$6) */
if (t57 == 1) goto L$$7; else goto L$$6;
/* LABEL(L$$7) */
L$$7: ;
/* MOVE(TEMP(t8), CALL(NAME(L_println_int), CONST(1))) */
int32_t t28 = L_println_int(1);
t8 = t28;
/* JUMP(NAME(L$$8), L$$8) */
goto L$$8;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t9), CALL(NAME(L_println_int), CONST(0))) */
int32_t t29 = L_println_int(0);
t9 = t29;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t58), CALL(NAME(LBS$Search), PARAM(0), CONST(21))) */
int32_t t30 = LBS$Search(p0, 21);
t58 = t30;
/* CJUMP(EQ, TEMP(t58), CONST(1), L$$10, L$$9) */
if (t58 == 1) goto L$$10; else goto L$$9;
/* LABEL(L$$10) */
L$$10: ;
/* MOVE(TEMP(t10), CALL(NAME(L_println_int), CONST(1))) */
int32_t t31 = L_println_int(1);
t10 = t31;
/* JUMP(NAME(L$$11), L$$11) */
goto L$$11;
/* LABEL(L$$9) */
L$$9: ;
/* MOVE(TEMP(t11), CALL(NAME(L_println_int), CONST(0))) */
int32_t t32 = L_println_int(0);
t11 = t32;
/* LABEL(L$$11) */
L$$11: ;
/* MOVE(TEMP(t59), CALL(NAME(LBS$Search), PARAM(0), CONST(37))) */
int32_t t33 = LBS$Search(p0, 37);
t59 = t33;
/* CJUMP(EQ, TEMP(t59), CONST(1), L$$13, L$$12) */
if (t59 == 1) goto L$$13; else goto L$$12;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t12), CALL(NAME(L_println_int), CONST(1))) */
int32_t t34 = L_println_int(1);
t12 = t34;
/* JUMP(NAME(L$$14), L$$14) */
goto L$$14;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(TEMP(t13), CALL(NAME(L_println_int), CONST(0))) */
int32_t t35 = L_println_int(0);
t13 = t35;
/* LABEL(L$$14) */
L$$14: ;
/* MOVE(TEMP(t60), CALL(NAME(LBS$Search), PARAM(0), CONST(38))) */
int32_t t36 = LBS$Search(p0, 38);
t60 = t36;
/* CJUMP(EQ, TEMP(t60), CONST(1), L$$16, L$$15) */
if (t60 == 1) goto L$$16; else goto L$$15;
/* LABEL(L$$16) */
L$$16: ;
/* MOVE(TEMP(t14), CALL(NAME(L_println_int), CONST(1))) */
int32_t t37 = L_println_int(1);
t14 = t37;
/* JUMP(NAME(L$$17), L$$17) */
goto L$$17;
/* LABEL(L$$15) */
L$$15: ;
/* MOVE(TEMP(t15), CALL(NAME(L_println_int), CONST(0))) */
int32_t t38 = L_println_int(0);
t15 = t38;
/* LABEL(L$$17) */
L$$17: ;
/* MOVE(TEMP(t61), CALL(NAME(LBS$Search), PARAM(0), CONST(39))) */
int32_t t39 = LBS$Search(p0, 39);
t61 = t39;
/* CJUMP(EQ, TEMP(t61), CONST(1), L$$19, L$$18) */
if (t61 == 1) goto L$$19; else goto L$$18;
/* LABEL(L$$19) */
L$$19: ;
/* MOVE(TEMP(t16), CALL(NAME(L_println_int), CONST(1))) */
int32_t t40 = L_println_int(1);
t16 = t40;
/* JUMP(NAME(L$$20), L$$20) */
goto L$$20;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t17), CALL(NAME(L_println_int), CONST(0))) */
int32_t t41 = L_println_int(0);
t17 = t41;
/* LABEL(L$$20) */
L$$20: ;
/* MOVE(TEMP(t62), CALL(NAME(LBS$Search), PARAM(0), CONST(50))) */
int32_t t42 = LBS$Search(p0, 50);
t62 = t42;
/* CJUMP(EQ, TEMP(t62), CONST(1), L$$22, L$$21) */
if (t62 == 1) goto L$$22; else goto L$$21;
/* LABEL(L$$22) */
L$$22: ;
/* MOVE(TEMP(t18), CALL(NAME(L_println_int), CONST(1))) */
int32_t t43 = L_println_int(1);
t18 = t43;
/* JUMP(NAME(L$$23), L$$23) */
goto L$$23;
/* LABEL(L$$21) */
L$$21: ;
/* MOVE(TEMP(t19), CALL(NAME(L_println_int), CONST(0))) */
int32_t t44 = L_println_int(0);
t19 = t44;
/* LABEL(L$$23) */
L$$23: ;
/* MOVE(TEMP(t20), CONST(999)) */
t20 = 999;
return t20;
}

int32_t LBS$Search (int32_t p0, int32_t p1) {
int32_t t21, t22, t23, t24, t25, t26, t27, t28, t29, t30, t63, t64;
/* MOVE(TEMP(t26), CONST(0)) */
t26 = 0;
/* MOVE(TEMP(t21), CONST(0)) */
t21 = 0;
/* MOVE(TEMP(t22), MEM(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))))) */
t22 = MEM(MEM((p0 + (0 * 4))));
/* MOVE(TEMP(t22), BINOP(MINUS, TEMP(t22), CONST(1))) */
t22 = (t22 - 1);
/* MOVE(TEMP(t23), CONST(0)) */
t23 = 0;
/* MOVE(TEMP(t24), CONST(1)) */
t24 = 1;
/* LABEL(L$$24) */
L$$24: ;
/* CJUMP(EQ, TEMP(t24), CONST(1), L$$26, L$$25) */
if (t24 == 1) goto L$$26; else goto L$$25;
/* LABEL(L$$26) */
L$$26: ;
/* MOVE(TEMP(t25), BINOP(PLUS, TEMP(t23), TEMP(t22))) */
t25 = (t23 + t22);
/* MOVE(TEMP(t25), CALL(NAME(LBS$Div), PARAM(0), TEMP(t25))) */
int32_t t0 = LBS$Div(p0, t25);
t25 = t0;
/* MOVE(TEMP(t26), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t25), CONST(1)))))) */
t26 = MEM((MEM((p0 + (0 * 4))) + (4 * (t25 + 1))));
/* MOVE(TEMP(t28), CONST(0)) */
t28 = 0;
/* CJUMP(LT, PARAM(1), TEMP(t26), L$$30, L$$31) */
if (p1 < t26) goto L$$30; else goto L$$31;
/* LABEL(L$$30) */
L$$30: ;
/* MOVE(TEMP(t28), CONST(1)) */
t28 = 1;
/* LABEL(L$$31) */
L$$31: ;
/* CJUMP(EQ, TEMP(t28), CONST(1), L$$28, L$$27) */
if (t28 == 1) goto L$$28; else goto L$$27;
/* LABEL(L$$28) */
L$$28: ;
/* MOVE(TEMP(t22), BINOP(MINUS, TEMP(t25), CONST(1))) */
t22 = (t25 - 1);
/* JUMP(NAME(L$$29), L$$29) */
goto L$$29;
/* LABEL(L$$27) */
L$$27: ;
/* MOVE(TEMP(t23), BINOP(PLUS, TEMP(t25), CONST(1))) */
t23 = (t25 + 1);
/* LABEL(L$$29) */
L$$29: ;
/* MOVE(TEMP(t63), CALL(NAME(LBS$Compare), PARAM(0), TEMP(t26), PARAM(1))) */
int32_t t1 = LBS$Compare(p0, t26, p1);
t63 = t1;
/* CJUMP(EQ, TEMP(t63), CONST(1), L$$33, L$$32) */
if (t63 == 1) goto L$$33; else goto L$$32;
/* LABEL(L$$33) */
L$$33: ;
/* MOVE(TEMP(t24), CONST(0)) */
t24 = 0;
/* JUMP(NAME(L$$34), L$$34) */
goto L$$34;
/* LABEL(L$$32) */
L$$32: ;
/* MOVE(TEMP(t24), CONST(1)) */
t24 = 1;
/* LABEL(L$$34) */
L$$34: ;
/* MOVE(TEMP(t29), CONST(0)) */
t29 = 0;
/* CJUMP(LT, TEMP(t22), TEMP(t23), L$$38, L$$39) */
if (t22 < t23) goto L$$38; else goto L$$39;
/* LABEL(L$$38) */
L$$38: ;
/* MOVE(TEMP(t29), CONST(1)) */
t29 = 1;
/* LABEL(L$$39) */
L$$39: ;
/* CJUMP(EQ, TEMP(t29), CONST(1), L$$36, L$$35) */
if (t29 == 1) goto L$$36; else goto L$$35;
/* LABEL(L$$36) */
L$$36: ;
/* MOVE(TEMP(t24), CONST(0)) */
t24 = 0;
/* JUMP(NAME(L$$37), L$$37) */
goto L$$37;
/* LABEL(L$$35) */
L$$35: ;
/* MOVE(TEMP(t27), CONST(0)) */
t27 = 0;
/* LABEL(L$$37) */
L$$37: ;
/* JUMP(NAME(L$$24), L$$24) */
goto L$$24;
/* LABEL(L$$25) */
L$$25: ;
/* MOVE(TEMP(t64), CALL(NAME(LBS$Compare), PARAM(0), TEMP(t26), PARAM(1))) */
int32_t t2 = LBS$Compare(p0, t26, p1);
t64 = t2;
/* CJUMP(EQ, TEMP(t64), CONST(1), L$$41, L$$40) */
if (t64 == 1) goto L$$41; else goto L$$40;
/* LABEL(L$$41) */
L$$41: ;
/* MOVE(TEMP(t21), CONST(1)) */
t21 = 1;
/* JUMP(NAME(L$$42), L$$42) */
goto L$$42;
/* LABEL(L$$40) */
L$$40: ;
/* MOVE(TEMP(t21), CONST(0)) */
t21 = 0;
/* LABEL(L$$42) */
L$$42: ;
/* MOVE(TEMP(t30), TEMP(t21)) */
t30 = t21;
return t30;
}

int32_t LBS$Div (int32_t p0, int32_t p1) {
int32_t t31, t32, t33, t34, t35;
/* MOVE(TEMP(t31), CONST(0)) */
t31 = 0;
/* MOVE(TEMP(t32), CONST(0)) */
t32 = 0;
/* MOVE(TEMP(t33), BINOP(MINUS, PARAM(1), CONST(1))) */
t33 = (p1 - 1);
/* LABEL(L$$43) */
L$$43: ;
/* MOVE(TEMP(t34), CONST(0)) */
t34 = 0;
/* CJUMP(LT, TEMP(t32), TEMP(t33), L$$46, L$$47) */
if (t32 < t33) goto L$$46; else goto L$$47;
/* LABEL(L$$46) */
L$$46: ;
/* MOVE(TEMP(t34), CONST(1)) */
t34 = 1;
/* LABEL(L$$47) */
L$$47: ;
/* CJUMP(EQ, TEMP(t34), CONST(1), L$$45, L$$44) */
if (t34 == 1) goto L$$45; else goto L$$44;
/* LABEL(L$$45) */
L$$45: ;
/* MOVE(TEMP(t31), BINOP(PLUS, TEMP(t31), CONST(1))) */
t31 = (t31 + 1);
/* MOVE(TEMP(t32), BINOP(PLUS, TEMP(t32), CONST(2))) */
t32 = (t32 + 2);
/* JUMP(NAME(L$$43), L$$43) */
goto L$$43;
/* LABEL(L$$44) */
L$$44: ;
/* MOVE(TEMP(t35), TEMP(t31)) */
t35 = t31;
return t35;
}

int32_t LBS$Compare (int32_t p0, int32_t p1, int32_t p2) {
int32_t t36, t37, t38, t39, t40;
/* MOVE(TEMP(t36), CONST(0)) */
t36 = 0;
/* MOVE(TEMP(t37), BINOP(PLUS, PARAM(2), CONST(1))) */
t37 = (p2 + 1);
/* MOVE(TEMP(t38), CONST(0)) */
t38 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$51, L$$52) */
if (p1 < p2) goto L$$51; else goto L$$52;
/* LABEL(L$$51) */
L$$51: ;
/* MOVE(TEMP(t38), CONST(1)) */
t38 = 1;
/* LABEL(L$$52) */
L$$52: ;
/* CJUMP(EQ, TEMP(t38), CONST(1), L$$49, L$$48) */
if (t38 == 1) goto L$$49; else goto L$$48;
/* LABEL(L$$49) */
L$$49: ;
/* MOVE(TEMP(t36), CONST(0)) */
t36 = 0;
/* JUMP(NAME(L$$50), L$$50) */
goto L$$50;
/* LABEL(L$$48) */
L$$48: ;
/* MOVE(TEMP(t39), CONST(0)) */
t39 = 0;
/* CJUMP(LT, PARAM(1), TEMP(t37), L$$56, L$$57) */
if (p1 < t37) goto L$$56; else goto L$$57;
/* LABEL(L$$56) */
L$$56: ;
/* MOVE(TEMP(t39), CONST(1)) */
t39 = 1;
/* LABEL(L$$57) */
L$$57: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t39)), CONST(1), L$$54, L$$53) */
if ((1 - t39) == 1) goto L$$54; else goto L$$53;
/* LABEL(L$$54) */
L$$54: ;
/* MOVE(TEMP(t36), CONST(0)) */
t36 = 0;
/* JUMP(NAME(L$$55), L$$55) */
goto L$$55;
/* LABEL(L$$53) */
L$$53: ;
/* MOVE(TEMP(t36), CONST(1)) */
t36 = 1;
/* LABEL(L$$55) */
L$$55: ;
/* LABEL(L$$50) */
L$$50: ;
/* MOVE(TEMP(t40), TEMP(t36)) */
t40 = t36;
return t40;
}

int32_t LBS$Print (int32_t p0) {
int32_t t41, t42, t43, t44, t45;
/* MOVE(TEMP(t41), CONST(1)) */
t41 = 1;
/* LABEL(L$$58) */
L$$58: ;
/* MOVE(TEMP(t42), CONST(0)) */
t42 = 0;
/* CJUMP(LT, TEMP(t41), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), L$$61, L$$62) */
if (t41 < MEM((p0 + (1 * 4)))) goto L$$61; else goto L$$62;
/* LABEL(L$$61) */
L$$61: ;
/* MOVE(TEMP(t42), CONST(1)) */
t42 = 1;
/* LABEL(L$$62) */
L$$62: ;
/* CJUMP(EQ, TEMP(t42), CONST(1), L$$60, L$$59) */
if (t42 == 1) goto L$$60; else goto L$$59;
/* LABEL(L$$60) */
L$$60: ;
/* MOVE(TEMP(t43), CALL(NAME(L_println_int), MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t41), CONST(1))))))) */
int32_t t0 = L_println_int(MEM((MEM((p0 + (0 * 4))) + (4 * (t41 + 1)))));
t43 = t0;
/* MOVE(TEMP(t41), BINOP(PLUS, TEMP(t41), CONST(1))) */
t41 = (t41 + 1);
/* JUMP(NAME(L$$58), L$$58) */
goto L$$58;
/* LABEL(L$$59) */
L$$59: ;
/* MOVE(TEMP(t44), CALL(NAME(L_println_int), CONST(99999))) */
int32_t t1 = L_println_int(99999);
t44 = t1;
/* MOVE(TEMP(t45), CONST(0)) */
t45 = 0;
return t45;
}

int32_t LBS$Init (int32_t p0, int32_t p1) {
int32_t t46, t47, t48, t49, t50, t51, t52, t65;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (1 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t65), BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))) */
t65 = (p0 + (0 * 4));
/* MOVE(TEMP(t50), CALL(NAME(L_halloc), BINOP(MUL, BINOP(PLUS, PARAM(1), CONST(1)), CONST(4)))) */
int32_t t1 = L_halloc(((p1 + 1) * 4));
t50 = t1;
/* MOVE(MEM(TEMP(t50)), PARAM(1)) */
int32_t t2 = t50;
MEM(t2) = p1;
/* MOVE(MEM(TEMP(t65)), TEMP(t50)) */
int32_t t3 = t65;
MEM(t3) = t50;
/* MOVE(TEMP(t46), CONST(1)) */
t46 = 1;
/* MOVE(TEMP(t47), BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), CONST(1))) */
t47 = (MEM((p0 + (1 * 4))) + 1);
/* LABEL(L$$63) */
L$$63: ;
/* MOVE(TEMP(t51), CONST(0)) */
t51 = 0;
/* CJUMP(LT, TEMP(t46), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), L$$66, L$$67) */
if (t46 < MEM((p0 + (1 * 4)))) goto L$$66; else goto L$$67;
/* LABEL(L$$66) */
L$$66: ;
/* MOVE(TEMP(t51), CONST(1)) */
t51 = 1;
/* LABEL(L$$67) */
L$$67: ;
/* CJUMP(EQ, TEMP(t51), CONST(1), L$$65, L$$64) */
if (t51 == 1) goto L$$65; else goto L$$64;
/* LABEL(L$$65) */
L$$65: ;
/* MOVE(TEMP(t49), BINOP(MUL, CONST(2), TEMP(t46))) */
t49 = (2 * t46);
/* MOVE(TEMP(t48), BINOP(MINUS, TEMP(t47), CONST(3))) */
t48 = (t47 - 3);
/* MOVE(MEM(BINOP(PLUS, MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), BINOP(MUL, CONST(4), BINOP(PLUS, TEMP(t46), CONST(1))))), BINOP(PLUS, TEMP(t49), TEMP(t48))) */
int32_t t4 = (MEM((p0 + (0 * 4))) + (4 * (t46 + 1)));
MEM(t4) = (t49 + t48);
/* MOVE(TEMP(t46), BINOP(PLUS, TEMP(t46), CONST(1))) */
t46 = (t46 + 1);
/* MOVE(TEMP(t47), BINOP(MINUS, TEMP(t47), CONST(1))) */
t47 = (t47 - 1);
/* JUMP(NAME(L$$63), L$$63) */
goto L$$63;
/* LABEL(L$$64) */
L$$64: ;
/* MOVE(TEMP(t52), CONST(0)) */
t52 = 0;
return t52;
}

