clear
echo "Enter the no "
read n
i=1
while [ $i -le $n ]
do
	j=2

	while [ $j -lt $i ]
	do
	if [ `expr $i % $j` -eq 0 ]
	then
		break
	fi	
	j=`expr $j + 1`
	done

	if [ $i -eq $j ]
	then
		echo -n "$j ,"
	fi
i=`expr $i + 1`
done
echo ""
