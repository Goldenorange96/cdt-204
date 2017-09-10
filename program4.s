.globl main
.data
.text

main:
li $t1, 8
li $t2, 9
blt $t1, $t2, L1
addi $t1, $t2, 2
L1: addi $t1, $t1, 1
nop

li $t7, 2
li $t3, 2
bne $t7,$t3, L2
addi $t3, $t3, 2
L2: addi $t3, $t3, 5
nop

li $t6, 4
li $t5, 1
bge $t6,$t5, L3
add $t6, $t6, $t5
addi $t6, $t6, 3
L3: addi $t6, $t6, 5
nop