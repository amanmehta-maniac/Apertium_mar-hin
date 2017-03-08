rm mar_adj
fl=0
# req=""
while IFS= read line
do
	# echo "$line"
	if [[ $line == *"<pardef"* ]] && [[ $line == *"adj"* ]]; then
		echo $line
		# echo $line >> mar_adj

		fl=1
	fi
	if [[ $line == *"</pardef"* ]] && [[ $fl == 1 ]]; then
		
		echo $line >> mar_adj
		fl=0
		# echo $line
		# echo "req $req"
		# req=""
	fi
	if [[ $fl == 1 ]]; then

		echo "in fl==1 $line"
		echo $line >> mar_adj
		echo  >> mar_adj
		# req="$req $line"
	fi
done < "$1"
