#include <stdint.h>
#define MEM(x) *((int32_t*)(x))

int32_t L_halloc(int32_t size);
int32_t L_println_int(int32_t n);
int32_t L_write(int32_t n);
int32_t L_read();
int32_t L_raise(int32_t rc);
int32_t Lmain (int32_t p0, int32_t p1) ;

int32_t LBT$Start (int32_t p0) ;

int32_t LTree$Init (int32_t p0, int32_t p1) ;

int32_t LTree$SetRight (int32_t p0, int32_t p1) ;

int32_t LTree$SetLeft (int32_t p0, int32_t p1) ;

int32_t LTree$GetRight (int32_t p0) ;

int32_t LTree$GetLeft (int32_t p0) ;

int32_t LTree$GetKey (int32_t p0) ;

int32_t LTree$SetKey (int32_t p0, int32_t p1) ;

int32_t LTree$GetHas_Right (int32_t p0) ;

int32_t LTree$GetHas_Left (int32_t p0) ;

int32_t LTree$SetHas_Left (int32_t p0, int32_t p1) ;

int32_t LTree$SetHas_Right (int32_t p0, int32_t p1) ;

int32_t LTree$Compare (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LTree$Insert (int32_t p0, int32_t p1) ;

int32_t LTree$Delete (int32_t p0, int32_t p1) ;

int32_t LTree$Remove (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LTree$RemoveRight (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LTree$RemoveLeft (int32_t p0, int32_t p1, int32_t p2) ;

int32_t LTree$Search (int32_t p0, int32_t p1) ;

int32_t LTree$Print (int32_t p0) ;

int32_t LTree$RecPrint (int32_t p0, int32_t p1) ;

int32_t Lmain (int32_t p0, int32_t p1) {
int32_t t0, t1, t69, t70;
/* MOVE(TEMP(t69), CALL(NAME(L_halloc), CONST(0))) */
int32_t t2 = L_halloc(0);
t69 = t2;
/* MOVE(TEMP(t70), CALL(NAME(LBT$Start), TEMP(t69))) */
int32_t t3 = LBT$Start(t69);
t70 = t3;
/* MOVE(TEMP(t1), CALL(NAME(L_println_int), TEMP(t70))) */
int32_t t4 = L_println_int(t70);
t1 = t4;
/* MOVE(TEMP(t0), CONST(0)) */
t0 = 0;
return t0;
}

int32_t LBT$Start (int32_t p0) {
int32_t t10, t11, t12, t2, t3, t5, t6, t7, t71, t72, t73, t74, t75, t76, t8, t9;
/* MOVE(TEMP(t2), CALL(NAME(L_halloc), CONST(24))) */
int32_t t0 = L_halloc(24);
t2 = t0;
/* MOVE(TEMP(t3), CALL(NAME(LTree$Init), TEMP(t2), CONST(16))) */
int32_t t1 = LTree$Init(t2, 16);
t3 = t1;
/* MOVE(TEMP(t3), CALL(NAME(LTree$Print), TEMP(t2))) */
int32_t t4 = LTree$Print(t2);
t3 = t4;
/* MOVE(TEMP(t5), CALL(NAME(L_println_int), CONST(100000000))) */
int32_t t13 = L_println_int(100000000);
t5 = t13;
/* MOVE(TEMP(t3), CALL(NAME(LTree$Insert), TEMP(t2), CONST(8))) */
int32_t t14 = LTree$Insert(t2, 8);
t3 = t14;
/* MOVE(TEMP(t3), CALL(NAME(LTree$Print), TEMP(t2))) */
int32_t t15 = LTree$Print(t2);
t3 = t15;
/* MOVE(TEMP(t3), CALL(NAME(LTree$Insert), TEMP(t2), CONST(24))) */
int32_t t16 = LTree$Insert(t2, 24);
t3 = t16;
/* MOVE(TEMP(t3), CALL(NAME(LTree$Insert), TEMP(t2), CONST(4))) */
int32_t t17 = LTree$Insert(t2, 4);
t3 = t17;
/* MOVE(TEMP(t3), CALL(NAME(LTree$Insert), TEMP(t2), CONST(12))) */
int32_t t18 = LTree$Insert(t2, 12);
t3 = t18;
/* MOVE(TEMP(t3), CALL(NAME(LTree$Insert), TEMP(t2), CONST(20))) */
int32_t t19 = LTree$Insert(t2, 20);
t3 = t19;
/* MOVE(TEMP(t3), CALL(NAME(LTree$Insert), TEMP(t2), CONST(28))) */
int32_t t20 = LTree$Insert(t2, 28);
t3 = t20;
/* MOVE(TEMP(t3), CALL(NAME(LTree$Insert), TEMP(t2), CONST(14))) */
int32_t t21 = LTree$Insert(t2, 14);
t3 = t21;
/* MOVE(TEMP(t3), CALL(NAME(LTree$Print), TEMP(t2))) */
int32_t t22 = LTree$Print(t2);
t3 = t22;
/* MOVE(TEMP(t71), CALL(NAME(LTree$Search), TEMP(t2), CONST(24))) */
int32_t t23 = LTree$Search(t2, 24);
t71 = t23;
/* MOVE(TEMP(t6), CALL(NAME(L_println_int), TEMP(t71))) */
int32_t t24 = L_println_int(t71);
t6 = t24;
/* MOVE(TEMP(t72), CALL(NAME(LTree$Search), TEMP(t2), CONST(12))) */
int32_t t25 = LTree$Search(t2, 12);
t72 = t25;
/* MOVE(TEMP(t7), CALL(NAME(L_println_int), TEMP(t72))) */
int32_t t26 = L_println_int(t72);
t7 = t26;
/* MOVE(TEMP(t73), CALL(NAME(LTree$Search), TEMP(t2), CONST(16))) */
int32_t t27 = LTree$Search(t2, 16);
t73 = t27;
/* MOVE(TEMP(t8), CALL(NAME(L_println_int), TEMP(t73))) */
int32_t t28 = L_println_int(t73);
t8 = t28;
/* MOVE(TEMP(t74), CALL(NAME(LTree$Search), TEMP(t2), CONST(50))) */
int32_t t29 = LTree$Search(t2, 50);
t74 = t29;
/* MOVE(TEMP(t9), CALL(NAME(L_println_int), TEMP(t74))) */
int32_t t30 = L_println_int(t74);
t9 = t30;
/* MOVE(TEMP(t75), CALL(NAME(LTree$Search), TEMP(t2), CONST(12))) */
int32_t t31 = LTree$Search(t2, 12);
t75 = t31;
/* MOVE(TEMP(t10), CALL(NAME(L_println_int), TEMP(t75))) */
int32_t t32 = L_println_int(t75);
t10 = t32;
/* MOVE(TEMP(t3), CALL(NAME(LTree$Delete), TEMP(t2), CONST(12))) */
int32_t t33 = LTree$Delete(t2, 12);
t3 = t33;
/* MOVE(TEMP(t3), CALL(NAME(LTree$Print), TEMP(t2))) */
int32_t t34 = LTree$Print(t2);
t3 = t34;
/* MOVE(TEMP(t76), CALL(NAME(LTree$Search), TEMP(t2), CONST(12))) */
int32_t t35 = LTree$Search(t2, 12);
t76 = t35;
/* MOVE(TEMP(t11), CALL(NAME(L_println_int), TEMP(t76))) */
int32_t t36 = L_println_int(t76);
t11 = t36;
/* MOVE(TEMP(t12), CONST(0)) */
t12 = 0;
return t12;
}

int32_t LTree$Init (int32_t p0, int32_t p1) {
int32_t t13;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (2 * 4));
MEM(t0) = p1;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), CONST(0)) */
int32_t t1 = (p0 + (3 * 4));
MEM(t1) = 0;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(4), CONST(4)))), CONST(0)) */
int32_t t2 = (p0 + (4 * 4));
MEM(t2) = 0;
/* MOVE(TEMP(t13), CONST(1)) */
t13 = 1;
return t13;
}

