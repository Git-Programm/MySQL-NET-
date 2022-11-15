echo "enter percentage\n";read pr
if [ $pr -gt 70 ]; then
echo "distinction"
elif [ $pr -gt 60 ]; then
echo "first class"
elif [ $pr -gt 50 ];then
echo "second class"
else
echo "fail"
fi

