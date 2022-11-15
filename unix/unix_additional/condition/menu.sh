clear
echo "1.addition"
echo "2.subtraction"
echo "3.multiplication"
echo "4.division"
echo "enter your choice"
read ch
echo "enter 2 nos"
read n1
read n2
case $ch in
1) ans=` expr $n1 + $n2 `
    echo $ans;;
2) ans=` expr $n1 - $n2 `
    echo $ans;;
3) ans=` expr $n1 \* $n2 `
    echo $ans;;
4) ans=` expr $n1 / $n2 `
    echo $ans;;
*) echo "invalid choice"
esac
    
