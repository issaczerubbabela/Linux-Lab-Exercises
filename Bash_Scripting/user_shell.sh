#!/bin/bash

cat /etc/passwd | cut -d ":" -f 1,7 > user_shell.txt
cat /etc/passwd | cut -d ":" -f 7 | sort | uniq > unique_shells.txt
readarray uniqueshells < unique_shells.txt
for i in ${uniqueshells[@]}
do
touch "$(basename $i).txt"
done

cat user_shell.txt | while read i
do 
user_name=$(echo $i | cut -d ":" -f 1) 
shell=$(echo $i | cut -d ":" -f 2) 
case $shell in
${uniqueshells[0]}) echo $user_name >> "$(basename ${
esac
done 