int32_t LTree$SetRight (int32_t p0, int32_t p1) {
int32_t t14;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (1 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t14), CONST(1)) */
t14 = 1;
return t14;
}

int32_t LTree$SetLeft (int32_t p0, int32_t p1) {
int32_t t15;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (0 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t15), CONST(1)) */
t15 = 1;
return t15;
}

int32_t LTree$GetRight (int32_t p0) {
int32_t t16;
/* MOVE(TEMP(t16), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(1), CONST(4))))) */
t16 = MEM((p0 + (1 * 4)));
return t16;
}

int32_t LTree$GetLeft (int32_t p0) {
int32_t t17;
/* MOVE(TEMP(t17), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(0), CONST(4))))) */
t17 = MEM((p0 + (0 * 4)));
return t17;
}

int32_t LTree$GetKey (int32_t p0) {
int32_t t18;
/* MOVE(TEMP(t18), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4))))) */
t18 = MEM((p0 + (2 * 4)));
return t18;
}

int32_t LTree$SetKey (int32_t p0, int32_t p1) {
int32_t t19;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(2), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (2 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t19), CONST(1)) */
t19 = 1;
return t19;
}

int32_t LTree$GetHas_Right (int32_t p0) {
int32_t t20;
/* MOVE(TEMP(t20), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(4), CONST(4))))) */
t20 = MEM((p0 + (4 * 4)));
return t20;
}

int32_t LTree$GetHas_Left (int32_t p0) {
int32_t t21;
/* MOVE(TEMP(t21), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4))))) */
t21 = MEM((p0 + (3 * 4)));
return t21;
}

int32_t LTree$SetHas_Left (int32_t p0, int32_t p1) {
int32_t t22;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(3), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (3 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t22), CONST(1)) */
t22 = 1;
return t22;
}

int32_t LTree$SetHas_Right (int32_t p0, int32_t p1) {
int32_t t23;
/* MOVE(MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(4), CONST(4)))), PARAM(1)) */
int32_t t0 = (p0 + (4 * 4));
MEM(t0) = p1;
/* MOVE(TEMP(t23), CONST(1)) */
t23 = 1;
return t23;
}

