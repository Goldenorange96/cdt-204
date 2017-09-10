.globl main
.data

#name: storage type value(s)

Banana: .byte 70
Apple: .byte 50
Orange: .byte 40
Total_fruit: .byte 0
Bed: .word 1000
Chair: .word 600
Desk: .word 1000
Total_furn: .word 0

.text
main:
lb $t1, Banana
lb $t2, Apple
lb $t3, Orange
add $t0, $t1, $t2
add $t0, $t0, $t3
sb $t0, Total_fruit
move $a0, $t0
li $v0, 1
syscall
nop

li $t0, 0

lw $t1, Bed
lw $t2, Chair
lw $t3, Desk
add $t0, $t1, $t2
add $t0, $t0, $t3
sw $t0, Total_furn
move $a0, $t0
li $v0, 1
syscall
nop

END:
li $v0, 10
syscall