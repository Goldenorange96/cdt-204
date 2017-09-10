#Task 1
.globl main
.data
inputs: .word 0, 0
.text

main:

#load base address
#For each call to Read_int we want to move to the next s-reg. Based from $s3. As in $s3+n 
la $s1, inputs
jal Read_Int
jal Read_Int
lw $t1, -4($s1)
lw $t2, 0($s1)

slt $t3, $t1, $t2
bne $t3, 1, L1
move $a0, $t2
jal Print_Int
j Exit

L1: move $a0, $t1
jal Print_Int

Exit:
li $v0, 10
syscall

#*************************
Read_Int:
li $v0, 5
syscall
addi $s1, $s1, 4
sw $v0, ($s1)
jr $ra
#*************************
Print_Int:
li $v0, 1
syscall
jr $ra
#*************************

