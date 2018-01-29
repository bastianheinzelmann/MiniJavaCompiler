Compilerbau.exe Testfiles\ArrayAccess.java tree
Compilerbau.exe Testfiles\ArrSum.java tree
Compilerbau.exe Testfiles\Effects.java tree
Compilerbau.exe Testfiles\Factorial.java tree
Compilerbau.exe Testfiles\Precedence.java tree
Compilerbau.exe Testfiles\Scope2.java tree
Compilerbau.exe Testfiles\ShortCutAnd.java tree
Compilerbau.exe Testfiles\Small.java tree
Compilerbau.exe Testfiles\Stck.java tree
Compilerbau.exe Testfiles\Sum.java tree
Compilerbau.exe Testfiles\TestEq.java tree
Compilerbau.exe Testfiles\TrivialClass.java tree
Compilerbau.exe Testfiles\While.java tree

tree2c.exe ArrayAccess.tree > ArrayAccess.c
tree2c.exe ArrSum.tree > ArrSum.c
tree2c.exe Effects.tree > Effects.c
tree2c.exe Factorial.tree > Factorial.c
tree2c.exe Precedence.tree > Precedence.c
tree2c.exe Scope2.tree > Scope2.c
tree2c.exe ShortCutAnd.tree > ShortCutAnd.c
tree2c.exe Small.tree > Small.c
tree2c.exe Stck.tree > Stck.c
tree2c.exe Sum.tree > Sum.c
tree2c.exe TestEq.tree > TestEq.c
tree2c.exe TrivialClass.tree > TrivialClass.c
tree2c.exe While.tree > While.c

gcc -o ArrayAccess ArrayAccess.c runtime.c
gcc -o ArrSum ArrSum.c runtime.c
gcc -o Effects Effects.c runtime.c
gcc -o Factorial Factorial.c runtime.c
gcc -o Precedence Precedence.c runtime.c
gcc -o Scope2 Scope2.c runtime.c
gcc -o ShortCutAnd ShortCutAnd.c runtime.c
gcc -o Small Small.c runtime.c
gcc -o Stck Stck.c runtime.c
gcc -o Sum Sum.c runtime.c
gcc -o TestEq TestEq.c runtime.c
gcc -o TrivialClass TrivialClass.c runtime.c
gcc -o While While.c runtime.c

ArrayAccess
ArrSum
Effects
Factorial
Precedence
Scope2
ShortCutAnd
Small
Stck
Sum
TestEq
TrivialClass
While

