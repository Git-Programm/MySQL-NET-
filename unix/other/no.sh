echo "enter  no"
read n
i=1
while [ $i -le $n ]
do
	echo -n "$i, "
	i=` expr $i + 1 `
done 
