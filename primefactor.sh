#!/bin/bash -x
read -p "Enter a Number " n
a=$(factor $n)
array=${a[@]}
echo $array
