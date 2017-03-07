touch $1
file="./avy1"
while IFS1= read avy1
do
	file="./apertium-mar.mar.dix"
	while IFS2= read line
	do
	        # display $line or do somthing with $line
		echo "$line"
		if [[ $line == *"$avy1"* ]]; then
			echo $word
			echo $word >> $1
			echo  >> $1
		fi
	done	
done