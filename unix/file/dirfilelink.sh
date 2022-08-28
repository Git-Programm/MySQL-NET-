echo "enter name:" ; read x
if [ -d  /root/unix/$x ] ; then
echo "path is directory"
elif [ -f /root/unix/$x ] ; then
echo "path is file"
elif [ -s /root/unix/$x ] ; then
echo "path is empty file"
fi
