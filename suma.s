main:
 .text
  addi $t0, $0, 25 
  addi $t1, $0, 25
  add $a0, $t0, $t1 
  addi $v0,$0,1  #Funcion 1, print integer
  syscall        #Escribe en la consola

  addi $v0, $0, 10 #Funcion 10, exit
  syscall 	     #Acaba el programa