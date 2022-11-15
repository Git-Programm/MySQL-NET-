if [ $# -ne 2 ]; then
    echo "NO ARGUMENT"
fi
echo -n "$2 occured "
echo "$1" | grep -o "$2" | wc -l
echo "times"

# to run
# sh occurrence_of_given_character.sh helloheelloddaaeelll o
