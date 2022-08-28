echo "enter  no"
read x
ans=`expr $x % 2`
if [ $ans -eq 0 ]
then
    echo "even no"
else
    echo "odd no"
fi