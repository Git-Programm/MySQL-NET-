if [ $# -ne 2 ]
then
echo "no arguments"
elif [ ! -e $1 -o ! -e $2 ]
then
echo "file does not exist"
else
p1=`ls -l $1|cut -c2-10`
p2=`ls -l $2|cut -c2-10`
if [ $p1 == $p2 ]
then
echo "file permissions are equal & is $p1"
else
echo "file permissions are not equal"
echo "1st file $p1"
echo "2nd file $p2"
fi
fi
