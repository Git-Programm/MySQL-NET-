echo "enter no"
read n
rev=0
while [ $n -gt 0 ]
do
r=`expr $n % 10`
rev=`expr $rev \* 10 + $r`
n=`expr $n / 10`
done
echo "rev is $rev"