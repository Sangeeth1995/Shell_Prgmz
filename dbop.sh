clear
i="y"
echo "enter the name of database"
read db
while [ $i = "y" ]
do
echo " 1.view the database"
echo "2.view specific record"
echo "3.add records"
echo "4.sort records"
echo "5.exit"
echo "enter your choice"
read ch
case $ch in
1) echo "stud :id Name Batch Branch"  
	cat $db;;
2) echo "enter the id"
	read id
	grep -i "$id" $db;;
3) echo "enter new std id:"
	read tid
	echo "enter new name"
	read tnm
	echo "enter batch"
	read batch
	echo "enter the branch"
	read branch
	echo "$tid $tnm $batch $branch" >> $db;;
4) echo " the database sorted based on student id "
	sort -n -o sortedlist $db
	echo "stud:id Name Batch Branch"
	cat sortedlist ;;
5) exit;;
*) echo "invalid choice";;
esac
done



