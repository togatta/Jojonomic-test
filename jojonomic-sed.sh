#!/usr/bin/env bash
echo  'insert your full path from you file' 
echo 'example /home/togatta/kreditcard.txt'
read input
echo '==============================='

for FILE in "$input" 
do 
	while IFS= read -r  line >&2 echo "error"
	do 	
		echo "$line" | sed 's/\([0-9]*\) \([0-9]*\) \([0-9]*\) \([0-9]*\)/\4 \3 \2 \1/' 
	done < ${input}
done
