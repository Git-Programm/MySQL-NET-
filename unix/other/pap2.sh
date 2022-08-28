echo "Enter the first string"
read st1
echo "Enter the second string"
read st2

len1=`expr length $st1`
len2=`expr length $st2`

i=1
while [ $i -le $len1 -o $i -le $len2 ]
do
	t1=`expr substr $st1 $i 1`
	t2=`expr substr $st2 $i 1`
	echo "$t1$t2"
i=`expr $i + 1`
done

