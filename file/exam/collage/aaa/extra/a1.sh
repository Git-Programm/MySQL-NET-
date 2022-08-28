sum=0
for x in $*
do
	sum=` expr $sum + $x `
done
	echo "sum is $sum"
