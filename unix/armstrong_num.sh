echo "enter the no"
read n
sum=0
n1=$n
while [ $n -gt 0 ]; do
    r=$(expr $n % 10)
    n=$(expr $n / 10)
    sum=$(expr $sum + $r \* $r \* $r)
done

if [ $n1 -eq $sum ]; then
    echo "Armstrong"
else
    echo "Not Armstrong"
fi
