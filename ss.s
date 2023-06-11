.data
array: .word 1, 6           # Array con dos elementos: 1 y 6
newLine: .asciiz "\n"      # Variable que contiene el carácter de nueva línea ("\n")

.text
main:
    li $v0, 1               # Carga el valor 1 en la variable $v0 (código de la llamada al sistema para imprimir enteros)
    lw $a0, array($0)       # Carga el primer elemento del array en la variable $a0
    addi $s0, $a0, 0        # Copia el valor de $a0 en $s0 (variable de inicio del bucle)
    syscall                 # Llamada al sistema para imprimir el valor de $a0

    lw $a0, array+4($0)     # Carga el segundo elemento del array en la variable $a0
    add $s1, $a0, 0         # Copia el valor de $a0 en $s1 (variable de fin del bucle)

    loop:
        li $v0, 4            # Carga el valor 4 en $v0 (código de la llamada al sistema para imprimir cadenas)
        la $a0, newLine      # Carga la dirección de memoria de la variable newLine en $a0
        syscall              # Llamada al sistema para imprimir una nueva línea

        li $v0, 1            # Carga el valor 1 en $v0 (código de la llamada al sistema para imprimir enteros)
        addi $s0, $s0, 1     # Incrementa en 1 el valor de $s0 (variable de inicio del bucle)
        addi $a0, $s0, 0     # Copia el valor de $s0 en $a0
        syscall              # Llamada al sistema para imprimir el valor de $a0

        blt $s0, $s1, loop   # Salta a la etiqueta "loop" si $s0 es menor que $s1 (se repite el bucle)

    li $v0, 10              # Carga el valor 10 en $v0 (código de la llamada al sistema para salir del programa)
    syscall                 # Llamada al sistema para salir del programa
