#store the combined data in reverse order
echo "Enter first file"
read f1
echo "Enter second file"
read f2
cnt1=`cat $f1|wc -l`
cnt2=`cat $f2|wc -l`

while [ $cnt2 -gt 0 -a $cnt1 -gt 0 ]
do
	sed -n "$cnt1"p $f1 >> c3
	sed -n "$cnt2"p $f2 >> c3
cnt1=`expr $cnt1 - 1`
cnt2=`expr $cnt2 - 1`
done 
cat c3
