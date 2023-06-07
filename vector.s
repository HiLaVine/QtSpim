.data
vector: .word 1 6   # Definición de la variable vector con valor 1


.text
main:
    li $v0, 1         # Llamada al sistema para imprimir un entero
    lw $a0, vector($0)   # Carga el valor almacenado en vector en $a0
    addi $s0, $a0, 0    # Copia el valor de $a0 a $s0 (n-1)
    syscall

    lw $a0, vector + 4($0)   # Carga el segundo valor almacenado en vector en $a0
    addi $s1, $a0, 0    # Copia el valor de $a0 a $s1 (N)
    syscall

    addi $a0, $s0, 1   # Suma 1 al valor de $s0 (n-1 + 1)
    syscall            # Muestra el segundo número en pantalla

loop:
    addi $s0, $s0, 1    # Incrementa el valor de $s0 en 1 (n-1 + 1)
    addi $a0, $s0, 0    # Copia el valor de $s0 a $a0
    syscall             # Muestra el número actual en pantalla

    ble $s0, $s1, loop  # Compara $s0 con $s1 (n <= N). Si es verdadero, salta a loop
    syscall

    li $v0, 10          # Finalizar programa
    syscall