int32_t LTree$Compare (int32_t p0, int32_t p1, int32_t p2) {
int32_t t24, t25, t26, t27, t28;
/* MOVE(TEMP(t24), CONST(0)) */
t24 = 0;
/* MOVE(TEMP(t25), BINOP(PLUS, PARAM(2), CONST(1))) */
t25 = (p2 + 1);
/* MOVE(TEMP(t26), CONST(0)) */
t26 = 0;
/* CJUMP(LT, PARAM(1), PARAM(2), L$$3, L$$4) */
if (p1 < p2) goto L$$3; else goto L$$4;
/* LABEL(L$$3) */
L$$3: ;
/* MOVE(TEMP(t26), CONST(1)) */
t26 = 1;
/* LABEL(L$$4) */
L$$4: ;
/* CJUMP(EQ, TEMP(t26), CONST(1), L$$1, L$$0) */
if (t26 == 1) goto L$$1; else goto L$$0;
/* LABEL(L$$1) */
L$$1: ;
/* MOVE(TEMP(t24), CONST(0)) */
t24 = 0;
/* JUMP(NAME(L$$2), L$$2) */
goto L$$2;
/* LABEL(L$$0) */
L$$0: ;
/* MOVE(TEMP(t27), CONST(0)) */
t27 = 0;
/* CJUMP(LT, PARAM(1), TEMP(t25), L$$8, L$$9) */
if (p1 < t25) goto L$$8; else goto L$$9;
/* LABEL(L$$8) */
L$$8: ;
/* MOVE(TEMP(t27), CONST(1)) */
t27 = 1;
/* LABEL(L$$9) */
L$$9: ;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t27)), CONST(1), L$$6, L$$5) */
if ((1 - t27) == 1) goto L$$6; else goto L$$5;
/* LABEL(L$$6) */
L$$6: ;
/* MOVE(TEMP(t24), CONST(0)) */
t24 = 0;
/* JUMP(NAME(L$$7), L$$7) */
goto L$$7;
/* LABEL(L$$5) */
L$$5: ;
/* MOVE(TEMP(t24), CONST(1)) */
t24 = 1;
/* LABEL(L$$7) */
L$$7: ;
/* LABEL(L$$2) */
L$$2: ;
/* MOVE(TEMP(t28), TEMP(t24)) */
t28 = t24;
return t28;
}

int32_t LTree$Insert (int32_t p0, int32_t p1) {
int32_t t29, t30, t31, t32, t33, t34, t35, t77, t78;
/* MOVE(TEMP(t29), CALL(NAME(L_halloc), CONST(24))) */
int32_t t0 = L_halloc(24);
t29 = t0;
/* MOVE(TEMP(t30), CALL(NAME(LTree$Init), TEMP(t29), PARAM(1))) */
int32_t t1 = LTree$Init(t29, p1);
t30 = t1;
/* MOVE(TEMP(t33), PARAM(0)) */
t33 = p0;
/* MOVE(TEMP(t31), CONST(1)) */
t31 = 1;
/* LABEL(L$$10) */
L$$10: ;
/* CJUMP(EQ, TEMP(t31), CONST(1), L$$12, L$$11) */
if (t31 == 1) goto L$$12; else goto L$$11;
/* LABEL(L$$12) */
L$$12: ;
/* MOVE(TEMP(t32), CALL(NAME(LTree$GetKey), TEMP(t33))) */
int32_t t2 = LTree$GetKey(t33);
t32 = t2;
/* MOVE(TEMP(t34), CONST(0)) */
t34 = 0;
/* CJUMP(LT, PARAM(1), TEMP(t32), L$$16, L$$17) */
if (p1 < t32) goto L$$16; else goto L$$17;
/* LABEL(L$$16) */
L$$16: ;
/* MOVE(TEMP(t34), CONST(1)) */
t34 = 1;
/* LABEL(L$$17) */
L$$17: ;
/* CJUMP(EQ, TEMP(t34), CONST(1), L$$14, L$$13) */
if (t34 == 1) goto L$$14; else goto L$$13;
/* LABEL(L$$14) */
L$$14: ;
/* MOVE(TEMP(t77), CALL(NAME(LTree$GetHas_Left), TEMP(t33))) */
int32_t t3 = LTree$GetHas_Left(t33);
t77 = t3;
/* CJUMP(EQ, TEMP(t77), CONST(1), L$$19, L$$18) */
if (t77 == 1) goto L$$19; else goto L$$18;
/* LABEL(L$$19) */
L$$19: ;
/* MOVE(TEMP(t33), CALL(NAME(LTree$GetLeft), TEMP(t33))) */
int32_t t4 = LTree$GetLeft(t33);
t33 = t4;
/* JUMP(NAME(L$$20), L$$20) */
goto L$$20;
/* LABEL(L$$18) */
L$$18: ;
/* MOVE(TEMP(t31), CONST(0)) */
t31 = 0;
/* MOVE(TEMP(t30), CALL(NAME(LTree$SetHas_Left), TEMP(t33), CONST(1))) */
int32_t t5 = LTree$SetHas_Left(t33, 1);
t30 = t5;
/* MOVE(TEMP(t30), CALL(NAME(LTree$SetLeft), TEMP(t33), TEMP(t29))) */
int32_t t6 = LTree$SetLeft(t33, t29);
t30 = t6;
/* LABEL(L$$20) */
L$$20: ;
/* JUMP(NAME(L$$15), L$$15) */
goto L$$15;
/* LABEL(L$$13) */
L$$13: ;
/* MOVE(TEMP(t78), CALL(NAME(LTree$GetHas_Right), TEMP(t33))) */
int32_t t7 = LTree$GetHas_Right(t33);
t78 = t7;
/* CJUMP(EQ, TEMP(t78), CONST(1), L$$22, L$$21) */
if (t78 == 1) goto L$$22; else goto L$$21;
/* LABEL(L$$22) */
L$$22: ;
/* MOVE(TEMP(t33), CALL(NAME(LTree$GetRight), TEMP(t33))) */
int32_t t8 = LTree$GetRight(t33);
t33 = t8;
/* JUMP(NAME(L$$23), L$$23) */
goto L$$23;
/* LABEL(L$$21) */
L$$21: ;
/* MOVE(TEMP(t31), CONST(0)) */
t31 = 0;
/* MOVE(TEMP(t30), CALL(NAME(LTree$SetHas_Right), TEMP(t33), CONST(1))) */
int32_t t9 = LTree$SetHas_Right(t33, 1);
t30 = t9;
/* MOVE(TEMP(t30), CALL(NAME(LTree$SetRight), TEMP(t33), TEMP(t29))) */
int32_t t10 = LTree$SetRight(t33, t29);
t30 = t10;
/* LABEL(L$$23) */
L$$23: ;
/* LABEL(L$$15) */
L$$15: ;
/* JUMP(NAME(L$$10), L$$10) */
goto L$$10;
/* LABEL(L$$11) */
L$$11: ;
/* MOVE(TEMP(t35), CONST(1)) */
t35 = 1;
return t35;
}

