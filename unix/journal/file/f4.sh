echo "enter directory"
read d
if [ -d $d ]
then
for x in `ls $d`
do
if [ -d $d/$x ]
then
echo "it is directory"
elif [ -L $d/$x ]
then
echo "it is link file"
elif [ -r $d/$x ]
then
echo "file has read permission $x"
else
echo "file $x"
fi
done
fi

 
