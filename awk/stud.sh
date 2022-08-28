ch=0
while [ $ch -ne 5 ]
do
echo "1.Add A Record"
echo "2.Search A Record"
echo "3.Dalate A Record"
echo "4.Show All The Records"
echo "5.Exit"
echo "Enter Yor Choise"
read ch
case $ch in
(1)echo "enter rno,name,sem,course"
        read rno
        read name
        read sem
        read course
        echo "$rno|$name|$sem|$course">>stud1.lst;;
(2)echo "Enter A RollNo:"
        read rno
        grep "$rno" stud1.lst;;
(3)echo "Enter A Roll NO:"
        read rno
        grep -v "$rno" stud1.lst>s.lst
        rm stud1.lst
        mv s.lst stud1.lst;;
(4)cat stud1.lst;;
(*)echo "Invalid Choice";;
esac
done