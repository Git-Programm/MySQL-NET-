echo "enter no"
read n
a=-1
b=1
i=1
while [ $i -le $n ]
do
c=`expr $a + $b`
echo -n "$c,"
a=$b
b=$c
i=`expr $i + 1`
done
