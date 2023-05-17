#imprimir en la consola
main:
  .text
    addi $a0, $0, 25 #valor a escribir en $a0
    addi $v0,$0,1  #Funcion 1, print integer
    syscall        #Escribe en la consola
	
    addi $v0, $0, 10 #Funcion 10, exit
    syscall 	     #Acaba el programa