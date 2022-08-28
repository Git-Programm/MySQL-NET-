string1="aes"
string2="oran"

if [ "$string1" -lt "$string2" ]
then
	echo "$string1 has more characters than $string2."
else
	echo "$string2 has more characters than $string1."
fi