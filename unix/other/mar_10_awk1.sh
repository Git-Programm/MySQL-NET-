#read a file count line,words,Character
echo "enter the file"
read file
if [ -f $file ]
then
	wcnt=0
	ccnt=0
	lcnt=0
	lcnt=`cat $file | wc -l`
	for x in `cat $file`
	do
		len=`expr length $x`	
		ccnt=`expr $ccnt + $len`
		for y in $x
		do
			wcnt=`expr $wcnt + 1`
		done
	done
	echo "Total Line $lcnt"
	echo "Total Character $ccnt"
	echo "Total Words $wcnt"	
else
	echo "File does not exist"
fi
