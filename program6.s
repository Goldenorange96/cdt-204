.globl main
.data
.text

main:
li $t2, 1
li $v0, 5
syscall
move $t1, $v0

bge $t1, 10, L1
j END_1

L1: bge $t1, 51, END_1
move $a0, $t2
li $v0, 1
syscall
j END_1

END_1: li $v0, 10

syscall
