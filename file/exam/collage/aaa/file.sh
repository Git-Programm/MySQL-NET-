echo "enter a file name" ; read fn
if [ -e  $fn ]; then
echo "file exist"
else
echo "not exist"
fi

