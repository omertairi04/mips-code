# 1) if ($s0 < $s1) {$s2 = $s1;} else {$s2 = $s0;}
# add $s0, $zero, 3   # $s0 = 3
# add $s1, $zero, 2   # $s1 = 2

# slt $t0 ,$s0 , $s1 # $t0 = 1 if $s0 < $s1
# beq $t0 , $zero , else # jump to „else“ if $t0 is $zero, if not, continue
# if $s0 < $s1, or $t0 != $zero (the condition was false)
# add $s2 , $zero , $s1
# j end # jump to label„end“
# else: # if $s0 >= $s1, or $t0 == $zero (the condition was true)
# add $s2, $zero, $s0
# end:

# In the following code segment, f, g, h, i, and j are variables. If the
# five variables f through j correspond to the five registers $s0
# through $s4, what is the compiled MIPS code for this C if
# statement?
# if (i == j) f = g + h; else f = g –h;

# i = s0
# j = s1
# f = s2
# g = s3
#h = s4 

#add $s0 , $zero , 1
#add $s1 , $zero , 1
#add $s3 , $zero , 4
#add $s4 , $zero , 4

# beq $s0 , $s1, else
# add  $s2 , $s3 , $s4
# else:
 # sub $s2 , $s3 , $s4
 # j end
# end:

#bne $s3 , $s4 , else # go to else if i!=j
#add $s2 , $s3 , $s4 # f = g +h (skipped if i!=j)
#j exit
#else: sub $s2 , $s3 , $s4
#exit:


#Write assembly code that will test if $s0 is divisible by 2, 4 or 3 and
#set $s1 be the quotient according to the following:
#• If the number is divisible by 2, check if it is divisible by 4. If yes, then set $s1
#to be 8 (2*4). If it is only divisible by 2, set $s1 to 2.
#• If the number is not divisible by 2, check if it is divisible by 3. If it is not
#divisible by 2, but is with 3, set $s1 to 3. If it is not divisible by 2, nor by 3,
#set $s1 to 0.

# initialize the registers
#addi $t0, $zero, 2
#addi $t1, $zero, 3
#addi $t2, $zero, 4

#div $s0, $t0 # check if divisible by 2
#mfhi $t3 # $hi == 0 if divisible by 2
#beq $t3 , $zero, divBy2 #if $t3 --0 , jump to divBy2
#div $s0 , $t1 # if not divisible by 2 check by 3
#mfhi $t3
#beq $t3, $zero, divBy3 #remainder is 0, divisible by 3, jump to divBy3
#add $s1 , $zero , $zero # if not divisible by 2 nor by 3 , set $s1 to 0
#j end

#divBy2:
#div $s0, $t2 # check if s0 is div by 4
#mfhi $t3
#beq $t3 , $zero , divBy4 # remainder is 0, is div by 2 and 4, jump to divBy4
#addi $s1, $zero , 2 # is divisible by 2, but not by 4, set $s1 to 2
#j end
#divBy3:
#addi $s1, $zero, 3 # is divisible by 3 so set s1 to 3
#j end
#divBy4:
#addi $s1 , $zero , 8 # is divisible by 2 and 4, set $s1 to 8
#end:

# if (x==y) { a = b + c } else {a = b - c}
# x = s0 ; y = s1 ; a = s2 ; b = s3 ; c = 24
add $s0 , $zero , 1
add $s1 , $zero , 1
add $s3 , $zero , 4
add $s3 , $zero , 3

bne $s0 , $s1, LABEL1 # go to LABEL1 if not equal
sub $s2, $s3 , $s4
j LEAVEBRANCH # stop here
LABEL1:
add $s2, $s3 , $s4

LEAVEBRANCH:














