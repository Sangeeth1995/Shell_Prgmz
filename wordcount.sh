#!/bin/sh
echo "enter filename"
read filename
count=0
for i in `cat $filename`
do		
	count=`expr $count + 1`
done
echo "The No: of words in the file $filename is  $count"

