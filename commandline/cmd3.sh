if [ $# -eq 3 ]
then
if [ $1 -gt $2 -a $1 -gt $3 ]
then
echo "$1 is >"
elif [ $2 -gt $3 ]
then
echo "$2 is >"
else
echo "$3 is >"
fi
else
echo "invalid..."
fi