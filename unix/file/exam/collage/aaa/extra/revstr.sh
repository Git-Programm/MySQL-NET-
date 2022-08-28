echo "enter string"
read st
rev=""
len= ` expr length $st `
while [ $len -gt 0 ]
do
	t=` expr substring  $len 1 $st `
	rev= $rev$t
	len=` expr $len - 1 `
done
echo "reverse is $rev"
if [ $rev = $st ]
then
	echo "palindrom"
else
	echo "not palindrom"
fi
