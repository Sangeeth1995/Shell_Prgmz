#!/bin/sh
echo "enter filename"
read filename
echo "enter word whose occurence is to be counted"
read word
count=0
for i in `cat $filename`
do
	if [ $i = $word ]
        then 
		count=`expr $count + 1`
        fi
done
echo "The No: of occurences of $word is $count";

