echo "enter no"
read n
ans=1
while [ $ans -le $n ]
do
echo -n "$ans,"
ans=`expr $ans + 1`
done
