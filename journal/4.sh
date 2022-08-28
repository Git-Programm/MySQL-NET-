         if [ $# -eq 1 ]
         then
                 exec < $1
                f=1
        fi

   echo " To Strating  Write Below "
    no=0
    no1=0
    d=0
    p=0
while read line
do
no=`expr $no + 1`
d=`expr length "$line"`
p=`expr $p + $d`
set $line
no1=`expr $no1 + $#`
done
echo " "
echo "Number Of line;- $no"
echo "Number of Word:- $no1"
echo "NUmber of charcter $p"             
