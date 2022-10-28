#!/bin/bash
arraySize=10
declare -a randomNoArray

function randomnumgenerator()
{
  for  (( i=0 ; i<10 ; i++ ))
  do
    randomnum=$((RANDOM%899+100))
    randomNoArray[i]=$randomnum
    echo $randomnum
  done
}

randomnumgenerator

echo  ${randomNoArray[@]}

largestNumber=0
function getlargestnum()
{
largestNumber=0
upperCap=$1
echo upperCap
for i in ${randomNoArray[@]}
do
     if [ $i -gt $largestNumber ] && [ $i -lt $upperCap ]
     then
        largestNumber=$i
     fi
done
}

getlargestnum 999
getlargestnum $largestNumber
echo $largestNumber

smallestNumber=1000
function getsmallestNumber()
{
smallestNumber=1000
floorvalue=$1

for i in ${randomNoArray[@]}
do
    if [ $i -lt $smallestNumber ] && [ $i -gt $floorvalue ]
then
     smallestNumber=$i
     fi
done
}
getsmallestNumber 100
getsmallestNumber $smallestNumber
echo $smallestNumber
