.data
	message: .asciiz	"How are you?"


.text
	main:
		addi $s0 , $zero , 10
		addi $s1, $zero, 14
		
		bgt $s0, $s1, displayHi 	# if s0 > si -> displayHi
		
	li $v0 , 10
	syscall
	
	displayHi:
		li $v0 , 4
		la $a0 , message
		syscall