int32_t LTree$Delete (int32_t p0, int32_t p1) {
int32_t t36, t37, t38, t39, t40, t41, t42, t43, t44, t45, t46, t47, t79, t80, t81, t82;
/* MOVE(TEMP(t36), PARAM(0)) */
t36 = p0;
/* MOVE(TEMP(t37), PARAM(0)) */
t37 = p0;
/* MOVE(TEMP(t38), CONST(1)) */
t38 = 1;
/* MOVE(TEMP(t39), CONST(0)) */
t39 = 0;
/* MOVE(TEMP(t40), CONST(1)) */
t40 = 1;
/* LABEL(L$$24) */
L$$24: ;
/* CJUMP(EQ, TEMP(t38), CONST(1), L$$26, L$$25) */
if (t38 == 1) goto L$$26; else goto L$$25;
/* LABEL(L$$26) */
L$$26: ;
/* MOVE(TEMP(t41), CALL(NAME(LTree$GetKey), TEMP(t36))) */
int32_t t0 = LTree$GetKey(t36);
t41 = t0;
/* MOVE(TEMP(t43), CONST(0)) */
t43 = 0;
/* CJUMP(LT, PARAM(1), TEMP(t41), L$$30, L$$31) */
if (p1 < t41) goto L$$30; else goto L$$31;
/* LABEL(L$$30) */
L$$30: ;
/* MOVE(TEMP(t43), CONST(1)) */
t43 = 1;
/* LABEL(L$$31) */
L$$31: ;
/* CJUMP(EQ, TEMP(t43), CONST(1), L$$28, L$$27) */
if (t43 == 1) goto L$$28; else goto L$$27;
/* LABEL(L$$28) */
L$$28: ;
/* MOVE(TEMP(t79), CALL(NAME(LTree$GetHas_Left), TEMP(t36))) */
int32_t t1 = LTree$GetHas_Left(t36);
t79 = t1;
/* CJUMP(EQ, TEMP(t79), CONST(1), L$$33, L$$32) */
if (t79 == 1) goto L$$33; else goto L$$32;
/* LABEL(L$$33) */
L$$33: ;
/* MOVE(TEMP(t37), TEMP(t36)) */
t37 = t36;
/* MOVE(TEMP(t36), CALL(NAME(LTree$GetLeft), TEMP(t36))) */
int32_t t2 = LTree$GetLeft(t36);
t36 = t2;
/* JUMP(NAME(L$$34), L$$34) */
goto L$$34;
/* LABEL(L$$32) */
L$$32: ;
/* MOVE(TEMP(t38), CONST(0)) */
t38 = 0;
/* LABEL(L$$34) */
L$$34: ;
/* JUMP(NAME(L$$29), L$$29) */
goto L$$29;
/* LABEL(L$$27) */
L$$27: ;
/* MOVE(TEMP(t44), CONST(0)) */
t44 = 0;
/* CJUMP(LT, TEMP(t41), PARAM(1), L$$38, L$$39) */
if (t41 < p1) goto L$$38; else goto L$$39;
/* LABEL(L$$38) */
L$$38: ;
/* MOVE(TEMP(t44), CONST(1)) */
t44 = 1;
/* LABEL(L$$39) */
L$$39: ;
/* CJUMP(EQ, TEMP(t44), CONST(1), L$$36, L$$35) */
if (t44 == 1) goto L$$36; else goto L$$35;
/* LABEL(L$$36) */
L$$36: ;
/* MOVE(TEMP(t80), CALL(NAME(LTree$GetHas_Right), TEMP(t36))) */
int32_t t3 = LTree$GetHas_Right(t36);
t80 = t3;
/* CJUMP(EQ, TEMP(t80), CONST(1), L$$41, L$$40) */
if (t80 == 1) goto L$$41; else goto L$$40;
/* LABEL(L$$41) */
L$$41: ;
/* MOVE(TEMP(t37), TEMP(t36)) */
t37 = t36;
/* MOVE(TEMP(t36), CALL(NAME(LTree$GetRight), TEMP(t36))) */
int32_t t4 = LTree$GetRight(t36);
t36 = t4;
/* JUMP(NAME(L$$42), L$$42) */
goto L$$42;
/* LABEL(L$$40) */
L$$40: ;
/* MOVE(TEMP(t38), CONST(0)) */
t38 = 0;
/* LABEL(L$$42) */
L$$42: ;
/* JUMP(NAME(L$$37), L$$37) */
goto L$$37;
/* LABEL(L$$35) */
L$$35: ;
/* CJUMP(EQ, TEMP(t40), CONST(1), L$$44, L$$43) */
if (t40 == 1) goto L$$44; else goto L$$43;
/* LABEL(L$$44) */
L$$44: ;
/* MOVE(TEMP(t81), CALL(NAME(LTree$GetHas_Right), TEMP(t36))) */
int32_t t5 = LTree$GetHas_Right(t36);
t81 = t5;
/* CJUMP(EQ, BINOP(MINUS, CONST(1), TEMP(t81)), CONST(1), L$$49, L$$50) */
if ((1 - t81) == 1) goto L$$49; else goto L$$50;
/* LABEL(L$$49) */
L$$49: ;
/* MOVE(TEMP(t82), CALL(NAME(LTree$GetHas_Left), TEMP(t36))) */
int32_t t6 = LTree$GetHas_Left(t36);
t82 = t6;
/* MOVE(TEMP(t46), BINOP(MINUS, CONST(1), TEMP(t82))) */
t46 = (1 - t82);
/* MOVE(TEMP(t45), CONST(1)) */
t45 = 1;
/* JUMP(NAME(L$$51), L$$51) */
goto L$$51;
/* LABEL(L$$50) */
L$$50: ;
/* MOVE(TEMP(t46), CONST(0)) */
t46 = 0;
/* MOVE(TEMP(t45), CONST(0)) */
t45 = 0;
/* LABEL(L$$51) */
L$$51: ;
/* CJUMP(EQ, BINOP(AND, TEMP(t45), TEMP(t46)), CONST(1), L$$47, L$$46) */
if ((t45 & t46) == 1) goto L$$47; else goto L$$46;
/* LABEL(L$$47) */
L$$47: ;
/* MOVE(TEMP(t42), CONST(1)) */
t42 = 1;
/* JUMP(NAME(L$$48), L$$48) */
goto L$$48;
/* LABEL(L$$46) */
L$$46: ;
/* MOVE(TEMP(t42), CALL(NAME(LTree$Remove), PARAM(0), TEMP(t37), TEMP(t36))) */
int32_t t7 = LTree$Remove(p0, t37, t36);
t42 = t7;
/* LABEL(L$$48) */
L$$48: ;
/* JUMP(NAME(L$$45), L$$45) */
goto L$$45;
/* LABEL(L$$43) */
L$$43: ;
/* MOVE(TEMP(t42), CALL(NAME(LTree$Remove), PARAM(0), TEMP(t37), TEMP(t36))) */
int32_t t8 = LTree$Remove(p0, t37, t36);
t42 = t8;
/* LABEL(L$$45) */
L$$45: ;
/* MOVE(TEMP(t39), CONST(1)) */
t39 = 1;
/* MOVE(TEMP(t38), CONST(0)) */
t38 = 0;
/* LABEL(L$$37) */
L$$37: ;
/* LABEL(L$$29) */
L$$29: ;
/* MOVE(TEMP(t40), CONST(0)) */
t40 = 0;
/* JUMP(NAME(L$$24), L$$24) */
goto L$$24;
/* LABEL(L$$25) */
L$$25: ;
/* MOVE(TEMP(t47), TEMP(t39)) */
t47 = t39;
return t47;
}

