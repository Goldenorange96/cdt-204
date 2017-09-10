.globl main
.data
.text

Read_Input:
li $v0, 5
move $t0, $v0
jal $ra
li $v0, 5
move $t1, $v0

li $v0, 5
move $t2, $v0
jr $ra

main:
jal Read_Input
jal Read_Input
jal Read_Input
nop

END:
li $v0, 10
syscall

