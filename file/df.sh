if [ -d $1 ]
then
echo "it is diectory"
elif [ -f $1 ]
then
echo "it is file"
else
echo "something else"
fi
