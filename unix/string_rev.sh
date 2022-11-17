read -p "Enter A String : " str

len=${#str}
echo $len
i=$len
while (( $i >= 0 ))
do
	    res="$res${str:$i:1}"
	        (( i-- ))
	done
	# for ((i = $len; i >= 0; i--))
	# do
	#     reverse="$reverse${str:$i:1}"
	# done
	echo "$res"
