.data            # Zona de datos                           
vector1: .word 34 2 1 15 47 200      
vector2: .word 89 13 3 1 78 67 56 78 32 3

                    # Zona de instrucciones
 .text 
main: 
  lw $t0, vector1 + 12($0) #posicion 3 valor 15
  lw $t1, vector2 + 36($0) #posicion 9 valor 3
  add $a0, $t0, $t1

  addi $v0,$0,1  #Funcion 1, print integer
  syscall        #Escribe en la consola

  addi $v0, $0, 10 #Funcion 10, exit
  syscall 	     #Acaba el programa