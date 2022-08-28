if [ -f $1 ]
then
    cnt=`cat $1|wc -l`
    i=1
 while [ $i -le $cnt ]
do
 if [ `expr $i % 2` -eq 0 ]
  then
       sed  -n "$i"p $1    
   fi

i=`expr $i + 1`
done
fi   