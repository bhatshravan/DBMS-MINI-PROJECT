	
echo "Script started"
states=""
#awk ' { print $0","FILENAME"\nhello" } ' filename
#ls /home/shravan/Program/Project/DBMS/RAW/csv/Monthly/Original  |tail -$N |while read file; do
for filename in /home/shravan/Program/Project/DBMS/RAW/csv/Monthly/Original/*; do
    [ -e "$filename" ] || continue

	
	states+=" { print \$0\",\""	
	states+=$file 
	states+="\"\\nhello\" } "

	outs="/home/shravan/Program/Project/DBMS/RAW/csv/Monthly/Modified/"
	outs+=$file

	echo $file
	echo $outs


	states2="'s/$/$file'"
	sed "s/$/,$file\nhello/" $file > $outs
    #awk $states $file > $outs

    #echo $states
    states=""

done
	
#done
