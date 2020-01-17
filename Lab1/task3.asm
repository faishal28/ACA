
.data
msg1: .asciiz "Enter first number.\n"
msg2: .asciiz "Enter second number.\n"
plus: .asciiz "The sum = "
minus: .asciiz "Enter difference = "
newline: .asciiz "\n"

.text

main:

#taking first integer
la $a0, msg1
li $v0, 4
syscall

li $v0, 5
syscall

addi $t0, $v0, 0

#taking second integer
la $a0, msg2
li $v0, 4
syscall

li $v0, 5
syscall

addi $t1, $v0, 0

#summation
la $a0, plus
li $v0, 4
syscall

add $a0, $t0, $t1
li $v0, 1
syscall

la $a0, newline
li $v0, 4
syscall

#difference
la $a0, minus
li $v0, 4
syscall

sub $a0, $t0, $t1
li $v0, 1
syscall

la $a0, newline
li $v0, 4
syscall

#end
li $v0, 10
syscall