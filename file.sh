clear 
i="y" 
while [ $i = "y" ] 
do 
	echo "Menu " 
	echo "1. Display file contents" 
	echo "2. Copy a file " 
	echo "3. Delete a file " 
	echo "4. Rename a file" 
	echo "Enter ur Choice" 
	read Choice 
	case "$Choice" in 
		1) echo "Enter File name to display contents " 
		   read c1 
		   cat $c1 
		   ;; 
		2) echo "Enter File name to copy " 
		   read f1 
		   echo "Enter new File name " 
	read f2 
	if [ -f $f1 ] 
	then 
		cp $f1 $f2 
	else 
		echo "$f1 does not exist" 
	fi 
	;; 
	3) echo "Enter the File to be deleted "
 	   read r1 
	if [ -f $r1 ] 
	then 
		rm -i $r1 
	else 
		echo "$r1 file does not exist "
	fi 
	;; 
	4) echo "Enter the File to be renamed" 
	   read t1 
	   echo "Enter the new File name " 
	   read t2 
		mv $t1 $t2 
		;; 
	*) echo "Invalid choice";; 
esac 
echo "Do u want to continue ?" 
read i 
if [ $i != "y" ] 
then 
	exit 
fi 
done
