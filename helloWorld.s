# Example: What will be the MIPS code for
# the following C code?
# A[12] = h + A[8];
#lw $t0,32($s3) # in t0 we store A[8]
#add $t0,$s2,$t0 # sum is stored in $t0
#sw $t0, 48($s3) # at A[12] we store $t0

# add $t0, $s1, $s2

# add $1, $2 , $3 # add
# sub $1, $2, $3 # subtract
# mult $1, $2 # multiply
# div $1, $2 # divide
# mfhi $1 # move from high
# mflo $1 # move from low

# addi $s0 , $zero , 69  # $s0 = $zero (0) + 69
# addi $s1 , $zero , 1
# add $t0, $s0 , $s1

# 𝑎 = 𝑏 − 𝑐 + 𝑑 + 𝑒 − 𝑓 − 3
# a $s0
# b $s1
# c $s2
# d $s3
# e $s4
# f $s5

# add $s0 , $zero , 1
# add $s1 , $zero , 2
# add $s2 , $zero , 3
# add $s3 , $zero , 4
# add $s4 , $zero , 5
# add $s5 , $zero , 6

# sub $t0, $s1, $s2 # $t0 = b - c
# add $t1, $s3, $s4 # $t1 = d + e
# sub $t1, $t1, $s5 # $t1 = d + e - f
# add $t0, $t0, $t1 # $t1 = (b - c) + (d + e - f)
# addi $s0, $t0, -3 # $s0 = (b - c) + (d + e - f) - 3

# ------------------
# a = (a / b) + (c % d) + (a * d)

# a $s1
# b $s2
# c $s3
# d $s4

# add $s1 , $zero , 2
# add $s2 , $zero , 3
# add $s3 , $zero , 4
# add $s4 , $zero , 5
# add $s5 , $zero , 6

# div $s1, $s2 # $lo = a / b; $hi = a % b
# herësi - ruhet $LO
# mbetja - ruhet $HI
# mflo $t0 # $t0 = a / b
# div $s3, $s4 # $lo = c / d; $hi = c % d
# mfhi $t1 # $t1 = a % b
# mult $s1, $s4 # $hi = upper 32 bits from a * d; $lo = lower 32 bits from a * d
# mflo $t2 # $t2 = lower 32 bits from a * d
# add $s1, $t0, $t1 # $s1 = (a / b) + (c % d)
# add $s1, $s1, $t2 # $s1 = (a / b) + (c % d) + (a * d)


# EXERCISE 4 Write assembly code that multiplies content in $s1 by -128 (signed representation in RC)

# addi $s1, $zero , 1

# sll $s1, $s1 , 7 # $s1 = $s1<<7 ($s1 * 128)
# nor $s1 , $s1 $zero # $s1 = ~($s1|zero)
# addi $s1 , $s1 , 1 # $s1 = $s1 + 1

















