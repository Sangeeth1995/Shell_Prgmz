 echo "Enter any String"
read s1
t=`echo $s1|wc -c`
t=`expr $t - 1`
echo "Length of "$s1" is "$t

