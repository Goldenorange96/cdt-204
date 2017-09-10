.globl main
.data

array: .word 70, 50, 40, 1000, 600, 1000
.text

main:

la $t7, array

lw $t1, array+4
lw $t2, array+8
lw $t3, array+12
lw $t4, array+16
lw $t5, array+20
lw $t6, array+24

add $t0, $t1, $t2
add $t0, $t0, $t3
add $t0, $t0, $t4
add $t0, $t0, $t5
add $t0, $t0, $t6

move $a0, $t0
li $v0, 1
syscall

li $v0, 10
syscall

