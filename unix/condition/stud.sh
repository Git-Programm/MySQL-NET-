echo " enter student1 marks" ;read a
echo " enter student2 marks" ;read b
echo " enter student3 marks" ;read c
echo " enter student4 marks" ;read d
echo " enter student5 marks" ;read e
if [ $a -eq $b ] && [ $c -eq $a ] && [ $a -eq $d ] && [ $a -eq $e ]; then
echo " marks is equal..."
else 
echo "marks is not equal..."
fi
 
