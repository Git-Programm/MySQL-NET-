i=1
echo "enter n"
read n
while [ $i -le $n ]
do
	if [ $i -lt 10 ]
	then
		touch "exp00$i"
	elif [ $i -lt 100 ]
	then
		touch "exp0$i"
	else
		touch "exp$i"
	fi
	i=`expr $i + 1`
done
