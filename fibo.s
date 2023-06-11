.data
    nlinea: .asciiz "\n"   # Definición de la etiqueta nlinea para imprimir un salto de línea

.text
ini:
    li $s1, 0    # Inicializa $s1 a 0
    li $s2, 1    # Inicializa $s2 a 1
    li $s0, 20   # Inicializa $s0 con el valor 20 (número de iteraciones)
    li $s4, 1    # Inicializa $s4 a 1 para contar las iteraciones

    j main       # Salta a la etiqueta main

main:
    beq $s0, $0, ini   # Si $s0 es igual a cero, salta a ini

    ble $s4, $s0, loop  # Compara $s4 con $s0. Si $s4 es menor o igual a $s0, salta a loop

    li $v0, 10         # Llamada al sistema para salir del programa
    syscall           

loop:
    move $a0, $s1      # Mueve el valor en $s1 a $a0 para imprimirlo
    add $a3, $s1, $s2  # Realiza la loopa de $s1 y $s2 y guarda el resultado en $a3
    move $s1, $s2      # Mueve el valor en $s2 a $s1
    move $s2, $a3      # Mueve el valor en $a3 a $s2

    li $v0, 1          # Llamada al sistema para imprimir un entero
    syscall

    la $a0, nlinea    # Carga la dirección de la etiqueta nlinea en $a0 para imprimir un salto de línea
    li $v0, 4          # Llamada al sistema para imprimir una cadena
    syscall

    addiu $s4, $s4, 1  # Incrementa el valor en $s4 en 1 (contador de iteraciones)

    jal main           # Salta a la etiqueta main





	
