echo Enter a text
read text
w=`echo $text | wc -w`
w=`expr $w`
c=`echo $text | wc -c`
c=`expr $c - 1`
s=0
alpha=0
j=` ` 
n=1
while [ $n -le $c ]
do
ch=`echo $text | cut -c $n`
if test $ch =  $j
then
s=`expr $s + 1`
fi
case $ch in
a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z) alpha=`expr $alpha + 1`;;
esac
n=`expr $n + 1`
done
special=`expr $c - $s - $alpha`
echo Words=$w
echo Characters=$c
echo Spaces=$s
echo Special symbols=$special
