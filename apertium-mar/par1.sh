while IFS= read line
do
	if [[ $line == *"<pardef"* ]];then
		z=$(echo $line | cut -d '"' -f 2 | sed -e 's/__adj//g' | sed -e 's/\///g' )
		echo $z
		fl=1
	fi

done < "./p_m_adj"