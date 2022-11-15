echo "enter the file "
read f1
echo "enter the file "
read f2
if [ -f $f1 ]; then
    cat $f1 >>$f2
else
    echo "File does not exist"
fi

# to run
# sh check_file_exist_n_append.sh
