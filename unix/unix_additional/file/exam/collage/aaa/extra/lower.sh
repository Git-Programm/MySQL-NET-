echo "enter string"
read st
len= ` expr Length $st `
echo "Length is $len"
echo $st | tr '[A-Z]' '[a-z]'

