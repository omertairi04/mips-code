# loop through 0 to 10;
#addi $s0 , $zero , 10 # $s0 is number of iterations
#loop: beq $t0, $s0, endLoop # t0 is counter , if t0 == s0 , finish
#addi $t0, $t0, 1 # increment counter by 1
#j loop # go to beginning of the loop
#endLoop:


#Write assembly code that will summarize all positive even two-digit
#numbers and the result will be put into $s0.
# $t0 = loop limit
# $t1 = counter
# $s0 = sum
#addi $t0, $zero, 98 # 98 is last positive even two-digit number
#addi $t1, $zero, 10 # 10 is first positive even two-digit number
#add $s0, $zero, $zero # not necessarily, but good for representation
#loop: bgt $t1, $t0, endLoop
#add $s0, $s0, $t1
#addi $t1, $t1, 2
#j loop
#endLoop:

# power of n;    y = x^n
# $s0 = result
# $s1 = base
# $s2 = power
# $t0 = counter

li $s0, 1 # same as = addi $s0 , $zero ,1
li $s1, 2
li $s2, 10
li $t0, 1

loop: bgt $t0, $s2 , endLoop
mult $s0, $s1
mflo $s0
addi $t0, $t0 ,1
j loop

endLoop:





















