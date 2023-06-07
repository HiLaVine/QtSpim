.data
    nlinea: .asciiz "\n"   # Definición de la etiqueta nlinea para imprimir un salto de línea

.text
ini:
    li $a3, 1   # Inicializa $a3 a 1
    li $s0, 50   # Inicializa $s0 con el valor 6 (número de iteraciones)

    jal main       # Salta a la etiqueta main. 

main:
    beq $s0, $0, ini   # Si $s0 es igual a cero, salta a ini

    ble $a3, $s0, loop  # Compara $a3 con $s0. Si $a3 es menor o igual a $s0, salta a loop

    addi $v0, $0, 10   # Llamada al sistema para salir del programa
    syscall           

loop:
    move $a0, $a3       # Mueve el valor en $a3 a $a0 para imprimirlo
    addi $a3, $a3, 1   # Incrementa el valor en $a3 en 1

    li $v0, 1          # Llamada al sistema para imprimir un entero
    syscall

    la $a0, nlinea    # Carga la dirección de la etiqueta nlinea en $a0 para imprimir un salto de línea
    li $v0, 4          # Llamada al sistema para imprimir una cadena
    syscall

    jal main           # Salta a la etiqueta main

