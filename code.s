# f = (g +h) - (i + j);
# g = $s1
# h = $s2
# i = $s3
# j = $s4

 add $s1 , $zero , 2
 add $s2 , $zero , 3
 add $s3 , $zero , 4
 add $s4 , $zero , 5

add $t0, $s1 , $s2
add $t1 , $s3 , $s4
sub $t3 , $t0 , $t1
