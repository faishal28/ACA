
.data

myMSg: .asciiz "Enter a number.\n"

.text

main:

#asking for the number
la $a0, myMSg
li $v0, 4
syscall

#reading integer
li $v0, 5
syscall

#printing the integer read
addi $a0, $v0, 0
li $v0, 1
syscall

li $v0, 10
syscall