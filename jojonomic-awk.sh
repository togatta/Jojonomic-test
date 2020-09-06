#!/usr/bin/env bash
echo  'insert your full path from you file' 
echo 'example /home/togatta/kreditcard.txt'
read input
echo '==============================='

for FILE in "$input" 
do 
	while IFS= read -r  line
	do 
   		echo "$line" | awk {'print $4" "$3" "$2" "$1'}
	done < ${input}
done
