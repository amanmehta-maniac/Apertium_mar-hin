fil="../apertium-mar/apertium-mar.mar.dix"
# cat $fil
#rm ttt
# fil="./tt"
# word="शिवाय";
# a="<s n\=\"avy\"";
# b="<s n\=\"adv\"";
# lol="./tt"
# aa="avy";
# bb="adv";
# cat $lol | sed "s/$a/$b/2" > pp
# cp pp ans
# lol="./ans"
# cat $lol | sed "s/$a/$b/" > pp
# # lol="./ans"
# word="शिवsdfsdf";
# a="$word<s n\=\"avy\".*<s n\=\"avy\"";
# b="$word<s n\=\"adv\".*<s n\=\"adv\"";
# cat $lol | sed "s/$a/$b/" > pp
# lol="./pp"
# word="शिवsdfsdff";
# a="$word<s n\=\"avy\"";
# b="$word<s n\=\"adv\"";
# cat $lol | sed "s/$a/$b/" > pp



#rm tt2
rm ans
rm bata
while IFS= read line
do
	match="$line<s n\=\"avy\"";
	req="$line<s n\=\"adv\"";
	m2="<s n\=\"avy\"";
	r2="<s n\=\"adv\"";
	# echo $match
	# echo $req
	cat $fil | sed "s/$match/$req/" > bata
	cp bata ans
	fil="./ans"
	cat $fil | sed "s/$m2/$r2/" > bata
	cp bata ans
	fil="./ans"
	# cat $fil | sed "s/$match/$req/"
	# sed 's/$match/$req/'
	# echo $line
	# z=$(grep $line $fil)
	# echo " z us $z"
	# if [[ $z != '' ]] ;then
	# 	echo "yps"
	# 	echo  | 's/avy/adj/' > tt2
	# fi
done < "./final_adv"