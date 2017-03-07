# file2=$(cat $2)
# touch linestochange
avy=$(cat "./avy1")
dict=$(cat "./apertium-mar.mar.dix")
c=0
touch ll2
# echo "data is '$data'"
# echo "file2 is '$file2'"
for word in $avy; do
	z=$(grep "$word" "./apertium-mar.mar.dix")
	echo $z >> ll2
	echo >> ll2
done