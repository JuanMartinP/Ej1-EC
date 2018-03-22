################# Segmento de código #################
.text
main:	lw $at, y
	sll $v0, $at, 8
	lw $v1, mateos
	or $a0, $v0, $v1
	addi $a1, $0, 5
	slt $a2, $v1, $a1
	beq $a2, $0, target
	sw $a0 g
	j a
target:	sw $a0, f
a:	j a

################# Segmento de datos #################
.data
f: 0x00
g: 0x00
y: 0xceba
mateos: 0x05
