ll2=$(cat "./ll2")
rm ll3
touch ll3
while read line
do
	string=$line
	echo $line
	for word in $line; do
		if [[ $word == "<e" ]]; then
			echo -e "$word\n" >> ll3
			# echo "yes"
		else
			echo $word >> ll3
		fi
	done
	echo -e "\n" >> ll3
done < "./ll2"
