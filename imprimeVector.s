.data            # Zona de datos                           
vector: .word 56 48 12 7          # create a vector with 4 elements

.text                     # Zona de instrucciones
main: 
  li $v0, 1                 # Llamada al sistema para print int
  lw $a0, vector($0)
  syscall                   # Muestra el primer número en pantalla
  lw $a0, vector + 4($0)
  syscall                   # Muestra el segundo número en pantalla
  lw $a0, vector + 8($0)
  syscall                   # Muestra el tercer número en pantalla
  lw $a0, vector + 12($0)
  syscall                   # Muestra el cuarto número en pantalla

  li $v0, 10                # Finalizar programa
  syscall


      