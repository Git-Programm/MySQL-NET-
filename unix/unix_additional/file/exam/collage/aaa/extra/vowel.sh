echo "enter string"
read st
len=` expr length $st `
cnt=0
while [ $len -gt 0 ]
do
t=` expr substring $len 1 $st `
if [ $t ='a' -o  $t ='e' -o  $t ='o' -o  $t ='i' -o  $t ='u' -o  $t ='A' -o  $t ='E' -o  $t ='O' -o  $t ='I' -o  $t ='U' ]
then
	cnt=` expr $cnt + 1 `
fi
len=` expr $len - 1 `
done
	echo "total vowels is $cnt"
