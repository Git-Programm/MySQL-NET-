echo -n "ENTER STRING 1"
read string1

echo -n "ENTER STRING 2"
read string2

if [ "$string1" = "$string2" ]; then
	echo "The two strings are equal."
else
	echo "The two strings are not equal."
fi
