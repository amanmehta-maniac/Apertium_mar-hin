data=$(cat "./ll3")

touch $1
c=0
# echo "data is '$data'"
# echo "file2 is '$file2'"
for word in $data; do
	#echo "aman1, '$word'"
	# echo $word
	string=$word
	if [[ $string == *"n=\"adj\""* ]]; then
		echo $word
		echo $word >> $1
		echo  >> $1
	fi
	# echo "done dana dan"
done

