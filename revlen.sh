t=0
echo "enter the string"
read s1
t=`echo $s1|wc -c`
t=`expr $t - 1`
echo "length "$t
while [ $t -ne 0 ]
do 
temp=`echo $s1|cut -c $t`
echo $temp
temp2=`echo $temp2 $temp`
t=`expr $t - 1`
done
echo $temp2
