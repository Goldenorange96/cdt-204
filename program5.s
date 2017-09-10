.globl main
.data
.text

main:
li $v0, 5
syscall
move $t2, $v0
li $v0, 5
syscall
move $t3, $v0

slt $t1, $t2, $t3 #$t1 is set to 1 if $t2 is lesser than $t3

bne $t1, $zero, L1 #if t1 is not 1 then $2 is larger
li $t1, 2

L1: bne $t2, $t3, L2 #if the contents of t2 and t3 are equal t1 is to be 3 else move on 
li $t1, 3
L2: nop

move $a0, $t1 #move contents of t1 into a0 for printout
li $v0, 1 #syscall to print an integer
syscall

li $v0, 10
syscall