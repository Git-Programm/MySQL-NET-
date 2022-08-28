echo "1.upper case"
echo "2.lower case"
echo "enter your choice:"
read ch
echo "enter string:"
read st
case $ch in
1)echo $st | tr '[a-z]' '[A-Z]';;
2)echo $st | tr '[A-Z]' '[a-z]';;
esac