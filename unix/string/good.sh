echo "enter string"
read s
l=`expr length $s`
i=1
while [ $i -le $l ]
do
  echo $s | cut -c1-$i
  i=`expr $i + 1`
done