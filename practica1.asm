######################################################################
## Fichero: Desemsamblar.txt
## Descripción: Programa que realiza operaciones con datos de memoria
## Fecha última modificación: 2017-03-13
## Autores: Alberto Sánchez, Ángel de Castro
## Asignatura: E.C. 1º grado
## Grupo de Prácticas: 
## Grupo de Teoría: 
## Práctica: 3
## Ejercicio: 1
######################################################################


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