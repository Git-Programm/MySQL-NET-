echo "enter string"
read s
l=` expr length $s `
while [ $l -gt 0 ]
do
echo $s | cut -c1-$l
l=` expr $l -
 1 `
done
