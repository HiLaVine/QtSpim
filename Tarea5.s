.data
msg: .asciiz "hello world"

.text

main : 
    li $v0, 4 #syscall 4 (print string)
    la $a0, msg #argument: string
    syscall #print the string

    jr $ra       # return to caller