.data
	newLine: 	.asciiz		"\n"


.text
	main:
		addi $s0 , $zero , 10
		
		jal increaseMyRegister
		
		# print line
		li $v0 , 4
		la $a0 , newLine
		syscall
		
		jal printValue
	
	li $v0, 10
	syscall
	
	increaseMyRegister:
		addi $sp , $sp , -8		# allocate 4 bytes in the stack
		sw $s0 , 0($sp)  		# to store value in memory
		sw $ra , 4($sp)		# store the old address
		
		addi $s0 , $s0, 30
		
		# Nester Procedure
		jal printValue
		
		# load value
		lw $s0 , 0($sp)
		lw $ra, 4($sp)
		# restore
		addi $sp , $sp , 4 
		
		jr $ra
		
		
	printValue:
		# print value
		li $v0 , 1
		move $a0 , $s0
		syscall
		
		jr $ra
