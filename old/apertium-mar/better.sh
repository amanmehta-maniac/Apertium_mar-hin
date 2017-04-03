ll2=$(cat "./ll2")
rm ll3
touch ll3
toadd=""
while read line
do
	string=$line
	#echo $line
	for word in $line; do
		#echo $word
		if [[ $word == "<e" ]] || [[ $word == "<pardef" ]] || [[ $word == "<e>"* ]]; then
			echo $toadd >> ll3
			toadd=""
			echo -e "$word" >> ll3
			#echo "yes"
		else
			toadd="$toadd $word"
		fi
	done
	#echo -e "\n" >> ll3
done < "./ll2"
