echo "enter strings"
read st
len=` expr length $st `
while [ $len -gt 0 ]
do
echo $st|cut -c 1-$len
i=` expr $len - 1 `
done
