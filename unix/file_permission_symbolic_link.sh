echo "enter directory"
read d
if [ -d $d ]; then
    for x in $(ls $d); do
        if [ -L $d/$x ]; then
            echo -n "it is link file $d/$x"
        else
            echo -n "No link file "
        fi
        echo $d/$x
        ls -l $d/$x | cut -c2-10
    done
fi

# to run
# $ sh file_permission_symbolic_link.sh
