str=$1
b=`echo $str|wc -c`
l=`expr $b - 1`
echo Lenght of String is $l
a=" "
for (( i=l ; i>0 ; i-- ))
do
c=`echo $str|cut -c $i`
a=$a$c
done
echo $a
