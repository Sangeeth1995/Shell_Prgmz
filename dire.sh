if [ $# = 0 ] 
then 
echo "syntax is wrong....Correct syntax is filename <dir1> < dir2>" 
exit 
fi 
echo pwd 
echo "the contents of dir1 is: " 
cd $1 
ls -x > ../d1 # file list redirected to d1, ../ indicates the parent directory 
cd .. 
cat d1 
echo "The contents of dir2 is: " 
cd $2 
ls -x > ../d2 # file list redirected to d2, ../ indicates the parent directory 
cat ../d2 
echo " checks now for same file name" 
for i in `cat ../d1` 
 do 
      for y in `cat ../d2` 
       do 
	  if [ $i = $y ] 
	  then 
	  echo "same file name" 
          mv $y $y\2 # remaning filename as filename2 
          fi 
      done 
done 
cd .. 
cp $2/* $1/ 
cd $2 
rm * 
cd .. 
rmdir $2 
echo "Content of new directory" 
cd $1 
ls
