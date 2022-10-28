#!/bin/bash -x
read -p "dice output" n
maxcount=$n
count=1
while [ $count -le $maxcount ]
do
number[$count]=$[1+RANDOM%6]
	((count++))
done
echo ${number[@]}
