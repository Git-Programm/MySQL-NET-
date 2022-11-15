echo "enter directory"
read d
if [ -d $d ]
then
for x in `ls $d`
do
if [ -d $d/$x ]
then
echo "directory $x"
elif [ -L $d/$x ]
then
echo "link file"
elif [ -r $x ]
then
echo "file has read permission $x"
else
echo "file $x"
fi
done
fi
