#task 3
.globl main
.data

purchases: .word 0, 0, 0, 0, 0, 0
.text

main: 

la $s1, purchases #base address for storage array
li $a1, 0
Loop1: beq $a1, 5, e_loop1 #Loop for input into storage array
jal Read_Int
addi $a1, $a1, 1
j Loop1
e_loop1:

lw $t2, 0($s1) #$t2 is max initially set to the first element
li $a1, 0
#loop over array and compare to find largest value
Loop2: beq $a1, 5, EXIT
lw $t3, 0($s1)
bgt $t3, $t2, L2
addi $s1, $s1, 4
addi $a1, $a1, 1
j Loop2
L2: move $t2, $t3
addi $a1, $a1, 1
j Loop2 

EXIT:
move $a0, $t2
jal Print_Int
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