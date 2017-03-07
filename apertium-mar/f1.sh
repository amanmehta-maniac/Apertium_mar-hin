file2=$(cat $2)
touch linestochange
c=0
# echo "data is '$data'"
# echo "file2 is '$file2'"
for word in $avy; do
	#echo "aman1, '$word'"
	z=$(grep ""$word"" $1)
	#echo "wtf match,'$z'"
	echo $z >> linestochange
	echo  >> linestochange
	c=$((c+1))
	#echo $c
done
