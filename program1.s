.globl main
.data
.text

main:
li $t1, 8
li $t2, 9
move $t3, $t1
add $t4, $t2, $t3
addi $t4, $t1, 4
add $t2, $t2, $t1
li $v0, 10
syscall
