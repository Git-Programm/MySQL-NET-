echo "enter string"
read st
len= ` expr length $st `
echo "uppercase is $len"
echo $st | tr '[a-z]' '[A-Z]'