int32_t LTree$Remove (int32_t p0, int32_t p1, int32_t p2) {
int32_t t48, t49, t50, t51, t83, t84, t85, t86;
/* MOVE(TEMP(t83), CALL(NAME(LTree$GetHas_Left), PARAM(2))) */
int32_t t0 = LTree$GetHas_Left(p2);
t83 = t0;
/* CJUMP(EQ, TEMP(t83), CONST(1), L$$53, L$$52) */
if (t83 == 1) goto L$$53; else goto L$$52;
/* LABEL(L$$53) */
L$$53: ;
/* MOVE(TEMP(t48), CALL(NAME(LTree$RemoveLeft), PARAM(0), PARAM(1), PARAM(2))) */
int32_t t1 = LTree$RemoveLeft(p0, p1, p2);
t48 = t1;
/* JUMP(NAME(L$$54), L$$54) */
goto L$$54;
/* LABEL(L$$52) */
L$$52: ;
/* MOVE(TEMP(t84), CALL(NAME(LTree$GetHas_Right), PARAM(2))) */
int32_t t2 = LTree$GetHas_Right(p2);
t84 = t2;
/* CJUMP(EQ, TEMP(t84), CONST(1), L$$56, L$$55) */
if (t84 == 1) goto L$$56; else goto L$$55;
/* LABEL(L$$56) */
L$$56: ;
/* MOVE(TEMP(t48), CALL(NAME(LTree$RemoveRight), PARAM(0), PARAM(1), PARAM(2))) */
int32_t t3 = LTree$RemoveRight(p0, p1, p2);
t48 = t3;
/* JUMP(NAME(L$$57), L$$57) */
goto L$$57;
/* LABEL(L$$55) */
L$$55: ;
/* MOVE(TEMP(t49), CALL(NAME(LTree$GetKey), PARAM(2))) */
int32_t t4 = LTree$GetKey(p2);
t49 = t4;
/* MOVE(TEMP(t85), CALL(NAME(LTree$GetLeft), PARAM(1))) */
int32_t t5 = LTree$GetLeft(p1);
t85 = t5;
/* MOVE(TEMP(t50), CALL(NAME(LTree$GetKey), TEMP(t85))) */
int32_t t6 = LTree$GetKey(t85);
t50 = t6;
/* MOVE(TEMP(t86), CALL(NAME(LTree$Compare), PARAM(0), TEMP(t49), TEMP(t50))) */
int32_t t7 = LTree$Compare(p0, t49, t50);
t86 = t7;
/* CJUMP(EQ, TEMP(t86), CONST(1), L$$59, L$$58) */
if (t86 == 1) goto L$$59; else goto L$$58;
/* LABEL(L$$59) */
L$$59: ;
/* MOVE(TEMP(t48), CALL(NAME(LTree$SetLeft), PARAM(1), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(5), CONST(4)))))) */
int32_t t8 = LTree$SetLeft(p1, MEM((p0 + (5 * 4))));
t48 = t8;
/* MOVE(TEMP(t48), CALL(NAME(LTree$SetHas_Left), PARAM(1), CONST(0))) */
int32_t t9 = LTree$SetHas_Left(p1, 0);
t48 = t9;
/* JUMP(NAME(L$$60), L$$60) */
goto L$$60;
/* LABEL(L$$58) */
L$$58: ;
/* MOVE(TEMP(t48), CALL(NAME(LTree$SetRight), PARAM(1), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(5), CONST(4)))))) */
int32_t t10 = LTree$SetRight(p1, MEM((p0 + (5 * 4))));
t48 = t10;
/* MOVE(TEMP(t48), CALL(NAME(LTree$SetHas_Right), PARAM(1), CONST(0))) */
int32_t t11 = LTree$SetHas_Right(p1, 0);
t48 = t11;
/* LABEL(L$$60) */
L$$60: ;
/* LABEL(L$$57) */
L$$57: ;
/* LABEL(L$$54) */
L$$54: ;
/* MOVE(TEMP(t51), CONST(1)) */
t51 = 1;
return t51;
}

