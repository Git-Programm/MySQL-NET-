echo "enter file name"
read fname
if [ -s $fname ]
then
cat $fname
else
echo "file does not exist"
fi
