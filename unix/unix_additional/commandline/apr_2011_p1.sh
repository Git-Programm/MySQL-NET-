ocnt=0
ecnt=0
for x in $*
do 
	if test  `expr $x % 2` -eq 0 
	then
		ecnt=`expr $ecnt + 1`
	else
		ocnt=`expr $ocnt + 1`
	fi
done
echo "Total odd $ocnt"
echo "Total even $ecnt"

