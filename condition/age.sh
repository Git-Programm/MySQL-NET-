echo "enter your age..."
read a
if [ $a -le 12 ]
then
	echo "you are child..."
elif [ $a -gt 12 -a $a -le 19 ]
then 
	echo "you are teenager..."
elif [ $a -gt 19 -a $a -le 25 ]
then
	echo "you are yonger..."
elif [ $a -gt 25 -a $a -le 50 ]
then
	echo "you are in others category..."
elif [ $a -gt 50 ]
then
	echo "you are aged..."
fi

