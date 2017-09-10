#task 2

.globl main
.data

purchases: .word 70, 50, 40, 1000, 600, 1000
.text

main:
li $a1, 0 #i
la $t1, purchases
lw $t2, 0($t1) #$t2 is max initially set to the first element

#loop over array and compare to find largest value
Loop: beq $a1, 5, EXIT #loop
lw $t3, 0($t1) #load in the current element
bgt $t3, $t2, L1 #if the contents of t3 is larger than t2
addi $t1, $t1, 4 #move the memory address a byte ahead./index
addi $a1, $a1, 1 #i++
j Loop
L1: move $t2, $t3 #if new bigger value found store in t2
addi $a1, $a1, 1 #i++
j Loop 

EXIT:
move $a0, $t2
jal Print_Int
li $v0, 10
syscall

Print_Int:
li $v0, 1
syscall
jr $ra
