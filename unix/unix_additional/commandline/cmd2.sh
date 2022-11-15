echo "Total arguments sent is $*"

sum=0
for x in $*
do
echo "$x"
sum=` expr $sum + $x `
done
echo "sum is $sum"



