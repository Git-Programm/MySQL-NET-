echo "enter the user"
read usr

cnt=`who | grep -c $usr`

echo "$cnt"

if [ $cnt -gt 1 ]
then
	echo "User has logged in"	
else
	echo "User has not logged in"
fi	


