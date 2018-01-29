Compilerbau.exe Testfiles\Medium\BinarySearch.java tree
Compilerbau.exe Testfiles\Medium\BinaryTree.java tree
Compilerbau.exe Testfiles\Medium\BubbleSort.java tree
Compilerbau.exe Testfiles\Medium\Euler.java tree
Compilerbau.exe Testfiles\Medium\Fannkuch.java tree
Compilerbau.exe Testfiles\Medium\Fib.java tree
Compilerbau.exe Testfiles\Medium\FibL.java tree
Compilerbau.exe Testfiles\Medium\Graph.java tree
Compilerbau.exe Testfiles\Medium\Hanoi.java tree
Compilerbau.exe Testfiles\Medium\LinearSearch.java tree
Compilerbau.exe Testfiles\Medium\LinkedList.java tree
Compilerbau.exe Testfiles\Medium\ManyArgs.java tree
Compilerbau.exe Testfiles\Medium\Newton.java tree
Compilerbau.exe Testfiles\Medium\PiSin.java tree
Compilerbau.exe Testfiles\Medium\Primes.java tree
Compilerbau.exe Testfiles\Medium\QuickSort.java tree

tree2c.exe BinarySearch.tree > BinarySearch.c
tree2c.exe BinaryTree.tree > BinaryTree.c
tree2c.exe BubbleSort.tree > BubbleSort.c
tree2c.exe Euler.tree > Euler.c
tree2c.exe Fannkuch.tree > Fannkuch.c
tree2c.exe Fib.tree > Fib.c
tree2c.exe FibL.tree > FibL.c
tree2c.exe Graph.tree > Graph.c
tree2c.exe Hanoi.tree > Hanoi.c
tree2c.exe LinearSearch.tree > LinearSearch.c
tree2c.exe LinkedList.tree > LinkedList.c
tree2c.exe ManyArgs.tree > ManyArgs.c
tree2c.exe Newton.tree > Newton.c
tree2c.exe PiSin.tree > PiSin.c
tree2c.exe Primes.tree > Primes.c
tree2c.exe QuickSort.tree > QuickSort.c

gcc -o BinarySearch BinarySearch.c runtime.c
gcc -o BinaryTree BinaryTree.c runtime.c
gcc -o BubbleSort BubbleSort.c runtime.c
gcc -o Fannkuch Fannkuch.c runtime.c
gcc -o Fib Fib.c runtime.c
gcc -o FibL FibL.c runtime.c
gcc -o Graph Graph.c runtime.c
gcc -o Hanoi Hanoi.c runtime.c
gcc -o LinearSearch LinearSearch.c runtime.c
gcc -o LinkedList LinkedList.c runtime.c
gcc -o ManyArgs ManyArgs.c runtime.c
gcc -o Newton Newton.c runtime.c
gcc -o PiSin PiSin.c runtime.c
gcc -o Primes Primes.c runtime.c
gcc -o QuickSort QuickSort.c runtime.c
gcc -o Euler Euler.c runtime.c

BinarySearch
BinaryTree
BubbleSort
Fannkuch
Fib
FibL
Graph
Hanoi
LinearSearch
LinkedList
ManyArgs
Newton
PiSin
Primes
QuickSort
Euler