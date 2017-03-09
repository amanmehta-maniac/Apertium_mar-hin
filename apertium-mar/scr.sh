fil="../apertium-mar-hin/apertium-mar-hin.mar-hin.dix"
# cat $fil
#rm ttt
# fil="./tt"
# word="शिवाय";
# a="$word<s n\=\"avy\"";
# b="$word<s n\=\"adv\"";
# lol="./tt"
# cat $lol | sed  "s/$a/$b/" > pp
# cp pp ans
# lol="./ans"
# word="शिवsdfsdf";
# a="$word<s n\=\"avy\"";
# b="$word<s n\=\"adv\"";
# cat $lol | sed "s/$a/$b/" > pp
# lol="./pp"
# word="शिवsdfsdff";
# a="$word<s n\=\"avy\"";
# b="$word<s n\=\"adv\"";
# cat $lol | sed "s/$a/$b/" > pp



#rm tt2

# while IFS= read line
# do
# 	match="$line<s n\=\"avy\".*<s n\=\"adv\"";
# 	req="$line<s n\=\"adv\".*<s n\=\"adv\"";
# 	# echo $match
# 	# echo $req
# 	cat $fil | sed "s/$match/$req/2" > bata
# 	cp bata ans
# 	fil="./ans"
# 	# cat $fil | sed "s/$match/$req/"
# 	# sed 's/$match/$req/'
# 	# echo $line
# 	# z=$(grep $line $fil)
# 	# echo " z us $z"
# 	# if [[ $z != '' ]] ;then
# 	# 	echo "yps"
# 	# 	echo  | 's/avy/adj/' > tt2
# 	# fi
# done < "./final_adv"