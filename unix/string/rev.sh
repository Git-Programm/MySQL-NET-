echo "enter string"
read st
len=`expr length $st`
rev=""
while [ $len -gt 0 ]
do
t=`expr substr $st $len 1`
rev=$rev$t
len=`expr $len - 1`
done
echo "reverse $rev"
if [ $rev = $st ]
then
echo "palindrom"
else
echo "not palindrom"
fi
