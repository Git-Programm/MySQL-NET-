ch=0
while [ $ch -ne 7 ]
do
echo "\n1. Create"
echo "\n2. Edit"
echo "\n3. Delete"
echo "\n4. Search"
echo "\n5. Sort"
echo "\n6. View All"
echo "\n7. Exit"
echo "\nEnter your choice "
read ch
case $ch in
	1) echo "enter eno,ename,desgn,dept,sal"
	   read eno
	   read enm
   	   read des
	   read dept
	   read sal
	    echo "$eno|$enm|$des|$dept|$sal" >> emp.lst;;
        2) echo "enter eno,ename,desgn,dept,sal"
	   read eno
	   read enm
   	   read des
	   read dept
	   read sal
	   grep -v "$eno" emp.lst > t.lst
           echo "$eno|$enm|$des|$dept|$sal" >> t.lst
          rm emp.lst
          mv t.lst emp.lst;;
     	3)  echo "Enter the eno"
	   read eno
	   grep -v "$eno" emp.lst >t.lst
          rm emp.lst
          mv t.lst emp.lst;;
        4)  echo "Enter the eno"
	   read eno
	  grep "$eno" emp.lst;;
       5)  sort -t"|"  -n -k5 emp.lst;;
       6)  cat emp.lst;;
	*)  echo "Ivalid choice ";;	                

esac

done
