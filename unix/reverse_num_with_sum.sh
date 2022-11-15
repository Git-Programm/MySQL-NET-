clear
a=20
sum=0
while [ $a -gt 0 ]; do
    echo $a
    sum=$(expr $sum + $a)
    a=$(expr $a - 1)
done
echo "SUM IS :" $sum

# to run
# sh reverse_num_with_sum.sh
