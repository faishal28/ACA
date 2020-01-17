.data
n0: .word 100
n1: .word 200
n2: .word 100

.text
main:

lw $t0,n0
add $t0,$t0,$t0 # forwarding hazard!!, if only-data-forwarding CPU is used
lw $t1,n1
lw $t2,n2
add $a0,$t0,$t1
bge $a0,$t2,reduce
add $t1,$t1,$t1 #dummy instruction should be flushed on correct CPUs
ble $a0,$t2, exit

reduce:
addi $t0,$t0,-10
