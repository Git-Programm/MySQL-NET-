echo "enter string"
read s
len=`expr length $s`
while [ $len -gt 0 ]
do
echo $s | cut -c1-$len
len=`expr $len - 1`
done
