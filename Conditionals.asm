.data
	message: 	.asciiz 	"The numbers are different."
	message2: 	.asciiz		"Nothing happened."

.text

	main:
		addi $t0 , $zero,  5
		addi $t1 , $zero, 20 
	
		# bne $t0 , $t1, numbersDifferent	# if t0 != t1 -> numbersEqual
		# to go to a label then
		b numbersDifferent
		li $v0,4 
		la $a0 , message2
		syscall

		li $v0 , 10
		syscall
		
	numbersDifferent:
		li $v0 ,4
		la $a0 , message
		syscall