int32_t LTree$RemoveRight (int32_t p0, int32_t p1, int32_t p2) {
int32_t t52, t53, t87, t88, t89, t90;
/* LABEL(L$$61) */
L$$61: ;
/* MOVE(TEMP(t87), CALL(NAME(LTree$GetHas_Right), PARAM(2))) */
int32_t t0 = LTree$GetHas_Right(p2);
t87 = t0;
/* CJUMP(EQ, TEMP(t87), CONST(1), L$$63, L$$62) */
if (t87 == 1) goto L$$63; else goto L$$62;
/* LABEL(L$$63) */
L$$63: ;
/* MOVE(TEMP(t90), PARAM(2)) */
t90 = p2;
/* MOVE(TEMP(t88), CALL(NAME(LTree$GetRight), PARAM(2))) */
int32_t t1 = LTree$GetRight(p2);
t88 = t1;
/* MOVE(TEMP(t89), CALL(NAME(LTree$GetKey), TEMP(t88))) */
int32_t t2 = LTree$GetKey(t88);
t89 = t2;
/* MOVE(TEMP(t52), CALL(NAME(LTree$SetKey), TEMP(t90), TEMP(t89))) */
int32_t t3 = LTree$SetKey(t90, t89);
t52 = t3;
/* MOVE(PARAM(1), PARAM(2)) */
p1 = p2;
/* MOVE(PARAM(2), CALL(NAME(LTree$GetRight), PARAM(2))) */
int32_t t4 = LTree$GetRight(p2);
p2 = t4;
/* JUMP(NAME(L$$61), L$$61) */
goto L$$61;
/* LABEL(L$$62) */
L$$62: ;
/* MOVE(TEMP(t52), CALL(NAME(LTree$SetRight), PARAM(1), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(5), CONST(4)))))) */
int32_t t5 = LTree$SetRight(p1, MEM((p0 + (5 * 4))));
t52 = t5;
/* MOVE(TEMP(t52), CALL(NAME(LTree$SetHas_Right), PARAM(1), CONST(0))) */
int32_t t6 = LTree$SetHas_Right(p1, 0);
t52 = t6;
/* MOVE(TEMP(t53), CONST(1)) */
t53 = 1;
return t53;
}

