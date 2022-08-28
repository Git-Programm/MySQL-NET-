if [ $# -gt 0 ]
then
	echo "Hello $1"
	echo $1 | tr '[a-z]' '[A-Z]'
	len=`expr length $1`
	echo "Length of string is $len"
else
	echo "No arguments"
fi
