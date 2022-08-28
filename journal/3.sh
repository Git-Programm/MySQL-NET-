for f in $*
do
if [ -e $f ]
then
cat $f|tr  "[a-z]" "[A-Z]" >tmp
mv tmp $f
else
echo "File $f does not exist"
fi
done