int32_t LTree$RemoveLeft (int32_t p0, int32_t p1, int32_t p2) {
int32_t t54, t55, t91, t92, t93, t94;
/* LABEL(L$$64) */
L$$64: ;
/* MOVE(TEMP(t91), CALL(NAME(LTree$GetHas_Left), PARAM(2))) */
int32_t t0 = LTree$GetHas_Left(p2);
t91 = t0;
/* CJUMP(EQ, TEMP(t91), CONST(1), L$$66, L$$65) */
if (t91 == 1) goto L$$66; else goto L$$65;
/* LABEL(L$$66) */
L$$66: ;
/* MOVE(TEMP(t94), PARAM(2)) */
t94 = p2;
/* MOVE(TEMP(t92), CALL(NAME(LTree$GetLeft), PARAM(2))) */
int32_t t1 = LTree$GetLeft(p2);
t92 = t1;
/* MOVE(TEMP(t93), CALL(NAME(LTree$GetKey), TEMP(t92))) */
int32_t t2 = LTree$GetKey(t92);
t93 = t2;
/* MOVE(TEMP(t54), CALL(NAME(LTree$SetKey), TEMP(t94), TEMP(t93))) */
int32_t t3 = LTree$SetKey(t94, t93);
t54 = t3;
/* MOVE(PARAM(1), PARAM(2)) */
p1 = p2;
/* MOVE(PARAM(2), CALL(NAME(LTree$GetLeft), PARAM(2))) */
int32_t t4 = LTree$GetLeft(p2);
p2 = t4;
/* JUMP(NAME(L$$64), L$$64) */
goto L$$64;
/* LABEL(L$$65) */
L$$65: ;
/* MOVE(TEMP(t54), CALL(NAME(LTree$SetLeft), PARAM(1), MEM(BINOP(PLUS, PARAM(0), BINOP(MUL, CONST(5), CONST(4)))))) */
int32_t t5 = LTree$SetLeft(p1, MEM((p0 + (5 * 4))));
t54 = t5;
/* MOVE(TEMP(t54), CALL(NAME(LTree$SetHas_Left), PARAM(1), CONST(0))) */
int32_t t6 = LTree$SetHas_Left(p1, 0);
t54 = t6;
/* MOVE(TEMP(t55), CONST(1)) */
t55 = 1;
return t55;
}

int32_t LTree$Search (int32_t p0, int32_t p1) {
int32_t t56, t57, t58, t59, t60, t61, t62, t95, t96;
/* MOVE(TEMP(t58), PARAM(0)) */
t58 = p0;
/* MOVE(TEMP(t56), CONST(1)) */
t56 = 1;
/* MOVE(TEMP(t57), CONST(0)) */
t57 = 0;
/* LABEL(L$$67) */
L$$67: ;
/* CJUMP(EQ, TEMP(t56), CONST(1), L$$69, L$$68) */
if (t56 == 1) goto L$$69; else goto L$$68;
/* LABEL(L$$69) */
L$$69: ;
/* MOVE(TEMP(t59), CALL(NAME(LTree$GetKey), TEMP(t58))) */
int32_t t0 = LTree$GetKey(t58);
t59 = t0;
/* MOVE(TEMP(t60), CONST(0)) */
t60 = 0;
/* CJUMP(LT, PARAM(1), TEMP(t59), L$$73, L$$74) */
if (p1 < t59) goto L$$73; else goto L$$74;
/* LABEL(L$$73) */
L$$73: ;
/* MOVE(TEMP(t60), CONST(1)) */
t60 = 1;
/* LABEL(L$$74) */
L$$74: ;
/* CJUMP(EQ, TEMP(t60), CONST(1), L$$71, L$$70) */
if (t60 == 1) goto L$$71; else goto L$$70;
/* LABEL(L$$71) */
L$$71: ;
/* MOVE(TEMP(t95), CALL(NAME(LTree$GetHas_Left), TEMP(t58))) */
int32_t t1 = LTree$GetHas_Left(t58);
t95 = t1;
/* CJUMP(EQ, TEMP(t95), CONST(1), L$$76, L$$75) */
if (t95 == 1) goto L$$76; else goto L$$75;
/* LABEL(L$$76) */
L$$76: ;
/* MOVE(TEMP(t58), CALL(NAME(LTree$GetLeft), TEMP(t58))) */
int32_t t2 = LTree$GetLeft(t58);
t58 = t2;
/* JUMP(NAME(L$$77), L$$77) */
goto L$$77;
/* LABEL(L$$75) */
L$$75: ;
/* MOVE(TEMP(t56), CONST(0)) */
t56 = 0;
/* LABEL(L$$77) */
L$$77: ;
/* JUMP(NAME(L$$72), L$$72) */
goto L$$72;
/* LABEL(L$$70) */
L$$70: ;
/* MOVE(TEMP(t61), CONST(0)) */
t61 = 0;
/* CJUMP(LT, TEMP(t59), PARAM(1), L$$81, L$$82) */
if (t59 < p1) goto L$$81; else goto L$$82;
/* LABEL(L$$81) */
L$$81: ;
/* MOVE(TEMP(t61), CONST(1)) */
t61 = 1;
/* LABEL(L$$82) */
L$$82: ;
/* CJUMP(EQ, TEMP(t61), CONST(1), L$$79, L$$78) */
if (t61 == 1) goto L$$79; else goto L$$78;
/* LABEL(L$$79) */
L$$79: ;
/* MOVE(TEMP(t96), CALL(NAME(LTree$GetHas_Right), TEMP(t58))) */
int32_t t3 = LTree$GetHas_Right(t58);
t96 = t3;
/* CJUMP(EQ, TEMP(t96), CONST(1), L$$84, L$$83) */
if (t96 == 1) goto L$$84; else goto L$$83;
/* LABEL(L$$84) */
L$$84: ;
/* MOVE(TEMP(t58), CALL(NAME(LTree$GetRight), TEMP(t58))) */
int32_t t4 = LTree$GetRight(t58);
t58 = t4;
/* JUMP(NAME(L$$85), L$$85) */
goto L$$85;
/* LABEL(L$$83) */
L$$83: ;
/* MOVE(TEMP(t56), CONST(0)) */
t56 = 0;
/* LABEL(L$$85) */
L$$85: ;
/* JUMP(NAME(L$$80), L$$80) */
goto L$$80;
/* LABEL(L$$78) */
L$$78: ;
/* MOVE(TEMP(t57), CONST(1)) */
t57 = 1;
/* MOVE(TEMP(t56), CONST(0)) */
t56 = 0;
/* LABEL(L$$80) */
L$$80: ;
/* LABEL(L$$72) */
L$$72: ;
/* JUMP(NAME(L$$67), L$$67) */
goto L$$67;
/* LABEL(L$$68) */
L$$68: ;
/* MOVE(TEMP(t62), TEMP(t57)) */
t62 = t57;
return t62;
}

