echo "enter 1st no"
read x
echo "do you want to continue"
read ch
while [ $ch -eq 1 ]
do
tput clear
echo "enter 2nd no"
read y
echo "1.addition \n2.substraction \n3.multiplication \n4.division" 
echo "enter your choice"
read ch1
case $ch1 in
1) r=$(($x + $y));;
2) r=$(($x - $y));;
3) r=$(($x * $y));;
4) r=$(($x / $y));;
esac
echo "your result is $r"
x=$r
sleep 3
done
