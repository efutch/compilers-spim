.data
str0: .asciiz "Introduzca un numero entero: "
str1: .asciiz "Introduzca otro numero entero: "
str2: .asciiz "La suma de ambos es: "
cr: .byte 13,10,0
.text
main:
# Se escribe el string pidiendo el primer número
addi $v0, $zero, 4
la $a0, str0
syscall
# Se lee el primer número
addi $v0, $zero, 5
syscall
add $s0, $v0, $zero # Se guarda el número en $s0
# Se escribe el string pidiendo el segundo número
addi $v0, $zero, 4
la $a0, str1
syscall
# Se lee el segundo número
addi $v0, $zero, 5
syscall
add $s1, $v0, $zero # Se guarda el número en $s1
add $s2, $s0, $s1 # Se suman ambos números
# Se escribe el mensaje de string previo al resultado
addi $v0, $zero, 4
la $a0, str2
syscall
# Se escribe el resultado
addi $v0, $zero, 1
add $a0, $zero, $s2
syscall
# Se escribe un CR/LF al final
addi $v0, $zero, 4
la $a0, cr
syscall
# Fin del programa.
addi $v0, $zero, 10
syscall
