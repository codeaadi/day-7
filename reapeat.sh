#!/bin/bash -x

for i in {1..100}
do
	
if [  `expr $i % 11` -eq 0 ]
then
 a[$i]=$i
fi
done
echo ${a[@]}
