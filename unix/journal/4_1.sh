echo enter fiename
read file
lines=$(< $file wc -l) 
echo $lines lines in $file
echo enter no of line
read n
echo enter starting position
read m
t=$(expr $n + $m)
e=1
exec < $file
while read line
do
if [ $e -ge $m -a $e -lt $t ]
then
echo $line
fi
e=$(expr $e + 1) 
done