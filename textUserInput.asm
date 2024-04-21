.data
	message: 	.asciiz		"Hello, "
	userInput: 	.space	   20	# store the user input that can hold 20 chars

.text
	main:
		li $v0 , 8	# get text from input
		la $a0, userInput
		li $a1, 20	# max length of userInput
		syscall
	
		# display message
		li $v0 , 4
		la $a0 , message
		syscall
		
		# Display name (user input)
		li $v0 , 4
		la $a0 , userInput
		syscallq
	
	# end of main
	li $v0, 10
	syscall





