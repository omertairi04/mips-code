.data
	prompt:	.asciiz		"Enter your age: "
	message:	.asciiz		"\nYour age is "
.text
	# Promt user to enter age
	li $v0 , 4
	la $a0 , prompt
	syscall 
	
	# get user's age /input
	li $v0, 5	# 5 - get integer from input and store in v0
	syscall
	
	# Store result in t0
	add $t0, $zero, $v0    # move the value from $v0 to $t0

	
	# display the message
	li $v0 , 4
	la $a0 , message
	syscall
	
	# Print or show the age
	li $v0 , 1
	add $a0 , $zero, $t0
	syscall
	
	li $v0 , 10
	syscall
	
	
	

