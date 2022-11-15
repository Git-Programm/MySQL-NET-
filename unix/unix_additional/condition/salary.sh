echo "enter a salary:"; read x
if [ $x -gt 99 ] && [  $x -lt 1000 ]; then
echo "sal is in three fig"
elif [ $x -gt 999 ] && [  $x -lt 10000 ]; then
echo "sal is in four fig"
elif [ $x -ge 10000 ] && [  $x  -le 20000 ]; then
echo "sal is b/w 10000 to 20000"
elif [ $x  -ge 20000 ] && [  $x  -le 30000 ]; then
echo "sal is b/w 20000 to 30000"
elif [ $x  -ge 40000 ] && [  $x  -le 50000 ]; then
echo "sal is b/w 40000 to 50000"
else
echo "sal is above 50000"
fi
