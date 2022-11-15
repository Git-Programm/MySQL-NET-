echo "enter  3 no"
read x
read y
read z
if [ $x -gt $y -a $x -gt $z ]
then
    echo "$x is >"
elif [ $y -gt $z ]
then
    echo "$y is >"
else
    echo "$z is >"
fi