int32_t LTree$Print (int32_t p0) {
int32_t t63, t64, t65;
/* MOVE(TEMP(t63), PARAM(0)) */
t63 = p0;
/* MOVE(TEMP(t64), CALL(NAME(LTree$RecPrint), PARAM(0), TEMP(t63))) */
int32_t t0 = LTree$RecPrint(p0, t63);
t64 = t0;
/* MOVE(TEMP(t65), CONST(1)) */
t65 = 1;
return t65;
}

int32_t LTree$RecPrint (int32_t p0, int32_t p1) {
int32_t t100, t101, t102, t103, t66, t67, t68, t97, t98, t99;
/* MOVE(TEMP(t97), CALL(NAME(LTree$GetHas_Left), PARAM(1))) */
int32_t t0 = LTree$GetHas_Left(p1);
t97 = t0;
/* CJUMP(EQ, TEMP(t97), CONST(1), L$$87, L$$86) */
if (t97 == 1) goto L$$87; else goto L$$86;
/* LABEL(L$$87) */
L$$87: ;
/* MOVE(TEMP(t99), PARAM(0)) */
t99 = p0;
/* MOVE(TEMP(t98), CALL(NAME(LTree$GetLeft), PARAM(1))) */
int32_t t1 = LTree$GetLeft(p1);
t98 = t1;
/* MOVE(TEMP(t66), CALL(NAME(LTree$RecPrint), TEMP(t99), TEMP(t98))) */
int32_t t2 = LTree$RecPrint(t99, t98);
t66 = t2;
/* JUMP(NAME(L$$88), L$$88) */
goto L$$88;
/* LABEL(L$$86) */
L$$86: ;
/* MOVE(TEMP(t66), CONST(1)) */
t66 = 1;
/* LABEL(L$$88) */
L$$88: ;
/* MOVE(TEMP(t100), CALL(NAME(LTree$GetKey), PARAM(1))) */
int32_t t3 = LTree$GetKey(p1);
t100 = t3;
/* MOVE(TEMP(t67), CALL(NAME(L_println_int), TEMP(t100))) */
int32_t t4 = L_println_int(t100);
t67 = t4;
/* MOVE(TEMP(t101), CALL(NAME(LTree$GetHas_Right), PARAM(1))) */
int32_t t5 = LTree$GetHas_Right(p1);
t101 = t5;
/* CJUMP(EQ, TEMP(t101), CONST(1), L$$90, L$$89) */
if (t101 == 1) goto L$$90; else goto L$$89;
/* LABEL(L$$90) */
L$$90: ;
/* MOVE(TEMP(t103), PARAM(0)) */
t103 = p0;
/* MOVE(TEMP(t102), CALL(NAME(LTree$GetRight), PARAM(1))) */
int32_t t6 = LTree$GetRight(p1);
t102 = t6;
/* MOVE(TEMP(t66), CALL(NAME(LTree$RecPrint), TEMP(t103), TEMP(t102))) */
int32_t t7 = LTree$RecPrint(t103, t102);
t66 = t7;
/* JUMP(NAME(L$$91), L$$91) */
goto L$$91;
/* LABEL(L$$89) */
L$$89: ;
/* MOVE(TEMP(t66), CONST(1)) */
t66 = 1;
/* LABEL(L$$91) */
L$$91: ;
/* MOVE(TEMP(t68), CONST(1)) */
t68 = 1;
return t68;
}

